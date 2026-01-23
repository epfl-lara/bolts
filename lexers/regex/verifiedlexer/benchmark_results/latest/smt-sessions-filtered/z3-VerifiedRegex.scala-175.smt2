; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2180 () Bool)

(assert start!2180)

(declare-fun b!38758 () Bool)

(declare-fun b_free!669 () Bool)

(declare-fun b_next!669 () Bool)

(assert (=> b!38758 (= b_free!669 (not b_next!669))))

(declare-fun tp!26952 () Bool)

(declare-fun b_and!703 () Bool)

(assert (=> b!38758 (= tp!26952 b_and!703)))

(declare-fun b!38759 () Bool)

(declare-fun b_free!671 () Bool)

(declare-fun b_next!671 () Bool)

(assert (=> b!38759 (= b_free!671 (not b_next!671))))

(declare-fun tp!26950 () Bool)

(declare-fun b_and!705 () Bool)

(assert (=> b!38759 (= tp!26950 b_and!705)))

(declare-fun b!38737 () Bool)

(declare-fun b_free!673 () Bool)

(declare-fun b_next!673 () Bool)

(assert (=> b!38737 (= b_free!673 (not b_next!673))))

(declare-fun tp!26958 () Bool)

(declare-fun b_and!707 () Bool)

(assert (=> b!38737 (= tp!26958 b_and!707)))

(declare-fun b!38760 () Bool)

(declare-fun b_free!675 () Bool)

(declare-fun b_next!675 () Bool)

(assert (=> b!38760 (= b_free!675 (not b_next!675))))

(declare-fun tp!26956 () Bool)

(declare-fun b_and!709 () Bool)

(assert (=> b!38760 (= tp!26956 b_and!709)))

(declare-fun b!38753 () Bool)

(declare-fun b_free!677 () Bool)

(declare-fun b_next!677 () Bool)

(assert (=> b!38753 (= b_free!677 (not b_next!677))))

(declare-fun tp!26962 () Bool)

(declare-fun b_and!711 () Bool)

(assert (=> b!38753 (= tp!26962 b_and!711)))

(declare-fun b!38748 () Bool)

(declare-fun b_free!679 () Bool)

(declare-fun b_next!679 () Bool)

(assert (=> b!38748 (= b_free!679 (not b_next!679))))

(declare-fun tp!26951 () Bool)

(declare-fun b_and!713 () Bool)

(assert (=> b!38748 (= tp!26951 b_and!713)))

(declare-fun e!19417 () Bool)

(declare-fun e!19427 () Bool)

(assert (=> b!38737 (= e!19417 (and e!19427 tp!26958))))

(declare-fun b!38738 () Bool)

(declare-fun res!28620 () Bool)

(declare-fun e!19415 () Bool)

(assert (=> b!38738 (=> (not res!28620) (not e!19415))))

