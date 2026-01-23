; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2336 () Bool)

(assert start!2336)

(declare-fun b!41535 () Bool)

(declare-fun b_free!933 () Bool)

(declare-fun b_next!933 () Bool)

(assert (=> b!41535 (= b_free!933 (not b_next!933))))

(declare-fun tp!28653 () Bool)

(declare-fun b_and!967 () Bool)

(assert (=> b!41535 (= tp!28653 b_and!967)))

(declare-fun b!41541 () Bool)

(declare-fun b_free!935 () Bool)

(declare-fun b_next!935 () Bool)

(assert (=> b!41541 (= b_free!935 (not b_next!935))))

(declare-fun tp!28652 () Bool)

(declare-fun b_and!969 () Bool)

(assert (=> b!41541 (= tp!28652 b_and!969)))

(declare-fun b!41526 () Bool)

(declare-fun b_free!937 () Bool)

(declare-fun b_next!937 () Bool)

(assert (=> b!41526 (= b_free!937 (not b_next!937))))

(declare-fun tp!28661 () Bool)

(declare-fun b_and!971 () Bool)

(assert (=> b!41526 (= tp!28661 b_and!971)))

(declare-fun b!41537 () Bool)

(declare-fun b_free!939 () Bool)

(declare-fun b_next!939 () Bool)

(assert (=> b!41537 (= b_free!939 (not b_next!939))))

(declare-fun tp!28665 () Bool)

(declare-fun b_and!973 () Bool)

(assert (=> b!41537 (= tp!28665 b_and!973)))

(declare-fun b!41539 () Bool)

(declare-fun b_free!941 () Bool)

(declare-fun b_next!941 () Bool)

(assert (=> b!41539 (= b_free!941 (not b_next!941))))

(declare-fun tp!28647 () Bool)

(declare-fun b_and!975 () Bool)

(assert (=> b!41539 (= tp!28647 b_and!975)))

(declare-fun b!41549 () Bool)

(declare-fun b_free!943 () Bool)

(declare-fun b_next!943 () Bool)

(assert (=> b!41549 (= b_free!943 (not b_next!943))))

(declare-fun tp!28664 () Bool)

(declare-fun b_and!977 () Bool)

(assert (=> b!41549 (= tp!28664 b_and!977)))

(declare-fun b!41521 () Bool)

(declare-fun e!21837 () Bool)

(declare-fun e!21840 () Bool)

(assert (=> b!41521 (= e!21837 e!21840)))

(declare-fun mapIsEmpty!697 () Bool)

(declare-fun mapRes!697 () Bool)

(assert (=> mapIsEmpty!697 mapRes!697))

(declare-fun b!41522 () Bool)

(declare-fun res!29610 () Bool)

(declare-fun e!21860 () Bool)

(assert (=> b!41522 (=> (not res!29610) (not e!21860))))

