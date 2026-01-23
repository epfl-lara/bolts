; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2930 () Bool)

(assert start!2930)

(declare-fun b!45190 () Bool)

(declare-fun b_free!1149 () Bool)

(declare-fun b_next!1149 () Bool)

(assert (=> b!45190 (= b_free!1149 (not b_next!1149))))

(declare-fun tp!30862 () Bool)

(declare-fun b_and!1183 () Bool)

(assert (=> b!45190 (= tp!30862 b_and!1183)))

(declare-fun b!45174 () Bool)

(declare-fun b_free!1151 () Bool)

(declare-fun b_next!1151 () Bool)

(assert (=> b!45174 (= b_free!1151 (not b_next!1151))))

(declare-fun tp!30851 () Bool)

(declare-fun b_and!1185 () Bool)

(assert (=> b!45174 (= tp!30851 b_and!1185)))

(declare-fun b!45181 () Bool)

(declare-fun b_free!1153 () Bool)

(declare-fun b_next!1153 () Bool)

(assert (=> b!45181 (= b_free!1153 (not b_next!1153))))

(declare-fun tp!30849 () Bool)

(declare-fun b_and!1187 () Bool)

(assert (=> b!45181 (= tp!30849 b_and!1187)))

(declare-fun b!45158 () Bool)

(declare-fun b_free!1155 () Bool)

(declare-fun b_next!1155 () Bool)

(assert (=> b!45158 (= b_free!1155 (not b_next!1155))))

(declare-fun tp!30861 () Bool)

(declare-fun b_and!1189 () Bool)

(assert (=> b!45158 (= tp!30861 b_and!1189)))

(declare-fun b!45182 () Bool)

(declare-fun b_free!1157 () Bool)

(declare-fun b_next!1157 () Bool)

(assert (=> b!45182 (= b_free!1157 (not b_next!1157))))

(declare-fun tp!30855 () Bool)

(declare-fun b_and!1191 () Bool)

(assert (=> b!45182 (= tp!30855 b_and!1191)))

(declare-fun b!45157 () Bool)

(declare-fun b_free!1159 () Bool)

(declare-fun b_next!1159 () Bool)

(assert (=> b!45157 (= b_free!1159 (not b_next!1159))))

(declare-fun tp!30848 () Bool)

(declare-fun b_and!1193 () Bool)

(assert (=> b!45157 (= tp!30848 b_and!1193)))

(declare-fun b!45205 () Bool)

(declare-fun e!25367 () Bool)

(assert (=> b!45205 (= e!25367 true)))

(declare-fun b!45204 () Bool)

(declare-fun e!25366 () Bool)

(assert (=> b!45204 (= e!25366 e!25367)))

(declare-fun b!45203 () Bool)

(declare-fun e!25365 () Bool)

(assert (=> b!45203 (= e!25365 e!25366)))

(declare-fun b!45179 () Bool)

(assert (=> b!45179 e!25365))

(assert (= b!45204 b!45205))

(assert (= b!45203 b!45204))

(declare-datatypes ((List!728 0))(
  ( (Nil!726) (Cons!726 (h!6122 (_ BitVec 16)) (t!16645 List!728)) )
))
(declare-datatypes ((TokenValue!159 0))(
  ( (FloatLiteralValue!318 (text!1558 List!728)) (TokenValueExt!158 (__x!1232 Int)) (Broken!795 (value!7600 List!728)) (Object!160) (End!159) (Def!159) (Underscore!159) (Match!159) (Else!159) (Error!159) (Case!159) (If!159) (Extends!159) (Abstract!159) (Class!159) (Val!159) (DelimiterValue!318 (del!219 List!728)) (KeywordValue!165 (value!7601 List!728)) (CommentValue!318 (value!7602 List!728)) (WhitespaceValue!318 (value!7603 List!728)) (IndentationValue!159 (value!7604 List!728)) (String!1090) (Int32!159) (Broken!796 (value!7605 List!728)) (Boolean!160) (Unit!335) (OperatorValue!162 (op!219 List!728)) (IdentifierValue!318 (value!7606 List!728)) (IdentifierValue!319 (value!7607 List!728)) (WhitespaceValue!319 (value!7608 List!728)) (True!318) (False!318) (Broken!797 (value!7609 List!728)) (Broken!798 (value!7610 List!728)) (True!319) (RightBrace!159) (RightBracket!159) (Colon!159) (Null!159) (Comma!159) (LeftBracket!159) (False!319) (LeftBrace!159) (ImaginaryLiteralValue!159 (text!1559 List!728)) (StringLiteralValue!477 (value!7611 List!728)) (EOFValue!159 (value!7612 List!728)) (IdentValue!159 (value!7613 List!728)) (DelimiterValue!319 (value!7614 List!728)) (DedentValue!159 (value!7615 List!728)) (NewLineValue!159 (value!7616 List!728)) (IntegerValue!477 (value!7617 (_ BitVec 32)) (text!1560 List!728)) (IntegerValue!478 (value!7618 Int) (text!1561 List!728)) (Times!159) (Or!159) (Equal!159) (Minus!159) (Broken!799 (value!7619 List!728)) (And!159) (Div!159) (LessEqual!159) (Mod!159) (Concat!394) (Not!159) (Plus!159) (SpaceValue!159 (value!7620 List!728)) (IntegerValue!479 (value!7621 Int) (text!1562 List!728)) (StringLiteralValue!478 (text!1563 List!728)) (FloatLiteralValue!319 (text!1564 List!728)) (BytesLiteralValue!159 (value!7622 List!728)) (CommentValue!319 (value!7623 List!728)) (StringLiteralValue!479 (value!7624 List!728)) (ErrorTokenValue!159 (msg!220 List!728)) )
))
(declare-datatypes ((Regex!235 0))(
  ( (ElementMatch!235 (c!16100 (_ BitVec 16))) (Concat!395 (regOne!982 Regex!235) (regTwo!982 Regex!235)) (EmptyExpr!235) (Star!235 (reg!564 Regex!235)) (EmptyLang!235) (Union!235 (regOne!983 Regex!235) (regTwo!983 Regex!235)) )
))
(declare-datatypes ((String!1091 0))(
  ( (String!1092 (value!7625 String)) )
))
(declare-datatypes ((IArray!281 0))(
  ( (IArray!282 (innerList!198 List!728)) )
))
(declare-datatypes ((Conc!140 0))(
  ( (Node!140 (left!577 Conc!140) (right!907 Conc!140) (csize!510 Int) (cheight!351 Int)) (Leaf!336 (xs!2719 IArray!281) (csize!511 Int)) (Empty!140) )
))
(declare-datatypes ((BalanceConc!280 0))(
  ( (BalanceConc!281 (c!16101 Conc!140)) )
))
(declare-datatypes ((TokenValueInjection!142 0))(
  ( (TokenValueInjection!143 (toValue!648 Int) (toChars!507 Int)) )
))
(declare-datatypes ((Rule!138 0))(
  ( (Rule!139 (regex!169 Regex!235) (tag!347 String!1091) (isSeparator!169 Bool) (transformation!169 TokenValueInjection!142)) )
))
(declare-datatypes ((List!729 0))(
  ( (Nil!727) (Cons!727 (h!6123 Rule!138) (t!16646 List!729)) )
))
(declare-fun lt!5843 () List!729)

(get-info :version)

(assert (= (and b!45179 ((_ is Cons!727) lt!5843)) b!45203))

(declare-fun order!163 () Int)

(declare-fun order!165 () Int)

(declare-fun lambda!831 () Int)

(declare-fun dynLambda!103 (Int Int) Int)

(declare-fun dynLambda!104 (Int Int) Int)

(assert (=> b!45205 (< (dynLambda!103 order!163 (toValue!648 (transformation!169 (h!6123 lt!5843)))) (dynLambda!104 order!165 lambda!831))))

(declare-fun order!167 () Int)

(declare-fun dynLambda!105 (Int Int) Int)

(assert (=> b!45205 (< (dynLambda!105 order!167 (toChars!507 (transformation!169 (h!6123 lt!5843)))) (dynLambda!104 order!165 lambda!831))))

(declare-fun tp!30850 () Bool)

(declare-fun e!25337 () Bool)

