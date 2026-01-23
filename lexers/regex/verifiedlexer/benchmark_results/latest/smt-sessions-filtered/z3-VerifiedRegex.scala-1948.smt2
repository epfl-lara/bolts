; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95750 () Bool)

(assert start!95750)

(declare-fun b!1108301 () Bool)

(declare-fun b_free!26961 () Bool)

(declare-fun b_next!27025 () Bool)

(assert (=> b!1108301 (= b_free!26961 (not b_next!27025))))

(declare-fun tp!329124 () Bool)

(declare-fun b_and!79281 () Bool)

(assert (=> b!1108301 (= tp!329124 b_and!79281)))

(declare-fun b!1108303 () Bool)

(declare-fun b_free!26963 () Bool)

(declare-fun b_next!27027 () Bool)

(assert (=> b!1108303 (= b_free!26963 (not b_next!27027))))

(declare-fun tp!329131 () Bool)

(declare-fun b_and!79283 () Bool)

(assert (=> b!1108303 (= tp!329131 b_and!79283)))

(declare-fun b!1108293 () Bool)

(declare-fun b_free!26965 () Bool)

(declare-fun b_next!27029 () Bool)

(assert (=> b!1108293 (= b_free!26965 (not b_next!27029))))

(declare-fun tp!329127 () Bool)

(declare-fun b_and!79285 () Bool)

(assert (=> b!1108293 (= tp!329127 b_and!79285)))

(declare-fun b!1108311 () Bool)

(declare-fun b_free!26967 () Bool)

(declare-fun b_next!27031 () Bool)

(assert (=> b!1108311 (= b_free!26967 (not b_next!27031))))

(declare-fun tp!329138 () Bool)

(declare-fun b_and!79287 () Bool)

(assert (=> b!1108311 (= tp!329138 b_and!79287)))

(declare-fun b_free!26969 () Bool)

(declare-fun b_next!27033 () Bool)

(assert (=> b!1108311 (= b_free!26969 (not b_next!27033))))

(declare-fun tp!329136 () Bool)

(declare-fun b_and!79289 () Bool)

(assert (=> b!1108311 (= tp!329136 b_and!79289)))

(declare-fun b!1108292 () Bool)

(declare-fun b_free!26971 () Bool)

(declare-fun b_next!27035 () Bool)

(assert (=> b!1108292 (= b_free!26971 (not b_next!27035))))

(declare-fun tp!329135 () Bool)

(declare-fun b_and!79291 () Bool)

(assert (=> b!1108292 (= tp!329135 b_and!79291)))

(declare-fun b!1108291 () Bool)

(declare-fun e!702874 () Bool)

(declare-datatypes ((List!10911 0))(
  ( (Nil!10887) (Cons!10887 (h!16288 (_ BitVec 16)) (t!105499 List!10911)) )
))
(declare-datatypes ((TokenValue!1943 0))(
  ( (FloatLiteralValue!3886 (text!14046 List!10911)) (TokenValueExt!1942 (__x!7607 Int)) (Broken!9715 (value!61465 List!10911)) (Object!1966) (End!1943) (Def!1943) (Underscore!1943) (Match!1943) (Else!1943) (Error!1943) (Case!1943) (If!1943) (Extends!1943) (Abstract!1943) (Class!1943) (Val!1943) (DelimiterValue!3886 (del!2003 List!10911)) (KeywordValue!1949 (value!61466 List!10911)) (CommentValue!3886 (value!61467 List!10911)) (WhitespaceValue!3886 (value!61468 List!10911)) (IndentationValue!1943 (value!61469 List!10911)) (String!13302) (Int32!1943) (Broken!9716 (value!61470 List!10911)) (Boolean!1944) (Unit!16475) (OperatorValue!1946 (op!2003 List!10911)) (IdentifierValue!3886 (value!61471 List!10911)) (IdentifierValue!3887 (value!61472 List!10911)) (WhitespaceValue!3887 (value!61473 List!10911)) (True!3886) (False!3886) (Broken!9717 (value!61474 List!10911)) (Broken!9718 (value!61475 List!10911)) (True!3887) (RightBrace!1943) (RightBracket!1943) (Colon!1943) (Null!1943) (Comma!1943) (LeftBracket!1943) (False!3887) (LeftBrace!1943) (ImaginaryLiteralValue!1943 (text!14047 List!10911)) (StringLiteralValue!5829 (value!61476 List!10911)) (EOFValue!1943 (value!61477 List!10911)) (IdentValue!1943 (value!61478 List!10911)) (DelimiterValue!3887 (value!61479 List!10911)) (DedentValue!1943 (value!61480 List!10911)) (NewLineValue!1943 (value!61481 List!10911)) (IntegerValue!5829 (value!61482 (_ BitVec 32)) (text!14048 List!10911)) (IntegerValue!5830 (value!61483 Int) (text!14049 List!10911)) (Times!1943) (Or!1943) (Equal!1943) (Minus!1943) (Broken!9719 (value!61484 List!10911)) (And!1943) (Div!1943) (LessEqual!1943) (Mod!1943) (Concat!5090) (Not!1943) (Plus!1943) (SpaceValue!1943 (value!61485 List!10911)) (IntegerValue!5831 (value!61486 Int) (text!14050 List!10911)) (StringLiteralValue!5830 (text!14051 List!10911)) (FloatLiteralValue!3887 (text!14052 List!10911)) (BytesLiteralValue!1943 (value!61487 List!10911)) (CommentValue!3887 (value!61488 List!10911)) (StringLiteralValue!5831 (value!61489 List!10911)) (ErrorTokenValue!1943 (msg!2004 List!10911)) )
))
(declare-datatypes ((C!6684 0))(
  ( (C!6685 (val!3598 Int)) )
))
(declare-datatypes ((List!10912 0))(
  ( (Nil!10888) (Cons!10888 (h!16289 C!6684) (t!105500 List!10912)) )
))
(declare-datatypes ((IArray!6893 0))(
  ( (IArray!6894 (innerList!3504 List!10912)) )
))
(declare-datatypes ((Conc!3444 0))(
  ( (Node!3444 (left!9430 Conc!3444) (right!9760 Conc!3444) (csize!7118 Int) (cheight!3655 Int)) (Leaf!5393 (xs!6137 IArray!6893) (csize!7119 Int)) (Empty!3444) )
))
(declare-datatypes ((BalanceConc!6910 0))(
  ( (BalanceConc!6911 (c!188015 Conc!3444)) )
))
(declare-datatypes ((TokenValueInjection!3586 0))(
  ( (TokenValueInjection!3587 (toValue!2958 Int) (toChars!2817 Int)) )
))
(declare-datatypes ((Regex!3147 0))(
  ( (ElementMatch!3147 (c!188016 C!6684)) (Concat!5091 (regOne!6806 Regex!3147) (regTwo!6806 Regex!3147)) (EmptyExpr!3147) (Star!3147 (reg!3476 Regex!3147)) (EmptyLang!3147) (Union!3147 (regOne!6807 Regex!3147) (regTwo!6807 Regex!3147)) )
))
(declare-datatypes ((String!13303 0))(
  ( (String!13304 (value!61490 String)) )
))
(declare-datatypes ((Rule!3554 0))(
  ( (Rule!3555 (regex!1877 Regex!3147) (tag!2139 String!13303) (isSeparator!1877 Bool) (transformation!1877 TokenValueInjection!3586)) )
))
(declare-datatypes ((Token!3416 0))(
  ( (Token!3417 (value!61491 TokenValue!1943) (rule!3298 Rule!3554) (size!8439 Int) (originalCharacters!2431 List!10912)) )
))
(declare-datatypes ((List!10913 0))(
  ( (Nil!10889) (Cons!10889 (h!16290 Token!3416) (t!105501 List!10913)) )
))
(declare-datatypes ((IArray!6895 0))(
  ( (IArray!6896 (innerList!3505 List!10913)) )
))
(declare-datatypes ((Conc!3445 0))(
  ( (Node!3445 (left!9431 Conc!3445) (right!9761 Conc!3445) (csize!7120 Int) (cheight!3656 Int)) (Leaf!5394 (xs!6138 IArray!6895) (csize!7121 Int)) (Empty!3445) )
))
(declare-datatypes ((BalanceConc!6912 0))(
  ( (BalanceConc!6913 (c!188017 Conc!3445)) )
))
(declare-fun tokens!410 () BalanceConc!6912)

(declare-fun tp!329128 () Bool)

(declare-fun inv!13975 (Conc!3445) Bool)

(assert (=> b!1108291 (= e!702874 (and (inv!13975 (c!188017 tokens!410)) tp!329128))))

(declare-fun res!490676 () Bool)

(declare-fun e!702862 () Bool)

(assert (=> start!95750 (=> (not res!490676) (not e!702862))))

(declare-datatypes ((LexerInterface!1588 0))(
  ( (LexerInterfaceExt!1585 (__x!7608 Int)) (Lexer!1586) )
))
(declare-fun thiss!11199 () LexerInterface!1588)

(get-info :version)

(assert (=> start!95750 (= res!490676 ((_ is Lexer!1586) thiss!11199))))

(assert (=> start!95750 e!702862))

