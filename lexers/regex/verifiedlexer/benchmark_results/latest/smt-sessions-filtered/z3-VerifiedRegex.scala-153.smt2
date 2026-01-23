; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1798 () Bool)

(assert start!1798)

(declare-fun b!34647 () Bool)

(declare-fun b_free!401 () Bool)

(declare-fun b_next!401 () Bool)

(assert (=> b!34647 (= b_free!401 (not b_next!401))))

(declare-fun tp!23870 () Bool)

(declare-fun b_and!435 () Bool)

(assert (=> b!34647 (= tp!23870 b_and!435)))

(declare-fun b!34634 () Bool)

(declare-fun b_free!403 () Bool)

(declare-fun b_next!403 () Bool)

(assert (=> b!34634 (= b_free!403 (not b_next!403))))

(declare-fun tp!23864 () Bool)

(declare-fun b_and!437 () Bool)

(assert (=> b!34634 (= tp!23864 b_and!437)))

(declare-fun b!34637 () Bool)

(declare-fun b_free!405 () Bool)

(declare-fun b_next!405 () Bool)

(assert (=> b!34637 (= b_free!405 (not b_next!405))))

(declare-fun tp!23862 () Bool)

(declare-fun b_and!439 () Bool)

(assert (=> b!34637 (= tp!23862 b_and!439)))

(declare-fun b!34632 () Bool)

(declare-fun b_free!407 () Bool)

(declare-fun b_next!407 () Bool)

(assert (=> b!34632 (= b_free!407 (not b_next!407))))

(declare-fun tp!23860 () Bool)

(declare-fun b_and!441 () Bool)

(assert (=> b!34632 (= tp!23860 b_and!441)))

(declare-fun e!16174 () Bool)

(declare-fun e!16175 () Bool)

(assert (=> b!34632 (= e!16174 (and e!16175 tp!23860))))

(declare-fun b!34633 () Bool)

(declare-fun e!16167 () Bool)

(declare-fun e!16178 () Bool)

(assert (=> b!34633 (= e!16167 e!16178)))

(declare-fun e!16162 () Bool)

(declare-fun tp!23866 () Bool)