(declare-datatypes ((List!730 0))(
  ( (Nil!728) (Cons!728 (h!6124 Regex!235) (t!16647 List!730)) )
))
(declare-datatypes ((Context!186 0))(
  ( (Context!187 (exprs!593 List!730)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!280 0))(
  ( (tuple3!281 (_1!618 (InoxSet Context!186)) (_2!618 Int) (_3!178 Int)) )
))
(declare-datatypes ((tuple2!880 0))(
  ( (tuple2!881 (_1!619 tuple3!280) (_2!619 Int)) )
))
(declare-datatypes ((List!731 0))(
  ( (Nil!729) (Cons!729 (h!6125 tuple2!880) (t!16648 List!731)) )
))
(declare-datatypes ((array!814 0))(
  ( (array!815 (arr!392 (Array (_ BitVec 32) (_ BitVec 64))) (size!715 (_ BitVec 32))) )
))
(declare-datatypes ((array!816 0))(
  ( (array!817 (arr!393 (Array (_ BitVec 32) List!731)) (size!716 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!490 0))(
  ( (LongMapFixedSize!491 (defaultEntry!583 Int) (mask!964 (_ BitVec 32)) (extraKeys!491 (_ BitVec 32)) (zeroValue!501 List!731) (minValue!501 List!731) (_size!622 (_ BitVec 32)) (_keys!536 array!814) (_values!523 array!816) (_vacant!305 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!241 0))(
  ( (HashableExt!240 (__x!1233 Int)) )
))
(declare-datatypes ((Cell!969 0))(
  ( (Cell!970 (v!12469 LongMapFixedSize!490)) )
))
(declare-datatypes ((MutLongMap!245 0))(
  ( (LongMap!245 (underlying!685 Cell!969)) (MutLongMapExt!244 (__x!1234 Int)) )
))
(declare-datatypes ((Cell!971 0))(
  ( (Cell!972 (v!12470 MutLongMap!245)) )
))
(declare-datatypes ((MutableMap!241 0))(
  ( (MutableMapExt!240 (__x!1235 Int)) (HashMap!241 (underlying!686 Cell!971) (hashF!2109 Hashable!241) (_size!623 (_ BitVec 32)) (defaultValue!390 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!112 0))(
  ( (CacheFurthestNullable!113 (cache!726 MutableMap!241) (totalInput!1539 BalanceConc!280)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!112)

(declare-fun e!25330 () Bool)

(declare-fun tp!30852 () Bool)

(declare-fun array_inv!263 (array!814) Bool)

(declare-fun array_inv!264 (array!816) Bool)

(assert (=> b!45157 (= e!25337 (and tp!30848 tp!30852 tp!30850 (array_inv!263 (_keys!536 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))) (array_inv!264 (_values!523 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))) e!25330))))

(declare-fun e!25331 () Bool)

(declare-fun e!25328 () Bool)

(assert (=> b!45158 (= e!25331 (and e!25328 tp!30861))))

(declare-fun b!45159 () Bool)

(declare-fun res!30951 () Bool)

(declare-fun e!25339 () Bool)

(assert (=> b!45159 (=> (not res!30951) (not e!25339))))

(declare-fun input!525 () BalanceConc!280)

(assert (=> b!45159 (= res!30951 (= (totalInput!1539 cacheFurthestNullable!45) input!525))))

(declare-fun b!45160 () Bool)

(declare-fun e!25355 () Bool)

(declare-fun e!25333 () Bool)

(assert (=> b!45160 (= e!25355 e!25333)))

(declare-fun res!30952 () Bool)

(assert (=> start!2930 (=> (not res!30952) (not e!25339))))

(declare-fun isEmpty!148 (List!729) Bool)

(assert (=> start!2930 (= res!30952 (not (isEmpty!148 lt!5843)))))

(declare-datatypes ((JsonLexer!82 0))(
  ( (JsonLexer!83) )
))
(declare-fun rules!109 (JsonLexer!82) List!729)

(assert (=> start!2930 (= lt!5843 (rules!109 JsonLexer!83))))

(assert (=> start!2930 e!25339))

(declare-datatypes ((tuple3!282 0))(
  ( (tuple3!283 (_1!620 Regex!235) (_2!620 Context!186) (_3!179 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!882 0))(
  ( (tuple2!883 (_1!621 tuple3!282) (_2!621 (InoxSet Context!186))) )
))
(declare-datatypes ((List!732 0))(
  ( (Nil!730) (Cons!730 (h!6126 tuple2!882) (t!16649 List!732)) )
))
(declare-datatypes ((array!818 0))(
  ( (array!819 (arr!394 (Array (_ BitVec 32) List!732)) (size!717 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!492 0))(
  ( (LongMapFixedSize!493 (defaultEntry!584 Int) (mask!965 (_ BitVec 32)) (extraKeys!492 (_ BitVec 32)) (zeroValue!502 List!732) (minValue!502 List!732) (_size!624 (_ BitVec 32)) (_keys!537 array!814) (_values!524 array!818) (_vacant!306 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!973 0))(
  ( (Cell!974 (v!12471 LongMapFixedSize!492)) )
))
(declare-datatypes ((MutLongMap!246 0))(
  ( (LongMap!246 (underlying!687 Cell!973)) (MutLongMapExt!245 (__x!1236 Int)) )
))
(declare-datatypes ((Cell!975 0))(
  ( (Cell!976 (v!12472 MutLongMap!246)) )
))
(declare-datatypes ((Hashable!242 0))(
  ( (HashableExt!241 (__x!1237 Int)) )
))
(declare-datatypes ((MutableMap!242 0))(
  ( (MutableMapExt!241 (__x!1238 Int)) (HashMap!242 (underlying!688 Cell!975) (hashF!2110 Hashable!242) (_size!625 (_ BitVec 32)) (defaultValue!391 Int)) )
))
(declare-datatypes ((CacheDown!162 0))(
  ( (CacheDown!163 (cache!727 MutableMap!242)) )
))
(declare-fun cacheDown!333 () CacheDown!162)

(declare-fun e!25352 () Bool)

(declare-fun inv!1013 (CacheDown!162) Bool)

(assert (=> start!2930 (and (inv!1013 cacheDown!333) e!25352)))

(declare-fun e!25354 () Bool)

(declare-fun inv!1014 (BalanceConc!280) Bool)

(assert (=> start!2930 (and (inv!1014 input!525) e!25354)))

(declare-fun e!25335 () Bool)

(declare-fun inv!1015 (CacheFurthestNullable!112) Bool)

(assert (=> start!2930 (and (inv!1015 cacheFurthestNullable!45) e!25335)))

(declare-datatypes ((Hashable!243 0))(
  ( (HashableExt!242 (__x!1239 Int)) )
))
(declare-datatypes ((tuple2!884 0))(
  ( (tuple2!885 (_1!622 Context!186) (_2!622 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!886 0))(
  ( (tuple2!887 (_1!623 tuple2!884) (_2!623 (InoxSet Context!186))) )
))
(declare-datatypes ((List!733 0))(
  ( (Nil!731) (Cons!731 (h!6127 tuple2!886) (t!16650 List!733)) )
))
(declare-datatypes ((array!820 0))(
  ( (array!821 (arr!395 (Array (_ BitVec 32) List!733)) (size!718 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!494 0))(
  ( (LongMapFixedSize!495 (defaultEntry!585 Int) (mask!966 (_ BitVec 32)) (extraKeys!493 (_ BitVec 32)) (zeroValue!503 List!733) (minValue!503 List!733) (_size!626 (_ BitVec 32)) (_keys!538 array!814) (_values!525 array!820) (_vacant!307 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!977 0))(
  ( (Cell!978 (v!12473 LongMapFixedSize!494)) )
))
(declare-datatypes ((MutLongMap!247 0))(
  ( (LongMap!247 (underlying!689 Cell!977)) (MutLongMapExt!246 (__x!1240 Int)) )
))
(declare-datatypes ((Cell!979 0))(
  ( (Cell!980 (v!12474 MutLongMap!247)) )
))
(declare-datatypes ((MutableMap!243 0))(
  ( (MutableMapExt!242 (__x!1241 Int)) (HashMap!243 (underlying!690 Cell!979) (hashF!2111 Hashable!243) (_size!627 (_ BitVec 32)) (defaultValue!392 Int)) )
))
(declare-datatypes ((CacheUp!164 0))(
  ( (CacheUp!165 (cache!728 MutableMap!243)) )
))
(declare-fun cacheUp!320 () CacheUp!164)

(declare-fun e!25353 () Bool)

(declare-fun inv!1016 (CacheUp!164) Bool)

(assert (=> start!2930 (and (inv!1016 cacheUp!320) e!25353)))

(declare-fun b!45161 () Bool)

(declare-fun e!25350 () Bool)

(declare-fun e!25346 () Bool)

(declare-fun lt!5837 () MutLongMap!246)

(assert (=> b!45161 (= e!25350 (and e!25346 ((_ is LongMap!246) lt!5837)))))

(assert (=> b!45161 (= lt!5837 (v!12472 (underlying!688 (cache!727 cacheDown!333))))))

(declare-fun b!45162 () Bool)

(declare-fun res!30943 () Bool)

(assert (=> b!45162 (=> (not res!30943) (not e!25339))))

(declare-fun valid!222 (CacheFurthestNullable!112) Bool)

(assert (=> b!45162 (= res!30943 (valid!222 cacheFurthestNullable!45))))

(declare-fun b!45163 () Bool)

(declare-fun res!30953 () Bool)

(assert (=> b!45163 (=> (not res!30953) (not e!25339))))

(declare-fun valid!223 (CacheUp!164) Bool)

(assert (=> b!45163 (= res!30953 (valid!223 cacheUp!320))))

(declare-fun b!45164 () Bool)

(declare-fun res!30950 () Bool)

(declare-fun e!25357 () Bool)

(assert (=> b!45164 (=> (not res!30950) (not e!25357))))

(declare-datatypes ((Token!104 0))(
  ( (Token!105 (value!7626 TokenValue!159) (rule!645 Rule!138) (size!719 Int) (originalCharacters!223 List!728)) )
))
(declare-datatypes ((List!734 0))(
  ( (Nil!732) (Cons!732 (h!6128 Token!104) (t!16651 List!734)) )
))
(declare-datatypes ((IArray!283 0))(
  ( (IArray!284 (innerList!199 List!734)) )
))
(declare-datatypes ((Conc!141 0))(
  ( (Node!141 (left!578 Conc!141) (right!908 Conc!141) (csize!512 Int) (cheight!352 Int)) (Leaf!337 (xs!2720 IArray!283) (csize!513 Int)) (Empty!141) )
))
(declare-datatypes ((BalanceConc!282 0))(
  ( (BalanceConc!283 (c!16102 Conc!141)) )
))
(declare-datatypes ((tuple2!888 0))(
  ( (tuple2!889 (_1!624 BalanceConc!282) (_2!624 BalanceConc!280)) )
))
(declare-datatypes ((tuple4!76 0))(
  ( (tuple4!77 (_1!625 tuple2!888) (_2!625 CacheUp!164) (_3!180 CacheDown!162) (_4!38 CacheFurthestNullable!112)) )
))
(declare-fun lt!5835 () tuple4!76)

(declare-fun forall!84 (BalanceConc!282 Int) Bool)

(assert (=> b!45164 (= res!30950 (forall!84 (_1!624 (_1!625 lt!5835)) lambda!831))))

(declare-fun mapNonEmpty!946 () Bool)

(declare-fun mapRes!947 () Bool)

(declare-fun tp!30846 () Bool)

(declare-fun tp!30859 () Bool)

(assert (=> mapNonEmpty!946 (= mapRes!947 (and tp!30846 tp!30859))))

(declare-fun mapRest!948 () (Array (_ BitVec 32) List!732))

(declare-fun mapKey!947 () (_ BitVec 32))

(declare-fun mapValue!947 () List!732)

(assert (=> mapNonEmpty!946 (= (arr!394 (_values!524 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333))))))) (store mapRest!948 mapKey!947 mapValue!947))))

(declare-fun b!45165 () Bool)

(declare-fun res!30941 () Bool)

(assert (=> b!45165 (=> (not res!30941) (not e!25339))))

(declare-fun valid!224 (CacheDown!162) Bool)

(assert (=> b!45165 (= res!30941 (valid!224 cacheDown!333))))

(declare-fun b!45166 () Bool)

(declare-fun e!25329 () Bool)

(assert (=> b!45166 (= e!25352 e!25329)))

(declare-fun b!45167 () Bool)

(declare-fun res!30948 () Bool)

(assert (=> b!45167 (=> (not res!30948) (not e!25357))))

(declare-fun lt!5832 () List!734)

(declare-datatypes ((LexerInterface!63 0))(
  ( (LexerInterfaceExt!60 (__x!1242 Int)) (Lexer!61) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!19 (LexerInterface!63 List!729 List!734) Bool)

(assert (=> b!45167 (= res!30948 (rulesProduceEachTokenIndividuallyList!19 Lexer!61 lt!5843 lt!5832))))

(declare-fun b!45168 () Bool)

(declare-fun e!25336 () Bool)

(declare-fun e!25349 () Bool)

(assert (=> b!45168 (= e!25335 (and e!25349 (inv!1014 (totalInput!1539 cacheFurthestNullable!45)) e!25336))))

(declare-fun b!45169 () Bool)

(declare-fun e!25343 () Bool)

(declare-fun e!25342 () Bool)

(assert (=> b!45169 (= e!25343 e!25342)))

(declare-fun b!45170 () Bool)

(declare-fun e!25341 () Bool)

(assert (=> b!45170 (= e!25341 e!25357)))

(declare-fun res!30947 () Bool)

(assert (=> b!45170 (=> (not res!30947) (not e!25357))))

(declare-fun lt!5833 () List!734)

(declare-fun lt!5840 () tuple2!888)

(declare-fun list!198 (BalanceConc!282) List!734)

(assert (=> b!45170 (= res!30947 (= lt!5833 (list!198 (_1!624 lt!5840))))))

(declare-fun lt!5839 () BalanceConc!280)

(declare-fun lex!42 (LexerInterface!63 List!729 BalanceConc!280) tuple2!888)

(assert (=> b!45170 (= lt!5840 (lex!42 Lexer!61 lt!5843 lt!5839))))

(declare-fun b!45171 () Bool)

(declare-fun e!25348 () Bool)

(assert (=> b!45171 (= e!25348 e!25337)))

(declare-fun b!45172 () Bool)

(declare-fun e!25340 () Bool)

(declare-fun e!25344 () Bool)

(assert (=> b!45172 (= e!25340 e!25344)))

(declare-fun res!30946 () Bool)

(assert (=> b!45172 (=> (not res!30946) (not e!25344))))

(declare-fun lt!5838 () List!728)

(declare-fun lt!5842 () List!728)

(assert (=> b!45172 (= res!30946 (= lt!5838 lt!5842))))

(declare-fun lt!5834 () tuple2!888)

(declare-fun list!199 (BalanceConc!280) List!728)

(assert (=> b!45172 (= lt!5842 (list!199 (_2!624 lt!5834)))))

(assert (=> b!45172 (= lt!5838 (list!199 (_2!624 (_1!625 lt!5835))))))

(declare-fun b!45173 () Bool)

(declare-fun e!25356 () Bool)

(declare-fun tp!30858 () Bool)

(declare-fun mapRes!948 () Bool)

(assert (=> b!45173 (= e!25356 (and tp!30858 mapRes!948))))

(declare-fun condMapEmpty!946 () Bool)

(declare-fun mapDefault!947 () List!733)

(assert (=> b!45173 (= condMapEmpty!946 (= (arr!395 (_values!525 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!733)) mapDefault!947)))))

(declare-fun tp!30845 () Bool)

(declare-fun tp!30860 () Bool)

(declare-fun array_inv!265 (array!820) Bool)

(assert (=> b!45174 (= e!25342 (and tp!30851 tp!30860 tp!30845 (array_inv!263 (_keys!538 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320))))))) (array_inv!265 (_values!525 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320))))))) e!25356))))

(declare-fun b!45175 () Bool)

(declare-fun e!25338 () Bool)

(assert (=> b!45175 (= e!25338 e!25348)))

(declare-fun b!45176 () Bool)

(declare-fun res!30944 () Bool)

(assert (=> b!45176 (=> (not res!30944) (not e!25339))))

(declare-fun rulesInvariant!55 (LexerInterface!63 List!729) Bool)

(assert (=> b!45176 (= res!30944 (rulesInvariant!55 Lexer!61 lt!5843))))

(declare-fun b!45177 () Bool)

(declare-fun e!25332 () Bool)

(declare-fun tp!30856 () Bool)

(assert (=> b!45177 (= e!25332 (and tp!30856 mapRes!947))))

(declare-fun condMapEmpty!947 () Bool)

(declare-fun mapDefault!946 () List!732)

(assert (=> b!45177 (= condMapEmpty!947 (= (arr!394 (_values!524 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!732)) mapDefault!946)))))

(declare-fun mapIsEmpty!946 () Bool)

(assert (=> mapIsEmpty!946 mapRes!947))

(declare-fun b!45178 () Bool)

(declare-fun tp!30866 () Bool)

(declare-fun inv!1017 (Conc!140) Bool)

(assert (=> b!45178 (= e!25336 (and (inv!1017 (c!16101 (totalInput!1539 cacheFurthestNullable!45))) tp!30866))))

(declare-fun res!30942 () Bool)

(assert (=> b!45179 (=> (not res!30942) (not e!25357))))

(declare-fun forall!85 (List!734 Int) Bool)

(assert (=> b!45179 (= res!30942 (forall!85 lt!5832 lambda!831))))

(declare-fun b!45180 () Bool)

(assert (=> b!45180 (= e!25344 e!25341)))

(declare-fun res!30955 () Bool)

(assert (=> b!45180 (=> (not res!30955) (not e!25341))))

(declare-fun lt!5844 () List!728)

(assert (=> b!45180 (= res!30955 (= (list!199 lt!5839) lt!5844))))

(declare-fun seqFromList!34 (List!728) BalanceConc!280)

(assert (=> b!45180 (= lt!5839 (seqFromList!34 lt!5844))))

(assert (=> b!45180 (= lt!5844 (list!199 input!525))))

(declare-fun e!25345 () Bool)

(assert (=> b!45181 (= e!25349 (and e!25345 tp!30849))))

(declare-fun tp!30863 () Bool)

(declare-fun tp!30857 () Bool)

(declare-fun array_inv!266 (array!818) Bool)

(assert (=> b!45182 (= e!25333 (and tp!30855 tp!30863 tp!30857 (array_inv!263 (_keys!537 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333))))))) (array_inv!266 (_values!524 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333))))))) e!25332))))

(declare-fun b!45183 () Bool)

(declare-fun e!25347 () Bool)

(declare-fun lt!5841 () MutLongMap!247)

(assert (=> b!45183 (= e!25328 (and e!25347 ((_ is LongMap!247) lt!5841)))))

(assert (=> b!45183 (= lt!5841 (v!12474 (underlying!690 (cache!728 cacheUp!320))))))

(declare-fun b!45184 () Bool)

(assert (=> b!45184 (= e!25353 e!25331)))

(declare-fun b!45185 () Bool)

(declare-fun res!30945 () Bool)

(assert (=> b!45185 (=> (not res!30945) (not e!25357))))

(declare-fun lexThenRulesProduceEachTokenIndividually!17 (LexerInterface!63 List!729 List!728) Bool)

(assert (=> b!45185 (= res!30945 (lexThenRulesProduceEachTokenIndividually!17 Lexer!61 lt!5843 lt!5844))))

(declare-fun b!45186 () Bool)

(declare-fun res!30949 () Bool)

(assert (=> b!45186 (=> (not res!30949) (not e!25357))))

(assert (=> b!45186 (= res!30949 (= lt!5842 (list!199 (_2!624 lt!5840))))))

(declare-fun b!45187 () Bool)

(assert (=> b!45187 (= e!25339 e!25340)))

(declare-fun res!30954 () Bool)

(assert (=> b!45187 (=> (not res!30954) (not e!25340))))

(assert (=> b!45187 (= res!30954 (= lt!5832 lt!5833))))

(assert (=> b!45187 (= lt!5833 (list!198 (_1!624 lt!5834)))))

(assert (=> b!45187 (= lt!5832 (list!198 (_1!624 (_1!625 lt!5835))))))

(assert (=> b!45187 (= lt!5834 (lex!42 Lexer!61 lt!5843 input!525))))

(declare-datatypes ((Unit!336 0))(
  ( (Unit!337) )
))
(declare-fun lt!5836 () Unit!336)

(declare-fun lemmaInvariant!59 (CacheDown!162) Unit!336)

(assert (=> b!45187 (= lt!5836 (lemmaInvariant!59 (_3!180 lt!5835)))))

(declare-fun lt!5846 () Unit!336)

(declare-fun lemmaInvariant!60 (CacheUp!164) Unit!336)

(assert (=> b!45187 (= lt!5846 (lemmaInvariant!60 (_2!625 lt!5835)))))

(declare-fun lexMem!28 (LexerInterface!63 List!729 BalanceConc!280 CacheUp!164 CacheDown!162 CacheFurthestNullable!112) tuple4!76)

