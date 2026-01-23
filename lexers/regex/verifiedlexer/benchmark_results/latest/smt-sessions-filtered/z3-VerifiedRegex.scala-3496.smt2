; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201564 () Bool)

(assert start!201564)

(declare-fun b!2046895 () Bool)

(declare-fun b_free!57385 () Bool)

(declare-fun b_next!58089 () Bool)

(assert (=> b!2046895 (= b_free!57385 (not b_next!58089))))

(declare-fun tp!609603 () Bool)

(declare-fun b_and!163329 () Bool)

(assert (=> b!2046895 (= tp!609603 b_and!163329)))

(declare-fun b!2046928 () Bool)

(declare-fun b_free!57387 () Bool)

(declare-fun b_next!58091 () Bool)

(assert (=> b!2046928 (= b_free!57387 (not b_next!58091))))

(declare-fun tp!609606 () Bool)

(declare-fun b_and!163331 () Bool)

(assert (=> b!2046928 (= tp!609606 b_and!163331)))

(declare-fun b_free!57389 () Bool)

(declare-fun b_next!58093 () Bool)

(assert (=> b!2046928 (= b_free!57389 (not b_next!58093))))

(declare-fun tp!609599 () Bool)

(declare-fun b_and!163333 () Bool)

(assert (=> b!2046928 (= tp!609599 b_and!163333)))

(declare-fun b!2046898 () Bool)

(declare-fun b_free!57391 () Bool)

(declare-fun b_next!58095 () Bool)

(assert (=> b!2046898 (= b_free!57391 (not b_next!58095))))

(declare-fun tp!609589 () Bool)

(declare-fun b_and!163335 () Bool)

(assert (=> b!2046898 (= tp!609589 b_and!163335)))

(declare-fun b!2046888 () Bool)

(declare-fun b_free!57393 () Bool)

(declare-fun b_next!58097 () Bool)

(assert (=> b!2046888 (= b_free!57393 (not b_next!58097))))

(declare-fun tp!609578 () Bool)

(declare-fun b_and!163337 () Bool)

(assert (=> b!2046888 (= tp!609578 b_and!163337)))

(declare-fun b!2046873 () Bool)

(declare-fun b_free!57395 () Bool)

(declare-fun b_next!58099 () Bool)

(assert (=> b!2046873 (= b_free!57395 (not b_next!58099))))

(declare-fun tp!609592 () Bool)

(declare-fun b_and!163339 () Bool)

(assert (=> b!2046873 (= tp!609592 b_and!163339)))

(declare-fun b_free!57397 () Bool)

(declare-fun b_next!58101 () Bool)

(assert (=> b!2046873 (= b_free!57397 (not b_next!58101))))

(declare-fun tp!609575 () Bool)

(declare-fun b_and!163341 () Bool)

(assert (=> b!2046873 (= tp!609575 b_and!163341)))

(declare-fun b!2046925 () Bool)

(declare-fun b_free!57399 () Bool)

(declare-fun b_next!58103 () Bool)

(assert (=> b!2046925 (= b_free!57399 (not b_next!58103))))

(declare-fun tp!609601 () Bool)

(declare-fun b_and!163343 () Bool)

(assert (=> b!2046925 (= tp!609601 b_and!163343)))

(declare-fun b!2046910 () Bool)

(declare-fun b_free!57401 () Bool)

(declare-fun b_next!58105 () Bool)

(assert (=> b!2046910 (= b_free!57401 (not b_next!58105))))

(declare-fun tp!609593 () Bool)

(declare-fun b_and!163345 () Bool)

(assert (=> b!2046910 (= tp!609593 b_and!163345)))

(declare-fun b!2046893 () Bool)

(declare-fun b_free!57403 () Bool)

(declare-fun b_next!58107 () Bool)

(assert (=> b!2046893 (= b_free!57403 (not b_next!58107))))

(declare-fun tp!609566 () Bool)

(declare-fun b_and!163347 () Bool)

(assert (=> b!2046893 (= tp!609566 b_and!163347)))

(declare-fun b!2046916 () Bool)

(declare-fun b_free!57405 () Bool)

(declare-fun b_next!58109 () Bool)

(assert (=> b!2046916 (= b_free!57405 (not b_next!58109))))

(declare-fun tp!609584 () Bool)

(declare-fun b_and!163349 () Bool)

(assert (=> b!2046916 (= tp!609584 b_and!163349)))

(declare-fun b_free!57407 () Bool)

(declare-fun b_next!58111 () Bool)

(assert (=> b!2046916 (= b_free!57407 (not b_next!58111))))

(declare-fun tp!609567 () Bool)

(declare-fun b_and!163351 () Bool)

(assert (=> b!2046916 (= tp!609567 b_and!163351)))

(declare-fun b!2046872 () Bool)

(declare-fun b_free!57409 () Bool)

(declare-fun b_next!58113 () Bool)

(assert (=> b!2046872 (= b_free!57409 (not b_next!58113))))

(declare-fun tp!609565 () Bool)

(declare-fun b_and!163353 () Bool)

(assert (=> b!2046872 (= tp!609565 b_and!163353)))

(declare-fun b!2046899 () Bool)

(declare-fun b_free!57411 () Bool)

(declare-fun b_next!58115 () Bool)

(assert (=> b!2046899 (= b_free!57411 (not b_next!58115))))

(declare-fun tp!609569 () Bool)

(declare-fun b_and!163355 () Bool)

(assert (=> b!2046899 (= tp!609569 b_and!163355)))

(declare-fun mapIsEmpty!9414 () Bool)

(declare-fun mapRes!9414 () Bool)

(assert (=> mapIsEmpty!9414 mapRes!9414))

(declare-fun tp!609571 () Bool)

(declare-fun b!2046866 () Bool)

(declare-fun e!1293626 () Bool)

(declare-datatypes ((List!22590 0))(
  ( (Nil!22506) (Cons!22506 (h!27907 (_ BitVec 16)) (t!191710 List!22590)) )
))
(declare-datatypes ((TokenValue!4167 0))(
  ( (FloatLiteralValue!8334 (text!29614 List!22590)) (TokenValueExt!4166 (__x!14016 Int)) (Broken!20835 (value!126510 List!22590)) (Object!4250) (End!4167) (Def!4167) (Underscore!4167) (Match!4167) (Else!4167) (Error!4167) (Case!4167) (If!4167) (Extends!4167) (Abstract!4167) (Class!4167) (Val!4167) (DelimiterValue!8334 (del!4227 List!22590)) (KeywordValue!4173 (value!126511 List!22590)) (CommentValue!8334 (value!126512 List!22590)) (WhitespaceValue!8334 (value!126513 List!22590)) (IndentationValue!4167 (value!126514 List!22590)) (String!26026) (Int32!4167) (Broken!20836 (value!126515 List!22590)) (Boolean!4168) (Unit!37060) (OperatorValue!4170 (op!4227 List!22590)) (IdentifierValue!8334 (value!126516 List!22590)) (IdentifierValue!8335 (value!126517 List!22590)) (WhitespaceValue!8335 (value!126518 List!22590)) (True!8334) (False!8334) (Broken!20837 (value!126519 List!22590)) (Broken!20838 (value!126520 List!22590)) (True!8335) (RightBrace!4167) (RightBracket!4167) (Colon!4167) (Null!4167) (Comma!4167) (LeftBracket!4167) (False!8335) (LeftBrace!4167) (ImaginaryLiteralValue!4167 (text!29615 List!22590)) (StringLiteralValue!12501 (value!126521 List!22590)) (EOFValue!4167 (value!126522 List!22590)) (IdentValue!4167 (value!126523 List!22590)) (DelimiterValue!8335 (value!126524 List!22590)) (DedentValue!4167 (value!126525 List!22590)) (NewLineValue!4167 (value!126526 List!22590)) (IntegerValue!12501 (value!126527 (_ BitVec 32)) (text!29616 List!22590)) (IntegerValue!12502 (value!126528 Int) (text!29617 List!22590)) (Times!4167) (Or!4167) (Equal!4167) (Minus!4167) (Broken!20839 (value!126529 List!22590)) (And!4167) (Div!4167) (LessEqual!4167) (Mod!4167) (Concat!9626) (Not!4167) (Plus!4167) (SpaceValue!4167 (value!126530 List!22590)) (IntegerValue!12503 (value!126531 Int) (text!29618 List!22590)) (StringLiteralValue!12502 (text!29619 List!22590)) (FloatLiteralValue!8335 (text!29620 List!22590)) (BytesLiteralValue!4167 (value!126532 List!22590)) (CommentValue!8335 (value!126533 List!22590)) (StringLiteralValue!12503 (value!126534 List!22590)) (ErrorTokenValue!4167 (msg!4228 List!22590)) )
))
(declare-datatypes ((C!11064 0))(
  ( (C!11065 (val!6518 Int)) )
))
(declare-datatypes ((List!22591 0))(
  ( (Nil!22507) (Cons!22507 (h!27908 C!11064) (t!191711 List!22591)) )
))
(declare-datatypes ((IArray!15077 0))(
  ( (IArray!15078 (innerList!7596 List!22591)) )
))
(declare-datatypes ((Conc!7536 0))(
  ( (Node!7536 (left!17840 Conc!7536) (right!18170 Conc!7536) (csize!15302 Int) (cheight!7747 Int)) (Leaf!11033 (xs!10444 IArray!15077) (csize!15303 Int)) (Empty!7536) )
))
(declare-datatypes ((BalanceConc!14834 0))(
  ( (BalanceConc!14835 (c!331182 Conc!7536)) )
))
(declare-datatypes ((Regex!5459 0))(
  ( (ElementMatch!5459 (c!331183 C!11064)) (Concat!9627 (regOne!11430 Regex!5459) (regTwo!11430 Regex!5459)) (EmptyExpr!5459) (Star!5459 (reg!5788 Regex!5459)) (EmptyLang!5459) (Union!5459 (regOne!11431 Regex!5459) (regTwo!11431 Regex!5459)) )
))
(declare-datatypes ((String!26027 0))(
  ( (String!26028 (value!126535 String)) )
))
(declare-datatypes ((TokenValueInjection!7918 0))(
  ( (TokenValueInjection!7919 (toValue!5714 Int) (toChars!5573 Int)) )
))
(declare-datatypes ((Rule!7862 0))(
  ( (Rule!7863 (regex!4031 Regex!5459) (tag!4521 String!26027) (isSeparator!4031 Bool) (transformation!4031 TokenValueInjection!7918)) )
))
(declare-datatypes ((List!22592 0))(
  ( (Nil!22508) (Cons!22508 (h!27909 Rule!7862) (t!191712 List!22592)) )
))
(declare-fun rules!1563 () List!22592)

(declare-fun e!1293631 () Bool)

(declare-fun inv!29858 (String!26027) Bool)

(declare-fun inv!29863 (TokenValueInjection!7918) Bool)

(assert (=> b!2046866 (= e!1293626 (and tp!609571 (inv!29858 (tag!4521 (h!27909 rules!1563))) (inv!29863 (transformation!4031 (h!27909 rules!1563))) e!1293631))))

(declare-fun b!2046867 () Bool)

(declare-fun e!1293663 () Bool)

(declare-fun e!1293656 () Bool)

(assert (=> b!2046867 (= e!1293663 e!1293656)))

(declare-fun e!1293610 () Bool)

(declare-datatypes ((Token!7610 0))(
  ( (Token!7611 (value!126536 TokenValue!4167) (rule!6267 Rule!7862) (size!17586 Int) (originalCharacters!4836 List!22591)) )
))
(declare-datatypes ((tuple2!21246 0))(
  ( (tuple2!21247 (_1!12147 Token!7610) (_2!12147 BalanceConc!14834)) )
))
(declare-datatypes ((Option!4711 0))(
  ( (None!4710) (Some!4710 (v!27176 tuple2!21246)) )
))
(declare-fun err!3192 () Option!4711)

(declare-fun e!1293644 () Bool)

(declare-fun b!2046868 () Bool)

(declare-fun tp!609598 () Bool)

(assert (=> b!2046868 (= e!1293644 (and tp!609598 (inv!29858 (tag!4521 (rule!6267 (_1!12147 (v!27176 err!3192))))) (inv!29863 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) e!1293610))))

(declare-fun b!2046869 () Bool)

(declare-fun e!1293606 () Bool)

(declare-fun e!1293620 () Bool)

(declare-datatypes ((List!22593 0))(
  ( (Nil!22509) (Cons!22509 (h!27910 Regex!5459) (t!191713 List!22593)) )
))
(declare-datatypes ((Context!2058 0))(
  ( (Context!2059 (exprs!1529 List!22593)) )
))
(declare-datatypes ((tuple3!2120 0))(
  ( (tuple3!2121 (_1!12148 Regex!5459) (_2!12148 Context!2058) (_3!1524 C!11064)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21248 0))(
  ( (tuple2!21249 (_1!12149 tuple3!2120) (_2!12149 (InoxSet Context!2058))) )
))
(declare-datatypes ((List!22594 0))(
  ( (Nil!22510) (Cons!22510 (h!27911 tuple2!21248) (t!191714 List!22594)) )
))
(declare-datatypes ((array!7003 0))(
  ( (array!7004 (arr!3112 (Array (_ BitVec 32) (_ BitVec 64))) (size!17587 (_ BitVec 32))) )
))
(declare-datatypes ((array!7005 0))(
  ( (array!7006 (arr!3113 (Array (_ BitVec 32) List!22594)) (size!17588 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4064 0))(
  ( (LongMapFixedSize!4065 (defaultEntry!2397 Int) (mask!6077 (_ BitVec 32)) (extraKeys!2280 (_ BitVec 32)) (zeroValue!2290 List!22594) (minValue!2290 List!22594) (_size!4115 (_ BitVec 32)) (_keys!2329 array!7003) (_values!2312 array!7005) (_vacant!2093 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7953 0))(
  ( (Cell!7954 (v!27177 LongMapFixedSize!4064)) )
))
(declare-datatypes ((MutLongMap!2032 0))(
  ( (LongMap!2032 (underlying!4259 Cell!7953)) (MutLongMapExt!2031 (__x!14017 Int)) )
))
(declare-fun lt!767407 () MutLongMap!2032)

(get-info :version)

(assert (=> b!2046869 (= e!1293606 (and e!1293620 ((_ is LongMap!2032) lt!767407)))))

(declare-datatypes ((Hashable!1946 0))(
  ( (HashableExt!1945 (__x!14018 Int)) )
))
(declare-datatypes ((tuple2!21250 0))(
  ( (tuple2!21251 (_1!12150 Context!2058) (_2!12150 C!11064)) )
))
(declare-datatypes ((tuple2!21252 0))(
  ( (tuple2!21253 (_1!12151 tuple2!21250) (_2!12151 (InoxSet Context!2058))) )
))
(declare-datatypes ((List!22595 0))(
  ( (Nil!22511) (Cons!22511 (h!27912 tuple2!21252) (t!191715 List!22595)) )
))
(declare-datatypes ((array!7007 0))(
  ( (array!7008 (arr!3114 (Array (_ BitVec 32) List!22595)) (size!17589 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4066 0))(
  ( (LongMapFixedSize!4067 (defaultEntry!2398 Int) (mask!6078 (_ BitVec 32)) (extraKeys!2281 (_ BitVec 32)) (zeroValue!2291 List!22595) (minValue!2291 List!22595) (_size!4116 (_ BitVec 32)) (_keys!2330 array!7003) (_values!2313 array!7007) (_vacant!2094 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7955 0))(
  ( (Cell!7956 (v!27178 LongMapFixedSize!4066)) )
))
(declare-datatypes ((MutLongMap!2033 0))(
  ( (LongMap!2033 (underlying!4260 Cell!7955)) (MutLongMapExt!2032 (__x!14019 Int)) )
))
(declare-datatypes ((Hashable!1947 0))(
  ( (HashableExt!1946 (__x!14020 Int)) )
))
(declare-datatypes ((Cell!7957 0))(
  ( (Cell!7958 (v!27179 MutLongMap!2033)) )
))
(declare-datatypes ((MutableMap!1946 0))(
  ( (MutableMapExt!1945 (__x!14021 Int)) (HashMap!1946 (underlying!4261 Cell!7957) (hashF!3869 Hashable!1947) (_size!4117 (_ BitVec 32)) (defaultValue!2108 Int)) )
))
(declare-datatypes ((CacheUp!1242 0))(
  ( (CacheUp!1243 (cache!2327 MutableMap!1946)) )
))
(declare-datatypes ((Cell!7959 0))(
  ( (Cell!7960 (v!27180 MutLongMap!2032)) )
))
(declare-datatypes ((MutableMap!1947 0))(
  ( (MutableMapExt!1946 (__x!14022 Int)) (HashMap!1947 (underlying!4262 Cell!7959) (hashF!3870 Hashable!1946) (_size!4118 (_ BitVec 32)) (defaultValue!2109 Int)) )
))
(declare-datatypes ((CacheDown!1244 0))(
  ( (CacheDown!1245 (cache!2328 MutableMap!1947)) )
))
(declare-datatypes ((tuple3!2122 0))(
  ( (tuple3!2123 (_1!12152 Option!4711) (_2!12152 CacheUp!1242) (_3!1525 CacheDown!1244)) )
))
(declare-fun err!3193 () tuple3!2122)

(assert (=> b!2046869 (= lt!767407 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))))

(declare-fun b!2046870 () Bool)

(declare-fun e!1293619 () Bool)

(declare-fun e!1293614 () Bool)

(assert (=> b!2046870 (= e!1293619 e!1293614)))

(declare-fun b!2046871 () Bool)

(declare-fun e!1293643 () Bool)

(declare-fun treated!60 () BalanceConc!14834)

(declare-fun tp!609577 () Bool)

(declare-fun inv!29864 (Conc!7536) Bool)

(assert (=> b!2046871 (= e!1293643 (and (inv!29864 (c!331182 treated!60)) tp!609577))))

(declare-fun e!1293649 () Bool)

(declare-fun e!1293636 () Bool)

(assert (=> b!2046872 (= e!1293649 (and e!1293636 tp!609565))))

(declare-fun mapNonEmpty!9414 () Bool)

(declare-fun mapRes!9417 () Bool)

(declare-fun tp!609588 () Bool)

(declare-fun tp!609564 () Bool)

(assert (=> mapNonEmpty!9414 (= mapRes!9417 (and tp!609588 tp!609564))))

(declare-fun mapValue!9415 () List!22594)

(declare-fun mapKey!9415 () (_ BitVec 32))

(declare-fun mapRest!9417 () (Array (_ BitVec 32) List!22594))

(assert (=> mapNonEmpty!9414 (= (arr!3113 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))))) (store mapRest!9417 mapKey!9415 mapValue!9415))))

(declare-fun e!1293605 () Bool)

(assert (=> b!2046873 (= e!1293605 (and tp!609592 tp!609575))))

(declare-datatypes ((LexerInterface!3642 0))(
  ( (LexerInterfaceExt!3639 (__x!14023 Int)) (Lexer!3640) )
))
(declare-fun thiss!12889 () LexerInterface!3642)

(declare-fun bm!125340 () Bool)

(declare-fun totalInput!418 () BalanceConc!14834)

(declare-fun input!986 () BalanceConc!14834)

(declare-fun call!125345 () Option!4711)

(declare-fun maxPrefixOneRuleZipperSequenceV2!123 (LexerInterface!3642 Rule!7862 BalanceConc!14834 BalanceConc!14834) Option!4711)

(assert (=> bm!125340 (= call!125345 (maxPrefixOneRuleZipperSequenceV2!123 thiss!12889 (h!27909 rules!1563) input!986 totalInput!418))))

(declare-fun b!2046874 () Bool)

(declare-fun e!1293629 () tuple3!2122)

(declare-fun e!1293666 () tuple3!2122)

(assert (=> b!2046874 (= e!1293629 e!1293666)))

(declare-fun c!331179 () Bool)

(assert (=> b!2046874 (= c!331179 ((_ is Cons!22508) rules!1563))))

(declare-fun b!2046875 () Bool)

(declare-fun e!1293653 () Bool)

(declare-fun tp!609590 () Bool)

(assert (=> b!2046875 (= e!1293653 (and (inv!29864 (c!331182 totalInput!418)) tp!609590))))

(declare-fun b!2046876 () Bool)

(declare-fun res!896347 () Bool)

(declare-fun e!1293616 () Bool)

(assert (=> b!2046876 (=> (not res!896347) (not e!1293616))))

(declare-fun isEmpty!13990 (List!22592) Bool)

(assert (=> b!2046876 (= res!896347 (not (isEmpty!13990 rules!1563)))))

(declare-fun mapIsEmpty!9415 () Bool)

(declare-fun mapRes!9416 () Bool)

(assert (=> mapIsEmpty!9415 mapRes!9416))

(declare-fun tp!609602 () Bool)

(declare-fun e!1293611 () Bool)

(declare-fun b!2046877 () Bool)

(declare-fun inv!21 (TokenValue!4167) Bool)

(assert (=> b!2046877 (= e!1293611 (and (inv!21 (value!126536 (_1!12147 (v!27176 err!3192)))) e!1293644 tp!609602))))

(declare-fun b!2046878 () Bool)

(declare-fun e!1293612 () Bool)

(declare-fun tp!609596 () Bool)

(assert (=> b!2046878 (= e!1293612 (and tp!609596 mapRes!9414))))

(declare-fun condMapEmpty!9417 () Bool)

(declare-fun mapDefault!9414 () List!22595)

(assert (=> b!2046878 (= condMapEmpty!9417 (= (arr!3114 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))))) ((as const (Array (_ BitVec 32) List!22595)) mapDefault!9414)))))

(declare-fun b!2046879 () Bool)

(declare-fun e!1293652 () Bool)

(declare-fun e!1293654 () Bool)

(assert (=> b!2046879 (= e!1293652 e!1293654)))

(declare-fun b!2046880 () Bool)

(declare-fun e!1293655 () Bool)

(declare-fun e!1293622 () Bool)

(assert (=> b!2046880 (= e!1293655 (not e!1293622))))

(declare-fun res!896345 () Bool)

(assert (=> b!2046880 (=> res!896345 e!1293622)))

(declare-fun lt!767395 () List!22591)

(declare-fun lt!767393 () List!22591)

(declare-fun isSuffix!485 (List!22591 List!22591) Bool)

(assert (=> b!2046880 (= res!896345 (not (isSuffix!485 lt!767395 lt!767393)))))

(declare-fun lt!767410 () List!22591)

(assert (=> b!2046880 (isSuffix!485 lt!767395 lt!767410)))

(declare-datatypes ((Unit!37061 0))(
  ( (Unit!37062) )
))
(declare-fun lt!767406 () Unit!37061)

(declare-fun lt!767400 () List!22591)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!386 (List!22591 List!22591) Unit!37061)

(assert (=> b!2046880 (= lt!767406 (lemmaConcatTwoListThenFSndIsSuffix!386 lt!767400 lt!767395))))

(declare-fun b!2046881 () Bool)

(declare-fun e!1293662 () Bool)

(declare-fun tp!609583 () Bool)

(assert (=> b!2046881 (= e!1293662 (and (inv!29864 (c!331182 (_2!12147 (v!27176 err!3192)))) tp!609583))))

(declare-fun b!2046882 () Bool)

(declare-fun lt!767408 () Option!4711)

(declare-fun maxPrefixZipperSequenceV2!321 (LexerInterface!3642 List!22592 BalanceConc!14834 BalanceConc!14834) Option!4711)

(assert (=> b!2046882 (= lt!767408 (maxPrefixZipperSequenceV2!321 thiss!12889 (t!191712 rules!1563) input!986 totalInput!418))))

(declare-fun lt!767411 () Option!4711)

(assert (=> b!2046882 (= lt!767411 call!125345)))

(declare-fun e!1293661 () Option!4711)

(assert (=> b!2046882 (= e!1293661 (ite (and ((_ is None!4710) lt!767411) ((_ is None!4710) lt!767408)) None!4710 (ite ((_ is None!4710) lt!767408) lt!767411 (ite ((_ is None!4710) lt!767411) lt!767408 (ite (>= (size!17586 (_1!12147 (v!27176 lt!767411))) (size!17586 (_1!12147 (v!27176 lt!767408)))) (Some!4710 (v!27176 lt!767411)) lt!767408)))))))

(declare-fun b!2046883 () Bool)

(declare-fun e!1293634 () Bool)

(declare-fun lt!767404 () Option!4711)

(assert (=> b!2046883 (= e!1293634 (= lt!767404 e!1293661))))

(declare-fun c!331181 () Bool)

(assert (=> b!2046883 (= c!331181 ((_ is Cons!22508) rules!1563))))

(declare-fun mapIsEmpty!9416 () Bool)

(assert (=> mapIsEmpty!9416 mapRes!9417))

(declare-fun b!2046884 () Bool)

(declare-fun e!1293613 () Bool)

(declare-fun e!1293630 () Bool)

(assert (=> b!2046884 (= e!1293613 e!1293630)))

(declare-fun b!2046885 () Bool)

(declare-fun res!896344 () Bool)

(declare-fun e!1293650 () Bool)

(assert (=> b!2046885 (=> (not res!896344) (not e!1293650))))

(declare-datatypes ((List!22596 0))(
  ( (Nil!22512) (Cons!22512 (h!27913 Token!7610) (t!191716 List!22596)) )
))
(declare-datatypes ((IArray!15079 0))(
  ( (IArray!15080 (innerList!7597 List!22596)) )
))
(declare-datatypes ((Conc!7537 0))(
  ( (Node!7537 (left!17841 Conc!7537) (right!18171 Conc!7537) (csize!15304 Int) (cheight!7748 Int)) (Leaf!11034 (xs!10445 IArray!15079) (csize!15305 Int)) (Empty!7537) )
))
(declare-datatypes ((BalanceConc!14836 0))(
  ( (BalanceConc!14837 (c!331184 Conc!7537)) )
))
(declare-datatypes ((tuple2!21254 0))(
  ( (tuple2!21255 (_1!12153 BalanceConc!14836) (_2!12153 BalanceConc!14834)) )
))
(declare-fun lt!767403 () tuple2!21254)

(declare-fun isEmpty!13991 (List!22591) Bool)

(declare-fun list!9211 (BalanceConc!14834) List!22591)

(assert (=> b!2046885 (= res!896344 (isEmpty!13991 (list!9211 (_2!12153 lt!767403))))))

(declare-fun b!2046886 () Bool)

(declare-fun call!125346 () tuple3!2122)

(assert (=> b!2046886 (= e!1293629 call!125346)))

(declare-fun b!2046887 () Bool)

(declare-fun e!1293632 () Bool)

(declare-fun e!1293628 () Bool)

(assert (=> b!2046887 (= e!1293632 e!1293628)))

(declare-fun tp!609586 () Bool)

(declare-fun cacheUp!562 () CacheUp!1242)

(declare-fun e!1293621 () Bool)

(declare-fun tp!609576 () Bool)

(declare-fun array_inv!2236 (array!7003) Bool)

(declare-fun array_inv!2237 (array!7007) Bool)

(assert (=> b!2046888 (= e!1293654 (and tp!609578 tp!609576 tp!609586 (array_inv!2236 (_keys!2330 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))))) (array_inv!2237 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))))) e!1293621))))

(declare-fun lt!767401 () tuple3!2122)

(declare-fun b!2046889 () Bool)

(declare-fun lt!767394 () tuple3!2122)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!20 (LexerInterface!3642 List!22592 BalanceConc!14834 BalanceConc!14834 CacheUp!1242 CacheDown!1244) tuple3!2122)

(assert (=> b!2046889 (= lt!767401 (maxPrefixZipperSequenceV2MemOnlyDeriv!20 thiss!12889 (t!191712 rules!1563) input!986 totalInput!418 (_2!12152 lt!767394) (_3!1525 lt!767394)))))

(assert (=> b!2046889 (= lt!767394 call!125346)))

(assert (=> b!2046889 (= e!1293666 (tuple3!2123 (ite (and ((_ is None!4710) (_1!12152 lt!767394)) ((_ is None!4710) (_1!12152 lt!767401))) None!4710 (ite ((_ is None!4710) (_1!12152 lt!767401)) (_1!12152 lt!767394) (ite ((_ is None!4710) (_1!12152 lt!767394)) (_1!12152 lt!767401) (ite (>= (size!17586 (_1!12147 (v!27176 (_1!12152 lt!767394)))) (size!17586 (_1!12147 (v!27176 (_1!12152 lt!767401))))) (Some!4710 (v!27176 (_1!12152 lt!767394))) (Some!4710 (v!27176 (_1!12152 lt!767401))))))) (_2!12152 lt!767401) (_3!1525 lt!767401)))))

(declare-fun b!2046890 () Bool)

(declare-fun e!1293608 () Bool)

(assert (=> b!2046890 (= e!1293608 e!1293619)))

(declare-fun b!2046891 () Bool)

(declare-fun e!1293658 () Bool)

(declare-fun lt!767398 () tuple3!2122)

(assert (=> b!2046891 (= e!1293658 (= lt!767398 e!1293629))))

(declare-fun c!331180 () Bool)

(assert (=> b!2046891 (= c!331180 (and ((_ is Cons!22508) rules!1563) ((_ is Nil!22508) (t!191712 rules!1563))))))

(declare-fun b!2046892 () Bool)

(declare-fun res!896348 () Bool)

(assert (=> b!2046892 (=> (not res!896348) (not e!1293655))))

(declare-fun cacheDown!575 () CacheDown!1244)

(declare-fun valid!1617 (CacheDown!1244) Bool)

(assert (=> b!2046892 (= res!896348 (valid!1617 cacheDown!575))))

(declare-fun mapNonEmpty!9415 () Bool)

(declare-fun tp!609582 () Bool)

(declare-fun tp!609572 () Bool)

(assert (=> mapNonEmpty!9415 (= mapRes!9414 (and tp!609582 tp!609572))))

(declare-fun mapKey!9414 () (_ BitVec 32))

(declare-fun mapValue!9416 () List!22595)

(declare-fun mapRest!9416 () (Array (_ BitVec 32) List!22595))

(assert (=> mapNonEmpty!9415 (= (arr!3114 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))))) (store mapRest!9416 mapKey!9414 mapValue!9416))))

(declare-fun e!1293638 () Bool)

(assert (=> b!2046893 (= e!1293656 (and e!1293638 tp!609566))))

(declare-fun tp!609587 () Bool)

(declare-fun b!2046894 () Bool)

(declare-fun e!1293645 () Bool)

(assert (=> b!2046894 (= e!1293645 (and tp!609587 (inv!29858 (tag!4521 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (inv!29863 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) e!1293605))))

(declare-fun tp!609581 () Bool)

(declare-fun tp!609570 () Bool)

(declare-fun e!1293604 () Bool)

(declare-fun array_inv!2238 (array!7005) Bool)

(assert (=> b!2046895 (= e!1293614 (and tp!609603 tp!609581 tp!609570 (array_inv!2236 (_keys!2329 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))))) (array_inv!2238 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))))) e!1293604))))

(declare-fun b!2046896 () Bool)

(assert (=> b!2046896 true))

(declare-fun e!1293635 () Bool)

(declare-fun e!1293648 () Bool)

(declare-fun inv!29865 (CacheUp!1242) Bool)

(declare-fun inv!29866 (CacheDown!1244) Bool)

(assert (=> b!2046896 (and e!1293648 (inv!29865 (_2!12152 err!3193)) e!1293663 (inv!29866 (_3!1525 err!3193)) e!1293635)))

(assert (=> b!2046896 (= e!1293666 err!3193)))

(declare-fun b!2046897 () Bool)

(declare-fun res!896342 () Bool)

(assert (=> b!2046897 (=> (not res!896342) (not e!1293655))))

(declare-fun lt!767397 () tuple2!21254)

(declare-fun lt!767402 () tuple2!21254)

(assert (=> b!2046897 (= res!896342 (= (list!9211 (_2!12153 lt!767397)) (list!9211 (_2!12153 lt!767402))))))

(declare-fun e!1293657 () Bool)

(declare-fun tp!609568 () Bool)

(declare-fun tp!609608 () Bool)

(assert (=> b!2046898 (= e!1293630 (and tp!609589 tp!609608 tp!609568 (array_inv!2236 (_keys!2329 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))))) (array_inv!2238 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))))) e!1293657))))

(declare-fun e!1293665 () Bool)

(declare-fun e!1293637 () Bool)

(assert (=> b!2046899 (= e!1293665 (and e!1293637 tp!609569))))

(declare-fun b!2046900 () Bool)

(declare-fun e!1293664 () Bool)

(assert (=> b!2046900 (= e!1293664 e!1293649)))

(declare-fun mapIsEmpty!9417 () Bool)

(declare-fun mapRes!9415 () Bool)

(assert (=> mapIsEmpty!9417 mapRes!9415))

(declare-fun b!2046901 () Bool)

(declare-fun e!1293659 () Bool)

(declare-fun tp!609563 () Bool)

(assert (=> b!2046901 (= e!1293659 (and (inv!29864 (c!331182 input!986)) tp!609563))))

(declare-fun res!896343 () Bool)

(assert (=> start!201564 (=> (not res!896343) (not e!1293616))))

(assert (=> start!201564 (= res!896343 ((_ is Lexer!3640) thiss!12889))))

(assert (=> start!201564 e!1293616))

(declare-fun e!1293647 () Bool)

(assert (=> start!201564 (and (inv!29866 cacheDown!575) e!1293647)))

(assert (=> start!201564 true))

