; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1486 () Bool)

(assert start!1486)

(declare-fun b!32930 () Bool)

(declare-fun b_free!257 () Bool)

(declare-fun b_next!257 () Bool)

(assert (=> b!32930 (= b_free!257 (not b_next!257))))

(declare-fun tp!22701 () Bool)

(declare-fun b_and!257 () Bool)

(assert (=> b!32930 (= tp!22701 b_and!257)))

(declare-fun b!32937 () Bool)

(declare-fun b_free!259 () Bool)

(declare-fun b_next!259 () Bool)

(assert (=> b!32937 (= b_free!259 (not b_next!259))))

(declare-fun tp!22688 () Bool)

(declare-fun b_and!259 () Bool)

(assert (=> b!32937 (= tp!22688 b_and!259)))

(declare-fun b!32934 () Bool)

(declare-fun b_free!261 () Bool)

(declare-fun b_next!261 () Bool)

(assert (=> b!32934 (= b_free!261 (not b_next!261))))

(declare-fun tp!22692 () Bool)

(declare-fun b_and!261 () Bool)

(assert (=> b!32934 (= tp!22692 b_and!261)))

(declare-fun b!32931 () Bool)

(declare-fun b_free!263 () Bool)

(declare-fun b_next!263 () Bool)

(assert (=> b!32931 (= b_free!263 (not b_next!263))))

(declare-fun tp!22685 () Bool)

(declare-fun b_and!263 () Bool)

(assert (=> b!32931 (= tp!22685 b_and!263)))

(declare-fun b!32943 () Bool)

(declare-fun b_free!265 () Bool)

(declare-fun b_next!265 () Bool)

(assert (=> b!32943 (= b_free!265 (not b_next!265))))

(declare-fun tp!22684 () Bool)

(declare-fun b_and!265 () Bool)

(assert (=> b!32943 (= tp!22684 b_and!265)))

(declare-fun b_free!267 () Bool)

(declare-fun b_next!267 () Bool)

(assert (=> b!32943 (= b_free!267 (not b_next!267))))

(declare-fun tp!22690 () Bool)

(declare-fun b_and!267 () Bool)

(assert (=> b!32943 (= tp!22690 b_and!267)))

(declare-fun res!27095 () Bool)

(declare-fun e!14798 () Bool)

(assert (=> start!1486 (=> (not res!27095) (not e!14798))))

(declare-datatypes ((LexerInterface!19 0))(
  ( (LexerInterfaceExt!16 (__x!526 Int)) (Lexer!17) )
))
(declare-fun thiss!12222 () LexerInterface!19)

(get-info :version)

(assert (=> start!1486 (= res!27095 ((_ is Lexer!17) thiss!12222))))

(assert (=> start!1486 e!14798))

(declare-datatypes ((C!1356 0))(
  ( (C!1357 (val!169 Int)) )
))
(declare-datatypes ((List!256 0))(
  ( (Nil!254) (Cons!254 (h!5650 C!1356) (t!14846 List!256)) )
))
(declare-datatypes ((IArray!79 0))(
  ( (IArray!80 (innerList!97 List!256)) )
))
(declare-datatypes ((Conc!39 0))(
  ( (Node!39 (left!365 Conc!39) (right!695 Conc!39) (csize!308 Int) (cheight!250 Int)) (Leaf!174 (xs!2618 IArray!79) (csize!309 Int)) (Empty!39) )
))
(declare-datatypes ((BalanceConc!78 0))(
  ( (BalanceConc!79 (c!15277 Conc!39)) )
))
(declare-fun input!768 () BalanceConc!78)

(declare-fun e!14805 () Bool)

(declare-fun inv!558 (BalanceConc!78) Bool)

(assert (=> start!1486 (and (inv!558 input!768) e!14805)))