(assert (=> b!45187 (= lt!5835 (lexMem!28 Lexer!61 lt!5843 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun mapNonEmpty!947 () Bool)

(declare-fun mapRes!946 () Bool)

(declare-fun tp!30864 () Bool)

(declare-fun tp!30853 () Bool)

(assert (=> mapNonEmpty!947 (= mapRes!946 (and tp!30864 tp!30853))))

(declare-fun mapValue!948 () List!731)

(declare-fun mapKey!948 () (_ BitVec 32))

(declare-fun mapRest!947 () (Array (_ BitVec 32) List!731))

(assert (=> mapNonEmpty!947 (= (arr!393 (_values!523 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))) (store mapRest!947 mapKey!948 mapValue!948))))

(declare-fun b!45188 () Bool)

(declare-fun tp!30844 () Bool)

(assert (=> b!45188 (= e!25330 (and tp!30844 mapRes!946))))

(declare-fun condMapEmpty!948 () Bool)

(declare-fun mapDefault!948 () List!731)

(assert (=> b!45188 (= condMapEmpty!948 (= (arr!393 (_values!523 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!731)) mapDefault!948)))))

(declare-fun b!45189 () Bool)

(assert (=> b!45189 (= e!25346 e!25355)))

(declare-fun mapIsEmpty!947 () Bool)

(assert (=> mapIsEmpty!947 mapRes!946))

(declare-fun mapIsEmpty!948 () Bool)

(assert (=> mapIsEmpty!948 mapRes!948))

(assert (=> b!45190 (= e!25329 (and e!25350 tp!30862))))

(declare-fun b!45191 () Bool)

(declare-fun lt!5845 () MutLongMap!245)

(assert (=> b!45191 (= e!25345 (and e!25338 ((_ is LongMap!245) lt!5845)))))

(assert (=> b!45191 (= lt!5845 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))

(declare-fun b!45192 () Bool)

(assert (=> b!45192 (= e!25347 e!25343)))

(declare-fun mapNonEmpty!948 () Bool)

(declare-fun tp!30847 () Bool)

(declare-fun tp!30854 () Bool)

(assert (=> mapNonEmpty!948 (= mapRes!948 (and tp!30847 tp!30854))))

(declare-fun mapValue!946 () List!733)

(declare-fun mapRest!946 () (Array (_ BitVec 32) List!733))

(declare-fun mapKey!946 () (_ BitVec 32))

(assert (=> mapNonEmpty!948 (= (arr!395 (_values!525 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320))))))) (store mapRest!946 mapKey!946 mapValue!946))))

(declare-fun b!45193 () Bool)

(declare-fun tp!30865 () Bool)

(assert (=> b!45193 (= e!25354 (and (inv!1017 (c!16101 input!525)) tp!30865))))

(declare-fun b!45194 () Bool)

(assert (=> b!45194 (= e!25357 (not (valid!223 (_2!625 lt!5835))))))

(assert (= (and start!2930 res!30952) b!45176))

(assert (= (and b!45176 res!30944) b!45163))

(assert (= (and b!45163 res!30953) b!45165))

(assert (= (and b!45165 res!30941) b!45162))

(assert (= (and b!45162 res!30943) b!45159))

(assert (= (and b!45159 res!30951) b!45187))

(assert (= (and b!45187 res!30954) b!45172))

(assert (= (and b!45172 res!30946) b!45180))

(assert (= (and b!45180 res!30955) b!45170))

(assert (= (and b!45170 res!30947) b!45186))

(assert (= (and b!45186 res!30949) b!45185))

(assert (= (and b!45185 res!30945) b!45179))

(assert (= (and b!45179 res!30942) b!45164))

(assert (= (and b!45164 res!30950) b!45167))

(assert (= (and b!45167 res!30948) b!45194))

(assert (= (and b!45177 condMapEmpty!947) mapIsEmpty!946))

(assert (= (and b!45177 (not condMapEmpty!947)) mapNonEmpty!946))

(assert (= b!45182 b!45177))

(assert (= b!45160 b!45182))

(assert (= b!45189 b!45160))

(assert (= (and b!45161 ((_ is LongMap!246) (v!12472 (underlying!688 (cache!727 cacheDown!333))))) b!45189))

(assert (= b!45190 b!45161))

(assert (= (and b!45166 ((_ is HashMap!242) (cache!727 cacheDown!333))) b!45190))

(assert (= start!2930 b!45166))

(assert (= start!2930 b!45193))

(assert (= (and b!45188 condMapEmpty!948) mapIsEmpty!947))

(assert (= (and b!45188 (not condMapEmpty!948)) mapNonEmpty!947))

(assert (= b!45157 b!45188))

(assert (= b!45171 b!45157))

(assert (= b!45175 b!45171))

(assert (= (and b!45191 ((_ is LongMap!245) (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))) b!45175))

(assert (= b!45181 b!45191))

(assert (= (and b!45168 ((_ is HashMap!241) (cache!726 cacheFurthestNullable!45))) b!45181))

(assert (= b!45168 b!45178))

(assert (= start!2930 b!45168))

(assert (= (and b!45173 condMapEmpty!946) mapIsEmpty!948))

(assert (= (and b!45173 (not condMapEmpty!946)) mapNonEmpty!948))

(assert (= b!45174 b!45173))

(assert (= b!45169 b!45174))

(assert (= b!45192 b!45169))

(assert (= (and b!45183 ((_ is LongMap!247) (v!12474 (underlying!690 (cache!728 cacheUp!320))))) b!45192))

(assert (= b!45158 b!45183))

(assert (= (and b!45184 ((_ is HashMap!243) (cache!728 cacheUp!320))) b!45158))

(assert (= start!2930 b!45184))

(declare-fun m!19394 () Bool)

(assert (=> b!45186 m!19394))

(declare-fun m!19396 () Bool)

(assert (=> b!45193 m!19396))

(declare-fun m!19398 () Bool)

(assert (=> b!45164 m!19398))

(declare-fun m!19400 () Bool)

(assert (=> mapNonEmpty!948 m!19400))

(declare-fun m!19402 () Bool)

(assert (=> b!45170 m!19402))

(declare-fun m!19404 () Bool)

(assert (=> b!45170 m!19404))

(declare-fun m!19406 () Bool)

(assert (=> b!45180 m!19406))

(declare-fun m!19408 () Bool)

(assert (=> b!45180 m!19408))

(declare-fun m!19410 () Bool)

(assert (=> b!45180 m!19410))

(declare-fun m!19412 () Bool)

(assert (=> start!2930 m!19412))

(declare-fun m!19414 () Bool)

(assert (=> start!2930 m!19414))

(declare-fun m!19416 () Bool)

(assert (=> start!2930 m!19416))

(declare-fun m!19418 () Bool)

(assert (=> start!2930 m!19418))

(declare-fun m!19420 () Bool)

(assert (=> start!2930 m!19420))

(declare-fun m!19422 () Bool)

(assert (=> start!2930 m!19422))

(declare-fun m!19424 () Bool)

(assert (=> b!45179 m!19424))

(declare-fun m!19426 () Bool)

(assert (=> b!45182 m!19426))

(declare-fun m!19428 () Bool)

(assert (=> b!45182 m!19428))

(declare-fun m!19430 () Bool)

(assert (=> b!45172 m!19430))

(declare-fun m!19432 () Bool)

(assert (=> b!45172 m!19432))

(declare-fun m!19434 () Bool)

(assert (=> b!45194 m!19434))

(declare-fun m!19436 () Bool)

(assert (=> b!45176 m!19436))

(declare-fun m!19438 () Bool)

(assert (=> b!45163 m!19438))

(declare-fun m!19440 () Bool)

(assert (=> b!45167 m!19440))

(declare-fun m!19442 () Bool)

(assert (=> b!45185 m!19442))

(declare-fun m!19444 () Bool)

(assert (=> mapNonEmpty!947 m!19444))

(declare-fun m!19446 () Bool)

(assert (=> b!45162 m!19446))

(declare-fun m!19448 () Bool)

(assert (=> b!45187 m!19448))

(declare-fun m!19450 () Bool)

(assert (=> b!45187 m!19450))

(declare-fun m!19452 () Bool)

(assert (=> b!45187 m!19452))

(declare-fun m!19454 () Bool)

(assert (=> b!45187 m!19454))

(declare-fun m!19456 () Bool)

(assert (=> b!45187 m!19456))

(declare-fun m!19458 () Bool)

(assert (=> b!45187 m!19458))

(declare-fun m!19460 () Bool)

(assert (=> b!45165 m!19460))

(declare-fun m!19462 () Bool)

(assert (=> b!45168 m!19462))

(declare-fun m!19464 () Bool)

(assert (=> mapNonEmpty!946 m!19464))

(declare-fun m!19466 () Bool)

(assert (=> b!45157 m!19466))

(declare-fun m!19468 () Bool)

(assert (=> b!45157 m!19468))

(declare-fun m!19470 () Bool)

(assert (=> b!45178 m!19470))

(declare-fun m!19472 () Bool)

(assert (=> b!45174 m!19472))

(declare-fun m!19474 () Bool)

(assert (=> b!45174 m!19474))

(check-sat (not b!45163) (not b!45168) (not b!45186) b_and!1185 (not mapNonEmpty!947) (not b_next!1157) (not mapNonEmpty!948) (not b!45177) (not b!45188) (not b!45165) (not b!45178) (not b!45164) (not b_next!1149) (not b_next!1159) (not b!45172) (not b!45167) (not b!45180) (not b_next!1153) (not b!45173) (not b!45174) b_and!1193 b_and!1191 (not b_next!1151) (not mapNonEmpty!946) (not b!45179) (not b!45185) (not b!45176) (not b_next!1155) b_and!1187 (not b!45182) (not b!45170) (not b!45193) b_and!1189 (not start!2930) (not b!45162) (not b!45157) (not b!45194) (not b!45187) b_and!1183 (not b!45203))
(check-sat b_and!1185 (not b_next!1157) (not b_next!1153) (not b_next!1151) b_and!1189 b_and!1183 (not b_next!1149) (not b_next!1159) b_and!1193 b_and!1191 (not b_next!1155) b_and!1187)
(get-model)

(declare-fun d!5234 () Bool)

(declare-fun list!200 (Conc!141) List!734)

(assert (=> d!5234 (= (list!198 (_1!624 lt!5840)) (list!200 (c!16102 (_1!624 lt!5840))))))

(declare-fun bs!6251 () Bool)

(assert (= bs!6251 d!5234))

(declare-fun m!19476 () Bool)

(assert (=> bs!6251 m!19476))

(assert (=> b!45170 d!5234))

(declare-fun b!45216 () Bool)

(declare-fun e!25374 () Bool)

(declare-fun e!25376 () Bool)

(assert (=> b!45216 (= e!25374 e!25376)))

(declare-fun res!30965 () Bool)

(declare-fun lt!5849 () tuple2!888)

(declare-fun size!720 (BalanceConc!280) Int)

(assert (=> b!45216 (= res!30965 (< (size!720 (_2!624 lt!5849)) (size!720 lt!5839)))))

(assert (=> b!45216 (=> (not res!30965) (not e!25376))))

(declare-fun b!45217 () Bool)

(declare-fun res!30964 () Bool)

(declare-fun e!25375 () Bool)

(assert (=> b!45217 (=> (not res!30964) (not e!25375))))

(declare-datatypes ((tuple2!890 0))(
  ( (tuple2!891 (_1!626 List!734) (_2!626 List!728)) )
))
(declare-fun lexList!16 (LexerInterface!63 List!729 List!728) tuple2!890)

(assert (=> b!45217 (= res!30964 (= (list!198 (_1!624 lt!5849)) (_1!626 (lexList!16 Lexer!61 lt!5843 (list!199 lt!5839)))))))

(declare-fun b!45218 () Bool)

(assert (=> b!45218 (= e!25374 (= (_2!624 lt!5849) lt!5839))))

(declare-fun d!5236 () Bool)

(assert (=> d!5236 e!25375))

(declare-fun res!30966 () Bool)

(assert (=> d!5236 (=> (not res!30966) (not e!25375))))

(assert (=> d!5236 (= res!30966 e!25374)))

(declare-fun c!16105 () Bool)

(declare-fun size!721 (BalanceConc!282) Int)

(assert (=> d!5236 (= c!16105 (> (size!721 (_1!624 lt!5849)) 0))))

(declare-fun lexTailRecV2!13 (LexerInterface!63 List!729 BalanceConc!280 BalanceConc!280 BalanceConc!280 BalanceConc!282) tuple2!888)

(assert (=> d!5236 (= lt!5849 (lexTailRecV2!13 Lexer!61 lt!5843 lt!5839 (BalanceConc!281 Empty!140) lt!5839 (BalanceConc!283 Empty!141)))))

(assert (=> d!5236 (= (lex!42 Lexer!61 lt!5843 lt!5839) lt!5849)))

(declare-fun b!45219 () Bool)

(declare-fun isEmpty!149 (BalanceConc!282) Bool)

(assert (=> b!45219 (= e!25376 (not (isEmpty!149 (_1!624 lt!5849))))))

(declare-fun b!45220 () Bool)

(assert (=> b!45220 (= e!25375 (= (list!199 (_2!624 lt!5849)) (_2!626 (lexList!16 Lexer!61 lt!5843 (list!199 lt!5839)))))))

(assert (= (and d!5236 c!16105) b!45216))

(assert (= (and d!5236 (not c!16105)) b!45218))

(assert (= (and b!45216 res!30965) b!45219))

(assert (= (and d!5236 res!30966) b!45217))

(assert (= (and b!45217 res!30964) b!45220))

(declare-fun m!19478 () Bool)

(assert (=> b!45219 m!19478))

(declare-fun m!19480 () Bool)

(assert (=> d!5236 m!19480))

(declare-fun m!19482 () Bool)

(assert (=> d!5236 m!19482))

(declare-fun m!19484 () Bool)

(assert (=> b!45220 m!19484))

(assert (=> b!45220 m!19406))

(assert (=> b!45220 m!19406))

(declare-fun m!19486 () Bool)

(assert (=> b!45220 m!19486))

(declare-fun m!19488 () Bool)

(assert (=> b!45217 m!19488))

(assert (=> b!45217 m!19406))

(assert (=> b!45217 m!19406))

(assert (=> b!45217 m!19486))

(declare-fun m!19490 () Bool)

(assert (=> b!45216 m!19490))

(declare-fun m!19492 () Bool)

(assert (=> b!45216 m!19492))

(assert (=> b!45170 d!5236))

(declare-fun d!5238 () Bool)

(declare-fun list!201 (Conc!140) List!728)

(assert (=> d!5238 (= (list!199 lt!5839) (list!201 (c!16101 lt!5839)))))

(declare-fun bs!6252 () Bool)

(assert (= bs!6252 d!5238))

(declare-fun m!19494 () Bool)

(assert (=> bs!6252 m!19494))

(assert (=> b!45180 d!5238))

(declare-fun d!5240 () Bool)

(declare-fun fromListB!12 (List!728) BalanceConc!280)

(assert (=> d!5240 (= (seqFromList!34 lt!5844) (fromListB!12 lt!5844))))

(declare-fun bs!6253 () Bool)

(assert (= bs!6253 d!5240))

(declare-fun m!19496 () Bool)

(assert (=> bs!6253 m!19496))

