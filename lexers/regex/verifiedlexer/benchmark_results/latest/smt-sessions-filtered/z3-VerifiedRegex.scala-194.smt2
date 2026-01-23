; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2874 () Bool)

(assert start!2874)

(declare-fun b!44786 () Bool)

(declare-fun b_free!1125 () Bool)

(declare-fun b_next!1125 () Bool)

(assert (=> b!44786 (= b_free!1125 (not b_next!1125))))

(declare-fun tp!30621 () Bool)

(declare-fun b_and!1159 () Bool)

(assert (=> b!44786 (= tp!30621 b_and!1159)))

(declare-fun b!44780 () Bool)

(declare-fun b_free!1127 () Bool)

(declare-fun b_next!1127 () Bool)

(assert (=> b!44780 (= b_free!1127 (not b_next!1127))))

(declare-fun tp!30639 () Bool)

(declare-fun b_and!1161 () Bool)

(assert (=> b!44780 (= tp!30639 b_and!1161)))

(declare-fun b!44760 () Bool)

(declare-fun b_free!1129 () Bool)

(declare-fun b_next!1129 () Bool)

(assert (=> b!44760 (= b_free!1129 (not b_next!1129))))

(declare-fun tp!30620 () Bool)

(declare-fun b_and!1163 () Bool)

(assert (=> b!44760 (= tp!30620 b_and!1163)))

(declare-fun b!44767 () Bool)

(declare-fun b_free!1131 () Bool)

(declare-fun b_next!1131 () Bool)

(assert (=> b!44767 (= b_free!1131 (not b_next!1131))))

(declare-fun tp!30636 () Bool)

(declare-fun b_and!1165 () Bool)

(assert (=> b!44767 (= tp!30636 b_and!1165)))

(declare-fun b!44761 () Bool)

(declare-fun b_free!1133 () Bool)

(declare-fun b_next!1133 () Bool)

(assert (=> b!44761 (= b_free!1133 (not b_next!1133))))

(declare-fun tp!30623 () Bool)

(declare-fun b_and!1167 () Bool)

(assert (=> b!44761 (= tp!30623 b_and!1167)))

(declare-fun b!44762 () Bool)

(declare-fun b_free!1135 () Bool)

(declare-fun b_next!1135 () Bool)

(assert (=> b!44762 (= b_free!1135 (not b_next!1135))))

(declare-fun tp!30635 () Bool)

(declare-fun b_and!1169 () Bool)

(assert (=> b!44762 (= tp!30635 b_and!1169)))

(declare-fun b!44803 () Bool)

(declare-fun e!24994 () Bool)

(assert (=> b!44803 (= e!24994 true)))

(declare-fun b!44802 () Bool)

(declare-fun e!24993 () Bool)

(assert (=> b!44802 (= e!24993 e!24994)))

(declare-fun b!44801 () Bool)

(declare-fun e!24992 () Bool)

(assert (=> b!44801 (= e!24992 e!24993)))

(declare-fun b!44784 () Bool)

(assert (=> b!44784 e!24992))

(assert (= b!44802 b!44803))

(assert (= b!44801 b!44802))

(declare-datatypes ((List!714 0))(
  ( (Nil!712) (Cons!712 (h!6108 (_ BitVec 16)) (t!16561 List!714)) )
))
(declare-datatypes ((TokenValue!157 0))(
  ( (FloatLiteralValue!314 (text!1544 List!714)) (TokenValueExt!156 (__x!1213 Int)) (Broken!785 (value!7543 List!714)) (Object!158) (End!157) (Def!157) (Underscore!157) (Match!157) (Else!157) (Error!157) (Case!157) (If!157) (Extends!157) (Abstract!157) (Class!157) (Val!157) (DelimiterValue!314 (del!217 List!714)) (KeywordValue!163 (value!7544 List!714)) (CommentValue!314 (value!7545 List!714)) (WhitespaceValue!314 (value!7546 List!714)) (IndentationValue!157 (value!7547 List!714)) (String!1080) (Int32!157) (Broken!786 (value!7548 List!714)) (Boolean!158) (Unit!329) (OperatorValue!160 (op!217 List!714)) (IdentifierValue!314 (value!7549 List!714)) (IdentifierValue!315 (value!7550 List!714)) (WhitespaceValue!315 (value!7551 List!714)) (True!314) (False!314) (Broken!787 (value!7552 List!714)) (Broken!788 (value!7553 List!714)) (True!315) (RightBrace!157) (RightBracket!157) (Colon!157) (Null!157) (Comma!157) (LeftBracket!157) (False!315) (LeftBrace!157) (ImaginaryLiteralValue!157 (text!1545 List!714)) (StringLiteralValue!471 (value!7554 List!714)) (EOFValue!157 (value!7555 List!714)) (IdentValue!157 (value!7556 List!714)) (DelimiterValue!315 (value!7557 List!714)) (DedentValue!157 (value!7558 List!714)) (NewLineValue!157 (value!7559 List!714)) (IntegerValue!471 (value!7560 (_ BitVec 32)) (text!1546 List!714)) (IntegerValue!472 (value!7561 Int) (text!1547 List!714)) (Times!157) (Or!157) (Equal!157) (Minus!157) (Broken!789 (value!7562 List!714)) (And!157) (Div!157) (LessEqual!157) (Mod!157) (Concat!390) (Not!157) (Plus!157) (SpaceValue!157 (value!7563 List!714)) (IntegerValue!473 (value!7564 Int) (text!1548 List!714)) (StringLiteralValue!472 (text!1549 List!714)) (FloatLiteralValue!315 (text!1550 List!714)) (BytesLiteralValue!157 (value!7565 List!714)) (CommentValue!315 (value!7566 List!714)) (StringLiteralValue!473 (value!7567 List!714)) (ErrorTokenValue!157 (msg!218 List!714)) )
))
(declare-datatypes ((Regex!233 0))(
  ( (ElementMatch!233 (c!16084 (_ BitVec 16))) (Concat!391 (regOne!978 Regex!233) (regTwo!978 Regex!233)) (EmptyExpr!233) (Star!233 (reg!562 Regex!233)) (EmptyLang!233) (Union!233 (regOne!979 Regex!233) (regTwo!979 Regex!233)) )
))
(declare-datatypes ((String!1081 0))(
  ( (String!1082 (value!7568 String)) )
))
(declare-datatypes ((IArray!273 0))(
  ( (IArray!274 (innerList!194 List!714)) )
))
(declare-datatypes ((Conc!136 0))(
  ( (Node!136 (left!568 Conc!136) (right!898 Conc!136) (csize!502 Int) (cheight!347 Int)) (Leaf!331 (xs!2715 IArray!273) (csize!503 Int)) (Empty!136) )
))
(declare-datatypes ((BalanceConc!272 0))(
  ( (BalanceConc!273 (c!16085 Conc!136)) )
))
(declare-datatypes ((TokenValueInjection!138 0))(
  ( (TokenValueInjection!139 (toValue!646 Int) (toChars!505 Int)) )
))
(declare-datatypes ((Rule!134 0))(
  ( (Rule!135 (regex!167 Regex!233) (tag!345 String!1081) (isSeparator!167 Bool) (transformation!167 TokenValueInjection!138)) )
))
(declare-datatypes ((List!715 0))(
  ( (Nil!713) (Cons!713 (h!6109 Rule!134) (t!16562 List!715)) )
))
(declare-fun lt!5712 () List!715)

(get-info :version)

(assert (= (and b!44784 ((_ is Cons!713) lt!5712)) b!44801))

(declare-fun order!151 () Int)

(declare-fun order!153 () Int)

(declare-fun lambda!818 () Int)

(declare-fun dynLambda!96 (Int Int) Int)

(declare-fun dynLambda!97 (Int Int) Int)

(assert (=> b!44803 (< (dynLambda!96 order!151 (toValue!646 (transformation!167 (h!6109 lt!5712)))) (dynLambda!97 order!153 lambda!818))))

(declare-fun order!155 () Int)

(declare-fun dynLambda!98 (Int Int) Int)

(assert (=> b!44803 (< (dynLambda!98 order!155 (toChars!505 (transformation!167 (h!6109 lt!5712)))) (dynLambda!97 order!153 lambda!818))))

(declare-fun b!44756 () Bool)

(declare-fun res!30791 () Bool)

(declare-fun e!24964 () Bool)

(assert (=> b!44756 (=> (not res!30791) (not e!24964))))

