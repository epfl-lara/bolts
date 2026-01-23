; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65826 () Bool)

(assert start!65826)

(declare-fun b!688201 () Bool)

(declare-fun b_free!19353 () Bool)

(declare-fun b_next!19417 () Bool)

(assert (=> b!688201 (= b_free!19353 (not b_next!19417))))

(declare-fun tp!205692 () Bool)

(declare-fun b_and!63147 () Bool)

(assert (=> b!688201 (= tp!205692 b_and!63147)))

(declare-fun b!688183 () Bool)

(declare-fun b_free!19355 () Bool)

(declare-fun b_next!19419 () Bool)

(assert (=> b!688183 (= b_free!19355 (not b_next!19419))))

(declare-fun tp!205691 () Bool)

(declare-fun b_and!63149 () Bool)

(assert (=> b!688183 (= tp!205691 b_and!63149)))

(declare-fun b!688180 () Bool)

(declare-fun b_free!19357 () Bool)

(declare-fun b_next!19421 () Bool)

(assert (=> b!688180 (= b_free!19357 (not b_next!19421))))

(declare-fun tp!205671 () Bool)

(declare-fun b_and!63151 () Bool)

(assert (=> b!688180 (= tp!205671 b_and!63151)))

(declare-fun b_free!19359 () Bool)

(declare-fun b_next!19423 () Bool)

(assert (=> b!688180 (= b_free!19359 (not b_next!19423))))

(declare-fun tp!205695 () Bool)

(declare-fun b_and!63153 () Bool)

(assert (=> b!688180 (= tp!205695 b_and!63153)))

(declare-fun b!688177 () Bool)

(declare-fun b_free!19361 () Bool)

(declare-fun b_next!19425 () Bool)

(assert (=> b!688177 (= b_free!19361 (not b_next!19425))))

(declare-fun tp!205681 () Bool)

(declare-fun b_and!63155 () Bool)

(assert (=> b!688177 (= tp!205681 b_and!63155)))

(declare-fun b!688179 () Bool)

(declare-fun b_free!19363 () Bool)

(declare-fun b_next!19427 () Bool)

(assert (=> b!688179 (= b_free!19363 (not b_next!19427))))

(declare-fun tp!205687 () Bool)

(declare-fun b_and!63157 () Bool)

(assert (=> b!688179 (= tp!205687 b_and!63157)))

(declare-fun b!688198 () Bool)

(declare-fun b_free!19365 () Bool)

(declare-fun b_next!19429 () Bool)

(assert (=> b!688198 (= b_free!19365 (not b_next!19429))))

(declare-fun tp!205670 () Bool)

(declare-fun b_and!63159 () Bool)

(assert (=> b!688198 (= tp!205670 b_and!63159)))

(declare-fun b!688194 () Bool)

(declare-fun b_free!19367 () Bool)

(declare-fun b_next!19431 () Bool)

(assert (=> b!688194 (= b_free!19367 (not b_next!19431))))

(declare-fun tp!205689 () Bool)

(declare-fun b_and!63161 () Bool)

(assert (=> b!688194 (= tp!205689 b_and!63161)))

(declare-fun b!688175 () Bool)

(declare-fun e!432392 () Bool)

(declare-fun e!432406 () Bool)

(declare-datatypes ((C!4244 0))(
  ( (C!4245 (val!2352 Int)) )
))
(declare-datatypes ((Regex!1821 0))(
  ( (ElementMatch!1821 (c!121355 C!4244)) (Concat!3349 (regOne!4154 Regex!1821) (regTwo!4154 Regex!1821)) (EmptyExpr!1821) (Star!1821 (reg!2150 Regex!1821)) (EmptyLang!1821) (Union!1821 (regOne!4155 Regex!1821) (regTwo!4155 Regex!1821)) )
))
(declare-datatypes ((List!7379 0))(
  ( (Nil!7365) (Cons!7365 (h!12766 Regex!1821) (t!87187 List!7379)) )
))
(declare-datatypes ((Context!462 0))(
  ( (Context!463 (exprs!731 List!7379)) )
))
(declare-datatypes ((tuple2!7718 0))(
  ( (tuple2!7719 (_1!4255 Context!462) (_2!4255 C!4244)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7720 0))(
  ( (tuple2!7721 (_1!4256 tuple2!7718) (_2!4256 (InoxSet Context!462))) )
))
(declare-datatypes ((List!7380 0))(
  ( (Nil!7366) (Cons!7366 (h!12767 tuple2!7720) (t!87188 List!7380)) )
))
(declare-datatypes ((array!2769 0))(
  ( (array!2770 (arr!1252 (Array (_ BitVec 32) (_ BitVec 64))) (size!6045 (_ BitVec 32))) )
))
(declare-datatypes ((array!2771 0))(
  ( (array!2772 (arr!1253 (Array (_ BitVec 32) List!7380)) (size!6046 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1466 0))(
  ( (LongMapFixedSize!1467 (defaultEntry!1089 Int) (mask!2528 (_ BitVec 32)) (extraKeys!980 (_ BitVec 32)) (zeroValue!990 List!7380) (minValue!990 List!7380) (_size!1575 (_ BitVec 32)) (_keys!1027 array!2769) (_values!1012 array!2771) (_vacant!794 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2873 0))(
  ( (Cell!2874 (v!17578 LongMapFixedSize!1466)) )
))
(declare-datatypes ((MutLongMap!733 0))(
  ( (LongMap!733 (underlying!1649 Cell!2873)) (MutLongMapExt!732 (__x!5253 Int)) )
))
(declare-fun lt!284144 () MutLongMap!733)

(get-info :version)

(assert (=> b!688175 (= e!432392 (and e!432406 ((_ is LongMap!733) lt!284144)))))

(declare-datatypes ((Cell!2875 0))(
  ( (Cell!2876 (v!17579 MutLongMap!733)) )
))
(declare-datatypes ((Hashable!705 0))(
  ( (HashableExt!704 (__x!5254 Int)) )
))
(declare-datatypes ((MutableMap!705 0))(
  ( (MutableMapExt!704 (__x!5255 Int)) (HashMap!705 (underlying!1650 Cell!2875) (hashF!2613 Hashable!705) (_size!1576 (_ BitVec 32)) (defaultValue!856 Int)) )
))
(declare-datatypes ((CacheUp!356 0))(
  ( (CacheUp!357 (cache!1092 MutableMap!705)) )
))
(declare-fun cacheUp!457 () CacheUp!356)

(assert (=> b!688175 (= lt!284144 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))

(declare-fun mapNonEmpty!2936 () Bool)

(declare-fun mapRes!2937 () Bool)

(declare-fun tp!205678 () Bool)

(declare-fun tp!205683 () Bool)

(assert (=> mapNonEmpty!2936 (= mapRes!2937 (and tp!205678 tp!205683))))

(declare-datatypes ((tuple2!7722 0))(
  ( (tuple2!7723 (_1!4257 (InoxSet Context!462)) (_2!4257 Int)) )
))
(declare-datatypes ((tuple2!7724 0))(
  ( (tuple2!7725 (_1!4258 tuple2!7722) (_2!4258 Int)) )
))
(declare-datatypes ((List!7381 0))(
  ( (Nil!7367) (Cons!7367 (h!12768 tuple2!7724) (t!87189 List!7381)) )
))
(declare-fun mapValue!2938 () List!7381)

(declare-fun mapKey!2937 () (_ BitVec 32))

(declare-fun mapRest!2938 () (Array (_ BitVec 32) List!7381))

(declare-datatypes ((Hashable!706 0))(
  ( (HashableExt!705 (__x!5256 Int)) )
))
(declare-datatypes ((List!7382 0))(
  ( (Nil!7368) (Cons!7368 (h!12769 C!4244) (t!87190 List!7382)) )
))
(declare-datatypes ((array!2773 0))(
  ( (array!2774 (arr!1254 (Array (_ BitVec 32) List!7381)) (size!6047 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1468 0))(
  ( (LongMapFixedSize!1469 (defaultEntry!1090 Int) (mask!2529 (_ BitVec 32)) (extraKeys!981 (_ BitVec 32)) (zeroValue!991 List!7381) (minValue!991 List!7381) (_size!1577 (_ BitVec 32)) (_keys!1028 array!2769) (_values!1013 array!2773) (_vacant!795 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2877 0))(
  ( (Cell!2878 (v!17580 LongMapFixedSize!1468)) )
))
(declare-datatypes ((MutLongMap!734 0))(
  ( (LongMap!734 (underlying!1651 Cell!2877)) (MutLongMapExt!733 (__x!5257 Int)) )
))
(declare-datatypes ((Cell!2879 0))(
  ( (Cell!2880 (v!17581 MutLongMap!734)) )
))
(declare-datatypes ((MutableMap!706 0))(
  ( (MutableMapExt!705 (__x!5258 Int)) (HashMap!706 (underlying!1652 Cell!2879) (hashF!2614 Hashable!706) (_size!1578 (_ BitVec 32)) (defaultValue!857 Int)) )
))
(declare-datatypes ((IArray!5227 0))(
  ( (IArray!5228 (innerList!2671 List!7382)) )
))
(declare-datatypes ((Conc!2613 0))(
  ( (Node!2613 (left!5950 Conc!2613) (right!6280 Conc!2613) (csize!5456 Int) (cheight!2824 Int)) (Leaf!3877 (xs!5262 IArray!5227) (csize!5457 Int)) (Empty!2613) )
))
(declare-datatypes ((BalanceConc!5238 0))(
  ( (BalanceConc!5239 (c!121356 Conc!2613)) )
))
(declare-datatypes ((CacheFindLongestMatch!18 0))(
  ( (CacheFindLongestMatch!19 (cache!1093 MutableMap!706) (totalInput!1786 BalanceConc!5238)) )
))
(declare-fun cacheFindLongestMatch!59 () CacheFindLongestMatch!18)

(assert (=> mapNonEmpty!2936 (= (arr!1254 (_values!1013 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))) (store mapRest!2938 mapKey!2937 mapValue!2938))))

(declare-fun mapNonEmpty!2937 () Bool)

(declare-fun mapRes!2938 () Bool)

(declare-fun tp!205686 () Bool)

(declare-fun tp!205679 () Bool)

(assert (=> mapNonEmpty!2937 (= mapRes!2938 (and tp!205686 tp!205679))))

(declare-fun mapRest!2937 () (Array (_ BitVec 32) List!7380))

(declare-fun mapKey!2936 () (_ BitVec 32))

(declare-fun mapValue!2937 () List!7380)

(assert (=> mapNonEmpty!2937 (= (arr!1253 (_values!1012 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))) (store mapRest!2937 mapKey!2936 mapValue!2937))))

(declare-fun b!688176 () Bool)

(declare-fun e!432397 () Bool)

(declare-fun e!432400 () Bool)

(assert (=> b!688176 (= e!432397 e!432400)))

(declare-fun mapIsEmpty!2936 () Bool)

(declare-fun mapRes!2936 () Bool)

(assert (=> mapIsEmpty!2936 mapRes!2936))

(declare-fun e!432413 () Bool)

(declare-fun e!432416 () Bool)

(assert (=> b!688177 (= e!432413 (and e!432416 tp!205681))))

(declare-fun b!688178 () Bool)

(declare-fun e!432398 () Bool)

(declare-fun e!432405 () Bool)

(assert (=> b!688178 (= e!432398 e!432405)))

(declare-fun res!312721 () Bool)

(assert (=> b!688178 (=> (not res!312721) (not e!432405))))

(declare-fun lt!284147 () List!7382)

(declare-fun lt!284142 () List!7382)

(declare-fun ++!1935 (List!7382 List!7382) List!7382)

(assert (=> b!688178 (= res!312721 (= lt!284147 (++!1935 lt!284142 lt!284147)))))

(declare-fun input!756 () BalanceConc!5238)

(declare-fun list!3108 (BalanceConc!5238) List!7382)

(assert (=> b!688178 (= lt!284147 (list!3108 input!756))))

(assert (=> b!688178 (= lt!284142 (list!3108 (BalanceConc!5239 Empty!2613)))))

(declare-fun mapNonEmpty!2938 () Bool)

(declare-fun tp!205682 () Bool)

(declare-fun tp!205676 () Bool)

(assert (=> mapNonEmpty!2938 (= mapRes!2936 (and tp!205682 tp!205676))))

(declare-datatypes ((tuple3!690 0))(
  ( (tuple3!691 (_1!4259 Regex!1821) (_2!4259 Context!462) (_3!396 C!4244)) )
))
(declare-datatypes ((tuple2!7726 0))(
  ( (tuple2!7727 (_1!4260 tuple3!690) (_2!4260 (InoxSet Context!462))) )
))
(declare-datatypes ((List!7383 0))(
  ( (Nil!7369) (Cons!7369 (h!12770 tuple2!7726) (t!87191 List!7383)) )
))
(declare-datatypes ((array!2775 0))(
  ( (array!2776 (arr!1255 (Array (_ BitVec 32) List!7383)) (size!6048 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1470 0))(
  ( (LongMapFixedSize!1471 (defaultEntry!1091 Int) (mask!2530 (_ BitVec 32)) (extraKeys!982 (_ BitVec 32)) (zeroValue!992 List!7383) (minValue!992 List!7383) (_size!1579 (_ BitVec 32)) (_keys!1029 array!2769) (_values!1014 array!2775) (_vacant!796 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2881 0))(
  ( (Cell!2882 (v!17582 LongMapFixedSize!1470)) )
))
(declare-datatypes ((MutLongMap!735 0))(
  ( (LongMap!735 (underlying!1653 Cell!2881)) (MutLongMapExt!734 (__x!5259 Int)) )
))
(declare-datatypes ((Cell!2883 0))(
  ( (Cell!2884 (v!17583 MutLongMap!735)) )
))
(declare-datatypes ((Hashable!707 0))(
  ( (HashableExt!706 (__x!5260 Int)) )
))
(declare-datatypes ((MutableMap!707 0))(
  ( (MutableMapExt!706 (__x!5261 Int)) (HashMap!707 (underlying!1654 Cell!2883) (hashF!2615 Hashable!707) (_size!1580 (_ BitVec 32)) (defaultValue!858 Int)) )
))
(declare-datatypes ((CacheDown!362 0))(
  ( (CacheDown!363 (cache!1094 MutableMap!707)) )
))
(declare-fun cacheDown!470 () CacheDown!362)

(declare-fun mapRest!2936 () (Array (_ BitVec 32) List!7383))

(declare-fun mapKey!2938 () (_ BitVec 32))

(declare-fun mapValue!2936 () List!7383)

(assert (=> mapNonEmpty!2938 (= (arr!1255 (_values!1014 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))) (store mapRest!2936 mapKey!2938 mapValue!2936))))

(declare-fun e!432409 () Bool)

(declare-fun e!432393 () Bool)

(declare-fun tp!205673 () Bool)

(declare-fun tp!205693 () Bool)

(declare-fun array_inv!916 (array!2769) Bool)

(declare-fun array_inv!917 (array!2771) Bool)

(assert (=> b!688179 (= e!432409 (and tp!205687 tp!205693 tp!205673 (array_inv!916 (_keys!1027 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))) (array_inv!917 (_values!1012 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))) e!432393))))

(declare-fun mapIsEmpty!2937 () Bool)

(assert (=> mapIsEmpty!2937 mapRes!2938))

(declare-fun e!432396 () Bool)

(assert (=> b!688180 (= e!432396 (and tp!205671 tp!205695))))

(declare-fun b!688181 () Bool)

(declare-fun e!432411 () Bool)

(declare-fun e!432390 () Bool)

(assert (=> b!688181 (= e!432411 e!432390)))

(declare-fun b!688182 () Bool)

(declare-fun e!432410 () Bool)

(assert (=> b!688182 (= e!432410 e!432409)))

(declare-fun e!432418 () Bool)

(assert (=> b!688183 (= e!432418 (and e!432392 tp!205691))))

(declare-fun e!432388 () Bool)

(declare-fun b!688184 () Bool)

(declare-fun e!432408 () Bool)

(declare-fun inv!9470 (BalanceConc!5238) Bool)

(assert (=> b!688184 (= e!432408 (and e!432413 (inv!9470 (totalInput!1786 cacheFindLongestMatch!59)) e!432388))))

(declare-fun b!688185 () Bool)

(declare-fun e!432401 () Bool)

(declare-fun lt!284143 () MutLongMap!735)

(assert (=> b!688185 (= e!432401 (and e!432397 ((_ is LongMap!735) lt!284143)))))

(assert (=> b!688185 (= lt!284143 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))

(declare-fun b!688186 () Bool)

(declare-fun res!312724 () Bool)

(assert (=> b!688186 (=> (not res!312724) (not e!432398))))

(declare-fun valid!620 (CacheUp!356) Bool)

(assert (=> b!688186 (= res!312724 (valid!620 cacheUp!457))))

(declare-fun b!688187 () Bool)

(declare-fun e!432394 () Bool)

(declare-fun e!432391 () Bool)

(assert (=> b!688187 (= e!432394 e!432391)))

(declare-fun b!688188 () Bool)

(declare-fun e!432412 () Bool)

(assert (=> b!688188 (= e!432390 e!432412)))

(declare-fun b!688189 () Bool)

(declare-fun e!432407 () Bool)

(assert (=> b!688189 (= e!432407 e!432418)))

(declare-fun b!688190 () Bool)

(declare-fun e!432404 () Bool)

(assert (=> b!688190 (= e!432405 e!432404)))

(declare-fun res!312718 () Bool)

(assert (=> b!688190 (=> (not res!312718) (not e!432404))))

(declare-datatypes ((List!7384 0))(
  ( (Nil!7370) (Cons!7370 (h!12771 (_ BitVec 16)) (t!87192 List!7384)) )
))
(declare-datatypes ((TokenValue!1528 0))(
  ( (FloatLiteralValue!3056 (text!11141 List!7384)) (TokenValueExt!1527 (__x!5262 Int)) (Broken!7640 (value!47936 List!7384)) (Object!1541) (End!1528) (Def!1528) (Underscore!1528) (Match!1528) (Else!1528) (Error!1528) (Case!1528) (If!1528) (Extends!1528) (Abstract!1528) (Class!1528) (Val!1528) (DelimiterValue!3056 (del!1588 List!7384)) (KeywordValue!1534 (value!47937 List!7384)) (CommentValue!3056 (value!47938 List!7384)) (WhitespaceValue!3056 (value!47939 List!7384)) (IndentationValue!1528 (value!47940 List!7384)) (String!9361) (Int32!1528) (Broken!7641 (value!47941 List!7384)) (Boolean!1529) (Unit!12618) (OperatorValue!1531 (op!1588 List!7384)) (IdentifierValue!3056 (value!47942 List!7384)) (IdentifierValue!3057 (value!47943 List!7384)) (WhitespaceValue!3057 (value!47944 List!7384)) (True!3056) (False!3056) (Broken!7642 (value!47945 List!7384)) (Broken!7643 (value!47946 List!7384)) (True!3057) (RightBrace!1528) (RightBracket!1528) (Colon!1528) (Null!1528) (Comma!1528) (LeftBracket!1528) (False!3057) (LeftBrace!1528) (ImaginaryLiteralValue!1528 (text!11142 List!7384)) (StringLiteralValue!4584 (value!47947 List!7384)) (EOFValue!1528 (value!47948 List!7384)) (IdentValue!1528 (value!47949 List!7384)) (DelimiterValue!3057 (value!47950 List!7384)) (DedentValue!1528 (value!47951 List!7384)) (NewLineValue!1528 (value!47952 List!7384)) (IntegerValue!4584 (value!47953 (_ BitVec 32)) (text!11143 List!7384)) (IntegerValue!4585 (value!47954 Int) (text!11144 List!7384)) (Times!1528) (Or!1528) (Equal!1528) (Minus!1528) (Broken!7644 (value!47955 List!7384)) (And!1528) (Div!1528) (LessEqual!1528) (Mod!1528) (Concat!3350) (Not!1528) (Plus!1528) (SpaceValue!1528 (value!47956 List!7384)) (IntegerValue!4586 (value!47957 Int) (text!11145 List!7384)) (StringLiteralValue!4585 (text!11146 List!7384)) (FloatLiteralValue!3057 (text!11147 List!7384)) (BytesLiteralValue!1528 (value!47958 List!7384)) (CommentValue!3057 (value!47959 List!7384)) (StringLiteralValue!4586 (value!47960 List!7384)) (ErrorTokenValue!1528 (msg!1589 List!7384)) )
))
(declare-datatypes ((String!9362 0))(
  ( (String!9363 (value!47961 String)) )
))
(declare-datatypes ((TokenValueInjection!2792 0))(
  ( (TokenValueInjection!2793 (toValue!2440 Int) (toChars!2299 Int)) )
))
(declare-datatypes ((Rule!2768 0))(
  ( (Rule!2769 (regex!1484 Regex!1821) (tag!1746 String!9362) (isSeparator!1484 Bool) (transformation!1484 TokenValueInjection!2792)) )
))
(declare-datatypes ((Token!2680 0))(
  ( (Token!2681 (value!47962 TokenValue!1528) (rule!2529 Rule!2768) (size!6049 Int) (originalCharacters!1765 List!7382)) )
))
(declare-datatypes ((List!7385 0))(
  ( (Nil!7371) (Cons!7371 (h!12772 Token!2680) (t!87193 List!7385)) )
))
(declare-datatypes ((IArray!5229 0))(
  ( (IArray!5230 (innerList!2672 List!7385)) )
))
(declare-datatypes ((Conc!2614 0))(
  ( (Node!2614 (left!5951 Conc!2614) (right!6281 Conc!2614) (csize!5458 Int) (cheight!2825 Int)) (Leaf!3878 (xs!5263 IArray!5229) (csize!5459 Int)) (Empty!2614) )
))
(declare-datatypes ((BalanceConc!5240 0))(
  ( (BalanceConc!5241 (c!121357 Conc!2614)) )
))
(declare-datatypes ((tuple2!7728 0))(
  ( (tuple2!7729 (_1!4261 BalanceConc!5240) (_2!4261 BalanceConc!5238)) )
))
(declare-fun lt!284145 () tuple2!7728)

(declare-fun list!3109 (BalanceConc!5240) List!7385)

(assert (=> b!688190 (= res!312718 (= (list!3109 (_1!4261 lt!284145)) (list!3109 (BalanceConc!5241 Empty!2614))))))

(declare-datatypes ((LexerInterface!1299 0))(
  ( (LexerInterfaceExt!1296 (__x!5263 Int)) (Lexer!1297) )
))
(declare-fun thiss!12183 () LexerInterface!1299)

(declare-datatypes ((List!7386 0))(
  ( (Nil!7372) (Cons!7372 (h!12773 Rule!2768) (t!87194 List!7386)) )
))
(declare-fun rules!1357 () List!7386)

(declare-fun lexRec!151 (LexerInterface!1299 List!7386 BalanceConc!5238) tuple2!7728)

(assert (=> b!688190 (= lt!284145 (lexRec!151 thiss!12183 rules!1357 (BalanceConc!5239 Empty!2613)))))

(declare-fun b!688191 () Bool)

(assert (=> b!688191 (= e!432406 e!432410)))

(declare-fun b!688192 () Bool)

(declare-fun isEmpty!4844 (List!7382) Bool)

(assert (=> b!688192 (= e!432404 (not (isEmpty!4844 (list!3108 (_2!4261 lt!284145)))))))

(declare-fun b!688193 () Bool)

(declare-fun res!312726 () Bool)

(assert (=> b!688193 (=> (not res!312726) (not e!432398))))

(assert (=> b!688193 (= res!312726 (= (totalInput!1786 cacheFindLongestMatch!59) input!756))))

(declare-fun tp!205684 () Bool)

(declare-fun e!432417 () Bool)

(declare-fun tp!205674 () Bool)

(declare-fun array_inv!918 (array!2773) Bool)

(assert (=> b!688194 (= e!432412 (and tp!205689 tp!205674 tp!205684 (array_inv!916 (_keys!1028 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))) (array_inv!918 (_values!1013 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))) e!432417))))

(declare-fun b!688195 () Bool)

(declare-fun e!432395 () Bool)

(assert (=> b!688195 (= e!432400 e!432395)))

(declare-fun b!688196 () Bool)

(declare-fun e!432403 () Bool)

(declare-fun e!432399 () Bool)

(declare-fun tp!205694 () Bool)

(assert (=> b!688196 (= e!432403 (and e!432399 tp!205694))))

(declare-fun b!688197 () Bool)

(declare-fun res!312725 () Bool)

(assert (=> b!688197 (=> (not res!312725) (not e!432398))))

(declare-fun rulesInvariant!1233 (LexerInterface!1299 List!7386) Bool)

(assert (=> b!688197 (= res!312725 (rulesInvariant!1233 thiss!12183 rules!1357))))

(declare-fun tp!205688 () Bool)

(declare-fun tp!205675 () Bool)

(declare-fun e!432402 () Bool)

(declare-fun array_inv!919 (array!2775) Bool)

(assert (=> b!688198 (= e!432395 (and tp!205670 tp!205688 tp!205675 (array_inv!916 (_keys!1029 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))) (array_inv!919 (_values!1014 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))) e!432402))))

(declare-fun b!688199 () Bool)

(declare-fun lt!284146 () MutLongMap!734)

(assert (=> b!688199 (= e!432416 (and e!432411 ((_ is LongMap!734) lt!284146)))))

(assert (=> b!688199 (= lt!284146 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))

(declare-fun b!688200 () Bool)

(declare-fun e!432387 () Bool)

(declare-fun tp!205672 () Bool)

(declare-fun inv!9471 (Conc!2613) Bool)

(assert (=> b!688200 (= e!432387 (and (inv!9471 (c!121356 input!756)) tp!205672))))

(assert (=> b!688201 (= e!432391 (and e!432401 tp!205692))))

(declare-fun mapIsEmpty!2938 () Bool)

(assert (=> mapIsEmpty!2938 mapRes!2937))

(declare-fun b!688202 () Bool)

(declare-fun tp!205696 () Bool)

(assert (=> b!688202 (= e!432417 (and tp!205696 mapRes!2937))))

(declare-fun condMapEmpty!2937 () Bool)

(declare-fun mapDefault!2936 () List!7381)

(assert (=> b!688202 (= condMapEmpty!2937 (= (arr!1254 (_values!1013 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))) ((as const (Array (_ BitVec 32) List!7381)) mapDefault!2936)))))

(declare-fun b!688203 () Bool)

(declare-fun tp!205685 () Bool)

(assert (=> b!688203 (= e!432402 (and tp!205685 mapRes!2936))))

(declare-fun condMapEmpty!2936 () Bool)

(declare-fun mapDefault!2938 () List!7383)

(assert (=> b!688203 (= condMapEmpty!2936 (= (arr!1255 (_values!1014 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))) ((as const (Array (_ BitVec 32) List!7383)) mapDefault!2938)))))

(declare-fun b!688204 () Bool)

(declare-fun tp!205677 () Bool)

(declare-fun inv!9469 (String!9362) Bool)

(declare-fun inv!9472 (TokenValueInjection!2792) Bool)

(assert (=> b!688204 (= e!432399 (and tp!205677 (inv!9469 (tag!1746 (h!12773 rules!1357))) (inv!9472 (transformation!1484 (h!12773 rules!1357))) e!432396))))

(declare-fun b!688205 () Bool)

(declare-fun res!312720 () Bool)

(assert (=> b!688205 (=> (not res!312720) (not e!432398))))

(declare-fun isEmpty!4845 (List!7386) Bool)

(assert (=> b!688205 (= res!312720 (not (isEmpty!4845 rules!1357)))))

(declare-fun res!312723 () Bool)

(assert (=> start!65826 (=> (not res!312723) (not e!432398))))

(assert (=> start!65826 (= res!312723 ((_ is Lexer!1297) thiss!12183))))

(assert (=> start!65826 e!432398))

(declare-fun inv!9473 (CacheFindLongestMatch!18) Bool)

(assert (=> start!65826 (and (inv!9473 cacheFindLongestMatch!59) e!432408)))

(assert (=> start!65826 (and (inv!9470 input!756) e!432387)))

(declare-fun inv!9474 (CacheUp!356) Bool)

(assert (=> start!65826 (and (inv!9474 cacheUp!457) e!432407)))

(declare-fun inv!9475 (CacheDown!362) Bool)

(assert (=> start!65826 (and (inv!9475 cacheDown!470) e!432394)))

(assert (=> start!65826 true))

(assert (=> start!65826 e!432403))

(declare-fun b!688206 () Bool)

(declare-fun tp!205680 () Bool)

(assert (=> b!688206 (= e!432393 (and tp!205680 mapRes!2938))))

(declare-fun condMapEmpty!2938 () Bool)

(declare-fun mapDefault!2937 () List!7380)

(assert (=> b!688206 (= condMapEmpty!2938 (= (arr!1253 (_values!1012 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))) ((as const (Array (_ BitVec 32) List!7380)) mapDefault!2937)))))

(declare-fun b!688207 () Bool)

(declare-fun tp!205690 () Bool)

(assert (=> b!688207 (= e!432388 (and (inv!9471 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) tp!205690))))

(declare-fun b!688208 () Bool)

(declare-fun res!312719 () Bool)

(assert (=> b!688208 (=> (not res!312719) (not e!432398))))

(declare-fun valid!621 (CacheDown!362) Bool)

(assert (=> b!688208 (= res!312719 (valid!621 cacheDown!470))))

(declare-fun b!688209 () Bool)

(declare-fun res!312722 () Bool)

(assert (=> b!688209 (=> (not res!312722) (not e!432398))))

(declare-fun valid!622 (CacheFindLongestMatch!18) Bool)

(assert (=> b!688209 (= res!312722 (valid!622 cacheFindLongestMatch!59))))

(assert (= (and start!65826 res!312723) b!688205))

(assert (= (and b!688205 res!312720) b!688197))

(assert (= (and b!688197 res!312725) b!688186))

(assert (= (and b!688186 res!312724) b!688208))

(assert (= (and b!688208 res!312719) b!688209))

(assert (= (and b!688209 res!312722) b!688193))

(assert (= (and b!688193 res!312726) b!688178))

(assert (= (and b!688178 res!312721) b!688190))

(assert (= (and b!688190 res!312718) b!688192))

(assert (= (and b!688202 condMapEmpty!2937) mapIsEmpty!2938))

(assert (= (and b!688202 (not condMapEmpty!2937)) mapNonEmpty!2936))

(assert (= b!688194 b!688202))

(assert (= b!688188 b!688194))

(assert (= b!688181 b!688188))

(assert (= (and b!688199 ((_ is LongMap!734) (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))) b!688181))

(assert (= b!688177 b!688199))

(assert (= (and b!688184 ((_ is HashMap!706) (cache!1093 cacheFindLongestMatch!59))) b!688177))

(assert (= b!688184 b!688207))

(assert (= start!65826 b!688184))

(assert (= start!65826 b!688200))

(assert (= (and b!688206 condMapEmpty!2938) mapIsEmpty!2937))

(assert (= (and b!688206 (not condMapEmpty!2938)) mapNonEmpty!2937))

(assert (= b!688179 b!688206))

(assert (= b!688182 b!688179))

(assert (= b!688191 b!688182))

(assert (= (and b!688175 ((_ is LongMap!733) (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))) b!688191))

(assert (= b!688183 b!688175))

(assert (= (and b!688189 ((_ is HashMap!705) (cache!1092 cacheUp!457))) b!688183))

(assert (= start!65826 b!688189))

(assert (= (and b!688203 condMapEmpty!2936) mapIsEmpty!2936))

(assert (= (and b!688203 (not condMapEmpty!2936)) mapNonEmpty!2938))

(assert (= b!688198 b!688203))

(assert (= b!688195 b!688198))

(assert (= b!688176 b!688195))

(assert (= (and b!688185 ((_ is LongMap!735) (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))) b!688176))

(assert (= b!688201 b!688185))

(assert (= (and b!688187 ((_ is HashMap!707) (cache!1094 cacheDown!470))) b!688201))

(assert (= start!65826 b!688187))

(assert (= b!688204 b!688180))

(assert (= b!688196 b!688204))

(assert (= (and start!65826 ((_ is Cons!7372) rules!1357)) b!688196))

(declare-fun m!944763 () Bool)

(assert (=> mapNonEmpty!2937 m!944763))

(declare-fun m!944765 () Bool)

(assert (=> b!688179 m!944765))

(declare-fun m!944767 () Bool)

(assert (=> b!688179 m!944767))

(declare-fun m!944769 () Bool)

(assert (=> b!688197 m!944769))

(declare-fun m!944771 () Bool)

(assert (=> b!688207 m!944771))

(declare-fun m!944773 () Bool)

(assert (=> b!688178 m!944773))

(declare-fun m!944775 () Bool)

(assert (=> b!688178 m!944775))

(declare-fun m!944777 () Bool)

(assert (=> b!688178 m!944777))

(declare-fun m!944779 () Bool)

(assert (=> b!688208 m!944779))

(declare-fun m!944781 () Bool)

(assert (=> start!65826 m!944781))

(declare-fun m!944783 () Bool)

(assert (=> start!65826 m!944783))

(declare-fun m!944785 () Bool)

(assert (=> start!65826 m!944785))

(declare-fun m!944787 () Bool)

(assert (=> start!65826 m!944787))

(declare-fun m!944789 () Bool)

(assert (=> mapNonEmpty!2936 m!944789))

(declare-fun m!944791 () Bool)

(assert (=> b!688190 m!944791))

(declare-fun m!944793 () Bool)

(assert (=> b!688190 m!944793))

(declare-fun m!944795 () Bool)

(assert (=> b!688190 m!944795))

(declare-fun m!944797 () Bool)

(assert (=> b!688200 m!944797))

(declare-fun m!944799 () Bool)

(assert (=> b!688184 m!944799))

(declare-fun m!944801 () Bool)

(assert (=> b!688192 m!944801))

(assert (=> b!688192 m!944801))

(declare-fun m!944803 () Bool)

(assert (=> b!688192 m!944803))

(declare-fun m!944805 () Bool)

(assert (=> b!688204 m!944805))

(declare-fun m!944807 () Bool)

(assert (=> b!688204 m!944807))

(declare-fun m!944809 () Bool)

(assert (=> b!688209 m!944809))

(declare-fun m!944811 () Bool)

(assert (=> b!688186 m!944811))

(declare-fun m!944813 () Bool)

(assert (=> b!688205 m!944813))

(declare-fun m!944815 () Bool)

(assert (=> b!688194 m!944815))

(declare-fun m!944817 () Bool)

(assert (=> b!688194 m!944817))

(declare-fun m!944819 () Bool)

(assert (=> b!688198 m!944819))

(declare-fun m!944821 () Bool)

(assert (=> b!688198 m!944821))

(declare-fun m!944823 () Bool)

(assert (=> mapNonEmpty!2938 m!944823))

(check-sat (not b!688184) (not b_next!19431) (not mapNonEmpty!2936) b_and!63157 (not b!688198) (not b!688194) (not mapNonEmpty!2938) (not b!688178) (not b!688206) (not b!688190) (not b!688209) (not b!688200) (not b_next!19421) (not b!688186) b_and!63159 b_and!63153 (not b_next!19429) (not b!688205) (not b_next!19417) (not b!688197) b_and!63151 (not b!688179) (not b!688207) (not b_next!19427) (not b!688192) (not b!688196) (not b_next!19423) (not mapNonEmpty!2937) b_and!63147 (not b!688202) (not b!688203) (not b_next!19419) b_and!63155 (not start!65826) (not b!688204) b_and!63161 (not b_next!19425) (not b!688208) b_and!63149)
(check-sat (not b_next!19431) (not b_next!19421) b_and!63157 b_and!63159 (not b_next!19417) b_and!63151 (not b_next!19427) (not b_next!19423) b_and!63155 b_and!63149 b_and!63153 (not b_next!19429) b_and!63147 (not b_next!19419) b_and!63161 (not b_next!19425))
(get-model)

(declare-fun d!231940 () Bool)

(declare-fun c!121360 () Bool)

(assert (=> d!231940 (= c!121360 ((_ is Node!2613) (c!121356 input!756)))))

(declare-fun e!432424 () Bool)

(assert (=> d!231940 (= (inv!9471 (c!121356 input!756)) e!432424)))

(declare-fun b!688216 () Bool)

(declare-fun inv!9476 (Conc!2613) Bool)

(assert (=> b!688216 (= e!432424 (inv!9476 (c!121356 input!756)))))

(declare-fun b!688217 () Bool)

(declare-fun e!432425 () Bool)

(assert (=> b!688217 (= e!432424 e!432425)))

(declare-fun res!312729 () Bool)

(assert (=> b!688217 (= res!312729 (not ((_ is Leaf!3877) (c!121356 input!756))))))

(assert (=> b!688217 (=> res!312729 e!432425)))

(declare-fun b!688218 () Bool)

(declare-fun inv!9477 (Conc!2613) Bool)

(assert (=> b!688218 (= e!432425 (inv!9477 (c!121356 input!756)))))

(assert (= (and d!231940 c!121360) b!688216))

(assert (= (and d!231940 (not c!121360)) b!688217))

(assert (= (and b!688217 (not res!312729)) b!688218))

(declare-fun m!944825 () Bool)

(assert (=> b!688216 m!944825))

(declare-fun m!944827 () Bool)

(assert (=> b!688218 m!944827))

(assert (=> b!688200 d!231940))

(declare-fun d!231942 () Bool)

(declare-fun list!3110 (Conc!2614) List!7385)

(assert (=> d!231942 (= (list!3109 (_1!4261 lt!284145)) (list!3110 (c!121357 (_1!4261 lt!284145))))))

(declare-fun bs!135881 () Bool)

(assert (= bs!135881 d!231942))

(declare-fun m!944829 () Bool)

(assert (=> bs!135881 m!944829))

(assert (=> b!688190 d!231942))

(declare-fun d!231944 () Bool)

(assert (=> d!231944 (= (list!3109 (BalanceConc!5241 Empty!2614)) (list!3110 (c!121357 (BalanceConc!5241 Empty!2614))))))

(declare-fun bs!135882 () Bool)

(assert (= bs!135882 d!231944))

(declare-fun m!944831 () Bool)

(assert (=> bs!135882 m!944831))

(assert (=> b!688190 d!231944))

(declare-fun lt!284156 () tuple2!7728)

(declare-fun e!432434 () Bool)

(declare-fun b!688233 () Bool)

(declare-datatypes ((tuple2!7730 0))(
  ( (tuple2!7731 (_1!4262 List!7385) (_2!4262 List!7382)) )
))
(declare-fun lexList!320 (LexerInterface!1299 List!7386 List!7382) tuple2!7730)

(assert (=> b!688233 (= e!432434 (= (list!3108 (_2!4261 lt!284156)) (_2!4262 (lexList!320 thiss!12183 rules!1357 (list!3108 (BalanceConc!5239 Empty!2613))))))))

(declare-fun d!231946 () Bool)

(assert (=> d!231946 e!432434))

(declare-fun res!312737 () Bool)

(assert (=> d!231946 (=> (not res!312737) (not e!432434))))

(declare-fun e!432437 () Bool)

(assert (=> d!231946 (= res!312737 e!432437)))

(declare-fun c!121367 () Bool)

(declare-fun size!6050 (BalanceConc!5240) Int)

(assert (=> d!231946 (= c!121367 (> (size!6050 (_1!4261 lt!284156)) 0))))

(declare-fun e!432436 () tuple2!7728)

(assert (=> d!231946 (= lt!284156 e!432436)))

(declare-fun c!121366 () Bool)

(declare-datatypes ((tuple2!7732 0))(
  ( (tuple2!7733 (_1!4263 Token!2680) (_2!4263 BalanceConc!5238)) )
))
(declare-datatypes ((Option!1702 0))(
  ( (None!1701) (Some!1701 (v!17584 tuple2!7732)) )
))
(declare-fun lt!284154 () Option!1702)

(assert (=> d!231946 (= c!121366 ((_ is Some!1701) lt!284154))))

(declare-fun maxPrefixZipperSequence!454 (LexerInterface!1299 List!7386 BalanceConc!5238) Option!1702)

(assert (=> d!231946 (= lt!284154 (maxPrefixZipperSequence!454 thiss!12183 rules!1357 (BalanceConc!5239 Empty!2613)))))

(assert (=> d!231946 (= (lexRec!151 thiss!12183 rules!1357 (BalanceConc!5239 Empty!2613)) lt!284156)))

(declare-fun b!688234 () Bool)

(assert (=> b!688234 (= e!432436 (tuple2!7729 (BalanceConc!5241 Empty!2614) (BalanceConc!5239 Empty!2613)))))

(declare-fun b!688235 () Bool)

(declare-fun e!432435 () Bool)

(declare-fun isEmpty!4846 (BalanceConc!5240) Bool)

(assert (=> b!688235 (= e!432435 (not (isEmpty!4846 (_1!4261 lt!284156))))))

(declare-fun b!688236 () Bool)

(assert (=> b!688236 (= e!432437 e!432435)))

(declare-fun res!312738 () Bool)

(declare-fun size!6051 (BalanceConc!5238) Int)

(assert (=> b!688236 (= res!312738 (< (size!6051 (_2!4261 lt!284156)) (size!6051 (BalanceConc!5239 Empty!2613))))))

(assert (=> b!688236 (=> (not res!312738) (not e!432435))))

(declare-fun b!688237 () Bool)

(declare-fun res!312736 () Bool)

(assert (=> b!688237 (=> (not res!312736) (not e!432434))))

(assert (=> b!688237 (= res!312736 (= (list!3109 (_1!4261 lt!284156)) (_1!4262 (lexList!320 thiss!12183 rules!1357 (list!3108 (BalanceConc!5239 Empty!2613))))))))

(declare-fun b!688238 () Bool)

(declare-fun lt!284155 () tuple2!7728)

(declare-fun prepend!253 (BalanceConc!5240 Token!2680) BalanceConc!5240)

(assert (=> b!688238 (= e!432436 (tuple2!7729 (prepend!253 (_1!4261 lt!284155) (_1!4263 (v!17584 lt!284154))) (_2!4261 lt!284155)))))

(assert (=> b!688238 (= lt!284155 (lexRec!151 thiss!12183 rules!1357 (_2!4263 (v!17584 lt!284154))))))

(declare-fun b!688239 () Bool)

(assert (=> b!688239 (= e!432437 (= (list!3108 (_2!4261 lt!284156)) (list!3108 (BalanceConc!5239 Empty!2613))))))

(assert (= (and d!231946 c!121366) b!688238))

(assert (= (and d!231946 (not c!121366)) b!688234))

(assert (= (and d!231946 c!121367) b!688236))

(assert (= (and d!231946 (not c!121367)) b!688239))

(assert (= (and b!688236 res!312738) b!688235))

(assert (= (and d!231946 res!312737) b!688237))

(assert (= (and b!688237 res!312736) b!688233))

(declare-fun m!944833 () Bool)

(assert (=> b!688235 m!944833))

(declare-fun m!944835 () Bool)

(assert (=> b!688236 m!944835))

(declare-fun m!944837 () Bool)

(assert (=> b!688236 m!944837))

(declare-fun m!944839 () Bool)

(assert (=> b!688238 m!944839))

(declare-fun m!944841 () Bool)

(assert (=> b!688238 m!944841))

(declare-fun m!944843 () Bool)

(assert (=> b!688239 m!944843))

(assert (=> b!688239 m!944777))

(assert (=> b!688233 m!944843))

(assert (=> b!688233 m!944777))

(assert (=> b!688233 m!944777))

(declare-fun m!944845 () Bool)

(assert (=> b!688233 m!944845))

(declare-fun m!944847 () Bool)

(assert (=> b!688237 m!944847))

(assert (=> b!688237 m!944777))

(assert (=> b!688237 m!944777))

(assert (=> b!688237 m!944845))

(declare-fun m!944849 () Bool)

(assert (=> d!231946 m!944849))

(declare-fun m!944851 () Bool)

(assert (=> d!231946 m!944851))

(assert (=> b!688190 d!231946))

(declare-fun d!231948 () Bool)

(declare-fun res!312741 () Bool)

(declare-fun e!432440 () Bool)

(assert (=> d!231948 (=> (not res!312741) (not e!432440))))

(declare-fun rulesValid!524 (LexerInterface!1299 List!7386) Bool)

(assert (=> d!231948 (= res!312741 (rulesValid!524 thiss!12183 rules!1357))))

(assert (=> d!231948 (= (rulesInvariant!1233 thiss!12183 rules!1357) e!432440)))

(declare-fun b!688242 () Bool)

(declare-datatypes ((List!7387 0))(
  ( (Nil!7373) (Cons!7373 (h!12774 String!9362) (t!87195 List!7387)) )
))
(declare-fun noDuplicateTag!524 (LexerInterface!1299 List!7386 List!7387) Bool)

(assert (=> b!688242 (= e!432440 (noDuplicateTag!524 thiss!12183 rules!1357 Nil!7373))))

(assert (= (and d!231948 res!312741) b!688242))

(declare-fun m!944853 () Bool)

(assert (=> d!231948 m!944853))

(declare-fun m!944855 () Bool)

(assert (=> b!688242 m!944855))

(assert (=> b!688197 d!231948))

(declare-fun d!231950 () Bool)

(declare-fun c!121368 () Bool)

(assert (=> d!231950 (= c!121368 ((_ is Node!2613) (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))))

(declare-fun e!432441 () Bool)

(assert (=> d!231950 (= (inv!9471 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) e!432441)))

(declare-fun b!688243 () Bool)

(assert (=> b!688243 (= e!432441 (inv!9476 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))))

(declare-fun b!688244 () Bool)

(declare-fun e!432442 () Bool)

(assert (=> b!688244 (= e!432441 e!432442)))

(declare-fun res!312742 () Bool)

(assert (=> b!688244 (= res!312742 (not ((_ is Leaf!3877) (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(assert (=> b!688244 (=> res!312742 e!432442)))

(declare-fun b!688245 () Bool)

(assert (=> b!688245 (= e!432442 (inv!9477 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))))

(assert (= (and d!231950 c!121368) b!688243))

(assert (= (and d!231950 (not c!121368)) b!688244))

(assert (= (and b!688244 (not res!312742)) b!688245))

(declare-fun m!944857 () Bool)

(assert (=> b!688243 m!944857))

(declare-fun m!944859 () Bool)

(assert (=> b!688245 m!944859))

(assert (=> b!688207 d!231950))

(declare-fun b!688254 () Bool)

(declare-fun e!432448 () List!7382)

(assert (=> b!688254 (= e!432448 lt!284147)))

(declare-fun b!688256 () Bool)

(declare-fun res!312748 () Bool)

(declare-fun e!432447 () Bool)

(assert (=> b!688256 (=> (not res!312748) (not e!432447))))

(declare-fun lt!284159 () List!7382)

(declare-fun size!6052 (List!7382) Int)

(assert (=> b!688256 (= res!312748 (= (size!6052 lt!284159) (+ (size!6052 lt!284142) (size!6052 lt!284147))))))

(declare-fun b!688255 () Bool)

(assert (=> b!688255 (= e!432448 (Cons!7368 (h!12769 lt!284142) (++!1935 (t!87190 lt!284142) lt!284147)))))

(declare-fun d!231952 () Bool)

(assert (=> d!231952 e!432447))

(declare-fun res!312747 () Bool)

(assert (=> d!231952 (=> (not res!312747) (not e!432447))))

(declare-fun content!1183 (List!7382) (InoxSet C!4244))

(assert (=> d!231952 (= res!312747 (= (content!1183 lt!284159) ((_ map or) (content!1183 lt!284142) (content!1183 lt!284147))))))

(assert (=> d!231952 (= lt!284159 e!432448)))

(declare-fun c!121371 () Bool)

(assert (=> d!231952 (= c!121371 ((_ is Nil!7368) lt!284142))))

(assert (=> d!231952 (= (++!1935 lt!284142 lt!284147) lt!284159)))

(declare-fun b!688257 () Bool)

(assert (=> b!688257 (= e!432447 (or (not (= lt!284147 Nil!7368)) (= lt!284159 lt!284142)))))

(assert (= (and d!231952 c!121371) b!688254))

(assert (= (and d!231952 (not c!121371)) b!688255))

(assert (= (and d!231952 res!312747) b!688256))

(assert (= (and b!688256 res!312748) b!688257))

(declare-fun m!944861 () Bool)

(assert (=> b!688256 m!944861))

(declare-fun m!944863 () Bool)

(assert (=> b!688256 m!944863))

(declare-fun m!944865 () Bool)

(assert (=> b!688256 m!944865))

(declare-fun m!944867 () Bool)

(assert (=> b!688255 m!944867))

(declare-fun m!944869 () Bool)

(assert (=> d!231952 m!944869))

(declare-fun m!944871 () Bool)

(assert (=> d!231952 m!944871))

(declare-fun m!944873 () Bool)

(assert (=> d!231952 m!944873))

(assert (=> b!688178 d!231952))

(declare-fun d!231954 () Bool)

(declare-fun list!3111 (Conc!2613) List!7382)

(assert (=> d!231954 (= (list!3108 input!756) (list!3111 (c!121356 input!756)))))

(declare-fun bs!135883 () Bool)

(assert (= bs!135883 d!231954))

(declare-fun m!944875 () Bool)

(assert (=> bs!135883 m!944875))

(assert (=> b!688178 d!231954))

(declare-fun d!231956 () Bool)

(assert (=> d!231956 (= (list!3108 (BalanceConc!5239 Empty!2613)) (list!3111 (c!121356 (BalanceConc!5239 Empty!2613))))))

(declare-fun bs!135884 () Bool)

(assert (= bs!135884 d!231956))

(declare-fun m!944877 () Bool)

(assert (=> bs!135884 m!944877))

(assert (=> b!688178 d!231956))

(declare-fun d!231958 () Bool)

(assert (=> d!231958 (= (array_inv!916 (_keys!1029 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))) (bvsge (size!6045 (_keys!1029 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!688198 d!231958))

(declare-fun d!231960 () Bool)

(assert (=> d!231960 (= (array_inv!919 (_values!1014 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))) (bvsge (size!6048 (_values!1014 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!688198 d!231960))

(declare-fun d!231962 () Bool)

(declare-fun validCacheMapDown!57 (MutableMap!707) Bool)

(assert (=> d!231962 (= (valid!621 cacheDown!470) (validCacheMapDown!57 (cache!1094 cacheDown!470)))))

(declare-fun bs!135885 () Bool)

(assert (= bs!135885 d!231962))

(declare-fun m!944879 () Bool)

(assert (=> bs!135885 m!944879))

(assert (=> b!688208 d!231962))

(declare-fun d!231964 () Bool)

(declare-fun validCacheMapFindLongestMatch!3 (MutableMap!706 BalanceConc!5238) Bool)

(assert (=> d!231964 (= (valid!622 cacheFindLongestMatch!59) (validCacheMapFindLongestMatch!3 (cache!1093 cacheFindLongestMatch!59) (totalInput!1786 cacheFindLongestMatch!59)))))

(declare-fun bs!135886 () Bool)

(assert (= bs!135886 d!231964))

(declare-fun m!944881 () Bool)

(assert (=> bs!135886 m!944881))

(assert (=> b!688209 d!231964))

(declare-fun d!231966 () Bool)

(assert (=> d!231966 (= (array_inv!916 (_keys!1027 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))) (bvsge (size!6045 (_keys!1027 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!688179 d!231966))

(declare-fun d!231968 () Bool)

(assert (=> d!231968 (= (array_inv!917 (_values!1012 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))) (bvsge (size!6046 (_values!1012 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!688179 d!231968))

(declare-fun d!231970 () Bool)

(assert (=> d!231970 (= (inv!9469 (tag!1746 (h!12773 rules!1357))) (= (mod (str.len (value!47961 (tag!1746 (h!12773 rules!1357)))) 2) 0))))

(assert (=> b!688204 d!231970))

(declare-fun d!231972 () Bool)

(declare-fun res!312751 () Bool)

(declare-fun e!432451 () Bool)

(assert (=> d!231972 (=> (not res!312751) (not e!432451))))

(declare-fun semiInverseModEq!567 (Int Int) Bool)

(assert (=> d!231972 (= res!312751 (semiInverseModEq!567 (toChars!2299 (transformation!1484 (h!12773 rules!1357))) (toValue!2440 (transformation!1484 (h!12773 rules!1357)))))))

(assert (=> d!231972 (= (inv!9472 (transformation!1484 (h!12773 rules!1357))) e!432451)))

(declare-fun b!688260 () Bool)

(declare-fun equivClasses!542 (Int Int) Bool)

(assert (=> b!688260 (= e!432451 (equivClasses!542 (toChars!2299 (transformation!1484 (h!12773 rules!1357))) (toValue!2440 (transformation!1484 (h!12773 rules!1357)))))))

(assert (= (and d!231972 res!312751) b!688260))

(declare-fun m!944883 () Bool)

(assert (=> d!231972 m!944883))

(declare-fun m!944885 () Bool)

(assert (=> b!688260 m!944885))

(assert (=> b!688204 d!231972))

(declare-fun d!231974 () Bool)

(declare-fun isBalanced!690 (Conc!2613) Bool)

(assert (=> d!231974 (= (inv!9470 (totalInput!1786 cacheFindLongestMatch!59)) (isBalanced!690 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))))

(declare-fun bs!135887 () Bool)

(assert (= bs!135887 d!231974))

(declare-fun m!944887 () Bool)

(assert (=> bs!135887 m!944887))

(assert (=> b!688184 d!231974))

(declare-fun d!231976 () Bool)

(assert (=> d!231976 (= (isEmpty!4845 rules!1357) ((_ is Nil!7372) rules!1357))))

(assert (=> b!688205 d!231976))

(declare-fun d!231978 () Bool)

(declare-fun validCacheMapUp!57 (MutableMap!705) Bool)

(assert (=> d!231978 (= (valid!620 cacheUp!457) (validCacheMapUp!57 (cache!1092 cacheUp!457)))))

(declare-fun bs!135888 () Bool)

(assert (= bs!135888 d!231978))

(declare-fun m!944889 () Bool)

(assert (=> bs!135888 m!944889))

(assert (=> b!688186 d!231978))

(declare-fun d!231980 () Bool)

(declare-fun res!312754 () Bool)

(declare-fun e!432454 () Bool)

(assert (=> d!231980 (=> (not res!312754) (not e!432454))))

(assert (=> d!231980 (= res!312754 ((_ is HashMap!706) (cache!1093 cacheFindLongestMatch!59)))))

(assert (=> d!231980 (= (inv!9473 cacheFindLongestMatch!59) e!432454)))

(declare-fun b!688263 () Bool)

(assert (=> b!688263 (= e!432454 (validCacheMapFindLongestMatch!3 (cache!1093 cacheFindLongestMatch!59) (totalInput!1786 cacheFindLongestMatch!59)))))

(assert (= (and d!231980 res!312754) b!688263))

(assert (=> b!688263 m!944881))

(assert (=> start!65826 d!231980))

(declare-fun d!231982 () Bool)

(assert (=> d!231982 (= (inv!9470 input!756) (isBalanced!690 (c!121356 input!756)))))

(declare-fun bs!135889 () Bool)

(assert (= bs!135889 d!231982))

(declare-fun m!944891 () Bool)

(assert (=> bs!135889 m!944891))

(assert (=> start!65826 d!231982))

(declare-fun d!231984 () Bool)

(declare-fun res!312757 () Bool)

(declare-fun e!432457 () Bool)

(assert (=> d!231984 (=> (not res!312757) (not e!432457))))

(assert (=> d!231984 (= res!312757 ((_ is HashMap!705) (cache!1092 cacheUp!457)))))

(assert (=> d!231984 (= (inv!9474 cacheUp!457) e!432457)))

(declare-fun b!688266 () Bool)

(assert (=> b!688266 (= e!432457 (validCacheMapUp!57 (cache!1092 cacheUp!457)))))

(assert (= (and d!231984 res!312757) b!688266))

(assert (=> b!688266 m!944889))

(assert (=> start!65826 d!231984))

(declare-fun d!231986 () Bool)

(declare-fun res!312760 () Bool)

(declare-fun e!432460 () Bool)

(assert (=> d!231986 (=> (not res!312760) (not e!432460))))

(assert (=> d!231986 (= res!312760 ((_ is HashMap!707) (cache!1094 cacheDown!470)))))

(assert (=> d!231986 (= (inv!9475 cacheDown!470) e!432460)))

(declare-fun b!688269 () Bool)

(assert (=> b!688269 (= e!432460 (validCacheMapDown!57 (cache!1094 cacheDown!470)))))

(assert (= (and d!231986 res!312760) b!688269))

(assert (=> b!688269 m!944879))

(assert (=> start!65826 d!231986))

(declare-fun d!231988 () Bool)

(assert (=> d!231988 (= (isEmpty!4844 (list!3108 (_2!4261 lt!284145))) ((_ is Nil!7368) (list!3108 (_2!4261 lt!284145))))))

(assert (=> b!688192 d!231988))

(declare-fun d!231990 () Bool)

(assert (=> d!231990 (= (list!3108 (_2!4261 lt!284145)) (list!3111 (c!121356 (_2!4261 lt!284145))))))

(declare-fun bs!135890 () Bool)

(assert (= bs!135890 d!231990))

(declare-fun m!944893 () Bool)

(assert (=> bs!135890 m!944893))

(assert (=> b!688192 d!231990))

(declare-fun d!231992 () Bool)

(assert (=> d!231992 (= (array_inv!916 (_keys!1028 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))) (bvsge (size!6045 (_keys!1028 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!688194 d!231992))

(declare-fun d!231994 () Bool)

(assert (=> d!231994 (= (array_inv!918 (_values!1013 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))) (bvsge (size!6047 (_values!1013 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!688194 d!231994))

(declare-fun b!688278 () Bool)

(declare-fun tp!205705 () Bool)

(declare-fun tp!205704 () Bool)

(declare-fun e!432466 () Bool)

(assert (=> b!688278 (= e!432466 (and (inv!9471 (left!5950 (c!121356 input!756))) tp!205704 (inv!9471 (right!6280 (c!121356 input!756))) tp!205705))))

(declare-fun b!688280 () Bool)

(declare-fun e!432465 () Bool)

(declare-fun tp!205703 () Bool)

(assert (=> b!688280 (= e!432465 tp!205703)))

(declare-fun b!688279 () Bool)

(declare-fun inv!9478 (IArray!5227) Bool)

(assert (=> b!688279 (= e!432466 (and (inv!9478 (xs!5262 (c!121356 input!756))) e!432465))))

(assert (=> b!688200 (= tp!205672 (and (inv!9471 (c!121356 input!756)) e!432466))))

(assert (= (and b!688200 ((_ is Node!2613) (c!121356 input!756))) b!688278))

(assert (= b!688279 b!688280))

(assert (= (and b!688200 ((_ is Leaf!3877) (c!121356 input!756))) b!688279))

(declare-fun m!944895 () Bool)

(assert (=> b!688278 m!944895))

(declare-fun m!944897 () Bool)

(assert (=> b!688278 m!944897))

(declare-fun m!944899 () Bool)

(assert (=> b!688279 m!944899))

(assert (=> b!688200 m!944797))

(declare-fun e!432468 () Bool)

(declare-fun tp!205708 () Bool)

(declare-fun b!688281 () Bool)

(declare-fun tp!205707 () Bool)

(assert (=> b!688281 (= e!432468 (and (inv!9471 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) tp!205707 (inv!9471 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) tp!205708))))

(declare-fun b!688283 () Bool)

(declare-fun e!432467 () Bool)

(declare-fun tp!205706 () Bool)

(assert (=> b!688283 (= e!432467 tp!205706)))

(declare-fun b!688282 () Bool)

(assert (=> b!688282 (= e!432468 (and (inv!9478 (xs!5262 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) e!432467))))

(assert (=> b!688207 (= tp!205690 (and (inv!9471 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) e!432468))))

(assert (= (and b!688207 ((_ is Node!2613) (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) b!688281))

(assert (= b!688282 b!688283))

(assert (= (and b!688207 ((_ is Leaf!3877) (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) b!688282))

(declare-fun m!944901 () Bool)

(assert (=> b!688281 m!944901))

(declare-fun m!944903 () Bool)

(assert (=> b!688281 m!944903))

(declare-fun m!944905 () Bool)

(assert (=> b!688282 m!944905))

(assert (=> b!688207 m!944771))

(declare-fun setElem!3531 () Context!462)

(declare-fun setNonEmpty!3531 () Bool)

(declare-fun setRes!3531 () Bool)

(declare-fun tp!205721 () Bool)

(declare-fun e!432477 () Bool)

(declare-fun inv!9479 (Context!462) Bool)

(assert (=> setNonEmpty!3531 (= setRes!3531 (and tp!205721 (inv!9479 setElem!3531) e!432477))))

(declare-fun setRest!3531 () (InoxSet Context!462))

(assert (=> setNonEmpty!3531 (= (_2!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3531 true) setRest!3531))))

(declare-fun e!432476 () Bool)

(declare-fun tp!205719 () Bool)

(declare-fun b!688292 () Bool)

(declare-fun tp_is_empty!3639 () Bool)

(declare-fun tp!205720 () Bool)

(declare-fun e!432475 () Bool)

(assert (=> b!688292 (= e!432476 (and tp!205720 (inv!9479 (_2!4259 (_1!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))))) e!432475 tp_is_empty!3639 setRes!3531 tp!205719))))

(declare-fun condSetEmpty!3531 () Bool)

(assert (=> b!688292 (= condSetEmpty!3531 (= (_2!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688293 () Bool)

(declare-fun tp!205722 () Bool)

(assert (=> b!688293 (= e!432475 tp!205722)))

(declare-fun b!688294 () Bool)

(declare-fun tp!205723 () Bool)

(assert (=> b!688294 (= e!432477 tp!205723)))

(declare-fun setIsEmpty!3531 () Bool)

(assert (=> setIsEmpty!3531 setRes!3531))

(assert (=> b!688198 (= tp!205688 e!432476)))

(assert (= b!688292 b!688293))

(assert (= (and b!688292 condSetEmpty!3531) setIsEmpty!3531))

(assert (= (and b!688292 (not condSetEmpty!3531)) setNonEmpty!3531))

(assert (= setNonEmpty!3531 b!688294))

(assert (= (and b!688198 ((_ is Cons!7369) (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))) b!688292))

(declare-fun m!944907 () Bool)

(assert (=> setNonEmpty!3531 m!944907))

(declare-fun m!944909 () Bool)

(assert (=> b!688292 m!944909))

(declare-fun tp!205726 () Bool)

(declare-fun setNonEmpty!3532 () Bool)

(declare-fun setElem!3532 () Context!462)

(declare-fun e!432480 () Bool)

(declare-fun setRes!3532 () Bool)

(assert (=> setNonEmpty!3532 (= setRes!3532 (and tp!205726 (inv!9479 setElem!3532) e!432480))))

(declare-fun setRest!3532 () (InoxSet Context!462))

(assert (=> setNonEmpty!3532 (= (_2!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3532 true) setRest!3532))))

(declare-fun b!688295 () Bool)

(declare-fun e!432478 () Bool)

(declare-fun tp!205724 () Bool)

(declare-fun tp!205725 () Bool)

(declare-fun e!432479 () Bool)

(assert (=> b!688295 (= e!432479 (and tp!205725 (inv!9479 (_2!4259 (_1!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))))) e!432478 tp_is_empty!3639 setRes!3532 tp!205724))))

(declare-fun condSetEmpty!3532 () Bool)

(assert (=> b!688295 (= condSetEmpty!3532 (= (_2!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688296 () Bool)

(declare-fun tp!205727 () Bool)

(assert (=> b!688296 (= e!432478 tp!205727)))

(declare-fun b!688297 () Bool)

(declare-fun tp!205728 () Bool)

(assert (=> b!688297 (= e!432480 tp!205728)))

(declare-fun setIsEmpty!3532 () Bool)

(assert (=> setIsEmpty!3532 setRes!3532))

(assert (=> b!688198 (= tp!205675 e!432479)))

(assert (= b!688295 b!688296))

(assert (= (and b!688295 condSetEmpty!3532) setIsEmpty!3532))

(assert (= (and b!688295 (not condSetEmpty!3532)) setNonEmpty!3532))

(assert (= setNonEmpty!3532 b!688297))

(assert (= (and b!688198 ((_ is Cons!7369) (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))) b!688295))

(declare-fun m!944911 () Bool)

(assert (=> setNonEmpty!3532 m!944911))

(declare-fun m!944913 () Bool)

(assert (=> b!688295 m!944913))

(declare-fun b!688312 () Bool)

(declare-fun e!432497 () Bool)

(declare-fun tp!205760 () Bool)

(assert (=> b!688312 (= e!432497 tp!205760)))

(declare-fun mapNonEmpty!2941 () Bool)

(declare-fun mapRes!2941 () Bool)

(declare-fun tp!205755 () Bool)

(declare-fun e!432496 () Bool)

(assert (=> mapNonEmpty!2941 (= mapRes!2941 (and tp!205755 e!432496))))

(declare-fun mapKey!2941 () (_ BitVec 32))

(declare-fun mapRest!2941 () (Array (_ BitVec 32) List!7383))

(declare-fun mapValue!2941 () List!7383)

(assert (=> mapNonEmpty!2941 (= mapRest!2936 (store mapRest!2941 mapKey!2941 mapValue!2941))))

(declare-fun tp!205761 () Bool)

(declare-fun setRes!3538 () Bool)

(declare-fun mapDefault!2941 () List!7383)

(declare-fun e!432494 () Bool)

(declare-fun e!432495 () Bool)

(declare-fun b!688313 () Bool)

(declare-fun tp!205757 () Bool)

(assert (=> b!688313 (= e!432494 (and tp!205761 (inv!9479 (_2!4259 (_1!4260 (h!12770 mapDefault!2941)))) e!432495 tp_is_empty!3639 setRes!3538 tp!205757))))

(declare-fun condSetEmpty!3538 () Bool)

(assert (=> b!688313 (= condSetEmpty!3538 (= (_2!4260 (h!12770 mapDefault!2941)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688314 () Bool)

(declare-fun e!432498 () Bool)

(declare-fun tp!205759 () Bool)

(assert (=> b!688314 (= e!432498 tp!205759)))

(declare-fun tp!205758 () Bool)

(declare-fun setNonEmpty!3537 () Bool)

(declare-fun setElem!3537 () Context!462)

(assert (=> setNonEmpty!3537 (= setRes!3538 (and tp!205758 (inv!9479 setElem!3537) e!432497))))

(declare-fun setRest!3538 () (InoxSet Context!462))

(assert (=> setNonEmpty!3537 (= (_2!4260 (h!12770 mapDefault!2941)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3537 true) setRest!3538))))

(declare-fun setRes!3537 () Bool)

(declare-fun tp!205752 () Bool)

(declare-fun b!688315 () Bool)

(declare-fun tp!205751 () Bool)

(assert (=> b!688315 (= e!432496 (and tp!205752 (inv!9479 (_2!4259 (_1!4260 (h!12770 mapValue!2941)))) e!432498 tp_is_empty!3639 setRes!3537 tp!205751))))

(declare-fun condSetEmpty!3537 () Bool)

(assert (=> b!688315 (= condSetEmpty!3537 (= (_2!4260 (h!12770 mapValue!2941)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3537 () Bool)

(assert (=> setIsEmpty!3537 setRes!3537))

(declare-fun b!688316 () Bool)

(declare-fun tp!205756 () Bool)

(assert (=> b!688316 (= e!432495 tp!205756)))

(declare-fun mapIsEmpty!2941 () Bool)

(assert (=> mapIsEmpty!2941 mapRes!2941))

(declare-fun setIsEmpty!3538 () Bool)

(assert (=> setIsEmpty!3538 setRes!3538))

(declare-fun b!688317 () Bool)

(declare-fun e!432493 () Bool)

(declare-fun tp!205753 () Bool)

(assert (=> b!688317 (= e!432493 tp!205753)))

(declare-fun setNonEmpty!3538 () Bool)

(declare-fun setElem!3538 () Context!462)

(declare-fun tp!205754 () Bool)

(assert (=> setNonEmpty!3538 (= setRes!3537 (and tp!205754 (inv!9479 setElem!3538) e!432493))))

(declare-fun setRest!3537 () (InoxSet Context!462))

(assert (=> setNonEmpty!3538 (= (_2!4260 (h!12770 mapValue!2941)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3538 true) setRest!3537))))

(declare-fun condMapEmpty!2941 () Bool)

(assert (=> mapNonEmpty!2938 (= condMapEmpty!2941 (= mapRest!2936 ((as const (Array (_ BitVec 32) List!7383)) mapDefault!2941)))))

(assert (=> mapNonEmpty!2938 (= tp!205682 (and e!432494 mapRes!2941))))

(assert (= (and mapNonEmpty!2938 condMapEmpty!2941) mapIsEmpty!2941))

(assert (= (and mapNonEmpty!2938 (not condMapEmpty!2941)) mapNonEmpty!2941))

(assert (= b!688315 b!688314))

(assert (= (and b!688315 condSetEmpty!3537) setIsEmpty!3537))

(assert (= (and b!688315 (not condSetEmpty!3537)) setNonEmpty!3538))

(assert (= setNonEmpty!3538 b!688317))

(assert (= (and mapNonEmpty!2941 ((_ is Cons!7369) mapValue!2941)) b!688315))

(assert (= b!688313 b!688316))

(assert (= (and b!688313 condSetEmpty!3538) setIsEmpty!3538))

(assert (= (and b!688313 (not condSetEmpty!3538)) setNonEmpty!3537))

(assert (= setNonEmpty!3537 b!688312))

(assert (= (and mapNonEmpty!2938 ((_ is Cons!7369) mapDefault!2941)) b!688313))

(declare-fun m!944915 () Bool)

(assert (=> b!688315 m!944915))

(declare-fun m!944917 () Bool)

(assert (=> mapNonEmpty!2941 m!944917))

(declare-fun m!944919 () Bool)

(assert (=> setNonEmpty!3537 m!944919))

(declare-fun m!944921 () Bool)

(assert (=> setNonEmpty!3538 m!944921))

(declare-fun m!944923 () Bool)

(assert (=> b!688313 m!944923))

(declare-fun setNonEmpty!3539 () Bool)

(declare-fun setRes!3539 () Bool)

(declare-fun e!432501 () Bool)

(declare-fun setElem!3539 () Context!462)

(declare-fun tp!205764 () Bool)

(assert (=> setNonEmpty!3539 (= setRes!3539 (and tp!205764 (inv!9479 setElem!3539) e!432501))))

(declare-fun setRest!3539 () (InoxSet Context!462))

(assert (=> setNonEmpty!3539 (= (_2!4260 (h!12770 mapValue!2936)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3539 true) setRest!3539))))

(declare-fun e!432500 () Bool)

(declare-fun b!688318 () Bool)

(declare-fun tp!205763 () Bool)

(declare-fun e!432499 () Bool)

(declare-fun tp!205762 () Bool)

(assert (=> b!688318 (= e!432500 (and tp!205763 (inv!9479 (_2!4259 (_1!4260 (h!12770 mapValue!2936)))) e!432499 tp_is_empty!3639 setRes!3539 tp!205762))))

(declare-fun condSetEmpty!3539 () Bool)

(assert (=> b!688318 (= condSetEmpty!3539 (= (_2!4260 (h!12770 mapValue!2936)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688319 () Bool)

(declare-fun tp!205765 () Bool)

(assert (=> b!688319 (= e!432499 tp!205765)))

(declare-fun b!688320 () Bool)

(declare-fun tp!205766 () Bool)

(assert (=> b!688320 (= e!432501 tp!205766)))

(declare-fun setIsEmpty!3539 () Bool)

(assert (=> setIsEmpty!3539 setRes!3539))

(assert (=> mapNonEmpty!2938 (= tp!205676 e!432500)))

(assert (= b!688318 b!688319))

(assert (= (and b!688318 condSetEmpty!3539) setIsEmpty!3539))

(assert (= (and b!688318 (not condSetEmpty!3539)) setNonEmpty!3539))

(assert (= setNonEmpty!3539 b!688320))

(assert (= (and mapNonEmpty!2938 ((_ is Cons!7369) mapValue!2936)) b!688318))

(declare-fun m!944925 () Bool)

(assert (=> setNonEmpty!3539 m!944925))

(declare-fun m!944927 () Bool)

(assert (=> b!688318 m!944927))

(declare-fun setIsEmpty!3542 () Bool)

(declare-fun setRes!3542 () Bool)

(assert (=> setIsEmpty!3542 setRes!3542))

(declare-fun b!688329 () Bool)

(declare-fun e!432509 () Bool)

(declare-fun tp!205776 () Bool)

(assert (=> b!688329 (= e!432509 tp!205776)))

(declare-fun e!432510 () Bool)

(declare-fun tp!205775 () Bool)

(declare-fun e!432508 () Bool)

(declare-fun b!688330 () Bool)

(assert (=> b!688330 (= e!432508 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))))) e!432510 tp_is_empty!3639 setRes!3542 tp!205775))))

(declare-fun condSetEmpty!3542 () Bool)

(assert (=> b!688330 (= condSetEmpty!3542 (= (_2!4256 (h!12767 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))) ((as const (Array Context!462 Bool)) false)))))

(assert (=> b!688179 (= tp!205693 e!432508)))

(declare-fun b!688331 () Bool)

(declare-fun tp!205778 () Bool)

(assert (=> b!688331 (= e!432510 tp!205778)))

(declare-fun setNonEmpty!3542 () Bool)

(declare-fun setElem!3542 () Context!462)

(declare-fun tp!205777 () Bool)

(assert (=> setNonEmpty!3542 (= setRes!3542 (and tp!205777 (inv!9479 setElem!3542) e!432509))))

(declare-fun setRest!3542 () (InoxSet Context!462))

(assert (=> setNonEmpty!3542 (= (_2!4256 (h!12767 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3542 true) setRest!3542))))

(assert (= b!688330 b!688331))

(assert (= (and b!688330 condSetEmpty!3542) setIsEmpty!3542))

(assert (= (and b!688330 (not condSetEmpty!3542)) setNonEmpty!3542))

(assert (= setNonEmpty!3542 b!688329))

(assert (= (and b!688179 ((_ is Cons!7366) (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))) b!688330))

(declare-fun m!944929 () Bool)

(assert (=> b!688330 m!944929))

(declare-fun m!944931 () Bool)

(assert (=> setNonEmpty!3542 m!944931))

(declare-fun setIsEmpty!3543 () Bool)

(declare-fun setRes!3543 () Bool)

(assert (=> setIsEmpty!3543 setRes!3543))

(declare-fun b!688332 () Bool)

(declare-fun e!432512 () Bool)

(declare-fun tp!205780 () Bool)

(assert (=> b!688332 (= e!432512 tp!205780)))

(declare-fun e!432513 () Bool)

(declare-fun tp!205779 () Bool)

(declare-fun b!688333 () Bool)

(declare-fun e!432511 () Bool)

(assert (=> b!688333 (= e!432511 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))))) e!432513 tp_is_empty!3639 setRes!3543 tp!205779))))

(declare-fun condSetEmpty!3543 () Bool)

(assert (=> b!688333 (= condSetEmpty!3543 (= (_2!4256 (h!12767 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))) ((as const (Array Context!462 Bool)) false)))))

(assert (=> b!688179 (= tp!205673 e!432511)))

(declare-fun b!688334 () Bool)

(declare-fun tp!205782 () Bool)

(assert (=> b!688334 (= e!432513 tp!205782)))

(declare-fun tp!205781 () Bool)

(declare-fun setNonEmpty!3543 () Bool)

(declare-fun setElem!3543 () Context!462)

(assert (=> setNonEmpty!3543 (= setRes!3543 (and tp!205781 (inv!9479 setElem!3543) e!432512))))

(declare-fun setRest!3543 () (InoxSet Context!462))

(assert (=> setNonEmpty!3543 (= (_2!4256 (h!12767 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3543 true) setRest!3543))))

(assert (= b!688333 b!688334))

(assert (= (and b!688333 condSetEmpty!3543) setIsEmpty!3543))

(assert (= (and b!688333 (not condSetEmpty!3543)) setNonEmpty!3543))

(assert (= setNonEmpty!3543 b!688332))

(assert (= (and b!688179 ((_ is Cons!7366) (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))) b!688333))

(declare-fun m!944933 () Bool)

(assert (=> b!688333 m!944933))

(declare-fun m!944935 () Bool)

(assert (=> setNonEmpty!3543 m!944935))

(declare-fun b!688348 () Bool)

(declare-fun e!432516 () Bool)

(declare-fun tp!205793 () Bool)

(declare-fun tp!205794 () Bool)

(assert (=> b!688348 (= e!432516 (and tp!205793 tp!205794))))

(declare-fun b!688346 () Bool)

(declare-fun tp!205796 () Bool)

(declare-fun tp!205797 () Bool)

(assert (=> b!688346 (= e!432516 (and tp!205796 tp!205797))))

(assert (=> b!688204 (= tp!205677 e!432516)))

(declare-fun b!688347 () Bool)

(declare-fun tp!205795 () Bool)

(assert (=> b!688347 (= e!432516 tp!205795)))

(declare-fun b!688345 () Bool)

(assert (=> b!688345 (= e!432516 tp_is_empty!3639)))

(assert (= (and b!688204 ((_ is ElementMatch!1821) (regex!1484 (h!12773 rules!1357)))) b!688345))

(assert (= (and b!688204 ((_ is Concat!3349) (regex!1484 (h!12773 rules!1357)))) b!688346))

(assert (= (and b!688204 ((_ is Star!1821) (regex!1484 (h!12773 rules!1357)))) b!688347))

(assert (= (and b!688204 ((_ is Union!1821) (regex!1484 (h!12773 rules!1357)))) b!688348))

(declare-fun b!688359 () Bool)

(declare-fun b_free!19369 () Bool)

(declare-fun b_next!19433 () Bool)

(assert (=> b!688359 (= b_free!19369 (not b_next!19433))))

(declare-fun tp!205807 () Bool)

(declare-fun b_and!63163 () Bool)

(assert (=> b!688359 (= tp!205807 b_and!63163)))

(declare-fun b_free!19371 () Bool)

(declare-fun b_next!19435 () Bool)

(assert (=> b!688359 (= b_free!19371 (not b_next!19435))))

(declare-fun tp!205806 () Bool)

(declare-fun b_and!63165 () Bool)

(assert (=> b!688359 (= tp!205806 b_and!63165)))

(declare-fun e!432525 () Bool)

(assert (=> b!688359 (= e!432525 (and tp!205807 tp!205806))))

(declare-fun e!432528 () Bool)

(declare-fun b!688358 () Bool)

(declare-fun tp!205808 () Bool)

(assert (=> b!688358 (= e!432528 (and tp!205808 (inv!9469 (tag!1746 (h!12773 (t!87194 rules!1357)))) (inv!9472 (transformation!1484 (h!12773 (t!87194 rules!1357)))) e!432525))))

(declare-fun b!688357 () Bool)

(declare-fun e!432526 () Bool)

(declare-fun tp!205809 () Bool)

(assert (=> b!688357 (= e!432526 (and e!432528 tp!205809))))

(assert (=> b!688196 (= tp!205694 e!432526)))

(assert (= b!688358 b!688359))

(assert (= b!688357 b!688358))

(assert (= (and b!688196 ((_ is Cons!7372) (t!87194 rules!1357))) b!688357))

(declare-fun m!944937 () Bool)

(assert (=> b!688358 m!944937))

(declare-fun m!944939 () Bool)

(assert (=> b!688358 m!944939))

(declare-fun setIsEmpty!3544 () Bool)

(declare-fun setRes!3544 () Bool)

(assert (=> setIsEmpty!3544 setRes!3544))

(declare-fun b!688360 () Bool)

(declare-fun e!432530 () Bool)

(declare-fun tp!205811 () Bool)

(assert (=> b!688360 (= e!432530 tp!205811)))

(declare-fun e!432529 () Bool)

(declare-fun b!688361 () Bool)

(declare-fun e!432531 () Bool)

(declare-fun tp!205810 () Bool)

(assert (=> b!688361 (= e!432529 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 mapDefault!2937)))) e!432531 tp_is_empty!3639 setRes!3544 tp!205810))))

(declare-fun condSetEmpty!3544 () Bool)

(assert (=> b!688361 (= condSetEmpty!3544 (= (_2!4256 (h!12767 mapDefault!2937)) ((as const (Array Context!462 Bool)) false)))))

(assert (=> b!688206 (= tp!205680 e!432529)))

(declare-fun b!688362 () Bool)

(declare-fun tp!205813 () Bool)

(assert (=> b!688362 (= e!432531 tp!205813)))

(declare-fun tp!205812 () Bool)

(declare-fun setNonEmpty!3544 () Bool)

(declare-fun setElem!3544 () Context!462)

(assert (=> setNonEmpty!3544 (= setRes!3544 (and tp!205812 (inv!9479 setElem!3544) e!432530))))

(declare-fun setRest!3544 () (InoxSet Context!462))

(assert (=> setNonEmpty!3544 (= (_2!4256 (h!12767 mapDefault!2937)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3544 true) setRest!3544))))

(assert (= b!688361 b!688362))

(assert (= (and b!688361 condSetEmpty!3544) setIsEmpty!3544))

(assert (= (and b!688361 (not condSetEmpty!3544)) setNonEmpty!3544))

(assert (= setNonEmpty!3544 b!688360))

(assert (= (and b!688206 ((_ is Cons!7366) mapDefault!2937)) b!688361))

(declare-fun m!944941 () Bool)

(assert (=> b!688361 m!944941))

(declare-fun m!944943 () Bool)

(assert (=> setNonEmpty!3544 m!944943))

(declare-fun setElem!3547 () Context!462)

(declare-fun setRes!3547 () Bool)

(declare-fun setNonEmpty!3547 () Bool)

(declare-fun tp!205822 () Bool)

(declare-fun e!432536 () Bool)

(assert (=> setNonEmpty!3547 (= setRes!3547 (and tp!205822 (inv!9479 setElem!3547) e!432536))))

(declare-fun setRest!3547 () (InoxSet Context!462))

(assert (=> setNonEmpty!3547 (= (_1!4257 (_1!4258 (h!12768 mapDefault!2936))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3547 true) setRest!3547))))

(declare-fun b!688370 () Bool)

(declare-fun tp!205821 () Bool)

(assert (=> b!688370 (= e!432536 tp!205821)))

(declare-fun b!688369 () Bool)

(declare-fun e!432537 () Bool)

(declare-fun tp!205820 () Bool)

(assert (=> b!688369 (= e!432537 (and setRes!3547 tp!205820))))

(declare-fun condSetEmpty!3547 () Bool)

(assert (=> b!688369 (= condSetEmpty!3547 (= (_1!4257 (_1!4258 (h!12768 mapDefault!2936))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3547 () Bool)

(assert (=> setIsEmpty!3547 setRes!3547))

(assert (=> b!688202 (= tp!205696 e!432537)))

(assert (= (and b!688369 condSetEmpty!3547) setIsEmpty!3547))

(assert (= (and b!688369 (not condSetEmpty!3547)) setNonEmpty!3547))

(assert (= setNonEmpty!3547 b!688370))

(assert (= (and b!688202 ((_ is Cons!7367) mapDefault!2936)) b!688369))

(declare-fun m!944945 () Bool)

(assert (=> setNonEmpty!3547 m!944945))

(declare-fun b!688381 () Bool)

(declare-fun e!432546 () Bool)

(declare-fun tp!205841 () Bool)

(assert (=> b!688381 (= e!432546 tp!205841)))

(declare-fun setIsEmpty!3552 () Bool)

(declare-fun setRes!3552 () Bool)

(assert (=> setIsEmpty!3552 setRes!3552))

(declare-fun setNonEmpty!3552 () Bool)

(declare-fun setRes!3553 () Bool)

(declare-fun setElem!3552 () Context!462)

(declare-fun e!432548 () Bool)

(declare-fun tp!205838 () Bool)

(assert (=> setNonEmpty!3552 (= setRes!3553 (and tp!205838 (inv!9479 setElem!3552) e!432548))))

(declare-fun mapDefault!2944 () List!7381)

(declare-fun setRest!3552 () (InoxSet Context!462))

(assert (=> setNonEmpty!3552 (= (_1!4257 (_1!4258 (h!12768 mapDefault!2944))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3552 true) setRest!3552))))

(declare-fun b!688382 () Bool)

(declare-fun e!432549 () Bool)

(declare-fun tp!205843 () Bool)

(assert (=> b!688382 (= e!432549 (and setRes!3553 tp!205843))))

(declare-fun condSetEmpty!3552 () Bool)

(assert (=> b!688382 (= condSetEmpty!3552 (= (_1!4257 (_1!4258 (h!12768 mapDefault!2944))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688383 () Bool)

(declare-fun e!432547 () Bool)

(declare-fun tp!205839 () Bool)

(assert (=> b!688383 (= e!432547 (and setRes!3552 tp!205839))))

(declare-fun condSetEmpty!3553 () Bool)

(declare-fun mapValue!2944 () List!7381)

(assert (=> b!688383 (= condSetEmpty!3553 (= (_1!4257 (_1!4258 (h!12768 mapValue!2944))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun mapNonEmpty!2944 () Bool)

(declare-fun mapRes!2944 () Bool)

(declare-fun tp!205842 () Bool)

(assert (=> mapNonEmpty!2944 (= mapRes!2944 (and tp!205842 e!432547))))

(declare-fun mapKey!2944 () (_ BitVec 32))

(declare-fun mapRest!2944 () (Array (_ BitVec 32) List!7381))

(assert (=> mapNonEmpty!2944 (= mapRest!2938 (store mapRest!2944 mapKey!2944 mapValue!2944))))

(declare-fun b!688384 () Bool)

(declare-fun tp!205840 () Bool)

(assert (=> b!688384 (= e!432548 tp!205840)))

(declare-fun tp!205837 () Bool)

(declare-fun setElem!3553 () Context!462)

(declare-fun setNonEmpty!3553 () Bool)

(assert (=> setNonEmpty!3553 (= setRes!3552 (and tp!205837 (inv!9479 setElem!3553) e!432546))))

(declare-fun setRest!3553 () (InoxSet Context!462))

(assert (=> setNonEmpty!3553 (= (_1!4257 (_1!4258 (h!12768 mapValue!2944))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3553 true) setRest!3553))))

(declare-fun condMapEmpty!2944 () Bool)

(assert (=> mapNonEmpty!2936 (= condMapEmpty!2944 (= mapRest!2938 ((as const (Array (_ BitVec 32) List!7381)) mapDefault!2944)))))

(assert (=> mapNonEmpty!2936 (= tp!205678 (and e!432549 mapRes!2944))))

(declare-fun mapIsEmpty!2944 () Bool)

(assert (=> mapIsEmpty!2944 mapRes!2944))

(declare-fun setIsEmpty!3553 () Bool)

(assert (=> setIsEmpty!3553 setRes!3553))

(assert (= (and mapNonEmpty!2936 condMapEmpty!2944) mapIsEmpty!2944))

(assert (= (and mapNonEmpty!2936 (not condMapEmpty!2944)) mapNonEmpty!2944))

(assert (= (and b!688383 condSetEmpty!3553) setIsEmpty!3552))

(assert (= (and b!688383 (not condSetEmpty!3553)) setNonEmpty!3553))

(assert (= setNonEmpty!3553 b!688381))

(assert (= (and mapNonEmpty!2944 ((_ is Cons!7367) mapValue!2944)) b!688383))

(assert (= (and b!688382 condSetEmpty!3552) setIsEmpty!3553))

(assert (= (and b!688382 (not condSetEmpty!3552)) setNonEmpty!3552))

(assert (= setNonEmpty!3552 b!688384))

(assert (= (and mapNonEmpty!2936 ((_ is Cons!7367) mapDefault!2944)) b!688382))

(declare-fun m!944947 () Bool)

(assert (=> setNonEmpty!3552 m!944947))

(declare-fun m!944949 () Bool)

(assert (=> mapNonEmpty!2944 m!944949))

(declare-fun m!944951 () Bool)

(assert (=> setNonEmpty!3553 m!944951))

(declare-fun setElem!3554 () Context!462)

(declare-fun setRes!3554 () Bool)

(declare-fun tp!205846 () Bool)

(declare-fun e!432550 () Bool)

(declare-fun setNonEmpty!3554 () Bool)

(assert (=> setNonEmpty!3554 (= setRes!3554 (and tp!205846 (inv!9479 setElem!3554) e!432550))))

(declare-fun setRest!3554 () (InoxSet Context!462))

(assert (=> setNonEmpty!3554 (= (_1!4257 (_1!4258 (h!12768 mapValue!2938))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3554 true) setRest!3554))))

(declare-fun b!688386 () Bool)

(declare-fun tp!205845 () Bool)

(assert (=> b!688386 (= e!432550 tp!205845)))

(declare-fun b!688385 () Bool)

(declare-fun e!432551 () Bool)

(declare-fun tp!205844 () Bool)

(assert (=> b!688385 (= e!432551 (and setRes!3554 tp!205844))))

(declare-fun condSetEmpty!3554 () Bool)

(assert (=> b!688385 (= condSetEmpty!3554 (= (_1!4257 (_1!4258 (h!12768 mapValue!2938))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3554 () Bool)

(assert (=> setIsEmpty!3554 setRes!3554))

(assert (=> mapNonEmpty!2936 (= tp!205683 e!432551)))

(assert (= (and b!688385 condSetEmpty!3554) setIsEmpty!3554))

(assert (= (and b!688385 (not condSetEmpty!3554)) setNonEmpty!3554))

(assert (= setNonEmpty!3554 b!688386))

(assert (= (and mapNonEmpty!2936 ((_ is Cons!7367) mapValue!2938)) b!688385))

(declare-fun m!944953 () Bool)

(assert (=> setNonEmpty!3554 m!944953))

(declare-fun setElem!3555 () Context!462)

(declare-fun tp!205849 () Bool)

(declare-fun e!432554 () Bool)

(declare-fun setNonEmpty!3555 () Bool)

(declare-fun setRes!3555 () Bool)

(assert (=> setNonEmpty!3555 (= setRes!3555 (and tp!205849 (inv!9479 setElem!3555) e!432554))))

(declare-fun setRest!3555 () (InoxSet Context!462))

(assert (=> setNonEmpty!3555 (= (_2!4260 (h!12770 mapDefault!2938)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3555 true) setRest!3555))))

(declare-fun b!688387 () Bool)

(declare-fun tp!205848 () Bool)

(declare-fun e!432553 () Bool)

(declare-fun e!432552 () Bool)

(declare-fun tp!205847 () Bool)

(assert (=> b!688387 (= e!432553 (and tp!205848 (inv!9479 (_2!4259 (_1!4260 (h!12770 mapDefault!2938)))) e!432552 tp_is_empty!3639 setRes!3555 tp!205847))))

(declare-fun condSetEmpty!3555 () Bool)

(assert (=> b!688387 (= condSetEmpty!3555 (= (_2!4260 (h!12770 mapDefault!2938)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688388 () Bool)

(declare-fun tp!205850 () Bool)

(assert (=> b!688388 (= e!432552 tp!205850)))

(declare-fun b!688389 () Bool)

(declare-fun tp!205851 () Bool)

(assert (=> b!688389 (= e!432554 tp!205851)))

(declare-fun setIsEmpty!3555 () Bool)

(assert (=> setIsEmpty!3555 setRes!3555))

(assert (=> b!688203 (= tp!205685 e!432553)))

(assert (= b!688387 b!688388))

(assert (= (and b!688387 condSetEmpty!3555) setIsEmpty!3555))

(assert (= (and b!688387 (not condSetEmpty!3555)) setNonEmpty!3555))

(assert (= setNonEmpty!3555 b!688389))

(assert (= (and b!688203 ((_ is Cons!7369) mapDefault!2938)) b!688387))

(declare-fun m!944955 () Bool)

(assert (=> setNonEmpty!3555 m!944955))

(declare-fun m!944957 () Bool)

(assert (=> b!688387 m!944957))

(declare-fun b!688404 () Bool)

(declare-fun e!432570 () Bool)

(declare-fun tp!205874 () Bool)

(assert (=> b!688404 (= e!432570 tp!205874)))

(declare-fun setNonEmpty!3560 () Bool)

(declare-fun setElem!3561 () Context!462)

(declare-fun setRes!3560 () Bool)

(declare-fun tp!205875 () Bool)

(assert (=> setNonEmpty!3560 (= setRes!3560 (and tp!205875 (inv!9479 setElem!3561) e!432570))))

(declare-fun mapDefault!2947 () List!7380)

(declare-fun setRest!3561 () (InoxSet Context!462))

(assert (=> setNonEmpty!3560 (= (_2!4256 (h!12767 mapDefault!2947)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3561 true) setRest!3561))))

(declare-fun tp!205878 () Bool)

(declare-fun e!432572 () Bool)

(declare-fun e!432569 () Bool)

(declare-fun b!688405 () Bool)

(assert (=> b!688405 (= e!432569 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 mapDefault!2947)))) e!432572 tp_is_empty!3639 setRes!3560 tp!205878))))

(declare-fun condSetEmpty!3560 () Bool)

(assert (=> b!688405 (= condSetEmpty!3560 (= (_2!4256 (h!12767 mapDefault!2947)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun e!432568 () Bool)

(declare-fun e!432571 () Bool)

(declare-fun mapValue!2947 () List!7380)

(declare-fun tp!205877 () Bool)

(declare-fun b!688406 () Bool)

(declare-fun setRes!3561 () Bool)

(assert (=> b!688406 (= e!432568 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 mapValue!2947)))) e!432571 tp_is_empty!3639 setRes!3561 tp!205877))))

(declare-fun condSetEmpty!3561 () Bool)

(assert (=> b!688406 (= condSetEmpty!3561 (= (_2!4256 (h!12767 mapValue!2947)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688407 () Bool)

(declare-fun e!432567 () Bool)

(declare-fun tp!205872 () Bool)

(assert (=> b!688407 (= e!432567 tp!205872)))

(declare-fun mapIsEmpty!2947 () Bool)

(declare-fun mapRes!2947 () Bool)

(assert (=> mapIsEmpty!2947 mapRes!2947))

(declare-fun b!688408 () Bool)

(declare-fun tp!205873 () Bool)

(assert (=> b!688408 (= e!432571 tp!205873)))

(declare-fun setIsEmpty!3560 () Bool)

(assert (=> setIsEmpty!3560 setRes!3560))

(declare-fun condMapEmpty!2947 () Bool)

(assert (=> mapNonEmpty!2937 (= condMapEmpty!2947 (= mapRest!2937 ((as const (Array (_ BitVec 32) List!7380)) mapDefault!2947)))))

(assert (=> mapNonEmpty!2937 (= tp!205686 (and e!432569 mapRes!2947))))

(declare-fun b!688409 () Bool)

(declare-fun tp!205870 () Bool)

(assert (=> b!688409 (= e!432572 tp!205870)))

(declare-fun mapNonEmpty!2947 () Bool)

(declare-fun tp!205871 () Bool)

(assert (=> mapNonEmpty!2947 (= mapRes!2947 (and tp!205871 e!432568))))

(declare-fun mapRest!2947 () (Array (_ BitVec 32) List!7380))

(declare-fun mapKey!2947 () (_ BitVec 32))

(assert (=> mapNonEmpty!2947 (= mapRest!2937 (store mapRest!2947 mapKey!2947 mapValue!2947))))

(declare-fun setNonEmpty!3561 () Bool)

(declare-fun tp!205876 () Bool)

(declare-fun setElem!3560 () Context!462)

(assert (=> setNonEmpty!3561 (= setRes!3561 (and tp!205876 (inv!9479 setElem!3560) e!432567))))

(declare-fun setRest!3560 () (InoxSet Context!462))

(assert (=> setNonEmpty!3561 (= (_2!4256 (h!12767 mapValue!2947)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3560 true) setRest!3560))))

(declare-fun setIsEmpty!3561 () Bool)

(assert (=> setIsEmpty!3561 setRes!3561))

(assert (= (and mapNonEmpty!2937 condMapEmpty!2947) mapIsEmpty!2947))

(assert (= (and mapNonEmpty!2937 (not condMapEmpty!2947)) mapNonEmpty!2947))

(assert (= b!688406 b!688408))

(assert (= (and b!688406 condSetEmpty!3561) setIsEmpty!3561))

(assert (= (and b!688406 (not condSetEmpty!3561)) setNonEmpty!3561))

(assert (= setNonEmpty!3561 b!688407))

(assert (= (and mapNonEmpty!2947 ((_ is Cons!7366) mapValue!2947)) b!688406))

(assert (= b!688405 b!688409))

(assert (= (and b!688405 condSetEmpty!3560) setIsEmpty!3560))

(assert (= (and b!688405 (not condSetEmpty!3560)) setNonEmpty!3560))

(assert (= setNonEmpty!3560 b!688404))

(assert (= (and mapNonEmpty!2937 ((_ is Cons!7366) mapDefault!2947)) b!688405))

(declare-fun m!944959 () Bool)

(assert (=> setNonEmpty!3561 m!944959))

(declare-fun m!944961 () Bool)

(assert (=> b!688405 m!944961))

(declare-fun m!944963 () Bool)

(assert (=> setNonEmpty!3560 m!944963))

(declare-fun m!944965 () Bool)

(assert (=> b!688406 m!944965))

(declare-fun m!944967 () Bool)

(assert (=> mapNonEmpty!2947 m!944967))

(declare-fun setIsEmpty!3562 () Bool)

(declare-fun setRes!3562 () Bool)

(assert (=> setIsEmpty!3562 setRes!3562))

(declare-fun b!688410 () Bool)

(declare-fun e!432574 () Bool)

(declare-fun tp!205880 () Bool)

(assert (=> b!688410 (= e!432574 tp!205880)))

(declare-fun tp!205879 () Bool)

(declare-fun b!688411 () Bool)

(declare-fun e!432573 () Bool)

(declare-fun e!432575 () Bool)

(assert (=> b!688411 (= e!432573 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 mapValue!2937)))) e!432575 tp_is_empty!3639 setRes!3562 tp!205879))))

(declare-fun condSetEmpty!3562 () Bool)

(assert (=> b!688411 (= condSetEmpty!3562 (= (_2!4256 (h!12767 mapValue!2937)) ((as const (Array Context!462 Bool)) false)))))

(assert (=> mapNonEmpty!2937 (= tp!205679 e!432573)))

(declare-fun b!688412 () Bool)

(declare-fun tp!205882 () Bool)

(assert (=> b!688412 (= e!432575 tp!205882)))

(declare-fun setNonEmpty!3562 () Bool)

(declare-fun setElem!3562 () Context!462)

(declare-fun tp!205881 () Bool)

(assert (=> setNonEmpty!3562 (= setRes!3562 (and tp!205881 (inv!9479 setElem!3562) e!432574))))

(declare-fun setRest!3562 () (InoxSet Context!462))

(assert (=> setNonEmpty!3562 (= (_2!4256 (h!12767 mapValue!2937)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3562 true) setRest!3562))))

(assert (= b!688411 b!688412))

(assert (= (and b!688411 condSetEmpty!3562) setIsEmpty!3562))

(assert (= (and b!688411 (not condSetEmpty!3562)) setNonEmpty!3562))

(assert (= setNonEmpty!3562 b!688410))

(assert (= (and mapNonEmpty!2937 ((_ is Cons!7366) mapValue!2937)) b!688411))

(declare-fun m!944969 () Bool)

(assert (=> b!688411 m!944969))

(declare-fun m!944971 () Bool)

(assert (=> setNonEmpty!3562 m!944971))

(declare-fun e!432576 () Bool)

(declare-fun tp!205885 () Bool)

(declare-fun setNonEmpty!3563 () Bool)

(declare-fun setElem!3563 () Context!462)

(declare-fun setRes!3563 () Bool)

(assert (=> setNonEmpty!3563 (= setRes!3563 (and tp!205885 (inv!9479 setElem!3563) e!432576))))

(declare-fun setRest!3563 () (InoxSet Context!462))

(assert (=> setNonEmpty!3563 (= (_1!4257 (_1!4258 (h!12768 (zeroValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3563 true) setRest!3563))))

(declare-fun b!688414 () Bool)

(declare-fun tp!205884 () Bool)

(assert (=> b!688414 (= e!432576 tp!205884)))

(declare-fun b!688413 () Bool)

(declare-fun e!432577 () Bool)

(declare-fun tp!205883 () Bool)

(assert (=> b!688413 (= e!432577 (and setRes!3563 tp!205883))))

(declare-fun condSetEmpty!3563 () Bool)

(assert (=> b!688413 (= condSetEmpty!3563 (= (_1!4257 (_1!4258 (h!12768 (zeroValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3563 () Bool)

(assert (=> setIsEmpty!3563 setRes!3563))

(assert (=> b!688194 (= tp!205674 e!432577)))

(assert (= (and b!688413 condSetEmpty!3563) setIsEmpty!3563))

(assert (= (and b!688413 (not condSetEmpty!3563)) setNonEmpty!3563))

(assert (= setNonEmpty!3563 b!688414))

(assert (= (and b!688194 ((_ is Cons!7367) (zeroValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59)))))))) b!688413))

(declare-fun m!944973 () Bool)

(assert (=> setNonEmpty!3563 m!944973))

(declare-fun setNonEmpty!3564 () Bool)

(declare-fun tp!205888 () Bool)

(declare-fun setRes!3564 () Bool)

(declare-fun e!432578 () Bool)

(declare-fun setElem!3564 () Context!462)

(assert (=> setNonEmpty!3564 (= setRes!3564 (and tp!205888 (inv!9479 setElem!3564) e!432578))))

(declare-fun setRest!3564 () (InoxSet Context!462))

(assert (=> setNonEmpty!3564 (= (_1!4257 (_1!4258 (h!12768 (minValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3564 true) setRest!3564))))

(declare-fun b!688416 () Bool)

(declare-fun tp!205887 () Bool)

(assert (=> b!688416 (= e!432578 tp!205887)))

(declare-fun b!688415 () Bool)

(declare-fun e!432579 () Bool)

(declare-fun tp!205886 () Bool)

(assert (=> b!688415 (= e!432579 (and setRes!3564 tp!205886))))

(declare-fun condSetEmpty!3564 () Bool)

(assert (=> b!688415 (= condSetEmpty!3564 (= (_1!4257 (_1!4258 (h!12768 (minValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3564 () Bool)

(assert (=> setIsEmpty!3564 setRes!3564))

(assert (=> b!688194 (= tp!205684 e!432579)))

(assert (= (and b!688415 condSetEmpty!3564) setIsEmpty!3564))

(assert (= (and b!688415 (not condSetEmpty!3564)) setNonEmpty!3564))

(assert (= setNonEmpty!3564 b!688416))

(assert (= (and b!688194 ((_ is Cons!7367) (minValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59)))))))) b!688415))

(declare-fun m!944975 () Bool)

(assert (=> setNonEmpty!3564 m!944975))

(check-sat (not b_next!19417) b_and!63151 (not b!688294) (not b!688330) b_and!63163 (not b!688239) (not d!231944) (not b!688407) (not b!688387) (not b!688329) (not b!688409) (not b!688405) (not b_next!19431) (not b!688318) (not b!688406) (not b!688216) (not setNonEmpty!3552) (not b!688370) (not b!688293) (not b!688282) (not setNonEmpty!3553) (not b!688200) (not setNonEmpty!3562) (not setNonEmpty!3561) (not b!688266) (not b_next!19421) (not b!688233) (not mapNonEmpty!2947) (not b!688319) (not b!688313) b_and!63157 (not b!688242) (not d!231978) (not setNonEmpty!3531) (not b!688255) (not b!688383) (not setNonEmpty!3564) (not setNonEmpty!3555) b_and!63159 (not b!688389) (not b!688245) (not b!688331) (not setNonEmpty!3537) (not b!688236) (not b!688412) (not setNonEmpty!3547) (not b!688296) (not b!688269) (not d!231974) b_and!63153 (not b_next!19429) (not b!688315) (not setNonEmpty!3544) (not b!688408) (not b!688292) (not b!688382) (not b!688333) (not b!688415) (not b!688207) (not b!688385) (not b!688243) (not b!688362) (not b!688279) (not b!688316) (not b!688283) (not b_next!19435) (not d!231964) (not b_next!19427) (not b!688263) (not b!688218) (not b!688334) (not b!688388) (not b_next!19433) (not d!231948) (not b!688238) tp_is_empty!3639 (not d!231990) (not b_next!19423) (not b!688280) (not b!688414) (not d!231952) (not d!231954) (not b!688278) (not d!231962) b_and!63147 (not b!688358) (not b_next!19419) (not b!688411) (not b!688346) (not setNonEmpty!3532) (not d!231972) b_and!63155 (not setNonEmpty!3543) (not b!688360) (not b!688256) (not setNonEmpty!3542) (not b!688410) (not b!688416) (not b!688347) (not setNonEmpty!3554) (not b!688314) (not b!688386) (not b!688312) (not b!688348) (not setNonEmpty!3560) (not b!688357) (not b!688332) (not mapNonEmpty!2941) (not b!688297) (not b!688281) (not setNonEmpty!3539) (not setNonEmpty!3538) (not b!688235) b_and!63165 (not mapNonEmpty!2944) (not b!688260) (not b!688381) b_and!63161 (not b_next!19425) (not d!231942) (not b!688404) (not setNonEmpty!3563) (not b!688384) (not d!231982) (not d!231946) (not d!231956) b_and!63149 (not b!688320) (not b!688317) (not b!688237) (not b!688413) (not b!688361) (not b!688295) (not b!688369))
(check-sat b_and!63163 (not b_next!19431) (not b_next!19421) b_and!63157 b_and!63159 (not b_next!19417) b_and!63151 (not b_next!19433) (not b_next!19423) b_and!63155 b_and!63149 b_and!63153 (not b_next!19429) (not b_next!19427) (not b_next!19435) b_and!63147 (not b_next!19419) b_and!63165 b_and!63161 (not b_next!19425))
(get-model)

(declare-fun d!231996 () Bool)

(declare-fun lt!284162 () Int)

(declare-fun size!6053 (List!7385) Int)

(assert (=> d!231996 (= lt!284162 (size!6053 (list!3109 (_1!4261 lt!284156))))))

(declare-fun size!6054 (Conc!2614) Int)

(assert (=> d!231996 (= lt!284162 (size!6054 (c!121357 (_1!4261 lt!284156))))))

(assert (=> d!231996 (= (size!6050 (_1!4261 lt!284156)) lt!284162)))

(declare-fun bs!135891 () Bool)

(assert (= bs!135891 d!231996))

(assert (=> bs!135891 m!944847))

(assert (=> bs!135891 m!944847))

(declare-fun m!944977 () Bool)

(assert (=> bs!135891 m!944977))

(declare-fun m!944979 () Bool)

(assert (=> bs!135891 m!944979))

(assert (=> d!231946 d!231996))

(declare-fun b!688433 () Bool)

(declare-fun e!432594 () Option!1702)

(declare-fun call!43534 () Option!1702)

(assert (=> b!688433 (= e!432594 call!43534)))

(declare-fun d!231998 () Bool)

(declare-fun e!432593 () Bool)

(assert (=> d!231998 e!432593))

(declare-fun res!312780 () Bool)

(assert (=> d!231998 (=> (not res!312780) (not e!432593))))

(declare-fun lt!284183 () Option!1702)

(declare-fun isDefined!1434 (Option!1702) Bool)

(declare-datatypes ((tuple2!7734 0))(
  ( (tuple2!7735 (_1!4264 Token!2680) (_2!4264 List!7382)) )
))
(declare-datatypes ((Option!1703 0))(
  ( (None!1702) (Some!1702 (v!17586 tuple2!7734)) )
))
(declare-fun isDefined!1435 (Option!1703) Bool)

(declare-fun maxPrefixZipper!206 (LexerInterface!1299 List!7386 List!7382) Option!1703)

(assert (=> d!231998 (= res!312780 (= (isDefined!1434 lt!284183) (isDefined!1435 (maxPrefixZipper!206 thiss!12183 rules!1357 (list!3108 (BalanceConc!5239 Empty!2613))))))))

(assert (=> d!231998 (= lt!284183 e!432594)))

(declare-fun c!121374 () Bool)

(assert (=> d!231998 (= c!121374 (and ((_ is Cons!7372) rules!1357) ((_ is Nil!7372) (t!87194 rules!1357))))))

(declare-datatypes ((Unit!12619 0))(
  ( (Unit!12620) )
))
(declare-fun lt!284181 () Unit!12619)

(declare-fun lt!284178 () Unit!12619)

(assert (=> d!231998 (= lt!284181 lt!284178)))

(declare-fun lt!284180 () List!7382)

(declare-fun lt!284179 () List!7382)

(declare-fun isPrefix!913 (List!7382 List!7382) Bool)

(assert (=> d!231998 (isPrefix!913 lt!284180 lt!284179)))

(declare-fun lemmaIsPrefixRefl!624 (List!7382 List!7382) Unit!12619)

(assert (=> d!231998 (= lt!284178 (lemmaIsPrefixRefl!624 lt!284180 lt!284179))))

(assert (=> d!231998 (= lt!284179 (list!3108 (BalanceConc!5239 Empty!2613)))))

(assert (=> d!231998 (= lt!284180 (list!3108 (BalanceConc!5239 Empty!2613)))))

(declare-fun rulesValidInductive!516 (LexerInterface!1299 List!7386) Bool)

(assert (=> d!231998 (rulesValidInductive!516 thiss!12183 rules!1357)))

(assert (=> d!231998 (= (maxPrefixZipperSequence!454 thiss!12183 rules!1357 (BalanceConc!5239 Empty!2613)) lt!284183)))

(declare-fun b!688434 () Bool)

(declare-fun e!432597 () Bool)

(declare-fun get!2565 (Option!1702) tuple2!7732)

(declare-fun get!2566 (Option!1703) tuple2!7734)

(declare-fun maxPrefix!865 (LexerInterface!1299 List!7386 List!7382) Option!1703)

(assert (=> b!688434 (= e!432597 (= (list!3108 (_2!4263 (get!2565 lt!284183))) (_2!4264 (get!2566 (maxPrefix!865 thiss!12183 rules!1357 (list!3108 (BalanceConc!5239 Empty!2613)))))))))

(declare-fun b!688435 () Bool)

(declare-fun e!432595 () Bool)

(declare-fun e!432592 () Bool)

(assert (=> b!688435 (= e!432595 e!432592)))

(declare-fun res!312778 () Bool)

(assert (=> b!688435 (=> (not res!312778) (not e!432592))))

(assert (=> b!688435 (= res!312778 (= (_1!4263 (get!2565 lt!284183)) (_1!4264 (get!2566 (maxPrefixZipper!206 thiss!12183 rules!1357 (list!3108 (BalanceConc!5239 Empty!2613)))))))))

(declare-fun b!688436 () Bool)

(declare-fun e!432596 () Bool)

(assert (=> b!688436 (= e!432596 e!432597)))

(declare-fun res!312779 () Bool)

(assert (=> b!688436 (=> (not res!312779) (not e!432597))))

(assert (=> b!688436 (= res!312779 (= (_1!4263 (get!2565 lt!284183)) (_1!4264 (get!2566 (maxPrefix!865 thiss!12183 rules!1357 (list!3108 (BalanceConc!5239 Empty!2613)))))))))

(declare-fun bm!43529 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!207 (LexerInterface!1299 Rule!2768 BalanceConc!5238) Option!1702)

(assert (=> bm!43529 (= call!43534 (maxPrefixOneRuleZipperSequence!207 thiss!12183 (h!12773 rules!1357) (BalanceConc!5239 Empty!2613)))))

(declare-fun b!688437 () Bool)

(declare-fun lt!284177 () Option!1702)

(declare-fun lt!284182 () Option!1702)

(assert (=> b!688437 (= e!432594 (ite (and ((_ is None!1701) lt!284177) ((_ is None!1701) lt!284182)) None!1701 (ite ((_ is None!1701) lt!284182) lt!284177 (ite ((_ is None!1701) lt!284177) lt!284182 (ite (>= (size!6049 (_1!4263 (v!17584 lt!284177))) (size!6049 (_1!4263 (v!17584 lt!284182)))) lt!284177 lt!284182)))))))

(assert (=> b!688437 (= lt!284177 call!43534)))

(assert (=> b!688437 (= lt!284182 (maxPrefixZipperSequence!454 thiss!12183 (t!87194 rules!1357) (BalanceConc!5239 Empty!2613)))))

(declare-fun b!688438 () Bool)

(declare-fun res!312782 () Bool)

(assert (=> b!688438 (=> (not res!312782) (not e!432593))))

(assert (=> b!688438 (= res!312782 e!432595)))

(declare-fun res!312777 () Bool)

(assert (=> b!688438 (=> res!312777 e!432595)))

(assert (=> b!688438 (= res!312777 (not (isDefined!1434 lt!284183)))))

(declare-fun b!688439 () Bool)

(assert (=> b!688439 (= e!432593 e!432596)))

(declare-fun res!312781 () Bool)

(assert (=> b!688439 (=> res!312781 e!432596)))

(assert (=> b!688439 (= res!312781 (not (isDefined!1434 lt!284183)))))

(declare-fun b!688440 () Bool)

(assert (=> b!688440 (= e!432592 (= (list!3108 (_2!4263 (get!2565 lt!284183))) (_2!4264 (get!2566 (maxPrefixZipper!206 thiss!12183 rules!1357 (list!3108 (BalanceConc!5239 Empty!2613)))))))))

(assert (= (and d!231998 c!121374) b!688433))

(assert (= (and d!231998 (not c!121374)) b!688437))

(assert (= (or b!688433 b!688437) bm!43529))

(assert (= (and d!231998 res!312780) b!688438))

(assert (= (and b!688438 (not res!312777)) b!688435))

(assert (= (and b!688435 res!312778) b!688440))

(assert (= (and b!688438 res!312782) b!688439))

(assert (= (and b!688439 (not res!312781)) b!688436))

(assert (= (and b!688436 res!312779) b!688434))

(declare-fun m!944981 () Bool)

(assert (=> b!688436 m!944981))

(assert (=> b!688436 m!944777))

(assert (=> b!688436 m!944777))

(declare-fun m!944983 () Bool)

(assert (=> b!688436 m!944983))

(assert (=> b!688436 m!944983))

(declare-fun m!944985 () Bool)

(assert (=> b!688436 m!944985))

(declare-fun m!944987 () Bool)

(assert (=> bm!43529 m!944987))

(declare-fun m!944989 () Bool)

(assert (=> b!688438 m!944989))

(declare-fun m!944991 () Bool)

(assert (=> d!231998 m!944991))

(assert (=> d!231998 m!944777))

(declare-fun m!944993 () Bool)

(assert (=> d!231998 m!944993))

(declare-fun m!944995 () Bool)

(assert (=> d!231998 m!944995))

(declare-fun m!944997 () Bool)

(assert (=> d!231998 m!944997))

(assert (=> d!231998 m!944989))

(assert (=> d!231998 m!944777))

(assert (=> d!231998 m!944993))

(declare-fun m!944999 () Bool)

(assert (=> d!231998 m!944999))

(assert (=> b!688434 m!944981))

(assert (=> b!688434 m!944777))

(declare-fun m!945001 () Bool)

(assert (=> b!688434 m!945001))

(assert (=> b!688434 m!944777))

(assert (=> b!688434 m!944983))

(assert (=> b!688434 m!944983))

(assert (=> b!688434 m!944985))

(assert (=> b!688440 m!944777))

(assert (=> b!688440 m!945001))

(assert (=> b!688440 m!944993))

(declare-fun m!945003 () Bool)

(assert (=> b!688440 m!945003))

(assert (=> b!688440 m!944777))

(assert (=> b!688440 m!944993))

(assert (=> b!688440 m!944981))

(declare-fun m!945005 () Bool)

(assert (=> b!688437 m!945005))

(assert (=> b!688439 m!944989))

(assert (=> b!688435 m!944981))

(assert (=> b!688435 m!944777))

(assert (=> b!688435 m!944777))

(assert (=> b!688435 m!944993))

(assert (=> b!688435 m!944993))

(assert (=> b!688435 m!945003))

(assert (=> d!231946 d!231998))

(declare-fun d!232000 () Bool)

(declare-fun res!312800 () Bool)

(declare-fun e!432602 () Bool)

(assert (=> d!232000 (=> res!312800 e!432602)))

(assert (=> d!232000 (= res!312800 (not ((_ is Node!2613) (c!121356 input!756))))))

(assert (=> d!232000 (= (isBalanced!690 (c!121356 input!756)) e!432602)))

(declare-fun b!688453 () Bool)

(declare-fun res!312798 () Bool)

(declare-fun e!432603 () Bool)

(assert (=> b!688453 (=> (not res!312798) (not e!432603))))

(declare-fun isEmpty!4847 (Conc!2613) Bool)

(assert (=> b!688453 (= res!312798 (not (isEmpty!4847 (left!5950 (c!121356 input!756)))))))

(declare-fun b!688454 () Bool)

(assert (=> b!688454 (= e!432602 e!432603)))

(declare-fun res!312795 () Bool)

(assert (=> b!688454 (=> (not res!312795) (not e!432603))))

(declare-fun height!314 (Conc!2613) Int)

(assert (=> b!688454 (= res!312795 (<= (- 1) (- (height!314 (left!5950 (c!121356 input!756))) (height!314 (right!6280 (c!121356 input!756))))))))

(declare-fun b!688455 () Bool)

(declare-fun res!312797 () Bool)

(assert (=> b!688455 (=> (not res!312797) (not e!432603))))

(assert (=> b!688455 (= res!312797 (isBalanced!690 (left!5950 (c!121356 input!756))))))

(declare-fun b!688456 () Bool)

(assert (=> b!688456 (= e!432603 (not (isEmpty!4847 (right!6280 (c!121356 input!756)))))))

(declare-fun b!688457 () Bool)

(declare-fun res!312799 () Bool)

(assert (=> b!688457 (=> (not res!312799) (not e!432603))))

(assert (=> b!688457 (= res!312799 (isBalanced!690 (right!6280 (c!121356 input!756))))))

(declare-fun b!688458 () Bool)

(declare-fun res!312796 () Bool)

(assert (=> b!688458 (=> (not res!312796) (not e!432603))))

(assert (=> b!688458 (= res!312796 (<= (- (height!314 (left!5950 (c!121356 input!756))) (height!314 (right!6280 (c!121356 input!756)))) 1))))

(assert (= (and d!232000 (not res!312800)) b!688454))

(assert (= (and b!688454 res!312795) b!688458))

(assert (= (and b!688458 res!312796) b!688455))

(assert (= (and b!688455 res!312797) b!688457))

(assert (= (and b!688457 res!312799) b!688453))

(assert (= (and b!688453 res!312798) b!688456))

(declare-fun m!945007 () Bool)

(assert (=> b!688456 m!945007))

(declare-fun m!945009 () Bool)

(assert (=> b!688454 m!945009))

(declare-fun m!945011 () Bool)

(assert (=> b!688454 m!945011))

(declare-fun m!945013 () Bool)

(assert (=> b!688455 m!945013))

(declare-fun m!945015 () Bool)

(assert (=> b!688457 m!945015))

(assert (=> b!688458 m!945009))

(assert (=> b!688458 m!945011))

(declare-fun m!945017 () Bool)

(assert (=> b!688453 m!945017))

(assert (=> d!231982 d!232000))

(declare-fun d!232002 () Bool)

(declare-fun lambda!21388 () Int)

(declare-fun forall!1941 (List!7379 Int) Bool)

(assert (=> d!232002 (= (inv!9479 setElem!3544) (forall!1941 (exprs!731 setElem!3544) lambda!21388))))

(declare-fun bs!135892 () Bool)

(assert (= bs!135892 d!232002))

(declare-fun m!945019 () Bool)

(assert (=> bs!135892 m!945019))

(assert (=> setNonEmpty!3544 d!232002))

(declare-fun d!232004 () Bool)

(declare-fun lt!284186 () Bool)

(declare-fun isEmpty!4848 (List!7385) Bool)

(assert (=> d!232004 (= lt!284186 (isEmpty!4848 (list!3109 (_1!4261 lt!284156))))))

(declare-fun isEmpty!4849 (Conc!2614) Bool)

(assert (=> d!232004 (= lt!284186 (isEmpty!4849 (c!121357 (_1!4261 lt!284156))))))

(assert (=> d!232004 (= (isEmpty!4846 (_1!4261 lt!284156)) lt!284186)))

(declare-fun bs!135893 () Bool)

(assert (= bs!135893 d!232004))

(assert (=> bs!135893 m!944847))

(assert (=> bs!135893 m!944847))

(declare-fun m!945021 () Bool)

(assert (=> bs!135893 m!945021))

(declare-fun m!945023 () Bool)

(assert (=> bs!135893 m!945023))

(assert (=> b!688235 d!232004))

(declare-fun bs!135894 () Bool)

(declare-fun d!232006 () Bool)

(assert (= bs!135894 (and d!232006 d!232002)))

(declare-fun lambda!21389 () Int)

(assert (=> bs!135894 (= lambda!21389 lambda!21388)))

(assert (=> d!232006 (= (inv!9479 setElem!3539) (forall!1941 (exprs!731 setElem!3539) lambda!21389))))

(declare-fun bs!135895 () Bool)

(assert (= bs!135895 d!232006))

(declare-fun m!945025 () Bool)

(assert (=> bs!135895 m!945025))

(assert (=> setNonEmpty!3539 d!232006))

(declare-fun d!232008 () Bool)

(declare-fun res!312807 () Bool)

(declare-fun e!432606 () Bool)

(assert (=> d!232008 (=> (not res!312807) (not e!432606))))

(declare-fun size!6055 (Conc!2613) Int)

(assert (=> d!232008 (= res!312807 (= (csize!5456 (c!121356 input!756)) (+ (size!6055 (left!5950 (c!121356 input!756))) (size!6055 (right!6280 (c!121356 input!756))))))))

(assert (=> d!232008 (= (inv!9476 (c!121356 input!756)) e!432606)))

(declare-fun b!688465 () Bool)

(declare-fun res!312808 () Bool)

(assert (=> b!688465 (=> (not res!312808) (not e!432606))))

(assert (=> b!688465 (= res!312808 (and (not (= (left!5950 (c!121356 input!756)) Empty!2613)) (not (= (right!6280 (c!121356 input!756)) Empty!2613))))))

(declare-fun b!688466 () Bool)

(declare-fun res!312809 () Bool)

(assert (=> b!688466 (=> (not res!312809) (not e!432606))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!688466 (= res!312809 (= (cheight!2824 (c!121356 input!756)) (+ (max!0 (height!314 (left!5950 (c!121356 input!756))) (height!314 (right!6280 (c!121356 input!756)))) 1)))))

(declare-fun b!688467 () Bool)

(assert (=> b!688467 (= e!432606 (<= 0 (cheight!2824 (c!121356 input!756))))))

(assert (= (and d!232008 res!312807) b!688465))

(assert (= (and b!688465 res!312808) b!688466))

(assert (= (and b!688466 res!312809) b!688467))

(declare-fun m!945027 () Bool)

(assert (=> d!232008 m!945027))

(declare-fun m!945029 () Bool)

(assert (=> d!232008 m!945029))

(assert (=> b!688466 m!945009))

(assert (=> b!688466 m!945011))

(assert (=> b!688466 m!945009))

(assert (=> b!688466 m!945011))

(declare-fun m!945031 () Bool)

(assert (=> b!688466 m!945031))

(assert (=> b!688216 d!232008))

(declare-fun bs!135896 () Bool)

(declare-fun d!232010 () Bool)

(assert (= bs!135896 (and d!232010 d!232002)))

(declare-fun lambda!21390 () Int)

(assert (=> bs!135896 (= lambda!21390 lambda!21388)))

(declare-fun bs!135897 () Bool)

(assert (= bs!135897 (and d!232010 d!232006)))

(assert (=> bs!135897 (= lambda!21390 lambda!21389)))

(assert (=> d!232010 (= (inv!9479 setElem!3531) (forall!1941 (exprs!731 setElem!3531) lambda!21390))))

(declare-fun bs!135898 () Bool)

(assert (= bs!135898 d!232010))

(declare-fun m!945033 () Bool)

(assert (=> bs!135898 m!945033))

(assert (=> setNonEmpty!3531 d!232010))

(assert (=> b!688207 d!231950))

(declare-fun bs!135899 () Bool)

(declare-fun d!232012 () Bool)

(assert (= bs!135899 (and d!232012 d!232002)))

(declare-fun lambda!21391 () Int)

(assert (=> bs!135899 (= lambda!21391 lambda!21388)))

(declare-fun bs!135900 () Bool)

(assert (= bs!135900 (and d!232012 d!232006)))

(assert (=> bs!135900 (= lambda!21391 lambda!21389)))

(declare-fun bs!135901 () Bool)

(assert (= bs!135901 (and d!232012 d!232010)))

(assert (=> bs!135901 (= lambda!21391 lambda!21390)))

(assert (=> d!232012 (= (inv!9479 setElem!3532) (forall!1941 (exprs!731 setElem!3532) lambda!21391))))

(declare-fun bs!135902 () Bool)

(assert (= bs!135902 d!232012))

(declare-fun m!945035 () Bool)

(assert (=> bs!135902 m!945035))

(assert (=> setNonEmpty!3532 d!232012))

(declare-fun d!232014 () Bool)

(assert (=> d!232014 (= (list!3108 (_2!4261 lt!284156)) (list!3111 (c!121356 (_2!4261 lt!284156))))))

(declare-fun bs!135903 () Bool)

(assert (= bs!135903 d!232014))

(declare-fun m!945037 () Bool)

(assert (=> bs!135903 m!945037))

(assert (=> b!688239 d!232014))

(assert (=> b!688239 d!231956))

(declare-fun bs!135904 () Bool)

(declare-fun d!232016 () Bool)

(assert (= bs!135904 (and d!232016 d!232002)))

(declare-fun lambda!21392 () Int)

(assert (=> bs!135904 (= lambda!21392 lambda!21388)))

(declare-fun bs!135905 () Bool)

(assert (= bs!135905 (and d!232016 d!232006)))

(assert (=> bs!135905 (= lambda!21392 lambda!21389)))

(declare-fun bs!135906 () Bool)

(assert (= bs!135906 (and d!232016 d!232010)))

(assert (=> bs!135906 (= lambda!21392 lambda!21390)))

(declare-fun bs!135907 () Bool)

(assert (= bs!135907 (and d!232016 d!232012)))

(assert (=> bs!135907 (= lambda!21392 lambda!21391)))

(assert (=> d!232016 (= (inv!9479 setElem!3561) (forall!1941 (exprs!731 setElem!3561) lambda!21392))))

(declare-fun bs!135908 () Bool)

(assert (= bs!135908 d!232016))

(declare-fun m!945039 () Bool)

(assert (=> bs!135908 m!945039))

(assert (=> setNonEmpty!3560 d!232016))

(declare-fun d!232018 () Bool)

(declare-fun res!312814 () Bool)

(declare-fun e!432609 () Bool)

(assert (=> d!232018 (=> (not res!312814) (not e!432609))))

(declare-fun list!3112 (IArray!5227) List!7382)

(assert (=> d!232018 (= res!312814 (<= (size!6052 (list!3112 (xs!5262 (c!121356 input!756)))) 512))))

(assert (=> d!232018 (= (inv!9477 (c!121356 input!756)) e!432609)))

(declare-fun b!688472 () Bool)

(declare-fun res!312815 () Bool)

(assert (=> b!688472 (=> (not res!312815) (not e!432609))))

(assert (=> b!688472 (= res!312815 (= (csize!5457 (c!121356 input!756)) (size!6052 (list!3112 (xs!5262 (c!121356 input!756))))))))

(declare-fun b!688473 () Bool)

(assert (=> b!688473 (= e!432609 (and (> (csize!5457 (c!121356 input!756)) 0) (<= (csize!5457 (c!121356 input!756)) 512)))))

(assert (= (and d!232018 res!312814) b!688472))

(assert (= (and b!688472 res!312815) b!688473))

(declare-fun m!945041 () Bool)

(assert (=> d!232018 m!945041))

(assert (=> d!232018 m!945041))

(declare-fun m!945043 () Bool)

(assert (=> d!232018 m!945043))

(assert (=> b!688472 m!945041))

(assert (=> b!688472 m!945041))

(assert (=> b!688472 m!945043))

(assert (=> b!688218 d!232018))

(declare-fun d!232020 () Bool)

(assert (=> d!232020 (= (list!3109 (_1!4261 lt!284156)) (list!3110 (c!121357 (_1!4261 lt!284156))))))

(declare-fun bs!135909 () Bool)

(assert (= bs!135909 d!232020))

(declare-fun m!945045 () Bool)

(assert (=> bs!135909 m!945045))

(assert (=> b!688237 d!232020))

(declare-fun b!688484 () Bool)

(declare-fun e!432616 () Bool)

(declare-fun lt!284194 () tuple2!7730)

(assert (=> b!688484 (= e!432616 (= (_2!4262 lt!284194) (list!3108 (BalanceConc!5239 Empty!2613))))))

(declare-fun b!688485 () Bool)

(declare-fun e!432618 () tuple2!7730)

(assert (=> b!688485 (= e!432618 (tuple2!7731 Nil!7371 (list!3108 (BalanceConc!5239 Empty!2613))))))

(declare-fun b!688486 () Bool)

(declare-fun lt!284193 () Option!1703)

(declare-fun lt!284195 () tuple2!7730)

(assert (=> b!688486 (= e!432618 (tuple2!7731 (Cons!7371 (_1!4264 (v!17586 lt!284193)) (_1!4262 lt!284195)) (_2!4262 lt!284195)))))

(assert (=> b!688486 (= lt!284195 (lexList!320 thiss!12183 rules!1357 (_2!4264 (v!17586 lt!284193))))))

(declare-fun b!688487 () Bool)

(declare-fun e!432617 () Bool)

(assert (=> b!688487 (= e!432617 (not (isEmpty!4848 (_1!4262 lt!284194))))))

(declare-fun b!688488 () Bool)

(assert (=> b!688488 (= e!432616 e!432617)))

(declare-fun res!312818 () Bool)

(assert (=> b!688488 (= res!312818 (< (size!6052 (_2!4262 lt!284194)) (size!6052 (list!3108 (BalanceConc!5239 Empty!2613)))))))

(assert (=> b!688488 (=> (not res!312818) (not e!432617))))

(declare-fun d!232022 () Bool)

(assert (=> d!232022 e!432616))

(declare-fun c!121379 () Bool)

(assert (=> d!232022 (= c!121379 (> (size!6053 (_1!4262 lt!284194)) 0))))

(assert (=> d!232022 (= lt!284194 e!432618)))

(declare-fun c!121380 () Bool)

(assert (=> d!232022 (= c!121380 ((_ is Some!1702) lt!284193))))

(assert (=> d!232022 (= lt!284193 (maxPrefix!865 thiss!12183 rules!1357 (list!3108 (BalanceConc!5239 Empty!2613))))))

(assert (=> d!232022 (= (lexList!320 thiss!12183 rules!1357 (list!3108 (BalanceConc!5239 Empty!2613))) lt!284194)))

(assert (= (and d!232022 c!121380) b!688486))

(assert (= (and d!232022 (not c!121380)) b!688485))

(assert (= (and d!232022 c!121379) b!688488))

(assert (= (and d!232022 (not c!121379)) b!688484))

(assert (= (and b!688488 res!312818) b!688487))

(declare-fun m!945047 () Bool)

(assert (=> b!688486 m!945047))

(declare-fun m!945049 () Bool)

(assert (=> b!688487 m!945049))

(declare-fun m!945051 () Bool)

(assert (=> b!688488 m!945051))

(assert (=> b!688488 m!944777))

(declare-fun m!945053 () Bool)

(assert (=> b!688488 m!945053))

(declare-fun m!945055 () Bool)

(assert (=> d!232022 m!945055))

(assert (=> d!232022 m!944777))

(assert (=> d!232022 m!944983))

(assert (=> b!688237 d!232022))

(assert (=> b!688237 d!231956))

(declare-fun d!232024 () Bool)

(declare-fun c!121385 () Bool)

(assert (=> d!232024 (= c!121385 ((_ is Empty!2614) (c!121357 (_1!4261 lt!284145))))))

(declare-fun e!432623 () List!7385)

(assert (=> d!232024 (= (list!3110 (c!121357 (_1!4261 lt!284145))) e!432623)))

(declare-fun b!688497 () Bool)

(assert (=> b!688497 (= e!432623 Nil!7371)))

(declare-fun b!688500 () Bool)

(declare-fun e!432624 () List!7385)

(declare-fun ++!1936 (List!7385 List!7385) List!7385)

(assert (=> b!688500 (= e!432624 (++!1936 (list!3110 (left!5951 (c!121357 (_1!4261 lt!284145)))) (list!3110 (right!6281 (c!121357 (_1!4261 lt!284145))))))))

(declare-fun b!688499 () Bool)

(declare-fun list!3113 (IArray!5229) List!7385)

(assert (=> b!688499 (= e!432624 (list!3113 (xs!5263 (c!121357 (_1!4261 lt!284145)))))))

(declare-fun b!688498 () Bool)

(assert (=> b!688498 (= e!432623 e!432624)))

(declare-fun c!121386 () Bool)

(assert (=> b!688498 (= c!121386 ((_ is Leaf!3878) (c!121357 (_1!4261 lt!284145))))))

(assert (= (and d!232024 c!121385) b!688497))

(assert (= (and d!232024 (not c!121385)) b!688498))

(assert (= (and b!688498 c!121386) b!688499))

(assert (= (and b!688498 (not c!121386)) b!688500))

(declare-fun m!945057 () Bool)

(assert (=> b!688500 m!945057))

(declare-fun m!945059 () Bool)

(assert (=> b!688500 m!945059))

(assert (=> b!688500 m!945057))

(assert (=> b!688500 m!945059))

(declare-fun m!945061 () Bool)

(assert (=> b!688500 m!945061))

(declare-fun m!945063 () Bool)

(assert (=> b!688499 m!945063))

(assert (=> d!231942 d!232024))

(declare-fun bs!135910 () Bool)

(declare-fun d!232026 () Bool)

(assert (= bs!135910 (and d!232026 d!232010)))

(declare-fun lambda!21393 () Int)

(assert (=> bs!135910 (= lambda!21393 lambda!21390)))

(declare-fun bs!135911 () Bool)

(assert (= bs!135911 (and d!232026 d!232012)))

(assert (=> bs!135911 (= lambda!21393 lambda!21391)))

(declare-fun bs!135912 () Bool)

(assert (= bs!135912 (and d!232026 d!232002)))

(assert (=> bs!135912 (= lambda!21393 lambda!21388)))

(declare-fun bs!135913 () Bool)

(assert (= bs!135913 (and d!232026 d!232006)))

(assert (=> bs!135913 (= lambda!21393 lambda!21389)))

(declare-fun bs!135914 () Bool)

(assert (= bs!135914 (and d!232026 d!232016)))

(assert (=> bs!135914 (= lambda!21393 lambda!21392)))

(assert (=> d!232026 (= (inv!9479 setElem!3552) (forall!1941 (exprs!731 setElem!3552) lambda!21393))))

(declare-fun bs!135915 () Bool)

(assert (= bs!135915 d!232026))

(declare-fun m!945065 () Bool)

(assert (=> bs!135915 m!945065))

(assert (=> setNonEmpty!3552 d!232026))

(declare-fun bs!135916 () Bool)

(declare-fun d!232028 () Bool)

(assert (= bs!135916 (and d!232028 d!232010)))

(declare-fun lambda!21394 () Int)

(assert (=> bs!135916 (= lambda!21394 lambda!21390)))

(declare-fun bs!135917 () Bool)

(assert (= bs!135917 (and d!232028 d!232012)))

(assert (=> bs!135917 (= lambda!21394 lambda!21391)))

(declare-fun bs!135918 () Bool)

(assert (= bs!135918 (and d!232028 d!232002)))

(assert (=> bs!135918 (= lambda!21394 lambda!21388)))

(declare-fun bs!135919 () Bool)

(assert (= bs!135919 (and d!232028 d!232006)))

(assert (=> bs!135919 (= lambda!21394 lambda!21389)))

(declare-fun bs!135920 () Bool)

(assert (= bs!135920 (and d!232028 d!232026)))

(assert (=> bs!135920 (= lambda!21394 lambda!21393)))

(declare-fun bs!135921 () Bool)

(assert (= bs!135921 (and d!232028 d!232016)))

(assert (=> bs!135921 (= lambda!21394 lambda!21392)))

(assert (=> d!232028 (= (inv!9479 setElem!3564) (forall!1941 (exprs!731 setElem!3564) lambda!21394))))

(declare-fun bs!135922 () Bool)

(assert (= bs!135922 d!232028))

(declare-fun m!945067 () Bool)

(assert (=> bs!135922 m!945067))

(assert (=> setNonEmpty!3564 d!232028))

(declare-fun bs!135923 () Bool)

(declare-fun d!232030 () Bool)

(assert (= bs!135923 (and d!232030 d!232010)))

(declare-fun lambda!21395 () Int)

(assert (=> bs!135923 (= lambda!21395 lambda!21390)))

(declare-fun bs!135924 () Bool)

(assert (= bs!135924 (and d!232030 d!232012)))

(assert (=> bs!135924 (= lambda!21395 lambda!21391)))

(declare-fun bs!135925 () Bool)

(assert (= bs!135925 (and d!232030 d!232028)))

(assert (=> bs!135925 (= lambda!21395 lambda!21394)))

(declare-fun bs!135926 () Bool)

(assert (= bs!135926 (and d!232030 d!232002)))

(assert (=> bs!135926 (= lambda!21395 lambda!21388)))

(declare-fun bs!135927 () Bool)

(assert (= bs!135927 (and d!232030 d!232006)))

(assert (=> bs!135927 (= lambda!21395 lambda!21389)))

(declare-fun bs!135928 () Bool)

(assert (= bs!135928 (and d!232030 d!232026)))

(assert (=> bs!135928 (= lambda!21395 lambda!21393)))

(declare-fun bs!135929 () Bool)

(assert (= bs!135929 (and d!232030 d!232016)))

(assert (=> bs!135929 (= lambda!21395 lambda!21392)))

(assert (=> d!232030 (= (inv!9479 setElem!3547) (forall!1941 (exprs!731 setElem!3547) lambda!21395))))

(declare-fun bs!135930 () Bool)

(assert (= bs!135930 d!232030))

(declare-fun m!945069 () Bool)

(assert (=> bs!135930 m!945069))

(assert (=> setNonEmpty!3547 d!232030))

(declare-fun bs!135931 () Bool)

(declare-fun d!232032 () Bool)

(assert (= bs!135931 (and d!232032 d!232010)))

(declare-fun lambda!21396 () Int)

(assert (=> bs!135931 (= lambda!21396 lambda!21390)))

(declare-fun bs!135932 () Bool)

(assert (= bs!135932 (and d!232032 d!232012)))

(assert (=> bs!135932 (= lambda!21396 lambda!21391)))

(declare-fun bs!135933 () Bool)

(assert (= bs!135933 (and d!232032 d!232028)))

(assert (=> bs!135933 (= lambda!21396 lambda!21394)))

(declare-fun bs!135934 () Bool)

(assert (= bs!135934 (and d!232032 d!232002)))

(assert (=> bs!135934 (= lambda!21396 lambda!21388)))

(declare-fun bs!135935 () Bool)

(assert (= bs!135935 (and d!232032 d!232006)))

(assert (=> bs!135935 (= lambda!21396 lambda!21389)))

(declare-fun bs!135936 () Bool)

(assert (= bs!135936 (and d!232032 d!232026)))

(assert (=> bs!135936 (= lambda!21396 lambda!21393)))

(declare-fun bs!135937 () Bool)

(assert (= bs!135937 (and d!232032 d!232016)))

(assert (=> bs!135937 (= lambda!21396 lambda!21392)))

(declare-fun bs!135938 () Bool)

(assert (= bs!135938 (and d!232032 d!232030)))

(assert (=> bs!135938 (= lambda!21396 lambda!21395)))

(assert (=> d!232032 (= (inv!9479 (_1!4255 (_1!4256 (h!12767 mapValue!2947)))) (forall!1941 (exprs!731 (_1!4255 (_1!4256 (h!12767 mapValue!2947)))) lambda!21396))))

(declare-fun bs!135939 () Bool)

(assert (= bs!135939 d!232032))

(declare-fun m!945071 () Bool)

(assert (=> bs!135939 m!945071))

(assert (=> b!688406 d!232032))

(declare-fun bs!135940 () Bool)

(declare-fun d!232034 () Bool)

(assert (= bs!135940 (and d!232034 d!232010)))

(declare-fun lambda!21397 () Int)

(assert (=> bs!135940 (= lambda!21397 lambda!21390)))

(declare-fun bs!135941 () Bool)

(assert (= bs!135941 (and d!232034 d!232012)))

(assert (=> bs!135941 (= lambda!21397 lambda!21391)))

(declare-fun bs!135942 () Bool)

(assert (= bs!135942 (and d!232034 d!232028)))

(assert (=> bs!135942 (= lambda!21397 lambda!21394)))

(declare-fun bs!135943 () Bool)

(assert (= bs!135943 (and d!232034 d!232032)))

(assert (=> bs!135943 (= lambda!21397 lambda!21396)))

(declare-fun bs!135944 () Bool)

(assert (= bs!135944 (and d!232034 d!232002)))

(assert (=> bs!135944 (= lambda!21397 lambda!21388)))

(declare-fun bs!135945 () Bool)

(assert (= bs!135945 (and d!232034 d!232006)))

(assert (=> bs!135945 (= lambda!21397 lambda!21389)))

(declare-fun bs!135946 () Bool)

(assert (= bs!135946 (and d!232034 d!232026)))

(assert (=> bs!135946 (= lambda!21397 lambda!21393)))

(declare-fun bs!135947 () Bool)

(assert (= bs!135947 (and d!232034 d!232016)))

(assert (=> bs!135947 (= lambda!21397 lambda!21392)))

(declare-fun bs!135948 () Bool)

(assert (= bs!135948 (and d!232034 d!232030)))

(assert (=> bs!135948 (= lambda!21397 lambda!21395)))

(assert (=> d!232034 (= (inv!9479 (_2!4259 (_1!4260 (h!12770 mapDefault!2938)))) (forall!1941 (exprs!731 (_2!4259 (_1!4260 (h!12770 mapDefault!2938)))) lambda!21397))))

(declare-fun bs!135949 () Bool)

(assert (= bs!135949 d!232034))

(declare-fun m!945073 () Bool)

(assert (=> bs!135949 m!945073))

(assert (=> b!688387 d!232034))

(declare-fun d!232036 () Bool)

(declare-fun c!121387 () Bool)

(assert (=> d!232036 (= c!121387 ((_ is Node!2613) (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(declare-fun e!432625 () Bool)

(assert (=> d!232036 (= (inv!9471 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) e!432625)))

(declare-fun b!688501 () Bool)

(assert (=> b!688501 (= e!432625 (inv!9476 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(declare-fun b!688502 () Bool)

(declare-fun e!432626 () Bool)

(assert (=> b!688502 (= e!432625 e!432626)))

(declare-fun res!312819 () Bool)

(assert (=> b!688502 (= res!312819 (not ((_ is Leaf!3877) (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))))))

(assert (=> b!688502 (=> res!312819 e!432626)))

(declare-fun b!688503 () Bool)

(assert (=> b!688503 (= e!432626 (inv!9477 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(assert (= (and d!232036 c!121387) b!688501))

(assert (= (and d!232036 (not c!121387)) b!688502))

(assert (= (and b!688502 (not res!312819)) b!688503))

(declare-fun m!945075 () Bool)

(assert (=> b!688501 m!945075))

(declare-fun m!945077 () Bool)

(assert (=> b!688503 m!945077))

(assert (=> b!688281 d!232036))

(declare-fun d!232038 () Bool)

(declare-fun c!121388 () Bool)

(assert (=> d!232038 (= c!121388 ((_ is Node!2613) (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(declare-fun e!432627 () Bool)

(assert (=> d!232038 (= (inv!9471 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) e!432627)))

(declare-fun b!688504 () Bool)

(assert (=> b!688504 (= e!432627 (inv!9476 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(declare-fun b!688505 () Bool)

(declare-fun e!432628 () Bool)

(assert (=> b!688505 (= e!432627 e!432628)))

(declare-fun res!312820 () Bool)

(assert (=> b!688505 (= res!312820 (not ((_ is Leaf!3877) (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))))))

(assert (=> b!688505 (=> res!312820 e!432628)))

(declare-fun b!688506 () Bool)

(assert (=> b!688506 (= e!432628 (inv!9477 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(assert (= (and d!232038 c!121388) b!688504))

(assert (= (and d!232038 (not c!121388)) b!688505))

(assert (= (and b!688505 (not res!312820)) b!688506))

(declare-fun m!945079 () Bool)

(assert (=> b!688504 m!945079))

(declare-fun m!945081 () Bool)

(assert (=> b!688506 m!945081))

(assert (=> b!688281 d!232038))

(declare-fun b!688507 () Bool)

(declare-fun e!432630 () List!7382)

(assert (=> b!688507 (= e!432630 lt!284147)))

(declare-fun b!688509 () Bool)

(declare-fun res!312822 () Bool)

(declare-fun e!432629 () Bool)

(assert (=> b!688509 (=> (not res!312822) (not e!432629))))

(declare-fun lt!284196 () List!7382)

(assert (=> b!688509 (= res!312822 (= (size!6052 lt!284196) (+ (size!6052 (t!87190 lt!284142)) (size!6052 lt!284147))))))

(declare-fun b!688508 () Bool)

(assert (=> b!688508 (= e!432630 (Cons!7368 (h!12769 (t!87190 lt!284142)) (++!1935 (t!87190 (t!87190 lt!284142)) lt!284147)))))

(declare-fun d!232040 () Bool)

(assert (=> d!232040 e!432629))

(declare-fun res!312821 () Bool)

(assert (=> d!232040 (=> (not res!312821) (not e!432629))))

(assert (=> d!232040 (= res!312821 (= (content!1183 lt!284196) ((_ map or) (content!1183 (t!87190 lt!284142)) (content!1183 lt!284147))))))

(assert (=> d!232040 (= lt!284196 e!432630)))

(declare-fun c!121389 () Bool)

(assert (=> d!232040 (= c!121389 ((_ is Nil!7368) (t!87190 lt!284142)))))

(assert (=> d!232040 (= (++!1935 (t!87190 lt!284142) lt!284147) lt!284196)))

(declare-fun b!688510 () Bool)

(assert (=> b!688510 (= e!432629 (or (not (= lt!284147 Nil!7368)) (= lt!284196 (t!87190 lt!284142))))))

(assert (= (and d!232040 c!121389) b!688507))

(assert (= (and d!232040 (not c!121389)) b!688508))

(assert (= (and d!232040 res!312821) b!688509))

(assert (= (and b!688509 res!312822) b!688510))

(declare-fun m!945083 () Bool)

(assert (=> b!688509 m!945083))

(declare-fun m!945085 () Bool)

(assert (=> b!688509 m!945085))

(assert (=> b!688509 m!944865))

(declare-fun m!945087 () Bool)

(assert (=> b!688508 m!945087))

(declare-fun m!945089 () Bool)

(assert (=> d!232040 m!945089))

(declare-fun m!945091 () Bool)

(assert (=> d!232040 m!945091))

(assert (=> d!232040 m!944873))

(assert (=> b!688255 d!232040))

(declare-fun bs!135950 () Bool)

(declare-fun d!232042 () Bool)

(assert (= bs!135950 (and d!232042 d!232010)))

(declare-fun lambda!21398 () Int)

(assert (=> bs!135950 (= lambda!21398 lambda!21390)))

(declare-fun bs!135951 () Bool)

(assert (= bs!135951 (and d!232042 d!232012)))

(assert (=> bs!135951 (= lambda!21398 lambda!21391)))

(declare-fun bs!135952 () Bool)

(assert (= bs!135952 (and d!232042 d!232028)))

(assert (=> bs!135952 (= lambda!21398 lambda!21394)))

(declare-fun bs!135953 () Bool)

(assert (= bs!135953 (and d!232042 d!232032)))

(assert (=> bs!135953 (= lambda!21398 lambda!21396)))

(declare-fun bs!135954 () Bool)

(assert (= bs!135954 (and d!232042 d!232002)))

(assert (=> bs!135954 (= lambda!21398 lambda!21388)))

(declare-fun bs!135955 () Bool)

(assert (= bs!135955 (and d!232042 d!232006)))

(assert (=> bs!135955 (= lambda!21398 lambda!21389)))

(declare-fun bs!135956 () Bool)

(assert (= bs!135956 (and d!232042 d!232026)))

(assert (=> bs!135956 (= lambda!21398 lambda!21393)))

(declare-fun bs!135957 () Bool)

(assert (= bs!135957 (and d!232042 d!232016)))

(assert (=> bs!135957 (= lambda!21398 lambda!21392)))

(declare-fun bs!135958 () Bool)

(assert (= bs!135958 (and d!232042 d!232030)))

(assert (=> bs!135958 (= lambda!21398 lambda!21395)))

(declare-fun bs!135959 () Bool)

(assert (= bs!135959 (and d!232042 d!232034)))

(assert (=> bs!135959 (= lambda!21398 lambda!21397)))

(assert (=> d!232042 (= (inv!9479 setElem!3554) (forall!1941 (exprs!731 setElem!3554) lambda!21398))))

(declare-fun bs!135960 () Bool)

(assert (= bs!135960 d!232042))

(declare-fun m!945093 () Bool)

(assert (=> bs!135960 m!945093))

(assert (=> setNonEmpty!3554 d!232042))

(declare-fun d!232044 () Bool)

(declare-fun res!312823 () Bool)

(declare-fun e!432631 () Bool)

(assert (=> d!232044 (=> (not res!312823) (not e!432631))))

(assert (=> d!232044 (= res!312823 (<= (size!6052 (list!3112 (xs!5262 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) 512))))

(assert (=> d!232044 (= (inv!9477 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) e!432631)))

(declare-fun b!688511 () Bool)

(declare-fun res!312824 () Bool)

(assert (=> b!688511 (=> (not res!312824) (not e!432631))))

(assert (=> b!688511 (= res!312824 (= (csize!5457 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) (size!6052 (list!3112 (xs!5262 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))))

(declare-fun b!688512 () Bool)

(assert (=> b!688512 (= e!432631 (and (> (csize!5457 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) 0) (<= (csize!5457 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) 512)))))

(assert (= (and d!232044 res!312823) b!688511))

(assert (= (and b!688511 res!312824) b!688512))

(declare-fun m!945095 () Bool)

(assert (=> d!232044 m!945095))

(assert (=> d!232044 m!945095))

(declare-fun m!945097 () Bool)

(assert (=> d!232044 m!945097))

(assert (=> b!688511 m!945095))

(assert (=> b!688511 m!945095))

(assert (=> b!688511 m!945097))

(assert (=> b!688245 d!232044))

(declare-fun d!232046 () Bool)

(declare-fun res!312825 () Bool)

(declare-fun e!432632 () Bool)

(assert (=> d!232046 (=> (not res!312825) (not e!432632))))

(assert (=> d!232046 (= res!312825 (= (csize!5456 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) (+ (size!6055 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) (size!6055 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))))

(assert (=> d!232046 (= (inv!9476 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) e!432632)))

(declare-fun b!688513 () Bool)

(declare-fun res!312826 () Bool)

(assert (=> b!688513 (=> (not res!312826) (not e!432632))))

(assert (=> b!688513 (= res!312826 (and (not (= (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) Empty!2613)) (not (= (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) Empty!2613))))))

(declare-fun b!688514 () Bool)

(declare-fun res!312827 () Bool)

(assert (=> b!688514 (=> (not res!312827) (not e!432632))))

(assert (=> b!688514 (= res!312827 (= (cheight!2824 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) (+ (max!0 (height!314 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) (height!314 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) 1)))))

(declare-fun b!688515 () Bool)

(assert (=> b!688515 (= e!432632 (<= 0 (cheight!2824 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(assert (= (and d!232046 res!312825) b!688513))

(assert (= (and b!688513 res!312826) b!688514))

(assert (= (and b!688514 res!312827) b!688515))

(declare-fun m!945099 () Bool)

(assert (=> d!232046 m!945099))

(declare-fun m!945101 () Bool)

(assert (=> d!232046 m!945101))

(declare-fun m!945103 () Bool)

(assert (=> b!688514 m!945103))

(declare-fun m!945105 () Bool)

(assert (=> b!688514 m!945105))

(assert (=> b!688514 m!945103))

(assert (=> b!688514 m!945105))

(declare-fun m!945107 () Bool)

(assert (=> b!688514 m!945107))

(assert (=> b!688243 d!232046))

(declare-fun bs!135961 () Bool)

(declare-fun d!232048 () Bool)

(assert (= bs!135961 (and d!232048 d!232010)))

(declare-fun lambda!21399 () Int)

(assert (=> bs!135961 (= lambda!21399 lambda!21390)))

(declare-fun bs!135962 () Bool)

(assert (= bs!135962 (and d!232048 d!232012)))

(assert (=> bs!135962 (= lambda!21399 lambda!21391)))

(declare-fun bs!135963 () Bool)

(assert (= bs!135963 (and d!232048 d!232028)))

(assert (=> bs!135963 (= lambda!21399 lambda!21394)))

(declare-fun bs!135964 () Bool)

(assert (= bs!135964 (and d!232048 d!232032)))

(assert (=> bs!135964 (= lambda!21399 lambda!21396)))

(declare-fun bs!135965 () Bool)

(assert (= bs!135965 (and d!232048 d!232002)))

(assert (=> bs!135965 (= lambda!21399 lambda!21388)))

(declare-fun bs!135966 () Bool)

(assert (= bs!135966 (and d!232048 d!232042)))

(assert (=> bs!135966 (= lambda!21399 lambda!21398)))

(declare-fun bs!135967 () Bool)

(assert (= bs!135967 (and d!232048 d!232006)))

(assert (=> bs!135967 (= lambda!21399 lambda!21389)))

(declare-fun bs!135968 () Bool)

(assert (= bs!135968 (and d!232048 d!232026)))

(assert (=> bs!135968 (= lambda!21399 lambda!21393)))

(declare-fun bs!135969 () Bool)

(assert (= bs!135969 (and d!232048 d!232016)))

(assert (=> bs!135969 (= lambda!21399 lambda!21392)))

(declare-fun bs!135970 () Bool)

(assert (= bs!135970 (and d!232048 d!232030)))

(assert (=> bs!135970 (= lambda!21399 lambda!21395)))

(declare-fun bs!135971 () Bool)

(assert (= bs!135971 (and d!232048 d!232034)))

(assert (=> bs!135971 (= lambda!21399 lambda!21397)))

(assert (=> d!232048 (= (inv!9479 setElem!3537) (forall!1941 (exprs!731 setElem!3537) lambda!21399))))

(declare-fun bs!135972 () Bool)

(assert (= bs!135972 d!232048))

(declare-fun m!945109 () Bool)

(assert (=> bs!135972 m!945109))

(assert (=> setNonEmpty!3537 d!232048))

(declare-fun d!232050 () Bool)

(assert (=> d!232050 true))

(declare-fun order!5335 () Int)

(declare-fun lambda!21402 () Int)

(declare-fun order!5333 () Int)

(declare-fun dynLambda!3873 (Int Int) Int)

(declare-fun dynLambda!3874 (Int Int) Int)

(assert (=> d!232050 (< (dynLambda!3873 order!5333 (toChars!2299 (transformation!1484 (h!12773 rules!1357)))) (dynLambda!3874 order!5335 lambda!21402))))

(assert (=> d!232050 true))

(declare-fun order!5337 () Int)

(declare-fun dynLambda!3875 (Int Int) Int)

(assert (=> d!232050 (< (dynLambda!3875 order!5337 (toValue!2440 (transformation!1484 (h!12773 rules!1357)))) (dynLambda!3874 order!5335 lambda!21402))))

(declare-fun Forall!354 (Int) Bool)

(assert (=> d!232050 (= (semiInverseModEq!567 (toChars!2299 (transformation!1484 (h!12773 rules!1357))) (toValue!2440 (transformation!1484 (h!12773 rules!1357)))) (Forall!354 lambda!21402))))

(declare-fun bs!135973 () Bool)

(assert (= bs!135973 d!232050))

(declare-fun m!945111 () Bool)

(assert (=> bs!135973 m!945111))

(assert (=> d!231972 d!232050))

(declare-fun d!232052 () Bool)

(declare-fun res!312834 () Bool)

(declare-fun e!432637 () Bool)

(assert (=> d!232052 (=> (not res!312834) (not e!432637))))

(declare-fun valid!623 (MutableMap!707) Bool)

(assert (=> d!232052 (= res!312834 (valid!623 (cache!1094 cacheDown!470)))))

(assert (=> d!232052 (= (validCacheMapDown!57 (cache!1094 cacheDown!470)) e!432637)))

(declare-fun b!688526 () Bool)

(declare-fun res!312835 () Bool)

(assert (=> b!688526 (=> (not res!312835) (not e!432637))))

(declare-fun invariantList!129 (List!7383) Bool)

(declare-datatypes ((ListMap!307 0))(
  ( (ListMap!308 (toList!494 List!7383)) )
))
(declare-fun map!1638 (MutableMap!707) ListMap!307)

(assert (=> b!688526 (= res!312835 (invariantList!129 (toList!494 (map!1638 (cache!1094 cacheDown!470)))))))

(declare-fun b!688527 () Bool)

(declare-fun lambda!21405 () Int)

(declare-fun forall!1942 (List!7383 Int) Bool)

(assert (=> b!688527 (= e!432637 (forall!1942 (toList!494 (map!1638 (cache!1094 cacheDown!470))) lambda!21405))))

(assert (= (and d!232052 res!312834) b!688526))

(assert (= (and b!688526 res!312835) b!688527))

(declare-fun m!945114 () Bool)

(assert (=> d!232052 m!945114))

(declare-fun m!945116 () Bool)

(assert (=> b!688526 m!945116))

(declare-fun m!945118 () Bool)

(assert (=> b!688526 m!945118))

(assert (=> b!688527 m!945116))

(declare-fun m!945120 () Bool)

(assert (=> b!688527 m!945120))

(assert (=> b!688269 d!232052))

(declare-fun bs!135974 () Bool)

(declare-fun d!232054 () Bool)

(assert (= bs!135974 (and d!232054 d!232048)))

(declare-fun lambda!21406 () Int)

(assert (=> bs!135974 (= lambda!21406 lambda!21399)))

(declare-fun bs!135975 () Bool)

(assert (= bs!135975 (and d!232054 d!232010)))

(assert (=> bs!135975 (= lambda!21406 lambda!21390)))

(declare-fun bs!135976 () Bool)

(assert (= bs!135976 (and d!232054 d!232012)))

(assert (=> bs!135976 (= lambda!21406 lambda!21391)))

(declare-fun bs!135977 () Bool)

(assert (= bs!135977 (and d!232054 d!232028)))

(assert (=> bs!135977 (= lambda!21406 lambda!21394)))

(declare-fun bs!135978 () Bool)

(assert (= bs!135978 (and d!232054 d!232032)))

(assert (=> bs!135978 (= lambda!21406 lambda!21396)))

(declare-fun bs!135979 () Bool)

(assert (= bs!135979 (and d!232054 d!232002)))

(assert (=> bs!135979 (= lambda!21406 lambda!21388)))

(declare-fun bs!135980 () Bool)

(assert (= bs!135980 (and d!232054 d!232042)))

(assert (=> bs!135980 (= lambda!21406 lambda!21398)))

(declare-fun bs!135981 () Bool)

(assert (= bs!135981 (and d!232054 d!232006)))

(assert (=> bs!135981 (= lambda!21406 lambda!21389)))

(declare-fun bs!135982 () Bool)

(assert (= bs!135982 (and d!232054 d!232026)))

(assert (=> bs!135982 (= lambda!21406 lambda!21393)))

(declare-fun bs!135983 () Bool)

(assert (= bs!135983 (and d!232054 d!232016)))

(assert (=> bs!135983 (= lambda!21406 lambda!21392)))

(declare-fun bs!135984 () Bool)

(assert (= bs!135984 (and d!232054 d!232030)))

(assert (=> bs!135984 (= lambda!21406 lambda!21395)))

(declare-fun bs!135985 () Bool)

(assert (= bs!135985 (and d!232054 d!232034)))

(assert (=> bs!135985 (= lambda!21406 lambda!21397)))

(assert (=> d!232054 (= (inv!9479 (_2!4259 (_1!4260 (h!12770 mapDefault!2941)))) (forall!1941 (exprs!731 (_2!4259 (_1!4260 (h!12770 mapDefault!2941)))) lambda!21406))))

(declare-fun bs!135986 () Bool)

(assert (= bs!135986 d!232054))

(declare-fun m!945122 () Bool)

(assert (=> bs!135986 m!945122))

(assert (=> b!688313 d!232054))

(declare-fun d!232056 () Bool)

(assert (=> d!232056 (= (inv!9478 (xs!5262 (c!121356 input!756))) (<= (size!6052 (innerList!2671 (xs!5262 (c!121356 input!756)))) 2147483647))))

(declare-fun bs!135987 () Bool)

(assert (= bs!135987 d!232056))

(declare-fun m!945124 () Bool)

(assert (=> bs!135987 m!945124))

(assert (=> b!688279 d!232056))

(declare-fun bs!135988 () Bool)

(declare-fun d!232058 () Bool)

(assert (= bs!135988 (and d!232058 d!232048)))

(declare-fun lambda!21407 () Int)

(assert (=> bs!135988 (= lambda!21407 lambda!21399)))

(declare-fun bs!135989 () Bool)

(assert (= bs!135989 (and d!232058 d!232010)))

(assert (=> bs!135989 (= lambda!21407 lambda!21390)))

(declare-fun bs!135990 () Bool)

(assert (= bs!135990 (and d!232058 d!232012)))

(assert (=> bs!135990 (= lambda!21407 lambda!21391)))

(declare-fun bs!135991 () Bool)

(assert (= bs!135991 (and d!232058 d!232028)))

(assert (=> bs!135991 (= lambda!21407 lambda!21394)))

(declare-fun bs!135992 () Bool)

(assert (= bs!135992 (and d!232058 d!232032)))

(assert (=> bs!135992 (= lambda!21407 lambda!21396)))

(declare-fun bs!135993 () Bool)

(assert (= bs!135993 (and d!232058 d!232002)))

(assert (=> bs!135993 (= lambda!21407 lambda!21388)))

(declare-fun bs!135994 () Bool)

(assert (= bs!135994 (and d!232058 d!232042)))

(assert (=> bs!135994 (= lambda!21407 lambda!21398)))

(declare-fun bs!135995 () Bool)

(assert (= bs!135995 (and d!232058 d!232006)))

(assert (=> bs!135995 (= lambda!21407 lambda!21389)))

(declare-fun bs!135996 () Bool)

(assert (= bs!135996 (and d!232058 d!232026)))

(assert (=> bs!135996 (= lambda!21407 lambda!21393)))

(declare-fun bs!135997 () Bool)

(assert (= bs!135997 (and d!232058 d!232016)))

(assert (=> bs!135997 (= lambda!21407 lambda!21392)))

(declare-fun bs!135998 () Bool)

(assert (= bs!135998 (and d!232058 d!232030)))

(assert (=> bs!135998 (= lambda!21407 lambda!21395)))

(declare-fun bs!135999 () Bool)

(assert (= bs!135999 (and d!232058 d!232054)))

(assert (=> bs!135999 (= lambda!21407 lambda!21406)))

(declare-fun bs!136000 () Bool)

(assert (= bs!136000 (and d!232058 d!232034)))

(assert (=> bs!136000 (= lambda!21407 lambda!21397)))

(assert (=> d!232058 (= (inv!9479 setElem!3563) (forall!1941 (exprs!731 setElem!3563) lambda!21407))))

(declare-fun bs!136001 () Bool)

(assert (= bs!136001 d!232058))

(declare-fun m!945126 () Bool)

(assert (=> bs!136001 m!945126))

(assert (=> setNonEmpty!3563 d!232058))

(declare-fun d!232060 () Bool)

(declare-fun res!312840 () Bool)

(declare-fun e!432642 () Bool)

(assert (=> d!232060 (=> res!312840 e!432642)))

(assert (=> d!232060 (= res!312840 ((_ is Nil!7372) rules!1357))))

(assert (=> d!232060 (= (noDuplicateTag!524 thiss!12183 rules!1357 Nil!7373) e!432642)))

(declare-fun b!688532 () Bool)

(declare-fun e!432643 () Bool)

(assert (=> b!688532 (= e!432642 e!432643)))

(declare-fun res!312841 () Bool)

(assert (=> b!688532 (=> (not res!312841) (not e!432643))))

(declare-fun contains!1563 (List!7387 String!9362) Bool)

(assert (=> b!688532 (= res!312841 (not (contains!1563 Nil!7373 (tag!1746 (h!12773 rules!1357)))))))

(declare-fun b!688533 () Bool)

(assert (=> b!688533 (= e!432643 (noDuplicateTag!524 thiss!12183 (t!87194 rules!1357) (Cons!7373 (tag!1746 (h!12773 rules!1357)) Nil!7373)))))

(assert (= (and d!232060 (not res!312840)) b!688532))

(assert (= (and b!688532 res!312841) b!688533))

(declare-fun m!945128 () Bool)

(assert (=> b!688532 m!945128))

(declare-fun m!945130 () Bool)

(assert (=> b!688533 m!945130))

(assert (=> b!688242 d!232060))

(declare-fun bs!136002 () Bool)

(declare-fun d!232062 () Bool)

(assert (= bs!136002 (and d!232062 d!232048)))

(declare-fun lambda!21408 () Int)

(assert (=> bs!136002 (= lambda!21408 lambda!21399)))

(declare-fun bs!136003 () Bool)

(assert (= bs!136003 (and d!232062 d!232010)))

(assert (=> bs!136003 (= lambda!21408 lambda!21390)))

(declare-fun bs!136004 () Bool)

(assert (= bs!136004 (and d!232062 d!232012)))

(assert (=> bs!136004 (= lambda!21408 lambda!21391)))

(declare-fun bs!136005 () Bool)

(assert (= bs!136005 (and d!232062 d!232028)))

(assert (=> bs!136005 (= lambda!21408 lambda!21394)))

(declare-fun bs!136006 () Bool)

(assert (= bs!136006 (and d!232062 d!232032)))

(assert (=> bs!136006 (= lambda!21408 lambda!21396)))

(declare-fun bs!136007 () Bool)

(assert (= bs!136007 (and d!232062 d!232002)))

(assert (=> bs!136007 (= lambda!21408 lambda!21388)))

(declare-fun bs!136008 () Bool)

(assert (= bs!136008 (and d!232062 d!232042)))

(assert (=> bs!136008 (= lambda!21408 lambda!21398)))

(declare-fun bs!136009 () Bool)

(assert (= bs!136009 (and d!232062 d!232006)))

(assert (=> bs!136009 (= lambda!21408 lambda!21389)))

(declare-fun bs!136010 () Bool)

(assert (= bs!136010 (and d!232062 d!232026)))

(assert (=> bs!136010 (= lambda!21408 lambda!21393)))

(declare-fun bs!136011 () Bool)

(assert (= bs!136011 (and d!232062 d!232016)))

(assert (=> bs!136011 (= lambda!21408 lambda!21392)))

(declare-fun bs!136012 () Bool)

(assert (= bs!136012 (and d!232062 d!232030)))

(assert (=> bs!136012 (= lambda!21408 lambda!21395)))

(declare-fun bs!136013 () Bool)

(assert (= bs!136013 (and d!232062 d!232054)))

(assert (=> bs!136013 (= lambda!21408 lambda!21406)))

(declare-fun bs!136014 () Bool)

(assert (= bs!136014 (and d!232062 d!232034)))

(assert (=> bs!136014 (= lambda!21408 lambda!21397)))

(declare-fun bs!136015 () Bool)

(assert (= bs!136015 (and d!232062 d!232058)))

(assert (=> bs!136015 (= lambda!21408 lambda!21407)))

(assert (=> d!232062 (= (inv!9479 (_1!4255 (_1!4256 (h!12767 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))))) (forall!1941 (exprs!731 (_1!4255 (_1!4256 (h!12767 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))))) lambda!21408))))

(declare-fun bs!136016 () Bool)

(assert (= bs!136016 d!232062))

(declare-fun m!945132 () Bool)

(assert (=> bs!136016 m!945132))

(assert (=> b!688330 d!232062))

(declare-fun bs!136017 () Bool)

(declare-fun d!232064 () Bool)

(assert (= bs!136017 (and d!232064 d!232048)))

(declare-fun lambda!21409 () Int)

(assert (=> bs!136017 (= lambda!21409 lambda!21399)))

(declare-fun bs!136018 () Bool)

(assert (= bs!136018 (and d!232064 d!232010)))

(assert (=> bs!136018 (= lambda!21409 lambda!21390)))

(declare-fun bs!136019 () Bool)

(assert (= bs!136019 (and d!232064 d!232012)))

(assert (=> bs!136019 (= lambda!21409 lambda!21391)))

(declare-fun bs!136020 () Bool)

(assert (= bs!136020 (and d!232064 d!232028)))

(assert (=> bs!136020 (= lambda!21409 lambda!21394)))

(declare-fun bs!136021 () Bool)

(assert (= bs!136021 (and d!232064 d!232032)))

(assert (=> bs!136021 (= lambda!21409 lambda!21396)))

(declare-fun bs!136022 () Bool)

(assert (= bs!136022 (and d!232064 d!232042)))

(assert (=> bs!136022 (= lambda!21409 lambda!21398)))

(declare-fun bs!136023 () Bool)

(assert (= bs!136023 (and d!232064 d!232006)))

(assert (=> bs!136023 (= lambda!21409 lambda!21389)))

(declare-fun bs!136024 () Bool)

(assert (= bs!136024 (and d!232064 d!232026)))

(assert (=> bs!136024 (= lambda!21409 lambda!21393)))

(declare-fun bs!136025 () Bool)

(assert (= bs!136025 (and d!232064 d!232016)))

(assert (=> bs!136025 (= lambda!21409 lambda!21392)))

(declare-fun bs!136026 () Bool)

(assert (= bs!136026 (and d!232064 d!232030)))

(assert (=> bs!136026 (= lambda!21409 lambda!21395)))

(declare-fun bs!136027 () Bool)

(assert (= bs!136027 (and d!232064 d!232002)))

(assert (=> bs!136027 (= lambda!21409 lambda!21388)))

(declare-fun bs!136028 () Bool)

(assert (= bs!136028 (and d!232064 d!232062)))

(assert (=> bs!136028 (= lambda!21409 lambda!21408)))

(declare-fun bs!136029 () Bool)

(assert (= bs!136029 (and d!232064 d!232054)))

(assert (=> bs!136029 (= lambda!21409 lambda!21406)))

(declare-fun bs!136030 () Bool)

(assert (= bs!136030 (and d!232064 d!232034)))

(assert (=> bs!136030 (= lambda!21409 lambda!21397)))

(declare-fun bs!136031 () Bool)

(assert (= bs!136031 (and d!232064 d!232058)))

(assert (=> bs!136031 (= lambda!21409 lambda!21407)))

(assert (=> d!232064 (= (inv!9479 setElem!3538) (forall!1941 (exprs!731 setElem!3538) lambda!21409))))

(declare-fun bs!136032 () Bool)

(assert (= bs!136032 d!232064))

(declare-fun m!945134 () Bool)

(assert (=> bs!136032 m!945134))

(assert (=> setNonEmpty!3538 d!232064))

(declare-fun d!232066 () Bool)

(declare-fun c!121392 () Bool)

(assert (=> d!232066 (= c!121392 ((_ is Nil!7368) lt!284159))))

(declare-fun e!432646 () (InoxSet C!4244))

(assert (=> d!232066 (= (content!1183 lt!284159) e!432646)))

(declare-fun b!688538 () Bool)

(assert (=> b!688538 (= e!432646 ((as const (Array C!4244 Bool)) false))))

(declare-fun b!688539 () Bool)

(assert (=> b!688539 (= e!432646 ((_ map or) (store ((as const (Array C!4244 Bool)) false) (h!12769 lt!284159) true) (content!1183 (t!87190 lt!284159))))))

(assert (= (and d!232066 c!121392) b!688538))

(assert (= (and d!232066 (not c!121392)) b!688539))

(declare-fun m!945136 () Bool)

(assert (=> b!688539 m!945136))

(declare-fun m!945138 () Bool)

(assert (=> b!688539 m!945138))

(assert (=> d!231952 d!232066))

(declare-fun d!232068 () Bool)

(declare-fun c!121393 () Bool)

(assert (=> d!232068 (= c!121393 ((_ is Nil!7368) lt!284142))))

(declare-fun e!432647 () (InoxSet C!4244))

(assert (=> d!232068 (= (content!1183 lt!284142) e!432647)))

(declare-fun b!688540 () Bool)

(assert (=> b!688540 (= e!432647 ((as const (Array C!4244 Bool)) false))))

(declare-fun b!688541 () Bool)

(assert (=> b!688541 (= e!432647 ((_ map or) (store ((as const (Array C!4244 Bool)) false) (h!12769 lt!284142) true) (content!1183 (t!87190 lt!284142))))))

(assert (= (and d!232068 c!121393) b!688540))

(assert (= (and d!232068 (not c!121393)) b!688541))

(declare-fun m!945140 () Bool)

(assert (=> b!688541 m!945140))

(assert (=> b!688541 m!945091))

(assert (=> d!231952 d!232068))

(declare-fun d!232070 () Bool)

(declare-fun c!121394 () Bool)

(assert (=> d!232070 (= c!121394 ((_ is Nil!7368) lt!284147))))

(declare-fun e!432648 () (InoxSet C!4244))

(assert (=> d!232070 (= (content!1183 lt!284147) e!432648)))

(declare-fun b!688542 () Bool)

(assert (=> b!688542 (= e!432648 ((as const (Array C!4244 Bool)) false))))

(declare-fun b!688543 () Bool)

(assert (=> b!688543 (= e!432648 ((_ map or) (store ((as const (Array C!4244 Bool)) false) (h!12769 lt!284147) true) (content!1183 (t!87190 lt!284147))))))

(assert (= (and d!232070 c!121394) b!688542))

(assert (= (and d!232070 (not c!121394)) b!688543))

(declare-fun m!945142 () Bool)

(assert (=> b!688543 m!945142))

(declare-fun m!945144 () Bool)

(assert (=> b!688543 m!945144))

(assert (=> d!231952 d!232070))

(declare-fun d!232072 () Bool)

(declare-fun c!121395 () Bool)

(assert (=> d!232072 (= c!121395 ((_ is Empty!2614) (c!121357 (BalanceConc!5241 Empty!2614))))))

(declare-fun e!432649 () List!7385)

(assert (=> d!232072 (= (list!3110 (c!121357 (BalanceConc!5241 Empty!2614))) e!432649)))

(declare-fun b!688544 () Bool)

(assert (=> b!688544 (= e!432649 Nil!7371)))

(declare-fun b!688547 () Bool)

(declare-fun e!432650 () List!7385)

(assert (=> b!688547 (= e!432650 (++!1936 (list!3110 (left!5951 (c!121357 (BalanceConc!5241 Empty!2614)))) (list!3110 (right!6281 (c!121357 (BalanceConc!5241 Empty!2614))))))))

(declare-fun b!688546 () Bool)

(assert (=> b!688546 (= e!432650 (list!3113 (xs!5263 (c!121357 (BalanceConc!5241 Empty!2614)))))))

(declare-fun b!688545 () Bool)

(assert (=> b!688545 (= e!432649 e!432650)))

(declare-fun c!121396 () Bool)

(assert (=> b!688545 (= c!121396 ((_ is Leaf!3878) (c!121357 (BalanceConc!5241 Empty!2614))))))

(assert (= (and d!232072 c!121395) b!688544))

(assert (= (and d!232072 (not c!121395)) b!688545))

(assert (= (and b!688545 c!121396) b!688546))

(assert (= (and b!688545 (not c!121396)) b!688547))

(declare-fun m!945146 () Bool)

(assert (=> b!688547 m!945146))

(declare-fun m!945148 () Bool)

(assert (=> b!688547 m!945148))

(assert (=> b!688547 m!945146))

(assert (=> b!688547 m!945148))

(declare-fun m!945150 () Bool)

(assert (=> b!688547 m!945150))

(declare-fun m!945152 () Bool)

(assert (=> b!688546 m!945152))

(assert (=> d!231944 d!232072))

(declare-fun bs!136033 () Bool)

(declare-fun d!232074 () Bool)

(assert (= bs!136033 (and d!232074 d!232048)))

(declare-fun lambda!21410 () Int)

(assert (=> bs!136033 (= lambda!21410 lambda!21399)))

(declare-fun bs!136034 () Bool)

(assert (= bs!136034 (and d!232074 d!232010)))

(assert (=> bs!136034 (= lambda!21410 lambda!21390)))

(declare-fun bs!136035 () Bool)

(assert (= bs!136035 (and d!232074 d!232012)))

(assert (=> bs!136035 (= lambda!21410 lambda!21391)))

(declare-fun bs!136036 () Bool)

(assert (= bs!136036 (and d!232074 d!232032)))

(assert (=> bs!136036 (= lambda!21410 lambda!21396)))

(declare-fun bs!136037 () Bool)

(assert (= bs!136037 (and d!232074 d!232042)))

(assert (=> bs!136037 (= lambda!21410 lambda!21398)))

(declare-fun bs!136038 () Bool)

(assert (= bs!136038 (and d!232074 d!232006)))

(assert (=> bs!136038 (= lambda!21410 lambda!21389)))

(declare-fun bs!136039 () Bool)

(assert (= bs!136039 (and d!232074 d!232026)))

(assert (=> bs!136039 (= lambda!21410 lambda!21393)))

(declare-fun bs!136040 () Bool)

(assert (= bs!136040 (and d!232074 d!232016)))

(assert (=> bs!136040 (= lambda!21410 lambda!21392)))

(declare-fun bs!136041 () Bool)

(assert (= bs!136041 (and d!232074 d!232030)))

(assert (=> bs!136041 (= lambda!21410 lambda!21395)))

(declare-fun bs!136042 () Bool)

(assert (= bs!136042 (and d!232074 d!232028)))

(assert (=> bs!136042 (= lambda!21410 lambda!21394)))

(declare-fun bs!136043 () Bool)

(assert (= bs!136043 (and d!232074 d!232064)))

(assert (=> bs!136043 (= lambda!21410 lambda!21409)))

(declare-fun bs!136044 () Bool)

(assert (= bs!136044 (and d!232074 d!232002)))

(assert (=> bs!136044 (= lambda!21410 lambda!21388)))

(declare-fun bs!136045 () Bool)

(assert (= bs!136045 (and d!232074 d!232062)))

(assert (=> bs!136045 (= lambda!21410 lambda!21408)))

(declare-fun bs!136046 () Bool)

(assert (= bs!136046 (and d!232074 d!232054)))

(assert (=> bs!136046 (= lambda!21410 lambda!21406)))

(declare-fun bs!136047 () Bool)

(assert (= bs!136047 (and d!232074 d!232034)))

(assert (=> bs!136047 (= lambda!21410 lambda!21397)))

(declare-fun bs!136048 () Bool)

(assert (= bs!136048 (and d!232074 d!232058)))

(assert (=> bs!136048 (= lambda!21410 lambda!21407)))

(assert (=> d!232074 (= (inv!9479 setElem!3542) (forall!1941 (exprs!731 setElem!3542) lambda!21410))))

(declare-fun bs!136049 () Bool)

(assert (= bs!136049 d!232074))

(declare-fun m!945154 () Bool)

(assert (=> bs!136049 m!945154))

(assert (=> setNonEmpty!3542 d!232074))

(declare-fun b!688559 () Bool)

(declare-fun e!432656 () List!7382)

(assert (=> b!688559 (= e!432656 (++!1935 (list!3111 (left!5950 (c!121356 input!756))) (list!3111 (right!6280 (c!121356 input!756)))))))

(declare-fun b!688557 () Bool)

(declare-fun e!432655 () List!7382)

(assert (=> b!688557 (= e!432655 e!432656)))

(declare-fun c!121402 () Bool)

(assert (=> b!688557 (= c!121402 ((_ is Leaf!3877) (c!121356 input!756)))))

(declare-fun d!232076 () Bool)

(declare-fun c!121401 () Bool)

(assert (=> d!232076 (= c!121401 ((_ is Empty!2613) (c!121356 input!756)))))

(assert (=> d!232076 (= (list!3111 (c!121356 input!756)) e!432655)))

(declare-fun b!688556 () Bool)

(assert (=> b!688556 (= e!432655 Nil!7368)))

(declare-fun b!688558 () Bool)

(assert (=> b!688558 (= e!432656 (list!3112 (xs!5262 (c!121356 input!756))))))

(assert (= (and d!232076 c!121401) b!688556))

(assert (= (and d!232076 (not c!121401)) b!688557))

(assert (= (and b!688557 c!121402) b!688558))

(assert (= (and b!688557 (not c!121402)) b!688559))

(declare-fun m!945156 () Bool)

(assert (=> b!688559 m!945156))

(declare-fun m!945158 () Bool)

(assert (=> b!688559 m!945158))

(assert (=> b!688559 m!945156))

(assert (=> b!688559 m!945158))

(declare-fun m!945160 () Bool)

(assert (=> b!688559 m!945160))

(assert (=> b!688558 m!945041))

(assert (=> d!231954 d!232076))

(declare-fun d!232078 () Bool)

(declare-fun lt!284199 () Int)

(assert (=> d!232078 (= lt!284199 (size!6052 (list!3108 (_2!4261 lt!284156))))))

(assert (=> d!232078 (= lt!284199 (size!6055 (c!121356 (_2!4261 lt!284156))))))

(assert (=> d!232078 (= (size!6051 (_2!4261 lt!284156)) lt!284199)))

(declare-fun bs!136050 () Bool)

(assert (= bs!136050 d!232078))

(assert (=> bs!136050 m!944843))

(assert (=> bs!136050 m!944843))

(declare-fun m!945162 () Bool)

(assert (=> bs!136050 m!945162))

(declare-fun m!945164 () Bool)

(assert (=> bs!136050 m!945164))

(assert (=> b!688236 d!232078))

(declare-fun d!232080 () Bool)

(declare-fun lt!284200 () Int)

(assert (=> d!232080 (= lt!284200 (size!6052 (list!3108 (BalanceConc!5239 Empty!2613))))))

(assert (=> d!232080 (= lt!284200 (size!6055 (c!121356 (BalanceConc!5239 Empty!2613))))))

(assert (=> d!232080 (= (size!6051 (BalanceConc!5239 Empty!2613)) lt!284200)))

(declare-fun bs!136051 () Bool)

(assert (= bs!136051 d!232080))

(assert (=> bs!136051 m!944777))

(assert (=> bs!136051 m!944777))

(assert (=> bs!136051 m!945053))

(declare-fun m!945166 () Bool)

(assert (=> bs!136051 m!945166))

(assert (=> b!688236 d!232080))

(declare-fun bs!136052 () Bool)

(declare-fun d!232082 () Bool)

(assert (= bs!136052 (and d!232082 d!232048)))

(declare-fun lambda!21411 () Int)

(assert (=> bs!136052 (= lambda!21411 lambda!21399)))

(declare-fun bs!136053 () Bool)

(assert (= bs!136053 (and d!232082 d!232010)))

(assert (=> bs!136053 (= lambda!21411 lambda!21390)))

(declare-fun bs!136054 () Bool)

(assert (= bs!136054 (and d!232082 d!232012)))

(assert (=> bs!136054 (= lambda!21411 lambda!21391)))

(declare-fun bs!136055 () Bool)

(assert (= bs!136055 (and d!232082 d!232032)))

(assert (=> bs!136055 (= lambda!21411 lambda!21396)))

(declare-fun bs!136056 () Bool)

(assert (= bs!136056 (and d!232082 d!232006)))

(assert (=> bs!136056 (= lambda!21411 lambda!21389)))

(declare-fun bs!136057 () Bool)

(assert (= bs!136057 (and d!232082 d!232026)))

(assert (=> bs!136057 (= lambda!21411 lambda!21393)))

(declare-fun bs!136058 () Bool)

(assert (= bs!136058 (and d!232082 d!232016)))

(assert (=> bs!136058 (= lambda!21411 lambda!21392)))

(declare-fun bs!136059 () Bool)

(assert (= bs!136059 (and d!232082 d!232030)))

(assert (=> bs!136059 (= lambda!21411 lambda!21395)))

(declare-fun bs!136060 () Bool)

(assert (= bs!136060 (and d!232082 d!232028)))

(assert (=> bs!136060 (= lambda!21411 lambda!21394)))

(declare-fun bs!136061 () Bool)

(assert (= bs!136061 (and d!232082 d!232064)))

(assert (=> bs!136061 (= lambda!21411 lambda!21409)))

(declare-fun bs!136062 () Bool)

(assert (= bs!136062 (and d!232082 d!232002)))

(assert (=> bs!136062 (= lambda!21411 lambda!21388)))

(declare-fun bs!136063 () Bool)

(assert (= bs!136063 (and d!232082 d!232062)))

(assert (=> bs!136063 (= lambda!21411 lambda!21408)))

(declare-fun bs!136064 () Bool)

(assert (= bs!136064 (and d!232082 d!232042)))

(assert (=> bs!136064 (= lambda!21411 lambda!21398)))

(declare-fun bs!136065 () Bool)

(assert (= bs!136065 (and d!232082 d!232074)))

(assert (=> bs!136065 (= lambda!21411 lambda!21410)))

(declare-fun bs!136066 () Bool)

(assert (= bs!136066 (and d!232082 d!232054)))

(assert (=> bs!136066 (= lambda!21411 lambda!21406)))

(declare-fun bs!136067 () Bool)

(assert (= bs!136067 (and d!232082 d!232034)))

(assert (=> bs!136067 (= lambda!21411 lambda!21397)))

(declare-fun bs!136068 () Bool)

(assert (= bs!136068 (and d!232082 d!232058)))

(assert (=> bs!136068 (= lambda!21411 lambda!21407)))

(assert (=> d!232082 (= (inv!9479 (_2!4259 (_1!4260 (h!12770 mapValue!2936)))) (forall!1941 (exprs!731 (_2!4259 (_1!4260 (h!12770 mapValue!2936)))) lambda!21411))))

(declare-fun bs!136069 () Bool)

(assert (= bs!136069 d!232082))

(declare-fun m!945168 () Bool)

(assert (=> bs!136069 m!945168))

(assert (=> b!688318 d!232082))

(declare-fun d!232084 () Bool)

(declare-fun res!312846 () Bool)

(declare-fun e!432659 () Bool)

(assert (=> d!232084 (=> (not res!312846) (not e!432659))))

(declare-fun valid!624 (MutableMap!705) Bool)

(assert (=> d!232084 (= res!312846 (valid!624 (cache!1092 cacheUp!457)))))

(assert (=> d!232084 (= (validCacheMapUp!57 (cache!1092 cacheUp!457)) e!432659)))

(declare-fun b!688564 () Bool)

(declare-fun res!312847 () Bool)

(assert (=> b!688564 (=> (not res!312847) (not e!432659))))

(declare-fun invariantList!130 (List!7380) Bool)

(declare-datatypes ((ListMap!309 0))(
  ( (ListMap!310 (toList!495 List!7380)) )
))
(declare-fun map!1639 (MutableMap!705) ListMap!309)

(assert (=> b!688564 (= res!312847 (invariantList!130 (toList!495 (map!1639 (cache!1092 cacheUp!457)))))))

(declare-fun b!688565 () Bool)

(declare-fun lambda!21414 () Int)

(declare-fun forall!1943 (List!7380 Int) Bool)

(assert (=> b!688565 (= e!432659 (forall!1943 (toList!495 (map!1639 (cache!1092 cacheUp!457))) lambda!21414))))

(assert (= (and d!232084 res!312846) b!688564))

(assert (= (and b!688564 res!312847) b!688565))

(declare-fun m!945171 () Bool)

(assert (=> d!232084 m!945171))

(declare-fun m!945173 () Bool)

(assert (=> b!688564 m!945173))

(declare-fun m!945175 () Bool)

(assert (=> b!688564 m!945175))

(assert (=> b!688565 m!945173))

(declare-fun m!945177 () Bool)

(assert (=> b!688565 m!945177))

(assert (=> d!231978 d!232084))

(declare-fun bs!136070 () Bool)

(declare-fun d!232086 () Bool)

(assert (= bs!136070 (and d!232086 d!232010)))

(declare-fun lambda!21415 () Int)

(assert (=> bs!136070 (= lambda!21415 lambda!21390)))

(declare-fun bs!136071 () Bool)

(assert (= bs!136071 (and d!232086 d!232012)))

(assert (=> bs!136071 (= lambda!21415 lambda!21391)))

(declare-fun bs!136072 () Bool)

(assert (= bs!136072 (and d!232086 d!232032)))

(assert (=> bs!136072 (= lambda!21415 lambda!21396)))

(declare-fun bs!136073 () Bool)

(assert (= bs!136073 (and d!232086 d!232006)))

(assert (=> bs!136073 (= lambda!21415 lambda!21389)))

(declare-fun bs!136074 () Bool)

(assert (= bs!136074 (and d!232086 d!232026)))

(assert (=> bs!136074 (= lambda!21415 lambda!21393)))

(declare-fun bs!136075 () Bool)

(assert (= bs!136075 (and d!232086 d!232016)))

(assert (=> bs!136075 (= lambda!21415 lambda!21392)))

(declare-fun bs!136076 () Bool)

(assert (= bs!136076 (and d!232086 d!232030)))

(assert (=> bs!136076 (= lambda!21415 lambda!21395)))

(declare-fun bs!136077 () Bool)

(assert (= bs!136077 (and d!232086 d!232048)))

(assert (=> bs!136077 (= lambda!21415 lambda!21399)))

(declare-fun bs!136078 () Bool)

(assert (= bs!136078 (and d!232086 d!232082)))

(assert (=> bs!136078 (= lambda!21415 lambda!21411)))

(declare-fun bs!136079 () Bool)

(assert (= bs!136079 (and d!232086 d!232028)))

(assert (=> bs!136079 (= lambda!21415 lambda!21394)))

(declare-fun bs!136080 () Bool)

(assert (= bs!136080 (and d!232086 d!232064)))

(assert (=> bs!136080 (= lambda!21415 lambda!21409)))

(declare-fun bs!136081 () Bool)

(assert (= bs!136081 (and d!232086 d!232002)))

(assert (=> bs!136081 (= lambda!21415 lambda!21388)))

(declare-fun bs!136082 () Bool)

(assert (= bs!136082 (and d!232086 d!232062)))

(assert (=> bs!136082 (= lambda!21415 lambda!21408)))

(declare-fun bs!136083 () Bool)

(assert (= bs!136083 (and d!232086 d!232042)))

(assert (=> bs!136083 (= lambda!21415 lambda!21398)))

(declare-fun bs!136084 () Bool)

(assert (= bs!136084 (and d!232086 d!232074)))

(assert (=> bs!136084 (= lambda!21415 lambda!21410)))

(declare-fun bs!136085 () Bool)

(assert (= bs!136085 (and d!232086 d!232054)))

(assert (=> bs!136085 (= lambda!21415 lambda!21406)))

(declare-fun bs!136086 () Bool)

(assert (= bs!136086 (and d!232086 d!232034)))

(assert (=> bs!136086 (= lambda!21415 lambda!21397)))

(declare-fun bs!136087 () Bool)

(assert (= bs!136087 (and d!232086 d!232058)))

(assert (=> bs!136087 (= lambda!21415 lambda!21407)))

(assert (=> d!232086 (= (inv!9479 setElem!3555) (forall!1941 (exprs!731 setElem!3555) lambda!21415))))

(declare-fun bs!136088 () Bool)

(assert (= bs!136088 d!232086))

(declare-fun m!945179 () Bool)

(assert (=> bs!136088 m!945179))

(assert (=> setNonEmpty!3555 d!232086))

(declare-fun bs!136089 () Bool)

(declare-fun d!232088 () Bool)

(assert (= bs!136089 (and d!232088 d!232010)))

(declare-fun lambda!21416 () Int)

(assert (=> bs!136089 (= lambda!21416 lambda!21390)))

(declare-fun bs!136090 () Bool)

(assert (= bs!136090 (and d!232088 d!232012)))

(assert (=> bs!136090 (= lambda!21416 lambda!21391)))

(declare-fun bs!136091 () Bool)

(assert (= bs!136091 (and d!232088 d!232032)))

(assert (=> bs!136091 (= lambda!21416 lambda!21396)))

(declare-fun bs!136092 () Bool)

(assert (= bs!136092 (and d!232088 d!232006)))

(assert (=> bs!136092 (= lambda!21416 lambda!21389)))

(declare-fun bs!136093 () Bool)

(assert (= bs!136093 (and d!232088 d!232026)))

(assert (=> bs!136093 (= lambda!21416 lambda!21393)))

(declare-fun bs!136094 () Bool)

(assert (= bs!136094 (and d!232088 d!232016)))

(assert (=> bs!136094 (= lambda!21416 lambda!21392)))

(declare-fun bs!136095 () Bool)

(assert (= bs!136095 (and d!232088 d!232048)))

(assert (=> bs!136095 (= lambda!21416 lambda!21399)))

(declare-fun bs!136096 () Bool)

(assert (= bs!136096 (and d!232088 d!232082)))

(assert (=> bs!136096 (= lambda!21416 lambda!21411)))

(declare-fun bs!136097 () Bool)

(assert (= bs!136097 (and d!232088 d!232028)))

(assert (=> bs!136097 (= lambda!21416 lambda!21394)))

(declare-fun bs!136098 () Bool)

(assert (= bs!136098 (and d!232088 d!232064)))

(assert (=> bs!136098 (= lambda!21416 lambda!21409)))

(declare-fun bs!136099 () Bool)

(assert (= bs!136099 (and d!232088 d!232002)))

(assert (=> bs!136099 (= lambda!21416 lambda!21388)))

(declare-fun bs!136100 () Bool)

(assert (= bs!136100 (and d!232088 d!232062)))

(assert (=> bs!136100 (= lambda!21416 lambda!21408)))

(declare-fun bs!136101 () Bool)

(assert (= bs!136101 (and d!232088 d!232042)))

(assert (=> bs!136101 (= lambda!21416 lambda!21398)))

(declare-fun bs!136102 () Bool)

(assert (= bs!136102 (and d!232088 d!232074)))

(assert (=> bs!136102 (= lambda!21416 lambda!21410)))

(declare-fun bs!136103 () Bool)

(assert (= bs!136103 (and d!232088 d!232030)))

(assert (=> bs!136103 (= lambda!21416 lambda!21395)))

(declare-fun bs!136104 () Bool)

(assert (= bs!136104 (and d!232088 d!232086)))

(assert (=> bs!136104 (= lambda!21416 lambda!21415)))

(declare-fun bs!136105 () Bool)

(assert (= bs!136105 (and d!232088 d!232054)))

(assert (=> bs!136105 (= lambda!21416 lambda!21406)))

(declare-fun bs!136106 () Bool)

(assert (= bs!136106 (and d!232088 d!232034)))

(assert (=> bs!136106 (= lambda!21416 lambda!21397)))

(declare-fun bs!136107 () Bool)

(assert (= bs!136107 (and d!232088 d!232058)))

(assert (=> bs!136107 (= lambda!21416 lambda!21407)))

(assert (=> d!232088 (= (inv!9479 (_1!4255 (_1!4256 (h!12767 mapDefault!2947)))) (forall!1941 (exprs!731 (_1!4255 (_1!4256 (h!12767 mapDefault!2947)))) lambda!21416))))

(declare-fun bs!136108 () Bool)

(assert (= bs!136108 d!232088))

(declare-fun m!945181 () Bool)

(assert (=> bs!136108 m!945181))

(assert (=> b!688405 d!232088))

(declare-fun d!232090 () Bool)

(declare-fun e!432662 () Bool)

(assert (=> d!232090 e!432662))

(declare-fun res!312850 () Bool)

(assert (=> d!232090 (=> (not res!312850) (not e!432662))))

(declare-fun isBalanced!691 (Conc!2614) Bool)

(declare-fun prepend!254 (Conc!2614 Token!2680) Conc!2614)

(assert (=> d!232090 (= res!312850 (isBalanced!691 (prepend!254 (c!121357 (_1!4261 lt!284155)) (_1!4263 (v!17584 lt!284154)))))))

(declare-fun lt!284203 () BalanceConc!5240)

(assert (=> d!232090 (= lt!284203 (BalanceConc!5241 (prepend!254 (c!121357 (_1!4261 lt!284155)) (_1!4263 (v!17584 lt!284154)))))))

(assert (=> d!232090 (= (prepend!253 (_1!4261 lt!284155) (_1!4263 (v!17584 lt!284154))) lt!284203)))

(declare-fun b!688568 () Bool)

(assert (=> b!688568 (= e!432662 (= (list!3109 lt!284203) (Cons!7371 (_1!4263 (v!17584 lt!284154)) (list!3109 (_1!4261 lt!284155)))))))

(assert (= (and d!232090 res!312850) b!688568))

(declare-fun m!945183 () Bool)

(assert (=> d!232090 m!945183))

(assert (=> d!232090 m!945183))

(declare-fun m!945185 () Bool)

(assert (=> d!232090 m!945185))

(declare-fun m!945187 () Bool)

(assert (=> b!688568 m!945187))

(declare-fun m!945189 () Bool)

(assert (=> b!688568 m!945189))

(assert (=> b!688238 d!232090))

(declare-fun b!688569 () Bool)

(declare-fun e!432663 () Bool)

(declare-fun lt!284206 () tuple2!7728)

(assert (=> b!688569 (= e!432663 (= (list!3108 (_2!4261 lt!284206)) (_2!4262 (lexList!320 thiss!12183 rules!1357 (list!3108 (_2!4263 (v!17584 lt!284154)))))))))

(declare-fun d!232092 () Bool)

(assert (=> d!232092 e!432663))

(declare-fun res!312852 () Bool)

(assert (=> d!232092 (=> (not res!312852) (not e!432663))))

(declare-fun e!432666 () Bool)

(assert (=> d!232092 (= res!312852 e!432666)))

(declare-fun c!121405 () Bool)

(assert (=> d!232092 (= c!121405 (> (size!6050 (_1!4261 lt!284206)) 0))))

(declare-fun e!432665 () tuple2!7728)

(assert (=> d!232092 (= lt!284206 e!432665)))

(declare-fun c!121404 () Bool)

(declare-fun lt!284204 () Option!1702)

(assert (=> d!232092 (= c!121404 ((_ is Some!1701) lt!284204))))

(assert (=> d!232092 (= lt!284204 (maxPrefixZipperSequence!454 thiss!12183 rules!1357 (_2!4263 (v!17584 lt!284154))))))

(assert (=> d!232092 (= (lexRec!151 thiss!12183 rules!1357 (_2!4263 (v!17584 lt!284154))) lt!284206)))

(declare-fun b!688570 () Bool)

(assert (=> b!688570 (= e!432665 (tuple2!7729 (BalanceConc!5241 Empty!2614) (_2!4263 (v!17584 lt!284154))))))

(declare-fun b!688571 () Bool)

(declare-fun e!432664 () Bool)

(assert (=> b!688571 (= e!432664 (not (isEmpty!4846 (_1!4261 lt!284206))))))

(declare-fun b!688572 () Bool)

(assert (=> b!688572 (= e!432666 e!432664)))

(declare-fun res!312853 () Bool)

(assert (=> b!688572 (= res!312853 (< (size!6051 (_2!4261 lt!284206)) (size!6051 (_2!4263 (v!17584 lt!284154)))))))

(assert (=> b!688572 (=> (not res!312853) (not e!432664))))

(declare-fun b!688573 () Bool)

(declare-fun res!312851 () Bool)

(assert (=> b!688573 (=> (not res!312851) (not e!432663))))

(assert (=> b!688573 (= res!312851 (= (list!3109 (_1!4261 lt!284206)) (_1!4262 (lexList!320 thiss!12183 rules!1357 (list!3108 (_2!4263 (v!17584 lt!284154)))))))))

(declare-fun b!688574 () Bool)

(declare-fun lt!284205 () tuple2!7728)

(assert (=> b!688574 (= e!432665 (tuple2!7729 (prepend!253 (_1!4261 lt!284205) (_1!4263 (v!17584 lt!284204))) (_2!4261 lt!284205)))))

(assert (=> b!688574 (= lt!284205 (lexRec!151 thiss!12183 rules!1357 (_2!4263 (v!17584 lt!284204))))))

(declare-fun b!688575 () Bool)

(assert (=> b!688575 (= e!432666 (= (list!3108 (_2!4261 lt!284206)) (list!3108 (_2!4263 (v!17584 lt!284154)))))))

(assert (= (and d!232092 c!121404) b!688574))

(assert (= (and d!232092 (not c!121404)) b!688570))

(assert (= (and d!232092 c!121405) b!688572))

(assert (= (and d!232092 (not c!121405)) b!688575))

(assert (= (and b!688572 res!312853) b!688571))

(assert (= (and d!232092 res!312852) b!688573))

(assert (= (and b!688573 res!312851) b!688569))

(declare-fun m!945191 () Bool)

(assert (=> b!688571 m!945191))

(declare-fun m!945193 () Bool)

(assert (=> b!688572 m!945193))

(declare-fun m!945195 () Bool)

(assert (=> b!688572 m!945195))

(declare-fun m!945197 () Bool)

(assert (=> b!688574 m!945197))

(declare-fun m!945199 () Bool)

(assert (=> b!688574 m!945199))

(declare-fun m!945201 () Bool)

(assert (=> b!688575 m!945201))

(declare-fun m!945203 () Bool)

(assert (=> b!688575 m!945203))

(assert (=> b!688569 m!945201))

(assert (=> b!688569 m!945203))

(assert (=> b!688569 m!945203))

(declare-fun m!945205 () Bool)

(assert (=> b!688569 m!945205))

(declare-fun m!945207 () Bool)

(assert (=> b!688573 m!945207))

(assert (=> b!688573 m!945203))

(assert (=> b!688573 m!945203))

(assert (=> b!688573 m!945205))

(declare-fun m!945209 () Bool)

(assert (=> d!232092 m!945209))

(declare-fun m!945211 () Bool)

(assert (=> d!232092 m!945211))

(assert (=> b!688238 d!232092))

(declare-fun d!232094 () Bool)

(assert (=> d!232094 true))

(declare-fun order!5339 () Int)

(declare-fun lambda!21419 () Int)

(declare-fun dynLambda!3876 (Int Int) Int)

(assert (=> d!232094 (< (dynLambda!3875 order!5337 (toValue!2440 (transformation!1484 (h!12773 rules!1357)))) (dynLambda!3876 order!5339 lambda!21419))))

(declare-fun Forall2!272 (Int) Bool)

(assert (=> d!232094 (= (equivClasses!542 (toChars!2299 (transformation!1484 (h!12773 rules!1357))) (toValue!2440 (transformation!1484 (h!12773 rules!1357)))) (Forall2!272 lambda!21419))))

(declare-fun bs!136109 () Bool)

(assert (= bs!136109 d!232094))

(declare-fun m!945213 () Bool)

(assert (=> bs!136109 m!945213))

(assert (=> b!688260 d!232094))

(declare-fun d!232096 () Bool)

(assert (=> d!232096 (= (inv!9478 (xs!5262 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) (<= (size!6052 (innerList!2671 (xs!5262 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) 2147483647))))

(declare-fun bs!136110 () Bool)

(assert (= bs!136110 d!232096))

(declare-fun m!945215 () Bool)

(assert (=> bs!136110 m!945215))

(assert (=> b!688282 d!232096))

(declare-fun d!232098 () Bool)

(declare-fun lt!284209 () Int)

(assert (=> d!232098 (>= lt!284209 0)))

(declare-fun e!432671 () Int)

(assert (=> d!232098 (= lt!284209 e!432671)))

(declare-fun c!121408 () Bool)

(assert (=> d!232098 (= c!121408 ((_ is Nil!7368) lt!284159))))

(assert (=> d!232098 (= (size!6052 lt!284159) lt!284209)))

(declare-fun b!688584 () Bool)

(assert (=> b!688584 (= e!432671 0)))

(declare-fun b!688585 () Bool)

(assert (=> b!688585 (= e!432671 (+ 1 (size!6052 (t!87190 lt!284159))))))

(assert (= (and d!232098 c!121408) b!688584))

(assert (= (and d!232098 (not c!121408)) b!688585))

(declare-fun m!945217 () Bool)

(assert (=> b!688585 m!945217))

(assert (=> b!688256 d!232098))

(declare-fun d!232100 () Bool)

(declare-fun lt!284210 () Int)

(assert (=> d!232100 (>= lt!284210 0)))

(declare-fun e!432672 () Int)

(assert (=> d!232100 (= lt!284210 e!432672)))

(declare-fun c!121409 () Bool)

(assert (=> d!232100 (= c!121409 ((_ is Nil!7368) lt!284142))))

(assert (=> d!232100 (= (size!6052 lt!284142) lt!284210)))

(declare-fun b!688586 () Bool)

(assert (=> b!688586 (= e!432672 0)))

(declare-fun b!688587 () Bool)

(assert (=> b!688587 (= e!432672 (+ 1 (size!6052 (t!87190 lt!284142))))))

(assert (= (and d!232100 c!121409) b!688586))

(assert (= (and d!232100 (not c!121409)) b!688587))

(assert (=> b!688587 m!945085))

(assert (=> b!688256 d!232100))

(declare-fun d!232102 () Bool)

(declare-fun lt!284211 () Int)

(assert (=> d!232102 (>= lt!284211 0)))

(declare-fun e!432673 () Int)

(assert (=> d!232102 (= lt!284211 e!432673)))

(declare-fun c!121410 () Bool)

(assert (=> d!232102 (= c!121410 ((_ is Nil!7368) lt!284147))))

(assert (=> d!232102 (= (size!6052 lt!284147) lt!284211)))

(declare-fun b!688588 () Bool)

(assert (=> b!688588 (= e!432673 0)))

(declare-fun b!688589 () Bool)

(assert (=> b!688589 (= e!432673 (+ 1 (size!6052 (t!87190 lt!284147))))))

(assert (= (and d!232102 c!121410) b!688588))

(assert (= (and d!232102 (not c!121410)) b!688589))

(declare-fun m!945219 () Bool)

(assert (=> b!688589 m!945219))

(assert (=> b!688256 d!232102))

(declare-fun bs!136111 () Bool)

(declare-fun d!232104 () Bool)

(assert (= bs!136111 (and d!232104 d!232010)))

(declare-fun lambda!21420 () Int)

(assert (=> bs!136111 (= lambda!21420 lambda!21390)))

(declare-fun bs!136112 () Bool)

(assert (= bs!136112 (and d!232104 d!232088)))

(assert (=> bs!136112 (= lambda!21420 lambda!21416)))

(declare-fun bs!136113 () Bool)

(assert (= bs!136113 (and d!232104 d!232012)))

(assert (=> bs!136113 (= lambda!21420 lambda!21391)))

(declare-fun bs!136114 () Bool)

(assert (= bs!136114 (and d!232104 d!232032)))

(assert (=> bs!136114 (= lambda!21420 lambda!21396)))

(declare-fun bs!136115 () Bool)

(assert (= bs!136115 (and d!232104 d!232006)))

(assert (=> bs!136115 (= lambda!21420 lambda!21389)))

(declare-fun bs!136116 () Bool)

(assert (= bs!136116 (and d!232104 d!232026)))

(assert (=> bs!136116 (= lambda!21420 lambda!21393)))

(declare-fun bs!136117 () Bool)

(assert (= bs!136117 (and d!232104 d!232016)))

(assert (=> bs!136117 (= lambda!21420 lambda!21392)))

(declare-fun bs!136118 () Bool)

(assert (= bs!136118 (and d!232104 d!232048)))

(assert (=> bs!136118 (= lambda!21420 lambda!21399)))

(declare-fun bs!136119 () Bool)

(assert (= bs!136119 (and d!232104 d!232082)))

(assert (=> bs!136119 (= lambda!21420 lambda!21411)))

(declare-fun bs!136120 () Bool)

(assert (= bs!136120 (and d!232104 d!232028)))

(assert (=> bs!136120 (= lambda!21420 lambda!21394)))

(declare-fun bs!136121 () Bool)

(assert (= bs!136121 (and d!232104 d!232064)))

(assert (=> bs!136121 (= lambda!21420 lambda!21409)))

(declare-fun bs!136122 () Bool)

(assert (= bs!136122 (and d!232104 d!232002)))

(assert (=> bs!136122 (= lambda!21420 lambda!21388)))

(declare-fun bs!136123 () Bool)

(assert (= bs!136123 (and d!232104 d!232062)))

(assert (=> bs!136123 (= lambda!21420 lambda!21408)))

(declare-fun bs!136124 () Bool)

(assert (= bs!136124 (and d!232104 d!232042)))

(assert (=> bs!136124 (= lambda!21420 lambda!21398)))

(declare-fun bs!136125 () Bool)

(assert (= bs!136125 (and d!232104 d!232074)))

(assert (=> bs!136125 (= lambda!21420 lambda!21410)))

(declare-fun bs!136126 () Bool)

(assert (= bs!136126 (and d!232104 d!232030)))

(assert (=> bs!136126 (= lambda!21420 lambda!21395)))

(declare-fun bs!136127 () Bool)

(assert (= bs!136127 (and d!232104 d!232086)))

(assert (=> bs!136127 (= lambda!21420 lambda!21415)))

(declare-fun bs!136128 () Bool)

(assert (= bs!136128 (and d!232104 d!232054)))

(assert (=> bs!136128 (= lambda!21420 lambda!21406)))

(declare-fun bs!136129 () Bool)

(assert (= bs!136129 (and d!232104 d!232034)))

(assert (=> bs!136129 (= lambda!21420 lambda!21397)))

(declare-fun bs!136130 () Bool)

(assert (= bs!136130 (and d!232104 d!232058)))

(assert (=> bs!136130 (= lambda!21420 lambda!21407)))

(assert (=> d!232104 (= (inv!9479 (_2!4259 (_1!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))))) (forall!1941 (exprs!731 (_2!4259 (_1!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))))) lambda!21420))))

(declare-fun bs!136131 () Bool)

(assert (= bs!136131 d!232104))

(declare-fun m!945221 () Bool)

(assert (=> bs!136131 m!945221))

(assert (=> b!688292 d!232104))

(declare-fun bs!136132 () Bool)

(declare-fun d!232106 () Bool)

(assert (= bs!136132 (and d!232106 d!232010)))

(declare-fun lambda!21421 () Int)

(assert (=> bs!136132 (= lambda!21421 lambda!21390)))

(declare-fun bs!136133 () Bool)

(assert (= bs!136133 (and d!232106 d!232088)))

(assert (=> bs!136133 (= lambda!21421 lambda!21416)))

(declare-fun bs!136134 () Bool)

(assert (= bs!136134 (and d!232106 d!232012)))

(assert (=> bs!136134 (= lambda!21421 lambda!21391)))

(declare-fun bs!136135 () Bool)

(assert (= bs!136135 (and d!232106 d!232032)))

(assert (=> bs!136135 (= lambda!21421 lambda!21396)))

(declare-fun bs!136136 () Bool)

(assert (= bs!136136 (and d!232106 d!232006)))

(assert (=> bs!136136 (= lambda!21421 lambda!21389)))

(declare-fun bs!136137 () Bool)

(assert (= bs!136137 (and d!232106 d!232026)))

(assert (=> bs!136137 (= lambda!21421 lambda!21393)))

(declare-fun bs!136138 () Bool)

(assert (= bs!136138 (and d!232106 d!232016)))

(assert (=> bs!136138 (= lambda!21421 lambda!21392)))

(declare-fun bs!136139 () Bool)

(assert (= bs!136139 (and d!232106 d!232048)))

(assert (=> bs!136139 (= lambda!21421 lambda!21399)))

(declare-fun bs!136140 () Bool)

(assert (= bs!136140 (and d!232106 d!232082)))

(assert (=> bs!136140 (= lambda!21421 lambda!21411)))

(declare-fun bs!136141 () Bool)

(assert (= bs!136141 (and d!232106 d!232104)))

(assert (=> bs!136141 (= lambda!21421 lambda!21420)))

(declare-fun bs!136142 () Bool)

(assert (= bs!136142 (and d!232106 d!232028)))

(assert (=> bs!136142 (= lambda!21421 lambda!21394)))

(declare-fun bs!136143 () Bool)

(assert (= bs!136143 (and d!232106 d!232064)))

(assert (=> bs!136143 (= lambda!21421 lambda!21409)))

(declare-fun bs!136144 () Bool)

(assert (= bs!136144 (and d!232106 d!232002)))

(assert (=> bs!136144 (= lambda!21421 lambda!21388)))

(declare-fun bs!136145 () Bool)

(assert (= bs!136145 (and d!232106 d!232062)))

(assert (=> bs!136145 (= lambda!21421 lambda!21408)))

(declare-fun bs!136146 () Bool)

(assert (= bs!136146 (and d!232106 d!232042)))

(assert (=> bs!136146 (= lambda!21421 lambda!21398)))

(declare-fun bs!136147 () Bool)

(assert (= bs!136147 (and d!232106 d!232074)))

(assert (=> bs!136147 (= lambda!21421 lambda!21410)))

(declare-fun bs!136148 () Bool)

(assert (= bs!136148 (and d!232106 d!232030)))

(assert (=> bs!136148 (= lambda!21421 lambda!21395)))

(declare-fun bs!136149 () Bool)

(assert (= bs!136149 (and d!232106 d!232086)))

(assert (=> bs!136149 (= lambda!21421 lambda!21415)))

(declare-fun bs!136150 () Bool)

(assert (= bs!136150 (and d!232106 d!232054)))

(assert (=> bs!136150 (= lambda!21421 lambda!21406)))

(declare-fun bs!136151 () Bool)

(assert (= bs!136151 (and d!232106 d!232034)))

(assert (=> bs!136151 (= lambda!21421 lambda!21397)))

(declare-fun bs!136152 () Bool)

(assert (= bs!136152 (and d!232106 d!232058)))

(assert (=> bs!136152 (= lambda!21421 lambda!21407)))

(assert (=> d!232106 (= (inv!9479 (_2!4259 (_1!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))))) (forall!1941 (exprs!731 (_2!4259 (_1!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))))) lambda!21421))))

(declare-fun bs!136153 () Bool)

(assert (= bs!136153 d!232106))

(declare-fun m!945223 () Bool)

(assert (=> bs!136153 m!945223))

(assert (=> b!688295 d!232106))

(assert (=> d!231962 d!232052))

(declare-fun d!232108 () Bool)

(assert (=> d!232108 true))

(declare-fun lt!284214 () Bool)

(assert (=> d!232108 (= lt!284214 (rulesValidInductive!516 thiss!12183 rules!1357))))

(declare-fun lambda!21424 () Int)

(declare-fun forall!1944 (List!7386 Int) Bool)

(assert (=> d!232108 (= lt!284214 (forall!1944 rules!1357 lambda!21424))))

(assert (=> d!232108 (= (rulesValid!524 thiss!12183 rules!1357) lt!284214)))

(declare-fun bs!136154 () Bool)

(assert (= bs!136154 d!232108))

(assert (=> bs!136154 m!944991))

(declare-fun m!945225 () Bool)

(assert (=> bs!136154 m!945225))

(assert (=> d!231948 d!232108))

(declare-fun b!688595 () Bool)

(declare-fun e!432675 () List!7382)

(assert (=> b!688595 (= e!432675 (++!1935 (list!3111 (left!5950 (c!121356 (BalanceConc!5239 Empty!2613)))) (list!3111 (right!6280 (c!121356 (BalanceConc!5239 Empty!2613))))))))

(declare-fun b!688593 () Bool)

(declare-fun e!432674 () List!7382)

(assert (=> b!688593 (= e!432674 e!432675)))

(declare-fun c!121412 () Bool)

(assert (=> b!688593 (= c!121412 ((_ is Leaf!3877) (c!121356 (BalanceConc!5239 Empty!2613))))))

(declare-fun d!232110 () Bool)

(declare-fun c!121411 () Bool)

(assert (=> d!232110 (= c!121411 ((_ is Empty!2613) (c!121356 (BalanceConc!5239 Empty!2613))))))

(assert (=> d!232110 (= (list!3111 (c!121356 (BalanceConc!5239 Empty!2613))) e!432674)))

(declare-fun b!688592 () Bool)

(assert (=> b!688592 (= e!432674 Nil!7368)))

(declare-fun b!688594 () Bool)

(assert (=> b!688594 (= e!432675 (list!3112 (xs!5262 (c!121356 (BalanceConc!5239 Empty!2613)))))))

(assert (= (and d!232110 c!121411) b!688592))

(assert (= (and d!232110 (not c!121411)) b!688593))

(assert (= (and b!688593 c!121412) b!688594))

(assert (= (and b!688593 (not c!121412)) b!688595))

(declare-fun m!945227 () Bool)

(assert (=> b!688595 m!945227))

(declare-fun m!945229 () Bool)

(assert (=> b!688595 m!945229))

(assert (=> b!688595 m!945227))

(assert (=> b!688595 m!945229))

(declare-fun m!945231 () Bool)

(assert (=> b!688595 m!945231))

(declare-fun m!945233 () Bool)

(assert (=> b!688594 m!945233))

(assert (=> d!231956 d!232110))

(declare-fun d!232112 () Bool)

(declare-fun res!312861 () Bool)

(declare-fun e!432676 () Bool)

(assert (=> d!232112 (=> res!312861 e!432676)))

(assert (=> d!232112 (= res!312861 (not ((_ is Node!2613) (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(assert (=> d!232112 (= (isBalanced!690 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))) e!432676)))

(declare-fun b!688596 () Bool)

(declare-fun res!312859 () Bool)

(declare-fun e!432677 () Bool)

(assert (=> b!688596 (=> (not res!312859) (not e!432677))))

(assert (=> b!688596 (= res!312859 (not (isEmpty!4847 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))))))

(declare-fun b!688597 () Bool)

(assert (=> b!688597 (= e!432676 e!432677)))

(declare-fun res!312856 () Bool)

(assert (=> b!688597 (=> (not res!312856) (not e!432677))))

(assert (=> b!688597 (= res!312856 (<= (- 1) (- (height!314 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) (height!314 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))))

(declare-fun b!688598 () Bool)

(declare-fun res!312858 () Bool)

(assert (=> b!688598 (=> (not res!312858) (not e!432677))))

(assert (=> b!688598 (= res!312858 (isBalanced!690 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(declare-fun b!688599 () Bool)

(assert (=> b!688599 (= e!432677 (not (isEmpty!4847 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))))))

(declare-fun b!688600 () Bool)

(declare-fun res!312860 () Bool)

(assert (=> b!688600 (=> (not res!312860) (not e!432677))))

(assert (=> b!688600 (= res!312860 (isBalanced!690 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))))

(declare-fun b!688601 () Bool)

(declare-fun res!312857 () Bool)

(assert (=> b!688601 (=> (not res!312857) (not e!432677))))

(assert (=> b!688601 (= res!312857 (<= (- (height!314 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) (height!314 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) 1))))

(assert (= (and d!232112 (not res!312861)) b!688597))

(assert (= (and b!688597 res!312856) b!688601))

(assert (= (and b!688601 res!312857) b!688598))

(assert (= (and b!688598 res!312858) b!688600))

(assert (= (and b!688600 res!312860) b!688596))

(assert (= (and b!688596 res!312859) b!688599))

(declare-fun m!945235 () Bool)

(assert (=> b!688599 m!945235))

(assert (=> b!688597 m!945103))

(assert (=> b!688597 m!945105))

(declare-fun m!945237 () Bool)

(assert (=> b!688598 m!945237))

(declare-fun m!945239 () Bool)

(assert (=> b!688600 m!945239))

(assert (=> b!688601 m!945103))

(assert (=> b!688601 m!945105))

(declare-fun m!945241 () Bool)

(assert (=> b!688596 m!945241))

(assert (=> d!231974 d!232112))

(assert (=> b!688200 d!231940))

(declare-fun bs!136155 () Bool)

(declare-fun d!232114 () Bool)

(assert (= bs!136155 (and d!232114 d!232010)))

(declare-fun lambda!21425 () Int)

(assert (=> bs!136155 (= lambda!21425 lambda!21390)))

(declare-fun bs!136156 () Bool)

(assert (= bs!136156 (and d!232114 d!232088)))

(assert (=> bs!136156 (= lambda!21425 lambda!21416)))

(declare-fun bs!136157 () Bool)

(assert (= bs!136157 (and d!232114 d!232012)))

(assert (=> bs!136157 (= lambda!21425 lambda!21391)))

(declare-fun bs!136158 () Bool)

(assert (= bs!136158 (and d!232114 d!232032)))

(assert (=> bs!136158 (= lambda!21425 lambda!21396)))

(declare-fun bs!136159 () Bool)

(assert (= bs!136159 (and d!232114 d!232006)))

(assert (=> bs!136159 (= lambda!21425 lambda!21389)))

(declare-fun bs!136160 () Bool)

(assert (= bs!136160 (and d!232114 d!232026)))

(assert (=> bs!136160 (= lambda!21425 lambda!21393)))

(declare-fun bs!136161 () Bool)

(assert (= bs!136161 (and d!232114 d!232016)))

(assert (=> bs!136161 (= lambda!21425 lambda!21392)))

(declare-fun bs!136162 () Bool)

(assert (= bs!136162 (and d!232114 d!232106)))

(assert (=> bs!136162 (= lambda!21425 lambda!21421)))

(declare-fun bs!136163 () Bool)

(assert (= bs!136163 (and d!232114 d!232048)))

(assert (=> bs!136163 (= lambda!21425 lambda!21399)))

(declare-fun bs!136164 () Bool)

(assert (= bs!136164 (and d!232114 d!232082)))

(assert (=> bs!136164 (= lambda!21425 lambda!21411)))

(declare-fun bs!136165 () Bool)

(assert (= bs!136165 (and d!232114 d!232104)))

(assert (=> bs!136165 (= lambda!21425 lambda!21420)))

(declare-fun bs!136166 () Bool)

(assert (= bs!136166 (and d!232114 d!232028)))

(assert (=> bs!136166 (= lambda!21425 lambda!21394)))

(declare-fun bs!136167 () Bool)

(assert (= bs!136167 (and d!232114 d!232064)))

(assert (=> bs!136167 (= lambda!21425 lambda!21409)))

(declare-fun bs!136168 () Bool)

(assert (= bs!136168 (and d!232114 d!232002)))

(assert (=> bs!136168 (= lambda!21425 lambda!21388)))

(declare-fun bs!136169 () Bool)

(assert (= bs!136169 (and d!232114 d!232062)))

(assert (=> bs!136169 (= lambda!21425 lambda!21408)))

(declare-fun bs!136170 () Bool)

(assert (= bs!136170 (and d!232114 d!232042)))

(assert (=> bs!136170 (= lambda!21425 lambda!21398)))

(declare-fun bs!136171 () Bool)

(assert (= bs!136171 (and d!232114 d!232074)))

(assert (=> bs!136171 (= lambda!21425 lambda!21410)))

(declare-fun bs!136172 () Bool)

(assert (= bs!136172 (and d!232114 d!232030)))

(assert (=> bs!136172 (= lambda!21425 lambda!21395)))

(declare-fun bs!136173 () Bool)

(assert (= bs!136173 (and d!232114 d!232086)))

(assert (=> bs!136173 (= lambda!21425 lambda!21415)))

(declare-fun bs!136174 () Bool)

(assert (= bs!136174 (and d!232114 d!232054)))

(assert (=> bs!136174 (= lambda!21425 lambda!21406)))

(declare-fun bs!136175 () Bool)

(assert (= bs!136175 (and d!232114 d!232034)))

(assert (=> bs!136175 (= lambda!21425 lambda!21397)))

(declare-fun bs!136176 () Bool)

(assert (= bs!136176 (and d!232114 d!232058)))

(assert (=> bs!136176 (= lambda!21425 lambda!21407)))

(assert (=> d!232114 (= (inv!9479 setElem!3560) (forall!1941 (exprs!731 setElem!3560) lambda!21425))))

(declare-fun bs!136177 () Bool)

(assert (= bs!136177 d!232114))

(declare-fun m!945243 () Bool)

(assert (=> bs!136177 m!945243))

(assert (=> setNonEmpty!3561 d!232114))

(declare-fun bs!136178 () Bool)

(declare-fun d!232116 () Bool)

(assert (= bs!136178 (and d!232116 d!232010)))

(declare-fun lambda!21426 () Int)

(assert (=> bs!136178 (= lambda!21426 lambda!21390)))

(declare-fun bs!136179 () Bool)

(assert (= bs!136179 (and d!232116 d!232088)))

(assert (=> bs!136179 (= lambda!21426 lambda!21416)))

(declare-fun bs!136180 () Bool)

(assert (= bs!136180 (and d!232116 d!232012)))

(assert (=> bs!136180 (= lambda!21426 lambda!21391)))

(declare-fun bs!136181 () Bool)

(assert (= bs!136181 (and d!232116 d!232032)))

(assert (=> bs!136181 (= lambda!21426 lambda!21396)))

(declare-fun bs!136182 () Bool)

(assert (= bs!136182 (and d!232116 d!232006)))

(assert (=> bs!136182 (= lambda!21426 lambda!21389)))

(declare-fun bs!136183 () Bool)

(assert (= bs!136183 (and d!232116 d!232026)))

(assert (=> bs!136183 (= lambda!21426 lambda!21393)))

(declare-fun bs!136184 () Bool)

(assert (= bs!136184 (and d!232116 d!232016)))

(assert (=> bs!136184 (= lambda!21426 lambda!21392)))

(declare-fun bs!136185 () Bool)

(assert (= bs!136185 (and d!232116 d!232106)))

(assert (=> bs!136185 (= lambda!21426 lambda!21421)))

(declare-fun bs!136186 () Bool)

(assert (= bs!136186 (and d!232116 d!232114)))

(assert (=> bs!136186 (= lambda!21426 lambda!21425)))

(declare-fun bs!136187 () Bool)

(assert (= bs!136187 (and d!232116 d!232048)))

(assert (=> bs!136187 (= lambda!21426 lambda!21399)))

(declare-fun bs!136188 () Bool)

(assert (= bs!136188 (and d!232116 d!232082)))

(assert (=> bs!136188 (= lambda!21426 lambda!21411)))

(declare-fun bs!136189 () Bool)

(assert (= bs!136189 (and d!232116 d!232104)))

(assert (=> bs!136189 (= lambda!21426 lambda!21420)))

(declare-fun bs!136190 () Bool)

(assert (= bs!136190 (and d!232116 d!232028)))

(assert (=> bs!136190 (= lambda!21426 lambda!21394)))

(declare-fun bs!136191 () Bool)

(assert (= bs!136191 (and d!232116 d!232064)))

(assert (=> bs!136191 (= lambda!21426 lambda!21409)))

(declare-fun bs!136192 () Bool)

(assert (= bs!136192 (and d!232116 d!232002)))

(assert (=> bs!136192 (= lambda!21426 lambda!21388)))

(declare-fun bs!136193 () Bool)

(assert (= bs!136193 (and d!232116 d!232062)))

(assert (=> bs!136193 (= lambda!21426 lambda!21408)))

(declare-fun bs!136194 () Bool)

(assert (= bs!136194 (and d!232116 d!232042)))

(assert (=> bs!136194 (= lambda!21426 lambda!21398)))

(declare-fun bs!136195 () Bool)

(assert (= bs!136195 (and d!232116 d!232074)))

(assert (=> bs!136195 (= lambda!21426 lambda!21410)))

(declare-fun bs!136196 () Bool)

(assert (= bs!136196 (and d!232116 d!232030)))

(assert (=> bs!136196 (= lambda!21426 lambda!21395)))

(declare-fun bs!136197 () Bool)

(assert (= bs!136197 (and d!232116 d!232086)))

(assert (=> bs!136197 (= lambda!21426 lambda!21415)))

(declare-fun bs!136198 () Bool)

(assert (= bs!136198 (and d!232116 d!232054)))

(assert (=> bs!136198 (= lambda!21426 lambda!21406)))

(declare-fun bs!136199 () Bool)

(assert (= bs!136199 (and d!232116 d!232034)))

(assert (=> bs!136199 (= lambda!21426 lambda!21397)))

(declare-fun bs!136200 () Bool)

(assert (= bs!136200 (and d!232116 d!232058)))

(assert (=> bs!136200 (= lambda!21426 lambda!21407)))

(assert (=> d!232116 (= (inv!9479 setElem!3553) (forall!1941 (exprs!731 setElem!3553) lambda!21426))))

(declare-fun bs!136201 () Bool)

(assert (= bs!136201 d!232116))

(declare-fun m!945245 () Bool)

(assert (=> bs!136201 m!945245))

(assert (=> setNonEmpty!3553 d!232116))

(declare-fun d!232118 () Bool)

(assert (=> d!232118 (= (inv!9469 (tag!1746 (h!12773 (t!87194 rules!1357)))) (= (mod (str.len (value!47961 (tag!1746 (h!12773 (t!87194 rules!1357))))) 2) 0))))

(assert (=> b!688358 d!232118))

(declare-fun d!232120 () Bool)

(declare-fun res!312862 () Bool)

(declare-fun e!432678 () Bool)

(assert (=> d!232120 (=> (not res!312862) (not e!432678))))

(assert (=> d!232120 (= res!312862 (semiInverseModEq!567 (toChars!2299 (transformation!1484 (h!12773 (t!87194 rules!1357)))) (toValue!2440 (transformation!1484 (h!12773 (t!87194 rules!1357))))))))

(assert (=> d!232120 (= (inv!9472 (transformation!1484 (h!12773 (t!87194 rules!1357)))) e!432678)))

(declare-fun b!688602 () Bool)

(assert (=> b!688602 (= e!432678 (equivClasses!542 (toChars!2299 (transformation!1484 (h!12773 (t!87194 rules!1357)))) (toValue!2440 (transformation!1484 (h!12773 (t!87194 rules!1357))))))))

(assert (= (and d!232120 res!312862) b!688602))

(declare-fun m!945247 () Bool)

(assert (=> d!232120 m!945247))

(declare-fun m!945249 () Bool)

(assert (=> b!688602 m!945249))

(assert (=> b!688358 d!232120))

(declare-fun bs!136202 () Bool)

(declare-fun d!232122 () Bool)

(assert (= bs!136202 (and d!232122 d!232010)))

(declare-fun lambda!21427 () Int)

(assert (=> bs!136202 (= lambda!21427 lambda!21390)))

(declare-fun bs!136203 () Bool)

(assert (= bs!136203 (and d!232122 d!232088)))

(assert (=> bs!136203 (= lambda!21427 lambda!21416)))

(declare-fun bs!136204 () Bool)

(assert (= bs!136204 (and d!232122 d!232012)))

(assert (=> bs!136204 (= lambda!21427 lambda!21391)))

(declare-fun bs!136205 () Bool)

(assert (= bs!136205 (and d!232122 d!232032)))

(assert (=> bs!136205 (= lambda!21427 lambda!21396)))

(declare-fun bs!136206 () Bool)

(assert (= bs!136206 (and d!232122 d!232006)))

(assert (=> bs!136206 (= lambda!21427 lambda!21389)))

(declare-fun bs!136207 () Bool)

(assert (= bs!136207 (and d!232122 d!232026)))

(assert (=> bs!136207 (= lambda!21427 lambda!21393)))

(declare-fun bs!136208 () Bool)

(assert (= bs!136208 (and d!232122 d!232016)))

(assert (=> bs!136208 (= lambda!21427 lambda!21392)))

(declare-fun bs!136209 () Bool)

(assert (= bs!136209 (and d!232122 d!232106)))

(assert (=> bs!136209 (= lambda!21427 lambda!21421)))

(declare-fun bs!136210 () Bool)

(assert (= bs!136210 (and d!232122 d!232114)))

(assert (=> bs!136210 (= lambda!21427 lambda!21425)))

(declare-fun bs!136211 () Bool)

(assert (= bs!136211 (and d!232122 d!232048)))

(assert (=> bs!136211 (= lambda!21427 lambda!21399)))

(declare-fun bs!136212 () Bool)

(assert (= bs!136212 (and d!232122 d!232082)))

(assert (=> bs!136212 (= lambda!21427 lambda!21411)))

(declare-fun bs!136213 () Bool)

(assert (= bs!136213 (and d!232122 d!232104)))

(assert (=> bs!136213 (= lambda!21427 lambda!21420)))

(declare-fun bs!136214 () Bool)

(assert (= bs!136214 (and d!232122 d!232028)))

(assert (=> bs!136214 (= lambda!21427 lambda!21394)))

(declare-fun bs!136215 () Bool)

(assert (= bs!136215 (and d!232122 d!232064)))

(assert (=> bs!136215 (= lambda!21427 lambda!21409)))

(declare-fun bs!136216 () Bool)

(assert (= bs!136216 (and d!232122 d!232002)))

(assert (=> bs!136216 (= lambda!21427 lambda!21388)))

(declare-fun bs!136217 () Bool)

(assert (= bs!136217 (and d!232122 d!232062)))

(assert (=> bs!136217 (= lambda!21427 lambda!21408)))

(declare-fun bs!136218 () Bool)

(assert (= bs!136218 (and d!232122 d!232042)))

(assert (=> bs!136218 (= lambda!21427 lambda!21398)))

(declare-fun bs!136219 () Bool)

(assert (= bs!136219 (and d!232122 d!232074)))

(assert (=> bs!136219 (= lambda!21427 lambda!21410)))

(declare-fun bs!136220 () Bool)

(assert (= bs!136220 (and d!232122 d!232030)))

(assert (=> bs!136220 (= lambda!21427 lambda!21395)))

(declare-fun bs!136221 () Bool)

(assert (= bs!136221 (and d!232122 d!232086)))

(assert (=> bs!136221 (= lambda!21427 lambda!21415)))

(declare-fun bs!136222 () Bool)

(assert (= bs!136222 (and d!232122 d!232116)))

(assert (=> bs!136222 (= lambda!21427 lambda!21426)))

(declare-fun bs!136223 () Bool)

(assert (= bs!136223 (and d!232122 d!232054)))

(assert (=> bs!136223 (= lambda!21427 lambda!21406)))

(declare-fun bs!136224 () Bool)

(assert (= bs!136224 (and d!232122 d!232034)))

(assert (=> bs!136224 (= lambda!21427 lambda!21397)))

(declare-fun bs!136225 () Bool)

(assert (= bs!136225 (and d!232122 d!232058)))

(assert (=> bs!136225 (= lambda!21427 lambda!21407)))

(assert (=> d!232122 (= (inv!9479 (_2!4259 (_1!4260 (h!12770 mapValue!2941)))) (forall!1941 (exprs!731 (_2!4259 (_1!4260 (h!12770 mapValue!2941)))) lambda!21427))))

(declare-fun bs!136226 () Bool)

(assert (= bs!136226 d!232122))

(declare-fun m!945251 () Bool)

(assert (=> bs!136226 m!945251))

(assert (=> b!688315 d!232122))

(declare-fun b!688608 () Bool)

(assert (=> b!688608 true))

(declare-fun d!232124 () Bool)

(declare-fun res!312867 () Bool)

(declare-fun e!432681 () Bool)

(assert (=> d!232124 (=> (not res!312867) (not e!432681))))

(declare-fun valid!625 (MutableMap!706) Bool)

(assert (=> d!232124 (= res!312867 (valid!625 (cache!1093 cacheFindLongestMatch!59)))))

(assert (=> d!232124 (= (validCacheMapFindLongestMatch!3 (cache!1093 cacheFindLongestMatch!59) (totalInput!1786 cacheFindLongestMatch!59)) e!432681)))

(declare-fun b!688607 () Bool)

(declare-fun res!312868 () Bool)

(assert (=> b!688607 (=> (not res!312868) (not e!432681))))

(declare-fun invariantList!131 (List!7381) Bool)

(declare-datatypes ((ListMap!311 0))(
  ( (ListMap!312 (toList!496 List!7381)) )
))
(declare-fun map!1640 (MutableMap!706) ListMap!311)

(assert (=> b!688607 (= res!312868 (invariantList!131 (toList!496 (map!1640 (cache!1093 cacheFindLongestMatch!59)))))))

(declare-fun lambda!21430 () Int)

(declare-fun forall!1945 (List!7381 Int) Bool)

(assert (=> b!688608 (= e!432681 (forall!1945 (toList!496 (map!1640 (cache!1093 cacheFindLongestMatch!59))) lambda!21430))))

(assert (= (and d!232124 res!312867) b!688607))

(assert (= (and b!688607 res!312868) b!688608))

(declare-fun m!945254 () Bool)

(assert (=> d!232124 m!945254))

(declare-fun m!945256 () Bool)

(assert (=> b!688607 m!945256))

(declare-fun m!945258 () Bool)

(assert (=> b!688607 m!945258))

(assert (=> b!688608 m!945256))

(declare-fun m!945260 () Bool)

(assert (=> b!688608 m!945260))

(assert (=> d!231964 d!232124))

(declare-fun d!232126 () Bool)

(declare-fun c!121413 () Bool)

(assert (=> d!232126 (= c!121413 ((_ is Node!2613) (left!5950 (c!121356 input!756))))))

(declare-fun e!432682 () Bool)

(assert (=> d!232126 (= (inv!9471 (left!5950 (c!121356 input!756))) e!432682)))

(declare-fun b!688611 () Bool)

(assert (=> b!688611 (= e!432682 (inv!9476 (left!5950 (c!121356 input!756))))))

(declare-fun b!688612 () Bool)

(declare-fun e!432683 () Bool)

(assert (=> b!688612 (= e!432682 e!432683)))

(declare-fun res!312869 () Bool)

(assert (=> b!688612 (= res!312869 (not ((_ is Leaf!3877) (left!5950 (c!121356 input!756)))))))

(assert (=> b!688612 (=> res!312869 e!432683)))

(declare-fun b!688613 () Bool)

(assert (=> b!688613 (= e!432683 (inv!9477 (left!5950 (c!121356 input!756))))))

(assert (= (and d!232126 c!121413) b!688611))

(assert (= (and d!232126 (not c!121413)) b!688612))

(assert (= (and b!688612 (not res!312869)) b!688613))

(declare-fun m!945262 () Bool)

(assert (=> b!688611 m!945262))

(declare-fun m!945264 () Bool)

(assert (=> b!688613 m!945264))

(assert (=> b!688278 d!232126))

(declare-fun d!232128 () Bool)

(declare-fun c!121414 () Bool)

(assert (=> d!232128 (= c!121414 ((_ is Node!2613) (right!6280 (c!121356 input!756))))))

(declare-fun e!432684 () Bool)

(assert (=> d!232128 (= (inv!9471 (right!6280 (c!121356 input!756))) e!432684)))

(declare-fun b!688614 () Bool)

(assert (=> b!688614 (= e!432684 (inv!9476 (right!6280 (c!121356 input!756))))))

(declare-fun b!688615 () Bool)

(declare-fun e!432685 () Bool)

(assert (=> b!688615 (= e!432684 e!432685)))

(declare-fun res!312870 () Bool)

(assert (=> b!688615 (= res!312870 (not ((_ is Leaf!3877) (right!6280 (c!121356 input!756)))))))

(assert (=> b!688615 (=> res!312870 e!432685)))

(declare-fun b!688616 () Bool)

(assert (=> b!688616 (= e!432685 (inv!9477 (right!6280 (c!121356 input!756))))))

(assert (= (and d!232128 c!121414) b!688614))

(assert (= (and d!232128 (not c!121414)) b!688615))

(assert (= (and b!688615 (not res!312870)) b!688616))

(declare-fun m!945266 () Bool)

(assert (=> b!688614 m!945266))

(declare-fun m!945268 () Bool)

(assert (=> b!688616 m!945268))

(assert (=> b!688278 d!232128))

(assert (=> b!688266 d!232084))

(declare-fun bs!136227 () Bool)

(declare-fun d!232130 () Bool)

(assert (= bs!136227 (and d!232130 d!232010)))

(declare-fun lambda!21431 () Int)

(assert (=> bs!136227 (= lambda!21431 lambda!21390)))

(declare-fun bs!136228 () Bool)

(assert (= bs!136228 (and d!232130 d!232088)))

(assert (=> bs!136228 (= lambda!21431 lambda!21416)))

(declare-fun bs!136229 () Bool)

(assert (= bs!136229 (and d!232130 d!232032)))

(assert (=> bs!136229 (= lambda!21431 lambda!21396)))

(declare-fun bs!136230 () Bool)

(assert (= bs!136230 (and d!232130 d!232006)))

(assert (=> bs!136230 (= lambda!21431 lambda!21389)))

(declare-fun bs!136231 () Bool)

(assert (= bs!136231 (and d!232130 d!232026)))

(assert (=> bs!136231 (= lambda!21431 lambda!21393)))

(declare-fun bs!136232 () Bool)

(assert (= bs!136232 (and d!232130 d!232016)))

(assert (=> bs!136232 (= lambda!21431 lambda!21392)))

(declare-fun bs!136233 () Bool)

(assert (= bs!136233 (and d!232130 d!232106)))

(assert (=> bs!136233 (= lambda!21431 lambda!21421)))

(declare-fun bs!136234 () Bool)

(assert (= bs!136234 (and d!232130 d!232114)))

(assert (=> bs!136234 (= lambda!21431 lambda!21425)))

(declare-fun bs!136235 () Bool)

(assert (= bs!136235 (and d!232130 d!232048)))

(assert (=> bs!136235 (= lambda!21431 lambda!21399)))

(declare-fun bs!136236 () Bool)

(assert (= bs!136236 (and d!232130 d!232082)))

(assert (=> bs!136236 (= lambda!21431 lambda!21411)))

(declare-fun bs!136237 () Bool)

(assert (= bs!136237 (and d!232130 d!232104)))

(assert (=> bs!136237 (= lambda!21431 lambda!21420)))

(declare-fun bs!136238 () Bool)

(assert (= bs!136238 (and d!232130 d!232012)))

(assert (=> bs!136238 (= lambda!21431 lambda!21391)))

(declare-fun bs!136239 () Bool)

(assert (= bs!136239 (and d!232130 d!232122)))

(assert (=> bs!136239 (= lambda!21431 lambda!21427)))

(declare-fun bs!136240 () Bool)

(assert (= bs!136240 (and d!232130 d!232028)))

(assert (=> bs!136240 (= lambda!21431 lambda!21394)))

(declare-fun bs!136241 () Bool)

(assert (= bs!136241 (and d!232130 d!232064)))

(assert (=> bs!136241 (= lambda!21431 lambda!21409)))

(declare-fun bs!136242 () Bool)

(assert (= bs!136242 (and d!232130 d!232002)))

(assert (=> bs!136242 (= lambda!21431 lambda!21388)))

(declare-fun bs!136243 () Bool)

(assert (= bs!136243 (and d!232130 d!232062)))

(assert (=> bs!136243 (= lambda!21431 lambda!21408)))

(declare-fun bs!136244 () Bool)

(assert (= bs!136244 (and d!232130 d!232042)))

(assert (=> bs!136244 (= lambda!21431 lambda!21398)))

(declare-fun bs!136245 () Bool)

(assert (= bs!136245 (and d!232130 d!232074)))

(assert (=> bs!136245 (= lambda!21431 lambda!21410)))

(declare-fun bs!136246 () Bool)

(assert (= bs!136246 (and d!232130 d!232030)))

(assert (=> bs!136246 (= lambda!21431 lambda!21395)))

(declare-fun bs!136247 () Bool)

(assert (= bs!136247 (and d!232130 d!232086)))

(assert (=> bs!136247 (= lambda!21431 lambda!21415)))

(declare-fun bs!136248 () Bool)

(assert (= bs!136248 (and d!232130 d!232116)))

(assert (=> bs!136248 (= lambda!21431 lambda!21426)))

(declare-fun bs!136249 () Bool)

(assert (= bs!136249 (and d!232130 d!232054)))

(assert (=> bs!136249 (= lambda!21431 lambda!21406)))

(declare-fun bs!136250 () Bool)

(assert (= bs!136250 (and d!232130 d!232034)))

(assert (=> bs!136250 (= lambda!21431 lambda!21397)))

(declare-fun bs!136251 () Bool)

(assert (= bs!136251 (and d!232130 d!232058)))

(assert (=> bs!136251 (= lambda!21431 lambda!21407)))

(assert (=> d!232130 (= (inv!9479 setElem!3543) (forall!1941 (exprs!731 setElem!3543) lambda!21431))))

(declare-fun bs!136252 () Bool)

(assert (= bs!136252 d!232130))

(declare-fun m!945270 () Bool)

(assert (=> bs!136252 m!945270))

(assert (=> setNonEmpty!3543 d!232130))

(declare-fun b!688620 () Bool)

(declare-fun e!432687 () List!7382)

(assert (=> b!688620 (= e!432687 (++!1935 (list!3111 (left!5950 (c!121356 (_2!4261 lt!284145)))) (list!3111 (right!6280 (c!121356 (_2!4261 lt!284145))))))))

(declare-fun b!688618 () Bool)

(declare-fun e!432686 () List!7382)

(assert (=> b!688618 (= e!432686 e!432687)))

(declare-fun c!121416 () Bool)

(assert (=> b!688618 (= c!121416 ((_ is Leaf!3877) (c!121356 (_2!4261 lt!284145))))))

(declare-fun d!232132 () Bool)

(declare-fun c!121415 () Bool)

(assert (=> d!232132 (= c!121415 ((_ is Empty!2613) (c!121356 (_2!4261 lt!284145))))))

(assert (=> d!232132 (= (list!3111 (c!121356 (_2!4261 lt!284145))) e!432686)))

(declare-fun b!688617 () Bool)

(assert (=> b!688617 (= e!432686 Nil!7368)))

(declare-fun b!688619 () Bool)

(assert (=> b!688619 (= e!432687 (list!3112 (xs!5262 (c!121356 (_2!4261 lt!284145)))))))

(assert (= (and d!232132 c!121415) b!688617))

(assert (= (and d!232132 (not c!121415)) b!688618))

(assert (= (and b!688618 c!121416) b!688619))

(assert (= (and b!688618 (not c!121416)) b!688620))

(declare-fun m!945272 () Bool)

(assert (=> b!688620 m!945272))

(declare-fun m!945274 () Bool)

(assert (=> b!688620 m!945274))

(assert (=> b!688620 m!945272))

(assert (=> b!688620 m!945274))

(declare-fun m!945276 () Bool)

(assert (=> b!688620 m!945276))

(declare-fun m!945278 () Bool)

(assert (=> b!688619 m!945278))

(assert (=> d!231990 d!232132))

(declare-fun bs!136253 () Bool)

(declare-fun d!232134 () Bool)

(assert (= bs!136253 (and d!232134 d!232010)))

(declare-fun lambda!21432 () Int)

(assert (=> bs!136253 (= lambda!21432 lambda!21390)))

(declare-fun bs!136254 () Bool)

(assert (= bs!136254 (and d!232134 d!232088)))

(assert (=> bs!136254 (= lambda!21432 lambda!21416)))

(declare-fun bs!136255 () Bool)

(assert (= bs!136255 (and d!232134 d!232032)))

(assert (=> bs!136255 (= lambda!21432 lambda!21396)))

(declare-fun bs!136256 () Bool)

(assert (= bs!136256 (and d!232134 d!232130)))

(assert (=> bs!136256 (= lambda!21432 lambda!21431)))

(declare-fun bs!136257 () Bool)

(assert (= bs!136257 (and d!232134 d!232006)))

(assert (=> bs!136257 (= lambda!21432 lambda!21389)))

(declare-fun bs!136258 () Bool)

(assert (= bs!136258 (and d!232134 d!232026)))

(assert (=> bs!136258 (= lambda!21432 lambda!21393)))

(declare-fun bs!136259 () Bool)

(assert (= bs!136259 (and d!232134 d!232016)))

(assert (=> bs!136259 (= lambda!21432 lambda!21392)))

(declare-fun bs!136260 () Bool)

(assert (= bs!136260 (and d!232134 d!232106)))

(assert (=> bs!136260 (= lambda!21432 lambda!21421)))

(declare-fun bs!136261 () Bool)

(assert (= bs!136261 (and d!232134 d!232114)))

(assert (=> bs!136261 (= lambda!21432 lambda!21425)))

(declare-fun bs!136262 () Bool)

(assert (= bs!136262 (and d!232134 d!232048)))

(assert (=> bs!136262 (= lambda!21432 lambda!21399)))

(declare-fun bs!136263 () Bool)

(assert (= bs!136263 (and d!232134 d!232082)))

(assert (=> bs!136263 (= lambda!21432 lambda!21411)))

(declare-fun bs!136264 () Bool)

(assert (= bs!136264 (and d!232134 d!232104)))

(assert (=> bs!136264 (= lambda!21432 lambda!21420)))

(declare-fun bs!136265 () Bool)

(assert (= bs!136265 (and d!232134 d!232012)))

(assert (=> bs!136265 (= lambda!21432 lambda!21391)))

(declare-fun bs!136266 () Bool)

(assert (= bs!136266 (and d!232134 d!232122)))

(assert (=> bs!136266 (= lambda!21432 lambda!21427)))

(declare-fun bs!136267 () Bool)

(assert (= bs!136267 (and d!232134 d!232028)))

(assert (=> bs!136267 (= lambda!21432 lambda!21394)))

(declare-fun bs!136268 () Bool)

(assert (= bs!136268 (and d!232134 d!232064)))

(assert (=> bs!136268 (= lambda!21432 lambda!21409)))

(declare-fun bs!136269 () Bool)

(assert (= bs!136269 (and d!232134 d!232002)))

(assert (=> bs!136269 (= lambda!21432 lambda!21388)))

(declare-fun bs!136270 () Bool)

(assert (= bs!136270 (and d!232134 d!232062)))

(assert (=> bs!136270 (= lambda!21432 lambda!21408)))

(declare-fun bs!136271 () Bool)

(assert (= bs!136271 (and d!232134 d!232042)))

(assert (=> bs!136271 (= lambda!21432 lambda!21398)))

(declare-fun bs!136272 () Bool)

(assert (= bs!136272 (and d!232134 d!232074)))

(assert (=> bs!136272 (= lambda!21432 lambda!21410)))

(declare-fun bs!136273 () Bool)

(assert (= bs!136273 (and d!232134 d!232030)))

(assert (=> bs!136273 (= lambda!21432 lambda!21395)))

(declare-fun bs!136274 () Bool)

(assert (= bs!136274 (and d!232134 d!232086)))

(assert (=> bs!136274 (= lambda!21432 lambda!21415)))

(declare-fun bs!136275 () Bool)

(assert (= bs!136275 (and d!232134 d!232116)))

(assert (=> bs!136275 (= lambda!21432 lambda!21426)))

(declare-fun bs!136276 () Bool)

(assert (= bs!136276 (and d!232134 d!232054)))

(assert (=> bs!136276 (= lambda!21432 lambda!21406)))

(declare-fun bs!136277 () Bool)

(assert (= bs!136277 (and d!232134 d!232034)))

(assert (=> bs!136277 (= lambda!21432 lambda!21397)))

(declare-fun bs!136278 () Bool)

(assert (= bs!136278 (and d!232134 d!232058)))

(assert (=> bs!136278 (= lambda!21432 lambda!21407)))

(assert (=> d!232134 (= (inv!9479 (_1!4255 (_1!4256 (h!12767 mapValue!2937)))) (forall!1941 (exprs!731 (_1!4255 (_1!4256 (h!12767 mapValue!2937)))) lambda!21432))))

(declare-fun bs!136279 () Bool)

(assert (= bs!136279 d!232134))

(declare-fun m!945280 () Bool)

(assert (=> bs!136279 m!945280))

(assert (=> b!688411 d!232134))

(declare-fun bs!136280 () Bool)

(declare-fun d!232136 () Bool)

(assert (= bs!136280 (and d!232136 d!232010)))

(declare-fun lambda!21433 () Int)

(assert (=> bs!136280 (= lambda!21433 lambda!21390)))

(declare-fun bs!136281 () Bool)

(assert (= bs!136281 (and d!232136 d!232088)))

(assert (=> bs!136281 (= lambda!21433 lambda!21416)))

(declare-fun bs!136282 () Bool)

(assert (= bs!136282 (and d!232136 d!232032)))

(assert (=> bs!136282 (= lambda!21433 lambda!21396)))

(declare-fun bs!136283 () Bool)

(assert (= bs!136283 (and d!232136 d!232130)))

(assert (=> bs!136283 (= lambda!21433 lambda!21431)))

(declare-fun bs!136284 () Bool)

(assert (= bs!136284 (and d!232136 d!232006)))

(assert (=> bs!136284 (= lambda!21433 lambda!21389)))

(declare-fun bs!136285 () Bool)

(assert (= bs!136285 (and d!232136 d!232026)))

(assert (=> bs!136285 (= lambda!21433 lambda!21393)))

(declare-fun bs!136286 () Bool)

(assert (= bs!136286 (and d!232136 d!232016)))

(assert (=> bs!136286 (= lambda!21433 lambda!21392)))

(declare-fun bs!136287 () Bool)

(assert (= bs!136287 (and d!232136 d!232106)))

(assert (=> bs!136287 (= lambda!21433 lambda!21421)))

(declare-fun bs!136288 () Bool)

(assert (= bs!136288 (and d!232136 d!232114)))

(assert (=> bs!136288 (= lambda!21433 lambda!21425)))

(declare-fun bs!136289 () Bool)

(assert (= bs!136289 (and d!232136 d!232048)))

(assert (=> bs!136289 (= lambda!21433 lambda!21399)))

(declare-fun bs!136290 () Bool)

(assert (= bs!136290 (and d!232136 d!232082)))

(assert (=> bs!136290 (= lambda!21433 lambda!21411)))

(declare-fun bs!136291 () Bool)

(assert (= bs!136291 (and d!232136 d!232104)))

(assert (=> bs!136291 (= lambda!21433 lambda!21420)))

(declare-fun bs!136292 () Bool)

(assert (= bs!136292 (and d!232136 d!232134)))

(assert (=> bs!136292 (= lambda!21433 lambda!21432)))

(declare-fun bs!136293 () Bool)

(assert (= bs!136293 (and d!232136 d!232012)))

(assert (=> bs!136293 (= lambda!21433 lambda!21391)))

(declare-fun bs!136294 () Bool)

(assert (= bs!136294 (and d!232136 d!232122)))

(assert (=> bs!136294 (= lambda!21433 lambda!21427)))

(declare-fun bs!136295 () Bool)

(assert (= bs!136295 (and d!232136 d!232028)))

(assert (=> bs!136295 (= lambda!21433 lambda!21394)))

(declare-fun bs!136296 () Bool)

(assert (= bs!136296 (and d!232136 d!232064)))

(assert (=> bs!136296 (= lambda!21433 lambda!21409)))

(declare-fun bs!136297 () Bool)

(assert (= bs!136297 (and d!232136 d!232002)))

(assert (=> bs!136297 (= lambda!21433 lambda!21388)))

(declare-fun bs!136298 () Bool)

(assert (= bs!136298 (and d!232136 d!232062)))

(assert (=> bs!136298 (= lambda!21433 lambda!21408)))

(declare-fun bs!136299 () Bool)

(assert (= bs!136299 (and d!232136 d!232042)))

(assert (=> bs!136299 (= lambda!21433 lambda!21398)))

(declare-fun bs!136300 () Bool)

(assert (= bs!136300 (and d!232136 d!232074)))

(assert (=> bs!136300 (= lambda!21433 lambda!21410)))

(declare-fun bs!136301 () Bool)

(assert (= bs!136301 (and d!232136 d!232030)))

(assert (=> bs!136301 (= lambda!21433 lambda!21395)))

(declare-fun bs!136302 () Bool)

(assert (= bs!136302 (and d!232136 d!232086)))

(assert (=> bs!136302 (= lambda!21433 lambda!21415)))

(declare-fun bs!136303 () Bool)

(assert (= bs!136303 (and d!232136 d!232116)))

(assert (=> bs!136303 (= lambda!21433 lambda!21426)))

(declare-fun bs!136304 () Bool)

(assert (= bs!136304 (and d!232136 d!232054)))

(assert (=> bs!136304 (= lambda!21433 lambda!21406)))

(declare-fun bs!136305 () Bool)

(assert (= bs!136305 (and d!232136 d!232034)))

(assert (=> bs!136305 (= lambda!21433 lambda!21397)))

(declare-fun bs!136306 () Bool)

(assert (= bs!136306 (and d!232136 d!232058)))

(assert (=> bs!136306 (= lambda!21433 lambda!21407)))

(assert (=> d!232136 (= (inv!9479 (_1!4255 (_1!4256 (h!12767 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))))) (forall!1941 (exprs!731 (_1!4255 (_1!4256 (h!12767 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))))) lambda!21433))))

(declare-fun bs!136307 () Bool)

(assert (= bs!136307 d!232136))

(declare-fun m!945282 () Bool)

(assert (=> bs!136307 m!945282))

(assert (=> b!688333 d!232136))

(assert (=> b!688263 d!232124))

(declare-fun bs!136308 () Bool)

(declare-fun d!232138 () Bool)

(assert (= bs!136308 (and d!232138 d!232010)))

(declare-fun lambda!21434 () Int)

(assert (=> bs!136308 (= lambda!21434 lambda!21390)))

(declare-fun bs!136309 () Bool)

(assert (= bs!136309 (and d!232138 d!232088)))

(assert (=> bs!136309 (= lambda!21434 lambda!21416)))

(declare-fun bs!136310 () Bool)

(assert (= bs!136310 (and d!232138 d!232032)))

(assert (=> bs!136310 (= lambda!21434 lambda!21396)))

(declare-fun bs!136311 () Bool)

(assert (= bs!136311 (and d!232138 d!232130)))

(assert (=> bs!136311 (= lambda!21434 lambda!21431)))

(declare-fun bs!136312 () Bool)

(assert (= bs!136312 (and d!232138 d!232006)))

(assert (=> bs!136312 (= lambda!21434 lambda!21389)))

(declare-fun bs!136313 () Bool)

(assert (= bs!136313 (and d!232138 d!232026)))

(assert (=> bs!136313 (= lambda!21434 lambda!21393)))

(declare-fun bs!136314 () Bool)

(assert (= bs!136314 (and d!232138 d!232136)))

(assert (=> bs!136314 (= lambda!21434 lambda!21433)))

(declare-fun bs!136315 () Bool)

(assert (= bs!136315 (and d!232138 d!232016)))

(assert (=> bs!136315 (= lambda!21434 lambda!21392)))

(declare-fun bs!136316 () Bool)

(assert (= bs!136316 (and d!232138 d!232106)))

(assert (=> bs!136316 (= lambda!21434 lambda!21421)))

(declare-fun bs!136317 () Bool)

(assert (= bs!136317 (and d!232138 d!232114)))

(assert (=> bs!136317 (= lambda!21434 lambda!21425)))

(declare-fun bs!136318 () Bool)

(assert (= bs!136318 (and d!232138 d!232048)))

(assert (=> bs!136318 (= lambda!21434 lambda!21399)))

(declare-fun bs!136319 () Bool)

(assert (= bs!136319 (and d!232138 d!232082)))

(assert (=> bs!136319 (= lambda!21434 lambda!21411)))

(declare-fun bs!136320 () Bool)

(assert (= bs!136320 (and d!232138 d!232104)))

(assert (=> bs!136320 (= lambda!21434 lambda!21420)))

(declare-fun bs!136321 () Bool)

(assert (= bs!136321 (and d!232138 d!232134)))

(assert (=> bs!136321 (= lambda!21434 lambda!21432)))

(declare-fun bs!136322 () Bool)

(assert (= bs!136322 (and d!232138 d!232012)))

(assert (=> bs!136322 (= lambda!21434 lambda!21391)))

(declare-fun bs!136323 () Bool)

(assert (= bs!136323 (and d!232138 d!232122)))

(assert (=> bs!136323 (= lambda!21434 lambda!21427)))

(declare-fun bs!136324 () Bool)

(assert (= bs!136324 (and d!232138 d!232028)))

(assert (=> bs!136324 (= lambda!21434 lambda!21394)))

(declare-fun bs!136325 () Bool)

(assert (= bs!136325 (and d!232138 d!232064)))

(assert (=> bs!136325 (= lambda!21434 lambda!21409)))

(declare-fun bs!136326 () Bool)

(assert (= bs!136326 (and d!232138 d!232002)))

(assert (=> bs!136326 (= lambda!21434 lambda!21388)))

(declare-fun bs!136327 () Bool)

(assert (= bs!136327 (and d!232138 d!232062)))

(assert (=> bs!136327 (= lambda!21434 lambda!21408)))

(declare-fun bs!136328 () Bool)

(assert (= bs!136328 (and d!232138 d!232042)))

(assert (=> bs!136328 (= lambda!21434 lambda!21398)))

(declare-fun bs!136329 () Bool)

(assert (= bs!136329 (and d!232138 d!232074)))

(assert (=> bs!136329 (= lambda!21434 lambda!21410)))

(declare-fun bs!136330 () Bool)

(assert (= bs!136330 (and d!232138 d!232030)))

(assert (=> bs!136330 (= lambda!21434 lambda!21395)))

(declare-fun bs!136331 () Bool)

(assert (= bs!136331 (and d!232138 d!232086)))

(assert (=> bs!136331 (= lambda!21434 lambda!21415)))

(declare-fun bs!136332 () Bool)

(assert (= bs!136332 (and d!232138 d!232116)))

(assert (=> bs!136332 (= lambda!21434 lambda!21426)))

(declare-fun bs!136333 () Bool)

(assert (= bs!136333 (and d!232138 d!232054)))

(assert (=> bs!136333 (= lambda!21434 lambda!21406)))

(declare-fun bs!136334 () Bool)

(assert (= bs!136334 (and d!232138 d!232034)))

(assert (=> bs!136334 (= lambda!21434 lambda!21397)))

(declare-fun bs!136335 () Bool)

(assert (= bs!136335 (and d!232138 d!232058)))

(assert (=> bs!136335 (= lambda!21434 lambda!21407)))

(assert (=> d!232138 (= (inv!9479 (_1!4255 (_1!4256 (h!12767 mapDefault!2937)))) (forall!1941 (exprs!731 (_1!4255 (_1!4256 (h!12767 mapDefault!2937)))) lambda!21434))))

(declare-fun bs!136336 () Bool)

(assert (= bs!136336 d!232138))

(declare-fun m!945284 () Bool)

(assert (=> bs!136336 m!945284))

(assert (=> b!688361 d!232138))

(assert (=> b!688233 d!232014))

(assert (=> b!688233 d!232022))

(assert (=> b!688233 d!231956))

(declare-fun bs!136337 () Bool)

(declare-fun d!232140 () Bool)

(assert (= bs!136337 (and d!232140 d!232010)))

(declare-fun lambda!21435 () Int)

(assert (=> bs!136337 (= lambda!21435 lambda!21390)))

(declare-fun bs!136338 () Bool)

(assert (= bs!136338 (and d!232140 d!232088)))

(assert (=> bs!136338 (= lambda!21435 lambda!21416)))

(declare-fun bs!136339 () Bool)

(assert (= bs!136339 (and d!232140 d!232032)))

(assert (=> bs!136339 (= lambda!21435 lambda!21396)))

(declare-fun bs!136340 () Bool)

(assert (= bs!136340 (and d!232140 d!232130)))

(assert (=> bs!136340 (= lambda!21435 lambda!21431)))

(declare-fun bs!136341 () Bool)

(assert (= bs!136341 (and d!232140 d!232006)))

(assert (=> bs!136341 (= lambda!21435 lambda!21389)))

(declare-fun bs!136342 () Bool)

(assert (= bs!136342 (and d!232140 d!232026)))

(assert (=> bs!136342 (= lambda!21435 lambda!21393)))

(declare-fun bs!136343 () Bool)

(assert (= bs!136343 (and d!232140 d!232136)))

(assert (=> bs!136343 (= lambda!21435 lambda!21433)))

(declare-fun bs!136344 () Bool)

(assert (= bs!136344 (and d!232140 d!232016)))

(assert (=> bs!136344 (= lambda!21435 lambda!21392)))

(declare-fun bs!136345 () Bool)

(assert (= bs!136345 (and d!232140 d!232106)))

(assert (=> bs!136345 (= lambda!21435 lambda!21421)))

(declare-fun bs!136346 () Bool)

(assert (= bs!136346 (and d!232140 d!232114)))

(assert (=> bs!136346 (= lambda!21435 lambda!21425)))

(declare-fun bs!136347 () Bool)

(assert (= bs!136347 (and d!232140 d!232048)))

(assert (=> bs!136347 (= lambda!21435 lambda!21399)))

(declare-fun bs!136348 () Bool)

(assert (= bs!136348 (and d!232140 d!232082)))

(assert (=> bs!136348 (= lambda!21435 lambda!21411)))

(declare-fun bs!136349 () Bool)

(assert (= bs!136349 (and d!232140 d!232104)))

(assert (=> bs!136349 (= lambda!21435 lambda!21420)))

(declare-fun bs!136350 () Bool)

(assert (= bs!136350 (and d!232140 d!232134)))

(assert (=> bs!136350 (= lambda!21435 lambda!21432)))

(declare-fun bs!136351 () Bool)

(assert (= bs!136351 (and d!232140 d!232012)))

(assert (=> bs!136351 (= lambda!21435 lambda!21391)))

(declare-fun bs!136352 () Bool)

(assert (= bs!136352 (and d!232140 d!232122)))

(assert (=> bs!136352 (= lambda!21435 lambda!21427)))

(declare-fun bs!136353 () Bool)

(assert (= bs!136353 (and d!232140 d!232028)))

(assert (=> bs!136353 (= lambda!21435 lambda!21394)))

(declare-fun bs!136354 () Bool)

(assert (= bs!136354 (and d!232140 d!232064)))

(assert (=> bs!136354 (= lambda!21435 lambda!21409)))

(declare-fun bs!136355 () Bool)

(assert (= bs!136355 (and d!232140 d!232002)))

(assert (=> bs!136355 (= lambda!21435 lambda!21388)))

(declare-fun bs!136356 () Bool)

(assert (= bs!136356 (and d!232140 d!232138)))

(assert (=> bs!136356 (= lambda!21435 lambda!21434)))

(declare-fun bs!136357 () Bool)

(assert (= bs!136357 (and d!232140 d!232062)))

(assert (=> bs!136357 (= lambda!21435 lambda!21408)))

(declare-fun bs!136358 () Bool)

(assert (= bs!136358 (and d!232140 d!232042)))

(assert (=> bs!136358 (= lambda!21435 lambda!21398)))

(declare-fun bs!136359 () Bool)

(assert (= bs!136359 (and d!232140 d!232074)))

(assert (=> bs!136359 (= lambda!21435 lambda!21410)))

(declare-fun bs!136360 () Bool)

(assert (= bs!136360 (and d!232140 d!232030)))

(assert (=> bs!136360 (= lambda!21435 lambda!21395)))

(declare-fun bs!136361 () Bool)

(assert (= bs!136361 (and d!232140 d!232086)))

(assert (=> bs!136361 (= lambda!21435 lambda!21415)))

(declare-fun bs!136362 () Bool)

(assert (= bs!136362 (and d!232140 d!232116)))

(assert (=> bs!136362 (= lambda!21435 lambda!21426)))

(declare-fun bs!136363 () Bool)

(assert (= bs!136363 (and d!232140 d!232054)))

(assert (=> bs!136363 (= lambda!21435 lambda!21406)))

(declare-fun bs!136364 () Bool)

(assert (= bs!136364 (and d!232140 d!232034)))

(assert (=> bs!136364 (= lambda!21435 lambda!21397)))

(declare-fun bs!136365 () Bool)

(assert (= bs!136365 (and d!232140 d!232058)))

(assert (=> bs!136365 (= lambda!21435 lambda!21407)))

(assert (=> d!232140 (= (inv!9479 setElem!3562) (forall!1941 (exprs!731 setElem!3562) lambda!21435))))

(declare-fun bs!136366 () Bool)

(assert (= bs!136366 d!232140))

(declare-fun m!945286 () Bool)

(assert (=> bs!136366 m!945286))

(assert (=> setNonEmpty!3562 d!232140))

(declare-fun b!688625 () Bool)

(declare-fun e!432690 () Bool)

(declare-fun tp!205893 () Bool)

(declare-fun tp!205894 () Bool)

(assert (=> b!688625 (= e!432690 (and tp!205893 tp!205894))))

(assert (=> b!688319 (= tp!205765 e!432690)))

(assert (= (and b!688319 ((_ is Cons!7365) (exprs!731 (_2!4259 (_1!4260 (h!12770 mapValue!2936)))))) b!688625))

(declare-fun condSetEmpty!3567 () Bool)

(assert (=> setNonEmpty!3544 (= condSetEmpty!3567 (= setRest!3544 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3567 () Bool)

(assert (=> setNonEmpty!3544 (= tp!205812 setRes!3567)))

(declare-fun setIsEmpty!3567 () Bool)

(assert (=> setIsEmpty!3567 setRes!3567))

(declare-fun e!432693 () Bool)

(declare-fun tp!205899 () Bool)

(declare-fun setElem!3567 () Context!462)

(declare-fun setNonEmpty!3567 () Bool)

(assert (=> setNonEmpty!3567 (= setRes!3567 (and tp!205899 (inv!9479 setElem!3567) e!432693))))

(declare-fun setRest!3567 () (InoxSet Context!462))

(assert (=> setNonEmpty!3567 (= setRest!3544 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3567 true) setRest!3567))))

(declare-fun b!688630 () Bool)

(declare-fun tp!205900 () Bool)

(assert (=> b!688630 (= e!432693 tp!205900)))

(assert (= (and setNonEmpty!3544 condSetEmpty!3567) setIsEmpty!3567))

(assert (= (and setNonEmpty!3544 (not condSetEmpty!3567)) setNonEmpty!3567))

(assert (= setNonEmpty!3567 b!688630))

(declare-fun m!945288 () Bool)

(assert (=> setNonEmpty!3567 m!945288))

(declare-fun condSetEmpty!3568 () Bool)

(assert (=> setNonEmpty!3539 (= condSetEmpty!3568 (= setRest!3539 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3568 () Bool)

(assert (=> setNonEmpty!3539 (= tp!205764 setRes!3568)))

(declare-fun setIsEmpty!3568 () Bool)

(assert (=> setIsEmpty!3568 setRes!3568))

(declare-fun e!432694 () Bool)

(declare-fun tp!205901 () Bool)

(declare-fun setNonEmpty!3568 () Bool)

(declare-fun setElem!3568 () Context!462)

(assert (=> setNonEmpty!3568 (= setRes!3568 (and tp!205901 (inv!9479 setElem!3568) e!432694))))

(declare-fun setRest!3568 () (InoxSet Context!462))

(assert (=> setNonEmpty!3568 (= setRest!3539 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3568 true) setRest!3568))))

(declare-fun b!688631 () Bool)

(declare-fun tp!205902 () Bool)

(assert (=> b!688631 (= e!432694 tp!205902)))

(assert (= (and setNonEmpty!3539 condSetEmpty!3568) setIsEmpty!3568))

(assert (= (and setNonEmpty!3539 (not condSetEmpty!3568)) setNonEmpty!3568))

(assert (= setNonEmpty!3568 b!688631))

(declare-fun m!945290 () Bool)

(assert (=> setNonEmpty!3568 m!945290))

(declare-fun condSetEmpty!3569 () Bool)

(assert (=> setNonEmpty!3531 (= condSetEmpty!3569 (= setRest!3531 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3569 () Bool)

(assert (=> setNonEmpty!3531 (= tp!205721 setRes!3569)))

(declare-fun setIsEmpty!3569 () Bool)

(assert (=> setIsEmpty!3569 setRes!3569))

(declare-fun setNonEmpty!3569 () Bool)

(declare-fun tp!205903 () Bool)

(declare-fun e!432695 () Bool)

(declare-fun setElem!3569 () Context!462)

(assert (=> setNonEmpty!3569 (= setRes!3569 (and tp!205903 (inv!9479 setElem!3569) e!432695))))

(declare-fun setRest!3569 () (InoxSet Context!462))

(assert (=> setNonEmpty!3569 (= setRest!3531 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3569 true) setRest!3569))))

(declare-fun b!688632 () Bool)

(declare-fun tp!205904 () Bool)

(assert (=> b!688632 (= e!432695 tp!205904)))

(assert (= (and setNonEmpty!3531 condSetEmpty!3569) setIsEmpty!3569))

(assert (= (and setNonEmpty!3531 (not condSetEmpty!3569)) setNonEmpty!3569))

(assert (= setNonEmpty!3569 b!688632))

(declare-fun m!945292 () Bool)

(assert (=> setNonEmpty!3569 m!945292))

(declare-fun b!688633 () Bool)

(declare-fun e!432696 () Bool)

(declare-fun tp!205905 () Bool)

(declare-fun tp!205906 () Bool)

(assert (=> b!688633 (= e!432696 (and tp!205905 tp!205906))))

(assert (=> b!688381 (= tp!205841 e!432696)))

(assert (= (and b!688381 ((_ is Cons!7365) (exprs!731 setElem!3553))) b!688633))

(declare-fun condSetEmpty!3570 () Bool)

(assert (=> setNonEmpty!3532 (= condSetEmpty!3570 (= setRest!3532 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3570 () Bool)

(assert (=> setNonEmpty!3532 (= tp!205726 setRes!3570)))

(declare-fun setIsEmpty!3570 () Bool)

(assert (=> setIsEmpty!3570 setRes!3570))

(declare-fun setElem!3570 () Context!462)

(declare-fun setNonEmpty!3570 () Bool)

(declare-fun tp!205907 () Bool)

(declare-fun e!432697 () Bool)

(assert (=> setNonEmpty!3570 (= setRes!3570 (and tp!205907 (inv!9479 setElem!3570) e!432697))))

(declare-fun setRest!3570 () (InoxSet Context!462))

(assert (=> setNonEmpty!3570 (= setRest!3532 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3570 true) setRest!3570))))

(declare-fun b!688634 () Bool)

(declare-fun tp!205908 () Bool)

(assert (=> b!688634 (= e!432697 tp!205908)))

(assert (= (and setNonEmpty!3532 condSetEmpty!3570) setIsEmpty!3570))

(assert (= (and setNonEmpty!3532 (not condSetEmpty!3570)) setNonEmpty!3570))

(assert (= setNonEmpty!3570 b!688634))

(declare-fun m!945294 () Bool)

(assert (=> setNonEmpty!3570 m!945294))

(declare-fun setNonEmpty!3571 () Bool)

(declare-fun e!432698 () Bool)

(declare-fun setElem!3571 () Context!462)

(declare-fun tp!205911 () Bool)

(declare-fun setRes!3571 () Bool)

(assert (=> setNonEmpty!3571 (= setRes!3571 (and tp!205911 (inv!9479 setElem!3571) e!432698))))

(declare-fun setRest!3571 () (InoxSet Context!462))

(assert (=> setNonEmpty!3571 (= (_1!4257 (_1!4258 (h!12768 (t!87189 (minValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59)))))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3571 true) setRest!3571))))

(declare-fun b!688636 () Bool)

(declare-fun tp!205910 () Bool)

(assert (=> b!688636 (= e!432698 tp!205910)))

(declare-fun b!688635 () Bool)

(declare-fun e!432699 () Bool)

(declare-fun tp!205909 () Bool)

(assert (=> b!688635 (= e!432699 (and setRes!3571 tp!205909))))

(declare-fun condSetEmpty!3571 () Bool)

(assert (=> b!688635 (= condSetEmpty!3571 (= (_1!4257 (_1!4258 (h!12768 (t!87189 (minValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59)))))))))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3571 () Bool)

(assert (=> setIsEmpty!3571 setRes!3571))

(assert (=> b!688415 (= tp!205886 e!432699)))

(assert (= (and b!688635 condSetEmpty!3571) setIsEmpty!3571))

(assert (= (and b!688635 (not condSetEmpty!3571)) setNonEmpty!3571))

(assert (= setNonEmpty!3571 b!688636))

(assert (= (and b!688415 ((_ is Cons!7367) (t!87189 (minValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))))) b!688635))

(declare-fun m!945296 () Bool)

(assert (=> setNonEmpty!3571 m!945296))

(declare-fun setElem!3572 () Context!462)

(declare-fun setNonEmpty!3572 () Bool)

(declare-fun tp!205914 () Bool)

(declare-fun setRes!3572 () Bool)

(declare-fun e!432700 () Bool)

(assert (=> setNonEmpty!3572 (= setRes!3572 (and tp!205914 (inv!9479 setElem!3572) e!432700))))

(declare-fun setRest!3572 () (InoxSet Context!462))

(assert (=> setNonEmpty!3572 (= (_1!4257 (_1!4258 (h!12768 (t!87189 mapDefault!2936)))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3572 true) setRest!3572))))

(declare-fun b!688638 () Bool)

(declare-fun tp!205913 () Bool)

(assert (=> b!688638 (= e!432700 tp!205913)))

(declare-fun b!688637 () Bool)

(declare-fun e!432701 () Bool)

(declare-fun tp!205912 () Bool)

(assert (=> b!688637 (= e!432701 (and setRes!3572 tp!205912))))

(declare-fun condSetEmpty!3572 () Bool)

(assert (=> b!688637 (= condSetEmpty!3572 (= (_1!4257 (_1!4258 (h!12768 (t!87189 mapDefault!2936)))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3572 () Bool)

(assert (=> setIsEmpty!3572 setRes!3572))

(assert (=> b!688369 (= tp!205820 e!432701)))

(assert (= (and b!688637 condSetEmpty!3572) setIsEmpty!3572))

(assert (= (and b!688637 (not condSetEmpty!3572)) setNonEmpty!3572))

(assert (= setNonEmpty!3572 b!688638))

(assert (= (and b!688369 ((_ is Cons!7367) (t!87189 mapDefault!2936))) b!688637))

(declare-fun m!945298 () Bool)

(assert (=> setNonEmpty!3572 m!945298))

(declare-fun condSetEmpty!3573 () Bool)

(assert (=> setNonEmpty!3560 (= condSetEmpty!3573 (= setRest!3561 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3573 () Bool)

(assert (=> setNonEmpty!3560 (= tp!205875 setRes!3573)))

(declare-fun setIsEmpty!3573 () Bool)

(assert (=> setIsEmpty!3573 setRes!3573))

(declare-fun e!432702 () Bool)

(declare-fun setNonEmpty!3573 () Bool)

(declare-fun setElem!3573 () Context!462)

(declare-fun tp!205915 () Bool)

(assert (=> setNonEmpty!3573 (= setRes!3573 (and tp!205915 (inv!9479 setElem!3573) e!432702))))

(declare-fun setRest!3573 () (InoxSet Context!462))

(assert (=> setNonEmpty!3573 (= setRest!3561 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3573 true) setRest!3573))))

(declare-fun b!688639 () Bool)

(declare-fun tp!205916 () Bool)

(assert (=> b!688639 (= e!432702 tp!205916)))

(assert (= (and setNonEmpty!3560 condSetEmpty!3573) setIsEmpty!3573))

(assert (= (and setNonEmpty!3560 (not condSetEmpty!3573)) setNonEmpty!3573))

(assert (= setNonEmpty!3573 b!688639))

(declare-fun m!945300 () Bool)

(assert (=> setNonEmpty!3573 m!945300))

(declare-fun b!688640 () Bool)

(declare-fun e!432703 () Bool)

(declare-fun tp!205917 () Bool)

(declare-fun tp!205918 () Bool)

(assert (=> b!688640 (= e!432703 (and tp!205917 tp!205918))))

(assert (=> b!688293 (= tp!205722 e!432703)))

(assert (= (and b!688293 ((_ is Cons!7365) (exprs!731 (_2!4259 (_1!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))))))) b!688640))

(declare-fun condSetEmpty!3574 () Bool)

(assert (=> setNonEmpty!3552 (= condSetEmpty!3574 (= setRest!3552 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3574 () Bool)

(assert (=> setNonEmpty!3552 (= tp!205838 setRes!3574)))

(declare-fun setIsEmpty!3574 () Bool)

(assert (=> setIsEmpty!3574 setRes!3574))

(declare-fun setElem!3574 () Context!462)

(declare-fun setNonEmpty!3574 () Bool)

(declare-fun e!432704 () Bool)

(declare-fun tp!205919 () Bool)

(assert (=> setNonEmpty!3574 (= setRes!3574 (and tp!205919 (inv!9479 setElem!3574) e!432704))))

(declare-fun setRest!3574 () (InoxSet Context!462))

(assert (=> setNonEmpty!3574 (= setRest!3552 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3574 true) setRest!3574))))

(declare-fun b!688641 () Bool)

(declare-fun tp!205920 () Bool)

(assert (=> b!688641 (= e!432704 tp!205920)))

(assert (= (and setNonEmpty!3552 condSetEmpty!3574) setIsEmpty!3574))

(assert (= (and setNonEmpty!3552 (not condSetEmpty!3574)) setNonEmpty!3574))

(assert (= setNonEmpty!3574 b!688641))

(declare-fun m!945302 () Bool)

(assert (=> setNonEmpty!3574 m!945302))

(declare-fun b!688642 () Bool)

(declare-fun e!432705 () Bool)

(declare-fun tp!205921 () Bool)

(declare-fun tp!205922 () Bool)

(assert (=> b!688642 (= e!432705 (and tp!205921 tp!205922))))

(assert (=> b!688296 (= tp!205727 e!432705)))

(assert (= (and b!688296 ((_ is Cons!7365) (exprs!731 (_2!4259 (_1!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470)))))))))))) b!688642))

(declare-fun condSetEmpty!3575 () Bool)

(assert (=> setNonEmpty!3564 (= condSetEmpty!3575 (= setRest!3564 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3575 () Bool)

(assert (=> setNonEmpty!3564 (= tp!205888 setRes!3575)))

(declare-fun setIsEmpty!3575 () Bool)

(assert (=> setIsEmpty!3575 setRes!3575))

(declare-fun e!432706 () Bool)

(declare-fun setNonEmpty!3575 () Bool)

(declare-fun tp!205923 () Bool)

(declare-fun setElem!3575 () Context!462)

(assert (=> setNonEmpty!3575 (= setRes!3575 (and tp!205923 (inv!9479 setElem!3575) e!432706))))

(declare-fun setRest!3575 () (InoxSet Context!462))

(assert (=> setNonEmpty!3575 (= setRest!3564 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3575 true) setRest!3575))))

(declare-fun b!688643 () Bool)

(declare-fun tp!205924 () Bool)

(assert (=> b!688643 (= e!432706 tp!205924)))

(assert (= (and setNonEmpty!3564 condSetEmpty!3575) setIsEmpty!3575))

(assert (= (and setNonEmpty!3564 (not condSetEmpty!3575)) setNonEmpty!3575))

(assert (= setNonEmpty!3575 b!688643))

(declare-fun m!945304 () Bool)

(assert (=> setNonEmpty!3575 m!945304))

(declare-fun condSetEmpty!3576 () Bool)

(assert (=> setNonEmpty!3547 (= condSetEmpty!3576 (= setRest!3547 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3576 () Bool)

(assert (=> setNonEmpty!3547 (= tp!205822 setRes!3576)))

(declare-fun setIsEmpty!3576 () Bool)

(assert (=> setIsEmpty!3576 setRes!3576))

(declare-fun tp!205925 () Bool)

(declare-fun setElem!3576 () Context!462)

(declare-fun e!432707 () Bool)

(declare-fun setNonEmpty!3576 () Bool)

(assert (=> setNonEmpty!3576 (= setRes!3576 (and tp!205925 (inv!9479 setElem!3576) e!432707))))

(declare-fun setRest!3576 () (InoxSet Context!462))

(assert (=> setNonEmpty!3576 (= setRest!3547 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3576 true) setRest!3576))))

(declare-fun b!688644 () Bool)

(declare-fun tp!205926 () Bool)

(assert (=> b!688644 (= e!432707 tp!205926)))

(assert (= (and setNonEmpty!3547 condSetEmpty!3576) setIsEmpty!3576))

(assert (= (and setNonEmpty!3547 (not condSetEmpty!3576)) setNonEmpty!3576))

(assert (= setNonEmpty!3576 b!688644))

(declare-fun m!945306 () Bool)

(assert (=> setNonEmpty!3576 m!945306))

(declare-fun setIsEmpty!3577 () Bool)

(declare-fun setRes!3577 () Bool)

(assert (=> setIsEmpty!3577 setRes!3577))

(declare-fun b!688645 () Bool)

(declare-fun e!432709 () Bool)

(declare-fun tp!205928 () Bool)

(assert (=> b!688645 (= e!432709 tp!205928)))

(declare-fun b!688646 () Bool)

(declare-fun e!432708 () Bool)

(declare-fun tp!205927 () Bool)

(declare-fun e!432710 () Bool)

(assert (=> b!688646 (= e!432708 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 (t!87188 mapValue!2947))))) e!432710 tp_is_empty!3639 setRes!3577 tp!205927))))

(declare-fun condSetEmpty!3577 () Bool)

(assert (=> b!688646 (= condSetEmpty!3577 (= (_2!4256 (h!12767 (t!87188 mapValue!2947))) ((as const (Array Context!462 Bool)) false)))))

(assert (=> b!688406 (= tp!205877 e!432708)))

(declare-fun b!688647 () Bool)

(declare-fun tp!205930 () Bool)

(assert (=> b!688647 (= e!432710 tp!205930)))

(declare-fun setElem!3577 () Context!462)

(declare-fun tp!205929 () Bool)

(declare-fun setNonEmpty!3577 () Bool)

(assert (=> setNonEmpty!3577 (= setRes!3577 (and tp!205929 (inv!9479 setElem!3577) e!432709))))

(declare-fun setRest!3577 () (InoxSet Context!462))

(assert (=> setNonEmpty!3577 (= (_2!4256 (h!12767 (t!87188 mapValue!2947))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3577 true) setRest!3577))))

(assert (= b!688646 b!688647))

(assert (= (and b!688646 condSetEmpty!3577) setIsEmpty!3577))

(assert (= (and b!688646 (not condSetEmpty!3577)) setNonEmpty!3577))

(assert (= setNonEmpty!3577 b!688645))

(assert (= (and b!688406 ((_ is Cons!7366) (t!87188 mapValue!2947))) b!688646))

(declare-fun m!945308 () Bool)

(assert (=> b!688646 m!945308))

(declare-fun m!945310 () Bool)

(assert (=> setNonEmpty!3577 m!945310))

(declare-fun b!688651 () Bool)

(declare-fun e!432711 () Bool)

(declare-fun tp!205931 () Bool)

(declare-fun tp!205932 () Bool)

(assert (=> b!688651 (= e!432711 (and tp!205931 tp!205932))))

(declare-fun b!688649 () Bool)

(declare-fun tp!205934 () Bool)

(declare-fun tp!205935 () Bool)

(assert (=> b!688649 (= e!432711 (and tp!205934 tp!205935))))

(assert (=> b!688387 (= tp!205848 e!432711)))

(declare-fun b!688650 () Bool)

(declare-fun tp!205933 () Bool)

(assert (=> b!688650 (= e!432711 tp!205933)))

(declare-fun b!688648 () Bool)

(assert (=> b!688648 (= e!432711 tp_is_empty!3639)))

(assert (= (and b!688387 ((_ is ElementMatch!1821) (_1!4259 (_1!4260 (h!12770 mapDefault!2938))))) b!688648))

(assert (= (and b!688387 ((_ is Concat!3349) (_1!4259 (_1!4260 (h!12770 mapDefault!2938))))) b!688649))

(assert (= (and b!688387 ((_ is Star!1821) (_1!4259 (_1!4260 (h!12770 mapDefault!2938))))) b!688650))

(assert (= (and b!688387 ((_ is Union!1821) (_1!4259 (_1!4260 (h!12770 mapDefault!2938))))) b!688651))

(declare-fun tp!205938 () Bool)

(declare-fun setRes!3578 () Bool)

(declare-fun setNonEmpty!3578 () Bool)

(declare-fun e!432714 () Bool)

(declare-fun setElem!3578 () Context!462)

(assert (=> setNonEmpty!3578 (= setRes!3578 (and tp!205938 (inv!9479 setElem!3578) e!432714))))

(declare-fun setRest!3578 () (InoxSet Context!462))

(assert (=> setNonEmpty!3578 (= (_2!4260 (h!12770 (t!87191 mapDefault!2938))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3578 true) setRest!3578))))

(declare-fun b!688652 () Bool)

(declare-fun tp!205937 () Bool)

(declare-fun e!432712 () Bool)

(declare-fun e!432713 () Bool)

(declare-fun tp!205936 () Bool)

(assert (=> b!688652 (= e!432713 (and tp!205937 (inv!9479 (_2!4259 (_1!4260 (h!12770 (t!87191 mapDefault!2938))))) e!432712 tp_is_empty!3639 setRes!3578 tp!205936))))

(declare-fun condSetEmpty!3578 () Bool)

(assert (=> b!688652 (= condSetEmpty!3578 (= (_2!4260 (h!12770 (t!87191 mapDefault!2938))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688653 () Bool)

(declare-fun tp!205939 () Bool)

(assert (=> b!688653 (= e!432712 tp!205939)))

(declare-fun b!688654 () Bool)

(declare-fun tp!205940 () Bool)

(assert (=> b!688654 (= e!432714 tp!205940)))

(declare-fun setIsEmpty!3578 () Bool)

(assert (=> setIsEmpty!3578 setRes!3578))

(assert (=> b!688387 (= tp!205847 e!432713)))

(assert (= b!688652 b!688653))

(assert (= (and b!688652 condSetEmpty!3578) setIsEmpty!3578))

(assert (= (and b!688652 (not condSetEmpty!3578)) setNonEmpty!3578))

(assert (= setNonEmpty!3578 b!688654))

(assert (= (and b!688387 ((_ is Cons!7369) (t!87191 mapDefault!2938))) b!688652))

(declare-fun m!945312 () Bool)

(assert (=> setNonEmpty!3578 m!945312))

(declare-fun m!945314 () Bool)

(assert (=> b!688652 m!945314))

(declare-fun tp!205943 () Bool)

(declare-fun b!688655 () Bool)

(declare-fun tp!205942 () Bool)

(declare-fun e!432716 () Bool)

(assert (=> b!688655 (= e!432716 (and (inv!9471 (left!5950 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) tp!205942 (inv!9471 (right!6280 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) tp!205943))))

(declare-fun b!688657 () Bool)

(declare-fun e!432715 () Bool)

(declare-fun tp!205941 () Bool)

(assert (=> b!688657 (= e!432715 tp!205941)))

(declare-fun b!688656 () Bool)

(assert (=> b!688656 (= e!432716 (and (inv!9478 (xs!5262 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) e!432715))))

(assert (=> b!688281 (= tp!205707 (and (inv!9471 (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) e!432716))))

(assert (= (and b!688281 ((_ is Node!2613) (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) b!688655))

(assert (= b!688656 b!688657))

(assert (= (and b!688281 ((_ is Leaf!3877) (left!5950 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) b!688656))

(declare-fun m!945316 () Bool)

(assert (=> b!688655 m!945316))

(declare-fun m!945318 () Bool)

(assert (=> b!688655 m!945318))

(declare-fun m!945320 () Bool)

(assert (=> b!688656 m!945320))

(assert (=> b!688281 m!944901))

(declare-fun e!432718 () Bool)

(declare-fun b!688658 () Bool)

(declare-fun tp!205945 () Bool)

(declare-fun tp!205946 () Bool)

(assert (=> b!688658 (= e!432718 (and (inv!9471 (left!5950 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) tp!205945 (inv!9471 (right!6280 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) tp!205946))))

(declare-fun b!688660 () Bool)

(declare-fun e!432717 () Bool)

(declare-fun tp!205944 () Bool)

(assert (=> b!688660 (= e!432717 tp!205944)))

(declare-fun b!688659 () Bool)

(assert (=> b!688659 (= e!432718 (and (inv!9478 (xs!5262 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) e!432717))))

(assert (=> b!688281 (= tp!205708 (and (inv!9471 (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))) e!432718))))

(assert (= (and b!688281 ((_ is Node!2613) (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) b!688658))

(assert (= b!688659 b!688660))

(assert (= (and b!688281 ((_ is Leaf!3877) (right!6280 (c!121356 (totalInput!1786 cacheFindLongestMatch!59))))) b!688659))

(declare-fun m!945322 () Bool)

(assert (=> b!688658 m!945322))

(declare-fun m!945324 () Bool)

(assert (=> b!688658 m!945324))

(declare-fun m!945326 () Bool)

(assert (=> b!688659 m!945326))

(assert (=> b!688281 m!944903))

(declare-fun condSetEmpty!3579 () Bool)

(assert (=> setNonEmpty!3554 (= condSetEmpty!3579 (= setRest!3554 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3579 () Bool)

(assert (=> setNonEmpty!3554 (= tp!205846 setRes!3579)))

(declare-fun setIsEmpty!3579 () Bool)

(assert (=> setIsEmpty!3579 setRes!3579))

(declare-fun tp!205947 () Bool)

(declare-fun setNonEmpty!3579 () Bool)

(declare-fun e!432719 () Bool)

(declare-fun setElem!3579 () Context!462)

(assert (=> setNonEmpty!3579 (= setRes!3579 (and tp!205947 (inv!9479 setElem!3579) e!432719))))

(declare-fun setRest!3579 () (InoxSet Context!462))

(assert (=> setNonEmpty!3579 (= setRest!3554 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3579 true) setRest!3579))))

(declare-fun b!688661 () Bool)

(declare-fun tp!205948 () Bool)

(assert (=> b!688661 (= e!432719 tp!205948)))

(assert (= (and setNonEmpty!3554 condSetEmpty!3579) setIsEmpty!3579))

(assert (= (and setNonEmpty!3554 (not condSetEmpty!3579)) setNonEmpty!3579))

(assert (= setNonEmpty!3579 b!688661))

(declare-fun m!945328 () Bool)

(assert (=> setNonEmpty!3579 m!945328))

(declare-fun b!688664 () Bool)

(declare-fun b_free!19373 () Bool)

(declare-fun b_next!19437 () Bool)

(assert (=> b!688664 (= b_free!19373 (not b_next!19437))))

(declare-fun tp!205950 () Bool)

(declare-fun b_and!63167 () Bool)

(assert (=> b!688664 (= tp!205950 b_and!63167)))

(declare-fun b_free!19375 () Bool)

(declare-fun b_next!19439 () Bool)

(assert (=> b!688664 (= b_free!19375 (not b_next!19439))))

(declare-fun tp!205949 () Bool)

(declare-fun b_and!63169 () Bool)

(assert (=> b!688664 (= tp!205949 b_and!63169)))

(declare-fun e!432720 () Bool)

(assert (=> b!688664 (= e!432720 (and tp!205950 tp!205949))))

(declare-fun e!432723 () Bool)

(declare-fun tp!205951 () Bool)

(declare-fun b!688663 () Bool)

(assert (=> b!688663 (= e!432723 (and tp!205951 (inv!9469 (tag!1746 (h!12773 (t!87194 (t!87194 rules!1357))))) (inv!9472 (transformation!1484 (h!12773 (t!87194 (t!87194 rules!1357))))) e!432720))))

(declare-fun b!688662 () Bool)

(declare-fun e!432721 () Bool)

(declare-fun tp!205952 () Bool)

(assert (=> b!688662 (= e!432721 (and e!432723 tp!205952))))

(assert (=> b!688357 (= tp!205809 e!432721)))

(assert (= b!688663 b!688664))

(assert (= b!688662 b!688663))

(assert (= (and b!688357 ((_ is Cons!7372) (t!87194 (t!87194 rules!1357)))) b!688662))

(declare-fun m!945330 () Bool)

(assert (=> b!688663 m!945330))

(declare-fun m!945332 () Bool)

(assert (=> b!688663 m!945332))

(declare-fun tp!205955 () Bool)

(declare-fun e!432724 () Bool)

(declare-fun setRes!3580 () Bool)

(declare-fun setElem!3580 () Context!462)

(declare-fun setNonEmpty!3580 () Bool)

(assert (=> setNonEmpty!3580 (= setRes!3580 (and tp!205955 (inv!9479 setElem!3580) e!432724))))

(declare-fun setRest!3580 () (InoxSet Context!462))

(assert (=> setNonEmpty!3580 (= (_1!4257 (_1!4258 (h!12768 (t!87189 mapValue!2944)))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3580 true) setRest!3580))))

(declare-fun b!688666 () Bool)

(declare-fun tp!205954 () Bool)

(assert (=> b!688666 (= e!432724 tp!205954)))

(declare-fun b!688665 () Bool)

(declare-fun e!432725 () Bool)

(declare-fun tp!205953 () Bool)

(assert (=> b!688665 (= e!432725 (and setRes!3580 tp!205953))))

(declare-fun condSetEmpty!3580 () Bool)

(assert (=> b!688665 (= condSetEmpty!3580 (= (_1!4257 (_1!4258 (h!12768 (t!87189 mapValue!2944)))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3580 () Bool)

(assert (=> setIsEmpty!3580 setRes!3580))

(assert (=> b!688383 (= tp!205839 e!432725)))

(assert (= (and b!688665 condSetEmpty!3580) setIsEmpty!3580))

(assert (= (and b!688665 (not condSetEmpty!3580)) setNonEmpty!3580))

(assert (= setNonEmpty!3580 b!688666))

(assert (= (and b!688383 ((_ is Cons!7367) (t!87189 mapValue!2944))) b!688665))

(declare-fun m!945334 () Bool)

(assert (=> setNonEmpty!3580 m!945334))

(declare-fun b!688667 () Bool)

(declare-fun e!432726 () Bool)

(declare-fun tp!205956 () Bool)

(declare-fun tp!205957 () Bool)

(assert (=> b!688667 (= e!432726 (and tp!205956 tp!205957))))

(assert (=> b!688312 (= tp!205760 e!432726)))

(assert (= (and b!688312 ((_ is Cons!7365) (exprs!731 setElem!3537))) b!688667))

(declare-fun tp!205960 () Bool)

(declare-fun setElem!3581 () Context!462)

(declare-fun e!432727 () Bool)

(declare-fun setNonEmpty!3581 () Bool)

(declare-fun setRes!3581 () Bool)

(assert (=> setNonEmpty!3581 (= setRes!3581 (and tp!205960 (inv!9479 setElem!3581) e!432727))))

(declare-fun setRest!3581 () (InoxSet Context!462))

(assert (=> setNonEmpty!3581 (= (_1!4257 (_1!4258 (h!12768 (t!87189 mapValue!2938)))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3581 true) setRest!3581))))

(declare-fun b!688669 () Bool)

(declare-fun tp!205959 () Bool)

(assert (=> b!688669 (= e!432727 tp!205959)))

(declare-fun b!688668 () Bool)

(declare-fun e!432728 () Bool)

(declare-fun tp!205958 () Bool)

(assert (=> b!688668 (= e!432728 (and setRes!3581 tp!205958))))

(declare-fun condSetEmpty!3581 () Bool)

(assert (=> b!688668 (= condSetEmpty!3581 (= (_1!4257 (_1!4258 (h!12768 (t!87189 mapValue!2938)))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3581 () Bool)

(assert (=> setIsEmpty!3581 setRes!3581))

(assert (=> b!688385 (= tp!205844 e!432728)))

(assert (= (and b!688668 condSetEmpty!3581) setIsEmpty!3581))

(assert (= (and b!688668 (not condSetEmpty!3581)) setNonEmpty!3581))

(assert (= setNonEmpty!3581 b!688669))

(assert (= (and b!688385 ((_ is Cons!7367) (t!87189 mapValue!2938))) b!688668))

(declare-fun m!945336 () Bool)

(assert (=> setNonEmpty!3581 m!945336))

(declare-fun b!688670 () Bool)

(declare-fun e!432729 () Bool)

(declare-fun tp!205961 () Bool)

(declare-fun tp!205962 () Bool)

(assert (=> b!688670 (= e!432729 (and tp!205961 tp!205962))))

(assert (=> b!688389 (= tp!205851 e!432729)))

(assert (= (and b!688389 ((_ is Cons!7365) (exprs!731 setElem!3555))) b!688670))

(declare-fun b!688675 () Bool)

(declare-fun e!432732 () Bool)

(declare-fun tp!205965 () Bool)

(assert (=> b!688675 (= e!432732 (and tp_is_empty!3639 tp!205965))))

(assert (=> b!688283 (= tp!205706 e!432732)))

(assert (= (and b!688283 ((_ is Cons!7368) (innerList!2671 (xs!5262 (c!121356 (totalInput!1786 cacheFindLongestMatch!59)))))) b!688675))

(declare-fun condSetEmpty!3582 () Bool)

(assert (=> setNonEmpty!3537 (= condSetEmpty!3582 (= setRest!3538 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3582 () Bool)

(assert (=> setNonEmpty!3537 (= tp!205758 setRes!3582)))

(declare-fun setIsEmpty!3582 () Bool)

(assert (=> setIsEmpty!3582 setRes!3582))

(declare-fun setElem!3582 () Context!462)

(declare-fun tp!205966 () Bool)

(declare-fun setNonEmpty!3582 () Bool)

(declare-fun e!432733 () Bool)

(assert (=> setNonEmpty!3582 (= setRes!3582 (and tp!205966 (inv!9479 setElem!3582) e!432733))))

(declare-fun setRest!3582 () (InoxSet Context!462))

(assert (=> setNonEmpty!3582 (= setRest!3538 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3582 true) setRest!3582))))

(declare-fun b!688676 () Bool)

(declare-fun tp!205967 () Bool)

(assert (=> b!688676 (= e!432733 tp!205967)))

(assert (= (and setNonEmpty!3537 condSetEmpty!3582) setIsEmpty!3582))

(assert (= (and setNonEmpty!3537 (not condSetEmpty!3582)) setNonEmpty!3582))

(assert (= setNonEmpty!3582 b!688676))

(declare-fun m!945338 () Bool)

(assert (=> setNonEmpty!3582 m!945338))

(declare-fun b!688677 () Bool)

(declare-fun e!432737 () Bool)

(declare-fun tp!205972 () Bool)

(assert (=> b!688677 (= e!432737 tp!205972)))

(declare-fun setNonEmpty!3583 () Bool)

(declare-fun setElem!3584 () Context!462)

(declare-fun tp!205973 () Bool)

(declare-fun setRes!3583 () Bool)

(assert (=> setNonEmpty!3583 (= setRes!3583 (and tp!205973 (inv!9479 setElem!3584) e!432737))))

(declare-fun mapDefault!2948 () List!7380)

(declare-fun setRest!3584 () (InoxSet Context!462))

(assert (=> setNonEmpty!3583 (= (_2!4256 (h!12767 mapDefault!2948)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3584 true) setRest!3584))))

(declare-fun tp!205976 () Bool)

(declare-fun e!432736 () Bool)

(declare-fun e!432739 () Bool)

(declare-fun b!688678 () Bool)

(assert (=> b!688678 (= e!432736 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 mapDefault!2948)))) e!432739 tp_is_empty!3639 setRes!3583 tp!205976))))

(declare-fun condSetEmpty!3583 () Bool)

(assert (=> b!688678 (= condSetEmpty!3583 (= (_2!4256 (h!12767 mapDefault!2948)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun e!432735 () Bool)

(declare-fun b!688679 () Bool)

(declare-fun setRes!3584 () Bool)

(declare-fun mapValue!2948 () List!7380)

(declare-fun tp!205975 () Bool)

(declare-fun e!432738 () Bool)

(assert (=> b!688679 (= e!432735 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 mapValue!2948)))) e!432738 tp_is_empty!3639 setRes!3584 tp!205975))))

(declare-fun condSetEmpty!3584 () Bool)

(assert (=> b!688679 (= condSetEmpty!3584 (= (_2!4256 (h!12767 mapValue!2948)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688680 () Bool)

(declare-fun e!432734 () Bool)

(declare-fun tp!205970 () Bool)

(assert (=> b!688680 (= e!432734 tp!205970)))

(declare-fun mapIsEmpty!2948 () Bool)

(declare-fun mapRes!2948 () Bool)

(assert (=> mapIsEmpty!2948 mapRes!2948))

(declare-fun b!688681 () Bool)

(declare-fun tp!205971 () Bool)

(assert (=> b!688681 (= e!432738 tp!205971)))

(declare-fun setIsEmpty!3583 () Bool)

(assert (=> setIsEmpty!3583 setRes!3583))

(declare-fun condMapEmpty!2948 () Bool)

(assert (=> mapNonEmpty!2947 (= condMapEmpty!2948 (= mapRest!2947 ((as const (Array (_ BitVec 32) List!7380)) mapDefault!2948)))))

(assert (=> mapNonEmpty!2947 (= tp!205871 (and e!432736 mapRes!2948))))

(declare-fun b!688682 () Bool)

(declare-fun tp!205968 () Bool)

(assert (=> b!688682 (= e!432739 tp!205968)))

(declare-fun mapNonEmpty!2948 () Bool)

(declare-fun tp!205969 () Bool)

(assert (=> mapNonEmpty!2948 (= mapRes!2948 (and tp!205969 e!432735))))

(declare-fun mapKey!2948 () (_ BitVec 32))

(declare-fun mapRest!2948 () (Array (_ BitVec 32) List!7380))

(assert (=> mapNonEmpty!2948 (= mapRest!2947 (store mapRest!2948 mapKey!2948 mapValue!2948))))

(declare-fun tp!205974 () Bool)

(declare-fun setElem!3583 () Context!462)

(declare-fun setNonEmpty!3584 () Bool)

(assert (=> setNonEmpty!3584 (= setRes!3584 (and tp!205974 (inv!9479 setElem!3583) e!432734))))

(declare-fun setRest!3583 () (InoxSet Context!462))

(assert (=> setNonEmpty!3584 (= (_2!4256 (h!12767 mapValue!2948)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3583 true) setRest!3583))))

(declare-fun setIsEmpty!3584 () Bool)

(assert (=> setIsEmpty!3584 setRes!3584))

(assert (= (and mapNonEmpty!2947 condMapEmpty!2948) mapIsEmpty!2948))

(assert (= (and mapNonEmpty!2947 (not condMapEmpty!2948)) mapNonEmpty!2948))

(assert (= b!688679 b!688681))

(assert (= (and b!688679 condSetEmpty!3584) setIsEmpty!3584))

(assert (= (and b!688679 (not condSetEmpty!3584)) setNonEmpty!3584))

(assert (= setNonEmpty!3584 b!688680))

(assert (= (and mapNonEmpty!2948 ((_ is Cons!7366) mapValue!2948)) b!688679))

(assert (= b!688678 b!688682))

(assert (= (and b!688678 condSetEmpty!3583) setIsEmpty!3583))

(assert (= (and b!688678 (not condSetEmpty!3583)) setNonEmpty!3583))

(assert (= setNonEmpty!3583 b!688677))

(assert (= (and mapNonEmpty!2947 ((_ is Cons!7366) mapDefault!2948)) b!688678))

(declare-fun m!945340 () Bool)

(assert (=> setNonEmpty!3584 m!945340))

(declare-fun m!945342 () Bool)

(assert (=> b!688678 m!945342))

(declare-fun m!945344 () Bool)

(assert (=> setNonEmpty!3583 m!945344))

(declare-fun m!945346 () Bool)

(assert (=> b!688679 m!945346))

(declare-fun m!945348 () Bool)

(assert (=> mapNonEmpty!2948 m!945348))

(declare-fun e!432740 () Bool)

(declare-fun tp!205979 () Bool)

(declare-fun setRes!3585 () Bool)

(declare-fun setElem!3585 () Context!462)

(declare-fun setNonEmpty!3585 () Bool)

(assert (=> setNonEmpty!3585 (= setRes!3585 (and tp!205979 (inv!9479 setElem!3585) e!432740))))

(declare-fun setRest!3585 () (InoxSet Context!462))

(assert (=> setNonEmpty!3585 (= (_1!4257 (_1!4258 (h!12768 (t!87189 (zeroValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59)))))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3585 true) setRest!3585))))

(declare-fun b!688684 () Bool)

(declare-fun tp!205978 () Bool)

(assert (=> b!688684 (= e!432740 tp!205978)))

(declare-fun b!688683 () Bool)

(declare-fun e!432741 () Bool)

(declare-fun tp!205977 () Bool)

(assert (=> b!688683 (= e!432741 (and setRes!3585 tp!205977))))

(declare-fun condSetEmpty!3585 () Bool)

(assert (=> b!688683 (= condSetEmpty!3585 (= (_1!4257 (_1!4258 (h!12768 (t!87189 (zeroValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59)))))))))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3585 () Bool)

(assert (=> setIsEmpty!3585 setRes!3585))

(assert (=> b!688413 (= tp!205883 e!432741)))

(assert (= (and b!688683 condSetEmpty!3585) setIsEmpty!3585))

(assert (= (and b!688683 (not condSetEmpty!3585)) setNonEmpty!3585))

(assert (= setNonEmpty!3585 b!688684))

(assert (= (and b!688413 ((_ is Cons!7367) (t!87189 (zeroValue!991 (v!17580 (underlying!1651 (v!17581 (underlying!1652 (cache!1093 cacheFindLongestMatch!59))))))))) b!688683))

(declare-fun m!945350 () Bool)

(assert (=> setNonEmpty!3585 m!945350))

(declare-fun b!688685 () Bool)

(declare-fun e!432742 () Bool)

(declare-fun tp!205980 () Bool)

(declare-fun tp!205981 () Bool)

(assert (=> b!688685 (= e!432742 (and tp!205980 tp!205981))))

(assert (=> b!688384 (= tp!205840 e!432742)))

(assert (= (and b!688384 ((_ is Cons!7365) (exprs!731 setElem!3552))) b!688685))

(declare-fun b!688689 () Bool)

(declare-fun e!432743 () Bool)

(declare-fun tp!205982 () Bool)

(declare-fun tp!205983 () Bool)

(assert (=> b!688689 (= e!432743 (and tp!205982 tp!205983))))

(declare-fun b!688687 () Bool)

(declare-fun tp!205985 () Bool)

(declare-fun tp!205986 () Bool)

(assert (=> b!688687 (= e!432743 (and tp!205985 tp!205986))))

(assert (=> b!688313 (= tp!205761 e!432743)))

(declare-fun b!688688 () Bool)

(declare-fun tp!205984 () Bool)

(assert (=> b!688688 (= e!432743 tp!205984)))

(declare-fun b!688686 () Bool)

(assert (=> b!688686 (= e!432743 tp_is_empty!3639)))

(assert (= (and b!688313 ((_ is ElementMatch!1821) (_1!4259 (_1!4260 (h!12770 mapDefault!2941))))) b!688686))

(assert (= (and b!688313 ((_ is Concat!3349) (_1!4259 (_1!4260 (h!12770 mapDefault!2941))))) b!688687))

(assert (= (and b!688313 ((_ is Star!1821) (_1!4259 (_1!4260 (h!12770 mapDefault!2941))))) b!688688))

(assert (= (and b!688313 ((_ is Union!1821) (_1!4259 (_1!4260 (h!12770 mapDefault!2941))))) b!688689))

(declare-fun setElem!3586 () Context!462)

(declare-fun tp!205989 () Bool)

(declare-fun setNonEmpty!3586 () Bool)

(declare-fun e!432746 () Bool)

(declare-fun setRes!3586 () Bool)

(assert (=> setNonEmpty!3586 (= setRes!3586 (and tp!205989 (inv!9479 setElem!3586) e!432746))))

(declare-fun setRest!3586 () (InoxSet Context!462))

(assert (=> setNonEmpty!3586 (= (_2!4260 (h!12770 (t!87191 mapDefault!2941))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3586 true) setRest!3586))))

(declare-fun e!432745 () Bool)

(declare-fun tp!205987 () Bool)

(declare-fun b!688690 () Bool)

(declare-fun tp!205988 () Bool)

(declare-fun e!432744 () Bool)

(assert (=> b!688690 (= e!432745 (and tp!205988 (inv!9479 (_2!4259 (_1!4260 (h!12770 (t!87191 mapDefault!2941))))) e!432744 tp_is_empty!3639 setRes!3586 tp!205987))))

(declare-fun condSetEmpty!3586 () Bool)

(assert (=> b!688690 (= condSetEmpty!3586 (= (_2!4260 (h!12770 (t!87191 mapDefault!2941))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688691 () Bool)

(declare-fun tp!205990 () Bool)

(assert (=> b!688691 (= e!432744 tp!205990)))

(declare-fun b!688692 () Bool)

(declare-fun tp!205991 () Bool)

(assert (=> b!688692 (= e!432746 tp!205991)))

(declare-fun setIsEmpty!3586 () Bool)

(assert (=> setIsEmpty!3586 setRes!3586))

(assert (=> b!688313 (= tp!205757 e!432745)))

(assert (= b!688690 b!688691))

(assert (= (and b!688690 condSetEmpty!3586) setIsEmpty!3586))

(assert (= (and b!688690 (not condSetEmpty!3586)) setNonEmpty!3586))

(assert (= setNonEmpty!3586 b!688692))

(assert (= (and b!688313 ((_ is Cons!7369) (t!87191 mapDefault!2941))) b!688690))

(declare-fun m!945352 () Bool)

(assert (=> setNonEmpty!3586 m!945352))

(declare-fun m!945354 () Bool)

(assert (=> b!688690 m!945354))

(declare-fun b!688693 () Bool)

(declare-fun e!432747 () Bool)

(declare-fun tp!205992 () Bool)

(declare-fun tp!205993 () Bool)

(assert (=> b!688693 (= e!432747 (and tp!205992 tp!205993))))

(assert (=> b!688410 (= tp!205880 e!432747)))

(assert (= (and b!688410 ((_ is Cons!7365) (exprs!731 setElem!3562))) b!688693))

(declare-fun b!688694 () Bool)

(declare-fun e!432748 () Bool)

(declare-fun tp!205994 () Bool)

(declare-fun tp!205995 () Bool)

(assert (=> b!688694 (= e!432748 (and tp!205994 tp!205995))))

(assert (=> b!688332 (= tp!205780 e!432748)))

(assert (= (and b!688332 ((_ is Cons!7365) (exprs!731 setElem!3543))) b!688694))

(declare-fun b!688698 () Bool)

(declare-fun e!432749 () Bool)

(declare-fun tp!205996 () Bool)

(declare-fun tp!205997 () Bool)

(assert (=> b!688698 (= e!432749 (and tp!205996 tp!205997))))

(declare-fun b!688696 () Bool)

(declare-fun tp!205999 () Bool)

(declare-fun tp!206000 () Bool)

(assert (=> b!688696 (= e!432749 (and tp!205999 tp!206000))))

(assert (=> b!688347 (= tp!205795 e!432749)))

(declare-fun b!688697 () Bool)

(declare-fun tp!205998 () Bool)

(assert (=> b!688697 (= e!432749 tp!205998)))

(declare-fun b!688695 () Bool)

(assert (=> b!688695 (= e!432749 tp_is_empty!3639)))

(assert (= (and b!688347 ((_ is ElementMatch!1821) (reg!2150 (regex!1484 (h!12773 rules!1357))))) b!688695))

(assert (= (and b!688347 ((_ is Concat!3349) (reg!2150 (regex!1484 (h!12773 rules!1357))))) b!688696))

(assert (= (and b!688347 ((_ is Star!1821) (reg!2150 (regex!1484 (h!12773 rules!1357))))) b!688697))

(assert (= (and b!688347 ((_ is Union!1821) (reg!2150 (regex!1484 (h!12773 rules!1357))))) b!688698))

(declare-fun condSetEmpty!3587 () Bool)

(assert (=> setNonEmpty!3563 (= condSetEmpty!3587 (= setRest!3563 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3587 () Bool)

(assert (=> setNonEmpty!3563 (= tp!205885 setRes!3587)))

(declare-fun setIsEmpty!3587 () Bool)

(assert (=> setIsEmpty!3587 setRes!3587))

(declare-fun setElem!3587 () Context!462)

(declare-fun setNonEmpty!3587 () Bool)

(declare-fun tp!206001 () Bool)

(declare-fun e!432750 () Bool)

(assert (=> setNonEmpty!3587 (= setRes!3587 (and tp!206001 (inv!9479 setElem!3587) e!432750))))

(declare-fun setRest!3587 () (InoxSet Context!462))

(assert (=> setNonEmpty!3587 (= setRest!3563 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3587 true) setRest!3587))))

(declare-fun b!688699 () Bool)

(declare-fun tp!206002 () Bool)

(assert (=> b!688699 (= e!432750 tp!206002)))

(assert (= (and setNonEmpty!3563 condSetEmpty!3587) setIsEmpty!3587))

(assert (= (and setNonEmpty!3563 (not condSetEmpty!3587)) setNonEmpty!3587))

(assert (= setNonEmpty!3587 b!688699))

(declare-fun m!945356 () Bool)

(assert (=> setNonEmpty!3587 m!945356))

(declare-fun setIsEmpty!3588 () Bool)

(declare-fun setRes!3588 () Bool)

(assert (=> setIsEmpty!3588 setRes!3588))

(declare-fun b!688700 () Bool)

(declare-fun e!432752 () Bool)

(declare-fun tp!206004 () Bool)

(assert (=> b!688700 (= e!432752 tp!206004)))

(declare-fun b!688701 () Bool)

(declare-fun tp!206003 () Bool)

(declare-fun e!432751 () Bool)

(declare-fun e!432753 () Bool)

(assert (=> b!688701 (= e!432751 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 (t!87188 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))))))) e!432753 tp_is_empty!3639 setRes!3588 tp!206003))))

(declare-fun condSetEmpty!3588 () Bool)

(assert (=> b!688701 (= condSetEmpty!3588 (= (_2!4256 (h!12767 (t!87188 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))))) ((as const (Array Context!462 Bool)) false)))))

(assert (=> b!688330 (= tp!205775 e!432751)))

(declare-fun b!688702 () Bool)

(declare-fun tp!206006 () Bool)

(assert (=> b!688702 (= e!432753 tp!206006)))

(declare-fun tp!206005 () Bool)

(declare-fun setElem!3588 () Context!462)

(declare-fun setNonEmpty!3588 () Bool)

(assert (=> setNonEmpty!3588 (= setRes!3588 (and tp!206005 (inv!9479 setElem!3588) e!432752))))

(declare-fun setRest!3588 () (InoxSet Context!462))

(assert (=> setNonEmpty!3588 (= (_2!4256 (h!12767 (t!87188 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3588 true) setRest!3588))))

(assert (= b!688701 b!688702))

(assert (= (and b!688701 condSetEmpty!3588) setIsEmpty!3588))

(assert (= (and b!688701 (not condSetEmpty!3588)) setNonEmpty!3588))

(assert (= setNonEmpty!3588 b!688700))

(assert (= (and b!688330 ((_ is Cons!7366) (t!87188 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))))) b!688701))

(declare-fun m!945358 () Bool)

(assert (=> b!688701 m!945358))

(declare-fun m!945360 () Bool)

(assert (=> setNonEmpty!3588 m!945360))

(declare-fun b!688703 () Bool)

(declare-fun e!432754 () Bool)

(declare-fun tp!206007 () Bool)

(declare-fun tp!206008 () Bool)

(assert (=> b!688703 (= e!432754 (and tp!206007 tp!206008))))

(assert (=> b!688412 (= tp!205882 e!432754)))

(assert (= (and b!688412 ((_ is Cons!7365) (exprs!731 (_1!4255 (_1!4256 (h!12767 mapValue!2937)))))) b!688703))

(declare-fun b!688704 () Bool)

(declare-fun e!432755 () Bool)

(declare-fun tp!206009 () Bool)

(declare-fun tp!206010 () Bool)

(assert (=> b!688704 (= e!432755 (and tp!206009 tp!206010))))

(assert (=> b!688334 (= tp!205782 e!432755)))

(assert (= (and b!688334 ((_ is Cons!7365) (exprs!731 (_1!4255 (_1!4256 (h!12767 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))))))) b!688704))

(declare-fun condSetEmpty!3589 () Bool)

(assert (=> setNonEmpty!3538 (= condSetEmpty!3589 (= setRest!3537 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3589 () Bool)

(assert (=> setNonEmpty!3538 (= tp!205754 setRes!3589)))

(declare-fun setIsEmpty!3589 () Bool)

(assert (=> setIsEmpty!3589 setRes!3589))

(declare-fun e!432756 () Bool)

(declare-fun setNonEmpty!3589 () Bool)

(declare-fun tp!206011 () Bool)

(declare-fun setElem!3589 () Context!462)

(assert (=> setNonEmpty!3589 (= setRes!3589 (and tp!206011 (inv!9479 setElem!3589) e!432756))))

(declare-fun setRest!3589 () (InoxSet Context!462))

(assert (=> setNonEmpty!3589 (= setRest!3537 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3589 true) setRest!3589))))

(declare-fun b!688705 () Bool)

(declare-fun tp!206012 () Bool)

(assert (=> b!688705 (= e!432756 tp!206012)))

(assert (= (and setNonEmpty!3538 condSetEmpty!3589) setIsEmpty!3589))

(assert (= (and setNonEmpty!3538 (not condSetEmpty!3589)) setNonEmpty!3589))

(assert (= setNonEmpty!3589 b!688705))

(declare-fun m!945362 () Bool)

(assert (=> setNonEmpty!3589 m!945362))

(declare-fun b!688706 () Bool)

(declare-fun e!432757 () Bool)

(declare-fun tp!206013 () Bool)

(declare-fun tp!206014 () Bool)

(assert (=> b!688706 (= e!432757 (and tp!206013 tp!206014))))

(assert (=> b!688360 (= tp!205811 e!432757)))

(assert (= (and b!688360 ((_ is Cons!7365) (exprs!731 setElem!3544))) b!688706))

(declare-fun condSetEmpty!3590 () Bool)

(assert (=> setNonEmpty!3542 (= condSetEmpty!3590 (= setRest!3542 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3590 () Bool)

(assert (=> setNonEmpty!3542 (= tp!205777 setRes!3590)))

(declare-fun setIsEmpty!3590 () Bool)

(assert (=> setIsEmpty!3590 setRes!3590))

(declare-fun tp!206015 () Bool)

(declare-fun setNonEmpty!3590 () Bool)

(declare-fun setElem!3590 () Context!462)

(declare-fun e!432758 () Bool)

(assert (=> setNonEmpty!3590 (= setRes!3590 (and tp!206015 (inv!9479 setElem!3590) e!432758))))

(declare-fun setRest!3590 () (InoxSet Context!462))

(assert (=> setNonEmpty!3590 (= setRest!3542 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3590 true) setRest!3590))))

(declare-fun b!688707 () Bool)

(declare-fun tp!206016 () Bool)

(assert (=> b!688707 (= e!432758 tp!206016)))

(assert (= (and setNonEmpty!3542 condSetEmpty!3590) setIsEmpty!3590))

(assert (= (and setNonEmpty!3542 (not condSetEmpty!3590)) setNonEmpty!3590))

(assert (= setNonEmpty!3590 b!688707))

(declare-fun m!945364 () Bool)

(assert (=> setNonEmpty!3590 m!945364))

(declare-fun b!688711 () Bool)

(declare-fun e!432759 () Bool)

(declare-fun tp!206017 () Bool)

(declare-fun tp!206018 () Bool)

(assert (=> b!688711 (= e!432759 (and tp!206017 tp!206018))))

(declare-fun b!688709 () Bool)

(declare-fun tp!206020 () Bool)

(declare-fun tp!206021 () Bool)

(assert (=> b!688709 (= e!432759 (and tp!206020 tp!206021))))

(assert (=> b!688318 (= tp!205763 e!432759)))

(declare-fun b!688710 () Bool)

(declare-fun tp!206019 () Bool)

(assert (=> b!688710 (= e!432759 tp!206019)))

(declare-fun b!688708 () Bool)

(assert (=> b!688708 (= e!432759 tp_is_empty!3639)))

(assert (= (and b!688318 ((_ is ElementMatch!1821) (_1!4259 (_1!4260 (h!12770 mapValue!2936))))) b!688708))

(assert (= (and b!688318 ((_ is Concat!3349) (_1!4259 (_1!4260 (h!12770 mapValue!2936))))) b!688709))

(assert (= (and b!688318 ((_ is Star!1821) (_1!4259 (_1!4260 (h!12770 mapValue!2936))))) b!688710))

(assert (= (and b!688318 ((_ is Union!1821) (_1!4259 (_1!4260 (h!12770 mapValue!2936))))) b!688711))

(declare-fun setElem!3591 () Context!462)

(declare-fun e!432762 () Bool)

(declare-fun setRes!3591 () Bool)

(declare-fun setNonEmpty!3591 () Bool)

(declare-fun tp!206024 () Bool)

(assert (=> setNonEmpty!3591 (= setRes!3591 (and tp!206024 (inv!9479 setElem!3591) e!432762))))

(declare-fun setRest!3591 () (InoxSet Context!462))

(assert (=> setNonEmpty!3591 (= (_2!4260 (h!12770 (t!87191 mapValue!2936))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3591 true) setRest!3591))))

(declare-fun e!432761 () Bool)

(declare-fun b!688712 () Bool)

(declare-fun tp!206023 () Bool)

(declare-fun tp!206022 () Bool)

(declare-fun e!432760 () Bool)

(assert (=> b!688712 (= e!432761 (and tp!206023 (inv!9479 (_2!4259 (_1!4260 (h!12770 (t!87191 mapValue!2936))))) e!432760 tp_is_empty!3639 setRes!3591 tp!206022))))

(declare-fun condSetEmpty!3591 () Bool)

(assert (=> b!688712 (= condSetEmpty!3591 (= (_2!4260 (h!12770 (t!87191 mapValue!2936))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688713 () Bool)

(declare-fun tp!206025 () Bool)

(assert (=> b!688713 (= e!432760 tp!206025)))

(declare-fun b!688714 () Bool)

(declare-fun tp!206026 () Bool)

(assert (=> b!688714 (= e!432762 tp!206026)))

(declare-fun setIsEmpty!3591 () Bool)

(assert (=> setIsEmpty!3591 setRes!3591))

(assert (=> b!688318 (= tp!205762 e!432761)))

(assert (= b!688712 b!688713))

(assert (= (and b!688712 condSetEmpty!3591) setIsEmpty!3591))

(assert (= (and b!688712 (not condSetEmpty!3591)) setNonEmpty!3591))

(assert (= setNonEmpty!3591 b!688714))

(assert (= (and b!688318 ((_ is Cons!7369) (t!87191 mapValue!2936))) b!688712))

(declare-fun m!945366 () Bool)

(assert (=> setNonEmpty!3591 m!945366))

(declare-fun m!945368 () Bool)

(assert (=> b!688712 m!945368))

(declare-fun b!688715 () Bool)

(declare-fun e!432763 () Bool)

(declare-fun tp!206027 () Bool)

(declare-fun tp!206028 () Bool)

(assert (=> b!688715 (= e!432763 (and tp!206027 tp!206028))))

(assert (=> b!688362 (= tp!205813 e!432763)))

(assert (= (and b!688362 ((_ is Cons!7365) (exprs!731 (_1!4255 (_1!4256 (h!12767 mapDefault!2937)))))) b!688715))

(declare-fun condSetEmpty!3592 () Bool)

(assert (=> setNonEmpty!3555 (= condSetEmpty!3592 (= setRest!3555 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3592 () Bool)

(assert (=> setNonEmpty!3555 (= tp!205849 setRes!3592)))

(declare-fun setIsEmpty!3592 () Bool)

(assert (=> setIsEmpty!3592 setRes!3592))

(declare-fun setElem!3592 () Context!462)

(declare-fun setNonEmpty!3592 () Bool)

(declare-fun e!432764 () Bool)

(declare-fun tp!206029 () Bool)

(assert (=> setNonEmpty!3592 (= setRes!3592 (and tp!206029 (inv!9479 setElem!3592) e!432764))))

(declare-fun setRest!3592 () (InoxSet Context!462))

(assert (=> setNonEmpty!3592 (= setRest!3555 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3592 true) setRest!3592))))

(declare-fun b!688716 () Bool)

(declare-fun tp!206030 () Bool)

(assert (=> b!688716 (= e!432764 tp!206030)))

(assert (= (and setNonEmpty!3555 condSetEmpty!3592) setIsEmpty!3592))

(assert (= (and setNonEmpty!3555 (not condSetEmpty!3592)) setNonEmpty!3592))

(assert (= setNonEmpty!3592 b!688716))

(declare-fun m!945370 () Bool)

(assert (=> setNonEmpty!3592 m!945370))

(declare-fun setIsEmpty!3593 () Bool)

(declare-fun setRes!3593 () Bool)

(assert (=> setIsEmpty!3593 setRes!3593))

(declare-fun b!688717 () Bool)

(declare-fun e!432766 () Bool)

(declare-fun tp!206032 () Bool)

(assert (=> b!688717 (= e!432766 tp!206032)))

(declare-fun tp!206031 () Bool)

(declare-fun b!688718 () Bool)

(declare-fun e!432767 () Bool)

(declare-fun e!432765 () Bool)

(assert (=> b!688718 (= e!432765 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 (t!87188 mapDefault!2947))))) e!432767 tp_is_empty!3639 setRes!3593 tp!206031))))

(declare-fun condSetEmpty!3593 () Bool)

(assert (=> b!688718 (= condSetEmpty!3593 (= (_2!4256 (h!12767 (t!87188 mapDefault!2947))) ((as const (Array Context!462 Bool)) false)))))

(assert (=> b!688405 (= tp!205878 e!432765)))

(declare-fun b!688719 () Bool)

(declare-fun tp!206034 () Bool)

(assert (=> b!688719 (= e!432767 tp!206034)))

(declare-fun tp!206033 () Bool)

(declare-fun setElem!3593 () Context!462)

(declare-fun setNonEmpty!3593 () Bool)

(assert (=> setNonEmpty!3593 (= setRes!3593 (and tp!206033 (inv!9479 setElem!3593) e!432766))))

(declare-fun setRest!3593 () (InoxSet Context!462))

(assert (=> setNonEmpty!3593 (= (_2!4256 (h!12767 (t!87188 mapDefault!2947))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3593 true) setRest!3593))))

(assert (= b!688718 b!688719))

(assert (= (and b!688718 condSetEmpty!3593) setIsEmpty!3593))

(assert (= (and b!688718 (not condSetEmpty!3593)) setNonEmpty!3593))

(assert (= setNonEmpty!3593 b!688717))

(assert (= (and b!688405 ((_ is Cons!7366) (t!87188 mapDefault!2947))) b!688718))

(declare-fun m!945372 () Bool)

(assert (=> b!688718 m!945372))

(declare-fun m!945374 () Bool)

(assert (=> setNonEmpty!3593 m!945374))

(declare-fun b!688720 () Bool)

(declare-fun e!432768 () Bool)

(declare-fun tp!206035 () Bool)

(declare-fun tp!206036 () Bool)

(assert (=> b!688720 (= e!432768 (and tp!206035 tp!206036))))

(assert (=> b!688320 (= tp!205766 e!432768)))

(assert (= (and b!688320 ((_ is Cons!7365) (exprs!731 setElem!3539))) b!688720))

(declare-fun b!688721 () Bool)

(declare-fun e!432769 () Bool)

(declare-fun tp!206037 () Bool)

(declare-fun tp!206038 () Bool)

(assert (=> b!688721 (= e!432769 (and tp!206037 tp!206038))))

(assert (=> b!688404 (= tp!205874 e!432769)))

(assert (= (and b!688404 ((_ is Cons!7365) (exprs!731 setElem!3561))) b!688721))

(declare-fun e!432770 () Bool)

(declare-fun setElem!3594 () Context!462)

(declare-fun setNonEmpty!3594 () Bool)

(declare-fun tp!206041 () Bool)

(declare-fun setRes!3594 () Bool)

(assert (=> setNonEmpty!3594 (= setRes!3594 (and tp!206041 (inv!9479 setElem!3594) e!432770))))

(declare-fun setRest!3594 () (InoxSet Context!462))

(assert (=> setNonEmpty!3594 (= (_1!4257 (_1!4258 (h!12768 (t!87189 mapDefault!2944)))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3594 true) setRest!3594))))

(declare-fun b!688723 () Bool)

(declare-fun tp!206040 () Bool)

(assert (=> b!688723 (= e!432770 tp!206040)))

(declare-fun b!688722 () Bool)

(declare-fun e!432771 () Bool)

(declare-fun tp!206039 () Bool)

(assert (=> b!688722 (= e!432771 (and setRes!3594 tp!206039))))

(declare-fun condSetEmpty!3594 () Bool)

(assert (=> b!688722 (= condSetEmpty!3594 (= (_1!4257 (_1!4258 (h!12768 (t!87189 mapDefault!2944)))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3594 () Bool)

(assert (=> setIsEmpty!3594 setRes!3594))

(assert (=> b!688382 (= tp!205843 e!432771)))

(assert (= (and b!688722 condSetEmpty!3594) setIsEmpty!3594))

(assert (= (and b!688722 (not condSetEmpty!3594)) setNonEmpty!3594))

(assert (= setNonEmpty!3594 b!688723))

(assert (= (and b!688382 ((_ is Cons!7367) (t!87189 mapDefault!2944))) b!688722))

(declare-fun m!945376 () Bool)

(assert (=> setNonEmpty!3594 m!945376))

(declare-fun b!688724 () Bool)

(declare-fun e!432772 () Bool)

(declare-fun tp!206042 () Bool)

(declare-fun tp!206043 () Bool)

(assert (=> b!688724 (= e!432772 (and tp!206042 tp!206043))))

(assert (=> b!688297 (= tp!205728 e!432772)))

(assert (= (and b!688297 ((_ is Cons!7365) (exprs!731 setElem!3532))) b!688724))

(declare-fun b!688725 () Bool)

(declare-fun e!432773 () Bool)

(declare-fun tp!206044 () Bool)

(declare-fun tp!206045 () Bool)

(assert (=> b!688725 (= e!432773 (and tp!206044 tp!206045))))

(assert (=> b!688370 (= tp!205821 e!432773)))

(assert (= (and b!688370 ((_ is Cons!7365) (exprs!731 setElem!3547))) b!688725))

(declare-fun b!688726 () Bool)

(declare-fun e!432774 () Bool)

(declare-fun tp!206046 () Bool)

(declare-fun tp!206047 () Bool)

(assert (=> b!688726 (= e!432774 (and tp!206046 tp!206047))))

(assert (=> b!688388 (= tp!205850 e!432774)))

(assert (= (and b!688388 ((_ is Cons!7365) (exprs!731 (_2!4259 (_1!4260 (h!12770 mapDefault!2938)))))) b!688726))

(declare-fun b!688727 () Bool)

(declare-fun e!432775 () Bool)

(declare-fun tp!206048 () Bool)

(declare-fun tp!206049 () Bool)

(assert (=> b!688727 (= e!432775 (and tp!206048 tp!206049))))

(assert (=> b!688407 (= tp!205872 e!432775)))

(assert (= (and b!688407 ((_ is Cons!7365) (exprs!731 setElem!3560))) b!688727))

(declare-fun b!688731 () Bool)

(declare-fun e!432776 () Bool)

(declare-fun tp!206050 () Bool)

(declare-fun tp!206051 () Bool)

(assert (=> b!688731 (= e!432776 (and tp!206050 tp!206051))))

(declare-fun b!688729 () Bool)

(declare-fun tp!206053 () Bool)

(declare-fun tp!206054 () Bool)

(assert (=> b!688729 (= e!432776 (and tp!206053 tp!206054))))

(assert (=> b!688292 (= tp!205720 e!432776)))

(declare-fun b!688730 () Bool)

(declare-fun tp!206052 () Bool)

(assert (=> b!688730 (= e!432776 tp!206052)))

(declare-fun b!688728 () Bool)

(assert (=> b!688728 (= e!432776 tp_is_empty!3639)))

(assert (= (and b!688292 ((_ is ElementMatch!1821) (_1!4259 (_1!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) b!688728))

(assert (= (and b!688292 ((_ is Concat!3349) (_1!4259 (_1!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) b!688729))

(assert (= (and b!688292 ((_ is Star!1821) (_1!4259 (_1!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) b!688730))

(assert (= (and b!688292 ((_ is Union!1821) (_1!4259 (_1!4260 (h!12770 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) b!688731))

(declare-fun setElem!3595 () Context!462)

(declare-fun setNonEmpty!3595 () Bool)

(declare-fun setRes!3595 () Bool)

(declare-fun e!432779 () Bool)

(declare-fun tp!206057 () Bool)

(assert (=> setNonEmpty!3595 (= setRes!3595 (and tp!206057 (inv!9479 setElem!3595) e!432779))))

(declare-fun setRest!3595 () (InoxSet Context!462))

(assert (=> setNonEmpty!3595 (= (_2!4260 (h!12770 (t!87191 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3595 true) setRest!3595))))

(declare-fun e!432777 () Bool)

(declare-fun tp!206056 () Bool)

(declare-fun tp!206055 () Bool)

(declare-fun e!432778 () Bool)

(declare-fun b!688732 () Bool)

(assert (=> b!688732 (= e!432778 (and tp!206056 (inv!9479 (_2!4259 (_1!4260 (h!12770 (t!87191 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) e!432777 tp_is_empty!3639 setRes!3595 tp!206055))))

(declare-fun condSetEmpty!3595 () Bool)

(assert (=> b!688732 (= condSetEmpty!3595 (= (_2!4260 (h!12770 (t!87191 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688733 () Bool)

(declare-fun tp!206058 () Bool)

(assert (=> b!688733 (= e!432777 tp!206058)))

(declare-fun b!688734 () Bool)

(declare-fun tp!206059 () Bool)

(assert (=> b!688734 (= e!432779 tp!206059)))

(declare-fun setIsEmpty!3595 () Bool)

(assert (=> setIsEmpty!3595 setRes!3595))

(assert (=> b!688292 (= tp!205719 e!432778)))

(assert (= b!688732 b!688733))

(assert (= (and b!688732 condSetEmpty!3595) setIsEmpty!3595))

(assert (= (and b!688732 (not condSetEmpty!3595)) setNonEmpty!3595))

(assert (= setNonEmpty!3595 b!688734))

(assert (= (and b!688292 ((_ is Cons!7369) (t!87191 (zeroValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))) b!688732))

(declare-fun m!945378 () Bool)

(assert (=> setNonEmpty!3595 m!945378))

(declare-fun m!945380 () Bool)

(assert (=> b!688732 m!945380))

(declare-fun b!688738 () Bool)

(declare-fun e!432780 () Bool)

(declare-fun tp!206060 () Bool)

(declare-fun tp!206061 () Bool)

(assert (=> b!688738 (= e!432780 (and tp!206060 tp!206061))))

(declare-fun b!688736 () Bool)

(declare-fun tp!206063 () Bool)

(declare-fun tp!206064 () Bool)

(assert (=> b!688736 (= e!432780 (and tp!206063 tp!206064))))

(assert (=> b!688295 (= tp!205725 e!432780)))

(declare-fun b!688737 () Bool)

(declare-fun tp!206062 () Bool)

(assert (=> b!688737 (= e!432780 tp!206062)))

(declare-fun b!688735 () Bool)

(assert (=> b!688735 (= e!432780 tp_is_empty!3639)))

(assert (= (and b!688295 ((_ is ElementMatch!1821) (_1!4259 (_1!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) b!688735))

(assert (= (and b!688295 ((_ is Concat!3349) (_1!4259 (_1!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) b!688736))

(assert (= (and b!688295 ((_ is Star!1821) (_1!4259 (_1!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) b!688737))

(assert (= (and b!688295 ((_ is Union!1821) (_1!4259 (_1!4260 (h!12770 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) b!688738))

(declare-fun setElem!3596 () Context!462)

(declare-fun e!432783 () Bool)

(declare-fun tp!206067 () Bool)

(declare-fun setRes!3596 () Bool)

(declare-fun setNonEmpty!3596 () Bool)

(assert (=> setNonEmpty!3596 (= setRes!3596 (and tp!206067 (inv!9479 setElem!3596) e!432783))))

(declare-fun setRest!3596 () (InoxSet Context!462))

(assert (=> setNonEmpty!3596 (= (_2!4260 (h!12770 (t!87191 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3596 true) setRest!3596))))

(declare-fun e!432781 () Bool)

(declare-fun tp!206066 () Bool)

(declare-fun tp!206065 () Bool)

(declare-fun e!432782 () Bool)

(declare-fun b!688739 () Bool)

(assert (=> b!688739 (= e!432782 (and tp!206066 (inv!9479 (_2!4259 (_1!4260 (h!12770 (t!87191 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))))) e!432781 tp_is_empty!3639 setRes!3596 tp!206065))))

(declare-fun condSetEmpty!3596 () Bool)

(assert (=> b!688739 (= condSetEmpty!3596 (= (_2!4260 (h!12770 (t!87191 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688740 () Bool)

(declare-fun tp!206068 () Bool)

(assert (=> b!688740 (= e!432781 tp!206068)))

(declare-fun b!688741 () Bool)

(declare-fun tp!206069 () Bool)

(assert (=> b!688741 (= e!432783 tp!206069)))

(declare-fun setIsEmpty!3596 () Bool)

(assert (=> setIsEmpty!3596 setRes!3596))

(assert (=> b!688295 (= tp!205724 e!432782)))

(assert (= b!688739 b!688740))

(assert (= (and b!688739 condSetEmpty!3596) setIsEmpty!3596))

(assert (= (and b!688739 (not condSetEmpty!3596)) setNonEmpty!3596))

(assert (= setNonEmpty!3596 b!688741))

(assert (= (and b!688295 ((_ is Cons!7369) (t!87191 (minValue!992 (v!17582 (underlying!1653 (v!17583 (underlying!1654 (cache!1094 cacheDown!470))))))))) b!688739))

(declare-fun m!945382 () Bool)

(assert (=> setNonEmpty!3596 m!945382))

(declare-fun m!945384 () Bool)

(assert (=> b!688739 m!945384))

(declare-fun b!688742 () Bool)

(declare-fun e!432784 () Bool)

(declare-fun tp!206074 () Bool)

(assert (=> b!688742 (= e!432784 tp!206074)))

(declare-fun setIsEmpty!3597 () Bool)

(declare-fun setRes!3597 () Bool)

(assert (=> setIsEmpty!3597 setRes!3597))

(declare-fun setElem!3597 () Context!462)

(declare-fun tp!206071 () Bool)

(declare-fun e!432786 () Bool)

(declare-fun setNonEmpty!3597 () Bool)

(declare-fun setRes!3598 () Bool)

(assert (=> setNonEmpty!3597 (= setRes!3598 (and tp!206071 (inv!9479 setElem!3597) e!432786))))

(declare-fun mapDefault!2949 () List!7381)

(declare-fun setRest!3597 () (InoxSet Context!462))

(assert (=> setNonEmpty!3597 (= (_1!4257 (_1!4258 (h!12768 mapDefault!2949))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3597 true) setRest!3597))))

(declare-fun b!688743 () Bool)

(declare-fun e!432787 () Bool)

(declare-fun tp!206076 () Bool)

(assert (=> b!688743 (= e!432787 (and setRes!3598 tp!206076))))

(declare-fun condSetEmpty!3597 () Bool)

(assert (=> b!688743 (= condSetEmpty!3597 (= (_1!4257 (_1!4258 (h!12768 mapDefault!2949))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688744 () Bool)

(declare-fun e!432785 () Bool)

(declare-fun tp!206072 () Bool)

(assert (=> b!688744 (= e!432785 (and setRes!3597 tp!206072))))

(declare-fun condSetEmpty!3598 () Bool)

(declare-fun mapValue!2949 () List!7381)

(assert (=> b!688744 (= condSetEmpty!3598 (= (_1!4257 (_1!4258 (h!12768 mapValue!2949))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun mapNonEmpty!2949 () Bool)

(declare-fun mapRes!2949 () Bool)

(declare-fun tp!206075 () Bool)

(assert (=> mapNonEmpty!2949 (= mapRes!2949 (and tp!206075 e!432785))))

(declare-fun mapKey!2949 () (_ BitVec 32))

(declare-fun mapRest!2949 () (Array (_ BitVec 32) List!7381))

(assert (=> mapNonEmpty!2949 (= mapRest!2944 (store mapRest!2949 mapKey!2949 mapValue!2949))))

(declare-fun b!688745 () Bool)

(declare-fun tp!206073 () Bool)

(assert (=> b!688745 (= e!432786 tp!206073)))

(declare-fun tp!206070 () Bool)

(declare-fun setNonEmpty!3598 () Bool)

(declare-fun setElem!3598 () Context!462)

(assert (=> setNonEmpty!3598 (= setRes!3597 (and tp!206070 (inv!9479 setElem!3598) e!432784))))

(declare-fun setRest!3598 () (InoxSet Context!462))

(assert (=> setNonEmpty!3598 (= (_1!4257 (_1!4258 (h!12768 mapValue!2949))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3598 true) setRest!3598))))

(declare-fun condMapEmpty!2949 () Bool)

(assert (=> mapNonEmpty!2944 (= condMapEmpty!2949 (= mapRest!2944 ((as const (Array (_ BitVec 32) List!7381)) mapDefault!2949)))))

(assert (=> mapNonEmpty!2944 (= tp!205842 (and e!432787 mapRes!2949))))

(declare-fun mapIsEmpty!2949 () Bool)

(assert (=> mapIsEmpty!2949 mapRes!2949))

(declare-fun setIsEmpty!3598 () Bool)

(assert (=> setIsEmpty!3598 setRes!3598))

(assert (= (and mapNonEmpty!2944 condMapEmpty!2949) mapIsEmpty!2949))

(assert (= (and mapNonEmpty!2944 (not condMapEmpty!2949)) mapNonEmpty!2949))

(assert (= (and b!688744 condSetEmpty!3598) setIsEmpty!3597))

(assert (= (and b!688744 (not condSetEmpty!3598)) setNonEmpty!3598))

(assert (= setNonEmpty!3598 b!688742))

(assert (= (and mapNonEmpty!2949 ((_ is Cons!7367) mapValue!2949)) b!688744))

(assert (= (and b!688743 condSetEmpty!3597) setIsEmpty!3598))

(assert (= (and b!688743 (not condSetEmpty!3597)) setNonEmpty!3597))

(assert (= setNonEmpty!3597 b!688745))

(assert (= (and mapNonEmpty!2944 ((_ is Cons!7367) mapDefault!2949)) b!688743))

(declare-fun m!945386 () Bool)

(assert (=> setNonEmpty!3597 m!945386))

(declare-fun m!945388 () Bool)

(assert (=> mapNonEmpty!2949 m!945388))

(declare-fun m!945390 () Bool)

(assert (=> setNonEmpty!3598 m!945390))

(declare-fun b!688746 () Bool)

(declare-fun e!432792 () Bool)

(declare-fun tp!206086 () Bool)

(assert (=> b!688746 (= e!432792 tp!206086)))

(declare-fun mapNonEmpty!2950 () Bool)

(declare-fun mapRes!2950 () Bool)

(declare-fun tp!206081 () Bool)

(declare-fun e!432791 () Bool)

(assert (=> mapNonEmpty!2950 (= mapRes!2950 (and tp!206081 e!432791))))

(declare-fun mapRest!2950 () (Array (_ BitVec 32) List!7383))

(declare-fun mapKey!2950 () (_ BitVec 32))

(declare-fun mapValue!2950 () List!7383)

(assert (=> mapNonEmpty!2950 (= mapRest!2941 (store mapRest!2950 mapKey!2950 mapValue!2950))))

(declare-fun tp!206083 () Bool)

(declare-fun b!688747 () Bool)

(declare-fun mapDefault!2950 () List!7383)

(declare-fun setRes!3600 () Bool)

(declare-fun e!432790 () Bool)

(declare-fun tp!206087 () Bool)

(declare-fun e!432789 () Bool)

(assert (=> b!688747 (= e!432789 (and tp!206087 (inv!9479 (_2!4259 (_1!4260 (h!12770 mapDefault!2950)))) e!432790 tp_is_empty!3639 setRes!3600 tp!206083))))

(declare-fun condSetEmpty!3600 () Bool)

(assert (=> b!688747 (= condSetEmpty!3600 (= (_2!4260 (h!12770 mapDefault!2950)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688748 () Bool)

(declare-fun e!432793 () Bool)

(declare-fun tp!206085 () Bool)

(assert (=> b!688748 (= e!432793 tp!206085)))

(declare-fun setNonEmpty!3599 () Bool)

(declare-fun tp!206084 () Bool)

(declare-fun setElem!3599 () Context!462)

(assert (=> setNonEmpty!3599 (= setRes!3600 (and tp!206084 (inv!9479 setElem!3599) e!432792))))

(declare-fun setRest!3600 () (InoxSet Context!462))

(assert (=> setNonEmpty!3599 (= (_2!4260 (h!12770 mapDefault!2950)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3599 true) setRest!3600))))

(declare-fun tp!206077 () Bool)

(declare-fun b!688749 () Bool)

(declare-fun tp!206078 () Bool)

(declare-fun setRes!3599 () Bool)

(assert (=> b!688749 (= e!432791 (and tp!206078 (inv!9479 (_2!4259 (_1!4260 (h!12770 mapValue!2950)))) e!432793 tp_is_empty!3639 setRes!3599 tp!206077))))

(declare-fun condSetEmpty!3599 () Bool)

(assert (=> b!688749 (= condSetEmpty!3599 (= (_2!4260 (h!12770 mapValue!2950)) ((as const (Array Context!462 Bool)) false)))))

(declare-fun setIsEmpty!3599 () Bool)

(assert (=> setIsEmpty!3599 setRes!3599))

(declare-fun b!688750 () Bool)

(declare-fun tp!206082 () Bool)

(assert (=> b!688750 (= e!432790 tp!206082)))

(declare-fun mapIsEmpty!2950 () Bool)

(assert (=> mapIsEmpty!2950 mapRes!2950))

(declare-fun setIsEmpty!3600 () Bool)

(assert (=> setIsEmpty!3600 setRes!3600))

(declare-fun b!688751 () Bool)

(declare-fun e!432788 () Bool)

(declare-fun tp!206079 () Bool)

(assert (=> b!688751 (= e!432788 tp!206079)))

(declare-fun setElem!3600 () Context!462)

(declare-fun setNonEmpty!3600 () Bool)

(declare-fun tp!206080 () Bool)

(assert (=> setNonEmpty!3600 (= setRes!3599 (and tp!206080 (inv!9479 setElem!3600) e!432788))))

(declare-fun setRest!3599 () (InoxSet Context!462))

(assert (=> setNonEmpty!3600 (= (_2!4260 (h!12770 mapValue!2950)) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3600 true) setRest!3599))))

(declare-fun condMapEmpty!2950 () Bool)

(assert (=> mapNonEmpty!2941 (= condMapEmpty!2950 (= mapRest!2941 ((as const (Array (_ BitVec 32) List!7383)) mapDefault!2950)))))

(assert (=> mapNonEmpty!2941 (= tp!205755 (and e!432789 mapRes!2950))))

(assert (= (and mapNonEmpty!2941 condMapEmpty!2950) mapIsEmpty!2950))

(assert (= (and mapNonEmpty!2941 (not condMapEmpty!2950)) mapNonEmpty!2950))

(assert (= b!688749 b!688748))

(assert (= (and b!688749 condSetEmpty!3599) setIsEmpty!3599))

(assert (= (and b!688749 (not condSetEmpty!3599)) setNonEmpty!3600))

(assert (= setNonEmpty!3600 b!688751))

(assert (= (and mapNonEmpty!2950 ((_ is Cons!7369) mapValue!2950)) b!688749))

(assert (= b!688747 b!688750))

(assert (= (and b!688747 condSetEmpty!3600) setIsEmpty!3600))

(assert (= (and b!688747 (not condSetEmpty!3600)) setNonEmpty!3599))

(assert (= setNonEmpty!3599 b!688746))

(assert (= (and mapNonEmpty!2941 ((_ is Cons!7369) mapDefault!2950)) b!688747))

(declare-fun m!945392 () Bool)

(assert (=> b!688749 m!945392))

(declare-fun m!945394 () Bool)

(assert (=> mapNonEmpty!2950 m!945394))

(declare-fun m!945396 () Bool)

(assert (=> setNonEmpty!3599 m!945396))

(declare-fun m!945398 () Bool)

(assert (=> setNonEmpty!3600 m!945398))

(declare-fun m!945400 () Bool)

(assert (=> b!688747 m!945400))

(declare-fun b!688752 () Bool)

(declare-fun e!432794 () Bool)

(declare-fun tp!206088 () Bool)

(declare-fun tp!206089 () Bool)

(assert (=> b!688752 (= e!432794 (and tp!206088 tp!206089))))

(assert (=> b!688408 (= tp!205873 e!432794)))

(assert (= (and b!688408 ((_ is Cons!7365) (exprs!731 (_1!4255 (_1!4256 (h!12767 mapValue!2947)))))) b!688752))

(declare-fun b!688753 () Bool)

(declare-fun e!432795 () Bool)

(declare-fun tp!206090 () Bool)

(declare-fun tp!206091 () Bool)

(assert (=> b!688753 (= e!432795 (and tp!206090 tp!206091))))

(assert (=> b!688416 (= tp!205887 e!432795)))

(assert (= (and b!688416 ((_ is Cons!7365) (exprs!731 setElem!3564))) b!688753))

(declare-fun b!688754 () Bool)

(declare-fun e!432796 () Bool)

(declare-fun tp!206092 () Bool)

(declare-fun tp!206093 () Bool)

(assert (=> b!688754 (= e!432796 (and tp!206092 tp!206093))))

(assert (=> b!688294 (= tp!205723 e!432796)))

(assert (= (and b!688294 ((_ is Cons!7365) (exprs!731 setElem!3531))) b!688754))

(declare-fun condSetEmpty!3601 () Bool)

(assert (=> setNonEmpty!3561 (= condSetEmpty!3601 (= setRest!3560 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3601 () Bool)

(assert (=> setNonEmpty!3561 (= tp!205876 setRes!3601)))

(declare-fun setIsEmpty!3601 () Bool)

(assert (=> setIsEmpty!3601 setRes!3601))

(declare-fun setNonEmpty!3601 () Bool)

(declare-fun setElem!3601 () Context!462)

(declare-fun tp!206094 () Bool)

(declare-fun e!432797 () Bool)

(assert (=> setNonEmpty!3601 (= setRes!3601 (and tp!206094 (inv!9479 setElem!3601) e!432797))))

(declare-fun setRest!3601 () (InoxSet Context!462))

(assert (=> setNonEmpty!3601 (= setRest!3560 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3601 true) setRest!3601))))

(declare-fun b!688755 () Bool)

(declare-fun tp!206095 () Bool)

(assert (=> b!688755 (= e!432797 tp!206095)))

(assert (= (and setNonEmpty!3561 condSetEmpty!3601) setIsEmpty!3601))

(assert (= (and setNonEmpty!3561 (not condSetEmpty!3601)) setNonEmpty!3601))

(assert (= setNonEmpty!3601 b!688755))

(declare-fun m!945402 () Bool)

(assert (=> setNonEmpty!3601 m!945402))

(declare-fun condSetEmpty!3602 () Bool)

(assert (=> setNonEmpty!3553 (= condSetEmpty!3602 (= setRest!3553 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3602 () Bool)

(assert (=> setNonEmpty!3553 (= tp!205837 setRes!3602)))

(declare-fun setIsEmpty!3602 () Bool)

(assert (=> setIsEmpty!3602 setRes!3602))

(declare-fun setElem!3602 () Context!462)

(declare-fun setNonEmpty!3602 () Bool)

(declare-fun tp!206096 () Bool)

(declare-fun e!432798 () Bool)

(assert (=> setNonEmpty!3602 (= setRes!3602 (and tp!206096 (inv!9479 setElem!3602) e!432798))))

(declare-fun setRest!3602 () (InoxSet Context!462))

(assert (=> setNonEmpty!3602 (= setRest!3553 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3602 true) setRest!3602))))

(declare-fun b!688756 () Bool)

(declare-fun tp!206097 () Bool)

(assert (=> b!688756 (= e!432798 tp!206097)))

(assert (= (and setNonEmpty!3553 condSetEmpty!3602) setIsEmpty!3602))

(assert (= (and setNonEmpty!3553 (not condSetEmpty!3602)) setNonEmpty!3602))

(assert (= setNonEmpty!3602 b!688756))

(declare-fun m!945404 () Bool)

(assert (=> setNonEmpty!3602 m!945404))

(declare-fun b!688757 () Bool)

(declare-fun e!432799 () Bool)

(declare-fun tp!206098 () Bool)

(declare-fun tp!206099 () Bool)

(assert (=> b!688757 (= e!432799 (and tp!206098 tp!206099))))

(assert (=> b!688314 (= tp!205759 e!432799)))

(assert (= (and b!688314 ((_ is Cons!7365) (exprs!731 (_2!4259 (_1!4260 (h!12770 mapValue!2941)))))) b!688757))

(declare-fun b!688758 () Bool)

(declare-fun e!432800 () Bool)

(declare-fun tp!206100 () Bool)

(declare-fun tp!206101 () Bool)

(assert (=> b!688758 (= e!432800 (and tp!206100 tp!206101))))

(assert (=> b!688386 (= tp!205845 e!432800)))

(assert (= (and b!688386 ((_ is Cons!7365) (exprs!731 setElem!3554))) b!688758))

(declare-fun b!688762 () Bool)

(declare-fun e!432801 () Bool)

(declare-fun tp!206102 () Bool)

(declare-fun tp!206103 () Bool)

(assert (=> b!688762 (= e!432801 (and tp!206102 tp!206103))))

(declare-fun b!688760 () Bool)

(declare-fun tp!206105 () Bool)

(declare-fun tp!206106 () Bool)

(assert (=> b!688760 (= e!432801 (and tp!206105 tp!206106))))

(assert (=> b!688358 (= tp!205808 e!432801)))

(declare-fun b!688761 () Bool)

(declare-fun tp!206104 () Bool)

(assert (=> b!688761 (= e!432801 tp!206104)))

(declare-fun b!688759 () Bool)

(assert (=> b!688759 (= e!432801 tp_is_empty!3639)))

(assert (= (and b!688358 ((_ is ElementMatch!1821) (regex!1484 (h!12773 (t!87194 rules!1357))))) b!688759))

(assert (= (and b!688358 ((_ is Concat!3349) (regex!1484 (h!12773 (t!87194 rules!1357))))) b!688760))

(assert (= (and b!688358 ((_ is Star!1821) (regex!1484 (h!12773 (t!87194 rules!1357))))) b!688761))

(assert (= (and b!688358 ((_ is Union!1821) (regex!1484 (h!12773 (t!87194 rules!1357))))) b!688762))

(declare-fun b!688763 () Bool)

(declare-fun e!432802 () Bool)

(declare-fun tp!206107 () Bool)

(declare-fun tp!206108 () Bool)

(assert (=> b!688763 (= e!432802 (and tp!206107 tp!206108))))

(assert (=> b!688409 (= tp!205870 e!432802)))

(assert (= (and b!688409 ((_ is Cons!7365) (exprs!731 (_1!4255 (_1!4256 (h!12767 mapDefault!2947)))))) b!688763))

(declare-fun b!688764 () Bool)

(declare-fun e!432803 () Bool)

(declare-fun tp!206109 () Bool)

(declare-fun tp!206110 () Bool)

(assert (=> b!688764 (= e!432803 (and tp!206109 tp!206110))))

(assert (=> b!688316 (= tp!205756 e!432803)))

(assert (= (and b!688316 ((_ is Cons!7365) (exprs!731 (_2!4259 (_1!4260 (h!12770 mapDefault!2941)))))) b!688764))

(declare-fun b!688768 () Bool)

(declare-fun e!432804 () Bool)

(declare-fun tp!206111 () Bool)

(declare-fun tp!206112 () Bool)

(assert (=> b!688768 (= e!432804 (and tp!206111 tp!206112))))

(declare-fun b!688766 () Bool)

(declare-fun tp!206114 () Bool)

(declare-fun tp!206115 () Bool)

(assert (=> b!688766 (= e!432804 (and tp!206114 tp!206115))))

(assert (=> b!688348 (= tp!205793 e!432804)))

(declare-fun b!688767 () Bool)

(declare-fun tp!206113 () Bool)

(assert (=> b!688767 (= e!432804 tp!206113)))

(declare-fun b!688765 () Bool)

(assert (=> b!688765 (= e!432804 tp_is_empty!3639)))

(assert (= (and b!688348 ((_ is ElementMatch!1821) (regOne!4155 (regex!1484 (h!12773 rules!1357))))) b!688765))

(assert (= (and b!688348 ((_ is Concat!3349) (regOne!4155 (regex!1484 (h!12773 rules!1357))))) b!688766))

(assert (= (and b!688348 ((_ is Star!1821) (regOne!4155 (regex!1484 (h!12773 rules!1357))))) b!688767))

(assert (= (and b!688348 ((_ is Union!1821) (regOne!4155 (regex!1484 (h!12773 rules!1357))))) b!688768))

(declare-fun b!688772 () Bool)

(declare-fun e!432805 () Bool)

(declare-fun tp!206116 () Bool)

(declare-fun tp!206117 () Bool)

(assert (=> b!688772 (= e!432805 (and tp!206116 tp!206117))))

(declare-fun b!688770 () Bool)

(declare-fun tp!206119 () Bool)

(declare-fun tp!206120 () Bool)

(assert (=> b!688770 (= e!432805 (and tp!206119 tp!206120))))

(assert (=> b!688348 (= tp!205794 e!432805)))

(declare-fun b!688771 () Bool)

(declare-fun tp!206118 () Bool)

(assert (=> b!688771 (= e!432805 tp!206118)))

(declare-fun b!688769 () Bool)

(assert (=> b!688769 (= e!432805 tp_is_empty!3639)))

(assert (= (and b!688348 ((_ is ElementMatch!1821) (regTwo!4155 (regex!1484 (h!12773 rules!1357))))) b!688769))

(assert (= (and b!688348 ((_ is Concat!3349) (regTwo!4155 (regex!1484 (h!12773 rules!1357))))) b!688770))

(assert (= (and b!688348 ((_ is Star!1821) (regTwo!4155 (regex!1484 (h!12773 rules!1357))))) b!688771))

(assert (= (and b!688348 ((_ is Union!1821) (regTwo!4155 (regex!1484 (h!12773 rules!1357))))) b!688772))

(declare-fun b!688773 () Bool)

(declare-fun e!432806 () Bool)

(declare-fun tp!206121 () Bool)

(assert (=> b!688773 (= e!432806 (and tp_is_empty!3639 tp!206121))))

(assert (=> b!688280 (= tp!205703 e!432806)))

(assert (= (and b!688280 ((_ is Cons!7368) (innerList!2671 (xs!5262 (c!121356 input!756))))) b!688773))

(declare-fun b!688774 () Bool)

(declare-fun e!432807 () Bool)

(declare-fun tp!206122 () Bool)

(declare-fun tp!206123 () Bool)

(assert (=> b!688774 (= e!432807 (and tp!206122 tp!206123))))

(assert (=> b!688414 (= tp!205884 e!432807)))

(assert (= (and b!688414 ((_ is Cons!7365) (exprs!731 setElem!3563))) b!688774))

(declare-fun b!688778 () Bool)

(declare-fun e!432808 () Bool)

(declare-fun tp!206124 () Bool)

(declare-fun tp!206125 () Bool)

(assert (=> b!688778 (= e!432808 (and tp!206124 tp!206125))))

(declare-fun b!688776 () Bool)

(declare-fun tp!206127 () Bool)

(declare-fun tp!206128 () Bool)

(assert (=> b!688776 (= e!432808 (and tp!206127 tp!206128))))

(assert (=> b!688315 (= tp!205752 e!432808)))

(declare-fun b!688777 () Bool)

(declare-fun tp!206126 () Bool)

(assert (=> b!688777 (= e!432808 tp!206126)))

(declare-fun b!688775 () Bool)

(assert (=> b!688775 (= e!432808 tp_is_empty!3639)))

(assert (= (and b!688315 ((_ is ElementMatch!1821) (_1!4259 (_1!4260 (h!12770 mapValue!2941))))) b!688775))

(assert (= (and b!688315 ((_ is Concat!3349) (_1!4259 (_1!4260 (h!12770 mapValue!2941))))) b!688776))

(assert (= (and b!688315 ((_ is Star!1821) (_1!4259 (_1!4260 (h!12770 mapValue!2941))))) b!688777))

(assert (= (and b!688315 ((_ is Union!1821) (_1!4259 (_1!4260 (h!12770 mapValue!2941))))) b!688778))

(declare-fun setNonEmpty!3603 () Bool)

(declare-fun setElem!3603 () Context!462)

(declare-fun setRes!3603 () Bool)

(declare-fun e!432811 () Bool)

(declare-fun tp!206131 () Bool)

(assert (=> setNonEmpty!3603 (= setRes!3603 (and tp!206131 (inv!9479 setElem!3603) e!432811))))

(declare-fun setRest!3603 () (InoxSet Context!462))

(assert (=> setNonEmpty!3603 (= (_2!4260 (h!12770 (t!87191 mapValue!2941))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3603 true) setRest!3603))))

(declare-fun tp!206129 () Bool)

(declare-fun e!432810 () Bool)

(declare-fun e!432809 () Bool)

(declare-fun tp!206130 () Bool)

(declare-fun b!688779 () Bool)

(assert (=> b!688779 (= e!432810 (and tp!206130 (inv!9479 (_2!4259 (_1!4260 (h!12770 (t!87191 mapValue!2941))))) e!432809 tp_is_empty!3639 setRes!3603 tp!206129))))

(declare-fun condSetEmpty!3603 () Bool)

(assert (=> b!688779 (= condSetEmpty!3603 (= (_2!4260 (h!12770 (t!87191 mapValue!2941))) ((as const (Array Context!462 Bool)) false)))))

(declare-fun b!688780 () Bool)

(declare-fun tp!206132 () Bool)

(assert (=> b!688780 (= e!432809 tp!206132)))

(declare-fun b!688781 () Bool)

(declare-fun tp!206133 () Bool)

(assert (=> b!688781 (= e!432811 tp!206133)))

(declare-fun setIsEmpty!3603 () Bool)

(assert (=> setIsEmpty!3603 setRes!3603))

(assert (=> b!688315 (= tp!205751 e!432810)))

(assert (= b!688779 b!688780))

(assert (= (and b!688779 condSetEmpty!3603) setIsEmpty!3603))

(assert (= (and b!688779 (not condSetEmpty!3603)) setNonEmpty!3603))

(assert (= setNonEmpty!3603 b!688781))

(assert (= (and b!688315 ((_ is Cons!7369) (t!87191 mapValue!2941))) b!688779))

(declare-fun m!945406 () Bool)

(assert (=> setNonEmpty!3603 m!945406))

(declare-fun m!945408 () Bool)

(assert (=> b!688779 m!945408))

(declare-fun b!688785 () Bool)

(declare-fun e!432812 () Bool)

(declare-fun tp!206134 () Bool)

(declare-fun tp!206135 () Bool)

(assert (=> b!688785 (= e!432812 (and tp!206134 tp!206135))))

(declare-fun b!688783 () Bool)

(declare-fun tp!206137 () Bool)

(declare-fun tp!206138 () Bool)

(assert (=> b!688783 (= e!432812 (and tp!206137 tp!206138))))

(assert (=> b!688346 (= tp!205796 e!432812)))

(declare-fun b!688784 () Bool)

(declare-fun tp!206136 () Bool)

(assert (=> b!688784 (= e!432812 tp!206136)))

(declare-fun b!688782 () Bool)

(assert (=> b!688782 (= e!432812 tp_is_empty!3639)))

(assert (= (and b!688346 ((_ is ElementMatch!1821) (regOne!4154 (regex!1484 (h!12773 rules!1357))))) b!688782))

(assert (= (and b!688346 ((_ is Concat!3349) (regOne!4154 (regex!1484 (h!12773 rules!1357))))) b!688783))

(assert (= (and b!688346 ((_ is Star!1821) (regOne!4154 (regex!1484 (h!12773 rules!1357))))) b!688784))

(assert (= (and b!688346 ((_ is Union!1821) (regOne!4154 (regex!1484 (h!12773 rules!1357))))) b!688785))

(declare-fun b!688789 () Bool)

(declare-fun e!432813 () Bool)

(declare-fun tp!206139 () Bool)

(declare-fun tp!206140 () Bool)

(assert (=> b!688789 (= e!432813 (and tp!206139 tp!206140))))

(declare-fun b!688787 () Bool)

(declare-fun tp!206142 () Bool)

(declare-fun tp!206143 () Bool)

(assert (=> b!688787 (= e!432813 (and tp!206142 tp!206143))))

(assert (=> b!688346 (= tp!205797 e!432813)))

(declare-fun b!688788 () Bool)

(declare-fun tp!206141 () Bool)

(assert (=> b!688788 (= e!432813 tp!206141)))

(declare-fun b!688786 () Bool)

(assert (=> b!688786 (= e!432813 tp_is_empty!3639)))

(assert (= (and b!688346 ((_ is ElementMatch!1821) (regTwo!4154 (regex!1484 (h!12773 rules!1357))))) b!688786))

(assert (= (and b!688346 ((_ is Concat!3349) (regTwo!4154 (regex!1484 (h!12773 rules!1357))))) b!688787))

(assert (= (and b!688346 ((_ is Star!1821) (regTwo!4154 (regex!1484 (h!12773 rules!1357))))) b!688788))

(assert (= (and b!688346 ((_ is Union!1821) (regTwo!4154 (regex!1484 (h!12773 rules!1357))))) b!688789))

(declare-fun e!432815 () Bool)

(declare-fun tp!206146 () Bool)

(declare-fun b!688790 () Bool)

(declare-fun tp!206145 () Bool)

(assert (=> b!688790 (= e!432815 (and (inv!9471 (left!5950 (left!5950 (c!121356 input!756)))) tp!206145 (inv!9471 (right!6280 (left!5950 (c!121356 input!756)))) tp!206146))))

(declare-fun b!688792 () Bool)

(declare-fun e!432814 () Bool)

(declare-fun tp!206144 () Bool)

(assert (=> b!688792 (= e!432814 tp!206144)))

(declare-fun b!688791 () Bool)

(assert (=> b!688791 (= e!432815 (and (inv!9478 (xs!5262 (left!5950 (c!121356 input!756)))) e!432814))))

(assert (=> b!688278 (= tp!205704 (and (inv!9471 (left!5950 (c!121356 input!756))) e!432815))))

(assert (= (and b!688278 ((_ is Node!2613) (left!5950 (c!121356 input!756)))) b!688790))

(assert (= b!688791 b!688792))

(assert (= (and b!688278 ((_ is Leaf!3877) (left!5950 (c!121356 input!756)))) b!688791))

(declare-fun m!945410 () Bool)

(assert (=> b!688790 m!945410))

(declare-fun m!945412 () Bool)

(assert (=> b!688790 m!945412))

(declare-fun m!945414 () Bool)

(assert (=> b!688791 m!945414))

(assert (=> b!688278 m!944895))

(declare-fun tp!206148 () Bool)

(declare-fun b!688793 () Bool)

(declare-fun e!432817 () Bool)

(declare-fun tp!206149 () Bool)

(assert (=> b!688793 (= e!432817 (and (inv!9471 (left!5950 (right!6280 (c!121356 input!756)))) tp!206148 (inv!9471 (right!6280 (right!6280 (c!121356 input!756)))) tp!206149))))

(declare-fun b!688795 () Bool)

(declare-fun e!432816 () Bool)

(declare-fun tp!206147 () Bool)

(assert (=> b!688795 (= e!432816 tp!206147)))

(declare-fun b!688794 () Bool)

(assert (=> b!688794 (= e!432817 (and (inv!9478 (xs!5262 (right!6280 (c!121356 input!756)))) e!432816))))

(assert (=> b!688278 (= tp!205705 (and (inv!9471 (right!6280 (c!121356 input!756))) e!432817))))

(assert (= (and b!688278 ((_ is Node!2613) (right!6280 (c!121356 input!756)))) b!688793))

(assert (= b!688794 b!688795))

(assert (= (and b!688278 ((_ is Leaf!3877) (right!6280 (c!121356 input!756)))) b!688794))

(declare-fun m!945416 () Bool)

(assert (=> b!688793 m!945416))

(declare-fun m!945418 () Bool)

(assert (=> b!688793 m!945418))

(declare-fun m!945420 () Bool)

(assert (=> b!688794 m!945420))

(assert (=> b!688278 m!944897))

(declare-fun b!688796 () Bool)

(declare-fun e!432818 () Bool)

(declare-fun tp!206150 () Bool)

(declare-fun tp!206151 () Bool)

(assert (=> b!688796 (= e!432818 (and tp!206150 tp!206151))))

(assert (=> b!688331 (= tp!205778 e!432818)))

(assert (= (and b!688331 ((_ is Cons!7365) (exprs!731 (_1!4255 (_1!4256 (h!12767 (zeroValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457)))))))))))) b!688796))

(declare-fun condSetEmpty!3604 () Bool)

(assert (=> setNonEmpty!3543 (= condSetEmpty!3604 (= setRest!3543 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3604 () Bool)

(assert (=> setNonEmpty!3543 (= tp!205781 setRes!3604)))

(declare-fun setIsEmpty!3604 () Bool)

(assert (=> setIsEmpty!3604 setRes!3604))

(declare-fun setNonEmpty!3604 () Bool)

(declare-fun tp!206152 () Bool)

(declare-fun e!432819 () Bool)

(declare-fun setElem!3604 () Context!462)

(assert (=> setNonEmpty!3604 (= setRes!3604 (and tp!206152 (inv!9479 setElem!3604) e!432819))))

(declare-fun setRest!3604 () (InoxSet Context!462))

(assert (=> setNonEmpty!3604 (= setRest!3543 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3604 true) setRest!3604))))

(declare-fun b!688797 () Bool)

(declare-fun tp!206153 () Bool)

(assert (=> b!688797 (= e!432819 tp!206153)))

(assert (= (and setNonEmpty!3543 condSetEmpty!3604) setIsEmpty!3604))

(assert (= (and setNonEmpty!3543 (not condSetEmpty!3604)) setNonEmpty!3604))

(assert (= setNonEmpty!3604 b!688797))

(declare-fun m!945422 () Bool)

(assert (=> setNonEmpty!3604 m!945422))

(declare-fun setIsEmpty!3605 () Bool)

(declare-fun setRes!3605 () Bool)

(assert (=> setIsEmpty!3605 setRes!3605))

(declare-fun b!688798 () Bool)

(declare-fun e!432821 () Bool)

(declare-fun tp!206155 () Bool)

(assert (=> b!688798 (= e!432821 tp!206155)))

(declare-fun tp!206154 () Bool)

(declare-fun b!688799 () Bool)

(declare-fun e!432822 () Bool)

(declare-fun e!432820 () Bool)

(assert (=> b!688799 (= e!432820 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 (t!87188 mapValue!2937))))) e!432822 tp_is_empty!3639 setRes!3605 tp!206154))))

(declare-fun condSetEmpty!3605 () Bool)

(assert (=> b!688799 (= condSetEmpty!3605 (= (_2!4256 (h!12767 (t!87188 mapValue!2937))) ((as const (Array Context!462 Bool)) false)))))

(assert (=> b!688411 (= tp!205879 e!432820)))

(declare-fun b!688800 () Bool)

(declare-fun tp!206157 () Bool)

(assert (=> b!688800 (= e!432822 tp!206157)))

(declare-fun setNonEmpty!3605 () Bool)

(declare-fun tp!206156 () Bool)

(declare-fun setElem!3605 () Context!462)

(assert (=> setNonEmpty!3605 (= setRes!3605 (and tp!206156 (inv!9479 setElem!3605) e!432821))))

(declare-fun setRest!3605 () (InoxSet Context!462))

(assert (=> setNonEmpty!3605 (= (_2!4256 (h!12767 (t!87188 mapValue!2937))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3605 true) setRest!3605))))

(assert (= b!688799 b!688800))

(assert (= (and b!688799 condSetEmpty!3605) setIsEmpty!3605))

(assert (= (and b!688799 (not condSetEmpty!3605)) setNonEmpty!3605))

(assert (= setNonEmpty!3605 b!688798))

(assert (= (and b!688411 ((_ is Cons!7366) (t!87188 mapValue!2937))) b!688799))

(declare-fun m!945424 () Bool)

(assert (=> b!688799 m!945424))

(declare-fun m!945426 () Bool)

(assert (=> setNonEmpty!3605 m!945426))

(declare-fun b!688801 () Bool)

(declare-fun e!432823 () Bool)

(declare-fun tp!206158 () Bool)

(declare-fun tp!206159 () Bool)

(assert (=> b!688801 (= e!432823 (and tp!206158 tp!206159))))

(assert (=> b!688329 (= tp!205776 e!432823)))

(assert (= (and b!688329 ((_ is Cons!7365) (exprs!731 setElem!3542))) b!688801))

(declare-fun setIsEmpty!3606 () Bool)

(declare-fun setRes!3606 () Bool)

(assert (=> setIsEmpty!3606 setRes!3606))

(declare-fun b!688802 () Bool)

(declare-fun e!432825 () Bool)

(declare-fun tp!206161 () Bool)

(assert (=> b!688802 (= e!432825 tp!206161)))

(declare-fun tp!206160 () Bool)

(declare-fun b!688803 () Bool)

(declare-fun e!432826 () Bool)

(declare-fun e!432824 () Bool)

(assert (=> b!688803 (= e!432824 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 (t!87188 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))))))) e!432826 tp_is_empty!3639 setRes!3606 tp!206160))))

(declare-fun condSetEmpty!3606 () Bool)

(assert (=> b!688803 (= condSetEmpty!3606 (= (_2!4256 (h!12767 (t!87188 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))))) ((as const (Array Context!462 Bool)) false)))))

(assert (=> b!688333 (= tp!205779 e!432824)))

(declare-fun b!688804 () Bool)

(declare-fun tp!206163 () Bool)

(assert (=> b!688804 (= e!432826 tp!206163)))

(declare-fun setElem!3606 () Context!462)

(declare-fun tp!206162 () Bool)

(declare-fun setNonEmpty!3606 () Bool)

(assert (=> setNonEmpty!3606 (= setRes!3606 (and tp!206162 (inv!9479 setElem!3606) e!432825))))

(declare-fun setRest!3606 () (InoxSet Context!462))

(assert (=> setNonEmpty!3606 (= (_2!4256 (h!12767 (t!87188 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3606 true) setRest!3606))))

(assert (= b!688803 b!688804))

(assert (= (and b!688803 condSetEmpty!3606) setIsEmpty!3606))

(assert (= (and b!688803 (not condSetEmpty!3606)) setNonEmpty!3606))

(assert (= setNonEmpty!3606 b!688802))

(assert (= (and b!688333 ((_ is Cons!7366) (t!87188 (minValue!990 (v!17578 (underlying!1649 (v!17579 (underlying!1650 (cache!1092 cacheUp!457))))))))) b!688803))

(declare-fun m!945428 () Bool)

(assert (=> b!688803 m!945428))

(declare-fun m!945430 () Bool)

(assert (=> setNonEmpty!3606 m!945430))

(declare-fun setIsEmpty!3607 () Bool)

(declare-fun setRes!3607 () Bool)

(assert (=> setIsEmpty!3607 setRes!3607))

(declare-fun b!688805 () Bool)

(declare-fun e!432828 () Bool)

(declare-fun tp!206165 () Bool)

(assert (=> b!688805 (= e!432828 tp!206165)))

(declare-fun tp!206164 () Bool)

(declare-fun e!432827 () Bool)

(declare-fun b!688806 () Bool)

(declare-fun e!432829 () Bool)

(assert (=> b!688806 (= e!432827 (and (inv!9479 (_1!4255 (_1!4256 (h!12767 (t!87188 mapDefault!2937))))) e!432829 tp_is_empty!3639 setRes!3607 tp!206164))))

(declare-fun condSetEmpty!3607 () Bool)

(assert (=> b!688806 (= condSetEmpty!3607 (= (_2!4256 (h!12767 (t!87188 mapDefault!2937))) ((as const (Array Context!462 Bool)) false)))))

(assert (=> b!688361 (= tp!205810 e!432827)))

(declare-fun b!688807 () Bool)

(declare-fun tp!206167 () Bool)

(assert (=> b!688807 (= e!432829 tp!206167)))

(declare-fun setElem!3607 () Context!462)

(declare-fun setNonEmpty!3607 () Bool)

(declare-fun tp!206166 () Bool)

(assert (=> setNonEmpty!3607 (= setRes!3607 (and tp!206166 (inv!9479 setElem!3607) e!432828))))

(declare-fun setRest!3607 () (InoxSet Context!462))

(assert (=> setNonEmpty!3607 (= (_2!4256 (h!12767 (t!87188 mapDefault!2937))) ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3607 true) setRest!3607))))

(assert (= b!688806 b!688807))

(assert (= (and b!688806 condSetEmpty!3607) setIsEmpty!3607))

(assert (= (and b!688806 (not condSetEmpty!3607)) setNonEmpty!3607))

(assert (= setNonEmpty!3607 b!688805))

(assert (= (and b!688361 ((_ is Cons!7366) (t!87188 mapDefault!2937))) b!688806))

(declare-fun m!945432 () Bool)

(assert (=> b!688806 m!945432))

(declare-fun m!945434 () Bool)

(assert (=> setNonEmpty!3607 m!945434))

(declare-fun b!688808 () Bool)

(declare-fun e!432830 () Bool)

(declare-fun tp!206168 () Bool)

(declare-fun tp!206169 () Bool)

(assert (=> b!688808 (= e!432830 (and tp!206168 tp!206169))))

(assert (=> b!688317 (= tp!205753 e!432830)))

(assert (= (and b!688317 ((_ is Cons!7365) (exprs!731 setElem!3538))) b!688808))

(declare-fun condSetEmpty!3608 () Bool)

(assert (=> setNonEmpty!3562 (= condSetEmpty!3608 (= setRest!3562 ((as const (Array Context!462 Bool)) false)))))

(declare-fun setRes!3608 () Bool)

(assert (=> setNonEmpty!3562 (= tp!205881 setRes!3608)))

(declare-fun setIsEmpty!3608 () Bool)

(assert (=> setIsEmpty!3608 setRes!3608))

(declare-fun setNonEmpty!3608 () Bool)

(declare-fun setElem!3608 () Context!462)

(declare-fun e!432831 () Bool)

(declare-fun tp!206170 () Bool)

(assert (=> setNonEmpty!3608 (= setRes!3608 (and tp!206170 (inv!9479 setElem!3608) e!432831))))

(declare-fun setRest!3608 () (InoxSet Context!462))

(assert (=> setNonEmpty!3608 (= setRest!3562 ((_ map or) (store ((as const (Array Context!462 Bool)) false) setElem!3608 true) setRest!3608))))

(declare-fun b!688809 () Bool)

(declare-fun tp!206171 () Bool)

(assert (=> b!688809 (= e!432831 tp!206171)))

(assert (= (and setNonEmpty!3562 condSetEmpty!3608) setIsEmpty!3608))

(assert (= (and setNonEmpty!3562 (not condSetEmpty!3608)) setNonEmpty!3608))

(assert (= setNonEmpty!3608 b!688809))

(declare-fun m!945436 () Bool)

(assert (=> setNonEmpty!3608 m!945436))

(check-sat (not d!232034) (not b!688807) (not b!688665) (not b!688690) (not b!688601) b_and!63163 (not b!688643) (not b!688659) (not b!688789) (not d!232018) (not b!688719) (not setNonEmpty!3608) (not d!231996) (not b!688801) (not b!688573) (not b!688486) (not d!232020) (not b_next!19431) (not setNonEmpty!3571) (not b!688572) (not b!688639) (not b!688685) (not b!688792) (not setNonEmpty!3595) (not b!688559) (not setNonEmpty!3599) (not setNonEmpty!3574) (not b!688466) (not b!688458) (not b!688596) (not b!688715) (not b!688700) (not d!232090) (not b!688806) (not b!688684) (not b!688527) (not b_next!19421) (not d!232086) (not b!688770) (not b!688727) (not b!688781) (not b!688633) (not b!688499) (not d!232106) (not b!688691) (not b!688707) b_and!63169 (not d!232050) (not b!688547) (not b!688657) (not b!688757) (not setNonEmpty!3587) b_and!63157 (not d!232030) (not b!688472) (not d!232008) (not setNonEmpty!3592) (not setNonEmpty!3567) (not d!232040) (not b!688675) (not b!688802) (not b!688745) (not b!688753) b_and!63159 (not b!688589) (not b!688799) (not b!688594) (not b!688488) (not b!688709) (not b!688746) (not setNonEmpty!3575) (not b!688599) (not b!688725) (not b!688487) (not setNonEmpty!3576) (not b!688803) (not b!688636) (not b!688437) (not b!688705) (not b!688574) (not b!688785) (not b_next!19439) (not setNonEmpty!3570) (not b!688739) (not b!688595) (not b!688710) (not b!688670) (not b!688640) (not setNonEmpty!3577) (not setNonEmpty!3582) (not setNonEmpty!3579) b_and!63153 (not b!688660) (not setNonEmpty!3578) (not b!688585) (not b!688730) (not b_next!19429) (not b!688625) (not b!688693) (not b!688680) (not b!688742) (not mapNonEmpty!2948) (not b!688762) (not d!232130) (not b!688683) (not setNonEmpty!3569) (not d!232082) (not b!688655) (not setNonEmpty!3572) (not b!688761) (not b!688751) (not b!688763) (not setNonEmpty!3604) (not setNonEmpty!3601) (not b_next!19417) (not b!688776) (not d!232014) (not b!688784) (not b!688630) (not b!688694) (not d!232136) (not b!688749) (not b!688508) (not b!688666) (not b!688645) (not setNonEmpty!3591) (not b!688754) (not b!688678) b_and!63151 (not b!688697) (not b!688692) (not b!688456) (not b!688756) (not bm!43529) (not b!688600) (not b!688434) (not d!232096) (not d!232108) (not b!688439) (not b!688637) (not b!688620) (not d!232048) (not b!688760) (not b!688546) (not b!688651) (not b!688652) (not d!232046) (not b!688503) (not b!688704) (not b_next!19427) (not b_next!19435) (not b!688714) (not b!688779) (not b!688667) (not b!688720) (not b!688663) (not b!688743) (not b!688438) (not setNonEmpty!3581) (not b!688613) (not b!688661) (not setNonEmpty!3573) (not b!688750) (not b!688768) (not d!232120) (not d!232062) (not b!688440) (not b!688767) (not b_next!19433) (not b!688774) (not b!688711) (not d!232116) (not b!688752) (not d!232104) (not b!688795) (not setNonEmpty!3590) (not b!688796) (not b!688716) (not b!688656) (not b!688731) tp_is_empty!3639 (not setNonEmpty!3596) (not b!688504) (not b!688506) (not b!688744) (not b!688511) (not b!688501) (not b!688681) (not d!232044) (not b_next!19423) (not d!232022) (not b!688607) (not d!232092) (not b!688682) (not d!232134) (not b!688614) (not b!688658) (not b!688701) (not b!688740) (not setNonEmpty!3589) (not b!688631) (not b!688278) (not b!688632) (not b!688654) (not b!688500) (not b!688791) (not b!688587) (not setNonEmpty!3586) (not setNonEmpty!3600) (not setNonEmpty!3607) (not b_next!19419) b_and!63147 (not b!688772) (not b!688436) (not b!688558) (not b!688702) (not b!688571) (not b!688706) (not b!688723) (not b!688647) (not b!688638) (not setNonEmpty!3605) (not b!688532) (not b!688662) (not b!688747) (not setNonEmpty!3584) b_and!63155 (not d!232114) (not d!232004) (not d!232012) (not b!688565) (not b!688805) (not b!688689) (not b!688721) (not d!232084) (not b!688653) (not b!688717) (not b!688575) (not b!688773) (not d!232058) (not b!688755) (not d!232078) (not b!688641) (not b!688649) (not b!688766) (not b!688794) (not b!688543) (not b!688800) (not setNonEmpty!3597) (not b!688712) (not b!688798) (not d!232122) (not b!688764) (not b!688514) (not b!688541) (not setNonEmpty!3606) (not b!688679) (not setNonEmpty!3568) (not b!688597) (not setNonEmpty!3593) (not b!688737) (not b!688713) (not d!232042) (not b!688669) (not b!688569) (not setNonEmpty!3603) (not d!232140) (not b!688724) (not d!232080) (not setNonEmpty!3602) (not b!688635) (not d!232056) (not b!688696) (not setNonEmpty!3594) (not b!688454) (not b!688718) (not b!688758) (not b!688687) (not b!688808) (not b!688281) (not d!232074) (not b!688699) (not b!688797) (not b!688734) (not b!688809) (not d!231998) (not mapNonEmpty!2950) (not b!688783) (not b!688804) (not b!688668) (not b!688778) (not b!688602) (not b!688526) (not d!232138) (not d!232010) (not b!688457) b_and!63165 (not b!688788) (not b!688729) (not b!688608) (not b!688611) (not b!688780) (not b!688676) (not b!688688) (not b!688787) (not d!232026) (not d!232032) b_and!63161 (not b_next!19425) (not b!688650) (not b!688644) (not b!688741) (not d!232088) (not b!688539) (not b!688790) (not d!232064) (not b_next!19437) (not b!688777) b_and!63167 (not b!688455) (not b!688793) (not b!688722) (not b!688698) (not d!232124) (not b!688509) (not b!688646) (not d!232094) (not d!232054) (not b!688598) (not d!232052) (not b!688616) (not b!688736) (not b!688619) (not setNonEmpty!3580) (not mapNonEmpty!2949) b_and!63149 (not b!688726) (not d!232006) (not setNonEmpty!3585) (not b!688435) (not b!688568) (not b!688748) (not setNonEmpty!3588) (not b!688634) (not d!232002) (not setNonEmpty!3583) (not b!688738) (not b!688564) (not b!688771) (not d!232028) (not d!232016) (not b!688453) (not b!688533) (not b!688733) (not b!688703) (not b!688677) (not b!688732) (not setNonEmpty!3598) (not b!688642))
(check-sat b_and!63163 (not b_next!19431) (not b_next!19421) b_and!63159 (not b_next!19439) (not b_next!19417) b_and!63151 (not b_next!19433) (not b_next!19423) b_and!63155 (not b_next!19437) b_and!63167 b_and!63149 b_and!63169 b_and!63157 b_and!63153 (not b_next!19429) (not b_next!19427) (not b_next!19435) b_and!63147 (not b_next!19419) b_and!63165 b_and!63161 (not b_next!19425))