(declare-datatypes ((Regex!217 0))(
  ( (ElementMatch!217 (c!15847 (_ BitVec 16))) (Concat!360 (regOne!946 Regex!217) (regTwo!946 Regex!217)) (EmptyExpr!217) (Star!217 (reg!546 Regex!217)) (EmptyLang!217) (Union!217 (regOne!947 Regex!217) (regTwo!947 Regex!217)) )
))
(declare-datatypes ((List!602 0))(
  ( (Nil!600) (Cons!600 (h!5996 Regex!217) (t!16086 List!602)) )
))
(declare-datatypes ((Context!150 0))(
  ( (Context!151 (exprs!575 List!602)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!214 0))(
  ( (tuple3!215 (_1!475 (InoxSet Context!150)) (_2!475 Int) (_3!131 Int)) )
))
(declare-datatypes ((tuple2!688 0))(
  ( (tuple2!689 (_1!476 tuple3!214) (_2!476 Int)) )
))
(declare-datatypes ((List!603 0))(
  ( (Nil!601) (Cons!601 (h!5997 tuple2!688) (t!16087 List!603)) )
))
(declare-datatypes ((List!604 0))(
  ( (Nil!602) (Cons!602 (h!5998 (_ BitVec 16)) (t!16088 List!604)) )
))
(declare-datatypes ((IArray!219 0))(
  ( (IArray!220 (innerList!167 List!604)) )
))
(declare-datatypes ((Conc!109 0))(
  ( (Node!109 (left!519 Conc!109) (right!849 Conc!109) (csize!448 Int) (cheight!320 Int)) (Leaf!296 (xs!2688 IArray!219) (csize!449 Int)) (Empty!109) )
))
(declare-datatypes ((BalanceConc!218 0))(
  ( (BalanceConc!219 (c!15848 Conc!109)) )
))
(declare-datatypes ((array!640 0))(
  ( (array!641 (arr!323 (Array (_ BitVec 32) (_ BitVec 64))) (size!605 (_ BitVec 32))) )
))
(declare-datatypes ((array!642 0))(
  ( (array!643 (arr!324 (Array (_ BitVec 32) List!603)) (size!606 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!388 0))(
  ( (LongMapFixedSize!389 (defaultEntry!532 Int) (mask!904 (_ BitVec 32)) (extraKeys!440 (_ BitVec 32)) (zeroValue!450 List!603) (minValue!450 List!603) (_size!520 (_ BitVec 32)) (_keys!485 array!640) (_values!472 array!642) (_vacant!254 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!190 0))(
  ( (HashableExt!189 (__x!1048 Int)) )
))
(declare-datatypes ((Cell!765 0))(
  ( (Cell!766 (v!12363 LongMapFixedSize!388)) )
))
(declare-datatypes ((MutLongMap!194 0))(
  ( (LongMap!194 (underlying!583 Cell!765)) (MutLongMapExt!193 (__x!1049 Int)) )
))
(declare-datatypes ((Cell!767 0))(
  ( (Cell!768 (v!12364 MutLongMap!194)) )
))
(declare-datatypes ((MutableMap!190 0))(
  ( (MutableMapExt!189 (__x!1050 Int)) (HashMap!190 (underlying!584 Cell!767) (hashF!2058 Hashable!190) (_size!521 (_ BitVec 32)) (defaultValue!339 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!78 0))(
  ( (CacheFurthestNullable!79 (cache!675 MutableMap!190) (totalInput!1516 BalanceConc!218)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!78)

(declare-fun valid!183 (CacheFurthestNullable!78) Bool)

(assert (=> b!41522 (= res!29610 (valid!183 cacheFurthestNullable!45))))

(declare-fun b!41523 () Bool)

(declare-fun e!21846 () Bool)

(declare-fun tp!28655 () Bool)

(declare-fun mapRes!698 () Bool)

(assert (=> b!41523 (= e!21846 (and tp!28655 mapRes!698))))

(declare-fun condMapEmpty!697 () Bool)

(declare-datatypes ((tuple3!216 0))(
  ( (tuple3!217 (_1!477 Regex!217) (_2!477 Context!150) (_3!132 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!690 0))(
  ( (tuple2!691 (_1!478 tuple3!216) (_2!478 (InoxSet Context!150))) )
))
(declare-datatypes ((List!605 0))(
  ( (Nil!603) (Cons!603 (h!5999 tuple2!690) (t!16089 List!605)) )
))
(declare-datatypes ((array!644 0))(
  ( (array!645 (arr!325 (Array (_ BitVec 32) List!605)) (size!607 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!390 0))(
  ( (LongMapFixedSize!391 (defaultEntry!533 Int) (mask!905 (_ BitVec 32)) (extraKeys!441 (_ BitVec 32)) (zeroValue!451 List!605) (minValue!451 List!605) (_size!522 (_ BitVec 32)) (_keys!486 array!640) (_values!473 array!644) (_vacant!255 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!769 0))(
  ( (Cell!770 (v!12365 LongMapFixedSize!390)) )
))
(declare-datatypes ((MutLongMap!195 0))(
  ( (LongMap!195 (underlying!585 Cell!769)) (MutLongMapExt!194 (__x!1051 Int)) )
))
(declare-datatypes ((Cell!771 0))(
  ( (Cell!772 (v!12366 MutLongMap!195)) )
))
(declare-datatypes ((Hashable!191 0))(
  ( (HashableExt!190 (__x!1052 Int)) )
))
(declare-datatypes ((MutableMap!191 0))(
  ( (MutableMapExt!190 (__x!1053 Int)) (HashMap!191 (underlying!586 Cell!771) (hashF!2059 Hashable!191) (_size!523 (_ BitVec 32)) (defaultValue!340 Int)) )
))
(declare-datatypes ((CacheDown!130 0))(
  ( (CacheDown!131 (cache!676 MutableMap!191)) )
))
(declare-fun cacheDown!333 () CacheDown!130)

(declare-fun mapDefault!697 () List!605)

(assert (=> b!41523 (= condMapEmpty!697 (= (arr!325 (_values!473 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!605)) mapDefault!697)))))

(declare-fun b!41524 () Bool)

(declare-fun e!21838 () Bool)

(declare-fun input!525 () BalanceConc!218)

(declare-fun tp!28643 () Bool)

(declare-fun inv!884 (Conc!109) Bool)

(assert (=> b!41524 (= e!21838 (and (inv!884 (c!15848 input!525)) tp!28643))))

(declare-fun b!41525 () Bool)

(declare-fun e!21845 () Bool)

(declare-fun tp!28649 () Bool)

(assert (=> b!41525 (= e!21845 (and (inv!884 (c!15848 (totalInput!1516 cacheFurthestNullable!45))) tp!28649))))

(declare-fun e!21843 () Bool)

(declare-fun e!21847 () Bool)

(assert (=> b!41526 (= e!21843 (and e!21847 tp!28661))))

(declare-fun b!41527 () Bool)

(declare-fun e!21851 () Bool)

(declare-fun tp!28644 () Bool)

(assert (=> b!41527 (= e!21851 (and tp!28644 mapRes!697))))

(declare-fun condMapEmpty!699 () Bool)

(declare-fun mapDefault!699 () List!603)

(assert (=> b!41527 (= condMapEmpty!699 (= (arr!324 (_values!472 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!603)) mapDefault!699)))))

(declare-fun b!41528 () Bool)

(declare-fun e!21848 () Bool)

(declare-fun e!21862 () Bool)

(declare-datatypes ((tuple2!692 0))(
  ( (tuple2!693 (_1!479 Context!150) (_2!479 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!694 0))(
  ( (tuple2!695 (_1!480 tuple2!692) (_2!480 (InoxSet Context!150))) )
))
(declare-datatypes ((List!606 0))(
  ( (Nil!604) (Cons!604 (h!6000 tuple2!694) (t!16090 List!606)) )
))
(declare-datatypes ((array!646 0))(
  ( (array!647 (arr!326 (Array (_ BitVec 32) List!606)) (size!608 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!392 0))(
  ( (LongMapFixedSize!393 (defaultEntry!534 Int) (mask!906 (_ BitVec 32)) (extraKeys!442 (_ BitVec 32)) (zeroValue!452 List!606) (minValue!452 List!606) (_size!524 (_ BitVec 32)) (_keys!487 array!640) (_values!474 array!646) (_vacant!256 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!773 0))(
  ( (Cell!774 (v!12367 LongMapFixedSize!392)) )
))
(declare-datatypes ((MutLongMap!196 0))(
  ( (LongMap!196 (underlying!587 Cell!773)) (MutLongMapExt!195 (__x!1054 Int)) )
))
(declare-fun lt!4436 () MutLongMap!196)

(get-info :version)

(assert (=> b!41528 (= e!21848 (and e!21862 ((_ is LongMap!196) lt!4436)))))

(declare-datatypes ((Hashable!192 0))(
  ( (HashableExt!191 (__x!1055 Int)) )
))
(declare-datatypes ((Cell!775 0))(
  ( (Cell!776 (v!12368 MutLongMap!196)) )
))
(declare-datatypes ((MutableMap!192 0))(
  ( (MutableMapExt!191 (__x!1056 Int)) (HashMap!192 (underlying!588 Cell!775) (hashF!2060 Hashable!192) (_size!525 (_ BitVec 32)) (defaultValue!341 Int)) )
))
(declare-datatypes ((CacheUp!128 0))(
  ( (CacheUp!129 (cache!677 MutableMap!192)) )
))
(declare-fun cacheUp!320 () CacheUp!128)

(assert (=> b!41528 (= lt!4436 (v!12368 (underlying!588 (cache!677 cacheUp!320))))))

(declare-fun mapIsEmpty!698 () Bool)

(assert (=> mapIsEmpty!698 mapRes!698))

(declare-fun b!41529 () Bool)

(declare-fun e!21857 () Bool)

(declare-fun e!21853 () Bool)

(assert (=> b!41529 (= e!21857 e!21853)))

(declare-fun b!41530 () Bool)

(declare-fun e!21852 () Bool)

(assert (=> b!41530 (= e!21852 e!21843)))

(declare-fun b!41531 () Bool)

(declare-fun e!21836 () Bool)

(declare-fun e!21839 () Bool)

(declare-fun lt!4431 () MutLongMap!194)

(assert (=> b!41531 (= e!21836 (and e!21839 ((_ is LongMap!194) lt!4431)))))

(assert (=> b!41531 (= lt!4431 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))

(declare-fun b!41532 () Bool)

(assert (=> b!41532 (= e!21839 e!21837)))

(declare-fun b!41533 () Bool)

(declare-fun res!29608 () Bool)

(assert (=> b!41533 (=> (not res!29608) (not e!21860))))

(declare-fun valid!184 (CacheUp!128) Bool)

(assert (=> b!41533 (= res!29608 (valid!184 cacheUp!320))))

(declare-datatypes ((TokenValue!143 0))(
  ( (FloatLiteralValue!286 (text!1446 List!604)) (TokenValueExt!142 (__x!1057 Int)) (Broken!715 (value!7142 List!604)) (Object!144) (End!143) (Def!143) (Underscore!143) (Match!143) (Else!143) (Error!143) (Case!143) (If!143) (Extends!143) (Abstract!143) (Class!143) (Val!143) (DelimiterValue!286 (del!203 List!604)) (KeywordValue!149 (value!7143 List!604)) (CommentValue!286 (value!7144 List!604)) (WhitespaceValue!286 (value!7145 List!604)) (IndentationValue!143 (value!7146 List!604)) (String!1006) (Int32!143) (Broken!716 (value!7147 List!604)) (Boolean!144) (Unit!269) (OperatorValue!146 (op!203 List!604)) (IdentifierValue!286 (value!7148 List!604)) (IdentifierValue!287 (value!7149 List!604)) (WhitespaceValue!287 (value!7150 List!604)) (True!286) (False!286) (Broken!717 (value!7151 List!604)) (Broken!718 (value!7152 List!604)) (True!287) (RightBrace!143) (RightBracket!143) (Colon!143) (Null!143) (Comma!143) (LeftBracket!143) (False!287) (LeftBrace!143) (ImaginaryLiteralValue!143 (text!1447 List!604)) (StringLiteralValue!429 (value!7153 List!604)) (EOFValue!143 (value!7154 List!604)) (IdentValue!143 (value!7155 List!604)) (DelimiterValue!287 (value!7156 List!604)) (DedentValue!143 (value!7157 List!604)) (NewLineValue!143 (value!7158 List!604)) (IntegerValue!429 (value!7159 (_ BitVec 32)) (text!1448 List!604)) (IntegerValue!430 (value!7160 Int) (text!1449 List!604)) (Times!143) (Or!143) (Equal!143) (Minus!143) (Broken!719 (value!7161 List!604)) (And!143) (Div!143) (LessEqual!143) (Mod!143) (Concat!361) (Not!143) (Plus!143) (SpaceValue!143 (value!7162 List!604)) (IntegerValue!431 (value!7163 Int) (text!1450 List!604)) (StringLiteralValue!430 (text!1451 List!604)) (FloatLiteralValue!287 (text!1452 List!604)) (BytesLiteralValue!143 (value!7164 List!604)) (CommentValue!287 (value!7165 List!604)) (StringLiteralValue!431 (value!7166 List!604)) (ErrorTokenValue!143 (msg!204 List!604)) )
))
(declare-datatypes ((String!1007 0))(
  ( (String!1008 (value!7167 String)) )
))
(declare-datatypes ((TokenValueInjection!110 0))(
  ( (TokenValueInjection!111 (toValue!632 Int) (toChars!491 Int)) )
))
(declare-datatypes ((Rule!106 0))(
  ( (Rule!107 (regex!153 Regex!217) (tag!331 String!1007) (isSeparator!153 Bool) (transformation!153 TokenValueInjection!110)) )
))
(declare-datatypes ((List!607 0))(
  ( (Nil!605) (Cons!605 (h!6001 Rule!106) (t!16091 List!607)) )
))
(declare-fun lt!4433 () List!607)

(declare-datatypes ((Token!74 0))(
  ( (Token!75 (value!7168 TokenValue!143) (rule!630 Rule!106) (size!609 Int) (originalCharacters!208 List!604)) )
))
(declare-datatypes ((List!608 0))(
  ( (Nil!606) (Cons!606 (h!6002 Token!74) (t!16092 List!608)) )
))
(declare-datatypes ((IArray!221 0))(
  ( (IArray!222 (innerList!168 List!608)) )
))
(declare-datatypes ((Conc!110 0))(
  ( (Node!110 (left!520 Conc!110) (right!850 Conc!110) (csize!450 Int) (cheight!321 Int)) (Leaf!297 (xs!2689 IArray!221) (csize!451 Int)) (Empty!110) )
))
(declare-datatypes ((BalanceConc!220 0))(
  ( (BalanceConc!221 (c!15849 Conc!110)) )
))
(declare-datatypes ((tuple2!696 0))(
  ( (tuple2!697 (_1!481 BalanceConc!220) (_2!481 BalanceConc!218)) )
))
(declare-datatypes ((tuple4!48 0))(
  ( (tuple4!49 (_1!482 tuple2!696) (_2!482 CacheUp!128) (_3!133 CacheDown!130) (_4!24 CacheFurthestNullable!78)) )
))
(declare-fun lt!4434 () tuple4!48)

(declare-fun b!41534 () Bool)

(declare-fun list!151 (BalanceConc!220) List!608)

(declare-datatypes ((LexerInterface!48 0))(
  ( (LexerInterfaceExt!45 (__x!1058 Int)) (Lexer!46) )
))
(declare-fun lex!23 (LexerInterface!48 List!607 BalanceConc!218) tuple2!696)

(assert (=> b!41534 (= e!21860 (not (= (list!151 (_1!481 (_1!482 lt!4434))) (list!151 (_1!481 (lex!23 Lexer!46 lt!4433 input!525))))))))

(declare-datatypes ((Unit!270 0))(
  ( (Unit!271) )
))
(declare-fun lt!4435 () Unit!270)

(declare-fun lemmaInvariant!37 (CacheDown!130) Unit!270)

(assert (=> b!41534 (= lt!4435 (lemmaInvariant!37 (_3!133 lt!4434)))))

(declare-fun lt!4437 () Unit!270)

(declare-fun lemmaInvariant!38 (CacheUp!128) Unit!270)

(assert (=> b!41534 (= lt!4437 (lemmaInvariant!38 (_2!482 lt!4434)))))

(declare-fun lexMem!17 (LexerInterface!48 List!607 BalanceConc!218 CacheUp!128 CacheDown!130 CacheFurthestNullable!78) tuple4!48)

(assert (=> b!41534 (= lt!4434 (lexMem!17 Lexer!46 lt!4433 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun tp!28651 () Bool)

(declare-fun e!21861 () Bool)

(declare-fun e!21858 () Bool)

(declare-fun tp!28662 () Bool)

(declare-fun array_inv!212 (array!640) Bool)

(declare-fun array_inv!213 (array!646) Bool)

(assert (=> b!41535 (= e!21858 (and tp!28653 tp!28662 tp!28651 (array_inv!212 (_keys!487 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320))))))) (array_inv!213 (_values!474 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320))))))) e!21861))))

(declare-fun b!41536 () Bool)

(declare-fun res!29609 () Bool)

(assert (=> b!41536 (=> (not res!29609) (not e!21860))))

(assert (=> b!41536 (= res!29609 (= (totalInput!1516 cacheFurthestNullable!45) input!525))))

(declare-fun mapNonEmpty!698 () Bool)

(declare-fun mapRes!699 () Bool)

(declare-fun tp!28645 () Bool)

(declare-fun tp!28650 () Bool)

(assert (=> mapNonEmpty!698 (= mapRes!699 (and tp!28645 tp!28650))))

(declare-fun mapRest!698 () (Array (_ BitVec 32) List!606))

(declare-fun mapValue!699 () List!606)

(declare-fun mapKey!699 () (_ BitVec 32))

(assert (=> mapNonEmpty!698 (= (arr!326 (_values!474 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320))))))) (store mapRest!698 mapKey!699 mapValue!699))))

(declare-fun e!21844 () Bool)

(declare-fun tp!28658 () Bool)

(declare-fun tp!28657 () Bool)

(declare-fun array_inv!214 (array!644) Bool)

(assert (=> b!41537 (= e!21844 (and tp!28665 tp!28657 tp!28658 (array_inv!212 (_keys!486 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333))))))) (array_inv!214 (_values!473 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333))))))) e!21846))))

(declare-fun mapIsEmpty!699 () Bool)

(assert (=> mapIsEmpty!699 mapRes!699))

(declare-fun mapNonEmpty!699 () Bool)

(declare-fun tp!28656 () Bool)

(declare-fun tp!28648 () Bool)

(assert (=> mapNonEmpty!699 (= mapRes!698 (and tp!28656 tp!28648))))

(declare-fun mapKey!697 () (_ BitVec 32))

(declare-fun mapValue!698 () List!605)

(declare-fun mapRest!697 () (Array (_ BitVec 32) List!605))

(assert (=> mapNonEmpty!699 (= (arr!325 (_values!473 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333))))))) (store mapRest!697 mapKey!697 mapValue!698))))

(declare-fun b!41538 () Bool)

(assert (=> b!41538 (= e!21853 e!21844)))

(declare-fun e!21854 () Bool)

(assert (=> b!41539 (= e!21854 (and e!21848 tp!28647))))

(declare-fun b!41540 () Bool)

(declare-fun e!21855 () Bool)

(assert (=> b!41540 (= e!21855 e!21858)))

(declare-fun res!29612 () Bool)

(assert (=> start!2336 (=> (not res!29612) (not e!21860))))

(declare-fun isEmpty!120 (List!607) Bool)

(assert (=> start!2336 (= res!29612 (not (isEmpty!120 lt!4433)))))

(declare-datatypes ((JsonLexer!58 0))(
  ( (JsonLexer!59) )
))
(declare-fun rules!109 (JsonLexer!58) List!607)

(assert (=> start!2336 (= lt!4433 (rules!109 JsonLexer!59))))

