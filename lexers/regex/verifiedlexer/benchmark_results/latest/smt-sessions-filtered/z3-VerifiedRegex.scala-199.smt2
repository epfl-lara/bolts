; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3154 () Bool)

(assert start!3154)

(declare-fun b!46833 () Bool)

(declare-fun b_free!1245 () Bool)

(declare-fun b_next!1245 () Bool)

(assert (=> b!46833 (= b_free!1245 (not b_next!1245))))

(declare-fun tp!31755 () Bool)

(declare-fun b_and!1279 () Bool)

(assert (=> b!46833 (= tp!31755 b_and!1279)))

(declare-fun b!46865 () Bool)

(declare-fun b_free!1247 () Bool)

(declare-fun b_next!1247 () Bool)

(assert (=> b!46865 (= b_free!1247 (not b_next!1247))))

(declare-fun tp!31757 () Bool)

(declare-fun b_and!1281 () Bool)

(assert (=> b!46865 (= tp!31757 b_and!1281)))

(declare-fun b!46845 () Bool)

(declare-fun b_free!1249 () Bool)

(declare-fun b_next!1249 () Bool)

(assert (=> b!46845 (= b_free!1249 (not b_next!1249))))

(declare-fun tp!31774 () Bool)

(declare-fun b_and!1283 () Bool)

(assert (=> b!46845 (= tp!31774 b_and!1283)))

(declare-fun b!46842 () Bool)

(declare-fun b_free!1251 () Bool)

(declare-fun b_next!1251 () Bool)

(assert (=> b!46842 (= b_free!1251 (not b_next!1251))))

(declare-fun tp!31767 () Bool)

(declare-fun b_and!1285 () Bool)

(assert (=> b!46842 (= tp!31767 b_and!1285)))

(declare-fun b!46836 () Bool)

(declare-fun b_free!1253 () Bool)

(declare-fun b_next!1253 () Bool)

(assert (=> b!46836 (= b_free!1253 (not b_next!1253))))

(declare-fun tp!31770 () Bool)

(declare-fun b_and!1287 () Bool)

(assert (=> b!46836 (= tp!31770 b_and!1287)))

(declare-fun b!46841 () Bool)

(declare-fun b_free!1255 () Bool)

(declare-fun b_next!1255 () Bool)

(assert (=> b!46841 (= b_free!1255 (not b_next!1255))))

(declare-fun tp!31759 () Bool)

(declare-fun b_and!1289 () Bool)

(assert (=> b!46841 (= tp!31759 b_and!1289)))

(declare-fun b!46879 () Bool)

(declare-fun e!26865 () Bool)

(assert (=> b!46879 (= e!26865 true)))

(declare-fun b!46878 () Bool)

(declare-fun e!26864 () Bool)

(assert (=> b!46878 (= e!26864 e!26865)))

(declare-fun b!46877 () Bool)

(declare-fun e!26863 () Bool)

(assert (=> b!46877 (= e!26863 e!26864)))

(declare-fun b!46835 () Bool)

(assert (=> b!46835 e!26863))

(assert (= b!46878 b!46879))

(assert (= b!46877 b!46878))

(declare-datatypes ((List!785 0))(
  ( (Nil!783) (Cons!783 (h!6179 (_ BitVec 16)) (t!16982 List!785)) )
))
(declare-datatypes ((TokenValue!167 0))(
  ( (FloatLiteralValue!334 (text!1614 List!785)) (TokenValueExt!166 (__x!1312 Int)) (Broken!835 (value!7827 List!785)) (Object!168) (End!167) (Def!167) (Underscore!167) (Match!167) (Else!167) (Error!167) (Case!167) (If!167) (Extends!167) (Abstract!167) (Class!167) (Val!167) (DelimiterValue!334 (del!227 List!785)) (KeywordValue!173 (value!7828 List!785)) (CommentValue!334 (value!7829 List!785)) (WhitespaceValue!334 (value!7830 List!785)) (IndentationValue!167 (value!7831 List!785)) (String!1130) (Int32!167) (Broken!836 (value!7832 List!785)) (Boolean!168) (Unit!359) (OperatorValue!170 (op!227 List!785)) (IdentifierValue!334 (value!7833 List!785)) (IdentifierValue!335 (value!7834 List!785)) (WhitespaceValue!335 (value!7835 List!785)) (True!334) (False!334) (Broken!837 (value!7836 List!785)) (Broken!838 (value!7837 List!785)) (True!335) (RightBrace!167) (RightBracket!167) (Colon!167) (Null!167) (Comma!167) (LeftBracket!167) (False!335) (LeftBrace!167) (ImaginaryLiteralValue!167 (text!1615 List!785)) (StringLiteralValue!501 (value!7838 List!785)) (EOFValue!167 (value!7839 List!785)) (IdentValue!167 (value!7840 List!785)) (DelimiterValue!335 (value!7841 List!785)) (DedentValue!167 (value!7842 List!785)) (NewLineValue!167 (value!7843 List!785)) (IntegerValue!501 (value!7844 (_ BitVec 32)) (text!1616 List!785)) (IntegerValue!502 (value!7845 Int) (text!1617 List!785)) (Times!167) (Or!167) (Equal!167) (Minus!167) (Broken!839 (value!7846 List!785)) (And!167) (Div!167) (LessEqual!167) (Mod!167) (Concat!410) (Not!167) (Plus!167) (SpaceValue!167 (value!7847 List!785)) (IntegerValue!503 (value!7848 Int) (text!1618 List!785)) (StringLiteralValue!502 (text!1619 List!785)) (FloatLiteralValue!335 (text!1620 List!785)) (BytesLiteralValue!167 (value!7849 List!785)) (CommentValue!335 (value!7850 List!785)) (StringLiteralValue!503 (value!7851 List!785)) (ErrorTokenValue!167 (msg!228 List!785)) )
))
(declare-datatypes ((Regex!243 0))(
  ( (ElementMatch!243 (c!16162 (_ BitVec 16))) (Concat!411 (regOne!998 Regex!243) (regTwo!998 Regex!243)) (EmptyExpr!243) (Star!243 (reg!572 Regex!243)) (EmptyLang!243) (Union!243 (regOne!999 Regex!243) (regTwo!999 Regex!243)) )
))
(declare-datatypes ((String!1131 0))(
  ( (String!1132 (value!7852 String)) )
))
(declare-datatypes ((IArray!309 0))(
  ( (IArray!310 (innerList!212 List!785)) )
))
(declare-datatypes ((Conc!154 0))(
  ( (Node!154 (left!611 Conc!154) (right!941 Conc!154) (csize!538 Int) (cheight!365 Int)) (Leaf!354 (xs!2733 IArray!309) (csize!539 Int)) (Empty!154) )
))
(declare-datatypes ((BalanceConc!308 0))(
  ( (BalanceConc!309 (c!16163 Conc!154)) )
))
(declare-datatypes ((TokenValueInjection!158 0))(
  ( (TokenValueInjection!159 (toValue!656 Int) (toChars!515 Int)) )
))
(declare-datatypes ((Rule!154 0))(
  ( (Rule!155 (regex!177 Regex!243) (tag!355 String!1131) (isSeparator!177 Bool) (transformation!177 TokenValueInjection!158)) )
))
(declare-datatypes ((List!786 0))(
  ( (Nil!784) (Cons!784 (h!6180 Rule!154) (t!16983 List!786)) )
))
(declare-fun lt!6327 () List!786)

(get-info :version)

(assert (= (and b!46835 ((_ is Cons!784) lt!6327)) b!46877))

(declare-fun order!213 () Int)

(declare-fun order!211 () Int)

(declare-fun lambda!883 () Int)

(declare-fun dynLambda!131 (Int Int) Int)

(declare-fun dynLambda!132 (Int Int) Int)

(assert (=> b!46879 (< (dynLambda!131 order!211 (toValue!656 (transformation!177 (h!6180 lt!6327)))) (dynLambda!132 order!213 lambda!883))))

(declare-fun order!215 () Int)

(declare-fun dynLambda!133 (Int Int) Int)

(assert (=> b!46879 (< (dynLambda!133 order!215 (toChars!515 (transformation!177 (h!6180 lt!6327)))) (dynLambda!132 order!213 lambda!883))))

(declare-fun b!46826 () Bool)

(declare-fun res!31667 () Bool)

(declare-fun e!26854 () Bool)

(assert (=> b!46826 (=> (not res!31667) (not e!26854))))

(declare-datatypes ((List!787 0))(
  ( (Nil!785) (Cons!785 (h!6181 Regex!243) (t!16984 List!787)) )
))
(declare-datatypes ((Context!202 0))(
  ( (Context!203 (exprs!601 List!787)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!310 0))(
  ( (tuple3!311 (_1!678 (InoxSet Context!202)) (_2!678 Int) (_3!199 Int)) )
))
(declare-datatypes ((tuple2!958 0))(
  ( (tuple2!959 (_1!679 tuple3!310) (_2!679 Int)) )
))
(declare-datatypes ((List!788 0))(
  ( (Nil!786) (Cons!786 (h!6182 tuple2!958) (t!16985 List!788)) )
))
(declare-datatypes ((array!890 0))(
  ( (array!891 (arr!422 (Array (_ BitVec 32) (_ BitVec 64))) (size!760 (_ BitVec 32))) )
))
(declare-datatypes ((array!892 0))(
  ( (array!893 (arr!423 (Array (_ BitVec 32) List!788)) (size!761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!534 0))(
  ( (LongMapFixedSize!535 (defaultEntry!605 Int) (mask!990 (_ BitVec 32)) (extraKeys!513 (_ BitVec 32)) (zeroValue!523 List!788) (minValue!523 List!788) (_size!666 (_ BitVec 32)) (_keys!558 array!890) (_values!545 array!892) (_vacant!327 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!263 0))(
  ( (HashableExt!262 (__x!1313 Int)) )
))
(declare-datatypes ((Cell!1057 0))(
  ( (Cell!1058 (v!12513 LongMapFixedSize!534)) )
))
(declare-datatypes ((MutLongMap!267 0))(
  ( (LongMap!267 (underlying!729 Cell!1057)) (MutLongMapExt!266 (__x!1314 Int)) )
))
(declare-datatypes ((Cell!1059 0))(
  ( (Cell!1060 (v!12514 MutLongMap!267)) )
))
(declare-datatypes ((MutableMap!263 0))(
  ( (MutableMapExt!262 (__x!1315 Int)) (HashMap!263 (underlying!730 Cell!1059) (hashF!2131 Hashable!263) (_size!667 (_ BitVec 32)) (defaultValue!412 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!126 0))(
  ( (CacheFurthestNullable!127 (cache!748 MutableMap!263) (totalInput!1546 BalanceConc!308)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!126)

(declare-fun valid!237 (CacheFurthestNullable!126) Bool)

(assert (=> b!46826 (= res!31667 (valid!237 cacheFurthestNullable!45))))

(declare-fun b!46827 () Bool)

(declare-fun res!31651 () Bool)

(declare-fun e!26828 () Bool)

(assert (=> b!46827 (=> (not res!31651) (not e!26828))))

(declare-datatypes ((tuple2!960 0))(
  ( (tuple2!961 (_1!680 Context!202) (_2!680 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!264 0))(
  ( (HashableExt!263 (__x!1316 Int)) )
))
(declare-datatypes ((tuple2!962 0))(
  ( (tuple2!963 (_1!681 tuple2!960) (_2!681 (InoxSet Context!202))) )
))
(declare-datatypes ((List!789 0))(
  ( (Nil!787) (Cons!787 (h!6183 tuple2!962) (t!16986 List!789)) )
))
(declare-datatypes ((array!894 0))(
  ( (array!895 (arr!424 (Array (_ BitVec 32) List!789)) (size!762 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!536 0))(
  ( (LongMapFixedSize!537 (defaultEntry!606 Int) (mask!991 (_ BitVec 32)) (extraKeys!514 (_ BitVec 32)) (zeroValue!524 List!789) (minValue!524 List!789) (_size!668 (_ BitVec 32)) (_keys!559 array!890) (_values!546 array!894) (_vacant!328 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1061 0))(
  ( (Cell!1062 (v!12515 LongMapFixedSize!536)) )
))
(declare-datatypes ((MutLongMap!268 0))(
  ( (LongMap!268 (underlying!731 Cell!1061)) (MutLongMapExt!267 (__x!1317 Int)) )
))
(declare-datatypes ((Cell!1063 0))(
  ( (Cell!1064 (v!12516 MutLongMap!268)) )
))
(declare-datatypes ((MutableMap!264 0))(
  ( (MutableMapExt!263 (__x!1318 Int)) (HashMap!264 (underlying!732 Cell!1063) (hashF!2132 Hashable!264) (_size!669 (_ BitVec 32)) (defaultValue!413 Int)) )
))
(declare-datatypes ((CacheUp!178 0))(
  ( (CacheUp!179 (cache!749 MutableMap!264)) )
))
(declare-datatypes ((Token!118 0))(
  ( (Token!119 (value!7853 TokenValue!167) (rule!652 Rule!154) (size!763 Int) (originalCharacters!230 List!785)) )
))
(declare-datatypes ((List!790 0))(
  ( (Nil!788) (Cons!788 (h!6184 Token!118) (t!16987 List!790)) )
))
(declare-datatypes ((IArray!311 0))(
  ( (IArray!312 (innerList!213 List!790)) )
))
(declare-datatypes ((Conc!155 0))(
  ( (Node!155 (left!612 Conc!155) (right!942 Conc!155) (csize!540 Int) (cheight!366 Int)) (Leaf!355 (xs!2734 IArray!311) (csize!541 Int)) (Empty!155) )
))
(declare-datatypes ((BalanceConc!310 0))(
  ( (BalanceConc!311 (c!16164 Conc!155)) )
))
(declare-datatypes ((tuple2!964 0))(
  ( (tuple2!965 (_1!682 BalanceConc!310) (_2!682 BalanceConc!308)) )
))
(declare-datatypes ((tuple3!312 0))(
  ( (tuple3!313 (_1!683 Regex!243) (_2!683 Context!202) (_3!200 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!966 0))(
  ( (tuple2!967 (_1!684 tuple3!312) (_2!684 (InoxSet Context!202))) )
))
(declare-datatypes ((List!791 0))(
  ( (Nil!789) (Cons!789 (h!6185 tuple2!966) (t!16988 List!791)) )
))
(declare-datatypes ((array!896 0))(
  ( (array!897 (arr!425 (Array (_ BitVec 32) List!791)) (size!764 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!538 0))(
  ( (LongMapFixedSize!539 (defaultEntry!607 Int) (mask!992 (_ BitVec 32)) (extraKeys!515 (_ BitVec 32)) (zeroValue!525 List!791) (minValue!525 List!791) (_size!670 (_ BitVec 32)) (_keys!560 array!890) (_values!547 array!896) (_vacant!329 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1065 0))(
  ( (Cell!1066 (v!12517 LongMapFixedSize!538)) )
))
(declare-datatypes ((MutLongMap!269 0))(
  ( (LongMap!269 (underlying!733 Cell!1065)) (MutLongMapExt!268 (__x!1319 Int)) )
))
(declare-datatypes ((Cell!1067 0))(
  ( (Cell!1068 (v!12518 MutLongMap!269)) )
))
(declare-datatypes ((Hashable!265 0))(
  ( (HashableExt!264 (__x!1320 Int)) )
))
(declare-datatypes ((MutableMap!265 0))(
  ( (MutableMapExt!264 (__x!1321 Int)) (HashMap!265 (underlying!734 Cell!1067) (hashF!2133 Hashable!265) (_size!671 (_ BitVec 32)) (defaultValue!414 Int)) )
))
(declare-datatypes ((CacheDown!178 0))(
  ( (CacheDown!179 (cache!750 MutableMap!265)) )
))
(declare-datatypes ((tuple4!88 0))(
  ( (tuple4!89 (_1!685 tuple2!964) (_2!685 CacheUp!178) (_3!201 CacheDown!178) (_4!44 CacheFurthestNullable!126)) )
))
(declare-fun lt!6323 () tuple4!88)

(declare-fun valid!238 (CacheDown!178) Bool)

(assert (=> b!46827 (= res!31651 (valid!238 (_3!201 lt!6323)))))

(declare-fun mapIsEmpty!1054 () Bool)

(declare-fun mapRes!1056 () Bool)

(assert (=> mapIsEmpty!1054 mapRes!1056))

(declare-fun mapNonEmpty!1054 () Bool)

(declare-fun mapRes!1055 () Bool)

(declare-fun tp!31753 () Bool)

(declare-fun tp!31764 () Bool)

(assert (=> mapNonEmpty!1054 (= mapRes!1055 (and tp!31753 tp!31764))))

(declare-fun mapRest!1054 () (Array (_ BitVec 32) List!791))

(declare-fun mapValue!1055 () List!791)

(declare-fun mapKey!1054 () (_ BitVec 32))

(declare-fun cacheDown!333 () CacheDown!178)

(assert (=> mapNonEmpty!1054 (= (arr!425 (_values!547 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333))))))) (store mapRest!1054 mapKey!1054 mapValue!1055))))

(declare-fun b!46828 () Bool)

(declare-fun e!26831 () Bool)

(declare-fun tp!31765 () Bool)

(assert (=> b!46828 (= e!26831 (and tp!31765 mapRes!1055))))

(declare-fun condMapEmpty!1056 () Bool)

(declare-fun mapDefault!1054 () List!791)

(assert (=> b!46828 (= condMapEmpty!1056 (= (arr!425 (_values!547 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!791)) mapDefault!1054)))))

(declare-fun b!46829 () Bool)

(declare-fun res!31653 () Bool)

(assert (=> b!46829 (=> (not res!31653) (not e!26854))))

(declare-fun input!525 () BalanceConc!308)

(assert (=> b!46829 (= res!31653 (= (totalInput!1546 cacheFurthestNullable!45) input!525))))

(declare-fun b!46830 () Bool)

(declare-fun e!26829 () Bool)

(declare-fun e!26849 () Bool)

(declare-fun lt!6326 () MutLongMap!269)

(assert (=> b!46830 (= e!26829 (and e!26849 ((_ is LongMap!269) lt!6326)))))

(assert (=> b!46830 (= lt!6326 (v!12518 (underlying!734 (cache!750 cacheDown!333))))))

(declare-fun b!46831 () Bool)

(declare-fun e!26853 () Bool)

(declare-fun e!26848 () Bool)

(assert (=> b!46831 (= e!26853 e!26848)))

(declare-fun b!46832 () Bool)

(declare-fun e!26843 () Bool)

(declare-fun e!26837 () Bool)

(assert (=> b!46832 (= e!26843 e!26837)))

(declare-fun e!26852 () Bool)

(declare-fun tp!31761 () Bool)

(declare-fun tp!31762 () Bool)

(declare-fun array_inv!283 (array!890) Bool)

(declare-fun array_inv!284 (array!892) Bool)

(assert (=> b!46833 (= e!26848 (and tp!31755 tp!31761 tp!31762 (array_inv!283 (_keys!558 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))) (array_inv!284 (_values!545 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))) e!26852))))

(declare-fun mapIsEmpty!1055 () Bool)

(declare-fun mapRes!1054 () Bool)

(assert (=> mapIsEmpty!1055 mapRes!1054))

(declare-fun mapNonEmpty!1055 () Bool)

(declare-fun tp!31771 () Bool)

(declare-fun tp!31772 () Bool)

(assert (=> mapNonEmpty!1055 (= mapRes!1056 (and tp!31771 tp!31772))))

(declare-fun mapKey!1056 () (_ BitVec 32))

(declare-fun mapValue!1054 () List!788)

(declare-fun mapRest!1056 () (Array (_ BitVec 32) List!788))

(assert (=> mapNonEmpty!1055 (= (arr!423 (_values!545 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))) (store mapRest!1056 mapKey!1056 mapValue!1054))))

(declare-fun b!46834 () Bool)

(declare-fun e!26847 () Bool)

(declare-fun tp!31758 () Bool)

(declare-fun inv!1064 (Conc!154) Bool)

(assert (=> b!46834 (= e!26847 (and (inv!1064 (c!16163 input!525)) tp!31758))))

(declare-fun res!31657 () Bool)

(assert (=> b!46835 (=> (not res!31657) (not e!26828))))

(declare-fun lt!6328 () List!790)

(declare-fun forall!98 (List!790 Int) Bool)

(assert (=> b!46835 (= res!31657 (forall!98 lt!6328 lambda!883))))

(declare-fun mapNonEmpty!1056 () Bool)

(declare-fun tp!31754 () Bool)

(declare-fun tp!31766 () Bool)

(assert (=> mapNonEmpty!1056 (= mapRes!1054 (and tp!31754 tp!31766))))

(declare-fun mapKey!1055 () (_ BitVec 32))

(declare-fun cacheUp!320 () CacheUp!178)

(declare-fun mapRest!1055 () (Array (_ BitVec 32) List!789))

(declare-fun mapValue!1056 () List!789)

(assert (=> mapNonEmpty!1056 (= (arr!424 (_values!546 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320))))))) (store mapRest!1055 mapKey!1055 mapValue!1056))))

(declare-fun e!26833 () Bool)

(declare-fun tp!31752 () Bool)

(declare-fun tp!31763 () Bool)

(declare-fun array_inv!285 (array!894) Bool)

(assert (=> b!46836 (= e!26837 (and tp!31770 tp!31752 tp!31763 (array_inv!283 (_keys!559 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320))))))) (array_inv!285 (_values!546 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320))))))) e!26833))))

