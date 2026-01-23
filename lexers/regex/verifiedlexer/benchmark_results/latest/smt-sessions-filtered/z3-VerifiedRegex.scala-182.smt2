; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2208 () Bool)

(assert start!2208)

(declare-fun b!40208 () Bool)

(declare-fun b_free!837 () Bool)

(declare-fun b_next!837 () Bool)

(assert (=> b!40208 (= b_free!837 (not b_next!837))))

(declare-fun tp!27927 () Bool)

(declare-fun b_and!871 () Bool)

(assert (=> b!40208 (= tp!27927 b_and!871)))

(declare-fun b!40219 () Bool)

(declare-fun b_free!839 () Bool)

(declare-fun b_next!839 () Bool)

(assert (=> b!40219 (= b_free!839 (not b_next!839))))

(declare-fun tp!27921 () Bool)

(declare-fun b_and!873 () Bool)

(assert (=> b!40219 (= tp!27921 b_and!873)))

(declare-fun b!40204 () Bool)

(declare-fun b_free!841 () Bool)

(declare-fun b_next!841 () Bool)

(assert (=> b!40204 (= b_free!841 (not b_next!841))))

(declare-fun tp!27916 () Bool)

(declare-fun b_and!875 () Bool)

(assert (=> b!40204 (= tp!27916 b_and!875)))

(declare-fun b!40218 () Bool)

(declare-fun b_free!843 () Bool)

(declare-fun b_next!843 () Bool)

(assert (=> b!40218 (= b_free!843 (not b_next!843))))

(declare-fun tp!27930 () Bool)

(declare-fun b_and!877 () Bool)

(assert (=> b!40218 (= tp!27930 b_and!877)))

(declare-fun b!40226 () Bool)

(declare-fun b_free!845 () Bool)

(declare-fun b_next!845 () Bool)

(assert (=> b!40226 (= b_free!845 (not b_next!845))))

(declare-fun tp!27934 () Bool)

(declare-fun b_and!879 () Bool)

(assert (=> b!40226 (= tp!27934 b_and!879)))

(declare-fun b!40225 () Bool)

(declare-fun b_free!847 () Bool)

(declare-fun b_next!847 () Bool)

(assert (=> b!40225 (= b_free!847 (not b_next!847))))

(declare-fun tp!27925 () Bool)

(declare-fun b_and!881 () Bool)

(assert (=> b!40225 (= tp!27925 b_and!881)))

(declare-fun b!40237 () Bool)

(declare-fun e!20729 () Bool)

(assert (=> b!40237 (= e!20729 true)))

(declare-fun b!40236 () Bool)

(declare-fun e!20728 () Bool)

(assert (=> b!40236 (= e!20728 e!20729)))

(declare-fun b!40235 () Bool)

(declare-fun e!20727 () Bool)

(assert (=> b!40235 (= e!20727 e!20728)))

(declare-fun b!40222 () Bool)

(assert (=> b!40222 e!20727))

(assert (= b!40236 b!40237))

(assert (= b!40235 b!40236))