(declare-datatypes ((List!716 0))(
  ( (Nil!714) (Cons!714 (h!6110 Regex!233) (t!16563 List!716)) )
))
(declare-datatypes ((Context!182 0))(
  ( (Context!183 (exprs!591 List!716)) )
))
(declare-datatypes ((tuple3!274 0))(
  ( (tuple3!275 (_1!604 Regex!233) (_2!604 Context!182) (_3!174 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!860 0))(
  ( (tuple2!861 (_1!605 tuple3!274) (_2!605 (InoxSet Context!182))) )
))
(declare-datatypes ((List!717 0))(
  ( (Nil!715) (Cons!715 (h!6111 tuple2!860) (t!16564 List!717)) )
))
(declare-datatypes ((array!796 0))(
  ( (array!797 (arr!385 (Array (_ BitVec 32) List!717)) (size!704 (_ BitVec 32))) )
))
(declare-datatypes ((array!798 0))(
  ( (array!799 (arr!386 (Array (_ BitVec 32) (_ BitVec 64))) (size!705 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!480 0))(
  ( (LongMapFixedSize!481 (defaultEntry!578 Int) (mask!958 (_ BitVec 32)) (extraKeys!486 (_ BitVec 32)) (zeroValue!496 List!717) (minValue!496 List!717) (_size!612 (_ BitVec 32)) (_keys!531 array!798) (_values!518 array!796) (_vacant!300 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!949 0))(
  ( (Cell!950 (v!12459 LongMapFixedSize!480)) )
))
(declare-datatypes ((MutLongMap!240 0))(
  ( (LongMap!240 (underlying!675 Cell!949)) (MutLongMapExt!239 (__x!1214 Int)) )
))
(declare-datatypes ((Cell!951 0))(
  ( (Cell!952 (v!12460 MutLongMap!240)) )
))
(declare-datatypes ((Hashable!236 0))(
  ( (HashableExt!235 (__x!1215 Int)) )
))
(declare-datatypes ((MutableMap!236 0))(
  ( (MutableMapExt!235 (__x!1216 Int)) (HashMap!236 (underlying!676 Cell!951) (hashF!2104 Hashable!236) (_size!613 (_ BitVec 32)) (defaultValue!385 Int)) )
))
(declare-datatypes ((CacheDown!160 0))(
  ( (CacheDown!161 (cache!721 MutableMap!236)) )
))
(declare-fun cacheDown!333 () CacheDown!160)

(declare-fun valid!217 (CacheDown!160) Bool)

(assert (=> b!44756 (= res!30791 (valid!217 cacheDown!333))))

(declare-fun b!44757 () Bool)

(declare-fun res!30786 () Bool)

(declare-fun e!24974 () Bool)

(assert (=> b!44757 (=> (not res!30786) (not e!24974))))

(declare-datatypes ((tuple2!862 0))(
  ( (tuple2!863 (_1!606 Context!182) (_2!606 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!237 0))(
  ( (HashableExt!236 (__x!1217 Int)) )
))
(declare-datatypes ((tuple2!864 0))(
  ( (tuple2!865 (_1!607 tuple2!862) (_2!607 (InoxSet Context!182))) )
))
(declare-datatypes ((List!718 0))(
  ( (Nil!716) (Cons!716 (h!6112 tuple2!864) (t!16565 List!718)) )
))
(declare-datatypes ((array!800 0))(
  ( (array!801 (arr!387 (Array (_ BitVec 32) List!718)) (size!706 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!482 0))(
  ( (LongMapFixedSize!483 (defaultEntry!579 Int) (mask!959 (_ BitVec 32)) (extraKeys!487 (_ BitVec 32)) (zeroValue!497 List!718) (minValue!497 List!718) (_size!614 (_ BitVec 32)) (_keys!532 array!798) (_values!519 array!800) (_vacant!301 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!953 0))(
  ( (Cell!954 (v!12461 LongMapFixedSize!482)) )
))
(declare-datatypes ((MutLongMap!241 0))(
  ( (LongMap!241 (underlying!677 Cell!953)) (MutLongMapExt!240 (__x!1218 Int)) )
))
(declare-datatypes ((Cell!955 0))(
  ( (Cell!956 (v!12462 MutLongMap!241)) )
))
(declare-datatypes ((MutableMap!237 0))(
  ( (MutableMapExt!236 (__x!1219 Int)) (HashMap!237 (underlying!678 Cell!955) (hashF!2105 Hashable!237) (_size!615 (_ BitVec 32)) (defaultValue!386 Int)) )
))
(declare-datatypes ((CacheUp!160 0))(
  ( (CacheUp!161 (cache!722 MutableMap!237)) )
))
(declare-datatypes ((Token!100 0))(
  ( (Token!101 (value!7569 TokenValue!157) (rule!643 Rule!134) (size!707 Int) (originalCharacters!221 List!714)) )
))
(declare-datatypes ((List!719 0))(
  ( (Nil!717) (Cons!717 (h!6113 Token!100) (t!16566 List!719)) )
))
(declare-datatypes ((IArray!275 0))(
  ( (IArray!276 (innerList!195 List!719)) )
))
(declare-datatypes ((Conc!137 0))(
  ( (Node!137 (left!569 Conc!137) (right!899 Conc!137) (csize!504 Int) (cheight!348 Int)) (Leaf!332 (xs!2716 IArray!275) (csize!505 Int)) (Empty!137) )
))
(declare-datatypes ((BalanceConc!274 0))(
  ( (BalanceConc!275 (c!16086 Conc!137)) )
))
(declare-datatypes ((tuple2!866 0))(
  ( (tuple2!867 (_1!608 BalanceConc!274) (_2!608 BalanceConc!272)) )
))
(declare-datatypes ((tuple3!276 0))(
  ( (tuple3!277 (_1!609 (InoxSet Context!182)) (_2!609 Int) (_3!175 Int)) )
))
(declare-datatypes ((tuple2!868 0))(
  ( (tuple2!869 (_1!610 tuple3!276) (_2!610 Int)) )
))
(declare-datatypes ((List!720 0))(
  ( (Nil!718) (Cons!718 (h!6114 tuple2!868) (t!16567 List!720)) )
))
(declare-datatypes ((array!802 0))(
  ( (array!803 (arr!388 (Array (_ BitVec 32) List!720)) (size!708 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!484 0))(
  ( (LongMapFixedSize!485 (defaultEntry!580 Int) (mask!960 (_ BitVec 32)) (extraKeys!488 (_ BitVec 32)) (zeroValue!498 List!720) (minValue!498 List!720) (_size!616 (_ BitVec 32)) (_keys!533 array!798) (_values!520 array!802) (_vacant!302 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!238 0))(
  ( (HashableExt!237 (__x!1220 Int)) )
))
(declare-datatypes ((Cell!957 0))(
  ( (Cell!958 (v!12463 LongMapFixedSize!484)) )
))
(declare-datatypes ((MutLongMap!242 0))(
  ( (LongMap!242 (underlying!679 Cell!957)) (MutLongMapExt!241 (__x!1221 Int)) )
))
(declare-datatypes ((Cell!959 0))(
  ( (Cell!960 (v!12464 MutLongMap!242)) )
))
(declare-datatypes ((MutableMap!238 0))(
  ( (MutableMapExt!237 (__x!1222 Int)) (HashMap!238 (underlying!680 Cell!959) (hashF!2106 Hashable!238) (_size!617 (_ BitVec 32)) (defaultValue!387 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!108 0))(
  ( (CacheFurthestNullable!109 (cache!723 MutableMap!238) (totalInput!1537 BalanceConc!272)) )
))
(declare-datatypes ((tuple4!74 0))(
  ( (tuple4!75 (_1!611 tuple2!866) (_2!611 CacheUp!160) (_3!176 CacheDown!160) (_4!37 CacheFurthestNullable!108)) )
))
(declare-fun lt!5719 () tuple4!74)

(declare-fun forall!81 (BalanceConc!274 Int) Bool)

(assert (=> b!44757 (= res!30786 (forall!81 (_1!608 (_1!611 lt!5719)) lambda!818))))

(declare-fun b!44758 () Bool)

(declare-fun e!24957 () Bool)

(declare-fun e!24955 () Bool)

(assert (=> b!44758 (= e!24957 e!24955)))

(declare-fun b!44759 () Bool)

(declare-fun e!24976 () Bool)

(declare-fun e!24959 () Bool)

(declare-fun lt!5720 () MutLongMap!240)

(assert (=> b!44759 (= e!24976 (and e!24959 ((_ is LongMap!240) lt!5720)))))

(assert (=> b!44759 (= lt!5720 (v!12460 (underlying!676 (cache!721 cacheDown!333))))))

(declare-fun e!24982 () Bool)

(declare-fun e!24981 () Bool)

(assert (=> b!44760 (= e!24982 (and e!24981 tp!30620))))

(declare-fun e!24977 () Bool)

(declare-fun tp!30630 () Bool)

(declare-fun tp!30619 () Bool)

(declare-fun e!24985 () Bool)

(declare-fun cacheUp!320 () CacheUp!160)

(declare-fun array_inv!257 (array!798) Bool)

(declare-fun array_inv!258 (array!800) Bool)

(assert (=> b!44761 (= e!24977 (and tp!30623 tp!30630 tp!30619 (array_inv!257 (_keys!532 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320))))))) (array_inv!258 (_values!519 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320))))))) e!24985))))

(declare-fun e!24958 () Bool)

(declare-fun e!24960 () Bool)

(assert (=> b!44762 (= e!24958 (and e!24960 tp!30635))))

(declare-fun b!44763 () Bool)

(declare-fun res!30790 () Bool)

(assert (=> b!44763 (=> (not res!30790) (not e!24974))))

(declare-fun lt!5711 () List!714)

(declare-fun lt!5721 () tuple2!866)

(declare-fun list!193 (BalanceConc!272) List!714)

(assert (=> b!44763 (= res!30790 (= lt!5711 (list!193 (_2!608 lt!5721))))))

(declare-fun mapIsEmpty!919 () Bool)

(declare-fun mapRes!920 () Bool)

(assert (=> mapIsEmpty!919 mapRes!920))

(declare-fun b!44764 () Bool)

(assert (=> b!44764 (= e!24955 e!24977)))

(declare-fun b!44765 () Bool)

(declare-fun e!24970 () Bool)

(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!108)

(declare-fun tp!30637 () Bool)

(declare-fun inv!1000 (Conc!136) Bool)

(assert (=> b!44765 (= e!24970 (and (inv!1000 (c!16085 (totalInput!1537 cacheFurthestNullable!45))) tp!30637))))

(declare-fun b!44766 () Bool)

(declare-fun res!30783 () Bool)

(assert (=> b!44766 (=> (not res!30783) (not e!24964))))

(declare-fun valid!218 (CacheFurthestNullable!108) Bool)

(assert (=> b!44766 (= res!30783 (valid!218 cacheFurthestNullable!45))))

(declare-fun e!24972 () Bool)

(assert (=> b!44767 (= e!24972 (and e!24976 tp!30636))))

(declare-fun b!44768 () Bool)

(declare-fun e!24984 () Bool)

(declare-fun input!525 () BalanceConc!272)

(declare-fun tp!30624 () Bool)

(assert (=> b!44768 (= e!24984 (and (inv!1000 (c!16085 input!525)) tp!30624))))

(declare-fun mapIsEmpty!920 () Bool)

(declare-fun mapRes!921 () Bool)

(assert (=> mapIsEmpty!920 mapRes!921))

(declare-fun b!44769 () Bool)

(declare-fun res!30784 () Bool)

(assert (=> b!44769 (=> (not res!30784) (not e!24974))))

(declare-fun lt!5724 () List!714)

(declare-datatypes ((LexerInterface!61 0))(
  ( (LexerInterfaceExt!58 (__x!1223 Int)) (Lexer!59) )
))
(declare-fun lexThenRulesProduceEachTokenIndividually!16 (LexerInterface!61 List!715 List!714) Bool)

(assert (=> b!44769 (= res!30784 (lexThenRulesProduceEachTokenIndividually!16 Lexer!59 lt!5712 lt!5724))))

(declare-fun b!44770 () Bool)

(declare-fun e!24956 () Bool)

(assert (=> b!44770 (= e!24964 e!24956)))

(declare-fun res!30788 () Bool)

(assert (=> b!44770 (=> (not res!30788) (not e!24956))))

(declare-fun lt!5722 () List!719)

(declare-fun lt!5723 () List!719)

(assert (=> b!44770 (= res!30788 (= lt!5722 lt!5723))))

(declare-fun lt!5714 () tuple2!866)

(declare-fun list!194 (BalanceConc!274) List!719)

(assert (=> b!44770 (= lt!5723 (list!194 (_1!608 lt!5714)))))

(assert (=> b!44770 (= lt!5722 (list!194 (_1!608 (_1!611 lt!5719))))))

(declare-fun lex!39 (LexerInterface!61 List!715 BalanceConc!272) tuple2!866)

(assert (=> b!44770 (= lt!5714 (lex!39 Lexer!59 lt!5712 input!525))))

(declare-datatypes ((Unit!330 0))(
  ( (Unit!331) )
))
(declare-fun lt!5725 () Unit!330)

(declare-fun lemmaInvariant!57 (CacheDown!160) Unit!330)

(assert (=> b!44770 (= lt!5725 (lemmaInvariant!57 (_3!176 lt!5719)))))

(declare-fun lt!5717 () Unit!330)

(declare-fun lemmaInvariant!58 (CacheUp!160) Unit!330)

(assert (=> b!44770 (= lt!5717 (lemmaInvariant!58 (_2!611 lt!5719)))))

(declare-fun lexMem!27 (LexerInterface!61 List!715 BalanceConc!272 CacheUp!160 CacheDown!160 CacheFurthestNullable!108) tuple4!74)

(assert (=> b!44770 (= lt!5719 (lexMem!27 Lexer!59 lt!5712 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!44771 () Bool)

(declare-fun e!24966 () Bool)

(assert (=> b!44771 (= e!24959 e!24966)))

(declare-fun e!24969 () Bool)

(declare-fun b!44772 () Bool)

(declare-fun inv!1001 (BalanceConc!272) Bool)

(assert (=> b!44772 (= e!24969 (and e!24982 (inv!1001 (totalInput!1537 cacheFurthestNullable!45)) e!24970))))

(declare-fun b!44773 () Bool)

(declare-fun e!24963 () Bool)

(declare-fun e!24975 () Bool)

(assert (=> b!44773 (= e!24963 e!24975)))

(declare-fun b!44774 () Bool)

(declare-fun tp!30625 () Bool)

(assert (=> b!44774 (= e!24985 (and tp!30625 mapRes!920))))

(declare-fun condMapEmpty!919 () Bool)

(declare-fun mapDefault!919 () List!718)

(assert (=> b!44774 (= condMapEmpty!919 (= (arr!387 (_values!519 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!718)) mapDefault!919)))))

(declare-fun b!44775 () Bool)

(declare-fun lt!5718 () MutLongMap!241)

(assert (=> b!44775 (= e!24960 (and e!24957 ((_ is LongMap!241) lt!5718)))))

(assert (=> b!44775 (= lt!5718 (v!12462 (underlying!678 (cache!722 cacheUp!320))))))

(declare-fun b!44776 () Bool)

(declare-fun res!30787 () Bool)

(assert (=> b!44776 (=> (not res!30787) (not e!24964))))

(assert (=> b!44776 (= res!30787 (= (totalInput!1537 cacheFurthestNullable!45) input!525))))

(declare-fun b!44777 () Bool)

(declare-fun e!24983 () Bool)

(assert (=> b!44777 (= e!24983 e!24972)))

(declare-fun mapIsEmpty!921 () Bool)

(declare-fun mapRes!919 () Bool)

(assert (=> mapIsEmpty!921 mapRes!919))

(declare-fun b!44778 () Bool)

(declare-fun res!30789 () Bool)

(assert (=> b!44778 (=> (not res!30789) (not e!24964))))

(declare-fun rulesInvariant!53 (LexerInterface!61 List!715) Bool)

(assert (=> b!44778 (= res!30789 (rulesInvariant!53 Lexer!59 lt!5712))))

(declare-fun b!44779 () Bool)

(declare-fun e!24965 () Bool)

(assert (=> b!44779 (= e!24966 e!24965)))

(declare-fun tp!30618 () Bool)

(declare-fun e!24978 () Bool)

(declare-fun tp!30631 () Bool)

(declare-fun array_inv!259 (array!802) Bool)

(assert (=> b!44780 (= e!24975 (and tp!30639 tp!30618 tp!30631 (array_inv!257 (_keys!533 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))) (array_inv!259 (_values!520 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))) e!24978))))

(declare-fun b!44781 () Bool)

(declare-fun e!24962 () Bool)

(assert (=> b!44781 (= e!24962 e!24974)))

(declare-fun res!30780 () Bool)

(assert (=> b!44781 (=> (not res!30780) (not e!24974))))

(assert (=> b!44781 (= res!30780 (= lt!5723 (list!194 (_1!608 lt!5721))))))

(declare-fun lt!5713 () BalanceConc!272)

(assert (=> b!44781 (= lt!5721 (lex!39 Lexer!59 lt!5712 lt!5713))))

(declare-fun mapNonEmpty!919 () Bool)

(declare-fun tp!30627 () Bool)

(declare-fun tp!30634 () Bool)

(assert (=> mapNonEmpty!919 (= mapRes!919 (and tp!30627 tp!30634))))

(declare-fun mapValue!921 () List!720)

(declare-fun mapRest!919 () (Array (_ BitVec 32) List!720))

(declare-fun mapKey!920 () (_ BitVec 32))

(assert (=> mapNonEmpty!919 (= (arr!388 (_values!520 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))) (store mapRest!919 mapKey!920 mapValue!921))))

(declare-fun res!30782 () Bool)

(assert (=> start!2874 (=> (not res!30782) (not e!24964))))

(declare-fun isEmpty!146 (List!715) Bool)

(assert (=> start!2874 (= res!30782 (not (isEmpty!146 lt!5712)))))

(declare-datatypes ((JsonLexer!80 0))(
  ( (JsonLexer!81) )
))
(declare-fun rules!109 (JsonLexer!80) List!715)

(assert (=> start!2874 (= lt!5712 (rules!109 JsonLexer!81))))

(assert (=> start!2874 e!24964))

(declare-fun inv!1002 (CacheDown!160) Bool)

(assert (=> start!2874 (and (inv!1002 cacheDown!333) e!24983)))

(assert (=> start!2874 (and (inv!1001 input!525) e!24984)))

(declare-fun inv!1003 (CacheFurthestNullable!108) Bool)

(assert (=> start!2874 (and (inv!1003 cacheFurthestNullable!45) e!24969)))

(declare-fun e!24979 () Bool)

(declare-fun inv!1004 (CacheUp!160) Bool)

(assert (=> start!2874 (and (inv!1004 cacheUp!320) e!24979)))

(declare-fun b!44782 () Bool)

(declare-fun e!24973 () Bool)

(assert (=> b!44782 (= e!24956 e!24973)))

(declare-fun res!30792 () Bool)

(assert (=> b!44782 (=> (not res!30792) (not e!24973))))

(declare-fun lt!5715 () List!714)

(assert (=> b!44782 (= res!30792 (= lt!5715 lt!5711))))

(assert (=> b!44782 (= lt!5711 (list!193 (_2!608 lt!5714)))))

(assert (=> b!44782 (= lt!5715 (list!193 (_2!608 (_1!611 lt!5719))))))

(declare-fun b!44783 () Bool)

(declare-fun e!24961 () Bool)

(declare-fun tp!30628 () Bool)

(assert (=> b!44783 (= e!24961 (and tp!30628 mapRes!921))))

(declare-fun condMapEmpty!920 () Bool)

(declare-fun mapDefault!920 () List!717)

(assert (=> b!44783 (= condMapEmpty!920 (= (arr!385 (_values!518 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!717)) mapDefault!920)))))

(declare-fun res!30793 () Bool)

(assert (=> b!44784 (=> (not res!30793) (not e!24974))))

(declare-fun forall!82 (List!719 Int) Bool)

(assert (=> b!44784 (= res!30793 (forall!82 lt!5722 lambda!818))))

(declare-fun b!44785 () Bool)

(assert (=> b!44785 (= e!24979 e!24958)))

(declare-fun tp!30617 () Bool)

(declare-fun tp!30626 () Bool)

(declare-fun array_inv!260 (array!796) Bool)

(assert (=> b!44786 (= e!24965 (and tp!30621 tp!30626 tp!30617 (array_inv!257 (_keys!531 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333))))))) (array_inv!260 (_values!518 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333))))))) e!24961))))

(declare-fun mapNonEmpty!920 () Bool)

(declare-fun tp!30622 () Bool)

(declare-fun tp!30632 () Bool)

(assert (=> mapNonEmpty!920 (= mapRes!921 (and tp!30622 tp!30632))))

(declare-fun mapKey!919 () (_ BitVec 32))

(declare-fun mapValue!919 () List!717)

(declare-fun mapRest!921 () (Array (_ BitVec 32) List!717))

(assert (=> mapNonEmpty!920 (= (arr!385 (_values!518 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333))))))) (store mapRest!921 mapKey!919 mapValue!919))))

