; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111842 () Bool)

(assert start!111842)

(declare-fun b!1282198 () Bool)

(declare-fun b_free!29891 () Bool)

(declare-fun b_next!30595 () Bool)

(assert (=> b!1282198 (= b_free!29891 (not b_next!30595))))

(declare-fun tp!372117 () Bool)

(declare-fun b_and!85035 () Bool)

(assert (=> b!1282198 (= tp!372117 b_and!85035)))

(declare-fun b!1282203 () Bool)

(declare-fun b_free!29893 () Bool)

(declare-fun b_next!30597 () Bool)

(assert (=> b!1282203 (= b_free!29893 (not b_next!30597))))

(declare-fun tp!372126 () Bool)

(declare-fun b_and!85037 () Bool)

(assert (=> b!1282203 (= tp!372126 b_and!85037)))

(declare-fun b!1282201 () Bool)

(declare-fun b_free!29895 () Bool)

(declare-fun b_next!30599 () Bool)

(assert (=> b!1282201 (= b_free!29895 (not b_next!30599))))

(declare-fun tp!372121 () Bool)

(declare-fun b_and!85039 () Bool)

(assert (=> b!1282201 (= tp!372121 b_and!85039)))

(declare-fun b!1282211 () Bool)

(declare-fun b_free!29897 () Bool)

(declare-fun b_next!30601 () Bool)

(assert (=> b!1282211 (= b_free!29897 (not b_next!30601))))

(declare-fun tp!372127 () Bool)

(declare-fun b_and!85041 () Bool)

(assert (=> b!1282211 (= tp!372127 b_and!85041)))

(declare-fun b!1282209 () Bool)

(declare-fun b_free!29899 () Bool)

(declare-fun b_next!30603 () Bool)

(assert (=> b!1282209 (= b_free!29899 (not b_next!30603))))

(declare-fun tp!372110 () Bool)

(declare-fun b_and!85043 () Bool)

(assert (=> b!1282209 (= tp!372110 b_and!85043)))

(declare-fun b_free!29901 () Bool)

(declare-fun b_next!30605 () Bool)

(assert (=> b!1282209 (= b_free!29901 (not b_next!30605))))

(declare-fun tp!372119 () Bool)

(declare-fun b_and!85045 () Bool)

(assert (=> b!1282209 (= tp!372119 b_and!85045)))

(declare-fun b!1282194 () Bool)

(declare-fun e!821955 () Bool)

(declare-fun e!821971 () Bool)