(assert (=> start!2336 e!21860))

(declare-fun inv!885 (CacheDown!130) Bool)

(assert (=> start!2336 (and (inv!885 cacheDown!333) e!21852)))

(declare-fun inv!886 (BalanceConc!218) Bool)

(assert (=> start!2336 (and (inv!886 input!525) e!21838)))

(declare-fun e!21856 () Bool)

(declare-fun inv!887 (CacheFurthestNullable!78) Bool)

(assert (=> start!2336 (and (inv!887 cacheFurthestNullable!45) e!21856)))

(declare-fun e!21849 () Bool)

(declare-fun inv!888 (CacheUp!128) Bool)

(assert (=> start!2336 (and (inv!888 cacheUp!320) e!21849)))

(declare-fun mapNonEmpty!697 () Bool)

(declare-fun tp!28663 () Bool)

(declare-fun tp!28660 () Bool)

(assert (=> mapNonEmpty!697 (= mapRes!697 (and tp!28663 tp!28660))))

(declare-fun mapRest!699 () (Array (_ BitVec 32) List!603))

(declare-fun mapKey!698 () (_ BitVec 32))

(declare-fun mapValue!697 () List!603)

(assert (=> mapNonEmpty!697 (= (arr!324 (_values!472 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))) (store mapRest!699 mapKey!698 mapValue!697))))

(declare-fun tp!28646 () Bool)

(declare-fun tp!28659 () Bool)

(declare-fun array_inv!215 (array!642) Bool)

(assert (=> b!41541 (= e!21840 (and tp!28652 tp!28646 tp!28659 (array_inv!212 (_keys!485 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))) (array_inv!215 (_values!472 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))) e!21851))))

(declare-fun b!41542 () Bool)

(declare-fun lt!4432 () MutLongMap!195)

(assert (=> b!41542 (= e!21847 (and e!21857 ((_ is LongMap!195) lt!4432)))))

(assert (=> b!41542 (= lt!4432 (v!12366 (underlying!586 (cache!676 cacheDown!333))))))

(declare-fun b!41543 () Bool)

(declare-fun tp!28654 () Bool)

(assert (=> b!41543 (= e!21861 (and tp!28654 mapRes!699))))

(declare-fun condMapEmpty!698 () Bool)

(declare-fun mapDefault!698 () List!606)

(assert (=> b!41543 (= condMapEmpty!698 (= (arr!326 (_values!474 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!606)) mapDefault!698)))))

(declare-fun b!41544 () Bool)

(declare-fun res!29611 () Bool)

(assert (=> b!41544 (=> (not res!29611) (not e!21860))))

(declare-fun valid!185 (CacheDown!130) Bool)

(assert (=> b!41544 (= res!29611 (valid!185 cacheDown!333))))

(declare-fun b!41545 () Bool)

(declare-fun res!29607 () Bool)

(assert (=> b!41545 (=> (not res!29607) (not e!21860))))

(declare-fun rulesInvariant!40 (LexerInterface!48 List!607) Bool)

(assert (=> b!41545 (= res!29607 (rulesInvariant!40 Lexer!46 lt!4433))))

(declare-fun b!41546 () Bool)

(assert (=> b!41546 (= e!21849 e!21854)))

(declare-fun b!41547 () Bool)

(assert (=> b!41547 (= e!21862 e!21855)))

(declare-fun e!21859 () Bool)

(declare-fun b!41548 () Bool)

(assert (=> b!41548 (= e!21856 (and e!21859 (inv!886 (totalInput!1516 cacheFurthestNullable!45)) e!21845))))

(assert (=> b!41549 (= e!21859 (and e!21836 tp!28664))))

(assert (= (and start!2336 res!29612) b!41545))

(assert (= (and b!41545 res!29607) b!41533))

(assert (= (and b!41533 res!29608) b!41544))

(assert (= (and b!41544 res!29611) b!41522))

(assert (= (and b!41522 res!29610) b!41536))

(assert (= (and b!41536 res!29609) b!41534))

(assert (= (and b!41523 condMapEmpty!697) mapIsEmpty!698))

(assert (= (and b!41523 (not condMapEmpty!697)) mapNonEmpty!699))

(assert (= b!41537 b!41523))

(assert (= b!41538 b!41537))

(assert (= b!41529 b!41538))

(assert (= (and b!41542 ((_ is LongMap!195) (v!12366 (underlying!586 (cache!676 cacheDown!333))))) b!41529))

(assert (= b!41526 b!41542))

(assert (= (and b!41530 ((_ is HashMap!191) (cache!676 cacheDown!333))) b!41526))

(assert (= start!2336 b!41530))

(assert (= start!2336 b!41524))

(assert (= (and b!41527 condMapEmpty!699) mapIsEmpty!697))

(assert (= (and b!41527 (not condMapEmpty!699)) mapNonEmpty!697))

(assert (= b!41541 b!41527))

(assert (= b!41521 b!41541))

(assert (= b!41532 b!41521))

(assert (= (and b!41531 ((_ is LongMap!194) (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))) b!41532))

(assert (= b!41549 b!41531))

(assert (= (and b!41548 ((_ is HashMap!190) (cache!675 cacheFurthestNullable!45))) b!41549))

(assert (= b!41548 b!41525))

(assert (= start!2336 b!41548))

(assert (= (and b!41543 condMapEmpty!698) mapIsEmpty!699))

(assert (= (and b!41543 (not condMapEmpty!698)) mapNonEmpty!698))

(assert (= b!41535 b!41543))

(assert (= b!41540 b!41535))

(assert (= b!41547 b!41540))

(assert (= (and b!41528 ((_ is LongMap!196) (v!12368 (underlying!588 (cache!677 cacheUp!320))))) b!41547))

(assert (= b!41539 b!41528))

(assert (= (and b!41546 ((_ is HashMap!192) (cache!677 cacheUp!320))) b!41539))

(assert (= start!2336 b!41546))

(declare-fun m!14850 () Bool)

(assert (=> b!41545 m!14850))

(declare-fun m!14852 () Bool)

(assert (=> b!41544 m!14852))

(declare-fun m!14854 () Bool)

(assert (=> start!2336 m!14854))

(declare-fun m!14856 () Bool)

(assert (=> start!2336 m!14856))

(declare-fun m!14858 () Bool)

(assert (=> start!2336 m!14858))

(declare-fun m!14860 () Bool)

(assert (=> start!2336 m!14860))

(declare-fun m!14862 () Bool)

(assert (=> start!2336 m!14862))

(declare-fun m!14864 () Bool)

(assert (=> start!2336 m!14864))

(declare-fun m!14866 () Bool)

(assert (=> mapNonEmpty!698 m!14866))

(declare-fun m!14868 () Bool)

(assert (=> b!41534 m!14868))

(declare-fun m!14870 () Bool)

(assert (=> b!41534 m!14870))

(declare-fun m!14872 () Bool)

(assert (=> b!41534 m!14872))

(declare-fun m!14874 () Bool)

(assert (=> b!41534 m!14874))

(declare-fun m!14876 () Bool)

(assert (=> b!41534 m!14876))

(declare-fun m!14878 () Bool)

(assert (=> b!41534 m!14878))

(declare-fun m!14880 () Bool)

(assert (=> b!41535 m!14880))

(declare-fun m!14882 () Bool)

(assert (=> b!41535 m!14882))

(declare-fun m!14884 () Bool)

(assert (=> mapNonEmpty!699 m!14884))

(declare-fun m!14886 () Bool)

(assert (=> b!41537 m!14886))

(declare-fun m!14888 () Bool)

(assert (=> b!41537 m!14888))

(declare-fun m!14890 () Bool)

(assert (=> mapNonEmpty!697 m!14890))

(declare-fun m!14892 () Bool)

(assert (=> b!41541 m!14892))

(declare-fun m!14894 () Bool)

(assert (=> b!41541 m!14894))

(declare-fun m!14896 () Bool)

(assert (=> b!41525 m!14896))

(declare-fun m!14898 () Bool)

(assert (=> b!41548 m!14898))

(declare-fun m!14900 () Bool)

(assert (=> b!41524 m!14900))

(declare-fun m!14902 () Bool)

(assert (=> b!41533 m!14902))

(declare-fun m!14904 () Bool)

(assert (=> b!41522 m!14904))

(check-sat (not b!41525) (not b!41537) (not b!41535) (not b!41534) (not b!41543) (not b_next!939) b_and!977 (not b_next!933) (not b_next!941) b_and!969 (not b!41522) (not b!41527) (not b!41544) (not b_next!943) (not mapNonEmpty!697) (not b!41523) (not b!41524) (not mapNonEmpty!698) (not b!41545) (not b_next!937) (not b!41533) (not mapNonEmpty!699) b_and!967 (not b!41541) (not b!41548) b_and!973 (not b_next!935) b_and!975 b_and!971 (not start!2336))
(check-sat (not b_next!937) b_and!967 b_and!973 (not b_next!939) b_and!977 (not b_next!933) (not b_next!941) b_and!969 (not b_next!943) b_and!971 (not b_next!935) b_and!975)
(get-model)

(declare-fun d!4251 () Bool)

(declare-fun isBalanced!17 (Conc!109) Bool)

(assert (=> d!4251 (= (inv!886 (totalInput!1516 cacheFurthestNullable!45)) (isBalanced!17 (c!15848 (totalInput!1516 cacheFurthestNullable!45))))))

(declare-fun bs!5081 () Bool)

(assert (= bs!5081 d!4251))

(declare-fun m!14906 () Bool)

(assert (=> bs!5081 m!14906))

(assert (=> b!41548 d!4251))

(declare-fun d!4253 () Bool)

(declare-fun validCacheMapFurthestNullable!6 (MutableMap!190 BalanceConc!218) Bool)

(assert (=> d!4253 (= (valid!183 cacheFurthestNullable!45) (validCacheMapFurthestNullable!6 (cache!675 cacheFurthestNullable!45) (totalInput!1516 cacheFurthestNullable!45)))))

(declare-fun bs!5082 () Bool)

(assert (= bs!5082 d!4253))

(declare-fun m!14908 () Bool)

(assert (=> bs!5082 m!14908))

(assert (=> b!41522 d!4253))

(declare-fun d!4255 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!58) Rule!106)

(declare-fun integerLiteralRule!0 (JsonLexer!58) Rule!106)

(declare-fun floatLiteralRule!0 (JsonLexer!58) Rule!106)

(declare-fun trueRule!0 (JsonLexer!58) Rule!106)

(declare-fun falseRule!0 (JsonLexer!58) Rule!106)

(declare-fun nullRule!0 (JsonLexer!58) Rule!106)

(declare-fun jsonstringRule!0 (JsonLexer!58) Rule!106)

(declare-fun lBraceRule!0 (JsonLexer!58) Rule!106)

(declare-fun rBraceRule!0 (JsonLexer!58) Rule!106)

(declare-fun lBracketRule!0 (JsonLexer!58) Rule!106)

(declare-fun rBracketRule!0 (JsonLexer!58) Rule!106)

(declare-fun colonRule!0 (JsonLexer!58) Rule!106)

(declare-fun commaRule!0 (JsonLexer!58) Rule!106)

(declare-fun eofRule!0 (JsonLexer!58) Rule!106)