(assert (=> start!201564 (and (inv!29865 cacheUp!562) e!1293664)))

(declare-fun e!1293642 () Bool)

(assert (=> start!201564 e!1293642))

(declare-fun inv!29867 (BalanceConc!14834) Bool)

(assert (=> start!201564 (and (inv!29867 totalInput!418) e!1293653)))

(assert (=> start!201564 (and (inv!29867 treated!60) e!1293643)))

(assert (=> start!201564 (and (inv!29867 input!986) e!1293659)))

(declare-fun acc!382 () BalanceConc!14836)

(declare-fun e!1293623 () Bool)

(declare-fun inv!29868 (BalanceConc!14836) Bool)

(assert (=> start!201564 (and (inv!29868 acc!382) e!1293623)))

(declare-fun b!2046902 () Bool)

(declare-fun e!1293603 () Bool)

(declare-fun rulesValidInductive!1404 (LexerInterface!3642 List!22592) Bool)

(assert (=> b!2046902 (= e!1293603 (rulesValidInductive!1404 thiss!12889 rules!1563))))

(assert (=> b!2046902 e!1293634))

(declare-fun c!331178 () Bool)

(assert (=> b!2046902 (= c!331178 (and ((_ is Cons!22508) rules!1563) ((_ is Nil!22508) (t!191712 rules!1563))))))

(assert (=> b!2046902 (= lt!767404 (maxPrefixZipperSequenceV2!321 thiss!12889 rules!1563 input!986 totalInput!418))))

(assert (=> b!2046902 e!1293658))

(declare-fun res!896351 () Bool)

(assert (=> b!2046902 (=> (not res!896351) (not e!1293658))))

(declare-fun isPrefix!2001 (List!22591 List!22591) Bool)

(assert (=> b!2046902 (= res!896351 (isPrefix!2001 lt!767395 lt!767395))))

(declare-fun lt!767405 () Unit!37061)

(declare-fun lemmaIsPrefixRefl!1319 (List!22591 List!22591) Unit!37061)

(assert (=> b!2046902 (= lt!767405 (lemmaIsPrefixRefl!1319 lt!767395 lt!767395))))

(declare-fun lt!767409 () tuple3!2122)

(assert (=> b!2046902 (= lt!767398 (maxPrefixZipperSequenceV2MemOnlyDeriv!20 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12152 lt!767409) (_3!1525 lt!767409)))))

(declare-fun lt!767412 () tuple2!21254)

(declare-fun lexRec!447 (LexerInterface!3642 List!22592 BalanceConc!14834) tuple2!21254)

(assert (=> b!2046902 (= lt!767412 (lexRec!447 thiss!12889 rules!1563 (_2!12147 (v!27176 (_1!12152 lt!767409)))))))

(declare-fun b!2046903 () Bool)

(declare-fun tp!609580 () Bool)

(assert (=> b!2046903 (= e!1293642 (and e!1293626 tp!609580))))

(declare-fun bm!125341 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!11 (LexerInterface!3642 Rule!7862 BalanceConc!14834 BalanceConc!14834 CacheUp!1242 CacheDown!1244) tuple3!2122)

(assert (=> bm!125341 (= call!125346 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!11 thiss!12889 (h!27909 rules!1563) input!986 totalInput!418 (_2!12152 lt!767409) (_3!1525 lt!767409)))))

(declare-fun b!2046904 () Bool)

(assert (=> b!2046904 true))

(declare-fun e!1293618 () Bool)

(assert (=> b!2046904 e!1293618))

(assert (=> b!2046904 (= e!1293661 err!3192)))

(declare-fun b!2046905 () Bool)

(assert (=> b!2046905 (= e!1293620 e!1293613)))

(declare-fun b!2046906 () Bool)

(declare-fun lt!767396 () MutLongMap!2033)

(assert (=> b!2046906 (= e!1293638 (and e!1293632 ((_ is LongMap!2033) lt!767396)))))

(assert (=> b!2046906 (= lt!767396 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))))

(declare-fun b!2046907 () Bool)

(declare-fun e!1293646 () Bool)

(assert (=> b!2046907 (= e!1293646 e!1293652)))

(declare-fun b!2046908 () Bool)

(declare-fun e!1293602 () Bool)

(declare-fun tp!609597 () Bool)

(assert (=> b!2046908 (= e!1293602 (and (inv!29864 (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193))))) tp!609597))))

(declare-fun b!2046909 () Bool)

(assert (=> b!2046909 (= e!1293622 e!1293603)))

(declare-fun res!896353 () Bool)

(assert (=> b!2046909 (=> res!896353 e!1293603)))

(assert (=> b!2046909 (= res!896353 (not ((_ is Some!4710) (_1!12152 lt!767409))))))

(assert (=> b!2046909 (= lt!767409 (maxPrefixZipperSequenceV2MemOnlyDeriv!20 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun tp!609604 () Bool)

(declare-fun e!1293615 () Bool)

(declare-fun tp!609595 () Bool)

(assert (=> b!2046910 (= e!1293615 (and tp!609593 tp!609604 tp!609595 (array_inv!2236 (_keys!2330 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))))) (array_inv!2237 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))))) e!1293612))))

(declare-fun b!2046911 () Bool)

(declare-fun lt!767399 () MutLongMap!2032)

(assert (=> b!2046911 (= e!1293637 (and e!1293608 ((_ is LongMap!2032) lt!767399)))))

(assert (=> b!2046911 (= lt!767399 (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))))

(declare-fun b!2046912 () Bool)

(declare-fun tp!609585 () Bool)

(declare-fun inv!29869 (Conc!7537) Bool)

(assert (=> b!2046912 (= e!1293623 (and (inv!29869 (c!331184 acc!382)) tp!609585))))

(declare-fun b!2046913 () Bool)

(declare-fun e!1293651 () Bool)

(declare-fun inv!29870 (Token!7610) Bool)

(assert (=> b!2046913 (= e!1293648 (and (inv!29870 (_1!12147 (v!27176 (_1!12152 err!3193)))) e!1293651 (inv!29867 (_2!12147 (v!27176 (_1!12152 err!3193)))) e!1293602))))

(declare-fun b!2046914 () Bool)

(declare-fun tp!609573 () Bool)

(assert (=> b!2046914 (= e!1293621 (and tp!609573 mapRes!9416))))

(declare-fun condMapEmpty!9415 () Bool)

(declare-fun mapDefault!9416 () List!22595)

(assert (=> b!2046914 (= condMapEmpty!9415 (= (arr!3114 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22595)) mapDefault!9416)))))

(declare-fun b!2046915 () Bool)

(declare-fun e!1293633 () Bool)

(assert (=> b!2046915 (= e!1293635 e!1293633)))

(assert (=> b!2046916 (= e!1293610 (and tp!609584 tp!609567))))

(declare-fun b!2046917 () Bool)

(declare-fun res!896352 () Bool)

(assert (=> b!2046917 (=> (not res!896352) (not e!1293616))))

(declare-fun rulesInvariant!3238 (LexerInterface!3642 List!22592) Bool)

(assert (=> b!2046917 (= res!896352 (rulesInvariant!3238 thiss!12889 rules!1563))))

(declare-fun b!2046918 () Bool)

(assert (=> b!2046918 (= e!1293628 e!1293615)))

(declare-fun b!2046919 () Bool)

(assert (=> b!2046919 (= e!1293618 (and (inv!29870 (_1!12147 (v!27176 err!3192))) e!1293611 (inv!29867 (_2!12147 (v!27176 err!3192))) e!1293662))))

(declare-fun mapNonEmpty!9416 () Bool)

(declare-fun tp!609600 () Bool)

(declare-fun tp!609574 () Bool)

(assert (=> mapNonEmpty!9416 (= mapRes!9416 (and tp!609600 tp!609574))))

(declare-fun mapValue!9414 () List!22595)

(declare-fun mapKey!9417 () (_ BitVec 32))

(declare-fun mapRest!9414 () (Array (_ BitVec 32) List!22595))

(assert (=> mapNonEmpty!9416 (= (arr!3114 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))))) (store mapRest!9414 mapKey!9417 mapValue!9414))))

(declare-fun b!2046920 () Bool)

(assert (=> b!2046920 (= e!1293634 (= lt!767404 call!125345))))

(declare-fun b!2046921 () Bool)

(assert (=> b!2046921 (= e!1293647 e!1293665)))

(declare-fun b!2046922 () Bool)

(declare-fun e!1293627 () Bool)

(assert (=> b!2046922 (= e!1293627 e!1293650)))

(declare-fun res!896350 () Bool)

(assert (=> b!2046922 (=> (not res!896350) (not e!1293650))))

(declare-fun list!9212 (BalanceConc!14836) List!22596)

(assert (=> b!2046922 (= res!896350 (= (list!9212 (_1!12153 lt!767403)) (list!9212 acc!382)))))

(assert (=> b!2046922 (= lt!767403 (lexRec!447 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2046923 () Bool)

(declare-fun tp!609607 () Bool)

(assert (=> b!2046923 (= e!1293604 (and tp!609607 mapRes!9415))))

(declare-fun condMapEmpty!9414 () Bool)

(declare-fun mapDefault!9417 () List!22594)

(assert (=> b!2046923 (= condMapEmpty!9414 (= (arr!3113 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22594)) mapDefault!9417)))))

(declare-fun mapNonEmpty!9417 () Bool)

(declare-fun tp!609579 () Bool)

(declare-fun tp!609594 () Bool)

(assert (=> mapNonEmpty!9417 (= mapRes!9415 (and tp!609579 tp!609594))))

(declare-fun mapValue!9417 () List!22594)

(declare-fun mapKey!9416 () (_ BitVec 32))

(declare-fun mapRest!9415 () (Array (_ BitVec 32) List!22594))

(assert (=> mapNonEmpty!9417 (= (arr!3113 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))))) (store mapRest!9415 mapKey!9416 mapValue!9417))))

(declare-fun b!2046924 () Bool)

(declare-fun tp!609591 () Bool)

(assert (=> b!2046924 (= e!1293657 (and tp!609591 mapRes!9417))))

(declare-fun condMapEmpty!9416 () Bool)

(declare-fun mapDefault!9415 () List!22594)

(assert (=> b!2046924 (= condMapEmpty!9416 (= (arr!3113 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))))) ((as const (Array (_ BitVec 32) List!22594)) mapDefault!9415)))))

(assert (=> b!2046925 (= e!1293633 (and e!1293606 tp!609601))))

(declare-fun b!2046926 () Bool)

(declare-fun lt!767413 () MutLongMap!2033)

(assert (=> b!2046926 (= e!1293636 (and e!1293646 ((_ is LongMap!2033) lt!767413)))))

(assert (=> b!2046926 (= lt!767413 (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))))

(declare-fun b!2046927 () Bool)

(assert (=> b!2046927 (= e!1293650 e!1293655)))

(declare-fun res!896341 () Bool)

(assert (=> b!2046927 (=> (not res!896341) (not e!1293655))))

(declare-fun ++!6108 (BalanceConc!14836 BalanceConc!14836) BalanceConc!14836)

(assert (=> b!2046927 (= res!896341 (= (list!9212 (_1!12153 lt!767397)) (list!9212 (++!6108 acc!382 (_1!12153 lt!767402)))))))

(assert (=> b!2046927 (= lt!767402 (lexRec!447 thiss!12889 rules!1563 input!986))))

(assert (=> b!2046927 (= lt!767397 (lexRec!447 thiss!12889 rules!1563 totalInput!418))))

(assert (=> b!2046928 (= e!1293631 (and tp!609606 tp!609599))))

(declare-fun b!2046929 () Bool)

(declare-fun res!896349 () Bool)

(assert (=> b!2046929 (=> (not res!896349) (not e!1293655))))

(declare-fun valid!1618 (CacheUp!1242) Bool)

(assert (=> b!2046929 (= res!896349 (valid!1618 cacheUp!562))))

(declare-fun tp!609605 () Bool)

(declare-fun b!2046930 () Bool)

(assert (=> b!2046930 (= e!1293651 (and (inv!21 (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193))))) e!1293645 tp!609605))))

(declare-fun b!2046931 () Bool)

(assert (=> b!2046931 (= e!1293616 e!1293627)))

(declare-fun res!896346 () Bool)

(assert (=> b!2046931 (=> (not res!896346) (not e!1293627))))

(assert (=> b!2046931 (= res!896346 (= lt!767393 lt!767410))))

(declare-fun ++!6109 (List!22591 List!22591) List!22591)

(assert (=> b!2046931 (= lt!767410 (++!6109 lt!767400 lt!767395))))

(assert (=> b!2046931 (= lt!767393 (list!9211 totalInput!418))))

(assert (=> b!2046931 (= lt!767395 (list!9211 input!986))))

(assert (=> b!2046931 (= lt!767400 (list!9211 treated!60))))

(assert (= (and start!201564 res!896343) b!2046876))

(assert (= (and b!2046876 res!896347) b!2046917))

(assert (= (and b!2046917 res!896352) b!2046931))

(assert (= (and b!2046931 res!896346) b!2046922))

(assert (= (and b!2046922 res!896350) b!2046885))

(assert (= (and b!2046885 res!896344) b!2046927))

(assert (= (and b!2046927 res!896341) b!2046897))

(assert (= (and b!2046897 res!896342) b!2046929))

(assert (= (and b!2046929 res!896349) b!2046892))

(assert (= (and b!2046892 res!896348) b!2046880))

(assert (= (and b!2046880 (not res!896345)) b!2046909))

(assert (= (and b!2046909 (not res!896353)) b!2046902))

(assert (= (and b!2046902 res!896351) b!2046891))

(assert (= (and b!2046891 c!331180) b!2046886))

(assert (= (and b!2046891 (not c!331180)) b!2046874))

(assert (= (and b!2046874 c!331179) b!2046889))

(assert (= (and b!2046874 (not c!331179)) b!2046896))

(assert (= b!2046894 b!2046873))

(assert (= b!2046930 b!2046894))

(assert (= b!2046913 b!2046930))

(assert (= b!2046913 b!2046908))

(assert (= (and b!2046896 ((_ is Some!4710) (_1!12152 err!3193))) b!2046913))

(assert (= (and b!2046878 condMapEmpty!9417) mapIsEmpty!9414))

(assert (= (and b!2046878 (not condMapEmpty!9417)) mapNonEmpty!9415))

(assert (= b!2046910 b!2046878))

(assert (= b!2046918 b!2046910))

(assert (= b!2046887 b!2046918))

(assert (= (and b!2046906 ((_ is LongMap!2033) (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))) b!2046887))

(assert (= b!2046893 b!2046906))

(assert (= (and b!2046867 ((_ is HashMap!1946) (cache!2327 (_2!12152 err!3193)))) b!2046893))

(assert (= b!2046896 b!2046867))

(assert (= (and b!2046924 condMapEmpty!9416) mapIsEmpty!9416))

(assert (= (and b!2046924 (not condMapEmpty!9416)) mapNonEmpty!9414))

(assert (= b!2046898 b!2046924))

(assert (= b!2046884 b!2046898))

(assert (= b!2046905 b!2046884))

(assert (= (and b!2046869 ((_ is LongMap!2032) (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))) b!2046905))

(assert (= b!2046925 b!2046869))

(assert (= (and b!2046915 ((_ is HashMap!1947) (cache!2328 (_3!1525 err!3193)))) b!2046925))

(assert (= b!2046896 b!2046915))

(assert (= (or b!2046886 b!2046889) bm!125341))

(assert (= (and b!2046902 c!331178) b!2046920))

(assert (= (and b!2046902 (not c!331178)) b!2046883))

(assert (= (and b!2046883 c!331181) b!2046882))

(assert (= (and b!2046883 (not c!331181)) b!2046904))

(assert (= b!2046868 b!2046916))

(assert (= b!2046877 b!2046868))

(assert (= b!2046919 b!2046877))

(assert (= b!2046919 b!2046881))

(assert (= (and b!2046904 ((_ is Some!4710) err!3192)) b!2046919))

(assert (= (or b!2046920 b!2046882) bm!125340))

(assert (= (and b!2046923 condMapEmpty!9414) mapIsEmpty!9417))

(assert (= (and b!2046923 (not condMapEmpty!9414)) mapNonEmpty!9417))

(assert (= b!2046895 b!2046923))

(assert (= b!2046870 b!2046895))

(assert (= b!2046890 b!2046870))

(assert (= (and b!2046911 ((_ is LongMap!2032) (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))) b!2046890))

(assert (= b!2046899 b!2046911))

(assert (= (and b!2046921 ((_ is HashMap!1947) (cache!2328 cacheDown!575))) b!2046899))

(assert (= start!201564 b!2046921))

(assert (= (and b!2046914 condMapEmpty!9415) mapIsEmpty!9415))

(assert (= (and b!2046914 (not condMapEmpty!9415)) mapNonEmpty!9416))

(assert (= b!2046888 b!2046914))

(assert (= b!2046879 b!2046888))

(assert (= b!2046907 b!2046879))

(assert (= (and b!2046926 ((_ is LongMap!2033) (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))) b!2046907))

(assert (= b!2046872 b!2046926))

(assert (= (and b!2046900 ((_ is HashMap!1946) (cache!2327 cacheUp!562))) b!2046872))

(assert (= start!201564 b!2046900))

(assert (= b!2046866 b!2046928))

(assert (= b!2046903 b!2046866))

(assert (= (and start!201564 ((_ is Cons!22508) rules!1563)) b!2046903))

(assert (= start!201564 b!2046875))

(assert (= start!201564 b!2046871))

(assert (= start!201564 b!2046901))

(assert (= start!201564 b!2046912))

(declare-fun m!2490399 () Bool)

(assert (=> b!2046917 m!2490399))

(declare-fun m!2490401 () Bool)

(assert (=> b!2046910 m!2490401))

(declare-fun m!2490403 () Bool)

(assert (=> b!2046910 m!2490403))

(declare-fun m!2490405 () Bool)

(assert (=> b!2046927 m!2490405))

(declare-fun m!2490407 () Bool)

(assert (=> b!2046927 m!2490407))

(assert (=> b!2046927 m!2490405))

(declare-fun m!2490409 () Bool)

(assert (=> b!2046927 m!2490409))

(declare-fun m!2490411 () Bool)

(assert (=> b!2046927 m!2490411))

(declare-fun m!2490413 () Bool)

(assert (=> b!2046927 m!2490413))

(declare-fun m!2490415 () Bool)

(assert (=> b!2046877 m!2490415))

(declare-fun m!2490417 () Bool)

(assert (=> mapNonEmpty!9414 m!2490417))

(declare-fun m!2490419 () Bool)

(assert (=> b!2046897 m!2490419))

(declare-fun m!2490421 () Bool)

(assert (=> b!2046897 m!2490421))

(declare-fun m!2490423 () Bool)

(assert (=> b!2046931 m!2490423))

(declare-fun m!2490425 () Bool)

(assert (=> b!2046931 m!2490425))

(declare-fun m!2490427 () Bool)

(assert (=> b!2046931 m!2490427))

(declare-fun m!2490429 () Bool)

(assert (=> b!2046931 m!2490429))

(declare-fun m!2490431 () Bool)

(assert (=> start!201564 m!2490431))

(declare-fun m!2490433 () Bool)

(assert (=> start!201564 m!2490433))

(declare-fun m!2490435 () Bool)

(assert (=> start!201564 m!2490435))

(declare-fun m!2490437 () Bool)

(assert (=> start!201564 m!2490437))

(declare-fun m!2490439 () Bool)

(assert (=> start!201564 m!2490439))

(declare-fun m!2490441 () Bool)

(assert (=> start!201564 m!2490441))

(declare-fun m!2490443 () Bool)

(assert (=> b!2046866 m!2490443))

(declare-fun m!2490445 () Bool)

(assert (=> b!2046866 m!2490445))

(declare-fun m!2490447 () Bool)

(assert (=> b!2046898 m!2490447))

(declare-fun m!2490449 () Bool)

(assert (=> b!2046898 m!2490449))

(declare-fun m!2490451 () Bool)

(assert (=> b!2046876 m!2490451))

(declare-fun m!2490453 () Bool)

(assert (=> b!2046896 m!2490453))

(declare-fun m!2490455 () Bool)

(assert (=> b!2046896 m!2490455))

(declare-fun m!2490457 () Bool)

(assert (=> b!2046930 m!2490457))

(declare-fun m!2490459 () Bool)

(assert (=> mapNonEmpty!9417 m!2490459))

(declare-fun m!2490461 () Bool)

(assert (=> b!2046902 m!2490461))

(declare-fun m!2490463 () Bool)

(assert (=> b!2046902 m!2490463))

(declare-fun m!2490465 () Bool)

(assert (=> b!2046902 m!2490465))

(declare-fun m!2490467 () Bool)

(assert (=> b!2046902 m!2490467))

(declare-fun m!2490469 () Bool)

(assert (=> b!2046902 m!2490469))

(declare-fun m!2490471 () Bool)

(assert (=> b!2046902 m!2490471))

(declare-fun m!2490473 () Bool)

(assert (=> b!2046885 m!2490473))

(assert (=> b!2046885 m!2490473))

(declare-fun m!2490475 () Bool)

(assert (=> b!2046885 m!2490475))

(declare-fun m!2490477 () Bool)

(assert (=> b!2046929 m!2490477))

(declare-fun m!2490479 () Bool)

(assert (=> mapNonEmpty!9416 m!2490479))

(declare-fun m!2490481 () Bool)

(assert (=> b!2046919 m!2490481))

(declare-fun m!2490483 () Bool)

(assert (=> b!2046919 m!2490483))

(declare-fun m!2490485 () Bool)

(assert (=> b!2046889 m!2490485))

(declare-fun m!2490487 () Bool)

(assert (=> b!2046912 m!2490487))

(declare-fun m!2490489 () Bool)

(assert (=> b!2046881 m!2490489))

(declare-fun m!2490491 () Bool)

(assert (=> b!2046913 m!2490491))

(declare-fun m!2490493 () Bool)

(assert (=> b!2046913 m!2490493))

(declare-fun m!2490495 () Bool)

(assert (=> b!2046908 m!2490495))

(declare-fun m!2490497 () Bool)

(assert (=> b!2046894 m!2490497))

(declare-fun m!2490499 () Bool)

(assert (=> b!2046894 m!2490499))

(declare-fun m!2490501 () Bool)

(assert (=> b!2046909 m!2490501))

(declare-fun m!2490503 () Bool)

(assert (=> b!2046868 m!2490503))

(declare-fun m!2490505 () Bool)

(assert (=> b!2046868 m!2490505))

(declare-fun m!2490507 () Bool)

(assert (=> b!2046882 m!2490507))

(declare-fun m!2490509 () Bool)

(assert (=> b!2046888 m!2490509))

(declare-fun m!2490511 () Bool)

(assert (=> b!2046888 m!2490511))

(declare-fun m!2490513 () Bool)

(assert (=> mapNonEmpty!9415 m!2490513))

(declare-fun m!2490515 () Bool)

(assert (=> b!2046901 m!2490515))

(declare-fun m!2490517 () Bool)

(assert (=> b!2046895 m!2490517))

(declare-fun m!2490519 () Bool)

(assert (=> b!2046895 m!2490519))

(declare-fun m!2490521 () Bool)

(assert (=> b!2046875 m!2490521))

(declare-fun m!2490523 () Bool)

(assert (=> b!2046892 m!2490523))

(declare-fun m!2490525 () Bool)

(assert (=> b!2046871 m!2490525))

(declare-fun m!2490527 () Bool)

(assert (=> bm!125340 m!2490527))

(declare-fun m!2490529 () Bool)

(assert (=> b!2046880 m!2490529))

(declare-fun m!2490531 () Bool)

(assert (=> b!2046880 m!2490531))

(declare-fun m!2490533 () Bool)

(assert (=> b!2046880 m!2490533))

(declare-fun m!2490535 () Bool)

(assert (=> b!2046922 m!2490535))

(declare-fun m!2490537 () Bool)

(assert (=> b!2046922 m!2490537))

(declare-fun m!2490539 () Bool)

(assert (=> b!2046922 m!2490539))

(declare-fun m!2490541 () Bool)

(assert (=> bm!125341 m!2490541))

(check-sat (not b!2046898) (not b_next!58095) (not bm!125340) (not b!2046875) (not b!2046903) (not b_next!58099) (not b!2046914) b_and!163331 b_and!163337 (not b!2046924) (not b!2046913) (not b_next!58115) (not b!2046876) (not b!2046908) (not b!2046892) (not b!2046878) (not b!2046882) (not b!2046902) b_and!163351 (not b!2046929) b_and!163355 (not b_next!58091) (not b!2046896) b_and!163343 (not b!2046930) b_and!163339 (not b!2046877) (not b_next!58089) (not b_next!58093) (not b!2046927) (not b!2046910) (not b_next!58107) (not b_next!58113) b_and!163329 (not b!2046917) b_and!163341 (not b!2046919) (not b!2046923) (not b_next!58111) (not b!2046909) b_and!163353 b_and!163335 (not b!2046888) (not mapNonEmpty!9415) (not b!2046894) b_and!163345 (not b_next!58105) (not b!2046922) (not mapNonEmpty!9417) (not b!2046871) (not start!201564) (not b!2046895) (not b!2046889) (not b_next!58097) (not b!2046931) (not b!2046866) (not b_next!58103) (not b_next!58109) b_and!163347 (not b!2046881) (not b!2046868) b_and!163333 (not b!2046901) b_and!163349 (not b!2046912) (not mapNonEmpty!9416) (not b_next!58101) (not mapNonEmpty!9414) (not b!2046897) (not b!2046885) (not bm!125341) (not b!2046880))
(check-sat (not b_next!58089) (not b_next!58095) (not b_next!58093) (not b_next!58111) (not b_next!58099) b_and!163345 (not b_next!58105) (not b_next!58097) (not b_next!58103) (not b_next!58101) b_and!163331 b_and!163337 (not b_next!58115) b_and!163351 b_and!163355 (not b_next!58091) b_and!163339 b_and!163343 (not b_next!58107) (not b_next!58113) b_and!163329 b_and!163341 b_and!163353 b_and!163335 (not b_next!58109) b_and!163347 b_and!163333 b_and!163349)
(get-model)

(declare-fun d!625785 () Bool)

(declare-fun res!896366 () Bool)

(declare-fun e!1293669 () Bool)

(assert (=> d!625785 (=> (not res!896366) (not e!1293669))))

(assert (=> d!625785 (= res!896366 (not (isEmpty!13991 (originalCharacters!4836 (_1!12147 (v!27176 err!3192))))))))

(assert (=> d!625785 (= (inv!29870 (_1!12147 (v!27176 err!3192))) e!1293669)))

(declare-fun b!2046936 () Bool)

(declare-fun res!896367 () Bool)

(assert (=> b!2046936 (=> (not res!896367) (not e!1293669))))

(declare-fun dynLambda!11117 (Int TokenValue!4167) BalanceConc!14834)

(assert (=> b!2046936 (= res!896367 (= (originalCharacters!4836 (_1!12147 (v!27176 err!3192))) (list!9211 (dynLambda!11117 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) (value!126536 (_1!12147 (v!27176 err!3192)))))))))

(declare-fun b!2046937 () Bool)

(declare-fun size!17590 (List!22591) Int)

(assert (=> b!2046937 (= e!1293669 (= (size!17586 (_1!12147 (v!27176 err!3192))) (size!17590 (originalCharacters!4836 (_1!12147 (v!27176 err!3192))))))))

(assert (= (and d!625785 res!896366) b!2046936))

(assert (= (and b!2046936 res!896367) b!2046937))

(declare-fun b_lambda!69061 () Bool)

(assert (=> (not b_lambda!69061) (not b!2046936)))

(declare-fun t!191718 () Bool)

(declare-fun tb!128987 () Bool)

(assert (=> (and b!2046928 (= (toChars!5573 (transformation!4031 (h!27909 rules!1563))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))) t!191718) tb!128987))

(declare-fun b!2046942 () Bool)

(declare-fun e!1293672 () Bool)

(declare-fun tp!609611 () Bool)

(assert (=> b!2046942 (= e!1293672 (and (inv!29864 (c!331182 (dynLambda!11117 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) (value!126536 (_1!12147 (v!27176 err!3192)))))) tp!609611))))

(declare-fun result!154430 () Bool)

(assert (=> tb!128987 (= result!154430 (and (inv!29867 (dynLambda!11117 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) (value!126536 (_1!12147 (v!27176 err!3192))))) e!1293672))))

(assert (= tb!128987 b!2046942))

(declare-fun m!2490543 () Bool)

(assert (=> b!2046942 m!2490543))

(declare-fun m!2490545 () Bool)

(assert (=> tb!128987 m!2490545))

(assert (=> b!2046936 t!191718))

(declare-fun b_and!163357 () Bool)

(assert (= b_and!163333 (and (=> t!191718 result!154430) b_and!163357)))

(declare-fun tb!128989 () Bool)

(declare-fun t!191720 () Bool)

(assert (=> (and b!2046873 (= (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))) t!191720) tb!128989))

(declare-fun result!154434 () Bool)

(assert (= result!154434 result!154430))

(assert (=> b!2046936 t!191720))

(declare-fun b_and!163359 () Bool)

(assert (= b_and!163341 (and (=> t!191720 result!154434) b_and!163359)))

(declare-fun t!191722 () Bool)

(declare-fun tb!128991 () Bool)

(assert (=> (and b!2046916 (= (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))) t!191722) tb!128991))

(declare-fun result!154436 () Bool)

(assert (= result!154436 result!154430))

(assert (=> b!2046936 t!191722))

(declare-fun b_and!163361 () Bool)

(assert (= b_and!163351 (and (=> t!191722 result!154436) b_and!163361)))

(declare-fun m!2490547 () Bool)

(assert (=> d!625785 m!2490547))

(declare-fun m!2490549 () Bool)

(assert (=> b!2046936 m!2490549))

(assert (=> b!2046936 m!2490549))

(declare-fun m!2490551 () Bool)

(assert (=> b!2046936 m!2490551))

(declare-fun m!2490553 () Bool)

(assert (=> b!2046937 m!2490553))

(assert (=> b!2046919 d!625785))

(declare-fun d!625787 () Bool)

(declare-fun isBalanced!2366 (Conc!7536) Bool)

(assert (=> d!625787 (= (inv!29867 (_2!12147 (v!27176 err!3192))) (isBalanced!2366 (c!331182 (_2!12147 (v!27176 err!3192)))))))

(declare-fun bs!421983 () Bool)

(assert (= bs!421983 d!625787))

(declare-fun m!2490555 () Bool)

(assert (=> bs!421983 m!2490555))

(assert (=> b!2046919 d!625787))

(declare-fun d!625789 () Bool)

(declare-fun e!1293675 () Bool)

(assert (=> d!625789 e!1293675))

(declare-fun res!896370 () Bool)

(assert (=> d!625789 (=> res!896370 e!1293675)))

(declare-fun lt!767416 () Bool)

(assert (=> d!625789 (= res!896370 (not lt!767416))))

(declare-fun drop!1130 (List!22591 Int) List!22591)

(assert (=> d!625789 (= lt!767416 (= lt!767395 (drop!1130 lt!767393 (- (size!17590 lt!767393) (size!17590 lt!767395)))))))

(assert (=> d!625789 (= (isSuffix!485 lt!767395 lt!767393) lt!767416)))

(declare-fun b!2046945 () Bool)

(assert (=> b!2046945 (= e!1293675 (>= (size!17590 lt!767393) (size!17590 lt!767395)))))

(assert (= (and d!625789 (not res!896370)) b!2046945))

(declare-fun m!2490557 () Bool)

(assert (=> d!625789 m!2490557))

(declare-fun m!2490559 () Bool)

(assert (=> d!625789 m!2490559))

(declare-fun m!2490561 () Bool)

(assert (=> d!625789 m!2490561))

(assert (=> b!2046945 m!2490557))

(assert (=> b!2046945 m!2490559))

(assert (=> b!2046880 d!625789))

(declare-fun d!625791 () Bool)

(declare-fun e!1293676 () Bool)

(assert (=> d!625791 e!1293676))

(declare-fun res!896371 () Bool)

(assert (=> d!625791 (=> res!896371 e!1293676)))

(declare-fun lt!767417 () Bool)

(assert (=> d!625791 (= res!896371 (not lt!767417))))

(assert (=> d!625791 (= lt!767417 (= lt!767395 (drop!1130 lt!767410 (- (size!17590 lt!767410) (size!17590 lt!767395)))))))

(assert (=> d!625791 (= (isSuffix!485 lt!767395 lt!767410) lt!767417)))

(declare-fun b!2046946 () Bool)

(assert (=> b!2046946 (= e!1293676 (>= (size!17590 lt!767410) (size!17590 lt!767395)))))

(assert (= (and d!625791 (not res!896371)) b!2046946))

(declare-fun m!2490563 () Bool)

(assert (=> d!625791 m!2490563))

(assert (=> d!625791 m!2490559))

(declare-fun m!2490565 () Bool)

(assert (=> d!625791 m!2490565))

(assert (=> b!2046946 m!2490563))

(assert (=> b!2046946 m!2490559))

(assert (=> b!2046880 d!625791))

(declare-fun d!625793 () Bool)

(assert (=> d!625793 (isSuffix!485 lt!767395 (++!6109 lt!767400 lt!767395))))

(declare-fun lt!767420 () Unit!37061)

(declare-fun choose!12466 (List!22591 List!22591) Unit!37061)