(assert (=> b!45180 d!5240))

(declare-fun d!5242 () Bool)

(assert (=> d!5242 (= (list!199 input!525) (list!201 (c!16101 input!525)))))

(declare-fun bs!6254 () Bool)

(assert (= bs!6254 d!5242))

(declare-fun m!19498 () Bool)

(assert (=> bs!6254 m!19498))

(assert (=> b!45180 d!5242))

(declare-fun d!5244 () Bool)

(declare-fun validCacheMapFurthestNullable!15 (MutableMap!241 BalanceConc!280) Bool)

(assert (=> d!5244 (= (valid!222 cacheFurthestNullable!45) (validCacheMapFurthestNullable!15 (cache!726 cacheFurthestNullable!45) (totalInput!1539 cacheFurthestNullable!45)))))

(declare-fun bs!6255 () Bool)

(assert (= bs!6255 d!5244))

(declare-fun m!19500 () Bool)

(assert (=> bs!6255 m!19500))

(assert (=> b!45162 d!5244))

(declare-fun d!5246 () Bool)

(assert (=> d!5246 (= (list!199 (_2!624 lt!5834)) (list!201 (c!16101 (_2!624 lt!5834))))))

(declare-fun bs!6256 () Bool)

(assert (= bs!6256 d!5246))

(declare-fun m!19502 () Bool)

(assert (=> bs!6256 m!19502))

(assert (=> b!45172 d!5246))

(declare-fun d!5248 () Bool)

(assert (=> d!5248 (= (list!199 (_2!624 (_1!625 lt!5835))) (list!201 (c!16101 (_2!624 (_1!625 lt!5835)))))))

(declare-fun bs!6257 () Bool)

(assert (= bs!6257 d!5248))

(declare-fun m!19504 () Bool)

(assert (=> bs!6257 m!19504))

(assert (=> b!45172 d!5248))

(declare-fun d!5250 () Bool)

(assert (=> d!5250 (= (array_inv!263 (_keys!537 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333))))))) (bvsge (size!715 (_keys!537 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!45182 d!5250))

(declare-fun d!5252 () Bool)

(assert (=> d!5252 (= (array_inv!266 (_values!524 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333))))))) (bvsge (size!717 (_values!524 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!45182 d!5252))

(declare-fun d!5254 () Bool)

(declare-fun validCacheMapUp!21 (MutableMap!243) Bool)

(assert (=> d!5254 (= (valid!223 cacheUp!320) (validCacheMapUp!21 (cache!728 cacheUp!320)))))

(declare-fun bs!6258 () Bool)

(assert (= bs!6258 d!5254))

(declare-fun m!19506 () Bool)

(assert (=> bs!6258 m!19506))

(assert (=> b!45163 d!5254))

(declare-fun d!5256 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!82) Rule!138)

(declare-fun integerLiteralRule!0 (JsonLexer!82) Rule!138)

(declare-fun floatLiteralRule!0 (JsonLexer!82) Rule!138)

(declare-fun trueRule!0 (JsonLexer!82) Rule!138)

(declare-fun falseRule!0 (JsonLexer!82) Rule!138)

(declare-fun nullRule!0 (JsonLexer!82) Rule!138)

(declare-fun jsonstringRule!0 (JsonLexer!82) Rule!138)

(declare-fun lBraceRule!0 (JsonLexer!82) Rule!138)

(declare-fun rBraceRule!0 (JsonLexer!82) Rule!138)

(declare-fun lBracketRule!0 (JsonLexer!82) Rule!138)

(declare-fun rBracketRule!0 (JsonLexer!82) Rule!138)

(declare-fun colonRule!0 (JsonLexer!82) Rule!138)

(declare-fun commaRule!0 (JsonLexer!82) Rule!138)

(declare-fun eofRule!0 (JsonLexer!82) Rule!138)

(assert (=> d!5256 (= (rules!109 JsonLexer!83) (Cons!727 (whitespaceRule!0 JsonLexer!83) (Cons!727 (integerLiteralRule!0 JsonLexer!83) (Cons!727 (floatLiteralRule!0 JsonLexer!83) (Cons!727 (trueRule!0 JsonLexer!83) (Cons!727 (falseRule!0 JsonLexer!83) (Cons!727 (nullRule!0 JsonLexer!83) (Cons!727 (jsonstringRule!0 JsonLexer!83) (Cons!727 (lBraceRule!0 JsonLexer!83) (Cons!727 (rBraceRule!0 JsonLexer!83) (Cons!727 (lBracketRule!0 JsonLexer!83) (Cons!727 (rBracketRule!0 JsonLexer!83) (Cons!727 (colonRule!0 JsonLexer!83) (Cons!727 (commaRule!0 JsonLexer!83) (Cons!727 (eofRule!0 JsonLexer!83) Nil!727)))))))))))))))))

(declare-fun bs!6259 () Bool)

(assert (= bs!6259 d!5256))

(declare-fun m!19508 () Bool)

(assert (=> bs!6259 m!19508))

(declare-fun m!19510 () Bool)

(assert (=> bs!6259 m!19510))

(declare-fun m!19512 () Bool)

(assert (=> bs!6259 m!19512))

(declare-fun m!19514 () Bool)

(assert (=> bs!6259 m!19514))

(declare-fun m!19516 () Bool)

(assert (=> bs!6259 m!19516))

(declare-fun m!19518 () Bool)

(assert (=> bs!6259 m!19518))

(declare-fun m!19520 () Bool)

(assert (=> bs!6259 m!19520))

(declare-fun m!19522 () Bool)

(assert (=> bs!6259 m!19522))

(declare-fun m!19524 () Bool)

(assert (=> bs!6259 m!19524))

(declare-fun m!19526 () Bool)

(assert (=> bs!6259 m!19526))

(declare-fun m!19528 () Bool)

(assert (=> bs!6259 m!19528))

(declare-fun m!19530 () Bool)

(assert (=> bs!6259 m!19530))

(declare-fun m!19532 () Bool)

(assert (=> bs!6259 m!19532))

(declare-fun m!19534 () Bool)

(assert (=> bs!6259 m!19534))

(assert (=> start!2930 d!5256))

(declare-fun d!5258 () Bool)

(declare-fun res!30969 () Bool)

(declare-fun e!25379 () Bool)

(assert (=> d!5258 (=> (not res!30969) (not e!25379))))

(assert (=> d!5258 (= res!30969 ((_ is HashMap!242) (cache!727 cacheDown!333)))))

(assert (=> d!5258 (= (inv!1013 cacheDown!333) e!25379)))

(declare-fun b!45223 () Bool)

(declare-fun validCacheMapDown!23 (MutableMap!242) Bool)

(assert (=> b!45223 (= e!25379 (validCacheMapDown!23 (cache!727 cacheDown!333)))))

(assert (= (and d!5258 res!30969) b!45223))

(declare-fun m!19536 () Bool)

(assert (=> b!45223 m!19536))

(assert (=> start!2930 d!5258))

(declare-fun d!5260 () Bool)

(declare-fun res!30972 () Bool)

(declare-fun e!25382 () Bool)

(assert (=> d!5260 (=> (not res!30972) (not e!25382))))

(assert (=> d!5260 (= res!30972 ((_ is HashMap!241) (cache!726 cacheFurthestNullable!45)))))

(assert (=> d!5260 (= (inv!1015 cacheFurthestNullable!45) e!25382)))

(declare-fun b!45226 () Bool)

(assert (=> b!45226 (= e!25382 (validCacheMapFurthestNullable!15 (cache!726 cacheFurthestNullable!45) (totalInput!1539 cacheFurthestNullable!45)))))

(assert (= (and d!5260 res!30972) b!45226))

(assert (=> b!45226 m!19500))

(assert (=> start!2930 d!5260))

(declare-fun d!5262 () Bool)

(declare-fun res!30975 () Bool)

(declare-fun e!25385 () Bool)

(assert (=> d!5262 (=> (not res!30975) (not e!25385))))

(assert (=> d!5262 (= res!30975 ((_ is HashMap!243) (cache!728 cacheUp!320)))))

(assert (=> d!5262 (= (inv!1016 cacheUp!320) e!25385)))

(declare-fun b!45229 () Bool)

(assert (=> b!45229 (= e!25385 (validCacheMapUp!21 (cache!728 cacheUp!320)))))

(assert (= (and d!5262 res!30975) b!45229))

(assert (=> b!45229 m!19506))

(assert (=> start!2930 d!5262))

(declare-fun d!5264 () Bool)

(assert (=> d!5264 (= (isEmpty!148 lt!5843) ((_ is Nil!727) lt!5843))))

(assert (=> start!2930 d!5264))

(declare-fun d!5266 () Bool)

(declare-fun isBalanced!26 (Conc!140) Bool)

(assert (=> d!5266 (= (inv!1014 input!525) (isBalanced!26 (c!16101 input!525)))))

(declare-fun bs!6260 () Bool)

(assert (= bs!6260 d!5266))

(declare-fun m!19538 () Bool)

(assert (=> bs!6260 m!19538))

(assert (=> start!2930 d!5266))

(declare-fun d!5268 () Bool)

(declare-fun lt!5852 () Bool)

(assert (=> d!5268 (= lt!5852 (forall!85 (list!198 (_1!624 (_1!625 lt!5835))) lambda!831))))

(declare-fun forall!86 (Conc!141 Int) Bool)

(assert (=> d!5268 (= lt!5852 (forall!86 (c!16102 (_1!624 (_1!625 lt!5835))) lambda!831))))

(assert (=> d!5268 (= (forall!84 (_1!624 (_1!625 lt!5835)) lambda!831) lt!5852)))

(declare-fun bs!6261 () Bool)

(assert (= bs!6261 d!5268))

(assert (=> bs!6261 m!19454))

(assert (=> bs!6261 m!19454))

(declare-fun m!19540 () Bool)

(assert (=> bs!6261 m!19540))

(declare-fun m!19542 () Bool)

(assert (=> bs!6261 m!19542))

(assert (=> b!45164 d!5268))

(declare-fun d!5270 () Bool)