(assert (=> d!4255 (= (rules!109 JsonLexer!59) (Cons!605 (whitespaceRule!0 JsonLexer!59) (Cons!605 (integerLiteralRule!0 JsonLexer!59) (Cons!605 (floatLiteralRule!0 JsonLexer!59) (Cons!605 (trueRule!0 JsonLexer!59) (Cons!605 (falseRule!0 JsonLexer!59) (Cons!605 (nullRule!0 JsonLexer!59) (Cons!605 (jsonstringRule!0 JsonLexer!59) (Cons!605 (lBraceRule!0 JsonLexer!59) (Cons!605 (rBraceRule!0 JsonLexer!59) (Cons!605 (lBracketRule!0 JsonLexer!59) (Cons!605 (rBracketRule!0 JsonLexer!59) (Cons!605 (colonRule!0 JsonLexer!59) (Cons!605 (commaRule!0 JsonLexer!59) (Cons!605 (eofRule!0 JsonLexer!59) Nil!605)))))))))))))))))

(declare-fun bs!5083 () Bool)

(assert (= bs!5083 d!4255))

(declare-fun m!14910 () Bool)

(assert (=> bs!5083 m!14910))

(declare-fun m!14912 () Bool)

(assert (=> bs!5083 m!14912))

(declare-fun m!14914 () Bool)

(assert (=> bs!5083 m!14914))

(declare-fun m!14916 () Bool)

(assert (=> bs!5083 m!14916))

(declare-fun m!14918 () Bool)

(assert (=> bs!5083 m!14918))

(declare-fun m!14920 () Bool)

(assert (=> bs!5083 m!14920))

(declare-fun m!14922 () Bool)

(assert (=> bs!5083 m!14922))

(declare-fun m!14924 () Bool)

(assert (=> bs!5083 m!14924))

(declare-fun m!14926 () Bool)

(assert (=> bs!5083 m!14926))

(declare-fun m!14928 () Bool)

(assert (=> bs!5083 m!14928))

(declare-fun m!14930 () Bool)

(assert (=> bs!5083 m!14930))

(declare-fun m!14932 () Bool)

(assert (=> bs!5083 m!14932))

(declare-fun m!14934 () Bool)

(assert (=> bs!5083 m!14934))

(declare-fun m!14936 () Bool)

(assert (=> bs!5083 m!14936))

(assert (=> start!2336 d!4255))

(declare-fun d!4257 () Bool)

(declare-fun res!29615 () Bool)

(declare-fun e!21865 () Bool)

(assert (=> d!4257 (=> (not res!29615) (not e!21865))))

(assert (=> d!4257 (= res!29615 ((_ is HashMap!191) (cache!676 cacheDown!333)))))

(assert (=> d!4257 (= (inv!885 cacheDown!333) e!21865)))

(declare-fun b!41552 () Bool)

(declare-fun validCacheMapDown!14 (MutableMap!191) Bool)

(assert (=> b!41552 (= e!21865 (validCacheMapDown!14 (cache!676 cacheDown!333)))))

(assert (= (and d!4257 res!29615) b!41552))

(declare-fun m!14938 () Bool)

(assert (=> b!41552 m!14938))

(assert (=> start!2336 d!4257))

(declare-fun d!4259 () Bool)

(assert (=> d!4259 (= (inv!886 input!525) (isBalanced!17 (c!15848 input!525)))))

(declare-fun bs!5084 () Bool)

(assert (= bs!5084 d!4259))

(declare-fun m!14940 () Bool)

(assert (=> bs!5084 m!14940))

(assert (=> start!2336 d!4259))

(declare-fun d!4261 () Bool)

(declare-fun res!29618 () Bool)

(declare-fun e!21868 () Bool)

(assert (=> d!4261 (=> (not res!29618) (not e!21868))))

(assert (=> d!4261 (= res!29618 ((_ is HashMap!190) (cache!675 cacheFurthestNullable!45)))))

(assert (=> d!4261 (= (inv!887 cacheFurthestNullable!45) e!21868)))

(declare-fun b!41555 () Bool)

(assert (=> b!41555 (= e!21868 (validCacheMapFurthestNullable!6 (cache!675 cacheFurthestNullable!45) (totalInput!1516 cacheFurthestNullable!45)))))

(assert (= (and d!4261 res!29618) b!41555))

(assert (=> b!41555 m!14908))

(assert (=> start!2336 d!4261))

(declare-fun d!4263 () Bool)

(declare-fun res!29621 () Bool)

(declare-fun e!21871 () Bool)

(assert (=> d!4263 (=> (not res!29621) (not e!21871))))

(assert (=> d!4263 (= res!29621 ((_ is HashMap!192) (cache!677 cacheUp!320)))))

(assert (=> d!4263 (= (inv!888 cacheUp!320) e!21871)))

(declare-fun b!41558 () Bool)

(declare-fun validCacheMapUp!12 (MutableMap!192) Bool)

(assert (=> b!41558 (= e!21871 (validCacheMapUp!12 (cache!677 cacheUp!320)))))

(assert (= (and d!4263 res!29621) b!41558))

(declare-fun m!14942 () Bool)

(assert (=> b!41558 m!14942))

(assert (=> start!2336 d!4263))

(declare-fun d!4265 () Bool)

(assert (=> d!4265 (= (isEmpty!120 lt!4433) ((_ is Nil!605) lt!4433))))

(assert (=> start!2336 d!4265))

(declare-fun d!4267 () Bool)

(declare-fun c!15852 () Bool)

(assert (=> d!4267 (= c!15852 ((_ is Node!109) (c!15848 input!525)))))

(declare-fun e!21876 () Bool)

(assert (=> d!4267 (= (inv!884 (c!15848 input!525)) e!21876)))

(declare-fun b!41565 () Bool)

(declare-fun inv!889 (Conc!109) Bool)

(assert (=> b!41565 (= e!21876 (inv!889 (c!15848 input!525)))))

(declare-fun b!41566 () Bool)

(declare-fun e!21877 () Bool)

(assert (=> b!41566 (= e!21876 e!21877)))

(declare-fun res!29624 () Bool)

(assert (=> b!41566 (= res!29624 (not ((_ is Leaf!296) (c!15848 input!525))))))

(assert (=> b!41566 (=> res!29624 e!21877)))

(declare-fun b!41567 () Bool)

(declare-fun inv!890 (Conc!109) Bool)

(assert (=> b!41567 (= e!21877 (inv!890 (c!15848 input!525)))))

(assert (= (and d!4267 c!15852) b!41565))

(assert (= (and d!4267 (not c!15852)) b!41566))

(assert (= (and b!41566 (not res!29624)) b!41567))

(declare-fun m!14944 () Bool)

(assert (=> b!41565 m!14944))

(declare-fun m!14946 () Bool)

(assert (=> b!41567 m!14946))

(assert (=> b!41524 d!4267))

(declare-fun d!4269 () Bool)