(assert (=> d!625793 (= lt!767420 (choose!12466 lt!767400 lt!767395))))

(assert (=> d!625793 (= (lemmaConcatTwoListThenFSndIsSuffix!386 lt!767400 lt!767395) lt!767420)))

(declare-fun bs!421984 () Bool)

(assert (= bs!421984 d!625793))

(assert (=> bs!421984 m!2490423))

(assert (=> bs!421984 m!2490423))

(declare-fun m!2490567 () Bool)

(assert (=> bs!421984 m!2490567))

(declare-fun m!2490569 () Bool)

(assert (=> bs!421984 m!2490569))

(assert (=> b!2046880 d!625793))

(declare-fun d!625795 () Bool)

(declare-fun res!896374 () Bool)

(declare-fun e!1293679 () Bool)

(assert (=> d!625795 (=> (not res!896374) (not e!1293679))))

(declare-fun rulesValid!1507 (LexerInterface!3642 List!22592) Bool)

(assert (=> d!625795 (= res!896374 (rulesValid!1507 thiss!12889 rules!1563))))

(assert (=> d!625795 (= (rulesInvariant!3238 thiss!12889 rules!1563) e!1293679)))

(declare-fun b!2046949 () Bool)

(declare-datatypes ((List!22597 0))(
  ( (Nil!22513) (Cons!22513 (h!27914 String!26027) (t!191733 List!22597)) )
))
(declare-fun noDuplicateTag!1505 (LexerInterface!3642 List!22592 List!22597) Bool)

(assert (=> b!2046949 (= e!1293679 (noDuplicateTag!1505 thiss!12889 rules!1563 Nil!22513))))

(assert (= (and d!625795 res!896374) b!2046949))

(declare-fun m!2490571 () Bool)

(assert (=> d!625795 m!2490571))

(declare-fun m!2490573 () Bool)

(assert (=> b!2046949 m!2490573))

(assert (=> b!2046917 d!625795))

(declare-fun d!625797 () Bool)

(assert (=> d!625797 (= (array_inv!2236 (_keys!2329 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))))) (bvsge (size!17587 (_keys!2329 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2046898 d!625797))

(declare-fun d!625799 () Bool)

(assert (=> d!625799 (= (array_inv!2238 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))))) (bvsge (size!17588 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2046898 d!625799))

(declare-fun call!125349 () Option!4711)

(declare-fun bm!125344 () Bool)

(assert (=> bm!125344 (= call!125349 (maxPrefixOneRuleZipperSequenceV2!123 thiss!12889 (h!27909 (t!191712 rules!1563)) input!986 totalInput!418))))

(declare-fun b!2046966 () Bool)

(declare-fun e!1293695 () Bool)

(declare-fun e!1293697 () Bool)

(assert (=> b!2046966 (= e!1293695 e!1293697)))

(declare-fun res!896389 () Bool)

(assert (=> b!2046966 (=> (not res!896389) (not e!1293697))))

(declare-fun lt!767438 () Option!4711)

(declare-fun get!7110 (Option!4711) tuple2!21246)

(declare-datatypes ((tuple2!21256 0))(
  ( (tuple2!21257 (_1!12154 Token!7610) (_2!12154 List!22591)) )
))
(declare-datatypes ((Option!4712 0))(
  ( (None!4711) (Some!4711 (v!27181 tuple2!21256)) )
))
(declare-fun get!7111 (Option!4712) tuple2!21256)

(declare-fun maxPrefix!2051 (LexerInterface!3642 List!22592 List!22591) Option!4712)

(assert (=> b!2046966 (= res!896389 (= (_1!12147 (get!7110 lt!767438)) (_1!12154 (get!7111 (maxPrefix!2051 thiss!12889 (t!191712 rules!1563) (list!9211 input!986))))))))

(declare-fun b!2046967 () Bool)

(declare-fun e!1293693 () Option!4711)

(assert (=> b!2046967 (= e!1293693 call!125349)))

(declare-fun b!2046968 () Bool)

(declare-fun e!1293696 () Bool)

(declare-fun maxPrefixZipper!391 (LexerInterface!3642 List!22592 List!22591) Option!4712)

(assert (=> b!2046968 (= e!1293696 (= (list!9211 (_2!12147 (get!7110 lt!767438))) (_2!12154 (get!7111 (maxPrefixZipper!391 thiss!12889 (t!191712 rules!1563) (list!9211 input!986))))))))

(declare-fun b!2046969 () Bool)

(declare-fun res!896387 () Bool)

(declare-fun e!1293694 () Bool)

(assert (=> b!2046969 (=> (not res!896387) (not e!1293694))))

(declare-fun e!1293692 () Bool)

(assert (=> b!2046969 (= res!896387 e!1293692)))

(declare-fun res!896388 () Bool)

(assert (=> b!2046969 (=> res!896388 e!1293692)))

(declare-fun isDefined!3973 (Option!4711) Bool)

(assert (=> b!2046969 (= res!896388 (not (isDefined!3973 lt!767438)))))

(declare-fun d!625801 () Bool)

(assert (=> d!625801 e!1293694))

(declare-fun res!896392 () Bool)

(assert (=> d!625801 (=> (not res!896392) (not e!1293694))))

(declare-fun isDefined!3974 (Option!4712) Bool)

(assert (=> d!625801 (= res!896392 (= (isDefined!3973 lt!767438) (isDefined!3974 (maxPrefixZipper!391 thiss!12889 (t!191712 rules!1563) (list!9211 input!986)))))))

(assert (=> d!625801 (= lt!767438 e!1293693)))

(declare-fun c!331188 () Bool)

(assert (=> d!625801 (= c!331188 (and ((_ is Cons!22508) (t!191712 rules!1563)) ((_ is Nil!22508) (t!191712 (t!191712 rules!1563)))))))

(declare-fun lt!767439 () Unit!37061)

(declare-fun lt!767440 () Unit!37061)

(assert (=> d!625801 (= lt!767439 lt!767440)))

(declare-fun lt!767436 () List!22591)

(declare-fun lt!767441 () List!22591)

(assert (=> d!625801 (isPrefix!2001 lt!767436 lt!767441)))

(assert (=> d!625801 (= lt!767440 (lemmaIsPrefixRefl!1319 lt!767436 lt!767441))))

(assert (=> d!625801 (= lt!767441 (list!9211 input!986))))

(assert (=> d!625801 (= lt!767436 (list!9211 input!986))))

(assert (=> d!625801 (rulesValidInductive!1404 thiss!12889 (t!191712 rules!1563))))

(assert (=> d!625801 (= (maxPrefixZipperSequenceV2!321 thiss!12889 (t!191712 rules!1563) input!986 totalInput!418) lt!767438)))

(declare-fun b!2046970 () Bool)

(assert (=> b!2046970 (= e!1293692 e!1293696)))

(declare-fun res!896391 () Bool)

(assert (=> b!2046970 (=> (not res!896391) (not e!1293696))))

(assert (=> b!2046970 (= res!896391 (= (_1!12147 (get!7110 lt!767438)) (_1!12154 (get!7111 (maxPrefixZipper!391 thiss!12889 (t!191712 rules!1563) (list!9211 input!986))))))))

(declare-fun b!2046971 () Bool)

(declare-fun lt!767435 () Option!4711)

(declare-fun lt!767437 () Option!4711)

(assert (=> b!2046971 (= e!1293693 (ite (and ((_ is None!4710) lt!767435) ((_ is None!4710) lt!767437)) None!4710 (ite ((_ is None!4710) lt!767437) lt!767435 (ite ((_ is None!4710) lt!767435) lt!767437 (ite (>= (size!17586 (_1!12147 (v!27176 lt!767435))) (size!17586 (_1!12147 (v!27176 lt!767437)))) lt!767435 lt!767437)))))))

(assert (=> b!2046971 (= lt!767435 call!125349)))

(assert (=> b!2046971 (= lt!767437 (maxPrefixZipperSequenceV2!321 thiss!12889 (t!191712 (t!191712 rules!1563)) input!986 totalInput!418))))

(declare-fun b!2046972 () Bool)

(assert (=> b!2046972 (= e!1293697 (= (list!9211 (_2!12147 (get!7110 lt!767438))) (_2!12154 (get!7111 (maxPrefix!2051 thiss!12889 (t!191712 rules!1563) (list!9211 input!986))))))))

(declare-fun b!2046973 () Bool)

(assert (=> b!2046973 (= e!1293694 e!1293695)))

(declare-fun res!896390 () Bool)

(assert (=> b!2046973 (=> res!896390 e!1293695)))

(assert (=> b!2046973 (= res!896390 (not (isDefined!3973 lt!767438)))))

(assert (= (and d!625801 c!331188) b!2046967))

(assert (= (and d!625801 (not c!331188)) b!2046971))

(assert (= (or b!2046967 b!2046971) bm!125344))

(assert (= (and d!625801 res!896392) b!2046969))

(assert (= (and b!2046969 (not res!896388)) b!2046970))

(assert (= (and b!2046970 res!896391) b!2046968))

(assert (= (and b!2046969 res!896387) b!2046973))

(assert (= (and b!2046973 (not res!896390)) b!2046966))

(assert (= (and b!2046966 res!896389) b!2046972))

(declare-fun m!2490575 () Bool)

(assert (=> b!2046971 m!2490575))

(declare-fun m!2490577 () Bool)

(assert (=> b!2046970 m!2490577))

(assert (=> b!2046970 m!2490427))

(assert (=> b!2046970 m!2490427))

(declare-fun m!2490579 () Bool)

(assert (=> b!2046970 m!2490579))

(assert (=> b!2046970 m!2490579))

(declare-fun m!2490581 () Bool)

(assert (=> b!2046970 m!2490581))

(declare-fun m!2490583 () Bool)

(assert (=> bm!125344 m!2490583))

(assert (=> b!2046968 m!2490577))

(assert (=> b!2046968 m!2490579))

(assert (=> b!2046968 m!2490581))

(assert (=> b!2046968 m!2490427))

(assert (=> b!2046968 m!2490579))

(declare-fun m!2490585 () Bool)

(assert (=> b!2046968 m!2490585))

(assert (=> b!2046968 m!2490427))

(assert (=> b!2046972 m!2490577))

(declare-fun m!2490587 () Bool)

(assert (=> b!2046972 m!2490587))

(declare-fun m!2490589 () Bool)

(assert (=> b!2046972 m!2490589))

(assert (=> b!2046972 m!2490427))

(assert (=> b!2046972 m!2490587))

(assert (=> b!2046972 m!2490585))

(assert (=> b!2046972 m!2490427))

(assert (=> b!2046966 m!2490577))

(assert (=> b!2046966 m!2490427))

(assert (=> b!2046966 m!2490427))

(assert (=> b!2046966 m!2490587))

(assert (=> b!2046966 m!2490587))

(assert (=> b!2046966 m!2490589))

(declare-fun m!2490591 () Bool)

(assert (=> b!2046973 m!2490591))

(assert (=> d!625801 m!2490579))

(declare-fun m!2490593 () Bool)

(assert (=> d!625801 m!2490593))

(declare-fun m!2490595 () Bool)

(assert (=> d!625801 m!2490595))

(assert (=> d!625801 m!2490427))

(assert (=> d!625801 m!2490579))

(assert (=> d!625801 m!2490591))

(assert (=> d!625801 m!2490427))

(declare-fun m!2490597 () Bool)

(assert (=> d!625801 m!2490597))

(declare-fun m!2490599 () Bool)

(assert (=> d!625801 m!2490599))

(assert (=> b!2046969 m!2490591))

(assert (=> b!2046882 d!625801))

(declare-fun d!625803 () Bool)

(declare-fun c!331191 () Bool)

(assert (=> d!625803 (= c!331191 ((_ is Node!7536) (c!331182 input!986)))))

(declare-fun e!1293702 () Bool)

(assert (=> d!625803 (= (inv!29864 (c!331182 input!986)) e!1293702)))

(declare-fun b!2046980 () Bool)

(declare-fun inv!29871 (Conc!7536) Bool)

(assert (=> b!2046980 (= e!1293702 (inv!29871 (c!331182 input!986)))))

(declare-fun b!2046981 () Bool)

(declare-fun e!1293703 () Bool)

(assert (=> b!2046981 (= e!1293702 e!1293703)))

(declare-fun res!896395 () Bool)

(assert (=> b!2046981 (= res!896395 (not ((_ is Leaf!11033) (c!331182 input!986))))))

(assert (=> b!2046981 (=> res!896395 e!1293703)))

(declare-fun b!2046982 () Bool)

(declare-fun inv!29872 (Conc!7536) Bool)

(assert (=> b!2046982 (= e!1293703 (inv!29872 (c!331182 input!986)))))

(assert (= (and d!625803 c!331191) b!2046980))

(assert (= (and d!625803 (not c!331191)) b!2046981))

(assert (= (and b!2046981 (not res!896395)) b!2046982))

(declare-fun m!2490601 () Bool)

(assert (=> b!2046980 m!2490601))

(declare-fun m!2490603 () Bool)

(assert (=> b!2046982 m!2490603))

(assert (=> b!2046901 d!625803))

(declare-fun d!625805 () Bool)

(declare-fun c!331192 () Bool)

(assert (=> d!625805 (= c!331192 ((_ is Node!7536) (c!331182 (_2!12147 (v!27176 err!3192)))))))

(declare-fun e!1293704 () Bool)

(assert (=> d!625805 (= (inv!29864 (c!331182 (_2!12147 (v!27176 err!3192)))) e!1293704)))

(declare-fun b!2046983 () Bool)

(assert (=> b!2046983 (= e!1293704 (inv!29871 (c!331182 (_2!12147 (v!27176 err!3192)))))))

(declare-fun b!2046984 () Bool)

(declare-fun e!1293705 () Bool)

(assert (=> b!2046984 (= e!1293704 e!1293705)))

(declare-fun res!896396 () Bool)

(assert (=> b!2046984 (= res!896396 (not ((_ is Leaf!11033) (c!331182 (_2!12147 (v!27176 err!3192))))))))

(assert (=> b!2046984 (=> res!896396 e!1293705)))

(declare-fun b!2046985 () Bool)

(assert (=> b!2046985 (= e!1293705 (inv!29872 (c!331182 (_2!12147 (v!27176 err!3192)))))))

(assert (= (and d!625805 c!331192) b!2046983))

(assert (= (and d!625805 (not c!331192)) b!2046984))

(assert (= (and b!2046984 (not res!896396)) b!2046985))

(declare-fun m!2490605 () Bool)

(assert (=> b!2046983 m!2490605))

(declare-fun m!2490607 () Bool)

(assert (=> b!2046985 m!2490607))

(assert (=> b!2046881 d!625805))

(declare-fun b!2046996 () Bool)

(declare-fun e!1293713 () Option!4711)

(declare-datatypes ((tuple2!21258 0))(
  ( (tuple2!21259 (_1!12155 BalanceConc!14834) (_2!12155 BalanceConc!14834)) )
))
(declare-datatypes ((tuple3!2124 0))(
  ( (tuple3!2125 (_1!12156 tuple2!21258) (_2!12156 CacheUp!1242) (_3!1526 CacheDown!1244)) )
))
(declare-fun lt!767455 () tuple3!2124)

(declare-fun apply!5867 (TokenValueInjection!7918 BalanceConc!14834) TokenValue!4167)

(declare-fun size!17591 (BalanceConc!14834) Int)

(assert (=> b!2046996 (= e!1293713 (Some!4710 (tuple2!21247 (Token!7611 (apply!5867 (transformation!4031 (h!27909 rules!1563)) (_1!12155 (_1!12156 lt!767455))) (h!27909 rules!1563) (size!17591 (_1!12155 (_1!12156 lt!767455))) (list!9211 (_1!12155 (_1!12156 lt!767455)))) (_2!12155 (_1!12156 lt!767455)))))))

(declare-fun lt!767458 () List!22591)

(assert (=> b!2046996 (= lt!767458 (list!9211 input!986))))

(declare-fun lt!767456 () Unit!37061)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!543 (Regex!5459 List!22591) Unit!37061)

(assert (=> b!2046996 (= lt!767456 (longestMatchIsAcceptedByMatchOrIsEmpty!543 (regex!4031 (h!27909 rules!1563)) lt!767458))))

(declare-fun res!896405 () Bool)

(declare-datatypes ((tuple2!21260 0))(
  ( (tuple2!21261 (_1!12157 List!22591) (_2!12157 List!22591)) )
))
(declare-fun findLongestMatchInner!559 (Regex!5459 List!22591 Int List!22591 List!22591 Int) tuple2!21260)

(assert (=> b!2046996 (= res!896405 (isEmpty!13991 (_1!12157 (findLongestMatchInner!559 (regex!4031 (h!27909 rules!1563)) Nil!22507 (size!17590 Nil!22507) lt!767458 lt!767458 (size!17590 lt!767458)))))))

(declare-fun e!1293714 () Bool)

(assert (=> b!2046996 (=> res!896405 e!1293714)))

(assert (=> b!2046996 e!1293714))

(declare-fun lt!767454 () Unit!37061)

(assert (=> b!2046996 (= lt!767454 lt!767456)))

(declare-fun lt!767457 () Unit!37061)

(declare-fun lemmaSemiInverse!957 (TokenValueInjection!7918 BalanceConc!14834) Unit!37061)

(assert (=> b!2046996 (= lt!767457 (lemmaSemiInverse!957 (transformation!4031 (h!27909 rules!1563)) (_1!12155 (_1!12156 lt!767455))))))

(declare-fun b!2046997 () Bool)

(declare-fun e!1293712 () Bool)

(declare-fun lt!767459 () tuple3!2122)

(assert (=> b!2046997 (= e!1293712 (valid!1617 (_3!1525 lt!767459)))))

(declare-fun d!625807 () Bool)

(assert (=> d!625807 e!1293712))

(declare-fun res!896404 () Bool)

(assert (=> d!625807 (=> (not res!896404) (not e!1293712))))

(assert (=> d!625807 (= res!896404 (= (_1!12152 lt!767459) (maxPrefixOneRuleZipperSequenceV2!123 thiss!12889 (h!27909 rules!1563) input!986 totalInput!418)))))

(assert (=> d!625807 (= lt!767459 (tuple3!2123 e!1293713 (_2!12156 lt!767455) (_3!1526 lt!767455)))))

(declare-fun c!331195 () Bool)

(declare-fun isEmpty!13992 (BalanceConc!14834) Bool)

(assert (=> d!625807 (= c!331195 (isEmpty!13992 (_1!12155 (_1!12156 lt!767455))))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!2 (Regex!5459 BalanceConc!14834 BalanceConc!14834 CacheUp!1242 CacheDown!1244) tuple3!2124)

(assert (=> d!625807 (= lt!767455 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!2 (regex!4031 (h!27909 rules!1563)) input!986 totalInput!418 (_2!12152 lt!767409) (_3!1525 lt!767409)))))

(declare-fun ruleValid!1232 (LexerInterface!3642 Rule!7862) Bool)

(assert (=> d!625807 (ruleValid!1232 thiss!12889 (h!27909 rules!1563))))

(assert (=> d!625807 (= (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!11 thiss!12889 (h!27909 rules!1563) input!986 totalInput!418 (_2!12152 lt!767409) (_3!1525 lt!767409)) lt!767459)))

(declare-fun b!2046998 () Bool)

(assert (=> b!2046998 (= e!1293713 None!4710)))

(declare-fun b!2046999 () Bool)

(declare-fun matchR!2693 (Regex!5459 List!22591) Bool)

(assert (=> b!2046999 (= e!1293714 (matchR!2693 (regex!4031 (h!27909 rules!1563)) (_1!12157 (findLongestMatchInner!559 (regex!4031 (h!27909 rules!1563)) Nil!22507 (size!17590 Nil!22507) lt!767458 lt!767458 (size!17590 lt!767458)))))))

(declare-fun b!2047000 () Bool)

(declare-fun res!896403 () Bool)

(assert (=> b!2047000 (=> (not res!896403) (not e!1293712))))

(assert (=> b!2047000 (= res!896403 (valid!1618 (_2!12152 lt!767459)))))

(assert (= (and d!625807 c!331195) b!2046998))

(assert (= (and d!625807 (not c!331195)) b!2046996))

(assert (= (and b!2046996 (not res!896405)) b!2046999))

(assert (= (and d!625807 res!896404) b!2047000))

(assert (= (and b!2047000 res!896403) b!2046997))

(declare-fun m!2490609 () Bool)

(assert (=> b!2046999 m!2490609))

(declare-fun m!2490611 () Bool)

(assert (=> b!2046999 m!2490611))

(assert (=> b!2046999 m!2490609))

(assert (=> b!2046999 m!2490611))

(declare-fun m!2490613 () Bool)

(assert (=> b!2046999 m!2490613))

(declare-fun m!2490615 () Bool)

(assert (=> b!2046999 m!2490615))

(assert (=> d!625807 m!2490527))

(declare-fun m!2490617 () Bool)

(assert (=> d!625807 m!2490617))

(declare-fun m!2490619 () Bool)

(assert (=> d!625807 m!2490619))

(declare-fun m!2490621 () Bool)

(assert (=> d!625807 m!2490621))

(declare-fun m!2490623 () Bool)

(assert (=> b!2046997 m!2490623))

(declare-fun m!2490625 () Bool)

(assert (=> b!2046996 m!2490625))

(assert (=> b!2046996 m!2490611))

(declare-fun m!2490627 () Bool)

(assert (=> b!2046996 m!2490627))

(declare-fun m!2490629 () Bool)

(assert (=> b!2046996 m!2490629))

(assert (=> b!2046996 m!2490609))

(declare-fun m!2490631 () Bool)

(assert (=> b!2046996 m!2490631))

(assert (=> b!2046996 m!2490427))

(declare-fun m!2490633 () Bool)

(assert (=> b!2046996 m!2490633))

(declare-fun m!2490635 () Bool)

(assert (=> b!2046996 m!2490635))

(assert (=> b!2046996 m!2490609))

(assert (=> b!2046996 m!2490611))

(assert (=> b!2046996 m!2490613))

(declare-fun m!2490637 () Bool)

(assert (=> b!2047000 m!2490637))

(assert (=> bm!125341 d!625807))

(declare-fun bm!125345 () Bool)

(declare-fun call!125350 () Option!4711)

(assert (=> bm!125345 (= call!125350 (maxPrefixOneRuleZipperSequenceV2!123 thiss!12889 (h!27909 rules!1563) input!986 totalInput!418))))

(declare-fun b!2047001 () Bool)

(declare-fun e!1293718 () Bool)

(declare-fun e!1293720 () Bool)

(assert (=> b!2047001 (= e!1293718 e!1293720)))

(declare-fun res!896408 () Bool)

(assert (=> b!2047001 (=> (not res!896408) (not e!1293720))))

(declare-fun lt!767463 () Option!4711)

(assert (=> b!2047001 (= res!896408 (= (_1!12147 (get!7110 lt!767463)) (_1!12154 (get!7111 (maxPrefix!2051 thiss!12889 rules!1563 (list!9211 input!986))))))))

(declare-fun b!2047002 () Bool)

(declare-fun e!1293716 () Option!4711)

(assert (=> b!2047002 (= e!1293716 call!125350)))

(declare-fun e!1293719 () Bool)

(declare-fun b!2047003 () Bool)

(assert (=> b!2047003 (= e!1293719 (= (list!9211 (_2!12147 (get!7110 lt!767463))) (_2!12154 (get!7111 (maxPrefixZipper!391 thiss!12889 rules!1563 (list!9211 input!986))))))))

(declare-fun b!2047004 () Bool)

(declare-fun res!896406 () Bool)

(declare-fun e!1293717 () Bool)

(assert (=> b!2047004 (=> (not res!896406) (not e!1293717))))

(declare-fun e!1293715 () Bool)

(assert (=> b!2047004 (= res!896406 e!1293715)))

(declare-fun res!896407 () Bool)

(assert (=> b!2047004 (=> res!896407 e!1293715)))

(assert (=> b!2047004 (= res!896407 (not (isDefined!3973 lt!767463)))))

(declare-fun d!625809 () Bool)

(assert (=> d!625809 e!1293717))

(declare-fun res!896411 () Bool)

(assert (=> d!625809 (=> (not res!896411) (not e!1293717))))

(assert (=> d!625809 (= res!896411 (= (isDefined!3973 lt!767463) (isDefined!3974 (maxPrefixZipper!391 thiss!12889 rules!1563 (list!9211 input!986)))))))

(assert (=> d!625809 (= lt!767463 e!1293716)))

(declare-fun c!331196 () Bool)

(assert (=> d!625809 (= c!331196 (and ((_ is Cons!22508) rules!1563) ((_ is Nil!22508) (t!191712 rules!1563))))))

(declare-fun lt!767464 () Unit!37061)

(declare-fun lt!767465 () Unit!37061)

(assert (=> d!625809 (= lt!767464 lt!767465)))

(declare-fun lt!767461 () List!22591)

(declare-fun lt!767466 () List!22591)

(assert (=> d!625809 (isPrefix!2001 lt!767461 lt!767466)))

(assert (=> d!625809 (= lt!767465 (lemmaIsPrefixRefl!1319 lt!767461 lt!767466))))

(assert (=> d!625809 (= lt!767466 (list!9211 input!986))))

(assert (=> d!625809 (= lt!767461 (list!9211 input!986))))

(assert (=> d!625809 (rulesValidInductive!1404 thiss!12889 rules!1563)))

(assert (=> d!625809 (= (maxPrefixZipperSequenceV2!321 thiss!12889 rules!1563 input!986 totalInput!418) lt!767463)))

(declare-fun b!2047005 () Bool)

(assert (=> b!2047005 (= e!1293715 e!1293719)))

(declare-fun res!896410 () Bool)

(assert (=> b!2047005 (=> (not res!896410) (not e!1293719))))

(assert (=> b!2047005 (= res!896410 (= (_1!12147 (get!7110 lt!767463)) (_1!12154 (get!7111 (maxPrefixZipper!391 thiss!12889 rules!1563 (list!9211 input!986))))))))

(declare-fun b!2047006 () Bool)

(declare-fun lt!767460 () Option!4711)

(declare-fun lt!767462 () Option!4711)

(assert (=> b!2047006 (= e!1293716 (ite (and ((_ is None!4710) lt!767460) ((_ is None!4710) lt!767462)) None!4710 (ite ((_ is None!4710) lt!767462) lt!767460 (ite ((_ is None!4710) lt!767460) lt!767462 (ite (>= (size!17586 (_1!12147 (v!27176 lt!767460))) (size!17586 (_1!12147 (v!27176 lt!767462)))) lt!767460 lt!767462)))))))

(assert (=> b!2047006 (= lt!767460 call!125350)))

(assert (=> b!2047006 (= lt!767462 (maxPrefixZipperSequenceV2!321 thiss!12889 (t!191712 rules!1563) input!986 totalInput!418))))

(declare-fun b!2047007 () Bool)

(assert (=> b!2047007 (= e!1293720 (= (list!9211 (_2!12147 (get!7110 lt!767463))) (_2!12154 (get!7111 (maxPrefix!2051 thiss!12889 rules!1563 (list!9211 input!986))))))))

(declare-fun b!2047008 () Bool)

(assert (=> b!2047008 (= e!1293717 e!1293718)))

(declare-fun res!896409 () Bool)

(assert (=> b!2047008 (=> res!896409 e!1293718)))

(assert (=> b!2047008 (= res!896409 (not (isDefined!3973 lt!767463)))))

(assert (= (and d!625809 c!331196) b!2047002))

(assert (= (and d!625809 (not c!331196)) b!2047006))

(assert (= (or b!2047002 b!2047006) bm!125345))

(assert (= (and d!625809 res!896411) b!2047004))

(assert (= (and b!2047004 (not res!896407)) b!2047005))

(assert (= (and b!2047005 res!896410) b!2047003))

(assert (= (and b!2047004 res!896406) b!2047008))

(assert (= (and b!2047008 (not res!896409)) b!2047001))

(assert (= (and b!2047001 res!896408) b!2047007))

(assert (=> b!2047006 m!2490507))

(declare-fun m!2490639 () Bool)

(assert (=> b!2047005 m!2490639))

(assert (=> b!2047005 m!2490427))

(assert (=> b!2047005 m!2490427))

(declare-fun m!2490641 () Bool)

(assert (=> b!2047005 m!2490641))

(assert (=> b!2047005 m!2490641))

(declare-fun m!2490643 () Bool)

(assert (=> b!2047005 m!2490643))

(assert (=> bm!125345 m!2490527))

(assert (=> b!2047003 m!2490639))

(assert (=> b!2047003 m!2490641))

(assert (=> b!2047003 m!2490643))

(assert (=> b!2047003 m!2490427))

(assert (=> b!2047003 m!2490641))

(declare-fun m!2490645 () Bool)

(assert (=> b!2047003 m!2490645))

(assert (=> b!2047003 m!2490427))

(assert (=> b!2047007 m!2490639))

(declare-fun m!2490647 () Bool)

(assert (=> b!2047007 m!2490647))

(declare-fun m!2490649 () Bool)

(assert (=> b!2047007 m!2490649))

(assert (=> b!2047007 m!2490427))

(assert (=> b!2047007 m!2490647))

(assert (=> b!2047007 m!2490645))

(assert (=> b!2047007 m!2490427))

(assert (=> b!2047001 m!2490639))

(assert (=> b!2047001 m!2490427))

(assert (=> b!2047001 m!2490427))

(assert (=> b!2047001 m!2490647))

(assert (=> b!2047001 m!2490647))

(assert (=> b!2047001 m!2490649))

(declare-fun m!2490651 () Bool)

(assert (=> b!2047008 m!2490651))

(assert (=> d!625809 m!2490641))

(declare-fun m!2490653 () Bool)

(assert (=> d!625809 m!2490653))

(assert (=> d!625809 m!2490461))

(assert (=> d!625809 m!2490427))

(assert (=> d!625809 m!2490641))

(assert (=> d!625809 m!2490651))

(assert (=> d!625809 m!2490427))

(declare-fun m!2490655 () Bool)

(assert (=> d!625809 m!2490655))

(declare-fun m!2490657 () Bool)

(assert (=> d!625809 m!2490657))

(assert (=> b!2047004 m!2490651))

(assert (=> b!2046902 d!625809))

(declare-fun b!2047023 () Bool)

(declare-fun e!1293729 () tuple2!21254)

(assert (=> b!2047023 (= e!1293729 (tuple2!21255 (BalanceConc!14837 Empty!7537) (_2!12147 (v!27176 (_1!12152 lt!767409)))))))

(declare-fun b!2047025 () Bool)

(declare-fun e!1293731 () Bool)

(declare-fun e!1293732 () Bool)

(assert (=> b!2047025 (= e!1293731 e!1293732)))

(declare-fun res!896418 () Bool)

(declare-fun lt!767474 () tuple2!21254)

(assert (=> b!2047025 (= res!896418 (< (size!17591 (_2!12153 lt!767474)) (size!17591 (_2!12147 (v!27176 (_1!12152 lt!767409))))))))

(assert (=> b!2047025 (=> (not res!896418) (not e!1293732))))

(declare-fun b!2047026 () Bool)

(assert (=> b!2047026 (= e!1293731 (= (list!9211 (_2!12153 lt!767474)) (list!9211 (_2!12147 (v!27176 (_1!12152 lt!767409))))))))

(declare-fun b!2047027 () Bool)

(declare-fun res!896419 () Bool)

(declare-fun e!1293730 () Bool)

(assert (=> b!2047027 (=> (not res!896419) (not e!1293730))))

(declare-datatypes ((tuple2!21262 0))(
  ( (tuple2!21263 (_1!12158 List!22596) (_2!12158 List!22591)) )
))
(declare-fun lexList!992 (LexerInterface!3642 List!22592 List!22591) tuple2!21262)

(assert (=> b!2047027 (= res!896419 (= (list!9212 (_1!12153 lt!767474)) (_1!12158 (lexList!992 thiss!12889 rules!1563 (list!9211 (_2!12147 (v!27176 (_1!12152 lt!767409))))))))))

(declare-fun d!625811 () Bool)

(assert (=> d!625811 e!1293730))

(declare-fun res!896420 () Bool)

(assert (=> d!625811 (=> (not res!896420) (not e!1293730))))

(assert (=> d!625811 (= res!896420 e!1293731)))

(declare-fun c!331202 () Bool)

(declare-fun size!17592 (BalanceConc!14836) Int)

(assert (=> d!625811 (= c!331202 (> (size!17592 (_1!12153 lt!767474)) 0))))

(assert (=> d!625811 (= lt!767474 e!1293729)))

(declare-fun c!331201 () Bool)

(declare-fun lt!767475 () Option!4711)

(assert (=> d!625811 (= c!331201 ((_ is Some!4710) lt!767475))))

(declare-fun maxPrefixZipperSequence!792 (LexerInterface!3642 List!22592 BalanceConc!14834) Option!4711)

(assert (=> d!625811 (= lt!767475 (maxPrefixZipperSequence!792 thiss!12889 rules!1563 (_2!12147 (v!27176 (_1!12152 lt!767409)))))))

(assert (=> d!625811 (= (lexRec!447 thiss!12889 rules!1563 (_2!12147 (v!27176 (_1!12152 lt!767409)))) lt!767474)))

(declare-fun b!2047024 () Bool)

(declare-fun lt!767473 () tuple2!21254)

(declare-fun prepend!914 (BalanceConc!14836 Token!7610) BalanceConc!14836)