(assert (=> d!5270 (= (array_inv!263 (_keys!538 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320))))))) (bvsge (size!715 (_keys!538 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!45174 d!5270))

(declare-fun d!5272 () Bool)

(assert (=> d!5272 (= (array_inv!265 (_values!525 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320))))))) (bvsge (size!718 (_values!525 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!45174 d!5272))

(declare-fun b!45240 () Bool)

(declare-fun e!25394 () Bool)

(declare-fun lt!5864 () tuple2!888)

(assert (=> b!45240 (= e!25394 (rulesProduceEachTokenIndividuallyList!19 Lexer!61 lt!5843 (list!198 (_1!624 lt!5864))))))

(declare-fun lt!5863 () Unit!336)

(declare-fun lt!5866 () Unit!336)

(assert (=> b!45240 (= lt!5863 lt!5866)))

(declare-fun lt!5865 () List!734)

(declare-fun rulesProduceEachTokenIndividually!7 (LexerInterface!63 List!729 BalanceConc!282) Bool)

(declare-fun seqFromList!35 (List!734) BalanceConc!282)

(assert (=> b!45240 (rulesProduceEachTokenIndividually!7 Lexer!61 lt!5843 (seqFromList!35 lt!5865))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!7 (LexerInterface!63 List!729 List!728 List!734) Unit!336)

(assert (=> b!45240 (= lt!5866 (lemmaLexThenRulesProducesEachTokenIndividually!7 Lexer!61 lt!5843 lt!5844 lt!5865))))

(assert (=> b!45240 (= lt!5865 (list!198 (_1!624 lt!5864)))))

(assert (=> b!45240 (= lt!5864 (lex!42 Lexer!61 lt!5843 (seqFromList!34 lt!5844)))))

(declare-fun b!45241 () Bool)

(declare-fun e!25395 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!20 (LexerInterface!63 List!729 List!734) Bool)

(declare-fun lex!43 (LexerInterface!63 List!729 BalanceConc!280) tuple2!888)

(assert (=> b!45241 (= e!25395 (rulesProduceEachTokenIndividuallyList!20 Lexer!61 lt!5843 (list!198 (_1!624 (lex!43 Lexer!61 lt!5843 (seqFromList!34 lt!5844))))))))

(declare-fun d!5274 () Bool)

(declare-fun e!25397 () Bool)

(assert (=> d!5274 e!25397))

(declare-fun res!30989 () Bool)

(assert (=> d!5274 (=> (not res!30989) (not e!25397))))

(declare-fun lt!5867 () Bool)

(assert (=> d!5274 (= res!30989 lt!5867)))

(assert (=> d!5274 (= lt!5867 e!25394)))

(declare-fun res!30987 () Bool)

(assert (=> d!5274 (=> res!30987 e!25394)))

(declare-fun e!25396 () Bool)

(assert (=> d!5274 (= res!30987 (not e!25396))))

(declare-fun res!30986 () Bool)

(assert (=> d!5274 (=> (not res!30986) (not e!25396))))

(assert (=> d!5274 (= res!30986 (not (isEmpty!148 lt!5843)))))

(assert (=> d!5274 (= (lexThenRulesProduceEachTokenIndividually!17 Lexer!61 lt!5843 lt!5844) lt!5867)))

(declare-fun b!45242 () Bool)

(declare-fun res!30990 () Bool)

(assert (=> b!45242 (=> res!30990 e!25395)))

(declare-fun rulesInvariant!56 (LexerInterface!63 List!729) Bool)

(assert (=> b!45242 (= res!30990 (not (rulesInvariant!56 Lexer!61 lt!5843)))))

(declare-fun b!45243 () Bool)

(assert (=> b!45243 (= e!25397 e!25395)))

(declare-fun res!30988 () Bool)

(assert (=> b!45243 (=> res!30988 e!25395)))

(assert (=> b!45243 (= res!30988 (isEmpty!148 lt!5843))))

(declare-fun b!45244 () Bool)

(assert (=> b!45244 (= e!25396 (rulesInvariant!55 Lexer!61 lt!5843))))

(assert (= (and d!5274 res!30986) b!45244))

(assert (= (and d!5274 (not res!30987)) b!45240))

(assert (= (and d!5274 res!30989) b!45243))

(assert (= (and b!45243 (not res!30988)) b!45242))

(assert (= (and b!45242 (not res!30990)) b!45241))

(assert (=> d!5274 m!19414))

(declare-fun m!19544 () Bool)

(assert (=> b!45240 m!19544))

(declare-fun m!19546 () Bool)

(assert (=> b!45240 m!19546))

(assert (=> b!45240 m!19544))

(declare-fun m!19548 () Bool)

(assert (=> b!45240 m!19548))

(declare-fun m!19550 () Bool)

(assert (=> b!45240 m!19550))

(assert (=> b!45240 m!19548))

(assert (=> b!45240 m!19408))

(assert (=> b!45240 m!19408))

(declare-fun m!19552 () Bool)

(assert (=> b!45240 m!19552))

(declare-fun m!19554 () Bool)

(assert (=> b!45240 m!19554))

(declare-fun m!19556 () Bool)

(assert (=> b!45242 m!19556))

(assert (=> b!45243 m!19414))

(assert (=> b!45241 m!19408))

(assert (=> b!45241 m!19408))

(declare-fun m!19558 () Bool)

(assert (=> b!45241 m!19558))

(declare-fun m!19560 () Bool)

(assert (=> b!45241 m!19560))

(assert (=> b!45241 m!19560))

(declare-fun m!19562 () Bool)

(assert (=> b!45241 m!19562))

(assert (=> b!45244 m!19436))

(assert (=> b!45185 d!5274))

(declare-fun d!5276 () Bool)

(assert (=> d!5276 (= (valid!224 cacheDown!333) (validCacheMapDown!23 (cache!727 cacheDown!333)))))

(declare-fun bs!6262 () Bool)

(assert (= bs!6262 d!5276))

(assert (=> bs!6262 m!19536))

(assert (=> b!45165 d!5276))

(declare-fun d!5278 () Bool)

(declare-fun res!30993 () Bool)

(declare-fun e!25400 () Bool)

(assert (=> d!5278 (=> (not res!30993) (not e!25400))))

(declare-fun rulesValid!19 (LexerInterface!63 List!729) Bool)

(assert (=> d!5278 (= res!30993 (rulesValid!19 Lexer!61 lt!5843))))

(assert (=> d!5278 (= (rulesInvariant!55 Lexer!61 lt!5843) e!25400)))

(declare-fun b!45247 () Bool)

(declare-datatypes ((List!735 0))(
  ( (Nil!733) (Cons!733 (h!6129 String!1091) (t!16654 List!735)) )
))
(declare-fun noDuplicateTag!19 (LexerInterface!63 List!729 List!735) Bool)

(assert (=> b!45247 (= e!25400 (noDuplicateTag!19 Lexer!61 lt!5843 Nil!733))))

(assert (= (and d!5278 res!30993) b!45247))

(declare-fun m!19564 () Bool)

(assert (=> d!5278 m!19564))

(declare-fun m!19566 () Bool)

(assert (=> b!45247 m!19566))

(assert (=> b!45176 d!5278))

(declare-fun d!5280 () Bool)

(assert (=> d!5280 (= (list!199 (_2!624 lt!5840)) (list!201 (c!16101 (_2!624 lt!5840))))))

(declare-fun bs!6263 () Bool)

(assert (= bs!6263 d!5280))

(declare-fun m!19568 () Bool)

(assert (=> bs!6263 m!19568))

(assert (=> b!45186 d!5280))

(declare-fun d!5282 () Bool)

(declare-fun c!16108 () Bool)

(assert (=> d!5282 (= c!16108 ((_ is Node!140) (c!16101 input!525)))))

(declare-fun e!25405 () Bool)

(assert (=> d!5282 (= (inv!1017 (c!16101 input!525)) e!25405)))

(declare-fun b!45254 () Bool)

(declare-fun inv!1018 (Conc!140) Bool)

(assert (=> b!45254 (= e!25405 (inv!1018 (c!16101 input!525)))))

(declare-fun b!45255 () Bool)

(declare-fun e!25406 () Bool)

(assert (=> b!45255 (= e!25405 e!25406)))

(declare-fun res!30996 () Bool)

(assert (=> b!45255 (= res!30996 (not ((_ is Leaf!336) (c!16101 input!525))))))

(assert (=> b!45255 (=> res!30996 e!25406)))

(declare-fun b!45256 () Bool)

(declare-fun inv!1019 (Conc!140) Bool)

(assert (=> b!45256 (= e!25406 (inv!1019 (c!16101 input!525)))))

(assert (= (and d!5282 c!16108) b!45254))

(assert (= (and d!5282 (not c!16108)) b!45255))

(assert (= (and b!45255 (not res!30996)) b!45256))

(declare-fun m!19570 () Bool)

(assert (=> b!45254 m!19570))

(declare-fun m!19572 () Bool)

(assert (=> b!45256 m!19572))

(assert (=> b!45193 d!5282))

(declare-fun b!45267 () Bool)

(declare-fun res!31008 () Bool)

(declare-fun e!25409 () Bool)

(assert (=> b!45267 (=> (not res!31008) (not e!25409))))

(declare-fun lt!5872 () tuple4!76)

(assert (=> b!45267 (= res!31008 (= (list!199 (_2!624 (_1!625 lt!5872))) (list!199 (_2!624 (lex!42 Lexer!61 lt!5843 input!525)))))))

(declare-fun b!45268 () Bool)

(declare-fun res!31009 () Bool)

(assert (=> b!45268 (=> (not res!31009) (not e!25409))))

(assert (=> b!45268 (= res!31009 (valid!223 (_2!625 lt!5872)))))

(declare-fun b!45269 () Bool)

(declare-fun res!31010 () Bool)

(assert (=> b!45269 (=> (not res!31010) (not e!25409))))

(assert (=> b!45269 (= res!31010 (valid!224 (_3!180 lt!5872)))))

(declare-fun b!45270 () Bool)

(assert (=> b!45270 (= e!25409 (= (totalInput!1539 (_4!38 lt!5872)) input!525))))

(declare-fun d!5284 () Bool)

(assert (=> d!5284 e!25409))

(declare-fun res!31007 () Bool)

(assert (=> d!5284 (=> (not res!31007) (not e!25409))))

(assert (=> d!5284 (= res!31007 (= (list!198 (_1!624 (_1!625 lt!5872))) (list!198 (_1!624 (lex!42 Lexer!61 lt!5843 input!525)))))))

(declare-fun lt!5873 () tuple4!76)

(assert (=> d!5284 (= lt!5872 (tuple4!77 (_1!625 lt!5873) (_2!625 lt!5873) (_3!180 lt!5873) (_4!38 lt!5873)))))

(declare-fun lexTailRecV3Mem!13 (LexerInterface!63 List!729 BalanceConc!280 BalanceConc!280 BalanceConc!280 BalanceConc!282 CacheUp!164 CacheDown!162 CacheFurthestNullable!112) tuple4!76)

(assert (=> d!5284 (= lt!5873 (lexTailRecV3Mem!13 Lexer!61 lt!5843 input!525 (BalanceConc!281 Empty!140) input!525 (BalanceConc!283 Empty!141) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!5284 (not (isEmpty!148 lt!5843))))

(assert (=> d!5284 (= (lexMem!28 Lexer!61 lt!5843 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!5872)))

(declare-fun b!45271 () Bool)

(declare-fun res!31011 () Bool)

(assert (=> b!45271 (=> (not res!31011) (not e!25409))))

(assert (=> b!45271 (= res!31011 (valid!222 (_4!38 lt!5872)))))

(assert (= (and d!5284 res!31007) b!45267))

(assert (= (and b!45267 res!31008) b!45271))

(assert (= (and b!45271 res!31011) b!45268))

(assert (= (and b!45268 res!31009) b!45269))

(assert (= (and b!45269 res!31010) b!45270))

(declare-fun m!19574 () Bool)

(assert (=> b!45271 m!19574))

(declare-fun m!19576 () Bool)

(assert (=> d!5284 m!19576))

(declare-fun m!19578 () Bool)

(assert (=> d!5284 m!19578))

(assert (=> d!5284 m!19414))

(declare-fun m!19580 () Bool)

(assert (=> d!5284 m!19580))

(assert (=> d!5284 m!19450))

(declare-fun m!19582 () Bool)

(assert (=> b!45269 m!19582))

(declare-fun m!19584 () Bool)

(assert (=> b!45267 m!19584))

(assert (=> b!45267 m!19450))

(declare-fun m!19586 () Bool)

(assert (=> b!45267 m!19586))

(declare-fun m!19588 () Bool)

(assert (=> b!45268 m!19588))

(assert (=> b!45187 d!5284))

(declare-fun d!5286 () Bool)

(assert (=> d!5286 (valid!224 (_3!180 lt!5835))))

(declare-fun Unit!338 () Unit!336)

(assert (=> d!5286 (= (lemmaInvariant!59 (_3!180 lt!5835)) Unit!338)))

(declare-fun bs!6264 () Bool)

(assert (= bs!6264 d!5286))

(declare-fun m!19590 () Bool)

(assert (=> bs!6264 m!19590))

(assert (=> b!45187 d!5286))

(declare-fun d!5288 () Bool)

(assert (=> d!5288 (= (list!198 (_1!624 (_1!625 lt!5835))) (list!200 (c!16102 (_1!624 (_1!625 lt!5835)))))))

(declare-fun bs!6265 () Bool)

(assert (= bs!6265 d!5288))

(declare-fun m!19592 () Bool)

(assert (=> bs!6265 m!19592))

(assert (=> b!45187 d!5288))

(declare-fun b!45272 () Bool)

(declare-fun e!25410 () Bool)

(declare-fun e!25412 () Bool)

(assert (=> b!45272 (= e!25410 e!25412)))

(declare-fun res!31013 () Bool)

(declare-fun lt!5874 () tuple2!888)

(assert (=> b!45272 (= res!31013 (< (size!720 (_2!624 lt!5874)) (size!720 input!525)))))

(assert (=> b!45272 (=> (not res!31013) (not e!25412))))

(declare-fun b!45273 () Bool)

(declare-fun res!31012 () Bool)

(declare-fun e!25411 () Bool)

(assert (=> b!45273 (=> (not res!31012) (not e!25411))))

(assert (=> b!45273 (= res!31012 (= (list!198 (_1!624 lt!5874)) (_1!626 (lexList!16 Lexer!61 lt!5843 (list!199 input!525)))))))

(declare-fun b!45274 () Bool)

(assert (=> b!45274 (= e!25410 (= (_2!624 lt!5874) input!525))))

(declare-fun d!5290 () Bool)

(assert (=> d!5290 e!25411))

(declare-fun res!31014 () Bool)

(assert (=> d!5290 (=> (not res!31014) (not e!25411))))

(assert (=> d!5290 (= res!31014 e!25410)))

(declare-fun c!16109 () Bool)

(assert (=> d!5290 (= c!16109 (> (size!721 (_1!624 lt!5874)) 0))))

(assert (=> d!5290 (= lt!5874 (lexTailRecV2!13 Lexer!61 lt!5843 input!525 (BalanceConc!281 Empty!140) input!525 (BalanceConc!283 Empty!141)))))

(assert (=> d!5290 (= (lex!42 Lexer!61 lt!5843 input!525) lt!5874)))

(declare-fun b!45275 () Bool)

(assert (=> b!45275 (= e!25412 (not (isEmpty!149 (_1!624 lt!5874))))))

(declare-fun b!45276 () Bool)

(assert (=> b!45276 (= e!25411 (= (list!199 (_2!624 lt!5874)) (_2!626 (lexList!16 Lexer!61 lt!5843 (list!199 input!525)))))))

(assert (= (and d!5290 c!16109) b!45272))

(assert (= (and d!5290 (not c!16109)) b!45274))

(assert (= (and b!45272 res!31013) b!45275))

(assert (= (and d!5290 res!31014) b!45273))

(assert (= (and b!45273 res!31012) b!45276))

(declare-fun m!19594 () Bool)

(assert (=> b!45275 m!19594))

(declare-fun m!19596 () Bool)

(assert (=> d!5290 m!19596))

(declare-fun m!19598 () Bool)

(assert (=> d!5290 m!19598))

(declare-fun m!19600 () Bool)

(assert (=> b!45276 m!19600))

(assert (=> b!45276 m!19410))

(assert (=> b!45276 m!19410))

(declare-fun m!19602 () Bool)

(assert (=> b!45276 m!19602))

(declare-fun m!19604 () Bool)

(assert (=> b!45273 m!19604))

(assert (=> b!45273 m!19410))

(assert (=> b!45273 m!19410))

(assert (=> b!45273 m!19602))

(declare-fun m!19606 () Bool)

(assert (=> b!45272 m!19606))

(declare-fun m!19608 () Bool)

(assert (=> b!45272 m!19608))

(assert (=> b!45187 d!5290))

(declare-fun d!5292 () Bool)

(assert (=> d!5292 (= (list!198 (_1!624 lt!5834)) (list!200 (c!16102 (_1!624 lt!5834))))))

(declare-fun bs!6266 () Bool)

(assert (= bs!6266 d!5292))

(declare-fun m!19610 () Bool)

(assert (=> bs!6266 m!19610))

(assert (=> b!45187 d!5292))

(declare-fun d!5294 () Bool)

(assert (=> d!5294 (valid!223 (_2!625 lt!5835))))

(declare-fun Unit!339 () Unit!336)

(assert (=> d!5294 (= (lemmaInvariant!60 (_2!625 lt!5835)) Unit!339)))

(declare-fun bs!6267 () Bool)

(assert (= bs!6267 d!5294))

(assert (=> bs!6267 m!19434))

(assert (=> b!45187 d!5294))

(declare-fun d!5296 () Bool)

(assert (=> d!5296 (= (array_inv!263 (_keys!536 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))) (bvsge (size!715 (_keys!536 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!45157 d!5296))

(declare-fun d!5298 () Bool)

(assert (=> d!5298 (= (array_inv!264 (_values!523 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))) (bvsge (size!716 (_values!523 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!45157 d!5298))

(declare-fun d!5300 () Bool)

(assert (=> d!5300 (= (valid!223 (_2!625 lt!5835)) (validCacheMapUp!21 (cache!728 (_2!625 lt!5835))))))

(declare-fun bs!6268 () Bool)

(assert (= bs!6268 d!5300))

(declare-fun m!19612 () Bool)

(assert (=> bs!6268 m!19612))

(assert (=> b!45194 d!5300))

(declare-fun bs!6269 () Bool)

(declare-fun d!5302 () Bool)

(assert (= bs!6269 (and d!5302 b!45179)))

(declare-fun lambda!834 () Int)

(assert (=> bs!6269 (= lambda!834 lambda!831)))

(declare-fun b!45285 () Bool)

(declare-fun e!25421 () Bool)

(assert (=> b!45285 (= e!25421 true)))

(declare-fun b!45284 () Bool)

(declare-fun e!25420 () Bool)

(assert (=> b!45284 (= e!25420 e!25421)))

(declare-fun b!45283 () Bool)

(declare-fun e!25419 () Bool)

(assert (=> b!45283 (= e!25419 e!25420)))

(assert (=> d!5302 e!25419))

(assert (= b!45284 b!45285))

(assert (= b!45283 b!45284))

(assert (= (and d!5302 ((_ is Cons!727) lt!5843)) b!45283))

(assert (=> b!45285 (< (dynLambda!103 order!163 (toValue!648 (transformation!169 (h!6123 lt!5843)))) (dynLambda!104 order!165 lambda!834))))

(assert (=> b!45285 (< (dynLambda!105 order!167 (toChars!507 (transformation!169 (h!6123 lt!5843)))) (dynLambda!104 order!165 lambda!834))))

(assert (=> d!5302 true))

(declare-fun lt!5877 () Bool)

(assert (=> d!5302 (= lt!5877 (forall!85 lt!5832 lambda!834))))

(declare-fun e!25418 () Bool)

(assert (=> d!5302 (= lt!5877 e!25418)))

(declare-fun res!31019 () Bool)

(assert (=> d!5302 (=> res!31019 e!25418)))

(assert (=> d!5302 (= res!31019 (not ((_ is Cons!732) lt!5832)))))

(assert (=> d!5302 (not (isEmpty!148 lt!5843))))

(assert (=> d!5302 (= (rulesProduceEachTokenIndividuallyList!19 Lexer!61 lt!5843 lt!5832) lt!5877)))

(declare-fun b!45281 () Bool)

(declare-fun e!25417 () Bool)

(assert (=> b!45281 (= e!25418 e!25417)))

(declare-fun res!31020 () Bool)

(assert (=> b!45281 (=> (not res!31020) (not e!25417))))

(declare-fun rulesProduceIndividualToken!8 (LexerInterface!63 List!729 Token!104) Bool)

(assert (=> b!45281 (= res!31020 (rulesProduceIndividualToken!8 Lexer!61 lt!5843 (h!6128 lt!5832)))))

(declare-fun b!45282 () Bool)

(assert (=> b!45282 (= e!25417 (rulesProduceEachTokenIndividuallyList!19 Lexer!61 lt!5843 (t!16651 lt!5832)))))

(assert (= (and d!5302 (not res!31019)) b!45281))

(assert (= (and b!45281 res!31020) b!45282))

(declare-fun m!19614 () Bool)

(assert (=> d!5302 m!19614))

(assert (=> d!5302 m!19414))

(declare-fun m!19616 () Bool)

(assert (=> b!45281 m!19616))

(declare-fun m!19618 () Bool)

(assert (=> b!45282 m!19618))

(assert (=> b!45167 d!5302))

(declare-fun d!5304 () Bool)

(assert (=> d!5304 (= (inv!1014 (totalInput!1539 cacheFurthestNullable!45)) (isBalanced!26 (c!16101 (totalInput!1539 cacheFurthestNullable!45))))))

(declare-fun bs!6270 () Bool)

(assert (= bs!6270 d!5304))

(declare-fun m!19620 () Bool)

(assert (=> bs!6270 m!19620))

(assert (=> b!45168 d!5304))

(declare-fun d!5306 () Bool)

(declare-fun c!16110 () Bool)

(assert (=> d!5306 (= c!16110 ((_ is Node!140) (c!16101 (totalInput!1539 cacheFurthestNullable!45))))))

(declare-fun e!25422 () Bool)

(assert (=> d!5306 (= (inv!1017 (c!16101 (totalInput!1539 cacheFurthestNullable!45))) e!25422)))

(declare-fun b!45288 () Bool)

(assert (=> b!45288 (= e!25422 (inv!1018 (c!16101 (totalInput!1539 cacheFurthestNullable!45))))))

(declare-fun b!45289 () Bool)

(declare-fun e!25423 () Bool)

(assert (=> b!45289 (= e!25422 e!25423)))

(declare-fun res!31021 () Bool)

(assert (=> b!45289 (= res!31021 (not ((_ is Leaf!336) (c!16101 (totalInput!1539 cacheFurthestNullable!45)))))))

(assert (=> b!45289 (=> res!31021 e!25423)))

(declare-fun b!45290 () Bool)

(assert (=> b!45290 (= e!25423 (inv!1019 (c!16101 (totalInput!1539 cacheFurthestNullable!45))))))

(assert (= (and d!5306 c!16110) b!45288))

(assert (= (and d!5306 (not c!16110)) b!45289))

(assert (= (and b!45289 (not res!31021)) b!45290))

(declare-fun m!19622 () Bool)

(assert (=> b!45288 m!19622))

(declare-fun m!19624 () Bool)

(assert (=> b!45290 m!19624))

(assert (=> b!45178 d!5306))

(declare-fun d!5308 () Bool)

(declare-fun res!31026 () Bool)

(declare-fun e!25428 () Bool)

(assert (=> d!5308 (=> res!31026 e!25428)))

(assert (=> d!5308 (= res!31026 ((_ is Nil!732) lt!5832))))

(assert (=> d!5308 (= (forall!85 lt!5832 lambda!831) e!25428)))

(declare-fun b!45295 () Bool)

(declare-fun e!25429 () Bool)

(assert (=> b!45295 (= e!25428 e!25429)))

(declare-fun res!31027 () Bool)

(assert (=> b!45295 (=> (not res!31027) (not e!25429))))

(declare-fun dynLambda!106 (Int Token!104) Bool)

(assert (=> b!45295 (= res!31027 (dynLambda!106 lambda!831 (h!6128 lt!5832)))))

(declare-fun b!45296 () Bool)

(assert (=> b!45296 (= e!25429 (forall!85 (t!16651 lt!5832) lambda!831))))

(assert (= (and d!5308 (not res!31026)) b!45295))

(assert (= (and b!45295 res!31027) b!45296))

(declare-fun b_lambda!257 () Bool)

(assert (=> (not b_lambda!257) (not b!45295)))

(declare-fun m!19626 () Bool)

(assert (=> b!45295 m!19626))

(declare-fun m!19628 () Bool)

(assert (=> b!45296 m!19628))

(assert (=> b!45179 d!5308))

(declare-fun e!25437 () Bool)

(declare-fun setRes!1106 () Bool)

(declare-fun tp!30871 () Bool)

(declare-fun b!45301 () Bool)

(declare-fun inv!1020 (Context!186) Bool)

(assert (=> b!45301 (= e!25437 (and (inv!1020 (_2!620 (_1!621 (h!6126 (zeroValue!502 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333)))))))))) setRes!1106 tp!30871))))

(declare-fun condSetEmpty!1106 () Bool)

(assert (=> b!45301 (= condSetEmpty!1106 (= (_2!621 (h!6126 (zeroValue!502 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333)))))))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1106 () Bool)

(assert (=> setIsEmpty!1106 setRes!1106))

(declare-fun setNonEmpty!1106 () Bool)

(declare-fun tp!30872 () Bool)

(declare-fun setElem!1106 () Context!186)

(assert (=> setNonEmpty!1106 (= setRes!1106 (and tp!30872 (inv!1020 setElem!1106)))))

(declare-fun setRest!1106 () (InoxSet Context!186))

(assert (=> setNonEmpty!1106 (= (_2!621 (h!6126 (zeroValue!502 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1106 true) setRest!1106))))

(assert (=> b!45182 (= tp!30863 e!25437)))

(assert (= (and b!45301 condSetEmpty!1106) setIsEmpty!1106))

(assert (= (and b!45301 (not condSetEmpty!1106)) setNonEmpty!1106))

(assert (= (and b!45182 ((_ is Cons!730) (zeroValue!502 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333)))))))) b!45301))

(declare-fun m!19630 () Bool)

(assert (=> b!45301 m!19630))

(declare-fun m!19632 () Bool)

(assert (=> setNonEmpty!1106 m!19632))

(declare-fun e!25440 () Bool)

(declare-fun tp!30873 () Bool)

(declare-fun setRes!1107 () Bool)

(declare-fun b!45302 () Bool)

(assert (=> b!45302 (= e!25440 (and (inv!1020 (_2!620 (_1!621 (h!6126 (minValue!502 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333)))))))))) setRes!1107 tp!30873))))