(declare-datatypes ((List!10914 0))(
  ( (Nil!10890) (Cons!10890 (h!16291 Regex!3147) (t!105502 List!10914)) )
))
(declare-datatypes ((Context!1054 0))(
  ( (Context!1055 (exprs!1027 List!10914)) )
))
(declare-datatypes ((array!4531 0))(
  ( (array!4532 (arr!2020 (Array (_ BitVec 32) (_ BitVec 64))) (size!8440 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!11902 0))(
  ( (tuple2!11903 (_1!6796 Context!1054) (_2!6796 C!6684)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!11904 0))(
  ( (tuple2!11905 (_1!6797 tuple2!11902) (_2!6797 (InoxSet Context!1054))) )
))
(declare-datatypes ((List!10915 0))(
  ( (Nil!10891) (Cons!10891 (h!16292 tuple2!11904) (t!105503 List!10915)) )
))
(declare-datatypes ((array!4533 0))(
  ( (array!4534 (arr!2021 (Array (_ BitVec 32) List!10915)) (size!8441 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2566 0))(
  ( (LongMapFixedSize!2567 (defaultEntry!1643 Int) (mask!3775 (_ BitVec 32)) (extraKeys!1530 (_ BitVec 32)) (zeroValue!1540 List!10915) (minValue!1540 List!10915) (_size!2675 (_ BitVec 32)) (_keys!1577 array!4531) (_values!1562 array!4533) (_vacant!1344 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5073 0))(
  ( (Cell!5074 (v!20059 LongMapFixedSize!2566)) )
))
(declare-datatypes ((MutLongMap!1283 0))(
  ( (LongMap!1283 (underlying!2759 Cell!5073)) (MutLongMapExt!1282 (__x!7609 Int)) )
))
(declare-datatypes ((Hashable!1255 0))(
  ( (HashableExt!1254 (__x!7610 Int)) )
))
(declare-datatypes ((Cell!5075 0))(
  ( (Cell!5076 (v!20060 MutLongMap!1283)) )
))
(declare-datatypes ((MutableMap!1255 0))(
  ( (MutableMapExt!1254 (__x!7611 Int)) (HashMap!1255 (underlying!2760 Cell!5075) (hashF!3174 Hashable!1255) (_size!2676 (_ BitVec 32)) (defaultValue!1415 Int)) )
))
(declare-datatypes ((CacheUp!724 0))(
  ( (CacheUp!725 (cache!1636 MutableMap!1255)) )
))
(declare-fun cacheUp!412 () CacheUp!724)

(declare-fun e!702867 () Bool)

(declare-fun inv!13976 (CacheUp!724) Bool)

(assert (=> start!95750 (and (inv!13976 cacheUp!412) e!702867)))

(declare-datatypes ((tuple3!1108 0))(
  ( (tuple3!1109 (_1!6798 Regex!3147) (_2!6798 Context!1054) (_3!845 C!6684)) )
))
(declare-datatypes ((tuple2!11906 0))(
  ( (tuple2!11907 (_1!6799 tuple3!1108) (_2!6799 (InoxSet Context!1054))) )
))
(declare-datatypes ((List!10916 0))(
  ( (Nil!10892) (Cons!10892 (h!16293 tuple2!11906) (t!105504 List!10916)) )
))
(declare-datatypes ((array!4535 0))(
  ( (array!4536 (arr!2022 (Array (_ BitVec 32) List!10916)) (size!8442 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2568 0))(
  ( (LongMapFixedSize!2569 (defaultEntry!1644 Int) (mask!3776 (_ BitVec 32)) (extraKeys!1531 (_ BitVec 32)) (zeroValue!1541 List!10916) (minValue!1541 List!10916) (_size!2677 (_ BitVec 32)) (_keys!1578 array!4531) (_values!1563 array!4535) (_vacant!1345 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5077 0))(
  ( (Cell!5078 (v!20061 LongMapFixedSize!2568)) )
))
(declare-datatypes ((MutLongMap!1284 0))(
  ( (LongMap!1284 (underlying!2761 Cell!5077)) (MutLongMapExt!1283 (__x!7612 Int)) )
))
(declare-datatypes ((Cell!5079 0))(
  ( (Cell!5080 (v!20062 MutLongMap!1284)) )
))
(declare-datatypes ((Hashable!1256 0))(
  ( (HashableExt!1255 (__x!7613 Int)) )
))
(declare-datatypes ((MutableMap!1256 0))(
  ( (MutableMapExt!1255 (__x!7614 Int)) (HashMap!1256 (underlying!2762 Cell!5079) (hashF!3175 Hashable!1256) (_size!2678 (_ BitVec 32)) (defaultValue!1416 Int)) )
))
(declare-datatypes ((CacheDown!728 0))(
  ( (CacheDown!729 (cache!1637 MutableMap!1256)) )
))
(declare-fun cacheDown!425 () CacheDown!728)

(declare-fun e!702863 () Bool)

(declare-fun inv!13977 (CacheDown!728) Bool)

(assert (=> start!95750 (and (inv!13977 cacheDown!425) e!702863)))

(assert (=> start!95750 true))

(declare-fun inv!13978 (BalanceConc!6912) Bool)

(assert (=> start!95750 (and (inv!13978 tokens!410) e!702874)))

(declare-fun e!702879 () Bool)

(assert (=> start!95750 e!702879))

(declare-fun e!702875 () Bool)

(declare-fun e!702877 () Bool)

(declare-fun tp!329133 () Bool)

(declare-fun tp!329137 () Bool)

(declare-fun array_inv!1460 (array!4531) Bool)

(declare-fun array_inv!1461 (array!4533) Bool)

(assert (=> b!1108292 (= e!702877 (and tp!329135 tp!329133 tp!329137 (array_inv!1460 (_keys!1577 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))))) (array_inv!1461 (_values!1562 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))))) e!702875))))

(declare-fun e!702878 () Bool)

(declare-fun e!702861 () Bool)

(assert (=> b!1108293 (= e!702878 (and e!702861 tp!329127))))

(declare-fun b!1108294 () Bool)

(declare-fun res!490678 () Bool)

(assert (=> b!1108294 (=> (not res!490678) (not e!702862))))

(declare-datatypes ((List!10917 0))(
  ( (Nil!10893) (Cons!10893 (h!16294 Rule!3554) (t!105505 List!10917)) )
))
(declare-fun rules!1093 () List!10917)

(declare-fun rulesProduceEachTokenIndividually!630 (LexerInterface!1588 List!10917 BalanceConc!6912) Bool)

(assert (=> b!1108294 (= res!490678 (rulesProduceEachTokenIndividually!630 thiss!11199 rules!1093 tokens!410))))

(declare-fun b!1108295 () Bool)

(assert (=> b!1108295 (= e!702863 e!702878)))

(declare-fun b!1108296 () Bool)

(declare-fun e!702868 () Bool)

(declare-fun e!702871 () Bool)

(assert (=> b!1108296 (= e!702868 e!702871)))

(declare-fun mapIsEmpty!6188 () Bool)

(declare-fun mapRes!6189 () Bool)

(assert (=> mapIsEmpty!6188 mapRes!6189))

(declare-fun mapIsEmpty!6189 () Bool)

(declare-fun mapRes!6188 () Bool)

(assert (=> mapIsEmpty!6189 mapRes!6188))

(declare-fun b!1108297 () Bool)

(declare-fun res!490677 () Bool)

(assert (=> b!1108297 (=> (not res!490677) (not e!702862))))

(declare-fun isEmpty!6746 (List!10917) Bool)

(assert (=> b!1108297 (= res!490677 (not (isEmpty!6746 rules!1093)))))

(declare-fun b!1108298 () Bool)

(declare-datatypes ((tuple3!1110 0))(
  ( (tuple3!1111 (_1!6800 Bool) (_2!6800 CacheUp!724) (_3!846 CacheDown!728)) )
))
(declare-fun tokensListTwoByTwoPredicateSeparableMem!7 (LexerInterface!1588 BalanceConc!6912 Int List!10917 CacheUp!724 CacheDown!728) tuple3!1110)

(declare-fun separableTokens!57 (LexerInterface!1588 BalanceConc!6912 List!10917) Bool)

(assert (=> b!1108298 (= e!702862 (not (= (_1!6800 (tokensListTwoByTwoPredicateSeparableMem!7 thiss!11199 tokens!410 0 rules!1093 cacheUp!412 cacheDown!425)) (separableTokens!57 thiss!11199 tokens!410 rules!1093))))))

(declare-fun b!1108299 () Bool)

(declare-fun tp!329134 () Bool)

(assert (=> b!1108299 (= e!702875 (and tp!329134 mapRes!6189))))

(declare-fun condMapEmpty!6189 () Bool)

(declare-fun mapDefault!6189 () List!10915)

(assert (=> b!1108299 (= condMapEmpty!6189 (= (arr!2021 (_values!1562 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))))) ((as const (Array (_ BitVec 32) List!10915)) mapDefault!6189)))))

(declare-fun b!1108300 () Bool)

(declare-fun e!702866 () Bool)

(declare-fun tp!329126 () Bool)

(assert (=> b!1108300 (= e!702879 (and e!702866 tp!329126))))

(declare-fun e!702873 () Bool)

(declare-fun e!702872 () Bool)

(declare-fun tp!329130 () Bool)

(declare-fun tp!329122 () Bool)

(declare-fun array_inv!1462 (array!4535) Bool)

(assert (=> b!1108301 (= e!702872 (and tp!329124 tp!329122 tp!329130 (array_inv!1460 (_keys!1578 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))))) (array_inv!1462 (_values!1563 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))))) e!702873))))

(declare-fun b!1108302 () Bool)

(declare-fun e!702880 () Bool)

(declare-fun lt!376161 () MutLongMap!1284)

(assert (=> b!1108302 (= e!702861 (and e!702880 ((_ is LongMap!1284) lt!376161)))))

(assert (=> b!1108302 (= lt!376161 (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))))

(declare-fun e!702881 () Bool)

(declare-fun e!702864 () Bool)

(assert (=> b!1108303 (= e!702881 (and e!702864 tp!329131))))

(declare-fun mapNonEmpty!6188 () Bool)

(declare-fun tp!329120 () Bool)

(declare-fun tp!329121 () Bool)

(assert (=> mapNonEmpty!6188 (= mapRes!6188 (and tp!329120 tp!329121))))

(declare-fun mapValue!6189 () List!10916)

(declare-fun mapKey!6189 () (_ BitVec 32))

(declare-fun mapRest!6189 () (Array (_ BitVec 32) List!10916))

(assert (=> mapNonEmpty!6188 (= (arr!2022 (_values!1563 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))))) (store mapRest!6189 mapKey!6189 mapValue!6189))))

(declare-fun b!1108304 () Bool)

(assert (=> b!1108304 (= e!702871 e!702877)))

(declare-fun b!1108305 () Bool)

(assert (=> b!1108305 (= e!702867 e!702881)))

(declare-fun b!1108306 () Bool)

(declare-fun lt!376160 () MutLongMap!1283)

(assert (=> b!1108306 (= e!702864 (and e!702868 ((_ is LongMap!1283) lt!376160)))))

(assert (=> b!1108306 (= lt!376160 (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))))

(declare-fun b!1108307 () Bool)

(declare-fun e!702870 () Bool)

(declare-fun tp!329132 () Bool)

(declare-fun inv!13969 (String!13303) Bool)

(declare-fun inv!13979 (TokenValueInjection!3586) Bool)

(assert (=> b!1108307 (= e!702866 (and tp!329132 (inv!13969 (tag!2139 (h!16294 rules!1093))) (inv!13979 (transformation!1877 (h!16294 rules!1093))) e!702870))))

(declare-fun b!1108308 () Bool)

(declare-fun tp!329129 () Bool)

(assert (=> b!1108308 (= e!702873 (and tp!329129 mapRes!6188))))

(declare-fun condMapEmpty!6188 () Bool)

(declare-fun mapDefault!6188 () List!10916)

(assert (=> b!1108308 (= condMapEmpty!6188 (= (arr!2022 (_values!1563 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))))) ((as const (Array (_ BitVec 32) List!10916)) mapDefault!6188)))))

(declare-fun b!1108309 () Bool)

(declare-fun e!702865 () Bool)

(assert (=> b!1108309 (= e!702880 e!702865)))

(declare-fun b!1108310 () Bool)

(declare-fun res!490675 () Bool)

(assert (=> b!1108310 (=> (not res!490675) (not e!702862))))

(declare-fun rulesInvariant!1462 (LexerInterface!1588 List!10917) Bool)

(assert (=> b!1108310 (= res!490675 (rulesInvariant!1462 thiss!11199 rules!1093))))

(assert (=> b!1108311 (= e!702870 (and tp!329138 tp!329136))))