(assert (=> b!2047024 (= e!1293729 (tuple2!21255 (prepend!914 (_1!12153 lt!767473) (_1!12147 (v!27176 lt!767475))) (_2!12153 lt!767473)))))

(assert (=> b!2047024 (= lt!767473 (lexRec!447 thiss!12889 rules!1563 (_2!12147 (v!27176 lt!767475))))))

(declare-fun b!2047028 () Bool)

(declare-fun isEmpty!13993 (BalanceConc!14836) Bool)

(assert (=> b!2047028 (= e!1293732 (not (isEmpty!13993 (_1!12153 lt!767474))))))

(declare-fun b!2047029 () Bool)

(assert (=> b!2047029 (= e!1293730 (= (list!9211 (_2!12153 lt!767474)) (_2!12158 (lexList!992 thiss!12889 rules!1563 (list!9211 (_2!12147 (v!27176 (_1!12152 lt!767409))))))))))

(assert (= (and d!625811 c!331201) b!2047024))

(assert (= (and d!625811 (not c!331201)) b!2047023))

(assert (= (and d!625811 c!331202) b!2047025))

(assert (= (and d!625811 (not c!331202)) b!2047026))

(assert (= (and b!2047025 res!896418) b!2047028))

(assert (= (and d!625811 res!896420) b!2047027))

(assert (= (and b!2047027 res!896419) b!2047029))

(declare-fun m!2490659 () Bool)

(assert (=> b!2047027 m!2490659))

(declare-fun m!2490661 () Bool)

(assert (=> b!2047027 m!2490661))

(assert (=> b!2047027 m!2490661))

(declare-fun m!2490663 () Bool)

(assert (=> b!2047027 m!2490663))

(declare-fun m!2490665 () Bool)

(assert (=> b!2047029 m!2490665))

(assert (=> b!2047029 m!2490661))

(assert (=> b!2047029 m!2490661))

(assert (=> b!2047029 m!2490663))

(declare-fun m!2490667 () Bool)

(assert (=> b!2047024 m!2490667))

(declare-fun m!2490669 () Bool)

(assert (=> b!2047024 m!2490669))

(assert (=> b!2047026 m!2490665))

(assert (=> b!2047026 m!2490661))

(declare-fun m!2490671 () Bool)

(assert (=> b!2047025 m!2490671))

(declare-fun m!2490673 () Bool)

(assert (=> b!2047025 m!2490673))

(declare-fun m!2490675 () Bool)

(assert (=> d!625811 m!2490675))

(declare-fun m!2490677 () Bool)

(assert (=> d!625811 m!2490677))

(declare-fun m!2490679 () Bool)

(assert (=> b!2047028 m!2490679))

(assert (=> b!2046902 d!625811))

(declare-fun d!625813 () Bool)

(assert (=> d!625813 (isPrefix!2001 lt!767395 lt!767395)))

(declare-fun lt!767478 () Unit!37061)

(declare-fun choose!12467 (List!22591 List!22591) Unit!37061)

(assert (=> d!625813 (= lt!767478 (choose!12467 lt!767395 lt!767395))))

(assert (=> d!625813 (= (lemmaIsPrefixRefl!1319 lt!767395 lt!767395) lt!767478)))

(declare-fun bs!421985 () Bool)

(assert (= bs!421985 d!625813))

(assert (=> bs!421985 m!2490467))

(declare-fun m!2490681 () Bool)

(assert (=> bs!421985 m!2490681))

(assert (=> b!2046902 d!625813))

(declare-fun d!625815 () Bool)

(assert (=> d!625815 true))

(declare-fun lt!767481 () Bool)

(declare-fun lambda!76704 () Int)

(declare-fun forall!4770 (List!22592 Int) Bool)

(assert (=> d!625815 (= lt!767481 (forall!4770 rules!1563 lambda!76704))))

(declare-fun e!1293737 () Bool)

(assert (=> d!625815 (= lt!767481 e!1293737)))

(declare-fun res!896425 () Bool)

(assert (=> d!625815 (=> res!896425 e!1293737)))

(assert (=> d!625815 (= res!896425 (not ((_ is Cons!22508) rules!1563)))))

(assert (=> d!625815 (= (rulesValidInductive!1404 thiss!12889 rules!1563) lt!767481)))

(declare-fun b!2047034 () Bool)

(declare-fun e!1293738 () Bool)

(assert (=> b!2047034 (= e!1293737 e!1293738)))

(declare-fun res!896426 () Bool)

(assert (=> b!2047034 (=> (not res!896426) (not e!1293738))))

(assert (=> b!2047034 (= res!896426 (ruleValid!1232 thiss!12889 (h!27909 rules!1563)))))

(declare-fun b!2047035 () Bool)

(assert (=> b!2047035 (= e!1293738 (rulesValidInductive!1404 thiss!12889 (t!191712 rules!1563)))))

(assert (= (and d!625815 (not res!896425)) b!2047034))

(assert (= (and b!2047034 res!896426) b!2047035))

(declare-fun m!2490683 () Bool)

(assert (=> d!625815 m!2490683))

(assert (=> b!2047034 m!2490621))

(assert (=> b!2047035 m!2490595))

(assert (=> b!2046902 d!625815))

(declare-fun d!625817 () Bool)

(declare-fun e!1293743 () Bool)

(assert (=> d!625817 e!1293743))

(declare-fun res!896432 () Bool)

(assert (=> d!625817 (=> (not res!896432) (not e!1293743))))

(declare-fun lt!767500 () tuple3!2122)

(assert (=> d!625817 (= res!896432 (= (_1!12152 lt!767500) (maxPrefixZipperSequenceV2!321 thiss!12889 rules!1563 input!986 totalInput!418)))))

(declare-fun e!1293744 () tuple3!2122)

(assert (=> d!625817 (= lt!767500 e!1293744)))

(declare-fun c!331205 () Bool)

(assert (=> d!625817 (= c!331205 (and ((_ is Cons!22508) rules!1563) ((_ is Nil!22508) (t!191712 rules!1563))))))

(declare-fun lt!767503 () Unit!37061)

(declare-fun lt!767502 () Unit!37061)

(assert (=> d!625817 (= lt!767503 lt!767502)))

(declare-fun lt!767499 () List!22591)

(declare-fun lt!767505 () List!22591)

(assert (=> d!625817 (isPrefix!2001 lt!767499 lt!767505)))

(assert (=> d!625817 (= lt!767502 (lemmaIsPrefixRefl!1319 lt!767499 lt!767505))))

(assert (=> d!625817 (= lt!767505 (list!9211 input!986))))

(assert (=> d!625817 (= lt!767499 (list!9211 input!986))))

(assert (=> d!625817 (rulesValidInductive!1404 thiss!12889 rules!1563)))

(assert (=> d!625817 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!20 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12152 lt!767409) (_3!1525 lt!767409)) lt!767500)))

(declare-fun b!2047046 () Bool)

(declare-fun res!896431 () Bool)

(assert (=> b!2047046 (=> (not res!896431) (not e!1293743))))

(assert (=> b!2047046 (= res!896431 (valid!1618 (_2!12152 lt!767500)))))

(declare-fun bm!125348 () Bool)

(declare-fun call!125353 () tuple3!2122)

(assert (=> bm!125348 (= call!125353 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!11 thiss!12889 (h!27909 rules!1563) input!986 totalInput!418 (_2!12152 lt!767409) (_3!1525 lt!767409)))))

(declare-fun b!2047047 () Bool)

(declare-fun lt!767501 () tuple3!2122)

(declare-fun lt!767504 () tuple3!2122)

(assert (=> b!2047047 (= e!1293744 (tuple3!2123 (ite (and ((_ is None!4710) (_1!12152 lt!767501)) ((_ is None!4710) (_1!12152 lt!767504))) None!4710 (ite ((_ is None!4710) (_1!12152 lt!767504)) (_1!12152 lt!767501) (ite ((_ is None!4710) (_1!12152 lt!767501)) (_1!12152 lt!767504) (ite (>= (size!17586 (_1!12147 (v!27176 (_1!12152 lt!767501)))) (size!17586 (_1!12147 (v!27176 (_1!12152 lt!767504))))) (_1!12152 lt!767501) (_1!12152 lt!767504))))) (_2!12152 lt!767504) (_3!1525 lt!767504)))))

(assert (=> b!2047047 (= lt!767501 call!125353)))

(assert (=> b!2047047 (= lt!767504 (maxPrefixZipperSequenceV2MemOnlyDeriv!20 thiss!12889 (t!191712 rules!1563) input!986 totalInput!418 (_2!12152 lt!767501) (_3!1525 lt!767501)))))

(declare-fun b!2047048 () Bool)

(declare-fun lt!767498 () tuple3!2122)

(assert (=> b!2047048 (= e!1293744 (tuple3!2123 (_1!12152 lt!767498) (_2!12152 lt!767498) (_3!1525 lt!767498)))))

(assert (=> b!2047048 (= lt!767498 call!125353)))

(declare-fun b!2047049 () Bool)

(assert (=> b!2047049 (= e!1293743 (valid!1617 (_3!1525 lt!767500)))))

(assert (= (and d!625817 c!331205) b!2047048))

(assert (= (and d!625817 (not c!331205)) b!2047047))

(assert (= (or b!2047048 b!2047047) bm!125348))

(assert (= (and d!625817 res!896432) b!2047046))

(assert (= (and b!2047046 res!896431) b!2047049))

(assert (=> bm!125348 m!2490541))

(declare-fun m!2490685 () Bool)

(assert (=> b!2047049 m!2490685))

(declare-fun m!2490687 () Bool)

(assert (=> b!2047046 m!2490687))

(declare-fun m!2490689 () Bool)

(assert (=> d!625817 m!2490689))

(declare-fun m!2490691 () Bool)

(assert (=> d!625817 m!2490691))

(assert (=> d!625817 m!2490427))

(assert (=> d!625817 m!2490461))

(assert (=> d!625817 m!2490469))

(declare-fun m!2490693 () Bool)

(assert (=> b!2047047 m!2490693))

(assert (=> b!2046902 d!625817))

(declare-fun d!625819 () Bool)

(declare-fun e!1293752 () Bool)

(assert (=> d!625819 e!1293752))

(declare-fun res!896442 () Bool)

(assert (=> d!625819 (=> res!896442 e!1293752)))

(declare-fun lt!767508 () Bool)

(assert (=> d!625819 (= res!896442 (not lt!767508))))

(declare-fun e!1293751 () Bool)

(assert (=> d!625819 (= lt!767508 e!1293751)))

(declare-fun res!896443 () Bool)

(assert (=> d!625819 (=> res!896443 e!1293751)))

(assert (=> d!625819 (= res!896443 ((_ is Nil!22507) lt!767395))))

(assert (=> d!625819 (= (isPrefix!2001 lt!767395 lt!767395) lt!767508)))

(declare-fun b!2047061 () Bool)

(assert (=> b!2047061 (= e!1293752 (>= (size!17590 lt!767395) (size!17590 lt!767395)))))

(declare-fun b!2047060 () Bool)

(declare-fun e!1293753 () Bool)

(declare-fun tail!3068 (List!22591) List!22591)

(assert (=> b!2047060 (= e!1293753 (isPrefix!2001 (tail!3068 lt!767395) (tail!3068 lt!767395)))))

(declare-fun b!2047058 () Bool)

(assert (=> b!2047058 (= e!1293751 e!1293753)))

(declare-fun res!896441 () Bool)

(assert (=> b!2047058 (=> (not res!896441) (not e!1293753))))

(assert (=> b!2047058 (= res!896441 (not ((_ is Nil!22507) lt!767395)))))

(declare-fun b!2047059 () Bool)

(declare-fun res!896444 () Bool)

(assert (=> b!2047059 (=> (not res!896444) (not e!1293753))))

(declare-fun head!4596 (List!22591) C!11064)

(assert (=> b!2047059 (= res!896444 (= (head!4596 lt!767395) (head!4596 lt!767395)))))

(assert (= (and d!625819 (not res!896443)) b!2047058))

(assert (= (and b!2047058 res!896441) b!2047059))

(assert (= (and b!2047059 res!896444) b!2047060))

(assert (= (and d!625819 (not res!896442)) b!2047061))

(assert (=> b!2047061 m!2490559))

(assert (=> b!2047061 m!2490559))

(declare-fun m!2490695 () Bool)

(assert (=> b!2047060 m!2490695))

(assert (=> b!2047060 m!2490695))

(assert (=> b!2047060 m!2490695))

(assert (=> b!2047060 m!2490695))

(declare-fun m!2490697 () Bool)

(assert (=> b!2047060 m!2490697))

(declare-fun m!2490699 () Bool)

(assert (=> b!2047059 m!2490699))

(assert (=> b!2047059 m!2490699))

(assert (=> b!2046902 d!625819))

(declare-fun d!625821 () Bool)

(assert (=> d!625821 (= (inv!29858 (tag!4521 (h!27909 rules!1563))) (= (mod (str.len (value!126535 (tag!4521 (h!27909 rules!1563)))) 2) 0))))

(assert (=> b!2046866 d!625821))

(declare-fun d!625823 () Bool)

(declare-fun res!896447 () Bool)

(declare-fun e!1293756 () Bool)

(assert (=> d!625823 (=> (not res!896447) (not e!1293756))))

(declare-fun semiInverseModEq!1620 (Int Int) Bool)

(assert (=> d!625823 (= res!896447 (semiInverseModEq!1620 (toChars!5573 (transformation!4031 (h!27909 rules!1563))) (toValue!5714 (transformation!4031 (h!27909 rules!1563)))))))

(assert (=> d!625823 (= (inv!29863 (transformation!4031 (h!27909 rules!1563))) e!1293756)))

(declare-fun b!2047064 () Bool)

(declare-fun equivClasses!1547 (Int Int) Bool)

(assert (=> b!2047064 (= e!1293756 (equivClasses!1547 (toChars!5573 (transformation!4031 (h!27909 rules!1563))) (toValue!5714 (transformation!4031 (h!27909 rules!1563)))))))

(assert (= (and d!625823 res!896447) b!2047064))

(declare-fun m!2490701 () Bool)

(assert (=> d!625823 m!2490701))

(declare-fun m!2490703 () Bool)

(assert (=> b!2047064 m!2490703))

(assert (=> b!2046866 d!625823))

(declare-fun d!625825 () Bool)

(declare-fun list!9213 (Conc!7537) List!22596)

(assert (=> d!625825 (= (list!9212 (_1!12153 lt!767403)) (list!9213 (c!331184 (_1!12153 lt!767403))))))

(declare-fun bs!421986 () Bool)

(assert (= bs!421986 d!625825))

(declare-fun m!2490705 () Bool)

(assert (=> bs!421986 m!2490705))

(assert (=> b!2046922 d!625825))

(declare-fun d!625827 () Bool)

(assert (=> d!625827 (= (list!9212 acc!382) (list!9213 (c!331184 acc!382)))))

(declare-fun bs!421987 () Bool)

(assert (= bs!421987 d!625827))

(declare-fun m!2490707 () Bool)

(assert (=> bs!421987 m!2490707))

(assert (=> b!2046922 d!625827))

(declare-fun b!2047065 () Bool)

(declare-fun e!1293757 () tuple2!21254)

(assert (=> b!2047065 (= e!1293757 (tuple2!21255 (BalanceConc!14837 Empty!7537) treated!60))))

(declare-fun b!2047067 () Bool)

(declare-fun e!1293759 () Bool)

(declare-fun e!1293760 () Bool)

(assert (=> b!2047067 (= e!1293759 e!1293760)))

(declare-fun res!896448 () Bool)

(declare-fun lt!767510 () tuple2!21254)

(assert (=> b!2047067 (= res!896448 (< (size!17591 (_2!12153 lt!767510)) (size!17591 treated!60)))))

(assert (=> b!2047067 (=> (not res!896448) (not e!1293760))))

(declare-fun b!2047068 () Bool)

(assert (=> b!2047068 (= e!1293759 (= (list!9211 (_2!12153 lt!767510)) (list!9211 treated!60)))))

(declare-fun b!2047069 () Bool)

(declare-fun res!896449 () Bool)

(declare-fun e!1293758 () Bool)

(assert (=> b!2047069 (=> (not res!896449) (not e!1293758))))

(assert (=> b!2047069 (= res!896449 (= (list!9212 (_1!12153 lt!767510)) (_1!12158 (lexList!992 thiss!12889 rules!1563 (list!9211 treated!60)))))))

(declare-fun d!625829 () Bool)

(assert (=> d!625829 e!1293758))

(declare-fun res!896450 () Bool)

(assert (=> d!625829 (=> (not res!896450) (not e!1293758))))

(assert (=> d!625829 (= res!896450 e!1293759)))

(declare-fun c!331207 () Bool)

(assert (=> d!625829 (= c!331207 (> (size!17592 (_1!12153 lt!767510)) 0))))

(assert (=> d!625829 (= lt!767510 e!1293757)))

(declare-fun c!331206 () Bool)

(declare-fun lt!767511 () Option!4711)

(assert (=> d!625829 (= c!331206 ((_ is Some!4710) lt!767511))))

(assert (=> d!625829 (= lt!767511 (maxPrefixZipperSequence!792 thiss!12889 rules!1563 treated!60))))

(assert (=> d!625829 (= (lexRec!447 thiss!12889 rules!1563 treated!60) lt!767510)))

(declare-fun b!2047066 () Bool)

(declare-fun lt!767509 () tuple2!21254)

(assert (=> b!2047066 (= e!1293757 (tuple2!21255 (prepend!914 (_1!12153 lt!767509) (_1!12147 (v!27176 lt!767511))) (_2!12153 lt!767509)))))

(assert (=> b!2047066 (= lt!767509 (lexRec!447 thiss!12889 rules!1563 (_2!12147 (v!27176 lt!767511))))))

(declare-fun b!2047070 () Bool)

(assert (=> b!2047070 (= e!1293760 (not (isEmpty!13993 (_1!12153 lt!767510))))))

(declare-fun b!2047071 () Bool)

(assert (=> b!2047071 (= e!1293758 (= (list!9211 (_2!12153 lt!767510)) (_2!12158 (lexList!992 thiss!12889 rules!1563 (list!9211 treated!60)))))))

(assert (= (and d!625829 c!331206) b!2047066))

(assert (= (and d!625829 (not c!331206)) b!2047065))

(assert (= (and d!625829 c!331207) b!2047067))

(assert (= (and d!625829 (not c!331207)) b!2047068))

(assert (= (and b!2047067 res!896448) b!2047070))

(assert (= (and d!625829 res!896450) b!2047069))

(assert (= (and b!2047069 res!896449) b!2047071))

(declare-fun m!2490709 () Bool)

(assert (=> b!2047069 m!2490709))

(assert (=> b!2047069 m!2490429))

(assert (=> b!2047069 m!2490429))

(declare-fun m!2490711 () Bool)

(assert (=> b!2047069 m!2490711))

(declare-fun m!2490713 () Bool)

(assert (=> b!2047071 m!2490713))

(assert (=> b!2047071 m!2490429))

(assert (=> b!2047071 m!2490429))

(assert (=> b!2047071 m!2490711))

(declare-fun m!2490715 () Bool)

(assert (=> b!2047066 m!2490715))

(declare-fun m!2490717 () Bool)

(assert (=> b!2047066 m!2490717))

(assert (=> b!2047068 m!2490713))

(assert (=> b!2047068 m!2490429))

(declare-fun m!2490719 () Bool)

(assert (=> b!2047067 m!2490719))

(declare-fun m!2490721 () Bool)

(assert (=> b!2047067 m!2490721))

(declare-fun m!2490723 () Bool)

(assert (=> d!625829 m!2490723))

(declare-fun m!2490725 () Bool)

(assert (=> d!625829 m!2490725))

(declare-fun m!2490727 () Bool)

(assert (=> b!2047070 m!2490727))

(assert (=> b!2046922 d!625829))

(declare-fun d!625831 () Bool)

(assert (=> d!625831 (= (inv!29858 (tag!4521 (rule!6267 (_1!12147 (v!27176 err!3192))))) (= (mod (str.len (value!126535 (tag!4521 (rule!6267 (_1!12147 (v!27176 err!3192)))))) 2) 0))))

(assert (=> b!2046868 d!625831))

(declare-fun d!625833 () Bool)

(declare-fun res!896451 () Bool)

(declare-fun e!1293761 () Bool)

(assert (=> d!625833 (=> (not res!896451) (not e!1293761))))

(assert (=> d!625833 (= res!896451 (semiInverseModEq!1620 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) (toValue!5714 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))))))

(assert (=> d!625833 (= (inv!29863 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) e!1293761)))

(declare-fun b!2047072 () Bool)

(assert (=> b!2047072 (= e!1293761 (equivClasses!1547 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) (toValue!5714 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))))))

(assert (= (and d!625833 res!896451) b!2047072))

(declare-fun m!2490729 () Bool)

(assert (=> d!625833 m!2490729))

(declare-fun m!2490731 () Bool)

(assert (=> b!2047072 m!2490731))

(assert (=> b!2046868 d!625833))

(declare-fun d!625835 () Bool)

(assert (=> d!625835 (= (isEmpty!13991 (list!9211 (_2!12153 lt!767403))) ((_ is Nil!22507) (list!9211 (_2!12153 lt!767403))))))

(assert (=> b!2046885 d!625835))

(declare-fun d!625837 () Bool)

(declare-fun list!9214 (Conc!7536) List!22591)

(assert (=> d!625837 (= (list!9211 (_2!12153 lt!767403)) (list!9214 (c!331182 (_2!12153 lt!767403))))))

(declare-fun bs!421988 () Bool)

(assert (= bs!421988 d!625837))

(declare-fun m!2490733 () Bool)

(assert (=> bs!421988 m!2490733))

(assert (=> b!2046885 d!625837))

(declare-fun b!2047073 () Bool)

(declare-fun e!1293762 () tuple2!21254)

(assert (=> b!2047073 (= e!1293762 (tuple2!21255 (BalanceConc!14837 Empty!7537) totalInput!418))))

(declare-fun b!2047075 () Bool)

(declare-fun e!1293764 () Bool)

(declare-fun e!1293765 () Bool)

(assert (=> b!2047075 (= e!1293764 e!1293765)))

(declare-fun res!896452 () Bool)

(declare-fun lt!767513 () tuple2!21254)

(assert (=> b!2047075 (= res!896452 (< (size!17591 (_2!12153 lt!767513)) (size!17591 totalInput!418)))))

(assert (=> b!2047075 (=> (not res!896452) (not e!1293765))))

(declare-fun b!2047076 () Bool)

(assert (=> b!2047076 (= e!1293764 (= (list!9211 (_2!12153 lt!767513)) (list!9211 totalInput!418)))))

(declare-fun b!2047077 () Bool)

(declare-fun res!896453 () Bool)

(declare-fun e!1293763 () Bool)

(assert (=> b!2047077 (=> (not res!896453) (not e!1293763))))

(assert (=> b!2047077 (= res!896453 (= (list!9212 (_1!12153 lt!767513)) (_1!12158 (lexList!992 thiss!12889 rules!1563 (list!9211 totalInput!418)))))))

(declare-fun d!625839 () Bool)

(assert (=> d!625839 e!1293763))

(declare-fun res!896454 () Bool)

(assert (=> d!625839 (=> (not res!896454) (not e!1293763))))

(assert (=> d!625839 (= res!896454 e!1293764)))

(declare-fun c!331209 () Bool)

(assert (=> d!625839 (= c!331209 (> (size!17592 (_1!12153 lt!767513)) 0))))

(assert (=> d!625839 (= lt!767513 e!1293762)))

(declare-fun c!331208 () Bool)

(declare-fun lt!767514 () Option!4711)

(assert (=> d!625839 (= c!331208 ((_ is Some!4710) lt!767514))))

(assert (=> d!625839 (= lt!767514 (maxPrefixZipperSequence!792 thiss!12889 rules!1563 totalInput!418))))

(assert (=> d!625839 (= (lexRec!447 thiss!12889 rules!1563 totalInput!418) lt!767513)))

(declare-fun b!2047074 () Bool)

(declare-fun lt!767512 () tuple2!21254)

(assert (=> b!2047074 (= e!1293762 (tuple2!21255 (prepend!914 (_1!12153 lt!767512) (_1!12147 (v!27176 lt!767514))) (_2!12153 lt!767512)))))

(assert (=> b!2047074 (= lt!767512 (lexRec!447 thiss!12889 rules!1563 (_2!12147 (v!27176 lt!767514))))))

(declare-fun b!2047078 () Bool)

(assert (=> b!2047078 (= e!1293765 (not (isEmpty!13993 (_1!12153 lt!767513))))))

(declare-fun b!2047079 () Bool)

(assert (=> b!2047079 (= e!1293763 (= (list!9211 (_2!12153 lt!767513)) (_2!12158 (lexList!992 thiss!12889 rules!1563 (list!9211 totalInput!418)))))))

(assert (= (and d!625839 c!331208) b!2047074))

(assert (= (and d!625839 (not c!331208)) b!2047073))

(assert (= (and d!625839 c!331209) b!2047075))

(assert (= (and d!625839 (not c!331209)) b!2047076))

(assert (= (and b!2047075 res!896452) b!2047078))

(assert (= (and d!625839 res!896454) b!2047077))

(assert (= (and b!2047077 res!896453) b!2047079))

(declare-fun m!2490735 () Bool)

(assert (=> b!2047077 m!2490735))

(assert (=> b!2047077 m!2490425))

(assert (=> b!2047077 m!2490425))

(declare-fun m!2490737 () Bool)

(assert (=> b!2047077 m!2490737))

(declare-fun m!2490739 () Bool)

(assert (=> b!2047079 m!2490739))

(assert (=> b!2047079 m!2490425))

(assert (=> b!2047079 m!2490425))

(assert (=> b!2047079 m!2490737))

(declare-fun m!2490741 () Bool)

(assert (=> b!2047074 m!2490741))

(declare-fun m!2490743 () Bool)

(assert (=> b!2047074 m!2490743))

(assert (=> b!2047076 m!2490739))

(assert (=> b!2047076 m!2490425))

(declare-fun m!2490745 () Bool)

(assert (=> b!2047075 m!2490745))

(declare-fun m!2490747 () Bool)

(assert (=> b!2047075 m!2490747))

(declare-fun m!2490749 () Bool)

(assert (=> d!625839 m!2490749))

(declare-fun m!2490751 () Bool)

(assert (=> d!625839 m!2490751))

(declare-fun m!2490753 () Bool)

(assert (=> b!2047078 m!2490753))

(assert (=> b!2046927 d!625839))

(declare-fun b!2047080 () Bool)

(declare-fun e!1293766 () tuple2!21254)

(assert (=> b!2047080 (= e!1293766 (tuple2!21255 (BalanceConc!14837 Empty!7537) input!986))))

(declare-fun b!2047082 () Bool)

(declare-fun e!1293768 () Bool)

(declare-fun e!1293769 () Bool)

(assert (=> b!2047082 (= e!1293768 e!1293769)))

(declare-fun res!896455 () Bool)

(declare-fun lt!767516 () tuple2!21254)

(assert (=> b!2047082 (= res!896455 (< (size!17591 (_2!12153 lt!767516)) (size!17591 input!986)))))

(assert (=> b!2047082 (=> (not res!896455) (not e!1293769))))

(declare-fun b!2047083 () Bool)

(assert (=> b!2047083 (= e!1293768 (= (list!9211 (_2!12153 lt!767516)) (list!9211 input!986)))))

(declare-fun b!2047084 () Bool)

(declare-fun res!896456 () Bool)

(declare-fun e!1293767 () Bool)

(assert (=> b!2047084 (=> (not res!896456) (not e!1293767))))

(assert (=> b!2047084 (= res!896456 (= (list!9212 (_1!12153 lt!767516)) (_1!12158 (lexList!992 thiss!12889 rules!1563 (list!9211 input!986)))))))

(declare-fun d!625841 () Bool)

(assert (=> d!625841 e!1293767))

(declare-fun res!896457 () Bool)

(assert (=> d!625841 (=> (not res!896457) (not e!1293767))))

(assert (=> d!625841 (= res!896457 e!1293768)))

(declare-fun c!331211 () Bool)

(assert (=> d!625841 (= c!331211 (> (size!17592 (_1!12153 lt!767516)) 0))))

(assert (=> d!625841 (= lt!767516 e!1293766)))

(declare-fun c!331210 () Bool)

(declare-fun lt!767517 () Option!4711)

(assert (=> d!625841 (= c!331210 ((_ is Some!4710) lt!767517))))

(assert (=> d!625841 (= lt!767517 (maxPrefixZipperSequence!792 thiss!12889 rules!1563 input!986))))

(assert (=> d!625841 (= (lexRec!447 thiss!12889 rules!1563 input!986) lt!767516)))

(declare-fun b!2047081 () Bool)

(declare-fun lt!767515 () tuple2!21254)

(assert (=> b!2047081 (= e!1293766 (tuple2!21255 (prepend!914 (_1!12153 lt!767515) (_1!12147 (v!27176 lt!767517))) (_2!12153 lt!767515)))))

(assert (=> b!2047081 (= lt!767515 (lexRec!447 thiss!12889 rules!1563 (_2!12147 (v!27176 lt!767517))))))

(declare-fun b!2047085 () Bool)

(assert (=> b!2047085 (= e!1293769 (not (isEmpty!13993 (_1!12153 lt!767516))))))

(declare-fun b!2047086 () Bool)

(assert (=> b!2047086 (= e!1293767 (= (list!9211 (_2!12153 lt!767516)) (_2!12158 (lexList!992 thiss!12889 rules!1563 (list!9211 input!986)))))))

(assert (= (and d!625841 c!331210) b!2047081))

(assert (= (and d!625841 (not c!331210)) b!2047080))

(assert (= (and d!625841 c!331211) b!2047082))

(assert (= (and d!625841 (not c!331211)) b!2047083))

(assert (= (and b!2047082 res!896455) b!2047085))

(assert (= (and d!625841 res!896457) b!2047084))

(assert (= (and b!2047084 res!896456) b!2047086))

(declare-fun m!2490755 () Bool)

(assert (=> b!2047084 m!2490755))

(assert (=> b!2047084 m!2490427))

(assert (=> b!2047084 m!2490427))

(declare-fun m!2490757 () Bool)

(assert (=> b!2047084 m!2490757))

(declare-fun m!2490759 () Bool)

(assert (=> b!2047086 m!2490759))

(assert (=> b!2047086 m!2490427))

(assert (=> b!2047086 m!2490427))

(assert (=> b!2047086 m!2490757))

(declare-fun m!2490761 () Bool)

(assert (=> b!2047081 m!2490761))

(declare-fun m!2490763 () Bool)

(assert (=> b!2047081 m!2490763))

(assert (=> b!2047083 m!2490759))

(assert (=> b!2047083 m!2490427))

(declare-fun m!2490765 () Bool)

(assert (=> b!2047082 m!2490765))

(declare-fun m!2490767 () Bool)

(assert (=> b!2047082 m!2490767))

(declare-fun m!2490769 () Bool)

(assert (=> d!625841 m!2490769))

(declare-fun m!2490771 () Bool)

(assert (=> d!625841 m!2490771))

(declare-fun m!2490773 () Bool)

(assert (=> b!2047085 m!2490773))

(assert (=> b!2046927 d!625841))

(declare-fun d!625843 () Bool)

(assert (=> d!625843 (= (list!9212 (_1!12153 lt!767397)) (list!9213 (c!331184 (_1!12153 lt!767397))))))

(declare-fun bs!421989 () Bool)

(assert (= bs!421989 d!625843))

(declare-fun m!2490775 () Bool)

(assert (=> bs!421989 m!2490775))

(assert (=> b!2046927 d!625843))

(declare-fun d!625845 () Bool)

(declare-fun e!1293772 () Bool)

(assert (=> d!625845 e!1293772))

(declare-fun res!896467 () Bool)

(assert (=> d!625845 (=> (not res!896467) (not e!1293772))))

(declare-fun appendAssocInst!553 (Conc!7537 Conc!7537) Bool)

(assert (=> d!625845 (= res!896467 (appendAssocInst!553 (c!331184 acc!382) (c!331184 (_1!12153 lt!767402))))))

(declare-fun lt!767520 () BalanceConc!14836)

(declare-fun ++!6110 (Conc!7537 Conc!7537) Conc!7537)

(assert (=> d!625845 (= lt!767520 (BalanceConc!14837 (++!6110 (c!331184 acc!382) (c!331184 (_1!12153 lt!767402)))))))

(assert (=> d!625845 (= (++!6108 acc!382 (_1!12153 lt!767402)) lt!767520)))

(declare-fun b!2047096 () Bool)

(declare-fun res!896468 () Bool)

(assert (=> b!2047096 (=> (not res!896468) (not e!1293772))))

(declare-fun height!1181 (Conc!7537) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2047096 (= res!896468 (<= (height!1181 (++!6110 (c!331184 acc!382) (c!331184 (_1!12153 lt!767402)))) (+ (max!0 (height!1181 (c!331184 acc!382)) (height!1181 (c!331184 (_1!12153 lt!767402)))) 1)))))

(declare-fun b!2047097 () Bool)

(declare-fun res!896466 () Bool)

(assert (=> b!2047097 (=> (not res!896466) (not e!1293772))))

(assert (=> b!2047097 (= res!896466 (>= (height!1181 (++!6110 (c!331184 acc!382) (c!331184 (_1!12153 lt!767402)))) (max!0 (height!1181 (c!331184 acc!382)) (height!1181 (c!331184 (_1!12153 lt!767402))))))))