(declare-fun condSetEmpty!1107 () Bool)

(assert (=> b!45302 (= condSetEmpty!1107 (= (_2!621 (h!6126 (minValue!502 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333)))))))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1107 () Bool)

(assert (=> setIsEmpty!1107 setRes!1107))

(declare-fun setNonEmpty!1107 () Bool)

(declare-fun tp!30874 () Bool)

(declare-fun setElem!1107 () Context!186)

(assert (=> setNonEmpty!1107 (= setRes!1107 (and tp!30874 (inv!1020 setElem!1107)))))

(declare-fun setRest!1107 () (InoxSet Context!186))

(assert (=> setNonEmpty!1107 (= (_2!621 (h!6126 (minValue!502 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1107 true) setRest!1107))))

(assert (=> b!45182 (= tp!30857 e!25440)))

(assert (= (and b!45302 condSetEmpty!1107) setIsEmpty!1107))

(assert (= (and b!45302 (not condSetEmpty!1107)) setNonEmpty!1107))

(assert (= (and b!45182 ((_ is Cons!730) (minValue!502 (v!12471 (underlying!687 (v!12472 (underlying!688 (cache!727 cacheDown!333)))))))) b!45302))

(declare-fun m!19634 () Bool)

(assert (=> b!45302 m!19634))

(declare-fun m!19636 () Bool)

(assert (=> setNonEmpty!1107 m!19636))

(declare-fun e!25449 () Bool)

(declare-fun b!45307 () Bool)

(declare-fun setRes!1110 () Bool)

(declare-fun tp!30879 () Bool)

(assert (=> b!45307 (= e!25449 (and (inv!1020 (_1!622 (_1!623 (h!6127 mapDefault!947)))) setRes!1110 tp!30879))))

(declare-fun condSetEmpty!1110 () Bool)

(assert (=> b!45307 (= condSetEmpty!1110 (= (_2!623 (h!6127 mapDefault!947)) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1110 () Bool)

(assert (=> setIsEmpty!1110 setRes!1110))

(declare-fun setNonEmpty!1110 () Bool)

(declare-fun tp!30880 () Bool)

(declare-fun setElem!1110 () Context!186)

(assert (=> setNonEmpty!1110 (= setRes!1110 (and tp!30880 (inv!1020 setElem!1110)))))

(declare-fun setRest!1110 () (InoxSet Context!186))

(assert (=> setNonEmpty!1110 (= (_2!623 (h!6127 mapDefault!947)) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1110 true) setRest!1110))))

(assert (=> b!45173 (= tp!30858 e!25449)))

(assert (= (and b!45307 condSetEmpty!1110) setIsEmpty!1110))

(assert (= (and b!45307 (not condSetEmpty!1110)) setNonEmpty!1110))

(assert (= (and b!45173 ((_ is Cons!731) mapDefault!947)) b!45307))

(declare-fun m!19638 () Bool)

(assert (=> b!45307 m!19638))

(declare-fun m!19640 () Bool)

(assert (=> setNonEmpty!1110 m!19640))

(declare-fun tp!30881 () Bool)

(declare-fun e!25452 () Bool)

(declare-fun setRes!1111 () Bool)

(declare-fun b!45308 () Bool)

(assert (=> b!45308 (= e!25452 (and (inv!1020 (_1!622 (_1!623 (h!6127 (zeroValue!503 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320)))))))))) setRes!1111 tp!30881))))

(declare-fun condSetEmpty!1111 () Bool)

(assert (=> b!45308 (= condSetEmpty!1111 (= (_2!623 (h!6127 (zeroValue!503 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320)))))))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1111 () Bool)

(assert (=> setIsEmpty!1111 setRes!1111))

(declare-fun setNonEmpty!1111 () Bool)

(declare-fun tp!30882 () Bool)

(declare-fun setElem!1111 () Context!186)

(assert (=> setNonEmpty!1111 (= setRes!1111 (and tp!30882 (inv!1020 setElem!1111)))))

(declare-fun setRest!1111 () (InoxSet Context!186))

(assert (=> setNonEmpty!1111 (= (_2!623 (h!6127 (zeroValue!503 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1111 true) setRest!1111))))

(assert (=> b!45174 (= tp!30860 e!25452)))

(assert (= (and b!45308 condSetEmpty!1111) setIsEmpty!1111))

(assert (= (and b!45308 (not condSetEmpty!1111)) setNonEmpty!1111))

(assert (= (and b!45174 ((_ is Cons!731) (zeroValue!503 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320)))))))) b!45308))

(declare-fun m!19642 () Bool)

(assert (=> b!45308 m!19642))

(declare-fun m!19644 () Bool)

(assert (=> setNonEmpty!1111 m!19644))

(declare-fun tp!30883 () Bool)

(declare-fun e!25455 () Bool)

(declare-fun setRes!1112 () Bool)

(declare-fun b!45309 () Bool)

(assert (=> b!45309 (= e!25455 (and (inv!1020 (_1!622 (_1!623 (h!6127 (minValue!503 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320)))))))))) setRes!1112 tp!30883))))

(declare-fun condSetEmpty!1112 () Bool)

(assert (=> b!45309 (= condSetEmpty!1112 (= (_2!623 (h!6127 (minValue!503 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320)))))))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1112 () Bool)

(assert (=> setIsEmpty!1112 setRes!1112))

(declare-fun setNonEmpty!1112 () Bool)

(declare-fun tp!30884 () Bool)

(declare-fun setElem!1112 () Context!186)

(assert (=> setNonEmpty!1112 (= setRes!1112 (and tp!30884 (inv!1020 setElem!1112)))))

(declare-fun setRest!1112 () (InoxSet Context!186))

(assert (=> setNonEmpty!1112 (= (_2!623 (h!6127 (minValue!503 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1112 true) setRest!1112))))

(assert (=> b!45174 (= tp!30845 e!25455)))

(assert (= (and b!45309 condSetEmpty!1112) setIsEmpty!1112))

(assert (= (and b!45309 (not condSetEmpty!1112)) setNonEmpty!1112))

(assert (= (and b!45174 ((_ is Cons!731) (minValue!503 (v!12473 (underlying!689 (v!12474 (underlying!690 (cache!728 cacheUp!320)))))))) b!45309))

(declare-fun m!19646 () Bool)

(assert (=> b!45309 m!19646))

(declare-fun m!19648 () Bool)

(assert (=> setNonEmpty!1112 m!19648))

(declare-fun mapIsEmpty!951 () Bool)

(declare-fun mapRes!951 () Bool)

(assert (=> mapIsEmpty!951 mapRes!951))

(declare-fun setNonEmpty!1117 () Bool)

(declare-fun setRes!1117 () Bool)

(declare-fun tp!30896 () Bool)

(declare-fun setElem!1117 () Context!186)

(assert (=> setNonEmpty!1117 (= setRes!1117 (and tp!30896 (inv!1020 setElem!1117)))))

(declare-fun mapValue!951 () List!732)

(declare-fun setRest!1117 () (InoxSet Context!186))

(assert (=> setNonEmpty!1117 (= (_2!621 (h!6126 mapValue!951)) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1117 true) setRest!1117))))

(declare-fun tp!30895 () Bool)

(declare-fun mapDefault!951 () List!732)

(declare-fun setRes!1118 () Bool)

(declare-fun b!45316 () Bool)

(declare-fun e!25469 () Bool)

(assert (=> b!45316 (= e!25469 (and (inv!1020 (_2!620 (_1!621 (h!6126 mapDefault!951)))) setRes!1118 tp!30895))))

(declare-fun condSetEmpty!1118 () Bool)