(declare-fun mapNonEmpty!6189 () Bool)

(declare-fun tp!329123 () Bool)

(declare-fun tp!329125 () Bool)

(assert (=> mapNonEmpty!6189 (= mapRes!6189 (and tp!329123 tp!329125))))

(declare-fun mapKey!6188 () (_ BitVec 32))

(declare-fun mapValue!6188 () List!10915)

(declare-fun mapRest!6188 () (Array (_ BitVec 32) List!10915))

(assert (=> mapNonEmpty!6189 (= (arr!2021 (_values!1562 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))))) (store mapRest!6188 mapKey!6188 mapValue!6188))))

(declare-fun b!1108312 () Bool)

(assert (=> b!1108312 (= e!702865 e!702872)))

(assert (= (and start!95750 res!490676) b!1108297))

(assert (= (and b!1108297 res!490677) b!1108310))

(assert (= (and b!1108310 res!490675) b!1108294))

(assert (= (and b!1108294 res!490678) b!1108298))

(assert (= (and b!1108299 condMapEmpty!6189) mapIsEmpty!6188))

(assert (= (and b!1108299 (not condMapEmpty!6189)) mapNonEmpty!6189))

(assert (= b!1108292 b!1108299))

(assert (= b!1108304 b!1108292))

(assert (= b!1108296 b!1108304))

(assert (= (and b!1108306 ((_ is LongMap!1283) (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))) b!1108296))

(assert (= b!1108303 b!1108306))

(assert (= (and b!1108305 ((_ is HashMap!1255) (cache!1636 cacheUp!412))) b!1108303))

(assert (= start!95750 b!1108305))

(assert (= (and b!1108308 condMapEmpty!6188) mapIsEmpty!6189))

(assert (= (and b!1108308 (not condMapEmpty!6188)) mapNonEmpty!6188))

(assert (= b!1108301 b!1108308))

(assert (= b!1108312 b!1108301))

(assert (= b!1108309 b!1108312))

(assert (= (and b!1108302 ((_ is LongMap!1284) (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))) b!1108309))

(assert (= b!1108293 b!1108302))

(assert (= (and b!1108295 ((_ is HashMap!1256) (cache!1637 cacheDown!425))) b!1108293))

(assert (= start!95750 b!1108295))

(assert (= start!95750 b!1108291))

(assert (= b!1108307 b!1108311))

(assert (= b!1108300 b!1108307))

(assert (= (and start!95750 ((_ is Cons!10893) rules!1093)) b!1108300))

(declare-fun m!1265141 () Bool)

(assert (=> b!1108291 m!1265141))

(declare-fun m!1265143 () Bool)

(assert (=> b!1108301 m!1265143))

(declare-fun m!1265145 () Bool)

(assert (=> b!1108301 m!1265145))

(declare-fun m!1265147 () Bool)

(assert (=> b!1108294 m!1265147))

(declare-fun m!1265149 () Bool)

(assert (=> start!95750 m!1265149))

(declare-fun m!1265151 () Bool)

(assert (=> start!95750 m!1265151))

(declare-fun m!1265153 () Bool)

(assert (=> start!95750 m!1265153))

(declare-fun m!1265155 () Bool)

(assert (=> b!1108298 m!1265155))

(declare-fun m!1265157 () Bool)

(assert (=> b!1108298 m!1265157))

(declare-fun m!1265159 () Bool)

(assert (=> b!1108307 m!1265159))

(declare-fun m!1265161 () Bool)

(assert (=> b!1108307 m!1265161))

(declare-fun m!1265163 () Bool)

(assert (=> mapNonEmpty!6189 m!1265163))

(declare-fun m!1265165 () Bool)

(assert (=> b!1108297 m!1265165))

(declare-fun m!1265167 () Bool)

(assert (=> b!1108292 m!1265167))

(declare-fun m!1265169 () Bool)

(assert (=> b!1108292 m!1265169))

(declare-fun m!1265171 () Bool)

(assert (=> mapNonEmpty!6188 m!1265171))

(declare-fun m!1265173 () Bool)

(assert (=> b!1108310 m!1265173))

(check-sat (not b!1108294) (not b_next!27027) (not b!1108307) (not mapNonEmpty!6189) b_and!79291 b_and!79285 (not b!1108299) b_and!79289 (not b!1108297) (not b_next!27025) b_and!79287 (not mapNonEmpty!6188) b_and!79281 (not b!1108291) (not b!1108308) (not start!95750) (not b!1108301) (not b!1108292) (not b!1108300) (not b_next!27029) (not b_next!27031) (not b_next!27033) (not b_next!27035) (not b!1108298) (not b!1108310) b_and!79283)
(check-sat (not b_next!27027) b_and!79281 b_and!79291 b_and!79285 (not b_next!27029) b_and!79289 (not b_next!27025) b_and!79287 (not b_next!27035) b_and!79283 (not b_next!27031) (not b_next!27033))
(get-model)

(declare-fun d!313587 () Bool)

(declare-fun res!490681 () Bool)

(declare-fun e!702884 () Bool)

(assert (=> d!313587 (=> (not res!490681) (not e!702884))))

(assert (=> d!313587 (= res!490681 ((_ is HashMap!1255) (cache!1636 cacheUp!412)))))

(assert (=> d!313587 (= (inv!13976 cacheUp!412) e!702884)))

(declare-fun b!1108315 () Bool)

(declare-fun validCacheMapUp!117 (MutableMap!1255) Bool)

(assert (=> b!1108315 (= e!702884 (validCacheMapUp!117 (cache!1636 cacheUp!412)))))

(assert (= (and d!313587 res!490681) b!1108315))

(declare-fun m!1265175 () Bool)

(assert (=> b!1108315 m!1265175))

(assert (=> start!95750 d!313587))

(declare-fun d!313589 () Bool)

(declare-fun res!490684 () Bool)

(declare-fun e!702887 () Bool)

(assert (=> d!313589 (=> (not res!490684) (not e!702887))))

(assert (=> d!313589 (= res!490684 ((_ is HashMap!1256) (cache!1637 cacheDown!425)))))

(assert (=> d!313589 (= (inv!13977 cacheDown!425) e!702887)))

(declare-fun b!1108318 () Bool)

(declare-fun validCacheMapDown!117 (MutableMap!1256) Bool)

(assert (=> b!1108318 (= e!702887 (validCacheMapDown!117 (cache!1637 cacheDown!425)))))

(assert (= (and d!313589 res!490684) b!1108318))

(declare-fun m!1265177 () Bool)

(assert (=> b!1108318 m!1265177))

(assert (=> start!95750 d!313589))

(declare-fun d!313591 () Bool)

(declare-fun isBalanced!942 (Conc!3445) Bool)

(assert (=> d!313591 (= (inv!13978 tokens!410) (isBalanced!942 (c!188017 tokens!410)))))

(declare-fun bs!260099 () Bool)

(assert (= bs!260099 d!313591))

(declare-fun m!1265179 () Bool)

(assert (=> bs!260099 m!1265179))

(assert (=> start!95750 d!313591))

(declare-fun d!313593 () Bool)

(declare-fun c!188020 () Bool)

(assert (=> d!313593 (= c!188020 ((_ is Node!3445) (c!188017 tokens!410)))))

(declare-fun e!702892 () Bool)

(assert (=> d!313593 (= (inv!13975 (c!188017 tokens!410)) e!702892)))

(declare-fun b!1108325 () Bool)

(declare-fun inv!13980 (Conc!3445) Bool)

(assert (=> b!1108325 (= e!702892 (inv!13980 (c!188017 tokens!410)))))

(declare-fun b!1108326 () Bool)

(declare-fun e!702893 () Bool)

(assert (=> b!1108326 (= e!702892 e!702893)))

(declare-fun res!490687 () Bool)

(assert (=> b!1108326 (= res!490687 (not ((_ is Leaf!5394) (c!188017 tokens!410))))))

(assert (=> b!1108326 (=> res!490687 e!702893)))

(declare-fun b!1108327 () Bool)

(declare-fun inv!13981 (Conc!3445) Bool)

(assert (=> b!1108327 (= e!702893 (inv!13981 (c!188017 tokens!410)))))

(assert (= (and d!313593 c!188020) b!1108325))

(assert (= (and d!313593 (not c!188020)) b!1108326))

(assert (= (and b!1108326 (not res!490687)) b!1108327))

(declare-fun m!1265181 () Bool)

(assert (=> b!1108325 m!1265181))

(declare-fun m!1265183 () Bool)

(assert (=> b!1108327 m!1265183))

(assert (=> b!1108291 d!313593))

(declare-fun b!1108341 () Bool)

(declare-fun e!702905 () Bool)

(assert (=> b!1108341 (= e!702905 true)))

(declare-fun b!1108340 () Bool)

(declare-fun e!702904 () Bool)

(assert (=> b!1108340 (= e!702904 e!702905)))

(declare-fun b!1108339 () Bool)

(declare-fun e!702903 () Bool)

(assert (=> b!1108339 (= e!702903 e!702904)))

(declare-fun d!313595 () Bool)

(assert (=> d!313595 e!702903))

(assert (= b!1108340 b!1108341))

(assert (= b!1108339 b!1108340))

(assert (= (and d!313595 ((_ is Cons!10893) rules!1093)) b!1108339))

(declare-fun lambda!44777 () Int)

(declare-fun order!6641 () Int)

(declare-fun order!6643 () Int)

(declare-fun dynLambda!4773 (Int Int) Int)

(declare-fun dynLambda!4774 (Int Int) Int)

(assert (=> b!1108341 (< (dynLambda!4773 order!6641 (toValue!2958 (transformation!1877 (h!16294 rules!1093)))) (dynLambda!4774 order!6643 lambda!44777))))

(declare-fun order!6645 () Int)

(declare-fun dynLambda!4775 (Int Int) Int)

(assert (=> b!1108341 (< (dynLambda!4775 order!6645 (toChars!2817 (transformation!1877 (h!16294 rules!1093)))) (dynLambda!4774 order!6643 lambda!44777))))

(assert (=> d!313595 true))

(declare-fun e!702896 () Bool)

(assert (=> d!313595 e!702896))

(declare-fun res!490690 () Bool)

(assert (=> d!313595 (=> (not res!490690) (not e!702896))))

(declare-fun lt!376164 () Bool)

(declare-fun forall!2553 (List!10913 Int) Bool)

(declare-fun list!3901 (BalanceConc!6912) List!10913)

(assert (=> d!313595 (= res!490690 (= lt!376164 (forall!2553 (list!3901 tokens!410) lambda!44777)))))

(declare-fun forall!2554 (BalanceConc!6912 Int) Bool)

(assert (=> d!313595 (= lt!376164 (forall!2554 tokens!410 lambda!44777))))

(assert (=> d!313595 (not (isEmpty!6746 rules!1093))))

(assert (=> d!313595 (= (rulesProduceEachTokenIndividually!630 thiss!11199 rules!1093 tokens!410) lt!376164)))