(declare-fun b!46837 () Bool)

(declare-fun res!31660 () Bool)

(assert (=> b!46837 (=> (not res!31660) (not e!26828))))

(assert (=> b!46837 (= res!31660 (valid!237 (_4!44 lt!6323)))))

(declare-fun b!46838 () Bool)

(declare-fun res!31669 () Bool)

(assert (=> b!46838 (=> (not res!31669) (not e!26828))))

(assert (=> b!46838 (= res!31669 (= (totalInput!1546 (_4!44 lt!6323)) input!525))))

(declare-fun b!46839 () Bool)

(declare-fun e!26851 () Bool)

(declare-fun e!26838 () Bool)

(declare-fun lt!6329 () MutLongMap!268)

(assert (=> b!46839 (= e!26851 (and e!26838 ((_ is LongMap!268) lt!6329)))))

(assert (=> b!46839 (= lt!6329 (v!12516 (underlying!732 (cache!749 cacheUp!320))))))

(declare-fun res!31663 () Bool)

(assert (=> start!3154 (=> (not res!31663) (not e!26854))))

(declare-fun isEmpty!156 (List!786) Bool)

(assert (=> start!3154 (= res!31663 (not (isEmpty!156 lt!6327)))))

(declare-datatypes ((JsonLexer!90 0))(
  ( (JsonLexer!91) )
))
(declare-fun rules!109 (JsonLexer!90) List!786)

(assert (=> start!3154 (= lt!6327 (rules!109 JsonLexer!91))))

(assert (=> start!3154 e!26854))

(declare-fun e!26825 () Bool)

(declare-fun inv!1065 (CacheDown!178) Bool)

(assert (=> start!3154 (and (inv!1065 cacheDown!333) e!26825)))

(declare-fun inv!1066 (BalanceConc!308) Bool)

(assert (=> start!3154 (and (inv!1066 input!525) e!26847)))

(declare-fun e!26842 () Bool)

(declare-fun inv!1067 (CacheFurthestNullable!126) Bool)

(assert (=> start!3154 (and (inv!1067 cacheFurthestNullable!45) e!26842)))

(declare-fun e!26835 () Bool)

(declare-fun inv!1068 (CacheUp!178) Bool)

(assert (=> start!3154 (and (inv!1068 cacheUp!320) e!26835)))

(declare-fun b!46840 () Bool)

(declare-fun e!26855 () Bool)

(assert (=> b!46840 (= e!26855 e!26828)))

(declare-fun res!31662 () Bool)

(assert (=> b!46840 (=> (not res!31662) (not e!26828))))

(declare-fun lt!6330 () List!790)

(declare-fun lt!6334 () tuple2!964)

(declare-fun list!215 (BalanceConc!310) List!790)

(assert (=> b!46840 (= res!31662 (= lt!6330 (list!215 (_1!682 lt!6334))))))

(declare-fun lt!6322 () BalanceConc!308)

(declare-datatypes ((LexerInterface!69 0))(
  ( (LexerInterfaceExt!66 (__x!1322 Int)) (Lexer!67) )
))
(declare-fun lex!50 (LexerInterface!69 List!786 BalanceConc!308) tuple2!964)

(assert (=> b!46840 (= lt!6334 (lex!50 Lexer!67 lt!6327 lt!6322))))

(declare-fun e!26845 () Bool)

(assert (=> b!46841 (= e!26845 (and e!26851 tp!31759))))

(declare-fun tp!31756 () Bool)

(declare-fun tp!31773 () Bool)

(declare-fun e!26856 () Bool)

(declare-fun array_inv!286 (array!896) Bool)

(assert (=> b!46842 (= e!26856 (and tp!31767 tp!31756 tp!31773 (array_inv!283 (_keys!560 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333))))))) (array_inv!286 (_values!547 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333))))))) e!26831))))

(declare-fun b!46843 () Bool)

(declare-fun e!26826 () Bool)

(assert (=> b!46843 (= e!26828 e!26826)))

(declare-fun res!31658 () Bool)

(assert (=> b!46843 (=> (not res!31658) (not e!26826))))

(declare-datatypes ((PrintableTokens!16 0))(
  ( (PrintableTokens!17 (rules!4832 List!786) (tokens!767 BalanceConc!310)) )
))
(declare-datatypes ((Option!56 0))(
  ( (None!55) (Some!55 (v!12519 PrintableTokens!16)) )
))
(declare-fun lt!6331 () Option!56)

(declare-fun isEmpty!157 (Option!56) Bool)

(assert (=> b!46843 (= res!31658 (not (isEmpty!157 lt!6331)))))

(declare-fun printableTokensFromTokens!3 (List!786 BalanceConc!310) Option!56)

(assert (=> b!46843 (= lt!6331 (printableTokensFromTokens!3 lt!6327 (_1!682 (_1!685 lt!6323))))))

(declare-fun b!46844 () Bool)

(declare-fun res!31650 () Bool)

(assert (=> b!46844 (=> (not res!31650) (not e!26854))))

(declare-fun valid!239 (CacheUp!178) Bool)

(assert (=> b!46844 (= res!31650 (valid!239 cacheUp!320))))

(declare-fun e!26839 () Bool)

(assert (=> b!46845 (= e!26839 (and e!26829 tp!31774))))

(declare-fun b!46846 () Bool)

(declare-fun usesJsonRules!0 (PrintableTokens!16) Bool)

(declare-fun get!229 (Option!56) PrintableTokens!16)

(assert (=> b!46846 (= e!26826 (not (usesJsonRules!0 (get!229 lt!6331))))))

(declare-fun b!46847 () Bool)

(declare-fun e!26840 () Bool)

(assert (=> b!46847 (= e!26849 e!26840)))

(declare-fun b!46848 () Bool)

(declare-fun e!26827 () Bool)

(assert (=> b!46848 (= e!26827 e!26855)))

(declare-fun res!31665 () Bool)

(assert (=> b!46848 (=> (not res!31665) (not e!26855))))

(declare-fun lt!6324 () List!785)

(declare-fun list!216 (BalanceConc!308) List!785)

(assert (=> b!46848 (= res!31665 (= (list!216 lt!6322) lt!6324))))

(declare-fun seqFromList!42 (List!785) BalanceConc!308)

(assert (=> b!46848 (= lt!6322 (seqFromList!42 lt!6324))))

(assert (=> b!46848 (= lt!6324 (list!216 input!525))))

(declare-fun b!46849 () Bool)

(assert (=> b!46849 (= e!26835 e!26845)))

(declare-fun b!46850 () Bool)

(declare-fun tp!31760 () Bool)

(assert (=> b!46850 (= e!26852 (and tp!31760 mapRes!1056))))

(declare-fun condMapEmpty!1054 () Bool)

(declare-fun mapDefault!1055 () List!788)

(assert (=> b!46850 (= condMapEmpty!1054 (= (arr!423 (_values!545 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!788)) mapDefault!1055)))))

(declare-fun b!46851 () Bool)

(declare-fun res!31655 () Bool)

(assert (=> b!46851 (=> (not res!31655) (not e!26854))))

(declare-fun rulesInvariant!64 (LexerInterface!69 List!786) Bool)

(assert (=> b!46851 (= res!31655 (rulesInvariant!64 Lexer!67 lt!6327))))

(declare-fun b!46852 () Bool)

(declare-fun e!26830 () Bool)

(assert (=> b!46852 (= e!26830 e!26827)))

(declare-fun res!31652 () Bool)

(assert (=> b!46852 (=> (not res!31652) (not e!26827))))

(declare-fun lt!6325 () List!785)

(declare-fun lt!6335 () List!785)

(assert (=> b!46852 (= res!31652 (= lt!6325 lt!6335))))

(declare-fun lt!6333 () tuple2!964)

(assert (=> b!46852 (= lt!6335 (list!216 (_2!682 lt!6333)))))

(assert (=> b!46852 (= lt!6325 (list!216 (_2!682 (_1!685 lt!6323))))))

(declare-fun b!46853 () Bool)

(declare-fun e!26841 () Bool)

(assert (=> b!46853 (= e!26841 e!26853)))

(declare-fun b!46854 () Bool)

(assert (=> b!46854 (= e!26854 e!26830)))

(declare-fun res!31656 () Bool)

(assert (=> b!46854 (=> (not res!31656) (not e!26830))))

(assert (=> b!46854 (= res!31656 (= lt!6328 lt!6330))))

(assert (=> b!46854 (= lt!6330 (list!215 (_1!682 lt!6333)))))

(assert (=> b!46854 (= lt!6328 (list!215 (_1!682 (_1!685 lt!6323))))))

(assert (=> b!46854 (= lt!6333 (lex!50 Lexer!67 lt!6327 input!525))))

(declare-datatypes ((Unit!360 0))(
  ( (Unit!361) )
))
(declare-fun lt!6332 () Unit!360)

(declare-fun lemmaInvariant!67 (CacheDown!178) Unit!360)

(assert (=> b!46854 (= lt!6332 (lemmaInvariant!67 (_3!201 lt!6323)))))

(declare-fun lt!6336 () Unit!360)

(declare-fun lemmaInvariant!68 (CacheUp!178) Unit!360)

(assert (=> b!46854 (= lt!6336 (lemmaInvariant!68 (_2!685 lt!6323)))))

(declare-fun lexMem!32 (LexerInterface!69 List!786 BalanceConc!308 CacheUp!178 CacheDown!178 CacheFurthestNullable!126) tuple4!88)

