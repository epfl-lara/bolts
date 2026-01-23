; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2636 () Bool)

(assert start!2636)

(declare-fun b!43309 () Bool)

(declare-fun b_free!1053 () Bool)

(declare-fun b_next!1053 () Bool)

(assert (=> b!43309 (= b_free!1053 (not b_next!1053))))

(declare-fun tp!29877 () Bool)

(declare-fun b_and!1087 () Bool)

(assert (=> b!43309 (= tp!29877 b_and!1087)))

(declare-fun b!43333 () Bool)

(declare-fun b_free!1055 () Bool)

(declare-fun b_next!1055 () Bool)

(assert (=> b!43333 (= b_free!1055 (not b_next!1055))))

(declare-fun tp!29876 () Bool)

(declare-fun b_and!1089 () Bool)

(assert (=> b!43333 (= tp!29876 b_and!1089)))

(declare-fun b!43315 () Bool)

(declare-fun b_free!1057 () Bool)

(declare-fun b_next!1057 () Bool)

(assert (=> b!43315 (= b_free!1057 (not b_next!1057))))

(declare-fun tp!29864 () Bool)

(declare-fun b_and!1091 () Bool)

(assert (=> b!43315 (= tp!29864 b_and!1091)))

(declare-fun b!43330 () Bool)

(declare-fun b_free!1059 () Bool)

(declare-fun b_next!1059 () Bool)

(assert (=> b!43330 (= b_free!1059 (not b_next!1059))))

(declare-fun tp!29859 () Bool)

(declare-fun b_and!1093 () Bool)

(assert (=> b!43330 (= tp!29859 b_and!1093)))

(declare-fun b!43335 () Bool)

(declare-fun b_free!1061 () Bool)

(declare-fun b_next!1061 () Bool)

(assert (=> b!43335 (= b_free!1061 (not b_next!1061))))

(declare-fun tp!29866 () Bool)

(declare-fun b_and!1095 () Bool)

(assert (=> b!43335 (= tp!29866 b_and!1095)))

(declare-fun b!43338 () Bool)

(declare-fun b_free!1063 () Bool)

(declare-fun b_next!1063 () Bool)

(assert (=> b!43338 (= b_free!1063 (not b_next!1063))))

(declare-fun tp!29870 () Bool)

(declare-fun b_and!1097 () Bool)

(assert (=> b!43338 (= tp!29870 b_and!1097)))

(declare-fun b!43307 () Bool)

(declare-fun e!23622 () Bool)

(declare-fun e!23644 () Bool)

