; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266426 () Bool)

(assert start!266426)

(declare-fun b!2748419 () Bool)

(declare-fun b_free!77601 () Bool)

(declare-fun b_next!78305 () Bool)

(assert (=> b!2748419 (= b_free!77601 (not b_next!78305))))

(declare-fun tp!866948 () Bool)

(declare-fun b_and!202325 () Bool)

(assert (=> b!2748419 (= tp!866948 b_and!202325)))

(declare-fun b!2748420 () Bool)

(declare-fun b_free!77603 () Bool)

(declare-fun b_next!78307 () Bool)

(assert (=> b!2748420 (= b_free!77603 (not b_next!78307))))

(declare-fun tp!866951 () Bool)

(declare-fun b_and!202327 () Bool)

(assert (=> b!2748420 (= tp!866951 b_and!202327)))

(declare-fun b!2748415 () Bool)

(declare-fun b_free!77605 () Bool)

(declare-fun b_next!78309 () Bool)

(assert (=> b!2748415 (= b_free!77605 (not b_next!78309))))

(declare-fun tp!866954 () Bool)

(declare-fun b_and!202329 () Bool)

(assert (=> b!2748415 (= tp!866954 b_and!202329)))

(declare-fun b_free!77607 () Bool)

(declare-fun b_next!78311 () Bool)

(assert (=> b!2748415 (= b_free!77607 (not b_next!78311))))

(declare-fun tp!866946 () Bool)

(declare-fun b_and!202331 () Bool)

(assert (=> b!2748415 (= tp!866946 b_and!202331)))

(declare-fun b!2748401 () Bool)

(declare-fun b_free!77609 () Bool)

(declare-fun b_next!78313 () Bool)

(assert (=> b!2748401 (= b_free!77609 (not b_next!78313))))

(declare-fun tp!866941 () Bool)

(declare-fun b_and!202333 () Bool)

(assert (=> b!2748401 (= tp!866941 b_and!202333)))

(declare-fun b!2748405 () Bool)

(declare-fun b_free!77611 () Bool)

(declare-fun b_next!78315 () Bool)

(assert (=> b!2748405 (= b_free!77611 (not b_next!78315))))

(declare-fun tp!866952 () Bool)

(declare-fun b_and!202335 () Bool)

(assert (=> b!2748405 (= tp!866952 b_and!202335)))

(declare-fun e!1732149 () Bool)

(declare-fun tp!866950 () Bool)

(declare-datatypes ((C!16196 0))(
  ( (C!16197 (val!10032 Int)) )
))
(declare-datatypes ((Regex!8019 0))(
  ( (ElementMatch!8019 (c!444944 C!16196)) (Concat!13102 (regOne!16550 Regex!8019) (regTwo!16550 Regex!8019)) (EmptyExpr!8019) (Star!8019 (reg!8348 Regex!8019)) (EmptyLang!8019) (Union!8019 (regOne!16551 Regex!8019) (regTwo!16551 Regex!8019)) )
))
(declare-datatypes ((List!31822 0))(
  ( (Nil!31722) (Cons!31722 (h!37142 Regex!8019) (t!227916 List!31822)) )
))
(declare-datatypes ((Context!4474 0))(
  ( (Context!4475 (exprs!2737 List!31822)) )
))
(declare-datatypes ((tuple2!31596 0))(
  ( (tuple2!31597 (_1!18511 Context!4474) (_2!18511 C!16196)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31598 0))(
  ( (tuple2!31599 (_1!18512 tuple2!31596) (_2!18512 (InoxSet Context!4474))) )
))
(declare-datatypes ((List!31823 0))(
  ( (Nil!31723) (Cons!31723 (h!37143 tuple2!31598) (t!227917 List!31823)) )
))
(declare-datatypes ((array!13002 0))(
  ( (array!13003 (arr!5802 (Array (_ BitVec 32) List!31823)) (size!24486 (_ BitVec 32))) )
))
(declare-datatypes ((array!13004 0))(
  ( (array!13005 (arr!5803 (Array (_ BitVec 32) (_ BitVec 64))) (size!24487 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7300 0))(
  ( (LongMapFixedSize!7301 (defaultEntry!4035 Int) (mask!9396 (_ BitVec 32)) (extraKeys!3899 (_ BitVec 32)) (zeroValue!3909 List!31823) (minValue!3909 List!31823) (_size!7343 (_ BitVec 32)) (_keys!3950 array!13004) (_values!3931 array!13002) (_vacant!3711 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14409 0))(
  ( (Cell!14410 (v!33337 LongMapFixedSize!7300)) )
))
(declare-datatypes ((MutLongMap!3650 0))(
  ( (LongMap!3650 (underlying!7503 Cell!14409)) (MutLongMapExt!3649 (__x!20591 Int)) )
))
(declare-datatypes ((Cell!14411 0))(
  ( (Cell!14412 (v!33338 MutLongMap!3650)) )
))
(declare-datatypes ((Hashable!3566 0))(
  ( (HashableExt!3565 (__x!20592 Int)) )
))
(declare-datatypes ((MutableMap!3556 0))(
  ( (MutableMapExt!3555 (__x!20593 Int)) (HashMap!3556 (underlying!7504 Cell!14411) (hashF!5598 Hashable!3566) (_size!7344 (_ BitVec 32)) (defaultValue!3727 Int)) )
))
(declare-datatypes ((CacheUp!2262 0))(
  ( (CacheUp!2263 (cache!3699 MutableMap!3556)) )
))
(declare-fun cacheUp!717 () CacheUp!2262)

(declare-fun tp!866940 () Bool)

(declare-fun e!1732138 () Bool)

(declare-fun array_inv!4147 (array!13004) Bool)

(declare-fun array_inv!4148 (array!13002) Bool)

(assert (=> b!2748401 (= e!1732149 (and tp!866941 tp!866940 tp!866950 (array_inv!4147 (_keys!3950 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))))) (array_inv!4148 (_values!3931 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))))) e!1732138))))

(declare-fun mapNonEmpty!16645 () Bool)

(declare-fun mapRes!16645 () Bool)

(declare-fun tp!866949 () Bool)

(declare-fun tp!866953 () Bool)

(assert (=> mapNonEmpty!16645 (= mapRes!16645 (and tp!866949 tp!866953))))

(declare-fun mapKey!16645 () (_ BitVec 32))

(declare-fun mapRest!16646 () (Array (_ BitVec 32) List!31823))

(declare-fun mapValue!16646 () List!31823)

(assert (=> mapNonEmpty!16645 (= (arr!5802 (_values!3931 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))))) (store mapRest!16646 mapKey!16645 mapValue!16646))))

(declare-fun b!2748402 () Bool)

(declare-fun e!1732147 () Bool)

(declare-fun e!1732144 () Bool)

(assert (=> b!2748402 (= e!1732147 e!1732144)))

(declare-fun mapNonEmpty!16646 () Bool)

(declare-fun mapRes!16646 () Bool)

(declare-fun tp!866947 () Bool)

(declare-fun tp!866944 () Bool)

(assert (=> mapNonEmpty!16646 (= mapRes!16646 (and tp!866947 tp!866944))))

(declare-fun mapKey!16646 () (_ BitVec 32))

(declare-datatypes ((tuple3!4486 0))(
  ( (tuple3!4487 (_1!18513 Regex!8019) (_2!18513 Context!4474) (_3!2713 C!16196)) )
))
(declare-datatypes ((tuple2!31600 0))(
  ( (tuple2!31601 (_1!18514 tuple3!4486) (_2!18514 (InoxSet Context!4474))) )
))
(declare-datatypes ((List!31824 0))(
  ( (Nil!31724) (Cons!31724 (h!37144 tuple2!31600) (t!227918 List!31824)) )
))
(declare-fun mapRest!16645 () (Array (_ BitVec 32) List!31824))