(assert (=> d!4269 (= (array_inv!212 (_keys!485 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))) (bvsge (size!605 (_keys!485 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!41541 d!4269))

(declare-fun d!4271 () Bool)

(assert (=> d!4271 (= (array_inv!215 (_values!472 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))) (bvsge (size!606 (_values!472 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!41541 d!4271))

(declare-fun d!4273 () Bool)

(assert (=> d!4273 (= (valid!184 cacheUp!320) (validCacheMapUp!12 (cache!677 cacheUp!320)))))

(declare-fun bs!5085 () Bool)

(assert (= bs!5085 d!4273))

(assert (=> bs!5085 m!14942))

(assert (=> b!41533 d!4273))

(declare-fun d!4275 () Bool)

(declare-fun list!152 (Conc!110) List!608)

(assert (=> d!4275 (= (list!151 (_1!481 (lex!23 Lexer!46 lt!4433 input!525))) (list!152 (c!15849 (_1!481 (lex!23 Lexer!46 lt!4433 input!525)))))))

(declare-fun bs!5086 () Bool)

(assert (= bs!5086 d!4275))

(declare-fun m!14948 () Bool)

(assert (=> bs!5086 m!14948))

(assert (=> b!41534 d!4275))

(declare-fun b!41578 () Bool)

(declare-fun res!29632 () Bool)

(declare-fun e!21884 () Bool)

(assert (=> b!41578 (=> (not res!29632) (not e!21884))))

(declare-fun lt!4440 () tuple2!696)

(declare-datatypes ((tuple2!698 0))(
  ( (tuple2!699 (_1!483 List!608) (_2!483 List!604)) )
))
(declare-fun lexList!7 (LexerInterface!48 List!607 List!604) tuple2!698)

(declare-fun list!153 (BalanceConc!218) List!604)

(assert (=> b!41578 (= res!29632 (= (list!151 (_1!481 lt!4440)) (_1!483 (lexList!7 Lexer!46 lt!4433 (list!153 input!525)))))))

(declare-fun b!41579 () Bool)

(assert (=> b!41579 (= e!21884 (= (list!153 (_2!481 lt!4440)) (_2!483 (lexList!7 Lexer!46 lt!4433 (list!153 input!525)))))))

(declare-fun b!41580 () Bool)

(declare-fun e!21885 () Bool)

(declare-fun isEmpty!121 (BalanceConc!220) Bool)

(assert (=> b!41580 (= e!21885 (not (isEmpty!121 (_1!481 lt!4440))))))

(declare-fun b!41581 () Bool)

(declare-fun e!21886 () Bool)

(assert (=> b!41581 (= e!21886 e!21885)))

(declare-fun res!29631 () Bool)

(declare-fun size!610 (BalanceConc!218) Int)

(assert (=> b!41581 (= res!29631 (< (size!610 (_2!481 lt!4440)) (size!610 input!525)))))

(assert (=> b!41581 (=> (not res!29631) (not e!21885))))

(declare-fun d!4277 () Bool)

(assert (=> d!4277 e!21884))

(declare-fun res!29633 () Bool)

(assert (=> d!4277 (=> (not res!29633) (not e!21884))))

(assert (=> d!4277 (= res!29633 e!21886)))

(declare-fun c!15856 () Bool)

(declare-fun size!611 (BalanceConc!220) Int)

(assert (=> d!4277 (= c!15856 (> (size!611 (_1!481 lt!4440)) 0))))

(declare-fun lexTailRecV2!4 (LexerInterface!48 List!607 BalanceConc!218 BalanceConc!218 BalanceConc!218 BalanceConc!220) tuple2!696)

(assert (=> d!4277 (= lt!4440 (lexTailRecV2!4 Lexer!46 lt!4433 input!525 (BalanceConc!219 Empty!109) input!525 (BalanceConc!221 Empty!110)))))

(assert (=> d!4277 (= (lex!23 Lexer!46 lt!4433 input!525) lt!4440)))

(declare-fun b!41582 () Bool)

(assert (=> b!41582 (= e!21886 (= (_2!481 lt!4440) input!525))))

(assert (= (and d!4277 c!15856) b!41581))

(assert (= (and d!4277 (not c!15856)) b!41582))

(assert (= (and b!41581 res!29631) b!41580))

(assert (= (and d!4277 res!29633) b!41578))

(assert (= (and b!41578 res!29632) b!41579))

(declare-fun m!14950 () Bool)

(assert (=> d!4277 m!14950))

(declare-fun m!14952 () Bool)

(assert (=> d!4277 m!14952))

(declare-fun m!14954 () Bool)

(assert (=> b!41579 m!14954))

(declare-fun m!14956 () Bool)

(assert (=> b!41579 m!14956))

(assert (=> b!41579 m!14956))

(declare-fun m!14958 () Bool)

(assert (=> b!41579 m!14958))

(declare-fun m!14960 () Bool)

(assert (=> b!41581 m!14960))

(declare-fun m!14962 () Bool)

(assert (=> b!41581 m!14962))

(declare-fun m!14964 () Bool)

(assert (=> b!41580 m!14964))

(declare-fun m!14966 () Bool)

(assert (=> b!41578 m!14966))

(assert (=> b!41578 m!14956))

(assert (=> b!41578 m!14956))

(assert (=> b!41578 m!14958))

(assert (=> b!41534 d!4277))

(declare-fun d!4279 () Bool)

(assert (=> d!4279 (valid!184 (_2!482 lt!4434))))

(declare-fun Unit!272 () Unit!270)

(assert (=> d!4279 (= (lemmaInvariant!38 (_2!482 lt!4434)) Unit!272)))

(declare-fun bs!5087 () Bool)

(assert (= bs!5087 d!4279))

(declare-fun m!14968 () Bool)

(assert (=> bs!5087 m!14968))

(assert (=> b!41534 d!4279))

(declare-fun d!4281 () Bool)

(assert (=> d!4281 (valid!185 (_3!133 lt!4434))))

(declare-fun Unit!273 () Unit!270)

(assert (=> d!4281 (= (lemmaInvariant!37 (_3!133 lt!4434)) Unit!273)))

(declare-fun bs!5088 () Bool)

(assert (= bs!5088 d!4281))

(declare-fun m!14970 () Bool)

(assert (=> bs!5088 m!14970))

(assert (=> b!41534 d!4281))

(declare-fun d!4283 () Bool)

(assert (=> d!4283 (= (list!151 (_1!481 (_1!482 lt!4434))) (list!152 (c!15849 (_1!481 (_1!482 lt!4434)))))))

(declare-fun bs!5089 () Bool)

(assert (= bs!5089 d!4283))

(declare-fun m!14972 () Bool)

(assert (=> bs!5089 m!14972))

(assert (=> b!41534 d!4283))

(declare-fun d!4285 () Bool)

(declare-fun e!21889 () Bool)

(assert (=> d!4285 e!21889))

(declare-fun res!29645 () Bool)

(assert (=> d!4285 (=> (not res!29645) (not e!21889))))

(declare-fun lt!4446 () tuple4!48)

(assert (=> d!4285 (= res!29645 (= (list!151 (_1!481 (_1!482 lt!4446))) (list!151 (_1!481 (lex!23 Lexer!46 lt!4433 input!525)))))))

(declare-fun lt!4445 () tuple4!48)

(assert (=> d!4285 (= lt!4446 (tuple4!49 (_1!482 lt!4445) (_2!482 lt!4445) (_3!133 lt!4445) (_4!24 lt!4445)))))

(declare-fun lexTailRecV3Mem!4 (LexerInterface!48 List!607 BalanceConc!218 BalanceConc!218 BalanceConc!218 BalanceConc!220 CacheUp!128 CacheDown!130 CacheFurthestNullable!78) tuple4!48)

(assert (=> d!4285 (= lt!4445 (lexTailRecV3Mem!4 Lexer!46 lt!4433 input!525 (BalanceConc!219 Empty!109) input!525 (BalanceConc!221 Empty!110) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!4285 (not (isEmpty!120 lt!4433))))

(assert (=> d!4285 (= (lexMem!17 Lexer!46 lt!4433 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!4446)))

(declare-fun b!41593 () Bool)

(declare-fun res!29646 () Bool)

(assert (=> b!41593 (=> (not res!29646) (not e!21889))))

(assert (=> b!41593 (= res!29646 (valid!184 (_2!482 lt!4446)))))

(declare-fun b!41594 () Bool)

(declare-fun res!29648 () Bool)

(assert (=> b!41594 (=> (not res!29648) (not e!21889))))

(assert (=> b!41594 (= res!29648 (valid!183 (_4!24 lt!4446)))))

(declare-fun b!41595 () Bool)

(declare-fun res!29644 () Bool)

(assert (=> b!41595 (=> (not res!29644) (not e!21889))))

(assert (=> b!41595 (= res!29644 (valid!185 (_3!133 lt!4446)))))

(declare-fun b!41596 () Bool)

(assert (=> b!41596 (= e!21889 (= (totalInput!1516 (_4!24 lt!4446)) input!525))))

(declare-fun b!41597 () Bool)

(declare-fun res!29647 () Bool)

(assert (=> b!41597 (=> (not res!29647) (not e!21889))))

(assert (=> b!41597 (= res!29647 (= (list!153 (_2!481 (_1!482 lt!4446))) (list!153 (_2!481 (lex!23 Lexer!46 lt!4433 input!525)))))))

(assert (= (and d!4285 res!29645) b!41597))

(assert (= (and b!41597 res!29647) b!41594))

(assert (= (and b!41594 res!29648) b!41593))

(assert (= (and b!41593 res!29646) b!41595))

(assert (= (and b!41595 res!29644) b!41596))

(declare-fun m!14974 () Bool)

(assert (=> b!41595 m!14974))

(declare-fun m!14976 () Bool)

(assert (=> b!41597 m!14976))

(assert (=> b!41597 m!14878))

(declare-fun m!14978 () Bool)

(assert (=> b!41597 m!14978))

(declare-fun m!14980 () Bool)

(assert (=> d!4285 m!14980))

(assert (=> d!4285 m!14876))

(assert (=> d!4285 m!14856))

(declare-fun m!14982 () Bool)

(assert (=> d!4285 m!14982))

(assert (=> d!4285 m!14878))

(declare-fun m!14984 () Bool)

(assert (=> b!41594 m!14984))

(declare-fun m!14986 () Bool)

(assert (=> b!41593 m!14986))

(assert (=> b!41534 d!4285))

(declare-fun d!4287 () Bool)

(declare-fun c!15857 () Bool)

(assert (=> d!4287 (= c!15857 ((_ is Node!109) (c!15848 (totalInput!1516 cacheFurthestNullable!45))))))

(declare-fun e!21890 () Bool)

(assert (=> d!4287 (= (inv!884 (c!15848 (totalInput!1516 cacheFurthestNullable!45))) e!21890)))

(declare-fun b!41598 () Bool)

(assert (=> b!41598 (= e!21890 (inv!889 (c!15848 (totalInput!1516 cacheFurthestNullable!45))))))

(declare-fun b!41599 () Bool)

(declare-fun e!21891 () Bool)

(assert (=> b!41599 (= e!21890 e!21891)))

(declare-fun res!29649 () Bool)

(assert (=> b!41599 (= res!29649 (not ((_ is Leaf!296) (c!15848 (totalInput!1516 cacheFurthestNullable!45)))))))

(assert (=> b!41599 (=> res!29649 e!21891)))

(declare-fun b!41600 () Bool)

(assert (=> b!41600 (= e!21891 (inv!890 (c!15848 (totalInput!1516 cacheFurthestNullable!45))))))

(assert (= (and d!4287 c!15857) b!41598))

(assert (= (and d!4287 (not c!15857)) b!41599))

(assert (= (and b!41599 (not res!29649)) b!41600))

(declare-fun m!14988 () Bool)

(assert (=> b!41598 m!14988))

(declare-fun m!14990 () Bool)

(assert (=> b!41600 m!14990))

(assert (=> b!41525 d!4287))

(declare-fun d!4289 () Bool)

(assert (=> d!4289 (= (array_inv!212 (_keys!487 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320))))))) (bvsge (size!605 (_keys!487 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!41535 d!4289))

(declare-fun d!4291 () Bool)

(assert (=> d!4291 (= (array_inv!213 (_values!474 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320))))))) (bvsge (size!608 (_values!474 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!41535 d!4291))

(declare-fun d!4293 () Bool)

(assert (=> d!4293 (= (valid!185 cacheDown!333) (validCacheMapDown!14 (cache!676 cacheDown!333)))))

(declare-fun bs!5090 () Bool)

(assert (= bs!5090 d!4293))

(assert (=> bs!5090 m!14938))

(assert (=> b!41544 d!4293))

(declare-fun d!4295 () Bool)

(declare-fun res!29652 () Bool)

(declare-fun e!21894 () Bool)

(assert (=> d!4295 (=> (not res!29652) (not e!21894))))

(declare-fun rulesValid!10 (LexerInterface!48 List!607) Bool)

(assert (=> d!4295 (= res!29652 (rulesValid!10 Lexer!46 lt!4433))))

(assert (=> d!4295 (= (rulesInvariant!40 Lexer!46 lt!4433) e!21894)))

(declare-fun b!41603 () Bool)

(declare-datatypes ((List!609 0))(
  ( (Nil!607) (Cons!607 (h!6003 String!1007) (t!16093 List!609)) )
))
(declare-fun noDuplicateTag!10 (LexerInterface!48 List!607 List!609) Bool)

(assert (=> b!41603 (= e!21894 (noDuplicateTag!10 Lexer!46 lt!4433 Nil!607))))

(assert (= (and d!4295 res!29652) b!41603))

(declare-fun m!14992 () Bool)

(assert (=> d!4295 m!14992))

(declare-fun m!14994 () Bool)

(assert (=> b!41603 m!14994))

(assert (=> b!41545 d!4295))

(declare-fun d!4297 () Bool)

(assert (=> d!4297 (= (array_inv!212 (_keys!486 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333))))))) (bvsge (size!605 (_keys!486 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!41537 d!4297))

(declare-fun d!4299 () Bool)

(assert (=> d!4299 (= (array_inv!214 (_values!473 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333))))))) (bvsge (size!607 (_values!473 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!41537 d!4299))

(declare-fun condMapEmpty!702 () Bool)

(declare-fun mapDefault!702 () List!605)

(assert (=> mapNonEmpty!699 (= condMapEmpty!702 (= mapRest!697 ((as const (Array (_ BitVec 32) List!605)) mapDefault!702)))))

(declare-fun e!21911 () Bool)

(declare-fun mapRes!702 () Bool)

(assert (=> mapNonEmpty!699 (= tp!28656 (and e!21911 mapRes!702))))

(declare-fun b!41610 () Bool)

(declare-fun tp!28678 () Bool)

(declare-fun setRes!696 () Bool)

(declare-fun inv!891 (Context!150) Bool)

(assert (=> b!41610 (= e!21911 (and (inv!891 (_2!477 (_1!478 (h!5999 mapDefault!702)))) setRes!696 tp!28678))))

(declare-fun condSetEmpty!696 () Bool)

(assert (=> b!41610 (= condSetEmpty!696 (= (_2!478 (h!5999 mapDefault!702)) ((as const (Array Context!150 Bool)) false)))))

(declare-fun b!41611 () Bool)

(declare-fun mapValue!702 () List!605)

(declare-fun setRes!697 () Bool)

(declare-fun e!21912 () Bool)

(declare-fun tp!28680 () Bool)

(assert (=> b!41611 (= e!21912 (and (inv!891 (_2!477 (_1!478 (h!5999 mapValue!702)))) setRes!697 tp!28680))))

(declare-fun condSetEmpty!697 () Bool)

(assert (=> b!41611 (= condSetEmpty!697 (= (_2!478 (h!5999 mapValue!702)) ((as const (Array Context!150 Bool)) false)))))

(declare-fun mapIsEmpty!702 () Bool)

(assert (=> mapIsEmpty!702 mapRes!702))

(declare-fun mapNonEmpty!702 () Bool)

(declare-fun tp!28677 () Bool)

(assert (=> mapNonEmpty!702 (= mapRes!702 (and tp!28677 e!21912))))

(declare-fun mapKey!702 () (_ BitVec 32))

(declare-fun mapRest!702 () (Array (_ BitVec 32) List!605))

(assert (=> mapNonEmpty!702 (= mapRest!697 (store mapRest!702 mapKey!702 mapValue!702))))

(declare-fun setNonEmpty!696 () Bool)

(declare-fun tp!28679 () Bool)

(declare-fun setElem!697 () Context!150)

(assert (=> setNonEmpty!696 (= setRes!697 (and tp!28679 (inv!891 setElem!697)))))

(declare-fun setRest!697 () (InoxSet Context!150))

(assert (=> setNonEmpty!696 (= (_2!478 (h!5999 mapValue!702)) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!697 true) setRest!697))))

(declare-fun setIsEmpty!696 () Bool)

(assert (=> setIsEmpty!696 setRes!697))

(declare-fun setIsEmpty!697 () Bool)

(assert (=> setIsEmpty!697 setRes!696))

(declare-fun setNonEmpty!697 () Bool)

(declare-fun tp!28676 () Bool)

(declare-fun setElem!696 () Context!150)

(assert (=> setNonEmpty!697 (= setRes!696 (and tp!28676 (inv!891 setElem!696)))))

(declare-fun setRest!696 () (InoxSet Context!150))

(assert (=> setNonEmpty!697 (= (_2!478 (h!5999 mapDefault!702)) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!696 true) setRest!696))))

(assert (= (and mapNonEmpty!699 condMapEmpty!702) mapIsEmpty!702))

(assert (= (and mapNonEmpty!699 (not condMapEmpty!702)) mapNonEmpty!702))

(assert (= (and b!41611 condSetEmpty!697) setIsEmpty!696))

(assert (= (and b!41611 (not condSetEmpty!697)) setNonEmpty!696))

(assert (= (and mapNonEmpty!702 ((_ is Cons!603) mapValue!702)) b!41611))

(assert (= (and b!41610 condSetEmpty!696) setIsEmpty!697))

(assert (= (and b!41610 (not condSetEmpty!696)) setNonEmpty!697))

(assert (= (and mapNonEmpty!699 ((_ is Cons!603) mapDefault!702)) b!41610))

(declare-fun m!14996 () Bool)

(assert (=> b!41611 m!14996))

(declare-fun m!14998 () Bool)

(assert (=> mapNonEmpty!702 m!14998))

(declare-fun m!15000 () Bool)

(assert (=> setNonEmpty!696 m!15000))

(declare-fun m!15002 () Bool)

(assert (=> setNonEmpty!697 m!15002))

(declare-fun m!15004 () Bool)

(assert (=> b!41610 m!15004))

(declare-fun b!41616 () Bool)

(declare-fun setRes!700 () Bool)

(declare-fun e!21919 () Bool)

(declare-fun tp!28685 () Bool)

(assert (=> b!41616 (= e!21919 (and (inv!891 (_2!477 (_1!478 (h!5999 mapValue!698)))) setRes!700 tp!28685))))

(declare-fun condSetEmpty!700 () Bool)

(assert (=> b!41616 (= condSetEmpty!700 (= (_2!478 (h!5999 mapValue!698)) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!700 () Bool)

(assert (=> setIsEmpty!700 setRes!700))

(declare-fun setNonEmpty!700 () Bool)

(declare-fun tp!28686 () Bool)

(declare-fun setElem!700 () Context!150)

(assert (=> setNonEmpty!700 (= setRes!700 (and tp!28686 (inv!891 setElem!700)))))

(declare-fun setRest!700 () (InoxSet Context!150))

(assert (=> setNonEmpty!700 (= (_2!478 (h!5999 mapValue!698)) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!700 true) setRest!700))))

(assert (=> mapNonEmpty!699 (= tp!28648 e!21919)))

(assert (= (and b!41616 condSetEmpty!700) setIsEmpty!700))

(assert (= (and b!41616 (not condSetEmpty!700)) setNonEmpty!700))

(assert (= (and mapNonEmpty!699 ((_ is Cons!603) mapValue!698)) b!41616))

(declare-fun m!15006 () Bool)

(assert (=> b!41616 m!15006))

(declare-fun m!15008 () Bool)

(assert (=> setNonEmpty!700 m!15008))

(declare-fun b!41617 () Bool)

(declare-fun tp!28687 () Bool)

(declare-fun e!21922 () Bool)

(declare-fun setRes!701 () Bool)

(assert (=> b!41617 (= e!21922 (and (inv!891 (_2!477 (_1!478 (h!5999 mapDefault!697)))) setRes!701 tp!28687))))

(declare-fun condSetEmpty!701 () Bool)

(assert (=> b!41617 (= condSetEmpty!701 (= (_2!478 (h!5999 mapDefault!697)) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!701 () Bool)

(assert (=> setIsEmpty!701 setRes!701))

(declare-fun setNonEmpty!701 () Bool)

(declare-fun tp!28688 () Bool)

(declare-fun setElem!701 () Context!150)

(assert (=> setNonEmpty!701 (= setRes!701 (and tp!28688 (inv!891 setElem!701)))))

(declare-fun setRest!701 () (InoxSet Context!150))

(assert (=> setNonEmpty!701 (= (_2!478 (h!5999 mapDefault!697)) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!701 true) setRest!701))))

(assert (=> b!41523 (= tp!28655 e!21922)))

(assert (= (and b!41617 condSetEmpty!701) setIsEmpty!701))

(assert (= (and b!41617 (not condSetEmpty!701)) setNonEmpty!701))

(assert (= (and b!41523 ((_ is Cons!603) mapDefault!697)) b!41617))

(declare-fun m!15010 () Bool)

(assert (=> b!41617 m!15010))

(declare-fun m!15012 () Bool)

(assert (=> setNonEmpty!701 m!15012))

(declare-fun tp!28693 () Bool)

(declare-fun tp!28694 () Bool)

(declare-fun e!21929 () Bool)

(declare-fun b!41624 () Bool)

(assert (=> b!41624 (= e!21929 (and (inv!884 (left!519 (c!15848 input!525))) tp!28693 (inv!884 (right!849 (c!15848 input!525))) tp!28694))))

(declare-fun b!41625 () Bool)

(declare-fun inv!892 (IArray!219) Bool)

(assert (=> b!41625 (= e!21929 (inv!892 (xs!2688 (c!15848 input!525))))))

(assert (=> b!41524 (= tp!28643 (and (inv!884 (c!15848 input!525)) e!21929))))

(assert (= (and b!41524 ((_ is Node!109) (c!15848 input!525))) b!41624))

(assert (= (and b!41524 ((_ is Leaf!296) (c!15848 input!525))) b!41625))

(declare-fun m!15014 () Bool)

(assert (=> b!41624 m!15014))

(declare-fun m!15016 () Bool)

(assert (=> b!41624 m!15016))

(declare-fun m!15018 () Bool)

(assert (=> b!41625 m!15018))

(assert (=> b!41524 m!14900))

(declare-fun b!41630 () Bool)

(declare-fun e!21936 () Bool)

(declare-fun setRes!704 () Bool)

(declare-fun tp!28700 () Bool)

(assert (=> b!41630 (= e!21936 (and setRes!704 tp!28700))))

(declare-fun condSetEmpty!704 () Bool)

(assert (=> b!41630 (= condSetEmpty!704 (= (_1!475 (_1!476 (h!5997 (zeroValue!450 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!704 () Bool)

(assert (=> setIsEmpty!704 setRes!704))

(declare-fun setNonEmpty!704 () Bool)

(declare-fun tp!28699 () Bool)

(declare-fun setElem!704 () Context!150)

(assert (=> setNonEmpty!704 (= setRes!704 (and tp!28699 (inv!891 setElem!704)))))

(declare-fun setRest!704 () (InoxSet Context!150))

(assert (=> setNonEmpty!704 (= (_1!475 (_1!476 (h!5997 (zeroValue!450 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!704 true) setRest!704))))

(assert (=> b!41541 (= tp!28646 e!21936)))

(assert (= (and b!41630 condSetEmpty!704) setIsEmpty!704))

(assert (= (and b!41630 (not condSetEmpty!704)) setNonEmpty!704))

(assert (= (and b!41541 ((_ is Cons!601) (zeroValue!450 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45)))))))) b!41630))

(declare-fun m!15020 () Bool)

(assert (=> setNonEmpty!704 m!15020))

(declare-fun b!41631 () Bool)

(declare-fun e!21938 () Bool)

(declare-fun setRes!705 () Bool)

(declare-fun tp!28702 () Bool)

(assert (=> b!41631 (= e!21938 (and setRes!705 tp!28702))))

(declare-fun condSetEmpty!705 () Bool)

(assert (=> b!41631 (= condSetEmpty!705 (= (_1!475 (_1!476 (h!5997 (minValue!450 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!705 () Bool)

(assert (=> setIsEmpty!705 setRes!705))

(declare-fun setNonEmpty!705 () Bool)

(declare-fun tp!28701 () Bool)

(declare-fun setElem!705 () Context!150)

(assert (=> setNonEmpty!705 (= setRes!705 (and tp!28701 (inv!891 setElem!705)))))

(declare-fun setRest!705 () (InoxSet Context!150))

(assert (=> setNonEmpty!705 (= (_1!475 (_1!476 (h!5997 (minValue!450 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!705 true) setRest!705))))

(assert (=> b!41541 (= tp!28659 e!21938)))

(assert (= (and b!41631 condSetEmpty!705) setIsEmpty!705))

(assert (= (and b!41631 (not condSetEmpty!705)) setNonEmpty!705))

(assert (= (and b!41541 ((_ is Cons!601) (minValue!450 (v!12363 (underlying!583 (v!12364 (underlying!584 (cache!675 cacheFurthestNullable!45)))))))) b!41631))

(declare-fun m!15022 () Bool)

(assert (=> setNonEmpty!705 m!15022))

(declare-fun b!41632 () Bool)

(declare-fun tp!28703 () Bool)

(declare-fun e!21939 () Bool)

(declare-fun tp!28704 () Bool)

(assert (=> b!41632 (= e!21939 (and (inv!884 (left!519 (c!15848 (totalInput!1516 cacheFurthestNullable!45)))) tp!28703 (inv!884 (right!849 (c!15848 (totalInput!1516 cacheFurthestNullable!45)))) tp!28704))))

(declare-fun b!41633 () Bool)

(assert (=> b!41633 (= e!21939 (inv!892 (xs!2688 (c!15848 (totalInput!1516 cacheFurthestNullable!45)))))))

(assert (=> b!41525 (= tp!28649 (and (inv!884 (c!15848 (totalInput!1516 cacheFurthestNullable!45))) e!21939))))

(assert (= (and b!41525 ((_ is Node!109) (c!15848 (totalInput!1516 cacheFurthestNullable!45)))) b!41632))

(assert (= (and b!41525 ((_ is Leaf!296) (c!15848 (totalInput!1516 cacheFurthestNullable!45)))) b!41633))

(declare-fun m!15024 () Bool)

(assert (=> b!41632 m!15024))

(declare-fun m!15026 () Bool)

(assert (=> b!41632 m!15026))

(declare-fun m!15028 () Bool)

(assert (=> b!41633 m!15028))

(assert (=> b!41525 m!14896))

(declare-fun mapNonEmpty!705 () Bool)

(declare-fun mapRes!705 () Bool)

(declare-fun tp!28715 () Bool)

(declare-fun e!21949 () Bool)

(assert (=> mapNonEmpty!705 (= mapRes!705 (and tp!28715 e!21949))))

(declare-fun mapValue!705 () List!603)

(declare-fun mapKey!705 () (_ BitVec 32))

(declare-fun mapRest!705 () (Array (_ BitVec 32) List!603))

(assert (=> mapNonEmpty!705 (= mapRest!699 (store mapRest!705 mapKey!705 mapValue!705))))

(declare-fun condMapEmpty!705 () Bool)

(declare-fun mapDefault!705 () List!603)

(assert (=> mapNonEmpty!697 (= condMapEmpty!705 (= mapRest!699 ((as const (Array (_ BitVec 32) List!603)) mapDefault!705)))))

(declare-fun e!21951 () Bool)

(assert (=> mapNonEmpty!697 (= tp!28663 (and e!21951 mapRes!705))))

(declare-fun setIsEmpty!710 () Bool)

(declare-fun setRes!710 () Bool)

(assert (=> setIsEmpty!710 setRes!710))

(declare-fun setIsEmpty!711 () Bool)

(declare-fun setRes!711 () Bool)

(assert (=> setIsEmpty!711 setRes!711))

(declare-fun setNonEmpty!710 () Bool)

(declare-fun tp!28717 () Bool)

(declare-fun setElem!711 () Context!150)

(assert (=> setNonEmpty!710 (= setRes!710 (and tp!28717 (inv!891 setElem!711)))))

(declare-fun setRest!710 () (InoxSet Context!150))

(assert (=> setNonEmpty!710 (= (_1!475 (_1!476 (h!5997 mapDefault!705))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!711 true) setRest!710))))

(declare-fun mapIsEmpty!705 () Bool)

(assert (=> mapIsEmpty!705 mapRes!705))

(declare-fun b!41640 () Bool)

(declare-fun tp!28719 () Bool)

(assert (=> b!41640 (= e!21949 (and setRes!711 tp!28719))))

(declare-fun condSetEmpty!711 () Bool)

(assert (=> b!41640 (= condSetEmpty!711 (= (_1!475 (_1!476 (h!5997 mapValue!705))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun b!41641 () Bool)

(declare-fun tp!28718 () Bool)

(assert (=> b!41641 (= e!21951 (and setRes!710 tp!28718))))

(declare-fun condSetEmpty!710 () Bool)

(assert (=> b!41641 (= condSetEmpty!710 (= (_1!475 (_1!476 (h!5997 mapDefault!705))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setNonEmpty!711 () Bool)

(declare-fun tp!28716 () Bool)

(declare-fun setElem!710 () Context!150)

(assert (=> setNonEmpty!711 (= setRes!711 (and tp!28716 (inv!891 setElem!710)))))

(declare-fun setRest!711 () (InoxSet Context!150))

(assert (=> setNonEmpty!711 (= (_1!475 (_1!476 (h!5997 mapValue!705))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!710 true) setRest!711))))

(assert (= (and mapNonEmpty!697 condMapEmpty!705) mapIsEmpty!705))

(assert (= (and mapNonEmpty!697 (not condMapEmpty!705)) mapNonEmpty!705))

(assert (= (and b!41640 condSetEmpty!711) setIsEmpty!711))

(assert (= (and b!41640 (not condSetEmpty!711)) setNonEmpty!711))

(assert (= (and mapNonEmpty!705 ((_ is Cons!601) mapValue!705)) b!41640))

(assert (= (and b!41641 condSetEmpty!710) setIsEmpty!710))

(assert (= (and b!41641 (not condSetEmpty!710)) setNonEmpty!710))

(assert (= (and mapNonEmpty!697 ((_ is Cons!601) mapDefault!705)) b!41641))

(declare-fun m!15030 () Bool)

(assert (=> mapNonEmpty!705 m!15030))

(declare-fun m!15032 () Bool)

(assert (=> setNonEmpty!710 m!15032))

(declare-fun m!15034 () Bool)

(assert (=> setNonEmpty!711 m!15034))

(declare-fun b!41642 () Bool)

(declare-fun e!21954 () Bool)

(declare-fun setRes!712 () Bool)

(declare-fun tp!28721 () Bool)

(assert (=> b!41642 (= e!21954 (and setRes!712 tp!28721))))

(declare-fun condSetEmpty!712 () Bool)

(assert (=> b!41642 (= condSetEmpty!712 (= (_1!475 (_1!476 (h!5997 mapValue!697))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!712 () Bool)

(assert (=> setIsEmpty!712 setRes!712))

(declare-fun setNonEmpty!712 () Bool)

(declare-fun tp!28720 () Bool)

(declare-fun setElem!712 () Context!150)

(assert (=> setNonEmpty!712 (= setRes!712 (and tp!28720 (inv!891 setElem!712)))))

(declare-fun setRest!712 () (InoxSet Context!150))

(assert (=> setNonEmpty!712 (= (_1!475 (_1!476 (h!5997 mapValue!697))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!712 true) setRest!712))))

(assert (=> mapNonEmpty!697 (= tp!28660 e!21954)))

(assert (= (and b!41642 condSetEmpty!712) setIsEmpty!712))

(assert (= (and b!41642 (not condSetEmpty!712)) setNonEmpty!712))

(assert (= (and mapNonEmpty!697 ((_ is Cons!601) mapValue!697)) b!41642))

(declare-fun m!15036 () Bool)

(assert (=> setNonEmpty!712 m!15036))

(declare-fun e!21963 () Bool)

(declare-fun tp!28727 () Bool)

(declare-fun setRes!715 () Bool)

(declare-fun b!41647 () Bool)

(assert (=> b!41647 (= e!21963 (and (inv!891 (_1!479 (_1!480 (h!6000 mapDefault!698)))) setRes!715 tp!28727))))

(declare-fun condSetEmpty!715 () Bool)

(assert (=> b!41647 (= condSetEmpty!715 (= (_2!480 (h!6000 mapDefault!698)) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!715 () Bool)

(assert (=> setIsEmpty!715 setRes!715))

(declare-fun setNonEmpty!715 () Bool)

(declare-fun tp!28726 () Bool)

(declare-fun setElem!715 () Context!150)

(assert (=> setNonEmpty!715 (= setRes!715 (and tp!28726 (inv!891 setElem!715)))))

(declare-fun setRest!715 () (InoxSet Context!150))

(assert (=> setNonEmpty!715 (= (_2!480 (h!6000 mapDefault!698)) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!715 true) setRest!715))))

(assert (=> b!41543 (= tp!28654 e!21963)))

(assert (= (and b!41647 condSetEmpty!715) setIsEmpty!715))

(assert (= (and b!41647 (not condSetEmpty!715)) setNonEmpty!715))

(assert (= (and b!41543 ((_ is Cons!604) mapDefault!698)) b!41647))

(declare-fun m!15038 () Bool)

(assert (=> b!41647 m!15038))

(declare-fun m!15040 () Bool)

(assert (=> setNonEmpty!715 m!15040))

(declare-fun b!41648 () Bool)

(declare-fun setRes!716 () Bool)

(declare-fun e!21966 () Bool)

(declare-fun tp!28729 () Bool)

(assert (=> b!41648 (= e!21966 (and (inv!891 (_1!479 (_1!480 (h!6000 (zeroValue!452 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320)))))))))) setRes!716 tp!28729))))

(declare-fun condSetEmpty!716 () Bool)

(assert (=> b!41648 (= condSetEmpty!716 (= (_2!480 (h!6000 (zeroValue!452 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320)))))))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!716 () Bool)

(assert (=> setIsEmpty!716 setRes!716))

(declare-fun setNonEmpty!716 () Bool)

(declare-fun tp!28728 () Bool)

(declare-fun setElem!716 () Context!150)

(assert (=> setNonEmpty!716 (= setRes!716 (and tp!28728 (inv!891 setElem!716)))))

(declare-fun setRest!716 () (InoxSet Context!150))

(assert (=> setNonEmpty!716 (= (_2!480 (h!6000 (zeroValue!452 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!716 true) setRest!716))))

(assert (=> b!41535 (= tp!28662 e!21966)))

(assert (= (and b!41648 condSetEmpty!716) setIsEmpty!716))

(assert (= (and b!41648 (not condSetEmpty!716)) setNonEmpty!716))

(assert (= (and b!41535 ((_ is Cons!604) (zeroValue!452 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320)))))))) b!41648))

(declare-fun m!15042 () Bool)

(assert (=> b!41648 m!15042))

(declare-fun m!15044 () Bool)

(assert (=> setNonEmpty!716 m!15044))

(declare-fun b!41649 () Bool)

(declare-fun setRes!717 () Bool)

(declare-fun e!21969 () Bool)

(declare-fun tp!28731 () Bool)

(assert (=> b!41649 (= e!21969 (and (inv!891 (_1!479 (_1!480 (h!6000 (minValue!452 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320)))))))))) setRes!717 tp!28731))))

(declare-fun condSetEmpty!717 () Bool)

(assert (=> b!41649 (= condSetEmpty!717 (= (_2!480 (h!6000 (minValue!452 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320)))))))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!717 () Bool)

(assert (=> setIsEmpty!717 setRes!717))

(declare-fun setNonEmpty!717 () Bool)

(declare-fun tp!28730 () Bool)

(declare-fun setElem!717 () Context!150)

(assert (=> setNonEmpty!717 (= setRes!717 (and tp!28730 (inv!891 setElem!717)))))

(declare-fun setRest!717 () (InoxSet Context!150))

(assert (=> setNonEmpty!717 (= (_2!480 (h!6000 (minValue!452 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!717 true) setRest!717))))

(assert (=> b!41535 (= tp!28651 e!21969)))

(assert (= (and b!41649 condSetEmpty!717) setIsEmpty!717))

(assert (= (and b!41649 (not condSetEmpty!717)) setNonEmpty!717))

(assert (= (and b!41535 ((_ is Cons!604) (minValue!452 (v!12367 (underlying!587 (v!12368 (underlying!588 (cache!677 cacheUp!320)))))))) b!41649))

(declare-fun m!15046 () Bool)

(assert (=> b!41649 m!15046))

(declare-fun m!15048 () Bool)

(assert (=> setNonEmpty!717 m!15048))

(declare-fun b!41650 () Bool)

(declare-fun e!21971 () Bool)

(declare-fun setRes!718 () Bool)

(declare-fun tp!28733 () Bool)

(assert (=> b!41650 (= e!21971 (and setRes!718 tp!28733))))

(declare-fun condSetEmpty!718 () Bool)

(assert (=> b!41650 (= condSetEmpty!718 (= (_1!475 (_1!476 (h!5997 mapDefault!699))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!718 () Bool)

(assert (=> setIsEmpty!718 setRes!718))

(declare-fun setNonEmpty!718 () Bool)

(declare-fun tp!28732 () Bool)

(declare-fun setElem!718 () Context!150)

(assert (=> setNonEmpty!718 (= setRes!718 (and tp!28732 (inv!891 setElem!718)))))

(declare-fun setRest!718 () (InoxSet Context!150))

(assert (=> setNonEmpty!718 (= (_1!475 (_1!476 (h!5997 mapDefault!699))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!718 true) setRest!718))))

(assert (=> b!41527 (= tp!28644 e!21971)))

(assert (= (and b!41650 condSetEmpty!718) setIsEmpty!718))

(assert (= (and b!41650 (not condSetEmpty!718)) setNonEmpty!718))

(assert (= (and b!41527 ((_ is Cons!601) mapDefault!699)) b!41650))

(declare-fun m!15050 () Bool)

(assert (=> setNonEmpty!718 m!15050))

(declare-fun mapIsEmpty!708 () Bool)

(declare-fun mapRes!708 () Bool)

(assert (=> mapIsEmpty!708 mapRes!708))

(declare-fun mapNonEmpty!708 () Bool)

(declare-fun tp!28748 () Bool)

(declare-fun e!21985 () Bool)

(assert (=> mapNonEmpty!708 (= mapRes!708 (and tp!28748 e!21985))))

(declare-fun mapKey!708 () (_ BitVec 32))

(declare-fun mapValue!708 () List!606)

(declare-fun mapRest!708 () (Array (_ BitVec 32) List!606))

(assert (=> mapNonEmpty!708 (= mapRest!698 (store mapRest!708 mapKey!708 mapValue!708))))

(declare-fun setNonEmpty!723 () Bool)

(declare-fun setRes!723 () Bool)

(declare-fun tp!28745 () Bool)

(declare-fun setElem!723 () Context!150)

(assert (=> setNonEmpty!723 (= setRes!723 (and tp!28745 (inv!891 setElem!723)))))

(declare-fun mapDefault!708 () List!606)

(declare-fun setRest!724 () (InoxSet Context!150))

(assert (=> setNonEmpty!723 (= (_2!480 (h!6000 mapDefault!708)) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!723 true) setRest!724))))

(declare-fun setIsEmpty!723 () Bool)

(declare-fun setRes!724 () Bool)

(assert (=> setIsEmpty!723 setRes!724))

(declare-fun setNonEmpty!724 () Bool)

(declare-fun tp!28744 () Bool)

(declare-fun setElem!724 () Context!150)

(assert (=> setNonEmpty!724 (= setRes!724 (and tp!28744 (inv!891 setElem!724)))))

(declare-fun setRest!723 () (InoxSet Context!150))

(assert (=> setNonEmpty!724 (= (_2!480 (h!6000 mapValue!708)) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!724 true) setRest!723))))

(declare-fun b!41657 () Bool)

(declare-fun e!21987 () Bool)

(declare-fun tp!28746 () Bool)

(assert (=> b!41657 (= e!21987 (and (inv!891 (_1!479 (_1!480 (h!6000 mapDefault!708)))) setRes!723 tp!28746))))

(declare-fun condSetEmpty!723 () Bool)

(assert (=> b!41657 (= condSetEmpty!723 (= (_2!480 (h!6000 mapDefault!708)) ((as const (Array Context!150 Bool)) false)))))

(declare-fun tp!28747 () Bool)

(declare-fun b!41658 () Bool)

(assert (=> b!41658 (= e!21985 (and (inv!891 (_1!479 (_1!480 (h!6000 mapValue!708)))) setRes!724 tp!28747))))

(declare-fun condSetEmpty!724 () Bool)

(assert (=> b!41658 (= condSetEmpty!724 (= (_2!480 (h!6000 mapValue!708)) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!724 () Bool)

(assert (=> setIsEmpty!724 setRes!723))

(declare-fun condMapEmpty!708 () Bool)

(assert (=> mapNonEmpty!698 (= condMapEmpty!708 (= mapRest!698 ((as const (Array (_ BitVec 32) List!606)) mapDefault!708)))))

(assert (=> mapNonEmpty!698 (= tp!28645 (and e!21987 mapRes!708))))

(assert (= (and mapNonEmpty!698 condMapEmpty!708) mapIsEmpty!708))

(assert (= (and mapNonEmpty!698 (not condMapEmpty!708)) mapNonEmpty!708))

(assert (= (and b!41658 condSetEmpty!724) setIsEmpty!723))

(assert (= (and b!41658 (not condSetEmpty!724)) setNonEmpty!724))

(assert (= (and mapNonEmpty!708 ((_ is Cons!604) mapValue!708)) b!41658))

(assert (= (and b!41657 condSetEmpty!723) setIsEmpty!724))

(assert (= (and b!41657 (not condSetEmpty!723)) setNonEmpty!723))

(assert (= (and mapNonEmpty!698 ((_ is Cons!604) mapDefault!708)) b!41657))

(declare-fun m!15052 () Bool)

(assert (=> mapNonEmpty!708 m!15052))

(declare-fun m!15054 () Bool)

(assert (=> setNonEmpty!723 m!15054))

(declare-fun m!15056 () Bool)

(assert (=> setNonEmpty!724 m!15056))

(declare-fun m!15058 () Bool)

(assert (=> b!41657 m!15058))

(declare-fun m!15060 () Bool)

(assert (=> b!41658 m!15060))

(declare-fun e!21992 () Bool)

(declare-fun setRes!725 () Bool)

(declare-fun b!41659 () Bool)

(declare-fun tp!28750 () Bool)

(assert (=> b!41659 (= e!21992 (and (inv!891 (_1!479 (_1!480 (h!6000 mapValue!699)))) setRes!725 tp!28750))))

(declare-fun condSetEmpty!725 () Bool)

(assert (=> b!41659 (= condSetEmpty!725 (= (_2!480 (h!6000 mapValue!699)) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!725 () Bool)

(assert (=> setIsEmpty!725 setRes!725))

(declare-fun setNonEmpty!725 () Bool)

(declare-fun tp!28749 () Bool)

(declare-fun setElem!725 () Context!150)

(assert (=> setNonEmpty!725 (= setRes!725 (and tp!28749 (inv!891 setElem!725)))))

(declare-fun setRest!725 () (InoxSet Context!150))

(assert (=> setNonEmpty!725 (= (_2!480 (h!6000 mapValue!699)) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!725 true) setRest!725))))

(assert (=> mapNonEmpty!698 (= tp!28650 e!21992)))

(assert (= (and b!41659 condSetEmpty!725) setIsEmpty!725))

(assert (= (and b!41659 (not condSetEmpty!725)) setNonEmpty!725))

(assert (= (and mapNonEmpty!698 ((_ is Cons!604) mapValue!699)) b!41659))

(declare-fun m!15062 () Bool)

(assert (=> b!41659 m!15062))

(declare-fun m!15064 () Bool)

(assert (=> setNonEmpty!725 m!15064))

(declare-fun setRes!726 () Bool)

(declare-fun b!41660 () Bool)

(declare-fun e!21993 () Bool)

(declare-fun tp!28751 () Bool)

(assert (=> b!41660 (= e!21993 (and (inv!891 (_2!477 (_1!478 (h!5999 (zeroValue!451 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333)))))))))) setRes!726 tp!28751))))

(declare-fun condSetEmpty!726 () Bool)

(assert (=> b!41660 (= condSetEmpty!726 (= (_2!478 (h!5999 (zeroValue!451 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333)))))))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!726 () Bool)

(assert (=> setIsEmpty!726 setRes!726))

(declare-fun setNonEmpty!726 () Bool)

(declare-fun tp!28752 () Bool)

(declare-fun setElem!726 () Context!150)

(assert (=> setNonEmpty!726 (= setRes!726 (and tp!28752 (inv!891 setElem!726)))))

(declare-fun setRest!726 () (InoxSet Context!150))

(assert (=> setNonEmpty!726 (= (_2!478 (h!5999 (zeroValue!451 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!726 true) setRest!726))))

(assert (=> b!41537 (= tp!28657 e!21993)))

(assert (= (and b!41660 condSetEmpty!726) setIsEmpty!726))

(assert (= (and b!41660 (not condSetEmpty!726)) setNonEmpty!726))

(assert (= (and b!41537 ((_ is Cons!603) (zeroValue!451 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333)))))))) b!41660))

(declare-fun m!15066 () Bool)

(assert (=> b!41660 m!15066))

(declare-fun m!15068 () Bool)

(assert (=> setNonEmpty!726 m!15068))

(declare-fun e!21996 () Bool)

(declare-fun setRes!727 () Bool)

(declare-fun tp!28753 () Bool)

(declare-fun b!41661 () Bool)

(assert (=> b!41661 (= e!21996 (and (inv!891 (_2!477 (_1!478 (h!5999 (minValue!451 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333)))))))))) setRes!727 tp!28753))))