(assert (=> b!46854 (= lt!6323 (lexMem!32 Lexer!67 lt!6327 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!46855 () Bool)

(declare-fun res!31668 () Bool)

(assert (=> b!46855 (=> (not res!31668) (not e!26828))))

(declare-fun lexThenRulesProduceEachTokenIndividually!22 (LexerInterface!69 List!786 List!785) Bool)

(assert (=> b!46855 (= res!31668 (lexThenRulesProduceEachTokenIndividually!22 Lexer!67 lt!6327 lt!6324))))

(declare-fun b!46856 () Bool)

(declare-fun res!31659 () Bool)

(assert (=> b!46856 (=> (not res!31659) (not e!26854))))

(assert (=> b!46856 (= res!31659 (valid!238 cacheDown!333))))

(declare-fun b!46857 () Bool)

(declare-fun tp!31768 () Bool)

(assert (=> b!46857 (= e!26833 (and tp!31768 mapRes!1054))))

(declare-fun condMapEmpty!1055 () Bool)

(declare-fun mapDefault!1056 () List!789)

(assert (=> b!46857 (= condMapEmpty!1055 (= (arr!424 (_values!546 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!789)) mapDefault!1056)))))

(declare-fun b!46858 () Bool)

(declare-fun e!26844 () Bool)

(declare-fun lt!6321 () MutLongMap!267)

(assert (=> b!46858 (= e!26844 (and e!26841 ((_ is LongMap!267) lt!6321)))))

(assert (=> b!46858 (= lt!6321 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))

(declare-fun b!46859 () Bool)

(assert (=> b!46859 (= e!26838 e!26843)))

(declare-fun b!46860 () Bool)

(declare-fun res!31666 () Bool)

(assert (=> b!46860 (=> (not res!31666) (not e!26828))))

(declare-fun forall!99 (BalanceConc!310 Int) Bool)

(assert (=> b!46860 (= res!31666 (forall!99 (_1!682 (_1!685 lt!6323)) lambda!883))))

(declare-fun b!46861 () Bool)

(assert (=> b!46861 (= e!26840 e!26856)))

(declare-fun e!26850 () Bool)

(declare-fun b!46862 () Bool)

(declare-fun e!26836 () Bool)

(assert (=> b!46862 (= e!26842 (and e!26836 (inv!1066 (totalInput!1546 cacheFurthestNullable!45)) e!26850))))

(declare-fun b!46863 () Bool)

(assert (=> b!46863 (= e!26825 e!26839)))

(declare-fun b!46864 () Bool)

(declare-fun res!31661 () Bool)

(assert (=> b!46864 (=> (not res!31661) (not e!26828))))

(assert (=> b!46864 (= res!31661 (= lt!6335 (list!216 (_2!682 lt!6334))))))

(assert (=> b!46865 (= e!26836 (and e!26844 tp!31757))))

(declare-fun b!46866 () Bool)

(declare-fun res!31654 () Bool)

(assert (=> b!46866 (=> (not res!31654) (not e!26828))))

(assert (=> b!46866 (= res!31654 (valid!239 (_2!685 lt!6323)))))

(declare-fun b!46867 () Bool)

(declare-fun tp!31769 () Bool)

(assert (=> b!46867 (= e!26850 (and (inv!1064 (c!16163 (totalInput!1546 cacheFurthestNullable!45))) tp!31769))))

(declare-fun mapIsEmpty!1056 () Bool)

(assert (=> mapIsEmpty!1056 mapRes!1055))

(declare-fun b!46868 () Bool)

(declare-fun res!31664 () Bool)

(assert (=> b!46868 (=> (not res!31664) (not e!26828))))

(declare-fun rulesProduceEachTokenIndividuallyList!27 (LexerInterface!69 List!786 List!790) Bool)

(assert (=> b!46868 (= res!31664 (rulesProduceEachTokenIndividuallyList!27 Lexer!67 lt!6327 lt!6328))))

(assert (= (and start!3154 res!31663) b!46851))

(assert (= (and b!46851 res!31655) b!46844))

(assert (= (and b!46844 res!31650) b!46856))

(assert (= (and b!46856 res!31659) b!46826))

(assert (= (and b!46826 res!31667) b!46829))

(assert (= (and b!46829 res!31653) b!46854))

(assert (= (and b!46854 res!31656) b!46852))

(assert (= (and b!46852 res!31652) b!46848))

(assert (= (and b!46848 res!31665) b!46840))

(assert (= (and b!46840 res!31662) b!46864))

(assert (= (and b!46864 res!31661) b!46855))

(assert (= (and b!46855 res!31668) b!46835))

(assert (= (and b!46835 res!31657) b!46860))

(assert (= (and b!46860 res!31666) b!46868))

(assert (= (and b!46868 res!31664) b!46866))

(assert (= (and b!46866 res!31654) b!46827))

(assert (= (and b!46827 res!31651) b!46837))

(assert (= (and b!46837 res!31660) b!46838))

(assert (= (and b!46838 res!31669) b!46843))

(assert (= (and b!46843 res!31658) b!46846))

(assert (= (and b!46828 condMapEmpty!1056) mapIsEmpty!1056))

(assert (= (and b!46828 (not condMapEmpty!1056)) mapNonEmpty!1054))

(assert (= b!46842 b!46828))

(assert (= b!46861 b!46842))

(assert (= b!46847 b!46861))

(assert (= (and b!46830 ((_ is LongMap!269) (v!12518 (underlying!734 (cache!750 cacheDown!333))))) b!46847))

(assert (= b!46845 b!46830))

(assert (= (and b!46863 ((_ is HashMap!265) (cache!750 cacheDown!333))) b!46845))

(assert (= start!3154 b!46863))

(assert (= start!3154 b!46834))

(assert (= (and b!46850 condMapEmpty!1054) mapIsEmpty!1054))

(assert (= (and b!46850 (not condMapEmpty!1054)) mapNonEmpty!1055))

(assert (= b!46833 b!46850))

(assert (= b!46831 b!46833))

(assert (= b!46853 b!46831))

(assert (= (and b!46858 ((_ is LongMap!267) (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))) b!46853))

(assert (= b!46865 b!46858))

(assert (= (and b!46862 ((_ is HashMap!263) (cache!748 cacheFurthestNullable!45))) b!46865))

(assert (= b!46862 b!46867))

(assert (= start!3154 b!46862))

(assert (= (and b!46857 condMapEmpty!1055) mapIsEmpty!1055))

(assert (= (and b!46857 (not condMapEmpty!1055)) mapNonEmpty!1056))

(assert (= b!46836 b!46857))

(assert (= b!46832 b!46836))

(assert (= b!46859 b!46832))

(assert (= (and b!46839 ((_ is LongMap!268) (v!12516 (underlying!732 (cache!749 cacheUp!320))))) b!46859))

(assert (= b!46841 b!46839))

(assert (= (and b!46849 ((_ is HashMap!264) (cache!749 cacheUp!320))) b!46841))

(assert (= start!3154 b!46849))

(declare-fun m!21014 () Bool)

(assert (=> b!46848 m!21014))

(declare-fun m!21016 () Bool)

(assert (=> b!46848 m!21016))

(declare-fun m!21018 () Bool)

(assert (=> b!46848 m!21018))

(declare-fun m!21020 () Bool)

(assert (=> b!46843 m!21020))

(declare-fun m!21022 () Bool)

(assert (=> b!46843 m!21022))

(declare-fun m!21024 () Bool)

(assert (=> b!46868 m!21024))

(declare-fun m!21026 () Bool)

(assert (=> mapNonEmpty!1056 m!21026))

(declare-fun m!21028 () Bool)

(assert (=> b!46867 m!21028))

(declare-fun m!21030 () Bool)

(assert (=> b!46846 m!21030))

(assert (=> b!46846 m!21030))

(declare-fun m!21032 () Bool)

(assert (=> b!46846 m!21032))

(declare-fun m!21034 () Bool)

(assert (=> b!46844 m!21034))

(declare-fun m!21036 () Bool)

(assert (=> b!46851 m!21036))

(declare-fun m!21038 () Bool)

(assert (=> b!46834 m!21038))

(declare-fun m!21040 () Bool)

(assert (=> mapNonEmpty!1054 m!21040))

(declare-fun m!21042 () Bool)

(assert (=> b!46842 m!21042))

(declare-fun m!21044 () Bool)

(assert (=> b!46842 m!21044))

(declare-fun m!21046 () Bool)

(assert (=> mapNonEmpty!1055 m!21046))

(declare-fun m!21048 () Bool)

(assert (=> b!46835 m!21048))

(declare-fun m!21050 () Bool)

(assert (=> start!3154 m!21050))

(declare-fun m!21052 () Bool)

(assert (=> start!3154 m!21052))

(declare-fun m!21054 () Bool)

(assert (=> start!3154 m!21054))

(declare-fun m!21056 () Bool)

(assert (=> start!3154 m!21056))

(declare-fun m!21058 () Bool)

(assert (=> start!3154 m!21058))

(declare-fun m!21060 () Bool)

(assert (=> start!3154 m!21060))

(declare-fun m!21062 () Bool)

(assert (=> b!46864 m!21062))

(declare-fun m!21064 () Bool)

(assert (=> b!46836 m!21064))

(declare-fun m!21066 () Bool)

(assert (=> b!46836 m!21066))

(declare-fun m!21068 () Bool)

(assert (=> b!46856 m!21068))

(declare-fun m!21070 () Bool)

(assert (=> b!46840 m!21070))

(declare-fun m!21072 () Bool)

(assert (=> b!46840 m!21072))

(declare-fun m!21074 () Bool)

(assert (=> b!46833 m!21074))

(declare-fun m!21076 () Bool)

(assert (=> b!46833 m!21076))

(declare-fun m!21078 () Bool)

(assert (=> b!46854 m!21078))

(declare-fun m!21080 () Bool)

(assert (=> b!46854 m!21080))

(declare-fun m!21082 () Bool)

(assert (=> b!46854 m!21082))

(declare-fun m!21084 () Bool)

(assert (=> b!46854 m!21084))

(declare-fun m!21086 () Bool)

(assert (=> b!46854 m!21086))

(declare-fun m!21088 () Bool)

(assert (=> b!46854 m!21088))

(declare-fun m!21090 () Bool)

(assert (=> b!46866 m!21090))

(declare-fun m!21092 () Bool)

(assert (=> b!46860 m!21092))

(declare-fun m!21094 () Bool)

(assert (=> b!46826 m!21094))

(declare-fun m!21096 () Bool)

(assert (=> b!46852 m!21096))

(declare-fun m!21098 () Bool)

(assert (=> b!46852 m!21098))

(declare-fun m!21100 () Bool)

(assert (=> b!46855 m!21100))

(declare-fun m!21102 () Bool)

(assert (=> b!46862 m!21102))

(declare-fun m!21104 () Bool)

(assert (=> b!46827 m!21104))

(declare-fun m!21106 () Bool)

(assert (=> b!46837 m!21106))

(check-sat (not b!46855) (not b_next!1245) b_and!1285 (not b!46846) (not b!46857) (not b!46833) (not b!46867) (not b!46828) (not b!46848) (not b!46877) (not b!46868) (not b!46827) (not b_next!1255) (not b!46856) (not b!46851) b_and!1287 (not b!46864) (not b_next!1253) (not mapNonEmpty!1054) (not mapNonEmpty!1055) (not b!46834) (not b!46852) (not b!46862) (not b_next!1251) (not b!46835) b_and!1279 b_and!1283 (not b_next!1249) b_and!1281 (not start!3154) (not b!46842) (not b!46866) (not b!46860) (not b_next!1247) (not b!46837) (not mapNonEmpty!1056) (not b!46826) (not b!46844) (not b!46836) (not b!46843) b_and!1289 (not b!46854) (not b!46840) (not b!46850))
(check-sat (not b_next!1255) (not b_next!1245) b_and!1287 (not b_next!1253) b_and!1285 (not b_next!1251) b_and!1279 (not b_next!1247) b_and!1289 b_and!1283 (not b_next!1249) b_and!1281)
(get-model)

(declare-fun d!5560 () Bool)

(assert (=> d!5560 (= (usesJsonRules!0 (get!229 lt!6331)) (= (rules!4832 (get!229 lt!6331)) (rules!109 JsonLexer!91)))))

(declare-fun bs!6348 () Bool)

(assert (= bs!6348 d!5560))

(assert (=> bs!6348 m!21056))

(assert (=> b!46846 d!5560))

(declare-fun d!5562 () Bool)

(assert (=> d!5562 (= (get!229 lt!6331) (v!12519 lt!6331))))

(assert (=> b!46846 d!5562))

(declare-fun d!5564 () Bool)

(declare-fun c!16167 () Bool)

(assert (=> d!5564 (= c!16167 ((_ is Node!154) (c!16163 (totalInput!1546 cacheFurthestNullable!45))))))

(declare-fun e!26870 () Bool)

(assert (=> d!5564 (= (inv!1064 (c!16163 (totalInput!1546 cacheFurthestNullable!45))) e!26870)))

(declare-fun b!46886 () Bool)

(declare-fun inv!1069 (Conc!154) Bool)

(assert (=> b!46886 (= e!26870 (inv!1069 (c!16163 (totalInput!1546 cacheFurthestNullable!45))))))

(declare-fun b!46887 () Bool)

(declare-fun e!26871 () Bool)

(assert (=> b!46887 (= e!26870 e!26871)))

(declare-fun res!31674 () Bool)

(assert (=> b!46887 (= res!31674 (not ((_ is Leaf!354) (c!16163 (totalInput!1546 cacheFurthestNullable!45)))))))

(assert (=> b!46887 (=> res!31674 e!26871)))

(declare-fun b!46888 () Bool)

(declare-fun inv!1070 (Conc!154) Bool)

(assert (=> b!46888 (= e!26871 (inv!1070 (c!16163 (totalInput!1546 cacheFurthestNullable!45))))))

(assert (= (and d!5564 c!16167) b!46886))

(assert (= (and d!5564 (not c!16167)) b!46887))

(assert (= (and b!46887 (not res!31674)) b!46888))

(declare-fun m!21108 () Bool)

(assert (=> b!46886 m!21108))

(declare-fun m!21110 () Bool)

(assert (=> b!46888 m!21110))

(assert (=> b!46867 d!5564))

(declare-fun bs!6349 () Bool)

(declare-fun d!5566 () Bool)

(assert (= bs!6349 (and d!5566 b!46835)))

(declare-fun lambda!886 () Int)

(assert (=> bs!6349 (= lambda!886 lambda!883)))

(declare-fun b!46897 () Bool)

(declare-fun e!26880 () Bool)

(assert (=> b!46897 (= e!26880 true)))

(declare-fun b!46896 () Bool)

(declare-fun e!26879 () Bool)

(assert (=> b!46896 (= e!26879 e!26880)))

(declare-fun b!46895 () Bool)

(declare-fun e!26878 () Bool)

(assert (=> b!46895 (= e!26878 e!26879)))

(assert (=> d!5566 e!26878))

(assert (= b!46896 b!46897))

(assert (= b!46895 b!46896))

(assert (= (and d!5566 ((_ is Cons!784) lt!6327)) b!46895))

(assert (=> b!46897 (< (dynLambda!131 order!211 (toValue!656 (transformation!177 (h!6180 lt!6327)))) (dynLambda!132 order!213 lambda!886))))

(assert (=> b!46897 (< (dynLambda!133 order!215 (toChars!515 (transformation!177 (h!6180 lt!6327)))) (dynLambda!132 order!213 lambda!886))))

(assert (=> d!5566 true))

(declare-fun lt!6339 () Bool)

(assert (=> d!5566 (= lt!6339 (forall!98 lt!6328 lambda!886))))

(declare-fun e!26877 () Bool)

(assert (=> d!5566 (= lt!6339 e!26877)))

(declare-fun res!31679 () Bool)

(assert (=> d!5566 (=> res!31679 e!26877)))

(assert (=> d!5566 (= res!31679 (not ((_ is Cons!788) lt!6328)))))

(assert (=> d!5566 (not (isEmpty!156 lt!6327))))

(assert (=> d!5566 (= (rulesProduceEachTokenIndividuallyList!27 Lexer!67 lt!6327 lt!6328) lt!6339)))

(declare-fun b!46893 () Bool)

(declare-fun e!26876 () Bool)

(assert (=> b!46893 (= e!26877 e!26876)))

(declare-fun res!31680 () Bool)

(assert (=> b!46893 (=> (not res!31680) (not e!26876))))

(declare-fun rulesProduceIndividualToken!12 (LexerInterface!69 List!786 Token!118) Bool)

(assert (=> b!46893 (= res!31680 (rulesProduceIndividualToken!12 Lexer!67 lt!6327 (h!6184 lt!6328)))))

(declare-fun b!46894 () Bool)

(assert (=> b!46894 (= e!26876 (rulesProduceEachTokenIndividuallyList!27 Lexer!67 lt!6327 (t!16987 lt!6328)))))

(assert (= (and d!5566 (not res!31679)) b!46893))

(assert (= (and b!46893 res!31680) b!46894))

(declare-fun m!21112 () Bool)

(assert (=> d!5566 m!21112))

(assert (=> d!5566 m!21060))

(declare-fun m!21114 () Bool)

(assert (=> b!46893 m!21114))

(declare-fun m!21116 () Bool)

(assert (=> b!46894 m!21116))

(assert (=> b!46868 d!5566))

(declare-fun d!5568 () Bool)

(declare-fun list!217 (Conc!154) List!785)

(assert (=> d!5568 (= (list!216 lt!6322) (list!217 (c!16163 lt!6322)))))

(declare-fun bs!6350 () Bool)

(assert (= bs!6350 d!5568))

(declare-fun m!21118 () Bool)

(assert (=> bs!6350 m!21118))

(assert (=> b!46848 d!5568))

(declare-fun d!5570 () Bool)

(declare-fun fromListB!16 (List!785) BalanceConc!308)

(assert (=> d!5570 (= (seqFromList!42 lt!6324) (fromListB!16 lt!6324))))

(declare-fun bs!6351 () Bool)

(assert (= bs!6351 d!5570))

(declare-fun m!21120 () Bool)

(assert (=> bs!6351 m!21120))

(assert (=> b!46848 d!5570))

(declare-fun d!5572 () Bool)

(assert (=> d!5572 (= (list!216 input!525) (list!217 (c!16163 input!525)))))

(declare-fun bs!6352 () Bool)

(assert (= bs!6352 d!5572))

(declare-fun m!21122 () Bool)

(assert (=> bs!6352 m!21122))

(assert (=> b!46848 d!5572))

(declare-fun d!5574 () Bool)

(declare-fun isBalanced!30 (Conc!154) Bool)

(assert (=> d!5574 (= (inv!1066 (totalInput!1546 cacheFurthestNullable!45)) (isBalanced!30 (c!16163 (totalInput!1546 cacheFurthestNullable!45))))))

(declare-fun bs!6353 () Bool)

(assert (= bs!6353 d!5574))

(declare-fun m!21124 () Bool)

(assert (=> bs!6353 m!21124))

(assert (=> b!46862 d!5574))

(declare-fun d!5576 () Bool)

(declare-fun list!218 (Conc!155) List!790)

(assert (=> d!5576 (= (list!215 (_1!682 lt!6334)) (list!218 (c!16164 (_1!682 lt!6334))))))

(declare-fun bs!6354 () Bool)

(assert (= bs!6354 d!5576))

(declare-fun m!21126 () Bool)

(assert (=> bs!6354 m!21126))

(assert (=> b!46840 d!5576))

(declare-fun e!26887 () Bool)

(declare-fun lt!6342 () tuple2!964)

(declare-fun b!46910 () Bool)

(declare-datatypes ((tuple2!968 0))(
  ( (tuple2!969 (_1!686 List!790) (_2!686 List!785)) )
))
(declare-fun lexList!20 (LexerInterface!69 List!786 List!785) tuple2!968)

(assert (=> b!46910 (= e!26887 (= (list!216 (_2!682 lt!6342)) (_2!686 (lexList!20 Lexer!67 lt!6327 (list!216 lt!6322)))))))

(declare-fun d!5578 () Bool)

(assert (=> d!5578 e!26887))

(declare-fun res!31687 () Bool)

(assert (=> d!5578 (=> (not res!31687) (not e!26887))))

(declare-fun e!26888 () Bool)

(assert (=> d!5578 (= res!31687 e!26888)))

(declare-fun c!16170 () Bool)

(declare-fun size!765 (BalanceConc!310) Int)

(assert (=> d!5578 (= c!16170 (> (size!765 (_1!682 lt!6342)) 0))))

(declare-fun lexTailRecV2!17 (LexerInterface!69 List!786 BalanceConc!308 BalanceConc!308 BalanceConc!308 BalanceConc!310) tuple2!964)

(assert (=> d!5578 (= lt!6342 (lexTailRecV2!17 Lexer!67 lt!6327 lt!6322 (BalanceConc!309 Empty!154) lt!6322 (BalanceConc!311 Empty!155)))))

(assert (=> d!5578 (= (lex!50 Lexer!67 lt!6327 lt!6322) lt!6342)))

(declare-fun b!46911 () Bool)

(assert (=> b!46911 (= e!26888 (= (_2!682 lt!6342) lt!6322))))

(declare-fun b!46912 () Bool)

(declare-fun res!31688 () Bool)

(assert (=> b!46912 (=> (not res!31688) (not e!26887))))

(assert (=> b!46912 (= res!31688 (= (list!215 (_1!682 lt!6342)) (_1!686 (lexList!20 Lexer!67 lt!6327 (list!216 lt!6322)))))))

(declare-fun b!46913 () Bool)

(declare-fun e!26889 () Bool)

(assert (=> b!46913 (= e!26888 e!26889)))

(declare-fun res!31689 () Bool)

(declare-fun size!766 (BalanceConc!308) Int)

(assert (=> b!46913 (= res!31689 (< (size!766 (_2!682 lt!6342)) (size!766 lt!6322)))))

(assert (=> b!46913 (=> (not res!31689) (not e!26889))))

(declare-fun b!46914 () Bool)

(declare-fun isEmpty!158 (BalanceConc!310) Bool)

(assert (=> b!46914 (= e!26889 (not (isEmpty!158 (_1!682 lt!6342))))))

(assert (= (and d!5578 c!16170) b!46913))

(assert (= (and d!5578 (not c!16170)) b!46911))

(assert (= (and b!46913 res!31689) b!46914))

(assert (= (and d!5578 res!31687) b!46912))

(assert (= (and b!46912 res!31688) b!46910))

(declare-fun m!21128 () Bool)

(assert (=> b!46912 m!21128))

(assert (=> b!46912 m!21014))

(assert (=> b!46912 m!21014))

(declare-fun m!21130 () Bool)

(assert (=> b!46912 m!21130))

(declare-fun m!21132 () Bool)

(assert (=> b!46910 m!21132))

(assert (=> b!46910 m!21014))

(assert (=> b!46910 m!21014))

(assert (=> b!46910 m!21130))

(declare-fun m!21134 () Bool)

(assert (=> d!5578 m!21134))

(declare-fun m!21136 () Bool)

(assert (=> d!5578 m!21136))

(declare-fun m!21138 () Bool)

(assert (=> b!46914 m!21138))

(declare-fun m!21140 () Bool)

(assert (=> b!46913 m!21140))

(declare-fun m!21142 () Bool)

(assert (=> b!46913 m!21142))

(assert (=> b!46840 d!5578))

(declare-fun d!5580 () Bool)

(declare-fun validCacheMapFurthestNullable!19 (MutableMap!263 BalanceConc!308) Bool)

(assert (=> d!5580 (= (valid!237 cacheFurthestNullable!45) (validCacheMapFurthestNullable!19 (cache!748 cacheFurthestNullable!45) (totalInput!1546 cacheFurthestNullable!45)))))

(declare-fun bs!6355 () Bool)

(assert (= bs!6355 d!5580))

(declare-fun m!21144 () Bool)

(assert (=> bs!6355 m!21144))

(assert (=> b!46826 d!5580))

(declare-fun d!5582 () Bool)

(assert (=> d!5582 (= (array_inv!283 (_keys!560 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333))))))) (bvsge (size!760 (_keys!560 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!46842 d!5582))

(declare-fun d!5584 () Bool)

(assert (=> d!5584 (= (array_inv!286 (_values!547 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333))))))) (bvsge (size!764 (_values!547 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!46842 d!5584))

(declare-fun d!5586 () Bool)

(declare-fun validCacheMapDown!27 (MutableMap!265) Bool)

(assert (=> d!5586 (= (valid!238 (_3!201 lt!6323)) (validCacheMapDown!27 (cache!750 (_3!201 lt!6323))))))

(declare-fun bs!6356 () Bool)

(assert (= bs!6356 d!5586))

(declare-fun m!21146 () Bool)

(assert (=> bs!6356 m!21146))

(assert (=> b!46827 d!5586))

(declare-fun d!5588 () Bool)

(assert (=> d!5588 (= (isEmpty!157 lt!6331) (not ((_ is Some!55) lt!6331)))))

(assert (=> b!46843 d!5588))

(declare-fun b!46925 () Bool)

(declare-fun e!26898 () Bool)

(declare-fun e!26897 () Bool)

(assert (=> b!46925 (= e!26898 e!26897)))

(declare-fun res!31695 () Bool)

(assert (=> b!46925 (=> (not res!31695) (not e!26897))))

(declare-fun lt!6345 () Option!56)

(assert (=> b!46925 (= res!31695 (= (rules!4832 (get!229 lt!6345)) lt!6327))))

(declare-fun b!46923 () Bool)

(declare-fun e!26896 () Option!56)

(assert (=> b!46923 (= e!26896 (Some!55 (PrintableTokens!17 lt!6327 (_1!682 (_1!685 lt!6323)))))))

(declare-fun b!46924 () Bool)

(assert (=> b!46924 (= e!26896 None!55)))

(declare-fun d!5590 () Bool)

(assert (=> d!5590 e!26898))

(declare-fun res!31694 () Bool)

(assert (=> d!5590 (=> res!31694 e!26898)))

(assert (=> d!5590 (= res!31694 (isEmpty!157 lt!6345))))

(assert (=> d!5590 (= lt!6345 e!26896)))

(declare-fun c!16173 () Bool)

(declare-fun separableTokens!5 (LexerInterface!69 BalanceConc!310 List!786) Bool)

(assert (=> d!5590 (= c!16173 (separableTokens!5 Lexer!67 (_1!682 (_1!685 lt!6323)) lt!6327))))

(assert (=> d!5590 (not (isEmpty!156 lt!6327))))

(assert (=> d!5590 (= (printableTokensFromTokens!3 lt!6327 (_1!682 (_1!685 lt!6323))) lt!6345)))

(declare-fun b!46926 () Bool)

(assert (=> b!46926 (= e!26897 (= (tokens!767 (get!229 lt!6345)) (_1!682 (_1!685 lt!6323))))))

(assert (= (and d!5590 c!16173) b!46923))

(assert (= (and d!5590 (not c!16173)) b!46924))

(assert (= (and d!5590 (not res!31694)) b!46925))

(assert (= (and b!46925 res!31695) b!46926))

(declare-fun m!21148 () Bool)

(assert (=> b!46925 m!21148))

(declare-fun m!21150 () Bool)

(assert (=> d!5590 m!21150))

(declare-fun m!21152 () Bool)

(assert (=> d!5590 m!21152))

(assert (=> d!5590 m!21060))

(assert (=> b!46926 m!21148))

(assert (=> b!46843 d!5590))

(declare-fun d!5592 () Bool)

(assert (=> d!5592 (= (list!216 (_2!682 lt!6334)) (list!217 (c!16163 (_2!682 lt!6334))))))

(declare-fun bs!6357 () Bool)

(assert (= bs!6357 d!5592))

(declare-fun m!21154 () Bool)

(assert (=> bs!6357 m!21154))

(assert (=> b!46864 d!5592))

(declare-fun d!5594 () Bool)

(declare-fun validCacheMapUp!25 (MutableMap!264) Bool)

(assert (=> d!5594 (= (valid!239 (_2!685 lt!6323)) (validCacheMapUp!25 (cache!749 (_2!685 lt!6323))))))

(declare-fun bs!6358 () Bool)

(assert (= bs!6358 d!5594))

(declare-fun m!21156 () Bool)

(assert (=> bs!6358 m!21156))

(assert (=> b!46866 d!5594))

(declare-fun d!5596 () Bool)

(assert (=> d!5596 (= (valid!239 cacheUp!320) (validCacheMapUp!25 (cache!749 cacheUp!320)))))

(declare-fun bs!6359 () Bool)

(assert (= bs!6359 d!5596))

(declare-fun m!21158 () Bool)

(assert (=> bs!6359 m!21158))

(assert (=> b!46844 d!5596))

(declare-fun d!5598 () Bool)

(assert (=> d!5598 (= (valid!238 cacheDown!333) (validCacheMapDown!27 (cache!750 cacheDown!333)))))

(declare-fun bs!6360 () Bool)

(assert (= bs!6360 d!5598))

(declare-fun m!21160 () Bool)

(assert (=> bs!6360 m!21160))

(assert (=> b!46856 d!5598))

(declare-fun d!5600 () Bool)

(assert (=> d!5600 (= (valid!237 (_4!44 lt!6323)) (validCacheMapFurthestNullable!19 (cache!748 (_4!44 lt!6323)) (totalInput!1546 (_4!44 lt!6323))))))

(declare-fun bs!6361 () Bool)

(assert (= bs!6361 d!5600))

(declare-fun m!21162 () Bool)

(assert (=> bs!6361 m!21162))

(assert (=> b!46837 d!5600))

(declare-fun d!5602 () Bool)

(assert (=> d!5602 (= (array_inv!283 (_keys!559 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320))))))) (bvsge (size!760 (_keys!559 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!46836 d!5602))

(declare-fun d!5604 () Bool)

(assert (=> d!5604 (= (array_inv!285 (_values!546 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320))))))) (bvsge (size!762 (_values!546 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!46836 d!5604))

(declare-fun d!5606 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!90) Rule!154)