(declare-datatypes ((array!13006 0))(
  ( (array!13007 (arr!5804 (Array (_ BitVec 32) List!31824)) (size!24488 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7302 0))(
  ( (LongMapFixedSize!7303 (defaultEntry!4036 Int) (mask!9397 (_ BitVec 32)) (extraKeys!3900 (_ BitVec 32)) (zeroValue!3910 List!31824) (minValue!3910 List!31824) (_size!7345 (_ BitVec 32)) (_keys!3951 array!13004) (_values!3932 array!13006) (_vacant!3712 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14413 0))(
  ( (Cell!14414 (v!33339 LongMapFixedSize!7302)) )
))
(declare-datatypes ((MutLongMap!3651 0))(
  ( (LongMap!3651 (underlying!7505 Cell!14413)) (MutLongMapExt!3650 (__x!20594 Int)) )
))
(declare-datatypes ((Cell!14415 0))(
  ( (Cell!14416 (v!33340 MutLongMap!3651)) )
))
(declare-datatypes ((Hashable!3567 0))(
  ( (HashableExt!3566 (__x!20595 Int)) )
))
(declare-datatypes ((MutableMap!3557 0))(
  ( (MutableMapExt!3556 (__x!20596 Int)) (HashMap!3557 (underlying!7506 Cell!14415) (hashF!5599 Hashable!3567) (_size!7346 (_ BitVec 32)) (defaultValue!3728 Int)) )
))
(declare-datatypes ((CacheDown!2382 0))(
  ( (CacheDown!2383 (cache!3700 MutableMap!3557)) )
))
(declare-fun cacheDown!730 () CacheDown!2382)

(declare-fun mapValue!16645 () List!31824)

(assert (=> mapNonEmpty!16646 (= (arr!5804 (_values!3932 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))))) (store mapRest!16645 mapKey!16646 mapValue!16645))))

(declare-fun b!2748403 () Bool)

(declare-fun res!1152896 () Bool)

(declare-fun e!1732140 () Bool)

(assert (=> b!2748403 (=> (not res!1152896) (not e!1732140))))

(declare-datatypes ((List!31825 0))(
  ( (Nil!31725) (Cons!31725 (h!37145 C!16196) (t!227919 List!31825)) )
))
(declare-datatypes ((IArray!19819 0))(
  ( (IArray!19820 (innerList!9967 List!31825)) )
))
(declare-datatypes ((Conc!9907 0))(
  ( (Node!9907 (left!24274 Conc!9907) (right!24604 Conc!9907) (csize!20044 Int) (cheight!10118 Int)) (Leaf!15085 (xs!13014 IArray!19819) (csize!20045 Int)) (Empty!9907) )
))
(declare-datatypes ((BalanceConc!19428 0))(
  ( (BalanceConc!19429 (c!444945 Conc!9907)) )
))
(declare-datatypes ((tuple2!31602 0))(
  ( (tuple2!31603 (_1!18515 BalanceConc!19428) (_2!18515 BalanceConc!19428)) )
))
(declare-datatypes ((tuple3!4488 0))(
  ( (tuple3!4489 (_1!18516 tuple2!31602) (_2!18516 CacheUp!2262) (_3!2714 CacheDown!2382)) )
))
(declare-fun lt!972012 () tuple3!4488)

(declare-fun isEmpty!18052 (BalanceConc!19428) Bool)

(assert (=> b!2748403 (= res!1152896 (not (isEmpty!18052 (_1!18515 (_1!18516 lt!972012)))))))

(declare-fun b!2748404 () Bool)

(declare-fun e!1732146 () Bool)

(declare-fun e!1732137 () Bool)

(assert (=> b!2748404 (= e!1732146 e!1732137)))

(declare-fun mapIsEmpty!16645 () Bool)

(assert (=> mapIsEmpty!16645 mapRes!16645))

(declare-fun e!1732130 () Bool)

(declare-fun e!1732142 () Bool)

(assert (=> b!2748405 (= e!1732130 (and e!1732142 tp!866952))))

(declare-fun b!2748406 () Bool)

(declare-fun e!1732132 () Bool)

(assert (=> b!2748406 (= e!1732132 e!1732130)))

(declare-fun b!2748407 () Bool)

(declare-fun e!1732139 () Bool)

(assert (=> b!2748407 (= e!1732139 e!1732140)))

(declare-fun res!1152894 () Bool)

(assert (=> b!2748407 (=> (not res!1152894) (not e!1732140))))

(declare-fun input!1561 () BalanceConc!19428)

(declare-datatypes ((List!31826 0))(
  ( (Nil!31726) (Cons!31726 (h!37146 (_ BitVec 16)) (t!227920 List!31826)) )
))
(declare-datatypes ((String!35326 0))(
  ( (String!35327 (value!156106 String)) )
))
(declare-datatypes ((TokenValue!5083 0))(
  ( (FloatLiteralValue!10166 (text!36026 List!31826)) (TokenValueExt!5082 (__x!20597 Int)) (Broken!25415 (value!156107 List!31826)) (Object!5182) (End!5083) (Def!5083) (Underscore!5083) (Match!5083) (Else!5083) (Error!5083) (Case!5083) (If!5083) (Extends!5083) (Abstract!5083) (Class!5083) (Val!5083) (DelimiterValue!10166 (del!5143 List!31826)) (KeywordValue!5089 (value!156108 List!31826)) (CommentValue!10166 (value!156109 List!31826)) (WhitespaceValue!10166 (value!156110 List!31826)) (IndentationValue!5083 (value!156111 List!31826)) (String!35328) (Int32!5083) (Broken!25416 (value!156112 List!31826)) (Boolean!5084) (Unit!45555) (OperatorValue!5086 (op!5143 List!31826)) (IdentifierValue!10166 (value!156113 List!31826)) (IdentifierValue!10167 (value!156114 List!31826)) (WhitespaceValue!10167 (value!156115 List!31826)) (True!10166) (False!10166) (Broken!25417 (value!156116 List!31826)) (Broken!25418 (value!156117 List!31826)) (True!10167) (RightBrace!5083) (RightBracket!5083) (Colon!5083) (Null!5083) (Comma!5083) (LeftBracket!5083) (False!10167) (LeftBrace!5083) (ImaginaryLiteralValue!5083 (text!36027 List!31826)) (StringLiteralValue!15249 (value!156118 List!31826)) (EOFValue!5083 (value!156119 List!31826)) (IdentValue!5083 (value!156120 List!31826)) (DelimiterValue!10167 (value!156121 List!31826)) (DedentValue!5083 (value!156122 List!31826)) (NewLineValue!5083 (value!156123 List!31826)) (IntegerValue!15249 (value!156124 (_ BitVec 32)) (text!36028 List!31826)) (IntegerValue!15250 (value!156125 Int) (text!36029 List!31826)) (Times!5083) (Or!5083) (Equal!5083) (Minus!5083) (Broken!25419 (value!156126 List!31826)) (And!5083) (Div!5083) (LessEqual!5083) (Mod!5083) (Concat!13103) (Not!5083) (Plus!5083) (SpaceValue!5083 (value!156127 List!31826)) (IntegerValue!15251 (value!156128 Int) (text!36030 List!31826)) (StringLiteralValue!15250 (text!36031 List!31826)) (FloatLiteralValue!10167 (text!36032 List!31826)) (BytesLiteralValue!5083 (value!156129 List!31826)) (CommentValue!10167 (value!156130 List!31826)) (StringLiteralValue!15251 (value!156131 List!31826)) (ErrorTokenValue!5083 (msg!5144 List!31826)) )
))
(declare-datatypes ((TokenValueInjection!9606 0))(
  ( (TokenValueInjection!9607 (toValue!6859 Int) (toChars!6718 Int)) )
))
(declare-datatypes ((Rule!9522 0))(
  ( (Rule!9523 (regex!4861 Regex!8019) (tag!5365 String!35326) (isSeparator!4861 Bool) (transformation!4861 TokenValueInjection!9606)) )
))
(declare-fun rule!196 () Rule!9522)

(declare-fun findLongestMatchWithZipperSequence!196 (Regex!8019 BalanceConc!19428) tuple2!31602)

(assert (=> b!2748407 (= res!1152894 (= (_1!18516 lt!972012) (findLongestMatchWithZipperSequence!196 (regex!4861 rule!196) input!1561)))))

(declare-fun findLongestMatchWithZipperSequenceMem!17 (Regex!8019 BalanceConc!19428 CacheUp!2262 CacheDown!2382) tuple3!4488)

(assert (=> b!2748407 (= lt!972012 (findLongestMatchWithZipperSequenceMem!17 (regex!4861 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(declare-fun b!2748408 () Bool)

(declare-fun lt!972010 () MutLongMap!3650)

(get-info :version)

(assert (=> b!2748408 (= e!1732142 (and e!1732146 ((_ is LongMap!3650) lt!972010)))))

(assert (=> b!2748408 (= lt!972010 (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))))

(declare-fun b!2748409 () Bool)

(declare-fun res!1152895 () Bool)

(assert (=> b!2748409 (=> (not res!1152895) (not e!1732139))))

(declare-fun valid!2830 (CacheUp!2262) Bool)

(assert (=> b!2748409 (= res!1152895 (valid!2830 cacheUp!717))))

(declare-fun b!2748410 () Bool)

(declare-fun tp!866938 () Bool)

(declare-fun e!1732135 () Bool)

(declare-fun e!1732133 () Bool)

(declare-fun inv!43082 (String!35326) Bool)

(declare-fun inv!43086 (TokenValueInjection!9606) Bool)

(assert (=> b!2748410 (= e!1732135 (and tp!866938 (inv!43082 (tag!5365 rule!196)) (inv!43086 (transformation!4861 rule!196)) e!1732133))))

(declare-fun b!2748411 () Bool)

(declare-fun tp!866939 () Bool)

(assert (=> b!2748411 (= e!1732138 (and tp!866939 mapRes!16645))))

(declare-fun condMapEmpty!16646 () Bool)

(declare-fun mapDefault!16645 () List!31823)

(assert (=> b!2748411 (= condMapEmpty!16646 (= (arr!5802 (_values!3931 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))))) ((as const (Array (_ BitVec 32) List!31823)) mapDefault!16645)))))

(declare-fun b!2748412 () Bool)

(declare-fun e!1732151 () Bool)

(declare-fun tp!866945 () Bool)

(declare-fun inv!43087 (Conc!9907) Bool)

(assert (=> b!2748412 (= e!1732151 (and (inv!43087 (c!444945 input!1561)) tp!866945))))

(declare-fun b!2748413 () Bool)

(declare-fun res!1152898 () Bool)

(assert (=> b!2748413 (=> (not res!1152898) (not e!1732139))))

(declare-fun valid!2831 (CacheDown!2382) Bool)

(assert (=> b!2748413 (= res!1152898 (valid!2831 cacheDown!730))))

(declare-fun b!2748414 () Bool)

(declare-fun e!1732136 () Bool)

(declare-fun tp!866955 () Bool)

(assert (=> b!2748414 (= e!1732136 (and tp!866955 mapRes!16646))))

(declare-fun condMapEmpty!16645 () Bool)

(declare-fun mapDefault!16646 () List!31824)

(assert (=> b!2748414 (= condMapEmpty!16645 (= (arr!5804 (_values!3932 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))))) ((as const (Array (_ BitVec 32) List!31824)) mapDefault!16646)))))

(assert (=> b!2748415 (= e!1732133 (and tp!866954 tp!866946))))

(declare-fun b!2748416 () Bool)

(declare-fun e!1732134 () Bool)

(declare-fun e!1732143 () Bool)

(assert (=> b!2748416 (= e!1732134 e!1732143)))

(declare-fun b!2748417 () Bool)

(declare-fun validRegex!3321 (Regex!8019) Bool)

(assert (=> b!2748417 (= e!1732140 (not (validRegex!3321 (regex!4861 rule!196))))))

(declare-fun lt!972013 () List!31825)

(declare-fun list!12008 (BalanceConc!19428) List!31825)

(assert (=> b!2748417 (= lt!972013 (list!12008 input!1561))))

(declare-fun b!2748418 () Bool)

(assert (=> b!2748418 (= e!1732137 e!1732149)))