(declare-fun mapNonEmpty!921 () Bool)

(declare-fun tp!30638 () Bool)

(declare-fun tp!30633 () Bool)

(assert (=> mapNonEmpty!921 (= mapRes!920 (and tp!30638 tp!30633))))

(declare-fun mapKey!921 () (_ BitVec 32))

(declare-fun mapValue!920 () List!718)

(declare-fun mapRest!920 () (Array (_ BitVec 32) List!718))

(assert (=> mapNonEmpty!921 (= (arr!387 (_values!519 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320))))))) (store mapRest!920 mapKey!921 mapValue!920))))

(declare-fun b!44787 () Bool)

(declare-fun tp!30629 () Bool)

(assert (=> b!44787 (= e!24978 (and tp!30629 mapRes!919))))

(declare-fun condMapEmpty!921 () Bool)

(declare-fun mapDefault!921 () List!720)

(assert (=> b!44787 (= condMapEmpty!921 (= (arr!388 (_values!520 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!720)) mapDefault!921)))))

(declare-fun b!44788 () Bool)

(assert (=> b!44788 (= e!24973 e!24962)))

(declare-fun res!30781 () Bool)

(assert (=> b!44788 (=> (not res!30781) (not e!24962))))

(assert (=> b!44788 (= res!30781 (= (list!193 lt!5713) lt!5724))))

(declare-fun seqFromList!32 (List!714) BalanceConc!272)

(assert (=> b!44788 (= lt!5713 (seqFromList!32 lt!5724))))

(assert (=> b!44788 (= lt!5724 (list!193 input!525))))

(declare-fun b!44789 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!17 (LexerInterface!61 List!715 List!719) Bool)

(assert (=> b!44789 (= e!24974 (not (rulesProduceEachTokenIndividuallyList!17 Lexer!59 lt!5712 lt!5722)))))

(declare-fun b!44790 () Bool)

(declare-fun e!24968 () Bool)

(declare-fun lt!5716 () MutLongMap!242)

(assert (=> b!44790 (= e!24981 (and e!24968 ((_ is LongMap!242) lt!5716)))))