(declare-fun integerLiteralRule!0 (JsonLexer!90) Rule!154)

(declare-fun floatLiteralRule!0 (JsonLexer!90) Rule!154)

(declare-fun trueRule!0 (JsonLexer!90) Rule!154)

(declare-fun falseRule!0 (JsonLexer!90) Rule!154)

(declare-fun nullRule!0 (JsonLexer!90) Rule!154)

(declare-fun jsonstringRule!0 (JsonLexer!90) Rule!154)

(declare-fun lBraceRule!0 (JsonLexer!90) Rule!154)

(declare-fun rBraceRule!0 (JsonLexer!90) Rule!154)

(declare-fun lBracketRule!0 (JsonLexer!90) Rule!154)

(declare-fun rBracketRule!0 (JsonLexer!90) Rule!154)

(declare-fun colonRule!0 (JsonLexer!90) Rule!154)

(declare-fun commaRule!0 (JsonLexer!90) Rule!154)

(declare-fun eofRule!0 (JsonLexer!90) Rule!154)

(assert (=> d!5606 (= (rules!109 JsonLexer!91) (Cons!784 (whitespaceRule!0 JsonLexer!91) (Cons!784 (integerLiteralRule!0 JsonLexer!91) (Cons!784 (floatLiteralRule!0 JsonLexer!91) (Cons!784 (trueRule!0 JsonLexer!91) (Cons!784 (falseRule!0 JsonLexer!91) (Cons!784 (nullRule!0 JsonLexer!91) (Cons!784 (jsonstringRule!0 JsonLexer!91) (Cons!784 (lBraceRule!0 JsonLexer!91) (Cons!784 (rBraceRule!0 JsonLexer!91) (Cons!784 (lBracketRule!0 JsonLexer!91) (Cons!784 (rBracketRule!0 JsonLexer!91) (Cons!784 (colonRule!0 JsonLexer!91) (Cons!784 (commaRule!0 JsonLexer!91) (Cons!784 (eofRule!0 JsonLexer!91) Nil!784)))))))))))))))))

(declare-fun bs!6362 () Bool)

(assert (= bs!6362 d!5606))

(declare-fun m!21164 () Bool)

(assert (=> bs!6362 m!21164))

(declare-fun m!21166 () Bool)

(assert (=> bs!6362 m!21166))

(declare-fun m!21168 () Bool)

(assert (=> bs!6362 m!21168))

(declare-fun m!21170 () Bool)

(assert (=> bs!6362 m!21170))