(declare-datatypes ((Regex!227 0))(
  ( (ElementMatch!227 (c!15969 (_ BitVec 16))) (Concat!378 (regOne!966 Regex!227) (regTwo!966 Regex!227)) (EmptyExpr!227) (Star!227 (reg!556 Regex!227)) (EmptyLang!227) (Union!227 (regOne!967 Regex!227) (regTwo!967 Regex!227)) )
))
(declare-datatypes ((List!669 0))(
  ( (Nil!667) (Cons!667 (h!6063 Regex!227) (t!16306 List!669)) )
))
(declare-datatypes ((Context!170 0))(
  ( (Context!171 (exprs!585 List!669)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!250 0))(
  ( (tuple3!251 (_1!553 (InoxSet Context!170)) (_2!553 Int) (_3!157 Int)) )
))
(declare-datatypes ((tuple2!792 0))(
  ( (tuple2!793 (_1!554 tuple3!250) (_2!554 Int)) )
))
(declare-datatypes ((List!670 0))(
  ( (Nil!668) (Cons!668 (h!6064 tuple2!792) (t!16307 List!670)) )
))
(declare-datatypes ((array!736 0))(
  ( (array!737 (arr!361 (Array (_ BitVec 32) List!670)) (size!664 (_ BitVec 32))) )
))
(declare-datatypes ((array!738 0))(
  ( (array!739 (arr!362 (Array (_ BitVec 32) (_ BitVec 64))) (size!665 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!444 0))(
  ( (LongMapFixedSize!445 (defaultEntry!560 Int) (mask!937 (_ BitVec 32)) (extraKeys!468 (_ BitVec 32)) (zeroValue!478 List!670) (minValue!478 List!670) (_size!576 (_ BitVec 32)) (_keys!513 array!738) (_values!500 array!736) (_vacant!282 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!877 0))(
  ( (Cell!878 (v!12421 LongMapFixedSize!444)) )
))
(declare-datatypes ((MutLongMap!222 0))(
  ( (LongMap!222 (underlying!639 Cell!877)) (MutLongMapExt!221 (__x!1148 Int)) )
))
(declare-fun lt!5075 () MutLongMap!222)

(get-info :version)

(assert (=> b!43307 (= e!23622 (and e!23644 ((_ is LongMap!222) lt!5075)))))

(declare-datatypes ((List!671 0))(
  ( (Nil!669) (Cons!669 (h!6065 (_ BitVec 16)) (t!16308 List!671)) )
))
(declare-datatypes ((IArray!251 0))(
  ( (IArray!252 (innerList!183 List!671)) )
))
(declare-datatypes ((Conc!125 0))(
  ( (Node!125 (left!542 Conc!125) (right!872 Conc!125) (csize!480 Int) (cheight!336 Int)) (Leaf!317 (xs!2704 IArray!251) (csize!481 Int)) (Empty!125) )
))
(declare-datatypes ((BalanceConc!250 0))(
  ( (BalanceConc!251 (c!15970 Conc!125)) )
))
(declare-datatypes ((Hashable!218 0))(
  ( (HashableExt!217 (__x!1149 Int)) )
))
(declare-datatypes ((Cell!879 0))(
  ( (Cell!880 (v!12422 MutLongMap!222)) )
))
(declare-datatypes ((MutableMap!218 0))(
  ( (MutableMapExt!217 (__x!1150 Int)) (HashMap!218 (underlying!640 Cell!879) (hashF!2086 Hashable!218) (_size!577 (_ BitVec 32)) (defaultValue!367 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!96 0))(
  ( (CacheFurthestNullable!97 (cache!703 MutableMap!218) (totalInput!1528 BalanceConc!250)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!96)

(assert (=> b!43307 (= lt!5075 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))

(declare-fun b!43308 () Bool)

(declare-fun e!23631 () Bool)

(declare-datatypes ((TokenValue!151 0))(
  ( (FloatLiteralValue!302 (text!1502 List!671)) (TokenValueExt!150 (__x!1151 Int)) (Broken!755 (value!7372 List!671)) (Object!152) (End!151) (Def!151) (Underscore!151) (Match!151) (Else!151) (Error!151) (Case!151) (If!151) (Extends!151) (Abstract!151) (Class!151) (Val!151) (DelimiterValue!302 (del!211 List!671)) (KeywordValue!157 (value!7373 List!671)) (CommentValue!302 (value!7374 List!671)) (WhitespaceValue!302 (value!7375 List!671)) (IndentationValue!151 (value!7376 List!671)) (String!1050) (Int32!151) (Broken!756 (value!7377 List!671)) (Boolean!152) (Unit!303) (OperatorValue!154 (op!211 List!671)) (IdentifierValue!302 (value!7378 List!671)) (IdentifierValue!303 (value!7379 List!671)) (WhitespaceValue!303 (value!7380 List!671)) (True!302) (False!302) (Broken!757 (value!7381 List!671)) (Broken!758 (value!7382 List!671)) (True!303) (RightBrace!151) (RightBracket!151) (Colon!151) (Null!151) (Comma!151) (LeftBracket!151) (False!303) (LeftBrace!151) (ImaginaryLiteralValue!151 (text!1503 List!671)) (StringLiteralValue!453 (value!7383 List!671)) (EOFValue!151 (value!7384 List!671)) (IdentValue!151 (value!7385 List!671)) (DelimiterValue!303 (value!7386 List!671)) (DedentValue!151 (value!7387 List!671)) (NewLineValue!151 (value!7388 List!671)) (IntegerValue!453 (value!7389 (_ BitVec 32)) (text!1504 List!671)) (IntegerValue!454 (value!7390 Int) (text!1505 List!671)) (Times!151) (Or!151) (Equal!151) (Minus!151) (Broken!759 (value!7391 List!671)) (And!151) (Div!151) (LessEqual!151) (Mod!151) (Concat!379) (Not!151) (Plus!151) (SpaceValue!151 (value!7392 List!671)) (IntegerValue!455 (value!7393 Int) (text!1506 List!671)) (StringLiteralValue!454 (text!1507 List!671)) (FloatLiteralValue!303 (text!1508 List!671)) (BytesLiteralValue!151 (value!7394 List!671)) (CommentValue!303 (value!7395 List!671)) (StringLiteralValue!455 (value!7396 List!671)) (ErrorTokenValue!151 (msg!212 List!671)) )
))
(declare-datatypes ((String!1051 0))(
  ( (String!1052 (value!7397 String)) )
))
(declare-datatypes ((TokenValueInjection!126 0))(
  ( (TokenValueInjection!127 (toValue!640 Int) (toChars!499 Int)) )
))
(declare-datatypes ((Rule!122 0))(
  ( (Rule!123 (regex!161 Regex!227) (tag!339 String!1051) (isSeparator!161 Bool) (transformation!161 TokenValueInjection!126)) )
))
(declare-datatypes ((List!672 0))(
  ( (Nil!670) (Cons!670 (h!6066 Rule!122) (t!16309 List!672)) )
))
(declare-fun lt!5077 () List!672)

(declare-fun lt!5076 () List!671)

(declare-datatypes ((LexerInterface!56 0))(
  ( (LexerInterfaceExt!53 (__x!1152 Int)) (Lexer!54) )
))
(declare-fun lexThenRulesProduceEachTokenIndividually!13 (LexerInterface!56 List!672 List!671) Bool)

(assert (=> b!43308 (= e!23631 (not (lexThenRulesProduceEachTokenIndividually!13 Lexer!54 lt!5077 lt!5076)))))

(declare-fun e!23620 () Bool)

(declare-fun e!23642 () Bool)

(assert (=> b!43309 (= e!23620 (and e!23642 tp!29877))))

(declare-fun b!43310 () Bool)

(declare-fun e!23641 () Bool)

(assert (=> b!43310 (= e!23641 e!23631)))

(declare-fun res!30212 () Bool)

(assert (=> b!43310 (=> (not res!30212) (not e!23631))))

(declare-datatypes ((Token!88 0))(
  ( (Token!89 (value!7398 TokenValue!151) (rule!637 Rule!122) (size!666 Int) (originalCharacters!215 List!671)) )
))
(declare-datatypes ((List!673 0))(
  ( (Nil!671) (Cons!671 (h!6067 Token!88) (t!16310 List!673)) )
))
(declare-fun lt!5070 () List!673)

(declare-datatypes ((IArray!253 0))(
  ( (IArray!254 (innerList!184 List!673)) )
))
(declare-datatypes ((Conc!126 0))(
  ( (Node!126 (left!543 Conc!126) (right!873 Conc!126) (csize!482 Int) (cheight!337 Int)) (Leaf!318 (xs!2705 IArray!253) (csize!483 Int)) (Empty!126) )
))
(declare-datatypes ((BalanceConc!252 0))(
  ( (BalanceConc!253 (c!15971 Conc!126)) )
))
(declare-datatypes ((tuple2!794 0))(
  ( (tuple2!795 (_1!555 BalanceConc!252) (_2!555 BalanceConc!250)) )
))
(declare-fun lt!5067 () tuple2!794)

(declare-fun list!176 (BalanceConc!252) List!673)

(assert (=> b!43310 (= res!30212 (= lt!5070 (list!176 (_1!555 lt!5067))))))

(declare-fun lt!5068 () BalanceConc!250)

(declare-fun lex!30 (LexerInterface!56 List!672 BalanceConc!250) tuple2!794)

(assert (=> b!43310 (= lt!5067 (lex!30 Lexer!54 lt!5077 lt!5068))))

(declare-fun b!43311 () Bool)

(declare-fun e!23646 () Bool)

(declare-fun e!23635 () Bool)

(assert (=> b!43311 (= e!23646 e!23635)))

(declare-fun res!30209 () Bool)

(assert (=> b!43311 (=> (not res!30209) (not e!23635))))

(declare-fun lt!5066 () List!673)

(assert (=> b!43311 (= res!30209 (= lt!5066 lt!5070))))

(declare-fun lt!5065 () tuple2!794)

(assert (=> b!43311 (= lt!5070 (list!176 (_1!555 lt!5065)))))

(declare-datatypes ((tuple2!796 0))(
  ( (tuple2!797 (_1!556 Context!170) (_2!556 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!219 0))(
  ( (HashableExt!218 (__x!1153 Int)) )
))
(declare-datatypes ((tuple2!798 0))(
  ( (tuple2!799 (_1!557 tuple2!796) (_2!557 (InoxSet Context!170))) )
))
(declare-datatypes ((List!674 0))(
  ( (Nil!672) (Cons!672 (h!6068 tuple2!798) (t!16311 List!674)) )
))
(declare-datatypes ((array!740 0))(
  ( (array!741 (arr!363 (Array (_ BitVec 32) List!674)) (size!667 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!446 0))(
  ( (LongMapFixedSize!447 (defaultEntry!561 Int) (mask!938 (_ BitVec 32)) (extraKeys!469 (_ BitVec 32)) (zeroValue!479 List!674) (minValue!479 List!674) (_size!578 (_ BitVec 32)) (_keys!514 array!738) (_values!501 array!740) (_vacant!283 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!881 0))(
  ( (Cell!882 (v!12423 LongMapFixedSize!446)) )
))
(declare-datatypes ((MutLongMap!223 0))(
  ( (LongMap!223 (underlying!641 Cell!881)) (MutLongMapExt!222 (__x!1154 Int)) )
))
(declare-datatypes ((Cell!883 0))(
  ( (Cell!884 (v!12424 MutLongMap!223)) )
))
(declare-datatypes ((MutableMap!219 0))(
  ( (MutableMapExt!218 (__x!1155 Int)) (HashMap!219 (underlying!642 Cell!883) (hashF!2087 Hashable!219) (_size!579 (_ BitVec 32)) (defaultValue!368 Int)) )
))
(declare-datatypes ((CacheUp!148 0))(
  ( (CacheUp!149 (cache!704 MutableMap!219)) )
))
(declare-datatypes ((tuple3!252 0))(
  ( (tuple3!253 (_1!558 Regex!227) (_2!558 Context!170) (_3!158 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!800 0))(
  ( (tuple2!801 (_1!559 tuple3!252) (_2!559 (InoxSet Context!170))) )
))
(declare-datatypes ((List!675 0))(
  ( (Nil!673) (Cons!673 (h!6069 tuple2!800) (t!16312 List!675)) )
))
(declare-datatypes ((array!742 0))(
  ( (array!743 (arr!364 (Array (_ BitVec 32) List!675)) (size!668 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!448 0))(
  ( (LongMapFixedSize!449 (defaultEntry!562 Int) (mask!939 (_ BitVec 32)) (extraKeys!470 (_ BitVec 32)) (zeroValue!480 List!675) (minValue!480 List!675) (_size!580 (_ BitVec 32)) (_keys!515 array!738) (_values!502 array!742) (_vacant!284 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!885 0))(
  ( (Cell!886 (v!12425 LongMapFixedSize!448)) )
))
(declare-datatypes ((MutLongMap!224 0))(
  ( (LongMap!224 (underlying!643 Cell!885)) (MutLongMapExt!223 (__x!1156 Int)) )
))
(declare-datatypes ((Cell!887 0))(
  ( (Cell!888 (v!12426 MutLongMap!224)) )
))
(declare-datatypes ((Hashable!220 0))(
  ( (HashableExt!219 (__x!1157 Int)) )
))
(declare-datatypes ((MutableMap!220 0))(
  ( (MutableMapExt!219 (__x!1158 Int)) (HashMap!220 (underlying!644 Cell!887) (hashF!2088 Hashable!220) (_size!581 (_ BitVec 32)) (defaultValue!369 Int)) )
))
(declare-datatypes ((CacheDown!148 0))(
  ( (CacheDown!149 (cache!705 MutableMap!220)) )
))
(declare-datatypes ((tuple4!64 0))(
  ( (tuple4!65 (_1!560 tuple2!794) (_2!560 CacheUp!148) (_3!159 CacheDown!148) (_4!32 CacheFurthestNullable!96)) )
))
(declare-fun lt!5074 () tuple4!64)

(assert (=> b!43311 (= lt!5066 (list!176 (_1!555 (_1!560 lt!5074))))))

(declare-fun input!525 () BalanceConc!250)

(assert (=> b!43311 (= lt!5065 (lex!30 Lexer!54 lt!5077 input!525))))

(declare-datatypes ((Unit!304 0))(
  ( (Unit!305) )
))
(declare-fun lt!5071 () Unit!304)

(declare-fun lemmaInvariant!49 (CacheDown!148) Unit!304)

(assert (=> b!43311 (= lt!5071 (lemmaInvariant!49 (_3!159 lt!5074)))))

(declare-fun lt!5073 () Unit!304)

(declare-fun lemmaInvariant!50 (CacheUp!148) Unit!304)

(assert (=> b!43311 (= lt!5073 (lemmaInvariant!50 (_2!560 lt!5074)))))

(declare-fun cacheUp!320 () CacheUp!148)

(declare-fun cacheDown!333 () CacheDown!148)

(declare-fun lexMem!23 (LexerInterface!56 List!672 BalanceConc!250 CacheUp!148 CacheDown!148 CacheFurthestNullable!96) tuple4!64)

(assert (=> b!43311 (= lt!5074 (lexMem!23 Lexer!54 lt!5077 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!43312 () Bool)

(declare-fun res!30216 () Bool)

(assert (=> b!43312 (=> (not res!30216) (not e!23646))))

(declare-fun valid!204 (CacheDown!148) Bool)

(assert (=> b!43312 (= res!30216 (valid!204 cacheDown!333))))

(declare-fun b!43313 () Bool)

(declare-fun e!23627 () Bool)

(assert (=> b!43313 (= e!23644 e!23627)))

(declare-fun b!43314 () Bool)

(declare-fun e!23625 () Bool)

(assert (=> b!43314 (= e!23627 e!23625)))

(declare-fun tp!29872 () Bool)

(declare-fun tp!29875 () Bool)

(declare-fun e!23626 () Bool)

(declare-fun e!23639 () Bool)

(declare-fun array_inv!239 (array!738) Bool)

(declare-fun array_inv!240 (array!740) Bool)

(assert (=> b!43315 (= e!23626 (and tp!29864 tp!29872 tp!29875 (array_inv!239 (_keys!514 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320))))))) (array_inv!240 (_values!501 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320))))))) e!23639))))

(declare-fun e!23637 () Bool)

(declare-fun e!23645 () Bool)

(declare-fun e!23621 () Bool)

(declare-fun b!43316 () Bool)

(declare-fun inv!952 (BalanceConc!250) Bool)

(assert (=> b!43316 (= e!23637 (and e!23645 (inv!952 (totalInput!1528 cacheFurthestNullable!45)) e!23621))))

(declare-fun b!43317 () Bool)

(declare-fun e!23636 () Bool)

(declare-fun tp!29861 () Bool)

(declare-fun inv!953 (Conc!125) Bool)

(assert (=> b!43317 (= e!23636 (and (inv!953 (c!15970 input!525)) tp!29861))))

(declare-fun b!43318 () Bool)

(declare-fun e!23634 () Bool)

(declare-fun tp!29871 () Bool)

(declare-fun mapRes!837 () Bool)

(assert (=> b!43318 (= e!23634 (and tp!29871 mapRes!837))))

(declare-fun condMapEmpty!835 () Bool)

(declare-fun mapDefault!835 () List!670)

(assert (=> b!43318 (= condMapEmpty!835 (= (arr!361 (_values!500 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!670)) mapDefault!835)))))

(declare-fun b!43319 () Bool)

(declare-fun e!23617 () Bool)

(assert (=> b!43319 (= e!23617 e!23620)))

(declare-fun b!43320 () Bool)

(declare-fun e!23638 () Bool)

(declare-fun e!23616 () Bool)

(assert (=> b!43320 (= e!23638 e!23616)))

(declare-fun b!43321 () Bool)

(declare-fun e!23643 () Bool)

(declare-fun e!23633 () Bool)

(assert (=> b!43321 (= e!23643 e!23633)))

(declare-fun b!43322 () Bool)

(declare-fun lt!5078 () MutLongMap!223)

(assert (=> b!43322 (= e!23642 (and e!23638 ((_ is LongMap!223) lt!5078)))))

(assert (=> b!43322 (= lt!5078 (v!12424 (underlying!642 (cache!704 cacheUp!320))))))

(declare-fun b!43323 () Bool)

(declare-fun e!23619 () Bool)

(assert (=> b!43323 (= e!23619 e!23643)))

(declare-fun b!43324 () Bool)

(declare-fun res!30206 () Bool)

(assert (=> b!43324 (=> (not res!30206) (not e!23646))))

(declare-fun valid!205 (CacheFurthestNullable!96) Bool)

(assert (=> b!43324 (= res!30206 (valid!205 cacheFurthestNullable!45))))

(declare-fun b!43325 () Bool)

(declare-fun e!23623 () Bool)

(declare-fun e!23628 () Bool)

(assert (=> b!43325 (= e!23623 e!23628)))

(declare-fun b!43326 () Bool)

(declare-fun tp!29869 () Bool)

(assert (=> b!43326 (= e!23621 (and (inv!953 (c!15970 (totalInput!1528 cacheFurthestNullable!45))) tp!29869))))

(declare-fun b!43327 () Bool)

(declare-fun res!30213 () Bool)

(assert (=> b!43327 (=> (not res!30213) (not e!23646))))

(assert (=> b!43327 (= res!30213 (= (totalInput!1528 cacheFurthestNullable!45) input!525))))

(declare-fun b!43328 () Bool)

(declare-fun res!30208 () Bool)

(assert (=> b!43328 (=> (not res!30208) (not e!23646))))

(declare-fun rulesInvariant!46 (LexerInterface!56 List!672) Bool)

(assert (=> b!43328 (= res!30208 (rulesInvariant!46 Lexer!54 lt!5077))))

(declare-fun b!43329 () Bool)

(declare-fun e!23618 () Bool)

(assert (=> b!43329 (= e!23618 e!23641)))

(declare-fun res!30215 () Bool)

(assert (=> b!43329 (=> (not res!30215) (not e!23641))))

(declare-fun list!177 (BalanceConc!250) List!671)

(assert (=> b!43329 (= res!30215 (= (list!177 lt!5068) lt!5076))))

(declare-fun seqFromList!26 (List!671) BalanceConc!250)

(assert (=> b!43329 (= lt!5068 (seqFromList!26 lt!5076))))

(assert (=> b!43329 (= lt!5076 (list!177 input!525))))

(declare-fun tp!29860 () Bool)

(declare-fun tp!29878 () Bool)

(declare-fun array_inv!241 (array!736) Bool)

(assert (=> b!43330 (= e!23625 (and tp!29859 tp!29878 tp!29860 (array_inv!239 (_keys!513 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))) (array_inv!241 (_values!500 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))) e!23634))))

(declare-fun mapNonEmpty!835 () Bool)

(declare-fun tp!29858 () Bool)

(declare-fun tp!29873 () Bool)

(assert (=> mapNonEmpty!835 (= mapRes!837 (and tp!29858 tp!29873))))

(declare-fun mapRest!837 () (Array (_ BitVec 32) List!670))

(declare-fun mapKey!837 () (_ BitVec 32))

(declare-fun mapValue!837 () List!670)

(assert (=> mapNonEmpty!835 (= (arr!361 (_values!500 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))) (store mapRest!837 mapKey!837 mapValue!837))))

(declare-fun b!43331 () Bool)

(declare-fun res!30214 () Bool)

(assert (=> b!43331 (=> (not res!30214) (not e!23646))))

(declare-fun valid!206 (CacheUp!148) Bool)

(assert (=> b!43331 (= res!30214 (valid!206 cacheUp!320))))

(declare-fun b!43332 () Bool)

(declare-fun e!23640 () Bool)

(declare-fun tp!29879 () Bool)

(declare-fun mapRes!836 () Bool)

(assert (=> b!43332 (= e!23640 (and tp!29879 mapRes!836))))

(declare-fun condMapEmpty!836 () Bool)

(declare-fun mapDefault!837 () List!675)

(assert (=> b!43332 (= condMapEmpty!836 (= (arr!364 (_values!502 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!675)) mapDefault!837)))))

(declare-fun tp!29863 () Bool)

(declare-fun tp!29868 () Bool)

(declare-fun array_inv!242 (array!742) Bool)

(assert (=> b!43333 (= e!23633 (and tp!29876 tp!29868 tp!29863 (array_inv!239 (_keys!515 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333))))))) (array_inv!242 (_values!502 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333))))))) e!23640))))

(declare-fun b!43334 () Bool)

(declare-fun e!23624 () Bool)

(declare-fun lt!5079 () MutLongMap!224)

(assert (=> b!43334 (= e!23624 (and e!23619 ((_ is LongMap!224) lt!5079)))))

(assert (=> b!43334 (= lt!5079 (v!12426 (underlying!644 (cache!705 cacheDown!333))))))

(declare-fun mapNonEmpty!836 () Bool)

(declare-fun tp!29862 () Bool)

(declare-fun tp!29867 () Bool)

(assert (=> mapNonEmpty!836 (= mapRes!836 (and tp!29862 tp!29867))))

(declare-fun mapKey!836 () (_ BitVec 32))

(declare-fun mapValue!835 () List!675)

(declare-fun mapRest!836 () (Array (_ BitVec 32) List!675))

(assert (=> mapNonEmpty!836 (= (arr!364 (_values!502 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333))))))) (store mapRest!836 mapKey!836 mapValue!835))))

(assert (=> b!43335 (= e!23628 (and e!23624 tp!29866))))

(declare-fun res!30207 () Bool)

(assert (=> start!2636 (=> (not res!30207) (not e!23646))))

(declare-fun isEmpty!134 (List!672) Bool)

(assert (=> start!2636 (= res!30207 (not (isEmpty!134 lt!5077)))))

(declare-datatypes ((JsonLexer!70 0))(
  ( (JsonLexer!71) )
))
(declare-fun rules!109 (JsonLexer!70) List!672)

(assert (=> start!2636 (= lt!5077 (rules!109 JsonLexer!71))))

(assert (=> start!2636 e!23646))

(declare-fun inv!954 (CacheDown!148) Bool)

(assert (=> start!2636 (and (inv!954 cacheDown!333) e!23623)))

(assert (=> start!2636 (and (inv!952 input!525) e!23636)))