(declare-datatypes ((List!545 0))(
  ( (Nil!543) (Cons!543 (h!5939 (_ BitVec 16)) (t!15787 List!545)) )
))
(declare-datatypes ((TokenValue!135 0))(
  ( (FloatLiteralValue!270 (text!1390 List!545)) (TokenValueExt!134 (__x!964 Int)) (Broken!675 (value!6914 List!545)) (Object!136) (End!135) (Def!135) (Underscore!135) (Match!135) (Else!135) (Error!135) (Case!135) (If!135) (Extends!135) (Abstract!135) (Class!135) (Val!135) (DelimiterValue!270 (del!195 List!545)) (KeywordValue!141 (value!6915 List!545)) (CommentValue!270 (value!6916 List!545)) (WhitespaceValue!270 (value!6917 List!545)) (IndentationValue!135 (value!6918 List!545)) (String!966) (Int32!135) (Broken!676 (value!6919 List!545)) (Boolean!136) (Unit!247) (OperatorValue!138 (op!195 List!545)) (IdentifierValue!270 (value!6920 List!545)) (IdentifierValue!271 (value!6921 List!545)) (WhitespaceValue!271 (value!6922 List!545)) (True!270) (False!270) (Broken!677 (value!6923 List!545)) (Broken!678 (value!6924 List!545)) (True!271) (RightBrace!135) (RightBracket!135) (Colon!135) (Null!135) (Comma!135) (LeftBracket!135) (False!271) (LeftBrace!135) (ImaginaryLiteralValue!135 (text!1391 List!545)) (StringLiteralValue!405 (value!6925 List!545)) (EOFValue!135 (value!6926 List!545)) (IdentValue!135 (value!6927 List!545)) (DelimiterValue!271 (value!6928 List!545)) (DedentValue!135 (value!6929 List!545)) (NewLineValue!135 (value!6930 List!545)) (IntegerValue!405 (value!6931 (_ BitVec 32)) (text!1392 List!545)) (IntegerValue!406 (value!6932 Int) (text!1393 List!545)) (Times!135) (Or!135) (Equal!135) (Minus!135) (Broken!679 (value!6933 List!545)) (And!135) (Div!135) (LessEqual!135) (Mod!135) (Concat!344) (Not!135) (Plus!135) (SpaceValue!135 (value!6934 List!545)) (IntegerValue!407 (value!6935 Int) (text!1394 List!545)) (StringLiteralValue!406 (text!1395 List!545)) (FloatLiteralValue!271 (text!1396 List!545)) (BytesLiteralValue!135 (value!6936 List!545)) (CommentValue!271 (value!6937 List!545)) (StringLiteralValue!407 (value!6938 List!545)) (ErrorTokenValue!135 (msg!196 List!545)) )
))
(declare-datatypes ((Regex!209 0))(
  ( (ElementMatch!209 (c!15798 (_ BitVec 16))) (Concat!345 (regOne!930 Regex!209) (regTwo!930 Regex!209)) (EmptyExpr!209) (Star!209 (reg!538 Regex!209)) (EmptyLang!209) (Union!209 (regOne!931 Regex!209) (regTwo!931 Regex!209)) )
))
(declare-datatypes ((String!967 0))(
  ( (String!968 (value!6939 String)) )
))
(declare-datatypes ((IArray!187 0))(
  ( (IArray!188 (innerList!151 List!545)) )
))
(declare-datatypes ((Conc!93 0))(
  ( (Node!93 (left!487 Conc!93) (right!817 Conc!93) (csize!416 Int) (cheight!304 Int)) (Leaf!276 (xs!2672 IArray!187) (csize!417 Int)) (Empty!93) )
))
(declare-datatypes ((BalanceConc!186 0))(
  ( (BalanceConc!187 (c!15799 Conc!93)) )
))
(declare-datatypes ((TokenValueInjection!94 0))(
  ( (TokenValueInjection!95 (toValue!624 Int) (toChars!483 Int)) )
))
(declare-datatypes ((Rule!90 0))(
  ( (Rule!91 (regex!145 Regex!209) (tag!323 String!967) (isSeparator!145 Bool) (transformation!145 TokenValueInjection!94)) )
))
(declare-datatypes ((List!546 0))(
  ( (Nil!544) (Cons!544 (h!5940 Rule!90) (t!15788 List!546)) )
))
(declare-fun lt!4030 () List!546)

(get-info :version)

(assert (= (and b!40222 ((_ is Cons!544) lt!4030)) b!40235))

(declare-fun order!79 () Int)

(declare-fun order!81 () Int)

(declare-fun lambda!655 () Int)

(declare-fun dynLambda!56 (Int Int) Int)

(declare-fun dynLambda!57 (Int Int) Int)

(assert (=> b!40237 (< (dynLambda!56 order!79 (toValue!624 (transformation!145 (h!5940 lt!4030)))) (dynLambda!57 order!81 lambda!655))))

(declare-fun order!83 () Int)

(declare-fun dynLambda!58 (Int Int) Int)

(assert (=> b!40237 (< (dynLambda!58 order!83 (toChars!483 (transformation!145 (h!5940 lt!4030)))) (dynLambda!57 order!81 lambda!655))))

(declare-fun b!40190 () Bool)

(declare-fun e!20697 () Bool)

(declare-fun e!20691 () Bool)