(declare-fun b!1108330 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!463 (LexerInterface!1588 List!10917 List!10913) Bool)

(assert (=> b!1108330 (= e!702896 (= lt!376164 (rulesProduceEachTokenIndividuallyList!463 thiss!11199 rules!1093 (list!3901 tokens!410))))))

(assert (= (and d!313595 res!490690) b!1108330))

(declare-fun m!1265185 () Bool)

(assert (=> d!313595 m!1265185))

(assert (=> d!313595 m!1265185))

(declare-fun m!1265187 () Bool)

(assert (=> d!313595 m!1265187))

(declare-fun m!1265189 () Bool)

(assert (=> d!313595 m!1265189))

(assert (=> d!313595 m!1265165))

(assert (=> b!1108330 m!1265185))

(assert (=> b!1108330 m!1265185))

(declare-fun m!1265191 () Bool)

(assert (=> b!1108330 m!1265191))

(assert (=> b!1108294 d!313595))

(declare-fun d!313597 () Bool)

(assert (=> d!313597 (= (inv!13969 (tag!2139 (h!16294 rules!1093))) (= (mod (str.len (value!61490 (tag!2139 (h!16294 rules!1093)))) 2) 0))))

(assert (=> b!1108307 d!313597))

(declare-fun d!313599 () Bool)

(declare-fun res!490693 () Bool)

(declare-fun e!702908 () Bool)

(assert (=> d!313599 (=> (not res!490693) (not e!702908))))

(declare-fun semiInverseModEq!711 (Int Int) Bool)

(assert (=> d!313599 (= res!490693 (semiInverseModEq!711 (toChars!2817 (transformation!1877 (h!16294 rules!1093))) (toValue!2958 (transformation!1877 (h!16294 rules!1093)))))))

(assert (=> d!313599 (= (inv!13979 (transformation!1877 (h!16294 rules!1093))) e!702908)))

(declare-fun b!1108346 () Bool)

(declare-fun equivClasses!678 (Int Int) Bool)

(assert (=> b!1108346 (= e!702908 (equivClasses!678 (toChars!2817 (transformation!1877 (h!16294 rules!1093))) (toValue!2958 (transformation!1877 (h!16294 rules!1093)))))))

(assert (= (and d!313599 res!490693) b!1108346))

(declare-fun m!1265193 () Bool)

(assert (=> d!313599 m!1265193))

(declare-fun m!1265195 () Bool)

(assert (=> b!1108346 m!1265195))

(assert (=> b!1108307 d!313599))

(declare-fun b!1108357 () Bool)

(declare-fun e!702915 () tuple3!1110)

(declare-fun e!702917 () tuple3!1110)

(assert (=> b!1108357 (= e!702915 e!702917)))

(declare-fun lt!376222 () List!10913)

(assert (=> b!1108357 (= lt!376222 (list!3901 tokens!410))))

(declare-datatypes ((Unit!16476 0))(
  ( (Unit!16477) )
))
(declare-fun lt!376221 () Unit!16476)

(declare-fun lemmaDropApply!327 (List!10913 Int) Unit!16476)

(assert (=> b!1108357 (= lt!376221 (lemmaDropApply!327 lt!376222 0))))

(declare-fun head!2042 (List!10913) Token!3416)

(declare-fun drop!410 (List!10913 Int) List!10913)

(declare-fun apply!2216 (List!10913 Int) Token!3416)

(assert (=> b!1108357 (= (head!2042 (drop!410 lt!376222 0)) (apply!2216 lt!376222 0))))

(declare-fun lt!376232 () Unit!16476)

(assert (=> b!1108357 (= lt!376232 lt!376221)))

(declare-fun lt!376229 () List!10913)

(assert (=> b!1108357 (= lt!376229 (list!3901 tokens!410))))

(declare-fun lt!376247 () Int)

(assert (=> b!1108357 (= lt!376247 (+ 0 1))))

(declare-fun lt!376244 () Unit!16476)

(assert (=> b!1108357 (= lt!376244 (lemmaDropApply!327 lt!376229 lt!376247))))

(assert (=> b!1108357 (= (head!2042 (drop!410 lt!376229 lt!376247)) (apply!2216 lt!376229 lt!376247))))

(declare-fun lt!376243 () Unit!16476)

(assert (=> b!1108357 (= lt!376243 lt!376244)))

(declare-fun lt!376228 () List!10913)

(assert (=> b!1108357 (= lt!376228 (list!3901 tokens!410))))

(declare-fun lt!376236 () Unit!16476)

(declare-fun lemmaDropTail!315 (List!10913 Int) Unit!16476)

(assert (=> b!1108357 (= lt!376236 (lemmaDropTail!315 lt!376228 0))))

(declare-fun tail!1602 (List!10913) List!10913)

(assert (=> b!1108357 (= (tail!1602 (drop!410 lt!376228 0)) (drop!410 lt!376228 (+ 0 1)))))

(declare-fun lt!376225 () Unit!16476)

(assert (=> b!1108357 (= lt!376225 lt!376236)))

(declare-fun lt!376240 () List!10913)

(assert (=> b!1108357 (= lt!376240 (list!3901 tokens!410))))

(declare-fun lt!376233 () Int)

(assert (=> b!1108357 (= lt!376233 (+ 0 1))))

(declare-fun lt!376237 () Unit!16476)

(assert (=> b!1108357 (= lt!376237 (lemmaDropTail!315 lt!376240 lt!376233))))

(assert (=> b!1108357 (= (tail!1602 (drop!410 lt!376240 lt!376233)) (drop!410 lt!376240 (+ lt!376233 1)))))

(declare-fun lt!376224 () Unit!16476)

(assert (=> b!1108357 (= lt!376224 lt!376237)))

(declare-fun lt!376230 () List!10913)

(assert (=> b!1108357 (= lt!376230 (list!3901 tokens!410))))

(declare-fun lt!376234 () Token!3416)

(declare-fun apply!2217 (BalanceConc!6912 Int) Token!3416)

(assert (=> b!1108357 (= lt!376234 (apply!2217 tokens!410 0))))

(declare-fun lt!376231 () Unit!16476)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!245 (LexerInterface!1588 List!10917 List!10913 Token!3416) Unit!16476)

(assert (=> b!1108357 (= lt!376231 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!245 thiss!11199 rules!1093 lt!376230 lt!376234))))

(declare-fun rulesProduceIndividualToken!635 (LexerInterface!1588 List!10917 Token!3416) Bool)

(assert (=> b!1108357 (rulesProduceIndividualToken!635 thiss!11199 rules!1093 lt!376234)))

(declare-fun lt!376246 () Unit!16476)

(assert (=> b!1108357 (= lt!376246 lt!376231)))

(declare-fun lt!376242 () List!10913)

(assert (=> b!1108357 (= lt!376242 (list!3901 tokens!410))))

(declare-fun lt!376245 () Token!3416)

(assert (=> b!1108357 (= lt!376245 (apply!2217 tokens!410 (+ 0 1)))))

(declare-fun lt!376223 () Unit!16476)

(assert (=> b!1108357 (= lt!376223 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!245 thiss!11199 rules!1093 lt!376242 lt!376245))))

(assert (=> b!1108357 (rulesProduceIndividualToken!635 thiss!11199 rules!1093 lt!376245)))

(declare-fun lt!376226 () Unit!16476)

(assert (=> b!1108357 (= lt!376226 lt!376223)))

(assert (=> b!1108357 (rulesProduceIndividualToken!635 thiss!11199 rules!1093 (apply!2217 tokens!410 0))))

(declare-fun lt!376241 () Unit!16476)

(declare-fun Unit!16478 () Unit!16476)

(assert (=> b!1108357 (= lt!376241 Unit!16478)))

(assert (=> b!1108357 (rulesProduceIndividualToken!635 thiss!11199 rules!1093 (apply!2217 tokens!410 (+ 0 1)))))

(declare-fun lt!376239 () Unit!16476)

(declare-fun Unit!16479 () Unit!16476)

(assert (=> b!1108357 (= lt!376239 Unit!16479)))

(declare-fun size!8443 (BalanceConc!6910) Int)

(declare-fun charsOf!1024 (Token!3416) BalanceConc!6910)

(assert (=> b!1108357 (> (size!8443 (charsOf!1024 (apply!2217 tokens!410 (+ 0 1)))) 0)))

(declare-fun lt!376235 () Unit!16476)

(declare-fun Unit!16480 () Unit!16476)

(assert (=> b!1108357 (= lt!376235 Unit!16480)))

(declare-fun lt!376248 () tuple3!1110)

(declare-fun separableTokensPredicateMem!1 (LexerInterface!1588 Token!3416 Token!3416 List!10917 CacheUp!724 CacheDown!728) tuple3!1110)

(assert (=> b!1108357 (= lt!376248 (separableTokensPredicateMem!1 thiss!11199 (apply!2217 tokens!410 0) (apply!2217 tokens!410 (+ 0 1)) rules!1093 cacheUp!412 cacheDown!425))))

(declare-fun c!188025 () Bool)

(assert (=> b!1108357 (= c!188025 (_1!6800 lt!376248))))

(declare-fun b!1108358 () Bool)

(assert (=> b!1108358 (= e!702917 (tuple3!1111 false (_2!6800 lt!376248) (_3!846 lt!376248)))))

(declare-fun b!1108359 () Bool)

(assert (=> b!1108359 (= e!702915 (tuple3!1111 true cacheUp!412 cacheDown!425))))

(declare-fun lt!376227 () tuple3!1110)

(declare-fun d!313601 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!17 (LexerInterface!1588 BalanceConc!6912 Int List!10917) Bool)

(assert (=> d!313601 (= (_1!6800 lt!376227) (tokensListTwoByTwoPredicateSeparable!17 thiss!11199 tokens!410 0 rules!1093))))

(assert (=> d!313601 (= lt!376227 e!702915)))

(declare-fun c!188026 () Bool)

(declare-fun size!8444 (BalanceConc!6912) Int)

(assert (=> d!313601 (= c!188026 (< 0 (- (size!8444 tokens!410) 1)))))

(declare-fun e!702916 () Bool)

(assert (=> d!313601 e!702916))

(declare-fun res!490696 () Bool)

(assert (=> d!313601 (=> (not res!490696) (not e!702916))))

(assert (=> d!313601 (= res!490696 (>= 0 0))))

(assert (=> d!313601 (= (tokensListTwoByTwoPredicateSeparableMem!7 thiss!11199 tokens!410 0 rules!1093 cacheUp!412 cacheDown!425) lt!376227)))

(declare-fun b!1108360 () Bool)

(declare-fun lt!376238 () tuple3!1110)

(assert (=> b!1108360 (= lt!376238 (tokensListTwoByTwoPredicateSeparableMem!7 thiss!11199 tokens!410 (+ 0 1) rules!1093 (_2!6800 lt!376248) (_3!846 lt!376248)))))