(declare-fun inv!955 (CacheFurthestNullable!96) Bool)

(assert (=> start!2636 (and (inv!955 cacheFurthestNullable!45) e!23637)))

(declare-fun inv!956 (CacheUp!148) Bool)

(assert (=> start!2636 (and (inv!956 cacheUp!320) e!23617)))

(declare-fun b!43336 () Bool)

(assert (=> b!43336 (= e!23616 e!23626)))

(declare-fun mapIsEmpty!835 () Bool)

(assert (=> mapIsEmpty!835 mapRes!837))

(declare-fun b!43337 () Bool)

(assert (=> b!43337 (= e!23635 e!23618)))

(declare-fun res!30210 () Bool)

(assert (=> b!43337 (=> (not res!30210) (not e!23618))))

(declare-fun lt!5069 () List!671)

(declare-fun lt!5072 () List!671)

(assert (=> b!43337 (= res!30210 (= lt!5069 lt!5072))))

(assert (=> b!43337 (= lt!5072 (list!177 (_2!555 lt!5065)))))

(assert (=> b!43337 (= lt!5069 (list!177 (_2!555 (_1!560 lt!5074))))))

(assert (=> b!43338 (= e!23645 (and e!23622 tp!29870))))

(declare-fun mapNonEmpty!837 () Bool)

(declare-fun mapRes!835 () Bool)

(declare-fun tp!29874 () Bool)

(declare-fun tp!29865 () Bool)

(assert (=> mapNonEmpty!837 (= mapRes!835 (and tp!29874 tp!29865))))

(declare-fun mapKey!835 () (_ BitVec 32))

(declare-fun mapRest!835 () (Array (_ BitVec 32) List!674))

(declare-fun mapValue!836 () List!674)

(assert (=> mapNonEmpty!837 (= (arr!363 (_values!501 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320))))))) (store mapRest!835 mapKey!835 mapValue!836))))

(declare-fun mapIsEmpty!836 () Bool)

(assert (=> mapIsEmpty!836 mapRes!836))

(declare-fun b!43339 () Bool)

(declare-fun res!30211 () Bool)

(assert (=> b!43339 (=> (not res!30211) (not e!23631))))

(assert (=> b!43339 (= res!30211 (= lt!5072 (list!177 (_2!555 lt!5067))))))

(declare-fun b!43340 () Bool)

(declare-fun tp!29857 () Bool)

(assert (=> b!43340 (= e!23639 (and tp!29857 mapRes!835))))

(declare-fun condMapEmpty!837 () Bool)

(declare-fun mapDefault!836 () List!674)

(assert (=> b!43340 (= condMapEmpty!837 (= (arr!363 (_values!501 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!674)) mapDefault!836)))))

(declare-fun mapIsEmpty!837 () Bool)

(assert (=> mapIsEmpty!837 mapRes!835))

(assert (= (and start!2636 res!30207) b!43328))

(assert (= (and b!43328 res!30208) b!43331))

(assert (= (and b!43331 res!30214) b!43312))

(assert (= (and b!43312 res!30216) b!43324))

(assert (= (and b!43324 res!30206) b!43327))

(assert (= (and b!43327 res!30213) b!43311))

(assert (= (and b!43311 res!30209) b!43337))

(assert (= (and b!43337 res!30210) b!43329))

(assert (= (and b!43329 res!30215) b!43310))

(assert (= (and b!43310 res!30212) b!43339))

(assert (= (and b!43339 res!30211) b!43308))

(assert (= (and b!43332 condMapEmpty!836) mapIsEmpty!836))

(assert (= (and b!43332 (not condMapEmpty!836)) mapNonEmpty!836))

(assert (= b!43333 b!43332))

(assert (= b!43321 b!43333))

(assert (= b!43323 b!43321))

(assert (= (and b!43334 ((_ is LongMap!224) (v!12426 (underlying!644 (cache!705 cacheDown!333))))) b!43323))

(assert (= b!43335 b!43334))

(assert (= (and b!43325 ((_ is HashMap!220) (cache!705 cacheDown!333))) b!43335))

(assert (= start!2636 b!43325))

(assert (= start!2636 b!43317))

(assert (= (and b!43318 condMapEmpty!835) mapIsEmpty!835))

(assert (= (and b!43318 (not condMapEmpty!835)) mapNonEmpty!835))

(assert (= b!43330 b!43318))

(assert (= b!43314 b!43330))

(assert (= b!43313 b!43314))

(assert (= (and b!43307 ((_ is LongMap!222) (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))) b!43313))

(assert (= b!43338 b!43307))

(assert (= (and b!43316 ((_ is HashMap!218) (cache!703 cacheFurthestNullable!45))) b!43338))

(assert (= b!43316 b!43326))

(assert (= start!2636 b!43316))

(assert (= (and b!43340 condMapEmpty!837) mapIsEmpty!837))

(assert (= (and b!43340 (not condMapEmpty!837)) mapNonEmpty!837))

(assert (= b!43315 b!43340))

(assert (= b!43336 b!43315))

(assert (= b!43320 b!43336))

(assert (= (and b!43322 ((_ is LongMap!223) (v!12424 (underlying!642 (cache!704 cacheUp!320))))) b!43320))

(assert (= b!43309 b!43322))

(assert (= (and b!43319 ((_ is HashMap!219) (cache!704 cacheUp!320))) b!43309))

(assert (= start!2636 b!43319))

(declare-fun m!17047 () Bool)

(assert (=> mapNonEmpty!836 m!17047))

(declare-fun m!17049 () Bool)

(assert (=> b!43312 m!17049))

(declare-fun m!17051 () Bool)

(assert (=> b!43308 m!17051))

(declare-fun m!17053 () Bool)

(assert (=> b!43310 m!17053))

(declare-fun m!17055 () Bool)

(assert (=> b!43310 m!17055))

(declare-fun m!17057 () Bool)

(assert (=> b!43337 m!17057))

(declare-fun m!17059 () Bool)

(assert (=> b!43337 m!17059))

(declare-fun m!17061 () Bool)

(assert (=> b!43324 m!17061))

(declare-fun m!17063 () Bool)

(assert (=> b!43339 m!17063))

(declare-fun m!17065 () Bool)

(assert (=> b!43329 m!17065))

(declare-fun m!17067 () Bool)

(assert (=> b!43329 m!17067))

(declare-fun m!17069 () Bool)

(assert (=> b!43329 m!17069))

(declare-fun m!17071 () Bool)

(assert (=> mapNonEmpty!837 m!17071))

(declare-fun m!17073 () Bool)

(assert (=> b!43331 m!17073))

(declare-fun m!17075 () Bool)

(assert (=> mapNonEmpty!835 m!17075))

(declare-fun m!17077 () Bool)

(assert (=> start!2636 m!17077))

(declare-fun m!17079 () Bool)

(assert (=> start!2636 m!17079))

(declare-fun m!17081 () Bool)

(assert (=> start!2636 m!17081))

(declare-fun m!17083 () Bool)

(assert (=> start!2636 m!17083))

(declare-fun m!17085 () Bool)

(assert (=> start!2636 m!17085))

(declare-fun m!17087 () Bool)

(assert (=> start!2636 m!17087))

(declare-fun m!17089 () Bool)

(assert (=> b!43311 m!17089))

(declare-fun m!17091 () Bool)

(assert (=> b!43311 m!17091))

(declare-fun m!17093 () Bool)

(assert (=> b!43311 m!17093))

(declare-fun m!17095 () Bool)

(assert (=> b!43311 m!17095))

(declare-fun m!17097 () Bool)

(assert (=> b!43311 m!17097))

(declare-fun m!17099 () Bool)

(assert (=> b!43311 m!17099))

(declare-fun m!17101 () Bool)

(assert (=> b!43328 m!17101))

(declare-fun m!17103 () Bool)

(assert (=> b!43330 m!17103))

(declare-fun m!17105 () Bool)

(assert (=> b!43330 m!17105))

(declare-fun m!17107 () Bool)

(assert (=> b!43333 m!17107))

(declare-fun m!17109 () Bool)

(assert (=> b!43333 m!17109))

(declare-fun m!17111 () Bool)

(assert (=> b!43315 m!17111))

(declare-fun m!17113 () Bool)

(assert (=> b!43315 m!17113))

(declare-fun m!17115 () Bool)

(assert (=> b!43317 m!17115))

(declare-fun m!17117 () Bool)

(assert (=> b!43316 m!17117))

(declare-fun m!17119 () Bool)

(assert (=> b!43326 m!17119))

(check-sat (not b!43328) (not b_next!1055) (not b!43315) (not b!43324) (not b_next!1059) (not b!43332) (not b!43337) (not b!43311) (not b!43339) (not b!43329) (not b!43316) (not b!43333) (not b!43312) (not start!2636) (not b!43317) (not mapNonEmpty!836) (not b!43308) b_and!1095 (not b_next!1063) (not b_next!1053) b_and!1097 b_and!1089 (not b!43326) (not b!43310) (not b!43340) b_and!1087 (not mapNonEmpty!835) (not b!43318) (not b!43330) b_and!1091 (not b!43331) (not mapNonEmpty!837) (not b_next!1061) b_and!1093 (not b_next!1057))
(check-sat (not b_next!1055) b_and!1089 b_and!1087 (not b_next!1059) b_and!1091 b_and!1095 (not b_next!1063) (not b_next!1053) b_and!1097 (not b_next!1061) b_and!1093 (not b_next!1057))
(get-model)

(declare-fun d!4722 () Bool)

