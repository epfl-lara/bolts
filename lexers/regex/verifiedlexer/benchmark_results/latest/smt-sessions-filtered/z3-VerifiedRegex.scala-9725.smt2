; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508644 () Bool)

(assert start!508644)

(declare-fun b!4865491 () Bool)

(declare-fun b_free!130627 () Bool)

(declare-fun b_next!131417 () Bool)

(assert (=> b!4865491 (= b_free!130627 (not b_next!131417))))

(declare-fun tp!1369136 () Bool)

(declare-fun b_and!342607 () Bool)

(assert (=> b!4865491 (= tp!1369136 b_and!342607)))

(declare-fun b_free!130629 () Bool)

(declare-fun b_next!131419 () Bool)

(assert (=> b!4865491 (= b_free!130629 (not b_next!131419))))

(declare-fun tp!1369140 () Bool)

(declare-fun b_and!342609 () Bool)

(assert (=> b!4865491 (= tp!1369140 b_and!342609)))

(declare-fun b!4865476 () Bool)

(declare-fun e!3041924 () Bool)

(declare-fun e!3041925 () Bool)

(assert (=> b!4865476 (= e!3041924 e!3041925)))

(declare-fun res!2077013 () Bool)

(assert (=> b!4865476 (=> (not res!2077013) (not e!3041925))))

(declare-datatypes ((List!56054 0))(
  ( (Nil!55930) (Cons!55930 (h!62378 (_ BitVec 16)) (t!363816 List!56054)) )
))
(declare-datatypes ((TokenValue!8340 0))(
  ( (FloatLiteralValue!16680 (text!58825 List!56054)) (TokenValueExt!8339 (__x!33973 Int)) (Broken!41700 (value!257971 List!56054)) (Object!8463) (End!8340) (Def!8340) (Underscore!8340) (Match!8340) (Else!8340) (Error!8340) (Case!8340) (If!8340) (Extends!8340) (Abstract!8340) (Class!8340) (Val!8340) (DelimiterValue!16680 (del!8400 List!56054)) (KeywordValue!8346 (value!257972 List!56054)) (CommentValue!16680 (value!257973 List!56054)) (WhitespaceValue!16680 (value!257974 List!56054)) (IndentationValue!8340 (value!257975 List!56054)) (String!63117) (Int32!8340) (Broken!41701 (value!257976 List!56054)) (Boolean!8341) (Unit!145935) (OperatorValue!8343 (op!8400 List!56054)) (IdentifierValue!16680 (value!257977 List!56054)) (IdentifierValue!16681 (value!257978 List!56054)) (WhitespaceValue!16681 (value!257979 List!56054)) (True!16680) (False!16680) (Broken!41702 (value!257980 List!56054)) (Broken!41703 (value!257981 List!56054)) (True!16681) (RightBrace!8340) (RightBracket!8340) (Colon!8340) (Null!8340) (Comma!8340) (LeftBracket!8340) (False!16681) (LeftBrace!8340) (ImaginaryLiteralValue!8340 (text!58826 List!56054)) (StringLiteralValue!25020 (value!257982 List!56054)) (EOFValue!8340 (value!257983 List!56054)) (IdentValue!8340 (value!257984 List!56054)) (DelimiterValue!16681 (value!257985 List!56054)) (DedentValue!8340 (value!257986 List!56054)) (NewLineValue!8340 (value!257987 List!56054)) (IntegerValue!25020 (value!257988 (_ BitVec 32)) (text!58827 List!56054)) (IntegerValue!25021 (value!257989 Int) (text!58828 List!56054)) (Times!8340) (Or!8340) (Equal!8340) (Minus!8340) (Broken!41704 (value!257990 List!56054)) (And!8340) (Div!8340) (LessEqual!8340) (Mod!8340) (Concat!21445) (Not!8340) (Plus!8340) (SpaceValue!8340 (value!257991 List!56054)) (IntegerValue!25022 (value!257992 Int) (text!58829 List!56054)) (StringLiteralValue!25021 (text!58830 List!56054)) (FloatLiteralValue!16681 (text!58831 List!56054)) (BytesLiteralValue!8340 (value!257993 List!56054)) (CommentValue!16681 (value!257994 List!56054)) (StringLiteralValue!25022 (value!257995 List!56054)) (ErrorTokenValue!8340 (msg!8401 List!56054)) )
))
(declare-datatypes ((C!26408 0))(
  ( (C!26409 (val!22526 Int)) )
))
(declare-datatypes ((List!56055 0))(
  ( (Nil!55931) (Cons!55931 (h!62379 C!26408) (t!363817 List!56055)) )
))
(declare-datatypes ((IArray!29199 0))(
  ( (IArray!29200 (innerList!14657 List!56055)) )
))
(declare-datatypes ((Conc!14569 0))(
  ( (Node!14569 (left!40624 Conc!14569) (right!40954 Conc!14569) (csize!29368 Int) (cheight!14780 Int)) (Leaf!24295 (xs!17875 IArray!29199) (csize!29369 Int)) (Empty!14569) )
))
(declare-datatypes ((BalanceConc!28580 0))(
  ( (BalanceConc!28581 (c!827478 Conc!14569)) )
))
(declare-datatypes ((TokenValueInjection!15988 0))(
  ( (TokenValueInjection!15989 (toValue!10893 Int) (toChars!10752 Int)) )
))
(declare-datatypes ((String!63118 0))(
  ( (String!63119 (value!257996 String)) )
))
(declare-datatypes ((Regex!13105 0))(
  ( (ElementMatch!13105 (c!827479 C!26408)) (Concat!21446 (regOne!26722 Regex!13105) (regTwo!26722 Regex!13105)) (EmptyExpr!13105) (Star!13105 (reg!13434 Regex!13105)) (EmptyLang!13105) (Union!13105 (regOne!26723 Regex!13105) (regTwo!26723 Regex!13105)) )
))
(declare-datatypes ((Rule!15860 0))(
  ( (Rule!15861 (regex!8030 Regex!13105) (tag!8894 String!63118) (isSeparator!8030 Bool) (transformation!8030 TokenValueInjection!15988)) )
))
(declare-datatypes ((Token!14644 0))(
  ( (Token!14645 (value!257997 TokenValue!8340) (rule!11154 Rule!15860) (size!36854 Int) (originalCharacters!8353 List!56055)) )
))
(declare-datatypes ((tuple2!59764 0))(
  ( (tuple2!59765 (_1!33185 Token!14644) (_2!33185 BalanceConc!28580)) )
))
(declare-datatypes ((Option!13775 0))(
  ( (None!13774) (Some!13774 (v!49684 tuple2!59764)) )
))
(declare-fun lt!1993717 () Option!13775)

(get-info :version)

(assert (=> b!4865476 (= res!2077013 ((_ is Some!13774) lt!1993717))))

(declare-datatypes ((List!56056 0))(
  ( (Nil!55932) (Cons!55932 (h!62380 Rule!15860) (t!363818 List!56056)) )
))
(declare-fun rules!1248 () List!56056)

(declare-fun totalInput!332 () BalanceConc!28580)

(declare-datatypes ((LexerInterface!7622 0))(
  ( (LexerInterfaceExt!7619 (__x!33974 Int)) (Lexer!7620) )
))
(declare-fun thiss!11777 () LexerInterface!7622)

(declare-fun input!661 () BalanceConc!28580)

(declare-fun maxPrefixZipperSequenceV2!627 (LexerInterface!7622 List!56056 BalanceConc!28580 BalanceConc!28580) Option!13775)

(assert (=> b!4865476 (= lt!1993717 (maxPrefixZipperSequenceV2!627 thiss!11777 rules!1248 input!661 totalInput!332))))

(declare-fun b!4865477 () Bool)

(declare-fun e!3041923 () Bool)

(assert (=> b!4865477 (= e!3041923 e!3041924)))

(declare-fun res!2077010 () Bool)

(assert (=> b!4865477 (=> (not res!2077010) (not e!3041924))))

(declare-fun lt!1993715 () List!56055)

(declare-fun isSuffix!1059 (List!56055 List!56055) Bool)

(declare-fun list!17479 (BalanceConc!28580) List!56055)

(assert (=> b!4865477 (= res!2077010 (isSuffix!1059 lt!1993715 (list!17479 totalInput!332)))))

(assert (=> b!4865477 (= lt!1993715 (list!17479 input!661))))

(declare-fun b!4865479 () Bool)

(declare-fun e!3041917 () Bool)

(declare-fun e!3041919 () Bool)

(assert (=> b!4865479 (= e!3041917 e!3041919)))

(declare-fun res!2077015 () Bool)

(assert (=> b!4865479 (=> res!2077015 e!3041919)))

(declare-datatypes ((List!56057 0))(
  ( (Nil!55933) (Cons!55933 (h!62381 Token!14644) (t!363819 List!56057)) )
))
(declare-datatypes ((IArray!29201 0))(
  ( (IArray!29202 (innerList!14658 List!56057)) )
))
(declare-datatypes ((Conc!14570 0))(
  ( (Node!14570 (left!40625 Conc!14570) (right!40955 Conc!14570) (csize!29370 Int) (cheight!14781 Int)) (Leaf!24296 (xs!17876 IArray!29201) (csize!29371 Int)) (Empty!14570) )
))
(declare-datatypes ((BalanceConc!28582 0))(
  ( (BalanceConc!28583 (c!827480 Conc!14570)) )
))
(declare-fun lt!1993716 () BalanceConc!28582)

(declare-datatypes ((tuple2!59766 0))(
  ( (tuple2!59767 (_1!33186 List!56057) (_2!33186 List!56055)) )
))
(declare-fun lt!1993714 () tuple2!59766)

(declare-fun list!17480 (BalanceConc!28582) List!56057)

(assert (=> b!4865479 (= res!2077015 (not (= (list!17480 lt!1993716) (_1!33186 lt!1993714))))))

(declare-fun lexList!2101 (LexerInterface!7622 List!56056 List!56055) tuple2!59766)

(assert (=> b!4865479 (= lt!1993714 (lexList!2101 thiss!11777 rules!1248 lt!1993715))))

(declare-fun b!4865480 () Bool)

(declare-fun e!3041928 () Bool)

(declare-datatypes ((tuple2!59768 0))(
  ( (tuple2!59769 (_1!33187 BalanceConc!28582) (_2!33187 BalanceConc!28580)) )
))
(declare-fun lt!1993718 () tuple2!59768)

(assert (=> b!4865480 (= e!3041928 (not (= (list!17479 (_2!33187 lt!1993718)) lt!1993715)))))

(declare-fun b!4865481 () Bool)

(declare-fun e!3041918 () Bool)

(assert (=> b!4865481 (= e!3041925 e!3041918)))

(declare-fun res!2077012 () Bool)

(assert (=> b!4865481 (=> (not res!2077012) (not e!3041918))))

(declare-fun ++!12179 (List!56055 List!56055) List!56055)

(declare-fun charsOf!5335 (Token!14644) BalanceConc!28580)

(assert (=> b!4865481 (= res!2077012 (= (++!12179 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))) (list!17479 (_2!33185 (v!49684 lt!1993717)))) lt!1993715))))

(declare-fun lexRec!845 (LexerInterface!7622 List!56056 BalanceConc!28580) tuple2!59768)

(assert (=> b!4865481 (= lt!1993718 (lexRec!845 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1993717))))))

(declare-fun b!4865482 () Bool)

(declare-fun res!2077014 () Bool)

(assert (=> b!4865482 (=> (not res!2077014) (not e!3041923))))

(declare-fun isEmpty!29914 (List!56056) Bool)

(assert (=> b!4865482 (= res!2077014 (not (isEmpty!29914 rules!1248)))))

(declare-fun b!4865483 () Bool)

(declare-fun res!2077009 () Bool)

(assert (=> b!4865483 (=> (not res!2077009) (not e!3041923))))

(declare-fun rulesInvariant!6720 (LexerInterface!7622 List!56056) Bool)

(assert (=> b!4865483 (= res!2077009 (rulesInvariant!6720 thiss!11777 rules!1248))))

(declare-fun b!4865484 () Bool)

(assert (=> b!4865484 (= e!3041919 (not (= (list!17479 (_2!33187 lt!1993718)) (_2!33186 lt!1993714))))))

(declare-fun b!4865485 () Bool)

(declare-fun e!3041916 () Bool)

(assert (=> b!4865485 (= e!3041928 e!3041916)))

(declare-fun res!2077011 () Bool)

(declare-fun size!36855 (BalanceConc!28580) Int)

(assert (=> b!4865485 (= res!2077011 (>= (size!36855 (_2!33187 lt!1993718)) (size!36855 input!661)))))

(assert (=> b!4865485 (=> res!2077011 e!3041916)))

(declare-fun b!4865486 () Bool)

(declare-fun e!3041927 () Bool)

(declare-fun tp!1369138 () Bool)

(declare-fun inv!71837 (Conc!14569) Bool)

(assert (=> b!4865486 (= e!3041927 (and (inv!71837 (c!827478 totalInput!332)) tp!1369138))))

(declare-fun b!4865487 () Bool)

(declare-fun e!3041920 () Bool)

(declare-fun tp!1369141 () Bool)

(assert (=> b!4865487 (= e!3041920 (and (inv!71837 (c!827478 input!661)) tp!1369141))))

(declare-fun b!4865488 () Bool)

(declare-fun e!3041922 () Bool)

(declare-fun e!3041921 () Bool)

(declare-fun tp!1369139 () Bool)

(assert (=> b!4865488 (= e!3041922 (and e!3041921 tp!1369139))))

(declare-fun b!4865489 () Bool)

(declare-fun isEmpty!29915 (BalanceConc!28582) Bool)

(assert (=> b!4865489 (= e!3041916 (isEmpty!29915 lt!1993716))))

(declare-fun b!4865478 () Bool)

(declare-fun tp!1369137 () Bool)

(declare-fun e!3041929 () Bool)

(declare-fun inv!71833 (String!63118) Bool)

(declare-fun inv!71838 (TokenValueInjection!15988) Bool)

(assert (=> b!4865478 (= e!3041921 (and tp!1369137 (inv!71833 (tag!8894 (h!62380 rules!1248))) (inv!71838 (transformation!8030 (h!62380 rules!1248))) e!3041929))))

(declare-fun res!2077008 () Bool)

(assert (=> start!508644 (=> (not res!2077008) (not e!3041923))))

(assert (=> start!508644 (= res!2077008 ((_ is Lexer!7620) thiss!11777))))

(assert (=> start!508644 e!3041923))

(assert (=> start!508644 true))

(assert (=> start!508644 e!3041922))

(declare-fun inv!71839 (BalanceConc!28580) Bool)

(assert (=> start!508644 (and (inv!71839 totalInput!332) e!3041927)))

(assert (=> start!508644 (and (inv!71839 input!661) e!3041920)))

(declare-fun b!4865490 () Bool)

(assert (=> b!4865490 (= e!3041918 e!3041917)))

(declare-fun res!2077007 () Bool)

(assert (=> b!4865490 (=> res!2077007 e!3041917)))

(assert (=> b!4865490 (= res!2077007 e!3041928)))

(declare-fun c!827477 () Bool)

(declare-fun size!36856 (BalanceConc!28582) Int)

(assert (=> b!4865490 (= c!827477 (> (size!36856 lt!1993716) 0))))

(declare-fun prepend!1392 (BalanceConc!28582 Token!14644) BalanceConc!28582)

(assert (=> b!4865490 (= lt!1993716 (prepend!1392 (_1!33187 lt!1993718) (_1!33185 (v!49684 lt!1993717))))))

(assert (=> b!4865491 (= e!3041929 (and tp!1369136 tp!1369140))))

(assert (= (and start!508644 res!2077008) b!4865482))

(assert (= (and b!4865482 res!2077014) b!4865483))

(assert (= (and b!4865483 res!2077009) b!4865477))

(assert (= (and b!4865477 res!2077010) b!4865476))

(assert (= (and b!4865476 res!2077013) b!4865481))

(assert (= (and b!4865481 res!2077012) b!4865490))

(assert (= (and b!4865490 c!827477) b!4865485))

(assert (= (and b!4865490 (not c!827477)) b!4865480))

(assert (= (and b!4865485 (not res!2077011)) b!4865489))

(assert (= (and b!4865490 (not res!2077007)) b!4865479))

(assert (= (and b!4865479 (not res!2077015)) b!4865484))

(assert (= b!4865478 b!4865491))

(assert (= b!4865488 b!4865478))

(assert (= (and start!508644 ((_ is Cons!55932) rules!1248)) b!4865488))

(assert (= start!508644 b!4865486))

(assert (= start!508644 b!4865487))

(declare-fun m!5863810 () Bool)

(assert (=> b!4865479 m!5863810))

(declare-fun m!5863812 () Bool)

(assert (=> b!4865479 m!5863812))

(declare-fun m!5863814 () Bool)

(assert (=> b!4865485 m!5863814))

(declare-fun m!5863816 () Bool)

(assert (=> b!4865485 m!5863816))

(declare-fun m!5863818 () Bool)

(assert (=> b!4865477 m!5863818))

(assert (=> b!4865477 m!5863818))

(declare-fun m!5863820 () Bool)

(assert (=> b!4865477 m!5863820))

(declare-fun m!5863822 () Bool)

(assert (=> b!4865477 m!5863822))

(declare-fun m!5863824 () Bool)

(assert (=> b!4865478 m!5863824))

(declare-fun m!5863826 () Bool)

(assert (=> b!4865478 m!5863826))

(declare-fun m!5863828 () Bool)

(assert (=> start!508644 m!5863828))

(declare-fun m!5863830 () Bool)

(assert (=> start!508644 m!5863830))

(declare-fun m!5863832 () Bool)

(assert (=> b!4865490 m!5863832))

(declare-fun m!5863834 () Bool)

(assert (=> b!4865490 m!5863834))

(declare-fun m!5863836 () Bool)

(assert (=> b!4865481 m!5863836))

(declare-fun m!5863838 () Bool)

(assert (=> b!4865481 m!5863838))

(declare-fun m!5863840 () Bool)

(assert (=> b!4865481 m!5863840))

(assert (=> b!4865481 m!5863836))

(declare-fun m!5863842 () Bool)

(assert (=> b!4865481 m!5863842))

(declare-fun m!5863844 () Bool)

(assert (=> b!4865481 m!5863844))

(assert (=> b!4865481 m!5863840))

(assert (=> b!4865481 m!5863844))

(declare-fun m!5863846 () Bool)

(assert (=> b!4865487 m!5863846))

(declare-fun m!5863848 () Bool)

(assert (=> b!4865482 m!5863848))

(declare-fun m!5863850 () Bool)

(assert (=> b!4865489 m!5863850))

(declare-fun m!5863852 () Bool)

(assert (=> b!4865480 m!5863852))

(declare-fun m!5863854 () Bool)

(assert (=> b!4865483 m!5863854))

(declare-fun m!5863856 () Bool)

(assert (=> b!4865476 m!5863856))

(declare-fun m!5863858 () Bool)

(assert (=> b!4865486 m!5863858))

(assert (=> b!4865484 m!5863852))

(check-sat (not b!4865477) (not start!508644) (not b!4865478) (not b!4865484) b_and!342609 (not b!4865476) (not b!4865482) (not b_next!131417) (not b!4865489) (not b!4865483) (not b_next!131419) (not b!4865485) (not b!4865480) (not b!4865490) (not b!4865488) (not b!4865479) (not b!4865487) b_and!342607 (not b!4865481) (not b!4865486))
(check-sat b_and!342609 b_and!342607 (not b_next!131417) (not b_next!131419))
(get-model)

(declare-fun d!1561766 () Bool)

(declare-fun lt!1993721 () BalanceConc!28580)

(assert (=> d!1561766 (= (list!17479 lt!1993721) (originalCharacters!8353 (_1!33185 (v!49684 lt!1993717))))))

(declare-fun dynLambda!22442 (Int TokenValue!8340) BalanceConc!28580)

(assert (=> d!1561766 (= lt!1993721 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))

(assert (=> d!1561766 (= (charsOf!5335 (_1!33185 (v!49684 lt!1993717))) lt!1993721)))

(declare-fun b_lambda!193489 () Bool)

(assert (=> (not b_lambda!193489) (not d!1561766)))

(declare-fun t!363821 () Bool)

(declare-fun tb!257691 () Bool)

(assert (=> (and b!4865491 (= (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717)))))) t!363821) tb!257691))

(declare-fun b!4865508 () Bool)

(declare-fun e!3041941 () Bool)

(declare-fun tp!1369144 () Bool)

(assert (=> b!4865508 (= e!3041941 (and (inv!71837 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) tp!1369144))))

(declare-fun result!320802 () Bool)

(assert (=> tb!257691 (= result!320802 (and (inv!71839 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))) e!3041941))))

(assert (= tb!257691 b!4865508))

(declare-fun m!5863870 () Bool)

(assert (=> b!4865508 m!5863870))

(declare-fun m!5863872 () Bool)

(assert (=> tb!257691 m!5863872))

(assert (=> d!1561766 t!363821))

(declare-fun b_and!342611 () Bool)

(assert (= b_and!342609 (and (=> t!363821 result!320802) b_and!342611)))

(declare-fun m!5863874 () Bool)

(assert (=> d!1561766 m!5863874))

(declare-fun m!5863880 () Bool)

(assert (=> d!1561766 m!5863880))

(assert (=> b!4865481 d!1561766))

(declare-fun b!4865588 () Bool)

(declare-fun e!3041993 () tuple2!59768)

(declare-fun lt!1993768 () tuple2!59768)

(declare-fun lt!1993770 () Option!13775)

(assert (=> b!4865588 (= e!3041993 (tuple2!59769 (prepend!1392 (_1!33187 lt!1993768) (_1!33185 (v!49684 lt!1993770))) (_2!33187 lt!1993768)))))

(assert (=> b!4865588 (= lt!1993768 (lexRec!845 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1993770))))))

(declare-fun d!1561772 () Bool)

(declare-fun e!3041992 () Bool)

(assert (=> d!1561772 e!3041992))

(declare-fun res!2077061 () Bool)

(assert (=> d!1561772 (=> (not res!2077061) (not e!3041992))))

(declare-fun e!3041991 () Bool)

(assert (=> d!1561772 (= res!2077061 e!3041991)))

(declare-fun c!827505 () Bool)

(declare-fun lt!1993769 () tuple2!59768)

(assert (=> d!1561772 (= c!827505 (> (size!36856 (_1!33187 lt!1993769)) 0))))

(assert (=> d!1561772 (= lt!1993769 e!3041993)))

(declare-fun c!827506 () Bool)

(assert (=> d!1561772 (= c!827506 ((_ is Some!13774) lt!1993770))))

(declare-fun maxPrefixZipperSequence!1223 (LexerInterface!7622 List!56056 BalanceConc!28580) Option!13775)

(assert (=> d!1561772 (= lt!1993770 (maxPrefixZipperSequence!1223 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1993717))))))

(assert (=> d!1561772 (= (lexRec!845 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1993717))) lt!1993769)))

(declare-fun b!4865589 () Bool)

(assert (=> b!4865589 (= e!3041993 (tuple2!59769 (BalanceConc!28583 Empty!14570) (_2!33185 (v!49684 lt!1993717))))))

(declare-fun b!4865590 () Bool)

(declare-fun e!3041994 () Bool)

(assert (=> b!4865590 (= e!3041991 e!3041994)))

(declare-fun res!2077060 () Bool)

(assert (=> b!4865590 (= res!2077060 (< (size!36855 (_2!33187 lt!1993769)) (size!36855 (_2!33185 (v!49684 lt!1993717)))))))

(assert (=> b!4865590 (=> (not res!2077060) (not e!3041994))))

(declare-fun b!4865591 () Bool)

(assert (=> b!4865591 (= e!3041991 (= (list!17479 (_2!33187 lt!1993769)) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun b!4865592 () Bool)

(declare-fun res!2077062 () Bool)

(assert (=> b!4865592 (=> (not res!2077062) (not e!3041992))))

(assert (=> b!4865592 (= res!2077062 (= (list!17480 (_1!33187 lt!1993769)) (_1!33186 (lexList!2101 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4865593 () Bool)

(assert (=> b!4865593 (= e!3041992 (= (list!17479 (_2!33187 lt!1993769)) (_2!33186 (lexList!2101 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4865594 () Bool)

(assert (=> b!4865594 (= e!3041994 (not (isEmpty!29915 (_1!33187 lt!1993769))))))

(assert (= (and d!1561772 c!827506) b!4865588))

(assert (= (and d!1561772 (not c!827506)) b!4865589))

(assert (= (and d!1561772 c!827505) b!4865590))

(assert (= (and d!1561772 (not c!827505)) b!4865591))

(assert (= (and b!4865590 res!2077060) b!4865594))

(assert (= (and d!1561772 res!2077061) b!4865592))

(assert (= (and b!4865592 res!2077062) b!4865593))

(declare-fun m!5863982 () Bool)

(assert (=> b!4865592 m!5863982))

(assert (=> b!4865592 m!5863836))

(assert (=> b!4865592 m!5863836))

(declare-fun m!5863984 () Bool)

(assert (=> b!4865592 m!5863984))

(declare-fun m!5863986 () Bool)

(assert (=> b!4865590 m!5863986))

(declare-fun m!5863988 () Bool)

(assert (=> b!4865590 m!5863988))

(declare-fun m!5863990 () Bool)

(assert (=> b!4865593 m!5863990))

(assert (=> b!4865593 m!5863836))

(assert (=> b!4865593 m!5863836))

(assert (=> b!4865593 m!5863984))

(declare-fun m!5863992 () Bool)

(assert (=> d!1561772 m!5863992))

(declare-fun m!5863994 () Bool)

(assert (=> d!1561772 m!5863994))

(declare-fun m!5863996 () Bool)

(assert (=> b!4865588 m!5863996))

(declare-fun m!5863998 () Bool)

(assert (=> b!4865588 m!5863998))

(declare-fun m!5864000 () Bool)

(assert (=> b!4865594 m!5864000))

(assert (=> b!4865591 m!5863990))

(assert (=> b!4865591 m!5863836))

(assert (=> b!4865481 d!1561772))

(declare-fun b!4865605 () Bool)

(declare-fun res!2077067 () Bool)

(declare-fun e!3041999 () Bool)

(assert (=> b!4865605 (=> (not res!2077067) (not e!3041999))))

(declare-fun lt!1993773 () List!56055)

(declare-fun size!36861 (List!56055) Int)

(assert (=> b!4865605 (= res!2077067 (= (size!36861 lt!1993773) (+ (size!36861 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))) (size!36861 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4865603 () Bool)

(declare-fun e!3042000 () List!56055)

(assert (=> b!4865603 (= e!3042000 (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(declare-fun d!1561814 () Bool)

(assert (=> d!1561814 e!3041999))

(declare-fun res!2077068 () Bool)

(assert (=> d!1561814 (=> (not res!2077068) (not e!3041999))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9968 (List!56055) (InoxSet C!26408))

(assert (=> d!1561814 (= res!2077068 (= (content!9968 lt!1993773) ((_ map or) (content!9968 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))) (content!9968 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1561814 (= lt!1993773 e!3042000)))

(declare-fun c!827509 () Bool)

(assert (=> d!1561814 (= c!827509 ((_ is Nil!55931) (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))

(assert (=> d!1561814 (= (++!12179 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))) (list!17479 (_2!33185 (v!49684 lt!1993717)))) lt!1993773)))

(declare-fun b!4865606 () Bool)

(assert (=> b!4865606 (= e!3041999 (or (not (= (list!17479 (_2!33185 (v!49684 lt!1993717))) Nil!55931)) (= lt!1993773 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4865604 () Bool)

(assert (=> b!4865604 (= e!3042000 (Cons!55931 (h!62379 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))) (++!12179 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))) (list!17479 (_2!33185 (v!49684 lt!1993717))))))))

(assert (= (and d!1561814 c!827509) b!4865603))

(assert (= (and d!1561814 (not c!827509)) b!4865604))

(assert (= (and d!1561814 res!2077068) b!4865605))

(assert (= (and b!4865605 res!2077067) b!4865606))

(declare-fun m!5864002 () Bool)

(assert (=> b!4865605 m!5864002))

(assert (=> b!4865605 m!5863840))

(declare-fun m!5864004 () Bool)

(assert (=> b!4865605 m!5864004))

(assert (=> b!4865605 m!5863836))

(declare-fun m!5864006 () Bool)

(assert (=> b!4865605 m!5864006))

(declare-fun m!5864008 () Bool)

(assert (=> d!1561814 m!5864008))

(assert (=> d!1561814 m!5863840))

(declare-fun m!5864010 () Bool)

(assert (=> d!1561814 m!5864010))

(assert (=> d!1561814 m!5863836))

(declare-fun m!5864012 () Bool)

(assert (=> d!1561814 m!5864012))

(assert (=> b!4865604 m!5863836))

(declare-fun m!5864014 () Bool)

(assert (=> b!4865604 m!5864014))

(assert (=> b!4865481 d!1561814))

(declare-fun d!1561816 () Bool)

(declare-fun list!17483 (Conc!14569) List!56055)

(assert (=> d!1561816 (= (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))) (list!17483 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))

(declare-fun bs!1174237 () Bool)

(assert (= bs!1174237 d!1561816))

(declare-fun m!5864016 () Bool)

(assert (=> bs!1174237 m!5864016))

(assert (=> b!4865481 d!1561816))

(declare-fun d!1561818 () Bool)

(assert (=> d!1561818 (= (list!17479 (_2!33185 (v!49684 lt!1993717))) (list!17483 (c!827478 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun bs!1174238 () Bool)

(assert (= bs!1174238 d!1561818))

(declare-fun m!5864018 () Bool)

(assert (=> bs!1174238 m!5864018))

(assert (=> b!4865481 d!1561818))

(declare-fun d!1561820 () Bool)

(assert (=> d!1561820 (= (isEmpty!29914 rules!1248) ((_ is Nil!55932) rules!1248))))

(assert (=> b!4865482 d!1561820))

(declare-fun d!1561822 () Bool)

(declare-fun lt!1993776 () Bool)

(declare-fun isEmpty!29918 (List!56057) Bool)

(assert (=> d!1561822 (= lt!1993776 (isEmpty!29918 (list!17480 lt!1993716)))))

(declare-fun isEmpty!29919 (Conc!14570) Bool)

(assert (=> d!1561822 (= lt!1993776 (isEmpty!29919 (c!827480 lt!1993716)))))

(assert (=> d!1561822 (= (isEmpty!29915 lt!1993716) lt!1993776)))

(declare-fun bs!1174239 () Bool)

(assert (= bs!1174239 d!1561822))

(assert (=> bs!1174239 m!5863810))

(assert (=> bs!1174239 m!5863810))

(declare-fun m!5864020 () Bool)

(assert (=> bs!1174239 m!5864020))

(declare-fun m!5864022 () Bool)

(assert (=> bs!1174239 m!5864022))

(assert (=> b!4865489 d!1561822))

(declare-fun d!1561824 () Bool)

(assert (=> d!1561824 (= (inv!71833 (tag!8894 (h!62380 rules!1248))) (= (mod (str.len (value!257996 (tag!8894 (h!62380 rules!1248)))) 2) 0))))

(assert (=> b!4865478 d!1561824))

(declare-fun d!1561826 () Bool)

(declare-fun res!2077071 () Bool)

(declare-fun e!3042003 () Bool)

(assert (=> d!1561826 (=> (not res!2077071) (not e!3042003))))

(declare-fun semiInverseModEq!3544 (Int Int) Bool)

(assert (=> d!1561826 (= res!2077071 (semiInverseModEq!3544 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))))))

(assert (=> d!1561826 (= (inv!71838 (transformation!8030 (h!62380 rules!1248))) e!3042003)))

(declare-fun b!4865609 () Bool)

(declare-fun equivClasses!3423 (Int Int) Bool)

(assert (=> b!4865609 (= e!3042003 (equivClasses!3423 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))))))

(assert (= (and d!1561826 res!2077071) b!4865609))

(declare-fun m!5864024 () Bool)

(assert (=> d!1561826 m!5864024))

(declare-fun m!5864026 () Bool)

(assert (=> b!4865609 m!5864026))

(assert (=> b!4865478 d!1561826))

(declare-fun d!1561828 () Bool)

(assert (=> d!1561828 (= (list!17479 (_2!33187 lt!1993718)) (list!17483 (c!827478 (_2!33187 lt!1993718))))))

(declare-fun bs!1174240 () Bool)

(assert (= bs!1174240 d!1561828))

(declare-fun m!5864028 () Bool)

(assert (=> bs!1174240 m!5864028))

(assert (=> b!4865480 d!1561828))

(declare-fun d!1561830 () Bool)

(declare-fun list!17484 (Conc!14570) List!56057)

(assert (=> d!1561830 (= (list!17480 lt!1993716) (list!17484 (c!827480 lt!1993716)))))

(declare-fun bs!1174241 () Bool)

(assert (= bs!1174241 d!1561830))

(declare-fun m!5864030 () Bool)

(assert (=> bs!1174241 m!5864030))

(assert (=> b!4865479 d!1561830))

(declare-fun b!4865684 () Bool)

(declare-fun e!3042052 () tuple2!59766)

(declare-datatypes ((tuple2!59772 0))(
  ( (tuple2!59773 (_1!33189 Token!14644) (_2!33189 List!56055)) )
))
(declare-datatypes ((Option!13777 0))(
  ( (None!13776) (Some!13776 (v!49688 tuple2!59772)) )
))
(declare-fun lt!1993804 () Option!13777)

(declare-fun lt!1993805 () tuple2!59766)

(assert (=> b!4865684 (= e!3042052 (tuple2!59767 (Cons!55933 (_1!33189 (v!49688 lt!1993804)) (_1!33186 lt!1993805)) (_2!33186 lt!1993805)))))

(assert (=> b!4865684 (= lt!1993805 (lexList!2101 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1993804))))))

(declare-fun b!4865685 () Bool)

(declare-fun e!3042053 () Bool)

(declare-fun e!3042051 () Bool)

(assert (=> b!4865685 (= e!3042053 e!3042051)))

(declare-fun res!2077092 () Bool)

(declare-fun lt!1993806 () tuple2!59766)

(assert (=> b!4865685 (= res!2077092 (< (size!36861 (_2!33186 lt!1993806)) (size!36861 lt!1993715)))))

(assert (=> b!4865685 (=> (not res!2077092) (not e!3042051))))

(declare-fun b!4865686 () Bool)

(assert (=> b!4865686 (= e!3042051 (not (isEmpty!29918 (_1!33186 lt!1993806))))))

(declare-fun b!4865687 () Bool)

(assert (=> b!4865687 (= e!3042052 (tuple2!59767 Nil!55933 lt!1993715))))

(declare-fun b!4865683 () Bool)

(assert (=> b!4865683 (= e!3042053 (= (_2!33186 lt!1993806) lt!1993715))))

(declare-fun d!1561832 () Bool)

(assert (=> d!1561832 e!3042053))

(declare-fun c!827518 () Bool)

(declare-fun size!36862 (List!56057) Int)

(assert (=> d!1561832 (= c!827518 (> (size!36862 (_1!33186 lt!1993806)) 0))))

(assert (=> d!1561832 (= lt!1993806 e!3042052)))

(declare-fun c!827517 () Bool)

(assert (=> d!1561832 (= c!827517 ((_ is Some!13776) lt!1993804))))

(declare-fun maxPrefix!4547 (LexerInterface!7622 List!56056 List!56055) Option!13777)

(assert (=> d!1561832 (= lt!1993804 (maxPrefix!4547 thiss!11777 rules!1248 lt!1993715))))

(assert (=> d!1561832 (= (lexList!2101 thiss!11777 rules!1248 lt!1993715) lt!1993806)))

(assert (= (and d!1561832 c!827517) b!4865684))

(assert (= (and d!1561832 (not c!827517)) b!4865687))

(assert (= (and d!1561832 c!827518) b!4865685))

(assert (= (and d!1561832 (not c!827518)) b!4865683))

(assert (= (and b!4865685 res!2077092) b!4865686))

(declare-fun m!5864074 () Bool)

(assert (=> b!4865684 m!5864074))

(declare-fun m!5864076 () Bool)

(assert (=> b!4865685 m!5864076))

(declare-fun m!5864078 () Bool)

(assert (=> b!4865685 m!5864078))

(declare-fun m!5864080 () Bool)

(assert (=> b!4865686 m!5864080))

(declare-fun m!5864082 () Bool)

(assert (=> d!1561832 m!5864082))

(declare-fun m!5864084 () Bool)

(assert (=> d!1561832 m!5864084))

(assert (=> b!4865479 d!1561832))

(declare-fun d!1561834 () Bool)

(declare-fun lt!1993809 () Int)

(assert (=> d!1561834 (= lt!1993809 (size!36862 (list!17480 lt!1993716)))))

(declare-fun size!36863 (Conc!14570) Int)

(assert (=> d!1561834 (= lt!1993809 (size!36863 (c!827480 lt!1993716)))))

(assert (=> d!1561834 (= (size!36856 lt!1993716) lt!1993809)))

(declare-fun bs!1174242 () Bool)

(assert (= bs!1174242 d!1561834))

(assert (=> bs!1174242 m!5863810))

(assert (=> bs!1174242 m!5863810))

(declare-fun m!5864086 () Bool)

(assert (=> bs!1174242 m!5864086))

(declare-fun m!5864088 () Bool)

(assert (=> bs!1174242 m!5864088))

(assert (=> b!4865490 d!1561834))

(declare-fun d!1561836 () Bool)

(declare-fun e!3042056 () Bool)

(assert (=> d!1561836 e!3042056))

(declare-fun res!2077095 () Bool)

(assert (=> d!1561836 (=> (not res!2077095) (not e!3042056))))

(declare-fun isBalanced!3953 (Conc!14570) Bool)

(declare-fun prepend!1394 (Conc!14570 Token!14644) Conc!14570)

(assert (=> d!1561836 (= res!2077095 (isBalanced!3953 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))

(declare-fun lt!1993812 () BalanceConc!28582)

(assert (=> d!1561836 (= lt!1993812 (BalanceConc!28583 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))

(assert (=> d!1561836 (= (prepend!1392 (_1!33187 lt!1993718) (_1!33185 (v!49684 lt!1993717))) lt!1993812)))

(declare-fun b!4865690 () Bool)

(assert (=> b!4865690 (= e!3042056 (= (list!17480 lt!1993812) (Cons!55933 (_1!33185 (v!49684 lt!1993717)) (list!17480 (_1!33187 lt!1993718)))))))

(assert (= (and d!1561836 res!2077095) b!4865690))

(declare-fun m!5864090 () Bool)

(assert (=> d!1561836 m!5864090))

(assert (=> d!1561836 m!5864090))

(declare-fun m!5864092 () Bool)

(assert (=> d!1561836 m!5864092))

(declare-fun m!5864094 () Bool)

(assert (=> b!4865690 m!5864094))

(declare-fun m!5864096 () Bool)

(assert (=> b!4865690 m!5864096))

(assert (=> b!4865490 d!1561836))

(declare-fun d!1561838 () Bool)

(declare-fun isBalanced!3954 (Conc!14569) Bool)

(assert (=> d!1561838 (= (inv!71839 totalInput!332) (isBalanced!3954 (c!827478 totalInput!332)))))

(declare-fun bs!1174243 () Bool)

(assert (= bs!1174243 d!1561838))

(declare-fun m!5864098 () Bool)

(assert (=> bs!1174243 m!5864098))

(assert (=> start!508644 d!1561838))

(declare-fun d!1561840 () Bool)

(assert (=> d!1561840 (= (inv!71839 input!661) (isBalanced!3954 (c!827478 input!661)))))

(declare-fun bs!1174244 () Bool)

(assert (= bs!1174244 d!1561840))

(declare-fun m!5864100 () Bool)

(assert (=> bs!1174244 m!5864100))

(assert (=> start!508644 d!1561840))

(declare-fun b!4865707 () Bool)

(declare-fun e!3042071 () Bool)

(declare-fun e!3042073 () Bool)

(assert (=> b!4865707 (= e!3042071 e!3042073)))

(declare-fun res!2077111 () Bool)

(assert (=> b!4865707 (=> (not res!2077111) (not e!3042073))))

(declare-fun lt!1993832 () Option!13775)

(declare-fun get!19222 (Option!13775) tuple2!59764)

(declare-fun get!19223 (Option!13777) tuple2!59772)

(assert (=> b!4865707 (= res!2077111 (= (_1!33185 (get!19222 lt!1993832)) (_1!33189 (get!19223 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 input!661))))))))

(declare-fun b!4865708 () Bool)

(declare-fun e!3042072 () Bool)

(declare-fun e!3042074 () Bool)

(assert (=> b!4865708 (= e!3042072 e!3042074)))

(declare-fun res!2077108 () Bool)

(assert (=> b!4865708 (=> (not res!2077108) (not e!3042074))))

(declare-fun maxPrefixZipper!561 (LexerInterface!7622 List!56056 List!56055) Option!13777)

(assert (=> b!4865708 (= res!2077108 (= (_1!33185 (get!19222 lt!1993832)) (_1!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661))))))))

(declare-fun b!4865709 () Bool)

(declare-fun e!3042070 () Option!13775)

(declare-fun lt!1993833 () Option!13775)

(declare-fun lt!1993829 () Option!13775)

(assert (=> b!4865709 (= e!3042070 (ite (and ((_ is None!13774) lt!1993833) ((_ is None!13774) lt!1993829)) None!13774 (ite ((_ is None!13774) lt!1993829) lt!1993833 (ite ((_ is None!13774) lt!1993833) lt!1993829 (ite (>= (size!36854 (_1!33185 (v!49684 lt!1993833))) (size!36854 (_1!33185 (v!49684 lt!1993829)))) lt!1993833 lt!1993829)))))))

(declare-fun call!337910 () Option!13775)

(assert (=> b!4865709 (= lt!1993833 call!337910)))

(assert (=> b!4865709 (= lt!1993829 (maxPrefixZipperSequenceV2!627 thiss!11777 (t!363818 rules!1248) input!661 totalInput!332))))

(declare-fun d!1561842 () Bool)

(declare-fun e!3042069 () Bool)

(assert (=> d!1561842 e!3042069))

(declare-fun res!2077113 () Bool)

(assert (=> d!1561842 (=> (not res!2077113) (not e!3042069))))

(declare-fun isDefined!10844 (Option!13775) Bool)

(declare-fun isDefined!10845 (Option!13777) Bool)

(assert (=> d!1561842 (= res!2077113 (= (isDefined!10844 lt!1993832) (isDefined!10845 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661)))))))

(assert (=> d!1561842 (= lt!1993832 e!3042070)))

(declare-fun c!827522 () Bool)

(assert (=> d!1561842 (= c!827522 (and ((_ is Cons!55932) rules!1248) ((_ is Nil!55932) (t!363818 rules!1248))))))

(declare-datatypes ((Unit!145938 0))(
  ( (Unit!145939) )
))
(declare-fun lt!1993827 () Unit!145938)

(declare-fun lt!1993831 () Unit!145938)

(assert (=> d!1561842 (= lt!1993827 lt!1993831)))

(declare-fun lt!1993828 () List!56055)

(declare-fun lt!1993830 () List!56055)

(declare-fun isPrefix!4764 (List!56055 List!56055) Bool)

(assert (=> d!1561842 (isPrefix!4764 lt!1993828 lt!1993830)))

(declare-fun lemmaIsPrefixRefl!3161 (List!56055 List!56055) Unit!145938)

(assert (=> d!1561842 (= lt!1993831 (lemmaIsPrefixRefl!3161 lt!1993828 lt!1993830))))

(assert (=> d!1561842 (= lt!1993830 (list!17479 input!661))))

(assert (=> d!1561842 (= lt!1993828 (list!17479 input!661))))

(declare-fun rulesValidInductive!3019 (LexerInterface!7622 List!56056) Bool)

(assert (=> d!1561842 (rulesValidInductive!3019 thiss!11777 rules!1248)))

(assert (=> d!1561842 (= (maxPrefixZipperSequenceV2!627 thiss!11777 rules!1248 input!661 totalInput!332) lt!1993832)))

(declare-fun bm!337905 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!256 (LexerInterface!7622 Rule!15860 BalanceConc!28580 BalanceConc!28580) Option!13775)

(assert (=> bm!337905 (= call!337910 (maxPrefixOneRuleZipperSequenceV2!256 thiss!11777 (h!62380 rules!1248) input!661 totalInput!332))))

(declare-fun b!4865710 () Bool)

(assert (=> b!4865710 (= e!3042074 (= (list!17479 (_2!33185 (get!19222 lt!1993832))) (_2!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661))))))))

(declare-fun b!4865711 () Bool)

(declare-fun res!2077110 () Bool)

(assert (=> b!4865711 (=> (not res!2077110) (not e!3042069))))

(assert (=> b!4865711 (= res!2077110 e!3042072)))

(declare-fun res!2077112 () Bool)

(assert (=> b!4865711 (=> res!2077112 e!3042072)))

(assert (=> b!4865711 (= res!2077112 (not (isDefined!10844 lt!1993832)))))

(declare-fun b!4865712 () Bool)

(assert (=> b!4865712 (= e!3042070 call!337910)))

(declare-fun b!4865713 () Bool)

(assert (=> b!4865713 (= e!3042073 (= (list!17479 (_2!33185 (get!19222 lt!1993832))) (_2!33189 (get!19223 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 input!661))))))))

(declare-fun b!4865714 () Bool)

(assert (=> b!4865714 (= e!3042069 e!3042071)))

(declare-fun res!2077109 () Bool)

(assert (=> b!4865714 (=> res!2077109 e!3042071)))

(assert (=> b!4865714 (= res!2077109 (not (isDefined!10844 lt!1993832)))))

(assert (= (and d!1561842 c!827522) b!4865712))

(assert (= (and d!1561842 (not c!827522)) b!4865709))

(assert (= (or b!4865712 b!4865709) bm!337905))

(assert (= (and d!1561842 res!2077113) b!4865711))

(assert (= (and b!4865711 (not res!2077112)) b!4865708))

(assert (= (and b!4865708 res!2077108) b!4865710))

(assert (= (and b!4865711 res!2077110) b!4865714))

(assert (= (and b!4865714 (not res!2077109)) b!4865707))

(assert (= (and b!4865707 res!2077111) b!4865713))

(declare-fun m!5864102 () Bool)

(assert (=> b!4865711 m!5864102))

(declare-fun m!5864104 () Bool)

(assert (=> b!4865710 m!5864104))

(declare-fun m!5864106 () Bool)

(assert (=> b!4865710 m!5864106))

(declare-fun m!5864108 () Bool)

(assert (=> b!4865710 m!5864108))

(declare-fun m!5864110 () Bool)

(assert (=> b!4865710 m!5864110))

(assert (=> b!4865710 m!5863822))

(assert (=> b!4865710 m!5864104))

(assert (=> b!4865710 m!5863822))

(assert (=> b!4865714 m!5864102))

(assert (=> b!4865707 m!5864108))

(assert (=> b!4865707 m!5863822))

(assert (=> b!4865707 m!5863822))

(declare-fun m!5864112 () Bool)

(assert (=> b!4865707 m!5864112))

(assert (=> b!4865707 m!5864112))

(declare-fun m!5864114 () Bool)

(assert (=> b!4865707 m!5864114))

(declare-fun m!5864116 () Bool)

(assert (=> d!1561842 m!5864116))

(assert (=> d!1561842 m!5863822))

(assert (=> d!1561842 m!5864104))

(assert (=> d!1561842 m!5864104))

(declare-fun m!5864118 () Bool)

(assert (=> d!1561842 m!5864118))

(declare-fun m!5864120 () Bool)

(assert (=> d!1561842 m!5864120))

(declare-fun m!5864122 () Bool)

(assert (=> d!1561842 m!5864122))

(assert (=> d!1561842 m!5863822))

(assert (=> d!1561842 m!5864102))

(declare-fun m!5864124 () Bool)

(assert (=> b!4865709 m!5864124))

(declare-fun m!5864126 () Bool)

(assert (=> bm!337905 m!5864126))

(assert (=> b!4865713 m!5864108))

(assert (=> b!4865713 m!5864110))

(assert (=> b!4865713 m!5864112))

(assert (=> b!4865713 m!5864114))

(assert (=> b!4865713 m!5863822))

(assert (=> b!4865713 m!5863822))

(assert (=> b!4865713 m!5864112))

(assert (=> b!4865708 m!5864108))

(assert (=> b!4865708 m!5863822))

(assert (=> b!4865708 m!5863822))

(assert (=> b!4865708 m!5864104))

(assert (=> b!4865708 m!5864104))

(assert (=> b!4865708 m!5864106))

(assert (=> b!4865476 d!1561842))

(declare-fun d!1561844 () Bool)

(declare-fun c!827525 () Bool)

(assert (=> d!1561844 (= c!827525 ((_ is Node!14569) (c!827478 totalInput!332)))))

(declare-fun e!3042079 () Bool)

(assert (=> d!1561844 (= (inv!71837 (c!827478 totalInput!332)) e!3042079)))

(declare-fun b!4865721 () Bool)

(declare-fun inv!71843 (Conc!14569) Bool)

(assert (=> b!4865721 (= e!3042079 (inv!71843 (c!827478 totalInput!332)))))

(declare-fun b!4865722 () Bool)

(declare-fun e!3042080 () Bool)

(assert (=> b!4865722 (= e!3042079 e!3042080)))

(declare-fun res!2077116 () Bool)

(assert (=> b!4865722 (= res!2077116 (not ((_ is Leaf!24295) (c!827478 totalInput!332))))))

(assert (=> b!4865722 (=> res!2077116 e!3042080)))

(declare-fun b!4865723 () Bool)

(declare-fun inv!71844 (Conc!14569) Bool)

(assert (=> b!4865723 (= e!3042080 (inv!71844 (c!827478 totalInput!332)))))

(assert (= (and d!1561844 c!827525) b!4865721))

(assert (= (and d!1561844 (not c!827525)) b!4865722))

(assert (= (and b!4865722 (not res!2077116)) b!4865723))

(declare-fun m!5864128 () Bool)

(assert (=> b!4865721 m!5864128))

(declare-fun m!5864130 () Bool)

(assert (=> b!4865723 m!5864130))

(assert (=> b!4865486 d!1561844))

(declare-fun d!1561846 () Bool)

(declare-fun e!3042083 () Bool)

(assert (=> d!1561846 e!3042083))

(declare-fun res!2077119 () Bool)

(assert (=> d!1561846 (=> res!2077119 e!3042083)))

(declare-fun lt!1993836 () Bool)

(assert (=> d!1561846 (= res!2077119 (not lt!1993836))))

(declare-fun drop!2200 (List!56055 Int) List!56055)

(assert (=> d!1561846 (= lt!1993836 (= lt!1993715 (drop!2200 (list!17479 totalInput!332) (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)))))))

(assert (=> d!1561846 (= (isSuffix!1059 lt!1993715 (list!17479 totalInput!332)) lt!1993836)))

(declare-fun b!4865726 () Bool)

(assert (=> b!4865726 (= e!3042083 (>= (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)))))

(assert (= (and d!1561846 (not res!2077119)) b!4865726))

(assert (=> d!1561846 m!5863818))

(declare-fun m!5864132 () Bool)

(assert (=> d!1561846 m!5864132))

(assert (=> d!1561846 m!5864078))

(assert (=> d!1561846 m!5863818))

(declare-fun m!5864134 () Bool)

(assert (=> d!1561846 m!5864134))

(assert (=> b!4865726 m!5863818))

(assert (=> b!4865726 m!5864132))

(assert (=> b!4865726 m!5864078))

(assert (=> b!4865477 d!1561846))

(declare-fun d!1561848 () Bool)

(assert (=> d!1561848 (= (list!17479 totalInput!332) (list!17483 (c!827478 totalInput!332)))))

(declare-fun bs!1174245 () Bool)

(assert (= bs!1174245 d!1561848))

(declare-fun m!5864136 () Bool)

(assert (=> bs!1174245 m!5864136))

(assert (=> b!4865477 d!1561848))

(declare-fun d!1561850 () Bool)

(assert (=> d!1561850 (= (list!17479 input!661) (list!17483 (c!827478 input!661)))))

(declare-fun bs!1174246 () Bool)

(assert (= bs!1174246 d!1561850))

(declare-fun m!5864138 () Bool)

(assert (=> bs!1174246 m!5864138))

(assert (=> b!4865477 d!1561850))

(declare-fun d!1561852 () Bool)

(declare-fun c!827526 () Bool)

(assert (=> d!1561852 (= c!827526 ((_ is Node!14569) (c!827478 input!661)))))

(declare-fun e!3042084 () Bool)

(assert (=> d!1561852 (= (inv!71837 (c!827478 input!661)) e!3042084)))

(declare-fun b!4865727 () Bool)

(assert (=> b!4865727 (= e!3042084 (inv!71843 (c!827478 input!661)))))

(declare-fun b!4865728 () Bool)

(declare-fun e!3042085 () Bool)

(assert (=> b!4865728 (= e!3042084 e!3042085)))

(declare-fun res!2077120 () Bool)

(assert (=> b!4865728 (= res!2077120 (not ((_ is Leaf!24295) (c!827478 input!661))))))

(assert (=> b!4865728 (=> res!2077120 e!3042085)))

(declare-fun b!4865729 () Bool)

(assert (=> b!4865729 (= e!3042085 (inv!71844 (c!827478 input!661)))))

(assert (= (and d!1561852 c!827526) b!4865727))

(assert (= (and d!1561852 (not c!827526)) b!4865728))

(assert (= (and b!4865728 (not res!2077120)) b!4865729))

(declare-fun m!5864140 () Bool)

(assert (=> b!4865727 m!5864140))

(declare-fun m!5864142 () Bool)

(assert (=> b!4865729 m!5864142))

(assert (=> b!4865487 d!1561852))

(assert (=> b!4865484 d!1561828))

(declare-fun d!1561854 () Bool)

(declare-fun res!2077123 () Bool)

(declare-fun e!3042088 () Bool)

(assert (=> d!1561854 (=> (not res!2077123) (not e!3042088))))

(declare-fun rulesValid!3120 (LexerInterface!7622 List!56056) Bool)

(assert (=> d!1561854 (= res!2077123 (rulesValid!3120 thiss!11777 rules!1248))))

(assert (=> d!1561854 (= (rulesInvariant!6720 thiss!11777 rules!1248) e!3042088)))

(declare-fun b!4865732 () Bool)

(declare-datatypes ((List!56059 0))(
  ( (Nil!55935) (Cons!55935 (h!62383 String!63118) (t!363829 List!56059)) )
))
(declare-fun noDuplicateTag!3281 (LexerInterface!7622 List!56056 List!56059) Bool)

(assert (=> b!4865732 (= e!3042088 (noDuplicateTag!3281 thiss!11777 rules!1248 Nil!55935))))

(assert (= (and d!1561854 res!2077123) b!4865732))

(declare-fun m!5864144 () Bool)

(assert (=> d!1561854 m!5864144))

(declare-fun m!5864146 () Bool)

(assert (=> b!4865732 m!5864146))

(assert (=> b!4865483 d!1561854))

(declare-fun d!1561856 () Bool)

(declare-fun lt!1993839 () Int)

(assert (=> d!1561856 (= lt!1993839 (size!36861 (list!17479 (_2!33187 lt!1993718))))))

(declare-fun size!36864 (Conc!14569) Int)

(assert (=> d!1561856 (= lt!1993839 (size!36864 (c!827478 (_2!33187 lt!1993718))))))

(assert (=> d!1561856 (= (size!36855 (_2!33187 lt!1993718)) lt!1993839)))

(declare-fun bs!1174247 () Bool)

(assert (= bs!1174247 d!1561856))

(assert (=> bs!1174247 m!5863852))

(assert (=> bs!1174247 m!5863852))

(declare-fun m!5864148 () Bool)

(assert (=> bs!1174247 m!5864148))

(declare-fun m!5864150 () Bool)

(assert (=> bs!1174247 m!5864150))

(assert (=> b!4865485 d!1561856))

(declare-fun d!1561858 () Bool)

(declare-fun lt!1993840 () Int)

(assert (=> d!1561858 (= lt!1993840 (size!36861 (list!17479 input!661)))))

(assert (=> d!1561858 (= lt!1993840 (size!36864 (c!827478 input!661)))))

(assert (=> d!1561858 (= (size!36855 input!661) lt!1993840)))

(declare-fun bs!1174248 () Bool)

(assert (= bs!1174248 d!1561858))

(assert (=> bs!1174248 m!5863822))

(assert (=> bs!1174248 m!5863822))

(declare-fun m!5864152 () Bool)

(assert (=> bs!1174248 m!5864152))

(declare-fun m!5864154 () Bool)

(assert (=> bs!1174248 m!5864154))

(assert (=> b!4865485 d!1561858))

(declare-fun tp!1369193 () Bool)

(declare-fun e!3042094 () Bool)

(declare-fun tp!1369194 () Bool)

(declare-fun b!4865741 () Bool)

(assert (=> b!4865741 (= e!3042094 (and (inv!71837 (left!40624 (c!827478 totalInput!332))) tp!1369194 (inv!71837 (right!40954 (c!827478 totalInput!332))) tp!1369193))))

(declare-fun b!4865743 () Bool)

(declare-fun e!3042093 () Bool)

(declare-fun tp!1369195 () Bool)

(assert (=> b!4865743 (= e!3042093 tp!1369195)))

(declare-fun b!4865742 () Bool)

(declare-fun inv!71845 (IArray!29199) Bool)

(assert (=> b!4865742 (= e!3042094 (and (inv!71845 (xs!17875 (c!827478 totalInput!332))) e!3042093))))

(assert (=> b!4865486 (= tp!1369138 (and (inv!71837 (c!827478 totalInput!332)) e!3042094))))

(assert (= (and b!4865486 ((_ is Node!14569) (c!827478 totalInput!332))) b!4865741))

(assert (= b!4865742 b!4865743))

(assert (= (and b!4865486 ((_ is Leaf!24295) (c!827478 totalInput!332))) b!4865742))

(declare-fun m!5864156 () Bool)

(assert (=> b!4865741 m!5864156))

(declare-fun m!5864158 () Bool)

(assert (=> b!4865741 m!5864158))

(declare-fun m!5864160 () Bool)

(assert (=> b!4865742 m!5864160))

(assert (=> b!4865486 m!5863858))

(declare-fun b!4865754 () Bool)

(declare-fun b_free!130635 () Bool)

(declare-fun b_next!131425 () Bool)

(assert (=> b!4865754 (= b_free!130635 (not b_next!131425))))

(declare-fun tp!1369206 () Bool)

(declare-fun b_and!342619 () Bool)

(assert (=> b!4865754 (= tp!1369206 b_and!342619)))

(declare-fun b_free!130637 () Bool)

(declare-fun b_next!131427 () Bool)

(assert (=> b!4865754 (= b_free!130637 (not b_next!131427))))

(declare-fun tb!257697 () Bool)

(declare-fun t!363828 () Bool)

(assert (=> (and b!4865754 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717)))))) t!363828) tb!257697))

(declare-fun result!320822 () Bool)

(assert (= result!320822 result!320802))

(assert (=> d!1561766 t!363828))

(declare-fun b_and!342621 () Bool)

(declare-fun tp!1369207 () Bool)

(assert (=> b!4865754 (= tp!1369207 (and (=> t!363828 result!320822) b_and!342621))))

(declare-fun e!3042105 () Bool)

(assert (=> b!4865754 (= e!3042105 (and tp!1369206 tp!1369207))))

(declare-fun e!3042103 () Bool)

(declare-fun b!4865753 () Bool)

(declare-fun tp!1369205 () Bool)

(assert (=> b!4865753 (= e!3042103 (and tp!1369205 (inv!71833 (tag!8894 (h!62380 (t!363818 rules!1248)))) (inv!71838 (transformation!8030 (h!62380 (t!363818 rules!1248)))) e!3042105))))

(declare-fun b!4865752 () Bool)

(declare-fun e!3042104 () Bool)

(declare-fun tp!1369204 () Bool)

(assert (=> b!4865752 (= e!3042104 (and e!3042103 tp!1369204))))

(assert (=> b!4865488 (= tp!1369139 e!3042104)))

(assert (= b!4865753 b!4865754))

(assert (= b!4865752 b!4865753))

(assert (= (and b!4865488 ((_ is Cons!55932) (t!363818 rules!1248))) b!4865752))

(declare-fun m!5864162 () Bool)

(assert (=> b!4865753 m!5864162))

(declare-fun m!5864164 () Bool)

(assert (=> b!4865753 m!5864164))

(declare-fun tp!1369209 () Bool)

(declare-fun b!4865755 () Bool)

(declare-fun tp!1369208 () Bool)

(declare-fun e!3042108 () Bool)

(assert (=> b!4865755 (= e!3042108 (and (inv!71837 (left!40624 (c!827478 input!661))) tp!1369209 (inv!71837 (right!40954 (c!827478 input!661))) tp!1369208))))

(declare-fun b!4865757 () Bool)

(declare-fun e!3042107 () Bool)

(declare-fun tp!1369210 () Bool)

(assert (=> b!4865757 (= e!3042107 tp!1369210)))

(declare-fun b!4865756 () Bool)

(assert (=> b!4865756 (= e!3042108 (and (inv!71845 (xs!17875 (c!827478 input!661))) e!3042107))))

(assert (=> b!4865487 (= tp!1369141 (and (inv!71837 (c!827478 input!661)) e!3042108))))

(assert (= (and b!4865487 ((_ is Node!14569) (c!827478 input!661))) b!4865755))

(assert (= b!4865756 b!4865757))

(assert (= (and b!4865487 ((_ is Leaf!24295) (c!827478 input!661))) b!4865756))

(declare-fun m!5864166 () Bool)

(assert (=> b!4865755 m!5864166))

(declare-fun m!5864168 () Bool)

(assert (=> b!4865755 m!5864168))

(declare-fun m!5864170 () Bool)

(assert (=> b!4865756 m!5864170))

(assert (=> b!4865487 m!5863846))

(declare-fun b!4865769 () Bool)

(declare-fun e!3042111 () Bool)

(declare-fun tp!1369221 () Bool)

(declare-fun tp!1369222 () Bool)

(assert (=> b!4865769 (= e!3042111 (and tp!1369221 tp!1369222))))

(declare-fun b!4865768 () Bool)

(declare-fun tp_is_empty!35659 () Bool)

(assert (=> b!4865768 (= e!3042111 tp_is_empty!35659)))

(declare-fun b!4865770 () Bool)

(declare-fun tp!1369223 () Bool)

(assert (=> b!4865770 (= e!3042111 tp!1369223)))

(assert (=> b!4865478 (= tp!1369137 e!3042111)))

(declare-fun b!4865771 () Bool)

(declare-fun tp!1369224 () Bool)

(declare-fun tp!1369225 () Bool)

(assert (=> b!4865771 (= e!3042111 (and tp!1369224 tp!1369225))))

(assert (= (and b!4865478 ((_ is ElementMatch!13105) (regex!8030 (h!62380 rules!1248)))) b!4865768))

(assert (= (and b!4865478 ((_ is Concat!21446) (regex!8030 (h!62380 rules!1248)))) b!4865769))

(assert (= (and b!4865478 ((_ is Star!13105) (regex!8030 (h!62380 rules!1248)))) b!4865770))

(assert (= (and b!4865478 ((_ is Union!13105) (regex!8030 (h!62380 rules!1248)))) b!4865771))

(check-sat (not d!1561828) (not b!4865743) (not b!4865593) (not b!4865588) (not b!4865741) (not b!4865590) (not b!4865753) (not tb!257691) (not d!1561858) (not d!1561836) (not b!4865752) b_and!342621 (not b!4865684) (not b!4865723) (not b_next!131427) (not b!4865685) (not b!4865605) (not d!1561840) (not d!1561832) (not b!4865609) (not b!4865591) (not b!4865711) (not b!4865709) (not d!1561826) b_and!342611 (not d!1561818) (not b!4865604) (not b!4865487) (not b!4865721) (not b!4865707) (not d!1561816) (not d!1561850) (not b!4865732) (not b_next!131425) (not bm!337905) (not b!4865710) (not b!4865508) (not b!4865756) (not b!4865769) (not b!4865594) (not d!1561838) (not b!4865726) (not d!1561842) (not b!4865770) (not d!1561846) b_and!342607 (not b!4865486) (not d!1561822) (not b!4865729) (not d!1561848) (not b!4865690) (not d!1561834) (not b_next!131417) (not d!1561856) tp_is_empty!35659 (not b!4865742) (not d!1561814) (not b!4865714) (not b!4865686) (not d!1561772) (not b!4865713) (not d!1561854) (not b!4865755) (not b!4865727) (not b!4865708) (not b!4865771) (not b_lambda!193489) (not b!4865592) (not b!4865757) (not d!1561766) (not d!1561830) b_and!342619 (not b_next!131419))
(check-sat b_and!342621 (not b_next!131427) b_and!342611 (not b_next!131425) b_and!342607 (not b_next!131417) b_and!342619 (not b_next!131419))
(get-model)

(declare-fun d!1561862 () Bool)

(declare-fun lt!1993854 () Option!13777)

(assert (=> d!1561862 (= lt!1993854 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 input!661)))))

(declare-fun e!3042114 () Option!13777)

(assert (=> d!1561862 (= lt!1993854 e!3042114)))

(declare-fun c!827529 () Bool)

(assert (=> d!1561862 (= c!827529 (and ((_ is Cons!55932) rules!1248) ((_ is Nil!55932) (t!363818 rules!1248))))))

(declare-fun lt!1993853 () Unit!145938)

(declare-fun lt!1993852 () Unit!145938)

(assert (=> d!1561862 (= lt!1993853 lt!1993852)))

(assert (=> d!1561862 (isPrefix!4764 (list!17479 input!661) (list!17479 input!661))))

(assert (=> d!1561862 (= lt!1993852 (lemmaIsPrefixRefl!3161 (list!17479 input!661) (list!17479 input!661)))))

(assert (=> d!1561862 (rulesValidInductive!3019 thiss!11777 rules!1248)))

(assert (=> d!1561862 (= (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661)) lt!1993854)))

(declare-fun bm!337908 () Bool)

(declare-fun call!337913 () Option!13777)

(declare-fun maxPrefixOneRuleZipper!222 (LexerInterface!7622 Rule!15860 List!56055) Option!13777)

(assert (=> bm!337908 (= call!337913 (maxPrefixOneRuleZipper!222 thiss!11777 (h!62380 rules!1248) (list!17479 input!661)))))

(declare-fun b!4865776 () Bool)

(assert (=> b!4865776 (= e!3042114 call!337913)))

(declare-fun b!4865777 () Bool)

(declare-fun lt!1993855 () Option!13777)

(declare-fun lt!1993851 () Option!13777)

(assert (=> b!4865777 (= e!3042114 (ite (and ((_ is None!13776) lt!1993855) ((_ is None!13776) lt!1993851)) None!13776 (ite ((_ is None!13776) lt!1993851) lt!1993855 (ite ((_ is None!13776) lt!1993855) lt!1993851 (ite (>= (size!36854 (_1!33189 (v!49688 lt!1993855))) (size!36854 (_1!33189 (v!49688 lt!1993851)))) lt!1993855 lt!1993851)))))))

(assert (=> b!4865777 (= lt!1993855 call!337913)))

(assert (=> b!4865777 (= lt!1993851 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 input!661)))))

(assert (= (and d!1561862 c!827529) b!4865776))

(assert (= (and d!1561862 (not c!827529)) b!4865777))

(assert (= (or b!4865776 b!4865777) bm!337908))

(assert (=> d!1561862 m!5863822))

(assert (=> d!1561862 m!5864112))

(assert (=> d!1561862 m!5863822))

(assert (=> d!1561862 m!5863822))

(declare-fun m!5864172 () Bool)

(assert (=> d!1561862 m!5864172))

(assert (=> d!1561862 m!5863822))

(assert (=> d!1561862 m!5863822))

(declare-fun m!5864174 () Bool)

(assert (=> d!1561862 m!5864174))

(assert (=> d!1561862 m!5864116))

(assert (=> bm!337908 m!5863822))

(declare-fun m!5864176 () Bool)

(assert (=> bm!337908 m!5864176))

(assert (=> b!4865777 m!5863822))

(declare-fun m!5864178 () Bool)

(assert (=> b!4865777 m!5864178))

(assert (=> d!1561842 d!1561862))

(declare-fun d!1561864 () Bool)

(assert (=> d!1561864 true))

(declare-fun lt!1993944 () Bool)

(declare-fun lambda!243400 () Int)

(declare-fun forall!13047 (List!56056 Int) Bool)

(assert (=> d!1561864 (= lt!1993944 (forall!13047 rules!1248 lambda!243400))))

(declare-fun e!3042245 () Bool)

(assert (=> d!1561864 (= lt!1993944 e!3042245)))

(declare-fun res!2077253 () Bool)

(assert (=> d!1561864 (=> res!2077253 e!3042245)))

(assert (=> d!1561864 (= res!2077253 (not ((_ is Cons!55932) rules!1248)))))

(assert (=> d!1561864 (= (rulesValidInductive!3019 thiss!11777 rules!1248) lt!1993944)))

(declare-fun b!4866032 () Bool)

(declare-fun e!3042246 () Bool)

(assert (=> b!4866032 (= e!3042245 e!3042246)))

(declare-fun res!2077252 () Bool)

(assert (=> b!4866032 (=> (not res!2077252) (not e!3042246))))

(declare-fun ruleValid!3627 (LexerInterface!7622 Rule!15860) Bool)

(assert (=> b!4866032 (= res!2077252 (ruleValid!3627 thiss!11777 (h!62380 rules!1248)))))

(declare-fun b!4866033 () Bool)

(assert (=> b!4866033 (= e!3042246 (rulesValidInductive!3019 thiss!11777 (t!363818 rules!1248)))))

(assert (= (and d!1561864 (not res!2077253)) b!4866032))

(assert (= (and b!4866032 res!2077252) b!4866033))

(declare-fun m!5864498 () Bool)

(assert (=> d!1561864 m!5864498))

(declare-fun m!5864500 () Bool)

(assert (=> b!4866032 m!5864500))

(declare-fun m!5864502 () Bool)

(assert (=> b!4866033 m!5864502))

(assert (=> d!1561842 d!1561864))

(assert (=> d!1561842 d!1561850))

(declare-fun d!1561990 () Bool)

(declare-fun isEmpty!29923 (Option!13777) Bool)

(assert (=> d!1561990 (= (isDefined!10845 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661))) (not (isEmpty!29923 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661)))))))

(declare-fun bs!1174271 () Bool)

(assert (= bs!1174271 d!1561990))

(assert (=> bs!1174271 m!5864104))

(declare-fun m!5864504 () Bool)

(assert (=> bs!1174271 m!5864504))

(assert (=> d!1561842 d!1561990))

(declare-fun d!1561992 () Bool)

(assert (=> d!1561992 (isPrefix!4764 lt!1993828 lt!1993830)))

(declare-fun lt!1993947 () Unit!145938)

(declare-fun choose!35582 (List!56055 List!56055) Unit!145938)

(assert (=> d!1561992 (= lt!1993947 (choose!35582 lt!1993828 lt!1993830))))

(assert (=> d!1561992 (= (lemmaIsPrefixRefl!3161 lt!1993828 lt!1993830) lt!1993947)))

(declare-fun bs!1174272 () Bool)

(assert (= bs!1174272 d!1561992))

(assert (=> bs!1174272 m!5864122))

(declare-fun m!5864506 () Bool)

(assert (=> bs!1174272 m!5864506))

(assert (=> d!1561842 d!1561992))

(declare-fun d!1561994 () Bool)

(declare-fun e!3042253 () Bool)

(assert (=> d!1561994 e!3042253))

(declare-fun res!2077264 () Bool)

(assert (=> d!1561994 (=> res!2077264 e!3042253)))

(declare-fun lt!1993950 () Bool)

(assert (=> d!1561994 (= res!2077264 (not lt!1993950))))

(declare-fun e!3042254 () Bool)

(assert (=> d!1561994 (= lt!1993950 e!3042254)))

(declare-fun res!2077265 () Bool)

(assert (=> d!1561994 (=> res!2077265 e!3042254)))

(assert (=> d!1561994 (= res!2077265 ((_ is Nil!55931) lt!1993828))))

(assert (=> d!1561994 (= (isPrefix!4764 lt!1993828 lt!1993830) lt!1993950)))

(declare-fun b!4866047 () Bool)

(assert (=> b!4866047 (= e!3042253 (>= (size!36861 lt!1993830) (size!36861 lt!1993828)))))

(declare-fun b!4866046 () Bool)

(declare-fun e!3042255 () Bool)

(declare-fun tail!9557 (List!56055) List!56055)

(assert (=> b!4866046 (= e!3042255 (isPrefix!4764 (tail!9557 lt!1993828) (tail!9557 lt!1993830)))))

(declare-fun b!4866044 () Bool)

(assert (=> b!4866044 (= e!3042254 e!3042255)))

(declare-fun res!2077263 () Bool)

(assert (=> b!4866044 (=> (not res!2077263) (not e!3042255))))

(assert (=> b!4866044 (= res!2077263 (not ((_ is Nil!55931) lt!1993830)))))

(declare-fun b!4866045 () Bool)

(declare-fun res!2077262 () Bool)

(assert (=> b!4866045 (=> (not res!2077262) (not e!3042255))))

(declare-fun head!10411 (List!56055) C!26408)

(assert (=> b!4866045 (= res!2077262 (= (head!10411 lt!1993828) (head!10411 lt!1993830)))))

(assert (= (and d!1561994 (not res!2077265)) b!4866044))

(assert (= (and b!4866044 res!2077263) b!4866045))

(assert (= (and b!4866045 res!2077262) b!4866046))

(assert (= (and d!1561994 (not res!2077264)) b!4866047))

(declare-fun m!5864508 () Bool)

(assert (=> b!4866047 m!5864508))

(declare-fun m!5864510 () Bool)

(assert (=> b!4866047 m!5864510))

(declare-fun m!5864512 () Bool)

(assert (=> b!4866046 m!5864512))

(declare-fun m!5864514 () Bool)

(assert (=> b!4866046 m!5864514))

(assert (=> b!4866046 m!5864512))

(assert (=> b!4866046 m!5864514))

(declare-fun m!5864516 () Bool)

(assert (=> b!4866046 m!5864516))

(declare-fun m!5864518 () Bool)

(assert (=> b!4866045 m!5864518))

(declare-fun m!5864520 () Bool)

(assert (=> b!4866045 m!5864520))

(assert (=> d!1561842 d!1561994))

(declare-fun d!1561996 () Bool)

(declare-fun isEmpty!29924 (Option!13775) Bool)

(assert (=> d!1561996 (= (isDefined!10844 lt!1993832) (not (isEmpty!29924 lt!1993832)))))

(declare-fun bs!1174273 () Bool)

(assert (= bs!1174273 d!1561996))

(declare-fun m!5864522 () Bool)

(assert (=> bs!1174273 m!5864522))

(assert (=> d!1561842 d!1561996))

(declare-fun d!1561998 () Bool)

(declare-fun lt!1993953 () Int)

(assert (=> d!1561998 (>= lt!1993953 0)))

(declare-fun e!3042258 () Int)

(assert (=> d!1561998 (= lt!1993953 e!3042258)))

(declare-fun c!827595 () Bool)

(assert (=> d!1561998 (= c!827595 ((_ is Nil!55931) (list!17479 totalInput!332)))))

(assert (=> d!1561998 (= (size!36861 (list!17479 totalInput!332)) lt!1993953)))

(declare-fun b!4866052 () Bool)

(assert (=> b!4866052 (= e!3042258 0)))

(declare-fun b!4866053 () Bool)

(assert (=> b!4866053 (= e!3042258 (+ 1 (size!36861 (t!363817 (list!17479 totalInput!332)))))))

(assert (= (and d!1561998 c!827595) b!4866052))

(assert (= (and d!1561998 (not c!827595)) b!4866053))

(declare-fun m!5864524 () Bool)

(assert (=> b!4866053 m!5864524))

(assert (=> b!4865726 d!1561998))

(declare-fun d!1562000 () Bool)

(declare-fun lt!1993954 () Int)

(assert (=> d!1562000 (>= lt!1993954 0)))

(declare-fun e!3042259 () Int)

(assert (=> d!1562000 (= lt!1993954 e!3042259)))

(declare-fun c!827596 () Bool)

(assert (=> d!1562000 (= c!827596 ((_ is Nil!55931) lt!1993715))))

(assert (=> d!1562000 (= (size!36861 lt!1993715) lt!1993954)))

(declare-fun b!4866054 () Bool)

(assert (=> b!4866054 (= e!3042259 0)))

(declare-fun b!4866055 () Bool)

(assert (=> b!4866055 (= e!3042259 (+ 1 (size!36861 (t!363817 lt!1993715))))))

(assert (= (and d!1562000 c!827596) b!4866054))

(assert (= (and d!1562000 (not c!827596)) b!4866055))

(declare-fun m!5864526 () Bool)

(assert (=> b!4866055 m!5864526))

(assert (=> b!4865726 d!1562000))

(declare-fun d!1562002 () Bool)

(declare-fun res!2077272 () Bool)

(declare-fun e!3042262 () Bool)

(assert (=> d!1562002 (=> (not res!2077272) (not e!3042262))))

(assert (=> d!1562002 (= res!2077272 (= (csize!29368 (c!827478 input!661)) (+ (size!36864 (left!40624 (c!827478 input!661))) (size!36864 (right!40954 (c!827478 input!661))))))))

(assert (=> d!1562002 (= (inv!71843 (c!827478 input!661)) e!3042262)))

(declare-fun b!4866062 () Bool)

(declare-fun res!2077273 () Bool)

(assert (=> b!4866062 (=> (not res!2077273) (not e!3042262))))

(assert (=> b!4866062 (= res!2077273 (and (not (= (left!40624 (c!827478 input!661)) Empty!14569)) (not (= (right!40954 (c!827478 input!661)) Empty!14569))))))

(declare-fun b!4866063 () Bool)

(declare-fun res!2077274 () Bool)

(assert (=> b!4866063 (=> (not res!2077274) (not e!3042262))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1925 (Conc!14569) Int)

(assert (=> b!4866063 (= res!2077274 (= (cheight!14780 (c!827478 input!661)) (+ (max!0 (height!1925 (left!40624 (c!827478 input!661))) (height!1925 (right!40954 (c!827478 input!661)))) 1)))))

(declare-fun b!4866064 () Bool)

(assert (=> b!4866064 (= e!3042262 (<= 0 (cheight!14780 (c!827478 input!661))))))

(assert (= (and d!1562002 res!2077272) b!4866062))

(assert (= (and b!4866062 res!2077273) b!4866063))

(assert (= (and b!4866063 res!2077274) b!4866064))

(declare-fun m!5864528 () Bool)

(assert (=> d!1562002 m!5864528))

(declare-fun m!5864530 () Bool)

(assert (=> d!1562002 m!5864530))

(declare-fun m!5864532 () Bool)

(assert (=> b!4866063 m!5864532))

(declare-fun m!5864534 () Bool)

(assert (=> b!4866063 m!5864534))

(assert (=> b!4866063 m!5864532))

(assert (=> b!4866063 m!5864534))

(declare-fun m!5864536 () Bool)

(assert (=> b!4866063 m!5864536))

(assert (=> b!4865727 d!1562002))

(declare-fun d!1562004 () Bool)

(assert (=> d!1562004 (= (inv!71845 (xs!17875 (c!827478 input!661))) (<= (size!36861 (innerList!14657 (xs!17875 (c!827478 input!661)))) 2147483647))))

(declare-fun bs!1174274 () Bool)

(assert (= bs!1174274 d!1562004))

(declare-fun m!5864538 () Bool)

(assert (=> bs!1174274 m!5864538))

(assert (=> b!4865756 d!1562004))

(declare-fun b!4866067 () Bool)

(declare-fun res!2077275 () Bool)

(declare-fun e!3042263 () Bool)

(assert (=> b!4866067 (=> (not res!2077275) (not e!3042263))))

(declare-fun lt!1993955 () List!56055)

(assert (=> b!4866067 (= res!2077275 (= (size!36861 lt!1993955) (+ (size!36861 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) (size!36861 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4866065 () Bool)

(declare-fun e!3042264 () List!56055)

(assert (=> b!4866065 (= e!3042264 (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(declare-fun d!1562006 () Bool)

(assert (=> d!1562006 e!3042263))

(declare-fun res!2077276 () Bool)

(assert (=> d!1562006 (=> (not res!2077276) (not e!3042263))))

(assert (=> d!1562006 (= res!2077276 (= (content!9968 lt!1993955) ((_ map or) (content!9968 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) (content!9968 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562006 (= lt!1993955 e!3042264)))

(declare-fun c!827597 () Bool)

(assert (=> d!1562006 (= c!827597 ((_ is Nil!55931) (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562006 (= (++!12179 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))) (list!17479 (_2!33185 (v!49684 lt!1993717)))) lt!1993955)))

(declare-fun b!4866068 () Bool)

(assert (=> b!4866068 (= e!3042263 (or (not (= (list!17479 (_2!33185 (v!49684 lt!1993717))) Nil!55931)) (= lt!1993955 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4866066 () Bool)

(assert (=> b!4866066 (= e!3042264 (Cons!55931 (h!62379 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) (++!12179 (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) (list!17479 (_2!33185 (v!49684 lt!1993717))))))))

(assert (= (and d!1562006 c!827597) b!4866065))

(assert (= (and d!1562006 (not c!827597)) b!4866066))

(assert (= (and d!1562006 res!2077276) b!4866067))

(assert (= (and b!4866067 res!2077275) b!4866068))

(declare-fun m!5864540 () Bool)

(assert (=> b!4866067 m!5864540))

(declare-fun m!5864542 () Bool)

(assert (=> b!4866067 m!5864542))

(assert (=> b!4866067 m!5863836))

(assert (=> b!4866067 m!5864006))

(declare-fun m!5864544 () Bool)

(assert (=> d!1562006 m!5864544))

(declare-fun m!5864546 () Bool)

(assert (=> d!1562006 m!5864546))

(assert (=> d!1562006 m!5863836))

(assert (=> d!1562006 m!5864012))

(assert (=> b!4866066 m!5863836))

(declare-fun m!5864548 () Bool)

(assert (=> b!4866066 m!5864548))

(assert (=> b!4865604 d!1562006))

(declare-fun d!1562008 () Bool)

(assert (=> d!1562008 (= (list!17480 (_1!33187 lt!1993769)) (list!17484 (c!827480 (_1!33187 lt!1993769))))))

(declare-fun bs!1174275 () Bool)

(assert (= bs!1174275 d!1562008))

(declare-fun m!5864550 () Bool)

(assert (=> bs!1174275 m!5864550))

(assert (=> b!4865592 d!1562008))

(declare-fun b!4866070 () Bool)

(declare-fun e!3042266 () tuple2!59766)

(declare-fun lt!1993956 () Option!13777)

(declare-fun lt!1993957 () tuple2!59766)

(assert (=> b!4866070 (= e!3042266 (tuple2!59767 (Cons!55933 (_1!33189 (v!49688 lt!1993956)) (_1!33186 lt!1993957)) (_2!33186 lt!1993957)))))

(assert (=> b!4866070 (= lt!1993957 (lexList!2101 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1993956))))))

(declare-fun b!4866071 () Bool)

(declare-fun e!3042267 () Bool)

(declare-fun e!3042265 () Bool)

(assert (=> b!4866071 (= e!3042267 e!3042265)))

(declare-fun res!2077277 () Bool)

(declare-fun lt!1993958 () tuple2!59766)

(assert (=> b!4866071 (= res!2077277 (< (size!36861 (_2!33186 lt!1993958)) (size!36861 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))

(assert (=> b!4866071 (=> (not res!2077277) (not e!3042265))))

(declare-fun b!4866072 () Bool)

(assert (=> b!4866072 (= e!3042265 (not (isEmpty!29918 (_1!33186 lt!1993958))))))

(declare-fun b!4866073 () Bool)

(assert (=> b!4866073 (= e!3042266 (tuple2!59767 Nil!55933 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun b!4866069 () Bool)

(assert (=> b!4866069 (= e!3042267 (= (_2!33186 lt!1993958) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun d!1562010 () Bool)

(assert (=> d!1562010 e!3042267))

(declare-fun c!827599 () Bool)

(assert (=> d!1562010 (= c!827599 (> (size!36862 (_1!33186 lt!1993958)) 0))))

(assert (=> d!1562010 (= lt!1993958 e!3042266)))

(declare-fun c!827598 () Bool)

(assert (=> d!1562010 (= c!827598 ((_ is Some!13776) lt!1993956))))

(assert (=> d!1562010 (= lt!1993956 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(assert (=> d!1562010 (= (lexList!2101 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717)))) lt!1993958)))

(assert (= (and d!1562010 c!827598) b!4866070))

(assert (= (and d!1562010 (not c!827598)) b!4866073))

(assert (= (and d!1562010 c!827599) b!4866071))

(assert (= (and d!1562010 (not c!827599)) b!4866069))

(assert (= (and b!4866071 res!2077277) b!4866072))

(declare-fun m!5864552 () Bool)

(assert (=> b!4866070 m!5864552))

(declare-fun m!5864554 () Bool)

(assert (=> b!4866071 m!5864554))

(assert (=> b!4866071 m!5863836))

(assert (=> b!4866071 m!5864006))

(declare-fun m!5864556 () Bool)

(assert (=> b!4866072 m!5864556))

(declare-fun m!5864558 () Bool)

(assert (=> d!1562010 m!5864558))

(assert (=> d!1562010 m!5863836))

(declare-fun m!5864560 () Bool)

(assert (=> d!1562010 m!5864560))

(assert (=> b!4865592 d!1562010))

(assert (=> b!4865592 d!1561818))

(declare-fun b!4866083 () Bool)

(declare-fun e!3042272 () List!56055)

(declare-fun e!3042273 () List!56055)

(assert (=> b!4866083 (= e!3042272 e!3042273)))

(declare-fun c!827605 () Bool)

(assert (=> b!4866083 (= c!827605 ((_ is Leaf!24295) (c!827478 (_2!33187 lt!1993718))))))

(declare-fun b!4866085 () Bool)

(assert (=> b!4866085 (= e!3042273 (++!12179 (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993718)))) (list!17483 (right!40954 (c!827478 (_2!33187 lt!1993718))))))))

(declare-fun b!4866082 () Bool)

(assert (=> b!4866082 (= e!3042272 Nil!55931)))

(declare-fun d!1562012 () Bool)

(declare-fun c!827604 () Bool)

(assert (=> d!1562012 (= c!827604 ((_ is Empty!14569) (c!827478 (_2!33187 lt!1993718))))))

(assert (=> d!1562012 (= (list!17483 (c!827478 (_2!33187 lt!1993718))) e!3042272)))

(declare-fun b!4866084 () Bool)

(declare-fun list!17486 (IArray!29199) List!56055)

(assert (=> b!4866084 (= e!3042273 (list!17486 (xs!17875 (c!827478 (_2!33187 lt!1993718)))))))

(assert (= (and d!1562012 c!827604) b!4866082))

(assert (= (and d!1562012 (not c!827604)) b!4866083))

(assert (= (and b!4866083 c!827605) b!4866084))

(assert (= (and b!4866083 (not c!827605)) b!4866085))

(declare-fun m!5864562 () Bool)

(assert (=> b!4866085 m!5864562))

(declare-fun m!5864564 () Bool)

(assert (=> b!4866085 m!5864564))

(assert (=> b!4866085 m!5864562))

(assert (=> b!4866085 m!5864564))

(declare-fun m!5864566 () Bool)

(assert (=> b!4866085 m!5864566))

(declare-fun m!5864568 () Bool)

(assert (=> b!4866084 m!5864568))

(assert (=> d!1561828 d!1562012))

(declare-fun b!4866086 () Bool)

(declare-fun e!3042276 () Bool)

(declare-fun e!3042278 () Bool)

(assert (=> b!4866086 (= e!3042276 e!3042278)))

(declare-fun res!2077281 () Bool)

(assert (=> b!4866086 (=> (not res!2077281) (not e!3042278))))

(declare-fun lt!1993964 () Option!13775)

(assert (=> b!4866086 (= res!2077281 (= (_1!33185 (get!19222 lt!1993964)) (_1!33189 (get!19223 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 input!661))))))))

(declare-fun b!4866087 () Bool)

(declare-fun e!3042277 () Bool)

(declare-fun e!3042279 () Bool)

(assert (=> b!4866087 (= e!3042277 e!3042279)))

(declare-fun res!2077278 () Bool)

(assert (=> b!4866087 (=> (not res!2077278) (not e!3042279))))

(assert (=> b!4866087 (= res!2077278 (= (_1!33185 (get!19222 lt!1993964)) (_1!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 input!661))))))))

(declare-fun b!4866088 () Bool)

(declare-fun e!3042275 () Option!13775)

(declare-fun lt!1993965 () Option!13775)

(declare-fun lt!1993961 () Option!13775)

(assert (=> b!4866088 (= e!3042275 (ite (and ((_ is None!13774) lt!1993965) ((_ is None!13774) lt!1993961)) None!13774 (ite ((_ is None!13774) lt!1993961) lt!1993965 (ite ((_ is None!13774) lt!1993965) lt!1993961 (ite (>= (size!36854 (_1!33185 (v!49684 lt!1993965))) (size!36854 (_1!33185 (v!49684 lt!1993961)))) lt!1993965 lt!1993961)))))))

(declare-fun call!337925 () Option!13775)

(assert (=> b!4866088 (= lt!1993965 call!337925)))

(assert (=> b!4866088 (= lt!1993961 (maxPrefixZipperSequenceV2!627 thiss!11777 (t!363818 (t!363818 rules!1248)) input!661 totalInput!332))))

(declare-fun d!1562014 () Bool)

(declare-fun e!3042274 () Bool)

(assert (=> d!1562014 e!3042274))

(declare-fun res!2077283 () Bool)

(assert (=> d!1562014 (=> (not res!2077283) (not e!3042274))))

(assert (=> d!1562014 (= res!2077283 (= (isDefined!10844 lt!1993964) (isDefined!10845 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 input!661)))))))

(assert (=> d!1562014 (= lt!1993964 e!3042275)))

(declare-fun c!827606 () Bool)

(assert (=> d!1562014 (= c!827606 (and ((_ is Cons!55932) (t!363818 rules!1248)) ((_ is Nil!55932) (t!363818 (t!363818 rules!1248)))))))

(declare-fun lt!1993959 () Unit!145938)

(declare-fun lt!1993963 () Unit!145938)

(assert (=> d!1562014 (= lt!1993959 lt!1993963)))

(declare-fun lt!1993960 () List!56055)

(declare-fun lt!1993962 () List!56055)

(assert (=> d!1562014 (isPrefix!4764 lt!1993960 lt!1993962)))

(assert (=> d!1562014 (= lt!1993963 (lemmaIsPrefixRefl!3161 lt!1993960 lt!1993962))))

(assert (=> d!1562014 (= lt!1993962 (list!17479 input!661))))

(assert (=> d!1562014 (= lt!1993960 (list!17479 input!661))))

(assert (=> d!1562014 (rulesValidInductive!3019 thiss!11777 (t!363818 rules!1248))))

(assert (=> d!1562014 (= (maxPrefixZipperSequenceV2!627 thiss!11777 (t!363818 rules!1248) input!661 totalInput!332) lt!1993964)))

(declare-fun bm!337920 () Bool)

(assert (=> bm!337920 (= call!337925 (maxPrefixOneRuleZipperSequenceV2!256 thiss!11777 (h!62380 (t!363818 rules!1248)) input!661 totalInput!332))))

(declare-fun b!4866089 () Bool)

(assert (=> b!4866089 (= e!3042279 (= (list!17479 (_2!33185 (get!19222 lt!1993964))) (_2!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 input!661))))))))

(declare-fun b!4866090 () Bool)

(declare-fun res!2077280 () Bool)

(assert (=> b!4866090 (=> (not res!2077280) (not e!3042274))))

(assert (=> b!4866090 (= res!2077280 e!3042277)))

(declare-fun res!2077282 () Bool)

(assert (=> b!4866090 (=> res!2077282 e!3042277)))

(assert (=> b!4866090 (= res!2077282 (not (isDefined!10844 lt!1993964)))))

(declare-fun b!4866091 () Bool)

(assert (=> b!4866091 (= e!3042275 call!337925)))

(declare-fun b!4866092 () Bool)

(assert (=> b!4866092 (= e!3042278 (= (list!17479 (_2!33185 (get!19222 lt!1993964))) (_2!33189 (get!19223 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 input!661))))))))

(declare-fun b!4866093 () Bool)

(assert (=> b!4866093 (= e!3042274 e!3042276)))

(declare-fun res!2077279 () Bool)

(assert (=> b!4866093 (=> res!2077279 e!3042276)))

(assert (=> b!4866093 (= res!2077279 (not (isDefined!10844 lt!1993964)))))

(assert (= (and d!1562014 c!827606) b!4866091))

(assert (= (and d!1562014 (not c!827606)) b!4866088))

(assert (= (or b!4866091 b!4866088) bm!337920))

(assert (= (and d!1562014 res!2077283) b!4866090))

(assert (= (and b!4866090 (not res!2077282)) b!4866087))

(assert (= (and b!4866087 res!2077278) b!4866089))

(assert (= (and b!4866090 res!2077280) b!4866093))

(assert (= (and b!4866093 (not res!2077279)) b!4866086))

(assert (= (and b!4866086 res!2077281) b!4866092))

(declare-fun m!5864570 () Bool)

(assert (=> b!4866090 m!5864570))

(assert (=> b!4866089 m!5864178))

(declare-fun m!5864572 () Bool)

(assert (=> b!4866089 m!5864572))

(declare-fun m!5864574 () Bool)

(assert (=> b!4866089 m!5864574))

(declare-fun m!5864576 () Bool)

(assert (=> b!4866089 m!5864576))

(assert (=> b!4866089 m!5863822))

(assert (=> b!4866089 m!5864178))

(assert (=> b!4866089 m!5863822))

(assert (=> b!4866093 m!5864570))

(assert (=> b!4866086 m!5864574))

(assert (=> b!4866086 m!5863822))

(assert (=> b!4866086 m!5863822))

(declare-fun m!5864578 () Bool)

(assert (=> b!4866086 m!5864578))

(assert (=> b!4866086 m!5864578))

(declare-fun m!5864580 () Bool)

(assert (=> b!4866086 m!5864580))

(assert (=> d!1562014 m!5864502))

(assert (=> d!1562014 m!5863822))

(assert (=> d!1562014 m!5864178))

(assert (=> d!1562014 m!5864178))

(declare-fun m!5864582 () Bool)

(assert (=> d!1562014 m!5864582))

(declare-fun m!5864584 () Bool)

(assert (=> d!1562014 m!5864584))

(declare-fun m!5864586 () Bool)

(assert (=> d!1562014 m!5864586))

(assert (=> d!1562014 m!5863822))

(assert (=> d!1562014 m!5864570))

(declare-fun m!5864588 () Bool)

(assert (=> b!4866088 m!5864588))

(declare-fun m!5864590 () Bool)

(assert (=> bm!337920 m!5864590))

(assert (=> b!4866092 m!5864574))

(assert (=> b!4866092 m!5864576))

(assert (=> b!4866092 m!5864578))

(assert (=> b!4866092 m!5864580))

(assert (=> b!4866092 m!5863822))

(assert (=> b!4866092 m!5863822))

(assert (=> b!4866092 m!5864578))

(assert (=> b!4866087 m!5864574))

(assert (=> b!4866087 m!5863822))

(assert (=> b!4866087 m!5863822))

(assert (=> b!4866087 m!5864178))

(assert (=> b!4866087 m!5864178))

(assert (=> b!4866087 m!5864572))

(assert (=> b!4865709 d!1562014))

(declare-fun d!1562016 () Bool)

(declare-fun e!3042301 () Bool)

(assert (=> d!1562016 e!3042301))

(declare-fun res!2077294 () Bool)

(assert (=> d!1562016 (=> (not res!2077294) (not e!3042301))))

(declare-fun lt!1993988 () List!56055)

(assert (=> d!1562016 (= res!2077294 (= ((_ map implies) (content!9968 lt!1993988) (content!9968 (list!17479 totalInput!332))) ((as const (InoxSet C!26408)) true)))))

(declare-fun e!3042304 () List!56055)

(assert (=> d!1562016 (= lt!1993988 e!3042304)))

(declare-fun c!827617 () Bool)

(assert (=> d!1562016 (= c!827617 ((_ is Nil!55931) (list!17479 totalInput!332)))))

(assert (=> d!1562016 (= (drop!2200 (list!17479 totalInput!332) (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715))) lt!1993988)))

(declare-fun b!4866124 () Bool)

(declare-fun e!3042302 () Int)

(declare-fun call!337928 () Int)

(assert (=> b!4866124 (= e!3042302 call!337928)))

(declare-fun b!4866125 () Bool)

(assert (=> b!4866125 (= e!3042301 (= (size!36861 lt!1993988) e!3042302))))

(declare-fun c!827620 () Bool)

(assert (=> b!4866125 (= c!827620 (<= (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) 0))))

(declare-fun b!4866126 () Bool)

(assert (=> b!4866126 (= e!3042304 Nil!55931)))

(declare-fun b!4866127 () Bool)

(declare-fun e!3042300 () List!56055)

(assert (=> b!4866127 (= e!3042300 (drop!2200 (t!363817 (list!17479 totalInput!332)) (- (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) 1)))))

(declare-fun b!4866128 () Bool)

(assert (=> b!4866128 (= e!3042300 (list!17479 totalInput!332))))

(declare-fun b!4866129 () Bool)

(assert (=> b!4866129 (= e!3042304 e!3042300)))

(declare-fun c!827618 () Bool)

(assert (=> b!4866129 (= c!827618 (<= (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) 0))))

(declare-fun e!3042303 () Int)

(declare-fun b!4866130 () Bool)

(assert (=> b!4866130 (= e!3042303 (- call!337928 (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715))))))

(declare-fun b!4866131 () Bool)

(assert (=> b!4866131 (= e!3042303 0)))

(declare-fun b!4866132 () Bool)

(assert (=> b!4866132 (= e!3042302 e!3042303)))

(declare-fun c!827619 () Bool)

(assert (=> b!4866132 (= c!827619 (>= (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) call!337928))))

(declare-fun bm!337923 () Bool)

(assert (=> bm!337923 (= call!337928 (size!36861 (list!17479 totalInput!332)))))

(assert (= (and d!1562016 c!827617) b!4866126))

(assert (= (and d!1562016 (not c!827617)) b!4866129))

(assert (= (and b!4866129 c!827618) b!4866128))

(assert (= (and b!4866129 (not c!827618)) b!4866127))

(assert (= (and d!1562016 res!2077294) b!4866125))

(assert (= (and b!4866125 c!827620) b!4866124))

(assert (= (and b!4866125 (not c!827620)) b!4866132))

(assert (= (and b!4866132 c!827619) b!4866131))

(assert (= (and b!4866132 (not c!827619)) b!4866130))

(assert (= (or b!4866124 b!4866132 b!4866130) bm!337923))

(declare-fun m!5864592 () Bool)

(assert (=> d!1562016 m!5864592))

(assert (=> d!1562016 m!5863818))

(declare-fun m!5864594 () Bool)

(assert (=> d!1562016 m!5864594))

(declare-fun m!5864596 () Bool)

(assert (=> b!4866125 m!5864596))

(declare-fun m!5864598 () Bool)

(assert (=> b!4866127 m!5864598))

(assert (=> bm!337923 m!5863818))

(assert (=> bm!337923 m!5864132))

(assert (=> d!1561846 d!1562016))

(assert (=> d!1561846 d!1561998))

(assert (=> d!1561846 d!1562000))

(declare-fun d!1562018 () Bool)

(assert (=> d!1562018 (= (isEmpty!29918 (_1!33186 lt!1993806)) ((_ is Nil!55933) (_1!33186 lt!1993806)))))

(assert (=> b!4865686 d!1562018))

(declare-fun d!1562020 () Bool)

(declare-fun lt!1993989 () Bool)

(assert (=> d!1562020 (= lt!1993989 (isEmpty!29918 (list!17480 (_1!33187 lt!1993769))))))

(assert (=> d!1562020 (= lt!1993989 (isEmpty!29919 (c!827480 (_1!33187 lt!1993769))))))

(assert (=> d!1562020 (= (isEmpty!29915 (_1!33187 lt!1993769)) lt!1993989)))

(declare-fun bs!1174276 () Bool)

(assert (= bs!1174276 d!1562020))

(assert (=> bs!1174276 m!5863982))

(assert (=> bs!1174276 m!5863982))

(declare-fun m!5864600 () Bool)

(assert (=> bs!1174276 m!5864600))

(declare-fun m!5864602 () Bool)

(assert (=> bs!1174276 m!5864602))

(assert (=> b!4865594 d!1562020))

(declare-fun d!1562022 () Bool)

(declare-fun lt!1993990 () Int)

(assert (=> d!1562022 (>= lt!1993990 0)))

(declare-fun e!3042305 () Int)

(assert (=> d!1562022 (= lt!1993990 e!3042305)))

(declare-fun c!827621 () Bool)

(assert (=> d!1562022 (= c!827621 ((_ is Nil!55931) (list!17479 (_2!33187 lt!1993718))))))

(assert (=> d!1562022 (= (size!36861 (list!17479 (_2!33187 lt!1993718))) lt!1993990)))

(declare-fun b!4866133 () Bool)

(assert (=> b!4866133 (= e!3042305 0)))

(declare-fun b!4866134 () Bool)

(assert (=> b!4866134 (= e!3042305 (+ 1 (size!36861 (t!363817 (list!17479 (_2!33187 lt!1993718))))))))

(assert (= (and d!1562022 c!827621) b!4866133))

(assert (= (and d!1562022 (not c!827621)) b!4866134))

(declare-fun m!5864604 () Bool)

(assert (=> b!4866134 m!5864604))

(assert (=> d!1561856 d!1562022))

(assert (=> d!1561856 d!1561828))

(declare-fun d!1562024 () Bool)

(declare-fun lt!1993993 () Int)

(assert (=> d!1562024 (= lt!1993993 (size!36861 (list!17483 (c!827478 (_2!33187 lt!1993718)))))))

(assert (=> d!1562024 (= lt!1993993 (ite ((_ is Empty!14569) (c!827478 (_2!33187 lt!1993718))) 0 (ite ((_ is Leaf!24295) (c!827478 (_2!33187 lt!1993718))) (csize!29369 (c!827478 (_2!33187 lt!1993718))) (csize!29368 (c!827478 (_2!33187 lt!1993718))))))))

(assert (=> d!1562024 (= (size!36864 (c!827478 (_2!33187 lt!1993718))) lt!1993993)))

(declare-fun bs!1174277 () Bool)

(assert (= bs!1174277 d!1562024))

(assert (=> bs!1174277 m!5864028))

(assert (=> bs!1174277 m!5864028))

(declare-fun m!5864606 () Bool)

(assert (=> bs!1174277 m!5864606))

(assert (=> d!1561856 d!1562024))

(assert (=> b!4865710 d!1561862))

(declare-fun d!1562026 () Bool)

(assert (=> d!1562026 (= (get!19222 lt!1993832) (v!49684 lt!1993832))))

(assert (=> b!4865710 d!1562026))

(declare-fun d!1562028 () Bool)

(assert (=> d!1562028 (= (list!17479 (_2!33185 (get!19222 lt!1993832))) (list!17483 (c!827478 (_2!33185 (get!19222 lt!1993832)))))))

(declare-fun bs!1174278 () Bool)

(assert (= bs!1174278 d!1562028))

(declare-fun m!5864608 () Bool)

(assert (=> bs!1174278 m!5864608))

(assert (=> b!4865710 d!1562028))

(assert (=> b!4865710 d!1561850))

(declare-fun d!1562030 () Bool)

(assert (=> d!1562030 (= (get!19223 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661))) (v!49688 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661))))))

(assert (=> b!4865710 d!1562030))

(declare-fun d!1562032 () Bool)

(declare-fun lt!1994004 () Int)

(assert (=> d!1562032 (= lt!1994004 (size!36861 (list!17479 (_2!33187 lt!1993769))))))

(assert (=> d!1562032 (= lt!1994004 (size!36864 (c!827478 (_2!33187 lt!1993769))))))

(assert (=> d!1562032 (= (size!36855 (_2!33187 lt!1993769)) lt!1994004)))

(declare-fun bs!1174279 () Bool)

(assert (= bs!1174279 d!1562032))

(assert (=> bs!1174279 m!5863990))

(assert (=> bs!1174279 m!5863990))

(declare-fun m!5864610 () Bool)

(assert (=> bs!1174279 m!5864610))

(declare-fun m!5864612 () Bool)

(assert (=> bs!1174279 m!5864612))

(assert (=> b!4865590 d!1562032))

(declare-fun d!1562034 () Bool)

(declare-fun lt!1994005 () Int)

(assert (=> d!1562034 (= lt!1994005 (size!36861 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(assert (=> d!1562034 (= lt!1994005 (size!36864 (c!827478 (_2!33185 (v!49684 lt!1993717)))))))

(assert (=> d!1562034 (= (size!36855 (_2!33185 (v!49684 lt!1993717))) lt!1994005)))

(declare-fun bs!1174280 () Bool)

(assert (= bs!1174280 d!1562034))

(assert (=> bs!1174280 m!5863836))

(assert (=> bs!1174280 m!5863836))

(assert (=> bs!1174280 m!5864006))

(declare-fun m!5864614 () Bool)

(assert (=> bs!1174280 m!5864614))

(assert (=> b!4865590 d!1562034))

(assert (=> b!4865707 d!1562026))

(declare-fun d!1562036 () Bool)

(assert (=> d!1562036 (= (get!19223 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 input!661))) (v!49688 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 input!661))))))

(assert (=> b!4865707 d!1562036))

(declare-fun b!4866172 () Bool)

(declare-fun res!2077315 () Bool)

(declare-fun e!3042328 () Bool)

(assert (=> b!4866172 (=> (not res!2077315) (not e!3042328))))

(declare-fun lt!1994018 () Option!13777)

(declare-fun matchR!6490 (Regex!13105 List!56055) Bool)

(assert (=> b!4866172 (= res!2077315 (matchR!6490 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))))))

(declare-fun b!4866173 () Bool)

(declare-fun contains!19391 (List!56056 Rule!15860) Bool)

(assert (=> b!4866173 (= e!3042328 (contains!19391 rules!1248 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))))

(declare-fun b!4866174 () Bool)

(declare-fun res!2077317 () Bool)

(assert (=> b!4866174 (=> (not res!2077317) (not e!3042328))))

(assert (=> b!4866174 (= res!2077317 (< (size!36861 (_2!33189 (get!19223 lt!1994018))) (size!36861 (list!17479 input!661))))))

(declare-fun b!4866175 () Bool)

(declare-fun res!2077318 () Bool)

(assert (=> b!4866175 (=> (not res!2077318) (not e!3042328))))

(declare-fun apply!13500 (TokenValueInjection!15988 BalanceConc!28580) TokenValue!8340)

(declare-fun seqFromList!5896 (List!56055) BalanceConc!28580)

(assert (=> b!4866175 (= res!2077318 (= (value!257997 (_1!33189 (get!19223 lt!1994018))) (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994018)))))))))

(declare-fun b!4866176 () Bool)

(declare-fun res!2077316 () Bool)

(assert (=> b!4866176 (=> (not res!2077316) (not e!3042328))))

(assert (=> b!4866176 (= res!2077316 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018)))) (_2!33189 (get!19223 lt!1994018))) (list!17479 input!661)))))

(declare-fun bm!337926 () Bool)

(declare-fun call!337931 () Option!13777)

(declare-fun maxPrefixOneRule!3489 (LexerInterface!7622 Rule!15860 List!56055) Option!13777)

(assert (=> bm!337926 (= call!337931 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661)))))

(declare-fun b!4866178 () Bool)

(declare-fun res!2077319 () Bool)

(assert (=> b!4866178 (=> (not res!2077319) (not e!3042328))))

(assert (=> b!4866178 (= res!2077319 (= (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018)))) (originalCharacters!8353 (_1!33189 (get!19223 lt!1994018)))))))

(declare-fun b!4866179 () Bool)

(declare-fun e!3042327 () Bool)

(assert (=> b!4866179 (= e!3042327 e!3042328)))

(declare-fun res!2077320 () Bool)

(assert (=> b!4866179 (=> (not res!2077320) (not e!3042328))))

(assert (=> b!4866179 (= res!2077320 (isDefined!10845 lt!1994018))))

(declare-fun b!4866180 () Bool)

(declare-fun e!3042326 () Option!13777)

(assert (=> b!4866180 (= e!3042326 call!337931)))

(declare-fun b!4866177 () Bool)

(declare-fun lt!1994019 () Option!13777)

(declare-fun lt!1994020 () Option!13777)

(assert (=> b!4866177 (= e!3042326 (ite (and ((_ is None!13776) lt!1994019) ((_ is None!13776) lt!1994020)) None!13776 (ite ((_ is None!13776) lt!1994020) lt!1994019 (ite ((_ is None!13776) lt!1994019) lt!1994020 (ite (>= (size!36854 (_1!33189 (v!49688 lt!1994019))) (size!36854 (_1!33189 (v!49688 lt!1994020)))) lt!1994019 lt!1994020)))))))

(assert (=> b!4866177 (= lt!1994019 call!337931)))

(assert (=> b!4866177 (= lt!1994020 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 input!661)))))

(declare-fun d!1562038 () Bool)

(assert (=> d!1562038 e!3042327))

(declare-fun res!2077314 () Bool)

(assert (=> d!1562038 (=> res!2077314 e!3042327)))

(assert (=> d!1562038 (= res!2077314 (isEmpty!29923 lt!1994018))))

(assert (=> d!1562038 (= lt!1994018 e!3042326)))

(declare-fun c!827627 () Bool)

(assert (=> d!1562038 (= c!827627 (and ((_ is Cons!55932) rules!1248) ((_ is Nil!55932) (t!363818 rules!1248))))))

(declare-fun lt!1994021 () Unit!145938)

(declare-fun lt!1994017 () Unit!145938)

(assert (=> d!1562038 (= lt!1994021 lt!1994017)))

(assert (=> d!1562038 (isPrefix!4764 (list!17479 input!661) (list!17479 input!661))))

(assert (=> d!1562038 (= lt!1994017 (lemmaIsPrefixRefl!3161 (list!17479 input!661) (list!17479 input!661)))))

(assert (=> d!1562038 (rulesValidInductive!3019 thiss!11777 rules!1248)))

(assert (=> d!1562038 (= (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 input!661)) lt!1994018)))

(assert (= (and d!1562038 c!827627) b!4866180))

(assert (= (and d!1562038 (not c!827627)) b!4866177))

(assert (= (or b!4866180 b!4866177) bm!337926))

(assert (= (and d!1562038 (not res!2077314)) b!4866179))

(assert (= (and b!4866179 res!2077320) b!4866178))

(assert (= (and b!4866178 res!2077319) b!4866174))

(assert (= (and b!4866174 res!2077317) b!4866176))

(assert (= (and b!4866176 res!2077316) b!4866175))

(assert (= (and b!4866175 res!2077318) b!4866172))

(assert (= (and b!4866172 res!2077315) b!4866173))

(declare-fun m!5864672 () Bool)

(assert (=> b!4866175 m!5864672))

(declare-fun m!5864674 () Bool)

(assert (=> b!4866175 m!5864674))

(assert (=> b!4866175 m!5864674))

(declare-fun m!5864676 () Bool)

(assert (=> b!4866175 m!5864676))

(declare-fun m!5864678 () Bool)

(assert (=> b!4866179 m!5864678))

(assert (=> b!4866176 m!5864672))

(declare-fun m!5864680 () Bool)

(assert (=> b!4866176 m!5864680))

(assert (=> b!4866176 m!5864680))

(declare-fun m!5864682 () Bool)

(assert (=> b!4866176 m!5864682))

(assert (=> b!4866176 m!5864682))

(declare-fun m!5864684 () Bool)

(assert (=> b!4866176 m!5864684))

(assert (=> b!4866173 m!5864672))

(declare-fun m!5864686 () Bool)

(assert (=> b!4866173 m!5864686))

(assert (=> b!4866172 m!5864672))

(assert (=> b!4866172 m!5864680))

(assert (=> b!4866172 m!5864680))

(assert (=> b!4866172 m!5864682))

(assert (=> b!4866172 m!5864682))

(declare-fun m!5864688 () Bool)

(assert (=> b!4866172 m!5864688))

(assert (=> b!4866174 m!5864672))

(declare-fun m!5864690 () Bool)

(assert (=> b!4866174 m!5864690))

(assert (=> b!4866174 m!5863822))

(assert (=> b!4866174 m!5864152))

(assert (=> b!4866178 m!5864672))

(assert (=> b!4866178 m!5864680))

(assert (=> b!4866178 m!5864680))

(assert (=> b!4866178 m!5864682))

(assert (=> bm!337926 m!5863822))

(declare-fun m!5864692 () Bool)

(assert (=> bm!337926 m!5864692))

(assert (=> b!4866177 m!5863822))

(assert (=> b!4866177 m!5864578))

(declare-fun m!5864694 () Bool)

(assert (=> d!1562038 m!5864694))

(assert (=> d!1562038 m!5863822))

(assert (=> d!1562038 m!5863822))

(assert (=> d!1562038 m!5864172))

(assert (=> d!1562038 m!5863822))

(assert (=> d!1562038 m!5863822))

(assert (=> d!1562038 m!5864174))

(assert (=> d!1562038 m!5864116))

(assert (=> b!4865707 d!1562038))

(assert (=> b!4865707 d!1561850))

(declare-fun b!4866182 () Bool)

(declare-fun e!3042330 () tuple2!59766)

(declare-fun lt!1994022 () Option!13777)

(declare-fun lt!1994023 () tuple2!59766)

(assert (=> b!4866182 (= e!3042330 (tuple2!59767 (Cons!55933 (_1!33189 (v!49688 lt!1994022)) (_1!33186 lt!1994023)) (_2!33186 lt!1994023)))))

(assert (=> b!4866182 (= lt!1994023 (lexList!2101 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1994022))))))

(declare-fun b!4866183 () Bool)

(declare-fun e!3042331 () Bool)

(declare-fun e!3042329 () Bool)

(assert (=> b!4866183 (= e!3042331 e!3042329)))

(declare-fun res!2077321 () Bool)

(declare-fun lt!1994024 () tuple2!59766)

(assert (=> b!4866183 (= res!2077321 (< (size!36861 (_2!33186 lt!1994024)) (size!36861 (_2!33189 (v!49688 lt!1993804)))))))

(assert (=> b!4866183 (=> (not res!2077321) (not e!3042329))))

(declare-fun b!4866184 () Bool)

(assert (=> b!4866184 (= e!3042329 (not (isEmpty!29918 (_1!33186 lt!1994024))))))

(declare-fun b!4866185 () Bool)

(assert (=> b!4866185 (= e!3042330 (tuple2!59767 Nil!55933 (_2!33189 (v!49688 lt!1993804))))))

(declare-fun b!4866181 () Bool)

(assert (=> b!4866181 (= e!3042331 (= (_2!33186 lt!1994024) (_2!33189 (v!49688 lt!1993804))))))

(declare-fun d!1562050 () Bool)

(assert (=> d!1562050 e!3042331))

(declare-fun c!827629 () Bool)

(assert (=> d!1562050 (= c!827629 (> (size!36862 (_1!33186 lt!1994024)) 0))))

(assert (=> d!1562050 (= lt!1994024 e!3042330)))

(declare-fun c!827628 () Bool)

(assert (=> d!1562050 (= c!827628 ((_ is Some!13776) lt!1994022))))

(assert (=> d!1562050 (= lt!1994022 (maxPrefix!4547 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1993804))))))

(assert (=> d!1562050 (= (lexList!2101 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1993804))) lt!1994024)))

(assert (= (and d!1562050 c!827628) b!4866182))

(assert (= (and d!1562050 (not c!827628)) b!4866185))

(assert (= (and d!1562050 c!827629) b!4866183))

(assert (= (and d!1562050 (not c!827629)) b!4866181))

(assert (= (and b!4866183 res!2077321) b!4866184))

(declare-fun m!5864696 () Bool)

(assert (=> b!4866182 m!5864696))

(declare-fun m!5864698 () Bool)

(assert (=> b!4866183 m!5864698))

(declare-fun m!5864700 () Bool)

(assert (=> b!4866183 m!5864700))

(declare-fun m!5864702 () Bool)

(assert (=> b!4866184 m!5864702))

(declare-fun m!5864704 () Bool)

(assert (=> d!1562050 m!5864704))

(declare-fun m!5864706 () Bool)

(assert (=> d!1562050 m!5864706))

(assert (=> b!4865684 d!1562050))

(declare-fun d!1562052 () Bool)

(declare-fun c!827630 () Bool)

(assert (=> d!1562052 (= c!827630 ((_ is Node!14569) (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun e!3042332 () Bool)

(assert (=> d!1562052 (= (inv!71837 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) e!3042332)))

(declare-fun b!4866186 () Bool)

(assert (=> b!4866186 (= e!3042332 (inv!71843 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4866187 () Bool)

(declare-fun e!3042333 () Bool)

(assert (=> b!4866187 (= e!3042332 e!3042333)))

(declare-fun res!2077322 () Bool)

(assert (=> b!4866187 (= res!2077322 (not ((_ is Leaf!24295) (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (=> b!4866187 (=> res!2077322 e!3042333)))

(declare-fun b!4866188 () Bool)

(assert (=> b!4866188 (= e!3042333 (inv!71844 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))))

(assert (= (and d!1562052 c!827630) b!4866186))

(assert (= (and d!1562052 (not c!827630)) b!4866187))

(assert (= (and b!4866187 (not res!2077322)) b!4866188))

(declare-fun m!5864708 () Bool)

(assert (=> b!4866186 m!5864708))

(declare-fun m!5864710 () Bool)

(assert (=> b!4866188 m!5864710))

(assert (=> b!4865508 d!1562052))

(declare-fun d!1562054 () Bool)

(declare-fun lt!1994025 () Int)

(assert (=> d!1562054 (= lt!1994025 (size!36862 (list!17480 (_1!33187 lt!1993769))))))

(assert (=> d!1562054 (= lt!1994025 (size!36863 (c!827480 (_1!33187 lt!1993769))))))

(assert (=> d!1562054 (= (size!36856 (_1!33187 lt!1993769)) lt!1994025)))

(declare-fun bs!1174283 () Bool)

(assert (= bs!1174283 d!1562054))

(assert (=> bs!1174283 m!5863982))

(assert (=> bs!1174283 m!5863982))

(declare-fun m!5864712 () Bool)

(assert (=> bs!1174283 m!5864712))

(declare-fun m!5864714 () Bool)

(assert (=> bs!1174283 m!5864714))

(assert (=> d!1561772 d!1562054))

(declare-fun e!3042408 () Bool)

(declare-fun lt!1994078 () Option!13775)

(declare-fun b!4866314 () Bool)

(assert (=> b!4866314 (= e!3042408 (= (list!17479 (_2!33185 (get!19222 lt!1994078))) (_2!33189 (get!19223 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4866315 () Bool)

(declare-fun e!3042409 () Bool)

(assert (=> b!4866315 (= e!3042409 e!3042408)))

(declare-fun res!2077382 () Bool)

(assert (=> b!4866315 (=> (not res!2077382) (not e!3042408))))

(assert (=> b!4866315 (= res!2077382 (= (_1!33185 (get!19222 lt!1994078)) (_1!33189 (get!19223 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun d!1562056 () Bool)

(declare-fun e!3042411 () Bool)

(assert (=> d!1562056 e!3042411))

(declare-fun res!2077383 () Bool)

(assert (=> d!1562056 (=> (not res!2077383) (not e!3042411))))

(assert (=> d!1562056 (= res!2077383 (= (isDefined!10844 lt!1994078) (isDefined!10845 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(declare-fun e!3042410 () Option!13775)

(assert (=> d!1562056 (= lt!1994078 e!3042410)))

(declare-fun c!827642 () Bool)

(assert (=> d!1562056 (= c!827642 (and ((_ is Cons!55932) rules!1248) ((_ is Nil!55932) (t!363818 rules!1248))))))

(declare-fun lt!1994076 () Unit!145938)

(declare-fun lt!1994077 () Unit!145938)

(assert (=> d!1562056 (= lt!1994076 lt!1994077)))

(declare-fun lt!1994075 () List!56055)

(declare-fun lt!1994074 () List!56055)

(assert (=> d!1562056 (isPrefix!4764 lt!1994075 lt!1994074)))

(assert (=> d!1562056 (= lt!1994077 (lemmaIsPrefixRefl!3161 lt!1994075 lt!1994074))))

(assert (=> d!1562056 (= lt!1994074 (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(assert (=> d!1562056 (= lt!1994075 (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(assert (=> d!1562056 (rulesValidInductive!3019 thiss!11777 rules!1248)))

(assert (=> d!1562056 (= (maxPrefixZipperSequence!1223 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1993717))) lt!1994078)))

(declare-fun b!4866316 () Bool)

(declare-fun res!2077381 () Bool)

(assert (=> b!4866316 (=> (not res!2077381) (not e!3042411))))

(declare-fun e!3042407 () Bool)

(assert (=> b!4866316 (= res!2077381 e!3042407)))

(declare-fun res!2077380 () Bool)

(assert (=> b!4866316 (=> res!2077380 e!3042407)))

(assert (=> b!4866316 (= res!2077380 (not (isDefined!10844 lt!1994078)))))

(declare-fun b!4866317 () Bool)

(assert (=> b!4866317 (= e!3042411 e!3042409)))

(declare-fun res!2077378 () Bool)

(assert (=> b!4866317 (=> res!2077378 e!3042409)))

(assert (=> b!4866317 (= res!2077378 (not (isDefined!10844 lt!1994078)))))

(declare-fun b!4866318 () Bool)

(declare-fun e!3042406 () Bool)

(assert (=> b!4866318 (= e!3042407 e!3042406)))

(declare-fun res!2077379 () Bool)

(assert (=> b!4866318 (=> (not res!2077379) (not e!3042406))))

(assert (=> b!4866318 (= res!2077379 (= (_1!33185 (get!19222 lt!1994078)) (_1!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4866319 () Bool)

(declare-fun call!337937 () Option!13775)

(assert (=> b!4866319 (= e!3042410 call!337937)))

(declare-fun bm!337932 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!576 (LexerInterface!7622 Rule!15860 BalanceConc!28580) Option!13775)

(assert (=> bm!337932 (= call!337937 (maxPrefixOneRuleZipperSequence!576 thiss!11777 (h!62380 rules!1248) (_2!33185 (v!49684 lt!1993717))))))

(declare-fun b!4866320 () Bool)

(declare-fun lt!1994073 () Option!13775)

(declare-fun lt!1994079 () Option!13775)

(assert (=> b!4866320 (= e!3042410 (ite (and ((_ is None!13774) lt!1994073) ((_ is None!13774) lt!1994079)) None!13774 (ite ((_ is None!13774) lt!1994079) lt!1994073 (ite ((_ is None!13774) lt!1994073) lt!1994079 (ite (>= (size!36854 (_1!33185 (v!49684 lt!1994073))) (size!36854 (_1!33185 (v!49684 lt!1994079)))) lt!1994073 lt!1994079)))))))

(assert (=> b!4866320 (= lt!1994073 call!337937)))

(assert (=> b!4866320 (= lt!1994079 (maxPrefixZipperSequence!1223 thiss!11777 (t!363818 rules!1248) (_2!33185 (v!49684 lt!1993717))))))

(declare-fun b!4866321 () Bool)

(assert (=> b!4866321 (= e!3042406 (= (list!17479 (_2!33185 (get!19222 lt!1994078))) (_2!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562056 c!827642) b!4866319))

(assert (= (and d!1562056 (not c!827642)) b!4866320))

(assert (= (or b!4866319 b!4866320) bm!337932))

(assert (= (and d!1562056 res!2077383) b!4866316))

(assert (= (and b!4866316 (not res!2077380)) b!4866318))

(assert (= (and b!4866318 res!2077379) b!4866321))

(assert (= (and b!4866316 res!2077381) b!4866317))

(assert (= (and b!4866317 (not res!2077378)) b!4866315))

(assert (= (and b!4866315 res!2077382) b!4866314))

(declare-fun m!5864832 () Bool)

(assert (=> b!4866314 m!5864832))

(declare-fun m!5864834 () Bool)

(assert (=> b!4866314 m!5864834))

(assert (=> b!4866314 m!5864560))

(declare-fun m!5864836 () Bool)

(assert (=> b!4866314 m!5864836))

(assert (=> b!4866314 m!5863836))

(assert (=> b!4866314 m!5864560))

(assert (=> b!4866314 m!5863836))

(declare-fun m!5864838 () Bool)

(assert (=> b!4866317 m!5864838))

(declare-fun m!5864840 () Bool)

(assert (=> bm!337932 m!5864840))

(assert (=> b!4866318 m!5864832))

(assert (=> b!4866318 m!5863836))

(assert (=> b!4866318 m!5863836))

(declare-fun m!5864842 () Bool)

(assert (=> b!4866318 m!5864842))

(assert (=> b!4866318 m!5864842))

(declare-fun m!5864844 () Bool)

(assert (=> b!4866318 m!5864844))

(assert (=> b!4866315 m!5864832))

(assert (=> b!4866315 m!5863836))

(assert (=> b!4866315 m!5863836))

(assert (=> b!4866315 m!5864560))

(assert (=> b!4866315 m!5864560))

(assert (=> b!4866315 m!5864836))

(assert (=> b!4866321 m!5864832))

(assert (=> b!4866321 m!5863836))

(assert (=> b!4866321 m!5863836))

(assert (=> b!4866321 m!5864842))

(assert (=> b!4866321 m!5864834))

(assert (=> b!4866321 m!5864842))

(assert (=> b!4866321 m!5864844))

(assert (=> d!1562056 m!5864116))

(declare-fun m!5864846 () Bool)

(assert (=> d!1562056 m!5864846))

(assert (=> d!1562056 m!5863836))

(declare-fun m!5864848 () Bool)

(assert (=> d!1562056 m!5864848))

(assert (=> d!1562056 m!5864838))

(assert (=> d!1562056 m!5863836))

(assert (=> d!1562056 m!5864842))

(assert (=> d!1562056 m!5864842))

(declare-fun m!5864850 () Bool)

(assert (=> d!1562056 m!5864850))

(assert (=> b!4866316 m!5864838))

(declare-fun m!5864852 () Bool)

(assert (=> b!4866320 m!5864852))

(assert (=> d!1561772 d!1562056))

(assert (=> b!4865714 d!1561996))

(declare-fun d!1562076 () Bool)

(assert (=> d!1562076 (= (isEmpty!29918 (list!17480 lt!1993716)) ((_ is Nil!55933) (list!17480 lt!1993716)))))

(assert (=> d!1561822 d!1562076))

(assert (=> d!1561822 d!1561830))

(declare-fun d!1562078 () Bool)

(declare-fun lt!1994082 () Bool)

(assert (=> d!1562078 (= lt!1994082 (isEmpty!29918 (list!17484 (c!827480 lt!1993716))))))

(assert (=> d!1562078 (= lt!1994082 (= (size!36863 (c!827480 lt!1993716)) 0))))

(assert (=> d!1562078 (= (isEmpty!29919 (c!827480 lt!1993716)) lt!1994082)))

(declare-fun bs!1174285 () Bool)

(assert (= bs!1174285 d!1562078))

(assert (=> bs!1174285 m!5864030))

(assert (=> bs!1174285 m!5864030))

(declare-fun m!5864854 () Bool)

(assert (=> bs!1174285 m!5864854))

(assert (=> bs!1174285 m!5864088))

(assert (=> d!1561822 d!1562078))

(declare-fun b!4866323 () Bool)

(declare-fun e!3042412 () List!56055)

(declare-fun e!3042413 () List!56055)

(assert (=> b!4866323 (= e!3042412 e!3042413)))

(declare-fun c!827644 () Bool)

(assert (=> b!4866323 (= c!827644 ((_ is Leaf!24295) (c!827478 input!661)))))

(declare-fun b!4866325 () Bool)

(assert (=> b!4866325 (= e!3042413 (++!12179 (list!17483 (left!40624 (c!827478 input!661))) (list!17483 (right!40954 (c!827478 input!661)))))))

(declare-fun b!4866322 () Bool)

(assert (=> b!4866322 (= e!3042412 Nil!55931)))

(declare-fun d!1562080 () Bool)

(declare-fun c!827643 () Bool)

(assert (=> d!1562080 (= c!827643 ((_ is Empty!14569) (c!827478 input!661)))))

(assert (=> d!1562080 (= (list!17483 (c!827478 input!661)) e!3042412)))

(declare-fun b!4866324 () Bool)

(assert (=> b!4866324 (= e!3042413 (list!17486 (xs!17875 (c!827478 input!661))))))

(assert (= (and d!1562080 c!827643) b!4866322))

(assert (= (and d!1562080 (not c!827643)) b!4866323))

(assert (= (and b!4866323 c!827644) b!4866324))

(assert (= (and b!4866323 (not c!827644)) b!4866325))

(declare-fun m!5864856 () Bool)

(assert (=> b!4866325 m!5864856))

(declare-fun m!5864858 () Bool)

(assert (=> b!4866325 m!5864858))

(assert (=> b!4866325 m!5864856))

(assert (=> b!4866325 m!5864858))

(declare-fun m!5864860 () Bool)

(assert (=> b!4866325 m!5864860))

(declare-fun m!5864862 () Bool)

(assert (=> b!4866324 m!5864862))

(assert (=> d!1561850 d!1562080))

(assert (=> b!4865487 d!1561852))

(declare-fun d!1562082 () Bool)

(assert (=> d!1562082 (= (inv!71845 (xs!17875 (c!827478 totalInput!332))) (<= (size!36861 (innerList!14657 (xs!17875 (c!827478 totalInput!332)))) 2147483647))))

(declare-fun bs!1174286 () Bool)

(assert (= bs!1174286 d!1562082))

(declare-fun m!5864864 () Bool)

(assert (=> bs!1174286 m!5864864))

(assert (=> b!4865742 d!1562082))

(declare-fun d!1562084 () Bool)

(assert (=> d!1562084 (= (inv!71833 (tag!8894 (h!62380 (t!363818 rules!1248)))) (= (mod (str.len (value!257996 (tag!8894 (h!62380 (t!363818 rules!1248))))) 2) 0))))

(assert (=> b!4865753 d!1562084))

(declare-fun d!1562086 () Bool)

(declare-fun res!2077384 () Bool)

(declare-fun e!3042414 () Bool)

(assert (=> d!1562086 (=> (not res!2077384) (not e!3042414))))

(assert (=> d!1562086 (= res!2077384 (semiInverseModEq!3544 (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248))))))))

(assert (=> d!1562086 (= (inv!71838 (transformation!8030 (h!62380 (t!363818 rules!1248)))) e!3042414)))

(declare-fun b!4866326 () Bool)

(assert (=> b!4866326 (= e!3042414 (equivClasses!3423 (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248))))))))

(assert (= (and d!1562086 res!2077384) b!4866326))

(declare-fun m!5864866 () Bool)

(assert (=> d!1562086 m!5864866))

(declare-fun m!5864868 () Bool)

(assert (=> b!4866326 m!5864868))

(assert (=> b!4865753 d!1562086))

(declare-fun b!4866339 () Bool)

(declare-fun res!2077397 () Bool)

(declare-fun e!3042419 () Bool)

(assert (=> b!4866339 (=> (not res!2077397) (not e!3042419))))

(assert (=> b!4866339 (= res!2077397 (isBalanced!3953 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))

(declare-fun b!4866340 () Bool)

(assert (=> b!4866340 (= e!3042419 (not (isEmpty!29919 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4866341 () Bool)

(declare-fun res!2077400 () Bool)

(assert (=> b!4866341 (=> (not res!2077400) (not e!3042419))))

(declare-fun height!1926 (Conc!14570) Int)

(assert (=> b!4866341 (= res!2077400 (<= (- (height!1926 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) (height!1926 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))) 1))))

(declare-fun b!4866342 () Bool)

(declare-fun res!2077401 () Bool)

(assert (=> b!4866342 (=> (not res!2077401) (not e!3042419))))

(assert (=> b!4866342 (= res!2077401 (not (isEmpty!29919 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4866343 () Bool)

(declare-fun res!2077402 () Bool)

(assert (=> b!4866343 (=> (not res!2077402) (not e!3042419))))

(assert (=> b!4866343 (= res!2077402 (isBalanced!3953 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))

(declare-fun b!4866344 () Bool)

(declare-fun e!3042420 () Bool)

(assert (=> b!4866344 (= e!3042420 e!3042419)))

(declare-fun res!2077399 () Bool)

(assert (=> b!4866344 (=> (not res!2077399) (not e!3042419))))

(assert (=> b!4866344 (= res!2077399 (<= (- 1) (- (height!1926 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) (height!1926 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun d!1562088 () Bool)

(declare-fun res!2077398 () Bool)

(assert (=> d!1562088 (=> res!2077398 e!3042420)))

(assert (=> d!1562088 (= res!2077398 (not ((_ is Node!14570) (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))

(assert (=> d!1562088 (= (isBalanced!3953 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))) e!3042420)))

(assert (= (and d!1562088 (not res!2077398)) b!4866344))

(assert (= (and b!4866344 res!2077399) b!4866341))

(assert (= (and b!4866341 res!2077400) b!4866339))

(assert (= (and b!4866339 res!2077397) b!4866343))

(assert (= (and b!4866343 res!2077402) b!4866342))

(assert (= (and b!4866342 res!2077401) b!4866340))

(declare-fun m!5864870 () Bool)

(assert (=> b!4866341 m!5864870))

(declare-fun m!5864872 () Bool)

(assert (=> b!4866341 m!5864872))

(declare-fun m!5864874 () Bool)

(assert (=> b!4866340 m!5864874))

(assert (=> b!4866344 m!5864870))

(assert (=> b!4866344 m!5864872))

(declare-fun m!5864876 () Bool)

(assert (=> b!4866342 m!5864876))

(declare-fun m!5864878 () Bool)

(assert (=> b!4866339 m!5864878))

(declare-fun m!5864880 () Bool)

(assert (=> b!4866343 m!5864880))

(assert (=> d!1561836 d!1562088))

(declare-fun d!1562090 () Bool)

(declare-fun e!3042423 () Bool)

(assert (=> d!1562090 e!3042423))

(declare-fun res!2077405 () Bool)

(assert (=> d!1562090 (=> (not res!2077405) (not e!3042423))))

(declare-fun lt!1994085 () Conc!14570)

(assert (=> d!1562090 (= res!2077405 (isBalanced!3953 lt!1994085))))

(declare-fun ++!12181 (Conc!14570 Conc!14570) Conc!14570)

(declare-fun fill!220 (Int Token!14644) IArray!29201)

(assert (=> d!1562090 (= lt!1994085 (++!12181 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1) (c!827480 (_1!33187 lt!1993718))))))

(assert (=> d!1562090 (isBalanced!3953 (c!827480 (_1!33187 lt!1993718)))))

(assert (=> d!1562090 (= (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))) lt!1994085)))

(declare-fun b!4866347 () Bool)

(assert (=> b!4866347 (= e!3042423 (= (list!17484 lt!1994085) (Cons!55933 (_1!33185 (v!49684 lt!1993717)) (list!17484 (c!827480 (_1!33187 lt!1993718))))))))

(assert (= (and d!1562090 res!2077405) b!4866347))

(declare-fun m!5864882 () Bool)

(assert (=> d!1562090 m!5864882))

(declare-fun m!5864884 () Bool)

(assert (=> d!1562090 m!5864884))

(declare-fun m!5864886 () Bool)

(assert (=> d!1562090 m!5864886))

(declare-fun m!5864888 () Bool)

(assert (=> d!1562090 m!5864888))

(declare-fun m!5864890 () Bool)

(assert (=> b!4866347 m!5864890))

(declare-fun m!5864892 () Bool)

(assert (=> b!4866347 m!5864892))

(assert (=> d!1561836 d!1562090))

(declare-fun b!4866349 () Bool)

(declare-fun e!3042424 () List!56055)

(declare-fun e!3042425 () List!56055)

(assert (=> b!4866349 (= e!3042424 e!3042425)))

(declare-fun c!827646 () Bool)

(assert (=> b!4866349 (= c!827646 ((_ is Leaf!24295) (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))

(declare-fun b!4866351 () Bool)

(assert (=> b!4866351 (= e!3042425 (++!12179 (list!17483 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) (list!17483 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4866348 () Bool)

(assert (=> b!4866348 (= e!3042424 Nil!55931)))

(declare-fun d!1562092 () Bool)

(declare-fun c!827645 () Bool)

(assert (=> d!1562092 (= c!827645 ((_ is Empty!14569) (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))

(assert (=> d!1562092 (= (list!17483 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))) e!3042424)))

(declare-fun b!4866350 () Bool)

(assert (=> b!4866350 (= e!3042425 (list!17486 (xs!17875 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(assert (= (and d!1562092 c!827645) b!4866348))

(assert (= (and d!1562092 (not c!827645)) b!4866349))

(assert (= (and b!4866349 c!827646) b!4866350))

(assert (= (and b!4866349 (not c!827646)) b!4866351))

(declare-fun m!5864894 () Bool)

(assert (=> b!4866351 m!5864894))

(declare-fun m!5864896 () Bool)

(assert (=> b!4866351 m!5864896))

(assert (=> b!4866351 m!5864894))

(assert (=> b!4866351 m!5864896))

(declare-fun m!5864898 () Bool)

(assert (=> b!4866351 m!5864898))

(declare-fun m!5864900 () Bool)

(assert (=> b!4866350 m!5864900))

(assert (=> d!1561816 d!1562092))

(declare-fun d!1562094 () Bool)

(declare-fun res!2077410 () Bool)

(declare-fun e!3042428 () Bool)

(assert (=> d!1562094 (=> (not res!2077410) (not e!3042428))))

(assert (=> d!1562094 (= res!2077410 (<= (size!36861 (list!17486 (xs!17875 (c!827478 totalInput!332)))) 512))))

(assert (=> d!1562094 (= (inv!71844 (c!827478 totalInput!332)) e!3042428)))

(declare-fun b!4866356 () Bool)

(declare-fun res!2077411 () Bool)

(assert (=> b!4866356 (=> (not res!2077411) (not e!3042428))))

(assert (=> b!4866356 (= res!2077411 (= (csize!29369 (c!827478 totalInput!332)) (size!36861 (list!17486 (xs!17875 (c!827478 totalInput!332))))))))

(declare-fun b!4866357 () Bool)

(assert (=> b!4866357 (= e!3042428 (and (> (csize!29369 (c!827478 totalInput!332)) 0) (<= (csize!29369 (c!827478 totalInput!332)) 512)))))

(assert (= (and d!1562094 res!2077410) b!4866356))

(assert (= (and b!4866356 res!2077411) b!4866357))

(declare-fun m!5864902 () Bool)

(assert (=> d!1562094 m!5864902))

(assert (=> d!1562094 m!5864902))

(declare-fun m!5864904 () Bool)

(assert (=> d!1562094 m!5864904))

(assert (=> b!4866356 m!5864902))

(assert (=> b!4866356 m!5864902))

(assert (=> b!4866356 m!5864904))

(assert (=> b!4865723 d!1562094))

(declare-fun d!1562096 () Bool)

(declare-fun lt!1994088 () Int)

(assert (=> d!1562096 (>= lt!1994088 0)))

(declare-fun e!3042431 () Int)

(assert (=> d!1562096 (= lt!1994088 e!3042431)))

(declare-fun c!827649 () Bool)

(assert (=> d!1562096 (= c!827649 ((_ is Nil!55933) (list!17480 lt!1993716)))))

(assert (=> d!1562096 (= (size!36862 (list!17480 lt!1993716)) lt!1994088)))

(declare-fun b!4866362 () Bool)

(assert (=> b!4866362 (= e!3042431 0)))

(declare-fun b!4866363 () Bool)

(assert (=> b!4866363 (= e!3042431 (+ 1 (size!36862 (t!363819 (list!17480 lt!1993716)))))))

(assert (= (and d!1562096 c!827649) b!4866362))

(assert (= (and d!1562096 (not c!827649)) b!4866363))

(declare-fun m!5864906 () Bool)

(assert (=> b!4866363 m!5864906))

(assert (=> d!1561834 d!1562096))

(assert (=> d!1561834 d!1561830))

(declare-fun d!1562098 () Bool)

(declare-fun lt!1994091 () Int)

(assert (=> d!1562098 (= lt!1994091 (size!36862 (list!17484 (c!827480 lt!1993716))))))

(assert (=> d!1562098 (= lt!1994091 (ite ((_ is Empty!14570) (c!827480 lt!1993716)) 0 (ite ((_ is Leaf!24296) (c!827480 lt!1993716)) (csize!29371 (c!827480 lt!1993716)) (csize!29370 (c!827480 lt!1993716)))))))

(assert (=> d!1562098 (= (size!36863 (c!827480 lt!1993716)) lt!1994091)))

(declare-fun bs!1174287 () Bool)

(assert (= bs!1174287 d!1562098))

(assert (=> bs!1174287 m!5864030))

(assert (=> bs!1174287 m!5864030))

(declare-fun m!5864908 () Bool)

(assert (=> bs!1174287 m!5864908))

(assert (=> d!1561834 d!1562098))

(declare-fun d!1562100 () Bool)

(declare-fun e!3042432 () Bool)

(assert (=> d!1562100 e!3042432))

(declare-fun res!2077412 () Bool)

(assert (=> d!1562100 (=> (not res!2077412) (not e!3042432))))

(assert (=> d!1562100 (= res!2077412 (isBalanced!3953 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770)))))))

(declare-fun lt!1994092 () BalanceConc!28582)

(assert (=> d!1562100 (= lt!1994092 (BalanceConc!28583 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770)))))))

(assert (=> d!1562100 (= (prepend!1392 (_1!33187 lt!1993768) (_1!33185 (v!49684 lt!1993770))) lt!1994092)))

(declare-fun b!4866364 () Bool)

(assert (=> b!4866364 (= e!3042432 (= (list!17480 lt!1994092) (Cons!55933 (_1!33185 (v!49684 lt!1993770)) (list!17480 (_1!33187 lt!1993768)))))))

(assert (= (and d!1562100 res!2077412) b!4866364))

(declare-fun m!5864910 () Bool)

(assert (=> d!1562100 m!5864910))

(assert (=> d!1562100 m!5864910))

(declare-fun m!5864912 () Bool)

(assert (=> d!1562100 m!5864912))

(declare-fun m!5864914 () Bool)

(assert (=> b!4866364 m!5864914))

(declare-fun m!5864916 () Bool)

(assert (=> b!4866364 m!5864916))

(assert (=> b!4865588 d!1562100))

(declare-fun b!4866365 () Bool)

(declare-fun e!3042435 () tuple2!59768)

(declare-fun lt!1994093 () tuple2!59768)

(declare-fun lt!1994095 () Option!13775)

(assert (=> b!4866365 (= e!3042435 (tuple2!59769 (prepend!1392 (_1!33187 lt!1994093) (_1!33185 (v!49684 lt!1994095))) (_2!33187 lt!1994093)))))

(assert (=> b!4866365 (= lt!1994093 (lexRec!845 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1994095))))))

(declare-fun d!1562102 () Bool)

(declare-fun e!3042434 () Bool)

(assert (=> d!1562102 e!3042434))

(declare-fun res!2077414 () Bool)

(assert (=> d!1562102 (=> (not res!2077414) (not e!3042434))))

(declare-fun e!3042433 () Bool)

(assert (=> d!1562102 (= res!2077414 e!3042433)))

(declare-fun c!827650 () Bool)

(declare-fun lt!1994094 () tuple2!59768)

(assert (=> d!1562102 (= c!827650 (> (size!36856 (_1!33187 lt!1994094)) 0))))

(assert (=> d!1562102 (= lt!1994094 e!3042435)))

(declare-fun c!827651 () Bool)

(assert (=> d!1562102 (= c!827651 ((_ is Some!13774) lt!1994095))))

(assert (=> d!1562102 (= lt!1994095 (maxPrefixZipperSequence!1223 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1993770))))))

(assert (=> d!1562102 (= (lexRec!845 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1993770))) lt!1994094)))

(declare-fun b!4866366 () Bool)

(assert (=> b!4866366 (= e!3042435 (tuple2!59769 (BalanceConc!28583 Empty!14570) (_2!33185 (v!49684 lt!1993770))))))

(declare-fun b!4866367 () Bool)

(declare-fun e!3042436 () Bool)

(assert (=> b!4866367 (= e!3042433 e!3042436)))

(declare-fun res!2077413 () Bool)

(assert (=> b!4866367 (= res!2077413 (< (size!36855 (_2!33187 lt!1994094)) (size!36855 (_2!33185 (v!49684 lt!1993770)))))))

(assert (=> b!4866367 (=> (not res!2077413) (not e!3042436))))

(declare-fun b!4866368 () Bool)

(assert (=> b!4866368 (= e!3042433 (= (list!17479 (_2!33187 lt!1994094)) (list!17479 (_2!33185 (v!49684 lt!1993770)))))))

(declare-fun b!4866369 () Bool)

(declare-fun res!2077415 () Bool)

(assert (=> b!4866369 (=> (not res!2077415) (not e!3042434))))

(assert (=> b!4866369 (= res!2077415 (= (list!17480 (_1!33187 lt!1994094)) (_1!33186 (lexList!2101 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993770)))))))))

(declare-fun b!4866370 () Bool)

(assert (=> b!4866370 (= e!3042434 (= (list!17479 (_2!33187 lt!1994094)) (_2!33186 (lexList!2101 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993770)))))))))

(declare-fun b!4866371 () Bool)

(assert (=> b!4866371 (= e!3042436 (not (isEmpty!29915 (_1!33187 lt!1994094))))))

(assert (= (and d!1562102 c!827651) b!4866365))

(assert (= (and d!1562102 (not c!827651)) b!4866366))

(assert (= (and d!1562102 c!827650) b!4866367))

(assert (= (and d!1562102 (not c!827650)) b!4866368))

(assert (= (and b!4866367 res!2077413) b!4866371))

(assert (= (and d!1562102 res!2077414) b!4866369))

(assert (= (and b!4866369 res!2077415) b!4866370))

(declare-fun m!5864918 () Bool)

(assert (=> b!4866369 m!5864918))

(declare-fun m!5864920 () Bool)

(assert (=> b!4866369 m!5864920))

(assert (=> b!4866369 m!5864920))

(declare-fun m!5864922 () Bool)

(assert (=> b!4866369 m!5864922))

(declare-fun m!5864924 () Bool)

(assert (=> b!4866367 m!5864924))

(declare-fun m!5864926 () Bool)

(assert (=> b!4866367 m!5864926))

(declare-fun m!5864928 () Bool)

(assert (=> b!4866370 m!5864928))

(assert (=> b!4866370 m!5864920))

(assert (=> b!4866370 m!5864920))

(assert (=> b!4866370 m!5864922))

(declare-fun m!5864930 () Bool)

(assert (=> d!1562102 m!5864930))

(declare-fun m!5864932 () Bool)

(assert (=> d!1562102 m!5864932))

(declare-fun m!5864934 () Bool)

(assert (=> b!4866365 m!5864934))

(declare-fun m!5864936 () Bool)

(assert (=> b!4866365 m!5864936))

(declare-fun m!5864938 () Bool)

(assert (=> b!4866371 m!5864938))

(assert (=> b!4866368 m!5864928))

(assert (=> b!4866368 m!5864920))

(assert (=> b!4865588 d!1562102))

(declare-fun d!1562104 () Bool)

(declare-fun res!2077420 () Bool)

(declare-fun e!3042441 () Bool)

(assert (=> d!1562104 (=> res!2077420 e!3042441)))

(assert (=> d!1562104 (= res!2077420 ((_ is Nil!55932) rules!1248))))

(assert (=> d!1562104 (= (noDuplicateTag!3281 thiss!11777 rules!1248 Nil!55935) e!3042441)))

(declare-fun b!4866376 () Bool)

(declare-fun e!3042442 () Bool)

(assert (=> b!4866376 (= e!3042441 e!3042442)))

(declare-fun res!2077421 () Bool)

(assert (=> b!4866376 (=> (not res!2077421) (not e!3042442))))

(declare-fun contains!19392 (List!56059 String!63118) Bool)

(assert (=> b!4866376 (= res!2077421 (not (contains!19392 Nil!55935 (tag!8894 (h!62380 rules!1248)))))))

(declare-fun b!4866377 () Bool)

(assert (=> b!4866377 (= e!3042442 (noDuplicateTag!3281 thiss!11777 (t!363818 rules!1248) (Cons!55935 (tag!8894 (h!62380 rules!1248)) Nil!55935)))))

(assert (= (and d!1562104 (not res!2077420)) b!4866376))

(assert (= (and b!4866376 res!2077421) b!4866377))

(declare-fun m!5864940 () Bool)

(assert (=> b!4866376 m!5864940))

(declare-fun m!5864942 () Bool)

(assert (=> b!4866377 m!5864942))

(assert (=> b!4865732 d!1562104))

(declare-fun d!1562106 () Bool)

(declare-fun c!827652 () Bool)

(assert (=> d!1562106 (= c!827652 ((_ is Node!14569) (left!40624 (c!827478 input!661))))))

(declare-fun e!3042443 () Bool)

(assert (=> d!1562106 (= (inv!71837 (left!40624 (c!827478 input!661))) e!3042443)))

(declare-fun b!4866378 () Bool)

(assert (=> b!4866378 (= e!3042443 (inv!71843 (left!40624 (c!827478 input!661))))))

(declare-fun b!4866379 () Bool)

(declare-fun e!3042444 () Bool)

(assert (=> b!4866379 (= e!3042443 e!3042444)))

(declare-fun res!2077422 () Bool)

(assert (=> b!4866379 (= res!2077422 (not ((_ is Leaf!24295) (left!40624 (c!827478 input!661)))))))

(assert (=> b!4866379 (=> res!2077422 e!3042444)))

(declare-fun b!4866380 () Bool)

(assert (=> b!4866380 (= e!3042444 (inv!71844 (left!40624 (c!827478 input!661))))))

(assert (= (and d!1562106 c!827652) b!4866378))

(assert (= (and d!1562106 (not c!827652)) b!4866379))

(assert (= (and b!4866379 (not res!2077422)) b!4866380))

(declare-fun m!5864944 () Bool)

(assert (=> b!4866378 m!5864944))

(declare-fun m!5864946 () Bool)

(assert (=> b!4866380 m!5864946))

(assert (=> b!4865755 d!1562106))

(declare-fun d!1562108 () Bool)

(declare-fun c!827653 () Bool)

(assert (=> d!1562108 (= c!827653 ((_ is Node!14569) (right!40954 (c!827478 input!661))))))

(declare-fun e!3042445 () Bool)

(assert (=> d!1562108 (= (inv!71837 (right!40954 (c!827478 input!661))) e!3042445)))

(declare-fun b!4866381 () Bool)

(assert (=> b!4866381 (= e!3042445 (inv!71843 (right!40954 (c!827478 input!661))))))

(declare-fun b!4866382 () Bool)

(declare-fun e!3042446 () Bool)

(assert (=> b!4866382 (= e!3042445 e!3042446)))

(declare-fun res!2077423 () Bool)

(assert (=> b!4866382 (= res!2077423 (not ((_ is Leaf!24295) (right!40954 (c!827478 input!661)))))))

(assert (=> b!4866382 (=> res!2077423 e!3042446)))

(declare-fun b!4866383 () Bool)

(assert (=> b!4866383 (= e!3042446 (inv!71844 (right!40954 (c!827478 input!661))))))

(assert (= (and d!1562108 c!827653) b!4866381))

(assert (= (and d!1562108 (not c!827653)) b!4866382))

(assert (= (and b!4866382 (not res!2077423)) b!4866383))

(declare-fun m!5864948 () Bool)

(assert (=> b!4866381 m!5864948))

(declare-fun m!5864950 () Bool)

(assert (=> b!4866383 m!5864950))

(assert (=> b!4865755 d!1562108))

(declare-fun b!4866396 () Bool)

(declare-fun e!3042452 () Bool)

(declare-fun isEmpty!29927 (Conc!14569) Bool)

(assert (=> b!4866396 (= e!3042452 (not (isEmpty!29927 (right!40954 (c!827478 totalInput!332)))))))

(declare-fun b!4866397 () Bool)

(declare-fun res!2077441 () Bool)

(assert (=> b!4866397 (=> (not res!2077441) (not e!3042452))))

(assert (=> b!4866397 (= res!2077441 (isBalanced!3954 (right!40954 (c!827478 totalInput!332))))))

(declare-fun b!4866398 () Bool)

(declare-fun res!2077439 () Bool)

(assert (=> b!4866398 (=> (not res!2077439) (not e!3042452))))

(assert (=> b!4866398 (= res!2077439 (isBalanced!3954 (left!40624 (c!827478 totalInput!332))))))

(declare-fun b!4866399 () Bool)

(declare-fun res!2077438 () Bool)

(assert (=> b!4866399 (=> (not res!2077438) (not e!3042452))))

(assert (=> b!4866399 (= res!2077438 (not (isEmpty!29927 (left!40624 (c!827478 totalInput!332)))))))

(declare-fun d!1562110 () Bool)

(declare-fun res!2077436 () Bool)

(declare-fun e!3042451 () Bool)

(assert (=> d!1562110 (=> res!2077436 e!3042451)))

(assert (=> d!1562110 (= res!2077436 (not ((_ is Node!14569) (c!827478 totalInput!332))))))

(assert (=> d!1562110 (= (isBalanced!3954 (c!827478 totalInput!332)) e!3042451)))

(declare-fun b!4866400 () Bool)

(assert (=> b!4866400 (= e!3042451 e!3042452)))

(declare-fun res!2077437 () Bool)

(assert (=> b!4866400 (=> (not res!2077437) (not e!3042452))))

(assert (=> b!4866400 (= res!2077437 (<= (- 1) (- (height!1925 (left!40624 (c!827478 totalInput!332))) (height!1925 (right!40954 (c!827478 totalInput!332))))))))

(declare-fun b!4866401 () Bool)

(declare-fun res!2077440 () Bool)

(assert (=> b!4866401 (=> (not res!2077440) (not e!3042452))))

(assert (=> b!4866401 (= res!2077440 (<= (- (height!1925 (left!40624 (c!827478 totalInput!332))) (height!1925 (right!40954 (c!827478 totalInput!332)))) 1))))

(assert (= (and d!1562110 (not res!2077436)) b!4866400))

(assert (= (and b!4866400 res!2077437) b!4866401))

(assert (= (and b!4866401 res!2077440) b!4866398))

(assert (= (and b!4866398 res!2077439) b!4866397))

(assert (= (and b!4866397 res!2077441) b!4866399))

(assert (= (and b!4866399 res!2077438) b!4866396))

(declare-fun m!5864952 () Bool)

(assert (=> b!4866400 m!5864952))

(declare-fun m!5864954 () Bool)

(assert (=> b!4866400 m!5864954))

(declare-fun m!5864956 () Bool)

(assert (=> b!4866398 m!5864956))

(declare-fun m!5864958 () Bool)

(assert (=> b!4866399 m!5864958))

(declare-fun m!5864960 () Bool)

(assert (=> b!4866397 m!5864960))

(assert (=> b!4866401 m!5864952))

(assert (=> b!4866401 m!5864954))

(declare-fun m!5864962 () Bool)

(assert (=> b!4866396 m!5864962))

(assert (=> d!1561838 d!1562110))

(declare-fun b!4866403 () Bool)

(declare-fun e!3042453 () List!56055)

(declare-fun e!3042454 () List!56055)

(assert (=> b!4866403 (= e!3042453 e!3042454)))

(declare-fun c!827655 () Bool)

(assert (=> b!4866403 (= c!827655 ((_ is Leaf!24295) (c!827478 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun b!4866405 () Bool)

(assert (=> b!4866405 (= e!3042454 (++!12179 (list!17483 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717))))) (list!17483 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4866402 () Bool)

(assert (=> b!4866402 (= e!3042453 Nil!55931)))

(declare-fun d!1562112 () Bool)

(declare-fun c!827654 () Bool)

(assert (=> d!1562112 (= c!827654 ((_ is Empty!14569) (c!827478 (_2!33185 (v!49684 lt!1993717)))))))

(assert (=> d!1562112 (= (list!17483 (c!827478 (_2!33185 (v!49684 lt!1993717)))) e!3042453)))

(declare-fun b!4866404 () Bool)

(assert (=> b!4866404 (= e!3042454 (list!17486 (xs!17875 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))

(assert (= (and d!1562112 c!827654) b!4866402))

(assert (= (and d!1562112 (not c!827654)) b!4866403))

(assert (= (and b!4866403 c!827655) b!4866404))

(assert (= (and b!4866403 (not c!827655)) b!4866405))

(declare-fun m!5864964 () Bool)

(assert (=> b!4866405 m!5864964))

(declare-fun m!5864966 () Bool)

(assert (=> b!4866405 m!5864966))

(assert (=> b!4866405 m!5864964))

(assert (=> b!4866405 m!5864966))

(declare-fun m!5864968 () Bool)

(assert (=> b!4866405 m!5864968))

(declare-fun m!5864970 () Bool)

(assert (=> b!4866404 m!5864970))

(assert (=> d!1561818 d!1562112))

(declare-fun d!1562114 () Bool)

(declare-fun lt!1994096 () Int)

(assert (=> d!1562114 (>= lt!1994096 0)))

(declare-fun e!3042455 () Int)

(assert (=> d!1562114 (= lt!1994096 e!3042455)))

(declare-fun c!827656 () Bool)

(assert (=> d!1562114 (= c!827656 ((_ is Nil!55933) (_1!33186 lt!1993806)))))

(assert (=> d!1562114 (= (size!36862 (_1!33186 lt!1993806)) lt!1994096)))

(declare-fun b!4866406 () Bool)

(assert (=> b!4866406 (= e!3042455 0)))

(declare-fun b!4866407 () Bool)

(assert (=> b!4866407 (= e!3042455 (+ 1 (size!36862 (t!363819 (_1!33186 lt!1993806)))))))

(assert (= (and d!1562114 c!827656) b!4866406))

(assert (= (and d!1562114 (not c!827656)) b!4866407))

(declare-fun m!5864972 () Bool)

(assert (=> b!4866407 m!5864972))

(assert (=> d!1561832 d!1562114))

(declare-fun b!4866408 () Bool)

(declare-fun res!2077443 () Bool)

(declare-fun e!3042458 () Bool)

(assert (=> b!4866408 (=> (not res!2077443) (not e!3042458))))

(declare-fun lt!1994098 () Option!13777)

(assert (=> b!4866408 (= res!2077443 (matchR!6490 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))))))

(declare-fun b!4866409 () Bool)

(assert (=> b!4866409 (= e!3042458 (contains!19391 rules!1248 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))))

(declare-fun b!4866410 () Bool)

(declare-fun res!2077445 () Bool)

(assert (=> b!4866410 (=> (not res!2077445) (not e!3042458))))

(assert (=> b!4866410 (= res!2077445 (< (size!36861 (_2!33189 (get!19223 lt!1994098))) (size!36861 lt!1993715)))))

(declare-fun b!4866411 () Bool)

(declare-fun res!2077446 () Bool)

(assert (=> b!4866411 (=> (not res!2077446) (not e!3042458))))

(assert (=> b!4866411 (= res!2077446 (= (value!257997 (_1!33189 (get!19223 lt!1994098))) (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994098)))))))))

(declare-fun b!4866412 () Bool)

(declare-fun res!2077444 () Bool)

(assert (=> b!4866412 (=> (not res!2077444) (not e!3042458))))

(assert (=> b!4866412 (= res!2077444 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098)))) (_2!33189 (get!19223 lt!1994098))) lt!1993715))))

(declare-fun bm!337933 () Bool)

(declare-fun call!337938 () Option!13777)

(assert (=> bm!337933 (= call!337938 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) lt!1993715))))

(declare-fun b!4866414 () Bool)

(declare-fun res!2077447 () Bool)

(assert (=> b!4866414 (=> (not res!2077447) (not e!3042458))))

(assert (=> b!4866414 (= res!2077447 (= (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098)))) (originalCharacters!8353 (_1!33189 (get!19223 lt!1994098)))))))

(declare-fun b!4866415 () Bool)

(declare-fun e!3042457 () Bool)

(assert (=> b!4866415 (= e!3042457 e!3042458)))

(declare-fun res!2077448 () Bool)

(assert (=> b!4866415 (=> (not res!2077448) (not e!3042458))))

(assert (=> b!4866415 (= res!2077448 (isDefined!10845 lt!1994098))))

(declare-fun b!4866416 () Bool)

(declare-fun e!3042456 () Option!13777)

(assert (=> b!4866416 (= e!3042456 call!337938)))

(declare-fun b!4866413 () Bool)

(declare-fun lt!1994099 () Option!13777)

(declare-fun lt!1994100 () Option!13777)

(assert (=> b!4866413 (= e!3042456 (ite (and ((_ is None!13776) lt!1994099) ((_ is None!13776) lt!1994100)) None!13776 (ite ((_ is None!13776) lt!1994100) lt!1994099 (ite ((_ is None!13776) lt!1994099) lt!1994100 (ite (>= (size!36854 (_1!33189 (v!49688 lt!1994099))) (size!36854 (_1!33189 (v!49688 lt!1994100)))) lt!1994099 lt!1994100)))))))

(assert (=> b!4866413 (= lt!1994099 call!337938)))

(assert (=> b!4866413 (= lt!1994100 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) lt!1993715))))

(declare-fun d!1562116 () Bool)

(assert (=> d!1562116 e!3042457))

(declare-fun res!2077442 () Bool)

(assert (=> d!1562116 (=> res!2077442 e!3042457)))

(assert (=> d!1562116 (= res!2077442 (isEmpty!29923 lt!1994098))))

(assert (=> d!1562116 (= lt!1994098 e!3042456)))

(declare-fun c!827657 () Bool)

(assert (=> d!1562116 (= c!827657 (and ((_ is Cons!55932) rules!1248) ((_ is Nil!55932) (t!363818 rules!1248))))))

(declare-fun lt!1994101 () Unit!145938)

(declare-fun lt!1994097 () Unit!145938)

(assert (=> d!1562116 (= lt!1994101 lt!1994097)))

(assert (=> d!1562116 (isPrefix!4764 lt!1993715 lt!1993715)))

(assert (=> d!1562116 (= lt!1994097 (lemmaIsPrefixRefl!3161 lt!1993715 lt!1993715))))

(assert (=> d!1562116 (rulesValidInductive!3019 thiss!11777 rules!1248)))

(assert (=> d!1562116 (= (maxPrefix!4547 thiss!11777 rules!1248 lt!1993715) lt!1994098)))

(assert (= (and d!1562116 c!827657) b!4866416))

(assert (= (and d!1562116 (not c!827657)) b!4866413))

(assert (= (or b!4866416 b!4866413) bm!337933))

(assert (= (and d!1562116 (not res!2077442)) b!4866415))

(assert (= (and b!4866415 res!2077448) b!4866414))

(assert (= (and b!4866414 res!2077447) b!4866410))

(assert (= (and b!4866410 res!2077445) b!4866412))

(assert (= (and b!4866412 res!2077444) b!4866411))

(assert (= (and b!4866411 res!2077446) b!4866408))

(assert (= (and b!4866408 res!2077443) b!4866409))

(declare-fun m!5864974 () Bool)

(assert (=> b!4866411 m!5864974))

(declare-fun m!5864976 () Bool)

(assert (=> b!4866411 m!5864976))

(assert (=> b!4866411 m!5864976))

(declare-fun m!5864978 () Bool)

(assert (=> b!4866411 m!5864978))

(declare-fun m!5864980 () Bool)

(assert (=> b!4866415 m!5864980))

(assert (=> b!4866412 m!5864974))

(declare-fun m!5864982 () Bool)

(assert (=> b!4866412 m!5864982))

(assert (=> b!4866412 m!5864982))

(declare-fun m!5864984 () Bool)

(assert (=> b!4866412 m!5864984))

(assert (=> b!4866412 m!5864984))

(declare-fun m!5864986 () Bool)

(assert (=> b!4866412 m!5864986))

(assert (=> b!4866409 m!5864974))

(declare-fun m!5864988 () Bool)

(assert (=> b!4866409 m!5864988))

(assert (=> b!4866408 m!5864974))

(assert (=> b!4866408 m!5864982))

(assert (=> b!4866408 m!5864982))

(assert (=> b!4866408 m!5864984))

(assert (=> b!4866408 m!5864984))

(declare-fun m!5864990 () Bool)

(assert (=> b!4866408 m!5864990))

(assert (=> b!4866410 m!5864974))

(declare-fun m!5864992 () Bool)

(assert (=> b!4866410 m!5864992))

(assert (=> b!4866410 m!5864078))

(assert (=> b!4866414 m!5864974))

(assert (=> b!4866414 m!5864982))

(assert (=> b!4866414 m!5864982))

(assert (=> b!4866414 m!5864984))

(declare-fun m!5864994 () Bool)

(assert (=> bm!337933 m!5864994))

(declare-fun m!5864996 () Bool)

(assert (=> b!4866413 m!5864996))

(declare-fun m!5864998 () Bool)

(assert (=> d!1562116 m!5864998))

(declare-fun m!5865000 () Bool)

(assert (=> d!1562116 m!5865000))

(declare-fun m!5865002 () Bool)

(assert (=> d!1562116 m!5865002))

(assert (=> d!1562116 m!5864116))

(assert (=> d!1561832 d!1562116))

(declare-fun d!1562118 () Bool)

(declare-fun res!2077449 () Bool)

(declare-fun e!3042459 () Bool)

(assert (=> d!1562118 (=> (not res!2077449) (not e!3042459))))

(assert (=> d!1562118 (= res!2077449 (= (csize!29368 (c!827478 totalInput!332)) (+ (size!36864 (left!40624 (c!827478 totalInput!332))) (size!36864 (right!40954 (c!827478 totalInput!332))))))))

(assert (=> d!1562118 (= (inv!71843 (c!827478 totalInput!332)) e!3042459)))

(declare-fun b!4866417 () Bool)

(declare-fun res!2077450 () Bool)

(assert (=> b!4866417 (=> (not res!2077450) (not e!3042459))))

(assert (=> b!4866417 (= res!2077450 (and (not (= (left!40624 (c!827478 totalInput!332)) Empty!14569)) (not (= (right!40954 (c!827478 totalInput!332)) Empty!14569))))))

(declare-fun b!4866418 () Bool)

(declare-fun res!2077451 () Bool)

(assert (=> b!4866418 (=> (not res!2077451) (not e!3042459))))

(assert (=> b!4866418 (= res!2077451 (= (cheight!14780 (c!827478 totalInput!332)) (+ (max!0 (height!1925 (left!40624 (c!827478 totalInput!332))) (height!1925 (right!40954 (c!827478 totalInput!332)))) 1)))))

(declare-fun b!4866419 () Bool)

(assert (=> b!4866419 (= e!3042459 (<= 0 (cheight!14780 (c!827478 totalInput!332))))))

(assert (= (and d!1562118 res!2077449) b!4866417))

(assert (= (and b!4866417 res!2077450) b!4866418))

(assert (= (and b!4866418 res!2077451) b!4866419))

(declare-fun m!5865004 () Bool)

(assert (=> d!1562118 m!5865004))

(declare-fun m!5865006 () Bool)

(assert (=> d!1562118 m!5865006))

(assert (=> b!4866418 m!5864952))

(assert (=> b!4866418 m!5864954))

(assert (=> b!4866418 m!5864952))

(assert (=> b!4866418 m!5864954))

(declare-fun m!5865008 () Bool)

(assert (=> b!4866418 m!5865008))

(assert (=> b!4865721 d!1562118))

(declare-fun d!1562120 () Bool)

(declare-fun lt!1994102 () Int)

(assert (=> d!1562120 (>= lt!1994102 0)))

(declare-fun e!3042460 () Int)

(assert (=> d!1562120 (= lt!1994102 e!3042460)))

(declare-fun c!827658 () Bool)

(assert (=> d!1562120 (= c!827658 ((_ is Nil!55931) (list!17479 input!661)))))

(assert (=> d!1562120 (= (size!36861 (list!17479 input!661)) lt!1994102)))

(declare-fun b!4866420 () Bool)

(assert (=> b!4866420 (= e!3042460 0)))

(declare-fun b!4866421 () Bool)

(assert (=> b!4866421 (= e!3042460 (+ 1 (size!36861 (t!363817 (list!17479 input!661)))))))

(assert (= (and d!1562120 c!827658) b!4866420))

(assert (= (and d!1562120 (not c!827658)) b!4866421))

(declare-fun m!5865010 () Bool)

(assert (=> b!4866421 m!5865010))

(assert (=> d!1561858 d!1562120))

(assert (=> d!1561858 d!1561850))

(declare-fun d!1562122 () Bool)

(declare-fun lt!1994103 () Int)

(assert (=> d!1562122 (= lt!1994103 (size!36861 (list!17483 (c!827478 input!661))))))

(assert (=> d!1562122 (= lt!1994103 (ite ((_ is Empty!14569) (c!827478 input!661)) 0 (ite ((_ is Leaf!24295) (c!827478 input!661)) (csize!29369 (c!827478 input!661)) (csize!29368 (c!827478 input!661)))))))

(assert (=> d!1562122 (= (size!36864 (c!827478 input!661)) lt!1994103)))

(declare-fun bs!1174288 () Bool)

(assert (= bs!1174288 d!1562122))

(assert (=> bs!1174288 m!5864138))

(assert (=> bs!1174288 m!5864138))

(declare-fun m!5865012 () Bool)

(assert (=> bs!1174288 m!5865012))

(assert (=> d!1561858 d!1562122))

(declare-fun d!1562124 () Bool)

(declare-fun lt!1994104 () Int)

(assert (=> d!1562124 (>= lt!1994104 0)))

(declare-fun e!3042461 () Int)

(assert (=> d!1562124 (= lt!1994104 e!3042461)))

(declare-fun c!827659 () Bool)

(assert (=> d!1562124 (= c!827659 ((_ is Nil!55931) lt!1993773))))

(assert (=> d!1562124 (= (size!36861 lt!1993773) lt!1994104)))

(declare-fun b!4866422 () Bool)

(assert (=> b!4866422 (= e!3042461 0)))

(declare-fun b!4866423 () Bool)

(assert (=> b!4866423 (= e!3042461 (+ 1 (size!36861 (t!363817 lt!1993773))))))

(assert (= (and d!1562124 c!827659) b!4866422))

(assert (= (and d!1562124 (not c!827659)) b!4866423))

(declare-fun m!5865014 () Bool)

(assert (=> b!4866423 m!5865014))

(assert (=> b!4865605 d!1562124))

(declare-fun d!1562126 () Bool)

(declare-fun lt!1994105 () Int)

(assert (=> d!1562126 (>= lt!1994105 0)))

(declare-fun e!3042462 () Int)

(assert (=> d!1562126 (= lt!1994105 e!3042462)))

(declare-fun c!827660 () Bool)

(assert (=> d!1562126 (= c!827660 ((_ is Nil!55931) (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))

(assert (=> d!1562126 (= (size!36861 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))) lt!1994105)))

(declare-fun b!4866424 () Bool)

(assert (=> b!4866424 (= e!3042462 0)))

(declare-fun b!4866425 () Bool)

(assert (=> b!4866425 (= e!3042462 (+ 1 (size!36861 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562126 c!827660) b!4866424))

(assert (= (and d!1562126 (not c!827660)) b!4866425))

(assert (=> b!4866425 m!5864542))

(assert (=> b!4865605 d!1562126))

(declare-fun d!1562128 () Bool)

(declare-fun lt!1994106 () Int)

(assert (=> d!1562128 (>= lt!1994106 0)))

(declare-fun e!3042463 () Int)

(assert (=> d!1562128 (= lt!1994106 e!3042463)))

(declare-fun c!827661 () Bool)

(assert (=> d!1562128 (= c!827661 ((_ is Nil!55931) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(assert (=> d!1562128 (= (size!36861 (list!17479 (_2!33185 (v!49684 lt!1993717)))) lt!1994106)))

(declare-fun b!4866426 () Bool)

(assert (=> b!4866426 (= e!3042463 0)))

(declare-fun b!4866427 () Bool)

(assert (=> b!4866427 (= e!3042463 (+ 1 (size!36861 (t!363817 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (= (and d!1562128 c!827661) b!4866426))

(assert (= (and d!1562128 (not c!827661)) b!4866427))

(declare-fun m!5865016 () Bool)

(assert (=> b!4866427 m!5865016))

(assert (=> b!4865605 d!1562128))

(declare-fun d!1562130 () Bool)

(assert (=> d!1562130 true))

(declare-fun order!25203 () Int)

(declare-fun order!25205 () Int)

(declare-fun lambda!243408 () Int)

(declare-fun dynLambda!22447 (Int Int) Int)

(declare-fun dynLambda!22448 (Int Int) Int)

(assert (=> d!1562130 (< (dynLambda!22447 order!25203 (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) (dynLambda!22448 order!25205 lambda!243408))))

(declare-fun Forall2!1253 (Int) Bool)

(assert (=> d!1562130 (= (equivClasses!3423 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) (Forall2!1253 lambda!243408))))

(declare-fun bs!1174289 () Bool)

(assert (= bs!1174289 d!1562130))

(declare-fun m!5865018 () Bool)

(assert (=> bs!1174289 m!5865018))

(assert (=> b!4865609 d!1562130))

(declare-fun d!1562132 () Bool)

(declare-fun lt!1994107 () Int)

(assert (=> d!1562132 (>= lt!1994107 0)))

(declare-fun e!3042466 () Int)

(assert (=> d!1562132 (= lt!1994107 e!3042466)))

(declare-fun c!827662 () Bool)

(assert (=> d!1562132 (= c!827662 ((_ is Nil!55931) (_2!33186 lt!1993806)))))

(assert (=> d!1562132 (= (size!36861 (_2!33186 lt!1993806)) lt!1994107)))

(declare-fun b!4866432 () Bool)

(assert (=> b!4866432 (= e!3042466 0)))

(declare-fun b!4866433 () Bool)

(assert (=> b!4866433 (= e!3042466 (+ 1 (size!36861 (t!363817 (_2!33186 lt!1993806)))))))

(assert (= (and d!1562132 c!827662) b!4866432))

(assert (= (and d!1562132 (not c!827662)) b!4866433))

(declare-fun m!5865020 () Bool)

(assert (=> b!4866433 m!5865020))

(assert (=> b!4865685 d!1562132))

(assert (=> b!4865685 d!1562000))

(declare-fun b!4866459 () Bool)

(declare-fun e!3042487 () Bool)

(assert (=> b!4866459 (= e!3042487 true)))

(declare-fun b!4866458 () Bool)

(declare-fun e!3042486 () Bool)

(assert (=> b!4866458 (= e!3042486 e!3042487)))

(declare-fun b!4866446 () Bool)

(assert (=> b!4866446 e!3042486))

(assert (= b!4866458 b!4866459))

(assert (= b!4866446 b!4866458))

(declare-fun lambda!243413 () Int)

(declare-fun order!25207 () Int)

(declare-fun dynLambda!22449 (Int Int) Int)

(assert (=> b!4866459 (< (dynLambda!22447 order!25203 (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) (dynLambda!22449 order!25207 lambda!243413))))

(declare-fun order!25209 () Int)

(declare-fun dynLambda!22450 (Int Int) Int)

(assert (=> b!4866459 (< (dynLambda!22450 order!25209 (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (dynLambda!22449 order!25207 lambda!243413))))

(declare-fun e!3042477 () Option!13775)

(declare-datatypes ((tuple2!59778 0))(
  ( (tuple2!59779 (_1!33192 BalanceConc!28580) (_2!33192 BalanceConc!28580)) )
))
(declare-fun lt!1994132 () tuple2!59778)

(assert (=> b!4866446 (= e!3042477 (Some!13774 (tuple2!59765 (Token!14645 (apply!13500 (transformation!8030 (h!62380 rules!1248)) (_1!33192 lt!1994132)) (h!62380 rules!1248) (size!36855 (_1!33192 lt!1994132)) (list!17479 (_1!33192 lt!1994132))) (_2!33192 lt!1994132))))))

(declare-fun lt!1994129 () List!56055)

(assert (=> b!4866446 (= lt!1994129 (list!17479 input!661))))

(declare-fun lt!1994131 () Unit!145938)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1682 (Regex!13105 List!56055) Unit!145938)

(assert (=> b!4866446 (= lt!1994131 (longestMatchIsAcceptedByMatchOrIsEmpty!1682 (regex!8030 (h!62380 rules!1248)) lt!1994129))))

(declare-fun res!2077464 () Bool)

(declare-fun isEmpty!29928 (List!56055) Bool)

(declare-datatypes ((tuple2!59780 0))(
  ( (tuple2!59781 (_1!33193 List!56055) (_2!33193 List!56055)) )
))
(declare-fun findLongestMatchInner!1719 (Regex!13105 List!56055 Int List!56055 List!56055 Int) tuple2!59780)

(assert (=> b!4866446 (= res!2077464 (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))))))

(declare-fun e!3042480 () Bool)

(assert (=> b!4866446 (=> res!2077464 e!3042480)))

(assert (=> b!4866446 e!3042480))

(declare-fun lt!1994136 () Unit!145938)

(assert (=> b!4866446 (= lt!1994136 lt!1994131)))

(declare-fun lt!1994128 () Unit!145938)

(declare-fun lemmaInv!1202 (TokenValueInjection!15988) Unit!145938)

(assert (=> b!4866446 (= lt!1994128 (lemmaInv!1202 (transformation!8030 (h!62380 rules!1248))))))

(declare-fun lt!1994135 () Unit!145938)

(declare-fun ForallOf!1099 (Int BalanceConc!28580) Unit!145938)

(assert (=> b!4866446 (= lt!1994135 (ForallOf!1099 lambda!243413 (_1!33192 lt!1994132)))))

(declare-fun lt!1994133 () Unit!145938)

(assert (=> b!4866446 (= lt!1994133 (ForallOf!1099 lambda!243413 (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))))))

(declare-fun lt!1994130 () Option!13775)

(assert (=> b!4866446 (= lt!1994130 (Some!13774 (tuple2!59765 (Token!14645 (apply!13500 (transformation!8030 (h!62380 rules!1248)) (_1!33192 lt!1994132)) (h!62380 rules!1248) (size!36855 (_1!33192 lt!1994132)) (list!17479 (_1!33192 lt!1994132))) (_2!33192 lt!1994132))))))

(declare-fun lt!1994137 () Unit!145938)

(declare-fun lemmaEqSameImage!1056 (TokenValueInjection!15988 BalanceConc!28580 BalanceConc!28580) Unit!145938)

(assert (=> b!4866446 (= lt!1994137 (lemmaEqSameImage!1056 (transformation!8030 (h!62380 rules!1248)) (_1!33192 lt!1994132) (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))))))

(declare-fun d!1562134 () Bool)

(declare-fun e!3042478 () Bool)

(assert (=> d!1562134 e!3042478))

(declare-fun res!2077465 () Bool)

(assert (=> d!1562134 (=> (not res!2077465) (not e!3042478))))

(declare-fun lt!1994134 () Option!13775)

(assert (=> d!1562134 (= res!2077465 (= (isDefined!10844 lt!1994134) (isDefined!10845 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661)))))))

(assert (=> d!1562134 (= lt!1994134 e!3042477)))

(declare-fun c!827665 () Bool)

(declare-fun isEmpty!29929 (BalanceConc!28580) Bool)

(assert (=> d!1562134 (= c!827665 (isEmpty!29929 (_1!33192 lt!1994132)))))

(declare-fun findLongestMatchWithZipperSequenceV2!132 (Regex!13105 BalanceConc!28580 BalanceConc!28580) tuple2!59778)

(assert (=> d!1562134 (= lt!1994132 (findLongestMatchWithZipperSequenceV2!132 (regex!8030 (h!62380 rules!1248)) input!661 totalInput!332))))

(assert (=> d!1562134 (ruleValid!3627 thiss!11777 (h!62380 rules!1248))))

(assert (=> d!1562134 (= (maxPrefixOneRuleZipperSequenceV2!256 thiss!11777 (h!62380 rules!1248) input!661 totalInput!332) lt!1994134)))

(declare-fun b!4866447 () Bool)

(assert (=> b!4866447 (= e!3042480 (matchR!6490 (regex!8030 (h!62380 rules!1248)) (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))))))

(declare-fun b!4866448 () Bool)

(declare-fun e!3042479 () Bool)

(assert (=> b!4866448 (= e!3042478 e!3042479)))

(declare-fun res!2077463 () Bool)

(assert (=> b!4866448 (=> res!2077463 e!3042479)))

(assert (=> b!4866448 (= res!2077463 (not (isDefined!10844 lt!1994134)))))

(declare-fun e!3042481 () Bool)

(declare-fun b!4866449 () Bool)

(assert (=> b!4866449 (= e!3042481 (= (list!17479 (_2!33185 (get!19222 lt!1994134))) (_2!33189 (get!19223 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661))))))))

(declare-fun b!4866450 () Bool)

(assert (=> b!4866450 (= e!3042479 e!3042481)))

(declare-fun res!2077462 () Bool)

(assert (=> b!4866450 (=> (not res!2077462) (not e!3042481))))

(assert (=> b!4866450 (= res!2077462 (= (_1!33185 (get!19222 lt!1994134)) (_1!33189 (get!19223 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661))))))))

(declare-fun b!4866451 () Bool)

(assert (=> b!4866451 (= e!3042477 None!13774)))

(assert (= (and d!1562134 c!827665) b!4866451))

(assert (= (and d!1562134 (not c!827665)) b!4866446))

(assert (= (and b!4866446 (not res!2077464)) b!4866447))

(assert (= (and d!1562134 res!2077465) b!4866448))

(assert (= (and b!4866448 (not res!2077463)) b!4866450))

(assert (= (and b!4866450 res!2077462) b!4866449))

(declare-fun m!5865022 () Bool)

(assert (=> b!4866449 m!5865022))

(declare-fun m!5865024 () Bool)

(assert (=> b!4866449 m!5865024))

(assert (=> b!4866449 m!5864692))

(declare-fun m!5865026 () Bool)

(assert (=> b!4866449 m!5865026))

(assert (=> b!4866449 m!5863822))

(assert (=> b!4866449 m!5864692))

(assert (=> b!4866449 m!5863822))

(declare-fun m!5865028 () Bool)

(assert (=> b!4866446 m!5865028))

(assert (=> b!4866446 m!5863822))

(declare-fun m!5865030 () Bool)

(assert (=> b!4866446 m!5865030))

(declare-fun m!5865032 () Bool)

(assert (=> b!4866446 m!5865032))

(declare-fun m!5865034 () Bool)

(assert (=> b!4866446 m!5865034))

(declare-fun m!5865036 () Bool)

(assert (=> b!4866446 m!5865036))

(assert (=> b!4866446 m!5865030))

(declare-fun m!5865038 () Bool)

(assert (=> b!4866446 m!5865038))

(assert (=> b!4866446 m!5865032))

(declare-fun m!5865040 () Bool)

(assert (=> b!4866446 m!5865040))

(declare-fun m!5865042 () Bool)

(assert (=> b!4866446 m!5865042))

(assert (=> b!4866446 m!5865038))

(declare-fun m!5865044 () Bool)

(assert (=> b!4866446 m!5865044))

(declare-fun m!5865046 () Bool)

(assert (=> b!4866446 m!5865046))

(declare-fun m!5865048 () Bool)

(assert (=> b!4866446 m!5865048))

(assert (=> b!4866446 m!5865040))

(declare-fun m!5865050 () Bool)

(assert (=> b!4866446 m!5865050))

(assert (=> b!4866446 m!5865038))

(declare-fun m!5865052 () Bool)

(assert (=> b!4866446 m!5865052))

(declare-fun m!5865054 () Bool)

(assert (=> b!4866448 m!5865054))

(assert (=> b!4866447 m!5865032))

(assert (=> b!4866447 m!5865040))

(assert (=> b!4866447 m!5865032))

(assert (=> b!4866447 m!5865040))

(assert (=> b!4866447 m!5865042))

(declare-fun m!5865056 () Bool)

(assert (=> b!4866447 m!5865056))

(assert (=> b!4866450 m!5865024))

(assert (=> b!4866450 m!5863822))

(assert (=> b!4866450 m!5863822))

(assert (=> b!4866450 m!5864692))

(assert (=> b!4866450 m!5864692))

(assert (=> b!4866450 m!5865026))

(assert (=> d!1562134 m!5865054))

(declare-fun m!5865058 () Bool)

(assert (=> d!1562134 m!5865058))

(assert (=> d!1562134 m!5864500))

(declare-fun m!5865060 () Bool)

(assert (=> d!1562134 m!5865060))

(assert (=> d!1562134 m!5864692))

(declare-fun m!5865062 () Bool)

(assert (=> d!1562134 m!5865062))

(assert (=> d!1562134 m!5863822))

(assert (=> d!1562134 m!5864692))

(assert (=> d!1562134 m!5863822))

(assert (=> bm!337905 d!1562134))

(declare-fun b!4866461 () Bool)

(declare-fun e!3042488 () List!56055)

(declare-fun e!3042489 () List!56055)

(assert (=> b!4866461 (= e!3042488 e!3042489)))

(declare-fun c!827667 () Bool)

(assert (=> b!4866461 (= c!827667 ((_ is Leaf!24295) (c!827478 totalInput!332)))))

(declare-fun b!4866463 () Bool)

(assert (=> b!4866463 (= e!3042489 (++!12179 (list!17483 (left!40624 (c!827478 totalInput!332))) (list!17483 (right!40954 (c!827478 totalInput!332)))))))

(declare-fun b!4866460 () Bool)

(assert (=> b!4866460 (= e!3042488 Nil!55931)))

(declare-fun d!1562136 () Bool)

(declare-fun c!827666 () Bool)

(assert (=> d!1562136 (= c!827666 ((_ is Empty!14569) (c!827478 totalInput!332)))))

(assert (=> d!1562136 (= (list!17483 (c!827478 totalInput!332)) e!3042488)))

(declare-fun b!4866462 () Bool)

(assert (=> b!4866462 (= e!3042489 (list!17486 (xs!17875 (c!827478 totalInput!332))))))

(assert (= (and d!1562136 c!827666) b!4866460))

(assert (= (and d!1562136 (not c!827666)) b!4866461))

(assert (= (and b!4866461 c!827667) b!4866462))

(assert (= (and b!4866461 (not c!827667)) b!4866463))

(declare-fun m!5865064 () Bool)

(assert (=> b!4866463 m!5865064))

(declare-fun m!5865066 () Bool)

(assert (=> b!4866463 m!5865066))

(assert (=> b!4866463 m!5865064))

(assert (=> b!4866463 m!5865066))

(declare-fun m!5865068 () Bool)

(assert (=> b!4866463 m!5865068))

(assert (=> b!4866462 m!5864902))

(assert (=> d!1561848 d!1562136))

(declare-fun d!1562138 () Bool)

(assert (=> d!1562138 (= (list!17479 (_2!33187 lt!1993769)) (list!17483 (c!827478 (_2!33187 lt!1993769))))))

(declare-fun bs!1174290 () Bool)

(assert (= bs!1174290 d!1562138))

(declare-fun m!5865070 () Bool)

(assert (=> bs!1174290 m!5865070))

(assert (=> b!4865593 d!1562138))

(assert (=> b!4865593 d!1562010))

(assert (=> b!4865593 d!1561818))

(declare-fun d!1562140 () Bool)

(declare-fun res!2077466 () Bool)

(declare-fun e!3042490 () Bool)

(assert (=> d!1562140 (=> (not res!2077466) (not e!3042490))))

(assert (=> d!1562140 (= res!2077466 (<= (size!36861 (list!17486 (xs!17875 (c!827478 input!661)))) 512))))

(assert (=> d!1562140 (= (inv!71844 (c!827478 input!661)) e!3042490)))

(declare-fun b!4866464 () Bool)

(declare-fun res!2077467 () Bool)

(assert (=> b!4866464 (=> (not res!2077467) (not e!3042490))))

(assert (=> b!4866464 (= res!2077467 (= (csize!29369 (c!827478 input!661)) (size!36861 (list!17486 (xs!17875 (c!827478 input!661))))))))

(declare-fun b!4866465 () Bool)

(assert (=> b!4866465 (= e!3042490 (and (> (csize!29369 (c!827478 input!661)) 0) (<= (csize!29369 (c!827478 input!661)) 512)))))

(assert (= (and d!1562140 res!2077466) b!4866464))

(assert (= (and b!4866464 res!2077467) b!4866465))

(assert (=> d!1562140 m!5864862))

(assert (=> d!1562140 m!5864862))

(declare-fun m!5865072 () Bool)

(assert (=> d!1562140 m!5865072))

(assert (=> b!4866464 m!5864862))

(assert (=> b!4866464 m!5864862))

(assert (=> b!4866464 m!5865072))

(assert (=> b!4865729 d!1562140))

(assert (=> b!4865708 d!1562026))

(assert (=> b!4865708 d!1562030))

(assert (=> b!4865708 d!1561862))

(assert (=> b!4865708 d!1561850))

(assert (=> b!4865591 d!1562138))

(assert (=> b!4865591 d!1561818))

(declare-fun d!1562142 () Bool)

(assert (=> d!1562142 (= (list!17479 lt!1993721) (list!17483 (c!827478 lt!1993721)))))

(declare-fun bs!1174291 () Bool)

(assert (= bs!1174291 d!1562142))

(declare-fun m!5865074 () Bool)

(assert (=> bs!1174291 m!5865074))

(assert (=> d!1561766 d!1562142))

(declare-fun b!4866477 () Bool)

(declare-fun e!3042496 () List!56057)

(declare-fun ++!12183 (List!56057 List!56057) List!56057)

(assert (=> b!4866477 (= e!3042496 (++!12183 (list!17484 (left!40625 (c!827480 lt!1993716))) (list!17484 (right!40955 (c!827480 lt!1993716)))))))

(declare-fun b!4866474 () Bool)

(declare-fun e!3042495 () List!56057)

(assert (=> b!4866474 (= e!3042495 Nil!55933)))

(declare-fun d!1562144 () Bool)

(declare-fun c!827672 () Bool)

(assert (=> d!1562144 (= c!827672 ((_ is Empty!14570) (c!827480 lt!1993716)))))

(assert (=> d!1562144 (= (list!17484 (c!827480 lt!1993716)) e!3042495)))

(declare-fun b!4866476 () Bool)

(declare-fun list!17488 (IArray!29201) List!56057)

(assert (=> b!4866476 (= e!3042496 (list!17488 (xs!17876 (c!827480 lt!1993716))))))

(declare-fun b!4866475 () Bool)

(assert (=> b!4866475 (= e!3042495 e!3042496)))

(declare-fun c!827673 () Bool)

(assert (=> b!4866475 (= c!827673 ((_ is Leaf!24296) (c!827480 lt!1993716)))))

(assert (= (and d!1562144 c!827672) b!4866474))

(assert (= (and d!1562144 (not c!827672)) b!4866475))

(assert (= (and b!4866475 c!827673) b!4866476))

(assert (= (and b!4866475 (not c!827673)) b!4866477))

(declare-fun m!5865076 () Bool)

(assert (=> b!4866477 m!5865076))

(declare-fun m!5865078 () Bool)

(assert (=> b!4866477 m!5865078))

(assert (=> b!4866477 m!5865076))

(assert (=> b!4866477 m!5865078))

(declare-fun m!5865080 () Bool)

(assert (=> b!4866477 m!5865080))

(declare-fun m!5865082 () Bool)

(assert (=> b!4866476 m!5865082))

(assert (=> d!1561830 d!1562144))

(declare-fun d!1562146 () Bool)

(assert (=> d!1562146 (= (inv!71839 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))) (isBalanced!3954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun bs!1174292 () Bool)

(assert (= bs!1174292 d!1562146))

(declare-fun m!5865084 () Bool)

(assert (=> bs!1174292 m!5865084))

(assert (=> tb!257691 d!1562146))

(declare-fun d!1562148 () Bool)

(declare-fun c!827674 () Bool)

(assert (=> d!1562148 (= c!827674 ((_ is Node!14569) (left!40624 (c!827478 totalInput!332))))))

(declare-fun e!3042497 () Bool)

(assert (=> d!1562148 (= (inv!71837 (left!40624 (c!827478 totalInput!332))) e!3042497)))

(declare-fun b!4866478 () Bool)

(assert (=> b!4866478 (= e!3042497 (inv!71843 (left!40624 (c!827478 totalInput!332))))))

(declare-fun b!4866479 () Bool)

(declare-fun e!3042498 () Bool)

(assert (=> b!4866479 (= e!3042497 e!3042498)))

(declare-fun res!2077468 () Bool)

(assert (=> b!4866479 (= res!2077468 (not ((_ is Leaf!24295) (left!40624 (c!827478 totalInput!332)))))))

(assert (=> b!4866479 (=> res!2077468 e!3042498)))

(declare-fun b!4866480 () Bool)

(assert (=> b!4866480 (= e!3042498 (inv!71844 (left!40624 (c!827478 totalInput!332))))))

(assert (= (and d!1562148 c!827674) b!4866478))

(assert (= (and d!1562148 (not c!827674)) b!4866479))

(assert (= (and b!4866479 (not res!2077468)) b!4866480))

(declare-fun m!5865086 () Bool)

(assert (=> b!4866478 m!5865086))

(declare-fun m!5865088 () Bool)

(assert (=> b!4866480 m!5865088))

(assert (=> b!4865741 d!1562148))

(declare-fun d!1562150 () Bool)

(declare-fun c!827675 () Bool)

(assert (=> d!1562150 (= c!827675 ((_ is Node!14569) (right!40954 (c!827478 totalInput!332))))))

(declare-fun e!3042499 () Bool)

(assert (=> d!1562150 (= (inv!71837 (right!40954 (c!827478 totalInput!332))) e!3042499)))

(declare-fun b!4866481 () Bool)

(assert (=> b!4866481 (= e!3042499 (inv!71843 (right!40954 (c!827478 totalInput!332))))))

(declare-fun b!4866482 () Bool)

(declare-fun e!3042500 () Bool)

(assert (=> b!4866482 (= e!3042499 e!3042500)))

(declare-fun res!2077469 () Bool)

(assert (=> b!4866482 (= res!2077469 (not ((_ is Leaf!24295) (right!40954 (c!827478 totalInput!332)))))))

(assert (=> b!4866482 (=> res!2077469 e!3042500)))

(declare-fun b!4866483 () Bool)

(assert (=> b!4866483 (= e!3042500 (inv!71844 (right!40954 (c!827478 totalInput!332))))))

(assert (= (and d!1562150 c!827675) b!4866481))

(assert (= (and d!1562150 (not c!827675)) b!4866482))

(assert (= (and b!4866482 (not res!2077469)) b!4866483))

(declare-fun m!5865090 () Bool)

(assert (=> b!4866481 m!5865090))

(declare-fun m!5865092 () Bool)

(assert (=> b!4866483 m!5865092))

(assert (=> b!4865741 d!1562150))

(assert (=> b!4865486 d!1561844))

(declare-fun d!1562152 () Bool)

(assert (=> d!1562152 (= (list!17480 lt!1993812) (list!17484 (c!827480 lt!1993812)))))

(declare-fun bs!1174293 () Bool)

(assert (= bs!1174293 d!1562152))

(declare-fun m!5865094 () Bool)

(assert (=> bs!1174293 m!5865094))

(assert (=> b!4865690 d!1562152))

(declare-fun d!1562154 () Bool)

(assert (=> d!1562154 (= (list!17480 (_1!33187 lt!1993718)) (list!17484 (c!827480 (_1!33187 lt!1993718))))))

(declare-fun bs!1174294 () Bool)

(assert (= bs!1174294 d!1562154))

(assert (=> bs!1174294 m!5864892))

(assert (=> b!4865690 d!1562154))

(declare-fun d!1562156 () Bool)

(declare-fun c!827678 () Bool)

(assert (=> d!1562156 (= c!827678 ((_ is Nil!55931) lt!1993773))))

(declare-fun e!3042503 () (InoxSet C!26408))

(assert (=> d!1562156 (= (content!9968 lt!1993773) e!3042503)))

(declare-fun b!4866488 () Bool)

(assert (=> b!4866488 (= e!3042503 ((as const (Array C!26408 Bool)) false))))

(declare-fun b!4866489 () Bool)

(assert (=> b!4866489 (= e!3042503 ((_ map or) (store ((as const (Array C!26408 Bool)) false) (h!62379 lt!1993773) true) (content!9968 (t!363817 lt!1993773))))))

(assert (= (and d!1562156 c!827678) b!4866488))

(assert (= (and d!1562156 (not c!827678)) b!4866489))

(declare-fun m!5865096 () Bool)

(assert (=> b!4866489 m!5865096))

(declare-fun m!5865098 () Bool)

(assert (=> b!4866489 m!5865098))

(assert (=> d!1561814 d!1562156))

(declare-fun d!1562158 () Bool)

(declare-fun c!827679 () Bool)

(assert (=> d!1562158 (= c!827679 ((_ is Nil!55931) (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))

(declare-fun e!3042504 () (InoxSet C!26408))

(assert (=> d!1562158 (= (content!9968 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))) e!3042504)))

(declare-fun b!4866490 () Bool)

(assert (=> b!4866490 (= e!3042504 ((as const (Array C!26408 Bool)) false))))

(declare-fun b!4866491 () Bool)

(assert (=> b!4866491 (= e!3042504 ((_ map or) (store ((as const (Array C!26408 Bool)) false) (h!62379 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))) true) (content!9968 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562158 c!827679) b!4866490))

(assert (= (and d!1562158 (not c!827679)) b!4866491))

(declare-fun m!5865100 () Bool)

(assert (=> b!4866491 m!5865100))

(assert (=> b!4866491 m!5864546))

(assert (=> d!1561814 d!1562158))

(declare-fun d!1562160 () Bool)

(declare-fun c!827680 () Bool)

(assert (=> d!1562160 (= c!827680 ((_ is Nil!55931) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun e!3042505 () (InoxSet C!26408))

(assert (=> d!1562160 (= (content!9968 (list!17479 (_2!33185 (v!49684 lt!1993717)))) e!3042505)))

(declare-fun b!4866492 () Bool)

(assert (=> b!4866492 (= e!3042505 ((as const (Array C!26408 Bool)) false))))

(declare-fun b!4866493 () Bool)

(assert (=> b!4866493 (= e!3042505 ((_ map or) (store ((as const (Array C!26408 Bool)) false) (h!62379 (list!17479 (_2!33185 (v!49684 lt!1993717)))) true) (content!9968 (t!363817 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (= (and d!1562160 c!827680) b!4866492))

(assert (= (and d!1562160 (not c!827680)) b!4866493))

(declare-fun m!5865102 () Bool)

(assert (=> b!4866493 m!5865102))

(declare-fun m!5865104 () Bool)

(assert (=> b!4866493 m!5865104))

(assert (=> d!1561814 d!1562160))

(assert (=> b!4865711 d!1561996))

(declare-fun bs!1174295 () Bool)

(declare-fun d!1562162 () Bool)

(assert (= bs!1174295 (and d!1562162 b!4866446)))

(declare-fun lambda!243416 () Int)

(assert (=> bs!1174295 (= lambda!243416 lambda!243413)))

(assert (=> d!1562162 true))

(assert (=> d!1562162 (< (dynLambda!22450 order!25209 (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (dynLambda!22449 order!25207 lambda!243416))))

(assert (=> d!1562162 true))

(assert (=> d!1562162 (< (dynLambda!22447 order!25203 (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) (dynLambda!22449 order!25207 lambda!243416))))

(declare-fun Forall!1673 (Int) Bool)

(assert (=> d!1562162 (= (semiInverseModEq!3544 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) (Forall!1673 lambda!243416))))

(declare-fun bs!1174296 () Bool)

(assert (= bs!1174296 d!1562162))

(declare-fun m!5865106 () Bool)

(assert (=> bs!1174296 m!5865106))

(assert (=> d!1561826 d!1562162))

(declare-fun bs!1174297 () Bool)

(declare-fun d!1562164 () Bool)

(assert (= bs!1174297 (and d!1562164 d!1561864)))

(declare-fun lambda!243419 () Int)

(assert (=> bs!1174297 (= lambda!243419 lambda!243400)))

(assert (=> d!1562164 true))

(declare-fun lt!1994140 () Bool)

(assert (=> d!1562164 (= lt!1994140 (rulesValidInductive!3019 thiss!11777 rules!1248))))

(assert (=> d!1562164 (= lt!1994140 (forall!13047 rules!1248 lambda!243419))))

(assert (=> d!1562164 (= (rulesValid!3120 thiss!11777 rules!1248) lt!1994140)))

(declare-fun bs!1174298 () Bool)

(assert (= bs!1174298 d!1562164))

(assert (=> bs!1174298 m!5864116))

(declare-fun m!5865108 () Bool)

(assert (=> bs!1174298 m!5865108))

(assert (=> d!1561854 d!1562164))

(declare-fun b!4866498 () Bool)

(declare-fun e!3042507 () Bool)

(assert (=> b!4866498 (= e!3042507 (not (isEmpty!29927 (right!40954 (c!827478 input!661)))))))

(declare-fun b!4866499 () Bool)

(declare-fun res!2077475 () Bool)

(assert (=> b!4866499 (=> (not res!2077475) (not e!3042507))))

(assert (=> b!4866499 (= res!2077475 (isBalanced!3954 (right!40954 (c!827478 input!661))))))

(declare-fun b!4866500 () Bool)

(declare-fun res!2077473 () Bool)

(assert (=> b!4866500 (=> (not res!2077473) (not e!3042507))))

(assert (=> b!4866500 (= res!2077473 (isBalanced!3954 (left!40624 (c!827478 input!661))))))

(declare-fun b!4866501 () Bool)

(declare-fun res!2077472 () Bool)

(assert (=> b!4866501 (=> (not res!2077472) (not e!3042507))))

(assert (=> b!4866501 (= res!2077472 (not (isEmpty!29927 (left!40624 (c!827478 input!661)))))))

(declare-fun d!1562166 () Bool)

(declare-fun res!2077470 () Bool)

(declare-fun e!3042506 () Bool)

(assert (=> d!1562166 (=> res!2077470 e!3042506)))

(assert (=> d!1562166 (= res!2077470 (not ((_ is Node!14569) (c!827478 input!661))))))

(assert (=> d!1562166 (= (isBalanced!3954 (c!827478 input!661)) e!3042506)))

(declare-fun b!4866502 () Bool)

(assert (=> b!4866502 (= e!3042506 e!3042507)))

(declare-fun res!2077471 () Bool)

(assert (=> b!4866502 (=> (not res!2077471) (not e!3042507))))

(assert (=> b!4866502 (= res!2077471 (<= (- 1) (- (height!1925 (left!40624 (c!827478 input!661))) (height!1925 (right!40954 (c!827478 input!661))))))))

(declare-fun b!4866503 () Bool)

(declare-fun res!2077474 () Bool)

(assert (=> b!4866503 (=> (not res!2077474) (not e!3042507))))

(assert (=> b!4866503 (= res!2077474 (<= (- (height!1925 (left!40624 (c!827478 input!661))) (height!1925 (right!40954 (c!827478 input!661)))) 1))))

(assert (= (and d!1562166 (not res!2077470)) b!4866502))

(assert (= (and b!4866502 res!2077471) b!4866503))

(assert (= (and b!4866503 res!2077474) b!4866500))

(assert (= (and b!4866500 res!2077473) b!4866499))

(assert (= (and b!4866499 res!2077475) b!4866501))

(assert (= (and b!4866501 res!2077472) b!4866498))

(assert (=> b!4866502 m!5864532))

(assert (=> b!4866502 m!5864534))

(declare-fun m!5865110 () Bool)

(assert (=> b!4866500 m!5865110))

(declare-fun m!5865112 () Bool)

(assert (=> b!4866501 m!5865112))

(declare-fun m!5865114 () Bool)

(assert (=> b!4866499 m!5865114))

(assert (=> b!4866503 m!5864532))

(assert (=> b!4866503 m!5864534))

(declare-fun m!5865116 () Bool)

(assert (=> b!4866498 m!5865116))

(assert (=> d!1561840 d!1562166))

(assert (=> b!4865713 d!1562026))

(assert (=> b!4865713 d!1562028))

(assert (=> b!4865713 d!1561850))

(assert (=> b!4865713 d!1562038))

(assert (=> b!4865713 d!1562036))

(declare-fun tp!1369280 () Bool)

(declare-fun tp!1369279 () Bool)

(declare-fun b!4866504 () Bool)

(declare-fun e!3042509 () Bool)

(assert (=> b!4866504 (= e!3042509 (and (inv!71837 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) tp!1369280 (inv!71837 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) tp!1369279))))

(declare-fun b!4866506 () Bool)

(declare-fun e!3042508 () Bool)

(declare-fun tp!1369281 () Bool)

(assert (=> b!4866506 (= e!3042508 tp!1369281)))

(declare-fun b!4866505 () Bool)

(assert (=> b!4866505 (= e!3042509 (and (inv!71845 (xs!17875 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) e!3042508))))

(assert (=> b!4865508 (= tp!1369144 (and (inv!71837 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) e!3042509))))

(assert (= (and b!4865508 ((_ is Node!14569) (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) b!4866504))

(assert (= b!4866505 b!4866506))

(assert (= (and b!4865508 ((_ is Leaf!24295) (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) b!4866505))

(declare-fun m!5865118 () Bool)

(assert (=> b!4866504 m!5865118))

(declare-fun m!5865120 () Bool)

(assert (=> b!4866504 m!5865120))

(declare-fun m!5865122 () Bool)

(assert (=> b!4866505 m!5865122))

(assert (=> b!4865508 m!5863870))

(declare-fun tp!1369283 () Bool)

(declare-fun b!4866507 () Bool)

(declare-fun e!3042511 () Bool)

(declare-fun tp!1369282 () Bool)

(assert (=> b!4866507 (= e!3042511 (and (inv!71837 (left!40624 (left!40624 (c!827478 totalInput!332)))) tp!1369283 (inv!71837 (right!40954 (left!40624 (c!827478 totalInput!332)))) tp!1369282))))

(declare-fun b!4866509 () Bool)

(declare-fun e!3042510 () Bool)

(declare-fun tp!1369284 () Bool)

(assert (=> b!4866509 (= e!3042510 tp!1369284)))

(declare-fun b!4866508 () Bool)

(assert (=> b!4866508 (= e!3042511 (and (inv!71845 (xs!17875 (left!40624 (c!827478 totalInput!332)))) e!3042510))))

(assert (=> b!4865741 (= tp!1369194 (and (inv!71837 (left!40624 (c!827478 totalInput!332))) e!3042511))))

(assert (= (and b!4865741 ((_ is Node!14569) (left!40624 (c!827478 totalInput!332)))) b!4866507))

(assert (= b!4866508 b!4866509))

(assert (= (and b!4865741 ((_ is Leaf!24295) (left!40624 (c!827478 totalInput!332)))) b!4866508))

(declare-fun m!5865124 () Bool)

(assert (=> b!4866507 m!5865124))

(declare-fun m!5865126 () Bool)

(assert (=> b!4866507 m!5865126))

(declare-fun m!5865128 () Bool)

(assert (=> b!4866508 m!5865128))

(assert (=> b!4865741 m!5864156))

(declare-fun b!4866510 () Bool)

(declare-fun tp!1369286 () Bool)

(declare-fun e!3042513 () Bool)

(declare-fun tp!1369285 () Bool)

(assert (=> b!4866510 (= e!3042513 (and (inv!71837 (left!40624 (right!40954 (c!827478 totalInput!332)))) tp!1369286 (inv!71837 (right!40954 (right!40954 (c!827478 totalInput!332)))) tp!1369285))))

(declare-fun b!4866512 () Bool)

(declare-fun e!3042512 () Bool)

(declare-fun tp!1369287 () Bool)

(assert (=> b!4866512 (= e!3042512 tp!1369287)))

(declare-fun b!4866511 () Bool)

(assert (=> b!4866511 (= e!3042513 (and (inv!71845 (xs!17875 (right!40954 (c!827478 totalInput!332)))) e!3042512))))

(assert (=> b!4865741 (= tp!1369193 (and (inv!71837 (right!40954 (c!827478 totalInput!332))) e!3042513))))

(assert (= (and b!4865741 ((_ is Node!14569) (right!40954 (c!827478 totalInput!332)))) b!4866510))

(assert (= b!4866511 b!4866512))

(assert (= (and b!4865741 ((_ is Leaf!24295) (right!40954 (c!827478 totalInput!332)))) b!4866511))

(declare-fun m!5865130 () Bool)

(assert (=> b!4866510 m!5865130))

(declare-fun m!5865132 () Bool)

(assert (=> b!4866510 m!5865132))

(declare-fun m!5865134 () Bool)

(assert (=> b!4866511 m!5865134))

(assert (=> b!4865741 m!5864158))

(declare-fun tp!1369289 () Bool)

(declare-fun e!3042515 () Bool)

(declare-fun b!4866513 () Bool)

(declare-fun tp!1369288 () Bool)

(assert (=> b!4866513 (= e!3042515 (and (inv!71837 (left!40624 (left!40624 (c!827478 input!661)))) tp!1369289 (inv!71837 (right!40954 (left!40624 (c!827478 input!661)))) tp!1369288))))

(declare-fun b!4866515 () Bool)

(declare-fun e!3042514 () Bool)

(declare-fun tp!1369290 () Bool)

(assert (=> b!4866515 (= e!3042514 tp!1369290)))

(declare-fun b!4866514 () Bool)

(assert (=> b!4866514 (= e!3042515 (and (inv!71845 (xs!17875 (left!40624 (c!827478 input!661)))) e!3042514))))

(assert (=> b!4865755 (= tp!1369209 (and (inv!71837 (left!40624 (c!827478 input!661))) e!3042515))))

(assert (= (and b!4865755 ((_ is Node!14569) (left!40624 (c!827478 input!661)))) b!4866513))

(assert (= b!4866514 b!4866515))

(assert (= (and b!4865755 ((_ is Leaf!24295) (left!40624 (c!827478 input!661)))) b!4866514))

(declare-fun m!5865136 () Bool)

(assert (=> b!4866513 m!5865136))

(declare-fun m!5865138 () Bool)

(assert (=> b!4866513 m!5865138))

(declare-fun m!5865140 () Bool)

(assert (=> b!4866514 m!5865140))

(assert (=> b!4865755 m!5864166))

(declare-fun tp!1369291 () Bool)

(declare-fun tp!1369292 () Bool)

(declare-fun e!3042517 () Bool)

(declare-fun b!4866516 () Bool)

(assert (=> b!4866516 (= e!3042517 (and (inv!71837 (left!40624 (right!40954 (c!827478 input!661)))) tp!1369292 (inv!71837 (right!40954 (right!40954 (c!827478 input!661)))) tp!1369291))))

(declare-fun b!4866518 () Bool)

(declare-fun e!3042516 () Bool)

(declare-fun tp!1369293 () Bool)

(assert (=> b!4866518 (= e!3042516 tp!1369293)))

(declare-fun b!4866517 () Bool)

(assert (=> b!4866517 (= e!3042517 (and (inv!71845 (xs!17875 (right!40954 (c!827478 input!661)))) e!3042516))))

(assert (=> b!4865755 (= tp!1369208 (and (inv!71837 (right!40954 (c!827478 input!661))) e!3042517))))

(assert (= (and b!4865755 ((_ is Node!14569) (right!40954 (c!827478 input!661)))) b!4866516))

(assert (= b!4866517 b!4866518))

(assert (= (and b!4865755 ((_ is Leaf!24295) (right!40954 (c!827478 input!661)))) b!4866517))

(declare-fun m!5865142 () Bool)

(assert (=> b!4866516 m!5865142))

(declare-fun m!5865144 () Bool)

(assert (=> b!4866516 m!5865144))

(declare-fun m!5865146 () Bool)

(assert (=> b!4866517 m!5865146))

(assert (=> b!4865755 m!5864168))

(declare-fun b!4866523 () Bool)

(declare-fun e!3042520 () Bool)

(declare-fun tp!1369296 () Bool)

(assert (=> b!4866523 (= e!3042520 (and tp_is_empty!35659 tp!1369296))))

(assert (=> b!4865743 (= tp!1369195 e!3042520)))

(assert (= (and b!4865743 ((_ is Cons!55931) (innerList!14657 (xs!17875 (c!827478 totalInput!332))))) b!4866523))

(declare-fun b!4866525 () Bool)

(declare-fun e!3042521 () Bool)

(declare-fun tp!1369297 () Bool)

(declare-fun tp!1369298 () Bool)

(assert (=> b!4866525 (= e!3042521 (and tp!1369297 tp!1369298))))

(declare-fun b!4866524 () Bool)

(assert (=> b!4866524 (= e!3042521 tp_is_empty!35659)))

(declare-fun b!4866526 () Bool)

(declare-fun tp!1369299 () Bool)

(assert (=> b!4866526 (= e!3042521 tp!1369299)))

(assert (=> b!4865769 (= tp!1369221 e!3042521)))

(declare-fun b!4866527 () Bool)

(declare-fun tp!1369300 () Bool)

(declare-fun tp!1369301 () Bool)

(assert (=> b!4866527 (= e!3042521 (and tp!1369300 tp!1369301))))

(assert (= (and b!4865769 ((_ is ElementMatch!13105) (regOne!26722 (regex!8030 (h!62380 rules!1248))))) b!4866524))

(assert (= (and b!4865769 ((_ is Concat!21446) (regOne!26722 (regex!8030 (h!62380 rules!1248))))) b!4866525))

(assert (= (and b!4865769 ((_ is Star!13105) (regOne!26722 (regex!8030 (h!62380 rules!1248))))) b!4866526))

(assert (= (and b!4865769 ((_ is Union!13105) (regOne!26722 (regex!8030 (h!62380 rules!1248))))) b!4866527))

(declare-fun b!4866529 () Bool)

(declare-fun e!3042522 () Bool)

(declare-fun tp!1369302 () Bool)

(declare-fun tp!1369303 () Bool)

(assert (=> b!4866529 (= e!3042522 (and tp!1369302 tp!1369303))))

(declare-fun b!4866528 () Bool)

(assert (=> b!4866528 (= e!3042522 tp_is_empty!35659)))

(declare-fun b!4866530 () Bool)

(declare-fun tp!1369304 () Bool)

(assert (=> b!4866530 (= e!3042522 tp!1369304)))

(assert (=> b!4865769 (= tp!1369222 e!3042522)))

(declare-fun b!4866531 () Bool)

(declare-fun tp!1369305 () Bool)

(declare-fun tp!1369306 () Bool)

(assert (=> b!4866531 (= e!3042522 (and tp!1369305 tp!1369306))))

(assert (= (and b!4865769 ((_ is ElementMatch!13105) (regTwo!26722 (regex!8030 (h!62380 rules!1248))))) b!4866528))

(assert (= (and b!4865769 ((_ is Concat!21446) (regTwo!26722 (regex!8030 (h!62380 rules!1248))))) b!4866529))

(assert (= (and b!4865769 ((_ is Star!13105) (regTwo!26722 (regex!8030 (h!62380 rules!1248))))) b!4866530))

(assert (= (and b!4865769 ((_ is Union!13105) (regTwo!26722 (regex!8030 (h!62380 rules!1248))))) b!4866531))

(declare-fun b!4866533 () Bool)

(declare-fun e!3042523 () Bool)

(declare-fun tp!1369307 () Bool)

(declare-fun tp!1369308 () Bool)

(assert (=> b!4866533 (= e!3042523 (and tp!1369307 tp!1369308))))

(declare-fun b!4866532 () Bool)

(assert (=> b!4866532 (= e!3042523 tp_is_empty!35659)))

(declare-fun b!4866534 () Bool)

(declare-fun tp!1369309 () Bool)

(assert (=> b!4866534 (= e!3042523 tp!1369309)))

(assert (=> b!4865770 (= tp!1369223 e!3042523)))

(declare-fun b!4866535 () Bool)

(declare-fun tp!1369310 () Bool)

(declare-fun tp!1369311 () Bool)

(assert (=> b!4866535 (= e!3042523 (and tp!1369310 tp!1369311))))

(assert (= (and b!4865770 ((_ is ElementMatch!13105) (reg!13434 (regex!8030 (h!62380 rules!1248))))) b!4866532))

(assert (= (and b!4865770 ((_ is Concat!21446) (reg!13434 (regex!8030 (h!62380 rules!1248))))) b!4866533))

(assert (= (and b!4865770 ((_ is Star!13105) (reg!13434 (regex!8030 (h!62380 rules!1248))))) b!4866534))

(assert (= (and b!4865770 ((_ is Union!13105) (reg!13434 (regex!8030 (h!62380 rules!1248))))) b!4866535))

(declare-fun b!4866536 () Bool)

(declare-fun e!3042524 () Bool)

(declare-fun tp!1369312 () Bool)

(assert (=> b!4866536 (= e!3042524 (and tp_is_empty!35659 tp!1369312))))

(assert (=> b!4865757 (= tp!1369210 e!3042524)))

(assert (= (and b!4865757 ((_ is Cons!55931) (innerList!14657 (xs!17875 (c!827478 input!661))))) b!4866536))

(declare-fun b!4866539 () Bool)

(declare-fun b_free!130643 () Bool)

(declare-fun b_next!131433 () Bool)

(assert (=> b!4866539 (= b_free!130643 (not b_next!131433))))

(declare-fun tp!1369315 () Bool)

(declare-fun b_and!342627 () Bool)

(assert (=> b!4866539 (= tp!1369315 b_and!342627)))

(declare-fun b_free!130645 () Bool)

(declare-fun b_next!131435 () Bool)

(assert (=> b!4866539 (= b_free!130645 (not b_next!131435))))

(declare-fun tb!257701 () Bool)

(declare-fun t!363849 () Bool)

(assert (=> (and b!4866539 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717)))))) t!363849) tb!257701))

(declare-fun result!320832 () Bool)

(assert (= result!320832 result!320802))

(assert (=> d!1561766 t!363849))

(declare-fun tp!1369316 () Bool)

(declare-fun b_and!342629 () Bool)

(assert (=> b!4866539 (= tp!1369316 (and (=> t!363849 result!320832) b_and!342629))))

(declare-fun e!3042527 () Bool)

(assert (=> b!4866539 (= e!3042527 (and tp!1369315 tp!1369316))))

(declare-fun e!3042525 () Bool)

(declare-fun b!4866538 () Bool)

(declare-fun tp!1369314 () Bool)

(assert (=> b!4866538 (= e!3042525 (and tp!1369314 (inv!71833 (tag!8894 (h!62380 (t!363818 (t!363818 rules!1248))))) (inv!71838 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) e!3042527))))

(declare-fun b!4866537 () Bool)

(declare-fun e!3042526 () Bool)

(declare-fun tp!1369313 () Bool)

(assert (=> b!4866537 (= e!3042526 (and e!3042525 tp!1369313))))

(assert (=> b!4865752 (= tp!1369204 e!3042526)))

(assert (= b!4866538 b!4866539))

(assert (= b!4866537 b!4866538))

(assert (= (and b!4865752 ((_ is Cons!55932) (t!363818 (t!363818 rules!1248)))) b!4866537))

(declare-fun m!5865148 () Bool)

(assert (=> b!4866538 m!5865148))

(declare-fun m!5865150 () Bool)

(assert (=> b!4866538 m!5865150))

(declare-fun b!4866541 () Bool)

(declare-fun e!3042529 () Bool)

(declare-fun tp!1369317 () Bool)

(declare-fun tp!1369318 () Bool)

(assert (=> b!4866541 (= e!3042529 (and tp!1369317 tp!1369318))))

(declare-fun b!4866540 () Bool)

(assert (=> b!4866540 (= e!3042529 tp_is_empty!35659)))

(declare-fun b!4866542 () Bool)

(declare-fun tp!1369319 () Bool)

(assert (=> b!4866542 (= e!3042529 tp!1369319)))

(assert (=> b!4865753 (= tp!1369205 e!3042529)))

(declare-fun b!4866543 () Bool)

(declare-fun tp!1369320 () Bool)

(declare-fun tp!1369321 () Bool)

(assert (=> b!4866543 (= e!3042529 (and tp!1369320 tp!1369321))))

(assert (= (and b!4865753 ((_ is ElementMatch!13105) (regex!8030 (h!62380 (t!363818 rules!1248))))) b!4866540))

(assert (= (and b!4865753 ((_ is Concat!21446) (regex!8030 (h!62380 (t!363818 rules!1248))))) b!4866541))

(assert (= (and b!4865753 ((_ is Star!13105) (regex!8030 (h!62380 (t!363818 rules!1248))))) b!4866542))

(assert (= (and b!4865753 ((_ is Union!13105) (regex!8030 (h!62380 (t!363818 rules!1248))))) b!4866543))

(declare-fun b!4866545 () Bool)

(declare-fun e!3042530 () Bool)

(declare-fun tp!1369322 () Bool)

(declare-fun tp!1369323 () Bool)

(assert (=> b!4866545 (= e!3042530 (and tp!1369322 tp!1369323))))

(declare-fun b!4866544 () Bool)

(assert (=> b!4866544 (= e!3042530 tp_is_empty!35659)))

(declare-fun b!4866546 () Bool)

(declare-fun tp!1369324 () Bool)

(assert (=> b!4866546 (= e!3042530 tp!1369324)))

(assert (=> b!4865771 (= tp!1369224 e!3042530)))

(declare-fun b!4866547 () Bool)

(declare-fun tp!1369325 () Bool)

(declare-fun tp!1369326 () Bool)

(assert (=> b!4866547 (= e!3042530 (and tp!1369325 tp!1369326))))

(assert (= (and b!4865771 ((_ is ElementMatch!13105) (regOne!26723 (regex!8030 (h!62380 rules!1248))))) b!4866544))

(assert (= (and b!4865771 ((_ is Concat!21446) (regOne!26723 (regex!8030 (h!62380 rules!1248))))) b!4866545))

(assert (= (and b!4865771 ((_ is Star!13105) (regOne!26723 (regex!8030 (h!62380 rules!1248))))) b!4866546))

(assert (= (and b!4865771 ((_ is Union!13105) (regOne!26723 (regex!8030 (h!62380 rules!1248))))) b!4866547))

(declare-fun b!4866549 () Bool)

(declare-fun e!3042531 () Bool)

(declare-fun tp!1369327 () Bool)

(declare-fun tp!1369328 () Bool)

(assert (=> b!4866549 (= e!3042531 (and tp!1369327 tp!1369328))))

(declare-fun b!4866548 () Bool)

(assert (=> b!4866548 (= e!3042531 tp_is_empty!35659)))

(declare-fun b!4866550 () Bool)

(declare-fun tp!1369329 () Bool)

(assert (=> b!4866550 (= e!3042531 tp!1369329)))

(assert (=> b!4865771 (= tp!1369225 e!3042531)))

(declare-fun b!4866551 () Bool)

(declare-fun tp!1369330 () Bool)

(declare-fun tp!1369331 () Bool)

(assert (=> b!4866551 (= e!3042531 (and tp!1369330 tp!1369331))))

(assert (= (and b!4865771 ((_ is ElementMatch!13105) (regTwo!26723 (regex!8030 (h!62380 rules!1248))))) b!4866548))

(assert (= (and b!4865771 ((_ is Concat!21446) (regTwo!26723 (regex!8030 (h!62380 rules!1248))))) b!4866549))

(assert (= (and b!4865771 ((_ is Star!13105) (regTwo!26723 (regex!8030 (h!62380 rules!1248))))) b!4866550))

(assert (= (and b!4865771 ((_ is Union!13105) (regTwo!26723 (regex!8030 (h!62380 rules!1248))))) b!4866551))

(declare-fun b_lambda!193495 () Bool)

(assert (= b_lambda!193489 (or (and b!4865491 b_free!130629 (= (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))))) (and b!4865754 b_free!130637 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))))) (and b!4866539 b_free!130645 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))))) b_lambda!193495)))

(check-sat (not b!4866542) (not b!4866536) (not b!4866184) (not b!4866341) (not d!1562056) (not b!4866516) (not b!4866546) (not b!4866510) (not b!4866545) b_and!342627 (not b!4866089) (not d!1562032) (not d!1562094) (not b!4866378) (not b!4866504) (not b!4866055) (not d!1562090) (not b!4866365) (not b!4866427) (not b!4866172) (not b!4866410) (not b!4866182) (not b!4866534) (not b!4866517) (not b!4866047) (not b!4866491) b_and!342621 (not b!4866543) (not b!4866398) (not b!4866396) (not b!4866464) (not d!1562002) (not b!4866045) (not b!4866551) (not b!4866405) (not b_next!131427) (not b!4866541) (not b!4866339) (not b!4866462) (not b!4866507) (not b!4866480) (not d!1562098) (not b!4866513) (not b!4866423) (not b!4866433) (not b!4866183) (not b!4866344) (not d!1562034) (not b!4866418) (not d!1562054) (not d!1562122) (not d!1562006) (not b!4866317) (not b!4866376) (not b!4866511) (not bm!337920) (not b!4866550) (not b!4866449) (not b!4866174) (not b!4866125) (not b!4866363) (not d!1562050) (not b!4866498) (not b!4866404) (not b!4866447) (not d!1562038) (not b!4866377) (not b!4866318) (not bm!337932) (not b!4866093) (not b!4866502) (not b!4865777) (not d!1562086) (not b!4866070) (not b!4866175) (not b!4866326) (not b!4866538) (not b!4866340) (not b!4866399) (not b!4866371) (not b!4866134) (not b!4866409) (not b!4866071) (not b!4866380) (not b!4866478) (not d!1562116) (not b!4866514) (not d!1562078) (not d!1562154) (not b!4866412) (not b!4866092) b_and!342611 (not b!4866501) (not d!1561996) (not b!4866188) (not b!4866506) (not d!1562138) (not b!4866518) (not d!1562102) (not b!4866509) (not b!4866053) (not b!4866476) (not b!4866356) (not b!4866450) (not b!4866178) b_and!342629 (not b!4866523) (not b!4866090) (not b!4866325) (not b!4866177) (not d!1562152) (not d!1562100) (not b_next!131425) (not b!4866531) (not b!4866512) (not b!4866364) (not d!1562142) (not b!4866407) (not b!4866088) (not b!4866421) (not bm!337926) (not b!4866525) (not b!4866321) (not b!4866173) (not d!1562028) (not d!1562140) (not b!4866425) (not b!4866350) (not b!4866489) (not b!4866314) (not b!4865508) (not d!1562164) (not b!4866505) (not b!4866085) (not b!4866315) (not d!1562004) (not d!1561992) (not b!4866084) (not b!4866032) (not b!4866324) (not d!1562020) (not b!4866503) (not b!4866499) (not d!1562016) (not b!4866530) (not b!4866500) (not d!1562024) (not b!4866342) (not d!1562130) (not b!4866529) (not b!4866413) (not bm!337908) (not b!4866446) b_and!342607 (not b!4866481) (not b!4866493) (not b!4866320) (not b!4866515) (not b!4866343) (not b!4866533) (not b!4866087) (not b!4866547) (not b!4866063) (not b_next!131417) (not b!4866397) (not b!4866411) (not b!4866549) (not b!4866483) (not b!4866463) (not b!4866186) (not b!4866067) (not b!4865741) (not b!4866066) (not b_next!131433) (not d!1561990) (not b_next!131435) (not b!4866537) (not d!1562008) (not b!4866381) (not b!4866508) tp_is_empty!35659 (not b!4866369) (not b!4866367) (not b!4866368) (not bm!337933) (not b_lambda!193495) (not b!4866408) (not d!1562146) (not d!1562162) (not d!1562014) (not b!4866401) (not b!4866179) (not d!1562082) (not b!4866414) (not b!4866347) (not b!4866046) (not b!4866033) (not b!4866316) (not b!4866351) (not d!1561864) (not b!4866127) (not b!4866477) (not b!4865755) (not b!4866526) (not b!4866072) (not b!4866176) (not d!1562118) (not b!4866527) (not b!4866383) (not d!1562010) (not b!4866400) (not d!1562134) (not b!4866086) (not b!4866370) (not d!1561862) (not b!4866448) (not b!4866415) b_and!342619 (not bm!337923) (not b!4866535) (not b_next!131419))
(check-sat b_and!342627 b_and!342621 (not b_next!131427) b_and!342611 b_and!342629 (not b_next!131425) b_and!342607 (not b_next!131417) (not b_next!131433) (not b_next!131435) b_and!342619 (not b_next!131419))
(get-model)

(declare-fun d!1562594 () Bool)

(declare-fun lt!1994470 () Int)

(assert (=> d!1562594 (>= lt!1994470 0)))

(declare-fun e!3042896 () Int)

(assert (=> d!1562594 (= lt!1994470 e!3042896)))

(declare-fun c!827855 () Bool)

(assert (=> d!1562594 (= c!827855 ((_ is Nil!55931) lt!1993955))))

(assert (=> d!1562594 (= (size!36861 lt!1993955) lt!1994470)))

(declare-fun b!4867204 () Bool)

(assert (=> b!4867204 (= e!3042896 0)))

(declare-fun b!4867205 () Bool)

(assert (=> b!4867205 (= e!3042896 (+ 1 (size!36861 (t!363817 lt!1993955))))))

(assert (= (and d!1562594 c!827855) b!4867204))

(assert (= (and d!1562594 (not c!827855)) b!4867205))

(declare-fun m!5866376 () Bool)

(assert (=> b!4867205 m!5866376))

(assert (=> b!4866067 d!1562594))

(declare-fun d!1562596 () Bool)

(declare-fun lt!1994471 () Int)

(assert (=> d!1562596 (>= lt!1994471 0)))

(declare-fun e!3042897 () Int)

(assert (=> d!1562596 (= lt!1994471 e!3042897)))

(declare-fun c!827856 () Bool)

(assert (=> d!1562596 (= c!827856 ((_ is Nil!55931) (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562596 (= (size!36861 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) lt!1994471)))

(declare-fun b!4867206 () Bool)

(assert (=> b!4867206 (= e!3042897 0)))

(declare-fun b!4867207 () Bool)

(assert (=> b!4867207 (= e!3042897 (+ 1 (size!36861 (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))))

(assert (= (and d!1562596 c!827856) b!4867206))

(assert (= (and d!1562596 (not c!827856)) b!4867207))

(declare-fun m!5866386 () Bool)

(assert (=> b!4867207 m!5866386))

(assert (=> b!4866067 d!1562596))

(assert (=> b!4866067 d!1562128))

(declare-fun d!1562598 () Bool)

(declare-fun lt!1994472 () Int)

(assert (=> d!1562598 (>= lt!1994472 0)))

(declare-fun e!3042898 () Int)

(assert (=> d!1562598 (= lt!1994472 e!3042898)))

(declare-fun c!827857 () Bool)

(assert (=> d!1562598 (= c!827857 ((_ is Nil!55931) (list!17486 (xs!17875 (c!827478 input!661)))))))

(assert (=> d!1562598 (= (size!36861 (list!17486 (xs!17875 (c!827478 input!661)))) lt!1994472)))

(declare-fun b!4867208 () Bool)

(assert (=> b!4867208 (= e!3042898 0)))

(declare-fun b!4867209 () Bool)

(assert (=> b!4867209 (= e!3042898 (+ 1 (size!36861 (t!363817 (list!17486 (xs!17875 (c!827478 input!661)))))))))

(assert (= (and d!1562598 c!827857) b!4867208))

(assert (= (and d!1562598 (not c!827857)) b!4867209))

(declare-fun m!5866398 () Bool)

(assert (=> b!4867209 m!5866398))

(assert (=> b!4866464 d!1562598))

(declare-fun d!1562600 () Bool)

(assert (=> d!1562600 (= (list!17486 (xs!17875 (c!827478 input!661))) (innerList!14657 (xs!17875 (c!827478 input!661))))))

(assert (=> b!4866464 d!1562600))

(declare-fun d!1562606 () Bool)

(assert (=> d!1562606 (= (get!19223 lt!1994018) (v!49688 lt!1994018))))

(assert (=> b!4866175 d!1562606))

(declare-fun d!1562610 () Bool)

(declare-fun dynLambda!22452 (Int BalanceConc!28580) TokenValue!8340)

(assert (=> d!1562610 (= (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994018))))) (dynLambda!22452 (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018))))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994018))))))))

(declare-fun b_lambda!193517 () Bool)

(assert (=> (not b_lambda!193517) (not d!1562610)))

(declare-fun tb!257739 () Bool)

(declare-fun t!363890 () Bool)

(assert (=> (and b!4865491 (= (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))) t!363890) tb!257739))

(declare-fun result!320872 () Bool)

(declare-fun inv!21 (TokenValue!8340) Bool)

(assert (=> tb!257739 (= result!320872 (inv!21 (dynLambda!22452 (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018))))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994018)))))))))

(declare-fun m!5866420 () Bool)

(assert (=> tb!257739 m!5866420))

(assert (=> d!1562610 t!363890))

(declare-fun b_and!342673 () Bool)

(assert (= b_and!342607 (and (=> t!363890 result!320872) b_and!342673)))

(declare-fun t!363892 () Bool)

(declare-fun tb!257741 () Bool)

(assert (=> (and b!4865754 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))) t!363892) tb!257741))

(declare-fun result!320876 () Bool)

(assert (= result!320876 result!320872))

(assert (=> d!1562610 t!363892))

(declare-fun b_and!342675 () Bool)

(assert (= b_and!342619 (and (=> t!363892 result!320876) b_and!342675)))

(declare-fun tb!257743 () Bool)

(declare-fun t!363894 () Bool)

(assert (=> (and b!4866539 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))) t!363894) tb!257743))

(declare-fun result!320878 () Bool)

(assert (= result!320878 result!320872))

(assert (=> d!1562610 t!363894))

(declare-fun b_and!342677 () Bool)

(assert (= b_and!342627 (and (=> t!363894 result!320878) b_and!342677)))

(assert (=> d!1562610 m!5864674))

(declare-fun m!5866432 () Bool)

(assert (=> d!1562610 m!5866432))

(assert (=> b!4866175 d!1562610))

(declare-fun d!1562624 () Bool)

(declare-fun fromListB!2677 (List!56055) BalanceConc!28580)

(assert (=> d!1562624 (= (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994018)))) (fromListB!2677 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994018)))))))

(declare-fun bs!1174371 () Bool)

(assert (= bs!1174371 d!1562624))

(declare-fun m!5866436 () Bool)

(assert (=> bs!1174371 m!5866436))

(assert (=> b!4866175 d!1562624))

(declare-fun b!4867235 () Bool)

(declare-fun e!3042915 () Bool)

(declare-fun e!3042917 () Bool)

(assert (=> b!4867235 (= e!3042915 e!3042917)))

(declare-fun res!2077799 () Bool)

(assert (=> b!4867235 (=> (not res!2077799) (not e!3042917))))

(declare-fun lt!1994488 () Option!13775)

(assert (=> b!4867235 (= res!2077799 (= (_1!33185 (get!19222 lt!1994488)) (_1!33189 (get!19223 (maxPrefix!4547 thiss!11777 (t!363818 (t!363818 rules!1248)) (list!17479 input!661))))))))

(declare-fun b!4867236 () Bool)

(declare-fun e!3042916 () Bool)

(declare-fun e!3042918 () Bool)

(assert (=> b!4867236 (= e!3042916 e!3042918)))

(declare-fun res!2077796 () Bool)

(assert (=> b!4867236 (=> (not res!2077796) (not e!3042918))))

(assert (=> b!4867236 (= res!2077796 (= (_1!33185 (get!19222 lt!1994488)) (_1!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 (t!363818 (t!363818 rules!1248)) (list!17479 input!661))))))))

(declare-fun b!4867237 () Bool)

(declare-fun e!3042914 () Option!13775)

(declare-fun lt!1994489 () Option!13775)

(declare-fun lt!1994485 () Option!13775)

(assert (=> b!4867237 (= e!3042914 (ite (and ((_ is None!13774) lt!1994489) ((_ is None!13774) lt!1994485)) None!13774 (ite ((_ is None!13774) lt!1994485) lt!1994489 (ite ((_ is None!13774) lt!1994489) lt!1994485 (ite (>= (size!36854 (_1!33185 (v!49684 lt!1994489))) (size!36854 (_1!33185 (v!49684 lt!1994485)))) lt!1994489 lt!1994485)))))))

(declare-fun call!338025 () Option!13775)

(assert (=> b!4867237 (= lt!1994489 call!338025)))

(assert (=> b!4867237 (= lt!1994485 (maxPrefixZipperSequenceV2!627 thiss!11777 (t!363818 (t!363818 (t!363818 rules!1248))) input!661 totalInput!332))))

(declare-fun d!1562632 () Bool)

(declare-fun e!3042913 () Bool)

(assert (=> d!1562632 e!3042913))

(declare-fun res!2077801 () Bool)

(assert (=> d!1562632 (=> (not res!2077801) (not e!3042913))))

(assert (=> d!1562632 (= res!2077801 (= (isDefined!10844 lt!1994488) (isDefined!10845 (maxPrefixZipper!561 thiss!11777 (t!363818 (t!363818 rules!1248)) (list!17479 input!661)))))))

(assert (=> d!1562632 (= lt!1994488 e!3042914)))

(declare-fun c!827863 () Bool)

(assert (=> d!1562632 (= c!827863 (and ((_ is Cons!55932) (t!363818 (t!363818 rules!1248))) ((_ is Nil!55932) (t!363818 (t!363818 (t!363818 rules!1248))))))))

(declare-fun lt!1994483 () Unit!145938)

(declare-fun lt!1994487 () Unit!145938)

(assert (=> d!1562632 (= lt!1994483 lt!1994487)))

(declare-fun lt!1994484 () List!56055)

(declare-fun lt!1994486 () List!56055)

(assert (=> d!1562632 (isPrefix!4764 lt!1994484 lt!1994486)))

(assert (=> d!1562632 (= lt!1994487 (lemmaIsPrefixRefl!3161 lt!1994484 lt!1994486))))

(assert (=> d!1562632 (= lt!1994486 (list!17479 input!661))))

(assert (=> d!1562632 (= lt!1994484 (list!17479 input!661))))

(assert (=> d!1562632 (rulesValidInductive!3019 thiss!11777 (t!363818 (t!363818 rules!1248)))))

(assert (=> d!1562632 (= (maxPrefixZipperSequenceV2!627 thiss!11777 (t!363818 (t!363818 rules!1248)) input!661 totalInput!332) lt!1994488)))

(declare-fun bm!338020 () Bool)

(assert (=> bm!338020 (= call!338025 (maxPrefixOneRuleZipperSequenceV2!256 thiss!11777 (h!62380 (t!363818 (t!363818 rules!1248))) input!661 totalInput!332))))

(declare-fun b!4867238 () Bool)

(assert (=> b!4867238 (= e!3042918 (= (list!17479 (_2!33185 (get!19222 lt!1994488))) (_2!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 (t!363818 (t!363818 rules!1248)) (list!17479 input!661))))))))

(declare-fun b!4867239 () Bool)

(declare-fun res!2077798 () Bool)

(assert (=> b!4867239 (=> (not res!2077798) (not e!3042913))))

(assert (=> b!4867239 (= res!2077798 e!3042916)))

(declare-fun res!2077800 () Bool)

(assert (=> b!4867239 (=> res!2077800 e!3042916)))

(assert (=> b!4867239 (= res!2077800 (not (isDefined!10844 lt!1994488)))))

(declare-fun b!4867240 () Bool)

(assert (=> b!4867240 (= e!3042914 call!338025)))

(declare-fun b!4867241 () Bool)

(assert (=> b!4867241 (= e!3042917 (= (list!17479 (_2!33185 (get!19222 lt!1994488))) (_2!33189 (get!19223 (maxPrefix!4547 thiss!11777 (t!363818 (t!363818 rules!1248)) (list!17479 input!661))))))))

(declare-fun b!4867242 () Bool)

(assert (=> b!4867242 (= e!3042913 e!3042915)))

(declare-fun res!2077797 () Bool)

(assert (=> b!4867242 (=> res!2077797 e!3042915)))

(assert (=> b!4867242 (= res!2077797 (not (isDefined!10844 lt!1994488)))))

(assert (= (and d!1562632 c!827863) b!4867240))

(assert (= (and d!1562632 (not c!827863)) b!4867237))

(assert (= (or b!4867240 b!4867237) bm!338020))

(assert (= (and d!1562632 res!2077801) b!4867239))

(assert (= (and b!4867239 (not res!2077800)) b!4867236))

(assert (= (and b!4867236 res!2077796) b!4867238))

(assert (= (and b!4867239 res!2077798) b!4867242))

(assert (= (and b!4867242 (not res!2077797)) b!4867235))

(assert (= (and b!4867235 res!2077799) b!4867241))

(declare-fun m!5866464 () Bool)

(assert (=> b!4867239 m!5866464))

(declare-fun m!5866466 () Bool)

(assert (=> b!4867238 m!5866466))

(declare-fun m!5866468 () Bool)

(assert (=> b!4867238 m!5866468))

(declare-fun m!5866470 () Bool)

(assert (=> b!4867238 m!5866470))

(declare-fun m!5866472 () Bool)

(assert (=> b!4867238 m!5866472))

(assert (=> b!4867238 m!5863822))

(assert (=> b!4867238 m!5866466))

(assert (=> b!4867238 m!5863822))

(assert (=> b!4867242 m!5866464))

(assert (=> b!4867235 m!5866470))

(assert (=> b!4867235 m!5863822))

(assert (=> b!4867235 m!5863822))

(declare-fun m!5866482 () Bool)

(assert (=> b!4867235 m!5866482))

(assert (=> b!4867235 m!5866482))

(declare-fun m!5866484 () Bool)

(assert (=> b!4867235 m!5866484))

(declare-fun m!5866486 () Bool)

(assert (=> d!1562632 m!5866486))

(assert (=> d!1562632 m!5863822))

(assert (=> d!1562632 m!5866466))

(assert (=> d!1562632 m!5866466))

(declare-fun m!5866488 () Bool)

(assert (=> d!1562632 m!5866488))

(declare-fun m!5866490 () Bool)

(assert (=> d!1562632 m!5866490))

(declare-fun m!5866492 () Bool)

(assert (=> d!1562632 m!5866492))

(assert (=> d!1562632 m!5863822))

(assert (=> d!1562632 m!5866464))

(declare-fun m!5866494 () Bool)

(assert (=> b!4867237 m!5866494))

(declare-fun m!5866496 () Bool)

(assert (=> bm!338020 m!5866496))

(assert (=> b!4867241 m!5866470))

(assert (=> b!4867241 m!5866472))

(assert (=> b!4867241 m!5866482))

(assert (=> b!4867241 m!5866484))

(assert (=> b!4867241 m!5863822))

(assert (=> b!4867241 m!5863822))

(assert (=> b!4867241 m!5866482))

(assert (=> b!4867236 m!5866470))

(assert (=> b!4867236 m!5863822))

(assert (=> b!4867236 m!5863822))

(assert (=> b!4867236 m!5866466))

(assert (=> b!4867236 m!5866466))

(assert (=> b!4867236 m!5866468))

(assert (=> b!4866088 d!1562632))

(declare-fun d!1562638 () Bool)

(assert (=> d!1562638 (= (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018)))) (list!17483 (c!827478 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))))))

(declare-fun bs!1174372 () Bool)

(assert (= bs!1174372 d!1562638))

(declare-fun m!5866498 () Bool)

(assert (=> bs!1174372 m!5866498))

(assert (=> b!4866178 d!1562638))

(declare-fun d!1562640 () Bool)

(declare-fun lt!1994494 () BalanceConc!28580)

(assert (=> d!1562640 (= (list!17479 lt!1994494) (originalCharacters!8353 (_1!33189 (get!19223 lt!1994018))))))

(assert (=> d!1562640 (= lt!1994494 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018))))) (value!257997 (_1!33189 (get!19223 lt!1994018)))))))

(assert (=> d!1562640 (= (charsOf!5335 (_1!33189 (get!19223 lt!1994018))) lt!1994494)))

(declare-fun b_lambda!193519 () Bool)

(assert (=> (not b_lambda!193519) (not d!1562640)))

(declare-fun t!363896 () Bool)

(declare-fun tb!257745 () Bool)

(assert (=> (and b!4865491 (= (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))) t!363896) tb!257745))

(declare-fun b!4867251 () Bool)

(declare-fun e!3042924 () Bool)

(declare-fun tp!1369334 () Bool)

(assert (=> b!4867251 (= e!3042924 (and (inv!71837 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018))))) (value!257997 (_1!33189 (get!19223 lt!1994018)))))) tp!1369334))))

(declare-fun result!320880 () Bool)

(assert (=> tb!257745 (= result!320880 (and (inv!71839 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018))))) (value!257997 (_1!33189 (get!19223 lt!1994018))))) e!3042924))))

(assert (= tb!257745 b!4867251))

(declare-fun m!5866522 () Bool)

(assert (=> b!4867251 m!5866522))

(declare-fun m!5866524 () Bool)

(assert (=> tb!257745 m!5866524))

(assert (=> d!1562640 t!363896))

(declare-fun b_and!342679 () Bool)

(assert (= b_and!342611 (and (=> t!363896 result!320880) b_and!342679)))

(declare-fun t!363898 () Bool)

(declare-fun tb!257747 () Bool)

(assert (=> (and b!4865754 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))) t!363898) tb!257747))

(declare-fun result!320882 () Bool)

(assert (= result!320882 result!320880))

(assert (=> d!1562640 t!363898))

(declare-fun b_and!342681 () Bool)

(assert (= b_and!342621 (and (=> t!363898 result!320882) b_and!342681)))

(declare-fun tb!257749 () Bool)

(declare-fun t!363900 () Bool)

(assert (=> (and b!4866539 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))) t!363900) tb!257749))

(declare-fun result!320884 () Bool)

(assert (= result!320884 result!320880))

(assert (=> d!1562640 t!363900))

(declare-fun b_and!342683 () Bool)

(assert (= b_and!342629 (and (=> t!363900 result!320884) b_and!342683)))

(declare-fun m!5866526 () Bool)

(assert (=> d!1562640 m!5866526))

(declare-fun m!5866528 () Bool)

(assert (=> d!1562640 m!5866528))

(assert (=> b!4866178 d!1562640))

(assert (=> b!4866178 d!1562606))

(declare-fun d!1562644 () Bool)

(assert (=> d!1562644 (= (isEmpty!29923 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661))) (not ((_ is Some!13776) (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 input!661)))))))

(assert (=> d!1561990 d!1562644))

(declare-fun d!1562650 () Bool)

(declare-fun res!2077812 () Bool)

(declare-fun e!3042928 () Bool)

(assert (=> d!1562650 (=> (not res!2077812) (not e!3042928))))

(assert (=> d!1562650 (= res!2077812 (<= (size!36861 (list!17486 (xs!17875 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) 512))))

(assert (=> d!1562650 (= (inv!71844 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) e!3042928)))

(declare-fun b!4867260 () Bool)

(declare-fun res!2077813 () Bool)

(assert (=> b!4867260 (=> (not res!2077813) (not e!3042928))))

(assert (=> b!4867260 (= res!2077813 (= (csize!29369 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) (size!36861 (list!17486 (xs!17875 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))))

(declare-fun b!4867261 () Bool)

(assert (=> b!4867261 (= e!3042928 (and (> (csize!29369 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) 0) (<= (csize!29369 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) 512)))))

(assert (= (and d!1562650 res!2077812) b!4867260))

(assert (= (and b!4867260 res!2077813) b!4867261))

(declare-fun m!5866546 () Bool)

(assert (=> d!1562650 m!5866546))

(assert (=> d!1562650 m!5866546))

(declare-fun m!5866548 () Bool)

(assert (=> d!1562650 m!5866548))

(assert (=> b!4867260 m!5866546))

(assert (=> b!4867260 m!5866546))

(assert (=> b!4867260 m!5866548))

(assert (=> b!4866188 d!1562650))

(declare-fun d!1562658 () Bool)

(assert (=> d!1562658 (= (inv!71833 (tag!8894 (h!62380 (t!363818 (t!363818 rules!1248))))) (= (mod (str.len (value!257996 (tag!8894 (h!62380 (t!363818 (t!363818 rules!1248)))))) 2) 0))))

(assert (=> b!4866538 d!1562658))

(declare-fun d!1562662 () Bool)

(declare-fun res!2077820 () Bool)

(declare-fun e!3042932 () Bool)

(assert (=> d!1562662 (=> (not res!2077820) (not e!3042932))))

(assert (=> d!1562662 (= res!2077820 (semiInverseModEq!3544 (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248)))))))))

(assert (=> d!1562662 (= (inv!71838 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) e!3042932)))

(declare-fun b!4867270 () Bool)

(assert (=> b!4867270 (= e!3042932 (equivClasses!3423 (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248)))))))))

(assert (= (and d!1562662 res!2077820) b!4867270))

(declare-fun m!5866550 () Bool)

(assert (=> d!1562662 m!5866550))

(declare-fun m!5866552 () Bool)

(assert (=> b!4867270 m!5866552))

(assert (=> b!4866538 d!1562662))

(declare-fun b!4867271 () Bool)

(declare-fun lt!1994502 () Option!13775)

(declare-fun e!3042935 () Bool)

(assert (=> b!4867271 (= e!3042935 (= (list!17479 (_2!33185 (get!19222 lt!1994502))) (_2!33189 (get!19223 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867272 () Bool)

(declare-fun e!3042936 () Bool)

(assert (=> b!4867272 (= e!3042936 e!3042935)))

(declare-fun res!2077825 () Bool)

(assert (=> b!4867272 (=> (not res!2077825) (not e!3042935))))

(assert (=> b!4867272 (= res!2077825 (= (_1!33185 (get!19222 lt!1994502)) (_1!33189 (get!19223 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun d!1562664 () Bool)

(declare-fun e!3042938 () Bool)

(assert (=> d!1562664 e!3042938))

(declare-fun res!2077826 () Bool)

(assert (=> d!1562664 (=> (not res!2077826) (not e!3042938))))

(assert (=> d!1562664 (= res!2077826 (= (isDefined!10844 lt!1994502) (isDefined!10845 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(declare-fun e!3042937 () Option!13775)

(assert (=> d!1562664 (= lt!1994502 e!3042937)))

(declare-fun c!827868 () Bool)

(assert (=> d!1562664 (= c!827868 (and ((_ is Cons!55932) (t!363818 rules!1248)) ((_ is Nil!55932) (t!363818 (t!363818 rules!1248)))))))

(declare-fun lt!1994500 () Unit!145938)

(declare-fun lt!1994501 () Unit!145938)

(assert (=> d!1562664 (= lt!1994500 lt!1994501)))

(declare-fun lt!1994499 () List!56055)

(declare-fun lt!1994498 () List!56055)

(assert (=> d!1562664 (isPrefix!4764 lt!1994499 lt!1994498)))

(assert (=> d!1562664 (= lt!1994501 (lemmaIsPrefixRefl!3161 lt!1994499 lt!1994498))))

(assert (=> d!1562664 (= lt!1994498 (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(assert (=> d!1562664 (= lt!1994499 (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(assert (=> d!1562664 (rulesValidInductive!3019 thiss!11777 (t!363818 rules!1248))))

(assert (=> d!1562664 (= (maxPrefixZipperSequence!1223 thiss!11777 (t!363818 rules!1248) (_2!33185 (v!49684 lt!1993717))) lt!1994502)))

(declare-fun b!4867273 () Bool)

(declare-fun res!2077824 () Bool)

(assert (=> b!4867273 (=> (not res!2077824) (not e!3042938))))

(declare-fun e!3042934 () Bool)

(assert (=> b!4867273 (= res!2077824 e!3042934)))

(declare-fun res!2077823 () Bool)

(assert (=> b!4867273 (=> res!2077823 e!3042934)))

(assert (=> b!4867273 (= res!2077823 (not (isDefined!10844 lt!1994502)))))

(declare-fun b!4867274 () Bool)

(assert (=> b!4867274 (= e!3042938 e!3042936)))

(declare-fun res!2077821 () Bool)

(assert (=> b!4867274 (=> res!2077821 e!3042936)))

(assert (=> b!4867274 (= res!2077821 (not (isDefined!10844 lt!1994502)))))

(declare-fun b!4867275 () Bool)

(declare-fun e!3042933 () Bool)

(assert (=> b!4867275 (= e!3042934 e!3042933)))

(declare-fun res!2077822 () Bool)

(assert (=> b!4867275 (=> (not res!2077822) (not e!3042933))))

(assert (=> b!4867275 (= res!2077822 (= (_1!33185 (get!19222 lt!1994502)) (_1!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867276 () Bool)

(declare-fun call!338026 () Option!13775)

(assert (=> b!4867276 (= e!3042937 call!338026)))

(declare-fun bm!338021 () Bool)

(assert (=> bm!338021 (= call!338026 (maxPrefixOneRuleZipperSequence!576 thiss!11777 (h!62380 (t!363818 rules!1248)) (_2!33185 (v!49684 lt!1993717))))))

(declare-fun b!4867277 () Bool)

(declare-fun lt!1994497 () Option!13775)

(declare-fun lt!1994503 () Option!13775)

(assert (=> b!4867277 (= e!3042937 (ite (and ((_ is None!13774) lt!1994497) ((_ is None!13774) lt!1994503)) None!13774 (ite ((_ is None!13774) lt!1994503) lt!1994497 (ite ((_ is None!13774) lt!1994497) lt!1994503 (ite (>= (size!36854 (_1!33185 (v!49684 lt!1994497))) (size!36854 (_1!33185 (v!49684 lt!1994503)))) lt!1994497 lt!1994503)))))))

(assert (=> b!4867277 (= lt!1994497 call!338026)))

(assert (=> b!4867277 (= lt!1994503 (maxPrefixZipperSequence!1223 thiss!11777 (t!363818 (t!363818 rules!1248)) (_2!33185 (v!49684 lt!1993717))))))

(declare-fun b!4867278 () Bool)

(assert (=> b!4867278 (= e!3042933 (= (list!17479 (_2!33185 (get!19222 lt!1994502))) (_2!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562664 c!827868) b!4867276))

(assert (= (and d!1562664 (not c!827868)) b!4867277))

(assert (= (or b!4867276 b!4867277) bm!338021))

(assert (= (and d!1562664 res!2077826) b!4867273))

(assert (= (and b!4867273 (not res!2077823)) b!4867275))

(assert (= (and b!4867275 res!2077822) b!4867278))

(assert (= (and b!4867273 res!2077824) b!4867274))

(assert (= (and b!4867274 (not res!2077821)) b!4867272))

(assert (= (and b!4867272 res!2077825) b!4867271))

(declare-fun m!5866574 () Bool)

(assert (=> b!4867271 m!5866574))

(declare-fun m!5866576 () Bool)

(assert (=> b!4867271 m!5866576))

(declare-fun m!5866580 () Bool)

(assert (=> b!4867271 m!5866580))

(declare-fun m!5866584 () Bool)

(assert (=> b!4867271 m!5866584))

(assert (=> b!4867271 m!5863836))

(assert (=> b!4867271 m!5866580))

(assert (=> b!4867271 m!5863836))

(declare-fun m!5866586 () Bool)

(assert (=> b!4867274 m!5866586))

(declare-fun m!5866590 () Bool)

(assert (=> bm!338021 m!5866590))

(assert (=> b!4867275 m!5866574))

(assert (=> b!4867275 m!5863836))

(assert (=> b!4867275 m!5863836))

(declare-fun m!5866592 () Bool)

(assert (=> b!4867275 m!5866592))

(assert (=> b!4867275 m!5866592))

(declare-fun m!5866594 () Bool)

(assert (=> b!4867275 m!5866594))

(assert (=> b!4867272 m!5866574))

(assert (=> b!4867272 m!5863836))

(assert (=> b!4867272 m!5863836))

(assert (=> b!4867272 m!5866580))

(assert (=> b!4867272 m!5866580))

(assert (=> b!4867272 m!5866584))

(assert (=> b!4867278 m!5866574))

(assert (=> b!4867278 m!5863836))

(assert (=> b!4867278 m!5863836))

(assert (=> b!4867278 m!5866592))

(assert (=> b!4867278 m!5866576))

(assert (=> b!4867278 m!5866592))

(assert (=> b!4867278 m!5866594))

(assert (=> d!1562664 m!5864502))

(declare-fun m!5866598 () Bool)

(assert (=> d!1562664 m!5866598))

(assert (=> d!1562664 m!5863836))

(declare-fun m!5866600 () Bool)

(assert (=> d!1562664 m!5866600))

(assert (=> d!1562664 m!5866586))

(assert (=> d!1562664 m!5863836))

(assert (=> d!1562664 m!5866592))

(assert (=> d!1562664 m!5866592))

(declare-fun m!5866602 () Bool)

(assert (=> d!1562664 m!5866602))

(assert (=> b!4867273 m!5866586))

(declare-fun m!5866604 () Bool)

(assert (=> b!4867277 m!5866604))

(assert (=> b!4866320 d!1562664))

(declare-fun d!1562680 () Bool)

(assert (=> d!1562680 (= (isEmpty!29923 lt!1994018) (not ((_ is Some!13776) lt!1994018)))))

(assert (=> d!1562038 d!1562680))

(declare-fun d!1562684 () Bool)

(declare-fun e!3042945 () Bool)

(assert (=> d!1562684 e!3042945))

(declare-fun res!2077842 () Bool)

(assert (=> d!1562684 (=> res!2077842 e!3042945)))

(declare-fun lt!1994505 () Bool)

(assert (=> d!1562684 (= res!2077842 (not lt!1994505))))

(declare-fun e!3042946 () Bool)

(assert (=> d!1562684 (= lt!1994505 e!3042946)))

(declare-fun res!2077843 () Bool)

(assert (=> d!1562684 (=> res!2077843 e!3042946)))

(assert (=> d!1562684 (= res!2077843 ((_ is Nil!55931) (list!17479 input!661)))))

(assert (=> d!1562684 (= (isPrefix!4764 (list!17479 input!661) (list!17479 input!661)) lt!1994505)))

(declare-fun b!4867295 () Bool)

(assert (=> b!4867295 (= e!3042945 (>= (size!36861 (list!17479 input!661)) (size!36861 (list!17479 input!661))))))

(declare-fun b!4867294 () Bool)

(declare-fun e!3042947 () Bool)

(assert (=> b!4867294 (= e!3042947 (isPrefix!4764 (tail!9557 (list!17479 input!661)) (tail!9557 (list!17479 input!661))))))

(declare-fun b!4867292 () Bool)

(assert (=> b!4867292 (= e!3042946 e!3042947)))

(declare-fun res!2077841 () Bool)

(assert (=> b!4867292 (=> (not res!2077841) (not e!3042947))))

(assert (=> b!4867292 (= res!2077841 (not ((_ is Nil!55931) (list!17479 input!661))))))

(declare-fun b!4867293 () Bool)

(declare-fun res!2077840 () Bool)

(assert (=> b!4867293 (=> (not res!2077840) (not e!3042947))))

(assert (=> b!4867293 (= res!2077840 (= (head!10411 (list!17479 input!661)) (head!10411 (list!17479 input!661))))))

(assert (= (and d!1562684 (not res!2077843)) b!4867292))

(assert (= (and b!4867292 res!2077841) b!4867293))

(assert (= (and b!4867293 res!2077840) b!4867294))

(assert (= (and d!1562684 (not res!2077842)) b!4867295))

(assert (=> b!4867295 m!5863822))

(assert (=> b!4867295 m!5864152))

(assert (=> b!4867295 m!5863822))

(assert (=> b!4867295 m!5864152))

(assert (=> b!4867294 m!5863822))

(declare-fun m!5866610 () Bool)

(assert (=> b!4867294 m!5866610))

(assert (=> b!4867294 m!5863822))

(assert (=> b!4867294 m!5866610))

(assert (=> b!4867294 m!5866610))

(assert (=> b!4867294 m!5866610))

(declare-fun m!5866612 () Bool)

(assert (=> b!4867294 m!5866612))

(assert (=> b!4867293 m!5863822))

(declare-fun m!5866614 () Bool)

(assert (=> b!4867293 m!5866614))

(assert (=> b!4867293 m!5863822))

(assert (=> b!4867293 m!5866614))

(assert (=> d!1562038 d!1562684))

(declare-fun d!1562686 () Bool)

(assert (=> d!1562686 (isPrefix!4764 (list!17479 input!661) (list!17479 input!661))))

(declare-fun lt!1994507 () Unit!145938)

(assert (=> d!1562686 (= lt!1994507 (choose!35582 (list!17479 input!661) (list!17479 input!661)))))

(assert (=> d!1562686 (= (lemmaIsPrefixRefl!3161 (list!17479 input!661) (list!17479 input!661)) lt!1994507)))

(declare-fun bs!1174375 () Bool)

(assert (= bs!1174375 d!1562686))

(assert (=> bs!1174375 m!5863822))

(assert (=> bs!1174375 m!5863822))

(assert (=> bs!1174375 m!5864172))

(assert (=> bs!1174375 m!5863822))

(assert (=> bs!1174375 m!5863822))

(declare-fun m!5866616 () Bool)

(assert (=> bs!1174375 m!5866616))

(assert (=> d!1562038 d!1562686))

(assert (=> d!1562038 d!1561864))

(declare-fun d!1562688 () Bool)

(declare-fun lt!1994508 () Int)

(assert (=> d!1562688 (>= lt!1994508 0)))

(declare-fun e!3042955 () Int)

(assert (=> d!1562688 (= lt!1994508 e!3042955)))

(declare-fun c!827872 () Bool)

(assert (=> d!1562688 (= c!827872 ((_ is Nil!55931) (list!17486 (xs!17875 (c!827478 totalInput!332)))))))

(assert (=> d!1562688 (= (size!36861 (list!17486 (xs!17875 (c!827478 totalInput!332)))) lt!1994508)))

(declare-fun b!4867310 () Bool)

(assert (=> b!4867310 (= e!3042955 0)))

(declare-fun b!4867311 () Bool)

(assert (=> b!4867311 (= e!3042955 (+ 1 (size!36861 (t!363817 (list!17486 (xs!17875 (c!827478 totalInput!332)))))))))

(assert (= (and d!1562688 c!827872) b!4867310))

(assert (= (and d!1562688 (not c!827872)) b!4867311))

(declare-fun m!5866620 () Bool)

(assert (=> b!4867311 m!5866620))

(assert (=> b!4866356 d!1562688))

(declare-fun d!1562690 () Bool)

(assert (=> d!1562690 (= (list!17486 (xs!17875 (c!827478 totalInput!332))) (innerList!14657 (xs!17875 (c!827478 totalInput!332))))))

(assert (=> b!4866356 d!1562690))

(declare-fun d!1562692 () Bool)

(declare-fun lt!1994509 () Int)

(assert (=> d!1562692 (>= lt!1994509 0)))

(declare-fun e!3042956 () Int)

(assert (=> d!1562692 (= lt!1994509 e!3042956)))

(declare-fun c!827873 () Bool)

(assert (=> d!1562692 (= c!827873 ((_ is Nil!55931) Nil!55931))))

(assert (=> d!1562692 (= (size!36861 Nil!55931) lt!1994509)))

(declare-fun b!4867312 () Bool)

(assert (=> b!4867312 (= e!3042956 0)))

(declare-fun b!4867313 () Bool)

(assert (=> b!4867313 (= e!3042956 (+ 1 (size!36861 (t!363817 Nil!55931))))))

(assert (= (and d!1562692 c!827873) b!4867312))

(assert (= (and d!1562692 (not c!827873)) b!4867313))

(declare-fun m!5866630 () Bool)

(assert (=> b!4867313 m!5866630))

(assert (=> b!4866446 d!1562692))

(declare-fun d!1562694 () Bool)

(declare-fun e!3043004 () Bool)

(assert (=> d!1562694 e!3043004))

(declare-fun res!2077854 () Bool)

(assert (=> d!1562694 (=> res!2077854 e!3043004)))

(assert (=> d!1562694 (= res!2077854 (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))))))

(declare-fun lt!1994512 () Unit!145938)

(declare-fun choose!35586 (Regex!13105 List!56055) Unit!145938)

(assert (=> d!1562694 (= lt!1994512 (choose!35586 (regex!8030 (h!62380 rules!1248)) lt!1994129))))

(declare-fun validRegex!5866 (Regex!13105) Bool)

(assert (=> d!1562694 (validRegex!5866 (regex!8030 (h!62380 rules!1248)))))

(assert (=> d!1562694 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1682 (regex!8030 (h!62380 rules!1248)) lt!1994129) lt!1994512)))

(declare-fun b!4867438 () Bool)

(assert (=> b!4867438 (= e!3043004 (matchR!6490 (regex!8030 (h!62380 rules!1248)) (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))))))

(assert (= (and d!1562694 (not res!2077854)) b!4867438))

(assert (=> d!1562694 m!5865032))

(assert (=> d!1562694 m!5865040))

(assert (=> d!1562694 m!5865042))

(declare-fun m!5866678 () Bool)

(assert (=> d!1562694 m!5866678))

(assert (=> d!1562694 m!5865032))

(assert (=> d!1562694 m!5865034))

(declare-fun m!5866682 () Bool)

(assert (=> d!1562694 m!5866682))

(assert (=> d!1562694 m!5865040))

(assert (=> b!4867438 m!5865032))

(assert (=> b!4867438 m!5865040))

(assert (=> b!4867438 m!5865032))

(assert (=> b!4867438 m!5865040))

(assert (=> b!4867438 m!5865042))

(assert (=> b!4867438 m!5865056))

(assert (=> b!4866446 d!1562694))

(declare-fun b!4867511 () Bool)

(declare-fun e!3043043 () Unit!145938)

(declare-fun Unit!145940 () Unit!145938)

(assert (=> b!4867511 (= e!3043043 Unit!145940)))

(declare-fun lt!1994571 () Unit!145938)

(declare-fun call!338044 () Unit!145938)

(assert (=> b!4867511 (= lt!1994571 call!338044)))

(declare-fun call!338045 () Bool)

(assert (=> b!4867511 call!338045))

(declare-fun lt!1994594 () Unit!145938)

(assert (=> b!4867511 (= lt!1994594 lt!1994571)))

(declare-fun lt!1994587 () Unit!145938)

(declare-fun call!338047 () Unit!145938)

(assert (=> b!4867511 (= lt!1994587 call!338047)))

(assert (=> b!4867511 (= lt!1994129 Nil!55931)))

(declare-fun lt!1994590 () Unit!145938)

(assert (=> b!4867511 (= lt!1994590 lt!1994587)))

(assert (=> b!4867511 false))

(declare-fun call!338050 () Regex!13105)

(declare-fun call!338051 () List!56055)

(declare-fun call!338049 () tuple2!59780)

(declare-fun lt!1994576 () List!56055)

(declare-fun bm!338039 () Bool)

(assert (=> bm!338039 (= call!338049 (findLongestMatchInner!1719 call!338050 lt!1994576 (+ (size!36861 Nil!55931) 1) call!338051 lt!1994129 (size!36861 lt!1994129)))))

(declare-fun b!4867512 () Bool)

(declare-fun e!3043042 () tuple2!59780)

(declare-fun e!3043040 () tuple2!59780)

(assert (=> b!4867512 (= e!3043042 e!3043040)))

(declare-fun c!827891 () Bool)

(assert (=> b!4867512 (= c!827891 (= (size!36861 Nil!55931) (size!36861 lt!1994129)))))

(declare-fun b!4867513 () Bool)

(declare-fun e!3043047 () Bool)

(declare-fun lt!1994585 () tuple2!59780)

(assert (=> b!4867513 (= e!3043047 (>= (size!36861 (_1!33193 lt!1994585)) (size!36861 Nil!55931)))))

(declare-fun bm!338040 () Bool)

(assert (=> bm!338040 (= call!338044 (lemmaIsPrefixRefl!3161 lt!1994129 lt!1994129))))

(declare-fun bm!338041 () Bool)

(declare-fun call!338046 () Bool)

(declare-fun nullable!4539 (Regex!13105) Bool)

(assert (=> bm!338041 (= call!338046 (nullable!4539 (regex!8030 (h!62380 rules!1248))))))

(declare-fun b!4867514 () Bool)

(declare-fun e!3043045 () tuple2!59780)

(declare-fun lt!1994579 () tuple2!59780)

(assert (=> b!4867514 (= e!3043045 lt!1994579)))

(declare-fun b!4867515 () Bool)

(declare-fun e!3043044 () Bool)

(assert (=> b!4867515 (= e!3043044 e!3043047)))

(declare-fun res!2077859 () Bool)

(assert (=> b!4867515 (=> res!2077859 e!3043047)))

(assert (=> b!4867515 (= res!2077859 (isEmpty!29928 (_1!33193 lt!1994585)))))

(declare-fun bm!338042 () Bool)

(declare-fun call!338048 () C!26408)

(assert (=> bm!338042 (= call!338048 (head!10411 lt!1994129))))

(declare-fun b!4867516 () Bool)

(declare-fun e!3043041 () tuple2!59780)

(assert (=> b!4867516 (= e!3043041 e!3043045)))

(assert (=> b!4867516 (= lt!1994579 call!338049)))

(declare-fun c!827887 () Bool)

(assert (=> b!4867516 (= c!827887 (isEmpty!29928 (_1!33193 lt!1994579)))))

(declare-fun bm!338043 () Bool)

(assert (=> bm!338043 (= call!338045 (isPrefix!4764 lt!1994129 lt!1994129))))

(declare-fun b!4867518 () Bool)

(declare-fun e!3043046 () tuple2!59780)

(assert (=> b!4867518 (= e!3043046 (tuple2!59781 Nil!55931 lt!1994129))))

(declare-fun b!4867519 () Bool)

(declare-fun c!827886 () Bool)

(assert (=> b!4867519 (= c!827886 call!338046)))

(declare-fun lt!1994588 () Unit!145938)

(declare-fun lt!1994572 () Unit!145938)

(assert (=> b!4867519 (= lt!1994588 lt!1994572)))

(assert (=> b!4867519 (= lt!1994129 Nil!55931)))

(assert (=> b!4867519 (= lt!1994572 call!338047)))

(declare-fun lt!1994569 () Unit!145938)

(declare-fun lt!1994592 () Unit!145938)

(assert (=> b!4867519 (= lt!1994569 lt!1994592)))

(assert (=> b!4867519 call!338045))

(assert (=> b!4867519 (= lt!1994592 call!338044)))

(assert (=> b!4867519 (= e!3043040 e!3043046)))

(declare-fun bm!338044 () Bool)

(assert (=> bm!338044 (= call!338051 (tail!9557 lt!1994129))))

(declare-fun b!4867520 () Bool)

(assert (=> b!4867520 (= e!3043042 (tuple2!59781 Nil!55931 lt!1994129))))

(declare-fun b!4867521 () Bool)

(assert (=> b!4867521 (= e!3043045 (tuple2!59781 Nil!55931 lt!1994129))))

(declare-fun bm!338045 () Bool)

(declare-fun derivativeStep!3863 (Regex!13105 C!26408) Regex!13105)

(assert (=> bm!338045 (= call!338050 (derivativeStep!3863 (regex!8030 (h!62380 rules!1248)) call!338048))))

(declare-fun d!1562696 () Bool)

(assert (=> d!1562696 e!3043044))

(declare-fun res!2077860 () Bool)

(assert (=> d!1562696 (=> (not res!2077860) (not e!3043044))))

(assert (=> d!1562696 (= res!2077860 (= (++!12179 (_1!33193 lt!1994585) (_2!33193 lt!1994585)) lt!1994129))))

(assert (=> d!1562696 (= lt!1994585 e!3043042)))

(declare-fun c!827889 () Bool)

(declare-fun lostCause!1070 (Regex!13105) Bool)

(assert (=> d!1562696 (= c!827889 (lostCause!1070 (regex!8030 (h!62380 rules!1248))))))

(declare-fun lt!1994586 () Unit!145938)

(declare-fun Unit!145941 () Unit!145938)

(assert (=> d!1562696 (= lt!1994586 Unit!145941)))

(declare-fun getSuffix!2871 (List!56055 List!56055) List!56055)

(assert (=> d!1562696 (= (getSuffix!2871 lt!1994129 Nil!55931) lt!1994129)))

(declare-fun lt!1994589 () Unit!145938)

(declare-fun lt!1994580 () Unit!145938)

(assert (=> d!1562696 (= lt!1994589 lt!1994580)))

(declare-fun lt!1994574 () List!56055)

(assert (=> d!1562696 (= lt!1994129 lt!1994574)))

(declare-fun lemmaSamePrefixThenSameSuffix!2287 (List!56055 List!56055 List!56055 List!56055 List!56055) Unit!145938)

(assert (=> d!1562696 (= lt!1994580 (lemmaSamePrefixThenSameSuffix!2287 Nil!55931 lt!1994129 Nil!55931 lt!1994574 lt!1994129))))

(assert (=> d!1562696 (= lt!1994574 (getSuffix!2871 lt!1994129 Nil!55931))))

(declare-fun lt!1994583 () Unit!145938)

(declare-fun lt!1994596 () Unit!145938)

(assert (=> d!1562696 (= lt!1994583 lt!1994596)))

(assert (=> d!1562696 (isPrefix!4764 Nil!55931 (++!12179 Nil!55931 lt!1994129))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3107 (List!56055 List!56055) Unit!145938)

(assert (=> d!1562696 (= lt!1994596 (lemmaConcatTwoListThenFirstIsPrefix!3107 Nil!55931 lt!1994129))))

(assert (=> d!1562696 (validRegex!5866 (regex!8030 (h!62380 rules!1248)))))

(assert (=> d!1562696 (= (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)) lt!1994585)))

(declare-fun b!4867517 () Bool)

(assert (=> b!4867517 (= e!3043041 call!338049)))

(declare-fun b!4867522 () Bool)

(declare-fun Unit!145942 () Unit!145938)

(assert (=> b!4867522 (= e!3043043 Unit!145942)))

(declare-fun b!4867523 () Bool)

(declare-fun c!827888 () Bool)

(assert (=> b!4867523 (= c!827888 call!338046)))

(declare-fun lt!1994593 () Unit!145938)

(declare-fun lt!1994573 () Unit!145938)

(assert (=> b!4867523 (= lt!1994593 lt!1994573)))

(declare-fun lt!1994577 () C!26408)

(declare-fun lt!1994570 () List!56055)

(assert (=> b!4867523 (= (++!12179 (++!12179 Nil!55931 (Cons!55931 lt!1994577 Nil!55931)) lt!1994570) lt!1994129)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1314 (List!56055 C!26408 List!56055 List!56055) Unit!145938)

(assert (=> b!4867523 (= lt!1994573 (lemmaMoveElementToOtherListKeepsConcatEq!1314 Nil!55931 lt!1994577 lt!1994570 lt!1994129))))

(assert (=> b!4867523 (= lt!1994570 (tail!9557 lt!1994129))))

(assert (=> b!4867523 (= lt!1994577 (head!10411 lt!1994129))))

(declare-fun lt!1994582 () Unit!145938)

(declare-fun lt!1994581 () Unit!145938)

(assert (=> b!4867523 (= lt!1994582 lt!1994581)))

(assert (=> b!4867523 (isPrefix!4764 (++!12179 Nil!55931 (Cons!55931 (head!10411 (getSuffix!2871 lt!1994129 Nil!55931)) Nil!55931)) lt!1994129)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!696 (List!56055 List!56055) Unit!145938)

(assert (=> b!4867523 (= lt!1994581 (lemmaAddHeadSuffixToPrefixStillPrefix!696 Nil!55931 lt!1994129))))

(declare-fun lt!1994591 () Unit!145938)

(declare-fun lt!1994578 () Unit!145938)

(assert (=> b!4867523 (= lt!1994591 lt!1994578)))

(assert (=> b!4867523 (= lt!1994578 (lemmaAddHeadSuffixToPrefixStillPrefix!696 Nil!55931 lt!1994129))))

(assert (=> b!4867523 (= lt!1994576 (++!12179 Nil!55931 (Cons!55931 (head!10411 lt!1994129) Nil!55931)))))

(declare-fun lt!1994584 () Unit!145938)

(assert (=> b!4867523 (= lt!1994584 e!3043043)))

(declare-fun c!827890 () Bool)

(assert (=> b!4867523 (= c!827890 (= (size!36861 Nil!55931) (size!36861 lt!1994129)))))

(declare-fun lt!1994575 () Unit!145938)

(declare-fun lt!1994595 () Unit!145938)

(assert (=> b!4867523 (= lt!1994575 lt!1994595)))

(assert (=> b!4867523 (<= (size!36861 Nil!55931) (size!36861 lt!1994129))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!608 (List!56055 List!56055) Unit!145938)

(assert (=> b!4867523 (= lt!1994595 (lemmaIsPrefixThenSmallerEqSize!608 Nil!55931 lt!1994129))))

(assert (=> b!4867523 (= e!3043040 e!3043041)))

(declare-fun bm!338046 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1042 (List!56055 List!56055 List!56055) Unit!145938)

(assert (=> bm!338046 (= call!338047 (lemmaIsPrefixSameLengthThenSameList!1042 lt!1994129 Nil!55931 lt!1994129))))

(declare-fun b!4867524 () Bool)

(assert (=> b!4867524 (= e!3043046 (tuple2!59781 Nil!55931 Nil!55931))))

(assert (= (and d!1562696 c!827889) b!4867520))

(assert (= (and d!1562696 (not c!827889)) b!4867512))

(assert (= (and b!4867512 c!827891) b!4867519))

(assert (= (and b!4867512 (not c!827891)) b!4867523))

(assert (= (and b!4867519 c!827886) b!4867524))

(assert (= (and b!4867519 (not c!827886)) b!4867518))

(assert (= (and b!4867523 c!827890) b!4867511))

(assert (= (and b!4867523 (not c!827890)) b!4867522))

(assert (= (and b!4867523 c!827888) b!4867516))

(assert (= (and b!4867523 (not c!827888)) b!4867517))

(assert (= (and b!4867516 c!827887) b!4867521))

(assert (= (and b!4867516 (not c!827887)) b!4867514))

(assert (= (or b!4867516 b!4867517) bm!338044))

(assert (= (or b!4867516 b!4867517) bm!338042))

(assert (= (or b!4867516 b!4867517) bm!338045))

(assert (= (or b!4867516 b!4867517) bm!338039))

(assert (= (or b!4867519 b!4867511) bm!338040))

(assert (= (or b!4867519 b!4867511) bm!338046))

(assert (= (or b!4867519 b!4867523) bm!338041))

(assert (= (or b!4867519 b!4867511) bm!338043))

(assert (= (and d!1562696 res!2077860) b!4867515))

(assert (= (and b!4867515 (not res!2077859)) b!4867513))

(declare-fun m!5866716 () Bool)

(assert (=> bm!338040 m!5866716))

(declare-fun m!5866718 () Bool)

(assert (=> bm!338046 m!5866718))

(declare-fun m!5866720 () Bool)

(assert (=> bm!338043 m!5866720))

(declare-fun m!5866722 () Bool)

(assert (=> bm!338044 m!5866722))

(declare-fun m!5866724 () Bool)

(assert (=> bm!338045 m!5866724))

(assert (=> bm!338039 m!5865040))

(declare-fun m!5866726 () Bool)

(assert (=> bm!338039 m!5866726))

(declare-fun m!5866728 () Bool)

(assert (=> b!4867515 m!5866728))

(declare-fun m!5866730 () Bool)

(assert (=> b!4867513 m!5866730))

(assert (=> b!4867513 m!5865032))

(declare-fun m!5866732 () Bool)

(assert (=> bm!338041 m!5866732))

(declare-fun m!5866734 () Bool)

(assert (=> bm!338042 m!5866734))

(declare-fun m!5866736 () Bool)

(assert (=> d!1562696 m!5866736))

(declare-fun m!5866738 () Bool)

(assert (=> d!1562696 m!5866738))

(assert (=> d!1562696 m!5866682))

(declare-fun m!5866740 () Bool)

(assert (=> d!1562696 m!5866740))

(declare-fun m!5866742 () Bool)

(assert (=> d!1562696 m!5866742))

(declare-fun m!5866744 () Bool)

(assert (=> d!1562696 m!5866744))

(assert (=> d!1562696 m!5866742))

(declare-fun m!5866746 () Bool)

(assert (=> d!1562696 m!5866746))

(declare-fun m!5866748 () Bool)

(assert (=> d!1562696 m!5866748))

(declare-fun m!5866750 () Bool)

(assert (=> b!4867516 m!5866750))

(assert (=> b!4867523 m!5866736))

(declare-fun m!5866752 () Bool)

(assert (=> b!4867523 m!5866752))

(declare-fun m!5866754 () Bool)

(assert (=> b!4867523 m!5866754))

(assert (=> b!4867523 m!5865032))

(assert (=> b!4867523 m!5865040))

(assert (=> b!4867523 m!5866752))

(declare-fun m!5866756 () Bool)

(assert (=> b!4867523 m!5866756))

(assert (=> b!4867523 m!5866736))

(declare-fun m!5866758 () Bool)

(assert (=> b!4867523 m!5866758))

(assert (=> b!4867523 m!5866722))

(declare-fun m!5866760 () Bool)

(assert (=> b!4867523 m!5866760))

(assert (=> b!4867523 m!5866734))

(declare-fun m!5866762 () Bool)

(assert (=> b!4867523 m!5866762))

(declare-fun m!5866764 () Bool)

(assert (=> b!4867523 m!5866764))

(assert (=> b!4867523 m!5866764))

(declare-fun m!5866766 () Bool)

(assert (=> b!4867523 m!5866766))

(declare-fun m!5866768 () Bool)

(assert (=> b!4867523 m!5866768))

(assert (=> b!4866446 d!1562696))

(declare-fun d!1562706 () Bool)

(assert (=> d!1562706 (= (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))) ((_ is Nil!55931) (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))))))

(assert (=> b!4866446 d!1562706))

(declare-fun d!1562708 () Bool)

(declare-fun dynLambda!22453 (Int BalanceConc!28580) Bool)

(assert (=> d!1562708 (dynLambda!22453 lambda!243413 (seqFromList!5896 (list!17479 (_1!33192 lt!1994132))))))

(declare-fun lt!1994599 () Unit!145938)

(declare-fun choose!35587 (Int BalanceConc!28580) Unit!145938)

(assert (=> d!1562708 (= lt!1994599 (choose!35587 lambda!243413 (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))))))

(assert (=> d!1562708 (Forall!1673 lambda!243413)))

(assert (=> d!1562708 (= (ForallOf!1099 lambda!243413 (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))) lt!1994599)))

(declare-fun b_lambda!193545 () Bool)

(assert (=> (not b_lambda!193545) (not d!1562708)))

(declare-fun bs!1174380 () Bool)

(assert (= bs!1174380 d!1562708))

(assert (=> bs!1174380 m!5865038))

(declare-fun m!5866770 () Bool)

(assert (=> bs!1174380 m!5866770))

(assert (=> bs!1174380 m!5865038))

(declare-fun m!5866772 () Bool)

(assert (=> bs!1174380 m!5866772))

(declare-fun m!5866774 () Bool)

(assert (=> bs!1174380 m!5866774))

(assert (=> b!4866446 d!1562708))

(declare-fun bs!1174381 () Bool)

(declare-fun d!1562710 () Bool)

(assert (= bs!1174381 (and d!1562710 d!1562130)))

(declare-fun lambda!243434 () Int)

(assert (=> bs!1174381 (= lambda!243434 lambda!243408)))

(declare-fun b!4867531 () Bool)

(declare-fun e!3043052 () Bool)

(assert (=> b!4867531 (= e!3043052 true)))

(assert (=> d!1562710 e!3043052))

(assert (= d!1562710 b!4867531))

(assert (=> b!4867531 (< (dynLambda!22447 order!25203 (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) (dynLambda!22448 order!25205 lambda!243434))))

(assert (=> b!4867531 (< (dynLambda!22450 order!25209 (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (dynLambda!22448 order!25205 lambda!243434))))

(assert (=> d!1562710 (= (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (_1!33192 lt!1994132)) (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))))))

(declare-fun lt!1994602 () Unit!145938)

(declare-fun Forall2of!431 (Int BalanceConc!28580 BalanceConc!28580) Unit!145938)

(assert (=> d!1562710 (= lt!1994602 (Forall2of!431 lambda!243434 (_1!33192 lt!1994132) (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))))))

(assert (=> d!1562710 (= (list!17479 (_1!33192 lt!1994132)) (list!17479 (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))))))

(assert (=> d!1562710 (= (lemmaEqSameImage!1056 (transformation!8030 (h!62380 rules!1248)) (_1!33192 lt!1994132) (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))) lt!1994602)))

(declare-fun b_lambda!193547 () Bool)

(assert (=> (not b_lambda!193547) (not d!1562710)))

(declare-fun t!363932 () Bool)

(declare-fun tb!257781 () Bool)

(assert (=> (and b!4865491 (= (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) t!363932) tb!257781))

(declare-fun result!320916 () Bool)

(assert (=> tb!257781 (= result!320916 (inv!21 (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (_1!33192 lt!1994132))))))

(declare-fun m!5866776 () Bool)

(assert (=> tb!257781 m!5866776))

(assert (=> d!1562710 t!363932))

(declare-fun b_and!342721 () Bool)

(assert (= b_and!342673 (and (=> t!363932 result!320916) b_and!342721)))

(declare-fun t!363934 () Bool)

(declare-fun tb!257783 () Bool)

(assert (=> (and b!4865754 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) t!363934) tb!257783))

(declare-fun result!320918 () Bool)

(assert (= result!320918 result!320916))

(assert (=> d!1562710 t!363934))

(declare-fun b_and!342723 () Bool)

(assert (= b_and!342675 (and (=> t!363934 result!320918) b_and!342723)))

(declare-fun t!363936 () Bool)

(declare-fun tb!257785 () Bool)

(assert (=> (and b!4866539 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) t!363936) tb!257785))

(declare-fun result!320920 () Bool)

(assert (= result!320920 result!320916))

(assert (=> d!1562710 t!363936))

(declare-fun b_and!342725 () Bool)

(assert (= b_and!342677 (and (=> t!363936 result!320920) b_and!342725)))

(declare-fun b_lambda!193549 () Bool)

(assert (=> (not b_lambda!193549) (not d!1562710)))

(declare-fun t!363938 () Bool)

(declare-fun tb!257787 () Bool)

(assert (=> (and b!4865491 (= (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) t!363938) tb!257787))

(declare-fun result!320922 () Bool)

(assert (=> tb!257787 (= result!320922 (inv!21 (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (seqFromList!5896 (list!17479 (_1!33192 lt!1994132))))))))

(declare-fun m!5866778 () Bool)

(assert (=> tb!257787 m!5866778))

(assert (=> d!1562710 t!363938))

(declare-fun b_and!342727 () Bool)

(assert (= b_and!342721 (and (=> t!363938 result!320922) b_and!342727)))

(declare-fun t!363940 () Bool)

(declare-fun tb!257789 () Bool)

(assert (=> (and b!4865754 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) t!363940) tb!257789))

(declare-fun result!320924 () Bool)

(assert (= result!320924 result!320922))

(assert (=> d!1562710 t!363940))

(declare-fun b_and!342729 () Bool)

(assert (= b_and!342723 (and (=> t!363940 result!320924) b_and!342729)))

(declare-fun t!363942 () Bool)

(declare-fun tb!257791 () Bool)

(assert (=> (and b!4866539 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) t!363942) tb!257791))

(declare-fun result!320926 () Bool)

(assert (= result!320926 result!320922))

(assert (=> d!1562710 t!363942))

(declare-fun b_and!342731 () Bool)

(assert (= b_and!342725 (and (=> t!363942 result!320926) b_and!342731)))

(assert (=> d!1562710 m!5865038))

(declare-fun m!5866780 () Bool)

(assert (=> d!1562710 m!5866780))

(assert (=> d!1562710 m!5865030))

(declare-fun m!5866782 () Bool)

(assert (=> d!1562710 m!5866782))

(assert (=> d!1562710 m!5865038))

(declare-fun m!5866784 () Bool)

(assert (=> d!1562710 m!5866784))

(assert (=> d!1562710 m!5865038))

(declare-fun m!5866786 () Bool)

(assert (=> d!1562710 m!5866786))

(assert (=> b!4866446 d!1562710))

(declare-fun d!1562712 () Bool)

(assert (=> d!1562712 (dynLambda!22453 lambda!243413 (_1!33192 lt!1994132))))

(declare-fun lt!1994603 () Unit!145938)

(assert (=> d!1562712 (= lt!1994603 (choose!35587 lambda!243413 (_1!33192 lt!1994132)))))

(assert (=> d!1562712 (Forall!1673 lambda!243413)))

(assert (=> d!1562712 (= (ForallOf!1099 lambda!243413 (_1!33192 lt!1994132)) lt!1994603)))

(declare-fun b_lambda!193551 () Bool)

(assert (=> (not b_lambda!193551) (not d!1562712)))

(declare-fun bs!1174382 () Bool)

(assert (= bs!1174382 d!1562712))

(declare-fun m!5866788 () Bool)

(assert (=> bs!1174382 m!5866788))

(declare-fun m!5866790 () Bool)

(assert (=> bs!1174382 m!5866790))

(assert (=> bs!1174382 m!5866774))

(assert (=> b!4866446 d!1562712))

(declare-fun d!1562714 () Bool)

(declare-fun lt!1994604 () Int)

(assert (=> d!1562714 (= lt!1994604 (size!36861 (list!17479 (_1!33192 lt!1994132))))))

(assert (=> d!1562714 (= lt!1994604 (size!36864 (c!827478 (_1!33192 lt!1994132))))))

(assert (=> d!1562714 (= (size!36855 (_1!33192 lt!1994132)) lt!1994604)))

(declare-fun bs!1174383 () Bool)

(assert (= bs!1174383 d!1562714))

(assert (=> bs!1174383 m!5865030))

(assert (=> bs!1174383 m!5865030))

(declare-fun m!5866792 () Bool)

(assert (=> bs!1174383 m!5866792))

(declare-fun m!5866794 () Bool)

(assert (=> bs!1174383 m!5866794))

(assert (=> b!4866446 d!1562714))

(declare-fun d!1562716 () Bool)

(declare-fun lt!1994605 () Int)

(assert (=> d!1562716 (>= lt!1994605 0)))

(declare-fun e!3043055 () Int)

(assert (=> d!1562716 (= lt!1994605 e!3043055)))

(declare-fun c!827892 () Bool)

(assert (=> d!1562716 (= c!827892 ((_ is Nil!55931) lt!1994129))))

(assert (=> d!1562716 (= (size!36861 lt!1994129) lt!1994605)))

(declare-fun b!4867532 () Bool)

(assert (=> b!4867532 (= e!3043055 0)))

(declare-fun b!4867533 () Bool)

(assert (=> b!4867533 (= e!3043055 (+ 1 (size!36861 (t!363817 lt!1994129))))))

(assert (= (and d!1562716 c!827892) b!4867532))

(assert (= (and d!1562716 (not c!827892)) b!4867533))

(declare-fun m!5866796 () Bool)

(assert (=> b!4867533 m!5866796))

(assert (=> b!4866446 d!1562716))

(assert (=> b!4866446 d!1561850))

(declare-fun d!1562718 () Bool)

(declare-fun e!3043058 () Bool)

(assert (=> d!1562718 e!3043058))

(declare-fun res!2077865 () Bool)

(assert (=> d!1562718 (=> (not res!2077865) (not e!3043058))))

(assert (=> d!1562718 (= res!2077865 (semiInverseModEq!3544 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))))))

(declare-fun Unit!145943 () Unit!145938)

(assert (=> d!1562718 (= (lemmaInv!1202 (transformation!8030 (h!62380 rules!1248))) Unit!145943)))

(declare-fun b!4867536 () Bool)

(assert (=> b!4867536 (= e!3043058 (equivClasses!3423 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))))))

(assert (= (and d!1562718 res!2077865) b!4867536))

(assert (=> d!1562718 m!5864024))

(assert (=> b!4867536 m!5864026))

(assert (=> b!4866446 d!1562718))

(declare-fun d!1562720 () Bool)

(assert (=> d!1562720 (= (seqFromList!5896 (list!17479 (_1!33192 lt!1994132))) (fromListB!2677 (list!17479 (_1!33192 lt!1994132))))))

(declare-fun bs!1174384 () Bool)

(assert (= bs!1174384 d!1562720))

(assert (=> bs!1174384 m!5865030))

(declare-fun m!5866798 () Bool)

(assert (=> bs!1174384 m!5866798))

(assert (=> b!4866446 d!1562720))

(declare-fun d!1562722 () Bool)

(assert (=> d!1562722 (= (apply!13500 (transformation!8030 (h!62380 rules!1248)) (_1!33192 lt!1994132)) (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (_1!33192 lt!1994132)))))

(declare-fun b_lambda!193553 () Bool)

(assert (=> (not b_lambda!193553) (not d!1562722)))

(assert (=> d!1562722 t!363932))

(declare-fun b_and!342733 () Bool)

(assert (= b_and!342727 (and (=> t!363932 result!320916) b_and!342733)))

(assert (=> d!1562722 t!363934))

(declare-fun b_and!342735 () Bool)

(assert (= b_and!342729 (and (=> t!363934 result!320918) b_and!342735)))

(assert (=> d!1562722 t!363936))

(declare-fun b_and!342737 () Bool)

(assert (= b_and!342731 (and (=> t!363936 result!320920) b_and!342737)))

(assert (=> d!1562722 m!5866782))

(assert (=> b!4866446 d!1562722))

(declare-fun d!1562724 () Bool)

(assert (=> d!1562724 (= (list!17479 (_1!33192 lt!1994132)) (list!17483 (c!827478 (_1!33192 lt!1994132))))))

(declare-fun bs!1174385 () Bool)

(assert (= bs!1174385 d!1562724))

(declare-fun m!5866800 () Bool)

(assert (=> bs!1174385 m!5866800))

(assert (=> b!4866446 d!1562724))

(assert (=> b!4866324 d!1562600))

(declare-fun d!1562726 () Bool)

(declare-fun lt!1994606 () Int)

(assert (=> d!1562726 (>= lt!1994606 0)))

(declare-fun e!3043059 () Int)

(assert (=> d!1562726 (= lt!1994606 e!3043059)))

(declare-fun c!827893 () Bool)

(assert (=> d!1562726 (= c!827893 ((_ is Nil!55931) (innerList!14657 (xs!17875 (c!827478 input!661)))))))

(assert (=> d!1562726 (= (size!36861 (innerList!14657 (xs!17875 (c!827478 input!661)))) lt!1994606)))

(declare-fun b!4867537 () Bool)

(assert (=> b!4867537 (= e!3043059 0)))

(declare-fun b!4867538 () Bool)

(assert (=> b!4867538 (= e!3043059 (+ 1 (size!36861 (t!363817 (innerList!14657 (xs!17875 (c!827478 input!661)))))))))

(assert (= (and d!1562726 c!827893) b!4867537))

(assert (= (and d!1562726 (not c!827893)) b!4867538))

(declare-fun m!5866802 () Bool)

(assert (=> b!4867538 m!5866802))

(assert (=> d!1562004 d!1562726))

(declare-fun d!1562728 () Bool)

(declare-fun res!2077866 () Bool)

(declare-fun e!3043060 () Bool)

(assert (=> d!1562728 (=> (not res!2077866) (not e!3043060))))

(assert (=> d!1562728 (= res!2077866 (<= (size!36861 (list!17486 (xs!17875 (right!40954 (c!827478 input!661))))) 512))))

(assert (=> d!1562728 (= (inv!71844 (right!40954 (c!827478 input!661))) e!3043060)))

(declare-fun b!4867539 () Bool)

(declare-fun res!2077867 () Bool)

(assert (=> b!4867539 (=> (not res!2077867) (not e!3043060))))

(assert (=> b!4867539 (= res!2077867 (= (csize!29369 (right!40954 (c!827478 input!661))) (size!36861 (list!17486 (xs!17875 (right!40954 (c!827478 input!661)))))))))

(declare-fun b!4867540 () Bool)

(assert (=> b!4867540 (= e!3043060 (and (> (csize!29369 (right!40954 (c!827478 input!661))) 0) (<= (csize!29369 (right!40954 (c!827478 input!661))) 512)))))

(assert (= (and d!1562728 res!2077866) b!4867539))

(assert (= (and b!4867539 res!2077867) b!4867540))

(declare-fun m!5866804 () Bool)

(assert (=> d!1562728 m!5866804))

(assert (=> d!1562728 m!5866804))

(declare-fun m!5866806 () Bool)

(assert (=> d!1562728 m!5866806))

(assert (=> b!4867539 m!5866804))

(assert (=> b!4867539 m!5866804))

(assert (=> b!4867539 m!5866806))

(assert (=> b!4866383 d!1562728))

(declare-fun b!4867543 () Bool)

(declare-fun res!2077868 () Bool)

(declare-fun e!3043061 () Bool)

(assert (=> b!4867543 (=> (not res!2077868) (not e!3043061))))

(declare-fun lt!1994607 () List!56055)

(assert (=> b!4867543 (= res!2077868 (= (size!36861 lt!1994607) (+ (size!36861 (list!17483 (left!40624 (c!827478 totalInput!332)))) (size!36861 (list!17483 (right!40954 (c!827478 totalInput!332)))))))))

(declare-fun b!4867541 () Bool)

(declare-fun e!3043062 () List!56055)

(assert (=> b!4867541 (= e!3043062 (list!17483 (right!40954 (c!827478 totalInput!332))))))

(declare-fun d!1562730 () Bool)

(assert (=> d!1562730 e!3043061))

(declare-fun res!2077869 () Bool)

(assert (=> d!1562730 (=> (not res!2077869) (not e!3043061))))

(assert (=> d!1562730 (= res!2077869 (= (content!9968 lt!1994607) ((_ map or) (content!9968 (list!17483 (left!40624 (c!827478 totalInput!332)))) (content!9968 (list!17483 (right!40954 (c!827478 totalInput!332)))))))))

(assert (=> d!1562730 (= lt!1994607 e!3043062)))

(declare-fun c!827894 () Bool)

(assert (=> d!1562730 (= c!827894 ((_ is Nil!55931) (list!17483 (left!40624 (c!827478 totalInput!332)))))))

(assert (=> d!1562730 (= (++!12179 (list!17483 (left!40624 (c!827478 totalInput!332))) (list!17483 (right!40954 (c!827478 totalInput!332)))) lt!1994607)))

(declare-fun b!4867544 () Bool)

(assert (=> b!4867544 (= e!3043061 (or (not (= (list!17483 (right!40954 (c!827478 totalInput!332))) Nil!55931)) (= lt!1994607 (list!17483 (left!40624 (c!827478 totalInput!332))))))))

(declare-fun b!4867542 () Bool)

(assert (=> b!4867542 (= e!3043062 (Cons!55931 (h!62379 (list!17483 (left!40624 (c!827478 totalInput!332)))) (++!12179 (t!363817 (list!17483 (left!40624 (c!827478 totalInput!332)))) (list!17483 (right!40954 (c!827478 totalInput!332))))))))

(assert (= (and d!1562730 c!827894) b!4867541))

(assert (= (and d!1562730 (not c!827894)) b!4867542))

(assert (= (and d!1562730 res!2077869) b!4867543))

(assert (= (and b!4867543 res!2077868) b!4867544))

(declare-fun m!5866808 () Bool)

(assert (=> b!4867543 m!5866808))

(assert (=> b!4867543 m!5865064))

(declare-fun m!5866810 () Bool)

(assert (=> b!4867543 m!5866810))

(assert (=> b!4867543 m!5865066))

(declare-fun m!5866812 () Bool)

(assert (=> b!4867543 m!5866812))

(declare-fun m!5866814 () Bool)

(assert (=> d!1562730 m!5866814))

(assert (=> d!1562730 m!5865064))

(declare-fun m!5866816 () Bool)

(assert (=> d!1562730 m!5866816))

(assert (=> d!1562730 m!5865066))

(declare-fun m!5866818 () Bool)

(assert (=> d!1562730 m!5866818))

(assert (=> b!4867542 m!5865066))

(declare-fun m!5866820 () Bool)

(assert (=> b!4867542 m!5866820))

(assert (=> b!4866463 d!1562730))

(declare-fun b!4867546 () Bool)

(declare-fun e!3043063 () List!56055)

(declare-fun e!3043064 () List!56055)

(assert (=> b!4867546 (= e!3043063 e!3043064)))

(declare-fun c!827896 () Bool)

(assert (=> b!4867546 (= c!827896 ((_ is Leaf!24295) (left!40624 (c!827478 totalInput!332))))))

(declare-fun b!4867548 () Bool)

(assert (=> b!4867548 (= e!3043064 (++!12179 (list!17483 (left!40624 (left!40624 (c!827478 totalInput!332)))) (list!17483 (right!40954 (left!40624 (c!827478 totalInput!332))))))))

(declare-fun b!4867545 () Bool)

(assert (=> b!4867545 (= e!3043063 Nil!55931)))

(declare-fun d!1562732 () Bool)

(declare-fun c!827895 () Bool)

(assert (=> d!1562732 (= c!827895 ((_ is Empty!14569) (left!40624 (c!827478 totalInput!332))))))

(assert (=> d!1562732 (= (list!17483 (left!40624 (c!827478 totalInput!332))) e!3043063)))

(declare-fun b!4867547 () Bool)

(assert (=> b!4867547 (= e!3043064 (list!17486 (xs!17875 (left!40624 (c!827478 totalInput!332)))))))

(assert (= (and d!1562732 c!827895) b!4867545))

(assert (= (and d!1562732 (not c!827895)) b!4867546))

(assert (= (and b!4867546 c!827896) b!4867547))

(assert (= (and b!4867546 (not c!827896)) b!4867548))

(declare-fun m!5866822 () Bool)

(assert (=> b!4867548 m!5866822))

(declare-fun m!5866824 () Bool)

(assert (=> b!4867548 m!5866824))

(assert (=> b!4867548 m!5866822))

(assert (=> b!4867548 m!5866824))

(declare-fun m!5866826 () Bool)

(assert (=> b!4867548 m!5866826))

(declare-fun m!5866828 () Bool)

(assert (=> b!4867547 m!5866828))

(assert (=> b!4866463 d!1562732))

(declare-fun b!4867550 () Bool)

(declare-fun e!3043065 () List!56055)

(declare-fun e!3043066 () List!56055)

(assert (=> b!4867550 (= e!3043065 e!3043066)))

(declare-fun c!827898 () Bool)

(assert (=> b!4867550 (= c!827898 ((_ is Leaf!24295) (right!40954 (c!827478 totalInput!332))))))

(declare-fun b!4867552 () Bool)

(assert (=> b!4867552 (= e!3043066 (++!12179 (list!17483 (left!40624 (right!40954 (c!827478 totalInput!332)))) (list!17483 (right!40954 (right!40954 (c!827478 totalInput!332))))))))

(declare-fun b!4867549 () Bool)

(assert (=> b!4867549 (= e!3043065 Nil!55931)))

(declare-fun d!1562734 () Bool)

(declare-fun c!827897 () Bool)

(assert (=> d!1562734 (= c!827897 ((_ is Empty!14569) (right!40954 (c!827478 totalInput!332))))))

(assert (=> d!1562734 (= (list!17483 (right!40954 (c!827478 totalInput!332))) e!3043065)))

(declare-fun b!4867551 () Bool)

(assert (=> b!4867551 (= e!3043066 (list!17486 (xs!17875 (right!40954 (c!827478 totalInput!332)))))))

(assert (= (and d!1562734 c!827897) b!4867549))

(assert (= (and d!1562734 (not c!827897)) b!4867550))

(assert (= (and b!4867550 c!827898) b!4867551))

(assert (= (and b!4867550 (not c!827898)) b!4867552))

(declare-fun m!5866830 () Bool)

(assert (=> b!4867552 m!5866830))

(declare-fun m!5866832 () Bool)

(assert (=> b!4867552 m!5866832))

(assert (=> b!4867552 m!5866830))

(assert (=> b!4867552 m!5866832))

(declare-fun m!5866834 () Bool)

(assert (=> b!4867552 m!5866834))

(declare-fun m!5866836 () Bool)

(assert (=> b!4867551 m!5866836))

(assert (=> b!4866463 d!1562734))

(declare-fun bs!1174386 () Bool)

(declare-fun d!1562736 () Bool)

(assert (= bs!1174386 (and d!1562736 d!1562130)))

(declare-fun lambda!243435 () Int)

(assert (=> bs!1174386 (= (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) (= lambda!243435 lambda!243408))))

(declare-fun bs!1174387 () Bool)

(assert (= bs!1174387 (and d!1562736 d!1562710)))

(assert (=> bs!1174387 (= (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) (= lambda!243435 lambda!243434))))

(assert (=> d!1562736 true))

(assert (=> d!1562736 (< (dynLambda!22447 order!25203 (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248))))) (dynLambda!22448 order!25205 lambda!243435))))

(assert (=> d!1562736 (= (equivClasses!3423 (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248))))) (Forall2!1253 lambda!243435))))

(declare-fun bs!1174388 () Bool)

(assert (= bs!1174388 d!1562736))

(declare-fun m!5866838 () Bool)

(assert (=> bs!1174388 m!5866838))

(assert (=> b!4866326 d!1562736))

(assert (=> b!4866425 d!1562596))

(declare-fun d!1562738 () Bool)

(declare-fun c!827899 () Bool)

(assert (=> d!1562738 (= c!827899 ((_ is Node!14569) (left!40624 (left!40624 (c!827478 input!661)))))))

(declare-fun e!3043067 () Bool)

(assert (=> d!1562738 (= (inv!71837 (left!40624 (left!40624 (c!827478 input!661)))) e!3043067)))

(declare-fun b!4867553 () Bool)

(assert (=> b!4867553 (= e!3043067 (inv!71843 (left!40624 (left!40624 (c!827478 input!661)))))))

(declare-fun b!4867554 () Bool)

(declare-fun e!3043068 () Bool)

(assert (=> b!4867554 (= e!3043067 e!3043068)))

(declare-fun res!2077870 () Bool)

(assert (=> b!4867554 (= res!2077870 (not ((_ is Leaf!24295) (left!40624 (left!40624 (c!827478 input!661))))))))

(assert (=> b!4867554 (=> res!2077870 e!3043068)))

(declare-fun b!4867555 () Bool)

(assert (=> b!4867555 (= e!3043068 (inv!71844 (left!40624 (left!40624 (c!827478 input!661)))))))

(assert (= (and d!1562738 c!827899) b!4867553))

(assert (= (and d!1562738 (not c!827899)) b!4867554))

(assert (= (and b!4867554 (not res!2077870)) b!4867555))

(declare-fun m!5866840 () Bool)

(assert (=> b!4867553 m!5866840))

(declare-fun m!5866842 () Bool)

(assert (=> b!4867555 m!5866842))

(assert (=> b!4866513 d!1562738))

(declare-fun d!1562740 () Bool)

(declare-fun c!827900 () Bool)

(assert (=> d!1562740 (= c!827900 ((_ is Node!14569) (right!40954 (left!40624 (c!827478 input!661)))))))

(declare-fun e!3043069 () Bool)

(assert (=> d!1562740 (= (inv!71837 (right!40954 (left!40624 (c!827478 input!661)))) e!3043069)))

(declare-fun b!4867556 () Bool)

(assert (=> b!4867556 (= e!3043069 (inv!71843 (right!40954 (left!40624 (c!827478 input!661)))))))

(declare-fun b!4867557 () Bool)

(declare-fun e!3043070 () Bool)

(assert (=> b!4867557 (= e!3043069 e!3043070)))

(declare-fun res!2077871 () Bool)

(assert (=> b!4867557 (= res!2077871 (not ((_ is Leaf!24295) (right!40954 (left!40624 (c!827478 input!661))))))))

(assert (=> b!4867557 (=> res!2077871 e!3043070)))

(declare-fun b!4867558 () Bool)

(assert (=> b!4867558 (= e!3043070 (inv!71844 (right!40954 (left!40624 (c!827478 input!661)))))))

(assert (= (and d!1562740 c!827900) b!4867556))

(assert (= (and d!1562740 (not c!827900)) b!4867557))

(assert (= (and b!4867557 (not res!2077871)) b!4867558))

(declare-fun m!5866844 () Bool)

(assert (=> b!4867556 m!5866844))

(declare-fun m!5866846 () Bool)

(assert (=> b!4867558 m!5866846))

(assert (=> b!4866513 d!1562740))

(declare-fun b!4867560 () Bool)

(declare-fun e!3043072 () tuple2!59766)

(declare-fun lt!1994608 () Option!13777)

(declare-fun lt!1994609 () tuple2!59766)

(assert (=> b!4867560 (= e!3043072 (tuple2!59767 (Cons!55933 (_1!33189 (v!49688 lt!1994608)) (_1!33186 lt!1994609)) (_2!33186 lt!1994609)))))

(assert (=> b!4867560 (= lt!1994609 (lexList!2101 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1994608))))))

(declare-fun b!4867561 () Bool)

(declare-fun e!3043073 () Bool)

(declare-fun e!3043071 () Bool)

(assert (=> b!4867561 (= e!3043073 e!3043071)))

(declare-fun res!2077872 () Bool)

(declare-fun lt!1994610 () tuple2!59766)

(assert (=> b!4867561 (= res!2077872 (< (size!36861 (_2!33186 lt!1994610)) (size!36861 (_2!33189 (v!49688 lt!1993956)))))))

(assert (=> b!4867561 (=> (not res!2077872) (not e!3043071))))

(declare-fun b!4867562 () Bool)

(assert (=> b!4867562 (= e!3043071 (not (isEmpty!29918 (_1!33186 lt!1994610))))))

(declare-fun b!4867563 () Bool)

(assert (=> b!4867563 (= e!3043072 (tuple2!59767 Nil!55933 (_2!33189 (v!49688 lt!1993956))))))

(declare-fun b!4867559 () Bool)

(assert (=> b!4867559 (= e!3043073 (= (_2!33186 lt!1994610) (_2!33189 (v!49688 lt!1993956))))))

(declare-fun d!1562742 () Bool)

(assert (=> d!1562742 e!3043073))

(declare-fun c!827902 () Bool)

(assert (=> d!1562742 (= c!827902 (> (size!36862 (_1!33186 lt!1994610)) 0))))

(assert (=> d!1562742 (= lt!1994610 e!3043072)))

(declare-fun c!827901 () Bool)

(assert (=> d!1562742 (= c!827901 ((_ is Some!13776) lt!1994608))))

(assert (=> d!1562742 (= lt!1994608 (maxPrefix!4547 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1993956))))))

(assert (=> d!1562742 (= (lexList!2101 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1993956))) lt!1994610)))

(assert (= (and d!1562742 c!827901) b!4867560))

(assert (= (and d!1562742 (not c!827901)) b!4867563))

(assert (= (and d!1562742 c!827902) b!4867561))

(assert (= (and d!1562742 (not c!827902)) b!4867559))

(assert (= (and b!4867561 res!2077872) b!4867562))

(declare-fun m!5866848 () Bool)

(assert (=> b!4867560 m!5866848))

(declare-fun m!5866850 () Bool)

(assert (=> b!4867561 m!5866850))

(declare-fun m!5866852 () Bool)

(assert (=> b!4867561 m!5866852))

(declare-fun m!5866854 () Bool)

(assert (=> b!4867562 m!5866854))

(declare-fun m!5866856 () Bool)

(assert (=> d!1562742 m!5866856))

(declare-fun m!5866858 () Bool)

(assert (=> d!1562742 m!5866858))

(assert (=> b!4866070 d!1562742))

(declare-fun b!4867566 () Bool)

(declare-fun res!2077873 () Bool)

(declare-fun e!3043074 () Bool)

(assert (=> b!4867566 (=> (not res!2077873) (not e!3043074))))

(declare-fun lt!1994611 () List!56055)

(assert (=> b!4867566 (= res!2077873 (= (size!36861 lt!1994611) (+ (size!36861 (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993718))))) (size!36861 (list!17483 (right!40954 (c!827478 (_2!33187 lt!1993718))))))))))

(declare-fun b!4867564 () Bool)

(declare-fun e!3043075 () List!56055)

(assert (=> b!4867564 (= e!3043075 (list!17483 (right!40954 (c!827478 (_2!33187 lt!1993718)))))))

(declare-fun d!1562744 () Bool)

(assert (=> d!1562744 e!3043074))

(declare-fun res!2077874 () Bool)

(assert (=> d!1562744 (=> (not res!2077874) (not e!3043074))))

(assert (=> d!1562744 (= res!2077874 (= (content!9968 lt!1994611) ((_ map or) (content!9968 (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993718))))) (content!9968 (list!17483 (right!40954 (c!827478 (_2!33187 lt!1993718))))))))))

(assert (=> d!1562744 (= lt!1994611 e!3043075)))

(declare-fun c!827903 () Bool)

(assert (=> d!1562744 (= c!827903 ((_ is Nil!55931) (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993718))))))))

(assert (=> d!1562744 (= (++!12179 (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993718)))) (list!17483 (right!40954 (c!827478 (_2!33187 lt!1993718))))) lt!1994611)))

(declare-fun b!4867567 () Bool)

(assert (=> b!4867567 (= e!3043074 (or (not (= (list!17483 (right!40954 (c!827478 (_2!33187 lt!1993718)))) Nil!55931)) (= lt!1994611 (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993718)))))))))

(declare-fun b!4867565 () Bool)

(assert (=> b!4867565 (= e!3043075 (Cons!55931 (h!62379 (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993718))))) (++!12179 (t!363817 (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993718))))) (list!17483 (right!40954 (c!827478 (_2!33187 lt!1993718)))))))))

(assert (= (and d!1562744 c!827903) b!4867564))

(assert (= (and d!1562744 (not c!827903)) b!4867565))

(assert (= (and d!1562744 res!2077874) b!4867566))

(assert (= (and b!4867566 res!2077873) b!4867567))

(declare-fun m!5866860 () Bool)

(assert (=> b!4867566 m!5866860))

(assert (=> b!4867566 m!5864562))

(declare-fun m!5866862 () Bool)

(assert (=> b!4867566 m!5866862))

(assert (=> b!4867566 m!5864564))

(declare-fun m!5866864 () Bool)

(assert (=> b!4867566 m!5866864))

(declare-fun m!5866866 () Bool)

(assert (=> d!1562744 m!5866866))

(assert (=> d!1562744 m!5864562))

(declare-fun m!5866868 () Bool)

(assert (=> d!1562744 m!5866868))

(assert (=> d!1562744 m!5864564))

(declare-fun m!5866870 () Bool)

(assert (=> d!1562744 m!5866870))

(assert (=> b!4867565 m!5864564))

(declare-fun m!5866872 () Bool)

(assert (=> b!4867565 m!5866872))

(assert (=> b!4866085 d!1562744))

(declare-fun b!4867569 () Bool)

(declare-fun e!3043076 () List!56055)

(declare-fun e!3043077 () List!56055)

(assert (=> b!4867569 (= e!3043076 e!3043077)))

(declare-fun c!827905 () Bool)

(assert (=> b!4867569 (= c!827905 ((_ is Leaf!24295) (left!40624 (c!827478 (_2!33187 lt!1993718)))))))

(declare-fun b!4867571 () Bool)

(assert (=> b!4867571 (= e!3043077 (++!12179 (list!17483 (left!40624 (left!40624 (c!827478 (_2!33187 lt!1993718))))) (list!17483 (right!40954 (left!40624 (c!827478 (_2!33187 lt!1993718)))))))))

(declare-fun b!4867568 () Bool)

(assert (=> b!4867568 (= e!3043076 Nil!55931)))

(declare-fun d!1562746 () Bool)

(declare-fun c!827904 () Bool)

(assert (=> d!1562746 (= c!827904 ((_ is Empty!14569) (left!40624 (c!827478 (_2!33187 lt!1993718)))))))

(assert (=> d!1562746 (= (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993718)))) e!3043076)))

(declare-fun b!4867570 () Bool)

(assert (=> b!4867570 (= e!3043077 (list!17486 (xs!17875 (left!40624 (c!827478 (_2!33187 lt!1993718))))))))

(assert (= (and d!1562746 c!827904) b!4867568))

(assert (= (and d!1562746 (not c!827904)) b!4867569))

(assert (= (and b!4867569 c!827905) b!4867570))

(assert (= (and b!4867569 (not c!827905)) b!4867571))

(declare-fun m!5866874 () Bool)

(assert (=> b!4867571 m!5866874))

(declare-fun m!5866876 () Bool)

(assert (=> b!4867571 m!5866876))

(assert (=> b!4867571 m!5866874))

(assert (=> b!4867571 m!5866876))

(declare-fun m!5866878 () Bool)

(assert (=> b!4867571 m!5866878))

(declare-fun m!5866880 () Bool)

(assert (=> b!4867570 m!5866880))

(assert (=> b!4866085 d!1562746))

(declare-fun b!4867573 () Bool)

(declare-fun e!3043078 () List!56055)

(declare-fun e!3043079 () List!56055)

(assert (=> b!4867573 (= e!3043078 e!3043079)))

(declare-fun c!827907 () Bool)

(assert (=> b!4867573 (= c!827907 ((_ is Leaf!24295) (right!40954 (c!827478 (_2!33187 lt!1993718)))))))

(declare-fun b!4867575 () Bool)

(assert (=> b!4867575 (= e!3043079 (++!12179 (list!17483 (left!40624 (right!40954 (c!827478 (_2!33187 lt!1993718))))) (list!17483 (right!40954 (right!40954 (c!827478 (_2!33187 lt!1993718)))))))))

(declare-fun b!4867572 () Bool)

(assert (=> b!4867572 (= e!3043078 Nil!55931)))

(declare-fun d!1562748 () Bool)

(declare-fun c!827906 () Bool)

(assert (=> d!1562748 (= c!827906 ((_ is Empty!14569) (right!40954 (c!827478 (_2!33187 lt!1993718)))))))

(assert (=> d!1562748 (= (list!17483 (right!40954 (c!827478 (_2!33187 lt!1993718)))) e!3043078)))

(declare-fun b!4867574 () Bool)

(assert (=> b!4867574 (= e!3043079 (list!17486 (xs!17875 (right!40954 (c!827478 (_2!33187 lt!1993718))))))))

(assert (= (and d!1562748 c!827906) b!4867572))

(assert (= (and d!1562748 (not c!827906)) b!4867573))

(assert (= (and b!4867573 c!827907) b!4867574))

(assert (= (and b!4867573 (not c!827907)) b!4867575))

(declare-fun m!5866882 () Bool)

(assert (=> b!4867575 m!5866882))

(declare-fun m!5866884 () Bool)

(assert (=> b!4867575 m!5866884))

(assert (=> b!4867575 m!5866882))

(assert (=> b!4867575 m!5866884))

(declare-fun m!5866886 () Bool)

(assert (=> b!4867575 m!5866886))

(declare-fun m!5866888 () Bool)

(assert (=> b!4867574 m!5866888))

(assert (=> b!4866085 d!1562748))

(declare-fun b!4867576 () Bool)

(declare-fun res!2077875 () Bool)

(declare-fun e!3043080 () Bool)

(assert (=> b!4867576 (=> (not res!2077875) (not e!3043080))))

(assert (=> b!4867576 (= res!2077875 (isBalanced!3953 (left!40625 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4867577 () Bool)

(assert (=> b!4867577 (= e!3043080 (not (isEmpty!29919 (right!40955 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867578 () Bool)

(declare-fun res!2077878 () Bool)

(assert (=> b!4867578 (=> (not res!2077878) (not e!3043080))))

(assert (=> b!4867578 (= res!2077878 (<= (- (height!1926 (left!40625 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))) (height!1926 (right!40955 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))) 1))))

(declare-fun b!4867579 () Bool)

(declare-fun res!2077879 () Bool)

(assert (=> b!4867579 (=> (not res!2077879) (not e!3043080))))

(assert (=> b!4867579 (= res!2077879 (not (isEmpty!29919 (left!40625 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867580 () Bool)

(declare-fun res!2077880 () Bool)

(assert (=> b!4867580 (=> (not res!2077880) (not e!3043080))))

(assert (=> b!4867580 (= res!2077880 (isBalanced!3953 (right!40955 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4867581 () Bool)

(declare-fun e!3043081 () Bool)

(assert (=> b!4867581 (= e!3043081 e!3043080)))

(declare-fun res!2077877 () Bool)

(assert (=> b!4867581 (=> (not res!2077877) (not e!3043080))))

(assert (=> b!4867581 (= res!2077877 (<= (- 1) (- (height!1926 (left!40625 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))) (height!1926 (right!40955 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))))

(declare-fun d!1562750 () Bool)

(declare-fun res!2077876 () Bool)

(assert (=> d!1562750 (=> res!2077876 e!3043081)))

(assert (=> d!1562750 (= res!2077876 (not ((_ is Node!14570) (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562750 (= (isBalanced!3953 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) e!3043081)))

(assert (= (and d!1562750 (not res!2077876)) b!4867581))

(assert (= (and b!4867581 res!2077877) b!4867578))

(assert (= (and b!4867578 res!2077878) b!4867576))

(assert (= (and b!4867576 res!2077875) b!4867580))

(assert (= (and b!4867580 res!2077880) b!4867579))

(assert (= (and b!4867579 res!2077879) b!4867577))

(declare-fun m!5866890 () Bool)

(assert (=> b!4867578 m!5866890))

(declare-fun m!5866892 () Bool)

(assert (=> b!4867578 m!5866892))

(declare-fun m!5866894 () Bool)

(assert (=> b!4867577 m!5866894))

(assert (=> b!4867581 m!5866890))

(assert (=> b!4867581 m!5866892))

(declare-fun m!5866896 () Bool)

(assert (=> b!4867579 m!5866896))

(declare-fun m!5866898 () Bool)

(assert (=> b!4867576 m!5866898))

(declare-fun m!5866900 () Bool)

(assert (=> b!4867580 m!5866900))

(assert (=> b!4866339 d!1562750))

(declare-fun d!1562752 () Bool)

(assert (=> d!1562752 (= (inv!71845 (xs!17875 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) (<= (size!36861 (innerList!14657 (xs!17875 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) 2147483647))))

(declare-fun bs!1174389 () Bool)

(assert (= bs!1174389 d!1562752))

(declare-fun m!5866902 () Bool)

(assert (=> bs!1174389 m!5866902))

(assert (=> b!4866505 d!1562752))

(declare-fun d!1562754 () Bool)

(assert (=> d!1562754 (= (isEmpty!29923 lt!1994098) (not ((_ is Some!13776) lt!1994098)))))

(assert (=> d!1562116 d!1562754))

(declare-fun d!1562756 () Bool)

(declare-fun e!3043082 () Bool)

(assert (=> d!1562756 e!3043082))

(declare-fun res!2077883 () Bool)

(assert (=> d!1562756 (=> res!2077883 e!3043082)))

(declare-fun lt!1994612 () Bool)

(assert (=> d!1562756 (= res!2077883 (not lt!1994612))))

(declare-fun e!3043083 () Bool)

(assert (=> d!1562756 (= lt!1994612 e!3043083)))

(declare-fun res!2077884 () Bool)

(assert (=> d!1562756 (=> res!2077884 e!3043083)))

(assert (=> d!1562756 (= res!2077884 ((_ is Nil!55931) lt!1993715))))

(assert (=> d!1562756 (= (isPrefix!4764 lt!1993715 lt!1993715) lt!1994612)))

(declare-fun b!4867585 () Bool)

(assert (=> b!4867585 (= e!3043082 (>= (size!36861 lt!1993715) (size!36861 lt!1993715)))))

(declare-fun b!4867584 () Bool)

(declare-fun e!3043084 () Bool)

(assert (=> b!4867584 (= e!3043084 (isPrefix!4764 (tail!9557 lt!1993715) (tail!9557 lt!1993715)))))

(declare-fun b!4867582 () Bool)

(assert (=> b!4867582 (= e!3043083 e!3043084)))

(declare-fun res!2077882 () Bool)

(assert (=> b!4867582 (=> (not res!2077882) (not e!3043084))))

(assert (=> b!4867582 (= res!2077882 (not ((_ is Nil!55931) lt!1993715)))))

(declare-fun b!4867583 () Bool)

(declare-fun res!2077881 () Bool)

(assert (=> b!4867583 (=> (not res!2077881) (not e!3043084))))

(assert (=> b!4867583 (= res!2077881 (= (head!10411 lt!1993715) (head!10411 lt!1993715)))))

(assert (= (and d!1562756 (not res!2077884)) b!4867582))

(assert (= (and b!4867582 res!2077882) b!4867583))

(assert (= (and b!4867583 res!2077881) b!4867584))

(assert (= (and d!1562756 (not res!2077883)) b!4867585))

(assert (=> b!4867585 m!5864078))

(assert (=> b!4867585 m!5864078))

(declare-fun m!5866904 () Bool)

(assert (=> b!4867584 m!5866904))

(assert (=> b!4867584 m!5866904))

(assert (=> b!4867584 m!5866904))

(assert (=> b!4867584 m!5866904))

(declare-fun m!5866906 () Bool)

(assert (=> b!4867584 m!5866906))

(declare-fun m!5866908 () Bool)

(assert (=> b!4867583 m!5866908))

(assert (=> b!4867583 m!5866908))

(assert (=> d!1562116 d!1562756))

(declare-fun d!1562758 () Bool)

(assert (=> d!1562758 (isPrefix!4764 lt!1993715 lt!1993715)))

(declare-fun lt!1994613 () Unit!145938)

(assert (=> d!1562758 (= lt!1994613 (choose!35582 lt!1993715 lt!1993715))))

(assert (=> d!1562758 (= (lemmaIsPrefixRefl!3161 lt!1993715 lt!1993715) lt!1994613)))

(declare-fun bs!1174390 () Bool)

(assert (= bs!1174390 d!1562758))

(assert (=> bs!1174390 m!5865000))

(declare-fun m!5866910 () Bool)

(assert (=> bs!1174390 m!5866910))

(assert (=> d!1562116 d!1562758))

(assert (=> d!1562116 d!1561864))

(declare-fun d!1562760 () Bool)

(assert (=> d!1562760 (= (get!19223 lt!1994098) (v!49688 lt!1994098))))

(assert (=> b!4866411 d!1562760))

(declare-fun d!1562762 () Bool)

(assert (=> d!1562762 (= (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994098))))) (dynLambda!22452 (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098))))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994098))))))))

(declare-fun b_lambda!193555 () Bool)

(assert (=> (not b_lambda!193555) (not d!1562762)))

(declare-fun tb!257793 () Bool)

(declare-fun t!363944 () Bool)

(assert (=> (and b!4865491 (= (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))) t!363944) tb!257793))

(declare-fun result!320928 () Bool)

(assert (=> tb!257793 (= result!320928 (inv!21 (dynLambda!22452 (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098))))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994098)))))))))

(declare-fun m!5866912 () Bool)

(assert (=> tb!257793 m!5866912))

(assert (=> d!1562762 t!363944))

(declare-fun b_and!342739 () Bool)

(assert (= b_and!342733 (and (=> t!363944 result!320928) b_and!342739)))

(declare-fun tb!257795 () Bool)

(declare-fun t!363946 () Bool)

(assert (=> (and b!4865754 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))) t!363946) tb!257795))

(declare-fun result!320930 () Bool)

(assert (= result!320930 result!320928))

(assert (=> d!1562762 t!363946))

(declare-fun b_and!342741 () Bool)

(assert (= b_and!342735 (and (=> t!363946 result!320930) b_and!342741)))

(declare-fun tb!257797 () Bool)

(declare-fun t!363948 () Bool)

(assert (=> (and b!4866539 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))) t!363948) tb!257797))

(declare-fun result!320932 () Bool)

(assert (= result!320932 result!320928))

(assert (=> d!1562762 t!363948))

(declare-fun b_and!342743 () Bool)

(assert (= b_and!342737 (and (=> t!363948 result!320932) b_and!342743)))

(assert (=> d!1562762 m!5864976))

(declare-fun m!5866914 () Bool)

(assert (=> d!1562762 m!5866914))

(assert (=> b!4866411 d!1562762))

(declare-fun d!1562764 () Bool)

(assert (=> d!1562764 (= (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994098)))) (fromListB!2677 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994098)))))))

(declare-fun bs!1174391 () Bool)

(assert (= bs!1174391 d!1562764))

(declare-fun m!5866916 () Bool)

(assert (=> bs!1174391 m!5866916))

(assert (=> b!4866411 d!1562764))

(declare-fun d!1562766 () Bool)

(declare-fun lt!1994614 () Int)

(assert (=> d!1562766 (>= lt!1994614 0)))

(declare-fun e!3043086 () Int)

(assert (=> d!1562766 (= lt!1994614 e!3043086)))

(declare-fun c!827908 () Bool)

(assert (=> d!1562766 (= c!827908 ((_ is Nil!55931) (list!17483 (c!827478 input!661))))))

(assert (=> d!1562766 (= (size!36861 (list!17483 (c!827478 input!661))) lt!1994614)))

(declare-fun b!4867586 () Bool)

(assert (=> b!4867586 (= e!3043086 0)))

(declare-fun b!4867587 () Bool)

(assert (=> b!4867587 (= e!3043086 (+ 1 (size!36861 (t!363817 (list!17483 (c!827478 input!661))))))))

(assert (= (and d!1562766 c!827908) b!4867586))

(assert (= (and d!1562766 (not c!827908)) b!4867587))

(declare-fun m!5866918 () Bool)

(assert (=> b!4867587 m!5866918))

(assert (=> d!1562122 d!1562766))

(assert (=> d!1562122 d!1562080))

(declare-fun d!1562768 () Bool)

(assert (=> d!1562768 (= (inv!71845 (xs!17875 (left!40624 (c!827478 input!661)))) (<= (size!36861 (innerList!14657 (xs!17875 (left!40624 (c!827478 input!661))))) 2147483647))))

(declare-fun bs!1174392 () Bool)

(assert (= bs!1174392 d!1562768))

(declare-fun m!5866920 () Bool)

(assert (=> bs!1174392 m!5866920))

(assert (=> b!4866514 d!1562768))

(declare-fun lt!1994618 () Option!13777)

(declare-fun d!1562770 () Bool)

(assert (=> d!1562770 (= lt!1994618 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 input!661)))))

(declare-fun e!3043087 () Option!13777)

(assert (=> d!1562770 (= lt!1994618 e!3043087)))

(declare-fun c!827909 () Bool)

(assert (=> d!1562770 (= c!827909 (and ((_ is Cons!55932) (t!363818 rules!1248)) ((_ is Nil!55932) (t!363818 (t!363818 rules!1248)))))))

(declare-fun lt!1994617 () Unit!145938)

(declare-fun lt!1994616 () Unit!145938)

(assert (=> d!1562770 (= lt!1994617 lt!1994616)))

(assert (=> d!1562770 (isPrefix!4764 (list!17479 input!661) (list!17479 input!661))))

(assert (=> d!1562770 (= lt!1994616 (lemmaIsPrefixRefl!3161 (list!17479 input!661) (list!17479 input!661)))))

(assert (=> d!1562770 (rulesValidInductive!3019 thiss!11777 (t!363818 rules!1248))))

(assert (=> d!1562770 (= (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 input!661)) lt!1994618)))

(declare-fun bm!338047 () Bool)

(declare-fun call!338052 () Option!13777)

(assert (=> bm!338047 (= call!338052 (maxPrefixOneRuleZipper!222 thiss!11777 (h!62380 (t!363818 rules!1248)) (list!17479 input!661)))))

(declare-fun b!4867588 () Bool)

(assert (=> b!4867588 (= e!3043087 call!338052)))

(declare-fun b!4867589 () Bool)

(declare-fun lt!1994619 () Option!13777)

(declare-fun lt!1994615 () Option!13777)

(assert (=> b!4867589 (= e!3043087 (ite (and ((_ is None!13776) lt!1994619) ((_ is None!13776) lt!1994615)) None!13776 (ite ((_ is None!13776) lt!1994615) lt!1994619 (ite ((_ is None!13776) lt!1994619) lt!1994615 (ite (>= (size!36854 (_1!33189 (v!49688 lt!1994619))) (size!36854 (_1!33189 (v!49688 lt!1994615)))) lt!1994619 lt!1994615)))))))

(assert (=> b!4867589 (= lt!1994619 call!338052)))

(assert (=> b!4867589 (= lt!1994615 (maxPrefixZipper!561 thiss!11777 (t!363818 (t!363818 rules!1248)) (list!17479 input!661)))))

(assert (= (and d!1562770 c!827909) b!4867588))

(assert (= (and d!1562770 (not c!827909)) b!4867589))

(assert (= (or b!4867588 b!4867589) bm!338047))

(assert (=> d!1562770 m!5863822))

(assert (=> d!1562770 m!5864578))

(assert (=> d!1562770 m!5863822))

(assert (=> d!1562770 m!5863822))

(assert (=> d!1562770 m!5864172))

(assert (=> d!1562770 m!5863822))

(assert (=> d!1562770 m!5863822))

(assert (=> d!1562770 m!5864174))

(assert (=> d!1562770 m!5864502))

(assert (=> bm!338047 m!5863822))

(declare-fun m!5866922 () Bool)

(assert (=> bm!338047 m!5866922))

(assert (=> b!4867589 m!5863822))

(assert (=> b!4867589 m!5866466))

(assert (=> b!4865777 d!1562770))

(declare-fun d!1562772 () Bool)

(assert (=> d!1562772 (= (list!17479 (_2!33187 lt!1994094)) (list!17483 (c!827478 (_2!33187 lt!1994094))))))

(declare-fun bs!1174393 () Bool)

(assert (= bs!1174393 d!1562772))

(declare-fun m!5866924 () Bool)

(assert (=> bs!1174393 m!5866924))

(assert (=> b!4866370 d!1562772))

(declare-fun b!4867591 () Bool)

(declare-fun e!3043089 () tuple2!59766)

(declare-fun lt!1994620 () Option!13777)

(declare-fun lt!1994621 () tuple2!59766)

(assert (=> b!4867591 (= e!3043089 (tuple2!59767 (Cons!55933 (_1!33189 (v!49688 lt!1994620)) (_1!33186 lt!1994621)) (_2!33186 lt!1994621)))))

(assert (=> b!4867591 (= lt!1994621 (lexList!2101 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1994620))))))

(declare-fun b!4867592 () Bool)

(declare-fun e!3043090 () Bool)

(declare-fun e!3043088 () Bool)

(assert (=> b!4867592 (= e!3043090 e!3043088)))

(declare-fun res!2077885 () Bool)

(declare-fun lt!1994622 () tuple2!59766)

(assert (=> b!4867592 (= res!2077885 (< (size!36861 (_2!33186 lt!1994622)) (size!36861 (list!17479 (_2!33185 (v!49684 lt!1993770))))))))

(assert (=> b!4867592 (=> (not res!2077885) (not e!3043088))))

(declare-fun b!4867593 () Bool)

(assert (=> b!4867593 (= e!3043088 (not (isEmpty!29918 (_1!33186 lt!1994622))))))

(declare-fun b!4867594 () Bool)

(assert (=> b!4867594 (= e!3043089 (tuple2!59767 Nil!55933 (list!17479 (_2!33185 (v!49684 lt!1993770)))))))

(declare-fun b!4867590 () Bool)

(assert (=> b!4867590 (= e!3043090 (= (_2!33186 lt!1994622) (list!17479 (_2!33185 (v!49684 lt!1993770)))))))

(declare-fun d!1562774 () Bool)

(assert (=> d!1562774 e!3043090))

(declare-fun c!827911 () Bool)

(assert (=> d!1562774 (= c!827911 (> (size!36862 (_1!33186 lt!1994622)) 0))))

(assert (=> d!1562774 (= lt!1994622 e!3043089)))

(declare-fun c!827910 () Bool)

(assert (=> d!1562774 (= c!827910 ((_ is Some!13776) lt!1994620))))

(assert (=> d!1562774 (= lt!1994620 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993770)))))))

(assert (=> d!1562774 (= (lexList!2101 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993770)))) lt!1994622)))

(assert (= (and d!1562774 c!827910) b!4867591))

(assert (= (and d!1562774 (not c!827910)) b!4867594))

(assert (= (and d!1562774 c!827911) b!4867592))

(assert (= (and d!1562774 (not c!827911)) b!4867590))

(assert (= (and b!4867592 res!2077885) b!4867593))

(declare-fun m!5866926 () Bool)

(assert (=> b!4867591 m!5866926))

(declare-fun m!5866928 () Bool)

(assert (=> b!4867592 m!5866928))

(assert (=> b!4867592 m!5864920))

(declare-fun m!5866930 () Bool)

(assert (=> b!4867592 m!5866930))

(declare-fun m!5866932 () Bool)

(assert (=> b!4867593 m!5866932))

(declare-fun m!5866934 () Bool)

(assert (=> d!1562774 m!5866934))

(assert (=> d!1562774 m!5864920))

(declare-fun m!5866936 () Bool)

(assert (=> d!1562774 m!5866936))

(assert (=> b!4866370 d!1562774))

(declare-fun d!1562776 () Bool)

(assert (=> d!1562776 (= (list!17479 (_2!33185 (v!49684 lt!1993770))) (list!17483 (c!827478 (_2!33185 (v!49684 lt!1993770)))))))

(declare-fun bs!1174394 () Bool)

(assert (= bs!1174394 d!1562776))

(declare-fun m!5866938 () Bool)

(assert (=> bs!1174394 m!5866938))

(assert (=> b!4866370 d!1562776))

(declare-fun d!1562778 () Bool)

(declare-fun e!3043092 () Bool)

(assert (=> d!1562778 e!3043092))

(declare-fun res!2077886 () Bool)

(assert (=> d!1562778 (=> (not res!2077886) (not e!3043092))))

(declare-fun lt!1994623 () List!56055)

(assert (=> d!1562778 (= res!2077886 (= ((_ map implies) (content!9968 lt!1994623) (content!9968 (t!363817 (list!17479 totalInput!332)))) ((as const (InoxSet C!26408)) true)))))

(declare-fun e!3043095 () List!56055)

(assert (=> d!1562778 (= lt!1994623 e!3043095)))

(declare-fun c!827912 () Bool)

(assert (=> d!1562778 (= c!827912 ((_ is Nil!55931) (t!363817 (list!17479 totalInput!332))))))

(assert (=> d!1562778 (= (drop!2200 (t!363817 (list!17479 totalInput!332)) (- (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) 1)) lt!1994623)))

(declare-fun b!4867595 () Bool)

(declare-fun e!3043093 () Int)

(declare-fun call!338053 () Int)

(assert (=> b!4867595 (= e!3043093 call!338053)))

(declare-fun b!4867596 () Bool)

(assert (=> b!4867596 (= e!3043092 (= (size!36861 lt!1994623) e!3043093))))

(declare-fun c!827915 () Bool)

(assert (=> b!4867596 (= c!827915 (<= (- (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) 1) 0))))

(declare-fun b!4867597 () Bool)

(assert (=> b!4867597 (= e!3043095 Nil!55931)))

(declare-fun b!4867598 () Bool)

(declare-fun e!3043091 () List!56055)

(assert (=> b!4867598 (= e!3043091 (drop!2200 (t!363817 (t!363817 (list!17479 totalInput!332))) (- (- (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) 1) 1)))))

(declare-fun b!4867599 () Bool)

(assert (=> b!4867599 (= e!3043091 (t!363817 (list!17479 totalInput!332)))))

(declare-fun b!4867600 () Bool)

(assert (=> b!4867600 (= e!3043095 e!3043091)))

(declare-fun c!827913 () Bool)

(assert (=> b!4867600 (= c!827913 (<= (- (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) 1) 0))))

(declare-fun b!4867601 () Bool)

(declare-fun e!3043094 () Int)

(assert (=> b!4867601 (= e!3043094 (- call!338053 (- (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) 1)))))

(declare-fun b!4867602 () Bool)

(assert (=> b!4867602 (= e!3043094 0)))

(declare-fun b!4867603 () Bool)

(assert (=> b!4867603 (= e!3043093 e!3043094)))

(declare-fun c!827914 () Bool)

(assert (=> b!4867603 (= c!827914 (>= (- (- (size!36861 (list!17479 totalInput!332)) (size!36861 lt!1993715)) 1) call!338053))))

(declare-fun bm!338048 () Bool)

(assert (=> bm!338048 (= call!338053 (size!36861 (t!363817 (list!17479 totalInput!332))))))

(assert (= (and d!1562778 c!827912) b!4867597))

(assert (= (and d!1562778 (not c!827912)) b!4867600))

(assert (= (and b!4867600 c!827913) b!4867599))

(assert (= (and b!4867600 (not c!827913)) b!4867598))

(assert (= (and d!1562778 res!2077886) b!4867596))

(assert (= (and b!4867596 c!827915) b!4867595))

(assert (= (and b!4867596 (not c!827915)) b!4867603))

(assert (= (and b!4867603 c!827914) b!4867602))

(assert (= (and b!4867603 (not c!827914)) b!4867601))

(assert (= (or b!4867595 b!4867603 b!4867601) bm!338048))

(declare-fun m!5866940 () Bool)

(assert (=> d!1562778 m!5866940))

(declare-fun m!5866942 () Bool)

(assert (=> d!1562778 m!5866942))

(declare-fun m!5866944 () Bool)

(assert (=> b!4867596 m!5866944))

(declare-fun m!5866946 () Bool)

(assert (=> b!4867598 m!5866946))

(assert (=> bm!338048 m!5864524))

(assert (=> b!4866127 d!1562778))

(declare-fun b!4867607 () Bool)

(declare-fun e!3043097 () List!56057)

(assert (=> b!4867607 (= e!3043097 (++!12183 (list!17484 (left!40625 (c!827480 (_1!33187 lt!1993769)))) (list!17484 (right!40955 (c!827480 (_1!33187 lt!1993769))))))))

(declare-fun b!4867604 () Bool)

(declare-fun e!3043096 () List!56057)

(assert (=> b!4867604 (= e!3043096 Nil!55933)))

(declare-fun d!1562780 () Bool)

(declare-fun c!827916 () Bool)

(assert (=> d!1562780 (= c!827916 ((_ is Empty!14570) (c!827480 (_1!33187 lt!1993769))))))

(assert (=> d!1562780 (= (list!17484 (c!827480 (_1!33187 lt!1993769))) e!3043096)))

(declare-fun b!4867606 () Bool)

(assert (=> b!4867606 (= e!3043097 (list!17488 (xs!17876 (c!827480 (_1!33187 lt!1993769)))))))

(declare-fun b!4867605 () Bool)

(assert (=> b!4867605 (= e!3043096 e!3043097)))

(declare-fun c!827917 () Bool)

(assert (=> b!4867605 (= c!827917 ((_ is Leaf!24296) (c!827480 (_1!33187 lt!1993769))))))

(assert (= (and d!1562780 c!827916) b!4867604))

(assert (= (and d!1562780 (not c!827916)) b!4867605))

(assert (= (and b!4867605 c!827917) b!4867606))

(assert (= (and b!4867605 (not c!827917)) b!4867607))

(declare-fun m!5866948 () Bool)

(assert (=> b!4867607 m!5866948))

(declare-fun m!5866950 () Bool)

(assert (=> b!4867607 m!5866950))

(assert (=> b!4867607 m!5866948))

(assert (=> b!4867607 m!5866950))

(declare-fun m!5866952 () Bool)

(assert (=> b!4867607 m!5866952))

(declare-fun m!5866954 () Bool)

(assert (=> b!4867606 m!5866954))

(assert (=> d!1562008 d!1562780))

(declare-fun d!1562782 () Bool)

(assert (=> d!1562782 (= (isEmpty!29918 (list!17480 (_1!33187 lt!1993769))) ((_ is Nil!55933) (list!17480 (_1!33187 lt!1993769))))))

(assert (=> d!1562020 d!1562782))

(assert (=> d!1562020 d!1562008))

(declare-fun d!1562784 () Bool)

(declare-fun lt!1994624 () Bool)

(assert (=> d!1562784 (= lt!1994624 (isEmpty!29918 (list!17484 (c!827480 (_1!33187 lt!1993769)))))))

(assert (=> d!1562784 (= lt!1994624 (= (size!36863 (c!827480 (_1!33187 lt!1993769))) 0))))

(assert (=> d!1562784 (= (isEmpty!29919 (c!827480 (_1!33187 lt!1993769))) lt!1994624)))

(declare-fun bs!1174395 () Bool)

(assert (= bs!1174395 d!1562784))

(assert (=> bs!1174395 m!5864550))

(assert (=> bs!1174395 m!5864550))

(declare-fun m!5866956 () Bool)

(assert (=> bs!1174395 m!5866956))

(assert (=> bs!1174395 m!5864714))

(assert (=> d!1562020 d!1562784))

(declare-fun d!1562786 () Bool)

(assert (=> d!1562786 (= (height!1926 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) (ite ((_ is Empty!14570) (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) 0 (ite ((_ is Leaf!24296) (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) 1 (cheight!14781 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))))

(assert (=> b!4866344 d!1562786))

(declare-fun d!1562788 () Bool)

(assert (=> d!1562788 (= (height!1926 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) (ite ((_ is Empty!14570) (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) 0 (ite ((_ is Leaf!24296) (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) 1 (cheight!14781 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))))

(assert (=> b!4866344 d!1562788))

(declare-fun d!1562790 () Bool)

(assert (=> d!1562790 (= (height!1925 (left!40624 (c!827478 totalInput!332))) (ite ((_ is Empty!14569) (left!40624 (c!827478 totalInput!332))) 0 (ite ((_ is Leaf!24295) (left!40624 (c!827478 totalInput!332))) 1 (cheight!14780 (left!40624 (c!827478 totalInput!332))))))))

(assert (=> b!4866400 d!1562790))

(declare-fun d!1562792 () Bool)

(assert (=> d!1562792 (= (height!1925 (right!40954 (c!827478 totalInput!332))) (ite ((_ is Empty!14569) (right!40954 (c!827478 totalInput!332))) 0 (ite ((_ is Leaf!24295) (right!40954 (c!827478 totalInput!332))) 1 (cheight!14780 (right!40954 (c!827478 totalInput!332))))))))

(assert (=> b!4866400 d!1562792))

(declare-fun d!1562794 () Bool)

(declare-fun c!827918 () Bool)

(assert (=> d!1562794 (= c!827918 ((_ is Nil!55931) (t!363817 lt!1993773)))))

(declare-fun e!3043098 () (InoxSet C!26408))

(assert (=> d!1562794 (= (content!9968 (t!363817 lt!1993773)) e!3043098)))

(declare-fun b!4867608 () Bool)

(assert (=> b!4867608 (= e!3043098 ((as const (Array C!26408 Bool)) false))))

(declare-fun b!4867609 () Bool)

(assert (=> b!4867609 (= e!3043098 ((_ map or) (store ((as const (Array C!26408 Bool)) false) (h!62379 (t!363817 lt!1993773)) true) (content!9968 (t!363817 (t!363817 lt!1993773)))))))

(assert (= (and d!1562794 c!827918) b!4867608))

(assert (= (and d!1562794 (not c!827918)) b!4867609))

(declare-fun m!5866958 () Bool)

(assert (=> b!4867609 m!5866958))

(declare-fun m!5866960 () Bool)

(assert (=> b!4867609 m!5866960))

(assert (=> b!4866489 d!1562794))

(declare-fun d!1562796 () Bool)

(declare-fun res!2077887 () Bool)

(declare-fun e!3043099 () Bool)

(assert (=> d!1562796 (=> (not res!2077887) (not e!3043099))))

(assert (=> d!1562796 (= res!2077887 (<= (size!36861 (list!17486 (xs!17875 (left!40624 (c!827478 totalInput!332))))) 512))))

(assert (=> d!1562796 (= (inv!71844 (left!40624 (c!827478 totalInput!332))) e!3043099)))

(declare-fun b!4867610 () Bool)

(declare-fun res!2077888 () Bool)

(assert (=> b!4867610 (=> (not res!2077888) (not e!3043099))))

(assert (=> b!4867610 (= res!2077888 (= (csize!29369 (left!40624 (c!827478 totalInput!332))) (size!36861 (list!17486 (xs!17875 (left!40624 (c!827478 totalInput!332)))))))))

(declare-fun b!4867611 () Bool)

(assert (=> b!4867611 (= e!3043099 (and (> (csize!29369 (left!40624 (c!827478 totalInput!332))) 0) (<= (csize!29369 (left!40624 (c!827478 totalInput!332))) 512)))))

(assert (= (and d!1562796 res!2077887) b!4867610))

(assert (= (and b!4867610 res!2077888) b!4867611))

(assert (=> d!1562796 m!5866828))

(assert (=> d!1562796 m!5866828))

(declare-fun m!5866962 () Bool)

(assert (=> d!1562796 m!5866962))

(assert (=> b!4867610 m!5866828))

(assert (=> b!4867610 m!5866828))

(assert (=> b!4867610 m!5866962))

(assert (=> b!4866480 d!1562796))

(assert (=> d!1562034 d!1562128))

(assert (=> d!1562034 d!1561818))

(declare-fun d!1562798 () Bool)

(declare-fun lt!1994625 () Int)

(assert (=> d!1562798 (= lt!1994625 (size!36861 (list!17483 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))

(assert (=> d!1562798 (= lt!1994625 (ite ((_ is Empty!14569) (c!827478 (_2!33185 (v!49684 lt!1993717)))) 0 (ite ((_ is Leaf!24295) (c!827478 (_2!33185 (v!49684 lt!1993717)))) (csize!29369 (c!827478 (_2!33185 (v!49684 lt!1993717)))) (csize!29368 (c!827478 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562798 (= (size!36864 (c!827478 (_2!33185 (v!49684 lt!1993717)))) lt!1994625)))

(declare-fun bs!1174396 () Bool)

(assert (= bs!1174396 d!1562798))

(assert (=> bs!1174396 m!5864018))

(assert (=> bs!1174396 m!5864018))

(declare-fun m!5866964 () Bool)

(assert (=> bs!1174396 m!5866964))

(assert (=> d!1562034 d!1562798))

(declare-fun d!1562800 () Bool)

(declare-fun lt!1994628 () Bool)

(assert (=> d!1562800 (= lt!1994628 (isEmpty!29928 (list!17483 (left!40624 (c!827478 input!661)))))))

(assert (=> d!1562800 (= lt!1994628 (= (size!36864 (left!40624 (c!827478 input!661))) 0))))

(assert (=> d!1562800 (= (isEmpty!29927 (left!40624 (c!827478 input!661))) lt!1994628)))

(declare-fun bs!1174397 () Bool)

(assert (= bs!1174397 d!1562800))

(assert (=> bs!1174397 m!5864856))

(assert (=> bs!1174397 m!5864856))

(declare-fun m!5866966 () Bool)

(assert (=> bs!1174397 m!5866966))

(assert (=> bs!1174397 m!5864528))

(assert (=> b!4866501 d!1562800))

(declare-fun d!1562802 () Bool)

(assert (=> d!1562802 (= (isEmpty!29924 lt!1993832) (not ((_ is Some!13774) lt!1993832)))))

(assert (=> d!1561996 d!1562802))

(declare-fun d!1562804 () Bool)

(assert (=> d!1562804 (= (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098)))) (list!17483 (c!827478 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))))))

(declare-fun bs!1174398 () Bool)

(assert (= bs!1174398 d!1562804))

(declare-fun m!5866968 () Bool)

(assert (=> bs!1174398 m!5866968))

(assert (=> b!4866414 d!1562804))

(declare-fun d!1562806 () Bool)

(declare-fun lt!1994629 () BalanceConc!28580)

(assert (=> d!1562806 (= (list!17479 lt!1994629) (originalCharacters!8353 (_1!33189 (get!19223 lt!1994098))))))

(assert (=> d!1562806 (= lt!1994629 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098))))) (value!257997 (_1!33189 (get!19223 lt!1994098)))))))

(assert (=> d!1562806 (= (charsOf!5335 (_1!33189 (get!19223 lt!1994098))) lt!1994629)))

(declare-fun b_lambda!193557 () Bool)

(assert (=> (not b_lambda!193557) (not d!1562806)))

(declare-fun t!363953 () Bool)

(declare-fun tb!257799 () Bool)

(assert (=> (and b!4865491 (= (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))) t!363953) tb!257799))

(declare-fun b!4867612 () Bool)

(declare-fun e!3043100 () Bool)

(declare-fun tp!1369533 () Bool)

(assert (=> b!4867612 (= e!3043100 (and (inv!71837 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098))))) (value!257997 (_1!33189 (get!19223 lt!1994098)))))) tp!1369533))))

(declare-fun result!320934 () Bool)

(assert (=> tb!257799 (= result!320934 (and (inv!71839 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098))))) (value!257997 (_1!33189 (get!19223 lt!1994098))))) e!3043100))))

(assert (= tb!257799 b!4867612))

(declare-fun m!5866970 () Bool)

(assert (=> b!4867612 m!5866970))

(declare-fun m!5866972 () Bool)

(assert (=> tb!257799 m!5866972))

(assert (=> d!1562806 t!363953))

(declare-fun b_and!342745 () Bool)

(assert (= b_and!342679 (and (=> t!363953 result!320934) b_and!342745)))

(declare-fun tb!257801 () Bool)

(declare-fun t!363955 () Bool)

(assert (=> (and b!4865754 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))) t!363955) tb!257801))

(declare-fun result!320936 () Bool)

(assert (= result!320936 result!320934))

(assert (=> d!1562806 t!363955))

(declare-fun b_and!342747 () Bool)

(assert (= b_and!342681 (and (=> t!363955 result!320936) b_and!342747)))

(declare-fun t!363957 () Bool)

(declare-fun tb!257803 () Bool)

(assert (=> (and b!4866539 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))) t!363957) tb!257803))

(declare-fun result!320938 () Bool)

(assert (= result!320938 result!320934))

(assert (=> d!1562806 t!363957))

(declare-fun b_and!342749 () Bool)

(assert (= b_and!342683 (and (=> t!363957 result!320938) b_and!342749)))

(declare-fun m!5866974 () Bool)

(assert (=> d!1562806 m!5866974))

(declare-fun m!5866976 () Bool)

(assert (=> d!1562806 m!5866976))

(assert (=> b!4866414 d!1562806))

(assert (=> b!4866414 d!1562760))

(declare-fun d!1562808 () Bool)

(declare-fun e!3043101 () Bool)

(assert (=> d!1562808 e!3043101))

(declare-fun res!2077891 () Bool)

(assert (=> d!1562808 (=> res!2077891 e!3043101)))

(declare-fun lt!1994630 () Bool)

(assert (=> d!1562808 (= res!2077891 (not lt!1994630))))

(declare-fun e!3043102 () Bool)

(assert (=> d!1562808 (= lt!1994630 e!3043102)))

(declare-fun res!2077892 () Bool)

(assert (=> d!1562808 (=> res!2077892 e!3043102)))

(assert (=> d!1562808 (= res!2077892 ((_ is Nil!55931) (tail!9557 lt!1993828)))))

(assert (=> d!1562808 (= (isPrefix!4764 (tail!9557 lt!1993828) (tail!9557 lt!1993830)) lt!1994630)))

(declare-fun b!4867616 () Bool)

(assert (=> b!4867616 (= e!3043101 (>= (size!36861 (tail!9557 lt!1993830)) (size!36861 (tail!9557 lt!1993828))))))

(declare-fun b!4867615 () Bool)

(declare-fun e!3043103 () Bool)

(assert (=> b!4867615 (= e!3043103 (isPrefix!4764 (tail!9557 (tail!9557 lt!1993828)) (tail!9557 (tail!9557 lt!1993830))))))

(declare-fun b!4867613 () Bool)

(assert (=> b!4867613 (= e!3043102 e!3043103)))

(declare-fun res!2077890 () Bool)

(assert (=> b!4867613 (=> (not res!2077890) (not e!3043103))))

(assert (=> b!4867613 (= res!2077890 (not ((_ is Nil!55931) (tail!9557 lt!1993830))))))

(declare-fun b!4867614 () Bool)

(declare-fun res!2077889 () Bool)

(assert (=> b!4867614 (=> (not res!2077889) (not e!3043103))))

(assert (=> b!4867614 (= res!2077889 (= (head!10411 (tail!9557 lt!1993828)) (head!10411 (tail!9557 lt!1993830))))))

(assert (= (and d!1562808 (not res!2077892)) b!4867613))

(assert (= (and b!4867613 res!2077890) b!4867614))

(assert (= (and b!4867614 res!2077889) b!4867615))

(assert (= (and d!1562808 (not res!2077891)) b!4867616))

(assert (=> b!4867616 m!5864514))

(declare-fun m!5866978 () Bool)

(assert (=> b!4867616 m!5866978))

(assert (=> b!4867616 m!5864512))

(declare-fun m!5866980 () Bool)

(assert (=> b!4867616 m!5866980))

(assert (=> b!4867615 m!5864512))

(declare-fun m!5866982 () Bool)

(assert (=> b!4867615 m!5866982))

(assert (=> b!4867615 m!5864514))

(declare-fun m!5866984 () Bool)

(assert (=> b!4867615 m!5866984))

(assert (=> b!4867615 m!5866982))

(assert (=> b!4867615 m!5866984))

(declare-fun m!5866986 () Bool)

(assert (=> b!4867615 m!5866986))

(assert (=> b!4867614 m!5864512))

(declare-fun m!5866988 () Bool)

(assert (=> b!4867614 m!5866988))

(assert (=> b!4867614 m!5864514))

(declare-fun m!5866990 () Bool)

(assert (=> b!4867614 m!5866990))

(assert (=> b!4866046 d!1562808))

(declare-fun d!1562810 () Bool)

(assert (=> d!1562810 (= (tail!9557 lt!1993828) (t!363817 lt!1993828))))

(assert (=> b!4866046 d!1562810))

(declare-fun d!1562812 () Bool)

(assert (=> d!1562812 (= (tail!9557 lt!1993830) (t!363817 lt!1993830))))

(assert (=> b!4866046 d!1562812))

(declare-fun d!1562814 () Bool)

(assert (=> d!1562814 (= (isDefined!10844 lt!1994078) (not (isEmpty!29924 lt!1994078)))))

(declare-fun bs!1174399 () Bool)

(assert (= bs!1174399 d!1562814))

(declare-fun m!5866992 () Bool)

(assert (=> bs!1174399 m!5866992))

(assert (=> b!4866317 d!1562814))

(assert (=> d!1562140 d!1562598))

(assert (=> d!1562140 d!1562600))

(declare-fun d!1562816 () Bool)

(declare-fun c!827919 () Bool)

(assert (=> d!1562816 (= c!827919 ((_ is Nil!55931) lt!1993988))))

(declare-fun e!3043104 () (InoxSet C!26408))

(assert (=> d!1562816 (= (content!9968 lt!1993988) e!3043104)))

(declare-fun b!4867617 () Bool)

(assert (=> b!4867617 (= e!3043104 ((as const (Array C!26408 Bool)) false))))

(declare-fun b!4867618 () Bool)

(assert (=> b!4867618 (= e!3043104 ((_ map or) (store ((as const (Array C!26408 Bool)) false) (h!62379 lt!1993988) true) (content!9968 (t!363817 lt!1993988))))))

(assert (= (and d!1562816 c!827919) b!4867617))

(assert (= (and d!1562816 (not c!827919)) b!4867618))

(declare-fun m!5866994 () Bool)

(assert (=> b!4867618 m!5866994))

(declare-fun m!5866996 () Bool)

(assert (=> b!4867618 m!5866996))

(assert (=> d!1562016 d!1562816))

(declare-fun d!1562818 () Bool)

(declare-fun c!827920 () Bool)

(assert (=> d!1562818 (= c!827920 ((_ is Nil!55931) (list!17479 totalInput!332)))))

(declare-fun e!3043105 () (InoxSet C!26408))

(assert (=> d!1562818 (= (content!9968 (list!17479 totalInput!332)) e!3043105)))

(declare-fun b!4867619 () Bool)

(assert (=> b!4867619 (= e!3043105 ((as const (Array C!26408 Bool)) false))))

(declare-fun b!4867620 () Bool)

(assert (=> b!4867620 (= e!3043105 ((_ map or) (store ((as const (Array C!26408 Bool)) false) (h!62379 (list!17479 totalInput!332)) true) (content!9968 (t!363817 (list!17479 totalInput!332)))))))

(assert (= (and d!1562818 c!827920) b!4867619))

(assert (= (and d!1562818 (not c!827920)) b!4867620))

(declare-fun m!5866998 () Bool)

(assert (=> b!4867620 m!5866998))

(assert (=> b!4867620 m!5866942))

(assert (=> d!1562016 d!1562818))

(declare-fun d!1562820 () Bool)

(declare-fun lt!1994631 () Int)

(assert (=> d!1562820 (>= lt!1994631 0)))

(declare-fun e!3043106 () Int)

(assert (=> d!1562820 (= lt!1994631 e!3043106)))

(declare-fun c!827921 () Bool)

(assert (=> d!1562820 (= c!827921 ((_ is Nil!55931) (t!363817 lt!1993773)))))

(assert (=> d!1562820 (= (size!36861 (t!363817 lt!1993773)) lt!1994631)))

(declare-fun b!4867621 () Bool)

(assert (=> b!4867621 (= e!3043106 0)))

(declare-fun b!4867622 () Bool)

(assert (=> b!4867622 (= e!3043106 (+ 1 (size!36861 (t!363817 (t!363817 lt!1993773)))))))

(assert (= (and d!1562820 c!827921) b!4867621))

(assert (= (and d!1562820 (not c!827921)) b!4867622))

(declare-fun m!5867000 () Bool)

(assert (=> b!4867622 m!5867000))

(assert (=> b!4866423 d!1562820))

(declare-fun bs!1174400 () Bool)

(declare-fun b!4867636 () Bool)

(assert (= bs!1174400 (and b!4867636 b!4866446)))

(declare-fun lambda!243440 () Int)

(assert (=> bs!1174400 (= lambda!243440 lambda!243413)))

(declare-fun bs!1174401 () Bool)

(assert (= bs!1174401 (and b!4867636 d!1562162)))

(assert (=> bs!1174401 (= lambda!243440 lambda!243416)))

(declare-fun b!4867642 () Bool)

(declare-fun e!3043123 () Bool)

(assert (=> b!4867642 (= e!3043123 true)))

(declare-fun b!4867641 () Bool)

(declare-fun e!3043122 () Bool)

(assert (=> b!4867641 (= e!3043122 e!3043123)))

(assert (=> b!4867636 e!3043122))

(assert (= b!4867641 b!4867642))

(assert (= b!4867636 b!4867641))

(assert (=> b!4867642 (< (dynLambda!22447 order!25203 (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) (dynLambda!22449 order!25207 lambda!243440))))

(assert (=> b!4867642 (< (dynLambda!22450 order!25209 (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (dynLambda!22449 order!25207 lambda!243440))))

(declare-fun b!4867635 () Bool)

(declare-fun e!3043118 () Bool)

(declare-fun lt!1994658 () List!56055)

(assert (=> b!4867635 (= e!3043118 (matchR!6490 (regex!8030 (h!62380 rules!1248)) (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994658 lt!1994658 (size!36861 lt!1994658)))))))

(declare-fun e!3043120 () Option!13775)

(declare-fun lt!1994656 () tuple2!59778)

(assert (=> b!4867636 (= e!3043120 (Some!13774 (tuple2!59765 (Token!14645 (apply!13500 (transformation!8030 (h!62380 rules!1248)) (_1!33192 lt!1994656)) (h!62380 rules!1248) (size!36855 (_1!33192 lt!1994656)) (list!17479 (_1!33192 lt!1994656))) (_2!33192 lt!1994656))))))

(assert (=> b!4867636 (= lt!1994658 (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(declare-fun lt!1994657 () Unit!145938)

(assert (=> b!4867636 (= lt!1994657 (longestMatchIsAcceptedByMatchOrIsEmpty!1682 (regex!8030 (h!62380 rules!1248)) lt!1994658))))

(declare-fun res!2077904 () Bool)

(assert (=> b!4867636 (= res!2077904 (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994658 lt!1994658 (size!36861 lt!1994658)))))))

(assert (=> b!4867636 (=> res!2077904 e!3043118)))

(assert (=> b!4867636 e!3043118))

(declare-fun lt!1994652 () Unit!145938)

(assert (=> b!4867636 (= lt!1994652 lt!1994657)))

(declare-fun lt!1994659 () Unit!145938)

(assert (=> b!4867636 (= lt!1994659 (lemmaInv!1202 (transformation!8030 (h!62380 rules!1248))))))

(declare-fun lt!1994653 () Unit!145938)

(assert (=> b!4867636 (= lt!1994653 (ForallOf!1099 lambda!243440 (_1!33192 lt!1994656)))))

(declare-fun lt!1994654 () Unit!145938)

(assert (=> b!4867636 (= lt!1994654 (ForallOf!1099 lambda!243440 (seqFromList!5896 (list!17479 (_1!33192 lt!1994656)))))))

(declare-fun lt!1994655 () Option!13775)

(assert (=> b!4867636 (= lt!1994655 (Some!13774 (tuple2!59765 (Token!14645 (apply!13500 (transformation!8030 (h!62380 rules!1248)) (_1!33192 lt!1994656)) (h!62380 rules!1248) (size!36855 (_1!33192 lt!1994656)) (list!17479 (_1!33192 lt!1994656))) (_2!33192 lt!1994656))))))

(declare-fun lt!1994661 () Unit!145938)

(assert (=> b!4867636 (= lt!1994661 (lemmaEqSameImage!1056 (transformation!8030 (h!62380 rules!1248)) (_1!33192 lt!1994656) (seqFromList!5896 (list!17479 (_1!33192 lt!1994656)))))))

(declare-fun d!1562822 () Bool)

(declare-fun e!3043119 () Bool)

(assert (=> d!1562822 e!3043119))

(declare-fun res!2077902 () Bool)

(assert (=> d!1562822 (=> (not res!2077902) (not e!3043119))))

(declare-fun lt!1994660 () Option!13775)

(assert (=> d!1562822 (= res!2077902 (= (isDefined!10844 lt!1994660) (isDefined!10845 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562822 (= lt!1994660 e!3043120)))

(declare-fun c!827924 () Bool)

(assert (=> d!1562822 (= c!827924 (isEmpty!29929 (_1!33192 lt!1994656)))))

(declare-fun findLongestMatchWithZipperSequence!236 (Regex!13105 BalanceConc!28580) tuple2!59778)

(assert (=> d!1562822 (= lt!1994656 (findLongestMatchWithZipperSequence!236 (regex!8030 (h!62380 rules!1248)) (_2!33185 (v!49684 lt!1993717))))))

(assert (=> d!1562822 (ruleValid!3627 thiss!11777 (h!62380 rules!1248))))

(assert (=> d!1562822 (= (maxPrefixOneRuleZipperSequence!576 thiss!11777 (h!62380 rules!1248) (_2!33185 (v!49684 lt!1993717))) lt!1994660)))

(declare-fun b!4867637 () Bool)

(declare-fun e!3043117 () Bool)

(assert (=> b!4867637 (= e!3043117 (= (list!17479 (_2!33185 (get!19222 lt!1994660))) (_2!33189 (get!19223 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867638 () Bool)

(assert (=> b!4867638 (= e!3043120 None!13774)))

(declare-fun b!4867639 () Bool)

(declare-fun e!3043121 () Bool)

(assert (=> b!4867639 (= e!3043119 e!3043121)))

(declare-fun res!2077901 () Bool)

(assert (=> b!4867639 (=> res!2077901 e!3043121)))

(assert (=> b!4867639 (= res!2077901 (not (isDefined!10844 lt!1994660)))))

(declare-fun b!4867640 () Bool)

(assert (=> b!4867640 (= e!3043121 e!3043117)))

(declare-fun res!2077903 () Bool)

(assert (=> b!4867640 (=> (not res!2077903) (not e!3043117))))

(assert (=> b!4867640 (= res!2077903 (= (_1!33185 (get!19222 lt!1994660)) (_1!33189 (get!19223 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562822 c!827924) b!4867638))

(assert (= (and d!1562822 (not c!827924)) b!4867636))

(assert (= (and b!4867636 (not res!2077904)) b!4867635))

(assert (= (and d!1562822 res!2077902) b!4867639))

(assert (= (and b!4867639 (not res!2077901)) b!4867640))

(assert (= (and b!4867640 res!2077903) b!4867637))

(declare-fun m!5867002 () Bool)

(assert (=> b!4867636 m!5867002))

(assert (=> b!4867636 m!5865032))

(assert (=> b!4867636 m!5865050))

(assert (=> b!4867636 m!5863836))

(declare-fun m!5867004 () Bool)

(assert (=> b!4867636 m!5867004))

(declare-fun m!5867006 () Bool)

(assert (=> b!4867636 m!5867006))

(declare-fun m!5867008 () Bool)

(assert (=> b!4867636 m!5867008))

(assert (=> b!4867636 m!5867002))

(declare-fun m!5867010 () Bool)

(assert (=> b!4867636 m!5867010))

(assert (=> b!4867636 m!5867010))

(declare-fun m!5867012 () Bool)

(assert (=> b!4867636 m!5867012))

(declare-fun m!5867014 () Bool)

(assert (=> b!4867636 m!5867014))

(declare-fun m!5867016 () Bool)

(assert (=> b!4867636 m!5867016))

(declare-fun m!5867018 () Bool)

(assert (=> b!4867636 m!5867018))

(assert (=> b!4867636 m!5865032))

(assert (=> b!4867636 m!5867018))

(declare-fun m!5867020 () Bool)

(assert (=> b!4867636 m!5867020))

(assert (=> b!4867636 m!5867010))

(declare-fun m!5867022 () Bool)

(assert (=> b!4867636 m!5867022))

(assert (=> b!4867635 m!5865032))

(assert (=> b!4867635 m!5867018))

(assert (=> b!4867635 m!5865032))

(assert (=> b!4867635 m!5867018))

(assert (=> b!4867635 m!5867020))

(declare-fun m!5867024 () Bool)

(assert (=> b!4867635 m!5867024))

(declare-fun m!5867026 () Bool)

(assert (=> b!4867639 m!5867026))

(declare-fun m!5867028 () Bool)

(assert (=> b!4867640 m!5867028))

(assert (=> b!4867640 m!5863836))

(assert (=> b!4867640 m!5863836))

(declare-fun m!5867030 () Bool)

(assert (=> b!4867640 m!5867030))

(assert (=> b!4867640 m!5867030))

(declare-fun m!5867032 () Bool)

(assert (=> b!4867640 m!5867032))

(declare-fun m!5867034 () Bool)

(assert (=> d!1562822 m!5867034))

(declare-fun m!5867036 () Bool)

(assert (=> d!1562822 m!5867036))

(assert (=> d!1562822 m!5863836))

(assert (=> d!1562822 m!5867030))

(declare-fun m!5867038 () Bool)

(assert (=> d!1562822 m!5867038))

(assert (=> d!1562822 m!5864500))

(assert (=> d!1562822 m!5863836))

(assert (=> d!1562822 m!5867030))

(assert (=> d!1562822 m!5867026))

(assert (=> b!4867637 m!5867030))

(assert (=> b!4867637 m!5867032))

(assert (=> b!4867637 m!5867028))

(assert (=> b!4867637 m!5863836))

(assert (=> b!4867637 m!5863836))

(assert (=> b!4867637 m!5867030))

(declare-fun m!5867040 () Bool)

(assert (=> b!4867637 m!5867040))

(assert (=> bm!337932 d!1562822))

(declare-fun b!4867645 () Bool)

(declare-fun res!2077905 () Bool)

(declare-fun e!3043124 () Bool)

(assert (=> b!4867645 (=> (not res!2077905) (not e!3043124))))

(declare-fun lt!1994662 () List!56055)

(assert (=> b!4867645 (= res!2077905 (= (size!36861 lt!1994662) (+ (size!36861 (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (size!36861 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4867643 () Bool)

(declare-fun e!3043125 () List!56055)

(assert (=> b!4867643 (= e!3043125 (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(declare-fun d!1562824 () Bool)

(assert (=> d!1562824 e!3043124))

(declare-fun res!2077906 () Bool)

(assert (=> d!1562824 (=> (not res!2077906) (not e!3043124))))

(assert (=> d!1562824 (= res!2077906 (= (content!9968 lt!1994662) ((_ map or) (content!9968 (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (content!9968 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562824 (= lt!1994662 e!3043125)))

(declare-fun c!827925 () Bool)

(assert (=> d!1562824 (= c!827925 ((_ is Nil!55931) (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (=> d!1562824 (= (++!12179 (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) (list!17479 (_2!33185 (v!49684 lt!1993717)))) lt!1994662)))

(declare-fun b!4867646 () Bool)

(assert (=> b!4867646 (= e!3043124 (or (not (= (list!17479 (_2!33185 (v!49684 lt!1993717))) Nil!55931)) (= lt!1994662 (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))))

(declare-fun b!4867644 () Bool)

(assert (=> b!4867644 (= e!3043125 (Cons!55931 (h!62379 (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (++!12179 (t!363817 (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (list!17479 (_2!33185 (v!49684 lt!1993717))))))))

(assert (= (and d!1562824 c!827925) b!4867643))

(assert (= (and d!1562824 (not c!827925)) b!4867644))

(assert (= (and d!1562824 res!2077906) b!4867645))

(assert (= (and b!4867645 res!2077905) b!4867646))

(declare-fun m!5867042 () Bool)

(assert (=> b!4867645 m!5867042))

(assert (=> b!4867645 m!5866386))

(assert (=> b!4867645 m!5863836))

(assert (=> b!4867645 m!5864006))

(declare-fun m!5867044 () Bool)

(assert (=> d!1562824 m!5867044))

(declare-fun m!5867046 () Bool)

(assert (=> d!1562824 m!5867046))

(assert (=> d!1562824 m!5863836))

(assert (=> d!1562824 m!5864012))

(assert (=> b!4867644 m!5863836))

(declare-fun m!5867048 () Bool)

(assert (=> b!4867644 m!5867048))

(assert (=> b!4866066 d!1562824))

(declare-fun d!1562826 () Bool)

(declare-fun lt!1994663 () Int)

(assert (=> d!1562826 (>= lt!1994663 0)))

(declare-fun e!3043126 () Int)

(assert (=> d!1562826 (= lt!1994663 e!3043126)))

(declare-fun c!827926 () Bool)

(assert (=> d!1562826 (= c!827926 ((_ is Nil!55931) (_2!33189 (get!19223 lt!1994018))))))

(assert (=> d!1562826 (= (size!36861 (_2!33189 (get!19223 lt!1994018))) lt!1994663)))

(declare-fun b!4867647 () Bool)

(assert (=> b!4867647 (= e!3043126 0)))

(declare-fun b!4867648 () Bool)

(assert (=> b!4867648 (= e!3043126 (+ 1 (size!36861 (t!363817 (_2!33189 (get!19223 lt!1994018))))))))

(assert (= (and d!1562826 c!827926) b!4867647))

(assert (= (and d!1562826 (not c!827926)) b!4867648))

(declare-fun m!5867050 () Bool)

(assert (=> b!4867648 m!5867050))

(assert (=> b!4866174 d!1562826))

(assert (=> b!4866174 d!1562606))

(assert (=> b!4866174 d!1562120))

(declare-fun d!1562828 () Bool)

(declare-fun res!2077907 () Bool)

(declare-fun e!3043127 () Bool)

(assert (=> d!1562828 (=> res!2077907 e!3043127)))

(assert (=> d!1562828 (= res!2077907 ((_ is Nil!55932) (t!363818 rules!1248)))))

(assert (=> d!1562828 (= (noDuplicateTag!3281 thiss!11777 (t!363818 rules!1248) (Cons!55935 (tag!8894 (h!62380 rules!1248)) Nil!55935)) e!3043127)))

(declare-fun b!4867649 () Bool)

(declare-fun e!3043128 () Bool)

(assert (=> b!4867649 (= e!3043127 e!3043128)))

(declare-fun res!2077908 () Bool)

(assert (=> b!4867649 (=> (not res!2077908) (not e!3043128))))

(assert (=> b!4867649 (= res!2077908 (not (contains!19392 (Cons!55935 (tag!8894 (h!62380 rules!1248)) Nil!55935) (tag!8894 (h!62380 (t!363818 rules!1248))))))))

(declare-fun b!4867650 () Bool)

(assert (=> b!4867650 (= e!3043128 (noDuplicateTag!3281 thiss!11777 (t!363818 (t!363818 rules!1248)) (Cons!55935 (tag!8894 (h!62380 (t!363818 rules!1248))) (Cons!55935 (tag!8894 (h!62380 rules!1248)) Nil!55935))))))

(assert (= (and d!1562828 (not res!2077907)) b!4867649))

(assert (= (and b!4867649 res!2077908) b!4867650))

(declare-fun m!5867052 () Bool)

(assert (=> b!4867649 m!5867052))

(declare-fun m!5867054 () Bool)

(assert (=> b!4867650 m!5867054))

(assert (=> b!4866377 d!1562828))

(declare-fun d!1562830 () Bool)

(declare-fun res!2077913 () Bool)

(declare-fun e!3043133 () Bool)

(assert (=> d!1562830 (=> res!2077913 e!3043133)))

(assert (=> d!1562830 (= res!2077913 ((_ is Nil!55932) rules!1248))))

(assert (=> d!1562830 (= (forall!13047 rules!1248 lambda!243400) e!3043133)))

(declare-fun b!4867655 () Bool)

(declare-fun e!3043134 () Bool)

(assert (=> b!4867655 (= e!3043133 e!3043134)))

(declare-fun res!2077914 () Bool)

(assert (=> b!4867655 (=> (not res!2077914) (not e!3043134))))

(declare-fun dynLambda!22456 (Int Rule!15860) Bool)

(assert (=> b!4867655 (= res!2077914 (dynLambda!22456 lambda!243400 (h!62380 rules!1248)))))

(declare-fun b!4867656 () Bool)

(assert (=> b!4867656 (= e!3043134 (forall!13047 (t!363818 rules!1248) lambda!243400))))

(assert (= (and d!1562830 (not res!2077913)) b!4867655))

(assert (= (and b!4867655 res!2077914) b!4867656))

(declare-fun b_lambda!193559 () Bool)

(assert (=> (not b_lambda!193559) (not b!4867655)))

(declare-fun m!5867056 () Bool)

(assert (=> b!4867655 m!5867056))

(declare-fun m!5867058 () Bool)

(assert (=> b!4867656 m!5867058))

(assert (=> d!1561864 d!1562830))

(declare-fun b!4867657 () Bool)

(declare-fun res!2077916 () Bool)

(declare-fun e!3043137 () Bool)

(assert (=> b!4867657 (=> (not res!2077916) (not e!3043137))))

(declare-fun lt!1994665 () Option!13777)

(assert (=> b!4867657 (= res!2077916 (matchR!6490 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994665)))) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994665))))))))

(declare-fun b!4867658 () Bool)

(assert (=> b!4867658 (= e!3043137 (contains!19391 (t!363818 rules!1248) (rule!11154 (_1!33189 (get!19223 lt!1994665)))))))

(declare-fun b!4867659 () Bool)

(declare-fun res!2077918 () Bool)

(assert (=> b!4867659 (=> (not res!2077918) (not e!3043137))))

(assert (=> b!4867659 (= res!2077918 (< (size!36861 (_2!33189 (get!19223 lt!1994665))) (size!36861 (list!17479 input!661))))))

(declare-fun b!4867660 () Bool)

(declare-fun res!2077919 () Bool)

(assert (=> b!4867660 (=> (not res!2077919) (not e!3043137))))

(assert (=> b!4867660 (= res!2077919 (= (value!257997 (_1!33189 (get!19223 lt!1994665))) (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994665)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994665)))))))))

(declare-fun b!4867661 () Bool)

(declare-fun res!2077917 () Bool)

(assert (=> b!4867661 (=> (not res!2077917) (not e!3043137))))

(assert (=> b!4867661 (= res!2077917 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994665)))) (_2!33189 (get!19223 lt!1994665))) (list!17479 input!661)))))

(declare-fun bm!338049 () Bool)

(declare-fun call!338054 () Option!13777)

(assert (=> bm!338049 (= call!338054 (maxPrefixOneRule!3489 thiss!11777 (h!62380 (t!363818 rules!1248)) (list!17479 input!661)))))

(declare-fun b!4867663 () Bool)

(declare-fun res!2077920 () Bool)

(assert (=> b!4867663 (=> (not res!2077920) (not e!3043137))))

(assert (=> b!4867663 (= res!2077920 (= (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994665)))) (originalCharacters!8353 (_1!33189 (get!19223 lt!1994665)))))))

(declare-fun b!4867664 () Bool)

(declare-fun e!3043136 () Bool)

(assert (=> b!4867664 (= e!3043136 e!3043137)))

(declare-fun res!2077921 () Bool)

(assert (=> b!4867664 (=> (not res!2077921) (not e!3043137))))

(assert (=> b!4867664 (= res!2077921 (isDefined!10845 lt!1994665))))

(declare-fun b!4867665 () Bool)

(declare-fun e!3043135 () Option!13777)

(assert (=> b!4867665 (= e!3043135 call!338054)))

(declare-fun b!4867662 () Bool)

(declare-fun lt!1994666 () Option!13777)

(declare-fun lt!1994667 () Option!13777)

(assert (=> b!4867662 (= e!3043135 (ite (and ((_ is None!13776) lt!1994666) ((_ is None!13776) lt!1994667)) None!13776 (ite ((_ is None!13776) lt!1994667) lt!1994666 (ite ((_ is None!13776) lt!1994666) lt!1994667 (ite (>= (size!36854 (_1!33189 (v!49688 lt!1994666))) (size!36854 (_1!33189 (v!49688 lt!1994667)))) lt!1994666 lt!1994667)))))))

(assert (=> b!4867662 (= lt!1994666 call!338054)))

(assert (=> b!4867662 (= lt!1994667 (maxPrefix!4547 thiss!11777 (t!363818 (t!363818 rules!1248)) (list!17479 input!661)))))

(declare-fun d!1562832 () Bool)

(assert (=> d!1562832 e!3043136))

(declare-fun res!2077915 () Bool)

(assert (=> d!1562832 (=> res!2077915 e!3043136)))

(assert (=> d!1562832 (= res!2077915 (isEmpty!29923 lt!1994665))))

(assert (=> d!1562832 (= lt!1994665 e!3043135)))

(declare-fun c!827927 () Bool)

(assert (=> d!1562832 (= c!827927 (and ((_ is Cons!55932) (t!363818 rules!1248)) ((_ is Nil!55932) (t!363818 (t!363818 rules!1248)))))))

(declare-fun lt!1994668 () Unit!145938)

(declare-fun lt!1994664 () Unit!145938)

(assert (=> d!1562832 (= lt!1994668 lt!1994664)))

(assert (=> d!1562832 (isPrefix!4764 (list!17479 input!661) (list!17479 input!661))))

(assert (=> d!1562832 (= lt!1994664 (lemmaIsPrefixRefl!3161 (list!17479 input!661) (list!17479 input!661)))))

(assert (=> d!1562832 (rulesValidInductive!3019 thiss!11777 (t!363818 rules!1248))))

(assert (=> d!1562832 (= (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 input!661)) lt!1994665)))

(assert (= (and d!1562832 c!827927) b!4867665))

(assert (= (and d!1562832 (not c!827927)) b!4867662))

(assert (= (or b!4867665 b!4867662) bm!338049))

(assert (= (and d!1562832 (not res!2077915)) b!4867664))

(assert (= (and b!4867664 res!2077921) b!4867663))

(assert (= (and b!4867663 res!2077920) b!4867659))

(assert (= (and b!4867659 res!2077918) b!4867661))

(assert (= (and b!4867661 res!2077917) b!4867660))

(assert (= (and b!4867660 res!2077919) b!4867657))

(assert (= (and b!4867657 res!2077916) b!4867658))

(declare-fun m!5867060 () Bool)

(assert (=> b!4867660 m!5867060))

(declare-fun m!5867062 () Bool)

(assert (=> b!4867660 m!5867062))

(assert (=> b!4867660 m!5867062))

(declare-fun m!5867064 () Bool)

(assert (=> b!4867660 m!5867064))

(declare-fun m!5867066 () Bool)

(assert (=> b!4867664 m!5867066))

(assert (=> b!4867661 m!5867060))

(declare-fun m!5867068 () Bool)

(assert (=> b!4867661 m!5867068))

(assert (=> b!4867661 m!5867068))

(declare-fun m!5867070 () Bool)

(assert (=> b!4867661 m!5867070))

(assert (=> b!4867661 m!5867070))

(declare-fun m!5867072 () Bool)

(assert (=> b!4867661 m!5867072))

(assert (=> b!4867658 m!5867060))

(declare-fun m!5867074 () Bool)

(assert (=> b!4867658 m!5867074))

(assert (=> b!4867657 m!5867060))

(assert (=> b!4867657 m!5867068))

(assert (=> b!4867657 m!5867068))

(assert (=> b!4867657 m!5867070))

(assert (=> b!4867657 m!5867070))

(declare-fun m!5867076 () Bool)

(assert (=> b!4867657 m!5867076))

(assert (=> b!4867659 m!5867060))

(declare-fun m!5867078 () Bool)

(assert (=> b!4867659 m!5867078))

(assert (=> b!4867659 m!5863822))

(assert (=> b!4867659 m!5864152))

(assert (=> b!4867663 m!5867060))

(assert (=> b!4867663 m!5867068))

(assert (=> b!4867663 m!5867068))

(assert (=> b!4867663 m!5867070))

(assert (=> bm!338049 m!5863822))

(declare-fun m!5867080 () Bool)

(assert (=> bm!338049 m!5867080))

(assert (=> b!4867662 m!5863822))

(assert (=> b!4867662 m!5866482))

(declare-fun m!5867082 () Bool)

(assert (=> d!1562832 m!5867082))

(assert (=> d!1562832 m!5863822))

(assert (=> d!1562832 m!5863822))

(assert (=> d!1562832 m!5864172))

(assert (=> d!1562832 m!5863822))

(assert (=> d!1562832 m!5863822))

(assert (=> d!1562832 m!5864174))

(assert (=> d!1562832 m!5864502))

(assert (=> b!4866177 d!1562832))

(declare-fun d!1562834 () Bool)

(assert (=> d!1562834 (= (isEmpty!29918 (_1!33186 lt!1994024)) ((_ is Nil!55933) (_1!33186 lt!1994024)))))

(assert (=> b!4866184 d!1562834))

(declare-fun d!1562836 () Bool)

(assert (=> d!1562836 (= (isDefined!10844 lt!1993964) (not (isEmpty!29924 lt!1993964)))))

(declare-fun bs!1174402 () Bool)

(assert (= bs!1174402 d!1562836))

(declare-fun m!5867084 () Bool)

(assert (=> bs!1174402 m!5867084))

(assert (=> b!4866090 d!1562836))

(declare-fun d!1562838 () Bool)

(assert (=> d!1562838 (= (list!17486 (xs!17875 (c!827478 (_2!33187 lt!1993718)))) (innerList!14657 (xs!17875 (c!827478 (_2!33187 lt!1993718)))))))

(assert (=> b!4866084 d!1562838))

(assert (=> d!1562164 d!1561864))

(declare-fun d!1562840 () Bool)

(declare-fun res!2077922 () Bool)

(declare-fun e!3043138 () Bool)

(assert (=> d!1562840 (=> res!2077922 e!3043138)))

(assert (=> d!1562840 (= res!2077922 ((_ is Nil!55932) rules!1248))))

(assert (=> d!1562840 (= (forall!13047 rules!1248 lambda!243419) e!3043138)))

(declare-fun b!4867666 () Bool)

(declare-fun e!3043139 () Bool)

(assert (=> b!4867666 (= e!3043138 e!3043139)))

(declare-fun res!2077923 () Bool)

(assert (=> b!4867666 (=> (not res!2077923) (not e!3043139))))

(assert (=> b!4867666 (= res!2077923 (dynLambda!22456 lambda!243419 (h!62380 rules!1248)))))

(declare-fun b!4867667 () Bool)

(assert (=> b!4867667 (= e!3043139 (forall!13047 (t!363818 rules!1248) lambda!243419))))

(assert (= (and d!1562840 (not res!2077922)) b!4867666))

(assert (= (and b!4867666 res!2077923) b!4867667))

(declare-fun b_lambda!193561 () Bool)

(assert (=> (not b_lambda!193561) (not b!4867666)))

(declare-fun m!5867086 () Bool)

(assert (=> b!4867666 m!5867086))

(declare-fun m!5867088 () Bool)

(assert (=> b!4867667 m!5867088))

(assert (=> d!1562164 d!1562840))

(assert (=> b!4865755 d!1562106))

(assert (=> b!4865755 d!1562108))

(assert (=> b!4866462 d!1562690))

(declare-fun d!1562842 () Bool)

(assert (=> d!1562842 (= (isEmpty!29918 (list!17484 (c!827480 lt!1993716))) ((_ is Nil!55933) (list!17484 (c!827480 lt!1993716))))))

(assert (=> d!1562078 d!1562842))

(assert (=> d!1562078 d!1562144))

(assert (=> d!1562078 d!1562098))

(declare-fun d!1562844 () Bool)

(declare-fun res!2077924 () Bool)

(declare-fun e!3043140 () Bool)

(assert (=> d!1562844 (=> (not res!2077924) (not e!3043140))))

(assert (=> d!1562844 (= res!2077924 (= (csize!29368 (right!40954 (c!827478 totalInput!332))) (+ (size!36864 (left!40624 (right!40954 (c!827478 totalInput!332)))) (size!36864 (right!40954 (right!40954 (c!827478 totalInput!332)))))))))

(assert (=> d!1562844 (= (inv!71843 (right!40954 (c!827478 totalInput!332))) e!3043140)))

(declare-fun b!4867668 () Bool)

(declare-fun res!2077925 () Bool)

(assert (=> b!4867668 (=> (not res!2077925) (not e!3043140))))

(assert (=> b!4867668 (= res!2077925 (and (not (= (left!40624 (right!40954 (c!827478 totalInput!332))) Empty!14569)) (not (= (right!40954 (right!40954 (c!827478 totalInput!332))) Empty!14569))))))

(declare-fun b!4867669 () Bool)

(declare-fun res!2077926 () Bool)

(assert (=> b!4867669 (=> (not res!2077926) (not e!3043140))))

(assert (=> b!4867669 (= res!2077926 (= (cheight!14780 (right!40954 (c!827478 totalInput!332))) (+ (max!0 (height!1925 (left!40624 (right!40954 (c!827478 totalInput!332)))) (height!1925 (right!40954 (right!40954 (c!827478 totalInput!332))))) 1)))))

(declare-fun b!4867670 () Bool)

(assert (=> b!4867670 (= e!3043140 (<= 0 (cheight!14780 (right!40954 (c!827478 totalInput!332)))))))

(assert (= (and d!1562844 res!2077924) b!4867668))

(assert (= (and b!4867668 res!2077925) b!4867669))

(assert (= (and b!4867669 res!2077926) b!4867670))

(declare-fun m!5867090 () Bool)

(assert (=> d!1562844 m!5867090))

(declare-fun m!5867092 () Bool)

(assert (=> d!1562844 m!5867092))

(declare-fun m!5867094 () Bool)

(assert (=> b!4867669 m!5867094))

(declare-fun m!5867096 () Bool)

(assert (=> b!4867669 m!5867096))

(assert (=> b!4867669 m!5867094))

(assert (=> b!4867669 m!5867096))

(declare-fun m!5867098 () Bool)

(assert (=> b!4867669 m!5867098))

(assert (=> b!4866481 d!1562844))

(declare-fun b!4867671 () Bool)

(declare-fun res!2077927 () Bool)

(declare-fun e!3043141 () Bool)

(assert (=> b!4867671 (=> (not res!2077927) (not e!3043141))))

(assert (=> b!4867671 (= res!2077927 (isBalanced!3953 (left!40625 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4867672 () Bool)

(assert (=> b!4867672 (= e!3043141 (not (isEmpty!29919 (right!40955 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867673 () Bool)

(declare-fun res!2077930 () Bool)

(assert (=> b!4867673 (=> (not res!2077930) (not e!3043141))))

(assert (=> b!4867673 (= res!2077930 (<= (- (height!1926 (left!40625 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))) (height!1926 (right!40955 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))) 1))))

(declare-fun b!4867674 () Bool)

(declare-fun res!2077931 () Bool)

(assert (=> b!4867674 (=> (not res!2077931) (not e!3043141))))

(assert (=> b!4867674 (= res!2077931 (not (isEmpty!29919 (left!40625 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867675 () Bool)

(declare-fun res!2077932 () Bool)

(assert (=> b!4867675 (=> (not res!2077932) (not e!3043141))))

(assert (=> b!4867675 (= res!2077932 (isBalanced!3953 (right!40955 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4867676 () Bool)

(declare-fun e!3043142 () Bool)

(assert (=> b!4867676 (= e!3043142 e!3043141)))

(declare-fun res!2077929 () Bool)

(assert (=> b!4867676 (=> (not res!2077929) (not e!3043141))))

(assert (=> b!4867676 (= res!2077929 (<= (- 1) (- (height!1926 (left!40625 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))) (height!1926 (right!40955 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))))

(declare-fun d!1562846 () Bool)

(declare-fun res!2077928 () Bool)

(assert (=> d!1562846 (=> res!2077928 e!3043142)))

(assert (=> d!1562846 (= res!2077928 (not ((_ is Node!14570) (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562846 (= (isBalanced!3953 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) e!3043142)))

(assert (= (and d!1562846 (not res!2077928)) b!4867676))

(assert (= (and b!4867676 res!2077929) b!4867673))

(assert (= (and b!4867673 res!2077930) b!4867671))

(assert (= (and b!4867671 res!2077927) b!4867675))

(assert (= (and b!4867675 res!2077932) b!4867674))

(assert (= (and b!4867674 res!2077931) b!4867672))

(declare-fun m!5867100 () Bool)

(assert (=> b!4867673 m!5867100))

(declare-fun m!5867102 () Bool)

(assert (=> b!4867673 m!5867102))

(declare-fun m!5867104 () Bool)

(assert (=> b!4867672 m!5867104))

(assert (=> b!4867676 m!5867100))

(assert (=> b!4867676 m!5867102))

(declare-fun m!5867106 () Bool)

(assert (=> b!4867674 m!5867106))

(declare-fun m!5867108 () Bool)

(assert (=> b!4867671 m!5867108))

(declare-fun m!5867110 () Bool)

(assert (=> b!4867675 m!5867110))

(assert (=> b!4866343 d!1562846))

(assert (=> d!1561992 d!1561994))

(declare-fun d!1562848 () Bool)

(assert (=> d!1562848 (isPrefix!4764 lt!1993828 lt!1993830)))

(assert (=> d!1562848 true))

(declare-fun _$45!2123 () Unit!145938)

(assert (=> d!1562848 (= (choose!35582 lt!1993828 lt!1993830) _$45!2123)))

(declare-fun bs!1174403 () Bool)

(assert (= bs!1174403 d!1562848))

(assert (=> bs!1174403 m!5864122))

(assert (=> d!1561992 d!1562848))

(assert (=> d!1562094 d!1562688))

(assert (=> d!1562094 d!1562690))

(declare-fun d!1562850 () Bool)

(declare-fun lt!1994669 () Bool)

(assert (=> d!1562850 (= lt!1994669 (isEmpty!29928 (list!17483 (left!40624 (c!827478 totalInput!332)))))))

(assert (=> d!1562850 (= lt!1994669 (= (size!36864 (left!40624 (c!827478 totalInput!332))) 0))))

(assert (=> d!1562850 (= (isEmpty!29927 (left!40624 (c!827478 totalInput!332))) lt!1994669)))

(declare-fun bs!1174404 () Bool)

(assert (= bs!1174404 d!1562850))

(assert (=> bs!1174404 m!5865064))

(assert (=> bs!1174404 m!5865064))

(declare-fun m!5867112 () Bool)

(assert (=> bs!1174404 m!5867112))

(assert (=> bs!1174404 m!5865004))

(assert (=> b!4866399 d!1562850))

(declare-fun d!1562852 () Bool)

(declare-fun lt!1994670 () Int)

(assert (=> d!1562852 (>= lt!1994670 0)))

(declare-fun e!3043143 () Int)

(assert (=> d!1562852 (= lt!1994670 e!3043143)))

(declare-fun c!827928 () Bool)

(assert (=> d!1562852 (= c!827928 ((_ is Nil!55933) (t!363819 (list!17480 lt!1993716))))))

(assert (=> d!1562852 (= (size!36862 (t!363819 (list!17480 lt!1993716))) lt!1994670)))

(declare-fun b!4867677 () Bool)

(assert (=> b!4867677 (= e!3043143 0)))

(declare-fun b!4867678 () Bool)

(assert (=> b!4867678 (= e!3043143 (+ 1 (size!36862 (t!363819 (t!363819 (list!17480 lt!1993716))))))))

(assert (= (and d!1562852 c!827928) b!4867677))

(assert (= (and d!1562852 (not c!827928)) b!4867678))

(declare-fun m!5867114 () Bool)

(assert (=> b!4867678 m!5867114))

(assert (=> b!4866363 d!1562852))

(declare-fun d!1562854 () Bool)

(declare-fun c!827929 () Bool)

(assert (=> d!1562854 (= c!827929 ((_ is Node!14569) (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun e!3043144 () Bool)

(assert (=> d!1562854 (= (inv!71837 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) e!3043144)))

(declare-fun b!4867679 () Bool)

(assert (=> b!4867679 (= e!3043144 (inv!71843 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867680 () Bool)

(declare-fun e!3043145 () Bool)

(assert (=> b!4867680 (= e!3043144 e!3043145)))

(declare-fun res!2077933 () Bool)

(assert (=> b!4867680 (= res!2077933 (not ((_ is Leaf!24295) (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))))))

(assert (=> b!4867680 (=> res!2077933 e!3043145)))

(declare-fun b!4867681 () Bool)

(assert (=> b!4867681 (= e!3043145 (inv!71844 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562854 c!827929) b!4867679))

(assert (= (and d!1562854 (not c!827929)) b!4867680))

(assert (= (and b!4867680 (not res!2077933)) b!4867681))

(declare-fun m!5867116 () Bool)

(assert (=> b!4867679 m!5867116))

(declare-fun m!5867118 () Bool)

(assert (=> b!4867681 m!5867118))

(assert (=> b!4866504 d!1562854))

(declare-fun d!1562856 () Bool)

(declare-fun c!827930 () Bool)

(assert (=> d!1562856 (= c!827930 ((_ is Node!14569) (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun e!3043146 () Bool)

(assert (=> d!1562856 (= (inv!71837 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) e!3043146)))

(declare-fun b!4867682 () Bool)

(assert (=> b!4867682 (= e!3043146 (inv!71843 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867683 () Bool)

(declare-fun e!3043147 () Bool)

(assert (=> b!4867683 (= e!3043146 e!3043147)))

(declare-fun res!2077934 () Bool)

(assert (=> b!4867683 (= res!2077934 (not ((_ is Leaf!24295) (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))))))

(assert (=> b!4867683 (=> res!2077934 e!3043147)))

(declare-fun b!4867684 () Bool)

(assert (=> b!4867684 (= e!3043147 (inv!71844 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562856 c!827930) b!4867682))

(assert (= (and d!1562856 (not c!827930)) b!4867683))

(assert (= (and b!4867683 (not res!2077934)) b!4867684))

(declare-fun m!5867120 () Bool)

(assert (=> b!4867682 m!5867120))

(declare-fun m!5867122 () Bool)

(assert (=> b!4867684 m!5867122))

(assert (=> b!4866504 d!1562856))

(declare-fun d!1562858 () Bool)

(declare-fun e!3043148 () Bool)

(assert (=> d!1562858 e!3043148))

(declare-fun res!2077935 () Bool)

(assert (=> d!1562858 (=> (not res!2077935) (not e!3043148))))

(assert (=> d!1562858 (= res!2077935 (isBalanced!3953 (prepend!1394 (c!827480 (_1!33187 lt!1994093)) (_1!33185 (v!49684 lt!1994095)))))))

(declare-fun lt!1994671 () BalanceConc!28582)

(assert (=> d!1562858 (= lt!1994671 (BalanceConc!28583 (prepend!1394 (c!827480 (_1!33187 lt!1994093)) (_1!33185 (v!49684 lt!1994095)))))))

(assert (=> d!1562858 (= (prepend!1392 (_1!33187 lt!1994093) (_1!33185 (v!49684 lt!1994095))) lt!1994671)))

(declare-fun b!4867685 () Bool)

(assert (=> b!4867685 (= e!3043148 (= (list!17480 lt!1994671) (Cons!55933 (_1!33185 (v!49684 lt!1994095)) (list!17480 (_1!33187 lt!1994093)))))))

(assert (= (and d!1562858 res!2077935) b!4867685))

(declare-fun m!5867124 () Bool)

(assert (=> d!1562858 m!5867124))

(assert (=> d!1562858 m!5867124))

(declare-fun m!5867126 () Bool)

(assert (=> d!1562858 m!5867126))

(declare-fun m!5867128 () Bool)

(assert (=> b!4867685 m!5867128))

(declare-fun m!5867130 () Bool)

(assert (=> b!4867685 m!5867130))

(assert (=> b!4866365 d!1562858))

(declare-fun b!4867686 () Bool)

(declare-fun e!3043151 () tuple2!59768)

(declare-fun lt!1994672 () tuple2!59768)

(declare-fun lt!1994674 () Option!13775)

(assert (=> b!4867686 (= e!3043151 (tuple2!59769 (prepend!1392 (_1!33187 lt!1994672) (_1!33185 (v!49684 lt!1994674))) (_2!33187 lt!1994672)))))

(assert (=> b!4867686 (= lt!1994672 (lexRec!845 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1994674))))))

(declare-fun d!1562860 () Bool)

(declare-fun e!3043150 () Bool)

(assert (=> d!1562860 e!3043150))

(declare-fun res!2077937 () Bool)

(assert (=> d!1562860 (=> (not res!2077937) (not e!3043150))))

(declare-fun e!3043149 () Bool)

(assert (=> d!1562860 (= res!2077937 e!3043149)))

(declare-fun c!827931 () Bool)

(declare-fun lt!1994673 () tuple2!59768)

(assert (=> d!1562860 (= c!827931 (> (size!36856 (_1!33187 lt!1994673)) 0))))

(assert (=> d!1562860 (= lt!1994673 e!3043151)))

(declare-fun c!827932 () Bool)

(assert (=> d!1562860 (= c!827932 ((_ is Some!13774) lt!1994674))))

(assert (=> d!1562860 (= lt!1994674 (maxPrefixZipperSequence!1223 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1994095))))))

(assert (=> d!1562860 (= (lexRec!845 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1994095))) lt!1994673)))

(declare-fun b!4867687 () Bool)

(assert (=> b!4867687 (= e!3043151 (tuple2!59769 (BalanceConc!28583 Empty!14570) (_2!33185 (v!49684 lt!1994095))))))

(declare-fun b!4867688 () Bool)

(declare-fun e!3043152 () Bool)

(assert (=> b!4867688 (= e!3043149 e!3043152)))

(declare-fun res!2077936 () Bool)

(assert (=> b!4867688 (= res!2077936 (< (size!36855 (_2!33187 lt!1994673)) (size!36855 (_2!33185 (v!49684 lt!1994095)))))))

(assert (=> b!4867688 (=> (not res!2077936) (not e!3043152))))

(declare-fun b!4867689 () Bool)

(assert (=> b!4867689 (= e!3043149 (= (list!17479 (_2!33187 lt!1994673)) (list!17479 (_2!33185 (v!49684 lt!1994095)))))))

(declare-fun b!4867690 () Bool)

(declare-fun res!2077938 () Bool)

(assert (=> b!4867690 (=> (not res!2077938) (not e!3043150))))

(assert (=> b!4867690 (= res!2077938 (= (list!17480 (_1!33187 lt!1994673)) (_1!33186 (lexList!2101 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1994095)))))))))

(declare-fun b!4867691 () Bool)

(assert (=> b!4867691 (= e!3043150 (= (list!17479 (_2!33187 lt!1994673)) (_2!33186 (lexList!2101 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1994095)))))))))

(declare-fun b!4867692 () Bool)

(assert (=> b!4867692 (= e!3043152 (not (isEmpty!29915 (_1!33187 lt!1994673))))))

(assert (= (and d!1562860 c!827932) b!4867686))

(assert (= (and d!1562860 (not c!827932)) b!4867687))

(assert (= (and d!1562860 c!827931) b!4867688))

(assert (= (and d!1562860 (not c!827931)) b!4867689))

(assert (= (and b!4867688 res!2077936) b!4867692))

(assert (= (and d!1562860 res!2077937) b!4867690))

(assert (= (and b!4867690 res!2077938) b!4867691))

(declare-fun m!5867132 () Bool)

(assert (=> b!4867690 m!5867132))

(declare-fun m!5867134 () Bool)

(assert (=> b!4867690 m!5867134))

(assert (=> b!4867690 m!5867134))

(declare-fun m!5867136 () Bool)

(assert (=> b!4867690 m!5867136))

(declare-fun m!5867138 () Bool)

(assert (=> b!4867688 m!5867138))

(declare-fun m!5867140 () Bool)

(assert (=> b!4867688 m!5867140))

(declare-fun m!5867142 () Bool)

(assert (=> b!4867691 m!5867142))

(assert (=> b!4867691 m!5867134))

(assert (=> b!4867691 m!5867134))

(assert (=> b!4867691 m!5867136))

(declare-fun m!5867144 () Bool)

(assert (=> d!1562860 m!5867144))

(declare-fun m!5867146 () Bool)

(assert (=> d!1562860 m!5867146))

(declare-fun m!5867148 () Bool)

(assert (=> b!4867686 m!5867148))

(declare-fun m!5867150 () Bool)

(assert (=> b!4867686 m!5867150))

(declare-fun m!5867152 () Bool)

(assert (=> b!4867692 m!5867152))

(assert (=> b!4867689 m!5867142))

(assert (=> b!4867689 m!5867134))

(assert (=> b!4866365 d!1562860))

(declare-fun d!1562862 () Bool)

(assert (=> d!1562862 (= (get!19222 lt!1994134) (v!49684 lt!1994134))))

(assert (=> b!4866450 d!1562862))

(declare-fun d!1562864 () Bool)

(assert (=> d!1562864 (= (get!19223 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661))) (v!49688 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661))))))

(assert (=> b!4866450 d!1562864))

(declare-fun d!1562866 () Bool)

(declare-fun e!3043161 () Bool)

(assert (=> d!1562866 e!3043161))

(declare-fun res!2077956 () Bool)

(assert (=> d!1562866 (=> res!2077956 e!3043161)))

(declare-fun lt!1994686 () Option!13777)

(assert (=> d!1562866 (= res!2077956 (isEmpty!29923 lt!1994686))))

(declare-fun e!3043162 () Option!13777)

(assert (=> d!1562866 (= lt!1994686 e!3043162)))

(declare-fun c!827935 () Bool)

(declare-fun lt!1994689 () tuple2!59780)

(assert (=> d!1562866 (= c!827935 (isEmpty!29928 (_1!33193 lt!1994689)))))

(declare-fun findLongestMatch!1633 (Regex!13105 List!56055) tuple2!59780)

(assert (=> d!1562866 (= lt!1994689 (findLongestMatch!1633 (regex!8030 (h!62380 rules!1248)) (list!17479 input!661)))))

(assert (=> d!1562866 (ruleValid!3627 thiss!11777 (h!62380 rules!1248))))

(assert (=> d!1562866 (= (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661)) lt!1994686)))

(declare-fun b!4867711 () Bool)

(declare-fun res!2077953 () Bool)

(declare-fun e!3043164 () Bool)

(assert (=> b!4867711 (=> (not res!2077953) (not e!3043164))))

(assert (=> b!4867711 (= res!2077953 (= (value!257997 (_1!33189 (get!19223 lt!1994686))) (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994686)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994686)))))))))

(declare-fun b!4867712 () Bool)

(assert (=> b!4867712 (= e!3043162 None!13776)))

(declare-fun b!4867713 () Bool)

(declare-fun e!3043163 () Bool)

(assert (=> b!4867713 (= e!3043163 (matchR!6490 (regex!8030 (h!62380 rules!1248)) (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) (list!17479 input!661) (list!17479 input!661) (size!36861 (list!17479 input!661))))))))

(declare-fun b!4867714 () Bool)

(assert (=> b!4867714 (= e!3043164 (= (size!36854 (_1!33189 (get!19223 lt!1994686))) (size!36861 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994686))))))))

(declare-fun b!4867715 () Bool)

(declare-fun res!2077955 () Bool)

(assert (=> b!4867715 (=> (not res!2077955) (not e!3043164))))

(assert (=> b!4867715 (= res!2077955 (< (size!36861 (_2!33189 (get!19223 lt!1994686))) (size!36861 (list!17479 input!661))))))

(declare-fun b!4867716 () Bool)

(declare-fun res!2077957 () Bool)

(assert (=> b!4867716 (=> (not res!2077957) (not e!3043164))))

(assert (=> b!4867716 (= res!2077957 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994686)))) (_2!33189 (get!19223 lt!1994686))) (list!17479 input!661)))))

(declare-fun b!4867717 () Bool)

(assert (=> b!4867717 (= e!3043162 (Some!13776 (tuple2!59773 (Token!14645 (apply!13500 (transformation!8030 (h!62380 rules!1248)) (seqFromList!5896 (_1!33193 lt!1994689))) (h!62380 rules!1248) (size!36855 (seqFromList!5896 (_1!33193 lt!1994689))) (_1!33193 lt!1994689)) (_2!33193 lt!1994689))))))

(declare-fun lt!1994685 () Unit!145938)

(assert (=> b!4867717 (= lt!1994685 (longestMatchIsAcceptedByMatchOrIsEmpty!1682 (regex!8030 (h!62380 rules!1248)) (list!17479 input!661)))))

(declare-fun res!2077959 () Bool)

(assert (=> b!4867717 (= res!2077959 (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) (list!17479 input!661) (list!17479 input!661) (size!36861 (list!17479 input!661))))))))

(assert (=> b!4867717 (=> res!2077959 e!3043163)))

(assert (=> b!4867717 e!3043163))

(declare-fun lt!1994687 () Unit!145938)

(assert (=> b!4867717 (= lt!1994687 lt!1994685)))

(declare-fun lt!1994688 () Unit!145938)

(declare-fun lemmaSemiInverse!2550 (TokenValueInjection!15988 BalanceConc!28580) Unit!145938)

(assert (=> b!4867717 (= lt!1994688 (lemmaSemiInverse!2550 (transformation!8030 (h!62380 rules!1248)) (seqFromList!5896 (_1!33193 lt!1994689))))))

(declare-fun b!4867718 () Bool)

(assert (=> b!4867718 (= e!3043161 e!3043164)))

(declare-fun res!2077958 () Bool)

(assert (=> b!4867718 (=> (not res!2077958) (not e!3043164))))

(assert (=> b!4867718 (= res!2077958 (matchR!6490 (regex!8030 (h!62380 rules!1248)) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994686))))))))

(declare-fun b!4867719 () Bool)

(declare-fun res!2077954 () Bool)

(assert (=> b!4867719 (=> (not res!2077954) (not e!3043164))))

(assert (=> b!4867719 (= res!2077954 (= (rule!11154 (_1!33189 (get!19223 lt!1994686))) (h!62380 rules!1248)))))

(assert (= (and d!1562866 c!827935) b!4867712))

(assert (= (and d!1562866 (not c!827935)) b!4867717))

(assert (= (and b!4867717 (not res!2077959)) b!4867713))

(assert (= (and d!1562866 (not res!2077956)) b!4867718))

(assert (= (and b!4867718 res!2077958) b!4867716))

(assert (= (and b!4867716 res!2077957) b!4867715))

(assert (= (and b!4867715 res!2077955) b!4867719))

(assert (= (and b!4867719 res!2077954) b!4867711))

(assert (= (and b!4867711 res!2077953) b!4867714))

(declare-fun m!5867154 () Bool)

(assert (=> b!4867716 m!5867154))

(declare-fun m!5867156 () Bool)

(assert (=> b!4867716 m!5867156))

(assert (=> b!4867716 m!5867156))

(declare-fun m!5867158 () Bool)

(assert (=> b!4867716 m!5867158))

(assert (=> b!4867716 m!5867158))

(declare-fun m!5867160 () Bool)

(assert (=> b!4867716 m!5867160))

(assert (=> b!4867715 m!5867154))

(declare-fun m!5867162 () Bool)

(assert (=> b!4867715 m!5867162))

(assert (=> b!4867715 m!5863822))

(assert (=> b!4867715 m!5864152))

(assert (=> b!4867711 m!5867154))

(declare-fun m!5867164 () Bool)

(assert (=> b!4867711 m!5867164))

(assert (=> b!4867711 m!5867164))

(declare-fun m!5867166 () Bool)

(assert (=> b!4867711 m!5867166))

(assert (=> b!4867713 m!5865032))

(assert (=> b!4867713 m!5863822))

(assert (=> b!4867713 m!5864152))

(assert (=> b!4867713 m!5865032))

(assert (=> b!4867713 m!5863822))

(assert (=> b!4867713 m!5863822))

(assert (=> b!4867713 m!5864152))

(declare-fun m!5867168 () Bool)

(assert (=> b!4867713 m!5867168))

(declare-fun m!5867170 () Bool)

(assert (=> b!4867713 m!5867170))

(assert (=> b!4867714 m!5867154))

(declare-fun m!5867172 () Bool)

(assert (=> b!4867714 m!5867172))

(assert (=> b!4867718 m!5867154))

(assert (=> b!4867718 m!5867156))

(assert (=> b!4867718 m!5867156))

(assert (=> b!4867718 m!5867158))

(assert (=> b!4867718 m!5867158))

(declare-fun m!5867174 () Bool)

(assert (=> b!4867718 m!5867174))

(declare-fun m!5867176 () Bool)

(assert (=> b!4867717 m!5867176))

(declare-fun m!5867178 () Bool)

(assert (=> b!4867717 m!5867178))

(assert (=> b!4867717 m!5867176))

(assert (=> b!4867717 m!5865032))

(assert (=> b!4867717 m!5863822))

(declare-fun m!5867180 () Bool)

(assert (=> b!4867717 m!5867180))

(assert (=> b!4867717 m!5863822))

(assert (=> b!4867717 m!5864152))

(declare-fun m!5867182 () Bool)

(assert (=> b!4867717 m!5867182))

(assert (=> b!4867717 m!5867176))

(declare-fun m!5867184 () Bool)

(assert (=> b!4867717 m!5867184))

(assert (=> b!4867717 m!5867176))

(declare-fun m!5867186 () Bool)

(assert (=> b!4867717 m!5867186))

(assert (=> b!4867717 m!5865032))

(assert (=> b!4867717 m!5863822))

(assert (=> b!4867717 m!5863822))

(assert (=> b!4867717 m!5864152))

(assert (=> b!4867717 m!5867168))

(assert (=> b!4867719 m!5867154))

(declare-fun m!5867188 () Bool)

(assert (=> d!1562866 m!5867188))

(declare-fun m!5867190 () Bool)

(assert (=> d!1562866 m!5867190))

(assert (=> d!1562866 m!5863822))

(declare-fun m!5867192 () Bool)

(assert (=> d!1562866 m!5867192))

(assert (=> d!1562866 m!5864500))

(assert (=> b!4866450 d!1562866))

(assert (=> b!4866450 d!1561850))

(declare-fun d!1562868 () Bool)

(declare-fun lt!1994690 () Int)

(assert (=> d!1562868 (>= lt!1994690 0)))

(declare-fun e!3043165 () Int)

(assert (=> d!1562868 (= lt!1994690 e!3043165)))

(declare-fun c!827936 () Bool)

(assert (=> d!1562868 (= c!827936 ((_ is Nil!55931) (_2!33189 (get!19223 lt!1994098))))))

(assert (=> d!1562868 (= (size!36861 (_2!33189 (get!19223 lt!1994098))) lt!1994690)))

(declare-fun b!4867720 () Bool)

(assert (=> b!4867720 (= e!3043165 0)))

(declare-fun b!4867721 () Bool)

(assert (=> b!4867721 (= e!3043165 (+ 1 (size!36861 (t!363817 (_2!33189 (get!19223 lt!1994098))))))))

(assert (= (and d!1562868 c!827936) b!4867720))

(assert (= (and d!1562868 (not c!827936)) b!4867721))

(declare-fun m!5867194 () Bool)

(assert (=> b!4867721 m!5867194))

(assert (=> b!4866410 d!1562868))

(assert (=> b!4866410 d!1562760))

(assert (=> b!4866410 d!1562000))

(declare-fun d!1562870 () Bool)

(declare-fun lt!1994691 () Int)

(assert (=> d!1562870 (>= lt!1994691 0)))

(declare-fun e!3043166 () Int)

(assert (=> d!1562870 (= lt!1994691 e!3043166)))

(declare-fun c!827937 () Bool)

(assert (=> d!1562870 (= c!827937 ((_ is Nil!55933) (list!17484 (c!827480 lt!1993716))))))

(assert (=> d!1562870 (= (size!36862 (list!17484 (c!827480 lt!1993716))) lt!1994691)))

(declare-fun b!4867722 () Bool)

(assert (=> b!4867722 (= e!3043166 0)))

(declare-fun b!4867723 () Bool)

(assert (=> b!4867723 (= e!3043166 (+ 1 (size!36862 (t!363819 (list!17484 (c!827480 lt!1993716))))))))

(assert (= (and d!1562870 c!827937) b!4867722))

(assert (= (and d!1562870 (not c!827937)) b!4867723))

(declare-fun m!5867196 () Bool)

(assert (=> b!4867723 m!5867196))

(assert (=> d!1562098 d!1562870))

(assert (=> d!1562098 d!1562144))

(declare-fun d!1562872 () Bool)

(assert (=> d!1562872 (= (list!17480 (_1!33187 lt!1994094)) (list!17484 (c!827480 (_1!33187 lt!1994094))))))

(declare-fun bs!1174405 () Bool)

(assert (= bs!1174405 d!1562872))

(declare-fun m!5867198 () Bool)

(assert (=> bs!1174405 m!5867198))

(assert (=> b!4866369 d!1562872))

(assert (=> b!4866369 d!1562774))

(assert (=> b!4866369 d!1562776))

(declare-fun b!4867724 () Bool)

(declare-fun res!2077961 () Bool)

(declare-fun e!3043169 () Bool)

(assert (=> b!4867724 (=> (not res!2077961) (not e!3043169))))

(declare-fun lt!1994693 () Option!13777)

(assert (=> b!4867724 (= res!2077961 (matchR!6490 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994693)))) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994693))))))))

(declare-fun b!4867725 () Bool)

(assert (=> b!4867725 (= e!3043169 (contains!19391 (t!363818 rules!1248) (rule!11154 (_1!33189 (get!19223 lt!1994693)))))))

(declare-fun b!4867726 () Bool)

(declare-fun res!2077963 () Bool)

(assert (=> b!4867726 (=> (not res!2077963) (not e!3043169))))

(assert (=> b!4867726 (= res!2077963 (< (size!36861 (_2!33189 (get!19223 lt!1994693))) (size!36861 lt!1993715)))))

(declare-fun b!4867727 () Bool)

(declare-fun res!2077964 () Bool)

(assert (=> b!4867727 (=> (not res!2077964) (not e!3043169))))

(assert (=> b!4867727 (= res!2077964 (= (value!257997 (_1!33189 (get!19223 lt!1994693))) (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994693)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994693)))))))))

(declare-fun b!4867728 () Bool)

(declare-fun res!2077962 () Bool)

(assert (=> b!4867728 (=> (not res!2077962) (not e!3043169))))

(assert (=> b!4867728 (= res!2077962 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994693)))) (_2!33189 (get!19223 lt!1994693))) lt!1993715))))

(declare-fun bm!338050 () Bool)

(declare-fun call!338055 () Option!13777)

(assert (=> bm!338050 (= call!338055 (maxPrefixOneRule!3489 thiss!11777 (h!62380 (t!363818 rules!1248)) lt!1993715))))

(declare-fun b!4867730 () Bool)

(declare-fun res!2077965 () Bool)

(assert (=> b!4867730 (=> (not res!2077965) (not e!3043169))))

(assert (=> b!4867730 (= res!2077965 (= (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994693)))) (originalCharacters!8353 (_1!33189 (get!19223 lt!1994693)))))))

(declare-fun b!4867731 () Bool)

(declare-fun e!3043168 () Bool)

(assert (=> b!4867731 (= e!3043168 e!3043169)))

(declare-fun res!2077966 () Bool)

(assert (=> b!4867731 (=> (not res!2077966) (not e!3043169))))

(assert (=> b!4867731 (= res!2077966 (isDefined!10845 lt!1994693))))

(declare-fun b!4867732 () Bool)

(declare-fun e!3043167 () Option!13777)

(assert (=> b!4867732 (= e!3043167 call!338055)))

(declare-fun b!4867729 () Bool)

(declare-fun lt!1994694 () Option!13777)

(declare-fun lt!1994695 () Option!13777)

(assert (=> b!4867729 (= e!3043167 (ite (and ((_ is None!13776) lt!1994694) ((_ is None!13776) lt!1994695)) None!13776 (ite ((_ is None!13776) lt!1994695) lt!1994694 (ite ((_ is None!13776) lt!1994694) lt!1994695 (ite (>= (size!36854 (_1!33189 (v!49688 lt!1994694))) (size!36854 (_1!33189 (v!49688 lt!1994695)))) lt!1994694 lt!1994695)))))))

(assert (=> b!4867729 (= lt!1994694 call!338055)))

(assert (=> b!4867729 (= lt!1994695 (maxPrefix!4547 thiss!11777 (t!363818 (t!363818 rules!1248)) lt!1993715))))

(declare-fun d!1562874 () Bool)

(assert (=> d!1562874 e!3043168))

(declare-fun res!2077960 () Bool)

(assert (=> d!1562874 (=> res!2077960 e!3043168)))

(assert (=> d!1562874 (= res!2077960 (isEmpty!29923 lt!1994693))))

(assert (=> d!1562874 (= lt!1994693 e!3043167)))

(declare-fun c!827938 () Bool)

(assert (=> d!1562874 (= c!827938 (and ((_ is Cons!55932) (t!363818 rules!1248)) ((_ is Nil!55932) (t!363818 (t!363818 rules!1248)))))))

(declare-fun lt!1994696 () Unit!145938)

(declare-fun lt!1994692 () Unit!145938)

(assert (=> d!1562874 (= lt!1994696 lt!1994692)))

(assert (=> d!1562874 (isPrefix!4764 lt!1993715 lt!1993715)))

(assert (=> d!1562874 (= lt!1994692 (lemmaIsPrefixRefl!3161 lt!1993715 lt!1993715))))

(assert (=> d!1562874 (rulesValidInductive!3019 thiss!11777 (t!363818 rules!1248))))

(assert (=> d!1562874 (= (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) lt!1993715) lt!1994693)))

(assert (= (and d!1562874 c!827938) b!4867732))

(assert (= (and d!1562874 (not c!827938)) b!4867729))

(assert (= (or b!4867732 b!4867729) bm!338050))

(assert (= (and d!1562874 (not res!2077960)) b!4867731))

(assert (= (and b!4867731 res!2077966) b!4867730))

(assert (= (and b!4867730 res!2077965) b!4867726))

(assert (= (and b!4867726 res!2077963) b!4867728))

(assert (= (and b!4867728 res!2077962) b!4867727))

(assert (= (and b!4867727 res!2077964) b!4867724))

(assert (= (and b!4867724 res!2077961) b!4867725))

(declare-fun m!5867200 () Bool)

(assert (=> b!4867727 m!5867200))

(declare-fun m!5867202 () Bool)

(assert (=> b!4867727 m!5867202))

(assert (=> b!4867727 m!5867202))

(declare-fun m!5867204 () Bool)

(assert (=> b!4867727 m!5867204))

(declare-fun m!5867206 () Bool)

(assert (=> b!4867731 m!5867206))

(assert (=> b!4867728 m!5867200))

(declare-fun m!5867208 () Bool)

(assert (=> b!4867728 m!5867208))

(assert (=> b!4867728 m!5867208))

(declare-fun m!5867210 () Bool)

(assert (=> b!4867728 m!5867210))

(assert (=> b!4867728 m!5867210))

(declare-fun m!5867212 () Bool)

(assert (=> b!4867728 m!5867212))

(assert (=> b!4867725 m!5867200))

(declare-fun m!5867214 () Bool)

(assert (=> b!4867725 m!5867214))

(assert (=> b!4867724 m!5867200))

(assert (=> b!4867724 m!5867208))

(assert (=> b!4867724 m!5867208))

(assert (=> b!4867724 m!5867210))

(assert (=> b!4867724 m!5867210))

(declare-fun m!5867216 () Bool)

(assert (=> b!4867724 m!5867216))

(assert (=> b!4867726 m!5867200))

(declare-fun m!5867218 () Bool)

(assert (=> b!4867726 m!5867218))

(assert (=> b!4867726 m!5864078))

(assert (=> b!4867730 m!5867200))

(assert (=> b!4867730 m!5867208))

(assert (=> b!4867730 m!5867208))

(assert (=> b!4867730 m!5867210))

(declare-fun m!5867220 () Bool)

(assert (=> bm!338050 m!5867220))

(declare-fun m!5867222 () Bool)

(assert (=> b!4867729 m!5867222))

(declare-fun m!5867224 () Bool)

(assert (=> d!1562874 m!5867224))

(assert (=> d!1562874 m!5865000))

(assert (=> d!1562874 m!5865002))

(assert (=> d!1562874 m!5864502))

(assert (=> b!4866413 d!1562874))

(declare-fun b!4867733 () Bool)

(declare-fun e!3043171 () Bool)

(assert (=> b!4867733 (= e!3043171 (not (isEmpty!29927 (right!40954 (left!40624 (c!827478 input!661))))))))

(declare-fun b!4867734 () Bool)

(declare-fun res!2077972 () Bool)

(assert (=> b!4867734 (=> (not res!2077972) (not e!3043171))))

(assert (=> b!4867734 (= res!2077972 (isBalanced!3954 (right!40954 (left!40624 (c!827478 input!661)))))))

(declare-fun b!4867735 () Bool)

(declare-fun res!2077970 () Bool)

(assert (=> b!4867735 (=> (not res!2077970) (not e!3043171))))

(assert (=> b!4867735 (= res!2077970 (isBalanced!3954 (left!40624 (left!40624 (c!827478 input!661)))))))

(declare-fun b!4867736 () Bool)

(declare-fun res!2077969 () Bool)

(assert (=> b!4867736 (=> (not res!2077969) (not e!3043171))))

(assert (=> b!4867736 (= res!2077969 (not (isEmpty!29927 (left!40624 (left!40624 (c!827478 input!661))))))))

(declare-fun d!1562876 () Bool)

(declare-fun res!2077967 () Bool)

(declare-fun e!3043170 () Bool)

(assert (=> d!1562876 (=> res!2077967 e!3043170)))

(assert (=> d!1562876 (= res!2077967 (not ((_ is Node!14569) (left!40624 (c!827478 input!661)))))))

(assert (=> d!1562876 (= (isBalanced!3954 (left!40624 (c!827478 input!661))) e!3043170)))

(declare-fun b!4867737 () Bool)

(assert (=> b!4867737 (= e!3043170 e!3043171)))

(declare-fun res!2077968 () Bool)

(assert (=> b!4867737 (=> (not res!2077968) (not e!3043171))))

(assert (=> b!4867737 (= res!2077968 (<= (- 1) (- (height!1925 (left!40624 (left!40624 (c!827478 input!661)))) (height!1925 (right!40954 (left!40624 (c!827478 input!661)))))))))

(declare-fun b!4867738 () Bool)

(declare-fun res!2077971 () Bool)

(assert (=> b!4867738 (=> (not res!2077971) (not e!3043171))))

(assert (=> b!4867738 (= res!2077971 (<= (- (height!1925 (left!40624 (left!40624 (c!827478 input!661)))) (height!1925 (right!40954 (left!40624 (c!827478 input!661))))) 1))))

(assert (= (and d!1562876 (not res!2077967)) b!4867737))

(assert (= (and b!4867737 res!2077968) b!4867738))

(assert (= (and b!4867738 res!2077971) b!4867735))

(assert (= (and b!4867735 res!2077970) b!4867734))

(assert (= (and b!4867734 res!2077972) b!4867736))

(assert (= (and b!4867736 res!2077969) b!4867733))

(declare-fun m!5867226 () Bool)

(assert (=> b!4867737 m!5867226))

(declare-fun m!5867228 () Bool)

(assert (=> b!4867737 m!5867228))

(declare-fun m!5867230 () Bool)

(assert (=> b!4867735 m!5867230))

(declare-fun m!5867232 () Bool)

(assert (=> b!4867736 m!5867232))

(declare-fun m!5867234 () Bool)

(assert (=> b!4867734 m!5867234))

(assert (=> b!4867738 m!5867226))

(assert (=> b!4867738 m!5867228))

(declare-fun m!5867236 () Bool)

(assert (=> b!4867733 m!5867236))

(assert (=> b!4866500 d!1562876))

(declare-fun d!1562878 () Bool)

(assert (=> d!1562878 (= (max!0 (height!1925 (left!40624 (c!827478 input!661))) (height!1925 (right!40954 (c!827478 input!661)))) (ite (< (height!1925 (left!40624 (c!827478 input!661))) (height!1925 (right!40954 (c!827478 input!661)))) (height!1925 (right!40954 (c!827478 input!661))) (height!1925 (left!40624 (c!827478 input!661)))))))

(assert (=> b!4866063 d!1562878))

(declare-fun d!1562880 () Bool)

(assert (=> d!1562880 (= (height!1925 (left!40624 (c!827478 input!661))) (ite ((_ is Empty!14569) (left!40624 (c!827478 input!661))) 0 (ite ((_ is Leaf!24295) (left!40624 (c!827478 input!661))) 1 (cheight!14780 (left!40624 (c!827478 input!661))))))))

(assert (=> b!4866063 d!1562880))

(declare-fun d!1562882 () Bool)

(assert (=> d!1562882 (= (height!1925 (right!40954 (c!827478 input!661))) (ite ((_ is Empty!14569) (right!40954 (c!827478 input!661))) 0 (ite ((_ is Leaf!24295) (right!40954 (c!827478 input!661))) 1 (cheight!14780 (right!40954 (c!827478 input!661))))))))

(assert (=> b!4866063 d!1562882))

(declare-fun d!1562884 () Bool)

(declare-fun res!2077973 () Bool)

(declare-fun e!3043172 () Bool)

(assert (=> d!1562884 (=> (not res!2077973) (not e!3043172))))

(assert (=> d!1562884 (= res!2077973 (<= (size!36861 (list!17486 (xs!17875 (left!40624 (c!827478 input!661))))) 512))))

(assert (=> d!1562884 (= (inv!71844 (left!40624 (c!827478 input!661))) e!3043172)))

(declare-fun b!4867739 () Bool)

(declare-fun res!2077974 () Bool)

(assert (=> b!4867739 (=> (not res!2077974) (not e!3043172))))

(assert (=> b!4867739 (= res!2077974 (= (csize!29369 (left!40624 (c!827478 input!661))) (size!36861 (list!17486 (xs!17875 (left!40624 (c!827478 input!661)))))))))

(declare-fun b!4867740 () Bool)

(assert (=> b!4867740 (= e!3043172 (and (> (csize!29369 (left!40624 (c!827478 input!661))) 0) (<= (csize!29369 (left!40624 (c!827478 input!661))) 512)))))

(assert (= (and d!1562884 res!2077973) b!4867739))

(assert (= (and b!4867739 res!2077974) b!4867740))

(declare-fun m!5867238 () Bool)

(assert (=> d!1562884 m!5867238))

(assert (=> d!1562884 m!5867238))

(declare-fun m!5867240 () Bool)

(assert (=> d!1562884 m!5867240))

(assert (=> b!4867739 m!5867238))

(assert (=> b!4867739 m!5867238))

(assert (=> b!4867739 m!5867240))

(assert (=> b!4866380 d!1562884))

(declare-fun d!1562886 () Bool)

(declare-fun c!827939 () Bool)

(assert (=> d!1562886 (= c!827939 ((_ is Nil!55931) lt!1993955))))

(declare-fun e!3043173 () (InoxSet C!26408))

(assert (=> d!1562886 (= (content!9968 lt!1993955) e!3043173)))

(declare-fun b!4867741 () Bool)

(assert (=> b!4867741 (= e!3043173 ((as const (Array C!26408 Bool)) false))))

(declare-fun b!4867742 () Bool)

(assert (=> b!4867742 (= e!3043173 ((_ map or) (store ((as const (Array C!26408 Bool)) false) (h!62379 lt!1993955) true) (content!9968 (t!363817 lt!1993955))))))

(assert (= (and d!1562886 c!827939) b!4867741))

(assert (= (and d!1562886 (not c!827939)) b!4867742))

(declare-fun m!5867242 () Bool)

(assert (=> b!4867742 m!5867242))

(declare-fun m!5867244 () Bool)

(assert (=> b!4867742 m!5867244))

(assert (=> d!1562006 d!1562886))

(declare-fun d!1562888 () Bool)

(declare-fun c!827940 () Bool)

(assert (=> d!1562888 (= c!827940 ((_ is Nil!55931) (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun e!3043174 () (InoxSet C!26408))

(assert (=> d!1562888 (= (content!9968 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) e!3043174)))

(declare-fun b!4867743 () Bool)

(assert (=> b!4867743 (= e!3043174 ((as const (Array C!26408 Bool)) false))))

(declare-fun b!4867744 () Bool)

(assert (=> b!4867744 (= e!3043174 ((_ map or) (store ((as const (Array C!26408 Bool)) false) (h!62379 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) true) (content!9968 (t!363817 (t!363817 (list!17479 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))))

(assert (= (and d!1562888 c!827940) b!4867743))

(assert (= (and d!1562888 (not c!827940)) b!4867744))

(declare-fun m!5867246 () Bool)

(assert (=> b!4867744 m!5867246))

(assert (=> b!4867744 m!5867046))

(assert (=> d!1562006 d!1562888))

(assert (=> d!1562006 d!1562160))

(declare-fun b!4867746 () Bool)

(declare-fun e!3043175 () List!56055)

(declare-fun e!3043176 () List!56055)

(assert (=> b!4867746 (= e!3043175 e!3043176)))

(declare-fun c!827942 () Bool)

(assert (=> b!4867746 (= c!827942 ((_ is Leaf!24295) (c!827478 (_2!33187 lt!1993769))))))

(declare-fun b!4867748 () Bool)

(assert (=> b!4867748 (= e!3043176 (++!12179 (list!17483 (left!40624 (c!827478 (_2!33187 lt!1993769)))) (list!17483 (right!40954 (c!827478 (_2!33187 lt!1993769))))))))

(declare-fun b!4867745 () Bool)

(assert (=> b!4867745 (= e!3043175 Nil!55931)))

(declare-fun d!1562890 () Bool)

(declare-fun c!827941 () Bool)

(assert (=> d!1562890 (= c!827941 ((_ is Empty!14569) (c!827478 (_2!33187 lt!1993769))))))

(assert (=> d!1562890 (= (list!17483 (c!827478 (_2!33187 lt!1993769))) e!3043175)))

(declare-fun b!4867747 () Bool)

(assert (=> b!4867747 (= e!3043176 (list!17486 (xs!17875 (c!827478 (_2!33187 lt!1993769)))))))

(assert (= (and d!1562890 c!827941) b!4867745))

(assert (= (and d!1562890 (not c!827941)) b!4867746))

(assert (= (and b!4867746 c!827942) b!4867747))

(assert (= (and b!4867746 (not c!827942)) b!4867748))

(declare-fun m!5867248 () Bool)

(assert (=> b!4867748 m!5867248))

(declare-fun m!5867250 () Bool)

(assert (=> b!4867748 m!5867250))

(assert (=> b!4867748 m!5867248))

(assert (=> b!4867748 m!5867250))

(declare-fun m!5867252 () Bool)

(assert (=> b!4867748 m!5867252))

(declare-fun m!5867254 () Bool)

(assert (=> b!4867747 m!5867254))

(assert (=> d!1562138 d!1562890))

(declare-fun b!4867759 () Bool)

(declare-fun res!2077979 () Bool)

(declare-fun e!3043181 () Bool)

(assert (=> b!4867759 (=> (not res!2077979) (not e!3043181))))

(declare-fun lt!1994699 () List!56057)

(assert (=> b!4867759 (= res!2077979 (= (size!36862 lt!1994699) (+ (size!36862 (list!17484 (left!40625 (c!827480 lt!1993716)))) (size!36862 (list!17484 (right!40955 (c!827480 lt!1993716)))))))))

(declare-fun b!4867760 () Bool)

(assert (=> b!4867760 (= e!3043181 (or (not (= (list!17484 (right!40955 (c!827480 lt!1993716))) Nil!55933)) (= lt!1994699 (list!17484 (left!40625 (c!827480 lt!1993716))))))))

(declare-fun b!4867757 () Bool)

(declare-fun e!3043182 () List!56057)

(assert (=> b!4867757 (= e!3043182 (list!17484 (right!40955 (c!827480 lt!1993716))))))

(declare-fun d!1562892 () Bool)

(assert (=> d!1562892 e!3043181))

(declare-fun res!2077980 () Bool)

(assert (=> d!1562892 (=> (not res!2077980) (not e!3043181))))

(declare-fun content!9972 (List!56057) (InoxSet Token!14644))

(assert (=> d!1562892 (= res!2077980 (= (content!9972 lt!1994699) ((_ map or) (content!9972 (list!17484 (left!40625 (c!827480 lt!1993716)))) (content!9972 (list!17484 (right!40955 (c!827480 lt!1993716)))))))))

(assert (=> d!1562892 (= lt!1994699 e!3043182)))

(declare-fun c!827945 () Bool)

(assert (=> d!1562892 (= c!827945 ((_ is Nil!55933) (list!17484 (left!40625 (c!827480 lt!1993716)))))))

(assert (=> d!1562892 (= (++!12183 (list!17484 (left!40625 (c!827480 lt!1993716))) (list!17484 (right!40955 (c!827480 lt!1993716)))) lt!1994699)))

(declare-fun b!4867758 () Bool)

(assert (=> b!4867758 (= e!3043182 (Cons!55933 (h!62381 (list!17484 (left!40625 (c!827480 lt!1993716)))) (++!12183 (t!363819 (list!17484 (left!40625 (c!827480 lt!1993716)))) (list!17484 (right!40955 (c!827480 lt!1993716))))))))

(assert (= (and d!1562892 c!827945) b!4867757))

(assert (= (and d!1562892 (not c!827945)) b!4867758))

(assert (= (and d!1562892 res!2077980) b!4867759))

(assert (= (and b!4867759 res!2077979) b!4867760))

(declare-fun m!5867256 () Bool)

(assert (=> b!4867759 m!5867256))

(assert (=> b!4867759 m!5865076))

(declare-fun m!5867258 () Bool)

(assert (=> b!4867759 m!5867258))

(assert (=> b!4867759 m!5865078))

(declare-fun m!5867260 () Bool)

(assert (=> b!4867759 m!5867260))

(declare-fun m!5867262 () Bool)

(assert (=> d!1562892 m!5867262))

(assert (=> d!1562892 m!5865076))

(declare-fun m!5867264 () Bool)

(assert (=> d!1562892 m!5867264))

(assert (=> d!1562892 m!5865078))

(declare-fun m!5867266 () Bool)

(assert (=> d!1562892 m!5867266))

(assert (=> b!4867758 m!5865078))

(declare-fun m!5867268 () Bool)

(assert (=> b!4867758 m!5867268))

(assert (=> b!4866477 d!1562892))

(declare-fun b!4867764 () Bool)

(declare-fun e!3043184 () List!56057)

(assert (=> b!4867764 (= e!3043184 (++!12183 (list!17484 (left!40625 (left!40625 (c!827480 lt!1993716)))) (list!17484 (right!40955 (left!40625 (c!827480 lt!1993716))))))))

(declare-fun b!4867761 () Bool)

(declare-fun e!3043183 () List!56057)

(assert (=> b!4867761 (= e!3043183 Nil!55933)))

(declare-fun d!1562894 () Bool)

(declare-fun c!827946 () Bool)

(assert (=> d!1562894 (= c!827946 ((_ is Empty!14570) (left!40625 (c!827480 lt!1993716))))))

(assert (=> d!1562894 (= (list!17484 (left!40625 (c!827480 lt!1993716))) e!3043183)))

(declare-fun b!4867763 () Bool)

(assert (=> b!4867763 (= e!3043184 (list!17488 (xs!17876 (left!40625 (c!827480 lt!1993716)))))))

(declare-fun b!4867762 () Bool)

(assert (=> b!4867762 (= e!3043183 e!3043184)))

(declare-fun c!827947 () Bool)

(assert (=> b!4867762 (= c!827947 ((_ is Leaf!24296) (left!40625 (c!827480 lt!1993716))))))

(assert (= (and d!1562894 c!827946) b!4867761))

(assert (= (and d!1562894 (not c!827946)) b!4867762))

(assert (= (and b!4867762 c!827947) b!4867763))

(assert (= (and b!4867762 (not c!827947)) b!4867764))

(declare-fun m!5867270 () Bool)

(assert (=> b!4867764 m!5867270))

(declare-fun m!5867272 () Bool)

(assert (=> b!4867764 m!5867272))

(assert (=> b!4867764 m!5867270))

(assert (=> b!4867764 m!5867272))

(declare-fun m!5867274 () Bool)

(assert (=> b!4867764 m!5867274))

(declare-fun m!5867276 () Bool)

(assert (=> b!4867763 m!5867276))

(assert (=> b!4866477 d!1562894))

(declare-fun b!4867768 () Bool)

(declare-fun e!3043186 () List!56057)

(assert (=> b!4867768 (= e!3043186 (++!12183 (list!17484 (left!40625 (right!40955 (c!827480 lt!1993716)))) (list!17484 (right!40955 (right!40955 (c!827480 lt!1993716))))))))

(declare-fun b!4867765 () Bool)

(declare-fun e!3043185 () List!56057)

(assert (=> b!4867765 (= e!3043185 Nil!55933)))

(declare-fun d!1562896 () Bool)

(declare-fun c!827948 () Bool)

(assert (=> d!1562896 (= c!827948 ((_ is Empty!14570) (right!40955 (c!827480 lt!1993716))))))

(assert (=> d!1562896 (= (list!17484 (right!40955 (c!827480 lt!1993716))) e!3043185)))

(declare-fun b!4867767 () Bool)

(assert (=> b!4867767 (= e!3043186 (list!17488 (xs!17876 (right!40955 (c!827480 lt!1993716)))))))

(declare-fun b!4867766 () Bool)

(assert (=> b!4867766 (= e!3043185 e!3043186)))

(declare-fun c!827949 () Bool)

(assert (=> b!4867766 (= c!827949 ((_ is Leaf!24296) (right!40955 (c!827480 lt!1993716))))))

(assert (= (and d!1562896 c!827948) b!4867765))

(assert (= (and d!1562896 (not c!827948)) b!4867766))

(assert (= (and b!4867766 c!827949) b!4867767))

(assert (= (and b!4867766 (not c!827949)) b!4867768))

(declare-fun m!5867278 () Bool)

(assert (=> b!4867768 m!5867278))

(declare-fun m!5867280 () Bool)

(assert (=> b!4867768 m!5867280))

(assert (=> b!4867768 m!5867278))

(assert (=> b!4867768 m!5867280))

(declare-fun m!5867282 () Bool)

(assert (=> b!4867768 m!5867282))

(declare-fun m!5867284 () Bool)

(assert (=> b!4867767 m!5867284))

(assert (=> b!4866477 d!1562896))

(assert (=> b!4865741 d!1562148))

(assert (=> b!4865741 d!1562150))

(declare-fun d!1562898 () Bool)

(declare-fun choose!35592 (Int) Bool)

(assert (=> d!1562898 (= (Forall!1673 lambda!243416) (choose!35592 lambda!243416))))

(declare-fun bs!1174406 () Bool)

(assert (= bs!1174406 d!1562898))

(declare-fun m!5867286 () Bool)

(assert (=> bs!1174406 m!5867286))

(assert (=> d!1562162 d!1562898))

(declare-fun d!1562900 () Bool)

(assert (=> d!1562900 (= (get!19222 lt!1993964) (v!49684 lt!1993964))))

(assert (=> b!4866087 d!1562900))

(declare-fun d!1562902 () Bool)

(assert (=> d!1562902 (= (get!19223 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 input!661))) (v!49688 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 input!661))))))

(assert (=> b!4866087 d!1562902))

(assert (=> b!4866087 d!1562770))

(assert (=> b!4866087 d!1561850))

(declare-fun b!4867772 () Bool)

(declare-fun e!3043188 () List!56057)

(assert (=> b!4867772 (= e!3043188 (++!12183 (list!17484 (left!40625 (c!827480 (_1!33187 lt!1993718)))) (list!17484 (right!40955 (c!827480 (_1!33187 lt!1993718))))))))

(declare-fun b!4867769 () Bool)

(declare-fun e!3043187 () List!56057)

(assert (=> b!4867769 (= e!3043187 Nil!55933)))

(declare-fun d!1562904 () Bool)

(declare-fun c!827950 () Bool)

(assert (=> d!1562904 (= c!827950 ((_ is Empty!14570) (c!827480 (_1!33187 lt!1993718))))))

(assert (=> d!1562904 (= (list!17484 (c!827480 (_1!33187 lt!1993718))) e!3043187)))

(declare-fun b!4867771 () Bool)

(assert (=> b!4867771 (= e!3043188 (list!17488 (xs!17876 (c!827480 (_1!33187 lt!1993718)))))))

(declare-fun b!4867770 () Bool)

(assert (=> b!4867770 (= e!3043187 e!3043188)))

(declare-fun c!827951 () Bool)

(assert (=> b!4867770 (= c!827951 ((_ is Leaf!24296) (c!827480 (_1!33187 lt!1993718))))))

(assert (= (and d!1562904 c!827950) b!4867769))

(assert (= (and d!1562904 (not c!827950)) b!4867770))

(assert (= (and b!4867770 c!827951) b!4867771))

(assert (= (and b!4867770 (not c!827951)) b!4867772))

(declare-fun m!5867288 () Bool)

(assert (=> b!4867772 m!5867288))

(declare-fun m!5867290 () Bool)

(assert (=> b!4867772 m!5867290))

(assert (=> b!4867772 m!5867288))

(assert (=> b!4867772 m!5867290))

(declare-fun m!5867292 () Bool)

(assert (=> b!4867772 m!5867292))

(declare-fun m!5867294 () Bool)

(assert (=> b!4867771 m!5867294))

(assert (=> d!1562154 d!1562904))

(declare-fun d!1562906 () Bool)

(assert (=> d!1562906 (= (head!10411 lt!1993828) (h!62379 lt!1993828))))

(assert (=> b!4866045 d!1562906))

(declare-fun d!1562908 () Bool)

(assert (=> d!1562908 (= (head!10411 lt!1993830) (h!62379 lt!1993830))))

(assert (=> b!4866045 d!1562908))

(declare-fun d!1562910 () Bool)

(assert (=> d!1562910 (= (inv!71845 (xs!17875 (right!40954 (c!827478 totalInput!332)))) (<= (size!36861 (innerList!14657 (xs!17875 (right!40954 (c!827478 totalInput!332))))) 2147483647))))

(declare-fun bs!1174407 () Bool)

(assert (= bs!1174407 d!1562910))

(declare-fun m!5867296 () Bool)

(assert (=> bs!1174407 m!5867296))

(assert (=> b!4866511 d!1562910))

(assert (=> b!4866316 d!1562814))

(declare-fun d!1562912 () Bool)

(declare-fun lt!1994700 () Int)

(assert (=> d!1562912 (= lt!1994700 (size!36862 (list!17480 (_1!33187 lt!1994094))))))

(assert (=> d!1562912 (= lt!1994700 (size!36863 (c!827480 (_1!33187 lt!1994094))))))

(assert (=> d!1562912 (= (size!36856 (_1!33187 lt!1994094)) lt!1994700)))

(declare-fun bs!1174408 () Bool)

(assert (= bs!1174408 d!1562912))

(assert (=> bs!1174408 m!5864918))

(assert (=> bs!1174408 m!5864918))

(declare-fun m!5867298 () Bool)

(assert (=> bs!1174408 m!5867298))

(declare-fun m!5867300 () Bool)

(assert (=> bs!1174408 m!5867300))

(assert (=> d!1562102 d!1562912))

(declare-fun b!4867773 () Bool)

(declare-fun lt!1994706 () Option!13775)

(declare-fun e!3043191 () Bool)

(assert (=> b!4867773 (= e!3043191 (= (list!17479 (_2!33185 (get!19222 lt!1994706))) (_2!33189 (get!19223 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993770))))))))))

(declare-fun b!4867774 () Bool)

(declare-fun e!3043192 () Bool)

(assert (=> b!4867774 (= e!3043192 e!3043191)))

(declare-fun res!2077985 () Bool)

(assert (=> b!4867774 (=> (not res!2077985) (not e!3043191))))

(assert (=> b!4867774 (= res!2077985 (= (_1!33185 (get!19222 lt!1994706)) (_1!33189 (get!19223 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993770))))))))))

(declare-fun d!1562914 () Bool)

(declare-fun e!3043194 () Bool)

(assert (=> d!1562914 e!3043194))

(declare-fun res!2077986 () Bool)

(assert (=> d!1562914 (=> (not res!2077986) (not e!3043194))))

(assert (=> d!1562914 (= res!2077986 (= (isDefined!10844 lt!1994706) (isDefined!10845 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993770)))))))))

(declare-fun e!3043193 () Option!13775)

(assert (=> d!1562914 (= lt!1994706 e!3043193)))

(declare-fun c!827952 () Bool)

(assert (=> d!1562914 (= c!827952 (and ((_ is Cons!55932) rules!1248) ((_ is Nil!55932) (t!363818 rules!1248))))))

(declare-fun lt!1994704 () Unit!145938)

(declare-fun lt!1994705 () Unit!145938)

(assert (=> d!1562914 (= lt!1994704 lt!1994705)))

(declare-fun lt!1994703 () List!56055)

(declare-fun lt!1994702 () List!56055)

(assert (=> d!1562914 (isPrefix!4764 lt!1994703 lt!1994702)))

(assert (=> d!1562914 (= lt!1994705 (lemmaIsPrefixRefl!3161 lt!1994703 lt!1994702))))

(assert (=> d!1562914 (= lt!1994702 (list!17479 (_2!33185 (v!49684 lt!1993770))))))

(assert (=> d!1562914 (= lt!1994703 (list!17479 (_2!33185 (v!49684 lt!1993770))))))

(assert (=> d!1562914 (rulesValidInductive!3019 thiss!11777 rules!1248)))

(assert (=> d!1562914 (= (maxPrefixZipperSequence!1223 thiss!11777 rules!1248 (_2!33185 (v!49684 lt!1993770))) lt!1994706)))

(declare-fun b!4867775 () Bool)

(declare-fun res!2077984 () Bool)

(assert (=> b!4867775 (=> (not res!2077984) (not e!3043194))))

(declare-fun e!3043190 () Bool)

(assert (=> b!4867775 (= res!2077984 e!3043190)))

(declare-fun res!2077983 () Bool)

(assert (=> b!4867775 (=> res!2077983 e!3043190)))

(assert (=> b!4867775 (= res!2077983 (not (isDefined!10844 lt!1994706)))))

(declare-fun b!4867776 () Bool)

(assert (=> b!4867776 (= e!3043194 e!3043192)))

(declare-fun res!2077981 () Bool)

(assert (=> b!4867776 (=> res!2077981 e!3043192)))

(assert (=> b!4867776 (= res!2077981 (not (isDefined!10844 lt!1994706)))))

(declare-fun b!4867777 () Bool)

(declare-fun e!3043189 () Bool)

(assert (=> b!4867777 (= e!3043190 e!3043189)))

(declare-fun res!2077982 () Bool)

(assert (=> b!4867777 (=> (not res!2077982) (not e!3043189))))

(assert (=> b!4867777 (= res!2077982 (= (_1!33185 (get!19222 lt!1994706)) (_1!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993770))))))))))

(declare-fun b!4867778 () Bool)

(declare-fun call!338056 () Option!13775)

(assert (=> b!4867778 (= e!3043193 call!338056)))

(declare-fun bm!338051 () Bool)

(assert (=> bm!338051 (= call!338056 (maxPrefixOneRuleZipperSequence!576 thiss!11777 (h!62380 rules!1248) (_2!33185 (v!49684 lt!1993770))))))

(declare-fun b!4867779 () Bool)

(declare-fun lt!1994701 () Option!13775)

(declare-fun lt!1994707 () Option!13775)

(assert (=> b!4867779 (= e!3043193 (ite (and ((_ is None!13774) lt!1994701) ((_ is None!13774) lt!1994707)) None!13774 (ite ((_ is None!13774) lt!1994707) lt!1994701 (ite ((_ is None!13774) lt!1994701) lt!1994707 (ite (>= (size!36854 (_1!33185 (v!49684 lt!1994701))) (size!36854 (_1!33185 (v!49684 lt!1994707)))) lt!1994701 lt!1994707)))))))

(assert (=> b!4867779 (= lt!1994701 call!338056)))

(assert (=> b!4867779 (= lt!1994707 (maxPrefixZipperSequence!1223 thiss!11777 (t!363818 rules!1248) (_2!33185 (v!49684 lt!1993770))))))

(declare-fun b!4867780 () Bool)

(assert (=> b!4867780 (= e!3043189 (= (list!17479 (_2!33185 (get!19222 lt!1994706))) (_2!33189 (get!19223 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993770))))))))))

(assert (= (and d!1562914 c!827952) b!4867778))

(assert (= (and d!1562914 (not c!827952)) b!4867779))

(assert (= (or b!4867778 b!4867779) bm!338051))

(assert (= (and d!1562914 res!2077986) b!4867775))

(assert (= (and b!4867775 (not res!2077983)) b!4867777))

(assert (= (and b!4867777 res!2077982) b!4867780))

(assert (= (and b!4867775 res!2077984) b!4867776))

(assert (= (and b!4867776 (not res!2077981)) b!4867774))

(assert (= (and b!4867774 res!2077985) b!4867773))

(declare-fun m!5867302 () Bool)

(assert (=> b!4867773 m!5867302))

(declare-fun m!5867304 () Bool)

(assert (=> b!4867773 m!5867304))

(assert (=> b!4867773 m!5866936))

(declare-fun m!5867306 () Bool)

(assert (=> b!4867773 m!5867306))

(assert (=> b!4867773 m!5864920))

(assert (=> b!4867773 m!5866936))

(assert (=> b!4867773 m!5864920))

(declare-fun m!5867308 () Bool)

(assert (=> b!4867776 m!5867308))

(declare-fun m!5867310 () Bool)

(assert (=> bm!338051 m!5867310))

(assert (=> b!4867777 m!5867302))

(assert (=> b!4867777 m!5864920))

(assert (=> b!4867777 m!5864920))

(declare-fun m!5867312 () Bool)

(assert (=> b!4867777 m!5867312))

(assert (=> b!4867777 m!5867312))

(declare-fun m!5867314 () Bool)

(assert (=> b!4867777 m!5867314))

(assert (=> b!4867774 m!5867302))

(assert (=> b!4867774 m!5864920))

(assert (=> b!4867774 m!5864920))

(assert (=> b!4867774 m!5866936))

(assert (=> b!4867774 m!5866936))

(assert (=> b!4867774 m!5867306))

(assert (=> b!4867780 m!5867302))

(assert (=> b!4867780 m!5864920))

(assert (=> b!4867780 m!5864920))

(assert (=> b!4867780 m!5867312))

(assert (=> b!4867780 m!5867304))

(assert (=> b!4867780 m!5867312))

(assert (=> b!4867780 m!5867314))

(assert (=> d!1562914 m!5864116))

(declare-fun m!5867316 () Bool)

(assert (=> d!1562914 m!5867316))

(assert (=> d!1562914 m!5864920))

(declare-fun m!5867318 () Bool)

(assert (=> d!1562914 m!5867318))

(assert (=> d!1562914 m!5867308))

(assert (=> d!1562914 m!5864920))

(assert (=> d!1562914 m!5867312))

(assert (=> d!1562914 m!5867312))

(declare-fun m!5867320 () Bool)

(assert (=> d!1562914 m!5867320))

(assert (=> b!4867775 m!5867308))

(declare-fun m!5867322 () Bool)

(assert (=> b!4867779 m!5867322))

(assert (=> d!1562102 d!1562914))

(declare-fun d!1562916 () Bool)

(declare-fun res!2077987 () Bool)

(declare-fun e!3043195 () Bool)

(assert (=> d!1562916 (=> (not res!2077987) (not e!3043195))))

(assert (=> d!1562916 (= res!2077987 (= (csize!29368 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) (+ (size!36864 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) (size!36864 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))))

(assert (=> d!1562916 (= (inv!71843 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) e!3043195)))

(declare-fun b!4867781 () Bool)

(declare-fun res!2077988 () Bool)

(assert (=> b!4867781 (=> (not res!2077988) (not e!3043195))))

(assert (=> b!4867781 (= res!2077988 (and (not (= (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) Empty!14569)) (not (= (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) Empty!14569))))))

(declare-fun b!4867782 () Bool)

(declare-fun res!2077989 () Bool)

(assert (=> b!4867782 (=> (not res!2077989) (not e!3043195))))

(assert (=> b!4867782 (= res!2077989 (= (cheight!14780 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) (+ (max!0 (height!1925 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) (height!1925 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) 1)))))

(declare-fun b!4867783 () Bool)

(assert (=> b!4867783 (= e!3043195 (<= 0 (cheight!14780 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562916 res!2077987) b!4867781))

(assert (= (and b!4867781 res!2077988) b!4867782))

(assert (= (and b!4867782 res!2077989) b!4867783))

(declare-fun m!5867324 () Bool)

(assert (=> d!1562916 m!5867324))

(declare-fun m!5867326 () Bool)

(assert (=> d!1562916 m!5867326))

(declare-fun m!5867328 () Bool)

(assert (=> b!4867782 m!5867328))

(declare-fun m!5867330 () Bool)

(assert (=> b!4867782 m!5867330))

(assert (=> b!4867782 m!5867328))

(assert (=> b!4867782 m!5867330))

(declare-fun m!5867332 () Bool)

(assert (=> b!4867782 m!5867332))

(assert (=> b!4866186 d!1562916))

(declare-fun b!4867786 () Bool)

(declare-fun res!2077990 () Bool)

(declare-fun e!3043196 () Bool)

(assert (=> b!4867786 (=> (not res!2077990) (not e!3043196))))

(declare-fun lt!1994708 () List!56055)

(assert (=> b!4867786 (= res!2077990 (= (size!36861 lt!1994708) (+ (size!36861 (list!17483 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (size!36861 (list!17483 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))))

(declare-fun b!4867784 () Bool)

(declare-fun e!3043197 () List!56055)

(assert (=> b!4867784 (= e!3043197 (list!17483 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun d!1562918 () Bool)

(assert (=> d!1562918 e!3043196))

(declare-fun res!2077991 () Bool)

(assert (=> d!1562918 (=> (not res!2077991) (not e!3043196))))

(assert (=> d!1562918 (= res!2077991 (= (content!9968 lt!1994708) ((_ map or) (content!9968 (list!17483 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (content!9968 (list!17483 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))))

(assert (=> d!1562918 (= lt!1994708 e!3043197)))

(declare-fun c!827953 () Bool)

(assert (=> d!1562918 (= c!827953 ((_ is Nil!55931) (list!17483 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (=> d!1562918 (= (++!12179 (list!17483 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) (list!17483 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) lt!1994708)))

(declare-fun b!4867787 () Bool)

(assert (=> b!4867787 (= e!3043196 (or (not (= (list!17483 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) Nil!55931)) (= lt!1994708 (list!17483 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))))

(declare-fun b!4867785 () Bool)

(assert (=> b!4867785 (= e!3043197 (Cons!55931 (h!62379 (list!17483 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (++!12179 (t!363817 (list!17483 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (list!17483 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))))

(assert (= (and d!1562918 c!827953) b!4867784))

(assert (= (and d!1562918 (not c!827953)) b!4867785))

(assert (= (and d!1562918 res!2077991) b!4867786))

(assert (= (and b!4867786 res!2077990) b!4867787))

(declare-fun m!5867334 () Bool)

(assert (=> b!4867786 m!5867334))

(assert (=> b!4867786 m!5864894))

(declare-fun m!5867336 () Bool)

(assert (=> b!4867786 m!5867336))

(assert (=> b!4867786 m!5864896))

(declare-fun m!5867338 () Bool)

(assert (=> b!4867786 m!5867338))

(declare-fun m!5867340 () Bool)

(assert (=> d!1562918 m!5867340))

(assert (=> d!1562918 m!5864894))

(declare-fun m!5867342 () Bool)

(assert (=> d!1562918 m!5867342))

(assert (=> d!1562918 m!5864896))

(declare-fun m!5867344 () Bool)

(assert (=> d!1562918 m!5867344))

(assert (=> b!4867785 m!5864896))

(declare-fun m!5867346 () Bool)

(assert (=> b!4867785 m!5867346))

(assert (=> b!4866351 d!1562918))

(declare-fun b!4867789 () Bool)

(declare-fun e!3043198 () List!56055)

(declare-fun e!3043199 () List!56055)

(assert (=> b!4867789 (= e!3043198 e!3043199)))

(declare-fun c!827955 () Bool)

(assert (=> b!4867789 (= c!827955 ((_ is Leaf!24295) (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4867791 () Bool)

(assert (=> b!4867791 (= e!3043199 (++!12179 (list!17483 (left!40624 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (list!17483 (right!40954 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))))

(declare-fun b!4867788 () Bool)

(assert (=> b!4867788 (= e!3043198 Nil!55931)))

(declare-fun d!1562920 () Bool)

(declare-fun c!827954 () Bool)

(assert (=> d!1562920 (= c!827954 ((_ is Empty!14569) (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562920 (= (list!17483 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) e!3043198)))

(declare-fun b!4867790 () Bool)

(assert (=> b!4867790 (= e!3043199 (list!17486 (xs!17875 (left!40624 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562920 c!827954) b!4867788))

(assert (= (and d!1562920 (not c!827954)) b!4867789))

(assert (= (and b!4867789 c!827955) b!4867790))

(assert (= (and b!4867789 (not c!827955)) b!4867791))

(declare-fun m!5867348 () Bool)

(assert (=> b!4867791 m!5867348))

(declare-fun m!5867350 () Bool)

(assert (=> b!4867791 m!5867350))

(assert (=> b!4867791 m!5867348))

(assert (=> b!4867791 m!5867350))

(declare-fun m!5867352 () Bool)

(assert (=> b!4867791 m!5867352))

(declare-fun m!5867354 () Bool)

(assert (=> b!4867790 m!5867354))

(assert (=> b!4866351 d!1562920))

(declare-fun b!4867793 () Bool)

(declare-fun e!3043200 () List!56055)

(declare-fun e!3043201 () List!56055)

(assert (=> b!4867793 (= e!3043200 e!3043201)))

(declare-fun c!827957 () Bool)

(assert (=> b!4867793 (= c!827957 ((_ is Leaf!24295) (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(declare-fun b!4867795 () Bool)

(assert (=> b!4867795 (= e!3043201 (++!12179 (list!17483 (left!40624 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))) (list!17483 (right!40954 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))))

(declare-fun b!4867792 () Bool)

(assert (=> b!4867792 (= e!3043200 Nil!55931)))

(declare-fun d!1562922 () Bool)

(declare-fun c!827956 () Bool)

(assert (=> d!1562922 (= c!827956 ((_ is Empty!14569) (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562922 (= (list!17483 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) e!3043200)))

(declare-fun b!4867794 () Bool)

(assert (=> b!4867794 (= e!3043201 (list!17486 (xs!17875 (right!40954 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562922 c!827956) b!4867792))

(assert (= (and d!1562922 (not c!827956)) b!4867793))

(assert (= (and b!4867793 c!827957) b!4867794))

(assert (= (and b!4867793 (not c!827957)) b!4867795))

(declare-fun m!5867356 () Bool)

(assert (=> b!4867795 m!5867356))

(declare-fun m!5867358 () Bool)

(assert (=> b!4867795 m!5867358))

(assert (=> b!4867795 m!5867356))

(assert (=> b!4867795 m!5867358))

(declare-fun m!5867360 () Bool)

(assert (=> b!4867795 m!5867360))

(declare-fun m!5867362 () Bool)

(assert (=> b!4867794 m!5867362))

(assert (=> b!4866351 d!1562922))

(assert (=> b!4866089 d!1562770))

(declare-fun d!1562924 () Bool)

(assert (=> d!1562924 (= (list!17479 (_2!33185 (get!19222 lt!1993964))) (list!17483 (c!827478 (_2!33185 (get!19222 lt!1993964)))))))

(declare-fun bs!1174409 () Bool)

(assert (= bs!1174409 d!1562924))

(declare-fun m!5867364 () Bool)

(assert (=> bs!1174409 m!5867364))

(assert (=> b!4866089 d!1562924))

(assert (=> b!4866089 d!1562900))

(assert (=> b!4866089 d!1561850))

(assert (=> b!4866089 d!1562902))

(declare-fun d!1562926 () Bool)

(declare-fun lt!1994709 () Int)

(assert (=> d!1562926 (>= lt!1994709 0)))

(declare-fun e!3043202 () Int)

(assert (=> d!1562926 (= lt!1994709 e!3043202)))

(declare-fun c!827958 () Bool)

(assert (=> d!1562926 (= c!827958 ((_ is Nil!55931) (_2!33186 lt!1994024)))))

(assert (=> d!1562926 (= (size!36861 (_2!33186 lt!1994024)) lt!1994709)))

(declare-fun b!4867796 () Bool)

(assert (=> b!4867796 (= e!3043202 0)))

(declare-fun b!4867797 () Bool)

(assert (=> b!4867797 (= e!3043202 (+ 1 (size!36861 (t!363817 (_2!33186 lt!1994024)))))))

(assert (= (and d!1562926 c!827958) b!4867796))

(assert (= (and d!1562926 (not c!827958)) b!4867797))

(declare-fun m!5867366 () Bool)

(assert (=> b!4867797 m!5867366))

(assert (=> b!4866183 d!1562926))

(declare-fun d!1562928 () Bool)

(declare-fun lt!1994710 () Int)

(assert (=> d!1562928 (>= lt!1994710 0)))

(declare-fun e!3043203 () Int)

(assert (=> d!1562928 (= lt!1994710 e!3043203)))

(declare-fun c!827959 () Bool)

(assert (=> d!1562928 (= c!827959 ((_ is Nil!55931) (_2!33189 (v!49688 lt!1993804))))))

(assert (=> d!1562928 (= (size!36861 (_2!33189 (v!49688 lt!1993804))) lt!1994710)))

(declare-fun b!4867798 () Bool)

(assert (=> b!4867798 (= e!3043203 0)))

(declare-fun b!4867799 () Bool)

(assert (=> b!4867799 (= e!3043203 (+ 1 (size!36861 (t!363817 (_2!33189 (v!49688 lt!1993804))))))))

(assert (= (and d!1562928 c!827959) b!4867798))

(assert (= (and d!1562928 (not c!827959)) b!4867799))

(declare-fun m!5867368 () Bool)

(assert (=> b!4867799 m!5867368))

(assert (=> b!4866183 d!1562928))

(declare-fun d!1562930 () Bool)

(declare-fun choose!35593 (Int) Bool)

(assert (=> d!1562930 (= (Forall2!1253 lambda!243408) (choose!35593 lambda!243408))))

(declare-fun bs!1174410 () Bool)

(assert (= bs!1174410 d!1562930))

(declare-fun m!5867370 () Bool)

(assert (=> bs!1174410 m!5867370))

(assert (=> d!1562130 d!1562930))

(declare-fun b!4867800 () Bool)

(declare-fun res!2077992 () Bool)

(declare-fun e!3043204 () Bool)

(assert (=> b!4867800 (=> (not res!2077992) (not e!3043204))))

(assert (=> b!4867800 (= res!2077992 (isBalanced!3953 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770))))))))

(declare-fun b!4867801 () Bool)

(assert (=> b!4867801 (= e!3043204 (not (isEmpty!29919 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770)))))))))

(declare-fun b!4867802 () Bool)

(declare-fun res!2077995 () Bool)

(assert (=> b!4867802 (=> (not res!2077995) (not e!3043204))))

(assert (=> b!4867802 (= res!2077995 (<= (- (height!1926 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770))))) (height!1926 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770)))))) 1))))

(declare-fun b!4867803 () Bool)

(declare-fun res!2077996 () Bool)

(assert (=> b!4867803 (=> (not res!2077996) (not e!3043204))))

(assert (=> b!4867803 (= res!2077996 (not (isEmpty!29919 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770)))))))))

(declare-fun b!4867804 () Bool)

(declare-fun res!2077997 () Bool)

(assert (=> b!4867804 (=> (not res!2077997) (not e!3043204))))

(assert (=> b!4867804 (= res!2077997 (isBalanced!3953 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770))))))))

(declare-fun b!4867805 () Bool)

(declare-fun e!3043205 () Bool)

(assert (=> b!4867805 (= e!3043205 e!3043204)))

(declare-fun res!2077994 () Bool)

(assert (=> b!4867805 (=> (not res!2077994) (not e!3043204))))

(assert (=> b!4867805 (= res!2077994 (<= (- 1) (- (height!1926 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770))))) (height!1926 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770))))))))))

(declare-fun d!1562932 () Bool)

(declare-fun res!2077993 () Bool)

(assert (=> d!1562932 (=> res!2077993 e!3043205)))

(assert (=> d!1562932 (= res!2077993 (not ((_ is Node!14570) (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770))))))))

(assert (=> d!1562932 (= (isBalanced!3953 (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770)))) e!3043205)))

(assert (= (and d!1562932 (not res!2077993)) b!4867805))

(assert (= (and b!4867805 res!2077994) b!4867802))

(assert (= (and b!4867802 res!2077995) b!4867800))

(assert (= (and b!4867800 res!2077992) b!4867804))

(assert (= (and b!4867804 res!2077997) b!4867803))

(assert (= (and b!4867803 res!2077996) b!4867801))

(declare-fun m!5867372 () Bool)

(assert (=> b!4867802 m!5867372))

(declare-fun m!5867374 () Bool)

(assert (=> b!4867802 m!5867374))

(declare-fun m!5867376 () Bool)

(assert (=> b!4867801 m!5867376))

(assert (=> b!4867805 m!5867372))

(assert (=> b!4867805 m!5867374))

(declare-fun m!5867378 () Bool)

(assert (=> b!4867803 m!5867378))

(declare-fun m!5867380 () Bool)

(assert (=> b!4867800 m!5867380))

(declare-fun m!5867382 () Bool)

(assert (=> b!4867804 m!5867382))

(assert (=> d!1562100 d!1562932))

(declare-fun d!1562934 () Bool)

(declare-fun e!3043206 () Bool)

(assert (=> d!1562934 e!3043206))

(declare-fun res!2077998 () Bool)

(assert (=> d!1562934 (=> (not res!2077998) (not e!3043206))))

(declare-fun lt!1994711 () Conc!14570)

(assert (=> d!1562934 (= res!2077998 (isBalanced!3953 lt!1994711))))

(assert (=> d!1562934 (= lt!1994711 (++!12181 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993770))) 1) (c!827480 (_1!33187 lt!1993768))))))

(assert (=> d!1562934 (isBalanced!3953 (c!827480 (_1!33187 lt!1993768)))))

(assert (=> d!1562934 (= (prepend!1394 (c!827480 (_1!33187 lt!1993768)) (_1!33185 (v!49684 lt!1993770))) lt!1994711)))

(declare-fun b!4867806 () Bool)

(assert (=> b!4867806 (= e!3043206 (= (list!17484 lt!1994711) (Cons!55933 (_1!33185 (v!49684 lt!1993770)) (list!17484 (c!827480 (_1!33187 lt!1993768))))))))

(assert (= (and d!1562934 res!2077998) b!4867806))

(declare-fun m!5867384 () Bool)

(assert (=> d!1562934 m!5867384))

(declare-fun m!5867386 () Bool)

(assert (=> d!1562934 m!5867386))

(declare-fun m!5867388 () Bool)

(assert (=> d!1562934 m!5867388))

(declare-fun m!5867390 () Bool)

(assert (=> d!1562934 m!5867390))

(declare-fun m!5867392 () Bool)

(assert (=> b!4867806 m!5867392))

(declare-fun m!5867394 () Bool)

(assert (=> b!4867806 m!5867394))

(assert (=> d!1562100 d!1562934))

(declare-fun d!1562936 () Bool)

(assert (=> d!1562936 (= (inv!71845 (xs!17875 (right!40954 (c!827478 input!661)))) (<= (size!36861 (innerList!14657 (xs!17875 (right!40954 (c!827478 input!661))))) 2147483647))))

(declare-fun bs!1174411 () Bool)

(assert (= bs!1174411 d!1562936))

(declare-fun m!5867396 () Bool)

(assert (=> bs!1174411 m!5867396))

(assert (=> b!4866517 d!1562936))

(declare-fun d!1562938 () Bool)

(assert (=> d!1562938 (= (inv!71845 (xs!17875 (left!40624 (c!827478 totalInput!332)))) (<= (size!36861 (innerList!14657 (xs!17875 (left!40624 (c!827478 totalInput!332))))) 2147483647))))

(declare-fun bs!1174412 () Bool)

(assert (= bs!1174412 d!1562938))

(declare-fun m!5867398 () Bool)

(assert (=> bs!1174412 m!5867398))

(assert (=> b!4866508 d!1562938))

(assert (=> bm!337926 d!1562866))

(declare-fun d!1562940 () Bool)

(declare-fun res!2077999 () Bool)

(declare-fun e!3043207 () Bool)

(assert (=> d!1562940 (=> (not res!2077999) (not e!3043207))))

(assert (=> d!1562940 (= res!2077999 (= (csize!29368 (right!40954 (c!827478 input!661))) (+ (size!36864 (left!40624 (right!40954 (c!827478 input!661)))) (size!36864 (right!40954 (right!40954 (c!827478 input!661)))))))))

(assert (=> d!1562940 (= (inv!71843 (right!40954 (c!827478 input!661))) e!3043207)))

(declare-fun b!4867807 () Bool)

(declare-fun res!2078000 () Bool)

(assert (=> b!4867807 (=> (not res!2078000) (not e!3043207))))

(assert (=> b!4867807 (= res!2078000 (and (not (= (left!40624 (right!40954 (c!827478 input!661))) Empty!14569)) (not (= (right!40954 (right!40954 (c!827478 input!661))) Empty!14569))))))

(declare-fun b!4867808 () Bool)

(declare-fun res!2078001 () Bool)

(assert (=> b!4867808 (=> (not res!2078001) (not e!3043207))))

(assert (=> b!4867808 (= res!2078001 (= (cheight!14780 (right!40954 (c!827478 input!661))) (+ (max!0 (height!1925 (left!40624 (right!40954 (c!827478 input!661)))) (height!1925 (right!40954 (right!40954 (c!827478 input!661))))) 1)))))

(declare-fun b!4867809 () Bool)

(assert (=> b!4867809 (= e!3043207 (<= 0 (cheight!14780 (right!40954 (c!827478 input!661)))))))

(assert (= (and d!1562940 res!2077999) b!4867807))

(assert (= (and b!4867807 res!2078000) b!4867808))

(assert (= (and b!4867808 res!2078001) b!4867809))

(declare-fun m!5867400 () Bool)

(assert (=> d!1562940 m!5867400))

(declare-fun m!5867402 () Bool)

(assert (=> d!1562940 m!5867402))

(declare-fun m!5867404 () Bool)

(assert (=> b!4867808 m!5867404))

(declare-fun m!5867406 () Bool)

(assert (=> b!4867808 m!5867406))

(assert (=> b!4867808 m!5867404))

(assert (=> b!4867808 m!5867406))

(declare-fun m!5867408 () Bool)

(assert (=> b!4867808 m!5867408))

(assert (=> b!4866381 d!1562940))

(declare-fun b!4867810 () Bool)

(declare-fun res!2078002 () Bool)

(declare-fun e!3043208 () Bool)

(assert (=> b!4867810 (=> (not res!2078002) (not e!3043208))))

(assert (=> b!4867810 (= res!2078002 (isBalanced!3953 (left!40625 lt!1994085)))))

(declare-fun b!4867811 () Bool)

(assert (=> b!4867811 (= e!3043208 (not (isEmpty!29919 (right!40955 lt!1994085))))))

(declare-fun b!4867812 () Bool)

(declare-fun res!2078005 () Bool)

(assert (=> b!4867812 (=> (not res!2078005) (not e!3043208))))

(assert (=> b!4867812 (= res!2078005 (<= (- (height!1926 (left!40625 lt!1994085)) (height!1926 (right!40955 lt!1994085))) 1))))

(declare-fun b!4867813 () Bool)

(declare-fun res!2078006 () Bool)

(assert (=> b!4867813 (=> (not res!2078006) (not e!3043208))))

(assert (=> b!4867813 (= res!2078006 (not (isEmpty!29919 (left!40625 lt!1994085))))))

(declare-fun b!4867814 () Bool)

(declare-fun res!2078007 () Bool)

(assert (=> b!4867814 (=> (not res!2078007) (not e!3043208))))

(assert (=> b!4867814 (= res!2078007 (isBalanced!3953 (right!40955 lt!1994085)))))

(declare-fun b!4867815 () Bool)

(declare-fun e!3043209 () Bool)

(assert (=> b!4867815 (= e!3043209 e!3043208)))

(declare-fun res!2078004 () Bool)

(assert (=> b!4867815 (=> (not res!2078004) (not e!3043208))))

(assert (=> b!4867815 (= res!2078004 (<= (- 1) (- (height!1926 (left!40625 lt!1994085)) (height!1926 (right!40955 lt!1994085)))))))

(declare-fun d!1562942 () Bool)

(declare-fun res!2078003 () Bool)

(assert (=> d!1562942 (=> res!2078003 e!3043209)))

(assert (=> d!1562942 (= res!2078003 (not ((_ is Node!14570) lt!1994085)))))

(assert (=> d!1562942 (= (isBalanced!3953 lt!1994085) e!3043209)))

(assert (= (and d!1562942 (not res!2078003)) b!4867815))

(assert (= (and b!4867815 res!2078004) b!4867812))

(assert (= (and b!4867812 res!2078005) b!4867810))

(assert (= (and b!4867810 res!2078002) b!4867814))

(assert (= (and b!4867814 res!2078007) b!4867813))

(assert (= (and b!4867813 res!2078006) b!4867811))

(declare-fun m!5867410 () Bool)

(assert (=> b!4867812 m!5867410))

(declare-fun m!5867412 () Bool)

(assert (=> b!4867812 m!5867412))

(declare-fun m!5867414 () Bool)

(assert (=> b!4867811 m!5867414))

(assert (=> b!4867815 m!5867410))

(assert (=> b!4867815 m!5867412))

(declare-fun m!5867416 () Bool)

(assert (=> b!4867813 m!5867416))

(declare-fun m!5867418 () Bool)

(assert (=> b!4867810 m!5867418))

(declare-fun m!5867420 () Bool)

(assert (=> b!4867814 m!5867420))

(assert (=> d!1562090 d!1562942))

(declare-fun b!4867858 () Bool)

(declare-fun e!3043233 () Conc!14570)

(declare-fun call!338102 () Conc!14570)

(assert (=> b!4867858 (= e!3043233 call!338102)))

(declare-fun d!1562944 () Bool)

(declare-fun e!3043231 () Bool)

(assert (=> d!1562944 e!3043231))

(declare-fun res!2078018 () Bool)

(assert (=> d!1562944 (=> (not res!2078018) (not e!3043231))))

(declare-fun appendAssocInst!881 (Conc!14570 Conc!14570) Bool)

(assert (=> d!1562944 (= res!2078018 (appendAssocInst!881 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1) (c!827480 (_1!33187 lt!1993718))))))

(declare-fun lt!1994723 () Conc!14570)

(declare-fun e!3043237 () Conc!14570)

(assert (=> d!1562944 (= lt!1994723 e!3043237)))

(declare-fun c!827981 () Bool)

(assert (=> d!1562944 (= c!827981 (= (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1) Empty!14570))))

(declare-fun e!3043236 () Bool)

(assert (=> d!1562944 e!3043236))

(declare-fun res!2078021 () Bool)

(assert (=> d!1562944 (=> (not res!2078021) (not e!3043236))))

(assert (=> d!1562944 (= res!2078021 (isBalanced!3953 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)))))

(assert (=> d!1562944 (= (++!12181 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1) (c!827480 (_1!33187 lt!1993718))) lt!1994723)))

(declare-fun b!4867859 () Bool)

(declare-fun res!2078022 () Bool)

(assert (=> b!4867859 (=> (not res!2078022) (not e!3043231))))

(assert (=> b!4867859 (= res!2078022 (<= (height!1926 lt!1994723) (+ (max!0 (height!1926 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)) (height!1926 (c!827480 (_1!33187 lt!1993718)))) 1)))))

(declare-fun c!827980 () Bool)

(declare-fun lt!1994722 () Conc!14570)

(declare-fun bm!338084 () Bool)

(declare-fun call!338091 () Int)

(assert (=> bm!338084 (= call!338091 (height!1926 (ite c!827980 lt!1994722 (c!827480 (_1!33187 lt!1993718)))))))

(declare-fun b!4867860 () Bool)

(declare-fun e!3043230 () Conc!14570)

(declare-fun call!338092 () Conc!14570)

(assert (=> b!4867860 (= e!3043230 call!338092)))

(declare-fun bm!338085 () Bool)

(declare-fun call!338093 () Conc!14570)

(declare-fun call!338097 () Conc!14570)

(assert (=> bm!338085 (= call!338093 call!338097)))

(declare-fun call!338099 () Int)

(declare-fun bm!338086 () Bool)

(assert (=> bm!338086 (= call!338099 (height!1926 (ite c!827980 (right!40955 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)) (left!40625 (c!827480 (_1!33187 lt!1993718))))))))

(declare-fun b!4867861 () Bool)

(declare-fun e!3043232 () Conc!14570)

(declare-fun call!338098 () Conc!14570)

(assert (=> b!4867861 (= e!3043232 call!338098)))

(declare-fun b!4867862 () Bool)

(declare-fun e!3043234 () Conc!14570)

(assert (=> b!4867862 (= e!3043234 e!3043230)))

(declare-fun call!338103 () Conc!14570)

(assert (=> b!4867862 (= lt!1994722 call!338103)))

(declare-fun c!827982 () Bool)

(declare-fun call!338095 () Int)

(assert (=> b!4867862 (= c!827982 (= call!338091 (- call!338095 3)))))

(declare-fun b!4867863 () Bool)

(declare-fun e!3043239 () Conc!14570)

(declare-fun e!3043235 () Conc!14570)

(assert (=> b!4867863 (= e!3043239 e!3043235)))

(declare-fun lt!1994721 () Int)

(assert (=> b!4867863 (= c!827980 (< lt!1994721 (- 1)))))

(declare-fun bm!338087 () Bool)

(declare-fun call!338101 () Int)

(assert (=> bm!338087 (= call!338101 (height!1926 (ite c!827980 (left!40625 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)) (right!40955 (c!827480 (_1!33187 lt!1993718))))))))

(declare-fun bm!338088 () Bool)

(declare-fun call!338089 () Conc!14570)

(assert (=> bm!338088 (= call!338102 call!338089)))

(declare-fun bm!338089 () Bool)

(declare-fun call!338100 () Conc!14570)

(assert (=> bm!338089 (= call!338103 call!338100)))

(declare-fun b!4867864 () Bool)

(assert (=> b!4867864 (= e!3043236 (isBalanced!3953 (c!827480 (_1!33187 lt!1993718))))))

(declare-fun bm!338090 () Bool)

(declare-fun call!338094 () Conc!14570)

(assert (=> bm!338090 (= call!338094 call!338100)))

(declare-fun bm!338091 () Bool)

(declare-fun lt!1994720 () Conc!14570)

(assert (=> bm!338091 (= call!338095 (height!1926 (ite c!827980 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1) lt!1994720)))))

(declare-fun b!4867865 () Bool)

(declare-fun call!338096 () Conc!14570)

(assert (=> b!4867865 (= e!3043239 call!338096)))

(declare-fun bm!338092 () Bool)

(declare-fun call!338090 () Conc!14570)

(declare-fun call!338104 () Conc!14570)

(assert (=> bm!338092 (= call!338090 call!338104)))

(declare-fun b!4867866 () Bool)

(declare-fun e!3043238 () Conc!14570)

(assert (=> b!4867866 (= e!3043238 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1))))

(declare-fun bm!338093 () Bool)

(assert (=> bm!338093 (= call!338092 call!338104)))

(declare-fun bm!338094 () Bool)

(declare-fun c!827978 () Bool)

(declare-fun <>!371 (Conc!14570 Conc!14570) Conc!14570)

(assert (=> bm!338094 (= call!338104 (<>!371 (ite c!827980 (ite c!827982 (left!40625 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)) call!338093) (ite c!827978 lt!1994720 (right!40955 (left!40625 (c!827480 (_1!33187 lt!1993718)))))) (ite c!827980 (ite c!827982 call!338093 lt!1994722) (ite c!827978 (right!40955 (left!40625 (c!827480 (_1!33187 lt!1993718)))) (right!40955 (c!827480 (_1!33187 lt!1993718)))))))))

(declare-fun b!4867867 () Bool)

(assert (=> b!4867867 (= e!3043234 call!338097)))

(declare-fun b!4867868 () Bool)

(declare-fun res!2078020 () Bool)

(assert (=> b!4867868 (=> (not res!2078020) (not e!3043231))))

(assert (=> b!4867868 (= res!2078020 (isBalanced!3953 lt!1994723))))

(declare-fun b!4867869 () Bool)

(assert (=> b!4867869 (= e!3043237 e!3043238)))

(declare-fun c!827976 () Bool)

(assert (=> b!4867869 (= c!827976 (= (c!827480 (_1!33187 lt!1993718)) Empty!14570))))

(declare-fun bm!338095 () Bool)

(assert (=> bm!338095 (= call!338097 call!338089)))

(declare-fun b!4867870 () Bool)

(assert (=> b!4867870 (= e!3043232 call!338098)))

(declare-fun b!4867871 () Bool)

(declare-fun c!827979 () Bool)

(assert (=> b!4867871 (= c!827979 (>= call!338101 call!338099))))

(assert (=> b!4867871 (= e!3043235 e!3043234)))

(declare-fun c!827977 () Bool)

(declare-fun bm!338096 () Bool)

(assert (=> bm!338096 (= call!338100 (++!12181 (ite c!827980 (ite c!827979 (right!40955 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)) (right!40955 (right!40955 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)))) (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)) (ite c!827980 (c!827480 (_1!33187 lt!1993718)) (ite c!827977 (left!40625 (c!827480 (_1!33187 lt!1993718))) (left!40625 (left!40625 (c!827480 (_1!33187 lt!1993718))))))))))

(declare-fun b!4867872 () Bool)

(assert (=> b!4867872 (= e!3043230 call!338092)))

(declare-fun bm!338097 () Bool)

(assert (=> bm!338097 (= call!338098 call!338102)))

(declare-fun b!4867873 () Bool)

(assert (=> b!4867873 (= c!827977 (>= call!338101 call!338099))))

(assert (=> b!4867873 (= e!3043235 e!3043233)))

(declare-fun b!4867874 () Bool)

(declare-fun res!2078019 () Bool)

(assert (=> b!4867874 (=> (not res!2078019) (not e!3043231))))

(assert (=> b!4867874 (= res!2078019 (>= (height!1926 lt!1994723) (max!0 (height!1926 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)) (height!1926 (c!827480 (_1!33187 lt!1993718))))))))

(declare-fun c!827983 () Bool)

(declare-fun bm!338098 () Bool)

(assert (=> bm!338098 (= call!338096 (<>!371 (ite c!827983 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1) (ite c!827980 (ite c!827979 (left!40625 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)) (ite c!827982 (left!40625 (right!40955 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1))) (left!40625 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)))) (ite c!827977 call!338094 (ite c!827978 call!338090 lt!1994720)))) (ite c!827983 (c!827480 (_1!33187 lt!1993718)) (ite c!827980 (ite c!827979 call!338103 (ite c!827982 lt!1994722 (left!40625 (right!40955 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1))))) (ite (or c!827977 c!827978) (right!40955 (c!827480 (_1!33187 lt!1993718))) call!338090)))))))

(declare-fun b!4867875 () Bool)

(assert (=> b!4867875 (= e!3043233 e!3043232)))

(assert (=> b!4867875 (= lt!1994720 call!338094)))

(assert (=> b!4867875 (= c!827978 (= call!338095 (- call!338091 3)))))

(declare-fun b!4867876 () Bool)

(assert (=> b!4867876 (= e!3043237 (c!827480 (_1!33187 lt!1993718)))))

(declare-fun b!4867877 () Bool)

(assert (=> b!4867877 (= c!827983 (and (<= (- 1) lt!1994721) (<= lt!1994721 1)))))

(assert (=> b!4867877 (= lt!1994721 (- (height!1926 (c!827480 (_1!33187 lt!1993718))) (height!1926 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1))))))

(assert (=> b!4867877 (= e!3043238 e!3043239)))

(declare-fun b!4867878 () Bool)

(assert (=> b!4867878 (= e!3043231 (= (list!17484 lt!1994723) (++!12183 (list!17484 (Leaf!24296 (fill!220 1 (_1!33185 (v!49684 lt!1993717))) 1)) (list!17484 (c!827480 (_1!33187 lt!1993718))))))))

(declare-fun bm!338099 () Bool)

(assert (=> bm!338099 (= call!338089 call!338096)))

(assert (= (and d!1562944 res!2078021) b!4867864))

(assert (= (and d!1562944 c!827981) b!4867876))

(assert (= (and d!1562944 (not c!827981)) b!4867869))

(assert (= (and b!4867869 c!827976) b!4867866))

(assert (= (and b!4867869 (not c!827976)) b!4867877))

(assert (= (and b!4867877 c!827983) b!4867865))

(assert (= (and b!4867877 (not c!827983)) b!4867863))

(assert (= (and b!4867863 c!827980) b!4867871))

(assert (= (and b!4867863 (not c!827980)) b!4867873))

(assert (= (and b!4867871 c!827979) b!4867867))

(assert (= (and b!4867871 (not c!827979)) b!4867862))

(assert (= (and b!4867862 c!827982) b!4867872))

(assert (= (and b!4867862 (not c!827982)) b!4867860))

(assert (= (or b!4867872 b!4867860) bm!338085))

(assert (= (or b!4867872 b!4867860) bm!338093))

(assert (= (or b!4867867 b!4867862) bm!338089))

(assert (= (or b!4867867 bm!338085) bm!338095))

(assert (= (and b!4867873 c!827977) b!4867858))

(assert (= (and b!4867873 (not c!827977)) b!4867875))

(assert (= (and b!4867875 c!827978) b!4867861))

(assert (= (and b!4867875 (not c!827978)) b!4867870))

(assert (= (or b!4867861 b!4867870) bm!338092))

(assert (= (or b!4867861 b!4867870) bm!338097))

(assert (= (or b!4867858 b!4867875) bm!338090))

(assert (= (or b!4867858 bm!338097) bm!338088))

(assert (= (or bm!338089 bm!338090) bm!338096))

(assert (= (or b!4867871 b!4867873) bm!338087))

(assert (= (or bm!338093 bm!338092) bm!338094))

(assert (= (or b!4867862 b!4867875) bm!338091))

(assert (= (or bm!338095 bm!338088) bm!338099))

(assert (= (or b!4867871 b!4867873) bm!338086))

(assert (= (or b!4867862 b!4867875) bm!338084))

(assert (= (or b!4867865 bm!338099) bm!338098))

(assert (= (and d!1562944 res!2078018) b!4867868))

(assert (= (and b!4867868 res!2078020) b!4867859))

(assert (= (and b!4867859 res!2078022) b!4867874))

(assert (= (and b!4867874 res!2078019) b!4867878))

(declare-fun m!5867422 () Bool)

(assert (=> bm!338087 m!5867422))

(declare-fun m!5867424 () Bool)

(assert (=> bm!338086 m!5867424))

(declare-fun m!5867426 () Bool)

(assert (=> bm!338084 m!5867426))

(declare-fun m!5867428 () Bool)

(assert (=> b!4867877 m!5867428))

(declare-fun m!5867430 () Bool)

(assert (=> b!4867877 m!5867430))

(declare-fun m!5867432 () Bool)

(assert (=> b!4867868 m!5867432))

(declare-fun m!5867434 () Bool)

(assert (=> b!4867878 m!5867434))

(declare-fun m!5867436 () Bool)

(assert (=> b!4867878 m!5867436))

(assert (=> b!4867878 m!5864892))

(assert (=> b!4867878 m!5867436))

(assert (=> b!4867878 m!5864892))

(declare-fun m!5867438 () Bool)

(assert (=> b!4867878 m!5867438))

(assert (=> b!4867864 m!5864888))

(declare-fun m!5867440 () Bool)

(assert (=> bm!338098 m!5867440))

(declare-fun m!5867442 () Bool)

(assert (=> bm!338091 m!5867442))

(declare-fun m!5867444 () Bool)

(assert (=> bm!338094 m!5867444))

(declare-fun m!5867446 () Bool)

(assert (=> b!4867859 m!5867446))

(assert (=> b!4867859 m!5867430))

(assert (=> b!4867859 m!5867428))

(assert (=> b!4867859 m!5867430))

(assert (=> b!4867859 m!5867428))

(declare-fun m!5867448 () Bool)

(assert (=> b!4867859 m!5867448))

(declare-fun m!5867450 () Bool)

(assert (=> d!1562944 m!5867450))

(declare-fun m!5867452 () Bool)

(assert (=> d!1562944 m!5867452))

(declare-fun m!5867454 () Bool)

(assert (=> bm!338096 m!5867454))

(assert (=> b!4867874 m!5867446))

(assert (=> b!4867874 m!5867430))

(assert (=> b!4867874 m!5867428))

(assert (=> b!4867874 m!5867430))

(assert (=> b!4867874 m!5867428))

(assert (=> b!4867874 m!5867448))

(assert (=> d!1562090 d!1562944))

(declare-fun d!1562946 () Bool)

(declare-fun lt!1994726 () IArray!29201)

(declare-fun fill!223 (Int Token!14644) List!56057)

(assert (=> d!1562946 (= lt!1994726 (IArray!29202 (fill!223 1 (_1!33185 (v!49684 lt!1993717)))))))

(declare-fun choose!35594 (Int Token!14644) IArray!29201)

(assert (=> d!1562946 (= lt!1994726 (choose!35594 1 (_1!33185 (v!49684 lt!1993717))))))

(assert (=> d!1562946 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!1562946 (= (fill!220 1 (_1!33185 (v!49684 lt!1993717))) lt!1994726)))

(declare-fun bs!1174413 () Bool)

(assert (= bs!1174413 d!1562946))

(declare-fun m!5867456 () Bool)

(assert (=> bs!1174413 m!5867456))

(declare-fun m!5867458 () Bool)

(assert (=> bs!1174413 m!5867458))

(assert (=> d!1562090 d!1562946))

(declare-fun b!4867879 () Bool)

(declare-fun res!2078023 () Bool)

(declare-fun e!3043240 () Bool)

(assert (=> b!4867879 (=> (not res!2078023) (not e!3043240))))

(assert (=> b!4867879 (= res!2078023 (isBalanced!3953 (left!40625 (c!827480 (_1!33187 lt!1993718)))))))

(declare-fun b!4867880 () Bool)

(assert (=> b!4867880 (= e!3043240 (not (isEmpty!29919 (right!40955 (c!827480 (_1!33187 lt!1993718))))))))

(declare-fun b!4867881 () Bool)

(declare-fun res!2078026 () Bool)

(assert (=> b!4867881 (=> (not res!2078026) (not e!3043240))))

(assert (=> b!4867881 (= res!2078026 (<= (- (height!1926 (left!40625 (c!827480 (_1!33187 lt!1993718)))) (height!1926 (right!40955 (c!827480 (_1!33187 lt!1993718))))) 1))))

(declare-fun b!4867882 () Bool)

(declare-fun res!2078027 () Bool)

(assert (=> b!4867882 (=> (not res!2078027) (not e!3043240))))

(assert (=> b!4867882 (= res!2078027 (not (isEmpty!29919 (left!40625 (c!827480 (_1!33187 lt!1993718))))))))

(declare-fun b!4867883 () Bool)

(declare-fun res!2078028 () Bool)

(assert (=> b!4867883 (=> (not res!2078028) (not e!3043240))))

(assert (=> b!4867883 (= res!2078028 (isBalanced!3953 (right!40955 (c!827480 (_1!33187 lt!1993718)))))))

(declare-fun b!4867884 () Bool)

(declare-fun e!3043241 () Bool)

(assert (=> b!4867884 (= e!3043241 e!3043240)))

(declare-fun res!2078025 () Bool)

(assert (=> b!4867884 (=> (not res!2078025) (not e!3043240))))

(assert (=> b!4867884 (= res!2078025 (<= (- 1) (- (height!1926 (left!40625 (c!827480 (_1!33187 lt!1993718)))) (height!1926 (right!40955 (c!827480 (_1!33187 lt!1993718)))))))))

(declare-fun d!1562948 () Bool)

(declare-fun res!2078024 () Bool)

(assert (=> d!1562948 (=> res!2078024 e!3043241)))

(assert (=> d!1562948 (= res!2078024 (not ((_ is Node!14570) (c!827480 (_1!33187 lt!1993718)))))))

(assert (=> d!1562948 (= (isBalanced!3953 (c!827480 (_1!33187 lt!1993718))) e!3043241)))

(assert (= (and d!1562948 (not res!2078024)) b!4867884))

(assert (= (and b!4867884 res!2078025) b!4867881))

(assert (= (and b!4867881 res!2078026) b!4867879))

(assert (= (and b!4867879 res!2078023) b!4867883))

(assert (= (and b!4867883 res!2078028) b!4867882))

(assert (= (and b!4867882 res!2078027) b!4867880))

(declare-fun m!5867460 () Bool)

(assert (=> b!4867881 m!5867460))

(declare-fun m!5867462 () Bool)

(assert (=> b!4867881 m!5867462))

(declare-fun m!5867464 () Bool)

(assert (=> b!4867880 m!5867464))

(assert (=> b!4867884 m!5867460))

(assert (=> b!4867884 m!5867462))

(declare-fun m!5867466 () Bool)

(assert (=> b!4867882 m!5867466))

(declare-fun m!5867468 () Bool)

(assert (=> b!4867879 m!5867468))

(declare-fun m!5867470 () Bool)

(assert (=> b!4867883 m!5867470))

(assert (=> d!1562090 d!1562948))

(declare-fun bs!1174414 () Bool)

(declare-fun d!1562950 () Bool)

(assert (= bs!1174414 (and d!1562950 d!1561864)))

(declare-fun lambda!243441 () Int)

(assert (=> bs!1174414 (= lambda!243441 lambda!243400)))

(declare-fun bs!1174415 () Bool)

(assert (= bs!1174415 (and d!1562950 d!1562164)))

(assert (=> bs!1174415 (= lambda!243441 lambda!243419)))

(assert (=> d!1562950 true))

(declare-fun lt!1994727 () Bool)

(assert (=> d!1562950 (= lt!1994727 (forall!13047 (t!363818 rules!1248) lambda!243441))))

(declare-fun e!3043242 () Bool)

(assert (=> d!1562950 (= lt!1994727 e!3043242)))

(declare-fun res!2078030 () Bool)

(assert (=> d!1562950 (=> res!2078030 e!3043242)))

(assert (=> d!1562950 (= res!2078030 (not ((_ is Cons!55932) (t!363818 rules!1248))))))

(assert (=> d!1562950 (= (rulesValidInductive!3019 thiss!11777 (t!363818 rules!1248)) lt!1994727)))

(declare-fun b!4867885 () Bool)

(declare-fun e!3043243 () Bool)

(assert (=> b!4867885 (= e!3043242 e!3043243)))

(declare-fun res!2078029 () Bool)

(assert (=> b!4867885 (=> (not res!2078029) (not e!3043243))))

(assert (=> b!4867885 (= res!2078029 (ruleValid!3627 thiss!11777 (h!62380 (t!363818 rules!1248))))))

(declare-fun b!4867886 () Bool)

(assert (=> b!4867886 (= e!3043243 (rulesValidInductive!3019 thiss!11777 (t!363818 (t!363818 rules!1248))))))

(assert (= (and d!1562950 (not res!2078030)) b!4867885))

(assert (= (and b!4867885 res!2078029) b!4867886))

(declare-fun m!5867472 () Bool)

(assert (=> d!1562950 m!5867472))

(declare-fun m!5867474 () Bool)

(assert (=> b!4867885 m!5867474))

(assert (=> b!4867886 m!5866486))

(assert (=> b!4866033 d!1562950))

(assert (=> b!4866093 d!1562836))

(assert (=> b!4866491 d!1562888))

(declare-fun d!1562952 () Bool)

(declare-fun lt!1994728 () Int)

(assert (=> d!1562952 (>= lt!1994728 0)))

(declare-fun e!3043244 () Int)

(assert (=> d!1562952 (= lt!1994728 e!3043244)))

(declare-fun c!827984 () Bool)

(assert (=> d!1562952 (= c!827984 ((_ is Nil!55933) (list!17480 (_1!33187 lt!1993769))))))

(assert (=> d!1562952 (= (size!36862 (list!17480 (_1!33187 lt!1993769))) lt!1994728)))

(declare-fun b!4867887 () Bool)

(assert (=> b!4867887 (= e!3043244 0)))

(declare-fun b!4867888 () Bool)

(assert (=> b!4867888 (= e!3043244 (+ 1 (size!36862 (t!363819 (list!17480 (_1!33187 lt!1993769))))))))

(assert (= (and d!1562952 c!827984) b!4867887))

(assert (= (and d!1562952 (not c!827984)) b!4867888))

(declare-fun m!5867476 () Bool)

(assert (=> b!4867888 m!5867476))

(assert (=> d!1562054 d!1562952))

(assert (=> d!1562054 d!1562008))

(declare-fun d!1562954 () Bool)

(declare-fun lt!1994729 () Int)

(assert (=> d!1562954 (= lt!1994729 (size!36862 (list!17484 (c!827480 (_1!33187 lt!1993769)))))))

(assert (=> d!1562954 (= lt!1994729 (ite ((_ is Empty!14570) (c!827480 (_1!33187 lt!1993769))) 0 (ite ((_ is Leaf!24296) (c!827480 (_1!33187 lt!1993769))) (csize!29371 (c!827480 (_1!33187 lt!1993769))) (csize!29370 (c!827480 (_1!33187 lt!1993769))))))))

(assert (=> d!1562954 (= (size!36863 (c!827480 (_1!33187 lt!1993769))) lt!1994729)))

(declare-fun bs!1174416 () Bool)

(assert (= bs!1174416 d!1562954))

(assert (=> bs!1174416 m!5864550))

(assert (=> bs!1174416 m!5864550))

(declare-fun m!5867478 () Bool)

(assert (=> bs!1174416 m!5867478))

(assert (=> d!1562054 d!1562954))

(declare-fun d!1562956 () Bool)

(assert (=> d!1562956 (= (isDefined!10844 lt!1994134) (not (isEmpty!29924 lt!1994134)))))

(declare-fun bs!1174417 () Bool)

(assert (= bs!1174417 d!1562956))

(declare-fun m!5867480 () Bool)

(assert (=> bs!1174417 m!5867480))

(assert (=> b!4866448 d!1562956))

(declare-fun b!4867917 () Bool)

(declare-fun res!2078050 () Bool)

(declare-fun e!3043264 () Bool)

(assert (=> b!4867917 (=> (not res!2078050) (not e!3043264))))

(declare-fun call!338107 () Bool)

(assert (=> b!4867917 (= res!2078050 (not call!338107))))

(declare-fun b!4867918 () Bool)

(declare-fun e!3043259 () Bool)

(declare-fun e!3043263 () Bool)

(assert (=> b!4867918 (= e!3043259 e!3043263)))

(declare-fun c!827992 () Bool)

(assert (=> b!4867918 (= c!827992 ((_ is EmptyLang!13105) (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098))))))))

(declare-fun b!4867919 () Bool)

(declare-fun e!3043265 () Bool)

(assert (=> b!4867919 (= e!3043265 (nullable!4539 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098))))))))

(declare-fun b!4867920 () Bool)

(assert (=> b!4867920 (= e!3043265 (matchR!6490 (derivativeStep!3863 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))) (head!10411 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098)))))) (tail!9557 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098)))))))))

(declare-fun b!4867921 () Bool)

(declare-fun e!3043260 () Bool)

(declare-fun e!3043261 () Bool)

(assert (=> b!4867921 (= e!3043260 e!3043261)))

(declare-fun res!2078054 () Bool)

(assert (=> b!4867921 (=> res!2078054 e!3043261)))

(assert (=> b!4867921 (= res!2078054 call!338107)))

(declare-fun b!4867922 () Bool)

(declare-fun res!2078052 () Bool)

(assert (=> b!4867922 (=> res!2078052 e!3043261)))

(assert (=> b!4867922 (= res!2078052 (not (isEmpty!29928 (tail!9557 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))))))))

(declare-fun b!4867923 () Bool)

(declare-fun res!2078048 () Bool)

(declare-fun e!3043262 () Bool)

(assert (=> b!4867923 (=> res!2078048 e!3043262)))

(assert (=> b!4867923 (= res!2078048 (not ((_ is ElementMatch!13105) (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))))))

(assert (=> b!4867923 (= e!3043263 e!3043262)))

(declare-fun b!4867924 () Bool)

(declare-fun res!2078053 () Bool)

(assert (=> b!4867924 (=> (not res!2078053) (not e!3043264))))

(assert (=> b!4867924 (= res!2078053 (isEmpty!29928 (tail!9557 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098)))))))))

(declare-fun b!4867925 () Bool)

(declare-fun lt!1994732 () Bool)

(assert (=> b!4867925 (= e!3043259 (= lt!1994732 call!338107))))

(declare-fun d!1562958 () Bool)

(assert (=> d!1562958 e!3043259))

(declare-fun c!827993 () Bool)

(assert (=> d!1562958 (= c!827993 ((_ is EmptyExpr!13105) (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098))))))))

(assert (=> d!1562958 (= lt!1994732 e!3043265)))

(declare-fun c!827991 () Bool)

(assert (=> d!1562958 (= c!827991 (isEmpty!29928 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))))))

(assert (=> d!1562958 (validRegex!5866 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))))

(assert (=> d!1562958 (= (matchR!6490 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))) lt!1994732)))

(declare-fun b!4867926 () Bool)

(declare-fun res!2078047 () Bool)

(assert (=> b!4867926 (=> res!2078047 e!3043262)))

(assert (=> b!4867926 (= res!2078047 e!3043264)))

(declare-fun res!2078049 () Bool)

(assert (=> b!4867926 (=> (not res!2078049) (not e!3043264))))

(assert (=> b!4867926 (= res!2078049 lt!1994732)))

(declare-fun b!4867927 () Bool)

(assert (=> b!4867927 (= e!3043262 e!3043260)))

(declare-fun res!2078051 () Bool)

(assert (=> b!4867927 (=> (not res!2078051) (not e!3043260))))

(assert (=> b!4867927 (= res!2078051 (not lt!1994732))))

(declare-fun b!4867928 () Bool)

(assert (=> b!4867928 (= e!3043263 (not lt!1994732))))

(declare-fun b!4867929 () Bool)

(assert (=> b!4867929 (= e!3043264 (= (head!10411 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))) (c!827479 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))))))

(declare-fun b!4867930 () Bool)

(assert (=> b!4867930 (= e!3043261 (not (= (head!10411 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))) (c!827479 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098))))))))))

(declare-fun bm!338102 () Bool)

(assert (=> bm!338102 (= call!338107 (isEmpty!29928 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))))))

(assert (= (and d!1562958 c!827991) b!4867919))

(assert (= (and d!1562958 (not c!827991)) b!4867920))

(assert (= (and d!1562958 c!827993) b!4867925))

(assert (= (and d!1562958 (not c!827993)) b!4867918))

(assert (= (and b!4867918 c!827992) b!4867928))

(assert (= (and b!4867918 (not c!827992)) b!4867923))

(assert (= (and b!4867923 (not res!2078048)) b!4867926))

(assert (= (and b!4867926 res!2078049) b!4867917))

(assert (= (and b!4867917 res!2078050) b!4867924))

(assert (= (and b!4867924 res!2078053) b!4867929))

(assert (= (and b!4867926 (not res!2078047)) b!4867927))

(assert (= (and b!4867927 res!2078051) b!4867921))

(assert (= (and b!4867921 (not res!2078054)) b!4867922))

(assert (= (and b!4867922 (not res!2078052)) b!4867930))

(assert (= (or b!4867925 b!4867917 b!4867921) bm!338102))

(assert (=> b!4867929 m!5864984))

(declare-fun m!5867482 () Bool)

(assert (=> b!4867929 m!5867482))

(assert (=> b!4867924 m!5864984))

(declare-fun m!5867484 () Bool)

(assert (=> b!4867924 m!5867484))

(assert (=> b!4867924 m!5867484))

(declare-fun m!5867486 () Bool)

(assert (=> b!4867924 m!5867486))

(assert (=> b!4867920 m!5864984))

(assert (=> b!4867920 m!5867482))

(assert (=> b!4867920 m!5867482))

(declare-fun m!5867488 () Bool)

(assert (=> b!4867920 m!5867488))

(assert (=> b!4867920 m!5864984))

(assert (=> b!4867920 m!5867484))

(assert (=> b!4867920 m!5867488))

(assert (=> b!4867920 m!5867484))

(declare-fun m!5867490 () Bool)

(assert (=> b!4867920 m!5867490))

(assert (=> b!4867922 m!5864984))

(assert (=> b!4867922 m!5867484))

(assert (=> b!4867922 m!5867484))

(assert (=> b!4867922 m!5867486))

(assert (=> bm!338102 m!5864984))

(declare-fun m!5867492 () Bool)

(assert (=> bm!338102 m!5867492))

(assert (=> d!1562958 m!5864984))

(assert (=> d!1562958 m!5867492))

(declare-fun m!5867494 () Bool)

(assert (=> d!1562958 m!5867494))

(assert (=> b!4867930 m!5864984))

(assert (=> b!4867930 m!5867482))

(declare-fun m!5867496 () Bool)

(assert (=> b!4867919 m!5867496))

(assert (=> b!4866408 d!1562958))

(assert (=> b!4866408 d!1562760))

(assert (=> b!4866408 d!1562804))

(assert (=> b!4866408 d!1562806))

(declare-fun d!1562960 () Bool)

(declare-fun lt!1994733 () Int)

(assert (=> d!1562960 (>= lt!1994733 0)))

(declare-fun e!3043266 () Int)

(assert (=> d!1562960 (= lt!1994733 e!3043266)))

(declare-fun c!827994 () Bool)

(assert (=> d!1562960 (= c!827994 ((_ is Nil!55931) (t!363817 lt!1993715)))))

(assert (=> d!1562960 (= (size!36861 (t!363817 lt!1993715)) lt!1994733)))

(declare-fun b!4867931 () Bool)

(assert (=> b!4867931 (= e!3043266 0)))

(declare-fun b!4867932 () Bool)

(assert (=> b!4867932 (= e!3043266 (+ 1 (size!36861 (t!363817 (t!363817 lt!1993715)))))))

(assert (= (and d!1562960 c!827994) b!4867931))

(assert (= (and d!1562960 (not c!827994)) b!4867932))

(declare-fun m!5867498 () Bool)

(assert (=> b!4867932 m!5867498))

(assert (=> b!4866055 d!1562960))

(declare-fun d!1562962 () Bool)

(assert (=> d!1562962 (= (list!17480 lt!1994092) (list!17484 (c!827480 lt!1994092)))))

(declare-fun bs!1174418 () Bool)

(assert (= bs!1174418 d!1562962))

(declare-fun m!5867500 () Bool)

(assert (=> bs!1174418 m!5867500))

(assert (=> b!4866364 d!1562962))

(declare-fun d!1562964 () Bool)

(assert (=> d!1562964 (= (list!17480 (_1!33187 lt!1993768)) (list!17484 (c!827480 (_1!33187 lt!1993768))))))

(declare-fun bs!1174419 () Bool)

(assert (= bs!1174419 d!1562964))

(assert (=> bs!1174419 m!5867394))

(assert (=> b!4866364 d!1562964))

(declare-fun d!1562966 () Bool)

(declare-fun lt!1994734 () Int)

(assert (=> d!1562966 (>= lt!1994734 0)))

(declare-fun e!3043267 () Int)

(assert (=> d!1562966 (= lt!1994734 e!3043267)))

(declare-fun c!827995 () Bool)

(assert (=> d!1562966 (= c!827995 ((_ is Nil!55931) (t!363817 (_2!33186 lt!1993806))))))

(assert (=> d!1562966 (= (size!36861 (t!363817 (_2!33186 lt!1993806))) lt!1994734)))

(declare-fun b!4867933 () Bool)

(assert (=> b!4867933 (= e!3043267 0)))

(declare-fun b!4867934 () Bool)

(assert (=> b!4867934 (= e!3043267 (+ 1 (size!36861 (t!363817 (t!363817 (_2!33186 lt!1993806))))))))

(assert (= (and d!1562966 c!827995) b!4867933))

(assert (= (and d!1562966 (not c!827995)) b!4867934))

(declare-fun m!5867502 () Bool)

(assert (=> b!4867934 m!5867502))

(assert (=> b!4866433 d!1562966))

(declare-fun d!1562968 () Bool)

(declare-fun lt!1994735 () Int)

(assert (=> d!1562968 (>= lt!1994735 0)))

(declare-fun e!3043268 () Int)

(assert (=> d!1562968 (= lt!1994735 e!3043268)))

(declare-fun c!827996 () Bool)

(assert (=> d!1562968 (= c!827996 ((_ is Nil!55931) lt!1993988))))

(assert (=> d!1562968 (= (size!36861 lt!1993988) lt!1994735)))

(declare-fun b!4867935 () Bool)

(assert (=> b!4867935 (= e!3043268 0)))

(declare-fun b!4867936 () Bool)

(assert (=> b!4867936 (= e!3043268 (+ 1 (size!36861 (t!363817 lt!1993988))))))

(assert (= (and d!1562968 c!827996) b!4867935))

(assert (= (and d!1562968 (not c!827996)) b!4867936))

(declare-fun m!5867504 () Bool)

(assert (=> b!4867936 m!5867504))

(assert (=> b!4866125 d!1562968))

(declare-fun d!1562970 () Bool)

(declare-fun lt!1994736 () Bool)

(assert (=> d!1562970 (= lt!1994736 (isEmpty!29918 (list!17484 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562970 (= lt!1994736 (= (size!36863 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) 0))))

(assert (=> d!1562970 (= (isEmpty!29919 (left!40625 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) lt!1994736)))

(declare-fun bs!1174420 () Bool)

(assert (= bs!1174420 d!1562970))

(declare-fun m!5867506 () Bool)

(assert (=> bs!1174420 m!5867506))

(assert (=> bs!1174420 m!5867506))

(declare-fun m!5867508 () Bool)

(assert (=> bs!1174420 m!5867508))

(declare-fun m!5867510 () Bool)

(assert (=> bs!1174420 m!5867510))

(assert (=> b!4866342 d!1562970))

(declare-fun d!1562972 () Bool)

(declare-fun lt!1994737 () Int)

(assert (=> d!1562972 (>= lt!1994737 0)))

(declare-fun e!3043269 () Int)

(assert (=> d!1562972 (= lt!1994737 e!3043269)))

(declare-fun c!827997 () Bool)

(assert (=> d!1562972 (= c!827997 ((_ is Nil!55933) (_1!33186 lt!1994024)))))

(assert (=> d!1562972 (= (size!36862 (_1!33186 lt!1994024)) lt!1994737)))

(declare-fun b!4867937 () Bool)

(assert (=> b!4867937 (= e!3043269 0)))

(declare-fun b!4867938 () Bool)

(assert (=> b!4867938 (= e!3043269 (+ 1 (size!36862 (t!363819 (_1!33186 lt!1994024)))))))

(assert (= (and d!1562972 c!827997) b!4867937))

(assert (= (and d!1562972 (not c!827997)) b!4867938))

(declare-fun m!5867512 () Bool)

(assert (=> b!4867938 m!5867512))

(assert (=> d!1562050 d!1562972))

(declare-fun b!4867939 () Bool)

(declare-fun res!2078056 () Bool)

(declare-fun e!3043272 () Bool)

(assert (=> b!4867939 (=> (not res!2078056) (not e!3043272))))

(declare-fun lt!1994739 () Option!13777)

(assert (=> b!4867939 (= res!2078056 (matchR!6490 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994739)))) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994739))))))))

(declare-fun b!4867940 () Bool)

(assert (=> b!4867940 (= e!3043272 (contains!19391 rules!1248 (rule!11154 (_1!33189 (get!19223 lt!1994739)))))))

(declare-fun b!4867941 () Bool)

(declare-fun res!2078058 () Bool)

(assert (=> b!4867941 (=> (not res!2078058) (not e!3043272))))

(assert (=> b!4867941 (= res!2078058 (< (size!36861 (_2!33189 (get!19223 lt!1994739))) (size!36861 (_2!33189 (v!49688 lt!1993804)))))))

(declare-fun b!4867942 () Bool)

(declare-fun res!2078059 () Bool)

(assert (=> b!4867942 (=> (not res!2078059) (not e!3043272))))

(assert (=> b!4867942 (= res!2078059 (= (value!257997 (_1!33189 (get!19223 lt!1994739))) (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994739)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994739)))))))))

(declare-fun b!4867943 () Bool)

(declare-fun res!2078057 () Bool)

(assert (=> b!4867943 (=> (not res!2078057) (not e!3043272))))

(assert (=> b!4867943 (= res!2078057 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994739)))) (_2!33189 (get!19223 lt!1994739))) (_2!33189 (v!49688 lt!1993804))))))

(declare-fun call!338108 () Option!13777)

(declare-fun bm!338103 () Bool)

(assert (=> bm!338103 (= call!338108 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (_2!33189 (v!49688 lt!1993804))))))

(declare-fun b!4867945 () Bool)

(declare-fun res!2078060 () Bool)

(assert (=> b!4867945 (=> (not res!2078060) (not e!3043272))))

(assert (=> b!4867945 (= res!2078060 (= (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994739)))) (originalCharacters!8353 (_1!33189 (get!19223 lt!1994739)))))))

(declare-fun b!4867946 () Bool)

(declare-fun e!3043271 () Bool)

(assert (=> b!4867946 (= e!3043271 e!3043272)))

(declare-fun res!2078061 () Bool)

(assert (=> b!4867946 (=> (not res!2078061) (not e!3043272))))

(assert (=> b!4867946 (= res!2078061 (isDefined!10845 lt!1994739))))

(declare-fun b!4867947 () Bool)

(declare-fun e!3043270 () Option!13777)

(assert (=> b!4867947 (= e!3043270 call!338108)))

(declare-fun b!4867944 () Bool)

(declare-fun lt!1994740 () Option!13777)

(declare-fun lt!1994741 () Option!13777)

(assert (=> b!4867944 (= e!3043270 (ite (and ((_ is None!13776) lt!1994740) ((_ is None!13776) lt!1994741)) None!13776 (ite ((_ is None!13776) lt!1994741) lt!1994740 (ite ((_ is None!13776) lt!1994740) lt!1994741 (ite (>= (size!36854 (_1!33189 (v!49688 lt!1994740))) (size!36854 (_1!33189 (v!49688 lt!1994741)))) lt!1994740 lt!1994741)))))))

(assert (=> b!4867944 (= lt!1994740 call!338108)))

(assert (=> b!4867944 (= lt!1994741 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (_2!33189 (v!49688 lt!1993804))))))

(declare-fun d!1562974 () Bool)

(assert (=> d!1562974 e!3043271))

(declare-fun res!2078055 () Bool)

(assert (=> d!1562974 (=> res!2078055 e!3043271)))

(assert (=> d!1562974 (= res!2078055 (isEmpty!29923 lt!1994739))))

(assert (=> d!1562974 (= lt!1994739 e!3043270)))

(declare-fun c!827998 () Bool)

(assert (=> d!1562974 (= c!827998 (and ((_ is Cons!55932) rules!1248) ((_ is Nil!55932) (t!363818 rules!1248))))))

(declare-fun lt!1994742 () Unit!145938)

(declare-fun lt!1994738 () Unit!145938)

(assert (=> d!1562974 (= lt!1994742 lt!1994738)))

(assert (=> d!1562974 (isPrefix!4764 (_2!33189 (v!49688 lt!1993804)) (_2!33189 (v!49688 lt!1993804)))))

(assert (=> d!1562974 (= lt!1994738 (lemmaIsPrefixRefl!3161 (_2!33189 (v!49688 lt!1993804)) (_2!33189 (v!49688 lt!1993804))))))

(assert (=> d!1562974 (rulesValidInductive!3019 thiss!11777 rules!1248)))

(assert (=> d!1562974 (= (maxPrefix!4547 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1993804))) lt!1994739)))

(assert (= (and d!1562974 c!827998) b!4867947))

(assert (= (and d!1562974 (not c!827998)) b!4867944))

(assert (= (or b!4867947 b!4867944) bm!338103))

(assert (= (and d!1562974 (not res!2078055)) b!4867946))

(assert (= (and b!4867946 res!2078061) b!4867945))

(assert (= (and b!4867945 res!2078060) b!4867941))

(assert (= (and b!4867941 res!2078058) b!4867943))

(assert (= (and b!4867943 res!2078057) b!4867942))

(assert (= (and b!4867942 res!2078059) b!4867939))

(assert (= (and b!4867939 res!2078056) b!4867940))

(declare-fun m!5867514 () Bool)

(assert (=> b!4867942 m!5867514))

(declare-fun m!5867516 () Bool)

(assert (=> b!4867942 m!5867516))

(assert (=> b!4867942 m!5867516))

(declare-fun m!5867518 () Bool)

(assert (=> b!4867942 m!5867518))

(declare-fun m!5867520 () Bool)

(assert (=> b!4867946 m!5867520))

(assert (=> b!4867943 m!5867514))

(declare-fun m!5867522 () Bool)

(assert (=> b!4867943 m!5867522))

(assert (=> b!4867943 m!5867522))

(declare-fun m!5867524 () Bool)

(assert (=> b!4867943 m!5867524))

(assert (=> b!4867943 m!5867524))

(declare-fun m!5867526 () Bool)

(assert (=> b!4867943 m!5867526))

(assert (=> b!4867940 m!5867514))

(declare-fun m!5867528 () Bool)

(assert (=> b!4867940 m!5867528))

(assert (=> b!4867939 m!5867514))

(assert (=> b!4867939 m!5867522))

(assert (=> b!4867939 m!5867522))

(assert (=> b!4867939 m!5867524))

(assert (=> b!4867939 m!5867524))

(declare-fun m!5867530 () Bool)

(assert (=> b!4867939 m!5867530))

(assert (=> b!4867941 m!5867514))

(declare-fun m!5867532 () Bool)

(assert (=> b!4867941 m!5867532))

(assert (=> b!4867941 m!5864700))

(assert (=> b!4867945 m!5867514))

(assert (=> b!4867945 m!5867522))

(assert (=> b!4867945 m!5867522))

(assert (=> b!4867945 m!5867524))

(declare-fun m!5867534 () Bool)

(assert (=> bm!338103 m!5867534))

(declare-fun m!5867536 () Bool)

(assert (=> b!4867944 m!5867536))

(declare-fun m!5867538 () Bool)

(assert (=> d!1562974 m!5867538))

(declare-fun m!5867540 () Bool)

(assert (=> d!1562974 m!5867540))

(declare-fun m!5867542 () Bool)

(assert (=> d!1562974 m!5867542))

(assert (=> d!1562974 m!5864116))

(assert (=> d!1562050 d!1562974))

(assert (=> b!4866449 d!1562866))

(assert (=> b!4866449 d!1562864))

(declare-fun d!1562976 () Bool)

(assert (=> d!1562976 (= (list!17479 (_2!33185 (get!19222 lt!1994134))) (list!17483 (c!827478 (_2!33185 (get!19222 lt!1994134)))))))

(declare-fun bs!1174421 () Bool)

(assert (= bs!1174421 d!1562976))

(declare-fun m!5867544 () Bool)

(assert (=> bs!1174421 m!5867544))

(assert (=> b!4866449 d!1562976))

(assert (=> b!4866449 d!1562862))

(assert (=> b!4866449 d!1561850))

(declare-fun d!1562978 () Bool)

(declare-fun lt!1994745 () Bool)

(declare-fun content!9973 (List!56056) (InoxSet Rule!15860))

(assert (=> d!1562978 (= lt!1994745 (select (content!9973 rules!1248) (rule!11154 (_1!33189 (get!19223 lt!1994098)))))))

(declare-fun e!3043278 () Bool)

(assert (=> d!1562978 (= lt!1994745 e!3043278)))

(declare-fun res!2078066 () Bool)

(assert (=> d!1562978 (=> (not res!2078066) (not e!3043278))))

(assert (=> d!1562978 (= res!2078066 ((_ is Cons!55932) rules!1248))))

(assert (=> d!1562978 (= (contains!19391 rules!1248 (rule!11154 (_1!33189 (get!19223 lt!1994098)))) lt!1994745)))

(declare-fun b!4867952 () Bool)

(declare-fun e!3043277 () Bool)

(assert (=> b!4867952 (= e!3043278 e!3043277)))

(declare-fun res!2078067 () Bool)

(assert (=> b!4867952 (=> res!2078067 e!3043277)))

(assert (=> b!4867952 (= res!2078067 (= (h!62380 rules!1248) (rule!11154 (_1!33189 (get!19223 lt!1994098)))))))

(declare-fun b!4867953 () Bool)

(assert (=> b!4867953 (= e!3043277 (contains!19391 (t!363818 rules!1248) (rule!11154 (_1!33189 (get!19223 lt!1994098)))))))

(assert (= (and d!1562978 res!2078066) b!4867952))

(assert (= (and b!4867952 (not res!2078067)) b!4867953))

(declare-fun m!5867546 () Bool)

(assert (=> d!1562978 m!5867546))

(declare-fun m!5867548 () Bool)

(assert (=> d!1562978 m!5867548))

(declare-fun m!5867550 () Bool)

(assert (=> b!4867953 m!5867550))

(assert (=> b!4866409 d!1562978))

(assert (=> b!4866409 d!1562760))

(declare-fun b!4867954 () Bool)

(declare-fun e!3043280 () Bool)

(assert (=> b!4867954 (= e!3043280 (not (isEmpty!29927 (right!40954 (left!40624 (c!827478 totalInput!332))))))))

(declare-fun b!4867955 () Bool)

(declare-fun res!2078073 () Bool)

(assert (=> b!4867955 (=> (not res!2078073) (not e!3043280))))

(assert (=> b!4867955 (= res!2078073 (isBalanced!3954 (right!40954 (left!40624 (c!827478 totalInput!332)))))))

(declare-fun b!4867956 () Bool)

(declare-fun res!2078071 () Bool)

(assert (=> b!4867956 (=> (not res!2078071) (not e!3043280))))

(assert (=> b!4867956 (= res!2078071 (isBalanced!3954 (left!40624 (left!40624 (c!827478 totalInput!332)))))))

(declare-fun b!4867957 () Bool)

(declare-fun res!2078070 () Bool)

(assert (=> b!4867957 (=> (not res!2078070) (not e!3043280))))

(assert (=> b!4867957 (= res!2078070 (not (isEmpty!29927 (left!40624 (left!40624 (c!827478 totalInput!332))))))))

(declare-fun d!1562980 () Bool)

(declare-fun res!2078068 () Bool)

(declare-fun e!3043279 () Bool)

(assert (=> d!1562980 (=> res!2078068 e!3043279)))

(assert (=> d!1562980 (= res!2078068 (not ((_ is Node!14569) (left!40624 (c!827478 totalInput!332)))))))

(assert (=> d!1562980 (= (isBalanced!3954 (left!40624 (c!827478 totalInput!332))) e!3043279)))

(declare-fun b!4867958 () Bool)

(assert (=> b!4867958 (= e!3043279 e!3043280)))

(declare-fun res!2078069 () Bool)

(assert (=> b!4867958 (=> (not res!2078069) (not e!3043280))))

(assert (=> b!4867958 (= res!2078069 (<= (- 1) (- (height!1925 (left!40624 (left!40624 (c!827478 totalInput!332)))) (height!1925 (right!40954 (left!40624 (c!827478 totalInput!332)))))))))

(declare-fun b!4867959 () Bool)

(declare-fun res!2078072 () Bool)

(assert (=> b!4867959 (=> (not res!2078072) (not e!3043280))))

(assert (=> b!4867959 (= res!2078072 (<= (- (height!1925 (left!40624 (left!40624 (c!827478 totalInput!332)))) (height!1925 (right!40954 (left!40624 (c!827478 totalInput!332))))) 1))))

(assert (= (and d!1562980 (not res!2078068)) b!4867958))

(assert (= (and b!4867958 res!2078069) b!4867959))

(assert (= (and b!4867959 res!2078072) b!4867956))

(assert (= (and b!4867956 res!2078071) b!4867955))

(assert (= (and b!4867955 res!2078073) b!4867957))

(assert (= (and b!4867957 res!2078070) b!4867954))

(declare-fun m!5867552 () Bool)

(assert (=> b!4867958 m!5867552))

(declare-fun m!5867554 () Bool)

(assert (=> b!4867958 m!5867554))

(declare-fun m!5867556 () Bool)

(assert (=> b!4867956 m!5867556))

(declare-fun m!5867558 () Bool)

(assert (=> b!4867957 m!5867558))

(declare-fun m!5867560 () Bool)

(assert (=> b!4867955 m!5867560))

(assert (=> b!4867959 m!5867552))

(assert (=> b!4867959 m!5867554))

(declare-fun m!5867562 () Bool)

(assert (=> b!4867954 m!5867562))

(assert (=> b!4866398 d!1562980))

(declare-fun d!1562982 () Bool)

(declare-fun e!3043281 () Bool)

(assert (=> d!1562982 e!3043281))

(declare-fun res!2078077 () Bool)

(assert (=> d!1562982 (=> res!2078077 e!3043281)))

(declare-fun lt!1994747 () Option!13777)

(assert (=> d!1562982 (= res!2078077 (isEmpty!29923 lt!1994747))))

(declare-fun e!3043282 () Option!13777)

(assert (=> d!1562982 (= lt!1994747 e!3043282)))

(declare-fun c!827999 () Bool)

(declare-fun lt!1994750 () tuple2!59780)

(assert (=> d!1562982 (= c!827999 (isEmpty!29928 (_1!33193 lt!1994750)))))

(assert (=> d!1562982 (= lt!1994750 (findLongestMatch!1633 (regex!8030 (h!62380 rules!1248)) lt!1993715))))

(assert (=> d!1562982 (ruleValid!3627 thiss!11777 (h!62380 rules!1248))))

(assert (=> d!1562982 (= (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) lt!1993715) lt!1994747)))

(declare-fun b!4867960 () Bool)

(declare-fun res!2078074 () Bool)

(declare-fun e!3043284 () Bool)

(assert (=> b!4867960 (=> (not res!2078074) (not e!3043284))))

(assert (=> b!4867960 (= res!2078074 (= (value!257997 (_1!33189 (get!19223 lt!1994747))) (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994747)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994747)))))))))

(declare-fun b!4867961 () Bool)

(assert (=> b!4867961 (= e!3043282 None!13776)))

(declare-fun b!4867962 () Bool)

(declare-fun e!3043283 () Bool)

(assert (=> b!4867962 (= e!3043283 (matchR!6490 (regex!8030 (h!62380 rules!1248)) (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1993715 lt!1993715 (size!36861 lt!1993715)))))))

(declare-fun b!4867963 () Bool)

(assert (=> b!4867963 (= e!3043284 (= (size!36854 (_1!33189 (get!19223 lt!1994747))) (size!36861 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994747))))))))

(declare-fun b!4867964 () Bool)

(declare-fun res!2078076 () Bool)

(assert (=> b!4867964 (=> (not res!2078076) (not e!3043284))))

(assert (=> b!4867964 (= res!2078076 (< (size!36861 (_2!33189 (get!19223 lt!1994747))) (size!36861 lt!1993715)))))

(declare-fun b!4867965 () Bool)

(declare-fun res!2078078 () Bool)

(assert (=> b!4867965 (=> (not res!2078078) (not e!3043284))))

(assert (=> b!4867965 (= res!2078078 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994747)))) (_2!33189 (get!19223 lt!1994747))) lt!1993715))))

(declare-fun b!4867966 () Bool)

(assert (=> b!4867966 (= e!3043282 (Some!13776 (tuple2!59773 (Token!14645 (apply!13500 (transformation!8030 (h!62380 rules!1248)) (seqFromList!5896 (_1!33193 lt!1994750))) (h!62380 rules!1248) (size!36855 (seqFromList!5896 (_1!33193 lt!1994750))) (_1!33193 lt!1994750)) (_2!33193 lt!1994750))))))

(declare-fun lt!1994746 () Unit!145938)

(assert (=> b!4867966 (= lt!1994746 (longestMatchIsAcceptedByMatchOrIsEmpty!1682 (regex!8030 (h!62380 rules!1248)) lt!1993715))))

(declare-fun res!2078080 () Bool)

(assert (=> b!4867966 (= res!2078080 (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1993715 lt!1993715 (size!36861 lt!1993715)))))))

(assert (=> b!4867966 (=> res!2078080 e!3043283)))

(assert (=> b!4867966 e!3043283))

(declare-fun lt!1994748 () Unit!145938)

(assert (=> b!4867966 (= lt!1994748 lt!1994746)))

(declare-fun lt!1994749 () Unit!145938)

(assert (=> b!4867966 (= lt!1994749 (lemmaSemiInverse!2550 (transformation!8030 (h!62380 rules!1248)) (seqFromList!5896 (_1!33193 lt!1994750))))))

(declare-fun b!4867967 () Bool)

(assert (=> b!4867967 (= e!3043281 e!3043284)))

(declare-fun res!2078079 () Bool)

(assert (=> b!4867967 (=> (not res!2078079) (not e!3043284))))

(assert (=> b!4867967 (= res!2078079 (matchR!6490 (regex!8030 (h!62380 rules!1248)) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994747))))))))

(declare-fun b!4867968 () Bool)

(declare-fun res!2078075 () Bool)

(assert (=> b!4867968 (=> (not res!2078075) (not e!3043284))))

(assert (=> b!4867968 (= res!2078075 (= (rule!11154 (_1!33189 (get!19223 lt!1994747))) (h!62380 rules!1248)))))

(assert (= (and d!1562982 c!827999) b!4867961))

(assert (= (and d!1562982 (not c!827999)) b!4867966))

(assert (= (and b!4867966 (not res!2078080)) b!4867962))

(assert (= (and d!1562982 (not res!2078077)) b!4867967))

(assert (= (and b!4867967 res!2078079) b!4867965))

(assert (= (and b!4867965 res!2078078) b!4867964))

(assert (= (and b!4867964 res!2078076) b!4867968))

(assert (= (and b!4867968 res!2078075) b!4867960))

(assert (= (and b!4867960 res!2078074) b!4867963))

(declare-fun m!5867564 () Bool)

(assert (=> b!4867965 m!5867564))

(declare-fun m!5867566 () Bool)

(assert (=> b!4867965 m!5867566))

(assert (=> b!4867965 m!5867566))

(declare-fun m!5867568 () Bool)

(assert (=> b!4867965 m!5867568))

(assert (=> b!4867965 m!5867568))

(declare-fun m!5867570 () Bool)

(assert (=> b!4867965 m!5867570))

(assert (=> b!4867964 m!5867564))

(declare-fun m!5867572 () Bool)

(assert (=> b!4867964 m!5867572))

(assert (=> b!4867964 m!5864078))

(assert (=> b!4867960 m!5867564))

(declare-fun m!5867574 () Bool)

(assert (=> b!4867960 m!5867574))

(assert (=> b!4867960 m!5867574))

(declare-fun m!5867576 () Bool)

(assert (=> b!4867960 m!5867576))

(assert (=> b!4867962 m!5865032))

(assert (=> b!4867962 m!5864078))

(assert (=> b!4867962 m!5865032))

(assert (=> b!4867962 m!5864078))

(declare-fun m!5867578 () Bool)

(assert (=> b!4867962 m!5867578))

(declare-fun m!5867580 () Bool)

(assert (=> b!4867962 m!5867580))

(assert (=> b!4867963 m!5867564))

(declare-fun m!5867582 () Bool)

(assert (=> b!4867963 m!5867582))

(assert (=> b!4867967 m!5867564))

(assert (=> b!4867967 m!5867566))

(assert (=> b!4867967 m!5867566))

(assert (=> b!4867967 m!5867568))

(assert (=> b!4867967 m!5867568))

(declare-fun m!5867584 () Bool)

(assert (=> b!4867967 m!5867584))

(declare-fun m!5867586 () Bool)

(assert (=> b!4867966 m!5867586))

(declare-fun m!5867588 () Bool)

(assert (=> b!4867966 m!5867588))

(assert (=> b!4867966 m!5867586))

(assert (=> b!4867966 m!5865032))

(declare-fun m!5867590 () Bool)

(assert (=> b!4867966 m!5867590))

(assert (=> b!4867966 m!5864078))

(declare-fun m!5867592 () Bool)

(assert (=> b!4867966 m!5867592))

(assert (=> b!4867966 m!5867586))

(declare-fun m!5867594 () Bool)

(assert (=> b!4867966 m!5867594))

(assert (=> b!4867966 m!5867586))

(declare-fun m!5867596 () Bool)

(assert (=> b!4867966 m!5867596))

(assert (=> b!4867966 m!5865032))

(assert (=> b!4867966 m!5864078))

(assert (=> b!4867966 m!5867578))

(assert (=> b!4867968 m!5867564))

(declare-fun m!5867598 () Bool)

(assert (=> d!1562982 m!5867598))

(declare-fun m!5867600 () Bool)

(assert (=> d!1562982 m!5867600))

(declare-fun m!5867602 () Bool)

(assert (=> d!1562982 m!5867602))

(assert (=> d!1562982 m!5864500))

(assert (=> bm!337933 d!1562982))

(declare-fun b!4867971 () Bool)

(declare-fun res!2078081 () Bool)

(declare-fun e!3043285 () Bool)

(assert (=> b!4867971 (=> (not res!2078081) (not e!3043285))))

(declare-fun lt!1994751 () List!56055)

(assert (=> b!4867971 (= res!2078081 (= (size!36861 lt!1994751) (+ (size!36861 (list!17483 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717)))))) (size!36861 (list!17483 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717)))))))))))

(declare-fun b!4867969 () Bool)

(declare-fun e!3043286 () List!56055)

(assert (=> b!4867969 (= e!3043286 (list!17483 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))

(declare-fun d!1562984 () Bool)

(assert (=> d!1562984 e!3043285))

(declare-fun res!2078082 () Bool)

(assert (=> d!1562984 (=> (not res!2078082) (not e!3043285))))

(assert (=> d!1562984 (= res!2078082 (= (content!9968 lt!1994751) ((_ map or) (content!9968 (list!17483 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717)))))) (content!9968 (list!17483 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717)))))))))))

(assert (=> d!1562984 (= lt!1994751 e!3043286)))

(declare-fun c!828000 () Bool)

(assert (=> d!1562984 (= c!828000 ((_ is Nil!55931) (list!17483 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1562984 (= (++!12179 (list!17483 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717))))) (list!17483 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717)))))) lt!1994751)))

(declare-fun b!4867972 () Bool)

(assert (=> b!4867972 (= e!3043285 (or (not (= (list!17483 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717))))) Nil!55931)) (= lt!1994751 (list!17483 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867970 () Bool)

(assert (=> b!4867970 (= e!3043286 (Cons!55931 (h!62379 (list!17483 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717)))))) (++!12179 (t!363817 (list!17483 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717)))))) (list!17483 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1562984 c!828000) b!4867969))

(assert (= (and d!1562984 (not c!828000)) b!4867970))

(assert (= (and d!1562984 res!2078082) b!4867971))

(assert (= (and b!4867971 res!2078081) b!4867972))

(declare-fun m!5867604 () Bool)

(assert (=> b!4867971 m!5867604))

(assert (=> b!4867971 m!5864964))

(declare-fun m!5867606 () Bool)

(assert (=> b!4867971 m!5867606))

(assert (=> b!4867971 m!5864966))

(declare-fun m!5867608 () Bool)

(assert (=> b!4867971 m!5867608))

(declare-fun m!5867610 () Bool)

(assert (=> d!1562984 m!5867610))

(assert (=> d!1562984 m!5864964))

(declare-fun m!5867612 () Bool)

(assert (=> d!1562984 m!5867612))

(assert (=> d!1562984 m!5864966))

(declare-fun m!5867614 () Bool)

(assert (=> d!1562984 m!5867614))

(assert (=> b!4867970 m!5864966))

(declare-fun m!5867616 () Bool)

(assert (=> b!4867970 m!5867616))

(assert (=> b!4866405 d!1562984))

(declare-fun b!4867974 () Bool)

(declare-fun e!3043287 () List!56055)

(declare-fun e!3043288 () List!56055)

(assert (=> b!4867974 (= e!3043287 e!3043288)))

(declare-fun c!828002 () Bool)

(assert (=> b!4867974 (= c!828002 ((_ is Leaf!24295) (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))

(declare-fun b!4867976 () Bool)

(assert (=> b!4867976 (= e!3043288 (++!12179 (list!17483 (left!40624 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717)))))) (list!17483 (right!40954 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867973 () Bool)

(assert (=> b!4867973 (= e!3043287 Nil!55931)))

(declare-fun d!1562986 () Bool)

(declare-fun c!828001 () Bool)

(assert (=> d!1562986 (= c!828001 ((_ is Empty!14569) (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))

(assert (=> d!1562986 (= (list!17483 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717))))) e!3043287)))

(declare-fun b!4867975 () Bool)

(assert (=> b!4867975 (= e!3043288 (list!17486 (xs!17875 (left!40624 (c!827478 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (= (and d!1562986 c!828001) b!4867973))

(assert (= (and d!1562986 (not c!828001)) b!4867974))

(assert (= (and b!4867974 c!828002) b!4867975))

(assert (= (and b!4867974 (not c!828002)) b!4867976))

(declare-fun m!5867618 () Bool)

(assert (=> b!4867976 m!5867618))

(declare-fun m!5867620 () Bool)

(assert (=> b!4867976 m!5867620))

(assert (=> b!4867976 m!5867618))

(assert (=> b!4867976 m!5867620))

(declare-fun m!5867622 () Bool)

(assert (=> b!4867976 m!5867622))

(declare-fun m!5867624 () Bool)

(assert (=> b!4867975 m!5867624))

(assert (=> b!4866405 d!1562986))

(declare-fun b!4867978 () Bool)

(declare-fun e!3043289 () List!56055)

(declare-fun e!3043290 () List!56055)

(assert (=> b!4867978 (= e!3043289 e!3043290)))

(declare-fun c!828004 () Bool)

(assert (=> b!4867978 (= c!828004 ((_ is Leaf!24295) (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))

(declare-fun b!4867980 () Bool)

(assert (=> b!4867980 (= e!3043290 (++!12179 (list!17483 (left!40624 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717)))))) (list!17483 (right!40954 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4867977 () Bool)

(assert (=> b!4867977 (= e!3043289 Nil!55931)))

(declare-fun d!1562988 () Bool)

(declare-fun c!828003 () Bool)

(assert (=> d!1562988 (= c!828003 ((_ is Empty!14569) (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))

(assert (=> d!1562988 (= (list!17483 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717))))) e!3043289)))

(declare-fun b!4867979 () Bool)

(assert (=> b!4867979 (= e!3043290 (list!17486 (xs!17875 (right!40954 (c!827478 (_2!33185 (v!49684 lt!1993717)))))))))

(assert (= (and d!1562988 c!828003) b!4867977))

(assert (= (and d!1562988 (not c!828003)) b!4867978))

(assert (= (and b!4867978 c!828004) b!4867979))

(assert (= (and b!4867978 (not c!828004)) b!4867980))

(declare-fun m!5867626 () Bool)

(assert (=> b!4867980 m!5867626))

(declare-fun m!5867628 () Bool)

(assert (=> b!4867980 m!5867628))

(assert (=> b!4867980 m!5867626))

(assert (=> b!4867980 m!5867628))

(declare-fun m!5867630 () Bool)

(assert (=> b!4867980 m!5867630))

(declare-fun m!5867632 () Bool)

(assert (=> b!4867979 m!5867632))

(assert (=> b!4866405 d!1562988))

(assert (=> b!4866368 d!1562772))

(assert (=> b!4866368 d!1562776))

(declare-fun b!4867981 () Bool)

(declare-fun e!3043292 () Bool)

(assert (=> b!4867981 (= e!3043292 (not (isEmpty!29927 (right!40954 (right!40954 (c!827478 input!661))))))))

(declare-fun b!4867982 () Bool)

(declare-fun res!2078088 () Bool)

(assert (=> b!4867982 (=> (not res!2078088) (not e!3043292))))

(assert (=> b!4867982 (= res!2078088 (isBalanced!3954 (right!40954 (right!40954 (c!827478 input!661)))))))

(declare-fun b!4867983 () Bool)

(declare-fun res!2078086 () Bool)

(assert (=> b!4867983 (=> (not res!2078086) (not e!3043292))))

(assert (=> b!4867983 (= res!2078086 (isBalanced!3954 (left!40624 (right!40954 (c!827478 input!661)))))))

(declare-fun b!4867984 () Bool)

(declare-fun res!2078085 () Bool)

(assert (=> b!4867984 (=> (not res!2078085) (not e!3043292))))

(assert (=> b!4867984 (= res!2078085 (not (isEmpty!29927 (left!40624 (right!40954 (c!827478 input!661))))))))

(declare-fun d!1562990 () Bool)

(declare-fun res!2078083 () Bool)

(declare-fun e!3043291 () Bool)

(assert (=> d!1562990 (=> res!2078083 e!3043291)))

(assert (=> d!1562990 (= res!2078083 (not ((_ is Node!14569) (right!40954 (c!827478 input!661)))))))

(assert (=> d!1562990 (= (isBalanced!3954 (right!40954 (c!827478 input!661))) e!3043291)))

(declare-fun b!4867985 () Bool)

(assert (=> b!4867985 (= e!3043291 e!3043292)))

(declare-fun res!2078084 () Bool)

(assert (=> b!4867985 (=> (not res!2078084) (not e!3043292))))

(assert (=> b!4867985 (= res!2078084 (<= (- 1) (- (height!1925 (left!40624 (right!40954 (c!827478 input!661)))) (height!1925 (right!40954 (right!40954 (c!827478 input!661)))))))))

(declare-fun b!4867986 () Bool)

(declare-fun res!2078087 () Bool)

(assert (=> b!4867986 (=> (not res!2078087) (not e!3043292))))

(assert (=> b!4867986 (= res!2078087 (<= (- (height!1925 (left!40624 (right!40954 (c!827478 input!661)))) (height!1925 (right!40954 (right!40954 (c!827478 input!661))))) 1))))

(assert (= (and d!1562990 (not res!2078083)) b!4867985))

(assert (= (and b!4867985 res!2078084) b!4867986))

(assert (= (and b!4867986 res!2078087) b!4867983))

(assert (= (and b!4867983 res!2078086) b!4867982))

(assert (= (and b!4867982 res!2078088) b!4867984))

(assert (= (and b!4867984 res!2078085) b!4867981))

(assert (=> b!4867985 m!5867404))

(assert (=> b!4867985 m!5867406))

(declare-fun m!5867634 () Bool)

(assert (=> b!4867983 m!5867634))

(declare-fun m!5867636 () Bool)

(assert (=> b!4867984 m!5867636))

(declare-fun m!5867638 () Bool)

(assert (=> b!4867982 m!5867638))

(assert (=> b!4867986 m!5867404))

(assert (=> b!4867986 m!5867406))

(declare-fun m!5867640 () Bool)

(assert (=> b!4867981 m!5867640))

(assert (=> b!4866499 d!1562990))

(declare-fun d!1562992 () Bool)

(assert (=> d!1562992 (= (max!0 (height!1925 (left!40624 (c!827478 totalInput!332))) (height!1925 (right!40954 (c!827478 totalInput!332)))) (ite (< (height!1925 (left!40624 (c!827478 totalInput!332))) (height!1925 (right!40954 (c!827478 totalInput!332)))) (height!1925 (right!40954 (c!827478 totalInput!332))) (height!1925 (left!40624 (c!827478 totalInput!332)))))))

(assert (=> b!4866418 d!1562992))

(assert (=> b!4866418 d!1562790))

(assert (=> b!4866418 d!1562792))

(assert (=> b!4865508 d!1562052))

(declare-fun d!1562994 () Bool)

(assert (=> d!1562994 (= (get!19222 lt!1994078) (v!49684 lt!1994078))))

(assert (=> b!4866315 d!1562994))

(declare-fun d!1562996 () Bool)

(assert (=> d!1562996 (= (get!19223 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717))))) (v!49688 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))

(assert (=> b!4866315 d!1562996))

(declare-fun b!4867987 () Bool)

(declare-fun res!2078090 () Bool)

(declare-fun e!3043295 () Bool)

(assert (=> b!4867987 (=> (not res!2078090) (not e!3043295))))

(declare-fun lt!1994753 () Option!13777)

(assert (=> b!4867987 (= res!2078090 (matchR!6490 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994753)))) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994753))))))))

(declare-fun b!4867988 () Bool)

(assert (=> b!4867988 (= e!3043295 (contains!19391 rules!1248 (rule!11154 (_1!33189 (get!19223 lt!1994753)))))))

(declare-fun b!4867989 () Bool)

(declare-fun res!2078092 () Bool)

(assert (=> b!4867989 (=> (not res!2078092) (not e!3043295))))

(assert (=> b!4867989 (= res!2078092 (< (size!36861 (_2!33189 (get!19223 lt!1994753))) (size!36861 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))

(declare-fun b!4867990 () Bool)

(declare-fun res!2078093 () Bool)

(assert (=> b!4867990 (=> (not res!2078093) (not e!3043295))))

(assert (=> b!4867990 (= res!2078093 (= (value!257997 (_1!33189 (get!19223 lt!1994753))) (apply!13500 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994753)))) (seqFromList!5896 (originalCharacters!8353 (_1!33189 (get!19223 lt!1994753)))))))))

(declare-fun b!4867991 () Bool)

(declare-fun res!2078091 () Bool)

(assert (=> b!4867991 (=> (not res!2078091) (not e!3043295))))

(assert (=> b!4867991 (= res!2078091 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994753)))) (_2!33189 (get!19223 lt!1994753))) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun call!338109 () Option!13777)

(declare-fun bm!338104 () Bool)

(assert (=> bm!338104 (= call!338109 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun b!4867993 () Bool)

(declare-fun res!2078094 () Bool)

(assert (=> b!4867993 (=> (not res!2078094) (not e!3043295))))

(assert (=> b!4867993 (= res!2078094 (= (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994753)))) (originalCharacters!8353 (_1!33189 (get!19223 lt!1994753)))))))

(declare-fun b!4867994 () Bool)

(declare-fun e!3043294 () Bool)

(assert (=> b!4867994 (= e!3043294 e!3043295)))

(declare-fun res!2078095 () Bool)

(assert (=> b!4867994 (=> (not res!2078095) (not e!3043295))))

(assert (=> b!4867994 (= res!2078095 (isDefined!10845 lt!1994753))))

(declare-fun b!4867995 () Bool)

(declare-fun e!3043293 () Option!13777)

(assert (=> b!4867995 (= e!3043293 call!338109)))

(declare-fun b!4867992 () Bool)

(declare-fun lt!1994754 () Option!13777)

(declare-fun lt!1994755 () Option!13777)

(assert (=> b!4867992 (= e!3043293 (ite (and ((_ is None!13776) lt!1994754) ((_ is None!13776) lt!1994755)) None!13776 (ite ((_ is None!13776) lt!1994755) lt!1994754 (ite ((_ is None!13776) lt!1994754) lt!1994755 (ite (>= (size!36854 (_1!33189 (v!49688 lt!1994754))) (size!36854 (_1!33189 (v!49688 lt!1994755)))) lt!1994754 lt!1994755)))))))

(assert (=> b!4867992 (= lt!1994754 call!338109)))

(assert (=> b!4867992 (= lt!1994755 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun d!1562998 () Bool)

(assert (=> d!1562998 e!3043294))

(declare-fun res!2078089 () Bool)

(assert (=> d!1562998 (=> res!2078089 e!3043294)))

(assert (=> d!1562998 (= res!2078089 (isEmpty!29923 lt!1994753))))

(assert (=> d!1562998 (= lt!1994753 e!3043293)))

(declare-fun c!828005 () Bool)

(assert (=> d!1562998 (= c!828005 (and ((_ is Cons!55932) rules!1248) ((_ is Nil!55932) (t!363818 rules!1248))))))

(declare-fun lt!1994756 () Unit!145938)

(declare-fun lt!1994752 () Unit!145938)

(assert (=> d!1562998 (= lt!1994756 lt!1994752)))

(assert (=> d!1562998 (isPrefix!4764 (list!17479 (_2!33185 (v!49684 lt!1993717))) (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(assert (=> d!1562998 (= lt!1994752 (lemmaIsPrefixRefl!3161 (list!17479 (_2!33185 (v!49684 lt!1993717))) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(assert (=> d!1562998 (rulesValidInductive!3019 thiss!11777 rules!1248)))

(assert (=> d!1562998 (= (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717)))) lt!1994753)))

(assert (= (and d!1562998 c!828005) b!4867995))

(assert (= (and d!1562998 (not c!828005)) b!4867992))

(assert (= (or b!4867995 b!4867992) bm!338104))

(assert (= (and d!1562998 (not res!2078089)) b!4867994))

(assert (= (and b!4867994 res!2078095) b!4867993))

(assert (= (and b!4867993 res!2078094) b!4867989))

(assert (= (and b!4867989 res!2078092) b!4867991))

(assert (= (and b!4867991 res!2078091) b!4867990))

(assert (= (and b!4867990 res!2078093) b!4867987))

(assert (= (and b!4867987 res!2078090) b!4867988))

(declare-fun m!5867642 () Bool)

(assert (=> b!4867990 m!5867642))

(declare-fun m!5867644 () Bool)

(assert (=> b!4867990 m!5867644))

(assert (=> b!4867990 m!5867644))

(declare-fun m!5867646 () Bool)

(assert (=> b!4867990 m!5867646))

(declare-fun m!5867648 () Bool)

(assert (=> b!4867994 m!5867648))

(assert (=> b!4867991 m!5867642))

(declare-fun m!5867650 () Bool)

(assert (=> b!4867991 m!5867650))

(assert (=> b!4867991 m!5867650))

(declare-fun m!5867652 () Bool)

(assert (=> b!4867991 m!5867652))

(assert (=> b!4867991 m!5867652))

(declare-fun m!5867654 () Bool)

(assert (=> b!4867991 m!5867654))

(assert (=> b!4867988 m!5867642))

(declare-fun m!5867656 () Bool)

(assert (=> b!4867988 m!5867656))

(assert (=> b!4867987 m!5867642))

(assert (=> b!4867987 m!5867650))

(assert (=> b!4867987 m!5867650))

(assert (=> b!4867987 m!5867652))

(assert (=> b!4867987 m!5867652))

(declare-fun m!5867658 () Bool)

(assert (=> b!4867987 m!5867658))

(assert (=> b!4867989 m!5867642))

(declare-fun m!5867660 () Bool)

(assert (=> b!4867989 m!5867660))

(assert (=> b!4867989 m!5863836))

(assert (=> b!4867989 m!5864006))

(assert (=> b!4867993 m!5867642))

(assert (=> b!4867993 m!5867650))

(assert (=> b!4867993 m!5867650))

(assert (=> b!4867993 m!5867652))

(assert (=> bm!338104 m!5863836))

(assert (=> bm!338104 m!5867030))

(assert (=> b!4867992 m!5863836))

(assert (=> b!4867992 m!5866580))

(declare-fun m!5867662 () Bool)

(assert (=> d!1562998 m!5867662))

(assert (=> d!1562998 m!5863836))

(assert (=> d!1562998 m!5863836))

(declare-fun m!5867664 () Bool)

(assert (=> d!1562998 m!5867664))

(assert (=> d!1562998 m!5863836))

(assert (=> d!1562998 m!5863836))

(declare-fun m!5867666 () Bool)

(assert (=> d!1562998 m!5867666))

(assert (=> d!1562998 m!5864116))

(assert (=> b!4866315 d!1562998))

(assert (=> b!4866315 d!1561818))

(declare-fun d!1563000 () Bool)

(declare-fun c!828006 () Bool)

(assert (=> d!1563000 (= c!828006 ((_ is Node!14569) (left!40624 (right!40954 (c!827478 totalInput!332)))))))

(declare-fun e!3043296 () Bool)

(assert (=> d!1563000 (= (inv!71837 (left!40624 (right!40954 (c!827478 totalInput!332)))) e!3043296)))

(declare-fun b!4867996 () Bool)

(assert (=> b!4867996 (= e!3043296 (inv!71843 (left!40624 (right!40954 (c!827478 totalInput!332)))))))

(declare-fun b!4867997 () Bool)

(declare-fun e!3043297 () Bool)

(assert (=> b!4867997 (= e!3043296 e!3043297)))

(declare-fun res!2078096 () Bool)

(assert (=> b!4867997 (= res!2078096 (not ((_ is Leaf!24295) (left!40624 (right!40954 (c!827478 totalInput!332))))))))

(assert (=> b!4867997 (=> res!2078096 e!3043297)))

(declare-fun b!4867998 () Bool)

(assert (=> b!4867998 (= e!3043297 (inv!71844 (left!40624 (right!40954 (c!827478 totalInput!332)))))))

(assert (= (and d!1563000 c!828006) b!4867996))

(assert (= (and d!1563000 (not c!828006)) b!4867997))

(assert (= (and b!4867997 (not res!2078096)) b!4867998))

(declare-fun m!5867668 () Bool)

(assert (=> b!4867996 m!5867668))

(declare-fun m!5867670 () Bool)

(assert (=> b!4867998 m!5867670))

(assert (=> b!4866510 d!1563000))

(declare-fun d!1563002 () Bool)

(declare-fun c!828007 () Bool)

(assert (=> d!1563002 (= c!828007 ((_ is Node!14569) (right!40954 (right!40954 (c!827478 totalInput!332)))))))

(declare-fun e!3043298 () Bool)

(assert (=> d!1563002 (= (inv!71837 (right!40954 (right!40954 (c!827478 totalInput!332)))) e!3043298)))

(declare-fun b!4867999 () Bool)

(assert (=> b!4867999 (= e!3043298 (inv!71843 (right!40954 (right!40954 (c!827478 totalInput!332)))))))

(declare-fun b!4868000 () Bool)

(declare-fun e!3043299 () Bool)

(assert (=> b!4868000 (= e!3043298 e!3043299)))

(declare-fun res!2078097 () Bool)

(assert (=> b!4868000 (= res!2078097 (not ((_ is Leaf!24295) (right!40954 (right!40954 (c!827478 totalInput!332))))))))

(assert (=> b!4868000 (=> res!2078097 e!3043299)))

(declare-fun b!4868001 () Bool)

(assert (=> b!4868001 (= e!3043299 (inv!71844 (right!40954 (right!40954 (c!827478 totalInput!332)))))))

(assert (= (and d!1563002 c!828007) b!4867999))

(assert (= (and d!1563002 (not c!828007)) b!4868000))

(assert (= (and b!4868000 (not res!2078097)) b!4868001))

(declare-fun m!5867672 () Bool)

(assert (=> b!4867999 m!5867672))

(declare-fun m!5867674 () Bool)

(assert (=> b!4868001 m!5867674))

(assert (=> b!4866510 d!1563002))

(declare-fun d!1563004 () Bool)

(declare-fun lt!1994757 () Int)

(assert (=> d!1563004 (>= lt!1994757 0)))

(declare-fun e!3043300 () Int)

(assert (=> d!1563004 (= lt!1994757 e!3043300)))

(declare-fun c!828008 () Bool)

(assert (=> d!1563004 (= c!828008 ((_ is Nil!55931) (t!363817 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))

(assert (=> d!1563004 (= (size!36861 (t!363817 (list!17479 (_2!33185 (v!49684 lt!1993717))))) lt!1994757)))

(declare-fun b!4868002 () Bool)

(assert (=> b!4868002 (= e!3043300 0)))

(declare-fun b!4868003 () Bool)

(assert (=> b!4868003 (= e!3043300 (+ 1 (size!36861 (t!363817 (t!363817 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1563004 c!828008) b!4868002))

(assert (= (and d!1563004 (not c!828008)) b!4868003))

(declare-fun m!5867676 () Bool)

(assert (=> b!4868003 m!5867676))

(assert (=> b!4866427 d!1563004))

(assert (=> b!4866503 d!1562880))

(assert (=> b!4866503 d!1562882))

(assert (=> d!1562134 d!1562866))

(declare-fun d!1563006 () Bool)

(declare-fun lt!1994760 () Bool)

(assert (=> d!1563006 (= lt!1994760 (isEmpty!29928 (list!17479 (_1!33192 lt!1994132))))))

(assert (=> d!1563006 (= lt!1994760 (isEmpty!29927 (c!827478 (_1!33192 lt!1994132))))))

(assert (=> d!1563006 (= (isEmpty!29929 (_1!33192 lt!1994132)) lt!1994760)))

(declare-fun bs!1174422 () Bool)

(assert (= bs!1174422 d!1563006))

(assert (=> bs!1174422 m!5865030))

(assert (=> bs!1174422 m!5865030))

(declare-fun m!5867678 () Bool)

(assert (=> bs!1174422 m!5867678))

(declare-fun m!5867680 () Bool)

(assert (=> bs!1174422 m!5867680))

(assert (=> d!1562134 d!1563006))

(assert (=> d!1562134 d!1562956))

(assert (=> d!1562134 d!1561850))

(declare-fun d!1563008 () Bool)

(declare-fun lt!1994763 () tuple2!59778)

(assert (=> d!1563008 (= (tuple2!59781 (list!17479 (_1!33192 lt!1994763)) (list!17479 (_2!33192 lt!1994763))) (findLongestMatch!1633 (regex!8030 (h!62380 rules!1248)) (list!17479 input!661)))))

(declare-fun choose!35595 (Regex!13105 BalanceConc!28580 BalanceConc!28580) tuple2!59778)

(assert (=> d!1563008 (= lt!1994763 (choose!35595 (regex!8030 (h!62380 rules!1248)) input!661 totalInput!332))))

(assert (=> d!1563008 (validRegex!5866 (regex!8030 (h!62380 rules!1248)))))

(assert (=> d!1563008 (= (findLongestMatchWithZipperSequenceV2!132 (regex!8030 (h!62380 rules!1248)) input!661 totalInput!332) lt!1994763)))

(declare-fun bs!1174423 () Bool)

(assert (= bs!1174423 d!1563008))

(declare-fun m!5867682 () Bool)

(assert (=> bs!1174423 m!5867682))

(declare-fun m!5867684 () Bool)

(assert (=> bs!1174423 m!5867684))

(declare-fun m!5867686 () Bool)

(assert (=> bs!1174423 m!5867686))

(assert (=> bs!1174423 m!5866682))

(assert (=> bs!1174423 m!5863822))

(assert (=> bs!1174423 m!5867192))

(assert (=> bs!1174423 m!5863822))

(assert (=> d!1562134 d!1563008))

(declare-fun d!1563010 () Bool)

(assert (=> d!1563010 (= (isDefined!10845 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661))) (not (isEmpty!29923 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661)))))))

(declare-fun bs!1174424 () Bool)

(assert (= bs!1174424 d!1563010))

(assert (=> bs!1174424 m!5864692))

(declare-fun m!5867688 () Bool)

(assert (=> bs!1174424 m!5867688))

(assert (=> d!1562134 d!1563010))

(declare-fun d!1563012 () Bool)

(declare-fun res!2078102 () Bool)

(declare-fun e!3043303 () Bool)

(assert (=> d!1563012 (=> (not res!2078102) (not e!3043303))))

(assert (=> d!1563012 (= res!2078102 (validRegex!5866 (regex!8030 (h!62380 rules!1248))))))

(assert (=> d!1563012 (= (ruleValid!3627 thiss!11777 (h!62380 rules!1248)) e!3043303)))

(declare-fun b!4868008 () Bool)

(declare-fun res!2078103 () Bool)

(assert (=> b!4868008 (=> (not res!2078103) (not e!3043303))))

(assert (=> b!4868008 (= res!2078103 (not (nullable!4539 (regex!8030 (h!62380 rules!1248)))))))

(declare-fun b!4868009 () Bool)

(assert (=> b!4868009 (= e!3043303 (not (= (tag!8894 (h!62380 rules!1248)) (String!63119 ""))))))

(assert (= (and d!1563012 res!2078102) b!4868008))

(assert (= (and b!4868008 res!2078103) b!4868009))

(assert (=> d!1563012 m!5866682))

(assert (=> b!4868008 m!5866732))

(assert (=> d!1562134 d!1563012))

(declare-fun d!1563014 () Bool)

(declare-fun res!2078104 () Bool)

(declare-fun e!3043304 () Bool)

(assert (=> d!1563014 (=> (not res!2078104) (not e!3043304))))

(assert (=> d!1563014 (= res!2078104 (= (csize!29368 (left!40624 (c!827478 totalInput!332))) (+ (size!36864 (left!40624 (left!40624 (c!827478 totalInput!332)))) (size!36864 (right!40954 (left!40624 (c!827478 totalInput!332)))))))))

(assert (=> d!1563014 (= (inv!71843 (left!40624 (c!827478 totalInput!332))) e!3043304)))

(declare-fun b!4868010 () Bool)

(declare-fun res!2078105 () Bool)

(assert (=> b!4868010 (=> (not res!2078105) (not e!3043304))))

(assert (=> b!4868010 (= res!2078105 (and (not (= (left!40624 (left!40624 (c!827478 totalInput!332))) Empty!14569)) (not (= (right!40954 (left!40624 (c!827478 totalInput!332))) Empty!14569))))))

(declare-fun b!4868011 () Bool)

(declare-fun res!2078106 () Bool)

(assert (=> b!4868011 (=> (not res!2078106) (not e!3043304))))

(assert (=> b!4868011 (= res!2078106 (= (cheight!14780 (left!40624 (c!827478 totalInput!332))) (+ (max!0 (height!1925 (left!40624 (left!40624 (c!827478 totalInput!332)))) (height!1925 (right!40954 (left!40624 (c!827478 totalInput!332))))) 1)))))

(declare-fun b!4868012 () Bool)

(assert (=> b!4868012 (= e!3043304 (<= 0 (cheight!14780 (left!40624 (c!827478 totalInput!332)))))))

(assert (= (and d!1563014 res!2078104) b!4868010))

(assert (= (and b!4868010 res!2078105) b!4868011))

(assert (= (and b!4868011 res!2078106) b!4868012))

(declare-fun m!5867690 () Bool)

(assert (=> d!1563014 m!5867690))

(declare-fun m!5867692 () Bool)

(assert (=> d!1563014 m!5867692))

(assert (=> b!4868011 m!5867552))

(assert (=> b!4868011 m!5867554))

(assert (=> b!4868011 m!5867552))

(assert (=> b!4868011 m!5867554))

(declare-fun m!5867694 () Bool)

(assert (=> b!4868011 m!5867694))

(assert (=> b!4866478 d!1563014))

(declare-fun d!1563016 () Bool)

(declare-fun lt!1994764 () Int)

(assert (=> d!1563016 (>= lt!1994764 0)))

(declare-fun e!3043305 () Int)

(assert (=> d!1563016 (= lt!1994764 e!3043305)))

(declare-fun c!828009 () Bool)

(assert (=> d!1563016 (= c!828009 ((_ is Nil!55931) (innerList!14657 (xs!17875 (c!827478 totalInput!332)))))))

(assert (=> d!1563016 (= (size!36861 (innerList!14657 (xs!17875 (c!827478 totalInput!332)))) lt!1994764)))

(declare-fun b!4868013 () Bool)

(assert (=> b!4868013 (= e!3043305 0)))

(declare-fun b!4868014 () Bool)

(assert (=> b!4868014 (= e!3043305 (+ 1 (size!36861 (t!363817 (innerList!14657 (xs!17875 (c!827478 totalInput!332)))))))))

(assert (= (and d!1563016 c!828009) b!4868013))

(assert (= (and d!1563016 (not c!828009)) b!4868014))

(declare-fun m!5867696 () Bool)

(assert (=> b!4868014 m!5867696))

(assert (=> d!1562082 d!1563016))

(declare-fun b!4868018 () Bool)

(declare-fun e!3043307 () List!56057)

(assert (=> b!4868018 (= e!3043307 (++!12183 (list!17484 (left!40625 (c!827480 lt!1993812))) (list!17484 (right!40955 (c!827480 lt!1993812)))))))

(declare-fun b!4868015 () Bool)

(declare-fun e!3043306 () List!56057)

(assert (=> b!4868015 (= e!3043306 Nil!55933)))

(declare-fun d!1563018 () Bool)

(declare-fun c!828010 () Bool)

(assert (=> d!1563018 (= c!828010 ((_ is Empty!14570) (c!827480 lt!1993812)))))

(assert (=> d!1563018 (= (list!17484 (c!827480 lt!1993812)) e!3043306)))

(declare-fun b!4868017 () Bool)

(assert (=> b!4868017 (= e!3043307 (list!17488 (xs!17876 (c!827480 lt!1993812))))))

(declare-fun b!4868016 () Bool)

(assert (=> b!4868016 (= e!3043306 e!3043307)))

(declare-fun c!828011 () Bool)

(assert (=> b!4868016 (= c!828011 ((_ is Leaf!24296) (c!827480 lt!1993812)))))

(assert (= (and d!1563018 c!828010) b!4868015))

(assert (= (and d!1563018 (not c!828010)) b!4868016))

(assert (= (and b!4868016 c!828011) b!4868017))

(assert (= (and b!4868016 (not c!828011)) b!4868018))

(declare-fun m!5867698 () Bool)

(assert (=> b!4868018 m!5867698))

(declare-fun m!5867700 () Bool)

(assert (=> b!4868018 m!5867700))

(assert (=> b!4868018 m!5867698))

(assert (=> b!4868018 m!5867700))

(declare-fun m!5867702 () Bool)

(assert (=> b!4868018 m!5867702))

(declare-fun m!5867704 () Bool)

(assert (=> b!4868017 m!5867704))

(assert (=> d!1562152 d!1563018))

(declare-fun d!1563020 () Bool)

(assert (=> d!1563020 (= (list!17488 (xs!17876 (c!827480 lt!1993716))) (innerList!14658 (xs!17876 (c!827480 lt!1993716))))))

(assert (=> b!4866476 d!1563020))

(assert (=> bm!337923 d!1561998))

(declare-fun d!1563022 () Bool)

(declare-fun lt!1994767 () Bool)

(declare-fun content!9974 (List!56059) (InoxSet String!63118))

(assert (=> d!1563022 (= lt!1994767 (select (content!9974 Nil!55935) (tag!8894 (h!62380 rules!1248))))))

(declare-fun e!3043312 () Bool)

(assert (=> d!1563022 (= lt!1994767 e!3043312)))

(declare-fun res!2078111 () Bool)

(assert (=> d!1563022 (=> (not res!2078111) (not e!3043312))))

(assert (=> d!1563022 (= res!2078111 ((_ is Cons!55935) Nil!55935))))

(assert (=> d!1563022 (= (contains!19392 Nil!55935 (tag!8894 (h!62380 rules!1248))) lt!1994767)))

(declare-fun b!4868023 () Bool)

(declare-fun e!3043313 () Bool)

(assert (=> b!4868023 (= e!3043312 e!3043313)))

(declare-fun res!2078112 () Bool)

(assert (=> b!4868023 (=> res!2078112 e!3043313)))

(assert (=> b!4868023 (= res!2078112 (= (h!62383 Nil!55935) (tag!8894 (h!62380 rules!1248))))))

(declare-fun b!4868024 () Bool)

(assert (=> b!4868024 (= e!3043313 (contains!19392 (t!363829 Nil!55935) (tag!8894 (h!62380 rules!1248))))))

(assert (= (and d!1563022 res!2078111) b!4868023))

(assert (= (and b!4868023 (not res!2078112)) b!4868024))

(declare-fun m!5867706 () Bool)

(assert (=> d!1563022 m!5867706))

(declare-fun m!5867708 () Bool)

(assert (=> d!1563022 m!5867708))

(declare-fun m!5867710 () Bool)

(assert (=> b!4868024 m!5867710))

(assert (=> b!4866376 d!1563022))

(declare-fun d!1563024 () Bool)

(declare-fun lt!1994768 () Bool)

(assert (=> d!1563024 (= lt!1994768 (select (content!9973 rules!1248) (rule!11154 (_1!33189 (get!19223 lt!1994018)))))))

(declare-fun e!3043315 () Bool)

(assert (=> d!1563024 (= lt!1994768 e!3043315)))

(declare-fun res!2078113 () Bool)

(assert (=> d!1563024 (=> (not res!2078113) (not e!3043315))))

(assert (=> d!1563024 (= res!2078113 ((_ is Cons!55932) rules!1248))))

(assert (=> d!1563024 (= (contains!19391 rules!1248 (rule!11154 (_1!33189 (get!19223 lt!1994018)))) lt!1994768)))

(declare-fun b!4868025 () Bool)

(declare-fun e!3043314 () Bool)

(assert (=> b!4868025 (= e!3043315 e!3043314)))

(declare-fun res!2078114 () Bool)

(assert (=> b!4868025 (=> res!2078114 e!3043314)))

(assert (=> b!4868025 (= res!2078114 (= (h!62380 rules!1248) (rule!11154 (_1!33189 (get!19223 lt!1994018)))))))

(declare-fun b!4868026 () Bool)

(assert (=> b!4868026 (= e!3043314 (contains!19391 (t!363818 rules!1248) (rule!11154 (_1!33189 (get!19223 lt!1994018)))))))

(assert (= (and d!1563024 res!2078113) b!4868025))

(assert (= (and b!4868025 (not res!2078114)) b!4868026))

(assert (=> d!1563024 m!5867546))

(declare-fun m!5867712 () Bool)

(assert (=> d!1563024 m!5867712))

(declare-fun m!5867714 () Bool)

(assert (=> b!4868026 m!5867714))

(assert (=> b!4866173 d!1563024))

(assert (=> b!4866173 d!1562606))

(assert (=> b!4866086 d!1562900))

(declare-fun d!1563026 () Bool)

(assert (=> d!1563026 (= (get!19223 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 input!661))) (v!49688 (maxPrefix!4547 thiss!11777 (t!363818 rules!1248) (list!17479 input!661))))))

(assert (=> b!4866086 d!1563026))

(assert (=> b!4866086 d!1562832))

(assert (=> b!4866086 d!1561850))

(declare-fun b!4868029 () Bool)

(declare-fun res!2078115 () Bool)

(declare-fun e!3043316 () Bool)

(assert (=> b!4868029 (=> (not res!2078115) (not e!3043316))))

(declare-fun lt!1994769 () List!56055)

(assert (=> b!4868029 (= res!2078115 (= (size!36861 lt!1994769) (+ (size!36861 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))) (size!36861 (_2!33189 (get!19223 lt!1994018))))))))

(declare-fun b!4868027 () Bool)

(declare-fun e!3043317 () List!56055)

(assert (=> b!4868027 (= e!3043317 (_2!33189 (get!19223 lt!1994018)))))

(declare-fun d!1563028 () Bool)

(assert (=> d!1563028 e!3043316))

(declare-fun res!2078116 () Bool)

(assert (=> d!1563028 (=> (not res!2078116) (not e!3043316))))

(assert (=> d!1563028 (= res!2078116 (= (content!9968 lt!1994769) ((_ map or) (content!9968 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))) (content!9968 (_2!33189 (get!19223 lt!1994018))))))))

(assert (=> d!1563028 (= lt!1994769 e!3043317)))

(declare-fun c!828012 () Bool)

(assert (=> d!1563028 (= c!828012 ((_ is Nil!55931) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))))))

(assert (=> d!1563028 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018)))) (_2!33189 (get!19223 lt!1994018))) lt!1994769)))

(declare-fun b!4868030 () Bool)

(assert (=> b!4868030 (= e!3043316 (or (not (= (_2!33189 (get!19223 lt!1994018)) Nil!55931)) (= lt!1994769 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018)))))))))

(declare-fun b!4868028 () Bool)

(assert (=> b!4868028 (= e!3043317 (Cons!55931 (h!62379 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))) (++!12179 (t!363817 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))) (_2!33189 (get!19223 lt!1994018)))))))

(assert (= (and d!1563028 c!828012) b!4868027))

(assert (= (and d!1563028 (not c!828012)) b!4868028))

(assert (= (and d!1563028 res!2078116) b!4868029))

(assert (= (and b!4868029 res!2078115) b!4868030))

(declare-fun m!5867716 () Bool)

(assert (=> b!4868029 m!5867716))

(assert (=> b!4868029 m!5864682))

(declare-fun m!5867718 () Bool)

(assert (=> b!4868029 m!5867718))

(assert (=> b!4868029 m!5864690))

(declare-fun m!5867720 () Bool)

(assert (=> d!1563028 m!5867720))

(assert (=> d!1563028 m!5864682))

(declare-fun m!5867722 () Bool)

(assert (=> d!1563028 m!5867722))

(declare-fun m!5867724 () Bool)

(assert (=> d!1563028 m!5867724))

(declare-fun m!5867726 () Bool)

(assert (=> b!4868028 m!5867726))

(assert (=> b!4866176 d!1563028))

(assert (=> b!4866176 d!1562638))

(assert (=> b!4866176 d!1562640))

(assert (=> b!4866176 d!1562606))

(declare-fun b!4868032 () Bool)

(declare-fun e!3043319 () tuple2!59766)

(declare-fun lt!1994770 () Option!13777)

(declare-fun lt!1994771 () tuple2!59766)

(assert (=> b!4868032 (= e!3043319 (tuple2!59767 (Cons!55933 (_1!33189 (v!49688 lt!1994770)) (_1!33186 lt!1994771)) (_2!33186 lt!1994771)))))

(assert (=> b!4868032 (= lt!1994771 (lexList!2101 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1994770))))))

(declare-fun b!4868033 () Bool)

(declare-fun e!3043320 () Bool)

(declare-fun e!3043318 () Bool)

(assert (=> b!4868033 (= e!3043320 e!3043318)))

(declare-fun res!2078117 () Bool)

(declare-fun lt!1994772 () tuple2!59766)

(assert (=> b!4868033 (= res!2078117 (< (size!36861 (_2!33186 lt!1994772)) (size!36861 (_2!33189 (v!49688 lt!1994022)))))))

(assert (=> b!4868033 (=> (not res!2078117) (not e!3043318))))

(declare-fun b!4868034 () Bool)

(assert (=> b!4868034 (= e!3043318 (not (isEmpty!29918 (_1!33186 lt!1994772))))))

(declare-fun b!4868035 () Bool)

(assert (=> b!4868035 (= e!3043319 (tuple2!59767 Nil!55933 (_2!33189 (v!49688 lt!1994022))))))

(declare-fun b!4868031 () Bool)

(assert (=> b!4868031 (= e!3043320 (= (_2!33186 lt!1994772) (_2!33189 (v!49688 lt!1994022))))))

(declare-fun d!1563030 () Bool)

(assert (=> d!1563030 e!3043320))

(declare-fun c!828014 () Bool)

(assert (=> d!1563030 (= c!828014 (> (size!36862 (_1!33186 lt!1994772)) 0))))

(assert (=> d!1563030 (= lt!1994772 e!3043319)))

(declare-fun c!828013 () Bool)

(assert (=> d!1563030 (= c!828013 ((_ is Some!13776) lt!1994770))))

(assert (=> d!1563030 (= lt!1994770 (maxPrefix!4547 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1994022))))))

(assert (=> d!1563030 (= (lexList!2101 thiss!11777 rules!1248 (_2!33189 (v!49688 lt!1994022))) lt!1994772)))

(assert (= (and d!1563030 c!828013) b!4868032))

(assert (= (and d!1563030 (not c!828013)) b!4868035))

(assert (= (and d!1563030 c!828014) b!4868033))

(assert (= (and d!1563030 (not c!828014)) b!4868031))

(assert (= (and b!4868033 res!2078117) b!4868034))

(declare-fun m!5867728 () Bool)

(assert (=> b!4868032 m!5867728))

(declare-fun m!5867730 () Bool)

(assert (=> b!4868033 m!5867730))

(declare-fun m!5867732 () Bool)

(assert (=> b!4868033 m!5867732))

(declare-fun m!5867734 () Bool)

(assert (=> b!4868034 m!5867734))

(declare-fun m!5867736 () Bool)

(assert (=> d!1563030 m!5867736))

(declare-fun m!5867738 () Bool)

(assert (=> d!1563030 m!5867738))

(assert (=> b!4866182 d!1563030))

(declare-fun b!4868039 () Bool)

(declare-fun e!3043322 () List!56057)

(assert (=> b!4868039 (= e!3043322 (++!12183 (list!17484 (left!40625 lt!1994085)) (list!17484 (right!40955 lt!1994085))))))

(declare-fun b!4868036 () Bool)

(declare-fun e!3043321 () List!56057)

(assert (=> b!4868036 (= e!3043321 Nil!55933)))

(declare-fun d!1563032 () Bool)

(declare-fun c!828015 () Bool)

(assert (=> d!1563032 (= c!828015 ((_ is Empty!14570) lt!1994085))))

(assert (=> d!1563032 (= (list!17484 lt!1994085) e!3043321)))

(declare-fun b!4868038 () Bool)

(assert (=> b!4868038 (= e!3043322 (list!17488 (xs!17876 lt!1994085)))))

(declare-fun b!4868037 () Bool)

(assert (=> b!4868037 (= e!3043321 e!3043322)))

(declare-fun c!828016 () Bool)

(assert (=> b!4868037 (= c!828016 ((_ is Leaf!24296) lt!1994085))))

(assert (= (and d!1563032 c!828015) b!4868036))

(assert (= (and d!1563032 (not c!828015)) b!4868037))

(assert (= (and b!4868037 c!828016) b!4868038))

(assert (= (and b!4868037 (not c!828016)) b!4868039))

(declare-fun m!5867740 () Bool)

(assert (=> b!4868039 m!5867740))

(declare-fun m!5867742 () Bool)

(assert (=> b!4868039 m!5867742))

(assert (=> b!4868039 m!5867740))

(assert (=> b!4868039 m!5867742))

(declare-fun m!5867744 () Bool)

(assert (=> b!4868039 m!5867744))

(declare-fun m!5867746 () Bool)

(assert (=> b!4868038 m!5867746))

(assert (=> b!4866347 d!1563032))

(assert (=> b!4866347 d!1562904))

(declare-fun bs!1174425 () Bool)

(declare-fun b!4868040 () Bool)

(assert (= bs!1174425 (and b!4868040 b!4866446)))

(declare-fun lambda!243442 () Int)

(assert (=> bs!1174425 (= (and (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (= lambda!243442 lambda!243413))))

(declare-fun bs!1174426 () Bool)

(assert (= bs!1174426 (and b!4868040 d!1562162)))

(assert (=> bs!1174426 (= (and (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (= lambda!243442 lambda!243416))))

(declare-fun bs!1174427 () Bool)

(assert (= bs!1174427 (and b!4868040 b!4867636)))

(assert (=> bs!1174427 (= (and (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (= lambda!243442 lambda!243440))))

(declare-fun b!4868047 () Bool)

(declare-fun e!3043329 () Bool)

(assert (=> b!4868047 (= e!3043329 true)))

(declare-fun b!4868046 () Bool)

(declare-fun e!3043328 () Bool)

(assert (=> b!4868046 (= e!3043328 e!3043329)))

(assert (=> b!4868040 e!3043328))

(assert (= b!4868046 b!4868047))

(assert (= b!4868040 b!4868046))

(assert (=> b!4868047 (< (dynLambda!22447 order!25203 (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248))))) (dynLambda!22449 order!25207 lambda!243442))))

(assert (=> b!4868047 (< (dynLambda!22450 order!25209 (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248))))) (dynLambda!22449 order!25207 lambda!243442))))

(declare-fun e!3043323 () Option!13775)

(declare-fun lt!1994777 () tuple2!59778)

(assert (=> b!4868040 (= e!3043323 (Some!13774 (tuple2!59765 (Token!14645 (apply!13500 (transformation!8030 (h!62380 (t!363818 rules!1248))) (_1!33192 lt!1994777)) (h!62380 (t!363818 rules!1248)) (size!36855 (_1!33192 lt!1994777)) (list!17479 (_1!33192 lt!1994777))) (_2!33192 lt!1994777))))))

(declare-fun lt!1994774 () List!56055)

(assert (=> b!4868040 (= lt!1994774 (list!17479 input!661))))

(declare-fun lt!1994776 () Unit!145938)

(assert (=> b!4868040 (= lt!1994776 (longestMatchIsAcceptedByMatchOrIsEmpty!1682 (regex!8030 (h!62380 (t!363818 rules!1248))) lt!1994774))))

(declare-fun res!2078120 () Bool)

(assert (=> b!4868040 (= res!2078120 (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 (t!363818 rules!1248))) Nil!55931 (size!36861 Nil!55931) lt!1994774 lt!1994774 (size!36861 lt!1994774)))))))

(declare-fun e!3043326 () Bool)

(assert (=> b!4868040 (=> res!2078120 e!3043326)))

(assert (=> b!4868040 e!3043326))

(declare-fun lt!1994781 () Unit!145938)

(assert (=> b!4868040 (= lt!1994781 lt!1994776)))

(declare-fun lt!1994773 () Unit!145938)

(assert (=> b!4868040 (= lt!1994773 (lemmaInv!1202 (transformation!8030 (h!62380 (t!363818 rules!1248)))))))

(declare-fun lt!1994780 () Unit!145938)

(assert (=> b!4868040 (= lt!1994780 (ForallOf!1099 lambda!243442 (_1!33192 lt!1994777)))))

(declare-fun lt!1994778 () Unit!145938)

(assert (=> b!4868040 (= lt!1994778 (ForallOf!1099 lambda!243442 (seqFromList!5896 (list!17479 (_1!33192 lt!1994777)))))))

(declare-fun lt!1994775 () Option!13775)

(assert (=> b!4868040 (= lt!1994775 (Some!13774 (tuple2!59765 (Token!14645 (apply!13500 (transformation!8030 (h!62380 (t!363818 rules!1248))) (_1!33192 lt!1994777)) (h!62380 (t!363818 rules!1248)) (size!36855 (_1!33192 lt!1994777)) (list!17479 (_1!33192 lt!1994777))) (_2!33192 lt!1994777))))))

(declare-fun lt!1994782 () Unit!145938)

(assert (=> b!4868040 (= lt!1994782 (lemmaEqSameImage!1056 (transformation!8030 (h!62380 (t!363818 rules!1248))) (_1!33192 lt!1994777) (seqFromList!5896 (list!17479 (_1!33192 lt!1994777)))))))

(declare-fun d!1563034 () Bool)

(declare-fun e!3043324 () Bool)

(assert (=> d!1563034 e!3043324))

(declare-fun res!2078121 () Bool)

(assert (=> d!1563034 (=> (not res!2078121) (not e!3043324))))

(declare-fun lt!1994779 () Option!13775)

(assert (=> d!1563034 (= res!2078121 (= (isDefined!10844 lt!1994779) (isDefined!10845 (maxPrefixOneRule!3489 thiss!11777 (h!62380 (t!363818 rules!1248)) (list!17479 input!661)))))))

(assert (=> d!1563034 (= lt!1994779 e!3043323)))

(declare-fun c!828017 () Bool)

(assert (=> d!1563034 (= c!828017 (isEmpty!29929 (_1!33192 lt!1994777)))))

(assert (=> d!1563034 (= lt!1994777 (findLongestMatchWithZipperSequenceV2!132 (regex!8030 (h!62380 (t!363818 rules!1248))) input!661 totalInput!332))))

(assert (=> d!1563034 (ruleValid!3627 thiss!11777 (h!62380 (t!363818 rules!1248)))))

(assert (=> d!1563034 (= (maxPrefixOneRuleZipperSequenceV2!256 thiss!11777 (h!62380 (t!363818 rules!1248)) input!661 totalInput!332) lt!1994779)))

(declare-fun b!4868041 () Bool)

(assert (=> b!4868041 (= e!3043326 (matchR!6490 (regex!8030 (h!62380 (t!363818 rules!1248))) (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 (t!363818 rules!1248))) Nil!55931 (size!36861 Nil!55931) lt!1994774 lt!1994774 (size!36861 lt!1994774)))))))

(declare-fun b!4868042 () Bool)

(declare-fun e!3043325 () Bool)

(assert (=> b!4868042 (= e!3043324 e!3043325)))

(declare-fun res!2078119 () Bool)

(assert (=> b!4868042 (=> res!2078119 e!3043325)))

(assert (=> b!4868042 (= res!2078119 (not (isDefined!10844 lt!1994779)))))

(declare-fun e!3043327 () Bool)

(declare-fun b!4868043 () Bool)

(assert (=> b!4868043 (= e!3043327 (= (list!17479 (_2!33185 (get!19222 lt!1994779))) (_2!33189 (get!19223 (maxPrefixOneRule!3489 thiss!11777 (h!62380 (t!363818 rules!1248)) (list!17479 input!661))))))))

(declare-fun b!4868044 () Bool)

(assert (=> b!4868044 (= e!3043325 e!3043327)))

(declare-fun res!2078118 () Bool)

(assert (=> b!4868044 (=> (not res!2078118) (not e!3043327))))

(assert (=> b!4868044 (= res!2078118 (= (_1!33185 (get!19222 lt!1994779)) (_1!33189 (get!19223 (maxPrefixOneRule!3489 thiss!11777 (h!62380 (t!363818 rules!1248)) (list!17479 input!661))))))))

(declare-fun b!4868045 () Bool)

(assert (=> b!4868045 (= e!3043323 None!13774)))

(assert (= (and d!1563034 c!828017) b!4868045))

(assert (= (and d!1563034 (not c!828017)) b!4868040))

(assert (= (and b!4868040 (not res!2078120)) b!4868041))

(assert (= (and d!1563034 res!2078121) b!4868042))

(assert (= (and b!4868042 (not res!2078119)) b!4868044))

(assert (= (and b!4868044 res!2078118) b!4868043))

(declare-fun m!5867748 () Bool)

(assert (=> b!4868043 m!5867748))

(declare-fun m!5867750 () Bool)

(assert (=> b!4868043 m!5867750))

(assert (=> b!4868043 m!5867080))

(declare-fun m!5867752 () Bool)

(assert (=> b!4868043 m!5867752))

(assert (=> b!4868043 m!5863822))

(assert (=> b!4868043 m!5867080))

(assert (=> b!4868043 m!5863822))

(declare-fun m!5867754 () Bool)

(assert (=> b!4868040 m!5867754))

(assert (=> b!4868040 m!5863822))

(declare-fun m!5867756 () Bool)

(assert (=> b!4868040 m!5867756))

(assert (=> b!4868040 m!5865032))

(declare-fun m!5867758 () Bool)

(assert (=> b!4868040 m!5867758))

(declare-fun m!5867760 () Bool)

(assert (=> b!4868040 m!5867760))

(assert (=> b!4868040 m!5867756))

(declare-fun m!5867762 () Bool)

(assert (=> b!4868040 m!5867762))

(assert (=> b!4868040 m!5865032))

(declare-fun m!5867764 () Bool)

(assert (=> b!4868040 m!5867764))

(declare-fun m!5867766 () Bool)

(assert (=> b!4868040 m!5867766))

(assert (=> b!4868040 m!5867762))

(declare-fun m!5867768 () Bool)

(assert (=> b!4868040 m!5867768))

(declare-fun m!5867770 () Bool)

(assert (=> b!4868040 m!5867770))

(declare-fun m!5867772 () Bool)

(assert (=> b!4868040 m!5867772))

(assert (=> b!4868040 m!5867764))

(declare-fun m!5867774 () Bool)

(assert (=> b!4868040 m!5867774))

(assert (=> b!4868040 m!5867762))

(declare-fun m!5867776 () Bool)

(assert (=> b!4868040 m!5867776))

(declare-fun m!5867778 () Bool)

(assert (=> b!4868042 m!5867778))

(assert (=> b!4868041 m!5865032))

(assert (=> b!4868041 m!5867764))

(assert (=> b!4868041 m!5865032))

(assert (=> b!4868041 m!5867764))

(assert (=> b!4868041 m!5867766))

(declare-fun m!5867780 () Bool)

(assert (=> b!4868041 m!5867780))

(assert (=> b!4868044 m!5867750))

(assert (=> b!4868044 m!5863822))

(assert (=> b!4868044 m!5863822))

(assert (=> b!4868044 m!5867080))

(assert (=> b!4868044 m!5867080))

(assert (=> b!4868044 m!5867752))

(assert (=> d!1563034 m!5867778))

(declare-fun m!5867782 () Bool)

(assert (=> d!1563034 m!5867782))

(assert (=> d!1563034 m!5867474))

(declare-fun m!5867784 () Bool)

(assert (=> d!1563034 m!5867784))

(assert (=> d!1563034 m!5867080))

(declare-fun m!5867786 () Bool)

(assert (=> d!1563034 m!5867786))

(assert (=> d!1563034 m!5863822))

(assert (=> d!1563034 m!5867080))

(assert (=> d!1563034 m!5863822))

(assert (=> bm!337920 d!1563034))

(declare-fun d!1563036 () Bool)

(assert (=> d!1563036 (= (list!17486 (xs!17875 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))) (innerList!14657 (xs!17875 (c!827478 (charsOf!5335 (_1!33185 (v!49684 lt!1993717)))))))))

(assert (=> b!4866350 d!1563036))

(declare-fun d!1563038 () Bool)

(declare-fun lt!1994783 () Int)

(assert (=> d!1563038 (>= lt!1994783 0)))

(declare-fun e!3043330 () Int)

(assert (=> d!1563038 (= lt!1994783 e!3043330)))

(declare-fun c!828018 () Bool)

(assert (=> d!1563038 (= c!828018 ((_ is Nil!55931) lt!1993830))))

(assert (=> d!1563038 (= (size!36861 lt!1993830) lt!1994783)))

(declare-fun b!4868048 () Bool)

(assert (=> b!4868048 (= e!3043330 0)))

(declare-fun b!4868049 () Bool)

(assert (=> b!4868049 (= e!3043330 (+ 1 (size!36861 (t!363817 lt!1993830))))))

(assert (= (and d!1563038 c!828018) b!4868048))

(assert (= (and d!1563038 (not c!828018)) b!4868049))

(declare-fun m!5867788 () Bool)

(assert (=> b!4868049 m!5867788))

(assert (=> b!4866047 d!1563038))

(declare-fun d!1563040 () Bool)

(declare-fun lt!1994784 () Int)

(assert (=> d!1563040 (>= lt!1994784 0)))

(declare-fun e!3043331 () Int)

(assert (=> d!1563040 (= lt!1994784 e!3043331)))

(declare-fun c!828019 () Bool)

(assert (=> d!1563040 (= c!828019 ((_ is Nil!55931) lt!1993828))))

(assert (=> d!1563040 (= (size!36861 lt!1993828) lt!1994784)))

(declare-fun b!4868050 () Bool)

(assert (=> b!4868050 (= e!3043331 0)))

(declare-fun b!4868051 () Bool)

(assert (=> b!4868051 (= e!3043331 (+ 1 (size!36861 (t!363817 lt!1993828))))))

(assert (= (and d!1563040 c!828019) b!4868050))

(assert (= (and d!1563040 (not c!828019)) b!4868051))

(declare-fun m!5867790 () Bool)

(assert (=> b!4868051 m!5867790))

(assert (=> b!4866047 d!1563040))

(declare-fun d!1563042 () Bool)

(declare-fun lt!1994785 () Int)

(assert (=> d!1563042 (>= lt!1994785 0)))

(declare-fun e!3043332 () Int)

(assert (=> d!1563042 (= lt!1994785 e!3043332)))

(declare-fun c!828020 () Bool)

(assert (=> d!1563042 (= c!828020 ((_ is Nil!55931) (list!17479 (_2!33187 lt!1993769))))))

(assert (=> d!1563042 (= (size!36861 (list!17479 (_2!33187 lt!1993769))) lt!1994785)))

(declare-fun b!4868052 () Bool)

(assert (=> b!4868052 (= e!3043332 0)))

(declare-fun b!4868053 () Bool)

(assert (=> b!4868053 (= e!3043332 (+ 1 (size!36861 (t!363817 (list!17479 (_2!33187 lt!1993769))))))))

(assert (= (and d!1563042 c!828020) b!4868052))

(assert (= (and d!1563042 (not c!828020)) b!4868053))

(declare-fun m!5867792 () Bool)

(assert (=> b!4868053 m!5867792))

(assert (=> d!1562032 d!1563042))

(assert (=> d!1562032 d!1562138))

(declare-fun d!1563044 () Bool)

(declare-fun lt!1994786 () Int)

(assert (=> d!1563044 (= lt!1994786 (size!36861 (list!17483 (c!827478 (_2!33187 lt!1993769)))))))

(assert (=> d!1563044 (= lt!1994786 (ite ((_ is Empty!14569) (c!827478 (_2!33187 lt!1993769))) 0 (ite ((_ is Leaf!24295) (c!827478 (_2!33187 lt!1993769))) (csize!29369 (c!827478 (_2!33187 lt!1993769))) (csize!29368 (c!827478 (_2!33187 lt!1993769))))))))

(assert (=> d!1563044 (= (size!36864 (c!827478 (_2!33187 lt!1993769))) lt!1994786)))

(declare-fun bs!1174428 () Bool)

(assert (= bs!1174428 d!1563044))

(assert (=> bs!1174428 m!5865070))

(assert (=> bs!1174428 m!5865070))

(declare-fun m!5867794 () Bool)

(assert (=> bs!1174428 m!5867794))

(assert (=> d!1562032 d!1563044))

(assert (=> b!4866092 d!1563026))

(assert (=> b!4866092 d!1562924))

(assert (=> b!4866092 d!1562900))

(assert (=> b!4866092 d!1561850))

(assert (=> b!4866092 d!1562832))

(declare-fun d!1563046 () Bool)

(declare-fun c!828021 () Bool)

(assert (=> d!1563046 (= c!828021 ((_ is Node!14569) (left!40624 (right!40954 (c!827478 input!661)))))))

(declare-fun e!3043333 () Bool)

(assert (=> d!1563046 (= (inv!71837 (left!40624 (right!40954 (c!827478 input!661)))) e!3043333)))

(declare-fun b!4868054 () Bool)

(assert (=> b!4868054 (= e!3043333 (inv!71843 (left!40624 (right!40954 (c!827478 input!661)))))))

(declare-fun b!4868055 () Bool)

(declare-fun e!3043334 () Bool)

(assert (=> b!4868055 (= e!3043333 e!3043334)))

(declare-fun res!2078122 () Bool)

(assert (=> b!4868055 (= res!2078122 (not ((_ is Leaf!24295) (left!40624 (right!40954 (c!827478 input!661))))))))

(assert (=> b!4868055 (=> res!2078122 e!3043334)))

(declare-fun b!4868056 () Bool)

(assert (=> b!4868056 (= e!3043334 (inv!71844 (left!40624 (right!40954 (c!827478 input!661)))))))

(assert (= (and d!1563046 c!828021) b!4868054))

(assert (= (and d!1563046 (not c!828021)) b!4868055))

(assert (= (and b!4868055 (not res!2078122)) b!4868056))

(declare-fun m!5867796 () Bool)

(assert (=> b!4868054 m!5867796))

(declare-fun m!5867798 () Bool)

(assert (=> b!4868056 m!5867798))

(assert (=> b!4866516 d!1563046))

(declare-fun d!1563048 () Bool)

(declare-fun c!828022 () Bool)

(assert (=> d!1563048 (= c!828022 ((_ is Node!14569) (right!40954 (right!40954 (c!827478 input!661)))))))

(declare-fun e!3043335 () Bool)

(assert (=> d!1563048 (= (inv!71837 (right!40954 (right!40954 (c!827478 input!661)))) e!3043335)))

(declare-fun b!4868057 () Bool)

(assert (=> b!4868057 (= e!3043335 (inv!71843 (right!40954 (right!40954 (c!827478 input!661)))))))

(declare-fun b!4868058 () Bool)

(declare-fun e!3043336 () Bool)

(assert (=> b!4868058 (= e!3043335 e!3043336)))

(declare-fun res!2078123 () Bool)

(assert (=> b!4868058 (= res!2078123 (not ((_ is Leaf!24295) (right!40954 (right!40954 (c!827478 input!661))))))))

(assert (=> b!4868058 (=> res!2078123 e!3043336)))

(declare-fun b!4868059 () Bool)

(assert (=> b!4868059 (= e!3043336 (inv!71844 (right!40954 (right!40954 (c!827478 input!661)))))))

(assert (= (and d!1563048 c!828022) b!4868057))

(assert (= (and d!1563048 (not c!828022)) b!4868058))

(assert (= (and b!4868058 (not res!2078123)) b!4868059))

(declare-fun m!5867800 () Bool)

(assert (=> b!4868057 m!5867800))

(declare-fun m!5867802 () Bool)

(assert (=> b!4868059 m!5867802))

(assert (=> b!4866516 d!1563048))

(declare-fun d!1563050 () Bool)

(assert (=> d!1563050 (= (list!17479 (_2!33185 (get!19222 lt!1994078))) (list!17483 (c!827478 (_2!33185 (get!19222 lt!1994078)))))))

(declare-fun bs!1174429 () Bool)

(assert (= bs!1174429 d!1563050))

(declare-fun m!5867804 () Bool)

(assert (=> bs!1174429 m!5867804))

(assert (=> b!4866321 d!1563050))

(declare-fun lt!1994790 () Option!13777)

(declare-fun d!1563052 () Bool)

(assert (=> d!1563052 (= lt!1994790 (maxPrefix!4547 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun e!3043337 () Option!13777)

(assert (=> d!1563052 (= lt!1994790 e!3043337)))

(declare-fun c!828023 () Bool)

(assert (=> d!1563052 (= c!828023 (and ((_ is Cons!55932) rules!1248) ((_ is Nil!55932) (t!363818 rules!1248))))))

(declare-fun lt!1994789 () Unit!145938)

(declare-fun lt!1994788 () Unit!145938)

(assert (=> d!1563052 (= lt!1994789 lt!1994788)))

(assert (=> d!1563052 (isPrefix!4764 (list!17479 (_2!33185 (v!49684 lt!1993717))) (list!17479 (_2!33185 (v!49684 lt!1993717))))))

(assert (=> d!1563052 (= lt!1994788 (lemmaIsPrefixRefl!3161 (list!17479 (_2!33185 (v!49684 lt!1993717))) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(assert (=> d!1563052 (rulesValidInductive!3019 thiss!11777 rules!1248)))

(assert (=> d!1563052 (= (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717)))) lt!1994790)))

(declare-fun call!338110 () Option!13777)

(declare-fun bm!338105 () Bool)

(assert (=> bm!338105 (= call!338110 (maxPrefixOneRuleZipper!222 thiss!11777 (h!62380 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(declare-fun b!4868060 () Bool)

(assert (=> b!4868060 (= e!3043337 call!338110)))

(declare-fun b!4868061 () Bool)

(declare-fun lt!1994791 () Option!13777)

(declare-fun lt!1994787 () Option!13777)

(assert (=> b!4868061 (= e!3043337 (ite (and ((_ is None!13776) lt!1994791) ((_ is None!13776) lt!1994787)) None!13776 (ite ((_ is None!13776) lt!1994787) lt!1994791 (ite ((_ is None!13776) lt!1994791) lt!1994787 (ite (>= (size!36854 (_1!33189 (v!49688 lt!1994791))) (size!36854 (_1!33189 (v!49688 lt!1994787)))) lt!1994791 lt!1994787)))))))

(assert (=> b!4868061 (= lt!1994791 call!338110)))

(assert (=> b!4868061 (= lt!1994787 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 (_2!33185 (v!49684 lt!1993717)))))))

(assert (= (and d!1563052 c!828023) b!4868060))

(assert (= (and d!1563052 (not c!828023)) b!4868061))

(assert (= (or b!4868060 b!4868061) bm!338105))

(assert (=> d!1563052 m!5863836))

(assert (=> d!1563052 m!5864560))

(assert (=> d!1563052 m!5863836))

(assert (=> d!1563052 m!5863836))

(assert (=> d!1563052 m!5867664))

(assert (=> d!1563052 m!5863836))

(assert (=> d!1563052 m!5863836))

(assert (=> d!1563052 m!5867666))

(assert (=> d!1563052 m!5864116))

(assert (=> bm!338105 m!5863836))

(declare-fun m!5867806 () Bool)

(assert (=> bm!338105 m!5867806))

(assert (=> b!4868061 m!5863836))

(assert (=> b!4868061 m!5866592))

(assert (=> b!4866321 d!1563052))

(assert (=> b!4866321 d!1561818))

(assert (=> b!4866321 d!1562994))

(declare-fun d!1563054 () Bool)

(assert (=> d!1563054 (= (get!19223 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717))))) (v!49688 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))

(assert (=> b!4866321 d!1563054))

(declare-fun bs!1174430 () Bool)

(declare-fun d!1563056 () Bool)

(assert (= bs!1174430 (and d!1563056 b!4866446)))

(declare-fun lambda!243443 () Int)

(assert (=> bs!1174430 (= (and (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (= lambda!243443 lambda!243413))))

(declare-fun bs!1174431 () Bool)

(assert (= bs!1174431 (and d!1563056 d!1562162)))

(assert (=> bs!1174431 (= (and (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (= lambda!243443 lambda!243416))))

(declare-fun bs!1174432 () Bool)

(assert (= bs!1174432 (and d!1563056 b!4867636)))

(assert (=> bs!1174432 (= (and (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (= lambda!243443 lambda!243440))))

(declare-fun bs!1174433 () Bool)

(assert (= bs!1174433 (and d!1563056 b!4868040)))

(assert (=> bs!1174433 (= lambda!243443 lambda!243442)))

(assert (=> d!1563056 true))

(assert (=> d!1563056 (< (dynLambda!22450 order!25209 (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248))))) (dynLambda!22449 order!25207 lambda!243443))))

(assert (=> d!1563056 true))

(assert (=> d!1563056 (< (dynLambda!22447 order!25203 (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248))))) (dynLambda!22449 order!25207 lambda!243443))))

(assert (=> d!1563056 (= (semiInverseModEq!3544 (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248))))) (Forall!1673 lambda!243443))))

(declare-fun bs!1174434 () Bool)

(assert (= bs!1174434 d!1563056))

(declare-fun m!5867808 () Bool)

(assert (=> bs!1174434 m!5867808))

(assert (=> d!1562086 d!1563056))

(declare-fun d!1563058 () Bool)

(declare-fun c!828024 () Bool)

(assert (=> d!1563058 (= c!828024 ((_ is Node!14569) (left!40624 (left!40624 (c!827478 totalInput!332)))))))

(declare-fun e!3043338 () Bool)

(assert (=> d!1563058 (= (inv!71837 (left!40624 (left!40624 (c!827478 totalInput!332)))) e!3043338)))

(declare-fun b!4868062 () Bool)

(assert (=> b!4868062 (= e!3043338 (inv!71843 (left!40624 (left!40624 (c!827478 totalInput!332)))))))

(declare-fun b!4868063 () Bool)

(declare-fun e!3043339 () Bool)

(assert (=> b!4868063 (= e!3043338 e!3043339)))

(declare-fun res!2078124 () Bool)

(assert (=> b!4868063 (= res!2078124 (not ((_ is Leaf!24295) (left!40624 (left!40624 (c!827478 totalInput!332))))))))

(assert (=> b!4868063 (=> res!2078124 e!3043339)))

(declare-fun b!4868064 () Bool)

(assert (=> b!4868064 (= e!3043339 (inv!71844 (left!40624 (left!40624 (c!827478 totalInput!332)))))))

(assert (= (and d!1563058 c!828024) b!4868062))

(assert (= (and d!1563058 (not c!828024)) b!4868063))

(assert (= (and b!4868063 (not res!2078124)) b!4868064))

(declare-fun m!5867810 () Bool)

(assert (=> b!4868062 m!5867810))

(declare-fun m!5867812 () Bool)

(assert (=> b!4868064 m!5867812))

(assert (=> b!4866507 d!1563058))

(declare-fun d!1563060 () Bool)

(declare-fun c!828025 () Bool)

(assert (=> d!1563060 (= c!828025 ((_ is Node!14569) (right!40954 (left!40624 (c!827478 totalInput!332)))))))

(declare-fun e!3043340 () Bool)

(assert (=> d!1563060 (= (inv!71837 (right!40954 (left!40624 (c!827478 totalInput!332)))) e!3043340)))

(declare-fun b!4868065 () Bool)

(assert (=> b!4868065 (= e!3043340 (inv!71843 (right!40954 (left!40624 (c!827478 totalInput!332)))))))

(declare-fun b!4868066 () Bool)

(declare-fun e!3043341 () Bool)

(assert (=> b!4868066 (= e!3043340 e!3043341)))

(declare-fun res!2078125 () Bool)

(assert (=> b!4868066 (= res!2078125 (not ((_ is Leaf!24295) (right!40954 (left!40624 (c!827478 totalInput!332))))))))

(assert (=> b!4868066 (=> res!2078125 e!3043341)))

(declare-fun b!4868067 () Bool)

(assert (=> b!4868067 (= e!3043341 (inv!71844 (right!40954 (left!40624 (c!827478 totalInput!332)))))))

(assert (= (and d!1563060 c!828025) b!4868065))

(assert (= (and d!1563060 (not c!828025)) b!4868066))

(assert (= (and b!4868066 (not res!2078125)) b!4868067))

(declare-fun m!5867814 () Bool)

(assert (=> b!4868065 m!5867814))

(declare-fun m!5867816 () Bool)

(assert (=> b!4868067 m!5867816))

(assert (=> b!4866507 d!1563060))

(declare-fun b!4868069 () Bool)

(declare-fun e!3043342 () List!56055)

(declare-fun e!3043343 () List!56055)

(assert (=> b!4868069 (= e!3043342 e!3043343)))

(declare-fun c!828027 () Bool)

(assert (=> b!4868069 (= c!828027 ((_ is Leaf!24295) (c!827478 lt!1993721)))))

(declare-fun b!4868071 () Bool)

(assert (=> b!4868071 (= e!3043343 (++!12179 (list!17483 (left!40624 (c!827478 lt!1993721))) (list!17483 (right!40954 (c!827478 lt!1993721)))))))

(declare-fun b!4868068 () Bool)

(assert (=> b!4868068 (= e!3043342 Nil!55931)))

(declare-fun d!1563062 () Bool)

(declare-fun c!828026 () Bool)

(assert (=> d!1563062 (= c!828026 ((_ is Empty!14569) (c!827478 lt!1993721)))))

(assert (=> d!1563062 (= (list!17483 (c!827478 lt!1993721)) e!3043342)))

(declare-fun b!4868070 () Bool)

(assert (=> b!4868070 (= e!3043343 (list!17486 (xs!17875 (c!827478 lt!1993721))))))

(assert (= (and d!1563062 c!828026) b!4868068))

(assert (= (and d!1563062 (not c!828026)) b!4868069))

(assert (= (and b!4868069 c!828027) b!4868070))

(assert (= (and b!4868069 (not c!828027)) b!4868071))

(declare-fun m!5867818 () Bool)

(assert (=> b!4868071 m!5867818))

(declare-fun m!5867820 () Bool)

(assert (=> b!4868071 m!5867820))

(assert (=> b!4868071 m!5867818))

(assert (=> b!4868071 m!5867820))

(declare-fun m!5867822 () Bool)

(assert (=> b!4868071 m!5867822))

(declare-fun m!5867824 () Bool)

(assert (=> b!4868070 m!5867824))

(assert (=> d!1562142 d!1563062))

(declare-fun d!1563064 () Bool)

(declare-fun lt!1994792 () Int)

(assert (=> d!1563064 (>= lt!1994792 0)))

(declare-fun e!3043344 () Int)

(assert (=> d!1563064 (= lt!1994792 e!3043344)))

(declare-fun c!828028 () Bool)

(assert (=> d!1563064 (= c!828028 ((_ is Nil!55931) (t!363817 (list!17479 input!661))))))

(assert (=> d!1563064 (= (size!36861 (t!363817 (list!17479 input!661))) lt!1994792)))

(declare-fun b!4868072 () Bool)

(assert (=> b!4868072 (= e!3043344 0)))

(declare-fun b!4868073 () Bool)

(assert (=> b!4868073 (= e!3043344 (+ 1 (size!36861 (t!363817 (t!363817 (list!17479 input!661))))))))

(assert (= (and d!1563064 c!828028) b!4868072))

(assert (= (and d!1563064 (not c!828028)) b!4868073))

(declare-fun m!5867826 () Bool)

(assert (=> b!4868073 m!5867826))

(assert (=> b!4866421 d!1563064))

(declare-fun b!4868076 () Bool)

(declare-fun res!2078126 () Bool)

(declare-fun e!3043345 () Bool)

(assert (=> b!4868076 (=> (not res!2078126) (not e!3043345))))

(declare-fun lt!1994793 () List!56055)

(assert (=> b!4868076 (= res!2078126 (= (size!36861 lt!1994793) (+ (size!36861 (list!17483 (left!40624 (c!827478 input!661)))) (size!36861 (list!17483 (right!40954 (c!827478 input!661)))))))))

(declare-fun b!4868074 () Bool)

(declare-fun e!3043346 () List!56055)

(assert (=> b!4868074 (= e!3043346 (list!17483 (right!40954 (c!827478 input!661))))))

(declare-fun d!1563066 () Bool)

(assert (=> d!1563066 e!3043345))

(declare-fun res!2078127 () Bool)

(assert (=> d!1563066 (=> (not res!2078127) (not e!3043345))))

(assert (=> d!1563066 (= res!2078127 (= (content!9968 lt!1994793) ((_ map or) (content!9968 (list!17483 (left!40624 (c!827478 input!661)))) (content!9968 (list!17483 (right!40954 (c!827478 input!661)))))))))

(assert (=> d!1563066 (= lt!1994793 e!3043346)))

(declare-fun c!828029 () Bool)

(assert (=> d!1563066 (= c!828029 ((_ is Nil!55931) (list!17483 (left!40624 (c!827478 input!661)))))))

(assert (=> d!1563066 (= (++!12179 (list!17483 (left!40624 (c!827478 input!661))) (list!17483 (right!40954 (c!827478 input!661)))) lt!1994793)))

(declare-fun b!4868077 () Bool)

(assert (=> b!4868077 (= e!3043345 (or (not (= (list!17483 (right!40954 (c!827478 input!661))) Nil!55931)) (= lt!1994793 (list!17483 (left!40624 (c!827478 input!661))))))))

(declare-fun b!4868075 () Bool)

(assert (=> b!4868075 (= e!3043346 (Cons!55931 (h!62379 (list!17483 (left!40624 (c!827478 input!661)))) (++!12179 (t!363817 (list!17483 (left!40624 (c!827478 input!661)))) (list!17483 (right!40954 (c!827478 input!661))))))))

(assert (= (and d!1563066 c!828029) b!4868074))

(assert (= (and d!1563066 (not c!828029)) b!4868075))

(assert (= (and d!1563066 res!2078127) b!4868076))

(assert (= (and b!4868076 res!2078126) b!4868077))

(declare-fun m!5867828 () Bool)

(assert (=> b!4868076 m!5867828))

(assert (=> b!4868076 m!5864856))

(declare-fun m!5867830 () Bool)

(assert (=> b!4868076 m!5867830))

(assert (=> b!4868076 m!5864858))

(declare-fun m!5867832 () Bool)

(assert (=> b!4868076 m!5867832))

(declare-fun m!5867834 () Bool)

(assert (=> d!1563066 m!5867834))

(assert (=> d!1563066 m!5864856))

(declare-fun m!5867836 () Bool)

(assert (=> d!1563066 m!5867836))

(assert (=> d!1563066 m!5864858))

(declare-fun m!5867838 () Bool)

(assert (=> d!1563066 m!5867838))

(assert (=> b!4868075 m!5864858))

(declare-fun m!5867840 () Bool)

(assert (=> b!4868075 m!5867840))

(assert (=> b!4866325 d!1563066))

(declare-fun b!4868079 () Bool)

(declare-fun e!3043347 () List!56055)

(declare-fun e!3043348 () List!56055)

(assert (=> b!4868079 (= e!3043347 e!3043348)))

(declare-fun c!828031 () Bool)

(assert (=> b!4868079 (= c!828031 ((_ is Leaf!24295) (left!40624 (c!827478 input!661))))))

(declare-fun b!4868081 () Bool)

(assert (=> b!4868081 (= e!3043348 (++!12179 (list!17483 (left!40624 (left!40624 (c!827478 input!661)))) (list!17483 (right!40954 (left!40624 (c!827478 input!661))))))))

(declare-fun b!4868078 () Bool)

(assert (=> b!4868078 (= e!3043347 Nil!55931)))

(declare-fun d!1563068 () Bool)

(declare-fun c!828030 () Bool)

(assert (=> d!1563068 (= c!828030 ((_ is Empty!14569) (left!40624 (c!827478 input!661))))))

(assert (=> d!1563068 (= (list!17483 (left!40624 (c!827478 input!661))) e!3043347)))

(declare-fun b!4868080 () Bool)

(assert (=> b!4868080 (= e!3043348 (list!17486 (xs!17875 (left!40624 (c!827478 input!661)))))))

(assert (= (and d!1563068 c!828030) b!4868078))

(assert (= (and d!1563068 (not c!828030)) b!4868079))

(assert (= (and b!4868079 c!828031) b!4868080))

(assert (= (and b!4868079 (not c!828031)) b!4868081))

(declare-fun m!5867842 () Bool)

(assert (=> b!4868081 m!5867842))

(declare-fun m!5867844 () Bool)

(assert (=> b!4868081 m!5867844))

(assert (=> b!4868081 m!5867842))

(assert (=> b!4868081 m!5867844))

(declare-fun m!5867846 () Bool)

(assert (=> b!4868081 m!5867846))

(assert (=> b!4868080 m!5867238))

(assert (=> b!4866325 d!1563068))

(declare-fun b!4868083 () Bool)

(declare-fun e!3043349 () List!56055)

(declare-fun e!3043350 () List!56055)

(assert (=> b!4868083 (= e!3043349 e!3043350)))

(declare-fun c!828033 () Bool)

(assert (=> b!4868083 (= c!828033 ((_ is Leaf!24295) (right!40954 (c!827478 input!661))))))

(declare-fun b!4868085 () Bool)

(assert (=> b!4868085 (= e!3043350 (++!12179 (list!17483 (left!40624 (right!40954 (c!827478 input!661)))) (list!17483 (right!40954 (right!40954 (c!827478 input!661))))))))

(declare-fun b!4868082 () Bool)

(assert (=> b!4868082 (= e!3043349 Nil!55931)))

(declare-fun d!1563070 () Bool)

(declare-fun c!828032 () Bool)

(assert (=> d!1563070 (= c!828032 ((_ is Empty!14569) (right!40954 (c!827478 input!661))))))

(assert (=> d!1563070 (= (list!17483 (right!40954 (c!827478 input!661))) e!3043349)))

(declare-fun b!4868084 () Bool)

(assert (=> b!4868084 (= e!3043350 (list!17486 (xs!17875 (right!40954 (c!827478 input!661)))))))

(assert (= (and d!1563070 c!828032) b!4868082))

(assert (= (and d!1563070 (not c!828032)) b!4868083))

(assert (= (and b!4868083 c!828033) b!4868084))

(assert (= (and b!4868083 (not c!828033)) b!4868085))

(declare-fun m!5867848 () Bool)

(assert (=> b!4868085 m!5867848))

(declare-fun m!5867850 () Bool)

(assert (=> b!4868085 m!5867850))

(assert (=> b!4868085 m!5867848))

(assert (=> b!4868085 m!5867850))

(declare-fun m!5867852 () Bool)

(assert (=> b!4868085 m!5867852))

(assert (=> b!4868084 m!5866804))

(assert (=> b!4866325 d!1563070))

(declare-fun d!1563072 () Bool)

(assert (=> d!1563072 (= (isDefined!10845 lt!1994018) (not (isEmpty!29923 lt!1994018)))))

(declare-fun bs!1174435 () Bool)

(assert (= bs!1174435 d!1563072))

(assert (=> bs!1174435 m!5864694))

(assert (=> b!4866179 d!1563072))

(declare-fun d!1563074 () Bool)

(declare-fun lt!1994794 () Int)

(assert (=> d!1563074 (>= lt!1994794 0)))

(declare-fun e!3043351 () Int)

(assert (=> d!1563074 (= lt!1994794 e!3043351)))

(declare-fun c!828034 () Bool)

(assert (=> d!1563074 (= c!828034 ((_ is Nil!55931) (t!363817 (list!17479 (_2!33187 lt!1993718)))))))

(assert (=> d!1563074 (= (size!36861 (t!363817 (list!17479 (_2!33187 lt!1993718)))) lt!1994794)))

(declare-fun b!4868086 () Bool)

(assert (=> b!4868086 (= e!3043351 0)))

(declare-fun b!4868087 () Bool)

(assert (=> b!4868087 (= e!3043351 (+ 1 (size!36861 (t!363817 (t!363817 (list!17479 (_2!33187 lt!1993718)))))))))

(assert (= (and d!1563074 c!828034) b!4868086))

(assert (= (and d!1563074 (not c!828034)) b!4868087))

(declare-fun m!5867854 () Bool)

(assert (=> b!4868087 m!5867854))

(assert (=> b!4866134 d!1563074))

(assert (=> b!4866032 d!1563012))

(declare-fun b!4868088 () Bool)

(declare-fun e!3043353 () Bool)

(assert (=> b!4868088 (= e!3043353 (not (isEmpty!29927 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))))))

(declare-fun b!4868089 () Bool)

(declare-fun res!2078133 () Bool)

(assert (=> b!4868089 (=> (not res!2078133) (not e!3043353))))

(assert (=> b!4868089 (= res!2078133 (isBalanced!3954 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4868090 () Bool)

(declare-fun res!2078131 () Bool)

(assert (=> b!4868090 (=> (not res!2078131) (not e!3043353))))

(assert (=> b!4868090 (= res!2078131 (isBalanced!3954 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(declare-fun b!4868091 () Bool)

(declare-fun res!2078130 () Bool)

(assert (=> b!4868091 (=> (not res!2078130) (not e!3043353))))

(assert (=> b!4868091 (= res!2078130 (not (isEmpty!29927 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))))))

(declare-fun d!1563076 () Bool)

(declare-fun res!2078128 () Bool)

(declare-fun e!3043352 () Bool)

(assert (=> d!1563076 (=> res!2078128 e!3043352)))

(assert (=> d!1563076 (= res!2078128 (not ((_ is Node!14569) (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))

(assert (=> d!1563076 (= (isBalanced!3954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))) e!3043352)))

(declare-fun b!4868092 () Bool)

(assert (=> b!4868092 (= e!3043352 e!3043353)))

(declare-fun res!2078129 () Bool)

(assert (=> b!4868092 (=> (not res!2078129) (not e!3043353))))

(assert (=> b!4868092 (= res!2078129 (<= (- 1) (- (height!1925 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) (height!1925 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))))))

(declare-fun b!4868093 () Bool)

(declare-fun res!2078132 () Bool)

(assert (=> b!4868093 (=> (not res!2078132) (not e!3043353))))

(assert (=> b!4868093 (= res!2078132 (<= (- (height!1925 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) (height!1925 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) 1))))

(assert (= (and d!1563076 (not res!2078128)) b!4868092))

(assert (= (and b!4868092 res!2078129) b!4868093))

(assert (= (and b!4868093 res!2078132) b!4868090))

(assert (= (and b!4868090 res!2078131) b!4868089))

(assert (= (and b!4868089 res!2078133) b!4868091))

(assert (= (and b!4868091 res!2078130) b!4868088))

(assert (=> b!4868092 m!5867328))

(assert (=> b!4868092 m!5867330))

(declare-fun m!5867856 () Bool)

(assert (=> b!4868090 m!5867856))

(declare-fun m!5867858 () Bool)

(assert (=> b!4868091 m!5867858))

(declare-fun m!5867860 () Bool)

(assert (=> b!4868089 m!5867860))

(assert (=> b!4868093 m!5867328))

(assert (=> b!4868093 m!5867330))

(declare-fun m!5867862 () Bool)

(assert (=> b!4868088 m!5867862))

(assert (=> d!1562146 d!1563076))

(declare-fun d!1563078 () Bool)

(declare-fun lt!1994795 () Int)

(assert (=> d!1563078 (>= lt!1994795 0)))

(declare-fun e!3043354 () Int)

(assert (=> d!1563078 (= lt!1994795 e!3043354)))

(declare-fun c!828035 () Bool)

(assert (=> d!1563078 (= c!828035 ((_ is Nil!55931) (_2!33186 lt!1993958)))))

(assert (=> d!1563078 (= (size!36861 (_2!33186 lt!1993958)) lt!1994795)))

(declare-fun b!4868094 () Bool)

(assert (=> b!4868094 (= e!3043354 0)))

(declare-fun b!4868095 () Bool)

(assert (=> b!4868095 (= e!3043354 (+ 1 (size!36861 (t!363817 (_2!33186 lt!1993958)))))))

(assert (= (and d!1563078 c!828035) b!4868094))

(assert (= (and d!1563078 (not c!828035)) b!4868095))

(declare-fun m!5867864 () Bool)

(assert (=> b!4868095 m!5867864))

(assert (=> b!4866071 d!1563078))

(assert (=> b!4866071 d!1562128))

(declare-fun d!1563080 () Bool)

(declare-fun lt!1994796 () Bool)

(assert (=> d!1563080 (= lt!1994796 (isEmpty!29918 (list!17484 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717)))))))))

(assert (=> d!1563080 (= lt!1994796 (= (size!36863 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) 0))))

(assert (=> d!1563080 (= (isEmpty!29919 (right!40955 (prepend!1394 (c!827480 (_1!33187 lt!1993718)) (_1!33185 (v!49684 lt!1993717))))) lt!1994796)))

(declare-fun bs!1174436 () Bool)

(assert (= bs!1174436 d!1563080))

(declare-fun m!5867866 () Bool)

(assert (=> bs!1174436 m!5867866))

(assert (=> bs!1174436 m!5867866))

(declare-fun m!5867868 () Bool)

(assert (=> bs!1174436 m!5867868))

(declare-fun m!5867870 () Bool)

(assert (=> bs!1174436 m!5867870))

(assert (=> b!4866340 d!1563080))

(declare-fun d!1563082 () Bool)

(declare-fun lt!1994797 () Bool)

(assert (=> d!1563082 (= lt!1994797 (isEmpty!29928 (list!17483 (right!40954 (c!827478 totalInput!332)))))))

(assert (=> d!1563082 (= lt!1994797 (= (size!36864 (right!40954 (c!827478 totalInput!332))) 0))))

(assert (=> d!1563082 (= (isEmpty!29927 (right!40954 (c!827478 totalInput!332))) lt!1994797)))

(declare-fun bs!1174437 () Bool)

(assert (= bs!1174437 d!1563082))

(assert (=> bs!1174437 m!5865066))

(assert (=> bs!1174437 m!5865066))

(declare-fun m!5867872 () Bool)

(assert (=> bs!1174437 m!5867872))

(assert (=> bs!1174437 m!5865006))

(assert (=> b!4866396 d!1563082))

(declare-fun d!1563084 () Bool)

(declare-fun lt!1994798 () Int)

(assert (=> d!1563084 (>= lt!1994798 0)))

(declare-fun e!3043355 () Int)

(assert (=> d!1563084 (= lt!1994798 e!3043355)))

(declare-fun c!828036 () Bool)

(assert (=> d!1563084 (= c!828036 ((_ is Nil!55931) (list!17483 (c!827478 (_2!33187 lt!1993718)))))))

(assert (=> d!1563084 (= (size!36861 (list!17483 (c!827478 (_2!33187 lt!1993718)))) lt!1994798)))

(declare-fun b!4868096 () Bool)

(assert (=> b!4868096 (= e!3043355 0)))

(declare-fun b!4868097 () Bool)

(assert (=> b!4868097 (= e!3043355 (+ 1 (size!36861 (t!363817 (list!17483 (c!827478 (_2!33187 lt!1993718)))))))))

(assert (= (and d!1563084 c!828036) b!4868096))

(assert (= (and d!1563084 (not c!828036)) b!4868097))

(declare-fun m!5867874 () Bool)

(assert (=> b!4868097 m!5867874))

(assert (=> d!1562024 d!1563084))

(assert (=> d!1562024 d!1562012))

(declare-fun b!4868099 () Bool)

(declare-fun e!3043356 () List!56055)

(declare-fun e!3043357 () List!56055)

(assert (=> b!4868099 (= e!3043356 e!3043357)))

(declare-fun c!828038 () Bool)

(assert (=> b!4868099 (= c!828038 ((_ is Leaf!24295) (c!827478 (_2!33185 (get!19222 lt!1993832)))))))

(declare-fun b!4868101 () Bool)

(assert (=> b!4868101 (= e!3043357 (++!12179 (list!17483 (left!40624 (c!827478 (_2!33185 (get!19222 lt!1993832))))) (list!17483 (right!40954 (c!827478 (_2!33185 (get!19222 lt!1993832)))))))))

(declare-fun b!4868098 () Bool)

(assert (=> b!4868098 (= e!3043356 Nil!55931)))

(declare-fun d!1563086 () Bool)

(declare-fun c!828037 () Bool)

(assert (=> d!1563086 (= c!828037 ((_ is Empty!14569) (c!827478 (_2!33185 (get!19222 lt!1993832)))))))

(assert (=> d!1563086 (= (list!17483 (c!827478 (_2!33185 (get!19222 lt!1993832)))) e!3043356)))

(declare-fun b!4868100 () Bool)

(assert (=> b!4868100 (= e!3043357 (list!17486 (xs!17875 (c!827478 (_2!33185 (get!19222 lt!1993832))))))))

(assert (= (and d!1563086 c!828037) b!4868098))

(assert (= (and d!1563086 (not c!828037)) b!4868099))

(assert (= (and b!4868099 c!828038) b!4868100))

(assert (= (and b!4868099 (not c!828038)) b!4868101))

(declare-fun m!5867876 () Bool)

(assert (=> b!4868101 m!5867876))

(declare-fun m!5867878 () Bool)

(assert (=> b!4868101 m!5867878))

(assert (=> b!4868101 m!5867876))

(assert (=> b!4868101 m!5867878))

(declare-fun m!5867880 () Bool)

(assert (=> b!4868101 m!5867880))

(declare-fun m!5867882 () Bool)

(assert (=> b!4868100 m!5867882))

(assert (=> d!1562028 d!1563086))

(declare-fun d!1563088 () Bool)

(declare-fun res!2078134 () Bool)

(declare-fun e!3043358 () Bool)

(assert (=> d!1563088 (=> (not res!2078134) (not e!3043358))))

(assert (=> d!1563088 (= res!2078134 (<= (size!36861 (list!17486 (xs!17875 (right!40954 (c!827478 totalInput!332))))) 512))))

(assert (=> d!1563088 (= (inv!71844 (right!40954 (c!827478 totalInput!332))) e!3043358)))

(declare-fun b!4868102 () Bool)

(declare-fun res!2078135 () Bool)

(assert (=> b!4868102 (=> (not res!2078135) (not e!3043358))))

(assert (=> b!4868102 (= res!2078135 (= (csize!29369 (right!40954 (c!827478 totalInput!332))) (size!36861 (list!17486 (xs!17875 (right!40954 (c!827478 totalInput!332)))))))))

(declare-fun b!4868103 () Bool)

(assert (=> b!4868103 (= e!3043358 (and (> (csize!29369 (right!40954 (c!827478 totalInput!332))) 0) (<= (csize!29369 (right!40954 (c!827478 totalInput!332))) 512)))))

(assert (= (and d!1563088 res!2078134) b!4868102))

(assert (= (and b!4868102 res!2078135) b!4868103))

(assert (=> d!1563088 m!5866836))

(assert (=> d!1563088 m!5866836))

(declare-fun m!5867884 () Bool)

(assert (=> d!1563088 m!5867884))

(assert (=> b!4868102 m!5866836))

(assert (=> b!4868102 m!5866836))

(assert (=> b!4868102 m!5867884))

(assert (=> b!4866483 d!1563088))

(declare-fun d!1563090 () Bool)

(declare-fun lt!1994799 () Int)

(assert (=> d!1563090 (= lt!1994799 (size!36861 (list!17483 (left!40624 (c!827478 totalInput!332)))))))

(assert (=> d!1563090 (= lt!1994799 (ite ((_ is Empty!14569) (left!40624 (c!827478 totalInput!332))) 0 (ite ((_ is Leaf!24295) (left!40624 (c!827478 totalInput!332))) (csize!29369 (left!40624 (c!827478 totalInput!332))) (csize!29368 (left!40624 (c!827478 totalInput!332))))))))

(assert (=> d!1563090 (= (size!36864 (left!40624 (c!827478 totalInput!332))) lt!1994799)))

(declare-fun bs!1174438 () Bool)

(assert (= bs!1174438 d!1563090))

(assert (=> bs!1174438 m!5865064))

(assert (=> bs!1174438 m!5865064))

(assert (=> bs!1174438 m!5866810))

(assert (=> d!1562118 d!1563090))

(declare-fun d!1563092 () Bool)

(declare-fun lt!1994800 () Int)

(assert (=> d!1563092 (= lt!1994800 (size!36861 (list!17483 (right!40954 (c!827478 totalInput!332)))))))

(assert (=> d!1563092 (= lt!1994800 (ite ((_ is Empty!14569) (right!40954 (c!827478 totalInput!332))) 0 (ite ((_ is Leaf!24295) (right!40954 (c!827478 totalInput!332))) (csize!29369 (right!40954 (c!827478 totalInput!332))) (csize!29368 (right!40954 (c!827478 totalInput!332))))))))

(assert (=> d!1563092 (= (size!36864 (right!40954 (c!827478 totalInput!332))) lt!1994800)))

(declare-fun bs!1174439 () Bool)

(assert (= bs!1174439 d!1563092))

(assert (=> bs!1174439 m!5865066))

(assert (=> bs!1174439 m!5865066))

(assert (=> bs!1174439 m!5866812))

(assert (=> d!1562118 d!1563092))

(declare-fun d!1563094 () Bool)

(declare-fun lt!1994801 () Int)

(assert (=> d!1563094 (>= lt!1994801 0)))

(declare-fun e!3043359 () Int)

(assert (=> d!1563094 (= lt!1994801 e!3043359)))

(declare-fun c!828039 () Bool)

(assert (=> d!1563094 (= c!828039 ((_ is Nil!55933) (t!363819 (_1!33186 lt!1993806))))))

(assert (=> d!1563094 (= (size!36862 (t!363819 (_1!33186 lt!1993806))) lt!1994801)))

(declare-fun b!4868104 () Bool)

(assert (=> b!4868104 (= e!3043359 0)))

(declare-fun b!4868105 () Bool)

(assert (=> b!4868105 (= e!3043359 (+ 1 (size!36862 (t!363819 (t!363819 (_1!33186 lt!1993806))))))))

(assert (= (and d!1563094 c!828039) b!4868104))

(assert (= (and d!1563094 (not c!828039)) b!4868105))

(declare-fun m!5867886 () Bool)

(assert (=> b!4868105 m!5867886))

(assert (=> b!4866407 d!1563094))

(declare-fun b!4868106 () Bool)

(declare-fun res!2078139 () Bool)

(declare-fun e!3043365 () Bool)

(assert (=> b!4868106 (=> (not res!2078139) (not e!3043365))))

(declare-fun call!338111 () Bool)

(assert (=> b!4868106 (= res!2078139 (not call!338111))))

(declare-fun b!4868107 () Bool)

(declare-fun e!3043360 () Bool)

(declare-fun e!3043364 () Bool)

(assert (=> b!4868107 (= e!3043360 e!3043364)))

(declare-fun c!828041 () Bool)

(assert (=> b!4868107 (= c!828041 ((_ is EmptyLang!13105) (regex!8030 (h!62380 rules!1248))))))

(declare-fun b!4868108 () Bool)

(declare-fun e!3043366 () Bool)

(assert (=> b!4868108 (= e!3043366 (nullable!4539 (regex!8030 (h!62380 rules!1248))))))

(declare-fun b!4868109 () Bool)

(assert (=> b!4868109 (= e!3043366 (matchR!6490 (derivativeStep!3863 (regex!8030 (h!62380 rules!1248)) (head!10411 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129))))) (tail!9557 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129))))))))

(declare-fun b!4868110 () Bool)

(declare-fun e!3043361 () Bool)

(declare-fun e!3043362 () Bool)

(assert (=> b!4868110 (= e!3043361 e!3043362)))

(declare-fun res!2078143 () Bool)

(assert (=> b!4868110 (=> res!2078143 e!3043362)))

(assert (=> b!4868110 (= res!2078143 call!338111)))

(declare-fun b!4868111 () Bool)

(declare-fun res!2078141 () Bool)

(assert (=> b!4868111 (=> res!2078141 e!3043362)))

(assert (=> b!4868111 (= res!2078141 (not (isEmpty!29928 (tail!9557 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))))))))

(declare-fun b!4868112 () Bool)

(declare-fun res!2078137 () Bool)

(declare-fun e!3043363 () Bool)

(assert (=> b!4868112 (=> res!2078137 e!3043363)))

(assert (=> b!4868112 (= res!2078137 (not ((_ is ElementMatch!13105) (regex!8030 (h!62380 rules!1248)))))))

(assert (=> b!4868112 (= e!3043364 e!3043363)))

(declare-fun b!4868113 () Bool)

(declare-fun res!2078142 () Bool)

(assert (=> b!4868113 (=> (not res!2078142) (not e!3043365))))

(assert (=> b!4868113 (= res!2078142 (isEmpty!29928 (tail!9557 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129))))))))

(declare-fun b!4868114 () Bool)

(declare-fun lt!1994802 () Bool)

(assert (=> b!4868114 (= e!3043360 (= lt!1994802 call!338111))))

(declare-fun d!1563096 () Bool)

(assert (=> d!1563096 e!3043360))

(declare-fun c!828042 () Bool)

(assert (=> d!1563096 (= c!828042 ((_ is EmptyExpr!13105) (regex!8030 (h!62380 rules!1248))))))

(assert (=> d!1563096 (= lt!1994802 e!3043366)))

(declare-fun c!828040 () Bool)

(assert (=> d!1563096 (= c!828040 (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))))))

(assert (=> d!1563096 (validRegex!5866 (regex!8030 (h!62380 rules!1248)))))

(assert (=> d!1563096 (= (matchR!6490 (regex!8030 (h!62380 rules!1248)) (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))) lt!1994802)))

(declare-fun b!4868115 () Bool)

(declare-fun res!2078136 () Bool)

(assert (=> b!4868115 (=> res!2078136 e!3043363)))

(assert (=> b!4868115 (= res!2078136 e!3043365)))

(declare-fun res!2078138 () Bool)

(assert (=> b!4868115 (=> (not res!2078138) (not e!3043365))))

(assert (=> b!4868115 (= res!2078138 lt!1994802)))

(declare-fun b!4868116 () Bool)

(assert (=> b!4868116 (= e!3043363 e!3043361)))

(declare-fun res!2078140 () Bool)

(assert (=> b!4868116 (=> (not res!2078140) (not e!3043361))))

(assert (=> b!4868116 (= res!2078140 (not lt!1994802))))

(declare-fun b!4868117 () Bool)

(assert (=> b!4868117 (= e!3043364 (not lt!1994802))))

(declare-fun b!4868118 () Bool)

(assert (=> b!4868118 (= e!3043365 (= (head!10411 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))) (c!827479 (regex!8030 (h!62380 rules!1248)))))))

(declare-fun b!4868119 () Bool)

(assert (=> b!4868119 (= e!3043362 (not (= (head!10411 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))) (c!827479 (regex!8030 (h!62380 rules!1248))))))))

(declare-fun bm!338106 () Bool)

(assert (=> bm!338106 (= call!338111 (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) lt!1994129 lt!1994129 (size!36861 lt!1994129)))))))

(assert (= (and d!1563096 c!828040) b!4868108))

(assert (= (and d!1563096 (not c!828040)) b!4868109))

(assert (= (and d!1563096 c!828042) b!4868114))

(assert (= (and d!1563096 (not c!828042)) b!4868107))

(assert (= (and b!4868107 c!828041) b!4868117))

(assert (= (and b!4868107 (not c!828041)) b!4868112))

(assert (= (and b!4868112 (not res!2078137)) b!4868115))

(assert (= (and b!4868115 res!2078138) b!4868106))

(assert (= (and b!4868106 res!2078139) b!4868113))

(assert (= (and b!4868113 res!2078142) b!4868118))

(assert (= (and b!4868115 (not res!2078136)) b!4868116))

(assert (= (and b!4868116 res!2078140) b!4868110))

(assert (= (and b!4868110 (not res!2078143)) b!4868111))

(assert (= (and b!4868111 (not res!2078141)) b!4868119))

(assert (= (or b!4868114 b!4868106 b!4868110) bm!338106))

(declare-fun m!5867888 () Bool)

(assert (=> b!4868118 m!5867888))

(declare-fun m!5867890 () Bool)

(assert (=> b!4868113 m!5867890))

(assert (=> b!4868113 m!5867890))

(declare-fun m!5867892 () Bool)

(assert (=> b!4868113 m!5867892))

(assert (=> b!4868109 m!5867888))

(assert (=> b!4868109 m!5867888))

(declare-fun m!5867894 () Bool)

(assert (=> b!4868109 m!5867894))

(assert (=> b!4868109 m!5867890))

(assert (=> b!4868109 m!5867894))

(assert (=> b!4868109 m!5867890))

(declare-fun m!5867896 () Bool)

(assert (=> b!4868109 m!5867896))

(assert (=> b!4868111 m!5867890))

(assert (=> b!4868111 m!5867890))

(assert (=> b!4868111 m!5867892))

(assert (=> bm!338106 m!5865034))

(assert (=> d!1563096 m!5865034))

(assert (=> d!1563096 m!5866682))

(assert (=> b!4868119 m!5867888))

(assert (=> b!4868108 m!5866732))

(assert (=> b!4866447 d!1563096))

(assert (=> b!4866447 d!1562696))

(assert (=> b!4866447 d!1562692))

(assert (=> b!4866447 d!1562716))

(declare-fun d!1563098 () Bool)

(declare-fun lt!1994803 () Int)

(assert (=> d!1563098 (= lt!1994803 (size!36861 (list!17483 (left!40624 (c!827478 input!661)))))))

(assert (=> d!1563098 (= lt!1994803 (ite ((_ is Empty!14569) (left!40624 (c!827478 input!661))) 0 (ite ((_ is Leaf!24295) (left!40624 (c!827478 input!661))) (csize!29369 (left!40624 (c!827478 input!661))) (csize!29368 (left!40624 (c!827478 input!661))))))))

(assert (=> d!1563098 (= (size!36864 (left!40624 (c!827478 input!661))) lt!1994803)))

(declare-fun bs!1174440 () Bool)

(assert (= bs!1174440 d!1563098))

(assert (=> bs!1174440 m!5864856))

(assert (=> bs!1174440 m!5864856))

(assert (=> bs!1174440 m!5867830))

(assert (=> d!1562002 d!1563098))

(declare-fun d!1563100 () Bool)

(declare-fun lt!1994804 () Int)

(assert (=> d!1563100 (= lt!1994804 (size!36861 (list!17483 (right!40954 (c!827478 input!661)))))))

(assert (=> d!1563100 (= lt!1994804 (ite ((_ is Empty!14569) (right!40954 (c!827478 input!661))) 0 (ite ((_ is Leaf!24295) (right!40954 (c!827478 input!661))) (csize!29369 (right!40954 (c!827478 input!661))) (csize!29368 (right!40954 (c!827478 input!661))))))))

(assert (=> d!1563100 (= (size!36864 (right!40954 (c!827478 input!661))) lt!1994804)))

(declare-fun bs!1174441 () Bool)

(assert (= bs!1174441 d!1563100))

(assert (=> bs!1174441 m!5864858))

(assert (=> bs!1174441 m!5864858))

(assert (=> bs!1174441 m!5867832))

(assert (=> d!1562002 d!1563100))

(declare-fun d!1563102 () Bool)

(declare-fun lt!1994805 () Int)

(assert (=> d!1563102 (= lt!1994805 (size!36861 (list!17479 (_2!33187 lt!1994094))))))

(assert (=> d!1563102 (= lt!1994805 (size!36864 (c!827478 (_2!33187 lt!1994094))))))

(assert (=> d!1563102 (= (size!36855 (_2!33187 lt!1994094)) lt!1994805)))

(declare-fun bs!1174442 () Bool)

(assert (= bs!1174442 d!1563102))

(assert (=> bs!1174442 m!5864928))

(assert (=> bs!1174442 m!5864928))

(declare-fun m!5867898 () Bool)

(assert (=> bs!1174442 m!5867898))

(declare-fun m!5867900 () Bool)

(assert (=> bs!1174442 m!5867900))

(assert (=> b!4866367 d!1563102))

(declare-fun d!1563104 () Bool)

(declare-fun lt!1994806 () Int)

(assert (=> d!1563104 (= lt!1994806 (size!36861 (list!17479 (_2!33185 (v!49684 lt!1993770)))))))

(assert (=> d!1563104 (= lt!1994806 (size!36864 (c!827478 (_2!33185 (v!49684 lt!1993770)))))))

(assert (=> d!1563104 (= (size!36855 (_2!33185 (v!49684 lt!1993770))) lt!1994806)))

(declare-fun bs!1174443 () Bool)

(assert (= bs!1174443 d!1563104))

(assert (=> bs!1174443 m!5864920))

(assert (=> bs!1174443 m!5864920))

(assert (=> bs!1174443 m!5866930))

(declare-fun m!5867902 () Bool)

(assert (=> bs!1174443 m!5867902))

(assert (=> b!4866367 d!1563104))

(declare-fun d!1563106 () Bool)

(assert (=> d!1563106 (= (isEmpty!29918 (_1!33186 lt!1993958)) ((_ is Nil!55933) (_1!33186 lt!1993958)))))

(assert (=> b!4866072 d!1563106))

(declare-fun b!4868120 () Bool)

(declare-fun e!3043368 () Bool)

(assert (=> b!4868120 (= e!3043368 (not (isEmpty!29927 (right!40954 (right!40954 (c!827478 totalInput!332))))))))

(declare-fun b!4868121 () Bool)

(declare-fun res!2078149 () Bool)

(assert (=> b!4868121 (=> (not res!2078149) (not e!3043368))))

(assert (=> b!4868121 (= res!2078149 (isBalanced!3954 (right!40954 (right!40954 (c!827478 totalInput!332)))))))

(declare-fun b!4868122 () Bool)

(declare-fun res!2078147 () Bool)

(assert (=> b!4868122 (=> (not res!2078147) (not e!3043368))))

(assert (=> b!4868122 (= res!2078147 (isBalanced!3954 (left!40624 (right!40954 (c!827478 totalInput!332)))))))

(declare-fun b!4868123 () Bool)

(declare-fun res!2078146 () Bool)

(assert (=> b!4868123 (=> (not res!2078146) (not e!3043368))))

(assert (=> b!4868123 (= res!2078146 (not (isEmpty!29927 (left!40624 (right!40954 (c!827478 totalInput!332))))))))

(declare-fun d!1563108 () Bool)

(declare-fun res!2078144 () Bool)

(declare-fun e!3043367 () Bool)

(assert (=> d!1563108 (=> res!2078144 e!3043367)))

(assert (=> d!1563108 (= res!2078144 (not ((_ is Node!14569) (right!40954 (c!827478 totalInput!332)))))))

(assert (=> d!1563108 (= (isBalanced!3954 (right!40954 (c!827478 totalInput!332))) e!3043367)))

(declare-fun b!4868124 () Bool)

(assert (=> b!4868124 (= e!3043367 e!3043368)))

(declare-fun res!2078145 () Bool)

(assert (=> b!4868124 (=> (not res!2078145) (not e!3043368))))

(assert (=> b!4868124 (= res!2078145 (<= (- 1) (- (height!1925 (left!40624 (right!40954 (c!827478 totalInput!332)))) (height!1925 (right!40954 (right!40954 (c!827478 totalInput!332)))))))))

(declare-fun b!4868125 () Bool)

(declare-fun res!2078148 () Bool)

(assert (=> b!4868125 (=> (not res!2078148) (not e!3043368))))

(assert (=> b!4868125 (= res!2078148 (<= (- (height!1925 (left!40624 (right!40954 (c!827478 totalInput!332)))) (height!1925 (right!40954 (right!40954 (c!827478 totalInput!332))))) 1))))

(assert (= (and d!1563108 (not res!2078144)) b!4868124))

(assert (= (and b!4868124 res!2078145) b!4868125))

(assert (= (and b!4868125 res!2078148) b!4868122))

(assert (= (and b!4868122 res!2078147) b!4868121))

(assert (= (and b!4868121 res!2078149) b!4868123))

(assert (= (and b!4868123 res!2078146) b!4868120))

(assert (=> b!4868124 m!5867094))

(assert (=> b!4868124 m!5867096))

(declare-fun m!5867904 () Bool)

(assert (=> b!4868122 m!5867904))

(declare-fun m!5867906 () Bool)

(assert (=> b!4868123 m!5867906))

(declare-fun m!5867908 () Bool)

(assert (=> b!4868121 m!5867908))

(assert (=> b!4868125 m!5867094))

(assert (=> b!4868125 m!5867096))

(declare-fun m!5867910 () Bool)

(assert (=> b!4868120 m!5867910))

(assert (=> b!4866397 d!1563108))

(declare-fun d!1563110 () Bool)

(declare-fun res!2078150 () Bool)

(declare-fun e!3043369 () Bool)

(assert (=> d!1563110 (=> (not res!2078150) (not e!3043369))))

(assert (=> d!1563110 (= res!2078150 (= (csize!29368 (left!40624 (c!827478 input!661))) (+ (size!36864 (left!40624 (left!40624 (c!827478 input!661)))) (size!36864 (right!40954 (left!40624 (c!827478 input!661)))))))))

(assert (=> d!1563110 (= (inv!71843 (left!40624 (c!827478 input!661))) e!3043369)))

(declare-fun b!4868126 () Bool)

(declare-fun res!2078151 () Bool)

(assert (=> b!4868126 (=> (not res!2078151) (not e!3043369))))

(assert (=> b!4868126 (= res!2078151 (and (not (= (left!40624 (left!40624 (c!827478 input!661))) Empty!14569)) (not (= (right!40954 (left!40624 (c!827478 input!661))) Empty!14569))))))

(declare-fun b!4868127 () Bool)

(declare-fun res!2078152 () Bool)

(assert (=> b!4868127 (=> (not res!2078152) (not e!3043369))))

(assert (=> b!4868127 (= res!2078152 (= (cheight!14780 (left!40624 (c!827478 input!661))) (+ (max!0 (height!1925 (left!40624 (left!40624 (c!827478 input!661)))) (height!1925 (right!40954 (left!40624 (c!827478 input!661))))) 1)))))

(declare-fun b!4868128 () Bool)

(assert (=> b!4868128 (= e!3043369 (<= 0 (cheight!14780 (left!40624 (c!827478 input!661)))))))

(assert (= (and d!1563110 res!2078150) b!4868126))

(assert (= (and b!4868126 res!2078151) b!4868127))

(assert (= (and b!4868127 res!2078152) b!4868128))

(declare-fun m!5867912 () Bool)

(assert (=> d!1563110 m!5867912))

(declare-fun m!5867914 () Bool)

(assert (=> d!1563110 m!5867914))

(assert (=> b!4868127 m!5867226))

(assert (=> b!4868127 m!5867228))

(assert (=> b!4868127 m!5867226))

(assert (=> b!4868127 m!5867228))

(declare-fun m!5867916 () Bool)

(assert (=> b!4868127 m!5867916))

(assert (=> b!4866378 d!1563110))

(assert (=> b!4866341 d!1562786))

(assert (=> b!4866341 d!1562788))

(assert (=> b!4866401 d!1562790))

(assert (=> b!4866401 d!1562792))

(declare-fun lt!1994821 () Option!13777)

(declare-fun d!1563112 () Bool)

(assert (=> d!1563112 (= lt!1994821 (maxPrefixOneRule!3489 thiss!11777 (h!62380 rules!1248) (list!17479 input!661)))))

(declare-fun e!3043375 () Option!13777)

(assert (=> d!1563112 (= lt!1994821 e!3043375)))

(declare-fun c!828045 () Bool)

(declare-fun lt!1994822 () tuple2!59780)

(assert (=> d!1563112 (= c!828045 (isEmpty!29928 (_1!33193 lt!1994822)))))

(declare-fun findLongestMatchWithZipper!68 (Regex!13105 List!56055) tuple2!59780)

(assert (=> d!1563112 (= lt!1994822 (findLongestMatchWithZipper!68 (regex!8030 (h!62380 rules!1248)) (list!17479 input!661)))))

(assert (=> d!1563112 (ruleValid!3627 thiss!11777 (h!62380 rules!1248))))

(assert (=> d!1563112 (= (maxPrefixOneRuleZipper!222 thiss!11777 (h!62380 rules!1248) (list!17479 input!661)) lt!1994821)))

(declare-fun b!4868135 () Bool)

(assert (=> b!4868135 (= e!3043375 None!13776)))

(declare-fun b!4868136 () Bool)

(assert (=> b!4868136 (= e!3043375 (Some!13776 (tuple2!59773 (Token!14645 (apply!13500 (transformation!8030 (h!62380 rules!1248)) (seqFromList!5896 (_1!33193 lt!1994822))) (h!62380 rules!1248) (size!36861 (_1!33193 lt!1994822)) (_1!33193 lt!1994822)) (_2!33193 lt!1994822))))))

(declare-fun lt!1994819 () Unit!145938)

(assert (=> b!4868136 (= lt!1994819 (longestMatchIsAcceptedByMatchOrIsEmpty!1682 (regex!8030 (h!62380 rules!1248)) (list!17479 input!661)))))

(declare-fun res!2078155 () Bool)

(assert (=> b!4868136 (= res!2078155 (isEmpty!29928 (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) (list!17479 input!661) (list!17479 input!661) (size!36861 (list!17479 input!661))))))))

(declare-fun e!3043374 () Bool)

(assert (=> b!4868136 (=> res!2078155 e!3043374)))

(assert (=> b!4868136 e!3043374))

(declare-fun lt!1994824 () Unit!145938)

(assert (=> b!4868136 (= lt!1994824 lt!1994819)))

(declare-fun lt!1994823 () Unit!145938)

(assert (=> b!4868136 (= lt!1994823 (lemmaInv!1202 (transformation!8030 (h!62380 rules!1248))))))

(declare-fun lt!1994820 () Unit!145938)

(assert (=> b!4868136 (= lt!1994820 (lemmaSemiInverse!2550 (transformation!8030 (h!62380 rules!1248)) (seqFromList!5896 (_1!33193 lt!1994822))))))

(declare-fun b!4868137 () Bool)

(assert (=> b!4868137 (= e!3043374 (matchR!6490 (regex!8030 (h!62380 rules!1248)) (_1!33193 (findLongestMatchInner!1719 (regex!8030 (h!62380 rules!1248)) Nil!55931 (size!36861 Nil!55931) (list!17479 input!661) (list!17479 input!661) (size!36861 (list!17479 input!661))))))))

(assert (= (and d!1563112 c!828045) b!4868135))

(assert (= (and d!1563112 (not c!828045)) b!4868136))

(assert (= (and b!4868136 (not res!2078155)) b!4868137))

(assert (=> d!1563112 m!5863822))

(assert (=> d!1563112 m!5864692))

(declare-fun m!5867918 () Bool)

(assert (=> d!1563112 m!5867918))

(assert (=> d!1563112 m!5863822))

(declare-fun m!5867920 () Bool)

(assert (=> d!1563112 m!5867920))

(assert (=> d!1563112 m!5864500))

(assert (=> b!4868136 m!5863822))

(assert (=> b!4868136 m!5867180))

(assert (=> b!4868136 m!5865050))

(declare-fun m!5867922 () Bool)

(assert (=> b!4868136 m!5867922))

(assert (=> b!4868136 m!5865032))

(assert (=> b!4868136 m!5867182))

(assert (=> b!4868136 m!5867922))

(declare-fun m!5867924 () Bool)

(assert (=> b!4868136 m!5867924))

(declare-fun m!5867926 () Bool)

(assert (=> b!4868136 m!5867926))

(assert (=> b!4868136 m!5865032))

(assert (=> b!4868136 m!5863822))

(assert (=> b!4868136 m!5863822))

(assert (=> b!4868136 m!5864152))

(assert (=> b!4868136 m!5867168))

(assert (=> b!4868136 m!5863822))

(assert (=> b!4868136 m!5864152))

(assert (=> b!4868136 m!5867922))

(declare-fun m!5867928 () Bool)

(assert (=> b!4868136 m!5867928))

(assert (=> b!4868137 m!5865032))

(assert (=> b!4868137 m!5863822))

(assert (=> b!4868137 m!5864152))

(assert (=> b!4868137 m!5865032))

(assert (=> b!4868137 m!5863822))

(assert (=> b!4868137 m!5863822))

(assert (=> b!4868137 m!5864152))

(assert (=> b!4868137 m!5867168))

(assert (=> b!4868137 m!5867170))

(assert (=> bm!337908 d!1563112))

(declare-fun b!4868140 () Bool)

(declare-fun res!2078156 () Bool)

(declare-fun e!3043376 () Bool)

(assert (=> b!4868140 (=> (not res!2078156) (not e!3043376))))

(declare-fun lt!1994825 () List!56055)

(assert (=> b!4868140 (= res!2078156 (= (size!36861 lt!1994825) (+ (size!36861 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))) (size!36861 (_2!33189 (get!19223 lt!1994098))))))))

(declare-fun b!4868138 () Bool)

(declare-fun e!3043377 () List!56055)

(assert (=> b!4868138 (= e!3043377 (_2!33189 (get!19223 lt!1994098)))))

(declare-fun d!1563114 () Bool)

(assert (=> d!1563114 e!3043376))

(declare-fun res!2078157 () Bool)

(assert (=> d!1563114 (=> (not res!2078157) (not e!3043376))))

(assert (=> d!1563114 (= res!2078157 (= (content!9968 lt!1994825) ((_ map or) (content!9968 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))) (content!9968 (_2!33189 (get!19223 lt!1994098))))))))

(assert (=> d!1563114 (= lt!1994825 e!3043377)))

(declare-fun c!828046 () Bool)

(assert (=> d!1563114 (= c!828046 ((_ is Nil!55931) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))))))

(assert (=> d!1563114 (= (++!12179 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098)))) (_2!33189 (get!19223 lt!1994098))) lt!1994825)))

(declare-fun b!4868141 () Bool)

(assert (=> b!4868141 (= e!3043376 (or (not (= (_2!33189 (get!19223 lt!1994098)) Nil!55931)) (= lt!1994825 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098)))))))))

(declare-fun b!4868139 () Bool)

(assert (=> b!4868139 (= e!3043377 (Cons!55931 (h!62379 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))) (++!12179 (t!363817 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994098))))) (_2!33189 (get!19223 lt!1994098)))))))

(assert (= (and d!1563114 c!828046) b!4868138))

(assert (= (and d!1563114 (not c!828046)) b!4868139))

(assert (= (and d!1563114 res!2078157) b!4868140))

(assert (= (and b!4868140 res!2078156) b!4868141))

(declare-fun m!5867930 () Bool)

(assert (=> b!4868140 m!5867930))

(assert (=> b!4868140 m!5864984))

(declare-fun m!5867932 () Bool)

(assert (=> b!4868140 m!5867932))

(assert (=> b!4868140 m!5864992))

(declare-fun m!5867934 () Bool)

(assert (=> d!1563114 m!5867934))

(assert (=> d!1563114 m!5864984))

(declare-fun m!5867936 () Bool)

(assert (=> d!1563114 m!5867936))

(declare-fun m!5867938 () Bool)

(assert (=> d!1563114 m!5867938))

(declare-fun m!5867940 () Bool)

(assert (=> b!4868139 m!5867940))

(assert (=> b!4866412 d!1563114))

(assert (=> b!4866412 d!1562804))

(assert (=> b!4866412 d!1562806))

(assert (=> b!4866412 d!1562760))

(declare-fun d!1563116 () Bool)

(declare-fun lt!1994826 () Bool)

(assert (=> d!1563116 (= lt!1994826 (isEmpty!29928 (list!17483 (right!40954 (c!827478 input!661)))))))

(assert (=> d!1563116 (= lt!1994826 (= (size!36864 (right!40954 (c!827478 input!661))) 0))))

(assert (=> d!1563116 (= (isEmpty!29927 (right!40954 (c!827478 input!661))) lt!1994826)))

(declare-fun bs!1174444 () Bool)

(assert (= bs!1174444 d!1563116))

(assert (=> bs!1174444 m!5864858))

(assert (=> bs!1174444 m!5864858))

(declare-fun m!5867942 () Bool)

(assert (=> bs!1174444 m!5867942))

(assert (=> bs!1174444 m!5864530))

(assert (=> b!4866498 d!1563116))

(declare-fun d!1563118 () Bool)

(assert (=> d!1563118 (= (list!17486 (xs!17875 (c!827478 (_2!33185 (v!49684 lt!1993717))))) (innerList!14657 (xs!17875 (c!827478 (_2!33185 (v!49684 lt!1993717))))))))

(assert (=> b!4866404 d!1563118))

(declare-fun d!1563120 () Bool)

(declare-fun c!828047 () Bool)

(assert (=> d!1563120 (= c!828047 ((_ is Nil!55931) (t!363817 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))

(declare-fun e!3043378 () (InoxSet C!26408))

(assert (=> d!1563120 (= (content!9968 (t!363817 (list!17479 (_2!33185 (v!49684 lt!1993717))))) e!3043378)))

(declare-fun b!4868142 () Bool)

(assert (=> b!4868142 (= e!3043378 ((as const (Array C!26408 Bool)) false))))

(declare-fun b!4868143 () Bool)

(assert (=> b!4868143 (= e!3043378 ((_ map or) (store ((as const (Array C!26408 Bool)) false) (h!62379 (t!363817 (list!17479 (_2!33185 (v!49684 lt!1993717))))) true) (content!9968 (t!363817 (t!363817 (list!17479 (_2!33185 (v!49684 lt!1993717))))))))))

(assert (= (and d!1563120 c!828047) b!4868142))

(assert (= (and d!1563120 (not c!828047)) b!4868143))

(declare-fun m!5867944 () Bool)

(assert (=> b!4868143 m!5867944))

(declare-fun m!5867946 () Bool)

(assert (=> b!4868143 m!5867946))

(assert (=> b!4866493 d!1563120))

(declare-fun d!1563122 () Bool)

(assert (=> d!1563122 (= (isDefined!10845 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717))))) (not (isEmpty!29923 (maxPrefixZipper!561 thiss!11777 rules!1248 (list!17479 (_2!33185 (v!49684 lt!1993717)))))))))

(declare-fun bs!1174445 () Bool)

(assert (= bs!1174445 d!1563122))

(assert (=> bs!1174445 m!5864842))

(declare-fun m!5867948 () Bool)

(assert (=> bs!1174445 m!5867948))

(assert (=> d!1562056 d!1563122))

(declare-fun d!1563124 () Bool)

(declare-fun e!3043379 () Bool)

(assert (=> d!1563124 e!3043379))

(declare-fun res!2078160 () Bool)

(assert (=> d!1563124 (=> res!2078160 e!3043379)))

(declare-fun lt!1994827 () Bool)

(assert (=> d!1563124 (= res!2078160 (not lt!1994827))))

(declare-fun e!3043380 () Bool)

(assert (=> d!1563124 (= lt!1994827 e!3043380)))

(declare-fun res!2078161 () Bool)

(assert (=> d!1563124 (=> res!2078161 e!3043380)))

(assert (=> d!1563124 (= res!2078161 ((_ is Nil!55931) lt!1994075))))

(assert (=> d!1563124 (= (isPrefix!4764 lt!1994075 lt!1994074) lt!1994827)))

(declare-fun b!4868147 () Bool)

(assert (=> b!4868147 (= e!3043379 (>= (size!36861 lt!1994074) (size!36861 lt!1994075)))))

(declare-fun b!4868146 () Bool)

(declare-fun e!3043381 () Bool)

(assert (=> b!4868146 (= e!3043381 (isPrefix!4764 (tail!9557 lt!1994075) (tail!9557 lt!1994074)))))

(declare-fun b!4868144 () Bool)

(assert (=> b!4868144 (= e!3043380 e!3043381)))

(declare-fun res!2078159 () Bool)

(assert (=> b!4868144 (=> (not res!2078159) (not e!3043381))))

(assert (=> b!4868144 (= res!2078159 (not ((_ is Nil!55931) lt!1994074)))))

(declare-fun b!4868145 () Bool)

(declare-fun res!2078158 () Bool)

(assert (=> b!4868145 (=> (not res!2078158) (not e!3043381))))

(assert (=> b!4868145 (= res!2078158 (= (head!10411 lt!1994075) (head!10411 lt!1994074)))))

(assert (= (and d!1563124 (not res!2078161)) b!4868144))

(assert (= (and b!4868144 res!2078159) b!4868145))

(assert (= (and b!4868145 res!2078158) b!4868146))

(assert (= (and d!1563124 (not res!2078160)) b!4868147))

(declare-fun m!5867950 () Bool)

(assert (=> b!4868147 m!5867950))

(declare-fun m!5867952 () Bool)

(assert (=> b!4868147 m!5867952))

(declare-fun m!5867954 () Bool)

(assert (=> b!4868146 m!5867954))

(declare-fun m!5867956 () Bool)

(assert (=> b!4868146 m!5867956))

(assert (=> b!4868146 m!5867954))

(assert (=> b!4868146 m!5867956))

(declare-fun m!5867958 () Bool)

(assert (=> b!4868146 m!5867958))

(declare-fun m!5867960 () Bool)

(assert (=> b!4868145 m!5867960))

(declare-fun m!5867962 () Bool)

(assert (=> b!4868145 m!5867962))

(assert (=> d!1562056 d!1563124))

(assert (=> d!1562056 d!1561864))

(assert (=> d!1562056 d!1563052))

(declare-fun d!1563126 () Bool)

(assert (=> d!1563126 (isPrefix!4764 lt!1994075 lt!1994074)))

(declare-fun lt!1994828 () Unit!145938)

(assert (=> d!1563126 (= lt!1994828 (choose!35582 lt!1994075 lt!1994074))))

(assert (=> d!1563126 (= (lemmaIsPrefixRefl!3161 lt!1994075 lt!1994074) lt!1994828)))

(declare-fun bs!1174446 () Bool)

(assert (= bs!1174446 d!1563126))

(assert (=> bs!1174446 m!5864846))

(declare-fun m!5867964 () Bool)

(assert (=> bs!1174446 m!5867964))

(assert (=> d!1562056 d!1563126))

(assert (=> d!1562056 d!1562814))

(assert (=> d!1562056 d!1561818))

(declare-fun d!1563128 () Bool)

(assert (=> d!1563128 (= (isDefined!10845 lt!1994098) (not (isEmpty!29923 lt!1994098)))))

(declare-fun bs!1174447 () Bool)

(assert (= bs!1174447 d!1563128))

(assert (=> bs!1174447 m!5864998))

(assert (=> b!4866415 d!1563128))

(assert (=> b!4866502 d!1562880))

(assert (=> b!4866502 d!1562882))

(assert (=> b!4866314 d!1562996))

(assert (=> b!4866314 d!1562994))

(assert (=> b!4866314 d!1561818))

(assert (=> b!4866314 d!1563050))

(assert (=> b!4866314 d!1562998))

(declare-fun d!1563130 () Bool)

(declare-fun lt!1994829 () Bool)

(assert (=> d!1563130 (= lt!1994829 (isEmpty!29918 (list!17480 (_1!33187 lt!1994094))))))

(assert (=> d!1563130 (= lt!1994829 (isEmpty!29919 (c!827480 (_1!33187 lt!1994094))))))

(assert (=> d!1563130 (= (isEmpty!29915 (_1!33187 lt!1994094)) lt!1994829)))

(declare-fun bs!1174448 () Bool)

(assert (= bs!1174448 d!1563130))

(assert (=> bs!1174448 m!5864918))

(assert (=> bs!1174448 m!5864918))

(declare-fun m!5867966 () Bool)

(assert (=> bs!1174448 m!5867966))

(declare-fun m!5867968 () Bool)

(assert (=> bs!1174448 m!5867968))

(assert (=> b!4866371 d!1563130))

(declare-fun d!1563132 () Bool)

(declare-fun lt!1994830 () Int)

(assert (=> d!1563132 (>= lt!1994830 0)))

(declare-fun e!3043382 () Int)

(assert (=> d!1563132 (= lt!1994830 e!3043382)))

(declare-fun c!828048 () Bool)

(assert (=> d!1563132 (= c!828048 ((_ is Nil!55931) (t!363817 (list!17479 totalInput!332))))))

(assert (=> d!1563132 (= (size!36861 (t!363817 (list!17479 totalInput!332))) lt!1994830)))

(declare-fun b!4868148 () Bool)

(assert (=> b!4868148 (= e!3043382 0)))

(declare-fun b!4868149 () Bool)

(assert (=> b!4868149 (= e!3043382 (+ 1 (size!36861 (t!363817 (t!363817 (list!17479 totalInput!332))))))))

(assert (= (and d!1563132 c!828048) b!4868148))

(assert (= (and d!1563132 (not c!828048)) b!4868149))

(declare-fun m!5867970 () Bool)

(assert (=> b!4868149 m!5867970))

(assert (=> b!4866053 d!1563132))

(assert (=> d!1561862 d!1562038))

(assert (=> d!1561862 d!1562684))

(assert (=> d!1561862 d!1562686))

(assert (=> d!1561862 d!1561864))

(assert (=> b!4866318 d!1562994))

(assert (=> b!4866318 d!1563054))

(assert (=> b!4866318 d!1563052))

(assert (=> b!4866318 d!1561818))

(declare-fun d!1563134 () Bool)

(declare-fun lt!1994831 () Int)

(assert (=> d!1563134 (>= lt!1994831 0)))

(declare-fun e!3043383 () Int)

(assert (=> d!1563134 (= lt!1994831 e!3043383)))

(declare-fun c!828049 () Bool)

(assert (=> d!1563134 (= c!828049 ((_ is Nil!55933) (_1!33186 lt!1993958)))))

(assert (=> d!1563134 (= (size!36862 (_1!33186 lt!1993958)) lt!1994831)))

(declare-fun b!4868150 () Bool)

(assert (=> b!4868150 (= e!3043383 0)))

(declare-fun b!4868151 () Bool)

(assert (=> b!4868151 (= e!3043383 (+ 1 (size!36862 (t!363819 (_1!33186 lt!1993958)))))))

(assert (= (and d!1563134 c!828049) b!4868150))

(assert (= (and d!1563134 (not c!828049)) b!4868151))

(declare-fun m!5867972 () Bool)

(assert (=> b!4868151 m!5867972))

(assert (=> d!1562010 d!1563134))

(assert (=> d!1562010 d!1562998))

(declare-fun b!4868152 () Bool)

(declare-fun res!2078165 () Bool)

(declare-fun e!3043389 () Bool)

(assert (=> b!4868152 (=> (not res!2078165) (not e!3043389))))

(declare-fun call!338112 () Bool)

(assert (=> b!4868152 (= res!2078165 (not call!338112))))

(declare-fun b!4868153 () Bool)

(declare-fun e!3043384 () Bool)

(declare-fun e!3043388 () Bool)

(assert (=> b!4868153 (= e!3043384 e!3043388)))

(declare-fun c!828051 () Bool)

(assert (=> b!4868153 (= c!828051 ((_ is EmptyLang!13105) (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018))))))))

(declare-fun b!4868154 () Bool)

(declare-fun e!3043390 () Bool)

(assert (=> b!4868154 (= e!3043390 (nullable!4539 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018))))))))

(declare-fun b!4868155 () Bool)

(assert (=> b!4868155 (= e!3043390 (matchR!6490 (derivativeStep!3863 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))) (head!10411 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018)))))) (tail!9557 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018)))))))))

(declare-fun b!4868156 () Bool)

(declare-fun e!3043385 () Bool)

(declare-fun e!3043386 () Bool)

(assert (=> b!4868156 (= e!3043385 e!3043386)))

(declare-fun res!2078169 () Bool)

(assert (=> b!4868156 (=> res!2078169 e!3043386)))

(assert (=> b!4868156 (= res!2078169 call!338112)))

(declare-fun b!4868157 () Bool)

(declare-fun res!2078167 () Bool)

(assert (=> b!4868157 (=> res!2078167 e!3043386)))

(assert (=> b!4868157 (= res!2078167 (not (isEmpty!29928 (tail!9557 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))))))))

(declare-fun b!4868158 () Bool)

(declare-fun res!2078163 () Bool)

(declare-fun e!3043387 () Bool)

(assert (=> b!4868158 (=> res!2078163 e!3043387)))

(assert (=> b!4868158 (= res!2078163 (not ((_ is ElementMatch!13105) (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))))))

(assert (=> b!4868158 (= e!3043388 e!3043387)))

(declare-fun b!4868159 () Bool)

(declare-fun res!2078168 () Bool)

(assert (=> b!4868159 (=> (not res!2078168) (not e!3043389))))

(assert (=> b!4868159 (= res!2078168 (isEmpty!29928 (tail!9557 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018)))))))))

(declare-fun b!4868160 () Bool)

(declare-fun lt!1994832 () Bool)

(assert (=> b!4868160 (= e!3043384 (= lt!1994832 call!338112))))

(declare-fun d!1563136 () Bool)

(assert (=> d!1563136 e!3043384))

(declare-fun c!828052 () Bool)

(assert (=> d!1563136 (= c!828052 ((_ is EmptyExpr!13105) (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018))))))))

(assert (=> d!1563136 (= lt!1994832 e!3043390)))

(declare-fun c!828050 () Bool)

(assert (=> d!1563136 (= c!828050 (isEmpty!29928 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))))))

(assert (=> d!1563136 (validRegex!5866 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))))

(assert (=> d!1563136 (= (matchR!6490 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))) (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))) lt!1994832)))

(declare-fun b!4868161 () Bool)

(declare-fun res!2078162 () Bool)

(assert (=> b!4868161 (=> res!2078162 e!3043387)))

(assert (=> b!4868161 (= res!2078162 e!3043389)))

(declare-fun res!2078164 () Bool)

(assert (=> b!4868161 (=> (not res!2078164) (not e!3043389))))

(assert (=> b!4868161 (= res!2078164 lt!1994832)))

(declare-fun b!4868162 () Bool)

(assert (=> b!4868162 (= e!3043387 e!3043385)))

(declare-fun res!2078166 () Bool)

(assert (=> b!4868162 (=> (not res!2078166) (not e!3043385))))

(assert (=> b!4868162 (= res!2078166 (not lt!1994832))))

(declare-fun b!4868163 () Bool)

(assert (=> b!4868163 (= e!3043388 (not lt!1994832))))

(declare-fun b!4868164 () Bool)

(assert (=> b!4868164 (= e!3043389 (= (head!10411 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))) (c!827479 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))))))

(declare-fun b!4868165 () Bool)

(assert (=> b!4868165 (= e!3043386 (not (= (head!10411 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))) (c!827479 (regex!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018))))))))))

(declare-fun bm!338107 () Bool)

(assert (=> bm!338107 (= call!338112 (isEmpty!29928 (list!17479 (charsOf!5335 (_1!33189 (get!19223 lt!1994018))))))))

(assert (= (and d!1563136 c!828050) b!4868154))

(assert (= (and d!1563136 (not c!828050)) b!4868155))

(assert (= (and d!1563136 c!828052) b!4868160))

(assert (= (and d!1563136 (not c!828052)) b!4868153))

(assert (= (and b!4868153 c!828051) b!4868163))

(assert (= (and b!4868153 (not c!828051)) b!4868158))

(assert (= (and b!4868158 (not res!2078163)) b!4868161))

(assert (= (and b!4868161 res!2078164) b!4868152))

(assert (= (and b!4868152 res!2078165) b!4868159))

(assert (= (and b!4868159 res!2078168) b!4868164))

(assert (= (and b!4868161 (not res!2078162)) b!4868162))

(assert (= (and b!4868162 res!2078166) b!4868156))

(assert (= (and b!4868156 (not res!2078169)) b!4868157))

(assert (= (and b!4868157 (not res!2078167)) b!4868165))

(assert (= (or b!4868160 b!4868152 b!4868156) bm!338107))

(assert (=> b!4868164 m!5864682))

(declare-fun m!5867974 () Bool)

(assert (=> b!4868164 m!5867974))

(assert (=> b!4868159 m!5864682))

(declare-fun m!5867976 () Bool)

(assert (=> b!4868159 m!5867976))

(assert (=> b!4868159 m!5867976))

(declare-fun m!5867978 () Bool)

(assert (=> b!4868159 m!5867978))

(assert (=> b!4868155 m!5864682))

(assert (=> b!4868155 m!5867974))

(assert (=> b!4868155 m!5867974))

(declare-fun m!5867980 () Bool)

(assert (=> b!4868155 m!5867980))

(assert (=> b!4868155 m!5864682))

(assert (=> b!4868155 m!5867976))

(assert (=> b!4868155 m!5867980))

(assert (=> b!4868155 m!5867976))

(declare-fun m!5867982 () Bool)

(assert (=> b!4868155 m!5867982))

(assert (=> b!4868157 m!5864682))

(assert (=> b!4868157 m!5867976))

(assert (=> b!4868157 m!5867976))

(assert (=> b!4868157 m!5867978))

(assert (=> bm!338107 m!5864682))

(declare-fun m!5867984 () Bool)

(assert (=> bm!338107 m!5867984))

(assert (=> d!1563136 m!5864682))

(assert (=> d!1563136 m!5867984))

(declare-fun m!5867986 () Bool)

(assert (=> d!1563136 m!5867986))

(assert (=> b!4868165 m!5864682))

(assert (=> b!4868165 m!5867974))

(declare-fun m!5867988 () Bool)

(assert (=> b!4868154 m!5867988))

(assert (=> b!4866172 d!1563136))

(assert (=> b!4866172 d!1562606))

(assert (=> b!4866172 d!1562638))

(assert (=> b!4866172 d!1562640))

(assert (=> d!1562014 d!1562770))

(declare-fun d!1563138 () Bool)

(assert (=> d!1563138 (= (isDefined!10845 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 input!661))) (not (isEmpty!29923 (maxPrefixZipper!561 thiss!11777 (t!363818 rules!1248) (list!17479 input!661)))))))

(declare-fun bs!1174449 () Bool)

(assert (= bs!1174449 d!1563138))

(assert (=> bs!1174449 m!5864178))

(declare-fun m!5867990 () Bool)

(assert (=> bs!1174449 m!5867990))

(assert (=> d!1562014 d!1563138))

(assert (=> d!1562014 d!1562950))

(declare-fun d!1563140 () Bool)

(declare-fun e!3043391 () Bool)

(assert (=> d!1563140 e!3043391))

(declare-fun res!2078172 () Bool)

(assert (=> d!1563140 (=> res!2078172 e!3043391)))

(declare-fun lt!1994833 () Bool)

(assert (=> d!1563140 (= res!2078172 (not lt!1994833))))

(declare-fun e!3043392 () Bool)

(assert (=> d!1563140 (= lt!1994833 e!3043392)))

(declare-fun res!2078173 () Bool)

(assert (=> d!1563140 (=> res!2078173 e!3043392)))

(assert (=> d!1563140 (= res!2078173 ((_ is Nil!55931) lt!1993960))))

(assert (=> d!1563140 (= (isPrefix!4764 lt!1993960 lt!1993962) lt!1994833)))

(declare-fun b!4868169 () Bool)

(assert (=> b!4868169 (= e!3043391 (>= (size!36861 lt!1993962) (size!36861 lt!1993960)))))

(declare-fun b!4868168 () Bool)

(declare-fun e!3043393 () Bool)

(assert (=> b!4868168 (= e!3043393 (isPrefix!4764 (tail!9557 lt!1993960) (tail!9557 lt!1993962)))))

(declare-fun b!4868166 () Bool)

(assert (=> b!4868166 (= e!3043392 e!3043393)))

(declare-fun res!2078171 () Bool)

(assert (=> b!4868166 (=> (not res!2078171) (not e!3043393))))

(assert (=> b!4868166 (= res!2078171 (not ((_ is Nil!55931) lt!1993962)))))

(declare-fun b!4868167 () Bool)

(declare-fun res!2078170 () Bool)

(assert (=> b!4868167 (=> (not res!2078170) (not e!3043393))))

(assert (=> b!4868167 (= res!2078170 (= (head!10411 lt!1993960) (head!10411 lt!1993962)))))

(assert (= (and d!1563140 (not res!2078173)) b!4868166))

(assert (= (and b!4868166 res!2078171) b!4868167))

(assert (= (and b!4868167 res!2078170) b!4868168))

(assert (= (and d!1563140 (not res!2078172)) b!4868169))

(declare-fun m!5867992 () Bool)

(assert (=> b!4868169 m!5867992))

(declare-fun m!5867994 () Bool)

(assert (=> b!4868169 m!5867994))

(declare-fun m!5867996 () Bool)

(assert (=> b!4868168 m!5867996))

(declare-fun m!5867998 () Bool)

(assert (=> b!4868168 m!5867998))

(assert (=> b!4868168 m!5867996))

(assert (=> b!4868168 m!5867998))

(declare-fun m!5868000 () Bool)

(assert (=> b!4868168 m!5868000))

(declare-fun m!5868002 () Bool)

(assert (=> b!4868167 m!5868002))

(declare-fun m!5868004 () Bool)

(assert (=> b!4868167 m!5868004))

(assert (=> d!1562014 d!1563140))

(assert (=> d!1562014 d!1561850))

(assert (=> d!1562014 d!1562836))

(declare-fun d!1563142 () Bool)

(assert (=> d!1563142 (isPrefix!4764 lt!1993960 lt!1993962)))

(declare-fun lt!1994834 () Unit!145938)

(assert (=> d!1563142 (= lt!1994834 (choose!35582 lt!1993960 lt!1993962))))

(assert (=> d!1563142 (= (lemmaIsPrefixRefl!3161 lt!1993960 lt!1993962) lt!1994834)))

(declare-fun bs!1174450 () Bool)

(assert (= bs!1174450 d!1563142))

(assert (=> bs!1174450 m!5864586))

(declare-fun m!5868006 () Bool)

(assert (=> bs!1174450 m!5868006))

(assert (=> d!1562014 d!1563142))

(declare-fun b!4868171 () Bool)

(declare-fun e!3043394 () Bool)

(declare-fun tp!1369534 () Bool)

(declare-fun tp!1369535 () Bool)

(assert (=> b!4868171 (= e!3043394 (and tp!1369534 tp!1369535))))

(declare-fun b!4868170 () Bool)

(assert (=> b!4868170 (= e!3043394 tp_is_empty!35659)))

(declare-fun b!4868172 () Bool)

(declare-fun tp!1369536 () Bool)

(assert (=> b!4868172 (= e!3043394 tp!1369536)))

(assert (=> b!4866529 (= tp!1369302 e!3043394)))

(declare-fun b!4868173 () Bool)

(declare-fun tp!1369537 () Bool)

(declare-fun tp!1369538 () Bool)

(assert (=> b!4868173 (= e!3043394 (and tp!1369537 tp!1369538))))

(assert (= (and b!4866529 ((_ is ElementMatch!13105) (regOne!26722 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868170))

(assert (= (and b!4866529 ((_ is Concat!21446) (regOne!26722 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868171))

(assert (= (and b!4866529 ((_ is Star!13105) (regOne!26722 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868172))

(assert (= (and b!4866529 ((_ is Union!13105) (regOne!26722 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868173))

(declare-fun b!4868175 () Bool)

(declare-fun e!3043395 () Bool)

(declare-fun tp!1369539 () Bool)

(declare-fun tp!1369540 () Bool)

(assert (=> b!4868175 (= e!3043395 (and tp!1369539 tp!1369540))))

(declare-fun b!4868174 () Bool)

(assert (=> b!4868174 (= e!3043395 tp_is_empty!35659)))

(declare-fun b!4868176 () Bool)

(declare-fun tp!1369541 () Bool)

(assert (=> b!4868176 (= e!3043395 tp!1369541)))

(assert (=> b!4866529 (= tp!1369303 e!3043395)))

(declare-fun b!4868177 () Bool)

(declare-fun tp!1369542 () Bool)

(declare-fun tp!1369543 () Bool)

(assert (=> b!4868177 (= e!3043395 (and tp!1369542 tp!1369543))))

(assert (= (and b!4866529 ((_ is ElementMatch!13105) (regTwo!26722 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868174))

(assert (= (and b!4866529 ((_ is Concat!21446) (regTwo!26722 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868175))

(assert (= (and b!4866529 ((_ is Star!13105) (regTwo!26722 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868176))

(assert (= (and b!4866529 ((_ is Union!13105) (regTwo!26722 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868177))

(declare-fun b!4868179 () Bool)

(declare-fun e!3043396 () Bool)

(declare-fun tp!1369544 () Bool)

(declare-fun tp!1369545 () Bool)

(assert (=> b!4868179 (= e!3043396 (and tp!1369544 tp!1369545))))

(declare-fun b!4868178 () Bool)

(assert (=> b!4868178 (= e!3043396 tp_is_empty!35659)))

(declare-fun b!4868180 () Bool)

(declare-fun tp!1369546 () Bool)

(assert (=> b!4868180 (= e!3043396 tp!1369546)))

(assert (=> b!4866530 (= tp!1369304 e!3043396)))

(declare-fun b!4868181 () Bool)

(declare-fun tp!1369547 () Bool)

(declare-fun tp!1369548 () Bool)

(assert (=> b!4868181 (= e!3043396 (and tp!1369547 tp!1369548))))

(assert (= (and b!4866530 ((_ is ElementMatch!13105) (reg!13434 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868178))

(assert (= (and b!4866530 ((_ is Concat!21446) (reg!13434 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868179))

(assert (= (and b!4866530 ((_ is Star!13105) (reg!13434 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868180))

(assert (= (and b!4866530 ((_ is Union!13105) (reg!13434 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868181))

(declare-fun b!4868183 () Bool)

(declare-fun e!3043397 () Bool)

(declare-fun tp!1369549 () Bool)

(declare-fun tp!1369550 () Bool)

(assert (=> b!4868183 (= e!3043397 (and tp!1369549 tp!1369550))))

(declare-fun b!4868182 () Bool)

(assert (=> b!4868182 (= e!3043397 tp_is_empty!35659)))

(declare-fun b!4868184 () Bool)

(declare-fun tp!1369551 () Bool)

(assert (=> b!4868184 (= e!3043397 tp!1369551)))

(assert (=> b!4866546 (= tp!1369324 e!3043397)))

(declare-fun b!4868185 () Bool)

(declare-fun tp!1369552 () Bool)

(declare-fun tp!1369553 () Bool)

(assert (=> b!4868185 (= e!3043397 (and tp!1369552 tp!1369553))))

(assert (= (and b!4866546 ((_ is ElementMatch!13105) (reg!13434 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868182))

(assert (= (and b!4866546 ((_ is Concat!21446) (reg!13434 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868183))

(assert (= (and b!4866546 ((_ is Star!13105) (reg!13434 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868184))

(assert (= (and b!4866546 ((_ is Union!13105) (reg!13434 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868185))

(declare-fun b!4868188 () Bool)

(declare-fun b_free!130651 () Bool)

(declare-fun b_next!131441 () Bool)

(assert (=> b!4868188 (= b_free!130651 (not b_next!131441))))

(declare-fun t!363959 () Bool)

(declare-fun tb!257805 () Bool)

(assert (=> (and b!4868188 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) t!363959) tb!257805))

(declare-fun result!320940 () Bool)

(assert (= result!320940 result!320916))

(assert (=> d!1562722 t!363959))

(assert (=> d!1562710 t!363959))

(declare-fun t!363961 () Bool)

(declare-fun tb!257807 () Bool)

(assert (=> (and b!4868188 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))) t!363961) tb!257807))

(declare-fun result!320942 () Bool)

(assert (= result!320942 result!320872))

(assert (=> d!1562610 t!363961))

(declare-fun t!363963 () Bool)

(declare-fun tb!257809 () Bool)

(assert (=> (and b!4868188 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248)))) t!363963) tb!257809))

(declare-fun result!320944 () Bool)

(assert (= result!320944 result!320922))

(assert (=> d!1562710 t!363963))

(declare-fun t!363965 () Bool)

(declare-fun tb!257811 () Bool)

(assert (=> (and b!4868188 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toValue!10893 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))) t!363965) tb!257811))

(declare-fun result!320946 () Bool)

(assert (= result!320946 result!320928))

(assert (=> d!1562762 t!363965))

(declare-fun b_and!342751 () Bool)

(declare-fun tp!1369556 () Bool)

(assert (=> b!4868188 (= tp!1369556 (and (=> t!363959 result!320940) (=> t!363963 result!320944) (=> t!363961 result!320942) (=> t!363965 result!320946) b_and!342751))))

(declare-fun b_free!130653 () Bool)

(declare-fun b_next!131443 () Bool)

(assert (=> b!4868188 (= b_free!130653 (not b_next!131443))))

(declare-fun tb!257813 () Bool)

(declare-fun t!363967 () Bool)

(assert (=> (and b!4868188 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717)))))) t!363967) tb!257813))

(declare-fun result!320948 () Bool)

(assert (= result!320948 result!320802))

(assert (=> d!1561766 t!363967))

(declare-fun t!363969 () Bool)

(declare-fun tb!257815 () Bool)

(assert (=> (and b!4868188 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994018)))))) t!363969) tb!257815))

(declare-fun result!320950 () Bool)

(assert (= result!320950 result!320880))

(assert (=> d!1562640 t!363969))

(declare-fun t!363971 () Bool)

(declare-fun tb!257817 () Bool)

(assert (=> (and b!4868188 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toChars!10752 (transformation!8030 (rule!11154 (_1!33189 (get!19223 lt!1994098)))))) t!363971) tb!257817))

(declare-fun result!320952 () Bool)

(assert (= result!320952 result!320934))

(assert (=> d!1562806 t!363971))

(declare-fun b_and!342753 () Bool)

(declare-fun tp!1369557 () Bool)

(assert (=> b!4868188 (= tp!1369557 (and (=> t!363967 result!320948) (=> t!363969 result!320950) (=> t!363971 result!320952) b_and!342753))))

(declare-fun e!3043400 () Bool)

(assert (=> b!4868188 (= e!3043400 (and tp!1369556 tp!1369557))))

(declare-fun b!4868187 () Bool)

(declare-fun e!3043398 () Bool)

(declare-fun tp!1369555 () Bool)

(assert (=> b!4868187 (= e!3043398 (and tp!1369555 (inv!71833 (tag!8894 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (inv!71838 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) e!3043400))))

(declare-fun b!4868186 () Bool)

(declare-fun e!3043399 () Bool)

(declare-fun tp!1369554 () Bool)

(assert (=> b!4868186 (= e!3043399 (and e!3043398 tp!1369554))))

(assert (=> b!4866537 (= tp!1369313 e!3043399)))

(assert (= b!4868187 b!4868188))

(assert (= b!4868186 b!4868187))

(assert (= (and b!4866537 ((_ is Cons!55932) (t!363818 (t!363818 (t!363818 rules!1248))))) b!4868186))

(declare-fun m!5868008 () Bool)

(assert (=> b!4868187 m!5868008))

(declare-fun m!5868010 () Bool)

(assert (=> b!4868187 m!5868010))

(declare-fun b!4868190 () Bool)

(declare-fun e!3043402 () Bool)

(declare-fun tp!1369558 () Bool)

(declare-fun tp!1369559 () Bool)

(assert (=> b!4868190 (= e!3043402 (and tp!1369558 tp!1369559))))

(declare-fun b!4868189 () Bool)

(assert (=> b!4868189 (= e!3043402 tp_is_empty!35659)))

(declare-fun b!4868191 () Bool)

(declare-fun tp!1369560 () Bool)

(assert (=> b!4868191 (= e!3043402 tp!1369560)))

(assert (=> b!4866538 (= tp!1369314 e!3043402)))

(declare-fun b!4868192 () Bool)

(declare-fun tp!1369561 () Bool)

(declare-fun tp!1369562 () Bool)

(assert (=> b!4868192 (= e!3043402 (and tp!1369561 tp!1369562))))

(assert (= (and b!4866538 ((_ is ElementMatch!13105) (regex!8030 (h!62380 (t!363818 (t!363818 rules!1248)))))) b!4868189))

(assert (= (and b!4866538 ((_ is Concat!21446) (regex!8030 (h!62380 (t!363818 (t!363818 rules!1248)))))) b!4868190))

(assert (= (and b!4866538 ((_ is Star!13105) (regex!8030 (h!62380 (t!363818 (t!363818 rules!1248)))))) b!4868191))

(assert (= (and b!4866538 ((_ is Union!13105) (regex!8030 (h!62380 (t!363818 (t!363818 rules!1248)))))) b!4868192))

(declare-fun b!4868193 () Bool)

(declare-fun e!3043403 () Bool)

(declare-fun tp!1369563 () Bool)

(assert (=> b!4868193 (= e!3043403 (and tp_is_empty!35659 tp!1369563))))

(assert (=> b!4866518 (= tp!1369293 e!3043403)))

(assert (= (and b!4866518 ((_ is Cons!55931) (innerList!14657 (xs!17875 (right!40954 (c!827478 input!661)))))) b!4868193))

(declare-fun b!4868194 () Bool)

(declare-fun e!3043404 () Bool)

(declare-fun tp!1369564 () Bool)

(assert (=> b!4868194 (= e!3043404 (and tp_is_empty!35659 tp!1369564))))

(assert (=> b!4866523 (= tp!1369296 e!3043404)))

(assert (= (and b!4866523 ((_ is Cons!55931) (t!363817 (innerList!14657 (xs!17875 (c!827478 totalInput!332)))))) b!4868194))

(declare-fun b!4868195 () Bool)

(declare-fun e!3043406 () Bool)

(declare-fun tp!1369565 () Bool)

(declare-fun tp!1369566 () Bool)

(assert (=> b!4868195 (= e!3043406 (and (inv!71837 (left!40624 (left!40624 (right!40954 (c!827478 input!661))))) tp!1369566 (inv!71837 (right!40954 (left!40624 (right!40954 (c!827478 input!661))))) tp!1369565))))

(declare-fun b!4868197 () Bool)

(declare-fun e!3043405 () Bool)

(declare-fun tp!1369567 () Bool)

(assert (=> b!4868197 (= e!3043405 tp!1369567)))

(declare-fun b!4868196 () Bool)

(assert (=> b!4868196 (= e!3043406 (and (inv!71845 (xs!17875 (left!40624 (right!40954 (c!827478 input!661))))) e!3043405))))

(assert (=> b!4866516 (= tp!1369292 (and (inv!71837 (left!40624 (right!40954 (c!827478 input!661)))) e!3043406))))

(assert (= (and b!4866516 ((_ is Node!14569) (left!40624 (right!40954 (c!827478 input!661))))) b!4868195))

(assert (= b!4868196 b!4868197))

(assert (= (and b!4866516 ((_ is Leaf!24295) (left!40624 (right!40954 (c!827478 input!661))))) b!4868196))

(declare-fun m!5868012 () Bool)

(assert (=> b!4868195 m!5868012))

(declare-fun m!5868014 () Bool)

(assert (=> b!4868195 m!5868014))

(declare-fun m!5868016 () Bool)

(assert (=> b!4868196 m!5868016))

(assert (=> b!4866516 m!5865142))

(declare-fun e!3043408 () Bool)

(declare-fun b!4868198 () Bool)

(declare-fun tp!1369569 () Bool)

(declare-fun tp!1369568 () Bool)

(assert (=> b!4868198 (= e!3043408 (and (inv!71837 (left!40624 (right!40954 (right!40954 (c!827478 input!661))))) tp!1369569 (inv!71837 (right!40954 (right!40954 (right!40954 (c!827478 input!661))))) tp!1369568))))

(declare-fun b!4868200 () Bool)

(declare-fun e!3043407 () Bool)

(declare-fun tp!1369570 () Bool)

(assert (=> b!4868200 (= e!3043407 tp!1369570)))

(declare-fun b!4868199 () Bool)

(assert (=> b!4868199 (= e!3043408 (and (inv!71845 (xs!17875 (right!40954 (right!40954 (c!827478 input!661))))) e!3043407))))

(assert (=> b!4866516 (= tp!1369291 (and (inv!71837 (right!40954 (right!40954 (c!827478 input!661)))) e!3043408))))

(assert (= (and b!4866516 ((_ is Node!14569) (right!40954 (right!40954 (c!827478 input!661))))) b!4868198))

(assert (= b!4868199 b!4868200))

(assert (= (and b!4866516 ((_ is Leaf!24295) (right!40954 (right!40954 (c!827478 input!661))))) b!4868199))

(declare-fun m!5868018 () Bool)

(assert (=> b!4868198 m!5868018))

(declare-fun m!5868020 () Bool)

(assert (=> b!4868198 m!5868020))

(declare-fun m!5868022 () Bool)

(assert (=> b!4868199 m!5868022))

(assert (=> b!4866516 m!5865144))

(declare-fun tp!1369572 () Bool)

(declare-fun e!3043410 () Bool)

(declare-fun b!4868201 () Bool)

(declare-fun tp!1369571 () Bool)

(assert (=> b!4868201 (= e!3043410 (and (inv!71837 (left!40624 (left!40624 (left!40624 (c!827478 totalInput!332))))) tp!1369572 (inv!71837 (right!40954 (left!40624 (left!40624 (c!827478 totalInput!332))))) tp!1369571))))

(declare-fun b!4868203 () Bool)

(declare-fun e!3043409 () Bool)

(declare-fun tp!1369573 () Bool)

(assert (=> b!4868203 (= e!3043409 tp!1369573)))

(declare-fun b!4868202 () Bool)

(assert (=> b!4868202 (= e!3043410 (and (inv!71845 (xs!17875 (left!40624 (left!40624 (c!827478 totalInput!332))))) e!3043409))))

(assert (=> b!4866507 (= tp!1369283 (and (inv!71837 (left!40624 (left!40624 (c!827478 totalInput!332)))) e!3043410))))

(assert (= (and b!4866507 ((_ is Node!14569) (left!40624 (left!40624 (c!827478 totalInput!332))))) b!4868201))

(assert (= b!4868202 b!4868203))

(assert (= (and b!4866507 ((_ is Leaf!24295) (left!40624 (left!40624 (c!827478 totalInput!332))))) b!4868202))

(declare-fun m!5868024 () Bool)

(assert (=> b!4868201 m!5868024))

(declare-fun m!5868026 () Bool)

(assert (=> b!4868201 m!5868026))

(declare-fun m!5868028 () Bool)

(assert (=> b!4868202 m!5868028))

(assert (=> b!4866507 m!5865124))

(declare-fun e!3043412 () Bool)

(declare-fun b!4868204 () Bool)

(declare-fun tp!1369575 () Bool)

(declare-fun tp!1369574 () Bool)

(assert (=> b!4868204 (= e!3043412 (and (inv!71837 (left!40624 (right!40954 (left!40624 (c!827478 totalInput!332))))) tp!1369575 (inv!71837 (right!40954 (right!40954 (left!40624 (c!827478 totalInput!332))))) tp!1369574))))

(declare-fun b!4868206 () Bool)

(declare-fun e!3043411 () Bool)

(declare-fun tp!1369576 () Bool)

(assert (=> b!4868206 (= e!3043411 tp!1369576)))

(declare-fun b!4868205 () Bool)

(assert (=> b!4868205 (= e!3043412 (and (inv!71845 (xs!17875 (right!40954 (left!40624 (c!827478 totalInput!332))))) e!3043411))))

(assert (=> b!4866507 (= tp!1369282 (and (inv!71837 (right!40954 (left!40624 (c!827478 totalInput!332)))) e!3043412))))

(assert (= (and b!4866507 ((_ is Node!14569) (right!40954 (left!40624 (c!827478 totalInput!332))))) b!4868204))

(assert (= b!4868205 b!4868206))

(assert (= (and b!4866507 ((_ is Leaf!24295) (right!40954 (left!40624 (c!827478 totalInput!332))))) b!4868205))

(declare-fun m!5868030 () Bool)

(assert (=> b!4868204 m!5868030))

(declare-fun m!5868032 () Bool)

(assert (=> b!4868204 m!5868032))

(declare-fun m!5868034 () Bool)

(assert (=> b!4868205 m!5868034))

(assert (=> b!4866507 m!5865126))

(declare-fun b!4868208 () Bool)

(declare-fun e!3043413 () Bool)

(declare-fun tp!1369577 () Bool)

(declare-fun tp!1369578 () Bool)

(assert (=> b!4868208 (= e!3043413 (and tp!1369577 tp!1369578))))

(declare-fun b!4868207 () Bool)

(assert (=> b!4868207 (= e!3043413 tp_is_empty!35659)))

(declare-fun b!4868209 () Bool)

(declare-fun tp!1369579 () Bool)

(assert (=> b!4868209 (= e!3043413 tp!1369579)))

(assert (=> b!4866545 (= tp!1369322 e!3043413)))

(declare-fun b!4868210 () Bool)

(declare-fun tp!1369580 () Bool)

(declare-fun tp!1369581 () Bool)

(assert (=> b!4868210 (= e!3043413 (and tp!1369580 tp!1369581))))

(assert (= (and b!4866545 ((_ is ElementMatch!13105) (regOne!26722 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868207))

(assert (= (and b!4866545 ((_ is Concat!21446) (regOne!26722 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868208))

(assert (= (and b!4866545 ((_ is Star!13105) (regOne!26722 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868209))

(assert (= (and b!4866545 ((_ is Union!13105) (regOne!26722 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868210))

(declare-fun b!4868212 () Bool)

(declare-fun e!3043414 () Bool)

(declare-fun tp!1369582 () Bool)

(declare-fun tp!1369583 () Bool)

(assert (=> b!4868212 (= e!3043414 (and tp!1369582 tp!1369583))))

(declare-fun b!4868211 () Bool)

(assert (=> b!4868211 (= e!3043414 tp_is_empty!35659)))

(declare-fun b!4868213 () Bool)

(declare-fun tp!1369584 () Bool)

(assert (=> b!4868213 (= e!3043414 tp!1369584)))

(assert (=> b!4866545 (= tp!1369323 e!3043414)))

(declare-fun b!4868214 () Bool)

(declare-fun tp!1369585 () Bool)

(declare-fun tp!1369586 () Bool)

(assert (=> b!4868214 (= e!3043414 (and tp!1369585 tp!1369586))))

(assert (= (and b!4866545 ((_ is ElementMatch!13105) (regTwo!26722 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868211))

(assert (= (and b!4866545 ((_ is Concat!21446) (regTwo!26722 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868212))

(assert (= (and b!4866545 ((_ is Star!13105) (regTwo!26722 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868213))

(assert (= (and b!4866545 ((_ is Union!13105) (regTwo!26722 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868214))

(declare-fun b!4868216 () Bool)

(declare-fun e!3043415 () Bool)

(declare-fun tp!1369587 () Bool)

(declare-fun tp!1369588 () Bool)

(assert (=> b!4868216 (= e!3043415 (and tp!1369587 tp!1369588))))

(declare-fun b!4868215 () Bool)

(assert (=> b!4868215 (= e!3043415 tp_is_empty!35659)))

(declare-fun b!4868217 () Bool)

(declare-fun tp!1369589 () Bool)

(assert (=> b!4868217 (= e!3043415 tp!1369589)))

(assert (=> b!4866531 (= tp!1369305 e!3043415)))

(declare-fun b!4868218 () Bool)

(declare-fun tp!1369590 () Bool)

(declare-fun tp!1369591 () Bool)

(assert (=> b!4868218 (= e!3043415 (and tp!1369590 tp!1369591))))

(assert (= (and b!4866531 ((_ is ElementMatch!13105) (regOne!26723 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868215))

(assert (= (and b!4866531 ((_ is Concat!21446) (regOne!26723 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868216))

(assert (= (and b!4866531 ((_ is Star!13105) (regOne!26723 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868217))

(assert (= (and b!4866531 ((_ is Union!13105) (regOne!26723 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868218))

(declare-fun b!4868220 () Bool)

(declare-fun e!3043416 () Bool)

(declare-fun tp!1369592 () Bool)

(declare-fun tp!1369593 () Bool)

(assert (=> b!4868220 (= e!3043416 (and tp!1369592 tp!1369593))))

(declare-fun b!4868219 () Bool)

(assert (=> b!4868219 (= e!3043416 tp_is_empty!35659)))

(declare-fun b!4868221 () Bool)

(declare-fun tp!1369594 () Bool)

(assert (=> b!4868221 (= e!3043416 tp!1369594)))

(assert (=> b!4866531 (= tp!1369306 e!3043416)))

(declare-fun b!4868222 () Bool)

(declare-fun tp!1369595 () Bool)

(declare-fun tp!1369596 () Bool)

(assert (=> b!4868222 (= e!3043416 (and tp!1369595 tp!1369596))))

(assert (= (and b!4866531 ((_ is ElementMatch!13105) (regTwo!26723 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868219))

(assert (= (and b!4866531 ((_ is Concat!21446) (regTwo!26723 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868220))

(assert (= (and b!4866531 ((_ is Star!13105) (regTwo!26723 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868221))

(assert (= (and b!4866531 ((_ is Union!13105) (regTwo!26723 (regTwo!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868222))

(declare-fun b!4868223 () Bool)

(declare-fun e!3043417 () Bool)

(declare-fun tp!1369597 () Bool)

(assert (=> b!4868223 (= e!3043417 (and tp_is_empty!35659 tp!1369597))))

(assert (=> b!4866509 (= tp!1369284 e!3043417)))

(assert (= (and b!4866509 ((_ is Cons!55931) (innerList!14657 (xs!17875 (left!40624 (c!827478 totalInput!332)))))) b!4868223))

(declare-fun b!4868225 () Bool)

(declare-fun e!3043418 () Bool)

(declare-fun tp!1369598 () Bool)

(declare-fun tp!1369599 () Bool)

(assert (=> b!4868225 (= e!3043418 (and tp!1369598 tp!1369599))))

(declare-fun b!4868224 () Bool)

(assert (=> b!4868224 (= e!3043418 tp_is_empty!35659)))

(declare-fun b!4868226 () Bool)

(declare-fun tp!1369600 () Bool)

(assert (=> b!4868226 (= e!3043418 tp!1369600)))

(assert (=> b!4866547 (= tp!1369325 e!3043418)))

(declare-fun b!4868227 () Bool)

(declare-fun tp!1369601 () Bool)

(declare-fun tp!1369602 () Bool)

(assert (=> b!4868227 (= e!3043418 (and tp!1369601 tp!1369602))))

(assert (= (and b!4866547 ((_ is ElementMatch!13105) (regOne!26723 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868224))

(assert (= (and b!4866547 ((_ is Concat!21446) (regOne!26723 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868225))

(assert (= (and b!4866547 ((_ is Star!13105) (regOne!26723 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868226))

(assert (= (and b!4866547 ((_ is Union!13105) (regOne!26723 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868227))

(declare-fun b!4868229 () Bool)

(declare-fun e!3043419 () Bool)

(declare-fun tp!1369603 () Bool)

(declare-fun tp!1369604 () Bool)

(assert (=> b!4868229 (= e!3043419 (and tp!1369603 tp!1369604))))

(declare-fun b!4868228 () Bool)

(assert (=> b!4868228 (= e!3043419 tp_is_empty!35659)))

(declare-fun b!4868230 () Bool)

(declare-fun tp!1369605 () Bool)

(assert (=> b!4868230 (= e!3043419 tp!1369605)))

(assert (=> b!4866547 (= tp!1369326 e!3043419)))

(declare-fun b!4868231 () Bool)

(declare-fun tp!1369606 () Bool)

(declare-fun tp!1369607 () Bool)

(assert (=> b!4868231 (= e!3043419 (and tp!1369606 tp!1369607))))

(assert (= (and b!4866547 ((_ is ElementMatch!13105) (regTwo!26723 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868228))

(assert (= (and b!4866547 ((_ is Concat!21446) (regTwo!26723 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868229))

(assert (= (and b!4866547 ((_ is Star!13105) (regTwo!26723 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868230))

(assert (= (and b!4866547 ((_ is Union!13105) (regTwo!26723 (regOne!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868231))

(declare-fun tp!1369608 () Bool)

(declare-fun tp!1369609 () Bool)

(declare-fun b!4868232 () Bool)

(declare-fun e!3043421 () Bool)

(assert (=> b!4868232 (= e!3043421 (and (inv!71837 (left!40624 (left!40624 (left!40624 (c!827478 input!661))))) tp!1369609 (inv!71837 (right!40954 (left!40624 (left!40624 (c!827478 input!661))))) tp!1369608))))

(declare-fun b!4868234 () Bool)

(declare-fun e!3043420 () Bool)

(declare-fun tp!1369610 () Bool)

(assert (=> b!4868234 (= e!3043420 tp!1369610)))

(declare-fun b!4868233 () Bool)

(assert (=> b!4868233 (= e!3043421 (and (inv!71845 (xs!17875 (left!40624 (left!40624 (c!827478 input!661))))) e!3043420))))

(assert (=> b!4866513 (= tp!1369289 (and (inv!71837 (left!40624 (left!40624 (c!827478 input!661)))) e!3043421))))

(assert (= (and b!4866513 ((_ is Node!14569) (left!40624 (left!40624 (c!827478 input!661))))) b!4868232))

(assert (= b!4868233 b!4868234))

(assert (= (and b!4866513 ((_ is Leaf!24295) (left!40624 (left!40624 (c!827478 input!661))))) b!4868233))

(declare-fun m!5868036 () Bool)

(assert (=> b!4868232 m!5868036))

(declare-fun m!5868038 () Bool)

(assert (=> b!4868232 m!5868038))

(declare-fun m!5868040 () Bool)

(assert (=> b!4868233 m!5868040))

(assert (=> b!4866513 m!5865136))

(declare-fun b!4868235 () Bool)

(declare-fun tp!1369612 () Bool)

(declare-fun e!3043423 () Bool)

(declare-fun tp!1369611 () Bool)

(assert (=> b!4868235 (= e!3043423 (and (inv!71837 (left!40624 (right!40954 (left!40624 (c!827478 input!661))))) tp!1369612 (inv!71837 (right!40954 (right!40954 (left!40624 (c!827478 input!661))))) tp!1369611))))

(declare-fun b!4868237 () Bool)

(declare-fun e!3043422 () Bool)

(declare-fun tp!1369613 () Bool)

(assert (=> b!4868237 (= e!3043422 tp!1369613)))

(declare-fun b!4868236 () Bool)

(assert (=> b!4868236 (= e!3043423 (and (inv!71845 (xs!17875 (right!40954 (left!40624 (c!827478 input!661))))) e!3043422))))

(assert (=> b!4866513 (= tp!1369288 (and (inv!71837 (right!40954 (left!40624 (c!827478 input!661)))) e!3043423))))

(assert (= (and b!4866513 ((_ is Node!14569) (right!40954 (left!40624 (c!827478 input!661))))) b!4868235))

(assert (= b!4868236 b!4868237))

(assert (= (and b!4866513 ((_ is Leaf!24295) (right!40954 (left!40624 (c!827478 input!661))))) b!4868236))

(declare-fun m!5868042 () Bool)

(assert (=> b!4868235 m!5868042))

(declare-fun m!5868044 () Bool)

(assert (=> b!4868235 m!5868044))

(declare-fun m!5868046 () Bool)

(assert (=> b!4868236 m!5868046))

(assert (=> b!4866513 m!5865138))

(declare-fun b!4868239 () Bool)

(declare-fun e!3043424 () Bool)

(declare-fun tp!1369614 () Bool)

(declare-fun tp!1369615 () Bool)

(assert (=> b!4868239 (= e!3043424 (and tp!1369614 tp!1369615))))

(declare-fun b!4868238 () Bool)

(assert (=> b!4868238 (= e!3043424 tp_is_empty!35659)))

(declare-fun b!4868240 () Bool)

(declare-fun tp!1369616 () Bool)

(assert (=> b!4868240 (= e!3043424 tp!1369616)))

(assert (=> b!4866534 (= tp!1369309 e!3043424)))

(declare-fun b!4868241 () Bool)

(declare-fun tp!1369617 () Bool)

(declare-fun tp!1369618 () Bool)

(assert (=> b!4868241 (= e!3043424 (and tp!1369617 tp!1369618))))

(assert (= (and b!4866534 ((_ is ElementMatch!13105) (reg!13434 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868238))

(assert (= (and b!4866534 ((_ is Concat!21446) (reg!13434 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868239))

(assert (= (and b!4866534 ((_ is Star!13105) (reg!13434 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868240))

(assert (= (and b!4866534 ((_ is Union!13105) (reg!13434 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868241))

(declare-fun b!4868242 () Bool)

(declare-fun e!3043425 () Bool)

(declare-fun tp!1369619 () Bool)

(assert (=> b!4868242 (= e!3043425 (and tp_is_empty!35659 tp!1369619))))

(assert (=> b!4866515 (= tp!1369290 e!3043425)))

(assert (= (and b!4866515 ((_ is Cons!55931) (innerList!14657 (xs!17875 (left!40624 (c!827478 input!661)))))) b!4868242))

(declare-fun b!4868243 () Bool)

(declare-fun e!3043426 () Bool)

(declare-fun tp!1369620 () Bool)

(assert (=> b!4868243 (= e!3043426 (and tp_is_empty!35659 tp!1369620))))

(assert (=> b!4866506 (= tp!1369281 e!3043426)))

(assert (= (and b!4866506 ((_ is Cons!55931) (innerList!14657 (xs!17875 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))))) b!4868243))

(declare-fun b!4868245 () Bool)

(declare-fun e!3043427 () Bool)

(declare-fun tp!1369621 () Bool)

(declare-fun tp!1369622 () Bool)

(assert (=> b!4868245 (= e!3043427 (and tp!1369621 tp!1369622))))

(declare-fun b!4868244 () Bool)

(assert (=> b!4868244 (= e!3043427 tp_is_empty!35659)))

(declare-fun b!4868246 () Bool)

(declare-fun tp!1369623 () Bool)

(assert (=> b!4868246 (= e!3043427 tp!1369623)))

(assert (=> b!4866525 (= tp!1369297 e!3043427)))

(declare-fun b!4868247 () Bool)

(declare-fun tp!1369624 () Bool)

(declare-fun tp!1369625 () Bool)

(assert (=> b!4868247 (= e!3043427 (and tp!1369624 tp!1369625))))

(assert (= (and b!4866525 ((_ is ElementMatch!13105) (regOne!26722 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868244))

(assert (= (and b!4866525 ((_ is Concat!21446) (regOne!26722 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868245))

(assert (= (and b!4866525 ((_ is Star!13105) (regOne!26722 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868246))

(assert (= (and b!4866525 ((_ is Union!13105) (regOne!26722 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868247))

(declare-fun b!4868249 () Bool)

(declare-fun e!3043428 () Bool)

(declare-fun tp!1369626 () Bool)

(declare-fun tp!1369627 () Bool)

(assert (=> b!4868249 (= e!3043428 (and tp!1369626 tp!1369627))))

(declare-fun b!4868248 () Bool)

(assert (=> b!4868248 (= e!3043428 tp_is_empty!35659)))

(declare-fun b!4868250 () Bool)

(declare-fun tp!1369628 () Bool)

(assert (=> b!4868250 (= e!3043428 tp!1369628)))

(assert (=> b!4866525 (= tp!1369298 e!3043428)))

(declare-fun b!4868251 () Bool)

(declare-fun tp!1369629 () Bool)

(declare-fun tp!1369630 () Bool)

(assert (=> b!4868251 (= e!3043428 (and tp!1369629 tp!1369630))))

(assert (= (and b!4866525 ((_ is ElementMatch!13105) (regTwo!26722 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868248))

(assert (= (and b!4866525 ((_ is Concat!21446) (regTwo!26722 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868249))

(assert (= (and b!4866525 ((_ is Star!13105) (regTwo!26722 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868250))

(assert (= (and b!4866525 ((_ is Union!13105) (regTwo!26722 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868251))

(declare-fun b!4868252 () Bool)

(declare-fun e!3043430 () Bool)

(declare-fun tp!1369631 () Bool)

(declare-fun tp!1369632 () Bool)

(assert (=> b!4868252 (= e!3043430 (and (inv!71837 (left!40624 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) tp!1369632 (inv!71837 (right!40954 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) tp!1369631))))

(declare-fun b!4868254 () Bool)

(declare-fun e!3043429 () Bool)

(declare-fun tp!1369633 () Bool)

(assert (=> b!4868254 (= e!3043429 tp!1369633)))

(declare-fun b!4868253 () Bool)

(assert (=> b!4868253 (= e!3043430 (and (inv!71845 (xs!17875 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) e!3043429))))

(assert (=> b!4866504 (= tp!1369280 (and (inv!71837 (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) e!3043430))))

(assert (= (and b!4866504 ((_ is Node!14569) (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) b!4868252))

(assert (= b!4868253 b!4868254))

(assert (= (and b!4866504 ((_ is Leaf!24295) (left!40624 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) b!4868253))

(declare-fun m!5868048 () Bool)

(assert (=> b!4868252 m!5868048))

(declare-fun m!5868050 () Bool)

(assert (=> b!4868252 m!5868050))

(declare-fun m!5868052 () Bool)

(assert (=> b!4868253 m!5868052))

(assert (=> b!4866504 m!5865118))

(declare-fun b!4868255 () Bool)

(declare-fun tp!1369634 () Bool)

(declare-fun e!3043432 () Bool)

(declare-fun tp!1369635 () Bool)

(assert (=> b!4868255 (= e!3043432 (and (inv!71837 (left!40624 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) tp!1369635 (inv!71837 (right!40954 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) tp!1369634))))

(declare-fun b!4868257 () Bool)

(declare-fun e!3043431 () Bool)

(declare-fun tp!1369636 () Bool)

(assert (=> b!4868257 (= e!3043431 tp!1369636)))

(declare-fun b!4868256 () Bool)

(assert (=> b!4868256 (= e!3043432 (and (inv!71845 (xs!17875 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) e!3043431))))

(assert (=> b!4866504 (= tp!1369279 (and (inv!71837 (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717))))))) e!3043432))))

(assert (= (and b!4866504 ((_ is Node!14569) (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) b!4868255))

(assert (= b!4868256 b!4868257))

(assert (= (and b!4866504 ((_ is Leaf!24295) (right!40954 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (rule!11154 (_1!33185 (v!49684 lt!1993717))))) (value!257997 (_1!33185 (v!49684 lt!1993717)))))))) b!4868256))

(declare-fun m!5868054 () Bool)

(assert (=> b!4868255 m!5868054))

(declare-fun m!5868056 () Bool)

(assert (=> b!4868255 m!5868056))

(declare-fun m!5868058 () Bool)

(assert (=> b!4868256 m!5868058))

(assert (=> b!4866504 m!5865120))

(declare-fun b!4868259 () Bool)

(declare-fun e!3043433 () Bool)

(declare-fun tp!1369637 () Bool)

(declare-fun tp!1369638 () Bool)

(assert (=> b!4868259 (= e!3043433 (and tp!1369637 tp!1369638))))

(declare-fun b!4868258 () Bool)

(assert (=> b!4868258 (= e!3043433 tp_is_empty!35659)))

(declare-fun b!4868260 () Bool)

(declare-fun tp!1369639 () Bool)

(assert (=> b!4868260 (= e!3043433 tp!1369639)))

(assert (=> b!4866533 (= tp!1369307 e!3043433)))

(declare-fun b!4868261 () Bool)

(declare-fun tp!1369640 () Bool)

(declare-fun tp!1369641 () Bool)

(assert (=> b!4868261 (= e!3043433 (and tp!1369640 tp!1369641))))

(assert (= (and b!4866533 ((_ is ElementMatch!13105) (regOne!26722 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868258))

(assert (= (and b!4866533 ((_ is Concat!21446) (regOne!26722 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868259))

(assert (= (and b!4866533 ((_ is Star!13105) (regOne!26722 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868260))

(assert (= (and b!4866533 ((_ is Union!13105) (regOne!26722 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868261))

(declare-fun b!4868263 () Bool)

(declare-fun e!3043434 () Bool)

(declare-fun tp!1369642 () Bool)

(declare-fun tp!1369643 () Bool)

(assert (=> b!4868263 (= e!3043434 (and tp!1369642 tp!1369643))))

(declare-fun b!4868262 () Bool)

(assert (=> b!4868262 (= e!3043434 tp_is_empty!35659)))

(declare-fun b!4868264 () Bool)

(declare-fun tp!1369644 () Bool)

(assert (=> b!4868264 (= e!3043434 tp!1369644)))

(assert (=> b!4866533 (= tp!1369308 e!3043434)))

(declare-fun b!4868265 () Bool)

(declare-fun tp!1369645 () Bool)

(declare-fun tp!1369646 () Bool)

(assert (=> b!4868265 (= e!3043434 (and tp!1369645 tp!1369646))))

(assert (= (and b!4866533 ((_ is ElementMatch!13105) (regTwo!26722 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868262))

(assert (= (and b!4866533 ((_ is Concat!21446) (regTwo!26722 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868263))

(assert (= (and b!4866533 ((_ is Star!13105) (regTwo!26722 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868264))

(assert (= (and b!4866533 ((_ is Union!13105) (regTwo!26722 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868265))

(declare-fun b!4868267 () Bool)

(declare-fun e!3043435 () Bool)

(declare-fun tp!1369647 () Bool)

(declare-fun tp!1369648 () Bool)

(assert (=> b!4868267 (= e!3043435 (and tp!1369647 tp!1369648))))

(declare-fun b!4868266 () Bool)

(assert (=> b!4868266 (= e!3043435 tp_is_empty!35659)))

(declare-fun b!4868268 () Bool)

(declare-fun tp!1369649 () Bool)

(assert (=> b!4868268 (= e!3043435 tp!1369649)))

(assert (=> b!4866541 (= tp!1369317 e!3043435)))

(declare-fun b!4868269 () Bool)

(declare-fun tp!1369650 () Bool)

(declare-fun tp!1369651 () Bool)

(assert (=> b!4868269 (= e!3043435 (and tp!1369650 tp!1369651))))

(assert (= (and b!4866541 ((_ is ElementMatch!13105) (regOne!26722 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868266))

(assert (= (and b!4866541 ((_ is Concat!21446) (regOne!26722 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868267))

(assert (= (and b!4866541 ((_ is Star!13105) (regOne!26722 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868268))

(assert (= (and b!4866541 ((_ is Union!13105) (regOne!26722 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868269))

(declare-fun b!4868271 () Bool)

(declare-fun e!3043436 () Bool)

(declare-fun tp!1369652 () Bool)

(declare-fun tp!1369653 () Bool)

(assert (=> b!4868271 (= e!3043436 (and tp!1369652 tp!1369653))))

(declare-fun b!4868270 () Bool)

(assert (=> b!4868270 (= e!3043436 tp_is_empty!35659)))

(declare-fun b!4868272 () Bool)

(declare-fun tp!1369654 () Bool)

(assert (=> b!4868272 (= e!3043436 tp!1369654)))

(assert (=> b!4866541 (= tp!1369318 e!3043436)))

(declare-fun b!4868273 () Bool)

(declare-fun tp!1369655 () Bool)

(declare-fun tp!1369656 () Bool)

(assert (=> b!4868273 (= e!3043436 (and tp!1369655 tp!1369656))))

(assert (= (and b!4866541 ((_ is ElementMatch!13105) (regTwo!26722 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868270))

(assert (= (and b!4866541 ((_ is Concat!21446) (regTwo!26722 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868271))

(assert (= (and b!4866541 ((_ is Star!13105) (regTwo!26722 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868272))

(assert (= (and b!4866541 ((_ is Union!13105) (regTwo!26722 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868273))

(declare-fun b!4868275 () Bool)

(declare-fun e!3043437 () Bool)

(declare-fun tp!1369657 () Bool)

(declare-fun tp!1369658 () Bool)

(assert (=> b!4868275 (= e!3043437 (and tp!1369657 tp!1369658))))

(declare-fun b!4868274 () Bool)

(assert (=> b!4868274 (= e!3043437 tp_is_empty!35659)))

(declare-fun b!4868276 () Bool)

(declare-fun tp!1369659 () Bool)

(assert (=> b!4868276 (= e!3043437 tp!1369659)))

(assert (=> b!4866527 (= tp!1369300 e!3043437)))

(declare-fun b!4868277 () Bool)

(declare-fun tp!1369660 () Bool)

(declare-fun tp!1369661 () Bool)

(assert (=> b!4868277 (= e!3043437 (and tp!1369660 tp!1369661))))

(assert (= (and b!4866527 ((_ is ElementMatch!13105) (regOne!26723 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868274))

(assert (= (and b!4866527 ((_ is Concat!21446) (regOne!26723 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868275))

(assert (= (and b!4866527 ((_ is Star!13105) (regOne!26723 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868276))

(assert (= (and b!4866527 ((_ is Union!13105) (regOne!26723 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868277))

(declare-fun b!4868279 () Bool)

(declare-fun e!3043438 () Bool)

(declare-fun tp!1369662 () Bool)

(declare-fun tp!1369663 () Bool)

(assert (=> b!4868279 (= e!3043438 (and tp!1369662 tp!1369663))))

(declare-fun b!4868278 () Bool)

(assert (=> b!4868278 (= e!3043438 tp_is_empty!35659)))

(declare-fun b!4868280 () Bool)

(declare-fun tp!1369664 () Bool)

(assert (=> b!4868280 (= e!3043438 tp!1369664)))

(assert (=> b!4866527 (= tp!1369301 e!3043438)))

(declare-fun b!4868281 () Bool)

(declare-fun tp!1369665 () Bool)

(declare-fun tp!1369666 () Bool)

(assert (=> b!4868281 (= e!3043438 (and tp!1369665 tp!1369666))))

(assert (= (and b!4866527 ((_ is ElementMatch!13105) (regTwo!26723 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868278))

(assert (= (and b!4866527 ((_ is Concat!21446) (regTwo!26723 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868279))

(assert (= (and b!4866527 ((_ is Star!13105) (regTwo!26723 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868280))

(assert (= (and b!4866527 ((_ is Union!13105) (regTwo!26723 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868281))

(declare-fun b!4868283 () Bool)

(declare-fun e!3043439 () Bool)

(declare-fun tp!1369667 () Bool)

(declare-fun tp!1369668 () Bool)

(assert (=> b!4868283 (= e!3043439 (and tp!1369667 tp!1369668))))

(declare-fun b!4868282 () Bool)

(assert (=> b!4868282 (= e!3043439 tp_is_empty!35659)))

(declare-fun b!4868284 () Bool)

(declare-fun tp!1369669 () Bool)

(assert (=> b!4868284 (= e!3043439 tp!1369669)))

(assert (=> b!4866542 (= tp!1369319 e!3043439)))

(declare-fun b!4868285 () Bool)

(declare-fun tp!1369670 () Bool)

(declare-fun tp!1369671 () Bool)

(assert (=> b!4868285 (= e!3043439 (and tp!1369670 tp!1369671))))

(assert (= (and b!4866542 ((_ is ElementMatch!13105) (reg!13434 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868282))

(assert (= (and b!4866542 ((_ is Concat!21446) (reg!13434 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868283))

(assert (= (and b!4866542 ((_ is Star!13105) (reg!13434 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868284))

(assert (= (and b!4866542 ((_ is Union!13105) (reg!13434 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868285))

(declare-fun b!4868287 () Bool)

(declare-fun e!3043440 () Bool)

(declare-fun tp!1369672 () Bool)

(declare-fun tp!1369673 () Bool)

(assert (=> b!4868287 (= e!3043440 (and tp!1369672 tp!1369673))))

(declare-fun b!4868286 () Bool)

(assert (=> b!4868286 (= e!3043440 tp_is_empty!35659)))

(declare-fun b!4868288 () Bool)

(declare-fun tp!1369674 () Bool)

(assert (=> b!4868288 (= e!3043440 tp!1369674)))

(assert (=> b!4866551 (= tp!1369330 e!3043440)))

(declare-fun b!4868289 () Bool)

(declare-fun tp!1369675 () Bool)

(declare-fun tp!1369676 () Bool)

(assert (=> b!4868289 (= e!3043440 (and tp!1369675 tp!1369676))))

(assert (= (and b!4866551 ((_ is ElementMatch!13105) (regOne!26723 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868286))

(assert (= (and b!4866551 ((_ is Concat!21446) (regOne!26723 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868287))

(assert (= (and b!4866551 ((_ is Star!13105) (regOne!26723 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868288))

(assert (= (and b!4866551 ((_ is Union!13105) (regOne!26723 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868289))

(declare-fun b!4868291 () Bool)

(declare-fun e!3043441 () Bool)

(declare-fun tp!1369677 () Bool)

(declare-fun tp!1369678 () Bool)

(assert (=> b!4868291 (= e!3043441 (and tp!1369677 tp!1369678))))

(declare-fun b!4868290 () Bool)

(assert (=> b!4868290 (= e!3043441 tp_is_empty!35659)))

(declare-fun b!4868292 () Bool)

(declare-fun tp!1369679 () Bool)

(assert (=> b!4868292 (= e!3043441 tp!1369679)))

(assert (=> b!4866551 (= tp!1369331 e!3043441)))

(declare-fun b!4868293 () Bool)

(declare-fun tp!1369680 () Bool)

(declare-fun tp!1369681 () Bool)

(assert (=> b!4868293 (= e!3043441 (and tp!1369680 tp!1369681))))

(assert (= (and b!4866551 ((_ is ElementMatch!13105) (regTwo!26723 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868290))

(assert (= (and b!4866551 ((_ is Concat!21446) (regTwo!26723 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868291))

(assert (= (and b!4866551 ((_ is Star!13105) (regTwo!26723 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868292))

(assert (= (and b!4866551 ((_ is Union!13105) (regTwo!26723 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868293))

(declare-fun b!4868295 () Bool)

(declare-fun e!3043442 () Bool)

(declare-fun tp!1369682 () Bool)

(declare-fun tp!1369683 () Bool)

(assert (=> b!4868295 (= e!3043442 (and tp!1369682 tp!1369683))))

(declare-fun b!4868294 () Bool)

(assert (=> b!4868294 (= e!3043442 tp_is_empty!35659)))

(declare-fun b!4868296 () Bool)

(declare-fun tp!1369684 () Bool)

(assert (=> b!4868296 (= e!3043442 tp!1369684)))

(assert (=> b!4866526 (= tp!1369299 e!3043442)))

(declare-fun b!4868297 () Bool)

(declare-fun tp!1369685 () Bool)

(declare-fun tp!1369686 () Bool)

(assert (=> b!4868297 (= e!3043442 (and tp!1369685 tp!1369686))))

(assert (= (and b!4866526 ((_ is ElementMatch!13105) (reg!13434 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868294))

(assert (= (and b!4866526 ((_ is Concat!21446) (reg!13434 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868295))

(assert (= (and b!4866526 ((_ is Star!13105) (reg!13434 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868296))

(assert (= (and b!4866526 ((_ is Union!13105) (reg!13434 (regOne!26722 (regex!8030 (h!62380 rules!1248)))))) b!4868297))

(declare-fun b!4868299 () Bool)

(declare-fun e!3043443 () Bool)

(declare-fun tp!1369687 () Bool)

(declare-fun tp!1369688 () Bool)

(assert (=> b!4868299 (= e!3043443 (and tp!1369687 tp!1369688))))

(declare-fun b!4868298 () Bool)

(assert (=> b!4868298 (= e!3043443 tp_is_empty!35659)))

(declare-fun b!4868300 () Bool)

(declare-fun tp!1369689 () Bool)

(assert (=> b!4868300 (= e!3043443 tp!1369689)))

(assert (=> b!4866549 (= tp!1369327 e!3043443)))

(declare-fun b!4868301 () Bool)

(declare-fun tp!1369690 () Bool)

(declare-fun tp!1369691 () Bool)

(assert (=> b!4868301 (= e!3043443 (and tp!1369690 tp!1369691))))

(assert (= (and b!4866549 ((_ is ElementMatch!13105) (regOne!26722 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868298))

(assert (= (and b!4866549 ((_ is Concat!21446) (regOne!26722 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868299))

(assert (= (and b!4866549 ((_ is Star!13105) (regOne!26722 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868300))

(assert (= (and b!4866549 ((_ is Union!13105) (regOne!26722 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868301))

(declare-fun b!4868303 () Bool)

(declare-fun e!3043444 () Bool)

(declare-fun tp!1369692 () Bool)

(declare-fun tp!1369693 () Bool)

(assert (=> b!4868303 (= e!3043444 (and tp!1369692 tp!1369693))))

(declare-fun b!4868302 () Bool)

(assert (=> b!4868302 (= e!3043444 tp_is_empty!35659)))

(declare-fun b!4868304 () Bool)

(declare-fun tp!1369694 () Bool)

(assert (=> b!4868304 (= e!3043444 tp!1369694)))

(assert (=> b!4866549 (= tp!1369328 e!3043444)))

(declare-fun b!4868305 () Bool)

(declare-fun tp!1369695 () Bool)

(declare-fun tp!1369696 () Bool)

(assert (=> b!4868305 (= e!3043444 (and tp!1369695 tp!1369696))))

(assert (= (and b!4866549 ((_ is ElementMatch!13105) (regTwo!26722 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868302))

(assert (= (and b!4866549 ((_ is Concat!21446) (regTwo!26722 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868303))

(assert (= (and b!4866549 ((_ is Star!13105) (regTwo!26722 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868304))

(assert (= (and b!4866549 ((_ is Union!13105) (regTwo!26722 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868305))

(declare-fun b!4868307 () Bool)

(declare-fun e!3043445 () Bool)

(declare-fun tp!1369697 () Bool)

(declare-fun tp!1369698 () Bool)

(assert (=> b!4868307 (= e!3043445 (and tp!1369697 tp!1369698))))

(declare-fun b!4868306 () Bool)

(assert (=> b!4868306 (= e!3043445 tp_is_empty!35659)))

(declare-fun b!4868308 () Bool)

(declare-fun tp!1369699 () Bool)

(assert (=> b!4868308 (= e!3043445 tp!1369699)))

(assert (=> b!4866535 (= tp!1369310 e!3043445)))

(declare-fun b!4868309 () Bool)

(declare-fun tp!1369700 () Bool)

(declare-fun tp!1369701 () Bool)

(assert (=> b!4868309 (= e!3043445 (and tp!1369700 tp!1369701))))

(assert (= (and b!4866535 ((_ is ElementMatch!13105) (regOne!26723 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868306))

(assert (= (and b!4866535 ((_ is Concat!21446) (regOne!26723 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868307))

(assert (= (and b!4866535 ((_ is Star!13105) (regOne!26723 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868308))

(assert (= (and b!4866535 ((_ is Union!13105) (regOne!26723 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868309))

(declare-fun b!4868311 () Bool)

(declare-fun e!3043446 () Bool)

(declare-fun tp!1369702 () Bool)

(declare-fun tp!1369703 () Bool)

(assert (=> b!4868311 (= e!3043446 (and tp!1369702 tp!1369703))))

(declare-fun b!4868310 () Bool)

(assert (=> b!4868310 (= e!3043446 tp_is_empty!35659)))

(declare-fun b!4868312 () Bool)

(declare-fun tp!1369704 () Bool)

(assert (=> b!4868312 (= e!3043446 tp!1369704)))

(assert (=> b!4866535 (= tp!1369311 e!3043446)))

(declare-fun b!4868313 () Bool)

(declare-fun tp!1369705 () Bool)

(declare-fun tp!1369706 () Bool)

(assert (=> b!4868313 (= e!3043446 (and tp!1369705 tp!1369706))))

(assert (= (and b!4866535 ((_ is ElementMatch!13105) (regTwo!26723 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868310))

(assert (= (and b!4866535 ((_ is Concat!21446) (regTwo!26723 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868311))

(assert (= (and b!4866535 ((_ is Star!13105) (regTwo!26723 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868312))

(assert (= (and b!4866535 ((_ is Union!13105) (regTwo!26723 (reg!13434 (regex!8030 (h!62380 rules!1248)))))) b!4868313))

(declare-fun b!4868315 () Bool)

(declare-fun e!3043447 () Bool)

(declare-fun tp!1369707 () Bool)

(declare-fun tp!1369708 () Bool)

(assert (=> b!4868315 (= e!3043447 (and tp!1369707 tp!1369708))))

(declare-fun b!4868314 () Bool)

(assert (=> b!4868314 (= e!3043447 tp_is_empty!35659)))

(declare-fun b!4868316 () Bool)

(declare-fun tp!1369709 () Bool)

(assert (=> b!4868316 (= e!3043447 tp!1369709)))

(assert (=> b!4866550 (= tp!1369329 e!3043447)))

(declare-fun b!4868317 () Bool)

(declare-fun tp!1369710 () Bool)

(declare-fun tp!1369711 () Bool)

(assert (=> b!4868317 (= e!3043447 (and tp!1369710 tp!1369711))))

(assert (= (and b!4866550 ((_ is ElementMatch!13105) (reg!13434 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868314))

(assert (= (and b!4866550 ((_ is Concat!21446) (reg!13434 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868315))

(assert (= (and b!4866550 ((_ is Star!13105) (reg!13434 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868316))

(assert (= (and b!4866550 ((_ is Union!13105) (reg!13434 (regTwo!26723 (regex!8030 (h!62380 rules!1248)))))) b!4868317))

(declare-fun tp!1369713 () Bool)

(declare-fun b!4868318 () Bool)

(declare-fun tp!1369712 () Bool)

(declare-fun e!3043449 () Bool)

(assert (=> b!4868318 (= e!3043449 (and (inv!71837 (left!40624 (left!40624 (right!40954 (c!827478 totalInput!332))))) tp!1369713 (inv!71837 (right!40954 (left!40624 (right!40954 (c!827478 totalInput!332))))) tp!1369712))))

(declare-fun b!4868320 () Bool)

(declare-fun e!3043448 () Bool)

(declare-fun tp!1369714 () Bool)

(assert (=> b!4868320 (= e!3043448 tp!1369714)))

(declare-fun b!4868319 () Bool)

(assert (=> b!4868319 (= e!3043449 (and (inv!71845 (xs!17875 (left!40624 (right!40954 (c!827478 totalInput!332))))) e!3043448))))

(assert (=> b!4866510 (= tp!1369286 (and (inv!71837 (left!40624 (right!40954 (c!827478 totalInput!332)))) e!3043449))))

(assert (= (and b!4866510 ((_ is Node!14569) (left!40624 (right!40954 (c!827478 totalInput!332))))) b!4868318))

(assert (= b!4868319 b!4868320))

(assert (= (and b!4866510 ((_ is Leaf!24295) (left!40624 (right!40954 (c!827478 totalInput!332))))) b!4868319))

(declare-fun m!5868060 () Bool)

(assert (=> b!4868318 m!5868060))

(declare-fun m!5868062 () Bool)

(assert (=> b!4868318 m!5868062))

(declare-fun m!5868064 () Bool)

(assert (=> b!4868319 m!5868064))

(assert (=> b!4866510 m!5865130))

(declare-fun b!4868321 () Bool)

(declare-fun tp!1369716 () Bool)

(declare-fun tp!1369715 () Bool)

(declare-fun e!3043451 () Bool)

(assert (=> b!4868321 (= e!3043451 (and (inv!71837 (left!40624 (right!40954 (right!40954 (c!827478 totalInput!332))))) tp!1369716 (inv!71837 (right!40954 (right!40954 (right!40954 (c!827478 totalInput!332))))) tp!1369715))))

(declare-fun b!4868323 () Bool)

(declare-fun e!3043450 () Bool)

(declare-fun tp!1369717 () Bool)

(assert (=> b!4868323 (= e!3043450 tp!1369717)))

(declare-fun b!4868322 () Bool)

(assert (=> b!4868322 (= e!3043451 (and (inv!71845 (xs!17875 (right!40954 (right!40954 (c!827478 totalInput!332))))) e!3043450))))

(assert (=> b!4866510 (= tp!1369285 (and (inv!71837 (right!40954 (right!40954 (c!827478 totalInput!332)))) e!3043451))))

(assert (= (and b!4866510 ((_ is Node!14569) (right!40954 (right!40954 (c!827478 totalInput!332))))) b!4868321))

(assert (= b!4868322 b!4868323))

(assert (= (and b!4866510 ((_ is Leaf!24295) (right!40954 (right!40954 (c!827478 totalInput!332))))) b!4868322))

(declare-fun m!5868066 () Bool)

(assert (=> b!4868321 m!5868066))

(declare-fun m!5868068 () Bool)

(assert (=> b!4868321 m!5868068))

(declare-fun m!5868070 () Bool)

(assert (=> b!4868322 m!5868070))

(assert (=> b!4866510 m!5865132))

(declare-fun b!4868324 () Bool)

(declare-fun e!3043452 () Bool)

(declare-fun tp!1369718 () Bool)

(assert (=> b!4868324 (= e!3043452 (and tp_is_empty!35659 tp!1369718))))

(assert (=> b!4866536 (= tp!1369312 e!3043452)))

(assert (= (and b!4866536 ((_ is Cons!55931) (t!363817 (innerList!14657 (xs!17875 (c!827478 input!661)))))) b!4868324))

(declare-fun b!4868326 () Bool)

(declare-fun e!3043453 () Bool)

(declare-fun tp!1369719 () Bool)

(declare-fun tp!1369720 () Bool)

(assert (=> b!4868326 (= e!3043453 (and tp!1369719 tp!1369720))))

(declare-fun b!4868325 () Bool)

(assert (=> b!4868325 (= e!3043453 tp_is_empty!35659)))

(declare-fun b!4868327 () Bool)

(declare-fun tp!1369721 () Bool)

(assert (=> b!4868327 (= e!3043453 tp!1369721)))

(assert (=> b!4866543 (= tp!1369320 e!3043453)))

(declare-fun b!4868328 () Bool)

(declare-fun tp!1369722 () Bool)

(declare-fun tp!1369723 () Bool)

(assert (=> b!4868328 (= e!3043453 (and tp!1369722 tp!1369723))))

(assert (= (and b!4866543 ((_ is ElementMatch!13105) (regOne!26723 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868325))

(assert (= (and b!4866543 ((_ is Concat!21446) (regOne!26723 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868326))

(assert (= (and b!4866543 ((_ is Star!13105) (regOne!26723 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868327))

(assert (= (and b!4866543 ((_ is Union!13105) (regOne!26723 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868328))

(declare-fun b!4868330 () Bool)

(declare-fun e!3043454 () Bool)

(declare-fun tp!1369724 () Bool)

(declare-fun tp!1369725 () Bool)

(assert (=> b!4868330 (= e!3043454 (and tp!1369724 tp!1369725))))

(declare-fun b!4868329 () Bool)

(assert (=> b!4868329 (= e!3043454 tp_is_empty!35659)))

(declare-fun b!4868331 () Bool)

(declare-fun tp!1369726 () Bool)

(assert (=> b!4868331 (= e!3043454 tp!1369726)))

(assert (=> b!4866543 (= tp!1369321 e!3043454)))

(declare-fun b!4868332 () Bool)

(declare-fun tp!1369727 () Bool)

(declare-fun tp!1369728 () Bool)

(assert (=> b!4868332 (= e!3043454 (and tp!1369727 tp!1369728))))

(assert (= (and b!4866543 ((_ is ElementMatch!13105) (regTwo!26723 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868329))

(assert (= (and b!4866543 ((_ is Concat!21446) (regTwo!26723 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868330))

(assert (= (and b!4866543 ((_ is Star!13105) (regTwo!26723 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868331))

(assert (= (and b!4866543 ((_ is Union!13105) (regTwo!26723 (regex!8030 (h!62380 (t!363818 rules!1248)))))) b!4868332))

(declare-fun b!4868333 () Bool)

(declare-fun e!3043455 () Bool)

(declare-fun tp!1369729 () Bool)

(assert (=> b!4868333 (= e!3043455 (and tp_is_empty!35659 tp!1369729))))

(assert (=> b!4866512 (= tp!1369287 e!3043455)))

(assert (= (and b!4866512 ((_ is Cons!55931) (innerList!14657 (xs!17875 (right!40954 (c!827478 totalInput!332)))))) b!4868333))

(declare-fun b_lambda!193563 () Bool)

(assert (= b_lambda!193559 (or d!1561864 b_lambda!193563)))

(declare-fun bs!1174451 () Bool)

(declare-fun d!1563144 () Bool)

(assert (= bs!1174451 (and d!1563144 d!1561864)))

(assert (=> bs!1174451 (= (dynLambda!22456 lambda!243400 (h!62380 rules!1248)) (ruleValid!3627 thiss!11777 (h!62380 rules!1248)))))

(assert (=> bs!1174451 m!5864500))

(assert (=> b!4867655 d!1563144))

(declare-fun b_lambda!193565 () Bool)

(assert (= b_lambda!193561 (or d!1562164 b_lambda!193565)))

(declare-fun bs!1174452 () Bool)

(declare-fun d!1563146 () Bool)

(assert (= bs!1174452 (and d!1563146 d!1562164)))

(assert (=> bs!1174452 (= (dynLambda!22456 lambda!243419 (h!62380 rules!1248)) (ruleValid!3627 thiss!11777 (h!62380 rules!1248)))))

(assert (=> bs!1174452 m!5864500))

(assert (=> b!4867666 d!1563146))

(declare-fun b_lambda!193567 () Bool)

(assert (= b_lambda!193551 (or b!4866446 b_lambda!193567)))

(declare-fun bs!1174453 () Bool)

(declare-fun d!1563148 () Bool)

(assert (= bs!1174453 (and d!1563148 b!4866446)))

(assert (=> bs!1174453 (= (dynLambda!22453 lambda!243413 (_1!33192 lt!1994132)) (= (list!17479 (dynLambda!22442 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (_1!33192 lt!1994132)))) (list!17479 (_1!33192 lt!1994132))))))

(declare-fun b_lambda!193577 () Bool)

(assert (=> (not b_lambda!193577) (not bs!1174453)))

(declare-fun t!363973 () Bool)

(declare-fun tb!257819 () Bool)

(assert (=> (and b!4865491 (= (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) t!363973) tb!257819))

(declare-fun e!3043456 () Bool)

(declare-fun b!4868334 () Bool)

(declare-fun tp!1369730 () Bool)

(assert (=> b!4868334 (= e!3043456 (and (inv!71837 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (_1!33192 lt!1994132))))) tp!1369730))))

(declare-fun result!320954 () Bool)

(assert (=> tb!257819 (= result!320954 (and (inv!71839 (dynLambda!22442 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (_1!33192 lt!1994132)))) e!3043456))))

(assert (= tb!257819 b!4868334))

(declare-fun m!5868072 () Bool)

(assert (=> b!4868334 m!5868072))

(declare-fun m!5868074 () Bool)

(assert (=> tb!257819 m!5868074))

(assert (=> bs!1174453 t!363973))

(declare-fun b_and!342755 () Bool)

(assert (= b_and!342745 (and (=> t!363973 result!320954) b_and!342755)))

(declare-fun t!363975 () Bool)

(declare-fun tb!257821 () Bool)

(assert (=> (and b!4865754 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) t!363975) tb!257821))

(declare-fun result!320956 () Bool)

(assert (= result!320956 result!320954))

(assert (=> bs!1174453 t!363975))

(declare-fun b_and!342757 () Bool)

(assert (= b_and!342747 (and (=> t!363975 result!320956) b_and!342757)))

(declare-fun t!363977 () Bool)

(declare-fun tb!257823 () Bool)

(assert (=> (and b!4866539 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) t!363977) tb!257823))

(declare-fun result!320958 () Bool)

(assert (= result!320958 result!320954))

(assert (=> bs!1174453 t!363977))

(declare-fun b_and!342759 () Bool)

(assert (= b_and!342749 (and (=> t!363977 result!320958) b_and!342759)))

(declare-fun t!363979 () Bool)

(declare-fun tb!257825 () Bool)

(assert (=> (and b!4868188 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) t!363979) tb!257825))

(declare-fun result!320960 () Bool)

(assert (= result!320960 result!320954))

(assert (=> bs!1174453 t!363979))

(declare-fun b_and!342761 () Bool)

(assert (= b_and!342753 (and (=> t!363979 result!320960) b_and!342761)))

(declare-fun b_lambda!193579 () Bool)

(assert (=> (not b_lambda!193579) (not bs!1174453)))

(assert (=> bs!1174453 t!363932))

(declare-fun b_and!342763 () Bool)

(assert (= b_and!342739 (and (=> t!363932 result!320916) b_and!342763)))

(assert (=> bs!1174453 t!363934))

(declare-fun b_and!342765 () Bool)

(assert (= b_and!342741 (and (=> t!363934 result!320918) b_and!342765)))

(assert (=> bs!1174453 t!363936))

(declare-fun b_and!342767 () Bool)

(assert (= b_and!342743 (and (=> t!363936 result!320920) b_and!342767)))

(assert (=> bs!1174453 t!363959))

(declare-fun b_and!342769 () Bool)

(assert (= b_and!342751 (and (=> t!363959 result!320940) b_and!342769)))

(declare-fun m!5868076 () Bool)

(assert (=> bs!1174453 m!5868076))

(declare-fun m!5868078 () Bool)

(assert (=> bs!1174453 m!5868078))

(assert (=> bs!1174453 m!5865030))

(assert (=> bs!1174453 m!5866782))

(assert (=> bs!1174453 m!5868076))

(assert (=> bs!1174453 m!5866782))

(assert (=> d!1562712 d!1563148))

(declare-fun b_lambda!193569 () Bool)

(assert (= b_lambda!193545 (or b!4866446 b_lambda!193569)))

(declare-fun bs!1174454 () Bool)

(declare-fun d!1563150 () Bool)

(assert (= bs!1174454 (and d!1563150 b!4866446)))

(assert (=> bs!1174454 (= (dynLambda!22453 lambda!243413 (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))) (= (list!17479 (dynLambda!22442 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))))) (list!17479 (seqFromList!5896 (list!17479 (_1!33192 lt!1994132))))))))

(declare-fun b_lambda!193581 () Bool)

(assert (=> (not b_lambda!193581) (not bs!1174454)))

(declare-fun t!363981 () Bool)

(declare-fun tb!257827 () Bool)

(assert (=> (and b!4865491 (= (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) t!363981) tb!257827))

(declare-fun b!4868335 () Bool)

(declare-fun tp!1369731 () Bool)

(declare-fun e!3043457 () Bool)

(assert (=> b!4868335 (= e!3043457 (and (inv!71837 (c!827478 (dynLambda!22442 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (seqFromList!5896 (list!17479 (_1!33192 lt!1994132))))))) tp!1369731))))

(declare-fun result!320962 () Bool)

(assert (=> tb!257827 (= result!320962 (and (inv!71839 (dynLambda!22442 (toChars!10752 (transformation!8030 (h!62380 rules!1248))) (dynLambda!22452 (toValue!10893 (transformation!8030 (h!62380 rules!1248))) (seqFromList!5896 (list!17479 (_1!33192 lt!1994132)))))) e!3043457))))

(assert (= tb!257827 b!4868335))

(declare-fun m!5868080 () Bool)

(assert (=> b!4868335 m!5868080))

(declare-fun m!5868082 () Bool)

(assert (=> tb!257827 m!5868082))

(assert (=> bs!1174454 t!363981))

(declare-fun b_and!342771 () Bool)

(assert (= b_and!342755 (and (=> t!363981 result!320962) b_and!342771)))

(declare-fun t!363983 () Bool)

(declare-fun tb!257829 () Bool)

(assert (=> (and b!4865754 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) t!363983) tb!257829))

(declare-fun result!320964 () Bool)

(assert (= result!320964 result!320962))

(assert (=> bs!1174454 t!363983))

(declare-fun b_and!342773 () Bool)

(assert (= b_and!342757 (and (=> t!363983 result!320964) b_and!342773)))

(declare-fun t!363985 () Bool)

(declare-fun tb!257831 () Bool)

(assert (=> (and b!4866539 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) t!363985) tb!257831))

(declare-fun result!320966 () Bool)

(assert (= result!320966 result!320962))

(assert (=> bs!1174454 t!363985))

(declare-fun b_and!342775 () Bool)

(assert (= b_and!342759 (and (=> t!363985 result!320966) b_and!342775)))

(declare-fun t!363987 () Bool)

(declare-fun tb!257833 () Bool)

(assert (=> (and b!4868188 (= (toChars!10752 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toChars!10752 (transformation!8030 (h!62380 rules!1248)))) t!363987) tb!257833))

(declare-fun result!320968 () Bool)

(assert (= result!320968 result!320962))

(assert (=> bs!1174454 t!363987))

(declare-fun b_and!342777 () Bool)

(assert (= b_and!342761 (and (=> t!363987 result!320968) b_and!342777)))

(declare-fun b_lambda!193583 () Bool)

(assert (=> (not b_lambda!193583) (not bs!1174454)))

(assert (=> bs!1174454 t!363938))

(declare-fun b_and!342779 () Bool)

(assert (= b_and!342763 (and (=> t!363938 result!320922) b_and!342779)))

(assert (=> bs!1174454 t!363940))

(declare-fun b_and!342781 () Bool)

(assert (= b_and!342765 (and (=> t!363940 result!320924) b_and!342781)))

(assert (=> bs!1174454 t!363942))

(declare-fun b_and!342783 () Bool)

(assert (= b_and!342767 (and (=> t!363942 result!320926) b_and!342783)))

(assert (=> bs!1174454 t!363963))

(declare-fun b_and!342785 () Bool)

(assert (= b_and!342769 (and (=> t!363963 result!320944) b_and!342785)))

(declare-fun m!5868084 () Bool)

(assert (=> bs!1174454 m!5868084))

(declare-fun m!5868086 () Bool)

(assert (=> bs!1174454 m!5868086))

(assert (=> bs!1174454 m!5865038))

(assert (=> bs!1174454 m!5866784))

(assert (=> bs!1174454 m!5866786))

(assert (=> bs!1174454 m!5868084))

(assert (=> bs!1174454 m!5865038))

(assert (=> bs!1174454 m!5866786))

(assert (=> d!1562708 d!1563150))

(declare-fun b_lambda!193571 () Bool)

(assert (= b_lambda!193547 (or (and b!4865491 b_free!130627) (and b!4865754 b_free!130635 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (and b!4866539 b_free!130643 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (and b!4868188 b_free!130651 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) b_lambda!193571)))

(declare-fun b_lambda!193573 () Bool)

(assert (= b_lambda!193549 (or (and b!4865491 b_free!130627) (and b!4865754 b_free!130635 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (and b!4866539 b_free!130643 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (and b!4868188 b_free!130651 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) b_lambda!193573)))

(declare-fun b_lambda!193575 () Bool)

(assert (= b_lambda!193553 (or (and b!4865491 b_free!130627) (and b!4865754 b_free!130635 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 rules!1248)))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (and b!4866539 b_free!130643 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 rules!1248))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) (and b!4868188 b_free!130651 (= (toValue!10893 (transformation!8030 (h!62380 (t!363818 (t!363818 (t!363818 rules!1248)))))) (toValue!10893 (transformation!8030 (h!62380 rules!1248))))) b_lambda!193575)))

(check-sat (not d!1562742) (not b!4868172) (not b!4867241) (not b_lambda!193583) (not b!4868181) (not bm!338049) (not d!1562640) (not b!4868233) (not b!4867658) (not b!4868113) (not d!1562800) (not b!4868087) (not b!4867639) (not d!1562624) (not b!4868088) (not tb!257819) (not b!4867591) (not b!4868029) (not b!4867982) (not b!4868190) (not b!4867724) (not b!4867996) (not d!1563090) (not b!4867237) (not b!4866516) (not b!4867878) (not b!4867814) (not b!4868247) (not b!4867965) (not b!4868067) (not b!4868210) (not d!1562758) (not b!4867964) (not b_lambda!193567) (not b!4868034) (not d!1563072) (not b!4868121) (not b!4868040) (not b!4868151) (not tb!257739) (not d!1563008) b_and!342785 (not bm!338045) (not b!4866510) (not d!1562916) (not b!4868024) (not b!4868308) (not b!4867970) (not b!4867209) (not b!4868108) (not b!4867664) (not b!4867675) (not b!4868240) (not b!4868118) (not b!4868333) (not b!4868202) (not b!4868073) (not b!4867984) (not b!4867610) (not b!4868168) (not b!4867985) (not bm!338044) (not d!1562798) (not b!4867207) (not d!1563116) (not b!4867513) (not b!4868155) (not b!4867685) (not b!4868090) (not d!1562964) (not d!1562860) (not b!4868328) (not b!4868212) (not b!4868295) (not b!4868326) (not b!4867932) (not d!1562976) (not b!4868084) (not b!4867963) (not b!4867251) (not b!4868264) (not d!1562946) (not d!1563110) (not b!4867584) (not d!1562770) (not d!1562850) (not b!4868324) (not b!4868232) (not b!4867990) (not b!4866504) (not bs!1174453) (not b!4867988) (not b!4867723) (not bm!338103) (not bm!338051) (not bm!338106) (not d!1563010) (not b!4868147) (not b!4867585) (not b!4867539) (not b!4868313) (not b!4868235) (not d!1563056) (not b!4867552) (not b!4868307) (not b!4868180) (not b!4867980) (not b!4867888) (not b!4868143) (not b!4867271) (not b_lambda!193571) (not b!4867773) (not b!4868241) (not b!4867681) (not b!4867562) (not b!4867800) (not b!4867561) (not b!4867558) (not bm!338094) (not tb!257787) (not b!4868320) (not b!4868159) (not d!1563034) (not b!4867983) (not b!4868227) (not b!4867618) (not d!1562728) (not b!4868281) (not d!1563126) (not b!4868254) (not b!4868033) (not b!4867637) (not b!4868064) (not b!4868251) (not d!1562718) (not b!4868124) (not b_next!131441) (not b!4868303) (not b!4867808) (not d!1562694) (not b_lambda!193563) (not b!4868017) b_and!342781 (not b!4867273) (not b!4868237) (not b!4867883) (not b!4868127) (not b!4868195) (not b!4867962) (not b!4867692) (not tb!257781) (not d!1562696) (not b!4868321) (not b!4867957) (not b!4867648) (not b!4867726) (not d!1562956) (not b!4867260) (not b!4867879) (not b_next!131427) (not b!4868097) (not b!4868109) (not b!4867672) (not b!4868315) (not b!4867729) (not d!1562938) (not d!1563088) (not d!1562638) (not d!1563022) (not b!4867815) (not b!4868291) (not b!4868284) (not b!4867885) (not b!4867235) (not b!4867277) b_and!342779 (not d!1562884) (not b!4867767) (not b!4867555) (not d!1562764) (not b!4868216) (not b!4868283) (not b!4867940) (not b!4868056) (not b!4867679) (not d!1562710) (not b!4866507) (not b!4868061) (not b!4868259) (not b!4868261) (not b!4868245) (not b!4867764) (not b!4868222) (not b!4868196) (not d!1562898) (not b!4867657) (not b!4868317) (not d!1562686) (not d!1562944) (not b!4866513) (not b!4868267) (not b!4868191) (not b!4867938) (not b!4867688) (not d!1562712) (not b!4867966) (not b!4867615) (not b!4867592) (not b!4867763) (not b!4868092) (not b!4867999) (not b!4867956) (not b!4868226) (not b!4868157) (not b!4868236) (not b!4867968) (not d!1562914) (not d!1562984) (not b!4868230) (not b!4868122) (not b!4867786) (not b!4868041) (not b!4867671) (not b!4867577) (not b!4868276) (not b!4867311) (not b!4867674) (not b!4868256) (not b!4867946) (not b!4867777) (not b!4868217) (not b!4868140) (not b!4867556) (not b_next!131443) (not b!4868111) (not b!4867636) (not b!4867805) (not b!4867790) (not b!4867738) (not b!4867782) (not b!4868186) (not b!4868070) (not b!4868093) (not b!4867939) (not b!4868309) (not bm!338047) (not b_lambda!193575) (not b!4867868) (not d!1563112) (not bm!338091) (not bm!338039) (not b!4867515) (not d!1562736) (not b!4868214) (not b!4867673) (not b!4867607) (not b!4868173) (not b!4868197) (not b!4867971) (not b!4867768) (not d!1562954) (not b!4867748) (not d!1562772) (not b!4867536) (not b!4868039) (not b!4868220) (not b!4868018) (not b!4868075) (not b!4867236) (not b!4867880) (not d!1562752) (not b!4868277) (not b!4868206) (not d!1562848) (not b!4868288) (not b!4867859) (not b!4867438) (not d!1562822) (not b!4868323) (not d!1563128) (not b!4868204) (not bm!338087) (not d!1562784) (not b!4868042) (not b!4868287) (not b!4868054) (not b!4867714) (not d!1563092) (not b!4868199) (not b!4867691) (not b!4868011) (not b!4868257) (not b!4868252) (not b!4867576) (not b!4868331) (not b!4867275) (not b!4868065) (not bm!338084) (not b!4867645) (not b!4867742) (not b!4868183) (not b!4867725) (not b!4868176) (not d!1562912) (not b!4867779) (not b!4867205) (not b!4867975) (not d!1563114) (not d!1562910) (not b!4867953) (not d!1563006) (not b!4867811) (not b!4868231) (not bm!338043) (not b!4867731) (not b!4867919) (not b!4868032) (not b!4868102) (not b!4867759) (not tb!257799) (not d!1562776) (not b!4868043) (not b!4867616) (not b!4867596) (not b!4868177) (not b!4868145) (not b!4868300) (not b!4868312) (not b!4867864) (not bs!1174451) (not d!1562866) (not b!4867533) (not b_lambda!193577) (not b!4867874) (not b!4868271) (not b!4867998) (not b!4867570) (not d!1562940) (not b!4867958) (not d!1562844) (not b!4868332) (not b!4868327) (not b!4867941) (not b!4867566) (not b!4868203) (not b!4868269) (not tb!257745) (not d!1562950) (not b!4867979) (not b!4868221) (not b!4867293) (not b!4868194) (not b!4867718) (not d!1562982) (not d!1562796) (not b!4867682) (not b!4868101) (not d!1563066) (not b!4868053) (not b!4867649) b_and!342775 (not b!4867598) (not b!4867717) (not b!4868185) (not d!1562774) (not b!4867660) (not b!4868311) (not b_next!131425) (not b!4868187) (not b!4867659) (not b!4867686) (not d!1562962) (not b!4867929) (not d!1562958) (not b!4868213) (not b_lambda!193569) (not b!4867775) (not b!4868165) (not b!4868192) (not b!4868154) (not b!4868268) (not b_lambda!193573) (not d!1563104) b_and!342783 (not b!4867579) (not b!4867991) (not b!4868218) (not d!1562714) (not bm!338042) (not b!4867719) (not b!4868076) (not bm!338086) (not d!1563050) (not bm!338098) (not d!1562892) (not b!4867575) (not b!4867785) (not bm!338102) (not b!4868105) (not b!4868246) (not b!4868167) (not b_lambda!193579) (not bm!338040) (not b!4867884) (not b!4868001) (not b!4867689) (not b!4868249) (not b!4867806) b_and!342773 (not b!4867581) (not d!1563102) (not b!4867635) (not b!4867711) (not b!4867716) (not b!4867922) (not b!4867976) (not b!4867945) (not b!4868319) (not b!4867728) (not b_lambda!193565) (not b!4868253) (not b!4868044) (not d!1562874) (not b!4868335) (not b!4868292) (not d!1562918) (not b!4867736) (not b!4867270) (not bm!338096) (not b!4868273) (not d!1562974) (not b!4867920) (not b!4867924) (not b!4867548) (not d!1563030) (not d!1562744) (not b!4868334) (not b!4867640) (not b!4868260) (not b!4867669) (not b!4867574) (not d!1562836) (not d!1562858) (not d!1562664) (not b!4868200) (not d!1562930) (not b!4867886) (not d!1562872) (not d!1562662) (not b!4868137) (not b!4868146) (not b!4867560) (not b!4867812) (not b!4867733) (not b!4868089) (not b!4867959) (not b!4867650) (not d!1563012) (not b!4867739) (not b!4868049) (not b!4868297) (not b!4867877) (not bm!338050) (not b!4867238) (not b!4868279) (not b!4867993) (not d!1562970) (not b!4868201) (not b!4868091) (not b!4868208) (not bm!338020) (not d!1563138) (not d!1562720) (not bm!338107) (not b!4867663) (not bm!338041) (not d!1562998) (not b!4867587) (not b!4867735) (not b!4868136) (not b!4867684) (not d!1562724) (not b!4868171) (not bm!338021) (not b!4868085) (not b!4867274) (not b!4868169) (not b!4867523) (not b!4867239) (not d!1562936) (not b_next!131417) (not b!4867593) b_and!342771 (not b!4868285) (not b!4868149) (not b!4867678) (not d!1563136) (not b!4867944) (not b!4867543) (not b!4867987) (not b!4868304) (not b!4867551) (not b!4867721) (not d!1563044) (not b!4868193) (not b_lambda!193517) (not b!4867242) (not b!4867667) (not d!1563024) (not b!4868062) (not b!4867813) (not d!1562934) (not b!4867943) (not b!4867313) (not bs!1174452) (not b!4868028) (not b!4868179) (not b!4867620) (not b!4867801) (not b!4867553) (not b!4868322) (not b!4868250) (not b!4868123) (not b!4867791) (not b!4868175) (not b!4867734) (not d!1563142) (not b!4867992) (not b!4868120) (not b!4867294) (not b!4868243) (not b_lambda!193519) (not b!4867727) (not b!4867955) (not b!4868026) (not b!4867538) (not b!4867771) (not b!4868255) (not b!4867799) (not b!4867797) (not b!4867960) (not b_next!131435) (not d!1562804) (not b!4868164) (not bm!338046) (not b!4867516) (not b!4867295) (not b_next!131433) (not d!1562708) tp_is_empty!35659 (not b!4868296) (not b!4867662) (not b!4868081) (not b!4868280) (not b!4868225) (not b!4868125) (not b!4868316) (not b!4868119) (not tb!257827) (not b!4867930) (not b!4867881) (not b!4867542) (not b!4868205) (not d!1562824) (not d!1562806) (not b_lambda!193557) (not b!4867744) (not d!1563098) (not b_lambda!193495) (not tb!257793) (not d!1562924) (not b!4868263) (not b!4867936) (not d!1563052) (not bm!338104) (not b!4867571) (not bs!1174454) (not b!4867772) (not b!4868265) (not b!4867612) (not d!1563096) (not d!1562650) (not d!1563130) (not b!4867802) (not b!4868229) (not b!4867713) (not d!1562832) (not b!4867737) (not b!4868139) (not b!4867989) (not b!4868293) (not bm!338048) (not d!1563014) b_and!342777 (not b!4867547) (not b!4867715) (not b!4867882) (not b!4868301) (not b!4867656) (not d!1563082) (not d!1562978) (not b!4868198) (not b!4867794) (not b!4867272) (not d!1562768) (not b!4868272) (not b!4867747) (not b!4867676) (not b!4867565) (not b!4867614) (not b!4867967) (not b!4867795) (not b!4867804) (not b_lambda!193581) (not d!1562632) (not b!4867954) (not b!4867803) (not d!1563122) (not b!4868318) (not b!4867583) (not d!1563080) (not b!4867934) (not b!4868100) (not b!4867690) (not b!4867278) (not b!4868289) (not b!4868184) (not b!4867780) (not bm!338105) (not b!4868223) (not b!4868014) (not b!4867994) (not b!4867986) (not b!4868275) (not b!4867942) (not b!4867661) (not b!4867622) (not b!4867644) (not b!4868299) (not b!4867981) (not b!4868057) (not b!4867578) (not b!4868242) (not b!4868071) (not b!4867758) (not b!4867776) (not b!4868038) (not b!4867606) (not d!1563100) (not b!4868209) (not b_lambda!193555) (not d!1562730) (not b!4868059) (not b!4868003) (not b!4867580) (not b!4867810) (not b!4867774) (not b!4868095) (not d!1562778) (not b!4868008) (not b!4868234) (not b!4867730) (not b!4868080) (not d!1563028) (not b!4867609) (not b!4867589) (not b!4868239) (not b!4868305) (not b!4868051) (not b_next!131419) (not d!1562814) (not b!4868330))
(check-sat b_and!342785 (not b_next!131443) b_and!342783 b_and!342773 b_and!342777 (not b_next!131419) (not b_next!131441) b_and!342781 (not b_next!131427) b_and!342779 (not b_next!131425) b_and!342775 (not b_next!131417) b_and!342771 (not b_next!131433) (not b_next!131435))
