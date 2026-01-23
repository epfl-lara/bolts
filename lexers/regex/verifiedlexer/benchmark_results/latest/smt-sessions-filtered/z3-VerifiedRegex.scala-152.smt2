; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1794 () Bool)

(assert start!1794)

(declare-fun b!34528 () Bool)

(declare-fun b_free!385 () Bool)

(declare-fun b_next!385 () Bool)

(assert (=> b!34528 (= b_free!385 (not b_next!385))))

(declare-fun tp!23778 () Bool)

(declare-fun b_and!419 () Bool)

(assert (=> b!34528 (= tp!23778 b_and!419)))

(declare-fun b!34524 () Bool)

(declare-fun b_free!387 () Bool)

(declare-fun b_next!387 () Bool)

(assert (=> b!34524 (= b_free!387 (not b_next!387))))

(declare-fun tp!23774 () Bool)

(declare-fun b_and!421 () Bool)

(assert (=> b!34524 (= tp!23774 b_and!421)))

(declare-fun b!34525 () Bool)

(declare-fun b_free!389 () Bool)

(declare-fun b_next!389 () Bool)

(assert (=> b!34525 (= b_free!389 (not b_next!389))))

(declare-fun tp!23781 () Bool)

(declare-fun b_and!423 () Bool)

(assert (=> b!34525 (= tp!23781 b_and!423)))

(declare-fun b!34515 () Bool)

(declare-fun b_free!391 () Bool)

(declare-fun b_next!391 () Bool)

(assert (=> b!34515 (= b_free!391 (not b_next!391))))

(declare-fun tp!23777 () Bool)

(declare-fun b_and!425 () Bool)

(assert (=> b!34515 (= tp!23777 b_and!425)))

(declare-fun b!34514 () Bool)

(declare-fun e!16058 () Bool)

(declare-fun e!16047 () Bool)

(assert (=> b!34514 (= e!16058 e!16047)))