(declare-fun mapIsEmpty!16646 () Bool)

(assert (=> mapIsEmpty!16646 mapRes!16646))

(declare-fun e!1732148 () Bool)

(assert (=> b!2748419 (= e!1732144 (and e!1732148 tp!866948))))

(declare-fun tp!866942 () Bool)

(declare-fun tp!866943 () Bool)

(declare-fun e!1732141 () Bool)

(declare-fun array_inv!4149 (array!13006) Bool)

(assert (=> b!2748420 (= e!1732141 (and tp!866951 tp!866942 tp!866943 (array_inv!4147 (_keys!3951 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))))) (array_inv!4149 (_values!3932 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))))) e!1732136))))

(declare-fun b!2748421 () Bool)

(declare-fun res!1152899 () Bool)

(assert (=> b!2748421 (=> (not res!1152899) (not e!1732139))))

(declare-datatypes ((LexerInterface!4453 0))(
  ( (LexerInterfaceExt!4450 (__x!20598 Int)) (Lexer!4451) )
))
(declare-fun thiss!16130 () LexerInterface!4453)

(declare-fun ruleValid!1599 (LexerInterface!4453 Rule!9522) Bool)

(assert (=> b!2748421 (= res!1152899 (ruleValid!1599 thiss!16130 rule!196))))

(declare-fun res!1152897 () Bool)

(assert (=> start!266426 (=> (not res!1152897) (not e!1732139))))

(assert (=> start!266426 (= res!1152897 ((_ is Lexer!4451) thiss!16130))))

(assert (=> start!266426 e!1732139))

(declare-fun inv!43088 (BalanceConc!19428) Bool)

(assert (=> start!266426 (and (inv!43088 input!1561) e!1732151)))

(declare-fun inv!43089 (CacheUp!2262) Bool)

(assert (=> start!266426 (and (inv!43089 cacheUp!717) e!1732132)))

(assert (=> start!266426 true))

(declare-fun inv!43090 (CacheDown!2382) Bool)

(assert (=> start!266426 (and (inv!43090 cacheDown!730) e!1732147)))

(assert (=> start!266426 e!1732135))

(declare-fun b!2748422 () Bool)

(assert (=> b!2748422 (= e!1732143 e!1732141)))

(declare-fun b!2748423 () Bool)

(declare-fun lt!972011 () MutLongMap!3651)

(assert (=> b!2748423 (= e!1732148 (and e!1732134 ((_ is LongMap!3651) lt!972011)))))

(assert (=> b!2748423 (= lt!972011 (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))))

(assert (= (and start!266426 res!1152897) b!2748421))

(assert (= (and b!2748421 res!1152899) b!2748409))

(assert (= (and b!2748409 res!1152895) b!2748413))

(assert (= (and b!2748413 res!1152898) b!2748407))

(assert (= (and b!2748407 res!1152894) b!2748403))

(assert (= (and b!2748403 res!1152896) b!2748417))

(assert (= start!266426 b!2748412))

(assert (= (and b!2748411 condMapEmpty!16646) mapIsEmpty!16645))

(assert (= (and b!2748411 (not condMapEmpty!16646)) mapNonEmpty!16645))

(assert (= b!2748401 b!2748411))

(assert (= b!2748418 b!2748401))

(assert (= b!2748404 b!2748418))

(assert (= (and b!2748408 ((_ is LongMap!3650) (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))) b!2748404))

(assert (= b!2748405 b!2748408))

(assert (= (and b!2748406 ((_ is HashMap!3556) (cache!3699 cacheUp!717))) b!2748405))

(assert (= start!266426 b!2748406))

(assert (= (and b!2748414 condMapEmpty!16645) mapIsEmpty!16646))

(assert (= (and b!2748414 (not condMapEmpty!16645)) mapNonEmpty!16646))

(assert (= b!2748420 b!2748414))

(assert (= b!2748422 b!2748420))

(assert (= b!2748416 b!2748422))

(assert (= (and b!2748423 ((_ is LongMap!3651) (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))) b!2748416))

(assert (= b!2748419 b!2748423))

(assert (= (and b!2748402 ((_ is HashMap!3557) (cache!3700 cacheDown!730))) b!2748419))

(assert (= start!266426 b!2748402))

(assert (= b!2748410 b!2748415))

(assert (= start!266426 b!2748410))

(declare-fun m!3164081 () Bool)

(assert (=> b!2748417 m!3164081))

(declare-fun m!3164083 () Bool)

(assert (=> b!2748417 m!3164083))

(declare-fun m!3164085 () Bool)

(assert (=> b!2748413 m!3164085))

(declare-fun m!3164087 () Bool)

(assert (=> b!2748409 m!3164087))

(declare-fun m!3164089 () Bool)

(assert (=> b!2748420 m!3164089))

(declare-fun m!3164091 () Bool)

(assert (=> b!2748420 m!3164091))

(declare-fun m!3164093 () Bool)

(assert (=> b!2748401 m!3164093))

(declare-fun m!3164095 () Bool)

(assert (=> b!2748401 m!3164095))

(declare-fun m!3164097 () Bool)

(assert (=> mapNonEmpty!16646 m!3164097))

(declare-fun m!3164099 () Bool)

(assert (=> b!2748412 m!3164099))

(declare-fun m!3164101 () Bool)

(assert (=> b!2748403 m!3164101))

(declare-fun m!3164103 () Bool)

(assert (=> b!2748407 m!3164103))

(declare-fun m!3164105 () Bool)

(assert (=> b!2748407 m!3164105))

(declare-fun m!3164107 () Bool)

(assert (=> b!2748410 m!3164107))

(declare-fun m!3164109 () Bool)

(assert (=> b!2748410 m!3164109))

(declare-fun m!3164111 () Bool)

(assert (=> mapNonEmpty!16645 m!3164111))

(declare-fun m!3164113 () Bool)

(assert (=> b!2748421 m!3164113))

(declare-fun m!3164115 () Bool)

(assert (=> start!266426 m!3164115))

(declare-fun m!3164117 () Bool)

(assert (=> start!266426 m!3164117))

(declare-fun m!3164119 () Bool)

(assert (=> start!266426 m!3164119))

(check-sat (not b!2748417) (not b!2748407) b_and!202325 (not b_next!78305) (not b_next!78311) (not b!2748410) (not start!266426) (not mapNonEmpty!16645) b_and!202329 (not b!2748421) (not b!2748401) (not b!2748411) (not mapNonEmpty!16646) (not b!2748420) (not b_next!78309) (not b_next!78315) (not b!2748412) (not b!2748413) (not b!2748414) (not b_next!78313) b_and!202327 (not b_next!78307) (not b!2748409) b_and!202335 (not b!2748403) b_and!202333 b_and!202331)
(check-sat b_and!202325 (not b_next!78305) (not b_next!78311) (not b_next!78313) b_and!202329 b_and!202335 (not b_next!78309) (not b_next!78315) b_and!202327 (not b_next!78307) b_and!202333 b_and!202331)
(get-model)

(declare-fun d!796262 () Bool)

(declare-fun lt!972016 () tuple2!31602)

(declare-datatypes ((tuple2!31604 0))(
  ( (tuple2!31605 (_1!18517 List!31825) (_2!18517 List!31825)) )
))
(declare-fun findLongestMatch!715 (Regex!8019 List!31825) tuple2!31604)

(assert (=> d!796262 (= (tuple2!31605 (list!12008 (_1!18515 lt!972016)) (list!12008 (_2!18515 lt!972016))) (findLongestMatch!715 (regex!4861 rule!196) (list!12008 input!1561)))))

(declare-fun choose!16074 (Regex!8019 BalanceConc!19428) tuple2!31602)

(assert (=> d!796262 (= lt!972016 (choose!16074 (regex!4861 rule!196) input!1561))))

(assert (=> d!796262 (validRegex!3321 (regex!4861 rule!196))))

(assert (=> d!796262 (= (findLongestMatchWithZipperSequence!196 (regex!4861 rule!196) input!1561) lt!972016)))

(declare-fun bs!490328 () Bool)

(assert (= bs!490328 d!796262))

(assert (=> bs!490328 m!3164081))

(declare-fun m!3164121 () Bool)

(assert (=> bs!490328 m!3164121))

(declare-fun m!3164123 () Bool)

(assert (=> bs!490328 m!3164123))

(declare-fun m!3164125 () Bool)

(assert (=> bs!490328 m!3164125))

(assert (=> bs!490328 m!3164083))

(assert (=> bs!490328 m!3164083))

(declare-fun m!3164127 () Bool)

(assert (=> bs!490328 m!3164127))

(assert (=> b!2748407 d!796262))

(declare-fun d!796264 () Bool)

(declare-fun e!1732154 () Bool)

(assert (=> d!796264 e!1732154))

(declare-fun res!1152906 () Bool)

(assert (=> d!796264 (=> (not res!1152906) (not e!1732154))))

(declare-fun lt!972019 () tuple3!4488)

(assert (=> d!796264 (= res!1152906 (= (_1!18516 lt!972019) (findLongestMatchWithZipperSequence!196 (regex!4861 rule!196) input!1561)))))

(declare-fun choose!16075 (Regex!8019 BalanceConc!19428 CacheUp!2262 CacheDown!2382) tuple3!4488)

