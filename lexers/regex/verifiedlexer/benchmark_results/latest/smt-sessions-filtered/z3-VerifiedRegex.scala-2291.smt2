; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112102 () Bool)

(assert start!112102)

(declare-fun b!1283873 () Bool)

(declare-fun b_free!30039 () Bool)

(declare-fun b_next!30743 () Bool)

(assert (=> b!1283873 (= b_free!30039 (not b_next!30743))))

(declare-fun tp!373278 () Bool)

(declare-fun b_and!85183 () Bool)

(assert (=> b!1283873 (= tp!373278 b_and!85183)))

(declare-fun b!1283880 () Bool)

(declare-fun b_free!30041 () Bool)

(declare-fun b_next!30745 () Bool)

(assert (=> b!1283880 (= b_free!30041 (not b_next!30745))))

(declare-fun tp!373272 () Bool)

(declare-fun b_and!85185 () Bool)

(assert (=> b!1283880 (= tp!373272 b_and!85185)))

(declare-fun b!1283871 () Bool)

(declare-fun b_free!30043 () Bool)

(declare-fun b_next!30747 () Bool)

(assert (=> b!1283871 (= b_free!30043 (not b_next!30747))))

(declare-fun tp!373275 () Bool)

(declare-fun b_and!85187 () Bool)

(assert (=> b!1283871 (= tp!373275 b_and!85187)))

(declare-fun b_free!30045 () Bool)

(declare-fun b_next!30749 () Bool)

(assert (=> b!1283871 (= b_free!30045 (not b_next!30749))))

(declare-fun tp!373281 () Bool)

(declare-fun b_and!85189 () Bool)

(assert (=> b!1283871 (= tp!373281 b_and!85189)))

(declare-fun b!1283885 () Bool)

(declare-fun b_free!30047 () Bool)

(declare-fun b_next!30751 () Bool)

(assert (=> b!1283885 (= b_free!30047 (not b_next!30751))))

(declare-fun tp!373268 () Bool)

(declare-fun b_and!85191 () Bool)

(assert (=> b!1283885 (= tp!373268 b_and!85191)))

(declare-fun b!1283868 () Bool)

(declare-fun b_free!30049 () Bool)

(declare-fun b_next!30753 () Bool)

(assert (=> b!1283868 (= b_free!30049 (not b_next!30753))))

(declare-fun tp!373283 () Bool)

(declare-fun b_and!85193 () Bool)

(assert (=> b!1283868 (= tp!373283 b_and!85193)))

(declare-fun b!1283900 () Bool)

(declare-fun e!823231 () Bool)

(assert (=> b!1283900 (= e!823231 true)))

(declare-fun b!1283899 () Bool)

(declare-fun e!823230 () Bool)

(assert (=> b!1283899 (= e!823230 e!823231)))

(declare-fun b!1283898 () Bool)

(declare-fun e!823229 () Bool)

(assert (=> b!1283898 (= e!823229 e!823230)))

(declare-fun b!1283870 () Bool)

(assert (=> b!1283870 e!823229))

(assert (= b!1283899 b!1283900))

(assert (= b!1283898 b!1283899))

(declare-datatypes ((List!12819 0))(
  ( (Nil!12753) (Cons!12753 (h!18154 (_ BitVec 16)) (t!116669 List!12819)) )
))
(declare-datatypes ((TokenValue!2281 0))(
  ( (FloatLiteralValue!4562 (text!16412 List!12819)) (TokenValueExt!2280 (__x!8385 Int)) (Broken!11405 (value!72050 List!12819)) (Object!2346) (End!2281) (Def!2281) (Underscore!2281) (Match!2281) (Else!2281) (Error!2281) (Case!2281) (If!2281) (Extends!2281) (Abstract!2281) (Class!2281) (Val!2281) (DelimiterValue!4562 (del!2341 List!12819)) (KeywordValue!2287 (value!72051 List!12819)) (CommentValue!4562 (value!72052 List!12819)) (WhitespaceValue!4562 (value!72053 List!12819)) (IndentationValue!2281 (value!72054 List!12819)) (String!15640) (Int32!2281) (Broken!11406 (value!72055 List!12819)) (Boolean!2282) (Unit!18979) (OperatorValue!2284 (op!2341 List!12819)) (IdentifierValue!4562 (value!72056 List!12819)) (IdentifierValue!4563 (value!72057 List!12819)) (WhitespaceValue!4563 (value!72058 List!12819)) (True!4562) (False!4562) (Broken!11407 (value!72059 List!12819)) (Broken!11408 (value!72060 List!12819)) (True!4563) (RightBrace!2281) (RightBracket!2281) (Colon!2281) (Null!2281) (Comma!2281) (LeftBracket!2281) (False!4563) (LeftBrace!2281) (ImaginaryLiteralValue!2281 (text!16413 List!12819)) (StringLiteralValue!6843 (value!72061 List!12819)) (EOFValue!2281 (value!72062 List!12819)) (IdentValue!2281 (value!72063 List!12819)) (DelimiterValue!4563 (value!72064 List!12819)) (DedentValue!2281 (value!72065 List!12819)) (NewLineValue!2281 (value!72066 List!12819)) (IntegerValue!6843 (value!72067 (_ BitVec 32)) (text!16414 List!12819)) (IntegerValue!6844 (value!72068 Int) (text!16415 List!12819)) (Times!2281) (Or!2281) (Equal!2281) (Minus!2281) (Broken!11409 (value!72069 List!12819)) (And!2281) (Div!2281) (LessEqual!2281) (Mod!2281) (Concat!5786) (Not!2281) (Plus!2281) (SpaceValue!2281 (value!72070 List!12819)) (IntegerValue!6845 (value!72071 Int) (text!16416 List!12819)) (StringLiteralValue!6844 (text!16417 List!12819)) (FloatLiteralValue!4563 (text!16418 List!12819)) (BytesLiteralValue!2281 (value!72072 List!12819)) (CommentValue!4563 (value!72073 List!12819)) (StringLiteralValue!6845 (value!72074 List!12819)) (ErrorTokenValue!2281 (msg!2342 List!12819)) )
))
(declare-datatypes ((C!7300 0))(
  ( (C!7301 (val!4210 Int)) )
))
(declare-datatypes ((List!12820 0))(
  ( (Nil!12754) (Cons!12754 (h!18155 C!7300) (t!116670 List!12820)) )
))
(declare-datatypes ((IArray!8389 0))(
  ( (IArray!8390 (innerList!4252 List!12820)) )
))
(declare-datatypes ((Conc!4192 0))(
  ( (Node!4192 (left!11005 Conc!4192) (right!11335 Conc!4192) (csize!8614 Int) (cheight!4403 Int)) (Leaf!6484 (xs!6903 IArray!8389) (csize!8615 Int)) (Empty!4192) )
))
(declare-datatypes ((BalanceConc!8324 0))(
  ( (BalanceConc!8325 (c!211477 Conc!4192)) )
))
(declare-datatypes ((Regex!3505 0))(
  ( (ElementMatch!3505 (c!211478 C!7300)) (Concat!5787 (regOne!7522 Regex!3505) (regTwo!7522 Regex!3505)) (EmptyExpr!3505) (Star!3505 (reg!3834 Regex!3505)) (EmptyLang!3505) (Union!3505 (regOne!7523 Regex!3505) (regTwo!7523 Regex!3505)) )
))
(declare-datatypes ((String!15641 0))(
  ( (String!15642 (value!72075 String)) )
))
(declare-datatypes ((TokenValueInjection!4222 0))(
  ( (TokenValueInjection!4223 (toValue!3368 Int) (toChars!3227 Int)) )
))
(declare-datatypes ((Rule!4182 0))(
  ( (Rule!4183 (regex!2191 Regex!3505) (tag!2453 String!15641) (isSeparator!2191 Bool) (transformation!2191 TokenValueInjection!4222)) )
))
(declare-datatypes ((List!12821 0))(
  ( (Nil!12755) (Cons!12755 (h!18156 Rule!4182) (t!116671 List!12821)) )
))
(declare-fun rs!174 () List!12821)

(get-info :version)

(assert (= (and b!1283870 ((_ is Cons!12755) rs!174)) b!1283898))

(declare-fun order!7769 () Int)

(declare-fun lambda!50328 () Int)

(declare-fun order!7771 () Int)

(declare-fun dynLambda!5559 (Int Int) Int)

(declare-fun dynLambda!5560 (Int Int) Int)

(assert (=> b!1283900 (< (dynLambda!5559 order!7769 (toValue!3368 (transformation!2191 (h!18156 rs!174)))) (dynLambda!5560 order!7771 lambda!50328))))

(declare-fun order!7773 () Int)

(declare-fun dynLambda!5561 (Int Int) Int)

(assert (=> b!1283900 (< (dynLambda!5561 order!7773 (toChars!3227 (transformation!2191 (h!18156 rs!174)))) (dynLambda!5560 order!7771 lambda!50328))))

(assert (=> b!1283870 true))

(declare-fun b!1283867 () Bool)

(declare-fun tp!373282 () Bool)

(declare-fun e!823215 () Bool)

(declare-fun e!823221 () Bool)

(declare-fun inv!17144 (String!15641) Bool)

(declare-fun inv!17150 (TokenValueInjection!4222) Bool)

(assert (=> b!1283867 (= e!823215 (and tp!373282 (inv!17144 (tag!2453 (h!18156 rs!174))) (inv!17150 (transformation!2191 (h!18156 rs!174))) e!823221))))

(declare-fun tp!373271 () Bool)

(declare-fun e!823211 () Bool)

(declare-datatypes ((array!4789 0))(
  ( (array!4790 (arr!2137 (Array (_ BitVec 32) (_ BitVec 64))) (size!10389 (_ BitVec 32))) )
))
(declare-datatypes ((List!12822 0))(
  ( (Nil!12756) (Cons!12756 (h!18157 Regex!3505) (t!116672 List!12822)) )
))
(declare-datatypes ((Context!1114 0))(
  ( (Context!1115 (exprs!1057 List!12822)) )
))
(declare-datatypes ((tuple2!12608 0))(
  ( (tuple2!12609 (_1!7187 Context!1114) (_2!7187 C!7300)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12610 0))(
  ( (tuple2!12611 (_1!7188 tuple2!12608) (_2!7188 (InoxSet Context!1114))) )
))
(declare-datatypes ((List!12823 0))(
  ( (Nil!12757) (Cons!12757 (h!18158 tuple2!12610) (t!116673 List!12823)) )
))
(declare-datatypes ((array!4791 0))(
  ( (array!4792 (arr!2138 (Array (_ BitVec 32) List!12823)) (size!10390 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2698 0))(
  ( (LongMapFixedSize!2699 (defaultEntry!1709 Int) (mask!4184 (_ BitVec 32)) (extraKeys!1596 (_ BitVec 32)) (zeroValue!1606 List!12823) (minValue!1606 List!12823) (_size!2779 (_ BitVec 32)) (_keys!1643 array!4789) (_values!1628 array!4791) (_vacant!1410 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5281 0))(
  ( (Cell!5282 (v!20984 LongMapFixedSize!2698)) )
))
(declare-datatypes ((MutLongMap!1349 0))(
  ( (LongMap!1349 (underlying!2905 Cell!5281)) (MutLongMapExt!1348 (__x!8386 Int)) )
))
(declare-datatypes ((Cell!5283 0))(
  ( (Cell!5284 (v!20985 MutLongMap!1349)) )
))
(declare-datatypes ((Hashable!1293 0))(
  ( (HashableExt!1292 (__x!8387 Int)) )
))
(declare-datatypes ((MutableMap!1293 0))(
  ( (MutableMapExt!1292 (__x!8388 Int)) (HashMap!1293 (underlying!2906 Cell!5283) (hashF!3212 Hashable!1293) (_size!2780 (_ BitVec 32)) (defaultValue!1453 Int)) )
))
(declare-datatypes ((CacheUp!762 0))(
  ( (CacheUp!763 (cache!1674 MutableMap!1293)) )
))
(declare-fun cacheUp!398 () CacheUp!762)

(declare-fun tp!373277 () Bool)

(declare-fun e!823213 () Bool)

(declare-fun array_inv!1552 (array!4789) Bool)

(declare-fun array_inv!1553 (array!4791) Bool)

(assert (=> b!1283868 (= e!823213 (and tp!373283 tp!373277 tp!373271 (array_inv!1552 (_keys!1643 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))) (array_inv!1553 (_values!1628 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))) e!823211))))

(declare-fun b!1283869 () Bool)

(declare-fun e!823202 () Bool)

(declare-fun tp!373266 () Bool)

(declare-fun mapRes!6455 () Bool)

(assert (=> b!1283869 (= e!823202 (and tp!373266 mapRes!6455))))

(declare-fun condMapEmpty!6456 () Bool)

(declare-datatypes ((tuple3!1184 0))(
  ( (tuple3!1185 (_1!7189 Regex!3505) (_2!7189 Context!1114) (_3!883 C!7300)) )
))
(declare-datatypes ((Hashable!1294 0))(
  ( (HashableExt!1293 (__x!8389 Int)) )
))
(declare-datatypes ((tuple2!12612 0))(
  ( (tuple2!12613 (_1!7190 tuple3!1184) (_2!7190 (InoxSet Context!1114))) )
))
(declare-datatypes ((List!12824 0))(
  ( (Nil!12758) (Cons!12758 (h!18159 tuple2!12612) (t!116674 List!12824)) )
))
(declare-datatypes ((array!4793 0))(
  ( (array!4794 (arr!2139 (Array (_ BitVec 32) List!12824)) (size!10391 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2700 0))(
  ( (LongMapFixedSize!2701 (defaultEntry!1710 Int) (mask!4185 (_ BitVec 32)) (extraKeys!1597 (_ BitVec 32)) (zeroValue!1607 List!12824) (minValue!1607 List!12824) (_size!2781 (_ BitVec 32)) (_keys!1644 array!4789) (_values!1629 array!4793) (_vacant!1411 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5285 0))(
  ( (Cell!5286 (v!20986 LongMapFixedSize!2700)) )
))
(declare-datatypes ((MutLongMap!1350 0))(
  ( (LongMap!1350 (underlying!2907 Cell!5285)) (MutLongMapExt!1349 (__x!8390 Int)) )
))
(declare-datatypes ((Cell!5287 0))(
  ( (Cell!5288 (v!20987 MutLongMap!1350)) )
))
(declare-datatypes ((MutableMap!1294 0))(
  ( (MutableMapExt!1293 (__x!8391 Int)) (HashMap!1294 (underlying!2908 Cell!5287) (hashF!3213 Hashable!1294) (_size!2782 (_ BitVec 32)) (defaultValue!1454 Int)) )
))
(declare-datatypes ((CacheDown!766 0))(
  ( (CacheDown!767 (cache!1675 MutableMap!1294)) )
))
(declare-fun cacheDown!411 () CacheDown!766)

(declare-fun mapDefault!6456 () List!12824)

(assert (=> b!1283869 (= condMapEmpty!6456 (= (arr!2139 (_values!1629 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))) ((as const (Array (_ BitVec 32) List!12824)) mapDefault!6456)))))

(declare-datatypes ((tuple3!1186 0))(
  ( (tuple3!1187 (_1!7191 Bool) (_2!7191 CacheUp!762) (_3!884 CacheDown!766)) )
))
(declare-fun lt!423379 () tuple3!1186)

(declare-datatypes ((Token!4044 0))(
  ( (Token!4045 (value!72076 TokenValue!2281) (rule!3930 Rule!4182) (size!10392 Int) (originalCharacters!3053 List!12820)) )
))
(declare-datatypes ((List!12825 0))(
  ( (Nil!12759) (Cons!12759 (h!18160 Token!4044) (t!116675 List!12825)) )
))
(declare-datatypes ((IArray!8391 0))(
  ( (IArray!8392 (innerList!4253 List!12825)) )
))
(declare-datatypes ((Conc!4193 0))(
  ( (Node!4193 (left!11006 Conc!4193) (right!11336 Conc!4193) (csize!8616 Int) (cheight!4404 Int)) (Leaf!6485 (xs!6904 IArray!8391) (csize!8617 Int)) (Empty!4193) )
))
(declare-datatypes ((BalanceConc!8326 0))(
  ( (BalanceConc!8327 (c!211479 Conc!4193)) )
))
(declare-fun ts!110 () BalanceConc!8326)

(declare-fun lt!423378 () tuple3!1186)

(declare-fun e!823209 () Bool)

(declare-fun forall!3224 (BalanceConc!8326 Int) Bool)

(assert (=> b!1283870 (= e!823209 (not (= (and (_1!7191 lt!423378) (_1!7191 lt!423379)) (forall!3224 ts!110 lambda!50328))))))

(declare-datatypes ((LexerInterface!1886 0))(
  ( (LexerInterfaceExt!1883 (__x!8392 Int)) (Lexer!1884) )
))
(declare-fun thiss!10944 () LexerInterface!1886)

(declare-fun lt!423380 () BalanceConc!8326)

(declare-fun rulesProduceEachTokenIndividuallyMem!38 (LexerInterface!1886 List!12821 BalanceConc!8326 CacheUp!762 CacheDown!766) tuple3!1186)

(assert (=> b!1283870 (= lt!423379 (rulesProduceEachTokenIndividuallyMem!38 thiss!10944 rs!174 lt!423380 (_2!7191 lt!423378) (_3!884 lt!423378)))))

(assert (=> b!1283871 (= e!823221 (and tp!373275 tp!373281))))

(declare-fun b!1283872 () Bool)

(declare-fun tp!373273 () Bool)

(declare-fun mapRes!6456 () Bool)

(assert (=> b!1283872 (= e!823211 (and tp!373273 mapRes!6456))))

(declare-fun condMapEmpty!6455 () Bool)

(declare-fun mapDefault!6455 () List!12823)

(assert (=> b!1283872 (= condMapEmpty!6455 (= (arr!2138 (_values!1628 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))) ((as const (Array (_ BitVec 32) List!12823)) mapDefault!6455)))))

(declare-fun res!575864 () Bool)

(declare-fun e!823222 () Bool)

(assert (=> start!112102 (=> (not res!575864) (not e!823222))))

(assert (=> start!112102 (= res!575864 ((_ is Lexer!1884) thiss!10944))))

(assert (=> start!112102 e!823222))

(declare-fun e!823220 () Bool)

(assert (=> start!112102 e!823220))

(declare-fun e!823218 () Bool)

(declare-fun inv!17151 (CacheUp!762) Bool)

(assert (=> start!112102 (and (inv!17151 cacheUp!398) e!823218)))

(declare-fun e!823205 () Bool)

(declare-fun inv!17152 (CacheDown!766) Bool)

(assert (=> start!112102 (and (inv!17152 cacheDown!411) e!823205)))

(declare-fun e!823203 () Bool)

(declare-fun inv!17153 (BalanceConc!8326) Bool)

(assert (=> start!112102 (and (inv!17153 ts!110) e!823203)))

(assert (=> start!112102 true))

(declare-fun tp!373269 () Bool)

(declare-fun tp!373270 () Bool)

(declare-fun e!823216 () Bool)

(declare-fun array_inv!1554 (array!4793) Bool)

(assert (=> b!1283873 (= e!823216 (and tp!373278 tp!373269 tp!373270 (array_inv!1552 (_keys!1644 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))) (array_inv!1554 (_values!1629 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))) e!823202))))

(declare-fun b!1283874 () Bool)

(declare-fun e!823200 () Bool)

(assert (=> b!1283874 (= e!823205 e!823200)))

(declare-fun b!1283875 () Bool)

(declare-fun tp!373267 () Bool)

(declare-fun inv!17154 (Conc!4193) Bool)

(assert (=> b!1283875 (= e!823203 (and (inv!17154 (c!211479 ts!110)) tp!373267))))

(declare-fun b!1283876 () Bool)

(declare-fun res!575863 () Bool)

(assert (=> b!1283876 (=> (not res!575863) (not e!823222))))

(declare-fun rulesInvariant!1756 (LexerInterface!1886 List!12821) Bool)

(assert (=> b!1283876 (= res!575863 (rulesInvariant!1756 thiss!10944 rs!174))))

(declare-fun b!1283877 () Bool)

(declare-fun tp!373274 () Bool)

(assert (=> b!1283877 (= e!823220 (and e!823215 tp!373274))))

(declare-fun b!1283878 () Bool)

(declare-fun e!823214 () Bool)

(declare-fun e!823206 () Bool)

(assert (=> b!1283878 (= e!823214 e!823206)))

(declare-fun b!1283879 () Bool)

(assert (=> b!1283879 (= e!823222 e!823209)))

(declare-fun res!575861 () Bool)

(assert (=> b!1283879 (=> (not res!575861) (not e!823209))))

(declare-fun size!10393 (BalanceConc!8326) Int)

(assert (=> b!1283879 (= res!575861 (< (size!10393 lt!423380) (size!10393 ts!110)))))

(declare-fun tail!1817 (BalanceConc!8326) BalanceConc!8326)

(assert (=> b!1283879 (= lt!423380 (tail!1817 ts!110))))

(declare-fun rulesProduceIndividualTokenMem!25 (LexerInterface!1886 List!12821 Token!4044 CacheUp!762 CacheDown!766) tuple3!1186)

(declare-fun head!2189 (BalanceConc!8326) Token!4044)

(assert (=> b!1283879 (= lt!423378 (rulesProduceIndividualTokenMem!25 thiss!10944 rs!174 (head!2189 ts!110) cacheUp!398 cacheDown!411))))

(declare-fun e!823217 () Bool)

(declare-fun e!823207 () Bool)

(assert (=> b!1283880 (= e!823217 (and e!823207 tp!373272))))

(declare-fun b!1283881 () Bool)

(assert (=> b!1283881 (= e!823218 e!823217)))

(declare-fun b!1283882 () Bool)

(declare-fun e!823201 () Bool)

(declare-fun e!823210 () Bool)

(assert (=> b!1283882 (= e!823201 e!823210)))

(declare-fun mapIsEmpty!6455 () Bool)

(assert (=> mapIsEmpty!6455 mapRes!6456))

(declare-fun b!1283883 () Bool)

(declare-fun res!575860 () Bool)

(assert (=> b!1283883 (=> (not res!575860) (not e!823222))))

(declare-fun isEmpty!7564 (BalanceConc!8326) Bool)

(assert (=> b!1283883 (= res!575860 (not (isEmpty!7564 ts!110)))))

(declare-fun mapNonEmpty!6455 () Bool)

(declare-fun tp!373276 () Bool)

(declare-fun tp!373265 () Bool)

(assert (=> mapNonEmpty!6455 (= mapRes!6456 (and tp!373276 tp!373265))))

(declare-fun mapKey!6456 () (_ BitVec 32))

(declare-fun mapValue!6456 () List!12823)

(declare-fun mapRest!6456 () (Array (_ BitVec 32) List!12823))

(assert (=> mapNonEmpty!6455 (= (arr!2138 (_values!1628 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))) (store mapRest!6456 mapKey!6456 mapValue!6456))))

(declare-fun mapIsEmpty!6456 () Bool)

(assert (=> mapIsEmpty!6456 mapRes!6455))

(declare-fun b!1283884 () Bool)

(assert (=> b!1283884 (= e!823210 e!823216)))

(declare-fun e!823208 () Bool)

(assert (=> b!1283885 (= e!823200 (and e!823208 tp!373268))))

(declare-fun b!1283886 () Bool)

(declare-fun res!575862 () Bool)

(assert (=> b!1283886 (=> (not res!575862) (not e!823222))))

(declare-fun isEmpty!7565 (List!12821) Bool)

(assert (=> b!1283886 (= res!575862 (not (isEmpty!7565 rs!174)))))

(declare-fun mapNonEmpty!6456 () Bool)

(declare-fun tp!373279 () Bool)

(declare-fun tp!373280 () Bool)

(assert (=> mapNonEmpty!6456 (= mapRes!6455 (and tp!373279 tp!373280))))

(declare-fun mapValue!6455 () List!12824)

(declare-fun mapRest!6455 () (Array (_ BitVec 32) List!12824))

(declare-fun mapKey!6455 () (_ BitVec 32))

(assert (=> mapNonEmpty!6456 (= (arr!2139 (_values!1629 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))) (store mapRest!6455 mapKey!6455 mapValue!6455))))

(declare-fun b!1283887 () Bool)

(declare-fun lt!423376 () MutLongMap!1349)

(assert (=> b!1283887 (= e!823207 (and e!823214 ((_ is LongMap!1349) lt!423376)))))

(assert (=> b!1283887 (= lt!423376 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))

(declare-fun b!1283888 () Bool)

(declare-fun lt!423377 () MutLongMap!1350)

(assert (=> b!1283888 (= e!823208 (and e!823201 ((_ is LongMap!1350) lt!423377)))))

(assert (=> b!1283888 (= lt!423377 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))

(declare-fun b!1283889 () Bool)

(assert (=> b!1283889 (= e!823206 e!823213)))

(assert (= (and start!112102 res!575864) b!1283886))

(assert (= (and b!1283886 res!575862) b!1283876))

(assert (= (and b!1283876 res!575863) b!1283883))

(assert (= (and b!1283883 res!575860) b!1283879))

(assert (= (and b!1283879 res!575861) b!1283870))

(assert (= b!1283867 b!1283871))

(assert (= b!1283877 b!1283867))

(assert (= (and start!112102 ((_ is Cons!12755) rs!174)) b!1283877))

(assert (= (and b!1283872 condMapEmpty!6455) mapIsEmpty!6455))

(assert (= (and b!1283872 (not condMapEmpty!6455)) mapNonEmpty!6455))

(assert (= b!1283868 b!1283872))

(assert (= b!1283889 b!1283868))

(assert (= b!1283878 b!1283889))

(assert (= (and b!1283887 ((_ is LongMap!1349) (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))) b!1283878))

(assert (= b!1283880 b!1283887))

(assert (= (and b!1283881 ((_ is HashMap!1293) (cache!1674 cacheUp!398))) b!1283880))

(assert (= start!112102 b!1283881))

(assert (= (and b!1283869 condMapEmpty!6456) mapIsEmpty!6456))

(assert (= (and b!1283869 (not condMapEmpty!6456)) mapNonEmpty!6456))

(assert (= b!1283873 b!1283869))

(assert (= b!1283884 b!1283873))

(assert (= b!1283882 b!1283884))

(assert (= (and b!1283888 ((_ is LongMap!1350) (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))) b!1283882))

(assert (= b!1283885 b!1283888))

(assert (= (and b!1283874 ((_ is HashMap!1294) (cache!1675 cacheDown!411))) b!1283885))

(assert (= start!112102 b!1283874))

(assert (= start!112102 b!1283875))

(declare-fun m!1434057 () Bool)

(assert (=> b!1283875 m!1434057))

(declare-fun m!1434059 () Bool)

(assert (=> b!1283886 m!1434059))

(declare-fun m!1434061 () Bool)

(assert (=> b!1283870 m!1434061))

(declare-fun m!1434063 () Bool)

(assert (=> b!1283870 m!1434063))

(declare-fun m!1434065 () Bool)

(assert (=> b!1283876 m!1434065))

(declare-fun m!1434067 () Bool)

(assert (=> b!1283883 m!1434067))

(declare-fun m!1434069 () Bool)

(assert (=> start!112102 m!1434069))

(declare-fun m!1434071 () Bool)

(assert (=> start!112102 m!1434071))

(declare-fun m!1434073 () Bool)

(assert (=> start!112102 m!1434073))

(declare-fun m!1434075 () Bool)

(assert (=> b!1283868 m!1434075))

(declare-fun m!1434077 () Bool)

(assert (=> b!1283868 m!1434077))

(declare-fun m!1434079 () Bool)

(assert (=> b!1283867 m!1434079))

(declare-fun m!1434081 () Bool)

(assert (=> b!1283867 m!1434081))

(declare-fun m!1434083 () Bool)

(assert (=> b!1283873 m!1434083))

(declare-fun m!1434085 () Bool)

(assert (=> b!1283873 m!1434085))

(declare-fun m!1434087 () Bool)

(assert (=> mapNonEmpty!6456 m!1434087))

(declare-fun m!1434089 () Bool)

(assert (=> b!1283879 m!1434089))

(declare-fun m!1434091 () Bool)

(assert (=> b!1283879 m!1434091))

(declare-fun m!1434093 () Bool)

(assert (=> b!1283879 m!1434093))

(assert (=> b!1283879 m!1434093))

(declare-fun m!1434095 () Bool)

(assert (=> b!1283879 m!1434095))

(declare-fun m!1434097 () Bool)

(assert (=> b!1283879 m!1434097))

(declare-fun m!1434099 () Bool)

(assert (=> mapNonEmpty!6455 m!1434099))

(check-sat b_and!85183 (not b!1283883) b_and!85193 (not b!1283868) (not b!1283886) (not mapNonEmpty!6456) (not b!1283877) (not b!1283873) (not b_next!30745) (not start!112102) (not mapNonEmpty!6455) (not b_next!30753) (not b!1283867) (not b!1283879) (not b_next!30749) (not b_next!30751) (not b_next!30747) b_and!85187 (not b!1283875) b_and!85191 (not b!1283876) (not b!1283898) (not b!1283870) (not b!1283872) (not b_next!30743) (not b!1283869) b_and!85189 b_and!85185)
(check-sat b_and!85183 (not b_next!30753) b_and!85193 b_and!85191 (not b_next!30743) (not b_next!30745) (not b_next!30749) (not b_next!30751) (not b_next!30747) b_and!85187 b_and!85189 b_and!85185)
(get-model)

(declare-fun d!361564 () Bool)

(declare-fun res!575867 () Bool)

(declare-fun e!823234 () Bool)

(assert (=> d!361564 (=> (not res!575867) (not e!823234))))

(assert (=> d!361564 (= res!575867 ((_ is HashMap!1293) (cache!1674 cacheUp!398)))))

(assert (=> d!361564 (= (inv!17151 cacheUp!398) e!823234)))

(declare-fun b!1283905 () Bool)

(declare-fun validCacheMapUp!123 (MutableMap!1293) Bool)

(assert (=> b!1283905 (= e!823234 (validCacheMapUp!123 (cache!1674 cacheUp!398)))))

(assert (= (and d!361564 res!575867) b!1283905))

(declare-fun m!1434101 () Bool)

(assert (=> b!1283905 m!1434101))

(assert (=> start!112102 d!361564))

(declare-fun d!361566 () Bool)

(declare-fun res!575870 () Bool)

(declare-fun e!823237 () Bool)

(assert (=> d!361566 (=> (not res!575870) (not e!823237))))

(assert (=> d!361566 (= res!575870 ((_ is HashMap!1294) (cache!1675 cacheDown!411)))))

(assert (=> d!361566 (= (inv!17152 cacheDown!411) e!823237)))

(declare-fun b!1283908 () Bool)

(declare-fun validCacheMapDown!123 (MutableMap!1294) Bool)

(assert (=> b!1283908 (= e!823237 (validCacheMapDown!123 (cache!1675 cacheDown!411)))))

(assert (= (and d!361566 res!575870) b!1283908))

(declare-fun m!1434103 () Bool)

(assert (=> b!1283908 m!1434103))

(assert (=> start!112102 d!361566))

(declare-fun d!361568 () Bool)

(declare-fun isBalanced!1224 (Conc!4193) Bool)

(assert (=> d!361568 (= (inv!17153 ts!110) (isBalanced!1224 (c!211479 ts!110)))))

(declare-fun bs!327653 () Bool)

(assert (= bs!327653 d!361568))

(declare-fun m!1434105 () Bool)

(assert (=> bs!327653 m!1434105))

(assert (=> start!112102 d!361568))

(declare-fun d!361570 () Bool)

(assert (=> d!361570 (= (array_inv!1552 (_keys!1643 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))) (bvsge (size!10389 (_keys!1643 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))) #b00000000000000000000000000000000))))

(assert (=> b!1283868 d!361570))

(declare-fun d!361572 () Bool)

(assert (=> d!361572 (= (array_inv!1553 (_values!1628 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))) (bvsge (size!10390 (_values!1628 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))) #b00000000000000000000000000000000))))

(assert (=> b!1283868 d!361572))

(declare-fun d!361574 () Bool)

(declare-fun lt!423383 () Bool)

(declare-fun isEmpty!7566 (List!12825) Bool)

(declare-fun list!4738 (BalanceConc!8326) List!12825)

(assert (=> d!361574 (= lt!423383 (isEmpty!7566 (list!4738 ts!110)))))

(declare-fun isEmpty!7567 (Conc!4193) Bool)

(assert (=> d!361574 (= lt!423383 (isEmpty!7567 (c!211479 ts!110)))))

(assert (=> d!361574 (= (isEmpty!7564 ts!110) lt!423383)))

(declare-fun bs!327654 () Bool)

(assert (= bs!327654 d!361574))

(declare-fun m!1434107 () Bool)

(assert (=> bs!327654 m!1434107))

(assert (=> bs!327654 m!1434107))

(declare-fun m!1434109 () Bool)

(assert (=> bs!327654 m!1434109))

(declare-fun m!1434111 () Bool)

(assert (=> bs!327654 m!1434111))

(assert (=> b!1283883 d!361574))

(declare-fun d!361576 () Bool)

(assert (=> d!361576 (= (array_inv!1552 (_keys!1644 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))) (bvsge (size!10389 (_keys!1644 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))) #b00000000000000000000000000000000))))

(assert (=> b!1283873 d!361576))

(declare-fun d!361578 () Bool)

(assert (=> d!361578 (= (array_inv!1554 (_values!1629 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))) (bvsge (size!10391 (_values!1629 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))) #b00000000000000000000000000000000))))

(assert (=> b!1283873 d!361578))

(declare-fun d!361580 () Bool)

(assert (=> d!361580 (= (isEmpty!7565 rs!174) ((_ is Nil!12755) rs!174))))

(assert (=> b!1283886 d!361580))

(declare-fun d!361582 () Bool)

(assert (=> d!361582 (= (inv!17144 (tag!2453 (h!18156 rs!174))) (= (mod (str.len (value!72075 (tag!2453 (h!18156 rs!174)))) 2) 0))))

(assert (=> b!1283867 d!361582))

(declare-fun d!361584 () Bool)

(declare-fun res!575873 () Bool)

(declare-fun e!823240 () Bool)

(assert (=> d!361584 (=> (not res!575873) (not e!823240))))

(declare-fun semiInverseModEq!826 (Int Int) Bool)

(assert (=> d!361584 (= res!575873 (semiInverseModEq!826 (toChars!3227 (transformation!2191 (h!18156 rs!174))) (toValue!3368 (transformation!2191 (h!18156 rs!174)))))))

(assert (=> d!361584 (= (inv!17150 (transformation!2191 (h!18156 rs!174))) e!823240)))

(declare-fun b!1283911 () Bool)

(declare-fun equivClasses!785 (Int Int) Bool)

(assert (=> b!1283911 (= e!823240 (equivClasses!785 (toChars!3227 (transformation!2191 (h!18156 rs!174))) (toValue!3368 (transformation!2191 (h!18156 rs!174)))))))

(assert (= (and d!361584 res!575873) b!1283911))

(declare-fun m!1434113 () Bool)

(assert (=> d!361584 m!1434113))

(declare-fun m!1434115 () Bool)

(assert (=> b!1283911 m!1434115))

(assert (=> b!1283867 d!361584))

(declare-fun d!361586 () Bool)

(declare-fun e!823243 () Bool)

(assert (=> d!361586 e!823243))

(declare-fun res!575876 () Bool)

(assert (=> d!361586 (=> (not res!575876) (not e!823243))))

(declare-fun tail!1818 (Conc!4193) Conc!4193)

(assert (=> d!361586 (= res!575876 (isBalanced!1224 (tail!1818 (c!211479 ts!110))))))

(declare-fun lt!423386 () BalanceConc!8326)

(assert (=> d!361586 (= lt!423386 (BalanceConc!8327 (tail!1818 (c!211479 ts!110))))))

(assert (=> d!361586 (not (isEmpty!7564 ts!110))))

(assert (=> d!361586 (= (tail!1817 ts!110) lt!423386)))

(declare-fun b!1283914 () Bool)

(declare-fun tail!1819 (List!12825) List!12825)

(assert (=> b!1283914 (= e!823243 (= (list!4738 lt!423386) (tail!1819 (list!4738 ts!110))))))

(assert (= (and d!361586 res!575876) b!1283914))

(declare-fun m!1434117 () Bool)

(assert (=> d!361586 m!1434117))

(assert (=> d!361586 m!1434117))

(declare-fun m!1434119 () Bool)

(assert (=> d!361586 m!1434119))

(assert (=> d!361586 m!1434067))

(declare-fun m!1434121 () Bool)

(assert (=> b!1283914 m!1434121))

(assert (=> b!1283914 m!1434107))

(assert (=> b!1283914 m!1434107))

(declare-fun m!1434123 () Bool)

(assert (=> b!1283914 m!1434123))

(assert (=> b!1283879 d!361586))

(declare-fun d!361588 () Bool)

(declare-fun lt!423391 () tuple3!1186)

(declare-fun rulesProduceIndividualToken!855 (LexerInterface!1886 List!12821 Token!4044) Bool)

(assert (=> d!361588 (= (_1!7191 lt!423391) (rulesProduceIndividualToken!855 thiss!10944 rs!174 (head!2189 ts!110)))))

(declare-fun e!823248 () Bool)

(declare-datatypes ((tuple2!12614 0))(
  ( (tuple2!12615 (_1!7192 BalanceConc!8326) (_2!7192 BalanceConc!8324)) )
))
(declare-datatypes ((tuple3!1188 0))(
  ( (tuple3!1189 (_1!7193 tuple2!12614) (_2!7193 CacheUp!762) (_3!885 CacheDown!766)) )
))
(declare-fun lt!423392 () tuple3!1188)

(assert (=> d!361588 (= lt!423391 (tuple3!1187 e!823248 (_2!7193 lt!423392) (_3!885 lt!423392)))))

(declare-fun res!575882 () Bool)

(assert (=> d!361588 (=> (not res!575882) (not e!823248))))

(declare-fun e!823249 () Bool)

(assert (=> d!361588 (= res!575882 e!823249)))

(declare-fun res!575881 () Bool)

(assert (=> d!361588 (=> (not res!575881) (not e!823249))))

(assert (=> d!361588 (= res!575881 (= (size!10393 (_1!7192 (_1!7193 lt!423392))) 1))))

(declare-fun lexV1Mem!5 (LexerInterface!1886 List!12821 BalanceConc!8324 CacheUp!762 CacheDown!766) tuple3!1188)

(declare-fun print!702 (LexerInterface!1886 BalanceConc!8326) BalanceConc!8324)

(declare-fun singletonSeq!773 (Token!4044) BalanceConc!8326)

(assert (=> d!361588 (= lt!423392 (lexV1Mem!5 thiss!10944 rs!174 (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110))) cacheUp!398 cacheDown!411))))

(assert (=> d!361588 (not (isEmpty!7565 rs!174))))

(assert (=> d!361588 (= (rulesProduceIndividualTokenMem!25 thiss!10944 rs!174 (head!2189 ts!110) cacheUp!398 cacheDown!411) lt!423391)))

(declare-fun b!1283919 () Bool)

(declare-fun apply!2720 (BalanceConc!8326 Int) Token!4044)

(assert (=> b!1283919 (= e!823249 (= (apply!2720 (_1!7192 (_1!7193 lt!423392)) 0) (head!2189 ts!110)))))

(declare-fun b!1283920 () Bool)

(declare-fun isEmpty!7568 (BalanceConc!8324) Bool)

(assert (=> b!1283920 (= e!823248 (isEmpty!7568 (_2!7192 (_1!7193 lt!423392))))))

(assert (= (and d!361588 res!575881) b!1283919))

(assert (= (and d!361588 res!575882) b!1283920))

(assert (=> d!361588 m!1434059))

(declare-fun m!1434125 () Bool)

(assert (=> d!361588 m!1434125))

(declare-fun m!1434127 () Bool)

(assert (=> d!361588 m!1434127))

(declare-fun m!1434129 () Bool)

(assert (=> d!361588 m!1434129))

(assert (=> d!361588 m!1434125))

(declare-fun m!1434131 () Bool)

(assert (=> d!361588 m!1434131))

(assert (=> d!361588 m!1434093))

(declare-fun m!1434133 () Bool)

(assert (=> d!361588 m!1434133))

(assert (=> d!361588 m!1434093))

(assert (=> d!361588 m!1434129))

(declare-fun m!1434135 () Bool)

(assert (=> b!1283919 m!1434135))

(declare-fun m!1434137 () Bool)

(assert (=> b!1283920 m!1434137))

(assert (=> b!1283879 d!361588))

(declare-fun d!361590 () Bool)

(declare-fun lt!423395 () Int)

(declare-fun size!10394 (List!12825) Int)

(assert (=> d!361590 (= lt!423395 (size!10394 (list!4738 lt!423380)))))

(declare-fun size!10395 (Conc!4193) Int)

(assert (=> d!361590 (= lt!423395 (size!10395 (c!211479 lt!423380)))))

(assert (=> d!361590 (= (size!10393 lt!423380) lt!423395)))

(declare-fun bs!327655 () Bool)

(assert (= bs!327655 d!361590))

(declare-fun m!1434139 () Bool)

(assert (=> bs!327655 m!1434139))

(assert (=> bs!327655 m!1434139))

(declare-fun m!1434141 () Bool)

(assert (=> bs!327655 m!1434141))

(declare-fun m!1434143 () Bool)

(assert (=> bs!327655 m!1434143))

(assert (=> b!1283879 d!361590))

(declare-fun d!361592 () Bool)

(declare-fun lt!423396 () Int)

(assert (=> d!361592 (= lt!423396 (size!10394 (list!4738 ts!110)))))

(assert (=> d!361592 (= lt!423396 (size!10395 (c!211479 ts!110)))))

(assert (=> d!361592 (= (size!10393 ts!110) lt!423396)))

(declare-fun bs!327656 () Bool)

(assert (= bs!327656 d!361592))

(assert (=> bs!327656 m!1434107))

(assert (=> bs!327656 m!1434107))

(declare-fun m!1434145 () Bool)

(assert (=> bs!327656 m!1434145))

(declare-fun m!1434147 () Bool)

(assert (=> bs!327656 m!1434147))

(assert (=> b!1283879 d!361592))

(declare-fun d!361594 () Bool)

(declare-fun lt!423399 () Token!4044)

(declare-fun head!2190 (List!12825) Token!4044)

(assert (=> d!361594 (= lt!423399 (head!2190 (list!4738 ts!110)))))

(declare-fun head!2191 (Conc!4193) Token!4044)

(assert (=> d!361594 (= lt!423399 (head!2191 (c!211479 ts!110)))))

(assert (=> d!361594 (not (isEmpty!7564 ts!110))))

(assert (=> d!361594 (= (head!2189 ts!110) lt!423399)))

(declare-fun bs!327657 () Bool)

(assert (= bs!327657 d!361594))

(assert (=> bs!327657 m!1434107))

(assert (=> bs!327657 m!1434107))

(declare-fun m!1434149 () Bool)

(assert (=> bs!327657 m!1434149))

(declare-fun m!1434151 () Bool)

(assert (=> bs!327657 m!1434151))

(assert (=> bs!327657 m!1434067))

(assert (=> b!1283879 d!361594))

(declare-fun d!361596 () Bool)

(declare-fun res!575885 () Bool)

(declare-fun e!823252 () Bool)

(assert (=> d!361596 (=> (not res!575885) (not e!823252))))

(declare-fun rulesValid!797 (LexerInterface!1886 List!12821) Bool)

(assert (=> d!361596 (= res!575885 (rulesValid!797 thiss!10944 rs!174))))

(assert (=> d!361596 (= (rulesInvariant!1756 thiss!10944 rs!174) e!823252)))

(declare-fun b!1283923 () Bool)

(declare-datatypes ((List!12826 0))(
  ( (Nil!12760) (Cons!12760 (h!18161 String!15641) (t!116679 List!12826)) )
))
(declare-fun noDuplicateTag!797 (LexerInterface!1886 List!12821 List!12826) Bool)

(assert (=> b!1283923 (= e!823252 (noDuplicateTag!797 thiss!10944 rs!174 Nil!12760))))

(assert (= (and d!361596 res!575885) b!1283923))

(declare-fun m!1434153 () Bool)

(assert (=> d!361596 m!1434153))

(declare-fun m!1434155 () Bool)

(assert (=> b!1283923 m!1434155))

(assert (=> b!1283876 d!361596))

(declare-fun d!361598 () Bool)

(declare-fun lt!423402 () Bool)

(declare-fun forall!3225 (List!12825 Int) Bool)

(assert (=> d!361598 (= lt!423402 (forall!3225 (list!4738 ts!110) lambda!50328))))

(declare-fun forall!3226 (Conc!4193 Int) Bool)

(assert (=> d!361598 (= lt!423402 (forall!3226 (c!211479 ts!110) lambda!50328))))

(assert (=> d!361598 (= (forall!3224 ts!110 lambda!50328) lt!423402)))

(declare-fun bs!327658 () Bool)

(assert (= bs!327658 d!361598))

(assert (=> bs!327658 m!1434107))

(assert (=> bs!327658 m!1434107))

(declare-fun m!1434157 () Bool)

(assert (=> bs!327658 m!1434157))

(declare-fun m!1434159 () Bool)

(assert (=> bs!327658 m!1434159))

(assert (=> b!1283870 d!361598))

(declare-fun bs!327659 () Bool)

(declare-fun d!361600 () Bool)

(assert (= bs!327659 (and d!361600 b!1283870)))

(declare-fun lambda!50331 () Int)

(assert (=> bs!327659 (= lambda!50331 lambda!50328)))

(declare-fun b!1283932 () Bool)

(declare-fun e!823258 () Bool)

(assert (=> b!1283932 (= e!823258 true)))

(declare-fun b!1283931 () Bool)

(declare-fun e!823257 () Bool)

(assert (=> b!1283931 (= e!823257 e!823258)))

(declare-fun b!1283930 () Bool)

(declare-fun e!823256 () Bool)

(assert (=> b!1283930 (= e!823256 e!823257)))

(assert (=> d!361600 e!823256))

(assert (= b!1283931 b!1283932))

(assert (= b!1283930 b!1283931))

(assert (= (and d!361600 ((_ is Cons!12755) rs!174)) b!1283930))

(assert (=> b!1283932 (< (dynLambda!5559 order!7769 (toValue!3368 (transformation!2191 (h!18156 rs!174)))) (dynLambda!5560 order!7771 lambda!50331))))

(assert (=> b!1283932 (< (dynLambda!5561 order!7773 (toChars!3227 (transformation!2191 (h!18156 rs!174)))) (dynLambda!5560 order!7771 lambda!50331))))

(assert (=> d!361600 true))

(declare-fun lt!423410 () tuple3!1186)

(assert (=> d!361600 (= (_1!7191 lt!423410) (forall!3224 lt!423380 lambda!50331))))

(declare-fun e!823255 () tuple3!1186)

(assert (=> d!361600 (= lt!423410 e!823255)))

(declare-fun c!211483 () Bool)

(assert (=> d!361600 (= c!211483 (isEmpty!7564 lt!423380))))

(assert (=> d!361600 (not (isEmpty!7565 rs!174))))

(assert (=> d!361600 (= (rulesProduceEachTokenIndividuallyMem!38 thiss!10944 rs!174 lt!423380 (_2!7191 lt!423378) (_3!884 lt!423378)) lt!423410)))

(declare-fun b!1283928 () Bool)

(assert (=> b!1283928 (= e!823255 (tuple3!1187 true (_2!7191 lt!423378) (_3!884 lt!423378)))))

(declare-fun b!1283929 () Bool)

(declare-fun lt!423411 () tuple3!1186)

(declare-fun lt!423409 () tuple3!1186)

(assert (=> b!1283929 (= e!823255 (tuple3!1187 (and (_1!7191 lt!423411) (_1!7191 lt!423409)) (_2!7191 lt!423409) (_3!884 lt!423409)))))

(assert (=> b!1283929 (= lt!423411 (rulesProduceIndividualTokenMem!25 thiss!10944 rs!174 (head!2189 lt!423380) (_2!7191 lt!423378) (_3!884 lt!423378)))))

(assert (=> b!1283929 (= lt!423409 (rulesProduceEachTokenIndividuallyMem!38 thiss!10944 rs!174 (tail!1817 lt!423380) (_2!7191 lt!423411) (_3!884 lt!423411)))))

(assert (= (and d!361600 c!211483) b!1283928))

(assert (= (and d!361600 (not c!211483)) b!1283929))

(declare-fun m!1434161 () Bool)

(assert (=> d!361600 m!1434161))

(declare-fun m!1434163 () Bool)

(assert (=> d!361600 m!1434163))

(assert (=> d!361600 m!1434059))

(declare-fun m!1434165 () Bool)

(assert (=> b!1283929 m!1434165))

(assert (=> b!1283929 m!1434165))

(declare-fun m!1434167 () Bool)

(assert (=> b!1283929 m!1434167))

(declare-fun m!1434169 () Bool)

(assert (=> b!1283929 m!1434169))

(assert (=> b!1283929 m!1434169))

(declare-fun m!1434171 () Bool)

(assert (=> b!1283929 m!1434171))

(assert (=> b!1283870 d!361600))

(declare-fun d!361602 () Bool)

(declare-fun c!211486 () Bool)

(assert (=> d!361602 (= c!211486 ((_ is Node!4193) (c!211479 ts!110)))))

(declare-fun e!823263 () Bool)

(assert (=> d!361602 (= (inv!17154 (c!211479 ts!110)) e!823263)))

(declare-fun b!1283939 () Bool)

(declare-fun inv!17155 (Conc!4193) Bool)

(assert (=> b!1283939 (= e!823263 (inv!17155 (c!211479 ts!110)))))

(declare-fun b!1283940 () Bool)

(declare-fun e!823264 () Bool)

(assert (=> b!1283940 (= e!823263 e!823264)))

(declare-fun res!575888 () Bool)

(assert (=> b!1283940 (= res!575888 (not ((_ is Leaf!6485) (c!211479 ts!110))))))

(assert (=> b!1283940 (=> res!575888 e!823264)))

(declare-fun b!1283941 () Bool)

(declare-fun inv!17156 (Conc!4193) Bool)

(assert (=> b!1283941 (= e!823264 (inv!17156 (c!211479 ts!110)))))

(assert (= (and d!361602 c!211486) b!1283939))

(assert (= (and d!361602 (not c!211486)) b!1283940))

(assert (= (and b!1283940 (not res!575888)) b!1283941))

(declare-fun m!1434173 () Bool)

(assert (=> b!1283939 m!1434173))

(declare-fun m!1434175 () Bool)

(assert (=> b!1283941 m!1434175))

(assert (=> b!1283875 d!361602))

(declare-fun b!1283952 () Bool)

(declare-fun b_free!30051 () Bool)

(declare-fun b_next!30755 () Bool)

(assert (=> b!1283952 (= b_free!30051 (not b_next!30755))))

(declare-fun tp!373293 () Bool)

(declare-fun b_and!85195 () Bool)

(assert (=> b!1283952 (= tp!373293 b_and!85195)))

(declare-fun b_free!30053 () Bool)

(declare-fun b_next!30757 () Bool)

(assert (=> b!1283952 (= b_free!30053 (not b_next!30757))))

(declare-fun tp!373294 () Bool)

(declare-fun b_and!85197 () Bool)

(assert (=> b!1283952 (= tp!373294 b_and!85197)))

(declare-fun e!823276 () Bool)

(assert (=> b!1283952 (= e!823276 (and tp!373293 tp!373294))))

(declare-fun e!823273 () Bool)

(declare-fun tp!373292 () Bool)

(declare-fun b!1283951 () Bool)

(assert (=> b!1283951 (= e!823273 (and tp!373292 (inv!17144 (tag!2453 (h!18156 (t!116671 rs!174)))) (inv!17150 (transformation!2191 (h!18156 (t!116671 rs!174)))) e!823276))))

(declare-fun b!1283950 () Bool)

(declare-fun e!823275 () Bool)

(declare-fun tp!373295 () Bool)

(assert (=> b!1283950 (= e!823275 (and e!823273 tp!373295))))

(assert (=> b!1283877 (= tp!373274 e!823275)))

(assert (= b!1283951 b!1283952))

(assert (= b!1283950 b!1283951))

(assert (= (and b!1283877 ((_ is Cons!12755) (t!116671 rs!174))) b!1283950))

(declare-fun m!1434177 () Bool)

(assert (=> b!1283951 m!1434177))

(declare-fun m!1434179 () Bool)

(assert (=> b!1283951 m!1434179))

(declare-fun b!1283961 () Bool)

(declare-fun e!823285 () Bool)

(declare-fun tp!373305 () Bool)

(assert (=> b!1283961 (= e!823285 tp!373305)))

(declare-fun b!1283962 () Bool)

(declare-fun e!823284 () Bool)

(declare-fun tp!373304 () Bool)

(assert (=> b!1283962 (= e!823284 tp!373304)))

(declare-fun setIsEmpty!8150 () Bool)

(declare-fun setRes!8150 () Bool)

(assert (=> setIsEmpty!8150 setRes!8150))

(declare-fun setNonEmpty!8150 () Bool)

(declare-fun setElem!8150 () Context!1114)

(declare-fun tp!373307 () Bool)

(declare-fun inv!17157 (Context!1114) Bool)

(assert (=> setNonEmpty!8150 (= setRes!8150 (and tp!373307 (inv!17157 setElem!8150) e!823285))))

(declare-fun setRest!8150 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8150 (= (_2!7188 (h!18158 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8150 true) setRest!8150))))

(declare-fun b!1283963 () Bool)

(declare-fun e!823283 () Bool)

(declare-fun tp!373306 () Bool)

(declare-fun tp_is_empty!6535 () Bool)

(assert (=> b!1283963 (= e!823283 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))))) e!823284 tp_is_empty!6535 setRes!8150 tp!373306))))

(declare-fun condSetEmpty!8150 () Bool)

(assert (=> b!1283963 (= condSetEmpty!8150 (= (_2!7188 (h!18158 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1283868 (= tp!373277 e!823283)))

(assert (= b!1283963 b!1283962))

(assert (= (and b!1283963 condSetEmpty!8150) setIsEmpty!8150))

(assert (= (and b!1283963 (not condSetEmpty!8150)) setNonEmpty!8150))

(assert (= setNonEmpty!8150 b!1283961))

(assert (= (and b!1283868 ((_ is Cons!12757) (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))) b!1283963))

(declare-fun m!1434181 () Bool)

(assert (=> setNonEmpty!8150 m!1434181))

(declare-fun m!1434183 () Bool)

(assert (=> b!1283963 m!1434183))

(declare-fun b!1283964 () Bool)

(declare-fun e!823288 () Bool)

(declare-fun tp!373309 () Bool)

(assert (=> b!1283964 (= e!823288 tp!373309)))

(declare-fun b!1283965 () Bool)

(declare-fun e!823287 () Bool)

(declare-fun tp!373308 () Bool)

(assert (=> b!1283965 (= e!823287 tp!373308)))

(declare-fun setIsEmpty!8151 () Bool)

(declare-fun setRes!8151 () Bool)

(assert (=> setIsEmpty!8151 setRes!8151))

(declare-fun setElem!8151 () Context!1114)

(declare-fun setNonEmpty!8151 () Bool)

(declare-fun tp!373311 () Bool)

(assert (=> setNonEmpty!8151 (= setRes!8151 (and tp!373311 (inv!17157 setElem!8151) e!823288))))

(declare-fun setRest!8151 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8151 (= (_2!7188 (h!18158 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8151 true) setRest!8151))))

(declare-fun e!823286 () Bool)

(declare-fun tp!373310 () Bool)

(declare-fun b!1283966 () Bool)

(assert (=> b!1283966 (= e!823286 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))))) e!823287 tp_is_empty!6535 setRes!8151 tp!373310))))

(declare-fun condSetEmpty!8151 () Bool)

(assert (=> b!1283966 (= condSetEmpty!8151 (= (_2!7188 (h!18158 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1283868 (= tp!373271 e!823286)))

(assert (= b!1283966 b!1283965))

(assert (= (and b!1283966 condSetEmpty!8151) setIsEmpty!8151))

(assert (= (and b!1283966 (not condSetEmpty!8151)) setNonEmpty!8151))

(assert (= setNonEmpty!8151 b!1283964))

(assert (= (and b!1283868 ((_ is Cons!12757) (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))) b!1283966))

(declare-fun m!1434185 () Bool)

(assert (=> setNonEmpty!8151 m!1434185))

(declare-fun m!1434187 () Bool)

(assert (=> b!1283966 m!1434187))

(declare-fun b!1283977 () Bool)

(declare-fun e!823291 () Bool)

(assert (=> b!1283977 (= e!823291 tp_is_empty!6535)))

(declare-fun b!1283978 () Bool)

(declare-fun tp!373325 () Bool)

(declare-fun tp!373326 () Bool)

(assert (=> b!1283978 (= e!823291 (and tp!373325 tp!373326))))

(declare-fun b!1283980 () Bool)

(declare-fun tp!373323 () Bool)

(declare-fun tp!373322 () Bool)

(assert (=> b!1283980 (= e!823291 (and tp!373323 tp!373322))))

(declare-fun b!1283979 () Bool)

(declare-fun tp!373324 () Bool)

(assert (=> b!1283979 (= e!823291 tp!373324)))

(assert (=> b!1283867 (= tp!373282 e!823291)))

(assert (= (and b!1283867 ((_ is ElementMatch!3505) (regex!2191 (h!18156 rs!174)))) b!1283977))

(assert (= (and b!1283867 ((_ is Concat!5787) (regex!2191 (h!18156 rs!174)))) b!1283978))

(assert (= (and b!1283867 ((_ is Star!3505) (regex!2191 (h!18156 rs!174)))) b!1283979))

(assert (= (and b!1283867 ((_ is Union!3505) (regex!2191 (h!18156 rs!174)))) b!1283980))

(declare-fun e!823298 () Bool)

(declare-fun setRes!8154 () Bool)

(declare-fun b!1283989 () Bool)

(declare-fun e!823299 () Bool)

(declare-fun tp!373340 () Bool)

(declare-fun tp!373341 () Bool)

(assert (=> b!1283989 (= e!823298 (and tp!373340 (inv!17157 (_2!7189 (_1!7190 (h!18159 mapDefault!6456)))) e!823299 tp_is_empty!6535 setRes!8154 tp!373341))))

(declare-fun condSetEmpty!8154 () Bool)

(assert (=> b!1283989 (= condSetEmpty!8154 (= (_2!7190 (h!18159 mapDefault!6456)) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1283869 (= tp!373266 e!823298)))

(declare-fun b!1283990 () Bool)

(declare-fun tp!373338 () Bool)

(assert (=> b!1283990 (= e!823299 tp!373338)))

(declare-fun setNonEmpty!8154 () Bool)

(declare-fun e!823300 () Bool)

(declare-fun tp!373337 () Bool)

(declare-fun setElem!8154 () Context!1114)

(assert (=> setNonEmpty!8154 (= setRes!8154 (and tp!373337 (inv!17157 setElem!8154) e!823300))))

(declare-fun setRest!8154 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8154 (= (_2!7190 (h!18159 mapDefault!6456)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8154 true) setRest!8154))))

(declare-fun setIsEmpty!8154 () Bool)

(assert (=> setIsEmpty!8154 setRes!8154))

(declare-fun b!1283991 () Bool)

(declare-fun tp!373339 () Bool)

(assert (=> b!1283991 (= e!823300 tp!373339)))

(assert (= b!1283989 b!1283990))

(assert (= (and b!1283989 condSetEmpty!8154) setIsEmpty!8154))

(assert (= (and b!1283989 (not condSetEmpty!8154)) setNonEmpty!8154))

(assert (= setNonEmpty!8154 b!1283991))

(assert (= (and b!1283869 ((_ is Cons!12758) mapDefault!6456)) b!1283989))

(declare-fun m!1434189 () Bool)

(assert (=> b!1283989 m!1434189))

(declare-fun m!1434191 () Bool)

(assert (=> setNonEmpty!8154 m!1434191))

(declare-fun mapValue!6459 () List!12824)

(declare-fun tp!373368 () Bool)

(declare-fun b!1284006 () Bool)

(declare-fun e!823315 () Bool)

(declare-fun e!823317 () Bool)

(declare-fun setRes!8160 () Bool)

(declare-fun tp!373371 () Bool)

(assert (=> b!1284006 (= e!823315 (and tp!373371 (inv!17157 (_2!7189 (_1!7190 (h!18159 mapValue!6459)))) e!823317 tp_is_empty!6535 setRes!8160 tp!373368))))

(declare-fun condSetEmpty!8159 () Bool)

(assert (=> b!1284006 (= condSetEmpty!8159 (= (_2!7190 (h!18159 mapValue!6459)) ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setIsEmpty!8159 () Bool)

(declare-fun setRes!8159 () Bool)

(assert (=> setIsEmpty!8159 setRes!8159))

(declare-fun condMapEmpty!6459 () Bool)

(declare-fun mapDefault!6459 () List!12824)

(assert (=> mapNonEmpty!6456 (= condMapEmpty!6459 (= mapRest!6455 ((as const (Array (_ BitVec 32) List!12824)) mapDefault!6459)))))

(declare-fun e!823313 () Bool)

(declare-fun mapRes!6459 () Bool)

(assert (=> mapNonEmpty!6456 (= tp!373279 (and e!823313 mapRes!6459))))

(declare-fun setIsEmpty!8160 () Bool)

(assert (=> setIsEmpty!8160 setRes!8160))

(declare-fun b!1284007 () Bool)

(declare-fun e!823314 () Bool)

(declare-fun tp!373364 () Bool)

(assert (=> b!1284007 (= e!823314 tp!373364)))

(declare-fun b!1284008 () Bool)

(declare-fun e!823316 () Bool)

(declare-fun tp!373370 () Bool)

(assert (=> b!1284008 (= e!823316 tp!373370)))

(declare-fun tp!373373 () Bool)

(declare-fun setNonEmpty!8159 () Bool)

(declare-fun setElem!8160 () Context!1114)

(assert (=> setNonEmpty!8159 (= setRes!8159 (and tp!373373 (inv!17157 setElem!8160) e!823314))))

(declare-fun setRest!8159 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8159 (= (_2!7190 (h!18159 mapDefault!6459)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8160 true) setRest!8159))))

(declare-fun setElem!8159 () Context!1114)

(declare-fun tp!373374 () Bool)

(declare-fun e!823318 () Bool)

(declare-fun setNonEmpty!8160 () Bool)

(assert (=> setNonEmpty!8160 (= setRes!8160 (and tp!373374 (inv!17157 setElem!8159) e!823318))))

(declare-fun setRest!8160 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8160 (= (_2!7190 (h!18159 mapValue!6459)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8159 true) setRest!8160))))

(declare-fun mapIsEmpty!6459 () Bool)

(assert (=> mapIsEmpty!6459 mapRes!6459))

(declare-fun mapNonEmpty!6459 () Bool)

(declare-fun tp!373367 () Bool)

(assert (=> mapNonEmpty!6459 (= mapRes!6459 (and tp!373367 e!823315))))

(declare-fun mapKey!6459 () (_ BitVec 32))

(declare-fun mapRest!6459 () (Array (_ BitVec 32) List!12824))

(assert (=> mapNonEmpty!6459 (= mapRest!6455 (store mapRest!6459 mapKey!6459 mapValue!6459))))

(declare-fun tp!373372 () Bool)

(declare-fun b!1284009 () Bool)

(declare-fun tp!373365 () Bool)

(assert (=> b!1284009 (= e!823313 (and tp!373372 (inv!17157 (_2!7189 (_1!7190 (h!18159 mapDefault!6459)))) e!823316 tp_is_empty!6535 setRes!8159 tp!373365))))

(declare-fun condSetEmpty!8160 () Bool)

(assert (=> b!1284009 (= condSetEmpty!8160 (= (_2!7190 (h!18159 mapDefault!6459)) ((as const (Array Context!1114 Bool)) false)))))

(declare-fun b!1284010 () Bool)

(declare-fun tp!373369 () Bool)

(assert (=> b!1284010 (= e!823317 tp!373369)))

(declare-fun b!1284011 () Bool)

(declare-fun tp!373366 () Bool)

(assert (=> b!1284011 (= e!823318 tp!373366)))

(assert (= (and mapNonEmpty!6456 condMapEmpty!6459) mapIsEmpty!6459))

(assert (= (and mapNonEmpty!6456 (not condMapEmpty!6459)) mapNonEmpty!6459))

(assert (= b!1284006 b!1284010))

(assert (= (and b!1284006 condSetEmpty!8159) setIsEmpty!8160))

(assert (= (and b!1284006 (not condSetEmpty!8159)) setNonEmpty!8160))

(assert (= setNonEmpty!8160 b!1284011))

(assert (= (and mapNonEmpty!6459 ((_ is Cons!12758) mapValue!6459)) b!1284006))

(assert (= b!1284009 b!1284008))

(assert (= (and b!1284009 condSetEmpty!8160) setIsEmpty!8159))

(assert (= (and b!1284009 (not condSetEmpty!8160)) setNonEmpty!8159))

(assert (= setNonEmpty!8159 b!1284007))

(assert (= (and mapNonEmpty!6456 ((_ is Cons!12758) mapDefault!6459)) b!1284009))

(declare-fun m!1434193 () Bool)

(assert (=> setNonEmpty!8160 m!1434193))

(declare-fun m!1434195 () Bool)

(assert (=> b!1284006 m!1434195))

(declare-fun m!1434197 () Bool)

(assert (=> mapNonEmpty!6459 m!1434197))

(declare-fun m!1434199 () Bool)

(assert (=> setNonEmpty!8159 m!1434199))

(declare-fun m!1434201 () Bool)

(assert (=> b!1284009 m!1434201))

(declare-fun tp!373378 () Bool)

(declare-fun tp!373379 () Bool)

(declare-fun b!1284012 () Bool)

(declare-fun e!823319 () Bool)

(declare-fun e!823320 () Bool)

(declare-fun setRes!8161 () Bool)

(assert (=> b!1284012 (= e!823319 (and tp!373378 (inv!17157 (_2!7189 (_1!7190 (h!18159 mapValue!6455)))) e!823320 tp_is_empty!6535 setRes!8161 tp!373379))))

(declare-fun condSetEmpty!8161 () Bool)

(assert (=> b!1284012 (= condSetEmpty!8161 (= (_2!7190 (h!18159 mapValue!6455)) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> mapNonEmpty!6456 (= tp!373280 e!823319)))

(declare-fun b!1284013 () Bool)

(declare-fun tp!373376 () Bool)

(assert (=> b!1284013 (= e!823320 tp!373376)))

(declare-fun setElem!8161 () Context!1114)

(declare-fun tp!373375 () Bool)

(declare-fun setNonEmpty!8161 () Bool)

(declare-fun e!823321 () Bool)

(assert (=> setNonEmpty!8161 (= setRes!8161 (and tp!373375 (inv!17157 setElem!8161) e!823321))))

(declare-fun setRest!8161 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8161 (= (_2!7190 (h!18159 mapValue!6455)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8161 true) setRest!8161))))

(declare-fun setIsEmpty!8161 () Bool)

(assert (=> setIsEmpty!8161 setRes!8161))

(declare-fun b!1284014 () Bool)

(declare-fun tp!373377 () Bool)

(assert (=> b!1284014 (= e!823321 tp!373377)))

(assert (= b!1284012 b!1284013))

(assert (= (and b!1284012 condSetEmpty!8161) setIsEmpty!8161))

(assert (= (and b!1284012 (not condSetEmpty!8161)) setNonEmpty!8161))

(assert (= setNonEmpty!8161 b!1284014))

(assert (= (and mapNonEmpty!6456 ((_ is Cons!12758) mapValue!6455)) b!1284012))

(declare-fun m!1434203 () Bool)

(assert (=> b!1284012 m!1434203))

(declare-fun m!1434205 () Bool)

(assert (=> setNonEmpty!8161 m!1434205))

(declare-fun b!1284015 () Bool)

(declare-fun e!823324 () Bool)

(declare-fun tp!373381 () Bool)

(assert (=> b!1284015 (= e!823324 tp!373381)))

(declare-fun b!1284016 () Bool)

(declare-fun e!823323 () Bool)

(declare-fun tp!373380 () Bool)

(assert (=> b!1284016 (= e!823323 tp!373380)))

(declare-fun setIsEmpty!8162 () Bool)

(declare-fun setRes!8162 () Bool)

(assert (=> setIsEmpty!8162 setRes!8162))

(declare-fun tp!373383 () Bool)

(declare-fun setNonEmpty!8162 () Bool)

(declare-fun setElem!8162 () Context!1114)

(assert (=> setNonEmpty!8162 (= setRes!8162 (and tp!373383 (inv!17157 setElem!8162) e!823324))))

(declare-fun setRest!8162 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8162 (= (_2!7188 (h!18158 mapDefault!6455)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8162 true) setRest!8162))))

(declare-fun b!1284017 () Bool)

(declare-fun e!823322 () Bool)

(declare-fun tp!373382 () Bool)

(assert (=> b!1284017 (= e!823322 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 mapDefault!6455)))) e!823323 tp_is_empty!6535 setRes!8162 tp!373382))))

(declare-fun condSetEmpty!8162 () Bool)

(assert (=> b!1284017 (= condSetEmpty!8162 (= (_2!7188 (h!18158 mapDefault!6455)) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1283872 (= tp!373273 e!823322)))

(assert (= b!1284017 b!1284016))

(assert (= (and b!1284017 condSetEmpty!8162) setIsEmpty!8162))

(assert (= (and b!1284017 (not condSetEmpty!8162)) setNonEmpty!8162))

(assert (= setNonEmpty!8162 b!1284015))

(assert (= (and b!1283872 ((_ is Cons!12757) mapDefault!6455)) b!1284017))

(declare-fun m!1434207 () Bool)

(assert (=> setNonEmpty!8162 m!1434207))

(declare-fun m!1434209 () Bool)

(assert (=> b!1284017 m!1434209))

(declare-fun b!1284020 () Bool)

(declare-fun e!823327 () Bool)

(assert (=> b!1284020 (= e!823327 true)))

(declare-fun b!1284019 () Bool)

(declare-fun e!823326 () Bool)

(assert (=> b!1284019 (= e!823326 e!823327)))

(declare-fun b!1284018 () Bool)

(declare-fun e!823325 () Bool)

(assert (=> b!1284018 (= e!823325 e!823326)))

(assert (=> b!1283898 e!823325))

(assert (= b!1284019 b!1284020))

(assert (= b!1284018 b!1284019))

(assert (= (and b!1283898 ((_ is Cons!12755) (t!116671 rs!174))) b!1284018))

(assert (=> b!1284020 (< (dynLambda!5559 order!7769 (toValue!3368 (transformation!2191 (h!18156 (t!116671 rs!174))))) (dynLambda!5560 order!7771 lambda!50328))))

(assert (=> b!1284020 (< (dynLambda!5561 order!7773 (toChars!3227 (transformation!2191 (h!18156 (t!116671 rs!174))))) (dynLambda!5560 order!7771 lambda!50328))))

(declare-fun tp!373388 () Bool)

(declare-fun b!1284021 () Bool)

(declare-fun e!823328 () Bool)

(declare-fun tp!373387 () Bool)

(declare-fun e!823329 () Bool)

(declare-fun setRes!8163 () Bool)

(assert (=> b!1284021 (= e!823328 (and tp!373387 (inv!17157 (_2!7189 (_1!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))))) e!823329 tp_is_empty!6535 setRes!8163 tp!373388))))

(declare-fun condSetEmpty!8163 () Bool)

(assert (=> b!1284021 (= condSetEmpty!8163 (= (_2!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1283873 (= tp!373269 e!823328)))

(declare-fun b!1284022 () Bool)

(declare-fun tp!373385 () Bool)

(assert (=> b!1284022 (= e!823329 tp!373385)))

(declare-fun e!823330 () Bool)

(declare-fun tp!373384 () Bool)

(declare-fun setNonEmpty!8163 () Bool)

(declare-fun setElem!8163 () Context!1114)

(assert (=> setNonEmpty!8163 (= setRes!8163 (and tp!373384 (inv!17157 setElem!8163) e!823330))))

(declare-fun setRest!8163 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8163 (= (_2!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8163 true) setRest!8163))))

(declare-fun setIsEmpty!8163 () Bool)

(assert (=> setIsEmpty!8163 setRes!8163))

(declare-fun b!1284023 () Bool)

(declare-fun tp!373386 () Bool)

(assert (=> b!1284023 (= e!823330 tp!373386)))

(assert (= b!1284021 b!1284022))

(assert (= (and b!1284021 condSetEmpty!8163) setIsEmpty!8163))

(assert (= (and b!1284021 (not condSetEmpty!8163)) setNonEmpty!8163))

(assert (= setNonEmpty!8163 b!1284023))

(assert (= (and b!1283873 ((_ is Cons!12758) (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))) b!1284021))

(declare-fun m!1434211 () Bool)

(assert (=> b!1284021 m!1434211))

(declare-fun m!1434213 () Bool)

(assert (=> setNonEmpty!8163 m!1434213))

(declare-fun tp!373393 () Bool)

(declare-fun tp!373392 () Bool)

(declare-fun e!823331 () Bool)

(declare-fun e!823332 () Bool)

(declare-fun b!1284024 () Bool)

(declare-fun setRes!8164 () Bool)

(assert (=> b!1284024 (= e!823331 (and tp!373392 (inv!17157 (_2!7189 (_1!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))))) e!823332 tp_is_empty!6535 setRes!8164 tp!373393))))

(declare-fun condSetEmpty!8164 () Bool)

(assert (=> b!1284024 (= condSetEmpty!8164 (= (_2!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1283873 (= tp!373270 e!823331)))

(declare-fun b!1284025 () Bool)

(declare-fun tp!373390 () Bool)

(assert (=> b!1284025 (= e!823332 tp!373390)))

(declare-fun tp!373389 () Bool)

(declare-fun setElem!8164 () Context!1114)

(declare-fun e!823333 () Bool)

(declare-fun setNonEmpty!8164 () Bool)

(assert (=> setNonEmpty!8164 (= setRes!8164 (and tp!373389 (inv!17157 setElem!8164) e!823333))))

(declare-fun setRest!8164 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8164 (= (_2!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8164 true) setRest!8164))))

(declare-fun setIsEmpty!8164 () Bool)

(assert (=> setIsEmpty!8164 setRes!8164))

(declare-fun b!1284026 () Bool)

(declare-fun tp!373391 () Bool)

(assert (=> b!1284026 (= e!823333 tp!373391)))

(assert (= b!1284024 b!1284025))

(assert (= (and b!1284024 condSetEmpty!8164) setIsEmpty!8164))

(assert (= (and b!1284024 (not condSetEmpty!8164)) setNonEmpty!8164))

(assert (= setNonEmpty!8164 b!1284026))

(assert (= (and b!1283873 ((_ is Cons!12758) (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))) b!1284024))

(declare-fun m!1434215 () Bool)

(assert (=> b!1284024 m!1434215))

(declare-fun m!1434217 () Bool)

(assert (=> setNonEmpty!8164 m!1434217))

(declare-fun b!1284041 () Bool)

(declare-fun e!823348 () Bool)

(declare-fun tp!373414 () Bool)

(assert (=> b!1284041 (= e!823348 tp!373414)))

(declare-fun b!1284042 () Bool)

(declare-fun e!823350 () Bool)

(declare-fun tp!373412 () Bool)

(assert (=> b!1284042 (= e!823350 tp!373412)))

(declare-fun mapNonEmpty!6462 () Bool)

(declare-fun mapRes!6462 () Bool)

(declare-fun tp!373415 () Bool)

(declare-fun e!823347 () Bool)

(assert (=> mapNonEmpty!6462 (= mapRes!6462 (and tp!373415 e!823347))))

(declare-fun mapRest!6462 () (Array (_ BitVec 32) List!12823))

(declare-fun mapKey!6462 () (_ BitVec 32))

(declare-fun mapValue!6462 () List!12823)

(assert (=> mapNonEmpty!6462 (= mapRest!6456 (store mapRest!6462 mapKey!6462 mapValue!6462))))

(declare-fun b!1284043 () Bool)

(declare-fun e!823349 () Bool)

(declare-fun tp!373418 () Bool)

(assert (=> b!1284043 (= e!823349 tp!373418)))

(declare-fun b!1284044 () Bool)

(declare-fun e!823351 () Bool)

(declare-fun tp!373413 () Bool)

(assert (=> b!1284044 (= e!823351 tp!373413)))

(declare-fun setIsEmpty!8169 () Bool)

(declare-fun setRes!8169 () Bool)

(assert (=> setIsEmpty!8169 setRes!8169))

(declare-fun condMapEmpty!6462 () Bool)

(declare-fun mapDefault!6462 () List!12823)

(assert (=> mapNonEmpty!6455 (= condMapEmpty!6462 (= mapRest!6456 ((as const (Array (_ BitVec 32) List!12823)) mapDefault!6462)))))

(declare-fun e!823346 () Bool)

(assert (=> mapNonEmpty!6455 (= tp!373276 (and e!823346 mapRes!6462))))

(declare-fun setNonEmpty!8169 () Bool)

(declare-fun tp!373417 () Bool)

(declare-fun setElem!8169 () Context!1114)

(assert (=> setNonEmpty!8169 (= setRes!8169 (and tp!373417 (inv!17157 setElem!8169) e!823349))))

(declare-fun setRest!8169 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8169 (= (_2!7188 (h!18158 mapValue!6462)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8169 true) setRest!8169))))

(declare-fun tp!373416 () Bool)

(declare-fun setNonEmpty!8170 () Bool)

(declare-fun setElem!8170 () Context!1114)

(declare-fun setRes!8170 () Bool)

(assert (=> setNonEmpty!8170 (= setRes!8170 (and tp!373416 (inv!17157 setElem!8170) e!823350))))

(declare-fun setRest!8170 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8170 (= (_2!7188 (h!18158 mapDefault!6462)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8170 true) setRest!8170))))

(declare-fun tp!373420 () Bool)

(declare-fun b!1284045 () Bool)

(assert (=> b!1284045 (= e!823346 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 mapDefault!6462)))) e!823348 tp_is_empty!6535 setRes!8170 tp!373420))))

(declare-fun condSetEmpty!8170 () Bool)

(assert (=> b!1284045 (= condSetEmpty!8170 (= (_2!7188 (h!18158 mapDefault!6462)) ((as const (Array Context!1114 Bool)) false)))))

(declare-fun tp!373419 () Bool)

(declare-fun b!1284046 () Bool)

(assert (=> b!1284046 (= e!823347 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 mapValue!6462)))) e!823351 tp_is_empty!6535 setRes!8169 tp!373419))))

(declare-fun condSetEmpty!8169 () Bool)

(assert (=> b!1284046 (= condSetEmpty!8169 (= (_2!7188 (h!18158 mapValue!6462)) ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setIsEmpty!8170 () Bool)

(assert (=> setIsEmpty!8170 setRes!8170))

(declare-fun mapIsEmpty!6462 () Bool)

(assert (=> mapIsEmpty!6462 mapRes!6462))

(assert (= (and mapNonEmpty!6455 condMapEmpty!6462) mapIsEmpty!6462))

(assert (= (and mapNonEmpty!6455 (not condMapEmpty!6462)) mapNonEmpty!6462))

(assert (= b!1284046 b!1284044))

(assert (= (and b!1284046 condSetEmpty!8169) setIsEmpty!8169))

(assert (= (and b!1284046 (not condSetEmpty!8169)) setNonEmpty!8169))

(assert (= setNonEmpty!8169 b!1284043))

(assert (= (and mapNonEmpty!6462 ((_ is Cons!12757) mapValue!6462)) b!1284046))

(assert (= b!1284045 b!1284041))

(assert (= (and b!1284045 condSetEmpty!8170) setIsEmpty!8170))

(assert (= (and b!1284045 (not condSetEmpty!8170)) setNonEmpty!8170))

(assert (= setNonEmpty!8170 b!1284042))

(assert (= (and mapNonEmpty!6455 ((_ is Cons!12757) mapDefault!6462)) b!1284045))

(declare-fun m!1434219 () Bool)

(assert (=> setNonEmpty!8170 m!1434219))

(declare-fun m!1434221 () Bool)

(assert (=> b!1284045 m!1434221))

(declare-fun m!1434223 () Bool)

(assert (=> setNonEmpty!8169 m!1434223))

(declare-fun m!1434225 () Bool)

(assert (=> b!1284046 m!1434225))

(declare-fun m!1434227 () Bool)

(assert (=> mapNonEmpty!6462 m!1434227))

(declare-fun b!1284047 () Bool)

(declare-fun e!823354 () Bool)

(declare-fun tp!373422 () Bool)

(assert (=> b!1284047 (= e!823354 tp!373422)))

(declare-fun b!1284048 () Bool)

(declare-fun e!823353 () Bool)

(declare-fun tp!373421 () Bool)

(assert (=> b!1284048 (= e!823353 tp!373421)))

(declare-fun setIsEmpty!8171 () Bool)

(declare-fun setRes!8171 () Bool)

(assert (=> setIsEmpty!8171 setRes!8171))

(declare-fun setElem!8171 () Context!1114)

(declare-fun tp!373424 () Bool)

(declare-fun setNonEmpty!8171 () Bool)

(assert (=> setNonEmpty!8171 (= setRes!8171 (and tp!373424 (inv!17157 setElem!8171) e!823354))))

(declare-fun setRest!8171 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8171 (= (_2!7188 (h!18158 mapValue!6456)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8171 true) setRest!8171))))

(declare-fun b!1284049 () Bool)

(declare-fun e!823352 () Bool)

(declare-fun tp!373423 () Bool)

(assert (=> b!1284049 (= e!823352 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 mapValue!6456)))) e!823353 tp_is_empty!6535 setRes!8171 tp!373423))))

(declare-fun condSetEmpty!8171 () Bool)

(assert (=> b!1284049 (= condSetEmpty!8171 (= (_2!7188 (h!18158 mapValue!6456)) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> mapNonEmpty!6455 (= tp!373265 e!823352)))

(assert (= b!1284049 b!1284048))

(assert (= (and b!1284049 condSetEmpty!8171) setIsEmpty!8171))

(assert (= (and b!1284049 (not condSetEmpty!8171)) setNonEmpty!8171))

(assert (= setNonEmpty!8171 b!1284047))

(assert (= (and mapNonEmpty!6455 ((_ is Cons!12757) mapValue!6456)) b!1284049))

(declare-fun m!1434229 () Bool)

(assert (=> setNonEmpty!8171 m!1434229))

(declare-fun m!1434231 () Bool)

(assert (=> b!1284049 m!1434231))

(declare-fun tp!373432 () Bool)

(declare-fun e!823359 () Bool)

(declare-fun b!1284058 () Bool)

(declare-fun tp!373431 () Bool)

(assert (=> b!1284058 (= e!823359 (and (inv!17154 (left!11006 (c!211479 ts!110))) tp!373432 (inv!17154 (right!11336 (c!211479 ts!110))) tp!373431))))

(declare-fun b!1284060 () Bool)

(declare-fun e!823360 () Bool)

(declare-fun tp!373433 () Bool)

(assert (=> b!1284060 (= e!823360 tp!373433)))

(declare-fun b!1284059 () Bool)

(declare-fun inv!17158 (IArray!8391) Bool)

(assert (=> b!1284059 (= e!823359 (and (inv!17158 (xs!6904 (c!211479 ts!110))) e!823360))))

(assert (=> b!1283875 (= tp!373267 (and (inv!17154 (c!211479 ts!110)) e!823359))))

(assert (= (and b!1283875 ((_ is Node!4193) (c!211479 ts!110))) b!1284058))

(assert (= b!1284059 b!1284060))

(assert (= (and b!1283875 ((_ is Leaf!6485) (c!211479 ts!110))) b!1284059))

(declare-fun m!1434233 () Bool)

(assert (=> b!1284058 m!1434233))

(declare-fun m!1434235 () Bool)

(assert (=> b!1284058 m!1434235))

(declare-fun m!1434237 () Bool)

(assert (=> b!1284059 m!1434237))

(assert (=> b!1283875 m!1434057))

(check-sat (not b!1284042) (not d!361596) b_and!85183 (not d!361598) (not b!1283966) (not b!1283914) (not b!1284049) (not b!1284018) (not b!1284017) (not b!1283911) (not b!1284043) (not b!1284015) (not b!1284058) (not b!1284047) (not d!361584) (not setNonEmpty!8164) (not b!1283950) (not b!1283989) (not d!361568) (not b!1283920) (not b!1283991) (not d!361600) (not setNonEmpty!8170) (not b!1283908) (not b!1284021) (not b!1284041) (not b!1283929) b_and!85197 (not b!1283990) (not b!1284009) (not setNonEmpty!8171) (not b!1284026) tp_is_empty!6535 (not b!1283963) (not b_next!30753) (not b!1283961) (not setNonEmpty!8150) (not b!1283964) b_and!85193 (not b!1284059) (not b!1283980) (not mapNonEmpty!6459) b_and!85195 (not b!1283905) (not b!1283919) (not b!1284048) (not b!1283965) (not b_next!30749) (not setNonEmpty!8154) (not b_next!30751) (not b!1284016) (not d!361592) (not b!1284046) (not b!1283979) (not b!1284008) (not b!1283941) (not d!361574) (not b!1283923) (not b!1284012) (not d!361588) (not b!1284013) (not b!1284023) (not b!1283962) (not b!1283930) (not b_next!30747) (not setNonEmpty!8159) b_and!85187 (not setNonEmpty!8163) (not b!1284014) (not b!1284025) (not b!1284006) (not d!361590) (not setNonEmpty!8161) b_and!85191 (not b!1284011) (not b!1283875) (not setNonEmpty!8169) (not d!361586) (not d!361594) (not b!1284022) (not b!1284060) (not b_next!30743) (not b!1284044) (not b!1284007) (not mapNonEmpty!6462) (not b!1284045) (not b!1283978) (not setNonEmpty!8160) (not b!1283939) (not b_next!30755) (not b!1284024) (not b!1284010) (not setNonEmpty!8151) (not b!1283951) (not setNonEmpty!8162) b_and!85189 b_and!85185 (not b_next!30745) (not b_next!30757))
(check-sat b_and!85183 b_and!85197 (not b_next!30753) b_and!85193 b_and!85195 b_and!85191 (not b_next!30743) (not b_next!30755) (not b_next!30749) (not b_next!30751) (not b_next!30747) b_and!85187 b_and!85189 b_and!85185 (not b_next!30745) (not b_next!30757))
(get-model)

(declare-fun d!361604 () Bool)

(declare-fun list!4739 (Conc!4193) List!12825)

(assert (=> d!361604 (= (list!4738 lt!423386) (list!4739 (c!211479 lt!423386)))))

(declare-fun bs!327660 () Bool)

(assert (= bs!327660 d!361604))

(declare-fun m!1434239 () Bool)

(assert (=> bs!327660 m!1434239))

(assert (=> b!1283914 d!361604))

(declare-fun d!361606 () Bool)

(assert (=> d!361606 (= (tail!1819 (list!4738 ts!110)) (t!116675 (list!4738 ts!110)))))

(assert (=> b!1283914 d!361606))

(declare-fun d!361608 () Bool)

(assert (=> d!361608 (= (list!4738 ts!110) (list!4739 (c!211479 ts!110)))))

(declare-fun bs!327661 () Bool)

(assert (= bs!327661 d!361608))

(declare-fun m!1434241 () Bool)

(assert (=> bs!327661 m!1434241))

(assert (=> b!1283914 d!361608))

(declare-fun b!1284073 () Bool)

(declare-fun res!575907 () Bool)

(declare-fun e!823365 () Bool)

(assert (=> b!1284073 (=> (not res!575907) (not e!823365))))

(assert (=> b!1284073 (= res!575907 (not (isEmpty!7567 (left!11006 (c!211479 ts!110)))))))

(declare-fun b!1284074 () Bool)

(declare-fun e!823366 () Bool)

(assert (=> b!1284074 (= e!823366 e!823365)))

(declare-fun res!575910 () Bool)

(assert (=> b!1284074 (=> (not res!575910) (not e!823365))))

(declare-fun height!595 (Conc!4193) Int)

(assert (=> b!1284074 (= res!575910 (<= (- 1) (- (height!595 (left!11006 (c!211479 ts!110))) (height!595 (right!11336 (c!211479 ts!110))))))))

(declare-fun b!1284075 () Bool)

(declare-fun res!575909 () Bool)

(assert (=> b!1284075 (=> (not res!575909) (not e!823365))))

(assert (=> b!1284075 (= res!575909 (isBalanced!1224 (left!11006 (c!211479 ts!110))))))

(declare-fun d!361610 () Bool)

(declare-fun res!575912 () Bool)

(assert (=> d!361610 (=> res!575912 e!823366)))

(assert (=> d!361610 (= res!575912 (not ((_ is Node!4193) (c!211479 ts!110))))))

(assert (=> d!361610 (= (isBalanced!1224 (c!211479 ts!110)) e!823366)))

(declare-fun b!1284076 () Bool)

(assert (=> b!1284076 (= e!823365 (not (isEmpty!7567 (right!11336 (c!211479 ts!110)))))))

(declare-fun b!1284077 () Bool)

(declare-fun res!575911 () Bool)

(assert (=> b!1284077 (=> (not res!575911) (not e!823365))))

(assert (=> b!1284077 (= res!575911 (isBalanced!1224 (right!11336 (c!211479 ts!110))))))

(declare-fun b!1284078 () Bool)

(declare-fun res!575908 () Bool)

(assert (=> b!1284078 (=> (not res!575908) (not e!823365))))

(assert (=> b!1284078 (= res!575908 (<= (- (height!595 (left!11006 (c!211479 ts!110))) (height!595 (right!11336 (c!211479 ts!110)))) 1))))

(assert (= (and d!361610 (not res!575912)) b!1284074))

(assert (= (and b!1284074 res!575910) b!1284078))

(assert (= (and b!1284078 res!575908) b!1284075))

(assert (= (and b!1284075 res!575909) b!1284077))

(assert (= (and b!1284077 res!575911) b!1284073))

(assert (= (and b!1284073 res!575907) b!1284076))

(declare-fun m!1434243 () Bool)

(assert (=> b!1284073 m!1434243))

(declare-fun m!1434245 () Bool)

(assert (=> b!1284078 m!1434245))

(declare-fun m!1434247 () Bool)

(assert (=> b!1284078 m!1434247))

(assert (=> b!1284074 m!1434245))

(assert (=> b!1284074 m!1434247))

(declare-fun m!1434249 () Bool)

(assert (=> b!1284075 m!1434249))

(declare-fun m!1434251 () Bool)

(assert (=> b!1284076 m!1434251))

(declare-fun m!1434253 () Bool)

(assert (=> b!1284077 m!1434253))

(assert (=> d!361568 d!361610))

(declare-fun d!361612 () Bool)

(declare-fun lt!423414 () Int)

(assert (=> d!361612 (>= lt!423414 0)))

(declare-fun e!823369 () Int)

(assert (=> d!361612 (= lt!423414 e!823369)))

(declare-fun c!211489 () Bool)

(assert (=> d!361612 (= c!211489 ((_ is Nil!12759) (list!4738 lt!423380)))))

(assert (=> d!361612 (= (size!10394 (list!4738 lt!423380)) lt!423414)))

(declare-fun b!1284083 () Bool)

(assert (=> b!1284083 (= e!823369 0)))

(declare-fun b!1284084 () Bool)

(assert (=> b!1284084 (= e!823369 (+ 1 (size!10394 (t!116675 (list!4738 lt!423380)))))))

(assert (= (and d!361612 c!211489) b!1284083))

(assert (= (and d!361612 (not c!211489)) b!1284084))

(declare-fun m!1434255 () Bool)

(assert (=> b!1284084 m!1434255))

(assert (=> d!361590 d!361612))

(declare-fun d!361614 () Bool)

(assert (=> d!361614 (= (list!4738 lt!423380) (list!4739 (c!211479 lt!423380)))))

(declare-fun bs!327662 () Bool)

(assert (= bs!327662 d!361614))

(declare-fun m!1434257 () Bool)

(assert (=> bs!327662 m!1434257))

(assert (=> d!361590 d!361614))

(declare-fun d!361616 () Bool)

(declare-fun lt!423417 () Int)

(assert (=> d!361616 (= lt!423417 (size!10394 (list!4739 (c!211479 lt!423380))))))

(assert (=> d!361616 (= lt!423417 (ite ((_ is Empty!4193) (c!211479 lt!423380)) 0 (ite ((_ is Leaf!6485) (c!211479 lt!423380)) (csize!8617 (c!211479 lt!423380)) (csize!8616 (c!211479 lt!423380)))))))

(assert (=> d!361616 (= (size!10395 (c!211479 lt!423380)) lt!423417)))

(declare-fun bs!327663 () Bool)

(assert (= bs!327663 d!361616))

(assert (=> bs!327663 m!1434257))

(assert (=> bs!327663 m!1434257))

(declare-fun m!1434259 () Bool)

(assert (=> bs!327663 m!1434259))

(assert (=> d!361590 d!361616))

(declare-fun d!361618 () Bool)

(declare-fun lambda!50334 () Int)

(declare-fun forall!3227 (List!12822 Int) Bool)

(assert (=> d!361618 (= (inv!17157 (_1!7187 (_1!7188 (h!18158 mapDefault!6455)))) (forall!3227 (exprs!1057 (_1!7187 (_1!7188 (h!18158 mapDefault!6455)))) lambda!50334))))

(declare-fun bs!327664 () Bool)

(assert (= bs!327664 d!361618))

(declare-fun m!1434261 () Bool)

(assert (=> bs!327664 m!1434261))

(assert (=> b!1284017 d!361618))

(declare-fun bs!327665 () Bool)

(declare-fun d!361620 () Bool)

(assert (= bs!327665 (and d!361620 d!361618)))

(declare-fun lambda!50335 () Int)

(assert (=> bs!327665 (= lambda!50335 lambda!50334)))

(assert (=> d!361620 (= (inv!17157 (_2!7189 (_1!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))))) (forall!3227 (exprs!1057 (_2!7189 (_1!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))))) lambda!50335))))

(declare-fun bs!327666 () Bool)

(assert (= bs!327666 d!361620))

(declare-fun m!1434263 () Bool)

(assert (=> bs!327666 m!1434263))

(assert (=> b!1284024 d!361620))

(declare-fun bs!327667 () Bool)

(declare-fun d!361622 () Bool)

(assert (= bs!327667 (and d!361622 d!361618)))

(declare-fun lambda!50336 () Int)

(assert (=> bs!327667 (= lambda!50336 lambda!50334)))

(declare-fun bs!327668 () Bool)

(assert (= bs!327668 (and d!361622 d!361620)))

(assert (=> bs!327668 (= lambda!50336 lambda!50335)))

(assert (=> d!361622 (= (inv!17157 (_2!7189 (_1!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))))) (forall!3227 (exprs!1057 (_2!7189 (_1!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))))) lambda!50336))))

(declare-fun bs!327669 () Bool)

(assert (= bs!327669 d!361622))

(declare-fun m!1434265 () Bool)

(assert (=> bs!327669 m!1434265))

(assert (=> b!1284021 d!361622))

(declare-fun d!361624 () Bool)

(assert (=> d!361624 (= (head!2190 (list!4738 ts!110)) (h!18160 (list!4738 ts!110)))))

(assert (=> d!361594 d!361624))

(assert (=> d!361594 d!361608))

(declare-fun d!361626 () Bool)

(declare-fun lt!423420 () Token!4044)

(assert (=> d!361626 (= lt!423420 (head!2190 (list!4739 (c!211479 ts!110))))))

(declare-fun e!823372 () Token!4044)

(assert (=> d!361626 (= lt!423420 e!823372)))

(declare-fun c!211492 () Bool)

(assert (=> d!361626 (= c!211492 ((_ is Leaf!6485) (c!211479 ts!110)))))

(assert (=> d!361626 (isBalanced!1224 (c!211479 ts!110))))

(assert (=> d!361626 (= (head!2191 (c!211479 ts!110)) lt!423420)))

(declare-fun b!1284089 () Bool)

(declare-fun apply!2721 (IArray!8391 Int) Token!4044)

(assert (=> b!1284089 (= e!823372 (apply!2721 (xs!6904 (c!211479 ts!110)) 0))))

(declare-fun b!1284090 () Bool)

(assert (=> b!1284090 (= e!823372 (head!2191 (left!11006 (c!211479 ts!110))))))

(assert (= (and d!361626 c!211492) b!1284089))

(assert (= (and d!361626 (not c!211492)) b!1284090))

(assert (=> d!361626 m!1434241))

(assert (=> d!361626 m!1434241))

(declare-fun m!1434267 () Bool)

(assert (=> d!361626 m!1434267))

(assert (=> d!361626 m!1434105))

(declare-fun m!1434269 () Bool)

(assert (=> b!1284089 m!1434269))

(declare-fun m!1434271 () Bool)

(assert (=> b!1284090 m!1434271))

(assert (=> d!361594 d!361626))

(assert (=> d!361594 d!361574))

(declare-fun d!361628 () Bool)

(declare-fun lt!423421 () Bool)

(assert (=> d!361628 (= lt!423421 (forall!3225 (list!4738 lt!423380) lambda!50331))))

(assert (=> d!361628 (= lt!423421 (forall!3226 (c!211479 lt!423380) lambda!50331))))

(assert (=> d!361628 (= (forall!3224 lt!423380 lambda!50331) lt!423421)))

(declare-fun bs!327670 () Bool)

(assert (= bs!327670 d!361628))

(assert (=> bs!327670 m!1434139))

(assert (=> bs!327670 m!1434139))

(declare-fun m!1434273 () Bool)

(assert (=> bs!327670 m!1434273))

(declare-fun m!1434275 () Bool)

(assert (=> bs!327670 m!1434275))

(assert (=> d!361600 d!361628))

(declare-fun d!361630 () Bool)

(declare-fun lt!423422 () Bool)

(assert (=> d!361630 (= lt!423422 (isEmpty!7566 (list!4738 lt!423380)))))

(assert (=> d!361630 (= lt!423422 (isEmpty!7567 (c!211479 lt!423380)))))

(assert (=> d!361630 (= (isEmpty!7564 lt!423380) lt!423422)))

(declare-fun bs!327671 () Bool)

(assert (= bs!327671 d!361630))

(assert (=> bs!327671 m!1434139))

(assert (=> bs!327671 m!1434139))

(declare-fun m!1434277 () Bool)

(assert (=> bs!327671 m!1434277))

(declare-fun m!1434279 () Bool)

(assert (=> bs!327671 m!1434279))

(assert (=> d!361600 d!361630))

(assert (=> d!361600 d!361580))

(declare-fun d!361632 () Bool)

(declare-fun c!211493 () Bool)

(assert (=> d!361632 (= c!211493 ((_ is Node!4193) (left!11006 (c!211479 ts!110))))))

(declare-fun e!823373 () Bool)

(assert (=> d!361632 (= (inv!17154 (left!11006 (c!211479 ts!110))) e!823373)))

(declare-fun b!1284091 () Bool)

(assert (=> b!1284091 (= e!823373 (inv!17155 (left!11006 (c!211479 ts!110))))))

(declare-fun b!1284092 () Bool)

(declare-fun e!823374 () Bool)

(assert (=> b!1284092 (= e!823373 e!823374)))

(declare-fun res!575913 () Bool)

(assert (=> b!1284092 (= res!575913 (not ((_ is Leaf!6485) (left!11006 (c!211479 ts!110)))))))

(assert (=> b!1284092 (=> res!575913 e!823374)))

(declare-fun b!1284093 () Bool)

(assert (=> b!1284093 (= e!823374 (inv!17156 (left!11006 (c!211479 ts!110))))))

(assert (= (and d!361632 c!211493) b!1284091))

(assert (= (and d!361632 (not c!211493)) b!1284092))

(assert (= (and b!1284092 (not res!575913)) b!1284093))

(declare-fun m!1434281 () Bool)

(assert (=> b!1284091 m!1434281))

(declare-fun m!1434283 () Bool)

(assert (=> b!1284093 m!1434283))

(assert (=> b!1284058 d!361632))

(declare-fun d!361634 () Bool)

(declare-fun c!211494 () Bool)

(assert (=> d!361634 (= c!211494 ((_ is Node!4193) (right!11336 (c!211479 ts!110))))))

(declare-fun e!823375 () Bool)

(assert (=> d!361634 (= (inv!17154 (right!11336 (c!211479 ts!110))) e!823375)))

(declare-fun b!1284094 () Bool)

(assert (=> b!1284094 (= e!823375 (inv!17155 (right!11336 (c!211479 ts!110))))))

(declare-fun b!1284095 () Bool)

(declare-fun e!823376 () Bool)

(assert (=> b!1284095 (= e!823375 e!823376)))

(declare-fun res!575914 () Bool)

(assert (=> b!1284095 (= res!575914 (not ((_ is Leaf!6485) (right!11336 (c!211479 ts!110)))))))

(assert (=> b!1284095 (=> res!575914 e!823376)))

(declare-fun b!1284096 () Bool)

(assert (=> b!1284096 (= e!823376 (inv!17156 (right!11336 (c!211479 ts!110))))))

(assert (= (and d!361634 c!211494) b!1284094))

(assert (= (and d!361634 (not c!211494)) b!1284095))

(assert (= (and b!1284095 (not res!575914)) b!1284096))

(declare-fun m!1434285 () Bool)

(assert (=> b!1284094 m!1434285))

(declare-fun m!1434287 () Bool)

(assert (=> b!1284096 m!1434287))

(assert (=> b!1284058 d!361634))

(declare-fun bs!327672 () Bool)

(declare-fun d!361636 () Bool)

(assert (= bs!327672 (and d!361636 d!361618)))

(declare-fun lambda!50337 () Int)

(assert (=> bs!327672 (= lambda!50337 lambda!50334)))

(declare-fun bs!327673 () Bool)

(assert (= bs!327673 (and d!361636 d!361620)))

(assert (=> bs!327673 (= lambda!50337 lambda!50335)))

(declare-fun bs!327674 () Bool)

(assert (= bs!327674 (and d!361636 d!361622)))

(assert (=> bs!327674 (= lambda!50337 lambda!50336)))

(assert (=> d!361636 (= (inv!17157 setElem!8164) (forall!3227 (exprs!1057 setElem!8164) lambda!50337))))

(declare-fun bs!327675 () Bool)

(assert (= bs!327675 d!361636))

(declare-fun m!1434289 () Bool)

(assert (=> bs!327675 m!1434289))

(assert (=> setNonEmpty!8164 d!361636))

(declare-fun d!361638 () Bool)

(declare-fun lt!423425 () Token!4044)

(declare-fun apply!2722 (List!12825 Int) Token!4044)

(assert (=> d!361638 (= lt!423425 (apply!2722 (list!4738 (_1!7192 (_1!7193 lt!423392))) 0))))

(declare-fun apply!2723 (Conc!4193 Int) Token!4044)

(assert (=> d!361638 (= lt!423425 (apply!2723 (c!211479 (_1!7192 (_1!7193 lt!423392))) 0))))

(declare-fun e!823379 () Bool)

(assert (=> d!361638 e!823379))

(declare-fun res!575917 () Bool)

(assert (=> d!361638 (=> (not res!575917) (not e!823379))))

(assert (=> d!361638 (= res!575917 (<= 0 0))))

(assert (=> d!361638 (= (apply!2720 (_1!7192 (_1!7193 lt!423392)) 0) lt!423425)))

(declare-fun b!1284099 () Bool)

(assert (=> b!1284099 (= e!823379 (< 0 (size!10393 (_1!7192 (_1!7193 lt!423392)))))))

(assert (= (and d!361638 res!575917) b!1284099))

(declare-fun m!1434291 () Bool)

(assert (=> d!361638 m!1434291))

(assert (=> d!361638 m!1434291))

(declare-fun m!1434293 () Bool)

(assert (=> d!361638 m!1434293))

(declare-fun m!1434295 () Bool)

(assert (=> d!361638 m!1434295))

(assert (=> b!1284099 m!1434131))

(assert (=> b!1283919 d!361638))

(declare-fun bs!327676 () Bool)

(declare-fun d!361640 () Bool)

(assert (= bs!327676 (and d!361640 d!361618)))

(declare-fun lambda!50338 () Int)

(assert (=> bs!327676 (= lambda!50338 lambda!50334)))

(declare-fun bs!327677 () Bool)

(assert (= bs!327677 (and d!361640 d!361620)))

(assert (=> bs!327677 (= lambda!50338 lambda!50335)))

(declare-fun bs!327678 () Bool)

(assert (= bs!327678 (and d!361640 d!361622)))

(assert (=> bs!327678 (= lambda!50338 lambda!50336)))

(declare-fun bs!327679 () Bool)

(assert (= bs!327679 (and d!361640 d!361636)))

(assert (=> bs!327679 (= lambda!50338 lambda!50337)))

(assert (=> d!361640 (= (inv!17157 setElem!8163) (forall!3227 (exprs!1057 setElem!8163) lambda!50338))))

(declare-fun bs!327680 () Bool)

(assert (= bs!327680 d!361640))

(declare-fun m!1434297 () Bool)

(assert (=> bs!327680 m!1434297))

(assert (=> setNonEmpty!8163 d!361640))

(declare-fun lt!423426 () tuple3!1186)

(declare-fun d!361642 () Bool)

(assert (=> d!361642 (= (_1!7191 lt!423426) (rulesProduceIndividualToken!855 thiss!10944 rs!174 (head!2189 lt!423380)))))

(declare-fun e!823380 () Bool)

(declare-fun lt!423427 () tuple3!1188)

(assert (=> d!361642 (= lt!423426 (tuple3!1187 e!823380 (_2!7193 lt!423427) (_3!885 lt!423427)))))

(declare-fun res!575919 () Bool)

(assert (=> d!361642 (=> (not res!575919) (not e!823380))))

(declare-fun e!823381 () Bool)

(assert (=> d!361642 (= res!575919 e!823381)))

(declare-fun res!575918 () Bool)

(assert (=> d!361642 (=> (not res!575918) (not e!823381))))

(assert (=> d!361642 (= res!575918 (= (size!10393 (_1!7192 (_1!7193 lt!423427))) 1))))

(assert (=> d!361642 (= lt!423427 (lexV1Mem!5 thiss!10944 rs!174 (print!702 thiss!10944 (singletonSeq!773 (head!2189 lt!423380))) (_2!7191 lt!423378) (_3!884 lt!423378)))))

(assert (=> d!361642 (not (isEmpty!7565 rs!174))))

(assert (=> d!361642 (= (rulesProduceIndividualTokenMem!25 thiss!10944 rs!174 (head!2189 lt!423380) (_2!7191 lt!423378) (_3!884 lt!423378)) lt!423426)))

(declare-fun b!1284100 () Bool)

(assert (=> b!1284100 (= e!823381 (= (apply!2720 (_1!7192 (_1!7193 lt!423427)) 0) (head!2189 lt!423380)))))

(declare-fun b!1284101 () Bool)

(assert (=> b!1284101 (= e!823380 (isEmpty!7568 (_2!7192 (_1!7193 lt!423427))))))

(assert (= (and d!361642 res!575918) b!1284100))

(assert (= (and d!361642 res!575919) b!1284101))

(assert (=> d!361642 m!1434059))

(declare-fun m!1434299 () Bool)

(assert (=> d!361642 m!1434299))

(declare-fun m!1434301 () Bool)

(assert (=> d!361642 m!1434301))

(declare-fun m!1434303 () Bool)

(assert (=> d!361642 m!1434303))

(assert (=> d!361642 m!1434299))

(declare-fun m!1434305 () Bool)

(assert (=> d!361642 m!1434305))

(assert (=> d!361642 m!1434165))

(declare-fun m!1434307 () Bool)

(assert (=> d!361642 m!1434307))

(assert (=> d!361642 m!1434165))

(assert (=> d!361642 m!1434303))

(declare-fun m!1434309 () Bool)

(assert (=> b!1284100 m!1434309))

(declare-fun m!1434311 () Bool)

(assert (=> b!1284101 m!1434311))

(assert (=> b!1283929 d!361642))

(declare-fun d!361644 () Bool)

(declare-fun lt!423428 () Token!4044)

(assert (=> d!361644 (= lt!423428 (head!2190 (list!4738 lt!423380)))))

(assert (=> d!361644 (= lt!423428 (head!2191 (c!211479 lt!423380)))))

(assert (=> d!361644 (not (isEmpty!7564 lt!423380))))

(assert (=> d!361644 (= (head!2189 lt!423380) lt!423428)))

(declare-fun bs!327681 () Bool)

(assert (= bs!327681 d!361644))

(assert (=> bs!327681 m!1434139))

(assert (=> bs!327681 m!1434139))

(declare-fun m!1434313 () Bool)

(assert (=> bs!327681 m!1434313))

(declare-fun m!1434315 () Bool)

(assert (=> bs!327681 m!1434315))

(assert (=> bs!327681 m!1434163))

(assert (=> b!1283929 d!361644))

(declare-fun bs!327682 () Bool)

(declare-fun d!361646 () Bool)

(assert (= bs!327682 (and d!361646 b!1283870)))

(declare-fun lambda!50339 () Int)

(assert (=> bs!327682 (= lambda!50339 lambda!50328)))

(declare-fun bs!327683 () Bool)

(assert (= bs!327683 (and d!361646 d!361600)))

(assert (=> bs!327683 (= lambda!50339 lambda!50331)))

(declare-fun b!1284106 () Bool)

(declare-fun e!823385 () Bool)

(assert (=> b!1284106 (= e!823385 true)))

(declare-fun b!1284105 () Bool)

(declare-fun e!823384 () Bool)

(assert (=> b!1284105 (= e!823384 e!823385)))

(declare-fun b!1284104 () Bool)

(declare-fun e!823383 () Bool)

(assert (=> b!1284104 (= e!823383 e!823384)))

(assert (=> d!361646 e!823383))

(assert (= b!1284105 b!1284106))

(assert (= b!1284104 b!1284105))

(assert (= (and d!361646 ((_ is Cons!12755) rs!174)) b!1284104))

(assert (=> b!1284106 (< (dynLambda!5559 order!7769 (toValue!3368 (transformation!2191 (h!18156 rs!174)))) (dynLambda!5560 order!7771 lambda!50339))))

(assert (=> b!1284106 (< (dynLambda!5561 order!7773 (toChars!3227 (transformation!2191 (h!18156 rs!174)))) (dynLambda!5560 order!7771 lambda!50339))))

(assert (=> d!361646 true))

(declare-fun lt!423430 () tuple3!1186)

(assert (=> d!361646 (= (_1!7191 lt!423430) (forall!3224 (tail!1817 lt!423380) lambda!50339))))

(declare-fun e!823382 () tuple3!1186)

(assert (=> d!361646 (= lt!423430 e!823382)))

(declare-fun c!211495 () Bool)

(assert (=> d!361646 (= c!211495 (isEmpty!7564 (tail!1817 lt!423380)))))

(assert (=> d!361646 (not (isEmpty!7565 rs!174))))

(assert (=> d!361646 (= (rulesProduceEachTokenIndividuallyMem!38 thiss!10944 rs!174 (tail!1817 lt!423380) (_2!7191 lt!423411) (_3!884 lt!423411)) lt!423430)))

(declare-fun b!1284102 () Bool)

(assert (=> b!1284102 (= e!823382 (tuple3!1187 true (_2!7191 lt!423411) (_3!884 lt!423411)))))

(declare-fun b!1284103 () Bool)

(declare-fun lt!423431 () tuple3!1186)

(declare-fun lt!423429 () tuple3!1186)

(assert (=> b!1284103 (= e!823382 (tuple3!1187 (and (_1!7191 lt!423431) (_1!7191 lt!423429)) (_2!7191 lt!423429) (_3!884 lt!423429)))))

(assert (=> b!1284103 (= lt!423431 (rulesProduceIndividualTokenMem!25 thiss!10944 rs!174 (head!2189 (tail!1817 lt!423380)) (_2!7191 lt!423411) (_3!884 lt!423411)))))

(assert (=> b!1284103 (= lt!423429 (rulesProduceEachTokenIndividuallyMem!38 thiss!10944 rs!174 (tail!1817 (tail!1817 lt!423380)) (_2!7191 lt!423431) (_3!884 lt!423431)))))

(assert (= (and d!361646 c!211495) b!1284102))

(assert (= (and d!361646 (not c!211495)) b!1284103))

(assert (=> d!361646 m!1434169))

(declare-fun m!1434317 () Bool)

(assert (=> d!361646 m!1434317))

(assert (=> d!361646 m!1434169))

(declare-fun m!1434319 () Bool)

(assert (=> d!361646 m!1434319))

(assert (=> d!361646 m!1434059))

(assert (=> b!1284103 m!1434169))

(declare-fun m!1434321 () Bool)

(assert (=> b!1284103 m!1434321))

(assert (=> b!1284103 m!1434321))

(declare-fun m!1434323 () Bool)

(assert (=> b!1284103 m!1434323))

(assert (=> b!1284103 m!1434169))

(declare-fun m!1434325 () Bool)

(assert (=> b!1284103 m!1434325))

(assert (=> b!1284103 m!1434325))

(declare-fun m!1434327 () Bool)

(assert (=> b!1284103 m!1434327))

(assert (=> b!1283929 d!361646))

(declare-fun d!361648 () Bool)

(declare-fun e!823386 () Bool)

(assert (=> d!361648 e!823386))

(declare-fun res!575920 () Bool)

(assert (=> d!361648 (=> (not res!575920) (not e!823386))))

(assert (=> d!361648 (= res!575920 (isBalanced!1224 (tail!1818 (c!211479 lt!423380))))))

(declare-fun lt!423432 () BalanceConc!8326)

(assert (=> d!361648 (= lt!423432 (BalanceConc!8327 (tail!1818 (c!211479 lt!423380))))))

(assert (=> d!361648 (not (isEmpty!7564 lt!423380))))

(assert (=> d!361648 (= (tail!1817 lt!423380) lt!423432)))

(declare-fun b!1284107 () Bool)

(assert (=> b!1284107 (= e!823386 (= (list!4738 lt!423432) (tail!1819 (list!4738 lt!423380))))))

(assert (= (and d!361648 res!575920) b!1284107))

(declare-fun m!1434329 () Bool)

(assert (=> d!361648 m!1434329))

(assert (=> d!361648 m!1434329))

(declare-fun m!1434331 () Bool)

(assert (=> d!361648 m!1434331))

(assert (=> d!361648 m!1434163))

(declare-fun m!1434333 () Bool)

(assert (=> b!1284107 m!1434333))

(assert (=> b!1284107 m!1434139))

(assert (=> b!1284107 m!1434139))

(declare-fun m!1434335 () Bool)

(assert (=> b!1284107 m!1434335))

(assert (=> b!1283929 d!361648))

(declare-fun bs!327684 () Bool)

(declare-fun d!361650 () Bool)

(assert (= bs!327684 (and d!361650 d!361618)))

(declare-fun lambda!50340 () Int)

(assert (=> bs!327684 (= lambda!50340 lambda!50334)))

(declare-fun bs!327685 () Bool)

(assert (= bs!327685 (and d!361650 d!361640)))

(assert (=> bs!327685 (= lambda!50340 lambda!50338)))

(declare-fun bs!327686 () Bool)

(assert (= bs!327686 (and d!361650 d!361620)))

(assert (=> bs!327686 (= lambda!50340 lambda!50335)))

(declare-fun bs!327687 () Bool)

(assert (= bs!327687 (and d!361650 d!361622)))

(assert (=> bs!327687 (= lambda!50340 lambda!50336)))

(declare-fun bs!327688 () Bool)

(assert (= bs!327688 (and d!361650 d!361636)))

(assert (=> bs!327688 (= lambda!50340 lambda!50337)))

(assert (=> d!361650 (= (inv!17157 setElem!8169) (forall!3227 (exprs!1057 setElem!8169) lambda!50340))))

(declare-fun bs!327689 () Bool)

(assert (= bs!327689 d!361650))

(declare-fun m!1434337 () Bool)

(assert (=> bs!327689 m!1434337))

(assert (=> setNonEmpty!8169 d!361650))

(declare-fun d!361652 () Bool)

(assert (=> d!361652 true))

(declare-fun lambda!50343 () Int)

(declare-fun order!7775 () Int)

(declare-fun dynLambda!5562 (Int Int) Int)

(assert (=> d!361652 (< (dynLambda!5561 order!7773 (toChars!3227 (transformation!2191 (h!18156 rs!174)))) (dynLambda!5562 order!7775 lambda!50343))))

(assert (=> d!361652 true))

(assert (=> d!361652 (< (dynLambda!5559 order!7769 (toValue!3368 (transformation!2191 (h!18156 rs!174)))) (dynLambda!5562 order!7775 lambda!50343))))

(declare-fun Forall!493 (Int) Bool)

(assert (=> d!361652 (= (semiInverseModEq!826 (toChars!3227 (transformation!2191 (h!18156 rs!174))) (toValue!3368 (transformation!2191 (h!18156 rs!174)))) (Forall!493 lambda!50343))))

(declare-fun bs!327690 () Bool)

(assert (= bs!327690 d!361652))

(declare-fun m!1434339 () Bool)

(assert (=> bs!327690 m!1434339))

(assert (=> d!361584 d!361652))

(declare-fun bs!327691 () Bool)

(declare-fun d!361654 () Bool)

(assert (= bs!327691 (and d!361654 d!361618)))

(declare-fun lambda!50344 () Int)

(assert (=> bs!327691 (= lambda!50344 lambda!50334)))

(declare-fun bs!327692 () Bool)

(assert (= bs!327692 (and d!361654 d!361640)))

(assert (=> bs!327692 (= lambda!50344 lambda!50338)))

(declare-fun bs!327693 () Bool)

(assert (= bs!327693 (and d!361654 d!361620)))

(assert (=> bs!327693 (= lambda!50344 lambda!50335)))

(declare-fun bs!327694 () Bool)

(assert (= bs!327694 (and d!361654 d!361622)))

(assert (=> bs!327694 (= lambda!50344 lambda!50336)))

(declare-fun bs!327695 () Bool)

(assert (= bs!327695 (and d!361654 d!361636)))

(assert (=> bs!327695 (= lambda!50344 lambda!50337)))

(declare-fun bs!327696 () Bool)

(assert (= bs!327696 (and d!361654 d!361650)))

(assert (=> bs!327696 (= lambda!50344 lambda!50340)))

(assert (=> d!361654 (= (inv!17157 (_2!7189 (_1!7190 (h!18159 mapValue!6459)))) (forall!3227 (exprs!1057 (_2!7189 (_1!7190 (h!18159 mapValue!6459)))) lambda!50344))))

(declare-fun bs!327697 () Bool)

(assert (= bs!327697 d!361654))

(declare-fun m!1434341 () Bool)

(assert (=> bs!327697 m!1434341))

(assert (=> b!1284006 d!361654))

(declare-fun bs!327698 () Bool)

(declare-fun d!361656 () Bool)

(assert (= bs!327698 (and d!361656 d!361618)))

(declare-fun lambda!50345 () Int)

(assert (=> bs!327698 (= lambda!50345 lambda!50334)))

(declare-fun bs!327699 () Bool)

(assert (= bs!327699 (and d!361656 d!361640)))

(assert (=> bs!327699 (= lambda!50345 lambda!50338)))

(declare-fun bs!327700 () Bool)

(assert (= bs!327700 (and d!361656 d!361620)))

(assert (=> bs!327700 (= lambda!50345 lambda!50335)))

(declare-fun bs!327701 () Bool)

(assert (= bs!327701 (and d!361656 d!361622)))

(assert (=> bs!327701 (= lambda!50345 lambda!50336)))

(declare-fun bs!327702 () Bool)

(assert (= bs!327702 (and d!361656 d!361636)))

(assert (=> bs!327702 (= lambda!50345 lambda!50337)))

(declare-fun bs!327703 () Bool)

(assert (= bs!327703 (and d!361656 d!361650)))

(assert (=> bs!327703 (= lambda!50345 lambda!50340)))

(declare-fun bs!327704 () Bool)

(assert (= bs!327704 (and d!361656 d!361654)))

(assert (=> bs!327704 (= lambda!50345 lambda!50344)))

(assert (=> d!361656 (= (inv!17157 setElem!8170) (forall!3227 (exprs!1057 setElem!8170) lambda!50345))))

(declare-fun bs!327705 () Bool)

(assert (= bs!327705 d!361656))

(declare-fun m!1434343 () Bool)

(assert (=> bs!327705 m!1434343))

(assert (=> setNonEmpty!8170 d!361656))

(declare-fun bs!327706 () Bool)

(declare-fun d!361658 () Bool)

(assert (= bs!327706 (and d!361658 d!361618)))

(declare-fun lambda!50346 () Int)

(assert (=> bs!327706 (= lambda!50346 lambda!50334)))

(declare-fun bs!327707 () Bool)

(assert (= bs!327707 (and d!361658 d!361640)))

(assert (=> bs!327707 (= lambda!50346 lambda!50338)))

(declare-fun bs!327708 () Bool)

(assert (= bs!327708 (and d!361658 d!361620)))

(assert (=> bs!327708 (= lambda!50346 lambda!50335)))

(declare-fun bs!327709 () Bool)

(assert (= bs!327709 (and d!361658 d!361622)))

(assert (=> bs!327709 (= lambda!50346 lambda!50336)))

(declare-fun bs!327710 () Bool)

(assert (= bs!327710 (and d!361658 d!361636)))

(assert (=> bs!327710 (= lambda!50346 lambda!50337)))

(declare-fun bs!327711 () Bool)

(assert (= bs!327711 (and d!361658 d!361654)))

(assert (=> bs!327711 (= lambda!50346 lambda!50344)))

(declare-fun bs!327712 () Bool)

(assert (= bs!327712 (and d!361658 d!361656)))

(assert (=> bs!327712 (= lambda!50346 lambda!50345)))

(declare-fun bs!327713 () Bool)

(assert (= bs!327713 (and d!361658 d!361650)))

(assert (=> bs!327713 (= lambda!50346 lambda!50340)))

(assert (=> d!361658 (= (inv!17157 (_1!7187 (_1!7188 (h!18158 mapValue!6462)))) (forall!3227 (exprs!1057 (_1!7187 (_1!7188 (h!18158 mapValue!6462)))) lambda!50346))))

(declare-fun bs!327714 () Bool)

(assert (= bs!327714 d!361658))

(declare-fun m!1434345 () Bool)

(assert (=> bs!327714 m!1434345))

(assert (=> b!1284046 d!361658))

(declare-fun bs!327715 () Bool)

(declare-fun d!361660 () Bool)

(assert (= bs!327715 (and d!361660 d!361618)))

(declare-fun lambda!50347 () Int)

(assert (=> bs!327715 (= lambda!50347 lambda!50334)))

(declare-fun bs!327716 () Bool)

(assert (= bs!327716 (and d!361660 d!361640)))

(assert (=> bs!327716 (= lambda!50347 lambda!50338)))

(declare-fun bs!327717 () Bool)

(assert (= bs!327717 (and d!361660 d!361620)))

(assert (=> bs!327717 (= lambda!50347 lambda!50335)))

(declare-fun bs!327718 () Bool)

(assert (= bs!327718 (and d!361660 d!361622)))

(assert (=> bs!327718 (= lambda!50347 lambda!50336)))

(declare-fun bs!327719 () Bool)

(assert (= bs!327719 (and d!361660 d!361636)))

(assert (=> bs!327719 (= lambda!50347 lambda!50337)))

(declare-fun bs!327720 () Bool)

(assert (= bs!327720 (and d!361660 d!361658)))

(assert (=> bs!327720 (= lambda!50347 lambda!50346)))

(declare-fun bs!327721 () Bool)

(assert (= bs!327721 (and d!361660 d!361654)))

(assert (=> bs!327721 (= lambda!50347 lambda!50344)))

(declare-fun bs!327722 () Bool)

(assert (= bs!327722 (and d!361660 d!361656)))

(assert (=> bs!327722 (= lambda!50347 lambda!50345)))

(declare-fun bs!327723 () Bool)

(assert (= bs!327723 (and d!361660 d!361650)))

(assert (=> bs!327723 (= lambda!50347 lambda!50340)))

(assert (=> d!361660 (= (inv!17157 setElem!8159) (forall!3227 (exprs!1057 setElem!8159) lambda!50347))))

(declare-fun bs!327724 () Bool)

(assert (= bs!327724 d!361660))

(declare-fun m!1434347 () Bool)

(assert (=> bs!327724 m!1434347))

(assert (=> setNonEmpty!8160 d!361660))

(declare-fun d!361662 () Bool)

(declare-fun res!575925 () Bool)

(declare-fun e!823391 () Bool)

(assert (=> d!361662 (=> res!575925 e!823391)))

(assert (=> d!361662 (= res!575925 ((_ is Nil!12759) (list!4738 ts!110)))))

(assert (=> d!361662 (= (forall!3225 (list!4738 ts!110) lambda!50328) e!823391)))

(declare-fun b!1284116 () Bool)

(declare-fun e!823392 () Bool)

(assert (=> b!1284116 (= e!823391 e!823392)))

(declare-fun res!575926 () Bool)

(assert (=> b!1284116 (=> (not res!575926) (not e!823392))))

(declare-fun dynLambda!5563 (Int Token!4044) Bool)

(assert (=> b!1284116 (= res!575926 (dynLambda!5563 lambda!50328 (h!18160 (list!4738 ts!110))))))

(declare-fun b!1284117 () Bool)

(assert (=> b!1284117 (= e!823392 (forall!3225 (t!116675 (list!4738 ts!110)) lambda!50328))))

(assert (= (and d!361662 (not res!575925)) b!1284116))

(assert (= (and b!1284116 res!575926) b!1284117))

(declare-fun b_lambda!36579 () Bool)

(assert (=> (not b_lambda!36579) (not b!1284116)))

(declare-fun m!1434349 () Bool)

(assert (=> b!1284116 m!1434349))

(declare-fun m!1434351 () Bool)

(assert (=> b!1284117 m!1434351))

(assert (=> d!361598 d!361662))

(assert (=> d!361598 d!361608))

(declare-fun b!1284128 () Bool)

(declare-fun e!823401 () Bool)

(declare-fun e!823399 () Bool)

(assert (=> b!1284128 (= e!823401 e!823399)))

(declare-datatypes ((Unit!18980 0))(
  ( (Unit!18981) )
))
(declare-fun lt!423437 () Unit!18980)

(declare-fun lemmaForallConcat!122 (List!12825 List!12825 Int) Unit!18980)

(assert (=> b!1284128 (= lt!423437 (lemmaForallConcat!122 (list!4739 (left!11006 (c!211479 ts!110))) (list!4739 (right!11336 (c!211479 ts!110))) lambda!50328))))

(declare-fun res!575932 () Bool)

(assert (=> b!1284128 (= res!575932 (forall!3226 (left!11006 (c!211479 ts!110)) lambda!50328))))

(assert (=> b!1284128 (=> (not res!575932) (not e!823399))))

(declare-fun b!1284127 () Bool)

(declare-fun forall!3228 (IArray!8391 Int) Bool)

(assert (=> b!1284127 (= e!823401 (forall!3228 (xs!6904 (c!211479 ts!110)) lambda!50328))))

(declare-fun d!361664 () Bool)

(declare-fun lt!423438 () Bool)

(assert (=> d!361664 (= lt!423438 (forall!3225 (list!4739 (c!211479 ts!110)) lambda!50328))))

(declare-fun e!823400 () Bool)

(assert (=> d!361664 (= lt!423438 e!823400)))

(declare-fun res!575931 () Bool)

(assert (=> d!361664 (=> res!575931 e!823400)))

(assert (=> d!361664 (= res!575931 ((_ is Empty!4193) (c!211479 ts!110)))))

(assert (=> d!361664 (= (forall!3226 (c!211479 ts!110) lambda!50328) lt!423438)))

(declare-fun b!1284126 () Bool)

(assert (=> b!1284126 (= e!823400 e!823401)))

(declare-fun c!211498 () Bool)

(assert (=> b!1284126 (= c!211498 ((_ is Leaf!6485) (c!211479 ts!110)))))

(declare-fun b!1284129 () Bool)

(assert (=> b!1284129 (= e!823399 (forall!3226 (right!11336 (c!211479 ts!110)) lambda!50328))))

(assert (= (and d!361664 (not res!575931)) b!1284126))

(assert (= (and b!1284126 c!211498) b!1284127))

(assert (= (and b!1284126 (not c!211498)) b!1284128))

(assert (= (and b!1284128 res!575932) b!1284129))

(declare-fun m!1434353 () Bool)

(assert (=> b!1284128 m!1434353))

(declare-fun m!1434355 () Bool)

(assert (=> b!1284128 m!1434355))

(assert (=> b!1284128 m!1434353))

(assert (=> b!1284128 m!1434355))

(declare-fun m!1434357 () Bool)

(assert (=> b!1284128 m!1434357))

(declare-fun m!1434359 () Bool)

(assert (=> b!1284128 m!1434359))

(declare-fun m!1434361 () Bool)

(assert (=> b!1284127 m!1434361))

(assert (=> d!361664 m!1434241))

(assert (=> d!361664 m!1434241))

(declare-fun m!1434363 () Bool)

(assert (=> d!361664 m!1434363))

(declare-fun m!1434365 () Bool)

(assert (=> b!1284129 m!1434365))

(assert (=> d!361598 d!361664))

(declare-fun d!361666 () Bool)

(assert (=> d!361666 true))

(declare-fun lt!423441 () Bool)

(declare-fun rulesValidInductive!692 (LexerInterface!1886 List!12821) Bool)

(assert (=> d!361666 (= lt!423441 (rulesValidInductive!692 thiss!10944 rs!174))))

(declare-fun lambda!50350 () Int)

(declare-fun forall!3229 (List!12821 Int) Bool)

(assert (=> d!361666 (= lt!423441 (forall!3229 rs!174 lambda!50350))))

(assert (=> d!361666 (= (rulesValid!797 thiss!10944 rs!174) lt!423441)))

(declare-fun bs!327725 () Bool)

(assert (= bs!327725 d!361666))

(declare-fun m!1434367 () Bool)

(assert (=> bs!327725 m!1434367))

(declare-fun m!1434369 () Bool)

(assert (=> bs!327725 m!1434369))

(assert (=> d!361596 d!361666))

(declare-fun d!361668 () Bool)

(declare-fun res!575939 () Bool)

(declare-fun e!823406 () Bool)

(assert (=> d!361668 (=> (not res!575939) (not e!823406))))

(declare-fun valid!1059 (MutableMap!1294) Bool)

(assert (=> d!361668 (= res!575939 (valid!1059 (cache!1675 cacheDown!411)))))

(assert (=> d!361668 (= (validCacheMapDown!123 (cache!1675 cacheDown!411)) e!823406)))

(declare-fun b!1284138 () Bool)

(declare-fun res!575940 () Bool)

(assert (=> b!1284138 (=> (not res!575940) (not e!823406))))

(declare-fun invariantList!203 (List!12824) Bool)

(declare-datatypes ((ListMap!455 0))(
  ( (ListMap!456 (toList!711 List!12824)) )
))
(declare-fun map!2778 (MutableMap!1294) ListMap!455)

(assert (=> b!1284138 (= res!575940 (invariantList!203 (toList!711 (map!2778 (cache!1675 cacheDown!411)))))))

(declare-fun b!1284139 () Bool)

(declare-fun lambda!50353 () Int)

(declare-fun forall!3230 (List!12824 Int) Bool)

(assert (=> b!1284139 (= e!823406 (forall!3230 (toList!711 (map!2778 (cache!1675 cacheDown!411))) lambda!50353))))

(assert (= (and d!361668 res!575939) b!1284138))

(assert (= (and b!1284138 res!575940) b!1284139))

(declare-fun m!1434372 () Bool)

(assert (=> d!361668 m!1434372))

(declare-fun m!1434374 () Bool)

(assert (=> b!1284138 m!1434374))

(declare-fun m!1434376 () Bool)

(assert (=> b!1284138 m!1434376))

(assert (=> b!1284139 m!1434374))

(declare-fun m!1434378 () Bool)

(assert (=> b!1284139 m!1434378))

(assert (=> b!1283908 d!361668))

(declare-fun bs!327726 () Bool)

(declare-fun d!361670 () Bool)

(assert (= bs!327726 (and d!361670 d!361618)))

(declare-fun lambda!50354 () Int)

(assert (=> bs!327726 (= lambda!50354 lambda!50334)))

(declare-fun bs!327727 () Bool)

(assert (= bs!327727 (and d!361670 d!361620)))

(assert (=> bs!327727 (= lambda!50354 lambda!50335)))

(declare-fun bs!327728 () Bool)

(assert (= bs!327728 (and d!361670 d!361622)))

(assert (=> bs!327728 (= lambda!50354 lambda!50336)))

(declare-fun bs!327729 () Bool)

(assert (= bs!327729 (and d!361670 d!361636)))

(assert (=> bs!327729 (= lambda!50354 lambda!50337)))

(declare-fun bs!327730 () Bool)

(assert (= bs!327730 (and d!361670 d!361658)))

(assert (=> bs!327730 (= lambda!50354 lambda!50346)))

(declare-fun bs!327731 () Bool)

(assert (= bs!327731 (and d!361670 d!361654)))

(assert (=> bs!327731 (= lambda!50354 lambda!50344)))

(declare-fun bs!327732 () Bool)

(assert (= bs!327732 (and d!361670 d!361640)))

(assert (=> bs!327732 (= lambda!50354 lambda!50338)))

(declare-fun bs!327733 () Bool)

(assert (= bs!327733 (and d!361670 d!361660)))

(assert (=> bs!327733 (= lambda!50354 lambda!50347)))

(declare-fun bs!327734 () Bool)

(assert (= bs!327734 (and d!361670 d!361656)))

(assert (=> bs!327734 (= lambda!50354 lambda!50345)))

(declare-fun bs!327735 () Bool)

(assert (= bs!327735 (and d!361670 d!361650)))

(assert (=> bs!327735 (= lambda!50354 lambda!50340)))

(assert (=> d!361670 (= (inv!17157 setElem!8171) (forall!3227 (exprs!1057 setElem!8171) lambda!50354))))

(declare-fun bs!327736 () Bool)

(assert (= bs!327736 d!361670))

(declare-fun m!1434380 () Bool)

(assert (=> bs!327736 m!1434380))

(assert (=> setNonEmpty!8171 d!361670))

(declare-fun d!361672 () Bool)

(declare-fun lt!423442 () Int)

(assert (=> d!361672 (>= lt!423442 0)))

(declare-fun e!823407 () Int)

(assert (=> d!361672 (= lt!423442 e!823407)))

(declare-fun c!211499 () Bool)

(assert (=> d!361672 (= c!211499 ((_ is Nil!12759) (list!4738 ts!110)))))

(assert (=> d!361672 (= (size!10394 (list!4738 ts!110)) lt!423442)))

(declare-fun b!1284140 () Bool)

(assert (=> b!1284140 (= e!823407 0)))

(declare-fun b!1284141 () Bool)

(assert (=> b!1284141 (= e!823407 (+ 1 (size!10394 (t!116675 (list!4738 ts!110)))))))

(assert (= (and d!361672 c!211499) b!1284140))

(assert (= (and d!361672 (not c!211499)) b!1284141))

(declare-fun m!1434382 () Bool)

(assert (=> b!1284141 m!1434382))

(assert (=> d!361592 d!361672))

(assert (=> d!361592 d!361608))

(declare-fun d!361674 () Bool)

(declare-fun lt!423443 () Int)

(assert (=> d!361674 (= lt!423443 (size!10394 (list!4739 (c!211479 ts!110))))))

(assert (=> d!361674 (= lt!423443 (ite ((_ is Empty!4193) (c!211479 ts!110)) 0 (ite ((_ is Leaf!6485) (c!211479 ts!110)) (csize!8617 (c!211479 ts!110)) (csize!8616 (c!211479 ts!110)))))))

(assert (=> d!361674 (= (size!10395 (c!211479 ts!110)) lt!423443)))

(declare-fun bs!327737 () Bool)

(assert (= bs!327737 d!361674))

(assert (=> bs!327737 m!1434241))

(assert (=> bs!327737 m!1434241))

(declare-fun m!1434384 () Bool)

(assert (=> bs!327737 m!1434384))

(assert (=> d!361592 d!361674))

(declare-fun bs!327738 () Bool)

(declare-fun d!361676 () Bool)

(assert (= bs!327738 (and d!361676 d!361618)))

(declare-fun lambda!50355 () Int)

(assert (=> bs!327738 (= lambda!50355 lambda!50334)))

(declare-fun bs!327739 () Bool)

(assert (= bs!327739 (and d!361676 d!361620)))

(assert (=> bs!327739 (= lambda!50355 lambda!50335)))

(declare-fun bs!327740 () Bool)

(assert (= bs!327740 (and d!361676 d!361622)))

(assert (=> bs!327740 (= lambda!50355 lambda!50336)))

(declare-fun bs!327741 () Bool)

(assert (= bs!327741 (and d!361676 d!361636)))

(assert (=> bs!327741 (= lambda!50355 lambda!50337)))

(declare-fun bs!327742 () Bool)

(assert (= bs!327742 (and d!361676 d!361654)))

(assert (=> bs!327742 (= lambda!50355 lambda!50344)))

(declare-fun bs!327743 () Bool)

(assert (= bs!327743 (and d!361676 d!361640)))

(assert (=> bs!327743 (= lambda!50355 lambda!50338)))

(declare-fun bs!327744 () Bool)

(assert (= bs!327744 (and d!361676 d!361660)))

(assert (=> bs!327744 (= lambda!50355 lambda!50347)))

(declare-fun bs!327745 () Bool)

(assert (= bs!327745 (and d!361676 d!361658)))

(assert (=> bs!327745 (= lambda!50355 lambda!50346)))

(declare-fun bs!327746 () Bool)

(assert (= bs!327746 (and d!361676 d!361670)))

(assert (=> bs!327746 (= lambda!50355 lambda!50354)))

(declare-fun bs!327747 () Bool)

(assert (= bs!327747 (and d!361676 d!361656)))

(assert (=> bs!327747 (= lambda!50355 lambda!50345)))

(declare-fun bs!327748 () Bool)

(assert (= bs!327748 (and d!361676 d!361650)))

(assert (=> bs!327748 (= lambda!50355 lambda!50340)))

(assert (=> d!361676 (= (inv!17157 setElem!8150) (forall!3227 (exprs!1057 setElem!8150) lambda!50355))))

(declare-fun bs!327749 () Bool)

(assert (= bs!327749 d!361676))

(declare-fun m!1434386 () Bool)

(assert (=> bs!327749 m!1434386))

(assert (=> setNonEmpty!8150 d!361676))

(assert (=> b!1283875 d!361602))

(declare-fun bs!327750 () Bool)

(declare-fun d!361678 () Bool)

(assert (= bs!327750 (and d!361678 d!361618)))

(declare-fun lambda!50356 () Int)

(assert (=> bs!327750 (= lambda!50356 lambda!50334)))

(declare-fun bs!327751 () Bool)

(assert (= bs!327751 (and d!361678 d!361676)))

(assert (=> bs!327751 (= lambda!50356 lambda!50355)))

(declare-fun bs!327752 () Bool)

(assert (= bs!327752 (and d!361678 d!361620)))

(assert (=> bs!327752 (= lambda!50356 lambda!50335)))

(declare-fun bs!327753 () Bool)

(assert (= bs!327753 (and d!361678 d!361622)))

(assert (=> bs!327753 (= lambda!50356 lambda!50336)))

(declare-fun bs!327754 () Bool)

(assert (= bs!327754 (and d!361678 d!361636)))

(assert (=> bs!327754 (= lambda!50356 lambda!50337)))

(declare-fun bs!327755 () Bool)

(assert (= bs!327755 (and d!361678 d!361654)))

(assert (=> bs!327755 (= lambda!50356 lambda!50344)))

(declare-fun bs!327756 () Bool)

(assert (= bs!327756 (and d!361678 d!361640)))

(assert (=> bs!327756 (= lambda!50356 lambda!50338)))

(declare-fun bs!327757 () Bool)

(assert (= bs!327757 (and d!361678 d!361660)))

(assert (=> bs!327757 (= lambda!50356 lambda!50347)))

(declare-fun bs!327758 () Bool)

(assert (= bs!327758 (and d!361678 d!361658)))

(assert (=> bs!327758 (= lambda!50356 lambda!50346)))

(declare-fun bs!327759 () Bool)

(assert (= bs!327759 (and d!361678 d!361670)))

(assert (=> bs!327759 (= lambda!50356 lambda!50354)))

(declare-fun bs!327760 () Bool)

(assert (= bs!327760 (and d!361678 d!361656)))

(assert (=> bs!327760 (= lambda!50356 lambda!50345)))

(declare-fun bs!327761 () Bool)

(assert (= bs!327761 (and d!361678 d!361650)))

(assert (=> bs!327761 (= lambda!50356 lambda!50340)))

(assert (=> d!361678 (= (inv!17157 (_1!7187 (_1!7188 (h!18158 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))))) (forall!3227 (exprs!1057 (_1!7187 (_1!7188 (h!18158 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))))) lambda!50356))))

(declare-fun bs!327762 () Bool)

(assert (= bs!327762 d!361678))

(declare-fun m!1434388 () Bool)

(assert (=> bs!327762 m!1434388))

(assert (=> b!1283966 d!361678))

(declare-fun d!361680 () Bool)

(assert (=> d!361680 true))

(declare-fun lambda!50359 () Int)

(declare-fun order!7777 () Int)

(declare-fun dynLambda!5564 (Int Int) Int)

(assert (=> d!361680 (< (dynLambda!5559 order!7769 (toValue!3368 (transformation!2191 (h!18156 rs!174)))) (dynLambda!5564 order!7777 lambda!50359))))

(declare-fun Forall2!395 (Int) Bool)

(assert (=> d!361680 (= (equivClasses!785 (toChars!3227 (transformation!2191 (h!18156 rs!174))) (toValue!3368 (transformation!2191 (h!18156 rs!174)))) (Forall2!395 lambda!50359))))

(declare-fun bs!327763 () Bool)

(assert (= bs!327763 d!361680))

(declare-fun m!1434390 () Bool)

(assert (=> bs!327763 m!1434390))

(assert (=> b!1283911 d!361680))

(declare-fun bs!327764 () Bool)

(declare-fun d!361682 () Bool)

(assert (= bs!327764 (and d!361682 d!361618)))

(declare-fun lambda!50360 () Int)

(assert (=> bs!327764 (= lambda!50360 lambda!50334)))

(declare-fun bs!327765 () Bool)

(assert (= bs!327765 (and d!361682 d!361678)))

(assert (=> bs!327765 (= lambda!50360 lambda!50356)))

(declare-fun bs!327766 () Bool)

(assert (= bs!327766 (and d!361682 d!361676)))

(assert (=> bs!327766 (= lambda!50360 lambda!50355)))

(declare-fun bs!327767 () Bool)

(assert (= bs!327767 (and d!361682 d!361620)))

(assert (=> bs!327767 (= lambda!50360 lambda!50335)))

(declare-fun bs!327768 () Bool)

(assert (= bs!327768 (and d!361682 d!361622)))

(assert (=> bs!327768 (= lambda!50360 lambda!50336)))

(declare-fun bs!327769 () Bool)

(assert (= bs!327769 (and d!361682 d!361636)))

(assert (=> bs!327769 (= lambda!50360 lambda!50337)))

(declare-fun bs!327770 () Bool)

(assert (= bs!327770 (and d!361682 d!361654)))

(assert (=> bs!327770 (= lambda!50360 lambda!50344)))

(declare-fun bs!327771 () Bool)

(assert (= bs!327771 (and d!361682 d!361640)))

(assert (=> bs!327771 (= lambda!50360 lambda!50338)))

(declare-fun bs!327772 () Bool)

(assert (= bs!327772 (and d!361682 d!361660)))

(assert (=> bs!327772 (= lambda!50360 lambda!50347)))

(declare-fun bs!327773 () Bool)

(assert (= bs!327773 (and d!361682 d!361658)))

(assert (=> bs!327773 (= lambda!50360 lambda!50346)))

(declare-fun bs!327774 () Bool)

(assert (= bs!327774 (and d!361682 d!361670)))

(assert (=> bs!327774 (= lambda!50360 lambda!50354)))

(declare-fun bs!327775 () Bool)

(assert (= bs!327775 (and d!361682 d!361656)))

(assert (=> bs!327775 (= lambda!50360 lambda!50345)))

(declare-fun bs!327776 () Bool)

(assert (= bs!327776 (and d!361682 d!361650)))

(assert (=> bs!327776 (= lambda!50360 lambda!50340)))

(assert (=> d!361682 (= (inv!17157 (_1!7187 (_1!7188 (h!18158 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))))) (forall!3227 (exprs!1057 (_1!7187 (_1!7188 (h!18158 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))))) lambda!50360))))

(declare-fun bs!327777 () Bool)

(assert (= bs!327777 d!361682))

(declare-fun m!1434392 () Bool)

(assert (=> bs!327777 m!1434392))

(assert (=> b!1283963 d!361682))

(declare-fun bs!327778 () Bool)

(declare-fun d!361684 () Bool)

(assert (= bs!327778 (and d!361684 d!361618)))

(declare-fun lambda!50361 () Int)

(assert (=> bs!327778 (= lambda!50361 lambda!50334)))

(declare-fun bs!327779 () Bool)

(assert (= bs!327779 (and d!361684 d!361678)))

(assert (=> bs!327779 (= lambda!50361 lambda!50356)))

(declare-fun bs!327780 () Bool)

(assert (= bs!327780 (and d!361684 d!361676)))

(assert (=> bs!327780 (= lambda!50361 lambda!50355)))

(declare-fun bs!327781 () Bool)

(assert (= bs!327781 (and d!361684 d!361620)))

(assert (=> bs!327781 (= lambda!50361 lambda!50335)))

(declare-fun bs!327782 () Bool)

(assert (= bs!327782 (and d!361684 d!361622)))

(assert (=> bs!327782 (= lambda!50361 lambda!50336)))

(declare-fun bs!327783 () Bool)

(assert (= bs!327783 (and d!361684 d!361636)))

(assert (=> bs!327783 (= lambda!50361 lambda!50337)))

(declare-fun bs!327784 () Bool)

(assert (= bs!327784 (and d!361684 d!361654)))

(assert (=> bs!327784 (= lambda!50361 lambda!50344)))

(declare-fun bs!327785 () Bool)

(assert (= bs!327785 (and d!361684 d!361640)))

(assert (=> bs!327785 (= lambda!50361 lambda!50338)))

(declare-fun bs!327786 () Bool)

(assert (= bs!327786 (and d!361684 d!361660)))

(assert (=> bs!327786 (= lambda!50361 lambda!50347)))

(declare-fun bs!327787 () Bool)

(assert (= bs!327787 (and d!361684 d!361658)))

(assert (=> bs!327787 (= lambda!50361 lambda!50346)))

(declare-fun bs!327788 () Bool)

(assert (= bs!327788 (and d!361684 d!361670)))

(assert (=> bs!327788 (= lambda!50361 lambda!50354)))

(declare-fun bs!327789 () Bool)

(assert (= bs!327789 (and d!361684 d!361682)))

(assert (=> bs!327789 (= lambda!50361 lambda!50360)))

(declare-fun bs!327790 () Bool)

(assert (= bs!327790 (and d!361684 d!361656)))

(assert (=> bs!327790 (= lambda!50361 lambda!50345)))

(declare-fun bs!327791 () Bool)

(assert (= bs!327791 (and d!361684 d!361650)))

(assert (=> bs!327791 (= lambda!50361 lambda!50340)))

(assert (=> d!361684 (= (inv!17157 (_2!7189 (_1!7190 (h!18159 mapValue!6455)))) (forall!3227 (exprs!1057 (_2!7189 (_1!7190 (h!18159 mapValue!6455)))) lambda!50361))))

(declare-fun bs!327792 () Bool)

(assert (= bs!327792 d!361684))

(declare-fun m!1434394 () Bool)

(assert (=> bs!327792 m!1434394))

(assert (=> b!1284012 d!361684))

(declare-fun d!361686 () Bool)

(declare-fun res!575947 () Bool)

(declare-fun e!823412 () Bool)

(assert (=> d!361686 (=> (not res!575947) (not e!823412))))

(declare-fun valid!1060 (MutableMap!1293) Bool)

(assert (=> d!361686 (= res!575947 (valid!1060 (cache!1674 cacheUp!398)))))

(assert (=> d!361686 (= (validCacheMapUp!123 (cache!1674 cacheUp!398)) e!823412)))

(declare-fun b!1284150 () Bool)

(declare-fun res!575948 () Bool)

(assert (=> b!1284150 (=> (not res!575948) (not e!823412))))

(declare-fun invariantList!204 (List!12823) Bool)

(declare-datatypes ((ListMap!457 0))(
  ( (ListMap!458 (toList!712 List!12823)) )
))
(declare-fun map!2779 (MutableMap!1293) ListMap!457)

(assert (=> b!1284150 (= res!575948 (invariantList!204 (toList!712 (map!2779 (cache!1674 cacheUp!398)))))))

(declare-fun b!1284151 () Bool)

(declare-fun lambda!50364 () Int)

(declare-fun forall!3231 (List!12823 Int) Bool)

(assert (=> b!1284151 (= e!823412 (forall!3231 (toList!712 (map!2779 (cache!1674 cacheUp!398))) lambda!50364))))

(assert (= (and d!361686 res!575947) b!1284150))

(assert (= (and b!1284150 res!575948) b!1284151))

(declare-fun m!1434397 () Bool)

(assert (=> d!361686 m!1434397))

(declare-fun m!1434399 () Bool)

(assert (=> b!1284150 m!1434399))

(declare-fun m!1434401 () Bool)

(assert (=> b!1284150 m!1434401))

(assert (=> b!1284151 m!1434399))

(declare-fun m!1434403 () Bool)

(assert (=> b!1284151 m!1434403))

(assert (=> b!1283905 d!361686))

(declare-fun bs!327793 () Bool)

(declare-fun d!361688 () Bool)

(assert (= bs!327793 (and d!361688 d!361618)))

(declare-fun lambda!50365 () Int)

(assert (=> bs!327793 (= lambda!50365 lambda!50334)))

(declare-fun bs!327794 () Bool)

(assert (= bs!327794 (and d!361688 d!361676)))

(assert (=> bs!327794 (= lambda!50365 lambda!50355)))

(declare-fun bs!327795 () Bool)

(assert (= bs!327795 (and d!361688 d!361620)))

(assert (=> bs!327795 (= lambda!50365 lambda!50335)))

(declare-fun bs!327796 () Bool)

(assert (= bs!327796 (and d!361688 d!361622)))

(assert (=> bs!327796 (= lambda!50365 lambda!50336)))

(declare-fun bs!327797 () Bool)

(assert (= bs!327797 (and d!361688 d!361636)))

(assert (=> bs!327797 (= lambda!50365 lambda!50337)))

(declare-fun bs!327798 () Bool)

(assert (= bs!327798 (and d!361688 d!361654)))

(assert (=> bs!327798 (= lambda!50365 lambda!50344)))

(declare-fun bs!327799 () Bool)

(assert (= bs!327799 (and d!361688 d!361684)))

(assert (=> bs!327799 (= lambda!50365 lambda!50361)))

(declare-fun bs!327800 () Bool)

(assert (= bs!327800 (and d!361688 d!361678)))

(assert (=> bs!327800 (= lambda!50365 lambda!50356)))

(declare-fun bs!327801 () Bool)

(assert (= bs!327801 (and d!361688 d!361640)))

(assert (=> bs!327801 (= lambda!50365 lambda!50338)))

(declare-fun bs!327802 () Bool)

(assert (= bs!327802 (and d!361688 d!361660)))

(assert (=> bs!327802 (= lambda!50365 lambda!50347)))

(declare-fun bs!327803 () Bool)

(assert (= bs!327803 (and d!361688 d!361658)))

(assert (=> bs!327803 (= lambda!50365 lambda!50346)))

(declare-fun bs!327804 () Bool)

(assert (= bs!327804 (and d!361688 d!361670)))

(assert (=> bs!327804 (= lambda!50365 lambda!50354)))

(declare-fun bs!327805 () Bool)

(assert (= bs!327805 (and d!361688 d!361682)))

(assert (=> bs!327805 (= lambda!50365 lambda!50360)))

(declare-fun bs!327806 () Bool)

(assert (= bs!327806 (and d!361688 d!361656)))

(assert (=> bs!327806 (= lambda!50365 lambda!50345)))

(declare-fun bs!327807 () Bool)

(assert (= bs!327807 (and d!361688 d!361650)))

(assert (=> bs!327807 (= lambda!50365 lambda!50340)))

(assert (=> d!361688 (= (inv!17157 setElem!8162) (forall!3227 (exprs!1057 setElem!8162) lambda!50365))))

(declare-fun bs!327808 () Bool)

(assert (= bs!327808 d!361688))

(declare-fun m!1434405 () Bool)

(assert (=> bs!327808 m!1434405))

(assert (=> setNonEmpty!8162 d!361688))

(declare-fun bs!327809 () Bool)

(declare-fun d!361690 () Bool)

(assert (= bs!327809 (and d!361690 d!361618)))

(declare-fun lambda!50366 () Int)

(assert (=> bs!327809 (= lambda!50366 lambda!50334)))

(declare-fun bs!327810 () Bool)

(assert (= bs!327810 (and d!361690 d!361676)))

(assert (=> bs!327810 (= lambda!50366 lambda!50355)))

(declare-fun bs!327811 () Bool)

(assert (= bs!327811 (and d!361690 d!361620)))

(assert (=> bs!327811 (= lambda!50366 lambda!50335)))

(declare-fun bs!327812 () Bool)

(assert (= bs!327812 (and d!361690 d!361622)))

(assert (=> bs!327812 (= lambda!50366 lambda!50336)))

(declare-fun bs!327813 () Bool)

(assert (= bs!327813 (and d!361690 d!361688)))

(assert (=> bs!327813 (= lambda!50366 lambda!50365)))

(declare-fun bs!327814 () Bool)

(assert (= bs!327814 (and d!361690 d!361636)))

(assert (=> bs!327814 (= lambda!50366 lambda!50337)))

(declare-fun bs!327815 () Bool)

(assert (= bs!327815 (and d!361690 d!361654)))

(assert (=> bs!327815 (= lambda!50366 lambda!50344)))

(declare-fun bs!327816 () Bool)

(assert (= bs!327816 (and d!361690 d!361684)))

(assert (=> bs!327816 (= lambda!50366 lambda!50361)))

(declare-fun bs!327817 () Bool)

(assert (= bs!327817 (and d!361690 d!361678)))

(assert (=> bs!327817 (= lambda!50366 lambda!50356)))

(declare-fun bs!327818 () Bool)

(assert (= bs!327818 (and d!361690 d!361640)))

(assert (=> bs!327818 (= lambda!50366 lambda!50338)))

(declare-fun bs!327819 () Bool)

(assert (= bs!327819 (and d!361690 d!361660)))

(assert (=> bs!327819 (= lambda!50366 lambda!50347)))

(declare-fun bs!327820 () Bool)

(assert (= bs!327820 (and d!361690 d!361658)))

(assert (=> bs!327820 (= lambda!50366 lambda!50346)))

(declare-fun bs!327821 () Bool)

(assert (= bs!327821 (and d!361690 d!361670)))

(assert (=> bs!327821 (= lambda!50366 lambda!50354)))

(declare-fun bs!327822 () Bool)

(assert (= bs!327822 (and d!361690 d!361682)))

(assert (=> bs!327822 (= lambda!50366 lambda!50360)))

(declare-fun bs!327823 () Bool)

(assert (= bs!327823 (and d!361690 d!361656)))

(assert (=> bs!327823 (= lambda!50366 lambda!50345)))

(declare-fun bs!327824 () Bool)

(assert (= bs!327824 (and d!361690 d!361650)))

(assert (=> bs!327824 (= lambda!50366 lambda!50340)))

(assert (=> d!361690 (= (inv!17157 setElem!8161) (forall!3227 (exprs!1057 setElem!8161) lambda!50366))))

(declare-fun bs!327825 () Bool)

(assert (= bs!327825 d!361690))

(declare-fun m!1434407 () Bool)

(assert (=> bs!327825 m!1434407))

(assert (=> setNonEmpty!8161 d!361690))

(declare-fun b!1284152 () Bool)

(declare-fun res!575949 () Bool)

(declare-fun e!823413 () Bool)

(assert (=> b!1284152 (=> (not res!575949) (not e!823413))))

(assert (=> b!1284152 (= res!575949 (not (isEmpty!7567 (left!11006 (tail!1818 (c!211479 ts!110))))))))

(declare-fun b!1284153 () Bool)

(declare-fun e!823414 () Bool)

(assert (=> b!1284153 (= e!823414 e!823413)))

(declare-fun res!575952 () Bool)

(assert (=> b!1284153 (=> (not res!575952) (not e!823413))))

(assert (=> b!1284153 (= res!575952 (<= (- 1) (- (height!595 (left!11006 (tail!1818 (c!211479 ts!110)))) (height!595 (right!11336 (tail!1818 (c!211479 ts!110)))))))))

(declare-fun b!1284154 () Bool)

(declare-fun res!575951 () Bool)

(assert (=> b!1284154 (=> (not res!575951) (not e!823413))))

(assert (=> b!1284154 (= res!575951 (isBalanced!1224 (left!11006 (tail!1818 (c!211479 ts!110)))))))

(declare-fun d!361692 () Bool)

(declare-fun res!575954 () Bool)

(assert (=> d!361692 (=> res!575954 e!823414)))

(assert (=> d!361692 (= res!575954 (not ((_ is Node!4193) (tail!1818 (c!211479 ts!110)))))))

(assert (=> d!361692 (= (isBalanced!1224 (tail!1818 (c!211479 ts!110))) e!823414)))

(declare-fun b!1284155 () Bool)

(assert (=> b!1284155 (= e!823413 (not (isEmpty!7567 (right!11336 (tail!1818 (c!211479 ts!110))))))))

(declare-fun b!1284156 () Bool)

(declare-fun res!575953 () Bool)

(assert (=> b!1284156 (=> (not res!575953) (not e!823413))))

(assert (=> b!1284156 (= res!575953 (isBalanced!1224 (right!11336 (tail!1818 (c!211479 ts!110)))))))

(declare-fun b!1284157 () Bool)

(declare-fun res!575950 () Bool)

(assert (=> b!1284157 (=> (not res!575950) (not e!823413))))

(assert (=> b!1284157 (= res!575950 (<= (- (height!595 (left!11006 (tail!1818 (c!211479 ts!110)))) (height!595 (right!11336 (tail!1818 (c!211479 ts!110))))) 1))))

(assert (= (and d!361692 (not res!575954)) b!1284153))

(assert (= (and b!1284153 res!575952) b!1284157))

(assert (= (and b!1284157 res!575950) b!1284154))

(assert (= (and b!1284154 res!575951) b!1284156))

(assert (= (and b!1284156 res!575953) b!1284152))

(assert (= (and b!1284152 res!575949) b!1284155))

(declare-fun m!1434409 () Bool)

(assert (=> b!1284152 m!1434409))

(declare-fun m!1434411 () Bool)

(assert (=> b!1284157 m!1434411))

(declare-fun m!1434413 () Bool)

(assert (=> b!1284157 m!1434413))

(assert (=> b!1284153 m!1434411))

(assert (=> b!1284153 m!1434413))

(declare-fun m!1434415 () Bool)

(assert (=> b!1284154 m!1434415))

(declare-fun m!1434417 () Bool)

(assert (=> b!1284155 m!1434417))

(declare-fun m!1434419 () Bool)

(assert (=> b!1284156 m!1434419))

(assert (=> d!361586 d!361692))

(declare-fun b!1284174 () Bool)

(declare-fun lt!423467 () Unit!18980)

(declare-fun lt!423464 () Unit!18980)

(assert (=> b!1284174 (= lt!423467 lt!423464)))

(declare-fun call!88432 () List!12825)

(declare-fun lt!423460 () List!12825)

(declare-fun slice!526 (List!12825 Int Int) List!12825)

(assert (=> b!1284174 (= call!88432 (slice!526 lt!423460 1 (size!10394 lt!423460)))))

(declare-fun sliceTailLemma!8 (List!12825) Unit!18980)

(assert (=> b!1284174 (= lt!423464 (sliceTailLemma!8 lt!423460))))

(declare-fun list!4740 (IArray!8391) List!12825)

(assert (=> b!1284174 (= lt!423460 (list!4740 (xs!6904 (c!211479 ts!110))))))

(declare-fun e!823428 () Conc!4193)

(declare-fun slice!527 (IArray!8391 Int Int) IArray!8391)

(assert (=> b!1284174 (= e!823428 (Leaf!6485 (slice!527 (xs!6904 (c!211479 ts!110)) 1 (csize!8617 (c!211479 ts!110))) (- (csize!8617 (c!211479 ts!110)) 1)))))

(declare-fun b!1284175 () Bool)

(declare-fun lt!423465 () Unit!18980)

(declare-fun lt!423463 () Unit!18980)

(assert (=> b!1284175 (= lt!423465 lt!423463)))

(declare-fun lt!423466 () List!12825)

(declare-fun lt!423461 () List!12825)

(declare-fun ++!3222 (List!12825 List!12825) List!12825)

(assert (=> b!1284175 (= (tail!1819 (++!3222 lt!423466 lt!423461)) (++!3222 call!88432 lt!423461))))

(declare-fun lemmaTailOfConcatIsTailConcat!8 (List!12825 List!12825) Unit!18980)

(assert (=> b!1284175 (= lt!423463 (lemmaTailOfConcatIsTailConcat!8 lt!423466 lt!423461))))

(assert (=> b!1284175 (= lt!423461 (list!4739 (right!11336 (c!211479 ts!110))))))

(assert (=> b!1284175 (= lt!423466 (list!4739 (left!11006 (c!211479 ts!110))))))

(declare-fun e!823427 () Conc!4193)

(declare-fun call!88433 () Conc!4193)

(declare-fun ++!3223 (Conc!4193 Conc!4193) Conc!4193)

(assert (=> b!1284175 (= e!823427 (++!3223 call!88433 (right!11336 (c!211479 ts!110))))))

(declare-fun b!1284176 () Bool)

(declare-fun e!823426 () Bool)

(declare-fun lt!423462 () Conc!4193)

(assert (=> b!1284176 (= e!823426 (= (list!4739 lt!423462) (tail!1819 (list!4739 (c!211479 ts!110)))))))

(declare-fun b!1284177 () Bool)

(declare-fun e!823425 () Bool)

(assert (=> b!1284177 (= e!823425 (isEmpty!7567 (left!11006 (c!211479 ts!110))))))

(declare-fun b!1284178 () Bool)

(declare-fun e!823429 () Conc!4193)

(assert (=> b!1284178 (= e!823429 e!823428)))

(declare-fun c!211506 () Bool)

(assert (=> b!1284178 (= c!211506 (= (csize!8617 (c!211479 ts!110)) 1))))

(declare-fun bm!88427 () Bool)

(declare-fun c!211508 () Bool)

(assert (=> bm!88427 (= call!88433 (tail!1818 (ite c!211508 (right!11336 (c!211479 ts!110)) (left!11006 (c!211479 ts!110)))))))

(declare-fun b!1284179 () Bool)

(assert (=> b!1284179 (= e!823429 e!823427)))

(declare-fun res!575959 () Bool)

(assert (=> b!1284179 (= res!575959 ((_ is Node!4193) (c!211479 ts!110)))))

(assert (=> b!1284179 (=> (not res!575959) (not e!823425))))

(assert (=> b!1284179 (= c!211508 e!823425)))

(declare-fun c!211507 () Bool)

(declare-fun bm!88428 () Bool)

(assert (=> bm!88428 (= call!88432 (tail!1819 (ite c!211507 lt!423460 lt!423466)))))

(declare-fun b!1284180 () Bool)

(assert (=> b!1284180 (= e!823427 call!88433)))

(declare-fun d!361694 () Bool)

(assert (=> d!361694 e!823426))

(declare-fun res!575960 () Bool)

(assert (=> d!361694 (=> (not res!575960) (not e!823426))))

(assert (=> d!361694 (= res!575960 (isBalanced!1224 lt!423462))))

(assert (=> d!361694 (= lt!423462 e!823429)))

(assert (=> d!361694 (= c!211507 ((_ is Leaf!6485) (c!211479 ts!110)))))

(assert (=> d!361694 (isBalanced!1224 (c!211479 ts!110))))

(assert (=> d!361694 (= (tail!1818 (c!211479 ts!110)) lt!423462)))

(declare-fun b!1284181 () Bool)

(assert (=> b!1284181 (= e!823428 Empty!4193)))

(assert (= (and d!361694 c!211507) b!1284178))

(assert (= (and d!361694 (not c!211507)) b!1284179))

(assert (= (and b!1284178 c!211506) b!1284181))

(assert (= (and b!1284178 (not c!211506)) b!1284174))

(assert (= (and b!1284179 res!575959) b!1284177))

(assert (= (and b!1284179 c!211508) b!1284180))

(assert (= (and b!1284179 (not c!211508)) b!1284175))

(assert (= (or b!1284180 b!1284175) bm!88427))

(assert (= (or b!1284174 b!1284175) bm!88428))

(assert (= (and d!361694 res!575960) b!1284176))

(declare-fun m!1434421 () Bool)

(assert (=> bm!88428 m!1434421))

(declare-fun m!1434423 () Bool)

(assert (=> b!1284176 m!1434423))

(assert (=> b!1284176 m!1434241))

(assert (=> b!1284176 m!1434241))

(declare-fun m!1434425 () Bool)

(assert (=> b!1284176 m!1434425))

(declare-fun m!1434427 () Bool)

(assert (=> b!1284175 m!1434427))

(assert (=> b!1284175 m!1434427))

(declare-fun m!1434429 () Bool)

(assert (=> b!1284175 m!1434429))

(assert (=> b!1284175 m!1434353))

(declare-fun m!1434431 () Bool)

(assert (=> b!1284175 m!1434431))

(assert (=> b!1284175 m!1434355))

(declare-fun m!1434433 () Bool)

(assert (=> b!1284175 m!1434433))

(declare-fun m!1434435 () Bool)

(assert (=> b!1284175 m!1434435))

(declare-fun m!1434437 () Bool)

(assert (=> d!361694 m!1434437))

(assert (=> d!361694 m!1434105))

(declare-fun m!1434439 () Bool)

(assert (=> b!1284174 m!1434439))

(declare-fun m!1434441 () Bool)

(assert (=> b!1284174 m!1434441))

(declare-fun m!1434443 () Bool)

(assert (=> b!1284174 m!1434443))

(declare-fun m!1434445 () Bool)

(assert (=> b!1284174 m!1434445))

(declare-fun m!1434447 () Bool)

(assert (=> b!1284174 m!1434447))

(assert (=> b!1284174 m!1434445))

(assert (=> b!1284177 m!1434243))

(declare-fun m!1434449 () Bool)

(assert (=> bm!88427 m!1434449))

(assert (=> d!361586 d!361694))

(assert (=> d!361586 d!361574))

(declare-fun bs!327826 () Bool)

(declare-fun d!361696 () Bool)

(assert (= bs!327826 (and d!361696 d!361618)))

(declare-fun lambda!50367 () Int)

(assert (=> bs!327826 (= lambda!50367 lambda!50334)))

(declare-fun bs!327827 () Bool)

(assert (= bs!327827 (and d!361696 d!361620)))

(assert (=> bs!327827 (= lambda!50367 lambda!50335)))

(declare-fun bs!327828 () Bool)

(assert (= bs!327828 (and d!361696 d!361622)))

(assert (=> bs!327828 (= lambda!50367 lambda!50336)))

(declare-fun bs!327829 () Bool)

(assert (= bs!327829 (and d!361696 d!361688)))

(assert (=> bs!327829 (= lambda!50367 lambda!50365)))

(declare-fun bs!327830 () Bool)

(assert (= bs!327830 (and d!361696 d!361636)))

(assert (=> bs!327830 (= lambda!50367 lambda!50337)))

(declare-fun bs!327831 () Bool)

(assert (= bs!327831 (and d!361696 d!361654)))

(assert (=> bs!327831 (= lambda!50367 lambda!50344)))

(declare-fun bs!327832 () Bool)

(assert (= bs!327832 (and d!361696 d!361684)))

(assert (=> bs!327832 (= lambda!50367 lambda!50361)))

(declare-fun bs!327833 () Bool)

(assert (= bs!327833 (and d!361696 d!361678)))

(assert (=> bs!327833 (= lambda!50367 lambda!50356)))

(declare-fun bs!327834 () Bool)

(assert (= bs!327834 (and d!361696 d!361640)))

(assert (=> bs!327834 (= lambda!50367 lambda!50338)))

(declare-fun bs!327835 () Bool)

(assert (= bs!327835 (and d!361696 d!361660)))

(assert (=> bs!327835 (= lambda!50367 lambda!50347)))

(declare-fun bs!327836 () Bool)

(assert (= bs!327836 (and d!361696 d!361676)))

(assert (=> bs!327836 (= lambda!50367 lambda!50355)))

(declare-fun bs!327837 () Bool)

(assert (= bs!327837 (and d!361696 d!361690)))

(assert (=> bs!327837 (= lambda!50367 lambda!50366)))

(declare-fun bs!327838 () Bool)

(assert (= bs!327838 (and d!361696 d!361658)))

(assert (=> bs!327838 (= lambda!50367 lambda!50346)))

(declare-fun bs!327839 () Bool)

(assert (= bs!327839 (and d!361696 d!361670)))

(assert (=> bs!327839 (= lambda!50367 lambda!50354)))

(declare-fun bs!327840 () Bool)

(assert (= bs!327840 (and d!361696 d!361682)))

(assert (=> bs!327840 (= lambda!50367 lambda!50360)))

(declare-fun bs!327841 () Bool)

(assert (= bs!327841 (and d!361696 d!361656)))

(assert (=> bs!327841 (= lambda!50367 lambda!50345)))

(declare-fun bs!327842 () Bool)

(assert (= bs!327842 (and d!361696 d!361650)))

(assert (=> bs!327842 (= lambda!50367 lambda!50340)))

(assert (=> d!361696 (= (inv!17157 (_2!7189 (_1!7190 (h!18159 mapDefault!6456)))) (forall!3227 (exprs!1057 (_2!7189 (_1!7190 (h!18159 mapDefault!6456)))) lambda!50367))))

(declare-fun bs!327843 () Bool)

(assert (= bs!327843 d!361696))

(declare-fun m!1434451 () Bool)

(assert (=> bs!327843 m!1434451))

(assert (=> b!1283989 d!361696))

(declare-fun d!361698 () Bool)

(declare-fun lt!423470 () Bool)

(declare-fun isEmpty!7569 (List!12820) Bool)

(declare-fun list!4741 (BalanceConc!8324) List!12820)

(assert (=> d!361698 (= lt!423470 (isEmpty!7569 (list!4741 (_2!7192 (_1!7193 lt!423392)))))))

(declare-fun isEmpty!7570 (Conc!4192) Bool)

(assert (=> d!361698 (= lt!423470 (isEmpty!7570 (c!211477 (_2!7192 (_1!7193 lt!423392)))))))

(assert (=> d!361698 (= (isEmpty!7568 (_2!7192 (_1!7193 lt!423392))) lt!423470)))

(declare-fun bs!327844 () Bool)

(assert (= bs!327844 d!361698))

(declare-fun m!1434453 () Bool)

(assert (=> bs!327844 m!1434453))

(assert (=> bs!327844 m!1434453))

(declare-fun m!1434455 () Bool)

(assert (=> bs!327844 m!1434455))

(declare-fun m!1434457 () Bool)

(assert (=> bs!327844 m!1434457))

(assert (=> b!1283920 d!361698))

(declare-fun bs!327845 () Bool)

(declare-fun d!361700 () Bool)

(assert (= bs!327845 (and d!361700 d!361618)))

(declare-fun lambda!50368 () Int)

(assert (=> bs!327845 (= lambda!50368 lambda!50334)))

(declare-fun bs!327846 () Bool)

(assert (= bs!327846 (and d!361700 d!361620)))

(assert (=> bs!327846 (= lambda!50368 lambda!50335)))

(declare-fun bs!327847 () Bool)

(assert (= bs!327847 (and d!361700 d!361622)))

(assert (=> bs!327847 (= lambda!50368 lambda!50336)))

(declare-fun bs!327848 () Bool)

(assert (= bs!327848 (and d!361700 d!361636)))

(assert (=> bs!327848 (= lambda!50368 lambda!50337)))

(declare-fun bs!327849 () Bool)

(assert (= bs!327849 (and d!361700 d!361654)))

(assert (=> bs!327849 (= lambda!50368 lambda!50344)))

(declare-fun bs!327850 () Bool)

(assert (= bs!327850 (and d!361700 d!361684)))

(assert (=> bs!327850 (= lambda!50368 lambda!50361)))

(declare-fun bs!327851 () Bool)

(assert (= bs!327851 (and d!361700 d!361678)))

(assert (=> bs!327851 (= lambda!50368 lambda!50356)))

(declare-fun bs!327852 () Bool)

(assert (= bs!327852 (and d!361700 d!361640)))

(assert (=> bs!327852 (= lambda!50368 lambda!50338)))

(declare-fun bs!327853 () Bool)

(assert (= bs!327853 (and d!361700 d!361660)))

(assert (=> bs!327853 (= lambda!50368 lambda!50347)))

(declare-fun bs!327854 () Bool)

(assert (= bs!327854 (and d!361700 d!361676)))

(assert (=> bs!327854 (= lambda!50368 lambda!50355)))

(declare-fun bs!327855 () Bool)

(assert (= bs!327855 (and d!361700 d!361690)))

(assert (=> bs!327855 (= lambda!50368 lambda!50366)))

(declare-fun bs!327856 () Bool)

(assert (= bs!327856 (and d!361700 d!361688)))

(assert (=> bs!327856 (= lambda!50368 lambda!50365)))

(declare-fun bs!327857 () Bool)

(assert (= bs!327857 (and d!361700 d!361696)))

(assert (=> bs!327857 (= lambda!50368 lambda!50367)))

(declare-fun bs!327858 () Bool)

(assert (= bs!327858 (and d!361700 d!361658)))

(assert (=> bs!327858 (= lambda!50368 lambda!50346)))

(declare-fun bs!327859 () Bool)

(assert (= bs!327859 (and d!361700 d!361670)))

(assert (=> bs!327859 (= lambda!50368 lambda!50354)))

(declare-fun bs!327860 () Bool)

(assert (= bs!327860 (and d!361700 d!361682)))

(assert (=> bs!327860 (= lambda!50368 lambda!50360)))

(declare-fun bs!327861 () Bool)

(assert (= bs!327861 (and d!361700 d!361656)))

(assert (=> bs!327861 (= lambda!50368 lambda!50345)))

(declare-fun bs!327862 () Bool)

(assert (= bs!327862 (and d!361700 d!361650)))

(assert (=> bs!327862 (= lambda!50368 lambda!50340)))

(assert (=> d!361700 (= (inv!17157 setElem!8154) (forall!3227 (exprs!1057 setElem!8154) lambda!50368))))

(declare-fun bs!327863 () Bool)

(assert (= bs!327863 d!361700))

(declare-fun m!1434459 () Bool)

(assert (=> bs!327863 m!1434459))

(assert (=> setNonEmpty!8154 d!361700))

(declare-fun d!361702 () Bool)

(declare-fun res!575965 () Bool)

(declare-fun e!823434 () Bool)

(assert (=> d!361702 (=> res!575965 e!823434)))

(assert (=> d!361702 (= res!575965 ((_ is Nil!12755) rs!174))))

(assert (=> d!361702 (= (noDuplicateTag!797 thiss!10944 rs!174 Nil!12760) e!823434)))

(declare-fun b!1284186 () Bool)

(declare-fun e!823435 () Bool)

(assert (=> b!1284186 (= e!823434 e!823435)))

(declare-fun res!575966 () Bool)

(assert (=> b!1284186 (=> (not res!575966) (not e!823435))))

(declare-fun contains!2135 (List!12826 String!15641) Bool)

(assert (=> b!1284186 (= res!575966 (not (contains!2135 Nil!12760 (tag!2453 (h!18156 rs!174)))))))

(declare-fun b!1284187 () Bool)

(assert (=> b!1284187 (= e!823435 (noDuplicateTag!797 thiss!10944 (t!116671 rs!174) (Cons!12760 (tag!2453 (h!18156 rs!174)) Nil!12760)))))

(assert (= (and d!361702 (not res!575965)) b!1284186))

(assert (= (and b!1284186 res!575966) b!1284187))

(declare-fun m!1434461 () Bool)

(assert (=> b!1284186 m!1434461))

(declare-fun m!1434463 () Bool)

(assert (=> b!1284187 m!1434463))

(assert (=> b!1283923 d!361702))

(declare-fun d!361704 () Bool)

(assert (=> d!361704 (= (inv!17158 (xs!6904 (c!211479 ts!110))) (<= (size!10394 (innerList!4253 (xs!6904 (c!211479 ts!110)))) 2147483647))))

(declare-fun bs!327864 () Bool)

(assert (= bs!327864 d!361704))

(declare-fun m!1434465 () Bool)

(assert (=> bs!327864 m!1434465))

(assert (=> b!1284059 d!361704))

(declare-fun d!361706 () Bool)

(declare-fun res!575973 () Bool)

(declare-fun e!823438 () Bool)

(assert (=> d!361706 (=> (not res!575973) (not e!823438))))

(assert (=> d!361706 (= res!575973 (= (csize!8616 (c!211479 ts!110)) (+ (size!10395 (left!11006 (c!211479 ts!110))) (size!10395 (right!11336 (c!211479 ts!110))))))))

(assert (=> d!361706 (= (inv!17155 (c!211479 ts!110)) e!823438)))

(declare-fun b!1284194 () Bool)

(declare-fun res!575974 () Bool)

(assert (=> b!1284194 (=> (not res!575974) (not e!823438))))

(assert (=> b!1284194 (= res!575974 (and (not (= (left!11006 (c!211479 ts!110)) Empty!4193)) (not (= (right!11336 (c!211479 ts!110)) Empty!4193))))))

(declare-fun b!1284195 () Bool)

(declare-fun res!575975 () Bool)

(assert (=> b!1284195 (=> (not res!575975) (not e!823438))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1284195 (= res!575975 (= (cheight!4404 (c!211479 ts!110)) (+ (max!0 (height!595 (left!11006 (c!211479 ts!110))) (height!595 (right!11336 (c!211479 ts!110)))) 1)))))

(declare-fun b!1284196 () Bool)

(assert (=> b!1284196 (= e!823438 (<= 0 (cheight!4404 (c!211479 ts!110))))))

(assert (= (and d!361706 res!575973) b!1284194))

(assert (= (and b!1284194 res!575974) b!1284195))

(assert (= (and b!1284195 res!575975) b!1284196))

(declare-fun m!1434467 () Bool)

(assert (=> d!361706 m!1434467))

(declare-fun m!1434469 () Bool)

(assert (=> d!361706 m!1434469))

(assert (=> b!1284195 m!1434245))

(assert (=> b!1284195 m!1434247))

(assert (=> b!1284195 m!1434245))

(assert (=> b!1284195 m!1434247))

(declare-fun m!1434471 () Bool)

(assert (=> b!1284195 m!1434471))

(assert (=> b!1283939 d!361706))

(declare-fun d!361708 () Bool)

(declare-fun lt!423471 () Int)

(assert (=> d!361708 (= lt!423471 (size!10394 (list!4738 (_1!7192 (_1!7193 lt!423392)))))))

(assert (=> d!361708 (= lt!423471 (size!10395 (c!211479 (_1!7192 (_1!7193 lt!423392)))))))

(assert (=> d!361708 (= (size!10393 (_1!7192 (_1!7193 lt!423392))) lt!423471)))

(declare-fun bs!327865 () Bool)

(assert (= bs!327865 d!361708))

(assert (=> bs!327865 m!1434291))

(assert (=> bs!327865 m!1434291))

(declare-fun m!1434473 () Bool)

(assert (=> bs!327865 m!1434473))

(declare-fun m!1434475 () Bool)

(assert (=> bs!327865 m!1434475))

(assert (=> d!361588 d!361708))

(assert (=> d!361588 d!361580))

(declare-fun d!361710 () Bool)

(declare-fun lt!423477 () Bool)

(declare-fun e!823443 () Bool)

(assert (=> d!361710 (= lt!423477 e!823443)))

(declare-fun res!575983 () Bool)

(assert (=> d!361710 (=> (not res!575983) (not e!823443))))

(declare-fun lex!765 (LexerInterface!1886 List!12821 BalanceConc!8324) tuple2!12614)

(assert (=> d!361710 (= res!575983 (= (list!4738 (_1!7192 (lex!765 thiss!10944 rs!174 (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110)))))) (list!4738 (singletonSeq!773 (head!2189 ts!110)))))))

(declare-fun e!823444 () Bool)

(assert (=> d!361710 (= lt!423477 e!823444)))

(declare-fun res!575984 () Bool)

(assert (=> d!361710 (=> (not res!575984) (not e!823444))))

(declare-fun lt!423476 () tuple2!12614)

(assert (=> d!361710 (= res!575984 (= (size!10393 (_1!7192 lt!423476)) 1))))

(assert (=> d!361710 (= lt!423476 (lex!765 thiss!10944 rs!174 (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110)))))))

(assert (=> d!361710 (not (isEmpty!7565 rs!174))))

(assert (=> d!361710 (= (rulesProduceIndividualToken!855 thiss!10944 rs!174 (head!2189 ts!110)) lt!423477)))

(declare-fun b!1284203 () Bool)

(declare-fun res!575982 () Bool)

(assert (=> b!1284203 (=> (not res!575982) (not e!823444))))

(assert (=> b!1284203 (= res!575982 (= (apply!2720 (_1!7192 lt!423476) 0) (head!2189 ts!110)))))

(declare-fun b!1284204 () Bool)

(assert (=> b!1284204 (= e!823444 (isEmpty!7568 (_2!7192 lt!423476)))))

(declare-fun b!1284205 () Bool)

(assert (=> b!1284205 (= e!823443 (isEmpty!7568 (_2!7192 (lex!765 thiss!10944 rs!174 (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110)))))))))

(assert (= (and d!361710 res!575984) b!1284203))

(assert (= (and b!1284203 res!575982) b!1284204))

(assert (= (and d!361710 res!575983) b!1284205))

(assert (=> d!361710 m!1434093))

(assert (=> d!361710 m!1434129))

(assert (=> d!361710 m!1434059))

(assert (=> d!361710 m!1434129))

(declare-fun m!1434477 () Bool)

(assert (=> d!361710 m!1434477))

(assert (=> d!361710 m!1434129))

(assert (=> d!361710 m!1434125))

(assert (=> d!361710 m!1434125))

(declare-fun m!1434479 () Bool)

(assert (=> d!361710 m!1434479))

(declare-fun m!1434481 () Bool)

(assert (=> d!361710 m!1434481))

(declare-fun m!1434483 () Bool)

(assert (=> d!361710 m!1434483))

(declare-fun m!1434485 () Bool)

(assert (=> b!1284203 m!1434485))

(declare-fun m!1434487 () Bool)

(assert (=> b!1284204 m!1434487))

(assert (=> b!1284205 m!1434093))

(assert (=> b!1284205 m!1434129))

(assert (=> b!1284205 m!1434129))

(assert (=> b!1284205 m!1434125))

(assert (=> b!1284205 m!1434125))

(assert (=> b!1284205 m!1434479))

(declare-fun m!1434489 () Bool)

(assert (=> b!1284205 m!1434489))

(assert (=> d!361588 d!361710))

(declare-fun d!361712 () Bool)

(declare-fun e!823447 () Bool)

(assert (=> d!361712 e!823447))

(declare-fun res!575987 () Bool)

(assert (=> d!361712 (=> (not res!575987) (not e!823447))))

(declare-fun lt!423482 () tuple3!1188)

(assert (=> d!361712 (= res!575987 (= (list!4738 (_1!7192 (_1!7193 lt!423482))) (list!4738 (_1!7192 (lex!765 thiss!10944 rs!174 (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110))))))))))

(declare-fun lt!423483 () tuple3!1188)

(assert (=> d!361712 (= lt!423482 (tuple3!1189 (_1!7193 lt!423483) (_2!7193 lt!423483) (_3!885 lt!423483)))))

(declare-fun lexTailRecMem!2 (LexerInterface!1886 List!12821 BalanceConc!8324 BalanceConc!8324 BalanceConc!8324 BalanceConc!8326 CacheUp!762 CacheDown!766) tuple3!1188)

(assert (=> d!361712 (= lt!423483 (lexTailRecMem!2 thiss!10944 rs!174 (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110))) (BalanceConc!8325 Empty!4192) (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110))) (BalanceConc!8327 Empty!4193) cacheUp!398 cacheDown!411))))

(assert (=> d!361712 (not (isEmpty!7565 rs!174))))

(assert (=> d!361712 (= (lexV1Mem!5 thiss!10944 rs!174 (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110))) cacheUp!398 cacheDown!411) lt!423482)))

(declare-fun b!1284208 () Bool)

(assert (=> b!1284208 (= e!823447 (= (list!4741 (_2!7192 (_1!7193 lt!423482))) (list!4741 (_2!7192 (lex!765 thiss!10944 rs!174 (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110))))))))))

(assert (= (and d!361712 res!575987) b!1284208))

(assert (=> d!361712 m!1434483))

(declare-fun m!1434491 () Bool)

(assert (=> d!361712 m!1434491))

(assert (=> d!361712 m!1434125))

(assert (=> d!361712 m!1434125))

(declare-fun m!1434493 () Bool)

(assert (=> d!361712 m!1434493))

(assert (=> d!361712 m!1434059))

(assert (=> d!361712 m!1434125))

(assert (=> d!361712 m!1434479))

(declare-fun m!1434495 () Bool)

(assert (=> b!1284208 m!1434495))

(assert (=> b!1284208 m!1434125))

(assert (=> b!1284208 m!1434479))

(declare-fun m!1434497 () Bool)

(assert (=> b!1284208 m!1434497))

(assert (=> d!361588 d!361712))

(declare-fun d!361714 () Bool)

(declare-fun lt!423486 () BalanceConc!8324)

(declare-fun printList!530 (LexerInterface!1886 List!12825) List!12820)

(assert (=> d!361714 (= (list!4741 lt!423486) (printList!530 thiss!10944 (list!4738 (singletonSeq!773 (head!2189 ts!110)))))))

(declare-fun printTailRec!512 (LexerInterface!1886 BalanceConc!8326 Int BalanceConc!8324) BalanceConc!8324)

(assert (=> d!361714 (= lt!423486 (printTailRec!512 thiss!10944 (singletonSeq!773 (head!2189 ts!110)) 0 (BalanceConc!8325 Empty!4192)))))

(assert (=> d!361714 (= (print!702 thiss!10944 (singletonSeq!773 (head!2189 ts!110))) lt!423486)))

(declare-fun bs!327866 () Bool)

(assert (= bs!327866 d!361714))

(declare-fun m!1434499 () Bool)

(assert (=> bs!327866 m!1434499))

(assert (=> bs!327866 m!1434129))

(assert (=> bs!327866 m!1434477))

(assert (=> bs!327866 m!1434477))

(declare-fun m!1434501 () Bool)

(assert (=> bs!327866 m!1434501))

(assert (=> bs!327866 m!1434129))

(declare-fun m!1434503 () Bool)

(assert (=> bs!327866 m!1434503))

(assert (=> d!361588 d!361714))

(declare-fun d!361716 () Bool)

(declare-fun e!823450 () Bool)

(assert (=> d!361716 e!823450))

(declare-fun res!575990 () Bool)

(assert (=> d!361716 (=> (not res!575990) (not e!823450))))

(declare-fun lt!423489 () BalanceConc!8326)

(assert (=> d!361716 (= res!575990 (= (list!4738 lt!423489) (Cons!12759 (head!2189 ts!110) Nil!12759)))))

(declare-fun singleton!330 (Token!4044) BalanceConc!8326)

(assert (=> d!361716 (= lt!423489 (singleton!330 (head!2189 ts!110)))))

(assert (=> d!361716 (= (singletonSeq!773 (head!2189 ts!110)) lt!423489)))

(declare-fun b!1284211 () Bool)

(assert (=> b!1284211 (= e!823450 (isBalanced!1224 (c!211479 lt!423489)))))

(assert (= (and d!361716 res!575990) b!1284211))

(declare-fun m!1434505 () Bool)

(assert (=> d!361716 m!1434505))

(assert (=> d!361716 m!1434093))

(declare-fun m!1434507 () Bool)

(assert (=> d!361716 m!1434507))

(declare-fun m!1434509 () Bool)

(assert (=> b!1284211 m!1434509))

(assert (=> d!361588 d!361716))

(declare-fun d!361718 () Bool)

(assert (=> d!361718 (= (inv!17144 (tag!2453 (h!18156 (t!116671 rs!174)))) (= (mod (str.len (value!72075 (tag!2453 (h!18156 (t!116671 rs!174))))) 2) 0))))

(assert (=> b!1283951 d!361718))

(declare-fun d!361720 () Bool)

(declare-fun res!575991 () Bool)

(declare-fun e!823451 () Bool)

(assert (=> d!361720 (=> (not res!575991) (not e!823451))))

(assert (=> d!361720 (= res!575991 (semiInverseModEq!826 (toChars!3227 (transformation!2191 (h!18156 (t!116671 rs!174)))) (toValue!3368 (transformation!2191 (h!18156 (t!116671 rs!174))))))))

(assert (=> d!361720 (= (inv!17150 (transformation!2191 (h!18156 (t!116671 rs!174)))) e!823451)))

(declare-fun b!1284212 () Bool)

(assert (=> b!1284212 (= e!823451 (equivClasses!785 (toChars!3227 (transformation!2191 (h!18156 (t!116671 rs!174)))) (toValue!3368 (transformation!2191 (h!18156 (t!116671 rs!174))))))))

(assert (= (and d!361720 res!575991) b!1284212))

(declare-fun m!1434511 () Bool)

(assert (=> d!361720 m!1434511))

(declare-fun m!1434513 () Bool)

(assert (=> b!1284212 m!1434513))

(assert (=> b!1283951 d!361720))

(declare-fun bs!327867 () Bool)

(declare-fun d!361722 () Bool)

(assert (= bs!327867 (and d!361722 d!361618)))

(declare-fun lambda!50369 () Int)

(assert (=> bs!327867 (= lambda!50369 lambda!50334)))

(declare-fun bs!327868 () Bool)

(assert (= bs!327868 (and d!361722 d!361620)))

(assert (=> bs!327868 (= lambda!50369 lambda!50335)))

(declare-fun bs!327869 () Bool)

(assert (= bs!327869 (and d!361722 d!361622)))

(assert (=> bs!327869 (= lambda!50369 lambda!50336)))

(declare-fun bs!327870 () Bool)

(assert (= bs!327870 (and d!361722 d!361700)))

(assert (=> bs!327870 (= lambda!50369 lambda!50368)))

(declare-fun bs!327871 () Bool)

(assert (= bs!327871 (and d!361722 d!361636)))

(assert (=> bs!327871 (= lambda!50369 lambda!50337)))

(declare-fun bs!327872 () Bool)

(assert (= bs!327872 (and d!361722 d!361654)))

(assert (=> bs!327872 (= lambda!50369 lambda!50344)))

(declare-fun bs!327873 () Bool)

(assert (= bs!327873 (and d!361722 d!361684)))

(assert (=> bs!327873 (= lambda!50369 lambda!50361)))

(declare-fun bs!327874 () Bool)

(assert (= bs!327874 (and d!361722 d!361678)))

(assert (=> bs!327874 (= lambda!50369 lambda!50356)))

(declare-fun bs!327875 () Bool)

(assert (= bs!327875 (and d!361722 d!361640)))

(assert (=> bs!327875 (= lambda!50369 lambda!50338)))

(declare-fun bs!327876 () Bool)

(assert (= bs!327876 (and d!361722 d!361660)))

(assert (=> bs!327876 (= lambda!50369 lambda!50347)))

(declare-fun bs!327877 () Bool)

(assert (= bs!327877 (and d!361722 d!361676)))

(assert (=> bs!327877 (= lambda!50369 lambda!50355)))

(declare-fun bs!327878 () Bool)

(assert (= bs!327878 (and d!361722 d!361690)))

(assert (=> bs!327878 (= lambda!50369 lambda!50366)))

(declare-fun bs!327879 () Bool)

(assert (= bs!327879 (and d!361722 d!361688)))

(assert (=> bs!327879 (= lambda!50369 lambda!50365)))

(declare-fun bs!327880 () Bool)

(assert (= bs!327880 (and d!361722 d!361696)))

(assert (=> bs!327880 (= lambda!50369 lambda!50367)))

(declare-fun bs!327881 () Bool)

(assert (= bs!327881 (and d!361722 d!361658)))

(assert (=> bs!327881 (= lambda!50369 lambda!50346)))

(declare-fun bs!327882 () Bool)

(assert (= bs!327882 (and d!361722 d!361670)))

(assert (=> bs!327882 (= lambda!50369 lambda!50354)))

(declare-fun bs!327883 () Bool)

(assert (= bs!327883 (and d!361722 d!361682)))

(assert (=> bs!327883 (= lambda!50369 lambda!50360)))

(declare-fun bs!327884 () Bool)

(assert (= bs!327884 (and d!361722 d!361656)))

(assert (=> bs!327884 (= lambda!50369 lambda!50345)))

(declare-fun bs!327885 () Bool)

(assert (= bs!327885 (and d!361722 d!361650)))

(assert (=> bs!327885 (= lambda!50369 lambda!50340)))

(assert (=> d!361722 (= (inv!17157 (_1!7187 (_1!7188 (h!18158 mapDefault!6462)))) (forall!3227 (exprs!1057 (_1!7187 (_1!7188 (h!18158 mapDefault!6462)))) lambda!50369))))

(declare-fun bs!327886 () Bool)

(assert (= bs!327886 d!361722))

(declare-fun m!1434515 () Bool)

(assert (=> bs!327886 m!1434515))

(assert (=> b!1284045 d!361722))

(declare-fun d!361724 () Bool)

(declare-fun res!575996 () Bool)

(declare-fun e!823454 () Bool)

(assert (=> d!361724 (=> (not res!575996) (not e!823454))))

(assert (=> d!361724 (= res!575996 (<= (size!10394 (list!4740 (xs!6904 (c!211479 ts!110)))) 512))))

(assert (=> d!361724 (= (inv!17156 (c!211479 ts!110)) e!823454)))

(declare-fun b!1284217 () Bool)

(declare-fun res!575997 () Bool)

(assert (=> b!1284217 (=> (not res!575997) (not e!823454))))

(assert (=> b!1284217 (= res!575997 (= (csize!8617 (c!211479 ts!110)) (size!10394 (list!4740 (xs!6904 (c!211479 ts!110))))))))

(declare-fun b!1284218 () Bool)

(assert (=> b!1284218 (= e!823454 (and (> (csize!8617 (c!211479 ts!110)) 0) (<= (csize!8617 (c!211479 ts!110)) 512)))))

(assert (= (and d!361724 res!575996) b!1284217))

(assert (= (and b!1284217 res!575997) b!1284218))

(assert (=> d!361724 m!1434443))

(assert (=> d!361724 m!1434443))

(declare-fun m!1434517 () Bool)

(assert (=> d!361724 m!1434517))

(assert (=> b!1284217 m!1434443))

(assert (=> b!1284217 m!1434443))

(assert (=> b!1284217 m!1434517))

(assert (=> b!1283941 d!361724))

(declare-fun bs!327887 () Bool)

(declare-fun d!361726 () Bool)

(assert (= bs!327887 (and d!361726 d!361618)))

(declare-fun lambda!50370 () Int)

(assert (=> bs!327887 (= lambda!50370 lambda!50334)))

(declare-fun bs!327888 () Bool)

(assert (= bs!327888 (and d!361726 d!361622)))

(assert (=> bs!327888 (= lambda!50370 lambda!50336)))

(declare-fun bs!327889 () Bool)

(assert (= bs!327889 (and d!361726 d!361700)))

(assert (=> bs!327889 (= lambda!50370 lambda!50368)))

(declare-fun bs!327890 () Bool)

(assert (= bs!327890 (and d!361726 d!361636)))

(assert (=> bs!327890 (= lambda!50370 lambda!50337)))

(declare-fun bs!327891 () Bool)

(assert (= bs!327891 (and d!361726 d!361654)))

(assert (=> bs!327891 (= lambda!50370 lambda!50344)))

(declare-fun bs!327892 () Bool)

(assert (= bs!327892 (and d!361726 d!361684)))

(assert (=> bs!327892 (= lambda!50370 lambda!50361)))

(declare-fun bs!327893 () Bool)

(assert (= bs!327893 (and d!361726 d!361678)))

(assert (=> bs!327893 (= lambda!50370 lambda!50356)))

(declare-fun bs!327894 () Bool)

(assert (= bs!327894 (and d!361726 d!361640)))

(assert (=> bs!327894 (= lambda!50370 lambda!50338)))

(declare-fun bs!327895 () Bool)

(assert (= bs!327895 (and d!361726 d!361660)))

(assert (=> bs!327895 (= lambda!50370 lambda!50347)))

(declare-fun bs!327896 () Bool)

(assert (= bs!327896 (and d!361726 d!361676)))

(assert (=> bs!327896 (= lambda!50370 lambda!50355)))

(declare-fun bs!327897 () Bool)

(assert (= bs!327897 (and d!361726 d!361690)))

(assert (=> bs!327897 (= lambda!50370 lambda!50366)))

(declare-fun bs!327898 () Bool)

(assert (= bs!327898 (and d!361726 d!361620)))

(assert (=> bs!327898 (= lambda!50370 lambda!50335)))

(declare-fun bs!327899 () Bool)

(assert (= bs!327899 (and d!361726 d!361722)))

(assert (=> bs!327899 (= lambda!50370 lambda!50369)))

(declare-fun bs!327900 () Bool)

(assert (= bs!327900 (and d!361726 d!361688)))

(assert (=> bs!327900 (= lambda!50370 lambda!50365)))

(declare-fun bs!327901 () Bool)

(assert (= bs!327901 (and d!361726 d!361696)))

(assert (=> bs!327901 (= lambda!50370 lambda!50367)))

(declare-fun bs!327902 () Bool)

(assert (= bs!327902 (and d!361726 d!361658)))

(assert (=> bs!327902 (= lambda!50370 lambda!50346)))

(declare-fun bs!327903 () Bool)

(assert (= bs!327903 (and d!361726 d!361670)))

(assert (=> bs!327903 (= lambda!50370 lambda!50354)))

(declare-fun bs!327904 () Bool)

(assert (= bs!327904 (and d!361726 d!361682)))

(assert (=> bs!327904 (= lambda!50370 lambda!50360)))

(declare-fun bs!327905 () Bool)

(assert (= bs!327905 (and d!361726 d!361656)))

(assert (=> bs!327905 (= lambda!50370 lambda!50345)))

(declare-fun bs!327906 () Bool)

(assert (= bs!327906 (and d!361726 d!361650)))

(assert (=> bs!327906 (= lambda!50370 lambda!50340)))

(assert (=> d!361726 (= (inv!17157 setElem!8160) (forall!3227 (exprs!1057 setElem!8160) lambda!50370))))

(declare-fun bs!327907 () Bool)

(assert (= bs!327907 d!361726))

(declare-fun m!1434519 () Bool)

(assert (=> bs!327907 m!1434519))

(assert (=> setNonEmpty!8159 d!361726))

(declare-fun bs!327908 () Bool)

(declare-fun d!361728 () Bool)

(assert (= bs!327908 (and d!361728 d!361618)))

(declare-fun lambda!50371 () Int)

(assert (=> bs!327908 (= lambda!50371 lambda!50334)))

(declare-fun bs!327909 () Bool)

(assert (= bs!327909 (and d!361728 d!361622)))

(assert (=> bs!327909 (= lambda!50371 lambda!50336)))

(declare-fun bs!327910 () Bool)

(assert (= bs!327910 (and d!361728 d!361700)))

(assert (=> bs!327910 (= lambda!50371 lambda!50368)))

(declare-fun bs!327911 () Bool)

(assert (= bs!327911 (and d!361728 d!361636)))

(assert (=> bs!327911 (= lambda!50371 lambda!50337)))

(declare-fun bs!327912 () Bool)

(assert (= bs!327912 (and d!361728 d!361726)))

(assert (=> bs!327912 (= lambda!50371 lambda!50370)))

(declare-fun bs!327913 () Bool)

(assert (= bs!327913 (and d!361728 d!361654)))

(assert (=> bs!327913 (= lambda!50371 lambda!50344)))

(declare-fun bs!327914 () Bool)

(assert (= bs!327914 (and d!361728 d!361684)))

(assert (=> bs!327914 (= lambda!50371 lambda!50361)))

(declare-fun bs!327915 () Bool)

(assert (= bs!327915 (and d!361728 d!361678)))

(assert (=> bs!327915 (= lambda!50371 lambda!50356)))

(declare-fun bs!327916 () Bool)

(assert (= bs!327916 (and d!361728 d!361640)))

(assert (=> bs!327916 (= lambda!50371 lambda!50338)))

(declare-fun bs!327917 () Bool)

(assert (= bs!327917 (and d!361728 d!361660)))

(assert (=> bs!327917 (= lambda!50371 lambda!50347)))

(declare-fun bs!327918 () Bool)

(assert (= bs!327918 (and d!361728 d!361676)))

(assert (=> bs!327918 (= lambda!50371 lambda!50355)))

(declare-fun bs!327919 () Bool)

(assert (= bs!327919 (and d!361728 d!361690)))

(assert (=> bs!327919 (= lambda!50371 lambda!50366)))

(declare-fun bs!327920 () Bool)

(assert (= bs!327920 (and d!361728 d!361620)))

(assert (=> bs!327920 (= lambda!50371 lambda!50335)))

(declare-fun bs!327921 () Bool)

(assert (= bs!327921 (and d!361728 d!361722)))

(assert (=> bs!327921 (= lambda!50371 lambda!50369)))

(declare-fun bs!327922 () Bool)

(assert (= bs!327922 (and d!361728 d!361688)))

(assert (=> bs!327922 (= lambda!50371 lambda!50365)))

(declare-fun bs!327923 () Bool)

(assert (= bs!327923 (and d!361728 d!361696)))

(assert (=> bs!327923 (= lambda!50371 lambda!50367)))

(declare-fun bs!327924 () Bool)

(assert (= bs!327924 (and d!361728 d!361658)))

(assert (=> bs!327924 (= lambda!50371 lambda!50346)))

(declare-fun bs!327925 () Bool)

(assert (= bs!327925 (and d!361728 d!361670)))

(assert (=> bs!327925 (= lambda!50371 lambda!50354)))

(declare-fun bs!327926 () Bool)

(assert (= bs!327926 (and d!361728 d!361682)))

(assert (=> bs!327926 (= lambda!50371 lambda!50360)))

(declare-fun bs!327927 () Bool)

(assert (= bs!327927 (and d!361728 d!361656)))

(assert (=> bs!327927 (= lambda!50371 lambda!50345)))

(declare-fun bs!327928 () Bool)

(assert (= bs!327928 (and d!361728 d!361650)))

(assert (=> bs!327928 (= lambda!50371 lambda!50340)))

(assert (=> d!361728 (= (inv!17157 setElem!8151) (forall!3227 (exprs!1057 setElem!8151) lambda!50371))))

(declare-fun bs!327929 () Bool)

(assert (= bs!327929 d!361728))

(declare-fun m!1434521 () Bool)

(assert (=> bs!327929 m!1434521))

(assert (=> setNonEmpty!8151 d!361728))

(declare-fun bs!327930 () Bool)

(declare-fun d!361730 () Bool)

(assert (= bs!327930 (and d!361730 d!361618)))

(declare-fun lambda!50372 () Int)

(assert (=> bs!327930 (= lambda!50372 lambda!50334)))

(declare-fun bs!327931 () Bool)

(assert (= bs!327931 (and d!361730 d!361622)))

(assert (=> bs!327931 (= lambda!50372 lambda!50336)))

(declare-fun bs!327932 () Bool)

(assert (= bs!327932 (and d!361730 d!361700)))

(assert (=> bs!327932 (= lambda!50372 lambda!50368)))

(declare-fun bs!327933 () Bool)

(assert (= bs!327933 (and d!361730 d!361636)))

(assert (=> bs!327933 (= lambda!50372 lambda!50337)))

(declare-fun bs!327934 () Bool)

(assert (= bs!327934 (and d!361730 d!361726)))

(assert (=> bs!327934 (= lambda!50372 lambda!50370)))

(declare-fun bs!327935 () Bool)

(assert (= bs!327935 (and d!361730 d!361654)))

(assert (=> bs!327935 (= lambda!50372 lambda!50344)))

(declare-fun bs!327936 () Bool)

(assert (= bs!327936 (and d!361730 d!361684)))

(assert (=> bs!327936 (= lambda!50372 lambda!50361)))

(declare-fun bs!327937 () Bool)

(assert (= bs!327937 (and d!361730 d!361678)))

(assert (=> bs!327937 (= lambda!50372 lambda!50356)))

(declare-fun bs!327938 () Bool)

(assert (= bs!327938 (and d!361730 d!361640)))

(assert (=> bs!327938 (= lambda!50372 lambda!50338)))

(declare-fun bs!327939 () Bool)

(assert (= bs!327939 (and d!361730 d!361660)))

(assert (=> bs!327939 (= lambda!50372 lambda!50347)))

(declare-fun bs!327940 () Bool)

(assert (= bs!327940 (and d!361730 d!361676)))

(assert (=> bs!327940 (= lambda!50372 lambda!50355)))

(declare-fun bs!327941 () Bool)

(assert (= bs!327941 (and d!361730 d!361690)))

(assert (=> bs!327941 (= lambda!50372 lambda!50366)))

(declare-fun bs!327942 () Bool)

(assert (= bs!327942 (and d!361730 d!361620)))

(assert (=> bs!327942 (= lambda!50372 lambda!50335)))

(declare-fun bs!327943 () Bool)

(assert (= bs!327943 (and d!361730 d!361722)))

(assert (=> bs!327943 (= lambda!50372 lambda!50369)))

(declare-fun bs!327944 () Bool)

(assert (= bs!327944 (and d!361730 d!361688)))

(assert (=> bs!327944 (= lambda!50372 lambda!50365)))

(declare-fun bs!327945 () Bool)

(assert (= bs!327945 (and d!361730 d!361728)))

(assert (=> bs!327945 (= lambda!50372 lambda!50371)))

(declare-fun bs!327946 () Bool)

(assert (= bs!327946 (and d!361730 d!361696)))

(assert (=> bs!327946 (= lambda!50372 lambda!50367)))

(declare-fun bs!327947 () Bool)

(assert (= bs!327947 (and d!361730 d!361658)))

(assert (=> bs!327947 (= lambda!50372 lambda!50346)))

(declare-fun bs!327948 () Bool)

(assert (= bs!327948 (and d!361730 d!361670)))

(assert (=> bs!327948 (= lambda!50372 lambda!50354)))

(declare-fun bs!327949 () Bool)

(assert (= bs!327949 (and d!361730 d!361682)))

(assert (=> bs!327949 (= lambda!50372 lambda!50360)))

(declare-fun bs!327950 () Bool)

(assert (= bs!327950 (and d!361730 d!361656)))

(assert (=> bs!327950 (= lambda!50372 lambda!50345)))

(declare-fun bs!327951 () Bool)

(assert (= bs!327951 (and d!361730 d!361650)))

(assert (=> bs!327951 (= lambda!50372 lambda!50340)))

(assert (=> d!361730 (= (inv!17157 (_2!7189 (_1!7190 (h!18159 mapDefault!6459)))) (forall!3227 (exprs!1057 (_2!7189 (_1!7190 (h!18159 mapDefault!6459)))) lambda!50372))))

(declare-fun bs!327952 () Bool)

(assert (= bs!327952 d!361730))

(declare-fun m!1434523 () Bool)

(assert (=> bs!327952 m!1434523))

(assert (=> b!1284009 d!361730))

(declare-fun bs!327953 () Bool)

(declare-fun d!361732 () Bool)

(assert (= bs!327953 (and d!361732 d!361618)))

(declare-fun lambda!50373 () Int)

(assert (=> bs!327953 (= lambda!50373 lambda!50334)))

(declare-fun bs!327954 () Bool)

(assert (= bs!327954 (and d!361732 d!361622)))

(assert (=> bs!327954 (= lambda!50373 lambda!50336)))

(declare-fun bs!327955 () Bool)

(assert (= bs!327955 (and d!361732 d!361700)))

(assert (=> bs!327955 (= lambda!50373 lambda!50368)))

(declare-fun bs!327956 () Bool)

(assert (= bs!327956 (and d!361732 d!361636)))

(assert (=> bs!327956 (= lambda!50373 lambda!50337)))

(declare-fun bs!327957 () Bool)

(assert (= bs!327957 (and d!361732 d!361726)))

(assert (=> bs!327957 (= lambda!50373 lambda!50370)))

(declare-fun bs!327958 () Bool)

(assert (= bs!327958 (and d!361732 d!361654)))

(assert (=> bs!327958 (= lambda!50373 lambda!50344)))

(declare-fun bs!327959 () Bool)

(assert (= bs!327959 (and d!361732 d!361684)))

(assert (=> bs!327959 (= lambda!50373 lambda!50361)))

(declare-fun bs!327960 () Bool)

(assert (= bs!327960 (and d!361732 d!361678)))

(assert (=> bs!327960 (= lambda!50373 lambda!50356)))

(declare-fun bs!327961 () Bool)

(assert (= bs!327961 (and d!361732 d!361640)))

(assert (=> bs!327961 (= lambda!50373 lambda!50338)))

(declare-fun bs!327962 () Bool)

(assert (= bs!327962 (and d!361732 d!361660)))

(assert (=> bs!327962 (= lambda!50373 lambda!50347)))

(declare-fun bs!327963 () Bool)

(assert (= bs!327963 (and d!361732 d!361676)))

(assert (=> bs!327963 (= lambda!50373 lambda!50355)))

(declare-fun bs!327964 () Bool)

(assert (= bs!327964 (and d!361732 d!361690)))

(assert (=> bs!327964 (= lambda!50373 lambda!50366)))

(declare-fun bs!327965 () Bool)

(assert (= bs!327965 (and d!361732 d!361620)))

(assert (=> bs!327965 (= lambda!50373 lambda!50335)))

(declare-fun bs!327966 () Bool)

(assert (= bs!327966 (and d!361732 d!361722)))

(assert (=> bs!327966 (= lambda!50373 lambda!50369)))

(declare-fun bs!327967 () Bool)

(assert (= bs!327967 (and d!361732 d!361688)))

(assert (=> bs!327967 (= lambda!50373 lambda!50365)))

(declare-fun bs!327968 () Bool)

(assert (= bs!327968 (and d!361732 d!361728)))

(assert (=> bs!327968 (= lambda!50373 lambda!50371)))

(declare-fun bs!327969 () Bool)

(assert (= bs!327969 (and d!361732 d!361696)))

(assert (=> bs!327969 (= lambda!50373 lambda!50367)))

(declare-fun bs!327970 () Bool)

(assert (= bs!327970 (and d!361732 d!361658)))

(assert (=> bs!327970 (= lambda!50373 lambda!50346)))

(declare-fun bs!327971 () Bool)

(assert (= bs!327971 (and d!361732 d!361670)))

(assert (=> bs!327971 (= lambda!50373 lambda!50354)))

(declare-fun bs!327972 () Bool)

(assert (= bs!327972 (and d!361732 d!361730)))

(assert (=> bs!327972 (= lambda!50373 lambda!50372)))

(declare-fun bs!327973 () Bool)

(assert (= bs!327973 (and d!361732 d!361682)))

(assert (=> bs!327973 (= lambda!50373 lambda!50360)))

(declare-fun bs!327974 () Bool)

(assert (= bs!327974 (and d!361732 d!361656)))

(assert (=> bs!327974 (= lambda!50373 lambda!50345)))

(declare-fun bs!327975 () Bool)

(assert (= bs!327975 (and d!361732 d!361650)))

(assert (=> bs!327975 (= lambda!50373 lambda!50340)))

(assert (=> d!361732 (= (inv!17157 (_1!7187 (_1!7188 (h!18158 mapValue!6456)))) (forall!3227 (exprs!1057 (_1!7187 (_1!7188 (h!18158 mapValue!6456)))) lambda!50373))))

(declare-fun bs!327976 () Bool)

(assert (= bs!327976 d!361732))

(declare-fun m!1434525 () Bool)

(assert (=> bs!327976 m!1434525))

(assert (=> b!1284049 d!361732))

(declare-fun d!361734 () Bool)

(assert (=> d!361734 (= (isEmpty!7566 (list!4738 ts!110)) ((_ is Nil!12759) (list!4738 ts!110)))))

(assert (=> d!361574 d!361734))

(assert (=> d!361574 d!361608))

(declare-fun d!361736 () Bool)

(declare-fun lt!423492 () Bool)

(assert (=> d!361736 (= lt!423492 (isEmpty!7566 (list!4739 (c!211479 ts!110))))))

(assert (=> d!361736 (= lt!423492 (= (size!10395 (c!211479 ts!110)) 0))))

(assert (=> d!361736 (= (isEmpty!7567 (c!211479 ts!110)) lt!423492)))

(declare-fun bs!327977 () Bool)

(assert (= bs!327977 d!361736))

(assert (=> bs!327977 m!1434241))

(assert (=> bs!327977 m!1434241))

(declare-fun m!1434527 () Bool)

(assert (=> bs!327977 m!1434527))

(assert (=> bs!327977 m!1434147))

(assert (=> d!361574 d!361736))

(declare-fun b!1284223 () Bool)

(declare-fun e!823457 () Bool)

(declare-fun tp!373438 () Bool)

(declare-fun tp!373439 () Bool)

(assert (=> b!1284223 (= e!823457 (and tp!373438 tp!373439))))

(assert (=> b!1284015 (= tp!373381 e!823457)))

(assert (= (and b!1284015 ((_ is Cons!12756) (exprs!1057 setElem!8162))) b!1284223))

(declare-fun b!1284224 () Bool)

(declare-fun e!823458 () Bool)

(declare-fun tp!373440 () Bool)

(declare-fun tp!373441 () Bool)

(assert (=> b!1284224 (= e!823458 (and tp!373440 tp!373441))))

(assert (=> b!1284013 (= tp!373376 e!823458)))

(assert (= (and b!1284013 ((_ is Cons!12756) (exprs!1057 (_2!7189 (_1!7190 (h!18159 mapValue!6455)))))) b!1284224))

(declare-fun b!1284225 () Bool)

(declare-fun e!823461 () Bool)

(declare-fun tp!373443 () Bool)

(assert (=> b!1284225 (= e!823461 tp!373443)))

(declare-fun b!1284226 () Bool)

(declare-fun e!823460 () Bool)

(declare-fun tp!373442 () Bool)

(assert (=> b!1284226 (= e!823460 tp!373442)))

(declare-fun setIsEmpty!8172 () Bool)

(declare-fun setRes!8172 () Bool)

(assert (=> setIsEmpty!8172 setRes!8172))

(declare-fun setElem!8172 () Context!1114)

(declare-fun tp!373445 () Bool)

(declare-fun setNonEmpty!8172 () Bool)

(assert (=> setNonEmpty!8172 (= setRes!8172 (and tp!373445 (inv!17157 setElem!8172) e!823461))))

(declare-fun setRest!8172 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8172 (= (_2!7188 (h!18158 (t!116673 mapDefault!6455))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8172 true) setRest!8172))))

(declare-fun b!1284227 () Bool)

(declare-fun e!823459 () Bool)

(declare-fun tp!373444 () Bool)

(assert (=> b!1284227 (= e!823459 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 (t!116673 mapDefault!6455))))) e!823460 tp_is_empty!6535 setRes!8172 tp!373444))))

(declare-fun condSetEmpty!8172 () Bool)

(assert (=> b!1284227 (= condSetEmpty!8172 (= (_2!7188 (h!18158 (t!116673 mapDefault!6455))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1284017 (= tp!373382 e!823459)))

(assert (= b!1284227 b!1284226))

(assert (= (and b!1284227 condSetEmpty!8172) setIsEmpty!8172))

(assert (= (and b!1284227 (not condSetEmpty!8172)) setNonEmpty!8172))

(assert (= setNonEmpty!8172 b!1284225))

(assert (= (and b!1284017 ((_ is Cons!12757) (t!116673 mapDefault!6455))) b!1284227))

(declare-fun m!1434529 () Bool)

(assert (=> setNonEmpty!8172 m!1434529))

(declare-fun m!1434531 () Bool)

(assert (=> b!1284227 m!1434531))

(declare-fun b!1284228 () Bool)

(declare-fun e!823462 () Bool)

(declare-fun tp!373446 () Bool)

(declare-fun tp!373447 () Bool)

(assert (=> b!1284228 (= e!823462 (and tp!373446 tp!373447))))

(assert (=> b!1284041 (= tp!373414 e!823462)))

(assert (= (and b!1284041 ((_ is Cons!12756) (exprs!1057 (_1!7187 (_1!7188 (h!18158 mapDefault!6462)))))) b!1284228))

(declare-fun b!1284229 () Bool)

(declare-fun e!823463 () Bool)

(assert (=> b!1284229 (= e!823463 tp_is_empty!6535)))

(declare-fun b!1284230 () Bool)

(declare-fun tp!373451 () Bool)

(declare-fun tp!373452 () Bool)

(assert (=> b!1284230 (= e!823463 (and tp!373451 tp!373452))))

(declare-fun b!1284232 () Bool)

(declare-fun tp!373449 () Bool)

(declare-fun tp!373448 () Bool)

(assert (=> b!1284232 (= e!823463 (and tp!373449 tp!373448))))

(declare-fun b!1284231 () Bool)

(declare-fun tp!373450 () Bool)

(assert (=> b!1284231 (= e!823463 tp!373450)))

(assert (=> b!1284024 (= tp!373392 e!823463)))

(assert (= (and b!1284024 ((_ is ElementMatch!3505) (_1!7189 (_1!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) b!1284229))

(assert (= (and b!1284024 ((_ is Concat!5787) (_1!7189 (_1!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) b!1284230))

(assert (= (and b!1284024 ((_ is Star!3505) (_1!7189 (_1!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) b!1284231))

(assert (= (and b!1284024 ((_ is Union!3505) (_1!7189 (_1!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) b!1284232))

(declare-fun setRes!8173 () Bool)

(declare-fun tp!373457 () Bool)

(declare-fun e!823464 () Bool)

(declare-fun e!823465 () Bool)

(declare-fun b!1284233 () Bool)

(declare-fun tp!373456 () Bool)

(assert (=> b!1284233 (= e!823464 (and tp!373456 (inv!17157 (_2!7189 (_1!7190 (h!18159 (t!116674 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) e!823465 tp_is_empty!6535 setRes!8173 tp!373457))))

(declare-fun condSetEmpty!8173 () Bool)

(assert (=> b!1284233 (= condSetEmpty!8173 (= (_2!7190 (h!18159 (t!116674 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1284024 (= tp!373393 e!823464)))

(declare-fun b!1284234 () Bool)

(declare-fun tp!373454 () Bool)

(assert (=> b!1284234 (= e!823465 tp!373454)))

(declare-fun setNonEmpty!8173 () Bool)

(declare-fun e!823466 () Bool)

(declare-fun setElem!8173 () Context!1114)

(declare-fun tp!373453 () Bool)

(assert (=> setNonEmpty!8173 (= setRes!8173 (and tp!373453 (inv!17157 setElem!8173) e!823466))))

(declare-fun setRest!8173 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8173 (= (_2!7190 (h!18159 (t!116674 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8173 true) setRest!8173))))

(declare-fun setIsEmpty!8173 () Bool)

(assert (=> setIsEmpty!8173 setRes!8173))

(declare-fun b!1284235 () Bool)

(declare-fun tp!373455 () Bool)

(assert (=> b!1284235 (= e!823466 tp!373455)))

(assert (= b!1284233 b!1284234))

(assert (= (and b!1284233 condSetEmpty!8173) setIsEmpty!8173))

(assert (= (and b!1284233 (not condSetEmpty!8173)) setNonEmpty!8173))

(assert (= setNonEmpty!8173 b!1284235))

(assert (= (and b!1284024 ((_ is Cons!12758) (t!116674 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))) b!1284233))

(declare-fun m!1434533 () Bool)

(assert (=> b!1284233 m!1434533))

(declare-fun m!1434535 () Bool)

(assert (=> setNonEmpty!8173 m!1434535))

(declare-fun b!1284236 () Bool)

(declare-fun e!823467 () Bool)

(declare-fun tp!373458 () Bool)

(declare-fun tp!373459 () Bool)

(assert (=> b!1284236 (= e!823467 (and tp!373458 tp!373459))))

(assert (=> b!1284042 (= tp!373412 e!823467)))

(assert (= (and b!1284042 ((_ is Cons!12756) (exprs!1057 setElem!8170))) b!1284236))

(declare-fun b!1284237 () Bool)

(declare-fun e!823468 () Bool)

(assert (=> b!1284237 (= e!823468 tp_is_empty!6535)))

(declare-fun b!1284238 () Bool)

(declare-fun tp!373463 () Bool)

(declare-fun tp!373464 () Bool)

(assert (=> b!1284238 (= e!823468 (and tp!373463 tp!373464))))

(declare-fun b!1284240 () Bool)

(declare-fun tp!373461 () Bool)

(declare-fun tp!373460 () Bool)

(assert (=> b!1284240 (= e!823468 (and tp!373461 tp!373460))))

(declare-fun b!1284239 () Bool)

(declare-fun tp!373462 () Bool)

(assert (=> b!1284239 (= e!823468 tp!373462)))

(assert (=> b!1284021 (= tp!373387 e!823468)))

(assert (= (and b!1284021 ((_ is ElementMatch!3505) (_1!7189 (_1!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) b!1284237))

(assert (= (and b!1284021 ((_ is Concat!5787) (_1!7189 (_1!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) b!1284238))

(assert (= (and b!1284021 ((_ is Star!3505) (_1!7189 (_1!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) b!1284239))

(assert (= (and b!1284021 ((_ is Union!3505) (_1!7189 (_1!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) b!1284240))

(declare-fun e!823470 () Bool)

(declare-fun setRes!8174 () Bool)

(declare-fun tp!373469 () Bool)

(declare-fun e!823469 () Bool)

(declare-fun tp!373468 () Bool)

(declare-fun b!1284241 () Bool)

(assert (=> b!1284241 (= e!823469 (and tp!373468 (inv!17157 (_2!7189 (_1!7190 (h!18159 (t!116674 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))))) e!823470 tp_is_empty!6535 setRes!8174 tp!373469))))

(declare-fun condSetEmpty!8174 () Bool)

(assert (=> b!1284241 (= condSetEmpty!8174 (= (_2!7190 (h!18159 (t!116674 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1284021 (= tp!373388 e!823469)))

(declare-fun b!1284242 () Bool)

(declare-fun tp!373466 () Bool)

(assert (=> b!1284242 (= e!823470 tp!373466)))

(declare-fun setNonEmpty!8174 () Bool)

(declare-fun setElem!8174 () Context!1114)

(declare-fun e!823471 () Bool)

(declare-fun tp!373465 () Bool)

(assert (=> setNonEmpty!8174 (= setRes!8174 (and tp!373465 (inv!17157 setElem!8174) e!823471))))

(declare-fun setRest!8174 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8174 (= (_2!7190 (h!18159 (t!116674 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8174 true) setRest!8174))))

(declare-fun setIsEmpty!8174 () Bool)

(assert (=> setIsEmpty!8174 setRes!8174))

(declare-fun b!1284243 () Bool)

(declare-fun tp!373467 () Bool)

(assert (=> b!1284243 (= e!823471 tp!373467)))

(assert (= b!1284241 b!1284242))

(assert (= (and b!1284241 condSetEmpty!8174) setIsEmpty!8174))

(assert (= (and b!1284241 (not condSetEmpty!8174)) setNonEmpty!8174))

(assert (= setNonEmpty!8174 b!1284243))

(assert (= (and b!1284021 ((_ is Cons!12758) (t!116674 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411))))))))) b!1284241))

(declare-fun m!1434537 () Bool)

(assert (=> b!1284241 m!1434537))

(declare-fun m!1434539 () Bool)

(assert (=> setNonEmpty!8174 m!1434539))

(declare-fun b!1284244 () Bool)

(declare-fun e!823472 () Bool)

(declare-fun tp!373470 () Bool)

(declare-fun tp!373471 () Bool)

(assert (=> b!1284244 (= e!823472 (and tp!373470 tp!373471))))

(assert (=> b!1283990 (= tp!373338 e!823472)))

(assert (= (and b!1283990 ((_ is Cons!12756) (exprs!1057 (_2!7189 (_1!7190 (h!18159 mapDefault!6456)))))) b!1284244))

(declare-fun b!1284259 () Bool)

(declare-fun e!823487 () Bool)

(declare-fun e!823490 () Bool)

(assert (=> b!1284259 (= e!823487 e!823490)))

(declare-fun b!1284260 () Bool)

(declare-fun e!823486 () Bool)

(declare-fun e!823488 () Bool)

(assert (=> b!1284260 (= e!823486 e!823488)))

(declare-fun e!823485 () Bool)

(assert (=> d!361600 (= true (and e!823486 e!823485))))

(declare-fun b!1284261 () Bool)

(declare-fun e!823489 () Bool)

(assert (=> b!1284261 (= e!823488 e!823489)))

(declare-fun b!1284262 () Bool)

(declare-fun lt!423497 () MutLongMap!1350)

(assert (=> b!1284262 (= e!823490 ((_ is LongMap!1350) lt!423497))))

(assert (=> b!1284262 (= lt!423497 (v!20987 (underlying!2908 (cache!1675 (_3!884 (rulesProduceEachTokenIndividuallyMem!38 thiss!10944 rs!174 lt!423380 (_2!7191 lt!423378) (_3!884 lt!423378)))))))))

(declare-fun b!1284263 () Bool)

(assert (=> b!1284263 (= e!823485 e!823487)))

(declare-fun b!1284264 () Bool)

(declare-fun lt!423498 () MutLongMap!1349)

(assert (=> b!1284264 (= e!823489 ((_ is LongMap!1349) lt!423498))))

(assert (=> b!1284264 (= lt!423498 (v!20985 (underlying!2906 (cache!1674 (_2!7191 (rulesProduceEachTokenIndividuallyMem!38 thiss!10944 rs!174 lt!423380 (_2!7191 lt!423378) (_3!884 lt!423378)))))))))

(assert (= b!1284261 b!1284264))

(assert (= (and b!1284260 ((_ is HashMap!1293) (cache!1674 (_2!7191 (rulesProduceEachTokenIndividuallyMem!38 thiss!10944 rs!174 lt!423380 (_2!7191 lt!423378) (_3!884 lt!423378)))))) b!1284261))

(assert (= d!361600 b!1284260))

(assert (= b!1284259 b!1284262))

(assert (= (and b!1284263 ((_ is HashMap!1294) (cache!1675 (_3!884 (rulesProduceEachTokenIndividuallyMem!38 thiss!10944 rs!174 lt!423380 (_2!7191 lt!423378) (_3!884 lt!423378)))))) b!1284259))

(assert (= d!361600 b!1284263))

(declare-fun e!823491 () Bool)

(declare-fun b!1284265 () Bool)

(declare-fun tp!373473 () Bool)

(declare-fun tp!373472 () Bool)

(assert (=> b!1284265 (= e!823491 (and (inv!17154 (left!11006 (left!11006 (c!211479 ts!110)))) tp!373473 (inv!17154 (right!11336 (left!11006 (c!211479 ts!110)))) tp!373472))))

(declare-fun b!1284267 () Bool)

(declare-fun e!823492 () Bool)

(declare-fun tp!373474 () Bool)

(assert (=> b!1284267 (= e!823492 tp!373474)))

(declare-fun b!1284266 () Bool)

(assert (=> b!1284266 (= e!823491 (and (inv!17158 (xs!6904 (left!11006 (c!211479 ts!110)))) e!823492))))

(assert (=> b!1284058 (= tp!373432 (and (inv!17154 (left!11006 (c!211479 ts!110))) e!823491))))

(assert (= (and b!1284058 ((_ is Node!4193) (left!11006 (c!211479 ts!110)))) b!1284265))

(assert (= b!1284266 b!1284267))

(assert (= (and b!1284058 ((_ is Leaf!6485) (left!11006 (c!211479 ts!110)))) b!1284266))

(declare-fun m!1434541 () Bool)

(assert (=> b!1284265 m!1434541))

(declare-fun m!1434543 () Bool)

(assert (=> b!1284265 m!1434543))

(declare-fun m!1434545 () Bool)

(assert (=> b!1284266 m!1434545))

(assert (=> b!1284058 m!1434233))

(declare-fun tp!373476 () Bool)

(declare-fun tp!373475 () Bool)

(declare-fun b!1284268 () Bool)

(declare-fun e!823493 () Bool)

(assert (=> b!1284268 (= e!823493 (and (inv!17154 (left!11006 (right!11336 (c!211479 ts!110)))) tp!373476 (inv!17154 (right!11336 (right!11336 (c!211479 ts!110)))) tp!373475))))

(declare-fun b!1284270 () Bool)

(declare-fun e!823494 () Bool)

(declare-fun tp!373477 () Bool)

(assert (=> b!1284270 (= e!823494 tp!373477)))

(declare-fun b!1284269 () Bool)

(assert (=> b!1284269 (= e!823493 (and (inv!17158 (xs!6904 (right!11336 (c!211479 ts!110)))) e!823494))))

(assert (=> b!1284058 (= tp!373431 (and (inv!17154 (right!11336 (c!211479 ts!110))) e!823493))))

(assert (= (and b!1284058 ((_ is Node!4193) (right!11336 (c!211479 ts!110)))) b!1284268))

(assert (= b!1284269 b!1284270))

(assert (= (and b!1284058 ((_ is Leaf!6485) (right!11336 (c!211479 ts!110)))) b!1284269))

(declare-fun m!1434547 () Bool)

(assert (=> b!1284268 m!1434547))

(declare-fun m!1434549 () Bool)

(assert (=> b!1284268 m!1434549))

(declare-fun m!1434551 () Bool)

(assert (=> b!1284269 m!1434551))

(assert (=> b!1284058 m!1434235))

(declare-fun condSetEmpty!8177 () Bool)

(assert (=> setNonEmpty!8164 (= condSetEmpty!8177 (= setRest!8164 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8177 () Bool)

(assert (=> setNonEmpty!8164 (= tp!373389 setRes!8177)))

(declare-fun setIsEmpty!8177 () Bool)

(assert (=> setIsEmpty!8177 setRes!8177))

(declare-fun setNonEmpty!8177 () Bool)

(declare-fun e!823497 () Bool)

(declare-fun tp!373482 () Bool)

(declare-fun setElem!8177 () Context!1114)

(assert (=> setNonEmpty!8177 (= setRes!8177 (and tp!373482 (inv!17157 setElem!8177) e!823497))))

(declare-fun setRest!8177 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8177 (= setRest!8164 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8177 true) setRest!8177))))

(declare-fun b!1284275 () Bool)

(declare-fun tp!373483 () Bool)

(assert (=> b!1284275 (= e!823497 tp!373483)))

(assert (= (and setNonEmpty!8164 condSetEmpty!8177) setIsEmpty!8177))

(assert (= (and setNonEmpty!8164 (not condSetEmpty!8177)) setNonEmpty!8177))

(assert (= setNonEmpty!8177 b!1284275))

(declare-fun m!1434553 () Bool)

(assert (=> setNonEmpty!8177 m!1434553))

(declare-fun b!1284276 () Bool)

(declare-fun e!823498 () Bool)

(declare-fun tp!373484 () Bool)

(declare-fun tp!373485 () Bool)

(assert (=> b!1284276 (= e!823498 (and tp!373484 tp!373485))))

(assert (=> b!1284043 (= tp!373418 e!823498)))

(assert (= (and b!1284043 ((_ is Cons!12756) (exprs!1057 setElem!8169))) b!1284276))

(declare-fun condSetEmpty!8178 () Bool)

(assert (=> setNonEmpty!8163 (= condSetEmpty!8178 (= setRest!8163 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8178 () Bool)

(assert (=> setNonEmpty!8163 (= tp!373384 setRes!8178)))

(declare-fun setIsEmpty!8178 () Bool)

(assert (=> setIsEmpty!8178 setRes!8178))

(declare-fun tp!373486 () Bool)

(declare-fun setNonEmpty!8178 () Bool)

(declare-fun e!823499 () Bool)

(declare-fun setElem!8178 () Context!1114)

(assert (=> setNonEmpty!8178 (= setRes!8178 (and tp!373486 (inv!17157 setElem!8178) e!823499))))

(declare-fun setRest!8178 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8178 (= setRest!8163 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8178 true) setRest!8178))))

(declare-fun b!1284277 () Bool)

(declare-fun tp!373487 () Bool)

(assert (=> b!1284277 (= e!823499 tp!373487)))

(assert (= (and setNonEmpty!8163 condSetEmpty!8178) setIsEmpty!8178))

(assert (= (and setNonEmpty!8163 (not condSetEmpty!8178)) setNonEmpty!8178))

(assert (= setNonEmpty!8178 b!1284277))

(declare-fun m!1434555 () Bool)

(assert (=> setNonEmpty!8178 m!1434555))

(declare-fun b!1284278 () Bool)

(declare-fun e!823500 () Bool)

(declare-fun tp!373488 () Bool)

(declare-fun tp!373489 () Bool)

(assert (=> b!1284278 (= e!823500 (and tp!373488 tp!373489))))

(assert (=> b!1284026 (= tp!373391 e!823500)))

(assert (= (and b!1284026 ((_ is Cons!12756) (exprs!1057 setElem!8164))) b!1284278))

(declare-fun condSetEmpty!8179 () Bool)

(assert (=> setNonEmpty!8169 (= condSetEmpty!8179 (= setRest!8169 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8179 () Bool)

(assert (=> setNonEmpty!8169 (= tp!373417 setRes!8179)))

(declare-fun setIsEmpty!8179 () Bool)

(assert (=> setIsEmpty!8179 setRes!8179))

(declare-fun setNonEmpty!8179 () Bool)

(declare-fun tp!373490 () Bool)

(declare-fun e!823501 () Bool)

(declare-fun setElem!8179 () Context!1114)

(assert (=> setNonEmpty!8179 (= setRes!8179 (and tp!373490 (inv!17157 setElem!8179) e!823501))))

(declare-fun setRest!8179 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8179 (= setRest!8169 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8179 true) setRest!8179))))

(declare-fun b!1284279 () Bool)

(declare-fun tp!373491 () Bool)

(assert (=> b!1284279 (= e!823501 tp!373491)))

(assert (= (and setNonEmpty!8169 condSetEmpty!8179) setIsEmpty!8179))

(assert (= (and setNonEmpty!8169 (not condSetEmpty!8179)) setNonEmpty!8179))

(assert (= setNonEmpty!8179 b!1284279))

(declare-fun m!1434557 () Bool)

(assert (=> setNonEmpty!8179 m!1434557))

(declare-fun b!1284280 () Bool)

(declare-fun e!823502 () Bool)

(declare-fun tp!373492 () Bool)

(declare-fun tp!373493 () Bool)

(assert (=> b!1284280 (= e!823502 (and tp!373492 tp!373493))))

(assert (=> b!1284023 (= tp!373386 e!823502)))

(assert (= (and b!1284023 ((_ is Cons!12756) (exprs!1057 setElem!8163))) b!1284280))

(declare-fun b!1284283 () Bool)

(declare-fun b_free!30055 () Bool)

(declare-fun b_next!30759 () Bool)

(assert (=> b!1284283 (= b_free!30055 (not b_next!30759))))

(declare-fun tp!373495 () Bool)

(declare-fun b_and!85199 () Bool)

(assert (=> b!1284283 (= tp!373495 b_and!85199)))

(declare-fun b_free!30057 () Bool)

(declare-fun b_next!30761 () Bool)

(assert (=> b!1284283 (= b_free!30057 (not b_next!30761))))

(declare-fun tp!373496 () Bool)

(declare-fun b_and!85201 () Bool)

(assert (=> b!1284283 (= tp!373496 b_and!85201)))

(declare-fun e!823506 () Bool)

(assert (=> b!1284283 (= e!823506 (and tp!373495 tp!373496))))

(declare-fun tp!373494 () Bool)

(declare-fun b!1284282 () Bool)

(declare-fun e!823503 () Bool)

(assert (=> b!1284282 (= e!823503 (and tp!373494 (inv!17144 (tag!2453 (h!18156 (t!116671 (t!116671 rs!174))))) (inv!17150 (transformation!2191 (h!18156 (t!116671 (t!116671 rs!174))))) e!823506))))

(declare-fun b!1284281 () Bool)

(declare-fun e!823505 () Bool)

(declare-fun tp!373497 () Bool)

(assert (=> b!1284281 (= e!823505 (and e!823503 tp!373497))))

(assert (=> b!1283950 (= tp!373295 e!823505)))

(assert (= b!1284282 b!1284283))

(assert (= b!1284281 b!1284282))

(assert (= (and b!1283950 ((_ is Cons!12755) (t!116671 (t!116671 rs!174)))) b!1284281))

(declare-fun m!1434559 () Bool)

(assert (=> b!1284282 m!1434559))

(declare-fun m!1434561 () Bool)

(assert (=> b!1284282 m!1434561))

(declare-fun b!1284284 () Bool)

(declare-fun e!823507 () Bool)

(declare-fun tp!373498 () Bool)

(declare-fun tp!373499 () Bool)

(assert (=> b!1284284 (= e!823507 (and tp!373498 tp!373499))))

(assert (=> b!1283991 (= tp!373339 e!823507)))

(assert (= (and b!1283991 ((_ is Cons!12756) (exprs!1057 setElem!8154))) b!1284284))

(declare-fun b!1284285 () Bool)

(declare-fun e!823508 () Bool)

(assert (=> b!1284285 (= e!823508 tp_is_empty!6535)))

(declare-fun b!1284286 () Bool)

(declare-fun tp!373503 () Bool)

(declare-fun tp!373504 () Bool)

(assert (=> b!1284286 (= e!823508 (and tp!373503 tp!373504))))

(declare-fun b!1284288 () Bool)

(declare-fun tp!373501 () Bool)

(declare-fun tp!373500 () Bool)

(assert (=> b!1284288 (= e!823508 (and tp!373501 tp!373500))))

(declare-fun b!1284287 () Bool)

(declare-fun tp!373502 () Bool)

(assert (=> b!1284287 (= e!823508 tp!373502)))

(assert (=> b!1284006 (= tp!373371 e!823508)))

(assert (= (and b!1284006 ((_ is ElementMatch!3505) (_1!7189 (_1!7190 (h!18159 mapValue!6459))))) b!1284285))

(assert (= (and b!1284006 ((_ is Concat!5787) (_1!7189 (_1!7190 (h!18159 mapValue!6459))))) b!1284286))

(assert (= (and b!1284006 ((_ is Star!3505) (_1!7189 (_1!7190 (h!18159 mapValue!6459))))) b!1284287))

(assert (= (and b!1284006 ((_ is Union!3505) (_1!7189 (_1!7190 (h!18159 mapValue!6459))))) b!1284288))

(declare-fun tp!373509 () Bool)

(declare-fun e!823509 () Bool)

(declare-fun setRes!8180 () Bool)

(declare-fun tp!373508 () Bool)

(declare-fun b!1284289 () Bool)

(declare-fun e!823510 () Bool)

(assert (=> b!1284289 (= e!823509 (and tp!373508 (inv!17157 (_2!7189 (_1!7190 (h!18159 (t!116674 mapValue!6459))))) e!823510 tp_is_empty!6535 setRes!8180 tp!373509))))

(declare-fun condSetEmpty!8180 () Bool)

(assert (=> b!1284289 (= condSetEmpty!8180 (= (_2!7190 (h!18159 (t!116674 mapValue!6459))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1284006 (= tp!373368 e!823509)))

(declare-fun b!1284290 () Bool)

(declare-fun tp!373506 () Bool)

(assert (=> b!1284290 (= e!823510 tp!373506)))

(declare-fun setElem!8180 () Context!1114)

(declare-fun tp!373505 () Bool)

(declare-fun e!823511 () Bool)

(declare-fun setNonEmpty!8180 () Bool)

(assert (=> setNonEmpty!8180 (= setRes!8180 (and tp!373505 (inv!17157 setElem!8180) e!823511))))

(declare-fun setRest!8180 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8180 (= (_2!7190 (h!18159 (t!116674 mapValue!6459))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8180 true) setRest!8180))))

(declare-fun setIsEmpty!8180 () Bool)

(assert (=> setIsEmpty!8180 setRes!8180))

(declare-fun b!1284291 () Bool)

(declare-fun tp!373507 () Bool)

(assert (=> b!1284291 (= e!823511 tp!373507)))

(assert (= b!1284289 b!1284290))

(assert (= (and b!1284289 condSetEmpty!8180) setIsEmpty!8180))

(assert (= (and b!1284289 (not condSetEmpty!8180)) setNonEmpty!8180))

(assert (= setNonEmpty!8180 b!1284291))

(assert (= (and b!1284006 ((_ is Cons!12758) (t!116674 mapValue!6459))) b!1284289))

(declare-fun m!1434563 () Bool)

(assert (=> b!1284289 m!1434563))

(declare-fun m!1434565 () Bool)

(assert (=> setNonEmpty!8180 m!1434565))

(declare-fun condSetEmpty!8181 () Bool)

(assert (=> setNonEmpty!8170 (= condSetEmpty!8181 (= setRest!8170 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8181 () Bool)

(assert (=> setNonEmpty!8170 (= tp!373416 setRes!8181)))

(declare-fun setIsEmpty!8181 () Bool)

(assert (=> setIsEmpty!8181 setRes!8181))

(declare-fun setElem!8181 () Context!1114)

(declare-fun e!823512 () Bool)

(declare-fun setNonEmpty!8181 () Bool)

(declare-fun tp!373510 () Bool)

(assert (=> setNonEmpty!8181 (= setRes!8181 (and tp!373510 (inv!17157 setElem!8181) e!823512))))

(declare-fun setRest!8181 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8181 (= setRest!8170 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8181 true) setRest!8181))))

(declare-fun b!1284292 () Bool)

(declare-fun tp!373511 () Bool)

(assert (=> b!1284292 (= e!823512 tp!373511)))

(assert (= (and setNonEmpty!8170 condSetEmpty!8181) setIsEmpty!8181))

(assert (= (and setNonEmpty!8170 (not condSetEmpty!8181)) setNonEmpty!8181))

(assert (= setNonEmpty!8181 b!1284292))

(declare-fun m!1434567 () Bool)

(assert (=> setNonEmpty!8181 m!1434567))

(declare-fun b!1284293 () Bool)

(declare-fun e!823515 () Bool)

(declare-fun tp!373513 () Bool)

(assert (=> b!1284293 (= e!823515 tp!373513)))

(declare-fun b!1284294 () Bool)

(declare-fun e!823514 () Bool)

(declare-fun tp!373512 () Bool)

(assert (=> b!1284294 (= e!823514 tp!373512)))

(declare-fun setIsEmpty!8182 () Bool)

(declare-fun setRes!8182 () Bool)

(assert (=> setIsEmpty!8182 setRes!8182))

(declare-fun setNonEmpty!8182 () Bool)

(declare-fun setElem!8182 () Context!1114)

(declare-fun tp!373515 () Bool)

(assert (=> setNonEmpty!8182 (= setRes!8182 (and tp!373515 (inv!17157 setElem!8182) e!823515))))

(declare-fun setRest!8182 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8182 (= (_2!7188 (h!18158 (t!116673 mapValue!6462))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8182 true) setRest!8182))))

(declare-fun b!1284295 () Bool)

(declare-fun e!823513 () Bool)

(declare-fun tp!373514 () Bool)

(assert (=> b!1284295 (= e!823513 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 (t!116673 mapValue!6462))))) e!823514 tp_is_empty!6535 setRes!8182 tp!373514))))

(declare-fun condSetEmpty!8182 () Bool)

(assert (=> b!1284295 (= condSetEmpty!8182 (= (_2!7188 (h!18158 (t!116673 mapValue!6462))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1284046 (= tp!373419 e!823513)))

(assert (= b!1284295 b!1284294))

(assert (= (and b!1284295 condSetEmpty!8182) setIsEmpty!8182))

(assert (= (and b!1284295 (not condSetEmpty!8182)) setNonEmpty!8182))

(assert (= setNonEmpty!8182 b!1284293))

(assert (= (and b!1284046 ((_ is Cons!12757) (t!116673 mapValue!6462))) b!1284295))

(declare-fun m!1434569 () Bool)

(assert (=> setNonEmpty!8182 m!1434569))

(declare-fun m!1434571 () Bool)

(assert (=> b!1284295 m!1434571))

(declare-fun b!1284296 () Bool)

(declare-fun e!823516 () Bool)

(assert (=> b!1284296 (= e!823516 tp_is_empty!6535)))

(declare-fun b!1284297 () Bool)

(declare-fun tp!373519 () Bool)

(declare-fun tp!373520 () Bool)

(assert (=> b!1284297 (= e!823516 (and tp!373519 tp!373520))))

(declare-fun b!1284299 () Bool)

(declare-fun tp!373517 () Bool)

(declare-fun tp!373516 () Bool)

(assert (=> b!1284299 (= e!823516 (and tp!373517 tp!373516))))

(declare-fun b!1284298 () Bool)

(declare-fun tp!373518 () Bool)

(assert (=> b!1284298 (= e!823516 tp!373518)))

(assert (=> b!1283978 (= tp!373325 e!823516)))

(assert (= (and b!1283978 ((_ is ElementMatch!3505) (regOne!7522 (regex!2191 (h!18156 rs!174))))) b!1284296))

(assert (= (and b!1283978 ((_ is Concat!5787) (regOne!7522 (regex!2191 (h!18156 rs!174))))) b!1284297))

(assert (= (and b!1283978 ((_ is Star!3505) (regOne!7522 (regex!2191 (h!18156 rs!174))))) b!1284298))

(assert (= (and b!1283978 ((_ is Union!3505) (regOne!7522 (regex!2191 (h!18156 rs!174))))) b!1284299))

(declare-fun b!1284300 () Bool)

(declare-fun e!823517 () Bool)

(assert (=> b!1284300 (= e!823517 tp_is_empty!6535)))

(declare-fun b!1284301 () Bool)

(declare-fun tp!373524 () Bool)

(declare-fun tp!373525 () Bool)

(assert (=> b!1284301 (= e!823517 (and tp!373524 tp!373525))))

(declare-fun b!1284303 () Bool)

(declare-fun tp!373522 () Bool)

(declare-fun tp!373521 () Bool)

(assert (=> b!1284303 (= e!823517 (and tp!373522 tp!373521))))

(declare-fun b!1284302 () Bool)

(declare-fun tp!373523 () Bool)

(assert (=> b!1284302 (= e!823517 tp!373523)))

(assert (=> b!1283978 (= tp!373326 e!823517)))

(assert (= (and b!1283978 ((_ is ElementMatch!3505) (regTwo!7522 (regex!2191 (h!18156 rs!174))))) b!1284300))

(assert (= (and b!1283978 ((_ is Concat!5787) (regTwo!7522 (regex!2191 (h!18156 rs!174))))) b!1284301))

(assert (= (and b!1283978 ((_ is Star!3505) (regTwo!7522 (regex!2191 (h!18156 rs!174))))) b!1284302))

(assert (= (and b!1283978 ((_ is Union!3505) (regTwo!7522 (regex!2191 (h!18156 rs!174))))) b!1284303))

(declare-fun b!1284304 () Bool)

(declare-fun e!823518 () Bool)

(declare-fun tp!373526 () Bool)

(declare-fun tp!373527 () Bool)

(assert (=> b!1284304 (= e!823518 (and tp!373526 tp!373527))))

(assert (=> b!1284008 (= tp!373370 e!823518)))

(assert (= (and b!1284008 ((_ is Cons!12756) (exprs!1057 (_2!7189 (_1!7190 (h!18159 mapDefault!6459)))))) b!1284304))

(declare-fun b!1284307 () Bool)

(declare-fun e!823521 () Bool)

(assert (=> b!1284307 (= e!823521 true)))

(declare-fun b!1284306 () Bool)

(declare-fun e!823520 () Bool)

(assert (=> b!1284306 (= e!823520 e!823521)))

(declare-fun b!1284305 () Bool)

(declare-fun e!823519 () Bool)

(assert (=> b!1284305 (= e!823519 e!823520)))

(assert (=> b!1283930 e!823519))

(assert (= b!1284306 b!1284307))

(assert (= b!1284305 b!1284306))

(assert (= (and b!1283930 ((_ is Cons!12755) (t!116671 rs!174))) b!1284305))

(assert (=> b!1284307 (< (dynLambda!5559 order!7769 (toValue!3368 (transformation!2191 (h!18156 (t!116671 rs!174))))) (dynLambda!5560 order!7771 lambda!50331))))

(assert (=> b!1284307 (< (dynLambda!5561 order!7773 (toChars!3227 (transformation!2191 (h!18156 (t!116671 rs!174))))) (dynLambda!5560 order!7771 lambda!50331))))

(declare-fun condSetEmpty!8183 () Bool)

(assert (=> setNonEmpty!8160 (= condSetEmpty!8183 (= setRest!8160 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8183 () Bool)

(assert (=> setNonEmpty!8160 (= tp!373374 setRes!8183)))

(declare-fun setIsEmpty!8183 () Bool)

(assert (=> setIsEmpty!8183 setRes!8183))

(declare-fun tp!373528 () Bool)

(declare-fun setNonEmpty!8183 () Bool)

(declare-fun e!823522 () Bool)

(declare-fun setElem!8183 () Context!1114)

(assert (=> setNonEmpty!8183 (= setRes!8183 (and tp!373528 (inv!17157 setElem!8183) e!823522))))

(declare-fun setRest!8183 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8183 (= setRest!8160 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8183 true) setRest!8183))))

(declare-fun b!1284308 () Bool)

(declare-fun tp!373529 () Bool)

(assert (=> b!1284308 (= e!823522 tp!373529)))

(assert (= (and setNonEmpty!8160 condSetEmpty!8183) setIsEmpty!8183))

(assert (= (and setNonEmpty!8160 (not condSetEmpty!8183)) setNonEmpty!8183))

(assert (= setNonEmpty!8183 b!1284308))

(declare-fun m!1434573 () Bool)

(assert (=> setNonEmpty!8183 m!1434573))

(declare-fun b!1284309 () Bool)

(declare-fun e!823523 () Bool)

(declare-fun tp!373530 () Bool)

(declare-fun tp!373531 () Bool)

(assert (=> b!1284309 (= e!823523 (and tp!373530 tp!373531))))

(assert (=> b!1284048 (= tp!373421 e!823523)))

(assert (= (and b!1284048 ((_ is Cons!12756) (exprs!1057 (_1!7187 (_1!7188 (h!18158 mapValue!6456)))))) b!1284309))

(declare-fun b!1284310 () Bool)

(declare-fun e!823524 () Bool)

(declare-fun tp!373532 () Bool)

(declare-fun tp!373533 () Bool)

(assert (=> b!1284310 (= e!823524 (and tp!373532 tp!373533))))

(assert (=> b!1283964 (= tp!373309 e!823524)))

(assert (= (and b!1283964 ((_ is Cons!12756) (exprs!1057 setElem!8151))) b!1284310))

(declare-fun b!1284311 () Bool)

(declare-fun e!823525 () Bool)

(assert (=> b!1284311 (= e!823525 tp_is_empty!6535)))

(declare-fun b!1284312 () Bool)

(declare-fun tp!373537 () Bool)

(declare-fun tp!373538 () Bool)

(assert (=> b!1284312 (= e!823525 (and tp!373537 tp!373538))))

(declare-fun b!1284314 () Bool)

(declare-fun tp!373535 () Bool)

(declare-fun tp!373534 () Bool)

(assert (=> b!1284314 (= e!823525 (and tp!373535 tp!373534))))

(declare-fun b!1284313 () Bool)

(declare-fun tp!373536 () Bool)

(assert (=> b!1284313 (= e!823525 tp!373536)))

(assert (=> b!1283980 (= tp!373323 e!823525)))

(assert (= (and b!1283980 ((_ is ElementMatch!3505) (regOne!7523 (regex!2191 (h!18156 rs!174))))) b!1284311))

(assert (= (and b!1283980 ((_ is Concat!5787) (regOne!7523 (regex!2191 (h!18156 rs!174))))) b!1284312))

(assert (= (and b!1283980 ((_ is Star!3505) (regOne!7523 (regex!2191 (h!18156 rs!174))))) b!1284313))

(assert (= (and b!1283980 ((_ is Union!3505) (regOne!7523 (regex!2191 (h!18156 rs!174))))) b!1284314))

(declare-fun b!1284315 () Bool)

(declare-fun e!823526 () Bool)

(assert (=> b!1284315 (= e!823526 tp_is_empty!6535)))

(declare-fun b!1284316 () Bool)

(declare-fun tp!373542 () Bool)

(declare-fun tp!373543 () Bool)

(assert (=> b!1284316 (= e!823526 (and tp!373542 tp!373543))))

(declare-fun b!1284318 () Bool)

(declare-fun tp!373540 () Bool)

(declare-fun tp!373539 () Bool)

(assert (=> b!1284318 (= e!823526 (and tp!373540 tp!373539))))

(declare-fun b!1284317 () Bool)

(declare-fun tp!373541 () Bool)

(assert (=> b!1284317 (= e!823526 tp!373541)))

(assert (=> b!1283980 (= tp!373322 e!823526)))

(assert (= (and b!1283980 ((_ is ElementMatch!3505) (regTwo!7523 (regex!2191 (h!18156 rs!174))))) b!1284315))

(assert (= (and b!1283980 ((_ is Concat!5787) (regTwo!7523 (regex!2191 (h!18156 rs!174))))) b!1284316))

(assert (= (and b!1283980 ((_ is Star!3505) (regTwo!7523 (regex!2191 (h!18156 rs!174))))) b!1284317))

(assert (= (and b!1283980 ((_ is Union!3505) (regTwo!7523 (regex!2191 (h!18156 rs!174))))) b!1284318))

(declare-fun b!1284319 () Bool)

(declare-fun e!823527 () Bool)

(declare-fun tp!373544 () Bool)

(declare-fun tp!373545 () Bool)

(assert (=> b!1284319 (= e!823527 (and tp!373544 tp!373545))))

(assert (=> b!1283962 (= tp!373304 e!823527)))

(assert (= (and b!1283962 ((_ is Cons!12756) (exprs!1057 (_1!7187 (_1!7188 (h!18158 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))))))) b!1284319))

(declare-fun e!823532 () Bool)

(declare-fun b!1284320 () Bool)

(declare-fun setRes!8185 () Bool)

(declare-fun tp!373553 () Bool)

(declare-fun e!823530 () Bool)

(declare-fun tp!373550 () Bool)

(declare-fun mapValue!6463 () List!12824)

(assert (=> b!1284320 (= e!823530 (and tp!373553 (inv!17157 (_2!7189 (_1!7190 (h!18159 mapValue!6463)))) e!823532 tp_is_empty!6535 setRes!8185 tp!373550))))

(declare-fun condSetEmpty!8184 () Bool)

(assert (=> b!1284320 (= condSetEmpty!8184 (= (_2!7190 (h!18159 mapValue!6463)) ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setIsEmpty!8184 () Bool)

(declare-fun setRes!8184 () Bool)

(assert (=> setIsEmpty!8184 setRes!8184))

(declare-fun condMapEmpty!6463 () Bool)

(declare-fun mapDefault!6463 () List!12824)

(assert (=> mapNonEmpty!6459 (= condMapEmpty!6463 (= mapRest!6459 ((as const (Array (_ BitVec 32) List!12824)) mapDefault!6463)))))

(declare-fun e!823528 () Bool)

(declare-fun mapRes!6463 () Bool)

(assert (=> mapNonEmpty!6459 (= tp!373367 (and e!823528 mapRes!6463))))

(declare-fun setIsEmpty!8185 () Bool)

(assert (=> setIsEmpty!8185 setRes!8185))

(declare-fun b!1284321 () Bool)

(declare-fun e!823529 () Bool)

(declare-fun tp!373546 () Bool)

(assert (=> b!1284321 (= e!823529 tp!373546)))

(declare-fun b!1284322 () Bool)

(declare-fun e!823531 () Bool)

(declare-fun tp!373552 () Bool)

(assert (=> b!1284322 (= e!823531 tp!373552)))

(declare-fun setElem!8185 () Context!1114)

(declare-fun tp!373555 () Bool)

(declare-fun setNonEmpty!8184 () Bool)

(assert (=> setNonEmpty!8184 (= setRes!8184 (and tp!373555 (inv!17157 setElem!8185) e!823529))))

(declare-fun setRest!8184 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8184 (= (_2!7190 (h!18159 mapDefault!6463)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8185 true) setRest!8184))))

(declare-fun tp!373556 () Bool)

(declare-fun e!823533 () Bool)

(declare-fun setElem!8184 () Context!1114)

(declare-fun setNonEmpty!8185 () Bool)

(assert (=> setNonEmpty!8185 (= setRes!8185 (and tp!373556 (inv!17157 setElem!8184) e!823533))))

(declare-fun setRest!8185 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8185 (= (_2!7190 (h!18159 mapValue!6463)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8184 true) setRest!8185))))

(declare-fun mapIsEmpty!6463 () Bool)

(assert (=> mapIsEmpty!6463 mapRes!6463))

(declare-fun mapNonEmpty!6463 () Bool)

(declare-fun tp!373549 () Bool)

(assert (=> mapNonEmpty!6463 (= mapRes!6463 (and tp!373549 e!823530))))

(declare-fun mapKey!6463 () (_ BitVec 32))

(declare-fun mapRest!6463 () (Array (_ BitVec 32) List!12824))

(assert (=> mapNonEmpty!6463 (= mapRest!6459 (store mapRest!6463 mapKey!6463 mapValue!6463))))

(declare-fun tp!373554 () Bool)

(declare-fun tp!373547 () Bool)

(declare-fun b!1284323 () Bool)

(assert (=> b!1284323 (= e!823528 (and tp!373554 (inv!17157 (_2!7189 (_1!7190 (h!18159 mapDefault!6463)))) e!823531 tp_is_empty!6535 setRes!8184 tp!373547))))

(declare-fun condSetEmpty!8185 () Bool)

(assert (=> b!1284323 (= condSetEmpty!8185 (= (_2!7190 (h!18159 mapDefault!6463)) ((as const (Array Context!1114 Bool)) false)))))

(declare-fun b!1284324 () Bool)

(declare-fun tp!373551 () Bool)

(assert (=> b!1284324 (= e!823532 tp!373551)))

(declare-fun b!1284325 () Bool)

(declare-fun tp!373548 () Bool)

(assert (=> b!1284325 (= e!823533 tp!373548)))

(assert (= (and mapNonEmpty!6459 condMapEmpty!6463) mapIsEmpty!6463))

(assert (= (and mapNonEmpty!6459 (not condMapEmpty!6463)) mapNonEmpty!6463))

(assert (= b!1284320 b!1284324))

(assert (= (and b!1284320 condSetEmpty!8184) setIsEmpty!8185))

(assert (= (and b!1284320 (not condSetEmpty!8184)) setNonEmpty!8185))

(assert (= setNonEmpty!8185 b!1284325))

(assert (= (and mapNonEmpty!6463 ((_ is Cons!12758) mapValue!6463)) b!1284320))

(assert (= b!1284323 b!1284322))

(assert (= (and b!1284323 condSetEmpty!8185) setIsEmpty!8184))

(assert (= (and b!1284323 (not condSetEmpty!8185)) setNonEmpty!8184))

(assert (= setNonEmpty!8184 b!1284321))

(assert (= (and mapNonEmpty!6459 ((_ is Cons!12758) mapDefault!6463)) b!1284323))

(declare-fun m!1434575 () Bool)

(assert (=> setNonEmpty!8185 m!1434575))

(declare-fun m!1434577 () Bool)

(assert (=> b!1284320 m!1434577))

(declare-fun m!1434579 () Bool)

(assert (=> mapNonEmpty!6463 m!1434579))

(declare-fun m!1434581 () Bool)

(assert (=> setNonEmpty!8184 m!1434581))

(declare-fun m!1434583 () Bool)

(assert (=> b!1284323 m!1434583))

(declare-fun condSetEmpty!8186 () Bool)

(assert (=> setNonEmpty!8171 (= condSetEmpty!8186 (= setRest!8171 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8186 () Bool)

(assert (=> setNonEmpty!8171 (= tp!373424 setRes!8186)))

(declare-fun setIsEmpty!8186 () Bool)

(assert (=> setIsEmpty!8186 setRes!8186))

(declare-fun e!823534 () Bool)

(declare-fun setElem!8186 () Context!1114)

(declare-fun setNonEmpty!8186 () Bool)

(declare-fun tp!373557 () Bool)

(assert (=> setNonEmpty!8186 (= setRes!8186 (and tp!373557 (inv!17157 setElem!8186) e!823534))))

(declare-fun setRest!8186 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8186 (= setRest!8171 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8186 true) setRest!8186))))

(declare-fun b!1284326 () Bool)

(declare-fun tp!373558 () Bool)

(assert (=> b!1284326 (= e!823534 tp!373558)))

(assert (= (and setNonEmpty!8171 condSetEmpty!8186) setIsEmpty!8186))

(assert (= (and setNonEmpty!8171 (not condSetEmpty!8186)) setNonEmpty!8186))

(assert (= setNonEmpty!8186 b!1284326))

(declare-fun m!1434585 () Bool)

(assert (=> setNonEmpty!8186 m!1434585))

(declare-fun condSetEmpty!8187 () Bool)

(assert (=> setNonEmpty!8150 (= condSetEmpty!8187 (= setRest!8150 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8187 () Bool)

(assert (=> setNonEmpty!8150 (= tp!373307 setRes!8187)))

(declare-fun setIsEmpty!8187 () Bool)

(assert (=> setIsEmpty!8187 setRes!8187))

(declare-fun tp!373559 () Bool)

(declare-fun e!823535 () Bool)

(declare-fun setNonEmpty!8187 () Bool)

(declare-fun setElem!8187 () Context!1114)

(assert (=> setNonEmpty!8187 (= setRes!8187 (and tp!373559 (inv!17157 setElem!8187) e!823535))))

(declare-fun setRest!8187 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8187 (= setRest!8150 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8187 true) setRest!8187))))

(declare-fun b!1284327 () Bool)

(declare-fun tp!373560 () Bool)

(assert (=> b!1284327 (= e!823535 tp!373560)))

(assert (= (and setNonEmpty!8150 condSetEmpty!8187) setIsEmpty!8187))

(assert (= (and setNonEmpty!8150 (not condSetEmpty!8187)) setNonEmpty!8187))

(assert (= setNonEmpty!8187 b!1284327))

(declare-fun m!1434587 () Bool)

(assert (=> setNonEmpty!8187 m!1434587))

(declare-fun b!1284328 () Bool)

(declare-fun e!823536 () Bool)

(declare-fun tp!373561 () Bool)

(declare-fun tp!373562 () Bool)

(assert (=> b!1284328 (= e!823536 (and tp!373561 tp!373562))))

(assert (=> b!1284010 (= tp!373369 e!823536)))

(assert (= (and b!1284010 ((_ is Cons!12756) (exprs!1057 (_2!7189 (_1!7190 (h!18159 mapValue!6459)))))) b!1284328))

(declare-fun b!1284329 () Bool)

(declare-fun e!823539 () Bool)

(declare-fun tp!373564 () Bool)

(assert (=> b!1284329 (= e!823539 tp!373564)))

(declare-fun b!1284330 () Bool)

(declare-fun e!823538 () Bool)

(declare-fun tp!373563 () Bool)

(assert (=> b!1284330 (= e!823538 tp!373563)))

(declare-fun setIsEmpty!8188 () Bool)

(declare-fun setRes!8188 () Bool)

(assert (=> setIsEmpty!8188 setRes!8188))

(declare-fun tp!373566 () Bool)

(declare-fun setElem!8188 () Context!1114)

(declare-fun setNonEmpty!8188 () Bool)

(assert (=> setNonEmpty!8188 (= setRes!8188 (and tp!373566 (inv!17157 setElem!8188) e!823539))))

(declare-fun setRest!8188 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8188 (= (_2!7188 (h!18158 (t!116673 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8188 true) setRest!8188))))

(declare-fun e!823537 () Bool)

(declare-fun tp!373565 () Bool)

(declare-fun b!1284331 () Bool)

(assert (=> b!1284331 (= e!823537 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 (t!116673 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))))))) e!823538 tp_is_empty!6535 setRes!8188 tp!373565))))

(declare-fun condSetEmpty!8188 () Bool)

(assert (=> b!1284331 (= condSetEmpty!8188 (= (_2!7188 (h!18158 (t!116673 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1283966 (= tp!373310 e!823537)))

(assert (= b!1284331 b!1284330))

(assert (= (and b!1284331 condSetEmpty!8188) setIsEmpty!8188))

(assert (= (and b!1284331 (not condSetEmpty!8188)) setNonEmpty!8188))

(assert (= setNonEmpty!8188 b!1284329))

(assert (= (and b!1283966 ((_ is Cons!12757) (t!116673 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))))) b!1284331))

(declare-fun m!1434589 () Bool)

(assert (=> setNonEmpty!8188 m!1434589))

(declare-fun m!1434591 () Bool)

(assert (=> b!1284331 m!1434591))

(declare-fun b!1284332 () Bool)

(declare-fun e!823542 () Bool)

(declare-fun tp!373568 () Bool)

(assert (=> b!1284332 (= e!823542 tp!373568)))

(declare-fun b!1284333 () Bool)

(declare-fun e!823541 () Bool)

(declare-fun tp!373567 () Bool)

(assert (=> b!1284333 (= e!823541 tp!373567)))

(declare-fun setIsEmpty!8189 () Bool)

(declare-fun setRes!8189 () Bool)

(assert (=> setIsEmpty!8189 setRes!8189))

(declare-fun setNonEmpty!8189 () Bool)

(declare-fun tp!373570 () Bool)

(declare-fun setElem!8189 () Context!1114)

(assert (=> setNonEmpty!8189 (= setRes!8189 (and tp!373570 (inv!17157 setElem!8189) e!823542))))

(declare-fun setRest!8189 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8189 (= (_2!7188 (h!18158 (t!116673 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8189 true) setRest!8189))))

(declare-fun e!823540 () Bool)

(declare-fun b!1284334 () Bool)

(declare-fun tp!373569 () Bool)

(assert (=> b!1284334 (= e!823540 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 (t!116673 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))))))) e!823541 tp_is_empty!6535 setRes!8189 tp!373569))))

(declare-fun condSetEmpty!8189 () Bool)

(assert (=> b!1284334 (= condSetEmpty!8189 (= (_2!7188 (h!18158 (t!116673 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1283963 (= tp!373306 e!823540)))

(assert (= b!1284334 b!1284333))

(assert (= (and b!1284334 condSetEmpty!8189) setIsEmpty!8189))

(assert (= (and b!1284334 (not condSetEmpty!8189)) setNonEmpty!8189))

(assert (= setNonEmpty!8189 b!1284332))

(assert (= (and b!1283963 ((_ is Cons!12757) (t!116673 (zeroValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398))))))))) b!1284334))

(declare-fun m!1434593 () Bool)

(assert (=> setNonEmpty!8189 m!1434593))

(declare-fun m!1434595 () Bool)

(assert (=> b!1284334 m!1434595))

(declare-fun b!1284335 () Bool)

(declare-fun e!823543 () Bool)

(declare-fun tp!373571 () Bool)

(declare-fun tp!373572 () Bool)

(assert (=> b!1284335 (= e!823543 (and tp!373571 tp!373572))))

(assert (=> b!1284011 (= tp!373366 e!823543)))

(assert (= (and b!1284011 ((_ is Cons!12756) (exprs!1057 setElem!8159))) b!1284335))

(declare-fun b!1284336 () Bool)

(declare-fun e!823544 () Bool)

(assert (=> b!1284336 (= e!823544 tp_is_empty!6535)))

(declare-fun b!1284337 () Bool)

(declare-fun tp!373576 () Bool)

(declare-fun tp!373577 () Bool)

(assert (=> b!1284337 (= e!823544 (and tp!373576 tp!373577))))

(declare-fun b!1284339 () Bool)

(declare-fun tp!373574 () Bool)

(declare-fun tp!373573 () Bool)

(assert (=> b!1284339 (= e!823544 (and tp!373574 tp!373573))))

(declare-fun b!1284338 () Bool)

(declare-fun tp!373575 () Bool)

(assert (=> b!1284338 (= e!823544 tp!373575)))

(assert (=> b!1284012 (= tp!373378 e!823544)))

(assert (= (and b!1284012 ((_ is ElementMatch!3505) (_1!7189 (_1!7190 (h!18159 mapValue!6455))))) b!1284336))

(assert (= (and b!1284012 ((_ is Concat!5787) (_1!7189 (_1!7190 (h!18159 mapValue!6455))))) b!1284337))

(assert (= (and b!1284012 ((_ is Star!3505) (_1!7189 (_1!7190 (h!18159 mapValue!6455))))) b!1284338))

(assert (= (and b!1284012 ((_ is Union!3505) (_1!7189 (_1!7190 (h!18159 mapValue!6455))))) b!1284339))

(declare-fun e!823545 () Bool)

(declare-fun tp!373581 () Bool)

(declare-fun tp!373582 () Bool)

(declare-fun b!1284340 () Bool)

(declare-fun e!823546 () Bool)

(declare-fun setRes!8190 () Bool)

(assert (=> b!1284340 (= e!823545 (and tp!373581 (inv!17157 (_2!7189 (_1!7190 (h!18159 (t!116674 mapValue!6455))))) e!823546 tp_is_empty!6535 setRes!8190 tp!373582))))

(declare-fun condSetEmpty!8190 () Bool)

(assert (=> b!1284340 (= condSetEmpty!8190 (= (_2!7190 (h!18159 (t!116674 mapValue!6455))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1284012 (= tp!373379 e!823545)))

(declare-fun b!1284341 () Bool)

(declare-fun tp!373579 () Bool)

(assert (=> b!1284341 (= e!823546 tp!373579)))

(declare-fun setElem!8190 () Context!1114)

(declare-fun tp!373578 () Bool)

(declare-fun setNonEmpty!8190 () Bool)

(declare-fun e!823547 () Bool)

(assert (=> setNonEmpty!8190 (= setRes!8190 (and tp!373578 (inv!17157 setElem!8190) e!823547))))

(declare-fun setRest!8190 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8190 (= (_2!7190 (h!18159 (t!116674 mapValue!6455))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8190 true) setRest!8190))))

(declare-fun setIsEmpty!8190 () Bool)

(assert (=> setIsEmpty!8190 setRes!8190))

(declare-fun b!1284342 () Bool)

(declare-fun tp!373580 () Bool)

(assert (=> b!1284342 (= e!823547 tp!373580)))

(assert (= b!1284340 b!1284341))

(assert (= (and b!1284340 condSetEmpty!8190) setIsEmpty!8190))

(assert (= (and b!1284340 (not condSetEmpty!8190)) setNonEmpty!8190))

(assert (= setNonEmpty!8190 b!1284342))

(assert (= (and b!1284012 ((_ is Cons!12758) (t!116674 mapValue!6455))) b!1284340))

(declare-fun m!1434597 () Bool)

(assert (=> b!1284340 m!1434597))

(declare-fun m!1434599 () Bool)

(assert (=> setNonEmpty!8190 m!1434599))

(declare-fun b!1284343 () Bool)

(declare-fun e!823548 () Bool)

(declare-fun tp!373583 () Bool)

(declare-fun tp!373584 () Bool)

(assert (=> b!1284343 (= e!823548 (and tp!373583 tp!373584))))

(assert (=> b!1284016 (= tp!373380 e!823548)))

(assert (= (and b!1284016 ((_ is Cons!12756) (exprs!1057 (_1!7187 (_1!7188 (h!18158 mapDefault!6455)))))) b!1284343))

(declare-fun condSetEmpty!8191 () Bool)

(assert (=> setNonEmpty!8162 (= condSetEmpty!8191 (= setRest!8162 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8191 () Bool)

(assert (=> setNonEmpty!8162 (= tp!373383 setRes!8191)))

(declare-fun setIsEmpty!8191 () Bool)

(assert (=> setIsEmpty!8191 setRes!8191))

(declare-fun tp!373585 () Bool)

(declare-fun e!823549 () Bool)

(declare-fun setNonEmpty!8191 () Bool)

(declare-fun setElem!8191 () Context!1114)

(assert (=> setNonEmpty!8191 (= setRes!8191 (and tp!373585 (inv!17157 setElem!8191) e!823549))))

(declare-fun setRest!8191 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8191 (= setRest!8162 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8191 true) setRest!8191))))

(declare-fun b!1284344 () Bool)

(declare-fun tp!373586 () Bool)

(assert (=> b!1284344 (= e!823549 tp!373586)))

(assert (= (and setNonEmpty!8162 condSetEmpty!8191) setIsEmpty!8191))

(assert (= (and setNonEmpty!8162 (not condSetEmpty!8191)) setNonEmpty!8191))

(assert (= setNonEmpty!8191 b!1284344))

(declare-fun m!1434601 () Bool)

(assert (=> setNonEmpty!8191 m!1434601))

(declare-fun condSetEmpty!8192 () Bool)

(assert (=> setNonEmpty!8161 (= condSetEmpty!8192 (= setRest!8161 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8192 () Bool)

(assert (=> setNonEmpty!8161 (= tp!373375 setRes!8192)))

(declare-fun setIsEmpty!8192 () Bool)

(assert (=> setIsEmpty!8192 setRes!8192))

(declare-fun setNonEmpty!8192 () Bool)

(declare-fun setElem!8192 () Context!1114)

(declare-fun tp!373587 () Bool)

(declare-fun e!823550 () Bool)

(assert (=> setNonEmpty!8192 (= setRes!8192 (and tp!373587 (inv!17157 setElem!8192) e!823550))))

(declare-fun setRest!8192 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8192 (= setRest!8161 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8192 true) setRest!8192))))

(declare-fun b!1284345 () Bool)

(declare-fun tp!373588 () Bool)

(assert (=> b!1284345 (= e!823550 tp!373588)))

(assert (= (and setNonEmpty!8161 condSetEmpty!8192) setIsEmpty!8192))

(assert (= (and setNonEmpty!8161 (not condSetEmpty!8192)) setNonEmpty!8192))

(assert (= setNonEmpty!8192 b!1284345))

(declare-fun m!1434603 () Bool)

(assert (=> setNonEmpty!8192 m!1434603))

(declare-fun b!1284346 () Bool)

(declare-fun e!823551 () Bool)

(declare-fun tp!373589 () Bool)

(declare-fun tp!373590 () Bool)

(assert (=> b!1284346 (= e!823551 (and tp!373589 tp!373590))))

(assert (=> b!1284014 (= tp!373377 e!823551)))

(assert (= (and b!1284014 ((_ is Cons!12756) (exprs!1057 setElem!8161))) b!1284346))

(declare-fun b!1284347 () Bool)

(declare-fun e!823552 () Bool)

(declare-fun tp!373591 () Bool)

(declare-fun tp!373592 () Bool)

(assert (=> b!1284347 (= e!823552 (and tp!373591 tp!373592))))

(assert (=> b!1284022 (= tp!373385 e!823552)))

(assert (= (and b!1284022 ((_ is Cons!12756) (exprs!1057 (_2!7189 (_1!7190 (h!18159 (zeroValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))))))) b!1284347))

(declare-fun b!1284348 () Bool)

(declare-fun e!823553 () Bool)

(assert (=> b!1284348 (= e!823553 tp_is_empty!6535)))

(declare-fun b!1284349 () Bool)

(declare-fun tp!373596 () Bool)

(declare-fun tp!373597 () Bool)

(assert (=> b!1284349 (= e!823553 (and tp!373596 tp!373597))))

(declare-fun b!1284351 () Bool)

(declare-fun tp!373594 () Bool)

(declare-fun tp!373593 () Bool)

(assert (=> b!1284351 (= e!823553 (and tp!373594 tp!373593))))

(declare-fun b!1284350 () Bool)

(declare-fun tp!373595 () Bool)

(assert (=> b!1284350 (= e!823553 tp!373595)))

(assert (=> b!1283989 (= tp!373340 e!823553)))

(assert (= (and b!1283989 ((_ is ElementMatch!3505) (_1!7189 (_1!7190 (h!18159 mapDefault!6456))))) b!1284348))

(assert (= (and b!1283989 ((_ is Concat!5787) (_1!7189 (_1!7190 (h!18159 mapDefault!6456))))) b!1284349))

(assert (= (and b!1283989 ((_ is Star!3505) (_1!7189 (_1!7190 (h!18159 mapDefault!6456))))) b!1284350))

(assert (= (and b!1283989 ((_ is Union!3505) (_1!7189 (_1!7190 (h!18159 mapDefault!6456))))) b!1284351))

(declare-fun e!823554 () Bool)

(declare-fun tp!373601 () Bool)

(declare-fun tp!373602 () Bool)

(declare-fun b!1284352 () Bool)

(declare-fun setRes!8193 () Bool)

(declare-fun e!823555 () Bool)

(assert (=> b!1284352 (= e!823554 (and tp!373601 (inv!17157 (_2!7189 (_1!7190 (h!18159 (t!116674 mapDefault!6456))))) e!823555 tp_is_empty!6535 setRes!8193 tp!373602))))

(declare-fun condSetEmpty!8193 () Bool)

(assert (=> b!1284352 (= condSetEmpty!8193 (= (_2!7190 (h!18159 (t!116674 mapDefault!6456))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1283989 (= tp!373341 e!823554)))

(declare-fun b!1284353 () Bool)

(declare-fun tp!373599 () Bool)

(assert (=> b!1284353 (= e!823555 tp!373599)))

(declare-fun setElem!8193 () Context!1114)

(declare-fun e!823556 () Bool)

(declare-fun tp!373598 () Bool)

(declare-fun setNonEmpty!8193 () Bool)

(assert (=> setNonEmpty!8193 (= setRes!8193 (and tp!373598 (inv!17157 setElem!8193) e!823556))))

(declare-fun setRest!8193 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8193 (= (_2!7190 (h!18159 (t!116674 mapDefault!6456))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8193 true) setRest!8193))))

(declare-fun setIsEmpty!8193 () Bool)

(assert (=> setIsEmpty!8193 setRes!8193))

(declare-fun b!1284354 () Bool)

(declare-fun tp!373600 () Bool)

(assert (=> b!1284354 (= e!823556 tp!373600)))

(assert (= b!1284352 b!1284353))

(assert (= (and b!1284352 condSetEmpty!8193) setIsEmpty!8193))

(assert (= (and b!1284352 (not condSetEmpty!8193)) setNonEmpty!8193))

(assert (= setNonEmpty!8193 b!1284354))

(assert (= (and b!1283989 ((_ is Cons!12758) (t!116674 mapDefault!6456))) b!1284352))

(declare-fun m!1434605 () Bool)

(assert (=> b!1284352 m!1434605))

(declare-fun m!1434607 () Bool)

(assert (=> setNonEmpty!8193 m!1434607))

(declare-fun b!1284355 () Bool)

(declare-fun e!823557 () Bool)

(declare-fun tp!373603 () Bool)

(declare-fun tp!373604 () Bool)

(assert (=> b!1284355 (= e!823557 (and tp!373603 tp!373604))))

(assert (=> b!1284025 (= tp!373390 e!823557)))

(assert (= (and b!1284025 ((_ is Cons!12756) (exprs!1057 (_2!7189 (_1!7190 (h!18159 (minValue!1607 (v!20986 (underlying!2907 (v!20987 (underlying!2908 (cache!1675 cacheDown!411)))))))))))) b!1284355))

(declare-fun b!1284356 () Bool)

(declare-fun e!823560 () Bool)

(declare-fun tp!373607 () Bool)

(assert (=> b!1284356 (= e!823560 tp!373607)))

(declare-fun b!1284357 () Bool)

(declare-fun e!823562 () Bool)

(declare-fun tp!373605 () Bool)

(assert (=> b!1284357 (= e!823562 tp!373605)))

(declare-fun mapNonEmpty!6464 () Bool)

(declare-fun mapRes!6464 () Bool)

(declare-fun tp!373608 () Bool)

(declare-fun e!823559 () Bool)

(assert (=> mapNonEmpty!6464 (= mapRes!6464 (and tp!373608 e!823559))))

(declare-fun mapRest!6464 () (Array (_ BitVec 32) List!12823))

(declare-fun mapValue!6464 () List!12823)

(declare-fun mapKey!6464 () (_ BitVec 32))

(assert (=> mapNonEmpty!6464 (= mapRest!6462 (store mapRest!6464 mapKey!6464 mapValue!6464))))

(declare-fun b!1284358 () Bool)

(declare-fun e!823561 () Bool)

(declare-fun tp!373611 () Bool)

(assert (=> b!1284358 (= e!823561 tp!373611)))

(declare-fun b!1284359 () Bool)

(declare-fun e!823563 () Bool)

(declare-fun tp!373606 () Bool)

(assert (=> b!1284359 (= e!823563 tp!373606)))

(declare-fun setIsEmpty!8194 () Bool)

(declare-fun setRes!8194 () Bool)

(assert (=> setIsEmpty!8194 setRes!8194))

(declare-fun condMapEmpty!6464 () Bool)

(declare-fun mapDefault!6464 () List!12823)

(assert (=> mapNonEmpty!6462 (= condMapEmpty!6464 (= mapRest!6462 ((as const (Array (_ BitVec 32) List!12823)) mapDefault!6464)))))

(declare-fun e!823558 () Bool)

(assert (=> mapNonEmpty!6462 (= tp!373415 (and e!823558 mapRes!6464))))

(declare-fun setNonEmpty!8194 () Bool)

(declare-fun tp!373610 () Bool)

(declare-fun setElem!8194 () Context!1114)

(assert (=> setNonEmpty!8194 (= setRes!8194 (and tp!373610 (inv!17157 setElem!8194) e!823561))))

(declare-fun setRest!8194 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8194 (= (_2!7188 (h!18158 mapValue!6464)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8194 true) setRest!8194))))

(declare-fun setElem!8195 () Context!1114)

(declare-fun setRes!8195 () Bool)

(declare-fun tp!373609 () Bool)

(declare-fun setNonEmpty!8195 () Bool)

(assert (=> setNonEmpty!8195 (= setRes!8195 (and tp!373609 (inv!17157 setElem!8195) e!823562))))

(declare-fun setRest!8195 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8195 (= (_2!7188 (h!18158 mapDefault!6464)) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8195 true) setRest!8195))))

(declare-fun tp!373613 () Bool)

(declare-fun b!1284360 () Bool)

(assert (=> b!1284360 (= e!823558 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 mapDefault!6464)))) e!823560 tp_is_empty!6535 setRes!8195 tp!373613))))

(declare-fun condSetEmpty!8195 () Bool)

(assert (=> b!1284360 (= condSetEmpty!8195 (= (_2!7188 (h!18158 mapDefault!6464)) ((as const (Array Context!1114 Bool)) false)))))

(declare-fun tp!373612 () Bool)

(declare-fun b!1284361 () Bool)

(assert (=> b!1284361 (= e!823559 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 mapValue!6464)))) e!823563 tp_is_empty!6535 setRes!8194 tp!373612))))

(declare-fun condSetEmpty!8194 () Bool)

(assert (=> b!1284361 (= condSetEmpty!8194 (= (_2!7188 (h!18158 mapValue!6464)) ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setIsEmpty!8195 () Bool)

(assert (=> setIsEmpty!8195 setRes!8195))

(declare-fun mapIsEmpty!6464 () Bool)

(assert (=> mapIsEmpty!6464 mapRes!6464))

(assert (= (and mapNonEmpty!6462 condMapEmpty!6464) mapIsEmpty!6464))

(assert (= (and mapNonEmpty!6462 (not condMapEmpty!6464)) mapNonEmpty!6464))

(assert (= b!1284361 b!1284359))

(assert (= (and b!1284361 condSetEmpty!8194) setIsEmpty!8194))

(assert (= (and b!1284361 (not condSetEmpty!8194)) setNonEmpty!8194))

(assert (= setNonEmpty!8194 b!1284358))

(assert (= (and mapNonEmpty!6464 ((_ is Cons!12757) mapValue!6464)) b!1284361))

(assert (= b!1284360 b!1284356))

(assert (= (and b!1284360 condSetEmpty!8195) setIsEmpty!8195))

(assert (= (and b!1284360 (not condSetEmpty!8195)) setNonEmpty!8195))

(assert (= setNonEmpty!8195 b!1284357))

(assert (= (and mapNonEmpty!6462 ((_ is Cons!12757) mapDefault!6464)) b!1284360))

(declare-fun m!1434609 () Bool)

(assert (=> setNonEmpty!8195 m!1434609))

(declare-fun m!1434611 () Bool)

(assert (=> b!1284360 m!1434611))

(declare-fun m!1434613 () Bool)

(assert (=> setNonEmpty!8194 m!1434613))

(declare-fun m!1434615 () Bool)

(assert (=> b!1284361 m!1434615))

(declare-fun m!1434617 () Bool)

(assert (=> mapNonEmpty!6464 m!1434617))

(declare-fun condSetEmpty!8196 () Bool)

(assert (=> setNonEmpty!8154 (= condSetEmpty!8196 (= setRest!8154 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8196 () Bool)

(assert (=> setNonEmpty!8154 (= tp!373337 setRes!8196)))

(declare-fun setIsEmpty!8196 () Bool)

(assert (=> setIsEmpty!8196 setRes!8196))

(declare-fun e!823564 () Bool)

(declare-fun tp!373614 () Bool)

(declare-fun setNonEmpty!8196 () Bool)

(declare-fun setElem!8196 () Context!1114)

(assert (=> setNonEmpty!8196 (= setRes!8196 (and tp!373614 (inv!17157 setElem!8196) e!823564))))

(declare-fun setRest!8196 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8196 (= setRest!8154 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8196 true) setRest!8196))))

(declare-fun b!1284362 () Bool)

(declare-fun tp!373615 () Bool)

(assert (=> b!1284362 (= e!823564 tp!373615)))

(assert (= (and setNonEmpty!8154 condSetEmpty!8196) setIsEmpty!8196))

(assert (= (and setNonEmpty!8154 (not condSetEmpty!8196)) setNonEmpty!8196))

(assert (= setNonEmpty!8196 b!1284362))

(declare-fun m!1434619 () Bool)

(assert (=> setNonEmpty!8196 m!1434619))

(declare-fun b!1284363 () Bool)

(declare-fun e!823565 () Bool)

(declare-fun tp!373616 () Bool)

(declare-fun tp!373617 () Bool)

(assert (=> b!1284363 (= e!823565 (and tp!373616 tp!373617))))

(assert (=> b!1284044 (= tp!373413 e!823565)))

(assert (= (and b!1284044 ((_ is Cons!12756) (exprs!1057 (_1!7187 (_1!7188 (h!18158 mapValue!6462)))))) b!1284363))

(declare-fun b!1284364 () Bool)

(declare-fun e!823568 () Bool)

(declare-fun e!823571 () Bool)

(assert (=> b!1284364 (= e!823568 e!823571)))

(declare-fun b!1284365 () Bool)

(declare-fun e!823567 () Bool)

(declare-fun e!823569 () Bool)

(assert (=> b!1284365 (= e!823567 e!823569)))

(declare-fun e!823566 () Bool)

(assert (=> d!361588 (= true (and e!823567 e!823566))))

(declare-fun b!1284366 () Bool)

(declare-fun e!823570 () Bool)

(assert (=> b!1284366 (= e!823569 e!823570)))

(declare-fun b!1284367 () Bool)

(declare-fun lt!423499 () MutLongMap!1350)

(assert (=> b!1284367 (= e!823571 ((_ is LongMap!1350) lt!423499))))

(assert (=> b!1284367 (= lt!423499 (v!20987 (underlying!2908 (cache!1675 (_3!884 (rulesProduceIndividualTokenMem!25 thiss!10944 rs!174 (head!2189 ts!110) cacheUp!398 cacheDown!411))))))))

(declare-fun b!1284368 () Bool)

(assert (=> b!1284368 (= e!823566 e!823568)))

(declare-fun b!1284369 () Bool)

(declare-fun lt!423500 () MutLongMap!1349)

(assert (=> b!1284369 (= e!823570 ((_ is LongMap!1349) lt!423500))))

(assert (=> b!1284369 (= lt!423500 (v!20985 (underlying!2906 (cache!1674 (_2!7191 (rulesProduceIndividualTokenMem!25 thiss!10944 rs!174 (head!2189 ts!110) cacheUp!398 cacheDown!411))))))))

(assert (= b!1284366 b!1284369))

(assert (= (and b!1284365 ((_ is HashMap!1293) (cache!1674 (_2!7191 (rulesProduceIndividualTokenMem!25 thiss!10944 rs!174 (head!2189 ts!110) cacheUp!398 cacheDown!411))))) b!1284366))

(assert (= d!361588 b!1284365))

(assert (= b!1284364 b!1284367))

(assert (= (and b!1284368 ((_ is HashMap!1294) (cache!1675 (_3!884 (rulesProduceIndividualTokenMem!25 thiss!10944 rs!174 (head!2189 ts!110) cacheUp!398 cacheDown!411))))) b!1284364))

(assert (= d!361588 b!1284368))

(declare-fun b!1284383 () Bool)

(declare-fun b_free!30059 () Bool)

(declare-fun b_next!30763 () Bool)

(assert (=> b!1284383 (= b_free!30059 (not b_next!30763))))

(declare-fun tp!373631 () Bool)

(declare-fun b_and!85203 () Bool)

(assert (=> b!1284383 (= tp!373631 b_and!85203)))

(declare-fun b_free!30061 () Bool)

(declare-fun b_next!30765 () Bool)

(assert (=> b!1284383 (= b_free!30061 (not b_next!30765))))

(declare-fun tp!373630 () Bool)

(declare-fun b_and!85205 () Bool)

(assert (=> b!1284383 (= tp!373630 b_and!85205)))

(declare-fun tp!373632 () Bool)

(declare-fun b!1284380 () Bool)

(declare-fun e!823587 () Bool)

(declare-fun e!823586 () Bool)

(declare-fun inv!17159 (Token!4044) Bool)

(assert (=> b!1284380 (= e!823586 (and (inv!17159 (h!18160 (innerList!4253 (xs!6904 (c!211479 ts!110))))) e!823587 tp!373632))))

(declare-fun e!823589 () Bool)

(declare-fun b!1284381 () Bool)

(declare-fun tp!373629 () Bool)

(declare-fun inv!21 (TokenValue!2281) Bool)

(assert (=> b!1284381 (= e!823587 (and (inv!21 (value!72076 (h!18160 (innerList!4253 (xs!6904 (c!211479 ts!110)))))) e!823589 tp!373629))))

(declare-fun e!823585 () Bool)

(assert (=> b!1284383 (= e!823585 (and tp!373631 tp!373630))))

(declare-fun b!1284382 () Bool)

(declare-fun tp!373628 () Bool)

(assert (=> b!1284382 (= e!823589 (and tp!373628 (inv!17144 (tag!2453 (rule!3930 (h!18160 (innerList!4253 (xs!6904 (c!211479 ts!110))))))) (inv!17150 (transformation!2191 (rule!3930 (h!18160 (innerList!4253 (xs!6904 (c!211479 ts!110))))))) e!823585))))

(assert (=> b!1284060 (= tp!373433 e!823586)))

(assert (= b!1284382 b!1284383))

(assert (= b!1284381 b!1284382))

(assert (= b!1284380 b!1284381))

(assert (= (and b!1284060 ((_ is Cons!12759) (innerList!4253 (xs!6904 (c!211479 ts!110))))) b!1284380))

(declare-fun m!1434621 () Bool)

(assert (=> b!1284380 m!1434621))

(declare-fun m!1434623 () Bool)

(assert (=> b!1284381 m!1434623))

(declare-fun m!1434625 () Bool)

(assert (=> b!1284382 m!1434625))

(declare-fun m!1434627 () Bool)

(assert (=> b!1284382 m!1434627))

(declare-fun b!1284384 () Bool)

(declare-fun e!823590 () Bool)

(assert (=> b!1284384 (= e!823590 tp_is_empty!6535)))

(declare-fun b!1284385 () Bool)

(declare-fun tp!373636 () Bool)

(declare-fun tp!373637 () Bool)

(assert (=> b!1284385 (= e!823590 (and tp!373636 tp!373637))))

(declare-fun b!1284387 () Bool)

(declare-fun tp!373634 () Bool)

(declare-fun tp!373633 () Bool)

(assert (=> b!1284387 (= e!823590 (and tp!373634 tp!373633))))

(declare-fun b!1284386 () Bool)

(declare-fun tp!373635 () Bool)

(assert (=> b!1284386 (= e!823590 tp!373635)))

(assert (=> b!1283951 (= tp!373292 e!823590)))

(assert (= (and b!1283951 ((_ is ElementMatch!3505) (regex!2191 (h!18156 (t!116671 rs!174))))) b!1284384))

(assert (= (and b!1283951 ((_ is Concat!5787) (regex!2191 (h!18156 (t!116671 rs!174))))) b!1284385))

(assert (= (and b!1283951 ((_ is Star!3505) (regex!2191 (h!18156 (t!116671 rs!174))))) b!1284386))

(assert (= (and b!1283951 ((_ is Union!3505) (regex!2191 (h!18156 (t!116671 rs!174))))) b!1284387))

(declare-fun b!1284390 () Bool)

(declare-fun e!823593 () Bool)

(assert (=> b!1284390 (= e!823593 true)))

(declare-fun b!1284389 () Bool)

(declare-fun e!823592 () Bool)

(assert (=> b!1284389 (= e!823592 e!823593)))

(declare-fun b!1284388 () Bool)

(declare-fun e!823591 () Bool)

(assert (=> b!1284388 (= e!823591 e!823592)))

(assert (=> b!1284018 e!823591))

(assert (= b!1284389 b!1284390))

(assert (= b!1284388 b!1284389))

(assert (= (and b!1284018 ((_ is Cons!12755) (t!116671 (t!116671 rs!174)))) b!1284388))

(assert (=> b!1284390 (< (dynLambda!5559 order!7769 (toValue!3368 (transformation!2191 (h!18156 (t!116671 (t!116671 rs!174)))))) (dynLambda!5560 order!7771 lambda!50328))))

(assert (=> b!1284390 (< (dynLambda!5561 order!7773 (toChars!3227 (transformation!2191 (h!18156 (t!116671 (t!116671 rs!174)))))) (dynLambda!5560 order!7771 lambda!50328))))

(declare-fun b!1284391 () Bool)

(declare-fun e!823596 () Bool)

(declare-fun tp!373639 () Bool)

(assert (=> b!1284391 (= e!823596 tp!373639)))

(declare-fun b!1284392 () Bool)

(declare-fun e!823595 () Bool)

(declare-fun tp!373638 () Bool)

(assert (=> b!1284392 (= e!823595 tp!373638)))

(declare-fun setIsEmpty!8197 () Bool)

(declare-fun setRes!8197 () Bool)

(assert (=> setIsEmpty!8197 setRes!8197))

(declare-fun setNonEmpty!8197 () Bool)

(declare-fun setElem!8197 () Context!1114)

(declare-fun tp!373641 () Bool)

(assert (=> setNonEmpty!8197 (= setRes!8197 (and tp!373641 (inv!17157 setElem!8197) e!823596))))

(declare-fun setRest!8197 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8197 (= (_2!7188 (h!18158 (t!116673 mapDefault!6462))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8197 true) setRest!8197))))

(declare-fun e!823594 () Bool)

(declare-fun tp!373640 () Bool)

(declare-fun b!1284393 () Bool)

(assert (=> b!1284393 (= e!823594 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 (t!116673 mapDefault!6462))))) e!823595 tp_is_empty!6535 setRes!8197 tp!373640))))

(declare-fun condSetEmpty!8197 () Bool)

(assert (=> b!1284393 (= condSetEmpty!8197 (= (_2!7188 (h!18158 (t!116673 mapDefault!6462))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1284045 (= tp!373420 e!823594)))

(assert (= b!1284393 b!1284392))

(assert (= (and b!1284393 condSetEmpty!8197) setIsEmpty!8197))

(assert (= (and b!1284393 (not condSetEmpty!8197)) setNonEmpty!8197))

(assert (= setNonEmpty!8197 b!1284391))

(assert (= (and b!1284045 ((_ is Cons!12757) (t!116673 mapDefault!6462))) b!1284393))

(declare-fun m!1434629 () Bool)

(assert (=> setNonEmpty!8197 m!1434629))

(declare-fun m!1434631 () Bool)

(assert (=> b!1284393 m!1434631))

(declare-fun b!1284394 () Bool)

(declare-fun e!823597 () Bool)

(declare-fun tp!373642 () Bool)

(declare-fun tp!373643 () Bool)

(assert (=> b!1284394 (= e!823597 (and tp!373642 tp!373643))))

(assert (=> b!1284007 (= tp!373364 e!823597)))

(assert (= (and b!1284007 ((_ is Cons!12756) (exprs!1057 setElem!8160))) b!1284394))

(declare-fun condSetEmpty!8198 () Bool)

(assert (=> setNonEmpty!8159 (= condSetEmpty!8198 (= setRest!8159 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8198 () Bool)

(assert (=> setNonEmpty!8159 (= tp!373373 setRes!8198)))

(declare-fun setIsEmpty!8198 () Bool)

(assert (=> setIsEmpty!8198 setRes!8198))

(declare-fun e!823598 () Bool)

(declare-fun tp!373644 () Bool)

(declare-fun setNonEmpty!8198 () Bool)

(declare-fun setElem!8198 () Context!1114)

(assert (=> setNonEmpty!8198 (= setRes!8198 (and tp!373644 (inv!17157 setElem!8198) e!823598))))

(declare-fun setRest!8198 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8198 (= setRest!8159 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8198 true) setRest!8198))))

(declare-fun b!1284395 () Bool)

(declare-fun tp!373645 () Bool)

(assert (=> b!1284395 (= e!823598 tp!373645)))

(assert (= (and setNonEmpty!8159 condSetEmpty!8198) setIsEmpty!8198))

(assert (= (and setNonEmpty!8159 (not condSetEmpty!8198)) setNonEmpty!8198))

(assert (= setNonEmpty!8198 b!1284395))

(declare-fun m!1434633 () Bool)

(assert (=> setNonEmpty!8198 m!1434633))

(declare-fun b!1284396 () Bool)

(declare-fun e!823599 () Bool)

(declare-fun tp!373646 () Bool)

(declare-fun tp!373647 () Bool)

(assert (=> b!1284396 (= e!823599 (and tp!373646 tp!373647))))

(assert (=> b!1284047 (= tp!373422 e!823599)))

(assert (= (and b!1284047 ((_ is Cons!12756) (exprs!1057 setElem!8171))) b!1284396))

(declare-fun b!1284397 () Bool)

(declare-fun e!823600 () Bool)

(assert (=> b!1284397 (= e!823600 tp_is_empty!6535)))

(declare-fun b!1284398 () Bool)

(declare-fun tp!373651 () Bool)

(declare-fun tp!373652 () Bool)

(assert (=> b!1284398 (= e!823600 (and tp!373651 tp!373652))))

(declare-fun b!1284400 () Bool)

(declare-fun tp!373649 () Bool)

(declare-fun tp!373648 () Bool)

(assert (=> b!1284400 (= e!823600 (and tp!373649 tp!373648))))

(declare-fun b!1284399 () Bool)

(declare-fun tp!373650 () Bool)

(assert (=> b!1284399 (= e!823600 tp!373650)))

(assert (=> b!1283979 (= tp!373324 e!823600)))

(assert (= (and b!1283979 ((_ is ElementMatch!3505) (reg!3834 (regex!2191 (h!18156 rs!174))))) b!1284397))

(assert (= (and b!1283979 ((_ is Concat!5787) (reg!3834 (regex!2191 (h!18156 rs!174))))) b!1284398))

(assert (= (and b!1283979 ((_ is Star!3505) (reg!3834 (regex!2191 (h!18156 rs!174))))) b!1284399))

(assert (= (and b!1283979 ((_ is Union!3505) (reg!3834 (regex!2191 (h!18156 rs!174))))) b!1284400))

(declare-fun b!1284401 () Bool)

(declare-fun e!823601 () Bool)

(declare-fun tp!373653 () Bool)

(declare-fun tp!373654 () Bool)

(assert (=> b!1284401 (= e!823601 (and tp!373653 tp!373654))))

(assert (=> b!1283965 (= tp!373308 e!823601)))

(assert (= (and b!1283965 ((_ is Cons!12756) (exprs!1057 (_1!7187 (_1!7188 (h!18158 (minValue!1606 (v!20984 (underlying!2905 (v!20985 (underlying!2906 (cache!1674 cacheUp!398)))))))))))) b!1284401))

(declare-fun b!1284402 () Bool)

(declare-fun e!823602 () Bool)

(declare-fun tp!373655 () Bool)

(declare-fun tp!373656 () Bool)

(assert (=> b!1284402 (= e!823602 (and tp!373655 tp!373656))))

(assert (=> b!1283961 (= tp!373305 e!823602)))

(assert (= (and b!1283961 ((_ is Cons!12756) (exprs!1057 setElem!8150))) b!1284402))

(declare-fun condSetEmpty!8199 () Bool)

(assert (=> setNonEmpty!8151 (= condSetEmpty!8199 (= setRest!8151 ((as const (Array Context!1114 Bool)) false)))))

(declare-fun setRes!8199 () Bool)

(assert (=> setNonEmpty!8151 (= tp!373311 setRes!8199)))

(declare-fun setIsEmpty!8199 () Bool)

(assert (=> setIsEmpty!8199 setRes!8199))

(declare-fun e!823603 () Bool)

(declare-fun setNonEmpty!8199 () Bool)

(declare-fun setElem!8199 () Context!1114)

(declare-fun tp!373657 () Bool)

(assert (=> setNonEmpty!8199 (= setRes!8199 (and tp!373657 (inv!17157 setElem!8199) e!823603))))

(declare-fun setRest!8199 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8199 (= setRest!8151 ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8199 true) setRest!8199))))

(declare-fun b!1284403 () Bool)

(declare-fun tp!373658 () Bool)

(assert (=> b!1284403 (= e!823603 tp!373658)))

(assert (= (and setNonEmpty!8151 condSetEmpty!8199) setIsEmpty!8199))

(assert (= (and setNonEmpty!8151 (not condSetEmpty!8199)) setNonEmpty!8199))

(assert (= setNonEmpty!8199 b!1284403))

(declare-fun m!1434635 () Bool)

(assert (=> setNonEmpty!8199 m!1434635))

(declare-fun b!1284404 () Bool)

(declare-fun e!823604 () Bool)

(assert (=> b!1284404 (= e!823604 tp_is_empty!6535)))

(declare-fun b!1284405 () Bool)

(declare-fun tp!373662 () Bool)

(declare-fun tp!373663 () Bool)

(assert (=> b!1284405 (= e!823604 (and tp!373662 tp!373663))))

(declare-fun b!1284407 () Bool)

(declare-fun tp!373660 () Bool)

(declare-fun tp!373659 () Bool)

(assert (=> b!1284407 (= e!823604 (and tp!373660 tp!373659))))

(declare-fun b!1284406 () Bool)

(declare-fun tp!373661 () Bool)

(assert (=> b!1284406 (= e!823604 tp!373661)))

(assert (=> b!1284009 (= tp!373372 e!823604)))

(assert (= (and b!1284009 ((_ is ElementMatch!3505) (_1!7189 (_1!7190 (h!18159 mapDefault!6459))))) b!1284404))

(assert (= (and b!1284009 ((_ is Concat!5787) (_1!7189 (_1!7190 (h!18159 mapDefault!6459))))) b!1284405))

(assert (= (and b!1284009 ((_ is Star!3505) (_1!7189 (_1!7190 (h!18159 mapDefault!6459))))) b!1284406))

(assert (= (and b!1284009 ((_ is Union!3505) (_1!7189 (_1!7190 (h!18159 mapDefault!6459))))) b!1284407))

(declare-fun e!823605 () Bool)

(declare-fun tp!373667 () Bool)

(declare-fun e!823606 () Bool)

(declare-fun b!1284408 () Bool)

(declare-fun setRes!8200 () Bool)

(declare-fun tp!373668 () Bool)

(assert (=> b!1284408 (= e!823605 (and tp!373667 (inv!17157 (_2!7189 (_1!7190 (h!18159 (t!116674 mapDefault!6459))))) e!823606 tp_is_empty!6535 setRes!8200 tp!373668))))

(declare-fun condSetEmpty!8200 () Bool)

(assert (=> b!1284408 (= condSetEmpty!8200 (= (_2!7190 (h!18159 (t!116674 mapDefault!6459))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1284009 (= tp!373365 e!823605)))

(declare-fun b!1284409 () Bool)

(declare-fun tp!373665 () Bool)

(assert (=> b!1284409 (= e!823606 tp!373665)))

(declare-fun tp!373664 () Bool)

(declare-fun setElem!8200 () Context!1114)

(declare-fun e!823607 () Bool)

(declare-fun setNonEmpty!8200 () Bool)

(assert (=> setNonEmpty!8200 (= setRes!8200 (and tp!373664 (inv!17157 setElem!8200) e!823607))))

(declare-fun setRest!8200 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8200 (= (_2!7190 (h!18159 (t!116674 mapDefault!6459))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8200 true) setRest!8200))))

(declare-fun setIsEmpty!8200 () Bool)

(assert (=> setIsEmpty!8200 setRes!8200))

(declare-fun b!1284410 () Bool)

(declare-fun tp!373666 () Bool)

(assert (=> b!1284410 (= e!823607 tp!373666)))

(assert (= b!1284408 b!1284409))

(assert (= (and b!1284408 condSetEmpty!8200) setIsEmpty!8200))

(assert (= (and b!1284408 (not condSetEmpty!8200)) setNonEmpty!8200))

(assert (= setNonEmpty!8200 b!1284410))

(assert (= (and b!1284009 ((_ is Cons!12758) (t!116674 mapDefault!6459))) b!1284408))

(declare-fun m!1434637 () Bool)

(assert (=> b!1284408 m!1434637))

(declare-fun m!1434639 () Bool)

(assert (=> setNonEmpty!8200 m!1434639))

(declare-fun b!1284411 () Bool)

(declare-fun e!823610 () Bool)

(declare-fun tp!373670 () Bool)

(assert (=> b!1284411 (= e!823610 tp!373670)))

(declare-fun b!1284412 () Bool)

(declare-fun e!823609 () Bool)

(declare-fun tp!373669 () Bool)

(assert (=> b!1284412 (= e!823609 tp!373669)))

(declare-fun setIsEmpty!8201 () Bool)

(declare-fun setRes!8201 () Bool)

(assert (=> setIsEmpty!8201 setRes!8201))

(declare-fun setNonEmpty!8201 () Bool)

(declare-fun setElem!8201 () Context!1114)

(declare-fun tp!373672 () Bool)

(assert (=> setNonEmpty!8201 (= setRes!8201 (and tp!373672 (inv!17157 setElem!8201) e!823610))))

(declare-fun setRest!8201 () (InoxSet Context!1114))

(assert (=> setNonEmpty!8201 (= (_2!7188 (h!18158 (t!116673 mapValue!6456))) ((_ map or) (store ((as const (Array Context!1114 Bool)) false) setElem!8201 true) setRest!8201))))

(declare-fun e!823608 () Bool)

(declare-fun b!1284413 () Bool)

(declare-fun tp!373671 () Bool)

(assert (=> b!1284413 (= e!823608 (and (inv!17157 (_1!7187 (_1!7188 (h!18158 (t!116673 mapValue!6456))))) e!823609 tp_is_empty!6535 setRes!8201 tp!373671))))

(declare-fun condSetEmpty!8201 () Bool)

(assert (=> b!1284413 (= condSetEmpty!8201 (= (_2!7188 (h!18158 (t!116673 mapValue!6456))) ((as const (Array Context!1114 Bool)) false)))))

(assert (=> b!1284049 (= tp!373423 e!823608)))

(assert (= b!1284413 b!1284412))

(assert (= (and b!1284413 condSetEmpty!8201) setIsEmpty!8201))

(assert (= (and b!1284413 (not condSetEmpty!8201)) setNonEmpty!8201))

(assert (= setNonEmpty!8201 b!1284411))

(assert (= (and b!1284049 ((_ is Cons!12757) (t!116673 mapValue!6456))) b!1284413))

(declare-fun m!1434641 () Bool)

(assert (=> setNonEmpty!8201 m!1434641))

(declare-fun m!1434643 () Bool)

(assert (=> b!1284413 m!1434643))

(declare-fun b_lambda!36581 () Bool)

(assert (= b_lambda!36579 (or b!1283870 b_lambda!36581)))

(declare-fun bs!327978 () Bool)

(declare-fun d!361738 () Bool)

(assert (= bs!327978 (and d!361738 b!1283870)))

(assert (=> bs!327978 (= (dynLambda!5563 lambda!50328 (h!18160 (list!4738 ts!110))) (rulesProduceIndividualToken!855 thiss!10944 rs!174 (h!18160 (list!4738 ts!110))))))

(declare-fun m!1434645 () Bool)

(assert (=> bs!327978 m!1434645))

(assert (=> b!1284116 d!361738))

(check-sat (not b!1284325) (not b!1284386) (not b!1284326) (not b!1284154) (not b!1284150) (not b!1284401) (not d!361700) (not b!1284127) (not d!361650) (not d!361644) (not b!1284096) (not b!1284195) (not b!1284205) (not d!361628) (not d!361694) (not b!1284320) (not b!1284347) (not setNonEmpty!8181) b_and!85183 (not setNonEmpty!8194) (not d!361710) (not b!1284302) (not d!361716) (not b!1284174) (not b!1284319) (not b!1284058) (not b!1284322) (not setNonEmpty!8201) (not b!1284308) (not b!1284129) (not b!1284280) (not setNonEmpty!8178) (not setNonEmpty!8172) (not b!1284281) (not b!1284075) (not b!1284091) (not b!1284270) (not d!361622) (not b!1284225) (not b!1284299) (not b!1284396) (not b!1284151) (not d!361670) (not d!361652) (not b!1284343) (not mapNonEmpty!6464) (not b!1284236) (not d!361668) (not d!361618) (not b!1284212) (not b!1284357) (not b!1284346) (not b!1284265) (not b!1284276) (not b!1284318) (not d!361686) (not b!1284354) (not b!1284391) (not setNonEmpty!8179) (not b!1284313) (not b!1284358) (not b!1284292) (not b!1284266) (not b!1284244) (not b!1284093) (not b!1284295) (not b!1284141) (not b_next!30759) b_and!85197 (not b!1284298) b_and!85205 (not b!1284157) (not b!1284332) (not b!1284269) (not bm!88428) (not b!1284388) (not b!1284275) (not b!1284139) (not setNonEmpty!8183) (not d!361714) (not b!1284278) (not setNonEmpty!8185) (not b!1284286) tp_is_empty!6535 (not b!1284211) (not b!1284351) (not b!1284363) (not b!1284341) (not b!1284277) (not d!361726) (not b!1284402) (not b!1284413) (not setNonEmpty!8173) (not d!361648) (not b!1284350) (not setNonEmpty!8177) (not d!361654) (not d!361664) (not d!361616) (not setNonEmpty!8197) (not b!1284117) (not b!1284331) (not setNonEmpty!8186) (not setNonEmpty!8199) (not b!1284380) (not b!1284176) (not b!1284187) (not b!1284231) (not b_next!30753) (not b!1284290) (not b!1284333) (not d!361712) (not b!1284291) (not b!1284399) b_and!85193 (not b!1284310) (not b!1284230) (not b!1284090) (not d!361646) (not b_next!30761) (not b!1284324) (not b!1284403) (not b!1284342) (not b!1284394) (not setNonEmpty!8187) (not b!1284287) (not setNonEmpty!8180) (not b!1284334) b_and!85195 (not b!1284314) (not d!361680) (not d!361656) (not d!361698) (not d!361704) (not bm!88427) (not b_next!30749) (not b!1284284) (not b!1284323) (not b_next!30751) (not b!1284226) (not b!1284395) (not b!1284107) (not b!1284344) (not b!1284339) (not b!1284240) (not b!1284234) (not d!361720) (not d!361676) (not d!361636) (not d!361674) (not d!361626) (not b!1284089) (not setNonEmpty!8195) (not b_next!30763) (not b!1284393) (not b!1284217) (not b!1284327) (not b!1284329) b_and!85203 (not d!361682) (not setNonEmpty!8174) (not b!1284362) (not d!361620) (not b!1284238) (not b!1284208) (not b!1284355) (not b!1284312) (not d!361724) (not b!1284084) (not d!361608) (not b!1284289) (not b!1284076) (not b!1284078) (not b!1284385) (not d!361604) (not b!1284411) (not b!1284279) (not b!1284177) (not bs!327978) (not b!1284387) (not b!1284353) (not b!1284316) (not b!1284233) (not mapNonEmpty!6463) (not d!361640) (not b_next!30765) (not b!1284305) (not b!1284186) (not b!1284338) (not b!1284301) (not b!1284235) (not setNonEmpty!8182) (not d!361684) (not b!1284345) (not b!1284156) (not b!1284153) b_and!85201 (not b!1284155) (not setNonEmpty!8198) (not setNonEmpty!8196) (not b!1284328) (not b!1284099) (not b_next!30747) b_and!85199 (not setNonEmpty!8200) (not b!1284360) b_and!85187 (not b!1284317) (not b!1284223) (not b!1284303) (not b!1284330) (not b!1284321) (not b!1284227) (not setNonEmpty!8191) (not b!1284349) (not d!361728) (not b!1284203) (not d!361736) (not d!361690) (not b!1284359) (not d!361666) (not d!361730) (not b!1284352) (not b!1284382) b_and!85191 (not d!361630) (not b!1284361) (not b!1284400) (not d!361722) (not b!1284100) (not d!361732) (not b!1284243) (not b!1284412) (not b!1284175) (not b!1284381) (not setNonEmpty!8188) (not setNonEmpty!8190) (not b!1284288) (not b!1284408) (not d!361678) (not b!1284410) (not b!1284392) (not b_next!30743) (not b!1284242) (not b!1284406) (not b!1284077) (not d!361642) (not b!1284074) (not d!361696) (not d!361708) (not b!1284104) (not b!1284138) (not d!361660) (not b!1284337) (not setNonEmpty!8193) (not b!1284282) (not d!361688) (not d!361614) (not d!361658) (not b!1284073) (not setNonEmpty!8184) (not b_lambda!36581) (not b_next!30755) (not b!1284241) (not setNonEmpty!8192) (not d!361638) (not b!1284239) (not b!1284293) (not setNonEmpty!8189) (not b!1284398) (not b!1284152) (not b!1284356) (not b!1284103) (not b!1284228) (not b!1284309) (not b!1284297) (not d!361706) (not b!1284409) (not b!1284340) (not b!1284335) b_and!85185 (not b!1284224) (not b!1284304) b_and!85189 (not b!1284232) (not b!1284294) (not b!1284268) (not b!1284405) (not b!1284101) (not b!1284204) (not b_next!30745) (not b!1284128) (not b!1284094) (not b!1284407) (not b_next!30757) (not b!1284267))
(check-sat b_and!85183 (not b_next!30753) b_and!85195 b_and!85191 (not b_next!30743) (not b_next!30755) (not b_next!30759) b_and!85197 b_and!85205 b_and!85193 (not b_next!30761) (not b_next!30749) (not b_next!30751) (not b_next!30763) b_and!85203 (not b_next!30765) b_and!85201 (not b_next!30747) b_and!85199 b_and!85187 b_and!85189 b_and!85185 (not b_next!30745) (not b_next!30757))