(declare-fun m!21172 () Bool)

(assert (=> bs!6362 m!21172))

(declare-fun m!21174 () Bool)

(assert (=> bs!6362 m!21174))

(declare-fun m!21176 () Bool)

(assert (=> bs!6362 m!21176))

(declare-fun m!21178 () Bool)

(assert (=> bs!6362 m!21178))

(declare-fun m!21180 () Bool)

(assert (=> bs!6362 m!21180))

(declare-fun m!21182 () Bool)

(assert (=> bs!6362 m!21182))

(declare-fun m!21184 () Bool)

(assert (=> bs!6362 m!21184))

(declare-fun m!21186 () Bool)

(assert (=> bs!6362 m!21186))

(declare-fun m!21188 () Bool)

(assert (=> bs!6362 m!21188))

(declare-fun m!21190 () Bool)

(assert (=> bs!6362 m!21190))

(assert (=> start!3154 d!5606))

(declare-fun d!5608 () Bool)

(assert (=> d!5608 (= (isEmpty!156 lt!6327) ((_ is Nil!784) lt!6327))))

(assert (=> start!3154 d!5608))

(declare-fun d!5610 () Bool)

(declare-fun res!31698 () Bool)

(declare-fun e!26901 () Bool)

(assert (=> d!5610 (=> (not res!31698) (not e!26901))))

(assert (=> d!5610 (= res!31698 ((_ is HashMap!265) (cache!750 cacheDown!333)))))

(assert (=> d!5610 (= (inv!1065 cacheDown!333) e!26901)))

(declare-fun b!46929 () Bool)

(assert (=> b!46929 (= e!26901 (validCacheMapDown!27 (cache!750 cacheDown!333)))))

(assert (= (and d!5610 res!31698) b!46929))

(assert (=> b!46929 m!21160))

(assert (=> start!3154 d!5610))

(declare-fun d!5612 () Bool)

(assert (=> d!5612 (= (inv!1066 input!525) (isBalanced!30 (c!16163 input!525)))))

(declare-fun bs!6363 () Bool)

(assert (= bs!6363 d!5612))

(declare-fun m!21192 () Bool)

(assert (=> bs!6363 m!21192))

(assert (=> start!3154 d!5612))

(declare-fun d!5614 () Bool)

(declare-fun res!31701 () Bool)

(declare-fun e!26904 () Bool)

(assert (=> d!5614 (=> (not res!31701) (not e!26904))))

(assert (=> d!5614 (= res!31701 ((_ is HashMap!263) (cache!748 cacheFurthestNullable!45)))))

(assert (=> d!5614 (= (inv!1067 cacheFurthestNullable!45) e!26904)))

(declare-fun b!46932 () Bool)

(assert (=> b!46932 (= e!26904 (validCacheMapFurthestNullable!19 (cache!748 cacheFurthestNullable!45) (totalInput!1546 cacheFurthestNullable!45)))))

(assert (= (and d!5614 res!31701) b!46932))

(assert (=> b!46932 m!21144))

(assert (=> start!3154 d!5614))

(declare-fun d!5616 () Bool)

(declare-fun res!31704 () Bool)

(declare-fun e!26907 () Bool)

(assert (=> d!5616 (=> (not res!31704) (not e!26907))))

(assert (=> d!5616 (= res!31704 ((_ is HashMap!264) (cache!749 cacheUp!320)))))

(assert (=> d!5616 (= (inv!1068 cacheUp!320) e!26907)))

(declare-fun b!46935 () Bool)

(assert (=> b!46935 (= e!26907 (validCacheMapUp!25 (cache!749 cacheUp!320)))))

(assert (= (and d!5616 res!31704) b!46935))

(assert (=> b!46935 m!21158))

(assert (=> start!3154 d!5616))

(declare-fun d!5618 () Bool)

(declare-fun lt!6348 () Bool)

(assert (=> d!5618 (= lt!6348 (forall!98 (list!215 (_1!682 (_1!685 lt!6323))) lambda!883))))

(declare-fun forall!100 (Conc!155 Int) Bool)

(assert (=> d!5618 (= lt!6348 (forall!100 (c!16164 (_1!682 (_1!685 lt!6323))) lambda!883))))

(assert (=> d!5618 (= (forall!99 (_1!682 (_1!685 lt!6323)) lambda!883) lt!6348)))

(declare-fun bs!6364 () Bool)

(assert (= bs!6364 d!5618))

(assert (=> bs!6364 m!21080))

(assert (=> bs!6364 m!21080))

(declare-fun m!21194 () Bool)

(assert (=> bs!6364 m!21194))

(declare-fun m!21196 () Bool)

(assert (=> bs!6364 m!21196))

(assert (=> b!46860 d!5618))

(declare-fun d!5620 () Bool)