(assert (=> d!796264 (= lt!972019 (choose!16075 (regex!4861 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(assert (=> d!796264 (validRegex!3321 (regex!4861 rule!196))))

(assert (=> d!796264 (= (findLongestMatchWithZipperSequenceMem!17 (regex!4861 rule!196) input!1561 cacheUp!717 cacheDown!730) lt!972019)))

(declare-fun b!2748428 () Bool)

(declare-fun res!1152907 () Bool)

(assert (=> b!2748428 (=> (not res!1152907) (not e!1732154))))

(assert (=> b!2748428 (= res!1152907 (valid!2831 (_3!2714 lt!972019)))))

(declare-fun b!2748429 () Bool)

(assert (=> b!2748429 (= e!1732154 (valid!2830 (_2!18516 lt!972019)))))

(assert (= (and d!796264 res!1152906) b!2748428))

(assert (= (and b!2748428 res!1152907) b!2748429))

(assert (=> d!796264 m!3164103))

(declare-fun m!3164129 () Bool)

(assert (=> d!796264 m!3164129))

(assert (=> d!796264 m!3164081))

(declare-fun m!3164131 () Bool)

(assert (=> b!2748428 m!3164131))

(declare-fun m!3164133 () Bool)

(assert (=> b!2748429 m!3164133))

(assert (=> b!2748407 d!796264))

(declare-fun d!796266 () Bool)

(declare-fun validCacheMapUp!345 (MutableMap!3556) Bool)

(assert (=> d!796266 (= (valid!2830 cacheUp!717) (validCacheMapUp!345 (cache!3699 cacheUp!717)))))

(declare-fun bs!490329 () Bool)

(assert (= bs!490329 d!796266))

(declare-fun m!3164135 () Bool)

(assert (=> bs!490329 m!3164135))

(assert (=> b!2748409 d!796266))

(declare-fun d!796268 () Bool)

(assert (=> d!796268 (= (array_inv!4147 (_keys!3950 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))))) (bvsge (size!24487 (_keys!3950 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748401 d!796268))

(declare-fun d!796270 () Bool)

(assert (=> d!796270 (= (array_inv!4148 (_values!3931 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))))) (bvsge (size!24486 (_values!3931 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748401 d!796270))

(declare-fun d!796272 () Bool)

(assert (=> d!796272 (= (array_inv!4147 (_keys!3951 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))))) (bvsge (size!24487 (_keys!3951 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748420 d!796272))

(declare-fun d!796274 () Bool)

(assert (=> d!796274 (= (array_inv!4149 (_values!3932 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))))) (bvsge (size!24488 (_values!3932 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748420 d!796274))

(declare-fun d!796276 () Bool)

(assert (=> d!796276 (= (inv!43082 (tag!5365 rule!196)) (= (mod (str.len (value!156106 (tag!5365 rule!196))) 2) 0))))

(assert (=> b!2748410 d!796276))

(declare-fun d!796278 () Bool)

(declare-fun res!1152910 () Bool)

(declare-fun e!1732157 () Bool)

(assert (=> d!796278 (=> (not res!1152910) (not e!1732157))))

(declare-fun semiInverseModEq!2007 (Int Int) Bool)

(assert (=> d!796278 (= res!1152910 (semiInverseModEq!2007 (toChars!6718 (transformation!4861 rule!196)) (toValue!6859 (transformation!4861 rule!196))))))

(assert (=> d!796278 (= (inv!43086 (transformation!4861 rule!196)) e!1732157)))

(declare-fun b!2748432 () Bool)

(declare-fun equivClasses!1908 (Int Int) Bool)

(assert (=> b!2748432 (= e!1732157 (equivClasses!1908 (toChars!6718 (transformation!4861 rule!196)) (toValue!6859 (transformation!4861 rule!196))))))

(assert (= (and d!796278 res!1152910) b!2748432))

(declare-fun m!3164137 () Bool)

(assert (=> d!796278 m!3164137))

(declare-fun m!3164139 () Bool)

(assert (=> b!2748432 m!3164139))

(assert (=> b!2748410 d!796278))

(declare-fun d!796280 () Bool)

(declare-fun c!444948 () Bool)

(assert (=> d!796280 (= c!444948 ((_ is Node!9907) (c!444945 input!1561)))))

(declare-fun e!1732162 () Bool)

(assert (=> d!796280 (= (inv!43087 (c!444945 input!1561)) e!1732162)))

(declare-fun b!2748439 () Bool)

(declare-fun inv!43091 (Conc!9907) Bool)

(assert (=> b!2748439 (= e!1732162 (inv!43091 (c!444945 input!1561)))))

(declare-fun b!2748440 () Bool)

(declare-fun e!1732163 () Bool)

(assert (=> b!2748440 (= e!1732162 e!1732163)))

(declare-fun res!1152913 () Bool)

(assert (=> b!2748440 (= res!1152913 (not ((_ is Leaf!15085) (c!444945 input!1561))))))

(assert (=> b!2748440 (=> res!1152913 e!1732163)))

(declare-fun b!2748441 () Bool)

(declare-fun inv!43092 (Conc!9907) Bool)

(assert (=> b!2748441 (= e!1732163 (inv!43092 (c!444945 input!1561)))))

(assert (= (and d!796280 c!444948) b!2748439))

(assert (= (and d!796280 (not c!444948)) b!2748440))

(assert (= (and b!2748440 (not res!1152913)) b!2748441))

(declare-fun m!3164141 () Bool)

(assert (=> b!2748439 m!3164141))

(declare-fun m!3164143 () Bool)

(assert (=> b!2748441 m!3164143))

(assert (=> b!2748412 d!796280))

(declare-fun d!796282 () Bool)

(declare-fun res!1152918 () Bool)

(declare-fun e!1732166 () Bool)

(assert (=> d!796282 (=> (not res!1152918) (not e!1732166))))

(assert (=> d!796282 (= res!1152918 (validRegex!3321 (regex!4861 rule!196)))))

(assert (=> d!796282 (= (ruleValid!1599 thiss!16130 rule!196) e!1732166)))

(declare-fun b!2748446 () Bool)

(declare-fun res!1152919 () Bool)

(assert (=> b!2748446 (=> (not res!1152919) (not e!1732166))))

(declare-fun nullable!2611 (Regex!8019) Bool)

(assert (=> b!2748446 (= res!1152919 (not (nullable!2611 (regex!4861 rule!196))))))

(declare-fun b!2748447 () Bool)

(assert (=> b!2748447 (= e!1732166 (not (= (tag!5365 rule!196) (String!35327 ""))))))

(assert (= (and d!796282 res!1152918) b!2748446))

(assert (= (and b!2748446 res!1152919) b!2748447))

(assert (=> d!796282 m!3164081))

(declare-fun m!3164145 () Bool)

(assert (=> b!2748446 m!3164145))

(assert (=> b!2748421 d!796282))

(declare-fun d!796284 () Bool)

(declare-fun isBalanced!3018 (Conc!9907) Bool)

(assert (=> d!796284 (= (inv!43088 input!1561) (isBalanced!3018 (c!444945 input!1561)))))

(declare-fun bs!490330 () Bool)

(assert (= bs!490330 d!796284))

(declare-fun m!3164147 () Bool)

(assert (=> bs!490330 m!3164147))

(assert (=> start!266426 d!796284))

(declare-fun d!796286 () Bool)

(declare-fun res!1152922 () Bool)

(declare-fun e!1732169 () Bool)

(assert (=> d!796286 (=> (not res!1152922) (not e!1732169))))

(assert (=> d!796286 (= res!1152922 ((_ is HashMap!3556) (cache!3699 cacheUp!717)))))

(assert (=> d!796286 (= (inv!43089 cacheUp!717) e!1732169)))

(declare-fun b!2748450 () Bool)

(assert (=> b!2748450 (= e!1732169 (validCacheMapUp!345 (cache!3699 cacheUp!717)))))

(assert (= (and d!796286 res!1152922) b!2748450))

(assert (=> b!2748450 m!3164135))

(assert (=> start!266426 d!796286))

(declare-fun d!796288 () Bool)

(declare-fun res!1152925 () Bool)

(declare-fun e!1732172 () Bool)

(assert (=> d!796288 (=> (not res!1152925) (not e!1732172))))

(assert (=> d!796288 (= res!1152925 ((_ is HashMap!3557) (cache!3700 cacheDown!730)))))

(assert (=> d!796288 (= (inv!43090 cacheDown!730) e!1732172)))

(declare-fun b!2748453 () Bool)

(declare-fun validCacheMapDown!376 (MutableMap!3557) Bool)

(assert (=> b!2748453 (= e!1732172 (validCacheMapDown!376 (cache!3700 cacheDown!730)))))

(assert (= (and d!796288 res!1152925) b!2748453))

(declare-fun m!3164149 () Bool)

(assert (=> b!2748453 m!3164149))

(assert (=> start!266426 d!796288))

(declare-fun d!796290 () Bool)

(assert (=> d!796290 (= (valid!2831 cacheDown!730) (validCacheMapDown!376 (cache!3700 cacheDown!730)))))

(declare-fun bs!490331 () Bool)

(assert (= bs!490331 d!796290))

(assert (=> bs!490331 m!3164149))

(assert (=> b!2748413 d!796290))

(declare-fun d!796292 () Bool)

(declare-fun lt!972022 () Bool)

(declare-fun isEmpty!18053 (List!31825) Bool)

(assert (=> d!796292 (= lt!972022 (isEmpty!18053 (list!12008 (_1!18515 (_1!18516 lt!972012)))))))

(declare-fun isEmpty!18054 (Conc!9907) Bool)

(assert (=> d!796292 (= lt!972022 (isEmpty!18054 (c!444945 (_1!18515 (_1!18516 lt!972012)))))))

(assert (=> d!796292 (= (isEmpty!18052 (_1!18515 (_1!18516 lt!972012))) lt!972022)))

(declare-fun bs!490332 () Bool)

(assert (= bs!490332 d!796292))

(declare-fun m!3164151 () Bool)

(assert (=> bs!490332 m!3164151))

(assert (=> bs!490332 m!3164151))

(declare-fun m!3164153 () Bool)

(assert (=> bs!490332 m!3164153))

(declare-fun m!3164155 () Bool)

(assert (=> bs!490332 m!3164155))

(assert (=> b!2748403 d!796292))

(declare-fun bm!177444 () Bool)

(declare-fun call!177450 () Bool)

(declare-fun c!444954 () Bool)

(assert (=> bm!177444 (= call!177450 (validRegex!3321 (ite c!444954 (regOne!16551 (regex!4861 rule!196)) (regOne!16550 (regex!4861 rule!196)))))))

(declare-fun c!444953 () Bool)

(declare-fun bm!177445 () Bool)

(declare-fun call!177449 () Bool)

(assert (=> bm!177445 (= call!177449 (validRegex!3321 (ite c!444953 (reg!8348 (regex!4861 rule!196)) (ite c!444954 (regTwo!16551 (regex!4861 rule!196)) (regTwo!16550 (regex!4861 rule!196))))))))

(declare-fun d!796294 () Bool)

(declare-fun res!1152937 () Bool)

(declare-fun e!1732189 () Bool)

(assert (=> d!796294 (=> res!1152937 e!1732189)))

(assert (=> d!796294 (= res!1152937 ((_ is ElementMatch!8019) (regex!4861 rule!196)))))

(assert (=> d!796294 (= (validRegex!3321 (regex!4861 rule!196)) e!1732189)))

(declare-fun bm!177446 () Bool)

(declare-fun call!177451 () Bool)

(assert (=> bm!177446 (= call!177451 call!177449)))

(declare-fun b!2748472 () Bool)

(declare-fun e!1732192 () Bool)

(assert (=> b!2748472 (= e!1732192 call!177451)))

(declare-fun b!2748473 () Bool)

(declare-fun e!1732193 () Bool)

(assert (=> b!2748473 (= e!1732193 call!177449)))

(declare-fun b!2748474 () Bool)

(declare-fun res!1152938 () Bool)

(declare-fun e!1732191 () Bool)

(assert (=> b!2748474 (=> res!1152938 e!1732191)))

(assert (=> b!2748474 (= res!1152938 (not ((_ is Concat!13102) (regex!4861 rule!196))))))

(declare-fun e!1732187 () Bool)

(assert (=> b!2748474 (= e!1732187 e!1732191)))

(declare-fun b!2748475 () Bool)

(declare-fun e!1732188 () Bool)

(assert (=> b!2748475 (= e!1732189 e!1732188)))

(assert (=> b!2748475 (= c!444953 ((_ is Star!8019) (regex!4861 rule!196)))))

(declare-fun b!2748476 () Bool)

(assert (=> b!2748476 (= e!1732191 e!1732192)))

(declare-fun res!1152936 () Bool)

(assert (=> b!2748476 (=> (not res!1152936) (not e!1732192))))

(assert (=> b!2748476 (= res!1152936 call!177450)))

(declare-fun b!2748477 () Bool)

(assert (=> b!2748477 (= e!1732188 e!1732193)))

(declare-fun res!1152940 () Bool)

(assert (=> b!2748477 (= res!1152940 (not (nullable!2611 (reg!8348 (regex!4861 rule!196)))))))

(assert (=> b!2748477 (=> (not res!1152940) (not e!1732193))))

(declare-fun b!2748478 () Bool)

(assert (=> b!2748478 (= e!1732188 e!1732187)))

(assert (=> b!2748478 (= c!444954 ((_ is Union!8019) (regex!4861 rule!196)))))

(declare-fun b!2748479 () Bool)

(declare-fun res!1152939 () Bool)

(declare-fun e!1732190 () Bool)

(assert (=> b!2748479 (=> (not res!1152939) (not e!1732190))))

(assert (=> b!2748479 (= res!1152939 call!177450)))

(assert (=> b!2748479 (= e!1732187 e!1732190)))

(declare-fun b!2748480 () Bool)

(assert (=> b!2748480 (= e!1732190 call!177451)))

(assert (= (and d!796294 (not res!1152937)) b!2748475))

(assert (= (and b!2748475 c!444953) b!2748477))

(assert (= (and b!2748475 (not c!444953)) b!2748478))

(assert (= (and b!2748477 res!1152940) b!2748473))

(assert (= (and b!2748478 c!444954) b!2748479))

(assert (= (and b!2748478 (not c!444954)) b!2748474))

(assert (= (and b!2748479 res!1152939) b!2748480))

(assert (= (and b!2748474 (not res!1152938)) b!2748476))

(assert (= (and b!2748476 res!1152936) b!2748472))

(assert (= (or b!2748479 b!2748476) bm!177444))

(assert (= (or b!2748480 b!2748472) bm!177446))

(assert (= (or b!2748473 bm!177446) bm!177445))

(declare-fun m!3164157 () Bool)

(assert (=> bm!177444 m!3164157))

(declare-fun m!3164159 () Bool)

(assert (=> bm!177445 m!3164159))

(declare-fun m!3164161 () Bool)

(assert (=> b!2748477 m!3164161))

(assert (=> b!2748417 d!796294))

(declare-fun d!796296 () Bool)

(declare-fun list!12009 (Conc!9907) List!31825)

(assert (=> d!796296 (= (list!12008 input!1561) (list!12009 (c!444945 input!1561)))))

(declare-fun bs!490333 () Bool)

(assert (= bs!490333 d!796296))

(declare-fun m!3164163 () Bool)

(assert (=> bs!490333 m!3164163))

(assert (=> b!2748417 d!796296))

(declare-fun setIsEmpty!21825 () Bool)

(declare-fun setRes!21825 () Bool)

(assert (=> setIsEmpty!21825 setRes!21825))

(declare-fun e!1732201 () Bool)

(declare-fun b!2748489 () Bool)

(declare-fun tp!866966 () Bool)

(declare-fun tp_is_empty!13945 () Bool)

(declare-fun e!1732202 () Bool)

(declare-fun inv!43093 (Context!4474) Bool)

(assert (=> b!2748489 (= e!1732201 (and (inv!43093 (_1!18511 (_1!18512 (h!37143 (zeroValue!3909 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717)))))))))) e!1732202 tp_is_empty!13945 setRes!21825 tp!866966))))

(declare-fun condSetEmpty!21825 () Bool)

(assert (=> b!2748489 (= condSetEmpty!21825 (= (_2!18512 (h!37143 (zeroValue!3909 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717)))))))) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun e!1732200 () Bool)

(declare-fun setElem!21825 () Context!4474)

(declare-fun setNonEmpty!21825 () Bool)

(declare-fun tp!866964 () Bool)

(assert (=> setNonEmpty!21825 (= setRes!21825 (and tp!866964 (inv!43093 setElem!21825) e!1732200))))

(declare-fun setRest!21825 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21825 (= (_2!18512 (h!37143 (zeroValue!3909 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21825 true) setRest!21825))))

(declare-fun b!2748490 () Bool)

(declare-fun tp!866965 () Bool)

(assert (=> b!2748490 (= e!1732200 tp!866965)))

(declare-fun b!2748491 () Bool)

(declare-fun tp!866967 () Bool)

(assert (=> b!2748491 (= e!1732202 tp!866967)))

(assert (=> b!2748401 (= tp!866940 e!1732201)))

(assert (= b!2748489 b!2748491))

(assert (= (and b!2748489 condSetEmpty!21825) setIsEmpty!21825))

(assert (= (and b!2748489 (not condSetEmpty!21825)) setNonEmpty!21825))

(assert (= setNonEmpty!21825 b!2748490))

(assert (= (and b!2748401 ((_ is Cons!31723) (zeroValue!3909 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717)))))))) b!2748489))