(assert (=> b!1108360 (= e!702917 (tuple3!1111 (_1!6800 lt!376238) (_2!6800 lt!376238) (_3!846 lt!376238)))))

(declare-fun b!1108361 () Bool)

(assert (=> b!1108361 (= e!702916 (<= 0 (size!8444 tokens!410)))))

(assert (= (and d!313601 res!490696) b!1108361))

(assert (= (and d!313601 c!188026) b!1108357))

(assert (= (and d!313601 (not c!188026)) b!1108359))

(assert (= (and b!1108357 c!188025) b!1108360))

(assert (= (and b!1108357 (not c!188025)) b!1108358))

(declare-fun m!1265197 () Bool)

(assert (=> b!1108357 m!1265197))

(declare-fun m!1265199 () Bool)

(assert (=> b!1108357 m!1265199))

(declare-fun m!1265201 () Bool)

(assert (=> b!1108357 m!1265201))

(declare-fun m!1265203 () Bool)

(assert (=> b!1108357 m!1265203))

(declare-fun m!1265205 () Bool)

(assert (=> b!1108357 m!1265205))

(declare-fun m!1265207 () Bool)

(assert (=> b!1108357 m!1265207))

(declare-fun m!1265209 () Bool)

(assert (=> b!1108357 m!1265209))

(declare-fun m!1265211 () Bool)

(assert (=> b!1108357 m!1265211))

(declare-fun m!1265213 () Bool)

(assert (=> b!1108357 m!1265213))

(declare-fun m!1265215 () Bool)

(assert (=> b!1108357 m!1265215))

(declare-fun m!1265217 () Bool)

(assert (=> b!1108357 m!1265217))

(declare-fun m!1265219 () Bool)

(assert (=> b!1108357 m!1265219))

(declare-fun m!1265221 () Bool)

(assert (=> b!1108357 m!1265221))

(declare-fun m!1265223 () Bool)

(assert (=> b!1108357 m!1265223))

(assert (=> b!1108357 m!1265221))

(declare-fun m!1265225 () Bool)

(assert (=> b!1108357 m!1265225))

(declare-fun m!1265227 () Bool)

(assert (=> b!1108357 m!1265227))

(declare-fun m!1265229 () Bool)

(assert (=> b!1108357 m!1265229))

(assert (=> b!1108357 m!1265185))

(assert (=> b!1108357 m!1265219))

(declare-fun m!1265231 () Bool)

(assert (=> b!1108357 m!1265231))

(assert (=> b!1108357 m!1265221))

(assert (=> b!1108357 m!1265221))

(declare-fun m!1265233 () Bool)

(assert (=> b!1108357 m!1265233))

(declare-fun m!1265235 () Bool)

(assert (=> b!1108357 m!1265235))

(declare-fun m!1265237 () Bool)

(assert (=> b!1108357 m!1265237))

(declare-fun m!1265239 () Bool)

(assert (=> b!1108357 m!1265239))

(declare-fun m!1265241 () Bool)

(assert (=> b!1108357 m!1265241))

(assert (=> b!1108357 m!1265213))

(declare-fun m!1265243 () Bool)

(assert (=> b!1108357 m!1265243))

(assert (=> b!1108357 m!1265225))

(declare-fun m!1265245 () Bool)

(assert (=> b!1108357 m!1265245))

(assert (=> b!1108357 m!1265235))

(assert (=> b!1108357 m!1265217))

(declare-fun m!1265247 () Bool)

(assert (=> b!1108357 m!1265247))

(assert (=> b!1108357 m!1265239))

(declare-fun m!1265249 () Bool)

(assert (=> b!1108357 m!1265249))

(assert (=> b!1108357 m!1265219))

(declare-fun m!1265251 () Bool)

(assert (=> d!313601 m!1265251))

(declare-fun m!1265253 () Bool)

(assert (=> d!313601 m!1265253))

(declare-fun m!1265255 () Bool)

(assert (=> b!1108360 m!1265255))

(assert (=> b!1108361 m!1265253))

(assert (=> b!1108298 d!313601))

(declare-fun d!313603 () Bool)

(assert (=> d!313603 (= (separableTokens!57 thiss!11199 tokens!410 rules!1093) (tokensListTwoByTwoPredicateSeparable!17 thiss!11199 tokens!410 0 rules!1093))))

(declare-fun bs!260100 () Bool)

(assert (= bs!260100 d!313603))

(assert (=> bs!260100 m!1265251))

(assert (=> b!1108298 d!313603))

(declare-fun d!313605 () Bool)

(assert (=> d!313605 (= (isEmpty!6746 rules!1093) ((_ is Nil!10893) rules!1093))))

(assert (=> b!1108297 d!313605))

(declare-fun d!313607 () Bool)

(declare-fun res!490699 () Bool)

(declare-fun e!702920 () Bool)

(assert (=> d!313607 (=> (not res!490699) (not e!702920))))

(declare-fun rulesValid!642 (LexerInterface!1588 List!10917) Bool)

(assert (=> d!313607 (= res!490699 (rulesValid!642 thiss!11199 rules!1093))))

(assert (=> d!313607 (= (rulesInvariant!1462 thiss!11199 rules!1093) e!702920)))

(declare-fun b!1108364 () Bool)

(declare-datatypes ((List!10918 0))(
  ( (Nil!10894) (Cons!10894 (h!16295 String!13303) (t!105510 List!10918)) )
))
(declare-fun noDuplicateTag!642 (LexerInterface!1588 List!10917 List!10918) Bool)

(assert (=> b!1108364 (= e!702920 (noDuplicateTag!642 thiss!11199 rules!1093 Nil!10894))))

(assert (= (and d!313607 res!490699) b!1108364))

(declare-fun m!1265257 () Bool)

(assert (=> d!313607 m!1265257))

(declare-fun m!1265259 () Bool)

(assert (=> b!1108364 m!1265259))

(assert (=> b!1108310 d!313607))

(declare-fun d!313609 () Bool)

(assert (=> d!313609 (= (array_inv!1460 (_keys!1577 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))))) (bvsge (size!8440 (_keys!1577 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))))) #b00000000000000000000000000000000))))

(assert (=> b!1108292 d!313609))

(declare-fun d!313611 () Bool)

(assert (=> d!313611 (= (array_inv!1461 (_values!1562 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))))) (bvsge (size!8441 (_values!1562 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412))))))) #b00000000000000000000000000000000))))

(assert (=> b!1108292 d!313611))

(declare-fun d!313613 () Bool)

(assert (=> d!313613 (= (array_inv!1460 (_keys!1578 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))))) (bvsge (size!8440 (_keys!1578 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))))) #b00000000000000000000000000000000))))

(assert (=> b!1108301 d!313613))

(declare-fun d!313615 () Bool)

(assert (=> d!313615 (= (array_inv!1462 (_values!1563 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))))) (bvsge (size!8442 (_values!1563 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425))))))) #b00000000000000000000000000000000))))

(assert (=> b!1108301 d!313615))

(declare-fun b!1108380 () Bool)

(declare-fun e!702936 () Bool)

(declare-fun tp!329167 () Bool)

(assert (=> b!1108380 (= e!702936 tp!329167)))

(declare-fun mapIsEmpty!6192 () Bool)

(declare-fun mapRes!6192 () Bool)

(assert (=> mapIsEmpty!6192 mapRes!6192))

(declare-fun setIsEmpty!7815 () Bool)

(declare-fun setRes!7816 () Bool)

(assert (=> setIsEmpty!7815 setRes!7816))

(declare-fun e!702933 () Bool)

(declare-fun setElem!7815 () Context!1054)

(declare-fun tp!329169 () Bool)

(declare-fun setNonEmpty!7815 () Bool)

(declare-fun inv!13982 (Context!1054) Bool)

(assert (=> setNonEmpty!7815 (= setRes!7816 (and tp!329169 (inv!13982 setElem!7815) e!702933))))

(declare-fun mapDefault!6192 () List!10916)

(declare-fun setRest!7816 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7815 (= (_2!6799 (h!16293 mapDefault!6192)) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7815 true) setRest!7816))))

(declare-fun mapNonEmpty!6192 () Bool)

(declare-fun tp!329165 () Bool)

(declare-fun e!702934 () Bool)

(assert (=> mapNonEmpty!6192 (= mapRes!6192 (and tp!329165 e!702934))))

(declare-fun mapKey!6192 () (_ BitVec 32))

(declare-fun mapRest!6192 () (Array (_ BitVec 32) List!10916))

(declare-fun mapValue!6192 () List!10916)

(assert (=> mapNonEmpty!6192 (= mapRest!6189 (store mapRest!6192 mapKey!6192 mapValue!6192))))

(declare-fun tp!329161 () Bool)

(declare-fun tp_is_empty!5723 () Bool)

(declare-fun setRes!7815 () Bool)

(declare-fun b!1108381 () Bool)

(declare-fun tp!329164 () Bool)

(assert (=> b!1108381 (= e!702934 (and tp!329161 (inv!13982 (_2!6798 (_1!6799 (h!16293 mapValue!6192)))) e!702936 tp_is_empty!5723 setRes!7815 tp!329164))))

(declare-fun condSetEmpty!7816 () Bool)