(declare-fun condSetEmpty!727 () Bool)

(assert (=> b!41661 (= condSetEmpty!727 (= (_2!478 (h!5999 (minValue!451 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333)))))))) ((as const (Array Context!150 Bool)) false)))))

(declare-fun setIsEmpty!727 () Bool)

(assert (=> setIsEmpty!727 setRes!727))

(declare-fun setNonEmpty!727 () Bool)

(declare-fun tp!28754 () Bool)

(declare-fun setElem!727 () Context!150)

(assert (=> setNonEmpty!727 (= setRes!727 (and tp!28754 (inv!891 setElem!727)))))

(declare-fun setRest!727 () (InoxSet Context!150))

(assert (=> setNonEmpty!727 (= (_2!478 (h!5999 (minValue!451 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!150 Bool)) false) setElem!727 true) setRest!727))))

(assert (=> b!41537 (= tp!28658 e!21996)))

(assert (= (and b!41661 condSetEmpty!727) setIsEmpty!727))

(assert (= (and b!41661 (not condSetEmpty!727)) setNonEmpty!727))

(assert (= (and b!41537 ((_ is Cons!603) (minValue!451 (v!12365 (underlying!585 (v!12366 (underlying!586 (cache!676 cacheDown!333)))))))) b!41661))

(declare-fun m!15070 () Bool)