(declare-fun m!3164165 () Bool)

(assert (=> b!2748489 m!3164165))

(declare-fun m!3164167 () Bool)

(assert (=> setNonEmpty!21825 m!3164167))

(declare-fun setIsEmpty!21826 () Bool)

(declare-fun setRes!21826 () Bool)

(assert (=> setIsEmpty!21826 setRes!21826))

(declare-fun tp!866970 () Bool)

(declare-fun e!1732205 () Bool)

(declare-fun e!1732204 () Bool)

(declare-fun b!2748492 () Bool)

(assert (=> b!2748492 (= e!1732204 (and (inv!43093 (_1!18511 (_1!18512 (h!37143 (minValue!3909 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717)))))))))) e!1732205 tp_is_empty!13945 setRes!21826 tp!866970))))

(declare-fun condSetEmpty!21826 () Bool)

(assert (=> b!2748492 (= condSetEmpty!21826 (= (_2!18512 (h!37143 (minValue!3909 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717)))))))) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun setNonEmpty!21826 () Bool)

(declare-fun tp!866968 () Bool)

(declare-fun e!1732203 () Bool)

(declare-fun setElem!21826 () Context!4474)

(assert (=> setNonEmpty!21826 (= setRes!21826 (and tp!866968 (inv!43093 setElem!21826) e!1732203))))

(declare-fun setRest!21826 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21826 (= (_2!18512 (h!37143 (minValue!3909 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21826 true) setRest!21826))))

(declare-fun b!2748493 () Bool)

(declare-fun tp!866969 () Bool)

(assert (=> b!2748493 (= e!1732203 tp!866969)))

(declare-fun b!2748494 () Bool)

(declare-fun tp!866971 () Bool)

(assert (=> b!2748494 (= e!1732205 tp!866971)))

(assert (=> b!2748401 (= tp!866950 e!1732204)))

(assert (= b!2748492 b!2748494))

(assert (= (and b!2748492 condSetEmpty!21826) setIsEmpty!21826))

(assert (= (and b!2748492 (not condSetEmpty!21826)) setNonEmpty!21826))

(assert (= setNonEmpty!21826 b!2748493))

(assert (= (and b!2748401 ((_ is Cons!31723) (minValue!3909 (v!33337 (underlying!7503 (v!33338 (underlying!7504 (cache!3699 cacheUp!717)))))))) b!2748492))

(declare-fun m!3164169 () Bool)

(assert (=> b!2748492 m!3164169))

(declare-fun m!3164171 () Bool)

(assert (=> setNonEmpty!21826 m!3164171))

(declare-fun e!1732213 () Bool)

(assert (=> b!2748414 (= tp!866955 e!1732213)))

(declare-fun b!2748503 () Bool)

(declare-fun e!1732212 () Bool)

(declare-fun tp!866984 () Bool)

(declare-fun tp!866982 () Bool)

(declare-fun setRes!21829 () Bool)

(assert (=> b!2748503 (= e!1732213 (and tp!866982 (inv!43093 (_2!18513 (_1!18514 (h!37144 mapDefault!16646)))) e!1732212 tp_is_empty!13945 setRes!21829 tp!866984))))