(assert (=> b!44790 (= lt!5716 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))

(declare-fun b!44791 () Bool)

(declare-fun res!30785 () Bool)

(assert (=> b!44791 (=> (not res!30785) (not e!24964))))

(declare-fun valid!219 (CacheUp!160) Bool)

(assert (=> b!44791 (= res!30785 (valid!219 cacheUp!320))))

(declare-fun b!44792 () Bool)

(assert (=> b!44792 (= e!24968 e!24963)))

(assert (= (and start!2874 res!30782) b!44778))

(assert (= (and b!44778 res!30789) b!44791))

(assert (= (and b!44791 res!30785) b!44756))

(assert (= (and b!44756 res!30791) b!44766))

(assert (= (and b!44766 res!30783) b!44776))

(assert (= (and b!44776 res!30787) b!44770))

(assert (= (and b!44770 res!30788) b!44782))

(assert (= (and b!44782 res!30792) b!44788))

(assert (= (and b!44788 res!30781) b!44781))

(assert (= (and b!44781 res!30780) b!44763))

(assert (= (and b!44763 res!30790) b!44769))

(assert (= (and b!44769 res!30784) b!44784))

(assert (= (and b!44784 res!30793) b!44757))

(assert (= (and b!44757 res!30786) b!44789))

(assert (= (and b!44783 condMapEmpty!920) mapIsEmpty!920))

(assert (= (and b!44783 (not condMapEmpty!920)) mapNonEmpty!920))

(assert (= b!44786 b!44783))

(assert (= b!44779 b!44786))

(assert (= b!44771 b!44779))

(assert (= (and b!44759 ((_ is LongMap!240) (v!12460 (underlying!676 (cache!721 cacheDown!333))))) b!44771))

(assert (= b!44767 b!44759))

(assert (= (and b!44777 ((_ is HashMap!236) (cache!721 cacheDown!333))) b!44767))

(assert (= start!2874 b!44777))

(assert (= start!2874 b!44768))

(assert (= (and b!44787 condMapEmpty!921) mapIsEmpty!921))

(assert (= (and b!44787 (not condMapEmpty!921)) mapNonEmpty!919))

(assert (= b!44780 b!44787))

(assert (= b!44773 b!44780))

(assert (= b!44792 b!44773))

(assert (= (and b!44790 ((_ is LongMap!242) (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))) b!44792))

(assert (= b!44760 b!44790))

(assert (= (and b!44772 ((_ is HashMap!238) (cache!723 cacheFurthestNullable!45))) b!44760))

(assert (= b!44772 b!44765))

(assert (= start!2874 b!44772))

(assert (= (and b!44774 condMapEmpty!919) mapIsEmpty!919))

(assert (= (and b!44774 (not condMapEmpty!919)) mapNonEmpty!921))

(assert (= b!44761 b!44774))

(assert (= b!44764 b!44761))

(assert (= b!44758 b!44764))

(assert (= (and b!44775 ((_ is LongMap!241) (v!12462 (underlying!678 (cache!722 cacheUp!320))))) b!44758))

(assert (= b!44762 b!44775))

(assert (= (and b!44785 ((_ is HashMap!237) (cache!722 cacheUp!320))) b!44762))

(assert (= start!2874 b!44785))

(declare-fun m!19000 () Bool)

(assert (=> b!44772 m!19000))

(declare-fun m!19002 () Bool)

(assert (=> b!44780 m!19002))

(declare-fun m!19004 () Bool)

(assert (=> b!44780 m!19004))

(declare-fun m!19006 () Bool)

(assert (=> b!44766 m!19006))

(declare-fun m!19008 () Bool)

(assert (=> b!44770 m!19008))

(declare-fun m!19010 () Bool)

(assert (=> b!44770 m!19010))

(declare-fun m!19012 () Bool)

(assert (=> b!44770 m!19012))

(declare-fun m!19014 () Bool)

(assert (=> b!44770 m!19014))

(declare-fun m!19016 () Bool)

(assert (=> b!44770 m!19016))

(declare-fun m!19018 () Bool)

(assert (=> b!44770 m!19018))

(declare-fun m!19020 () Bool)

(assert (=> b!44788 m!19020))

(declare-fun m!19022 () Bool)

(assert (=> b!44788 m!19022))

(declare-fun m!19024 () Bool)

(assert (=> b!44788 m!19024))

(declare-fun m!19026 () Bool)

(assert (=> b!44757 m!19026))

(declare-fun m!19028 () Bool)

(assert (=> mapNonEmpty!919 m!19028))

(declare-fun m!19030 () Bool)

(assert (=> mapNonEmpty!921 m!19030))

(declare-fun m!19032 () Bool)

(assert (=> b!44786 m!19032))

(declare-fun m!19034 () Bool)

(assert (=> b!44786 m!19034))

(declare-fun m!19036 () Bool)

(assert (=> b!44765 m!19036))

(declare-fun m!19038 () Bool)

(assert (=> b!44763 m!19038))

(declare-fun m!19040 () Bool)

(assert (=> b!44768 m!19040))

(declare-fun m!19042 () Bool)

(assert (=> b!44756 m!19042))

(declare-fun m!19044 () Bool)

(assert (=> b!44784 m!19044))

(declare-fun m!19046 () Bool)

(assert (=> start!2874 m!19046))

(declare-fun m!19048 () Bool)

(assert (=> start!2874 m!19048))

(declare-fun m!19050 () Bool)

(assert (=> start!2874 m!19050))

(declare-fun m!19052 () Bool)

(assert (=> start!2874 m!19052))

(declare-fun m!19054 () Bool)

(assert (=> start!2874 m!19054))

(declare-fun m!19056 () Bool)

(assert (=> start!2874 m!19056))

(declare-fun m!19058 () Bool)

(assert (=> b!44761 m!19058))

(declare-fun m!19060 () Bool)

(assert (=> b!44761 m!19060))

(declare-fun m!19062 () Bool)

(assert (=> b!44778 m!19062))

(declare-fun m!19064 () Bool)

(assert (=> b!44782 m!19064))

(declare-fun m!19066 () Bool)

(assert (=> b!44782 m!19066))

(declare-fun m!19068 () Bool)

(assert (=> mapNonEmpty!920 m!19068))

(declare-fun m!19070 () Bool)

(assert (=> b!44791 m!19070))

(declare-fun m!19072 () Bool)

(assert (=> b!44769 m!19072))

(declare-fun m!19074 () Bool)

(assert (=> b!44789 m!19074))

(declare-fun m!19076 () Bool)

(assert (=> b!44781 m!19076))

(declare-fun m!19078 () Bool)

(assert (=> b!44781 m!19078))

(check-sat (not b!44765) b_and!1167 (not b_next!1125) (not b!44786) (not b!44781) b_and!1163 (not b!44772) (not b_next!1131) (not b!44791) (not b!44780) (not b_next!1127) b_and!1161 (not b!44768) (not b!44783) (not b!44770) (not b!44784) (not mapNonEmpty!920) (not b!44788) (not b!44757) (not b!44789) b_and!1159 (not b!44761) (not b!44763) (not start!2874) (not b_next!1133) (not mapNonEmpty!921) (not b!44787) (not b!44756) (not b!44801) (not b!44766) (not mapNonEmpty!919) (not b!44769) (not b_next!1135) (not b!44774) b_and!1169 (not b_next!1129) b_and!1165 (not b!44778) (not b!44782))
(check-sat (not b_next!1127) b_and!1161 b_and!1167 (not b_next!1125) b_and!1159 (not b_next!1133) b_and!1163 (not b_next!1135) (not b_next!1131) b_and!1165 b_and!1169 (not b_next!1129))
(get-model)

(declare-fun d!5157 () Bool)

(declare-fun c!16089 () Bool)

(assert (=> d!5157 (= c!16089 ((_ is Node!136) (c!16085 input!525)))))

(declare-fun e!24999 () Bool)

(assert (=> d!5157 (= (inv!1000 (c!16085 input!525)) e!24999)))

(declare-fun b!44810 () Bool)

(declare-fun inv!1005 (Conc!136) Bool)

(assert (=> b!44810 (= e!24999 (inv!1005 (c!16085 input!525)))))

(declare-fun b!44811 () Bool)

(declare-fun e!25000 () Bool)

(assert (=> b!44811 (= e!24999 e!25000)))

(declare-fun res!30798 () Bool)

(assert (=> b!44811 (= res!30798 (not ((_ is Leaf!331) (c!16085 input!525))))))

(assert (=> b!44811 (=> res!30798 e!25000)))

(declare-fun b!44812 () Bool)

(declare-fun inv!1006 (Conc!136) Bool)

(assert (=> b!44812 (= e!25000 (inv!1006 (c!16085 input!525)))))

(assert (= (and d!5157 c!16089) b!44810))

(assert (= (and d!5157 (not c!16089)) b!44811))

(assert (= (and b!44811 (not res!30798)) b!44812))

(declare-fun m!19080 () Bool)

(assert (=> b!44810 m!19080))

(declare-fun m!19082 () Bool)

(assert (=> b!44812 m!19082))

(assert (=> b!44768 d!5157))

(declare-fun d!5159 () Bool)

(assert (=> d!5159 (= (array_inv!257 (_keys!531 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333))))))) (bvsge (size!705 (_keys!531 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!44786 d!5159))

(declare-fun d!5161 () Bool)

(assert (=> d!5161 (= (array_inv!260 (_values!518 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333))))))) (bvsge (size!704 (_values!518 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!44786 d!5161))

(declare-fun d!5163 () Bool)

(declare-fun list!195 (Conc!136) List!714)

(assert (=> d!5163 (= (list!193 lt!5713) (list!195 (c!16085 lt!5713)))))

(declare-fun bs!6229 () Bool)

(assert (= bs!6229 d!5163))

(declare-fun m!19084 () Bool)

(assert (=> bs!6229 m!19084))

(assert (=> b!44788 d!5163))

(declare-fun d!5165 () Bool)

(declare-fun fromListB!11 (List!714) BalanceConc!272)

(assert (=> d!5165 (= (seqFromList!32 lt!5724) (fromListB!11 lt!5724))))

(declare-fun bs!6230 () Bool)

(assert (= bs!6230 d!5165))

(declare-fun m!19086 () Bool)

(assert (=> bs!6230 m!19086))

(assert (=> b!44788 d!5165))

(declare-fun d!5167 () Bool)

(assert (=> d!5167 (= (list!193 input!525) (list!195 (c!16085 input!525)))))

(declare-fun bs!6231 () Bool)

(assert (= bs!6231 d!5167))

(declare-fun m!19088 () Bool)

(assert (=> bs!6231 m!19088))

(assert (=> b!44788 d!5167))

(declare-fun d!5169 () Bool)

(declare-fun list!196 (Conc!137) List!719)

(assert (=> d!5169 (= (list!194 (_1!608 (_1!611 lt!5719))) (list!196 (c!16086 (_1!608 (_1!611 lt!5719)))))))

(declare-fun bs!6232 () Bool)

(assert (= bs!6232 d!5169))

(declare-fun m!19090 () Bool)

(assert (=> bs!6232 m!19090))

(assert (=> b!44770 d!5169))

(declare-fun d!5171 () Bool)

(assert (=> d!5171 (= (list!194 (_1!608 lt!5714)) (list!196 (c!16086 (_1!608 lt!5714))))))

(declare-fun bs!6233 () Bool)

(assert (= bs!6233 d!5171))

(declare-fun m!19092 () Bool)

(assert (=> bs!6233 m!19092))

(assert (=> b!44770 d!5171))

(declare-fun b!44823 () Bool)

(declare-fun res!30809 () Bool)

(declare-fun e!25003 () Bool)

(assert (=> b!44823 (=> (not res!30809) (not e!25003))))

(declare-fun lt!5731 () tuple4!74)

(assert (=> b!44823 (= res!30809 (valid!217 (_3!176 lt!5731)))))

(declare-fun b!44824 () Bool)

(declare-fun res!30811 () Bool)

(assert (=> b!44824 (=> (not res!30811) (not e!25003))))

(assert (=> b!44824 (= res!30811 (= (list!193 (_2!608 (_1!611 lt!5731))) (list!193 (_2!608 (lex!39 Lexer!59 lt!5712 input!525)))))))

(declare-fun b!44825 () Bool)

(assert (=> b!44825 (= e!25003 (= (totalInput!1537 (_4!37 lt!5731)) input!525))))

(declare-fun b!44826 () Bool)

(declare-fun res!30810 () Bool)

(assert (=> b!44826 (=> (not res!30810) (not e!25003))))

(assert (=> b!44826 (= res!30810 (valid!219 (_2!611 lt!5731)))))

(declare-fun d!5173 () Bool)

(assert (=> d!5173 e!25003))

(declare-fun res!30812 () Bool)

(assert (=> d!5173 (=> (not res!30812) (not e!25003))))

(assert (=> d!5173 (= res!30812 (= (list!194 (_1!608 (_1!611 lt!5731))) (list!194 (_1!608 (lex!39 Lexer!59 lt!5712 input!525)))))))

(declare-fun lt!5730 () tuple4!74)

(assert (=> d!5173 (= lt!5731 (tuple4!75 (_1!611 lt!5730) (_2!611 lt!5730) (_3!176 lt!5730) (_4!37 lt!5730)))))

(declare-fun lexTailRecV3Mem!12 (LexerInterface!61 List!715 BalanceConc!272 BalanceConc!272 BalanceConc!272 BalanceConc!274 CacheUp!160 CacheDown!160 CacheFurthestNullable!108) tuple4!74)

(assert (=> d!5173 (= lt!5730 (lexTailRecV3Mem!12 Lexer!59 lt!5712 input!525 (BalanceConc!273 Empty!136) input!525 (BalanceConc!275 Empty!137) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!5173 (not (isEmpty!146 lt!5712))))

(assert (=> d!5173 (= (lexMem!27 Lexer!59 lt!5712 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!5731)))

(declare-fun b!44827 () Bool)

(declare-fun res!30813 () Bool)

(assert (=> b!44827 (=> (not res!30813) (not e!25003))))

(assert (=> b!44827 (= res!30813 (valid!218 (_4!37 lt!5731)))))

(assert (= (and d!5173 res!30812) b!44824))

(assert (= (and b!44824 res!30811) b!44827))

(assert (= (and b!44827 res!30813) b!44826))

(assert (= (and b!44826 res!30810) b!44823))

(assert (= (and b!44823 res!30809) b!44825))

(declare-fun m!19094 () Bool)

(assert (=> b!44823 m!19094))

(declare-fun m!19096 () Bool)

(assert (=> b!44826 m!19096))

(assert (=> d!5173 m!19050))

(declare-fun m!19098 () Bool)

(assert (=> d!5173 m!19098))

(declare-fun m!19100 () Bool)

(assert (=> d!5173 m!19100))

(declare-fun m!19102 () Bool)

(assert (=> d!5173 m!19102))

(assert (=> d!5173 m!19014))

(declare-fun m!19104 () Bool)

(assert (=> b!44827 m!19104))

(declare-fun m!19106 () Bool)

(assert (=> b!44824 m!19106))

(assert (=> b!44824 m!19014))

(declare-fun m!19108 () Bool)

(assert (=> b!44824 m!19108))

(assert (=> b!44770 d!5173))

(declare-fun d!5175 () Bool)

(assert (=> d!5175 (valid!219 (_2!611 lt!5719))))

(declare-fun Unit!332 () Unit!330)

(assert (=> d!5175 (= (lemmaInvariant!58 (_2!611 lt!5719)) Unit!332)))

(declare-fun bs!6234 () Bool)

(assert (= bs!6234 d!5175))

(declare-fun m!19110 () Bool)

(assert (=> bs!6234 m!19110))

(assert (=> b!44770 d!5175))

(declare-fun b!44838 () Bool)

(declare-fun lt!5734 () tuple2!866)

(declare-fun e!25012 () Bool)

(declare-datatypes ((tuple2!870 0))(
  ( (tuple2!871 (_1!612 List!719) (_2!612 List!714)) )
))
(declare-fun lexList!15 (LexerInterface!61 List!715 List!714) tuple2!870)

(assert (=> b!44838 (= e!25012 (= (list!193 (_2!608 lt!5734)) (_2!612 (lexList!15 Lexer!59 lt!5712 (list!193 input!525)))))))

(declare-fun b!44839 () Bool)

(declare-fun e!25011 () Bool)

(declare-fun isEmpty!147 (BalanceConc!274) Bool)

(assert (=> b!44839 (= e!25011 (not (isEmpty!147 (_1!608 lt!5734))))))

(declare-fun b!44840 () Bool)

(declare-fun e!25010 () Bool)

(assert (=> b!44840 (= e!25010 e!25011)))

(declare-fun res!30821 () Bool)

(declare-fun size!709 (BalanceConc!272) Int)

(assert (=> b!44840 (= res!30821 (< (size!709 (_2!608 lt!5734)) (size!709 input!525)))))

(assert (=> b!44840 (=> (not res!30821) (not e!25011))))

(declare-fun d!5177 () Bool)

(assert (=> d!5177 e!25012))

(declare-fun res!30822 () Bool)

(assert (=> d!5177 (=> (not res!30822) (not e!25012))))

(assert (=> d!5177 (= res!30822 e!25010)))

(declare-fun c!16092 () Bool)

(declare-fun size!710 (BalanceConc!274) Int)

(assert (=> d!5177 (= c!16092 (> (size!710 (_1!608 lt!5734)) 0))))

(declare-fun lexTailRecV2!12 (LexerInterface!61 List!715 BalanceConc!272 BalanceConc!272 BalanceConc!272 BalanceConc!274) tuple2!866)

(assert (=> d!5177 (= lt!5734 (lexTailRecV2!12 Lexer!59 lt!5712 input!525 (BalanceConc!273 Empty!136) input!525 (BalanceConc!275 Empty!137)))))

(assert (=> d!5177 (= (lex!39 Lexer!59 lt!5712 input!525) lt!5734)))

(declare-fun b!44841 () Bool)

(assert (=> b!44841 (= e!25010 (= (_2!608 lt!5734) input!525))))

(declare-fun b!44842 () Bool)

(declare-fun res!30820 () Bool)

(assert (=> b!44842 (=> (not res!30820) (not e!25012))))

(assert (=> b!44842 (= res!30820 (= (list!194 (_1!608 lt!5734)) (_1!612 (lexList!15 Lexer!59 lt!5712 (list!193 input!525)))))))

(assert (= (and d!5177 c!16092) b!44840))

(assert (= (and d!5177 (not c!16092)) b!44841))

(assert (= (and b!44840 res!30821) b!44839))

(assert (= (and d!5177 res!30822) b!44842))

(assert (= (and b!44842 res!30820) b!44838))

(declare-fun m!19112 () Bool)

(assert (=> d!5177 m!19112))

(declare-fun m!19114 () Bool)

(assert (=> d!5177 m!19114))

(declare-fun m!19116 () Bool)

(assert (=> b!44838 m!19116))

(assert (=> b!44838 m!19024))

(assert (=> b!44838 m!19024))

(declare-fun m!19118 () Bool)

(assert (=> b!44838 m!19118))

(declare-fun m!19120 () Bool)

(assert (=> b!44840 m!19120))

(declare-fun m!19122 () Bool)

(assert (=> b!44840 m!19122))

(declare-fun m!19124 () Bool)

(assert (=> b!44839 m!19124))

(declare-fun m!19126 () Bool)

(assert (=> b!44842 m!19126))

(assert (=> b!44842 m!19024))

(assert (=> b!44842 m!19024))

(assert (=> b!44842 m!19118))

(assert (=> b!44770 d!5177))

(declare-fun d!5179 () Bool)

(assert (=> d!5179 (valid!217 (_3!176 lt!5719))))

(declare-fun Unit!333 () Unit!330)

(assert (=> d!5179 (= (lemmaInvariant!57 (_3!176 lt!5719)) Unit!333)))

(declare-fun bs!6235 () Bool)

(assert (= bs!6235 d!5179))

(declare-fun m!19128 () Bool)

(assert (=> bs!6235 m!19128))

(assert (=> b!44770 d!5179))

(declare-fun d!5181 () Bool)

(assert (=> d!5181 (= (array_inv!257 (_keys!533 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))) (bvsge (size!705 (_keys!533 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!44780 d!5181))

(declare-fun d!5183 () Bool)

(assert (=> d!5183 (= (array_inv!259 (_values!520 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))) (bvsge (size!708 (_values!520 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!44780 d!5183))

(declare-fun d!5185 () Bool)

(declare-fun res!30825 () Bool)

(declare-fun e!25015 () Bool)

(assert (=> d!5185 (=> (not res!30825) (not e!25015))))

(declare-fun rulesValid!18 (LexerInterface!61 List!715) Bool)

(assert (=> d!5185 (= res!30825 (rulesValid!18 Lexer!59 lt!5712))))

(assert (=> d!5185 (= (rulesInvariant!53 Lexer!59 lt!5712) e!25015)))

(declare-fun b!44845 () Bool)

(declare-datatypes ((List!721 0))(
  ( (Nil!719) (Cons!719 (h!6115 String!1081) (t!16570 List!721)) )
))
(declare-fun noDuplicateTag!18 (LexerInterface!61 List!715 List!721) Bool)

(assert (=> b!44845 (= e!25015 (noDuplicateTag!18 Lexer!59 lt!5712 Nil!719))))

(assert (= (and d!5185 res!30825) b!44845))

(declare-fun m!19130 () Bool)

(assert (=> d!5185 m!19130))

(declare-fun m!19132 () Bool)

(assert (=> b!44845 m!19132))

(assert (=> b!44778 d!5185))

(declare-fun d!5187 () Bool)

(assert (=> d!5187 (= (array_inv!257 (_keys!532 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320))))))) (bvsge (size!705 (_keys!532 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!44761 d!5187))

(declare-fun d!5189 () Bool)

(assert (=> d!5189 (= (array_inv!258 (_values!519 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320))))))) (bvsge (size!706 (_values!519 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!44761 d!5189))

(declare-fun d!5191 () Bool)

(declare-fun e!25027 () Bool)

(assert (=> d!5191 e!25027))

(declare-fun res!30838 () Bool)

(assert (=> d!5191 (=> (not res!30838) (not e!25027))))

(declare-fun lt!5747 () Bool)

(assert (=> d!5191 (= res!30838 lt!5747)))

(declare-fun e!25025 () Bool)

(assert (=> d!5191 (= lt!5747 e!25025)))

(declare-fun res!30836 () Bool)

(assert (=> d!5191 (=> res!30836 e!25025)))

(declare-fun e!25026 () Bool)

(assert (=> d!5191 (= res!30836 (not e!25026))))

(declare-fun res!30840 () Bool)

(assert (=> d!5191 (=> (not res!30840) (not e!25026))))

(assert (=> d!5191 (= res!30840 (not (isEmpty!146 lt!5712)))))

(assert (=> d!5191 (= (lexThenRulesProduceEachTokenIndividually!16 Lexer!59 lt!5712 lt!5724) lt!5747)))

(declare-fun b!44856 () Bool)

(declare-fun e!25024 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!18 (LexerInterface!61 List!715 List!719) Bool)

(declare-fun lex!40 (LexerInterface!61 List!715 BalanceConc!272) tuple2!866)

(assert (=> b!44856 (= e!25024 (rulesProduceEachTokenIndividuallyList!18 Lexer!59 lt!5712 (list!194 (_1!608 (lex!40 Lexer!59 lt!5712 (seqFromList!32 lt!5724))))))))

(declare-fun b!44857 () Bool)

(assert (=> b!44857 (= e!25026 (rulesInvariant!53 Lexer!59 lt!5712))))

(declare-fun b!44858 () Bool)

(declare-fun res!30837 () Bool)

(assert (=> b!44858 (=> res!30837 e!25024)))

(declare-fun rulesInvariant!54 (LexerInterface!61 List!715) Bool)

(assert (=> b!44858 (= res!30837 (not (rulesInvariant!54 Lexer!59 lt!5712)))))

(declare-fun b!44859 () Bool)

(assert (=> b!44859 (= e!25027 e!25024)))

(declare-fun res!30839 () Bool)

(assert (=> b!44859 (=> res!30839 e!25024)))

(assert (=> b!44859 (= res!30839 (isEmpty!146 lt!5712))))

(declare-fun b!44860 () Bool)

(declare-fun lt!5748 () tuple2!866)

(assert (=> b!44860 (= e!25025 (rulesProduceEachTokenIndividuallyList!17 Lexer!59 lt!5712 (list!194 (_1!608 lt!5748))))))

(declare-fun lt!5749 () Unit!330)

(declare-fun lt!5746 () Unit!330)

(assert (=> b!44860 (= lt!5749 lt!5746)))

(declare-fun lt!5745 () List!719)

(declare-fun rulesProduceEachTokenIndividually!6 (LexerInterface!61 List!715 BalanceConc!274) Bool)

(declare-fun seqFromList!33 (List!719) BalanceConc!274)

(assert (=> b!44860 (rulesProduceEachTokenIndividually!6 Lexer!59 lt!5712 (seqFromList!33 lt!5745))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!6 (LexerInterface!61 List!715 List!714 List!719) Unit!330)

(assert (=> b!44860 (= lt!5746 (lemmaLexThenRulesProducesEachTokenIndividually!6 Lexer!59 lt!5712 lt!5724 lt!5745))))

(assert (=> b!44860 (= lt!5745 (list!194 (_1!608 lt!5748)))))

(assert (=> b!44860 (= lt!5748 (lex!39 Lexer!59 lt!5712 (seqFromList!32 lt!5724)))))

(assert (= (and d!5191 res!30840) b!44857))

(assert (= (and d!5191 (not res!30836)) b!44860))

(assert (= (and d!5191 res!30838) b!44859))

(assert (= (and b!44859 (not res!30839)) b!44858))

(assert (= (and b!44858 (not res!30837)) b!44856))

(declare-fun m!19134 () Bool)

(assert (=> b!44858 m!19134))

(assert (=> b!44857 m!19062))

(assert (=> b!44856 m!19022))

(assert (=> b!44856 m!19022))

(declare-fun m!19136 () Bool)

(assert (=> b!44856 m!19136))

(declare-fun m!19138 () Bool)

(assert (=> b!44856 m!19138))

(assert (=> b!44856 m!19138))

(declare-fun m!19140 () Bool)

(assert (=> b!44856 m!19140))

(assert (=> b!44859 m!19050))

(assert (=> d!5191 m!19050))

(declare-fun m!19142 () Bool)

(assert (=> b!44860 m!19142))

(declare-fun m!19144 () Bool)

(assert (=> b!44860 m!19144))

(assert (=> b!44860 m!19022))

(declare-fun m!19146 () Bool)

(assert (=> b!44860 m!19146))

(declare-fun m!19148 () Bool)

(assert (=> b!44860 m!19148))

(assert (=> b!44860 m!19144))

(declare-fun m!19150 () Bool)

(assert (=> b!44860 m!19150))

(assert (=> b!44860 m!19022))

(declare-fun m!19152 () Bool)

(assert (=> b!44860 m!19152))

(assert (=> b!44860 m!19146))

(assert (=> b!44769 d!5191))

(declare-fun d!5193 () Bool)

(declare-fun isBalanced!25 (Conc!136) Bool)

(assert (=> d!5193 (= (inv!1001 (totalInput!1537 cacheFurthestNullable!45)) (isBalanced!25 (c!16085 (totalInput!1537 cacheFurthestNullable!45))))))

(declare-fun bs!6236 () Bool)

(assert (= bs!6236 d!5193))

(declare-fun m!19154 () Bool)

(assert (=> bs!6236 m!19154))

(assert (=> b!44772 d!5193))

(declare-fun d!5195 () Bool)

(assert (=> d!5195 (= (list!193 (_2!608 lt!5714)) (list!195 (c!16085 (_2!608 lt!5714))))))

(declare-fun bs!6237 () Bool)

(assert (= bs!6237 d!5195))

(declare-fun m!19156 () Bool)

(assert (=> bs!6237 m!19156))

(assert (=> b!44782 d!5195))

(declare-fun d!5197 () Bool)

(assert (=> d!5197 (= (list!193 (_2!608 (_1!611 lt!5719))) (list!195 (c!16085 (_2!608 (_1!611 lt!5719)))))))

(declare-fun bs!6238 () Bool)

(assert (= bs!6238 d!5197))

(declare-fun m!19158 () Bool)

(assert (=> bs!6238 m!19158))

(assert (=> b!44782 d!5197))

(declare-fun d!5199 () Bool)

(declare-fun validCacheMapUp!20 (MutableMap!237) Bool)

(assert (=> d!5199 (= (valid!219 cacheUp!320) (validCacheMapUp!20 (cache!722 cacheUp!320)))))

(declare-fun bs!6239 () Bool)

(assert (= bs!6239 d!5199))

(declare-fun m!19160 () Bool)

(assert (=> bs!6239 m!19160))

(assert (=> b!44791 d!5199))

(declare-fun bs!6240 () Bool)

(declare-fun d!5201 () Bool)

(assert (= bs!6240 (and d!5201 b!44784)))

(declare-fun lambda!821 () Int)

(assert (=> bs!6240 (= lambda!821 lambda!818)))

(declare-fun b!44869 () Bool)

(declare-fun e!25036 () Bool)

(assert (=> b!44869 (= e!25036 true)))

(declare-fun b!44868 () Bool)

(declare-fun e!25035 () Bool)

(assert (=> b!44868 (= e!25035 e!25036)))

(declare-fun b!44867 () Bool)

(declare-fun e!25034 () Bool)

(assert (=> b!44867 (= e!25034 e!25035)))

(assert (=> d!5201 e!25034))

(assert (= b!44868 b!44869))

(assert (= b!44867 b!44868))

(assert (= (and d!5201 ((_ is Cons!713) lt!5712)) b!44867))

(assert (=> b!44869 (< (dynLambda!96 order!151 (toValue!646 (transformation!167 (h!6109 lt!5712)))) (dynLambda!97 order!153 lambda!821))))

(assert (=> b!44869 (< (dynLambda!98 order!155 (toChars!505 (transformation!167 (h!6109 lt!5712)))) (dynLambda!97 order!153 lambda!821))))

(assert (=> d!5201 true))

(declare-fun lt!5752 () Bool)

(assert (=> d!5201 (= lt!5752 (forall!82 lt!5722 lambda!821))))

(declare-fun e!25033 () Bool)

(assert (=> d!5201 (= lt!5752 e!25033)))

(declare-fun res!30846 () Bool)

(assert (=> d!5201 (=> res!30846 e!25033)))

(assert (=> d!5201 (= res!30846 (not ((_ is Cons!717) lt!5722)))))

(assert (=> d!5201 (not (isEmpty!146 lt!5712))))

(assert (=> d!5201 (= (rulesProduceEachTokenIndividuallyList!17 Lexer!59 lt!5712 lt!5722) lt!5752)))

(declare-fun b!44865 () Bool)

(declare-fun e!25032 () Bool)

(assert (=> b!44865 (= e!25033 e!25032)))

(declare-fun res!30845 () Bool)

(assert (=> b!44865 (=> (not res!30845) (not e!25032))))

(declare-fun rulesProduceIndividualToken!7 (LexerInterface!61 List!715 Token!100) Bool)

(assert (=> b!44865 (= res!30845 (rulesProduceIndividualToken!7 Lexer!59 lt!5712 (h!6113 lt!5722)))))

(declare-fun b!44866 () Bool)

(assert (=> b!44866 (= e!25032 (rulesProduceEachTokenIndividuallyList!17 Lexer!59 lt!5712 (t!16566 lt!5722)))))

(assert (= (and d!5201 (not res!30846)) b!44865))

(assert (= (and b!44865 res!30845) b!44866))

(declare-fun m!19162 () Bool)

(assert (=> d!5201 m!19162))

(assert (=> d!5201 m!19050))

(declare-fun m!19164 () Bool)

(assert (=> b!44865 m!19164))

(declare-fun m!19166 () Bool)

(assert (=> b!44866 m!19166))

(assert (=> b!44789 d!5201))

(declare-fun d!5203 () Bool)

(assert (=> d!5203 (= (list!193 (_2!608 lt!5721)) (list!195 (c!16085 (_2!608 lt!5721))))))

(declare-fun bs!6241 () Bool)

(assert (= bs!6241 d!5203))

(declare-fun m!19168 () Bool)

(assert (=> bs!6241 m!19168))

(assert (=> b!44763 d!5203))

(declare-fun d!5205 () Bool)

(assert (=> d!5205 (= (list!194 (_1!608 lt!5721)) (list!196 (c!16086 (_1!608 lt!5721))))))

(declare-fun bs!6242 () Bool)

(assert (= bs!6242 d!5205))

(declare-fun m!19170 () Bool)

(assert (=> bs!6242 m!19170))

(assert (=> b!44781 d!5205))

(declare-fun lt!5753 () tuple2!866)

(declare-fun e!25039 () Bool)

(declare-fun b!44872 () Bool)

(assert (=> b!44872 (= e!25039 (= (list!193 (_2!608 lt!5753)) (_2!612 (lexList!15 Lexer!59 lt!5712 (list!193 lt!5713)))))))

(declare-fun b!44873 () Bool)

(declare-fun e!25038 () Bool)

(assert (=> b!44873 (= e!25038 (not (isEmpty!147 (_1!608 lt!5753))))))

(declare-fun b!44874 () Bool)

(declare-fun e!25037 () Bool)

(assert (=> b!44874 (= e!25037 e!25038)))

(declare-fun res!30848 () Bool)

(assert (=> b!44874 (= res!30848 (< (size!709 (_2!608 lt!5753)) (size!709 lt!5713)))))

(assert (=> b!44874 (=> (not res!30848) (not e!25038))))

(declare-fun d!5207 () Bool)

(assert (=> d!5207 e!25039))

(declare-fun res!30849 () Bool)

(assert (=> d!5207 (=> (not res!30849) (not e!25039))))

(assert (=> d!5207 (= res!30849 e!25037)))

(declare-fun c!16093 () Bool)

(assert (=> d!5207 (= c!16093 (> (size!710 (_1!608 lt!5753)) 0))))

(assert (=> d!5207 (= lt!5753 (lexTailRecV2!12 Lexer!59 lt!5712 lt!5713 (BalanceConc!273 Empty!136) lt!5713 (BalanceConc!275 Empty!137)))))

(assert (=> d!5207 (= (lex!39 Lexer!59 lt!5712 lt!5713) lt!5753)))

(declare-fun b!44875 () Bool)

(assert (=> b!44875 (= e!25037 (= (_2!608 lt!5753) lt!5713))))

(declare-fun b!44876 () Bool)

(declare-fun res!30847 () Bool)

(assert (=> b!44876 (=> (not res!30847) (not e!25039))))

(assert (=> b!44876 (= res!30847 (= (list!194 (_1!608 lt!5753)) (_1!612 (lexList!15 Lexer!59 lt!5712 (list!193 lt!5713)))))))

(assert (= (and d!5207 c!16093) b!44874))

(assert (= (and d!5207 (not c!16093)) b!44875))

(assert (= (and b!44874 res!30848) b!44873))

(assert (= (and d!5207 res!30849) b!44876))

(assert (= (and b!44876 res!30847) b!44872))

(declare-fun m!19172 () Bool)

(assert (=> d!5207 m!19172))

(declare-fun m!19174 () Bool)

(assert (=> d!5207 m!19174))

(declare-fun m!19176 () Bool)

(assert (=> b!44872 m!19176))

(assert (=> b!44872 m!19020))

(assert (=> b!44872 m!19020))

(declare-fun m!19178 () Bool)

(assert (=> b!44872 m!19178))

(declare-fun m!19180 () Bool)

(assert (=> b!44874 m!19180))

(declare-fun m!19182 () Bool)

(assert (=> b!44874 m!19182))

(declare-fun m!19184 () Bool)

(assert (=> b!44873 m!19184))

(declare-fun m!19186 () Bool)

(assert (=> b!44876 m!19186))

(assert (=> b!44876 m!19020))

(assert (=> b!44876 m!19020))

(assert (=> b!44876 m!19178))

(assert (=> b!44781 d!5207))

(declare-fun d!5209 () Bool)

(declare-fun validCacheMapFurthestNullable!14 (MutableMap!238 BalanceConc!272) Bool)

(assert (=> d!5209 (= (valid!218 cacheFurthestNullable!45) (validCacheMapFurthestNullable!14 (cache!723 cacheFurthestNullable!45) (totalInput!1537 cacheFurthestNullable!45)))))

(declare-fun bs!6243 () Bool)

(assert (= bs!6243 d!5209))

(declare-fun m!19188 () Bool)

(assert (=> bs!6243 m!19188))

(assert (=> b!44766 d!5209))

(declare-fun d!5211 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!80) Rule!134)

(declare-fun integerLiteralRule!0 (JsonLexer!80) Rule!134)

(declare-fun floatLiteralRule!0 (JsonLexer!80) Rule!134)

(declare-fun trueRule!0 (JsonLexer!80) Rule!134)

(declare-fun falseRule!0 (JsonLexer!80) Rule!134)

(declare-fun nullRule!0 (JsonLexer!80) Rule!134)

(declare-fun jsonstringRule!0 (JsonLexer!80) Rule!134)

(declare-fun lBraceRule!0 (JsonLexer!80) Rule!134)

(declare-fun rBraceRule!0 (JsonLexer!80) Rule!134)

(declare-fun lBracketRule!0 (JsonLexer!80) Rule!134)

(declare-fun rBracketRule!0 (JsonLexer!80) Rule!134)

(declare-fun colonRule!0 (JsonLexer!80) Rule!134)

(declare-fun commaRule!0 (JsonLexer!80) Rule!134)

(declare-fun eofRule!0 (JsonLexer!80) Rule!134)

(assert (=> d!5211 (= (rules!109 JsonLexer!81) (Cons!713 (whitespaceRule!0 JsonLexer!81) (Cons!713 (integerLiteralRule!0 JsonLexer!81) (Cons!713 (floatLiteralRule!0 JsonLexer!81) (Cons!713 (trueRule!0 JsonLexer!81) (Cons!713 (falseRule!0 JsonLexer!81) (Cons!713 (nullRule!0 JsonLexer!81) (Cons!713 (jsonstringRule!0 JsonLexer!81) (Cons!713 (lBraceRule!0 JsonLexer!81) (Cons!713 (rBraceRule!0 JsonLexer!81) (Cons!713 (lBracketRule!0 JsonLexer!81) (Cons!713 (rBracketRule!0 JsonLexer!81) (Cons!713 (colonRule!0 JsonLexer!81) (Cons!713 (commaRule!0 JsonLexer!81) (Cons!713 (eofRule!0 JsonLexer!81) Nil!713)))))))))))))))))

(declare-fun bs!6244 () Bool)

(assert (= bs!6244 d!5211))

(declare-fun m!19190 () Bool)

(assert (=> bs!6244 m!19190))

(declare-fun m!19192 () Bool)

(assert (=> bs!6244 m!19192))

(declare-fun m!19194 () Bool)

(assert (=> bs!6244 m!19194))

(declare-fun m!19196 () Bool)

(assert (=> bs!6244 m!19196))

(declare-fun m!19198 () Bool)

(assert (=> bs!6244 m!19198))

(declare-fun m!19200 () Bool)

(assert (=> bs!6244 m!19200))

(declare-fun m!19202 () Bool)

(assert (=> bs!6244 m!19202))

(declare-fun m!19204 () Bool)

(assert (=> bs!6244 m!19204))

(declare-fun m!19206 () Bool)

(assert (=> bs!6244 m!19206))

(declare-fun m!19208 () Bool)

(assert (=> bs!6244 m!19208))

(declare-fun m!19210 () Bool)

(assert (=> bs!6244 m!19210))

(declare-fun m!19212 () Bool)

(assert (=> bs!6244 m!19212))

(declare-fun m!19214 () Bool)

(assert (=> bs!6244 m!19214))

(declare-fun m!19216 () Bool)

(assert (=> bs!6244 m!19216))

(assert (=> start!2874 d!5211))

(declare-fun d!5213 () Bool)

(declare-fun res!30852 () Bool)

(declare-fun e!25042 () Bool)

(assert (=> d!5213 (=> (not res!30852) (not e!25042))))

(assert (=> d!5213 (= res!30852 ((_ is HashMap!236) (cache!721 cacheDown!333)))))

(assert (=> d!5213 (= (inv!1002 cacheDown!333) e!25042)))

(declare-fun b!44879 () Bool)

(declare-fun validCacheMapDown!22 (MutableMap!236) Bool)

(assert (=> b!44879 (= e!25042 (validCacheMapDown!22 (cache!721 cacheDown!333)))))

(assert (= (and d!5213 res!30852) b!44879))

(declare-fun m!19218 () Bool)

(assert (=> b!44879 m!19218))

(assert (=> start!2874 d!5213))

(declare-fun d!5215 () Bool)

(assert (=> d!5215 (= (isEmpty!146 lt!5712) ((_ is Nil!713) lt!5712))))

(assert (=> start!2874 d!5215))

(declare-fun d!5217 () Bool)

(assert (=> d!5217 (= (inv!1001 input!525) (isBalanced!25 (c!16085 input!525)))))

(declare-fun bs!6245 () Bool)

(assert (= bs!6245 d!5217))

(declare-fun m!19220 () Bool)

(assert (=> bs!6245 m!19220))

(assert (=> start!2874 d!5217))

(declare-fun d!5219 () Bool)

(declare-fun res!30855 () Bool)

(declare-fun e!25045 () Bool)

(assert (=> d!5219 (=> (not res!30855) (not e!25045))))

(assert (=> d!5219 (= res!30855 ((_ is HashMap!238) (cache!723 cacheFurthestNullable!45)))))

(assert (=> d!5219 (= (inv!1003 cacheFurthestNullable!45) e!25045)))

(declare-fun b!44882 () Bool)

(assert (=> b!44882 (= e!25045 (validCacheMapFurthestNullable!14 (cache!723 cacheFurthestNullable!45) (totalInput!1537 cacheFurthestNullable!45)))))

(assert (= (and d!5219 res!30855) b!44882))

(assert (=> b!44882 m!19188))

(assert (=> start!2874 d!5219))

(declare-fun d!5221 () Bool)

(declare-fun res!30858 () Bool)

(declare-fun e!25048 () Bool)

(assert (=> d!5221 (=> (not res!30858) (not e!25048))))

(assert (=> d!5221 (= res!30858 ((_ is HashMap!237) (cache!722 cacheUp!320)))))

(assert (=> d!5221 (= (inv!1004 cacheUp!320) e!25048)))

(declare-fun b!44885 () Bool)

(assert (=> b!44885 (= e!25048 (validCacheMapUp!20 (cache!722 cacheUp!320)))))

(assert (= (and d!5221 res!30858) b!44885))

(assert (=> b!44885 m!19160))

(assert (=> start!2874 d!5221))

(declare-fun d!5223 () Bool)

(declare-fun lt!5756 () Bool)

(assert (=> d!5223 (= lt!5756 (forall!82 (list!194 (_1!608 (_1!611 lt!5719))) lambda!818))))

(declare-fun forall!83 (Conc!137 Int) Bool)

(assert (=> d!5223 (= lt!5756 (forall!83 (c!16086 (_1!608 (_1!611 lt!5719))) lambda!818))))

(assert (=> d!5223 (= (forall!81 (_1!608 (_1!611 lt!5719)) lambda!818) lt!5756)))

(declare-fun bs!6246 () Bool)

(assert (= bs!6246 d!5223))

(assert (=> bs!6246 m!19010))

(assert (=> bs!6246 m!19010))

(declare-fun m!19222 () Bool)

(assert (=> bs!6246 m!19222))

(declare-fun m!19224 () Bool)

(assert (=> bs!6246 m!19224))

(assert (=> b!44757 d!5223))

(declare-fun d!5225 () Bool)

(declare-fun c!16094 () Bool)

(assert (=> d!5225 (= c!16094 ((_ is Node!136) (c!16085 (totalInput!1537 cacheFurthestNullable!45))))))

(declare-fun e!25049 () Bool)

(assert (=> d!5225 (= (inv!1000 (c!16085 (totalInput!1537 cacheFurthestNullable!45))) e!25049)))

(declare-fun b!44886 () Bool)

(assert (=> b!44886 (= e!25049 (inv!1005 (c!16085 (totalInput!1537 cacheFurthestNullable!45))))))

(declare-fun b!44887 () Bool)

(declare-fun e!25050 () Bool)

(assert (=> b!44887 (= e!25049 e!25050)))

(declare-fun res!30859 () Bool)

(assert (=> b!44887 (= res!30859 (not ((_ is Leaf!331) (c!16085 (totalInput!1537 cacheFurthestNullable!45)))))))

(assert (=> b!44887 (=> res!30859 e!25050)))

(declare-fun b!44888 () Bool)

(assert (=> b!44888 (= e!25050 (inv!1006 (c!16085 (totalInput!1537 cacheFurthestNullable!45))))))

(assert (= (and d!5225 c!16094) b!44886))

(assert (= (and d!5225 (not c!16094)) b!44887))

(assert (= (and b!44887 (not res!30859)) b!44888))

(declare-fun m!19226 () Bool)

(assert (=> b!44886 m!19226))

(declare-fun m!19228 () Bool)

(assert (=> b!44888 m!19228))

(assert (=> b!44765 d!5225))

(declare-fun d!5227 () Bool)

(declare-fun res!30864 () Bool)

(declare-fun e!25055 () Bool)

(assert (=> d!5227 (=> res!30864 e!25055)))

(assert (=> d!5227 (= res!30864 ((_ is Nil!717) lt!5722))))

(assert (=> d!5227 (= (forall!82 lt!5722 lambda!818) e!25055)))

(declare-fun b!44893 () Bool)

(declare-fun e!25056 () Bool)

(assert (=> b!44893 (= e!25055 e!25056)))

(declare-fun res!30865 () Bool)

(assert (=> b!44893 (=> (not res!30865) (not e!25056))))

(declare-fun dynLambda!99 (Int Token!100) Bool)

(assert (=> b!44893 (= res!30865 (dynLambda!99 lambda!818 (h!6113 lt!5722)))))

(declare-fun b!44894 () Bool)

(assert (=> b!44894 (= e!25056 (forall!82 (t!16566 lt!5722) lambda!818))))

(assert (= (and d!5227 (not res!30864)) b!44893))

(assert (= (and b!44893 res!30865) b!44894))

(declare-fun b_lambda!253 () Bool)

(assert (=> (not b_lambda!253) (not b!44893)))

(declare-fun m!19230 () Bool)

(assert (=> b!44893 m!19230))

(declare-fun m!19232 () Bool)

(assert (=> b!44894 m!19232))

(assert (=> b!44784 d!5227))

(declare-fun d!5229 () Bool)

(assert (=> d!5229 (= (valid!217 cacheDown!333) (validCacheMapDown!22 (cache!721 cacheDown!333)))))

(declare-fun bs!6247 () Bool)

(assert (= bs!6247 d!5229))

(assert (=> bs!6247 m!19218))

(assert (=> b!44756 d!5229))

(declare-fun b!44901 () Bool)

(declare-fun tp!30651 () Bool)

(declare-fun e!25070 () Bool)

(declare-fun mapDefault!924 () List!717)

(declare-fun setRes!1073 () Bool)

(declare-fun inv!1007 (Context!182) Bool)

(assert (=> b!44901 (= e!25070 (and (inv!1007 (_2!604 (_1!605 (h!6111 mapDefault!924)))) setRes!1073 tp!30651))))

(declare-fun condSetEmpty!1073 () Bool)

(assert (=> b!44901 (= condSetEmpty!1073 (= (_2!605 (h!6111 mapDefault!924)) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setNonEmpty!1072 () Bool)

(declare-fun setRes!1072 () Bool)

(declare-fun tp!30653 () Bool)

(declare-fun setElem!1073 () Context!182)

(assert (=> setNonEmpty!1072 (= setRes!1072 (and tp!30653 (inv!1007 setElem!1073)))))

(declare-fun mapValue!924 () List!717)

(declare-fun setRest!1073 () (InoxSet Context!182))

(assert (=> setNonEmpty!1072 (= (_2!605 (h!6111 mapValue!924)) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1073 true) setRest!1073))))

(declare-fun setIsEmpty!1072 () Bool)

(assert (=> setIsEmpty!1072 setRes!1072))

(declare-fun setNonEmpty!1073 () Bool)

(declare-fun tp!30652 () Bool)

(declare-fun setElem!1072 () Context!182)

(assert (=> setNonEmpty!1073 (= setRes!1073 (and tp!30652 (inv!1007 setElem!1072)))))

(declare-fun setRest!1072 () (InoxSet Context!182))

(assert (=> setNonEmpty!1073 (= (_2!605 (h!6111 mapDefault!924)) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1072 true) setRest!1072))))

(declare-fun setIsEmpty!1073 () Bool)

(assert (=> setIsEmpty!1073 setRes!1073))

(declare-fun mapNonEmpty!924 () Bool)

(declare-fun mapRes!924 () Bool)

(declare-fun tp!30650 () Bool)

(declare-fun e!25074 () Bool)

(assert (=> mapNonEmpty!924 (= mapRes!924 (and tp!30650 e!25074))))

(declare-fun mapKey!924 () (_ BitVec 32))

(declare-fun mapRest!924 () (Array (_ BitVec 32) List!717))

(assert (=> mapNonEmpty!924 (= mapRest!921 (store mapRest!924 mapKey!924 mapValue!924))))

(declare-fun tp!30654 () Bool)

(declare-fun b!44902 () Bool)

(assert (=> b!44902 (= e!25074 (and (inv!1007 (_2!604 (_1!605 (h!6111 mapValue!924)))) setRes!1072 tp!30654))))

(declare-fun condSetEmpty!1072 () Bool)

(assert (=> b!44902 (= condSetEmpty!1072 (= (_2!605 (h!6111 mapValue!924)) ((as const (Array Context!182 Bool)) false)))))

(declare-fun condMapEmpty!924 () Bool)

(assert (=> mapNonEmpty!920 (= condMapEmpty!924 (= mapRest!921 ((as const (Array (_ BitVec 32) List!717)) mapDefault!924)))))

(assert (=> mapNonEmpty!920 (= tp!30622 (and e!25070 mapRes!924))))

(declare-fun mapIsEmpty!924 () Bool)

(assert (=> mapIsEmpty!924 mapRes!924))

(assert (= (and mapNonEmpty!920 condMapEmpty!924) mapIsEmpty!924))

(assert (= (and mapNonEmpty!920 (not condMapEmpty!924)) mapNonEmpty!924))

(assert (= (and b!44902 condSetEmpty!1072) setIsEmpty!1072))

(assert (= (and b!44902 (not condSetEmpty!1072)) setNonEmpty!1072))

(assert (= (and mapNonEmpty!924 ((_ is Cons!715) mapValue!924)) b!44902))

(assert (= (and b!44901 condSetEmpty!1073) setIsEmpty!1073))

(assert (= (and b!44901 (not condSetEmpty!1073)) setNonEmpty!1073))

(assert (= (and mapNonEmpty!920 ((_ is Cons!715) mapDefault!924)) b!44901))

(declare-fun m!19234 () Bool)

(assert (=> setNonEmpty!1072 m!19234))

(declare-fun m!19236 () Bool)

(assert (=> b!44901 m!19236))

(declare-fun m!19238 () Bool)

(assert (=> setNonEmpty!1073 m!19238))

(declare-fun m!19240 () Bool)

(assert (=> b!44902 m!19240))

(declare-fun m!19242 () Bool)

(assert (=> mapNonEmpty!924 m!19242))

(declare-fun b!44907 () Bool)

(declare-fun setRes!1076 () Bool)

(declare-fun e!25083 () Bool)

(declare-fun tp!30660 () Bool)

(assert (=> b!44907 (= e!25083 (and (inv!1007 (_2!604 (_1!605 (h!6111 mapValue!919)))) setRes!1076 tp!30660))))

(declare-fun condSetEmpty!1076 () Bool)

(assert (=> b!44907 (= condSetEmpty!1076 (= (_2!605 (h!6111 mapValue!919)) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1076 () Bool)

(assert (=> setIsEmpty!1076 setRes!1076))

(declare-fun setNonEmpty!1076 () Bool)

(declare-fun tp!30659 () Bool)

(declare-fun setElem!1076 () Context!182)

(assert (=> setNonEmpty!1076 (= setRes!1076 (and tp!30659 (inv!1007 setElem!1076)))))

(declare-fun setRest!1076 () (InoxSet Context!182))

(assert (=> setNonEmpty!1076 (= (_2!605 (h!6111 mapValue!919)) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1076 true) setRest!1076))))

(assert (=> mapNonEmpty!920 (= tp!30632 e!25083)))

(assert (= (and b!44907 condSetEmpty!1076) setIsEmpty!1076))

(assert (= (and b!44907 (not condSetEmpty!1076)) setNonEmpty!1076))

(assert (= (and mapNonEmpty!920 ((_ is Cons!715) mapValue!919)) b!44907))

(declare-fun m!19244 () Bool)

(assert (=> b!44907 m!19244))

(declare-fun m!19246 () Bool)

(assert (=> setNonEmpty!1076 m!19246))

(declare-fun e!25088 () Bool)

(declare-fun tp!30665 () Bool)

(declare-fun tp!30666 () Bool)

(declare-fun b!44914 () Bool)

(assert (=> b!44914 (= e!25088 (and (inv!1000 (left!568 (c!16085 input!525))) tp!30665 (inv!1000 (right!898 (c!16085 input!525))) tp!30666))))

(declare-fun b!44915 () Bool)

(declare-fun inv!1008 (IArray!273) Bool)

(assert (=> b!44915 (= e!25088 (inv!1008 (xs!2715 (c!16085 input!525))))))

(assert (=> b!44768 (= tp!30624 (and (inv!1000 (c!16085 input!525)) e!25088))))

(assert (= (and b!44768 ((_ is Node!136) (c!16085 input!525))) b!44914))

(assert (= (and b!44768 ((_ is Leaf!331) (c!16085 input!525))) b!44915))

(declare-fun m!19248 () Bool)

(assert (=> b!44914 m!19248))

(declare-fun m!19250 () Bool)

(assert (=> b!44914 m!19250))

(declare-fun m!19252 () Bool)

(assert (=> b!44915 m!19252))

(assert (=> b!44768 m!19040))

(declare-fun setIsEmpty!1081 () Bool)

(declare-fun setRes!1081 () Bool)

(assert (=> setIsEmpty!1081 setRes!1081))

(declare-fun mapNonEmpty!927 () Bool)

(declare-fun mapRes!927 () Bool)

(declare-fun tp!30677 () Bool)

(declare-fun e!25104 () Bool)

(assert (=> mapNonEmpty!927 (= mapRes!927 (and tp!30677 e!25104))))

(declare-fun mapValue!927 () List!718)

(declare-fun mapRest!927 () (Array (_ BitVec 32) List!718))

(declare-fun mapKey!927 () (_ BitVec 32))

(assert (=> mapNonEmpty!927 (= mapRest!920 (store mapRest!927 mapKey!927 mapValue!927))))

(declare-fun tp!30680 () Bool)

(declare-fun b!44922 () Bool)

(assert (=> b!44922 (= e!25104 (and (inv!1007 (_1!606 (_1!607 (h!6112 mapValue!927)))) setRes!1081 tp!30680))))

(declare-fun condSetEmpty!1082 () Bool)

(assert (=> b!44922 (= condSetEmpty!1082 (= (_2!607 (h!6112 mapValue!927)) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1082 () Bool)

(declare-fun setRes!1082 () Bool)

(assert (=> setIsEmpty!1082 setRes!1082))

(declare-fun setNonEmpty!1081 () Bool)

(declare-fun tp!30678 () Bool)

(declare-fun setElem!1082 () Context!182)

(assert (=> setNonEmpty!1081 (= setRes!1082 (and tp!30678 (inv!1007 setElem!1082)))))

(declare-fun mapDefault!927 () List!718)

(declare-fun setRest!1082 () (InoxSet Context!182))

(assert (=> setNonEmpty!1081 (= (_2!607 (h!6112 mapDefault!927)) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1082 true) setRest!1082))))

(declare-fun b!44923 () Bool)

(declare-fun tp!30679 () Bool)

(declare-fun e!25102 () Bool)

(assert (=> b!44923 (= e!25102 (and (inv!1007 (_1!606 (_1!607 (h!6112 mapDefault!927)))) setRes!1082 tp!30679))))

(declare-fun condSetEmpty!1081 () Bool)

(assert (=> b!44923 (= condSetEmpty!1081 (= (_2!607 (h!6112 mapDefault!927)) ((as const (Array Context!182 Bool)) false)))))

(declare-fun condMapEmpty!927 () Bool)

(assert (=> mapNonEmpty!921 (= condMapEmpty!927 (= mapRest!920 ((as const (Array (_ BitVec 32) List!718)) mapDefault!927)))))

(assert (=> mapNonEmpty!921 (= tp!30638 (and e!25102 mapRes!927))))

(declare-fun mapIsEmpty!927 () Bool)

(assert (=> mapIsEmpty!927 mapRes!927))

(declare-fun setNonEmpty!1082 () Bool)

(declare-fun tp!30681 () Bool)

(declare-fun setElem!1081 () Context!182)

(assert (=> setNonEmpty!1082 (= setRes!1081 (and tp!30681 (inv!1007 setElem!1081)))))

(declare-fun setRest!1081 () (InoxSet Context!182))

(assert (=> setNonEmpty!1082 (= (_2!607 (h!6112 mapValue!927)) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1081 true) setRest!1081))))

(assert (= (and mapNonEmpty!921 condMapEmpty!927) mapIsEmpty!927))

(assert (= (and mapNonEmpty!921 (not condMapEmpty!927)) mapNonEmpty!927))

(assert (= (and b!44922 condSetEmpty!1082) setIsEmpty!1081))

(assert (= (and b!44922 (not condSetEmpty!1082)) setNonEmpty!1082))

(assert (= (and mapNonEmpty!927 ((_ is Cons!716) mapValue!927)) b!44922))

(assert (= (and b!44923 condSetEmpty!1081) setIsEmpty!1082))

(assert (= (and b!44923 (not condSetEmpty!1081)) setNonEmpty!1081))

(assert (= (and mapNonEmpty!921 ((_ is Cons!716) mapDefault!927)) b!44923))

(declare-fun m!19254 () Bool)

(assert (=> b!44922 m!19254))

(declare-fun m!19256 () Bool)

(assert (=> setNonEmpty!1081 m!19256))

(declare-fun m!19258 () Bool)

(assert (=> b!44923 m!19258))

(declare-fun m!19260 () Bool)

(assert (=> setNonEmpty!1082 m!19260))

(declare-fun m!19262 () Bool)

(assert (=> mapNonEmpty!927 m!19262))

(declare-fun tp!30686 () Bool)

(declare-fun b!44928 () Bool)

(declare-fun e!25114 () Bool)

(declare-fun setRes!1085 () Bool)

(assert (=> b!44928 (= e!25114 (and (inv!1007 (_1!606 (_1!607 (h!6112 mapValue!920)))) setRes!1085 tp!30686))))

(declare-fun condSetEmpty!1085 () Bool)

(assert (=> b!44928 (= condSetEmpty!1085 (= (_2!607 (h!6112 mapValue!920)) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1085 () Bool)

(assert (=> setIsEmpty!1085 setRes!1085))

(declare-fun setNonEmpty!1085 () Bool)

(declare-fun tp!30687 () Bool)

(declare-fun setElem!1085 () Context!182)

(assert (=> setNonEmpty!1085 (= setRes!1085 (and tp!30687 (inv!1007 setElem!1085)))))

(declare-fun setRest!1085 () (InoxSet Context!182))

(assert (=> setNonEmpty!1085 (= (_2!607 (h!6112 mapValue!920)) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1085 true) setRest!1085))))

(assert (=> mapNonEmpty!921 (= tp!30633 e!25114)))

(assert (= (and b!44928 condSetEmpty!1085) setIsEmpty!1085))

(assert (= (and b!44928 (not condSetEmpty!1085)) setNonEmpty!1085))

(assert (= (and mapNonEmpty!921 ((_ is Cons!716) mapValue!920)) b!44928))

(declare-fun m!19264 () Bool)

(assert (=> b!44928 m!19264))

(declare-fun m!19266 () Bool)

(assert (=> setNonEmpty!1085 m!19266))

(declare-fun setRes!1086 () Bool)

(declare-fun e!25119 () Bool)

(declare-fun b!44929 () Bool)

(declare-fun tp!30689 () Bool)

(assert (=> b!44929 (= e!25119 (and (inv!1007 (_2!604 (_1!605 (h!6111 (zeroValue!496 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333)))))))))) setRes!1086 tp!30689))))

(declare-fun condSetEmpty!1086 () Bool)

(assert (=> b!44929 (= condSetEmpty!1086 (= (_2!605 (h!6111 (zeroValue!496 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333)))))))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1086 () Bool)

(assert (=> setIsEmpty!1086 setRes!1086))

(declare-fun setNonEmpty!1086 () Bool)

(declare-fun tp!30688 () Bool)

(declare-fun setElem!1086 () Context!182)

(assert (=> setNonEmpty!1086 (= setRes!1086 (and tp!30688 (inv!1007 setElem!1086)))))

(declare-fun setRest!1086 () (InoxSet Context!182))

(assert (=> setNonEmpty!1086 (= (_2!605 (h!6111 (zeroValue!496 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1086 true) setRest!1086))))

(assert (=> b!44786 (= tp!30626 e!25119)))

(assert (= (and b!44929 condSetEmpty!1086) setIsEmpty!1086))

(assert (= (and b!44929 (not condSetEmpty!1086)) setNonEmpty!1086))

(assert (= (and b!44786 ((_ is Cons!715) (zeroValue!496 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333)))))))) b!44929))