(assert (=> b!41661 m!15070))

(declare-fun m!15072 () Bool)

(assert (=> setNonEmpty!727 m!15072))

(check-sat (not b!41611) (not b_next!943) (not b!41616) (not b!41625) (not b!41631) (not d!4281) (not d!4259) (not d!4277) (not b!41578) (not setNonEmpty!711) (not b!41603) (not b!41632) (not b!41525) (not b!41579) (not setNonEmpty!718) (not d!4293) (not d!4253) (not b!41649) (not d!4295) (not d!4285) (not setNonEmpty!716) (not d!4279) (not setNonEmpty!710) (not setNonEmpty!696) (not b!41641) (not b!41660) (not setNonEmpty!701) (not b!41524) (not b!41610) (not b!41595) (not b!41600) (not d!4255) (not b_next!937) (not b!41581) (not b!41640) (not d!4275) (not b!41647) b_and!967 (not b!41630) (not setNonEmpty!697) (not setNonEmpty!723) (not d!4283) (not b!41558) (not setNonEmpty!717) b_and!973 (not b!41555) (not b!41659) (not b_next!939) (not d!4273) (not b!41617) (not mapNonEmpty!702) (not b!41661) b_and!977 (not b!41567) (not b!41624) (not b!41642) (not mapNonEmpty!705) (not b_next!933) (not setNonEmpty!715) (not setNonEmpty!727) (not b_next!935) b_and!975 (not mapNonEmpty!708) (not b_next!941) (not b!41597) (not b!41593) (not setNonEmpty!705) (not b!41552) b_and!969 (not b!41657) (not setNonEmpty!712) (not setNonEmpty!726) (not b!41650) (not setNonEmpty!700) (not setNonEmpty!724) (not b!41648) (not b!41580) (not b!41594) (not b!41565) (not b!41658) (not b!41633) b_and!971 (not setNonEmpty!725) (not d!4251) (not b!41598) (not setNonEmpty!704))
(check-sat (not b_next!937) b_and!967 b_and!973 (not b_next!939) b_and!977 (not b_next!933) (not b_next!941) b_and!969 (not b_next!943) b_and!971 (not b_next!935) b_and!975)