(declare-fun condSetEmpty!21829 () Bool)

(assert (=> b!2748503 (= condSetEmpty!21829 (= (_2!18514 (h!37144 mapDefault!16646)) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun b!2748504 () Bool)

(declare-fun tp!866986 () Bool)

(assert (=> b!2748504 (= e!1732212 tp!866986)))

(declare-fun setIsEmpty!21829 () Bool)

(assert (=> setIsEmpty!21829 setRes!21829))

(declare-fun e!1732214 () Bool)

(declare-fun setElem!21829 () Context!4474)

(declare-fun setNonEmpty!21829 () Bool)

(declare-fun tp!866985 () Bool)

(assert (=> setNonEmpty!21829 (= setRes!21829 (and tp!866985 (inv!43093 setElem!21829) e!1732214))))

(declare-fun setRest!21829 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21829 (= (_2!18514 (h!37144 mapDefault!16646)) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21829 true) setRest!21829))))

(declare-fun b!2748505 () Bool)

(declare-fun tp!866983 () Bool)

(assert (=> b!2748505 (= e!1732214 tp!866983)))

(assert (= b!2748503 b!2748504))

(assert (= (and b!2748503 condSetEmpty!21829) setIsEmpty!21829))

(assert (= (and b!2748503 (not condSetEmpty!21829)) setNonEmpty!21829))

(assert (= setNonEmpty!21829 b!2748505))

(assert (= (and b!2748414 ((_ is Cons!31724) mapDefault!16646)) b!2748503))

(declare-fun m!3164173 () Bool)

(assert (=> b!2748503 m!3164173))

(declare-fun m!3164175 () Bool)

(assert (=> setNonEmpty!21829 m!3164175))

(declare-fun e!1732216 () Bool)

(assert (=> b!2748420 (= tp!866942 e!1732216)))

(declare-fun tp!866987 () Bool)

(declare-fun b!2748506 () Bool)

(declare-fun tp!866989 () Bool)

(declare-fun setRes!21830 () Bool)

(declare-fun e!1732215 () Bool)

(assert (=> b!2748506 (= e!1732216 (and tp!866987 (inv!43093 (_2!18513 (_1!18514 (h!37144 (zeroValue!3910 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730)))))))))) e!1732215 tp_is_empty!13945 setRes!21830 tp!866989))))

(declare-fun condSetEmpty!21830 () Bool)

(assert (=> b!2748506 (= condSetEmpty!21830 (= (_2!18514 (h!37144 (zeroValue!3910 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730)))))))) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun b!2748507 () Bool)

(declare-fun tp!866991 () Bool)

(assert (=> b!2748507 (= e!1732215 tp!866991)))

(declare-fun setIsEmpty!21830 () Bool)

(assert (=> setIsEmpty!21830 setRes!21830))

(declare-fun setNonEmpty!21830 () Bool)

(declare-fun e!1732217 () Bool)

(declare-fun tp!866990 () Bool)

(declare-fun setElem!21830 () Context!4474)

(assert (=> setNonEmpty!21830 (= setRes!21830 (and tp!866990 (inv!43093 setElem!21830) e!1732217))))

(declare-fun setRest!21830 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21830 (= (_2!18514 (h!37144 (zeroValue!3910 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21830 true) setRest!21830))))

(declare-fun b!2748508 () Bool)

(declare-fun tp!866988 () Bool)

(assert (=> b!2748508 (= e!1732217 tp!866988)))

(assert (= b!2748506 b!2748507))

(assert (= (and b!2748506 condSetEmpty!21830) setIsEmpty!21830))

(assert (= (and b!2748506 (not condSetEmpty!21830)) setNonEmpty!21830))

(assert (= setNonEmpty!21830 b!2748508))

(assert (= (and b!2748420 ((_ is Cons!31724) (zeroValue!3910 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730)))))))) b!2748506))

(declare-fun m!3164177 () Bool)

(assert (=> b!2748506 m!3164177))

(declare-fun m!3164179 () Bool)

(assert (=> setNonEmpty!21830 m!3164179))

(declare-fun e!1732219 () Bool)

(assert (=> b!2748420 (= tp!866943 e!1732219)))

(declare-fun e!1732218 () Bool)

(declare-fun b!2748509 () Bool)

(declare-fun tp!866992 () Bool)

(declare-fun setRes!21831 () Bool)

(declare-fun tp!866994 () Bool)

(assert (=> b!2748509 (= e!1732219 (and tp!866992 (inv!43093 (_2!18513 (_1!18514 (h!37144 (minValue!3910 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730)))))))))) e!1732218 tp_is_empty!13945 setRes!21831 tp!866994))))

(declare-fun condSetEmpty!21831 () Bool)

(assert (=> b!2748509 (= condSetEmpty!21831 (= (_2!18514 (h!37144 (minValue!3910 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730)))))))) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun b!2748510 () Bool)

(declare-fun tp!866996 () Bool)

(assert (=> b!2748510 (= e!1732218 tp!866996)))

(declare-fun setIsEmpty!21831 () Bool)

(assert (=> setIsEmpty!21831 setRes!21831))

(declare-fun tp!866995 () Bool)

(declare-fun setNonEmpty!21831 () Bool)

(declare-fun e!1732220 () Bool)

(declare-fun setElem!21831 () Context!4474)

(assert (=> setNonEmpty!21831 (= setRes!21831 (and tp!866995 (inv!43093 setElem!21831) e!1732220))))

(declare-fun setRest!21831 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21831 (= (_2!18514 (h!37144 (minValue!3910 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21831 true) setRest!21831))))

(declare-fun b!2748511 () Bool)

(declare-fun tp!866993 () Bool)

(assert (=> b!2748511 (= e!1732220 tp!866993)))

(assert (= b!2748509 b!2748510))

(assert (= (and b!2748509 condSetEmpty!21831) setIsEmpty!21831))

(assert (= (and b!2748509 (not condSetEmpty!21831)) setNonEmpty!21831))

(assert (= setNonEmpty!21831 b!2748511))

(assert (= (and b!2748420 ((_ is Cons!31724) (minValue!3910 (v!33339 (underlying!7505 (v!33340 (underlying!7506 (cache!3700 cacheDown!730)))))))) b!2748509))

(declare-fun m!3164181 () Bool)

(assert (=> b!2748509 m!3164181))

(declare-fun m!3164183 () Bool)

(assert (=> setNonEmpty!21831 m!3164183))

(declare-fun mapNonEmpty!16649 () Bool)

(declare-fun mapRes!16649 () Bool)

(declare-fun tp!867021 () Bool)

(declare-fun e!1732236 () Bool)

(assert (=> mapNonEmpty!16649 (= mapRes!16649 (and tp!867021 e!1732236))))

(declare-fun mapValue!16649 () List!31823)

(declare-fun mapKey!16649 () (_ BitVec 32))

(declare-fun mapRest!16649 () (Array (_ BitVec 32) List!31823))

(assert (=> mapNonEmpty!16649 (= mapRest!16646 (store mapRest!16649 mapKey!16649 mapValue!16649))))

(declare-fun setIsEmpty!21836 () Bool)

(declare-fun setRes!21836 () Bool)

(assert (=> setIsEmpty!21836 setRes!21836))

(declare-fun mapIsEmpty!16649 () Bool)

(assert (=> mapIsEmpty!16649 mapRes!16649))

(declare-fun b!2748526 () Bool)

(declare-fun e!1732237 () Bool)

(declare-fun tp!867022 () Bool)

(assert (=> b!2748526 (= e!1732237 tp!867022)))

(declare-fun setIsEmpty!21837 () Bool)

(declare-fun setRes!21837 () Bool)

(assert (=> setIsEmpty!21837 setRes!21837))

(declare-fun b!2748527 () Bool)

(declare-fun e!1732233 () Bool)

(declare-fun tp!867015 () Bool)

(assert (=> b!2748527 (= e!1732233 tp!867015)))

(declare-fun mapDefault!16649 () List!31823)

(declare-fun tp!867023 () Bool)

(declare-fun b!2748528 () Bool)

(declare-fun e!1732238 () Bool)

(declare-fun e!1732235 () Bool)

(assert (=> b!2748528 (= e!1732238 (and (inv!43093 (_1!18511 (_1!18512 (h!37143 mapDefault!16649)))) e!1732235 tp_is_empty!13945 setRes!21837 tp!867023))))

(declare-fun condSetEmpty!21836 () Bool)

(assert (=> b!2748528 (= condSetEmpty!21836 (= (_2!18512 (h!37143 mapDefault!16649)) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun b!2748529 () Bool)

(declare-fun e!1732234 () Bool)

(declare-fun tp!867017 () Bool)

(assert (=> b!2748529 (= e!1732234 tp!867017)))

(declare-fun tp!867019 () Bool)

(declare-fun setNonEmpty!21836 () Bool)

(declare-fun setElem!21836 () Context!4474)

(assert (=> setNonEmpty!21836 (= setRes!21837 (and tp!867019 (inv!43093 setElem!21836) e!1732237))))

(declare-fun setRest!21837 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21836 (= (_2!18512 (h!37143 mapDefault!16649)) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21836 true) setRest!21837))))

(declare-fun b!2748530 () Bool)

(declare-fun tp!867018 () Bool)

(assert (=> b!2748530 (= e!1732235 tp!867018)))

(declare-fun condMapEmpty!16649 () Bool)

(assert (=> mapNonEmpty!16645 (= condMapEmpty!16649 (= mapRest!16646 ((as const (Array (_ BitVec 32) List!31823)) mapDefault!16649)))))

(assert (=> mapNonEmpty!16645 (= tp!866949 (and e!1732238 mapRes!16649))))

(declare-fun setNonEmpty!21837 () Bool)

(declare-fun tp!867020 () Bool)

(declare-fun setElem!21837 () Context!4474)

(assert (=> setNonEmpty!21837 (= setRes!21836 (and tp!867020 (inv!43093 setElem!21837) e!1732233))))