(declare-datatypes ((List!547 0))(
  ( (Nil!545) (Cons!545 (h!5941 Regex!209) (t!15789 List!547)) )
))
(declare-datatypes ((Context!134 0))(
  ( (Context!135 (exprs!567 List!547)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!182 0))(
  ( (tuple3!183 (_1!412 (InoxSet Context!134)) (_2!412 Int) (_3!108 Int)) )
))
(declare-datatypes ((tuple2!608 0))(
  ( (tuple2!609 (_1!413 tuple3!182) (_2!413 Int)) )
))
(declare-datatypes ((List!548 0))(
  ( (Nil!546) (Cons!546 (h!5942 tuple2!608) (t!15790 List!548)) )
))
(declare-datatypes ((array!570 0))(
  ( (array!571 (arr!292 (Array (_ BitVec 32) List!548)) (size!562 (_ BitVec 32))) )
))
(declare-datatypes ((array!572 0))(
  ( (array!573 (arr!293 (Array (_ BitVec 32) (_ BitVec 64))) (size!563 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!342 0))(
  ( (LongMapFixedSize!343 (defaultEntry!509 Int) (mask!877 (_ BitVec 32)) (extraKeys!417 (_ BitVec 32)) (zeroValue!427 List!548) (minValue!427 List!548) (_size!474 (_ BitVec 32)) (_keys!462 array!572) (_values!449 array!570) (_vacant!231 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!673 0))(
  ( (Cell!674 (v!12315 LongMapFixedSize!342)) )
))
(declare-datatypes ((MutLongMap!171 0))(
  ( (LongMap!171 (underlying!537 Cell!673)) (MutLongMapExt!170 (__x!965 Int)) )
))
(declare-fun lt!4033 () MutLongMap!171)

(assert (=> b!40190 (= e!20697 (and e!20691 ((_ is LongMap!171) lt!4033)))))

(declare-datatypes ((Hashable!167 0))(
  ( (HashableExt!166 (__x!966 Int)) )
))
(declare-datatypes ((Cell!675 0))(
  ( (Cell!676 (v!12316 MutLongMap!171)) )
))
(declare-datatypes ((MutableMap!167 0))(
  ( (MutableMapExt!166 (__x!967 Int)) (HashMap!167 (underlying!538 Cell!675) (hashF!2035 Hashable!167) (_size!475 (_ BitVec 32)) (defaultValue!316 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!62 0))(
  ( (CacheFurthestNullable!63 (cache!652 MutableMap!167) (totalInput!1508 BalanceConc!186)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!62)

(assert (=> b!40190 (= lt!4033 (v!12316 (underlying!538 (cache!652 cacheFurthestNullable!45))))))

(declare-fun b!40191 () Bool)

(declare-fun res!29080 () Bool)

(declare-fun e!20703 () Bool)

(assert (=> b!40191 (=> (not res!29080) (not e!20703))))

(declare-datatypes ((tuple2!610 0))(
  ( (tuple2!611 (_1!414 Context!134) (_2!414 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!168 0))(
  ( (HashableExt!167 (__x!968 Int)) )
))
(declare-datatypes ((tuple2!612 0))(
  ( (tuple2!613 (_1!415 tuple2!610) (_2!415 (InoxSet Context!134))) )
))
(declare-datatypes ((List!549 0))(
  ( (Nil!547) (Cons!547 (h!5943 tuple2!612) (t!15791 List!549)) )
))
(declare-datatypes ((array!574 0))(
  ( (array!575 (arr!294 (Array (_ BitVec 32) List!549)) (size!564 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!344 0))(
  ( (LongMapFixedSize!345 (defaultEntry!510 Int) (mask!878 (_ BitVec 32)) (extraKeys!418 (_ BitVec 32)) (zeroValue!428 List!549) (minValue!428 List!549) (_size!476 (_ BitVec 32)) (_keys!463 array!572) (_values!450 array!574) (_vacant!232 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!677 0))(
  ( (Cell!678 (v!12317 LongMapFixedSize!344)) )
))
(declare-datatypes ((MutLongMap!172 0))(
  ( (LongMap!172 (underlying!539 Cell!677)) (MutLongMapExt!171 (__x!969 Int)) )
))
(declare-datatypes ((Cell!679 0))(
  ( (Cell!680 (v!12318 MutLongMap!172)) )
))
(declare-datatypes ((MutableMap!168 0))(
  ( (MutableMapExt!167 (__x!970 Int)) (HashMap!168 (underlying!540 Cell!679) (hashF!2036 Hashable!168) (_size!477 (_ BitVec 32)) (defaultValue!317 Int)) )
))
(declare-datatypes ((CacheUp!114 0))(
  ( (CacheUp!115 (cache!653 MutableMap!168)) )
))
(declare-datatypes ((Token!58 0))(
  ( (Token!59 (value!6940 TokenValue!135) (rule!622 Rule!90) (size!565 Int) (originalCharacters!200 List!545)) )
))
(declare-datatypes ((List!550 0))(
  ( (Nil!548) (Cons!548 (h!5944 Token!58) (t!15792 List!550)) )
))
(declare-datatypes ((IArray!189 0))(
  ( (IArray!190 (innerList!152 List!550)) )
))
(declare-datatypes ((Conc!94 0))(
  ( (Node!94 (left!488 Conc!94) (right!818 Conc!94) (csize!418 Int) (cheight!305 Int)) (Leaf!277 (xs!2673 IArray!189) (csize!419 Int)) (Empty!94) )
))
(declare-datatypes ((BalanceConc!188 0))(
  ( (BalanceConc!189 (c!15800 Conc!94)) )
))
(declare-datatypes ((tuple2!614 0))(
  ( (tuple2!615 (_1!416 BalanceConc!188) (_2!416 BalanceConc!186)) )
))
(declare-datatypes ((tuple3!184 0))(
  ( (tuple3!185 (_1!417 Regex!209) (_2!417 Context!134) (_3!109 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!616 0))(
  ( (tuple2!617 (_1!418 tuple3!184) (_2!418 (InoxSet Context!134))) )
))
(declare-datatypes ((List!551 0))(
  ( (Nil!549) (Cons!549 (h!5945 tuple2!616) (t!15793 List!551)) )
))
(declare-datatypes ((array!576 0))(
  ( (array!577 (arr!295 (Array (_ BitVec 32) List!551)) (size!566 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!346 0))(
  ( (LongMapFixedSize!347 (defaultEntry!511 Int) (mask!879 (_ BitVec 32)) (extraKeys!419 (_ BitVec 32)) (zeroValue!429 List!551) (minValue!429 List!551) (_size!478 (_ BitVec 32)) (_keys!464 array!572) (_values!451 array!576) (_vacant!233 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!681 0))(
  ( (Cell!682 (v!12319 LongMapFixedSize!346)) )
))
(declare-datatypes ((MutLongMap!173 0))(
  ( (LongMap!173 (underlying!541 Cell!681)) (MutLongMapExt!172 (__x!971 Int)) )
))
(declare-datatypes ((Cell!683 0))(
  ( (Cell!684 (v!12320 MutLongMap!173)) )
))
(declare-datatypes ((Hashable!169 0))(
  ( (HashableExt!168 (__x!972 Int)) )
))
(declare-datatypes ((MutableMap!169 0))(
  ( (MutableMapExt!168 (__x!973 Int)) (HashMap!169 (underlying!542 Cell!683) (hashF!2037 Hashable!169) (_size!479 (_ BitVec 32)) (defaultValue!318 Int)) )
))
(declare-datatypes ((CacheDown!114 0))(
  ( (CacheDown!115 (cache!654 MutableMap!169)) )
))
(declare-datatypes ((tuple4!34 0))(
  ( (tuple4!35 (_1!419 tuple2!614) (_2!419 CacheUp!114) (_3!110 CacheDown!114) (_4!17 CacheFurthestNullable!62)) )
))
(declare-fun lt!4034 () tuple4!34)

(declare-fun forall!54 (BalanceConc!188 Int) Bool)

(assert (=> b!40191 (= res!29080 (forall!54 (_1!416 (_1!419 lt!4034)) lambda!655))))

(declare-fun b!40192 () Bool)

(declare-fun e!20711 () Bool)

(declare-fun e!20692 () Bool)

(assert (=> b!40192 (= e!20711 e!20692)))

(declare-fun res!29084 () Bool)

(assert (=> b!40192 (=> (not res!29084) (not e!20692))))

(declare-fun lt!4038 () List!550)

(declare-fun lt!4044 () List!550)

(assert (=> b!40192 (= res!29084 (= lt!4038 lt!4044))))

(declare-fun lt!4045 () tuple2!614)

(declare-fun list!135 (BalanceConc!188) List!550)

(assert (=> b!40192 (= lt!4044 (list!135 (_1!416 lt!4045)))))

(assert (=> b!40192 (= lt!4038 (list!135 (_1!416 (_1!419 lt!4034))))))

(declare-fun input!525 () BalanceConc!186)

(declare-datatypes ((LexerInterface!41 0))(
  ( (LexerInterfaceExt!38 (__x!974 Int)) (Lexer!39) )
))
(declare-fun lex!16 (LexerInterface!41 List!546 BalanceConc!186) tuple2!614)

(assert (=> b!40192 (= lt!4045 (lex!16 Lexer!39 lt!4030 input!525))))

(declare-datatypes ((Unit!248 0))(
  ( (Unit!249) )
))
(declare-fun lt!4036 () Unit!248)

(declare-fun lemmaInvariant!27 (CacheDown!114) Unit!248)

(assert (=> b!40192 (= lt!4036 (lemmaInvariant!27 (_3!110 lt!4034)))))

(declare-fun lt!4043 () Unit!248)

(declare-fun lemmaInvariant!28 (CacheUp!114) Unit!248)

(assert (=> b!40192 (= lt!4043 (lemmaInvariant!28 (_2!419 lt!4034)))))

(declare-fun cacheDown!333 () CacheDown!114)

(declare-fun cacheUp!320 () CacheUp!114)

(declare-fun lexMem!12 (LexerInterface!41 List!546 BalanceConc!186 CacheUp!114 CacheDown!114 CacheFurthestNullable!62) tuple4!34)

(assert (=> b!40192 (= lt!4034 (lexMem!12 Lexer!39 lt!4030 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!40193 () Bool)

(declare-fun res!29081 () Bool)

(assert (=> b!40193 (=> (not res!29081) (not e!20711))))

(declare-fun valid!165 (CacheFurthestNullable!62) Bool)

(assert (=> b!40193 (= res!29081 (valid!165 cacheFurthestNullable!45))))

(declare-fun b!40194 () Bool)

(declare-fun e!20709 () Bool)

(declare-fun e!20715 () Bool)

(assert (=> b!40194 (= e!20709 e!20715)))

(declare-fun res!29078 () Bool)

(assert (=> start!2208 (=> (not res!29078) (not e!20711))))

(declare-fun isEmpty!110 (List!546) Bool)

(assert (=> start!2208 (= res!29078 (not (isEmpty!110 lt!4030)))))

(declare-datatypes ((JsonLexer!44 0))(
  ( (JsonLexer!45) )
))
(declare-fun rules!109 (JsonLexer!44) List!546)

(assert (=> start!2208 (= lt!4030 (rules!109 JsonLexer!45))))

(assert (=> start!2208 e!20711))

(declare-fun e!20693 () Bool)

(declare-fun inv!830 (CacheDown!114) Bool)

(assert (=> start!2208 (and (inv!830 cacheDown!333) e!20693)))

(declare-fun e!20719 () Bool)

(declare-fun inv!831 (BalanceConc!186) Bool)

(assert (=> start!2208 (and (inv!831 input!525) e!20719)))

(declare-fun e!20705 () Bool)

(declare-fun inv!832 (CacheFurthestNullable!62) Bool)

(assert (=> start!2208 (and (inv!832 cacheFurthestNullable!45) e!20705)))

(declare-fun e!20718 () Bool)

(declare-fun inv!833 (CacheUp!114) Bool)

(assert (=> start!2208 (and (inv!833 cacheUp!320) e!20718)))

(declare-fun mapNonEmpty!607 () Bool)

(declare-fun mapRes!608 () Bool)

(declare-fun tp!27924 () Bool)

(declare-fun tp!27922 () Bool)

(assert (=> mapNonEmpty!607 (= mapRes!608 (and tp!27924 tp!27922))))

(declare-fun mapKey!608 () (_ BitVec 32))

(declare-fun mapRest!607 () (Array (_ BitVec 32) List!549))

(declare-fun mapValue!609 () List!549)

(assert (=> mapNonEmpty!607 (= (arr!294 (_values!450 (v!12317 (underlying!539 (v!12318 (underlying!540 (cache!653 cacheUp!320))))))) (store mapRest!607 mapKey!608 mapValue!609))))

(declare-fun b!40195 () Bool)

(declare-fun e!20716 () Bool)

(assert (=> b!40195 (= e!20718 e!20716)))

(declare-fun b!40196 () Bool)

(declare-fun e!20695 () Bool)

(declare-fun tp!27917 () Bool)

(declare-fun inv!834 (Conc!93) Bool)

(assert (=> b!40196 (= e!20695 (and (inv!834 (c!15799 (totalInput!1508 cacheFurthestNullable!45))) tp!27917))))

(declare-fun b!40197 () Bool)

(declare-fun e!20696 () Bool)

(declare-fun tp!27935 () Bool)

(declare-fun mapRes!607 () Bool)

(assert (=> b!40197 (= e!20696 (and tp!27935 mapRes!607))))

(declare-fun condMapEmpty!608 () Bool)

(declare-fun mapDefault!607 () List!548)

(assert (=> b!40197 (= condMapEmpty!608 (= (arr!292 (_values!449 (v!12315 (underlying!537 (v!12316 (underlying!538 (cache!652 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!548)) mapDefault!607)))))

(declare-fun b!40198 () Bool)

(declare-fun e!20707 () Bool)

(assert (=> b!40198 (= e!20691 e!20707)))

(declare-fun b!40199 () Bool)

(declare-fun e!20694 () Bool)

(assert (=> b!40199 (= e!20705 (and e!20694 (inv!831 (totalInput!1508 cacheFurthestNullable!45)) e!20695))))

(declare-fun b!40200 () Bool)

(declare-fun e!20712 () Bool)

(declare-fun tp!27933 () Bool)

(declare-fun mapRes!609 () Bool)

(assert (=> b!40200 (= e!20712 (and tp!27933 mapRes!609))))

(declare-fun condMapEmpty!607 () Bool)

(declare-fun mapDefault!609 () List!551)

(assert (=> b!40200 (= condMapEmpty!607 (= (arr!295 (_values!451 (v!12319 (underlying!541 (v!12320 (underlying!542 (cache!654 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!551)) mapDefault!609)))))

(declare-fun b!40201 () Bool)

(declare-fun e!20698 () Bool)

(assert (=> b!40201 (= e!20698 e!20709)))

(declare-fun b!40202 () Bool)

(assert (=> b!40202 (= e!20703 false)))

(declare-fun lt!4035 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!3 (LexerInterface!41 List!546 List!550) Bool)

(assert (=> b!40202 (= lt!4035 (rulesProduceEachTokenIndividuallyList!3 Lexer!39 lt!4030 lt!4038))))

(declare-fun b!40203 () Bool)

(declare-fun e!20690 () Bool)

(assert (=> b!40203 (= e!20707 e!20690)))

(declare-fun e!20699 () Bool)

(assert (=> b!40204 (= e!20716 (and e!20699 tp!27916))))

(declare-fun mapIsEmpty!607 () Bool)

(assert (=> mapIsEmpty!607 mapRes!607))

(declare-fun b!40205 () Bool)

(declare-fun lt!4041 () MutLongMap!172)

(assert (=> b!40205 (= e!20699 (and e!20698 ((_ is LongMap!172) lt!4041)))))

(assert (=> b!40205 (= lt!4041 (v!12318 (underlying!540 (cache!653 cacheUp!320))))))

(declare-fun b!40206 () Bool)

(declare-fun res!29085 () Bool)

(assert (=> b!40206 (=> (not res!29085) (not e!20711))))

(declare-fun valid!166 (CacheUp!114) Bool)

(assert (=> b!40206 (= res!29085 (valid!166 cacheUp!320))))

(declare-fun b!40207 () Bool)

(declare-fun res!29074 () Bool)

(assert (=> b!40207 (=> (not res!29074) (not e!20711))))

(declare-fun valid!167 (CacheDown!114) Bool)

(assert (=> b!40207 (= res!29074 (valid!167 cacheDown!333))))

(declare-fun tp!27918 () Bool)

(declare-fun e!20700 () Bool)

(declare-fun tp!27914 () Bool)

(declare-fun array_inv!187 (array!572) Bool)

(declare-fun array_inv!188 (array!574) Bool)

(assert (=> b!40208 (= e!20715 (and tp!27927 tp!27918 tp!27914 (array_inv!187 (_keys!463 (v!12317 (underlying!539 (v!12318 (underlying!540 (cache!653 cacheUp!320))))))) (array_inv!188 (_values!450 (v!12317 (underlying!539 (v!12318 (underlying!540 (cache!653 cacheUp!320))))))) e!20700))))

(declare-fun b!40209 () Bool)

(declare-fun res!29079 () Bool)

(assert (=> b!40209 (=> (not res!29079) (not e!20703))))

(declare-fun lt!4039 () List!545)

(declare-fun lexThenRulesProduceEachTokenIndividually!8 (LexerInterface!41 List!546 List!545) Bool)

(assert (=> b!40209 (= res!29079 (lexThenRulesProduceEachTokenIndividually!8 Lexer!39 lt!4030 lt!4039))))

(declare-fun b!40210 () Bool)

(declare-fun e!20702 () Bool)

(assert (=> b!40210 (= e!20702 e!20703)))

(declare-fun res!29075 () Bool)

(assert (=> b!40210 (=> (not res!29075) (not e!20703))))

(declare-fun lt!4037 () tuple2!614)

(assert (=> b!40210 (= res!29075 (= lt!4044 (list!135 (_1!416 lt!4037))))))

(declare-fun lt!4042 () BalanceConc!186)

(assert (=> b!40210 (= lt!4037 (lex!16 Lexer!39 lt!4030 lt!4042))))

(declare-fun b!40211 () Bool)

(declare-fun e!20701 () Bool)

(declare-fun e!20704 () Bool)

(assert (=> b!40211 (= e!20701 e!20704)))

(declare-fun b!40212 () Bool)

(declare-fun res!29077 () Bool)

(assert (=> b!40212 (=> (not res!29077) (not e!20703))))

(declare-fun lt!4032 () List!545)

(declare-fun list!136 (BalanceConc!186) List!545)

(assert (=> b!40212 (= res!29077 (= lt!4032 (list!136 (_2!416 lt!4037))))))

(declare-fun b!40213 () Bool)

(declare-fun tp!27929 () Bool)

(assert (=> b!40213 (= e!20719 (and (inv!834 (c!15799 input!525)) tp!27929))))

(declare-fun mapIsEmpty!608 () Bool)

(assert (=> mapIsEmpty!608 mapRes!608))

(declare-fun b!40214 () Bool)

(declare-fun e!20717 () Bool)

(assert (=> b!40214 (= e!20717 e!20702)))

(declare-fun res!29076 () Bool)

(assert (=> b!40214 (=> (not res!29076) (not e!20702))))

(assert (=> b!40214 (= res!29076 (= (list!136 lt!4042) lt!4039))))

(declare-fun seqFromList!14 (List!545) BalanceConc!186)

(assert (=> b!40214 (= lt!4042 (seqFromList!14 lt!4039))))

(assert (=> b!40214 (= lt!4039 (list!136 input!525))))

(declare-fun b!40215 () Bool)

(declare-fun res!29087 () Bool)

(assert (=> b!40215 (=> (not res!29087) (not e!20711))))

(declare-fun rulesInvariant!33 (LexerInterface!41 List!546) Bool)

(assert (=> b!40215 (= res!29087 (rulesInvariant!33 Lexer!39 lt!4030))))

(declare-fun b!40216 () Bool)

(declare-fun e!20714 () Bool)

(assert (=> b!40216 (= e!20704 e!20714)))

(declare-fun b!40217 () Bool)

(declare-fun e!20706 () Bool)

(declare-fun lt!4040 () MutLongMap!173)

(assert (=> b!40217 (= e!20706 (and e!20701 ((_ is LongMap!173) lt!4040)))))

(assert (=> b!40217 (= lt!4040 (v!12320 (underlying!542 (cache!654 cacheDown!333))))))

(declare-fun tp!27919 () Bool)

(declare-fun tp!27932 () Bool)

(declare-fun array_inv!189 (array!570) Bool)

(assert (=> b!40218 (= e!20690 (and tp!27930 tp!27919 tp!27932 (array_inv!187 (_keys!462 (v!12315 (underlying!537 (v!12316 (underlying!538 (cache!652 cacheFurthestNullable!45))))))) (array_inv!189 (_values!449 (v!12315 (underlying!537 (v!12316 (underlying!538 (cache!652 cacheFurthestNullable!45))))))) e!20696))))

(declare-fun mapNonEmpty!608 () Bool)

(declare-fun tp!27928 () Bool)

(declare-fun tp!27920 () Bool)

(assert (=> mapNonEmpty!608 (= mapRes!609 (and tp!27928 tp!27920))))

(declare-fun mapRest!608 () (Array (_ BitVec 32) List!551))

(declare-fun mapValue!607 () List!551)

(declare-fun mapKey!607 () (_ BitVec 32))

(assert (=> mapNonEmpty!608 (= (arr!295 (_values!451 (v!12319 (underlying!541 (v!12320 (underlying!542 (cache!654 cacheDown!333))))))) (store mapRest!608 mapKey!607 mapValue!607))))

(declare-fun tp!27913 () Bool)

(declare-fun tp!27915 () Bool)

(declare-fun array_inv!190 (array!576) Bool)

(assert (=> b!40219 (= e!20714 (and tp!27921 tp!27915 tp!27913 (array_inv!187 (_keys!464 (v!12319 (underlying!541 (v!12320 (underlying!542 (cache!654 cacheDown!333))))))) (array_inv!190 (_values!451 (v!12319 (underlying!541 (v!12320 (underlying!542 (cache!654 cacheDown!333))))))) e!20712))))

(declare-fun b!40220 () Bool)

(declare-fun tp!27926 () Bool)

(assert (=> b!40220 (= e!20700 (and tp!27926 mapRes!608))))

(declare-fun condMapEmpty!609 () Bool)

(declare-fun mapDefault!608 () List!549)

(assert (=> b!40220 (= condMapEmpty!609 (= (arr!294 (_values!450 (v!12317 (underlying!539 (v!12318 (underlying!540 (cache!653 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!549)) mapDefault!608)))))

(declare-fun mapIsEmpty!609 () Bool)

(assert (=> mapIsEmpty!609 mapRes!609))

(declare-fun b!40221 () Bool)

(declare-fun res!29083 () Bool)

(assert (=> b!40221 (=> (not res!29083) (not e!20711))))

(assert (=> b!40221 (= res!29083 (= (totalInput!1508 cacheFurthestNullable!45) input!525))))

(declare-fun res!29086 () Bool)

(assert (=> b!40222 (=> (not res!29086) (not e!20703))))

(declare-fun forall!55 (List!550 Int) Bool)

(assert (=> b!40222 (= res!29086 (forall!55 lt!4038 lambda!655))))

(declare-fun b!40223 () Bool)

(declare-fun e!20720 () Bool)

(assert (=> b!40223 (= e!20693 e!20720)))

(declare-fun b!40224 () Bool)

(assert (=> b!40224 (= e!20692 e!20717)))

(declare-fun res!29082 () Bool)

(assert (=> b!40224 (=> (not res!29082) (not e!20717))))

(declare-fun lt!4031 () List!545)

(assert (=> b!40224 (= res!29082 (= lt!4031 lt!4032))))

(assert (=> b!40224 (= lt!4032 (list!136 (_2!416 lt!4045)))))

(assert (=> b!40224 (= lt!4031 (list!136 (_2!416 (_1!419 lt!4034))))))

(assert (=> b!40225 (= e!20694 (and e!20697 tp!27925))))

(assert (=> b!40226 (= e!20720 (and e!20706 tp!27934))))

(declare-fun mapNonEmpty!609 () Bool)

(declare-fun tp!27931 () Bool)

(declare-fun tp!27923 () Bool)

(assert (=> mapNonEmpty!609 (= mapRes!607 (and tp!27931 tp!27923))))

(declare-fun mapKey!609 () (_ BitVec 32))

(declare-fun mapValue!608 () List!548)

(declare-fun mapRest!609 () (Array (_ BitVec 32) List!548))

(assert (=> mapNonEmpty!609 (= (arr!292 (_values!449 (v!12315 (underlying!537 (v!12316 (underlying!538 (cache!652 cacheFurthestNullable!45))))))) (store mapRest!609 mapKey!609 mapValue!608))))

(assert (= (and start!2208 res!29078) b!40215))

(assert (= (and b!40215 res!29087) b!40206))

(assert (= (and b!40206 res!29085) b!40207))

(assert (= (and b!40207 res!29074) b!40193))

(assert (= (and b!40193 res!29081) b!40221))

(assert (= (and b!40221 res!29083) b!40192))

(assert (= (and b!40192 res!29084) b!40224))

(assert (= (and b!40224 res!29082) b!40214))

(assert (= (and b!40214 res!29076) b!40210))

(assert (= (and b!40210 res!29075) b!40212))

(assert (= (and b!40212 res!29077) b!40209))

(assert (= (and b!40209 res!29079) b!40222))

(assert (= (and b!40222 res!29086) b!40191))

(assert (= (and b!40191 res!29080) b!40202))

(assert (= (and b!40200 condMapEmpty!607) mapIsEmpty!609))

(assert (= (and b!40200 (not condMapEmpty!607)) mapNonEmpty!608))

(assert (= b!40219 b!40200))

(assert (= b!40216 b!40219))

(assert (= b!40211 b!40216))

(assert (= (and b!40217 ((_ is LongMap!173) (v!12320 (underlying!542 (cache!654 cacheDown!333))))) b!40211))

(assert (= b!40226 b!40217))

(assert (= (and b!40223 ((_ is HashMap!169) (cache!654 cacheDown!333))) b!40226))

(assert (= start!2208 b!40223))

(assert (= start!2208 b!40213))

(assert (= (and b!40197 condMapEmpty!608) mapIsEmpty!607))

(assert (= (and b!40197 (not condMapEmpty!608)) mapNonEmpty!609))

(assert (= b!40218 b!40197))

(assert (= b!40203 b!40218))

(assert (= b!40198 b!40203))

(assert (= (and b!40190 ((_ is LongMap!171) (v!12316 (underlying!538 (cache!652 cacheFurthestNullable!45))))) b!40198))

(assert (= b!40225 b!40190))

(assert (= (and b!40199 ((_ is HashMap!167) (cache!652 cacheFurthestNullable!45))) b!40225))

(assert (= b!40199 b!40196))

(assert (= start!2208 b!40199))

(assert (= (and b!40220 condMapEmpty!609) mapIsEmpty!608))

(assert (= (and b!40220 (not condMapEmpty!609)) mapNonEmpty!607))

(assert (= b!40208 b!40220))

(assert (= b!40194 b!40208))

(assert (= b!40201 b!40194))

(assert (= (and b!40205 ((_ is LongMap!172) (v!12318 (underlying!540 (cache!653 cacheUp!320))))) b!40201))

(assert (= b!40204 b!40205))

(assert (= (and b!40195 ((_ is HashMap!168) (cache!653 cacheUp!320))) b!40204))

(assert (= start!2208 b!40195))

(declare-fun m!13702 () Bool)

(assert (=> b!40218 m!13702))

(declare-fun m!13704 () Bool)

(assert (=> b!40218 m!13704))

(declare-fun m!13706 () Bool)

(assert (=> b!40192 m!13706))

(declare-fun m!13708 () Bool)

(assert (=> b!40192 m!13708))

(declare-fun m!13710 () Bool)

(assert (=> b!40192 m!13710))

(declare-fun m!13712 () Bool)

(assert (=> b!40192 m!13712))

(declare-fun m!13714 () Bool)

(assert (=> b!40192 m!13714))

(declare-fun m!13716 () Bool)

(assert (=> b!40192 m!13716))

(declare-fun m!13718 () Bool)

(assert (=> b!40196 m!13718))

(declare-fun m!13720 () Bool)

(assert (=> b!40202 m!13720))

(declare-fun m!13722 () Bool)

(assert (=> b!40214 m!13722))

(declare-fun m!13724 () Bool)

(assert (=> b!40214 m!13724))

(declare-fun m!13726 () Bool)

(assert (=> b!40214 m!13726))

(declare-fun m!13728 () Bool)

(assert (=> b!40219 m!13728))

(declare-fun m!13730 () Bool)

(assert (=> b!40219 m!13730))

(declare-fun m!13732 () Bool)

(assert (=> mapNonEmpty!609 m!13732))

(declare-fun m!13734 () Bool)

(assert (=> b!40213 m!13734))

(declare-fun m!13736 () Bool)

(assert (=> b!40222 m!13736))

(declare-fun m!13738 () Bool)

(assert (=> b!40210 m!13738))

(declare-fun m!13740 () Bool)

(assert (=> b!40210 m!13740))

(declare-fun m!13742 () Bool)

(assert (=> b!40209 m!13742))

(declare-fun m!13744 () Bool)

(assert (=> mapNonEmpty!607 m!13744))

(declare-fun m!13746 () Bool)

(assert (=> b!40215 m!13746))

(declare-fun m!13748 () Bool)

(assert (=> b!40224 m!13748))

(declare-fun m!13750 () Bool)

(assert (=> b!40224 m!13750))

(declare-fun m!13752 () Bool)

(assert (=> start!2208 m!13752))

(declare-fun m!13754 () Bool)

(assert (=> start!2208 m!13754))

(declare-fun m!13756 () Bool)

(assert (=> start!2208 m!13756))

(declare-fun m!13758 () Bool)

(assert (=> start!2208 m!13758))

(declare-fun m!13760 () Bool)

(assert (=> start!2208 m!13760))

(declare-fun m!13762 () Bool)

(assert (=> start!2208 m!13762))

(declare-fun m!13764 () Bool)

(assert (=> b!40193 m!13764))

(declare-fun m!13766 () Bool)

(assert (=> b!40212 m!13766))

(declare-fun m!13768 () Bool)

(assert (=> b!40191 m!13768))

(declare-fun m!13770 () Bool)

(assert (=> b!40199 m!13770))

(declare-fun m!13772 () Bool)

(assert (=> b!40206 m!13772))

(declare-fun m!13774 () Bool)

(assert (=> mapNonEmpty!608 m!13774))

(declare-fun m!13776 () Bool)

(assert (=> b!40207 m!13776))

(declare-fun m!13778 () Bool)

(assert (=> b!40208 m!13778))

(declare-fun m!13780 () Bool)

(assert (=> b!40208 m!13780))

(check-sat (not b!40220) (not b_next!845) (not b_next!841) (not b_next!843) b_and!871 (not b!40199) (not b!40192) (not b!40213) (not mapNonEmpty!609) (not mapNonEmpty!608) (not mapNonEmpty!607) b_and!873 (not b!40235) b_and!877 b_and!879 (not b!40210) (not b!40193) (not b!40191) b_and!875 (not b!40206) (not b!40196) (not b!40214) (not b!40219) (not b_next!837) (not b!40215) (not b!40212) (not b!40200) (not b!40207) (not b!40202) (not b!40224) (not b_next!839) (not b!40197) (not b!40222) (not b!40209) b_and!881 (not b!40218) (not start!2208) (not b!40208) (not b_next!847))
(check-sat b_and!873 (not b_next!845) b_and!875 (not b_next!837) (not b_next!841) (not b_next!843) b_and!871 (not b_next!839) b_and!881 (not b_next!847) b_and!877 b_and!879)
