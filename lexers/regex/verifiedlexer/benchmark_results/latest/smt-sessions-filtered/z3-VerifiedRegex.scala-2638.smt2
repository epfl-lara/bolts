; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142830 () Bool)

(assert start!142830)

(declare-fun b!1536310 () Bool)

(declare-fun b_free!39847 () Bool)

(declare-fun b_next!40551 () Bool)

(assert (=> b!1536310 (= b_free!39847 (not b_next!40551))))

(declare-fun tp!443158 () Bool)

(declare-fun b_and!106725 () Bool)

(assert (=> b!1536310 (= tp!443158 b_and!106725)))

(declare-fun b!1536321 () Bool)

(declare-fun b_free!39849 () Bool)

(declare-fun b_next!40553 () Bool)

(assert (=> b!1536321 (= b_free!39849 (not b_next!40553))))

(declare-fun tp!443162 () Bool)

(declare-fun b_and!106727 () Bool)

(assert (=> b!1536321 (= tp!443162 b_and!106727)))

(declare-fun b!1536298 () Bool)

(declare-fun b_free!39851 () Bool)

(declare-fun b_next!40555 () Bool)

(assert (=> b!1536298 (= b_free!39851 (not b_next!40555))))

(declare-fun tp!443171 () Bool)

(declare-fun b_and!106729 () Bool)

(assert (=> b!1536298 (= tp!443171 b_and!106729)))

(declare-fun b!1536318 () Bool)

(declare-fun b_free!39853 () Bool)

(declare-fun b_next!40557 () Bool)

(assert (=> b!1536318 (= b_free!39853 (not b_next!40557))))

(declare-fun tp!443172 () Bool)

(declare-fun b_and!106731 () Bool)

(assert (=> b!1536318 (= tp!443172 b_and!106731)))

(declare-fun b!1536311 () Bool)

(declare-fun b_free!39855 () Bool)

(declare-fun b_next!40559 () Bool)

(assert (=> b!1536311 (= b_free!39855 (not b_next!40559))))

(declare-fun tp!443179 () Bool)

(declare-fun b_and!106733 () Bool)

(assert (=> b!1536311 (= tp!443179 b_and!106733)))

(declare-fun b!1536325 () Bool)

(declare-fun b_free!39857 () Bool)

(declare-fun b_next!40561 () Bool)

(assert (=> b!1536325 (= b_free!39857 (not b_next!40561))))

(declare-fun tp!443175 () Bool)

(declare-fun b_and!106735 () Bool)

(assert (=> b!1536325 (= tp!443175 b_and!106735)))

(declare-fun b!1536323 () Bool)

(declare-fun b_free!39859 () Bool)

(declare-fun b_next!40563 () Bool)

(assert (=> b!1536323 (= b_free!39859 (not b_next!40563))))

(declare-fun tp!443183 () Bool)

(declare-fun b_and!106737 () Bool)

(assert (=> b!1536323 (= tp!443183 b_and!106737)))

(declare-fun b_free!39861 () Bool)

(declare-fun b_next!40565 () Bool)

(assert (=> b!1536323 (= b_free!39861 (not b_next!40565))))

(declare-fun tp!443160 () Bool)

(declare-fun b_and!106739 () Bool)

(assert (=> b!1536323 (= tp!443160 b_and!106739)))

(declare-fun b!1536291 () Bool)

(declare-fun e!982521 () Bool)

(declare-fun e!982506 () Bool)

(assert (=> b!1536291 (= e!982521 e!982506)))

(declare-fun b!1536292 () Bool)

(declare-fun res!688807 () Bool)

(declare-fun e!982528 () Bool)

(assert (=> b!1536292 (=> (not res!688807) (not e!982528))))