(declare-fun setRest!21836 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21837 (= (_2!18512 (h!37143 mapValue!16649)) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21837 true) setRest!21836))))

(declare-fun b!2748531 () Bool)

(declare-fun tp!867016 () Bool)

(assert (=> b!2748531 (= e!1732236 (and (inv!43093 (_1!18511 (_1!18512 (h!37143 mapValue!16649)))) e!1732234 tp_is_empty!13945 setRes!21836 tp!867016))))

(declare-fun condSetEmpty!21837 () Bool)

(assert (=> b!2748531 (= condSetEmpty!21837 (= (_2!18512 (h!37143 mapValue!16649)) ((as const (Array Context!4474 Bool)) false)))))

(assert (= (and mapNonEmpty!16645 condMapEmpty!16649) mapIsEmpty!16649))

(assert (= (and mapNonEmpty!16645 (not condMapEmpty!16649)) mapNonEmpty!16649))

(assert (= b!2748531 b!2748529))

(assert (= (and b!2748531 condSetEmpty!21837) setIsEmpty!21836))

(assert (= (and b!2748531 (not condSetEmpty!21837)) setNonEmpty!21837))

(assert (= setNonEmpty!21837 b!2748527))

(assert (= (and mapNonEmpty!16649 ((_ is Cons!31723) mapValue!16649)) b!2748531))

(assert (= b!2748528 b!2748530))

(assert (= (and b!2748528 condSetEmpty!21836) setIsEmpty!21837))

(assert (= (and b!2748528 (not condSetEmpty!21836)) setNonEmpty!21836))

(assert (= setNonEmpty!21836 b!2748526))

(assert (= (and mapNonEmpty!16645 ((_ is Cons!31723) mapDefault!16649)) b!2748528))

(declare-fun m!3164185 () Bool)

(assert (=> mapNonEmpty!16649 m!3164185))

(declare-fun m!3164187 () Bool)

(assert (=> b!2748528 m!3164187))

(declare-fun m!3164189 () Bool)

(assert (=> b!2748531 m!3164189))

(declare-fun m!3164191 () Bool)

(assert (=> setNonEmpty!21836 m!3164191))

(declare-fun m!3164193 () Bool)

(assert (=> setNonEmpty!21837 m!3164193))

(declare-fun setIsEmpty!21838 () Bool)

(declare-fun setRes!21838 () Bool)

(assert (=> setIsEmpty!21838 setRes!21838))

(declare-fun tp!867026 () Bool)

(declare-fun e!1732241 () Bool)

(declare-fun b!2748532 () Bool)

(declare-fun e!1732240 () Bool)

(assert (=> b!2748532 (= e!1732240 (and (inv!43093 (_1!18511 (_1!18512 (h!37143 mapValue!16646)))) e!1732241 tp_is_empty!13945 setRes!21838 tp!867026))))

(declare-fun condSetEmpty!21838 () Bool)

(assert (=> b!2748532 (= condSetEmpty!21838 (= (_2!18512 (h!37143 mapValue!16646)) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun setElem!21838 () Context!4474)

(declare-fun tp!867024 () Bool)

(declare-fun e!1732239 () Bool)

(declare-fun setNonEmpty!21838 () Bool)

(assert (=> setNonEmpty!21838 (= setRes!21838 (and tp!867024 (inv!43093 setElem!21838) e!1732239))))

(declare-fun setRest!21838 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21838 (= (_2!18512 (h!37143 mapValue!16646)) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21838 true) setRest!21838))))

(declare-fun b!2748533 () Bool)

(declare-fun tp!867025 () Bool)

(assert (=> b!2748533 (= e!1732239 tp!867025)))

(declare-fun b!2748534 () Bool)

(declare-fun tp!867027 () Bool)

(assert (=> b!2748534 (= e!1732241 tp!867027)))

(assert (=> mapNonEmpty!16645 (= tp!866953 e!1732240)))

(assert (= b!2748532 b!2748534))

(assert (= (and b!2748532 condSetEmpty!21838) setIsEmpty!21838))

(assert (= (and b!2748532 (not condSetEmpty!21838)) setNonEmpty!21838))

(assert (= setNonEmpty!21838 b!2748533))

(assert (= (and mapNonEmpty!16645 ((_ is Cons!31723) mapValue!16646)) b!2748532))

(declare-fun m!3164195 () Bool)

(assert (=> b!2748532 m!3164195))

(declare-fun m!3164197 () Bool)

(assert (=> setNonEmpty!21838 m!3164197))

(declare-fun b!2748548 () Bool)

(declare-fun e!1732244 () Bool)

(declare-fun tp!867039 () Bool)

(declare-fun tp!867041 () Bool)

(assert (=> b!2748548 (= e!1732244 (and tp!867039 tp!867041))))

(declare-fun b!2748545 () Bool)

(assert (=> b!2748545 (= e!1732244 tp_is_empty!13945)))

(declare-fun b!2748546 () Bool)

(declare-fun tp!867040 () Bool)

(declare-fun tp!867038 () Bool)

(assert (=> b!2748546 (= e!1732244 (and tp!867040 tp!867038))))

(declare-fun b!2748547 () Bool)

(declare-fun tp!867042 () Bool)

(assert (=> b!2748547 (= e!1732244 tp!867042)))

(assert (=> b!2748410 (= tp!866938 e!1732244)))

(assert (= (and b!2748410 ((_ is ElementMatch!8019) (regex!4861 rule!196))) b!2748545))

(assert (= (and b!2748410 ((_ is Concat!13102) (regex!4861 rule!196))) b!2748546))

(assert (= (and b!2748410 ((_ is Star!8019) (regex!4861 rule!196))) b!2748547))

(assert (= (and b!2748410 ((_ is Union!8019) (regex!4861 rule!196))) b!2748548))

(declare-fun b!2748563 () Bool)

(declare-fun e!1732260 () Bool)

(declare-fun tp!867070 () Bool)

(assert (=> b!2748563 (= e!1732260 tp!867070)))

(declare-fun b!2748564 () Bool)

(declare-fun e!1732261 () Bool)

(declare-fun tp!867065 () Bool)

(assert (=> b!2748564 (= e!1732261 tp!867065)))

(declare-fun setIsEmpty!21843 () Bool)

(declare-fun setRes!21844 () Bool)

(assert (=> setIsEmpty!21843 setRes!21844))

(declare-fun b!2748565 () Bool)

(declare-fun e!1732262 () Bool)

(declare-fun tp!867075 () Bool)

(assert (=> b!2748565 (= e!1732262 tp!867075)))

(declare-fun mapIsEmpty!16652 () Bool)

(declare-fun mapRes!16652 () Bool)

(assert (=> mapIsEmpty!16652 mapRes!16652))

(declare-fun setNonEmpty!21843 () Bool)

(declare-fun tp!867068 () Bool)

(declare-fun setRes!21843 () Bool)

(declare-fun setElem!21844 () Context!4474)

(assert (=> setNonEmpty!21843 (= setRes!21843 (and tp!867068 (inv!43093 setElem!21844) e!1732261))))

(declare-fun mapValue!16652 () List!31824)

(declare-fun setRest!21844 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21843 (= (_2!18514 (h!37144 mapValue!16652)) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21844 true) setRest!21844))))

(declare-fun setElem!21843 () Context!4474)

(declare-fun setNonEmpty!21844 () Bool)

(declare-fun tp!867067 () Bool)

(assert (=> setNonEmpty!21844 (= setRes!21844 (and tp!867067 (inv!43093 setElem!21843) e!1732260))))

(declare-fun mapDefault!16652 () List!31824)

(declare-fun setRest!21843 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21844 (= (_2!18514 (h!37144 mapDefault!16652)) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21843 true) setRest!21843))))

(declare-fun mapNonEmpty!16652 () Bool)

(declare-fun tp!867073 () Bool)

(declare-fun e!1732257 () Bool)

(assert (=> mapNonEmpty!16652 (= mapRes!16652 (and tp!867073 e!1732257))))

(declare-fun mapKey!16652 () (_ BitVec 32))

(declare-fun mapRest!16652 () (Array (_ BitVec 32) List!31824))

(assert (=> mapNonEmpty!16652 (= mapRest!16645 (store mapRest!16652 mapKey!16652 mapValue!16652))))

(declare-fun e!1732259 () Bool)

(declare-fun tp!867069 () Bool)

(declare-fun tp!867074 () Bool)

(declare-fun b!2748566 () Bool)

(assert (=> b!2748566 (= e!1732259 (and tp!867069 (inv!43093 (_2!18513 (_1!18514 (h!37144 mapDefault!16652)))) e!1732262 tp_is_empty!13945 setRes!21844 tp!867074))))

(declare-fun condSetEmpty!21844 () Bool)