(assert (=> b!1108381 (= condSetEmpty!7816 (= (_2!6799 (h!16293 mapValue!6192)) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun b!1108382 () Bool)

(declare-fun e!702937 () Bool)

(declare-fun tp!329171 () Bool)

(assert (=> b!1108382 (= e!702937 tp!329171)))

(declare-fun b!1108383 () Bool)

(declare-fun e!702938 () Bool)

(declare-fun tp!329170 () Bool)

(declare-fun tp!329162 () Bool)

(assert (=> b!1108383 (= e!702938 (and tp!329162 (inv!13982 (_2!6798 (_1!6799 (h!16293 mapDefault!6192)))) e!702937 tp_is_empty!5723 setRes!7816 tp!329170))))

(declare-fun condSetEmpty!7815 () Bool)

(assert (=> b!1108383 (= condSetEmpty!7815 (= (_2!6799 (h!16293 mapDefault!6192)) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun setIsEmpty!7816 () Bool)

(assert (=> setIsEmpty!7816 setRes!7815))

(declare-fun b!1108379 () Bool)

(declare-fun e!702935 () Bool)

(declare-fun tp!329166 () Bool)

(assert (=> b!1108379 (= e!702935 tp!329166)))

(declare-fun condMapEmpty!6192 () Bool)

(assert (=> mapNonEmpty!6188 (= condMapEmpty!6192 (= mapRest!6189 ((as const (Array (_ BitVec 32) List!10916)) mapDefault!6192)))))

(assert (=> mapNonEmpty!6188 (= tp!329120 (and e!702938 mapRes!6192))))

(declare-fun setNonEmpty!7816 () Bool)

(declare-fun tp!329168 () Bool)

(declare-fun setElem!7816 () Context!1054)

(assert (=> setNonEmpty!7816 (= setRes!7815 (and tp!329168 (inv!13982 setElem!7816) e!702935))))

(declare-fun setRest!7815 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7816 (= (_2!6799 (h!16293 mapValue!6192)) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7816 true) setRest!7815))))

(declare-fun b!1108384 () Bool)

(declare-fun tp!329163 () Bool)

(assert (=> b!1108384 (= e!702933 tp!329163)))

(assert (= (and mapNonEmpty!6188 condMapEmpty!6192) mapIsEmpty!6192))

(assert (= (and mapNonEmpty!6188 (not condMapEmpty!6192)) mapNonEmpty!6192))

(assert (= b!1108381 b!1108380))

(assert (= (and b!1108381 condSetEmpty!7816) setIsEmpty!7816))

(assert (= (and b!1108381 (not condSetEmpty!7816)) setNonEmpty!7816))

(assert (= setNonEmpty!7816 b!1108379))

(assert (= (and mapNonEmpty!6192 ((_ is Cons!10892) mapValue!6192)) b!1108381))

(assert (= b!1108383 b!1108382))

(assert (= (and b!1108383 condSetEmpty!7815) setIsEmpty!7815))

(assert (= (and b!1108383 (not condSetEmpty!7815)) setNonEmpty!7815))

(assert (= setNonEmpty!7815 b!1108384))

(assert (= (and mapNonEmpty!6188 ((_ is Cons!10892) mapDefault!6192)) b!1108383))

(declare-fun m!1265261 () Bool)

(assert (=> setNonEmpty!7816 m!1265261))

(declare-fun m!1265263 () Bool)

(assert (=> b!1108383 m!1265263))

(declare-fun m!1265265 () Bool)

(assert (=> mapNonEmpty!6192 m!1265265))

(declare-fun m!1265267 () Bool)

(assert (=> setNonEmpty!7815 m!1265267))

(declare-fun m!1265269 () Bool)

(assert (=> b!1108381 m!1265269))

(declare-fun e!702945 () Bool)

(assert (=> mapNonEmpty!6188 (= tp!329121 e!702945)))

(declare-fun e!702946 () Bool)

(declare-fun tp!329183 () Bool)

(declare-fun setElem!7819 () Context!1054)

(declare-fun setNonEmpty!7819 () Bool)

(declare-fun setRes!7819 () Bool)

(assert (=> setNonEmpty!7819 (= setRes!7819 (and tp!329183 (inv!13982 setElem!7819) e!702946))))

(declare-fun setRest!7819 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7819 (= (_2!6799 (h!16293 mapValue!6189)) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7819 true) setRest!7819))))

(declare-fun b!1108393 () Bool)

(declare-fun e!702947 () Bool)

(declare-fun tp!329185 () Bool)

(assert (=> b!1108393 (= e!702947 tp!329185)))

(declare-fun b!1108394 () Bool)

(declare-fun tp!329186 () Bool)

(assert (=> b!1108394 (= e!702946 tp!329186)))

(declare-fun b!1108395 () Bool)

(declare-fun tp!329182 () Bool)

(declare-fun tp!329184 () Bool)

(assert (=> b!1108395 (= e!702945 (and tp!329182 (inv!13982 (_2!6798 (_1!6799 (h!16293 mapValue!6189)))) e!702947 tp_is_empty!5723 setRes!7819 tp!329184))))

(declare-fun condSetEmpty!7819 () Bool)

(assert (=> b!1108395 (= condSetEmpty!7819 (= (_2!6799 (h!16293 mapValue!6189)) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun setIsEmpty!7819 () Bool)

(assert (=> setIsEmpty!7819 setRes!7819))

(assert (= b!1108395 b!1108393))

(assert (= (and b!1108395 condSetEmpty!7819) setIsEmpty!7819))

(assert (= (and b!1108395 (not condSetEmpty!7819)) setNonEmpty!7819))

(assert (= setNonEmpty!7819 b!1108394))

(assert (= (and mapNonEmpty!6188 ((_ is Cons!10892) mapValue!6189)) b!1108395))

(declare-fun m!1265271 () Bool)

(assert (=> setNonEmpty!7819 m!1265271))

(declare-fun m!1265273 () Bool)

(assert (=> b!1108395 m!1265273))

(declare-fun b!1108404 () Bool)

(declare-fun e!702954 () Bool)

(declare-fun tp!329195 () Bool)

(assert (=> b!1108404 (= e!702954 tp!329195)))

(declare-fun setRes!7822 () Bool)

(declare-fun b!1108405 () Bool)

(declare-fun e!702955 () Bool)

(declare-fun tp!329197 () Bool)

(assert (=> b!1108405 (= e!702955 (and (inv!13982 (_1!6796 (_1!6797 (h!16292 mapDefault!6189)))) e!702954 tp_is_empty!5723 setRes!7822 tp!329197))))

(declare-fun condSetEmpty!7822 () Bool)

(assert (=> b!1108405 (= condSetEmpty!7822 (= (_2!6797 (h!16292 mapDefault!6189)) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun b!1108406 () Bool)

(declare-fun e!702956 () Bool)

(declare-fun tp!329198 () Bool)

(assert (=> b!1108406 (= e!702956 tp!329198)))

(assert (=> b!1108299 (= tp!329134 e!702955)))

(declare-fun setIsEmpty!7822 () Bool)

(assert (=> setIsEmpty!7822 setRes!7822))

(declare-fun tp!329196 () Bool)

(declare-fun setNonEmpty!7822 () Bool)

(declare-fun setElem!7822 () Context!1054)

(assert (=> setNonEmpty!7822 (= setRes!7822 (and tp!329196 (inv!13982 setElem!7822) e!702956))))

(declare-fun setRest!7822 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7822 (= (_2!6797 (h!16292 mapDefault!6189)) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7822 true) setRest!7822))))

(assert (= b!1108405 b!1108404))

(assert (= (and b!1108405 condSetEmpty!7822) setIsEmpty!7822))

(assert (= (and b!1108405 (not condSetEmpty!7822)) setNonEmpty!7822))

(assert (= setNonEmpty!7822 b!1108406))

(assert (= (and b!1108299 ((_ is Cons!10891) mapDefault!6189)) b!1108405))

(declare-fun m!1265275 () Bool)

(assert (=> b!1108405 m!1265275))

(declare-fun m!1265277 () Bool)

(assert (=> setNonEmpty!7822 m!1265277))

(declare-fun tp!329205 () Bool)

(declare-fun e!702961 () Bool)

(declare-fun b!1108415 () Bool)

(declare-fun tp!329206 () Bool)

(assert (=> b!1108415 (= e!702961 (and (inv!13975 (left!9431 (c!188017 tokens!410))) tp!329206 (inv!13975 (right!9761 (c!188017 tokens!410))) tp!329205))))

(declare-fun b!1108417 () Bool)

(declare-fun e!702962 () Bool)

(declare-fun tp!329207 () Bool)

(assert (=> b!1108417 (= e!702962 tp!329207)))

(declare-fun b!1108416 () Bool)

(declare-fun inv!13983 (IArray!6895) Bool)

(assert (=> b!1108416 (= e!702961 (and (inv!13983 (xs!6138 (c!188017 tokens!410))) e!702962))))

(assert (=> b!1108291 (= tp!329128 (and (inv!13975 (c!188017 tokens!410)) e!702961))))

(assert (= (and b!1108291 ((_ is Node!3445) (c!188017 tokens!410))) b!1108415))

(assert (= b!1108416 b!1108417))

(assert (= (and b!1108291 ((_ is Leaf!5394) (c!188017 tokens!410))) b!1108416))

(declare-fun m!1265279 () Bool)

(assert (=> b!1108415 m!1265279))

(declare-fun m!1265281 () Bool)

(assert (=> b!1108415 m!1265281))

(declare-fun m!1265283 () Bool)

(assert (=> b!1108416 m!1265283))

(assert (=> b!1108291 m!1265141))

(declare-fun b!1108430 () Bool)

(declare-fun e!702965 () Bool)

(declare-fun tp!329218 () Bool)

(assert (=> b!1108430 (= e!702965 tp!329218)))

(declare-fun b!1108428 () Bool)

(assert (=> b!1108428 (= e!702965 tp_is_empty!5723)))

(declare-fun b!1108429 () Bool)

(declare-fun tp!329221 () Bool)

(declare-fun tp!329222 () Bool)

(assert (=> b!1108429 (= e!702965 (and tp!329221 tp!329222))))

(declare-fun b!1108431 () Bool)

(declare-fun tp!329220 () Bool)

(declare-fun tp!329219 () Bool)

(assert (=> b!1108431 (= e!702965 (and tp!329220 tp!329219))))

(assert (=> b!1108307 (= tp!329132 e!702965)))

(assert (= (and b!1108307 ((_ is ElementMatch!3147) (regex!1877 (h!16294 rules!1093)))) b!1108428))

(assert (= (and b!1108307 ((_ is Concat!5091) (regex!1877 (h!16294 rules!1093)))) b!1108429))

(assert (= (and b!1108307 ((_ is Star!3147) (regex!1877 (h!16294 rules!1093)))) b!1108430))

(assert (= (and b!1108307 ((_ is Union!3147) (regex!1877 (h!16294 rules!1093)))) b!1108431))

(declare-fun e!702966 () Bool)

(assert (=> b!1108308 (= tp!329129 e!702966)))

(declare-fun e!702967 () Bool)

(declare-fun setNonEmpty!7823 () Bool)

(declare-fun setRes!7823 () Bool)

(declare-fun tp!329224 () Bool)

(declare-fun setElem!7823 () Context!1054)

(assert (=> setNonEmpty!7823 (= setRes!7823 (and tp!329224 (inv!13982 setElem!7823) e!702967))))

(declare-fun setRest!7823 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7823 (= (_2!6799 (h!16293 mapDefault!6188)) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7823 true) setRest!7823))))

(declare-fun b!1108432 () Bool)

(declare-fun e!702968 () Bool)

(declare-fun tp!329226 () Bool)

(assert (=> b!1108432 (= e!702968 tp!329226)))

(declare-fun b!1108433 () Bool)

(declare-fun tp!329227 () Bool)

(assert (=> b!1108433 (= e!702967 tp!329227)))

(declare-fun tp!329225 () Bool)

(declare-fun b!1108434 () Bool)

(declare-fun tp!329223 () Bool)

(assert (=> b!1108434 (= e!702966 (and tp!329223 (inv!13982 (_2!6798 (_1!6799 (h!16293 mapDefault!6188)))) e!702968 tp_is_empty!5723 setRes!7823 tp!329225))))

(declare-fun condSetEmpty!7823 () Bool)