(declare-datatypes ((Regex!195 0))(
  ( (ElementMatch!195 (c!15746 (_ BitVec 16))) (Concat!318 (regOne!902 Regex!195) (regTwo!902 Regex!195)) (EmptyExpr!195) (Star!195 (reg!524 Regex!195)) (EmptyLang!195) (Union!195 (regOne!903 Regex!195) (regTwo!903 Regex!195)) )
))
(declare-datatypes ((List!457 0))(
  ( (Nil!455) (Cons!455 (h!5851 Regex!195) (t!15413 List!457)) )
))
(declare-datatypes ((Context!106 0))(
  ( (Context!107 (exprs!553 List!457)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!132 0))(
  ( (tuple3!133 (_1!316 (InoxSet Context!106)) (_2!316 Int) (_3!73 Int)) )
))
(declare-datatypes ((tuple2!486 0))(
  ( (tuple2!487 (_1!317 tuple3!132) (_2!317 Int)) )
))
(declare-datatypes ((List!458 0))(
  ( (Nil!456) (Cons!456 (h!5852 tuple2!486) (t!15414 List!458)) )
))
(declare-datatypes ((List!459 0))(
  ( (Nil!457) (Cons!457 (h!5853 (_ BitVec 16)) (t!15415 List!459)) )
))
(declare-datatypes ((IArray!139 0))(
  ( (IArray!140 (innerList!127 List!459)) )
))
(declare-datatypes ((Conc!69 0))(
  ( (Node!69 (left!448 Conc!69) (right!778 Conc!69) (csize!368 Int) (cheight!280 Int)) (Leaf!245 (xs!2648 IArray!139) (csize!369 Int)) (Empty!69) )
))
(declare-datatypes ((BalanceConc!138 0))(
  ( (BalanceConc!139 (c!15747 Conc!69)) )
))
(declare-datatypes ((array!466 0))(
  ( (array!467 (arr!240 (Array (_ BitVec 32) (_ BitVec 64))) (size!500 (_ BitVec 32))) )
))
(declare-datatypes ((array!468 0))(
  ( (array!469 (arr!241 (Array (_ BitVec 32) List!458)) (size!501 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!266 0))(
  ( (LongMapFixedSize!267 (defaultEntry!471 Int) (mask!832 (_ BitVec 32)) (extraKeys!379 (_ BitVec 32)) (zeroValue!389 List!458) (minValue!389 List!458) (_size!398 (_ BitVec 32)) (_keys!424 array!466) (_values!411 array!468) (_vacant!193 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!129 0))(
  ( (HashableExt!128 (__x!827 Int)) )
))
(declare-datatypes ((Cell!521 0))(
  ( (Cell!522 (v!12239 LongMapFixedSize!266)) )
))
(declare-datatypes ((MutLongMap!133 0))(
  ( (LongMap!133 (underlying!461 Cell!521)) (MutLongMapExt!132 (__x!828 Int)) )
))
(declare-datatypes ((Cell!523 0))(
  ( (Cell!524 (v!12240 MutLongMap!133)) )
))
(declare-datatypes ((MutableMap!129 0))(
  ( (MutableMapExt!128 (__x!829 Int)) (HashMap!129 (underlying!462 Cell!523) (hashF!1997 Hashable!129) (_size!399 (_ BitVec 32)) (defaultValue!278 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!36 0))(
  ( (CacheFurthestNullable!37 (cache!614 MutableMap!129) (totalInput!1495 BalanceConc!138)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!36)

(declare-fun valid!139 (CacheFurthestNullable!36) Bool)

(assert (=> b!38738 (= res!28620 (valid!139 cacheFurthestNullable!45))))

(declare-fun b!38739 () Bool)

(declare-fun e!19419 () Bool)

(declare-fun tp!26963 () Bool)

(declare-fun mapRes!483 () Bool)

(assert (=> b!38739 (= e!19419 (and tp!26963 mapRes!483))))

(declare-fun condMapEmpty!482 () Bool)

(declare-fun mapDefault!481 () List!458)

(assert (=> b!38739 (= condMapEmpty!482 (= (arr!241 (_values!411 (v!12239 (underlying!461 (v!12240 (underlying!462 (cache!614 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!458)) mapDefault!481)))))

(declare-fun b!38740 () Bool)

(declare-fun e!19418 () Bool)

(declare-fun e!19414 () Bool)

(assert (=> b!38740 (= e!19418 e!19414)))

(declare-fun b!38741 () Bool)

(declare-fun e!19420 () Bool)

(assert (=> b!38741 (= e!19420 e!19417)))

(declare-fun b!38742 () Bool)

(declare-fun e!19424 () Bool)

(assert (=> b!38742 (= e!19414 e!19424)))

(declare-fun b!38743 () Bool)

(declare-fun res!28624 () Bool)

(assert (=> b!38743 (=> (not res!28624) (not e!19415))))

(declare-datatypes ((TokenValue!123 0))(
  ( (FloatLiteralValue!246 (text!1306 List!459)) (TokenValueExt!122 (__x!830 Int)) (Broken!615 (value!6571 List!459)) (Object!124) (End!123) (Def!123) (Underscore!123) (Match!123) (Else!123) (Error!123) (Case!123) (If!123) (Extends!123) (Abstract!123) (Class!123) (Val!123) (DelimiterValue!246 (del!183 List!459)) (KeywordValue!129 (value!6572 List!459)) (CommentValue!246 (value!6573 List!459)) (WhitespaceValue!246 (value!6574 List!459)) (IndentationValue!123 (value!6575 List!459)) (String!902) (Int32!123) (Broken!616 (value!6576 List!459)) (Boolean!124) (Unit!217) (OperatorValue!126 (op!183 List!459)) (IdentifierValue!246 (value!6577 List!459)) (IdentifierValue!247 (value!6578 List!459)) (WhitespaceValue!247 (value!6579 List!459)) (True!246) (False!246) (Broken!617 (value!6580 List!459)) (Broken!618 (value!6581 List!459)) (True!247) (RightBrace!123) (RightBracket!123) (Colon!123) (Null!123) (Comma!123) (LeftBracket!123) (False!247) (LeftBrace!123) (ImaginaryLiteralValue!123 (text!1307 List!459)) (StringLiteralValue!369 (value!6582 List!459)) (EOFValue!123 (value!6583 List!459)) (IdentValue!123 (value!6584 List!459)) (DelimiterValue!247 (value!6585 List!459)) (DedentValue!123 (value!6586 List!459)) (NewLineValue!123 (value!6587 List!459)) (IntegerValue!369 (value!6588 (_ BitVec 32)) (text!1308 List!459)) (IntegerValue!370 (value!6589 Int) (text!1309 List!459)) (Times!123) (Or!123) (Equal!123) (Minus!123) (Broken!619 (value!6590 List!459)) (And!123) (Div!123) (LessEqual!123) (Mod!123) (Concat!319) (Not!123) (Plus!123) (SpaceValue!123 (value!6591 List!459)) (IntegerValue!371 (value!6592 Int) (text!1310 List!459)) (StringLiteralValue!370 (text!1311 List!459)) (FloatLiteralValue!247 (text!1312 List!459)) (BytesLiteralValue!123 (value!6593 List!459)) (CommentValue!247 (value!6594 List!459)) (StringLiteralValue!371 (value!6595 List!459)) (ErrorTokenValue!123 (msg!184 List!459)) )
))
(declare-datatypes ((String!903 0))(
  ( (String!904 (value!6596 String)) )
))
(declare-datatypes ((TokenValueInjection!70 0))(
  ( (TokenValueInjection!71 (toValue!612 Int) (toChars!471 Int)) )
))
(declare-datatypes ((Rule!66 0))(
  ( (Rule!67 (regex!133 Regex!195) (tag!311 String!903) (isSeparator!133 Bool) (transformation!133 TokenValueInjection!70)) )
))
(declare-datatypes ((List!460 0))(
  ( (Nil!458) (Cons!458 (h!5854 Rule!66) (t!15416 List!460)) )
))
(declare-fun lt!3463 () List!460)

(declare-datatypes ((LexerInterface!30 0))(
  ( (LexerInterfaceExt!27 (__x!831 Int)) (Lexer!28) )
))
(declare-fun rulesInvariant!23 (LexerInterface!30 List!460) Bool)

(assert (=> b!38743 (= res!28624 (rulesInvariant!23 Lexer!28 lt!3463))))

(declare-fun b!38744 () Bool)

(declare-fun e!19411 () Bool)

(declare-fun tp!26953 () Bool)

(declare-fun mapRes!482 () Bool)

(assert (=> b!38744 (= e!19411 (and tp!26953 mapRes!482))))

(declare-fun condMapEmpty!483 () Bool)

(declare-datatypes ((Hashable!130 0))(
  ( (HashableExt!129 (__x!832 Int)) )
))
(declare-datatypes ((tuple2!488 0))(
  ( (tuple2!489 (_1!318 Context!106) (_2!318 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!490 0))(
  ( (tuple2!491 (_1!319 tuple2!488) (_2!319 (InoxSet Context!106))) )
))
(declare-datatypes ((List!461 0))(
  ( (Nil!459) (Cons!459 (h!5855 tuple2!490) (t!15417 List!461)) )
))
(declare-datatypes ((array!470 0))(
  ( (array!471 (arr!242 (Array (_ BitVec 32) List!461)) (size!502 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!268 0))(
  ( (LongMapFixedSize!269 (defaultEntry!472 Int) (mask!833 (_ BitVec 32)) (extraKeys!380 (_ BitVec 32)) (zeroValue!390 List!461) (minValue!390 List!461) (_size!400 (_ BitVec 32)) (_keys!425 array!466) (_values!412 array!470) (_vacant!194 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!525 0))(
  ( (Cell!526 (v!12241 LongMapFixedSize!268)) )
))
(declare-datatypes ((MutLongMap!134 0))(
  ( (LongMap!134 (underlying!463 Cell!525)) (MutLongMapExt!133 (__x!833 Int)) )
))
(declare-datatypes ((Cell!527 0))(
  ( (Cell!528 (v!12242 MutLongMap!134)) )
))
(declare-datatypes ((MutableMap!130 0))(
  ( (MutableMapExt!129 (__x!834 Int)) (HashMap!130 (underlying!464 Cell!527) (hashF!1998 Hashable!130) (_size!401 (_ BitVec 32)) (defaultValue!279 Int)) )
))
(declare-datatypes ((CacheUp!88 0))(
  ( (CacheUp!89 (cache!615 MutableMap!130)) )
))
(declare-fun cacheUp!320 () CacheUp!88)

(declare-fun mapDefault!482 () List!461)

(assert (=> b!38744 (= condMapEmpty!483 (= (arr!242 (_values!412 (v!12241 (underlying!463 (v!12242 (underlying!464 (cache!615 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!461)) mapDefault!482)))))

(declare-fun b!38745 () Bool)

(declare-fun e!19416 () Bool)

(declare-fun lt!3461 () MutLongMap!133)

(get-info :version)

(assert (=> b!38745 (= e!19416 (and e!19418 ((_ is LongMap!133) lt!3461)))))

(assert (=> b!38745 (= lt!3461 (v!12240 (underlying!462 (cache!614 cacheFurthestNullable!45))))))

(declare-fun mapNonEmpty!481 () Bool)

(declare-fun mapRes!481 () Bool)

(declare-fun tp!26961 () Bool)

(declare-fun tp!26966 () Bool)

(assert (=> mapNonEmpty!481 (= mapRes!481 (and tp!26961 tp!26966))))

(declare-datatypes ((tuple3!134 0))(
  ( (tuple3!135 (_1!320 Regex!195) (_2!320 Context!106) (_3!74 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!492 0))(
  ( (tuple2!493 (_1!321 tuple3!134) (_2!321 (InoxSet Context!106))) )
))
(declare-datatypes ((List!462 0))(
  ( (Nil!460) (Cons!460 (h!5856 tuple2!492) (t!15418 List!462)) )
))
(declare-fun mapValue!482 () List!462)

(declare-datatypes ((array!472 0))(
  ( (array!473 (arr!243 (Array (_ BitVec 32) List!462)) (size!503 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!270 0))(
  ( (LongMapFixedSize!271 (defaultEntry!473 Int) (mask!834 (_ BitVec 32)) (extraKeys!381 (_ BitVec 32)) (zeroValue!391 List!462) (minValue!391 List!462) (_size!402 (_ BitVec 32)) (_keys!426 array!466) (_values!413 array!472) (_vacant!195 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!529 0))(
  ( (Cell!530 (v!12243 LongMapFixedSize!270)) )
))
(declare-datatypes ((MutLongMap!135 0))(
  ( (LongMap!135 (underlying!465 Cell!529)) (MutLongMapExt!134 (__x!835 Int)) )
))
(declare-datatypes ((Cell!531 0))(
  ( (Cell!532 (v!12244 MutLongMap!135)) )
))
(declare-datatypes ((Hashable!131 0))(
  ( (HashableExt!130 (__x!836 Int)) )
))
(declare-datatypes ((MutableMap!131 0))(
  ( (MutableMapExt!130 (__x!837 Int)) (HashMap!131 (underlying!466 Cell!531) (hashF!1999 Hashable!131) (_size!403 (_ BitVec 32)) (defaultValue!280 Int)) )
))
(declare-datatypes ((CacheDown!90 0))(
  ( (CacheDown!91 (cache!616 MutableMap!131)) )
))
(declare-fun cacheDown!333 () CacheDown!90)

(declare-fun mapRest!481 () (Array (_ BitVec 32) List!462))

(declare-fun mapKey!481 () (_ BitVec 32))

(assert (=> mapNonEmpty!481 (= (arr!243 (_values!413 (v!12243 (underlying!465 (v!12244 (underlying!466 (cache!616 cacheDown!333))))))) (store mapRest!481 mapKey!481 mapValue!482))))

(declare-fun e!19406 () Bool)

(declare-fun e!19422 () Bool)

(declare-fun e!19403 () Bool)

(declare-fun b!38747 () Bool)

(declare-fun inv!763 (BalanceConc!138) Bool)

(assert (=> b!38747 (= e!19403 (and e!19422 (inv!763 (totalInput!1495 cacheFurthestNullable!45)) e!19406))))

(declare-fun e!19408 () Bool)

(declare-fun tp!26947 () Bool)

(declare-fun tp!26955 () Bool)

(declare-fun array_inv!150 (array!466) Bool)

(declare-fun array_inv!151 (array!470) Bool)

(assert (=> b!38748 (= e!19408 (and tp!26951 tp!26955 tp!26947 (array_inv!150 (_keys!425 (v!12241 (underlying!463 (v!12242 (underlying!464 (cache!615 cacheUp!320))))))) (array_inv!151 (_values!412 (v!12241 (underlying!463 (v!12242 (underlying!464 (cache!615 cacheUp!320))))))) e!19411))))

(declare-fun b!38749 () Bool)

(declare-fun e!19421 () Bool)

(declare-fun e!19409 () Bool)

(assert (=> b!38749 (= e!19421 e!19409)))

(declare-fun b!38750 () Bool)

(assert (=> b!38750 (= e!19409 e!19408)))

(declare-fun b!38751 () Bool)

(declare-fun e!19413 () Bool)

(declare-fun input!525 () BalanceConc!138)

(declare-fun tp!26960 () Bool)

(declare-fun inv!764 (Conc!69) Bool)

(assert (=> b!38751 (= e!19413 (and (inv!764 (c!15747 input!525)) tp!26960))))

(declare-fun b!38752 () Bool)

(declare-fun e!19425 () Bool)

(declare-fun tp!26959 () Bool)

(assert (=> b!38752 (= e!19425 (and tp!26959 mapRes!481))))

(declare-fun condMapEmpty!481 () Bool)

(declare-fun mapDefault!483 () List!462)

(assert (=> b!38752 (= condMapEmpty!481 (= (arr!243 (_values!413 (v!12243 (underlying!465 (v!12244 (underlying!466 (cache!616 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!462)) mapDefault!483)))))

(declare-fun e!19412 () Bool)

(declare-fun e!19404 () Bool)

(assert (=> b!38753 (= e!19412 (and e!19404 tp!26962))))

(declare-fun b!38754 () Bool)

(declare-fun lt!3460 () MutLongMap!134)

(assert (=> b!38754 (= e!19427 (and e!19421 ((_ is LongMap!134) lt!3460)))))

(assert (=> b!38754 (= lt!3460 (v!12242 (underlying!464 (cache!615 cacheUp!320))))))

(declare-fun mapIsEmpty!481 () Bool)

(assert (=> mapIsEmpty!481 mapRes!481))

(declare-fun b!38755 () Bool)

(declare-fun e!19407 () Bool)

(declare-fun lt!3462 () MutLongMap!135)

(assert (=> b!38755 (= e!19404 (and e!19407 ((_ is LongMap!135) lt!3462)))))

(assert (=> b!38755 (= lt!3462 (v!12244 (underlying!466 (cache!616 cacheDown!333))))))

(declare-fun b!38756 () Bool)

(declare-fun e!19401 () Bool)

(declare-fun e!19402 () Bool)

(assert (=> b!38756 (= e!19401 e!19402)))

(declare-fun b!38757 () Bool)

(assert (=> b!38757 (= e!19415 false)))

(declare-datatypes ((Token!38 0))(
  ( (Token!39 (value!6597 TokenValue!123) (rule!612 Rule!66) (size!504 Int) (originalCharacters!190 List!459)) )
))
(declare-datatypes ((List!463 0))(
  ( (Nil!461) (Cons!461 (h!5857 Token!38) (t!15419 List!463)) )
))
(declare-fun lt!3456 () List!463)

(declare-datatypes ((IArray!141 0))(
  ( (IArray!142 (innerList!128 List!463)) )
))
(declare-datatypes ((Conc!70 0))(
  ( (Node!70 (left!449 Conc!70) (right!779 Conc!70) (csize!370 Int) (cheight!281 Int)) (Leaf!246 (xs!2649 IArray!141) (csize!371 Int)) (Empty!70) )
))
(declare-datatypes ((BalanceConc!140 0))(
  ( (BalanceConc!141 (c!15748 Conc!70)) )
))
(declare-datatypes ((tuple2!494 0))(
  ( (tuple2!495 (_1!322 BalanceConc!140) (_2!322 BalanceConc!138)) )
))
(declare-fun lt!3455 () tuple2!494)

(declare-fun list!117 (BalanceConc!140) List!463)

(assert (=> b!38757 (= lt!3456 (list!117 (_1!322 lt!3455)))))

(declare-fun lt!3454 () List!463)

(declare-datatypes ((tuple4!14 0))(
  ( (tuple4!15 (_1!323 tuple2!494) (_2!323 CacheUp!88) (_3!75 CacheDown!90) (_4!7 CacheFurthestNullable!36)) )
))
(declare-fun lt!3458 () tuple4!14)

(assert (=> b!38757 (= lt!3454 (list!117 (_1!322 (_1!323 lt!3458))))))

(declare-fun lex!7 (LexerInterface!30 List!460 BalanceConc!138) tuple2!494)

(assert (=> b!38757 (= lt!3455 (lex!7 Lexer!28 lt!3463 input!525))))

(declare-datatypes ((Unit!218 0))(
  ( (Unit!219) )
))
(declare-fun lt!3457 () Unit!218)

(declare-fun lemmaInvariant!9 (CacheDown!90) Unit!218)

(assert (=> b!38757 (= lt!3457 (lemmaInvariant!9 (_3!75 lt!3458)))))

(declare-fun lt!3459 () Unit!218)

(declare-fun lemmaInvariant!10 (CacheUp!88) Unit!218)

(assert (=> b!38757 (= lt!3459 (lemmaInvariant!10 (_2!323 lt!3458)))))

(declare-fun lexMem!3 (LexerInterface!30 List!460 BalanceConc!138 CacheUp!88 CacheDown!90 CacheFurthestNullable!36) tuple4!14)

(assert (=> b!38757 (= lt!3458 (lexMem!3 Lexer!28 lt!3463 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> b!38758 (= e!19422 (and e!19416 tp!26952))))

(declare-fun tp!26957 () Bool)

(declare-fun tp!26948 () Bool)

(declare-fun array_inv!152 (array!472) Bool)

(assert (=> b!38759 (= e!19402 (and tp!26950 tp!26948 tp!26957 (array_inv!150 (_keys!426 (v!12243 (underlying!465 (v!12244 (underlying!466 (cache!616 cacheDown!333))))))) (array_inv!152 (_values!413 (v!12243 (underlying!465 (v!12244 (underlying!466 (cache!616 cacheDown!333))))))) e!19425))))

(declare-fun mapNonEmpty!482 () Bool)

(declare-fun tp!26969 () Bool)

(declare-fun tp!26967 () Bool)

(assert (=> mapNonEmpty!482 (= mapRes!482 (and tp!26969 tp!26967))))

(declare-fun mapRest!483 () (Array (_ BitVec 32) List!461))

(declare-fun mapKey!483 () (_ BitVec 32))

(declare-fun mapValue!481 () List!461)

(assert (=> mapNonEmpty!482 (= (arr!242 (_values!412 (v!12241 (underlying!463 (v!12242 (underlying!464 (cache!615 cacheUp!320))))))) (store mapRest!483 mapKey!483 mapValue!481))))

(declare-fun b!38746 () Bool)

(declare-fun tp!26949 () Bool)

(assert (=> b!38746 (= e!19406 (and (inv!764 (c!15747 (totalInput!1495 cacheFurthestNullable!45))) tp!26949))))

(declare-fun res!28621 () Bool)

(assert (=> start!2180 (=> (not res!28621) (not e!19415))))

(declare-fun isEmpty!102 (List!460) Bool)

(assert (=> start!2180 (= res!28621 (not (isEmpty!102 lt!3463)))))

(declare-datatypes ((JsonLexer!28 0))(
  ( (JsonLexer!29) )
))
(declare-fun rules!109 (JsonLexer!28) List!460)

(assert (=> start!2180 (= lt!3463 (rules!109 JsonLexer!29))))

(assert (=> start!2180 e!19415))

(declare-fun e!19423 () Bool)

(declare-fun inv!765 (CacheDown!90) Bool)

(assert (=> start!2180 (and (inv!765 cacheDown!333) e!19423)))

(assert (=> start!2180 (and (inv!763 input!525) e!19413)))

(declare-fun inv!766 (CacheFurthestNullable!36) Bool)

(assert (=> start!2180 (and (inv!766 cacheFurthestNullable!45) e!19403)))

(declare-fun inv!767 (CacheUp!88) Bool)

(assert (=> start!2180 (and (inv!767 cacheUp!320) e!19420)))

(declare-fun tp!26954 () Bool)

(declare-fun tp!26964 () Bool)

(declare-fun array_inv!153 (array!468) Bool)

(assert (=> b!38760 (= e!19424 (and tp!26956 tp!26954 tp!26964 (array_inv!150 (_keys!424 (v!12239 (underlying!461 (v!12240 (underlying!462 (cache!614 cacheFurthestNullable!45))))))) (array_inv!153 (_values!411 (v!12239 (underlying!461 (v!12240 (underlying!462 (cache!614 cacheFurthestNullable!45))))))) e!19419))))

(declare-fun b!38761 () Bool)

(declare-fun res!28623 () Bool)

(assert (=> b!38761 (=> (not res!28623) (not e!19415))))

(declare-fun valid!140 (CacheDown!90) Bool)

(assert (=> b!38761 (= res!28623 (valid!140 cacheDown!333))))

(declare-fun b!38762 () Bool)

(assert (=> b!38762 (= e!19407 e!19401)))

(declare-fun mapIsEmpty!482 () Bool)

(assert (=> mapIsEmpty!482 mapRes!483))

(declare-fun mapNonEmpty!483 () Bool)

(declare-fun tp!26968 () Bool)

(declare-fun tp!26965 () Bool)

(assert (=> mapNonEmpty!483 (= mapRes!483 (and tp!26968 tp!26965))))

(declare-fun mapKey!482 () (_ BitVec 32))

(declare-fun mapValue!483 () List!458)

(declare-fun mapRest!482 () (Array (_ BitVec 32) List!458))

(assert (=> mapNonEmpty!483 (= (arr!241 (_values!411 (v!12239 (underlying!461 (v!12240 (underlying!462 (cache!614 cacheFurthestNullable!45))))))) (store mapRest!482 mapKey!482 mapValue!483))))

(declare-fun mapIsEmpty!483 () Bool)

(assert (=> mapIsEmpty!483 mapRes!482))

(declare-fun b!38763 () Bool)

(declare-fun res!28625 () Bool)

(assert (=> b!38763 (=> (not res!28625) (not e!19415))))

(assert (=> b!38763 (= res!28625 (= (totalInput!1495 cacheFurthestNullable!45) input!525))))

(declare-fun b!38764 () Bool)

(assert (=> b!38764 (= e!19423 e!19412)))

(declare-fun b!38765 () Bool)

(declare-fun res!28622 () Bool)

(assert (=> b!38765 (=> (not res!28622) (not e!19415))))

(declare-fun valid!141 (CacheUp!88) Bool)

(assert (=> b!38765 (= res!28622 (valid!141 cacheUp!320))))

(assert (= (and start!2180 res!28621) b!38743))

(assert (= (and b!38743 res!28624) b!38765))

(assert (= (and b!38765 res!28622) b!38761))

(assert (= (and b!38761 res!28623) b!38738))

(assert (= (and b!38738 res!28620) b!38763))

(assert (= (and b!38763 res!28625) b!38757))

(assert (= (and b!38752 condMapEmpty!481) mapIsEmpty!481))

(assert (= (and b!38752 (not condMapEmpty!481)) mapNonEmpty!481))

(assert (= b!38759 b!38752))

(assert (= b!38756 b!38759))

(assert (= b!38762 b!38756))

(assert (= (and b!38755 ((_ is LongMap!135) (v!12244 (underlying!466 (cache!616 cacheDown!333))))) b!38762))

(assert (= b!38753 b!38755))

(assert (= (and b!38764 ((_ is HashMap!131) (cache!616 cacheDown!333))) b!38753))

(assert (= start!2180 b!38764))

(assert (= start!2180 b!38751))

(assert (= (and b!38739 condMapEmpty!482) mapIsEmpty!482))

(assert (= (and b!38739 (not condMapEmpty!482)) mapNonEmpty!483))

(assert (= b!38760 b!38739))

(assert (= b!38742 b!38760))

(assert (= b!38740 b!38742))

(assert (= (and b!38745 ((_ is LongMap!133) (v!12240 (underlying!462 (cache!614 cacheFurthestNullable!45))))) b!38740))

(assert (= b!38758 b!38745))

(assert (= (and b!38747 ((_ is HashMap!129) (cache!614 cacheFurthestNullable!45))) b!38758))

(assert (= b!38747 b!38746))

(assert (= start!2180 b!38747))

(assert (= (and b!38744 condMapEmpty!483) mapIsEmpty!483))

(assert (= (and b!38744 (not condMapEmpty!483)) mapNonEmpty!482))

(assert (= b!38748 b!38744))

(assert (= b!38750 b!38748))

(assert (= b!38749 b!38750))

(assert (= (and b!38754 ((_ is LongMap!134) (v!12242 (underlying!464 (cache!615 cacheUp!320))))) b!38749))

(assert (= b!38737 b!38754))

(assert (= (and b!38741 ((_ is HashMap!130) (cache!615 cacheUp!320))) b!38737))

(assert (= start!2180 b!38741))

(declare-fun m!12698 () Bool)

(assert (=> b!38760 m!12698))

(declare-fun m!12700 () Bool)

(assert (=> b!38760 m!12700))

(declare-fun m!12702 () Bool)

(assert (=> b!38757 m!12702))

(declare-fun m!12704 () Bool)

(assert (=> b!38757 m!12704))

(declare-fun m!12706 () Bool)

(assert (=> b!38757 m!12706))

(declare-fun m!12708 () Bool)

(assert (=> b!38757 m!12708))

(declare-fun m!12710 () Bool)

(assert (=> b!38757 m!12710))

(declare-fun m!12712 () Bool)

(assert (=> b!38757 m!12712))

(declare-fun m!12714 () Bool)

(assert (=> b!38765 m!12714))

(declare-fun m!12716 () Bool)

(assert (=> b!38743 m!12716))

(declare-fun m!12718 () Bool)

(assert (=> b!38751 m!12718))

(declare-fun m!12720 () Bool)

(assert (=> b!38747 m!12720))

(declare-fun m!12722 () Bool)

(assert (=> b!38746 m!12722))

(declare-fun m!12724 () Bool)

(assert (=> b!38761 m!12724))

(declare-fun m!12726 () Bool)

(assert (=> mapNonEmpty!483 m!12726))

(declare-fun m!12728 () Bool)

(assert (=> start!2180 m!12728))

(declare-fun m!12730 () Bool)

(assert (=> start!2180 m!12730))

(declare-fun m!12732 () Bool)

(assert (=> start!2180 m!12732))

(declare-fun m!12734 () Bool)

(assert (=> start!2180 m!12734))

(declare-fun m!12736 () Bool)

(assert (=> start!2180 m!12736))

(declare-fun m!12738 () Bool)

(assert (=> start!2180 m!12738))

(declare-fun m!12740 () Bool)

(assert (=> mapNonEmpty!481 m!12740))

(declare-fun m!12742 () Bool)

(assert (=> b!38759 m!12742))

(declare-fun m!12744 () Bool)

(assert (=> b!38759 m!12744))

(declare-fun m!12746 () Bool)

(assert (=> b!38738 m!12746))

(declare-fun m!12748 () Bool)

(assert (=> mapNonEmpty!482 m!12748))

(declare-fun m!12750 () Bool)

(assert (=> b!38748 m!12750))

(declare-fun m!12752 () Bool)

(assert (=> b!38748 m!12752))

(check-sat (not b!38748) (not b!38744) (not b_next!675) (not b!38765) b_and!703 (not b!38761) (not b_next!673) (not b!38751) b_and!705 (not b_next!677) (not mapNonEmpty!482) (not b!38759) b_and!711 b_and!709 (not b!38738) b_and!707 (not b_next!669) (not b!38757) (not b!38739) b_and!713 (not b!38747) (not mapNonEmpty!481) (not b!38760) (not b!38746) (not b_next!671) (not mapNonEmpty!483) (not b!38743) (not b_next!679) (not start!2180) (not b!38752))
(check-sat (not b_next!675) b_and!703 b_and!707 (not b_next!669) b_and!713 (not b_next!671) (not b_next!679) (not b_next!673) b_and!705 (not b_next!677) b_and!711 b_and!709)