(assert (=> b!45316 (= condSetEmpty!1118 (= (_2!621 (h!6126 mapDefault!951)) ((as const (Array Context!186 Bool)) false)))))

(declare-fun mapNonEmpty!951 () Bool)

(declare-fun tp!30898 () Bool)

(declare-fun e!25471 () Bool)

(assert (=> mapNonEmpty!951 (= mapRes!951 (and tp!30898 e!25471))))

(declare-fun mapKey!951 () (_ BitVec 32))

(declare-fun mapRest!951 () (Array (_ BitVec 32) List!732))

(assert (=> mapNonEmpty!951 (= mapRest!948 (store mapRest!951 mapKey!951 mapValue!951))))

(declare-fun setIsEmpty!1117 () Bool)

(assert (=> setIsEmpty!1117 setRes!1118))

(declare-fun condMapEmpty!951 () Bool)

(assert (=> mapNonEmpty!946 (= condMapEmpty!951 (= mapRest!948 ((as const (Array (_ BitVec 32) List!732)) mapDefault!951)))))

(assert (=> mapNonEmpty!946 (= tp!30846 (and e!25469 mapRes!951))))

(declare-fun tp!30899 () Bool)

(declare-fun b!45317 () Bool)

(assert (=> b!45317 (= e!25471 (and (inv!1020 (_2!620 (_1!621 (h!6126 mapValue!951)))) setRes!1117 tp!30899))))

(declare-fun condSetEmpty!1117 () Bool)

(assert (=> b!45317 (= condSetEmpty!1117 (= (_2!621 (h!6126 mapValue!951)) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setNonEmpty!1118 () Bool)

(declare-fun tp!30897 () Bool)

(declare-fun setElem!1118 () Context!186)

(assert (=> setNonEmpty!1118 (= setRes!1118 (and tp!30897 (inv!1020 setElem!1118)))))

(declare-fun setRest!1118 () (InoxSet Context!186))

(assert (=> setNonEmpty!1118 (= (_2!621 (h!6126 mapDefault!951)) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1118 true) setRest!1118))))

(declare-fun setIsEmpty!1118 () Bool)

(assert (=> setIsEmpty!1118 setRes!1117))

(assert (= (and mapNonEmpty!946 condMapEmpty!951) mapIsEmpty!951))

(assert (= (and mapNonEmpty!946 (not condMapEmpty!951)) mapNonEmpty!951))

(assert (= (and b!45317 condSetEmpty!1117) setIsEmpty!1118))

(assert (= (and b!45317 (not condSetEmpty!1117)) setNonEmpty!1117))

(assert (= (and mapNonEmpty!951 ((_ is Cons!730) mapValue!951)) b!45317))

(assert (= (and b!45316 condSetEmpty!1118) setIsEmpty!1117))

(assert (= (and b!45316 (not condSetEmpty!1118)) setNonEmpty!1118))

(assert (= (and mapNonEmpty!946 ((_ is Cons!730) mapDefault!951)) b!45316))

(declare-fun m!19650 () Bool)

(assert (=> setNonEmpty!1118 m!19650))

(declare-fun m!19652 () Bool)

(assert (=> setNonEmpty!1117 m!19652))

(declare-fun m!19654 () Bool)

(assert (=> b!45316 m!19654))

(declare-fun m!19656 () Bool)

(assert (=> b!45317 m!19656))

(declare-fun m!19658 () Bool)

(assert (=> mapNonEmpty!951 m!19658))

(declare-fun e!25476 () Bool)

(declare-fun setRes!1119 () Bool)

(declare-fun b!45318 () Bool)

(declare-fun tp!30900 () Bool)

(assert (=> b!45318 (= e!25476 (and (inv!1020 (_2!620 (_1!621 (h!6126 mapValue!947)))) setRes!1119 tp!30900))))

(declare-fun condSetEmpty!1119 () Bool)

(assert (=> b!45318 (= condSetEmpty!1119 (= (_2!621 (h!6126 mapValue!947)) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1119 () Bool)

(assert (=> setIsEmpty!1119 setRes!1119))

(declare-fun setNonEmpty!1119 () Bool)

(declare-fun tp!30901 () Bool)

(declare-fun setElem!1119 () Context!186)

(assert (=> setNonEmpty!1119 (= setRes!1119 (and tp!30901 (inv!1020 setElem!1119)))))

(declare-fun setRest!1119 () (InoxSet Context!186))

(assert (=> setNonEmpty!1119 (= (_2!621 (h!6126 mapValue!947)) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1119 true) setRest!1119))))

(assert (=> mapNonEmpty!946 (= tp!30859 e!25476)))

(assert (= (and b!45318 condSetEmpty!1119) setIsEmpty!1119))

(assert (= (and b!45318 (not condSetEmpty!1119)) setNonEmpty!1119))

(assert (= (and mapNonEmpty!946 ((_ is Cons!730) mapValue!947)) b!45318))

(declare-fun m!19660 () Bool)

(assert (=> b!45318 m!19660))

(declare-fun m!19662 () Bool)

(assert (=> setNonEmpty!1119 m!19662))

(declare-fun mapNonEmpty!954 () Bool)

(declare-fun mapRes!954 () Bool)

(declare-fun tp!30915 () Bool)

(declare-fun e!25493 () Bool)

(assert (=> mapNonEmpty!954 (= mapRes!954 (and tp!30915 e!25493))))

(declare-fun mapKey!954 () (_ BitVec 32))

(declare-fun mapValue!954 () List!733)

(declare-fun mapRest!954 () (Array (_ BitVec 32) List!733))

(assert (=> mapNonEmpty!954 (= mapRest!946 (store mapRest!954 mapKey!954 mapValue!954))))

(declare-fun mapIsEmpty!954 () Bool)

(assert (=> mapIsEmpty!954 mapRes!954))

(declare-fun setNonEmpty!1124 () Bool)

(declare-fun setRes!1124 () Bool)

(declare-fun tp!30913 () Bool)

(declare-fun setElem!1124 () Context!186)

(assert (=> setNonEmpty!1124 (= setRes!1124 (and tp!30913 (inv!1020 setElem!1124)))))

(declare-fun mapDefault!954 () List!733)

(declare-fun setRest!1125 () (InoxSet Context!186))

(assert (=> setNonEmpty!1124 (= (_2!623 (h!6127 mapDefault!954)) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1124 true) setRest!1125))))

(declare-fun setNonEmpty!1125 () Bool)

(declare-fun setRes!1125 () Bool)

(declare-fun tp!30914 () Bool)

(declare-fun setElem!1125 () Context!186)

(assert (=> setNonEmpty!1125 (= setRes!1125 (and tp!30914 (inv!1020 setElem!1125)))))

(declare-fun setRest!1124 () (InoxSet Context!186))

(assert (=> setNonEmpty!1125 (= (_2!623 (h!6127 mapValue!954)) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1125 true) setRest!1124))))

(declare-fun e!25491 () Bool)

(declare-fun tp!30912 () Bool)

(declare-fun b!45325 () Bool)

(assert (=> b!45325 (= e!25491 (and (inv!1020 (_1!622 (_1!623 (h!6127 mapDefault!954)))) setRes!1124 tp!30912))))

(declare-fun condSetEmpty!1125 () Bool)

(assert (=> b!45325 (= condSetEmpty!1125 (= (_2!623 (h!6127 mapDefault!954)) ((as const (Array Context!186 Bool)) false)))))

(declare-fun tp!30916 () Bool)

(declare-fun b!45326 () Bool)

(assert (=> b!45326 (= e!25493 (and (inv!1020 (_1!622 (_1!623 (h!6127 mapValue!954)))) setRes!1125 tp!30916))))

(declare-fun condSetEmpty!1124 () Bool)