(assert (=> b!2748566 (= condSetEmpty!21844 (= (_2!18514 (h!37144 mapDefault!16652)) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun b!2748567 () Bool)

(declare-fun e!1732258 () Bool)

(declare-fun tp!867072 () Bool)

(assert (=> b!2748567 (= e!1732258 tp!867072)))

(declare-fun tp!867071 () Bool)

(declare-fun b!2748568 () Bool)

(declare-fun tp!867066 () Bool)

(assert (=> b!2748568 (= e!1732257 (and tp!867066 (inv!43093 (_2!18513 (_1!18514 (h!37144 mapValue!16652)))) e!1732258 tp_is_empty!13945 setRes!21843 tp!867071))))

(declare-fun condSetEmpty!21843 () Bool)

(assert (=> b!2748568 (= condSetEmpty!21843 (= (_2!18514 (h!37144 mapValue!16652)) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun setIsEmpty!21844 () Bool)

(assert (=> setIsEmpty!21844 setRes!21843))

(declare-fun condMapEmpty!16652 () Bool)

(assert (=> mapNonEmpty!16646 (= condMapEmpty!16652 (= mapRest!16645 ((as const (Array (_ BitVec 32) List!31824)) mapDefault!16652)))))

(assert (=> mapNonEmpty!16646 (= tp!866947 (and e!1732259 mapRes!16652))))

(assert (= (and mapNonEmpty!16646 condMapEmpty!16652) mapIsEmpty!16652))

(assert (= (and mapNonEmpty!16646 (not condMapEmpty!16652)) mapNonEmpty!16652))

(assert (= b!2748568 b!2748567))

(assert (= (and b!2748568 condSetEmpty!21843) setIsEmpty!21844))

(assert (= (and b!2748568 (not condSetEmpty!21843)) setNonEmpty!21843))

(assert (= setNonEmpty!21843 b!2748564))

(assert (= (and mapNonEmpty!16652 ((_ is Cons!31724) mapValue!16652)) b!2748568))

(assert (= b!2748566 b!2748565))

(assert (= (and b!2748566 condSetEmpty!21844) setIsEmpty!21843))

(assert (= (and b!2748566 (not condSetEmpty!21844)) setNonEmpty!21844))

(assert (= setNonEmpty!21844 b!2748563))

(assert (= (and mapNonEmpty!16646 ((_ is Cons!31724) mapDefault!16652)) b!2748566))

(declare-fun m!3164199 () Bool)

(assert (=> b!2748568 m!3164199))

(declare-fun m!3164201 () Bool)

(assert (=> b!2748566 m!3164201))

(declare-fun m!3164203 () Bool)

(assert (=> setNonEmpty!21843 m!3164203))

(declare-fun m!3164205 () Bool)

(assert (=> setNonEmpty!21844 m!3164205))

(declare-fun m!3164207 () Bool)

(assert (=> mapNonEmpty!16652 m!3164207))

(declare-fun e!1732264 () Bool)

(assert (=> mapNonEmpty!16646 (= tp!866944 e!1732264)))

(declare-fun setRes!21845 () Bool)

(declare-fun tp!867078 () Bool)

(declare-fun e!1732263 () Bool)

(declare-fun tp!867076 () Bool)

(declare-fun b!2748569 () Bool)

(assert (=> b!2748569 (= e!1732264 (and tp!867076 (inv!43093 (_2!18513 (_1!18514 (h!37144 mapValue!16645)))) e!1732263 tp_is_empty!13945 setRes!21845 tp!867078))))

(declare-fun condSetEmpty!21845 () Bool)

(assert (=> b!2748569 (= condSetEmpty!21845 (= (_2!18514 (h!37144 mapValue!16645)) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun b!2748570 () Bool)

(declare-fun tp!867080 () Bool)

(assert (=> b!2748570 (= e!1732263 tp!867080)))

(declare-fun setIsEmpty!21845 () Bool)

(assert (=> setIsEmpty!21845 setRes!21845))

(declare-fun tp!867079 () Bool)

(declare-fun e!1732265 () Bool)

(declare-fun setNonEmpty!21845 () Bool)

(declare-fun setElem!21845 () Context!4474)

(assert (=> setNonEmpty!21845 (= setRes!21845 (and tp!867079 (inv!43093 setElem!21845) e!1732265))))

(declare-fun setRest!21845 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21845 (= (_2!18514 (h!37144 mapValue!16645)) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21845 true) setRest!21845))))

(declare-fun b!2748571 () Bool)

(declare-fun tp!867077 () Bool)

(assert (=> b!2748571 (= e!1732265 tp!867077)))

(assert (= b!2748569 b!2748570))

(assert (= (and b!2748569 condSetEmpty!21845) setIsEmpty!21845))

(assert (= (and b!2748569 (not condSetEmpty!21845)) setNonEmpty!21845))

(assert (= setNonEmpty!21845 b!2748571))

(assert (= (and mapNonEmpty!16646 ((_ is Cons!31724) mapValue!16645)) b!2748569))

(declare-fun m!3164209 () Bool)

(assert (=> b!2748569 m!3164209))

(declare-fun m!3164211 () Bool)

(assert (=> setNonEmpty!21845 m!3164211))

(declare-fun tp!867087 () Bool)

(declare-fun b!2748580 () Bool)

(declare-fun e!1732271 () Bool)

(declare-fun tp!867088 () Bool)

(assert (=> b!2748580 (= e!1732271 (and (inv!43087 (left!24274 (c!444945 input!1561))) tp!867087 (inv!43087 (right!24604 (c!444945 input!1561))) tp!867088))))

(declare-fun b!2748582 () Bool)

(declare-fun e!1732270 () Bool)

(declare-fun tp!867089 () Bool)

(assert (=> b!2748582 (= e!1732270 tp!867089)))

(declare-fun b!2748581 () Bool)

(declare-fun inv!43094 (IArray!19819) Bool)

(assert (=> b!2748581 (= e!1732271 (and (inv!43094 (xs!13014 (c!444945 input!1561))) e!1732270))))

(assert (=> b!2748412 (= tp!866945 (and (inv!43087 (c!444945 input!1561)) e!1732271))))

(assert (= (and b!2748412 ((_ is Node!9907) (c!444945 input!1561))) b!2748580))

(assert (= b!2748581 b!2748582))

(assert (= (and b!2748412 ((_ is Leaf!15085) (c!444945 input!1561))) b!2748581))

(declare-fun m!3164213 () Bool)

(assert (=> b!2748580 m!3164213))

(declare-fun m!3164215 () Bool)

(assert (=> b!2748580 m!3164215))

(declare-fun m!3164217 () Bool)

(assert (=> b!2748581 m!3164217))

(assert (=> b!2748412 m!3164099))

(declare-fun setIsEmpty!21846 () Bool)

(declare-fun setRes!21846 () Bool)

(assert (=> setIsEmpty!21846 setRes!21846))

(declare-fun e!1732274 () Bool)

(declare-fun tp!867092 () Bool)

(declare-fun b!2748583 () Bool)

(declare-fun e!1732273 () Bool)

(assert (=> b!2748583 (= e!1732273 (and (inv!43093 (_1!18511 (_1!18512 (h!37143 mapDefault!16645)))) e!1732274 tp_is_empty!13945 setRes!21846 tp!867092))))

(declare-fun condSetEmpty!21846 () Bool)

(assert (=> b!2748583 (= condSetEmpty!21846 (= (_2!18512 (h!37143 mapDefault!16645)) ((as const (Array Context!4474 Bool)) false)))))

(declare-fun e!1732272 () Bool)

(declare-fun tp!867090 () Bool)

(declare-fun setNonEmpty!21846 () Bool)

(declare-fun setElem!21846 () Context!4474)

(assert (=> setNonEmpty!21846 (= setRes!21846 (and tp!867090 (inv!43093 setElem!21846) e!1732272))))

(declare-fun setRest!21846 () (InoxSet Context!4474))

(assert (=> setNonEmpty!21846 (= (_2!18512 (h!37143 mapDefault!16645)) ((_ map or) (store ((as const (Array Context!4474 Bool)) false) setElem!21846 true) setRest!21846))))

(declare-fun b!2748584 () Bool)

(declare-fun tp!867091 () Bool)

(assert (=> b!2748584 (= e!1732272 tp!867091)))

(declare-fun b!2748585 () Bool)

(declare-fun tp!867093 () Bool)

(assert (=> b!2748585 (= e!1732274 tp!867093)))

(assert (=> b!2748411 (= tp!866939 e!1732273)))

(assert (= b!2748583 b!2748585))

(assert (= (and b!2748583 condSetEmpty!21846) setIsEmpty!21846))

(assert (= (and b!2748583 (not condSetEmpty!21846)) setNonEmpty!21846))

(assert (= setNonEmpty!21846 b!2748584))

(assert (= (and b!2748411 ((_ is Cons!31723) mapDefault!16645)) b!2748583))

(declare-fun m!3164219 () Bool)

(assert (=> b!2748583 m!3164219))

(declare-fun m!3164221 () Bool)

(assert (=> setNonEmpty!21846 m!3164221))

(check-sat (not b!2748569) (not b!2748533) (not d!796284) (not b!2748584) (not b!2748490) (not b!2748503) (not bm!177445) (not d!796292) (not setNonEmpty!21826) (not setNonEmpty!21829) (not b!2748581) (not b!2748565) (not b!2748526) (not setNonEmpty!21846) (not d!796282) (not b!2748509) (not setNonEmpty!21831) b_and!202325 (not d!796266) (not b_next!78305) (not b!2748493) (not b!2748563) (not b!2748446) (not b_next!78311) (not b!2748453) (not b!2748568) (not mapNonEmpty!16649) (not b!2748570) (not b!2748547) (not b_next!78309) (not b_next!78315) (not b!2748412) (not b!2748567) (not b!2748429) (not b!2748508) (not b!2748527) (not b_next!78313) (not b!2748585) (not b!2748580) (not b!2748529) (not b!2748491) (not mapNonEmpty!16652) (not b!2748505) (not b!2748489) (not b!2748566) (not b!2748532) b_and!202329 (not d!796278) (not setNonEmpty!21838) (not b!2748477) (not setNonEmpty!21845) (not b!2748564) (not b!2748441) (not setNonEmpty!21843) (not b!2748428) (not b!2748439) (not b!2748530) (not b!2748510) (not b_next!78307) (not b!2748534) (not d!796264) b_and!202327 (not b!2748507) (not b!2748450) (not b!2748494) (not b!2748546) (not b!2748582) (not b!2748528) (not b!2748504) (not setNonEmpty!21837) (not setNonEmpty!21836) b_and!202335 (not bm!177444) (not b!2748583) (not b!2748571) b_and!202333 (not setNonEmpty!21844) b_and!202331 (not d!796262) (not setNonEmpty!21825) tp_is_empty!13945 (not b!2748432) (not b!2748531) (not b!2748506) (not d!796296) (not d!796290) (not b!2748511) (not setNonEmpty!21830) (not b!2748492) (not b!2748548))
(check-sat b_and!202325 (not b_next!78305) (not b_next!78311) (not b_next!78313) b_and!202329 b_and!202335 (not b_next!78309) (not b_next!78315) b_and!202327 (not b_next!78307) b_and!202333 b_and!202331)