(declare-datatypes ((Hashable!52 0))(
  ( (HashableExt!51 (__x!574 Int)) )
))
(declare-datatypes ((Regex!149 0))(
  ( (ElementMatch!149 (c!15423 (_ BitVec 16))) (Concat!259 (regOne!810 Regex!149) (regTwo!810 Regex!149)) (EmptyExpr!149) (Star!149 (reg!478 Regex!149)) (EmptyLang!149) (Union!149 (regOne!811 Regex!149) (regTwo!811 Regex!149)) )
))
(declare-datatypes ((List!302 0))(
  ( (Nil!300) (Cons!300 (h!5696 Regex!149) (t!14958 List!302)) )
))
(declare-datatypes ((Context!62 0))(
  ( (Context!63 (exprs!531 List!302)) )
))
(declare-datatypes ((tuple2!202 0))(
  ( (tuple2!203 (_1!131 Context!62) (_2!131 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!204 0))(
  ( (tuple2!205 (_1!132 tuple2!202) (_2!132 (InoxSet Context!62))) )
))
(declare-datatypes ((List!303 0))(
  ( (Nil!301) (Cons!301 (h!5697 tuple2!204) (t!14959 List!303)) )
))
(declare-datatypes ((array!199 0))(
  ( (array!200 (arr!119 (Array (_ BitVec 32) List!303)) (size!362 (_ BitVec 32))) )
))
(declare-datatypes ((array!201 0))(
  ( (array!202 (arr!120 (Array (_ BitVec 32) (_ BitVec 64))) (size!363 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!112 0))(
  ( (LongMapFixedSize!113 (defaultEntry!394 Int) (mask!732 (_ BitVec 32)) (extraKeys!302 (_ BitVec 32)) (zeroValue!312 List!303) (minValue!312 List!303) (_size!244 (_ BitVec 32)) (_keys!347 array!201) (_values!334 array!199) (_vacant!116 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!213 0))(
  ( (Cell!214 (v!12071 LongMapFixedSize!112)) )
))
(declare-datatypes ((MutLongMap!56 0))(
  ( (LongMap!56 (underlying!307 Cell!213)) (MutLongMapExt!55 (__x!575 Int)) )
))
(declare-datatypes ((Cell!215 0))(
  ( (Cell!216 (v!12072 MutLongMap!56)) )
))
(declare-datatypes ((MutableMap!52 0))(
  ( (MutableMapExt!51 (__x!576 Int)) (HashMap!52 (underlying!308 Cell!215) (hashF!1916 Hashable!52) (_size!245 (_ BitVec 32)) (defaultValue!200 Int)) )
))
(declare-datatypes ((CacheUp!48 0))(
  ( (CacheUp!49 (cache!531 MutableMap!52)) )
))
(declare-fun cacheUp!368 () CacheUp!48)

(declare-fun e!16048 () Bool)

(declare-fun tp!23785 () Bool)

(declare-fun e!16051 () Bool)

(declare-fun tp!23773 () Bool)

(declare-fun array_inv!67 (array!201) Bool)

(declare-fun array_inv!68 (array!199) Bool)

(assert (=> b!34515 (= e!16048 (and tp!23777 tp!23773 tp!23785 (array_inv!67 (_keys!347 (v!12071 (underlying!307 (v!12072 (underlying!308 (cache!531 cacheUp!368))))))) (array_inv!68 (_values!334 (v!12071 (underlying!307 (v!12072 (underlying!308 (cache!531 cacheUp!368))))))) e!16051))))

(declare-fun b!34516 () Bool)

(declare-fun e!16057 () Bool)

(assert (=> b!34516 (= e!16057 e!16048)))

(declare-fun b!34517 () Bool)

(declare-fun res!27657 () Bool)

(declare-fun e!16043 () Bool)

(assert (=> b!34517 (=> (not res!27657) (not e!16043))))

(declare-datatypes ((tuple3!60 0))(
  ( (tuple3!61 (_1!133 Regex!149) (_2!133 Context!62) (_3!30 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!206 0))(
  ( (tuple2!207 (_1!134 tuple3!60) (_2!134 (InoxSet Context!62))) )
))
(declare-datatypes ((List!304 0))(
  ( (Nil!302) (Cons!302 (h!5698 tuple2!206) (t!14960 List!304)) )
))
(declare-datatypes ((array!203 0))(
  ( (array!204 (arr!121 (Array (_ BitVec 32) List!304)) (size!364 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!114 0))(
  ( (LongMapFixedSize!115 (defaultEntry!395 Int) (mask!733 (_ BitVec 32)) (extraKeys!303 (_ BitVec 32)) (zeroValue!313 List!304) (minValue!313 List!304) (_size!246 (_ BitVec 32)) (_keys!348 array!201) (_values!335 array!203) (_vacant!117 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!217 0))(
  ( (Cell!218 (v!12073 LongMapFixedSize!114)) )
))
(declare-datatypes ((MutLongMap!57 0))(
  ( (LongMap!57 (underlying!309 Cell!217)) (MutLongMapExt!56 (__x!577 Int)) )
))
(declare-datatypes ((Cell!219 0))(
  ( (Cell!220 (v!12074 MutLongMap!57)) )
))
(declare-datatypes ((Hashable!53 0))(
  ( (HashableExt!52 (__x!578 Int)) )
))
(declare-datatypes ((MutableMap!53 0))(
  ( (MutableMapExt!52 (__x!579 Int)) (HashMap!53 (underlying!310 Cell!219) (hashF!1917 Hashable!53) (_size!247 (_ BitVec 32)) (defaultValue!201 Int)) )
))
(declare-datatypes ((CacheDown!52 0))(
  ( (CacheDown!53 (cache!532 MutableMap!53)) )
))
(declare-fun cacheDown!381 () CacheDown!52)

(declare-fun valid!71 (CacheDown!52) Bool)

(assert (=> b!34517 (= res!27657 (valid!71 cacheDown!381))))

(declare-fun b!34518 () Bool)

(declare-fun e!16054 () Bool)

(declare-fun e!16052 () Bool)

(assert (=> b!34518 (= e!16054 e!16052)))

(declare-fun mapNonEmpty!220 () Bool)

(declare-fun mapRes!220 () Bool)

(declare-fun tp!23780 () Bool)

(declare-fun tp!23782 () Bool)

(assert (=> mapNonEmpty!220 (= mapRes!220 (and tp!23780 tp!23782))))

(declare-fun mapKey!220 () (_ BitVec 32))

(declare-fun mapValue!221 () List!304)

(declare-fun mapRest!220 () (Array (_ BitVec 32) List!304))

(assert (=> mapNonEmpty!220 (= (arr!121 (_values!335 (v!12073 (underlying!309 (v!12074 (underlying!310 (cache!532 cacheDown!381))))))) (store mapRest!220 mapKey!220 mapValue!221))))

(declare-fun b!34519 () Bool)

(declare-fun res!27658 () Bool)

(declare-fun e!16049 () Bool)

(assert (=> b!34519 (=> (not res!27658) (not e!16049))))

(declare-datatypes ((tuple3!62 0))(
  ( (tuple3!63 (_1!135 (InoxSet Context!62)) (_2!135 Int) (_3!31 Int)) )
))
(declare-datatypes ((tuple2!208 0))(
  ( (tuple2!209 (_1!136 tuple3!62) (_2!136 Int)) )
))
(declare-datatypes ((List!305 0))(
  ( (Nil!303) (Cons!303 (h!5699 tuple2!208) (t!14961 List!305)) )
))
(declare-datatypes ((List!306 0))(
  ( (Nil!304) (Cons!304 (h!5700 (_ BitVec 16)) (t!14962 List!306)) )
))
(declare-datatypes ((IArray!91 0))(
  ( (IArray!92 (innerList!103 List!306)) )
))
(declare-datatypes ((Conc!45 0))(
  ( (Node!45 (left!395 Conc!45) (right!725 Conc!45) (csize!320 Int) (cheight!256 Int)) (Leaf!198 (xs!2624 IArray!91) (csize!321 Int)) (Empty!45) )
))
(declare-datatypes ((BalanceConc!90 0))(
  ( (BalanceConc!91 (c!15424 Conc!45)) )
))
(declare-datatypes ((array!205 0))(
  ( (array!206 (arr!122 (Array (_ BitVec 32) List!305)) (size!365 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!116 0))(
  ( (LongMapFixedSize!117 (defaultEntry!396 Int) (mask!734 (_ BitVec 32)) (extraKeys!304 (_ BitVec 32)) (zeroValue!314 List!305) (minValue!314 List!305) (_size!248 (_ BitVec 32)) (_keys!349 array!201) (_values!336 array!205) (_vacant!118 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!54 0))(
  ( (HashableExt!53 (__x!580 Int)) )
))
(declare-datatypes ((Cell!221 0))(
  ( (Cell!222 (v!12075 LongMapFixedSize!116)) )
))
(declare-datatypes ((MutLongMap!58 0))(
  ( (LongMap!58 (underlying!311 Cell!221)) (MutLongMapExt!57 (__x!581 Int)) )
))
(declare-datatypes ((Cell!223 0))(
  ( (Cell!224 (v!12076 MutLongMap!58)) )
))
(declare-datatypes ((MutableMap!54 0))(
  ( (MutableMapExt!53 (__x!582 Int)) (HashMap!54 (underlying!312 Cell!223) (hashF!1918 Hashable!54) (_size!249 (_ BitVec 32)) (defaultValue!202 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!4 0))(
  ( (CacheFurthestNullable!5 (cache!533 MutableMap!54) (totalInput!1475 BalanceConc!90)) )
))
(declare-fun lt!2631 () CacheFurthestNullable!4)

(declare-fun lt!2634 () BalanceConc!90)

(assert (=> b!34519 (= res!27658 (= (totalInput!1475 lt!2631) lt!2634))))

(declare-fun b!34520 () Bool)

(assert (=> b!34520 (= e!16049 false)))

(declare-datatypes ((TokenValue!110 0))(
  ( (FloatLiteralValue!220 (text!1215 List!306)) (TokenValueExt!109 (__x!583 Int)) (Broken!550 (value!6153 List!306)) (Object!111) (End!110) (Def!110) (Underscore!110) (Match!110) (Else!110) (Error!110) (Case!110) (If!110) (Extends!110) (Abstract!110) (Class!110) (Val!110) (DelimiterValue!220 (del!170 List!306)) (KeywordValue!116 (value!6154 List!306)) (CommentValue!220 (value!6155 List!306)) (WhitespaceValue!220 (value!6156 List!306)) (IndentationValue!110 (value!6157 List!306)) (String!761) (Int32!110) (Broken!551 (value!6158 List!306)) (Boolean!111) (Unit!179) (OperatorValue!113 (op!170 List!306)) (IdentifierValue!220 (value!6159 List!306)) (IdentifierValue!221 (value!6160 List!306)) (WhitespaceValue!221 (value!6161 List!306)) (True!220) (False!220) (Broken!552 (value!6162 List!306)) (Broken!553 (value!6163 List!306)) (True!221) (RightBrace!110) (RightBracket!110) (Colon!110) (Null!110) (Comma!110) (LeftBracket!110) (False!221) (LeftBrace!110) (ImaginaryLiteralValue!110 (text!1216 List!306)) (StringLiteralValue!330 (value!6164 List!306)) (EOFValue!110 (value!6165 List!306)) (IdentValue!110 (value!6166 List!306)) (DelimiterValue!221 (value!6167 List!306)) (DedentValue!110 (value!6168 List!306)) (NewLineValue!110 (value!6169 List!306)) (IntegerValue!330 (value!6170 (_ BitVec 32)) (text!1217 List!306)) (IntegerValue!331 (value!6171 Int) (text!1218 List!306)) (Times!110) (Or!110) (Equal!110) (Minus!110) (Broken!554 (value!6172 List!306)) (And!110) (Div!110) (LessEqual!110) (Mod!110) (Concat!260) (Not!110) (Plus!110) (SpaceValue!110 (value!6173 List!306)) (IntegerValue!332 (value!6174 Int) (text!1219 List!306)) (StringLiteralValue!331 (text!1220 List!306)) (FloatLiteralValue!221 (text!1221 List!306)) (BytesLiteralValue!110 (value!6175 List!306)) (CommentValue!221 (value!6176 List!306)) (StringLiteralValue!332 (value!6177 List!306)) (ErrorTokenValue!110 (msg!171 List!306)) )
))
(declare-datatypes ((String!762 0))(
  ( (String!763 (value!6178 String)) )
))
(declare-datatypes ((TokenValueInjection!44 0))(
  ( (TokenValueInjection!45 (toValue!599 Int) (toChars!458 Int)) )
))
(declare-datatypes ((Rule!40 0))(
  ( (Rule!41 (regex!120 Regex!149) (tag!298 String!762) (isSeparator!120 Bool) (transformation!120 TokenValueInjection!44)) )
))
(declare-datatypes ((List!307 0))(
  ( (Nil!305) (Cons!305 (h!5701 Rule!40) (t!14963 List!307)) )
))
(declare-fun lt!2633 () List!307)

(declare-datatypes ((JsonLexer!4 0))(
  ( (JsonLexer!5) )
))
(declare-fun rules!109 (JsonLexer!4) List!307)

(assert (=> b!34520 (= lt!2633 (rules!109 JsonLexer!5))))

(declare-fun b!34521 () Bool)

(declare-fun e!16060 () Bool)

(declare-fun e!16044 () Bool)

(assert (=> b!34521 (= e!16060 e!16044)))

(declare-fun b!34522 () Bool)

(declare-fun e!16050 () Bool)

(assert (=> b!34522 (= e!16052 e!16050)))

(declare-fun mapIsEmpty!220 () Bool)

(declare-fun mapRes!221 () Bool)

(assert (=> mapIsEmpty!220 mapRes!221))

(declare-fun mapNonEmpty!221 () Bool)

(declare-fun tp!23783 () Bool)

(declare-fun tp!23779 () Bool)

(assert (=> mapNonEmpty!221 (= mapRes!221 (and tp!23783 tp!23779))))

(declare-fun mapValue!220 () List!303)

(declare-fun mapKey!221 () (_ BitVec 32))

(declare-fun mapRest!221 () (Array (_ BitVec 32) List!303))

(assert (=> mapNonEmpty!221 (= (arr!119 (_values!334 (v!12071 (underlying!307 (v!12072 (underlying!308 (cache!531 cacheUp!368))))))) (store mapRest!221 mapKey!221 mapValue!220))))

(declare-fun b!34523 () Bool)

(assert (=> b!34523 (= e!16043 e!16049)))

(declare-fun res!27659 () Bool)

(assert (=> b!34523 (=> (not res!27659) (not e!16049))))

(declare-fun valid!72 (CacheFurthestNullable!4) Bool)

(assert (=> b!34523 (= res!27659 (valid!72 lt!2631))))

(declare-fun hashF!328 () Hashable!54)

(declare-fun emptyFurthestNullableCache!1 (Hashable!54 BalanceConc!90 (_ BitVec 32)) CacheFurthestNullable!4)

(assert (=> b!34523 (= lt!2631 (emptyFurthestNullableCache!1 hashF!328 lt!2634 #b00000000000000000000000000010000))))

(declare-fun path!6 () String!762)

(declare-fun openFile!0 (String!762) BalanceConc!90)

(assert (=> b!34523 (= lt!2634 (openFile!0 path!6))))

(declare-fun e!16045 () Bool)

(assert (=> b!34524 (= e!16047 (and e!16045 tp!23774))))

(declare-fun e!16053 () Bool)

(assert (=> b!34525 (= e!16044 (and e!16053 tp!23781))))

(declare-fun b!34526 () Bool)

(declare-fun tp!23786 () Bool)

(assert (=> b!34526 (= e!16051 (and tp!23786 mapRes!221))))

(declare-fun condMapEmpty!220 () Bool)

(declare-fun mapDefault!221 () List!303)

(assert (=> b!34526 (= condMapEmpty!220 (= (arr!119 (_values!334 (v!12071 (underlying!307 (v!12072 (underlying!308 (cache!531 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!303)) mapDefault!221)))))

(declare-fun mapIsEmpty!221 () Bool)

(assert (=> mapIsEmpty!221 mapRes!220))

(declare-fun b!34527 () Bool)

(declare-fun e!16046 () Bool)

(declare-fun lt!2632 () MutLongMap!56)

(get-info :version)

(assert (=> b!34527 (= e!16053 (and e!16046 ((_ is LongMap!56) lt!2632)))))

(assert (=> b!34527 (= lt!2632 (v!12072 (underlying!308 (cache!531 cacheUp!368))))))

(declare-fun res!27656 () Bool)

(assert (=> start!1794 (=> (not res!27656) (not e!16043))))

(declare-fun valid!73 (CacheUp!48) Bool)

(assert (=> start!1794 (= res!27656 (valid!73 cacheUp!368))))

(assert (=> start!1794 e!16043))

(declare-fun inv!635 (CacheUp!48) Bool)

(assert (=> start!1794 (and (inv!635 cacheUp!368) e!16060)))

(declare-fun inv!636 (CacheDown!52) Bool)

(assert (=> start!1794 (and (inv!636 cacheDown!381) e!16058)))

(declare-fun inv!634 (String!762) Bool)

(assert (=> start!1794 (inv!634 path!6)))

(assert (=> start!1794 true))

(declare-fun tp!23776 () Bool)

(declare-fun e!16059 () Bool)

(declare-fun tp!23775 () Bool)

(declare-fun array_inv!69 (array!203) Bool)

(assert (=> b!34528 (= e!16050 (and tp!23778 tp!23775 tp!23776 (array_inv!67 (_keys!348 (v!12073 (underlying!309 (v!12074 (underlying!310 (cache!532 cacheDown!381))))))) (array_inv!69 (_values!335 (v!12073 (underlying!309 (v!12074 (underlying!310 (cache!532 cacheDown!381))))))) e!16059))))

(declare-fun b!34529 () Bool)

(assert (=> b!34529 (= e!16046 e!16057)))

(declare-fun b!34530 () Bool)

(declare-fun tp!23784 () Bool)

(assert (=> b!34530 (= e!16059 (and tp!23784 mapRes!220))))

(declare-fun condMapEmpty!221 () Bool)

(declare-fun mapDefault!220 () List!304)

(assert (=> b!34530 (= condMapEmpty!221 (= (arr!121 (_values!335 (v!12073 (underlying!309 (v!12074 (underlying!310 (cache!532 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!304)) mapDefault!220)))))

(declare-fun b!34531 () Bool)

(declare-fun lt!2630 () MutLongMap!57)

(assert (=> b!34531 (= e!16045 (and e!16054 ((_ is LongMap!57) lt!2630)))))

(assert (=> b!34531 (= lt!2630 (v!12074 (underlying!310 (cache!532 cacheDown!381))))))

(assert (= (and start!1794 res!27656) b!34517))

(assert (= (and b!34517 res!27657) b!34523))

(assert (= (and b!34523 res!27659) b!34519))

(assert (= (and b!34519 res!27658) b!34520))

(assert (= (and b!34526 condMapEmpty!220) mapIsEmpty!220))

(assert (= (and b!34526 (not condMapEmpty!220)) mapNonEmpty!221))

(assert (= b!34515 b!34526))

(assert (= b!34516 b!34515))

(assert (= b!34529 b!34516))

(assert (= (and b!34527 ((_ is LongMap!56) (v!12072 (underlying!308 (cache!531 cacheUp!368))))) b!34529))

(assert (= b!34525 b!34527))

(assert (= (and b!34521 ((_ is HashMap!52) (cache!531 cacheUp!368))) b!34525))

(assert (= start!1794 b!34521))

(assert (= (and b!34530 condMapEmpty!221) mapIsEmpty!221))

(assert (= (and b!34530 (not condMapEmpty!221)) mapNonEmpty!220))

(assert (= b!34528 b!34530))

(assert (= b!34522 b!34528))

(assert (= b!34518 b!34522))

(assert (= (and b!34531 ((_ is LongMap!57) (v!12074 (underlying!310 (cache!532 cacheDown!381))))) b!34518))

(assert (= b!34524 b!34531))

(assert (= (and b!34514 ((_ is HashMap!53) (cache!532 cacheDown!381))) b!34524))

(assert (= start!1794 b!34514))

(declare-fun m!10519 () Bool)

(assert (=> mapNonEmpty!221 m!10519))

(declare-fun m!10521 () Bool)

(assert (=> b!34520 m!10521))

(declare-fun m!10523 () Bool)

(assert (=> b!34528 m!10523))

(declare-fun m!10525 () Bool)

(assert (=> b!34528 m!10525))

(declare-fun m!10527 () Bool)

(assert (=> b!34523 m!10527))

(declare-fun m!10529 () Bool)

(assert (=> b!34523 m!10529))

(declare-fun m!10531 () Bool)

(assert (=> b!34523 m!10531))

(declare-fun m!10533 () Bool)

(assert (=> b!34517 m!10533))

(declare-fun m!10535 () Bool)

(assert (=> b!34515 m!10535))

(declare-fun m!10537 () Bool)

(assert (=> b!34515 m!10537))

(declare-fun m!10539 () Bool)

(assert (=> mapNonEmpty!220 m!10539))

(declare-fun m!10541 () Bool)

(assert (=> start!1794 m!10541))

(declare-fun m!10543 () Bool)

(assert (=> start!1794 m!10543))

(declare-fun m!10545 () Bool)

(assert (=> start!1794 m!10545))

(declare-fun m!10547 () Bool)

(assert (=> start!1794 m!10547))

(check-sat (not b_next!389) b_and!419 (not mapNonEmpty!221) (not b!34520) (not b_next!391) (not b!34528) b_and!421 (not b!34523) (not b_next!387) (not start!1794) (not b!34517) (not b!34530) (not b!34526) b_and!425 (not b_next!385) b_and!423 (not mapNonEmpty!220) (not b!34515))
(check-sat (not b_next!389) b_and!419 (not b_next!391) b_and!421 (not b_next!387) b_and!425 (not b_next!385) b_and!423)