(declare-fun b!2047098 () Bool)

(declare-fun ++!6111 (List!22596 List!22596) List!22596)

(assert (=> b!2047098 (= e!1293772 (= (list!9212 lt!767520) (++!6111 (list!9212 acc!382) (list!9212 (_1!12153 lt!767402)))))))

(declare-fun b!2047095 () Bool)

(declare-fun res!896469 () Bool)

(assert (=> b!2047095 (=> (not res!896469) (not e!1293772))))

(declare-fun isBalanced!2367 (Conc!7537) Bool)

(assert (=> b!2047095 (= res!896469 (isBalanced!2367 (++!6110 (c!331184 acc!382) (c!331184 (_1!12153 lt!767402)))))))

(assert (= (and d!625845 res!896467) b!2047095))

(assert (= (and b!2047095 res!896469) b!2047096))

(assert (= (and b!2047096 res!896468) b!2047097))

(assert (= (and b!2047097 res!896466) b!2047098))

(declare-fun m!2490777 () Bool)

(assert (=> b!2047096 m!2490777))

(assert (=> b!2047096 m!2490777))

(declare-fun m!2490779 () Bool)

(assert (=> b!2047096 m!2490779))

(declare-fun m!2490781 () Bool)

(assert (=> b!2047096 m!2490781))

(declare-fun m!2490783 () Bool)

(assert (=> b!2047096 m!2490783))

(declare-fun m!2490785 () Bool)

(assert (=> b!2047096 m!2490785))

(assert (=> b!2047096 m!2490779))

(assert (=> b!2047096 m!2490783))

(assert (=> b!2047095 m!2490783))

(assert (=> b!2047095 m!2490783))

(declare-fun m!2490787 () Bool)

(assert (=> b!2047095 m!2490787))

(assert (=> b!2047097 m!2490777))

(assert (=> b!2047097 m!2490777))

(assert (=> b!2047097 m!2490779))

(assert (=> b!2047097 m!2490781))

(assert (=> b!2047097 m!2490783))

(assert (=> b!2047097 m!2490785))

(assert (=> b!2047097 m!2490779))

(assert (=> b!2047097 m!2490783))

(declare-fun m!2490789 () Bool)

(assert (=> d!625845 m!2490789))

(assert (=> d!625845 m!2490783))

(declare-fun m!2490791 () Bool)

(assert (=> b!2047098 m!2490791))

(assert (=> b!2047098 m!2490537))

(declare-fun m!2490793 () Bool)

(assert (=> b!2047098 m!2490793))

(assert (=> b!2047098 m!2490537))

(assert (=> b!2047098 m!2490793))

(declare-fun m!2490795 () Bool)

(assert (=> b!2047098 m!2490795))

(assert (=> b!2046927 d!625845))

(declare-fun d!625847 () Bool)

(assert (=> d!625847 (= (list!9212 (++!6108 acc!382 (_1!12153 lt!767402))) (list!9213 (c!331184 (++!6108 acc!382 (_1!12153 lt!767402)))))))

(declare-fun bs!421990 () Bool)

(assert (= bs!421990 d!625847))

(declare-fun m!2490797 () Bool)

(assert (=> bs!421990 m!2490797))

(assert (=> b!2046927 d!625847))

(declare-fun d!625849 () Bool)

(declare-fun e!1293773 () Bool)

(assert (=> d!625849 e!1293773))

(declare-fun res!896471 () Bool)

(assert (=> d!625849 (=> (not res!896471) (not e!1293773))))

(declare-fun lt!767523 () tuple3!2122)

(assert (=> d!625849 (= res!896471 (= (_1!12152 lt!767523) (maxPrefixZipperSequenceV2!321 thiss!12889 (t!191712 rules!1563) input!986 totalInput!418)))))

(declare-fun e!1293774 () tuple3!2122)

(assert (=> d!625849 (= lt!767523 e!1293774)))

(declare-fun c!331215 () Bool)

(assert (=> d!625849 (= c!331215 (and ((_ is Cons!22508) (t!191712 rules!1563)) ((_ is Nil!22508) (t!191712 (t!191712 rules!1563)))))))

(declare-fun lt!767526 () Unit!37061)

(declare-fun lt!767525 () Unit!37061)

(assert (=> d!625849 (= lt!767526 lt!767525)))

(declare-fun lt!767522 () List!22591)

(declare-fun lt!767528 () List!22591)

(assert (=> d!625849 (isPrefix!2001 lt!767522 lt!767528)))

(assert (=> d!625849 (= lt!767525 (lemmaIsPrefixRefl!1319 lt!767522 lt!767528))))

(assert (=> d!625849 (= lt!767528 (list!9211 input!986))))

(assert (=> d!625849 (= lt!767522 (list!9211 input!986))))

(assert (=> d!625849 (rulesValidInductive!1404 thiss!12889 (t!191712 rules!1563))))

(assert (=> d!625849 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!20 thiss!12889 (t!191712 rules!1563) input!986 totalInput!418 (_2!12152 lt!767394) (_3!1525 lt!767394)) lt!767523)))

(declare-fun b!2047099 () Bool)

(declare-fun res!896470 () Bool)

(assert (=> b!2047099 (=> (not res!896470) (not e!1293773))))

(assert (=> b!2047099 (= res!896470 (valid!1618 (_2!12152 lt!767523)))))

(declare-fun call!125354 () tuple3!2122)

(declare-fun bm!125349 () Bool)

(assert (=> bm!125349 (= call!125354 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!11 thiss!12889 (h!27909 (t!191712 rules!1563)) input!986 totalInput!418 (_2!12152 lt!767394) (_3!1525 lt!767394)))))

(declare-fun b!2047100 () Bool)

(declare-fun lt!767524 () tuple3!2122)

(declare-fun lt!767527 () tuple3!2122)

(assert (=> b!2047100 (= e!1293774 (tuple3!2123 (ite (and ((_ is None!4710) (_1!12152 lt!767524)) ((_ is None!4710) (_1!12152 lt!767527))) None!4710 (ite ((_ is None!4710) (_1!12152 lt!767527)) (_1!12152 lt!767524) (ite ((_ is None!4710) (_1!12152 lt!767524)) (_1!12152 lt!767527) (ite (>= (size!17586 (_1!12147 (v!27176 (_1!12152 lt!767524)))) (size!17586 (_1!12147 (v!27176 (_1!12152 lt!767527))))) (_1!12152 lt!767524) (_1!12152 lt!767527))))) (_2!12152 lt!767527) (_3!1525 lt!767527)))))

(assert (=> b!2047100 (= lt!767524 call!125354)))

(assert (=> b!2047100 (= lt!767527 (maxPrefixZipperSequenceV2MemOnlyDeriv!20 thiss!12889 (t!191712 (t!191712 rules!1563)) input!986 totalInput!418 (_2!12152 lt!767524) (_3!1525 lt!767524)))))

(declare-fun b!2047101 () Bool)

(declare-fun lt!767521 () tuple3!2122)

(assert (=> b!2047101 (= e!1293774 (tuple3!2123 (_1!12152 lt!767521) (_2!12152 lt!767521) (_3!1525 lt!767521)))))

(assert (=> b!2047101 (= lt!767521 call!125354)))

(declare-fun b!2047102 () Bool)

(assert (=> b!2047102 (= e!1293773 (valid!1617 (_3!1525 lt!767523)))))

(assert (= (and d!625849 c!331215) b!2047101))

(assert (= (and d!625849 (not c!331215)) b!2047100))

(assert (= (or b!2047101 b!2047100) bm!125349))

(assert (= (and d!625849 res!896471) b!2047099))

(assert (= (and b!2047099 res!896470) b!2047102))

(declare-fun m!2490799 () Bool)

(assert (=> bm!125349 m!2490799))

(declare-fun m!2490801 () Bool)

(assert (=> b!2047102 m!2490801))

(declare-fun m!2490803 () Bool)

(assert (=> b!2047099 m!2490803))

(declare-fun m!2490805 () Bool)

(assert (=> d!625849 m!2490805))

(declare-fun m!2490807 () Bool)

(assert (=> d!625849 m!2490807))

(assert (=> d!625849 m!2490427))

(assert (=> d!625849 m!2490595))

(assert (=> d!625849 m!2490507))

(declare-fun m!2490809 () Bool)

(assert (=> b!2047100 m!2490809))

(assert (=> b!2046889 d!625849))

(declare-fun d!625851 () Bool)

(declare-fun c!331216 () Bool)

(assert (=> d!625851 (= c!331216 ((_ is Node!7536) (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193))))))))

(declare-fun e!1293775 () Bool)

(assert (=> d!625851 (= (inv!29864 (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193))))) e!1293775)))

(declare-fun b!2047103 () Bool)

(assert (=> b!2047103 (= e!1293775 (inv!29871 (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193))))))))

(declare-fun b!2047104 () Bool)

(declare-fun e!1293776 () Bool)

(assert (=> b!2047104 (= e!1293775 e!1293776)))

(declare-fun res!896472 () Bool)

(assert (=> b!2047104 (= res!896472 (not ((_ is Leaf!11033) (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193)))))))))

(assert (=> b!2047104 (=> res!896472 e!1293776)))

(declare-fun b!2047105 () Bool)

(assert (=> b!2047105 (= e!1293776 (inv!29872 (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193))))))))

(assert (= (and d!625851 c!331216) b!2047103))

(assert (= (and d!625851 (not c!331216)) b!2047104))

(assert (= (and b!2047104 (not res!896472)) b!2047105))

(declare-fun m!2490811 () Bool)

(assert (=> b!2047103 m!2490811))

(declare-fun m!2490813 () Bool)

(assert (=> b!2047105 m!2490813))

(assert (=> b!2046908 d!625851))

(declare-fun d!625853 () Bool)

(assert (=> d!625853 (= (array_inv!2236 (_keys!2330 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))))) (bvsge (size!17587 (_keys!2330 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2046888 d!625853))

(declare-fun d!625855 () Bool)

(assert (=> d!625855 (= (array_inv!2237 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))))) (bvsge (size!17589 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2046888 d!625855))

(declare-fun d!625857 () Bool)

(declare-fun c!331217 () Bool)

(assert (=> d!625857 (= c!331217 ((_ is Node!7536) (c!331182 treated!60)))))

(declare-fun e!1293777 () Bool)

(assert (=> d!625857 (= (inv!29864 (c!331182 treated!60)) e!1293777)))

(declare-fun b!2047106 () Bool)

(assert (=> b!2047106 (= e!1293777 (inv!29871 (c!331182 treated!60)))))

(declare-fun b!2047107 () Bool)

(declare-fun e!1293778 () Bool)

(assert (=> b!2047107 (= e!1293777 e!1293778)))

(declare-fun res!896473 () Bool)

(assert (=> b!2047107 (= res!896473 (not ((_ is Leaf!11033) (c!331182 treated!60))))))

(assert (=> b!2047107 (=> res!896473 e!1293778)))

(declare-fun b!2047108 () Bool)

(assert (=> b!2047108 (= e!1293778 (inv!29872 (c!331182 treated!60)))))

(assert (= (and d!625857 c!331217) b!2047106))

(assert (= (and d!625857 (not c!331217)) b!2047107))

(assert (= (and b!2047107 (not res!896473)) b!2047108))

(declare-fun m!2490815 () Bool)

(assert (=> b!2047106 m!2490815))

(declare-fun m!2490817 () Bool)

(assert (=> b!2047108 m!2490817))

(assert (=> b!2046871 d!625857))

(declare-fun d!625859 () Bool)

(declare-fun validCacheMapDown!188 (MutableMap!1947) Bool)

(assert (=> d!625859 (= (valid!1617 cacheDown!575) (validCacheMapDown!188 (cache!2328 cacheDown!575)))))

(declare-fun bs!421991 () Bool)

(assert (= bs!421991 d!625859))

(declare-fun m!2490819 () Bool)

(assert (=> bs!421991 m!2490819))

(assert (=> b!2046892 d!625859))

(declare-fun d!625861 () Bool)

(assert (=> d!625861 (= (array_inv!2236 (_keys!2330 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))))) (bvsge (size!17587 (_keys!2330 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2046910 d!625861))

(declare-fun d!625863 () Bool)

(assert (=> d!625863 (= (array_inv!2237 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))))) (bvsge (size!17589 (_values!2313 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2046910 d!625863))

(declare-fun b!2047134 () Bool)

(declare-fun e!1293799 () Bool)

(assert (=> b!2047134 (= e!1293799 true)))

(declare-fun b!2047133 () Bool)

(declare-fun e!1293798 () Bool)

(assert (=> b!2047133 (= e!1293798 e!1293799)))

(declare-fun b!2047122 () Bool)

(assert (=> b!2047122 e!1293798))

(assert (= b!2047133 b!2047134))

(assert (= b!2047122 b!2047133))

(declare-fun order!14279 () Int)

(declare-fun order!14277 () Int)

(declare-fun lambda!76709 () Int)

(declare-fun dynLambda!11118 (Int Int) Int)

(declare-fun dynLambda!11119 (Int Int) Int)

(assert (=> b!2047134 (< (dynLambda!11118 order!14277 (toValue!5714 (transformation!4031 (h!27909 rules!1563)))) (dynLambda!11119 order!14279 lambda!76709))))

(declare-fun order!14281 () Int)

(declare-fun dynLambda!11120 (Int Int) Int)

(assert (=> b!2047134 (< (dynLambda!11120 order!14281 (toChars!5573 (transformation!4031 (h!27909 rules!1563)))) (dynLambda!11119 order!14279 lambda!76709))))

(declare-fun b!2047121 () Bool)

(declare-fun e!1293792 () Option!4711)

(assert (=> b!2047121 (= e!1293792 None!4710)))

(declare-fun b!2047123 () Bool)

(declare-fun e!1293791 () Bool)

(declare-fun lt!767555 () List!22591)

(assert (=> b!2047123 (= e!1293791 (matchR!2693 (regex!4031 (h!27909 rules!1563)) (_1!12157 (findLongestMatchInner!559 (regex!4031 (h!27909 rules!1563)) Nil!22507 (size!17590 Nil!22507) lt!767555 lt!767555 (size!17590 lt!767555)))))))

(declare-fun b!2047124 () Bool)

(declare-fun e!1293790 () Bool)

(declare-fun e!1293789 () Bool)

(assert (=> b!2047124 (= e!1293790 e!1293789)))

(declare-fun res!896483 () Bool)

(assert (=> b!2047124 (=> (not res!896483) (not e!1293789))))

(declare-fun lt!767554 () Option!4711)

(declare-fun maxPrefixOneRule!1272 (LexerInterface!3642 Rule!7862 List!22591) Option!4712)

(assert (=> b!2047124 (= res!896483 (= (_1!12147 (get!7110 lt!767554)) (_1!12154 (get!7111 (maxPrefixOneRule!1272 thiss!12889 (h!27909 rules!1563) (list!9211 input!986))))))))

(declare-fun b!2047125 () Bool)

(declare-fun e!1293793 () Bool)

(assert (=> b!2047125 (= e!1293793 e!1293790)))

(declare-fun res!896482 () Bool)

(assert (=> b!2047125 (=> res!896482 e!1293790)))

(assert (=> b!2047125 (= res!896482 (not (isDefined!3973 lt!767554)))))

(declare-fun b!2047126 () Bool)

(assert (=> b!2047126 (= e!1293789 (= (list!9211 (_2!12147 (get!7110 lt!767554))) (_2!12154 (get!7111 (maxPrefixOneRule!1272 thiss!12889 (h!27909 rules!1563) (list!9211 input!986))))))))

(declare-fun d!625865 () Bool)

(assert (=> d!625865 e!1293793))

(declare-fun res!896484 () Bool)

(assert (=> d!625865 (=> (not res!896484) (not e!1293793))))

(assert (=> d!625865 (= res!896484 (= (isDefined!3973 lt!767554) (isDefined!3974 (maxPrefixOneRule!1272 thiss!12889 (h!27909 rules!1563) (list!9211 input!986)))))))

(assert (=> d!625865 (= lt!767554 e!1293792)))

(declare-fun c!331220 () Bool)

(declare-fun lt!767552 () tuple2!21258)

(assert (=> d!625865 (= c!331220 (isEmpty!13992 (_1!12155 lt!767552)))))

(declare-fun findLongestMatchWithZipperSequenceV2!35 (Regex!5459 BalanceConc!14834 BalanceConc!14834) tuple2!21258)

(assert (=> d!625865 (= lt!767552 (findLongestMatchWithZipperSequenceV2!35 (regex!4031 (h!27909 rules!1563)) input!986 totalInput!418))))

(assert (=> d!625865 (ruleValid!1232 thiss!12889 (h!27909 rules!1563))))

(assert (=> d!625865 (= (maxPrefixOneRuleZipperSequenceV2!123 thiss!12889 (h!27909 rules!1563) input!986 totalInput!418) lt!767554)))

(assert (=> b!2047122 (= e!1293792 (Some!4710 (tuple2!21247 (Token!7611 (apply!5867 (transformation!4031 (h!27909 rules!1563)) (_1!12155 lt!767552)) (h!27909 rules!1563) (size!17591 (_1!12155 lt!767552)) (list!9211 (_1!12155 lt!767552))) (_2!12155 lt!767552))))))

(assert (=> b!2047122 (= lt!767555 (list!9211 input!986))))

(declare-fun lt!767551 () Unit!37061)

(assert (=> b!2047122 (= lt!767551 (longestMatchIsAcceptedByMatchOrIsEmpty!543 (regex!4031 (h!27909 rules!1563)) lt!767555))))

(declare-fun res!896485 () Bool)

(assert (=> b!2047122 (= res!896485 (isEmpty!13991 (_1!12157 (findLongestMatchInner!559 (regex!4031 (h!27909 rules!1563)) Nil!22507 (size!17590 Nil!22507) lt!767555 lt!767555 (size!17590 lt!767555)))))))

(assert (=> b!2047122 (=> res!896485 e!1293791)))

(assert (=> b!2047122 e!1293791))

(declare-fun lt!767553 () Unit!37061)

(assert (=> b!2047122 (= lt!767553 lt!767551)))

(declare-fun lt!767558 () Unit!37061)

(declare-fun lemmaInv!761 (TokenValueInjection!7918) Unit!37061)

(assert (=> b!2047122 (= lt!767558 (lemmaInv!761 (transformation!4031 (h!27909 rules!1563))))))

(declare-fun lt!767549 () Unit!37061)

(declare-fun ForallOf!452 (Int BalanceConc!14834) Unit!37061)

(assert (=> b!2047122 (= lt!767549 (ForallOf!452 lambda!76709 (_1!12155 lt!767552)))))

(declare-fun lt!767550 () Unit!37061)

(declare-fun seqFromList!2855 (List!22591) BalanceConc!14834)

(assert (=> b!2047122 (= lt!767550 (ForallOf!452 lambda!76709 (seqFromList!2855 (list!9211 (_1!12155 lt!767552)))))))

(declare-fun lt!767557 () Option!4711)

(assert (=> b!2047122 (= lt!767557 (Some!4710 (tuple2!21247 (Token!7611 (apply!5867 (transformation!4031 (h!27909 rules!1563)) (_1!12155 lt!767552)) (h!27909 rules!1563) (size!17591 (_1!12155 lt!767552)) (list!9211 (_1!12155 lt!767552))) (_2!12155 lt!767552))))))

(declare-fun lt!767556 () Unit!37061)

(declare-fun lemmaEqSameImage!685 (TokenValueInjection!7918 BalanceConc!14834 BalanceConc!14834) Unit!37061)

(assert (=> b!2047122 (= lt!767556 (lemmaEqSameImage!685 (transformation!4031 (h!27909 rules!1563)) (_1!12155 lt!767552) (seqFromList!2855 (list!9211 (_1!12155 lt!767552)))))))

(assert (= (and d!625865 c!331220) b!2047121))

(assert (= (and d!625865 (not c!331220)) b!2047122))

(assert (= (and b!2047122 (not res!896485)) b!2047123))

(assert (= (and d!625865 res!896484) b!2047125))

(assert (= (and b!2047125 (not res!896482)) b!2047124))

(assert (= (and b!2047124 res!896483) b!2047126))

(declare-fun m!2490821 () Bool)

(assert (=> b!2047122 m!2490821))

(declare-fun m!2490823 () Bool)

(assert (=> b!2047122 m!2490823))

(declare-fun m!2490825 () Bool)

(assert (=> b!2047122 m!2490825))

(declare-fun m!2490827 () Bool)

(assert (=> b!2047122 m!2490827))

(declare-fun m!2490829 () Bool)

(assert (=> b!2047122 m!2490829))

(assert (=> b!2047122 m!2490821))

(assert (=> b!2047122 m!2490823))

(declare-fun m!2490831 () Bool)

(assert (=> b!2047122 m!2490831))

(declare-fun m!2490833 () Bool)

(assert (=> b!2047122 m!2490833))

(assert (=> b!2047122 m!2490609))

(declare-fun m!2490835 () Bool)

(assert (=> b!2047122 m!2490835))

(declare-fun m!2490837 () Bool)

(assert (=> b!2047122 m!2490837))

(assert (=> b!2047122 m!2490609))

(declare-fun m!2490839 () Bool)

(assert (=> b!2047122 m!2490839))

(assert (=> b!2047122 m!2490427))

(assert (=> b!2047122 m!2490823))

(declare-fun m!2490841 () Bool)

(assert (=> b!2047122 m!2490841))

(declare-fun m!2490843 () Bool)

(assert (=> b!2047122 m!2490843))

(assert (=> b!2047122 m!2490835))

(declare-fun m!2490845 () Bool)

(assert (=> b!2047125 m!2490845))

(declare-fun m!2490847 () Bool)

(assert (=> b!2047126 m!2490847))

(declare-fun m!2490849 () Bool)

(assert (=> b!2047126 m!2490849))

(declare-fun m!2490851 () Bool)

(assert (=> b!2047126 m!2490851))

(declare-fun m!2490853 () Bool)

(assert (=> b!2047126 m!2490853))

(assert (=> b!2047126 m!2490427))

(assert (=> b!2047126 m!2490851))

(assert (=> b!2047126 m!2490427))

(assert (=> d!625865 m!2490845))

(assert (=> d!625865 m!2490851))

(declare-fun m!2490855 () Bool)

(assert (=> d!625865 m!2490855))

(declare-fun m!2490857 () Bool)

(assert (=> d!625865 m!2490857))

(assert (=> d!625865 m!2490621))

(declare-fun m!2490859 () Bool)

(assert (=> d!625865 m!2490859))

(assert (=> d!625865 m!2490427))

(assert (=> d!625865 m!2490851))

(assert (=> d!625865 m!2490427))

(assert (=> b!2047124 m!2490847))

(assert (=> b!2047124 m!2490427))

(assert (=> b!2047124 m!2490427))

(assert (=> b!2047124 m!2490851))

(assert (=> b!2047124 m!2490851))

(assert (=> b!2047124 m!2490853))

(assert (=> b!2047123 m!2490609))

(assert (=> b!2047123 m!2490835))

(assert (=> b!2047123 m!2490609))

(assert (=> b!2047123 m!2490835))

(assert (=> b!2047123 m!2490837))

(declare-fun m!2490861 () Bool)

(assert (=> b!2047123 m!2490861))

(assert (=> bm!125340 d!625865))

(declare-fun b!2047145 () Bool)

(declare-fun e!1293806 () Bool)

(declare-fun e!1293807 () Bool)

(assert (=> b!2047145 (= e!1293806 e!1293807)))

(declare-fun c!331226 () Bool)

(assert (=> b!2047145 (= c!331226 ((_ is IntegerValue!12502) (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193))))))))

(declare-fun b!2047146 () Bool)

(declare-fun res!896488 () Bool)

(declare-fun e!1293808 () Bool)

(assert (=> b!2047146 (=> res!896488 e!1293808)))

(assert (=> b!2047146 (= res!896488 (not ((_ is IntegerValue!12503) (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193)))))))))

(assert (=> b!2047146 (= e!1293807 e!1293808)))

(declare-fun b!2047147 () Bool)

(declare-fun inv!16 (TokenValue!4167) Bool)

(assert (=> b!2047147 (= e!1293806 (inv!16 (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193))))))))

(declare-fun b!2047148 () Bool)

(declare-fun inv!15 (TokenValue!4167) Bool)

(assert (=> b!2047148 (= e!1293808 (inv!15 (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193))))))))

(declare-fun d!625867 () Bool)

(declare-fun c!331225 () Bool)

(assert (=> d!625867 (= c!331225 ((_ is IntegerValue!12501) (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193))))))))

(assert (=> d!625867 (= (inv!21 (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193))))) e!1293806)))

(declare-fun b!2047149 () Bool)

(declare-fun inv!17 (TokenValue!4167) Bool)

(assert (=> b!2047149 (= e!1293807 (inv!17 (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193))))))))

(assert (= (and d!625867 c!331225) b!2047147))

(assert (= (and d!625867 (not c!331225)) b!2047145))

(assert (= (and b!2047145 c!331226) b!2047149))

(assert (= (and b!2047145 (not c!331226)) b!2047146))

(assert (= (and b!2047146 (not res!896488)) b!2047148))

(declare-fun m!2490863 () Bool)

(assert (=> b!2047147 m!2490863))

(declare-fun m!2490865 () Bool)

(assert (=> b!2047148 m!2490865))

(declare-fun m!2490867 () Bool)

(assert (=> b!2047149 m!2490867))

(assert (=> b!2046930 d!625867))

(declare-fun d!625869 () Bool)

(declare-fun e!1293809 () Bool)

(assert (=> d!625869 e!1293809))

(declare-fun res!896490 () Bool)

(assert (=> d!625869 (=> (not res!896490) (not e!1293809))))

(declare-fun lt!767561 () tuple3!2122)

(assert (=> d!625869 (= res!896490 (= (_1!12152 lt!767561) (maxPrefixZipperSequenceV2!321 thiss!12889 rules!1563 input!986 totalInput!418)))))

(declare-fun e!1293810 () tuple3!2122)

(assert (=> d!625869 (= lt!767561 e!1293810)))

(declare-fun c!331227 () Bool)

(assert (=> d!625869 (= c!331227 (and ((_ is Cons!22508) rules!1563) ((_ is Nil!22508) (t!191712 rules!1563))))))

(declare-fun lt!767564 () Unit!37061)

(declare-fun lt!767563 () Unit!37061)

(assert (=> d!625869 (= lt!767564 lt!767563)))

(declare-fun lt!767560 () List!22591)

(declare-fun lt!767566 () List!22591)

(assert (=> d!625869 (isPrefix!2001 lt!767560 lt!767566)))

(assert (=> d!625869 (= lt!767563 (lemmaIsPrefixRefl!1319 lt!767560 lt!767566))))

(assert (=> d!625869 (= lt!767566 (list!9211 input!986))))

(assert (=> d!625869 (= lt!767560 (list!9211 input!986))))

(assert (=> d!625869 (rulesValidInductive!1404 thiss!12889 rules!1563)))

(assert (=> d!625869 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!20 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575) lt!767561)))

(declare-fun b!2047150 () Bool)

(declare-fun res!896489 () Bool)

(assert (=> b!2047150 (=> (not res!896489) (not e!1293809))))

(assert (=> b!2047150 (= res!896489 (valid!1618 (_2!12152 lt!767561)))))

(declare-fun call!125355 () tuple3!2122)

(declare-fun bm!125350 () Bool)

(assert (=> bm!125350 (= call!125355 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!11 thiss!12889 (h!27909 rules!1563) input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2047151 () Bool)

(declare-fun lt!767562 () tuple3!2122)

(declare-fun lt!767565 () tuple3!2122)

(assert (=> b!2047151 (= e!1293810 (tuple3!2123 (ite (and ((_ is None!4710) (_1!12152 lt!767562)) ((_ is None!4710) (_1!12152 lt!767565))) None!4710 (ite ((_ is None!4710) (_1!12152 lt!767565)) (_1!12152 lt!767562) (ite ((_ is None!4710) (_1!12152 lt!767562)) (_1!12152 lt!767565) (ite (>= (size!17586 (_1!12147 (v!27176 (_1!12152 lt!767562)))) (size!17586 (_1!12147 (v!27176 (_1!12152 lt!767565))))) (_1!12152 lt!767562) (_1!12152 lt!767565))))) (_2!12152 lt!767565) (_3!1525 lt!767565)))))

(assert (=> b!2047151 (= lt!767562 call!125355)))

(assert (=> b!2047151 (= lt!767565 (maxPrefixZipperSequenceV2MemOnlyDeriv!20 thiss!12889 (t!191712 rules!1563) input!986 totalInput!418 (_2!12152 lt!767562) (_3!1525 lt!767562)))))

(declare-fun b!2047152 () Bool)

(declare-fun lt!767559 () tuple3!2122)

(assert (=> b!2047152 (= e!1293810 (tuple3!2123 (_1!12152 lt!767559) (_2!12152 lt!767559) (_3!1525 lt!767559)))))

(assert (=> b!2047152 (= lt!767559 call!125355)))

(declare-fun b!2047153 () Bool)

(assert (=> b!2047153 (= e!1293809 (valid!1617 (_3!1525 lt!767561)))))

(assert (= (and d!625869 c!331227) b!2047152))

(assert (= (and d!625869 (not c!331227)) b!2047151))

(assert (= (or b!2047152 b!2047151) bm!125350))

(assert (= (and d!625869 res!896490) b!2047150))

(assert (= (and b!2047150 res!896489) b!2047153))

(declare-fun m!2490869 () Bool)

(assert (=> bm!125350 m!2490869))

(declare-fun m!2490871 () Bool)

(assert (=> b!2047153 m!2490871))

(declare-fun m!2490873 () Bool)

(assert (=> b!2047150 m!2490873))

(declare-fun m!2490875 () Bool)

(assert (=> d!625869 m!2490875))

(declare-fun m!2490877 () Bool)

(assert (=> d!625869 m!2490877))

(assert (=> d!625869 m!2490427))

(assert (=> d!625869 m!2490461))

(assert (=> d!625869 m!2490469))

(declare-fun m!2490879 () Bool)

(assert (=> b!2047151 m!2490879))

(assert (=> b!2046909 d!625869))

(declare-fun d!625871 () Bool)

(declare-fun validCacheMapUp!190 (MutableMap!1946) Bool)

(assert (=> d!625871 (= (valid!1618 cacheUp!562) (validCacheMapUp!190 (cache!2327 cacheUp!562)))))

(declare-fun bs!421992 () Bool)

(assert (= bs!421992 d!625871))

(declare-fun m!2490881 () Bool)

(assert (=> bs!421992 m!2490881))

(assert (=> b!2046929 d!625871))

(declare-fun d!625873 () Bool)

(declare-fun res!896491 () Bool)

(declare-fun e!1293811 () Bool)

(assert (=> d!625873 (=> (not res!896491) (not e!1293811))))

(assert (=> d!625873 (= res!896491 (not (isEmpty!13991 (originalCharacters!4836 (_1!12147 (v!27176 (_1!12152 err!3193)))))))))

(assert (=> d!625873 (= (inv!29870 (_1!12147 (v!27176 (_1!12152 err!3193)))) e!1293811)))

(declare-fun b!2047154 () Bool)

(declare-fun res!896492 () Bool)

(assert (=> b!2047154 (=> (not res!896492) (not e!1293811))))

(assert (=> b!2047154 (= res!896492 (= (originalCharacters!4836 (_1!12147 (v!27176 (_1!12152 err!3193)))) (list!9211 (dynLambda!11117 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193))))))))))

(declare-fun b!2047155 () Bool)

(assert (=> b!2047155 (= e!1293811 (= (size!17586 (_1!12147 (v!27176 (_1!12152 err!3193)))) (size!17590 (originalCharacters!4836 (_1!12147 (v!27176 (_1!12152 err!3193)))))))))

(assert (= (and d!625873 res!896491) b!2047154))

(assert (= (and b!2047154 res!896492) b!2047155))

(declare-fun b_lambda!69063 () Bool)

(assert (=> (not b_lambda!69063) (not b!2047154)))

(declare-fun tb!128993 () Bool)

(declare-fun t!191724 () Bool)

(assert (=> (and b!2046928 (= (toChars!5573 (transformation!4031 (h!27909 rules!1563))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))) t!191724) tb!128993))

(declare-fun b!2047156 () Bool)

(declare-fun e!1293812 () Bool)

(declare-fun tp!609612 () Bool)

(assert (=> b!2047156 (= e!1293812 (and (inv!29864 (c!331182 (dynLambda!11117 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193))))))) tp!609612))))

(declare-fun result!154438 () Bool)

(assert (=> tb!128993 (= result!154438 (and (inv!29867 (dynLambda!11117 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (value!126536 (_1!12147 (v!27176 (_1!12152 err!3193)))))) e!1293812))))

(assert (= tb!128993 b!2047156))

(declare-fun m!2490883 () Bool)

(assert (=> b!2047156 m!2490883))

(declare-fun m!2490885 () Bool)

(assert (=> tb!128993 m!2490885))

(assert (=> b!2047154 t!191724))

(declare-fun b_and!163363 () Bool)

(assert (= b_and!163357 (and (=> t!191724 result!154438) b_and!163363)))

(declare-fun t!191726 () Bool)

(declare-fun tb!128995 () Bool)

(assert (=> (and b!2046873 (= (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))) t!191726) tb!128995))

(declare-fun result!154440 () Bool)

(assert (= result!154440 result!154438))

(assert (=> b!2047154 t!191726))