(declare-datatypes ((List!16345 0))(
  ( (Nil!16277) (Cons!16277 (h!21678 (_ BitVec 16)) (t!140551 List!16345)) )
))
(declare-datatypes ((TokenValue!2955 0))(
  ( (FloatLiteralValue!5910 (text!21130 List!16345)) (TokenValueExt!2954 (__x!10302 Int)) (Broken!14775 (value!91290 List!16345)) (Object!3022) (End!2955) (Def!2955) (Underscore!2955) (Match!2955) (Else!2955) (Error!2955) (Case!2955) (If!2955) (Extends!2955) (Abstract!2955) (Class!2955) (Val!2955) (DelimiterValue!5910 (del!3015 List!16345)) (KeywordValue!2961 (value!91291 List!16345)) (CommentValue!5910 (value!91292 List!16345)) (WhitespaceValue!5910 (value!91293 List!16345)) (IndentationValue!2955 (value!91294 List!16345)) (String!19050) (Int32!2955) (Broken!14776 (value!91295 List!16345)) (Boolean!2956) (Unit!25827) (OperatorValue!2958 (op!3015 List!16345)) (IdentifierValue!5910 (value!91296 List!16345)) (IdentifierValue!5911 (value!91297 List!16345)) (WhitespaceValue!5911 (value!91298 List!16345)) (True!5910) (False!5910) (Broken!14777 (value!91299 List!16345)) (Broken!14778 (value!91300 List!16345)) (True!5911) (RightBrace!2955) (RightBracket!2955) (Colon!2955) (Null!2955) (Comma!2955) (LeftBracket!2955) (False!5911) (LeftBrace!2955) (ImaginaryLiteralValue!2955 (text!21131 List!16345)) (StringLiteralValue!8865 (value!91301 List!16345)) (EOFValue!2955 (value!91302 List!16345)) (IdentValue!2955 (value!91303 List!16345)) (DelimiterValue!5911 (value!91304 List!16345)) (DedentValue!2955 (value!91305 List!16345)) (NewLineValue!2955 (value!91306 List!16345)) (IntegerValue!8865 (value!91307 (_ BitVec 32)) (text!21132 List!16345)) (IntegerValue!8866 (value!91308 Int) (text!21133 List!16345)) (Times!2955) (Or!2955) (Equal!2955) (Minus!2955) (Broken!14779 (value!91309 List!16345)) (And!2955) (Div!2955) (LessEqual!2955) (Mod!2955) (Concat!7142) (Not!2955) (Plus!2955) (SpaceValue!2955 (value!91310 List!16345)) (IntegerValue!8867 (value!91311 Int) (text!21134 List!16345)) (StringLiteralValue!8866 (text!21135 List!16345)) (FloatLiteralValue!5911 (text!21136 List!16345)) (BytesLiteralValue!2955 (value!91312 List!16345)) (CommentValue!5911 (value!91313 List!16345)) (StringLiteralValue!8867 (value!91314 List!16345)) (ErrorTokenValue!2955 (msg!3016 List!16345)) )
))
(declare-datatypes ((C!8552 0))(
  ( (C!8553 (val!4848 Int)) )
))
(declare-datatypes ((List!16346 0))(
  ( (Nil!16278) (Cons!16278 (h!21679 C!8552) (t!140552 List!16346)) )
))
(declare-datatypes ((IArray!10965 0))(
  ( (IArray!10966 (innerList!5540 List!16346)) )
))
(declare-datatypes ((Conc!5480 0))(
  ( (Node!5480 (left!13434 Conc!5480) (right!13764 Conc!5480) (csize!11190 Int) (cheight!5691 Int)) (Leaf!8119 (xs!8280 IArray!10965) (csize!11191 Int)) (Empty!5480) )
))
(declare-datatypes ((BalanceConc!10902 0))(
  ( (BalanceConc!10903 (c!251557 Conc!5480)) )
))
(declare-datatypes ((Regex!4187 0))(
  ( (ElementMatch!4187 (c!251558 C!8552)) (Concat!7143 (regOne!8886 Regex!4187) (regTwo!8886 Regex!4187)) (EmptyExpr!4187) (Star!4187 (reg!4516 Regex!4187)) (EmptyLang!4187) (Union!4187 (regOne!8887 Regex!4187) (regTwo!8887 Regex!4187)) )
))
(declare-datatypes ((String!19051 0))(
  ( (String!19052 (value!91315 String)) )
))
(declare-datatypes ((TokenValueInjection!5570 0))(
  ( (TokenValueInjection!5571 (toValue!4226 Int) (toChars!4085 Int)) )
))
(declare-datatypes ((Rule!5530 0))(
  ( (Rule!5531 (regex!2865 Regex!4187) (tag!3129 String!19051) (isSeparator!2865 Bool) (transformation!2865 TokenValueInjection!5570)) )
))
(declare-datatypes ((List!16347 0))(
  ( (Nil!16279) (Cons!16279 (h!21680 Rule!5530) (t!140553 List!16347)) )
))
(declare-fun rulesArg!359 () List!16347)

(declare-fun isEmpty!9999 (List!16347) Bool)

(assert (=> b!1536292 (= res!688807 (not (isEmpty!9999 rulesArg!359)))))

(declare-fun b!1536293 () Bool)

(declare-fun e!982513 () Bool)

(declare-fun tp!443181 () Bool)

(declare-fun mapRes!7375 () Bool)

(assert (=> b!1536293 (= e!982513 (and tp!443181 mapRes!7375))))

(declare-fun condMapEmpty!7375 () Bool)