(assert (=> d!4722 (= (array_inv!239 (_keys!515 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333))))))) (bvsge (size!665 (_keys!515 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!43333 d!4722))

(declare-fun d!4724 () Bool)

(assert (=> d!4724 (= (array_inv!242 (_values!502 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333))))))) (bvsge (size!668 (_values!502 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!43333 d!4724))

(declare-fun d!4726 () Bool)

(declare-fun validCacheMapFurthestNullable!11 (MutableMap!218 BalanceConc!250) Bool)

(assert (=> d!4726 (= (valid!205 cacheFurthestNullable!45) (validCacheMapFurthestNullable!11 (cache!703 cacheFurthestNullable!45) (totalInput!1528 cacheFurthestNullable!45)))))

(declare-fun bs!5658 () Bool)

(assert (= bs!5658 d!4726))

(declare-fun m!17121 () Bool)

(assert (=> bs!5658 m!17121))

(assert (=> b!43324 d!4726))

(declare-fun d!4728 () Bool)

(declare-fun c!15974 () Bool)

(assert (=> d!4728 (= c!15974 ((_ is Node!125) (c!15970 (totalInput!1528 cacheFurthestNullable!45))))))

(declare-fun e!23651 () Bool)

(assert (=> d!4728 (= (inv!953 (c!15970 (totalInput!1528 cacheFurthestNullable!45))) e!23651)))

(declare-fun b!43347 () Bool)

(declare-fun inv!957 (Conc!125) Bool)

(assert (=> b!43347 (= e!23651 (inv!957 (c!15970 (totalInput!1528 cacheFurthestNullable!45))))))

(declare-fun b!43348 () Bool)

(declare-fun e!23652 () Bool)

(assert (=> b!43348 (= e!23651 e!23652)))

(declare-fun res!30219 () Bool)

(assert (=> b!43348 (= res!30219 (not ((_ is Leaf!317) (c!15970 (totalInput!1528 cacheFurthestNullable!45)))))))

(assert (=> b!43348 (=> res!30219 e!23652)))

(declare-fun b!43349 () Bool)

(declare-fun inv!958 (Conc!125) Bool)

(assert (=> b!43349 (= e!23652 (inv!958 (c!15970 (totalInput!1528 cacheFurthestNullable!45))))))

(assert (= (and d!4728 c!15974) b!43347))

(assert (= (and d!4728 (not c!15974)) b!43348))

(assert (= (and b!43348 (not res!30219)) b!43349))

(declare-fun m!17123 () Bool)

(assert (=> b!43347 m!17123))

(declare-fun m!17125 () Bool)

(assert (=> b!43349 m!17125))

(assert (=> b!43326 d!4728))

(declare-fun d!4730 () Bool)

(assert (=> d!4730 (= (array_inv!239 (_keys!514 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320))))))) (bvsge (size!665 (_keys!514 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!43315 d!4730))

(declare-fun d!4732 () Bool)

(assert (=> d!4732 (= (array_inv!240 (_values!501 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320))))))) (bvsge (size!667 (_values!501 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!43315 d!4732))

(declare-fun d!4734 () Bool)

(declare-fun isBalanced!22 (Conc!125) Bool)

(assert (=> d!4734 (= (inv!952 (totalInput!1528 cacheFurthestNullable!45)) (isBalanced!22 (c!15970 (totalInput!1528 cacheFurthestNullable!45))))))

(declare-fun bs!5659 () Bool)

(assert (= bs!5659 d!4734))

(declare-fun m!17127 () Bool)

(assert (=> bs!5659 m!17127))

(assert (=> b!43316 d!4734))

(declare-fun d!4736 () Bool)

(declare-fun res!30222 () Bool)

(declare-fun e!23655 () Bool)

(assert (=> d!4736 (=> (not res!30222) (not e!23655))))

(declare-fun rulesValid!15 (LexerInterface!56 List!672) Bool)

(assert (=> d!4736 (= res!30222 (rulesValid!15 Lexer!54 lt!5077))))

(assert (=> d!4736 (= (rulesInvariant!46 Lexer!54 lt!5077) e!23655)))

(declare-fun b!43352 () Bool)

(declare-datatypes ((List!676 0))(
  ( (Nil!674) (Cons!674 (h!6070 String!1051) (t!16313 List!676)) )
))
(declare-fun noDuplicateTag!15 (LexerInterface!56 List!672 List!676) Bool)

(assert (=> b!43352 (= e!23655 (noDuplicateTag!15 Lexer!54 lt!5077 Nil!674))))

(assert (= (and d!4736 res!30222) b!43352))

(declare-fun m!17129 () Bool)

(assert (=> d!4736 m!17129))

(declare-fun m!17131 () Bool)

(assert (=> b!43352 m!17131))

(assert (=> b!43328 d!4736))

(declare-fun d!4738 () Bool)

(declare-fun c!15975 () Bool)

(assert (=> d!4738 (= c!15975 ((_ is Node!125) (c!15970 input!525)))))

(declare-fun e!23656 () Bool)

(assert (=> d!4738 (= (inv!953 (c!15970 input!525)) e!23656)))

(declare-fun b!43353 () Bool)

(assert (=> b!43353 (= e!23656 (inv!957 (c!15970 input!525)))))

(declare-fun b!43354 () Bool)

(declare-fun e!23657 () Bool)

(assert (=> b!43354 (= e!23656 e!23657)))

(declare-fun res!30223 () Bool)

(assert (=> b!43354 (= res!30223 (not ((_ is Leaf!317) (c!15970 input!525))))))

(assert (=> b!43354 (=> res!30223 e!23657)))

(declare-fun b!43355 () Bool)

(assert (=> b!43355 (= e!23657 (inv!958 (c!15970 input!525)))))

(assert (= (and d!4738 c!15975) b!43353))

(assert (= (and d!4738 (not c!15975)) b!43354))

(assert (= (and b!43354 (not res!30223)) b!43355))

(declare-fun m!17133 () Bool)

(assert (=> b!43353 m!17133))

(declare-fun m!17135 () Bool)

(assert (=> b!43355 m!17135))

(assert (=> b!43317 d!4738))

(declare-fun b!43366 () Bool)

(declare-fun res!30238 () Bool)

(declare-fun e!23666 () Bool)

(assert (=> b!43366 (=> res!30238 e!23666)))

(declare-fun rulesInvariant!47 (LexerInterface!56 List!672) Bool)

(assert (=> b!43366 (= res!30238 (not (rulesInvariant!47 Lexer!54 lt!5077)))))

(declare-fun b!43367 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!10 (LexerInterface!56 List!672 List!673) Bool)

(declare-fun lex!31 (LexerInterface!56 List!672 BalanceConc!250) tuple2!794)

(assert (=> b!43367 (= e!23666 (rulesProduceEachTokenIndividuallyList!10 Lexer!54 lt!5077 (list!176 (_1!555 (lex!31 Lexer!54 lt!5077 (seqFromList!26 lt!5076))))))))

(declare-fun b!43368 () Bool)

(declare-fun e!23669 () Bool)

(declare-fun lt!5091 () tuple2!794)

(declare-fun rulesProduceEachTokenIndividuallyList!11 (LexerInterface!56 List!672 List!673) Bool)

(assert (=> b!43368 (= e!23669 (rulesProduceEachTokenIndividuallyList!11 Lexer!54 lt!5077 (list!176 (_1!555 lt!5091))))))

(declare-fun lt!5093 () Unit!304)

(declare-fun lt!5092 () Unit!304)

(assert (=> b!43368 (= lt!5093 lt!5092)))

(declare-fun lt!5090 () List!673)

(declare-fun rulesProduceEachTokenIndividually!3 (LexerInterface!56 List!672 BalanceConc!252) Bool)

(declare-fun seqFromList!27 (List!673) BalanceConc!252)

(assert (=> b!43368 (rulesProduceEachTokenIndividually!3 Lexer!54 lt!5077 (seqFromList!27 lt!5090))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!3 (LexerInterface!56 List!672 List!671 List!673) Unit!304)

(assert (=> b!43368 (= lt!5092 (lemmaLexThenRulesProducesEachTokenIndividually!3 Lexer!54 lt!5077 lt!5076 lt!5090))))

(assert (=> b!43368 (= lt!5090 (list!176 (_1!555 lt!5091)))))

(assert (=> b!43368 (= lt!5091 (lex!30 Lexer!54 lt!5077 (seqFromList!26 lt!5076)))))

(declare-fun b!43369 () Bool)

(declare-fun e!23668 () Bool)

(assert (=> b!43369 (= e!23668 (rulesInvariant!46 Lexer!54 lt!5077))))

(declare-fun d!4740 () Bool)

(declare-fun e!23667 () Bool)

(assert (=> d!4740 e!23667))

(declare-fun res!30235 () Bool)

(assert (=> d!4740 (=> (not res!30235) (not e!23667))))

(declare-fun lt!5094 () Bool)

(assert (=> d!4740 (= res!30235 lt!5094)))

(assert (=> d!4740 (= lt!5094 e!23669)))

(declare-fun res!30234 () Bool)

(assert (=> d!4740 (=> res!30234 e!23669)))

(assert (=> d!4740 (= res!30234 (not e!23668))))

(declare-fun res!30237 () Bool)

(assert (=> d!4740 (=> (not res!30237) (not e!23668))))

(assert (=> d!4740 (= res!30237 (not (isEmpty!134 lt!5077)))))

(assert (=> d!4740 (= (lexThenRulesProduceEachTokenIndividually!13 Lexer!54 lt!5077 lt!5076) lt!5094)))

(declare-fun b!43370 () Bool)

(assert (=> b!43370 (= e!23667 e!23666)))

(declare-fun res!30236 () Bool)

(assert (=> b!43370 (=> res!30236 e!23666)))

(assert (=> b!43370 (= res!30236 (isEmpty!134 lt!5077))))

(assert (= (and d!4740 res!30237) b!43369))

(assert (= (and d!4740 (not res!30234)) b!43368))

(assert (= (and d!4740 res!30235) b!43370))

(assert (= (and b!43370 (not res!30236)) b!43366))

(assert (= (and b!43366 (not res!30238)) b!43367))

(assert (=> d!4740 m!17081))

(declare-fun m!17137 () Bool)

(assert (=> b!43368 m!17137))

(assert (=> b!43368 m!17067))

(assert (=> b!43368 m!17137))

(declare-fun m!17139 () Bool)

(assert (=> b!43368 m!17139))

(declare-fun m!17141 () Bool)

(assert (=> b!43368 m!17141))

(assert (=> b!43368 m!17141))

(declare-fun m!17143 () Bool)

(assert (=> b!43368 m!17143))

(assert (=> b!43368 m!17067))

(declare-fun m!17145 () Bool)

(assert (=> b!43368 m!17145))

(declare-fun m!17147 () Bool)

(assert (=> b!43368 m!17147))

(assert (=> b!43370 m!17081))

(assert (=> b!43369 m!17101))

(assert (=> b!43367 m!17067))

(assert (=> b!43367 m!17067))

(declare-fun m!17149 () Bool)

(assert (=> b!43367 m!17149))

(declare-fun m!17151 () Bool)

(assert (=> b!43367 m!17151))

(assert (=> b!43367 m!17151))

(declare-fun m!17153 () Bool)

(assert (=> b!43367 m!17153))

(declare-fun m!17155 () Bool)

(assert (=> b!43366 m!17155))

(assert (=> b!43308 d!4740))

(declare-fun d!4742 () Bool)

(declare-fun list!178 (Conc!125) List!671)

(assert (=> d!4742 (= (list!177 (_2!555 lt!5065)) (list!178 (c!15970 (_2!555 lt!5065))))))

(declare-fun bs!5660 () Bool)

(assert (= bs!5660 d!4742))

(declare-fun m!17157 () Bool)

(assert (=> bs!5660 m!17157))

(assert (=> b!43337 d!4742))

(declare-fun d!4744 () Bool)

(assert (=> d!4744 (= (list!177 (_2!555 (_1!560 lt!5074))) (list!178 (c!15970 (_2!555 (_1!560 lt!5074)))))))

(declare-fun bs!5661 () Bool)

(assert (= bs!5661 d!4744))

(declare-fun m!17159 () Bool)

(assert (=> bs!5661 m!17159))

(assert (=> b!43337 d!4744))

(declare-fun d!4746 () Bool)

(assert (=> d!4746 (= (list!177 lt!5068) (list!178 (c!15970 lt!5068)))))

(declare-fun bs!5662 () Bool)

(assert (= bs!5662 d!4746))

(declare-fun m!17161 () Bool)

(assert (=> bs!5662 m!17161))

(assert (=> b!43329 d!4746))

(declare-fun d!4748 () Bool)

(declare-fun fromListB!7 (List!671) BalanceConc!250)

(assert (=> d!4748 (= (seqFromList!26 lt!5076) (fromListB!7 lt!5076))))

(declare-fun bs!5663 () Bool)

(assert (= bs!5663 d!4748))

(declare-fun m!17163 () Bool)

(assert (=> bs!5663 m!17163))

(assert (=> b!43329 d!4748))

(declare-fun d!4750 () Bool)

(assert (=> d!4750 (= (list!177 input!525) (list!178 (c!15970 input!525)))))

(declare-fun bs!5664 () Bool)

(assert (= bs!5664 d!4750))

(declare-fun m!17165 () Bool)

(assert (=> bs!5664 m!17165))

(assert (=> b!43329 d!4750))

(declare-fun d!4752 () Bool)

(assert (=> d!4752 (= (array_inv!239 (_keys!513 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))) (bvsge (size!665 (_keys!513 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!43330 d!4752))

(declare-fun d!4754 () Bool)

(assert (=> d!4754 (= (array_inv!241 (_values!500 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))) (bvsge (size!664 (_values!500 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!43330 d!4754))

(declare-fun d!4756 () Bool)

(declare-fun list!179 (Conc!126) List!673)

(assert (=> d!4756 (= (list!176 (_1!555 lt!5067)) (list!179 (c!15971 (_1!555 lt!5067))))))

(declare-fun bs!5665 () Bool)

(assert (= bs!5665 d!4756))

(declare-fun m!17167 () Bool)

(assert (=> bs!5665 m!17167))

(assert (=> b!43310 d!4756))

(declare-fun b!43381 () Bool)

(declare-fun e!23676 () Bool)

(declare-fun e!23678 () Bool)

(assert (=> b!43381 (= e!23676 e!23678)))

(declare-fun res!30246 () Bool)

(declare-fun lt!5097 () tuple2!794)

(declare-fun size!669 (BalanceConc!250) Int)

(assert (=> b!43381 (= res!30246 (< (size!669 (_2!555 lt!5097)) (size!669 lt!5068)))))

(assert (=> b!43381 (=> (not res!30246) (not e!23678))))

(declare-fun b!43382 () Bool)

(declare-fun res!30247 () Bool)

(declare-fun e!23677 () Bool)

(assert (=> b!43382 (=> (not res!30247) (not e!23677))))

(declare-datatypes ((tuple2!802 0))(
  ( (tuple2!803 (_1!561 List!673) (_2!561 List!671)) )
))
(declare-fun lexList!12 (LexerInterface!56 List!672 List!671) tuple2!802)

(assert (=> b!43382 (= res!30247 (= (list!176 (_1!555 lt!5097)) (_1!561 (lexList!12 Lexer!54 lt!5077 (list!177 lt!5068)))))))

(declare-fun b!43384 () Bool)

(assert (=> b!43384 (= e!23676 (= (_2!555 lt!5097) lt!5068))))

(declare-fun b!43385 () Bool)

(declare-fun isEmpty!135 (BalanceConc!252) Bool)

(assert (=> b!43385 (= e!23678 (not (isEmpty!135 (_1!555 lt!5097))))))

(declare-fun d!4758 () Bool)

(assert (=> d!4758 e!23677))

(declare-fun res!30245 () Bool)

(assert (=> d!4758 (=> (not res!30245) (not e!23677))))

(assert (=> d!4758 (= res!30245 e!23676)))

(declare-fun c!15978 () Bool)

(declare-fun size!670 (BalanceConc!252) Int)

(assert (=> d!4758 (= c!15978 (> (size!670 (_1!555 lt!5097)) 0))))

(declare-fun lexTailRecV2!9 (LexerInterface!56 List!672 BalanceConc!250 BalanceConc!250 BalanceConc!250 BalanceConc!252) tuple2!794)

(assert (=> d!4758 (= lt!5097 (lexTailRecV2!9 Lexer!54 lt!5077 lt!5068 (BalanceConc!251 Empty!125) lt!5068 (BalanceConc!253 Empty!126)))))

(assert (=> d!4758 (= (lex!30 Lexer!54 lt!5077 lt!5068) lt!5097)))

(declare-fun b!43383 () Bool)

(assert (=> b!43383 (= e!23677 (= (list!177 (_2!555 lt!5097)) (_2!561 (lexList!12 Lexer!54 lt!5077 (list!177 lt!5068)))))))

(assert (= (and d!4758 c!15978) b!43381))

(assert (= (and d!4758 (not c!15978)) b!43384))

(assert (= (and b!43381 res!30246) b!43385))

(assert (= (and d!4758 res!30245) b!43382))

(assert (= (and b!43382 res!30247) b!43383))

(declare-fun m!17169 () Bool)

(assert (=> b!43383 m!17169))

(assert (=> b!43383 m!17065))

(assert (=> b!43383 m!17065))

(declare-fun m!17171 () Bool)

(assert (=> b!43383 m!17171))

(declare-fun m!17173 () Bool)

(assert (=> d!4758 m!17173))

(declare-fun m!17175 () Bool)

(assert (=> d!4758 m!17175))

(declare-fun m!17177 () Bool)

(assert (=> b!43385 m!17177))

(declare-fun m!17179 () Bool)

(assert (=> b!43382 m!17179))

(assert (=> b!43382 m!17065))

(assert (=> b!43382 m!17065))

(assert (=> b!43382 m!17171))

(declare-fun m!17181 () Bool)

(assert (=> b!43381 m!17181))

(declare-fun m!17183 () Bool)

(assert (=> b!43381 m!17183))

(assert (=> b!43310 d!4758))

(declare-fun d!4760 () Bool)

(declare-fun validCacheMapUp!17 (MutableMap!219) Bool)

(assert (=> d!4760 (= (valid!206 cacheUp!320) (validCacheMapUp!17 (cache!704 cacheUp!320)))))

(declare-fun bs!5666 () Bool)

(assert (= bs!5666 d!4760))

(declare-fun m!17185 () Bool)

(assert (=> bs!5666 m!17185))

(assert (=> b!43331 d!4760))

(declare-fun d!4762 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!70) Rule!122)

(declare-fun integerLiteralRule!0 (JsonLexer!70) Rule!122)

(declare-fun floatLiteralRule!0 (JsonLexer!70) Rule!122)

(declare-fun trueRule!0 (JsonLexer!70) Rule!122)

(declare-fun falseRule!0 (JsonLexer!70) Rule!122)

(declare-fun nullRule!0 (JsonLexer!70) Rule!122)

(declare-fun jsonstringRule!0 (JsonLexer!70) Rule!122)

(declare-fun lBraceRule!0 (JsonLexer!70) Rule!122)

(declare-fun rBraceRule!0 (JsonLexer!70) Rule!122)

(declare-fun lBracketRule!0 (JsonLexer!70) Rule!122)

(declare-fun rBracketRule!0 (JsonLexer!70) Rule!122)

(declare-fun colonRule!0 (JsonLexer!70) Rule!122)

(declare-fun commaRule!0 (JsonLexer!70) Rule!122)

(declare-fun eofRule!0 (JsonLexer!70) Rule!122)

(assert (=> d!4762 (= (rules!109 JsonLexer!71) (Cons!670 (whitespaceRule!0 JsonLexer!71) (Cons!670 (integerLiteralRule!0 JsonLexer!71) (Cons!670 (floatLiteralRule!0 JsonLexer!71) (Cons!670 (trueRule!0 JsonLexer!71) (Cons!670 (falseRule!0 JsonLexer!71) (Cons!670 (nullRule!0 JsonLexer!71) (Cons!670 (jsonstringRule!0 JsonLexer!71) (Cons!670 (lBraceRule!0 JsonLexer!71) (Cons!670 (rBraceRule!0 JsonLexer!71) (Cons!670 (lBracketRule!0 JsonLexer!71) (Cons!670 (rBracketRule!0 JsonLexer!71) (Cons!670 (colonRule!0 JsonLexer!71) (Cons!670 (commaRule!0 JsonLexer!71) (Cons!670 (eofRule!0 JsonLexer!71) Nil!670)))))))))))))))))

(declare-fun bs!5667 () Bool)

(assert (= bs!5667 d!4762))

(declare-fun m!17187 () Bool)

(assert (=> bs!5667 m!17187))

(declare-fun m!17189 () Bool)

(assert (=> bs!5667 m!17189))

(declare-fun m!17191 () Bool)

(assert (=> bs!5667 m!17191))

(declare-fun m!17193 () Bool)

(assert (=> bs!5667 m!17193))

(declare-fun m!17195 () Bool)

(assert (=> bs!5667 m!17195))

(declare-fun m!17197 () Bool)

(assert (=> bs!5667 m!17197))

(declare-fun m!17199 () Bool)

(assert (=> bs!5667 m!17199))

(declare-fun m!17201 () Bool)

(assert (=> bs!5667 m!17201))

(declare-fun m!17203 () Bool)

(assert (=> bs!5667 m!17203))

(declare-fun m!17205 () Bool)

(assert (=> bs!5667 m!17205))

(declare-fun m!17207 () Bool)

(assert (=> bs!5667 m!17207))

(declare-fun m!17209 () Bool)

(assert (=> bs!5667 m!17209))

(declare-fun m!17211 () Bool)

(assert (=> bs!5667 m!17211))

(declare-fun m!17213 () Bool)

(assert (=> bs!5667 m!17213))

(assert (=> start!2636 d!4762))

(declare-fun d!4764 () Bool)

(declare-fun res!30250 () Bool)

(declare-fun e!23681 () Bool)

(assert (=> d!4764 (=> (not res!30250) (not e!23681))))

(assert (=> d!4764 (= res!30250 ((_ is HashMap!220) (cache!705 cacheDown!333)))))

(assert (=> d!4764 (= (inv!954 cacheDown!333) e!23681)))

(declare-fun b!43388 () Bool)

(declare-fun validCacheMapDown!19 (MutableMap!220) Bool)

(assert (=> b!43388 (= e!23681 (validCacheMapDown!19 (cache!705 cacheDown!333)))))

(assert (= (and d!4764 res!30250) b!43388))

(declare-fun m!17215 () Bool)

(assert (=> b!43388 m!17215))

(assert (=> start!2636 d!4764))

(declare-fun d!4766 () Bool)

(assert (=> d!4766 (= (inv!952 input!525) (isBalanced!22 (c!15970 input!525)))))

(declare-fun bs!5668 () Bool)

(assert (= bs!5668 d!4766))

(declare-fun m!17217 () Bool)

(assert (=> bs!5668 m!17217))

(assert (=> start!2636 d!4766))

(declare-fun d!4768 () Bool)

(assert (=> d!4768 (= (isEmpty!134 lt!5077) ((_ is Nil!670) lt!5077))))

(assert (=> start!2636 d!4768))

(declare-fun d!4770 () Bool)

(declare-fun res!30253 () Bool)

(declare-fun e!23684 () Bool)

(assert (=> d!4770 (=> (not res!30253) (not e!23684))))

(assert (=> d!4770 (= res!30253 ((_ is HashMap!218) (cache!703 cacheFurthestNullable!45)))))

(assert (=> d!4770 (= (inv!955 cacheFurthestNullable!45) e!23684)))

(declare-fun b!43391 () Bool)

(assert (=> b!43391 (= e!23684 (validCacheMapFurthestNullable!11 (cache!703 cacheFurthestNullable!45) (totalInput!1528 cacheFurthestNullable!45)))))

(assert (= (and d!4770 res!30253) b!43391))

(assert (=> b!43391 m!17121))

(assert (=> start!2636 d!4770))

(declare-fun d!4772 () Bool)

(declare-fun res!30256 () Bool)

(declare-fun e!23687 () Bool)

(assert (=> d!4772 (=> (not res!30256) (not e!23687))))

(assert (=> d!4772 (= res!30256 ((_ is HashMap!219) (cache!704 cacheUp!320)))))

(assert (=> d!4772 (= (inv!956 cacheUp!320) e!23687)))

(declare-fun b!43394 () Bool)

(assert (=> b!43394 (= e!23687 (validCacheMapUp!17 (cache!704 cacheUp!320)))))

(assert (= (and d!4772 res!30256) b!43394))

(assert (=> b!43394 m!17185))

(assert (=> start!2636 d!4772))

(declare-fun d!4774 () Bool)

(assert (=> d!4774 (= (list!176 (_1!555 lt!5065)) (list!179 (c!15971 (_1!555 lt!5065))))))

(declare-fun bs!5669 () Bool)

(assert (= bs!5669 d!4774))

(declare-fun m!17219 () Bool)

(assert (=> bs!5669 m!17219))

(assert (=> b!43311 d!4774))

(declare-fun b!43405 () Bool)

(declare-fun res!30270 () Bool)

(declare-fun e!23690 () Bool)

(assert (=> b!43405 (=> (not res!30270) (not e!23690))))

(declare-fun lt!5103 () tuple4!64)

(assert (=> b!43405 (= res!30270 (= (list!177 (_2!555 (_1!560 lt!5103))) (list!177 (_2!555 (lex!30 Lexer!54 lt!5077 input!525)))))))

(declare-fun b!43406 () Bool)

(declare-fun res!30271 () Bool)

(assert (=> b!43406 (=> (not res!30271) (not e!23690))))

(assert (=> b!43406 (= res!30271 (valid!206 (_2!560 lt!5103)))))

(declare-fun d!4776 () Bool)

(assert (=> d!4776 e!23690))

(declare-fun res!30268 () Bool)

(assert (=> d!4776 (=> (not res!30268) (not e!23690))))

(assert (=> d!4776 (= res!30268 (= (list!176 (_1!555 (_1!560 lt!5103))) (list!176 (_1!555 (lex!30 Lexer!54 lt!5077 input!525)))))))

(declare-fun lt!5102 () tuple4!64)

(assert (=> d!4776 (= lt!5103 (tuple4!65 (_1!560 lt!5102) (_2!560 lt!5102) (_3!159 lt!5102) (_4!32 lt!5102)))))

(declare-fun lexTailRecV3Mem!9 (LexerInterface!56 List!672 BalanceConc!250 BalanceConc!250 BalanceConc!250 BalanceConc!252 CacheUp!148 CacheDown!148 CacheFurthestNullable!96) tuple4!64)

(assert (=> d!4776 (= lt!5102 (lexTailRecV3Mem!9 Lexer!54 lt!5077 input!525 (BalanceConc!251 Empty!125) input!525 (BalanceConc!253 Empty!126) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!4776 (not (isEmpty!134 lt!5077))))

(assert (=> d!4776 (= (lexMem!23 Lexer!54 lt!5077 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!5103)))

(declare-fun b!43407 () Bool)

(declare-fun res!30267 () Bool)

(assert (=> b!43407 (=> (not res!30267) (not e!23690))))

(assert (=> b!43407 (= res!30267 (valid!205 (_4!32 lt!5103)))))

(declare-fun b!43408 () Bool)

(declare-fun res!30269 () Bool)

(assert (=> b!43408 (=> (not res!30269) (not e!23690))))

(assert (=> b!43408 (= res!30269 (valid!204 (_3!159 lt!5103)))))

(declare-fun b!43409 () Bool)

(assert (=> b!43409 (= e!23690 (= (totalInput!1528 (_4!32 lt!5103)) input!525))))

(assert (= (and d!4776 res!30268) b!43405))

(assert (= (and b!43405 res!30270) b!43407))

(assert (= (and b!43407 res!30267) b!43406))

(assert (= (and b!43406 res!30271) b!43408))

(assert (= (and b!43408 res!30269) b!43409))

(declare-fun m!17221 () Bool)

(assert (=> b!43406 m!17221))

(assert (=> d!4776 m!17093))

(declare-fun m!17223 () Bool)

(assert (=> d!4776 m!17223))

(declare-fun m!17225 () Bool)

(assert (=> d!4776 m!17225))

(assert (=> d!4776 m!17081))

(declare-fun m!17227 () Bool)

(assert (=> d!4776 m!17227))

(declare-fun m!17229 () Bool)

(assert (=> b!43407 m!17229))

(declare-fun m!17231 () Bool)

(assert (=> b!43405 m!17231))

(assert (=> b!43405 m!17093))

(declare-fun m!17233 () Bool)

(assert (=> b!43405 m!17233))

(declare-fun m!17235 () Bool)

(assert (=> b!43408 m!17235))

(assert (=> b!43311 d!4776))

(declare-fun d!4778 () Bool)

(assert (=> d!4778 (= (list!176 (_1!555 (_1!560 lt!5074))) (list!179 (c!15971 (_1!555 (_1!560 lt!5074)))))))

(declare-fun bs!5670 () Bool)

(assert (= bs!5670 d!4778))

(declare-fun m!17237 () Bool)

(assert (=> bs!5670 m!17237))

(assert (=> b!43311 d!4778))

(declare-fun b!43410 () Bool)

(declare-fun e!23691 () Bool)

(declare-fun e!23693 () Bool)

(assert (=> b!43410 (= e!23691 e!23693)))

(declare-fun res!30273 () Bool)

(declare-fun lt!5104 () tuple2!794)

(assert (=> b!43410 (= res!30273 (< (size!669 (_2!555 lt!5104)) (size!669 input!525)))))

(assert (=> b!43410 (=> (not res!30273) (not e!23693))))

(declare-fun b!43411 () Bool)

(declare-fun res!30274 () Bool)

(declare-fun e!23692 () Bool)

(assert (=> b!43411 (=> (not res!30274) (not e!23692))))

(assert (=> b!43411 (= res!30274 (= (list!176 (_1!555 lt!5104)) (_1!561 (lexList!12 Lexer!54 lt!5077 (list!177 input!525)))))))

(declare-fun b!43413 () Bool)

(assert (=> b!43413 (= e!23691 (= (_2!555 lt!5104) input!525))))

(declare-fun b!43414 () Bool)

(assert (=> b!43414 (= e!23693 (not (isEmpty!135 (_1!555 lt!5104))))))

(declare-fun d!4780 () Bool)

(assert (=> d!4780 e!23692))

(declare-fun res!30272 () Bool)

(assert (=> d!4780 (=> (not res!30272) (not e!23692))))

(assert (=> d!4780 (= res!30272 e!23691)))

(declare-fun c!15979 () Bool)

(assert (=> d!4780 (= c!15979 (> (size!670 (_1!555 lt!5104)) 0))))

(assert (=> d!4780 (= lt!5104 (lexTailRecV2!9 Lexer!54 lt!5077 input!525 (BalanceConc!251 Empty!125) input!525 (BalanceConc!253 Empty!126)))))

(assert (=> d!4780 (= (lex!30 Lexer!54 lt!5077 input!525) lt!5104)))

(declare-fun b!43412 () Bool)

(assert (=> b!43412 (= e!23692 (= (list!177 (_2!555 lt!5104)) (_2!561 (lexList!12 Lexer!54 lt!5077 (list!177 input!525)))))))

(assert (= (and d!4780 c!15979) b!43410))

(assert (= (and d!4780 (not c!15979)) b!43413))

(assert (= (and b!43410 res!30273) b!43414))

(assert (= (and d!4780 res!30272) b!43411))

(assert (= (and b!43411 res!30274) b!43412))

(declare-fun m!17239 () Bool)

(assert (=> b!43412 m!17239))

(assert (=> b!43412 m!17069))

(assert (=> b!43412 m!17069))

(declare-fun m!17241 () Bool)

(assert (=> b!43412 m!17241))

(declare-fun m!17243 () Bool)

(assert (=> d!4780 m!17243))

(declare-fun m!17245 () Bool)

(assert (=> d!4780 m!17245))

(declare-fun m!17247 () Bool)

(assert (=> b!43414 m!17247))

(declare-fun m!17249 () Bool)

(assert (=> b!43411 m!17249))

(assert (=> b!43411 m!17069))

(assert (=> b!43411 m!17069))

(assert (=> b!43411 m!17241))

(declare-fun m!17251 () Bool)

(assert (=> b!43410 m!17251))

(declare-fun m!17253 () Bool)

(assert (=> b!43410 m!17253))

(assert (=> b!43311 d!4780))

(declare-fun d!4782 () Bool)

(assert (=> d!4782 (valid!206 (_2!560 lt!5074))))

(declare-fun Unit!306 () Unit!304)

(assert (=> d!4782 (= (lemmaInvariant!50 (_2!560 lt!5074)) Unit!306)))

(declare-fun bs!5671 () Bool)

(assert (= bs!5671 d!4782))

(declare-fun m!17255 () Bool)

(assert (=> bs!5671 m!17255))

(assert (=> b!43311 d!4782))

(declare-fun d!4784 () Bool)

(assert (=> d!4784 (valid!204 (_3!159 lt!5074))))

(declare-fun Unit!307 () Unit!304)

(assert (=> d!4784 (= (lemmaInvariant!49 (_3!159 lt!5074)) Unit!307)))

(declare-fun bs!5672 () Bool)

(assert (= bs!5672 d!4784))

(declare-fun m!17257 () Bool)

(assert (=> bs!5672 m!17257))

(assert (=> b!43311 d!4784))

(declare-fun d!4786 () Bool)

(assert (=> d!4786 (= (valid!204 cacheDown!333) (validCacheMapDown!19 (cache!705 cacheDown!333)))))

(declare-fun bs!5673 () Bool)

(assert (= bs!5673 d!4786))

(assert (=> bs!5673 m!17215))

(assert (=> b!43312 d!4786))

(declare-fun d!4788 () Bool)

(assert (=> d!4788 (= (list!177 (_2!555 lt!5067)) (list!178 (c!15970 (_2!555 lt!5067))))))

(declare-fun bs!5674 () Bool)

(assert (= bs!5674 d!4788))

(declare-fun m!17259 () Bool)

(assert (=> bs!5674 m!17259))

(assert (=> b!43339 d!4788))

(declare-fun e!23702 () Bool)

(declare-fun b!43419 () Bool)

(declare-fun setRes!918 () Bool)

(declare-fun tp!29884 () Bool)

(declare-fun inv!959 (Context!170) Bool)

(assert (=> b!43419 (= e!23702 (and (inv!959 (_2!558 (_1!559 (h!6069 (zeroValue!480 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333)))))))))) setRes!918 tp!29884))))

(declare-fun condSetEmpty!918 () Bool)

(assert (=> b!43419 (= condSetEmpty!918 (= (_2!559 (h!6069 (zeroValue!480 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333)))))))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!918 () Bool)

(assert (=> setIsEmpty!918 setRes!918))

(declare-fun setNonEmpty!918 () Bool)

(declare-fun tp!29885 () Bool)

(declare-fun setElem!918 () Context!170)

(assert (=> setNonEmpty!918 (= setRes!918 (and tp!29885 (inv!959 setElem!918)))))

(declare-fun setRest!918 () (InoxSet Context!170))

(assert (=> setNonEmpty!918 (= (_2!559 (h!6069 (zeroValue!480 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!918 true) setRest!918))))

(assert (=> b!43333 (= tp!29868 e!23702)))

(assert (= (and b!43419 condSetEmpty!918) setIsEmpty!918))

(assert (= (and b!43419 (not condSetEmpty!918)) setNonEmpty!918))

(assert (= (and b!43333 ((_ is Cons!673) (zeroValue!480 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333)))))))) b!43419))