(assert (=> d!5620 (= (array_inv!283 (_keys!558 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))) (bvsge (size!760 (_keys!558 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!46833 d!5620))

(declare-fun d!5622 () Bool)

(assert (=> d!5622 (= (array_inv!284 (_values!545 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))) (bvsge (size!761 (_values!545 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!46833 d!5622))

(declare-fun d!5624 () Bool)

(declare-fun res!31707 () Bool)

(declare-fun e!26910 () Bool)

(assert (=> d!5624 (=> (not res!31707) (not e!26910))))

(declare-fun rulesValid!23 (LexerInterface!69 List!786) Bool)

(assert (=> d!5624 (= res!31707 (rulesValid!23 Lexer!67 lt!6327))))

(assert (=> d!5624 (= (rulesInvariant!64 Lexer!67 lt!6327) e!26910)))

(declare-fun b!46938 () Bool)

(declare-datatypes ((List!792 0))(
  ( (Nil!790) (Cons!790 (h!6186 String!1131) (t!16991 List!792)) )
))
(declare-fun noDuplicateTag!23 (LexerInterface!69 List!786 List!792) Bool)

(assert (=> b!46938 (= e!26910 (noDuplicateTag!23 Lexer!67 lt!6327 Nil!790))))

(assert (= (and d!5624 res!31707) b!46938))

(declare-fun m!21198 () Bool)

(assert (=> d!5624 m!21198))

(declare-fun m!21200 () Bool)

(assert (=> b!46938 m!21200))

(assert (=> b!46851 d!5624))

(declare-fun d!5626 () Bool)

(assert (=> d!5626 (= (list!216 (_2!682 lt!6333)) (list!217 (c!16163 (_2!682 lt!6333))))))

(declare-fun bs!6365 () Bool)

(assert (= bs!6365 d!5626))

(declare-fun m!21202 () Bool)

(assert (=> bs!6365 m!21202))

(assert (=> b!46852 d!5626))

(declare-fun d!5628 () Bool)

(assert (=> d!5628 (= (list!216 (_2!682 (_1!685 lt!6323))) (list!217 (c!16163 (_2!682 (_1!685 lt!6323)))))))

(declare-fun bs!6366 () Bool)

(assert (= bs!6366 d!5628))

(declare-fun m!21204 () Bool)

(assert (=> bs!6366 m!21204))

(assert (=> b!46852 d!5628))

(declare-fun d!5630 () Bool)

(declare-fun c!16174 () Bool)

(assert (=> d!5630 (= c!16174 ((_ is Node!154) (c!16163 input!525)))))

(declare-fun e!26911 () Bool)

(assert (=> d!5630 (= (inv!1064 (c!16163 input!525)) e!26911)))

(declare-fun b!46939 () Bool)

(assert (=> b!46939 (= e!26911 (inv!1069 (c!16163 input!525)))))

(declare-fun b!46940 () Bool)

(declare-fun e!26912 () Bool)

(assert (=> b!46940 (= e!26911 e!26912)))

(declare-fun res!31708 () Bool)

(assert (=> b!46940 (= res!31708 (not ((_ is Leaf!354) (c!16163 input!525))))))

(assert (=> b!46940 (=> res!31708 e!26912)))

(declare-fun b!46941 () Bool)

(assert (=> b!46941 (= e!26912 (inv!1070 (c!16163 input!525)))))

(assert (= (and d!5630 c!16174) b!46939))

(assert (= (and d!5630 (not c!16174)) b!46940))

(assert (= (and b!46940 (not res!31708)) b!46941))

(declare-fun m!21206 () Bool)

(assert (=> b!46939 m!21206))

(declare-fun m!21208 () Bool)

(assert (=> b!46941 m!21208))

(assert (=> b!46834 d!5630))

(declare-fun b!46942 () Bool)

(declare-fun e!26913 () Bool)

(declare-fun lt!6349 () tuple2!964)

(assert (=> b!46942 (= e!26913 (= (list!216 (_2!682 lt!6349)) (_2!686 (lexList!20 Lexer!67 lt!6327 (list!216 input!525)))))))

(declare-fun d!5632 () Bool)

(assert (=> d!5632 e!26913))

(declare-fun res!31709 () Bool)

(assert (=> d!5632 (=> (not res!31709) (not e!26913))))

(declare-fun e!26914 () Bool)

(assert (=> d!5632 (= res!31709 e!26914)))

(declare-fun c!16175 () Bool)

(assert (=> d!5632 (= c!16175 (> (size!765 (_1!682 lt!6349)) 0))))

(assert (=> d!5632 (= lt!6349 (lexTailRecV2!17 Lexer!67 lt!6327 input!525 (BalanceConc!309 Empty!154) input!525 (BalanceConc!311 Empty!155)))))

(assert (=> d!5632 (= (lex!50 Lexer!67 lt!6327 input!525) lt!6349)))

(declare-fun b!46943 () Bool)

(assert (=> b!46943 (= e!26914 (= (_2!682 lt!6349) input!525))))

(declare-fun b!46944 () Bool)

(declare-fun res!31710 () Bool)

(assert (=> b!46944 (=> (not res!31710) (not e!26913))))

(assert (=> b!46944 (= res!31710 (= (list!215 (_1!682 lt!6349)) (_1!686 (lexList!20 Lexer!67 lt!6327 (list!216 input!525)))))))

(declare-fun b!46945 () Bool)

(declare-fun e!26915 () Bool)

(assert (=> b!46945 (= e!26914 e!26915)))

(declare-fun res!31711 () Bool)

(assert (=> b!46945 (= res!31711 (< (size!766 (_2!682 lt!6349)) (size!766 input!525)))))

(assert (=> b!46945 (=> (not res!31711) (not e!26915))))

(declare-fun b!46946 () Bool)

(assert (=> b!46946 (= e!26915 (not (isEmpty!158 (_1!682 lt!6349))))))

(assert (= (and d!5632 c!16175) b!46945))

(assert (= (and d!5632 (not c!16175)) b!46943))

(assert (= (and b!46945 res!31711) b!46946))

(assert (= (and d!5632 res!31709) b!46944))

(assert (= (and b!46944 res!31710) b!46942))

(declare-fun m!21210 () Bool)

(assert (=> b!46944 m!21210))

(assert (=> b!46944 m!21018))

(assert (=> b!46944 m!21018))

(declare-fun m!21212 () Bool)

(assert (=> b!46944 m!21212))

(declare-fun m!21214 () Bool)

(assert (=> b!46942 m!21214))

(assert (=> b!46942 m!21018))

(assert (=> b!46942 m!21018))

(assert (=> b!46942 m!21212))

(declare-fun m!21216 () Bool)

(assert (=> d!5632 m!21216))

(declare-fun m!21218 () Bool)

(assert (=> d!5632 m!21218))

(declare-fun m!21220 () Bool)

(assert (=> b!46946 m!21220))

(declare-fun m!21222 () Bool)

(assert (=> b!46945 m!21222))

(declare-fun m!21224 () Bool)

(assert (=> b!46945 m!21224))

(assert (=> b!46854 d!5632))

(declare-fun d!5634 () Bool)

(assert (=> d!5634 (= (list!215 (_1!682 (_1!685 lt!6323))) (list!218 (c!16164 (_1!682 (_1!685 lt!6323)))))))

(declare-fun bs!6367 () Bool)

(assert (= bs!6367 d!5634))

(declare-fun m!21226 () Bool)

(assert (=> bs!6367 m!21226))

(assert (=> b!46854 d!5634))

(declare-fun b!46957 () Bool)

(declare-fun e!26918 () Bool)

(declare-fun lt!6355 () tuple4!88)

(assert (=> b!46957 (= e!26918 (= (totalInput!1546 (_4!44 lt!6355)) input!525))))

(declare-fun d!5636 () Bool)

(assert (=> d!5636 e!26918))

(declare-fun res!31722 () Bool)

(assert (=> d!5636 (=> (not res!31722) (not e!26918))))

(assert (=> d!5636 (= res!31722 (= (list!215 (_1!682 (_1!685 lt!6355))) (list!215 (_1!682 (lex!50 Lexer!67 lt!6327 input!525)))))))

(declare-fun lt!6354 () tuple4!88)

(assert (=> d!5636 (= lt!6355 (tuple4!89 (_1!685 lt!6354) (_2!685 lt!6354) (_3!201 lt!6354) (_4!44 lt!6354)))))

(declare-fun lexTailRecV3Mem!17 (LexerInterface!69 List!786 BalanceConc!308 BalanceConc!308 BalanceConc!308 BalanceConc!310 CacheUp!178 CacheDown!178 CacheFurthestNullable!126) tuple4!88)

(assert (=> d!5636 (= lt!6354 (lexTailRecV3Mem!17 Lexer!67 lt!6327 input!525 (BalanceConc!309 Empty!154) input!525 (BalanceConc!311 Empty!155) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!5636 (not (isEmpty!156 lt!6327))))

(assert (=> d!5636 (= (lexMem!32 Lexer!67 lt!6327 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!6355)))

(declare-fun b!46958 () Bool)

(declare-fun res!31724 () Bool)

(assert (=> b!46958 (=> (not res!31724) (not e!26918))))

(assert (=> b!46958 (= res!31724 (valid!238 (_3!201 lt!6355)))))

(declare-fun b!46959 () Bool)

(declare-fun res!31725 () Bool)

(assert (=> b!46959 (=> (not res!31725) (not e!26918))))

(assert (=> b!46959 (= res!31725 (= (list!216 (_2!682 (_1!685 lt!6355))) (list!216 (_2!682 (lex!50 Lexer!67 lt!6327 input!525)))))))

(declare-fun b!46960 () Bool)

(declare-fun res!31723 () Bool)

(assert (=> b!46960 (=> (not res!31723) (not e!26918))))

(assert (=> b!46960 (= res!31723 (valid!239 (_2!685 lt!6355)))))

(declare-fun b!46961 () Bool)

(declare-fun res!31726 () Bool)

(assert (=> b!46961 (=> (not res!31726) (not e!26918))))

(assert (=> b!46961 (= res!31726 (valid!237 (_4!44 lt!6355)))))

(assert (= (and d!5636 res!31722) b!46959))

(assert (= (and b!46959 res!31725) b!46961))

(assert (= (and b!46961 res!31726) b!46960))

(assert (= (and b!46960 res!31723) b!46958))

(assert (= (and b!46958 res!31724) b!46957))

(declare-fun m!21228 () Bool)

(assert (=> b!46961 m!21228))

(declare-fun m!21230 () Bool)

(assert (=> d!5636 m!21230))

(declare-fun m!21232 () Bool)

(assert (=> d!5636 m!21232))

(declare-fun m!21234 () Bool)

(assert (=> d!5636 m!21234))

(assert (=> d!5636 m!21088))

(assert (=> d!5636 m!21060))

(declare-fun m!21236 () Bool)

(assert (=> b!46959 m!21236))

(assert (=> b!46959 m!21088))

(declare-fun m!21238 () Bool)

(assert (=> b!46959 m!21238))

(declare-fun m!21240 () Bool)

(assert (=> b!46960 m!21240))

(declare-fun m!21242 () Bool)

(assert (=> b!46958 m!21242))

(assert (=> b!46854 d!5636))

(declare-fun d!5638 () Bool)

(assert (=> d!5638 (valid!239 (_2!685 lt!6323))))

(declare-fun Unit!362 () Unit!360)

(assert (=> d!5638 (= (lemmaInvariant!68 (_2!685 lt!6323)) Unit!362)))

(declare-fun bs!6368 () Bool)

(assert (= bs!6368 d!5638))

(assert (=> bs!6368 m!21090))

(assert (=> b!46854 d!5638))

(declare-fun d!5640 () Bool)

(assert (=> d!5640 (valid!238 (_3!201 lt!6323))))

(declare-fun Unit!363 () Unit!360)

(assert (=> d!5640 (= (lemmaInvariant!67 (_3!201 lt!6323)) Unit!363)))

(declare-fun bs!6369 () Bool)

(assert (= bs!6369 d!5640))

(assert (=> bs!6369 m!21104))

(assert (=> b!46854 d!5640))

(declare-fun d!5642 () Bool)

(assert (=> d!5642 (= (list!215 (_1!682 lt!6333)) (list!218 (c!16164 (_1!682 lt!6333))))))

(declare-fun bs!6370 () Bool)

(assert (= bs!6370 d!5642))

(declare-fun m!21244 () Bool)

(assert (=> bs!6370 m!21244))

(assert (=> b!46854 d!5642))

(declare-fun d!5644 () Bool)

(declare-fun res!31731 () Bool)

(declare-fun e!26923 () Bool)

(assert (=> d!5644 (=> res!31731 e!26923)))

(assert (=> d!5644 (= res!31731 ((_ is Nil!788) lt!6328))))

(assert (=> d!5644 (= (forall!98 lt!6328 lambda!883) e!26923)))

(declare-fun b!46966 () Bool)

(declare-fun e!26924 () Bool)

(assert (=> b!46966 (= e!26923 e!26924)))

(declare-fun res!31732 () Bool)

(assert (=> b!46966 (=> (not res!31732) (not e!26924))))

(declare-fun dynLambda!134 (Int Token!118) Bool)

(assert (=> b!46966 (= res!31732 (dynLambda!134 lambda!883 (h!6184 lt!6328)))))

(declare-fun b!46967 () Bool)

(assert (=> b!46967 (= e!26924 (forall!98 (t!16987 lt!6328) lambda!883))))

(assert (= (and d!5644 (not res!31731)) b!46966))

(assert (= (and b!46966 res!31732) b!46967))

(declare-fun b_lambda!273 () Bool)

(assert (=> (not b_lambda!273) (not b!46966)))

(declare-fun m!21246 () Bool)

(assert (=> b!46966 m!21246))

(declare-fun m!21248 () Bool)

(assert (=> b!46967 m!21248))

(assert (=> b!46835 d!5644))

(declare-fun b!46978 () Bool)

(declare-fun e!26933 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!28 (LexerInterface!69 List!786 List!790) Bool)

(declare-fun lex!51 (LexerInterface!69 List!786 BalanceConc!308) tuple2!964)

(assert (=> b!46978 (= e!26933 (rulesProduceEachTokenIndividuallyList!28 Lexer!67 lt!6327 (list!215 (_1!682 (lex!51 Lexer!67 lt!6327 (seqFromList!42 lt!6324))))))))

(declare-fun d!5646 () Bool)

(declare-fun e!26936 () Bool)

(assert (=> d!5646 e!26936))

(declare-fun res!31747 () Bool)

(assert (=> d!5646 (=> (not res!31747) (not e!26936))))

(declare-fun lt!6367 () Bool)

(assert (=> d!5646 (= res!31747 lt!6367)))

(declare-fun e!26934 () Bool)

(assert (=> d!5646 (= lt!6367 e!26934)))

(declare-fun res!31745 () Bool)

(assert (=> d!5646 (=> res!31745 e!26934)))

(declare-fun e!26935 () Bool)

(assert (=> d!5646 (= res!31745 (not e!26935))))

(declare-fun res!31744 () Bool)

(assert (=> d!5646 (=> (not res!31744) (not e!26935))))

(assert (=> d!5646 (= res!31744 (not (isEmpty!156 lt!6327)))))

(assert (=> d!5646 (= (lexThenRulesProduceEachTokenIndividually!22 Lexer!67 lt!6327 lt!6324) lt!6367)))

(declare-fun b!46979 () Bool)

(declare-fun lt!6368 () tuple2!964)

(assert (=> b!46979 (= e!26934 (rulesProduceEachTokenIndividuallyList!27 Lexer!67 lt!6327 (list!215 (_1!682 lt!6368))))))

(declare-fun lt!6366 () Unit!360)

(declare-fun lt!6370 () Unit!360)

(assert (=> b!46979 (= lt!6366 lt!6370)))

(declare-fun lt!6369 () List!790)

(declare-fun rulesProduceEachTokenIndividually!11 (LexerInterface!69 List!786 BalanceConc!310) Bool)

(declare-fun seqFromList!43 (List!790) BalanceConc!310)

(assert (=> b!46979 (rulesProduceEachTokenIndividually!11 Lexer!67 lt!6327 (seqFromList!43 lt!6369))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!11 (LexerInterface!69 List!786 List!785 List!790) Unit!360)

(assert (=> b!46979 (= lt!6370 (lemmaLexThenRulesProducesEachTokenIndividually!11 Lexer!67 lt!6327 lt!6324 lt!6369))))

(assert (=> b!46979 (= lt!6369 (list!215 (_1!682 lt!6368)))))

(assert (=> b!46979 (= lt!6368 (lex!50 Lexer!67 lt!6327 (seqFromList!42 lt!6324)))))

(declare-fun b!46980 () Bool)

(assert (=> b!46980 (= e!26935 (rulesInvariant!64 Lexer!67 lt!6327))))

(declare-fun b!46981 () Bool)

(assert (=> b!46981 (= e!26936 e!26933)))

(declare-fun res!31746 () Bool)

(assert (=> b!46981 (=> res!31746 e!26933)))

(assert (=> b!46981 (= res!31746 (isEmpty!156 lt!6327))))

(declare-fun b!46982 () Bool)

(declare-fun res!31743 () Bool)

(assert (=> b!46982 (=> res!31743 e!26933)))

(declare-fun rulesInvariant!65 (LexerInterface!69 List!786) Bool)

(assert (=> b!46982 (= res!31743 (not (rulesInvariant!65 Lexer!67 lt!6327)))))

(assert (= (and d!5646 res!31744) b!46980))

(assert (= (and d!5646 (not res!31745)) b!46979))

(assert (= (and d!5646 res!31747) b!46981))

(assert (= (and b!46981 (not res!31746)) b!46982))

(assert (= (and b!46982 (not res!31743)) b!46978))

(assert (=> b!46980 m!21036))

(assert (=> b!46978 m!21016))

(assert (=> b!46978 m!21016))

(declare-fun m!21250 () Bool)

(assert (=> b!46978 m!21250))

(declare-fun m!21252 () Bool)

(assert (=> b!46978 m!21252))

(assert (=> b!46978 m!21252))

(declare-fun m!21254 () Bool)

(assert (=> b!46978 m!21254))

(assert (=> b!46981 m!21060))

(declare-fun m!21256 () Bool)

(assert (=> b!46982 m!21256))

(declare-fun m!21258 () Bool)

(assert (=> b!46979 m!21258))

(declare-fun m!21260 () Bool)

(assert (=> b!46979 m!21260))

(assert (=> b!46979 m!21016))

(declare-fun m!21262 () Bool)

(assert (=> b!46979 m!21262))

(assert (=> b!46979 m!21016))

(assert (=> b!46979 m!21258))

(declare-fun m!21264 () Bool)

(assert (=> b!46979 m!21264))

(declare-fun m!21266 () Bool)

(assert (=> b!46979 m!21266))

(declare-fun m!21268 () Bool)

(assert (=> b!46979 m!21268))

(assert (=> b!46979 m!21266))

(assert (=> d!5646 m!21060))

(assert (=> b!46855 d!5646))

(declare-fun setRes!1250 () Bool)

(declare-fun e!26944 () Bool)

(declare-fun tp!31780 () Bool)

(declare-fun b!46987 () Bool)

(declare-fun inv!1071 (Context!202) Bool)

(assert (=> b!46987 (= e!26944 (and (inv!1071 (_1!680 (_1!681 (h!6183 mapDefault!1056)))) setRes!1250 tp!31780))))

(declare-fun condSetEmpty!1250 () Bool)

(assert (=> b!46987 (= condSetEmpty!1250 (= (_2!681 (h!6183 mapDefault!1056)) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1250 () Bool)

(assert (=> setIsEmpty!1250 setRes!1250))

(declare-fun setNonEmpty!1250 () Bool)

(declare-fun tp!31779 () Bool)

(declare-fun setElem!1250 () Context!202)

(assert (=> setNonEmpty!1250 (= setRes!1250 (and tp!31779 (inv!1071 setElem!1250)))))

(declare-fun setRest!1250 () (InoxSet Context!202))

(assert (=> setNonEmpty!1250 (= (_2!681 (h!6183 mapDefault!1056)) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1250 true) setRest!1250))))

(assert (=> b!46857 (= tp!31768 e!26944)))

(assert (= (and b!46987 condSetEmpty!1250) setIsEmpty!1250))

(assert (= (and b!46987 (not condSetEmpty!1250)) setNonEmpty!1250))

(assert (= (and b!46857 ((_ is Cons!787) mapDefault!1056)) b!46987))

(declare-fun m!21270 () Bool)

(assert (=> b!46987 m!21270))

(declare-fun m!21272 () Bool)

(assert (=> setNonEmpty!1250 m!21272))

(declare-fun setRes!1253 () Bool)

(declare-fun e!26953 () Bool)

(declare-fun tp!31786 () Bool)

(declare-fun b!46992 () Bool)

(assert (=> b!46992 (= e!26953 (and (inv!1071 (_2!683 (_1!684 (h!6185 mapDefault!1054)))) setRes!1253 tp!31786))))

(declare-fun condSetEmpty!1253 () Bool)

(assert (=> b!46992 (= condSetEmpty!1253 (= (_2!684 (h!6185 mapDefault!1054)) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1253 () Bool)

(assert (=> setIsEmpty!1253 setRes!1253))

(declare-fun setNonEmpty!1253 () Bool)

(declare-fun tp!31785 () Bool)

(declare-fun setElem!1253 () Context!202)

(assert (=> setNonEmpty!1253 (= setRes!1253 (and tp!31785 (inv!1071 setElem!1253)))))

(declare-fun setRest!1253 () (InoxSet Context!202))

(assert (=> setNonEmpty!1253 (= (_2!684 (h!6185 mapDefault!1054)) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1253 true) setRest!1253))))

(assert (=> b!46828 (= tp!31765 e!26953)))

(assert (= (and b!46992 condSetEmpty!1253) setIsEmpty!1253))

(assert (= (and b!46992 (not condSetEmpty!1253)) setNonEmpty!1253))

(assert (= (and b!46828 ((_ is Cons!789) mapDefault!1054)) b!46992))

(declare-fun m!21274 () Bool)

(assert (=> b!46992 m!21274))

(declare-fun m!21276 () Bool)

(assert (=> setNonEmpty!1253 m!21276))

(declare-fun tp!31792 () Bool)

(declare-fun tp!31791 () Bool)

(declare-fun e!26959 () Bool)

(declare-fun b!46999 () Bool)

(assert (=> b!46999 (= e!26959 (and (inv!1064 (left!611 (c!16163 (totalInput!1546 cacheFurthestNullable!45)))) tp!31791 (inv!1064 (right!941 (c!16163 (totalInput!1546 cacheFurthestNullable!45)))) tp!31792))))

(declare-fun b!47000 () Bool)

(declare-fun inv!1072 (IArray!309) Bool)

(assert (=> b!47000 (= e!26959 (inv!1072 (xs!2733 (c!16163 (totalInput!1546 cacheFurthestNullable!45)))))))

(assert (=> b!46867 (= tp!31769 (and (inv!1064 (c!16163 (totalInput!1546 cacheFurthestNullable!45))) e!26959))))

(assert (= (and b!46867 ((_ is Node!154) (c!16163 (totalInput!1546 cacheFurthestNullable!45)))) b!46999))

(assert (= (and b!46867 ((_ is Leaf!354) (c!16163 (totalInput!1546 cacheFurthestNullable!45)))) b!47000))

(declare-fun m!21278 () Bool)

(assert (=> b!46999 m!21278))

(declare-fun m!21280 () Bool)

(assert (=> b!46999 m!21280))

(declare-fun m!21282 () Bool)

(assert (=> b!47000 m!21282))

(assert (=> b!46867 m!21028))

(declare-fun setNonEmpty!1258 () Bool)

(declare-fun setRes!1259 () Bool)

(declare-fun tp!31805 () Bool)

(declare-fun setElem!1259 () Context!202)

(assert (=> setNonEmpty!1258 (= setRes!1259 (and tp!31805 (inv!1071 setElem!1259)))))

(declare-fun mapValue!1059 () List!789)

(declare-fun setRest!1258 () (InoxSet Context!202))

(assert (=> setNonEmpty!1258 (= (_2!681 (h!6183 mapValue!1059)) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1259 true) setRest!1258))))

(declare-fun setIsEmpty!1258 () Bool)

(assert (=> setIsEmpty!1258 setRes!1259))

(declare-fun setIsEmpty!1259 () Bool)

(declare-fun setRes!1258 () Bool)

(assert (=> setIsEmpty!1259 setRes!1258))

(declare-fun tp!31806 () Bool)

(declare-fun e!26975 () Bool)

(declare-fun b!47007 () Bool)

(assert (=> b!47007 (= e!26975 (and (inv!1071 (_1!680 (_1!681 (h!6183 mapValue!1059)))) setRes!1259 tp!31806))))

(declare-fun condSetEmpty!1259 () Bool)

(assert (=> b!47007 (= condSetEmpty!1259 (= (_2!681 (h!6183 mapValue!1059)) ((as const (Array Context!202 Bool)) false)))))

(declare-fun mapNonEmpty!1059 () Bool)

(declare-fun mapRes!1059 () Bool)

(declare-fun tp!31804 () Bool)

(assert (=> mapNonEmpty!1059 (= mapRes!1059 (and tp!31804 e!26975))))

(declare-fun mapKey!1059 () (_ BitVec 32))

(declare-fun mapRest!1059 () (Array (_ BitVec 32) List!789))

(assert (=> mapNonEmpty!1059 (= mapRest!1055 (store mapRest!1059 mapKey!1059 mapValue!1059))))

(declare-fun b!47008 () Bool)

(declare-fun mapDefault!1059 () List!789)

(declare-fun e!26974 () Bool)

(declare-fun tp!31807 () Bool)

(assert (=> b!47008 (= e!26974 (and (inv!1071 (_1!680 (_1!681 (h!6183 mapDefault!1059)))) setRes!1258 tp!31807))))

(declare-fun condSetEmpty!1258 () Bool)

(assert (=> b!47008 (= condSetEmpty!1258 (= (_2!681 (h!6183 mapDefault!1059)) ((as const (Array Context!202 Bool)) false)))))

(declare-fun mapIsEmpty!1059 () Bool)

(assert (=> mapIsEmpty!1059 mapRes!1059))

(declare-fun condMapEmpty!1059 () Bool)

(assert (=> mapNonEmpty!1056 (= condMapEmpty!1059 (= mapRest!1055 ((as const (Array (_ BitVec 32) List!789)) mapDefault!1059)))))

(assert (=> mapNonEmpty!1056 (= tp!31754 (and e!26974 mapRes!1059))))

(declare-fun setNonEmpty!1259 () Bool)

(declare-fun tp!31803 () Bool)

(declare-fun setElem!1258 () Context!202)

(assert (=> setNonEmpty!1259 (= setRes!1258 (and tp!31803 (inv!1071 setElem!1258)))))

(declare-fun setRest!1259 () (InoxSet Context!202))

(assert (=> setNonEmpty!1259 (= (_2!681 (h!6183 mapDefault!1059)) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1258 true) setRest!1259))))

(assert (= (and mapNonEmpty!1056 condMapEmpty!1059) mapIsEmpty!1059))

(assert (= (and mapNonEmpty!1056 (not condMapEmpty!1059)) mapNonEmpty!1059))

(assert (= (and b!47007 condSetEmpty!1259) setIsEmpty!1258))

(assert (= (and b!47007 (not condSetEmpty!1259)) setNonEmpty!1258))

(assert (= (and mapNonEmpty!1059 ((_ is Cons!787) mapValue!1059)) b!47007))

(assert (= (and b!47008 condSetEmpty!1258) setIsEmpty!1259))

(assert (= (and b!47008 (not condSetEmpty!1258)) setNonEmpty!1259))

(assert (= (and mapNonEmpty!1056 ((_ is Cons!787) mapDefault!1059)) b!47008))

(declare-fun m!21284 () Bool)

(assert (=> setNonEmpty!1259 m!21284))

(declare-fun m!21286 () Bool)

(assert (=> mapNonEmpty!1059 m!21286))

(declare-fun m!21288 () Bool)

(assert (=> setNonEmpty!1258 m!21288))

(declare-fun m!21290 () Bool)

(assert (=> b!47007 m!21290))

(declare-fun m!21292 () Bool)

(assert (=> b!47008 m!21292))

(declare-fun e!26980 () Bool)

(declare-fun b!47009 () Bool)

(declare-fun tp!31809 () Bool)

(declare-fun setRes!1260 () Bool)

(assert (=> b!47009 (= e!26980 (and (inv!1071 (_1!680 (_1!681 (h!6183 mapValue!1056)))) setRes!1260 tp!31809))))

(declare-fun condSetEmpty!1260 () Bool)

(assert (=> b!47009 (= condSetEmpty!1260 (= (_2!681 (h!6183 mapValue!1056)) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1260 () Bool)

(assert (=> setIsEmpty!1260 setRes!1260))

(declare-fun setNonEmpty!1260 () Bool)

(declare-fun tp!31808 () Bool)

(declare-fun setElem!1260 () Context!202)

(assert (=> setNonEmpty!1260 (= setRes!1260 (and tp!31808 (inv!1071 setElem!1260)))))

(declare-fun setRest!1260 () (InoxSet Context!202))

(assert (=> setNonEmpty!1260 (= (_2!681 (h!6183 mapValue!1056)) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1260 true) setRest!1260))))

(assert (=> mapNonEmpty!1056 (= tp!31766 e!26980)))

(assert (= (and b!47009 condSetEmpty!1260) setIsEmpty!1260))

(assert (= (and b!47009 (not condSetEmpty!1260)) setNonEmpty!1260))

(assert (= (and mapNonEmpty!1056 ((_ is Cons!787) mapValue!1056)) b!47009))

(declare-fun m!21294 () Bool)

(assert (=> b!47009 m!21294))

(declare-fun m!21296 () Bool)

(assert (=> setNonEmpty!1260 m!21296))

(declare-fun setNonEmpty!1265 () Bool)

(declare-fun setRes!1265 () Bool)

(declare-fun tp!31821 () Bool)

(declare-fun setElem!1265 () Context!202)

(assert (=> setNonEmpty!1265 (= setRes!1265 (and tp!31821 (inv!1071 setElem!1265)))))

(declare-fun mapValue!1062 () List!791)

(declare-fun setRest!1266 () (InoxSet Context!202))

(assert (=> setNonEmpty!1265 (= (_2!684 (h!6185 mapValue!1062)) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1265 true) setRest!1266))))

(declare-fun setIsEmpty!1265 () Bool)

(declare-fun setRes!1266 () Bool)

(assert (=> setIsEmpty!1265 setRes!1266))

(declare-fun mapIsEmpty!1062 () Bool)

(declare-fun mapRes!1062 () Bool)

(assert (=> mapIsEmpty!1062 mapRes!1062))

(declare-fun condMapEmpty!1062 () Bool)

(declare-fun mapDefault!1062 () List!791)

(assert (=> mapNonEmpty!1054 (= condMapEmpty!1062 (= mapRest!1054 ((as const (Array (_ BitVec 32) List!791)) mapDefault!1062)))))

(declare-fun e!26998 () Bool)

(assert (=> mapNonEmpty!1054 (= tp!31753 (and e!26998 mapRes!1062))))

(declare-fun e!26996 () Bool)

(declare-fun tp!31820 () Bool)

(declare-fun b!47016 () Bool)

(assert (=> b!47016 (= e!26996 (and (inv!1071 (_2!683 (_1!684 (h!6185 mapValue!1062)))) setRes!1265 tp!31820))))

(declare-fun condSetEmpty!1265 () Bool)

(assert (=> b!47016 (= condSetEmpty!1265 (= (_2!684 (h!6185 mapValue!1062)) ((as const (Array Context!202 Bool)) false)))))

(declare-fun mapNonEmpty!1062 () Bool)

(declare-fun tp!31823 () Bool)

(assert (=> mapNonEmpty!1062 (= mapRes!1062 (and tp!31823 e!26996))))

(declare-fun mapKey!1062 () (_ BitVec 32))

(declare-fun mapRest!1062 () (Array (_ BitVec 32) List!791))

(assert (=> mapNonEmpty!1062 (= mapRest!1054 (store mapRest!1062 mapKey!1062 mapValue!1062))))

(declare-fun setIsEmpty!1266 () Bool)

(assert (=> setIsEmpty!1266 setRes!1265))

(declare-fun setNonEmpty!1266 () Bool)

(declare-fun tp!31824 () Bool)

(declare-fun setElem!1266 () Context!202)

(assert (=> setNonEmpty!1266 (= setRes!1266 (and tp!31824 (inv!1071 setElem!1266)))))

(declare-fun setRest!1265 () (InoxSet Context!202))

(assert (=> setNonEmpty!1266 (= (_2!684 (h!6185 mapDefault!1062)) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1266 true) setRest!1265))))

(declare-fun b!47017 () Bool)

(declare-fun tp!31822 () Bool)

(assert (=> b!47017 (= e!26998 (and (inv!1071 (_2!683 (_1!684 (h!6185 mapDefault!1062)))) setRes!1266 tp!31822))))

(declare-fun condSetEmpty!1266 () Bool)

(assert (=> b!47017 (= condSetEmpty!1266 (= (_2!684 (h!6185 mapDefault!1062)) ((as const (Array Context!202 Bool)) false)))))

(assert (= (and mapNonEmpty!1054 condMapEmpty!1062) mapIsEmpty!1062))

(assert (= (and mapNonEmpty!1054 (not condMapEmpty!1062)) mapNonEmpty!1062))

(assert (= (and b!47016 condSetEmpty!1265) setIsEmpty!1266))

(assert (= (and b!47016 (not condSetEmpty!1265)) setNonEmpty!1265))

(assert (= (and mapNonEmpty!1062 ((_ is Cons!789) mapValue!1062)) b!47016))

(assert (= (and b!47017 condSetEmpty!1266) setIsEmpty!1265))

(assert (= (and b!47017 (not condSetEmpty!1266)) setNonEmpty!1266))

(assert (= (and mapNonEmpty!1054 ((_ is Cons!789) mapDefault!1062)) b!47017))

(declare-fun m!21298 () Bool)

(assert (=> setNonEmpty!1266 m!21298))

(declare-fun m!21300 () Bool)

(assert (=> b!47016 m!21300))

(declare-fun m!21302 () Bool)

(assert (=> b!47017 m!21302))

(declare-fun m!21304 () Bool)

(assert (=> setNonEmpty!1265 m!21304))

(declare-fun m!21306 () Bool)

(assert (=> mapNonEmpty!1062 m!21306))

(declare-fun e!27001 () Bool)

(declare-fun setRes!1267 () Bool)

(declare-fun b!47018 () Bool)

(declare-fun tp!31826 () Bool)

(assert (=> b!47018 (= e!27001 (and (inv!1071 (_2!683 (_1!684 (h!6185 mapValue!1055)))) setRes!1267 tp!31826))))

(declare-fun condSetEmpty!1267 () Bool)

(assert (=> b!47018 (= condSetEmpty!1267 (= (_2!684 (h!6185 mapValue!1055)) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1267 () Bool)

(assert (=> setIsEmpty!1267 setRes!1267))

(declare-fun setNonEmpty!1267 () Bool)

(declare-fun tp!31825 () Bool)

(declare-fun setElem!1267 () Context!202)

(assert (=> setNonEmpty!1267 (= setRes!1267 (and tp!31825 (inv!1071 setElem!1267)))))

(declare-fun setRest!1267 () (InoxSet Context!202))

(assert (=> setNonEmpty!1267 (= (_2!684 (h!6185 mapValue!1055)) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1267 true) setRest!1267))))

(assert (=> mapNonEmpty!1054 (= tp!31764 e!27001)))

(assert (= (and b!47018 condSetEmpty!1267) setIsEmpty!1267))

(assert (= (and b!47018 (not condSetEmpty!1267)) setNonEmpty!1267))

(assert (= (and mapNonEmpty!1054 ((_ is Cons!789) mapValue!1055)) b!47018))

(declare-fun m!21308 () Bool)

(assert (=> b!47018 m!21308))

(declare-fun m!21310 () Bool)

(assert (=> setNonEmpty!1267 m!21310))

(declare-fun e!27004 () Bool)

(declare-fun b!47019 () Bool)

(declare-fun tp!31828 () Bool)

(declare-fun setRes!1268 () Bool)

(assert (=> b!47019 (= e!27004 (and (inv!1071 (_1!680 (_1!681 (h!6183 (zeroValue!524 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320)))))))))) setRes!1268 tp!31828))))

(declare-fun condSetEmpty!1268 () Bool)

(assert (=> b!47019 (= condSetEmpty!1268 (= (_2!681 (h!6183 (zeroValue!524 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320)))))))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1268 () Bool)