(declare-fun b_and!163365 () Bool)

(assert (= b_and!163359 (and (=> t!191726 result!154440) b_and!163365)))

(declare-fun t!191728 () Bool)

(declare-fun tb!128997 () Bool)

(assert (=> (and b!2046916 (= (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))) t!191728) tb!128997))

(declare-fun result!154442 () Bool)

(assert (= result!154442 result!154438))

(assert (=> b!2047154 t!191728))

(declare-fun b_and!163367 () Bool)

(assert (= b_and!163361 (and (=> t!191728 result!154442) b_and!163367)))

(declare-fun m!2490887 () Bool)

(assert (=> d!625873 m!2490887))

(declare-fun m!2490889 () Bool)

(assert (=> b!2047154 m!2490889))

(assert (=> b!2047154 m!2490889))

(declare-fun m!2490891 () Bool)

(assert (=> b!2047154 m!2490891))

(declare-fun m!2490893 () Bool)

(assert (=> b!2047155 m!2490893))

(assert (=> b!2046913 d!625873))

(declare-fun d!625875 () Bool)

(assert (=> d!625875 (= (inv!29867 (_2!12147 (v!27176 (_1!12152 err!3193)))) (isBalanced!2366 (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193))))))))

(declare-fun bs!421993 () Bool)

(assert (= bs!421993 d!625875))

(declare-fun m!2490895 () Bool)

(assert (=> bs!421993 m!2490895))

(assert (=> b!2046913 d!625875))

(declare-fun d!625877 () Bool)

(declare-fun c!331228 () Bool)

(assert (=> d!625877 (= c!331228 ((_ is Node!7536) (c!331182 totalInput!418)))))

(declare-fun e!1293813 () Bool)

(assert (=> d!625877 (= (inv!29864 (c!331182 totalInput!418)) e!1293813)))

(declare-fun b!2047157 () Bool)

(assert (=> b!2047157 (= e!1293813 (inv!29871 (c!331182 totalInput!418)))))

(declare-fun b!2047158 () Bool)

(declare-fun e!1293814 () Bool)

(assert (=> b!2047158 (= e!1293813 e!1293814)))

(declare-fun res!896493 () Bool)

(assert (=> b!2047158 (= res!896493 (not ((_ is Leaf!11033) (c!331182 totalInput!418))))))

(assert (=> b!2047158 (=> res!896493 e!1293814)))

(declare-fun b!2047159 () Bool)

(assert (=> b!2047159 (= e!1293814 (inv!29872 (c!331182 totalInput!418)))))

(assert (= (and d!625877 c!331228) b!2047157))

(assert (= (and d!625877 (not c!331228)) b!2047158))

(assert (= (and b!2047158 (not res!896493)) b!2047159))

(declare-fun m!2490897 () Bool)

(assert (=> b!2047157 m!2490897))

(declare-fun m!2490899 () Bool)

(assert (=> b!2047159 m!2490899))

(assert (=> b!2046875 d!625877))

(declare-fun d!625879 () Bool)

(assert (=> d!625879 (= (isEmpty!13990 rules!1563) ((_ is Nil!22508) rules!1563))))

(assert (=> b!2046876 d!625879))

(declare-fun d!625881 () Bool)

(assert (=> d!625881 (= (inv!29858 (tag!4521 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (= (mod (str.len (value!126535 (tag!4521 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))) 2) 0))))

(assert (=> b!2046894 d!625881))

(declare-fun d!625883 () Bool)

(declare-fun res!896494 () Bool)

(declare-fun e!1293815 () Bool)

(assert (=> d!625883 (=> (not res!896494) (not e!1293815))))

(assert (=> d!625883 (= res!896494 (semiInverseModEq!1620 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (toValue!5714 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))))))

(assert (=> d!625883 (= (inv!29863 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) e!1293815)))

(declare-fun b!2047160 () Bool)

(assert (=> b!2047160 (= e!1293815 (equivClasses!1547 (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (toValue!5714 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))))))

(assert (= (and d!625883 res!896494) b!2047160))

(declare-fun m!2490901 () Bool)

(assert (=> d!625883 m!2490901))

(declare-fun m!2490903 () Bool)

(assert (=> b!2047160 m!2490903))

(assert (=> b!2046894 d!625883))

(declare-fun b!2047169 () Bool)

(declare-fun e!1293821 () List!22591)

(assert (=> b!2047169 (= e!1293821 lt!767395)))

(declare-fun d!625885 () Bool)

(declare-fun e!1293820 () Bool)

(assert (=> d!625885 e!1293820))

(declare-fun res!896500 () Bool)

(assert (=> d!625885 (=> (not res!896500) (not e!1293820))))

(declare-fun lt!767569 () List!22591)

(declare-fun content!3321 (List!22591) (InoxSet C!11064))

(assert (=> d!625885 (= res!896500 (= (content!3321 lt!767569) ((_ map or) (content!3321 lt!767400) (content!3321 lt!767395))))))

(assert (=> d!625885 (= lt!767569 e!1293821)))

(declare-fun c!331231 () Bool)

(assert (=> d!625885 (= c!331231 ((_ is Nil!22507) lt!767400))))

(assert (=> d!625885 (= (++!6109 lt!767400 lt!767395) lt!767569)))

(declare-fun b!2047171 () Bool)

(declare-fun res!896499 () Bool)

(assert (=> b!2047171 (=> (not res!896499) (not e!1293820))))

(assert (=> b!2047171 (= res!896499 (= (size!17590 lt!767569) (+ (size!17590 lt!767400) (size!17590 lt!767395))))))

(declare-fun b!2047170 () Bool)

(assert (=> b!2047170 (= e!1293821 (Cons!22507 (h!27908 lt!767400) (++!6109 (t!191711 lt!767400) lt!767395)))))

(declare-fun b!2047172 () Bool)

(assert (=> b!2047172 (= e!1293820 (or (not (= lt!767395 Nil!22507)) (= lt!767569 lt!767400)))))

(assert (= (and d!625885 c!331231) b!2047169))

(assert (= (and d!625885 (not c!331231)) b!2047170))

(assert (= (and d!625885 res!896500) b!2047171))

(assert (= (and b!2047171 res!896499) b!2047172))

(declare-fun m!2490905 () Bool)

(assert (=> d!625885 m!2490905))

(declare-fun m!2490907 () Bool)

(assert (=> d!625885 m!2490907))

(declare-fun m!2490909 () Bool)

(assert (=> d!625885 m!2490909))

(declare-fun m!2490911 () Bool)

(assert (=> b!2047171 m!2490911))

(declare-fun m!2490913 () Bool)

(assert (=> b!2047171 m!2490913))

(assert (=> b!2047171 m!2490559))

(declare-fun m!2490915 () Bool)

(assert (=> b!2047170 m!2490915))

(assert (=> b!2046931 d!625885))

(declare-fun d!625887 () Bool)

(assert (=> d!625887 (= (list!9211 totalInput!418) (list!9214 (c!331182 totalInput!418)))))

(declare-fun bs!421994 () Bool)

(assert (= bs!421994 d!625887))

(declare-fun m!2490917 () Bool)

(assert (=> bs!421994 m!2490917))

(assert (=> b!2046931 d!625887))

(declare-fun d!625889 () Bool)

(assert (=> d!625889 (= (list!9211 input!986) (list!9214 (c!331182 input!986)))))

(declare-fun bs!421995 () Bool)

(assert (= bs!421995 d!625889))

(declare-fun m!2490919 () Bool)

(assert (=> bs!421995 m!2490919))

(assert (=> b!2046931 d!625889))

(declare-fun d!625891 () Bool)

(assert (=> d!625891 (= (list!9211 treated!60) (list!9214 (c!331182 treated!60)))))

(declare-fun bs!421996 () Bool)

(assert (= bs!421996 d!625891))

(declare-fun m!2490921 () Bool)

(assert (=> bs!421996 m!2490921))

(assert (=> b!2046931 d!625891))

(declare-fun d!625893 () Bool)

(declare-fun c!331234 () Bool)

(assert (=> d!625893 (= c!331234 ((_ is Node!7537) (c!331184 acc!382)))))

(declare-fun e!1293826 () Bool)

(assert (=> d!625893 (= (inv!29869 (c!331184 acc!382)) e!1293826)))

(declare-fun b!2047179 () Bool)

(declare-fun inv!29873 (Conc!7537) Bool)

(assert (=> b!2047179 (= e!1293826 (inv!29873 (c!331184 acc!382)))))

(declare-fun b!2047180 () Bool)

(declare-fun e!1293827 () Bool)

(assert (=> b!2047180 (= e!1293826 e!1293827)))

(declare-fun res!896503 () Bool)

(assert (=> b!2047180 (= res!896503 (not ((_ is Leaf!11034) (c!331184 acc!382))))))

(assert (=> b!2047180 (=> res!896503 e!1293827)))

(declare-fun b!2047181 () Bool)

(declare-fun inv!29874 (Conc!7537) Bool)

(assert (=> b!2047181 (= e!1293827 (inv!29874 (c!331184 acc!382)))))

(assert (= (and d!625893 c!331234) b!2047179))

(assert (= (and d!625893 (not c!331234)) b!2047180))

(assert (= (and b!2047180 (not res!896503)) b!2047181))

(declare-fun m!2490923 () Bool)

(assert (=> b!2047179 m!2490923))

(declare-fun m!2490925 () Bool)

(assert (=> b!2047181 m!2490925))

(assert (=> b!2046912 d!625893))

(declare-fun b!2047182 () Bool)

(declare-fun e!1293828 () Bool)

(declare-fun e!1293829 () Bool)

(assert (=> b!2047182 (= e!1293828 e!1293829)))

(declare-fun c!331236 () Bool)

(assert (=> b!2047182 (= c!331236 ((_ is IntegerValue!12502) (value!126536 (_1!12147 (v!27176 err!3192)))))))

(declare-fun b!2047183 () Bool)

(declare-fun res!896504 () Bool)

(declare-fun e!1293830 () Bool)

(assert (=> b!2047183 (=> res!896504 e!1293830)))

(assert (=> b!2047183 (= res!896504 (not ((_ is IntegerValue!12503) (value!126536 (_1!12147 (v!27176 err!3192))))))))

(assert (=> b!2047183 (= e!1293829 e!1293830)))

(declare-fun b!2047184 () Bool)

(assert (=> b!2047184 (= e!1293828 (inv!16 (value!126536 (_1!12147 (v!27176 err!3192)))))))

(declare-fun b!2047185 () Bool)

(assert (=> b!2047185 (= e!1293830 (inv!15 (value!126536 (_1!12147 (v!27176 err!3192)))))))

(declare-fun d!625895 () Bool)

(declare-fun c!331235 () Bool)

(assert (=> d!625895 (= c!331235 ((_ is IntegerValue!12501) (value!126536 (_1!12147 (v!27176 err!3192)))))))

(assert (=> d!625895 (= (inv!21 (value!126536 (_1!12147 (v!27176 err!3192)))) e!1293828)))

(declare-fun b!2047186 () Bool)

(assert (=> b!2047186 (= e!1293829 (inv!17 (value!126536 (_1!12147 (v!27176 err!3192)))))))

(assert (= (and d!625895 c!331235) b!2047184))

(assert (= (and d!625895 (not c!331235)) b!2047182))

(assert (= (and b!2047182 c!331236) b!2047186))

(assert (= (and b!2047182 (not c!331236)) b!2047183))

(assert (= (and b!2047183 (not res!896504)) b!2047185))

(declare-fun m!2490927 () Bool)

(assert (=> b!2047184 m!2490927))

(declare-fun m!2490929 () Bool)

(assert (=> b!2047185 m!2490929))

(declare-fun m!2490931 () Bool)

(assert (=> b!2047186 m!2490931))

(assert (=> b!2046877 d!625895))

(declare-fun d!625897 () Bool)

(declare-fun res!896507 () Bool)

(declare-fun e!1293833 () Bool)

(assert (=> d!625897 (=> (not res!896507) (not e!1293833))))

(assert (=> d!625897 (= res!896507 ((_ is HashMap!1946) (cache!2327 (_2!12152 err!3193))))))

(assert (=> d!625897 (= (inv!29865 (_2!12152 err!3193)) e!1293833)))

(declare-fun b!2047189 () Bool)

(assert (=> b!2047189 (= e!1293833 (validCacheMapUp!190 (cache!2327 (_2!12152 err!3193))))))

(assert (= (and d!625897 res!896507) b!2047189))

(declare-fun m!2490933 () Bool)

(assert (=> b!2047189 m!2490933))

(assert (=> b!2046896 d!625897))

(declare-fun d!625899 () Bool)

(declare-fun res!896510 () Bool)

(declare-fun e!1293836 () Bool)

(assert (=> d!625899 (=> (not res!896510) (not e!1293836))))

(assert (=> d!625899 (= res!896510 ((_ is HashMap!1947) (cache!2328 (_3!1525 err!3193))))))

(assert (=> d!625899 (= (inv!29866 (_3!1525 err!3193)) e!1293836)))

(declare-fun b!2047192 () Bool)

(assert (=> b!2047192 (= e!1293836 (validCacheMapDown!188 (cache!2328 (_3!1525 err!3193))))))

(assert (= (and d!625899 res!896510) b!2047192))

(declare-fun m!2490935 () Bool)

(assert (=> b!2047192 m!2490935))

(assert (=> b!2046896 d!625899))

(declare-fun d!625901 () Bool)

(assert (=> d!625901 (= (list!9211 (_2!12153 lt!767397)) (list!9214 (c!331182 (_2!12153 lt!767397))))))

(declare-fun bs!421997 () Bool)

(assert (= bs!421997 d!625901))

(declare-fun m!2490937 () Bool)

(assert (=> bs!421997 m!2490937))

(assert (=> b!2046897 d!625901))

(declare-fun d!625903 () Bool)

(assert (=> d!625903 (= (list!9211 (_2!12153 lt!767402)) (list!9214 (c!331182 (_2!12153 lt!767402))))))

(declare-fun bs!421998 () Bool)

(assert (= bs!421998 d!625903))

(declare-fun m!2490939 () Bool)

(assert (=> bs!421998 m!2490939))

(assert (=> b!2046897 d!625903))

(declare-fun d!625905 () Bool)

(assert (=> d!625905 (= (inv!29867 input!986) (isBalanced!2366 (c!331182 input!986)))))

(declare-fun bs!421999 () Bool)

(assert (= bs!421999 d!625905))

(declare-fun m!2490941 () Bool)

(assert (=> bs!421999 m!2490941))

(assert (=> start!201564 d!625905))

(declare-fun d!625907 () Bool)

(declare-fun res!896511 () Bool)

(declare-fun e!1293837 () Bool)

(assert (=> d!625907 (=> (not res!896511) (not e!1293837))))

(assert (=> d!625907 (= res!896511 ((_ is HashMap!1946) (cache!2327 cacheUp!562)))))

(assert (=> d!625907 (= (inv!29865 cacheUp!562) e!1293837)))

(declare-fun b!2047193 () Bool)

(assert (=> b!2047193 (= e!1293837 (validCacheMapUp!190 (cache!2327 cacheUp!562)))))

(assert (= (and d!625907 res!896511) b!2047193))

(assert (=> b!2047193 m!2490881))

(assert (=> start!201564 d!625907))

(declare-fun d!625909 () Bool)

(assert (=> d!625909 (= (inv!29868 acc!382) (isBalanced!2367 (c!331184 acc!382)))))

(declare-fun bs!422000 () Bool)

(assert (= bs!422000 d!625909))

(declare-fun m!2490943 () Bool)

(assert (=> bs!422000 m!2490943))

(assert (=> start!201564 d!625909))

(declare-fun d!625911 () Bool)

(declare-fun res!896512 () Bool)

(declare-fun e!1293838 () Bool)

(assert (=> d!625911 (=> (not res!896512) (not e!1293838))))

(assert (=> d!625911 (= res!896512 ((_ is HashMap!1947) (cache!2328 cacheDown!575)))))

(assert (=> d!625911 (= (inv!29866 cacheDown!575) e!1293838)))

(declare-fun b!2047194 () Bool)

(assert (=> b!2047194 (= e!1293838 (validCacheMapDown!188 (cache!2328 cacheDown!575)))))

(assert (= (and d!625911 res!896512) b!2047194))

(assert (=> b!2047194 m!2490819))

(assert (=> start!201564 d!625911))

(declare-fun d!625913 () Bool)

(assert (=> d!625913 (= (inv!29867 totalInput!418) (isBalanced!2366 (c!331182 totalInput!418)))))

(declare-fun bs!422001 () Bool)

(assert (= bs!422001 d!625913))

(declare-fun m!2490945 () Bool)

(assert (=> bs!422001 m!2490945))

(assert (=> start!201564 d!625913))

(declare-fun d!625915 () Bool)

(assert (=> d!625915 (= (inv!29867 treated!60) (isBalanced!2366 (c!331182 treated!60)))))

(declare-fun bs!422002 () Bool)

(assert (= bs!422002 d!625915))

(declare-fun m!2490947 () Bool)

(assert (=> bs!422002 m!2490947))

(assert (=> start!201564 d!625915))

(declare-fun d!625917 () Bool)

(assert (=> d!625917 (= (array_inv!2236 (_keys!2329 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))))) (bvsge (size!17587 (_keys!2329 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2046895 d!625917))

(declare-fun d!625919 () Bool)

(assert (=> d!625919 (= (array_inv!2238 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))))) (bvsge (size!17588 (_values!2312 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2046895 d!625919))

(declare-fun e!1293847 () Bool)

(declare-fun setRes!11920 () Bool)

(declare-fun tp!609621 () Bool)

(declare-fun b!2047203 () Bool)

(declare-fun tp_is_empty!9303 () Bool)

(declare-fun e!1293845 () Bool)

(declare-fun inv!29875 (Context!2058) Bool)

(assert (=> b!2047203 (= e!1293845 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 mapDefault!9414)))) e!1293847 tp_is_empty!9303 setRes!11920 tp!609621))))

(declare-fun condSetEmpty!11920 () Bool)

(assert (=> b!2047203 (= condSetEmpty!11920 (= (_2!12151 (h!27912 mapDefault!9414)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047204 () Bool)

(declare-fun tp!609623 () Bool)

(assert (=> b!2047204 (= e!1293847 tp!609623)))

(declare-fun setNonEmpty!11920 () Bool)

(declare-fun e!1293846 () Bool)

(declare-fun setElem!11920 () Context!2058)

(declare-fun tp!609624 () Bool)

(assert (=> setNonEmpty!11920 (= setRes!11920 (and tp!609624 (inv!29875 setElem!11920) e!1293846))))

(declare-fun setRest!11920 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11920 (= (_2!12151 (h!27912 mapDefault!9414)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11920 true) setRest!11920))))

(declare-fun b!2047205 () Bool)

(declare-fun tp!609622 () Bool)

(assert (=> b!2047205 (= e!1293846 tp!609622)))

(declare-fun setIsEmpty!11920 () Bool)

(assert (=> setIsEmpty!11920 setRes!11920))

(assert (=> b!2046878 (= tp!609596 e!1293845)))

(assert (= b!2047203 b!2047204))

(assert (= (and b!2047203 condSetEmpty!11920) setIsEmpty!11920))

(assert (= (and b!2047203 (not condSetEmpty!11920)) setNonEmpty!11920))

(assert (= setNonEmpty!11920 b!2047205))

(assert (= (and b!2046878 ((_ is Cons!22511) mapDefault!9414)) b!2047203))

(declare-fun m!2490949 () Bool)

(assert (=> b!2047203 m!2490949))

(declare-fun m!2490951 () Bool)

(assert (=> setNonEmpty!11920 m!2490951))

(declare-fun setIsEmpty!11923 () Bool)

(declare-fun setRes!11923 () Bool)

(assert (=> setIsEmpty!11923 setRes!11923))

(declare-fun b!2047214 () Bool)

(declare-fun e!1293856 () Bool)

(declare-fun tp!609636 () Bool)

(assert (=> b!2047214 (= e!1293856 tp!609636)))

(declare-fun e!1293854 () Bool)

(assert (=> b!2046898 (= tp!609608 e!1293854)))

(declare-fun setNonEmpty!11923 () Bool)

(declare-fun setElem!11923 () Context!2058)

(declare-fun e!1293855 () Bool)

(declare-fun tp!609638 () Bool)

(assert (=> setNonEmpty!11923 (= setRes!11923 (and tp!609638 (inv!29875 setElem!11923) e!1293855))))

(declare-fun setRest!11923 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11923 (= (_2!12149 (h!27911 (zeroValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193))))))))) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11923 true) setRest!11923))))

(declare-fun b!2047215 () Bool)

(declare-fun tp!609637 () Bool)

(assert (=> b!2047215 (= e!1293855 tp!609637)))

(declare-fun tp!609635 () Bool)

(declare-fun tp!609639 () Bool)

(declare-fun b!2047216 () Bool)

(assert (=> b!2047216 (= e!1293854 (and tp!609635 (inv!29875 (_2!12148 (_1!12149 (h!27911 (zeroValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193))))))))))) e!1293856 tp_is_empty!9303 setRes!11923 tp!609639))))

(declare-fun condSetEmpty!11923 () Bool)

(assert (=> b!2047216 (= condSetEmpty!11923 (= (_2!12149 (h!27911 (zeroValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193))))))))) ((as const (Array Context!2058 Bool)) false)))))

(assert (= b!2047216 b!2047214))

(assert (= (and b!2047216 condSetEmpty!11923) setIsEmpty!11923))

(assert (= (and b!2047216 (not condSetEmpty!11923)) setNonEmpty!11923))

(assert (= setNonEmpty!11923 b!2047215))

(assert (= (and b!2046898 ((_ is Cons!22510) (zeroValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193))))))))) b!2047216))

(declare-fun m!2490953 () Bool)

(assert (=> setNonEmpty!11923 m!2490953))

(declare-fun m!2490955 () Bool)

(assert (=> b!2047216 m!2490955))

(declare-fun setIsEmpty!11924 () Bool)

(declare-fun setRes!11924 () Bool)

(assert (=> setIsEmpty!11924 setRes!11924))

(declare-fun b!2047217 () Bool)

(declare-fun e!1293859 () Bool)

(declare-fun tp!609641 () Bool)

(assert (=> b!2047217 (= e!1293859 tp!609641)))

(declare-fun e!1293857 () Bool)

(assert (=> b!2046898 (= tp!609568 e!1293857)))

(declare-fun e!1293858 () Bool)

(declare-fun tp!609643 () Bool)

(declare-fun setNonEmpty!11924 () Bool)

(declare-fun setElem!11924 () Context!2058)

(assert (=> setNonEmpty!11924 (= setRes!11924 (and tp!609643 (inv!29875 setElem!11924) e!1293858))))

(declare-fun setRest!11924 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11924 (= (_2!12149 (h!27911 (minValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193))))))))) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11924 true) setRest!11924))))

(declare-fun b!2047218 () Bool)

(declare-fun tp!609642 () Bool)

(assert (=> b!2047218 (= e!1293858 tp!609642)))

(declare-fun tp!609644 () Bool)

(declare-fun b!2047219 () Bool)

(declare-fun tp!609640 () Bool)

(assert (=> b!2047219 (= e!1293857 (and tp!609640 (inv!29875 (_2!12148 (_1!12149 (h!27911 (minValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193))))))))))) e!1293859 tp_is_empty!9303 setRes!11924 tp!609644))))

(declare-fun condSetEmpty!11924 () Bool)

(assert (=> b!2047219 (= condSetEmpty!11924 (= (_2!12149 (h!27911 (minValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193))))))))) ((as const (Array Context!2058 Bool)) false)))))

(assert (= b!2047219 b!2047217))

(assert (= (and b!2047219 condSetEmpty!11924) setIsEmpty!11924))

(assert (= (and b!2047219 (not condSetEmpty!11924)) setNonEmpty!11924))

(assert (= setNonEmpty!11924 b!2047218))

(assert (= (and b!2046898 ((_ is Cons!22510) (minValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 (_3!1525 err!3193))))))))) b!2047219))

(declare-fun m!2490957 () Bool)

(assert (=> setNonEmpty!11924 m!2490957))

(declare-fun m!2490959 () Bool)

(assert (=> b!2047219 m!2490959))

(declare-fun tp!609653 () Bool)

(declare-fun b!2047228 () Bool)

(declare-fun tp!609651 () Bool)

(declare-fun e!1293865 () Bool)

(assert (=> b!2047228 (= e!1293865 (and (inv!29864 (left!17840 (c!331182 input!986))) tp!609653 (inv!29864 (right!18170 (c!331182 input!986))) tp!609651))))

(declare-fun b!2047230 () Bool)

(declare-fun e!1293864 () Bool)

(declare-fun tp!609652 () Bool)

(assert (=> b!2047230 (= e!1293864 tp!609652)))

(declare-fun b!2047229 () Bool)

(declare-fun inv!29876 (IArray!15077) Bool)

(assert (=> b!2047229 (= e!1293865 (and (inv!29876 (xs!10444 (c!331182 input!986))) e!1293864))))

(assert (=> b!2046901 (= tp!609563 (and (inv!29864 (c!331182 input!986)) e!1293865))))

(assert (= (and b!2046901 ((_ is Node!7536) (c!331182 input!986))) b!2047228))

(assert (= b!2047229 b!2047230))

(assert (= (and b!2046901 ((_ is Leaf!11033) (c!331182 input!986))) b!2047229))

(declare-fun m!2490961 () Bool)

(assert (=> b!2047228 m!2490961))

(declare-fun m!2490963 () Bool)

(assert (=> b!2047228 m!2490963))

(declare-fun m!2490965 () Bool)

(assert (=> b!2047229 m!2490965))

(assert (=> b!2046901 m!2490515))

(declare-fun e!1293867 () Bool)

(declare-fun b!2047231 () Bool)

(declare-fun tp!609656 () Bool)

(declare-fun tp!609654 () Bool)

(assert (=> b!2047231 (= e!1293867 (and (inv!29864 (left!17840 (c!331182 (_2!12147 (v!27176 err!3192))))) tp!609656 (inv!29864 (right!18170 (c!331182 (_2!12147 (v!27176 err!3192))))) tp!609654))))

(declare-fun b!2047233 () Bool)

(declare-fun e!1293866 () Bool)

(declare-fun tp!609655 () Bool)

(assert (=> b!2047233 (= e!1293866 tp!609655)))

(declare-fun b!2047232 () Bool)

(assert (=> b!2047232 (= e!1293867 (and (inv!29876 (xs!10444 (c!331182 (_2!12147 (v!27176 err!3192))))) e!1293866))))

(assert (=> b!2046881 (= tp!609583 (and (inv!29864 (c!331182 (_2!12147 (v!27176 err!3192)))) e!1293867))))

(assert (= (and b!2046881 ((_ is Node!7536) (c!331182 (_2!12147 (v!27176 err!3192))))) b!2047231))

(assert (= b!2047232 b!2047233))

(assert (= (and b!2046881 ((_ is Leaf!11033) (c!331182 (_2!12147 (v!27176 err!3192))))) b!2047232))

(declare-fun m!2490967 () Bool)

(assert (=> b!2047231 m!2490967))

(declare-fun m!2490969 () Bool)

(assert (=> b!2047231 m!2490969))

(declare-fun m!2490971 () Bool)

(assert (=> b!2047232 m!2490971))

(assert (=> b!2046881 m!2490489))

(declare-fun setElem!11929 () Context!2058)

(declare-fun tp!609683 () Bool)

(declare-fun e!1293884 () Bool)

(declare-fun setNonEmpty!11929 () Bool)

(declare-fun setRes!11929 () Bool)

(assert (=> setNonEmpty!11929 (= setRes!11929 (and tp!609683 (inv!29875 setElem!11929) e!1293884))))

(declare-fun mapDefault!9420 () List!22595)

(declare-fun setRest!11930 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11929 (= (_2!12151 (h!27912 mapDefault!9420)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11929 true) setRest!11930))))

(declare-fun b!2047248 () Bool)

(declare-fun tp!609675 () Bool)

(assert (=> b!2047248 (= e!1293884 tp!609675)))

(declare-fun e!1293882 () Bool)

(declare-fun setRes!11930 () Bool)

(declare-fun mapValue!9420 () List!22595)

(declare-fun e!1293883 () Bool)

(declare-fun tp!609680 () Bool)

(declare-fun b!2047249 () Bool)

(assert (=> b!2047249 (= e!1293882 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 mapValue!9420)))) e!1293883 tp_is_empty!9303 setRes!11930 tp!609680))))

(declare-fun condSetEmpty!11930 () Bool)

(assert (=> b!2047249 (= condSetEmpty!11930 (= (_2!12151 (h!27912 mapValue!9420)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047251 () Bool)

(declare-fun e!1293881 () Bool)

(declare-fun tp!609677 () Bool)

(assert (=> b!2047251 (= e!1293881 tp!609677)))

(declare-fun setIsEmpty!11929 () Bool)

(assert (=> setIsEmpty!11929 setRes!11929))

(declare-fun setIsEmpty!11930 () Bool)

(assert (=> setIsEmpty!11930 setRes!11930))

(declare-fun mapIsEmpty!9420 () Bool)

(declare-fun mapRes!9420 () Bool)

(assert (=> mapIsEmpty!9420 mapRes!9420))

(declare-fun mapNonEmpty!9420 () Bool)

(declare-fun tp!609681 () Bool)

(assert (=> mapNonEmpty!9420 (= mapRes!9420 (and tp!609681 e!1293882))))

(declare-fun mapKey!9420 () (_ BitVec 32))

(declare-fun mapRest!9420 () (Array (_ BitVec 32) List!22595))

(assert (=> mapNonEmpty!9420 (= mapRest!9414 (store mapRest!9420 mapKey!9420 mapValue!9420))))

(declare-fun tp!609676 () Bool)

(declare-fun setNonEmpty!11930 () Bool)

(declare-fun setElem!11930 () Context!2058)

(assert (=> setNonEmpty!11930 (= setRes!11930 (and tp!609676 (inv!29875 setElem!11930) e!1293881))))

(declare-fun setRest!11929 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11930 (= (_2!12151 (h!27912 mapValue!9420)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11930 true) setRest!11929))))

(declare-fun b!2047250 () Bool)

(declare-fun e!1293885 () Bool)

(declare-fun tp!609682 () Bool)

(assert (=> b!2047250 (= e!1293885 tp!609682)))

(declare-fun condMapEmpty!9420 () Bool)

(assert (=> mapNonEmpty!9416 (= condMapEmpty!9420 (= mapRest!9414 ((as const (Array (_ BitVec 32) List!22595)) mapDefault!9420)))))

(declare-fun e!1293880 () Bool)

(assert (=> mapNonEmpty!9416 (= tp!609600 (and e!1293880 mapRes!9420))))

(declare-fun tp!609678 () Bool)

(declare-fun b!2047252 () Bool)

(assert (=> b!2047252 (= e!1293880 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 mapDefault!9420)))) e!1293885 tp_is_empty!9303 setRes!11929 tp!609678))))

(declare-fun condSetEmpty!11929 () Bool)

(assert (=> b!2047252 (= condSetEmpty!11929 (= (_2!12151 (h!27912 mapDefault!9420)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047253 () Bool)

(declare-fun tp!609679 () Bool)

(assert (=> b!2047253 (= e!1293883 tp!609679)))

(assert (= (and mapNonEmpty!9416 condMapEmpty!9420) mapIsEmpty!9420))

(assert (= (and mapNonEmpty!9416 (not condMapEmpty!9420)) mapNonEmpty!9420))

(assert (= b!2047249 b!2047253))

(assert (= (and b!2047249 condSetEmpty!11930) setIsEmpty!11930))

(assert (= (and b!2047249 (not condSetEmpty!11930)) setNonEmpty!11930))

(assert (= setNonEmpty!11930 b!2047251))

(assert (= (and mapNonEmpty!9420 ((_ is Cons!22511) mapValue!9420)) b!2047249))

(assert (= b!2047252 b!2047250))

(assert (= (and b!2047252 condSetEmpty!11929) setIsEmpty!11929))

(assert (= (and b!2047252 (not condSetEmpty!11929)) setNonEmpty!11929))

(assert (= setNonEmpty!11929 b!2047248))

(assert (= (and mapNonEmpty!9416 ((_ is Cons!22511) mapDefault!9420)) b!2047252))

(declare-fun m!2490973 () Bool)

(assert (=> setNonEmpty!11929 m!2490973))

(declare-fun m!2490975 () Bool)

(assert (=> b!2047252 m!2490975))

(declare-fun m!2490977 () Bool)

(assert (=> mapNonEmpty!9420 m!2490977))

(declare-fun m!2490979 () Bool)

(assert (=> b!2047249 m!2490979))

(declare-fun m!2490981 () Bool)

(assert (=> setNonEmpty!11930 m!2490981))

(declare-fun e!1293888 () Bool)

(declare-fun e!1293886 () Bool)

(declare-fun b!2047254 () Bool)

(declare-fun setRes!11931 () Bool)

(declare-fun tp!609684 () Bool)

(assert (=> b!2047254 (= e!1293886 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 mapValue!9414)))) e!1293888 tp_is_empty!9303 setRes!11931 tp!609684))))

(declare-fun condSetEmpty!11931 () Bool)