(declare-fun m!17261 () Bool)

(assert (=> b!43419 m!17261))

(declare-fun m!17263 () Bool)

(assert (=> setNonEmpty!918 m!17263))

(declare-fun e!23705 () Bool)

(declare-fun setRes!919 () Bool)

(declare-fun tp!29886 () Bool)

(declare-fun b!43420 () Bool)

(assert (=> b!43420 (= e!23705 (and (inv!959 (_2!558 (_1!559 (h!6069 (minValue!480 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333)))))))))) setRes!919 tp!29886))))

(declare-fun condSetEmpty!919 () Bool)

(assert (=> b!43420 (= condSetEmpty!919 (= (_2!559 (h!6069 (minValue!480 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333)))))))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!919 () Bool)

(assert (=> setIsEmpty!919 setRes!919))

(declare-fun setNonEmpty!919 () Bool)

(declare-fun tp!29887 () Bool)

(declare-fun setElem!919 () Context!170)

(assert (=> setNonEmpty!919 (= setRes!919 (and tp!29887 (inv!959 setElem!919)))))

(declare-fun setRest!919 () (InoxSet Context!170))

(assert (=> setNonEmpty!919 (= (_2!559 (h!6069 (minValue!480 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!919 true) setRest!919))))

(assert (=> b!43333 (= tp!29863 e!23705)))

(assert (= (and b!43420 condSetEmpty!919) setIsEmpty!919))

(assert (= (and b!43420 (not condSetEmpty!919)) setNonEmpty!919))

(assert (= (and b!43333 ((_ is Cons!673) (minValue!480 (v!12425 (underlying!643 (v!12426 (underlying!644 (cache!705 cacheDown!333)))))))) b!43420))

(declare-fun m!17265 () Bool)

(assert (=> b!43420 m!17265))

(declare-fun m!17267 () Bool)

(assert (=> setNonEmpty!919 m!17267))

(declare-fun setRes!922 () Bool)

(declare-fun tp!29893 () Bool)

(declare-fun b!43425 () Bool)

(declare-fun e!23712 () Bool)

(assert (=> b!43425 (= e!23712 (and (inv!959 (_1!556 (_1!557 (h!6068 mapDefault!836)))) setRes!922 tp!29893))))

(declare-fun condSetEmpty!922 () Bool)

(assert (=> b!43425 (= condSetEmpty!922 (= (_2!557 (h!6068 mapDefault!836)) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!922 () Bool)

(assert (=> setIsEmpty!922 setRes!922))

(declare-fun setNonEmpty!922 () Bool)

(declare-fun tp!29892 () Bool)

(declare-fun setElem!922 () Context!170)

(assert (=> setNonEmpty!922 (= setRes!922 (and tp!29892 (inv!959 setElem!922)))))

(declare-fun setRest!922 () (InoxSet Context!170))

(assert (=> setNonEmpty!922 (= (_2!557 (h!6068 mapDefault!836)) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!922 true) setRest!922))))

(assert (=> b!43340 (= tp!29857 e!23712)))

(assert (= (and b!43425 condSetEmpty!922) setIsEmpty!922))

(assert (= (and b!43425 (not condSetEmpty!922)) setNonEmpty!922))

(assert (= (and b!43340 ((_ is Cons!672) mapDefault!836)) b!43425))

(declare-fun m!17269 () Bool)

(assert (=> b!43425 m!17269))

(declare-fun m!17271 () Bool)

(assert (=> setNonEmpty!922 m!17271))

(declare-fun condMapEmpty!840 () Bool)

(declare-fun mapDefault!840 () List!675)

(assert (=> mapNonEmpty!836 (= condMapEmpty!840 (= mapRest!836 ((as const (Array (_ BitVec 32) List!675)) mapDefault!840)))))

(declare-fun e!23729 () Bool)

(declare-fun mapRes!840 () Bool)

(assert (=> mapNonEmpty!836 (= tp!29862 (and e!23729 mapRes!840))))

(declare-fun tp!29907 () Bool)

(declare-fun b!43432 () Bool)

(declare-fun setRes!928 () Bool)

(assert (=> b!43432 (= e!23729 (and (inv!959 (_2!558 (_1!559 (h!6069 mapDefault!840)))) setRes!928 tp!29907))))

(declare-fun condSetEmpty!928 () Bool)

(assert (=> b!43432 (= condSetEmpty!928 (= (_2!559 (h!6069 mapDefault!840)) ((as const (Array Context!170 Bool)) false)))))

(declare-fun mapIsEmpty!840 () Bool)

(assert (=> mapIsEmpty!840 mapRes!840))

(declare-fun mapValue!840 () List!675)

(declare-fun b!43433 () Bool)

(declare-fun e!23731 () Bool)

(declare-fun setRes!927 () Bool)

(declare-fun tp!29906 () Bool)

(assert (=> b!43433 (= e!23731 (and (inv!959 (_2!558 (_1!559 (h!6069 mapValue!840)))) setRes!927 tp!29906))))

(declare-fun condSetEmpty!927 () Bool)

(assert (=> b!43433 (= condSetEmpty!927 (= (_2!559 (h!6069 mapValue!840)) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!927 () Bool)

(assert (=> setIsEmpty!927 setRes!927))

(declare-fun setIsEmpty!928 () Bool)

(assert (=> setIsEmpty!928 setRes!928))

(declare-fun mapNonEmpty!840 () Bool)

(declare-fun tp!29908 () Bool)

(assert (=> mapNonEmpty!840 (= mapRes!840 (and tp!29908 e!23731))))

(declare-fun mapRest!840 () (Array (_ BitVec 32) List!675))

(declare-fun mapKey!840 () (_ BitVec 32))

(assert (=> mapNonEmpty!840 (= mapRest!836 (store mapRest!840 mapKey!840 mapValue!840))))

(declare-fun setNonEmpty!927 () Bool)

(declare-fun tp!29904 () Bool)

(declare-fun setElem!928 () Context!170)

(assert (=> setNonEmpty!927 (= setRes!928 (and tp!29904 (inv!959 setElem!928)))))

(declare-fun setRest!928 () (InoxSet Context!170))

(assert (=> setNonEmpty!927 (= (_2!559 (h!6069 mapDefault!840)) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!928 true) setRest!928))))

(declare-fun setNonEmpty!928 () Bool)

(declare-fun tp!29905 () Bool)

(declare-fun setElem!927 () Context!170)

(assert (=> setNonEmpty!928 (= setRes!927 (and tp!29905 (inv!959 setElem!927)))))

(declare-fun setRest!927 () (InoxSet Context!170))

(assert (=> setNonEmpty!928 (= (_2!559 (h!6069 mapValue!840)) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!927 true) setRest!927))))

(assert (= (and mapNonEmpty!836 condMapEmpty!840) mapIsEmpty!840))

(assert (= (and mapNonEmpty!836 (not condMapEmpty!840)) mapNonEmpty!840))

(assert (= (and b!43433 condSetEmpty!927) setIsEmpty!927))

(assert (= (and b!43433 (not condSetEmpty!927)) setNonEmpty!928))

(assert (= (and mapNonEmpty!840 ((_ is Cons!673) mapValue!840)) b!43433))

(assert (= (and b!43432 condSetEmpty!928) setIsEmpty!928))

(assert (= (and b!43432 (not condSetEmpty!928)) setNonEmpty!927))

(assert (= (and mapNonEmpty!836 ((_ is Cons!673) mapDefault!840)) b!43432))

(declare-fun m!17273 () Bool)

(assert (=> b!43433 m!17273))

(declare-fun m!17275 () Bool)

(assert (=> b!43432 m!17275))

(declare-fun m!17277 () Bool)

(assert (=> setNonEmpty!928 m!17277))

(declare-fun m!17279 () Bool)

(assert (=> setNonEmpty!927 m!17279))

(declare-fun m!17281 () Bool)

(assert (=> mapNonEmpty!840 m!17281))

(declare-fun e!23735 () Bool)

(declare-fun tp!29909 () Bool)

(declare-fun setRes!929 () Bool)

(declare-fun b!43434 () Bool)

(assert (=> b!43434 (= e!23735 (and (inv!959 (_2!558 (_1!559 (h!6069 mapValue!835)))) setRes!929 tp!29909))))

(declare-fun condSetEmpty!929 () Bool)

(assert (=> b!43434 (= condSetEmpty!929 (= (_2!559 (h!6069 mapValue!835)) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!929 () Bool)

(assert (=> setIsEmpty!929 setRes!929))

(declare-fun setNonEmpty!929 () Bool)

(declare-fun tp!29910 () Bool)

(declare-fun setElem!929 () Context!170)

(assert (=> setNonEmpty!929 (= setRes!929 (and tp!29910 (inv!959 setElem!929)))))

(declare-fun setRest!929 () (InoxSet Context!170))

(assert (=> setNonEmpty!929 (= (_2!559 (h!6069 mapValue!835)) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!929 true) setRest!929))))

(assert (=> mapNonEmpty!836 (= tp!29867 e!23735)))

(assert (= (and b!43434 condSetEmpty!929) setIsEmpty!929))

(assert (= (and b!43434 (not condSetEmpty!929)) setNonEmpty!929))

(assert (= (and mapNonEmpty!836 ((_ is Cons!673) mapValue!835)) b!43434))

(declare-fun m!17283 () Bool)

(assert (=> b!43434 m!17283))

(declare-fun m!17285 () Bool)

(assert (=> setNonEmpty!929 m!17285))

(declare-fun b!43441 () Bool)

(declare-fun tp!29916 () Bool)

(declare-fun tp!29915 () Bool)

(declare-fun e!23740 () Bool)

(assert (=> b!43441 (= e!23740 (and (inv!953 (left!542 (c!15970 (totalInput!1528 cacheFurthestNullable!45)))) tp!29915 (inv!953 (right!872 (c!15970 (totalInput!1528 cacheFurthestNullable!45)))) tp!29916))))

(declare-fun b!43442 () Bool)

(declare-fun inv!960 (IArray!251) Bool)

(assert (=> b!43442 (= e!23740 (inv!960 (xs!2704 (c!15970 (totalInput!1528 cacheFurthestNullable!45)))))))

(assert (=> b!43326 (= tp!29869 (and (inv!953 (c!15970 (totalInput!1528 cacheFurthestNullable!45))) e!23740))))

(assert (= (and b!43326 ((_ is Node!125) (c!15970 (totalInput!1528 cacheFurthestNullable!45)))) b!43441))

(assert (= (and b!43326 ((_ is Leaf!317) (c!15970 (totalInput!1528 cacheFurthestNullable!45)))) b!43442))

(declare-fun m!17287 () Bool)

(assert (=> b!43441 m!17287))

(declare-fun m!17289 () Bool)

(assert (=> b!43441 m!17289))

(declare-fun m!17291 () Bool)

(assert (=> b!43442 m!17291))

(assert (=> b!43326 m!17119))

(declare-fun tp!29918 () Bool)

(declare-fun e!23742 () Bool)

(declare-fun b!43443 () Bool)

(declare-fun setRes!930 () Bool)

(assert (=> b!43443 (= e!23742 (and (inv!959 (_1!556 (_1!557 (h!6068 (zeroValue!479 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320)))))))))) setRes!930 tp!29918))))