(assert (=> setIsEmpty!1268 setRes!1268))

(declare-fun setNonEmpty!1268 () Bool)

(declare-fun tp!31827 () Bool)

(declare-fun setElem!1268 () Context!202)

(assert (=> setNonEmpty!1268 (= setRes!1268 (and tp!31827 (inv!1071 setElem!1268)))))

(declare-fun setRest!1268 () (InoxSet Context!202))

(assert (=> setNonEmpty!1268 (= (_2!681 (h!6183 (zeroValue!524 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1268 true) setRest!1268))))

(assert (=> b!46836 (= tp!31752 e!27004)))

(assert (= (and b!47019 condSetEmpty!1268) setIsEmpty!1268))

(assert (= (and b!47019 (not condSetEmpty!1268)) setNonEmpty!1268))

(assert (= (and b!46836 ((_ is Cons!787) (zeroValue!524 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320)))))))) b!47019))

(declare-fun m!21312 () Bool)

(assert (=> b!47019 m!21312))

(declare-fun m!21314 () Bool)

(assert (=> setNonEmpty!1268 m!21314))

(declare-fun setRes!1269 () Bool)

(declare-fun tp!31830 () Bool)

(declare-fun b!47020 () Bool)

(declare-fun e!27007 () Bool)

(assert (=> b!47020 (= e!27007 (and (inv!1071 (_1!680 (_1!681 (h!6183 (minValue!524 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320)))))))))) setRes!1269 tp!31830))))

(declare-fun condSetEmpty!1269 () Bool)

(assert (=> b!47020 (= condSetEmpty!1269 (= (_2!681 (h!6183 (minValue!524 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320)))))))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1269 () Bool)

(assert (=> setIsEmpty!1269 setRes!1269))

(declare-fun setNonEmpty!1269 () Bool)

(declare-fun tp!31829 () Bool)

(declare-fun setElem!1269 () Context!202)

(assert (=> setNonEmpty!1269 (= setRes!1269 (and tp!31829 (inv!1071 setElem!1269)))))

(declare-fun setRest!1269 () (InoxSet Context!202))