(assert (=> b!1108434 (= condSetEmpty!7823 (= (_2!6799 (h!16293 mapDefault!6188)) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun setIsEmpty!7823 () Bool)

(assert (=> setIsEmpty!7823 setRes!7823))

(assert (= b!1108434 b!1108432))

(assert (= (and b!1108434 condSetEmpty!7823) setIsEmpty!7823))

(assert (= (and b!1108434 (not condSetEmpty!7823)) setNonEmpty!7823))

(assert (= setNonEmpty!7823 b!1108433))

(assert (= (and b!1108308 ((_ is Cons!10892) mapDefault!6188)) b!1108434))

(declare-fun m!1265285 () Bool)

(assert (=> setNonEmpty!7823 m!1265285))

(declare-fun m!1265287 () Bool)

(assert (=> b!1108434 m!1265287))

(declare-fun b!1108449 () Bool)

(declare-fun e!702982 () Bool)

(declare-fun tp!329251 () Bool)

(assert (=> b!1108449 (= e!702982 tp!329251)))

(declare-fun b!1108450 () Bool)

(declare-fun setRes!7829 () Bool)

(declare-fun e!702985 () Bool)

(declare-fun tp!329254 () Bool)

(declare-fun e!702983 () Bool)

(declare-fun mapValue!6195 () List!10915)

(assert (=> b!1108450 (= e!702983 (and (inv!13982 (_1!6796 (_1!6797 (h!16292 mapValue!6195)))) e!702985 tp_is_empty!5723 setRes!7829 tp!329254))))

(declare-fun condSetEmpty!7829 () Bool)

(assert (=> b!1108450 (= condSetEmpty!7829 (= (_2!6797 (h!16292 mapValue!6195)) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun mapNonEmpty!6195 () Bool)

(declare-fun mapRes!6195 () Bool)

(declare-fun tp!329252 () Bool)

(assert (=> mapNonEmpty!6195 (= mapRes!6195 (and tp!329252 e!702983))))

(declare-fun mapRest!6195 () (Array (_ BitVec 32) List!10915))

(declare-fun mapKey!6195 () (_ BitVec 32))

(assert (=> mapNonEmpty!6195 (= mapRest!6188 (store mapRest!6195 mapKey!6195 mapValue!6195))))

(declare-fun condMapEmpty!6195 () Bool)

(declare-fun mapDefault!6195 () List!10915)

(assert (=> mapNonEmpty!6189 (= condMapEmpty!6195 (= mapRest!6188 ((as const (Array (_ BitVec 32) List!10915)) mapDefault!6195)))))

(declare-fun e!702984 () Bool)

(assert (=> mapNonEmpty!6189 (= tp!329123 (and e!702984 mapRes!6195))))

(declare-fun b!1108451 () Bool)

(declare-fun e!702986 () Bool)

(declare-fun tp!329253 () Bool)

(assert (=> b!1108451 (= e!702986 tp!329253)))

(declare-fun setRes!7828 () Bool)

(declare-fun b!1108452 () Bool)

(declare-fun e!702981 () Bool)

(declare-fun tp!329246 () Bool)

(assert (=> b!1108452 (= e!702984 (and (inv!13982 (_1!6796 (_1!6797 (h!16292 mapDefault!6195)))) e!702981 tp_is_empty!5723 setRes!7828 tp!329246))))

(declare-fun condSetEmpty!7828 () Bool)

(assert (=> b!1108452 (= condSetEmpty!7828 (= (_2!6797 (h!16292 mapDefault!6195)) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun setIsEmpty!7828 () Bool)

(assert (=> setIsEmpty!7828 setRes!7828))

(declare-fun b!1108453 () Bool)

(declare-fun tp!329247 () Bool)

(assert (=> b!1108453 (= e!702981 tp!329247)))

(declare-fun mapIsEmpty!6195 () Bool)

(assert (=> mapIsEmpty!6195 mapRes!6195))

(declare-fun b!1108454 () Bool)

(declare-fun tp!329248 () Bool)

(assert (=> b!1108454 (= e!702985 tp!329248)))

(declare-fun setIsEmpty!7829 () Bool)

(assert (=> setIsEmpty!7829 setRes!7829))

(declare-fun setElem!7829 () Context!1054)

(declare-fun setNonEmpty!7828 () Bool)

(declare-fun tp!329250 () Bool)

(assert (=> setNonEmpty!7828 (= setRes!7829 (and tp!329250 (inv!13982 setElem!7829) e!702982))))

(declare-fun setRest!7829 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7828 (= (_2!6797 (h!16292 mapValue!6195)) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7829 true) setRest!7829))))

(declare-fun tp!329249 () Bool)

(declare-fun setNonEmpty!7829 () Bool)

(declare-fun setElem!7828 () Context!1054)

(assert (=> setNonEmpty!7829 (= setRes!7828 (and tp!329249 (inv!13982 setElem!7828) e!702986))))

(declare-fun setRest!7828 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7829 (= (_2!6797 (h!16292 mapDefault!6195)) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7828 true) setRest!7828))))

(assert (= (and mapNonEmpty!6189 condMapEmpty!6195) mapIsEmpty!6195))

(assert (= (and mapNonEmpty!6189 (not condMapEmpty!6195)) mapNonEmpty!6195))

(assert (= b!1108450 b!1108454))

(assert (= (and b!1108450 condSetEmpty!7829) setIsEmpty!7829))

(assert (= (and b!1108450 (not condSetEmpty!7829)) setNonEmpty!7828))

(assert (= setNonEmpty!7828 b!1108449))

(assert (= (and mapNonEmpty!6195 ((_ is Cons!10891) mapValue!6195)) b!1108450))

(assert (= b!1108452 b!1108453))

(assert (= (and b!1108452 condSetEmpty!7828) setIsEmpty!7828))

(assert (= (and b!1108452 (not condSetEmpty!7828)) setNonEmpty!7829))

(assert (= setNonEmpty!7829 b!1108451))

(assert (= (and mapNonEmpty!6189 ((_ is Cons!10891) mapDefault!6195)) b!1108452))

(declare-fun m!1265289 () Bool)

(assert (=> b!1108452 m!1265289))

(declare-fun m!1265291 () Bool)

(assert (=> mapNonEmpty!6195 m!1265291))

(declare-fun m!1265293 () Bool)

(assert (=> setNonEmpty!7828 m!1265293))

(declare-fun m!1265295 () Bool)

(assert (=> b!1108450 m!1265295))

(declare-fun m!1265297 () Bool)

(assert (=> setNonEmpty!7829 m!1265297))

(declare-fun b!1108455 () Bool)

(declare-fun e!702987 () Bool)

(declare-fun tp!329255 () Bool)

(assert (=> b!1108455 (= e!702987 tp!329255)))

(declare-fun setRes!7830 () Bool)

(declare-fun e!702988 () Bool)

(declare-fun b!1108456 () Bool)

(declare-fun tp!329257 () Bool)

(assert (=> b!1108456 (= e!702988 (and (inv!13982 (_1!6796 (_1!6797 (h!16292 mapValue!6188)))) e!702987 tp_is_empty!5723 setRes!7830 tp!329257))))

(declare-fun condSetEmpty!7830 () Bool)

(assert (=> b!1108456 (= condSetEmpty!7830 (= (_2!6797 (h!16292 mapValue!6188)) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun b!1108457 () Bool)

(declare-fun e!702989 () Bool)

(declare-fun tp!329258 () Bool)

(assert (=> b!1108457 (= e!702989 tp!329258)))

(assert (=> mapNonEmpty!6189 (= tp!329125 e!702988)))

(declare-fun setIsEmpty!7830 () Bool)

(assert (=> setIsEmpty!7830 setRes!7830))

(declare-fun setElem!7830 () Context!1054)

(declare-fun tp!329256 () Bool)

(declare-fun setNonEmpty!7830 () Bool)

(assert (=> setNonEmpty!7830 (= setRes!7830 (and tp!329256 (inv!13982 setElem!7830) e!702989))))

(declare-fun setRest!7830 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7830 (= (_2!6797 (h!16292 mapValue!6188)) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7830 true) setRest!7830))))

(assert (= b!1108456 b!1108455))

(assert (= (and b!1108456 condSetEmpty!7830) setIsEmpty!7830))

(assert (= (and b!1108456 (not condSetEmpty!7830)) setNonEmpty!7830))

(assert (= setNonEmpty!7830 b!1108457))

(assert (= (and mapNonEmpty!6189 ((_ is Cons!10891) mapValue!6188)) b!1108456))

(declare-fun m!1265299 () Bool)

(assert (=> b!1108456 m!1265299))

(declare-fun m!1265301 () Bool)

(assert (=> setNonEmpty!7830 m!1265301))

(declare-fun b!1108468 () Bool)

(declare-fun b_free!26973 () Bool)

(declare-fun b_next!27037 () Bool)

(assert (=> b!1108468 (= b_free!26973 (not b_next!27037))))

(declare-fun tp!329268 () Bool)

(declare-fun b_and!79293 () Bool)

(assert (=> b!1108468 (= tp!329268 b_and!79293)))

(declare-fun b_free!26975 () Bool)

(declare-fun b_next!27039 () Bool)

(assert (=> b!1108468 (= b_free!26975 (not b_next!27039))))

(declare-fun tp!329270 () Bool)

(declare-fun b_and!79295 () Bool)

(assert (=> b!1108468 (= tp!329270 b_and!79295)))

(declare-fun e!703000 () Bool)

(assert (=> b!1108468 (= e!703000 (and tp!329268 tp!329270))))

(declare-fun b!1108467 () Bool)

(declare-fun tp!329269 () Bool)

(declare-fun e!703001 () Bool)

(assert (=> b!1108467 (= e!703001 (and tp!329269 (inv!13969 (tag!2139 (h!16294 (t!105505 rules!1093)))) (inv!13979 (transformation!1877 (h!16294 (t!105505 rules!1093)))) e!703000))))

(declare-fun b!1108466 () Bool)

(declare-fun e!702998 () Bool)

(declare-fun tp!329267 () Bool)

(assert (=> b!1108466 (= e!702998 (and e!703001 tp!329267))))

(assert (=> b!1108300 (= tp!329126 e!702998)))

(assert (= b!1108467 b!1108468))

(assert (= b!1108466 b!1108467))

(assert (= (and b!1108300 ((_ is Cons!10893) (t!105505 rules!1093))) b!1108466))

(declare-fun m!1265303 () Bool)

(assert (=> b!1108467 m!1265303))

(declare-fun m!1265305 () Bool)

(assert (=> b!1108467 m!1265305))

(declare-fun b!1108469 () Bool)

(declare-fun e!703002 () Bool)

(declare-fun tp!329271 () Bool)

(assert (=> b!1108469 (= e!703002 tp!329271)))

(declare-fun b!1108470 () Bool)

(declare-fun e!703003 () Bool)

(declare-fun tp!329273 () Bool)

(declare-fun setRes!7831 () Bool)

(assert (=> b!1108470 (= e!703003 (and (inv!13982 (_1!6796 (_1!6797 (h!16292 (zeroValue!1540 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412)))))))))) e!703002 tp_is_empty!5723 setRes!7831 tp!329273))))

(declare-fun condSetEmpty!7831 () Bool)

(assert (=> b!1108470 (= condSetEmpty!7831 (= (_2!6797 (h!16292 (zeroValue!1540 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412)))))))) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun b!1108471 () Bool)