(declare-fun condSetEmpty!930 () Bool)

(assert (=> b!43443 (= condSetEmpty!930 (= (_2!557 (h!6068 (zeroValue!479 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320)))))))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!930 () Bool)

(assert (=> setIsEmpty!930 setRes!930))

(declare-fun setNonEmpty!930 () Bool)

(declare-fun tp!29917 () Bool)

(declare-fun setElem!930 () Context!170)

(assert (=> setNonEmpty!930 (= setRes!930 (and tp!29917 (inv!959 setElem!930)))))

(declare-fun setRest!930 () (InoxSet Context!170))

(assert (=> setNonEmpty!930 (= (_2!557 (h!6068 (zeroValue!479 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!930 true) setRest!930))))

(assert (=> b!43315 (= tp!29872 e!23742)))

(assert (= (and b!43443 condSetEmpty!930) setIsEmpty!930))

(assert (= (and b!43443 (not condSetEmpty!930)) setNonEmpty!930))

(assert (= (and b!43315 ((_ is Cons!672) (zeroValue!479 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320)))))))) b!43443))

(declare-fun m!17293 () Bool)

(assert (=> b!43443 m!17293))

(declare-fun m!17295 () Bool)

(assert (=> setNonEmpty!930 m!17295))

(declare-fun b!43444 () Bool)