(assert (=> setNonEmpty!1269 (= (_2!681 (h!6183 (minValue!524 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1269 true) setRest!1269))))

(assert (=> b!46836 (= tp!31763 e!27007)))

(assert (= (and b!47020 condSetEmpty!1269) setIsEmpty!1269))

(assert (= (and b!47020 (not condSetEmpty!1269)) setNonEmpty!1269))

(assert (= (and b!46836 ((_ is Cons!787) (minValue!524 (v!12515 (underlying!731 (v!12516 (underlying!732 (cache!749 cacheUp!320)))))))) b!47020))

(declare-fun m!21316 () Bool)

(assert (=> b!47020 m!21316))

(declare-fun m!21318 () Bool)

(assert (=> setNonEmpty!1269 m!21318))

(declare-fun b!47023 () Bool)

(declare-fun e!27011 () Bool)

(assert (=> b!47023 (= e!27011 true)))

(declare-fun b!47022 () Bool)

(declare-fun e!27010 () Bool)

(assert (=> b!47022 (= e!27010 e!27011)))

(declare-fun b!47021 () Bool)

(declare-fun e!27009 () Bool)

(assert (=> b!47021 (= e!27009 e!27010)))

(assert (=> b!46877 e!27009))

(assert (= b!47022 b!47023))

(assert (= b!47021 b!47022))

(assert (= (and b!46877 ((_ is Cons!784) (t!16983 lt!6327))) b!47021))

(assert (=> b!47023 (< (dynLambda!131 order!211 (toValue!656 (transformation!177 (h!6180 (t!16983 lt!6327))))) (dynLambda!132 order!213 lambda!883))))

(assert (=> b!47023 (< (dynLambda!133 order!215 (toChars!515 (transformation!177 (h!6180 (t!16983 lt!6327))))) (dynLambda!132 order!213 lambda!883))))

(declare-fun b!47028 () Bool)

(declare-fun e!27017 () Bool)

(declare-fun setRes!1272 () Bool)

(declare-fun tp!31835 () Bool)

(assert (=> b!47028 (= e!27017 (and setRes!1272 tp!31835))))

(declare-fun condSetEmpty!1272 () Bool)

(assert (=> b!47028 (= condSetEmpty!1272 (= (_1!678 (_1!679 (h!6182 mapDefault!1055))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1272 () Bool)

(assert (=> setIsEmpty!1272 setRes!1272))

(declare-fun setNonEmpty!1272 () Bool)

(declare-fun tp!31836 () Bool)

(declare-fun setElem!1272 () Context!202)

(assert (=> setNonEmpty!1272 (= setRes!1272 (and tp!31836 (inv!1071 setElem!1272)))))

(declare-fun setRest!1272 () (InoxSet Context!202))

(assert (=> setNonEmpty!1272 (= (_1!678 (_1!679 (h!6182 mapDefault!1055))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1272 true) setRest!1272))))

(assert (=> b!46850 (= tp!31760 e!27017)))

(assert (= (and b!47028 condSetEmpty!1272) setIsEmpty!1272))

(assert (= (and b!47028 (not condSetEmpty!1272)) setNonEmpty!1272))

(assert (= (and b!46850 ((_ is Cons!786) mapDefault!1055)) b!47028))

(declare-fun m!21320 () Bool)

(assert (=> setNonEmpty!1272 m!21320))

(declare-fun b!47029 () Bool)

(declare-fun e!27019 () Bool)

(declare-fun setRes!1273 () Bool)

(declare-fun tp!31837 () Bool)

(assert (=> b!47029 (= e!27019 (and setRes!1273 tp!31837))))

(declare-fun condSetEmpty!1273 () Bool)

(assert (=> b!47029 (= condSetEmpty!1273 (= (_1!678 (_1!679 (h!6182 (zeroValue!523 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1273 () Bool)

(assert (=> setIsEmpty!1273 setRes!1273))

(declare-fun setNonEmpty!1273 () Bool)

(declare-fun tp!31838 () Bool)

(declare-fun setElem!1273 () Context!202)

(assert (=> setNonEmpty!1273 (= setRes!1273 (and tp!31838 (inv!1071 setElem!1273)))))

(declare-fun setRest!1273 () (InoxSet Context!202))

(assert (=> setNonEmpty!1273 (= (_1!678 (_1!679 (h!6182 (zeroValue!523 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1273 true) setRest!1273))))

(assert (=> b!46833 (= tp!31761 e!27019)))

(assert (= (and b!47029 condSetEmpty!1273) setIsEmpty!1273))

(assert (= (and b!47029 (not condSetEmpty!1273)) setNonEmpty!1273))

(assert (= (and b!46833 ((_ is Cons!786) (zeroValue!523 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45)))))))) b!47029))

(declare-fun m!21322 () Bool)

(assert (=> setNonEmpty!1273 m!21322))

(declare-fun b!47030 () Bool)

(declare-fun e!27021 () Bool)

(declare-fun setRes!1274 () Bool)

(declare-fun tp!31839 () Bool)

(assert (=> b!47030 (= e!27021 (and setRes!1274 tp!31839))))

(declare-fun condSetEmpty!1274 () Bool)

(assert (=> b!47030 (= condSetEmpty!1274 (= (_1!678 (_1!679 (h!6182 (minValue!523 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1274 () Bool)

(assert (=> setIsEmpty!1274 setRes!1274))

(declare-fun setNonEmpty!1274 () Bool)

(declare-fun tp!31840 () Bool)

(declare-fun setElem!1274 () Context!202)

(assert (=> setNonEmpty!1274 (= setRes!1274 (and tp!31840 (inv!1071 setElem!1274)))))

(declare-fun setRest!1274 () (InoxSet Context!202))

(assert (=> setNonEmpty!1274 (= (_1!678 (_1!679 (h!6182 (minValue!523 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1274 true) setRest!1274))))

(assert (=> b!46833 (= tp!31762 e!27021)))

(assert (= (and b!47030 condSetEmpty!1274) setIsEmpty!1274))

(assert (= (and b!47030 (not condSetEmpty!1274)) setNonEmpty!1274))

(assert (= (and b!46833 ((_ is Cons!786) (minValue!523 (v!12513 (underlying!729 (v!12514 (underlying!730 (cache!748 cacheFurthestNullable!45)))))))) b!47030))

(declare-fun m!21324 () Bool)

(assert (=> setNonEmpty!1274 m!21324))

(declare-fun tp!31842 () Bool)

(declare-fun setRes!1275 () Bool)

(declare-fun e!27023 () Bool)

(declare-fun b!47031 () Bool)

(assert (=> b!47031 (= e!27023 (and (inv!1071 (_2!683 (_1!684 (h!6185 (zeroValue!525 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333)))))))))) setRes!1275 tp!31842))))

(declare-fun condSetEmpty!1275 () Bool)

(assert (=> b!47031 (= condSetEmpty!1275 (= (_2!684 (h!6185 (zeroValue!525 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333)))))))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1275 () Bool)

(assert (=> setIsEmpty!1275 setRes!1275))

(declare-fun setNonEmpty!1275 () Bool)

(declare-fun tp!31841 () Bool)

(declare-fun setElem!1275 () Context!202)

(assert (=> setNonEmpty!1275 (= setRes!1275 (and tp!31841 (inv!1071 setElem!1275)))))

(declare-fun setRest!1275 () (InoxSet Context!202))

(assert (=> setNonEmpty!1275 (= (_2!684 (h!6185 (zeroValue!525 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1275 true) setRest!1275))))

(assert (=> b!46842 (= tp!31756 e!27023)))

(assert (= (and b!47031 condSetEmpty!1275) setIsEmpty!1275))

(assert (= (and b!47031 (not condSetEmpty!1275)) setNonEmpty!1275))

(assert (= (and b!46842 ((_ is Cons!789) (zeroValue!525 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333)))))))) b!47031))

(declare-fun m!21326 () Bool)

(assert (=> b!47031 m!21326))

(declare-fun m!21328 () Bool)

(assert (=> setNonEmpty!1275 m!21328))

(declare-fun tp!31844 () Bool)

(declare-fun setRes!1276 () Bool)

(declare-fun e!27026 () Bool)

(declare-fun b!47032 () Bool)

(assert (=> b!47032 (= e!27026 (and (inv!1071 (_2!683 (_1!684 (h!6185 (minValue!525 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333)))))))))) setRes!1276 tp!31844))))

(declare-fun condSetEmpty!1276 () Bool)

(assert (=> b!47032 (= condSetEmpty!1276 (= (_2!684 (h!6185 (minValue!525 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333)))))))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1276 () Bool)

(assert (=> setIsEmpty!1276 setRes!1276))

(declare-fun setNonEmpty!1276 () Bool)

(declare-fun tp!31843 () Bool)

(declare-fun setElem!1276 () Context!202)

(assert (=> setNonEmpty!1276 (= setRes!1276 (and tp!31843 (inv!1071 setElem!1276)))))

(declare-fun setRest!1276 () (InoxSet Context!202))

(assert (=> setNonEmpty!1276 (= (_2!684 (h!6185 (minValue!525 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1276 true) setRest!1276))))

(assert (=> b!46842 (= tp!31773 e!27026)))

(assert (= (and b!47032 condSetEmpty!1276) setIsEmpty!1276))

(assert (= (and b!47032 (not condSetEmpty!1276)) setNonEmpty!1276))

(assert (= (and b!46842 ((_ is Cons!789) (minValue!525 (v!12517 (underlying!733 (v!12518 (underlying!734 (cache!750 cacheDown!333)))))))) b!47032))

(declare-fun m!21330 () Bool)

(assert (=> b!47032 m!21330))

(declare-fun m!21332 () Bool)

(assert (=> setNonEmpty!1276 m!21332))

(declare-fun b!47033 () Bool)

(declare-fun e!27028 () Bool)

(declare-fun tp!31846 () Bool)

(declare-fun tp!31845 () Bool)

(assert (=> b!47033 (= e!27028 (and (inv!1064 (left!611 (c!16163 input!525))) tp!31845 (inv!1064 (right!941 (c!16163 input!525))) tp!31846))))

(declare-fun b!47034 () Bool)

(assert (=> b!47034 (= e!27028 (inv!1072 (xs!2733 (c!16163 input!525))))))

(assert (=> b!46834 (= tp!31758 (and (inv!1064 (c!16163 input!525)) e!27028))))

(assert (= (and b!46834 ((_ is Node!154) (c!16163 input!525))) b!47033))

(assert (= (and b!46834 ((_ is Leaf!354) (c!16163 input!525))) b!47034))

(declare-fun m!21334 () Bool)

(assert (=> b!47033 m!21334))

(declare-fun m!21336 () Bool)

(assert (=> b!47033 m!21336))

(declare-fun m!21338 () Bool)

(assert (=> b!47034 m!21338))

(assert (=> b!46834 m!21038))

(declare-fun condMapEmpty!1065 () Bool)

(declare-fun mapDefault!1065 () List!788)

(assert (=> mapNonEmpty!1055 (= condMapEmpty!1065 (= mapRest!1056 ((as const (Array (_ BitVec 32) List!788)) mapDefault!1065)))))

(declare-fun e!27039 () Bool)

(declare-fun mapRes!1065 () Bool)

(assert (=> mapNonEmpty!1055 (= tp!31771 (and e!27039 mapRes!1065))))

(declare-fun b!47041 () Bool)

(declare-fun e!27038 () Bool)

(declare-fun setRes!1282 () Bool)

(declare-fun tp!31861 () Bool)

(assert (=> b!47041 (= e!27038 (and setRes!1282 tp!31861))))

(declare-fun condSetEmpty!1281 () Bool)

(declare-fun mapValue!1065 () List!788)

(assert (=> b!47041 (= condSetEmpty!1281 (= (_1!678 (_1!679 (h!6182 mapValue!1065))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setNonEmpty!1281 () Bool)

(declare-fun tp!31860 () Bool)

(declare-fun setElem!1282 () Context!202)

(assert (=> setNonEmpty!1281 (= setRes!1282 (and tp!31860 (inv!1071 setElem!1282)))))

(declare-fun setRest!1281 () (InoxSet Context!202))

(assert (=> setNonEmpty!1281 (= (_1!678 (_1!679 (h!6182 mapValue!1065))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1282 true) setRest!1281))))

(declare-fun b!47042 () Bool)

(declare-fun setRes!1281 () Bool)

(declare-fun tp!31859 () Bool)

(assert (=> b!47042 (= e!27039 (and setRes!1281 tp!31859))))

(declare-fun condSetEmpty!1282 () Bool)

(assert (=> b!47042 (= condSetEmpty!1282 (= (_1!678 (_1!679 (h!6182 mapDefault!1065))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1281 () Bool)

(assert (=> setIsEmpty!1281 setRes!1281))

(declare-fun mapNonEmpty!1065 () Bool)

(declare-fun tp!31857 () Bool)

(assert (=> mapNonEmpty!1065 (= mapRes!1065 (and tp!31857 e!27038))))

(declare-fun mapKey!1065 () (_ BitVec 32))

(declare-fun mapRest!1065 () (Array (_ BitVec 32) List!788))

(assert (=> mapNonEmpty!1065 (= mapRest!1056 (store mapRest!1065 mapKey!1065 mapValue!1065))))

(declare-fun setNonEmpty!1282 () Bool)

(declare-fun tp!31858 () Bool)

(declare-fun setElem!1281 () Context!202)

(assert (=> setNonEmpty!1282 (= setRes!1281 (and tp!31858 (inv!1071 setElem!1281)))))

(declare-fun setRest!1282 () (InoxSet Context!202))

(assert (=> setNonEmpty!1282 (= (_1!678 (_1!679 (h!6182 mapDefault!1065))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1281 true) setRest!1282))))

(declare-fun mapIsEmpty!1065 () Bool)

(assert (=> mapIsEmpty!1065 mapRes!1065))

(declare-fun setIsEmpty!1282 () Bool)

(assert (=> setIsEmpty!1282 setRes!1282))

(assert (= (and mapNonEmpty!1055 condMapEmpty!1065) mapIsEmpty!1065))

(assert (= (and mapNonEmpty!1055 (not condMapEmpty!1065)) mapNonEmpty!1065))

(assert (= (and b!47041 condSetEmpty!1281) setIsEmpty!1282))

(assert (= (and b!47041 (not condSetEmpty!1281)) setNonEmpty!1281))

(assert (= (and mapNonEmpty!1065 ((_ is Cons!786) mapValue!1065)) b!47041))

(assert (= (and b!47042 condSetEmpty!1282) setIsEmpty!1281))

(assert (= (and b!47042 (not condSetEmpty!1282)) setNonEmpty!1282))

(assert (= (and mapNonEmpty!1055 ((_ is Cons!786) mapDefault!1065)) b!47042))

(declare-fun m!21340 () Bool)

(assert (=> setNonEmpty!1281 m!21340))

(declare-fun m!21342 () Bool)

(assert (=> mapNonEmpty!1065 m!21342))

(declare-fun m!21344 () Bool)

(assert (=> setNonEmpty!1282 m!21344))

(declare-fun b!47043 () Bool)

(declare-fun e!27043 () Bool)

(declare-fun setRes!1283 () Bool)

(declare-fun tp!31862 () Bool)

(assert (=> b!47043 (= e!27043 (and setRes!1283 tp!31862))))

(declare-fun condSetEmpty!1283 () Bool)

(assert (=> b!47043 (= condSetEmpty!1283 (= (_1!678 (_1!679 (h!6182 mapValue!1054))) ((as const (Array Context!202 Bool)) false)))))

(declare-fun setIsEmpty!1283 () Bool)

(assert (=> setIsEmpty!1283 setRes!1283))

(declare-fun setNonEmpty!1283 () Bool)

(declare-fun tp!31863 () Bool)

(declare-fun setElem!1283 () Context!202)

(assert (=> setNonEmpty!1283 (= setRes!1283 (and tp!31863 (inv!1071 setElem!1283)))))

(declare-fun setRest!1283 () (InoxSet Context!202))

(assert (=> setNonEmpty!1283 (= (_1!678 (_1!679 (h!6182 mapValue!1054))) ((_ map or) (store ((as const (Array Context!202 Bool)) false) setElem!1283 true) setRest!1283))))

(assert (=> mapNonEmpty!1055 (= tp!31772 e!27043)))

(assert (= (and b!47043 condSetEmpty!1283) setIsEmpty!1283))

(assert (= (and b!47043 (not condSetEmpty!1283)) setNonEmpty!1283))

(assert (= (and mapNonEmpty!1055 ((_ is Cons!786) mapValue!1054)) b!47043))

(declare-fun m!21346 () Bool)

(assert (=> setNonEmpty!1283 m!21346))

(declare-fun b_lambda!275 () Bool)

(assert (= b_lambda!273 (or b!46835 b_lambda!275)))

(declare-fun bs!6371 () Bool)

(declare-fun d!5648 () Bool)

(assert (= bs!6371 (and d!5648 b!46835)))

(assert (=> bs!6371 (= (dynLambda!134 lambda!883 (h!6184 lt!6328)) (rulesProduceIndividualToken!12 Lexer!67 lt!6327 (h!6184 lt!6328)))))

(assert (=> bs!6371 m!21114))

(assert (=> b!46966 d!5648))

(check-sat (not b!46958) (not d!5598) (not b!46992) (not b!47034) (not d!5592) (not b!46961) (not d!5578) (not b!46959) (not b!47007) (not setNonEmpty!1283) (not b_next!1255) (not b!46980) (not setNonEmpty!1253) (not b_next!1245) (not d!5580) (not b!46979) (not b!46893) (not setNonEmpty!1268) b_and!1287 (not b!46929) (not setNonEmpty!1250) (not d!5636) (not d!5570) (not b_next!1253) (not d!5624) (not b!47008) (not d!5596) (not b!46941) (not b!46926) (not d!5606) (not b!47021) (not setNonEmpty!1272) b_and!1285 (not setNonEmpty!1282) (not d!5560) (not b!46914) (not d!5632) (not b!46945) (not b!47043) (not b_lambda!275) (not d!5642) (not b!47042) (not d!5612) (not d!5590) (not b!46910) (not setNonEmpty!1269) (not mapNonEmpty!1065) (not b!47031) (not d!5618) (not b!46834) (not b!47030) (not d!5576) (not b!46888) (not b!46982) (not b!46942) (not setNonEmpty!1267) (not setNonEmpty!1281) (not setNonEmpty!1266) (not b!46895) (not b!46867) (not b!47017) (not b!46912) (not b!47020) (not b!46925) (not mapNonEmpty!1059) (not b!47000) (not setNonEmpty!1265) (not b_next!1251) (not b!47028) (not b!47016) (not d!5586) (not b!47018) b_and!1279 (not b!46886) (not d!5566) (not b!46987) (not b!46932) b_and!1283 (not b!47041) (not b_next!1249) b_and!1281 (not b!47033) (not d!5574) (not setNonEmpty!1274) (not b_next!1247) (not d!5600) (not d!5640) (not b!46935) (not setNonEmpty!1260) (not b!46913) (not mapNonEmpty!1062) (not b!46978) (not b!46967) (not b!46981) (not bs!6371) (not b!47029) (not d!5568) (not b!46999) (not d!5594) b_and!1289 (not b!46946) (not b!46960) (not b!47032) (not setNonEmpty!1258) (not setNonEmpty!1273) (not b!46938) (not d!5638) (not b!47019) (not setNonEmpty!1276) (not b!47009) (not setNonEmpty!1259) (not b!46894) (not d!5634) (not d!5626) (not d!5646) (not d!5572) (not b!46939) (not d!5628) (not setNonEmpty!1275) (not b!46944))
(check-sat (not b_next!1255) (not b_next!1245) b_and!1287 (not b_next!1253) b_and!1285 (not b_next!1251) b_and!1279 (not b_next!1247) b_and!1289 b_and!1283 (not b_next!1249) b_and!1281)