(declare-datatypes ((Regex!151 0))(
  ( (ElementMatch!151 (c!15426 (_ BitVec 16))) (Concat!262 (regOne!814 Regex!151) (regTwo!814 Regex!151)) (EmptyExpr!151) (Star!151 (reg!480 Regex!151)) (EmptyLang!151) (Union!151 (regOne!815 Regex!151) (regTwo!815 Regex!151)) )
))
(declare-datatypes ((List!311 0))(
  ( (Nil!309) (Cons!309 (h!5705 Regex!151) (t!14997 List!311)) )
))
(declare-datatypes ((Context!66 0))(
  ( (Context!67 (exprs!533 List!311)) )
))
(declare-datatypes ((tuple3!66 0))(
  ( (tuple3!67 (_1!141 Regex!151) (_2!141 Context!66) (_3!33 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!216 0))(
  ( (tuple2!217 (_1!142 tuple3!66) (_2!142 (InoxSet Context!66))) )
))
(declare-datatypes ((List!312 0))(
  ( (Nil!310) (Cons!310 (h!5706 tuple2!216) (t!14998 List!312)) )
))
(declare-datatypes ((array!213 0))(
  ( (array!214 (arr!126 (Array (_ BitVec 32) List!312)) (size!369 (_ BitVec 32))) )
))
(declare-datatypes ((array!215 0))(
  ( (array!216 (arr!127 (Array (_ BitVec 32) (_ BitVec 64))) (size!370 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!122 0))(
  ( (LongMapFixedSize!123 (defaultEntry!399 Int) (mask!738 (_ BitVec 32)) (extraKeys!307 (_ BitVec 32)) (zeroValue!317 List!312) (minValue!317 List!312) (_size!254 (_ BitVec 32)) (_keys!352 array!215) (_values!339 array!213) (_vacant!121 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!233 0))(
  ( (Cell!234 (v!12081 LongMapFixedSize!122)) )
))
(declare-datatypes ((MutLongMap!61 0))(
  ( (LongMap!61 (underlying!317 Cell!233)) (MutLongMapExt!60 (__x!590 Int)) )
))
(declare-datatypes ((Cell!235 0))(
  ( (Cell!236 (v!12082 MutLongMap!61)) )
))
(declare-datatypes ((Hashable!57 0))(
  ( (HashableExt!56 (__x!591 Int)) )
))
(declare-datatypes ((MutableMap!57 0))(
  ( (MutableMapExt!56 (__x!592 Int)) (HashMap!57 (underlying!318 Cell!235) (hashF!1921 Hashable!57) (_size!255 (_ BitVec 32)) (defaultValue!205 Int)) )
))
(declare-datatypes ((CacheDown!56 0))(
  ( (CacheDown!57 (cache!536 MutableMap!57)) )
))
(declare-fun cacheDown!381 () CacheDown!56)

(declare-fun e!16168 () Bool)

(declare-fun tp!23869 () Bool)

(declare-fun array_inv!70 (array!215) Bool)

(declare-fun array_inv!71 (array!213) Bool)

(assert (=> b!34634 (= e!16168 (and tp!23864 tp!23869 tp!23866 (array_inv!70 (_keys!352 (v!12081 (underlying!317 (v!12082 (underlying!318 (cache!536 cacheDown!381))))))) (array_inv!71 (_values!339 (v!12081 (underlying!317 (v!12082 (underlying!318 (cache!536 cacheDown!381))))))) e!16162))))

(declare-fun b!34636 () Bool)

(declare-fun e!16176 () Bool)

(declare-fun tp!23867 () Bool)

(declare-fun mapRes!232 () Bool)

(assert (=> b!34636 (= e!16176 (and tp!23867 mapRes!232))))

(declare-fun condMapEmpty!233 () Bool)

(declare-datatypes ((Hashable!58 0))(
  ( (HashableExt!57 (__x!593 Int)) )
))
(declare-datatypes ((tuple2!218 0))(
  ( (tuple2!219 (_1!143 Context!66) (_2!143 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!220 0))(
  ( (tuple2!221 (_1!144 tuple2!218) (_2!144 (InoxSet Context!66))) )
))
(declare-datatypes ((List!313 0))(
  ( (Nil!311) (Cons!311 (h!5707 tuple2!220) (t!14999 List!313)) )
))
(declare-datatypes ((array!217 0))(
  ( (array!218 (arr!128 (Array (_ BitVec 32) List!313)) (size!371 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!124 0))(
  ( (LongMapFixedSize!125 (defaultEntry!400 Int) (mask!739 (_ BitVec 32)) (extraKeys!308 (_ BitVec 32)) (zeroValue!318 List!313) (minValue!318 List!313) (_size!256 (_ BitVec 32)) (_keys!353 array!215) (_values!340 array!217) (_vacant!122 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!237 0))(
  ( (Cell!238 (v!12083 LongMapFixedSize!124)) )
))
(declare-datatypes ((MutLongMap!62 0))(
  ( (LongMap!62 (underlying!319 Cell!237)) (MutLongMapExt!61 (__x!594 Int)) )
))
(declare-datatypes ((Cell!239 0))(
  ( (Cell!240 (v!12084 MutLongMap!62)) )
))
(declare-datatypes ((MutableMap!58 0))(
  ( (MutableMapExt!57 (__x!595 Int)) (HashMap!58 (underlying!320 Cell!239) (hashF!1922 Hashable!58) (_size!257 (_ BitVec 32)) (defaultValue!206 Int)) )
))
(declare-datatypes ((CacheUp!52 0))(
  ( (CacheUp!53 (cache!537 MutableMap!58)) )
))
(declare-fun cacheUp!368 () CacheUp!52)

(declare-fun mapDefault!233 () List!313)

(assert (=> b!34636 (= condMapEmpty!233 (= (arr!128 (_values!340 (v!12083 (underlying!319 (v!12084 (underlying!320 (cache!537 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!313)) mapDefault!233)))))

(declare-fun tp!23857 () Bool)

(declare-fun e!16171 () Bool)

(declare-fun tp!23868 () Bool)

(declare-fun array_inv!72 (array!217) Bool)

(assert (=> b!34637 (= e!16171 (and tp!23862 tp!23857 tp!23868 (array_inv!70 (_keys!353 (v!12083 (underlying!319 (v!12084 (underlying!320 (cache!537 cacheUp!368))))))) (array_inv!72 (_values!340 (v!12083 (underlying!319 (v!12084 (underlying!320 (cache!537 cacheUp!368))))))) e!16176))))

(declare-fun mapIsEmpty!232 () Bool)

(declare-fun mapRes!233 () Bool)

(assert (=> mapIsEmpty!232 mapRes!233))

(declare-fun b!34638 () Bool)

(declare-fun e!16170 () Bool)

(declare-fun lt!2670 () Bool)

(assert (=> b!34638 (= e!16170 lt!2670)))

(declare-fun b!34639 () Bool)

(declare-fun e!16180 () Bool)

(declare-fun lt!2668 () MutLongMap!61)

(get-info :version)

(assert (=> b!34639 (= e!16175 (and e!16180 ((_ is LongMap!61) lt!2668)))))

(assert (=> b!34639 (= lt!2668 (v!12082 (underlying!318 (cache!536 cacheDown!381))))))

(declare-fun b!34640 () Bool)

(declare-fun res!27691 () Bool)

(declare-fun e!16169 () Bool)

(assert (=> b!34640 (=> (not res!27691) (not e!16169))))

(declare-fun valid!75 (CacheDown!56) Bool)

(assert (=> b!34640 (= res!27691 (valid!75 cacheDown!381))))

(declare-fun b!34641 () Bool)

(declare-fun e!16181 () Bool)

(assert (=> b!34641 (= e!16181 e!16168)))

(declare-fun b!34642 () Bool)

(declare-fun e!16164 () Bool)

(assert (=> b!34642 (= e!16164 e!16174)))

(declare-fun mapIsEmpty!233 () Bool)

(assert (=> mapIsEmpty!233 mapRes!232))

(declare-fun b!34643 () Bool)

(declare-fun tp!23865 () Bool)

(assert (=> b!34643 (= e!16162 (and tp!23865 mapRes!233))))

(declare-fun condMapEmpty!232 () Bool)

(declare-fun mapDefault!232 () List!312)

(assert (=> b!34643 (= condMapEmpty!232 (= (arr!126 (_values!339 (v!12081 (underlying!317 (v!12082 (underlying!318 (cache!536 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!312)) mapDefault!232)))))

(declare-fun b!34644 () Bool)

(declare-fun res!27692 () Bool)

(declare-fun e!16177 () Bool)

(assert (=> b!34644 (=> (not res!27692) (not e!16177))))

(declare-datatypes ((tuple3!68 0))(
  ( (tuple3!69 (_1!145 (InoxSet Context!66)) (_2!145 Int) (_3!34 Int)) )
))
(declare-datatypes ((tuple2!222 0))(
  ( (tuple2!223 (_1!146 tuple3!68) (_2!146 Int)) )
))
(declare-datatypes ((List!314 0))(
  ( (Nil!312) (Cons!312 (h!5708 tuple2!222) (t!15000 List!314)) )
))
(declare-datatypes ((List!315 0))(
  ( (Nil!313) (Cons!313 (h!5709 (_ BitVec 16)) (t!15001 List!315)) )
))
(declare-datatypes ((IArray!93 0))(
  ( (IArray!94 (innerList!104 List!315)) )
))
(declare-datatypes ((Conc!46 0))(
  ( (Node!46 (left!397 Conc!46) (right!727 Conc!46) (csize!322 Int) (cheight!257 Int)) (Leaf!200 (xs!2625 IArray!93) (csize!323 Int)) (Empty!46) )
))
(declare-datatypes ((BalanceConc!92 0))(
  ( (BalanceConc!93 (c!15427 Conc!46)) )
))
(declare-datatypes ((array!219 0))(
  ( (array!220 (arr!129 (Array (_ BitVec 32) List!314)) (size!372 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!126 0))(
  ( (LongMapFixedSize!127 (defaultEntry!401 Int) (mask!740 (_ BitVec 32)) (extraKeys!309 (_ BitVec 32)) (zeroValue!319 List!314) (minValue!319 List!314) (_size!258 (_ BitVec 32)) (_keys!354 array!215) (_values!341 array!219) (_vacant!123 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!59 0))(
  ( (HashableExt!58 (__x!596 Int)) )
))
(declare-datatypes ((Cell!241 0))(
  ( (Cell!242 (v!12085 LongMapFixedSize!126)) )
))
(declare-datatypes ((MutLongMap!63 0))(
  ( (LongMap!63 (underlying!321 Cell!241)) (MutLongMapExt!62 (__x!597 Int)) )
))
(declare-datatypes ((Cell!243 0))(
  ( (Cell!244 (v!12086 MutLongMap!63)) )
))
(declare-datatypes ((MutableMap!59 0))(
  ( (MutableMapExt!58 (__x!598 Int)) (HashMap!59 (underlying!322 Cell!243) (hashF!1923 Hashable!59) (_size!259 (_ BitVec 32)) (defaultValue!207 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!6 0))(
  ( (CacheFurthestNullable!7 (cache!538 MutableMap!59) (totalInput!1476 BalanceConc!92)) )
))
(declare-fun lt!2667 () CacheFurthestNullable!6)

(declare-fun lt!2665 () BalanceConc!92)

(assert (=> b!34644 (= res!27692 (= (totalInput!1476 lt!2667) lt!2665))))

(declare-fun b!34635 () Bool)

(assert (=> b!34635 (= e!16169 e!16177)))

(declare-fun res!27693 () Bool)

(assert (=> b!34635 (=> (not res!27693) (not e!16177))))

(declare-fun valid!76 (CacheFurthestNullable!6) Bool)

(assert (=> b!34635 (= res!27693 (valid!76 lt!2667))))

(declare-fun hashF!328 () Hashable!59)

(declare-fun emptyFurthestNullableCache!2 (Hashable!59 BalanceConc!92 (_ BitVec 32)) CacheFurthestNullable!6)

(assert (=> b!34635 (= lt!2667 (emptyFurthestNullableCache!2 hashF!328 lt!2665 #b00000000000000000000000000010000))))

(declare-datatypes ((String!768 0))(
  ( (String!769 (value!6182 String)) )
))
(declare-fun path!6 () String!768)

(declare-fun openFile!0 (String!768) BalanceConc!92)

(assert (=> b!34635 (= lt!2665 (openFile!0 path!6))))

(declare-fun res!27695 () Bool)

(assert (=> start!1798 (=> (not res!27695) (not e!16169))))

(declare-fun valid!77 (CacheUp!52) Bool)

(assert (=> start!1798 (= res!27695 (valid!77 cacheUp!368))))

(assert (=> start!1798 e!16169))

(declare-fun inv!640 (CacheUp!52) Bool)

(assert (=> start!1798 (and (inv!640 cacheUp!368) e!16167)))

(declare-fun inv!641 (CacheDown!56) Bool)

(assert (=> start!1798 (and (inv!641 cacheDown!381) e!16164)))

(declare-fun inv!639 (String!768) Bool)

(assert (=> start!1798 (inv!639 path!6)))

(assert (=> start!1798 true))

(declare-fun b!34645 () Bool)

(declare-fun e!16165 () Bool)

(assert (=> b!34645 (= e!16165 e!16171)))

(declare-fun mapNonEmpty!232 () Bool)

(declare-fun tp!23859 () Bool)

(declare-fun tp!23858 () Bool)

(assert (=> mapNonEmpty!232 (= mapRes!232 (and tp!23859 tp!23858))))

(declare-fun mapRest!233 () (Array (_ BitVec 32) List!313))

(declare-fun mapValue!233 () List!313)

(declare-fun mapKey!233 () (_ BitVec 32))

(assert (=> mapNonEmpty!232 (= (arr!128 (_values!340 (v!12083 (underlying!319 (v!12084 (underlying!320 (cache!537 cacheUp!368))))))) (store mapRest!233 mapKey!233 mapValue!233))))

(declare-fun b!34646 () Bool)

(assert (=> b!34646 (= e!16180 e!16181)))

(declare-fun e!16166 () Bool)

(assert (=> b!34647 (= e!16178 (and e!16166 tp!23870))))

(declare-fun b!34648 () Bool)

(declare-fun res!27690 () Bool)

(assert (=> b!34648 (=> (not res!27690) (not e!16170))))

(declare-datatypes ((TokenValue!111 0))(
  ( (FloatLiteralValue!222 (text!1222 List!315)) (TokenValueExt!110 (__x!599 Int)) (Broken!555 (value!6183 List!315)) (Object!112) (End!111) (Def!111) (Underscore!111) (Match!111) (Else!111) (Error!111) (Case!111) (If!111) (Extends!111) (Abstract!111) (Class!111) (Val!111) (DelimiterValue!222 (del!171 List!315)) (KeywordValue!117 (value!6184 List!315)) (CommentValue!222 (value!6185 List!315)) (WhitespaceValue!222 (value!6186 List!315)) (IndentationValue!111 (value!6187 List!315)) (String!770) (Int32!111) (Broken!556 (value!6188 List!315)) (Boolean!112) (Unit!180) (OperatorValue!114 (op!171 List!315)) (IdentifierValue!222 (value!6189 List!315)) (IdentifierValue!223 (value!6190 List!315)) (WhitespaceValue!223 (value!6191 List!315)) (True!222) (False!222) (Broken!557 (value!6192 List!315)) (Broken!558 (value!6193 List!315)) (True!223) (RightBrace!111) (RightBracket!111) (Colon!111) (Null!111) (Comma!111) (LeftBracket!111) (False!223) (LeftBrace!111) (ImaginaryLiteralValue!111 (text!1223 List!315)) (StringLiteralValue!333 (value!6194 List!315)) (EOFValue!111 (value!6195 List!315)) (IdentValue!111 (value!6196 List!315)) (DelimiterValue!223 (value!6197 List!315)) (DedentValue!111 (value!6198 List!315)) (NewLineValue!111 (value!6199 List!315)) (IntegerValue!333 (value!6200 (_ BitVec 32)) (text!1224 List!315)) (IntegerValue!334 (value!6201 Int) (text!1225 List!315)) (Times!111) (Or!111) (Equal!111) (Minus!111) (Broken!559 (value!6202 List!315)) (And!111) (Div!111) (LessEqual!111) (Mod!111) (Concat!263) (Not!111) (Plus!111) (SpaceValue!111 (value!6203 List!315)) (IntegerValue!335 (value!6204 Int) (text!1226 List!315)) (StringLiteralValue!334 (text!1227 List!315)) (FloatLiteralValue!223 (text!1228 List!315)) (BytesLiteralValue!111 (value!6205 List!315)) (CommentValue!223 (value!6206 List!315)) (StringLiteralValue!335 (value!6207 List!315)) (ErrorTokenValue!111 (msg!172 List!315)) )
))
(declare-datatypes ((TokenValueInjection!46 0))(
  ( (TokenValueInjection!47 (toValue!600 Int) (toChars!459 Int)) )
))
(declare-datatypes ((Rule!42 0))(
  ( (Rule!43 (regex!121 Regex!151) (tag!299 String!768) (isSeparator!121 Bool) (transformation!121 TokenValueInjection!46)) )
))
(declare-datatypes ((List!316 0))(
  ( (Nil!314) (Cons!314 (h!5710 Rule!42) (t!15002 List!316)) )
))
(declare-fun lt!2666 () List!316)

(declare-datatypes ((LexerInterface!21 0))(
  ( (LexerInterfaceExt!18 (__x!600 Int)) (Lexer!19) )
))
(declare-fun rulesInvariant!14 (LexerInterface!21 List!316) Bool)

(assert (=> b!34648 (= res!27690 (rulesInvariant!14 Lexer!19 lt!2666))))

(declare-fun b!34649 () Bool)

(declare-fun e!16179 () Bool)

(assert (=> b!34649 (= e!16179 e!16165)))

(declare-fun b!34650 () Bool)

(declare-fun lt!2669 () MutLongMap!62)

(assert (=> b!34650 (= e!16166 (and e!16179 ((_ is LongMap!62) lt!2669)))))

(assert (=> b!34650 (= lt!2669 (v!12084 (underlying!320 (cache!537 cacheUp!368))))))

(declare-fun mapNonEmpty!233 () Bool)

(declare-fun tp!23861 () Bool)

(declare-fun tp!23863 () Bool)

(assert (=> mapNonEmpty!233 (= mapRes!233 (and tp!23861 tp!23863))))

(declare-fun mapRest!232 () (Array (_ BitVec 32) List!312))

(declare-fun mapKey!232 () (_ BitVec 32))

(declare-fun mapValue!232 () List!312)

(assert (=> mapNonEmpty!233 (= (arr!126 (_values!339 (v!12081 (underlying!317 (v!12082 (underlying!318 (cache!536 cacheDown!381))))))) (store mapRest!232 mapKey!232 mapValue!232))))

(declare-fun b!34651 () Bool)

(assert (=> b!34651 (= e!16177 e!16170)))

(declare-fun res!27694 () Bool)

(assert (=> b!34651 (=> (not res!27694) (not e!16170))))

(assert (=> b!34651 (= res!27694 (not lt!2670))))

(declare-fun isEmpty!78 (List!316) Bool)

(assert (=> b!34651 (= lt!2670 (isEmpty!78 lt!2666))))

(declare-datatypes ((JsonLexer!6 0))(
  ( (JsonLexer!7) )
))
(declare-fun rules!109 (JsonLexer!6) List!316)

(assert (=> b!34651 (= lt!2666 (rules!109 JsonLexer!7))))

(assert (= (and start!1798 res!27695) b!34640))

(assert (= (and b!34640 res!27691) b!34635))

(assert (= (and b!34635 res!27693) b!34644))

(assert (= (and b!34644 res!27692) b!34651))

(assert (= (and b!34651 res!27694) b!34648))

(assert (= (and b!34648 res!27690) b!34638))

(assert (= (and b!34636 condMapEmpty!233) mapIsEmpty!233))

(assert (= (and b!34636 (not condMapEmpty!233)) mapNonEmpty!232))

(assert (= b!34637 b!34636))

(assert (= b!34645 b!34637))

(assert (= b!34649 b!34645))

(assert (= (and b!34650 ((_ is LongMap!62) (v!12084 (underlying!320 (cache!537 cacheUp!368))))) b!34649))

(assert (= b!34647 b!34650))

(assert (= (and b!34633 ((_ is HashMap!58) (cache!537 cacheUp!368))) b!34647))

(assert (= start!1798 b!34633))

(assert (= (and b!34643 condMapEmpty!232) mapIsEmpty!232))

(assert (= (and b!34643 (not condMapEmpty!232)) mapNonEmpty!233))

(assert (= b!34634 b!34643))

(assert (= b!34641 b!34634))

(assert (= b!34646 b!34641))

(assert (= (and b!34639 ((_ is LongMap!61) (v!12082 (underlying!318 (cache!536 cacheDown!381))))) b!34646))

(assert (= b!34632 b!34639))

(assert (= (and b!34642 ((_ is HashMap!57) (cache!536 cacheDown!381))) b!34632))

(assert (= start!1798 b!34642))

(declare-fun m!10583 () Bool)

(assert (=> b!34635 m!10583))

(declare-fun m!10585 () Bool)

(assert (=> b!34635 m!10585))

(declare-fun m!10587 () Bool)

(assert (=> b!34635 m!10587))

(declare-fun m!10589 () Bool)

(assert (=> b!34640 m!10589))

(declare-fun m!10591 () Bool)

(assert (=> b!34651 m!10591))

(declare-fun m!10593 () Bool)

(assert (=> b!34651 m!10593))

(declare-fun m!10595 () Bool)

(assert (=> b!34637 m!10595))

(declare-fun m!10597 () Bool)

(assert (=> b!34637 m!10597))

(declare-fun m!10599 () Bool)

(assert (=> mapNonEmpty!233 m!10599))

(declare-fun m!10601 () Bool)

(assert (=> start!1798 m!10601))

(declare-fun m!10603 () Bool)

(assert (=> start!1798 m!10603))

(declare-fun m!10605 () Bool)

(assert (=> start!1798 m!10605))

(declare-fun m!10607 () Bool)

(assert (=> start!1798 m!10607))

(declare-fun m!10609 () Bool)

(assert (=> b!34634 m!10609))

(declare-fun m!10611 () Bool)

(assert (=> b!34634 m!10611))

(declare-fun m!10613 () Bool)

(assert (=> mapNonEmpty!232 m!10613))

(declare-fun m!10615 () Bool)

(assert (=> b!34648 m!10615))

(check-sat (not start!1798) (not b!34635) (not b!34648) (not b!34643) (not mapNonEmpty!232) b_and!441 (not b!34640) b_and!439 (not b_next!403) (not b!34636) (not b!34651) (not b!34637) b_and!437 (not b_next!405) (not b_next!401) (not b!34634) b_and!435 (not mapNonEmpty!233) (not b_next!407))
(check-sat b_and!437 b_and!441 b_and!439 (not b_next!403) b_and!435 (not b_next!407) (not b_next!405) (not b_next!401))