(declare-fun m!19268 () Bool)

(assert (=> b!44929 m!19268))

(declare-fun m!19270 () Bool)

(assert (=> setNonEmpty!1086 m!19270))

(declare-fun setRes!1087 () Bool)

(declare-fun tp!30691 () Bool)

(declare-fun e!25122 () Bool)

(declare-fun b!44930 () Bool)

(assert (=> b!44930 (= e!25122 (and (inv!1007 (_2!604 (_1!605 (h!6111 (minValue!496 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333)))))))))) setRes!1087 tp!30691))))

(declare-fun condSetEmpty!1087 () Bool)

(assert (=> b!44930 (= condSetEmpty!1087 (= (_2!605 (h!6111 (minValue!496 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333)))))))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1087 () Bool)

(assert (=> setIsEmpty!1087 setRes!1087))

(declare-fun setNonEmpty!1087 () Bool)

(declare-fun tp!30690 () Bool)

(declare-fun setElem!1087 () Context!182)

(assert (=> setNonEmpty!1087 (= setRes!1087 (and tp!30690 (inv!1007 setElem!1087)))))

(declare-fun setRest!1087 () (InoxSet Context!182))

(assert (=> setNonEmpty!1087 (= (_2!605 (h!6111 (minValue!496 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1087 true) setRest!1087))))

(assert (=> b!44786 (= tp!30617 e!25122)))

(assert (= (and b!44930 condSetEmpty!1087) setIsEmpty!1087))

(assert (= (and b!44930 (not condSetEmpty!1087)) setNonEmpty!1087))

(assert (= (and b!44786 ((_ is Cons!715) (minValue!496 (v!12459 (underlying!675 (v!12460 (underlying!676 (cache!721 cacheDown!333)))))))) b!44930))

(declare-fun m!19272 () Bool)

(assert (=> b!44930 m!19272))

(declare-fun m!19274 () Bool)

(assert (=> setNonEmpty!1087 m!19274))

(declare-fun b!44935 () Bool)

(declare-fun e!25127 () Bool)

(declare-fun setRes!1090 () Bool)

(declare-fun tp!30696 () Bool)

(assert (=> b!44935 (= e!25127 (and setRes!1090 tp!30696))))

(declare-fun condSetEmpty!1090 () Bool)

(assert (=> b!44935 (= condSetEmpty!1090 (= (_1!609 (_1!610 (h!6114 (zeroValue!498 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1090 () Bool)

(assert (=> setIsEmpty!1090 setRes!1090))

(declare-fun setNonEmpty!1090 () Bool)

(declare-fun tp!30697 () Bool)

(declare-fun setElem!1090 () Context!182)

(assert (=> setNonEmpty!1090 (= setRes!1090 (and tp!30697 (inv!1007 setElem!1090)))))

(declare-fun setRest!1090 () (InoxSet Context!182))

(assert (=> setNonEmpty!1090 (= (_1!609 (_1!610 (h!6114 (zeroValue!498 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1090 true) setRest!1090))))

(assert (=> b!44780 (= tp!30618 e!25127)))

(assert (= (and b!44935 condSetEmpty!1090) setIsEmpty!1090))

(assert (= (and b!44935 (not condSetEmpty!1090)) setNonEmpty!1090))

(assert (= (and b!44780 ((_ is Cons!718) (zeroValue!498 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45)))))))) b!44935))

(declare-fun m!19276 () Bool)

(assert (=> setNonEmpty!1090 m!19276))

(declare-fun b!44936 () Bool)

(declare-fun e!25129 () Bool)

(declare-fun setRes!1091 () Bool)

(declare-fun tp!30698 () Bool)

(assert (=> b!44936 (= e!25129 (and setRes!1091 tp!30698))))

(declare-fun condSetEmpty!1091 () Bool)

(assert (=> b!44936 (= condSetEmpty!1091 (= (_1!609 (_1!610 (h!6114 (minValue!498 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1091 () Bool)

(assert (=> setIsEmpty!1091 setRes!1091))

(declare-fun setNonEmpty!1091 () Bool)

(declare-fun tp!30699 () Bool)

(declare-fun setElem!1091 () Context!182)

(assert (=> setNonEmpty!1091 (= setRes!1091 (and tp!30699 (inv!1007 setElem!1091)))))

(declare-fun setRest!1091 () (InoxSet Context!182))

(assert (=> setNonEmpty!1091 (= (_1!609 (_1!610 (h!6114 (minValue!498 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1091 true) setRest!1091))))

(assert (=> b!44780 (= tp!30631 e!25129)))

(assert (= (and b!44936 condSetEmpty!1091) setIsEmpty!1091))

(assert (= (and b!44936 (not condSetEmpty!1091)) setNonEmpty!1091))

(assert (= (and b!44780 ((_ is Cons!718) (minValue!498 (v!12463 (underlying!679 (v!12464 (underlying!680 (cache!723 cacheFurthestNullable!45)))))))) b!44936))

(declare-fun m!19278 () Bool)

(assert (=> setNonEmpty!1091 m!19278))

(declare-fun b!44937 () Bool)

(declare-fun e!25131 () Bool)

(declare-fun setRes!1092 () Bool)

(declare-fun tp!30700 () Bool)

(assert (=> b!44937 (= e!25131 (and setRes!1092 tp!30700))))

(declare-fun condSetEmpty!1092 () Bool)

(assert (=> b!44937 (= condSetEmpty!1092 (= (_1!609 (_1!610 (h!6114 mapDefault!921))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1092 () Bool)

(assert (=> setIsEmpty!1092 setRes!1092))

(declare-fun setNonEmpty!1092 () Bool)

(declare-fun tp!30701 () Bool)

(declare-fun setElem!1092 () Context!182)

(assert (=> setNonEmpty!1092 (= setRes!1092 (and tp!30701 (inv!1007 setElem!1092)))))

(declare-fun setRest!1092 () (InoxSet Context!182))

(assert (=> setNonEmpty!1092 (= (_1!609 (_1!610 (h!6114 mapDefault!921))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1092 true) setRest!1092))))

(assert (=> b!44787 (= tp!30629 e!25131)))

(assert (= (and b!44937 condSetEmpty!1092) setIsEmpty!1092))

(assert (= (and b!44937 (not condSetEmpty!1092)) setNonEmpty!1092))

(assert (= (and b!44787 ((_ is Cons!718) mapDefault!921)) b!44937))

(declare-fun m!19280 () Bool)

(assert (=> setNonEmpty!1092 m!19280))

(declare-fun tp!30702 () Bool)

(declare-fun setRes!1093 () Bool)

(declare-fun e!25133 () Bool)

(declare-fun b!44938 () Bool)

(assert (=> b!44938 (= e!25133 (and (inv!1007 (_1!606 (_1!607 (h!6112 (zeroValue!497 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320)))))))))) setRes!1093 tp!30702))))

(declare-fun condSetEmpty!1093 () Bool)

(assert (=> b!44938 (= condSetEmpty!1093 (= (_2!607 (h!6112 (zeroValue!497 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320)))))))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1093 () Bool)

(assert (=> setIsEmpty!1093 setRes!1093))

(declare-fun setNonEmpty!1093 () Bool)

(declare-fun tp!30703 () Bool)

(declare-fun setElem!1093 () Context!182)

(assert (=> setNonEmpty!1093 (= setRes!1093 (and tp!30703 (inv!1007 setElem!1093)))))

(declare-fun setRest!1093 () (InoxSet Context!182))

(assert (=> setNonEmpty!1093 (= (_2!607 (h!6112 (zeroValue!497 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1093 true) setRest!1093))))

(assert (=> b!44761 (= tp!30630 e!25133)))

(assert (= (and b!44938 condSetEmpty!1093) setIsEmpty!1093))

(assert (= (and b!44938 (not condSetEmpty!1093)) setNonEmpty!1093))

(assert (= (and b!44761 ((_ is Cons!716) (zeroValue!497 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320)))))))) b!44938))

(declare-fun m!19282 () Bool)

(assert (=> b!44938 m!19282))

(declare-fun m!19284 () Bool)

(assert (=> setNonEmpty!1093 m!19284))

(declare-fun setRes!1094 () Bool)

(declare-fun tp!30704 () Bool)

(declare-fun e!25136 () Bool)

(declare-fun b!44939 () Bool)

(assert (=> b!44939 (= e!25136 (and (inv!1007 (_1!606 (_1!607 (h!6112 (minValue!497 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320)))))))))) setRes!1094 tp!30704))))

(declare-fun condSetEmpty!1094 () Bool)

(assert (=> b!44939 (= condSetEmpty!1094 (= (_2!607 (h!6112 (minValue!497 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320)))))))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1094 () Bool)

(assert (=> setIsEmpty!1094 setRes!1094))

(declare-fun setNonEmpty!1094 () Bool)

(declare-fun tp!30705 () Bool)

(declare-fun setElem!1094 () Context!182)

(assert (=> setNonEmpty!1094 (= setRes!1094 (and tp!30705 (inv!1007 setElem!1094)))))

(declare-fun setRest!1094 () (InoxSet Context!182))

(assert (=> setNonEmpty!1094 (= (_2!607 (h!6112 (minValue!497 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1094 true) setRest!1094))))

(assert (=> b!44761 (= tp!30619 e!25136)))

(assert (= (and b!44939 condSetEmpty!1094) setIsEmpty!1094))

(assert (= (and b!44939 (not condSetEmpty!1094)) setNonEmpty!1094))

(assert (= (and b!44761 ((_ is Cons!716) (minValue!497 (v!12461 (underlying!677 (v!12462 (underlying!678 (cache!722 cacheUp!320)))))))) b!44939))

(declare-fun m!19286 () Bool)

(assert (=> b!44939 m!19286))

(declare-fun m!19288 () Bool)

(assert (=> setNonEmpty!1094 m!19288))

(declare-fun condMapEmpty!930 () Bool)

(declare-fun mapDefault!930 () List!720)

(assert (=> mapNonEmpty!919 (= condMapEmpty!930 (= mapRest!919 ((as const (Array (_ BitVec 32) List!720)) mapDefault!930)))))

(declare-fun e!25147 () Bool)

(declare-fun mapRes!930 () Bool)

(assert (=> mapNonEmpty!919 (= tp!30627 (and e!25147 mapRes!930))))

(declare-fun mapIsEmpty!930 () Bool)

(assert (=> mapIsEmpty!930 mapRes!930))

(declare-fun b!44946 () Bool)

(declare-fun setRes!1100 () Bool)

(declare-fun tp!30717 () Bool)

(assert (=> b!44946 (= e!25147 (and setRes!1100 tp!30717))))

(declare-fun condSetEmpty!1099 () Bool)

(assert (=> b!44946 (= condSetEmpty!1099 (= (_1!609 (_1!610 (h!6114 mapDefault!930))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1099 () Bool)

(assert (=> setIsEmpty!1099 setRes!1100))

(declare-fun setIsEmpty!1100 () Bool)

(declare-fun setRes!1099 () Bool)

(assert (=> setIsEmpty!1100 setRes!1099))

(declare-fun mapNonEmpty!930 () Bool)

(declare-fun tp!30718 () Bool)

(declare-fun e!25148 () Bool)

(assert (=> mapNonEmpty!930 (= mapRes!930 (and tp!30718 e!25148))))

(declare-fun mapKey!930 () (_ BitVec 32))

(declare-fun mapValue!930 () List!720)

(declare-fun mapRest!930 () (Array (_ BitVec 32) List!720))

(assert (=> mapNonEmpty!930 (= mapRest!919 (store mapRest!930 mapKey!930 mapValue!930))))

(declare-fun setNonEmpty!1099 () Bool)

(declare-fun tp!30716 () Bool)

(declare-fun setElem!1100 () Context!182)

(assert (=> setNonEmpty!1099 (= setRes!1099 (and tp!30716 (inv!1007 setElem!1100)))))

(declare-fun setRest!1100 () (InoxSet Context!182))

(assert (=> setNonEmpty!1099 (= (_1!609 (_1!610 (h!6114 mapValue!930))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1100 true) setRest!1100))))

(declare-fun b!44947 () Bool)

(declare-fun tp!30720 () Bool)

(assert (=> b!44947 (= e!25148 (and setRes!1099 tp!30720))))

(declare-fun condSetEmpty!1100 () Bool)

(assert (=> b!44947 (= condSetEmpty!1100 (= (_1!609 (_1!610 (h!6114 mapValue!930))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setNonEmpty!1100 () Bool)

(declare-fun tp!30719 () Bool)

(declare-fun setElem!1099 () Context!182)

(assert (=> setNonEmpty!1100 (= setRes!1100 (and tp!30719 (inv!1007 setElem!1099)))))

(declare-fun setRest!1099 () (InoxSet Context!182))

(assert (=> setNonEmpty!1100 (= (_1!609 (_1!610 (h!6114 mapDefault!930))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1099 true) setRest!1099))))

(assert (= (and mapNonEmpty!919 condMapEmpty!930) mapIsEmpty!930))

(assert (= (and mapNonEmpty!919 (not condMapEmpty!930)) mapNonEmpty!930))

(assert (= (and b!44947 condSetEmpty!1100) setIsEmpty!1100))

(assert (= (and b!44947 (not condSetEmpty!1100)) setNonEmpty!1099))

(assert (= (and mapNonEmpty!930 ((_ is Cons!718) mapValue!930)) b!44947))

(assert (= (and b!44946 condSetEmpty!1099) setIsEmpty!1099))

(assert (= (and b!44946 (not condSetEmpty!1099)) setNonEmpty!1100))

(assert (= (and mapNonEmpty!919 ((_ is Cons!718) mapDefault!930)) b!44946))

(declare-fun m!19290 () Bool)

(assert (=> mapNonEmpty!930 m!19290))

(declare-fun m!19292 () Bool)

(assert (=> setNonEmpty!1099 m!19292))

(declare-fun m!19294 () Bool)

(assert (=> setNonEmpty!1100 m!19294))

(declare-fun b!44948 () Bool)

(declare-fun e!25151 () Bool)

(declare-fun setRes!1101 () Bool)

(declare-fun tp!30721 () Bool)

(assert (=> b!44948 (= e!25151 (and setRes!1101 tp!30721))))

(declare-fun condSetEmpty!1101 () Bool)

(assert (=> b!44948 (= condSetEmpty!1101 (= (_1!609 (_1!610 (h!6114 mapValue!921))) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1101 () Bool)

(assert (=> setIsEmpty!1101 setRes!1101))

(declare-fun setNonEmpty!1101 () Bool)

(declare-fun tp!30722 () Bool)

(declare-fun setElem!1101 () Context!182)

(assert (=> setNonEmpty!1101 (= setRes!1101 (and tp!30722 (inv!1007 setElem!1101)))))

(declare-fun setRest!1101 () (InoxSet Context!182))

(assert (=> setNonEmpty!1101 (= (_1!609 (_1!610 (h!6114 mapValue!921))) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1101 true) setRest!1101))))

(assert (=> mapNonEmpty!919 (= tp!30634 e!25151)))

(assert (= (and b!44948 condSetEmpty!1101) setIsEmpty!1101))

(assert (= (and b!44948 (not condSetEmpty!1101)) setNonEmpty!1101))

(assert (= (and mapNonEmpty!919 ((_ is Cons!718) mapValue!921)) b!44948))

(declare-fun m!19296 () Bool)

(assert (=> setNonEmpty!1101 m!19296))

(declare-fun setRes!1102 () Bool)

(declare-fun b!44949 () Bool)

(declare-fun tp!30724 () Bool)

(declare-fun e!25155 () Bool)

(assert (=> b!44949 (= e!25155 (and (inv!1007 (_2!604 (_1!605 (h!6111 mapDefault!920)))) setRes!1102 tp!30724))))

(declare-fun condSetEmpty!1102 () Bool)

(assert (=> b!44949 (= condSetEmpty!1102 (= (_2!605 (h!6111 mapDefault!920)) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1102 () Bool)

(assert (=> setIsEmpty!1102 setRes!1102))

(declare-fun setNonEmpty!1102 () Bool)

(declare-fun tp!30723 () Bool)

(declare-fun setElem!1102 () Context!182)

(assert (=> setNonEmpty!1102 (= setRes!1102 (and tp!30723 (inv!1007 setElem!1102)))))

(declare-fun setRest!1102 () (InoxSet Context!182))

(assert (=> setNonEmpty!1102 (= (_2!605 (h!6111 mapDefault!920)) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1102 true) setRest!1102))))

(assert (=> b!44783 (= tp!30628 e!25155)))

(assert (= (and b!44949 condSetEmpty!1102) setIsEmpty!1102))

(assert (= (and b!44949 (not condSetEmpty!1102)) setNonEmpty!1102))

(assert (= (and b!44783 ((_ is Cons!715) mapDefault!920)) b!44949))

(declare-fun m!19298 () Bool)

(assert (=> b!44949 m!19298))

(declare-fun m!19300 () Bool)

(assert (=> setNonEmpty!1102 m!19300))

(declare-fun b!44950 () Bool)

(declare-fun e!25156 () Bool)

(declare-fun tp!30726 () Bool)

(declare-fun tp!30725 () Bool)

(assert (=> b!44950 (= e!25156 (and (inv!1000 (left!568 (c!16085 (totalInput!1537 cacheFurthestNullable!45)))) tp!30725 (inv!1000 (right!898 (c!16085 (totalInput!1537 cacheFurthestNullable!45)))) tp!30726))))

(declare-fun b!44951 () Bool)

(assert (=> b!44951 (= e!25156 (inv!1008 (xs!2715 (c!16085 (totalInput!1537 cacheFurthestNullable!45)))))))

(assert (=> b!44765 (= tp!30637 (and (inv!1000 (c!16085 (totalInput!1537 cacheFurthestNullable!45))) e!25156))))

(assert (= (and b!44765 ((_ is Node!136) (c!16085 (totalInput!1537 cacheFurthestNullable!45)))) b!44950))

(assert (= (and b!44765 ((_ is Leaf!331) (c!16085 (totalInput!1537 cacheFurthestNullable!45)))) b!44951))

(declare-fun m!19302 () Bool)

(assert (=> b!44950 m!19302))

(declare-fun m!19304 () Bool)

(assert (=> b!44950 m!19304))

(declare-fun m!19306 () Bool)

(assert (=> b!44951 m!19306))

(assert (=> b!44765 m!19036))

(declare-fun b!44954 () Bool)

(declare-fun e!25160 () Bool)

(assert (=> b!44954 (= e!25160 true)))

(declare-fun b!44953 () Bool)

(declare-fun e!25159 () Bool)

(assert (=> b!44953 (= e!25159 e!25160)))

(declare-fun b!44952 () Bool)

(declare-fun e!25158 () Bool)

(assert (=> b!44952 (= e!25158 e!25159)))

(assert (=> b!44801 e!25158))

(assert (= b!44953 b!44954))

(assert (= b!44952 b!44953))

(assert (= (and b!44801 ((_ is Cons!713) (t!16562 lt!5712))) b!44952))

(assert (=> b!44954 (< (dynLambda!96 order!151 (toValue!646 (transformation!167 (h!6109 (t!16562 lt!5712))))) (dynLambda!97 order!153 lambda!818))))

(assert (=> b!44954 (< (dynLambda!98 order!155 (toChars!505 (transformation!167 (h!6109 (t!16562 lt!5712))))) (dynLambda!97 order!153 lambda!818))))

(declare-fun tp!30727 () Bool)

(declare-fun b!44955 () Bool)

(declare-fun e!25161 () Bool)

(declare-fun setRes!1103 () Bool)

(assert (=> b!44955 (= e!25161 (and (inv!1007 (_1!606 (_1!607 (h!6112 mapDefault!919)))) setRes!1103 tp!30727))))

(declare-fun condSetEmpty!1103 () Bool)

(assert (=> b!44955 (= condSetEmpty!1103 (= (_2!607 (h!6112 mapDefault!919)) ((as const (Array Context!182 Bool)) false)))))

(declare-fun setIsEmpty!1103 () Bool)

(assert (=> setIsEmpty!1103 setRes!1103))

(declare-fun setNonEmpty!1103 () Bool)

(declare-fun tp!30728 () Bool)

(declare-fun setElem!1103 () Context!182)

(assert (=> setNonEmpty!1103 (= setRes!1103 (and tp!30728 (inv!1007 setElem!1103)))))

(declare-fun setRest!1103 () (InoxSet Context!182))

(assert (=> setNonEmpty!1103 (= (_2!607 (h!6112 mapDefault!919)) ((_ map or) (store ((as const (Array Context!182 Bool)) false) setElem!1103 true) setRest!1103))))

(assert (=> b!44774 (= tp!30625 e!25161)))

(assert (= (and b!44955 condSetEmpty!1103) setIsEmpty!1103))

(assert (= (and b!44955 (not condSetEmpty!1103)) setNonEmpty!1103))

(assert (= (and b!44774 ((_ is Cons!716) mapDefault!919)) b!44955))

(declare-fun m!19308 () Bool)

(assert (=> b!44955 m!19308))

(declare-fun m!19310 () Bool)

(assert (=> setNonEmpty!1103 m!19310))

(declare-fun b_lambda!255 () Bool)

(assert (= b_lambda!253 (or b!44784 b_lambda!255)))

(declare-fun bs!6248 () Bool)

(declare-fun d!5231 () Bool)

(assert (= bs!6248 (and d!5231 b!44784)))

(assert (=> bs!6248 (= (dynLambda!99 lambda!818 (h!6113 lt!5722)) (rulesProduceIndividualToken!7 Lexer!59 lt!5712 (h!6113 lt!5722)))))

(assert (=> bs!6248 m!19164))

(assert (=> b!44893 d!5231))

(check-sat (not d!5171) (not d!5163) (not b!44901) (not setNonEmpty!1102) (not b!44951) (not b!44886) (not b_next!1127) (not setNonEmpty!1100) (not b!44950) (not b!44765) (not d!5191) (not mapNonEmpty!924) (not setNonEmpty!1087) b_and!1161 (not setNonEmpty!1091) (not b!44768) (not b!44922) (not b!44860) (not b_lambda!255) (not b!44872) (not b!44845) (not b!44888) (not setNonEmpty!1092) (not b!44929) b_and!1167 (not setNonEmpty!1085) (not d!5207) (not b!44840) (not d!5203) (not b!44882) (not d!5167) (not b!44949) (not b!44947) (not b!44838) (not d!5173) (not b!44946) (not d!5211) (not setNonEmpty!1090) (not d!5195) (not b_next!1125) (not b!44867) (not b!44824) (not b!44914) (not b!44876) (not bs!6248) (not b!44935) b_and!1159 (not b!44923) (not b!44938) (not b!44866) (not b!44955) (not setNonEmpty!1073) (not d!5177) (not b!44856) (not d!5201) (not d!5175) (not d!5199) (not b_next!1133) (not b!44874) (not b!44858) (not b!44952) (not b!44930) (not d!5209) (not b!44937) (not b!44928) (not b!44827) (not d!5185) (not d!5229) (not d!5165) (not d!5169) (not setNonEmpty!1094) (not b!44826) (not mapNonEmpty!927) (not d!5197) (not setNonEmpty!1072) (not b!44812) (not b!44839) (not setNonEmpty!1101) (not d!5205) (not b!44948) (not b!44823) (not b!44865) (not b!44939) (not d!5179) b_and!1163 (not setNonEmpty!1086) (not b!44842) (not b!44879) (not setNonEmpty!1076) (not b_next!1135) (not setNonEmpty!1103) (not b!44894) (not mapNonEmpty!930) (not setNonEmpty!1093) (not setNonEmpty!1099) (not b!44902) (not b!44810) (not d!5193) (not setNonEmpty!1081) (not b!44936) (not b_next!1131) (not setNonEmpty!1082) b_and!1169 (not d!5223) (not b_next!1129) (not d!5217) (not b!44915) (not b!44907) (not b!44885) (not b!44857) b_and!1165 (not b!44873) (not b!44859))
(check-sat (not b_next!1127) b_and!1161 b_and!1167 (not b_next!1125) b_and!1159 (not b_next!1133) b_and!1163 (not b_next!1135) (not b_next!1131) b_and!1165 b_and!1169 (not b_next!1129))