(declare-fun tp!29920 () Bool)

(declare-fun e!23745 () Bool)

(declare-fun setRes!931 () Bool)

(assert (=> b!43444 (= e!23745 (and (inv!959 (_1!556 (_1!557 (h!6068 (minValue!479 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320)))))))))) setRes!931 tp!29920))))

(declare-fun condSetEmpty!931 () Bool)

(assert (=> b!43444 (= condSetEmpty!931 (= (_2!557 (h!6068 (minValue!479 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320)))))))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!931 () Bool)

(assert (=> setIsEmpty!931 setRes!931))

(declare-fun setNonEmpty!931 () Bool)

(declare-fun tp!29919 () Bool)

(declare-fun setElem!931 () Context!170)

(assert (=> setNonEmpty!931 (= setRes!931 (and tp!29919 (inv!959 setElem!931)))))

(declare-fun setRest!931 () (InoxSet Context!170))

(assert (=> setNonEmpty!931 (= (_2!557 (h!6068 (minValue!479 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!931 true) setRest!931))))

(assert (=> b!43315 (= tp!29875 e!23745)))

(assert (= (and b!43444 condSetEmpty!931) setIsEmpty!931))

(assert (= (and b!43444 (not condSetEmpty!931)) setNonEmpty!931))

(assert (= (and b!43315 ((_ is Cons!672) (minValue!479 (v!12423 (underlying!641 (v!12424 (underlying!642 (cache!704 cacheUp!320)))))))) b!43444))

(declare-fun m!17297 () Bool)

(assert (=> b!43444 m!17297))

(declare-fun m!17299 () Bool)

(assert (=> setNonEmpty!931 m!17299))

(declare-fun e!23748 () Bool)

(declare-fun b!43445 () Bool)

(declare-fun tp!29922 () Bool)

(declare-fun tp!29921 () Bool)

(assert (=> b!43445 (= e!23748 (and (inv!953 (left!542 (c!15970 input!525))) tp!29921 (inv!953 (right!872 (c!15970 input!525))) tp!29922))))

(declare-fun b!43446 () Bool)

(assert (=> b!43446 (= e!23748 (inv!960 (xs!2704 (c!15970 input!525))))))

(assert (=> b!43317 (= tp!29861 (and (inv!953 (c!15970 input!525)) e!23748))))

(assert (= (and b!43317 ((_ is Node!125) (c!15970 input!525))) b!43445))

(assert (= (and b!43317 ((_ is Leaf!317) (c!15970 input!525))) b!43446))

(declare-fun m!17301 () Bool)

(assert (=> b!43445 m!17301))

(declare-fun m!17303 () Bool)

(assert (=> b!43445 m!17303))

(declare-fun m!17305 () Bool)

(assert (=> b!43446 m!17305))

(assert (=> b!43317 m!17115))

(declare-fun b!43451 () Bool)

(declare-fun e!23754 () Bool)

(declare-fun setRes!934 () Bool)

(declare-fun tp!29928 () Bool)

(assert (=> b!43451 (= e!23754 (and setRes!934 tp!29928))))

(declare-fun condSetEmpty!934 () Bool)

(assert (=> b!43451 (= condSetEmpty!934 (= (_1!553 (_1!554 (h!6064 mapDefault!835))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!934 () Bool)

(assert (=> setIsEmpty!934 setRes!934))

(declare-fun setNonEmpty!934 () Bool)

(declare-fun tp!29927 () Bool)

(declare-fun setElem!934 () Context!170)

(assert (=> setNonEmpty!934 (= setRes!934 (and tp!29927 (inv!959 setElem!934)))))

(declare-fun setRest!934 () (InoxSet Context!170))

(assert (=> setNonEmpty!934 (= (_1!553 (_1!554 (h!6064 mapDefault!835))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!934 true) setRest!934))))

(assert (=> b!43318 (= tp!29871 e!23754)))

(assert (= (and b!43451 condSetEmpty!934) setIsEmpty!934))

(assert (= (and b!43451 (not condSetEmpty!934)) setNonEmpty!934))

(assert (= (and b!43318 ((_ is Cons!668) mapDefault!835)) b!43451))

(declare-fun m!17307 () Bool)

(assert (=> setNonEmpty!934 m!17307))

(declare-fun b!43452 () Bool)

(declare-fun e!23756 () Bool)

(declare-fun setRes!935 () Bool)

(declare-fun tp!29930 () Bool)

(assert (=> b!43452 (= e!23756 (and setRes!935 tp!29930))))

(declare-fun condSetEmpty!935 () Bool)

(assert (=> b!43452 (= condSetEmpty!935 (= (_1!553 (_1!554 (h!6064 (zeroValue!478 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!935 () Bool)

(assert (=> setIsEmpty!935 setRes!935))

(declare-fun setNonEmpty!935 () Bool)

(declare-fun tp!29929 () Bool)

(declare-fun setElem!935 () Context!170)

(assert (=> setNonEmpty!935 (= setRes!935 (and tp!29929 (inv!959 setElem!935)))))

(declare-fun setRest!935 () (InoxSet Context!170))

(assert (=> setNonEmpty!935 (= (_1!553 (_1!554 (h!6064 (zeroValue!478 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!935 true) setRest!935))))

(assert (=> b!43330 (= tp!29878 e!23756)))

(assert (= (and b!43452 condSetEmpty!935) setIsEmpty!935))

(assert (= (and b!43452 (not condSetEmpty!935)) setNonEmpty!935))

(assert (= (and b!43330 ((_ is Cons!668) (zeroValue!478 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45)))))))) b!43452))

(declare-fun m!17309 () Bool)

(assert (=> setNonEmpty!935 m!17309))

(declare-fun b!43453 () Bool)

(declare-fun e!23758 () Bool)

(declare-fun setRes!936 () Bool)

(declare-fun tp!29932 () Bool)

(assert (=> b!43453 (= e!23758 (and setRes!936 tp!29932))))

(declare-fun condSetEmpty!936 () Bool)

(assert (=> b!43453 (= condSetEmpty!936 (= (_1!553 (_1!554 (h!6064 (minValue!478 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!936 () Bool)

(assert (=> setIsEmpty!936 setRes!936))

(declare-fun setNonEmpty!936 () Bool)

(declare-fun tp!29931 () Bool)

(declare-fun setElem!936 () Context!170)

(assert (=> setNonEmpty!936 (= setRes!936 (and tp!29931 (inv!959 setElem!936)))))

(declare-fun setRest!936 () (InoxSet Context!170))

(assert (=> setNonEmpty!936 (= (_1!553 (_1!554 (h!6064 (minValue!478 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!936 true) setRest!936))))

(assert (=> b!43330 (= tp!29860 e!23758)))

(assert (= (and b!43453 condSetEmpty!936) setIsEmpty!936))

(assert (= (and b!43453 (not condSetEmpty!936)) setNonEmpty!936))

(assert (= (and b!43330 ((_ is Cons!668) (minValue!478 (v!12421 (underlying!639 (v!12422 (underlying!640 (cache!703 cacheFurthestNullable!45)))))))) b!43453))

(declare-fun m!17311 () Bool)

(assert (=> setNonEmpty!936 m!17311))

(declare-fun setNonEmpty!941 () Bool)

(declare-fun setRes!942 () Bool)

(declare-fun tp!29946 () Bool)

(declare-fun setElem!942 () Context!170)

(assert (=> setNonEmpty!941 (= setRes!942 (and tp!29946 (inv!959 setElem!942)))))

(declare-fun mapValue!843 () List!674)

(declare-fun setRest!941 () (InoxSet Context!170))

(assert (=> setNonEmpty!941 (= (_2!557 (h!6068 mapValue!843)) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!942 true) setRest!941))))

(declare-fun condMapEmpty!843 () Bool)

(declare-fun mapDefault!843 () List!674)

(assert (=> mapNonEmpty!837 (= condMapEmpty!843 (= mapRest!835 ((as const (Array (_ BitVec 32) List!674)) mapDefault!843)))))

(declare-fun e!23775 () Bool)

(declare-fun mapRes!843 () Bool)

(assert (=> mapNonEmpty!837 (= tp!29874 (and e!23775 mapRes!843))))

(declare-fun mapNonEmpty!843 () Bool)

(declare-fun tp!29945 () Bool)

(declare-fun e!23773 () Bool)

(assert (=> mapNonEmpty!843 (= mapRes!843 (and tp!29945 e!23773))))

(declare-fun mapRest!843 () (Array (_ BitVec 32) List!674))

(declare-fun mapKey!843 () (_ BitVec 32))

(assert (=> mapNonEmpty!843 (= mapRest!835 (store mapRest!843 mapKey!843 mapValue!843))))

(declare-fun setIsEmpty!941 () Bool)

(assert (=> setIsEmpty!941 setRes!942))

(declare-fun mapIsEmpty!843 () Bool)

(assert (=> mapIsEmpty!843 mapRes!843))

(declare-fun b!43460 () Bool)

(declare-fun setRes!941 () Bool)

(declare-fun tp!29943 () Bool)

(assert (=> b!43460 (= e!23775 (and (inv!959 (_1!556 (_1!557 (h!6068 mapDefault!843)))) setRes!941 tp!29943))))

(declare-fun condSetEmpty!941 () Bool)

(assert (=> b!43460 (= condSetEmpty!941 (= (_2!557 (h!6068 mapDefault!843)) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!942 () Bool)

(assert (=> setIsEmpty!942 setRes!941))

(declare-fun setNonEmpty!942 () Bool)

(declare-fun tp!29947 () Bool)

(declare-fun setElem!941 () Context!170)

(assert (=> setNonEmpty!942 (= setRes!941 (and tp!29947 (inv!959 setElem!941)))))

(declare-fun setRest!942 () (InoxSet Context!170))

(assert (=> setNonEmpty!942 (= (_2!557 (h!6068 mapDefault!843)) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!941 true) setRest!942))))

(declare-fun tp!29944 () Bool)

(declare-fun b!43461 () Bool)

(assert (=> b!43461 (= e!23773 (and (inv!959 (_1!556 (_1!557 (h!6068 mapValue!843)))) setRes!942 tp!29944))))

(declare-fun condSetEmpty!942 () Bool)

(assert (=> b!43461 (= condSetEmpty!942 (= (_2!557 (h!6068 mapValue!843)) ((as const (Array Context!170 Bool)) false)))))

(assert (= (and mapNonEmpty!837 condMapEmpty!843) mapIsEmpty!843))

(assert (= (and mapNonEmpty!837 (not condMapEmpty!843)) mapNonEmpty!843))

(assert (= (and b!43461 condSetEmpty!942) setIsEmpty!941))

(assert (= (and b!43461 (not condSetEmpty!942)) setNonEmpty!941))

(assert (= (and mapNonEmpty!843 ((_ is Cons!672) mapValue!843)) b!43461))

(assert (= (and b!43460 condSetEmpty!941) setIsEmpty!942))

(assert (= (and b!43460 (not condSetEmpty!941)) setNonEmpty!942))

(assert (= (and mapNonEmpty!837 ((_ is Cons!672) mapDefault!843)) b!43460))

(declare-fun m!17313 () Bool)

(assert (=> setNonEmpty!942 m!17313))

(declare-fun m!17315 () Bool)

(assert (=> mapNonEmpty!843 m!17315))

(declare-fun m!17317 () Bool)

(assert (=> b!43460 m!17317))

(declare-fun m!17319 () Bool)

(assert (=> b!43461 m!17319))

(declare-fun m!17321 () Bool)

(assert (=> setNonEmpty!941 m!17321))

(declare-fun b!43462 () Bool)

(declare-fun tp!29949 () Bool)

(declare-fun e!23778 () Bool)

(declare-fun setRes!943 () Bool)

(assert (=> b!43462 (= e!23778 (and (inv!959 (_1!556 (_1!557 (h!6068 mapValue!836)))) setRes!943 tp!29949))))

(declare-fun condSetEmpty!943 () Bool)

(assert (=> b!43462 (= condSetEmpty!943 (= (_2!557 (h!6068 mapValue!836)) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!943 () Bool)

(assert (=> setIsEmpty!943 setRes!943))

(declare-fun setNonEmpty!943 () Bool)

(declare-fun tp!29948 () Bool)

(declare-fun setElem!943 () Context!170)

(assert (=> setNonEmpty!943 (= setRes!943 (and tp!29948 (inv!959 setElem!943)))))

(declare-fun setRest!943 () (InoxSet Context!170))

(assert (=> setNonEmpty!943 (= (_2!557 (h!6068 mapValue!836)) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!943 true) setRest!943))))

(assert (=> mapNonEmpty!837 (= tp!29865 e!23778)))

(assert (= (and b!43462 condSetEmpty!943) setIsEmpty!943))

(assert (= (and b!43462 (not condSetEmpty!943)) setNonEmpty!943))

(assert (= (and mapNonEmpty!837 ((_ is Cons!672) mapValue!836)) b!43462))

(declare-fun m!17323 () Bool)

(assert (=> b!43462 m!17323))

(declare-fun m!17325 () Bool)

(assert (=> setNonEmpty!943 m!17325))

(declare-fun mapNonEmpty!846 () Bool)

(declare-fun mapRes!846 () Bool)

(declare-fun tp!29962 () Bool)

(declare-fun e!23789 () Bool)

(assert (=> mapNonEmpty!846 (= mapRes!846 (and tp!29962 e!23789))))

(declare-fun mapRest!846 () (Array (_ BitVec 32) List!670))

(declare-fun mapKey!846 () (_ BitVec 32))

(declare-fun mapValue!846 () List!670)

(assert (=> mapNonEmpty!846 (= mapRest!837 (store mapRest!846 mapKey!846 mapValue!846))))

(declare-fun condMapEmpty!846 () Bool)

(declare-fun mapDefault!846 () List!670)

(assert (=> mapNonEmpty!835 (= condMapEmpty!846 (= mapRest!837 ((as const (Array (_ BitVec 32) List!670)) mapDefault!846)))))

(declare-fun e!23791 () Bool)

(assert (=> mapNonEmpty!835 (= tp!29858 (and e!23791 mapRes!846))))

(declare-fun setNonEmpty!948 () Bool)

(declare-fun setRes!949 () Bool)

(declare-fun tp!29961 () Bool)

(declare-fun setElem!948 () Context!170)

(assert (=> setNonEmpty!948 (= setRes!949 (and tp!29961 (inv!959 setElem!948)))))

(declare-fun setRest!948 () (InoxSet Context!170))

(assert (=> setNonEmpty!948 (= (_1!553 (_1!554 (h!6064 mapValue!846))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!948 true) setRest!948))))

(declare-fun setIsEmpty!948 () Bool)

(assert (=> setIsEmpty!948 setRes!949))

(declare-fun b!43469 () Bool)

(declare-fun setRes!948 () Bool)

(declare-fun tp!29963 () Bool)

(assert (=> b!43469 (= e!23791 (and setRes!948 tp!29963))))

(declare-fun condSetEmpty!948 () Bool)

(assert (=> b!43469 (= condSetEmpty!948 (= (_1!553 (_1!554 (h!6064 mapDefault!846))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!949 () Bool)

(assert (=> setIsEmpty!949 setRes!948))

(declare-fun b!43470 () Bool)

(declare-fun tp!29964 () Bool)

(assert (=> b!43470 (= e!23789 (and setRes!949 tp!29964))))

(declare-fun condSetEmpty!949 () Bool)

(assert (=> b!43470 (= condSetEmpty!949 (= (_1!553 (_1!554 (h!6064 mapValue!846))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setNonEmpty!949 () Bool)

(declare-fun tp!29960 () Bool)

(declare-fun setElem!949 () Context!170)

(assert (=> setNonEmpty!949 (= setRes!948 (and tp!29960 (inv!959 setElem!949)))))

(declare-fun setRest!949 () (InoxSet Context!170))

(assert (=> setNonEmpty!949 (= (_1!553 (_1!554 (h!6064 mapDefault!846))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!949 true) setRest!949))))

(declare-fun mapIsEmpty!846 () Bool)

(assert (=> mapIsEmpty!846 mapRes!846))

(assert (= (and mapNonEmpty!835 condMapEmpty!846) mapIsEmpty!846))

(assert (= (and mapNonEmpty!835 (not condMapEmpty!846)) mapNonEmpty!846))

(assert (= (and b!43470 condSetEmpty!949) setIsEmpty!948))

(assert (= (and b!43470 (not condSetEmpty!949)) setNonEmpty!948))

(assert (= (and mapNonEmpty!846 ((_ is Cons!668) mapValue!846)) b!43470))

(assert (= (and b!43469 condSetEmpty!948) setIsEmpty!949))

(assert (= (and b!43469 (not condSetEmpty!948)) setNonEmpty!949))

(assert (= (and mapNonEmpty!835 ((_ is Cons!668) mapDefault!846)) b!43469))

(declare-fun m!17327 () Bool)

(assert (=> mapNonEmpty!846 m!17327))

(declare-fun m!17329 () Bool)

(assert (=> setNonEmpty!948 m!17329))

(declare-fun m!17331 () Bool)

(assert (=> setNonEmpty!949 m!17331))

(declare-fun b!43471 () Bool)

(declare-fun e!23793 () Bool)

(declare-fun setRes!950 () Bool)

(declare-fun tp!29966 () Bool)

(assert (=> b!43471 (= e!23793 (and setRes!950 tp!29966))))

(declare-fun condSetEmpty!950 () Bool)

(assert (=> b!43471 (= condSetEmpty!950 (= (_1!553 (_1!554 (h!6064 mapValue!837))) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!950 () Bool)

(assert (=> setIsEmpty!950 setRes!950))

(declare-fun setNonEmpty!950 () Bool)

(declare-fun tp!29965 () Bool)

(declare-fun setElem!950 () Context!170)

(assert (=> setNonEmpty!950 (= setRes!950 (and tp!29965 (inv!959 setElem!950)))))

(declare-fun setRest!950 () (InoxSet Context!170))

(assert (=> setNonEmpty!950 (= (_1!553 (_1!554 (h!6064 mapValue!837))) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!950 true) setRest!950))))

(assert (=> mapNonEmpty!835 (= tp!29873 e!23793)))

(assert (= (and b!43471 condSetEmpty!950) setIsEmpty!950))

(assert (= (and b!43471 (not condSetEmpty!950)) setNonEmpty!950))

(assert (= (and mapNonEmpty!835 ((_ is Cons!668) mapValue!837)) b!43471))

(declare-fun m!17333 () Bool)

(assert (=> setNonEmpty!950 m!17333))

(declare-fun setRes!951 () Bool)

(declare-fun e!23797 () Bool)

(declare-fun b!43472 () Bool)

(declare-fun tp!29967 () Bool)

(assert (=> b!43472 (= e!23797 (and (inv!959 (_2!558 (_1!559 (h!6069 mapDefault!837)))) setRes!951 tp!29967))))

(declare-fun condSetEmpty!951 () Bool)

(assert (=> b!43472 (= condSetEmpty!951 (= (_2!559 (h!6069 mapDefault!837)) ((as const (Array Context!170 Bool)) false)))))

(declare-fun setIsEmpty!951 () Bool)

(assert (=> setIsEmpty!951 setRes!951))

(declare-fun setNonEmpty!951 () Bool)

(declare-fun tp!29968 () Bool)

(declare-fun setElem!951 () Context!170)

(assert (=> setNonEmpty!951 (= setRes!951 (and tp!29968 (inv!959 setElem!951)))))

(declare-fun setRest!951 () (InoxSet Context!170))

(assert (=> setNonEmpty!951 (= (_2!559 (h!6069 mapDefault!837)) ((_ map or) (store ((as const (Array Context!170 Bool)) false) setElem!951 true) setRest!951))))

(assert (=> b!43332 (= tp!29879 e!23797)))

(assert (= (and b!43472 condSetEmpty!951) setIsEmpty!951))

(assert (= (and b!43472 (not condSetEmpty!951)) setNonEmpty!951))

(assert (= (and b!43332 ((_ is Cons!673) mapDefault!837)) b!43472))

(declare-fun m!17335 () Bool)

(assert (=> b!43472 m!17335))

(declare-fun m!17337 () Bool)

(assert (=> setNonEmpty!951 m!17337))

(check-sat (not b!43425) (not d!4740) (not d!4750) (not d!4748) (not b!43451) (not b!43462) (not setNonEmpty!935) (not b_next!1055) (not b!43370) (not b!43405) (not b!43408) (not b!43369) (not d!4788) (not d!4726) (not b!43407) (not b!43381) (not b!43414) (not setNonEmpty!922) (not b!43349) (not b!43317) (not setNonEmpty!950) (not b!43442) (not b!43388) (not setNonEmpty!918) (not mapNonEmpty!846) (not b!43383) (not b!43433) (not b!43452) (not b!43410) (not setNonEmpty!936) (not b!43366) (not mapNonEmpty!843) (not b!43391) (not b!43469) (not setNonEmpty!941) (not setNonEmpty!934) (not d!4756) (not b!43432) (not b!43353) (not d!4758) (not setNonEmpty!928) (not b!43470) (not d!4774) (not d!4776) (not d!4778) (not b!43368) b_and!1095 (not b!43441) (not b_next!1063) (not b!43460) (not d!4784) (not setNonEmpty!929) (not b_next!1053) b_and!1097 (not b!43406) (not b!43385) (not b!43382) b_and!1089 (not b!43326) (not b!43355) (not b!43461) (not b!43420) (not b!43445) b_and!1087 (not b!43352) (not b_next!1059) (not setNonEmpty!919) (not setNonEmpty!943) (not d!4766) (not d!4736) (not d!4742) (not b!43412) (not b!43446) b_and!1091 (not b!43471) (not d!4786) (not b_next!1061) (not b!43434) (not setNonEmpty!927) (not setNonEmpty!951) b_and!1093 (not b_next!1057) (not mapNonEmpty!840) (not b!43419) (not d!4760) (not d!4734) (not d!4762) (not b!43347) (not b!43444) (not d!4780) (not d!4744) (not b!43367) (not setNonEmpty!942) (not d!4782) (not b!43394) (not b!43453) (not b!43443) (not b!43411) (not d!4746) (not setNonEmpty!931) (not setNonEmpty!930) (not b!43472) (not setNonEmpty!948) (not setNonEmpty!949))
(check-sat (not b_next!1055) b_and!1089 b_and!1087 (not b_next!1059) b_and!1091 b_and!1095 (not b_next!1063) (not b_next!1053) b_and!1097 (not b_next!1061) b_and!1093 (not b_next!1057))
