; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139406 () Bool)

(assert start!139406)

(declare-fun b!1483376 () Bool)

(declare-fun b_free!38427 () Bool)

(declare-fun b_next!39131 () Bool)

(assert (=> b!1483376 (= b_free!38427 (not b_next!39131))))

(declare-fun tp!421132 () Bool)

(declare-fun b_and!103145 () Bool)

(assert (=> b!1483376 (= tp!421132 b_and!103145)))

(declare-fun b_free!38429 () Bool)

(declare-fun b_next!39133 () Bool)

(assert (=> b!1483376 (= b_free!38429 (not b_next!39133))))

(declare-fun tp!421137 () Bool)

(declare-fun b_and!103147 () Bool)

(assert (=> b!1483376 (= tp!421137 b_and!103147)))

(declare-fun b!1483355 () Bool)

(declare-fun b_free!38431 () Bool)

(declare-fun b_next!39135 () Bool)

(assert (=> b!1483355 (= b_free!38431 (not b_next!39135))))

(declare-fun tp!421139 () Bool)

(declare-fun b_and!103149 () Bool)

(assert (=> b!1483355 (= tp!421139 b_and!103149)))

(declare-fun b!1483345 () Bool)

(declare-fun b_free!38433 () Bool)

(declare-fun b_next!39137 () Bool)

(assert (=> b!1483345 (= b_free!38433 (not b_next!39137))))

(declare-fun tp!421115 () Bool)

(declare-fun b_and!103151 () Bool)

(assert (=> b!1483345 (= tp!421115 b_and!103151)))

(declare-fun b!1483379 () Bool)

(declare-fun b_free!38435 () Bool)

(declare-fun b_next!39139 () Bool)

(assert (=> b!1483379 (= b_free!38435 (not b_next!39139))))

(declare-fun tp!421129 () Bool)

(declare-fun b_and!103153 () Bool)

(assert (=> b!1483379 (= tp!421129 b_and!103153)))

(declare-fun b!1483347 () Bool)

(declare-fun b_free!38437 () Bool)

(declare-fun b_next!39141 () Bool)

(assert (=> b!1483347 (= b_free!38437 (not b_next!39141))))

(declare-fun tp!421122 () Bool)

(declare-fun b_and!103155 () Bool)

(assert (=> b!1483347 (= tp!421122 b_and!103155)))

(declare-fun b!1483372 () Bool)

(declare-fun b_free!38439 () Bool)

(declare-fun b_next!39143 () Bool)

(assert (=> b!1483372 (= b_free!38439 (not b_next!39143))))

(declare-fun tp!421138 () Bool)

(declare-fun b_and!103157 () Bool)

(assert (=> b!1483372 (= tp!421138 b_and!103157)))

(declare-fun b!1483340 () Bool)

(declare-fun b_free!38441 () Bool)

(declare-fun b_next!39145 () Bool)

(assert (=> b!1483340 (= b_free!38441 (not b_next!39145))))

(declare-fun tp!421134 () Bool)

(declare-fun b_and!103159 () Bool)

(assert (=> b!1483340 (= tp!421134 b_and!103159)))

(declare-fun tp!421131 () Bool)

(declare-fun e!948615 () Bool)

(declare-fun tp!421126 () Bool)

(declare-datatypes ((C!8412 0))(
  ( (C!8413 (val!4778 Int)) )
))
(declare-datatypes ((Regex!4117 0))(
  ( (ElementMatch!4117 (c!243103 C!8412)) (Concat!7010 (regOne!8746 Regex!4117) (regTwo!8746 Regex!4117)) (EmptyExpr!4117) (Star!4117 (reg!4446 Regex!4117)) (EmptyLang!4117) (Union!4117 (regOne!8747 Regex!4117) (regTwo!8747 Regex!4117)) )
))
(declare-datatypes ((List!15796 0))(
  ( (Nil!15728) (Cons!15728 (h!21129 Regex!4117) (t!137713 List!15796)) )
))
(declare-datatypes ((Context!1270 0))(
  ( (Context!1271 (exprs!1135 List!15796)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1202 0))(
  ( (tuple3!1203 (_1!8083 (InoxSet Context!1270)) (_2!8083 Int) (_3!892 Int)) )
))
(declare-datatypes ((tuple2!14382 0))(
  ( (tuple2!14383 (_1!8084 tuple3!1202) (_2!8084 Int)) )
))
(declare-datatypes ((List!15797 0))(
  ( (Nil!15729) (Cons!15729 (h!21130 tuple2!14382) (t!137714 List!15797)) )
))
(declare-datatypes ((array!4822 0))(
  ( (array!4823 (arr!2152 (Array (_ BitVec 32) List!15797)) (size!12735 (_ BitVec 32))) )
))
(declare-datatypes ((array!4824 0))(
  ( (array!4825 (arr!2153 (Array (_ BitVec 32) (_ BitVec 64))) (size!12736 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2720 0))(
  ( (LongMapFixedSize!2721 (defaultEntry!1720 Int) (mask!4507 (_ BitVec 32)) (extraKeys!1607 (_ BitVec 32)) (zeroValue!1617 List!15797) (minValue!1617 List!15797) (_size!2801 (_ BitVec 32)) (_keys!1654 array!4824) (_values!1639 array!4822) (_vacant!1421 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5325 0))(
  ( (Cell!5326 (v!22569 LongMapFixedSize!2720)) )
))
(declare-datatypes ((MutLongMap!1360 0))(
  ( (LongMap!1360 (underlying!2929 Cell!5325)) (MutLongMapExt!1359 (__x!9603 Int)) )
))
(declare-datatypes ((Cell!5327 0))(
  ( (Cell!5328 (v!22570 MutLongMap!1360)) )
))
(declare-datatypes ((Hashable!1304 0))(
  ( (HashableExt!1303 (__x!9604 Int)) )
))
(declare-datatypes ((MutableMap!1304 0))(
  ( (MutableMapExt!1303 (__x!9605 Int)) (HashMap!1304 (underlying!2930 Cell!5327) (hashF!3223 Hashable!1304) (_size!2802 (_ BitVec 32)) (defaultValue!1464 Int)) )
))
(declare-datatypes ((List!15798 0))(
  ( (Nil!15730) (Cons!15730 (h!21131 C!8412) (t!137715 List!15798)) )
))
(declare-datatypes ((IArray!10721 0))(
  ( (IArray!10722 (innerList!5418 List!15798)) )
))
(declare-datatypes ((Conc!5358 0))(
  ( (Node!5358 (left!13251 Conc!5358) (right!13581 Conc!5358) (csize!10946 Int) (cheight!5569 Int)) (Leaf!7962 (xs!8113 IArray!10721) (csize!10947 Int)) (Empty!5358) )
))
(declare-datatypes ((BalanceConc!10658 0))(
  ( (BalanceConc!10659 (c!243104 Conc!5358)) )
))
(declare-datatypes ((CacheFurthestNullable!192 0))(
  ( (CacheFurthestNullable!193 (cache!1685 MutableMap!1304) (totalInput!2230 BalanceConc!10658)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!192)

(declare-fun e!948616 () Bool)

(declare-fun array_inv!1565 (array!4824) Bool)

(declare-fun array_inv!1566 (array!4822) Bool)

(assert (=> b!1483340 (= e!948615 (and tp!421134 tp!421131 tp!421126 (array_inv!1565 (_keys!1654 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))) (array_inv!1566 (_values!1639 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))) e!948616))))

(declare-fun b!1483341 () Bool)

(declare-fun e!948593 () Bool)

(assert (=> b!1483341 (= e!948593 e!948615)))

(declare-fun b!1483342 () Bool)

(declare-fun res!670079 () Bool)

(declare-fun e!948600 () Bool)

(assert (=> b!1483342 (=> (not res!670079) (not e!948600))))

(declare-datatypes ((tuple2!14384 0))(
  ( (tuple2!14385 (_1!8085 Context!1270) (_2!8085 C!8412)) )
))
(declare-datatypes ((tuple2!14386 0))(
  ( (tuple2!14387 (_1!8086 tuple2!14384) (_2!8086 (InoxSet Context!1270))) )
))
(declare-datatypes ((List!15799 0))(
  ( (Nil!15731) (Cons!15731 (h!21132 tuple2!14386) (t!137716 List!15799)) )
))
(declare-datatypes ((array!4826 0))(
  ( (array!4827 (arr!2154 (Array (_ BitVec 32) List!15799)) (size!12737 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2722 0))(
  ( (LongMapFixedSize!2723 (defaultEntry!1721 Int) (mask!4508 (_ BitVec 32)) (extraKeys!1608 (_ BitVec 32)) (zeroValue!1618 List!15799) (minValue!1618 List!15799) (_size!2803 (_ BitVec 32)) (_keys!1655 array!4824) (_values!1640 array!4826) (_vacant!1422 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1305 0))(
  ( (HashableExt!1304 (__x!9606 Int)) )
))
(declare-datatypes ((Cell!5329 0))(
  ( (Cell!5330 (v!22571 LongMapFixedSize!2722)) )
))
(declare-datatypes ((MutLongMap!1361 0))(
  ( (LongMap!1361 (underlying!2931 Cell!5329)) (MutLongMapExt!1360 (__x!9607 Int)) )
))
(declare-datatypes ((Cell!5331 0))(
  ( (Cell!5332 (v!22572 MutLongMap!1361)) )
))
(declare-datatypes ((MutableMap!1305 0))(
  ( (MutableMapExt!1304 (__x!9608 Int)) (HashMap!1305 (underlying!2932 Cell!5331) (hashF!3224 Hashable!1305) (_size!2804 (_ BitVec 32)) (defaultValue!1465 Int)) )
))
(declare-datatypes ((CacheUp!770 0))(
  ( (CacheUp!771 (cache!1686 MutableMap!1305)) )
))
(declare-fun cacheUp!616 () CacheUp!770)

(declare-fun valid!1067 (CacheUp!770) Bool)

(assert (=> b!1483342 (= res!670079 (valid!1067 cacheUp!616))))

(declare-fun b!1483343 () Bool)

(declare-fun e!948597 () Bool)

(declare-fun tp!421144 () Bool)

(declare-fun inv!20946 (Conc!5358) Bool)

(assert (=> b!1483343 (= e!948597 (and (inv!20946 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) tp!421144))))

(declare-fun b!1483344 () Bool)

(declare-fun res!670082 () Bool)

(assert (=> b!1483344 (=> (not res!670082) (not e!948600))))

(declare-datatypes ((List!15800 0))(
  ( (Nil!15732) (Cons!15732 (h!21133 (_ BitVec 16)) (t!137717 List!15800)) )
))
(declare-datatypes ((TokenValue!2893 0))(
  ( (FloatLiteralValue!5786 (text!20696 List!15800)) (TokenValueExt!2892 (__x!9609 Int)) (Broken!14465 (value!89518 List!15800)) (Object!2960) (End!2893) (Def!2893) (Underscore!2893) (Match!2893) (Else!2893) (Error!2893) (Case!2893) (If!2893) (Extends!2893) (Abstract!2893) (Class!2893) (Val!2893) (DelimiterValue!5786 (del!2953 List!15800)) (KeywordValue!2899 (value!89519 List!15800)) (CommentValue!5786 (value!89520 List!15800)) (WhitespaceValue!5786 (value!89521 List!15800)) (IndentationValue!2893 (value!89522 List!15800)) (String!18724) (Int32!2893) (Broken!14466 (value!89523 List!15800)) (Boolean!2894) (Unit!25607) (OperatorValue!2896 (op!2953 List!15800)) (IdentifierValue!5786 (value!89524 List!15800)) (IdentifierValue!5787 (value!89525 List!15800)) (WhitespaceValue!5787 (value!89526 List!15800)) (True!5786) (False!5786) (Broken!14467 (value!89527 List!15800)) (Broken!14468 (value!89528 List!15800)) (True!5787) (RightBrace!2893) (RightBracket!2893) (Colon!2893) (Null!2893) (Comma!2893) (LeftBracket!2893) (False!5787) (LeftBrace!2893) (ImaginaryLiteralValue!2893 (text!20697 List!15800)) (StringLiteralValue!8679 (value!89529 List!15800)) (EOFValue!2893 (value!89530 List!15800)) (IdentValue!2893 (value!89531 List!15800)) (DelimiterValue!5787 (value!89532 List!15800)) (DedentValue!2893 (value!89533 List!15800)) (NewLineValue!2893 (value!89534 List!15800)) (IntegerValue!8679 (value!89535 (_ BitVec 32)) (text!20698 List!15800)) (IntegerValue!8680 (value!89536 Int) (text!20699 List!15800)) (Times!2893) (Or!2893) (Equal!2893) (Minus!2893) (Broken!14469 (value!89537 List!15800)) (And!2893) (Div!2893) (LessEqual!2893) (Mod!2893) (Concat!7011) (Not!2893) (Plus!2893) (SpaceValue!2893 (value!89538 List!15800)) (IntegerValue!8681 (value!89539 Int) (text!20700 List!15800)) (StringLiteralValue!8680 (text!20701 List!15800)) (FloatLiteralValue!5787 (text!20702 List!15800)) (BytesLiteralValue!2893 (value!89540 List!15800)) (CommentValue!5787 (value!89541 List!15800)) (StringLiteralValue!8681 (value!89542 List!15800)) (ErrorTokenValue!2893 (msg!2954 List!15800)) )
))
(declare-datatypes ((String!18725 0))(
  ( (String!18726 (value!89543 String)) )
))
(declare-datatypes ((TokenValueInjection!5446 0))(
  ( (TokenValueInjection!5447 (toValue!4142 Int) (toChars!4001 Int)) )
))
(declare-datatypes ((Rule!5406 0))(
  ( (Rule!5407 (regex!2803 Regex!4117) (tag!3067 String!18725) (isSeparator!2803 Bool) (transformation!2803 TokenValueInjection!5446)) )
))
(declare-datatypes ((Token!5268 0))(
  ( (Token!5269 (value!89544 TokenValue!2893) (rule!4580 Rule!5406) (size!12738 Int) (originalCharacters!3665 List!15798)) )
))
(declare-datatypes ((List!15801 0))(
  ( (Nil!15733) (Cons!15733 (h!21134 Token!5268) (t!137718 List!15801)) )
))
(declare-datatypes ((IArray!10723 0))(
  ( (IArray!10724 (innerList!5419 List!15801)) )
))
(declare-datatypes ((Conc!5359 0))(
  ( (Node!5359 (left!13252 Conc!5359) (right!13582 Conc!5359) (csize!10948 Int) (cheight!5570 Int)) (Leaf!7963 (xs!8114 IArray!10723) (csize!10949 Int)) (Empty!5359) )
))
(declare-datatypes ((BalanceConc!10660 0))(
  ( (BalanceConc!10661 (c!243105 Conc!5359)) )
))
(declare-datatypes ((tuple2!14388 0))(
  ( (tuple2!14389 (_1!8087 BalanceConc!10660) (_2!8087 BalanceConc!10658)) )
))
(declare-fun lt!515352 () tuple2!14388)

(declare-fun lt!515354 () tuple2!14388)

(declare-fun list!6251 (BalanceConc!10658) List!15798)

(assert (=> b!1483344 (= res!670082 (= (list!6251 (_2!8087 lt!515352)) (list!6251 (_2!8087 lt!515354))))))

(declare-datatypes ((tuple3!1204 0))(
  ( (tuple3!1205 (_1!8088 Regex!4117) (_2!8088 Context!1270) (_3!893 C!8412)) )
))
(declare-datatypes ((tuple2!14390 0))(
  ( (tuple2!14391 (_1!8089 tuple3!1204) (_2!8089 (InoxSet Context!1270))) )
))
(declare-datatypes ((List!15802 0))(
  ( (Nil!15734) (Cons!15734 (h!21135 tuple2!14390) (t!137719 List!15802)) )
))
(declare-datatypes ((array!4828 0))(
  ( (array!4829 (arr!2155 (Array (_ BitVec 32) List!15802)) (size!12739 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2724 0))(
  ( (LongMapFixedSize!2725 (defaultEntry!1722 Int) (mask!4509 (_ BitVec 32)) (extraKeys!1609 (_ BitVec 32)) (zeroValue!1619 List!15802) (minValue!1619 List!15802) (_size!2805 (_ BitVec 32)) (_keys!1656 array!4824) (_values!1641 array!4828) (_vacant!1423 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5333 0))(
  ( (Cell!5334 (v!22573 LongMapFixedSize!2724)) )
))
(declare-datatypes ((MutLongMap!1362 0))(
  ( (LongMap!1362 (underlying!2933 Cell!5333)) (MutLongMapExt!1361 (__x!9610 Int)) )
))
(declare-datatypes ((Cell!5335 0))(
  ( (Cell!5336 (v!22574 MutLongMap!1362)) )
))
(declare-datatypes ((Hashable!1306 0))(
  ( (HashableExt!1305 (__x!9611 Int)) )
))
(declare-datatypes ((MutableMap!1306 0))(
  ( (MutableMapExt!1305 (__x!9612 Int)) (HashMap!1306 (underlying!2934 Cell!5335) (hashF!3225 Hashable!1306) (_size!2806 (_ BitVec 32)) (defaultValue!1466 Int)) )
))
(declare-datatypes ((CacheDown!774 0))(
  ( (CacheDown!775 (cache!1687 MutableMap!1306)) )
))
(declare-fun cacheDown!629 () CacheDown!774)

(declare-fun tp!421135 () Bool)

(declare-fun tp!421142 () Bool)

(declare-fun e!948592 () Bool)

(declare-fun e!948605 () Bool)

(declare-fun array_inv!1567 (array!4828) Bool)

(assert (=> b!1483345 (= e!948605 (and tp!421115 tp!421135 tp!421142 (array_inv!1565 (_keys!1656 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))) (array_inv!1567 (_values!1641 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))) e!948592))))

(declare-fun mapNonEmpty!6498 () Bool)

(declare-fun mapRes!6499 () Bool)

(declare-fun tp!421118 () Bool)

(declare-fun tp!421140 () Bool)

(assert (=> mapNonEmpty!6498 (= mapRes!6499 (and tp!421118 tp!421140))))

(declare-fun mapKey!6500 () (_ BitVec 32))

(declare-fun mapRest!6498 () (Array (_ BitVec 32) List!15802))

(declare-fun mapValue!6500 () List!15802)

(assert (=> mapNonEmpty!6498 (= (arr!2155 (_values!1641 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))) (store mapRest!6498 mapKey!6500 mapValue!6500))))

(declare-fun b!1483346 () Bool)

(declare-fun e!948619 () Bool)

(declare-fun input!1102 () BalanceConc!10658)

(declare-fun tp!421121 () Bool)

(assert (=> b!1483346 (= e!948619 (and (inv!20946 (c!243104 input!1102)) tp!421121))))

(declare-fun tp!421120 () Bool)

(declare-fun e!948599 () Bool)

(declare-fun tp!421123 () Bool)

(declare-fun e!948586 () Bool)

(declare-fun array_inv!1568 (array!4826) Bool)

(assert (=> b!1483347 (= e!948599 (and tp!421122 tp!421123 tp!421120 (array_inv!1565 (_keys!1655 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))) (array_inv!1568 (_values!1640 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))) e!948586))))

(declare-fun b!1483348 () Bool)

(declare-fun res!670080 () Bool)

(assert (=> b!1483348 (=> (not res!670080) (not e!948600))))

(declare-fun valid!1068 (CacheDown!774) Bool)

(assert (=> b!1483348 (= res!670080 (valid!1068 cacheDown!629))))

(declare-fun b!1483349 () Bool)

(declare-fun e!948609 () Bool)

(declare-fun treated!70 () BalanceConc!10658)

(declare-fun tp!421125 () Bool)

(assert (=> b!1483349 (= e!948609 (and (inv!20946 (c!243104 treated!70)) tp!421125))))

(declare-fun b!1483350 () Bool)

(declare-fun e!948608 () Bool)

(declare-fun e!948587 () Bool)

(assert (=> b!1483350 (= e!948608 e!948587)))

(declare-fun b!1483351 () Bool)

(declare-fun res!670081 () Bool)

(declare-fun e!948610 () Bool)

(assert (=> b!1483351 (=> (not res!670081) (not e!948610))))

(declare-datatypes ((List!15803 0))(
  ( (Nil!15735) (Cons!15735 (h!21136 Rule!5406) (t!137720 List!15803)) )
))
(declare-fun rules!1640 () List!15803)

(declare-fun isEmpty!9833 (List!15803) Bool)

(assert (=> b!1483351 (= res!670081 (not (isEmpty!9833 rules!1640)))))

(declare-fun b!1483352 () Bool)

(declare-fun res!670072 () Bool)

(assert (=> b!1483352 (=> (not res!670072) (not e!948600))))

(declare-fun totalInput!458 () BalanceConc!10658)

(assert (=> b!1483352 (= res!670072 (= (totalInput!2230 cacheFurthestNullable!64) totalInput!458))))

(declare-fun mapIsEmpty!6498 () Bool)

(assert (=> mapIsEmpty!6498 mapRes!6499))

(declare-fun b!1483353 () Bool)

(declare-fun e!948613 () Bool)

(declare-fun e!948602 () Bool)

(assert (=> b!1483353 (= e!948613 e!948602)))

(declare-fun b!1483354 () Bool)

(declare-fun res!670083 () Bool)

(assert (=> b!1483354 (=> (not res!670083) (not e!948600))))

(declare-fun valid!1069 (CacheFurthestNullable!192) Bool)

(assert (=> b!1483354 (= res!670083 (valid!1069 cacheFurthestNullable!64))))

(declare-fun e!948604 () Bool)

(declare-fun e!948601 () Bool)

(assert (=> b!1483355 (= e!948604 (and e!948601 tp!421139))))

(declare-fun mapNonEmpty!6499 () Bool)

(declare-fun mapRes!6498 () Bool)

(declare-fun tp!421133 () Bool)

(declare-fun tp!421124 () Bool)

(assert (=> mapNonEmpty!6499 (= mapRes!6498 (and tp!421133 tp!421124))))

(declare-fun mapValue!6499 () List!15797)

(declare-fun mapKey!6498 () (_ BitVec 32))

(declare-fun mapRest!6500 () (Array (_ BitVec 32) List!15797))

(assert (=> mapNonEmpty!6499 (= (arr!2152 (_values!1639 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))) (store mapRest!6500 mapKey!6498 mapValue!6499))))

(declare-fun b!1483356 () Bool)

(declare-fun e!948595 () Bool)

(declare-fun acc!392 () BalanceConc!10660)

(declare-fun tp!421128 () Bool)

(declare-fun inv!20947 (Conc!5359) Bool)

(assert (=> b!1483356 (= e!948595 (and (inv!20947 (c!243105 acc!392)) tp!421128))))

(declare-fun b!1483357 () Bool)

(declare-fun tp!421127 () Bool)

(assert (=> b!1483357 (= e!948592 (and tp!421127 mapRes!6499))))

(declare-fun condMapEmpty!6499 () Bool)

(declare-fun mapDefault!6498 () List!15802)

(assert (=> b!1483357 (= condMapEmpty!6499 (= (arr!2155 (_values!1641 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15802)) mapDefault!6498)))))

(declare-fun b!1483358 () Bool)

(declare-fun e!948617 () Bool)

(declare-fun e!948603 () Bool)

(declare-fun lt!515355 () MutLongMap!1361)

(get-info :version)

(assert (=> b!1483358 (= e!948617 (and e!948603 ((_ is LongMap!1361) lt!515355)))))

(assert (=> b!1483358 (= lt!515355 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))

(declare-fun mapIsEmpty!6499 () Bool)

(assert (=> mapIsEmpty!6499 mapRes!6498))

(declare-fun b!1483359 () Bool)

(declare-fun e!948620 () Bool)

(assert (=> b!1483359 (= e!948603 e!948620)))

(declare-fun b!1483360 () Bool)

(declare-fun e!948594 () Bool)

(declare-fun inv!20948 (BalanceConc!10658) Bool)

(assert (=> b!1483360 (= e!948594 (and e!948604 (inv!20948 (totalInput!2230 cacheFurthestNullable!64)) e!948597))))

(declare-fun b!1483361 () Bool)

(declare-fun e!948612 () Bool)

(declare-fun e!948588 () Bool)

(assert (=> b!1483361 (= e!948612 e!948588)))

(declare-fun b!1483362 () Bool)

(declare-fun e!948596 () Bool)

(declare-fun lt!515351 () MutLongMap!1362)

(assert (=> b!1483362 (= e!948596 (and e!948613 ((_ is LongMap!1362) lt!515351)))))

(assert (=> b!1483362 (= lt!515351 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))

(declare-fun b!1483363 () Bool)

(declare-fun e!948622 () Bool)

(declare-fun tp!421143 () Bool)

(assert (=> b!1483363 (= e!948622 (and (inv!20946 (c!243104 totalInput!458)) tp!421143))))

(declare-fun b!1483364 () Bool)

(declare-fun e!948607 () Bool)

(assert (=> b!1483364 (= e!948607 e!948593)))

(declare-fun mapIsEmpty!6500 () Bool)

(declare-fun mapRes!6500 () Bool)

(assert (=> mapIsEmpty!6500 mapRes!6500))

(declare-fun b!1483365 () Bool)

(declare-fun lt!515349 () MutLongMap!1360)

(assert (=> b!1483365 (= e!948601 (and e!948607 ((_ is LongMap!1360) lt!515349)))))

(assert (=> b!1483365 (= lt!515349 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))

(declare-fun mapNonEmpty!6500 () Bool)

(declare-fun tp!421117 () Bool)

(declare-fun tp!421116 () Bool)

(assert (=> mapNonEmpty!6500 (= mapRes!6500 (and tp!421117 tp!421116))))

(declare-fun mapValue!6498 () List!15799)

(declare-fun mapRest!6499 () (Array (_ BitVec 32) List!15799))

(declare-fun mapKey!6499 () (_ BitVec 32))

(assert (=> mapNonEmpty!6500 (= (arr!2154 (_values!1640 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))) (store mapRest!6499 mapKey!6499 mapValue!6498))))

(declare-fun b!1483366 () Bool)

(declare-fun e!948614 () Bool)

(assert (=> b!1483366 (= e!948600 (not e!948614))))

(declare-fun res!670071 () Bool)

(assert (=> b!1483366 (=> res!670071 e!948614)))

(declare-fun lt!515348 () List!15798)

(declare-fun lt!515357 () List!15798)

(declare-fun isSuffix!274 (List!15798 List!15798) Bool)

(assert (=> b!1483366 (= res!670071 (not (isSuffix!274 lt!515348 lt!515357)))))

(declare-fun lt!515356 () List!15798)

(assert (=> b!1483366 (isSuffix!274 lt!515348 lt!515356)))

(declare-datatypes ((Unit!25608 0))(
  ( (Unit!25609) )
))
(declare-fun lt!515347 () Unit!25608)

(declare-fun lt!515350 () List!15798)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!252 (List!15798 List!15798) Unit!25608)

(assert (=> b!1483366 (= lt!515347 (lemmaConcatTwoListThenFSndIsSuffix!252 lt!515350 lt!515348))))

(declare-fun b!1483367 () Bool)

(declare-fun res!670078 () Bool)

(assert (=> b!1483367 (=> (not res!670078) (not e!948610))))

(declare-datatypes ((LexerInterface!2459 0))(
  ( (LexerInterfaceExt!2456 (__x!9613 Int)) (Lexer!2457) )
))
(declare-fun thiss!13241 () LexerInterface!2459)

(declare-fun rulesInvariant!2247 (LexerInterface!2459 List!15803) Bool)

(assert (=> b!1483367 (= res!670078 (rulesInvariant!2247 thiss!13241 rules!1640))))

(declare-fun b!1483368 () Bool)

(declare-fun e!948591 () Bool)

(assert (=> b!1483368 (= e!948591 e!948600)))

(declare-fun res!670074 () Bool)

(assert (=> b!1483368 (=> (not res!670074) (not e!948600))))

(declare-fun list!6252 (BalanceConc!10660) List!15801)

(declare-fun ++!4241 (BalanceConc!10660 BalanceConc!10660) BalanceConc!10660)

(assert (=> b!1483368 (= res!670074 (= (list!6252 (_1!8087 lt!515352)) (list!6252 (++!4241 acc!392 (_1!8087 lt!515354)))))))

(declare-fun lexRec!297 (LexerInterface!2459 List!15803 BalanceConc!10658) tuple2!14388)

(assert (=> b!1483368 (= lt!515354 (lexRec!297 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1483368 (= lt!515352 (lexRec!297 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1483369 () Bool)

(declare-fun rulesValidInductive!845 (LexerInterface!2459 List!15803) Bool)

(assert (=> b!1483369 (= e!948614 (rulesValidInductive!845 thiss!13241 rules!1640))))

(declare-fun res!670076 () Bool)

(assert (=> start!139406 (=> (not res!670076) (not e!948610))))

(assert (=> start!139406 (= res!670076 ((_ is Lexer!2457) thiss!13241))))

(assert (=> start!139406 e!948610))

(declare-fun inv!20949 (BalanceConc!10660) Bool)

(assert (=> start!139406 (and (inv!20949 acc!392) e!948595)))

(declare-fun inv!20950 (CacheUp!770) Bool)

(assert (=> start!139406 (and (inv!20950 cacheUp!616) e!948608)))

(declare-fun inv!20951 (CacheDown!774) Bool)

(assert (=> start!139406 (and (inv!20951 cacheDown!629) e!948612)))

(assert (=> start!139406 (and (inv!20948 input!1102) e!948619)))

(assert (=> start!139406 (and (inv!20948 treated!70) e!948609)))

(assert (=> start!139406 true))

(declare-fun e!948598 () Bool)

(assert (=> start!139406 e!948598))

(declare-fun inv!20952 (CacheFurthestNullable!192) Bool)

(assert (=> start!139406 (and (inv!20952 cacheFurthestNullable!64) e!948594)))

(assert (=> start!139406 (and (inv!20948 totalInput!458) e!948622)))

(declare-fun b!1483370 () Bool)

(declare-fun res!670077 () Bool)

(assert (=> b!1483370 (=> (not res!670077) (not e!948591))))

(declare-fun lt!515353 () tuple2!14388)

(declare-fun isEmpty!9834 (List!15798) Bool)

(assert (=> b!1483370 (= res!670077 (isEmpty!9834 (list!6251 (_2!8087 lt!515353))))))

(declare-fun b!1483371 () Bool)

(assert (=> b!1483371 (= e!948620 e!948599)))

(assert (=> b!1483372 (= e!948587 (and e!948617 tp!421138))))

(declare-fun b!1483373 () Bool)

(declare-fun e!948618 () Bool)

(assert (=> b!1483373 (= e!948618 e!948591)))

(declare-fun res!670075 () Bool)

(assert (=> b!1483373 (=> (not res!670075) (not e!948591))))

(assert (=> b!1483373 (= res!670075 (= (list!6252 (_1!8087 lt!515353)) (list!6252 acc!392)))))

(assert (=> b!1483373 (= lt!515353 (lexRec!297 thiss!13241 rules!1640 treated!70))))

(declare-fun tp!421130 () Bool)

(declare-fun e!948589 () Bool)

(declare-fun b!1483374 () Bool)

(declare-fun e!948590 () Bool)

(declare-fun inv!20942 (String!18725) Bool)

(declare-fun inv!20953 (TokenValueInjection!5446) Bool)

(assert (=> b!1483374 (= e!948590 (and tp!421130 (inv!20942 (tag!3067 (h!21136 rules!1640))) (inv!20953 (transformation!2803 (h!21136 rules!1640))) e!948589))))

(declare-fun b!1483375 () Bool)

(declare-fun tp!421141 () Bool)

(assert (=> b!1483375 (= e!948616 (and tp!421141 mapRes!6498))))

(declare-fun condMapEmpty!6498 () Bool)

(declare-fun mapDefault!6499 () List!15797)

(assert (=> b!1483375 (= condMapEmpty!6498 (= (arr!2152 (_values!1639 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15797)) mapDefault!6499)))))

(assert (=> b!1483376 (= e!948589 (and tp!421132 tp!421137))))

(declare-fun b!1483377 () Bool)

(declare-fun tp!421136 () Bool)

(assert (=> b!1483377 (= e!948586 (and tp!421136 mapRes!6500))))

(declare-fun condMapEmpty!6500 () Bool)

(declare-fun mapDefault!6500 () List!15799)

(assert (=> b!1483377 (= condMapEmpty!6500 (= (arr!2154 (_values!1640 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15799)) mapDefault!6500)))))

(declare-fun b!1483378 () Bool)

(declare-fun tp!421119 () Bool)

(assert (=> b!1483378 (= e!948598 (and e!948590 tp!421119))))

(assert (=> b!1483379 (= e!948588 (and e!948596 tp!421129))))

(declare-fun b!1483380 () Bool)

(assert (=> b!1483380 (= e!948610 e!948618)))

(declare-fun res!670073 () Bool)

(assert (=> b!1483380 (=> (not res!670073) (not e!948618))))

(assert (=> b!1483380 (= res!670073 (= lt!515357 lt!515356))))

(declare-fun ++!4242 (List!15798 List!15798) List!15798)

(assert (=> b!1483380 (= lt!515356 (++!4242 lt!515350 lt!515348))))

(assert (=> b!1483380 (= lt!515357 (list!6251 totalInput!458))))

(assert (=> b!1483380 (= lt!515348 (list!6251 input!1102))))

(assert (=> b!1483380 (= lt!515350 (list!6251 treated!70))))

(declare-fun b!1483381 () Bool)

(assert (=> b!1483381 (= e!948602 e!948605)))

(assert (= (and start!139406 res!670076) b!1483351))

(assert (= (and b!1483351 res!670081) b!1483367))

(assert (= (and b!1483367 res!670078) b!1483380))

(assert (= (and b!1483380 res!670073) b!1483373))

(assert (= (and b!1483373 res!670075) b!1483370))

(assert (= (and b!1483370 res!670077) b!1483368))

(assert (= (and b!1483368 res!670074) b!1483344))

(assert (= (and b!1483344 res!670082) b!1483342))

(assert (= (and b!1483342 res!670079) b!1483348))

(assert (= (and b!1483348 res!670080) b!1483354))

(assert (= (and b!1483354 res!670083) b!1483352))

(assert (= (and b!1483352 res!670072) b!1483366))

(assert (= (and b!1483366 (not res!670071)) b!1483369))

(assert (= start!139406 b!1483356))

(assert (= (and b!1483377 condMapEmpty!6500) mapIsEmpty!6500))

(assert (= (and b!1483377 (not condMapEmpty!6500)) mapNonEmpty!6500))

(assert (= b!1483347 b!1483377))

(assert (= b!1483371 b!1483347))

(assert (= b!1483359 b!1483371))

(assert (= (and b!1483358 ((_ is LongMap!1361) (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))) b!1483359))

(assert (= b!1483372 b!1483358))

(assert (= (and b!1483350 ((_ is HashMap!1305) (cache!1686 cacheUp!616))) b!1483372))

(assert (= start!139406 b!1483350))

(assert (= (and b!1483357 condMapEmpty!6499) mapIsEmpty!6498))

(assert (= (and b!1483357 (not condMapEmpty!6499)) mapNonEmpty!6498))

(assert (= b!1483345 b!1483357))

(assert (= b!1483381 b!1483345))

(assert (= b!1483353 b!1483381))

(assert (= (and b!1483362 ((_ is LongMap!1362) (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))) b!1483353))

(assert (= b!1483379 b!1483362))

(assert (= (and b!1483361 ((_ is HashMap!1306) (cache!1687 cacheDown!629))) b!1483379))

(assert (= start!139406 b!1483361))

(assert (= start!139406 b!1483346))

(assert (= start!139406 b!1483349))

(assert (= b!1483374 b!1483376))

(assert (= b!1483378 b!1483374))

(assert (= (and start!139406 ((_ is Cons!15735) rules!1640)) b!1483378))

(assert (= (and b!1483375 condMapEmpty!6498) mapIsEmpty!6499))

(assert (= (and b!1483375 (not condMapEmpty!6498)) mapNonEmpty!6499))

(assert (= b!1483340 b!1483375))

(assert (= b!1483341 b!1483340))

(assert (= b!1483364 b!1483341))

(assert (= (and b!1483365 ((_ is LongMap!1360) (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))) b!1483364))

(assert (= b!1483355 b!1483365))

(assert (= (and b!1483360 ((_ is HashMap!1304) (cache!1685 cacheFurthestNullable!64))) b!1483355))

(assert (= b!1483360 b!1483343))

(assert (= start!139406 b!1483360))

(assert (= start!139406 b!1483363))

(declare-fun m!1729779 () Bool)

(assert (=> b!1483344 m!1729779))

(declare-fun m!1729781 () Bool)

(assert (=> b!1483344 m!1729781))

(declare-fun m!1729783 () Bool)

(assert (=> start!139406 m!1729783))

(declare-fun m!1729785 () Bool)

(assert (=> start!139406 m!1729785))

(declare-fun m!1729787 () Bool)

(assert (=> start!139406 m!1729787))

(declare-fun m!1729789 () Bool)

(assert (=> start!139406 m!1729789))

(declare-fun m!1729791 () Bool)

(assert (=> start!139406 m!1729791))

(declare-fun m!1729793 () Bool)

(assert (=> start!139406 m!1729793))

(declare-fun m!1729795 () Bool)

(assert (=> start!139406 m!1729795))

(declare-fun m!1729797 () Bool)

(assert (=> b!1483366 m!1729797))

(declare-fun m!1729799 () Bool)

(assert (=> b!1483366 m!1729799))

(declare-fun m!1729801 () Bool)

(assert (=> b!1483366 m!1729801))

(declare-fun m!1729803 () Bool)

(assert (=> b!1483356 m!1729803))

(declare-fun m!1729805 () Bool)

(assert (=> b!1483346 m!1729805))

(declare-fun m!1729807 () Bool)

(assert (=> b!1483340 m!1729807))

(declare-fun m!1729809 () Bool)

(assert (=> b!1483340 m!1729809))

(declare-fun m!1729811 () Bool)

(assert (=> b!1483343 m!1729811))

(declare-fun m!1729813 () Bool)

(assert (=> b!1483354 m!1729813))

(declare-fun m!1729815 () Bool)

(assert (=> b!1483345 m!1729815))

(declare-fun m!1729817 () Bool)

(assert (=> b!1483345 m!1729817))

(declare-fun m!1729819 () Bool)

(assert (=> b!1483347 m!1729819))

(declare-fun m!1729821 () Bool)

(assert (=> b!1483347 m!1729821))

(declare-fun m!1729823 () Bool)

(assert (=> mapNonEmpty!6498 m!1729823))

(declare-fun m!1729825 () Bool)

(assert (=> b!1483369 m!1729825))

(declare-fun m!1729827 () Bool)

(assert (=> b!1483370 m!1729827))

(assert (=> b!1483370 m!1729827))

(declare-fun m!1729829 () Bool)

(assert (=> b!1483370 m!1729829))

(declare-fun m!1729831 () Bool)

(assert (=> b!1483367 m!1729831))

(declare-fun m!1729833 () Bool)

(assert (=> b!1483363 m!1729833))

(declare-fun m!1729835 () Bool)

(assert (=> b!1483349 m!1729835))

(declare-fun m!1729837 () Bool)

(assert (=> mapNonEmpty!6499 m!1729837))

(declare-fun m!1729839 () Bool)

(assert (=> b!1483368 m!1729839))

(declare-fun m!1729841 () Bool)

(assert (=> b!1483368 m!1729841))

(assert (=> b!1483368 m!1729839))

(declare-fun m!1729843 () Bool)

(assert (=> b!1483368 m!1729843))

(declare-fun m!1729845 () Bool)

(assert (=> b!1483368 m!1729845))

(declare-fun m!1729847 () Bool)

(assert (=> b!1483368 m!1729847))

(declare-fun m!1729849 () Bool)

(assert (=> b!1483351 m!1729849))

(declare-fun m!1729851 () Bool)

(assert (=> mapNonEmpty!6500 m!1729851))

(declare-fun m!1729853 () Bool)

(assert (=> b!1483374 m!1729853))

(declare-fun m!1729855 () Bool)

(assert (=> b!1483374 m!1729855))

(declare-fun m!1729857 () Bool)

(assert (=> b!1483360 m!1729857))

(declare-fun m!1729859 () Bool)

(assert (=> b!1483380 m!1729859))

(declare-fun m!1729861 () Bool)

(assert (=> b!1483380 m!1729861))

(declare-fun m!1729863 () Bool)

(assert (=> b!1483380 m!1729863))

(declare-fun m!1729865 () Bool)

(assert (=> b!1483380 m!1729865))

(declare-fun m!1729867 () Bool)

(assert (=> b!1483373 m!1729867))

(declare-fun m!1729869 () Bool)

(assert (=> b!1483373 m!1729869))

(declare-fun m!1729871 () Bool)

(assert (=> b!1483373 m!1729871))

(declare-fun m!1729873 () Bool)

(assert (=> b!1483348 m!1729873))

(declare-fun m!1729875 () Bool)

(assert (=> b!1483342 m!1729875))

(check-sat (not b!1483370) (not b!1483378) (not b!1483374) (not b!1483346) (not b!1483347) (not b!1483369) (not b_next!39135) (not b!1483340) b_and!103155 (not b!1483357) (not b_next!39137) (not b!1483348) (not b!1483375) (not mapNonEmpty!6500) (not b!1483342) (not b!1483363) (not b!1483354) (not b!1483345) (not b!1483344) (not start!139406) (not mapNonEmpty!6499) b_and!103153 b_and!103149 (not b_next!39139) (not b_next!39143) (not b!1483368) (not b_next!39145) b_and!103145 (not mapNonEmpty!6498) (not b!1483349) (not b!1483373) b_and!103151 (not b!1483360) b_and!103159 (not b!1483366) (not b!1483343) b_and!103147 (not b!1483380) (not b_next!39131) (not b_next!39141) (not b_next!39133) (not b!1483367) (not b!1483356) (not b!1483351) (not b!1483377) b_and!103157)
(check-sat (not b_next!39137) b_and!103145 b_and!103151 (not b_next!39135) b_and!103155 b_and!103157 b_and!103153 b_and!103149 (not b_next!39139) (not b_next!39143) (not b_next!39145) b_and!103159 b_and!103147 (not b_next!39131) (not b_next!39141) (not b_next!39133))
(get-model)

(declare-fun d!434984 () Bool)

(declare-fun list!6253 (Conc!5359) List!15801)

(assert (=> d!434984 (= (list!6252 (_1!8087 lt!515353)) (list!6253 (c!243105 (_1!8087 lt!515353))))))

(declare-fun bs!346051 () Bool)

(assert (= bs!346051 d!434984))

(declare-fun m!1729877 () Bool)

(assert (=> bs!346051 m!1729877))

(assert (=> b!1483373 d!434984))

(declare-fun d!434986 () Bool)

(assert (=> d!434986 (= (list!6252 acc!392) (list!6253 (c!243105 acc!392)))))

(declare-fun bs!346052 () Bool)

(assert (= bs!346052 d!434986))

(declare-fun m!1729879 () Bool)

(assert (=> bs!346052 m!1729879))

(assert (=> b!1483373 d!434986))

(declare-fun b!1483396 () Bool)

(declare-fun e!948634 () tuple2!14388)

(declare-fun lt!515366 () tuple2!14388)

(declare-datatypes ((tuple2!14392 0))(
  ( (tuple2!14393 (_1!8090 Token!5268) (_2!8090 BalanceConc!10658)) )
))
(declare-datatypes ((Option!2888 0))(
  ( (None!2887) (Some!2887 (v!22575 tuple2!14392)) )
))
(declare-fun lt!515364 () Option!2888)

(declare-fun prepend!434 (BalanceConc!10660 Token!5268) BalanceConc!10660)

(assert (=> b!1483396 (= e!948634 (tuple2!14389 (prepend!434 (_1!8087 lt!515366) (_1!8090 (v!22575 lt!515364))) (_2!8087 lt!515366)))))

(assert (=> b!1483396 (= lt!515366 (lexRec!297 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515364))))))

(declare-fun b!1483397 () Bool)

(declare-fun e!948632 () Bool)

(declare-fun lt!515365 () tuple2!14388)

(assert (=> b!1483397 (= e!948632 (= (list!6251 (_2!8087 lt!515365)) (list!6251 treated!70)))))

(declare-fun b!1483398 () Bool)

(declare-fun res!670090 () Bool)

(declare-fun e!948631 () Bool)

(assert (=> b!1483398 (=> (not res!670090) (not e!948631))))

(declare-datatypes ((tuple2!14394 0))(
  ( (tuple2!14395 (_1!8091 List!15801) (_2!8091 List!15798)) )
))
(declare-fun lexList!725 (LexerInterface!2459 List!15803 List!15798) tuple2!14394)

(assert (=> b!1483398 (= res!670090 (= (list!6252 (_1!8087 lt!515365)) (_1!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 treated!70)))))))

(declare-fun b!1483399 () Bool)

(declare-fun e!948633 () Bool)

(declare-fun isEmpty!9835 (BalanceConc!10660) Bool)

(assert (=> b!1483399 (= e!948633 (not (isEmpty!9835 (_1!8087 lt!515365))))))

(declare-fun b!1483400 () Bool)

(assert (=> b!1483400 (= e!948631 (= (list!6251 (_2!8087 lt!515365)) (_2!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 treated!70)))))))

(declare-fun b!1483401 () Bool)

(assert (=> b!1483401 (= e!948632 e!948633)))

(declare-fun res!670091 () Bool)

(declare-fun size!12740 (BalanceConc!10658) Int)

(assert (=> b!1483401 (= res!670091 (< (size!12740 (_2!8087 lt!515365)) (size!12740 treated!70)))))

(assert (=> b!1483401 (=> (not res!670091) (not e!948633))))

(declare-fun b!1483402 () Bool)

(assert (=> b!1483402 (= e!948634 (tuple2!14389 (BalanceConc!10661 Empty!5359) treated!70))))

(declare-fun d!434988 () Bool)

(assert (=> d!434988 e!948631))

(declare-fun res!670092 () Bool)

(assert (=> d!434988 (=> (not res!670092) (not e!948631))))

(assert (=> d!434988 (= res!670092 e!948632)))

(declare-fun c!243111 () Bool)

(declare-fun size!12741 (BalanceConc!10660) Int)

(assert (=> d!434988 (= c!243111 (> (size!12741 (_1!8087 lt!515365)) 0))))

(assert (=> d!434988 (= lt!515365 e!948634)))

(declare-fun c!243112 () Bool)

(assert (=> d!434988 (= c!243112 ((_ is Some!2887) lt!515364))))

(declare-fun maxPrefixZipperSequence!567 (LexerInterface!2459 List!15803 BalanceConc!10658) Option!2888)

(assert (=> d!434988 (= lt!515364 (maxPrefixZipperSequence!567 thiss!13241 rules!1640 treated!70))))

(assert (=> d!434988 (= (lexRec!297 thiss!13241 rules!1640 treated!70) lt!515365)))

(assert (= (and d!434988 c!243112) b!1483396))

(assert (= (and d!434988 (not c!243112)) b!1483402))

(assert (= (and d!434988 c!243111) b!1483401))

(assert (= (and d!434988 (not c!243111)) b!1483397))

(assert (= (and b!1483401 res!670091) b!1483399))

(assert (= (and d!434988 res!670092) b!1483398))

(assert (= (and b!1483398 res!670090) b!1483400))

(declare-fun m!1729881 () Bool)

(assert (=> d!434988 m!1729881))

(declare-fun m!1729883 () Bool)

(assert (=> d!434988 m!1729883))

(declare-fun m!1729885 () Bool)

(assert (=> b!1483399 m!1729885))

(declare-fun m!1729887 () Bool)

(assert (=> b!1483401 m!1729887))

(declare-fun m!1729889 () Bool)

(assert (=> b!1483401 m!1729889))

(declare-fun m!1729891 () Bool)

(assert (=> b!1483396 m!1729891))

(declare-fun m!1729893 () Bool)

(assert (=> b!1483396 m!1729893))

(declare-fun m!1729895 () Bool)

(assert (=> b!1483397 m!1729895))

(assert (=> b!1483397 m!1729865))

(assert (=> b!1483400 m!1729895))

(assert (=> b!1483400 m!1729865))

(assert (=> b!1483400 m!1729865))

(declare-fun m!1729897 () Bool)

(assert (=> b!1483400 m!1729897))

(declare-fun m!1729899 () Bool)

(assert (=> b!1483398 m!1729899))

(assert (=> b!1483398 m!1729865))

(assert (=> b!1483398 m!1729865))

(assert (=> b!1483398 m!1729897))

(assert (=> b!1483373 d!434988))

(declare-fun d!434990 () Bool)

(declare-fun c!243115 () Bool)

(assert (=> d!434990 (= c!243115 ((_ is Node!5358) (c!243104 input!1102)))))

(declare-fun e!948639 () Bool)

(assert (=> d!434990 (= (inv!20946 (c!243104 input!1102)) e!948639)))

(declare-fun b!1483409 () Bool)

(declare-fun inv!20954 (Conc!5358) Bool)

(assert (=> b!1483409 (= e!948639 (inv!20954 (c!243104 input!1102)))))

(declare-fun b!1483410 () Bool)

(declare-fun e!948640 () Bool)

(assert (=> b!1483410 (= e!948639 e!948640)))

(declare-fun res!670095 () Bool)

(assert (=> b!1483410 (= res!670095 (not ((_ is Leaf!7962) (c!243104 input!1102))))))

(assert (=> b!1483410 (=> res!670095 e!948640)))

(declare-fun b!1483411 () Bool)

(declare-fun inv!20955 (Conc!5358) Bool)

(assert (=> b!1483411 (= e!948640 (inv!20955 (c!243104 input!1102)))))

(assert (= (and d!434990 c!243115) b!1483409))

(assert (= (and d!434990 (not c!243115)) b!1483410))

(assert (= (and b!1483410 (not res!670095)) b!1483411))

(declare-fun m!1729901 () Bool)

(assert (=> b!1483409 m!1729901))

(declare-fun m!1729903 () Bool)

(assert (=> b!1483411 m!1729903))

(assert (=> b!1483346 d!434990))

(declare-fun d!434992 () Bool)

(declare-fun validCacheMapFurthestNullable!37 (MutableMap!1304 BalanceConc!10658) Bool)

(assert (=> d!434992 (= (valid!1069 cacheFurthestNullable!64) (validCacheMapFurthestNullable!37 (cache!1685 cacheFurthestNullable!64) (totalInput!2230 cacheFurthestNullable!64)))))

(declare-fun bs!346053 () Bool)

(assert (= bs!346053 d!434992))

(declare-fun m!1729905 () Bool)

(assert (=> bs!346053 m!1729905))

(assert (=> b!1483354 d!434992))

(declare-fun d!434994 () Bool)

(declare-fun c!243116 () Bool)

(assert (=> d!434994 (= c!243116 ((_ is Node!5358) (c!243104 totalInput!458)))))

(declare-fun e!948641 () Bool)

(assert (=> d!434994 (= (inv!20946 (c!243104 totalInput!458)) e!948641)))

(declare-fun b!1483412 () Bool)

(assert (=> b!1483412 (= e!948641 (inv!20954 (c!243104 totalInput!458)))))

(declare-fun b!1483413 () Bool)

(declare-fun e!948642 () Bool)

(assert (=> b!1483413 (= e!948641 e!948642)))

(declare-fun res!670096 () Bool)

(assert (=> b!1483413 (= res!670096 (not ((_ is Leaf!7962) (c!243104 totalInput!458))))))

(assert (=> b!1483413 (=> res!670096 e!948642)))

(declare-fun b!1483414 () Bool)

(assert (=> b!1483414 (= e!948642 (inv!20955 (c!243104 totalInput!458)))))

(assert (= (and d!434994 c!243116) b!1483412))

(assert (= (and d!434994 (not c!243116)) b!1483413))

(assert (= (and b!1483413 (not res!670096)) b!1483414))

(declare-fun m!1729907 () Bool)

(assert (=> b!1483412 m!1729907))

(declare-fun m!1729909 () Bool)

(assert (=> b!1483414 m!1729909))

(assert (=> b!1483363 d!434994))

(declare-fun d!434996 () Bool)

(assert (=> d!434996 (= (array_inv!1565 (_keys!1656 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))) (bvsge (size!12736 (_keys!1656 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1483345 d!434996))

(declare-fun d!434998 () Bool)

(assert (=> d!434998 (= (array_inv!1567 (_values!1641 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))) (bvsge (size!12739 (_values!1641 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1483345 d!434998))

(declare-fun d!435000 () Bool)

(assert (=> d!435000 (= (isEmpty!9834 (list!6251 (_2!8087 lt!515353))) ((_ is Nil!15730) (list!6251 (_2!8087 lt!515353))))))

(assert (=> b!1483370 d!435000))

(declare-fun d!435002 () Bool)

(declare-fun list!6254 (Conc!5358) List!15798)

(assert (=> d!435002 (= (list!6251 (_2!8087 lt!515353)) (list!6254 (c!243104 (_2!8087 lt!515353))))))

(declare-fun bs!346054 () Bool)

(assert (= bs!346054 d!435002))

(declare-fun m!1729911 () Bool)

(assert (=> bs!346054 m!1729911))

(assert (=> b!1483370 d!435002))

(declare-fun d!435004 () Bool)

(assert (=> d!435004 (= (list!6251 (_2!8087 lt!515352)) (list!6254 (c!243104 (_2!8087 lt!515352))))))

(declare-fun bs!346055 () Bool)

(assert (= bs!346055 d!435004))

(declare-fun m!1729913 () Bool)

(assert (=> bs!346055 m!1729913))

(assert (=> b!1483344 d!435004))

(declare-fun d!435006 () Bool)

(assert (=> d!435006 (= (list!6251 (_2!8087 lt!515354)) (list!6254 (c!243104 (_2!8087 lt!515354))))))

(declare-fun bs!346056 () Bool)

(assert (= bs!346056 d!435006))

(declare-fun m!1729915 () Bool)

(assert (=> bs!346056 m!1729915))

(assert (=> b!1483344 d!435006))

(declare-fun b!1483425 () Bool)

(declare-fun res!670101 () Bool)

(declare-fun e!948648 () Bool)

(assert (=> b!1483425 (=> (not res!670101) (not e!948648))))

(declare-fun lt!515369 () List!15798)

(declare-fun size!12742 (List!15798) Int)

(assert (=> b!1483425 (= res!670101 (= (size!12742 lt!515369) (+ (size!12742 lt!515350) (size!12742 lt!515348))))))

(declare-fun d!435008 () Bool)

(assert (=> d!435008 e!948648))

(declare-fun res!670102 () Bool)

(assert (=> d!435008 (=> (not res!670102) (not e!948648))))

(declare-fun content!2284 (List!15798) (InoxSet C!8412))

(assert (=> d!435008 (= res!670102 (= (content!2284 lt!515369) ((_ map or) (content!2284 lt!515350) (content!2284 lt!515348))))))

(declare-fun e!948647 () List!15798)

(assert (=> d!435008 (= lt!515369 e!948647)))

(declare-fun c!243119 () Bool)

(assert (=> d!435008 (= c!243119 ((_ is Nil!15730) lt!515350))))

(assert (=> d!435008 (= (++!4242 lt!515350 lt!515348) lt!515369)))

(declare-fun b!1483426 () Bool)

(assert (=> b!1483426 (= e!948648 (or (not (= lt!515348 Nil!15730)) (= lt!515369 lt!515350)))))

(declare-fun b!1483424 () Bool)

(assert (=> b!1483424 (= e!948647 (Cons!15730 (h!21131 lt!515350) (++!4242 (t!137715 lt!515350) lt!515348)))))

(declare-fun b!1483423 () Bool)

(assert (=> b!1483423 (= e!948647 lt!515348)))

(assert (= (and d!435008 c!243119) b!1483423))

(assert (= (and d!435008 (not c!243119)) b!1483424))

(assert (= (and d!435008 res!670102) b!1483425))

(assert (= (and b!1483425 res!670101) b!1483426))

(declare-fun m!1729917 () Bool)

(assert (=> b!1483425 m!1729917))

(declare-fun m!1729919 () Bool)

(assert (=> b!1483425 m!1729919))

(declare-fun m!1729921 () Bool)

(assert (=> b!1483425 m!1729921))

(declare-fun m!1729923 () Bool)

(assert (=> d!435008 m!1729923))

(declare-fun m!1729925 () Bool)

(assert (=> d!435008 m!1729925))

(declare-fun m!1729927 () Bool)

(assert (=> d!435008 m!1729927))

(declare-fun m!1729929 () Bool)

(assert (=> b!1483424 m!1729929))

(assert (=> b!1483380 d!435008))

(declare-fun d!435010 () Bool)

(assert (=> d!435010 (= (list!6251 totalInput!458) (list!6254 (c!243104 totalInput!458)))))

(declare-fun bs!346057 () Bool)

(assert (= bs!346057 d!435010))

(declare-fun m!1729931 () Bool)

(assert (=> bs!346057 m!1729931))

(assert (=> b!1483380 d!435010))

(declare-fun d!435012 () Bool)

(assert (=> d!435012 (= (list!6251 input!1102) (list!6254 (c!243104 input!1102)))))

(declare-fun bs!346058 () Bool)

(assert (= bs!346058 d!435012))

(declare-fun m!1729933 () Bool)

(assert (=> bs!346058 m!1729933))

(assert (=> b!1483380 d!435012))

(declare-fun d!435014 () Bool)

(assert (=> d!435014 (= (list!6251 treated!70) (list!6254 (c!243104 treated!70)))))

(declare-fun bs!346059 () Bool)

(assert (= bs!346059 d!435014))

(declare-fun m!1729935 () Bool)

(assert (=> bs!346059 m!1729935))

(assert (=> b!1483380 d!435014))

(declare-fun d!435016 () Bool)

(declare-fun isBalanced!1587 (Conc!5358) Bool)

(assert (=> d!435016 (= (inv!20948 (totalInput!2230 cacheFurthestNullable!64)) (isBalanced!1587 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))))

(declare-fun bs!346060 () Bool)

(assert (= bs!346060 d!435016))

(declare-fun m!1729937 () Bool)

(assert (=> bs!346060 m!1729937))

(assert (=> b!1483360 d!435016))

(declare-fun d!435018 () Bool)

(assert (=> d!435018 true))

(declare-fun lt!515372 () Bool)

(declare-fun lambda!63840 () Int)

(declare-fun forall!3819 (List!15803 Int) Bool)

(assert (=> d!435018 (= lt!515372 (forall!3819 rules!1640 lambda!63840))))

(declare-fun e!948653 () Bool)

(assert (=> d!435018 (= lt!515372 e!948653)))

(declare-fun res!670108 () Bool)

(assert (=> d!435018 (=> res!670108 e!948653)))

(assert (=> d!435018 (= res!670108 (not ((_ is Cons!15735) rules!1640)))))

(assert (=> d!435018 (= (rulesValidInductive!845 thiss!13241 rules!1640) lt!515372)))

(declare-fun b!1483431 () Bool)

(declare-fun e!948654 () Bool)

(assert (=> b!1483431 (= e!948653 e!948654)))

(declare-fun res!670107 () Bool)

(assert (=> b!1483431 (=> (not res!670107) (not e!948654))))

(declare-fun ruleValid!631 (LexerInterface!2459 Rule!5406) Bool)

(assert (=> b!1483431 (= res!670107 (ruleValid!631 thiss!13241 (h!21136 rules!1640)))))

(declare-fun b!1483432 () Bool)

(assert (=> b!1483432 (= e!948654 (rulesValidInductive!845 thiss!13241 (t!137720 rules!1640)))))

(assert (= (and d!435018 (not res!670108)) b!1483431))

(assert (= (and b!1483431 res!670107) b!1483432))

(declare-fun m!1729939 () Bool)

(assert (=> d!435018 m!1729939))

(declare-fun m!1729941 () Bool)

(assert (=> b!1483431 m!1729941))

(declare-fun m!1729943 () Bool)

(assert (=> b!1483432 m!1729943))

(assert (=> b!1483369 d!435018))

(declare-fun d!435020 () Bool)

(declare-fun c!243120 () Bool)

(assert (=> d!435020 (= c!243120 ((_ is Node!5358) (c!243104 (totalInput!2230 cacheFurthestNullable!64))))))

(declare-fun e!948655 () Bool)

(assert (=> d!435020 (= (inv!20946 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) e!948655)))

(declare-fun b!1483435 () Bool)

(assert (=> b!1483435 (= e!948655 (inv!20954 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))))

(declare-fun b!1483436 () Bool)

(declare-fun e!948656 () Bool)

(assert (=> b!1483436 (= e!948655 e!948656)))

(declare-fun res!670109 () Bool)

(assert (=> b!1483436 (= res!670109 (not ((_ is Leaf!7962) (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(assert (=> b!1483436 (=> res!670109 e!948656)))

(declare-fun b!1483437 () Bool)

(assert (=> b!1483437 (= e!948656 (inv!20955 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))))

(assert (= (and d!435020 c!243120) b!1483435))

(assert (= (and d!435020 (not c!243120)) b!1483436))

(assert (= (and b!1483436 (not res!670109)) b!1483437))

(declare-fun m!1729945 () Bool)

(assert (=> b!1483435 m!1729945))

(declare-fun m!1729947 () Bool)

(assert (=> b!1483437 m!1729947))

(assert (=> b!1483343 d!435020))

(declare-fun b!1483438 () Bool)

(declare-fun e!948660 () tuple2!14388)

(declare-fun lt!515375 () tuple2!14388)

(declare-fun lt!515373 () Option!2888)

(assert (=> b!1483438 (= e!948660 (tuple2!14389 (prepend!434 (_1!8087 lt!515375) (_1!8090 (v!22575 lt!515373))) (_2!8087 lt!515375)))))

(assert (=> b!1483438 (= lt!515375 (lexRec!297 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515373))))))

(declare-fun b!1483439 () Bool)

(declare-fun e!948658 () Bool)

(declare-fun lt!515374 () tuple2!14388)

(assert (=> b!1483439 (= e!948658 (= (list!6251 (_2!8087 lt!515374)) (list!6251 totalInput!458)))))

(declare-fun b!1483440 () Bool)

(declare-fun res!670110 () Bool)

(declare-fun e!948657 () Bool)

(assert (=> b!1483440 (=> (not res!670110) (not e!948657))))

(assert (=> b!1483440 (= res!670110 (= (list!6252 (_1!8087 lt!515374)) (_1!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 totalInput!458)))))))

(declare-fun b!1483441 () Bool)

(declare-fun e!948659 () Bool)

(assert (=> b!1483441 (= e!948659 (not (isEmpty!9835 (_1!8087 lt!515374))))))

(declare-fun b!1483442 () Bool)

(assert (=> b!1483442 (= e!948657 (= (list!6251 (_2!8087 lt!515374)) (_2!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 totalInput!458)))))))

(declare-fun b!1483443 () Bool)

(assert (=> b!1483443 (= e!948658 e!948659)))

(declare-fun res!670111 () Bool)

(assert (=> b!1483443 (= res!670111 (< (size!12740 (_2!8087 lt!515374)) (size!12740 totalInput!458)))))

(assert (=> b!1483443 (=> (not res!670111) (not e!948659))))

(declare-fun b!1483444 () Bool)

(assert (=> b!1483444 (= e!948660 (tuple2!14389 (BalanceConc!10661 Empty!5359) totalInput!458))))

(declare-fun d!435022 () Bool)

(assert (=> d!435022 e!948657))

(declare-fun res!670112 () Bool)

(assert (=> d!435022 (=> (not res!670112) (not e!948657))))

(assert (=> d!435022 (= res!670112 e!948658)))

(declare-fun c!243121 () Bool)

(assert (=> d!435022 (= c!243121 (> (size!12741 (_1!8087 lt!515374)) 0))))

(assert (=> d!435022 (= lt!515374 e!948660)))

(declare-fun c!243122 () Bool)

(assert (=> d!435022 (= c!243122 ((_ is Some!2887) lt!515373))))

(assert (=> d!435022 (= lt!515373 (maxPrefixZipperSequence!567 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!435022 (= (lexRec!297 thiss!13241 rules!1640 totalInput!458) lt!515374)))

(assert (= (and d!435022 c!243122) b!1483438))

(assert (= (and d!435022 (not c!243122)) b!1483444))

(assert (= (and d!435022 c!243121) b!1483443))

(assert (= (and d!435022 (not c!243121)) b!1483439))

(assert (= (and b!1483443 res!670111) b!1483441))

(assert (= (and d!435022 res!670112) b!1483440))

(assert (= (and b!1483440 res!670110) b!1483442))

(declare-fun m!1729949 () Bool)

(assert (=> d!435022 m!1729949))

(declare-fun m!1729951 () Bool)

(assert (=> d!435022 m!1729951))

(declare-fun m!1729953 () Bool)

(assert (=> b!1483441 m!1729953))

(declare-fun m!1729955 () Bool)

(assert (=> b!1483443 m!1729955))

(declare-fun m!1729957 () Bool)

(assert (=> b!1483443 m!1729957))

(declare-fun m!1729959 () Bool)

(assert (=> b!1483438 m!1729959))

(declare-fun m!1729961 () Bool)

(assert (=> b!1483438 m!1729961))

(declare-fun m!1729963 () Bool)

(assert (=> b!1483439 m!1729963))

(assert (=> b!1483439 m!1729861))

(assert (=> b!1483442 m!1729963))

(assert (=> b!1483442 m!1729861))

(assert (=> b!1483442 m!1729861))

(declare-fun m!1729965 () Bool)

(assert (=> b!1483442 m!1729965))

(declare-fun m!1729967 () Bool)

(assert (=> b!1483440 m!1729967))

(assert (=> b!1483440 m!1729861))

(assert (=> b!1483440 m!1729861))

(assert (=> b!1483440 m!1729965))

(assert (=> b!1483368 d!435022))

(declare-fun b!1483454 () Bool)

(declare-fun res!670123 () Bool)

(declare-fun e!948663 () Bool)

(assert (=> b!1483454 (=> (not res!670123) (not e!948663))))

(declare-fun height!789 (Conc!5359) Int)

(declare-fun ++!4243 (Conc!5359 Conc!5359) Conc!5359)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1483454 (= res!670123 (<= (height!789 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))) (+ (max!0 (height!789 (c!243105 acc!392)) (height!789 (c!243105 (_1!8087 lt!515354)))) 1)))))

(declare-fun b!1483455 () Bool)

(declare-fun res!670122 () Bool)

(assert (=> b!1483455 (=> (not res!670122) (not e!948663))))

(assert (=> b!1483455 (= res!670122 (>= (height!789 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))) (max!0 (height!789 (c!243105 acc!392)) (height!789 (c!243105 (_1!8087 lt!515354))))))))

(declare-fun b!1483456 () Bool)

(declare-fun lt!515378 () BalanceConc!10660)

(declare-fun ++!4244 (List!15801 List!15801) List!15801)

(assert (=> b!1483456 (= e!948663 (= (list!6252 lt!515378) (++!4244 (list!6252 acc!392) (list!6252 (_1!8087 lt!515354)))))))

(declare-fun b!1483453 () Bool)

(declare-fun res!670121 () Bool)

(assert (=> b!1483453 (=> (not res!670121) (not e!948663))))

(declare-fun isBalanced!1588 (Conc!5359) Bool)

(assert (=> b!1483453 (= res!670121 (isBalanced!1588 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))))))

(declare-fun d!435024 () Bool)

(assert (=> d!435024 e!948663))

(declare-fun res!670124 () Bool)

(assert (=> d!435024 (=> (not res!670124) (not e!948663))))

(declare-fun appendAssocInst!348 (Conc!5359 Conc!5359) Bool)

(assert (=> d!435024 (= res!670124 (appendAssocInst!348 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))))))

(assert (=> d!435024 (= lt!515378 (BalanceConc!10661 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))))))

(assert (=> d!435024 (= (++!4241 acc!392 (_1!8087 lt!515354)) lt!515378)))

(assert (= (and d!435024 res!670124) b!1483453))

(assert (= (and b!1483453 res!670121) b!1483454))

(assert (= (and b!1483454 res!670123) b!1483455))

(assert (= (and b!1483455 res!670122) b!1483456))

(declare-fun m!1729969 () Bool)

(assert (=> b!1483453 m!1729969))

(assert (=> b!1483453 m!1729969))

(declare-fun m!1729971 () Bool)

(assert (=> b!1483453 m!1729971))

(assert (=> b!1483454 m!1729969))

(declare-fun m!1729973 () Bool)

(assert (=> b!1483454 m!1729973))

(declare-fun m!1729975 () Bool)

(assert (=> b!1483454 m!1729975))

(assert (=> b!1483454 m!1729975))

(assert (=> b!1483454 m!1729973))

(declare-fun m!1729977 () Bool)

(assert (=> b!1483454 m!1729977))

(assert (=> b!1483454 m!1729969))

(declare-fun m!1729979 () Bool)

(assert (=> b!1483454 m!1729979))

(declare-fun m!1729981 () Bool)

(assert (=> d!435024 m!1729981))

(assert (=> d!435024 m!1729969))

(assert (=> b!1483455 m!1729969))

(assert (=> b!1483455 m!1729973))

(assert (=> b!1483455 m!1729975))

(assert (=> b!1483455 m!1729975))

(assert (=> b!1483455 m!1729973))

(assert (=> b!1483455 m!1729977))

(assert (=> b!1483455 m!1729969))

(assert (=> b!1483455 m!1729979))

(declare-fun m!1729983 () Bool)

(assert (=> b!1483456 m!1729983))

(assert (=> b!1483456 m!1729869))

(declare-fun m!1729985 () Bool)

(assert (=> b!1483456 m!1729985))

(assert (=> b!1483456 m!1729869))

(assert (=> b!1483456 m!1729985))

(declare-fun m!1729987 () Bool)

(assert (=> b!1483456 m!1729987))

(assert (=> b!1483368 d!435024))

(declare-fun d!435026 () Bool)

(assert (=> d!435026 (= (list!6252 (++!4241 acc!392 (_1!8087 lt!515354))) (list!6253 (c!243105 (++!4241 acc!392 (_1!8087 lt!515354)))))))

(declare-fun bs!346061 () Bool)

(assert (= bs!346061 d!435026))

(declare-fun m!1729989 () Bool)

(assert (=> bs!346061 m!1729989))

(assert (=> b!1483368 d!435026))

(declare-fun d!435028 () Bool)

(assert (=> d!435028 (= (list!6252 (_1!8087 lt!515352)) (list!6253 (c!243105 (_1!8087 lt!515352))))))

(declare-fun bs!346062 () Bool)

(assert (= bs!346062 d!435028))

(declare-fun m!1729991 () Bool)

(assert (=> bs!346062 m!1729991))

(assert (=> b!1483368 d!435028))

(declare-fun b!1483457 () Bool)

(declare-fun e!948667 () tuple2!14388)

(declare-fun lt!515381 () tuple2!14388)

(declare-fun lt!515379 () Option!2888)

(assert (=> b!1483457 (= e!948667 (tuple2!14389 (prepend!434 (_1!8087 lt!515381) (_1!8090 (v!22575 lt!515379))) (_2!8087 lt!515381)))))

(assert (=> b!1483457 (= lt!515381 (lexRec!297 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515379))))))

(declare-fun b!1483458 () Bool)

(declare-fun e!948665 () Bool)

(declare-fun lt!515380 () tuple2!14388)

(assert (=> b!1483458 (= e!948665 (= (list!6251 (_2!8087 lt!515380)) (list!6251 input!1102)))))

(declare-fun b!1483459 () Bool)

(declare-fun res!670125 () Bool)

(declare-fun e!948664 () Bool)

(assert (=> b!1483459 (=> (not res!670125) (not e!948664))))

(assert (=> b!1483459 (= res!670125 (= (list!6252 (_1!8087 lt!515380)) (_1!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 input!1102)))))))

(declare-fun b!1483460 () Bool)

(declare-fun e!948666 () Bool)

(assert (=> b!1483460 (= e!948666 (not (isEmpty!9835 (_1!8087 lt!515380))))))

(declare-fun b!1483461 () Bool)

(assert (=> b!1483461 (= e!948664 (= (list!6251 (_2!8087 lt!515380)) (_2!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 input!1102)))))))

(declare-fun b!1483462 () Bool)

(assert (=> b!1483462 (= e!948665 e!948666)))

(declare-fun res!670126 () Bool)

(assert (=> b!1483462 (= res!670126 (< (size!12740 (_2!8087 lt!515380)) (size!12740 input!1102)))))

(assert (=> b!1483462 (=> (not res!670126) (not e!948666))))

(declare-fun b!1483463 () Bool)

(assert (=> b!1483463 (= e!948667 (tuple2!14389 (BalanceConc!10661 Empty!5359) input!1102))))

(declare-fun d!435030 () Bool)

(assert (=> d!435030 e!948664))

(declare-fun res!670127 () Bool)

(assert (=> d!435030 (=> (not res!670127) (not e!948664))))

(assert (=> d!435030 (= res!670127 e!948665)))

(declare-fun c!243126 () Bool)

(assert (=> d!435030 (= c!243126 (> (size!12741 (_1!8087 lt!515380)) 0))))

(assert (=> d!435030 (= lt!515380 e!948667)))

(declare-fun c!243127 () Bool)

(assert (=> d!435030 (= c!243127 ((_ is Some!2887) lt!515379))))

(assert (=> d!435030 (= lt!515379 (maxPrefixZipperSequence!567 thiss!13241 rules!1640 input!1102))))

(assert (=> d!435030 (= (lexRec!297 thiss!13241 rules!1640 input!1102) lt!515380)))

(assert (= (and d!435030 c!243127) b!1483457))

(assert (= (and d!435030 (not c!243127)) b!1483463))

(assert (= (and d!435030 c!243126) b!1483462))

(assert (= (and d!435030 (not c!243126)) b!1483458))

(assert (= (and b!1483462 res!670126) b!1483460))

(assert (= (and d!435030 res!670127) b!1483459))

(assert (= (and b!1483459 res!670125) b!1483461))

(declare-fun m!1729993 () Bool)

(assert (=> d!435030 m!1729993))

(declare-fun m!1729995 () Bool)

(assert (=> d!435030 m!1729995))

(declare-fun m!1729997 () Bool)

(assert (=> b!1483460 m!1729997))

(declare-fun m!1729999 () Bool)

(assert (=> b!1483462 m!1729999))

(declare-fun m!1730001 () Bool)

(assert (=> b!1483462 m!1730001))

(declare-fun m!1730003 () Bool)

(assert (=> b!1483457 m!1730003))

(declare-fun m!1730005 () Bool)

(assert (=> b!1483457 m!1730005))

(declare-fun m!1730007 () Bool)

(assert (=> b!1483458 m!1730007))

(assert (=> b!1483458 m!1729863))

(assert (=> b!1483461 m!1730007))

(assert (=> b!1483461 m!1729863))

(assert (=> b!1483461 m!1729863))

(declare-fun m!1730009 () Bool)

(assert (=> b!1483461 m!1730009))

(declare-fun m!1730011 () Bool)

(assert (=> b!1483459 m!1730011))

(assert (=> b!1483459 m!1729863))

(assert (=> b!1483459 m!1729863))

(assert (=> b!1483459 m!1730009))

(assert (=> b!1483368 d!435030))

(declare-fun d!435032 () Bool)

(declare-fun validCacheMapUp!124 (MutableMap!1305) Bool)

(assert (=> d!435032 (= (valid!1067 cacheUp!616) (validCacheMapUp!124 (cache!1686 cacheUp!616)))))

(declare-fun bs!346063 () Bool)

(assert (= bs!346063 d!435032))

(declare-fun m!1730013 () Bool)

(assert (=> bs!346063 m!1730013))

(assert (=> b!1483342 d!435032))

(declare-fun d!435034 () Bool)

(assert (=> d!435034 (= (isEmpty!9833 rules!1640) ((_ is Nil!15735) rules!1640))))

(assert (=> b!1483351 d!435034))

(declare-fun d!435036 () Bool)

(declare-fun res!670130 () Bool)

(declare-fun e!948670 () Bool)

(assert (=> d!435036 (=> (not res!670130) (not e!948670))))

(declare-fun rulesValid!1031 (LexerInterface!2459 List!15803) Bool)

(assert (=> d!435036 (= res!670130 (rulesValid!1031 thiss!13241 rules!1640))))

(assert (=> d!435036 (= (rulesInvariant!2247 thiss!13241 rules!1640) e!948670)))

(declare-fun b!1483466 () Bool)

(declare-datatypes ((List!15804 0))(
  ( (Nil!15736) (Cons!15736 (h!21137 String!18725) (t!137721 List!15804)) )
))
(declare-fun noDuplicateTag!1031 (LexerInterface!2459 List!15803 List!15804) Bool)

(assert (=> b!1483466 (= e!948670 (noDuplicateTag!1031 thiss!13241 rules!1640 Nil!15736))))

(assert (= (and d!435036 res!670130) b!1483466))

(declare-fun m!1730015 () Bool)

(assert (=> d!435036 m!1730015))

(declare-fun m!1730017 () Bool)

(assert (=> b!1483466 m!1730017))

(assert (=> b!1483367 d!435036))

(declare-fun d!435038 () Bool)

(declare-fun e!948673 () Bool)

(assert (=> d!435038 e!948673))

(declare-fun res!670133 () Bool)

(assert (=> d!435038 (=> res!670133 e!948673)))

(declare-fun lt!515384 () Bool)

(assert (=> d!435038 (= res!670133 (not lt!515384))))

(declare-fun drop!749 (List!15798 Int) List!15798)

(assert (=> d!435038 (= lt!515384 (= lt!515348 (drop!749 lt!515357 (- (size!12742 lt!515357) (size!12742 lt!515348)))))))

(assert (=> d!435038 (= (isSuffix!274 lt!515348 lt!515357) lt!515384)))

(declare-fun b!1483469 () Bool)

(assert (=> b!1483469 (= e!948673 (>= (size!12742 lt!515357) (size!12742 lt!515348)))))

(assert (= (and d!435038 (not res!670133)) b!1483469))

(declare-fun m!1730019 () Bool)

(assert (=> d!435038 m!1730019))

(assert (=> d!435038 m!1729921))

(declare-fun m!1730021 () Bool)

(assert (=> d!435038 m!1730021))

(assert (=> b!1483469 m!1730019))

(assert (=> b!1483469 m!1729921))

(assert (=> b!1483366 d!435038))

(declare-fun d!435040 () Bool)

(declare-fun e!948674 () Bool)

(assert (=> d!435040 e!948674))

(declare-fun res!670134 () Bool)

(assert (=> d!435040 (=> res!670134 e!948674)))

(declare-fun lt!515385 () Bool)

(assert (=> d!435040 (= res!670134 (not lt!515385))))

(assert (=> d!435040 (= lt!515385 (= lt!515348 (drop!749 lt!515356 (- (size!12742 lt!515356) (size!12742 lt!515348)))))))

(assert (=> d!435040 (= (isSuffix!274 lt!515348 lt!515356) lt!515385)))

(declare-fun b!1483470 () Bool)

(assert (=> b!1483470 (= e!948674 (>= (size!12742 lt!515356) (size!12742 lt!515348)))))

(assert (= (and d!435040 (not res!670134)) b!1483470))

(declare-fun m!1730023 () Bool)

(assert (=> d!435040 m!1730023))

(assert (=> d!435040 m!1729921))

(declare-fun m!1730025 () Bool)

(assert (=> d!435040 m!1730025))

(assert (=> b!1483470 m!1730023))

(assert (=> b!1483470 m!1729921))

(assert (=> b!1483366 d!435040))

(declare-fun d!435042 () Bool)

(assert (=> d!435042 (isSuffix!274 lt!515348 (++!4242 lt!515350 lt!515348))))

(declare-fun lt!515388 () Unit!25608)

(declare-fun choose!9081 (List!15798 List!15798) Unit!25608)

(assert (=> d!435042 (= lt!515388 (choose!9081 lt!515350 lt!515348))))

(assert (=> d!435042 (= (lemmaConcatTwoListThenFSndIsSuffix!252 lt!515350 lt!515348) lt!515388)))

(declare-fun bs!346064 () Bool)

(assert (= bs!346064 d!435042))

(assert (=> bs!346064 m!1729859))

(assert (=> bs!346064 m!1729859))

(declare-fun m!1730027 () Bool)

(assert (=> bs!346064 m!1730027))

(declare-fun m!1730029 () Bool)

(assert (=> bs!346064 m!1730029))

(assert (=> b!1483366 d!435042))

(declare-fun d!435044 () Bool)

(assert (=> d!435044 (= (array_inv!1565 (_keys!1654 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))) (bvsge (size!12736 (_keys!1654 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1483340 d!435044))

(declare-fun d!435046 () Bool)

(assert (=> d!435046 (= (array_inv!1566 (_values!1639 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))) (bvsge (size!12735 (_values!1639 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1483340 d!435046))

(declare-fun d!435048 () Bool)

(assert (=> d!435048 (= (inv!20948 treated!70) (isBalanced!1587 (c!243104 treated!70)))))

(declare-fun bs!346065 () Bool)

(assert (= bs!346065 d!435048))

(declare-fun m!1730031 () Bool)

(assert (=> bs!346065 m!1730031))

(assert (=> start!139406 d!435048))

(declare-fun d!435050 () Bool)

(assert (=> d!435050 (= (inv!20948 input!1102) (isBalanced!1587 (c!243104 input!1102)))))

(declare-fun bs!346066 () Bool)

(assert (= bs!346066 d!435050))

(declare-fun m!1730033 () Bool)

(assert (=> bs!346066 m!1730033))

(assert (=> start!139406 d!435050))

(declare-fun d!435052 () Bool)

(declare-fun res!670137 () Bool)

(declare-fun e!948677 () Bool)

(assert (=> d!435052 (=> (not res!670137) (not e!948677))))

(assert (=> d!435052 (= res!670137 ((_ is HashMap!1304) (cache!1685 cacheFurthestNullable!64)))))

(assert (=> d!435052 (= (inv!20952 cacheFurthestNullable!64) e!948677)))

(declare-fun b!1483473 () Bool)

(assert (=> b!1483473 (= e!948677 (validCacheMapFurthestNullable!37 (cache!1685 cacheFurthestNullable!64) (totalInput!2230 cacheFurthestNullable!64)))))

(assert (= (and d!435052 res!670137) b!1483473))

(assert (=> b!1483473 m!1729905))

(assert (=> start!139406 d!435052))

(declare-fun d!435054 () Bool)

(declare-fun res!670140 () Bool)

(declare-fun e!948680 () Bool)

(assert (=> d!435054 (=> (not res!670140) (not e!948680))))

(assert (=> d!435054 (= res!670140 ((_ is HashMap!1306) (cache!1687 cacheDown!629)))))

(assert (=> d!435054 (= (inv!20951 cacheDown!629) e!948680)))

(declare-fun b!1483476 () Bool)

(declare-fun validCacheMapDown!124 (MutableMap!1306) Bool)

(assert (=> b!1483476 (= e!948680 (validCacheMapDown!124 (cache!1687 cacheDown!629)))))

(assert (= (and d!435054 res!670140) b!1483476))

(declare-fun m!1730035 () Bool)

(assert (=> b!1483476 m!1730035))

(assert (=> start!139406 d!435054))

(declare-fun d!435056 () Bool)

(assert (=> d!435056 (= (inv!20948 totalInput!458) (isBalanced!1587 (c!243104 totalInput!458)))))

(declare-fun bs!346067 () Bool)

(assert (= bs!346067 d!435056))

(declare-fun m!1730037 () Bool)

(assert (=> bs!346067 m!1730037))

(assert (=> start!139406 d!435056))

(declare-fun d!435058 () Bool)

(assert (=> d!435058 (= (inv!20949 acc!392) (isBalanced!1588 (c!243105 acc!392)))))

(declare-fun bs!346068 () Bool)

(assert (= bs!346068 d!435058))

(declare-fun m!1730039 () Bool)

(assert (=> bs!346068 m!1730039))

(assert (=> start!139406 d!435058))

(declare-fun d!435060 () Bool)

(declare-fun res!670143 () Bool)

(declare-fun e!948683 () Bool)

(assert (=> d!435060 (=> (not res!670143) (not e!948683))))

(assert (=> d!435060 (= res!670143 ((_ is HashMap!1305) (cache!1686 cacheUp!616)))))

(assert (=> d!435060 (= (inv!20950 cacheUp!616) e!948683)))

(declare-fun b!1483479 () Bool)

(assert (=> b!1483479 (= e!948683 (validCacheMapUp!124 (cache!1686 cacheUp!616)))))

(assert (= (and d!435060 res!670143) b!1483479))

(assert (=> b!1483479 m!1730013))

(assert (=> start!139406 d!435060))

(declare-fun d!435062 () Bool)

(declare-fun c!243128 () Bool)

(assert (=> d!435062 (= c!243128 ((_ is Node!5358) (c!243104 treated!70)))))

(declare-fun e!948684 () Bool)

(assert (=> d!435062 (= (inv!20946 (c!243104 treated!70)) e!948684)))

(declare-fun b!1483480 () Bool)

(assert (=> b!1483480 (= e!948684 (inv!20954 (c!243104 treated!70)))))

(declare-fun b!1483481 () Bool)

(declare-fun e!948685 () Bool)

(assert (=> b!1483481 (= e!948684 e!948685)))

(declare-fun res!670144 () Bool)

(assert (=> b!1483481 (= res!670144 (not ((_ is Leaf!7962) (c!243104 treated!70))))))

(assert (=> b!1483481 (=> res!670144 e!948685)))

(declare-fun b!1483482 () Bool)

(assert (=> b!1483482 (= e!948685 (inv!20955 (c!243104 treated!70)))))

(assert (= (and d!435062 c!243128) b!1483480))

(assert (= (and d!435062 (not c!243128)) b!1483481))

(assert (= (and b!1483481 (not res!670144)) b!1483482))

(declare-fun m!1730041 () Bool)

(assert (=> b!1483480 m!1730041))

(declare-fun m!1730043 () Bool)

(assert (=> b!1483482 m!1730043))

(assert (=> b!1483349 d!435062))

(declare-fun d!435064 () Bool)

(assert (=> d!435064 (= (valid!1068 cacheDown!629) (validCacheMapDown!124 (cache!1687 cacheDown!629)))))

(declare-fun bs!346069 () Bool)

(assert (= bs!346069 d!435064))

(assert (=> bs!346069 m!1730035))

(assert (=> b!1483348 d!435064))

(declare-fun d!435066 () Bool)

(assert (=> d!435066 (= (inv!20942 (tag!3067 (h!21136 rules!1640))) (= (mod (str.len (value!89543 (tag!3067 (h!21136 rules!1640)))) 2) 0))))

(assert (=> b!1483374 d!435066))

(declare-fun d!435068 () Bool)

(declare-fun res!670147 () Bool)

(declare-fun e!948688 () Bool)

(assert (=> d!435068 (=> (not res!670147) (not e!948688))))

(declare-fun semiInverseModEq!1060 (Int Int) Bool)

(assert (=> d!435068 (= res!670147 (semiInverseModEq!1060 (toChars!4001 (transformation!2803 (h!21136 rules!1640))) (toValue!4142 (transformation!2803 (h!21136 rules!1640)))))))

(assert (=> d!435068 (= (inv!20953 (transformation!2803 (h!21136 rules!1640))) e!948688)))

(declare-fun b!1483485 () Bool)

(declare-fun equivClasses!1019 (Int Int) Bool)

(assert (=> b!1483485 (= e!948688 (equivClasses!1019 (toChars!4001 (transformation!2803 (h!21136 rules!1640))) (toValue!4142 (transformation!2803 (h!21136 rules!1640)))))))

(assert (= (and d!435068 res!670147) b!1483485))

(declare-fun m!1730045 () Bool)

(assert (=> d!435068 m!1730045))

(declare-fun m!1730047 () Bool)

(assert (=> b!1483485 m!1730047))

(assert (=> b!1483374 d!435068))

(declare-fun d!435070 () Bool)

(assert (=> d!435070 (= (array_inv!1565 (_keys!1655 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))) (bvsge (size!12736 (_keys!1655 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1483347 d!435070))

(declare-fun d!435072 () Bool)

(assert (=> d!435072 (= (array_inv!1568 (_values!1640 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))) (bvsge (size!12737 (_values!1640 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1483347 d!435072))

(declare-fun d!435074 () Bool)

(declare-fun c!243131 () Bool)

(assert (=> d!435074 (= c!243131 ((_ is Node!5359) (c!243105 acc!392)))))

(declare-fun e!948693 () Bool)

(assert (=> d!435074 (= (inv!20947 (c!243105 acc!392)) e!948693)))

(declare-fun b!1483492 () Bool)

(declare-fun inv!20956 (Conc!5359) Bool)

(assert (=> b!1483492 (= e!948693 (inv!20956 (c!243105 acc!392)))))

(declare-fun b!1483493 () Bool)

(declare-fun e!948694 () Bool)

(assert (=> b!1483493 (= e!948693 e!948694)))

(declare-fun res!670150 () Bool)

(assert (=> b!1483493 (= res!670150 (not ((_ is Leaf!7963) (c!243105 acc!392))))))

(assert (=> b!1483493 (=> res!670150 e!948694)))

(declare-fun b!1483494 () Bool)

(declare-fun inv!20957 (Conc!5359) Bool)

(assert (=> b!1483494 (= e!948694 (inv!20957 (c!243105 acc!392)))))

(assert (= (and d!435074 c!243131) b!1483492))

(assert (= (and d!435074 (not c!243131)) b!1483493))

(assert (= (and b!1483493 (not res!670150)) b!1483494))

(declare-fun m!1730049 () Bool)

(assert (=> b!1483492 m!1730049))

(declare-fun m!1730051 () Bool)

(assert (=> b!1483494 m!1730051))

(assert (=> b!1483356 d!435074))

(declare-fun b!1483503 () Bool)

(declare-fun tp!421151 () Bool)

(declare-fun e!948700 () Bool)

(declare-fun tp!421152 () Bool)

(assert (=> b!1483503 (= e!948700 (and (inv!20946 (left!13251 (c!243104 input!1102))) tp!421151 (inv!20946 (right!13581 (c!243104 input!1102))) tp!421152))))

(declare-fun b!1483505 () Bool)

(declare-fun e!948699 () Bool)

(declare-fun tp!421153 () Bool)

(assert (=> b!1483505 (= e!948699 tp!421153)))

(declare-fun b!1483504 () Bool)

(declare-fun inv!20958 (IArray!10721) Bool)

(assert (=> b!1483504 (= e!948700 (and (inv!20958 (xs!8113 (c!243104 input!1102))) e!948699))))

(assert (=> b!1483346 (= tp!421121 (and (inv!20946 (c!243104 input!1102)) e!948700))))

(assert (= (and b!1483346 ((_ is Node!5358) (c!243104 input!1102))) b!1483503))

(assert (= b!1483504 b!1483505))

(assert (= (and b!1483346 ((_ is Leaf!7962) (c!243104 input!1102))) b!1483504))

(declare-fun m!1730053 () Bool)

(assert (=> b!1483503 m!1730053))

(declare-fun m!1730055 () Bool)

(assert (=> b!1483503 m!1730055))

(declare-fun m!1730057 () Bool)

(assert (=> b!1483504 m!1730057))

(assert (=> b!1483346 m!1729805))

(declare-fun setIsEmpty!8206 () Bool)

(declare-fun setRes!8207 () Bool)

(assert (=> setIsEmpty!8206 setRes!8207))

(declare-fun setIsEmpty!8207 () Bool)

(declare-fun setRes!8206 () Bool)

(assert (=> setIsEmpty!8207 setRes!8206))

(declare-fun b!1483520 () Bool)

(declare-fun e!948717 () Bool)

(declare-fun tp!421182 () Bool)

(assert (=> b!1483520 (= e!948717 tp!421182)))

(declare-fun b!1483521 () Bool)

(declare-fun e!948715 () Bool)

(declare-fun tp!421176 () Bool)

(assert (=> b!1483521 (= e!948715 tp!421176)))

(declare-fun condMapEmpty!6503 () Bool)

(declare-fun mapDefault!6503 () List!15802)

(assert (=> mapNonEmpty!6498 (= condMapEmpty!6503 (= mapRest!6498 ((as const (Array (_ BitVec 32) List!15802)) mapDefault!6503)))))

(declare-fun e!948714 () Bool)

(declare-fun mapRes!6503 () Bool)

(assert (=> mapNonEmpty!6498 (= tp!421118 (and e!948714 mapRes!6503))))

(declare-fun e!948713 () Bool)

(declare-fun tp!421183 () Bool)

(declare-fun setNonEmpty!8206 () Bool)

(declare-fun setElem!8206 () Context!1270)

(declare-fun inv!20959 (Context!1270) Bool)

(assert (=> setNonEmpty!8206 (= setRes!8206 (and tp!421183 (inv!20959 setElem!8206) e!948713))))

(declare-fun mapValue!6503 () List!15802)

(declare-fun setRest!8207 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8206 (= (_2!8089 (h!21135 mapValue!6503)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8206 true) setRest!8207))))

(declare-fun tp!421180 () Bool)

(declare-fun tp_is_empty!6993 () Bool)

(declare-fun b!1483522 () Bool)

(declare-fun tp!421185 () Bool)

(assert (=> b!1483522 (= e!948714 (and tp!421185 (inv!20959 (_2!8088 (_1!8089 (h!21135 mapDefault!6503)))) e!948717 tp_is_empty!6993 setRes!8207 tp!421180))))

(declare-fun condSetEmpty!8206 () Bool)

(assert (=> b!1483522 (= condSetEmpty!8206 (= (_2!8089 (h!21135 mapDefault!6503)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun mapIsEmpty!6503 () Bool)

(assert (=> mapIsEmpty!6503 mapRes!6503))

(declare-fun e!948718 () Bool)

(declare-fun e!948716 () Bool)

(declare-fun tp!421177 () Bool)

(declare-fun b!1483523 () Bool)

(declare-fun tp!421186 () Bool)

(assert (=> b!1483523 (= e!948718 (and tp!421177 (inv!20959 (_2!8088 (_1!8089 (h!21135 mapValue!6503)))) e!948716 tp_is_empty!6993 setRes!8206 tp!421186))))

(declare-fun condSetEmpty!8207 () Bool)

(assert (=> b!1483523 (= condSetEmpty!8207 (= (_2!8089 (h!21135 mapValue!6503)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1483524 () Bool)

(declare-fun tp!421178 () Bool)

(assert (=> b!1483524 (= e!948716 tp!421178)))

(declare-fun tp!421184 () Bool)

(declare-fun setElem!8207 () Context!1270)

(declare-fun setNonEmpty!8207 () Bool)

(assert (=> setNonEmpty!8207 (= setRes!8207 (and tp!421184 (inv!20959 setElem!8207) e!948715))))

(declare-fun setRest!8206 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8207 (= (_2!8089 (h!21135 mapDefault!6503)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8207 true) setRest!8206))))

(declare-fun mapNonEmpty!6503 () Bool)

(declare-fun tp!421179 () Bool)

(assert (=> mapNonEmpty!6503 (= mapRes!6503 (and tp!421179 e!948718))))

(declare-fun mapKey!6503 () (_ BitVec 32))

(declare-fun mapRest!6503 () (Array (_ BitVec 32) List!15802))

(assert (=> mapNonEmpty!6503 (= mapRest!6498 (store mapRest!6503 mapKey!6503 mapValue!6503))))

(declare-fun b!1483525 () Bool)

(declare-fun tp!421181 () Bool)

(assert (=> b!1483525 (= e!948713 tp!421181)))

(assert (= (and mapNonEmpty!6498 condMapEmpty!6503) mapIsEmpty!6503))

(assert (= (and mapNonEmpty!6498 (not condMapEmpty!6503)) mapNonEmpty!6503))

(assert (= b!1483523 b!1483524))

(assert (= (and b!1483523 condSetEmpty!8207) setIsEmpty!8207))

(assert (= (and b!1483523 (not condSetEmpty!8207)) setNonEmpty!8206))

(assert (= setNonEmpty!8206 b!1483525))

(assert (= (and mapNonEmpty!6503 ((_ is Cons!15734) mapValue!6503)) b!1483523))

(assert (= b!1483522 b!1483520))

(assert (= (and b!1483522 condSetEmpty!8206) setIsEmpty!8206))

(assert (= (and b!1483522 (not condSetEmpty!8206)) setNonEmpty!8207))

(assert (= setNonEmpty!8207 b!1483521))

(assert (= (and mapNonEmpty!6498 ((_ is Cons!15734) mapDefault!6503)) b!1483522))

(declare-fun m!1730059 () Bool)

(assert (=> b!1483523 m!1730059))

(declare-fun m!1730061 () Bool)

(assert (=> setNonEmpty!8206 m!1730061))

(declare-fun m!1730063 () Bool)

(assert (=> b!1483522 m!1730063))

(declare-fun m!1730065 () Bool)

(assert (=> setNonEmpty!8207 m!1730065))

(declare-fun m!1730067 () Bool)

(assert (=> mapNonEmpty!6503 m!1730067))

(declare-fun tp!421201 () Bool)

(declare-fun e!948727 () Bool)

(declare-fun setNonEmpty!8210 () Bool)

(declare-fun setRes!8210 () Bool)

(declare-fun setElem!8210 () Context!1270)

(assert (=> setNonEmpty!8210 (= setRes!8210 (and tp!421201 (inv!20959 setElem!8210) e!948727))))

(declare-fun setRest!8210 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8210 (= (_2!8089 (h!21135 mapValue!6500)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8210 true) setRest!8210))))

(declare-fun tp!421200 () Bool)

(declare-fun tp!421199 () Bool)

(declare-fun b!1483534 () Bool)

(declare-fun e!948725 () Bool)

(declare-fun e!948726 () Bool)

(assert (=> b!1483534 (= e!948725 (and tp!421199 (inv!20959 (_2!8088 (_1!8089 (h!21135 mapValue!6500)))) e!948726 tp_is_empty!6993 setRes!8210 tp!421200))))

(declare-fun condSetEmpty!8210 () Bool)

(assert (=> b!1483534 (= condSetEmpty!8210 (= (_2!8089 (h!21135 mapValue!6500)) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> mapNonEmpty!6498 (= tp!421140 e!948725)))

(declare-fun b!1483535 () Bool)

(declare-fun tp!421198 () Bool)

(assert (=> b!1483535 (= e!948726 tp!421198)))

(declare-fun b!1483536 () Bool)

(declare-fun tp!421197 () Bool)

(assert (=> b!1483536 (= e!948727 tp!421197)))

(declare-fun setIsEmpty!8210 () Bool)

(assert (=> setIsEmpty!8210 setRes!8210))

(assert (= b!1483534 b!1483535))

(assert (= (and b!1483534 condSetEmpty!8210) setIsEmpty!8210))

(assert (= (and b!1483534 (not condSetEmpty!8210)) setNonEmpty!8210))

(assert (= setNonEmpty!8210 b!1483536))

(assert (= (and mapNonEmpty!6498 ((_ is Cons!15734) mapValue!6500)) b!1483534))

(declare-fun m!1730069 () Bool)

(assert (=> setNonEmpty!8210 m!1730069))

(declare-fun m!1730071 () Bool)

(assert (=> b!1483534 m!1730071))

(declare-fun tp!421203 () Bool)

(declare-fun e!948729 () Bool)

(declare-fun tp!421202 () Bool)

(declare-fun b!1483537 () Bool)

(assert (=> b!1483537 (= e!948729 (and (inv!20946 (left!13251 (c!243104 totalInput!458))) tp!421202 (inv!20946 (right!13581 (c!243104 totalInput!458))) tp!421203))))

(declare-fun b!1483539 () Bool)

(declare-fun e!948728 () Bool)

(declare-fun tp!421204 () Bool)

(assert (=> b!1483539 (= e!948728 tp!421204)))

(declare-fun b!1483538 () Bool)

(assert (=> b!1483538 (= e!948729 (and (inv!20958 (xs!8113 (c!243104 totalInput!458))) e!948728))))

(assert (=> b!1483363 (= tp!421143 (and (inv!20946 (c!243104 totalInput!458)) e!948729))))

(assert (= (and b!1483363 ((_ is Node!5358) (c!243104 totalInput!458))) b!1483537))

(assert (= b!1483538 b!1483539))

(assert (= (and b!1483363 ((_ is Leaf!7962) (c!243104 totalInput!458))) b!1483538))

(declare-fun m!1730073 () Bool)

(assert (=> b!1483537 m!1730073))

(declare-fun m!1730075 () Bool)

(assert (=> b!1483537 m!1730075))

(declare-fun m!1730077 () Bool)

(assert (=> b!1483538 m!1730077))

(assert (=> b!1483363 m!1729833))

(declare-fun e!948732 () Bool)

(declare-fun tp!421209 () Bool)

(declare-fun setRes!8211 () Bool)

(declare-fun setElem!8211 () Context!1270)

(declare-fun setNonEmpty!8211 () Bool)

(assert (=> setNonEmpty!8211 (= setRes!8211 (and tp!421209 (inv!20959 setElem!8211) e!948732))))

(declare-fun setRest!8211 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8211 (= (_2!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8211 true) setRest!8211))))

(declare-fun e!948731 () Bool)

(declare-fun tp!421208 () Bool)

(declare-fun b!1483540 () Bool)

(declare-fun e!948730 () Bool)

(declare-fun tp!421207 () Bool)

(assert (=> b!1483540 (= e!948730 (and tp!421207 (inv!20959 (_2!8088 (_1!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))))) e!948731 tp_is_empty!6993 setRes!8211 tp!421208))))

(declare-fun condSetEmpty!8211 () Bool)

(assert (=> b!1483540 (= condSetEmpty!8211 (= (_2!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> b!1483345 (= tp!421135 e!948730)))

(declare-fun b!1483541 () Bool)

(declare-fun tp!421206 () Bool)

(assert (=> b!1483541 (= e!948731 tp!421206)))

(declare-fun b!1483542 () Bool)

(declare-fun tp!421205 () Bool)

(assert (=> b!1483542 (= e!948732 tp!421205)))

(declare-fun setIsEmpty!8211 () Bool)

(assert (=> setIsEmpty!8211 setRes!8211))

(assert (= b!1483540 b!1483541))

(assert (= (and b!1483540 condSetEmpty!8211) setIsEmpty!8211))

(assert (= (and b!1483540 (not condSetEmpty!8211)) setNonEmpty!8211))

(assert (= setNonEmpty!8211 b!1483542))

(assert (= (and b!1483345 ((_ is Cons!15734) (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))) b!1483540))

(declare-fun m!1730079 () Bool)

(assert (=> setNonEmpty!8211 m!1730079))

(declare-fun m!1730081 () Bool)

(assert (=> b!1483540 m!1730081))

(declare-fun setRes!8212 () Bool)

(declare-fun e!948735 () Bool)

(declare-fun setNonEmpty!8212 () Bool)

(declare-fun setElem!8212 () Context!1270)

(declare-fun tp!421214 () Bool)

(assert (=> setNonEmpty!8212 (= setRes!8212 (and tp!421214 (inv!20959 setElem!8212) e!948735))))

(declare-fun setRest!8212 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8212 (= (_2!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8212 true) setRest!8212))))

(declare-fun tp!421212 () Bool)

(declare-fun tp!421213 () Bool)

(declare-fun b!1483543 () Bool)

(declare-fun e!948734 () Bool)

(declare-fun e!948733 () Bool)

(assert (=> b!1483543 (= e!948733 (and tp!421212 (inv!20959 (_2!8088 (_1!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))))) e!948734 tp_is_empty!6993 setRes!8212 tp!421213))))

(declare-fun condSetEmpty!8212 () Bool)

(assert (=> b!1483543 (= condSetEmpty!8212 (= (_2!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> b!1483345 (= tp!421142 e!948733)))

(declare-fun b!1483544 () Bool)

(declare-fun tp!421211 () Bool)

(assert (=> b!1483544 (= e!948734 tp!421211)))

(declare-fun b!1483545 () Bool)

(declare-fun tp!421210 () Bool)

(assert (=> b!1483545 (= e!948735 tp!421210)))

(declare-fun setIsEmpty!8212 () Bool)

(assert (=> setIsEmpty!8212 setRes!8212))

(assert (= b!1483543 b!1483544))

(assert (= (and b!1483543 condSetEmpty!8212) setIsEmpty!8212))

(assert (= (and b!1483543 (not condSetEmpty!8212)) setNonEmpty!8212))

(assert (= setNonEmpty!8212 b!1483545))

(assert (= (and b!1483345 ((_ is Cons!15734) (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))) b!1483543))

(declare-fun m!1730083 () Bool)

(assert (=> setNonEmpty!8212 m!1730083))

(declare-fun m!1730085 () Bool)

(assert (=> b!1483543 m!1730085))

(declare-fun tp!421215 () Bool)

(declare-fun e!948737 () Bool)

(declare-fun tp!421216 () Bool)

(declare-fun b!1483546 () Bool)

(assert (=> b!1483546 (= e!948737 (and (inv!20946 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) tp!421215 (inv!20946 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) tp!421216))))

(declare-fun b!1483548 () Bool)

(declare-fun e!948736 () Bool)

(declare-fun tp!421217 () Bool)

(assert (=> b!1483548 (= e!948736 tp!421217)))

(declare-fun b!1483547 () Bool)

(assert (=> b!1483547 (= e!948737 (and (inv!20958 (xs!8113 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) e!948736))))

(assert (=> b!1483343 (= tp!421144 (and (inv!20946 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) e!948737))))

(assert (= (and b!1483343 ((_ is Node!5358) (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) b!1483546))

(assert (= b!1483547 b!1483548))

(assert (= (and b!1483343 ((_ is Leaf!7962) (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) b!1483547))

(declare-fun m!1730087 () Bool)

(assert (=> b!1483546 m!1730087))

(declare-fun m!1730089 () Bool)

(assert (=> b!1483546 m!1730089))

(declare-fun m!1730091 () Bool)

(assert (=> b!1483547 m!1730091))

(assert (=> b!1483343 m!1729811))

(declare-fun b!1483559 () Bool)

(declare-fun b_free!38443 () Bool)

(declare-fun b_next!39147 () Bool)

(assert (=> b!1483559 (= b_free!38443 (not b_next!39147))))

(declare-fun tp!421228 () Bool)

(declare-fun b_and!103161 () Bool)

(assert (=> b!1483559 (= tp!421228 b_and!103161)))

(declare-fun b_free!38445 () Bool)

(declare-fun b_next!39149 () Bool)

(assert (=> b!1483559 (= b_free!38445 (not b_next!39149))))

(declare-fun tp!421226 () Bool)

(declare-fun b_and!103163 () Bool)

(assert (=> b!1483559 (= tp!421226 b_and!103163)))

(declare-fun e!948746 () Bool)

(assert (=> b!1483559 (= e!948746 (and tp!421228 tp!421226))))

(declare-fun b!1483558 () Bool)

(declare-fun tp!421227 () Bool)

(declare-fun e!948749 () Bool)

(assert (=> b!1483558 (= e!948749 (and tp!421227 (inv!20942 (tag!3067 (h!21136 (t!137720 rules!1640)))) (inv!20953 (transformation!2803 (h!21136 (t!137720 rules!1640)))) e!948746))))

(declare-fun b!1483557 () Bool)

(declare-fun e!948748 () Bool)

(declare-fun tp!421229 () Bool)

(assert (=> b!1483557 (= e!948748 (and e!948749 tp!421229))))

(assert (=> b!1483378 (= tp!421119 e!948748)))

(assert (= b!1483558 b!1483559))

(assert (= b!1483557 b!1483558))

(assert (= (and b!1483378 ((_ is Cons!15735) (t!137720 rules!1640))) b!1483557))

(declare-fun m!1730093 () Bool)

(assert (=> b!1483558 m!1730093))

(declare-fun m!1730095 () Bool)

(assert (=> b!1483558 m!1730095))

(declare-fun b!1483566 () Bool)

(declare-fun e!948754 () Bool)

(declare-fun setRes!8215 () Bool)

(declare-fun tp!421236 () Bool)

(assert (=> b!1483566 (= e!948754 (and setRes!8215 tp!421236))))

(declare-fun condSetEmpty!8215 () Bool)

(assert (=> b!1483566 (= condSetEmpty!8215 (= (_1!8083 (_1!8084 (h!21130 (zeroValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8215 () Bool)

(assert (=> setIsEmpty!8215 setRes!8215))

(declare-fun tp!421238 () Bool)

(declare-fun setNonEmpty!8215 () Bool)

(declare-fun e!948755 () Bool)

(declare-fun setElem!8215 () Context!1270)

(assert (=> setNonEmpty!8215 (= setRes!8215 (and tp!421238 (inv!20959 setElem!8215) e!948755))))

(declare-fun setRest!8215 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8215 (= (_1!8083 (_1!8084 (h!21130 (zeroValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8215 true) setRest!8215))))

(declare-fun b!1483567 () Bool)

(declare-fun tp!421237 () Bool)

(assert (=> b!1483567 (= e!948755 tp!421237)))

(assert (=> b!1483340 (= tp!421131 e!948754)))

(assert (= (and b!1483566 condSetEmpty!8215) setIsEmpty!8215))

(assert (= (and b!1483566 (not condSetEmpty!8215)) setNonEmpty!8215))

(assert (= setNonEmpty!8215 b!1483567))

(assert (= (and b!1483340 ((_ is Cons!15729) (zeroValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64)))))))) b!1483566))

(declare-fun m!1730097 () Bool)

(assert (=> setNonEmpty!8215 m!1730097))

(declare-fun b!1483568 () Bool)

(declare-fun e!948756 () Bool)

(declare-fun setRes!8216 () Bool)

(declare-fun tp!421239 () Bool)

(assert (=> b!1483568 (= e!948756 (and setRes!8216 tp!421239))))

(declare-fun condSetEmpty!8216 () Bool)

(assert (=> b!1483568 (= condSetEmpty!8216 (= (_1!8083 (_1!8084 (h!21130 (minValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8216 () Bool)

(assert (=> setIsEmpty!8216 setRes!8216))

(declare-fun setElem!8216 () Context!1270)

(declare-fun setNonEmpty!8216 () Bool)

(declare-fun e!948757 () Bool)

(declare-fun tp!421241 () Bool)

(assert (=> setNonEmpty!8216 (= setRes!8216 (and tp!421241 (inv!20959 setElem!8216) e!948757))))

(declare-fun setRest!8216 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8216 (= (_1!8083 (_1!8084 (h!21130 (minValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8216 true) setRest!8216))))

(declare-fun b!1483569 () Bool)

(declare-fun tp!421240 () Bool)

(assert (=> b!1483569 (= e!948757 tp!421240)))

(assert (=> b!1483340 (= tp!421126 e!948756)))

(assert (= (and b!1483568 condSetEmpty!8216) setIsEmpty!8216))

(assert (= (and b!1483568 (not condSetEmpty!8216)) setNonEmpty!8216))

(assert (= setNonEmpty!8216 b!1483569))

(assert (= (and b!1483340 ((_ is Cons!15729) (minValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64)))))))) b!1483568))

(declare-fun m!1730099 () Bool)

(assert (=> setNonEmpty!8216 m!1730099))

(declare-fun e!948765 () Bool)

(assert (=> b!1483377 (= tp!421136 e!948765)))

(declare-fun setIsEmpty!8219 () Bool)

(declare-fun setRes!8219 () Bool)

(assert (=> setIsEmpty!8219 setRes!8219))

(declare-fun e!948764 () Bool)

(declare-fun tp!421250 () Bool)

(declare-fun setNonEmpty!8219 () Bool)

(declare-fun setElem!8219 () Context!1270)

(assert (=> setNonEmpty!8219 (= setRes!8219 (and tp!421250 (inv!20959 setElem!8219) e!948764))))

(declare-fun setRest!8219 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8219 (= (_2!8086 (h!21132 mapDefault!6500)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8219 true) setRest!8219))))

(declare-fun b!1483578 () Bool)

(declare-fun tp!421251 () Bool)

(assert (=> b!1483578 (= e!948764 tp!421251)))

(declare-fun tp!421252 () Bool)

(declare-fun e!948766 () Bool)

(declare-fun b!1483579 () Bool)

(assert (=> b!1483579 (= e!948765 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 mapDefault!6500)))) e!948766 tp_is_empty!6993 setRes!8219 tp!421252))))

(declare-fun condSetEmpty!8219 () Bool)

(assert (=> b!1483579 (= condSetEmpty!8219 (= (_2!8086 (h!21132 mapDefault!6500)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1483580 () Bool)

(declare-fun tp!421253 () Bool)

(assert (=> b!1483580 (= e!948766 tp!421253)))

(assert (= b!1483579 b!1483580))

(assert (= (and b!1483579 condSetEmpty!8219) setIsEmpty!8219))

(assert (= (and b!1483579 (not condSetEmpty!8219)) setNonEmpty!8219))

(assert (= setNonEmpty!8219 b!1483578))

(assert (= (and b!1483377 ((_ is Cons!15731) mapDefault!6500)) b!1483579))

(declare-fun m!1730101 () Bool)

(assert (=> setNonEmpty!8219 m!1730101))

(declare-fun m!1730103 () Bool)

(assert (=> b!1483579 m!1730103))

(declare-fun tp!421254 () Bool)

(declare-fun tp!421255 () Bool)

(declare-fun e!948768 () Bool)

(declare-fun b!1483581 () Bool)

(assert (=> b!1483581 (= e!948768 (and (inv!20946 (left!13251 (c!243104 treated!70))) tp!421254 (inv!20946 (right!13581 (c!243104 treated!70))) tp!421255))))

(declare-fun b!1483583 () Bool)

(declare-fun e!948767 () Bool)

(declare-fun tp!421256 () Bool)

(assert (=> b!1483583 (= e!948767 tp!421256)))

(declare-fun b!1483582 () Bool)

(assert (=> b!1483582 (= e!948768 (and (inv!20958 (xs!8113 (c!243104 treated!70))) e!948767))))

(assert (=> b!1483349 (= tp!421125 (and (inv!20946 (c!243104 treated!70)) e!948768))))

(assert (= (and b!1483349 ((_ is Node!5358) (c!243104 treated!70))) b!1483581))

(assert (= b!1483582 b!1483583))

(assert (= (and b!1483349 ((_ is Leaf!7962) (c!243104 treated!70))) b!1483582))

(declare-fun m!1730105 () Bool)

(assert (=> b!1483581 m!1730105))

(declare-fun m!1730107 () Bool)

(assert (=> b!1483581 m!1730107))

(declare-fun m!1730109 () Bool)

(assert (=> b!1483582 m!1730109))

(assert (=> b!1483349 m!1729835))

(declare-fun setNonEmpty!8220 () Bool)

(declare-fun tp!421261 () Bool)

(declare-fun setRes!8220 () Bool)

(declare-fun setElem!8220 () Context!1270)

(declare-fun e!948771 () Bool)

(assert (=> setNonEmpty!8220 (= setRes!8220 (and tp!421261 (inv!20959 setElem!8220) e!948771))))

(declare-fun setRest!8220 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8220 (= (_2!8089 (h!21135 mapDefault!6498)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8220 true) setRest!8220))))

(declare-fun b!1483584 () Bool)

(declare-fun tp!421259 () Bool)

(declare-fun tp!421260 () Bool)

(declare-fun e!948770 () Bool)

(declare-fun e!948769 () Bool)

(assert (=> b!1483584 (= e!948769 (and tp!421259 (inv!20959 (_2!8088 (_1!8089 (h!21135 mapDefault!6498)))) e!948770 tp_is_empty!6993 setRes!8220 tp!421260))))

(declare-fun condSetEmpty!8220 () Bool)

(assert (=> b!1483584 (= condSetEmpty!8220 (= (_2!8089 (h!21135 mapDefault!6498)) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> b!1483357 (= tp!421127 e!948769)))

(declare-fun b!1483585 () Bool)

(declare-fun tp!421258 () Bool)

(assert (=> b!1483585 (= e!948770 tp!421258)))

(declare-fun b!1483586 () Bool)

(declare-fun tp!421257 () Bool)

(assert (=> b!1483586 (= e!948771 tp!421257)))

(declare-fun setIsEmpty!8220 () Bool)

(assert (=> setIsEmpty!8220 setRes!8220))

(assert (= b!1483584 b!1483585))

(assert (= (and b!1483584 condSetEmpty!8220) setIsEmpty!8220))

(assert (= (and b!1483584 (not condSetEmpty!8220)) setNonEmpty!8220))

(assert (= setNonEmpty!8220 b!1483586))

(assert (= (and b!1483357 ((_ is Cons!15734) mapDefault!6498)) b!1483584))

(declare-fun m!1730111 () Bool)

(assert (=> setNonEmpty!8220 m!1730111))

(declare-fun m!1730113 () Bool)

(assert (=> b!1483584 m!1730113))

(declare-fun mapIsEmpty!6506 () Bool)

(declare-fun mapRes!6506 () Bool)

(assert (=> mapIsEmpty!6506 mapRes!6506))

(declare-fun setNonEmpty!8226 () Bool)

(declare-fun tp!421286 () Bool)

(declare-fun setRes!8226 () Bool)

(declare-fun setElem!8225 () Context!1270)

(declare-fun e!948789 () Bool)

(assert (=> setNonEmpty!8226 (= setRes!8226 (and tp!421286 (inv!20959 setElem!8225) e!948789))))

(declare-fun mapValue!6506 () List!15799)

(declare-fun setRest!8226 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8226 (= (_2!8086 (h!21132 mapValue!6506)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8225 true) setRest!8226))))

(declare-fun setIsEmpty!8225 () Bool)

(assert (=> setIsEmpty!8225 setRes!8226))

(declare-fun e!948786 () Bool)

(declare-fun b!1483601 () Bool)

(declare-fun tp!421281 () Bool)

(declare-fun e!948785 () Bool)

(assert (=> b!1483601 (= e!948786 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 mapValue!6506)))) e!948785 tp_is_empty!6993 setRes!8226 tp!421281))))

(declare-fun condSetEmpty!8225 () Bool)

(assert (=> b!1483601 (= condSetEmpty!8225 (= (_2!8086 (h!21132 mapValue!6506)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1483602 () Bool)

(declare-fun e!948784 () Bool)

(declare-fun tp!421288 () Bool)

(assert (=> b!1483602 (= e!948784 tp!421288)))

(declare-fun setIsEmpty!8226 () Bool)

(declare-fun setRes!8225 () Bool)

(assert (=> setIsEmpty!8226 setRes!8225))

(declare-fun b!1483603 () Bool)

(declare-fun tp!421283 () Bool)

(assert (=> b!1483603 (= e!948789 tp!421283)))

(declare-fun condMapEmpty!6506 () Bool)

(declare-fun mapDefault!6506 () List!15799)

(assert (=> mapNonEmpty!6500 (= condMapEmpty!6506 (= mapRest!6499 ((as const (Array (_ BitVec 32) List!15799)) mapDefault!6506)))))

(declare-fun e!948788 () Bool)

(assert (=> mapNonEmpty!6500 (= tp!421117 (and e!948788 mapRes!6506))))

(declare-fun setNonEmpty!8225 () Bool)

(declare-fun setElem!8226 () Context!1270)

(declare-fun e!948787 () Bool)

(declare-fun tp!421285 () Bool)

(assert (=> setNonEmpty!8225 (= setRes!8225 (and tp!421285 (inv!20959 setElem!8226) e!948787))))

(declare-fun setRest!8225 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8225 (= (_2!8086 (h!21132 mapDefault!6506)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8226 true) setRest!8225))))

(declare-fun b!1483604 () Bool)

(declare-fun tp!421284 () Bool)

(assert (=> b!1483604 (= e!948787 tp!421284)))

(declare-fun b!1483605 () Bool)

(declare-fun tp!421287 () Bool)

(assert (=> b!1483605 (= e!948788 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 mapDefault!6506)))) e!948784 tp_is_empty!6993 setRes!8225 tp!421287))))

(declare-fun condSetEmpty!8226 () Bool)

(assert (=> b!1483605 (= condSetEmpty!8226 (= (_2!8086 (h!21132 mapDefault!6506)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun mapNonEmpty!6506 () Bool)

(declare-fun tp!421280 () Bool)

(assert (=> mapNonEmpty!6506 (= mapRes!6506 (and tp!421280 e!948786))))

(declare-fun mapKey!6506 () (_ BitVec 32))

(declare-fun mapRest!6506 () (Array (_ BitVec 32) List!15799))

(assert (=> mapNonEmpty!6506 (= mapRest!6499 (store mapRest!6506 mapKey!6506 mapValue!6506))))

(declare-fun b!1483606 () Bool)

(declare-fun tp!421282 () Bool)

(assert (=> b!1483606 (= e!948785 tp!421282)))

(assert (= (and mapNonEmpty!6500 condMapEmpty!6506) mapIsEmpty!6506))

(assert (= (and mapNonEmpty!6500 (not condMapEmpty!6506)) mapNonEmpty!6506))

(assert (= b!1483601 b!1483606))

(assert (= (and b!1483601 condSetEmpty!8225) setIsEmpty!8225))

(assert (= (and b!1483601 (not condSetEmpty!8225)) setNonEmpty!8226))

(assert (= setNonEmpty!8226 b!1483603))

(assert (= (and mapNonEmpty!6506 ((_ is Cons!15731) mapValue!6506)) b!1483601))

(assert (= b!1483605 b!1483602))

(assert (= (and b!1483605 condSetEmpty!8226) setIsEmpty!8226))

(assert (= (and b!1483605 (not condSetEmpty!8226)) setNonEmpty!8225))

(assert (= setNonEmpty!8225 b!1483604))

(assert (= (and mapNonEmpty!6500 ((_ is Cons!15731) mapDefault!6506)) b!1483605))

(declare-fun m!1730115 () Bool)

(assert (=> setNonEmpty!8225 m!1730115))

(declare-fun m!1730117 () Bool)

(assert (=> b!1483601 m!1730117))

(declare-fun m!1730119 () Bool)

(assert (=> b!1483605 m!1730119))

(declare-fun m!1730121 () Bool)

(assert (=> mapNonEmpty!6506 m!1730121))

(declare-fun m!1730123 () Bool)

(assert (=> setNonEmpty!8226 m!1730123))

(declare-fun e!948791 () Bool)

(assert (=> mapNonEmpty!6500 (= tp!421116 e!948791)))

(declare-fun setIsEmpty!8227 () Bool)

(declare-fun setRes!8227 () Bool)

(assert (=> setIsEmpty!8227 setRes!8227))

(declare-fun setNonEmpty!8227 () Bool)

(declare-fun setElem!8227 () Context!1270)

(declare-fun tp!421289 () Bool)

(declare-fun e!948790 () Bool)

(assert (=> setNonEmpty!8227 (= setRes!8227 (and tp!421289 (inv!20959 setElem!8227) e!948790))))

(declare-fun setRest!8227 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8227 (= (_2!8086 (h!21132 mapValue!6498)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8227 true) setRest!8227))))

(declare-fun b!1483607 () Bool)

(declare-fun tp!421290 () Bool)

(assert (=> b!1483607 (= e!948790 tp!421290)))

(declare-fun b!1483608 () Bool)

(declare-fun tp!421291 () Bool)

(declare-fun e!948792 () Bool)

(assert (=> b!1483608 (= e!948791 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 mapValue!6498)))) e!948792 tp_is_empty!6993 setRes!8227 tp!421291))))

(declare-fun condSetEmpty!8227 () Bool)

(assert (=> b!1483608 (= condSetEmpty!8227 (= (_2!8086 (h!21132 mapValue!6498)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1483609 () Bool)

(declare-fun tp!421292 () Bool)

(assert (=> b!1483609 (= e!948792 tp!421292)))

(assert (= b!1483608 b!1483609))

(assert (= (and b!1483608 condSetEmpty!8227) setIsEmpty!8227))

(assert (= (and b!1483608 (not condSetEmpty!8227)) setNonEmpty!8227))

(assert (= setNonEmpty!8227 b!1483607))

(assert (= (and mapNonEmpty!6500 ((_ is Cons!15731) mapValue!6498)) b!1483608))

(declare-fun m!1730125 () Bool)

(assert (=> setNonEmpty!8227 m!1730125))

(declare-fun m!1730127 () Bool)

(assert (=> b!1483608 m!1730127))

(declare-fun b!1483610 () Bool)

(declare-fun e!948793 () Bool)

(declare-fun setRes!8228 () Bool)

(declare-fun tp!421293 () Bool)

(assert (=> b!1483610 (= e!948793 (and setRes!8228 tp!421293))))

(declare-fun condSetEmpty!8228 () Bool)

(assert (=> b!1483610 (= condSetEmpty!8228 (= (_1!8083 (_1!8084 (h!21130 mapDefault!6499))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8228 () Bool)

(assert (=> setIsEmpty!8228 setRes!8228))

(declare-fun setElem!8228 () Context!1270)

(declare-fun tp!421295 () Bool)

(declare-fun setNonEmpty!8228 () Bool)

(declare-fun e!948794 () Bool)

(assert (=> setNonEmpty!8228 (= setRes!8228 (and tp!421295 (inv!20959 setElem!8228) e!948794))))

(declare-fun setRest!8228 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8228 (= (_1!8083 (_1!8084 (h!21130 mapDefault!6499))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8228 true) setRest!8228))))

(declare-fun b!1483611 () Bool)

(declare-fun tp!421294 () Bool)

(assert (=> b!1483611 (= e!948794 tp!421294)))

(assert (=> b!1483375 (= tp!421141 e!948793)))

(assert (= (and b!1483610 condSetEmpty!8228) setIsEmpty!8228))

(assert (= (and b!1483610 (not condSetEmpty!8228)) setNonEmpty!8228))

(assert (= setNonEmpty!8228 b!1483611))

(assert (= (and b!1483375 ((_ is Cons!15729) mapDefault!6499)) b!1483610))

(declare-fun m!1730129 () Bool)

(assert (=> setNonEmpty!8228 m!1730129))

(declare-fun b!1483624 () Bool)

(declare-fun e!948797 () Bool)

(declare-fun tp!421307 () Bool)

(assert (=> b!1483624 (= e!948797 tp!421307)))

(assert (=> b!1483374 (= tp!421130 e!948797)))

(declare-fun b!1483623 () Bool)

(declare-fun tp!421310 () Bool)

(declare-fun tp!421306 () Bool)

(assert (=> b!1483623 (= e!948797 (and tp!421310 tp!421306))))

(declare-fun b!1483622 () Bool)

(assert (=> b!1483622 (= e!948797 tp_is_empty!6993)))

(declare-fun b!1483625 () Bool)

(declare-fun tp!421309 () Bool)

(declare-fun tp!421308 () Bool)

(assert (=> b!1483625 (= e!948797 (and tp!421309 tp!421308))))

(assert (= (and b!1483374 ((_ is ElementMatch!4117) (regex!2803 (h!21136 rules!1640)))) b!1483622))

(assert (= (and b!1483374 ((_ is Concat!7010) (regex!2803 (h!21136 rules!1640)))) b!1483623))

(assert (= (and b!1483374 ((_ is Star!4117) (regex!2803 (h!21136 rules!1640)))) b!1483624))

(assert (= (and b!1483374 ((_ is Union!4117) (regex!2803 (h!21136 rules!1640)))) b!1483625))

(declare-fun e!948799 () Bool)

(assert (=> b!1483347 (= tp!421123 e!948799)))

(declare-fun setIsEmpty!8229 () Bool)

(declare-fun setRes!8229 () Bool)

(assert (=> setIsEmpty!8229 setRes!8229))

(declare-fun setElem!8229 () Context!1270)

(declare-fun tp!421311 () Bool)

(declare-fun setNonEmpty!8229 () Bool)

(declare-fun e!948798 () Bool)

(assert (=> setNonEmpty!8229 (= setRes!8229 (and tp!421311 (inv!20959 setElem!8229) e!948798))))

(declare-fun setRest!8229 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8229 (= (_2!8086 (h!21132 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8229 true) setRest!8229))))

(declare-fun b!1483626 () Bool)

(declare-fun tp!421312 () Bool)

(assert (=> b!1483626 (= e!948798 tp!421312)))

(declare-fun b!1483627 () Bool)

(declare-fun e!948800 () Bool)

(declare-fun tp!421313 () Bool)

(assert (=> b!1483627 (= e!948799 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))))) e!948800 tp_is_empty!6993 setRes!8229 tp!421313))))

(declare-fun condSetEmpty!8229 () Bool)

(assert (=> b!1483627 (= condSetEmpty!8229 (= (_2!8086 (h!21132 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1483628 () Bool)

(declare-fun tp!421314 () Bool)

(assert (=> b!1483628 (= e!948800 tp!421314)))

(assert (= b!1483627 b!1483628))

(assert (= (and b!1483627 condSetEmpty!8229) setIsEmpty!8229))

(assert (= (and b!1483627 (not condSetEmpty!8229)) setNonEmpty!8229))

(assert (= setNonEmpty!8229 b!1483626))

(assert (= (and b!1483347 ((_ is Cons!15731) (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))) b!1483627))

(declare-fun m!1730131 () Bool)

(assert (=> setNonEmpty!8229 m!1730131))

(declare-fun m!1730133 () Bool)

(assert (=> b!1483627 m!1730133))

(declare-fun e!948802 () Bool)

(assert (=> b!1483347 (= tp!421120 e!948802)))

(declare-fun setIsEmpty!8230 () Bool)

(declare-fun setRes!8230 () Bool)

(assert (=> setIsEmpty!8230 setRes!8230))

(declare-fun setElem!8230 () Context!1270)

(declare-fun e!948801 () Bool)

(declare-fun tp!421315 () Bool)

(declare-fun setNonEmpty!8230 () Bool)

(assert (=> setNonEmpty!8230 (= setRes!8230 (and tp!421315 (inv!20959 setElem!8230) e!948801))))

(declare-fun setRest!8230 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8230 (= (_2!8086 (h!21132 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8230 true) setRest!8230))))

(declare-fun b!1483629 () Bool)

(declare-fun tp!421316 () Bool)

(assert (=> b!1483629 (= e!948801 tp!421316)))

(declare-fun tp!421317 () Bool)

(declare-fun e!948803 () Bool)

(declare-fun b!1483630 () Bool)

(assert (=> b!1483630 (= e!948802 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))))) e!948803 tp_is_empty!6993 setRes!8230 tp!421317))))

(declare-fun condSetEmpty!8230 () Bool)

(assert (=> b!1483630 (= condSetEmpty!8230 (= (_2!8086 (h!21132 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1483631 () Bool)

(declare-fun tp!421318 () Bool)

(assert (=> b!1483631 (= e!948803 tp!421318)))

(assert (= b!1483630 b!1483631))

(assert (= (and b!1483630 condSetEmpty!8230) setIsEmpty!8230))

(assert (= (and b!1483630 (not condSetEmpty!8230)) setNonEmpty!8230))

(assert (= setNonEmpty!8230 b!1483629))

(assert (= (and b!1483347 ((_ is Cons!15731) (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))) b!1483630))

(declare-fun m!1730135 () Bool)

(assert (=> setNonEmpty!8230 m!1730135))

(declare-fun m!1730137 () Bool)

(assert (=> b!1483630 m!1730137))

(declare-fun e!948809 () Bool)

(declare-fun b!1483640 () Bool)

(declare-fun tp!421326 () Bool)

(declare-fun tp!421327 () Bool)

(assert (=> b!1483640 (= e!948809 (and (inv!20947 (left!13252 (c!243105 acc!392))) tp!421327 (inv!20947 (right!13582 (c!243105 acc!392))) tp!421326))))

(declare-fun b!1483642 () Bool)

(declare-fun e!948808 () Bool)

(declare-fun tp!421325 () Bool)

(assert (=> b!1483642 (= e!948808 tp!421325)))

(declare-fun b!1483641 () Bool)

(declare-fun inv!20960 (IArray!10723) Bool)

(assert (=> b!1483641 (= e!948809 (and (inv!20960 (xs!8114 (c!243105 acc!392))) e!948808))))

(assert (=> b!1483356 (= tp!421128 (and (inv!20947 (c!243105 acc!392)) e!948809))))

(assert (= (and b!1483356 ((_ is Node!5359) (c!243105 acc!392))) b!1483640))

(assert (= b!1483641 b!1483642))

(assert (= (and b!1483356 ((_ is Leaf!7963) (c!243105 acc!392))) b!1483641))

(declare-fun m!1730139 () Bool)

(assert (=> b!1483640 m!1730139))

(declare-fun m!1730141 () Bool)

(assert (=> b!1483640 m!1730141))

(declare-fun m!1730143 () Bool)

(assert (=> b!1483641 m!1730143))

(assert (=> b!1483356 m!1729803))

(declare-fun tp!421348 () Bool)

(declare-fun e!948821 () Bool)

(declare-fun setElem!8236 () Context!1270)

(declare-fun setNonEmpty!8235 () Bool)

(declare-fun setRes!8235 () Bool)

(assert (=> setNonEmpty!8235 (= setRes!8235 (and tp!421348 (inv!20959 setElem!8236) e!948821))))

(declare-fun mapValue!6509 () List!15797)

(declare-fun setRest!8235 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8235 (= (_1!8083 (_1!8084 (h!21130 mapValue!6509))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8236 true) setRest!8235))))

(declare-fun setIsEmpty!8235 () Bool)

(declare-fun setRes!8236 () Bool)

(assert (=> setIsEmpty!8235 setRes!8236))

(declare-fun b!1483653 () Bool)

(declare-fun tp!421345 () Bool)

(assert (=> b!1483653 (= e!948821 tp!421345)))

(declare-fun mapNonEmpty!6509 () Bool)

(declare-fun mapRes!6509 () Bool)

(declare-fun tp!421343 () Bool)

(declare-fun e!948818 () Bool)

(assert (=> mapNonEmpty!6509 (= mapRes!6509 (and tp!421343 e!948818))))

(declare-fun mapRest!6509 () (Array (_ BitVec 32) List!15797))

(declare-fun mapKey!6509 () (_ BitVec 32))

(assert (=> mapNonEmpty!6509 (= mapRest!6500 (store mapRest!6509 mapKey!6509 mapValue!6509))))

(declare-fun setIsEmpty!8236 () Bool)

(assert (=> setIsEmpty!8236 setRes!8235))

(declare-fun setElem!8235 () Context!1270)

(declare-fun setNonEmpty!8236 () Bool)

(declare-fun tp!421347 () Bool)

(declare-fun e!948819 () Bool)

(assert (=> setNonEmpty!8236 (= setRes!8236 (and tp!421347 (inv!20959 setElem!8235) e!948819))))

(declare-fun mapDefault!6509 () List!15797)

(declare-fun setRest!8236 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8236 (= (_1!8083 (_1!8084 (h!21130 mapDefault!6509))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8235 true) setRest!8236))))

(declare-fun b!1483654 () Bool)

(declare-fun tp!421342 () Bool)

(assert (=> b!1483654 (= e!948819 tp!421342)))

(declare-fun condMapEmpty!6509 () Bool)

(assert (=> mapNonEmpty!6499 (= condMapEmpty!6509 (= mapRest!6500 ((as const (Array (_ BitVec 32) List!15797)) mapDefault!6509)))))

(declare-fun e!948820 () Bool)

(assert (=> mapNonEmpty!6499 (= tp!421133 (and e!948820 mapRes!6509))))

(declare-fun b!1483655 () Bool)

(declare-fun tp!421346 () Bool)

(assert (=> b!1483655 (= e!948820 (and setRes!8236 tp!421346))))

(declare-fun condSetEmpty!8236 () Bool)

(assert (=> b!1483655 (= condSetEmpty!8236 (= (_1!8083 (_1!8084 (h!21130 mapDefault!6509))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1483656 () Bool)

(declare-fun tp!421344 () Bool)

(assert (=> b!1483656 (= e!948818 (and setRes!8235 tp!421344))))

(declare-fun condSetEmpty!8235 () Bool)

(assert (=> b!1483656 (= condSetEmpty!8235 (= (_1!8083 (_1!8084 (h!21130 mapValue!6509))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun mapIsEmpty!6509 () Bool)

(assert (=> mapIsEmpty!6509 mapRes!6509))

(assert (= (and mapNonEmpty!6499 condMapEmpty!6509) mapIsEmpty!6509))

(assert (= (and mapNonEmpty!6499 (not condMapEmpty!6509)) mapNonEmpty!6509))

(assert (= (and b!1483656 condSetEmpty!8235) setIsEmpty!8236))

(assert (= (and b!1483656 (not condSetEmpty!8235)) setNonEmpty!8235))

(assert (= setNonEmpty!8235 b!1483653))

(assert (= (and mapNonEmpty!6509 ((_ is Cons!15729) mapValue!6509)) b!1483656))

(assert (= (and b!1483655 condSetEmpty!8236) setIsEmpty!8235))

(assert (= (and b!1483655 (not condSetEmpty!8236)) setNonEmpty!8236))

(assert (= setNonEmpty!8236 b!1483654))

(assert (= (and mapNonEmpty!6499 ((_ is Cons!15729) mapDefault!6509)) b!1483655))

(declare-fun m!1730145 () Bool)

(assert (=> setNonEmpty!8235 m!1730145))

(declare-fun m!1730147 () Bool)

(assert (=> mapNonEmpty!6509 m!1730147))

(declare-fun m!1730149 () Bool)

(assert (=> setNonEmpty!8236 m!1730149))

(declare-fun b!1483657 () Bool)

(declare-fun e!948822 () Bool)

(declare-fun setRes!8237 () Bool)

(declare-fun tp!421349 () Bool)

(assert (=> b!1483657 (= e!948822 (and setRes!8237 tp!421349))))

(declare-fun condSetEmpty!8237 () Bool)

(assert (=> b!1483657 (= condSetEmpty!8237 (= (_1!8083 (_1!8084 (h!21130 mapValue!6499))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8237 () Bool)

(assert (=> setIsEmpty!8237 setRes!8237))

(declare-fun tp!421351 () Bool)

(declare-fun setElem!8237 () Context!1270)

(declare-fun e!948823 () Bool)

(declare-fun setNonEmpty!8237 () Bool)

(assert (=> setNonEmpty!8237 (= setRes!8237 (and tp!421351 (inv!20959 setElem!8237) e!948823))))

(declare-fun setRest!8237 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8237 (= (_1!8083 (_1!8084 (h!21130 mapValue!6499))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8237 true) setRest!8237))))

(declare-fun b!1483658 () Bool)

(declare-fun tp!421350 () Bool)

(assert (=> b!1483658 (= e!948823 tp!421350)))

(assert (=> mapNonEmpty!6499 (= tp!421124 e!948822)))

(assert (= (and b!1483657 condSetEmpty!8237) setIsEmpty!8237))

(assert (= (and b!1483657 (not condSetEmpty!8237)) setNonEmpty!8237))

(assert (= setNonEmpty!8237 b!1483658))

(assert (= (and mapNonEmpty!6499 ((_ is Cons!15729) mapValue!6499)) b!1483657))

(declare-fun m!1730151 () Bool)

(assert (=> setNonEmpty!8237 m!1730151))

(check-sat (not b!1483435) (not b_next!39147) (not b!1483476) (not b!1483432) (not b!1483453) (not b!1483583) (not b!1483607) (not b_next!39137) tp_is_empty!6993 (not b!1483546) (not d!435040) (not d!435048) (not b!1483504) (not setNonEmpty!8212) (not setNonEmpty!8207) (not b!1483608) (not b!1483642) (not d!435004) (not setNonEmpty!8219) (not b!1483536) (not d!435026) (not d!435068) (not b!1483399) b_and!103161 (not b!1483628) (not setNonEmpty!8229) (not b!1483541) (not b!1483439) (not d!435056) (not b!1483494) (not b!1483412) (not b!1483603) (not mapNonEmpty!6506) (not b!1483414) (not b!1483441) (not mapNonEmpty!6503) (not d!435032) (not b!1483346) (not b!1483456) (not setNonEmpty!8220) (not d!434988) (not setNonEmpty!8206) (not b!1483658) (not d!435006) (not b!1483604) (not d!435042) (not b!1483457) (not d!435030) b_and!103163 (not b!1483524) (not b!1483363) (not b!1483538) (not b!1483626) (not setNonEmpty!8216) (not d!435012) (not b!1483459) (not b!1483503) (not b!1483585) (not d!434984) (not b!1483640) (not b!1483653) (not b!1483655) (not b!1483485) (not b!1483431) (not b!1483631) (not setNonEmpty!8227) (not b!1483473) (not b!1483455) (not setNonEmpty!8235) (not b!1483625) (not b!1483437) (not b!1483601) (not b!1483454) (not b!1483409) (not b!1483482) (not b!1483542) (not b!1483401) (not b!1483548) (not setNonEmpty!8210) (not b!1483424) (not d!435016) (not d!435036) (not d!435058) (not b!1483411) (not b!1483543) (not b!1483522) (not b_next!39149) (not setNonEmpty!8230) b_and!103153 (not b!1483492) (not setNonEmpty!8226) (not b!1483630) (not b!1483398) b_and!103149 (not b!1483581) (not b_next!39143) (not b!1483539) (not b!1483656) (not b_next!39145) (not b!1483584) (not b_next!39139) (not b!1483547) (not b!1483525) (not setNonEmpty!8215) (not d!435022) (not b!1483544) (not b!1483469) (not b!1483578) (not b!1483580) (not d!434992) (not setNonEmpty!8228) (not b!1483641) (not b!1483458) b_and!103145 (not b!1483586) (not b!1483557) (not b!1483537) (not b!1483569) (not setNonEmpty!8236) (not b!1483349) (not b!1483610) (not b!1483440) (not b!1483466) b_and!103151 (not d!435050) (not b!1483534) (not b!1483579) b_and!103159 (not b!1483343) (not b!1483606) (not b!1483480) b_and!103147 (not b!1483624) (not b!1483654) (not b!1483400) (not b!1483462) (not d!434986) (not b!1483611) (not b_next!39131) (not b_next!39141) (not b!1483568) (not b_next!39133) (not b!1483558) (not d!435024) (not setNonEmpty!8211) (not b_next!39135) (not b!1483567) (not b!1483582) (not d!435010) (not d!435002) (not b!1483520) (not b!1483397) (not b!1483521) (not mapNonEmpty!6509) (not b!1483523) (not d!435008) (not b!1483442) (not b!1483356) (not setNonEmpty!8237) (not b!1483605) (not b!1483470) (not b!1483623) (not d!435038) (not b!1483609) (not b!1483566) (not b!1483629) (not d!435014) (not b!1483540) (not b!1483425) b_and!103155 (not b!1483505) (not b!1483438) (not b!1483545) (not b!1483657) (not d!435064) (not b!1483479) (not b!1483396) (not setNonEmpty!8225) (not b!1483535) (not d!435018) (not b!1483460) (not d!435028) (not b!1483627) (not b!1483443) (not b!1483461) (not b!1483602) b_and!103157)
(check-sat (not b_next!39147) (not b_next!39137) b_and!103161 b_and!103163 (not b_next!39149) b_and!103145 b_and!103151 (not b_next!39135) b_and!103155 b_and!103157 b_and!103153 b_and!103149 (not b_next!39139) (not b_next!39143) (not b_next!39145) b_and!103159 b_and!103147 (not b_next!39131) (not b_next!39141) (not b_next!39133))
(get-model)

(declare-fun d!435076 () Bool)

(declare-fun lambda!63843 () Int)

(declare-fun forall!3820 (List!15796 Int) Bool)

(assert (=> d!435076 (= (inv!20959 setElem!8227) (forall!3820 (exprs!1135 setElem!8227) lambda!63843))))

(declare-fun bs!346070 () Bool)

(assert (= bs!346070 d!435076))

(declare-fun m!1730153 () Bool)

(assert (=> bs!346070 m!1730153))

(assert (=> setNonEmpty!8227 d!435076))

(declare-fun d!435078 () Bool)

(declare-fun c!243132 () Bool)

(assert (=> d!435078 (= c!243132 ((_ is Node!5359) (left!13252 (c!243105 acc!392))))))

(declare-fun e!948824 () Bool)

(assert (=> d!435078 (= (inv!20947 (left!13252 (c!243105 acc!392))) e!948824)))

(declare-fun b!1483659 () Bool)

(assert (=> b!1483659 (= e!948824 (inv!20956 (left!13252 (c!243105 acc!392))))))

(declare-fun b!1483660 () Bool)

(declare-fun e!948825 () Bool)

(assert (=> b!1483660 (= e!948824 e!948825)))

(declare-fun res!670153 () Bool)

(assert (=> b!1483660 (= res!670153 (not ((_ is Leaf!7963) (left!13252 (c!243105 acc!392)))))))

(assert (=> b!1483660 (=> res!670153 e!948825)))

(declare-fun b!1483661 () Bool)

(assert (=> b!1483661 (= e!948825 (inv!20957 (left!13252 (c!243105 acc!392))))))

(assert (= (and d!435078 c!243132) b!1483659))

(assert (= (and d!435078 (not c!243132)) b!1483660))

(assert (= (and b!1483660 (not res!670153)) b!1483661))

(declare-fun m!1730155 () Bool)

(assert (=> b!1483659 m!1730155))

(declare-fun m!1730157 () Bool)

(assert (=> b!1483661 m!1730157))

(assert (=> b!1483640 d!435078))

(declare-fun d!435080 () Bool)

(declare-fun c!243133 () Bool)

(assert (=> d!435080 (= c!243133 ((_ is Node!5359) (right!13582 (c!243105 acc!392))))))

(declare-fun e!948826 () Bool)

(assert (=> d!435080 (= (inv!20947 (right!13582 (c!243105 acc!392))) e!948826)))

(declare-fun b!1483662 () Bool)

(assert (=> b!1483662 (= e!948826 (inv!20956 (right!13582 (c!243105 acc!392))))))

(declare-fun b!1483663 () Bool)

(declare-fun e!948827 () Bool)

(assert (=> b!1483663 (= e!948826 e!948827)))

(declare-fun res!670154 () Bool)

(assert (=> b!1483663 (= res!670154 (not ((_ is Leaf!7963) (right!13582 (c!243105 acc!392)))))))

(assert (=> b!1483663 (=> res!670154 e!948827)))

(declare-fun b!1483664 () Bool)

(assert (=> b!1483664 (= e!948827 (inv!20957 (right!13582 (c!243105 acc!392))))))

(assert (= (and d!435080 c!243133) b!1483662))

(assert (= (and d!435080 (not c!243133)) b!1483663))

(assert (= (and b!1483663 (not res!670154)) b!1483664))

(declare-fun m!1730159 () Bool)

(assert (=> b!1483662 m!1730159))

(declare-fun m!1730161 () Bool)

(assert (=> b!1483664 m!1730161))

(assert (=> b!1483640 d!435080))

(declare-fun d!435082 () Bool)

(assert (=> d!435082 (= (list!6252 (_1!8087 lt!515365)) (list!6253 (c!243105 (_1!8087 lt!515365))))))

(declare-fun bs!346071 () Bool)

(assert (= bs!346071 d!435082))

(declare-fun m!1730163 () Bool)

(assert (=> bs!346071 m!1730163))

(assert (=> b!1483398 d!435082))

(declare-fun b!1483675 () Bool)

(declare-fun e!948834 () Bool)

(declare-fun lt!515396 () tuple2!14394)

(assert (=> b!1483675 (= e!948834 (= (_2!8091 lt!515396) (list!6251 treated!70)))))

(declare-fun d!435084 () Bool)

(assert (=> d!435084 e!948834))

(declare-fun c!243138 () Bool)

(declare-fun size!12743 (List!15801) Int)

(assert (=> d!435084 (= c!243138 (> (size!12743 (_1!8091 lt!515396)) 0))))

(declare-fun e!948835 () tuple2!14394)

(assert (=> d!435084 (= lt!515396 e!948835)))

(declare-fun c!243139 () Bool)

(declare-datatypes ((tuple2!14396 0))(
  ( (tuple2!14397 (_1!8092 Token!5268) (_2!8092 List!15798)) )
))
(declare-datatypes ((Option!2889 0))(
  ( (None!2888) (Some!2888 (v!22577 tuple2!14396)) )
))
(declare-fun lt!515395 () Option!2889)

(assert (=> d!435084 (= c!243139 ((_ is Some!2888) lt!515395))))

(declare-fun maxPrefix!1198 (LexerInterface!2459 List!15803 List!15798) Option!2889)

(assert (=> d!435084 (= lt!515395 (maxPrefix!1198 thiss!13241 rules!1640 (list!6251 treated!70)))))

(assert (=> d!435084 (= (lexList!725 thiss!13241 rules!1640 (list!6251 treated!70)) lt!515396)))

(declare-fun b!1483676 () Bool)

(declare-fun e!948836 () Bool)

(assert (=> b!1483676 (= e!948834 e!948836)))

(declare-fun res!670157 () Bool)

(assert (=> b!1483676 (= res!670157 (< (size!12742 (_2!8091 lt!515396)) (size!12742 (list!6251 treated!70))))))

(assert (=> b!1483676 (=> (not res!670157) (not e!948836))))

(declare-fun b!1483677 () Bool)

(declare-fun isEmpty!9836 (List!15801) Bool)

(assert (=> b!1483677 (= e!948836 (not (isEmpty!9836 (_1!8091 lt!515396))))))

(declare-fun b!1483678 () Bool)

(declare-fun lt!515397 () tuple2!14394)

(assert (=> b!1483678 (= e!948835 (tuple2!14395 (Cons!15733 (_1!8092 (v!22577 lt!515395)) (_1!8091 lt!515397)) (_2!8091 lt!515397)))))

(assert (=> b!1483678 (= lt!515397 (lexList!725 thiss!13241 rules!1640 (_2!8092 (v!22577 lt!515395))))))

(declare-fun b!1483679 () Bool)

(assert (=> b!1483679 (= e!948835 (tuple2!14395 Nil!15733 (list!6251 treated!70)))))

(assert (= (and d!435084 c!243139) b!1483678))

(assert (= (and d!435084 (not c!243139)) b!1483679))

(assert (= (and d!435084 c!243138) b!1483676))

(assert (= (and d!435084 (not c!243138)) b!1483675))

(assert (= (and b!1483676 res!670157) b!1483677))

(declare-fun m!1730165 () Bool)

(assert (=> d!435084 m!1730165))

(assert (=> d!435084 m!1729865))

(declare-fun m!1730167 () Bool)

(assert (=> d!435084 m!1730167))

(declare-fun m!1730169 () Bool)

(assert (=> b!1483676 m!1730169))

(assert (=> b!1483676 m!1729865))

(declare-fun m!1730171 () Bool)

(assert (=> b!1483676 m!1730171))

(declare-fun m!1730173 () Bool)

(assert (=> b!1483677 m!1730173))

(declare-fun m!1730175 () Bool)

(assert (=> b!1483678 m!1730175))

(assert (=> b!1483398 d!435084))

(assert (=> b!1483398 d!435014))

(declare-fun bs!346072 () Bool)

(declare-fun d!435086 () Bool)

(assert (= bs!346072 (and d!435086 d!435076)))

(declare-fun lambda!63844 () Int)

(assert (=> bs!346072 (= lambda!63844 lambda!63843)))

(assert (=> d!435086 (= (inv!20959 (_1!8085 (_1!8086 (h!21132 mapDefault!6506)))) (forall!3820 (exprs!1135 (_1!8085 (_1!8086 (h!21132 mapDefault!6506)))) lambda!63844))))

(declare-fun bs!346073 () Bool)

(assert (= bs!346073 d!435086))

(declare-fun m!1730177 () Bool)

(assert (=> bs!346073 m!1730177))

(assert (=> b!1483605 d!435086))

(declare-fun d!435088 () Bool)

(declare-fun res!670162 () Bool)

(declare-fun e!948839 () Bool)

(assert (=> d!435088 (=> (not res!670162) (not e!948839))))

(declare-fun list!6255 (IArray!10721) List!15798)

(assert (=> d!435088 (= res!670162 (<= (size!12742 (list!6255 (xs!8113 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) 512))))

(assert (=> d!435088 (= (inv!20955 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) e!948839)))

(declare-fun b!1483684 () Bool)

(declare-fun res!670163 () Bool)

(assert (=> b!1483684 (=> (not res!670163) (not e!948839))))

(assert (=> b!1483684 (= res!670163 (= (csize!10947 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) (size!12742 (list!6255 (xs!8113 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))))

(declare-fun b!1483685 () Bool)

(assert (=> b!1483685 (= e!948839 (and (> (csize!10947 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) 0) (<= (csize!10947 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) 512)))))

(assert (= (and d!435088 res!670162) b!1483684))

(assert (= (and b!1483684 res!670163) b!1483685))

(declare-fun m!1730179 () Bool)

(assert (=> d!435088 m!1730179))

(assert (=> d!435088 m!1730179))

(declare-fun m!1730181 () Bool)

(assert (=> d!435088 m!1730181))

(assert (=> b!1483684 m!1730179))

(assert (=> b!1483684 m!1730179))

(assert (=> b!1483684 m!1730181))

(assert (=> b!1483437 d!435088))

(declare-fun d!435090 () Bool)

(assert (=> d!435090 (= (list!6252 lt!515378) (list!6253 (c!243105 lt!515378)))))

(declare-fun bs!346074 () Bool)

(assert (= bs!346074 d!435090))

(declare-fun m!1730183 () Bool)

(assert (=> bs!346074 m!1730183))

(assert (=> b!1483456 d!435090))

(declare-fun b!1483695 () Bool)

(declare-fun e!948845 () List!15801)

(assert (=> b!1483695 (= e!948845 (Cons!15733 (h!21134 (list!6252 acc!392)) (++!4244 (t!137718 (list!6252 acc!392)) (list!6252 (_1!8087 lt!515354)))))))

(declare-fun b!1483694 () Bool)

(assert (=> b!1483694 (= e!948845 (list!6252 (_1!8087 lt!515354)))))

(declare-fun b!1483696 () Bool)

(declare-fun res!670169 () Bool)

(declare-fun e!948844 () Bool)

(assert (=> b!1483696 (=> (not res!670169) (not e!948844))))

(declare-fun lt!515400 () List!15801)

(assert (=> b!1483696 (= res!670169 (= (size!12743 lt!515400) (+ (size!12743 (list!6252 acc!392)) (size!12743 (list!6252 (_1!8087 lt!515354))))))))

(declare-fun b!1483697 () Bool)

(assert (=> b!1483697 (= e!948844 (or (not (= (list!6252 (_1!8087 lt!515354)) Nil!15733)) (= lt!515400 (list!6252 acc!392))))))

(declare-fun d!435092 () Bool)

(assert (=> d!435092 e!948844))

(declare-fun res!670168 () Bool)

(assert (=> d!435092 (=> (not res!670168) (not e!948844))))

(declare-fun content!2285 (List!15801) (InoxSet Token!5268))

(assert (=> d!435092 (= res!670168 (= (content!2285 lt!515400) ((_ map or) (content!2285 (list!6252 acc!392)) (content!2285 (list!6252 (_1!8087 lt!515354))))))))

(assert (=> d!435092 (= lt!515400 e!948845)))

(declare-fun c!243142 () Bool)

(assert (=> d!435092 (= c!243142 ((_ is Nil!15733) (list!6252 acc!392)))))

(assert (=> d!435092 (= (++!4244 (list!6252 acc!392) (list!6252 (_1!8087 lt!515354))) lt!515400)))

(assert (= (and d!435092 c!243142) b!1483694))

(assert (= (and d!435092 (not c!243142)) b!1483695))

(assert (= (and d!435092 res!670168) b!1483696))

(assert (= (and b!1483696 res!670169) b!1483697))

(assert (=> b!1483695 m!1729985))

(declare-fun m!1730185 () Bool)

(assert (=> b!1483695 m!1730185))

(declare-fun m!1730187 () Bool)

(assert (=> b!1483696 m!1730187))

(assert (=> b!1483696 m!1729869))

(declare-fun m!1730189 () Bool)

(assert (=> b!1483696 m!1730189))

(assert (=> b!1483696 m!1729985))

(declare-fun m!1730191 () Bool)

(assert (=> b!1483696 m!1730191))

(declare-fun m!1730193 () Bool)

(assert (=> d!435092 m!1730193))

(assert (=> d!435092 m!1729869))

(declare-fun m!1730195 () Bool)

(assert (=> d!435092 m!1730195))

(assert (=> d!435092 m!1729985))

(declare-fun m!1730197 () Bool)

(assert (=> d!435092 m!1730197))

(assert (=> b!1483456 d!435092))

(assert (=> b!1483456 d!434986))

(declare-fun d!435094 () Bool)

(assert (=> d!435094 (= (list!6252 (_1!8087 lt!515354)) (list!6253 (c!243105 (_1!8087 lt!515354))))))

(declare-fun bs!346075 () Bool)

(assert (= bs!346075 d!435094))

(declare-fun m!1730199 () Bool)

(assert (=> bs!346075 m!1730199))

(assert (=> b!1483456 d!435094))

(declare-fun d!435096 () Bool)

(declare-fun res!670170 () Bool)

(declare-fun e!948846 () Bool)

(assert (=> d!435096 (=> (not res!670170) (not e!948846))))

(assert (=> d!435096 (= res!670170 (<= (size!12742 (list!6255 (xs!8113 (c!243104 totalInput!458)))) 512))))

(assert (=> d!435096 (= (inv!20955 (c!243104 totalInput!458)) e!948846)))

(declare-fun b!1483698 () Bool)

(declare-fun res!670171 () Bool)

(assert (=> b!1483698 (=> (not res!670171) (not e!948846))))

(assert (=> b!1483698 (= res!670171 (= (csize!10947 (c!243104 totalInput!458)) (size!12742 (list!6255 (xs!8113 (c!243104 totalInput!458))))))))

(declare-fun b!1483699 () Bool)

(assert (=> b!1483699 (= e!948846 (and (> (csize!10947 (c!243104 totalInput!458)) 0) (<= (csize!10947 (c!243104 totalInput!458)) 512)))))

(assert (= (and d!435096 res!670170) b!1483698))

(assert (= (and b!1483698 res!670171) b!1483699))

(declare-fun m!1730201 () Bool)

(assert (=> d!435096 m!1730201))

(assert (=> d!435096 m!1730201))

(declare-fun m!1730203 () Bool)

(assert (=> d!435096 m!1730203))

(assert (=> b!1483698 m!1730201))

(assert (=> b!1483698 m!1730201))

(assert (=> b!1483698 m!1730203))

(assert (=> b!1483414 d!435096))

(declare-fun d!435098 () Bool)

(assert (=> d!435098 (= (list!6252 (_1!8087 lt!515374)) (list!6253 (c!243105 (_1!8087 lt!515374))))))

(declare-fun bs!346076 () Bool)

(assert (= bs!346076 d!435098))

(declare-fun m!1730205 () Bool)

(assert (=> bs!346076 m!1730205))

(assert (=> b!1483440 d!435098))

(declare-fun b!1483700 () Bool)

(declare-fun e!948847 () Bool)

(declare-fun lt!515402 () tuple2!14394)

(assert (=> b!1483700 (= e!948847 (= (_2!8091 lt!515402) (list!6251 totalInput!458)))))

(declare-fun d!435100 () Bool)

(assert (=> d!435100 e!948847))

(declare-fun c!243143 () Bool)

(assert (=> d!435100 (= c!243143 (> (size!12743 (_1!8091 lt!515402)) 0))))

(declare-fun e!948848 () tuple2!14394)

(assert (=> d!435100 (= lt!515402 e!948848)))

(declare-fun c!243144 () Bool)

(declare-fun lt!515401 () Option!2889)

(assert (=> d!435100 (= c!243144 ((_ is Some!2888) lt!515401))))

(assert (=> d!435100 (= lt!515401 (maxPrefix!1198 thiss!13241 rules!1640 (list!6251 totalInput!458)))))

(assert (=> d!435100 (= (lexList!725 thiss!13241 rules!1640 (list!6251 totalInput!458)) lt!515402)))

(declare-fun b!1483701 () Bool)

(declare-fun e!948849 () Bool)

(assert (=> b!1483701 (= e!948847 e!948849)))

(declare-fun res!670172 () Bool)

(assert (=> b!1483701 (= res!670172 (< (size!12742 (_2!8091 lt!515402)) (size!12742 (list!6251 totalInput!458))))))

(assert (=> b!1483701 (=> (not res!670172) (not e!948849))))

(declare-fun b!1483702 () Bool)

(assert (=> b!1483702 (= e!948849 (not (isEmpty!9836 (_1!8091 lt!515402))))))

(declare-fun b!1483703 () Bool)

(declare-fun lt!515403 () tuple2!14394)

(assert (=> b!1483703 (= e!948848 (tuple2!14395 (Cons!15733 (_1!8092 (v!22577 lt!515401)) (_1!8091 lt!515403)) (_2!8091 lt!515403)))))

(assert (=> b!1483703 (= lt!515403 (lexList!725 thiss!13241 rules!1640 (_2!8092 (v!22577 lt!515401))))))

(declare-fun b!1483704 () Bool)

(assert (=> b!1483704 (= e!948848 (tuple2!14395 Nil!15733 (list!6251 totalInput!458)))))

(assert (= (and d!435100 c!243144) b!1483703))

(assert (= (and d!435100 (not c!243144)) b!1483704))

(assert (= (and d!435100 c!243143) b!1483701))

(assert (= (and d!435100 (not c!243143)) b!1483700))

(assert (= (and b!1483701 res!670172) b!1483702))

(declare-fun m!1730207 () Bool)

(assert (=> d!435100 m!1730207))

(assert (=> d!435100 m!1729861))

(declare-fun m!1730209 () Bool)

(assert (=> d!435100 m!1730209))

(declare-fun m!1730211 () Bool)

(assert (=> b!1483701 m!1730211))

(assert (=> b!1483701 m!1729861))

(declare-fun m!1730213 () Bool)

(assert (=> b!1483701 m!1730213))

(declare-fun m!1730215 () Bool)

(assert (=> b!1483702 m!1730215))

(declare-fun m!1730217 () Bool)

(assert (=> b!1483703 m!1730217))

(assert (=> b!1483440 d!435100))

(assert (=> b!1483440 d!435010))

(declare-fun d!435102 () Bool)

(declare-fun res!670173 () Bool)

(declare-fun e!948850 () Bool)

(assert (=> d!435102 (=> (not res!670173) (not e!948850))))

(assert (=> d!435102 (= res!670173 (<= (size!12742 (list!6255 (xs!8113 (c!243104 input!1102)))) 512))))

(assert (=> d!435102 (= (inv!20955 (c!243104 input!1102)) e!948850)))

(declare-fun b!1483705 () Bool)

(declare-fun res!670174 () Bool)

(assert (=> b!1483705 (=> (not res!670174) (not e!948850))))

(assert (=> b!1483705 (= res!670174 (= (csize!10947 (c!243104 input!1102)) (size!12742 (list!6255 (xs!8113 (c!243104 input!1102))))))))

(declare-fun b!1483706 () Bool)

(assert (=> b!1483706 (= e!948850 (and (> (csize!10947 (c!243104 input!1102)) 0) (<= (csize!10947 (c!243104 input!1102)) 512)))))

(assert (= (and d!435102 res!670173) b!1483705))

(assert (= (and b!1483705 res!670174) b!1483706))

(declare-fun m!1730219 () Bool)

(assert (=> d!435102 m!1730219))

(assert (=> d!435102 m!1730219))

(declare-fun m!1730221 () Bool)

(assert (=> d!435102 m!1730221))

(assert (=> b!1483705 m!1730219))

(assert (=> b!1483705 m!1730219))

(assert (=> b!1483705 m!1730221))

(assert (=> b!1483411 d!435102))

(declare-fun b!1483717 () Bool)

(declare-fun e!948856 () List!15798)

(assert (=> b!1483717 (= e!948856 (list!6255 (xs!8113 (c!243104 (_2!8087 lt!515353)))))))

(declare-fun b!1483716 () Bool)

(declare-fun e!948855 () List!15798)

(assert (=> b!1483716 (= e!948855 e!948856)))

(declare-fun c!243150 () Bool)

(assert (=> b!1483716 (= c!243150 ((_ is Leaf!7962) (c!243104 (_2!8087 lt!515353))))))

(declare-fun b!1483715 () Bool)

(assert (=> b!1483715 (= e!948855 Nil!15730)))

(declare-fun d!435104 () Bool)

(declare-fun c!243149 () Bool)

(assert (=> d!435104 (= c!243149 ((_ is Empty!5358) (c!243104 (_2!8087 lt!515353))))))

(assert (=> d!435104 (= (list!6254 (c!243104 (_2!8087 lt!515353))) e!948855)))

(declare-fun b!1483718 () Bool)

(assert (=> b!1483718 (= e!948856 (++!4242 (list!6254 (left!13251 (c!243104 (_2!8087 lt!515353)))) (list!6254 (right!13581 (c!243104 (_2!8087 lt!515353))))))))

(assert (= (and d!435104 c!243149) b!1483715))

(assert (= (and d!435104 (not c!243149)) b!1483716))

(assert (= (and b!1483716 c!243150) b!1483717))

(assert (= (and b!1483716 (not c!243150)) b!1483718))

(declare-fun m!1730223 () Bool)

(assert (=> b!1483717 m!1730223))

(declare-fun m!1730225 () Bool)

(assert (=> b!1483718 m!1730225))

(declare-fun m!1730227 () Bool)

(assert (=> b!1483718 m!1730227))

(assert (=> b!1483718 m!1730225))

(assert (=> b!1483718 m!1730227))

(declare-fun m!1730229 () Bool)

(assert (=> b!1483718 m!1730229))

(assert (=> d!435002 d!435104))

(declare-fun d!435106 () Bool)

(declare-fun res!670179 () Bool)

(declare-fun e!948859 () Bool)

(assert (=> d!435106 (=> (not res!670179) (not e!948859))))

(declare-fun list!6256 (IArray!10723) List!15801)

(assert (=> d!435106 (= res!670179 (<= (size!12743 (list!6256 (xs!8114 (c!243105 acc!392)))) 512))))

(assert (=> d!435106 (= (inv!20957 (c!243105 acc!392)) e!948859)))

(declare-fun b!1483723 () Bool)

(declare-fun res!670180 () Bool)

(assert (=> b!1483723 (=> (not res!670180) (not e!948859))))

(assert (=> b!1483723 (= res!670180 (= (csize!10949 (c!243105 acc!392)) (size!12743 (list!6256 (xs!8114 (c!243105 acc!392))))))))

(declare-fun b!1483724 () Bool)

(assert (=> b!1483724 (= e!948859 (and (> (csize!10949 (c!243105 acc!392)) 0) (<= (csize!10949 (c!243105 acc!392)) 512)))))

(assert (= (and d!435106 res!670179) b!1483723))

(assert (= (and b!1483723 res!670180) b!1483724))

(declare-fun m!1730231 () Bool)

(assert (=> d!435106 m!1730231))

(assert (=> d!435106 m!1730231))

(declare-fun m!1730233 () Bool)

(assert (=> d!435106 m!1730233))

(assert (=> b!1483723 m!1730231))

(assert (=> b!1483723 m!1730231))

(assert (=> b!1483723 m!1730233))

(assert (=> b!1483494 d!435106))

(declare-fun call!98562 () Int)

(declare-fun e!948872 () Int)

(declare-fun b!1483744 () Bool)

(assert (=> b!1483744 (= e!948872 (- call!98562 (- (size!12742 lt!515357) (size!12742 lt!515348))))))

(declare-fun b!1483745 () Bool)

(declare-fun e!948870 () Int)

(assert (=> b!1483745 (= e!948870 call!98562)))

(declare-fun b!1483746 () Bool)

(assert (=> b!1483746 (= e!948870 e!948872)))

(declare-fun c!243160 () Bool)

(assert (=> b!1483746 (= c!243160 (>= (- (size!12742 lt!515357) (size!12742 lt!515348)) call!98562))))

(declare-fun b!1483747 () Bool)

(declare-fun e!948874 () Bool)

(declare-fun lt!515406 () List!15798)

(assert (=> b!1483747 (= e!948874 (= (size!12742 lt!515406) e!948870))))

(declare-fun c!243159 () Bool)

(assert (=> b!1483747 (= c!243159 (<= (- (size!12742 lt!515357) (size!12742 lt!515348)) 0))))

(declare-fun b!1483748 () Bool)

(declare-fun e!948873 () List!15798)

(assert (=> b!1483748 (= e!948873 (drop!749 (t!137715 lt!515357) (- (- (size!12742 lt!515357) (size!12742 lt!515348)) 1)))))

(declare-fun bm!98557 () Bool)

(assert (=> bm!98557 (= call!98562 (size!12742 lt!515357))))

(declare-fun b!1483749 () Bool)

(assert (=> b!1483749 (= e!948873 lt!515357)))

(declare-fun b!1483750 () Bool)

(assert (=> b!1483750 (= e!948872 0)))

(declare-fun b!1483751 () Bool)

(declare-fun e!948871 () List!15798)

(assert (=> b!1483751 (= e!948871 e!948873)))

(declare-fun c!243161 () Bool)

(assert (=> b!1483751 (= c!243161 (<= (- (size!12742 lt!515357) (size!12742 lt!515348)) 0))))

(declare-fun b!1483743 () Bool)

(assert (=> b!1483743 (= e!948871 Nil!15730)))

(declare-fun d!435108 () Bool)

(assert (=> d!435108 e!948874))

(declare-fun res!670183 () Bool)

(assert (=> d!435108 (=> (not res!670183) (not e!948874))))

(assert (=> d!435108 (= res!670183 (= ((_ map implies) (content!2284 lt!515406) (content!2284 lt!515357)) ((as const (InoxSet C!8412)) true)))))

(assert (=> d!435108 (= lt!515406 e!948871)))

(declare-fun c!243162 () Bool)

(assert (=> d!435108 (= c!243162 ((_ is Nil!15730) lt!515357))))

(assert (=> d!435108 (= (drop!749 lt!515357 (- (size!12742 lt!515357) (size!12742 lt!515348))) lt!515406)))

(assert (= (and d!435108 c!243162) b!1483743))

(assert (= (and d!435108 (not c!243162)) b!1483751))

(assert (= (and b!1483751 c!243161) b!1483749))

(assert (= (and b!1483751 (not c!243161)) b!1483748))

(assert (= (and d!435108 res!670183) b!1483747))

(assert (= (and b!1483747 c!243159) b!1483745))

(assert (= (and b!1483747 (not c!243159)) b!1483746))

(assert (= (and b!1483746 c!243160) b!1483750))

(assert (= (and b!1483746 (not c!243160)) b!1483744))

(assert (= (or b!1483745 b!1483746 b!1483744) bm!98557))

(declare-fun m!1730235 () Bool)

(assert (=> b!1483747 m!1730235))

(declare-fun m!1730237 () Bool)

(assert (=> b!1483748 m!1730237))

(assert (=> bm!98557 m!1730019))

(declare-fun m!1730239 () Bool)

(assert (=> d!435108 m!1730239))

(declare-fun m!1730241 () Bool)

(assert (=> d!435108 m!1730241))

(assert (=> d!435038 d!435108))

(declare-fun d!435110 () Bool)

(declare-fun lt!515409 () Int)

(assert (=> d!435110 (>= lt!515409 0)))

(declare-fun e!948877 () Int)

(assert (=> d!435110 (= lt!515409 e!948877)))

(declare-fun c!243165 () Bool)

(assert (=> d!435110 (= c!243165 ((_ is Nil!15730) lt!515357))))

(assert (=> d!435110 (= (size!12742 lt!515357) lt!515409)))

(declare-fun b!1483756 () Bool)

(assert (=> b!1483756 (= e!948877 0)))

(declare-fun b!1483757 () Bool)

(assert (=> b!1483757 (= e!948877 (+ 1 (size!12742 (t!137715 lt!515357))))))

(assert (= (and d!435110 c!243165) b!1483756))

(assert (= (and d!435110 (not c!243165)) b!1483757))

(declare-fun m!1730243 () Bool)

(assert (=> b!1483757 m!1730243))

(assert (=> d!435038 d!435110))

(declare-fun d!435112 () Bool)

(declare-fun lt!515410 () Int)

(assert (=> d!435112 (>= lt!515410 0)))

(declare-fun e!948878 () Int)

(assert (=> d!435112 (= lt!515410 e!948878)))

(declare-fun c!243166 () Bool)

(assert (=> d!435112 (= c!243166 ((_ is Nil!15730) lt!515348))))

(assert (=> d!435112 (= (size!12742 lt!515348) lt!515410)))

(declare-fun b!1483758 () Bool)

(assert (=> b!1483758 (= e!948878 0)))

(declare-fun b!1483759 () Bool)

(assert (=> b!1483759 (= e!948878 (+ 1 (size!12742 (t!137715 lt!515348))))))

(assert (= (and d!435112 c!243166) b!1483758))

(assert (= (and d!435112 (not c!243166)) b!1483759))

(declare-fun m!1730245 () Bool)

(assert (=> b!1483759 m!1730245))

(assert (=> d!435038 d!435112))

(declare-fun b!1483778 () Bool)

(declare-fun e!948899 () Bool)

(declare-fun appendAssoc!79 (List!15801 List!15801 List!15801) Bool)

(assert (=> b!1483778 (= e!948899 (appendAssoc!79 (++!4244 (list!6253 (c!243105 acc!392)) (list!6253 (left!13252 (left!13252 (c!243105 (_1!8087 lt!515354)))))) (list!6253 (right!13582 (left!13252 (c!243105 (_1!8087 lt!515354))))) (list!6253 (right!13582 (c!243105 (_1!8087 lt!515354))))))))

(declare-fun b!1483779 () Bool)

(declare-fun e!948900 () Bool)

(declare-fun e!948898 () Bool)

(assert (=> b!1483779 (= e!948900 e!948898)))

(declare-fun res!670207 () Bool)

(assert (=> b!1483779 (=> res!670207 e!948898)))

(assert (=> b!1483779 (= res!670207 (not ((_ is Node!5359) (right!13582 (c!243105 acc!392)))))))

(declare-fun b!1483781 () Bool)

(declare-fun e!948897 () Bool)

(declare-fun e!948903 () Bool)

(assert (=> b!1483781 (= e!948897 e!948903)))

(declare-fun res!670208 () Bool)

(assert (=> b!1483781 (=> (not res!670208) (not e!948903))))

(assert (=> b!1483781 (= res!670208 (appendAssoc!79 (list!6253 (c!243105 acc!392)) (list!6253 (left!13252 (c!243105 (_1!8087 lt!515354)))) (list!6253 (right!13582 (c!243105 (_1!8087 lt!515354))))))))

(declare-fun b!1483782 () Bool)

(declare-fun e!948902 () Bool)

(assert (=> b!1483782 (= e!948898 e!948902)))

(declare-fun res!670203 () Bool)

(assert (=> b!1483782 (=> (not res!670203) (not e!948902))))

(assert (=> b!1483782 (= res!670203 (appendAssoc!79 (list!6253 (left!13252 (right!13582 (c!243105 acc!392)))) (list!6253 (right!13582 (right!13582 (c!243105 acc!392)))) (list!6253 (c!243105 (_1!8087 lt!515354)))))))

(declare-fun b!1483783 () Bool)

(declare-fun e!948901 () Bool)

(assert (=> b!1483783 (= e!948901 e!948900)))

(declare-fun res!670202 () Bool)

(assert (=> b!1483783 (=> (not res!670202) (not e!948900))))

(assert (=> b!1483783 (= res!670202 (appendAssoc!79 (list!6253 (left!13252 (c!243105 acc!392))) (list!6253 (right!13582 (c!243105 acc!392))) (list!6253 (c!243105 (_1!8087 lt!515354)))))))

(declare-fun b!1483784 () Bool)

(assert (=> b!1483784 (= e!948902 (appendAssoc!79 (list!6253 (left!13252 (c!243105 acc!392))) (list!6253 (left!13252 (right!13582 (c!243105 acc!392)))) (++!4244 (list!6253 (right!13582 (right!13582 (c!243105 acc!392)))) (list!6253 (c!243105 (_1!8087 lt!515354))))))))

(declare-fun d!435114 () Bool)

(declare-fun e!948904 () Bool)

(assert (=> d!435114 e!948904))

(declare-fun res!670205 () Bool)

(assert (=> d!435114 (=> (not res!670205) (not e!948904))))

(assert (=> d!435114 (= res!670205 e!948901)))

(declare-fun res!670204 () Bool)

(assert (=> d!435114 (=> res!670204 e!948901)))

(assert (=> d!435114 (= res!670204 (not ((_ is Node!5359) (c!243105 acc!392))))))

(assert (=> d!435114 (= (appendAssocInst!348 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))) true)))

(declare-fun b!1483780 () Bool)

(declare-fun e!948905 () Bool)

(assert (=> b!1483780 (= e!948905 e!948899)))

(declare-fun res!670206 () Bool)

(assert (=> b!1483780 (=> (not res!670206) (not e!948899))))

(assert (=> b!1483780 (= res!670206 (appendAssoc!79 (list!6253 (c!243105 acc!392)) (list!6253 (left!13252 (left!13252 (c!243105 (_1!8087 lt!515354))))) (list!6253 (right!13582 (left!13252 (c!243105 (_1!8087 lt!515354)))))))))

(declare-fun b!1483785 () Bool)

(assert (=> b!1483785 (= e!948903 e!948905)))

(declare-fun res!670210 () Bool)

(assert (=> b!1483785 (=> res!670210 e!948905)))

(assert (=> b!1483785 (= res!670210 (not ((_ is Node!5359) (left!13252 (c!243105 (_1!8087 lt!515354))))))))

(declare-fun b!1483786 () Bool)

(assert (=> b!1483786 (= e!948904 e!948897)))

(declare-fun res!670209 () Bool)

(assert (=> b!1483786 (=> res!670209 e!948897)))

(assert (=> b!1483786 (= res!670209 (not ((_ is Node!5359) (c!243105 (_1!8087 lt!515354)))))))

(assert (= (and d!435114 (not res!670204)) b!1483783))

(assert (= (and b!1483783 res!670202) b!1483779))

(assert (= (and b!1483779 (not res!670207)) b!1483782))

(assert (= (and b!1483782 res!670203) b!1483784))

(assert (= (and d!435114 res!670205) b!1483786))

(assert (= (and b!1483786 (not res!670209)) b!1483781))

(assert (= (and b!1483781 res!670208) b!1483785))

(assert (= (and b!1483785 (not res!670210)) b!1483780))

(assert (= (and b!1483780 res!670206) b!1483778))

(assert (=> b!1483781 m!1729879))

(declare-fun m!1730247 () Bool)

(assert (=> b!1483781 m!1730247))

(declare-fun m!1730249 () Bool)

(assert (=> b!1483781 m!1730249))

(assert (=> b!1483781 m!1729879))

(assert (=> b!1483781 m!1730247))

(assert (=> b!1483781 m!1730249))

(declare-fun m!1730251 () Bool)

(assert (=> b!1483781 m!1730251))

(declare-fun m!1730253 () Bool)

(assert (=> b!1483782 m!1730253))

(declare-fun m!1730255 () Bool)

(assert (=> b!1483782 m!1730255))

(assert (=> b!1483782 m!1730199))

(assert (=> b!1483782 m!1730253))

(assert (=> b!1483782 m!1730255))

(assert (=> b!1483782 m!1730199))

(declare-fun m!1730257 () Bool)

(assert (=> b!1483782 m!1730257))

(assert (=> b!1483780 m!1729879))

(declare-fun m!1730259 () Bool)

(assert (=> b!1483780 m!1730259))

(declare-fun m!1730261 () Bool)

(assert (=> b!1483780 m!1730261))

(assert (=> b!1483780 m!1729879))

(assert (=> b!1483780 m!1730259))

(assert (=> b!1483780 m!1730261))

(declare-fun m!1730263 () Bool)

(assert (=> b!1483780 m!1730263))

(assert (=> b!1483778 m!1729879))

(assert (=> b!1483778 m!1730259))

(assert (=> b!1483778 m!1730249))

(assert (=> b!1483778 m!1729879))

(assert (=> b!1483778 m!1730259))

(declare-fun m!1730265 () Bool)

(assert (=> b!1483778 m!1730265))

(assert (=> b!1483778 m!1730265))

(assert (=> b!1483778 m!1730261))

(assert (=> b!1483778 m!1730249))

(declare-fun m!1730267 () Bool)

(assert (=> b!1483778 m!1730267))

(assert (=> b!1483778 m!1730261))

(declare-fun m!1730269 () Bool)

(assert (=> b!1483783 m!1730269))

(declare-fun m!1730271 () Bool)

(assert (=> b!1483783 m!1730271))

(assert (=> b!1483783 m!1730199))

(assert (=> b!1483783 m!1730269))

(assert (=> b!1483783 m!1730271))

(assert (=> b!1483783 m!1730199))

(declare-fun m!1730273 () Bool)

(assert (=> b!1483783 m!1730273))

(assert (=> b!1483784 m!1730255))

(assert (=> b!1483784 m!1730253))

(assert (=> b!1483784 m!1730199))

(assert (=> b!1483784 m!1730269))

(assert (=> b!1483784 m!1730253))

(declare-fun m!1730275 () Bool)

(assert (=> b!1483784 m!1730275))

(declare-fun m!1730277 () Bool)

(assert (=> b!1483784 m!1730277))

(assert (=> b!1483784 m!1730255))

(assert (=> b!1483784 m!1730199))

(assert (=> b!1483784 m!1730275))

(assert (=> b!1483784 m!1730269))

(assert (=> d!435024 d!435114))

(declare-fun call!98600 () Int)

(declare-fun c!243190 () Bool)

(declare-fun bm!98590 () Bool)

(assert (=> bm!98590 (= call!98600 (height!789 (ite c!243190 (c!243105 acc!392) (left!13252 (c!243105 (_1!8087 lt!515354))))))))

(declare-fun b!1483829 () Bool)

(declare-fun e!948932 () Conc!5359)

(declare-fun call!98605 () Conc!5359)

(assert (=> b!1483829 (= e!948932 call!98605)))

(declare-fun bm!98591 () Bool)

(declare-fun call!98597 () Int)

(declare-fun lt!515421 () Conc!5359)

(assert (=> bm!98591 (= call!98597 (height!789 (ite c!243190 (right!13582 (c!243105 acc!392)) lt!515421)))))

(declare-fun bm!98592 () Bool)

(declare-fun call!98596 () Conc!5359)

(declare-fun call!98602 () Conc!5359)

(assert (=> bm!98592 (= call!98596 call!98602)))

(declare-fun bm!98593 () Bool)

(declare-fun call!98603 () Conc!5359)

(declare-fun call!98609 () Conc!5359)

(assert (=> bm!98593 (= call!98603 call!98609)))

(declare-fun call!98601 () Int)

(declare-fun bm!98594 () Bool)

(assert (=> bm!98594 (= call!98601 (height!789 (ite c!243190 (left!13252 (c!243105 acc!392)) (right!13582 (c!243105 (_1!8087 lt!515354))))))))

(declare-fun call!98595 () Int)

(declare-fun lt!515419 () Conc!5359)

(declare-fun bm!98595 () Bool)

(assert (=> bm!98595 (= call!98595 (height!789 (ite c!243190 lt!515419 (c!243105 (_1!8087 lt!515354)))))))

(declare-fun b!1483830 () Bool)

(declare-fun e!948929 () Conc!5359)

(assert (=> b!1483830 (= e!948929 call!98603)))

(declare-fun b!1483831 () Bool)

(declare-fun e!948931 () Conc!5359)

(assert (=> b!1483831 (= e!948932 e!948931)))

(declare-fun lt!515420 () Int)

(assert (=> b!1483831 (= c!243190 (< lt!515420 (- 1)))))

(declare-fun b!1483832 () Bool)

(declare-fun e!948927 () Bool)

(assert (=> b!1483832 (= e!948927 (isBalanced!1588 (c!243105 (_1!8087 lt!515354))))))

(declare-fun b!1483833 () Bool)

(declare-fun c!243184 () Bool)

(assert (=> b!1483833 (= c!243184 (>= call!98601 call!98597))))

(declare-fun e!948933 () Conc!5359)

(assert (=> b!1483833 (= e!948931 e!948933)))

(declare-fun bm!98596 () Bool)

(declare-fun call!98598 () Conc!5359)

(declare-fun call!98606 () Conc!5359)

(assert (=> bm!98596 (= call!98598 call!98606)))

(declare-fun b!1483834 () Bool)

(declare-fun call!98607 () Conc!5359)

(assert (=> b!1483834 (= e!948933 call!98607)))

(declare-fun b!1483835 () Bool)

(declare-fun res!670224 () Bool)

(declare-fun e!948935 () Bool)

(assert (=> b!1483835 (=> (not res!670224) (not e!948935))))

(declare-fun lt!515422 () Conc!5359)

(assert (=> b!1483835 (= res!670224 (<= (height!789 lt!515422) (+ (max!0 (height!789 (c!243105 acc!392)) (height!789 (c!243105 (_1!8087 lt!515354)))) 1)))))

(declare-fun b!1483836 () Bool)

(declare-fun e!948930 () Conc!5359)

(assert (=> b!1483836 (= e!948930 call!98602)))

(declare-fun d!435116 () Bool)

(assert (=> d!435116 e!948935))

(declare-fun res!670222 () Bool)

(assert (=> d!435116 (=> (not res!670222) (not e!948935))))

(assert (=> d!435116 (= res!670222 (appendAssocInst!348 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))))))

(declare-fun e!948926 () Conc!5359)

(assert (=> d!435116 (= lt!515422 e!948926)))

(declare-fun c!243188 () Bool)

(assert (=> d!435116 (= c!243188 (= (c!243105 acc!392) Empty!5359))))

(assert (=> d!435116 e!948927))

(declare-fun res!670225 () Bool)

(assert (=> d!435116 (=> (not res!670225) (not e!948927))))

(assert (=> d!435116 (= res!670225 (isBalanced!1588 (c!243105 acc!392)))))

(assert (=> d!435116 (= (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))) lt!515422)))

(declare-fun b!1483837 () Bool)

(declare-fun e!948928 () Conc!5359)

(assert (=> b!1483837 (= e!948933 e!948928)))

(declare-fun call!98604 () Conc!5359)

(assert (=> b!1483837 (= lt!515419 call!98604)))

(declare-fun c!243189 () Bool)

(assert (=> b!1483837 (= c!243189 (= call!98595 (- call!98600 3)))))

(declare-fun b!1483838 () Bool)

(declare-fun c!243183 () Bool)

(assert (=> b!1483838 (= c!243183 (>= call!98601 call!98600))))

(assert (=> b!1483838 (= e!948931 e!948930)))

(declare-fun bm!98597 () Bool)

(declare-fun call!98610 () Conc!5359)

(assert (=> bm!98597 (= call!98602 call!98610)))

(declare-fun b!1483839 () Bool)

(assert (=> b!1483839 (= e!948930 e!948929)))

(assert (=> b!1483839 (= lt!515421 call!98598)))

(declare-fun c!243186 () Bool)

(assert (=> b!1483839 (= c!243186 (= call!98597 (- call!98595 3)))))

(declare-fun b!1483840 () Bool)

(declare-fun call!98599 () Conc!5359)

(assert (=> b!1483840 (= e!948928 call!98599)))

(declare-fun c!243187 () Bool)

(declare-fun bm!98598 () Bool)

(declare-fun call!98608 () Conc!5359)

(declare-fun <>!107 (Conc!5359 Conc!5359) Conc!5359)

(assert (=> bm!98598 (= call!98605 (<>!107 (ite c!243187 (c!243105 acc!392) (ite c!243190 (ite (or c!243184 c!243189) (left!13252 (c!243105 acc!392)) call!98608) (ite c!243186 call!98596 lt!515421))) (ite c!243187 (c!243105 (_1!8087 lt!515354)) (ite c!243190 (ite c!243184 call!98604 (ite c!243189 call!98608 lt!515419)) (ite c!243186 (right!13582 (c!243105 (_1!8087 lt!515354))) call!98596)))))))

(declare-fun b!1483841 () Bool)

(assert (=> b!1483841 (= e!948929 call!98603)))

(declare-fun bm!98599 () Bool)

(assert (=> bm!98599 (= call!98610 (<>!107 (ite c!243190 (ite c!243189 (left!13252 (right!13582 (c!243105 acc!392))) (left!13252 (c!243105 acc!392))) (ite c!243183 call!98598 (ite c!243186 lt!515421 (right!13582 (left!13252 (c!243105 (_1!8087 lt!515354))))))) (ite c!243190 (ite c!243189 lt!515419 (left!13252 (right!13582 (c!243105 acc!392)))) (ite c!243183 (right!13582 (c!243105 (_1!8087 lt!515354))) (ite c!243186 (right!13582 (left!13252 (c!243105 (_1!8087 lt!515354)))) (right!13582 (c!243105 (_1!8087 lt!515354))))))))))

(declare-fun b!1483842 () Bool)

(assert (=> b!1483842 (= e!948926 (c!243105 (_1!8087 lt!515354)))))

(declare-fun b!1483843 () Bool)

(declare-fun e!948934 () Conc!5359)

(assert (=> b!1483843 (= e!948934 (c!243105 acc!392))))

(declare-fun bm!98600 () Bool)

(assert (=> bm!98600 (= call!98608 call!98610)))

(declare-fun bm!98601 () Bool)

(assert (=> bm!98601 (= call!98604 call!98606)))

(declare-fun bm!98602 () Bool)

(assert (=> bm!98602 (= call!98609 call!98605)))

(declare-fun bm!98603 () Bool)

(assert (=> bm!98603 (= call!98606 (++!4243 (ite c!243190 (ite c!243184 (right!13582 (c!243105 acc!392)) (right!13582 (right!13582 (c!243105 acc!392)))) (c!243105 acc!392)) (ite c!243190 (c!243105 (_1!8087 lt!515354)) (ite c!243183 (left!13252 (c!243105 (_1!8087 lt!515354))) (left!13252 (left!13252 (c!243105 (_1!8087 lt!515354))))))))))

(declare-fun b!1483844 () Bool)

(assert (=> b!1483844 (= e!948935 (= (list!6253 lt!515422) (++!4244 (list!6253 (c!243105 acc!392)) (list!6253 (c!243105 (_1!8087 lt!515354))))))))

(declare-fun b!1483845 () Bool)

(assert (=> b!1483845 (= c!243187 (and (<= (- 1) lt!515420) (<= lt!515420 1)))))

(assert (=> b!1483845 (= lt!515420 (- (height!789 (c!243105 (_1!8087 lt!515354))) (height!789 (c!243105 acc!392))))))

(assert (=> b!1483845 (= e!948934 e!948932)))

(declare-fun bm!98604 () Bool)

(assert (=> bm!98604 (= call!98607 call!98609)))

(declare-fun bm!98605 () Bool)

(assert (=> bm!98605 (= call!98599 call!98607)))

(declare-fun b!1483846 () Bool)

(declare-fun res!670221 () Bool)

(assert (=> b!1483846 (=> (not res!670221) (not e!948935))))

(assert (=> b!1483846 (= res!670221 (isBalanced!1588 lt!515422))))

(declare-fun b!1483847 () Bool)

(assert (=> b!1483847 (= e!948926 e!948934)))

(declare-fun c!243185 () Bool)

(assert (=> b!1483847 (= c!243185 (= (c!243105 (_1!8087 lt!515354)) Empty!5359))))

(declare-fun b!1483848 () Bool)

(assert (=> b!1483848 (= e!948928 call!98599)))

(declare-fun b!1483849 () Bool)

(declare-fun res!670223 () Bool)

(assert (=> b!1483849 (=> (not res!670223) (not e!948935))))

(assert (=> b!1483849 (= res!670223 (>= (height!789 lt!515422) (max!0 (height!789 (c!243105 acc!392)) (height!789 (c!243105 (_1!8087 lt!515354))))))))

(assert (= (and d!435116 res!670225) b!1483832))

(assert (= (and d!435116 c!243188) b!1483842))

(assert (= (and d!435116 (not c!243188)) b!1483847))

(assert (= (and b!1483847 c!243185) b!1483843))

(assert (= (and b!1483847 (not c!243185)) b!1483845))

(assert (= (and b!1483845 c!243187) b!1483829))

(assert (= (and b!1483845 (not c!243187)) b!1483831))

(assert (= (and b!1483831 c!243190) b!1483833))

(assert (= (and b!1483831 (not c!243190)) b!1483838))

(assert (= (and b!1483833 c!243184) b!1483834))

(assert (= (and b!1483833 (not c!243184)) b!1483837))

(assert (= (and b!1483837 c!243189) b!1483840))

(assert (= (and b!1483837 (not c!243189)) b!1483848))

(assert (= (or b!1483840 b!1483848) bm!98600))

(assert (= (or b!1483840 b!1483848) bm!98605))

(assert (= (or b!1483834 b!1483837) bm!98601))

(assert (= (or b!1483834 bm!98605) bm!98604))

(assert (= (and b!1483838 c!243183) b!1483836))

(assert (= (and b!1483838 (not c!243183)) b!1483839))

(assert (= (and b!1483839 c!243186) b!1483830))

(assert (= (and b!1483839 (not c!243186)) b!1483841))

(assert (= (or b!1483830 b!1483841) bm!98592))

(assert (= (or b!1483830 b!1483841) bm!98593))

(assert (= (or b!1483836 b!1483839) bm!98596))

(assert (= (or b!1483836 bm!98592) bm!98597))

(assert (= (or b!1483833 b!1483839) bm!98591))

(assert (= (or b!1483833 b!1483838) bm!98594))

(assert (= (or b!1483837 b!1483838) bm!98590))

(assert (= (or bm!98600 bm!98597) bm!98599))

(assert (= (or b!1483837 b!1483839) bm!98595))

(assert (= (or bm!98601 bm!98596) bm!98603))

(assert (= (or bm!98604 bm!98593) bm!98602))

(assert (= (or b!1483829 bm!98602) bm!98598))

(assert (= (and d!435116 res!670222) b!1483846))

(assert (= (and b!1483846 res!670221) b!1483835))

(assert (= (and b!1483835 res!670224) b!1483849))

(assert (= (and b!1483849 res!670223) b!1483844))

(assert (=> d!435116 m!1729981))

(assert (=> d!435116 m!1730039))

(declare-fun m!1730279 () Bool)

(assert (=> b!1483835 m!1730279))

(assert (=> b!1483835 m!1729975))

(assert (=> b!1483835 m!1729973))

(assert (=> b!1483835 m!1729975))

(assert (=> b!1483835 m!1729973))

(assert (=> b!1483835 m!1729977))

(declare-fun m!1730281 () Bool)

(assert (=> bm!98595 m!1730281))

(declare-fun m!1730283 () Bool)

(assert (=> bm!98590 m!1730283))

(declare-fun m!1730285 () Bool)

(assert (=> bm!98591 m!1730285))

(declare-fun m!1730287 () Bool)

(assert (=> bm!98594 m!1730287))

(declare-fun m!1730289 () Bool)

(assert (=> bm!98599 m!1730289))

(declare-fun m!1730291 () Bool)

(assert (=> b!1483832 m!1730291))

(declare-fun m!1730293 () Bool)

(assert (=> b!1483846 m!1730293))

(declare-fun m!1730295 () Bool)

(assert (=> b!1483844 m!1730295))

(assert (=> b!1483844 m!1729879))

(assert (=> b!1483844 m!1730199))

(assert (=> b!1483844 m!1729879))

(assert (=> b!1483844 m!1730199))

(declare-fun m!1730297 () Bool)

(assert (=> b!1483844 m!1730297))

(declare-fun m!1730299 () Bool)

(assert (=> bm!98598 m!1730299))

(declare-fun m!1730301 () Bool)

(assert (=> bm!98603 m!1730301))

(assert (=> b!1483845 m!1729973))

(assert (=> b!1483845 m!1729975))

(assert (=> b!1483849 m!1730279))

(assert (=> b!1483849 m!1729975))

(assert (=> b!1483849 m!1729973))

(assert (=> b!1483849 m!1729975))

(assert (=> b!1483849 m!1729973))

(assert (=> b!1483849 m!1729977))

(assert (=> d!435024 d!435116))

(declare-fun b!1483862 () Bool)

(declare-fun res!670242 () Bool)

(declare-fun e!948940 () Bool)

(assert (=> b!1483862 (=> (not res!670242) (not e!948940))))

(assert (=> b!1483862 (= res!670242 (isBalanced!1587 (right!13581 (c!243104 totalInput!458))))))

(declare-fun b!1483863 () Bool)

(declare-fun e!948941 () Bool)

(assert (=> b!1483863 (= e!948941 e!948940)))

(declare-fun res!670239 () Bool)

(assert (=> b!1483863 (=> (not res!670239) (not e!948940))))

(declare-fun height!790 (Conc!5358) Int)

(assert (=> b!1483863 (= res!670239 (<= (- 1) (- (height!790 (left!13251 (c!243104 totalInput!458))) (height!790 (right!13581 (c!243104 totalInput!458))))))))

(declare-fun b!1483864 () Bool)

(declare-fun res!670241 () Bool)

(assert (=> b!1483864 (=> (not res!670241) (not e!948940))))

(assert (=> b!1483864 (= res!670241 (isBalanced!1587 (left!13251 (c!243104 totalInput!458))))))

(declare-fun b!1483865 () Bool)

(declare-fun res!670238 () Bool)

(assert (=> b!1483865 (=> (not res!670238) (not e!948940))))

(declare-fun isEmpty!9837 (Conc!5358) Bool)

(assert (=> b!1483865 (= res!670238 (not (isEmpty!9837 (left!13251 (c!243104 totalInput!458)))))))

(declare-fun b!1483867 () Bool)

(declare-fun res!670243 () Bool)

(assert (=> b!1483867 (=> (not res!670243) (not e!948940))))

(assert (=> b!1483867 (= res!670243 (<= (- (height!790 (left!13251 (c!243104 totalInput!458))) (height!790 (right!13581 (c!243104 totalInput!458)))) 1))))

(declare-fun b!1483866 () Bool)

(assert (=> b!1483866 (= e!948940 (not (isEmpty!9837 (right!13581 (c!243104 totalInput!458)))))))

(declare-fun d!435118 () Bool)

(declare-fun res!670240 () Bool)

(assert (=> d!435118 (=> res!670240 e!948941)))

(assert (=> d!435118 (= res!670240 (not ((_ is Node!5358) (c!243104 totalInput!458))))))

(assert (=> d!435118 (= (isBalanced!1587 (c!243104 totalInput!458)) e!948941)))

(assert (= (and d!435118 (not res!670240)) b!1483863))

(assert (= (and b!1483863 res!670239) b!1483867))

(assert (= (and b!1483867 res!670243) b!1483864))

(assert (= (and b!1483864 res!670241) b!1483862))

(assert (= (and b!1483862 res!670242) b!1483865))

(assert (= (and b!1483865 res!670238) b!1483866))

(declare-fun m!1730303 () Bool)

(assert (=> b!1483864 m!1730303))

(declare-fun m!1730305 () Bool)

(assert (=> b!1483866 m!1730305))

(declare-fun m!1730307 () Bool)

(assert (=> b!1483867 m!1730307))

(declare-fun m!1730309 () Bool)

(assert (=> b!1483867 m!1730309))

(assert (=> b!1483863 m!1730307))

(assert (=> b!1483863 m!1730309))

(declare-fun m!1730311 () Bool)

(assert (=> b!1483862 m!1730311))

(declare-fun m!1730313 () Bool)

(assert (=> b!1483865 m!1730313))

(assert (=> d!435056 d!435118))

(declare-fun bs!346077 () Bool)

(declare-fun d!435120 () Bool)

(assert (= bs!346077 (and d!435120 d!435076)))

(declare-fun lambda!63845 () Int)

(assert (=> bs!346077 (= lambda!63845 lambda!63843)))

(declare-fun bs!346078 () Bool)

(assert (= bs!346078 (and d!435120 d!435086)))

(assert (=> bs!346078 (= lambda!63845 lambda!63844)))

(assert (=> d!435120 (= (inv!20959 setElem!8226) (forall!3820 (exprs!1135 setElem!8226) lambda!63845))))

(declare-fun bs!346079 () Bool)

(assert (= bs!346079 d!435120))

(declare-fun m!1730315 () Bool)

(assert (=> bs!346079 m!1730315))

(assert (=> setNonEmpty!8225 d!435120))

(declare-fun d!435122 () Bool)

(assert (=> d!435122 (= (list!6252 (_1!8087 lt!515380)) (list!6253 (c!243105 (_1!8087 lt!515380))))))

(declare-fun bs!346080 () Bool)

(assert (= bs!346080 d!435122))

(declare-fun m!1730317 () Bool)

(assert (=> bs!346080 m!1730317))

(assert (=> b!1483459 d!435122))

(declare-fun b!1483868 () Bool)

(declare-fun e!948942 () Bool)

(declare-fun lt!515424 () tuple2!14394)

(assert (=> b!1483868 (= e!948942 (= (_2!8091 lt!515424) (list!6251 input!1102)))))

(declare-fun d!435124 () Bool)

(assert (=> d!435124 e!948942))

(declare-fun c!243191 () Bool)

(assert (=> d!435124 (= c!243191 (> (size!12743 (_1!8091 lt!515424)) 0))))

(declare-fun e!948943 () tuple2!14394)

(assert (=> d!435124 (= lt!515424 e!948943)))

(declare-fun c!243192 () Bool)

(declare-fun lt!515423 () Option!2889)

(assert (=> d!435124 (= c!243192 ((_ is Some!2888) lt!515423))))

(assert (=> d!435124 (= lt!515423 (maxPrefix!1198 thiss!13241 rules!1640 (list!6251 input!1102)))))

(assert (=> d!435124 (= (lexList!725 thiss!13241 rules!1640 (list!6251 input!1102)) lt!515424)))

(declare-fun b!1483869 () Bool)

(declare-fun e!948944 () Bool)

(assert (=> b!1483869 (= e!948942 e!948944)))

(declare-fun res!670244 () Bool)

(assert (=> b!1483869 (= res!670244 (< (size!12742 (_2!8091 lt!515424)) (size!12742 (list!6251 input!1102))))))

(assert (=> b!1483869 (=> (not res!670244) (not e!948944))))

(declare-fun b!1483870 () Bool)

(assert (=> b!1483870 (= e!948944 (not (isEmpty!9836 (_1!8091 lt!515424))))))

(declare-fun b!1483871 () Bool)

(declare-fun lt!515425 () tuple2!14394)

(assert (=> b!1483871 (= e!948943 (tuple2!14395 (Cons!15733 (_1!8092 (v!22577 lt!515423)) (_1!8091 lt!515425)) (_2!8091 lt!515425)))))

(assert (=> b!1483871 (= lt!515425 (lexList!725 thiss!13241 rules!1640 (_2!8092 (v!22577 lt!515423))))))

(declare-fun b!1483872 () Bool)

(assert (=> b!1483872 (= e!948943 (tuple2!14395 Nil!15733 (list!6251 input!1102)))))

(assert (= (and d!435124 c!243192) b!1483871))

(assert (= (and d!435124 (not c!243192)) b!1483872))

(assert (= (and d!435124 c!243191) b!1483869))

(assert (= (and d!435124 (not c!243191)) b!1483868))

(assert (= (and b!1483869 res!670244) b!1483870))

(declare-fun m!1730319 () Bool)

(assert (=> d!435124 m!1730319))

(assert (=> d!435124 m!1729863))

(declare-fun m!1730321 () Bool)

(assert (=> d!435124 m!1730321))

(declare-fun m!1730323 () Bool)

(assert (=> b!1483869 m!1730323))

(assert (=> b!1483869 m!1729863))

(declare-fun m!1730325 () Bool)

(assert (=> b!1483869 m!1730325))

(declare-fun m!1730327 () Bool)

(assert (=> b!1483870 m!1730327))

(declare-fun m!1730329 () Bool)

(assert (=> b!1483871 m!1730329))

(assert (=> b!1483459 d!435124))

(assert (=> b!1483459 d!435012))

(declare-fun bs!346081 () Bool)

(declare-fun d!435126 () Bool)

(assert (= bs!346081 (and d!435126 d!435076)))

(declare-fun lambda!63846 () Int)

(assert (=> bs!346081 (= lambda!63846 lambda!63843)))

(declare-fun bs!346082 () Bool)

(assert (= bs!346082 (and d!435126 d!435086)))

(assert (=> bs!346082 (= lambda!63846 lambda!63844)))

(declare-fun bs!346083 () Bool)

(assert (= bs!346083 (and d!435126 d!435120)))

(assert (=> bs!346083 (= lambda!63846 lambda!63845)))

(assert (=> d!435126 (= (inv!20959 (_1!8085 (_1!8086 (h!21132 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))))) (forall!3820 (exprs!1135 (_1!8085 (_1!8086 (h!21132 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))))) lambda!63846))))

(declare-fun bs!346084 () Bool)

(assert (= bs!346084 d!435126))

(declare-fun m!1730331 () Bool)

(assert (=> bs!346084 m!1730331))

(assert (=> b!1483630 d!435126))

(declare-fun d!435128 () Bool)

(assert (=> d!435128 true))

(declare-fun lambda!63849 () Int)

(declare-fun order!9499 () Int)

(declare-fun order!9501 () Int)

(declare-fun dynLambda!7161 (Int Int) Int)

(declare-fun dynLambda!7162 (Int Int) Int)

(assert (=> d!435128 (< (dynLambda!7161 order!9499 (toValue!4142 (transformation!2803 (h!21136 rules!1640)))) (dynLambda!7162 order!9501 lambda!63849))))

(declare-fun Forall2!476 (Int) Bool)

(assert (=> d!435128 (= (equivClasses!1019 (toChars!4001 (transformation!2803 (h!21136 rules!1640))) (toValue!4142 (transformation!2803 (h!21136 rules!1640)))) (Forall2!476 lambda!63849))))

(declare-fun bs!346085 () Bool)

(assert (= bs!346085 d!435128))

(declare-fun m!1730333 () Bool)

(assert (=> bs!346085 m!1730333))

(assert (=> b!1483485 d!435128))

(declare-fun bs!346086 () Bool)

(declare-fun d!435130 () Bool)

(assert (= bs!346086 (and d!435130 d!435076)))

(declare-fun lambda!63850 () Int)

(assert (=> bs!346086 (= lambda!63850 lambda!63843)))

(declare-fun bs!346087 () Bool)

(assert (= bs!346087 (and d!435130 d!435086)))

(assert (=> bs!346087 (= lambda!63850 lambda!63844)))

(declare-fun bs!346088 () Bool)

(assert (= bs!346088 (and d!435130 d!435120)))

(assert (=> bs!346088 (= lambda!63850 lambda!63845)))

(declare-fun bs!346089 () Bool)

(assert (= bs!346089 (and d!435130 d!435126)))

(assert (=> bs!346089 (= lambda!63850 lambda!63846)))

(assert (=> d!435130 (= (inv!20959 setElem!8210) (forall!3820 (exprs!1135 setElem!8210) lambda!63850))))

(declare-fun bs!346090 () Bool)

(assert (= bs!346090 d!435130))

(declare-fun m!1730335 () Bool)

(assert (=> bs!346090 m!1730335))

(assert (=> setNonEmpty!8210 d!435130))

(declare-fun d!435132 () Bool)

(declare-fun lt!515426 () Int)

(assert (=> d!435132 (>= lt!515426 0)))

(declare-fun e!948947 () Int)

(assert (=> d!435132 (= lt!515426 e!948947)))

(declare-fun c!243193 () Bool)

(assert (=> d!435132 (= c!243193 ((_ is Nil!15730) lt!515356))))

(assert (=> d!435132 (= (size!12742 lt!515356) lt!515426)))

(declare-fun b!1483877 () Bool)

(assert (=> b!1483877 (= e!948947 0)))

(declare-fun b!1483878 () Bool)

(assert (=> b!1483878 (= e!948947 (+ 1 (size!12742 (t!137715 lt!515356))))))

(assert (= (and d!435132 c!243193) b!1483877))

(assert (= (and d!435132 (not c!243193)) b!1483878))

(declare-fun m!1730337 () Bool)

(assert (=> b!1483878 m!1730337))

(assert (=> b!1483470 d!435132))

(assert (=> b!1483470 d!435112))

(declare-fun b!1483881 () Bool)

(declare-fun e!948949 () List!15798)

(assert (=> b!1483881 (= e!948949 (list!6255 (xs!8113 (c!243104 totalInput!458))))))

(declare-fun b!1483880 () Bool)

(declare-fun e!948948 () List!15798)

(assert (=> b!1483880 (= e!948948 e!948949)))

(declare-fun c!243195 () Bool)

(assert (=> b!1483880 (= c!243195 ((_ is Leaf!7962) (c!243104 totalInput!458)))))

(declare-fun b!1483879 () Bool)

(assert (=> b!1483879 (= e!948948 Nil!15730)))

(declare-fun d!435134 () Bool)

(declare-fun c!243194 () Bool)

(assert (=> d!435134 (= c!243194 ((_ is Empty!5358) (c!243104 totalInput!458)))))

(assert (=> d!435134 (= (list!6254 (c!243104 totalInput!458)) e!948948)))

(declare-fun b!1483882 () Bool)

(assert (=> b!1483882 (= e!948949 (++!4242 (list!6254 (left!13251 (c!243104 totalInput!458))) (list!6254 (right!13581 (c!243104 totalInput!458)))))))

(assert (= (and d!435134 c!243194) b!1483879))

(assert (= (and d!435134 (not c!243194)) b!1483880))

(assert (= (and b!1483880 c!243195) b!1483881))

(assert (= (and b!1483880 (not c!243195)) b!1483882))

(assert (=> b!1483881 m!1730201))

(declare-fun m!1730339 () Bool)

(assert (=> b!1483882 m!1730339))

(declare-fun m!1730341 () Bool)

(assert (=> b!1483882 m!1730341))

(assert (=> b!1483882 m!1730339))

(assert (=> b!1483882 m!1730341))

(declare-fun m!1730343 () Bool)

(assert (=> b!1483882 m!1730343))

(assert (=> d!435010 d!435134))

(declare-fun b!1483885 () Bool)

(declare-fun e!948951 () List!15798)

(assert (=> b!1483885 (= e!948951 (list!6255 (xs!8113 (c!243104 (_2!8087 lt!515354)))))))

(declare-fun b!1483884 () Bool)

(declare-fun e!948950 () List!15798)

(assert (=> b!1483884 (= e!948950 e!948951)))

(declare-fun c!243197 () Bool)

(assert (=> b!1483884 (= c!243197 ((_ is Leaf!7962) (c!243104 (_2!8087 lt!515354))))))

(declare-fun b!1483883 () Bool)

(assert (=> b!1483883 (= e!948950 Nil!15730)))

(declare-fun d!435136 () Bool)

(declare-fun c!243196 () Bool)

(assert (=> d!435136 (= c!243196 ((_ is Empty!5358) (c!243104 (_2!8087 lt!515354))))))

(assert (=> d!435136 (= (list!6254 (c!243104 (_2!8087 lt!515354))) e!948950)))

(declare-fun b!1483886 () Bool)

(assert (=> b!1483886 (= e!948951 (++!4242 (list!6254 (left!13251 (c!243104 (_2!8087 lt!515354)))) (list!6254 (right!13581 (c!243104 (_2!8087 lt!515354))))))))

(assert (= (and d!435136 c!243196) b!1483883))

(assert (= (and d!435136 (not c!243196)) b!1483884))

(assert (= (and b!1483884 c!243197) b!1483885))

(assert (= (and b!1483884 (not c!243197)) b!1483886))

(declare-fun m!1730345 () Bool)

(assert (=> b!1483885 m!1730345))

(declare-fun m!1730347 () Bool)

(assert (=> b!1483886 m!1730347))

(declare-fun m!1730349 () Bool)

(assert (=> b!1483886 m!1730349))

(assert (=> b!1483886 m!1730347))

(assert (=> b!1483886 m!1730349))

(declare-fun m!1730351 () Bool)

(assert (=> b!1483886 m!1730351))

(assert (=> d!435006 d!435136))

(declare-fun d!435138 () Bool)

(assert (=> d!435138 (= (inv!20958 (xs!8113 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) (<= (size!12742 (innerList!5418 (xs!8113 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) 2147483647))))

(declare-fun bs!346091 () Bool)

(assert (= bs!346091 d!435138))

(declare-fun m!1730353 () Bool)

(assert (=> bs!346091 m!1730353))

(assert (=> b!1483547 d!435138))

(declare-fun d!435140 () Bool)

(declare-fun res!670251 () Bool)

(declare-fun e!948954 () Bool)

(assert (=> d!435140 (=> (not res!670251) (not e!948954))))

(declare-fun valid!1070 (MutableMap!1305) Bool)

(assert (=> d!435140 (= res!670251 (valid!1070 (cache!1686 cacheUp!616)))))

(assert (=> d!435140 (= (validCacheMapUp!124 (cache!1686 cacheUp!616)) e!948954)))

(declare-fun b!1483891 () Bool)

(declare-fun res!670252 () Bool)

(assert (=> b!1483891 (=> (not res!670252) (not e!948954))))

(declare-fun invariantList!205 (List!15799) Bool)

(declare-datatypes ((ListMap!459 0))(
  ( (ListMap!460 (toList!787 List!15799)) )
))
(declare-fun map!3374 (MutableMap!1305) ListMap!459)

(assert (=> b!1483891 (= res!670252 (invariantList!205 (toList!787 (map!3374 (cache!1686 cacheUp!616)))))))

(declare-fun b!1483892 () Bool)

(declare-fun lambda!63853 () Int)

(declare-fun forall!3821 (List!15799 Int) Bool)

(assert (=> b!1483892 (= e!948954 (forall!3821 (toList!787 (map!3374 (cache!1686 cacheUp!616))) lambda!63853))))

(assert (= (and d!435140 res!670251) b!1483891))

(assert (= (and b!1483891 res!670252) b!1483892))

(declare-fun m!1730356 () Bool)

(assert (=> d!435140 m!1730356))

(declare-fun m!1730358 () Bool)

(assert (=> b!1483891 m!1730358))

(declare-fun m!1730360 () Bool)

(assert (=> b!1483891 m!1730360))

(assert (=> b!1483892 m!1730358))

(declare-fun m!1730362 () Bool)

(assert (=> b!1483892 m!1730362))

(assert (=> b!1483479 d!435140))

(declare-fun bs!346092 () Bool)

(declare-fun d!435142 () Bool)

(assert (= bs!346092 (and d!435142 d!435120)))

(declare-fun lambda!63854 () Int)

(assert (=> bs!346092 (= lambda!63854 lambda!63845)))

(declare-fun bs!346093 () Bool)

(assert (= bs!346093 (and d!435142 d!435130)))

(assert (=> bs!346093 (= lambda!63854 lambda!63850)))

(declare-fun bs!346094 () Bool)

(assert (= bs!346094 (and d!435142 d!435086)))

(assert (=> bs!346094 (= lambda!63854 lambda!63844)))

(declare-fun bs!346095 () Bool)

(assert (= bs!346095 (and d!435142 d!435126)))

(assert (=> bs!346095 (= lambda!63854 lambda!63846)))

(declare-fun bs!346096 () Bool)

(assert (= bs!346096 (and d!435142 d!435076)))

(assert (=> bs!346096 (= lambda!63854 lambda!63843)))

(assert (=> d!435142 (= (inv!20959 (_2!8088 (_1!8089 (h!21135 mapDefault!6498)))) (forall!3820 (exprs!1135 (_2!8088 (_1!8089 (h!21135 mapDefault!6498)))) lambda!63854))))

(declare-fun bs!346097 () Bool)

(assert (= bs!346097 d!435142))

(declare-fun m!1730364 () Bool)

(assert (=> bs!346097 m!1730364))

(assert (=> b!1483584 d!435142))

(declare-fun d!435144 () Bool)

(declare-fun lt!515427 () Int)

(assert (=> d!435144 (>= lt!515427 0)))

(declare-fun e!948955 () Int)

(assert (=> d!435144 (= lt!515427 e!948955)))

(declare-fun c!243198 () Bool)

(assert (=> d!435144 (= c!243198 ((_ is Nil!15730) lt!515369))))

(assert (=> d!435144 (= (size!12742 lt!515369) lt!515427)))

(declare-fun b!1483893 () Bool)

(assert (=> b!1483893 (= e!948955 0)))

(declare-fun b!1483894 () Bool)

(assert (=> b!1483894 (= e!948955 (+ 1 (size!12742 (t!137715 lt!515369))))))

(assert (= (and d!435144 c!243198) b!1483893))

(assert (= (and d!435144 (not c!243198)) b!1483894))

(declare-fun m!1730366 () Bool)

(assert (=> b!1483894 m!1730366))

(assert (=> b!1483425 d!435144))

(declare-fun d!435146 () Bool)

(declare-fun lt!515428 () Int)

(assert (=> d!435146 (>= lt!515428 0)))

(declare-fun e!948956 () Int)

(assert (=> d!435146 (= lt!515428 e!948956)))

(declare-fun c!243199 () Bool)

(assert (=> d!435146 (= c!243199 ((_ is Nil!15730) lt!515350))))

(assert (=> d!435146 (= (size!12742 lt!515350) lt!515428)))

(declare-fun b!1483895 () Bool)

(assert (=> b!1483895 (= e!948956 0)))

(declare-fun b!1483896 () Bool)

(assert (=> b!1483896 (= e!948956 (+ 1 (size!12742 (t!137715 lt!515350))))))

(assert (= (and d!435146 c!243199) b!1483895))

(assert (= (and d!435146 (not c!243199)) b!1483896))

(declare-fun m!1730368 () Bool)

(assert (=> b!1483896 m!1730368))

(assert (=> b!1483425 d!435146))

(assert (=> b!1483425 d!435112))

(declare-fun d!435148 () Bool)

(assert (=> d!435148 (= (inv!20958 (xs!8113 (c!243104 treated!70))) (<= (size!12742 (innerList!5418 (xs!8113 (c!243104 treated!70)))) 2147483647))))

(declare-fun bs!346098 () Bool)

(assert (= bs!346098 d!435148))

(declare-fun m!1730370 () Bool)

(assert (=> bs!346098 m!1730370))

(assert (=> b!1483582 d!435148))

(declare-fun b!1483909 () Bool)

(declare-fun res!670269 () Bool)

(declare-fun e!948961 () Bool)

(assert (=> b!1483909 (=> (not res!670269) (not e!948961))))

(declare-fun isEmpty!9838 (Conc!5359) Bool)

(assert (=> b!1483909 (= res!670269 (not (isEmpty!9838 (left!13252 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))))))))

(declare-fun b!1483910 () Bool)

(declare-fun res!670267 () Bool)

(assert (=> b!1483910 (=> (not res!670267) (not e!948961))))

(assert (=> b!1483910 (= res!670267 (isBalanced!1588 (left!13252 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))))))))

(declare-fun b!1483911 () Bool)

(declare-fun e!948962 () Bool)

(assert (=> b!1483911 (= e!948962 e!948961)))

(declare-fun res!670270 () Bool)

(assert (=> b!1483911 (=> (not res!670270) (not e!948961))))

(assert (=> b!1483911 (= res!670270 (<= (- 1) (- (height!789 (left!13252 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))))) (height!789 (right!13582 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))))))))))

(declare-fun b!1483912 () Bool)

(declare-fun res!670265 () Bool)

(assert (=> b!1483912 (=> (not res!670265) (not e!948961))))

(assert (=> b!1483912 (= res!670265 (<= (- (height!789 (left!13252 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))))) (height!789 (right!13582 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))))) 1))))

(declare-fun d!435150 () Bool)

(declare-fun res!670266 () Bool)

(assert (=> d!435150 (=> res!670266 e!948962)))

(assert (=> d!435150 (= res!670266 (not ((_ is Node!5359) (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))))))))

(assert (=> d!435150 (= (isBalanced!1588 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))) e!948962)))

(declare-fun b!1483913 () Bool)

(declare-fun res!670268 () Bool)

(assert (=> b!1483913 (=> (not res!670268) (not e!948961))))

(assert (=> b!1483913 (= res!670268 (isBalanced!1588 (right!13582 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354))))))))

(declare-fun b!1483914 () Bool)

(assert (=> b!1483914 (= e!948961 (not (isEmpty!9838 (right!13582 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))))))))

(assert (= (and d!435150 (not res!670266)) b!1483911))

(assert (= (and b!1483911 res!670270) b!1483912))

(assert (= (and b!1483912 res!670265) b!1483910))

(assert (= (and b!1483910 res!670267) b!1483913))

(assert (= (and b!1483913 res!670268) b!1483909))

(assert (= (and b!1483909 res!670269) b!1483914))

(declare-fun m!1730372 () Bool)

(assert (=> b!1483913 m!1730372))

(declare-fun m!1730374 () Bool)

(assert (=> b!1483912 m!1730374))

(declare-fun m!1730376 () Bool)

(assert (=> b!1483912 m!1730376))

(declare-fun m!1730378 () Bool)

(assert (=> b!1483914 m!1730378))

(declare-fun m!1730380 () Bool)

(assert (=> b!1483909 m!1730380))

(declare-fun m!1730382 () Bool)

(assert (=> b!1483910 m!1730382))

(assert (=> b!1483911 m!1730374))

(assert (=> b!1483911 m!1730376))

(assert (=> b!1483453 d!435150))

(assert (=> b!1483453 d!435116))

(declare-fun d!435152 () Bool)

(declare-fun c!243202 () Bool)

(assert (=> d!435152 (= c!243202 ((_ is Nil!15730) lt!515369))))

(declare-fun e!948965 () (InoxSet C!8412))

(assert (=> d!435152 (= (content!2284 lt!515369) e!948965)))

(declare-fun b!1483919 () Bool)

(assert (=> b!1483919 (= e!948965 ((as const (Array C!8412 Bool)) false))))

(declare-fun b!1483920 () Bool)

(assert (=> b!1483920 (= e!948965 ((_ map or) (store ((as const (Array C!8412 Bool)) false) (h!21131 lt!515369) true) (content!2284 (t!137715 lt!515369))))))

(assert (= (and d!435152 c!243202) b!1483919))

(assert (= (and d!435152 (not c!243202)) b!1483920))

(declare-fun m!1730384 () Bool)

(assert (=> b!1483920 m!1730384))

(declare-fun m!1730386 () Bool)

(assert (=> b!1483920 m!1730386))

(assert (=> d!435008 d!435152))

(declare-fun d!435154 () Bool)

(declare-fun c!243203 () Bool)

(assert (=> d!435154 (= c!243203 ((_ is Nil!15730) lt!515350))))

(declare-fun e!948966 () (InoxSet C!8412))

(assert (=> d!435154 (= (content!2284 lt!515350) e!948966)))

(declare-fun b!1483921 () Bool)

(assert (=> b!1483921 (= e!948966 ((as const (Array C!8412 Bool)) false))))

(declare-fun b!1483922 () Bool)

(assert (=> b!1483922 (= e!948966 ((_ map or) (store ((as const (Array C!8412 Bool)) false) (h!21131 lt!515350) true) (content!2284 (t!137715 lt!515350))))))

(assert (= (and d!435154 c!243203) b!1483921))

(assert (= (and d!435154 (not c!243203)) b!1483922))

(declare-fun m!1730388 () Bool)

(assert (=> b!1483922 m!1730388))

(declare-fun m!1730390 () Bool)

(assert (=> b!1483922 m!1730390))

(assert (=> d!435008 d!435154))

(declare-fun d!435156 () Bool)

(declare-fun c!243204 () Bool)

(assert (=> d!435156 (= c!243204 ((_ is Nil!15730) lt!515348))))

(declare-fun e!948967 () (InoxSet C!8412))

(assert (=> d!435156 (= (content!2284 lt!515348) e!948967)))

(declare-fun b!1483923 () Bool)

(assert (=> b!1483923 (= e!948967 ((as const (Array C!8412 Bool)) false))))

(declare-fun b!1483924 () Bool)

(assert (=> b!1483924 (= e!948967 ((_ map or) (store ((as const (Array C!8412 Bool)) false) (h!21131 lt!515348) true) (content!2284 (t!137715 lt!515348))))))

(assert (= (and d!435156 c!243204) b!1483923))

(assert (= (and d!435156 (not c!243204)) b!1483924))

(declare-fun m!1730392 () Bool)

(assert (=> b!1483924 m!1730392))

(declare-fun m!1730394 () Bool)

(assert (=> b!1483924 m!1730394))

(assert (=> d!435008 d!435156))

(declare-fun bs!346099 () Bool)

(declare-fun d!435158 () Bool)

(assert (= bs!346099 (and d!435158 d!435142)))

(declare-fun lambda!63855 () Int)

(assert (=> bs!346099 (= lambda!63855 lambda!63854)))

(declare-fun bs!346100 () Bool)

(assert (= bs!346100 (and d!435158 d!435120)))

(assert (=> bs!346100 (= lambda!63855 lambda!63845)))

(declare-fun bs!346101 () Bool)

(assert (= bs!346101 (and d!435158 d!435130)))

(assert (=> bs!346101 (= lambda!63855 lambda!63850)))

(declare-fun bs!346102 () Bool)

(assert (= bs!346102 (and d!435158 d!435086)))

(assert (=> bs!346102 (= lambda!63855 lambda!63844)))

(declare-fun bs!346103 () Bool)

(assert (= bs!346103 (and d!435158 d!435126)))

(assert (=> bs!346103 (= lambda!63855 lambda!63846)))

(declare-fun bs!346104 () Bool)

(assert (= bs!346104 (and d!435158 d!435076)))

(assert (=> bs!346104 (= lambda!63855 lambda!63843)))

(assert (=> d!435158 (= (inv!20959 (_1!8085 (_1!8086 (h!21132 mapDefault!6500)))) (forall!3820 (exprs!1135 (_1!8085 (_1!8086 (h!21132 mapDefault!6500)))) lambda!63855))))

(declare-fun bs!346105 () Bool)

(assert (= bs!346105 d!435158))

(declare-fun m!1730396 () Bool)

(assert (=> bs!346105 m!1730396))

(assert (=> b!1483579 d!435158))

(declare-fun d!435160 () Bool)

(assert (=> d!435160 (= (inv!20960 (xs!8114 (c!243105 acc!392))) (<= (size!12743 (innerList!5419 (xs!8114 (c!243105 acc!392)))) 2147483647))))

(declare-fun bs!346106 () Bool)

(assert (= bs!346106 d!435160))

(declare-fun m!1730398 () Bool)

(assert (=> bs!346106 m!1730398))

(assert (=> b!1483641 d!435160))

(declare-fun d!435162 () Bool)

(declare-fun lt!515431 () Bool)

(assert (=> d!435162 (= lt!515431 (isEmpty!9836 (list!6252 (_1!8087 lt!515365))))))

(assert (=> d!435162 (= lt!515431 (isEmpty!9838 (c!243105 (_1!8087 lt!515365))))))

(assert (=> d!435162 (= (isEmpty!9835 (_1!8087 lt!515365)) lt!515431)))

(declare-fun bs!346107 () Bool)

(assert (= bs!346107 d!435162))

(assert (=> bs!346107 m!1729899))

(assert (=> bs!346107 m!1729899))

(declare-fun m!1730400 () Bool)

(assert (=> bs!346107 m!1730400))

(declare-fun m!1730402 () Bool)

(assert (=> bs!346107 m!1730402))

(assert (=> b!1483399 d!435162))

(declare-fun d!435164 () Bool)

(assert (=> d!435164 true))

(declare-fun order!9505 () Int)

(declare-fun lambda!63858 () Int)

(declare-fun order!9503 () Int)

(declare-fun dynLambda!7163 (Int Int) Int)

(declare-fun dynLambda!7164 (Int Int) Int)

(assert (=> d!435164 (< (dynLambda!7163 order!9503 (toChars!4001 (transformation!2803 (h!21136 rules!1640)))) (dynLambda!7164 order!9505 lambda!63858))))

(assert (=> d!435164 true))

(assert (=> d!435164 (< (dynLambda!7161 order!9499 (toValue!4142 (transformation!2803 (h!21136 rules!1640)))) (dynLambda!7164 order!9505 lambda!63858))))

(declare-fun Forall!574 (Int) Bool)

(assert (=> d!435164 (= (semiInverseModEq!1060 (toChars!4001 (transformation!2803 (h!21136 rules!1640))) (toValue!4142 (transformation!2803 (h!21136 rules!1640)))) (Forall!574 lambda!63858))))

(declare-fun bs!346108 () Bool)

(assert (= bs!346108 d!435164))

(declare-fun m!1730404 () Bool)

(assert (=> bs!346108 m!1730404))

(assert (=> d!435068 d!435164))

(declare-fun bs!346109 () Bool)

(declare-fun d!435166 () Bool)

(assert (= bs!346109 (and d!435166 d!435158)))

(declare-fun lambda!63859 () Int)

(assert (=> bs!346109 (= lambda!63859 lambda!63855)))

(declare-fun bs!346110 () Bool)

(assert (= bs!346110 (and d!435166 d!435142)))

(assert (=> bs!346110 (= lambda!63859 lambda!63854)))

(declare-fun bs!346111 () Bool)

(assert (= bs!346111 (and d!435166 d!435120)))

(assert (=> bs!346111 (= lambda!63859 lambda!63845)))

(declare-fun bs!346112 () Bool)

(assert (= bs!346112 (and d!435166 d!435130)))

(assert (=> bs!346112 (= lambda!63859 lambda!63850)))

(declare-fun bs!346113 () Bool)

(assert (= bs!346113 (and d!435166 d!435086)))

(assert (=> bs!346113 (= lambda!63859 lambda!63844)))

(declare-fun bs!346114 () Bool)

(assert (= bs!346114 (and d!435166 d!435126)))

(assert (=> bs!346114 (= lambda!63859 lambda!63846)))

(declare-fun bs!346115 () Bool)

(assert (= bs!346115 (and d!435166 d!435076)))

(assert (=> bs!346115 (= lambda!63859 lambda!63843)))

(assert (=> d!435166 (= (inv!20959 (_2!8088 (_1!8089 (h!21135 mapValue!6503)))) (forall!3820 (exprs!1135 (_2!8088 (_1!8089 (h!21135 mapValue!6503)))) lambda!63859))))

(declare-fun bs!346116 () Bool)

(assert (= bs!346116 d!435166))

(declare-fun m!1730406 () Bool)

(assert (=> bs!346116 m!1730406))

(assert (=> b!1483523 d!435166))

(declare-fun d!435168 () Bool)

(declare-fun lt!515432 () Bool)

(assert (=> d!435168 (= lt!515432 (isEmpty!9836 (list!6252 (_1!8087 lt!515374))))))

(assert (=> d!435168 (= lt!515432 (isEmpty!9838 (c!243105 (_1!8087 lt!515374))))))

(assert (=> d!435168 (= (isEmpty!9835 (_1!8087 lt!515374)) lt!515432)))

(declare-fun bs!346117 () Bool)

(assert (= bs!346117 d!435168))

(assert (=> bs!346117 m!1729967))

(assert (=> bs!346117 m!1729967))

(declare-fun m!1730408 () Bool)

(assert (=> bs!346117 m!1730408))

(declare-fun m!1730410 () Bool)

(assert (=> bs!346117 m!1730410))

(assert (=> b!1483441 d!435168))

(declare-fun d!435170 () Bool)

(declare-fun res!670277 () Bool)

(declare-fun e!948972 () Bool)

(assert (=> d!435170 (=> (not res!670277) (not e!948972))))

(declare-fun valid!1071 (MutableMap!1306) Bool)

(assert (=> d!435170 (= res!670277 (valid!1071 (cache!1687 cacheDown!629)))))

(assert (=> d!435170 (= (validCacheMapDown!124 (cache!1687 cacheDown!629)) e!948972)))

(declare-fun b!1483935 () Bool)

(declare-fun res!670278 () Bool)

(assert (=> b!1483935 (=> (not res!670278) (not e!948972))))

(declare-fun invariantList!206 (List!15802) Bool)

(declare-datatypes ((ListMap!461 0))(
  ( (ListMap!462 (toList!788 List!15802)) )
))
(declare-fun map!3375 (MutableMap!1306) ListMap!461)

(assert (=> b!1483935 (= res!670278 (invariantList!206 (toList!788 (map!3375 (cache!1687 cacheDown!629)))))))

(declare-fun b!1483936 () Bool)

(declare-fun lambda!63862 () Int)

(declare-fun forall!3822 (List!15802 Int) Bool)

(assert (=> b!1483936 (= e!948972 (forall!3822 (toList!788 (map!3375 (cache!1687 cacheDown!629))) lambda!63862))))

(assert (= (and d!435170 res!670277) b!1483935))

(assert (= (and b!1483935 res!670278) b!1483936))

(declare-fun m!1730413 () Bool)

(assert (=> d!435170 m!1730413))

(declare-fun m!1730415 () Bool)

(assert (=> b!1483935 m!1730415))

(declare-fun m!1730417 () Bool)

(assert (=> b!1483935 m!1730417))

(assert (=> b!1483936 m!1730415))

(declare-fun m!1730419 () Bool)

(assert (=> b!1483936 m!1730419))

(assert (=> b!1483476 d!435170))

(declare-fun b!1483947 () Bool)

(declare-fun e!948978 () List!15801)

(assert (=> b!1483947 (= e!948978 (list!6256 (xs!8114 (c!243105 (++!4241 acc!392 (_1!8087 lt!515354))))))))

(declare-fun b!1483945 () Bool)

(declare-fun e!948977 () List!15801)

(assert (=> b!1483945 (= e!948977 Nil!15733)))

(declare-fun d!435172 () Bool)

(declare-fun c!243209 () Bool)

(assert (=> d!435172 (= c!243209 ((_ is Empty!5359) (c!243105 (++!4241 acc!392 (_1!8087 lt!515354)))))))

(assert (=> d!435172 (= (list!6253 (c!243105 (++!4241 acc!392 (_1!8087 lt!515354)))) e!948977)))

(declare-fun b!1483948 () Bool)

(assert (=> b!1483948 (= e!948978 (++!4244 (list!6253 (left!13252 (c!243105 (++!4241 acc!392 (_1!8087 lt!515354))))) (list!6253 (right!13582 (c!243105 (++!4241 acc!392 (_1!8087 lt!515354)))))))))

(declare-fun b!1483946 () Bool)

(assert (=> b!1483946 (= e!948977 e!948978)))

(declare-fun c!243210 () Bool)

(assert (=> b!1483946 (= c!243210 ((_ is Leaf!7963) (c!243105 (++!4241 acc!392 (_1!8087 lt!515354)))))))

(assert (= (and d!435172 c!243209) b!1483945))

(assert (= (and d!435172 (not c!243209)) b!1483946))

(assert (= (and b!1483946 c!243210) b!1483947))

(assert (= (and b!1483946 (not c!243210)) b!1483948))

(declare-fun m!1730421 () Bool)

(assert (=> b!1483947 m!1730421))

(declare-fun m!1730423 () Bool)

(assert (=> b!1483948 m!1730423))

(declare-fun m!1730425 () Bool)

(assert (=> b!1483948 m!1730425))

(assert (=> b!1483948 m!1730423))

(assert (=> b!1483948 m!1730425))

(declare-fun m!1730427 () Bool)

(assert (=> b!1483948 m!1730427))

(assert (=> d!435026 d!435172))

(declare-fun call!98611 () Int)

(declare-fun e!948981 () Int)

(declare-fun b!1483950 () Bool)

(assert (=> b!1483950 (= e!948981 (- call!98611 (- (size!12742 lt!515356) (size!12742 lt!515348))))))

(declare-fun b!1483951 () Bool)

(declare-fun e!948979 () Int)

(assert (=> b!1483951 (= e!948979 call!98611)))

(declare-fun b!1483952 () Bool)

(assert (=> b!1483952 (= e!948979 e!948981)))

(declare-fun c!243212 () Bool)

(assert (=> b!1483952 (= c!243212 (>= (- (size!12742 lt!515356) (size!12742 lt!515348)) call!98611))))

(declare-fun b!1483953 () Bool)

(declare-fun e!948983 () Bool)

(declare-fun lt!515433 () List!15798)

(assert (=> b!1483953 (= e!948983 (= (size!12742 lt!515433) e!948979))))

(declare-fun c!243211 () Bool)

(assert (=> b!1483953 (= c!243211 (<= (- (size!12742 lt!515356) (size!12742 lt!515348)) 0))))

(declare-fun b!1483954 () Bool)

(declare-fun e!948982 () List!15798)

(assert (=> b!1483954 (= e!948982 (drop!749 (t!137715 lt!515356) (- (- (size!12742 lt!515356) (size!12742 lt!515348)) 1)))))

(declare-fun bm!98606 () Bool)

(assert (=> bm!98606 (= call!98611 (size!12742 lt!515356))))

(declare-fun b!1483955 () Bool)

(assert (=> b!1483955 (= e!948982 lt!515356)))

(declare-fun b!1483956 () Bool)

(assert (=> b!1483956 (= e!948981 0)))

(declare-fun b!1483957 () Bool)

(declare-fun e!948980 () List!15798)

(assert (=> b!1483957 (= e!948980 e!948982)))

(declare-fun c!243213 () Bool)

(assert (=> b!1483957 (= c!243213 (<= (- (size!12742 lt!515356) (size!12742 lt!515348)) 0))))

(declare-fun b!1483949 () Bool)

(assert (=> b!1483949 (= e!948980 Nil!15730)))

(declare-fun d!435174 () Bool)

(assert (=> d!435174 e!948983))

(declare-fun res!670279 () Bool)

(assert (=> d!435174 (=> (not res!670279) (not e!948983))))

(assert (=> d!435174 (= res!670279 (= ((_ map implies) (content!2284 lt!515433) (content!2284 lt!515356)) ((as const (InoxSet C!8412)) true)))))

(assert (=> d!435174 (= lt!515433 e!948980)))

(declare-fun c!243214 () Bool)

(assert (=> d!435174 (= c!243214 ((_ is Nil!15730) lt!515356))))

(assert (=> d!435174 (= (drop!749 lt!515356 (- (size!12742 lt!515356) (size!12742 lt!515348))) lt!515433)))

(assert (= (and d!435174 c!243214) b!1483949))

(assert (= (and d!435174 (not c!243214)) b!1483957))

(assert (= (and b!1483957 c!243213) b!1483955))

(assert (= (and b!1483957 (not c!243213)) b!1483954))

(assert (= (and d!435174 res!670279) b!1483953))

(assert (= (and b!1483953 c!243211) b!1483951))

(assert (= (and b!1483953 (not c!243211)) b!1483952))

(assert (= (and b!1483952 c!243212) b!1483956))

(assert (= (and b!1483952 (not c!243212)) b!1483950))

(assert (= (or b!1483951 b!1483952 b!1483950) bm!98606))

(declare-fun m!1730429 () Bool)

(assert (=> b!1483953 m!1730429))

(declare-fun m!1730431 () Bool)

(assert (=> b!1483954 m!1730431))

(assert (=> bm!98606 m!1730023))

(declare-fun m!1730433 () Bool)

(assert (=> d!435174 m!1730433))

(declare-fun m!1730435 () Bool)

(assert (=> d!435174 m!1730435))

(assert (=> d!435040 d!435174))

(assert (=> d!435040 d!435132))

(assert (=> d!435040 d!435112))

(declare-fun d!435176 () Bool)

(declare-fun res!670280 () Bool)

(declare-fun e!948984 () Bool)

(assert (=> d!435176 (=> (not res!670280) (not e!948984))))

(assert (=> d!435176 (= res!670280 (<= (size!12742 (list!6255 (xs!8113 (c!243104 treated!70)))) 512))))

(assert (=> d!435176 (= (inv!20955 (c!243104 treated!70)) e!948984)))

(declare-fun b!1483958 () Bool)

(declare-fun res!670281 () Bool)

(assert (=> b!1483958 (=> (not res!670281) (not e!948984))))

(assert (=> b!1483958 (= res!670281 (= (csize!10947 (c!243104 treated!70)) (size!12742 (list!6255 (xs!8113 (c!243104 treated!70))))))))

(declare-fun b!1483959 () Bool)

(assert (=> b!1483959 (= e!948984 (and (> (csize!10947 (c!243104 treated!70)) 0) (<= (csize!10947 (c!243104 treated!70)) 512)))))

(assert (= (and d!435176 res!670280) b!1483958))

(assert (= (and b!1483958 res!670281) b!1483959))

(declare-fun m!1730437 () Bool)

(assert (=> d!435176 m!1730437))

(assert (=> d!435176 m!1730437))

(declare-fun m!1730439 () Bool)

(assert (=> d!435176 m!1730439))

(assert (=> b!1483958 m!1730437))

(assert (=> b!1483958 m!1730437))

(assert (=> b!1483958 m!1730439))

(assert (=> b!1483482 d!435176))

(declare-fun bs!346118 () Bool)

(declare-fun d!435178 () Bool)

(assert (= bs!346118 (and d!435178 d!435158)))

(declare-fun lambda!63863 () Int)

(assert (=> bs!346118 (= lambda!63863 lambda!63855)))

(declare-fun bs!346119 () Bool)

(assert (= bs!346119 (and d!435178 d!435142)))

(assert (=> bs!346119 (= lambda!63863 lambda!63854)))

(declare-fun bs!346120 () Bool)

(assert (= bs!346120 (and d!435178 d!435120)))

(assert (=> bs!346120 (= lambda!63863 lambda!63845)))

(declare-fun bs!346121 () Bool)

(assert (= bs!346121 (and d!435178 d!435166)))

(assert (=> bs!346121 (= lambda!63863 lambda!63859)))

(declare-fun bs!346122 () Bool)

(assert (= bs!346122 (and d!435178 d!435130)))

(assert (=> bs!346122 (= lambda!63863 lambda!63850)))

(declare-fun bs!346123 () Bool)

(assert (= bs!346123 (and d!435178 d!435086)))

(assert (=> bs!346123 (= lambda!63863 lambda!63844)))

(declare-fun bs!346124 () Bool)

(assert (= bs!346124 (and d!435178 d!435126)))

(assert (=> bs!346124 (= lambda!63863 lambda!63846)))

(declare-fun bs!346125 () Bool)

(assert (= bs!346125 (and d!435178 d!435076)))

(assert (=> bs!346125 (= lambda!63863 lambda!63843)))

(assert (=> d!435178 (= (inv!20959 setElem!8236) (forall!3820 (exprs!1135 setElem!8236) lambda!63863))))

(declare-fun bs!346126 () Bool)

(assert (= bs!346126 d!435178))

(declare-fun m!1730441 () Bool)

(assert (=> bs!346126 m!1730441))

(assert (=> setNonEmpty!8235 d!435178))

(declare-fun bs!346127 () Bool)

(declare-fun d!435180 () Bool)

(assert (= bs!346127 (and d!435180 d!435158)))

(declare-fun lambda!63864 () Int)

(assert (=> bs!346127 (= lambda!63864 lambda!63855)))

(declare-fun bs!346128 () Bool)

(assert (= bs!346128 (and d!435180 d!435142)))

(assert (=> bs!346128 (= lambda!63864 lambda!63854)))

(declare-fun bs!346129 () Bool)

(assert (= bs!346129 (and d!435180 d!435120)))

(assert (=> bs!346129 (= lambda!63864 lambda!63845)))

(declare-fun bs!346130 () Bool)

(assert (= bs!346130 (and d!435180 d!435166)))

(assert (=> bs!346130 (= lambda!63864 lambda!63859)))

(declare-fun bs!346131 () Bool)

(assert (= bs!346131 (and d!435180 d!435178)))

(assert (=> bs!346131 (= lambda!63864 lambda!63863)))

(declare-fun bs!346132 () Bool)

(assert (= bs!346132 (and d!435180 d!435130)))

(assert (=> bs!346132 (= lambda!63864 lambda!63850)))

(declare-fun bs!346133 () Bool)

(assert (= bs!346133 (and d!435180 d!435086)))

(assert (=> bs!346133 (= lambda!63864 lambda!63844)))

(declare-fun bs!346134 () Bool)

(assert (= bs!346134 (and d!435180 d!435126)))

(assert (=> bs!346134 (= lambda!63864 lambda!63846)))

(declare-fun bs!346135 () Bool)

(assert (= bs!346135 (and d!435180 d!435076)))

(assert (=> bs!346135 (= lambda!63864 lambda!63843)))

(assert (=> d!435180 (= (inv!20959 setElem!8225) (forall!3820 (exprs!1135 setElem!8225) lambda!63864))))

(declare-fun bs!346136 () Bool)

(assert (= bs!346136 d!435180))

(declare-fun m!1730443 () Bool)

(assert (=> bs!346136 m!1730443))

(assert (=> setNonEmpty!8226 d!435180))

(declare-fun d!435182 () Bool)

(declare-fun lt!515436 () Int)

(assert (=> d!435182 (= lt!515436 (size!12743 (list!6252 (_1!8087 lt!515374))))))

(declare-fun size!12744 (Conc!5359) Int)

(assert (=> d!435182 (= lt!515436 (size!12744 (c!243105 (_1!8087 lt!515374))))))

(assert (=> d!435182 (= (size!12741 (_1!8087 lt!515374)) lt!515436)))

(declare-fun bs!346137 () Bool)

(assert (= bs!346137 d!435182))

(assert (=> bs!346137 m!1729967))

(assert (=> bs!346137 m!1729967))

(declare-fun m!1730445 () Bool)

(assert (=> bs!346137 m!1730445))

(declare-fun m!1730447 () Bool)

(assert (=> bs!346137 m!1730447))

(assert (=> d!435022 d!435182))

(declare-fun lt!515452 () Option!2888)

(declare-fun b!1483976 () Bool)

(declare-fun e!948998 () Bool)

(declare-fun get!4695 (Option!2888) tuple2!14392)

(declare-fun get!4696 (Option!2889) tuple2!14396)

(declare-fun maxPrefixZipper!249 (LexerInterface!2459 List!15803 List!15798) Option!2889)

(assert (=> b!1483976 (= e!948998 (= (list!6251 (_2!8090 (get!4695 lt!515452))) (_2!8092 (get!4696 (maxPrefixZipper!249 thiss!13241 rules!1640 (list!6251 totalInput!458))))))))

(declare-fun b!1483977 () Bool)

(declare-fun e!949000 () Bool)

(declare-fun e!948999 () Bool)

(assert (=> b!1483977 (= e!949000 e!948999)))

(declare-fun res!670297 () Bool)

(assert (=> b!1483977 (=> (not res!670297) (not e!948999))))

(assert (=> b!1483977 (= res!670297 (= (_1!8090 (get!4695 lt!515452)) (_1!8092 (get!4696 (maxPrefix!1198 thiss!13241 rules!1640 (list!6251 totalInput!458))))))))

(declare-fun bm!98609 () Bool)

(declare-fun call!98614 () Option!2888)

(declare-fun maxPrefixOneRuleZipperSequence!268 (LexerInterface!2459 Rule!5406 BalanceConc!10658) Option!2888)

(assert (=> bm!98609 (= call!98614 (maxPrefixOneRuleZipperSequence!268 thiss!13241 (h!21136 rules!1640) totalInput!458))))

(declare-fun b!1483978 () Bool)

(declare-fun e!949002 () Option!2888)

(declare-fun lt!515453 () Option!2888)

(declare-fun lt!515457 () Option!2888)

(assert (=> b!1483978 (= e!949002 (ite (and ((_ is None!2887) lt!515453) ((_ is None!2887) lt!515457)) None!2887 (ite ((_ is None!2887) lt!515457) lt!515453 (ite ((_ is None!2887) lt!515453) lt!515457 (ite (>= (size!12738 (_1!8090 (v!22575 lt!515453))) (size!12738 (_1!8090 (v!22575 lt!515457)))) lt!515453 lt!515457)))))))

(assert (=> b!1483978 (= lt!515453 call!98614)))

(assert (=> b!1483978 (= lt!515457 (maxPrefixZipperSequence!567 thiss!13241 (t!137720 rules!1640) totalInput!458))))

(declare-fun b!1483979 () Bool)

(declare-fun e!949001 () Bool)

(assert (=> b!1483979 (= e!949001 e!949000)))

(declare-fun res!670299 () Bool)

(assert (=> b!1483979 (=> res!670299 e!949000)))

(declare-fun isDefined!2333 (Option!2888) Bool)

(assert (=> b!1483979 (= res!670299 (not (isDefined!2333 lt!515452)))))

(declare-fun d!435184 () Bool)

(assert (=> d!435184 e!949001))

(declare-fun res!670295 () Bool)

(assert (=> d!435184 (=> (not res!670295) (not e!949001))))

(declare-fun isDefined!2334 (Option!2889) Bool)

(assert (=> d!435184 (= res!670295 (= (isDefined!2333 lt!515452) (isDefined!2334 (maxPrefixZipper!249 thiss!13241 rules!1640 (list!6251 totalInput!458)))))))

(assert (=> d!435184 (= lt!515452 e!949002)))

(declare-fun c!243217 () Bool)

(assert (=> d!435184 (= c!243217 (and ((_ is Cons!15735) rules!1640) ((_ is Nil!15735) (t!137720 rules!1640))))))

(declare-fun lt!515455 () Unit!25608)

(declare-fun lt!515451 () Unit!25608)

(assert (=> d!435184 (= lt!515455 lt!515451)))

(declare-fun lt!515454 () List!15798)

(declare-fun lt!515456 () List!15798)

(declare-fun isPrefix!1208 (List!15798 List!15798) Bool)

(assert (=> d!435184 (isPrefix!1208 lt!515454 lt!515456)))

(declare-fun lemmaIsPrefixRefl!838 (List!15798 List!15798) Unit!25608)

(assert (=> d!435184 (= lt!515451 (lemmaIsPrefixRefl!838 lt!515454 lt!515456))))

(assert (=> d!435184 (= lt!515456 (list!6251 totalInput!458))))

(assert (=> d!435184 (= lt!515454 (list!6251 totalInput!458))))

(assert (=> d!435184 (rulesValidInductive!845 thiss!13241 rules!1640)))

(assert (=> d!435184 (= (maxPrefixZipperSequence!567 thiss!13241 rules!1640 totalInput!458) lt!515452)))

(declare-fun b!1483980 () Bool)

(assert (=> b!1483980 (= e!948999 (= (list!6251 (_2!8090 (get!4695 lt!515452))) (_2!8092 (get!4696 (maxPrefix!1198 thiss!13241 rules!1640 (list!6251 totalInput!458))))))))

(declare-fun b!1483981 () Bool)

(declare-fun e!948997 () Bool)

(assert (=> b!1483981 (= e!948997 e!948998)))

(declare-fun res!670296 () Bool)

(assert (=> b!1483981 (=> (not res!670296) (not e!948998))))

(assert (=> b!1483981 (= res!670296 (= (_1!8090 (get!4695 lt!515452)) (_1!8092 (get!4696 (maxPrefixZipper!249 thiss!13241 rules!1640 (list!6251 totalInput!458))))))))

(declare-fun b!1483982 () Bool)

(assert (=> b!1483982 (= e!949002 call!98614)))

(declare-fun b!1483983 () Bool)

(declare-fun res!670298 () Bool)

(assert (=> b!1483983 (=> (not res!670298) (not e!949001))))

(assert (=> b!1483983 (= res!670298 e!948997)))

(declare-fun res!670294 () Bool)

(assert (=> b!1483983 (=> res!670294 e!948997)))

(assert (=> b!1483983 (= res!670294 (not (isDefined!2333 lt!515452)))))

(assert (= (and d!435184 c!243217) b!1483982))

(assert (= (and d!435184 (not c!243217)) b!1483978))

(assert (= (or b!1483982 b!1483978) bm!98609))

(assert (= (and d!435184 res!670295) b!1483983))

(assert (= (and b!1483983 (not res!670294)) b!1483981))

(assert (= (and b!1483981 res!670296) b!1483976))

(assert (= (and b!1483983 res!670298) b!1483979))

(assert (= (and b!1483979 (not res!670299)) b!1483977))

(assert (= (and b!1483977 res!670297) b!1483980))

(declare-fun m!1730449 () Bool)

(assert (=> b!1483979 m!1730449))

(declare-fun m!1730451 () Bool)

(assert (=> b!1483978 m!1730451))

(assert (=> d!435184 m!1730449))

(declare-fun m!1730453 () Bool)

(assert (=> d!435184 m!1730453))

(assert (=> d!435184 m!1729825))

(declare-fun m!1730455 () Bool)

(assert (=> d!435184 m!1730455))

(declare-fun m!1730457 () Bool)

(assert (=> d!435184 m!1730457))

(declare-fun m!1730459 () Bool)

(assert (=> d!435184 m!1730459))

(assert (=> d!435184 m!1729861))

(assert (=> d!435184 m!1730457))

(assert (=> d!435184 m!1729861))

(assert (=> b!1483976 m!1730457))

(declare-fun m!1730461 () Bool)

(assert (=> b!1483976 m!1730461))

(declare-fun m!1730463 () Bool)

(assert (=> b!1483976 m!1730463))

(declare-fun m!1730465 () Bool)

(assert (=> b!1483976 m!1730465))

(assert (=> b!1483976 m!1729861))

(assert (=> b!1483976 m!1730457))

(assert (=> b!1483976 m!1729861))

(declare-fun m!1730467 () Bool)

(assert (=> bm!98609 m!1730467))

(assert (=> b!1483981 m!1730463))

(assert (=> b!1483981 m!1729861))

(assert (=> b!1483981 m!1729861))

(assert (=> b!1483981 m!1730457))

(assert (=> b!1483981 m!1730457))

(assert (=> b!1483981 m!1730461))

(assert (=> b!1483983 m!1730449))

(assert (=> b!1483980 m!1730209))

(declare-fun m!1730469 () Bool)

(assert (=> b!1483980 m!1730469))

(assert (=> b!1483980 m!1730463))

(assert (=> b!1483980 m!1730465))

(assert (=> b!1483980 m!1729861))

(assert (=> b!1483980 m!1729861))

(assert (=> b!1483980 m!1730209))

(assert (=> b!1483977 m!1730463))

(assert (=> b!1483977 m!1729861))

(assert (=> b!1483977 m!1729861))

(assert (=> b!1483977 m!1730209))

(assert (=> b!1483977 m!1730209))

(assert (=> b!1483977 m!1730469))

(assert (=> d!435022 d!435184))

(declare-fun b!1483986 () Bool)

(declare-fun e!949004 () List!15801)

(assert (=> b!1483986 (= e!949004 (list!6256 (xs!8114 (c!243105 (_1!8087 lt!515352)))))))

(declare-fun b!1483984 () Bool)

(declare-fun e!949003 () List!15801)

(assert (=> b!1483984 (= e!949003 Nil!15733)))

(declare-fun d!435186 () Bool)

(declare-fun c!243218 () Bool)

(assert (=> d!435186 (= c!243218 ((_ is Empty!5359) (c!243105 (_1!8087 lt!515352))))))

(assert (=> d!435186 (= (list!6253 (c!243105 (_1!8087 lt!515352))) e!949003)))

(declare-fun b!1483987 () Bool)

(assert (=> b!1483987 (= e!949004 (++!4244 (list!6253 (left!13252 (c!243105 (_1!8087 lt!515352)))) (list!6253 (right!13582 (c!243105 (_1!8087 lt!515352))))))))

(declare-fun b!1483985 () Bool)

(assert (=> b!1483985 (= e!949003 e!949004)))

(declare-fun c!243219 () Bool)

(assert (=> b!1483985 (= c!243219 ((_ is Leaf!7963) (c!243105 (_1!8087 lt!515352))))))

(assert (= (and d!435186 c!243218) b!1483984))

(assert (= (and d!435186 (not c!243218)) b!1483985))

(assert (= (and b!1483985 c!243219) b!1483986))

(assert (= (and b!1483985 (not c!243219)) b!1483987))

(declare-fun m!1730471 () Bool)

(assert (=> b!1483986 m!1730471))

(declare-fun m!1730473 () Bool)

(assert (=> b!1483987 m!1730473))

(declare-fun m!1730475 () Bool)

(assert (=> b!1483987 m!1730475))

(assert (=> b!1483987 m!1730473))

(assert (=> b!1483987 m!1730475))

(declare-fun m!1730477 () Bool)

(assert (=> b!1483987 m!1730477))

(assert (=> d!435028 d!435186))

(declare-fun bs!346138 () Bool)

(declare-fun d!435188 () Bool)

(assert (= bs!346138 (and d!435188 d!435158)))

(declare-fun lambda!63865 () Int)

(assert (=> bs!346138 (= lambda!63865 lambda!63855)))

(declare-fun bs!346139 () Bool)

(assert (= bs!346139 (and d!435188 d!435142)))

(assert (=> bs!346139 (= lambda!63865 lambda!63854)))

(declare-fun bs!346140 () Bool)

(assert (= bs!346140 (and d!435188 d!435120)))

(assert (=> bs!346140 (= lambda!63865 lambda!63845)))

(declare-fun bs!346141 () Bool)

(assert (= bs!346141 (and d!435188 d!435166)))

(assert (=> bs!346141 (= lambda!63865 lambda!63859)))

(declare-fun bs!346142 () Bool)

(assert (= bs!346142 (and d!435188 d!435178)))

(assert (=> bs!346142 (= lambda!63865 lambda!63863)))

(declare-fun bs!346143 () Bool)

(assert (= bs!346143 (and d!435188 d!435130)))

(assert (=> bs!346143 (= lambda!63865 lambda!63850)))

(declare-fun bs!346144 () Bool)

(assert (= bs!346144 (and d!435188 d!435180)))

(assert (=> bs!346144 (= lambda!63865 lambda!63864)))

(declare-fun bs!346145 () Bool)

(assert (= bs!346145 (and d!435188 d!435086)))

(assert (=> bs!346145 (= lambda!63865 lambda!63844)))

(declare-fun bs!346146 () Bool)

(assert (= bs!346146 (and d!435188 d!435126)))

(assert (=> bs!346146 (= lambda!63865 lambda!63846)))

(declare-fun bs!346147 () Bool)

(assert (= bs!346147 (and d!435188 d!435076)))

(assert (=> bs!346147 (= lambda!63865 lambda!63843)))

(assert (=> d!435188 (= (inv!20959 (_2!8088 (_1!8089 (h!21135 mapValue!6500)))) (forall!3820 (exprs!1135 (_2!8088 (_1!8089 (h!21135 mapValue!6500)))) lambda!63865))))

(declare-fun bs!346148 () Bool)

(assert (= bs!346148 d!435188))

(declare-fun m!1730479 () Bool)

(assert (=> bs!346148 m!1730479))

(assert (=> b!1483534 d!435188))

(declare-fun b!1483993 () Bool)

(assert (=> b!1483993 true))

(declare-fun d!435190 () Bool)

(declare-fun res!670304 () Bool)

(declare-fun e!949007 () Bool)

(assert (=> d!435190 (=> (not res!670304) (not e!949007))))

(declare-fun valid!1072 (MutableMap!1304) Bool)

(assert (=> d!435190 (= res!670304 (valid!1072 (cache!1685 cacheFurthestNullable!64)))))

(assert (=> d!435190 (= (validCacheMapFurthestNullable!37 (cache!1685 cacheFurthestNullable!64) (totalInput!2230 cacheFurthestNullable!64)) e!949007)))

(declare-fun b!1483992 () Bool)

(declare-fun res!670305 () Bool)

(assert (=> b!1483992 (=> (not res!670305) (not e!949007))))

(declare-fun invariantList!207 (List!15797) Bool)

(declare-datatypes ((ListMap!463 0))(
  ( (ListMap!464 (toList!789 List!15797)) )
))
(declare-fun map!3376 (MutableMap!1304) ListMap!463)

(assert (=> b!1483992 (= res!670305 (invariantList!207 (toList!789 (map!3376 (cache!1685 cacheFurthestNullable!64)))))))

(declare-fun lambda!63868 () Int)

(declare-fun forall!3823 (List!15797 Int) Bool)

(assert (=> b!1483993 (= e!949007 (forall!3823 (toList!789 (map!3376 (cache!1685 cacheFurthestNullable!64))) lambda!63868))))

(assert (= (and d!435190 res!670304) b!1483992))

(assert (= (and b!1483992 res!670305) b!1483993))

(declare-fun m!1730482 () Bool)

(assert (=> d!435190 m!1730482))

(declare-fun m!1730484 () Bool)

(assert (=> b!1483992 m!1730484))

(declare-fun m!1730486 () Bool)

(assert (=> b!1483992 m!1730486))

(assert (=> b!1483993 m!1730484))

(declare-fun m!1730488 () Bool)

(assert (=> b!1483993 m!1730488))

(assert (=> d!434992 d!435190))

(declare-fun d!435192 () Bool)

(declare-fun lt!515458 () Bool)

(assert (=> d!435192 (= lt!515458 (isEmpty!9836 (list!6252 (_1!8087 lt!515380))))))

(assert (=> d!435192 (= lt!515458 (isEmpty!9838 (c!243105 (_1!8087 lt!515380))))))

(assert (=> d!435192 (= (isEmpty!9835 (_1!8087 lt!515380)) lt!515458)))

(declare-fun bs!346149 () Bool)

(assert (= bs!346149 d!435192))

(assert (=> bs!346149 m!1730011))

(assert (=> bs!346149 m!1730011))

(declare-fun m!1730490 () Bool)

(assert (=> bs!346149 m!1730490))

(declare-fun m!1730492 () Bool)

(assert (=> bs!346149 m!1730492))

(assert (=> b!1483460 d!435192))

(declare-fun bs!346150 () Bool)

(declare-fun d!435194 () Bool)

(assert (= bs!346150 (and d!435194 d!435158)))

(declare-fun lambda!63869 () Int)

(assert (=> bs!346150 (= lambda!63869 lambda!63855)))

(declare-fun bs!346151 () Bool)

(assert (= bs!346151 (and d!435194 d!435142)))

(assert (=> bs!346151 (= lambda!63869 lambda!63854)))

(declare-fun bs!346152 () Bool)

(assert (= bs!346152 (and d!435194 d!435120)))

(assert (=> bs!346152 (= lambda!63869 lambda!63845)))

(declare-fun bs!346153 () Bool)

(assert (= bs!346153 (and d!435194 d!435166)))

(assert (=> bs!346153 (= lambda!63869 lambda!63859)))

(declare-fun bs!346154 () Bool)

(assert (= bs!346154 (and d!435194 d!435178)))

(assert (=> bs!346154 (= lambda!63869 lambda!63863)))

(declare-fun bs!346155 () Bool)

(assert (= bs!346155 (and d!435194 d!435130)))

(assert (=> bs!346155 (= lambda!63869 lambda!63850)))

(declare-fun bs!346156 () Bool)

(assert (= bs!346156 (and d!435194 d!435180)))

(assert (=> bs!346156 (= lambda!63869 lambda!63864)))

(declare-fun bs!346157 () Bool)

(assert (= bs!346157 (and d!435194 d!435086)))

(assert (=> bs!346157 (= lambda!63869 lambda!63844)))

(declare-fun bs!346158 () Bool)

(assert (= bs!346158 (and d!435194 d!435188)))

(assert (=> bs!346158 (= lambda!63869 lambda!63865)))

(declare-fun bs!346159 () Bool)

(assert (= bs!346159 (and d!435194 d!435126)))

(assert (=> bs!346159 (= lambda!63869 lambda!63846)))

(declare-fun bs!346160 () Bool)

(assert (= bs!346160 (and d!435194 d!435076)))

(assert (=> bs!346160 (= lambda!63869 lambda!63843)))

(assert (=> d!435194 (= (inv!20959 (_1!8085 (_1!8086 (h!21132 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))))) (forall!3820 (exprs!1135 (_1!8085 (_1!8086 (h!21132 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))))) lambda!63869))))

(declare-fun bs!346161 () Bool)

(assert (= bs!346161 d!435194))

(declare-fun m!1730494 () Bool)

(assert (=> bs!346161 m!1730494))

(assert (=> b!1483627 d!435194))

(declare-fun b!1483998 () Bool)

(declare-fun e!949009 () List!15801)

(assert (=> b!1483998 (= e!949009 (list!6256 (xs!8114 (c!243105 (_1!8087 lt!515353)))))))

(declare-fun b!1483996 () Bool)

(declare-fun e!949008 () List!15801)

(assert (=> b!1483996 (= e!949008 Nil!15733)))

(declare-fun d!435196 () Bool)

(declare-fun c!243220 () Bool)

(assert (=> d!435196 (= c!243220 ((_ is Empty!5359) (c!243105 (_1!8087 lt!515353))))))

(assert (=> d!435196 (= (list!6253 (c!243105 (_1!8087 lt!515353))) e!949008)))

(declare-fun b!1483999 () Bool)

(assert (=> b!1483999 (= e!949009 (++!4244 (list!6253 (left!13252 (c!243105 (_1!8087 lt!515353)))) (list!6253 (right!13582 (c!243105 (_1!8087 lt!515353))))))))

(declare-fun b!1483997 () Bool)

(assert (=> b!1483997 (= e!949008 e!949009)))

(declare-fun c!243221 () Bool)

(assert (=> b!1483997 (= c!243221 ((_ is Leaf!7963) (c!243105 (_1!8087 lt!515353))))))

(assert (= (and d!435196 c!243220) b!1483996))

(assert (= (and d!435196 (not c!243220)) b!1483997))

(assert (= (and b!1483997 c!243221) b!1483998))

(assert (= (and b!1483997 (not c!243221)) b!1483999))

(declare-fun m!1730496 () Bool)

(assert (=> b!1483998 m!1730496))

(declare-fun m!1730498 () Bool)

(assert (=> b!1483999 m!1730498))

(declare-fun m!1730500 () Bool)

(assert (=> b!1483999 m!1730500))

(assert (=> b!1483999 m!1730498))

(assert (=> b!1483999 m!1730500))

(declare-fun m!1730502 () Bool)

(assert (=> b!1483999 m!1730502))

(assert (=> d!434984 d!435196))

(declare-fun d!435198 () Bool)

(assert (=> d!435198 (= (list!6251 (_2!8087 lt!515374)) (list!6254 (c!243104 (_2!8087 lt!515374))))))

(declare-fun bs!346162 () Bool)

(assert (= bs!346162 d!435198))

(declare-fun m!1730504 () Bool)

(assert (=> bs!346162 m!1730504))

(assert (=> b!1483442 d!435198))

(assert (=> b!1483442 d!435100))

(assert (=> b!1483442 d!435010))

(declare-fun bs!346163 () Bool)

(declare-fun d!435200 () Bool)

(assert (= bs!346163 (and d!435200 d!435158)))

(declare-fun lambda!63870 () Int)

(assert (=> bs!346163 (= lambda!63870 lambda!63855)))

(declare-fun bs!346164 () Bool)

(assert (= bs!346164 (and d!435200 d!435120)))

(assert (=> bs!346164 (= lambda!63870 lambda!63845)))

(declare-fun bs!346165 () Bool)

(assert (= bs!346165 (and d!435200 d!435166)))

(assert (=> bs!346165 (= lambda!63870 lambda!63859)))

(declare-fun bs!346166 () Bool)

(assert (= bs!346166 (and d!435200 d!435178)))

(assert (=> bs!346166 (= lambda!63870 lambda!63863)))

(declare-fun bs!346167 () Bool)

(assert (= bs!346167 (and d!435200 d!435130)))

(assert (=> bs!346167 (= lambda!63870 lambda!63850)))

(declare-fun bs!346168 () Bool)

(assert (= bs!346168 (and d!435200 d!435180)))

(assert (=> bs!346168 (= lambda!63870 lambda!63864)))

(declare-fun bs!346169 () Bool)

(assert (= bs!346169 (and d!435200 d!435086)))

(assert (=> bs!346169 (= lambda!63870 lambda!63844)))

(declare-fun bs!346170 () Bool)

(assert (= bs!346170 (and d!435200 d!435188)))

(assert (=> bs!346170 (= lambda!63870 lambda!63865)))

(declare-fun bs!346171 () Bool)

(assert (= bs!346171 (and d!435200 d!435126)))

(assert (=> bs!346171 (= lambda!63870 lambda!63846)))

(declare-fun bs!346172 () Bool)

(assert (= bs!346172 (and d!435200 d!435076)))

(assert (=> bs!346172 (= lambda!63870 lambda!63843)))

(declare-fun bs!346173 () Bool)

(assert (= bs!346173 (and d!435200 d!435194)))

(assert (=> bs!346173 (= lambda!63870 lambda!63869)))

(declare-fun bs!346174 () Bool)

(assert (= bs!346174 (and d!435200 d!435142)))

(assert (=> bs!346174 (= lambda!63870 lambda!63854)))

(assert (=> d!435200 (= (inv!20959 setElem!8235) (forall!3820 (exprs!1135 setElem!8235) lambda!63870))))

(declare-fun bs!346175 () Bool)

(assert (= bs!346175 d!435200))

(declare-fun m!1730506 () Bool)

(assert (=> bs!346175 m!1730506))

(assert (=> setNonEmpty!8236 d!435200))

(declare-fun b!1484002 () Bool)

(declare-fun e!949011 () List!15801)

(assert (=> b!1484002 (= e!949011 (list!6256 (xs!8114 (c!243105 acc!392))))))

(declare-fun b!1484000 () Bool)

(declare-fun e!949010 () List!15801)

(assert (=> b!1484000 (= e!949010 Nil!15733)))

(declare-fun d!435202 () Bool)

(declare-fun c!243222 () Bool)

(assert (=> d!435202 (= c!243222 ((_ is Empty!5359) (c!243105 acc!392)))))

(assert (=> d!435202 (= (list!6253 (c!243105 acc!392)) e!949010)))

(declare-fun b!1484003 () Bool)

(assert (=> b!1484003 (= e!949011 (++!4244 (list!6253 (left!13252 (c!243105 acc!392))) (list!6253 (right!13582 (c!243105 acc!392)))))))

(declare-fun b!1484001 () Bool)

(assert (=> b!1484001 (= e!949010 e!949011)))

(declare-fun c!243223 () Bool)

(assert (=> b!1484001 (= c!243223 ((_ is Leaf!7963) (c!243105 acc!392)))))

(assert (= (and d!435202 c!243222) b!1484000))

(assert (= (and d!435202 (not c!243222)) b!1484001))

(assert (= (and b!1484001 c!243223) b!1484002))

(assert (= (and b!1484001 (not c!243223)) b!1484003))

(assert (=> b!1484002 m!1730231))

(assert (=> b!1484003 m!1730269))

(assert (=> b!1484003 m!1730271))

(assert (=> b!1484003 m!1730269))

(assert (=> b!1484003 m!1730271))

(declare-fun m!1730508 () Bool)

(assert (=> b!1484003 m!1730508))

(assert (=> d!434986 d!435202))

(declare-fun b!1484004 () Bool)

(declare-fun res!670310 () Bool)

(declare-fun e!949012 () Bool)

(assert (=> b!1484004 (=> (not res!670310) (not e!949012))))

(assert (=> b!1484004 (= res!670310 (not (isEmpty!9838 (left!13252 (c!243105 acc!392)))))))

(declare-fun b!1484005 () Bool)

(declare-fun res!670308 () Bool)

(assert (=> b!1484005 (=> (not res!670308) (not e!949012))))

(assert (=> b!1484005 (= res!670308 (isBalanced!1588 (left!13252 (c!243105 acc!392))))))

(declare-fun b!1484006 () Bool)

(declare-fun e!949013 () Bool)

(assert (=> b!1484006 (= e!949013 e!949012)))

(declare-fun res!670311 () Bool)

(assert (=> b!1484006 (=> (not res!670311) (not e!949012))))

(assert (=> b!1484006 (= res!670311 (<= (- 1) (- (height!789 (left!13252 (c!243105 acc!392))) (height!789 (right!13582 (c!243105 acc!392))))))))

(declare-fun b!1484007 () Bool)

(declare-fun res!670306 () Bool)

(assert (=> b!1484007 (=> (not res!670306) (not e!949012))))

(assert (=> b!1484007 (= res!670306 (<= (- (height!789 (left!13252 (c!243105 acc!392))) (height!789 (right!13582 (c!243105 acc!392)))) 1))))

(declare-fun d!435204 () Bool)

(declare-fun res!670307 () Bool)

(assert (=> d!435204 (=> res!670307 e!949013)))

(assert (=> d!435204 (= res!670307 (not ((_ is Node!5359) (c!243105 acc!392))))))

(assert (=> d!435204 (= (isBalanced!1588 (c!243105 acc!392)) e!949013)))

(declare-fun b!1484008 () Bool)

(declare-fun res!670309 () Bool)

(assert (=> b!1484008 (=> (not res!670309) (not e!949012))))

(assert (=> b!1484008 (= res!670309 (isBalanced!1588 (right!13582 (c!243105 acc!392))))))

(declare-fun b!1484009 () Bool)

(assert (=> b!1484009 (= e!949012 (not (isEmpty!9838 (right!13582 (c!243105 acc!392)))))))

(assert (= (and d!435204 (not res!670307)) b!1484006))

(assert (= (and b!1484006 res!670311) b!1484007))

(assert (= (and b!1484007 res!670306) b!1484005))

(assert (= (and b!1484005 res!670308) b!1484008))

(assert (= (and b!1484008 res!670309) b!1484004))

(assert (= (and b!1484004 res!670310) b!1484009))

(declare-fun m!1730510 () Bool)

(assert (=> b!1484008 m!1730510))

(declare-fun m!1730512 () Bool)

(assert (=> b!1484007 m!1730512))

(declare-fun m!1730514 () Bool)

(assert (=> b!1484007 m!1730514))

(declare-fun m!1730516 () Bool)

(assert (=> b!1484009 m!1730516))

(declare-fun m!1730518 () Bool)

(assert (=> b!1484004 m!1730518))

(declare-fun m!1730520 () Bool)

(assert (=> b!1484005 m!1730520))

(assert (=> b!1484006 m!1730512))

(assert (=> b!1484006 m!1730514))

(assert (=> d!435058 d!435204))

(declare-fun bs!346176 () Bool)

(declare-fun d!435206 () Bool)

(assert (= bs!346176 (and d!435206 d!435158)))

(declare-fun lambda!63871 () Int)

(assert (=> bs!346176 (= lambda!63871 lambda!63855)))

(declare-fun bs!346177 () Bool)

(assert (= bs!346177 (and d!435206 d!435120)))

(assert (=> bs!346177 (= lambda!63871 lambda!63845)))

(declare-fun bs!346178 () Bool)

(assert (= bs!346178 (and d!435206 d!435166)))

(assert (=> bs!346178 (= lambda!63871 lambda!63859)))

(declare-fun bs!346179 () Bool)

(assert (= bs!346179 (and d!435206 d!435178)))

(assert (=> bs!346179 (= lambda!63871 lambda!63863)))

(declare-fun bs!346180 () Bool)

(assert (= bs!346180 (and d!435206 d!435130)))

(assert (=> bs!346180 (= lambda!63871 lambda!63850)))

(declare-fun bs!346181 () Bool)

(assert (= bs!346181 (and d!435206 d!435180)))

(assert (=> bs!346181 (= lambda!63871 lambda!63864)))

(declare-fun bs!346182 () Bool)

(assert (= bs!346182 (and d!435206 d!435086)))

(assert (=> bs!346182 (= lambda!63871 lambda!63844)))

(declare-fun bs!346183 () Bool)

(assert (= bs!346183 (and d!435206 d!435188)))

(assert (=> bs!346183 (= lambda!63871 lambda!63865)))

(declare-fun bs!346184 () Bool)

(assert (= bs!346184 (and d!435206 d!435126)))

(assert (=> bs!346184 (= lambda!63871 lambda!63846)))

(declare-fun bs!346185 () Bool)

(assert (= bs!346185 (and d!435206 d!435200)))

(assert (=> bs!346185 (= lambda!63871 lambda!63870)))

(declare-fun bs!346186 () Bool)

(assert (= bs!346186 (and d!435206 d!435076)))

(assert (=> bs!346186 (= lambda!63871 lambda!63843)))

(declare-fun bs!346187 () Bool)

(assert (= bs!346187 (and d!435206 d!435194)))

(assert (=> bs!346187 (= lambda!63871 lambda!63869)))

(declare-fun bs!346188 () Bool)

(assert (= bs!346188 (and d!435206 d!435142)))

(assert (=> bs!346188 (= lambda!63871 lambda!63854)))

(assert (=> d!435206 (= (inv!20959 setElem!8215) (forall!3820 (exprs!1135 setElem!8215) lambda!63871))))

(declare-fun bs!346189 () Bool)

(assert (= bs!346189 d!435206))

(declare-fun m!1730522 () Bool)

(assert (=> bs!346189 m!1730522))

(assert (=> setNonEmpty!8215 d!435206))

(assert (=> d!435032 d!435140))

(declare-fun b!1484012 () Bool)

(declare-fun e!949015 () List!15798)

(assert (=> b!1484012 (= e!949015 (list!6255 (xs!8113 (c!243104 input!1102))))))

(declare-fun b!1484011 () Bool)

(declare-fun e!949014 () List!15798)

(assert (=> b!1484011 (= e!949014 e!949015)))

(declare-fun c!243225 () Bool)

(assert (=> b!1484011 (= c!243225 ((_ is Leaf!7962) (c!243104 input!1102)))))

(declare-fun b!1484010 () Bool)

(assert (=> b!1484010 (= e!949014 Nil!15730)))

(declare-fun d!435208 () Bool)

(declare-fun c!243224 () Bool)

(assert (=> d!435208 (= c!243224 ((_ is Empty!5358) (c!243104 input!1102)))))

(assert (=> d!435208 (= (list!6254 (c!243104 input!1102)) e!949014)))

(declare-fun b!1484013 () Bool)

(assert (=> b!1484013 (= e!949015 (++!4242 (list!6254 (left!13251 (c!243104 input!1102))) (list!6254 (right!13581 (c!243104 input!1102)))))))

(assert (= (and d!435208 c!243224) b!1484010))

(assert (= (and d!435208 (not c!243224)) b!1484011))

(assert (= (and b!1484011 c!243225) b!1484012))

(assert (= (and b!1484011 (not c!243225)) b!1484013))

(assert (=> b!1484012 m!1730219))

(declare-fun m!1730524 () Bool)

(assert (=> b!1484013 m!1730524))

(declare-fun m!1730526 () Bool)

(assert (=> b!1484013 m!1730526))

(assert (=> b!1484013 m!1730524))

(assert (=> b!1484013 m!1730526))

(declare-fun m!1730528 () Bool)

(assert (=> b!1484013 m!1730528))

(assert (=> d!435012 d!435208))

(declare-fun d!435210 () Bool)

(declare-fun lt!515459 () Int)

(assert (=> d!435210 (= lt!515459 (size!12743 (list!6252 (_1!8087 lt!515365))))))

(assert (=> d!435210 (= lt!515459 (size!12744 (c!243105 (_1!8087 lt!515365))))))

(assert (=> d!435210 (= (size!12741 (_1!8087 lt!515365)) lt!515459)))

(declare-fun bs!346190 () Bool)

(assert (= bs!346190 d!435210))

(assert (=> bs!346190 m!1729899))

(assert (=> bs!346190 m!1729899))

(declare-fun m!1730530 () Bool)

(assert (=> bs!346190 m!1730530))

(declare-fun m!1730532 () Bool)

(assert (=> bs!346190 m!1730532))

(assert (=> d!434988 d!435210))

(declare-fun b!1484014 () Bool)

(declare-fun e!949017 () Bool)

(declare-fun lt!515461 () Option!2888)

(assert (=> b!1484014 (= e!949017 (= (list!6251 (_2!8090 (get!4695 lt!515461))) (_2!8092 (get!4696 (maxPrefixZipper!249 thiss!13241 rules!1640 (list!6251 treated!70))))))))

(declare-fun b!1484015 () Bool)

(declare-fun e!949019 () Bool)

(declare-fun e!949018 () Bool)

(assert (=> b!1484015 (= e!949019 e!949018)))

(declare-fun res!670315 () Bool)

(assert (=> b!1484015 (=> (not res!670315) (not e!949018))))

(assert (=> b!1484015 (= res!670315 (= (_1!8090 (get!4695 lt!515461)) (_1!8092 (get!4696 (maxPrefix!1198 thiss!13241 rules!1640 (list!6251 treated!70))))))))

(declare-fun bm!98610 () Bool)

(declare-fun call!98615 () Option!2888)

(assert (=> bm!98610 (= call!98615 (maxPrefixOneRuleZipperSequence!268 thiss!13241 (h!21136 rules!1640) treated!70))))

(declare-fun b!1484016 () Bool)

(declare-fun e!949021 () Option!2888)

(declare-fun lt!515462 () Option!2888)

(declare-fun lt!515466 () Option!2888)

(assert (=> b!1484016 (= e!949021 (ite (and ((_ is None!2887) lt!515462) ((_ is None!2887) lt!515466)) None!2887 (ite ((_ is None!2887) lt!515466) lt!515462 (ite ((_ is None!2887) lt!515462) lt!515466 (ite (>= (size!12738 (_1!8090 (v!22575 lt!515462))) (size!12738 (_1!8090 (v!22575 lt!515466)))) lt!515462 lt!515466)))))))

(assert (=> b!1484016 (= lt!515462 call!98615)))

(assert (=> b!1484016 (= lt!515466 (maxPrefixZipperSequence!567 thiss!13241 (t!137720 rules!1640) treated!70))))

(declare-fun b!1484017 () Bool)

(declare-fun e!949020 () Bool)

(assert (=> b!1484017 (= e!949020 e!949019)))

(declare-fun res!670317 () Bool)

(assert (=> b!1484017 (=> res!670317 e!949019)))

(assert (=> b!1484017 (= res!670317 (not (isDefined!2333 lt!515461)))))

(declare-fun d!435212 () Bool)

(assert (=> d!435212 e!949020))

(declare-fun res!670313 () Bool)

(assert (=> d!435212 (=> (not res!670313) (not e!949020))))

(assert (=> d!435212 (= res!670313 (= (isDefined!2333 lt!515461) (isDefined!2334 (maxPrefixZipper!249 thiss!13241 rules!1640 (list!6251 treated!70)))))))

(assert (=> d!435212 (= lt!515461 e!949021)))

(declare-fun c!243226 () Bool)

(assert (=> d!435212 (= c!243226 (and ((_ is Cons!15735) rules!1640) ((_ is Nil!15735) (t!137720 rules!1640))))))

(declare-fun lt!515464 () Unit!25608)

(declare-fun lt!515460 () Unit!25608)

(assert (=> d!435212 (= lt!515464 lt!515460)))

(declare-fun lt!515463 () List!15798)

(declare-fun lt!515465 () List!15798)

(assert (=> d!435212 (isPrefix!1208 lt!515463 lt!515465)))

(assert (=> d!435212 (= lt!515460 (lemmaIsPrefixRefl!838 lt!515463 lt!515465))))

(assert (=> d!435212 (= lt!515465 (list!6251 treated!70))))

(assert (=> d!435212 (= lt!515463 (list!6251 treated!70))))

(assert (=> d!435212 (rulesValidInductive!845 thiss!13241 rules!1640)))

(assert (=> d!435212 (= (maxPrefixZipperSequence!567 thiss!13241 rules!1640 treated!70) lt!515461)))

(declare-fun b!1484018 () Bool)

(assert (=> b!1484018 (= e!949018 (= (list!6251 (_2!8090 (get!4695 lt!515461))) (_2!8092 (get!4696 (maxPrefix!1198 thiss!13241 rules!1640 (list!6251 treated!70))))))))

(declare-fun b!1484019 () Bool)

(declare-fun e!949016 () Bool)

(assert (=> b!1484019 (= e!949016 e!949017)))

(declare-fun res!670314 () Bool)

(assert (=> b!1484019 (=> (not res!670314) (not e!949017))))

(assert (=> b!1484019 (= res!670314 (= (_1!8090 (get!4695 lt!515461)) (_1!8092 (get!4696 (maxPrefixZipper!249 thiss!13241 rules!1640 (list!6251 treated!70))))))))

(declare-fun b!1484020 () Bool)

(assert (=> b!1484020 (= e!949021 call!98615)))

(declare-fun b!1484021 () Bool)

(declare-fun res!670316 () Bool)

(assert (=> b!1484021 (=> (not res!670316) (not e!949020))))

(assert (=> b!1484021 (= res!670316 e!949016)))

(declare-fun res!670312 () Bool)

(assert (=> b!1484021 (=> res!670312 e!949016)))

(assert (=> b!1484021 (= res!670312 (not (isDefined!2333 lt!515461)))))

(assert (= (and d!435212 c!243226) b!1484020))

(assert (= (and d!435212 (not c!243226)) b!1484016))

(assert (= (or b!1484020 b!1484016) bm!98610))

(assert (= (and d!435212 res!670313) b!1484021))

(assert (= (and b!1484021 (not res!670312)) b!1484019))

(assert (= (and b!1484019 res!670314) b!1484014))

(assert (= (and b!1484021 res!670316) b!1484017))

(assert (= (and b!1484017 (not res!670317)) b!1484015))

(assert (= (and b!1484015 res!670315) b!1484018))

(declare-fun m!1730534 () Bool)

(assert (=> b!1484017 m!1730534))

(declare-fun m!1730536 () Bool)

(assert (=> b!1484016 m!1730536))

(assert (=> d!435212 m!1730534))

(declare-fun m!1730538 () Bool)

(assert (=> d!435212 m!1730538))

(assert (=> d!435212 m!1729825))

(declare-fun m!1730540 () Bool)

(assert (=> d!435212 m!1730540))

(declare-fun m!1730542 () Bool)

(assert (=> d!435212 m!1730542))

(declare-fun m!1730544 () Bool)

(assert (=> d!435212 m!1730544))

(assert (=> d!435212 m!1729865))

(assert (=> d!435212 m!1730542))

(assert (=> d!435212 m!1729865))

(assert (=> b!1484014 m!1730542))

(declare-fun m!1730546 () Bool)

(assert (=> b!1484014 m!1730546))

(declare-fun m!1730548 () Bool)

(assert (=> b!1484014 m!1730548))

(declare-fun m!1730550 () Bool)

(assert (=> b!1484014 m!1730550))

(assert (=> b!1484014 m!1729865))

(assert (=> b!1484014 m!1730542))

(assert (=> b!1484014 m!1729865))

(declare-fun m!1730552 () Bool)

(assert (=> bm!98610 m!1730552))

(assert (=> b!1484019 m!1730548))

(assert (=> b!1484019 m!1729865))

(assert (=> b!1484019 m!1729865))

(assert (=> b!1484019 m!1730542))

(assert (=> b!1484019 m!1730542))

(assert (=> b!1484019 m!1730546))

(assert (=> b!1484021 m!1730534))

(assert (=> b!1484018 m!1730167))

(declare-fun m!1730554 () Bool)

(assert (=> b!1484018 m!1730554))

(assert (=> b!1484018 m!1730548))

(assert (=> b!1484018 m!1730550))

(assert (=> b!1484018 m!1729865))

(assert (=> b!1484018 m!1729865))

(assert (=> b!1484018 m!1730167))

(assert (=> b!1484015 m!1730548))

(assert (=> b!1484015 m!1729865))

(assert (=> b!1484015 m!1729865))

(assert (=> b!1484015 m!1730167))

(assert (=> b!1484015 m!1730167))

(assert (=> b!1484015 m!1730554))

(assert (=> d!434988 d!435212))

(declare-fun bs!346191 () Bool)

(declare-fun d!435214 () Bool)

(assert (= bs!346191 (and d!435214 d!435158)))

(declare-fun lambda!63872 () Int)

(assert (=> bs!346191 (= lambda!63872 lambda!63855)))

(declare-fun bs!346192 () Bool)

(assert (= bs!346192 (and d!435214 d!435206)))

(assert (=> bs!346192 (= lambda!63872 lambda!63871)))

(declare-fun bs!346193 () Bool)

(assert (= bs!346193 (and d!435214 d!435120)))

(assert (=> bs!346193 (= lambda!63872 lambda!63845)))

(declare-fun bs!346194 () Bool)

(assert (= bs!346194 (and d!435214 d!435166)))

(assert (=> bs!346194 (= lambda!63872 lambda!63859)))

(declare-fun bs!346195 () Bool)

(assert (= bs!346195 (and d!435214 d!435178)))

(assert (=> bs!346195 (= lambda!63872 lambda!63863)))

(declare-fun bs!346196 () Bool)

(assert (= bs!346196 (and d!435214 d!435130)))

(assert (=> bs!346196 (= lambda!63872 lambda!63850)))

(declare-fun bs!346197 () Bool)

(assert (= bs!346197 (and d!435214 d!435180)))

(assert (=> bs!346197 (= lambda!63872 lambda!63864)))

(declare-fun bs!346198 () Bool)

(assert (= bs!346198 (and d!435214 d!435086)))

(assert (=> bs!346198 (= lambda!63872 lambda!63844)))

(declare-fun bs!346199 () Bool)

(assert (= bs!346199 (and d!435214 d!435188)))

(assert (=> bs!346199 (= lambda!63872 lambda!63865)))

(declare-fun bs!346200 () Bool)

(assert (= bs!346200 (and d!435214 d!435126)))

(assert (=> bs!346200 (= lambda!63872 lambda!63846)))

(declare-fun bs!346201 () Bool)

(assert (= bs!346201 (and d!435214 d!435200)))

(assert (=> bs!346201 (= lambda!63872 lambda!63870)))

(declare-fun bs!346202 () Bool)

(assert (= bs!346202 (and d!435214 d!435076)))

(assert (=> bs!346202 (= lambda!63872 lambda!63843)))

(declare-fun bs!346203 () Bool)

(assert (= bs!346203 (and d!435214 d!435194)))

(assert (=> bs!346203 (= lambda!63872 lambda!63869)))

(declare-fun bs!346204 () Bool)

(assert (= bs!346204 (and d!435214 d!435142)))

(assert (=> bs!346204 (= lambda!63872 lambda!63854)))

(assert (=> d!435214 (= (inv!20959 setElem!8211) (forall!3820 (exprs!1135 setElem!8211) lambda!63872))))

(declare-fun bs!346205 () Bool)

(assert (= bs!346205 d!435214))

(declare-fun m!1730556 () Bool)

(assert (=> bs!346205 m!1730556))

(assert (=> setNonEmpty!8211 d!435214))

(declare-fun bs!346206 () Bool)

(declare-fun d!435216 () Bool)

(assert (= bs!346206 (and d!435216 d!435158)))

(declare-fun lambda!63873 () Int)

(assert (=> bs!346206 (= lambda!63873 lambda!63855)))

(declare-fun bs!346207 () Bool)

(assert (= bs!346207 (and d!435216 d!435206)))

(assert (=> bs!346207 (= lambda!63873 lambda!63871)))

(declare-fun bs!346208 () Bool)

(assert (= bs!346208 (and d!435216 d!435120)))

(assert (=> bs!346208 (= lambda!63873 lambda!63845)))

(declare-fun bs!346209 () Bool)

(assert (= bs!346209 (and d!435216 d!435166)))

(assert (=> bs!346209 (= lambda!63873 lambda!63859)))

(declare-fun bs!346210 () Bool)

(assert (= bs!346210 (and d!435216 d!435178)))

(assert (=> bs!346210 (= lambda!63873 lambda!63863)))

(declare-fun bs!346211 () Bool)

(assert (= bs!346211 (and d!435216 d!435214)))

(assert (=> bs!346211 (= lambda!63873 lambda!63872)))

(declare-fun bs!346212 () Bool)

(assert (= bs!346212 (and d!435216 d!435130)))

(assert (=> bs!346212 (= lambda!63873 lambda!63850)))

(declare-fun bs!346213 () Bool)

(assert (= bs!346213 (and d!435216 d!435180)))

(assert (=> bs!346213 (= lambda!63873 lambda!63864)))

(declare-fun bs!346214 () Bool)

(assert (= bs!346214 (and d!435216 d!435086)))

(assert (=> bs!346214 (= lambda!63873 lambda!63844)))

(declare-fun bs!346215 () Bool)

(assert (= bs!346215 (and d!435216 d!435188)))

(assert (=> bs!346215 (= lambda!63873 lambda!63865)))

(declare-fun bs!346216 () Bool)

(assert (= bs!346216 (and d!435216 d!435126)))

(assert (=> bs!346216 (= lambda!63873 lambda!63846)))

(declare-fun bs!346217 () Bool)

(assert (= bs!346217 (and d!435216 d!435200)))

(assert (=> bs!346217 (= lambda!63873 lambda!63870)))

(declare-fun bs!346218 () Bool)

(assert (= bs!346218 (and d!435216 d!435076)))

(assert (=> bs!346218 (= lambda!63873 lambda!63843)))

(declare-fun bs!346219 () Bool)

(assert (= bs!346219 (and d!435216 d!435194)))

(assert (=> bs!346219 (= lambda!63873 lambda!63869)))

(declare-fun bs!346220 () Bool)

(assert (= bs!346220 (and d!435216 d!435142)))

(assert (=> bs!346220 (= lambda!63873 lambda!63854)))

(assert (=> d!435216 (= (inv!20959 setElem!8212) (forall!3820 (exprs!1135 setElem!8212) lambda!63873))))

(declare-fun bs!346221 () Bool)

(assert (= bs!346221 d!435216))

(declare-fun m!1730558 () Bool)

(assert (=> bs!346221 m!1730558))

(assert (=> setNonEmpty!8212 d!435216))

(declare-fun d!435218 () Bool)

(declare-fun res!670322 () Bool)

(declare-fun e!949024 () Bool)

(assert (=> d!435218 (=> (not res!670322) (not e!949024))))

(declare-fun validRegex!1692 (Regex!4117) Bool)

(assert (=> d!435218 (= res!670322 (validRegex!1692 (regex!2803 (h!21136 rules!1640))))))

(assert (=> d!435218 (= (ruleValid!631 thiss!13241 (h!21136 rules!1640)) e!949024)))

(declare-fun b!1484026 () Bool)

(declare-fun res!670323 () Bool)

(assert (=> b!1484026 (=> (not res!670323) (not e!949024))))

(declare-fun nullable!1252 (Regex!4117) Bool)

(assert (=> b!1484026 (= res!670323 (not (nullable!1252 (regex!2803 (h!21136 rules!1640)))))))

(declare-fun b!1484027 () Bool)

(assert (=> b!1484027 (= e!949024 (not (= (tag!3067 (h!21136 rules!1640)) (String!18726 ""))))))

(assert (= (and d!435218 res!670322) b!1484026))

(assert (= (and b!1484026 res!670323) b!1484027))

(declare-fun m!1730560 () Bool)

(assert (=> d!435218 m!1730560))

(declare-fun m!1730562 () Bool)

(assert (=> b!1484026 m!1730562))

(assert (=> b!1483431 d!435218))

(declare-fun d!435220 () Bool)

(assert (=> d!435220 (= (list!6251 (_2!8087 lt!515365)) (list!6254 (c!243104 (_2!8087 lt!515365))))))

(declare-fun bs!346222 () Bool)

(assert (= bs!346222 d!435220))

(declare-fun m!1730564 () Bool)

(assert (=> bs!346222 m!1730564))

(assert (=> b!1483400 d!435220))

(assert (=> b!1483400 d!435084))

(assert (=> b!1483400 d!435014))

(declare-fun bs!346223 () Bool)

(declare-fun d!435222 () Bool)

(assert (= bs!346223 (and d!435222 d!435158)))

(declare-fun lambda!63874 () Int)

(assert (=> bs!346223 (= lambda!63874 lambda!63855)))

(declare-fun bs!346224 () Bool)

(assert (= bs!346224 (and d!435222 d!435206)))

(assert (=> bs!346224 (= lambda!63874 lambda!63871)))

(declare-fun bs!346225 () Bool)

(assert (= bs!346225 (and d!435222 d!435216)))

(assert (=> bs!346225 (= lambda!63874 lambda!63873)))

(declare-fun bs!346226 () Bool)

(assert (= bs!346226 (and d!435222 d!435120)))

(assert (=> bs!346226 (= lambda!63874 lambda!63845)))

(declare-fun bs!346227 () Bool)

(assert (= bs!346227 (and d!435222 d!435166)))

(assert (=> bs!346227 (= lambda!63874 lambda!63859)))

(declare-fun bs!346228 () Bool)

(assert (= bs!346228 (and d!435222 d!435178)))

(assert (=> bs!346228 (= lambda!63874 lambda!63863)))

(declare-fun bs!346229 () Bool)

(assert (= bs!346229 (and d!435222 d!435214)))

(assert (=> bs!346229 (= lambda!63874 lambda!63872)))

(declare-fun bs!346230 () Bool)

(assert (= bs!346230 (and d!435222 d!435130)))

(assert (=> bs!346230 (= lambda!63874 lambda!63850)))

(declare-fun bs!346231 () Bool)

(assert (= bs!346231 (and d!435222 d!435180)))

(assert (=> bs!346231 (= lambda!63874 lambda!63864)))

(declare-fun bs!346232 () Bool)

(assert (= bs!346232 (and d!435222 d!435086)))

(assert (=> bs!346232 (= lambda!63874 lambda!63844)))

(declare-fun bs!346233 () Bool)

(assert (= bs!346233 (and d!435222 d!435188)))

(assert (=> bs!346233 (= lambda!63874 lambda!63865)))

(declare-fun bs!346234 () Bool)

(assert (= bs!346234 (and d!435222 d!435126)))

(assert (=> bs!346234 (= lambda!63874 lambda!63846)))

(declare-fun bs!346235 () Bool)

(assert (= bs!346235 (and d!435222 d!435200)))

(assert (=> bs!346235 (= lambda!63874 lambda!63870)))

(declare-fun bs!346236 () Bool)

(assert (= bs!346236 (and d!435222 d!435076)))

(assert (=> bs!346236 (= lambda!63874 lambda!63843)))

(declare-fun bs!346237 () Bool)

(assert (= bs!346237 (and d!435222 d!435194)))

(assert (=> bs!346237 (= lambda!63874 lambda!63869)))

(declare-fun bs!346238 () Bool)

(assert (= bs!346238 (and d!435222 d!435142)))

(assert (=> bs!346238 (= lambda!63874 lambda!63854)))

(assert (=> d!435222 (= (inv!20959 setElem!8228) (forall!3820 (exprs!1135 setElem!8228) lambda!63874))))

(declare-fun bs!346239 () Bool)

(assert (= bs!346239 d!435222))

(declare-fun m!1730566 () Bool)

(assert (=> bs!346239 m!1730566))

(assert (=> setNonEmpty!8228 d!435222))

(declare-fun b!1484030 () Bool)

(declare-fun e!949026 () List!15798)

(assert (=> b!1484030 (= e!949026 (list!6255 (xs!8113 (c!243104 treated!70))))))

(declare-fun b!1484029 () Bool)

(declare-fun e!949025 () List!15798)

(assert (=> b!1484029 (= e!949025 e!949026)))

(declare-fun c!243228 () Bool)

(assert (=> b!1484029 (= c!243228 ((_ is Leaf!7962) (c!243104 treated!70)))))

(declare-fun b!1484028 () Bool)

(assert (=> b!1484028 (= e!949025 Nil!15730)))

(declare-fun d!435224 () Bool)

(declare-fun c!243227 () Bool)

(assert (=> d!435224 (= c!243227 ((_ is Empty!5358) (c!243104 treated!70)))))

(assert (=> d!435224 (= (list!6254 (c!243104 treated!70)) e!949025)))

(declare-fun b!1484031 () Bool)

(assert (=> b!1484031 (= e!949026 (++!4242 (list!6254 (left!13251 (c!243104 treated!70))) (list!6254 (right!13581 (c!243104 treated!70)))))))

(assert (= (and d!435224 c!243227) b!1484028))

(assert (= (and d!435224 (not c!243227)) b!1484029))

(assert (= (and b!1484029 c!243228) b!1484030))

(assert (= (and b!1484029 (not c!243228)) b!1484031))

(assert (=> b!1484030 m!1730437))

(declare-fun m!1730568 () Bool)

(assert (=> b!1484031 m!1730568))

(declare-fun m!1730570 () Bool)

(assert (=> b!1484031 m!1730570))

(assert (=> b!1484031 m!1730568))

(assert (=> b!1484031 m!1730570))

(declare-fun m!1730572 () Bool)

(assert (=> b!1484031 m!1730572))

(assert (=> d!435014 d!435224))

(declare-fun d!435226 () Bool)

(declare-fun res!670328 () Bool)

(declare-fun e!949031 () Bool)

(assert (=> d!435226 (=> res!670328 e!949031)))

(assert (=> d!435226 (= res!670328 ((_ is Nil!15735) rules!1640))))

(assert (=> d!435226 (= (noDuplicateTag!1031 thiss!13241 rules!1640 Nil!15736) e!949031)))

(declare-fun b!1484036 () Bool)

(declare-fun e!949032 () Bool)

(assert (=> b!1484036 (= e!949031 e!949032)))

(declare-fun res!670329 () Bool)

(assert (=> b!1484036 (=> (not res!670329) (not e!949032))))

(declare-fun contains!2960 (List!15804 String!18725) Bool)

(assert (=> b!1484036 (= res!670329 (not (contains!2960 Nil!15736 (tag!3067 (h!21136 rules!1640)))))))

(declare-fun b!1484037 () Bool)

(assert (=> b!1484037 (= e!949032 (noDuplicateTag!1031 thiss!13241 (t!137720 rules!1640) (Cons!15736 (tag!3067 (h!21136 rules!1640)) Nil!15736)))))

(assert (= (and d!435226 (not res!670328)) b!1484036))

(assert (= (and b!1484036 res!670329) b!1484037))

(declare-fun m!1730574 () Bool)

(assert (=> b!1484036 m!1730574))

(declare-fun m!1730576 () Bool)

(assert (=> b!1484037 m!1730576))

(assert (=> b!1483466 d!435226))

(declare-fun bs!346240 () Bool)

(declare-fun d!435228 () Bool)

(assert (= bs!346240 (and d!435228 d!435018)))

(declare-fun lambda!63877 () Int)

(assert (=> bs!346240 (= lambda!63877 lambda!63840)))

(assert (=> d!435228 true))

(declare-fun lt!515469 () Bool)

(assert (=> d!435228 (= lt!515469 (rulesValidInductive!845 thiss!13241 rules!1640))))

(assert (=> d!435228 (= lt!515469 (forall!3819 rules!1640 lambda!63877))))

(assert (=> d!435228 (= (rulesValid!1031 thiss!13241 rules!1640) lt!515469)))

(declare-fun bs!346241 () Bool)

(assert (= bs!346241 d!435228))

(assert (=> bs!346241 m!1729825))

(declare-fun m!1730578 () Bool)

(assert (=> bs!346241 m!1730578))

(assert (=> d!435036 d!435228))

(declare-fun d!435230 () Bool)

(declare-fun e!949035 () Bool)

(assert (=> d!435230 e!949035))

(declare-fun res!670332 () Bool)

(assert (=> d!435230 (=> (not res!670332) (not e!949035))))

(declare-fun prepend!435 (Conc!5359 Token!5268) Conc!5359)

(assert (=> d!435230 (= res!670332 (isBalanced!1588 (prepend!435 (c!243105 (_1!8087 lt!515375)) (_1!8090 (v!22575 lt!515373)))))))

(declare-fun lt!515472 () BalanceConc!10660)

(assert (=> d!435230 (= lt!515472 (BalanceConc!10661 (prepend!435 (c!243105 (_1!8087 lt!515375)) (_1!8090 (v!22575 lt!515373)))))))

(assert (=> d!435230 (= (prepend!434 (_1!8087 lt!515375) (_1!8090 (v!22575 lt!515373))) lt!515472)))

(declare-fun b!1484040 () Bool)

(assert (=> b!1484040 (= e!949035 (= (list!6252 lt!515472) (Cons!15733 (_1!8090 (v!22575 lt!515373)) (list!6252 (_1!8087 lt!515375)))))))

(assert (= (and d!435230 res!670332) b!1484040))

(declare-fun m!1730580 () Bool)

(assert (=> d!435230 m!1730580))

(assert (=> d!435230 m!1730580))

(declare-fun m!1730582 () Bool)

(assert (=> d!435230 m!1730582))

(declare-fun m!1730584 () Bool)

(assert (=> b!1484040 m!1730584))

(declare-fun m!1730586 () Bool)

(assert (=> b!1484040 m!1730586))

(assert (=> b!1483438 d!435230))

(declare-fun b!1484041 () Bool)

(declare-fun e!949039 () tuple2!14388)

(declare-fun lt!515475 () tuple2!14388)

(declare-fun lt!515473 () Option!2888)

(assert (=> b!1484041 (= e!949039 (tuple2!14389 (prepend!434 (_1!8087 lt!515475) (_1!8090 (v!22575 lt!515473))) (_2!8087 lt!515475)))))

(assert (=> b!1484041 (= lt!515475 (lexRec!297 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515473))))))

(declare-fun b!1484042 () Bool)

(declare-fun e!949037 () Bool)

(declare-fun lt!515474 () tuple2!14388)

(assert (=> b!1484042 (= e!949037 (= (list!6251 (_2!8087 lt!515474)) (list!6251 (_2!8090 (v!22575 lt!515373)))))))

(declare-fun b!1484043 () Bool)

(declare-fun res!670333 () Bool)

(declare-fun e!949036 () Bool)

(assert (=> b!1484043 (=> (not res!670333) (not e!949036))))

(assert (=> b!1484043 (= res!670333 (= (list!6252 (_1!8087 lt!515474)) (_1!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 (_2!8090 (v!22575 lt!515373)))))))))

(declare-fun b!1484044 () Bool)

(declare-fun e!949038 () Bool)

(assert (=> b!1484044 (= e!949038 (not (isEmpty!9835 (_1!8087 lt!515474))))))

(declare-fun b!1484045 () Bool)

(assert (=> b!1484045 (= e!949036 (= (list!6251 (_2!8087 lt!515474)) (_2!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 (_2!8090 (v!22575 lt!515373)))))))))

(declare-fun b!1484046 () Bool)

(assert (=> b!1484046 (= e!949037 e!949038)))

(declare-fun res!670334 () Bool)

(assert (=> b!1484046 (= res!670334 (< (size!12740 (_2!8087 lt!515474)) (size!12740 (_2!8090 (v!22575 lt!515373)))))))

(assert (=> b!1484046 (=> (not res!670334) (not e!949038))))

(declare-fun b!1484047 () Bool)

(assert (=> b!1484047 (= e!949039 (tuple2!14389 (BalanceConc!10661 Empty!5359) (_2!8090 (v!22575 lt!515373))))))

(declare-fun d!435232 () Bool)

(assert (=> d!435232 e!949036))

(declare-fun res!670335 () Bool)

(assert (=> d!435232 (=> (not res!670335) (not e!949036))))

(assert (=> d!435232 (= res!670335 e!949037)))

(declare-fun c!243230 () Bool)

(assert (=> d!435232 (= c!243230 (> (size!12741 (_1!8087 lt!515474)) 0))))

(assert (=> d!435232 (= lt!515474 e!949039)))

(declare-fun c!243231 () Bool)

(assert (=> d!435232 (= c!243231 ((_ is Some!2887) lt!515473))))

(assert (=> d!435232 (= lt!515473 (maxPrefixZipperSequence!567 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515373))))))

(assert (=> d!435232 (= (lexRec!297 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515373))) lt!515474)))

(assert (= (and d!435232 c!243231) b!1484041))

(assert (= (and d!435232 (not c!243231)) b!1484047))

(assert (= (and d!435232 c!243230) b!1484046))

(assert (= (and d!435232 (not c!243230)) b!1484042))

(assert (= (and b!1484046 res!670334) b!1484044))

(assert (= (and d!435232 res!670335) b!1484043))

(assert (= (and b!1484043 res!670333) b!1484045))

(declare-fun m!1730588 () Bool)

(assert (=> d!435232 m!1730588))

(declare-fun m!1730590 () Bool)

(assert (=> d!435232 m!1730590))

(declare-fun m!1730592 () Bool)

(assert (=> b!1484044 m!1730592))

(declare-fun m!1730594 () Bool)

(assert (=> b!1484046 m!1730594))

(declare-fun m!1730596 () Bool)

(assert (=> b!1484046 m!1730596))

(declare-fun m!1730598 () Bool)

(assert (=> b!1484041 m!1730598))

(declare-fun m!1730600 () Bool)

(assert (=> b!1484041 m!1730600))

(declare-fun m!1730602 () Bool)

(assert (=> b!1484042 m!1730602))

(declare-fun m!1730604 () Bool)

(assert (=> b!1484042 m!1730604))

(assert (=> b!1484045 m!1730602))

(assert (=> b!1484045 m!1730604))

(assert (=> b!1484045 m!1730604))

(declare-fun m!1730606 () Bool)

(assert (=> b!1484045 m!1730606))

(declare-fun m!1730608 () Bool)

(assert (=> b!1484043 m!1730608))

(assert (=> b!1484043 m!1730604))

(assert (=> b!1484043 m!1730604))

(assert (=> b!1484043 m!1730606))

(assert (=> b!1483438 d!435232))

(declare-fun bs!346242 () Bool)

(declare-fun d!435234 () Bool)

(assert (= bs!346242 (and d!435234 d!435158)))

(declare-fun lambda!63878 () Int)

(assert (=> bs!346242 (= lambda!63878 lambda!63855)))

(declare-fun bs!346243 () Bool)

(assert (= bs!346243 (and d!435234 d!435206)))

(assert (=> bs!346243 (= lambda!63878 lambda!63871)))

(declare-fun bs!346244 () Bool)

(assert (= bs!346244 (and d!435234 d!435216)))

(assert (=> bs!346244 (= lambda!63878 lambda!63873)))

(declare-fun bs!346245 () Bool)

(assert (= bs!346245 (and d!435234 d!435120)))

(assert (=> bs!346245 (= lambda!63878 lambda!63845)))

(declare-fun bs!346246 () Bool)

(assert (= bs!346246 (and d!435234 d!435166)))

(assert (=> bs!346246 (= lambda!63878 lambda!63859)))

(declare-fun bs!346247 () Bool)

(assert (= bs!346247 (and d!435234 d!435178)))

(assert (=> bs!346247 (= lambda!63878 lambda!63863)))

(declare-fun bs!346248 () Bool)

(assert (= bs!346248 (and d!435234 d!435214)))

(assert (=> bs!346248 (= lambda!63878 lambda!63872)))

(declare-fun bs!346249 () Bool)

(assert (= bs!346249 (and d!435234 d!435130)))

(assert (=> bs!346249 (= lambda!63878 lambda!63850)))

(declare-fun bs!346250 () Bool)

(assert (= bs!346250 (and d!435234 d!435180)))

(assert (=> bs!346250 (= lambda!63878 lambda!63864)))

(declare-fun bs!346251 () Bool)

(assert (= bs!346251 (and d!435234 d!435086)))

(assert (=> bs!346251 (= lambda!63878 lambda!63844)))

(declare-fun bs!346252 () Bool)

(assert (= bs!346252 (and d!435234 d!435126)))

(assert (=> bs!346252 (= lambda!63878 lambda!63846)))

(declare-fun bs!346253 () Bool)

(assert (= bs!346253 (and d!435234 d!435200)))

(assert (=> bs!346253 (= lambda!63878 lambda!63870)))

(declare-fun bs!346254 () Bool)

(assert (= bs!346254 (and d!435234 d!435076)))

(assert (=> bs!346254 (= lambda!63878 lambda!63843)))

(declare-fun bs!346255 () Bool)

(assert (= bs!346255 (and d!435234 d!435194)))

(assert (=> bs!346255 (= lambda!63878 lambda!63869)))

(declare-fun bs!346256 () Bool)

(assert (= bs!346256 (and d!435234 d!435142)))

(assert (=> bs!346256 (= lambda!63878 lambda!63854)))

(declare-fun bs!346257 () Bool)

(assert (= bs!346257 (and d!435234 d!435188)))

(assert (=> bs!346257 (= lambda!63878 lambda!63865)))

(declare-fun bs!346258 () Bool)

(assert (= bs!346258 (and d!435234 d!435222)))

(assert (=> bs!346258 (= lambda!63878 lambda!63874)))

(assert (=> d!435234 (= (inv!20959 (_1!8085 (_1!8086 (h!21132 mapValue!6498)))) (forall!3820 (exprs!1135 (_1!8085 (_1!8086 (h!21132 mapValue!6498)))) lambda!63878))))

(declare-fun bs!346259 () Bool)

(assert (= bs!346259 d!435234))

(declare-fun m!1730610 () Bool)

(assert (=> bs!346259 m!1730610))

(assert (=> b!1483608 d!435234))

(declare-fun bs!346260 () Bool)

(declare-fun d!435236 () Bool)

(assert (= bs!346260 (and d!435236 d!435158)))

(declare-fun lambda!63879 () Int)

(assert (=> bs!346260 (= lambda!63879 lambda!63855)))

(declare-fun bs!346261 () Bool)

(assert (= bs!346261 (and d!435236 d!435206)))

(assert (=> bs!346261 (= lambda!63879 lambda!63871)))

(declare-fun bs!346262 () Bool)

(assert (= bs!346262 (and d!435236 d!435216)))

(assert (=> bs!346262 (= lambda!63879 lambda!63873)))

(declare-fun bs!346263 () Bool)

(assert (= bs!346263 (and d!435236 d!435120)))

(assert (=> bs!346263 (= lambda!63879 lambda!63845)))

(declare-fun bs!346264 () Bool)

(assert (= bs!346264 (and d!435236 d!435166)))

(assert (=> bs!346264 (= lambda!63879 lambda!63859)))

(declare-fun bs!346265 () Bool)

(assert (= bs!346265 (and d!435236 d!435178)))

(assert (=> bs!346265 (= lambda!63879 lambda!63863)))

(declare-fun bs!346266 () Bool)

(assert (= bs!346266 (and d!435236 d!435214)))

(assert (=> bs!346266 (= lambda!63879 lambda!63872)))

(declare-fun bs!346267 () Bool)

(assert (= bs!346267 (and d!435236 d!435130)))

(assert (=> bs!346267 (= lambda!63879 lambda!63850)))

(declare-fun bs!346268 () Bool)

(assert (= bs!346268 (and d!435236 d!435180)))

(assert (=> bs!346268 (= lambda!63879 lambda!63864)))

(declare-fun bs!346269 () Bool)

(assert (= bs!346269 (and d!435236 d!435126)))

(assert (=> bs!346269 (= lambda!63879 lambda!63846)))

(declare-fun bs!346270 () Bool)

(assert (= bs!346270 (and d!435236 d!435200)))

(assert (=> bs!346270 (= lambda!63879 lambda!63870)))

(declare-fun bs!346271 () Bool)

(assert (= bs!346271 (and d!435236 d!435076)))

(assert (=> bs!346271 (= lambda!63879 lambda!63843)))

(declare-fun bs!346272 () Bool)

(assert (= bs!346272 (and d!435236 d!435194)))

(assert (=> bs!346272 (= lambda!63879 lambda!63869)))

(declare-fun bs!346273 () Bool)

(assert (= bs!346273 (and d!435236 d!435142)))

(assert (=> bs!346273 (= lambda!63879 lambda!63854)))

(declare-fun bs!346274 () Bool)

(assert (= bs!346274 (and d!435236 d!435086)))

(assert (=> bs!346274 (= lambda!63879 lambda!63844)))

(declare-fun bs!346275 () Bool)

(assert (= bs!346275 (and d!435236 d!435234)))

(assert (=> bs!346275 (= lambda!63879 lambda!63878)))

(declare-fun bs!346276 () Bool)

(assert (= bs!346276 (and d!435236 d!435188)))

(assert (=> bs!346276 (= lambda!63879 lambda!63865)))

(declare-fun bs!346277 () Bool)

(assert (= bs!346277 (and d!435236 d!435222)))

(assert (=> bs!346277 (= lambda!63879 lambda!63874)))

(assert (=> d!435236 (= (inv!20959 setElem!8206) (forall!3820 (exprs!1135 setElem!8206) lambda!63879))))

(declare-fun bs!346278 () Bool)

(assert (= bs!346278 d!435236))

(declare-fun m!1730612 () Bool)

(assert (=> bs!346278 m!1730612))

(assert (=> setNonEmpty!8206 d!435236))

(declare-fun d!435238 () Bool)

(declare-fun res!670342 () Bool)

(declare-fun e!949042 () Bool)

(assert (=> d!435238 (=> (not res!670342) (not e!949042))))

(declare-fun size!12745 (Conc!5358) Int)

(assert (=> d!435238 (= res!670342 (= (csize!10946 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) (+ (size!12745 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) (size!12745 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))))

(assert (=> d!435238 (= (inv!20954 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) e!949042)))

(declare-fun b!1484054 () Bool)

(declare-fun res!670343 () Bool)

(assert (=> b!1484054 (=> (not res!670343) (not e!949042))))

(assert (=> b!1484054 (= res!670343 (and (not (= (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) Empty!5358)) (not (= (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) Empty!5358))))))

(declare-fun b!1484055 () Bool)

(declare-fun res!670344 () Bool)

(assert (=> b!1484055 (=> (not res!670344) (not e!949042))))

(assert (=> b!1484055 (= res!670344 (= (cheight!5569 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) (+ (max!0 (height!790 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) (height!790 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) 1)))))

(declare-fun b!1484056 () Bool)

(assert (=> b!1484056 (= e!949042 (<= 0 (cheight!5569 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(assert (= (and d!435238 res!670342) b!1484054))

(assert (= (and b!1484054 res!670343) b!1484055))

(assert (= (and b!1484055 res!670344) b!1484056))

(declare-fun m!1730614 () Bool)

(assert (=> d!435238 m!1730614))

(declare-fun m!1730616 () Bool)

(assert (=> d!435238 m!1730616))

(declare-fun m!1730618 () Bool)

(assert (=> b!1484055 m!1730618))

(declare-fun m!1730620 () Bool)

(assert (=> b!1484055 m!1730620))

(assert (=> b!1484055 m!1730618))

(assert (=> b!1484055 m!1730620))

(declare-fun m!1730622 () Bool)

(assert (=> b!1484055 m!1730622))

(assert (=> b!1483435 d!435238))

(declare-fun d!435240 () Bool)

(declare-fun res!670345 () Bool)

(declare-fun e!949043 () Bool)

(assert (=> d!435240 (=> (not res!670345) (not e!949043))))

(assert (=> d!435240 (= res!670345 (= (csize!10946 (c!243104 totalInput!458)) (+ (size!12745 (left!13251 (c!243104 totalInput!458))) (size!12745 (right!13581 (c!243104 totalInput!458))))))))

(assert (=> d!435240 (= (inv!20954 (c!243104 totalInput!458)) e!949043)))

(declare-fun b!1484057 () Bool)

(declare-fun res!670346 () Bool)

(assert (=> b!1484057 (=> (not res!670346) (not e!949043))))

(assert (=> b!1484057 (= res!670346 (and (not (= (left!13251 (c!243104 totalInput!458)) Empty!5358)) (not (= (right!13581 (c!243104 totalInput!458)) Empty!5358))))))

(declare-fun b!1484058 () Bool)

(declare-fun res!670347 () Bool)

(assert (=> b!1484058 (=> (not res!670347) (not e!949043))))

(assert (=> b!1484058 (= res!670347 (= (cheight!5569 (c!243104 totalInput!458)) (+ (max!0 (height!790 (left!13251 (c!243104 totalInput!458))) (height!790 (right!13581 (c!243104 totalInput!458)))) 1)))))

(declare-fun b!1484059 () Bool)

(assert (=> b!1484059 (= e!949043 (<= 0 (cheight!5569 (c!243104 totalInput!458))))))

(assert (= (and d!435240 res!670345) b!1484057))

(assert (= (and b!1484057 res!670346) b!1484058))

(assert (= (and b!1484058 res!670347) b!1484059))

(declare-fun m!1730624 () Bool)

(assert (=> d!435240 m!1730624))

(declare-fun m!1730626 () Bool)

(assert (=> d!435240 m!1730626))

(assert (=> b!1484058 m!1730307))

(assert (=> b!1484058 m!1730309))

(assert (=> b!1484058 m!1730307))

(assert (=> b!1484058 m!1730309))

(declare-fun m!1730628 () Bool)

(assert (=> b!1484058 m!1730628))

(assert (=> b!1483412 d!435240))

(declare-fun d!435242 () Bool)

(declare-fun res!670348 () Bool)

(declare-fun e!949044 () Bool)

(assert (=> d!435242 (=> (not res!670348) (not e!949044))))

(assert (=> d!435242 (= res!670348 (= (csize!10946 (c!243104 input!1102)) (+ (size!12745 (left!13251 (c!243104 input!1102))) (size!12745 (right!13581 (c!243104 input!1102))))))))

(assert (=> d!435242 (= (inv!20954 (c!243104 input!1102)) e!949044)))

(declare-fun b!1484060 () Bool)

(declare-fun res!670349 () Bool)

(assert (=> b!1484060 (=> (not res!670349) (not e!949044))))

(assert (=> b!1484060 (= res!670349 (and (not (= (left!13251 (c!243104 input!1102)) Empty!5358)) (not (= (right!13581 (c!243104 input!1102)) Empty!5358))))))

(declare-fun b!1484061 () Bool)

(declare-fun res!670350 () Bool)

(assert (=> b!1484061 (=> (not res!670350) (not e!949044))))

(assert (=> b!1484061 (= res!670350 (= (cheight!5569 (c!243104 input!1102)) (+ (max!0 (height!790 (left!13251 (c!243104 input!1102))) (height!790 (right!13581 (c!243104 input!1102)))) 1)))))

(declare-fun b!1484062 () Bool)

(assert (=> b!1484062 (= e!949044 (<= 0 (cheight!5569 (c!243104 input!1102))))))

(assert (= (and d!435242 res!670348) b!1484060))

(assert (= (and b!1484060 res!670349) b!1484061))

(assert (= (and b!1484061 res!670350) b!1484062))

(declare-fun m!1730630 () Bool)

(assert (=> d!435242 m!1730630))

(declare-fun m!1730632 () Bool)

(assert (=> d!435242 m!1730632))

(declare-fun m!1730634 () Bool)

(assert (=> b!1484061 m!1730634))

(declare-fun m!1730636 () Bool)

(assert (=> b!1484061 m!1730636))

(assert (=> b!1484061 m!1730634))

(assert (=> b!1484061 m!1730636))

(declare-fun m!1730638 () Bool)

(assert (=> b!1484061 m!1730638))

(assert (=> b!1483409 d!435242))

(declare-fun d!435244 () Bool)

(declare-fun res!670357 () Bool)

(declare-fun e!949047 () Bool)

(assert (=> d!435244 (=> (not res!670357) (not e!949047))))

(assert (=> d!435244 (= res!670357 (= (csize!10948 (c!243105 acc!392)) (+ (size!12744 (left!13252 (c!243105 acc!392))) (size!12744 (right!13582 (c!243105 acc!392))))))))

(assert (=> d!435244 (= (inv!20956 (c!243105 acc!392)) e!949047)))

(declare-fun b!1484069 () Bool)

(declare-fun res!670358 () Bool)

(assert (=> b!1484069 (=> (not res!670358) (not e!949047))))

(assert (=> b!1484069 (= res!670358 (and (not (= (left!13252 (c!243105 acc!392)) Empty!5359)) (not (= (right!13582 (c!243105 acc!392)) Empty!5359))))))

(declare-fun b!1484070 () Bool)

(declare-fun res!670359 () Bool)

(assert (=> b!1484070 (=> (not res!670359) (not e!949047))))

(assert (=> b!1484070 (= res!670359 (= (cheight!5570 (c!243105 acc!392)) (+ (max!0 (height!789 (left!13252 (c!243105 acc!392))) (height!789 (right!13582 (c!243105 acc!392)))) 1)))))

(declare-fun b!1484071 () Bool)

(assert (=> b!1484071 (= e!949047 (<= 0 (cheight!5570 (c!243105 acc!392))))))

(assert (= (and d!435244 res!670357) b!1484069))

(assert (= (and b!1484069 res!670358) b!1484070))

(assert (= (and b!1484070 res!670359) b!1484071))

(declare-fun m!1730640 () Bool)

(assert (=> d!435244 m!1730640))

(declare-fun m!1730642 () Bool)

(assert (=> d!435244 m!1730642))

(assert (=> b!1484070 m!1730512))

(assert (=> b!1484070 m!1730514))

(assert (=> b!1484070 m!1730512))

(assert (=> b!1484070 m!1730514))

(declare-fun m!1730644 () Bool)

(assert (=> b!1484070 m!1730644))

(assert (=> b!1483492 d!435244))

(declare-fun d!435246 () Bool)

(declare-fun c!243232 () Bool)

(assert (=> d!435246 (= c!243232 ((_ is Node!5358) (left!13251 (c!243104 totalInput!458))))))

(declare-fun e!949048 () Bool)

(assert (=> d!435246 (= (inv!20946 (left!13251 (c!243104 totalInput!458))) e!949048)))

(declare-fun b!1484072 () Bool)

(assert (=> b!1484072 (= e!949048 (inv!20954 (left!13251 (c!243104 totalInput!458))))))

(declare-fun b!1484073 () Bool)

(declare-fun e!949049 () Bool)

(assert (=> b!1484073 (= e!949048 e!949049)))

(declare-fun res!670360 () Bool)

(assert (=> b!1484073 (= res!670360 (not ((_ is Leaf!7962) (left!13251 (c!243104 totalInput!458)))))))

(assert (=> b!1484073 (=> res!670360 e!949049)))

(declare-fun b!1484074 () Bool)

(assert (=> b!1484074 (= e!949049 (inv!20955 (left!13251 (c!243104 totalInput!458))))))

(assert (= (and d!435246 c!243232) b!1484072))

(assert (= (and d!435246 (not c!243232)) b!1484073))

(assert (= (and b!1484073 (not res!670360)) b!1484074))

(declare-fun m!1730646 () Bool)

(assert (=> b!1484072 m!1730646))

(declare-fun m!1730648 () Bool)

(assert (=> b!1484074 m!1730648))

(assert (=> b!1483537 d!435246))

(declare-fun d!435248 () Bool)

(declare-fun c!243233 () Bool)

(assert (=> d!435248 (= c!243233 ((_ is Node!5358) (right!13581 (c!243104 totalInput!458))))))

(declare-fun e!949050 () Bool)

(assert (=> d!435248 (= (inv!20946 (right!13581 (c!243104 totalInput!458))) e!949050)))

(declare-fun b!1484075 () Bool)

(assert (=> b!1484075 (= e!949050 (inv!20954 (right!13581 (c!243104 totalInput!458))))))

(declare-fun b!1484076 () Bool)

(declare-fun e!949051 () Bool)

(assert (=> b!1484076 (= e!949050 e!949051)))

(declare-fun res!670361 () Bool)

(assert (=> b!1484076 (= res!670361 (not ((_ is Leaf!7962) (right!13581 (c!243104 totalInput!458)))))))

(assert (=> b!1484076 (=> res!670361 e!949051)))

(declare-fun b!1484077 () Bool)

(assert (=> b!1484077 (= e!949051 (inv!20955 (right!13581 (c!243104 totalInput!458))))))

(assert (= (and d!435248 c!243233) b!1484075))

(assert (= (and d!435248 (not c!243233)) b!1484076))

(assert (= (and b!1484076 (not res!670361)) b!1484077))

(declare-fun m!1730650 () Bool)

(assert (=> b!1484075 m!1730650))

(declare-fun m!1730652 () Bool)

(assert (=> b!1484077 m!1730652))

(assert (=> b!1483537 d!435248))

(declare-fun d!435250 () Bool)

(assert (=> d!435250 (= (height!789 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))) (ite ((_ is Empty!5359) (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))) 0 (ite ((_ is Leaf!7963) (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))) 1 (cheight!5570 (++!4243 (c!243105 acc!392) (c!243105 (_1!8087 lt!515354)))))))))

(assert (=> b!1483454 d!435250))

(assert (=> b!1483454 d!435116))

(declare-fun d!435252 () Bool)

(assert (=> d!435252 (= (max!0 (height!789 (c!243105 acc!392)) (height!789 (c!243105 (_1!8087 lt!515354)))) (ite (< (height!789 (c!243105 acc!392)) (height!789 (c!243105 (_1!8087 lt!515354)))) (height!789 (c!243105 (_1!8087 lt!515354))) (height!789 (c!243105 acc!392))))))

(assert (=> b!1483454 d!435252))

(declare-fun d!435254 () Bool)

(assert (=> d!435254 (= (height!789 (c!243105 acc!392)) (ite ((_ is Empty!5359) (c!243105 acc!392)) 0 (ite ((_ is Leaf!7963) (c!243105 acc!392)) 1 (cheight!5570 (c!243105 acc!392)))))))

(assert (=> b!1483454 d!435254))

(declare-fun d!435256 () Bool)

(assert (=> d!435256 (= (height!789 (c!243105 (_1!8087 lt!515354))) (ite ((_ is Empty!5359) (c!243105 (_1!8087 lt!515354))) 0 (ite ((_ is Leaf!7963) (c!243105 (_1!8087 lt!515354))) 1 (cheight!5570 (c!243105 (_1!8087 lt!515354))))))))

(assert (=> b!1483454 d!435256))

(assert (=> b!1483363 d!434994))

(declare-fun d!435258 () Bool)

(declare-fun res!670366 () Bool)

(declare-fun e!949056 () Bool)

(assert (=> d!435258 (=> res!670366 e!949056)))

(assert (=> d!435258 (= res!670366 ((_ is Nil!15735) rules!1640))))

(assert (=> d!435258 (= (forall!3819 rules!1640 lambda!63840) e!949056)))

(declare-fun b!1484082 () Bool)

(declare-fun e!949057 () Bool)

(assert (=> b!1484082 (= e!949056 e!949057)))

(declare-fun res!670367 () Bool)

(assert (=> b!1484082 (=> (not res!670367) (not e!949057))))

(declare-fun dynLambda!7165 (Int Rule!5406) Bool)

(assert (=> b!1484082 (= res!670367 (dynLambda!7165 lambda!63840 (h!21136 rules!1640)))))

(declare-fun b!1484083 () Bool)

(assert (=> b!1484083 (= e!949057 (forall!3819 (t!137720 rules!1640) lambda!63840))))

(assert (= (and d!435258 (not res!670366)) b!1484082))

(assert (= (and b!1484082 res!670367) b!1484083))

(declare-fun b_lambda!46471 () Bool)

(assert (=> (not b_lambda!46471) (not b!1484082)))

(declare-fun m!1730654 () Bool)

(assert (=> b!1484082 m!1730654))

(declare-fun m!1730656 () Bool)

(assert (=> b!1484083 m!1730656))

(assert (=> d!435018 d!435258))

(declare-fun d!435260 () Bool)

(assert (=> d!435260 (= (list!6251 (_2!8087 lt!515380)) (list!6254 (c!243104 (_2!8087 lt!515380))))))

(declare-fun bs!346279 () Bool)

(assert (= bs!346279 d!435260))

(declare-fun m!1730658 () Bool)

(assert (=> bs!346279 m!1730658))

(assert (=> b!1483461 d!435260))

(assert (=> b!1483461 d!435124))

(assert (=> b!1483461 d!435012))

(declare-fun d!435262 () Bool)

(declare-fun lt!515478 () Int)

(assert (=> d!435262 (= lt!515478 (size!12742 (list!6251 (_2!8087 lt!515374))))))

(assert (=> d!435262 (= lt!515478 (size!12745 (c!243104 (_2!8087 lt!515374))))))

(assert (=> d!435262 (= (size!12740 (_2!8087 lt!515374)) lt!515478)))

(declare-fun bs!346280 () Bool)

(assert (= bs!346280 d!435262))

(assert (=> bs!346280 m!1729963))

(assert (=> bs!346280 m!1729963))

(declare-fun m!1730660 () Bool)

(assert (=> bs!346280 m!1730660))

(declare-fun m!1730662 () Bool)

(assert (=> bs!346280 m!1730662))

(assert (=> b!1483443 d!435262))

(declare-fun d!435264 () Bool)

(declare-fun lt!515479 () Int)

(assert (=> d!435264 (= lt!515479 (size!12742 (list!6251 totalInput!458)))))

(assert (=> d!435264 (= lt!515479 (size!12745 (c!243104 totalInput!458)))))

(assert (=> d!435264 (= (size!12740 totalInput!458) lt!515479)))

(declare-fun bs!346281 () Bool)

(assert (= bs!346281 d!435264))

(assert (=> bs!346281 m!1729861))

(assert (=> bs!346281 m!1729861))

(assert (=> bs!346281 m!1730213))

(declare-fun m!1730664 () Bool)

(assert (=> bs!346281 m!1730664))

(assert (=> b!1483443 d!435264))

(declare-fun bs!346282 () Bool)

(declare-fun d!435266 () Bool)

(assert (= bs!346282 (and d!435266 d!435158)))

(declare-fun lambda!63880 () Int)

(assert (=> bs!346282 (= lambda!63880 lambda!63855)))

(declare-fun bs!346283 () Bool)

(assert (= bs!346283 (and d!435266 d!435206)))

(assert (=> bs!346283 (= lambda!63880 lambda!63871)))

(declare-fun bs!346284 () Bool)

(assert (= bs!346284 (and d!435266 d!435216)))

(assert (=> bs!346284 (= lambda!63880 lambda!63873)))

(declare-fun bs!346285 () Bool)

(assert (= bs!346285 (and d!435266 d!435120)))

(assert (=> bs!346285 (= lambda!63880 lambda!63845)))

(declare-fun bs!346286 () Bool)

(assert (= bs!346286 (and d!435266 d!435166)))

(assert (=> bs!346286 (= lambda!63880 lambda!63859)))

(declare-fun bs!346287 () Bool)

(assert (= bs!346287 (and d!435266 d!435178)))

(assert (=> bs!346287 (= lambda!63880 lambda!63863)))

(declare-fun bs!346288 () Bool)

(assert (= bs!346288 (and d!435266 d!435214)))

(assert (=> bs!346288 (= lambda!63880 lambda!63872)))

(declare-fun bs!346289 () Bool)

(assert (= bs!346289 (and d!435266 d!435130)))

(assert (=> bs!346289 (= lambda!63880 lambda!63850)))

(declare-fun bs!346290 () Bool)

(assert (= bs!346290 (and d!435266 d!435180)))

(assert (=> bs!346290 (= lambda!63880 lambda!63864)))

(declare-fun bs!346291 () Bool)

(assert (= bs!346291 (and d!435266 d!435236)))

(assert (=> bs!346291 (= lambda!63880 lambda!63879)))

(declare-fun bs!346292 () Bool)

(assert (= bs!346292 (and d!435266 d!435126)))

(assert (=> bs!346292 (= lambda!63880 lambda!63846)))

(declare-fun bs!346293 () Bool)

(assert (= bs!346293 (and d!435266 d!435200)))

(assert (=> bs!346293 (= lambda!63880 lambda!63870)))

(declare-fun bs!346294 () Bool)

(assert (= bs!346294 (and d!435266 d!435076)))

(assert (=> bs!346294 (= lambda!63880 lambda!63843)))

(declare-fun bs!346295 () Bool)

(assert (= bs!346295 (and d!435266 d!435194)))

(assert (=> bs!346295 (= lambda!63880 lambda!63869)))

(declare-fun bs!346296 () Bool)

(assert (= bs!346296 (and d!435266 d!435142)))

(assert (=> bs!346296 (= lambda!63880 lambda!63854)))

(declare-fun bs!346297 () Bool)

(assert (= bs!346297 (and d!435266 d!435086)))

(assert (=> bs!346297 (= lambda!63880 lambda!63844)))

(declare-fun bs!346298 () Bool)

(assert (= bs!346298 (and d!435266 d!435234)))

(assert (=> bs!346298 (= lambda!63880 lambda!63878)))

(declare-fun bs!346299 () Bool)

(assert (= bs!346299 (and d!435266 d!435188)))

(assert (=> bs!346299 (= lambda!63880 lambda!63865)))

(declare-fun bs!346300 () Bool)

(assert (= bs!346300 (and d!435266 d!435222)))

(assert (=> bs!346300 (= lambda!63880 lambda!63874)))

(assert (=> d!435266 (= (inv!20959 setElem!8207) (forall!3820 (exprs!1135 setElem!8207) lambda!63880))))

(declare-fun bs!346301 () Bool)

(assert (= bs!346301 d!435266))

(declare-fun m!1730666 () Bool)

(assert (=> bs!346301 m!1730666))

(assert (=> setNonEmpty!8207 d!435266))

(assert (=> d!435064 d!435170))

(declare-fun bs!346302 () Bool)

(declare-fun d!435268 () Bool)

(assert (= bs!346302 (and d!435268 d!435158)))

(declare-fun lambda!63881 () Int)

(assert (=> bs!346302 (= lambda!63881 lambda!63855)))

(declare-fun bs!346303 () Bool)

(assert (= bs!346303 (and d!435268 d!435206)))

(assert (=> bs!346303 (= lambda!63881 lambda!63871)))

(declare-fun bs!346304 () Bool)

(assert (= bs!346304 (and d!435268 d!435216)))

(assert (=> bs!346304 (= lambda!63881 lambda!63873)))

(declare-fun bs!346305 () Bool)

(assert (= bs!346305 (and d!435268 d!435120)))

(assert (=> bs!346305 (= lambda!63881 lambda!63845)))

(declare-fun bs!346306 () Bool)

(assert (= bs!346306 (and d!435268 d!435166)))

(assert (=> bs!346306 (= lambda!63881 lambda!63859)))

(declare-fun bs!346307 () Bool)

(assert (= bs!346307 (and d!435268 d!435178)))

(assert (=> bs!346307 (= lambda!63881 lambda!63863)))

(declare-fun bs!346308 () Bool)

(assert (= bs!346308 (and d!435268 d!435214)))

(assert (=> bs!346308 (= lambda!63881 lambda!63872)))

(declare-fun bs!346309 () Bool)

(assert (= bs!346309 (and d!435268 d!435130)))

(assert (=> bs!346309 (= lambda!63881 lambda!63850)))

(declare-fun bs!346310 () Bool)

(assert (= bs!346310 (and d!435268 d!435266)))

(assert (=> bs!346310 (= lambda!63881 lambda!63880)))

(declare-fun bs!346311 () Bool)

(assert (= bs!346311 (and d!435268 d!435180)))

(assert (=> bs!346311 (= lambda!63881 lambda!63864)))

(declare-fun bs!346312 () Bool)

(assert (= bs!346312 (and d!435268 d!435236)))

(assert (=> bs!346312 (= lambda!63881 lambda!63879)))

(declare-fun bs!346313 () Bool)

(assert (= bs!346313 (and d!435268 d!435126)))

(assert (=> bs!346313 (= lambda!63881 lambda!63846)))

(declare-fun bs!346314 () Bool)

(assert (= bs!346314 (and d!435268 d!435200)))

(assert (=> bs!346314 (= lambda!63881 lambda!63870)))

(declare-fun bs!346315 () Bool)

(assert (= bs!346315 (and d!435268 d!435076)))

(assert (=> bs!346315 (= lambda!63881 lambda!63843)))

(declare-fun bs!346316 () Bool)

(assert (= bs!346316 (and d!435268 d!435194)))

(assert (=> bs!346316 (= lambda!63881 lambda!63869)))

(declare-fun bs!346317 () Bool)

(assert (= bs!346317 (and d!435268 d!435142)))

(assert (=> bs!346317 (= lambda!63881 lambda!63854)))

(declare-fun bs!346318 () Bool)

(assert (= bs!346318 (and d!435268 d!435086)))

(assert (=> bs!346318 (= lambda!63881 lambda!63844)))

(declare-fun bs!346319 () Bool)

(assert (= bs!346319 (and d!435268 d!435234)))

(assert (=> bs!346319 (= lambda!63881 lambda!63878)))

(declare-fun bs!346320 () Bool)

(assert (= bs!346320 (and d!435268 d!435188)))

(assert (=> bs!346320 (= lambda!63881 lambda!63865)))

(declare-fun bs!346321 () Bool)

(assert (= bs!346321 (and d!435268 d!435222)))

(assert (=> bs!346321 (= lambda!63881 lambda!63874)))

(assert (=> d!435268 (= (inv!20959 setElem!8237) (forall!3820 (exprs!1135 setElem!8237) lambda!63881))))

(declare-fun bs!346322 () Bool)

(assert (= bs!346322 d!435268))

(declare-fun m!1730668 () Bool)

(assert (=> bs!346322 m!1730668))

(assert (=> setNonEmpty!8237 d!435268))

(declare-fun d!435270 () Bool)

(declare-fun e!949058 () Bool)

(assert (=> d!435270 e!949058))

(declare-fun res!670368 () Bool)

(assert (=> d!435270 (=> (not res!670368) (not e!949058))))

(assert (=> d!435270 (= res!670368 (isBalanced!1588 (prepend!435 (c!243105 (_1!8087 lt!515366)) (_1!8090 (v!22575 lt!515364)))))))

(declare-fun lt!515480 () BalanceConc!10660)

(assert (=> d!435270 (= lt!515480 (BalanceConc!10661 (prepend!435 (c!243105 (_1!8087 lt!515366)) (_1!8090 (v!22575 lt!515364)))))))

(assert (=> d!435270 (= (prepend!434 (_1!8087 lt!515366) (_1!8090 (v!22575 lt!515364))) lt!515480)))

(declare-fun b!1484084 () Bool)

(assert (=> b!1484084 (= e!949058 (= (list!6252 lt!515480) (Cons!15733 (_1!8090 (v!22575 lt!515364)) (list!6252 (_1!8087 lt!515366)))))))

(assert (= (and d!435270 res!670368) b!1484084))

(declare-fun m!1730670 () Bool)

(assert (=> d!435270 m!1730670))

(assert (=> d!435270 m!1730670))

(declare-fun m!1730672 () Bool)

(assert (=> d!435270 m!1730672))

(declare-fun m!1730674 () Bool)

(assert (=> b!1484084 m!1730674))

(declare-fun m!1730676 () Bool)

(assert (=> b!1484084 m!1730676))

(assert (=> b!1483396 d!435270))

(declare-fun b!1484085 () Bool)

(declare-fun e!949062 () tuple2!14388)

(declare-fun lt!515483 () tuple2!14388)

(declare-fun lt!515481 () Option!2888)

(assert (=> b!1484085 (= e!949062 (tuple2!14389 (prepend!434 (_1!8087 lt!515483) (_1!8090 (v!22575 lt!515481))) (_2!8087 lt!515483)))))

(assert (=> b!1484085 (= lt!515483 (lexRec!297 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515481))))))

(declare-fun b!1484086 () Bool)

(declare-fun e!949060 () Bool)

(declare-fun lt!515482 () tuple2!14388)

(assert (=> b!1484086 (= e!949060 (= (list!6251 (_2!8087 lt!515482)) (list!6251 (_2!8090 (v!22575 lt!515364)))))))

(declare-fun b!1484087 () Bool)

(declare-fun res!670369 () Bool)

(declare-fun e!949059 () Bool)

(assert (=> b!1484087 (=> (not res!670369) (not e!949059))))

(assert (=> b!1484087 (= res!670369 (= (list!6252 (_1!8087 lt!515482)) (_1!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 (_2!8090 (v!22575 lt!515364)))))))))

(declare-fun b!1484088 () Bool)

(declare-fun e!949061 () Bool)

(assert (=> b!1484088 (= e!949061 (not (isEmpty!9835 (_1!8087 lt!515482))))))

(declare-fun b!1484089 () Bool)

(assert (=> b!1484089 (= e!949059 (= (list!6251 (_2!8087 lt!515482)) (_2!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 (_2!8090 (v!22575 lt!515364)))))))))

(declare-fun b!1484090 () Bool)

(assert (=> b!1484090 (= e!949060 e!949061)))

(declare-fun res!670370 () Bool)

(assert (=> b!1484090 (= res!670370 (< (size!12740 (_2!8087 lt!515482)) (size!12740 (_2!8090 (v!22575 lt!515364)))))))

(assert (=> b!1484090 (=> (not res!670370) (not e!949061))))

(declare-fun b!1484091 () Bool)

(assert (=> b!1484091 (= e!949062 (tuple2!14389 (BalanceConc!10661 Empty!5359) (_2!8090 (v!22575 lt!515364))))))

(declare-fun d!435272 () Bool)

(assert (=> d!435272 e!949059))

(declare-fun res!670371 () Bool)

(assert (=> d!435272 (=> (not res!670371) (not e!949059))))

(assert (=> d!435272 (= res!670371 e!949060)))

(declare-fun c!243234 () Bool)

(assert (=> d!435272 (= c!243234 (> (size!12741 (_1!8087 lt!515482)) 0))))

(assert (=> d!435272 (= lt!515482 e!949062)))

(declare-fun c!243235 () Bool)

(assert (=> d!435272 (= c!243235 ((_ is Some!2887) lt!515481))))

(assert (=> d!435272 (= lt!515481 (maxPrefixZipperSequence!567 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515364))))))

(assert (=> d!435272 (= (lexRec!297 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515364))) lt!515482)))

(assert (= (and d!435272 c!243235) b!1484085))

(assert (= (and d!435272 (not c!243235)) b!1484091))

(assert (= (and d!435272 c!243234) b!1484090))

(assert (= (and d!435272 (not c!243234)) b!1484086))

(assert (= (and b!1484090 res!670370) b!1484088))

(assert (= (and d!435272 res!670371) b!1484087))

(assert (= (and b!1484087 res!670369) b!1484089))

(declare-fun m!1730678 () Bool)

(assert (=> d!435272 m!1730678))

(declare-fun m!1730680 () Bool)

(assert (=> d!435272 m!1730680))

(declare-fun m!1730682 () Bool)

(assert (=> b!1484088 m!1730682))

(declare-fun m!1730684 () Bool)

(assert (=> b!1484090 m!1730684))

(declare-fun m!1730686 () Bool)

(assert (=> b!1484090 m!1730686))

(declare-fun m!1730688 () Bool)

(assert (=> b!1484085 m!1730688))

(declare-fun m!1730690 () Bool)

(assert (=> b!1484085 m!1730690))

(declare-fun m!1730692 () Bool)

(assert (=> b!1484086 m!1730692))

(declare-fun m!1730694 () Bool)

(assert (=> b!1484086 m!1730694))

(assert (=> b!1484089 m!1730692))

(assert (=> b!1484089 m!1730694))

(assert (=> b!1484089 m!1730694))

(declare-fun m!1730696 () Bool)

(assert (=> b!1484089 m!1730696))

(declare-fun m!1730698 () Bool)

(assert (=> b!1484087 m!1730698))

(assert (=> b!1484087 m!1730694))

(assert (=> b!1484087 m!1730694))

(assert (=> b!1484087 m!1730696))

(assert (=> b!1483396 d!435272))

(declare-fun d!435274 () Bool)

(declare-fun lt!515484 () Int)

(assert (=> d!435274 (= lt!515484 (size!12743 (list!6252 (_1!8087 lt!515380))))))

(assert (=> d!435274 (= lt!515484 (size!12744 (c!243105 (_1!8087 lt!515380))))))

(assert (=> d!435274 (= (size!12741 (_1!8087 lt!515380)) lt!515484)))

(declare-fun bs!346323 () Bool)

(assert (= bs!346323 d!435274))

(assert (=> bs!346323 m!1730011))

(assert (=> bs!346323 m!1730011))

(declare-fun m!1730700 () Bool)

(assert (=> bs!346323 m!1730700))

(declare-fun m!1730702 () Bool)

(assert (=> bs!346323 m!1730702))

(assert (=> d!435030 d!435274))

(declare-fun lt!515486 () Option!2888)

(declare-fun b!1484092 () Bool)

(declare-fun e!949064 () Bool)

(assert (=> b!1484092 (= e!949064 (= (list!6251 (_2!8090 (get!4695 lt!515486))) (_2!8092 (get!4696 (maxPrefixZipper!249 thiss!13241 rules!1640 (list!6251 input!1102))))))))

(declare-fun b!1484093 () Bool)

(declare-fun e!949066 () Bool)

(declare-fun e!949065 () Bool)

(assert (=> b!1484093 (= e!949066 e!949065)))

(declare-fun res!670375 () Bool)

(assert (=> b!1484093 (=> (not res!670375) (not e!949065))))

(assert (=> b!1484093 (= res!670375 (= (_1!8090 (get!4695 lt!515486)) (_1!8092 (get!4696 (maxPrefix!1198 thiss!13241 rules!1640 (list!6251 input!1102))))))))

(declare-fun bm!98611 () Bool)

(declare-fun call!98616 () Option!2888)

(assert (=> bm!98611 (= call!98616 (maxPrefixOneRuleZipperSequence!268 thiss!13241 (h!21136 rules!1640) input!1102))))

(declare-fun b!1484094 () Bool)

(declare-fun e!949068 () Option!2888)

(declare-fun lt!515487 () Option!2888)

(declare-fun lt!515491 () Option!2888)

(assert (=> b!1484094 (= e!949068 (ite (and ((_ is None!2887) lt!515487) ((_ is None!2887) lt!515491)) None!2887 (ite ((_ is None!2887) lt!515491) lt!515487 (ite ((_ is None!2887) lt!515487) lt!515491 (ite (>= (size!12738 (_1!8090 (v!22575 lt!515487))) (size!12738 (_1!8090 (v!22575 lt!515491)))) lt!515487 lt!515491)))))))

(assert (=> b!1484094 (= lt!515487 call!98616)))

(assert (=> b!1484094 (= lt!515491 (maxPrefixZipperSequence!567 thiss!13241 (t!137720 rules!1640) input!1102))))

(declare-fun b!1484095 () Bool)

(declare-fun e!949067 () Bool)

(assert (=> b!1484095 (= e!949067 e!949066)))

(declare-fun res!670377 () Bool)

(assert (=> b!1484095 (=> res!670377 e!949066)))

(assert (=> b!1484095 (= res!670377 (not (isDefined!2333 lt!515486)))))

(declare-fun d!435276 () Bool)

(assert (=> d!435276 e!949067))

(declare-fun res!670373 () Bool)

(assert (=> d!435276 (=> (not res!670373) (not e!949067))))

(assert (=> d!435276 (= res!670373 (= (isDefined!2333 lt!515486) (isDefined!2334 (maxPrefixZipper!249 thiss!13241 rules!1640 (list!6251 input!1102)))))))

(assert (=> d!435276 (= lt!515486 e!949068)))

(declare-fun c!243236 () Bool)

(assert (=> d!435276 (= c!243236 (and ((_ is Cons!15735) rules!1640) ((_ is Nil!15735) (t!137720 rules!1640))))))

(declare-fun lt!515489 () Unit!25608)

(declare-fun lt!515485 () Unit!25608)

(assert (=> d!435276 (= lt!515489 lt!515485)))

(declare-fun lt!515488 () List!15798)

(declare-fun lt!515490 () List!15798)

(assert (=> d!435276 (isPrefix!1208 lt!515488 lt!515490)))

(assert (=> d!435276 (= lt!515485 (lemmaIsPrefixRefl!838 lt!515488 lt!515490))))

(assert (=> d!435276 (= lt!515490 (list!6251 input!1102))))

(assert (=> d!435276 (= lt!515488 (list!6251 input!1102))))

(assert (=> d!435276 (rulesValidInductive!845 thiss!13241 rules!1640)))

(assert (=> d!435276 (= (maxPrefixZipperSequence!567 thiss!13241 rules!1640 input!1102) lt!515486)))

(declare-fun b!1484096 () Bool)

(assert (=> b!1484096 (= e!949065 (= (list!6251 (_2!8090 (get!4695 lt!515486))) (_2!8092 (get!4696 (maxPrefix!1198 thiss!13241 rules!1640 (list!6251 input!1102))))))))

(declare-fun b!1484097 () Bool)

(declare-fun e!949063 () Bool)

(assert (=> b!1484097 (= e!949063 e!949064)))

(declare-fun res!670374 () Bool)

(assert (=> b!1484097 (=> (not res!670374) (not e!949064))))

(assert (=> b!1484097 (= res!670374 (= (_1!8090 (get!4695 lt!515486)) (_1!8092 (get!4696 (maxPrefixZipper!249 thiss!13241 rules!1640 (list!6251 input!1102))))))))

(declare-fun b!1484098 () Bool)

(assert (=> b!1484098 (= e!949068 call!98616)))

(declare-fun b!1484099 () Bool)

(declare-fun res!670376 () Bool)

(assert (=> b!1484099 (=> (not res!670376) (not e!949067))))

(assert (=> b!1484099 (= res!670376 e!949063)))

(declare-fun res!670372 () Bool)

(assert (=> b!1484099 (=> res!670372 e!949063)))

(assert (=> b!1484099 (= res!670372 (not (isDefined!2333 lt!515486)))))

(assert (= (and d!435276 c!243236) b!1484098))

(assert (= (and d!435276 (not c!243236)) b!1484094))

(assert (= (or b!1484098 b!1484094) bm!98611))

(assert (= (and d!435276 res!670373) b!1484099))

(assert (= (and b!1484099 (not res!670372)) b!1484097))

(assert (= (and b!1484097 res!670374) b!1484092))

(assert (= (and b!1484099 res!670376) b!1484095))

(assert (= (and b!1484095 (not res!670377)) b!1484093))

(assert (= (and b!1484093 res!670375) b!1484096))

(declare-fun m!1730704 () Bool)

(assert (=> b!1484095 m!1730704))

(declare-fun m!1730706 () Bool)

(assert (=> b!1484094 m!1730706))

(assert (=> d!435276 m!1730704))

(declare-fun m!1730708 () Bool)

(assert (=> d!435276 m!1730708))

(assert (=> d!435276 m!1729825))

(declare-fun m!1730710 () Bool)

(assert (=> d!435276 m!1730710))

(declare-fun m!1730712 () Bool)

(assert (=> d!435276 m!1730712))

(declare-fun m!1730714 () Bool)

(assert (=> d!435276 m!1730714))

(assert (=> d!435276 m!1729863))

(assert (=> d!435276 m!1730712))

(assert (=> d!435276 m!1729863))

(assert (=> b!1484092 m!1730712))

(declare-fun m!1730716 () Bool)

(assert (=> b!1484092 m!1730716))

(declare-fun m!1730718 () Bool)

(assert (=> b!1484092 m!1730718))

(declare-fun m!1730720 () Bool)

(assert (=> b!1484092 m!1730720))

(assert (=> b!1484092 m!1729863))

(assert (=> b!1484092 m!1730712))

(assert (=> b!1484092 m!1729863))

(declare-fun m!1730722 () Bool)

(assert (=> bm!98611 m!1730722))

(assert (=> b!1484097 m!1730718))

(assert (=> b!1484097 m!1729863))

(assert (=> b!1484097 m!1729863))

(assert (=> b!1484097 m!1730712))

(assert (=> b!1484097 m!1730712))

(assert (=> b!1484097 m!1730716))

(assert (=> b!1484099 m!1730704))

(assert (=> b!1484096 m!1730321))

(declare-fun m!1730724 () Bool)

(assert (=> b!1484096 m!1730724))

(assert (=> b!1484096 m!1730718))

(assert (=> b!1484096 m!1730720))

(assert (=> b!1484096 m!1729863))

(assert (=> b!1484096 m!1729863))

(assert (=> b!1484096 m!1730321))

(assert (=> b!1484093 m!1730718))

(assert (=> b!1484093 m!1729863))

(assert (=> b!1484093 m!1729863))

(assert (=> b!1484093 m!1730321))

(assert (=> b!1484093 m!1730321))

(assert (=> b!1484093 m!1730724))

(assert (=> d!435030 d!435276))

(assert (=> b!1483349 d!435062))

(declare-fun d!435278 () Bool)

(declare-fun c!243237 () Bool)

(assert (=> d!435278 (= c!243237 ((_ is Node!5358) (left!13251 (c!243104 input!1102))))))

(declare-fun e!949069 () Bool)

(assert (=> d!435278 (= (inv!20946 (left!13251 (c!243104 input!1102))) e!949069)))

(declare-fun b!1484100 () Bool)

(assert (=> b!1484100 (= e!949069 (inv!20954 (left!13251 (c!243104 input!1102))))))

(declare-fun b!1484101 () Bool)

(declare-fun e!949070 () Bool)

(assert (=> b!1484101 (= e!949069 e!949070)))

(declare-fun res!670378 () Bool)

(assert (=> b!1484101 (= res!670378 (not ((_ is Leaf!7962) (left!13251 (c!243104 input!1102)))))))

(assert (=> b!1484101 (=> res!670378 e!949070)))

(declare-fun b!1484102 () Bool)

(assert (=> b!1484102 (= e!949070 (inv!20955 (left!13251 (c!243104 input!1102))))))

(assert (= (and d!435278 c!243237) b!1484100))

(assert (= (and d!435278 (not c!243237)) b!1484101))

(assert (= (and b!1484101 (not res!670378)) b!1484102))

(declare-fun m!1730726 () Bool)

(assert (=> b!1484100 m!1730726))

(declare-fun m!1730728 () Bool)

(assert (=> b!1484102 m!1730728))

(assert (=> b!1483503 d!435278))

(declare-fun d!435280 () Bool)

(declare-fun c!243238 () Bool)

(assert (=> d!435280 (= c!243238 ((_ is Node!5358) (right!13581 (c!243104 input!1102))))))

(declare-fun e!949071 () Bool)

(assert (=> d!435280 (= (inv!20946 (right!13581 (c!243104 input!1102))) e!949071)))

(declare-fun b!1484103 () Bool)

(assert (=> b!1484103 (= e!949071 (inv!20954 (right!13581 (c!243104 input!1102))))))

(declare-fun b!1484104 () Bool)

(declare-fun e!949072 () Bool)

(assert (=> b!1484104 (= e!949071 e!949072)))

(declare-fun res!670379 () Bool)

(assert (=> b!1484104 (= res!670379 (not ((_ is Leaf!7962) (right!13581 (c!243104 input!1102)))))))

(assert (=> b!1484104 (=> res!670379 e!949072)))

(declare-fun b!1484105 () Bool)

(assert (=> b!1484105 (= e!949072 (inv!20955 (right!13581 (c!243104 input!1102))))))

(assert (= (and d!435280 c!243238) b!1484103))

(assert (= (and d!435280 (not c!243238)) b!1484104))

(assert (= (and b!1484104 (not res!670379)) b!1484105))

(declare-fun m!1730730 () Bool)

(assert (=> b!1484103 m!1730730))

(declare-fun m!1730732 () Bool)

(assert (=> b!1484105 m!1730732))

(assert (=> b!1483503 d!435280))

(declare-fun d!435282 () Bool)

(declare-fun e!949073 () Bool)

(assert (=> d!435282 e!949073))

(declare-fun res!670380 () Bool)

(assert (=> d!435282 (=> res!670380 e!949073)))

(declare-fun lt!515492 () Bool)

(assert (=> d!435282 (= res!670380 (not lt!515492))))

(assert (=> d!435282 (= lt!515492 (= lt!515348 (drop!749 (++!4242 lt!515350 lt!515348) (- (size!12742 (++!4242 lt!515350 lt!515348)) (size!12742 lt!515348)))))))

(assert (=> d!435282 (= (isSuffix!274 lt!515348 (++!4242 lt!515350 lt!515348)) lt!515492)))

(declare-fun b!1484106 () Bool)

(assert (=> b!1484106 (= e!949073 (>= (size!12742 (++!4242 lt!515350 lt!515348)) (size!12742 lt!515348)))))

(assert (= (and d!435282 (not res!670380)) b!1484106))

(assert (=> d!435282 m!1729859))

(declare-fun m!1730734 () Bool)

(assert (=> d!435282 m!1730734))

(assert (=> d!435282 m!1729921))

(assert (=> d!435282 m!1729859))

(declare-fun m!1730736 () Bool)

(assert (=> d!435282 m!1730736))

(assert (=> b!1484106 m!1729859))

(assert (=> b!1484106 m!1730734))

(assert (=> b!1484106 m!1729921))

(assert (=> d!435042 d!435282))

(assert (=> d!435042 d!435008))

(declare-fun d!435284 () Bool)

(assert (=> d!435284 (isSuffix!274 lt!515348 (++!4242 lt!515350 lt!515348))))

(assert (=> d!435284 true))

(declare-fun _$47!245 () Unit!25608)

(assert (=> d!435284 (= (choose!9081 lt!515350 lt!515348) _$47!245)))

(declare-fun bs!346324 () Bool)

(assert (= bs!346324 d!435284))

(assert (=> bs!346324 m!1729859))

(assert (=> bs!346324 m!1729859))

(assert (=> bs!346324 m!1730027))

(assert (=> d!435042 d!435284))

(declare-fun b!1484107 () Bool)

(declare-fun res!670385 () Bool)

(declare-fun e!949074 () Bool)

(assert (=> b!1484107 (=> (not res!670385) (not e!949074))))

(assert (=> b!1484107 (= res!670385 (isBalanced!1587 (right!13581 (c!243104 treated!70))))))

(declare-fun b!1484108 () Bool)

(declare-fun e!949075 () Bool)

(assert (=> b!1484108 (= e!949075 e!949074)))

(declare-fun res!670382 () Bool)

(assert (=> b!1484108 (=> (not res!670382) (not e!949074))))

(assert (=> b!1484108 (= res!670382 (<= (- 1) (- (height!790 (left!13251 (c!243104 treated!70))) (height!790 (right!13581 (c!243104 treated!70))))))))

(declare-fun b!1484109 () Bool)

(declare-fun res!670384 () Bool)

(assert (=> b!1484109 (=> (not res!670384) (not e!949074))))

(assert (=> b!1484109 (= res!670384 (isBalanced!1587 (left!13251 (c!243104 treated!70))))))

(declare-fun b!1484110 () Bool)

(declare-fun res!670381 () Bool)

(assert (=> b!1484110 (=> (not res!670381) (not e!949074))))

(assert (=> b!1484110 (= res!670381 (not (isEmpty!9837 (left!13251 (c!243104 treated!70)))))))

(declare-fun b!1484112 () Bool)

(declare-fun res!670386 () Bool)

(assert (=> b!1484112 (=> (not res!670386) (not e!949074))))

(assert (=> b!1484112 (= res!670386 (<= (- (height!790 (left!13251 (c!243104 treated!70))) (height!790 (right!13581 (c!243104 treated!70)))) 1))))

(declare-fun b!1484111 () Bool)

(assert (=> b!1484111 (= e!949074 (not (isEmpty!9837 (right!13581 (c!243104 treated!70)))))))

(declare-fun d!435286 () Bool)

(declare-fun res!670383 () Bool)

(assert (=> d!435286 (=> res!670383 e!949075)))

(assert (=> d!435286 (= res!670383 (not ((_ is Node!5358) (c!243104 treated!70))))))

(assert (=> d!435286 (= (isBalanced!1587 (c!243104 treated!70)) e!949075)))

(assert (= (and d!435286 (not res!670383)) b!1484108))

(assert (= (and b!1484108 res!670382) b!1484112))

(assert (= (and b!1484112 res!670386) b!1484109))

(assert (= (and b!1484109 res!670384) b!1484107))

(assert (= (and b!1484107 res!670385) b!1484110))

(assert (= (and b!1484110 res!670381) b!1484111))

(declare-fun m!1730738 () Bool)

(assert (=> b!1484109 m!1730738))

(declare-fun m!1730740 () Bool)

(assert (=> b!1484111 m!1730740))

(declare-fun m!1730742 () Bool)

(assert (=> b!1484112 m!1730742))

(declare-fun m!1730744 () Bool)

(assert (=> b!1484112 m!1730744))

(assert (=> b!1484108 m!1730742))

(assert (=> b!1484108 m!1730744))

(declare-fun m!1730746 () Bool)

(assert (=> b!1484107 m!1730746))

(declare-fun m!1730748 () Bool)

(assert (=> b!1484110 m!1730748))

(assert (=> d!435048 d!435286))

(declare-fun d!435288 () Bool)

(declare-fun lt!515493 () Int)

(assert (=> d!435288 (= lt!515493 (size!12742 (list!6251 (_2!8087 lt!515365))))))

(assert (=> d!435288 (= lt!515493 (size!12745 (c!243104 (_2!8087 lt!515365))))))

(assert (=> d!435288 (= (size!12740 (_2!8087 lt!515365)) lt!515493)))

(declare-fun bs!346325 () Bool)

(assert (= bs!346325 d!435288))

(assert (=> bs!346325 m!1729895))

(assert (=> bs!346325 m!1729895))

(declare-fun m!1730750 () Bool)

(assert (=> bs!346325 m!1730750))

(declare-fun m!1730752 () Bool)

(assert (=> bs!346325 m!1730752))

(assert (=> b!1483401 d!435288))

(declare-fun d!435290 () Bool)

(declare-fun lt!515494 () Int)

(assert (=> d!435290 (= lt!515494 (size!12742 (list!6251 treated!70)))))

(assert (=> d!435290 (= lt!515494 (size!12745 (c!243104 treated!70)))))

(assert (=> d!435290 (= (size!12740 treated!70) lt!515494)))

(declare-fun bs!346326 () Bool)

(assert (= bs!346326 d!435290))

(assert (=> bs!346326 m!1729865))

(assert (=> bs!346326 m!1729865))

(assert (=> bs!346326 m!1730171))

(declare-fun m!1730754 () Bool)

(assert (=> bs!346326 m!1730754))

(assert (=> b!1483401 d!435290))

(declare-fun bs!346327 () Bool)

(declare-fun d!435292 () Bool)

(assert (= bs!346327 (and d!435292 d!435018)))

(declare-fun lambda!63882 () Int)

(assert (=> bs!346327 (= lambda!63882 lambda!63840)))

(declare-fun bs!346328 () Bool)

(assert (= bs!346328 (and d!435292 d!435228)))

(assert (=> bs!346328 (= lambda!63882 lambda!63877)))

(assert (=> d!435292 true))

(declare-fun lt!515495 () Bool)

(assert (=> d!435292 (= lt!515495 (forall!3819 (t!137720 rules!1640) lambda!63882))))

(declare-fun e!949076 () Bool)

(assert (=> d!435292 (= lt!515495 e!949076)))

(declare-fun res!670388 () Bool)

(assert (=> d!435292 (=> res!670388 e!949076)))

(assert (=> d!435292 (= res!670388 (not ((_ is Cons!15735) (t!137720 rules!1640))))))

(assert (=> d!435292 (= (rulesValidInductive!845 thiss!13241 (t!137720 rules!1640)) lt!515495)))

(declare-fun b!1484113 () Bool)

(declare-fun e!949077 () Bool)

(assert (=> b!1484113 (= e!949076 e!949077)))

(declare-fun res!670387 () Bool)

(assert (=> b!1484113 (=> (not res!670387) (not e!949077))))

(assert (=> b!1484113 (= res!670387 (ruleValid!631 thiss!13241 (h!21136 (t!137720 rules!1640))))))

(declare-fun b!1484114 () Bool)

(assert (=> b!1484114 (= e!949077 (rulesValidInductive!845 thiss!13241 (t!137720 (t!137720 rules!1640))))))

(assert (= (and d!435292 (not res!670388)) b!1484113))

(assert (= (and b!1484113 res!670387) b!1484114))

(declare-fun m!1730756 () Bool)

(assert (=> d!435292 m!1730756))

(declare-fun m!1730758 () Bool)

(assert (=> b!1484113 m!1730758))

(declare-fun m!1730760 () Bool)

(assert (=> b!1484114 m!1730760))

(assert (=> b!1483432 d!435292))

(declare-fun bs!346329 () Bool)

(declare-fun d!435294 () Bool)

(assert (= bs!346329 (and d!435294 d!435158)))

(declare-fun lambda!63883 () Int)

(assert (=> bs!346329 (= lambda!63883 lambda!63855)))

(declare-fun bs!346330 () Bool)

(assert (= bs!346330 (and d!435294 d!435216)))

(assert (=> bs!346330 (= lambda!63883 lambda!63873)))

(declare-fun bs!346331 () Bool)

(assert (= bs!346331 (and d!435294 d!435120)))

(assert (=> bs!346331 (= lambda!63883 lambda!63845)))

(declare-fun bs!346332 () Bool)

(assert (= bs!346332 (and d!435294 d!435166)))

(assert (=> bs!346332 (= lambda!63883 lambda!63859)))

(declare-fun bs!346333 () Bool)

(assert (= bs!346333 (and d!435294 d!435178)))

(assert (=> bs!346333 (= lambda!63883 lambda!63863)))

(declare-fun bs!346334 () Bool)

(assert (= bs!346334 (and d!435294 d!435214)))

(assert (=> bs!346334 (= lambda!63883 lambda!63872)))

(declare-fun bs!346335 () Bool)

(assert (= bs!346335 (and d!435294 d!435130)))

(assert (=> bs!346335 (= lambda!63883 lambda!63850)))

(declare-fun bs!346336 () Bool)

(assert (= bs!346336 (and d!435294 d!435266)))

(assert (=> bs!346336 (= lambda!63883 lambda!63880)))

(declare-fun bs!346337 () Bool)

(assert (= bs!346337 (and d!435294 d!435180)))

(assert (=> bs!346337 (= lambda!63883 lambda!63864)))

(declare-fun bs!346338 () Bool)

(assert (= bs!346338 (and d!435294 d!435236)))

(assert (=> bs!346338 (= lambda!63883 lambda!63879)))

(declare-fun bs!346339 () Bool)

(assert (= bs!346339 (and d!435294 d!435126)))

(assert (=> bs!346339 (= lambda!63883 lambda!63846)))

(declare-fun bs!346340 () Bool)

(assert (= bs!346340 (and d!435294 d!435200)))

(assert (=> bs!346340 (= lambda!63883 lambda!63870)))

(declare-fun bs!346341 () Bool)

(assert (= bs!346341 (and d!435294 d!435076)))

(assert (=> bs!346341 (= lambda!63883 lambda!63843)))

(declare-fun bs!346342 () Bool)

(assert (= bs!346342 (and d!435294 d!435268)))

(assert (=> bs!346342 (= lambda!63883 lambda!63881)))

(declare-fun bs!346343 () Bool)

(assert (= bs!346343 (and d!435294 d!435206)))

(assert (=> bs!346343 (= lambda!63883 lambda!63871)))

(declare-fun bs!346344 () Bool)

(assert (= bs!346344 (and d!435294 d!435194)))

(assert (=> bs!346344 (= lambda!63883 lambda!63869)))

(declare-fun bs!346345 () Bool)

(assert (= bs!346345 (and d!435294 d!435142)))

(assert (=> bs!346345 (= lambda!63883 lambda!63854)))

(declare-fun bs!346346 () Bool)

(assert (= bs!346346 (and d!435294 d!435086)))

(assert (=> bs!346346 (= lambda!63883 lambda!63844)))

(declare-fun bs!346347 () Bool)

(assert (= bs!346347 (and d!435294 d!435234)))

(assert (=> bs!346347 (= lambda!63883 lambda!63878)))

(declare-fun bs!346348 () Bool)

(assert (= bs!346348 (and d!435294 d!435188)))

(assert (=> bs!346348 (= lambda!63883 lambda!63865)))

(declare-fun bs!346349 () Bool)

(assert (= bs!346349 (and d!435294 d!435222)))

(assert (=> bs!346349 (= lambda!63883 lambda!63874)))

(assert (=> d!435294 (= (inv!20959 setElem!8219) (forall!3820 (exprs!1135 setElem!8219) lambda!63883))))

(declare-fun bs!346350 () Bool)

(assert (= bs!346350 d!435294))

(declare-fun m!1730762 () Bool)

(assert (=> bs!346350 m!1730762))

(assert (=> setNonEmpty!8219 d!435294))

(declare-fun d!435296 () Bool)

(declare-fun res!670389 () Bool)

(declare-fun e!949078 () Bool)

(assert (=> d!435296 (=> (not res!670389) (not e!949078))))

(assert (=> d!435296 (= res!670389 (= (csize!10946 (c!243104 treated!70)) (+ (size!12745 (left!13251 (c!243104 treated!70))) (size!12745 (right!13581 (c!243104 treated!70))))))))

(assert (=> d!435296 (= (inv!20954 (c!243104 treated!70)) e!949078)))

(declare-fun b!1484115 () Bool)

(declare-fun res!670390 () Bool)

(assert (=> b!1484115 (=> (not res!670390) (not e!949078))))

(assert (=> b!1484115 (= res!670390 (and (not (= (left!13251 (c!243104 treated!70)) Empty!5358)) (not (= (right!13581 (c!243104 treated!70)) Empty!5358))))))

(declare-fun b!1484116 () Bool)

(declare-fun res!670391 () Bool)

(assert (=> b!1484116 (=> (not res!670391) (not e!949078))))

(assert (=> b!1484116 (= res!670391 (= (cheight!5569 (c!243104 treated!70)) (+ (max!0 (height!790 (left!13251 (c!243104 treated!70))) (height!790 (right!13581 (c!243104 treated!70)))) 1)))))

(declare-fun b!1484117 () Bool)

(assert (=> b!1484117 (= e!949078 (<= 0 (cheight!5569 (c!243104 treated!70))))))

(assert (= (and d!435296 res!670389) b!1484115))

(assert (= (and b!1484115 res!670390) b!1484116))

(assert (= (and b!1484116 res!670391) b!1484117))

(declare-fun m!1730764 () Bool)

(assert (=> d!435296 m!1730764))

(declare-fun m!1730766 () Bool)

(assert (=> d!435296 m!1730766))

(assert (=> b!1484116 m!1730742))

(assert (=> b!1484116 m!1730744))

(assert (=> b!1484116 m!1730742))

(assert (=> b!1484116 m!1730744))

(declare-fun m!1730768 () Bool)

(assert (=> b!1484116 m!1730768))

(assert (=> b!1483480 d!435296))

(declare-fun b!1484118 () Bool)

(declare-fun res!670396 () Bool)

(declare-fun e!949079 () Bool)

(assert (=> b!1484118 (=> (not res!670396) (not e!949079))))

(assert (=> b!1484118 (= res!670396 (isBalanced!1587 (right!13581 (c!243104 input!1102))))))

(declare-fun b!1484119 () Bool)

(declare-fun e!949080 () Bool)

(assert (=> b!1484119 (= e!949080 e!949079)))

(declare-fun res!670393 () Bool)

(assert (=> b!1484119 (=> (not res!670393) (not e!949079))))

(assert (=> b!1484119 (= res!670393 (<= (- 1) (- (height!790 (left!13251 (c!243104 input!1102))) (height!790 (right!13581 (c!243104 input!1102))))))))

(declare-fun b!1484120 () Bool)

(declare-fun res!670395 () Bool)

(assert (=> b!1484120 (=> (not res!670395) (not e!949079))))

(assert (=> b!1484120 (= res!670395 (isBalanced!1587 (left!13251 (c!243104 input!1102))))))

(declare-fun b!1484121 () Bool)

(declare-fun res!670392 () Bool)

(assert (=> b!1484121 (=> (not res!670392) (not e!949079))))

(assert (=> b!1484121 (= res!670392 (not (isEmpty!9837 (left!13251 (c!243104 input!1102)))))))

(declare-fun b!1484123 () Bool)

(declare-fun res!670397 () Bool)

(assert (=> b!1484123 (=> (not res!670397) (not e!949079))))

(assert (=> b!1484123 (= res!670397 (<= (- (height!790 (left!13251 (c!243104 input!1102))) (height!790 (right!13581 (c!243104 input!1102)))) 1))))

(declare-fun b!1484122 () Bool)

(assert (=> b!1484122 (= e!949079 (not (isEmpty!9837 (right!13581 (c!243104 input!1102)))))))

(declare-fun d!435298 () Bool)

(declare-fun res!670394 () Bool)

(assert (=> d!435298 (=> res!670394 e!949080)))

(assert (=> d!435298 (= res!670394 (not ((_ is Node!5358) (c!243104 input!1102))))))

(assert (=> d!435298 (= (isBalanced!1587 (c!243104 input!1102)) e!949080)))

(assert (= (and d!435298 (not res!670394)) b!1484119))

(assert (= (and b!1484119 res!670393) b!1484123))

(assert (= (and b!1484123 res!670397) b!1484120))

(assert (= (and b!1484120 res!670395) b!1484118))

(assert (= (and b!1484118 res!670396) b!1484121))

(assert (= (and b!1484121 res!670392) b!1484122))

(declare-fun m!1730770 () Bool)

(assert (=> b!1484120 m!1730770))

(declare-fun m!1730772 () Bool)

(assert (=> b!1484122 m!1730772))

(assert (=> b!1484123 m!1730634))

(assert (=> b!1484123 m!1730636))

(assert (=> b!1484119 m!1730634))

(assert (=> b!1484119 m!1730636))

(declare-fun m!1730774 () Bool)

(assert (=> b!1484118 m!1730774))

(declare-fun m!1730776 () Bool)

(assert (=> b!1484121 m!1730776))

(assert (=> d!435050 d!435298))

(assert (=> b!1483397 d!435220))

(assert (=> b!1483397 d!435014))

(assert (=> b!1483469 d!435110))

(assert (=> b!1483469 d!435112))

(declare-fun d!435300 () Bool)

(assert (=> d!435300 (= (inv!20942 (tag!3067 (h!21136 (t!137720 rules!1640)))) (= (mod (str.len (value!89543 (tag!3067 (h!21136 (t!137720 rules!1640))))) 2) 0))))

(assert (=> b!1483558 d!435300))

(declare-fun d!435302 () Bool)

(declare-fun res!670398 () Bool)

(declare-fun e!949081 () Bool)

(assert (=> d!435302 (=> (not res!670398) (not e!949081))))

(assert (=> d!435302 (= res!670398 (semiInverseModEq!1060 (toChars!4001 (transformation!2803 (h!21136 (t!137720 rules!1640)))) (toValue!4142 (transformation!2803 (h!21136 (t!137720 rules!1640))))))))

(assert (=> d!435302 (= (inv!20953 (transformation!2803 (h!21136 (t!137720 rules!1640)))) e!949081)))

(declare-fun b!1484124 () Bool)

(assert (=> b!1484124 (= e!949081 (equivClasses!1019 (toChars!4001 (transformation!2803 (h!21136 (t!137720 rules!1640)))) (toValue!4142 (transformation!2803 (h!21136 (t!137720 rules!1640))))))))

(assert (= (and d!435302 res!670398) b!1484124))

(declare-fun m!1730778 () Bool)

(assert (=> d!435302 m!1730778))

(declare-fun m!1730780 () Bool)

(assert (=> b!1484124 m!1730780))

(assert (=> b!1483558 d!435302))

(declare-fun d!435304 () Bool)

(declare-fun e!949082 () Bool)

(assert (=> d!435304 e!949082))

(declare-fun res!670399 () Bool)

(assert (=> d!435304 (=> (not res!670399) (not e!949082))))

(assert (=> d!435304 (= res!670399 (isBalanced!1588 (prepend!435 (c!243105 (_1!8087 lt!515381)) (_1!8090 (v!22575 lt!515379)))))))

(declare-fun lt!515496 () BalanceConc!10660)

(assert (=> d!435304 (= lt!515496 (BalanceConc!10661 (prepend!435 (c!243105 (_1!8087 lt!515381)) (_1!8090 (v!22575 lt!515379)))))))

(assert (=> d!435304 (= (prepend!434 (_1!8087 lt!515381) (_1!8090 (v!22575 lt!515379))) lt!515496)))

(declare-fun b!1484125 () Bool)

(assert (=> b!1484125 (= e!949082 (= (list!6252 lt!515496) (Cons!15733 (_1!8090 (v!22575 lt!515379)) (list!6252 (_1!8087 lt!515381)))))))

(assert (= (and d!435304 res!670399) b!1484125))

(declare-fun m!1730782 () Bool)

(assert (=> d!435304 m!1730782))

(assert (=> d!435304 m!1730782))

(declare-fun m!1730784 () Bool)

(assert (=> d!435304 m!1730784))

(declare-fun m!1730786 () Bool)

(assert (=> b!1484125 m!1730786))

(declare-fun m!1730788 () Bool)

(assert (=> b!1484125 m!1730788))

(assert (=> b!1483457 d!435304))

(declare-fun b!1484126 () Bool)

(declare-fun e!949086 () tuple2!14388)

(declare-fun lt!515499 () tuple2!14388)

(declare-fun lt!515497 () Option!2888)

(assert (=> b!1484126 (= e!949086 (tuple2!14389 (prepend!434 (_1!8087 lt!515499) (_1!8090 (v!22575 lt!515497))) (_2!8087 lt!515499)))))

(assert (=> b!1484126 (= lt!515499 (lexRec!297 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515497))))))

(declare-fun b!1484127 () Bool)

(declare-fun e!949084 () Bool)

(declare-fun lt!515498 () tuple2!14388)

(assert (=> b!1484127 (= e!949084 (= (list!6251 (_2!8087 lt!515498)) (list!6251 (_2!8090 (v!22575 lt!515379)))))))

(declare-fun b!1484128 () Bool)

(declare-fun res!670400 () Bool)

(declare-fun e!949083 () Bool)

(assert (=> b!1484128 (=> (not res!670400) (not e!949083))))

(assert (=> b!1484128 (= res!670400 (= (list!6252 (_1!8087 lt!515498)) (_1!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 (_2!8090 (v!22575 lt!515379)))))))))

(declare-fun b!1484129 () Bool)

(declare-fun e!949085 () Bool)

(assert (=> b!1484129 (= e!949085 (not (isEmpty!9835 (_1!8087 lt!515498))))))

(declare-fun b!1484130 () Bool)

(assert (=> b!1484130 (= e!949083 (= (list!6251 (_2!8087 lt!515498)) (_2!8091 (lexList!725 thiss!13241 rules!1640 (list!6251 (_2!8090 (v!22575 lt!515379)))))))))

(declare-fun b!1484131 () Bool)

(assert (=> b!1484131 (= e!949084 e!949085)))

(declare-fun res!670401 () Bool)

(assert (=> b!1484131 (= res!670401 (< (size!12740 (_2!8087 lt!515498)) (size!12740 (_2!8090 (v!22575 lt!515379)))))))

(assert (=> b!1484131 (=> (not res!670401) (not e!949085))))

(declare-fun b!1484132 () Bool)

(assert (=> b!1484132 (= e!949086 (tuple2!14389 (BalanceConc!10661 Empty!5359) (_2!8090 (v!22575 lt!515379))))))

(declare-fun d!435306 () Bool)

(assert (=> d!435306 e!949083))

(declare-fun res!670402 () Bool)

(assert (=> d!435306 (=> (not res!670402) (not e!949083))))

(assert (=> d!435306 (= res!670402 e!949084)))

(declare-fun c!243239 () Bool)

(assert (=> d!435306 (= c!243239 (> (size!12741 (_1!8087 lt!515498)) 0))))

(assert (=> d!435306 (= lt!515498 e!949086)))

(declare-fun c!243240 () Bool)

(assert (=> d!435306 (= c!243240 ((_ is Some!2887) lt!515497))))

(assert (=> d!435306 (= lt!515497 (maxPrefixZipperSequence!567 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515379))))))

(assert (=> d!435306 (= (lexRec!297 thiss!13241 rules!1640 (_2!8090 (v!22575 lt!515379))) lt!515498)))

(assert (= (and d!435306 c!243240) b!1484126))

(assert (= (and d!435306 (not c!243240)) b!1484132))

(assert (= (and d!435306 c!243239) b!1484131))

(assert (= (and d!435306 (not c!243239)) b!1484127))

(assert (= (and b!1484131 res!670401) b!1484129))

(assert (= (and d!435306 res!670402) b!1484128))

(assert (= (and b!1484128 res!670400) b!1484130))

(declare-fun m!1730790 () Bool)

(assert (=> d!435306 m!1730790))

(declare-fun m!1730792 () Bool)

(assert (=> d!435306 m!1730792))

(declare-fun m!1730794 () Bool)

(assert (=> b!1484129 m!1730794))

(declare-fun m!1730796 () Bool)

(assert (=> b!1484131 m!1730796))

(declare-fun m!1730798 () Bool)

(assert (=> b!1484131 m!1730798))

(declare-fun m!1730800 () Bool)

(assert (=> b!1484126 m!1730800))

(declare-fun m!1730802 () Bool)

(assert (=> b!1484126 m!1730802))

(declare-fun m!1730804 () Bool)

(assert (=> b!1484127 m!1730804))

(declare-fun m!1730806 () Bool)

(assert (=> b!1484127 m!1730806))

(assert (=> b!1484130 m!1730804))

(assert (=> b!1484130 m!1730806))

(assert (=> b!1484130 m!1730806))

(declare-fun m!1730808 () Bool)

(assert (=> b!1484130 m!1730808))

(declare-fun m!1730810 () Bool)

(assert (=> b!1484128 m!1730810))

(assert (=> b!1484128 m!1730806))

(assert (=> b!1484128 m!1730806))

(assert (=> b!1484128 m!1730808))

(assert (=> b!1483457 d!435306))

(declare-fun bs!346351 () Bool)

(declare-fun d!435308 () Bool)

(assert (= bs!346351 (and d!435308 d!435158)))

(declare-fun lambda!63884 () Int)

(assert (=> bs!346351 (= lambda!63884 lambda!63855)))

(declare-fun bs!346352 () Bool)

(assert (= bs!346352 (and d!435308 d!435216)))

(assert (=> bs!346352 (= lambda!63884 lambda!63873)))

(declare-fun bs!346353 () Bool)

(assert (= bs!346353 (and d!435308 d!435120)))

(assert (=> bs!346353 (= lambda!63884 lambda!63845)))

(declare-fun bs!346354 () Bool)

(assert (= bs!346354 (and d!435308 d!435178)))

(assert (=> bs!346354 (= lambda!63884 lambda!63863)))

(declare-fun bs!346355 () Bool)

(assert (= bs!346355 (and d!435308 d!435214)))

(assert (=> bs!346355 (= lambda!63884 lambda!63872)))

(declare-fun bs!346356 () Bool)

(assert (= bs!346356 (and d!435308 d!435130)))

(assert (=> bs!346356 (= lambda!63884 lambda!63850)))

(declare-fun bs!346357 () Bool)

(assert (= bs!346357 (and d!435308 d!435266)))

(assert (=> bs!346357 (= lambda!63884 lambda!63880)))

(declare-fun bs!346358 () Bool)

(assert (= bs!346358 (and d!435308 d!435180)))

(assert (=> bs!346358 (= lambda!63884 lambda!63864)))

(declare-fun bs!346359 () Bool)

(assert (= bs!346359 (and d!435308 d!435236)))

(assert (=> bs!346359 (= lambda!63884 lambda!63879)))

(declare-fun bs!346360 () Bool)

(assert (= bs!346360 (and d!435308 d!435126)))

(assert (=> bs!346360 (= lambda!63884 lambda!63846)))

(declare-fun bs!346361 () Bool)

(assert (= bs!346361 (and d!435308 d!435200)))

(assert (=> bs!346361 (= lambda!63884 lambda!63870)))

(declare-fun bs!346362 () Bool)

(assert (= bs!346362 (and d!435308 d!435076)))

(assert (=> bs!346362 (= lambda!63884 lambda!63843)))

(declare-fun bs!346363 () Bool)

(assert (= bs!346363 (and d!435308 d!435268)))

(assert (=> bs!346363 (= lambda!63884 lambda!63881)))

(declare-fun bs!346364 () Bool)

(assert (= bs!346364 (and d!435308 d!435206)))

(assert (=> bs!346364 (= lambda!63884 lambda!63871)))

(declare-fun bs!346365 () Bool)

(assert (= bs!346365 (and d!435308 d!435194)))

(assert (=> bs!346365 (= lambda!63884 lambda!63869)))

(declare-fun bs!346366 () Bool)

(assert (= bs!346366 (and d!435308 d!435142)))

(assert (=> bs!346366 (= lambda!63884 lambda!63854)))

(declare-fun bs!346367 () Bool)

(assert (= bs!346367 (and d!435308 d!435294)))

(assert (=> bs!346367 (= lambda!63884 lambda!63883)))

(declare-fun bs!346368 () Bool)

(assert (= bs!346368 (and d!435308 d!435166)))

(assert (=> bs!346368 (= lambda!63884 lambda!63859)))

(declare-fun bs!346369 () Bool)

(assert (= bs!346369 (and d!435308 d!435086)))

(assert (=> bs!346369 (= lambda!63884 lambda!63844)))

(declare-fun bs!346370 () Bool)

(assert (= bs!346370 (and d!435308 d!435234)))

(assert (=> bs!346370 (= lambda!63884 lambda!63878)))

(declare-fun bs!346371 () Bool)

(assert (= bs!346371 (and d!435308 d!435188)))

(assert (=> bs!346371 (= lambda!63884 lambda!63865)))

(declare-fun bs!346372 () Bool)

(assert (= bs!346372 (and d!435308 d!435222)))

(assert (=> bs!346372 (= lambda!63884 lambda!63874)))

(assert (=> d!435308 (= (inv!20959 setElem!8230) (forall!3820 (exprs!1135 setElem!8230) lambda!63884))))

(declare-fun bs!346373 () Bool)

(assert (= bs!346373 d!435308))

(declare-fun m!1730812 () Bool)

(assert (=> bs!346373 m!1730812))

(assert (=> setNonEmpty!8230 d!435308))

(assert (=> b!1483439 d!435198))

(assert (=> b!1483439 d!435010))

(assert (=> b!1483455 d!435250))

(assert (=> b!1483455 d!435116))

(assert (=> b!1483455 d!435252))

(assert (=> b!1483455 d!435254))

(assert (=> b!1483455 d!435256))

(declare-fun bs!346374 () Bool)

(declare-fun d!435310 () Bool)

(assert (= bs!346374 (and d!435310 d!435158)))

(declare-fun lambda!63885 () Int)

(assert (=> bs!346374 (= lambda!63885 lambda!63855)))

(declare-fun bs!346375 () Bool)

(assert (= bs!346375 (and d!435310 d!435216)))

(assert (=> bs!346375 (= lambda!63885 lambda!63873)))

(declare-fun bs!346376 () Bool)

(assert (= bs!346376 (and d!435310 d!435120)))

(assert (=> bs!346376 (= lambda!63885 lambda!63845)))

(declare-fun bs!346377 () Bool)

(assert (= bs!346377 (and d!435310 d!435178)))

(assert (=> bs!346377 (= lambda!63885 lambda!63863)))

(declare-fun bs!346378 () Bool)

(assert (= bs!346378 (and d!435310 d!435214)))

(assert (=> bs!346378 (= lambda!63885 lambda!63872)))

(declare-fun bs!346379 () Bool)

(assert (= bs!346379 (and d!435310 d!435130)))

(assert (=> bs!346379 (= lambda!63885 lambda!63850)))

(declare-fun bs!346380 () Bool)

(assert (= bs!346380 (and d!435310 d!435266)))

(assert (=> bs!346380 (= lambda!63885 lambda!63880)))

(declare-fun bs!346381 () Bool)

(assert (= bs!346381 (and d!435310 d!435180)))

(assert (=> bs!346381 (= lambda!63885 lambda!63864)))

(declare-fun bs!346382 () Bool)

(assert (= bs!346382 (and d!435310 d!435236)))

(assert (=> bs!346382 (= lambda!63885 lambda!63879)))

(declare-fun bs!346383 () Bool)

(assert (= bs!346383 (and d!435310 d!435126)))

(assert (=> bs!346383 (= lambda!63885 lambda!63846)))

(declare-fun bs!346384 () Bool)

(assert (= bs!346384 (and d!435310 d!435200)))

(assert (=> bs!346384 (= lambda!63885 lambda!63870)))

(declare-fun bs!346385 () Bool)

(assert (= bs!346385 (and d!435310 d!435308)))

(assert (=> bs!346385 (= lambda!63885 lambda!63884)))

(declare-fun bs!346386 () Bool)

(assert (= bs!346386 (and d!435310 d!435076)))

(assert (=> bs!346386 (= lambda!63885 lambda!63843)))

(declare-fun bs!346387 () Bool)

(assert (= bs!346387 (and d!435310 d!435268)))

(assert (=> bs!346387 (= lambda!63885 lambda!63881)))

(declare-fun bs!346388 () Bool)

(assert (= bs!346388 (and d!435310 d!435206)))

(assert (=> bs!346388 (= lambda!63885 lambda!63871)))

(declare-fun bs!346389 () Bool)

(assert (= bs!346389 (and d!435310 d!435194)))

(assert (=> bs!346389 (= lambda!63885 lambda!63869)))

(declare-fun bs!346390 () Bool)

(assert (= bs!346390 (and d!435310 d!435142)))

(assert (=> bs!346390 (= lambda!63885 lambda!63854)))

(declare-fun bs!346391 () Bool)

(assert (= bs!346391 (and d!435310 d!435294)))

(assert (=> bs!346391 (= lambda!63885 lambda!63883)))

(declare-fun bs!346392 () Bool)

(assert (= bs!346392 (and d!435310 d!435166)))

(assert (=> bs!346392 (= lambda!63885 lambda!63859)))

(declare-fun bs!346393 () Bool)

(assert (= bs!346393 (and d!435310 d!435086)))

(assert (=> bs!346393 (= lambda!63885 lambda!63844)))

(declare-fun bs!346394 () Bool)

(assert (= bs!346394 (and d!435310 d!435234)))

(assert (=> bs!346394 (= lambda!63885 lambda!63878)))

(declare-fun bs!346395 () Bool)

(assert (= bs!346395 (and d!435310 d!435188)))

(assert (=> bs!346395 (= lambda!63885 lambda!63865)))

(declare-fun bs!346396 () Bool)

(assert (= bs!346396 (and d!435310 d!435222)))

(assert (=> bs!346396 (= lambda!63885 lambda!63874)))

(assert (=> d!435310 (= (inv!20959 (_2!8088 (_1!8089 (h!21135 mapDefault!6503)))) (forall!3820 (exprs!1135 (_2!8088 (_1!8089 (h!21135 mapDefault!6503)))) lambda!63885))))

(declare-fun bs!346397 () Bool)

(assert (= bs!346397 d!435310))

(declare-fun m!1730814 () Bool)

(assert (=> bs!346397 m!1730814))

(assert (=> b!1483522 d!435310))

(declare-fun bs!346398 () Bool)

(declare-fun d!435312 () Bool)

(assert (= bs!346398 (and d!435312 d!435158)))

(declare-fun lambda!63886 () Int)

(assert (=> bs!346398 (= lambda!63886 lambda!63855)))

(declare-fun bs!346399 () Bool)

(assert (= bs!346399 (and d!435312 d!435216)))

(assert (=> bs!346399 (= lambda!63886 lambda!63873)))

(declare-fun bs!346400 () Bool)

(assert (= bs!346400 (and d!435312 d!435120)))

(assert (=> bs!346400 (= lambda!63886 lambda!63845)))

(declare-fun bs!346401 () Bool)

(assert (= bs!346401 (and d!435312 d!435178)))

(assert (=> bs!346401 (= lambda!63886 lambda!63863)))

(declare-fun bs!346402 () Bool)

(assert (= bs!346402 (and d!435312 d!435214)))

(assert (=> bs!346402 (= lambda!63886 lambda!63872)))

(declare-fun bs!346403 () Bool)

(assert (= bs!346403 (and d!435312 d!435130)))

(assert (=> bs!346403 (= lambda!63886 lambda!63850)))

(declare-fun bs!346404 () Bool)

(assert (= bs!346404 (and d!435312 d!435266)))

(assert (=> bs!346404 (= lambda!63886 lambda!63880)))

(declare-fun bs!346405 () Bool)

(assert (= bs!346405 (and d!435312 d!435180)))

(assert (=> bs!346405 (= lambda!63886 lambda!63864)))

(declare-fun bs!346406 () Bool)

(assert (= bs!346406 (and d!435312 d!435236)))

(assert (=> bs!346406 (= lambda!63886 lambda!63879)))

(declare-fun bs!346407 () Bool)

(assert (= bs!346407 (and d!435312 d!435126)))

(assert (=> bs!346407 (= lambda!63886 lambda!63846)))

(declare-fun bs!346408 () Bool)

(assert (= bs!346408 (and d!435312 d!435200)))

(assert (=> bs!346408 (= lambda!63886 lambda!63870)))

(declare-fun bs!346409 () Bool)

(assert (= bs!346409 (and d!435312 d!435310)))

(assert (=> bs!346409 (= lambda!63886 lambda!63885)))

(declare-fun bs!346410 () Bool)

(assert (= bs!346410 (and d!435312 d!435308)))

(assert (=> bs!346410 (= lambda!63886 lambda!63884)))

(declare-fun bs!346411 () Bool)

(assert (= bs!346411 (and d!435312 d!435076)))

(assert (=> bs!346411 (= lambda!63886 lambda!63843)))

(declare-fun bs!346412 () Bool)

(assert (= bs!346412 (and d!435312 d!435268)))

(assert (=> bs!346412 (= lambda!63886 lambda!63881)))

(declare-fun bs!346413 () Bool)

(assert (= bs!346413 (and d!435312 d!435206)))

(assert (=> bs!346413 (= lambda!63886 lambda!63871)))

(declare-fun bs!346414 () Bool)

(assert (= bs!346414 (and d!435312 d!435194)))

(assert (=> bs!346414 (= lambda!63886 lambda!63869)))

(declare-fun bs!346415 () Bool)

(assert (= bs!346415 (and d!435312 d!435142)))

(assert (=> bs!346415 (= lambda!63886 lambda!63854)))

(declare-fun bs!346416 () Bool)

(assert (= bs!346416 (and d!435312 d!435294)))

(assert (=> bs!346416 (= lambda!63886 lambda!63883)))

(declare-fun bs!346417 () Bool)

(assert (= bs!346417 (and d!435312 d!435166)))

(assert (=> bs!346417 (= lambda!63886 lambda!63859)))

(declare-fun bs!346418 () Bool)

(assert (= bs!346418 (and d!435312 d!435086)))

(assert (=> bs!346418 (= lambda!63886 lambda!63844)))

(declare-fun bs!346419 () Bool)

(assert (= bs!346419 (and d!435312 d!435234)))

(assert (=> bs!346419 (= lambda!63886 lambda!63878)))

(declare-fun bs!346420 () Bool)

(assert (= bs!346420 (and d!435312 d!435188)))

(assert (=> bs!346420 (= lambda!63886 lambda!63865)))

(declare-fun bs!346421 () Bool)

(assert (= bs!346421 (and d!435312 d!435222)))

(assert (=> bs!346421 (= lambda!63886 lambda!63874)))

(assert (=> d!435312 (= (inv!20959 (_2!8088 (_1!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))))) (forall!3820 (exprs!1135 (_2!8088 (_1!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))))) lambda!63886))))

(declare-fun bs!346422 () Bool)

(assert (= bs!346422 d!435312))

(declare-fun m!1730816 () Bool)

(assert (=> bs!346422 m!1730816))

(assert (=> b!1483543 d!435312))

(assert (=> b!1483356 d!435074))

(declare-fun b!1484133 () Bool)

(declare-fun res!670407 () Bool)

(declare-fun e!949087 () Bool)

(assert (=> b!1484133 (=> (not res!670407) (not e!949087))))

(assert (=> b!1484133 (= res!670407 (isBalanced!1587 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(declare-fun b!1484134 () Bool)

(declare-fun e!949088 () Bool)

(assert (=> b!1484134 (= e!949088 e!949087)))

(declare-fun res!670404 () Bool)

(assert (=> b!1484134 (=> (not res!670404) (not e!949087))))

(assert (=> b!1484134 (= res!670404 (<= (- 1) (- (height!790 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) (height!790 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))))

(declare-fun b!1484135 () Bool)

(declare-fun res!670406 () Bool)

(assert (=> b!1484135 (=> (not res!670406) (not e!949087))))

(assert (=> b!1484135 (= res!670406 (isBalanced!1587 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(declare-fun b!1484136 () Bool)

(declare-fun res!670403 () Bool)

(assert (=> b!1484136 (=> (not res!670403) (not e!949087))))

(assert (=> b!1484136 (= res!670403 (not (isEmpty!9837 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))))))

(declare-fun b!1484138 () Bool)

(declare-fun res!670408 () Bool)

(assert (=> b!1484138 (=> (not res!670408) (not e!949087))))

(assert (=> b!1484138 (= res!670408 (<= (- (height!790 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) (height!790 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) 1))))

(declare-fun b!1484137 () Bool)

(assert (=> b!1484137 (= e!949087 (not (isEmpty!9837 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))))))

(declare-fun d!435314 () Bool)

(declare-fun res!670405 () Bool)

(assert (=> d!435314 (=> res!670405 e!949088)))

(assert (=> d!435314 (= res!670405 (not ((_ is Node!5358) (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(assert (=> d!435314 (= (isBalanced!1587 (c!243104 (totalInput!2230 cacheFurthestNullable!64))) e!949088)))

(assert (= (and d!435314 (not res!670405)) b!1484134))

(assert (= (and b!1484134 res!670404) b!1484138))

(assert (= (and b!1484138 res!670408) b!1484135))

(assert (= (and b!1484135 res!670406) b!1484133))

(assert (= (and b!1484133 res!670407) b!1484136))

(assert (= (and b!1484136 res!670403) b!1484137))

(declare-fun m!1730818 () Bool)

(assert (=> b!1484135 m!1730818))

(declare-fun m!1730820 () Bool)

(assert (=> b!1484137 m!1730820))

(assert (=> b!1484138 m!1730618))

(assert (=> b!1484138 m!1730620))

(assert (=> b!1484134 m!1730618))

(assert (=> b!1484134 m!1730620))

(declare-fun m!1730822 () Bool)

(assert (=> b!1484133 m!1730822))

(declare-fun m!1730824 () Bool)

(assert (=> b!1484136 m!1730824))

(assert (=> d!435016 d!435314))

(declare-fun d!435316 () Bool)

(assert (=> d!435316 (= (inv!20958 (xs!8113 (c!243104 totalInput!458))) (<= (size!12742 (innerList!5418 (xs!8113 (c!243104 totalInput!458)))) 2147483647))))

(declare-fun bs!346423 () Bool)

(assert (= bs!346423 d!435316))

(declare-fun m!1730826 () Bool)

(assert (=> bs!346423 m!1730826))

(assert (=> b!1483538 d!435316))

(declare-fun bs!346424 () Bool)

(declare-fun d!435318 () Bool)

(assert (= bs!346424 (and d!435318 d!435158)))

(declare-fun lambda!63887 () Int)

(assert (=> bs!346424 (= lambda!63887 lambda!63855)))

(declare-fun bs!346425 () Bool)

(assert (= bs!346425 (and d!435318 d!435216)))

(assert (=> bs!346425 (= lambda!63887 lambda!63873)))

(declare-fun bs!346426 () Bool)

(assert (= bs!346426 (and d!435318 d!435312)))

(assert (=> bs!346426 (= lambda!63887 lambda!63886)))

(declare-fun bs!346427 () Bool)

(assert (= bs!346427 (and d!435318 d!435120)))

(assert (=> bs!346427 (= lambda!63887 lambda!63845)))

(declare-fun bs!346428 () Bool)

(assert (= bs!346428 (and d!435318 d!435178)))

(assert (=> bs!346428 (= lambda!63887 lambda!63863)))

(declare-fun bs!346429 () Bool)

(assert (= bs!346429 (and d!435318 d!435214)))

(assert (=> bs!346429 (= lambda!63887 lambda!63872)))

(declare-fun bs!346430 () Bool)

(assert (= bs!346430 (and d!435318 d!435130)))

(assert (=> bs!346430 (= lambda!63887 lambda!63850)))

(declare-fun bs!346431 () Bool)

(assert (= bs!346431 (and d!435318 d!435266)))

(assert (=> bs!346431 (= lambda!63887 lambda!63880)))

(declare-fun bs!346432 () Bool)

(assert (= bs!346432 (and d!435318 d!435180)))

(assert (=> bs!346432 (= lambda!63887 lambda!63864)))

(declare-fun bs!346433 () Bool)

(assert (= bs!346433 (and d!435318 d!435236)))

(assert (=> bs!346433 (= lambda!63887 lambda!63879)))

(declare-fun bs!346434 () Bool)

(assert (= bs!346434 (and d!435318 d!435126)))

(assert (=> bs!346434 (= lambda!63887 lambda!63846)))

(declare-fun bs!346435 () Bool)

(assert (= bs!346435 (and d!435318 d!435200)))

(assert (=> bs!346435 (= lambda!63887 lambda!63870)))

(declare-fun bs!346436 () Bool)

(assert (= bs!346436 (and d!435318 d!435310)))

(assert (=> bs!346436 (= lambda!63887 lambda!63885)))

(declare-fun bs!346437 () Bool)

(assert (= bs!346437 (and d!435318 d!435308)))

(assert (=> bs!346437 (= lambda!63887 lambda!63884)))

(declare-fun bs!346438 () Bool)

(assert (= bs!346438 (and d!435318 d!435076)))

(assert (=> bs!346438 (= lambda!63887 lambda!63843)))

(declare-fun bs!346439 () Bool)

(assert (= bs!346439 (and d!435318 d!435268)))

(assert (=> bs!346439 (= lambda!63887 lambda!63881)))

(declare-fun bs!346440 () Bool)

(assert (= bs!346440 (and d!435318 d!435206)))

(assert (=> bs!346440 (= lambda!63887 lambda!63871)))

(declare-fun bs!346441 () Bool)

(assert (= bs!346441 (and d!435318 d!435194)))

(assert (=> bs!346441 (= lambda!63887 lambda!63869)))

(declare-fun bs!346442 () Bool)

(assert (= bs!346442 (and d!435318 d!435142)))

(assert (=> bs!346442 (= lambda!63887 lambda!63854)))

(declare-fun bs!346443 () Bool)

(assert (= bs!346443 (and d!435318 d!435294)))

(assert (=> bs!346443 (= lambda!63887 lambda!63883)))

(declare-fun bs!346444 () Bool)

(assert (= bs!346444 (and d!435318 d!435166)))

(assert (=> bs!346444 (= lambda!63887 lambda!63859)))

(declare-fun bs!346445 () Bool)

(assert (= bs!346445 (and d!435318 d!435086)))

(assert (=> bs!346445 (= lambda!63887 lambda!63844)))

(declare-fun bs!346446 () Bool)

(assert (= bs!346446 (and d!435318 d!435234)))

(assert (=> bs!346446 (= lambda!63887 lambda!63878)))

(declare-fun bs!346447 () Bool)

(assert (= bs!346447 (and d!435318 d!435188)))

(assert (=> bs!346447 (= lambda!63887 lambda!63865)))

(declare-fun bs!346448 () Bool)

(assert (= bs!346448 (and d!435318 d!435222)))

(assert (=> bs!346448 (= lambda!63887 lambda!63874)))

(assert (=> d!435318 (= (inv!20959 (_2!8088 (_1!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))))) (forall!3820 (exprs!1135 (_2!8088 (_1!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))))) lambda!63887))))

(declare-fun bs!346449 () Bool)

(assert (= bs!346449 d!435318))

(declare-fun m!1730828 () Bool)

(assert (=> bs!346449 m!1730828))

(assert (=> b!1483540 d!435318))

(declare-fun b!1484141 () Bool)

(declare-fun res!670409 () Bool)

(declare-fun e!949090 () Bool)

(assert (=> b!1484141 (=> (not res!670409) (not e!949090))))

(declare-fun lt!515500 () List!15798)

(assert (=> b!1484141 (= res!670409 (= (size!12742 lt!515500) (+ (size!12742 (t!137715 lt!515350)) (size!12742 lt!515348))))))

(declare-fun d!435320 () Bool)

(assert (=> d!435320 e!949090))

(declare-fun res!670410 () Bool)

(assert (=> d!435320 (=> (not res!670410) (not e!949090))))

(assert (=> d!435320 (= res!670410 (= (content!2284 lt!515500) ((_ map or) (content!2284 (t!137715 lt!515350)) (content!2284 lt!515348))))))

(declare-fun e!949089 () List!15798)

(assert (=> d!435320 (= lt!515500 e!949089)))

(declare-fun c!243241 () Bool)

(assert (=> d!435320 (= c!243241 ((_ is Nil!15730) (t!137715 lt!515350)))))

(assert (=> d!435320 (= (++!4242 (t!137715 lt!515350) lt!515348) lt!515500)))

(declare-fun b!1484142 () Bool)

(assert (=> b!1484142 (= e!949090 (or (not (= lt!515348 Nil!15730)) (= lt!515500 (t!137715 lt!515350))))))

(declare-fun b!1484140 () Bool)

(assert (=> b!1484140 (= e!949089 (Cons!15730 (h!21131 (t!137715 lt!515350)) (++!4242 (t!137715 (t!137715 lt!515350)) lt!515348)))))

(declare-fun b!1484139 () Bool)

(assert (=> b!1484139 (= e!949089 lt!515348)))

(assert (= (and d!435320 c!243241) b!1484139))

(assert (= (and d!435320 (not c!243241)) b!1484140))

(assert (= (and d!435320 res!670410) b!1484141))

(assert (= (and b!1484141 res!670409) b!1484142))

(declare-fun m!1730830 () Bool)

(assert (=> b!1484141 m!1730830))

(assert (=> b!1484141 m!1730368))

(assert (=> b!1484141 m!1729921))

(declare-fun m!1730832 () Bool)

(assert (=> d!435320 m!1730832))

(assert (=> d!435320 m!1730390))

(assert (=> d!435320 m!1729927))

(declare-fun m!1730834 () Bool)

(assert (=> b!1484140 m!1730834))

(assert (=> b!1483424 d!435320))

(assert (=> b!1483346 d!434990))

(declare-fun b!1484145 () Bool)

(declare-fun e!949092 () List!15798)

(assert (=> b!1484145 (= e!949092 (list!6255 (xs!8113 (c!243104 (_2!8087 lt!515352)))))))

(declare-fun b!1484144 () Bool)

(declare-fun e!949091 () List!15798)

(assert (=> b!1484144 (= e!949091 e!949092)))

(declare-fun c!243243 () Bool)

(assert (=> b!1484144 (= c!243243 ((_ is Leaf!7962) (c!243104 (_2!8087 lt!515352))))))

(declare-fun b!1484143 () Bool)

(assert (=> b!1484143 (= e!949091 Nil!15730)))

(declare-fun d!435322 () Bool)

(declare-fun c!243242 () Bool)

(assert (=> d!435322 (= c!243242 ((_ is Empty!5358) (c!243104 (_2!8087 lt!515352))))))

(assert (=> d!435322 (= (list!6254 (c!243104 (_2!8087 lt!515352))) e!949091)))

(declare-fun b!1484146 () Bool)

(assert (=> b!1484146 (= e!949092 (++!4242 (list!6254 (left!13251 (c!243104 (_2!8087 lt!515352)))) (list!6254 (right!13581 (c!243104 (_2!8087 lt!515352))))))))

(assert (= (and d!435322 c!243242) b!1484143))

(assert (= (and d!435322 (not c!243242)) b!1484144))

(assert (= (and b!1484144 c!243243) b!1484145))

(assert (= (and b!1484144 (not c!243243)) b!1484146))

(declare-fun m!1730836 () Bool)

(assert (=> b!1484145 m!1730836))

(declare-fun m!1730838 () Bool)

(assert (=> b!1484146 m!1730838))

(declare-fun m!1730840 () Bool)

(assert (=> b!1484146 m!1730840))

(assert (=> b!1484146 m!1730838))

(assert (=> b!1484146 m!1730840))

(declare-fun m!1730842 () Bool)

(assert (=> b!1484146 m!1730842))

(assert (=> d!435004 d!435322))

(declare-fun d!435324 () Bool)

(declare-fun c!243244 () Bool)

(assert (=> d!435324 (= c!243244 ((_ is Node!5358) (left!13251 (c!243104 treated!70))))))

(declare-fun e!949093 () Bool)

(assert (=> d!435324 (= (inv!20946 (left!13251 (c!243104 treated!70))) e!949093)))

(declare-fun b!1484147 () Bool)

(assert (=> b!1484147 (= e!949093 (inv!20954 (left!13251 (c!243104 treated!70))))))

(declare-fun b!1484148 () Bool)

(declare-fun e!949094 () Bool)

(assert (=> b!1484148 (= e!949093 e!949094)))

(declare-fun res!670411 () Bool)

(assert (=> b!1484148 (= res!670411 (not ((_ is Leaf!7962) (left!13251 (c!243104 treated!70)))))))

(assert (=> b!1484148 (=> res!670411 e!949094)))

(declare-fun b!1484149 () Bool)

(assert (=> b!1484149 (= e!949094 (inv!20955 (left!13251 (c!243104 treated!70))))))

(assert (= (and d!435324 c!243244) b!1484147))

(assert (= (and d!435324 (not c!243244)) b!1484148))

(assert (= (and b!1484148 (not res!670411)) b!1484149))

(declare-fun m!1730844 () Bool)

(assert (=> b!1484147 m!1730844))

(declare-fun m!1730846 () Bool)

(assert (=> b!1484149 m!1730846))

(assert (=> b!1483581 d!435324))

(declare-fun d!435326 () Bool)

(declare-fun c!243245 () Bool)

(assert (=> d!435326 (= c!243245 ((_ is Node!5358) (right!13581 (c!243104 treated!70))))))

(declare-fun e!949095 () Bool)

(assert (=> d!435326 (= (inv!20946 (right!13581 (c!243104 treated!70))) e!949095)))

(declare-fun b!1484150 () Bool)

(assert (=> b!1484150 (= e!949095 (inv!20954 (right!13581 (c!243104 treated!70))))))

(declare-fun b!1484151 () Bool)

(declare-fun e!949096 () Bool)

(assert (=> b!1484151 (= e!949095 e!949096)))

(declare-fun res!670412 () Bool)

(assert (=> b!1484151 (= res!670412 (not ((_ is Leaf!7962) (right!13581 (c!243104 treated!70)))))))

(assert (=> b!1484151 (=> res!670412 e!949096)))

(declare-fun b!1484152 () Bool)

(assert (=> b!1484152 (= e!949096 (inv!20955 (right!13581 (c!243104 treated!70))))))

(assert (= (and d!435326 c!243245) b!1484150))

(assert (= (and d!435326 (not c!243245)) b!1484151))

(assert (= (and b!1484151 (not res!670412)) b!1484152))

(declare-fun m!1730848 () Bool)

(assert (=> b!1484150 m!1730848))

(declare-fun m!1730850 () Bool)

(assert (=> b!1484152 m!1730850))

(assert (=> b!1483581 d!435326))

(declare-fun d!435328 () Bool)

(declare-fun lt!515501 () Int)

(assert (=> d!435328 (= lt!515501 (size!12742 (list!6251 (_2!8087 lt!515380))))))

(assert (=> d!435328 (= lt!515501 (size!12745 (c!243104 (_2!8087 lt!515380))))))

(assert (=> d!435328 (= (size!12740 (_2!8087 lt!515380)) lt!515501)))

(declare-fun bs!346450 () Bool)

(assert (= bs!346450 d!435328))

(assert (=> bs!346450 m!1730007))

(assert (=> bs!346450 m!1730007))

(declare-fun m!1730852 () Bool)

(assert (=> bs!346450 m!1730852))

(declare-fun m!1730854 () Bool)

(assert (=> bs!346450 m!1730854))

(assert (=> b!1483462 d!435328))

(declare-fun d!435330 () Bool)

(declare-fun lt!515502 () Int)

(assert (=> d!435330 (= lt!515502 (size!12742 (list!6251 input!1102)))))

(assert (=> d!435330 (= lt!515502 (size!12745 (c!243104 input!1102)))))

(assert (=> d!435330 (= (size!12740 input!1102) lt!515502)))

(declare-fun bs!346451 () Bool)

(assert (= bs!346451 d!435330))

(assert (=> bs!346451 m!1729863))

(assert (=> bs!346451 m!1729863))

(assert (=> bs!346451 m!1730325))

(declare-fun m!1730856 () Bool)

(assert (=> bs!346451 m!1730856))

(assert (=> b!1483462 d!435330))

(declare-fun bs!346452 () Bool)

(declare-fun d!435332 () Bool)

(assert (= bs!346452 (and d!435332 d!435158)))

(declare-fun lambda!63888 () Int)

(assert (=> bs!346452 (= lambda!63888 lambda!63855)))

(declare-fun bs!346453 () Bool)

(assert (= bs!346453 (and d!435332 d!435216)))

(assert (=> bs!346453 (= lambda!63888 lambda!63873)))

(declare-fun bs!346454 () Bool)

(assert (= bs!346454 (and d!435332 d!435312)))

(assert (=> bs!346454 (= lambda!63888 lambda!63886)))

(declare-fun bs!346455 () Bool)

(assert (= bs!346455 (and d!435332 d!435178)))

(assert (=> bs!346455 (= lambda!63888 lambda!63863)))

(declare-fun bs!346456 () Bool)

(assert (= bs!346456 (and d!435332 d!435214)))

(assert (=> bs!346456 (= lambda!63888 lambda!63872)))

(declare-fun bs!346457 () Bool)

(assert (= bs!346457 (and d!435332 d!435130)))

(assert (=> bs!346457 (= lambda!63888 lambda!63850)))

(declare-fun bs!346458 () Bool)

(assert (= bs!346458 (and d!435332 d!435266)))

(assert (=> bs!346458 (= lambda!63888 lambda!63880)))

(declare-fun bs!346459 () Bool)

(assert (= bs!346459 (and d!435332 d!435180)))

(assert (=> bs!346459 (= lambda!63888 lambda!63864)))

(declare-fun bs!346460 () Bool)

(assert (= bs!346460 (and d!435332 d!435236)))

(assert (=> bs!346460 (= lambda!63888 lambda!63879)))

(declare-fun bs!346461 () Bool)

(assert (= bs!346461 (and d!435332 d!435126)))

(assert (=> bs!346461 (= lambda!63888 lambda!63846)))

(declare-fun bs!346462 () Bool)

(assert (= bs!346462 (and d!435332 d!435200)))

(assert (=> bs!346462 (= lambda!63888 lambda!63870)))

(declare-fun bs!346463 () Bool)

(assert (= bs!346463 (and d!435332 d!435310)))

(assert (=> bs!346463 (= lambda!63888 lambda!63885)))

(declare-fun bs!346464 () Bool)

(assert (= bs!346464 (and d!435332 d!435308)))

(assert (=> bs!346464 (= lambda!63888 lambda!63884)))

(declare-fun bs!346465 () Bool)

(assert (= bs!346465 (and d!435332 d!435076)))

(assert (=> bs!346465 (= lambda!63888 lambda!63843)))

(declare-fun bs!346466 () Bool)

(assert (= bs!346466 (and d!435332 d!435268)))

(assert (=> bs!346466 (= lambda!63888 lambda!63881)))

(declare-fun bs!346467 () Bool)

(assert (= bs!346467 (and d!435332 d!435206)))

(assert (=> bs!346467 (= lambda!63888 lambda!63871)))

(declare-fun bs!346468 () Bool)

(assert (= bs!346468 (and d!435332 d!435194)))

(assert (=> bs!346468 (= lambda!63888 lambda!63869)))

(declare-fun bs!346469 () Bool)

(assert (= bs!346469 (and d!435332 d!435142)))

(assert (=> bs!346469 (= lambda!63888 lambda!63854)))

(declare-fun bs!346470 () Bool)

(assert (= bs!346470 (and d!435332 d!435120)))

(assert (=> bs!346470 (= lambda!63888 lambda!63845)))

(declare-fun bs!346471 () Bool)

(assert (= bs!346471 (and d!435332 d!435318)))

(assert (=> bs!346471 (= lambda!63888 lambda!63887)))

(declare-fun bs!346472 () Bool)

(assert (= bs!346472 (and d!435332 d!435294)))

(assert (=> bs!346472 (= lambda!63888 lambda!63883)))

(declare-fun bs!346473 () Bool)

(assert (= bs!346473 (and d!435332 d!435166)))

(assert (=> bs!346473 (= lambda!63888 lambda!63859)))

(declare-fun bs!346474 () Bool)

(assert (= bs!346474 (and d!435332 d!435086)))

(assert (=> bs!346474 (= lambda!63888 lambda!63844)))

(declare-fun bs!346475 () Bool)

(assert (= bs!346475 (and d!435332 d!435234)))

(assert (=> bs!346475 (= lambda!63888 lambda!63878)))

(declare-fun bs!346476 () Bool)

(assert (= bs!346476 (and d!435332 d!435188)))

(assert (=> bs!346476 (= lambda!63888 lambda!63865)))

(declare-fun bs!346477 () Bool)

(assert (= bs!346477 (and d!435332 d!435222)))

(assert (=> bs!346477 (= lambda!63888 lambda!63874)))

(assert (=> d!435332 (= (inv!20959 setElem!8220) (forall!3820 (exprs!1135 setElem!8220) lambda!63888))))

(declare-fun bs!346478 () Bool)

(assert (= bs!346478 d!435332))

(declare-fun m!1730858 () Bool)

(assert (=> bs!346478 m!1730858))

(assert (=> setNonEmpty!8220 d!435332))

(declare-fun bs!346479 () Bool)

(declare-fun d!435334 () Bool)

(assert (= bs!346479 (and d!435334 d!435216)))

(declare-fun lambda!63889 () Int)

(assert (=> bs!346479 (= lambda!63889 lambda!63873)))

(declare-fun bs!346480 () Bool)

(assert (= bs!346480 (and d!435334 d!435312)))

(assert (=> bs!346480 (= lambda!63889 lambda!63886)))

(declare-fun bs!346481 () Bool)

(assert (= bs!346481 (and d!435334 d!435178)))

(assert (=> bs!346481 (= lambda!63889 lambda!63863)))

(declare-fun bs!346482 () Bool)

(assert (= bs!346482 (and d!435334 d!435214)))

(assert (=> bs!346482 (= lambda!63889 lambda!63872)))

(declare-fun bs!346483 () Bool)

(assert (= bs!346483 (and d!435334 d!435130)))

(assert (=> bs!346483 (= lambda!63889 lambda!63850)))

(declare-fun bs!346484 () Bool)

(assert (= bs!346484 (and d!435334 d!435266)))

(assert (=> bs!346484 (= lambda!63889 lambda!63880)))

(declare-fun bs!346485 () Bool)

(assert (= bs!346485 (and d!435334 d!435180)))

(assert (=> bs!346485 (= lambda!63889 lambda!63864)))

(declare-fun bs!346486 () Bool)

(assert (= bs!346486 (and d!435334 d!435236)))

(assert (=> bs!346486 (= lambda!63889 lambda!63879)))

(declare-fun bs!346487 () Bool)

(assert (= bs!346487 (and d!435334 d!435126)))

(assert (=> bs!346487 (= lambda!63889 lambda!63846)))

(declare-fun bs!346488 () Bool)

(assert (= bs!346488 (and d!435334 d!435200)))

(assert (=> bs!346488 (= lambda!63889 lambda!63870)))

(declare-fun bs!346489 () Bool)

(assert (= bs!346489 (and d!435334 d!435310)))

(assert (=> bs!346489 (= lambda!63889 lambda!63885)))

(declare-fun bs!346490 () Bool)

(assert (= bs!346490 (and d!435334 d!435308)))

(assert (=> bs!346490 (= lambda!63889 lambda!63884)))

(declare-fun bs!346491 () Bool)

(assert (= bs!346491 (and d!435334 d!435076)))

(assert (=> bs!346491 (= lambda!63889 lambda!63843)))

(declare-fun bs!346492 () Bool)

(assert (= bs!346492 (and d!435334 d!435332)))

(assert (=> bs!346492 (= lambda!63889 lambda!63888)))

(declare-fun bs!346493 () Bool)

(assert (= bs!346493 (and d!435334 d!435158)))

(assert (=> bs!346493 (= lambda!63889 lambda!63855)))

(declare-fun bs!346494 () Bool)

(assert (= bs!346494 (and d!435334 d!435268)))

(assert (=> bs!346494 (= lambda!63889 lambda!63881)))

(declare-fun bs!346495 () Bool)

(assert (= bs!346495 (and d!435334 d!435206)))

(assert (=> bs!346495 (= lambda!63889 lambda!63871)))

(declare-fun bs!346496 () Bool)

(assert (= bs!346496 (and d!435334 d!435194)))

(assert (=> bs!346496 (= lambda!63889 lambda!63869)))

(declare-fun bs!346497 () Bool)

(assert (= bs!346497 (and d!435334 d!435142)))

(assert (=> bs!346497 (= lambda!63889 lambda!63854)))

(declare-fun bs!346498 () Bool)

(assert (= bs!346498 (and d!435334 d!435120)))

(assert (=> bs!346498 (= lambda!63889 lambda!63845)))

(declare-fun bs!346499 () Bool)

(assert (= bs!346499 (and d!435334 d!435318)))

(assert (=> bs!346499 (= lambda!63889 lambda!63887)))

(declare-fun bs!346500 () Bool)

(assert (= bs!346500 (and d!435334 d!435294)))

(assert (=> bs!346500 (= lambda!63889 lambda!63883)))

(declare-fun bs!346501 () Bool)

(assert (= bs!346501 (and d!435334 d!435166)))

(assert (=> bs!346501 (= lambda!63889 lambda!63859)))

(declare-fun bs!346502 () Bool)

(assert (= bs!346502 (and d!435334 d!435086)))

(assert (=> bs!346502 (= lambda!63889 lambda!63844)))

(declare-fun bs!346503 () Bool)

(assert (= bs!346503 (and d!435334 d!435234)))

(assert (=> bs!346503 (= lambda!63889 lambda!63878)))

(declare-fun bs!346504 () Bool)

(assert (= bs!346504 (and d!435334 d!435188)))

(assert (=> bs!346504 (= lambda!63889 lambda!63865)))

(declare-fun bs!346505 () Bool)

(assert (= bs!346505 (and d!435334 d!435222)))

(assert (=> bs!346505 (= lambda!63889 lambda!63874)))

(assert (=> d!435334 (= (inv!20959 setElem!8216) (forall!3820 (exprs!1135 setElem!8216) lambda!63889))))

(declare-fun bs!346506 () Bool)

(assert (= bs!346506 d!435334))

(declare-fun m!1730860 () Bool)

(assert (=> bs!346506 m!1730860))

(assert (=> setNonEmpty!8216 d!435334))

(assert (=> b!1483343 d!435020))

(assert (=> b!1483458 d!435260))

(assert (=> b!1483458 d!435012))

(declare-fun bs!346507 () Bool)

(declare-fun d!435336 () Bool)

(assert (= bs!346507 (and d!435336 d!435216)))

(declare-fun lambda!63890 () Int)

(assert (=> bs!346507 (= lambda!63890 lambda!63873)))

(declare-fun bs!346508 () Bool)

(assert (= bs!346508 (and d!435336 d!435312)))

(assert (=> bs!346508 (= lambda!63890 lambda!63886)))

(declare-fun bs!346509 () Bool)

(assert (= bs!346509 (and d!435336 d!435178)))

(assert (=> bs!346509 (= lambda!63890 lambda!63863)))

(declare-fun bs!346510 () Bool)

(assert (= bs!346510 (and d!435336 d!435214)))

(assert (=> bs!346510 (= lambda!63890 lambda!63872)))

(declare-fun bs!346511 () Bool)

(assert (= bs!346511 (and d!435336 d!435130)))

(assert (=> bs!346511 (= lambda!63890 lambda!63850)))

(declare-fun bs!346512 () Bool)

(assert (= bs!346512 (and d!435336 d!435266)))

(assert (=> bs!346512 (= lambda!63890 lambda!63880)))

(declare-fun bs!346513 () Bool)

(assert (= bs!346513 (and d!435336 d!435180)))

(assert (=> bs!346513 (= lambda!63890 lambda!63864)))

(declare-fun bs!346514 () Bool)

(assert (= bs!346514 (and d!435336 d!435126)))

(assert (=> bs!346514 (= lambda!63890 lambda!63846)))

(declare-fun bs!346515 () Bool)

(assert (= bs!346515 (and d!435336 d!435200)))

(assert (=> bs!346515 (= lambda!63890 lambda!63870)))

(declare-fun bs!346516 () Bool)

(assert (= bs!346516 (and d!435336 d!435310)))

(assert (=> bs!346516 (= lambda!63890 lambda!63885)))

(declare-fun bs!346517 () Bool)

(assert (= bs!346517 (and d!435336 d!435308)))

(assert (=> bs!346517 (= lambda!63890 lambda!63884)))

(declare-fun bs!346518 () Bool)

(assert (= bs!346518 (and d!435336 d!435076)))

(assert (=> bs!346518 (= lambda!63890 lambda!63843)))

(declare-fun bs!346519 () Bool)

(assert (= bs!346519 (and d!435336 d!435332)))

(assert (=> bs!346519 (= lambda!63890 lambda!63888)))

(declare-fun bs!346520 () Bool)

(assert (= bs!346520 (and d!435336 d!435158)))

(assert (=> bs!346520 (= lambda!63890 lambda!63855)))

(declare-fun bs!346521 () Bool)

(assert (= bs!346521 (and d!435336 d!435268)))

(assert (=> bs!346521 (= lambda!63890 lambda!63881)))

(declare-fun bs!346522 () Bool)

(assert (= bs!346522 (and d!435336 d!435206)))

(assert (=> bs!346522 (= lambda!63890 lambda!63871)))

(declare-fun bs!346523 () Bool)

(assert (= bs!346523 (and d!435336 d!435194)))

(assert (=> bs!346523 (= lambda!63890 lambda!63869)))

(declare-fun bs!346524 () Bool)

(assert (= bs!346524 (and d!435336 d!435142)))

(assert (=> bs!346524 (= lambda!63890 lambda!63854)))

(declare-fun bs!346525 () Bool)

(assert (= bs!346525 (and d!435336 d!435120)))

(assert (=> bs!346525 (= lambda!63890 lambda!63845)))

(declare-fun bs!346526 () Bool)

(assert (= bs!346526 (and d!435336 d!435318)))

(assert (=> bs!346526 (= lambda!63890 lambda!63887)))

(declare-fun bs!346527 () Bool)

(assert (= bs!346527 (and d!435336 d!435294)))

(assert (=> bs!346527 (= lambda!63890 lambda!63883)))

(declare-fun bs!346528 () Bool)

(assert (= bs!346528 (and d!435336 d!435166)))

(assert (=> bs!346528 (= lambda!63890 lambda!63859)))

(declare-fun bs!346529 () Bool)

(assert (= bs!346529 (and d!435336 d!435086)))

(assert (=> bs!346529 (= lambda!63890 lambda!63844)))

(declare-fun bs!346530 () Bool)

(assert (= bs!346530 (and d!435336 d!435234)))

(assert (=> bs!346530 (= lambda!63890 lambda!63878)))

(declare-fun bs!346531 () Bool)

(assert (= bs!346531 (and d!435336 d!435188)))

(assert (=> bs!346531 (= lambda!63890 lambda!63865)))

(declare-fun bs!346532 () Bool)

(assert (= bs!346532 (and d!435336 d!435222)))

(assert (=> bs!346532 (= lambda!63890 lambda!63874)))

(declare-fun bs!346533 () Bool)

(assert (= bs!346533 (and d!435336 d!435236)))

(assert (=> bs!346533 (= lambda!63890 lambda!63879)))

(declare-fun bs!346534 () Bool)

(assert (= bs!346534 (and d!435336 d!435334)))

(assert (=> bs!346534 (= lambda!63890 lambda!63889)))

(assert (=> d!435336 (= (inv!20959 setElem!8229) (forall!3820 (exprs!1135 setElem!8229) lambda!63890))))

(declare-fun bs!346535 () Bool)

(assert (= bs!346535 d!435336))

(declare-fun m!1730862 () Bool)

(assert (=> bs!346535 m!1730862))

(assert (=> setNonEmpty!8229 d!435336))

(declare-fun d!435338 () Bool)

(assert (=> d!435338 (= (inv!20958 (xs!8113 (c!243104 input!1102))) (<= (size!12742 (innerList!5418 (xs!8113 (c!243104 input!1102)))) 2147483647))))

(declare-fun bs!346536 () Bool)

(assert (= bs!346536 d!435338))

(declare-fun m!1730864 () Bool)

(assert (=> bs!346536 m!1730864))

(assert (=> b!1483504 d!435338))

(declare-fun d!435340 () Bool)

(declare-fun c!243246 () Bool)

(assert (=> d!435340 (= c!243246 ((_ is Node!5358) (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(declare-fun e!949097 () Bool)

(assert (=> d!435340 (= (inv!20946 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) e!949097)))

(declare-fun b!1484153 () Bool)

(assert (=> b!1484153 (= e!949097 (inv!20954 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(declare-fun b!1484154 () Bool)

(declare-fun e!949098 () Bool)

(assert (=> b!1484154 (= e!949097 e!949098)))

(declare-fun res!670413 () Bool)

(assert (=> b!1484154 (= res!670413 (not ((_ is Leaf!7962) (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))))))

(assert (=> b!1484154 (=> res!670413 e!949098)))

(declare-fun b!1484155 () Bool)

(assert (=> b!1484155 (= e!949098 (inv!20955 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(assert (= (and d!435340 c!243246) b!1484153))

(assert (= (and d!435340 (not c!243246)) b!1484154))

(assert (= (and b!1484154 (not res!670413)) b!1484155))

(declare-fun m!1730866 () Bool)

(assert (=> b!1484153 m!1730866))

(declare-fun m!1730868 () Bool)

(assert (=> b!1484155 m!1730868))

(assert (=> b!1483546 d!435340))

(declare-fun d!435342 () Bool)

(declare-fun c!243247 () Bool)

(assert (=> d!435342 (= c!243247 ((_ is Node!5358) (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(declare-fun e!949099 () Bool)

(assert (=> d!435342 (= (inv!20946 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) e!949099)))

(declare-fun b!1484156 () Bool)

(assert (=> b!1484156 (= e!949099 (inv!20954 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(declare-fun b!1484157 () Bool)

(declare-fun e!949100 () Bool)

(assert (=> b!1484157 (= e!949099 e!949100)))

(declare-fun res!670414 () Bool)

(assert (=> b!1484157 (= res!670414 (not ((_ is Leaf!7962) (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))))))

(assert (=> b!1484157 (=> res!670414 e!949100)))

(declare-fun b!1484158 () Bool)

(assert (=> b!1484158 (= e!949100 (inv!20955 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))))

(assert (= (and d!435342 c!243247) b!1484156))

(assert (= (and d!435342 (not c!243247)) b!1484157))

(assert (= (and b!1484157 (not res!670414)) b!1484158))

(declare-fun m!1730870 () Bool)

(assert (=> b!1484156 m!1730870))

(declare-fun m!1730872 () Bool)

(assert (=> b!1484158 m!1730872))

(assert (=> b!1483546 d!435342))

(declare-fun bs!346537 () Bool)

(declare-fun d!435344 () Bool)

(assert (= bs!346537 (and d!435344 d!435216)))

(declare-fun lambda!63891 () Int)

(assert (=> bs!346537 (= lambda!63891 lambda!63873)))

(declare-fun bs!346538 () Bool)

(assert (= bs!346538 (and d!435344 d!435178)))

(assert (=> bs!346538 (= lambda!63891 lambda!63863)))

(declare-fun bs!346539 () Bool)

(assert (= bs!346539 (and d!435344 d!435214)))

(assert (=> bs!346539 (= lambda!63891 lambda!63872)))

(declare-fun bs!346540 () Bool)

(assert (= bs!346540 (and d!435344 d!435130)))

(assert (=> bs!346540 (= lambda!63891 lambda!63850)))

(declare-fun bs!346541 () Bool)

(assert (= bs!346541 (and d!435344 d!435266)))

(assert (=> bs!346541 (= lambda!63891 lambda!63880)))

(declare-fun bs!346542 () Bool)

(assert (= bs!346542 (and d!435344 d!435180)))

(assert (=> bs!346542 (= lambda!63891 lambda!63864)))

(declare-fun bs!346543 () Bool)

(assert (= bs!346543 (and d!435344 d!435126)))

(assert (=> bs!346543 (= lambda!63891 lambda!63846)))

(declare-fun bs!346544 () Bool)

(assert (= bs!346544 (and d!435344 d!435200)))

(assert (=> bs!346544 (= lambda!63891 lambda!63870)))

(declare-fun bs!346545 () Bool)

(assert (= bs!346545 (and d!435344 d!435310)))

(assert (=> bs!346545 (= lambda!63891 lambda!63885)))

(declare-fun bs!346546 () Bool)

(assert (= bs!346546 (and d!435344 d!435308)))

(assert (=> bs!346546 (= lambda!63891 lambda!63884)))

(declare-fun bs!346547 () Bool)

(assert (= bs!346547 (and d!435344 d!435076)))

(assert (=> bs!346547 (= lambda!63891 lambda!63843)))

(declare-fun bs!346548 () Bool)

(assert (= bs!346548 (and d!435344 d!435332)))

(assert (=> bs!346548 (= lambda!63891 lambda!63888)))

(declare-fun bs!346549 () Bool)

(assert (= bs!346549 (and d!435344 d!435158)))

(assert (=> bs!346549 (= lambda!63891 lambda!63855)))

(declare-fun bs!346550 () Bool)

(assert (= bs!346550 (and d!435344 d!435268)))

(assert (=> bs!346550 (= lambda!63891 lambda!63881)))

(declare-fun bs!346551 () Bool)

(assert (= bs!346551 (and d!435344 d!435206)))

(assert (=> bs!346551 (= lambda!63891 lambda!63871)))

(declare-fun bs!346552 () Bool)

(assert (= bs!346552 (and d!435344 d!435312)))

(assert (=> bs!346552 (= lambda!63891 lambda!63886)))

(declare-fun bs!346553 () Bool)

(assert (= bs!346553 (and d!435344 d!435336)))

(assert (=> bs!346553 (= lambda!63891 lambda!63890)))

(declare-fun bs!346554 () Bool)

(assert (= bs!346554 (and d!435344 d!435194)))

(assert (=> bs!346554 (= lambda!63891 lambda!63869)))

(declare-fun bs!346555 () Bool)

(assert (= bs!346555 (and d!435344 d!435142)))

(assert (=> bs!346555 (= lambda!63891 lambda!63854)))

(declare-fun bs!346556 () Bool)

(assert (= bs!346556 (and d!435344 d!435120)))

(assert (=> bs!346556 (= lambda!63891 lambda!63845)))

(declare-fun bs!346557 () Bool)

(assert (= bs!346557 (and d!435344 d!435318)))

(assert (=> bs!346557 (= lambda!63891 lambda!63887)))

(declare-fun bs!346558 () Bool)

(assert (= bs!346558 (and d!435344 d!435294)))

(assert (=> bs!346558 (= lambda!63891 lambda!63883)))

(declare-fun bs!346559 () Bool)

(assert (= bs!346559 (and d!435344 d!435166)))

(assert (=> bs!346559 (= lambda!63891 lambda!63859)))

(declare-fun bs!346560 () Bool)

(assert (= bs!346560 (and d!435344 d!435086)))

(assert (=> bs!346560 (= lambda!63891 lambda!63844)))

(declare-fun bs!346561 () Bool)

(assert (= bs!346561 (and d!435344 d!435234)))

(assert (=> bs!346561 (= lambda!63891 lambda!63878)))

(declare-fun bs!346562 () Bool)

(assert (= bs!346562 (and d!435344 d!435188)))

(assert (=> bs!346562 (= lambda!63891 lambda!63865)))

(declare-fun bs!346563 () Bool)

(assert (= bs!346563 (and d!435344 d!435222)))

(assert (=> bs!346563 (= lambda!63891 lambda!63874)))

(declare-fun bs!346564 () Bool)

(assert (= bs!346564 (and d!435344 d!435236)))

(assert (=> bs!346564 (= lambda!63891 lambda!63879)))

(declare-fun bs!346565 () Bool)

(assert (= bs!346565 (and d!435344 d!435334)))

(assert (=> bs!346565 (= lambda!63891 lambda!63889)))

(assert (=> d!435344 (= (inv!20959 (_1!8085 (_1!8086 (h!21132 mapValue!6506)))) (forall!3820 (exprs!1135 (_1!8085 (_1!8086 (h!21132 mapValue!6506)))) lambda!63891))))

(declare-fun bs!346566 () Bool)

(assert (= bs!346566 d!435344))

(declare-fun m!1730874 () Bool)

(assert (=> bs!346566 m!1730874))

(assert (=> b!1483601 d!435344))

(assert (=> b!1483473 d!435190))

(declare-fun condSetEmpty!8240 () Bool)

(assert (=> setNonEmpty!8211 (= condSetEmpty!8240 (= setRest!8211 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8240 () Bool)

(assert (=> setNonEmpty!8211 (= tp!421209 setRes!8240)))

(declare-fun setIsEmpty!8240 () Bool)

(assert (=> setIsEmpty!8240 setRes!8240))

(declare-fun e!949103 () Bool)

(declare-fun setNonEmpty!8240 () Bool)

(declare-fun setElem!8240 () Context!1270)

(declare-fun tp!421357 () Bool)

(assert (=> setNonEmpty!8240 (= setRes!8240 (and tp!421357 (inv!20959 setElem!8240) e!949103))))

(declare-fun setRest!8240 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8240 (= setRest!8211 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8240 true) setRest!8240))))

(declare-fun b!1484163 () Bool)

(declare-fun tp!421356 () Bool)

(assert (=> b!1484163 (= e!949103 tp!421356)))

(assert (= (and setNonEmpty!8211 condSetEmpty!8240) setIsEmpty!8240))

(assert (= (and setNonEmpty!8211 (not condSetEmpty!8240)) setNonEmpty!8240))

(assert (= setNonEmpty!8240 b!1484163))

(declare-fun m!1730876 () Bool)

(assert (=> setNonEmpty!8240 m!1730876))

(declare-fun condSetEmpty!8241 () Bool)

(assert (=> setNonEmpty!8227 (= condSetEmpty!8241 (= setRest!8227 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8241 () Bool)

(assert (=> setNonEmpty!8227 (= tp!421289 setRes!8241)))

(declare-fun setIsEmpty!8241 () Bool)

(assert (=> setIsEmpty!8241 setRes!8241))

(declare-fun setElem!8241 () Context!1270)

(declare-fun e!949104 () Bool)

(declare-fun tp!421359 () Bool)

(declare-fun setNonEmpty!8241 () Bool)

(assert (=> setNonEmpty!8241 (= setRes!8241 (and tp!421359 (inv!20959 setElem!8241) e!949104))))

(declare-fun setRest!8241 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8241 (= setRest!8227 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8241 true) setRest!8241))))

(declare-fun b!1484164 () Bool)

(declare-fun tp!421358 () Bool)

(assert (=> b!1484164 (= e!949104 tp!421358)))

(assert (= (and setNonEmpty!8227 condSetEmpty!8241) setIsEmpty!8241))

(assert (= (and setNonEmpty!8227 (not condSetEmpty!8241)) setNonEmpty!8241))

(assert (= setNonEmpty!8241 b!1484164))

(declare-fun m!1730878 () Bool)

(assert (=> setNonEmpty!8241 m!1730878))

(declare-fun b!1484178 () Bool)

(declare-fun b_free!38447 () Bool)

(declare-fun b_next!39151 () Bool)

(assert (=> b!1484178 (= b_free!38447 (not b_next!39151))))

(declare-fun tp!421373 () Bool)

(declare-fun b_and!103165 () Bool)

(assert (=> b!1484178 (= tp!421373 b_and!103165)))

(declare-fun b_free!38449 () Bool)

(declare-fun b_next!39153 () Bool)

(assert (=> b!1484178 (= b_free!38449 (not b_next!39153))))

(declare-fun tp!421371 () Bool)

(declare-fun b_and!103167 () Bool)

(assert (=> b!1484178 (= tp!421371 b_and!103167)))

(declare-fun e!949120 () Bool)

(assert (=> b!1483642 (= tp!421325 e!949120)))

(declare-fun e!949119 () Bool)

(declare-fun b!1484176 () Bool)

(declare-fun e!949122 () Bool)

(declare-fun tp!421370 () Bool)

(declare-fun inv!21 (TokenValue!2893) Bool)

(assert (=> b!1484176 (= e!949122 (and (inv!21 (value!89544 (h!21134 (innerList!5419 (xs!8114 (c!243105 acc!392)))))) e!949119 tp!421370))))

(declare-fun b!1484175 () Bool)

(declare-fun tp!421374 () Bool)

(declare-fun inv!20961 (Token!5268) Bool)

(assert (=> b!1484175 (= e!949120 (and (inv!20961 (h!21134 (innerList!5419 (xs!8114 (c!243105 acc!392))))) e!949122 tp!421374))))

(declare-fun e!949117 () Bool)

(assert (=> b!1484178 (= e!949117 (and tp!421373 tp!421371))))

(declare-fun tp!421372 () Bool)

(declare-fun b!1484177 () Bool)

(assert (=> b!1484177 (= e!949119 (and tp!421372 (inv!20942 (tag!3067 (rule!4580 (h!21134 (innerList!5419 (xs!8114 (c!243105 acc!392))))))) (inv!20953 (transformation!2803 (rule!4580 (h!21134 (innerList!5419 (xs!8114 (c!243105 acc!392))))))) e!949117))))

(assert (= b!1484177 b!1484178))

(assert (= b!1484176 b!1484177))

(assert (= b!1484175 b!1484176))

(assert (= (and b!1483642 ((_ is Cons!15733) (innerList!5419 (xs!8114 (c!243105 acc!392))))) b!1484175))

(declare-fun m!1730880 () Bool)

(assert (=> b!1484176 m!1730880))

(declare-fun m!1730882 () Bool)

(assert (=> b!1484175 m!1730882))

(declare-fun m!1730884 () Bool)

(assert (=> b!1484177 m!1730884))

(declare-fun m!1730886 () Bool)

(assert (=> b!1484177 m!1730886))

(declare-fun b!1484183 () Bool)

(declare-fun e!949125 () Bool)

(declare-fun tp!421379 () Bool)

(declare-fun tp!421380 () Bool)

(assert (=> b!1484183 (= e!949125 (and tp!421379 tp!421380))))

(assert (=> b!1483520 (= tp!421182 e!949125)))

(assert (= (and b!1483520 ((_ is Cons!15728) (exprs!1135 (_2!8088 (_1!8089 (h!21135 mapDefault!6503)))))) b!1484183))

(declare-fun condSetEmpty!8242 () Bool)

(assert (=> setNonEmpty!8212 (= condSetEmpty!8242 (= setRest!8212 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8242 () Bool)

(assert (=> setNonEmpty!8212 (= tp!421214 setRes!8242)))

(declare-fun setIsEmpty!8242 () Bool)

(assert (=> setIsEmpty!8242 setRes!8242))

(declare-fun setNonEmpty!8242 () Bool)

(declare-fun setElem!8242 () Context!1270)

(declare-fun e!949126 () Bool)

(declare-fun tp!421382 () Bool)

(assert (=> setNonEmpty!8242 (= setRes!8242 (and tp!421382 (inv!20959 setElem!8242) e!949126))))

(declare-fun setRest!8242 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8242 (= setRest!8212 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8242 true) setRest!8242))))

(declare-fun b!1484184 () Bool)

(declare-fun tp!421381 () Bool)

(assert (=> b!1484184 (= e!949126 tp!421381)))

(assert (= (and setNonEmpty!8212 condSetEmpty!8242) setIsEmpty!8242))

(assert (= (and setNonEmpty!8212 (not condSetEmpty!8242)) setNonEmpty!8242))

(assert (= setNonEmpty!8242 b!1484184))

(declare-fun m!1730888 () Bool)

(assert (=> setNonEmpty!8242 m!1730888))

(declare-fun b!1484185 () Bool)

(declare-fun tp!421384 () Bool)

(declare-fun e!949128 () Bool)

(declare-fun tp!421385 () Bool)

(assert (=> b!1484185 (= e!949128 (and (inv!20947 (left!13252 (left!13252 (c!243105 acc!392)))) tp!421385 (inv!20947 (right!13582 (left!13252 (c!243105 acc!392)))) tp!421384))))

(declare-fun b!1484187 () Bool)

(declare-fun e!949127 () Bool)

(declare-fun tp!421383 () Bool)

(assert (=> b!1484187 (= e!949127 tp!421383)))

(declare-fun b!1484186 () Bool)

(assert (=> b!1484186 (= e!949128 (and (inv!20960 (xs!8114 (left!13252 (c!243105 acc!392)))) e!949127))))

(assert (=> b!1483640 (= tp!421327 (and (inv!20947 (left!13252 (c!243105 acc!392))) e!949128))))

(assert (= (and b!1483640 ((_ is Node!5359) (left!13252 (c!243105 acc!392)))) b!1484185))

(assert (= b!1484186 b!1484187))

(assert (= (and b!1483640 ((_ is Leaf!7963) (left!13252 (c!243105 acc!392)))) b!1484186))

(declare-fun m!1730890 () Bool)

(assert (=> b!1484185 m!1730890))

(declare-fun m!1730892 () Bool)

(assert (=> b!1484185 m!1730892))

(declare-fun m!1730894 () Bool)

(assert (=> b!1484186 m!1730894))

(assert (=> b!1483640 m!1730139))

(declare-fun tp!421388 () Bool)

(declare-fun e!949130 () Bool)

(declare-fun tp!421387 () Bool)

(declare-fun b!1484188 () Bool)

(assert (=> b!1484188 (= e!949130 (and (inv!20947 (left!13252 (right!13582 (c!243105 acc!392)))) tp!421388 (inv!20947 (right!13582 (right!13582 (c!243105 acc!392)))) tp!421387))))

(declare-fun b!1484190 () Bool)

(declare-fun e!949129 () Bool)

(declare-fun tp!421386 () Bool)

(assert (=> b!1484190 (= e!949129 tp!421386)))

(declare-fun b!1484189 () Bool)

(assert (=> b!1484189 (= e!949130 (and (inv!20960 (xs!8114 (right!13582 (c!243105 acc!392)))) e!949129))))

(assert (=> b!1483640 (= tp!421326 (and (inv!20947 (right!13582 (c!243105 acc!392))) e!949130))))

(assert (= (and b!1483640 ((_ is Node!5359) (right!13582 (c!243105 acc!392)))) b!1484188))

(assert (= b!1484189 b!1484190))

(assert (= (and b!1483640 ((_ is Leaf!7963) (right!13582 (c!243105 acc!392)))) b!1484189))

(declare-fun m!1730896 () Bool)

(assert (=> b!1484188 m!1730896))

(declare-fun m!1730898 () Bool)

(assert (=> b!1484188 m!1730898))

(declare-fun m!1730900 () Bool)

(assert (=> b!1484189 m!1730900))

(assert (=> b!1483640 m!1730141))

(declare-fun b!1484191 () Bool)

(declare-fun e!949131 () Bool)

(declare-fun tp!421389 () Bool)

(declare-fun tp!421390 () Bool)

(assert (=> b!1484191 (= e!949131 (and tp!421389 tp!421390))))

(assert (=> b!1483606 (= tp!421282 e!949131)))

(assert (= (and b!1483606 ((_ is Cons!15728) (exprs!1135 (_1!8085 (_1!8086 (h!21132 mapValue!6506)))))) b!1484191))

(declare-fun b!1484192 () Bool)

(declare-fun e!949132 () Bool)

(declare-fun tp!421391 () Bool)

(declare-fun tp!421392 () Bool)

(assert (=> b!1484192 (= e!949132 (and tp!421391 tp!421392))))

(assert (=> b!1483578 (= tp!421251 e!949132)))

(assert (= (and b!1483578 ((_ is Cons!15728) (exprs!1135 setElem!8219))) b!1484192))

(declare-fun condSetEmpty!8243 () Bool)

(assert (=> setNonEmpty!8228 (= condSetEmpty!8243 (= setRest!8228 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8243 () Bool)

(assert (=> setNonEmpty!8228 (= tp!421295 setRes!8243)))

(declare-fun setIsEmpty!8243 () Bool)

(assert (=> setIsEmpty!8243 setRes!8243))

(declare-fun e!949133 () Bool)

(declare-fun setElem!8243 () Context!1270)

(declare-fun setNonEmpty!8243 () Bool)

(declare-fun tp!421394 () Bool)

(assert (=> setNonEmpty!8243 (= setRes!8243 (and tp!421394 (inv!20959 setElem!8243) e!949133))))

(declare-fun setRest!8243 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8243 (= setRest!8228 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8243 true) setRest!8243))))

(declare-fun b!1484193 () Bool)

(declare-fun tp!421393 () Bool)

(assert (=> b!1484193 (= e!949133 tp!421393)))

(assert (= (and setNonEmpty!8228 condSetEmpty!8243) setIsEmpty!8243))

(assert (= (and setNonEmpty!8228 (not condSetEmpty!8243)) setNonEmpty!8243))

(assert (= setNonEmpty!8243 b!1484193))

(declare-fun m!1730902 () Bool)

(assert (=> setNonEmpty!8243 m!1730902))

(declare-fun b!1484194 () Bool)

(declare-fun e!949134 () Bool)

(declare-fun setRes!8244 () Bool)

(declare-fun tp!421395 () Bool)

(assert (=> b!1484194 (= e!949134 (and setRes!8244 tp!421395))))

(declare-fun condSetEmpty!8244 () Bool)

(assert (=> b!1484194 (= condSetEmpty!8244 (= (_1!8083 (_1!8084 (h!21130 (t!137714 mapDefault!6499)))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8244 () Bool)

(assert (=> setIsEmpty!8244 setRes!8244))

(declare-fun tp!421397 () Bool)

(declare-fun setElem!8244 () Context!1270)

(declare-fun e!949135 () Bool)

(declare-fun setNonEmpty!8244 () Bool)

(assert (=> setNonEmpty!8244 (= setRes!8244 (and tp!421397 (inv!20959 setElem!8244) e!949135))))

(declare-fun setRest!8244 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8244 (= (_1!8083 (_1!8084 (h!21130 (t!137714 mapDefault!6499)))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8244 true) setRest!8244))))

(declare-fun b!1484195 () Bool)

(declare-fun tp!421396 () Bool)

(assert (=> b!1484195 (= e!949135 tp!421396)))

(assert (=> b!1483610 (= tp!421293 e!949134)))

(assert (= (and b!1484194 condSetEmpty!8244) setIsEmpty!8244))

(assert (= (and b!1484194 (not condSetEmpty!8244)) setNonEmpty!8244))

(assert (= setNonEmpty!8244 b!1484195))

(assert (= (and b!1483610 ((_ is Cons!15729) (t!137714 mapDefault!6499))) b!1484194))

(declare-fun m!1730904 () Bool)

(assert (=> setNonEmpty!8244 m!1730904))

(declare-fun e!949137 () Bool)

(assert (=> b!1483605 (= tp!421287 e!949137)))

(declare-fun setIsEmpty!8245 () Bool)

(declare-fun setRes!8245 () Bool)

(assert (=> setIsEmpty!8245 setRes!8245))

(declare-fun tp!421398 () Bool)

(declare-fun e!949136 () Bool)

(declare-fun setElem!8245 () Context!1270)

(declare-fun setNonEmpty!8245 () Bool)

(assert (=> setNonEmpty!8245 (= setRes!8245 (and tp!421398 (inv!20959 setElem!8245) e!949136))))

(declare-fun setRest!8245 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8245 (= (_2!8086 (h!21132 (t!137716 mapDefault!6506))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8245 true) setRest!8245))))

(declare-fun b!1484196 () Bool)

(declare-fun tp!421399 () Bool)

(assert (=> b!1484196 (= e!949136 tp!421399)))

(declare-fun e!949138 () Bool)

(declare-fun tp!421400 () Bool)

(declare-fun b!1484197 () Bool)

(assert (=> b!1484197 (= e!949137 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 (t!137716 mapDefault!6506))))) e!949138 tp_is_empty!6993 setRes!8245 tp!421400))))

(declare-fun condSetEmpty!8245 () Bool)

(assert (=> b!1484197 (= condSetEmpty!8245 (= (_2!8086 (h!21132 (t!137716 mapDefault!6506))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1484198 () Bool)

(declare-fun tp!421401 () Bool)

(assert (=> b!1484198 (= e!949138 tp!421401)))

(assert (= b!1484197 b!1484198))

(assert (= (and b!1484197 condSetEmpty!8245) setIsEmpty!8245))

(assert (= (and b!1484197 (not condSetEmpty!8245)) setNonEmpty!8245))

(assert (= setNonEmpty!8245 b!1484196))

(assert (= (and b!1483605 ((_ is Cons!15731) (t!137716 mapDefault!6506))) b!1484197))

(declare-fun m!1730906 () Bool)

(assert (=> setNonEmpty!8245 m!1730906))

(declare-fun m!1730908 () Bool)

(assert (=> b!1484197 m!1730908))

(declare-fun setRes!8246 () Bool)

(declare-fun e!949142 () Bool)

(declare-fun setNonEmpty!8246 () Bool)

(declare-fun setElem!8247 () Context!1270)

(declare-fun tp!421408 () Bool)

(assert (=> setNonEmpty!8246 (= setRes!8246 (and tp!421408 (inv!20959 setElem!8247) e!949142))))

(declare-fun mapValue!6510 () List!15797)

(declare-fun setRest!8246 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8246 (= (_1!8083 (_1!8084 (h!21130 mapValue!6510))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8247 true) setRest!8246))))

(declare-fun setIsEmpty!8246 () Bool)

(declare-fun setRes!8247 () Bool)

(assert (=> setIsEmpty!8246 setRes!8247))

(declare-fun b!1484199 () Bool)

(declare-fun tp!421405 () Bool)

(assert (=> b!1484199 (= e!949142 tp!421405)))

(declare-fun mapNonEmpty!6510 () Bool)

(declare-fun mapRes!6510 () Bool)

(declare-fun tp!421403 () Bool)

(declare-fun e!949139 () Bool)

(assert (=> mapNonEmpty!6510 (= mapRes!6510 (and tp!421403 e!949139))))

(declare-fun mapKey!6510 () (_ BitVec 32))

(declare-fun mapRest!6510 () (Array (_ BitVec 32) List!15797))

(assert (=> mapNonEmpty!6510 (= mapRest!6509 (store mapRest!6510 mapKey!6510 mapValue!6510))))

(declare-fun setIsEmpty!8247 () Bool)

(assert (=> setIsEmpty!8247 setRes!8246))

(declare-fun setNonEmpty!8247 () Bool)

(declare-fun e!949140 () Bool)

(declare-fun setElem!8246 () Context!1270)

(declare-fun tp!421407 () Bool)

(assert (=> setNonEmpty!8247 (= setRes!8247 (and tp!421407 (inv!20959 setElem!8246) e!949140))))

(declare-fun mapDefault!6510 () List!15797)

(declare-fun setRest!8247 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8247 (= (_1!8083 (_1!8084 (h!21130 mapDefault!6510))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8246 true) setRest!8247))))

(declare-fun b!1484200 () Bool)

(declare-fun tp!421402 () Bool)

(assert (=> b!1484200 (= e!949140 tp!421402)))

(declare-fun condMapEmpty!6510 () Bool)

(assert (=> mapNonEmpty!6509 (= condMapEmpty!6510 (= mapRest!6509 ((as const (Array (_ BitVec 32) List!15797)) mapDefault!6510)))))

(declare-fun e!949141 () Bool)

(assert (=> mapNonEmpty!6509 (= tp!421343 (and e!949141 mapRes!6510))))

(declare-fun b!1484201 () Bool)

(declare-fun tp!421406 () Bool)

(assert (=> b!1484201 (= e!949141 (and setRes!8247 tp!421406))))

(declare-fun condSetEmpty!8247 () Bool)

(assert (=> b!1484201 (= condSetEmpty!8247 (= (_1!8083 (_1!8084 (h!21130 mapDefault!6510))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1484202 () Bool)

(declare-fun tp!421404 () Bool)

(assert (=> b!1484202 (= e!949139 (and setRes!8246 tp!421404))))

(declare-fun condSetEmpty!8246 () Bool)

(assert (=> b!1484202 (= condSetEmpty!8246 (= (_1!8083 (_1!8084 (h!21130 mapValue!6510))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun mapIsEmpty!6510 () Bool)

(assert (=> mapIsEmpty!6510 mapRes!6510))

(assert (= (and mapNonEmpty!6509 condMapEmpty!6510) mapIsEmpty!6510))

(assert (= (and mapNonEmpty!6509 (not condMapEmpty!6510)) mapNonEmpty!6510))

(assert (= (and b!1484202 condSetEmpty!8246) setIsEmpty!8247))

(assert (= (and b!1484202 (not condSetEmpty!8246)) setNonEmpty!8246))

(assert (= setNonEmpty!8246 b!1484199))

(assert (= (and mapNonEmpty!6510 ((_ is Cons!15729) mapValue!6510)) b!1484202))

(assert (= (and b!1484201 condSetEmpty!8247) setIsEmpty!8246))

(assert (= (and b!1484201 (not condSetEmpty!8247)) setNonEmpty!8247))

(assert (= setNonEmpty!8247 b!1484200))

(assert (= (and mapNonEmpty!6509 ((_ is Cons!15729) mapDefault!6510)) b!1484201))

(declare-fun m!1730910 () Bool)

(assert (=> setNonEmpty!8246 m!1730910))

(declare-fun m!1730912 () Bool)

(assert (=> mapNonEmpty!6510 m!1730912))

(declare-fun m!1730914 () Bool)

(assert (=> setNonEmpty!8247 m!1730914))

(declare-fun b!1484203 () Bool)

(declare-fun e!949143 () Bool)

(declare-fun tp!421409 () Bool)

(declare-fun tp!421410 () Bool)

(assert (=> b!1484203 (= e!949143 (and tp!421409 tp!421410))))

(assert (=> b!1483541 (= tp!421206 e!949143)))

(assert (= (and b!1483541 ((_ is Cons!15728) (exprs!1135 (_2!8088 (_1!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))))))) b!1484203))

(declare-fun e!949145 () Bool)

(assert (=> b!1483608 (= tp!421291 e!949145)))

(declare-fun setIsEmpty!8248 () Bool)

(declare-fun setRes!8248 () Bool)

(assert (=> setIsEmpty!8248 setRes!8248))

(declare-fun setElem!8248 () Context!1270)

(declare-fun e!949144 () Bool)

(declare-fun tp!421411 () Bool)

(declare-fun setNonEmpty!8248 () Bool)

(assert (=> setNonEmpty!8248 (= setRes!8248 (and tp!421411 (inv!20959 setElem!8248) e!949144))))

(declare-fun setRest!8248 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8248 (= (_2!8086 (h!21132 (t!137716 mapValue!6498))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8248 true) setRest!8248))))

(declare-fun b!1484204 () Bool)

(declare-fun tp!421412 () Bool)

(assert (=> b!1484204 (= e!949144 tp!421412)))

(declare-fun tp!421413 () Bool)

(declare-fun b!1484205 () Bool)

(declare-fun e!949146 () Bool)

(assert (=> b!1484205 (= e!949145 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 (t!137716 mapValue!6498))))) e!949146 tp_is_empty!6993 setRes!8248 tp!421413))))

(declare-fun condSetEmpty!8248 () Bool)

(assert (=> b!1484205 (= condSetEmpty!8248 (= (_2!8086 (h!21132 (t!137716 mapValue!6498))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1484206 () Bool)

(declare-fun tp!421414 () Bool)

(assert (=> b!1484206 (= e!949146 tp!421414)))

(assert (= b!1484205 b!1484206))

(assert (= (and b!1484205 condSetEmpty!8248) setIsEmpty!8248))

(assert (= (and b!1484205 (not condSetEmpty!8248)) setNonEmpty!8248))

(assert (= setNonEmpty!8248 b!1484204))

(assert (= (and b!1483608 ((_ is Cons!15731) (t!137716 mapValue!6498))) b!1484205))

(declare-fun m!1730916 () Bool)

(assert (=> setNonEmpty!8248 m!1730916))

(declare-fun m!1730918 () Bool)

(assert (=> b!1484205 m!1730918))

(declare-fun condSetEmpty!8249 () Bool)

(assert (=> setNonEmpty!8206 (= condSetEmpty!8249 (= setRest!8207 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8249 () Bool)

(assert (=> setNonEmpty!8206 (= tp!421183 setRes!8249)))

(declare-fun setIsEmpty!8249 () Bool)

(assert (=> setIsEmpty!8249 setRes!8249))

(declare-fun setElem!8249 () Context!1270)

(declare-fun tp!421416 () Bool)

(declare-fun setNonEmpty!8249 () Bool)

(declare-fun e!949147 () Bool)

(assert (=> setNonEmpty!8249 (= setRes!8249 (and tp!421416 (inv!20959 setElem!8249) e!949147))))

(declare-fun setRest!8249 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8249 (= setRest!8207 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8249 true) setRest!8249))))

(declare-fun b!1484207 () Bool)

(declare-fun tp!421415 () Bool)

(assert (=> b!1484207 (= e!949147 tp!421415)))

(assert (= (and setNonEmpty!8206 condSetEmpty!8249) setIsEmpty!8249))

(assert (= (and setNonEmpty!8206 (not condSetEmpty!8249)) setNonEmpty!8249))

(assert (= setNonEmpty!8249 b!1484207))

(declare-fun m!1730920 () Bool)

(assert (=> setNonEmpty!8249 m!1730920))

(declare-fun b!1484208 () Bool)

(declare-fun e!949148 () Bool)

(declare-fun tp!421417 () Bool)

(declare-fun tp!421418 () Bool)

(assert (=> b!1484208 (= e!949148 (and tp!421417 tp!421418))))

(assert (=> b!1483544 (= tp!421211 e!949148)))

(assert (= (and b!1483544 ((_ is Cons!15728) (exprs!1135 (_2!8088 (_1!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629)))))))))))) b!1484208))

(declare-fun b!1484213 () Bool)

(declare-fun e!949151 () Bool)

(declare-fun tp!421421 () Bool)

(assert (=> b!1484213 (= e!949151 (and tp_is_empty!6993 tp!421421))))

(assert (=> b!1483539 (= tp!421204 e!949151)))

(assert (= (and b!1483539 ((_ is Cons!15730) (innerList!5418 (xs!8113 (c!243104 totalInput!458))))) b!1484213))

(declare-fun b!1484214 () Bool)

(declare-fun e!949152 () Bool)

(declare-fun tp!421422 () Bool)

(declare-fun tp!421423 () Bool)

(assert (=> b!1484214 (= e!949152 (and tp!421422 tp!421423))))

(assert (=> b!1483580 (= tp!421253 e!949152)))

(assert (= (and b!1483580 ((_ is Cons!15728) (exprs!1135 (_1!8085 (_1!8086 (h!21132 mapDefault!6500)))))) b!1484214))

(declare-fun tp!421425 () Bool)

(declare-fun e!949154 () Bool)

(declare-fun b!1484215 () Bool)

(declare-fun tp!421424 () Bool)

(assert (=> b!1484215 (= e!949154 (and (inv!20946 (left!13251 (left!13251 (c!243104 totalInput!458)))) tp!421424 (inv!20946 (right!13581 (left!13251 (c!243104 totalInput!458)))) tp!421425))))

(declare-fun b!1484217 () Bool)

(declare-fun e!949153 () Bool)

(declare-fun tp!421426 () Bool)

(assert (=> b!1484217 (= e!949153 tp!421426)))

(declare-fun b!1484216 () Bool)

(assert (=> b!1484216 (= e!949154 (and (inv!20958 (xs!8113 (left!13251 (c!243104 totalInput!458)))) e!949153))))

(assert (=> b!1483537 (= tp!421202 (and (inv!20946 (left!13251 (c!243104 totalInput!458))) e!949154))))

(assert (= (and b!1483537 ((_ is Node!5358) (left!13251 (c!243104 totalInput!458)))) b!1484215))

(assert (= b!1484216 b!1484217))

(assert (= (and b!1483537 ((_ is Leaf!7962) (left!13251 (c!243104 totalInput!458)))) b!1484216))

(declare-fun m!1730922 () Bool)

(assert (=> b!1484215 m!1730922))

(declare-fun m!1730924 () Bool)

(assert (=> b!1484215 m!1730924))

(declare-fun m!1730926 () Bool)

(assert (=> b!1484216 m!1730926))

(assert (=> b!1483537 m!1730073))

(declare-fun e!949156 () Bool)

(declare-fun tp!421428 () Bool)

(declare-fun b!1484218 () Bool)

(declare-fun tp!421427 () Bool)

(assert (=> b!1484218 (= e!949156 (and (inv!20946 (left!13251 (right!13581 (c!243104 totalInput!458)))) tp!421427 (inv!20946 (right!13581 (right!13581 (c!243104 totalInput!458)))) tp!421428))))

(declare-fun b!1484220 () Bool)

(declare-fun e!949155 () Bool)

(declare-fun tp!421429 () Bool)

(assert (=> b!1484220 (= e!949155 tp!421429)))

(declare-fun b!1484219 () Bool)

(assert (=> b!1484219 (= e!949156 (and (inv!20958 (xs!8113 (right!13581 (c!243104 totalInput!458)))) e!949155))))

(assert (=> b!1483537 (= tp!421203 (and (inv!20946 (right!13581 (c!243104 totalInput!458))) e!949156))))

(assert (= (and b!1483537 ((_ is Node!5358) (right!13581 (c!243104 totalInput!458)))) b!1484218))

(assert (= b!1484219 b!1484220))

(assert (= (and b!1483537 ((_ is Leaf!7962) (right!13581 (c!243104 totalInput!458)))) b!1484219))

(declare-fun m!1730928 () Bool)

(assert (=> b!1484218 m!1730928))

(declare-fun m!1730930 () Bool)

(assert (=> b!1484218 m!1730930))

(declare-fun m!1730932 () Bool)

(assert (=> b!1484219 m!1730932))

(assert (=> b!1483537 m!1730075))

(declare-fun b!1484221 () Bool)

(declare-fun e!949157 () Bool)

(declare-fun tp!421430 () Bool)

(declare-fun tp!421431 () Bool)

(assert (=> b!1484221 (= e!949157 (and tp!421430 tp!421431))))

(assert (=> b!1483628 (= tp!421314 e!949157)))

(assert (= (and b!1483628 ((_ is Cons!15728) (exprs!1135 (_1!8085 (_1!8086 (h!21132 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))))))) b!1484221))

(declare-fun b!1484222 () Bool)

(declare-fun e!949158 () Bool)

(declare-fun tp!421432 () Bool)

(declare-fun tp!421433 () Bool)

(assert (=> b!1484222 (= e!949158 (and tp!421432 tp!421433))))

(assert (=> b!1483535 (= tp!421198 e!949158)))

(assert (= (and b!1483535 ((_ is Cons!15728) (exprs!1135 (_2!8088 (_1!8089 (h!21135 mapValue!6500)))))) b!1484222))

(declare-fun b!1484223 () Bool)

(declare-fun e!949159 () Bool)

(declare-fun tp!421434 () Bool)

(declare-fun tp!421435 () Bool)

(assert (=> b!1484223 (= e!949159 (and tp!421434 tp!421435))))

(assert (=> b!1483525 (= tp!421181 e!949159)))

(assert (= (and b!1483525 ((_ is Cons!15728) (exprs!1135 setElem!8206))) b!1484223))

(declare-fun b!1484224 () Bool)

(declare-fun e!949160 () Bool)

(declare-fun tp!421436 () Bool)

(declare-fun tp!421437 () Bool)

(assert (=> b!1484224 (= e!949160 (and tp!421436 tp!421437))))

(assert (=> b!1483569 (= tp!421240 e!949160)))

(assert (= (and b!1483569 ((_ is Cons!15728) (exprs!1135 setElem!8216))) b!1484224))

(declare-fun b!1484225 () Bool)

(declare-fun e!949161 () Bool)

(declare-fun setRes!8250 () Bool)

(declare-fun tp!421438 () Bool)

(assert (=> b!1484225 (= e!949161 (and setRes!8250 tp!421438))))

(declare-fun condSetEmpty!8250 () Bool)

(assert (=> b!1484225 (= condSetEmpty!8250 (= (_1!8083 (_1!8084 (h!21130 (t!137714 mapValue!6509)))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8250 () Bool)

(assert (=> setIsEmpty!8250 setRes!8250))

(declare-fun setNonEmpty!8250 () Bool)

(declare-fun e!949162 () Bool)

(declare-fun setElem!8250 () Context!1270)

(declare-fun tp!421440 () Bool)

(assert (=> setNonEmpty!8250 (= setRes!8250 (and tp!421440 (inv!20959 setElem!8250) e!949162))))

(declare-fun setRest!8250 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8250 (= (_1!8083 (_1!8084 (h!21130 (t!137714 mapValue!6509)))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8250 true) setRest!8250))))

(declare-fun b!1484226 () Bool)

(declare-fun tp!421439 () Bool)

(assert (=> b!1484226 (= e!949162 tp!421439)))

(assert (=> b!1483656 (= tp!421344 e!949161)))

(assert (= (and b!1484225 condSetEmpty!8250) setIsEmpty!8250))

(assert (= (and b!1484225 (not condSetEmpty!8250)) setNonEmpty!8250))

(assert (= setNonEmpty!8250 b!1484226))

(assert (= (and b!1483656 ((_ is Cons!15729) (t!137714 mapValue!6509))) b!1484225))

(declare-fun m!1730934 () Bool)

(assert (=> setNonEmpty!8250 m!1730934))

(declare-fun condSetEmpty!8251 () Bool)

(assert (=> setNonEmpty!8225 (= condSetEmpty!8251 (= setRest!8225 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8251 () Bool)

(assert (=> setNonEmpty!8225 (= tp!421285 setRes!8251)))

(declare-fun setIsEmpty!8251 () Bool)

(assert (=> setIsEmpty!8251 setRes!8251))

(declare-fun tp!421442 () Bool)

(declare-fun e!949163 () Bool)

(declare-fun setNonEmpty!8251 () Bool)

(declare-fun setElem!8251 () Context!1270)

(assert (=> setNonEmpty!8251 (= setRes!8251 (and tp!421442 (inv!20959 setElem!8251) e!949163))))

(declare-fun setRest!8251 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8251 (= setRest!8225 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8251 true) setRest!8251))))

(declare-fun b!1484227 () Bool)

(declare-fun tp!421441 () Bool)

(assert (=> b!1484227 (= e!949163 tp!421441)))

(assert (= (and setNonEmpty!8225 condSetEmpty!8251) setIsEmpty!8251))

(assert (= (and setNonEmpty!8225 (not condSetEmpty!8251)) setNonEmpty!8251))

(assert (= setNonEmpty!8251 b!1484227))

(declare-fun m!1730936 () Bool)

(assert (=> setNonEmpty!8251 m!1730936))

(declare-fun b!1484228 () Bool)

(declare-fun e!949164 () Bool)

(declare-fun tp!421443 () Bool)

(declare-fun tp!421444 () Bool)

(assert (=> b!1484228 (= e!949164 (and tp!421443 tp!421444))))

(assert (=> b!1483654 (= tp!421342 e!949164)))

(assert (= (and b!1483654 ((_ is Cons!15728) (exprs!1135 setElem!8235))) b!1484228))

(declare-fun e!949166 () Bool)

(assert (=> b!1483630 (= tp!421317 e!949166)))

(declare-fun setIsEmpty!8252 () Bool)

(declare-fun setRes!8252 () Bool)

(assert (=> setIsEmpty!8252 setRes!8252))

(declare-fun setNonEmpty!8252 () Bool)

(declare-fun e!949165 () Bool)

(declare-fun tp!421445 () Bool)

(declare-fun setElem!8252 () Context!1270)

(assert (=> setNonEmpty!8252 (= setRes!8252 (and tp!421445 (inv!20959 setElem!8252) e!949165))))

(declare-fun setRest!8252 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8252 (= (_2!8086 (h!21132 (t!137716 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8252 true) setRest!8252))))

(declare-fun b!1484229 () Bool)

(declare-fun tp!421446 () Bool)

(assert (=> b!1484229 (= e!949165 tp!421446)))

(declare-fun tp!421447 () Bool)

(declare-fun e!949167 () Bool)

(declare-fun b!1484230 () Bool)

(assert (=> b!1484230 (= e!949166 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 (t!137716 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))))))) e!949167 tp_is_empty!6993 setRes!8252 tp!421447))))

(declare-fun condSetEmpty!8252 () Bool)

(assert (=> b!1484230 (= condSetEmpty!8252 (= (_2!8086 (h!21132 (t!137716 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1484231 () Bool)

(declare-fun tp!421448 () Bool)

(assert (=> b!1484231 (= e!949167 tp!421448)))

(assert (= b!1484230 b!1484231))

(assert (= (and b!1484230 condSetEmpty!8252) setIsEmpty!8252))

(assert (= (and b!1484230 (not condSetEmpty!8252)) setNonEmpty!8252))

(assert (= setNonEmpty!8252 b!1484229))

(assert (= (and b!1483630 ((_ is Cons!15731) (t!137716 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))))) b!1484230))

(declare-fun m!1730938 () Bool)

(assert (=> setNonEmpty!8252 m!1730938))

(declare-fun m!1730940 () Bool)

(assert (=> b!1484230 m!1730940))

(declare-fun b!1484232 () Bool)

(declare-fun e!949168 () Bool)

(declare-fun tp!421449 () Bool)

(declare-fun tp!421450 () Bool)

(assert (=> b!1484232 (= e!949168 (and tp!421449 tp!421450))))

(assert (=> b!1483626 (= tp!421312 e!949168)))

(assert (= (and b!1483626 ((_ is Cons!15728) (exprs!1135 setElem!8229))) b!1484232))

(declare-fun condSetEmpty!8253 () Bool)

(assert (=> setNonEmpty!8210 (= condSetEmpty!8253 (= setRest!8210 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8253 () Bool)

(assert (=> setNonEmpty!8210 (= tp!421201 setRes!8253)))

(declare-fun setIsEmpty!8253 () Bool)

(assert (=> setIsEmpty!8253 setRes!8253))

(declare-fun setNonEmpty!8253 () Bool)

(declare-fun tp!421452 () Bool)

(declare-fun e!949169 () Bool)

(declare-fun setElem!8253 () Context!1270)

(assert (=> setNonEmpty!8253 (= setRes!8253 (and tp!421452 (inv!20959 setElem!8253) e!949169))))

(declare-fun setRest!8253 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8253 (= setRest!8210 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8253 true) setRest!8253))))

(declare-fun b!1484233 () Bool)

(declare-fun tp!421451 () Bool)

(assert (=> b!1484233 (= e!949169 tp!421451)))

(assert (= (and setNonEmpty!8210 condSetEmpty!8253) setIsEmpty!8253))

(assert (= (and setNonEmpty!8210 (not condSetEmpty!8253)) setNonEmpty!8253))

(assert (= setNonEmpty!8253 b!1484233))

(declare-fun m!1730942 () Bool)

(assert (=> setNonEmpty!8253 m!1730942))

(declare-fun condSetEmpty!8254 () Bool)

(assert (=> setNonEmpty!8207 (= condSetEmpty!8254 (= setRest!8206 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8254 () Bool)

(assert (=> setNonEmpty!8207 (= tp!421184 setRes!8254)))

(declare-fun setIsEmpty!8254 () Bool)

(assert (=> setIsEmpty!8254 setRes!8254))

(declare-fun tp!421454 () Bool)

(declare-fun setNonEmpty!8254 () Bool)

(declare-fun setElem!8254 () Context!1270)

(declare-fun e!949170 () Bool)

(assert (=> setNonEmpty!8254 (= setRes!8254 (and tp!421454 (inv!20959 setElem!8254) e!949170))))

(declare-fun setRest!8254 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8254 (= setRest!8206 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8254 true) setRest!8254))))

(declare-fun b!1484234 () Bool)

(declare-fun tp!421453 () Bool)

(assert (=> b!1484234 (= e!949170 tp!421453)))

(assert (= (and setNonEmpty!8207 condSetEmpty!8254) setIsEmpty!8254))

(assert (= (and setNonEmpty!8207 (not condSetEmpty!8254)) setNonEmpty!8254))

(assert (= setNonEmpty!8254 b!1484234))

(declare-fun m!1730944 () Bool)

(assert (=> setNonEmpty!8254 m!1730944))

(declare-fun condSetEmpty!8255 () Bool)

(assert (=> setNonEmpty!8237 (= condSetEmpty!8255 (= setRest!8237 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8255 () Bool)

(assert (=> setNonEmpty!8237 (= tp!421351 setRes!8255)))

(declare-fun setIsEmpty!8255 () Bool)

(assert (=> setIsEmpty!8255 setRes!8255))

(declare-fun setNonEmpty!8255 () Bool)

(declare-fun tp!421456 () Bool)

(declare-fun setElem!8255 () Context!1270)

(declare-fun e!949171 () Bool)

(assert (=> setNonEmpty!8255 (= setRes!8255 (and tp!421456 (inv!20959 setElem!8255) e!949171))))

(declare-fun setRest!8255 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8255 (= setRest!8237 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8255 true) setRest!8255))))

(declare-fun b!1484235 () Bool)

(declare-fun tp!421455 () Bool)

(assert (=> b!1484235 (= e!949171 tp!421455)))

(assert (= (and setNonEmpty!8237 condSetEmpty!8255) setIsEmpty!8255))

(assert (= (and setNonEmpty!8237 (not condSetEmpty!8255)) setNonEmpty!8255))

(assert (= setNonEmpty!8255 b!1484235))

(declare-fun m!1730946 () Bool)

(assert (=> setNonEmpty!8255 m!1730946))

(declare-fun b!1484236 () Bool)

(declare-fun e!949172 () Bool)

(declare-fun tp!421457 () Bool)

(assert (=> b!1484236 (= e!949172 (and tp_is_empty!6993 tp!421457))))

(assert (=> b!1483505 (= tp!421153 e!949172)))

(assert (= (and b!1483505 ((_ is Cons!15730) (innerList!5418 (xs!8113 (c!243104 input!1102))))) b!1484236))

(declare-fun b!1484237 () Bool)

(declare-fun e!949173 () Bool)

(declare-fun tp!421458 () Bool)

(declare-fun tp!421459 () Bool)

(assert (=> b!1484237 (= e!949173 (and tp!421458 tp!421459))))

(assert (=> b!1483567 (= tp!421237 e!949173)))

(assert (= (and b!1483567 ((_ is Cons!15728) (exprs!1135 setElem!8215))) b!1484237))

(declare-fun b!1484238 () Bool)

(declare-fun e!949174 () Bool)

(declare-fun tp!421460 () Bool)

(declare-fun tp!421461 () Bool)

(assert (=> b!1484238 (= e!949174 (and tp!421460 tp!421461))))

(assert (=> b!1483603 (= tp!421283 e!949174)))

(assert (= (and b!1483603 ((_ is Cons!15728) (exprs!1135 setElem!8225))) b!1484238))

(declare-fun b!1484241 () Bool)

(declare-fun b_free!38451 () Bool)

(declare-fun b_next!39155 () Bool)

(assert (=> b!1484241 (= b_free!38451 (not b_next!39155))))

(declare-fun tp!421464 () Bool)

(declare-fun b_and!103169 () Bool)

(assert (=> b!1484241 (= tp!421464 b_and!103169)))

(declare-fun b_free!38453 () Bool)

(declare-fun b_next!39157 () Bool)

(assert (=> b!1484241 (= b_free!38453 (not b_next!39157))))

(declare-fun tp!421462 () Bool)

(declare-fun b_and!103171 () Bool)

(assert (=> b!1484241 (= tp!421462 b_and!103171)))

(declare-fun e!949175 () Bool)

(assert (=> b!1484241 (= e!949175 (and tp!421464 tp!421462))))

(declare-fun e!949178 () Bool)

(declare-fun b!1484240 () Bool)

(declare-fun tp!421463 () Bool)

(assert (=> b!1484240 (= e!949178 (and tp!421463 (inv!20942 (tag!3067 (h!21136 (t!137720 (t!137720 rules!1640))))) (inv!20953 (transformation!2803 (h!21136 (t!137720 (t!137720 rules!1640))))) e!949175))))

(declare-fun b!1484239 () Bool)

(declare-fun e!949177 () Bool)

(declare-fun tp!421465 () Bool)

(assert (=> b!1484239 (= e!949177 (and e!949178 tp!421465))))

(assert (=> b!1483557 (= tp!421229 e!949177)))

(assert (= b!1484240 b!1484241))

(assert (= b!1484239 b!1484240))

(assert (= (and b!1483557 ((_ is Cons!15735) (t!137720 (t!137720 rules!1640)))) b!1484239))

(declare-fun m!1730948 () Bool)

(assert (=> b!1484240 m!1730948))

(declare-fun m!1730950 () Bool)

(assert (=> b!1484240 m!1730950))

(declare-fun b!1484244 () Bool)

(declare-fun e!949179 () Bool)

(declare-fun tp!421467 () Bool)

(assert (=> b!1484244 (= e!949179 tp!421467)))

(assert (=> b!1483624 (= tp!421307 e!949179)))

(declare-fun b!1484243 () Bool)

(declare-fun tp!421470 () Bool)

(declare-fun tp!421466 () Bool)

(assert (=> b!1484243 (= e!949179 (and tp!421470 tp!421466))))

(declare-fun b!1484242 () Bool)

(assert (=> b!1484242 (= e!949179 tp_is_empty!6993)))

(declare-fun b!1484245 () Bool)

(declare-fun tp!421469 () Bool)

(declare-fun tp!421468 () Bool)

(assert (=> b!1484245 (= e!949179 (and tp!421469 tp!421468))))

(assert (= (and b!1483624 ((_ is ElementMatch!4117) (reg!4446 (regex!2803 (h!21136 rules!1640))))) b!1484242))

(assert (= (and b!1483624 ((_ is Concat!7010) (reg!4446 (regex!2803 (h!21136 rules!1640))))) b!1484243))

(assert (= (and b!1483624 ((_ is Star!4117) (reg!4446 (regex!2803 (h!21136 rules!1640))))) b!1484244))

(assert (= (and b!1483624 ((_ is Union!4117) (reg!4446 (regex!2803 (h!21136 rules!1640))))) b!1484245))

(declare-fun b!1484246 () Bool)

(declare-fun e!949180 () Bool)

(declare-fun tp!421471 () Bool)

(declare-fun tp!421472 () Bool)

(assert (=> b!1484246 (= e!949180 (and tp!421471 tp!421472))))

(assert (=> b!1483586 (= tp!421257 e!949180)))

(assert (= (and b!1483586 ((_ is Cons!15728) (exprs!1135 setElem!8220))) b!1484246))

(declare-fun tp!421473 () Bool)

(declare-fun b!1484247 () Bool)

(declare-fun tp!421474 () Bool)

(declare-fun e!949182 () Bool)

(assert (=> b!1484247 (= e!949182 (and (inv!20946 (left!13251 (left!13251 (c!243104 input!1102)))) tp!421473 (inv!20946 (right!13581 (left!13251 (c!243104 input!1102)))) tp!421474))))

(declare-fun b!1484249 () Bool)

(declare-fun e!949181 () Bool)

(declare-fun tp!421475 () Bool)

(assert (=> b!1484249 (= e!949181 tp!421475)))

(declare-fun b!1484248 () Bool)

(assert (=> b!1484248 (= e!949182 (and (inv!20958 (xs!8113 (left!13251 (c!243104 input!1102)))) e!949181))))

(assert (=> b!1483503 (= tp!421151 (and (inv!20946 (left!13251 (c!243104 input!1102))) e!949182))))

(assert (= (and b!1483503 ((_ is Node!5358) (left!13251 (c!243104 input!1102)))) b!1484247))

(assert (= b!1484248 b!1484249))

(assert (= (and b!1483503 ((_ is Leaf!7962) (left!13251 (c!243104 input!1102)))) b!1484248))

(declare-fun m!1730952 () Bool)

(assert (=> b!1484247 m!1730952))

(declare-fun m!1730954 () Bool)

(assert (=> b!1484247 m!1730954))

(declare-fun m!1730956 () Bool)

(assert (=> b!1484248 m!1730956))

(assert (=> b!1483503 m!1730053))

(declare-fun tp!421477 () Bool)

(declare-fun tp!421476 () Bool)

(declare-fun b!1484250 () Bool)

(declare-fun e!949184 () Bool)

(assert (=> b!1484250 (= e!949184 (and (inv!20946 (left!13251 (right!13581 (c!243104 input!1102)))) tp!421476 (inv!20946 (right!13581 (right!13581 (c!243104 input!1102)))) tp!421477))))

(declare-fun b!1484252 () Bool)

(declare-fun e!949183 () Bool)

(declare-fun tp!421478 () Bool)

(assert (=> b!1484252 (= e!949183 tp!421478)))

(declare-fun b!1484251 () Bool)

(assert (=> b!1484251 (= e!949184 (and (inv!20958 (xs!8113 (right!13581 (c!243104 input!1102)))) e!949183))))

(assert (=> b!1483503 (= tp!421152 (and (inv!20946 (right!13581 (c!243104 input!1102))) e!949184))))

(assert (= (and b!1483503 ((_ is Node!5358) (right!13581 (c!243104 input!1102)))) b!1484250))

(assert (= b!1484251 b!1484252))

(assert (= (and b!1483503 ((_ is Leaf!7962) (right!13581 (c!243104 input!1102)))) b!1484251))

(declare-fun m!1730958 () Bool)

(assert (=> b!1484250 m!1730958))

(declare-fun m!1730960 () Bool)

(assert (=> b!1484250 m!1730960))

(declare-fun m!1730962 () Bool)

(assert (=> b!1484251 m!1730962))

(assert (=> b!1483503 m!1730055))

(declare-fun b!1484253 () Bool)

(declare-fun e!949185 () Bool)

(declare-fun tp!421479 () Bool)

(declare-fun tp!421480 () Bool)

(assert (=> b!1484253 (= e!949185 (and tp!421479 tp!421480))))

(assert (=> b!1483602 (= tp!421288 e!949185)))

(assert (= (and b!1483602 ((_ is Cons!15728) (exprs!1135 (_1!8085 (_1!8086 (h!21132 mapDefault!6506)))))) b!1484253))

(declare-fun b!1484256 () Bool)

(declare-fun e!949186 () Bool)

(declare-fun tp!421482 () Bool)

(assert (=> b!1484256 (= e!949186 tp!421482)))

(assert (=> b!1483584 (= tp!421259 e!949186)))

(declare-fun b!1484255 () Bool)

(declare-fun tp!421485 () Bool)

(declare-fun tp!421481 () Bool)

(assert (=> b!1484255 (= e!949186 (and tp!421485 tp!421481))))

(declare-fun b!1484254 () Bool)

(assert (=> b!1484254 (= e!949186 tp_is_empty!6993)))

(declare-fun b!1484257 () Bool)

(declare-fun tp!421484 () Bool)

(declare-fun tp!421483 () Bool)

(assert (=> b!1484257 (= e!949186 (and tp!421484 tp!421483))))

(assert (= (and b!1483584 ((_ is ElementMatch!4117) (_1!8088 (_1!8089 (h!21135 mapDefault!6498))))) b!1484254))

(assert (= (and b!1483584 ((_ is Concat!7010) (_1!8088 (_1!8089 (h!21135 mapDefault!6498))))) b!1484255))

(assert (= (and b!1483584 ((_ is Star!4117) (_1!8088 (_1!8089 (h!21135 mapDefault!6498))))) b!1484256))

(assert (= (and b!1483584 ((_ is Union!4117) (_1!8088 (_1!8089 (h!21135 mapDefault!6498))))) b!1484257))

(declare-fun e!949189 () Bool)

(declare-fun setElem!8256 () Context!1270)

(declare-fun setNonEmpty!8256 () Bool)

(declare-fun setRes!8256 () Bool)

(declare-fun tp!421490 () Bool)

(assert (=> setNonEmpty!8256 (= setRes!8256 (and tp!421490 (inv!20959 setElem!8256) e!949189))))

(declare-fun setRest!8256 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8256 (= (_2!8089 (h!21135 (t!137719 mapDefault!6498))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8256 true) setRest!8256))))

(declare-fun b!1484258 () Bool)

(declare-fun e!949187 () Bool)

(declare-fun tp!421488 () Bool)

(declare-fun tp!421489 () Bool)

(declare-fun e!949188 () Bool)

(assert (=> b!1484258 (= e!949187 (and tp!421488 (inv!20959 (_2!8088 (_1!8089 (h!21135 (t!137719 mapDefault!6498))))) e!949188 tp_is_empty!6993 setRes!8256 tp!421489))))

(declare-fun condSetEmpty!8256 () Bool)

(assert (=> b!1484258 (= condSetEmpty!8256 (= (_2!8089 (h!21135 (t!137719 mapDefault!6498))) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> b!1483584 (= tp!421260 e!949187)))

(declare-fun b!1484259 () Bool)

(declare-fun tp!421487 () Bool)

(assert (=> b!1484259 (= e!949188 tp!421487)))

(declare-fun b!1484260 () Bool)

(declare-fun tp!421486 () Bool)

(assert (=> b!1484260 (= e!949189 tp!421486)))

(declare-fun setIsEmpty!8256 () Bool)

(assert (=> setIsEmpty!8256 setRes!8256))

(assert (= b!1484258 b!1484259))

(assert (= (and b!1484258 condSetEmpty!8256) setIsEmpty!8256))

(assert (= (and b!1484258 (not condSetEmpty!8256)) setNonEmpty!8256))

(assert (= setNonEmpty!8256 b!1484260))

(assert (= (and b!1483584 ((_ is Cons!15734) (t!137719 mapDefault!6498))) b!1484258))

(declare-fun m!1730964 () Bool)

(assert (=> setNonEmpty!8256 m!1730964))

(declare-fun m!1730966 () Bool)

(assert (=> b!1484258 m!1730966))

(declare-fun e!949191 () Bool)

(assert (=> b!1483579 (= tp!421252 e!949191)))

(declare-fun setIsEmpty!8257 () Bool)

(declare-fun setRes!8257 () Bool)

(assert (=> setIsEmpty!8257 setRes!8257))

(declare-fun setNonEmpty!8257 () Bool)

(declare-fun e!949190 () Bool)

(declare-fun setElem!8257 () Context!1270)

(declare-fun tp!421491 () Bool)

(assert (=> setNonEmpty!8257 (= setRes!8257 (and tp!421491 (inv!20959 setElem!8257) e!949190))))

(declare-fun setRest!8257 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8257 (= (_2!8086 (h!21132 (t!137716 mapDefault!6500))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8257 true) setRest!8257))))

(declare-fun b!1484261 () Bool)

(declare-fun tp!421492 () Bool)

(assert (=> b!1484261 (= e!949190 tp!421492)))

(declare-fun e!949192 () Bool)

(declare-fun b!1484262 () Bool)

(declare-fun tp!421493 () Bool)

(assert (=> b!1484262 (= e!949191 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 (t!137716 mapDefault!6500))))) e!949192 tp_is_empty!6993 setRes!8257 tp!421493))))

(declare-fun condSetEmpty!8257 () Bool)

(assert (=> b!1484262 (= condSetEmpty!8257 (= (_2!8086 (h!21132 (t!137716 mapDefault!6500))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1484263 () Bool)

(declare-fun tp!421494 () Bool)

(assert (=> b!1484263 (= e!949192 tp!421494)))

(assert (= b!1484262 b!1484263))

(assert (= (and b!1484262 condSetEmpty!8257) setIsEmpty!8257))

(assert (= (and b!1484262 (not condSetEmpty!8257)) setNonEmpty!8257))

(assert (= setNonEmpty!8257 b!1484261))

(assert (= (and b!1483579 ((_ is Cons!15731) (t!137716 mapDefault!6500))) b!1484262))

(declare-fun m!1730968 () Bool)

(assert (=> setNonEmpty!8257 m!1730968))

(declare-fun m!1730970 () Bool)

(assert (=> b!1484262 m!1730970))

(declare-fun condSetEmpty!8258 () Bool)

(assert (=> setNonEmpty!8219 (= condSetEmpty!8258 (= setRest!8219 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8258 () Bool)

(assert (=> setNonEmpty!8219 (= tp!421250 setRes!8258)))

(declare-fun setIsEmpty!8258 () Bool)

(assert (=> setIsEmpty!8258 setRes!8258))

(declare-fun setNonEmpty!8258 () Bool)

(declare-fun setElem!8258 () Context!1270)

(declare-fun tp!421496 () Bool)

(declare-fun e!949193 () Bool)

(assert (=> setNonEmpty!8258 (= setRes!8258 (and tp!421496 (inv!20959 setElem!8258) e!949193))))

(declare-fun setRest!8258 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8258 (= setRest!8219 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8258 true) setRest!8258))))

(declare-fun b!1484264 () Bool)

(declare-fun tp!421495 () Bool)

(assert (=> b!1484264 (= e!949193 tp!421495)))

(assert (= (and setNonEmpty!8219 condSetEmpty!8258) setIsEmpty!8258))

(assert (= (and setNonEmpty!8219 (not condSetEmpty!8258)) setNonEmpty!8258))

(assert (= setNonEmpty!8258 b!1484264))

(declare-fun m!1730972 () Bool)

(assert (=> setNonEmpty!8258 m!1730972))

(declare-fun b!1484265 () Bool)

(declare-fun e!949194 () Bool)

(declare-fun tp!421497 () Bool)

(declare-fun tp!421498 () Bool)

(assert (=> b!1484265 (= e!949194 (and tp!421497 tp!421498))))

(assert (=> b!1483611 (= tp!421294 e!949194)))

(assert (= (and b!1483611 ((_ is Cons!15728) (exprs!1135 setElem!8228))) b!1484265))

(declare-fun mapIsEmpty!6511 () Bool)

(declare-fun mapRes!6511 () Bool)

(assert (=> mapIsEmpty!6511 mapRes!6511))

(declare-fun setElem!8259 () Context!1270)

(declare-fun setRes!8260 () Bool)

(declare-fun e!949200 () Bool)

(declare-fun tp!421505 () Bool)

(declare-fun setNonEmpty!8260 () Bool)

(assert (=> setNonEmpty!8260 (= setRes!8260 (and tp!421505 (inv!20959 setElem!8259) e!949200))))

(declare-fun mapValue!6511 () List!15799)

(declare-fun setRest!8260 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8260 (= (_2!8086 (h!21132 mapValue!6511)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8259 true) setRest!8260))))

(declare-fun setIsEmpty!8259 () Bool)

(assert (=> setIsEmpty!8259 setRes!8260))

(declare-fun tp!421500 () Bool)

(declare-fun e!949196 () Bool)

(declare-fun b!1484266 () Bool)

(declare-fun e!949197 () Bool)

(assert (=> b!1484266 (= e!949197 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 mapValue!6511)))) e!949196 tp_is_empty!6993 setRes!8260 tp!421500))))

(declare-fun condSetEmpty!8259 () Bool)

(assert (=> b!1484266 (= condSetEmpty!8259 (= (_2!8086 (h!21132 mapValue!6511)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1484267 () Bool)

(declare-fun e!949195 () Bool)

(declare-fun tp!421507 () Bool)

(assert (=> b!1484267 (= e!949195 tp!421507)))

(declare-fun setIsEmpty!8260 () Bool)

(declare-fun setRes!8259 () Bool)

(assert (=> setIsEmpty!8260 setRes!8259))

(declare-fun b!1484268 () Bool)

(declare-fun tp!421502 () Bool)

(assert (=> b!1484268 (= e!949200 tp!421502)))

(declare-fun condMapEmpty!6511 () Bool)

(declare-fun mapDefault!6511 () List!15799)

(assert (=> mapNonEmpty!6506 (= condMapEmpty!6511 (= mapRest!6506 ((as const (Array (_ BitVec 32) List!15799)) mapDefault!6511)))))

(declare-fun e!949199 () Bool)

(assert (=> mapNonEmpty!6506 (= tp!421280 (and e!949199 mapRes!6511))))

(declare-fun setNonEmpty!8259 () Bool)

(declare-fun setElem!8260 () Context!1270)

(declare-fun e!949198 () Bool)

(declare-fun tp!421504 () Bool)

(assert (=> setNonEmpty!8259 (= setRes!8259 (and tp!421504 (inv!20959 setElem!8260) e!949198))))

(declare-fun setRest!8259 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8259 (= (_2!8086 (h!21132 mapDefault!6511)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8260 true) setRest!8259))))

(declare-fun b!1484269 () Bool)

(declare-fun tp!421503 () Bool)

(assert (=> b!1484269 (= e!949198 tp!421503)))

(declare-fun b!1484270 () Bool)

(declare-fun tp!421506 () Bool)

(assert (=> b!1484270 (= e!949199 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 mapDefault!6511)))) e!949195 tp_is_empty!6993 setRes!8259 tp!421506))))

(declare-fun condSetEmpty!8260 () Bool)

(assert (=> b!1484270 (= condSetEmpty!8260 (= (_2!8086 (h!21132 mapDefault!6511)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun mapNonEmpty!6511 () Bool)

(declare-fun tp!421499 () Bool)

(assert (=> mapNonEmpty!6511 (= mapRes!6511 (and tp!421499 e!949197))))

(declare-fun mapRest!6511 () (Array (_ BitVec 32) List!15799))

(declare-fun mapKey!6511 () (_ BitVec 32))

(assert (=> mapNonEmpty!6511 (= mapRest!6506 (store mapRest!6511 mapKey!6511 mapValue!6511))))

(declare-fun b!1484271 () Bool)

(declare-fun tp!421501 () Bool)

(assert (=> b!1484271 (= e!949196 tp!421501)))

(assert (= (and mapNonEmpty!6506 condMapEmpty!6511) mapIsEmpty!6511))

(assert (= (and mapNonEmpty!6506 (not condMapEmpty!6511)) mapNonEmpty!6511))

(assert (= b!1484266 b!1484271))

(assert (= (and b!1484266 condSetEmpty!8259) setIsEmpty!8259))

(assert (= (and b!1484266 (not condSetEmpty!8259)) setNonEmpty!8260))

(assert (= setNonEmpty!8260 b!1484268))

(assert (= (and mapNonEmpty!6511 ((_ is Cons!15731) mapValue!6511)) b!1484266))

(assert (= b!1484270 b!1484267))

(assert (= (and b!1484270 condSetEmpty!8260) setIsEmpty!8260))

(assert (= (and b!1484270 (not condSetEmpty!8260)) setNonEmpty!8259))

(assert (= setNonEmpty!8259 b!1484269))

(assert (= (and mapNonEmpty!6506 ((_ is Cons!15731) mapDefault!6511)) b!1484270))

(declare-fun m!1730974 () Bool)

(assert (=> setNonEmpty!8259 m!1730974))

(declare-fun m!1730976 () Bool)

(assert (=> b!1484266 m!1730976))

(declare-fun m!1730978 () Bool)

(assert (=> b!1484270 m!1730978))

(declare-fun m!1730980 () Bool)

(assert (=> mapNonEmpty!6511 m!1730980))

(declare-fun m!1730982 () Bool)

(assert (=> setNonEmpty!8260 m!1730982))

(declare-fun b!1484272 () Bool)

(declare-fun e!949201 () Bool)

(declare-fun tp!421508 () Bool)

(declare-fun tp!421509 () Bool)

(assert (=> b!1484272 (= e!949201 (and tp!421508 tp!421509))))

(assert (=> b!1483604 (= tp!421284 e!949201)))

(assert (= (and b!1483604 ((_ is Cons!15728) (exprs!1135 setElem!8226))) b!1484272))

(declare-fun b!1484275 () Bool)

(declare-fun e!949202 () Bool)

(declare-fun tp!421511 () Bool)

(assert (=> b!1484275 (= e!949202 tp!421511)))

(assert (=> b!1483558 (= tp!421227 e!949202)))

(declare-fun b!1484274 () Bool)

(declare-fun tp!421514 () Bool)

(declare-fun tp!421510 () Bool)

(assert (=> b!1484274 (= e!949202 (and tp!421514 tp!421510))))

(declare-fun b!1484273 () Bool)

(assert (=> b!1484273 (= e!949202 tp_is_empty!6993)))

(declare-fun b!1484276 () Bool)

(declare-fun tp!421513 () Bool)

(declare-fun tp!421512 () Bool)

(assert (=> b!1484276 (= e!949202 (and tp!421513 tp!421512))))

(assert (= (and b!1483558 ((_ is ElementMatch!4117) (regex!2803 (h!21136 (t!137720 rules!1640))))) b!1484273))

(assert (= (and b!1483558 ((_ is Concat!7010) (regex!2803 (h!21136 (t!137720 rules!1640))))) b!1484274))

(assert (= (and b!1483558 ((_ is Star!4117) (regex!2803 (h!21136 (t!137720 rules!1640))))) b!1484275))

(assert (= (and b!1483558 ((_ is Union!4117) (regex!2803 (h!21136 (t!137720 rules!1640))))) b!1484276))

(declare-fun b!1484279 () Bool)

(declare-fun e!949203 () Bool)

(declare-fun tp!421516 () Bool)

(assert (=> b!1484279 (= e!949203 tp!421516)))

(assert (=> b!1483523 (= tp!421177 e!949203)))

(declare-fun b!1484278 () Bool)

(declare-fun tp!421519 () Bool)

(declare-fun tp!421515 () Bool)

(assert (=> b!1484278 (= e!949203 (and tp!421519 tp!421515))))

(declare-fun b!1484277 () Bool)

(assert (=> b!1484277 (= e!949203 tp_is_empty!6993)))

(declare-fun b!1484280 () Bool)

(declare-fun tp!421518 () Bool)

(declare-fun tp!421517 () Bool)

(assert (=> b!1484280 (= e!949203 (and tp!421518 tp!421517))))

(assert (= (and b!1483523 ((_ is ElementMatch!4117) (_1!8088 (_1!8089 (h!21135 mapValue!6503))))) b!1484277))

(assert (= (and b!1483523 ((_ is Concat!7010) (_1!8088 (_1!8089 (h!21135 mapValue!6503))))) b!1484278))

(assert (= (and b!1483523 ((_ is Star!4117) (_1!8088 (_1!8089 (h!21135 mapValue!6503))))) b!1484279))

(assert (= (and b!1483523 ((_ is Union!4117) (_1!8088 (_1!8089 (h!21135 mapValue!6503))))) b!1484280))

(declare-fun setRes!8261 () Bool)

(declare-fun setNonEmpty!8261 () Bool)

(declare-fun tp!421524 () Bool)

(declare-fun setElem!8261 () Context!1270)

(declare-fun e!949206 () Bool)

(assert (=> setNonEmpty!8261 (= setRes!8261 (and tp!421524 (inv!20959 setElem!8261) e!949206))))

(declare-fun setRest!8261 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8261 (= (_2!8089 (h!21135 (t!137719 mapValue!6503))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8261 true) setRest!8261))))

(declare-fun e!949205 () Bool)

(declare-fun e!949204 () Bool)

(declare-fun tp!421523 () Bool)

(declare-fun tp!421522 () Bool)

(declare-fun b!1484281 () Bool)

(assert (=> b!1484281 (= e!949204 (and tp!421522 (inv!20959 (_2!8088 (_1!8089 (h!21135 (t!137719 mapValue!6503))))) e!949205 tp_is_empty!6993 setRes!8261 tp!421523))))

(declare-fun condSetEmpty!8261 () Bool)

(assert (=> b!1484281 (= condSetEmpty!8261 (= (_2!8089 (h!21135 (t!137719 mapValue!6503))) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> b!1483523 (= tp!421186 e!949204)))

(declare-fun b!1484282 () Bool)

(declare-fun tp!421521 () Bool)

(assert (=> b!1484282 (= e!949205 tp!421521)))

(declare-fun b!1484283 () Bool)

(declare-fun tp!421520 () Bool)

(assert (=> b!1484283 (= e!949206 tp!421520)))

(declare-fun setIsEmpty!8261 () Bool)

(assert (=> setIsEmpty!8261 setRes!8261))

(assert (= b!1484281 b!1484282))

(assert (= (and b!1484281 condSetEmpty!8261) setIsEmpty!8261))

(assert (= (and b!1484281 (not condSetEmpty!8261)) setNonEmpty!8261))

(assert (= setNonEmpty!8261 b!1484283))

(assert (= (and b!1483523 ((_ is Cons!15734) (t!137719 mapValue!6503))) b!1484281))

(declare-fun m!1730984 () Bool)

(assert (=> setNonEmpty!8261 m!1730984))

(declare-fun m!1730986 () Bool)

(assert (=> b!1484281 m!1730986))

(declare-fun b!1484284 () Bool)

(declare-fun e!949207 () Bool)

(declare-fun setRes!8262 () Bool)

(declare-fun tp!421525 () Bool)

(assert (=> b!1484284 (= e!949207 (and setRes!8262 tp!421525))))

(declare-fun condSetEmpty!8262 () Bool)

(assert (=> b!1484284 (= condSetEmpty!8262 (= (_1!8083 (_1!8084 (h!21130 (t!137714 mapValue!6499)))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8262 () Bool)

(assert (=> setIsEmpty!8262 setRes!8262))

(declare-fun setElem!8262 () Context!1270)

(declare-fun e!949208 () Bool)

(declare-fun setNonEmpty!8262 () Bool)

(declare-fun tp!421527 () Bool)

(assert (=> setNonEmpty!8262 (= setRes!8262 (and tp!421527 (inv!20959 setElem!8262) e!949208))))

(declare-fun setRest!8262 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8262 (= (_1!8083 (_1!8084 (h!21130 (t!137714 mapValue!6499)))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8262 true) setRest!8262))))

(declare-fun b!1484285 () Bool)

(declare-fun tp!421526 () Bool)

(assert (=> b!1484285 (= e!949208 tp!421526)))

(assert (=> b!1483657 (= tp!421349 e!949207)))

(assert (= (and b!1484284 condSetEmpty!8262) setIsEmpty!8262))

(assert (= (and b!1484284 (not condSetEmpty!8262)) setNonEmpty!8262))

(assert (= setNonEmpty!8262 b!1484285))

(assert (= (and b!1483657 ((_ is Cons!15729) (t!137714 mapValue!6499))) b!1484284))

(declare-fun m!1730988 () Bool)

(assert (=> setNonEmpty!8262 m!1730988))

(declare-fun condSetEmpty!8263 () Bool)

(assert (=> setNonEmpty!8230 (= condSetEmpty!8263 (= setRest!8230 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8263 () Bool)

(assert (=> setNonEmpty!8230 (= tp!421315 setRes!8263)))

(declare-fun setIsEmpty!8263 () Bool)

(assert (=> setIsEmpty!8263 setRes!8263))

(declare-fun tp!421529 () Bool)

(declare-fun setNonEmpty!8263 () Bool)

(declare-fun setElem!8263 () Context!1270)

(declare-fun e!949209 () Bool)

(assert (=> setNonEmpty!8263 (= setRes!8263 (and tp!421529 (inv!20959 setElem!8263) e!949209))))

(declare-fun setRest!8263 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8263 (= setRest!8230 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8263 true) setRest!8263))))

(declare-fun b!1484286 () Bool)

(declare-fun tp!421528 () Bool)

(assert (=> b!1484286 (= e!949209 tp!421528)))

(assert (= (and setNonEmpty!8230 condSetEmpty!8263) setIsEmpty!8263))

(assert (= (and setNonEmpty!8230 (not condSetEmpty!8263)) setNonEmpty!8263))

(assert (= setNonEmpty!8263 b!1484286))

(declare-fun m!1730990 () Bool)

(assert (=> setNonEmpty!8263 m!1730990))

(declare-fun b!1484287 () Bool)

(declare-fun e!949210 () Bool)

(declare-fun tp!421530 () Bool)

(declare-fun tp!421531 () Bool)

(assert (=> b!1484287 (= e!949210 (and tp!421530 tp!421531))))

(assert (=> b!1483653 (= tp!421345 e!949210)))

(assert (= (and b!1483653 ((_ is Cons!15728) (exprs!1135 setElem!8236))) b!1484287))

(declare-fun b!1484288 () Bool)

(declare-fun e!949211 () Bool)

(declare-fun tp!421532 () Bool)

(declare-fun tp!421533 () Bool)

(assert (=> b!1484288 (= e!949211 (and tp!421532 tp!421533))))

(assert (=> b!1483542 (= tp!421205 e!949211)))

(assert (= (and b!1483542 ((_ is Cons!15728) (exprs!1135 setElem!8211))) b!1484288))

(declare-fun b!1484291 () Bool)

(declare-fun e!949212 () Bool)

(declare-fun tp!421535 () Bool)

(assert (=> b!1484291 (= e!949212 tp!421535)))

(assert (=> b!1483522 (= tp!421185 e!949212)))

(declare-fun b!1484290 () Bool)

(declare-fun tp!421538 () Bool)

(declare-fun tp!421534 () Bool)

(assert (=> b!1484290 (= e!949212 (and tp!421538 tp!421534))))

(declare-fun b!1484289 () Bool)

(assert (=> b!1484289 (= e!949212 tp_is_empty!6993)))

(declare-fun b!1484292 () Bool)

(declare-fun tp!421537 () Bool)

(declare-fun tp!421536 () Bool)

(assert (=> b!1484292 (= e!949212 (and tp!421537 tp!421536))))

(assert (= (and b!1483522 ((_ is ElementMatch!4117) (_1!8088 (_1!8089 (h!21135 mapDefault!6503))))) b!1484289))

(assert (= (and b!1483522 ((_ is Concat!7010) (_1!8088 (_1!8089 (h!21135 mapDefault!6503))))) b!1484290))

(assert (= (and b!1483522 ((_ is Star!4117) (_1!8088 (_1!8089 (h!21135 mapDefault!6503))))) b!1484291))

(assert (= (and b!1483522 ((_ is Union!4117) (_1!8088 (_1!8089 (h!21135 mapDefault!6503))))) b!1484292))

(declare-fun setElem!8264 () Context!1270)

(declare-fun e!949215 () Bool)

(declare-fun setRes!8264 () Bool)

(declare-fun setNonEmpty!8264 () Bool)

(declare-fun tp!421543 () Bool)

(assert (=> setNonEmpty!8264 (= setRes!8264 (and tp!421543 (inv!20959 setElem!8264) e!949215))))

(declare-fun setRest!8264 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8264 (= (_2!8089 (h!21135 (t!137719 mapDefault!6503))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8264 true) setRest!8264))))

(declare-fun e!949214 () Bool)

(declare-fun b!1484293 () Bool)

(declare-fun tp!421541 () Bool)

(declare-fun e!949213 () Bool)

(declare-fun tp!421542 () Bool)

(assert (=> b!1484293 (= e!949213 (and tp!421541 (inv!20959 (_2!8088 (_1!8089 (h!21135 (t!137719 mapDefault!6503))))) e!949214 tp_is_empty!6993 setRes!8264 tp!421542))))

(declare-fun condSetEmpty!8264 () Bool)

(assert (=> b!1484293 (= condSetEmpty!8264 (= (_2!8089 (h!21135 (t!137719 mapDefault!6503))) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> b!1483522 (= tp!421180 e!949213)))

(declare-fun b!1484294 () Bool)

(declare-fun tp!421540 () Bool)

(assert (=> b!1484294 (= e!949214 tp!421540)))

(declare-fun b!1484295 () Bool)

(declare-fun tp!421539 () Bool)

(assert (=> b!1484295 (= e!949215 tp!421539)))

(declare-fun setIsEmpty!8264 () Bool)

(assert (=> setIsEmpty!8264 setRes!8264))

(assert (= b!1484293 b!1484294))

(assert (= (and b!1484293 condSetEmpty!8264) setIsEmpty!8264))

(assert (= (and b!1484293 (not condSetEmpty!8264)) setNonEmpty!8264))

(assert (= setNonEmpty!8264 b!1484295))

(assert (= (and b!1483522 ((_ is Cons!15734) (t!137719 mapDefault!6503))) b!1484293))

(declare-fun m!1730992 () Bool)

(assert (=> setNonEmpty!8264 m!1730992))

(declare-fun m!1730994 () Bool)

(assert (=> b!1484293 m!1730994))

(declare-fun b!1484296 () Bool)

(declare-fun e!949216 () Bool)

(declare-fun tp!421544 () Bool)

(declare-fun tp!421545 () Bool)

(assert (=> b!1484296 (= e!949216 (and tp!421544 tp!421545))))

(assert (=> b!1483545 (= tp!421210 e!949216)))

(assert (= (and b!1483545 ((_ is Cons!15728) (exprs!1135 setElem!8212))) b!1484296))

(declare-fun b!1484297 () Bool)

(declare-fun e!949217 () Bool)

(declare-fun tp!421546 () Bool)

(declare-fun tp!421547 () Bool)

(assert (=> b!1484297 (= e!949217 (and tp!421546 tp!421547))))

(assert (=> b!1483609 (= tp!421292 e!949217)))

(assert (= (and b!1483609 ((_ is Cons!15728) (exprs!1135 (_1!8085 (_1!8086 (h!21132 mapValue!6498)))))) b!1484297))

(declare-fun b!1484298 () Bool)

(declare-fun e!949218 () Bool)

(declare-fun tp!421548 () Bool)

(declare-fun tp!421549 () Bool)

(assert (=> b!1484298 (= e!949218 (and tp!421548 tp!421549))))

(assert (=> b!1483521 (= tp!421176 e!949218)))

(assert (= (and b!1483521 ((_ is Cons!15728) (exprs!1135 setElem!8207))) b!1484298))

(declare-fun b!1484301 () Bool)

(declare-fun e!949219 () Bool)

(declare-fun tp!421551 () Bool)

(assert (=> b!1484301 (= e!949219 tp!421551)))

(assert (=> b!1483543 (= tp!421212 e!949219)))

(declare-fun b!1484300 () Bool)

(declare-fun tp!421554 () Bool)

(declare-fun tp!421550 () Bool)

(assert (=> b!1484300 (= e!949219 (and tp!421554 tp!421550))))

(declare-fun b!1484299 () Bool)

(assert (=> b!1484299 (= e!949219 tp_is_empty!6993)))

(declare-fun b!1484302 () Bool)

(declare-fun tp!421553 () Bool)

(declare-fun tp!421552 () Bool)

(assert (=> b!1484302 (= e!949219 (and tp!421553 tp!421552))))

(assert (= (and b!1483543 ((_ is ElementMatch!4117) (_1!8088 (_1!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) b!1484299))

(assert (= (and b!1483543 ((_ is Concat!7010) (_1!8088 (_1!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) b!1484300))

(assert (= (and b!1483543 ((_ is Star!4117) (_1!8088 (_1!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) b!1484301))

(assert (= (and b!1483543 ((_ is Union!4117) (_1!8088 (_1!8089 (h!21135 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) b!1484302))

(declare-fun setRes!8265 () Bool)

(declare-fun setNonEmpty!8265 () Bool)

(declare-fun tp!421559 () Bool)

(declare-fun setElem!8265 () Context!1270)

(declare-fun e!949222 () Bool)

(assert (=> setNonEmpty!8265 (= setRes!8265 (and tp!421559 (inv!20959 setElem!8265) e!949222))))

(declare-fun setRest!8265 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8265 (= (_2!8089 (h!21135 (t!137719 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8265 true) setRest!8265))))

(declare-fun e!949220 () Bool)

(declare-fun b!1484303 () Bool)

(declare-fun tp!421558 () Bool)

(declare-fun tp!421557 () Bool)

(declare-fun e!949221 () Bool)

(assert (=> b!1484303 (= e!949220 (and tp!421557 (inv!20959 (_2!8088 (_1!8089 (h!21135 (t!137719 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) e!949221 tp_is_empty!6993 setRes!8265 tp!421558))))

(declare-fun condSetEmpty!8265 () Bool)

(assert (=> b!1484303 (= condSetEmpty!8265 (= (_2!8089 (h!21135 (t!137719 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> b!1483543 (= tp!421213 e!949220)))

(declare-fun b!1484304 () Bool)

(declare-fun tp!421556 () Bool)

(assert (=> b!1484304 (= e!949221 tp!421556)))

(declare-fun b!1484305 () Bool)

(declare-fun tp!421555 () Bool)

(assert (=> b!1484305 (= e!949222 tp!421555)))

(declare-fun setIsEmpty!8265 () Bool)

(assert (=> setIsEmpty!8265 setRes!8265))

(assert (= b!1484303 b!1484304))

(assert (= (and b!1484303 condSetEmpty!8265) setIsEmpty!8265))

(assert (= (and b!1484303 (not condSetEmpty!8265)) setNonEmpty!8265))

(assert (= setNonEmpty!8265 b!1484305))

(assert (= (and b!1483543 ((_ is Cons!15734) (t!137719 (minValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))) b!1484303))

(declare-fun m!1730996 () Bool)

(assert (=> setNonEmpty!8265 m!1730996))

(declare-fun m!1730998 () Bool)

(assert (=> b!1484303 m!1730998))

(declare-fun b!1484306 () Bool)

(declare-fun e!949223 () Bool)

(declare-fun tp!421560 () Bool)

(declare-fun tp!421561 () Bool)

(assert (=> b!1484306 (= e!949223 (and tp!421560 tp!421561))))

(assert (=> b!1483607 (= tp!421290 e!949223)))

(assert (= (and b!1483607 ((_ is Cons!15728) (exprs!1135 setElem!8227))) b!1484306))

(declare-fun condSetEmpty!8266 () Bool)

(assert (=> setNonEmpty!8235 (= condSetEmpty!8266 (= setRest!8235 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8266 () Bool)

(assert (=> setNonEmpty!8235 (= tp!421348 setRes!8266)))

(declare-fun setIsEmpty!8266 () Bool)

(assert (=> setIsEmpty!8266 setRes!8266))

(declare-fun setElem!8266 () Context!1270)

(declare-fun e!949224 () Bool)

(declare-fun tp!421563 () Bool)

(declare-fun setNonEmpty!8266 () Bool)

(assert (=> setNonEmpty!8266 (= setRes!8266 (and tp!421563 (inv!20959 setElem!8266) e!949224))))

(declare-fun setRest!8266 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8266 (= setRest!8235 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8266 true) setRest!8266))))

(declare-fun b!1484307 () Bool)

(declare-fun tp!421562 () Bool)

(assert (=> b!1484307 (= e!949224 tp!421562)))

(assert (= (and setNonEmpty!8235 condSetEmpty!8266) setIsEmpty!8266))

(assert (= (and setNonEmpty!8235 (not condSetEmpty!8266)) setNonEmpty!8266))

(assert (= setNonEmpty!8266 b!1484307))

(declare-fun m!1731000 () Bool)

(assert (=> setNonEmpty!8266 m!1731000))

(declare-fun b!1484310 () Bool)

(declare-fun e!949225 () Bool)

(declare-fun tp!421565 () Bool)

(assert (=> b!1484310 (= e!949225 tp!421565)))

(assert (=> b!1483540 (= tp!421207 e!949225)))

(declare-fun b!1484309 () Bool)

(declare-fun tp!421568 () Bool)

(declare-fun tp!421564 () Bool)

(assert (=> b!1484309 (= e!949225 (and tp!421568 tp!421564))))

(declare-fun b!1484308 () Bool)

(assert (=> b!1484308 (= e!949225 tp_is_empty!6993)))

(declare-fun b!1484311 () Bool)

(declare-fun tp!421567 () Bool)

(declare-fun tp!421566 () Bool)

(assert (=> b!1484311 (= e!949225 (and tp!421567 tp!421566))))

(assert (= (and b!1483540 ((_ is ElementMatch!4117) (_1!8088 (_1!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) b!1484308))

(assert (= (and b!1483540 ((_ is Concat!7010) (_1!8088 (_1!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) b!1484309))

(assert (= (and b!1483540 ((_ is Star!4117) (_1!8088 (_1!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) b!1484310))

(assert (= (and b!1483540 ((_ is Union!4117) (_1!8088 (_1!8089 (h!21135 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) b!1484311))

(declare-fun setElem!8267 () Context!1270)

(declare-fun tp!421573 () Bool)

(declare-fun e!949228 () Bool)

(declare-fun setRes!8267 () Bool)

(declare-fun setNonEmpty!8267 () Bool)

(assert (=> setNonEmpty!8267 (= setRes!8267 (and tp!421573 (inv!20959 setElem!8267) e!949228))))

(declare-fun setRest!8267 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8267 (= (_2!8089 (h!21135 (t!137719 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8267 true) setRest!8267))))

(declare-fun b!1484312 () Bool)

(declare-fun e!949226 () Bool)

(declare-fun tp!421571 () Bool)

(declare-fun tp!421572 () Bool)

(declare-fun e!949227 () Bool)

(assert (=> b!1484312 (= e!949226 (and tp!421571 (inv!20959 (_2!8088 (_1!8089 (h!21135 (t!137719 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))))) e!949227 tp_is_empty!6993 setRes!8267 tp!421572))))

(declare-fun condSetEmpty!8267 () Bool)

(assert (=> b!1484312 (= condSetEmpty!8267 (= (_2!8089 (h!21135 (t!137719 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> b!1483540 (= tp!421208 e!949226)))

(declare-fun b!1484313 () Bool)

(declare-fun tp!421570 () Bool)

(assert (=> b!1484313 (= e!949227 tp!421570)))

(declare-fun b!1484314 () Bool)

(declare-fun tp!421569 () Bool)

(assert (=> b!1484314 (= e!949228 tp!421569)))

(declare-fun setIsEmpty!8267 () Bool)

(assert (=> setIsEmpty!8267 setRes!8267))

(assert (= b!1484312 b!1484313))

(assert (= (and b!1484312 condSetEmpty!8267) setIsEmpty!8267))

(assert (= (and b!1484312 (not condSetEmpty!8267)) setNonEmpty!8267))

(assert (= setNonEmpty!8267 b!1484314))

(assert (= (and b!1483540 ((_ is Cons!15734) (t!137719 (zeroValue!1619 (v!22573 (underlying!2933 (v!22574 (underlying!2934 (cache!1687 cacheDown!629))))))))) b!1484312))

(declare-fun m!1731002 () Bool)

(assert (=> setNonEmpty!8267 m!1731002))

(declare-fun m!1731004 () Bool)

(assert (=> b!1484312 m!1731004))

(declare-fun b!1484315 () Bool)

(declare-fun e!949229 () Bool)

(declare-fun tp!421574 () Bool)

(declare-fun tp!421575 () Bool)

(assert (=> b!1484315 (= e!949229 (and tp!421574 tp!421575))))

(assert (=> b!1483536 (= tp!421197 e!949229)))

(assert (= (and b!1483536 ((_ is Cons!15728) (exprs!1135 setElem!8210))) b!1484315))

(declare-fun e!949231 () Bool)

(declare-fun b!1484316 () Bool)

(declare-fun tp!421576 () Bool)

(declare-fun tp!421577 () Bool)

(assert (=> b!1484316 (= e!949231 (and (inv!20946 (left!13251 (left!13251 (c!243104 treated!70)))) tp!421576 (inv!20946 (right!13581 (left!13251 (c!243104 treated!70)))) tp!421577))))

(declare-fun b!1484318 () Bool)

(declare-fun e!949230 () Bool)

(declare-fun tp!421578 () Bool)

(assert (=> b!1484318 (= e!949230 tp!421578)))

(declare-fun b!1484317 () Bool)

(assert (=> b!1484317 (= e!949231 (and (inv!20958 (xs!8113 (left!13251 (c!243104 treated!70)))) e!949230))))

(assert (=> b!1483581 (= tp!421254 (and (inv!20946 (left!13251 (c!243104 treated!70))) e!949231))))

(assert (= (and b!1483581 ((_ is Node!5358) (left!13251 (c!243104 treated!70)))) b!1484316))

(assert (= b!1484317 b!1484318))

(assert (= (and b!1483581 ((_ is Leaf!7962) (left!13251 (c!243104 treated!70)))) b!1484317))

(declare-fun m!1731006 () Bool)

(assert (=> b!1484316 m!1731006))

(declare-fun m!1731008 () Bool)

(assert (=> b!1484316 m!1731008))

(declare-fun m!1731010 () Bool)

(assert (=> b!1484317 m!1731010))

(assert (=> b!1483581 m!1730105))

(declare-fun tp!421580 () Bool)

(declare-fun e!949233 () Bool)

(declare-fun b!1484319 () Bool)

(declare-fun tp!421579 () Bool)

(assert (=> b!1484319 (= e!949233 (and (inv!20946 (left!13251 (right!13581 (c!243104 treated!70)))) tp!421579 (inv!20946 (right!13581 (right!13581 (c!243104 treated!70)))) tp!421580))))

(declare-fun b!1484321 () Bool)

(declare-fun e!949232 () Bool)

(declare-fun tp!421581 () Bool)

(assert (=> b!1484321 (= e!949232 tp!421581)))

(declare-fun b!1484320 () Bool)

(assert (=> b!1484320 (= e!949233 (and (inv!20958 (xs!8113 (right!13581 (c!243104 treated!70)))) e!949232))))

(assert (=> b!1483581 (= tp!421255 (and (inv!20946 (right!13581 (c!243104 treated!70))) e!949233))))

(assert (= (and b!1483581 ((_ is Node!5358) (right!13581 (c!243104 treated!70)))) b!1484319))

(assert (= b!1484320 b!1484321))

(assert (= (and b!1483581 ((_ is Leaf!7962) (right!13581 (c!243104 treated!70)))) b!1484320))

(declare-fun m!1731012 () Bool)

(assert (=> b!1484319 m!1731012))

(declare-fun m!1731014 () Bool)

(assert (=> b!1484319 m!1731014))

(declare-fun m!1731016 () Bool)

(assert (=> b!1484320 m!1731016))

(assert (=> b!1483581 m!1730107))

(declare-fun condSetEmpty!8268 () Bool)

(assert (=> setNonEmpty!8226 (= condSetEmpty!8268 (= setRest!8226 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8268 () Bool)

(assert (=> setNonEmpty!8226 (= tp!421286 setRes!8268)))

(declare-fun setIsEmpty!8268 () Bool)

(assert (=> setIsEmpty!8268 setRes!8268))

(declare-fun e!949234 () Bool)

(declare-fun setElem!8268 () Context!1270)

(declare-fun setNonEmpty!8268 () Bool)

(declare-fun tp!421583 () Bool)

(assert (=> setNonEmpty!8268 (= setRes!8268 (and tp!421583 (inv!20959 setElem!8268) e!949234))))

(declare-fun setRest!8268 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8268 (= setRest!8226 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8268 true) setRest!8268))))

(declare-fun b!1484322 () Bool)

(declare-fun tp!421582 () Bool)

(assert (=> b!1484322 (= e!949234 tp!421582)))

(assert (= (and setNonEmpty!8226 condSetEmpty!8268) setIsEmpty!8268))

(assert (= (and setNonEmpty!8226 (not condSetEmpty!8268)) setNonEmpty!8268))

(assert (= setNonEmpty!8268 b!1484322))

(declare-fun m!1731018 () Bool)

(assert (=> setNonEmpty!8268 m!1731018))

(declare-fun condSetEmpty!8269 () Bool)

(assert (=> setNonEmpty!8220 (= condSetEmpty!8269 (= setRest!8220 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8269 () Bool)

(assert (=> setNonEmpty!8220 (= tp!421261 setRes!8269)))

(declare-fun setIsEmpty!8269 () Bool)

(assert (=> setIsEmpty!8269 setRes!8269))

(declare-fun setElem!8269 () Context!1270)

(declare-fun tp!421585 () Bool)

(declare-fun e!949235 () Bool)

(declare-fun setNonEmpty!8269 () Bool)

(assert (=> setNonEmpty!8269 (= setRes!8269 (and tp!421585 (inv!20959 setElem!8269) e!949235))))

(declare-fun setRest!8269 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8269 (= setRest!8220 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8269 true) setRest!8269))))

(declare-fun b!1484323 () Bool)

(declare-fun tp!421584 () Bool)

(assert (=> b!1484323 (= e!949235 tp!421584)))

(assert (= (and setNonEmpty!8220 condSetEmpty!8269) setIsEmpty!8269))

(assert (= (and setNonEmpty!8220 (not condSetEmpty!8269)) setNonEmpty!8269))

(assert (= setNonEmpty!8269 b!1484323))

(declare-fun m!1731020 () Bool)

(assert (=> setNonEmpty!8269 m!1731020))

(declare-fun b!1484326 () Bool)

(declare-fun e!949236 () Bool)

(declare-fun tp!421587 () Bool)

(assert (=> b!1484326 (= e!949236 tp!421587)))

(assert (=> b!1483534 (= tp!421199 e!949236)))

(declare-fun b!1484325 () Bool)

(declare-fun tp!421590 () Bool)

(declare-fun tp!421586 () Bool)

(assert (=> b!1484325 (= e!949236 (and tp!421590 tp!421586))))

(declare-fun b!1484324 () Bool)

(assert (=> b!1484324 (= e!949236 tp_is_empty!6993)))

(declare-fun b!1484327 () Bool)

(declare-fun tp!421589 () Bool)

(declare-fun tp!421588 () Bool)

(assert (=> b!1484327 (= e!949236 (and tp!421589 tp!421588))))

(assert (= (and b!1483534 ((_ is ElementMatch!4117) (_1!8088 (_1!8089 (h!21135 mapValue!6500))))) b!1484324))

(assert (= (and b!1483534 ((_ is Concat!7010) (_1!8088 (_1!8089 (h!21135 mapValue!6500))))) b!1484325))

(assert (= (and b!1483534 ((_ is Star!4117) (_1!8088 (_1!8089 (h!21135 mapValue!6500))))) b!1484326))

(assert (= (and b!1483534 ((_ is Union!4117) (_1!8088 (_1!8089 (h!21135 mapValue!6500))))) b!1484327))

(declare-fun setRes!8270 () Bool)

(declare-fun setElem!8270 () Context!1270)

(declare-fun e!949239 () Bool)

(declare-fun tp!421595 () Bool)

(declare-fun setNonEmpty!8270 () Bool)

(assert (=> setNonEmpty!8270 (= setRes!8270 (and tp!421595 (inv!20959 setElem!8270) e!949239))))

(declare-fun setRest!8270 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8270 (= (_2!8089 (h!21135 (t!137719 mapValue!6500))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8270 true) setRest!8270))))

(declare-fun tp!421593 () Bool)

(declare-fun e!949238 () Bool)

(declare-fun e!949237 () Bool)

(declare-fun b!1484328 () Bool)

(declare-fun tp!421594 () Bool)

(assert (=> b!1484328 (= e!949237 (and tp!421593 (inv!20959 (_2!8088 (_1!8089 (h!21135 (t!137719 mapValue!6500))))) e!949238 tp_is_empty!6993 setRes!8270 tp!421594))))

(declare-fun condSetEmpty!8270 () Bool)

(assert (=> b!1484328 (= condSetEmpty!8270 (= (_2!8089 (h!21135 (t!137719 mapValue!6500))) ((as const (Array Context!1270 Bool)) false)))))

(assert (=> b!1483534 (= tp!421200 e!949237)))

(declare-fun b!1484329 () Bool)

(declare-fun tp!421592 () Bool)

(assert (=> b!1484329 (= e!949238 tp!421592)))

(declare-fun b!1484330 () Bool)

(declare-fun tp!421591 () Bool)

(assert (=> b!1484330 (= e!949239 tp!421591)))

(declare-fun setIsEmpty!8270 () Bool)

(assert (=> setIsEmpty!8270 setRes!8270))

(assert (= b!1484328 b!1484329))

(assert (= (and b!1484328 condSetEmpty!8270) setIsEmpty!8270))

(assert (= (and b!1484328 (not condSetEmpty!8270)) setNonEmpty!8270))

(assert (= setNonEmpty!8270 b!1484330))

(assert (= (and b!1483534 ((_ is Cons!15734) (t!137719 mapValue!6500))) b!1484328))

(declare-fun m!1731022 () Bool)

(assert (=> setNonEmpty!8270 m!1731022))

(declare-fun m!1731024 () Bool)

(assert (=> b!1484328 m!1731024))

(declare-fun b!1484331 () Bool)

(declare-fun e!949240 () Bool)

(declare-fun tp!421596 () Bool)

(declare-fun tp!421597 () Bool)

(assert (=> b!1484331 (= e!949240 (and tp!421596 tp!421597))))

(assert (=> b!1483631 (= tp!421318 e!949240)))

(assert (= (and b!1483631 ((_ is Cons!15728) (exprs!1135 (_1!8085 (_1!8086 (h!21132 (minValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616)))))))))))) b!1484331))

(declare-fun e!949242 () Bool)

(assert (=> b!1483627 (= tp!421313 e!949242)))

(declare-fun setIsEmpty!8271 () Bool)

(declare-fun setRes!8271 () Bool)

(assert (=> setIsEmpty!8271 setRes!8271))

(declare-fun setElem!8271 () Context!1270)

(declare-fun tp!421598 () Bool)

(declare-fun setNonEmpty!8271 () Bool)

(declare-fun e!949241 () Bool)

(assert (=> setNonEmpty!8271 (= setRes!8271 (and tp!421598 (inv!20959 setElem!8271) e!949241))))

(declare-fun setRest!8271 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8271 (= (_2!8086 (h!21132 (t!137716 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8271 true) setRest!8271))))

(declare-fun b!1484332 () Bool)

(declare-fun tp!421599 () Bool)

(assert (=> b!1484332 (= e!949241 tp!421599)))

(declare-fun b!1484333 () Bool)

(declare-fun e!949243 () Bool)

(declare-fun tp!421600 () Bool)

(assert (=> b!1484333 (= e!949242 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 (t!137716 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))))))) e!949243 tp_is_empty!6993 setRes!8271 tp!421600))))

(declare-fun condSetEmpty!8271 () Bool)

(assert (=> b!1484333 (= condSetEmpty!8271 (= (_2!8086 (h!21132 (t!137716 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1484334 () Bool)

(declare-fun tp!421601 () Bool)

(assert (=> b!1484334 (= e!949243 tp!421601)))

(assert (= b!1484333 b!1484334))

(assert (= (and b!1484333 condSetEmpty!8271) setIsEmpty!8271))

(assert (= (and b!1484333 (not condSetEmpty!8271)) setNonEmpty!8271))

(assert (= setNonEmpty!8271 b!1484332))

(assert (= (and b!1483627 ((_ is Cons!15731) (t!137716 (zeroValue!1618 (v!22571 (underlying!2931 (v!22572 (underlying!2932 (cache!1686 cacheUp!616))))))))) b!1484333))

(declare-fun m!1731026 () Bool)

(assert (=> setNonEmpty!8271 m!1731026))

(declare-fun m!1731028 () Bool)

(assert (=> b!1484333 m!1731028))

(declare-fun b!1484335 () Bool)

(declare-fun e!949244 () Bool)

(declare-fun tp!421602 () Bool)

(declare-fun tp!421603 () Bool)

(assert (=> b!1484335 (= e!949244 (and tp!421602 tp!421603))))

(assert (=> b!1483658 (= tp!421350 e!949244)))

(assert (= (and b!1483658 ((_ is Cons!15728) (exprs!1135 setElem!8237))) b!1484335))

(declare-fun setIsEmpty!8272 () Bool)

(declare-fun setRes!8273 () Bool)

(assert (=> setIsEmpty!8272 setRes!8273))

(declare-fun setIsEmpty!8273 () Bool)

(declare-fun setRes!8272 () Bool)

(assert (=> setIsEmpty!8273 setRes!8272))

(declare-fun b!1484336 () Bool)

(declare-fun e!949249 () Bool)

(declare-fun tp!421610 () Bool)

(assert (=> b!1484336 (= e!949249 tp!421610)))

(declare-fun b!1484337 () Bool)

(declare-fun e!949247 () Bool)

(declare-fun tp!421604 () Bool)

(assert (=> b!1484337 (= e!949247 tp!421604)))

(declare-fun condMapEmpty!6512 () Bool)

(declare-fun mapDefault!6512 () List!15802)

(assert (=> mapNonEmpty!6503 (= condMapEmpty!6512 (= mapRest!6503 ((as const (Array (_ BitVec 32) List!15802)) mapDefault!6512)))))

(declare-fun e!949246 () Bool)

(declare-fun mapRes!6512 () Bool)

(assert (=> mapNonEmpty!6503 (= tp!421179 (and e!949246 mapRes!6512))))

(declare-fun setElem!8272 () Context!1270)

(declare-fun tp!421611 () Bool)

(declare-fun e!949245 () Bool)

(declare-fun setNonEmpty!8272 () Bool)

(assert (=> setNonEmpty!8272 (= setRes!8272 (and tp!421611 (inv!20959 setElem!8272) e!949245))))

(declare-fun mapValue!6512 () List!15802)

(declare-fun setRest!8273 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8272 (= (_2!8089 (h!21135 mapValue!6512)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8272 true) setRest!8273))))

(declare-fun tp!421613 () Bool)

(declare-fun b!1484338 () Bool)

(declare-fun tp!421608 () Bool)

(assert (=> b!1484338 (= e!949246 (and tp!421613 (inv!20959 (_2!8088 (_1!8089 (h!21135 mapDefault!6512)))) e!949249 tp_is_empty!6993 setRes!8273 tp!421608))))

(declare-fun condSetEmpty!8272 () Bool)

(assert (=> b!1484338 (= condSetEmpty!8272 (= (_2!8089 (h!21135 mapDefault!6512)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun mapIsEmpty!6512 () Bool)

(assert (=> mapIsEmpty!6512 mapRes!6512))

(declare-fun tp!421614 () Bool)

(declare-fun e!949248 () Bool)

(declare-fun b!1484339 () Bool)

(declare-fun tp!421605 () Bool)

(declare-fun e!949250 () Bool)

(assert (=> b!1484339 (= e!949250 (and tp!421605 (inv!20959 (_2!8088 (_1!8089 (h!21135 mapValue!6512)))) e!949248 tp_is_empty!6993 setRes!8272 tp!421614))))

(declare-fun condSetEmpty!8273 () Bool)

(assert (=> b!1484339 (= condSetEmpty!8273 (= (_2!8089 (h!21135 mapValue!6512)) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1484340 () Bool)

(declare-fun tp!421606 () Bool)

(assert (=> b!1484340 (= e!949248 tp!421606)))

(declare-fun setElem!8273 () Context!1270)

(declare-fun tp!421612 () Bool)

(declare-fun setNonEmpty!8273 () Bool)

(assert (=> setNonEmpty!8273 (= setRes!8273 (and tp!421612 (inv!20959 setElem!8273) e!949247))))

(declare-fun setRest!8272 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8273 (= (_2!8089 (h!21135 mapDefault!6512)) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8273 true) setRest!8272))))

(declare-fun mapNonEmpty!6512 () Bool)

(declare-fun tp!421607 () Bool)

(assert (=> mapNonEmpty!6512 (= mapRes!6512 (and tp!421607 e!949250))))

(declare-fun mapKey!6512 () (_ BitVec 32))

(declare-fun mapRest!6512 () (Array (_ BitVec 32) List!15802))

(assert (=> mapNonEmpty!6512 (= mapRest!6503 (store mapRest!6512 mapKey!6512 mapValue!6512))))

(declare-fun b!1484341 () Bool)

(declare-fun tp!421609 () Bool)

(assert (=> b!1484341 (= e!949245 tp!421609)))

(assert (= (and mapNonEmpty!6503 condMapEmpty!6512) mapIsEmpty!6512))

(assert (= (and mapNonEmpty!6503 (not condMapEmpty!6512)) mapNonEmpty!6512))

(assert (= b!1484339 b!1484340))

(assert (= (and b!1484339 condSetEmpty!8273) setIsEmpty!8273))

(assert (= (and b!1484339 (not condSetEmpty!8273)) setNonEmpty!8272))

(assert (= setNonEmpty!8272 b!1484341))

(assert (= (and mapNonEmpty!6512 ((_ is Cons!15734) mapValue!6512)) b!1484339))

(assert (= b!1484338 b!1484336))

(assert (= (and b!1484338 condSetEmpty!8272) setIsEmpty!8272))

(assert (= (and b!1484338 (not condSetEmpty!8272)) setNonEmpty!8273))

(assert (= setNonEmpty!8273 b!1484337))

(assert (= (and mapNonEmpty!6503 ((_ is Cons!15734) mapDefault!6512)) b!1484338))

(declare-fun m!1731030 () Bool)

(assert (=> b!1484339 m!1731030))

(declare-fun m!1731032 () Bool)

(assert (=> setNonEmpty!8272 m!1731032))

(declare-fun m!1731034 () Bool)

(assert (=> b!1484338 m!1731034))

(declare-fun m!1731036 () Bool)

(assert (=> setNonEmpty!8273 m!1731036))

(declare-fun m!1731038 () Bool)

(assert (=> mapNonEmpty!6512 m!1731038))

(declare-fun condSetEmpty!8274 () Bool)

(assert (=> setNonEmpty!8216 (= condSetEmpty!8274 (= setRest!8216 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8274 () Bool)

(assert (=> setNonEmpty!8216 (= tp!421241 setRes!8274)))

(declare-fun setIsEmpty!8274 () Bool)

(assert (=> setIsEmpty!8274 setRes!8274))

(declare-fun setNonEmpty!8274 () Bool)

(declare-fun tp!421616 () Bool)

(declare-fun setElem!8274 () Context!1270)

(declare-fun e!949251 () Bool)

(assert (=> setNonEmpty!8274 (= setRes!8274 (and tp!421616 (inv!20959 setElem!8274) e!949251))))

(declare-fun setRest!8274 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8274 (= setRest!8216 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8274 true) setRest!8274))))

(declare-fun b!1484342 () Bool)

(declare-fun tp!421615 () Bool)

(assert (=> b!1484342 (= e!949251 tp!421615)))

(assert (= (and setNonEmpty!8216 condSetEmpty!8274) setIsEmpty!8274))

(assert (= (and setNonEmpty!8216 (not condSetEmpty!8274)) setNonEmpty!8274))

(assert (= setNonEmpty!8274 b!1484342))

(declare-fun m!1731040 () Bool)

(assert (=> setNonEmpty!8274 m!1731040))

(declare-fun b!1484343 () Bool)

(declare-fun e!949252 () Bool)

(declare-fun setRes!8275 () Bool)

(declare-fun tp!421617 () Bool)

(assert (=> b!1484343 (= e!949252 (and setRes!8275 tp!421617))))

(declare-fun condSetEmpty!8275 () Bool)

(assert (=> b!1484343 (= condSetEmpty!8275 (= (_1!8083 (_1!8084 (h!21130 (t!137714 mapDefault!6509)))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8275 () Bool)

(assert (=> setIsEmpty!8275 setRes!8275))

(declare-fun setElem!8275 () Context!1270)

(declare-fun tp!421619 () Bool)

(declare-fun e!949253 () Bool)

(declare-fun setNonEmpty!8275 () Bool)

(assert (=> setNonEmpty!8275 (= setRes!8275 (and tp!421619 (inv!20959 setElem!8275) e!949253))))

(declare-fun setRest!8275 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8275 (= (_1!8083 (_1!8084 (h!21130 (t!137714 mapDefault!6509)))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8275 true) setRest!8275))))

(declare-fun b!1484344 () Bool)

(declare-fun tp!421618 () Bool)

(assert (=> b!1484344 (= e!949253 tp!421618)))

(assert (=> b!1483655 (= tp!421346 e!949252)))

(assert (= (and b!1484343 condSetEmpty!8275) setIsEmpty!8275))

(assert (= (and b!1484343 (not condSetEmpty!8275)) setNonEmpty!8275))

(assert (= setNonEmpty!8275 b!1484344))

(assert (= (and b!1483655 ((_ is Cons!15729) (t!137714 mapDefault!6509))) b!1484343))

(declare-fun m!1731042 () Bool)

(assert (=> setNonEmpty!8275 m!1731042))

(declare-fun b!1484345 () Bool)

(declare-fun e!949254 () Bool)

(declare-fun tp!421620 () Bool)

(declare-fun tp!421621 () Bool)

(assert (=> b!1484345 (= e!949254 (and tp!421620 tp!421621))))

(assert (=> b!1483524 (= tp!421178 e!949254)))

(assert (= (and b!1483524 ((_ is Cons!15728) (exprs!1135 (_2!8088 (_1!8089 (h!21135 mapValue!6503)))))) b!1484345))

(declare-fun b!1484346 () Bool)

(declare-fun e!949255 () Bool)

(declare-fun setRes!8276 () Bool)

(declare-fun tp!421622 () Bool)

(assert (=> b!1484346 (= e!949255 (and setRes!8276 tp!421622))))

(declare-fun condSetEmpty!8276 () Bool)

(assert (=> b!1484346 (= condSetEmpty!8276 (= (_1!8083 (_1!8084 (h!21130 (t!137714 (minValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64)))))))))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8276 () Bool)

(assert (=> setIsEmpty!8276 setRes!8276))

(declare-fun tp!421624 () Bool)

(declare-fun setNonEmpty!8276 () Bool)

(declare-fun e!949256 () Bool)

(declare-fun setElem!8276 () Context!1270)

(assert (=> setNonEmpty!8276 (= setRes!8276 (and tp!421624 (inv!20959 setElem!8276) e!949256))))

(declare-fun setRest!8276 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8276 (= (_1!8083 (_1!8084 (h!21130 (t!137714 (minValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64)))))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8276 true) setRest!8276))))

(declare-fun b!1484347 () Bool)

(declare-fun tp!421623 () Bool)

(assert (=> b!1484347 (= e!949256 tp!421623)))

(assert (=> b!1483568 (= tp!421239 e!949255)))

(assert (= (and b!1484346 condSetEmpty!8276) setIsEmpty!8276))

(assert (= (and b!1484346 (not condSetEmpty!8276)) setNonEmpty!8276))

(assert (= setNonEmpty!8276 b!1484347))

(assert (= (and b!1483568 ((_ is Cons!15729) (t!137714 (minValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))))) b!1484346))

(declare-fun m!1731044 () Bool)

(assert (=> setNonEmpty!8276 m!1731044))

(declare-fun condSetEmpty!8277 () Bool)

(assert (=> setNonEmpty!8236 (= condSetEmpty!8277 (= setRest!8236 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8277 () Bool)

(assert (=> setNonEmpty!8236 (= tp!421347 setRes!8277)))

(declare-fun setIsEmpty!8277 () Bool)

(assert (=> setIsEmpty!8277 setRes!8277))

(declare-fun e!949257 () Bool)

(declare-fun tp!421626 () Bool)

(declare-fun setNonEmpty!8277 () Bool)

(declare-fun setElem!8277 () Context!1270)

(assert (=> setNonEmpty!8277 (= setRes!8277 (and tp!421626 (inv!20959 setElem!8277) e!949257))))

(declare-fun setRest!8277 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8277 (= setRest!8236 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8277 true) setRest!8277))))

(declare-fun b!1484348 () Bool)

(declare-fun tp!421625 () Bool)

(assert (=> b!1484348 (= e!949257 tp!421625)))

(assert (= (and setNonEmpty!8236 condSetEmpty!8277) setIsEmpty!8277))

(assert (= (and setNonEmpty!8236 (not condSetEmpty!8277)) setNonEmpty!8277))

(assert (= setNonEmpty!8277 b!1484348))

(declare-fun m!1731046 () Bool)

(assert (=> setNonEmpty!8277 m!1731046))

(declare-fun b!1484349 () Bool)

(declare-fun e!949258 () Bool)

(declare-fun tp!421627 () Bool)

(declare-fun tp!421628 () Bool)

(assert (=> b!1484349 (= e!949258 (and tp!421627 tp!421628))))

(assert (=> b!1483629 (= tp!421316 e!949258)))

(assert (= (and b!1483629 ((_ is Cons!15728) (exprs!1135 setElem!8230))) b!1484349))

(declare-fun condSetEmpty!8278 () Bool)

(assert (=> setNonEmpty!8229 (= condSetEmpty!8278 (= setRest!8229 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8278 () Bool)

(assert (=> setNonEmpty!8229 (= tp!421311 setRes!8278)))

(declare-fun setIsEmpty!8278 () Bool)

(assert (=> setIsEmpty!8278 setRes!8278))

(declare-fun tp!421630 () Bool)

(declare-fun e!949259 () Bool)

(declare-fun setNonEmpty!8278 () Bool)

(declare-fun setElem!8278 () Context!1270)

(assert (=> setNonEmpty!8278 (= setRes!8278 (and tp!421630 (inv!20959 setElem!8278) e!949259))))

(declare-fun setRest!8278 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8278 (= setRest!8229 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8278 true) setRest!8278))))

(declare-fun b!1484350 () Bool)

(declare-fun tp!421629 () Bool)

(assert (=> b!1484350 (= e!949259 tp!421629)))

(assert (= (and setNonEmpty!8229 condSetEmpty!8278) setIsEmpty!8278))

(assert (= (and setNonEmpty!8229 (not condSetEmpty!8278)) setNonEmpty!8278))

(assert (= setNonEmpty!8278 b!1484350))

(declare-fun m!1731048 () Bool)

(assert (=> setNonEmpty!8278 m!1731048))

(declare-fun b!1484353 () Bool)

(declare-fun e!949260 () Bool)

(declare-fun tp!421632 () Bool)

(assert (=> b!1484353 (= e!949260 tp!421632)))

(assert (=> b!1483625 (= tp!421309 e!949260)))

(declare-fun b!1484352 () Bool)

(declare-fun tp!421635 () Bool)

(declare-fun tp!421631 () Bool)

(assert (=> b!1484352 (= e!949260 (and tp!421635 tp!421631))))

(declare-fun b!1484351 () Bool)

(assert (=> b!1484351 (= e!949260 tp_is_empty!6993)))

(declare-fun b!1484354 () Bool)

(declare-fun tp!421634 () Bool)

(declare-fun tp!421633 () Bool)

(assert (=> b!1484354 (= e!949260 (and tp!421634 tp!421633))))

(assert (= (and b!1483625 ((_ is ElementMatch!4117) (regOne!8747 (regex!2803 (h!21136 rules!1640))))) b!1484351))

(assert (= (and b!1483625 ((_ is Concat!7010) (regOne!8747 (regex!2803 (h!21136 rules!1640))))) b!1484352))

(assert (= (and b!1483625 ((_ is Star!4117) (regOne!8747 (regex!2803 (h!21136 rules!1640))))) b!1484353))

(assert (= (and b!1483625 ((_ is Union!4117) (regOne!8747 (regex!2803 (h!21136 rules!1640))))) b!1484354))

(declare-fun b!1484357 () Bool)

(declare-fun e!949261 () Bool)

(declare-fun tp!421637 () Bool)

(assert (=> b!1484357 (= e!949261 tp!421637)))

(assert (=> b!1483625 (= tp!421308 e!949261)))

(declare-fun b!1484356 () Bool)

(declare-fun tp!421640 () Bool)

(declare-fun tp!421636 () Bool)

(assert (=> b!1484356 (= e!949261 (and tp!421640 tp!421636))))

(declare-fun b!1484355 () Bool)

(assert (=> b!1484355 (= e!949261 tp_is_empty!6993)))

(declare-fun b!1484358 () Bool)

(declare-fun tp!421639 () Bool)

(declare-fun tp!421638 () Bool)

(assert (=> b!1484358 (= e!949261 (and tp!421639 tp!421638))))

(assert (= (and b!1483625 ((_ is ElementMatch!4117) (regTwo!8747 (regex!2803 (h!21136 rules!1640))))) b!1484355))

(assert (= (and b!1483625 ((_ is Concat!7010) (regTwo!8747 (regex!2803 (h!21136 rules!1640))))) b!1484356))

(assert (= (and b!1483625 ((_ is Star!4117) (regTwo!8747 (regex!2803 (h!21136 rules!1640))))) b!1484357))

(assert (= (and b!1483625 ((_ is Union!4117) (regTwo!8747 (regex!2803 (h!21136 rules!1640))))) b!1484358))

(declare-fun b!1484359 () Bool)

(declare-fun e!949262 () Bool)

(declare-fun tp!421641 () Bool)

(assert (=> b!1484359 (= e!949262 (and tp_is_empty!6993 tp!421641))))

(assert (=> b!1483548 (= tp!421217 e!949262)))

(assert (= (and b!1483548 ((_ is Cons!15730) (innerList!5418 (xs!8113 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))))) b!1484359))

(declare-fun condSetEmpty!8279 () Bool)

(assert (=> setNonEmpty!8215 (= condSetEmpty!8279 (= setRest!8215 ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setRes!8279 () Bool)

(assert (=> setNonEmpty!8215 (= tp!421238 setRes!8279)))

(declare-fun setIsEmpty!8279 () Bool)

(assert (=> setIsEmpty!8279 setRes!8279))

(declare-fun setNonEmpty!8279 () Bool)

(declare-fun tp!421643 () Bool)

(declare-fun e!949263 () Bool)

(declare-fun setElem!8279 () Context!1270)

(assert (=> setNonEmpty!8279 (= setRes!8279 (and tp!421643 (inv!20959 setElem!8279) e!949263))))

(declare-fun setRest!8279 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8279 (= setRest!8215 ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8279 true) setRest!8279))))

(declare-fun b!1484360 () Bool)

(declare-fun tp!421642 () Bool)

(assert (=> b!1484360 (= e!949263 tp!421642)))

(assert (= (and setNonEmpty!8215 condSetEmpty!8279) setIsEmpty!8279))

(assert (= (and setNonEmpty!8215 (not condSetEmpty!8279)) setNonEmpty!8279))

(assert (= setNonEmpty!8279 b!1484360))

(declare-fun m!1731050 () Bool)

(assert (=> setNonEmpty!8279 m!1731050))

(declare-fun b!1484361 () Bool)

(declare-fun e!949265 () Bool)

(declare-fun tp!421644 () Bool)

(declare-fun tp!421645 () Bool)

(assert (=> b!1484361 (= e!949265 (and (inv!20946 (left!13251 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) tp!421644 (inv!20946 (right!13581 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) tp!421645))))

(declare-fun b!1484363 () Bool)

(declare-fun e!949264 () Bool)

(declare-fun tp!421646 () Bool)

(assert (=> b!1484363 (= e!949264 tp!421646)))

(declare-fun b!1484362 () Bool)

(assert (=> b!1484362 (= e!949265 (and (inv!20958 (xs!8113 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) e!949264))))

(assert (=> b!1483546 (= tp!421215 (and (inv!20946 (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) e!949265))))

(assert (= (and b!1483546 ((_ is Node!5358) (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) b!1484361))

(assert (= b!1484362 b!1484363))

(assert (= (and b!1483546 ((_ is Leaf!7962) (left!13251 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) b!1484362))

(declare-fun m!1731052 () Bool)

(assert (=> b!1484361 m!1731052))

(declare-fun m!1731054 () Bool)

(assert (=> b!1484361 m!1731054))

(declare-fun m!1731056 () Bool)

(assert (=> b!1484362 m!1731056))

(assert (=> b!1483546 m!1730087))

(declare-fun e!949267 () Bool)

(declare-fun b!1484364 () Bool)

(declare-fun tp!421647 () Bool)

(declare-fun tp!421648 () Bool)

(assert (=> b!1484364 (= e!949267 (and (inv!20946 (left!13251 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) tp!421647 (inv!20946 (right!13581 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) tp!421648))))

(declare-fun b!1484366 () Bool)

(declare-fun e!949266 () Bool)

(declare-fun tp!421649 () Bool)

(assert (=> b!1484366 (= e!949266 tp!421649)))

(declare-fun b!1484365 () Bool)

(assert (=> b!1484365 (= e!949267 (and (inv!20958 (xs!8113 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) e!949266))))

(assert (=> b!1483546 (= tp!421216 (and (inv!20946 (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64)))) e!949267))))

(assert (= (and b!1483546 ((_ is Node!5358) (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) b!1484364))

(assert (= b!1484365 b!1484366))

(assert (= (and b!1483546 ((_ is Leaf!7962) (right!13581 (c!243104 (totalInput!2230 cacheFurthestNullable!64))))) b!1484365))

(declare-fun m!1731058 () Bool)

(assert (=> b!1484364 m!1731058))

(declare-fun m!1731060 () Bool)

(assert (=> b!1484364 m!1731060))

(declare-fun m!1731062 () Bool)

(assert (=> b!1484365 m!1731062))

(assert (=> b!1483546 m!1730089))

(declare-fun b!1484367 () Bool)

(declare-fun e!949268 () Bool)

(declare-fun tp!421650 () Bool)

(assert (=> b!1484367 (= e!949268 (and tp_is_empty!6993 tp!421650))))

(assert (=> b!1483583 (= tp!421256 e!949268)))

(assert (= (and b!1483583 ((_ is Cons!15730) (innerList!5418 (xs!8113 (c!243104 treated!70))))) b!1484367))

(declare-fun e!949270 () Bool)

(assert (=> b!1483601 (= tp!421281 e!949270)))

(declare-fun setIsEmpty!8280 () Bool)

(declare-fun setRes!8280 () Bool)

(assert (=> setIsEmpty!8280 setRes!8280))

(declare-fun setNonEmpty!8280 () Bool)

(declare-fun setElem!8280 () Context!1270)

(declare-fun e!949269 () Bool)

(declare-fun tp!421651 () Bool)

(assert (=> setNonEmpty!8280 (= setRes!8280 (and tp!421651 (inv!20959 setElem!8280) e!949269))))

(declare-fun setRest!8280 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8280 (= (_2!8086 (h!21132 (t!137716 mapValue!6506))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8280 true) setRest!8280))))

(declare-fun b!1484368 () Bool)

(declare-fun tp!421652 () Bool)

(assert (=> b!1484368 (= e!949269 tp!421652)))

(declare-fun b!1484369 () Bool)

(declare-fun tp!421653 () Bool)

(declare-fun e!949271 () Bool)

(assert (=> b!1484369 (= e!949270 (and (inv!20959 (_1!8085 (_1!8086 (h!21132 (t!137716 mapValue!6506))))) e!949271 tp_is_empty!6993 setRes!8280 tp!421653))))

(declare-fun condSetEmpty!8280 () Bool)

(assert (=> b!1484369 (= condSetEmpty!8280 (= (_2!8086 (h!21132 (t!137716 mapValue!6506))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun b!1484370 () Bool)

(declare-fun tp!421654 () Bool)

(assert (=> b!1484370 (= e!949271 tp!421654)))

(assert (= b!1484369 b!1484370))

(assert (= (and b!1484369 condSetEmpty!8280) setIsEmpty!8280))

(assert (= (and b!1484369 (not condSetEmpty!8280)) setNonEmpty!8280))

(assert (= setNonEmpty!8280 b!1484368))

(assert (= (and b!1483601 ((_ is Cons!15731) (t!137716 mapValue!6506))) b!1484369))

(declare-fun m!1731064 () Bool)

(assert (=> setNonEmpty!8280 m!1731064))

(declare-fun m!1731066 () Bool)

(assert (=> b!1484369 m!1731066))

(declare-fun b!1484371 () Bool)

(declare-fun e!949272 () Bool)

(declare-fun tp!421655 () Bool)

(declare-fun tp!421656 () Bool)

(assert (=> b!1484371 (= e!949272 (and tp!421655 tp!421656))))

(assert (=> b!1483585 (= tp!421258 e!949272)))

(assert (= (and b!1483585 ((_ is Cons!15728) (exprs!1135 (_2!8088 (_1!8089 (h!21135 mapDefault!6498)))))) b!1484371))

(declare-fun b!1484374 () Bool)

(declare-fun e!949273 () Bool)

(declare-fun tp!421658 () Bool)

(assert (=> b!1484374 (= e!949273 tp!421658)))

(assert (=> b!1483623 (= tp!421310 e!949273)))

(declare-fun b!1484373 () Bool)

(declare-fun tp!421661 () Bool)

(declare-fun tp!421657 () Bool)

(assert (=> b!1484373 (= e!949273 (and tp!421661 tp!421657))))

(declare-fun b!1484372 () Bool)

(assert (=> b!1484372 (= e!949273 tp_is_empty!6993)))

(declare-fun b!1484375 () Bool)

(declare-fun tp!421660 () Bool)

(declare-fun tp!421659 () Bool)

(assert (=> b!1484375 (= e!949273 (and tp!421660 tp!421659))))

(assert (= (and b!1483623 ((_ is ElementMatch!4117) (regOne!8746 (regex!2803 (h!21136 rules!1640))))) b!1484372))

(assert (= (and b!1483623 ((_ is Concat!7010) (regOne!8746 (regex!2803 (h!21136 rules!1640))))) b!1484373))

(assert (= (and b!1483623 ((_ is Star!4117) (regOne!8746 (regex!2803 (h!21136 rules!1640))))) b!1484374))

(assert (= (and b!1483623 ((_ is Union!4117) (regOne!8746 (regex!2803 (h!21136 rules!1640))))) b!1484375))

(declare-fun b!1484378 () Bool)

(declare-fun e!949274 () Bool)

(declare-fun tp!421663 () Bool)

(assert (=> b!1484378 (= e!949274 tp!421663)))

(assert (=> b!1483623 (= tp!421306 e!949274)))

(declare-fun b!1484377 () Bool)

(declare-fun tp!421666 () Bool)

(declare-fun tp!421662 () Bool)

(assert (=> b!1484377 (= e!949274 (and tp!421666 tp!421662))))

(declare-fun b!1484376 () Bool)

(assert (=> b!1484376 (= e!949274 tp_is_empty!6993)))

(declare-fun b!1484379 () Bool)

(declare-fun tp!421665 () Bool)

(declare-fun tp!421664 () Bool)

(assert (=> b!1484379 (= e!949274 (and tp!421665 tp!421664))))

(assert (= (and b!1483623 ((_ is ElementMatch!4117) (regTwo!8746 (regex!2803 (h!21136 rules!1640))))) b!1484376))

(assert (= (and b!1483623 ((_ is Concat!7010) (regTwo!8746 (regex!2803 (h!21136 rules!1640))))) b!1484377))

(assert (= (and b!1483623 ((_ is Star!4117) (regTwo!8746 (regex!2803 (h!21136 rules!1640))))) b!1484378))

(assert (= (and b!1483623 ((_ is Union!4117) (regTwo!8746 (regex!2803 (h!21136 rules!1640))))) b!1484379))

(declare-fun b!1484380 () Bool)

(declare-fun e!949275 () Bool)

(declare-fun setRes!8281 () Bool)

(declare-fun tp!421667 () Bool)

(assert (=> b!1484380 (= e!949275 (and setRes!8281 tp!421667))))

(declare-fun condSetEmpty!8281 () Bool)

(assert (=> b!1484380 (= condSetEmpty!8281 (= (_1!8083 (_1!8084 (h!21130 (t!137714 (zeroValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64)))))))))) ((as const (Array Context!1270 Bool)) false)))))

(declare-fun setIsEmpty!8281 () Bool)

(assert (=> setIsEmpty!8281 setRes!8281))

(declare-fun setNonEmpty!8281 () Bool)

(declare-fun tp!421669 () Bool)

(declare-fun e!949276 () Bool)

(declare-fun setElem!8281 () Context!1270)

(assert (=> setNonEmpty!8281 (= setRes!8281 (and tp!421669 (inv!20959 setElem!8281) e!949276))))

(declare-fun setRest!8281 () (InoxSet Context!1270))

(assert (=> setNonEmpty!8281 (= (_1!8083 (_1!8084 (h!21130 (t!137714 (zeroValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64)))))))))) ((_ map or) (store ((as const (Array Context!1270 Bool)) false) setElem!8281 true) setRest!8281))))

(declare-fun b!1484381 () Bool)

(declare-fun tp!421668 () Bool)

(assert (=> b!1484381 (= e!949276 tp!421668)))

(assert (=> b!1483566 (= tp!421236 e!949275)))

(assert (= (and b!1484380 condSetEmpty!8281) setIsEmpty!8281))

(assert (= (and b!1484380 (not condSetEmpty!8281)) setNonEmpty!8281))

(assert (= setNonEmpty!8281 b!1484381))

(assert (= (and b!1483566 ((_ is Cons!15729) (t!137714 (zeroValue!1617 (v!22569 (underlying!2929 (v!22570 (underlying!2930 (cache!1685 cacheFurthestNullable!64))))))))) b!1484380))

(declare-fun m!1731068 () Bool)

(assert (=> setNonEmpty!8281 m!1731068))

(declare-fun b_lambda!46473 () Bool)

(assert (= b_lambda!46471 (or d!435018 b_lambda!46473)))

(declare-fun bs!346567 () Bool)

(declare-fun d!435346 () Bool)

(assert (= bs!346567 (and d!435346 d!435018)))

(assert (=> bs!346567 (= (dynLambda!7165 lambda!63840 (h!21136 rules!1640)) (ruleValid!631 thiss!13241 (h!21136 rules!1640)))))

(assert (=> bs!346567 m!1729941))

(assert (=> b!1484082 d!435346))

(check-sat (not setNonEmpty!8246) (not b!1483909) (not d!435138) (not d!435116) (not b_next!39147) (not d!435264) (not b!1483757) (not d!435232) (not b!1484304) (not d!435282) (not d!435206) (not b!1483912) (not setNonEmpty!8255) (not b!1484300) (not b!1483845) (not b!1484055) (not b!1484131) (not b!1484322) (not b!1484216) (not b!1484229) (not b!1484348) (not b!1484296) (not d!435108) (not b!1484186) (not b!1483703) (not d!435274) (not b!1484145) (not b_next!39155) (not d!435318) (not b!1484190) (not b!1484284) (not b_next!39137) (not b!1484353) (not b!1484276) (not b!1484380) (not b!1483896) (not bm!98609) (not b!1484252) (not b!1484234) (not setNonEmpty!8258) tp_is_empty!6993 (not b!1483702) (not setNonEmpty!8269) (not b!1483546) (not b!1483846) (not b!1484349) (not setNonEmpty!8281) (not b!1484105) (not d!435244) (not setNonEmpty!8270) (not b!1484301) (not b!1484106) (not d!435242) (not b!1484334) (not b!1483664) (not d!435330) (not b!1484092) (not setNonEmpty!8262) (not bm!98606) (not b!1484239) (not b!1484045) (not b!1483759) (not d!435240) (not setNonEmpty!8252) (not setNonEmpty!8265) (not b_next!39151) (not b!1483947) (not b!1484346) (not b!1484199) (not b!1483832) (not b!1483723) (not b!1483922) (not b!1484002) (not b!1484341) (not d!435180) (not d!435290) (not b!1483914) (not b!1484043) (not b!1484017) b_and!103161 (not d!435176) (not b!1484109) (not b!1484281) b_and!103171 (not setNonEmpty!8253) (not b!1484058) (not b!1484114) (not b!1483999) (not b!1484147) (not d!435292) (not setNonEmpty!8254) (not b!1484268) (not d!435082) (not b!1484136) (not b!1483863) (not d!435296) (not d!435160) (not b!1483987) (not b!1483979) (not b!1484373) (not setNonEmpty!8271) (not b!1484222) (not b!1484280) (not b!1484202) (not d!435102) (not b!1484111) (not d!435294) (not d!435086) (not b!1484040) (not b!1484176) (not b!1484149) (not setNonEmpty!8261) (not b!1484259) (not b!1484037) (not b!1484219) (not d!435334) (not d!435222) (not b!1483981) (not b!1483935) (not b!1484008) (not setNonEmpty!8256) (not b!1483780) (not b!1484375) (not b!1484044) b_and!103163 (not b!1484128) (not d!435184) b_and!103167 (not b!1484290) (not d!435194) (not b!1483503) (not setNonEmpty!8260) (not b!1483978) (not mapNonEmpty!6511) (not d!435288) (not b!1484278) (not b!1484244) (not b!1484164) (not b!1483640) (not d!435284) (not b!1484220) (not setNonEmpty!8278) (not b!1484150) (not setNonEmpty!8274) (not b!1484274) (not b!1484251) (not b!1484016) (not b!1484255) (not b!1484328) (not b!1484122) (not b!1484344) (not b!1483865) (not b!1484261) (not d!435262) (not b!1484332) (not b!1484379) (not b!1484183) (not b!1484338) (not b!1484112) (not mapNonEmpty!6512) (not b!1484337) (not d!435122) (not b!1483747) (not d!435140) (not b!1484189) (not b!1484339) (not b!1484191) (not b!1484158) (not b!1484316) (not bm!98598) (not mapNonEmpty!6510) (not b!1483885) (not b!1484335) (not b!1484317) (not b!1484312) (not d!435218) (not b!1484311) (not d!435332) (not b!1483980) (not d!435130) (not bm!98595) (not b!1483778) (not d!435230) (not d!435272) (not d!435198) (not b!1483911) (not d!435336) (not b!1483864) (not b!1483892) (not b!1484208) (not setNonEmpty!8251) (not b!1484352) (not b!1484026) (not bm!98603) (not b!1484327) (not b!1483678) (not b!1484340) (not b!1484099) (not b!1484263) (not b!1484366) (not b!1484310) (not b!1484107) (not b!1484302) (not d!435260) (not b!1483695) (not b!1484207) (not b_next!39153) (not d!435210) (not b!1484061) (not d!435076) (not d!435238) (not b!1484215) (not b!1484357) (not d!435304) (not d!435270) (not d!435088) (not b!1484356) (not b!1483783) (not setNonEmpty!8279) (not b!1484036) (not d!435200) (not b!1484218) (not b!1484070) (not b!1483782) (not b!1484381) (not b!1484123) (not b!1484272) (not b!1484134) (not setNonEmpty!8244) (not b!1483705) (not b!1484004) b_and!103165 (not setNonEmpty!8249) (not b!1484223) (not b!1484279) (not d!435216) (not b!1484364) (not b!1483953) (not setNonEmpty!8273) (not b!1483866) (not b!1484361) (not d!435338) (not b!1483784) (not b!1484110) (not b!1484262) (not b!1484228) (not bm!98590) (not setNonEmpty!8242) (not b!1484192) (not b!1484313) (not setNonEmpty!8245) (not b!1484320) (not b!1484330) (not b!1483886) (not b!1483698) (not b!1484342) (not b!1484083) (not d!435344) (not b!1484314) (not b!1483677) (not d!435092) (not b_next!39149) (not d!435192) (not b!1484237) (not b!1484309) b_and!103153 (not b!1484203) (not b!1484156) (not setNonEmpty!8264) (not b!1483701) (not b!1484374) (not b!1484009) b_and!103149 (not b!1484184) (not b!1484362) (not b!1483661) (not bs!346567) (not d!435328) (not b!1483867) (not d!435320) (not b!1484204) (not setNonEmpty!8241) (not b!1484200) (not b!1484293) (not d!435164) (not b_next!39139) (not b!1484269) (not b!1483581) (not b_next!39143) (not b!1484135) (not d!435128) (not b!1484333) (not b_next!39145) (not b!1483891) (not d!435310) (not b!1484019) (not d!435266) (not b!1483869) (not setNonEmpty!8257) (not d!435236) (not b!1484201) (not b!1484217) (not b!1484120) (not b!1484227) (not d!435094) (not d!435268) (not b!1484015) (not b!1484377) (not b!1484124) (not b!1484318) (not b!1484238) (not b!1484072) (not b!1484235) (not d!435214) (not b!1484086) (not setNonEmpty!8280) (not b!1483878) (not b!1484021) (not b!1484236) (not setNonEmpty!8276) (not b!1484358) (not b!1484286) (not b!1484350) (not b!1484240) (not d!435166) (not b!1484329) (not b!1484096) (not b!1484155) (not b!1483998) (not b!1483862) (not b!1484005) (not bm!98557) (not b!1484185) (not b!1484084) b_and!103145 (not b!1484231) (not b!1483871) (not b!1484097) (not b!1484343) (not b!1484121) (not b!1484256) (not b!1484370) (not b!1483537) (not d!435220) (not b!1484193) (not b!1484291) (not b!1484046) (not d!435168) (not b!1484153) (not b!1484118) (not b!1483870) (not b!1484347) (not d!435084) (not b!1484094) (not b!1484090) (not b!1484116) (not b!1484232) (not b!1484119) (not b!1484363) (not b!1484305) (not d!435316) (not b!1484306) (not bm!98599) (not b!1483936) (not b!1483948) b_and!103151 (not d!435306) (not b!1484127) (not setNonEmpty!8267) (not b!1484336) (not b!1484163) (not b!1484030) (not b!1484221) (not b!1484246) (not b!1484195) (not b!1484042) (not setNonEmpty!8247) (not b!1484126) b_and!103159 (not setNonEmpty!8263) (not b!1484108) (not d!435170) (not d!435228) (not b!1484378) b_and!103147 (not d!435120) (not b!1484006) (not b!1484041) (not b!1484188) (not d!435308) (not b!1484198) (not d!435142) (not d!435182) (not setNonEmpty!8240) (not b!1484213) (not b!1484369) (not b!1484248) (not b!1484018) (not b_next!39131) (not b!1483993) (not b!1484129) (not b_next!39141) (not b_next!39133) (not b!1484125) (not b_lambda!46473) (not b!1484247) (not b!1483748) (not b!1484315) (not b!1484292) (not b!1484264) (not b!1484233) (not b!1484326) (not d!435126) (not b!1484013) (not b!1484245) (not b!1484367) (not b!1484365) (not b!1484197) (not b!1484089) (not b!1484307) (not b!1484075) (not b!1484003) (not bm!98611) (not b!1484253) (not b!1484205) (not b!1483920) (not d!435162) (not d!435158) (not b!1483849) (not setNonEmpty!8277) (not b_next!39135) (not d!435178) (not b!1484074) (not b!1484321) (not b!1484031) (not b!1484265) (not b!1484130) (not b!1484133) (not b!1484175) (not setNonEmpty!8259) (not b!1484270) (not b!1484360) (not d!435234) (not b!1483696) (not bm!98591) (not b!1484146) (not b!1483954) (not d!435312) (not b!1483992) (not b!1484085) (not b!1484196) (not b!1484087) (not b!1484258) (not b!1484267) (not b!1484275) (not d!435190) (not b!1484088) (not b!1484095) (not b!1484319) (not b!1484285) (not b!1484194) (not b!1484257) (not b!1484345) (not b!1484303) (not b!1483717) (not b!1483881) (not b!1484368) (not b!1484294) (not d!435096) (not b!1484141) (not d!435090) (not b!1484113) (not b!1484077) (not d!435100) (not b!1483986) (not b!1484093) (not d!435302) (not b!1483718) (not b!1484288) (not b!1484177) (not b_next!39157) (not setNonEmpty!8250) (not b!1484260) (not setNonEmpty!8268) (not d!435188) (not b!1484359) (not b!1484012) (not setNonEmpty!8248) (not b!1484103) (not b!1483977) (not b!1484282) (not setNonEmpty!8275) (not b!1483983) (not b!1484226) (not b!1484295) (not b!1484225) b_and!103155 (not b!1483958) (not b!1483924) (not b!1484249) (not d!435276) (not b!1484214) (not d!435174) (not b!1484325) (not b!1484152) (not setNonEmpty!8266) (not b!1484371) (not b!1484271) (not d!435098) (not b!1484100) (not b!1484266) (not b!1484287) (not d!435148) (not b!1484138) (not b!1483835) (not b!1484007) (not b!1484102) (not b!1484206) (not b!1484230) (not b!1484137) (not b!1484224) (not bm!98594) (not b!1483781) (not b!1484331) (not d!435106) (not b!1484283) (not b!1484187) (not b!1483662) (not b!1483684) (not setNonEmpty!8243) (not b!1483910) (not setNonEmpty!8272) b_and!103169 (not b!1483976) (not b!1483659) (not b!1483844) (not b!1484140) (not b!1484323) (not b!1483676) (not b!1483913) (not d!435212) b_and!103157 (not d!435124) (not b!1483894) (not b!1484243) (not bm!98610) (not b!1484297) (not b!1483882) (not b!1484250) (not b!1484014) (not b!1484354) (not b!1484298))
(check-sat (not b_next!39147) (not b_next!39151) b_and!103161 b_and!103171 (not b_next!39153) b_and!103165 (not b_next!39149) b_and!103145 b_and!103151 (not b_next!39135) b_and!103169 b_and!103157 (not b_next!39155) (not b_next!39137) b_and!103167 b_and!103163 b_and!103153 b_and!103149 (not b_next!39139) (not b_next!39143) (not b_next!39145) b_and!103159 b_and!103147 (not b_next!39131) (not b_next!39141) (not b_next!39133) (not b_next!39157) b_and!103155)