(declare-datatypes ((List!16348 0))(
  ( (Nil!16280) (Cons!16280 (h!21681 Regex!4187) (t!140554 List!16348)) )
))
(declare-datatypes ((Context!1410 0))(
  ( (Context!1411 (exprs!1205 List!16348)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1462 0))(
  ( (tuple3!1463 (_1!8730 (InoxSet Context!1410)) (_2!8730 Int) (_3!1095 Int)) )
))
(declare-datatypes ((tuple2!15270 0))(
  ( (tuple2!15271 (_1!8731 tuple3!1462) (_2!8731 Int)) )
))
(declare-datatypes ((List!16349 0))(
  ( (Nil!16281) (Cons!16281 (h!21682 tuple2!15270) (t!140555 List!16349)) )
))
(declare-datatypes ((array!5432 0))(
  ( (array!5433 (arr!2415 (Array (_ BitVec 32) (_ BitVec 64))) (size!13160 (_ BitVec 32))) )
))
(declare-datatypes ((array!5434 0))(
  ( (array!5435 (arr!2416 (Array (_ BitVec 32) List!16349)) (size!13161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3106 0))(
  ( (LongMapFixedSize!3107 (defaultEntry!1913 Int) (mask!4735 (_ BitVec 32)) (extraKeys!1800 (_ BitVec 32)) (zeroValue!1810 List!16349) (minValue!1810 List!16349) (_size!3187 (_ BitVec 32)) (_keys!1847 array!5432) (_values!1832 array!5434) (_vacant!1614 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1497 0))(
  ( (HashableExt!1496 (__x!10303 Int)) )
))
(declare-datatypes ((Cell!6097 0))(
  ( (Cell!6098 (v!23086 LongMapFixedSize!3106)) )
))
(declare-datatypes ((MutLongMap!1553 0))(
  ( (LongMap!1553 (underlying!3315 Cell!6097)) (MutLongMapExt!1552 (__x!10304 Int)) )
))
(declare-datatypes ((Cell!6099 0))(
  ( (Cell!6100 (v!23087 MutLongMap!1553)) )
))
(declare-datatypes ((MutableMap!1497 0))(
  ( (MutableMapExt!1496 (__x!10305 Int)) (HashMap!1497 (underlying!3316 Cell!6099) (hashF!3416 Hashable!1497) (_size!3188 (_ BitVec 32)) (defaultValue!1657 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!324 0))(
  ( (CacheFurthestNullable!325 (cache!1878 MutableMap!1497) (totalInput!2350 BalanceConc!10902)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!324)

(declare-fun mapDefault!7374 () List!16349)

(assert (=> b!1536293 (= condMapEmpty!7375 (= (arr!2416 (_values!1832 (v!23086 (underlying!3315 (v!23087 (underlying!3316 (cache!1878 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16349)) mapDefault!7374)))))

(declare-fun res!688800 () Bool)

(assert (=> start!142830 (=> (not res!688800) (not e!982528))))

(declare-datatypes ((LexerInterface!2517 0))(
  ( (LexerInterfaceExt!2514 (__x!10306 Int)) (Lexer!2515) )
))
(declare-fun thiss!15733 () LexerInterface!2517)

(get-info :version)

(assert (=> start!142830 (= res!688800 ((_ is Lexer!2515) thiss!15733))))

(assert (=> start!142830 e!982528))

(declare-datatypes ((tuple2!15272 0))(
  ( (tuple2!15273 (_1!8732 Context!1410) (_2!8732 C!8552)) )
))
(declare-datatypes ((tuple2!15274 0))(
  ( (tuple2!15275 (_1!8733 tuple2!15272) (_2!8733 (InoxSet Context!1410))) )
))
(declare-datatypes ((List!16350 0))(
  ( (Nil!16282) (Cons!16282 (h!21683 tuple2!15274) (t!140556 List!16350)) )
))
(declare-datatypes ((array!5436 0))(
  ( (array!5437 (arr!2417 (Array (_ BitVec 32) List!16350)) (size!13162 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3108 0))(
  ( (LongMapFixedSize!3109 (defaultEntry!1914 Int) (mask!4736 (_ BitVec 32)) (extraKeys!1801 (_ BitVec 32)) (zeroValue!1811 List!16350) (minValue!1811 List!16350) (_size!3189 (_ BitVec 32)) (_keys!1848 array!5432) (_values!1833 array!5436) (_vacant!1615 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6101 0))(
  ( (Cell!6102 (v!23088 LongMapFixedSize!3108)) )
))
(declare-datatypes ((MutLongMap!1554 0))(
  ( (LongMap!1554 (underlying!3317 Cell!6101)) (MutLongMapExt!1553 (__x!10307 Int)) )
))
(declare-datatypes ((Cell!6103 0))(
  ( (Cell!6104 (v!23089 MutLongMap!1554)) )
))
(declare-datatypes ((Hashable!1498 0))(
  ( (HashableExt!1497 (__x!10308 Int)) )
))
(declare-datatypes ((MutableMap!1498 0))(
  ( (MutableMapExt!1497 (__x!10309 Int)) (HashMap!1498 (underlying!3318 Cell!6103) (hashF!3417 Hashable!1498) (_size!3190 (_ BitVec 32)) (defaultValue!1658 Int)) )
))
(declare-datatypes ((CacheUp!896 0))(
  ( (CacheUp!897 (cache!1879 MutableMap!1498)) )
))
(declare-fun cacheUp!695 () CacheUp!896)

(declare-fun e!982522 () Bool)

(declare-fun inv!21545 (CacheUp!896) Bool)

(assert (=> start!142830 (and (inv!21545 cacheUp!695) e!982522)))

(declare-fun input!1460 () BalanceConc!10902)

(declare-fun e!982507 () Bool)

(declare-fun inv!21546 (BalanceConc!10902) Bool)

(assert (=> start!142830 (and (inv!21546 input!1460) e!982507)))

(declare-datatypes ((tuple3!1464 0))(
  ( (tuple3!1465 (_1!8734 Regex!4187) (_2!8734 Context!1410) (_3!1096 C!8552)) )
))
(declare-datatypes ((tuple2!15276 0))(
  ( (tuple2!15277 (_1!8735 tuple3!1464) (_2!8735 (InoxSet Context!1410))) )
))
(declare-datatypes ((List!16351 0))(
  ( (Nil!16283) (Cons!16283 (h!21684 tuple2!15276) (t!140557 List!16351)) )
))
(declare-datatypes ((array!5438 0))(
  ( (array!5439 (arr!2418 (Array (_ BitVec 32) List!16351)) (size!13163 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3110 0))(
  ( (LongMapFixedSize!3111 (defaultEntry!1915 Int) (mask!4737 (_ BitVec 32)) (extraKeys!1802 (_ BitVec 32)) (zeroValue!1812 List!16351) (minValue!1812 List!16351) (_size!3191 (_ BitVec 32)) (_keys!1849 array!5432) (_values!1834 array!5438) (_vacant!1616 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6105 0))(
  ( (Cell!6106 (v!23090 LongMapFixedSize!3110)) )
))
(declare-datatypes ((MutLongMap!1555 0))(
  ( (LongMap!1555 (underlying!3319 Cell!6105)) (MutLongMapExt!1554 (__x!10310 Int)) )
))
(declare-datatypes ((Cell!6107 0))(
  ( (Cell!6108 (v!23091 MutLongMap!1555)) )
))
(declare-datatypes ((Hashable!1499 0))(
  ( (HashableExt!1498 (__x!10311 Int)) )
))
(declare-datatypes ((MutableMap!1499 0))(
  ( (MutableMapExt!1498 (__x!10312 Int)) (HashMap!1499 (underlying!3320 Cell!6107) (hashF!3418 Hashable!1499) (_size!3192 (_ BitVec 32)) (defaultValue!1659 Int)) )
))
(declare-datatypes ((CacheDown!902 0))(
  ( (CacheDown!903 (cache!1880 MutableMap!1499)) )
))
(declare-fun cacheDown!708 () CacheDown!902)

(declare-fun e!982505 () Bool)

(declare-fun inv!21547 (CacheDown!902) Bool)

(assert (=> start!142830 (and (inv!21547 cacheDown!708) e!982505)))

(assert (=> start!142830 true))

(declare-fun totalInput!496 () BalanceConc!10902)

(declare-fun e!982523 () Bool)

(assert (=> start!142830 (and (inv!21546 totalInput!496) e!982523)))

(declare-fun e!982502 () Bool)

(assert (=> start!142830 e!982502))

(declare-fun e!982500 () Bool)

(declare-fun inv!21548 (CacheFurthestNullable!324) Bool)

(assert (=> start!142830 (and (inv!21548 cacheFurthestNullable!81) e!982500)))

(declare-fun b!1536294 () Bool)

(declare-fun res!688803 () Bool)

(declare-fun e!982529 () Bool)

(assert (=> b!1536294 (=> (not res!688803) (not e!982529))))

(declare-fun valid!1267 (CacheDown!902) Bool)

(assert (=> b!1536294 (= res!688803 (valid!1267 cacheDown!708))))

(declare-fun b!1536295 () Bool)

(declare-fun e!982509 () Bool)

(declare-fun tp!443167 () Bool)

(assert (=> b!1536295 (= e!982502 (and e!982509 tp!443167))))

(declare-fun e!982512 () Bool)

(declare-fun e!982516 () Bool)

(declare-fun b!1536296 () Bool)

(assert (=> b!1536296 (= e!982500 (and e!982512 (inv!21546 (totalInput!2350 cacheFurthestNullable!81)) e!982516))))

(declare-fun b!1536297 () Bool)

(declare-fun res!688801 () Bool)

(assert (=> b!1536297 (=> (not res!688801) (not e!982529))))

(declare-fun valid!1268 (CacheFurthestNullable!324) Bool)

(assert (=> b!1536297 (= res!688801 (valid!1268 cacheFurthestNullable!81))))

(declare-fun e!982508 () Bool)

(declare-fun e!982517 () Bool)

(assert (=> b!1536298 (= e!982508 (and e!982517 tp!443171))))

(declare-fun b!1536299 () Bool)

(declare-fun e!982504 () Bool)

(assert (=> b!1536299 (= e!982505 e!982504)))

(declare-fun mapIsEmpty!7374 () Bool)

(assert (=> mapIsEmpty!7374 mapRes!7375))

(declare-fun b!1536300 () Bool)

(declare-fun res!688808 () Bool)

(assert (=> b!1536300 (=> (not res!688808) (not e!982528))))

(declare-fun rulesValidInductive!872 (LexerInterface!2517 List!16347) Bool)

(assert (=> b!1536300 (= res!688808 (rulesValidInductive!872 thiss!15733 rulesArg!359))))

(declare-fun mapNonEmpty!7374 () Bool)

(declare-fun tp!443166 () Bool)

(declare-fun tp!443174 () Bool)

(assert (=> mapNonEmpty!7374 (= mapRes!7375 (and tp!443166 tp!443174))))

(declare-fun mapKey!7376 () (_ BitVec 32))

(declare-fun mapRest!7374 () (Array (_ BitVec 32) List!16349))

(declare-fun mapValue!7374 () List!16349)

(assert (=> mapNonEmpty!7374 (= (arr!2416 (_values!1832 (v!23086 (underlying!3315 (v!23087 (underlying!3316 (cache!1878 cacheFurthestNullable!81))))))) (store mapRest!7374 mapKey!7376 mapValue!7374))))

(declare-fun mapNonEmpty!7375 () Bool)

(declare-fun mapRes!7376 () Bool)

(declare-fun tp!443163 () Bool)

(declare-fun tp!443159 () Bool)

(assert (=> mapNonEmpty!7375 (= mapRes!7376 (and tp!443163 tp!443159))))

(declare-fun mapRest!7376 () (Array (_ BitVec 32) List!16351))

(declare-fun mapKey!7374 () (_ BitVec 32))

(declare-fun mapValue!7376 () List!16351)

(assert (=> mapNonEmpty!7375 (= (arr!2418 (_values!1834 (v!23090 (underlying!3319 (v!23091 (underlying!3320 (cache!1880 cacheDown!708))))))) (store mapRest!7376 mapKey!7374 mapValue!7376))))

(declare-fun b!1536301 () Bool)

(declare-fun e!982519 () Bool)

(declare-fun e!982520 () Bool)

(declare-fun lt!533283 () MutLongMap!1553)

(assert (=> b!1536301 (= e!982519 (and e!982520 ((_ is LongMap!1553) lt!533283)))))

(assert (=> b!1536301 (= lt!533283 (v!23087 (underlying!3316 (cache!1878 cacheFurthestNullable!81))))))

(declare-fun b!1536302 () Bool)

(declare-fun tp!443161 () Bool)

(declare-fun inv!21549 (Conc!5480) Bool)

(assert (=> b!1536302 (= e!982507 (and (inv!21549 (c!251557 input!1460)) tp!443161))))

(declare-fun b!1536303 () Bool)

(declare-fun tp!443157 () Bool)

(assert (=> b!1536303 (= e!982516 (and (inv!21549 (c!251557 (totalInput!2350 cacheFurthestNullable!81))) tp!443157))))

(declare-fun b!1536304 () Bool)

(declare-fun e!982497 () Bool)

(declare-fun e!982527 () Bool)

(assert (=> b!1536304 (= e!982497 e!982527)))

(declare-fun b!1536305 () Bool)

(declare-fun e!982501 () Bool)

(declare-fun tp!443170 () Bool)

(declare-fun mapRes!7374 () Bool)

(assert (=> b!1536305 (= e!982501 (and tp!443170 mapRes!7374))))

(declare-fun condMapEmpty!7376 () Bool)

(declare-fun mapDefault!7375 () List!16350)

(assert (=> b!1536305 (= condMapEmpty!7376 (= (arr!2417 (_values!1833 (v!23088 (underlying!3317 (v!23089 (underlying!3318 (cache!1879 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16350)) mapDefault!7375)))))

(declare-fun mapIsEmpty!7375 () Bool)

(assert (=> mapIsEmpty!7375 mapRes!7376))

(declare-fun b!1536306 () Bool)

(declare-fun e!982526 () Bool)

(declare-fun e!982525 () Bool)

(assert (=> b!1536306 (= e!982526 e!982525)))

(declare-fun b!1536307 () Bool)

(declare-fun tp!443169 () Bool)

(assert (=> b!1536307 (= e!982523 (and (inv!21549 (c!251557 totalInput!496)) tp!443169))))

(declare-fun b!1536308 () Bool)

(assert (=> b!1536308 (= e!982522 e!982508)))

(declare-fun b!1536309 () Bool)

(declare-fun e!982514 () Bool)

(assert (=> b!1536309 (= e!982514 true)))

(declare-fun lt!533286 () Bool)

(declare-fun ruleValid!644 (LexerInterface!2517 Rule!5530) Bool)

(assert (=> b!1536309 (= lt!533286 (ruleValid!644 thiss!15733 (h!21680 rulesArg!359)))))

(declare-fun e!982511 () Bool)

(declare-fun tp!443180 () Bool)

(declare-fun tp!443165 () Bool)

(declare-fun array_inv!1741 (array!5432) Bool)

(declare-fun array_inv!1742 (array!5438) Bool)

(assert (=> b!1536310 (= e!982506 (and tp!443158 tp!443165 tp!443180 (array_inv!1741 (_keys!1849 (v!23090 (underlying!3319 (v!23091 (underlying!3320 (cache!1880 cacheDown!708))))))) (array_inv!1742 (_values!1834 (v!23090 (underlying!3319 (v!23091 (underlying!3320 (cache!1880 cacheDown!708))))))) e!982511))))

(declare-fun tp!443173 () Bool)

(declare-fun tp!443177 () Bool)

(declare-fun array_inv!1743 (array!5434) Bool)

(assert (=> b!1536311 (= e!982525 (and tp!443179 tp!443173 tp!443177 (array_inv!1741 (_keys!1847 (v!23086 (underlying!3315 (v!23087 (underlying!3316 (cache!1878 cacheFurthestNullable!81))))))) (array_inv!1743 (_values!1832 (v!23086 (underlying!3315 (v!23087 (underlying!3316 (cache!1878 cacheFurthestNullable!81))))))) e!982513))))

(declare-fun b!1536312 () Bool)

(declare-fun e!982496 () Bool)

(assert (=> b!1536312 (= e!982496 e!982521)))

(declare-fun b!1536313 () Bool)

(declare-fun res!688805 () Bool)

(assert (=> b!1536313 (=> (not res!688805) (not e!982529))))

(declare-fun valid!1269 (CacheUp!896) Bool)

(assert (=> b!1536313 (= res!688805 (valid!1269 cacheUp!695))))

(declare-fun b!1536314 () Bool)

(declare-fun tp!443156 () Bool)

(assert (=> b!1536314 (= e!982511 (and tp!443156 mapRes!7376))))

(declare-fun condMapEmpty!7374 () Bool)

(declare-fun mapDefault!7376 () List!16351)

(assert (=> b!1536314 (= condMapEmpty!7374 (= (arr!2418 (_values!1834 (v!23090 (underlying!3319 (v!23091 (underlying!3320 (cache!1880 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16351)) mapDefault!7376)))))

(declare-fun tp!443178 () Bool)

(declare-fun e!982518 () Bool)

(declare-fun b!1536315 () Bool)

(declare-fun inv!21542 (String!19051) Bool)

(declare-fun inv!21550 (TokenValueInjection!5570) Bool)

(assert (=> b!1536315 (= e!982509 (and tp!443178 (inv!21542 (tag!3129 (h!21680 rulesArg!359))) (inv!21550 (transformation!2865 (h!21680 rulesArg!359))) e!982518))))

(declare-fun b!1536316 () Bool)

(declare-fun e!982499 () Bool)

(assert (=> b!1536316 (= e!982499 e!982497)))

(declare-fun mapNonEmpty!7376 () Bool)

(declare-fun tp!443176 () Bool)

(declare-fun tp!443182 () Bool)

(assert (=> mapNonEmpty!7376 (= mapRes!7374 (and tp!443176 tp!443182))))

(declare-fun mapRest!7375 () (Array (_ BitVec 32) List!16350))

(declare-fun mapKey!7375 () (_ BitVec 32))

(declare-fun mapValue!7375 () List!16350)

(assert (=> mapNonEmpty!7376 (= (arr!2417 (_values!1833 (v!23088 (underlying!3317 (v!23089 (underlying!3318 (cache!1879 cacheUp!695))))))) (store mapRest!7375 mapKey!7375 mapValue!7375))))

(declare-fun b!1536317 () Bool)

(declare-fun lt!533287 () MutLongMap!1554)

(assert (=> b!1536317 (= e!982517 (and e!982499 ((_ is LongMap!1554) lt!533287)))))

(assert (=> b!1536317 (= lt!533287 (v!23089 (underlying!3318 (cache!1879 cacheUp!695))))))

(assert (=> b!1536318 (= e!982512 (and e!982519 tp!443172))))

(declare-fun b!1536319 () Bool)

(declare-fun res!688802 () Bool)

(assert (=> b!1536319 (=> (not res!688802) (not e!982529))))

(assert (=> b!1536319 (= res!688802 (= (totalInput!2350 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1536320 () Bool)

(declare-fun e!982498 () Bool)

(declare-fun lt!533288 () MutLongMap!1555)

(assert (=> b!1536320 (= e!982498 (and e!982496 ((_ is LongMap!1555) lt!533288)))))

(assert (=> b!1536320 (= lt!533288 (v!23091 (underlying!3320 (cache!1880 cacheDown!708))))))

(assert (=> b!1536321 (= e!982504 (and e!982498 tp!443162))))

(declare-fun b!1536322 () Bool)

(assert (=> b!1536322 (= e!982528 e!982529)))

(declare-fun res!688804 () Bool)

(assert (=> b!1536322 (=> (not res!688804) (not e!982529))))

(declare-fun lt!533285 () List!16346)

(declare-fun isSuffix!318 (List!16346 List!16346) Bool)

(declare-fun list!6410 (BalanceConc!10902) List!16346)

(assert (=> b!1536322 (= res!688804 (isSuffix!318 lt!533285 (list!6410 totalInput!496)))))

(assert (=> b!1536322 (= lt!533285 (list!6410 input!1460))))

(assert (=> b!1536323 (= e!982518 (and tp!443183 tp!443160))))

(declare-fun mapIsEmpty!7376 () Bool)

(assert (=> mapIsEmpty!7376 mapRes!7374))

(declare-fun b!1536324 () Bool)

(assert (=> b!1536324 (= e!982520 e!982526)))

(declare-fun tp!443168 () Bool)

(declare-fun tp!443164 () Bool)

(declare-fun array_inv!1744 (array!5436) Bool)

(assert (=> b!1536325 (= e!982527 (and tp!443175 tp!443164 tp!443168 (array_inv!1741 (_keys!1848 (v!23088 (underlying!3317 (v!23089 (underlying!3318 (cache!1879 cacheUp!695))))))) (array_inv!1744 (_values!1833 (v!23088 (underlying!3317 (v!23089 (underlying!3318 (cache!1879 cacheUp!695))))))) e!982501))))

(declare-fun b!1536326 () Bool)

(assert (=> b!1536326 (= e!982529 (not e!982514))))

(declare-fun res!688806 () Bool)

(assert (=> b!1536326 (=> res!688806 e!982514)))

(assert (=> b!1536326 (= res!688806 (or (and ((_ is Cons!16279) rulesArg!359) ((_ is Nil!16279) (t!140553 rulesArg!359))) (not ((_ is Cons!16279) rulesArg!359))))))

(declare-fun isPrefix!1231 (List!16346 List!16346) Bool)

(assert (=> b!1536326 (isPrefix!1231 lt!533285 lt!533285)))

(declare-datatypes ((Unit!25828 0))(
  ( (Unit!25829) )
))
(declare-fun lt!533284 () Unit!25828)

(declare-fun lemmaIsPrefixRefl!861 (List!16346 List!16346) Unit!25828)

(assert (=> b!1536326 (= lt!533284 (lemmaIsPrefixRefl!861 lt!533285 lt!533285))))

(assert (= (and start!142830 res!688800) b!1536300))

(assert (= (and b!1536300 res!688808) b!1536292))

(assert (= (and b!1536292 res!688807) b!1536322))

(assert (= (and b!1536322 res!688804) b!1536313))

(assert (= (and b!1536313 res!688805) b!1536294))

(assert (= (and b!1536294 res!688803) b!1536297))

(assert (= (and b!1536297 res!688801) b!1536319))

(assert (= (and b!1536319 res!688802) b!1536326))

(assert (= (and b!1536326 (not res!688806)) b!1536309))

(assert (= (and b!1536305 condMapEmpty!7376) mapIsEmpty!7376))

(assert (= (and b!1536305 (not condMapEmpty!7376)) mapNonEmpty!7376))

(assert (= b!1536325 b!1536305))

(assert (= b!1536304 b!1536325))

(assert (= b!1536316 b!1536304))

(assert (= (and b!1536317 ((_ is LongMap!1554) (v!23089 (underlying!3318 (cache!1879 cacheUp!695))))) b!1536316))

(assert (= b!1536298 b!1536317))

(assert (= (and b!1536308 ((_ is HashMap!1498) (cache!1879 cacheUp!695))) b!1536298))

(assert (= start!142830 b!1536308))

(assert (= start!142830 b!1536302))

(assert (= (and b!1536314 condMapEmpty!7374) mapIsEmpty!7375))

(assert (= (and b!1536314 (not condMapEmpty!7374)) mapNonEmpty!7375))

(assert (= b!1536310 b!1536314))

(assert (= b!1536291 b!1536310))

(assert (= b!1536312 b!1536291))

(assert (= (and b!1536320 ((_ is LongMap!1555) (v!23091 (underlying!3320 (cache!1880 cacheDown!708))))) b!1536312))

(assert (= b!1536321 b!1536320))

(assert (= (and b!1536299 ((_ is HashMap!1499) (cache!1880 cacheDown!708))) b!1536321))

(assert (= start!142830 b!1536299))

(assert (= start!142830 b!1536307))

(assert (= b!1536315 b!1536323))

(assert (= b!1536295 b!1536315))

(assert (= (and start!142830 ((_ is Cons!16279) rulesArg!359)) b!1536295))

(assert (= (and b!1536293 condMapEmpty!7375) mapIsEmpty!7374))

(assert (= (and b!1536293 (not condMapEmpty!7375)) mapNonEmpty!7374))

(assert (= b!1536311 b!1536293))

(assert (= b!1536306 b!1536311))

(assert (= b!1536324 b!1536306))

(assert (= (and b!1536301 ((_ is LongMap!1553) (v!23087 (underlying!3316 (cache!1878 cacheFurthestNullable!81))))) b!1536324))

(assert (= b!1536318 b!1536301))

(assert (= (and b!1536296 ((_ is HashMap!1497) (cache!1878 cacheFurthestNullable!81))) b!1536318))

(assert (= b!1536296 b!1536303))

(assert (= start!142830 b!1536296))

(declare-fun m!1811608 () Bool)

(assert (=> b!1536296 m!1811608))

(declare-fun m!1811610 () Bool)

(assert (=> b!1536310 m!1811610))

(declare-fun m!1811612 () Bool)

(assert (=> b!1536310 m!1811612))

(declare-fun m!1811614 () Bool)

(assert (=> b!1536300 m!1811614))

(declare-fun m!1811616 () Bool)

(assert (=> mapNonEmpty!7375 m!1811616))

(declare-fun m!1811618 () Bool)

(assert (=> b!1536313 m!1811618))

(declare-fun m!1811620 () Bool)

(assert (=> b!1536315 m!1811620))

(declare-fun m!1811622 () Bool)

(assert (=> b!1536315 m!1811622))

(declare-fun m!1811624 () Bool)

(assert (=> b!1536325 m!1811624))

(declare-fun m!1811626 () Bool)

(assert (=> b!1536325 m!1811626))

(declare-fun m!1811628 () Bool)

(assert (=> start!142830 m!1811628))

(declare-fun m!1811630 () Bool)

(assert (=> start!142830 m!1811630))

(declare-fun m!1811632 () Bool)

(assert (=> start!142830 m!1811632))

(declare-fun m!1811634 () Bool)

(assert (=> start!142830 m!1811634))

(declare-fun m!1811636 () Bool)

(assert (=> start!142830 m!1811636))

(declare-fun m!1811638 () Bool)

(assert (=> b!1536292 m!1811638))

(declare-fun m!1811640 () Bool)

(assert (=> b!1536326 m!1811640))

(declare-fun m!1811642 () Bool)

(assert (=> b!1536326 m!1811642))

(declare-fun m!1811644 () Bool)

(assert (=> mapNonEmpty!7376 m!1811644))

(declare-fun m!1811646 () Bool)

(assert (=> b!1536297 m!1811646))

(declare-fun m!1811648 () Bool)

(assert (=> b!1536303 m!1811648))

(declare-fun m!1811650 () Bool)

(assert (=> b!1536307 m!1811650))

(declare-fun m!1811652 () Bool)

(assert (=> b!1536311 m!1811652))

(declare-fun m!1811654 () Bool)

(assert (=> b!1536311 m!1811654))

(declare-fun m!1811656 () Bool)

(assert (=> mapNonEmpty!7374 m!1811656))

(declare-fun m!1811658 () Bool)

(assert (=> b!1536294 m!1811658))

(declare-fun m!1811660 () Bool)

(assert (=> b!1536309 m!1811660))

(declare-fun m!1811662 () Bool)

(assert (=> b!1536302 m!1811662))

(declare-fun m!1811664 () Bool)

(assert (=> b!1536322 m!1811664))

(assert (=> b!1536322 m!1811664))

(declare-fun m!1811666 () Bool)

(assert (=> b!1536322 m!1811666))

(declare-fun m!1811668 () Bool)

(assert (=> b!1536322 m!1811668))

(check-sat (not mapNonEmpty!7376) b_and!106737 (not b!1536302) (not b!1536296) b_and!106735 (not mapNonEmpty!7374) (not b!1536322) b_and!106739 (not b!1536292) (not b!1536325) b_and!106729 (not b_next!40553) (not b!1536300) (not b!1536303) (not b!1536305) (not b!1536293) b_and!106733 (not b!1536313) (not start!142830) (not b!1536309) (not b_next!40565) (not b_next!40555) (not b_next!40559) b_and!106727 (not b!1536311) (not b!1536297) (not b!1536326) (not b_next!40563) b_and!106731 (not b!1536307) (not b_next!40561) (not b!1536310) (not b!1536294) (not b_next!40557) (not b_next!40551) (not mapNonEmpty!7375) (not b!1536295) b_and!106725 (not b!1536315) (not b!1536314))
(check-sat b_and!106729 b_and!106737 (not b_next!40553) b_and!106733 b_and!106735 (not b_next!40561) (not b_next!40557) (not b_next!40551) b_and!106725 b_and!106739 (not b_next!40565) (not b_next!40555) (not b_next!40559) b_and!106727 (not b_next!40563) b_and!106731)