(assert (=> b!45326 (= condSetEmpty!1124 (= (_2!623 (h!6127 mapValue!954)) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1125 () Bool)

(assert (=> setIsEmpty!1125 setRes!1125))

(declare-fun condMapEmpty!954 () Bool)

(assert (=> mapNonEmpty!948 (= condMapEmpty!954 (= mapRest!946 ((as const (Array (_ BitVec 32) List!733)) mapDefault!954)))))

(assert (=> mapNonEmpty!948 (= tp!30847 (and e!25491 mapRes!954))))

(declare-fun setIsEmpty!1124 () Bool)

(assert (=> setIsEmpty!1124 setRes!1124))

(assert (= (and mapNonEmpty!948 condMapEmpty!954) mapIsEmpty!954))

(assert (= (and mapNonEmpty!948 (not condMapEmpty!954)) mapNonEmpty!954))

(assert (= (and b!45326 condSetEmpty!1124) setIsEmpty!1125))

(assert (= (and b!45326 (not condSetEmpty!1124)) setNonEmpty!1125))

(assert (= (and mapNonEmpty!954 ((_ is Cons!731) mapValue!954)) b!45326))

(assert (= (and b!45325 condSetEmpty!1125) setIsEmpty!1124))

(assert (= (and b!45325 (not condSetEmpty!1125)) setNonEmpty!1124))

(assert (= (and mapNonEmpty!948 ((_ is Cons!731) mapDefault!954)) b!45325))

(declare-fun m!19664 () Bool)

(assert (=> b!45325 m!19664))

(declare-fun m!19666 () Bool)

(assert (=> mapNonEmpty!954 m!19666))

(declare-fun m!19668 () Bool)

(assert (=> b!45326 m!19668))

(declare-fun m!19670 () Bool)

(assert (=> setNonEmpty!1124 m!19670))

(declare-fun m!19672 () Bool)

(assert (=> setNonEmpty!1125 m!19672))

(declare-fun setRes!1126 () Bool)

(declare-fun b!45327 () Bool)

(declare-fun tp!30917 () Bool)

(declare-fun e!25497 () Bool)

(assert (=> b!45327 (= e!25497 (and (inv!1020 (_1!622 (_1!623 (h!6127 mapValue!946)))) setRes!1126 tp!30917))))

(declare-fun condSetEmpty!1126 () Bool)

(assert (=> b!45327 (= condSetEmpty!1126 (= (_2!623 (h!6127 mapValue!946)) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1126 () Bool)

(assert (=> setIsEmpty!1126 setRes!1126))

(declare-fun setNonEmpty!1126 () Bool)

(declare-fun tp!30918 () Bool)

(declare-fun setElem!1126 () Context!186)

(assert (=> setNonEmpty!1126 (= setRes!1126 (and tp!30918 (inv!1020 setElem!1126)))))

(declare-fun setRest!1126 () (InoxSet Context!186))

(assert (=> setNonEmpty!1126 (= (_2!623 (h!6127 mapValue!946)) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1126 true) setRest!1126))))

(assert (=> mapNonEmpty!948 (= tp!30854 e!25497)))

(assert (= (and b!45327 condSetEmpty!1126) setIsEmpty!1126))

(assert (= (and b!45327 (not condSetEmpty!1126)) setNonEmpty!1126))

(assert (= (and mapNonEmpty!948 ((_ is Cons!731) mapValue!946)) b!45327))

(declare-fun m!19674 () Bool)

(assert (=> b!45327 m!19674))

(declare-fun m!19676 () Bool)

(assert (=> setNonEmpty!1126 m!19676))

(declare-fun tp!30923 () Bool)

(declare-fun e!25503 () Bool)

(declare-fun b!45334 () Bool)

(declare-fun tp!30924 () Bool)

(assert (=> b!45334 (= e!25503 (and (inv!1017 (left!577 (c!16101 input!525))) tp!30923 (inv!1017 (right!907 (c!16101 input!525))) tp!30924))))

(declare-fun b!45335 () Bool)

(declare-fun inv!1021 (IArray!281) Bool)

(assert (=> b!45335 (= e!25503 (inv!1021 (xs!2719 (c!16101 input!525))))))

(assert (=> b!45193 (= tp!30865 (and (inv!1017 (c!16101 input!525)) e!25503))))

(assert (= (and b!45193 ((_ is Node!140) (c!16101 input!525))) b!45334))

(assert (= (and b!45193 ((_ is Leaf!336) (c!16101 input!525))) b!45335))

(declare-fun m!19678 () Bool)

(assert (=> b!45334 m!19678))

(declare-fun m!19680 () Bool)

(assert (=> b!45334 m!19680))

(declare-fun m!19682 () Bool)

(assert (=> b!45335 m!19682))

(assert (=> b!45193 m!19396))

(declare-fun tp!30925 () Bool)

(declare-fun setRes!1127 () Bool)

(declare-fun e!25506 () Bool)

(declare-fun b!45336 () Bool)

(assert (=> b!45336 (= e!25506 (and (inv!1020 (_2!620 (_1!621 (h!6126 mapDefault!946)))) setRes!1127 tp!30925))))

(declare-fun condSetEmpty!1127 () Bool)

(assert (=> b!45336 (= condSetEmpty!1127 (= (_2!621 (h!6126 mapDefault!946)) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1127 () Bool)

(assert (=> setIsEmpty!1127 setRes!1127))

(declare-fun setNonEmpty!1127 () Bool)

(declare-fun tp!30926 () Bool)

(declare-fun setElem!1127 () Context!186)

(assert (=> setNonEmpty!1127 (= setRes!1127 (and tp!30926 (inv!1020 setElem!1127)))))

(declare-fun setRest!1127 () (InoxSet Context!186))

(assert (=> setNonEmpty!1127 (= (_2!621 (h!6126 mapDefault!946)) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1127 true) setRest!1127))))

(assert (=> b!45177 (= tp!30856 e!25506)))

(assert (= (and b!45336 condSetEmpty!1127) setIsEmpty!1127))

(assert (= (and b!45336 (not condSetEmpty!1127)) setNonEmpty!1127))

(assert (= (and b!45177 ((_ is Cons!730) mapDefault!946)) b!45336))

(declare-fun m!19684 () Bool)

(assert (=> b!45336 m!19684))

(declare-fun m!19686 () Bool)

(assert (=> setNonEmpty!1127 m!19686))

(declare-fun b!45341 () Bool)

(declare-fun e!25513 () Bool)

(declare-fun setRes!1130 () Bool)

(declare-fun tp!30931 () Bool)

(assert (=> b!45341 (= e!25513 (and setRes!1130 tp!30931))))

(declare-fun condSetEmpty!1130 () Bool)

(assert (=> b!45341 (= condSetEmpty!1130 (= (_1!618 (_1!619 (h!6125 (zeroValue!501 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1130 () Bool)

(assert (=> setIsEmpty!1130 setRes!1130))

(declare-fun setNonEmpty!1130 () Bool)

(declare-fun tp!30932 () Bool)

(declare-fun setElem!1130 () Context!186)

(assert (=> setNonEmpty!1130 (= setRes!1130 (and tp!30932 (inv!1020 setElem!1130)))))

(declare-fun setRest!1130 () (InoxSet Context!186))

(assert (=> setNonEmpty!1130 (= (_1!618 (_1!619 (h!6125 (zeroValue!501 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1130 true) setRest!1130))))

(assert (=> b!45157 (= tp!30852 e!25513)))

(assert (= (and b!45341 condSetEmpty!1130) setIsEmpty!1130))

(assert (= (and b!45341 (not condSetEmpty!1130)) setNonEmpty!1130))

(assert (= (and b!45157 ((_ is Cons!729) (zeroValue!501 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45)))))))) b!45341))

(declare-fun m!19688 () Bool)

(assert (=> setNonEmpty!1130 m!19688))

(declare-fun b!45342 () Bool)

(declare-fun e!25515 () Bool)

(declare-fun setRes!1131 () Bool)

(declare-fun tp!30933 () Bool)

(assert (=> b!45342 (= e!25515 (and setRes!1131 tp!30933))))

(declare-fun condSetEmpty!1131 () Bool)

(assert (=> b!45342 (= condSetEmpty!1131 (= (_1!618 (_1!619 (h!6125 (minValue!501 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1131 () Bool)

(assert (=> setIsEmpty!1131 setRes!1131))

(declare-fun setNonEmpty!1131 () Bool)

(declare-fun tp!30934 () Bool)

(declare-fun setElem!1131 () Context!186)

(assert (=> setNonEmpty!1131 (= setRes!1131 (and tp!30934 (inv!1020 setElem!1131)))))

(declare-fun setRest!1131 () (InoxSet Context!186))

(assert (=> setNonEmpty!1131 (= (_1!618 (_1!619 (h!6125 (minValue!501 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1131 true) setRest!1131))))

(assert (=> b!45157 (= tp!30850 e!25515)))

(assert (= (and b!45342 condSetEmpty!1131) setIsEmpty!1131))

(assert (= (and b!45342 (not condSetEmpty!1131)) setNonEmpty!1131))

(assert (= (and b!45157 ((_ is Cons!729) (minValue!501 (v!12469 (underlying!685 (v!12470 (underlying!686 (cache!726 cacheFurthestNullable!45)))))))) b!45342))

(declare-fun m!19690 () Bool)

(assert (=> setNonEmpty!1131 m!19690))

(declare-fun b!45345 () Bool)

(declare-fun e!25518 () Bool)

(assert (=> b!45345 (= e!25518 true)))

(declare-fun b!45344 () Bool)

(declare-fun e!25517 () Bool)

(assert (=> b!45344 (= e!25517 e!25518)))

(declare-fun b!45343 () Bool)

(declare-fun e!25516 () Bool)

(assert (=> b!45343 (= e!25516 e!25517)))

(assert (=> b!45203 e!25516))

(assert (= b!45344 b!45345))

(assert (= b!45343 b!45344))

(assert (= (and b!45203 ((_ is Cons!727) (t!16646 lt!5843))) b!45343))

(assert (=> b!45345 (< (dynLambda!103 order!163 (toValue!648 (transformation!169 (h!6123 (t!16646 lt!5843))))) (dynLambda!104 order!165 lambda!831))))

(assert (=> b!45345 (< (dynLambda!105 order!167 (toChars!507 (transformation!169 (h!6123 (t!16646 lt!5843))))) (dynLambda!104 order!165 lambda!831))))

(declare-fun setNonEmpty!1136 () Bool)

(declare-fun setRes!1136 () Bool)

(declare-fun tp!30946 () Bool)

(declare-fun setElem!1136 () Context!186)

(assert (=> setNonEmpty!1136 (= setRes!1136 (and tp!30946 (inv!1020 setElem!1136)))))

(declare-fun mapDefault!957 () List!731)

(declare-fun setRest!1137 () (InoxSet Context!186))

(assert (=> setNonEmpty!1136 (= (_1!618 (_1!619 (h!6125 mapDefault!957))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1136 true) setRest!1137))))

(declare-fun mapIsEmpty!957 () Bool)

(declare-fun mapRes!957 () Bool)

(assert (=> mapIsEmpty!957 mapRes!957))

(declare-fun setIsEmpty!1136 () Bool)

(declare-fun setRes!1137 () Bool)

(assert (=> setIsEmpty!1136 setRes!1137))

(declare-fun mapNonEmpty!957 () Bool)

(declare-fun tp!30948 () Bool)

(declare-fun e!25530 () Bool)

(assert (=> mapNonEmpty!957 (= mapRes!957 (and tp!30948 e!25530))))

(declare-fun mapKey!957 () (_ BitVec 32))

(declare-fun mapValue!957 () List!731)

(declare-fun mapRest!957 () (Array (_ BitVec 32) List!731))

(assert (=> mapNonEmpty!957 (= mapRest!947 (store mapRest!957 mapKey!957 mapValue!957))))

(declare-fun setIsEmpty!1137 () Bool)

(assert (=> setIsEmpty!1137 setRes!1136))

(declare-fun b!45352 () Bool)

(declare-fun e!25529 () Bool)

(declare-fun tp!30949 () Bool)

(assert (=> b!45352 (= e!25529 (and setRes!1136 tp!30949))))

(declare-fun condSetEmpty!1137 () Bool)

(assert (=> b!45352 (= condSetEmpty!1137 (= (_1!618 (_1!619 (h!6125 mapDefault!957))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun b!45353 () Bool)

(declare-fun tp!30945 () Bool)

(assert (=> b!45353 (= e!25530 (and setRes!1137 tp!30945))))

(declare-fun condSetEmpty!1136 () Bool)

(assert (=> b!45353 (= condSetEmpty!1136 (= (_1!618 (_1!619 (h!6125 mapValue!957))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setNonEmpty!1137 () Bool)

(declare-fun tp!30947 () Bool)

(declare-fun setElem!1137 () Context!186)

(assert (=> setNonEmpty!1137 (= setRes!1137 (and tp!30947 (inv!1020 setElem!1137)))))

(declare-fun setRest!1136 () (InoxSet Context!186))

(assert (=> setNonEmpty!1137 (= (_1!618 (_1!619 (h!6125 mapValue!957))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1137 true) setRest!1136))))

(declare-fun condMapEmpty!957 () Bool)

(assert (=> mapNonEmpty!947 (= condMapEmpty!957 (= mapRest!947 ((as const (Array (_ BitVec 32) List!731)) mapDefault!957)))))

(assert (=> mapNonEmpty!947 (= tp!30864 (and e!25529 mapRes!957))))

(assert (= (and mapNonEmpty!947 condMapEmpty!957) mapIsEmpty!957))

(assert (= (and mapNonEmpty!947 (not condMapEmpty!957)) mapNonEmpty!957))

(assert (= (and b!45353 condSetEmpty!1136) setIsEmpty!1136))

(assert (= (and b!45353 (not condSetEmpty!1136)) setNonEmpty!1137))

(assert (= (and mapNonEmpty!957 ((_ is Cons!729) mapValue!957)) b!45353))

(assert (= (and b!45352 condSetEmpty!1137) setIsEmpty!1137))

(assert (= (and b!45352 (not condSetEmpty!1137)) setNonEmpty!1136))

(assert (= (and mapNonEmpty!947 ((_ is Cons!729) mapDefault!957)) b!45352))

(declare-fun m!19692 () Bool)

(assert (=> setNonEmpty!1136 m!19692))

(declare-fun m!19694 () Bool)

(assert (=> mapNonEmpty!957 m!19694))

(declare-fun m!19696 () Bool)

(assert (=> setNonEmpty!1137 m!19696))

(declare-fun b!45354 () Bool)

(declare-fun e!25532 () Bool)

(declare-fun setRes!1138 () Bool)

(declare-fun tp!30950 () Bool)

(assert (=> b!45354 (= e!25532 (and setRes!1138 tp!30950))))

(declare-fun condSetEmpty!1138 () Bool)

(assert (=> b!45354 (= condSetEmpty!1138 (= (_1!618 (_1!619 (h!6125 mapValue!948))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1138 () Bool)

(assert (=> setIsEmpty!1138 setRes!1138))

(declare-fun setNonEmpty!1138 () Bool)

(declare-fun tp!30951 () Bool)

(declare-fun setElem!1138 () Context!186)

(assert (=> setNonEmpty!1138 (= setRes!1138 (and tp!30951 (inv!1020 setElem!1138)))))

(declare-fun setRest!1138 () (InoxSet Context!186))

(assert (=> setNonEmpty!1138 (= (_1!618 (_1!619 (h!6125 mapValue!948))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1138 true) setRest!1138))))

(assert (=> mapNonEmpty!947 (= tp!30853 e!25532)))

(assert (= (and b!45354 condSetEmpty!1138) setIsEmpty!1138))

(assert (= (and b!45354 (not condSetEmpty!1138)) setNonEmpty!1138))

(assert (= (and mapNonEmpty!947 ((_ is Cons!729) mapValue!948)) b!45354))

(declare-fun m!19698 () Bool)

(assert (=> setNonEmpty!1138 m!19698))

(declare-fun b!45355 () Bool)

(declare-fun e!25533 () Bool)

(declare-fun tp!30952 () Bool)

(declare-fun tp!30953 () Bool)

(assert (=> b!45355 (= e!25533 (and (inv!1017 (left!577 (c!16101 (totalInput!1539 cacheFurthestNullable!45)))) tp!30952 (inv!1017 (right!907 (c!16101 (totalInput!1539 cacheFurthestNullable!45)))) tp!30953))))

(declare-fun b!45356 () Bool)

(assert (=> b!45356 (= e!25533 (inv!1021 (xs!2719 (c!16101 (totalInput!1539 cacheFurthestNullable!45)))))))

(assert (=> b!45178 (= tp!30866 (and (inv!1017 (c!16101 (totalInput!1539 cacheFurthestNullable!45))) e!25533))))

(assert (= (and b!45178 ((_ is Node!140) (c!16101 (totalInput!1539 cacheFurthestNullable!45)))) b!45355))

(assert (= (and b!45178 ((_ is Leaf!336) (c!16101 (totalInput!1539 cacheFurthestNullable!45)))) b!45356))

(declare-fun m!19700 () Bool)

(assert (=> b!45355 m!19700))

(declare-fun m!19702 () Bool)

(assert (=> b!45355 m!19702))

(declare-fun m!19704 () Bool)

(assert (=> b!45356 m!19704))

(assert (=> b!45178 m!19470))

(declare-fun b!45357 () Bool)

(declare-fun e!25536 () Bool)

(declare-fun setRes!1139 () Bool)

(declare-fun tp!30954 () Bool)

(assert (=> b!45357 (= e!25536 (and setRes!1139 tp!30954))))

(declare-fun condSetEmpty!1139 () Bool)

(assert (=> b!45357 (= condSetEmpty!1139 (= (_1!618 (_1!619 (h!6125 mapDefault!948))) ((as const (Array Context!186 Bool)) false)))))

(declare-fun setIsEmpty!1139 () Bool)

(assert (=> setIsEmpty!1139 setRes!1139))

(declare-fun setNonEmpty!1139 () Bool)

(declare-fun tp!30955 () Bool)

(declare-fun setElem!1139 () Context!186)

(assert (=> setNonEmpty!1139 (= setRes!1139 (and tp!30955 (inv!1020 setElem!1139)))))

(declare-fun setRest!1139 () (InoxSet Context!186))

(assert (=> setNonEmpty!1139 (= (_1!618 (_1!619 (h!6125 mapDefault!948))) ((_ map or) (store ((as const (Array Context!186 Bool)) false) setElem!1139 true) setRest!1139))))

(assert (=> b!45188 (= tp!30844 e!25536)))

(assert (= (and b!45357 condSetEmpty!1139) setIsEmpty!1139))

(assert (= (and b!45357 (not condSetEmpty!1139)) setNonEmpty!1139))

(assert (= (and b!45188 ((_ is Cons!729) mapDefault!948)) b!45357))

(declare-fun m!19706 () Bool)

(assert (=> setNonEmpty!1139 m!19706))

(declare-fun b_lambda!259 () Bool)

(assert (= b_lambda!257 (or b!45179 b_lambda!259)))

(declare-fun bs!6271 () Bool)

(declare-fun d!5310 () Bool)

(assert (= bs!6271 (and d!5310 b!45179)))

(assert (=> bs!6271 (= (dynLambda!106 lambda!831 (h!6128 lt!5832)) (rulesProduceIndividualToken!8 Lexer!61 lt!5843 (h!6128 lt!5832)))))

(assert (=> bs!6271 m!19616))

(assert (=> b!45295 d!5310))

(check-sat (not b!45353) (not d!5254) (not b!45317) (not setNonEmpty!1127) (not b_lambda!259) (not b!45283) (not d!5302) (not b!45290) (not b!45318) (not b!45296) (not d!5238) (not b!45267) (not setNonEmpty!1131) b_and!1185 (not d!5290) (not bs!6271) (not b!45355) (not b!45223) (not b!45327) (not b!45273) (not b!45326) (not b!45216) (not b!45316) (not b!45178) (not b!45241) (not d!5276) (not b!45325) (not b!45254) (not d!5294) (not d!5240) (not setNonEmpty!1124) (not d!5280) (not b!45268) (not setNonEmpty!1110) (not d!5278) (not b_next!1157) (not b!45243) (not b!45244) (not b!45357) (not d!5234) (not b!45302) (not d!5304) (not b!45217) (not d!5236) (not b!45336) (not b_next!1149) (not d!5268) (not b_next!1159) (not b!45343) (not b!45335) (not setNonEmpty!1107) (not mapNonEmpty!951) (not b!45341) (not b!45354) (not b!45219) (not d!5244) (not b!45269) (not d!5256) (not setNonEmpty!1138) (not b!45301) (not b!45271) (not b_next!1153) (not setNonEmpty!1139) (not d!5242) (not b!45272) (not setNonEmpty!1106) (not b!45242) (not b!45352) b_and!1193 b_and!1191 (not b_next!1151) (not mapNonEmpty!957) (not b!45247) (not b!45307) (not b!45226) (not b!45240) (not d!5266) (not setNonEmpty!1112) (not b_next!1155) b_and!1187 (not b!45276) (not setNonEmpty!1119) (not setNonEmpty!1111) (not setNonEmpty!1137) (not setNonEmpty!1126) (not d!5274) (not b!45275) (not b!45193) (not setNonEmpty!1136) b_and!1189 (not b!45220) (not b!45334) (not setNonEmpty!1118) (not d!5284) (not setNonEmpty!1117) (not d!5300) (not d!5288) (not b!45256) (not setNonEmpty!1130) (not b!45288) (not mapNonEmpty!954) (not b!45282) (not d!5248) (not setNonEmpty!1125) (not d!5286) b_and!1183 (not b!45308) (not b!45309) (not b!45281) (not b!45342) (not b!45229) (not b!45356) (not d!5292) (not d!5246))
(check-sat b_and!1185 (not b_next!1157) (not b_next!1153) (not b_next!1151) b_and!1189 b_and!1183 (not b_next!1149) (not b_next!1159) b_and!1193 b_and!1191 (not b_next!1155) b_and!1187)