(declare-datatypes ((Regex!141 0))(
  ( (ElementMatch!141 (c!15278 C!1356)) (Concat!248 (regOne!794 Regex!141) (regTwo!794 Regex!141)) (EmptyExpr!141) (Star!141 (reg!470 Regex!141)) (EmptyLang!141) (Union!141 (regOne!795 Regex!141) (regTwo!795 Regex!141)) )
))
(declare-datatypes ((List!257 0))(
  ( (Nil!255) (Cons!255 (h!5651 Regex!141) (t!14847 List!257)) )
))
(declare-datatypes ((Context!46 0))(
  ( (Context!47 (exprs!523 List!257)) )
))
(declare-datatypes ((tuple2!152 0))(
  ( (tuple2!153 (_1!96 Context!46) (_2!96 C!1356)) )
))
(declare-datatypes ((Hashable!39 0))(
  ( (HashableExt!38 (__x!527 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!154 0))(
  ( (tuple2!155 (_1!97 tuple2!152) (_2!97 (InoxSet Context!46))) )
))
(declare-datatypes ((List!258 0))(
  ( (Nil!256) (Cons!256 (h!5652 tuple2!154) (t!14848 List!258)) )
))
(declare-datatypes ((array!133 0))(
  ( (array!134 (arr!90 (Array (_ BitVec 32) (_ BitVec 64))) (size!319 (_ BitVec 32))) )
))
(declare-datatypes ((array!135 0))(
  ( (array!136 (arr!91 (Array (_ BitVec 32) List!258)) (size!320 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!78 0))(
  ( (LongMapFixedSize!79 (defaultEntry!372 Int) (mask!690 (_ BitVec 32)) (extraKeys!284 (_ BitVec 32)) (zeroValue!294 List!258) (minValue!294 List!258) (_size!214 (_ BitVec 32)) (_keys!327 array!133) (_values!316 array!135) (_vacant!99 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!153 0))(
  ( (Cell!154 (v!12040 LongMapFixedSize!78)) )
))
(declare-datatypes ((MutLongMap!39 0))(
  ( (LongMap!39 (underlying!277 Cell!153)) (MutLongMapExt!38 (__x!528 Int)) )
))
(declare-datatypes ((Cell!155 0))(
  ( (Cell!156 (v!12041 MutLongMap!39)) )
))
(declare-datatypes ((MutableMap!39 0))(
  ( (MutableMapExt!38 (__x!529 Int)) (HashMap!39 (underlying!278 Cell!155) (hashF!1899 Hashable!39) (_size!215 (_ BitVec 32)) (defaultValue!185 Int)) )
))
(declare-datatypes ((CacheUp!36 0))(
  ( (CacheUp!37 (cache!518 MutableMap!39)) )
))
(declare-fun cacheUp!472 () CacheUp!36)

(declare-fun e!14799 () Bool)

(declare-fun inv!559 (CacheUp!36) Bool)

(assert (=> start!1486 (and (inv!559 cacheUp!472) e!14799)))

(assert (=> start!1486 true))

(declare-datatypes ((tuple3!40 0))(
  ( (tuple3!41 (_1!98 Regex!141) (_2!98 Context!46) (_3!20 C!1356)) )
))
(declare-datatypes ((tuple2!156 0))(
  ( (tuple2!157 (_1!99 tuple3!40) (_2!99 (InoxSet Context!46))) )
))
(declare-datatypes ((List!259 0))(
  ( (Nil!257) (Cons!257 (h!5653 tuple2!156) (t!14849 List!259)) )
))
(declare-datatypes ((Hashable!40 0))(
  ( (HashableExt!39 (__x!530 Int)) )
))
(declare-datatypes ((array!137 0))(
  ( (array!138 (arr!92 (Array (_ BitVec 32) List!259)) (size!321 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!80 0))(
  ( (LongMapFixedSize!81 (defaultEntry!373 Int) (mask!691 (_ BitVec 32)) (extraKeys!285 (_ BitVec 32)) (zeroValue!295 List!259) (minValue!295 List!259) (_size!216 (_ BitVec 32)) (_keys!328 array!133) (_values!317 array!137) (_vacant!100 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!157 0))(
  ( (Cell!158 (v!12042 LongMapFixedSize!80)) )
))
(declare-datatypes ((MutLongMap!40 0))(
  ( (LongMap!40 (underlying!279 Cell!157)) (MutLongMapExt!39 (__x!531 Int)) )
))
(declare-datatypes ((Cell!159 0))(
  ( (Cell!160 (v!12043 MutLongMap!40)) )
))
(declare-datatypes ((MutableMap!40 0))(
  ( (MutableMapExt!39 (__x!532 Int)) (HashMap!40 (underlying!280 Cell!159) (hashF!1900 Hashable!40) (_size!217 (_ BitVec 32)) (defaultValue!186 Int)) )
))
(declare-datatypes ((CacheDown!38 0))(
  ( (CacheDown!39 (cache!519 MutableMap!40)) )
))
(declare-fun cacheDown!485 () CacheDown!38)

(declare-fun e!14813 () Bool)

(declare-fun inv!560 (CacheDown!38) Bool)

(assert (=> start!1486 (and (inv!560 cacheDown!485) e!14813)))

(declare-fun e!14802 () Bool)

(assert (=> start!1486 e!14802))

(declare-fun e!14814 () Bool)

(declare-fun tp!22697 () Bool)

(declare-fun tp!22700 () Bool)

(declare-fun e!14810 () Bool)

(declare-fun array_inv!46 (array!133) Bool)

(declare-fun array_inv!47 (array!137) Bool)

(assert (=> b!32930 (= e!14810 (and tp!22701 tp!22700 tp!22697 (array_inv!46 (_keys!328 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))) (array_inv!47 (_values!317 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))) e!14814))))

(declare-fun e!14819 () Bool)

(declare-fun e!14808 () Bool)

(assert (=> b!32931 (= e!14819 (and e!14808 tp!22685))))

(declare-fun b!32932 () Bool)

(declare-fun e!14803 () Bool)

(declare-fun e!14806 () Bool)

(assert (=> b!32932 (= e!14803 e!14806)))

(declare-fun b!32933 () Bool)

(declare-fun tp!22691 () Bool)

(declare-fun mapRes!156 () Bool)

(assert (=> b!32933 (= e!14814 (and tp!22691 mapRes!156))))

(declare-fun condMapEmpty!156 () Bool)

(declare-fun mapDefault!155 () List!259)

(assert (=> b!32933 (= condMapEmpty!156 (= (arr!92 (_values!317 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!259)) mapDefault!155)))))

(declare-fun mapNonEmpty!155 () Bool)

(declare-fun tp!22693 () Bool)

(declare-fun tp!22696 () Bool)

(assert (=> mapNonEmpty!155 (= mapRes!156 (and tp!22693 tp!22696))))

(declare-fun mapKey!155 () (_ BitVec 32))

(declare-fun mapValue!156 () List!259)

(declare-fun mapRest!155 () (Array (_ BitVec 32) List!259))

(assert (=> mapNonEmpty!155 (= (arr!92 (_values!317 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))) (store mapRest!155 mapKey!155 mapValue!156))))

(declare-fun mapNonEmpty!156 () Bool)

(declare-fun mapRes!155 () Bool)

(declare-fun tp!22694 () Bool)

(declare-fun tp!22687 () Bool)

(assert (=> mapNonEmpty!156 (= mapRes!155 (and tp!22694 tp!22687))))

(declare-fun mapKey!156 () (_ BitVec 32))

(declare-fun mapValue!155 () List!258)

(declare-fun mapRest!156 () (Array (_ BitVec 32) List!258))

(assert (=> mapNonEmpty!156 (= (arr!91 (_values!316 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))) (store mapRest!156 mapKey!156 mapValue!155))))

(declare-fun e!14818 () Bool)

(declare-fun tp!22699 () Bool)

(declare-fun tp!22698 () Bool)

(declare-fun array_inv!48 (array!135) Bool)

(assert (=> b!32934 (= e!14806 (and tp!22692 tp!22699 tp!22698 (array_inv!46 (_keys!327 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))) (array_inv!48 (_values!316 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))) e!14818))))

(declare-fun b!32935 () Bool)

(declare-fun e!14811 () Bool)

(declare-fun e!14815 () Bool)

(assert (=> b!32935 (= e!14811 e!14815)))

(declare-fun b!32936 () Bool)

(declare-fun e!14809 () Bool)

(declare-fun lt!1875 () MutLongMap!40)

(assert (=> b!32936 (= e!14809 (and e!14811 ((_ is LongMap!40) lt!1875)))))

(assert (=> b!32936 (= lt!1875 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))

(declare-fun e!14804 () Bool)

(assert (=> b!32937 (= e!14804 (and e!14809 tp!22688))))

(declare-fun b!32938 () Bool)

(assert (=> b!32938 (= e!14813 e!14804)))

(declare-fun b!32939 () Bool)

(declare-fun e!14816 () Bool)

(declare-fun lt!1874 () MutLongMap!39)

(assert (=> b!32939 (= e!14808 (and e!14816 ((_ is LongMap!39) lt!1874)))))

(assert (=> b!32939 (= lt!1874 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))

(declare-fun b!32940 () Bool)

(assert (=> b!32940 (= e!14816 e!14803)))

(declare-fun b!32941 () Bool)

(assert (=> b!32941 (= e!14815 e!14810)))

(declare-fun b!32942 () Bool)

(declare-fun res!27094 () Bool)

(assert (=> b!32942 (=> (not res!27094) (not e!14798))))

(declare-datatypes ((String!678 0))(
  ( (String!679 (value!6018 String)) )
))
(declare-datatypes ((List!260 0))(
  ( (Nil!258) (Cons!258 (h!5654 (_ BitVec 16)) (t!14850 List!260)) )
))
(declare-datatypes ((TokenValue!107 0))(
  ( (FloatLiteralValue!214 (text!1194 List!260)) (TokenValueExt!106 (__x!533 Int)) (Broken!535 (value!6019 List!260)) (Object!108) (End!107) (Def!107) (Underscore!107) (Match!107) (Else!107) (Error!107) (Case!107) (If!107) (Extends!107) (Abstract!107) (Class!107) (Val!107) (DelimiterValue!214 (del!167 List!260)) (KeywordValue!113 (value!6020 List!260)) (CommentValue!214 (value!6021 List!260)) (WhitespaceValue!214 (value!6022 List!260)) (IndentationValue!107 (value!6023 List!260)) (String!680) (Int32!107) (Broken!536 (value!6024 List!260)) (Boolean!108) (Unit!120) (OperatorValue!110 (op!167 List!260)) (IdentifierValue!214 (value!6025 List!260)) (IdentifierValue!215 (value!6026 List!260)) (WhitespaceValue!215 (value!6027 List!260)) (True!214) (False!214) (Broken!537 (value!6028 List!260)) (Broken!538 (value!6029 List!260)) (True!215) (RightBrace!107) (RightBracket!107) (Colon!107) (Null!107) (Comma!107) (LeftBracket!107) (False!215) (LeftBrace!107) (ImaginaryLiteralValue!107 (text!1195 List!260)) (StringLiteralValue!321 (value!6030 List!260)) (EOFValue!107 (value!6031 List!260)) (IdentValue!107 (value!6032 List!260)) (DelimiterValue!215 (value!6033 List!260)) (DedentValue!107 (value!6034 List!260)) (NewLineValue!107 (value!6035 List!260)) (IntegerValue!321 (value!6036 (_ BitVec 32)) (text!1196 List!260)) (IntegerValue!322 (value!6037 Int) (text!1197 List!260)) (Times!107) (Or!107) (Equal!107) (Minus!107) (Broken!539 (value!6038 List!260)) (And!107) (Div!107) (LessEqual!107) (Mod!107) (Concat!249) (Not!107) (Plus!107) (SpaceValue!107 (value!6039 List!260)) (IntegerValue!323 (value!6040 Int) (text!1198 List!260)) (StringLiteralValue!322 (text!1199 List!260)) (FloatLiteralValue!215 (text!1200 List!260)) (BytesLiteralValue!107 (value!6041 List!260)) (CommentValue!215 (value!6042 List!260)) (StringLiteralValue!323 (value!6043 List!260)) (ErrorTokenValue!107 (msg!168 List!260)) )
))
(declare-datatypes ((TokenValueInjection!38 0))(
  ( (TokenValueInjection!39 (toValue!594 Int) (toChars!453 Int)) )
))
(declare-datatypes ((Rule!34 0))(
  ( (Rule!35 (regex!117 Regex!141) (tag!295 String!678) (isSeparator!117 Bool) (transformation!117 TokenValueInjection!38)) )
))
(declare-datatypes ((List!261 0))(
  ( (Nil!259) (Cons!259 (h!5655 Rule!34) (t!14851 List!261)) )
))
(declare-fun rules!1369 () List!261)

(declare-fun rulesInvariant!12 (LexerInterface!19 List!261) Bool)

(assert (=> b!32942 (= res!27094 (rulesInvariant!12 thiss!12222 rules!1369))))

(declare-fun mapIsEmpty!155 () Bool)

(assert (=> mapIsEmpty!155 mapRes!156))

(declare-fun e!14800 () Bool)

(assert (=> b!32943 (= e!14800 (and tp!22684 tp!22690))))

(declare-fun b!32944 () Bool)

(declare-fun res!27096 () Bool)

(assert (=> b!32944 (=> (not res!27096) (not e!14798))))

(declare-fun isEmpty!74 (List!261) Bool)

(assert (=> b!32944 (= res!27096 (not (isEmpty!74 rules!1369)))))

(declare-fun b!32945 () Bool)

(declare-fun res!27093 () Bool)

(assert (=> b!32945 (=> (not res!27093) (not e!14798))))

(declare-fun valid!49 (CacheUp!36) Bool)

(assert (=> b!32945 (= res!27093 (valid!49 cacheUp!472))))

(declare-fun b!32946 () Bool)

(assert (=> b!32946 (= e!14799 e!14819)))

(declare-fun b!32947 () Bool)

(declare-fun e!14812 () Bool)

(declare-fun tp!22689 () Bool)

(assert (=> b!32947 (= e!14802 (and e!14812 tp!22689))))

(declare-fun b!32948 () Bool)

(declare-fun tp!22695 () Bool)

(declare-fun inv!561 (Conc!39) Bool)

(assert (=> b!32948 (= e!14805 (and (inv!561 (c!15277 input!768)) tp!22695))))

(declare-fun b!32949 () Bool)

(declare-fun res!27092 () Bool)

(assert (=> b!32949 (=> (not res!27092) (not e!14798))))

(declare-fun valid!50 (CacheDown!38) Bool)

(assert (=> b!32949 (= res!27092 (valid!50 cacheDown!485))))

(declare-fun b!32950 () Bool)

(declare-fun size!322 (BalanceConc!78) Int)

(assert (=> b!32950 (= e!14798 (< (size!322 input!768) 0))))

(declare-fun b!32951 () Bool)

(declare-fun tp!22702 () Bool)

(assert (=> b!32951 (= e!14818 (and tp!22702 mapRes!155))))

(declare-fun condMapEmpty!155 () Bool)

(declare-fun mapDefault!156 () List!258)

(assert (=> b!32951 (= condMapEmpty!155 (= (arr!91 (_values!316 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!258)) mapDefault!156)))))

(declare-fun mapIsEmpty!156 () Bool)

(assert (=> mapIsEmpty!156 mapRes!155))

(declare-fun tp!22686 () Bool)

(declare-fun b!32952 () Bool)

(declare-fun inv!554 (String!678) Bool)

(declare-fun inv!562 (TokenValueInjection!38) Bool)

(assert (=> b!32952 (= e!14812 (and tp!22686 (inv!554 (tag!295 (h!5655 rules!1369))) (inv!562 (transformation!117 (h!5655 rules!1369))) e!14800))))

(assert (= (and start!1486 res!27095) b!32944))

(assert (= (and b!32944 res!27096) b!32942))

(assert (= (and b!32942 res!27094) b!32945))

(assert (= (and b!32945 res!27093) b!32949))

(assert (= (and b!32949 res!27092) b!32950))

(assert (= start!1486 b!32948))

(assert (= (and b!32951 condMapEmpty!155) mapIsEmpty!156))

(assert (= (and b!32951 (not condMapEmpty!155)) mapNonEmpty!156))

(assert (= b!32934 b!32951))

(assert (= b!32932 b!32934))

(assert (= b!32940 b!32932))

(assert (= (and b!32939 ((_ is LongMap!39) (v!12041 (underlying!278 (cache!518 cacheUp!472))))) b!32940))

(assert (= b!32931 b!32939))

(assert (= (and b!32946 ((_ is HashMap!39) (cache!518 cacheUp!472))) b!32931))

(assert (= start!1486 b!32946))

(assert (= (and b!32933 condMapEmpty!156) mapIsEmpty!155))

(assert (= (and b!32933 (not condMapEmpty!156)) mapNonEmpty!155))

(assert (= b!32930 b!32933))

(assert (= b!32941 b!32930))

(assert (= b!32935 b!32941))

(assert (= (and b!32936 ((_ is LongMap!40) (v!12043 (underlying!280 (cache!519 cacheDown!485))))) b!32935))

(assert (= b!32937 b!32936))

(assert (= (and b!32938 ((_ is HashMap!40) (cache!519 cacheDown!485))) b!32937))

(assert (= start!1486 b!32938))

(assert (= b!32952 b!32943))

(assert (= b!32947 b!32952))

(assert (= (and start!1486 ((_ is Cons!259) rules!1369)) b!32947))

(declare-fun m!8915 () Bool)

(assert (=> b!32942 m!8915))

(declare-fun m!8917 () Bool)

(assert (=> b!32948 m!8917))

(declare-fun m!8919 () Bool)

(assert (=> mapNonEmpty!156 m!8919))

(declare-fun m!8921 () Bool)

(assert (=> b!32950 m!8921))

(declare-fun m!8923 () Bool)

(assert (=> b!32944 m!8923))

(declare-fun m!8925 () Bool)

(assert (=> b!32952 m!8925))

(declare-fun m!8927 () Bool)

(assert (=> b!32952 m!8927))

(declare-fun m!8929 () Bool)

(assert (=> b!32945 m!8929))

(declare-fun m!8931 () Bool)

(assert (=> b!32930 m!8931))

(declare-fun m!8933 () Bool)

(assert (=> b!32930 m!8933))

(declare-fun m!8935 () Bool)

(assert (=> b!32934 m!8935))

(declare-fun m!8937 () Bool)

(assert (=> b!32934 m!8937))

(declare-fun m!8939 () Bool)

(assert (=> start!1486 m!8939))

(declare-fun m!8941 () Bool)

(assert (=> start!1486 m!8941))

(declare-fun m!8943 () Bool)

(assert (=> start!1486 m!8943))

(declare-fun m!8945 () Bool)

(assert (=> b!32949 m!8945))

(declare-fun m!8947 () Bool)

(assert (=> mapNonEmpty!155 m!8947))

(check-sat (not b!32949) (not b!32944) b_and!263 (not b!32934) (not b_next!257) b_and!265 (not b!32942) (not b!32950) (not b_next!259) (not b!32930) b_and!261 (not mapNonEmpty!155) (not b_next!265) (not mapNonEmpty!156) (not b!32947) b_and!267 b_and!257 (not start!1486) (not b!32933) b_and!259 (not b!32952) (not b!32951) (not b!32948) (not b!32945) (not b_next!267) (not b_next!263) (not b_next!261))
(check-sat b_and!263 (not b_next!257) b_and!265 b_and!259 (not b_next!259) b_and!261 (not b_next!265) (not b_next!267) b_and!267 b_and!257 (not b_next!263) (not b_next!261))
(get-model)

(declare-fun d!3243 () Bool)

(assert (=> d!3243 (= (inv!554 (tag!295 (h!5655 rules!1369))) (= (mod (str.len (value!6018 (tag!295 (h!5655 rules!1369)))) 2) 0))))

(assert (=> b!32952 d!3243))

(declare-fun d!3245 () Bool)

(declare-fun res!27099 () Bool)

(declare-fun e!14822 () Bool)

(assert (=> d!3245 (=> (not res!27099) (not e!14822))))

(declare-fun semiInverseModEq!13 (Int Int) Bool)

(assert (=> d!3245 (= res!27099 (semiInverseModEq!13 (toChars!453 (transformation!117 (h!5655 rules!1369))) (toValue!594 (transformation!117 (h!5655 rules!1369)))))))

(assert (=> d!3245 (= (inv!562 (transformation!117 (h!5655 rules!1369))) e!14822)))

(declare-fun b!32955 () Bool)

(declare-fun equivClasses!9 (Int Int) Bool)

(assert (=> b!32955 (= e!14822 (equivClasses!9 (toChars!453 (transformation!117 (h!5655 rules!1369))) (toValue!594 (transformation!117 (h!5655 rules!1369)))))))

(assert (= (and d!3245 res!27099) b!32955))

(declare-fun m!8949 () Bool)

(assert (=> d!3245 m!8949))

(declare-fun m!8951 () Bool)

(assert (=> b!32955 m!8951))

(assert (=> b!32952 d!3245))

(declare-fun d!3247 () Bool)

(declare-fun c!15281 () Bool)

(assert (=> d!3247 (= c!15281 ((_ is Node!39) (c!15277 input!768)))))

(declare-fun e!14827 () Bool)

(assert (=> d!3247 (= (inv!561 (c!15277 input!768)) e!14827)))

(declare-fun b!32962 () Bool)

(declare-fun inv!563 (Conc!39) Bool)

(assert (=> b!32962 (= e!14827 (inv!563 (c!15277 input!768)))))

(declare-fun b!32963 () Bool)

(declare-fun e!14828 () Bool)

(assert (=> b!32963 (= e!14827 e!14828)))

(declare-fun res!27102 () Bool)

(assert (=> b!32963 (= res!27102 (not ((_ is Leaf!174) (c!15277 input!768))))))

(assert (=> b!32963 (=> res!27102 e!14828)))

(declare-fun b!32964 () Bool)

(declare-fun inv!564 (Conc!39) Bool)

(assert (=> b!32964 (= e!14828 (inv!564 (c!15277 input!768)))))

(assert (= (and d!3247 c!15281) b!32962))

(assert (= (and d!3247 (not c!15281)) b!32963))

(assert (= (and b!32963 (not res!27102)) b!32964))

(declare-fun m!8953 () Bool)

(assert (=> b!32962 m!8953))

(declare-fun m!8955 () Bool)

(assert (=> b!32964 m!8955))

(assert (=> b!32948 d!3247))

(declare-fun d!3249 () Bool)

(declare-fun isBalanced!13 (Conc!39) Bool)

(assert (=> d!3249 (= (inv!558 input!768) (isBalanced!13 (c!15277 input!768)))))

(declare-fun bs!4174 () Bool)

(assert (= bs!4174 d!3249))

(declare-fun m!8957 () Bool)

(assert (=> bs!4174 m!8957))

(assert (=> start!1486 d!3249))

(declare-fun d!3251 () Bool)

(declare-fun res!27105 () Bool)

(declare-fun e!14831 () Bool)

(assert (=> d!3251 (=> (not res!27105) (not e!14831))))

(assert (=> d!3251 (= res!27105 ((_ is HashMap!39) (cache!518 cacheUp!472)))))

(assert (=> d!3251 (= (inv!559 cacheUp!472) e!14831)))

(declare-fun b!32967 () Bool)

(declare-fun validCacheMapUp!5 (MutableMap!39) Bool)

(assert (=> b!32967 (= e!14831 (validCacheMapUp!5 (cache!518 cacheUp!472)))))

(assert (= (and d!3251 res!27105) b!32967))

(declare-fun m!8959 () Bool)

(assert (=> b!32967 m!8959))

(assert (=> start!1486 d!3251))

(declare-fun d!3253 () Bool)

(declare-fun res!27108 () Bool)

(declare-fun e!14834 () Bool)

(assert (=> d!3253 (=> (not res!27108) (not e!14834))))

(assert (=> d!3253 (= res!27108 ((_ is HashMap!40) (cache!519 cacheDown!485)))))

(assert (=> d!3253 (= (inv!560 cacheDown!485) e!14834)))

(declare-fun b!32970 () Bool)

(declare-fun validCacheMapDown!5 (MutableMap!40) Bool)

(assert (=> b!32970 (= e!14834 (validCacheMapDown!5 (cache!519 cacheDown!485)))))

(assert (= (and d!3253 res!27108) b!32970))

(declare-fun m!8961 () Bool)

(assert (=> b!32970 m!8961))

(assert (=> start!1486 d!3253))

(declare-fun d!3255 () Bool)

(assert (=> d!3255 (= (array_inv!46 (_keys!328 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))) (bvsge (size!319 (_keys!328 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!32930 d!3255))

(declare-fun d!3257 () Bool)

(assert (=> d!3257 (= (array_inv!47 (_values!317 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))) (bvsge (size!321 (_values!317 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!32930 d!3257))

(declare-fun d!3259 () Bool)

(declare-fun res!27111 () Bool)

(declare-fun e!14837 () Bool)

(assert (=> d!3259 (=> (not res!27111) (not e!14837))))

(declare-fun rulesValid!5 (LexerInterface!19 List!261) Bool)

(assert (=> d!3259 (= res!27111 (rulesValid!5 thiss!12222 rules!1369))))

(assert (=> d!3259 (= (rulesInvariant!12 thiss!12222 rules!1369) e!14837)))

(declare-fun b!32973 () Bool)

(declare-datatypes ((List!262 0))(
  ( (Nil!260) (Cons!260 (h!5656 String!678) (t!14852 List!262)) )
))
(declare-fun noDuplicateTag!5 (LexerInterface!19 List!261 List!262) Bool)

(assert (=> b!32973 (= e!14837 (noDuplicateTag!5 thiss!12222 rules!1369 Nil!260))))

(assert (= (and d!3259 res!27111) b!32973))

(declare-fun m!8963 () Bool)

(assert (=> d!3259 m!8963))

(declare-fun m!8965 () Bool)

(assert (=> b!32973 m!8965))

(assert (=> b!32942 d!3259))

(declare-fun d!3261 () Bool)

(declare-fun lt!1878 () Int)

(declare-fun size!323 (List!256) Int)

(declare-fun list!107 (BalanceConc!78) List!256)

(assert (=> d!3261 (= lt!1878 (size!323 (list!107 input!768)))))

(declare-fun size!324 (Conc!39) Int)

(assert (=> d!3261 (= lt!1878 (size!324 (c!15277 input!768)))))

(assert (=> d!3261 (= (size!322 input!768) lt!1878)))

(declare-fun bs!4175 () Bool)

(assert (= bs!4175 d!3261))

(declare-fun m!8967 () Bool)

(assert (=> bs!4175 m!8967))

(assert (=> bs!4175 m!8967))

(declare-fun m!8969 () Bool)

(assert (=> bs!4175 m!8969))

(declare-fun m!8971 () Bool)

(assert (=> bs!4175 m!8971))

(assert (=> b!32950 d!3261))

(declare-fun d!3263 () Bool)

(assert (=> d!3263 (= (valid!49 cacheUp!472) (validCacheMapUp!5 (cache!518 cacheUp!472)))))

(declare-fun bs!4176 () Bool)

(assert (= bs!4176 d!3263))

(assert (=> bs!4176 m!8959))

(assert (=> b!32945 d!3263))

(declare-fun d!3265 () Bool)

(assert (=> d!3265 (= (valid!50 cacheDown!485) (validCacheMapDown!5 (cache!519 cacheDown!485)))))

(declare-fun bs!4177 () Bool)

(assert (= bs!4177 d!3265))

(assert (=> bs!4177 m!8961))

(assert (=> b!32949 d!3265))

(declare-fun d!3267 () Bool)

(assert (=> d!3267 (= (array_inv!46 (_keys!327 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))) (bvsge (size!319 (_keys!327 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!32934 d!3267))

(declare-fun d!3269 () Bool)

(assert (=> d!3269 (= (array_inv!48 (_values!316 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))) (bvsge (size!320 (_values!316 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!32934 d!3269))

(declare-fun d!3271 () Bool)

(assert (=> d!3271 (= (isEmpty!74 rules!1369) ((_ is Nil!259) rules!1369))))

(assert (=> b!32944 d!3271))

(declare-fun b!32984 () Bool)

(declare-fun e!14840 () Bool)

(declare-fun tp_is_empty!297 () Bool)

(assert (=> b!32984 (= e!14840 tp_is_empty!297)))

(declare-fun b!32985 () Bool)

(declare-fun tp!22713 () Bool)

(declare-fun tp!22717 () Bool)

(assert (=> b!32985 (= e!14840 (and tp!22713 tp!22717))))

(declare-fun b!32987 () Bool)

(declare-fun tp!22714 () Bool)

(declare-fun tp!22716 () Bool)

(assert (=> b!32987 (= e!14840 (and tp!22714 tp!22716))))

(declare-fun b!32986 () Bool)

(declare-fun tp!22715 () Bool)

(assert (=> b!32986 (= e!14840 tp!22715)))

(assert (=> b!32952 (= tp!22686 e!14840)))

(assert (= (and b!32952 ((_ is ElementMatch!141) (regex!117 (h!5655 rules!1369)))) b!32984))

(assert (= (and b!32952 ((_ is Concat!248) (regex!117 (h!5655 rules!1369)))) b!32985))

(assert (= (and b!32952 ((_ is Star!141) (regex!117 (h!5655 rules!1369)))) b!32986))

(assert (= (and b!32952 ((_ is Union!141) (regex!117 (h!5655 rules!1369)))) b!32987))

(declare-fun e!14846 () Bool)

(declare-fun tp!22725 () Bool)

(declare-fun b!32996 () Bool)

(declare-fun tp!22724 () Bool)

(assert (=> b!32996 (= e!14846 (and (inv!561 (left!365 (c!15277 input!768))) tp!22725 (inv!561 (right!695 (c!15277 input!768))) tp!22724))))

(declare-fun b!32998 () Bool)

(declare-fun e!14845 () Bool)

(declare-fun tp!22726 () Bool)

(assert (=> b!32998 (= e!14845 tp!22726)))

(declare-fun b!32997 () Bool)

(declare-fun inv!565 (IArray!79) Bool)

(assert (=> b!32997 (= e!14846 (and (inv!565 (xs!2618 (c!15277 input!768))) e!14845))))

(assert (=> b!32948 (= tp!22695 (and (inv!561 (c!15277 input!768)) e!14846))))

(assert (= (and b!32948 ((_ is Node!39) (c!15277 input!768))) b!32996))

(assert (= b!32997 b!32998))

(assert (= (and b!32948 ((_ is Leaf!174) (c!15277 input!768))) b!32997))

(declare-fun m!8973 () Bool)

(assert (=> b!32996 m!8973))

(declare-fun m!8975 () Bool)

(assert (=> b!32996 m!8975))

(declare-fun m!8977 () Bool)

(assert (=> b!32997 m!8977))

(assert (=> b!32948 m!8917))

(declare-fun setElem!269 () Context!46)

(declare-fun tp!22747 () Bool)

(declare-fun e!14862 () Bool)

(declare-fun setRes!269 () Bool)

(declare-fun setNonEmpty!268 () Bool)

(declare-fun inv!566 (Context!46) Bool)

(assert (=> setNonEmpty!268 (= setRes!269 (and tp!22747 (inv!566 setElem!269) e!14862))))

(declare-fun mapDefault!159 () List!258)

(declare-fun setRest!268 () (InoxSet Context!46))

(assert (=> setNonEmpty!268 (= (_2!97 (h!5652 mapDefault!159)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!269 true) setRest!268))))

(declare-fun mapIsEmpty!159 () Bool)

(declare-fun mapRes!159 () Bool)

(assert (=> mapIsEmpty!159 mapRes!159))

(declare-fun mapNonEmpty!159 () Bool)

(declare-fun tp!22753 () Bool)

(declare-fun e!14860 () Bool)

(assert (=> mapNonEmpty!159 (= mapRes!159 (and tp!22753 e!14860))))

(declare-fun mapRest!159 () (Array (_ BitVec 32) List!258))

(declare-fun mapValue!159 () List!258)

(declare-fun mapKey!159 () (_ BitVec 32))

(assert (=> mapNonEmpty!159 (= mapRest!156 (store mapRest!159 mapKey!159 mapValue!159))))

(declare-fun b!33013 () Bool)

(declare-fun e!14859 () Bool)

(declare-fun e!14863 () Bool)

(declare-fun tp!22746 () Bool)

(assert (=> b!33013 (= e!14859 (and (inv!566 (_1!96 (_1!97 (h!5652 mapDefault!159)))) e!14863 tp_is_empty!297 setRes!269 tp!22746))))

(declare-fun condSetEmpty!269 () Bool)

(assert (=> b!33013 (= condSetEmpty!269 (= (_2!97 (h!5652 mapDefault!159)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33014 () Bool)

(declare-fun setRes!268 () Bool)

(declare-fun e!14861 () Bool)

(declare-fun tp!22752 () Bool)

(assert (=> b!33014 (= e!14860 (and (inv!566 (_1!96 (_1!97 (h!5652 mapValue!159)))) e!14861 tp_is_empty!297 setRes!268 tp!22752))))

(declare-fun condSetEmpty!268 () Bool)

(assert (=> b!33014 (= condSetEmpty!268 (= (_2!97 (h!5652 mapValue!159)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun setNonEmpty!269 () Bool)

(declare-fun setElem!268 () Context!46)

(declare-fun e!14864 () Bool)

(declare-fun tp!22751 () Bool)

(assert (=> setNonEmpty!269 (= setRes!268 (and tp!22751 (inv!566 setElem!268) e!14864))))

(declare-fun setRest!269 () (InoxSet Context!46))

(assert (=> setNonEmpty!269 (= (_2!97 (h!5652 mapValue!159)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!268 true) setRest!269))))

(declare-fun setIsEmpty!268 () Bool)

(assert (=> setIsEmpty!268 setRes!268))

(declare-fun b!33015 () Bool)

(declare-fun tp!22749 () Bool)

(assert (=> b!33015 (= e!14862 tp!22749)))

(declare-fun condMapEmpty!159 () Bool)

(assert (=> mapNonEmpty!156 (= condMapEmpty!159 (= mapRest!156 ((as const (Array (_ BitVec 32) List!258)) mapDefault!159)))))

(assert (=> mapNonEmpty!156 (= tp!22694 (and e!14859 mapRes!159))))

(declare-fun b!33016 () Bool)

(declare-fun tp!22748 () Bool)

(assert (=> b!33016 (= e!14863 tp!22748)))

(declare-fun b!33017 () Bool)

(declare-fun tp!22745 () Bool)

(assert (=> b!33017 (= e!14861 tp!22745)))

(declare-fun setIsEmpty!269 () Bool)

(assert (=> setIsEmpty!269 setRes!269))

(declare-fun b!33018 () Bool)

(declare-fun tp!22750 () Bool)

(assert (=> b!33018 (= e!14864 tp!22750)))

(assert (= (and mapNonEmpty!156 condMapEmpty!159) mapIsEmpty!159))

(assert (= (and mapNonEmpty!156 (not condMapEmpty!159)) mapNonEmpty!159))

(assert (= b!33014 b!33017))

(assert (= (and b!33014 condSetEmpty!268) setIsEmpty!268))

(assert (= (and b!33014 (not condSetEmpty!268)) setNonEmpty!269))

(assert (= setNonEmpty!269 b!33018))

(assert (= (and mapNonEmpty!159 ((_ is Cons!256) mapValue!159)) b!33014))

(assert (= b!33013 b!33016))

(assert (= (and b!33013 condSetEmpty!269) setIsEmpty!269))

(assert (= (and b!33013 (not condSetEmpty!269)) setNonEmpty!268))

(assert (= setNonEmpty!268 b!33015))

(assert (= (and mapNonEmpty!156 ((_ is Cons!256) mapDefault!159)) b!33013))

(declare-fun m!8979 () Bool)

(assert (=> b!33013 m!8979))

(declare-fun m!8981 () Bool)

(assert (=> b!33014 m!8981))

(declare-fun m!8983 () Bool)

(assert (=> setNonEmpty!268 m!8983))

(declare-fun m!8985 () Bool)

(assert (=> mapNonEmpty!159 m!8985))

(declare-fun m!8987 () Bool)

(assert (=> setNonEmpty!269 m!8987))

(declare-fun setRes!272 () Bool)

(declare-fun tp!22765 () Bool)

(declare-fun setNonEmpty!272 () Bool)

(declare-fun setElem!272 () Context!46)

(declare-fun e!14871 () Bool)

(assert (=> setNonEmpty!272 (= setRes!272 (and tp!22765 (inv!566 setElem!272) e!14871))))

(declare-fun setRest!272 () (InoxSet Context!46))

(assert (=> setNonEmpty!272 (= (_2!97 (h!5652 mapValue!155)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!272 true) setRest!272))))

(declare-fun b!33027 () Bool)

(declare-fun tp!22764 () Bool)

(assert (=> b!33027 (= e!14871 tp!22764)))

(declare-fun e!14873 () Bool)

(assert (=> mapNonEmpty!156 (= tp!22687 e!14873)))

(declare-fun b!33028 () Bool)

(declare-fun e!14872 () Bool)

(declare-fun tp!22763 () Bool)

(assert (=> b!33028 (= e!14873 (and (inv!566 (_1!96 (_1!97 (h!5652 mapValue!155)))) e!14872 tp_is_empty!297 setRes!272 tp!22763))))

(declare-fun condSetEmpty!272 () Bool)

(assert (=> b!33028 (= condSetEmpty!272 (= (_2!97 (h!5652 mapValue!155)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33029 () Bool)

(declare-fun tp!22762 () Bool)

(assert (=> b!33029 (= e!14872 tp!22762)))

(declare-fun setIsEmpty!272 () Bool)

(assert (=> setIsEmpty!272 setRes!272))

(assert (= b!33028 b!33029))

(assert (= (and b!33028 condSetEmpty!272) setIsEmpty!272))

(assert (= (and b!33028 (not condSetEmpty!272)) setNonEmpty!272))

(assert (= setNonEmpty!272 b!33027))

(assert (= (and mapNonEmpty!156 ((_ is Cons!256) mapValue!155)) b!33028))

(declare-fun m!8989 () Bool)

(assert (=> setNonEmpty!272 m!8989))

(declare-fun m!8991 () Bool)

(assert (=> b!33028 m!8991))

(declare-fun b!33038 () Bool)

(declare-fun e!14880 () Bool)

(declare-fun tp!22780 () Bool)

(assert (=> b!33038 (= e!14880 tp!22780)))

(declare-fun tp!22779 () Bool)

(declare-fun tp!22777 () Bool)

(declare-fun b!33039 () Bool)

(declare-fun e!14882 () Bool)

(declare-fun setRes!275 () Bool)

(assert (=> b!33039 (= e!14882 (and tp!22779 (inv!566 (_2!98 (_1!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))))) e!14880 tp_is_empty!297 setRes!275 tp!22777))))

(declare-fun condSetEmpty!275 () Bool)

(assert (=> b!33039 (= condSetEmpty!275 (= (_2!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))) ((as const (Array Context!46 Bool)) false)))))

(assert (=> b!32930 (= tp!22700 e!14882)))

(declare-fun setNonEmpty!275 () Bool)

(declare-fun e!14881 () Bool)

(declare-fun setElem!275 () Context!46)

(declare-fun tp!22778 () Bool)

(assert (=> setNonEmpty!275 (= setRes!275 (and tp!22778 (inv!566 setElem!275) e!14881))))

(declare-fun setRest!275 () (InoxSet Context!46))

(assert (=> setNonEmpty!275 (= (_2!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!275 true) setRest!275))))

(declare-fun setIsEmpty!275 () Bool)

(assert (=> setIsEmpty!275 setRes!275))

(declare-fun b!33040 () Bool)

(declare-fun tp!22776 () Bool)

(assert (=> b!33040 (= e!14881 tp!22776)))

(assert (= b!33039 b!33038))

(assert (= (and b!33039 condSetEmpty!275) setIsEmpty!275))

(assert (= (and b!33039 (not condSetEmpty!275)) setNonEmpty!275))

(assert (= setNonEmpty!275 b!33040))

(assert (= (and b!32930 ((_ is Cons!257) (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))) b!33039))

(declare-fun m!8993 () Bool)

(assert (=> b!33039 m!8993))

(declare-fun m!8995 () Bool)

(assert (=> setNonEmpty!275 m!8995))

(declare-fun b!33041 () Bool)

(declare-fun e!14883 () Bool)

(declare-fun tp!22785 () Bool)

(assert (=> b!33041 (= e!14883 tp!22785)))

(declare-fun tp!22784 () Bool)

(declare-fun tp!22782 () Bool)

(declare-fun setRes!276 () Bool)

(declare-fun e!14885 () Bool)

(declare-fun b!33042 () Bool)

(assert (=> b!33042 (= e!14885 (and tp!22784 (inv!566 (_2!98 (_1!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))))) e!14883 tp_is_empty!297 setRes!276 tp!22782))))

(declare-fun condSetEmpty!276 () Bool)

(assert (=> b!33042 (= condSetEmpty!276 (= (_2!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))) ((as const (Array Context!46 Bool)) false)))))

(assert (=> b!32930 (= tp!22697 e!14885)))

(declare-fun setNonEmpty!276 () Bool)

(declare-fun setElem!276 () Context!46)

(declare-fun tp!22783 () Bool)

(declare-fun e!14884 () Bool)

(assert (=> setNonEmpty!276 (= setRes!276 (and tp!22783 (inv!566 setElem!276) e!14884))))

(declare-fun setRest!276 () (InoxSet Context!46))

(assert (=> setNonEmpty!276 (= (_2!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!276 true) setRest!276))))

(declare-fun setIsEmpty!276 () Bool)

(assert (=> setIsEmpty!276 setRes!276))

(declare-fun b!33043 () Bool)

(declare-fun tp!22781 () Bool)

(assert (=> b!33043 (= e!14884 tp!22781)))

(assert (= b!33042 b!33041))

(assert (= (and b!33042 condSetEmpty!276) setIsEmpty!276))

(assert (= (and b!33042 (not condSetEmpty!276)) setNonEmpty!276))

(assert (= setNonEmpty!276 b!33043))

(assert (= (and b!32930 ((_ is Cons!257) (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))) b!33042))

(declare-fun m!8997 () Bool)

(assert (=> b!33042 m!8997))

(declare-fun m!8999 () Bool)

(assert (=> setNonEmpty!276 m!8999))

(declare-fun b!33044 () Bool)

(declare-fun e!14886 () Bool)

(declare-fun tp!22790 () Bool)

(assert (=> b!33044 (= e!14886 tp!22790)))

(declare-fun setRes!277 () Bool)

(declare-fun tp!22789 () Bool)

(declare-fun e!14888 () Bool)

(declare-fun tp!22787 () Bool)

(declare-fun b!33045 () Bool)

(assert (=> b!33045 (= e!14888 (and tp!22789 (inv!566 (_2!98 (_1!99 (h!5653 mapDefault!155)))) e!14886 tp_is_empty!297 setRes!277 tp!22787))))

(declare-fun condSetEmpty!277 () Bool)

(assert (=> b!33045 (= condSetEmpty!277 (= (_2!99 (h!5653 mapDefault!155)) ((as const (Array Context!46 Bool)) false)))))

(assert (=> b!32933 (= tp!22691 e!14888)))

(declare-fun tp!22788 () Bool)

(declare-fun setElem!277 () Context!46)

(declare-fun e!14887 () Bool)

(declare-fun setNonEmpty!277 () Bool)

(assert (=> setNonEmpty!277 (= setRes!277 (and tp!22788 (inv!566 setElem!277) e!14887))))

(declare-fun setRest!277 () (InoxSet Context!46))

(assert (=> setNonEmpty!277 (= (_2!99 (h!5653 mapDefault!155)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!277 true) setRest!277))))

(declare-fun setIsEmpty!277 () Bool)

(assert (=> setIsEmpty!277 setRes!277))

(declare-fun b!33046 () Bool)

(declare-fun tp!22786 () Bool)

(assert (=> b!33046 (= e!14887 tp!22786)))

(assert (= b!33045 b!33044))

(assert (= (and b!33045 condSetEmpty!277) setIsEmpty!277))

(assert (= (and b!33045 (not condSetEmpty!277)) setNonEmpty!277))

(assert (= setNonEmpty!277 b!33046))

(assert (= (and b!32933 ((_ is Cons!257) mapDefault!155)) b!33045))

(declare-fun m!9001 () Bool)

(assert (=> b!33045 m!9001))

(declare-fun m!9003 () Bool)

(assert (=> setNonEmpty!277 m!9003))

(declare-fun mapIsEmpty!162 () Bool)

(declare-fun mapRes!162 () Bool)

(assert (=> mapIsEmpty!162 mapRes!162))

(declare-fun b!33061 () Bool)

(declare-fun e!14906 () Bool)

(declare-fun tp!22820 () Bool)

(assert (=> b!33061 (= e!14906 tp!22820)))

(declare-fun setIsEmpty!282 () Bool)

(declare-fun setRes!283 () Bool)

(assert (=> setIsEmpty!282 setRes!283))

(declare-fun setRes!282 () Bool)

(declare-fun tp!22816 () Bool)

(declare-fun b!33062 () Bool)

(declare-fun e!14901 () Bool)

(declare-fun mapDefault!162 () List!259)

(declare-fun tp!22822 () Bool)

(assert (=> b!33062 (= e!14901 (and tp!22816 (inv!566 (_2!98 (_1!99 (h!5653 mapDefault!162)))) e!14906 tp_is_empty!297 setRes!282 tp!22822))))

(declare-fun condSetEmpty!283 () Bool)

(assert (=> b!33062 (= condSetEmpty!283 (= (_2!99 (h!5653 mapDefault!162)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33063 () Bool)

(declare-fun e!14903 () Bool)

(declare-fun tp!22823 () Bool)

(assert (=> b!33063 (= e!14903 tp!22823)))

(declare-fun b!33064 () Bool)

(declare-fun e!14905 () Bool)

(declare-fun tp!22813 () Bool)

(assert (=> b!33064 (= e!14905 tp!22813)))

(declare-fun mapNonEmpty!162 () Bool)

(declare-fun tp!22817 () Bool)

(declare-fun e!14902 () Bool)

(assert (=> mapNonEmpty!162 (= mapRes!162 (and tp!22817 e!14902))))

(declare-fun mapRest!162 () (Array (_ BitVec 32) List!259))

(declare-fun mapKey!162 () (_ BitVec 32))

(declare-fun mapValue!162 () List!259)

(assert (=> mapNonEmpty!162 (= mapRest!155 (store mapRest!162 mapKey!162 mapValue!162))))

(declare-fun setIsEmpty!283 () Bool)

(assert (=> setIsEmpty!283 setRes!282))

(declare-fun e!14904 () Bool)

(declare-fun tp!22821 () Bool)

(declare-fun b!33065 () Bool)

(declare-fun tp!22819 () Bool)

(assert (=> b!33065 (= e!14902 (and tp!22821 (inv!566 (_2!98 (_1!99 (h!5653 mapValue!162)))) e!14904 tp_is_empty!297 setRes!283 tp!22819))))

(declare-fun condSetEmpty!282 () Bool)

(assert (=> b!33065 (= condSetEmpty!282 (= (_2!99 (h!5653 mapValue!162)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun setNonEmpty!282 () Bool)

(declare-fun setElem!282 () Context!46)

(declare-fun tp!22815 () Bool)

(assert (=> setNonEmpty!282 (= setRes!282 (and tp!22815 (inv!566 setElem!282) e!14905))))

(declare-fun setRest!282 () (InoxSet Context!46))

(assert (=> setNonEmpty!282 (= (_2!99 (h!5653 mapDefault!162)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!282 true) setRest!282))))

(declare-fun setElem!283 () Context!46)

(declare-fun tp!22814 () Bool)

(declare-fun setNonEmpty!283 () Bool)

(assert (=> setNonEmpty!283 (= setRes!283 (and tp!22814 (inv!566 setElem!283) e!14903))))

(declare-fun setRest!283 () (InoxSet Context!46))

(assert (=> setNonEmpty!283 (= (_2!99 (h!5653 mapValue!162)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!283 true) setRest!283))))

(declare-fun condMapEmpty!162 () Bool)

(assert (=> mapNonEmpty!155 (= condMapEmpty!162 (= mapRest!155 ((as const (Array (_ BitVec 32) List!259)) mapDefault!162)))))

(assert (=> mapNonEmpty!155 (= tp!22693 (and e!14901 mapRes!162))))

(declare-fun b!33066 () Bool)

(declare-fun tp!22818 () Bool)

(assert (=> b!33066 (= e!14904 tp!22818)))

(assert (= (and mapNonEmpty!155 condMapEmpty!162) mapIsEmpty!162))

(assert (= (and mapNonEmpty!155 (not condMapEmpty!162)) mapNonEmpty!162))

(assert (= b!33065 b!33066))

(assert (= (and b!33065 condSetEmpty!282) setIsEmpty!282))

(assert (= (and b!33065 (not condSetEmpty!282)) setNonEmpty!283))

(assert (= setNonEmpty!283 b!33063))

(assert (= (and mapNonEmpty!162 ((_ is Cons!257) mapValue!162)) b!33065))

(assert (= b!33062 b!33061))

(assert (= (and b!33062 condSetEmpty!283) setIsEmpty!283))

(assert (= (and b!33062 (not condSetEmpty!283)) setNonEmpty!282))

(assert (= setNonEmpty!282 b!33064))

(assert (= (and mapNonEmpty!155 ((_ is Cons!257) mapDefault!162)) b!33062))

(declare-fun m!9005 () Bool)

(assert (=> b!33062 m!9005))

(declare-fun m!9007 () Bool)

(assert (=> setNonEmpty!283 m!9007))

(declare-fun m!9009 () Bool)

(assert (=> mapNonEmpty!162 m!9009))

(declare-fun m!9011 () Bool)

(assert (=> setNonEmpty!282 m!9011))

(declare-fun m!9013 () Bool)

(assert (=> b!33065 m!9013))

(declare-fun b!33067 () Bool)

(declare-fun e!14907 () Bool)

(declare-fun tp!22828 () Bool)

(assert (=> b!33067 (= e!14907 tp!22828)))

(declare-fun tp!22827 () Bool)

(declare-fun b!33068 () Bool)

(declare-fun e!14909 () Bool)

(declare-fun setRes!284 () Bool)

(declare-fun tp!22825 () Bool)

(assert (=> b!33068 (= e!14909 (and tp!22827 (inv!566 (_2!98 (_1!99 (h!5653 mapValue!156)))) e!14907 tp_is_empty!297 setRes!284 tp!22825))))

(declare-fun condSetEmpty!284 () Bool)

(assert (=> b!33068 (= condSetEmpty!284 (= (_2!99 (h!5653 mapValue!156)) ((as const (Array Context!46 Bool)) false)))))

(assert (=> mapNonEmpty!155 (= tp!22696 e!14909)))

(declare-fun setNonEmpty!284 () Bool)

(declare-fun e!14908 () Bool)

(declare-fun tp!22826 () Bool)

(declare-fun setElem!284 () Context!46)

(assert (=> setNonEmpty!284 (= setRes!284 (and tp!22826 (inv!566 setElem!284) e!14908))))

(declare-fun setRest!284 () (InoxSet Context!46))

(assert (=> setNonEmpty!284 (= (_2!99 (h!5653 mapValue!156)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!284 true) setRest!284))))

(declare-fun setIsEmpty!284 () Bool)

(assert (=> setIsEmpty!284 setRes!284))

(declare-fun b!33069 () Bool)

(declare-fun tp!22824 () Bool)

(assert (=> b!33069 (= e!14908 tp!22824)))

(assert (= b!33068 b!33067))

(assert (= (and b!33068 condSetEmpty!284) setIsEmpty!284))

(assert (= (and b!33068 (not condSetEmpty!284)) setNonEmpty!284))

(assert (= setNonEmpty!284 b!33069))

(assert (= (and mapNonEmpty!155 ((_ is Cons!257) mapValue!156)) b!33068))

(declare-fun m!9015 () Bool)

(assert (=> b!33068 m!9015))

(declare-fun m!9017 () Bool)

(assert (=> setNonEmpty!284 m!9017))

(declare-fun b!33080 () Bool)

(declare-fun b_free!269 () Bool)

(declare-fun b_next!269 () Bool)

(assert (=> b!33080 (= b_free!269 (not b_next!269))))

(declare-fun tp!22840 () Bool)

(declare-fun b_and!269 () Bool)

(assert (=> b!33080 (= tp!22840 b_and!269)))

(declare-fun b_free!271 () Bool)

(declare-fun b_next!271 () Bool)

(assert (=> b!33080 (= b_free!271 (not b_next!271))))

(declare-fun tp!22839 () Bool)

(declare-fun b_and!271 () Bool)

(assert (=> b!33080 (= tp!22839 b_and!271)))

(declare-fun e!14920 () Bool)

(assert (=> b!33080 (= e!14920 (and tp!22840 tp!22839))))

(declare-fun b!33079 () Bool)

(declare-fun tp!22838 () Bool)

(declare-fun e!14918 () Bool)

(assert (=> b!33079 (= e!14918 (and tp!22838 (inv!554 (tag!295 (h!5655 (t!14851 rules!1369)))) (inv!562 (transformation!117 (h!5655 (t!14851 rules!1369)))) e!14920))))

(declare-fun b!33078 () Bool)

(declare-fun e!14921 () Bool)

(declare-fun tp!22837 () Bool)

(assert (=> b!33078 (= e!14921 (and e!14918 tp!22837))))

(assert (=> b!32947 (= tp!22689 e!14921)))

(assert (= b!33079 b!33080))

(assert (= b!33078 b!33079))

(assert (= (and b!32947 ((_ is Cons!259) (t!14851 rules!1369))) b!33078))

(declare-fun m!9019 () Bool)

(assert (=> b!33079 m!9019))

(declare-fun m!9021 () Bool)

(assert (=> b!33079 m!9021))

(declare-fun tp!22844 () Bool)

(declare-fun setRes!285 () Bool)

(declare-fun setElem!285 () Context!46)

(declare-fun setNonEmpty!285 () Bool)

(declare-fun e!14922 () Bool)

(assert (=> setNonEmpty!285 (= setRes!285 (and tp!22844 (inv!566 setElem!285) e!14922))))

(declare-fun setRest!285 () (InoxSet Context!46))

(assert (=> setNonEmpty!285 (= (_2!97 (h!5652 mapDefault!156)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!285 true) setRest!285))))

(declare-fun b!33081 () Bool)

(declare-fun tp!22843 () Bool)

(assert (=> b!33081 (= e!14922 tp!22843)))

(declare-fun e!14924 () Bool)

(assert (=> b!32951 (= tp!22702 e!14924)))

(declare-fun tp!22842 () Bool)

(declare-fun b!33082 () Bool)

(declare-fun e!14923 () Bool)

(assert (=> b!33082 (= e!14924 (and (inv!566 (_1!96 (_1!97 (h!5652 mapDefault!156)))) e!14923 tp_is_empty!297 setRes!285 tp!22842))))

(declare-fun condSetEmpty!285 () Bool)

(assert (=> b!33082 (= condSetEmpty!285 (= (_2!97 (h!5652 mapDefault!156)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33083 () Bool)

(declare-fun tp!22841 () Bool)

(assert (=> b!33083 (= e!14923 tp!22841)))

(declare-fun setIsEmpty!285 () Bool)

(assert (=> setIsEmpty!285 setRes!285))

(assert (= b!33082 b!33083))

(assert (= (and b!33082 condSetEmpty!285) setIsEmpty!285))

(assert (= (and b!33082 (not condSetEmpty!285)) setNonEmpty!285))

(assert (= setNonEmpty!285 b!33081))

(assert (= (and b!32951 ((_ is Cons!256) mapDefault!156)) b!33082))

(declare-fun m!9023 () Bool)

(assert (=> setNonEmpty!285 m!9023))

(declare-fun m!9025 () Bool)

(assert (=> b!33082 m!9025))

(declare-fun setNonEmpty!286 () Bool)

(declare-fun setRes!286 () Bool)

(declare-fun e!14925 () Bool)

(declare-fun setElem!286 () Context!46)

(declare-fun tp!22848 () Bool)

(assert (=> setNonEmpty!286 (= setRes!286 (and tp!22848 (inv!566 setElem!286) e!14925))))

(declare-fun setRest!286 () (InoxSet Context!46))

(assert (=> setNonEmpty!286 (= (_2!97 (h!5652 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!286 true) setRest!286))))

(declare-fun b!33084 () Bool)

(declare-fun tp!22847 () Bool)

(assert (=> b!33084 (= e!14925 tp!22847)))

(declare-fun e!14927 () Bool)

(assert (=> b!32934 (= tp!22699 e!14927)))

(declare-fun tp!22846 () Bool)

(declare-fun b!33085 () Bool)

(declare-fun e!14926 () Bool)

(assert (=> b!33085 (= e!14927 (and (inv!566 (_1!96 (_1!97 (h!5652 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))))) e!14926 tp_is_empty!297 setRes!286 tp!22846))))

(declare-fun condSetEmpty!286 () Bool)

(assert (=> b!33085 (= condSetEmpty!286 (= (_2!97 (h!5652 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33086 () Bool)

(declare-fun tp!22845 () Bool)

(assert (=> b!33086 (= e!14926 tp!22845)))

(declare-fun setIsEmpty!286 () Bool)

(assert (=> setIsEmpty!286 setRes!286))

(assert (= b!33085 b!33086))

(assert (= (and b!33085 condSetEmpty!286) setIsEmpty!286))

(assert (= (and b!33085 (not condSetEmpty!286)) setNonEmpty!286))

(assert (= setNonEmpty!286 b!33084))

(assert (= (and b!32934 ((_ is Cons!256) (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))) b!33085))

(declare-fun m!9027 () Bool)

(assert (=> setNonEmpty!286 m!9027))

(declare-fun m!9029 () Bool)

(assert (=> b!33085 m!9029))

(declare-fun setRes!287 () Bool)

(declare-fun tp!22852 () Bool)

(declare-fun setNonEmpty!287 () Bool)

(declare-fun setElem!287 () Context!46)

(declare-fun e!14928 () Bool)

(assert (=> setNonEmpty!287 (= setRes!287 (and tp!22852 (inv!566 setElem!287) e!14928))))

(declare-fun setRest!287 () (InoxSet Context!46))

(assert (=> setNonEmpty!287 (= (_2!97 (h!5652 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!287 true) setRest!287))))

(declare-fun b!33087 () Bool)

(declare-fun tp!22851 () Bool)

(assert (=> b!33087 (= e!14928 tp!22851)))

(declare-fun e!14930 () Bool)

(assert (=> b!32934 (= tp!22698 e!14930)))

(declare-fun e!14929 () Bool)

(declare-fun tp!22850 () Bool)

(declare-fun b!33088 () Bool)

(assert (=> b!33088 (= e!14930 (and (inv!566 (_1!96 (_1!97 (h!5652 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))))) e!14929 tp_is_empty!297 setRes!287 tp!22850))))

(declare-fun condSetEmpty!287 () Bool)

(assert (=> b!33088 (= condSetEmpty!287 (= (_2!97 (h!5652 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33089 () Bool)

(declare-fun tp!22849 () Bool)

(assert (=> b!33089 (= e!14929 tp!22849)))

(declare-fun setIsEmpty!287 () Bool)

(assert (=> setIsEmpty!287 setRes!287))

(assert (= b!33088 b!33089))

(assert (= (and b!33088 condSetEmpty!287) setIsEmpty!287))

(assert (= (and b!33088 (not condSetEmpty!287)) setNonEmpty!287))

(assert (= setNonEmpty!287 b!33087))

(assert (= (and b!32934 ((_ is Cons!256) (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))) b!33088))

(declare-fun m!9031 () Bool)

(assert (=> setNonEmpty!287 m!9031))

(declare-fun m!9033 () Bool)

(assert (=> b!33088 m!9033))

(check-sat b_and!263 (not b!32970) (not setNonEmpty!286) (not b_next!269) (not setNonEmpty!276) (not b!33065) (not setNonEmpty!269) (not b!32997) (not b!33069) (not b!33018) (not mapNonEmpty!159) (not b!32967) (not b!33078) (not b!33044) (not setNonEmpty!282) (not b!33068) (not b!33046) (not b!33082) (not b!32996) (not b!33045) (not b!33040) (not b!32986) (not b_next!257) b_and!269 (not setNonEmpty!285) (not b!32998) (not setNonEmpty!287) (not b!33063) b_and!265 (not b!33089) (not b!32964) (not setNonEmpty!268) (not b!33028) b_and!259 b_and!271 (not b!32985) (not b!33083) (not b!33067) (not b_next!259) (not b_next!271) (not b!33084) (not d!3265) (not b!33085) (not b!32973) (not b!33029) b_and!261 (not b!33043) (not d!3249) (not b!33061) (not setNonEmpty!283) (not b!32948) (not mapNonEmpty!162) (not b!33066) (not d!3245) (not b!33087) (not d!3259) tp_is_empty!297 (not setNonEmpty!272) (not b!33062) (not b!33017) (not b_next!265) (not b_next!267) (not b!32962) (not b!33042) (not d!3263) (not b!33014) (not b!33081) (not setNonEmpty!277) (not b!33027) (not b_next!263) (not b_next!261) (not b!33086) (not b!32987) (not setNonEmpty!275) (not b!33039) (not b!32955) (not b!33079) (not b!33013) (not b!33016) b_and!267 (not d!3261) (not b!33038) (not b!33088) (not setNonEmpty!284) b_and!257 (not b!33041) (not b!33064) (not b!33015))
(check-sat b_and!263 (not b_next!257) b_and!269 b_and!265 (not b_next!269) b_and!261 (not b_next!265) (not b_next!267) b_and!267 b_and!257 b_and!259 b_and!271 (not b_next!259) (not b_next!271) (not b_next!263) (not b_next!261))
(get-model)

(assert (=> b!32948 d!3247))

(declare-fun d!3273 () Bool)

(declare-fun lambda!479 () Int)

(declare-fun forall!34 (List!257 Int) Bool)

(assert (=> d!3273 (= (inv!566 (_1!96 (_1!97 (h!5652 mapDefault!156)))) (forall!34 (exprs!523 (_1!96 (_1!97 (h!5652 mapDefault!156)))) lambda!479))))

(declare-fun bs!4178 () Bool)

(assert (= bs!4178 d!3273))

(declare-fun m!9035 () Bool)

(assert (=> bs!4178 m!9035))

(assert (=> b!33082 d!3273))

(declare-fun d!3275 () Bool)

(declare-fun res!27120 () Bool)

(declare-fun e!14933 () Bool)

(assert (=> d!3275 (=> (not res!27120) (not e!14933))))

(assert (=> d!3275 (= res!27120 (= (csize!308 (c!15277 input!768)) (+ (size!324 (left!365 (c!15277 input!768))) (size!324 (right!695 (c!15277 input!768))))))))

(assert (=> d!3275 (= (inv!563 (c!15277 input!768)) e!14933)))

(declare-fun b!33096 () Bool)

(declare-fun res!27121 () Bool)

(assert (=> b!33096 (=> (not res!27121) (not e!14933))))

(assert (=> b!33096 (= res!27121 (and (not (= (left!365 (c!15277 input!768)) Empty!39)) (not (= (right!695 (c!15277 input!768)) Empty!39))))))

(declare-fun b!33097 () Bool)

(declare-fun res!27122 () Bool)

(assert (=> b!33097 (=> (not res!27122) (not e!14933))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!8 (Conc!39) Int)

(assert (=> b!33097 (= res!27122 (= (cheight!250 (c!15277 input!768)) (+ (max!0 (height!8 (left!365 (c!15277 input!768))) (height!8 (right!695 (c!15277 input!768)))) 1)))))

(declare-fun b!33098 () Bool)

(assert (=> b!33098 (= e!14933 (<= 0 (cheight!250 (c!15277 input!768))))))

(assert (= (and d!3275 res!27120) b!33096))

(assert (= (and b!33096 res!27121) b!33097))

(assert (= (and b!33097 res!27122) b!33098))

(declare-fun m!9037 () Bool)

(assert (=> d!3275 m!9037))

(declare-fun m!9039 () Bool)

(assert (=> d!3275 m!9039))

(declare-fun m!9041 () Bool)

(assert (=> b!33097 m!9041))

(declare-fun m!9043 () Bool)

(assert (=> b!33097 m!9043))

(assert (=> b!33097 m!9041))

(assert (=> b!33097 m!9043))

(declare-fun m!9045 () Bool)

(assert (=> b!33097 m!9045))

(assert (=> b!32962 d!3275))

(declare-fun bs!4179 () Bool)

(declare-fun d!3277 () Bool)

(assert (= bs!4179 (and d!3277 d!3273)))

(declare-fun lambda!480 () Int)

(assert (=> bs!4179 (= lambda!480 lambda!479)))

(assert (=> d!3277 (= (inv!566 (_2!98 (_1!99 (h!5653 mapValue!162)))) (forall!34 (exprs!523 (_2!98 (_1!99 (h!5653 mapValue!162)))) lambda!480))))

(declare-fun bs!4180 () Bool)

(assert (= bs!4180 d!3277))

(declare-fun m!9047 () Bool)

(assert (=> bs!4180 m!9047))

(assert (=> b!33065 d!3277))

(declare-fun d!3279 () Bool)

(declare-fun res!27129 () Bool)

(declare-fun e!14938 () Bool)

(assert (=> d!3279 (=> (not res!27129) (not e!14938))))

(declare-fun valid!51 (MutableMap!40) Bool)

(assert (=> d!3279 (= res!27129 (valid!51 (cache!519 cacheDown!485)))))

(assert (=> d!3279 (= (validCacheMapDown!5 (cache!519 cacheDown!485)) e!14938)))

(declare-fun b!33105 () Bool)

(declare-fun res!27130 () Bool)

(assert (=> b!33105 (=> (not res!27130) (not e!14938))))

(declare-fun invariantList!10 (List!259) Bool)

(declare-datatypes ((ListMap!21 0))(
  ( (ListMap!22 (toList!151 List!259)) )
))
(declare-fun map!170 (MutableMap!40) ListMap!21)

(assert (=> b!33105 (= res!27130 (invariantList!10 (toList!151 (map!170 (cache!519 cacheDown!485)))))))

(declare-fun b!33106 () Bool)

(declare-fun lambda!483 () Int)

(declare-fun forall!35 (List!259 Int) Bool)

(assert (=> b!33106 (= e!14938 (forall!35 (toList!151 (map!170 (cache!519 cacheDown!485))) lambda!483))))

(assert (= (and d!3279 res!27129) b!33105))

(assert (= (and b!33105 res!27130) b!33106))

(declare-fun m!9050 () Bool)

(assert (=> d!3279 m!9050))

(declare-fun m!9052 () Bool)

(assert (=> b!33105 m!9052))

(declare-fun m!9054 () Bool)

(assert (=> b!33105 m!9054))

(assert (=> b!33106 m!9052))

(declare-fun m!9056 () Bool)

(assert (=> b!33106 m!9056))

(assert (=> b!32970 d!3279))

(declare-fun d!3281 () Bool)

(assert (=> d!3281 true))

(declare-fun order!55 () Int)

(declare-fun lambda!486 () Int)

(declare-fun order!53 () Int)

(declare-fun dynLambda!29 (Int Int) Int)

(declare-fun dynLambda!30 (Int Int) Int)

(assert (=> d!3281 (< (dynLambda!29 order!53 (toChars!453 (transformation!117 (h!5655 rules!1369)))) (dynLambda!30 order!55 lambda!486))))

(assert (=> d!3281 true))

(declare-fun order!57 () Int)

(declare-fun dynLambda!31 (Int Int) Int)

(assert (=> d!3281 (< (dynLambda!31 order!57 (toValue!594 (transformation!117 (h!5655 rules!1369)))) (dynLambda!30 order!55 lambda!486))))

(declare-fun Forall!15 (Int) Bool)

(assert (=> d!3281 (= (semiInverseModEq!13 (toChars!453 (transformation!117 (h!5655 rules!1369))) (toValue!594 (transformation!117 (h!5655 rules!1369)))) (Forall!15 lambda!486))))

(declare-fun bs!4181 () Bool)

(assert (= bs!4181 d!3281))

(declare-fun m!9058 () Bool)

(assert (=> bs!4181 m!9058))

(assert (=> d!3245 d!3281))

(declare-fun bs!4182 () Bool)

(declare-fun d!3283 () Bool)

(assert (= bs!4182 (and d!3283 d!3273)))

(declare-fun lambda!487 () Int)

(assert (=> bs!4182 (= lambda!487 lambda!479)))

(declare-fun bs!4183 () Bool)

(assert (= bs!4183 (and d!3283 d!3277)))

(assert (=> bs!4183 (= lambda!487 lambda!480)))

(assert (=> d!3283 (= (inv!566 setElem!282) (forall!34 (exprs!523 setElem!282) lambda!487))))

(declare-fun bs!4184 () Bool)

(assert (= bs!4184 d!3283))

(declare-fun m!9060 () Bool)

(assert (=> bs!4184 m!9060))

(assert (=> setNonEmpty!282 d!3283))

(declare-fun d!3285 () Bool)

(declare-fun res!27135 () Bool)

(declare-fun e!14941 () Bool)

(assert (=> d!3285 (=> (not res!27135) (not e!14941))))

(declare-fun list!108 (IArray!79) List!256)

(assert (=> d!3285 (= res!27135 (<= (size!323 (list!108 (xs!2618 (c!15277 input!768)))) 512))))

(assert (=> d!3285 (= (inv!564 (c!15277 input!768)) e!14941)))

(declare-fun b!33115 () Bool)

(declare-fun res!27136 () Bool)

(assert (=> b!33115 (=> (not res!27136) (not e!14941))))

(assert (=> b!33115 (= res!27136 (= (csize!309 (c!15277 input!768)) (size!323 (list!108 (xs!2618 (c!15277 input!768))))))))

(declare-fun b!33116 () Bool)

(assert (=> b!33116 (= e!14941 (and (> (csize!309 (c!15277 input!768)) 0) (<= (csize!309 (c!15277 input!768)) 512)))))

(assert (= (and d!3285 res!27135) b!33115))

(assert (= (and b!33115 res!27136) b!33116))

(declare-fun m!9062 () Bool)

(assert (=> d!3285 m!9062))

(assert (=> d!3285 m!9062))

(declare-fun m!9064 () Bool)

(assert (=> d!3285 m!9064))

(assert (=> b!33115 m!9062))

(assert (=> b!33115 m!9062))

(assert (=> b!33115 m!9064))

(assert (=> b!32964 d!3285))

(declare-fun bs!4185 () Bool)

(declare-fun d!3287 () Bool)

(assert (= bs!4185 (and d!3287 d!3273)))

(declare-fun lambda!488 () Int)

(assert (=> bs!4185 (= lambda!488 lambda!479)))

(declare-fun bs!4186 () Bool)

(assert (= bs!4186 (and d!3287 d!3277)))

(assert (=> bs!4186 (= lambda!488 lambda!480)))

(declare-fun bs!4187 () Bool)

(assert (= bs!4187 (and d!3287 d!3283)))

(assert (=> bs!4187 (= lambda!488 lambda!487)))

(assert (=> d!3287 (= (inv!566 setElem!283) (forall!34 (exprs!523 setElem!283) lambda!488))))

(declare-fun bs!4188 () Bool)

(assert (= bs!4188 d!3287))

(declare-fun m!9066 () Bool)

(assert (=> bs!4188 m!9066))

(assert (=> setNonEmpty!283 d!3287))

(declare-fun d!3289 () Bool)

(declare-fun res!27141 () Bool)

(declare-fun e!14944 () Bool)

(assert (=> d!3289 (=> (not res!27141) (not e!14944))))

(declare-fun valid!52 (MutableMap!39) Bool)

(assert (=> d!3289 (= res!27141 (valid!52 (cache!518 cacheUp!472)))))

(assert (=> d!3289 (= (validCacheMapUp!5 (cache!518 cacheUp!472)) e!14944)))

(declare-fun b!33121 () Bool)

(declare-fun res!27142 () Bool)

(assert (=> b!33121 (=> (not res!27142) (not e!14944))))

(declare-fun invariantList!11 (List!258) Bool)

(declare-datatypes ((ListMap!23 0))(
  ( (ListMap!24 (toList!152 List!258)) )
))
(declare-fun map!171 (MutableMap!39) ListMap!23)

(assert (=> b!33121 (= res!27142 (invariantList!11 (toList!152 (map!171 (cache!518 cacheUp!472)))))))

(declare-fun b!33122 () Bool)

(declare-fun lambda!491 () Int)

(declare-fun forall!36 (List!258 Int) Bool)

(assert (=> b!33122 (= e!14944 (forall!36 (toList!152 (map!171 (cache!518 cacheUp!472))) lambda!491))))

(assert (= (and d!3289 res!27141) b!33121))

(assert (= (and b!33121 res!27142) b!33122))

(declare-fun m!9069 () Bool)

(assert (=> d!3289 m!9069))

(declare-fun m!9071 () Bool)

(assert (=> b!33121 m!9071))

(declare-fun m!9073 () Bool)

(assert (=> b!33121 m!9073))

(assert (=> b!33122 m!9071))

(declare-fun m!9075 () Bool)

(assert (=> b!33122 m!9075))

(assert (=> b!32967 d!3289))

(assert (=> d!3263 d!3289))

(declare-fun bs!4189 () Bool)

(declare-fun d!3291 () Bool)

(assert (= bs!4189 (and d!3291 d!3273)))

(declare-fun lambda!492 () Int)

(assert (=> bs!4189 (= lambda!492 lambda!479)))

(declare-fun bs!4190 () Bool)

(assert (= bs!4190 (and d!3291 d!3277)))

(assert (=> bs!4190 (= lambda!492 lambda!480)))

(declare-fun bs!4191 () Bool)

(assert (= bs!4191 (and d!3291 d!3283)))

(assert (=> bs!4191 (= lambda!492 lambda!487)))

(declare-fun bs!4192 () Bool)

(assert (= bs!4192 (and d!3291 d!3287)))

(assert (=> bs!4192 (= lambda!492 lambda!488)))

(assert (=> d!3291 (= (inv!566 setElem!284) (forall!34 (exprs!523 setElem!284) lambda!492))))

(declare-fun bs!4193 () Bool)

(assert (= bs!4193 d!3291))

(declare-fun m!9077 () Bool)

(assert (=> bs!4193 m!9077))

(assert (=> setNonEmpty!284 d!3291))

(declare-fun b!33135 () Bool)

(declare-fun e!14950 () Bool)

(declare-fun e!14949 () Bool)

(assert (=> b!33135 (= e!14950 e!14949)))

(declare-fun res!27160 () Bool)

(assert (=> b!33135 (=> (not res!27160) (not e!14949))))

(assert (=> b!33135 (= res!27160 (<= (- 1) (- (height!8 (left!365 (c!15277 input!768))) (height!8 (right!695 (c!15277 input!768))))))))

(declare-fun b!33136 () Bool)

(declare-fun res!27159 () Bool)

(assert (=> b!33136 (=> (not res!27159) (not e!14949))))

(assert (=> b!33136 (= res!27159 (isBalanced!13 (right!695 (c!15277 input!768))))))

(declare-fun b!33137 () Bool)

(declare-fun res!27158 () Bool)

(assert (=> b!33137 (=> (not res!27158) (not e!14949))))

(assert (=> b!33137 (= res!27158 (isBalanced!13 (left!365 (c!15277 input!768))))))

(declare-fun b!33138 () Bool)

(declare-fun res!27156 () Bool)

(assert (=> b!33138 (=> (not res!27156) (not e!14949))))

(assert (=> b!33138 (= res!27156 (<= (- (height!8 (left!365 (c!15277 input!768))) (height!8 (right!695 (c!15277 input!768)))) 1))))

(declare-fun d!3293 () Bool)

(declare-fun res!27157 () Bool)

(assert (=> d!3293 (=> res!27157 e!14950)))

(assert (=> d!3293 (= res!27157 (not ((_ is Node!39) (c!15277 input!768))))))

(assert (=> d!3293 (= (isBalanced!13 (c!15277 input!768)) e!14950)))

(declare-fun b!33139 () Bool)

(declare-fun res!27155 () Bool)

(assert (=> b!33139 (=> (not res!27155) (not e!14949))))

(declare-fun isEmpty!75 (Conc!39) Bool)

(assert (=> b!33139 (= res!27155 (not (isEmpty!75 (left!365 (c!15277 input!768)))))))

(declare-fun b!33140 () Bool)

(assert (=> b!33140 (= e!14949 (not (isEmpty!75 (right!695 (c!15277 input!768)))))))

(assert (= (and d!3293 (not res!27157)) b!33135))

(assert (= (and b!33135 res!27160) b!33138))

(assert (= (and b!33138 res!27156) b!33137))

(assert (= (and b!33137 res!27158) b!33136))

(assert (= (and b!33136 res!27159) b!33139))

(assert (= (and b!33139 res!27155) b!33140))

(declare-fun m!9079 () Bool)

(assert (=> b!33136 m!9079))

(declare-fun m!9081 () Bool)

(assert (=> b!33140 m!9081))

(assert (=> b!33138 m!9041))

(assert (=> b!33138 m!9043))

(assert (=> b!33135 m!9041))

(assert (=> b!33135 m!9043))

(declare-fun m!9083 () Bool)

(assert (=> b!33139 m!9083))

(declare-fun m!9085 () Bool)

(assert (=> b!33137 m!9085))

(assert (=> d!3249 d!3293))

(declare-fun bs!4194 () Bool)

(declare-fun d!3295 () Bool)

(assert (= bs!4194 (and d!3295 d!3283)))

(declare-fun lambda!493 () Int)

(assert (=> bs!4194 (= lambda!493 lambda!487)))

(declare-fun bs!4195 () Bool)

(assert (= bs!4195 (and d!3295 d!3273)))

(assert (=> bs!4195 (= lambda!493 lambda!479)))

(declare-fun bs!4196 () Bool)

(assert (= bs!4196 (and d!3295 d!3291)))

(assert (=> bs!4196 (= lambda!493 lambda!492)))

(declare-fun bs!4197 () Bool)

(assert (= bs!4197 (and d!3295 d!3287)))

(assert (=> bs!4197 (= lambda!493 lambda!488)))

(declare-fun bs!4198 () Bool)

(assert (= bs!4198 (and d!3295 d!3277)))

(assert (=> bs!4198 (= lambda!493 lambda!480)))

(assert (=> d!3295 (= (inv!566 setElem!269) (forall!34 (exprs!523 setElem!269) lambda!493))))

(declare-fun bs!4199 () Bool)

(assert (= bs!4199 d!3295))

(declare-fun m!9087 () Bool)

(assert (=> bs!4199 m!9087))

(assert (=> setNonEmpty!268 d!3295))

(declare-fun bs!4200 () Bool)

(declare-fun d!3297 () Bool)

(assert (= bs!4200 (and d!3297 d!3283)))

(declare-fun lambda!494 () Int)

(assert (=> bs!4200 (= lambda!494 lambda!487)))

(declare-fun bs!4201 () Bool)

(assert (= bs!4201 (and d!3297 d!3295)))

(assert (=> bs!4201 (= lambda!494 lambda!493)))

(declare-fun bs!4202 () Bool)

(assert (= bs!4202 (and d!3297 d!3273)))

(assert (=> bs!4202 (= lambda!494 lambda!479)))

(declare-fun bs!4203 () Bool)

(assert (= bs!4203 (and d!3297 d!3291)))

(assert (=> bs!4203 (= lambda!494 lambda!492)))

(declare-fun bs!4204 () Bool)

(assert (= bs!4204 (and d!3297 d!3287)))

(assert (=> bs!4204 (= lambda!494 lambda!488)))

(declare-fun bs!4205 () Bool)

(assert (= bs!4205 (and d!3297 d!3277)))

(assert (=> bs!4205 (= lambda!494 lambda!480)))

(assert (=> d!3297 (= (inv!566 (_2!98 (_1!99 (h!5653 mapValue!156)))) (forall!34 (exprs!523 (_2!98 (_1!99 (h!5653 mapValue!156)))) lambda!494))))

(declare-fun bs!4206 () Bool)

(assert (= bs!4206 d!3297))

(declare-fun m!9089 () Bool)

(assert (=> bs!4206 m!9089))

(assert (=> b!33068 d!3297))

(declare-fun d!3299 () Bool)

(declare-fun res!27165 () Bool)

(declare-fun e!14955 () Bool)

(assert (=> d!3299 (=> res!27165 e!14955)))

(assert (=> d!3299 (= res!27165 ((_ is Nil!259) rules!1369))))

(assert (=> d!3299 (= (noDuplicateTag!5 thiss!12222 rules!1369 Nil!260) e!14955)))

(declare-fun b!33145 () Bool)

(declare-fun e!14956 () Bool)

(assert (=> b!33145 (= e!14955 e!14956)))

(declare-fun res!27166 () Bool)

(assert (=> b!33145 (=> (not res!27166) (not e!14956))))

(declare-fun contains!25 (List!262 String!678) Bool)

(assert (=> b!33145 (= res!27166 (not (contains!25 Nil!260 (tag!295 (h!5655 rules!1369)))))))

(declare-fun b!33146 () Bool)

(assert (=> b!33146 (= e!14956 (noDuplicateTag!5 thiss!12222 (t!14851 rules!1369) (Cons!260 (tag!295 (h!5655 rules!1369)) Nil!260)))))

(assert (= (and d!3299 (not res!27165)) b!33145))

(assert (= (and b!33145 res!27166) b!33146))

(declare-fun m!9091 () Bool)

(assert (=> b!33145 m!9091))

(declare-fun m!9093 () Bool)

(assert (=> b!33146 m!9093))

(assert (=> b!32973 d!3299))

(declare-fun d!3301 () Bool)

(assert (=> d!3301 (= (inv!554 (tag!295 (h!5655 (t!14851 rules!1369)))) (= (mod (str.len (value!6018 (tag!295 (h!5655 (t!14851 rules!1369))))) 2) 0))))

(assert (=> b!33079 d!3301))

(declare-fun d!3303 () Bool)

(declare-fun res!27167 () Bool)

(declare-fun e!14957 () Bool)

(assert (=> d!3303 (=> (not res!27167) (not e!14957))))

(assert (=> d!3303 (= res!27167 (semiInverseModEq!13 (toChars!453 (transformation!117 (h!5655 (t!14851 rules!1369)))) (toValue!594 (transformation!117 (h!5655 (t!14851 rules!1369))))))))

(assert (=> d!3303 (= (inv!562 (transformation!117 (h!5655 (t!14851 rules!1369)))) e!14957)))

(declare-fun b!33147 () Bool)

(assert (=> b!33147 (= e!14957 (equivClasses!9 (toChars!453 (transformation!117 (h!5655 (t!14851 rules!1369)))) (toValue!594 (transformation!117 (h!5655 (t!14851 rules!1369))))))))

(assert (= (and d!3303 res!27167) b!33147))

(declare-fun m!9095 () Bool)

(assert (=> d!3303 m!9095))

(declare-fun m!9097 () Bool)

(assert (=> b!33147 m!9097))

(assert (=> b!33079 d!3303))

(declare-fun d!3305 () Bool)

(declare-fun c!15282 () Bool)

(assert (=> d!3305 (= c!15282 ((_ is Node!39) (left!365 (c!15277 input!768))))))

(declare-fun e!14958 () Bool)

(assert (=> d!3305 (= (inv!561 (left!365 (c!15277 input!768))) e!14958)))

(declare-fun b!33148 () Bool)

(assert (=> b!33148 (= e!14958 (inv!563 (left!365 (c!15277 input!768))))))

(declare-fun b!33149 () Bool)

(declare-fun e!14959 () Bool)

(assert (=> b!33149 (= e!14958 e!14959)))

(declare-fun res!27168 () Bool)

(assert (=> b!33149 (= res!27168 (not ((_ is Leaf!174) (left!365 (c!15277 input!768)))))))

(assert (=> b!33149 (=> res!27168 e!14959)))

(declare-fun b!33150 () Bool)

(assert (=> b!33150 (= e!14959 (inv!564 (left!365 (c!15277 input!768))))))

(assert (= (and d!3305 c!15282) b!33148))

(assert (= (and d!3305 (not c!15282)) b!33149))

(assert (= (and b!33149 (not res!27168)) b!33150))

(declare-fun m!9099 () Bool)

(assert (=> b!33148 m!9099))

(declare-fun m!9101 () Bool)

(assert (=> b!33150 m!9101))

(assert (=> b!32996 d!3305))

(declare-fun d!3307 () Bool)

(declare-fun c!15283 () Bool)

(assert (=> d!3307 (= c!15283 ((_ is Node!39) (right!695 (c!15277 input!768))))))

(declare-fun e!14960 () Bool)

(assert (=> d!3307 (= (inv!561 (right!695 (c!15277 input!768))) e!14960)))

(declare-fun b!33151 () Bool)

(assert (=> b!33151 (= e!14960 (inv!563 (right!695 (c!15277 input!768))))))

(declare-fun b!33152 () Bool)

(declare-fun e!14961 () Bool)

(assert (=> b!33152 (= e!14960 e!14961)))

(declare-fun res!27169 () Bool)

(assert (=> b!33152 (= res!27169 (not ((_ is Leaf!174) (right!695 (c!15277 input!768)))))))

(assert (=> b!33152 (=> res!27169 e!14961)))

(declare-fun b!33153 () Bool)

(assert (=> b!33153 (= e!14961 (inv!564 (right!695 (c!15277 input!768))))))

(assert (= (and d!3307 c!15283) b!33151))

(assert (= (and d!3307 (not c!15283)) b!33152))

(assert (= (and b!33152 (not res!27169)) b!33153))

(declare-fun m!9103 () Bool)

(assert (=> b!33151 m!9103))

(declare-fun m!9105 () Bool)

(assert (=> b!33153 m!9105))

(assert (=> b!32996 d!3307))

(declare-fun bs!4207 () Bool)

(declare-fun d!3309 () Bool)

(assert (= bs!4207 (and d!3309 d!3283)))

(declare-fun lambda!495 () Int)

(assert (=> bs!4207 (= lambda!495 lambda!487)))

(declare-fun bs!4208 () Bool)

(assert (= bs!4208 (and d!3309 d!3297)))

(assert (=> bs!4208 (= lambda!495 lambda!494)))

(declare-fun bs!4209 () Bool)

(assert (= bs!4209 (and d!3309 d!3295)))

(assert (=> bs!4209 (= lambda!495 lambda!493)))

(declare-fun bs!4210 () Bool)

(assert (= bs!4210 (and d!3309 d!3273)))

(assert (=> bs!4210 (= lambda!495 lambda!479)))

(declare-fun bs!4211 () Bool)

(assert (= bs!4211 (and d!3309 d!3291)))

(assert (=> bs!4211 (= lambda!495 lambda!492)))

(declare-fun bs!4212 () Bool)

(assert (= bs!4212 (and d!3309 d!3287)))

(assert (=> bs!4212 (= lambda!495 lambda!488)))

(declare-fun bs!4213 () Bool)

(assert (= bs!4213 (and d!3309 d!3277)))

(assert (=> bs!4213 (= lambda!495 lambda!480)))

(assert (=> d!3309 (= (inv!566 (_1!96 (_1!97 (h!5652 mapDefault!159)))) (forall!34 (exprs!523 (_1!96 (_1!97 (h!5652 mapDefault!159)))) lambda!495))))

(declare-fun bs!4214 () Bool)

(assert (= bs!4214 d!3309))

(declare-fun m!9107 () Bool)

(assert (=> bs!4214 m!9107))

(assert (=> b!33013 d!3309))

(declare-fun d!3311 () Bool)

(assert (=> d!3311 (= (inv!565 (xs!2618 (c!15277 input!768))) (<= (size!323 (innerList!97 (xs!2618 (c!15277 input!768)))) 2147483647))))

(declare-fun bs!4215 () Bool)

(assert (= bs!4215 d!3311))

(declare-fun m!9109 () Bool)

(assert (=> bs!4215 m!9109))

(assert (=> b!32997 d!3311))

(declare-fun bs!4216 () Bool)

(declare-fun d!3313 () Bool)

(assert (= bs!4216 (and d!3313 d!3283)))

(declare-fun lambda!496 () Int)

(assert (=> bs!4216 (= lambda!496 lambda!487)))

(declare-fun bs!4217 () Bool)

(assert (= bs!4217 (and d!3313 d!3297)))

(assert (=> bs!4217 (= lambda!496 lambda!494)))

(declare-fun bs!4218 () Bool)

(assert (= bs!4218 (and d!3313 d!3295)))

(assert (=> bs!4218 (= lambda!496 lambda!493)))

(declare-fun bs!4219 () Bool)

(assert (= bs!4219 (and d!3313 d!3309)))

(assert (=> bs!4219 (= lambda!496 lambda!495)))

(declare-fun bs!4220 () Bool)

(assert (= bs!4220 (and d!3313 d!3273)))

(assert (=> bs!4220 (= lambda!496 lambda!479)))

(declare-fun bs!4221 () Bool)

(assert (= bs!4221 (and d!3313 d!3291)))

(assert (=> bs!4221 (= lambda!496 lambda!492)))

(declare-fun bs!4222 () Bool)

(assert (= bs!4222 (and d!3313 d!3287)))

(assert (=> bs!4222 (= lambda!496 lambda!488)))

(declare-fun bs!4223 () Bool)

(assert (= bs!4223 (and d!3313 d!3277)))

(assert (=> bs!4223 (= lambda!496 lambda!480)))

(assert (=> d!3313 (= (inv!566 (_2!98 (_1!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))))) (forall!34 (exprs!523 (_2!98 (_1!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))))) lambda!496))))

(declare-fun bs!4224 () Bool)

(assert (= bs!4224 d!3313))

(declare-fun m!9111 () Bool)

(assert (=> bs!4224 m!9111))

(assert (=> b!33042 d!3313))

(declare-fun bs!4225 () Bool)

(declare-fun d!3315 () Bool)

(assert (= bs!4225 (and d!3315 d!3313)))

(declare-fun lambda!497 () Int)

(assert (=> bs!4225 (= lambda!497 lambda!496)))

(declare-fun bs!4226 () Bool)

(assert (= bs!4226 (and d!3315 d!3283)))

(assert (=> bs!4226 (= lambda!497 lambda!487)))

(declare-fun bs!4227 () Bool)

(assert (= bs!4227 (and d!3315 d!3297)))

(assert (=> bs!4227 (= lambda!497 lambda!494)))

(declare-fun bs!4228 () Bool)

(assert (= bs!4228 (and d!3315 d!3295)))

(assert (=> bs!4228 (= lambda!497 lambda!493)))

(declare-fun bs!4229 () Bool)

(assert (= bs!4229 (and d!3315 d!3309)))

(assert (=> bs!4229 (= lambda!497 lambda!495)))

(declare-fun bs!4230 () Bool)

(assert (= bs!4230 (and d!3315 d!3273)))

(assert (=> bs!4230 (= lambda!497 lambda!479)))

(declare-fun bs!4231 () Bool)

(assert (= bs!4231 (and d!3315 d!3291)))

(assert (=> bs!4231 (= lambda!497 lambda!492)))

(declare-fun bs!4232 () Bool)

(assert (= bs!4232 (and d!3315 d!3287)))

(assert (=> bs!4232 (= lambda!497 lambda!488)))

(declare-fun bs!4233 () Bool)

(assert (= bs!4233 (and d!3315 d!3277)))

(assert (=> bs!4233 (= lambda!497 lambda!480)))

(assert (=> d!3315 (= (inv!566 (_2!98 (_1!99 (h!5653 mapDefault!155)))) (forall!34 (exprs!523 (_2!98 (_1!99 (h!5653 mapDefault!155)))) lambda!497))))

(declare-fun bs!4234 () Bool)

(assert (= bs!4234 d!3315))

(declare-fun m!9113 () Bool)

(assert (=> bs!4234 m!9113))

(assert (=> b!33045 d!3315))

(declare-fun bs!4235 () Bool)

(declare-fun d!3317 () Bool)

(assert (= bs!4235 (and d!3317 d!3313)))

(declare-fun lambda!498 () Int)

(assert (=> bs!4235 (= lambda!498 lambda!496)))

(declare-fun bs!4236 () Bool)

(assert (= bs!4236 (and d!3317 d!3315)))

(assert (=> bs!4236 (= lambda!498 lambda!497)))

(declare-fun bs!4237 () Bool)

(assert (= bs!4237 (and d!3317 d!3283)))

(assert (=> bs!4237 (= lambda!498 lambda!487)))

(declare-fun bs!4238 () Bool)

(assert (= bs!4238 (and d!3317 d!3297)))

(assert (=> bs!4238 (= lambda!498 lambda!494)))

(declare-fun bs!4239 () Bool)

(assert (= bs!4239 (and d!3317 d!3295)))

(assert (=> bs!4239 (= lambda!498 lambda!493)))

(declare-fun bs!4240 () Bool)

(assert (= bs!4240 (and d!3317 d!3309)))

(assert (=> bs!4240 (= lambda!498 lambda!495)))

(declare-fun bs!4241 () Bool)

(assert (= bs!4241 (and d!3317 d!3273)))

(assert (=> bs!4241 (= lambda!498 lambda!479)))

(declare-fun bs!4242 () Bool)

(assert (= bs!4242 (and d!3317 d!3291)))

(assert (=> bs!4242 (= lambda!498 lambda!492)))

(declare-fun bs!4243 () Bool)

(assert (= bs!4243 (and d!3317 d!3287)))

(assert (=> bs!4243 (= lambda!498 lambda!488)))

(declare-fun bs!4244 () Bool)

(assert (= bs!4244 (and d!3317 d!3277)))

(assert (=> bs!4244 (= lambda!498 lambda!480)))

(assert (=> d!3317 (= (inv!566 (_1!96 (_1!97 (h!5652 mapValue!159)))) (forall!34 (exprs!523 (_1!96 (_1!97 (h!5652 mapValue!159)))) lambda!498))))

(declare-fun bs!4245 () Bool)

(assert (= bs!4245 d!3317))

(declare-fun m!9115 () Bool)

(assert (=> bs!4245 m!9115))

(assert (=> b!33014 d!3317))

(declare-fun bs!4246 () Bool)

(declare-fun d!3319 () Bool)

(assert (= bs!4246 (and d!3319 d!3313)))

(declare-fun lambda!499 () Int)

(assert (=> bs!4246 (= lambda!499 lambda!496)))

(declare-fun bs!4247 () Bool)

(assert (= bs!4247 (and d!3319 d!3283)))

(assert (=> bs!4247 (= lambda!499 lambda!487)))

(declare-fun bs!4248 () Bool)

(assert (= bs!4248 (and d!3319 d!3297)))

(assert (=> bs!4248 (= lambda!499 lambda!494)))

(declare-fun bs!4249 () Bool)

(assert (= bs!4249 (and d!3319 d!3295)))

(assert (=> bs!4249 (= lambda!499 lambda!493)))

(declare-fun bs!4250 () Bool)

(assert (= bs!4250 (and d!3319 d!3309)))

(assert (=> bs!4250 (= lambda!499 lambda!495)))

(declare-fun bs!4251 () Bool)

(assert (= bs!4251 (and d!3319 d!3315)))

(assert (=> bs!4251 (= lambda!499 lambda!497)))

(declare-fun bs!4252 () Bool)

(assert (= bs!4252 (and d!3319 d!3317)))

(assert (=> bs!4252 (= lambda!499 lambda!498)))

(declare-fun bs!4253 () Bool)

(assert (= bs!4253 (and d!3319 d!3273)))

(assert (=> bs!4253 (= lambda!499 lambda!479)))

(declare-fun bs!4254 () Bool)

(assert (= bs!4254 (and d!3319 d!3291)))

(assert (=> bs!4254 (= lambda!499 lambda!492)))

(declare-fun bs!4255 () Bool)

(assert (= bs!4255 (and d!3319 d!3287)))

(assert (=> bs!4255 (= lambda!499 lambda!488)))

(declare-fun bs!4256 () Bool)

(assert (= bs!4256 (and d!3319 d!3277)))

(assert (=> bs!4256 (= lambda!499 lambda!480)))

(assert (=> d!3319 (= (inv!566 setElem!275) (forall!34 (exprs!523 setElem!275) lambda!499))))

(declare-fun bs!4257 () Bool)

(assert (= bs!4257 d!3319))

(declare-fun m!9117 () Bool)

(assert (=> bs!4257 m!9117))

(assert (=> setNonEmpty!275 d!3319))

(declare-fun bs!4258 () Bool)

(declare-fun d!3321 () Bool)

(assert (= bs!4258 (and d!3321 d!3313)))

(declare-fun lambda!500 () Int)

(assert (=> bs!4258 (= lambda!500 lambda!496)))

(declare-fun bs!4259 () Bool)

(assert (= bs!4259 (and d!3321 d!3283)))

(assert (=> bs!4259 (= lambda!500 lambda!487)))

(declare-fun bs!4260 () Bool)

(assert (= bs!4260 (and d!3321 d!3319)))

(assert (=> bs!4260 (= lambda!500 lambda!499)))

(declare-fun bs!4261 () Bool)

(assert (= bs!4261 (and d!3321 d!3297)))

(assert (=> bs!4261 (= lambda!500 lambda!494)))

(declare-fun bs!4262 () Bool)

(assert (= bs!4262 (and d!3321 d!3295)))

(assert (=> bs!4262 (= lambda!500 lambda!493)))

(declare-fun bs!4263 () Bool)

(assert (= bs!4263 (and d!3321 d!3309)))

(assert (=> bs!4263 (= lambda!500 lambda!495)))

(declare-fun bs!4264 () Bool)

(assert (= bs!4264 (and d!3321 d!3315)))

(assert (=> bs!4264 (= lambda!500 lambda!497)))

(declare-fun bs!4265 () Bool)

(assert (= bs!4265 (and d!3321 d!3317)))

(assert (=> bs!4265 (= lambda!500 lambda!498)))

(declare-fun bs!4266 () Bool)

(assert (= bs!4266 (and d!3321 d!3273)))

(assert (=> bs!4266 (= lambda!500 lambda!479)))

(declare-fun bs!4267 () Bool)

(assert (= bs!4267 (and d!3321 d!3291)))

(assert (=> bs!4267 (= lambda!500 lambda!492)))

(declare-fun bs!4268 () Bool)

(assert (= bs!4268 (and d!3321 d!3287)))

(assert (=> bs!4268 (= lambda!500 lambda!488)))

(declare-fun bs!4269 () Bool)

(assert (= bs!4269 (and d!3321 d!3277)))

(assert (=> bs!4269 (= lambda!500 lambda!480)))

(assert (=> d!3321 (= (inv!566 setElem!276) (forall!34 (exprs!523 setElem!276) lambda!500))))

(declare-fun bs!4270 () Bool)

(assert (= bs!4270 d!3321))

(declare-fun m!9119 () Bool)

(assert (=> bs!4270 m!9119))

(assert (=> setNonEmpty!276 d!3321))

(declare-fun d!3323 () Bool)

(declare-fun lt!1881 () Int)

(assert (=> d!3323 (>= lt!1881 0)))

(declare-fun e!14964 () Int)

(assert (=> d!3323 (= lt!1881 e!14964)))

(declare-fun c!15286 () Bool)

(assert (=> d!3323 (= c!15286 ((_ is Nil!254) (list!107 input!768)))))

(assert (=> d!3323 (= (size!323 (list!107 input!768)) lt!1881)))

(declare-fun b!33158 () Bool)

(assert (=> b!33158 (= e!14964 0)))

(declare-fun b!33159 () Bool)

(assert (=> b!33159 (= e!14964 (+ 1 (size!323 (t!14846 (list!107 input!768)))))))

(assert (= (and d!3323 c!15286) b!33158))

(assert (= (and d!3323 (not c!15286)) b!33159))

(declare-fun m!9121 () Bool)

(assert (=> b!33159 m!9121))

(assert (=> d!3261 d!3323))

(declare-fun d!3325 () Bool)

(declare-fun list!109 (Conc!39) List!256)

(assert (=> d!3325 (= (list!107 input!768) (list!109 (c!15277 input!768)))))

(declare-fun bs!4271 () Bool)

(assert (= bs!4271 d!3325))

(declare-fun m!9123 () Bool)

(assert (=> bs!4271 m!9123))

(assert (=> d!3261 d!3325))

(declare-fun d!3327 () Bool)

(declare-fun lt!1884 () Int)

(assert (=> d!3327 (= lt!1884 (size!323 (list!109 (c!15277 input!768))))))

(assert (=> d!3327 (= lt!1884 (ite ((_ is Empty!39) (c!15277 input!768)) 0 (ite ((_ is Leaf!174) (c!15277 input!768)) (csize!309 (c!15277 input!768)) (csize!308 (c!15277 input!768)))))))

(assert (=> d!3327 (= (size!324 (c!15277 input!768)) lt!1884)))

(declare-fun bs!4272 () Bool)

(assert (= bs!4272 d!3327))

(assert (=> bs!4272 m!9123))

(assert (=> bs!4272 m!9123))

(declare-fun m!9125 () Bool)

(assert (=> bs!4272 m!9125))

(assert (=> d!3261 d!3327))

(declare-fun bs!4273 () Bool)

(declare-fun d!3329 () Bool)

(assert (= bs!4273 (and d!3329 d!3313)))

(declare-fun lambda!501 () Int)

(assert (=> bs!4273 (= lambda!501 lambda!496)))

(declare-fun bs!4274 () Bool)

(assert (= bs!4274 (and d!3329 d!3283)))

(assert (=> bs!4274 (= lambda!501 lambda!487)))

(declare-fun bs!4275 () Bool)

(assert (= bs!4275 (and d!3329 d!3319)))

(assert (=> bs!4275 (= lambda!501 lambda!499)))

(declare-fun bs!4276 () Bool)

(assert (= bs!4276 (and d!3329 d!3321)))

(assert (=> bs!4276 (= lambda!501 lambda!500)))

(declare-fun bs!4277 () Bool)

(assert (= bs!4277 (and d!3329 d!3297)))

(assert (=> bs!4277 (= lambda!501 lambda!494)))

(declare-fun bs!4278 () Bool)

(assert (= bs!4278 (and d!3329 d!3295)))

(assert (=> bs!4278 (= lambda!501 lambda!493)))

(declare-fun bs!4279 () Bool)

(assert (= bs!4279 (and d!3329 d!3309)))

(assert (=> bs!4279 (= lambda!501 lambda!495)))

(declare-fun bs!4280 () Bool)

(assert (= bs!4280 (and d!3329 d!3315)))

(assert (=> bs!4280 (= lambda!501 lambda!497)))

(declare-fun bs!4281 () Bool)

(assert (= bs!4281 (and d!3329 d!3317)))

(assert (=> bs!4281 (= lambda!501 lambda!498)))

(declare-fun bs!4282 () Bool)

(assert (= bs!4282 (and d!3329 d!3273)))

(assert (=> bs!4282 (= lambda!501 lambda!479)))

(declare-fun bs!4283 () Bool)

(assert (= bs!4283 (and d!3329 d!3291)))

(assert (=> bs!4283 (= lambda!501 lambda!492)))

(declare-fun bs!4284 () Bool)

(assert (= bs!4284 (and d!3329 d!3287)))

(assert (=> bs!4284 (= lambda!501 lambda!488)))

(declare-fun bs!4285 () Bool)

(assert (= bs!4285 (and d!3329 d!3277)))

(assert (=> bs!4285 (= lambda!501 lambda!480)))

(assert (=> d!3329 (= (inv!566 setElem!277) (forall!34 (exprs!523 setElem!277) lambda!501))))

(declare-fun bs!4286 () Bool)

(assert (= bs!4286 d!3329))

(declare-fun m!9127 () Bool)

(assert (=> bs!4286 m!9127))

(assert (=> setNonEmpty!277 d!3329))

(assert (=> d!3265 d!3279))

(declare-fun bs!4287 () Bool)

(declare-fun d!3331 () Bool)

(assert (= bs!4287 (and d!3331 d!3283)))

(declare-fun lambda!502 () Int)

(assert (=> bs!4287 (= lambda!502 lambda!487)))

(declare-fun bs!4288 () Bool)

(assert (= bs!4288 (and d!3331 d!3319)))

(assert (=> bs!4288 (= lambda!502 lambda!499)))

(declare-fun bs!4289 () Bool)

(assert (= bs!4289 (and d!3331 d!3321)))

(assert (=> bs!4289 (= lambda!502 lambda!500)))

(declare-fun bs!4290 () Bool)

(assert (= bs!4290 (and d!3331 d!3297)))

(assert (=> bs!4290 (= lambda!502 lambda!494)))

(declare-fun bs!4291 () Bool)

(assert (= bs!4291 (and d!3331 d!3295)))

(assert (=> bs!4291 (= lambda!502 lambda!493)))

(declare-fun bs!4292 () Bool)

(assert (= bs!4292 (and d!3331 d!3309)))

(assert (=> bs!4292 (= lambda!502 lambda!495)))

(declare-fun bs!4293 () Bool)

(assert (= bs!4293 (and d!3331 d!3329)))

(assert (=> bs!4293 (= lambda!502 lambda!501)))

(declare-fun bs!4294 () Bool)

(assert (= bs!4294 (and d!3331 d!3313)))

(assert (=> bs!4294 (= lambda!502 lambda!496)))

(declare-fun bs!4295 () Bool)

(assert (= bs!4295 (and d!3331 d!3315)))

(assert (=> bs!4295 (= lambda!502 lambda!497)))

(declare-fun bs!4296 () Bool)

(assert (= bs!4296 (and d!3331 d!3317)))

(assert (=> bs!4296 (= lambda!502 lambda!498)))

(declare-fun bs!4297 () Bool)

(assert (= bs!4297 (and d!3331 d!3273)))

(assert (=> bs!4297 (= lambda!502 lambda!479)))

(declare-fun bs!4298 () Bool)

(assert (= bs!4298 (and d!3331 d!3291)))

(assert (=> bs!4298 (= lambda!502 lambda!492)))

(declare-fun bs!4299 () Bool)

(assert (= bs!4299 (and d!3331 d!3287)))

(assert (=> bs!4299 (= lambda!502 lambda!488)))

(declare-fun bs!4300 () Bool)

(assert (= bs!4300 (and d!3331 d!3277)))

(assert (=> bs!4300 (= lambda!502 lambda!480)))

(assert (=> d!3331 (= (inv!566 (_2!98 (_1!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))))) (forall!34 (exprs!523 (_2!98 (_1!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))))) lambda!502))))

(declare-fun bs!4301 () Bool)

(assert (= bs!4301 d!3331))

(declare-fun m!9129 () Bool)

(assert (=> bs!4301 m!9129))

(assert (=> b!33039 d!3331))

(declare-fun bs!4302 () Bool)

(declare-fun d!3333 () Bool)

(assert (= bs!4302 (and d!3333 d!3283)))

(declare-fun lambda!503 () Int)

(assert (=> bs!4302 (= lambda!503 lambda!487)))

(declare-fun bs!4303 () Bool)

(assert (= bs!4303 (and d!3333 d!3319)))

(assert (=> bs!4303 (= lambda!503 lambda!499)))

(declare-fun bs!4304 () Bool)

(assert (= bs!4304 (and d!3333 d!3321)))

(assert (=> bs!4304 (= lambda!503 lambda!500)))

(declare-fun bs!4305 () Bool)

(assert (= bs!4305 (and d!3333 d!3331)))

(assert (=> bs!4305 (= lambda!503 lambda!502)))

(declare-fun bs!4306 () Bool)

(assert (= bs!4306 (and d!3333 d!3297)))

(assert (=> bs!4306 (= lambda!503 lambda!494)))

(declare-fun bs!4307 () Bool)

(assert (= bs!4307 (and d!3333 d!3295)))

(assert (=> bs!4307 (= lambda!503 lambda!493)))

(declare-fun bs!4308 () Bool)

(assert (= bs!4308 (and d!3333 d!3309)))

(assert (=> bs!4308 (= lambda!503 lambda!495)))

(declare-fun bs!4309 () Bool)

(assert (= bs!4309 (and d!3333 d!3329)))

(assert (=> bs!4309 (= lambda!503 lambda!501)))

(declare-fun bs!4310 () Bool)

(assert (= bs!4310 (and d!3333 d!3313)))

(assert (=> bs!4310 (= lambda!503 lambda!496)))

(declare-fun bs!4311 () Bool)

(assert (= bs!4311 (and d!3333 d!3315)))

(assert (=> bs!4311 (= lambda!503 lambda!497)))

(declare-fun bs!4312 () Bool)

(assert (= bs!4312 (and d!3333 d!3317)))

(assert (=> bs!4312 (= lambda!503 lambda!498)))

(declare-fun bs!4313 () Bool)

(assert (= bs!4313 (and d!3333 d!3273)))

(assert (=> bs!4313 (= lambda!503 lambda!479)))

(declare-fun bs!4314 () Bool)

(assert (= bs!4314 (and d!3333 d!3291)))

(assert (=> bs!4314 (= lambda!503 lambda!492)))

(declare-fun bs!4315 () Bool)

(assert (= bs!4315 (and d!3333 d!3287)))

(assert (=> bs!4315 (= lambda!503 lambda!488)))

(declare-fun bs!4316 () Bool)

(assert (= bs!4316 (and d!3333 d!3277)))

(assert (=> bs!4316 (= lambda!503 lambda!480)))

(assert (=> d!3333 (= (inv!566 setElem!268) (forall!34 (exprs!523 setElem!268) lambda!503))))

(declare-fun bs!4317 () Bool)

(assert (= bs!4317 d!3333))

(declare-fun m!9131 () Bool)

(assert (=> bs!4317 m!9131))

(assert (=> setNonEmpty!269 d!3333))

(declare-fun bs!4318 () Bool)

(declare-fun d!3335 () Bool)

(assert (= bs!4318 (and d!3335 d!3283)))

(declare-fun lambda!504 () Int)

(assert (=> bs!4318 (= lambda!504 lambda!487)))

(declare-fun bs!4319 () Bool)

(assert (= bs!4319 (and d!3335 d!3319)))

(assert (=> bs!4319 (= lambda!504 lambda!499)))

(declare-fun bs!4320 () Bool)

(assert (= bs!4320 (and d!3335 d!3321)))

(assert (=> bs!4320 (= lambda!504 lambda!500)))

(declare-fun bs!4321 () Bool)

(assert (= bs!4321 (and d!3335 d!3333)))

(assert (=> bs!4321 (= lambda!504 lambda!503)))

(declare-fun bs!4322 () Bool)

(assert (= bs!4322 (and d!3335 d!3331)))

(assert (=> bs!4322 (= lambda!504 lambda!502)))

(declare-fun bs!4323 () Bool)

(assert (= bs!4323 (and d!3335 d!3297)))

(assert (=> bs!4323 (= lambda!504 lambda!494)))

(declare-fun bs!4324 () Bool)

(assert (= bs!4324 (and d!3335 d!3295)))

(assert (=> bs!4324 (= lambda!504 lambda!493)))

(declare-fun bs!4325 () Bool)

(assert (= bs!4325 (and d!3335 d!3309)))

(assert (=> bs!4325 (= lambda!504 lambda!495)))

(declare-fun bs!4326 () Bool)

(assert (= bs!4326 (and d!3335 d!3329)))

(assert (=> bs!4326 (= lambda!504 lambda!501)))

(declare-fun bs!4327 () Bool)

(assert (= bs!4327 (and d!3335 d!3313)))

(assert (=> bs!4327 (= lambda!504 lambda!496)))

(declare-fun bs!4328 () Bool)

(assert (= bs!4328 (and d!3335 d!3315)))

(assert (=> bs!4328 (= lambda!504 lambda!497)))

(declare-fun bs!4329 () Bool)

(assert (= bs!4329 (and d!3335 d!3317)))

(assert (=> bs!4329 (= lambda!504 lambda!498)))

(declare-fun bs!4330 () Bool)

(assert (= bs!4330 (and d!3335 d!3273)))

(assert (=> bs!4330 (= lambda!504 lambda!479)))

(declare-fun bs!4331 () Bool)

(assert (= bs!4331 (and d!3335 d!3291)))

(assert (=> bs!4331 (= lambda!504 lambda!492)))

(declare-fun bs!4332 () Bool)

(assert (= bs!4332 (and d!3335 d!3287)))

(assert (=> bs!4332 (= lambda!504 lambda!488)))

(declare-fun bs!4333 () Bool)

(assert (= bs!4333 (and d!3335 d!3277)))

(assert (=> bs!4333 (= lambda!504 lambda!480)))

(assert (=> d!3335 (= (inv!566 setElem!287) (forall!34 (exprs!523 setElem!287) lambda!504))))

(declare-fun bs!4334 () Bool)

(assert (= bs!4334 d!3335))

(declare-fun m!9133 () Bool)

(assert (=> bs!4334 m!9133))

(assert (=> setNonEmpty!287 d!3335))

(declare-fun bs!4335 () Bool)

(declare-fun d!3337 () Bool)

(assert (= bs!4335 (and d!3337 d!3283)))

(declare-fun lambda!505 () Int)

(assert (=> bs!4335 (= lambda!505 lambda!487)))

(declare-fun bs!4336 () Bool)

(assert (= bs!4336 (and d!3337 d!3319)))

(assert (=> bs!4336 (= lambda!505 lambda!499)))

(declare-fun bs!4337 () Bool)

(assert (= bs!4337 (and d!3337 d!3321)))

(assert (=> bs!4337 (= lambda!505 lambda!500)))

(declare-fun bs!4338 () Bool)

(assert (= bs!4338 (and d!3337 d!3333)))

(assert (=> bs!4338 (= lambda!505 lambda!503)))

(declare-fun bs!4339 () Bool)

(assert (= bs!4339 (and d!3337 d!3331)))

(assert (=> bs!4339 (= lambda!505 lambda!502)))

(declare-fun bs!4340 () Bool)

(assert (= bs!4340 (and d!3337 d!3335)))

(assert (=> bs!4340 (= lambda!505 lambda!504)))

(declare-fun bs!4341 () Bool)

(assert (= bs!4341 (and d!3337 d!3297)))

(assert (=> bs!4341 (= lambda!505 lambda!494)))

(declare-fun bs!4342 () Bool)

(assert (= bs!4342 (and d!3337 d!3295)))

(assert (=> bs!4342 (= lambda!505 lambda!493)))

(declare-fun bs!4343 () Bool)

(assert (= bs!4343 (and d!3337 d!3309)))

(assert (=> bs!4343 (= lambda!505 lambda!495)))

(declare-fun bs!4344 () Bool)

(assert (= bs!4344 (and d!3337 d!3329)))

(assert (=> bs!4344 (= lambda!505 lambda!501)))

(declare-fun bs!4345 () Bool)

(assert (= bs!4345 (and d!3337 d!3313)))

(assert (=> bs!4345 (= lambda!505 lambda!496)))

(declare-fun bs!4346 () Bool)

(assert (= bs!4346 (and d!3337 d!3315)))

(assert (=> bs!4346 (= lambda!505 lambda!497)))

(declare-fun bs!4347 () Bool)

(assert (= bs!4347 (and d!3337 d!3317)))

(assert (=> bs!4347 (= lambda!505 lambda!498)))

(declare-fun bs!4348 () Bool)

(assert (= bs!4348 (and d!3337 d!3273)))

(assert (=> bs!4348 (= lambda!505 lambda!479)))

(declare-fun bs!4349 () Bool)

(assert (= bs!4349 (and d!3337 d!3291)))

(assert (=> bs!4349 (= lambda!505 lambda!492)))

(declare-fun bs!4350 () Bool)

(assert (= bs!4350 (and d!3337 d!3287)))

(assert (=> bs!4350 (= lambda!505 lambda!488)))

(declare-fun bs!4351 () Bool)

(assert (= bs!4351 (and d!3337 d!3277)))

(assert (=> bs!4351 (= lambda!505 lambda!480)))

(assert (=> d!3337 (= (inv!566 setElem!272) (forall!34 (exprs!523 setElem!272) lambda!505))))

(declare-fun bs!4352 () Bool)

(assert (= bs!4352 d!3337))

(declare-fun m!9135 () Bool)

(assert (=> bs!4352 m!9135))

(assert (=> setNonEmpty!272 d!3337))

(declare-fun bs!4353 () Bool)

(declare-fun d!3339 () Bool)

(assert (= bs!4353 (and d!3339 d!3283)))

(declare-fun lambda!506 () Int)

(assert (=> bs!4353 (= lambda!506 lambda!487)))

(declare-fun bs!4354 () Bool)

(assert (= bs!4354 (and d!3339 d!3319)))

(assert (=> bs!4354 (= lambda!506 lambda!499)))

(declare-fun bs!4355 () Bool)

(assert (= bs!4355 (and d!3339 d!3321)))

(assert (=> bs!4355 (= lambda!506 lambda!500)))

(declare-fun bs!4356 () Bool)

(assert (= bs!4356 (and d!3339 d!3333)))

(assert (=> bs!4356 (= lambda!506 lambda!503)))

(declare-fun bs!4357 () Bool)

(assert (= bs!4357 (and d!3339 d!3331)))

(assert (=> bs!4357 (= lambda!506 lambda!502)))

(declare-fun bs!4358 () Bool)

(assert (= bs!4358 (and d!3339 d!3335)))

(assert (=> bs!4358 (= lambda!506 lambda!504)))

(declare-fun bs!4359 () Bool)

(assert (= bs!4359 (and d!3339 d!3297)))

(assert (=> bs!4359 (= lambda!506 lambda!494)))

(declare-fun bs!4360 () Bool)

(assert (= bs!4360 (and d!3339 d!3337)))

(assert (=> bs!4360 (= lambda!506 lambda!505)))

(declare-fun bs!4361 () Bool)

(assert (= bs!4361 (and d!3339 d!3295)))

(assert (=> bs!4361 (= lambda!506 lambda!493)))

(declare-fun bs!4362 () Bool)

(assert (= bs!4362 (and d!3339 d!3309)))

(assert (=> bs!4362 (= lambda!506 lambda!495)))

(declare-fun bs!4363 () Bool)

(assert (= bs!4363 (and d!3339 d!3329)))

(assert (=> bs!4363 (= lambda!506 lambda!501)))

(declare-fun bs!4364 () Bool)

(assert (= bs!4364 (and d!3339 d!3313)))

(assert (=> bs!4364 (= lambda!506 lambda!496)))

(declare-fun bs!4365 () Bool)

(assert (= bs!4365 (and d!3339 d!3315)))

(assert (=> bs!4365 (= lambda!506 lambda!497)))

(declare-fun bs!4366 () Bool)

(assert (= bs!4366 (and d!3339 d!3317)))

(assert (=> bs!4366 (= lambda!506 lambda!498)))

(declare-fun bs!4367 () Bool)

(assert (= bs!4367 (and d!3339 d!3273)))

(assert (=> bs!4367 (= lambda!506 lambda!479)))

(declare-fun bs!4368 () Bool)

(assert (= bs!4368 (and d!3339 d!3291)))

(assert (=> bs!4368 (= lambda!506 lambda!492)))

(declare-fun bs!4369 () Bool)

(assert (= bs!4369 (and d!3339 d!3287)))

(assert (=> bs!4369 (= lambda!506 lambda!488)))

(declare-fun bs!4370 () Bool)

(assert (= bs!4370 (and d!3339 d!3277)))

(assert (=> bs!4370 (= lambda!506 lambda!480)))

(assert (=> d!3339 (= (inv!566 setElem!286) (forall!34 (exprs!523 setElem!286) lambda!506))))

(declare-fun bs!4371 () Bool)

(assert (= bs!4371 d!3339))

(declare-fun m!9137 () Bool)

(assert (=> bs!4371 m!9137))

(assert (=> setNonEmpty!286 d!3339))

(declare-fun d!3341 () Bool)

(assert (=> d!3341 true))

(declare-fun lt!1887 () Bool)

(declare-fun rulesValidInductive!5 (LexerInterface!19 List!261) Bool)

(assert (=> d!3341 (= lt!1887 (rulesValidInductive!5 thiss!12222 rules!1369))))

(declare-fun lambda!509 () Int)

(declare-fun forall!37 (List!261 Int) Bool)

(assert (=> d!3341 (= lt!1887 (forall!37 rules!1369 lambda!509))))

(assert (=> d!3341 (= (rulesValid!5 thiss!12222 rules!1369) lt!1887)))

(declare-fun bs!4372 () Bool)

(assert (= bs!4372 d!3341))

(declare-fun m!9139 () Bool)

(assert (=> bs!4372 m!9139))

(declare-fun m!9141 () Bool)

(assert (=> bs!4372 m!9141))

(assert (=> d!3259 d!3341))

(declare-fun d!3343 () Bool)

(assert (=> d!3343 true))

(declare-fun order!59 () Int)

(declare-fun lambda!512 () Int)

(declare-fun dynLambda!32 (Int Int) Int)

(assert (=> d!3343 (< (dynLambda!31 order!57 (toValue!594 (transformation!117 (h!5655 rules!1369)))) (dynLambda!32 order!59 lambda!512))))

(declare-fun Forall2!11 (Int) Bool)

(assert (=> d!3343 (= (equivClasses!9 (toChars!453 (transformation!117 (h!5655 rules!1369))) (toValue!594 (transformation!117 (h!5655 rules!1369)))) (Forall2!11 lambda!512))))

(declare-fun bs!4373 () Bool)

(assert (= bs!4373 d!3343))

(declare-fun m!9143 () Bool)

(assert (=> bs!4373 m!9143))

(assert (=> b!32955 d!3343))

(declare-fun bs!4374 () Bool)

(declare-fun d!3345 () Bool)

(assert (= bs!4374 (and d!3345 d!3283)))

(declare-fun lambda!513 () Int)

(assert (=> bs!4374 (= lambda!513 lambda!487)))

(declare-fun bs!4375 () Bool)

(assert (= bs!4375 (and d!3345 d!3319)))

(assert (=> bs!4375 (= lambda!513 lambda!499)))

(declare-fun bs!4376 () Bool)

(assert (= bs!4376 (and d!3345 d!3321)))

(assert (=> bs!4376 (= lambda!513 lambda!500)))

(declare-fun bs!4377 () Bool)

(assert (= bs!4377 (and d!3345 d!3333)))

(assert (=> bs!4377 (= lambda!513 lambda!503)))

(declare-fun bs!4378 () Bool)

(assert (= bs!4378 (and d!3345 d!3331)))

(assert (=> bs!4378 (= lambda!513 lambda!502)))

(declare-fun bs!4379 () Bool)

(assert (= bs!4379 (and d!3345 d!3335)))

(assert (=> bs!4379 (= lambda!513 lambda!504)))

(declare-fun bs!4380 () Bool)

(assert (= bs!4380 (and d!3345 d!3297)))

(assert (=> bs!4380 (= lambda!513 lambda!494)))

(declare-fun bs!4381 () Bool)

(assert (= bs!4381 (and d!3345 d!3337)))

(assert (=> bs!4381 (= lambda!513 lambda!505)))

(declare-fun bs!4382 () Bool)

(assert (= bs!4382 (and d!3345 d!3295)))

(assert (=> bs!4382 (= lambda!513 lambda!493)))

(declare-fun bs!4383 () Bool)

(assert (= bs!4383 (and d!3345 d!3309)))

(assert (=> bs!4383 (= lambda!513 lambda!495)))

(declare-fun bs!4384 () Bool)

(assert (= bs!4384 (and d!3345 d!3329)))

(assert (=> bs!4384 (= lambda!513 lambda!501)))

(declare-fun bs!4385 () Bool)

(assert (= bs!4385 (and d!3345 d!3313)))

(assert (=> bs!4385 (= lambda!513 lambda!496)))

(declare-fun bs!4386 () Bool)

(assert (= bs!4386 (and d!3345 d!3315)))

(assert (=> bs!4386 (= lambda!513 lambda!497)))

(declare-fun bs!4387 () Bool)

(assert (= bs!4387 (and d!3345 d!3317)))

(assert (=> bs!4387 (= lambda!513 lambda!498)))

(declare-fun bs!4388 () Bool)

(assert (= bs!4388 (and d!3345 d!3339)))

(assert (=> bs!4388 (= lambda!513 lambda!506)))

(declare-fun bs!4389 () Bool)

(assert (= bs!4389 (and d!3345 d!3273)))

(assert (=> bs!4389 (= lambda!513 lambda!479)))

(declare-fun bs!4390 () Bool)

(assert (= bs!4390 (and d!3345 d!3291)))

(assert (=> bs!4390 (= lambda!513 lambda!492)))

(declare-fun bs!4391 () Bool)

(assert (= bs!4391 (and d!3345 d!3287)))

(assert (=> bs!4391 (= lambda!513 lambda!488)))

(declare-fun bs!4392 () Bool)

(assert (= bs!4392 (and d!3345 d!3277)))

(assert (=> bs!4392 (= lambda!513 lambda!480)))

(assert (=> d!3345 (= (inv!566 setElem!285) (forall!34 (exprs!523 setElem!285) lambda!513))))

(declare-fun bs!4393 () Bool)

(assert (= bs!4393 d!3345))

(declare-fun m!9145 () Bool)

(assert (=> bs!4393 m!9145))

(assert (=> setNonEmpty!285 d!3345))

(declare-fun bs!4394 () Bool)

(declare-fun d!3347 () Bool)

(assert (= bs!4394 (and d!3347 d!3283)))

(declare-fun lambda!514 () Int)

(assert (=> bs!4394 (= lambda!514 lambda!487)))

(declare-fun bs!4395 () Bool)

(assert (= bs!4395 (and d!3347 d!3319)))

(assert (=> bs!4395 (= lambda!514 lambda!499)))

(declare-fun bs!4396 () Bool)

(assert (= bs!4396 (and d!3347 d!3321)))

(assert (=> bs!4396 (= lambda!514 lambda!500)))

(declare-fun bs!4397 () Bool)

(assert (= bs!4397 (and d!3347 d!3333)))

(assert (=> bs!4397 (= lambda!514 lambda!503)))

(declare-fun bs!4398 () Bool)

(assert (= bs!4398 (and d!3347 d!3331)))

(assert (=> bs!4398 (= lambda!514 lambda!502)))

(declare-fun bs!4399 () Bool)

(assert (= bs!4399 (and d!3347 d!3335)))

(assert (=> bs!4399 (= lambda!514 lambda!504)))

(declare-fun bs!4400 () Bool)

(assert (= bs!4400 (and d!3347 d!3345)))

(assert (=> bs!4400 (= lambda!514 lambda!513)))

(declare-fun bs!4401 () Bool)

(assert (= bs!4401 (and d!3347 d!3297)))

(assert (=> bs!4401 (= lambda!514 lambda!494)))

(declare-fun bs!4402 () Bool)

(assert (= bs!4402 (and d!3347 d!3337)))

(assert (=> bs!4402 (= lambda!514 lambda!505)))

(declare-fun bs!4403 () Bool)

(assert (= bs!4403 (and d!3347 d!3295)))

(assert (=> bs!4403 (= lambda!514 lambda!493)))

(declare-fun bs!4404 () Bool)

(assert (= bs!4404 (and d!3347 d!3309)))

(assert (=> bs!4404 (= lambda!514 lambda!495)))

(declare-fun bs!4405 () Bool)

(assert (= bs!4405 (and d!3347 d!3329)))

(assert (=> bs!4405 (= lambda!514 lambda!501)))

(declare-fun bs!4406 () Bool)

(assert (= bs!4406 (and d!3347 d!3313)))

(assert (=> bs!4406 (= lambda!514 lambda!496)))

(declare-fun bs!4407 () Bool)

(assert (= bs!4407 (and d!3347 d!3315)))

(assert (=> bs!4407 (= lambda!514 lambda!497)))

(declare-fun bs!4408 () Bool)

(assert (= bs!4408 (and d!3347 d!3317)))

(assert (=> bs!4408 (= lambda!514 lambda!498)))

(declare-fun bs!4409 () Bool)

(assert (= bs!4409 (and d!3347 d!3339)))

(assert (=> bs!4409 (= lambda!514 lambda!506)))

(declare-fun bs!4410 () Bool)

(assert (= bs!4410 (and d!3347 d!3273)))

(assert (=> bs!4410 (= lambda!514 lambda!479)))

(declare-fun bs!4411 () Bool)

(assert (= bs!4411 (and d!3347 d!3291)))

(assert (=> bs!4411 (= lambda!514 lambda!492)))

(declare-fun bs!4412 () Bool)

(assert (= bs!4412 (and d!3347 d!3287)))

(assert (=> bs!4412 (= lambda!514 lambda!488)))

(declare-fun bs!4413 () Bool)

(assert (= bs!4413 (and d!3347 d!3277)))

(assert (=> bs!4413 (= lambda!514 lambda!480)))

(assert (=> d!3347 (= (inv!566 (_1!96 (_1!97 (h!5652 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))))) (forall!34 (exprs!523 (_1!96 (_1!97 (h!5652 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))))) lambda!514))))

(declare-fun bs!4414 () Bool)

(assert (= bs!4414 d!3347))

(declare-fun m!9147 () Bool)

(assert (=> bs!4414 m!9147))

(assert (=> b!33088 d!3347))

(declare-fun bs!4415 () Bool)

(declare-fun d!3349 () Bool)

(assert (= bs!4415 (and d!3349 d!3283)))

(declare-fun lambda!515 () Int)

(assert (=> bs!4415 (= lambda!515 lambda!487)))

(declare-fun bs!4416 () Bool)

(assert (= bs!4416 (and d!3349 d!3319)))

(assert (=> bs!4416 (= lambda!515 lambda!499)))

(declare-fun bs!4417 () Bool)

(assert (= bs!4417 (and d!3349 d!3321)))

(assert (=> bs!4417 (= lambda!515 lambda!500)))

(declare-fun bs!4418 () Bool)

(assert (= bs!4418 (and d!3349 d!3333)))

(assert (=> bs!4418 (= lambda!515 lambda!503)))

(declare-fun bs!4419 () Bool)

(assert (= bs!4419 (and d!3349 d!3331)))

(assert (=> bs!4419 (= lambda!515 lambda!502)))

(declare-fun bs!4420 () Bool)

(assert (= bs!4420 (and d!3349 d!3335)))

(assert (=> bs!4420 (= lambda!515 lambda!504)))

(declare-fun bs!4421 () Bool)

(assert (= bs!4421 (and d!3349 d!3345)))

(assert (=> bs!4421 (= lambda!515 lambda!513)))

(declare-fun bs!4422 () Bool)

(assert (= bs!4422 (and d!3349 d!3297)))

(assert (=> bs!4422 (= lambda!515 lambda!494)))

(declare-fun bs!4423 () Bool)

(assert (= bs!4423 (and d!3349 d!3337)))

(assert (=> bs!4423 (= lambda!515 lambda!505)))

(declare-fun bs!4424 () Bool)

(assert (= bs!4424 (and d!3349 d!3347)))

(assert (=> bs!4424 (= lambda!515 lambda!514)))

(declare-fun bs!4425 () Bool)

(assert (= bs!4425 (and d!3349 d!3295)))

(assert (=> bs!4425 (= lambda!515 lambda!493)))

(declare-fun bs!4426 () Bool)

(assert (= bs!4426 (and d!3349 d!3309)))

(assert (=> bs!4426 (= lambda!515 lambda!495)))

(declare-fun bs!4427 () Bool)

(assert (= bs!4427 (and d!3349 d!3329)))

(assert (=> bs!4427 (= lambda!515 lambda!501)))

(declare-fun bs!4428 () Bool)

(assert (= bs!4428 (and d!3349 d!3313)))

(assert (=> bs!4428 (= lambda!515 lambda!496)))

(declare-fun bs!4429 () Bool)

(assert (= bs!4429 (and d!3349 d!3315)))

(assert (=> bs!4429 (= lambda!515 lambda!497)))

(declare-fun bs!4430 () Bool)

(assert (= bs!4430 (and d!3349 d!3317)))

(assert (=> bs!4430 (= lambda!515 lambda!498)))

(declare-fun bs!4431 () Bool)

(assert (= bs!4431 (and d!3349 d!3339)))

(assert (=> bs!4431 (= lambda!515 lambda!506)))

(declare-fun bs!4432 () Bool)

(assert (= bs!4432 (and d!3349 d!3273)))

(assert (=> bs!4432 (= lambda!515 lambda!479)))

(declare-fun bs!4433 () Bool)

(assert (= bs!4433 (and d!3349 d!3291)))

(assert (=> bs!4433 (= lambda!515 lambda!492)))

(declare-fun bs!4434 () Bool)

(assert (= bs!4434 (and d!3349 d!3287)))

(assert (=> bs!4434 (= lambda!515 lambda!488)))

(declare-fun bs!4435 () Bool)

(assert (= bs!4435 (and d!3349 d!3277)))

(assert (=> bs!4435 (= lambda!515 lambda!480)))

(assert (=> d!3349 (= (inv!566 (_1!96 (_1!97 (h!5652 mapValue!155)))) (forall!34 (exprs!523 (_1!96 (_1!97 (h!5652 mapValue!155)))) lambda!515))))

(declare-fun bs!4436 () Bool)

(assert (= bs!4436 d!3349))

(declare-fun m!9149 () Bool)

(assert (=> bs!4436 m!9149))

(assert (=> b!33028 d!3349))

(declare-fun bs!4437 () Bool)

(declare-fun d!3351 () Bool)

(assert (= bs!4437 (and d!3351 d!3283)))

(declare-fun lambda!516 () Int)

(assert (=> bs!4437 (= lambda!516 lambda!487)))

(declare-fun bs!4438 () Bool)

(assert (= bs!4438 (and d!3351 d!3319)))

(assert (=> bs!4438 (= lambda!516 lambda!499)))

(declare-fun bs!4439 () Bool)

(assert (= bs!4439 (and d!3351 d!3321)))

(assert (=> bs!4439 (= lambda!516 lambda!500)))

(declare-fun bs!4440 () Bool)

(assert (= bs!4440 (and d!3351 d!3333)))

(assert (=> bs!4440 (= lambda!516 lambda!503)))

(declare-fun bs!4441 () Bool)

(assert (= bs!4441 (and d!3351 d!3331)))

(assert (=> bs!4441 (= lambda!516 lambda!502)))

(declare-fun bs!4442 () Bool)

(assert (= bs!4442 (and d!3351 d!3335)))

(assert (=> bs!4442 (= lambda!516 lambda!504)))

(declare-fun bs!4443 () Bool)

(assert (= bs!4443 (and d!3351 d!3345)))

(assert (=> bs!4443 (= lambda!516 lambda!513)))

(declare-fun bs!4444 () Bool)

(assert (= bs!4444 (and d!3351 d!3297)))

(assert (=> bs!4444 (= lambda!516 lambda!494)))

(declare-fun bs!4445 () Bool)

(assert (= bs!4445 (and d!3351 d!3337)))

(assert (=> bs!4445 (= lambda!516 lambda!505)))

(declare-fun bs!4446 () Bool)

(assert (= bs!4446 (and d!3351 d!3347)))

(assert (=> bs!4446 (= lambda!516 lambda!514)))

(declare-fun bs!4447 () Bool)

(assert (= bs!4447 (and d!3351 d!3349)))

(assert (=> bs!4447 (= lambda!516 lambda!515)))

(declare-fun bs!4448 () Bool)

(assert (= bs!4448 (and d!3351 d!3295)))

(assert (=> bs!4448 (= lambda!516 lambda!493)))

(declare-fun bs!4449 () Bool)

(assert (= bs!4449 (and d!3351 d!3309)))

(assert (=> bs!4449 (= lambda!516 lambda!495)))

(declare-fun bs!4450 () Bool)

(assert (= bs!4450 (and d!3351 d!3329)))

(assert (=> bs!4450 (= lambda!516 lambda!501)))

(declare-fun bs!4451 () Bool)

(assert (= bs!4451 (and d!3351 d!3313)))

(assert (=> bs!4451 (= lambda!516 lambda!496)))

(declare-fun bs!4452 () Bool)

(assert (= bs!4452 (and d!3351 d!3315)))

(assert (=> bs!4452 (= lambda!516 lambda!497)))

(declare-fun bs!4453 () Bool)

(assert (= bs!4453 (and d!3351 d!3317)))

(assert (=> bs!4453 (= lambda!516 lambda!498)))

(declare-fun bs!4454 () Bool)

(assert (= bs!4454 (and d!3351 d!3339)))

(assert (=> bs!4454 (= lambda!516 lambda!506)))

(declare-fun bs!4455 () Bool)

(assert (= bs!4455 (and d!3351 d!3273)))

(assert (=> bs!4455 (= lambda!516 lambda!479)))

(declare-fun bs!4456 () Bool)

(assert (= bs!4456 (and d!3351 d!3291)))

(assert (=> bs!4456 (= lambda!516 lambda!492)))

(declare-fun bs!4457 () Bool)

(assert (= bs!4457 (and d!3351 d!3287)))

(assert (=> bs!4457 (= lambda!516 lambda!488)))

(declare-fun bs!4458 () Bool)

(assert (= bs!4458 (and d!3351 d!3277)))

(assert (=> bs!4458 (= lambda!516 lambda!480)))

(assert (=> d!3351 (= (inv!566 (_1!96 (_1!97 (h!5652 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))))) (forall!34 (exprs!523 (_1!96 (_1!97 (h!5652 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))))) lambda!516))))

(declare-fun bs!4459 () Bool)

(assert (= bs!4459 d!3351))

(declare-fun m!9151 () Bool)

(assert (=> bs!4459 m!9151))

(assert (=> b!33085 d!3351))

(declare-fun bs!4460 () Bool)

(declare-fun d!3353 () Bool)

(assert (= bs!4460 (and d!3353 d!3283)))

(declare-fun lambda!517 () Int)

(assert (=> bs!4460 (= lambda!517 lambda!487)))

(declare-fun bs!4461 () Bool)

(assert (= bs!4461 (and d!3353 d!3319)))

(assert (=> bs!4461 (= lambda!517 lambda!499)))

(declare-fun bs!4462 () Bool)

(assert (= bs!4462 (and d!3353 d!3321)))

(assert (=> bs!4462 (= lambda!517 lambda!500)))

(declare-fun bs!4463 () Bool)

(assert (= bs!4463 (and d!3353 d!3333)))

(assert (=> bs!4463 (= lambda!517 lambda!503)))

(declare-fun bs!4464 () Bool)

(assert (= bs!4464 (and d!3353 d!3331)))

(assert (=> bs!4464 (= lambda!517 lambda!502)))

(declare-fun bs!4465 () Bool)

(assert (= bs!4465 (and d!3353 d!3345)))

(assert (=> bs!4465 (= lambda!517 lambda!513)))

(declare-fun bs!4466 () Bool)

(assert (= bs!4466 (and d!3353 d!3297)))

(assert (=> bs!4466 (= lambda!517 lambda!494)))

(declare-fun bs!4467 () Bool)

(assert (= bs!4467 (and d!3353 d!3337)))

(assert (=> bs!4467 (= lambda!517 lambda!505)))

(declare-fun bs!4468 () Bool)

(assert (= bs!4468 (and d!3353 d!3347)))

(assert (=> bs!4468 (= lambda!517 lambda!514)))

(declare-fun bs!4469 () Bool)

(assert (= bs!4469 (and d!3353 d!3349)))

(assert (=> bs!4469 (= lambda!517 lambda!515)))

(declare-fun bs!4470 () Bool)

(assert (= bs!4470 (and d!3353 d!3295)))

(assert (=> bs!4470 (= lambda!517 lambda!493)))

(declare-fun bs!4471 () Bool)

(assert (= bs!4471 (and d!3353 d!3309)))

(assert (=> bs!4471 (= lambda!517 lambda!495)))

(declare-fun bs!4472 () Bool)

(assert (= bs!4472 (and d!3353 d!3329)))

(assert (=> bs!4472 (= lambda!517 lambda!501)))

(declare-fun bs!4473 () Bool)

(assert (= bs!4473 (and d!3353 d!3313)))

(assert (=> bs!4473 (= lambda!517 lambda!496)))

(declare-fun bs!4474 () Bool)

(assert (= bs!4474 (and d!3353 d!3315)))

(assert (=> bs!4474 (= lambda!517 lambda!497)))

(declare-fun bs!4475 () Bool)

(assert (= bs!4475 (and d!3353 d!3317)))

(assert (=> bs!4475 (= lambda!517 lambda!498)))

(declare-fun bs!4476 () Bool)

(assert (= bs!4476 (and d!3353 d!3335)))

(assert (=> bs!4476 (= lambda!517 lambda!504)))

(declare-fun bs!4477 () Bool)

(assert (= bs!4477 (and d!3353 d!3351)))

(assert (=> bs!4477 (= lambda!517 lambda!516)))

(declare-fun bs!4478 () Bool)

(assert (= bs!4478 (and d!3353 d!3339)))

(assert (=> bs!4478 (= lambda!517 lambda!506)))

(declare-fun bs!4479 () Bool)

(assert (= bs!4479 (and d!3353 d!3273)))

(assert (=> bs!4479 (= lambda!517 lambda!479)))

(declare-fun bs!4480 () Bool)

(assert (= bs!4480 (and d!3353 d!3291)))

(assert (=> bs!4480 (= lambda!517 lambda!492)))

(declare-fun bs!4481 () Bool)

(assert (= bs!4481 (and d!3353 d!3287)))

(assert (=> bs!4481 (= lambda!517 lambda!488)))

(declare-fun bs!4482 () Bool)

(assert (= bs!4482 (and d!3353 d!3277)))

(assert (=> bs!4482 (= lambda!517 lambda!480)))

(assert (=> d!3353 (= (inv!566 (_2!98 (_1!99 (h!5653 mapDefault!162)))) (forall!34 (exprs!523 (_2!98 (_1!99 (h!5653 mapDefault!162)))) lambda!517))))

(declare-fun bs!4483 () Bool)

(assert (= bs!4483 d!3353))

(declare-fun m!9153 () Bool)

(assert (=> bs!4483 m!9153))

(assert (=> b!33062 d!3353))

(declare-fun e!14967 () Bool)

(declare-fun setRes!288 () Bool)

(declare-fun tp!22856 () Bool)

(declare-fun setNonEmpty!288 () Bool)

(declare-fun setElem!288 () Context!46)

(assert (=> setNonEmpty!288 (= setRes!288 (and tp!22856 (inv!566 setElem!288) e!14967))))

(declare-fun setRest!288 () (InoxSet Context!46))

(assert (=> setNonEmpty!288 (= (_2!97 (h!5652 (t!14848 mapDefault!156))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!288 true) setRest!288))))

(declare-fun b!33166 () Bool)

(declare-fun tp!22855 () Bool)

(assert (=> b!33166 (= e!14967 tp!22855)))

(declare-fun e!14969 () Bool)

(assert (=> b!33082 (= tp!22842 e!14969)))

(declare-fun tp!22854 () Bool)

(declare-fun b!33167 () Bool)

(declare-fun e!14968 () Bool)

(assert (=> b!33167 (= e!14969 (and (inv!566 (_1!96 (_1!97 (h!5652 (t!14848 mapDefault!156))))) e!14968 tp_is_empty!297 setRes!288 tp!22854))))

(declare-fun condSetEmpty!288 () Bool)

(assert (=> b!33167 (= condSetEmpty!288 (= (_2!97 (h!5652 (t!14848 mapDefault!156))) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33168 () Bool)

(declare-fun tp!22853 () Bool)

(assert (=> b!33168 (= e!14968 tp!22853)))

(declare-fun setIsEmpty!288 () Bool)

(assert (=> setIsEmpty!288 setRes!288))

(assert (= b!33167 b!33168))

(assert (= (and b!33167 condSetEmpty!288) setIsEmpty!288))

(assert (= (and b!33167 (not condSetEmpty!288)) setNonEmpty!288))

(assert (= setNonEmpty!288 b!33166))

(assert (= (and b!33082 ((_ is Cons!256) (t!14848 mapDefault!156))) b!33167))

(declare-fun m!9155 () Bool)

(assert (=> setNonEmpty!288 m!9155))

(declare-fun m!9157 () Bool)

(assert (=> b!33167 m!9157))

(declare-fun mapIsEmpty!163 () Bool)

(declare-fun mapRes!163 () Bool)

(assert (=> mapIsEmpty!163 mapRes!163))

(declare-fun b!33169 () Bool)

(declare-fun e!14975 () Bool)

(declare-fun tp!22864 () Bool)

(assert (=> b!33169 (= e!14975 tp!22864)))

(declare-fun setIsEmpty!289 () Bool)

(declare-fun setRes!290 () Bool)

(assert (=> setIsEmpty!289 setRes!290))

(declare-fun setRes!289 () Bool)

(declare-fun b!33170 () Bool)

(declare-fun mapDefault!163 () List!259)

(declare-fun tp!22860 () Bool)

(declare-fun tp!22866 () Bool)

(declare-fun e!14970 () Bool)

(assert (=> b!33170 (= e!14970 (and tp!22860 (inv!566 (_2!98 (_1!99 (h!5653 mapDefault!163)))) e!14975 tp_is_empty!297 setRes!289 tp!22866))))

(declare-fun condSetEmpty!290 () Bool)

(assert (=> b!33170 (= condSetEmpty!290 (= (_2!99 (h!5653 mapDefault!163)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33171 () Bool)

(declare-fun e!14972 () Bool)

(declare-fun tp!22867 () Bool)

(assert (=> b!33171 (= e!14972 tp!22867)))

(declare-fun b!33172 () Bool)

(declare-fun e!14974 () Bool)

(declare-fun tp!22857 () Bool)

(assert (=> b!33172 (= e!14974 tp!22857)))

(declare-fun mapNonEmpty!163 () Bool)

(declare-fun tp!22861 () Bool)

(declare-fun e!14971 () Bool)

(assert (=> mapNonEmpty!163 (= mapRes!163 (and tp!22861 e!14971))))

(declare-fun mapKey!163 () (_ BitVec 32))

(declare-fun mapRest!163 () (Array (_ BitVec 32) List!259))

(declare-fun mapValue!163 () List!259)

(assert (=> mapNonEmpty!163 (= mapRest!162 (store mapRest!163 mapKey!163 mapValue!163))))

(declare-fun setIsEmpty!290 () Bool)

(assert (=> setIsEmpty!290 setRes!289))

(declare-fun b!33173 () Bool)

(declare-fun e!14973 () Bool)

(declare-fun tp!22863 () Bool)

(declare-fun tp!22865 () Bool)

(assert (=> b!33173 (= e!14971 (and tp!22865 (inv!566 (_2!98 (_1!99 (h!5653 mapValue!163)))) e!14973 tp_is_empty!297 setRes!290 tp!22863))))

(declare-fun condSetEmpty!289 () Bool)

(assert (=> b!33173 (= condSetEmpty!289 (= (_2!99 (h!5653 mapValue!163)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun setNonEmpty!289 () Bool)

(declare-fun tp!22859 () Bool)

(declare-fun setElem!289 () Context!46)

(assert (=> setNonEmpty!289 (= setRes!289 (and tp!22859 (inv!566 setElem!289) e!14974))))

(declare-fun setRest!289 () (InoxSet Context!46))

(assert (=> setNonEmpty!289 (= (_2!99 (h!5653 mapDefault!163)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!289 true) setRest!289))))

(declare-fun tp!22858 () Bool)

(declare-fun setNonEmpty!290 () Bool)

(declare-fun setElem!290 () Context!46)

(assert (=> setNonEmpty!290 (= setRes!290 (and tp!22858 (inv!566 setElem!290) e!14972))))

(declare-fun setRest!290 () (InoxSet Context!46))

(assert (=> setNonEmpty!290 (= (_2!99 (h!5653 mapValue!163)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!290 true) setRest!290))))

(declare-fun condMapEmpty!163 () Bool)

(assert (=> mapNonEmpty!162 (= condMapEmpty!163 (= mapRest!162 ((as const (Array (_ BitVec 32) List!259)) mapDefault!163)))))

(assert (=> mapNonEmpty!162 (= tp!22817 (and e!14970 mapRes!163))))

(declare-fun b!33174 () Bool)

(declare-fun tp!22862 () Bool)

(assert (=> b!33174 (= e!14973 tp!22862)))

(assert (= (and mapNonEmpty!162 condMapEmpty!163) mapIsEmpty!163))

(assert (= (and mapNonEmpty!162 (not condMapEmpty!163)) mapNonEmpty!163))

(assert (= b!33173 b!33174))

(assert (= (and b!33173 condSetEmpty!289) setIsEmpty!289))

(assert (= (and b!33173 (not condSetEmpty!289)) setNonEmpty!290))

(assert (= setNonEmpty!290 b!33171))

(assert (= (and mapNonEmpty!163 ((_ is Cons!257) mapValue!163)) b!33173))

(assert (= b!33170 b!33169))

(assert (= (and b!33170 condSetEmpty!290) setIsEmpty!290))

(assert (= (and b!33170 (not condSetEmpty!290)) setNonEmpty!289))

(assert (= setNonEmpty!289 b!33172))

(assert (= (and mapNonEmpty!162 ((_ is Cons!257) mapDefault!163)) b!33170))

(declare-fun m!9159 () Bool)

(assert (=> b!33170 m!9159))

(declare-fun m!9161 () Bool)

(assert (=> setNonEmpty!290 m!9161))

(declare-fun m!9163 () Bool)

(assert (=> mapNonEmpty!163 m!9163))

(declare-fun m!9165 () Bool)

(assert (=> setNonEmpty!289 m!9165))

(declare-fun m!9167 () Bool)

(assert (=> b!33173 m!9167))

(declare-fun b!33175 () Bool)

(declare-fun e!14976 () Bool)

(assert (=> b!33175 (= e!14976 tp_is_empty!297)))

(declare-fun b!33176 () Bool)

(declare-fun tp!22868 () Bool)

(declare-fun tp!22872 () Bool)

(assert (=> b!33176 (= e!14976 (and tp!22868 tp!22872))))

(declare-fun b!33178 () Bool)

(declare-fun tp!22869 () Bool)

(declare-fun tp!22871 () Bool)

(assert (=> b!33178 (= e!14976 (and tp!22869 tp!22871))))

(declare-fun b!33177 () Bool)

(declare-fun tp!22870 () Bool)

(assert (=> b!33177 (= e!14976 tp!22870)))

(assert (=> b!33065 (= tp!22821 e!14976)))

(assert (= (and b!33065 ((_ is ElementMatch!141) (_1!98 (_1!99 (h!5653 mapValue!162))))) b!33175))

(assert (= (and b!33065 ((_ is Concat!248) (_1!98 (_1!99 (h!5653 mapValue!162))))) b!33176))

(assert (= (and b!33065 ((_ is Star!141) (_1!98 (_1!99 (h!5653 mapValue!162))))) b!33177))

(assert (= (and b!33065 ((_ is Union!141) (_1!98 (_1!99 (h!5653 mapValue!162))))) b!33178))

(declare-fun b!33179 () Bool)

(declare-fun e!14977 () Bool)

(declare-fun tp!22877 () Bool)

(assert (=> b!33179 (= e!14977 tp!22877)))

(declare-fun setRes!291 () Bool)

(declare-fun tp!22876 () Bool)

(declare-fun e!14979 () Bool)

(declare-fun tp!22874 () Bool)

(declare-fun b!33180 () Bool)

(assert (=> b!33180 (= e!14979 (and tp!22876 (inv!566 (_2!98 (_1!99 (h!5653 (t!14849 mapValue!162))))) e!14977 tp_is_empty!297 setRes!291 tp!22874))))

(declare-fun condSetEmpty!291 () Bool)

(assert (=> b!33180 (= condSetEmpty!291 (= (_2!99 (h!5653 (t!14849 mapValue!162))) ((as const (Array Context!46 Bool)) false)))))

(assert (=> b!33065 (= tp!22819 e!14979)))

(declare-fun e!14978 () Bool)

(declare-fun tp!22875 () Bool)

(declare-fun setNonEmpty!291 () Bool)

(declare-fun setElem!291 () Context!46)

(assert (=> setNonEmpty!291 (= setRes!291 (and tp!22875 (inv!566 setElem!291) e!14978))))

(declare-fun setRest!291 () (InoxSet Context!46))

(assert (=> setNonEmpty!291 (= (_2!99 (h!5653 (t!14849 mapValue!162))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!291 true) setRest!291))))

(declare-fun setIsEmpty!291 () Bool)

(assert (=> setIsEmpty!291 setRes!291))

(declare-fun b!33181 () Bool)

(declare-fun tp!22873 () Bool)

(assert (=> b!33181 (= e!14978 tp!22873)))

(assert (= b!33180 b!33179))

(assert (= (and b!33180 condSetEmpty!291) setIsEmpty!291))

(assert (= (and b!33180 (not condSetEmpty!291)) setNonEmpty!291))

(assert (= setNonEmpty!291 b!33181))

(assert (= (and b!33065 ((_ is Cons!257) (t!14849 mapValue!162))) b!33180))

(declare-fun m!9169 () Bool)

(assert (=> b!33180 m!9169))

(declare-fun m!9171 () Bool)

(assert (=> setNonEmpty!291 m!9171))

(declare-fun b!33182 () Bool)

(declare-fun e!14980 () Bool)

(assert (=> b!33182 (= e!14980 tp_is_empty!297)))

(declare-fun b!33183 () Bool)

(declare-fun tp!22878 () Bool)

(declare-fun tp!22882 () Bool)

(assert (=> b!33183 (= e!14980 (and tp!22878 tp!22882))))

(declare-fun b!33185 () Bool)

(declare-fun tp!22879 () Bool)

(declare-fun tp!22881 () Bool)

(assert (=> b!33185 (= e!14980 (and tp!22879 tp!22881))))

(declare-fun b!33184 () Bool)

(declare-fun tp!22880 () Bool)

(assert (=> b!33184 (= e!14980 tp!22880)))

(assert (=> b!32985 (= tp!22713 e!14980)))

(assert (= (and b!32985 ((_ is ElementMatch!141) (regOne!794 (regex!117 (h!5655 rules!1369))))) b!33182))

(assert (= (and b!32985 ((_ is Concat!248) (regOne!794 (regex!117 (h!5655 rules!1369))))) b!33183))

(assert (= (and b!32985 ((_ is Star!141) (regOne!794 (regex!117 (h!5655 rules!1369))))) b!33184))

(assert (= (and b!32985 ((_ is Union!141) (regOne!794 (regex!117 (h!5655 rules!1369))))) b!33185))

(declare-fun b!33186 () Bool)

(declare-fun e!14981 () Bool)

(assert (=> b!33186 (= e!14981 tp_is_empty!297)))

(declare-fun b!33187 () Bool)

(declare-fun tp!22883 () Bool)

(declare-fun tp!22887 () Bool)

(assert (=> b!33187 (= e!14981 (and tp!22883 tp!22887))))

(declare-fun b!33189 () Bool)

(declare-fun tp!22884 () Bool)

(declare-fun tp!22886 () Bool)

(assert (=> b!33189 (= e!14981 (and tp!22884 tp!22886))))

(declare-fun b!33188 () Bool)

(declare-fun tp!22885 () Bool)

(assert (=> b!33188 (= e!14981 tp!22885)))

(assert (=> b!32985 (= tp!22717 e!14981)))

(assert (= (and b!32985 ((_ is ElementMatch!141) (regTwo!794 (regex!117 (h!5655 rules!1369))))) b!33186))

(assert (= (and b!32985 ((_ is Concat!248) (regTwo!794 (regex!117 (h!5655 rules!1369))))) b!33187))

(assert (= (and b!32985 ((_ is Star!141) (regTwo!794 (regex!117 (h!5655 rules!1369))))) b!33188))

(assert (= (and b!32985 ((_ is Union!141) (regTwo!794 (regex!117 (h!5655 rules!1369))))) b!33189))

(declare-fun b!33190 () Bool)

(declare-fun e!14982 () Bool)

(assert (=> b!33190 (= e!14982 tp_is_empty!297)))

(declare-fun b!33191 () Bool)

(declare-fun tp!22888 () Bool)

(declare-fun tp!22892 () Bool)

(assert (=> b!33191 (= e!14982 (and tp!22888 tp!22892))))

(declare-fun b!33193 () Bool)

(declare-fun tp!22889 () Bool)

(declare-fun tp!22891 () Bool)

(assert (=> b!33193 (= e!14982 (and tp!22889 tp!22891))))

(declare-fun b!33192 () Bool)

(declare-fun tp!22890 () Bool)

(assert (=> b!33192 (= e!14982 tp!22890)))

(assert (=> b!32987 (= tp!22714 e!14982)))

(assert (= (and b!32987 ((_ is ElementMatch!141) (regOne!795 (regex!117 (h!5655 rules!1369))))) b!33190))

(assert (= (and b!32987 ((_ is Concat!248) (regOne!795 (regex!117 (h!5655 rules!1369))))) b!33191))

(assert (= (and b!32987 ((_ is Star!141) (regOne!795 (regex!117 (h!5655 rules!1369))))) b!33192))

(assert (= (and b!32987 ((_ is Union!141) (regOne!795 (regex!117 (h!5655 rules!1369))))) b!33193))

(declare-fun b!33194 () Bool)

(declare-fun e!14983 () Bool)

(assert (=> b!33194 (= e!14983 tp_is_empty!297)))

(declare-fun b!33195 () Bool)

(declare-fun tp!22893 () Bool)

(declare-fun tp!22897 () Bool)

(assert (=> b!33195 (= e!14983 (and tp!22893 tp!22897))))

(declare-fun b!33197 () Bool)

(declare-fun tp!22894 () Bool)

(declare-fun tp!22896 () Bool)

(assert (=> b!33197 (= e!14983 (and tp!22894 tp!22896))))

(declare-fun b!33196 () Bool)

(declare-fun tp!22895 () Bool)

(assert (=> b!33196 (= e!14983 tp!22895)))

(assert (=> b!32987 (= tp!22716 e!14983)))

(assert (= (and b!32987 ((_ is ElementMatch!141) (regTwo!795 (regex!117 (h!5655 rules!1369))))) b!33194))

(assert (= (and b!32987 ((_ is Concat!248) (regTwo!795 (regex!117 (h!5655 rules!1369))))) b!33195))

(assert (= (and b!32987 ((_ is Star!141) (regTwo!795 (regex!117 (h!5655 rules!1369))))) b!33196))

(assert (= (and b!32987 ((_ is Union!141) (regTwo!795 (regex!117 (h!5655 rules!1369))))) b!33197))

(declare-fun condSetEmpty!294 () Bool)

(assert (=> setNonEmpty!283 (= condSetEmpty!294 (= setRest!283 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!294 () Bool)

(assert (=> setNonEmpty!283 (= tp!22814 setRes!294)))

(declare-fun setIsEmpty!294 () Bool)

(assert (=> setIsEmpty!294 setRes!294))

(declare-fun e!14986 () Bool)

(declare-fun setNonEmpty!294 () Bool)

(declare-fun tp!22903 () Bool)

(declare-fun setElem!294 () Context!46)

(assert (=> setNonEmpty!294 (= setRes!294 (and tp!22903 (inv!566 setElem!294) e!14986))))

(declare-fun setRest!294 () (InoxSet Context!46))

(assert (=> setNonEmpty!294 (= setRest!283 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!294 true) setRest!294))))

(declare-fun b!33202 () Bool)

(declare-fun tp!22902 () Bool)

(assert (=> b!33202 (= e!14986 tp!22902)))

(assert (= (and setNonEmpty!283 condSetEmpty!294) setIsEmpty!294))

(assert (= (and setNonEmpty!283 (not condSetEmpty!294)) setNonEmpty!294))

(assert (= setNonEmpty!294 b!33202))

(declare-fun m!9173 () Bool)

(assert (=> setNonEmpty!294 m!9173))

(declare-fun b!33203 () Bool)

(declare-fun e!14987 () Bool)

(assert (=> b!33203 (= e!14987 tp_is_empty!297)))

(declare-fun b!33204 () Bool)

(declare-fun tp!22904 () Bool)

(declare-fun tp!22908 () Bool)

(assert (=> b!33204 (= e!14987 (and tp!22904 tp!22908))))

(declare-fun b!33206 () Bool)

(declare-fun tp!22905 () Bool)

(declare-fun tp!22907 () Bool)

(assert (=> b!33206 (= e!14987 (and tp!22905 tp!22907))))

(declare-fun b!33205 () Bool)

(declare-fun tp!22906 () Bool)

(assert (=> b!33205 (= e!14987 tp!22906)))

(assert (=> b!33068 (= tp!22827 e!14987)))

(assert (= (and b!33068 ((_ is ElementMatch!141) (_1!98 (_1!99 (h!5653 mapValue!156))))) b!33203))

(assert (= (and b!33068 ((_ is Concat!248) (_1!98 (_1!99 (h!5653 mapValue!156))))) b!33204))

(assert (= (and b!33068 ((_ is Star!141) (_1!98 (_1!99 (h!5653 mapValue!156))))) b!33205))

(assert (= (and b!33068 ((_ is Union!141) (_1!98 (_1!99 (h!5653 mapValue!156))))) b!33206))

(declare-fun b!33207 () Bool)

(declare-fun e!14988 () Bool)

(declare-fun tp!22913 () Bool)

(assert (=> b!33207 (= e!14988 tp!22913)))

(declare-fun e!14990 () Bool)

(declare-fun b!33208 () Bool)

(declare-fun tp!22912 () Bool)

(declare-fun tp!22910 () Bool)

(declare-fun setRes!295 () Bool)

(assert (=> b!33208 (= e!14990 (and tp!22912 (inv!566 (_2!98 (_1!99 (h!5653 (t!14849 mapValue!156))))) e!14988 tp_is_empty!297 setRes!295 tp!22910))))

(declare-fun condSetEmpty!295 () Bool)

(assert (=> b!33208 (= condSetEmpty!295 (= (_2!99 (h!5653 (t!14849 mapValue!156))) ((as const (Array Context!46 Bool)) false)))))

(assert (=> b!33068 (= tp!22825 e!14990)))

(declare-fun setNonEmpty!295 () Bool)

(declare-fun tp!22911 () Bool)

(declare-fun e!14989 () Bool)

(declare-fun setElem!295 () Context!46)

(assert (=> setNonEmpty!295 (= setRes!295 (and tp!22911 (inv!566 setElem!295) e!14989))))

(declare-fun setRest!295 () (InoxSet Context!46))

(assert (=> setNonEmpty!295 (= (_2!99 (h!5653 (t!14849 mapValue!156))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!295 true) setRest!295))))

(declare-fun setIsEmpty!295 () Bool)

(assert (=> setIsEmpty!295 setRes!295))

(declare-fun b!33209 () Bool)

(declare-fun tp!22909 () Bool)

(assert (=> b!33209 (= e!14989 tp!22909)))

(assert (= b!33208 b!33207))

(assert (= (and b!33208 condSetEmpty!295) setIsEmpty!295))

(assert (= (and b!33208 (not condSetEmpty!295)) setNonEmpty!295))

(assert (= setNonEmpty!295 b!33209))

(assert (= (and b!33068 ((_ is Cons!257) (t!14849 mapValue!156))) b!33208))

(declare-fun m!9175 () Bool)

(assert (=> b!33208 m!9175))

(declare-fun m!9177 () Bool)

(assert (=> setNonEmpty!295 m!9177))

(declare-fun b!33212 () Bool)

(declare-fun b_free!273 () Bool)

(declare-fun b_next!273 () Bool)

(assert (=> b!33212 (= b_free!273 (not b_next!273))))

(declare-fun tp!22917 () Bool)

(declare-fun b_and!273 () Bool)

(assert (=> b!33212 (= tp!22917 b_and!273)))

(declare-fun b_free!275 () Bool)

(declare-fun b_next!275 () Bool)

(assert (=> b!33212 (= b_free!275 (not b_next!275))))

(declare-fun tp!22916 () Bool)

(declare-fun b_and!275 () Bool)

(assert (=> b!33212 (= tp!22916 b_and!275)))

(declare-fun e!14993 () Bool)

(assert (=> b!33212 (= e!14993 (and tp!22917 tp!22916))))

(declare-fun e!14991 () Bool)

(declare-fun b!33211 () Bool)

(declare-fun tp!22915 () Bool)

(assert (=> b!33211 (= e!14991 (and tp!22915 (inv!554 (tag!295 (h!5655 (t!14851 (t!14851 rules!1369))))) (inv!562 (transformation!117 (h!5655 (t!14851 (t!14851 rules!1369))))) e!14993))))

(declare-fun b!33210 () Bool)

(declare-fun e!14994 () Bool)

(declare-fun tp!22914 () Bool)

(assert (=> b!33210 (= e!14994 (and e!14991 tp!22914))))

(assert (=> b!33078 (= tp!22837 e!14994)))

(assert (= b!33211 b!33212))

(assert (= b!33210 b!33211))

(assert (= (and b!33078 ((_ is Cons!259) (t!14851 (t!14851 rules!1369)))) b!33210))

(declare-fun m!9179 () Bool)

(assert (=> b!33211 m!9179))

(declare-fun m!9181 () Bool)

(assert (=> b!33211 m!9181))

(declare-fun e!14995 () Bool)

(declare-fun setNonEmpty!296 () Bool)

(declare-fun setRes!296 () Bool)

(declare-fun tp!22921 () Bool)

(declare-fun setElem!296 () Context!46)

(assert (=> setNonEmpty!296 (= setRes!296 (and tp!22921 (inv!566 setElem!296) e!14995))))

(declare-fun setRest!296 () (InoxSet Context!46))

(assert (=> setNonEmpty!296 (= (_2!97 (h!5652 (t!14848 mapDefault!159))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!296 true) setRest!296))))

(declare-fun b!33213 () Bool)

(declare-fun tp!22920 () Bool)

(assert (=> b!33213 (= e!14995 tp!22920)))

(declare-fun e!14997 () Bool)

(assert (=> b!33013 (= tp!22746 e!14997)))

(declare-fun tp!22919 () Bool)

(declare-fun e!14996 () Bool)

(declare-fun b!33214 () Bool)

(assert (=> b!33214 (= e!14997 (and (inv!566 (_1!96 (_1!97 (h!5652 (t!14848 mapDefault!159))))) e!14996 tp_is_empty!297 setRes!296 tp!22919))))

(declare-fun condSetEmpty!296 () Bool)

(assert (=> b!33214 (= condSetEmpty!296 (= (_2!97 (h!5652 (t!14848 mapDefault!159))) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33215 () Bool)

(declare-fun tp!22918 () Bool)

(assert (=> b!33215 (= e!14996 tp!22918)))

(declare-fun setIsEmpty!296 () Bool)

(assert (=> setIsEmpty!296 setRes!296))

(assert (= b!33214 b!33215))

(assert (= (and b!33214 condSetEmpty!296) setIsEmpty!296))

(assert (= (and b!33214 (not condSetEmpty!296)) setNonEmpty!296))

(assert (= setNonEmpty!296 b!33213))

(assert (= (and b!33013 ((_ is Cons!256) (t!14848 mapDefault!159))) b!33214))

(declare-fun m!9183 () Bool)

(assert (=> setNonEmpty!296 m!9183))

(declare-fun m!9185 () Bool)

(assert (=> b!33214 m!9185))

(declare-fun b!33216 () Bool)

(declare-fun e!14998 () Bool)

(assert (=> b!33216 (= e!14998 tp_is_empty!297)))

(declare-fun b!33217 () Bool)

(declare-fun tp!22922 () Bool)

(declare-fun tp!22926 () Bool)

(assert (=> b!33217 (= e!14998 (and tp!22922 tp!22926))))

(declare-fun b!33219 () Bool)

(declare-fun tp!22923 () Bool)

(declare-fun tp!22925 () Bool)

(assert (=> b!33219 (= e!14998 (and tp!22923 tp!22925))))

(declare-fun b!33218 () Bool)

(declare-fun tp!22924 () Bool)

(assert (=> b!33218 (= e!14998 tp!22924)))

(assert (=> b!33042 (= tp!22784 e!14998)))

(assert (= (and b!33042 ((_ is ElementMatch!141) (_1!98 (_1!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) b!33216))

(assert (= (and b!33042 ((_ is Concat!248) (_1!98 (_1!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) b!33217))

(assert (= (and b!33042 ((_ is Star!141) (_1!98 (_1!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) b!33218))

(assert (= (and b!33042 ((_ is Union!141) (_1!98 (_1!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) b!33219))

(declare-fun b!33220 () Bool)

(declare-fun e!14999 () Bool)

(declare-fun tp!22931 () Bool)

(assert (=> b!33220 (= e!14999 tp!22931)))

(declare-fun tp!22930 () Bool)

(declare-fun tp!22928 () Bool)

(declare-fun e!15001 () Bool)

(declare-fun setRes!297 () Bool)

(declare-fun b!33221 () Bool)

(assert (=> b!33221 (= e!15001 (and tp!22930 (inv!566 (_2!98 (_1!99 (h!5653 (t!14849 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) e!14999 tp_is_empty!297 setRes!297 tp!22928))))

(declare-fun condSetEmpty!297 () Bool)

(assert (=> b!33221 (= condSetEmpty!297 (= (_2!99 (h!5653 (t!14849 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))) ((as const (Array Context!46 Bool)) false)))))

(assert (=> b!33042 (= tp!22782 e!15001)))

(declare-fun tp!22929 () Bool)

(declare-fun setNonEmpty!297 () Bool)

(declare-fun setElem!297 () Context!46)

(declare-fun e!15000 () Bool)

(assert (=> setNonEmpty!297 (= setRes!297 (and tp!22929 (inv!566 setElem!297) e!15000))))

(declare-fun setRest!297 () (InoxSet Context!46))

(assert (=> setNonEmpty!297 (= (_2!99 (h!5653 (t!14849 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!297 true) setRest!297))))

(declare-fun setIsEmpty!297 () Bool)

(assert (=> setIsEmpty!297 setRes!297))

(declare-fun b!33222 () Bool)

(declare-fun tp!22927 () Bool)

(assert (=> b!33222 (= e!15000 tp!22927)))

(assert (= b!33221 b!33220))

(assert (= (and b!33221 condSetEmpty!297) setIsEmpty!297))

(assert (= (and b!33221 (not condSetEmpty!297)) setNonEmpty!297))

(assert (= setNonEmpty!297 b!33222))

(assert (= (and b!33042 ((_ is Cons!257) (t!14849 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))) b!33221))

(declare-fun m!9187 () Bool)

(assert (=> b!33221 m!9187))

(declare-fun m!9189 () Bool)

(assert (=> setNonEmpty!297 m!9189))

(declare-fun b!33223 () Bool)

(declare-fun e!15002 () Bool)

(assert (=> b!33223 (= e!15002 tp_is_empty!297)))

(declare-fun b!33224 () Bool)

(declare-fun tp!22932 () Bool)

(declare-fun tp!22936 () Bool)

(assert (=> b!33224 (= e!15002 (and tp!22932 tp!22936))))

(declare-fun b!33226 () Bool)

(declare-fun tp!22933 () Bool)

(declare-fun tp!22935 () Bool)

(assert (=> b!33226 (= e!15002 (and tp!22933 tp!22935))))

(declare-fun b!33225 () Bool)

(declare-fun tp!22934 () Bool)

(assert (=> b!33225 (= e!15002 tp!22934)))

(assert (=> b!33045 (= tp!22789 e!15002)))

(assert (= (and b!33045 ((_ is ElementMatch!141) (_1!98 (_1!99 (h!5653 mapDefault!155))))) b!33223))

(assert (= (and b!33045 ((_ is Concat!248) (_1!98 (_1!99 (h!5653 mapDefault!155))))) b!33224))

(assert (= (and b!33045 ((_ is Star!141) (_1!98 (_1!99 (h!5653 mapDefault!155))))) b!33225))

(assert (= (and b!33045 ((_ is Union!141) (_1!98 (_1!99 (h!5653 mapDefault!155))))) b!33226))

(declare-fun b!33227 () Bool)

(declare-fun e!15003 () Bool)

(declare-fun tp!22941 () Bool)

(assert (=> b!33227 (= e!15003 tp!22941)))

(declare-fun setRes!298 () Bool)

(declare-fun b!33228 () Bool)

(declare-fun tp!22940 () Bool)

(declare-fun tp!22938 () Bool)

(declare-fun e!15005 () Bool)

(assert (=> b!33228 (= e!15005 (and tp!22940 (inv!566 (_2!98 (_1!99 (h!5653 (t!14849 mapDefault!155))))) e!15003 tp_is_empty!297 setRes!298 tp!22938))))

(declare-fun condSetEmpty!298 () Bool)

(assert (=> b!33228 (= condSetEmpty!298 (= (_2!99 (h!5653 (t!14849 mapDefault!155))) ((as const (Array Context!46 Bool)) false)))))

(assert (=> b!33045 (= tp!22787 e!15005)))

(declare-fun e!15004 () Bool)

(declare-fun setNonEmpty!298 () Bool)

(declare-fun setElem!298 () Context!46)

(declare-fun tp!22939 () Bool)

(assert (=> setNonEmpty!298 (= setRes!298 (and tp!22939 (inv!566 setElem!298) e!15004))))

(declare-fun setRest!298 () (InoxSet Context!46))

(assert (=> setNonEmpty!298 (= (_2!99 (h!5653 (t!14849 mapDefault!155))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!298 true) setRest!298))))

(declare-fun setIsEmpty!298 () Bool)

(assert (=> setIsEmpty!298 setRes!298))

(declare-fun b!33229 () Bool)

(declare-fun tp!22937 () Bool)

(assert (=> b!33229 (= e!15004 tp!22937)))

(assert (= b!33228 b!33227))

(assert (= (and b!33228 condSetEmpty!298) setIsEmpty!298))

(assert (= (and b!33228 (not condSetEmpty!298)) setNonEmpty!298))

(assert (= setNonEmpty!298 b!33229))

(assert (= (and b!33045 ((_ is Cons!257) (t!14849 mapDefault!155))) b!33228))

(declare-fun m!9191 () Bool)

(assert (=> b!33228 m!9191))

(declare-fun m!9193 () Bool)

(assert (=> setNonEmpty!298 m!9193))

(declare-fun b!33230 () Bool)

(declare-fun e!15006 () Bool)

(assert (=> b!33230 (= e!15006 tp_is_empty!297)))

(declare-fun b!33231 () Bool)

(declare-fun tp!22942 () Bool)

(declare-fun tp!22946 () Bool)

(assert (=> b!33231 (= e!15006 (and tp!22942 tp!22946))))

(declare-fun b!33233 () Bool)

(declare-fun tp!22943 () Bool)

(declare-fun tp!22945 () Bool)

(assert (=> b!33233 (= e!15006 (and tp!22943 tp!22945))))

(declare-fun b!33232 () Bool)

(declare-fun tp!22944 () Bool)

(assert (=> b!33232 (= e!15006 tp!22944)))

(assert (=> b!33039 (= tp!22779 e!15006)))

(assert (= (and b!33039 ((_ is ElementMatch!141) (_1!98 (_1!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) b!33230))

(assert (= (and b!33039 ((_ is Concat!248) (_1!98 (_1!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) b!33231))

(assert (= (and b!33039 ((_ is Star!141) (_1!98 (_1!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) b!33232))

(assert (= (and b!33039 ((_ is Union!141) (_1!98 (_1!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) b!33233))

(declare-fun b!33234 () Bool)

(declare-fun e!15007 () Bool)

(declare-fun tp!22951 () Bool)

(assert (=> b!33234 (= e!15007 tp!22951)))

(declare-fun tp!22948 () Bool)

(declare-fun e!15009 () Bool)

(declare-fun b!33235 () Bool)

(declare-fun setRes!299 () Bool)

(declare-fun tp!22950 () Bool)

(assert (=> b!33235 (= e!15009 (and tp!22950 (inv!566 (_2!98 (_1!99 (h!5653 (t!14849 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))))) e!15007 tp_is_empty!297 setRes!299 tp!22948))))

(declare-fun condSetEmpty!299 () Bool)

(assert (=> b!33235 (= condSetEmpty!299 (= (_2!99 (h!5653 (t!14849 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))) ((as const (Array Context!46 Bool)) false)))))

(assert (=> b!33039 (= tp!22777 e!15009)))

(declare-fun tp!22949 () Bool)

(declare-fun setNonEmpty!299 () Bool)

(declare-fun e!15008 () Bool)

(declare-fun setElem!299 () Context!46)

(assert (=> setNonEmpty!299 (= setRes!299 (and tp!22949 (inv!566 setElem!299) e!15008))))

(declare-fun setRest!299 () (InoxSet Context!46))

(assert (=> setNonEmpty!299 (= (_2!99 (h!5653 (t!14849 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!299 true) setRest!299))))

(declare-fun setIsEmpty!299 () Bool)

(assert (=> setIsEmpty!299 setRes!299))

(declare-fun b!33236 () Bool)

(declare-fun tp!22947 () Bool)

(assert (=> b!33236 (= e!15008 tp!22947)))

(assert (= b!33235 b!33234))

(assert (= (and b!33235 condSetEmpty!299) setIsEmpty!299))

(assert (= (and b!33235 (not condSetEmpty!299)) setNonEmpty!299))

(assert (= setNonEmpty!299 b!33236))

(assert (= (and b!33039 ((_ is Cons!257) (t!14849 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485))))))))) b!33235))

(declare-fun m!9195 () Bool)

(assert (=> b!33235 m!9195))

(declare-fun m!9197 () Bool)

(assert (=> setNonEmpty!299 m!9197))

(declare-fun condSetEmpty!300 () Bool)

(assert (=> setNonEmpty!269 (= condSetEmpty!300 (= setRest!269 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!300 () Bool)

(assert (=> setNonEmpty!269 (= tp!22751 setRes!300)))

(declare-fun setIsEmpty!300 () Bool)

(assert (=> setIsEmpty!300 setRes!300))

(declare-fun tp!22953 () Bool)

(declare-fun setElem!300 () Context!46)

(declare-fun setNonEmpty!300 () Bool)

(declare-fun e!15010 () Bool)

(assert (=> setNonEmpty!300 (= setRes!300 (and tp!22953 (inv!566 setElem!300) e!15010))))

(declare-fun setRest!300 () (InoxSet Context!46))

(assert (=> setNonEmpty!300 (= setRest!269 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!300 true) setRest!300))))

(declare-fun b!33237 () Bool)

(declare-fun tp!22952 () Bool)

(assert (=> b!33237 (= e!15010 tp!22952)))

(assert (= (and setNonEmpty!269 condSetEmpty!300) setIsEmpty!300))

(assert (= (and setNonEmpty!269 (not condSetEmpty!300)) setNonEmpty!300))

(assert (= setNonEmpty!300 b!33237))

(declare-fun m!9199 () Bool)

(assert (=> setNonEmpty!300 m!9199))

(declare-fun b!33242 () Bool)

(declare-fun e!15013 () Bool)

(declare-fun tp!22958 () Bool)

(declare-fun tp!22959 () Bool)

(assert (=> b!33242 (= e!15013 (and tp!22958 tp!22959))))

(assert (=> b!33015 (= tp!22749 e!15013)))

(assert (= (and b!33015 ((_ is Cons!255) (exprs!523 setElem!269))) b!33242))

(declare-fun condSetEmpty!301 () Bool)

(assert (=> setNonEmpty!286 (= condSetEmpty!301 (= setRest!286 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!301 () Bool)

(assert (=> setNonEmpty!286 (= tp!22848 setRes!301)))

(declare-fun setIsEmpty!301 () Bool)

(assert (=> setIsEmpty!301 setRes!301))

(declare-fun setElem!301 () Context!46)

(declare-fun setNonEmpty!301 () Bool)

(declare-fun tp!22961 () Bool)

(declare-fun e!15014 () Bool)

(assert (=> setNonEmpty!301 (= setRes!301 (and tp!22961 (inv!566 setElem!301) e!15014))))

(declare-fun setRest!301 () (InoxSet Context!46))

(assert (=> setNonEmpty!301 (= setRest!286 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!301 true) setRest!301))))

(declare-fun b!33243 () Bool)

(declare-fun tp!22960 () Bool)

(assert (=> b!33243 (= e!15014 tp!22960)))

(assert (= (and setNonEmpty!286 condSetEmpty!301) setIsEmpty!301))

(assert (= (and setNonEmpty!286 (not condSetEmpty!301)) setNonEmpty!301))

(assert (= setNonEmpty!301 b!33243))

(declare-fun m!9201 () Bool)

(assert (=> setNonEmpty!301 m!9201))

(declare-fun b!33244 () Bool)

(declare-fun e!15015 () Bool)

(declare-fun tp!22962 () Bool)

(declare-fun tp!22963 () Bool)

(assert (=> b!33244 (= e!15015 (and tp!22962 tp!22963))))

(assert (=> b!33061 (= tp!22820 e!15015)))

(assert (= (and b!33061 ((_ is Cons!255) (exprs!523 (_2!98 (_1!99 (h!5653 mapDefault!162)))))) b!33244))

(declare-fun b!33245 () Bool)

(declare-fun e!15016 () Bool)

(declare-fun tp!22964 () Bool)

(declare-fun tp!22965 () Bool)

(assert (=> b!33245 (= e!15016 (and tp!22964 tp!22965))))

(assert (=> b!33087 (= tp!22851 e!15016)))

(assert (= (and b!33087 ((_ is Cons!255) (exprs!523 setElem!287))) b!33245))

(declare-fun b!33246 () Bool)

(declare-fun e!15017 () Bool)

(declare-fun tp!22966 () Bool)

(declare-fun tp!22967 () Bool)

(assert (=> b!33246 (= e!15017 (and tp!22966 tp!22967))))

(assert (=> b!33027 (= tp!22764 e!15017)))

(assert (= (and b!33027 ((_ is Cons!255) (exprs!523 setElem!272))) b!33246))

(declare-fun b!33247 () Bool)

(declare-fun e!15018 () Bool)

(declare-fun tp!22968 () Bool)

(declare-fun tp!22969 () Bool)

(assert (=> b!33247 (= e!15018 (and tp!22968 tp!22969))))

(assert (=> b!33089 (= tp!22849 e!15018)))

(assert (= (and b!33089 ((_ is Cons!255) (exprs!523 (_1!96 (_1!97 (h!5652 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))))))) b!33247))

(declare-fun b!33248 () Bool)

(declare-fun e!15019 () Bool)

(declare-fun tp!22970 () Bool)

(declare-fun tp!22971 () Bool)

(assert (=> b!33248 (= e!15019 (and tp!22970 tp!22971))))

(assert (=> b!33029 (= tp!22762 e!15019)))

(assert (= (and b!33029 ((_ is Cons!255) (exprs!523 (_1!96 (_1!97 (h!5652 mapValue!155)))))) b!33248))

(declare-fun b!33249 () Bool)

(declare-fun e!15020 () Bool)

(declare-fun tp!22972 () Bool)

(declare-fun tp!22973 () Bool)

(assert (=> b!33249 (= e!15020 (and tp!22972 tp!22973))))

(assert (=> b!33017 (= tp!22745 e!15020)))

(assert (= (and b!33017 ((_ is Cons!255) (exprs!523 (_1!96 (_1!97 (h!5652 mapValue!159)))))) b!33249))

(declare-fun b!33250 () Bool)

(declare-fun e!15021 () Bool)

(declare-fun tp!22974 () Bool)

(declare-fun tp!22975 () Bool)

(assert (=> b!33250 (= e!15021 (and tp!22974 tp!22975))))

(assert (=> b!33018 (= tp!22750 e!15021)))

(assert (= (and b!33018 ((_ is Cons!255) (exprs!523 setElem!268))) b!33250))

(declare-fun b!33251 () Bool)

(declare-fun e!15022 () Bool)

(declare-fun tp!22976 () Bool)

(declare-fun tp!22977 () Bool)

(assert (=> b!33251 (= e!15022 (and tp!22976 tp!22977))))

(assert (=> b!33081 (= tp!22843 e!15022)))

(assert (= (and b!33081 ((_ is Cons!255) (exprs!523 setElem!285))) b!33251))

(declare-fun e!15023 () Bool)

(declare-fun setNonEmpty!302 () Bool)

(declare-fun setRes!302 () Bool)

(declare-fun setElem!302 () Context!46)

(declare-fun tp!22981 () Bool)

(assert (=> setNonEmpty!302 (= setRes!302 (and tp!22981 (inv!566 setElem!302) e!15023))))

(declare-fun setRest!302 () (InoxSet Context!46))

(assert (=> setNonEmpty!302 (= (_2!97 (h!5652 (t!14848 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!302 true) setRest!302))))

(declare-fun b!33252 () Bool)

(declare-fun tp!22980 () Bool)

(assert (=> b!33252 (= e!15023 tp!22980)))

(declare-fun e!15025 () Bool)

(assert (=> b!33085 (= tp!22846 e!15025)))

(declare-fun e!15024 () Bool)

(declare-fun b!33253 () Bool)

(declare-fun tp!22979 () Bool)

(assert (=> b!33253 (= e!15025 (and (inv!566 (_1!96 (_1!97 (h!5652 (t!14848 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))))))) e!15024 tp_is_empty!297 setRes!302 tp!22979))))

(declare-fun condSetEmpty!302 () Bool)

(assert (=> b!33253 (= condSetEmpty!302 (= (_2!97 (h!5652 (t!14848 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))))) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33254 () Bool)

(declare-fun tp!22978 () Bool)

(assert (=> b!33254 (= e!15024 tp!22978)))

(declare-fun setIsEmpty!302 () Bool)

(assert (=> setIsEmpty!302 setRes!302))

(assert (= b!33253 b!33254))

(assert (= (and b!33253 condSetEmpty!302) setIsEmpty!302))

(assert (= (and b!33253 (not condSetEmpty!302)) setNonEmpty!302))

(assert (= setNonEmpty!302 b!33252))

(assert (= (and b!33085 ((_ is Cons!256) (t!14848 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))))) b!33253))

(declare-fun m!9203 () Bool)

(assert (=> setNonEmpty!302 m!9203))

(declare-fun m!9205 () Bool)

(assert (=> b!33253 m!9205))

(declare-fun b!33255 () Bool)

(declare-fun e!15026 () Bool)

(assert (=> b!33255 (= e!15026 tp_is_empty!297)))

(declare-fun b!33256 () Bool)

(declare-fun tp!22982 () Bool)

(declare-fun tp!22986 () Bool)

(assert (=> b!33256 (= e!15026 (and tp!22982 tp!22986))))

(declare-fun b!33258 () Bool)

(declare-fun tp!22983 () Bool)

(declare-fun tp!22985 () Bool)

(assert (=> b!33258 (= e!15026 (and tp!22983 tp!22985))))

(declare-fun b!33257 () Bool)

(declare-fun tp!22984 () Bool)

(assert (=> b!33257 (= e!15026 tp!22984)))

(assert (=> b!33062 (= tp!22816 e!15026)))

(assert (= (and b!33062 ((_ is ElementMatch!141) (_1!98 (_1!99 (h!5653 mapDefault!162))))) b!33255))

(assert (= (and b!33062 ((_ is Concat!248) (_1!98 (_1!99 (h!5653 mapDefault!162))))) b!33256))

(assert (= (and b!33062 ((_ is Star!141) (_1!98 (_1!99 (h!5653 mapDefault!162))))) b!33257))

(assert (= (and b!33062 ((_ is Union!141) (_1!98 (_1!99 (h!5653 mapDefault!162))))) b!33258))

(declare-fun b!33259 () Bool)

(declare-fun e!15027 () Bool)

(declare-fun tp!22991 () Bool)

(assert (=> b!33259 (= e!15027 tp!22991)))

(declare-fun e!15029 () Bool)

(declare-fun b!33260 () Bool)

(declare-fun tp!22988 () Bool)

(declare-fun setRes!303 () Bool)

(declare-fun tp!22990 () Bool)

(assert (=> b!33260 (= e!15029 (and tp!22990 (inv!566 (_2!98 (_1!99 (h!5653 (t!14849 mapDefault!162))))) e!15027 tp_is_empty!297 setRes!303 tp!22988))))

(declare-fun condSetEmpty!303 () Bool)

(assert (=> b!33260 (= condSetEmpty!303 (= (_2!99 (h!5653 (t!14849 mapDefault!162))) ((as const (Array Context!46 Bool)) false)))))

(assert (=> b!33062 (= tp!22822 e!15029)))

(declare-fun e!15028 () Bool)

(declare-fun tp!22989 () Bool)

(declare-fun setElem!303 () Context!46)

(declare-fun setNonEmpty!303 () Bool)

(assert (=> setNonEmpty!303 (= setRes!303 (and tp!22989 (inv!566 setElem!303) e!15028))))

(declare-fun setRest!303 () (InoxSet Context!46))

(assert (=> setNonEmpty!303 (= (_2!99 (h!5653 (t!14849 mapDefault!162))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!303 true) setRest!303))))

(declare-fun setIsEmpty!303 () Bool)

(assert (=> setIsEmpty!303 setRes!303))

(declare-fun b!33261 () Bool)

(declare-fun tp!22987 () Bool)

(assert (=> b!33261 (= e!15028 tp!22987)))

(assert (= b!33260 b!33259))

(assert (= (and b!33260 condSetEmpty!303) setIsEmpty!303))

(assert (= (and b!33260 (not condSetEmpty!303)) setNonEmpty!303))

(assert (= setNonEmpty!303 b!33261))

(assert (= (and b!33062 ((_ is Cons!257) (t!14849 mapDefault!162))) b!33260))

(declare-fun m!9207 () Bool)

(assert (=> b!33260 m!9207))

(declare-fun m!9209 () Bool)

(assert (=> setNonEmpty!303 m!9209))

(declare-fun b!33262 () Bool)

(declare-fun e!15030 () Bool)

(declare-fun tp!22992 () Bool)

(declare-fun tp!22993 () Bool)

(assert (=> b!33262 (= e!15030 (and tp!22992 tp!22993))))

(assert (=> b!33083 (= tp!22841 e!15030)))

(assert (= (and b!33083 ((_ is Cons!255) (exprs!523 (_1!96 (_1!97 (h!5652 mapDefault!156)))))) b!33262))

(declare-fun b!33263 () Bool)

(declare-fun e!15031 () Bool)

(declare-fun tp!22994 () Bool)

(declare-fun tp!22995 () Bool)

(assert (=> b!33263 (= e!15031 (and tp!22994 tp!22995))))

(assert (=> b!33064 (= tp!22813 e!15031)))

(assert (= (and b!33064 ((_ is Cons!255) (exprs!523 setElem!282))) b!33263))

(declare-fun condSetEmpty!304 () Bool)

(assert (=> setNonEmpty!282 (= condSetEmpty!304 (= setRest!282 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!304 () Bool)

(assert (=> setNonEmpty!282 (= tp!22815 setRes!304)))

(declare-fun setIsEmpty!304 () Bool)

(assert (=> setIsEmpty!304 setRes!304))

(declare-fun e!15032 () Bool)

(declare-fun tp!22997 () Bool)

(declare-fun setNonEmpty!304 () Bool)

(declare-fun setElem!304 () Context!46)

(assert (=> setNonEmpty!304 (= setRes!304 (and tp!22997 (inv!566 setElem!304) e!15032))))

(declare-fun setRest!304 () (InoxSet Context!46))

(assert (=> setNonEmpty!304 (= setRest!282 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!304 true) setRest!304))))

(declare-fun b!33264 () Bool)

(declare-fun tp!22996 () Bool)

(assert (=> b!33264 (= e!15032 tp!22996)))

(assert (= (and setNonEmpty!282 condSetEmpty!304) setIsEmpty!304))

(assert (= (and setNonEmpty!282 (not condSetEmpty!304)) setNonEmpty!304))

(assert (= setNonEmpty!304 b!33264))

(declare-fun m!9211 () Bool)

(assert (=> setNonEmpty!304 m!9211))

(declare-fun b!33265 () Bool)

(declare-fun e!15033 () Bool)

(assert (=> b!33265 (= e!15033 tp_is_empty!297)))

(declare-fun b!33266 () Bool)

(declare-fun tp!22998 () Bool)

(declare-fun tp!23002 () Bool)

(assert (=> b!33266 (= e!15033 (and tp!22998 tp!23002))))

(declare-fun b!33268 () Bool)

(declare-fun tp!22999 () Bool)

(declare-fun tp!23001 () Bool)

(assert (=> b!33268 (= e!15033 (and tp!22999 tp!23001))))

(declare-fun b!33267 () Bool)

(declare-fun tp!23000 () Bool)

(assert (=> b!33267 (= e!15033 tp!23000)))

(assert (=> b!32986 (= tp!22715 e!15033)))

(assert (= (and b!32986 ((_ is ElementMatch!141) (reg!470 (regex!117 (h!5655 rules!1369))))) b!33265))

(assert (= (and b!32986 ((_ is Concat!248) (reg!470 (regex!117 (h!5655 rules!1369))))) b!33266))

(assert (= (and b!32986 ((_ is Star!141) (reg!470 (regex!117 (h!5655 rules!1369))))) b!33267))

(assert (= (and b!32986 ((_ is Union!141) (reg!470 (regex!117 (h!5655 rules!1369))))) b!33268))

(declare-fun b!33269 () Bool)

(declare-fun e!15034 () Bool)

(declare-fun tp!23003 () Bool)

(declare-fun tp!23004 () Bool)

(assert (=> b!33269 (= e!15034 (and tp!23003 tp!23004))))

(assert (=> b!33066 (= tp!22818 e!15034)))

(assert (= (and b!33066 ((_ is Cons!255) (exprs!523 (_2!98 (_1!99 (h!5653 mapValue!162)))))) b!33269))

(declare-fun b!33270 () Bool)

(declare-fun e!15035 () Bool)

(declare-fun tp!23005 () Bool)

(declare-fun tp!23006 () Bool)

(assert (=> b!33270 (= e!15035 (and tp!23005 tp!23006))))

(assert (=> b!33067 (= tp!22828 e!15035)))

(assert (= (and b!33067 ((_ is Cons!255) (exprs!523 (_2!98 (_1!99 (h!5653 mapValue!156)))))) b!33270))

(declare-fun condSetEmpty!305 () Bool)

(assert (=> setNonEmpty!284 (= condSetEmpty!305 (= setRest!284 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!305 () Bool)

(assert (=> setNonEmpty!284 (= tp!22826 setRes!305)))

(declare-fun setIsEmpty!305 () Bool)

(assert (=> setIsEmpty!305 setRes!305))

(declare-fun tp!23008 () Bool)

(declare-fun e!15036 () Bool)

(declare-fun setNonEmpty!305 () Bool)

(declare-fun setElem!305 () Context!46)

(assert (=> setNonEmpty!305 (= setRes!305 (and tp!23008 (inv!566 setElem!305) e!15036))))

(declare-fun setRest!305 () (InoxSet Context!46))

(assert (=> setNonEmpty!305 (= setRest!284 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!305 true) setRest!305))))

(declare-fun b!33271 () Bool)

(declare-fun tp!23007 () Bool)

(assert (=> b!33271 (= e!15036 tp!23007)))

(assert (= (and setNonEmpty!284 condSetEmpty!305) setIsEmpty!305))

(assert (= (and setNonEmpty!284 (not condSetEmpty!305)) setNonEmpty!305))

(assert (= setNonEmpty!305 b!33271))

(declare-fun m!9213 () Bool)

(assert (=> setNonEmpty!305 m!9213))

(declare-fun condSetEmpty!306 () Bool)

(assert (=> setNonEmpty!268 (= condSetEmpty!306 (= setRest!268 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!306 () Bool)

(assert (=> setNonEmpty!268 (= tp!22747 setRes!306)))

(declare-fun setIsEmpty!306 () Bool)

(assert (=> setIsEmpty!306 setRes!306))

(declare-fun setNonEmpty!306 () Bool)

(declare-fun setElem!306 () Context!46)

(declare-fun tp!23010 () Bool)

(declare-fun e!15037 () Bool)

(assert (=> setNonEmpty!306 (= setRes!306 (and tp!23010 (inv!566 setElem!306) e!15037))))

(declare-fun setRest!306 () (InoxSet Context!46))

(assert (=> setNonEmpty!306 (= setRest!268 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!306 true) setRest!306))))

(declare-fun b!33272 () Bool)

(declare-fun tp!23009 () Bool)

(assert (=> b!33272 (= e!15037 tp!23009)))

(assert (= (and setNonEmpty!268 condSetEmpty!306) setIsEmpty!306))

(assert (= (and setNonEmpty!268 (not condSetEmpty!306)) setNonEmpty!306))

(assert (= setNonEmpty!306 b!33272))

(declare-fun m!9215 () Bool)

(assert (=> setNonEmpty!306 m!9215))

(declare-fun b!33273 () Bool)

(declare-fun e!15038 () Bool)

(assert (=> b!33273 (= e!15038 tp_is_empty!297)))

(declare-fun b!33274 () Bool)

(declare-fun tp!23011 () Bool)

(declare-fun tp!23015 () Bool)

(assert (=> b!33274 (= e!15038 (and tp!23011 tp!23015))))

(declare-fun b!33276 () Bool)

(declare-fun tp!23012 () Bool)

(declare-fun tp!23014 () Bool)

(assert (=> b!33276 (= e!15038 (and tp!23012 tp!23014))))

(declare-fun b!33275 () Bool)

(declare-fun tp!23013 () Bool)

(assert (=> b!33275 (= e!15038 tp!23013)))

(assert (=> b!33079 (= tp!22838 e!15038)))

(assert (= (and b!33079 ((_ is ElementMatch!141) (regex!117 (h!5655 (t!14851 rules!1369))))) b!33273))

(assert (= (and b!33079 ((_ is Concat!248) (regex!117 (h!5655 (t!14851 rules!1369))))) b!33274))

(assert (= (and b!33079 ((_ is Star!141) (regex!117 (h!5655 (t!14851 rules!1369))))) b!33275))

(assert (= (and b!33079 ((_ is Union!141) (regex!117 (h!5655 (t!14851 rules!1369))))) b!33276))

(declare-fun tp!23018 () Bool)

(declare-fun setRes!308 () Bool)

(declare-fun setElem!308 () Context!46)

(declare-fun setNonEmpty!307 () Bool)

(declare-fun e!15042 () Bool)

(assert (=> setNonEmpty!307 (= setRes!308 (and tp!23018 (inv!566 setElem!308) e!15042))))

(declare-fun mapDefault!164 () List!258)

(declare-fun setRest!307 () (InoxSet Context!46))

(assert (=> setNonEmpty!307 (= (_2!97 (h!5652 mapDefault!164)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!308 true) setRest!307))))

(declare-fun mapIsEmpty!164 () Bool)

(declare-fun mapRes!164 () Bool)

(assert (=> mapIsEmpty!164 mapRes!164))

(declare-fun mapNonEmpty!164 () Bool)

(declare-fun tp!23024 () Bool)

(declare-fun e!15040 () Bool)

(assert (=> mapNonEmpty!164 (= mapRes!164 (and tp!23024 e!15040))))

(declare-fun mapRest!164 () (Array (_ BitVec 32) List!258))

(declare-fun mapKey!164 () (_ BitVec 32))

(declare-fun mapValue!164 () List!258)

(assert (=> mapNonEmpty!164 (= mapRest!159 (store mapRest!164 mapKey!164 mapValue!164))))

(declare-fun b!33277 () Bool)

(declare-fun tp!23017 () Bool)

(declare-fun e!15039 () Bool)

(declare-fun e!15043 () Bool)

(assert (=> b!33277 (= e!15039 (and (inv!566 (_1!96 (_1!97 (h!5652 mapDefault!164)))) e!15043 tp_is_empty!297 setRes!308 tp!23017))))

(declare-fun condSetEmpty!308 () Bool)

(assert (=> b!33277 (= condSetEmpty!308 (= (_2!97 (h!5652 mapDefault!164)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun e!15041 () Bool)

(declare-fun tp!23023 () Bool)

(declare-fun setRes!307 () Bool)

(declare-fun b!33278 () Bool)

(assert (=> b!33278 (= e!15040 (and (inv!566 (_1!96 (_1!97 (h!5652 mapValue!164)))) e!15041 tp_is_empty!297 setRes!307 tp!23023))))

(declare-fun condSetEmpty!307 () Bool)

(assert (=> b!33278 (= condSetEmpty!307 (= (_2!97 (h!5652 mapValue!164)) ((as const (Array Context!46 Bool)) false)))))

(declare-fun tp!23022 () Bool)

(declare-fun e!15044 () Bool)

(declare-fun setElem!307 () Context!46)

(declare-fun setNonEmpty!308 () Bool)

(assert (=> setNonEmpty!308 (= setRes!307 (and tp!23022 (inv!566 setElem!307) e!15044))))

(declare-fun setRest!308 () (InoxSet Context!46))

(assert (=> setNonEmpty!308 (= (_2!97 (h!5652 mapValue!164)) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!307 true) setRest!308))))

(declare-fun setIsEmpty!307 () Bool)

(assert (=> setIsEmpty!307 setRes!307))

(declare-fun b!33279 () Bool)

(declare-fun tp!23020 () Bool)

(assert (=> b!33279 (= e!15042 tp!23020)))

(declare-fun condMapEmpty!164 () Bool)

(assert (=> mapNonEmpty!159 (= condMapEmpty!164 (= mapRest!159 ((as const (Array (_ BitVec 32) List!258)) mapDefault!164)))))

(assert (=> mapNonEmpty!159 (= tp!22753 (and e!15039 mapRes!164))))

(declare-fun b!33280 () Bool)

(declare-fun tp!23019 () Bool)

(assert (=> b!33280 (= e!15043 tp!23019)))

(declare-fun b!33281 () Bool)

(declare-fun tp!23016 () Bool)

(assert (=> b!33281 (= e!15041 tp!23016)))

(declare-fun setIsEmpty!308 () Bool)

(assert (=> setIsEmpty!308 setRes!308))

(declare-fun b!33282 () Bool)

(declare-fun tp!23021 () Bool)

(assert (=> b!33282 (= e!15044 tp!23021)))

(assert (= (and mapNonEmpty!159 condMapEmpty!164) mapIsEmpty!164))

(assert (= (and mapNonEmpty!159 (not condMapEmpty!164)) mapNonEmpty!164))

(assert (= b!33278 b!33281))

(assert (= (and b!33278 condSetEmpty!307) setIsEmpty!307))

(assert (= (and b!33278 (not condSetEmpty!307)) setNonEmpty!308))

(assert (= setNonEmpty!308 b!33282))

(assert (= (and mapNonEmpty!164 ((_ is Cons!256) mapValue!164)) b!33278))

(assert (= b!33277 b!33280))

(assert (= (and b!33277 condSetEmpty!308) setIsEmpty!308))

(assert (= (and b!33277 (not condSetEmpty!308)) setNonEmpty!307))

(assert (= setNonEmpty!307 b!33279))

(assert (= (and mapNonEmpty!159 ((_ is Cons!256) mapDefault!164)) b!33277))

(declare-fun m!9217 () Bool)

(assert (=> b!33277 m!9217))

(declare-fun m!9219 () Bool)

(assert (=> b!33278 m!9219))

(declare-fun m!9221 () Bool)

(assert (=> setNonEmpty!307 m!9221))

(declare-fun m!9223 () Bool)

(assert (=> mapNonEmpty!164 m!9223))

(declare-fun m!9225 () Bool)

(assert (=> setNonEmpty!308 m!9225))

(declare-fun e!15046 () Bool)

(declare-fun b!33283 () Bool)

(declare-fun tp!23025 () Bool)

(declare-fun tp!23026 () Bool)

(assert (=> b!33283 (= e!15046 (and (inv!561 (left!365 (left!365 (c!15277 input!768)))) tp!23026 (inv!561 (right!695 (left!365 (c!15277 input!768)))) tp!23025))))

(declare-fun b!33285 () Bool)

(declare-fun e!15045 () Bool)

(declare-fun tp!23027 () Bool)

(assert (=> b!33285 (= e!15045 tp!23027)))

(declare-fun b!33284 () Bool)

(assert (=> b!33284 (= e!15046 (and (inv!565 (xs!2618 (left!365 (c!15277 input!768)))) e!15045))))

(assert (=> b!32996 (= tp!22725 (and (inv!561 (left!365 (c!15277 input!768))) e!15046))))

(assert (= (and b!32996 ((_ is Node!39) (left!365 (c!15277 input!768)))) b!33283))

(assert (= b!33284 b!33285))

(assert (= (and b!32996 ((_ is Leaf!174) (left!365 (c!15277 input!768)))) b!33284))

(declare-fun m!9227 () Bool)

(assert (=> b!33283 m!9227))

(declare-fun m!9229 () Bool)

(assert (=> b!33283 m!9229))

(declare-fun m!9231 () Bool)

(assert (=> b!33284 m!9231))

(assert (=> b!32996 m!8973))

(declare-fun b!33286 () Bool)

(declare-fun tp!23028 () Bool)

(declare-fun tp!23029 () Bool)

(declare-fun e!15048 () Bool)

(assert (=> b!33286 (= e!15048 (and (inv!561 (left!365 (right!695 (c!15277 input!768)))) tp!23029 (inv!561 (right!695 (right!695 (c!15277 input!768)))) tp!23028))))

(declare-fun b!33288 () Bool)

(declare-fun e!15047 () Bool)

(declare-fun tp!23030 () Bool)

(assert (=> b!33288 (= e!15047 tp!23030)))

(declare-fun b!33287 () Bool)

(assert (=> b!33287 (= e!15048 (and (inv!565 (xs!2618 (right!695 (c!15277 input!768)))) e!15047))))

(assert (=> b!32996 (= tp!22724 (and (inv!561 (right!695 (c!15277 input!768))) e!15048))))

(assert (= (and b!32996 ((_ is Node!39) (right!695 (c!15277 input!768)))) b!33286))

(assert (= b!33287 b!33288))

(assert (= (and b!32996 ((_ is Leaf!174) (right!695 (c!15277 input!768)))) b!33287))

(declare-fun m!9233 () Bool)

(assert (=> b!33286 m!9233))

(declare-fun m!9235 () Bool)

(assert (=> b!33286 m!9235))

(declare-fun m!9237 () Bool)

(assert (=> b!33287 m!9237))

(assert (=> b!32996 m!8975))

(declare-fun b!33289 () Bool)

(declare-fun e!15049 () Bool)

(declare-fun tp!23031 () Bool)

(declare-fun tp!23032 () Bool)

(assert (=> b!33289 (= e!15049 (and tp!23031 tp!23032))))

(assert (=> b!33044 (= tp!22790 e!15049)))

(assert (= (and b!33044 ((_ is Cons!255) (exprs!523 (_2!98 (_1!99 (h!5653 mapDefault!155)))))) b!33289))

(declare-fun b!33290 () Bool)

(declare-fun e!15050 () Bool)

(declare-fun tp!23033 () Bool)

(declare-fun tp!23034 () Bool)

(assert (=> b!33290 (= e!15050 (and tp!23033 tp!23034))))

(assert (=> b!33069 (= tp!22824 e!15050)))

(assert (= (and b!33069 ((_ is Cons!255) (exprs!523 setElem!284))) b!33290))

(declare-fun b!33291 () Bool)

(declare-fun e!15051 () Bool)

(declare-fun tp!23035 () Bool)

(declare-fun tp!23036 () Bool)

(assert (=> b!33291 (= e!15051 (and tp!23035 tp!23036))))

(assert (=> b!33038 (= tp!22780 e!15051)))

(assert (= (and b!33038 ((_ is Cons!255) (exprs!523 (_2!98 (_1!99 (h!5653 (zeroValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))))))) b!33291))

(declare-fun setRes!309 () Bool)

(declare-fun setNonEmpty!309 () Bool)

(declare-fun setElem!309 () Context!46)

(declare-fun e!15052 () Bool)

(declare-fun tp!23040 () Bool)

(assert (=> setNonEmpty!309 (= setRes!309 (and tp!23040 (inv!566 setElem!309) e!15052))))

(declare-fun setRest!309 () (InoxSet Context!46))

(assert (=> setNonEmpty!309 (= (_2!97 (h!5652 (t!14848 mapValue!159))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!309 true) setRest!309))))

(declare-fun b!33292 () Bool)

(declare-fun tp!23039 () Bool)

(assert (=> b!33292 (= e!15052 tp!23039)))

(declare-fun e!15054 () Bool)

(assert (=> b!33014 (= tp!22752 e!15054)))

(declare-fun e!15053 () Bool)

(declare-fun tp!23038 () Bool)

(declare-fun b!33293 () Bool)

(assert (=> b!33293 (= e!15054 (and (inv!566 (_1!96 (_1!97 (h!5652 (t!14848 mapValue!159))))) e!15053 tp_is_empty!297 setRes!309 tp!23038))))

(declare-fun condSetEmpty!309 () Bool)

(assert (=> b!33293 (= condSetEmpty!309 (= (_2!97 (h!5652 (t!14848 mapValue!159))) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33294 () Bool)

(declare-fun tp!23037 () Bool)

(assert (=> b!33294 (= e!15053 tp!23037)))

(declare-fun setIsEmpty!309 () Bool)

(assert (=> setIsEmpty!309 setRes!309))

(assert (= b!33293 b!33294))

(assert (= (and b!33293 condSetEmpty!309) setIsEmpty!309))

(assert (= (and b!33293 (not condSetEmpty!309)) setNonEmpty!309))

(assert (= setNonEmpty!309 b!33292))

(assert (= (and b!33014 ((_ is Cons!256) (t!14848 mapValue!159))) b!33293))

(declare-fun m!9239 () Bool)

(assert (=> setNonEmpty!309 m!9239))

(declare-fun m!9241 () Bool)

(assert (=> b!33293 m!9241))

(declare-fun b!33299 () Bool)

(declare-fun e!15057 () Bool)

(declare-fun tp!23043 () Bool)

(assert (=> b!33299 (= e!15057 (and tp_is_empty!297 tp!23043))))

(assert (=> b!32998 (= tp!22726 e!15057)))

(assert (= (and b!32998 ((_ is Cons!254) (innerList!97 (xs!2618 (c!15277 input!768))))) b!33299))

(declare-fun b!33300 () Bool)

(declare-fun e!15058 () Bool)

(declare-fun tp!23044 () Bool)

(declare-fun tp!23045 () Bool)

(assert (=> b!33300 (= e!15058 (and tp!23044 tp!23045))))

(assert (=> b!33041 (= tp!22785 e!15058)))

(assert (= (and b!33041 ((_ is Cons!255) (exprs!523 (_2!98 (_1!99 (h!5653 (minValue!295 (v!12042 (underlying!279 (v!12043 (underlying!280 (cache!519 cacheDown!485)))))))))))) b!33300))

(declare-fun condSetEmpty!310 () Bool)

(assert (=> setNonEmpty!275 (= condSetEmpty!310 (= setRest!275 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!310 () Bool)

(assert (=> setNonEmpty!275 (= tp!22778 setRes!310)))

(declare-fun setIsEmpty!310 () Bool)

(assert (=> setIsEmpty!310 setRes!310))

(declare-fun tp!23047 () Bool)

(declare-fun setNonEmpty!310 () Bool)

(declare-fun e!15059 () Bool)

(declare-fun setElem!310 () Context!46)

(assert (=> setNonEmpty!310 (= setRes!310 (and tp!23047 (inv!566 setElem!310) e!15059))))

(declare-fun setRest!310 () (InoxSet Context!46))

(assert (=> setNonEmpty!310 (= setRest!275 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!310 true) setRest!310))))

(declare-fun b!33301 () Bool)

(declare-fun tp!23046 () Bool)

(assert (=> b!33301 (= e!15059 tp!23046)))

(assert (= (and setNonEmpty!275 condSetEmpty!310) setIsEmpty!310))

(assert (= (and setNonEmpty!275 (not condSetEmpty!310)) setNonEmpty!310))

(assert (= setNonEmpty!310 b!33301))

(declare-fun m!9243 () Bool)

(assert (=> setNonEmpty!310 m!9243))

(declare-fun condSetEmpty!311 () Bool)

(assert (=> setNonEmpty!276 (= condSetEmpty!311 (= setRest!276 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!311 () Bool)

(assert (=> setNonEmpty!276 (= tp!22783 setRes!311)))

(declare-fun setIsEmpty!311 () Bool)

(assert (=> setIsEmpty!311 setRes!311))

(declare-fun tp!23049 () Bool)

(declare-fun e!15060 () Bool)

(declare-fun setElem!311 () Context!46)

(declare-fun setNonEmpty!311 () Bool)

(assert (=> setNonEmpty!311 (= setRes!311 (and tp!23049 (inv!566 setElem!311) e!15060))))

(declare-fun setRest!311 () (InoxSet Context!46))

(assert (=> setNonEmpty!311 (= setRest!276 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!311 true) setRest!311))))

(declare-fun b!33302 () Bool)

(declare-fun tp!23048 () Bool)

(assert (=> b!33302 (= e!15060 tp!23048)))

(assert (= (and setNonEmpty!276 condSetEmpty!311) setIsEmpty!311))

(assert (= (and setNonEmpty!276 (not condSetEmpty!311)) setNonEmpty!311))

(assert (= setNonEmpty!311 b!33302))

(declare-fun m!9245 () Bool)

(assert (=> setNonEmpty!311 m!9245))

(declare-fun condSetEmpty!312 () Bool)

(assert (=> setNonEmpty!277 (= condSetEmpty!312 (= setRest!277 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!312 () Bool)

(assert (=> setNonEmpty!277 (= tp!22788 setRes!312)))

(declare-fun setIsEmpty!312 () Bool)

(assert (=> setIsEmpty!312 setRes!312))

(declare-fun setElem!312 () Context!46)

(declare-fun setNonEmpty!312 () Bool)

(declare-fun tp!23051 () Bool)

(declare-fun e!15061 () Bool)

(assert (=> setNonEmpty!312 (= setRes!312 (and tp!23051 (inv!566 setElem!312) e!15061))))

(declare-fun setRest!312 () (InoxSet Context!46))

(assert (=> setNonEmpty!312 (= setRest!277 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!312 true) setRest!312))))

(declare-fun b!33303 () Bool)

(declare-fun tp!23050 () Bool)

(assert (=> b!33303 (= e!15061 tp!23050)))

(assert (= (and setNonEmpty!277 condSetEmpty!312) setIsEmpty!312))

(assert (= (and setNonEmpty!277 (not condSetEmpty!312)) setNonEmpty!312))

(assert (= setNonEmpty!312 b!33303))

(declare-fun m!9247 () Bool)

(assert (=> setNonEmpty!312 m!9247))

(declare-fun b!33304 () Bool)

(declare-fun e!15062 () Bool)

(declare-fun tp!23052 () Bool)

(declare-fun tp!23053 () Bool)

(assert (=> b!33304 (= e!15062 (and tp!23052 tp!23053))))

(assert (=> b!33046 (= tp!22786 e!15062)))

(assert (= (and b!33046 ((_ is Cons!255) (exprs!523 setElem!277))) b!33304))

(declare-fun condSetEmpty!313 () Bool)

(assert (=> setNonEmpty!287 (= condSetEmpty!313 (= setRest!287 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!313 () Bool)

(assert (=> setNonEmpty!287 (= tp!22852 setRes!313)))

(declare-fun setIsEmpty!313 () Bool)

(assert (=> setIsEmpty!313 setRes!313))

(declare-fun setNonEmpty!313 () Bool)

(declare-fun setElem!313 () Context!46)

(declare-fun tp!23055 () Bool)

(declare-fun e!15063 () Bool)

(assert (=> setNonEmpty!313 (= setRes!313 (and tp!23055 (inv!566 setElem!313) e!15063))))

(declare-fun setRest!313 () (InoxSet Context!46))

(assert (=> setNonEmpty!313 (= setRest!287 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!313 true) setRest!313))))

(declare-fun b!33305 () Bool)

(declare-fun tp!23054 () Bool)

(assert (=> b!33305 (= e!15063 tp!23054)))

(assert (= (and setNonEmpty!287 condSetEmpty!313) setIsEmpty!313))

(assert (= (and setNonEmpty!287 (not condSetEmpty!313)) setNonEmpty!313))

(assert (= setNonEmpty!313 b!33305))

(declare-fun m!9249 () Bool)

(assert (=> setNonEmpty!313 m!9249))

(declare-fun condSetEmpty!314 () Bool)

(assert (=> setNonEmpty!272 (= condSetEmpty!314 (= setRest!272 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!314 () Bool)

(assert (=> setNonEmpty!272 (= tp!22765 setRes!314)))

(declare-fun setIsEmpty!314 () Bool)

(assert (=> setIsEmpty!314 setRes!314))

(declare-fun setNonEmpty!314 () Bool)

(declare-fun e!15064 () Bool)

(declare-fun setElem!314 () Context!46)

(declare-fun tp!23057 () Bool)

(assert (=> setNonEmpty!314 (= setRes!314 (and tp!23057 (inv!566 setElem!314) e!15064))))

(declare-fun setRest!314 () (InoxSet Context!46))

(assert (=> setNonEmpty!314 (= setRest!272 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!314 true) setRest!314))))

(declare-fun b!33306 () Bool)

(declare-fun tp!23056 () Bool)

(assert (=> b!33306 (= e!15064 tp!23056)))

(assert (= (and setNonEmpty!272 condSetEmpty!314) setIsEmpty!314))

(assert (= (and setNonEmpty!272 (not condSetEmpty!314)) setNonEmpty!314))

(assert (= setNonEmpty!314 b!33306))

(declare-fun m!9251 () Bool)

(assert (=> setNonEmpty!314 m!9251))

(declare-fun b!33307 () Bool)

(declare-fun e!15065 () Bool)

(declare-fun tp!23058 () Bool)

(declare-fun tp!23059 () Bool)

(assert (=> b!33307 (= e!15065 (and tp!23058 tp!23059))))

(assert (=> b!33040 (= tp!22776 e!15065)))

(assert (= (and b!33040 ((_ is Cons!255) (exprs!523 setElem!275))) b!33307))

(declare-fun b!33308 () Bool)

(declare-fun e!15066 () Bool)

(declare-fun tp!23060 () Bool)

(declare-fun tp!23061 () Bool)

(assert (=> b!33308 (= e!15066 (and tp!23060 tp!23061))))

(assert (=> b!33016 (= tp!22748 e!15066)))

(assert (= (and b!33016 ((_ is Cons!255) (exprs!523 (_1!96 (_1!97 (h!5652 mapDefault!159)))))) b!33308))

(declare-fun b!33309 () Bool)

(declare-fun e!15067 () Bool)

(declare-fun tp!23062 () Bool)

(declare-fun tp!23063 () Bool)

(assert (=> b!33309 (= e!15067 (and tp!23062 tp!23063))))

(assert (=> b!33043 (= tp!22781 e!15067)))

(assert (= (and b!33043 ((_ is Cons!255) (exprs!523 setElem!276))) b!33309))

(declare-fun condSetEmpty!315 () Bool)

(assert (=> setNonEmpty!285 (= condSetEmpty!315 (= setRest!285 ((as const (Array Context!46 Bool)) false)))))

(declare-fun setRes!315 () Bool)

(assert (=> setNonEmpty!285 (= tp!22844 setRes!315)))

(declare-fun setIsEmpty!315 () Bool)

(assert (=> setIsEmpty!315 setRes!315))

(declare-fun setElem!315 () Context!46)

(declare-fun setNonEmpty!315 () Bool)

(declare-fun e!15068 () Bool)

(declare-fun tp!23065 () Bool)

(assert (=> setNonEmpty!315 (= setRes!315 (and tp!23065 (inv!566 setElem!315) e!15068))))

(declare-fun setRest!315 () (InoxSet Context!46))

(assert (=> setNonEmpty!315 (= setRest!285 ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!315 true) setRest!315))))

(declare-fun b!33310 () Bool)

(declare-fun tp!23064 () Bool)

(assert (=> b!33310 (= e!15068 tp!23064)))

(assert (= (and setNonEmpty!285 condSetEmpty!315) setIsEmpty!315))

(assert (= (and setNonEmpty!285 (not condSetEmpty!315)) setNonEmpty!315))

(assert (= setNonEmpty!315 b!33310))

(declare-fun m!9253 () Bool)

(assert (=> setNonEmpty!315 m!9253))

(declare-fun b!33311 () Bool)

(declare-fun e!15069 () Bool)

(declare-fun tp!23066 () Bool)

(declare-fun tp!23067 () Bool)

(assert (=> b!33311 (= e!15069 (and tp!23066 tp!23067))))

(assert (=> b!33084 (= tp!22847 e!15069)))

(assert (= (and b!33084 ((_ is Cons!255) (exprs!523 setElem!286))) b!33311))

(declare-fun setRes!316 () Bool)

(declare-fun tp!23071 () Bool)

(declare-fun setElem!316 () Context!46)

(declare-fun e!15070 () Bool)

(declare-fun setNonEmpty!316 () Bool)

(assert (=> setNonEmpty!316 (= setRes!316 (and tp!23071 (inv!566 setElem!316) e!15070))))

(declare-fun setRest!316 () (InoxSet Context!46))

(assert (=> setNonEmpty!316 (= (_2!97 (h!5652 (t!14848 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!316 true) setRest!316))))

(declare-fun b!33312 () Bool)

(declare-fun tp!23070 () Bool)

(assert (=> b!33312 (= e!15070 tp!23070)))

(declare-fun e!15072 () Bool)

(assert (=> b!33088 (= tp!22850 e!15072)))

(declare-fun e!15071 () Bool)

(declare-fun b!33313 () Bool)

(declare-fun tp!23069 () Bool)

(assert (=> b!33313 (= e!15072 (and (inv!566 (_1!96 (_1!97 (h!5652 (t!14848 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))))))) e!15071 tp_is_empty!297 setRes!316 tp!23069))))

(declare-fun condSetEmpty!316 () Bool)

(assert (=> b!33313 (= condSetEmpty!316 (= (_2!97 (h!5652 (t!14848 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))))) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33314 () Bool)

(declare-fun tp!23068 () Bool)

(assert (=> b!33314 (= e!15071 tp!23068)))

(declare-fun setIsEmpty!316 () Bool)

(assert (=> setIsEmpty!316 setRes!316))

(assert (= b!33313 b!33314))

(assert (= (and b!33313 condSetEmpty!316) setIsEmpty!316))

(assert (= (and b!33313 (not condSetEmpty!316)) setNonEmpty!316))

(assert (= setNonEmpty!316 b!33312))

(assert (= (and b!33088 ((_ is Cons!256) (t!14848 (minValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472))))))))) b!33313))

(declare-fun m!9255 () Bool)

(assert (=> setNonEmpty!316 m!9255))

(declare-fun m!9257 () Bool)

(assert (=> b!33313 m!9257))

(declare-fun setNonEmpty!317 () Bool)

(declare-fun setElem!317 () Context!46)

(declare-fun tp!23075 () Bool)

(declare-fun e!15073 () Bool)

(declare-fun setRes!317 () Bool)

(assert (=> setNonEmpty!317 (= setRes!317 (and tp!23075 (inv!566 setElem!317) e!15073))))

(declare-fun setRest!317 () (InoxSet Context!46))

(assert (=> setNonEmpty!317 (= (_2!97 (h!5652 (t!14848 mapValue!155))) ((_ map or) (store ((as const (Array Context!46 Bool)) false) setElem!317 true) setRest!317))))

(declare-fun b!33315 () Bool)

(declare-fun tp!23074 () Bool)

(assert (=> b!33315 (= e!15073 tp!23074)))

(declare-fun e!15075 () Bool)

(assert (=> b!33028 (= tp!22763 e!15075)))

(declare-fun tp!23073 () Bool)

(declare-fun b!33316 () Bool)

(declare-fun e!15074 () Bool)

(assert (=> b!33316 (= e!15075 (and (inv!566 (_1!96 (_1!97 (h!5652 (t!14848 mapValue!155))))) e!15074 tp_is_empty!297 setRes!317 tp!23073))))

(declare-fun condSetEmpty!317 () Bool)

(assert (=> b!33316 (= condSetEmpty!317 (= (_2!97 (h!5652 (t!14848 mapValue!155))) ((as const (Array Context!46 Bool)) false)))))

(declare-fun b!33317 () Bool)

(declare-fun tp!23072 () Bool)

(assert (=> b!33317 (= e!15074 tp!23072)))

(declare-fun setIsEmpty!317 () Bool)

(assert (=> setIsEmpty!317 setRes!317))

(assert (= b!33316 b!33317))

(assert (= (and b!33316 condSetEmpty!317) setIsEmpty!317))

(assert (= (and b!33316 (not condSetEmpty!317)) setNonEmpty!317))

(assert (= setNonEmpty!317 b!33315))

(assert (= (and b!33028 ((_ is Cons!256) (t!14848 mapValue!155))) b!33316))

(declare-fun m!9259 () Bool)

(assert (=> setNonEmpty!317 m!9259))

(declare-fun m!9261 () Bool)

(assert (=> b!33316 m!9261))

(declare-fun b!33318 () Bool)

(declare-fun e!15076 () Bool)

(declare-fun tp!23076 () Bool)

(declare-fun tp!23077 () Bool)

(assert (=> b!33318 (= e!15076 (and tp!23076 tp!23077))))

(assert (=> b!33086 (= tp!22845 e!15076)))

(assert (= (and b!33086 ((_ is Cons!255) (exprs!523 (_1!96 (_1!97 (h!5652 (zeroValue!294 (v!12040 (underlying!277 (v!12041 (underlying!278 (cache!518 cacheUp!472)))))))))))) b!33318))

(declare-fun b!33319 () Bool)

(declare-fun e!15077 () Bool)

(declare-fun tp!23078 () Bool)

(declare-fun tp!23079 () Bool)

(assert (=> b!33319 (= e!15077 (and tp!23078 tp!23079))))

(assert (=> b!33063 (= tp!22823 e!15077)))

(assert (= (and b!33063 ((_ is Cons!255) (exprs!523 setElem!283))) b!33319))

(check-sat (not b!33310) (not b!33140) (not b!33251) (not b!33146) (not b!33183) (not b!33283) (not b!33214) (not b!33148) (not b!33267) (not setNonEmpty!295) (not b!33262) (not b!33288) (not b!33270) (not b_next!275) (not b!33305) (not setNonEmpty!304) (not d!3283) (not setNonEmpty!300) (not b!33097) (not b!33153) b_and!263 (not b!33263) (not b!33299) (not b!33286) (not b!33278) (not b!33177) (not b!33180) (not b!33250) (not b!33259) (not b!33136) (not d!3273) (not b!32996) (not d!3303) (not b!33179) (not b!33221) (not setNonEmpty!291) (not b_next!257) (not b!33318) (not b!33206) (not d!3353) (not b!33224) (not d!3327) (not b!33207) (not b!33178) (not setNonEmpty!317) (not d!3285) b_and!269 (not b!33289) (not b!33284) (not b!33220) (not b!33269) (not b!33166) (not setNonEmpty!311) (not b!33246) (not b!33282) (not b!33242) (not d!3315) (not d!3319) (not d!3345) (not b!33227) (not b!33256) (not b!33225) (not b!33247) b_and!265 (not b!33169) (not b!33174) (not b!33258) (not setNonEmpty!315) (not b!33248) (not b!33176) (not b!33232) (not b!33204) (not d!3325) (not b!33249) (not b!33254) (not b!33172) (not setNonEmpty!313) (not b!33191) (not d!3329) (not b!33257) (not b!33245) (not b!33272) (not d!3281) (not setNonEmpty!312) (not b!33184) (not d!3343) (not b!33274) (not b_next!269) b_and!259 b_and!271 (not b!33253) (not b!33219) (not d!3291) (not d!3337) (not d!3313) (not b!33226) (not setNonEmpty!310) (not b_next!259) (not b!33302) (not b_next!271) (not b!33261) (not b!33187) (not b!33236) (not b!33252) (not b!33276) (not b!33275) (not b!33222) (not b!33300) (not b!33196) (not b!33188) (not setNonEmpty!307) (not d!3335) (not b!33151) (not d!3347) (not b!33266) (not b!33168) (not b!33312) (not b!33209) (not b!33264) b_and!273 (not b!33122) (not b!33181) (not b!33231) (not b!33244) (not b!33210) (not d!3331) (not b!33213) (not d!3297) (not b!33147) b_and!275 (not b!33185) (not setNonEmpty!299) (not b!33308) (not b!33319) b_and!261 (not b!33211) (not b!33229) (not b!33218) (not b!33171) (not b!33235) (not b!33106) (not b!33195) (not b!33294) (not setNonEmpty!289) (not setNonEmpty!306) (not b!33173) (not b!33279) (not b!33192) (not d!3317) (not b!33234) (not b!33317) (not setNonEmpty!303) (not d!3279) (not b!33313) (not setNonEmpty!305) (not b!33159) (not d!3309) (not b!33237) (not b!33135) tp_is_empty!297 (not b!33170) (not b!33208) (not b!33260) (not b!33205) (not b!33303) (not b!33145) (not b!33306) (not setNonEmpty!294) (not b_next!265) (not setNonEmpty!296) (not b!33301) (not d!3311) (not d!3287) (not mapNonEmpty!163) (not b!33215) (not d!3295) (not b!33309) (not d!3351) (not b_next!267) (not d!3333) (not b!33243) (not b!33150) (not b!33138) (not b!33121) (not b!33202) (not b!33314) (not b!33193) (not setNonEmpty!309) (not b!33316) (not b_next!273) (not b!33311) (not b!33167) (not b!33280) (not b!33281) (not b!33287) (not b!33271) (not setNonEmpty!301) (not b!33277) (not b!33233) (not b!33292) (not setNonEmpty!316) (not b_next!261) (not setNonEmpty!308) (not d!3349) (not b!33105) (not setNonEmpty!302) (not b!33139) (not b_next!263) (not setNonEmpty!314) (not d!3339) (not b!33291) (not b!33137) (not b!33304) (not b!33217) (not b!33315) (not b!33307) (not d!3289) (not setNonEmpty!288) (not b!33197) (not b!33189) b_and!267 (not setNonEmpty!298) (not d!3277) (not setNonEmpty!290) (not b!33290) (not b!33228) (not b!33293) (not b!33268) (not b!33285) b_and!257 (not setNonEmpty!297) (not d!3321) (not mapNonEmpty!164) (not d!3275) (not d!3341) (not b!33115))
(check-sat (not b_next!275) b_and!263 (not b_next!257) b_and!269 b_and!265 (not b_next!269) b_and!273 (not b_next!265) (not b_next!267) (not b_next!273) b_and!267 b_and!257 b_and!259 b_and!271 (not b_next!259) (not b_next!271) b_and!275 b_and!261 (not b_next!263) (not b_next!261))