(assert (=> b!2047254 (= condSetEmpty!11931 (= (_2!12151 (h!27912 mapValue!9414)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047255 () Bool)

(declare-fun tp!609686 () Bool)

(assert (=> b!2047255 (= e!1293888 tp!609686)))

(declare-fun e!1293887 () Bool)

(declare-fun setElem!11931 () Context!2058)

(declare-fun setNonEmpty!11931 () Bool)

(declare-fun tp!609687 () Bool)

(assert (=> setNonEmpty!11931 (= setRes!11931 (and tp!609687 (inv!29875 setElem!11931) e!1293887))))

(declare-fun setRest!11931 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11931 (= (_2!12151 (h!27912 mapValue!9414)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11931 true) setRest!11931))))

(declare-fun b!2047256 () Bool)

(declare-fun tp!609685 () Bool)

(assert (=> b!2047256 (= e!1293887 tp!609685)))

(declare-fun setIsEmpty!11931 () Bool)

(assert (=> setIsEmpty!11931 setRes!11931))

(assert (=> mapNonEmpty!9416 (= tp!609574 e!1293886)))

(assert (= b!2047254 b!2047255))

(assert (= (and b!2047254 condSetEmpty!11931) setIsEmpty!11931))

(assert (= (and b!2047254 (not condSetEmpty!11931)) setNonEmpty!11931))

(assert (= setNonEmpty!11931 b!2047256))

(assert (= (and mapNonEmpty!9416 ((_ is Cons!22511) mapValue!9414)) b!2047254))

(declare-fun m!2490983 () Bool)

(assert (=> b!2047254 m!2490983))

(declare-fun m!2490985 () Bool)

(assert (=> setNonEmpty!11931 m!2490985))

(declare-fun b!2047267 () Bool)

(declare-fun b_free!57413 () Bool)

(declare-fun b_next!58117 () Bool)

(assert (=> b!2047267 (= b_free!57413 (not b_next!58117))))

(declare-fun tp!609699 () Bool)

(declare-fun b_and!163369 () Bool)

(assert (=> b!2047267 (= tp!609699 b_and!163369)))

(declare-fun b_free!57415 () Bool)

(declare-fun b_next!58119 () Bool)

(assert (=> b!2047267 (= b_free!57415 (not b_next!58119))))

(declare-fun t!191730 () Bool)

(declare-fun tb!128999 () Bool)

(assert (=> (and b!2047267 (= (toChars!5573 (transformation!4031 (h!27909 (t!191712 rules!1563)))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))) t!191730) tb!128999))

(declare-fun result!154454 () Bool)

(assert (= result!154454 result!154430))

(assert (=> b!2046936 t!191730))

(declare-fun t!191732 () Bool)

(declare-fun tb!129001 () Bool)

(assert (=> (and b!2047267 (= (toChars!5573 (transformation!4031 (h!27909 (t!191712 rules!1563)))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))) t!191732) tb!129001))

(declare-fun result!154456 () Bool)

(assert (= result!154456 result!154438))

(assert (=> b!2047154 t!191732))

(declare-fun b_and!163371 () Bool)

(declare-fun tp!609696 () Bool)

(assert (=> b!2047267 (= tp!609696 (and (=> t!191730 result!154454) (=> t!191732 result!154456) b_and!163371))))

(declare-fun e!1293899 () Bool)

(assert (=> b!2047267 (= e!1293899 (and tp!609699 tp!609696))))

(declare-fun e!1293897 () Bool)

(declare-fun b!2047266 () Bool)

(declare-fun tp!609697 () Bool)

(assert (=> b!2047266 (= e!1293897 (and tp!609697 (inv!29858 (tag!4521 (h!27909 (t!191712 rules!1563)))) (inv!29863 (transformation!4031 (h!27909 (t!191712 rules!1563)))) e!1293899))))

(declare-fun b!2047265 () Bool)

(declare-fun e!1293898 () Bool)

(declare-fun tp!609698 () Bool)

(assert (=> b!2047265 (= e!1293898 (and e!1293897 tp!609698))))

(assert (=> b!2046903 (= tp!609580 e!1293898)))

(assert (= b!2047266 b!2047267))

(assert (= b!2047265 b!2047266))

(assert (= (and b!2046903 ((_ is Cons!22508) (t!191712 rules!1563))) b!2047265))

(declare-fun m!2490987 () Bool)

(assert (=> b!2047266 m!2490987))

(declare-fun m!2490989 () Bool)

(assert (=> b!2047266 m!2490989))

(declare-fun setIsEmpty!11932 () Bool)

(declare-fun setRes!11932 () Bool)

(assert (=> setIsEmpty!11932 setRes!11932))

(declare-fun b!2047268 () Bool)

(declare-fun e!1293903 () Bool)

(declare-fun tp!609701 () Bool)

(assert (=> b!2047268 (= e!1293903 tp!609701)))

(declare-fun e!1293901 () Bool)

(assert (=> b!2046923 (= tp!609607 e!1293901)))

(declare-fun e!1293902 () Bool)

(declare-fun setNonEmpty!11932 () Bool)

(declare-fun setElem!11932 () Context!2058)

(declare-fun tp!609703 () Bool)

(assert (=> setNonEmpty!11932 (= setRes!11932 (and tp!609703 (inv!29875 setElem!11932) e!1293902))))

(declare-fun setRest!11932 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11932 (= (_2!12149 (h!27911 mapDefault!9417)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11932 true) setRest!11932))))

(declare-fun b!2047269 () Bool)

(declare-fun tp!609702 () Bool)

(assert (=> b!2047269 (= e!1293902 tp!609702)))

(declare-fun b!2047270 () Bool)

(declare-fun tp!609704 () Bool)

(declare-fun tp!609700 () Bool)

(assert (=> b!2047270 (= e!1293901 (and tp!609700 (inv!29875 (_2!12148 (_1!12149 (h!27911 mapDefault!9417)))) e!1293903 tp_is_empty!9303 setRes!11932 tp!609704))))

(declare-fun condSetEmpty!11932 () Bool)

(assert (=> b!2047270 (= condSetEmpty!11932 (= (_2!12149 (h!27911 mapDefault!9417)) ((as const (Array Context!2058 Bool)) false)))))

(assert (= b!2047270 b!2047268))

(assert (= (and b!2047270 condSetEmpty!11932) setIsEmpty!11932))

(assert (= (and b!2047270 (not condSetEmpty!11932)) setNonEmpty!11932))

(assert (= setNonEmpty!11932 b!2047269))

(assert (= (and b!2046923 ((_ is Cons!22510) mapDefault!9417)) b!2047270))

(declare-fun m!2490991 () Bool)

(assert (=> setNonEmpty!11932 m!2490991))

(declare-fun m!2490993 () Bool)

(assert (=> b!2047270 m!2490993))

(declare-fun e!1293906 () Bool)

(assert (=> b!2046866 (= tp!609571 e!1293906)))

(declare-fun b!2047281 () Bool)

(assert (=> b!2047281 (= e!1293906 tp_is_empty!9303)))

(declare-fun b!2047282 () Bool)

(declare-fun tp!609715 () Bool)

(declare-fun tp!609719 () Bool)

(assert (=> b!2047282 (= e!1293906 (and tp!609715 tp!609719))))

(declare-fun b!2047283 () Bool)

(declare-fun tp!609717 () Bool)

(assert (=> b!2047283 (= e!1293906 tp!609717)))

(declare-fun b!2047284 () Bool)

(declare-fun tp!609716 () Bool)

(declare-fun tp!609718 () Bool)

(assert (=> b!2047284 (= e!1293906 (and tp!609716 tp!609718))))

(assert (= (and b!2046866 ((_ is ElementMatch!5459) (regex!4031 (h!27909 rules!1563)))) b!2047281))

(assert (= (and b!2046866 ((_ is Concat!9627) (regex!4031 (h!27909 rules!1563)))) b!2047282))

(assert (= (and b!2046866 ((_ is Star!5459) (regex!4031 (h!27909 rules!1563)))) b!2047283))

(assert (= (and b!2046866 ((_ is Union!5459) (regex!4031 (h!27909 rules!1563)))) b!2047284))

(declare-fun setIsEmpty!11933 () Bool)

(declare-fun setRes!11933 () Bool)

(assert (=> setIsEmpty!11933 setRes!11933))

(declare-fun b!2047285 () Bool)

(declare-fun e!1293909 () Bool)

(declare-fun tp!609721 () Bool)

(assert (=> b!2047285 (= e!1293909 tp!609721)))

(declare-fun e!1293907 () Bool)

(assert (=> b!2046924 (= tp!609591 e!1293907)))

(declare-fun setNonEmpty!11933 () Bool)

(declare-fun e!1293908 () Bool)

(declare-fun setElem!11933 () Context!2058)

(declare-fun tp!609723 () Bool)

(assert (=> setNonEmpty!11933 (= setRes!11933 (and tp!609723 (inv!29875 setElem!11933) e!1293908))))

(declare-fun setRest!11933 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11933 (= (_2!12149 (h!27911 mapDefault!9415)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11933 true) setRest!11933))))

(declare-fun b!2047286 () Bool)

(declare-fun tp!609722 () Bool)

(assert (=> b!2047286 (= e!1293908 tp!609722)))

(declare-fun tp!609720 () Bool)

(declare-fun b!2047287 () Bool)

(declare-fun tp!609724 () Bool)

(assert (=> b!2047287 (= e!1293907 (and tp!609720 (inv!29875 (_2!12148 (_1!12149 (h!27911 mapDefault!9415)))) e!1293909 tp_is_empty!9303 setRes!11933 tp!609724))))

(declare-fun condSetEmpty!11933 () Bool)

(assert (=> b!2047287 (= condSetEmpty!11933 (= (_2!12149 (h!27911 mapDefault!9415)) ((as const (Array Context!2058 Bool)) false)))))

(assert (= b!2047287 b!2047285))

(assert (= (and b!2047287 condSetEmpty!11933) setIsEmpty!11933))

(assert (= (and b!2047287 (not condSetEmpty!11933)) setNonEmpty!11933))

(assert (= setNonEmpty!11933 b!2047286))

(assert (= (and b!2046924 ((_ is Cons!22510) mapDefault!9415)) b!2047287))

(declare-fun m!2490995 () Bool)

(assert (=> setNonEmpty!11933 m!2490995))

(declare-fun m!2490997 () Bool)

(assert (=> b!2047287 m!2490997))

(declare-fun e!1293910 () Bool)

(assert (=> b!2046868 (= tp!609598 e!1293910)))

(declare-fun b!2047288 () Bool)

(assert (=> b!2047288 (= e!1293910 tp_is_empty!9303)))

(declare-fun b!2047289 () Bool)

(declare-fun tp!609725 () Bool)

(declare-fun tp!609729 () Bool)

(assert (=> b!2047289 (= e!1293910 (and tp!609725 tp!609729))))

(declare-fun b!2047290 () Bool)

(declare-fun tp!609727 () Bool)

(assert (=> b!2047290 (= e!1293910 tp!609727)))

(declare-fun b!2047291 () Bool)

(declare-fun tp!609726 () Bool)

(declare-fun tp!609728 () Bool)

(assert (=> b!2047291 (= e!1293910 (and tp!609726 tp!609728))))

(assert (= (and b!2046868 ((_ is ElementMatch!5459) (regex!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))) b!2047288))

(assert (= (and b!2046868 ((_ is Concat!9627) (regex!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))) b!2047289))

(assert (= (and b!2046868 ((_ is Star!5459) (regex!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))) b!2047290))

(assert (= (and b!2046868 ((_ is Union!5459) (regex!4031 (rule!6267 (_1!12147 (v!27176 err!3192)))))) b!2047291))

(declare-fun b!2047306 () Bool)

(declare-fun e!1293925 () Bool)

(declare-fun tp!609752 () Bool)

(assert (=> b!2047306 (= e!1293925 tp!609752)))

(declare-fun b!2047307 () Bool)

(declare-fun e!1293927 () Bool)

(declare-fun tp!609756 () Bool)

(assert (=> b!2047307 (= e!1293927 tp!609756)))

(declare-fun b!2047308 () Bool)

(declare-fun e!1293924 () Bool)

(declare-fun tp!609761 () Bool)

(assert (=> b!2047308 (= e!1293924 tp!609761)))

(declare-fun e!1293926 () Bool)

(declare-fun setElem!11939 () Context!2058)

(declare-fun tp!609757 () Bool)

(declare-fun setNonEmpty!11938 () Bool)

(declare-fun setRes!11938 () Bool)

(assert (=> setNonEmpty!11938 (= setRes!11938 (and tp!609757 (inv!29875 setElem!11939) e!1293926))))

(declare-fun mapDefault!9423 () List!22594)

(declare-fun setRest!11938 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11938 (= (_2!12149 (h!27911 mapDefault!9423)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11939 true) setRest!11938))))

(declare-fun setIsEmpty!11938 () Bool)

(declare-fun setRes!11939 () Bool)

(assert (=> setIsEmpty!11938 setRes!11939))

(declare-fun mapNonEmpty!9423 () Bool)

(declare-fun mapRes!9423 () Bool)

(declare-fun tp!609760 () Bool)

(declare-fun e!1293928 () Bool)

(assert (=> mapNonEmpty!9423 (= mapRes!9423 (and tp!609760 e!1293928))))

(declare-fun mapRest!9423 () (Array (_ BitVec 32) List!22594))

(declare-fun mapValue!9423 () List!22594)

(declare-fun mapKey!9423 () (_ BitVec 32))

(assert (=> mapNonEmpty!9423 (= mapRest!9415 (store mapRest!9423 mapKey!9423 mapValue!9423))))

(declare-fun mapIsEmpty!9423 () Bool)

(assert (=> mapIsEmpty!9423 mapRes!9423))

(declare-fun setIsEmpty!11939 () Bool)

(assert (=> setIsEmpty!11939 setRes!11938))

(declare-fun condMapEmpty!9423 () Bool)

(assert (=> mapNonEmpty!9417 (= condMapEmpty!9423 (= mapRest!9415 ((as const (Array (_ BitVec 32) List!22594)) mapDefault!9423)))))

(declare-fun e!1293923 () Bool)

(assert (=> mapNonEmpty!9417 (= tp!609579 (and e!1293923 mapRes!9423))))

(declare-fun b!2047309 () Bool)

(declare-fun tp!609755 () Bool)

(assert (=> b!2047309 (= e!1293926 tp!609755)))

(declare-fun setElem!11938 () Context!2058)

(declare-fun setNonEmpty!11939 () Bool)

(declare-fun tp!609762 () Bool)

(assert (=> setNonEmpty!11939 (= setRes!11939 (and tp!609762 (inv!29875 setElem!11938) e!1293924))))

(declare-fun setRest!11939 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11939 (= (_2!12149 (h!27911 mapValue!9423)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11938 true) setRest!11939))))

(declare-fun tp!609759 () Bool)

(declare-fun tp!609753 () Bool)

(declare-fun b!2047310 () Bool)

(assert (=> b!2047310 (= e!1293928 (and tp!609753 (inv!29875 (_2!12148 (_1!12149 (h!27911 mapValue!9423)))) e!1293927 tp_is_empty!9303 setRes!11939 tp!609759))))

(declare-fun condSetEmpty!11939 () Bool)

(assert (=> b!2047310 (= condSetEmpty!11939 (= (_2!12149 (h!27911 mapValue!9423)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun tp!609758 () Bool)

(declare-fun b!2047311 () Bool)

(declare-fun tp!609754 () Bool)

(assert (=> b!2047311 (= e!1293923 (and tp!609754 (inv!29875 (_2!12148 (_1!12149 (h!27911 mapDefault!9423)))) e!1293925 tp_is_empty!9303 setRes!11938 tp!609758))))

(declare-fun condSetEmpty!11938 () Bool)

(assert (=> b!2047311 (= condSetEmpty!11938 (= (_2!12149 (h!27911 mapDefault!9423)) ((as const (Array Context!2058 Bool)) false)))))

(assert (= (and mapNonEmpty!9417 condMapEmpty!9423) mapIsEmpty!9423))

(assert (= (and mapNonEmpty!9417 (not condMapEmpty!9423)) mapNonEmpty!9423))

(assert (= b!2047310 b!2047307))

(assert (= (and b!2047310 condSetEmpty!11939) setIsEmpty!11938))

(assert (= (and b!2047310 (not condSetEmpty!11939)) setNonEmpty!11939))

(assert (= setNonEmpty!11939 b!2047308))

(assert (= (and mapNonEmpty!9423 ((_ is Cons!22510) mapValue!9423)) b!2047310))

(assert (= b!2047311 b!2047306))

(assert (= (and b!2047311 condSetEmpty!11938) setIsEmpty!11939))

(assert (= (and b!2047311 (not condSetEmpty!11938)) setNonEmpty!11938))

(assert (= setNonEmpty!11938 b!2047309))

(assert (= (and mapNonEmpty!9417 ((_ is Cons!22510) mapDefault!9423)) b!2047311))

(declare-fun m!2490999 () Bool)

(assert (=> b!2047311 m!2490999))

(declare-fun m!2491001 () Bool)

(assert (=> setNonEmpty!11939 m!2491001))

(declare-fun m!2491003 () Bool)

(assert (=> setNonEmpty!11938 m!2491003))

(declare-fun m!2491005 () Bool)

(assert (=> b!2047310 m!2491005))

(declare-fun m!2491007 () Bool)

(assert (=> mapNonEmpty!9423 m!2491007))

(declare-fun setIsEmpty!11940 () Bool)

(declare-fun setRes!11940 () Bool)

(assert (=> setIsEmpty!11940 setRes!11940))

(declare-fun b!2047312 () Bool)

(declare-fun e!1293931 () Bool)

(declare-fun tp!609764 () Bool)

(assert (=> b!2047312 (= e!1293931 tp!609764)))

(declare-fun e!1293929 () Bool)

(assert (=> mapNonEmpty!9417 (= tp!609594 e!1293929)))

(declare-fun e!1293930 () Bool)

(declare-fun setNonEmpty!11940 () Bool)

(declare-fun tp!609766 () Bool)

(declare-fun setElem!11940 () Context!2058)

(assert (=> setNonEmpty!11940 (= setRes!11940 (and tp!609766 (inv!29875 setElem!11940) e!1293930))))

(declare-fun setRest!11940 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11940 (= (_2!12149 (h!27911 mapValue!9417)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11940 true) setRest!11940))))

(declare-fun b!2047313 () Bool)

(declare-fun tp!609765 () Bool)

(assert (=> b!2047313 (= e!1293930 tp!609765)))

(declare-fun b!2047314 () Bool)

(declare-fun tp!609763 () Bool)

(declare-fun tp!609767 () Bool)

(assert (=> b!2047314 (= e!1293929 (and tp!609763 (inv!29875 (_2!12148 (_1!12149 (h!27911 mapValue!9417)))) e!1293931 tp_is_empty!9303 setRes!11940 tp!609767))))

(declare-fun condSetEmpty!11940 () Bool)

(assert (=> b!2047314 (= condSetEmpty!11940 (= (_2!12149 (h!27911 mapValue!9417)) ((as const (Array Context!2058 Bool)) false)))))

(assert (= b!2047314 b!2047312))

(assert (= (and b!2047314 condSetEmpty!11940) setIsEmpty!11940))

(assert (= (and b!2047314 (not condSetEmpty!11940)) setNonEmpty!11940))

(assert (= setNonEmpty!11940 b!2047313))

(assert (= (and mapNonEmpty!9417 ((_ is Cons!22510) mapValue!9417)) b!2047314))

(declare-fun m!2491009 () Bool)

(assert (=> setNonEmpty!11940 m!2491009))

(declare-fun m!2491011 () Bool)

(assert (=> b!2047314 m!2491011))

(declare-fun tp!609768 () Bool)

(declare-fun tp!609770 () Bool)

(declare-fun b!2047315 () Bool)

(declare-fun e!1293933 () Bool)

(assert (=> b!2047315 (= e!1293933 (and (inv!29864 (left!17840 (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193)))))) tp!609770 (inv!29864 (right!18170 (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193)))))) tp!609768))))

(declare-fun b!2047317 () Bool)

(declare-fun e!1293932 () Bool)

(declare-fun tp!609769 () Bool)

(assert (=> b!2047317 (= e!1293932 tp!609769)))

(declare-fun b!2047316 () Bool)

(assert (=> b!2047316 (= e!1293933 (and (inv!29876 (xs!10444 (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193)))))) e!1293932))))

(assert (=> b!2046908 (= tp!609597 (and (inv!29864 (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193))))) e!1293933))))

(assert (= (and b!2046908 ((_ is Node!7536) (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193)))))) b!2047315))

(assert (= b!2047316 b!2047317))

(assert (= (and b!2046908 ((_ is Leaf!11033) (c!331182 (_2!12147 (v!27176 (_1!12152 err!3193)))))) b!2047316))

(declare-fun m!2491013 () Bool)

(assert (=> b!2047315 m!2491013))

(declare-fun m!2491015 () Bool)

(assert (=> b!2047315 m!2491015))

(declare-fun m!2491017 () Bool)

(assert (=> b!2047316 m!2491017))

(assert (=> b!2046908 m!2490495))

(declare-fun b!2047318 () Bool)

(declare-fun tp!609771 () Bool)

(declare-fun e!1293934 () Bool)

(declare-fun e!1293936 () Bool)

(declare-fun setRes!11941 () Bool)

(assert (=> b!2047318 (= e!1293934 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 (zeroValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562)))))))))) e!1293936 tp_is_empty!9303 setRes!11941 tp!609771))))

(declare-fun condSetEmpty!11941 () Bool)

(assert (=> b!2047318 (= condSetEmpty!11941 (= (_2!12151 (h!27912 (zeroValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562)))))))) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047319 () Bool)

(declare-fun tp!609773 () Bool)

(assert (=> b!2047319 (= e!1293936 tp!609773)))

(declare-fun e!1293935 () Bool)

(declare-fun setNonEmpty!11941 () Bool)

(declare-fun tp!609774 () Bool)

(declare-fun setElem!11941 () Context!2058)

(assert (=> setNonEmpty!11941 (= setRes!11941 (and tp!609774 (inv!29875 setElem!11941) e!1293935))))

(declare-fun setRest!11941 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11941 (= (_2!12151 (h!27912 (zeroValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11941 true) setRest!11941))))

(declare-fun b!2047320 () Bool)

(declare-fun tp!609772 () Bool)

(assert (=> b!2047320 (= e!1293935 tp!609772)))

(declare-fun setIsEmpty!11941 () Bool)

(assert (=> setIsEmpty!11941 setRes!11941))

(assert (=> b!2046888 (= tp!609576 e!1293934)))

(assert (= b!2047318 b!2047319))

(assert (= (and b!2047318 condSetEmpty!11941) setIsEmpty!11941))

(assert (= (and b!2047318 (not condSetEmpty!11941)) setNonEmpty!11941))

(assert (= setNonEmpty!11941 b!2047320))

(assert (= (and b!2046888 ((_ is Cons!22511) (zeroValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562)))))))) b!2047318))

(declare-fun m!2491019 () Bool)

(assert (=> b!2047318 m!2491019))

(declare-fun m!2491021 () Bool)

(assert (=> setNonEmpty!11941 m!2491021))

(declare-fun tp!609775 () Bool)

(declare-fun e!1293939 () Bool)

(declare-fun b!2047321 () Bool)

(declare-fun e!1293937 () Bool)

(declare-fun setRes!11942 () Bool)

(assert (=> b!2047321 (= e!1293937 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 (minValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562)))))))))) e!1293939 tp_is_empty!9303 setRes!11942 tp!609775))))

(declare-fun condSetEmpty!11942 () Bool)

(assert (=> b!2047321 (= condSetEmpty!11942 (= (_2!12151 (h!27912 (minValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562)))))))) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047322 () Bool)

(declare-fun tp!609777 () Bool)

(assert (=> b!2047322 (= e!1293939 tp!609777)))

(declare-fun setElem!11942 () Context!2058)

(declare-fun e!1293938 () Bool)

(declare-fun setNonEmpty!11942 () Bool)

(declare-fun tp!609778 () Bool)

(assert (=> setNonEmpty!11942 (= setRes!11942 (and tp!609778 (inv!29875 setElem!11942) e!1293938))))

(declare-fun setRest!11942 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11942 (= (_2!12151 (h!27912 (minValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11942 true) setRest!11942))))

(declare-fun b!2047323 () Bool)

(declare-fun tp!609776 () Bool)

(assert (=> b!2047323 (= e!1293938 tp!609776)))

(declare-fun setIsEmpty!11942 () Bool)

(assert (=> setIsEmpty!11942 setRes!11942))

(assert (=> b!2046888 (= tp!609586 e!1293937)))

(assert (= b!2047321 b!2047322))

(assert (= (and b!2047321 condSetEmpty!11942) setIsEmpty!11942))

(assert (= (and b!2047321 (not condSetEmpty!11942)) setNonEmpty!11942))

(assert (= setNonEmpty!11942 b!2047323))

(assert (= (and b!2046888 ((_ is Cons!22511) (minValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 cacheUp!562)))))))) b!2047321))

(declare-fun m!2491023 () Bool)

(assert (=> b!2047321 m!2491023))

(declare-fun m!2491025 () Bool)

(assert (=> setNonEmpty!11942 m!2491025))

(declare-fun tp!609779 () Bool)

(declare-fun e!1293941 () Bool)

(declare-fun b!2047324 () Bool)

(declare-fun tp!609781 () Bool)

(assert (=> b!2047324 (= e!1293941 (and (inv!29864 (left!17840 (c!331182 treated!60))) tp!609781 (inv!29864 (right!18170 (c!331182 treated!60))) tp!609779))))

(declare-fun b!2047326 () Bool)

(declare-fun e!1293940 () Bool)

(declare-fun tp!609780 () Bool)

(assert (=> b!2047326 (= e!1293940 tp!609780)))

(declare-fun b!2047325 () Bool)

(assert (=> b!2047325 (= e!1293941 (and (inv!29876 (xs!10444 (c!331182 treated!60))) e!1293940))))

(assert (=> b!2046871 (= tp!609577 (and (inv!29864 (c!331182 treated!60)) e!1293941))))

(assert (= (and b!2046871 ((_ is Node!7536) (c!331182 treated!60))) b!2047324))

(assert (= b!2047325 b!2047326))

(assert (= (and b!2046871 ((_ is Leaf!11033) (c!331182 treated!60))) b!2047325))

(declare-fun m!2491027 () Bool)

(assert (=> b!2047324 m!2491027))

(declare-fun m!2491029 () Bool)

(assert (=> b!2047324 m!2491029))

(declare-fun m!2491031 () Bool)

(assert (=> b!2047325 m!2491031))

(assert (=> b!2046871 m!2490525))

(declare-fun b!2047327 () Bool)

(declare-fun e!1293942 () Bool)

(declare-fun setRes!11943 () Bool)

(declare-fun tp!609782 () Bool)

(declare-fun e!1293944 () Bool)

(assert (=> b!2047327 (= e!1293942 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 (zeroValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193))))))))))) e!1293944 tp_is_empty!9303 setRes!11943 tp!609782))))

(declare-fun condSetEmpty!11943 () Bool)

(assert (=> b!2047327 (= condSetEmpty!11943 (= (_2!12151 (h!27912 (zeroValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193))))))))) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047328 () Bool)

(declare-fun tp!609784 () Bool)

(assert (=> b!2047328 (= e!1293944 tp!609784)))

(declare-fun setNonEmpty!11943 () Bool)

(declare-fun setElem!11943 () Context!2058)

(declare-fun e!1293943 () Bool)

(declare-fun tp!609785 () Bool)

(assert (=> setNonEmpty!11943 (= setRes!11943 (and tp!609785 (inv!29875 setElem!11943) e!1293943))))

(declare-fun setRest!11943 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11943 (= (_2!12151 (h!27912 (zeroValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193))))))))) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11943 true) setRest!11943))))

(declare-fun b!2047329 () Bool)

(declare-fun tp!609783 () Bool)

(assert (=> b!2047329 (= e!1293943 tp!609783)))

(declare-fun setIsEmpty!11943 () Bool)

(assert (=> setIsEmpty!11943 setRes!11943))

(assert (=> b!2046910 (= tp!609604 e!1293942)))

(assert (= b!2047327 b!2047328))

(assert (= (and b!2047327 condSetEmpty!11943) setIsEmpty!11943))

(assert (= (and b!2047327 (not condSetEmpty!11943)) setNonEmpty!11943))

(assert (= setNonEmpty!11943 b!2047329))

(assert (= (and b!2046910 ((_ is Cons!22511) (zeroValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193))))))))) b!2047327))

(declare-fun m!2491033 () Bool)

(assert (=> b!2047327 m!2491033))

(declare-fun m!2491035 () Bool)

(assert (=> setNonEmpty!11943 m!2491035))

(declare-fun tp!609786 () Bool)

(declare-fun e!1293947 () Bool)

(declare-fun setRes!11944 () Bool)

(declare-fun e!1293945 () Bool)

(declare-fun b!2047330 () Bool)

(assert (=> b!2047330 (= e!1293945 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 (minValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193))))))))))) e!1293947 tp_is_empty!9303 setRes!11944 tp!609786))))

(declare-fun condSetEmpty!11944 () Bool)

(assert (=> b!2047330 (= condSetEmpty!11944 (= (_2!12151 (h!27912 (minValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193))))))))) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047331 () Bool)

(declare-fun tp!609788 () Bool)

(assert (=> b!2047331 (= e!1293947 tp!609788)))

(declare-fun e!1293946 () Bool)

(declare-fun tp!609789 () Bool)

(declare-fun setElem!11944 () Context!2058)

(declare-fun setNonEmpty!11944 () Bool)

(assert (=> setNonEmpty!11944 (= setRes!11944 (and tp!609789 (inv!29875 setElem!11944) e!1293946))))

(declare-fun setRest!11944 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11944 (= (_2!12151 (h!27912 (minValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193))))))))) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11944 true) setRest!11944))))

(declare-fun b!2047332 () Bool)

(declare-fun tp!609787 () Bool)

(assert (=> b!2047332 (= e!1293946 tp!609787)))

(declare-fun setIsEmpty!11944 () Bool)

(assert (=> setIsEmpty!11944 setRes!11944))

(assert (=> b!2046910 (= tp!609595 e!1293945)))

(assert (= b!2047330 b!2047331))

(assert (= (and b!2047330 condSetEmpty!11944) setIsEmpty!11944))

(assert (= (and b!2047330 (not condSetEmpty!11944)) setNonEmpty!11944))

(assert (= setNonEmpty!11944 b!2047332))

(assert (= (and b!2046910 ((_ is Cons!22511) (minValue!2291 (v!27178 (underlying!4260 (v!27179 (underlying!4261 (cache!2327 (_2!12152 err!3193))))))))) b!2047330))

(declare-fun m!2491037 () Bool)

(assert (=> b!2047330 m!2491037))

(declare-fun m!2491039 () Bool)

(assert (=> setNonEmpty!11944 m!2491039))

(declare-fun b!2047337 () Bool)

(declare-fun e!1293950 () Bool)

(declare-fun tp!609792 () Bool)

(assert (=> b!2047337 (= e!1293950 (and tp_is_empty!9303 tp!609792))))

(assert (=> b!2046930 (= tp!609605 e!1293950)))

(assert (= (and b!2046930 ((_ is Cons!22507) (originalCharacters!4836 (_1!12147 (v!27176 (_1!12152 err!3193)))))) b!2047337))

(declare-fun b!2047338 () Bool)

(declare-fun e!1293953 () Bool)

(declare-fun tp!609793 () Bool)

(assert (=> b!2047338 (= e!1293953 tp!609793)))

(declare-fun b!2047339 () Bool)

(declare-fun e!1293955 () Bool)

(declare-fun tp!609797 () Bool)

(assert (=> b!2047339 (= e!1293955 tp!609797)))

(declare-fun b!2047340 () Bool)

(declare-fun e!1293952 () Bool)

(declare-fun tp!609802 () Bool)

(assert (=> b!2047340 (= e!1293952 tp!609802)))

(declare-fun setNonEmpty!11945 () Bool)

(declare-fun e!1293954 () Bool)

(declare-fun tp!609798 () Bool)

(declare-fun setRes!11945 () Bool)

(declare-fun setElem!11946 () Context!2058)

(assert (=> setNonEmpty!11945 (= setRes!11945 (and tp!609798 (inv!29875 setElem!11946) e!1293954))))

(declare-fun mapDefault!9424 () List!22594)

(declare-fun setRest!11945 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11945 (= (_2!12149 (h!27911 mapDefault!9424)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11946 true) setRest!11945))))

(declare-fun setIsEmpty!11945 () Bool)

(declare-fun setRes!11946 () Bool)

(assert (=> setIsEmpty!11945 setRes!11946))

(declare-fun mapNonEmpty!9424 () Bool)

(declare-fun mapRes!9424 () Bool)

(declare-fun tp!609801 () Bool)

(declare-fun e!1293956 () Bool)

(assert (=> mapNonEmpty!9424 (= mapRes!9424 (and tp!609801 e!1293956))))

(declare-fun mapRest!9424 () (Array (_ BitVec 32) List!22594))

(declare-fun mapKey!9424 () (_ BitVec 32))

(declare-fun mapValue!9424 () List!22594)

(assert (=> mapNonEmpty!9424 (= mapRest!9417 (store mapRest!9424 mapKey!9424 mapValue!9424))))

(declare-fun mapIsEmpty!9424 () Bool)

(assert (=> mapIsEmpty!9424 mapRes!9424))

(declare-fun setIsEmpty!11946 () Bool)