(declare-fun e!703004 () Bool)

(declare-fun tp!329274 () Bool)

(assert (=> b!1108471 (= e!703004 tp!329274)))

(assert (=> b!1108292 (= tp!329133 e!703003)))

(declare-fun setIsEmpty!7831 () Bool)

(assert (=> setIsEmpty!7831 setRes!7831))

(declare-fun setNonEmpty!7831 () Bool)

(declare-fun tp!329272 () Bool)

(declare-fun setElem!7831 () Context!1054)

(assert (=> setNonEmpty!7831 (= setRes!7831 (and tp!329272 (inv!13982 setElem!7831) e!703004))))

(declare-fun setRest!7831 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7831 (= (_2!6797 (h!16292 (zeroValue!1540 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412)))))))) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7831 true) setRest!7831))))

(assert (= b!1108470 b!1108469))

(assert (= (and b!1108470 condSetEmpty!7831) setIsEmpty!7831))

(assert (= (and b!1108470 (not condSetEmpty!7831)) setNonEmpty!7831))

(assert (= setNonEmpty!7831 b!1108471))

(assert (= (and b!1108292 ((_ is Cons!10891) (zeroValue!1540 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412)))))))) b!1108470))

(declare-fun m!1265307 () Bool)

(assert (=> b!1108470 m!1265307))

(declare-fun m!1265309 () Bool)

(assert (=> setNonEmpty!7831 m!1265309))

(declare-fun b!1108472 () Bool)

(declare-fun e!703005 () Bool)

(declare-fun tp!329275 () Bool)

(assert (=> b!1108472 (= e!703005 tp!329275)))

(declare-fun setRes!7832 () Bool)

(declare-fun tp!329277 () Bool)

(declare-fun b!1108473 () Bool)

(declare-fun e!703006 () Bool)

(assert (=> b!1108473 (= e!703006 (and (inv!13982 (_1!6796 (_1!6797 (h!16292 (minValue!1540 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412)))))))))) e!703005 tp_is_empty!5723 setRes!7832 tp!329277))))

(declare-fun condSetEmpty!7832 () Bool)

(assert (=> b!1108473 (= condSetEmpty!7832 (= (_2!6797 (h!16292 (minValue!1540 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412)))))))) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun b!1108474 () Bool)

(declare-fun e!703007 () Bool)

(declare-fun tp!329278 () Bool)

(assert (=> b!1108474 (= e!703007 tp!329278)))

(assert (=> b!1108292 (= tp!329137 e!703006)))

(declare-fun setIsEmpty!7832 () Bool)

(assert (=> setIsEmpty!7832 setRes!7832))

(declare-fun setElem!7832 () Context!1054)

(declare-fun tp!329276 () Bool)

(declare-fun setNonEmpty!7832 () Bool)

(assert (=> setNonEmpty!7832 (= setRes!7832 (and tp!329276 (inv!13982 setElem!7832) e!703007))))

(declare-fun setRest!7832 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7832 (= (_2!6797 (h!16292 (minValue!1540 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412)))))))) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7832 true) setRest!7832))))

(assert (= b!1108473 b!1108472))

(assert (= (and b!1108473 condSetEmpty!7832) setIsEmpty!7832))

(assert (= (and b!1108473 (not condSetEmpty!7832)) setNonEmpty!7832))

(assert (= setNonEmpty!7832 b!1108474))

(assert (= (and b!1108292 ((_ is Cons!10891) (minValue!1540 (v!20059 (underlying!2759 (v!20060 (underlying!2760 (cache!1636 cacheUp!412)))))))) b!1108473))

(declare-fun m!1265311 () Bool)

(assert (=> b!1108473 m!1265311))

(declare-fun m!1265313 () Bool)

(assert (=> setNonEmpty!7832 m!1265313))

(declare-fun e!703008 () Bool)

(assert (=> b!1108301 (= tp!329122 e!703008)))

(declare-fun setNonEmpty!7833 () Bool)

(declare-fun setElem!7833 () Context!1054)

(declare-fun tp!329280 () Bool)

(declare-fun e!703009 () Bool)

(declare-fun setRes!7833 () Bool)

(assert (=> setNonEmpty!7833 (= setRes!7833 (and tp!329280 (inv!13982 setElem!7833) e!703009))))

(declare-fun setRest!7833 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7833 (= (_2!6799 (h!16293 (zeroValue!1541 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425)))))))) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7833 true) setRest!7833))))

(declare-fun b!1108475 () Bool)

(declare-fun e!703010 () Bool)

(declare-fun tp!329282 () Bool)

(assert (=> b!1108475 (= e!703010 tp!329282)))

(declare-fun b!1108476 () Bool)

(declare-fun tp!329283 () Bool)

(assert (=> b!1108476 (= e!703009 tp!329283)))

(declare-fun tp!329281 () Bool)

(declare-fun tp!329279 () Bool)

(declare-fun b!1108477 () Bool)

(assert (=> b!1108477 (= e!703008 (and tp!329279 (inv!13982 (_2!6798 (_1!6799 (h!16293 (zeroValue!1541 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425)))))))))) e!703010 tp_is_empty!5723 setRes!7833 tp!329281))))

(declare-fun condSetEmpty!7833 () Bool)

(assert (=> b!1108477 (= condSetEmpty!7833 (= (_2!6799 (h!16293 (zeroValue!1541 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425)))))))) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun setIsEmpty!7833 () Bool)

(assert (=> setIsEmpty!7833 setRes!7833))

(assert (= b!1108477 b!1108475))

(assert (= (and b!1108477 condSetEmpty!7833) setIsEmpty!7833))

(assert (= (and b!1108477 (not condSetEmpty!7833)) setNonEmpty!7833))

(assert (= setNonEmpty!7833 b!1108476))

(assert (= (and b!1108301 ((_ is Cons!10892) (zeroValue!1541 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425)))))))) b!1108477))

(declare-fun m!1265315 () Bool)

(assert (=> setNonEmpty!7833 m!1265315))

(declare-fun m!1265317 () Bool)

(assert (=> b!1108477 m!1265317))

(declare-fun e!703011 () Bool)

(assert (=> b!1108301 (= tp!329130 e!703011)))

(declare-fun setElem!7834 () Context!1054)

(declare-fun setRes!7834 () Bool)

(declare-fun tp!329285 () Bool)

(declare-fun setNonEmpty!7834 () Bool)

(declare-fun e!703012 () Bool)

(assert (=> setNonEmpty!7834 (= setRes!7834 (and tp!329285 (inv!13982 setElem!7834) e!703012))))

(declare-fun setRest!7834 () (InoxSet Context!1054))

(assert (=> setNonEmpty!7834 (= (_2!6799 (h!16293 (minValue!1541 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425)))))))) ((_ map or) (store ((as const (Array Context!1054 Bool)) false) setElem!7834 true) setRest!7834))))

(declare-fun b!1108478 () Bool)

(declare-fun e!703013 () Bool)

(declare-fun tp!329287 () Bool)

(assert (=> b!1108478 (= e!703013 tp!329287)))

(declare-fun b!1108479 () Bool)

(declare-fun tp!329288 () Bool)

(assert (=> b!1108479 (= e!703012 tp!329288)))

(declare-fun tp!329284 () Bool)

(declare-fun b!1108480 () Bool)

(declare-fun tp!329286 () Bool)

(assert (=> b!1108480 (= e!703011 (and tp!329284 (inv!13982 (_2!6798 (_1!6799 (h!16293 (minValue!1541 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425)))))))))) e!703013 tp_is_empty!5723 setRes!7834 tp!329286))))

(declare-fun condSetEmpty!7834 () Bool)

(assert (=> b!1108480 (= condSetEmpty!7834 (= (_2!6799 (h!16293 (minValue!1541 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425)))))))) ((as const (Array Context!1054 Bool)) false)))))

(declare-fun setIsEmpty!7834 () Bool)

(assert (=> setIsEmpty!7834 setRes!7834))

(assert (= b!1108480 b!1108478))

(assert (= (and b!1108480 condSetEmpty!7834) setIsEmpty!7834))

(assert (= (and b!1108480 (not condSetEmpty!7834)) setNonEmpty!7834))

(assert (= setNonEmpty!7834 b!1108479))

(assert (= (and b!1108301 ((_ is Cons!10892) (minValue!1541 (v!20061 (underlying!2761 (v!20062 (underlying!2762 (cache!1637 cacheDown!425)))))))) b!1108480))

(declare-fun m!1265319 () Bool)

(assert (=> setNonEmpty!7834 m!1265319))

(declare-fun m!1265321 () Bool)

(assert (=> b!1108480 m!1265321))

(check-sat (not b!1108429) (not b!1108430) (not b!1108406) (not d!313591) (not b!1108327) (not b_next!27027) (not b!1108383) b_and!79293 (not b!1108471) (not b!1108361) (not b!1108455) (not b!1108451) (not d!313607) (not b!1108364) (not b_next!27037) (not b!1108339) (not b!1108474) (not b!1108380) (not b!1108433) b_and!79281 (not b!1108291) (not b!1108467) (not setNonEmpty!7828) (not d!313595) (not d!313603) (not setNonEmpty!7832) (not b!1108394) (not b!1108415) (not b!1108476) (not b!1108454) (not setNonEmpty!7834) (not b!1108449) (not setNonEmpty!7815) b_and!79291 tp_is_empty!5723 (not b!1108318) (not b!1108434) (not b!1108384) (not b!1108330) (not setNonEmpty!7822) (not setNonEmpty!7831) (not b!1108357) (not b!1108325) b_and!79285 (not b!1108382) (not b!1108432) (not b!1108431) (not b!1108478) (not setNonEmpty!7830) (not b!1108470) (not b_next!27029) (not setNonEmpty!7823) (not b!1108346) b_and!79289 (not b!1108450) (not b!1108457) b_and!79295 (not b!1108417) (not b!1108379) (not b!1108315) (not b_next!27031) (not b!1108475) (not b_next!27033) (not b!1108469) (not b!1108480) (not setNonEmpty!7816) (not b!1108453) (not b_next!27025) (not mapNonEmpty!6195) (not b!1108452) (not b!1108466) (not b!1108473) b_and!79287 (not setNonEmpty!7819) (not mapNonEmpty!6192) (not b!1108360) (not b!1108381) (not b!1108479) (not d!313599) (not b!1108472) (not setNonEmpty!7829) (not b_next!27035) (not setNonEmpty!7833) (not b!1108404) (not b_next!27039) (not b!1108393) (not d!313601) (not b!1108477) (not b!1108456) (not b!1108405) (not b!1108395) (not b!1108416) b_and!79283)
(check-sat (not b_next!27037) b_and!79281 b_and!79291 b_and!79285 (not b_next!27029) b_and!79289 b_and!79295 (not b_next!27025) b_and!79287 (not b_next!27035) (not b_next!27039) b_and!79283 (not b_next!27027) b_and!79293 (not b_next!27031) (not b_next!27033))