(declare-datatypes ((array!4750 0))(
  ( (array!4751 (arr!2119 (Array (_ BitVec 32) (_ BitVec 64))) (size!10345 (_ BitVec 32))) )
))
(declare-datatypes ((C!7280 0))(
  ( (C!7281 (val!4200 Int)) )
))
(declare-datatypes ((Regex!3495 0))(
  ( (ElementMatch!3495 (c!211393 C!7280)) (Concat!5766 (regOne!7502 Regex!3495) (regTwo!7502 Regex!3495)) (EmptyExpr!3495) (Star!3495 (reg!3824 Regex!3495)) (EmptyLang!3495) (Union!3495 (regOne!7503 Regex!3495) (regTwo!7503 Regex!3495)) )
))
(declare-datatypes ((List!12756 0))(
  ( (Nil!12690) (Cons!12690 (h!18091 Regex!3495) (t!116580 List!12756)) )
))
(declare-datatypes ((Context!1102 0))(
  ( (Context!1103 (exprs!1051 List!12756)) )
))
(declare-datatypes ((tuple2!12570 0))(
  ( (tuple2!12571 (_1!7157 Context!1102) (_2!7157 C!7280)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12572 0))(
  ( (tuple2!12573 (_1!7158 tuple2!12570) (_2!7158 (InoxSet Context!1102))) )
))
(declare-datatypes ((List!12757 0))(
  ( (Nil!12691) (Cons!12691 (h!18092 tuple2!12572) (t!116581 List!12757)) )
))
(declare-datatypes ((array!4752 0))(
  ( (array!4753 (arr!2120 (Array (_ BitVec 32) List!12757)) (size!10346 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2674 0))(
  ( (LongMapFixedSize!2675 (defaultEntry!1697 Int) (mask!4167 (_ BitVec 32)) (extraKeys!1584 (_ BitVec 32)) (zeroValue!1594 List!12757) (minValue!1594 List!12757) (_size!2755 (_ BitVec 32)) (_keys!1631 array!4750) (_values!1616 array!4752) (_vacant!1398 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5233 0))(
  ( (Cell!5234 (v!20959 LongMapFixedSize!2674)) )
))
(declare-datatypes ((MutLongMap!1337 0))(
  ( (LongMap!1337 (underlying!2881 Cell!5233)) (MutLongMapExt!1336 (__x!8329 Int)) )
))
(declare-fun lt!423151 () MutLongMap!1337)

(get-info :version)

(assert (=> b!1282194 (= e!821955 (and e!821971 ((_ is LongMap!1337) lt!423151)))))

(declare-datatypes ((Cell!5235 0))(
  ( (Cell!5236 (v!20960 MutLongMap!1337)) )
))
(declare-datatypes ((Hashable!1281 0))(
  ( (HashableExt!1280 (__x!8330 Int)) )
))
(declare-datatypes ((MutableMap!1281 0))(
  ( (MutableMapExt!1280 (__x!8331 Int)) (HashMap!1281 (underlying!2882 Cell!5235) (hashF!3200 Hashable!1281) (_size!2756 (_ BitVec 32)) (defaultValue!1441 Int)) )
))
(declare-datatypes ((CacheUp!750 0))(
  ( (CacheUp!751 (cache!1662 MutableMap!1281)) )
))
(declare-fun cacheUp!398 () CacheUp!750)

(assert (=> b!1282194 (= lt!423151 (v!20960 (underlying!2882 (cache!1662 cacheUp!398))))))

(declare-fun b!1282195 () Bool)

(declare-fun e!821960 () Bool)

(declare-fun e!821962 () Bool)

(declare-datatypes ((tuple3!1162 0))(
  ( (tuple3!1163 (_1!7159 Regex!3495) (_2!7159 Context!1102) (_3!872 C!7280)) )
))
(declare-datatypes ((tuple2!12574 0))(
  ( (tuple2!12575 (_1!7160 tuple3!1162) (_2!7160 (InoxSet Context!1102))) )
))
(declare-datatypes ((List!12758 0))(
  ( (Nil!12692) (Cons!12692 (h!18093 tuple2!12574) (t!116582 List!12758)) )
))
(declare-datatypes ((array!4754 0))(
  ( (array!4755 (arr!2121 (Array (_ BitVec 32) List!12758)) (size!10347 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2676 0))(
  ( (LongMapFixedSize!2677 (defaultEntry!1698 Int) (mask!4168 (_ BitVec 32)) (extraKeys!1585 (_ BitVec 32)) (zeroValue!1595 List!12758) (minValue!1595 List!12758) (_size!2757 (_ BitVec 32)) (_keys!1632 array!4750) (_values!1617 array!4754) (_vacant!1399 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5237 0))(
  ( (Cell!5238 (v!20961 LongMapFixedSize!2676)) )
))
(declare-datatypes ((MutLongMap!1338 0))(
  ( (LongMap!1338 (underlying!2883 Cell!5237)) (MutLongMapExt!1337 (__x!8332 Int)) )
))
(declare-fun lt!423149 () MutLongMap!1338)

(assert (=> b!1282195 (= e!821960 (and e!821962 ((_ is LongMap!1338) lt!423149)))))

(declare-datatypes ((Hashable!1282 0))(
  ( (HashableExt!1281 (__x!8333 Int)) )
))
(declare-datatypes ((Cell!5239 0))(
  ( (Cell!5240 (v!20962 MutLongMap!1338)) )
))
(declare-datatypes ((MutableMap!1282 0))(
  ( (MutableMapExt!1281 (__x!8334 Int)) (HashMap!1282 (underlying!2884 Cell!5239) (hashF!3201 Hashable!1282) (_size!2758 (_ BitVec 32)) (defaultValue!1442 Int)) )
))
(declare-datatypes ((CacheDown!754 0))(
  ( (CacheDown!755 (cache!1663 MutableMap!1282)) )
))
(declare-fun cacheDown!411 () CacheDown!754)

(assert (=> b!1282195 (= lt!423149 (v!20962 (underlying!2884 (cache!1663 cacheDown!411))))))

(declare-fun b!1282196 () Bool)

(declare-fun e!821963 () Bool)

(assert (=> b!1282196 (= e!821971 e!821963)))

(declare-fun b!1282197 () Bool)

(declare-fun res!575372 () Bool)

(declare-fun e!821969 () Bool)

(assert (=> b!1282197 (=> (not res!575372) (not e!821969))))

(declare-datatypes ((List!12759 0))(
  ( (Nil!12693) (Cons!12693 (h!18094 (_ BitVec 16)) (t!116583 List!12759)) )
))
(declare-datatypes ((TokenValue!2271 0))(
  ( (FloatLiteralValue!4542 (text!16342 List!12759)) (TokenValueExt!2270 (__x!8335 Int)) (Broken!11355 (value!71765 List!12759)) (Object!2336) (End!2271) (Def!2271) (Underscore!2271) (Match!2271) (Else!2271) (Error!2271) (Case!2271) (If!2271) (Extends!2271) (Abstract!2271) (Class!2271) (Val!2271) (DelimiterValue!4542 (del!2331 List!12759)) (KeywordValue!2277 (value!71766 List!12759)) (CommentValue!4542 (value!71767 List!12759)) (WhitespaceValue!4542 (value!71768 List!12759)) (IndentationValue!2271 (value!71769 List!12759)) (String!15590) (Int32!2271) (Broken!11356 (value!71770 List!12759)) (Boolean!2272) (Unit!18963) (OperatorValue!2274 (op!2331 List!12759)) (IdentifierValue!4542 (value!71771 List!12759)) (IdentifierValue!4543 (value!71772 List!12759)) (WhitespaceValue!4543 (value!71773 List!12759)) (True!4542) (False!4542) (Broken!11357 (value!71774 List!12759)) (Broken!11358 (value!71775 List!12759)) (True!4543) (RightBrace!2271) (RightBracket!2271) (Colon!2271) (Null!2271) (Comma!2271) (LeftBracket!2271) (False!4543) (LeftBrace!2271) (ImaginaryLiteralValue!2271 (text!16343 List!12759)) (StringLiteralValue!6813 (value!71776 List!12759)) (EOFValue!2271 (value!71777 List!12759)) (IdentValue!2271 (value!71778 List!12759)) (DelimiterValue!4543 (value!71779 List!12759)) (DedentValue!2271 (value!71780 List!12759)) (NewLineValue!2271 (value!71781 List!12759)) (IntegerValue!6813 (value!71782 (_ BitVec 32)) (text!16344 List!12759)) (IntegerValue!6814 (value!71783 Int) (text!16345 List!12759)) (Times!2271) (Or!2271) (Equal!2271) (Minus!2271) (Broken!11359 (value!71784 List!12759)) (And!2271) (Div!2271) (LessEqual!2271) (Mod!2271) (Concat!5767) (Not!2271) (Plus!2271) (SpaceValue!2271 (value!71785 List!12759)) (IntegerValue!6815 (value!71786 Int) (text!16346 List!12759)) (StringLiteralValue!6814 (text!16347 List!12759)) (FloatLiteralValue!4543 (text!16348 List!12759)) (BytesLiteralValue!2271 (value!71787 List!12759)) (CommentValue!4543 (value!71788 List!12759)) (StringLiteralValue!6815 (value!71789 List!12759)) (ErrorTokenValue!2271 (msg!2332 List!12759)) )
))
(declare-datatypes ((List!12760 0))(
  ( (Nil!12694) (Cons!12694 (h!18095 C!7280) (t!116584 List!12760)) )
))
(declare-datatypes ((String!15591 0))(
  ( (String!15592 (value!71790 String)) )
))
(declare-datatypes ((IArray!8349 0))(
  ( (IArray!8350 (innerList!4232 List!12760)) )
))
(declare-datatypes ((Conc!4172 0))(
  ( (Node!4172 (left!10966 Conc!4172) (right!11296 Conc!4172) (csize!8574 Int) (cheight!4383 Int)) (Leaf!6459 (xs!6883 IArray!8349) (csize!8575 Int)) (Empty!4172) )
))
(declare-datatypes ((BalanceConc!8284 0))(
  ( (BalanceConc!8285 (c!211394 Conc!4172)) )
))
(declare-datatypes ((TokenValueInjection!4202 0))(
  ( (TokenValueInjection!4203 (toValue!3348 Int) (toChars!3207 Int)) )
))
(declare-datatypes ((Rule!4162 0))(
  ( (Rule!4163 (regex!2181 Regex!3495) (tag!2443 String!15591) (isSeparator!2181 Bool) (transformation!2181 TokenValueInjection!4202)) )
))
(declare-datatypes ((Token!4024 0))(
  ( (Token!4025 (value!71791 TokenValue!2271) (rule!3920 Rule!4162) (size!10348 Int) (originalCharacters!3043 List!12760)) )
))
(declare-datatypes ((List!12761 0))(
  ( (Nil!12695) (Cons!12695 (h!18096 Token!4024) (t!116585 List!12761)) )
))
(declare-datatypes ((IArray!8351 0))(
  ( (IArray!8352 (innerList!4233 List!12761)) )
))
(declare-datatypes ((Conc!4173 0))(
  ( (Node!4173 (left!10967 Conc!4173) (right!11297 Conc!4173) (csize!8576 Int) (cheight!4384 Int)) (Leaf!6460 (xs!6884 IArray!8351) (csize!8577 Int)) (Empty!4173) )
))
(declare-datatypes ((BalanceConc!8286 0))(
  ( (BalanceConc!8287 (c!211395 Conc!4173)) )
))
(declare-fun ts!110 () BalanceConc!8286)

(declare-fun isEmpty!7537 (BalanceConc!8286) Bool)

(assert (=> b!1282197 (= res!575372 (not (isEmpty!7537 ts!110)))))

(declare-fun b!1282199 () Bool)

(declare-fun e!821957 () Bool)

(assert (=> b!1282199 (= e!821963 e!821957)))

(declare-fun mapNonEmpty!6411 () Bool)

(declare-fun mapRes!6412 () Bool)

(declare-fun tp!372123 () Bool)

(declare-fun tp!372124 () Bool)

(assert (=> mapNonEmpty!6411 (= mapRes!6412 (and tp!372123 tp!372124))))

(declare-fun mapValue!6411 () List!12758)

(declare-fun mapKey!6411 () (_ BitVec 32))

(declare-fun mapRest!6411 () (Array (_ BitVec 32) List!12758))

(assert (=> mapNonEmpty!6411 (= (arr!2121 (_values!1617 (v!20961 (underlying!2883 (v!20962 (underlying!2884 (cache!1663 cacheDown!411))))))) (store mapRest!6411 mapKey!6411 mapValue!6411))))

(declare-fun b!1282200 () Bool)

(declare-fun e!821951 () Bool)

(declare-fun e!821952 () Bool)

(assert (=> b!1282200 (= e!821951 e!821952)))

(declare-fun e!821970 () Bool)

(declare-fun tp!372111 () Bool)

(declare-fun tp!372118 () Bool)

(declare-fun array_inv!1540 (array!4750) Bool)

(declare-fun array_inv!1541 (array!4752) Bool)

(assert (=> b!1282201 (= e!821957 (and tp!372121 tp!372118 tp!372111 (array_inv!1540 (_keys!1631 (v!20959 (underlying!2881 (v!20960 (underlying!2882 (cache!1662 cacheUp!398))))))) (array_inv!1541 (_values!1616 (v!20959 (underlying!2881 (v!20960 (underlying!2882 (cache!1662 cacheUp!398))))))) e!821970))))

(declare-fun b!1282202 () Bool)

(declare-fun e!821954 () Bool)

(assert (=> b!1282202 (= e!821962 e!821954)))

(assert (=> b!1282203 (= e!821952 (and e!821955 tp!372126))))

(declare-fun b!1282204 () Bool)

(declare-fun e!821961 () Bool)

(declare-fun e!821950 () Bool)

(assert (=> b!1282204 (= e!821961 e!821950)))

(declare-fun mapIsEmpty!6411 () Bool)

(declare-fun mapRes!6411 () Bool)

(assert (=> mapIsEmpty!6411 mapRes!6411))

(declare-fun mapIsEmpty!6412 () Bool)

(assert (=> mapIsEmpty!6412 mapRes!6412))

(declare-fun b!1282205 () Bool)

(declare-fun e!821967 () Bool)

(declare-fun e!821966 () Bool)

(declare-fun tp!372115 () Bool)

(assert (=> b!1282205 (= e!821967 (and e!821966 tp!372115))))

(declare-fun b!1282206 () Bool)

(declare-fun res!575373 () Bool)

(assert (=> b!1282206 (=> (not res!575373) (not e!821969))))

(declare-datatypes ((List!12762 0))(
  ( (Nil!12696) (Cons!12696 (h!18097 Rule!4162) (t!116586 List!12762)) )
))
(declare-fun rs!174 () List!12762)

(declare-fun isEmpty!7538 (List!12762) Bool)

(assert (=> b!1282206 (= res!575373 (not (isEmpty!7538 rs!174)))))

(declare-fun b!1282207 () Bool)

(assert (=> b!1282207 (= e!821969 false)))

(declare-fun lt!423150 () Int)

(declare-fun size!10349 (BalanceConc!8286) Int)

(assert (=> b!1282207 (= lt!423150 (size!10349 ts!110))))

(declare-fun lt!423148 () Int)

(declare-fun tail!1811 (BalanceConc!8286) BalanceConc!8286)

(assert (=> b!1282207 (= lt!423148 (size!10349 (tail!1811 ts!110)))))

(declare-datatypes ((tuple3!1164 0))(
  ( (tuple3!1165 (_1!7161 Bool) (_2!7161 CacheUp!750) (_3!873 CacheDown!754)) )
))
(declare-fun lt!423147 () tuple3!1164)

(declare-datatypes ((LexerInterface!1876 0))(
  ( (LexerInterfaceExt!1873 (__x!8336 Int)) (Lexer!1874) )
))
(declare-fun thiss!10944 () LexerInterface!1876)

(declare-fun rulesProduceIndividualTokenMem!21 (LexerInterface!1876 List!12762 Token!4024 CacheUp!750 CacheDown!754) tuple3!1164)

(declare-fun head!2183 (BalanceConc!8286) Token!4024)

(assert (=> b!1282207 (= lt!423147 (rulesProduceIndividualTokenMem!21 thiss!10944 rs!174 (head!2183 ts!110) cacheUp!398 cacheDown!411))))

(declare-fun tp!372120 () Bool)

(declare-fun e!821964 () Bool)

(declare-fun b!1282208 () Bool)

(declare-fun inv!17078 (String!15591) Bool)

(declare-fun inv!17079 (TokenValueInjection!4202) Bool)

(assert (=> b!1282208 (= e!821966 (and tp!372120 (inv!17078 (tag!2443 (h!18097 rs!174))) (inv!17079 (transformation!2181 (h!18097 rs!174))) e!821964))))

(assert (=> b!1282209 (= e!821964 (and tp!372110 tp!372119))))

(declare-fun b!1282210 () Bool)

(declare-fun e!821965 () Bool)

(declare-fun tp!372112 () Bool)

(declare-fun inv!17080 (Conc!4173) Bool)

(assert (=> b!1282210 (= e!821965 (and (inv!17080 (c!211395 ts!110)) tp!372112))))

(assert (=> b!1282211 (= e!821950 (and e!821960 tp!372127))))

(declare-fun b!1282212 () Bool)

(declare-fun e!821958 () Bool)

(assert (=> b!1282212 (= e!821954 e!821958)))

(declare-fun b!1282213 () Bool)

(declare-fun e!821959 () Bool)

(declare-fun tp!372114 () Bool)

(assert (=> b!1282213 (= e!821959 (and tp!372114 mapRes!6412))))

(declare-fun condMapEmpty!6411 () Bool)

(declare-fun mapDefault!6411 () List!12758)

(assert (=> b!1282213 (= condMapEmpty!6411 (= (arr!2121 (_values!1617 (v!20961 (underlying!2883 (v!20962 (underlying!2884 (cache!1663 cacheDown!411))))))) ((as const (Array (_ BitVec 32) List!12758)) mapDefault!6411)))))

(declare-fun tp!372128 () Bool)

(declare-fun tp!372125 () Bool)

(declare-fun array_inv!1542 (array!4754) Bool)

(assert (=> b!1282198 (= e!821958 (and tp!372117 tp!372128 tp!372125 (array_inv!1540 (_keys!1632 (v!20961 (underlying!2883 (v!20962 (underlying!2884 (cache!1663 cacheDown!411))))))) (array_inv!1542 (_values!1617 (v!20961 (underlying!2883 (v!20962 (underlying!2884 (cache!1663 cacheDown!411))))))) e!821959))))

(declare-fun res!575371 () Bool)

(assert (=> start!111842 (=> (not res!575371) (not e!821969))))

(assert (=> start!111842 (= res!575371 ((_ is Lexer!1874) thiss!10944))))

(assert (=> start!111842 e!821969))

(assert (=> start!111842 e!821967))

(declare-fun inv!17081 (CacheUp!750) Bool)

(assert (=> start!111842 (and (inv!17081 cacheUp!398) e!821951)))

(declare-fun inv!17082 (CacheDown!754) Bool)

(assert (=> start!111842 (and (inv!17082 cacheDown!411) e!821961)))

(declare-fun inv!17083 (BalanceConc!8286) Bool)

(assert (=> start!111842 (and (inv!17083 ts!110) e!821965)))

(assert (=> start!111842 true))

(declare-fun b!1282214 () Bool)

(declare-fun tp!372122 () Bool)

(assert (=> b!1282214 (= e!821970 (and tp!372122 mapRes!6411))))

(declare-fun condMapEmpty!6412 () Bool)

(declare-fun mapDefault!6412 () List!12757)

(assert (=> b!1282214 (= condMapEmpty!6412 (= (arr!2120 (_values!1616 (v!20959 (underlying!2881 (v!20960 (underlying!2882 (cache!1662 cacheUp!398))))))) ((as const (Array (_ BitVec 32) List!12757)) mapDefault!6412)))))

(declare-fun mapNonEmpty!6412 () Bool)

(declare-fun tp!372113 () Bool)

(declare-fun tp!372116 () Bool)

(assert (=> mapNonEmpty!6412 (= mapRes!6411 (and tp!372113 tp!372116))))

(declare-fun mapValue!6412 () List!12757)

(declare-fun mapKey!6412 () (_ BitVec 32))

(declare-fun mapRest!6412 () (Array (_ BitVec 32) List!12757))

(assert (=> mapNonEmpty!6412 (= (arr!2120 (_values!1616 (v!20959 (underlying!2881 (v!20960 (underlying!2882 (cache!1662 cacheUp!398))))))) (store mapRest!6412 mapKey!6412 mapValue!6412))))

(declare-fun b!1282215 () Bool)

(declare-fun res!575374 () Bool)

(assert (=> b!1282215 (=> (not res!575374) (not e!821969))))

(declare-fun rulesInvariant!1748 (LexerInterface!1876 List!12762) Bool)

(assert (=> b!1282215 (= res!575374 (rulesInvariant!1748 thiss!10944 rs!174))))

(assert (= (and start!111842 res!575371) b!1282206))

(assert (= (and b!1282206 res!575373) b!1282215))

(assert (= (and b!1282215 res!575374) b!1282197))

(assert (= (and b!1282197 res!575372) b!1282207))

(assert (= b!1282208 b!1282209))

(assert (= b!1282205 b!1282208))

(assert (= (and start!111842 ((_ is Cons!12696) rs!174)) b!1282205))

(assert (= (and b!1282214 condMapEmpty!6412) mapIsEmpty!6411))

(assert (= (and b!1282214 (not condMapEmpty!6412)) mapNonEmpty!6412))

(assert (= b!1282201 b!1282214))

(assert (= b!1282199 b!1282201))

(assert (= b!1282196 b!1282199))

(assert (= (and b!1282194 ((_ is LongMap!1337) (v!20960 (underlying!2882 (cache!1662 cacheUp!398))))) b!1282196))

(assert (= b!1282203 b!1282194))

(assert (= (and b!1282200 ((_ is HashMap!1281) (cache!1662 cacheUp!398))) b!1282203))

(assert (= start!111842 b!1282200))

(assert (= (and b!1282213 condMapEmpty!6411) mapIsEmpty!6412))

(assert (= (and b!1282213 (not condMapEmpty!6411)) mapNonEmpty!6411))

(assert (= b!1282198 b!1282213))

(assert (= b!1282212 b!1282198))

(assert (= b!1282202 b!1282212))

(assert (= (and b!1282195 ((_ is LongMap!1338) (v!20962 (underlying!2884 (cache!1663 cacheDown!411))))) b!1282202))

(assert (= b!1282211 b!1282195))

(assert (= (and b!1282204 ((_ is HashMap!1282) (cache!1663 cacheDown!411))) b!1282211))

(assert (= start!111842 b!1282204))

(assert (= start!111842 b!1282210))

(declare-fun m!1432801 () Bool)

(assert (=> b!1282197 m!1432801))

(declare-fun m!1432803 () Bool)

(assert (=> b!1282198 m!1432803))

(declare-fun m!1432805 () Bool)

(assert (=> b!1282198 m!1432805))

(declare-fun m!1432807 () Bool)

(assert (=> b!1282215 m!1432807))

(declare-fun m!1432809 () Bool)

(assert (=> start!111842 m!1432809))

(declare-fun m!1432811 () Bool)

(assert (=> start!111842 m!1432811))

(declare-fun m!1432813 () Bool)

(assert (=> start!111842 m!1432813))

(declare-fun m!1432815 () Bool)

(assert (=> b!1282201 m!1432815))

(declare-fun m!1432817 () Bool)

(assert (=> b!1282201 m!1432817))

(declare-fun m!1432819 () Bool)

(assert (=> mapNonEmpty!6411 m!1432819))

(declare-fun m!1432821 () Bool)

(assert (=> mapNonEmpty!6412 m!1432821))

(declare-fun m!1432823 () Bool)

(assert (=> b!1282206 m!1432823))

(declare-fun m!1432825 () Bool)

(assert (=> b!1282207 m!1432825))

(declare-fun m!1432827 () Bool)

(assert (=> b!1282207 m!1432827))

(declare-fun m!1432829 () Bool)

(assert (=> b!1282207 m!1432829))

(assert (=> b!1282207 m!1432827))

(declare-fun m!1432831 () Bool)

(assert (=> b!1282207 m!1432831))

(assert (=> b!1282207 m!1432829))

(declare-fun m!1432833 () Bool)

(assert (=> b!1282207 m!1432833))

(declare-fun m!1432835 () Bool)

(assert (=> b!1282210 m!1432835))

(declare-fun m!1432837 () Bool)

(assert (=> b!1282208 m!1432837))

(declare-fun m!1432839 () Bool)

(assert (=> b!1282208 m!1432839))

(check-sat (not b_next!30595) b_and!85041 (not mapNonEmpty!6411) (not b!1282207) (not b!1282201) (not b!1282210) (not start!111842) (not b!1282198) (not b!1282214) (not b!1282197) (not mapNonEmpty!6412) b_and!85045 b_and!85037 (not b!1282208) (not b_next!30601) (not b_next!30605) (not b!1282213) (not b!1282205) (not b_next!30597) b_and!85035 (not b_next!30599) (not b!1282206) (not b!1282215) b_and!85039 b_and!85043 (not b_next!30603))
(check-sat (not b_next!30595) b_and!85041 b_and!85045 b_and!85037 b_and!85039 (not b_next!30601) (not b_next!30605) (not b_next!30597) b_and!85035 (not b_next!30599) b_and!85043 (not b_next!30603))