(assert (=> setIsEmpty!11946 setRes!11945))

(declare-fun condMapEmpty!9424 () Bool)

(assert (=> mapNonEmpty!9414 (= condMapEmpty!9424 (= mapRest!9417 ((as const (Array (_ BitVec 32) List!22594)) mapDefault!9424)))))

(declare-fun e!1293951 () Bool)

(assert (=> mapNonEmpty!9414 (= tp!609588 (and e!1293951 mapRes!9424))))

(declare-fun b!2047341 () Bool)

(declare-fun tp!609796 () Bool)

(assert (=> b!2047341 (= e!1293954 tp!609796)))

(declare-fun setNonEmpty!11946 () Bool)

(declare-fun tp!609803 () Bool)

(declare-fun setElem!11945 () Context!2058)

(assert (=> setNonEmpty!11946 (= setRes!11946 (and tp!609803 (inv!29875 setElem!11945) e!1293952))))

(declare-fun setRest!11946 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11946 (= (_2!12149 (h!27911 mapValue!9424)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11945 true) setRest!11946))))

(declare-fun tp!609800 () Bool)

(declare-fun b!2047342 () Bool)

(declare-fun tp!609794 () Bool)

(assert (=> b!2047342 (= e!1293956 (and tp!609794 (inv!29875 (_2!12148 (_1!12149 (h!27911 mapValue!9424)))) e!1293955 tp_is_empty!9303 setRes!11946 tp!609800))))

(declare-fun condSetEmpty!11946 () Bool)

(assert (=> b!2047342 (= condSetEmpty!11946 (= (_2!12149 (h!27911 mapValue!9424)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun tp!609795 () Bool)

(declare-fun b!2047343 () Bool)

(declare-fun tp!609799 () Bool)

(assert (=> b!2047343 (= e!1293951 (and tp!609795 (inv!29875 (_2!12148 (_1!12149 (h!27911 mapDefault!9424)))) e!1293953 tp_is_empty!9303 setRes!11945 tp!609799))))

(declare-fun condSetEmpty!11945 () Bool)

(assert (=> b!2047343 (= condSetEmpty!11945 (= (_2!12149 (h!27911 mapDefault!9424)) ((as const (Array Context!2058 Bool)) false)))))

(assert (= (and mapNonEmpty!9414 condMapEmpty!9424) mapIsEmpty!9424))

(assert (= (and mapNonEmpty!9414 (not condMapEmpty!9424)) mapNonEmpty!9424))

(assert (= b!2047342 b!2047339))

(assert (= (and b!2047342 condSetEmpty!11946) setIsEmpty!11945))

(assert (= (and b!2047342 (not condSetEmpty!11946)) setNonEmpty!11946))

(assert (= setNonEmpty!11946 b!2047340))

(assert (= (and mapNonEmpty!9424 ((_ is Cons!22510) mapValue!9424)) b!2047342))

(assert (= b!2047343 b!2047338))

(assert (= (and b!2047343 condSetEmpty!11945) setIsEmpty!11946))

(assert (= (and b!2047343 (not condSetEmpty!11945)) setNonEmpty!11945))

(assert (= setNonEmpty!11945 b!2047341))

(assert (= (and mapNonEmpty!9414 ((_ is Cons!22510) mapDefault!9424)) b!2047343))

(declare-fun m!2491041 () Bool)

(assert (=> b!2047343 m!2491041))

(declare-fun m!2491043 () Bool)

(assert (=> setNonEmpty!11946 m!2491043))

(declare-fun m!2491045 () Bool)

(assert (=> setNonEmpty!11945 m!2491045))

(declare-fun m!2491047 () Bool)

(assert (=> b!2047342 m!2491047))

(declare-fun m!2491049 () Bool)

(assert (=> mapNonEmpty!9424 m!2491049))

(declare-fun setIsEmpty!11947 () Bool)

(declare-fun setRes!11947 () Bool)

(assert (=> setIsEmpty!11947 setRes!11947))

(declare-fun b!2047344 () Bool)

(declare-fun e!1293959 () Bool)

(declare-fun tp!609805 () Bool)

(assert (=> b!2047344 (= e!1293959 tp!609805)))

(declare-fun e!1293957 () Bool)

(assert (=> mapNonEmpty!9414 (= tp!609564 e!1293957)))

(declare-fun setElem!11947 () Context!2058)

(declare-fun e!1293958 () Bool)

(declare-fun tp!609807 () Bool)

(declare-fun setNonEmpty!11947 () Bool)

(assert (=> setNonEmpty!11947 (= setRes!11947 (and tp!609807 (inv!29875 setElem!11947) e!1293958))))

(declare-fun setRest!11947 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11947 (= (_2!12149 (h!27911 mapValue!9415)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11947 true) setRest!11947))))

(declare-fun b!2047345 () Bool)

(declare-fun tp!609806 () Bool)

(assert (=> b!2047345 (= e!1293958 tp!609806)))

(declare-fun tp!609804 () Bool)

(declare-fun b!2047346 () Bool)

(declare-fun tp!609808 () Bool)

(assert (=> b!2047346 (= e!1293957 (and tp!609804 (inv!29875 (_2!12148 (_1!12149 (h!27911 mapValue!9415)))) e!1293959 tp_is_empty!9303 setRes!11947 tp!609808))))

(declare-fun condSetEmpty!11947 () Bool)

(assert (=> b!2047346 (= condSetEmpty!11947 (= (_2!12149 (h!27911 mapValue!9415)) ((as const (Array Context!2058 Bool)) false)))))

(assert (= b!2047346 b!2047344))

(assert (= (and b!2047346 condSetEmpty!11947) setIsEmpty!11947))

(assert (= (and b!2047346 (not condSetEmpty!11947)) setNonEmpty!11947))

(assert (= setNonEmpty!11947 b!2047345))

(assert (= (and mapNonEmpty!9414 ((_ is Cons!22510) mapValue!9415)) b!2047346))

(declare-fun m!2491051 () Bool)

(assert (=> setNonEmpty!11947 m!2491051))

(declare-fun m!2491053 () Bool)

(assert (=> b!2047346 m!2491053))

(declare-fun e!1293961 () Bool)

(declare-fun tp!609811 () Bool)

(declare-fun tp!609809 () Bool)

(declare-fun b!2047347 () Bool)

(assert (=> b!2047347 (= e!1293961 (and (inv!29864 (left!17840 (c!331182 totalInput!418))) tp!609811 (inv!29864 (right!18170 (c!331182 totalInput!418))) tp!609809))))

(declare-fun b!2047349 () Bool)

(declare-fun e!1293960 () Bool)

(declare-fun tp!609810 () Bool)

(assert (=> b!2047349 (= e!1293960 tp!609810)))

(declare-fun b!2047348 () Bool)

(assert (=> b!2047348 (= e!1293961 (and (inv!29876 (xs!10444 (c!331182 totalInput!418))) e!1293960))))

(assert (=> b!2046875 (= tp!609590 (and (inv!29864 (c!331182 totalInput!418)) e!1293961))))

(assert (= (and b!2046875 ((_ is Node!7536) (c!331182 totalInput!418))) b!2047347))

(assert (= b!2047348 b!2047349))

(assert (= (and b!2046875 ((_ is Leaf!11033) (c!331182 totalInput!418))) b!2047348))

(declare-fun m!2491055 () Bool)

(assert (=> b!2047347 m!2491055))

(declare-fun m!2491057 () Bool)

(assert (=> b!2047347 m!2491057))

(declare-fun m!2491059 () Bool)

(assert (=> b!2047348 m!2491059))

(assert (=> b!2046875 m!2490521))

(declare-fun e!1293962 () Bool)

(assert (=> b!2046894 (= tp!609587 e!1293962)))

(declare-fun b!2047350 () Bool)

(assert (=> b!2047350 (= e!1293962 tp_is_empty!9303)))

(declare-fun b!2047351 () Bool)

(declare-fun tp!609812 () Bool)

(declare-fun tp!609816 () Bool)

(assert (=> b!2047351 (= e!1293962 (and tp!609812 tp!609816))))

(declare-fun b!2047352 () Bool)

(declare-fun tp!609814 () Bool)

(assert (=> b!2047352 (= e!1293962 tp!609814)))

(declare-fun b!2047353 () Bool)

(declare-fun tp!609813 () Bool)

(declare-fun tp!609815 () Bool)

(assert (=> b!2047353 (= e!1293962 (and tp!609813 tp!609815))))

(assert (= (and b!2046894 ((_ is ElementMatch!5459) (regex!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))) b!2047350))

(assert (= (and b!2046894 ((_ is Concat!9627) (regex!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))) b!2047351))

(assert (= (and b!2046894 ((_ is Star!5459) (regex!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))) b!2047352))

(assert (= (and b!2046894 ((_ is Union!5459) (regex!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193))))))) b!2047353))

(declare-fun setElem!11948 () Context!2058)

(declare-fun setNonEmpty!11948 () Bool)

(declare-fun setRes!11948 () Bool)

(declare-fun tp!609825 () Bool)

(declare-fun e!1293967 () Bool)

(assert (=> setNonEmpty!11948 (= setRes!11948 (and tp!609825 (inv!29875 setElem!11948) e!1293967))))

(declare-fun mapDefault!9425 () List!22595)

(declare-fun setRest!11949 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11948 (= (_2!12151 (h!27912 mapDefault!9425)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11948 true) setRest!11949))))

(declare-fun b!2047354 () Bool)

(declare-fun tp!609817 () Bool)

(assert (=> b!2047354 (= e!1293967 tp!609817)))

(declare-fun e!1293966 () Bool)

(declare-fun e!1293965 () Bool)

(declare-fun setRes!11949 () Bool)

(declare-fun b!2047355 () Bool)

(declare-fun tp!609822 () Bool)

(declare-fun mapValue!9425 () List!22595)

(assert (=> b!2047355 (= e!1293965 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 mapValue!9425)))) e!1293966 tp_is_empty!9303 setRes!11949 tp!609822))))

(declare-fun condSetEmpty!11949 () Bool)

(assert (=> b!2047355 (= condSetEmpty!11949 (= (_2!12151 (h!27912 mapValue!9425)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047357 () Bool)

(declare-fun e!1293964 () Bool)

(declare-fun tp!609819 () Bool)

(assert (=> b!2047357 (= e!1293964 tp!609819)))

(declare-fun setIsEmpty!11948 () Bool)

(assert (=> setIsEmpty!11948 setRes!11948))

(declare-fun setIsEmpty!11949 () Bool)

(assert (=> setIsEmpty!11949 setRes!11949))

(declare-fun mapIsEmpty!9425 () Bool)

(declare-fun mapRes!9425 () Bool)

(assert (=> mapIsEmpty!9425 mapRes!9425))

(declare-fun mapNonEmpty!9425 () Bool)

(declare-fun tp!609823 () Bool)

(assert (=> mapNonEmpty!9425 (= mapRes!9425 (and tp!609823 e!1293965))))

(declare-fun mapRest!9425 () (Array (_ BitVec 32) List!22595))

(declare-fun mapKey!9425 () (_ BitVec 32))

(assert (=> mapNonEmpty!9425 (= mapRest!9416 (store mapRest!9425 mapKey!9425 mapValue!9425))))

(declare-fun tp!609818 () Bool)

(declare-fun setElem!11949 () Context!2058)

(declare-fun setNonEmpty!11949 () Bool)

(assert (=> setNonEmpty!11949 (= setRes!11949 (and tp!609818 (inv!29875 setElem!11949) e!1293964))))

(declare-fun setRest!11948 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11949 (= (_2!12151 (h!27912 mapValue!9425)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11949 true) setRest!11948))))

(declare-fun b!2047356 () Bool)

(declare-fun e!1293968 () Bool)

(declare-fun tp!609824 () Bool)

(assert (=> b!2047356 (= e!1293968 tp!609824)))

(declare-fun condMapEmpty!9425 () Bool)

(assert (=> mapNonEmpty!9415 (= condMapEmpty!9425 (= mapRest!9416 ((as const (Array (_ BitVec 32) List!22595)) mapDefault!9425)))))

(declare-fun e!1293963 () Bool)

(assert (=> mapNonEmpty!9415 (= tp!609582 (and e!1293963 mapRes!9425))))

(declare-fun b!2047358 () Bool)

(declare-fun tp!609820 () Bool)

(assert (=> b!2047358 (= e!1293963 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 mapDefault!9425)))) e!1293968 tp_is_empty!9303 setRes!11948 tp!609820))))

(declare-fun condSetEmpty!11948 () Bool)

(assert (=> b!2047358 (= condSetEmpty!11948 (= (_2!12151 (h!27912 mapDefault!9425)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047359 () Bool)

(declare-fun tp!609821 () Bool)

(assert (=> b!2047359 (= e!1293966 tp!609821)))

(assert (= (and mapNonEmpty!9415 condMapEmpty!9425) mapIsEmpty!9425))

(assert (= (and mapNonEmpty!9415 (not condMapEmpty!9425)) mapNonEmpty!9425))

(assert (= b!2047355 b!2047359))

(assert (= (and b!2047355 condSetEmpty!11949) setIsEmpty!11949))

(assert (= (and b!2047355 (not condSetEmpty!11949)) setNonEmpty!11949))

(assert (= setNonEmpty!11949 b!2047357))

(assert (= (and mapNonEmpty!9425 ((_ is Cons!22511) mapValue!9425)) b!2047355))

(assert (= b!2047358 b!2047356))

(assert (= (and b!2047358 condSetEmpty!11948) setIsEmpty!11948))

(assert (= (and b!2047358 (not condSetEmpty!11948)) setNonEmpty!11948))

(assert (= setNonEmpty!11948 b!2047354))

(assert (= (and mapNonEmpty!9415 ((_ is Cons!22511) mapDefault!9425)) b!2047358))

(declare-fun m!2491061 () Bool)

(assert (=> setNonEmpty!11948 m!2491061))

(declare-fun m!2491063 () Bool)

(assert (=> b!2047358 m!2491063))

(declare-fun m!2491065 () Bool)

(assert (=> mapNonEmpty!9425 m!2491065))

(declare-fun m!2491067 () Bool)

(assert (=> b!2047355 m!2491067))

(declare-fun m!2491069 () Bool)

(assert (=> setNonEmpty!11949 m!2491069))

(declare-fun e!1293969 () Bool)

(declare-fun e!1293971 () Bool)

(declare-fun b!2047360 () Bool)

(declare-fun setRes!11950 () Bool)

(declare-fun tp!609826 () Bool)

(assert (=> b!2047360 (= e!1293969 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 mapValue!9416)))) e!1293971 tp_is_empty!9303 setRes!11950 tp!609826))))

(declare-fun condSetEmpty!11950 () Bool)

(assert (=> b!2047360 (= condSetEmpty!11950 (= (_2!12151 (h!27912 mapValue!9416)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047361 () Bool)

(declare-fun tp!609828 () Bool)

(assert (=> b!2047361 (= e!1293971 tp!609828)))

(declare-fun setNonEmpty!11950 () Bool)

(declare-fun e!1293970 () Bool)

(declare-fun setElem!11950 () Context!2058)

(declare-fun tp!609829 () Bool)

(assert (=> setNonEmpty!11950 (= setRes!11950 (and tp!609829 (inv!29875 setElem!11950) e!1293970))))

(declare-fun setRest!11950 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11950 (= (_2!12151 (h!27912 mapValue!9416)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11950 true) setRest!11950))))

(declare-fun b!2047362 () Bool)

(declare-fun tp!609827 () Bool)

(assert (=> b!2047362 (= e!1293970 tp!609827)))

(declare-fun setIsEmpty!11950 () Bool)

(assert (=> setIsEmpty!11950 setRes!11950))

(assert (=> mapNonEmpty!9415 (= tp!609572 e!1293969)))

(assert (= b!2047360 b!2047361))

(assert (= (and b!2047360 condSetEmpty!11950) setIsEmpty!11950))

(assert (= (and b!2047360 (not condSetEmpty!11950)) setNonEmpty!11950))

(assert (= setNonEmpty!11950 b!2047362))

(assert (= (and mapNonEmpty!9415 ((_ is Cons!22511) mapValue!9416)) b!2047360))

(declare-fun m!2491071 () Bool)

(assert (=> b!2047360 m!2491071))

(declare-fun m!2491073 () Bool)

(assert (=> setNonEmpty!11950 m!2491073))

(declare-fun tp!609836 () Bool)

(declare-fun e!1293976 () Bool)

(declare-fun tp!609837 () Bool)

(declare-fun b!2047371 () Bool)

(assert (=> b!2047371 (= e!1293976 (and (inv!29869 (left!17841 (c!331184 acc!382))) tp!609837 (inv!29869 (right!18171 (c!331184 acc!382))) tp!609836))))

(declare-fun b!2047373 () Bool)

(declare-fun e!1293977 () Bool)

(declare-fun tp!609838 () Bool)

(assert (=> b!2047373 (= e!1293977 tp!609838)))

(declare-fun b!2047372 () Bool)

(declare-fun inv!29877 (IArray!15079) Bool)

(assert (=> b!2047372 (= e!1293976 (and (inv!29877 (xs!10445 (c!331184 acc!382))) e!1293977))))

(assert (=> b!2046912 (= tp!609585 (and (inv!29869 (c!331184 acc!382)) e!1293976))))

(assert (= (and b!2046912 ((_ is Node!7537) (c!331184 acc!382))) b!2047371))

(assert (= b!2047372 b!2047373))

(assert (= (and b!2046912 ((_ is Leaf!11034) (c!331184 acc!382))) b!2047372))

(declare-fun m!2491075 () Bool)

(assert (=> b!2047371 m!2491075))

(declare-fun m!2491077 () Bool)

(assert (=> b!2047371 m!2491077))

(declare-fun m!2491079 () Bool)

(assert (=> b!2047372 m!2491079))

(assert (=> b!2046912 m!2490487))

(declare-fun b!2047374 () Bool)

(declare-fun e!1293978 () Bool)

(declare-fun tp!609839 () Bool)

(assert (=> b!2047374 (= e!1293978 (and tp_is_empty!9303 tp!609839))))

(assert (=> b!2046877 (= tp!609602 e!1293978)))

(assert (= (and b!2046877 ((_ is Cons!22507) (originalCharacters!4836 (_1!12147 (v!27176 err!3192))))) b!2047374))

(declare-fun setIsEmpty!11951 () Bool)

(declare-fun setRes!11951 () Bool)

(assert (=> setIsEmpty!11951 setRes!11951))

(declare-fun b!2047375 () Bool)

(declare-fun e!1293981 () Bool)

(declare-fun tp!609841 () Bool)

(assert (=> b!2047375 (= e!1293981 tp!609841)))

(declare-fun e!1293979 () Bool)

(assert (=> b!2046895 (= tp!609581 e!1293979)))

(declare-fun e!1293980 () Bool)

(declare-fun setElem!11951 () Context!2058)

(declare-fun setNonEmpty!11951 () Bool)

(declare-fun tp!609843 () Bool)

(assert (=> setNonEmpty!11951 (= setRes!11951 (and tp!609843 (inv!29875 setElem!11951) e!1293980))))

(declare-fun setRest!11951 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11951 (= (_2!12149 (h!27911 (zeroValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11951 true) setRest!11951))))

(declare-fun b!2047376 () Bool)

(declare-fun tp!609842 () Bool)

(assert (=> b!2047376 (= e!1293980 tp!609842)))

(declare-fun tp!609840 () Bool)

(declare-fun tp!609844 () Bool)

(declare-fun b!2047377 () Bool)

(assert (=> b!2047377 (= e!1293979 (and tp!609840 (inv!29875 (_2!12148 (_1!12149 (h!27911 (zeroValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575)))))))))) e!1293981 tp_is_empty!9303 setRes!11951 tp!609844))))

(declare-fun condSetEmpty!11951 () Bool)

(assert (=> b!2047377 (= condSetEmpty!11951 (= (_2!12149 (h!27911 (zeroValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575)))))))) ((as const (Array Context!2058 Bool)) false)))))

(assert (= b!2047377 b!2047375))

(assert (= (and b!2047377 condSetEmpty!11951) setIsEmpty!11951))

(assert (= (and b!2047377 (not condSetEmpty!11951)) setNonEmpty!11951))

(assert (= setNonEmpty!11951 b!2047376))

(assert (= (and b!2046895 ((_ is Cons!22510) (zeroValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575)))))))) b!2047377))

(declare-fun m!2491081 () Bool)

(assert (=> setNonEmpty!11951 m!2491081))

(declare-fun m!2491083 () Bool)

(assert (=> b!2047377 m!2491083))

(declare-fun setIsEmpty!11952 () Bool)

(declare-fun setRes!11952 () Bool)

(assert (=> setIsEmpty!11952 setRes!11952))

(declare-fun b!2047378 () Bool)

(declare-fun e!1293984 () Bool)

(declare-fun tp!609846 () Bool)

(assert (=> b!2047378 (= e!1293984 tp!609846)))

(declare-fun e!1293982 () Bool)

(assert (=> b!2046895 (= tp!609570 e!1293982)))

(declare-fun setElem!11952 () Context!2058)

(declare-fun tp!609848 () Bool)

(declare-fun e!1293983 () Bool)

(declare-fun setNonEmpty!11952 () Bool)

(assert (=> setNonEmpty!11952 (= setRes!11952 (and tp!609848 (inv!29875 setElem!11952) e!1293983))))

(declare-fun setRest!11952 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11952 (= (_2!12149 (h!27911 (minValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11952 true) setRest!11952))))

(declare-fun b!2047379 () Bool)

(declare-fun tp!609847 () Bool)

(assert (=> b!2047379 (= e!1293983 tp!609847)))

(declare-fun tp!609845 () Bool)

(declare-fun b!2047380 () Bool)

(declare-fun tp!609849 () Bool)

(assert (=> b!2047380 (= e!1293982 (and tp!609845 (inv!29875 (_2!12148 (_1!12149 (h!27911 (minValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575)))))))))) e!1293984 tp_is_empty!9303 setRes!11952 tp!609849))))

(declare-fun condSetEmpty!11952 () Bool)

(assert (=> b!2047380 (= condSetEmpty!11952 (= (_2!12149 (h!27911 (minValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575)))))))) ((as const (Array Context!2058 Bool)) false)))))

(assert (= b!2047380 b!2047378))

(assert (= (and b!2047380 condSetEmpty!11952) setIsEmpty!11952))

(assert (= (and b!2047380 (not condSetEmpty!11952)) setNonEmpty!11952))

(assert (= setNonEmpty!11952 b!2047379))

(assert (= (and b!2046895 ((_ is Cons!22510) (minValue!2290 (v!27177 (underlying!4259 (v!27180 (underlying!4262 (cache!2328 cacheDown!575)))))))) b!2047380))

(declare-fun m!2491085 () Bool)

(assert (=> setNonEmpty!11952 m!2491085))

(declare-fun m!2491087 () Bool)

(assert (=> b!2047380 m!2491087))

(declare-fun e!1293987 () Bool)

(declare-fun tp!609850 () Bool)

(declare-fun setRes!11953 () Bool)

(declare-fun e!1293985 () Bool)

(declare-fun b!2047381 () Bool)

(assert (=> b!2047381 (= e!1293985 (and (inv!29875 (_1!12150 (_1!12151 (h!27912 mapDefault!9416)))) e!1293987 tp_is_empty!9303 setRes!11953 tp!609850))))

(declare-fun condSetEmpty!11953 () Bool)

(assert (=> b!2047381 (= condSetEmpty!11953 (= (_2!12151 (h!27912 mapDefault!9416)) ((as const (Array Context!2058 Bool)) false)))))

(declare-fun b!2047382 () Bool)

(declare-fun tp!609852 () Bool)

(assert (=> b!2047382 (= e!1293987 tp!609852)))

(declare-fun setNonEmpty!11953 () Bool)

(declare-fun e!1293986 () Bool)

(declare-fun tp!609853 () Bool)

(declare-fun setElem!11953 () Context!2058)

(assert (=> setNonEmpty!11953 (= setRes!11953 (and tp!609853 (inv!29875 setElem!11953) e!1293986))))

(declare-fun setRest!11953 () (InoxSet Context!2058))

(assert (=> setNonEmpty!11953 (= (_2!12151 (h!27912 mapDefault!9416)) ((_ map or) (store ((as const (Array Context!2058 Bool)) false) setElem!11953 true) setRest!11953))))

(declare-fun b!2047383 () Bool)

(declare-fun tp!609851 () Bool)

(assert (=> b!2047383 (= e!1293986 tp!609851)))

(declare-fun setIsEmpty!11953 () Bool)

(assert (=> setIsEmpty!11953 setRes!11953))

(assert (=> b!2046914 (= tp!609573 e!1293985)))

(assert (= b!2047381 b!2047382))

(assert (= (and b!2047381 condSetEmpty!11953) setIsEmpty!11953))

(assert (= (and b!2047381 (not condSetEmpty!11953)) setNonEmpty!11953))

(assert (= setNonEmpty!11953 b!2047383))

(assert (= (and b!2046914 ((_ is Cons!22511) mapDefault!9416)) b!2047381))

(declare-fun m!2491089 () Bool)

(assert (=> b!2047381 m!2491089))

(declare-fun m!2491091 () Bool)

(assert (=> setNonEmpty!11953 m!2491091))

(declare-fun b_lambda!69065 () Bool)

(assert (= b_lambda!69063 (or (and b!2046928 b_free!57389 (= (toChars!5573 (transformation!4031 (h!27909 rules!1563))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))))) (and b!2046873 b_free!57397) (and b!2046916 b_free!57407 (= (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))))) (and b!2047267 b_free!57415 (= (toChars!5573 (transformation!4031 (h!27909 (t!191712 rules!1563)))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))))) b_lambda!69065)))

(declare-fun b_lambda!69067 () Bool)

(assert (= b_lambda!69061 (or (and b!2046928 b_free!57389 (= (toChars!5573 (transformation!4031 (h!27909 rules!1563))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))))) (and b!2046873 b_free!57397 (= (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 (_1!12152 err!3193)))))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))))) (and b!2046916 b_free!57407) (and b!2047267 b_free!57415 (= (toChars!5573 (transformation!4031 (h!27909 (t!191712 rules!1563)))) (toChars!5573 (transformation!4031 (rule!6267 (_1!12147 (v!27176 err!3192))))))) b_lambda!69067)))

(check-sat b_and!163331 b_and!163337 (not d!625849) (not b!2047125) (not b!2047250) (not d!625845) (not b!2047268) (not b_next!58115) (not b!2046980) (not b!2047284) (not b!2047344) (not bm!125348) (not d!625873) (not b!2046908) (not b!2046983) (not d!625811) (not bm!125344) (not setNonEmpty!11949) (not b!2047096) (not b!2047216) b_and!163355 (not b_next!58091) (not b!2047352) (not b!2047290) (not b!2047342) (not b!2046996) (not d!625787) b_and!163339 (not b!2047105) (not b!2047007) (not b!2047357) (not b!2047075) b_and!163367 (not b!2047153) (not d!625901) (not b!2047291) (not setNonEmpty!11923) (not d!625841) (not b_lambda!69065) (not d!625905) b_and!163343 (not b!2047148) (not b!2047313) (not b_next!58089) (not b!2047181) (not d!625829) (not d!625791) (not b!2047332) (not b!2046942) (not d!625871) (not b!2047025) (not b!2047156) (not b_next!58117) (not b!2047149) (not b!2047328) (not b!2047265) (not d!625839) (not b!2047081) (not b!2047231) (not b!2047194) (not b!2047353) (not d!625801) (not mapNonEmpty!9425) (not b!2047072) (not d!625885) (not b!2047064) (not b!2047318) (not b!2047314) (not b!2047377) (not b_next!58095) (not setNonEmpty!11952) (not mapNonEmpty!9423) (not b!2047349) (not b!2047343) (not setNonEmpty!11931) (not b_next!58093) (not b_next!58119) (not b!2047361) (not b!2047287) (not b!2047341) (not b!2047108) b_and!163371 (not b_next!58113) b_and!163329 (not setNonEmpty!11929) (not b!2047103) (not b!2047008) (not b!2047024) (not b!2047070) (not b!2046949) (not d!625887) (not b_next!58107) (not b!2047066) (not b!2047147) (not d!625809) (not b!2047255) (not mapNonEmpty!9424) (not b!2046973) (not tb!128993) (not setNonEmpty!11948) (not b!2047380) (not b!2047306) (not b!2047028) (not b!2047360) (not setNonEmpty!11944) (not d!625793) (not setNonEmpty!11940) (not b_next!58111) (not b!2047348) b_and!163365 (not b!2047310) (not setNonEmpty!11941) (not d!625825) (not b!2047285) (not b!2047079) (not bm!125345) (not b!2046971) (not b!2046875) (not b!2047232) (not mapNonEmpty!9420) (not b!2047005) (not b!2047026) (not b!2046968) (not b!2047322) (not d!625859) (not b!2047059) (not b!2047373) (not b!2047186) (not d!625915) (not setNonEmpty!11930) (not b!2047256) (not b!2046966) (not b!2047253) (not b!2047311) (not b!2047345) (not b!2047266) (not b!2047228) (not setNonEmpty!11950) (not b!2047252) (not b!2047095) (not b!2047155) (not tb!128987) b_and!163363 (not setNonEmpty!11945) (not d!625789) (not b!2047358) (not b!2046997) (not b!2047046) (not b!2046945) (not setNonEmpty!11938) (not d!625909) (not b!2047029) (not b!2047309) (not b!2047375) (not d!625889) (not b_next!58099) (not b!2047068) (not b!2047069) (not b!2047320) (not b!2047000) (not b!2047374) (not b!2047254) (not b!2047371) (not b!2047082) (not b!2047071) (not b!2047184) (not b!2047099) (not b!2047217) (not b!2047074) (not b!2047315) (not b!2047157) (not b!2047326) (not b!2047151) (not b!2047076) (not setNonEmpty!11951) (not setNonEmpty!11939) (not setNonEmpty!11947) (not b!2046972) (not b!2047356) (not b!2047282) (not b!2047098) (not d!625815) (not d!625823) (not b!2047381) (not b!2047230) (not b!2047001) (not b!2047382) (not b!2047355) (not b!2047378) b_and!163353 (not b!2047047) (not b!2047122) (not b!2047004) (not setNonEmpty!11946) (not b!2047270) (not b!2046999) b_and!163335 (not d!625865) (not b!2047060) (not b!2047086) (not d!625827) (not b!2047269) b_and!163345 (not b!2047312) (not d!625875) (not b!2047193) (not b!2047003) (not b!2047215) (not bm!125349) (not setNonEmpty!11924) (not b!2047049) (not b!2047346) (not b!2047083) (not b_next!58105) (not b!2047126) (not b!2047077) (not b!2047338) (not b!2047097) (not b!2047321) (not d!625843) (not b!2047337) (not bm!125350) (not b!2047289) (not setNonEmpty!11933) (not b!2046871) (not d!625837) b_and!163369 (not b!2047027) (not b!2047331) (not b!2047329) (not b!2047248) (not d!625869) (not d!625807) (not b!2047124) (not setNonEmpty!11942) (not d!625813) (not b!2047061) (not b!2047359) (not b!2046936) (not b!2046946) (not b!2047085) (not b_next!58097) (not d!625785) (not b!2047286) (not b!2047307) (not setNonEmpty!11953) (not b_next!58103) (not b!2047154) (not b!2047205) (not d!625833) (not b!2047159) (not b!2046985) (not b!2047362) (not b!2047160) (not b_next!58109) (not b!2047249) (not setNonEmpty!11920) b_and!163347 (not b!2046881) (not b!2047233) (not b!2047323) (not b!2047383) (not b!2046970) (not b!2047203) (not b!2047324) (not b!2047179) (not b!2047319) (not b!2047171) (not b!2047170) (not b!2047354) (not b!2047123) (not b!2047372) (not b!2047325) (not b!2047316) (not b!2047214) (not b!2047034) (not b!2047351) (not setNonEmpty!11932) (not d!625817) (not d!625891) (not d!625883) (not b!2047189) (not setNonEmpty!11943) (not b!2047185) (not b_lambda!69067) (not b!2047078) (not d!625903) (not b!2047067) tp_is_empty!9303 (not b!2046901) (not b!2047283) (not b!2047006) (not b!2046982) b_and!163349 (not b!2047219) (not b!2046912) (not b!2047084) (not b!2047330) (not b!2046969) (not b!2047100) (not b!2047035) (not b_next!58101) (not b!2047317) (not b!2047339) (not b!2046937) (not b!2047379) (not b!2047340) (not b!2047376) (not b!2047347) (not b!2047308) (not b!2047204) (not b!2047251) (not b!2047192) (not d!625913) (not b!2047218) (not b!2047102) (not b!2047327) (not d!625795) (not b!2047106) (not b!2047229) (not b!2047150) (not d!625847))
(check-sat (not b_next!58089) (not b_next!58117) (not b_next!58095) b_and!163363 (not b_next!58099) b_and!163345 (not b_next!58105) b_and!163369 (not b_next!58097) (not b_next!58103) b_and!163349 (not b_next!58101) b_and!163331 b_and!163337 (not b_next!58115) b_and!163355 (not b_next!58091) b_and!163339 b_and!163343 b_and!163367 (not b_next!58093) b_and!163371 (not b_next!58119) (not b_next!58107) (not b_next!58113) b_and!163329 (not b_next!58111) b_and!163365 b_and!163353 b_and!163335 (not b_next!58109) b_and!163347)
