; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2686 () Bool)

(assert start!2686)

(declare-fun b!43659 () Bool)

(declare-fun b_free!1077 () Bool)

(declare-fun b_next!1077 () Bool)

(assert (=> b!43659 (= b_free!1077 (not b_next!1077))))

(declare-fun tp!30094 () Bool)

(declare-fun b_and!1111 () Bool)

(assert (=> b!43659 (= tp!30094 b_and!1111)))

(declare-fun b!43676 () Bool)

(declare-fun b_free!1079 () Bool)

(declare-fun b_next!1079 () Bool)

(assert (=> b!43676 (= b_free!1079 (not b_next!1079))))

(declare-fun tp!30104 () Bool)

(declare-fun b_and!1113 () Bool)

(assert (=> b!43676 (= tp!30104 b_and!1113)))

(declare-fun b!43690 () Bool)

(declare-fun b_free!1081 () Bool)

(declare-fun b_next!1081 () Bool)

(assert (=> b!43690 (= b_free!1081 (not b_next!1081))))

(declare-fun tp!30098 () Bool)

(declare-fun b_and!1115 () Bool)

(assert (=> b!43690 (= tp!30098 b_and!1115)))

(declare-fun b!43669 () Bool)

(declare-fun b_free!1083 () Bool)

(declare-fun b_next!1083 () Bool)

(assert (=> b!43669 (= b_free!1083 (not b_next!1083))))

(declare-fun tp!30090 () Bool)

(declare-fun b_and!1117 () Bool)

(assert (=> b!43669 (= tp!30090 b_and!1117)))

(declare-fun b!43686 () Bool)

(declare-fun b_free!1085 () Bool)

(declare-fun b_next!1085 () Bool)

(assert (=> b!43686 (= b_free!1085 (not b_next!1085))))

(declare-fun tp!30086 () Bool)

(declare-fun b_and!1119 () Bool)

(assert (=> b!43686 (= tp!30086 b_and!1119)))

(declare-fun b!43674 () Bool)

(declare-fun b_free!1087 () Bool)

(declare-fun b_next!1087 () Bool)

(assert (=> b!43674 (= b_free!1087 (not b_next!1087))))

(declare-fun tp!30088 () Bool)

(declare-fun b_and!1121 () Bool)

(assert (=> b!43674 (= tp!30088 b_and!1121)))

(declare-fun b!43704 () Bool)

(declare-fun e!24001 () Bool)

(assert (=> b!43704 (= e!24001 true)))

(declare-fun b!43703 () Bool)

(declare-fun e!24000 () Bool)

(assert (=> b!43703 (= e!24000 e!24001)))

(declare-fun b!43702 () Bool)

(declare-fun e!23999 () Bool)

(assert (=> b!43702 (= e!23999 e!24000)))

(declare-fun b!43660 () Bool)

(assert (=> b!43660 e!23999))

(assert (= b!43703 b!43704))

(assert (= b!43702 b!43703))

(declare-datatypes ((List!684 0))(
  ( (Nil!682) (Cons!682 (h!6078 (_ BitVec 16)) (t!16385 List!684)) )
))
(declare-datatypes ((TokenValue!153 0))(
  ( (FloatLiteralValue!306 (text!1516 List!684)) (TokenValueExt!152 (__x!1170 Int)) (Broken!765 (value!7429 List!684)) (Object!154) (End!153) (Def!153) (Underscore!153) (Match!153) (Else!153) (Error!153) (Case!153) (If!153) (Extends!153) (Abstract!153) (Class!153) (Val!153) (DelimiterValue!306 (del!213 List!684)) (KeywordValue!159 (value!7430 List!684)) (CommentValue!306 (value!7431 List!684)) (WhitespaceValue!306 (value!7432 List!684)) (IndentationValue!153 (value!7433 List!684)) (String!1060) (Int32!153) (Broken!766 (value!7434 List!684)) (Boolean!154) (Unit!309) (OperatorValue!156 (op!213 List!684)) (IdentifierValue!306 (value!7435 List!684)) (IdentifierValue!307 (value!7436 List!684)) (WhitespaceValue!307 (value!7437 List!684)) (True!306) (False!306) (Broken!767 (value!7438 List!684)) (Broken!768 (value!7439 List!684)) (True!307) (RightBrace!153) (RightBracket!153) (Colon!153) (Null!153) (Comma!153) (LeftBracket!153) (False!307) (LeftBrace!153) (ImaginaryLiteralValue!153 (text!1517 List!684)) (StringLiteralValue!459 (value!7440 List!684)) (EOFValue!153 (value!7441 List!684)) (IdentValue!153 (value!7442 List!684)) (DelimiterValue!307 (value!7443 List!684)) (DedentValue!153 (value!7444 List!684)) (NewLineValue!153 (value!7445 List!684)) (IntegerValue!459 (value!7446 (_ BitVec 32)) (text!1518 List!684)) (IntegerValue!460 (value!7447 Int) (text!1519 List!684)) (Times!153) (Or!153) (Equal!153) (Minus!153) (Broken!769 (value!7448 List!684)) (And!153) (Div!153) (LessEqual!153) (Mod!153) (Concat!382) (Not!153) (Plus!153) (SpaceValue!153 (value!7449 List!684)) (IntegerValue!461 (value!7450 Int) (text!1520 List!684)) (StringLiteralValue!460 (text!1521 List!684)) (FloatLiteralValue!307 (text!1522 List!684)) (BytesLiteralValue!153 (value!7451 List!684)) (CommentValue!307 (value!7452 List!684)) (StringLiteralValue!461 (value!7453 List!684)) (ErrorTokenValue!153 (msg!214 List!684)) )
))
(declare-datatypes ((Regex!229 0))(
  ( (ElementMatch!229 (c!15985 (_ BitVec 16))) (Concat!383 (regOne!970 Regex!229) (regTwo!970 Regex!229)) (EmptyExpr!229) (Star!229 (reg!558 Regex!229)) (EmptyLang!229) (Union!229 (regOne!971 Regex!229) (regTwo!971 Regex!229)) )
))
(declare-datatypes ((String!1061 0))(
  ( (String!1062 (value!7454 String)) )
))
(declare-datatypes ((IArray!259 0))(
  ( (IArray!260 (innerList!187 List!684)) )
))
(declare-datatypes ((Conc!129 0))(
  ( (Node!129 (left!551 Conc!129) (right!881 Conc!129) (csize!488 Int) (cheight!340 Int)) (Leaf!322 (xs!2708 IArray!259) (csize!489 Int)) (Empty!129) )
))
(declare-datatypes ((BalanceConc!258 0))(
  ( (BalanceConc!259 (c!15986 Conc!129)) )
))
(declare-datatypes ((TokenValueInjection!130 0))(
  ( (TokenValueInjection!131 (toValue!642 Int) (toChars!501 Int)) )
))
(declare-datatypes ((Rule!126 0))(
  ( (Rule!127 (regex!163 Regex!229) (tag!341 String!1061) (isSeparator!163 Bool) (transformation!163 TokenValueInjection!130)) )
))
(declare-datatypes ((List!685 0))(
  ( (Nil!683) (Cons!683 (h!6079 Rule!126) (t!16386 List!685)) )
))
(declare-fun lt!5180 () List!685)

(get-info :version)

(assert (= (and b!43660 ((_ is Cons!683) lt!5180)) b!43702))

(declare-fun order!127 () Int)

(declare-fun order!129 () Int)

(declare-fun lambda!746 () Int)

(declare-fun dynLambda!82 (Int Int) Int)

(declare-fun dynLambda!83 (Int Int) Int)

(assert (=> b!43704 (< (dynLambda!82 order!127 (toValue!642 (transformation!163 (h!6079 lt!5180)))) (dynLambda!83 order!129 lambda!746))))

(declare-fun order!131 () Int)

(declare-fun dynLambda!84 (Int Int) Int)

(assert (=> b!43704 (< (dynLambda!84 order!131 (toChars!501 (transformation!163 (h!6079 lt!5180)))) (dynLambda!83 order!129 lambda!746))))

(declare-fun e!23984 () Bool)

(declare-fun e!23973 () Bool)

(declare-fun tp!30103 () Bool)

(declare-datatypes ((List!686 0))(
  ( (Nil!684) (Cons!684 (h!6080 Regex!229) (t!16387 List!686)) )
))
(declare-datatypes ((Context!174 0))(
  ( (Context!175 (exprs!587 List!686)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!258 0))(
  ( (tuple3!259 (_1!569 (InoxSet Context!174)) (_2!569 Int) (_3!162 Int)) )
))
(declare-datatypes ((tuple2!814 0))(
  ( (tuple2!815 (_1!570 tuple3!258) (_2!570 Int)) )
))
(declare-datatypes ((List!687 0))(
  ( (Nil!685) (Cons!685 (h!6081 tuple2!814) (t!16388 List!687)) )
))
(declare-datatypes ((array!756 0))(
  ( (array!757 (arr!369 (Array (_ BitVec 32) (_ BitVec 64))) (size!676 (_ BitVec 32))) )
))
(declare-datatypes ((array!758 0))(
  ( (array!759 (arr!370 (Array (_ BitVec 32) List!687)) (size!677 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!456 0))(
  ( (LongMapFixedSize!457 (defaultEntry!566 Int) (mask!944 (_ BitVec 32)) (extraKeys!474 (_ BitVec 32)) (zeroValue!484 List!687) (minValue!484 List!687) (_size!588 (_ BitVec 32)) (_keys!519 array!756) (_values!506 array!758) (_vacant!288 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!224 0))(
  ( (HashableExt!223 (__x!1171 Int)) )
))
(declare-datatypes ((Cell!901 0))(
  ( (Cell!902 (v!12433 LongMapFixedSize!456)) )
))
(declare-datatypes ((MutLongMap!228 0))(
  ( (LongMap!228 (underlying!651 Cell!901)) (MutLongMapExt!227 (__x!1172 Int)) )
))
(declare-datatypes ((Cell!903 0))(
  ( (Cell!904 (v!12434 MutLongMap!228)) )
))
(declare-datatypes ((MutableMap!224 0))(
  ( (MutableMapExt!223 (__x!1173 Int)) (HashMap!224 (underlying!652 Cell!903) (hashF!2092 Hashable!224) (_size!589 (_ BitVec 32)) (defaultValue!373 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!100 0))(
  ( (CacheFurthestNullable!101 (cache!709 MutableMap!224) (totalInput!1530 BalanceConc!258)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!100)

(declare-fun tp!30099 () Bool)

(declare-fun array_inv!246 (array!756) Bool)

(declare-fun array_inv!247 (array!758) Bool)

(assert (=> b!43659 (= e!23984 (and tp!30094 tp!30103 tp!30099 (array_inv!246 (_keys!519 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))) (array_inv!247 (_values!506 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))) e!23973))))

(declare-fun e!23977 () Bool)

(declare-datatypes ((Token!92 0))(
  ( (Token!93 (value!7455 TokenValue!153) (rule!639 Rule!126) (size!678 Int) (originalCharacters!217 List!684)) )
))
(declare-datatypes ((List!688 0))(
  ( (Nil!686) (Cons!686 (h!6082 Token!92) (t!16389 List!688)) )
))
(declare-fun lt!5193 () List!688)

(declare-fun forall!70 (List!688 Int) Bool)

(assert (=> b!43660 (= e!23977 (not (forall!70 lt!5193 lambda!746)))))

(declare-fun mapNonEmpty!862 () Bool)

(declare-fun mapRes!863 () Bool)

(declare-fun tp!30089 () Bool)

(declare-fun tp!30091 () Bool)

(assert (=> mapNonEmpty!862 (= mapRes!863 (and tp!30089 tp!30091))))

(declare-fun mapRest!862 () (Array (_ BitVec 32) List!687))

(declare-fun mapKey!864 () (_ BitVec 32))

(declare-fun mapValue!863 () List!687)

(assert (=> mapNonEmpty!862 (= (arr!370 (_values!506 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))) (store mapRest!862 mapKey!864 mapValue!863))))

(declare-fun b!43661 () Bool)

(declare-fun e!23976 () Bool)

(assert (=> b!43661 (= e!23976 e!23977)))

(declare-fun res!30337 () Bool)

(assert (=> b!43661 (=> (not res!30337) (not e!23977))))

(declare-fun lt!5182 () List!688)

(declare-datatypes ((IArray!261 0))(
  ( (IArray!262 (innerList!188 List!688)) )
))
(declare-datatypes ((Conc!130 0))(
  ( (Node!130 (left!552 Conc!130) (right!882 Conc!130) (csize!490 Int) (cheight!341 Int)) (Leaf!323 (xs!2709 IArray!261) (csize!491 Int)) (Empty!130) )
))
(declare-datatypes ((BalanceConc!260 0))(
  ( (BalanceConc!261 (c!15987 Conc!130)) )
))
(declare-datatypes ((tuple2!816 0))(
  ( (tuple2!817 (_1!571 BalanceConc!260) (_2!571 BalanceConc!258)) )
))
(declare-fun lt!5181 () tuple2!816)

(declare-fun list!181 (BalanceConc!260) List!688)

(assert (=> b!43661 (= res!30337 (= lt!5182 (list!181 (_1!571 lt!5181))))))

(declare-fun lt!5187 () BalanceConc!258)

(declare-datatypes ((LexerInterface!58 0))(
  ( (LexerInterfaceExt!55 (__x!1174 Int)) (Lexer!56) )
))
(declare-fun lex!33 (LexerInterface!58 List!685 BalanceConc!258) tuple2!816)

(assert (=> b!43661 (= lt!5181 (lex!33 Lexer!56 lt!5180 lt!5187))))

(declare-fun b!43662 () Bool)

(declare-fun tp!30092 () Bool)

(assert (=> b!43662 (= e!23973 (and tp!30092 mapRes!863))))

(declare-fun condMapEmpty!863 () Bool)

(declare-fun mapDefault!863 () List!687)

(assert (=> b!43662 (= condMapEmpty!863 (= (arr!370 (_values!506 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!687)) mapDefault!863)))))

(declare-fun e!23964 () Bool)

(declare-fun e!23988 () Bool)

(declare-fun b!43663 () Bool)

(declare-fun e!23982 () Bool)

(declare-fun inv!969 (BalanceConc!258) Bool)

(assert (=> b!43663 (= e!23964 (and e!23982 (inv!969 (totalInput!1530 cacheFurthestNullable!45)) e!23988))))

(declare-fun b!43664 () Bool)

(declare-fun e!23968 () Bool)

(assert (=> b!43664 (= e!23968 e!23976)))

(declare-fun res!30339 () Bool)

(assert (=> b!43664 (=> (not res!30339) (not e!23976))))

(declare-fun lt!5185 () List!684)

(declare-fun list!182 (BalanceConc!258) List!684)

(assert (=> b!43664 (= res!30339 (= (list!182 lt!5187) lt!5185))))

(declare-fun seqFromList!28 (List!684) BalanceConc!258)

(assert (=> b!43664 (= lt!5187 (seqFromList!28 lt!5185))))

(declare-fun input!525 () BalanceConc!258)

(assert (=> b!43664 (= lt!5185 (list!182 input!525))))

(declare-fun b!43665 () Bool)

(declare-fun e!23974 () Bool)

(declare-fun e!23963 () Bool)

(declare-fun lt!5186 () MutLongMap!228)

(assert (=> b!43665 (= e!23974 (and e!23963 ((_ is LongMap!228) lt!5186)))))

(assert (=> b!43665 (= lt!5186 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))

(declare-fun b!43666 () Bool)

(declare-fun res!30338 () Bool)

(declare-fun e!23981 () Bool)

(assert (=> b!43666 (=> (not res!30338) (not e!23981))))

(declare-datatypes ((tuple3!260 0))(
  ( (tuple3!261 (_1!572 Regex!229) (_2!572 Context!174) (_3!163 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!818 0))(
  ( (tuple2!819 (_1!573 tuple3!260) (_2!573 (InoxSet Context!174))) )
))
(declare-datatypes ((List!689 0))(
  ( (Nil!687) (Cons!687 (h!6083 tuple2!818) (t!16390 List!689)) )
))
(declare-datatypes ((array!760 0))(
  ( (array!761 (arr!371 (Array (_ BitVec 32) List!689)) (size!679 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!458 0))(
  ( (LongMapFixedSize!459 (defaultEntry!567 Int) (mask!945 (_ BitVec 32)) (extraKeys!475 (_ BitVec 32)) (zeroValue!485 List!689) (minValue!485 List!689) (_size!590 (_ BitVec 32)) (_keys!520 array!756) (_values!507 array!760) (_vacant!289 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!905 0))(
  ( (Cell!906 (v!12435 LongMapFixedSize!458)) )
))
(declare-datatypes ((MutLongMap!229 0))(
  ( (LongMap!229 (underlying!653 Cell!905)) (MutLongMapExt!228 (__x!1175 Int)) )
))
(declare-datatypes ((Cell!907 0))(
  ( (Cell!908 (v!12436 MutLongMap!229)) )
))
(declare-datatypes ((Hashable!225 0))(
  ( (HashableExt!224 (__x!1176 Int)) )
))
(declare-datatypes ((MutableMap!225 0))(
  ( (MutableMapExt!224 (__x!1177 Int)) (HashMap!225 (underlying!654 Cell!907) (hashF!2093 Hashable!225) (_size!591 (_ BitVec 32)) (defaultValue!374 Int)) )
))
(declare-datatypes ((CacheDown!152 0))(
  ( (CacheDown!153 (cache!710 MutableMap!225)) )
))
(declare-fun cacheDown!333 () CacheDown!152)

(declare-fun valid!207 (CacheDown!152) Bool)

(assert (=> b!43666 (= res!30338 (valid!207 cacheDown!333))))

(declare-fun b!43667 () Bool)

(declare-fun e!23969 () Bool)

(assert (=> b!43667 (= e!23969 e!23984)))

(declare-fun b!43668 () Bool)

(assert (=> b!43668 (= e!23963 e!23969)))

(declare-fun e!23967 () Bool)

(declare-fun e!23975 () Bool)

(assert (=> b!43669 (= e!23967 (and e!23975 tp!30090))))

(declare-fun b!43671 () Bool)

(declare-fun res!30340 () Bool)

(assert (=> b!43671 (=> (not res!30340) (not e!23981))))

(declare-fun rulesInvariant!48 (LexerInterface!58 List!685) Bool)

(assert (=> b!43671 (= res!30340 (rulesInvariant!48 Lexer!56 lt!5180))))

(declare-fun mapIsEmpty!862 () Bool)

(assert (=> mapIsEmpty!862 mapRes!863))

(declare-fun b!43672 () Bool)

(declare-fun e!23985 () Bool)

(declare-fun e!23990 () Bool)

(assert (=> b!43672 (= e!23985 e!23990)))

(declare-fun b!43673 () Bool)

(declare-fun e!23966 () Bool)

(declare-fun e!23972 () Bool)

(assert (=> b!43673 (= e!23966 e!23972)))

(assert (=> b!43674 (= e!23982 (and e!23974 tp!30088))))

(declare-fun b!43675 () Bool)

(declare-fun res!30345 () Bool)

(assert (=> b!43675 (=> (not res!30345) (not e!23981))))

(declare-datatypes ((Hashable!226 0))(
  ( (HashableExt!225 (__x!1178 Int)) )
))
(declare-datatypes ((tuple2!820 0))(
  ( (tuple2!821 (_1!574 Context!174) (_2!574 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!822 0))(
  ( (tuple2!823 (_1!575 tuple2!820) (_2!575 (InoxSet Context!174))) )
))
(declare-datatypes ((List!690 0))(
  ( (Nil!688) (Cons!688 (h!6084 tuple2!822) (t!16391 List!690)) )
))
(declare-datatypes ((array!762 0))(
  ( (array!763 (arr!372 (Array (_ BitVec 32) List!690)) (size!680 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!460 0))(
  ( (LongMapFixedSize!461 (defaultEntry!568 Int) (mask!946 (_ BitVec 32)) (extraKeys!476 (_ BitVec 32)) (zeroValue!486 List!690) (minValue!486 List!690) (_size!592 (_ BitVec 32)) (_keys!521 array!756) (_values!508 array!762) (_vacant!290 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!909 0))(
  ( (Cell!910 (v!12437 LongMapFixedSize!460)) )
))
(declare-datatypes ((MutLongMap!230 0))(
  ( (LongMap!230 (underlying!655 Cell!909)) (MutLongMapExt!229 (__x!1179 Int)) )
))
(declare-datatypes ((Cell!911 0))(
  ( (Cell!912 (v!12438 MutLongMap!230)) )
))
(declare-datatypes ((MutableMap!226 0))(
  ( (MutableMapExt!225 (__x!1180 Int)) (HashMap!226 (underlying!656 Cell!911) (hashF!2094 Hashable!226) (_size!593 (_ BitVec 32)) (defaultValue!375 Int)) )
))
(declare-datatypes ((CacheUp!152 0))(
  ( (CacheUp!153 (cache!711 MutableMap!226)) )
))
(declare-fun cacheUp!320 () CacheUp!152)

(declare-fun valid!208 (CacheUp!152) Bool)

(assert (=> b!43675 (= res!30345 (valid!208 cacheUp!320))))

(declare-fun mapNonEmpty!863 () Bool)

(declare-fun mapRes!864 () Bool)

(declare-fun tp!30085 () Bool)

(declare-fun tp!30100 () Bool)

(assert (=> mapNonEmpty!863 (= mapRes!864 (and tp!30085 tp!30100))))

(declare-fun mapRest!864 () (Array (_ BitVec 32) List!689))

(declare-fun mapValue!864 () List!689)

(declare-fun mapKey!862 () (_ BitVec 32))

(assert (=> mapNonEmpty!863 (= (arr!371 (_values!507 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))) (store mapRest!864 mapKey!862 mapValue!864))))

(declare-fun e!23962 () Bool)

(declare-fun e!23989 () Bool)

(assert (=> b!43676 (= e!23962 (and e!23989 tp!30104))))

(declare-fun mapIsEmpty!863 () Bool)

(assert (=> mapIsEmpty!863 mapRes!864))

(declare-fun b!43677 () Bool)

(declare-fun e!23965 () Bool)

(declare-fun tp!30102 () Bool)

(assert (=> b!43677 (= e!23965 (and tp!30102 mapRes!864))))

(declare-fun condMapEmpty!864 () Bool)

(declare-fun mapDefault!862 () List!689)

(assert (=> b!43677 (= condMapEmpty!864 (= (arr!371 (_values!507 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!689)) mapDefault!862)))))

(declare-fun b!43678 () Bool)

(declare-fun e!23987 () Bool)

(declare-fun lt!5183 () MutLongMap!229)

(assert (=> b!43678 (= e!23989 (and e!23987 ((_ is LongMap!229) lt!5183)))))

(assert (=> b!43678 (= lt!5183 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))

(declare-fun b!43679 () Bool)

(declare-fun res!30342 () Bool)

(assert (=> b!43679 (=> (not res!30342) (not e!23977))))

(declare-fun lexThenRulesProduceEachTokenIndividually!14 (LexerInterface!58 List!685 List!684) Bool)

(assert (=> b!43679 (= res!30342 (lexThenRulesProduceEachTokenIndividually!14 Lexer!56 lt!5180 lt!5185))))

(declare-fun b!43680 () Bool)

(declare-fun e!23983 () Bool)

(assert (=> b!43680 (= e!23983 e!23966)))

(declare-fun b!43681 () Bool)

(declare-fun res!30341 () Bool)

(assert (=> b!43681 (=> (not res!30341) (not e!23981))))

(assert (=> b!43681 (= res!30341 (= (totalInput!1530 cacheFurthestNullable!45) input!525))))

(declare-fun b!43682 () Bool)

(declare-fun e!23971 () Bool)

(assert (=> b!43682 (= e!23981 e!23971)))

(declare-fun res!30343 () Bool)

(assert (=> b!43682 (=> (not res!30343) (not e!23971))))

(assert (=> b!43682 (= res!30343 (= lt!5193 lt!5182))))

(declare-fun lt!5191 () tuple2!816)

(assert (=> b!43682 (= lt!5182 (list!181 (_1!571 lt!5191)))))

(declare-datatypes ((tuple4!66 0))(
  ( (tuple4!67 (_1!576 tuple2!816) (_2!576 CacheUp!152) (_3!164 CacheDown!152) (_4!33 CacheFurthestNullable!100)) )
))
(declare-fun lt!5192 () tuple4!66)

(assert (=> b!43682 (= lt!5193 (list!181 (_1!571 (_1!576 lt!5192))))))

(assert (=> b!43682 (= lt!5191 (lex!33 Lexer!56 lt!5180 input!525))))

(declare-datatypes ((Unit!310 0))(
  ( (Unit!311) )
))
(declare-fun lt!5190 () Unit!310)

(declare-fun lemmaInvariant!51 (CacheDown!152) Unit!310)

(assert (=> b!43682 (= lt!5190 (lemmaInvariant!51 (_3!164 lt!5192)))))

(declare-fun lt!5189 () Unit!310)

(declare-fun lemmaInvariant!52 (CacheUp!152) Unit!310)

(assert (=> b!43682 (= lt!5189 (lemmaInvariant!52 (_2!576 lt!5192)))))

(declare-fun lexMem!24 (LexerInterface!58 List!685 BalanceConc!258 CacheUp!152 CacheDown!152 CacheFurthestNullable!100) tuple4!66)

(assert (=> b!43682 (= lt!5192 (lexMem!24 Lexer!56 lt!5180 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!43683 () Bool)

(declare-fun e!23980 () Bool)

(declare-fun tp!30095 () Bool)

(declare-fun inv!970 (Conc!129) Bool)

(assert (=> b!43683 (= e!23980 (and (inv!970 (c!15986 input!525)) tp!30095))))

(declare-fun b!43684 () Bool)

(assert (=> b!43684 (= e!23987 e!23985)))

(declare-fun b!43685 () Bool)

(declare-fun e!23992 () Bool)

(declare-fun tp!30084 () Bool)

(declare-fun mapRes!862 () Bool)

(assert (=> b!43685 (= e!23992 (and tp!30084 mapRes!862))))

(declare-fun condMapEmpty!862 () Bool)

(declare-fun mapDefault!864 () List!690)

(assert (=> b!43685 (= condMapEmpty!862 (= (arr!372 (_values!508 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!690)) mapDefault!864)))))

(declare-fun mapIsEmpty!864 () Bool)

(assert (=> mapIsEmpty!864 mapRes!862))

(declare-fun tp!30097 () Bool)

(declare-fun tp!30096 () Bool)

(declare-fun array_inv!248 (array!760) Bool)

(assert (=> b!43686 (= e!23990 (and tp!30086 tp!30097 tp!30096 (array_inv!246 (_keys!520 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))) (array_inv!248 (_values!507 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))) e!23965))))

(declare-fun mapNonEmpty!864 () Bool)

(declare-fun tp!30106 () Bool)

(declare-fun tp!30101 () Bool)

(assert (=> mapNonEmpty!864 (= mapRes!862 (and tp!30106 tp!30101))))

(declare-fun mapRest!863 () (Array (_ BitVec 32) List!690))

(declare-fun mapKey!863 () (_ BitVec 32))

(declare-fun mapValue!862 () List!690)

(assert (=> mapNonEmpty!864 (= (arr!372 (_values!508 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))) (store mapRest!863 mapKey!863 mapValue!862))))

(declare-fun b!43687 () Bool)

(declare-fun e!23979 () Bool)

(assert (=> b!43687 (= e!23979 e!23962)))

(declare-fun b!43688 () Bool)

(declare-fun res!30335 () Bool)

(assert (=> b!43688 (=> (not res!30335) (not e!23977))))

(declare-fun lt!5184 () List!684)

(assert (=> b!43688 (= res!30335 (= lt!5184 (list!182 (_2!571 lt!5181))))))

(declare-fun b!43689 () Bool)

(declare-fun tp!30093 () Bool)

(assert (=> b!43689 (= e!23988 (and (inv!970 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) tp!30093))))

(declare-fun b!43670 () Bool)

(declare-fun res!30346 () Bool)

(assert (=> b!43670 (=> (not res!30346) (not e!23981))))

(declare-fun valid!209 (CacheFurthestNullable!100) Bool)

(assert (=> b!43670 (= res!30346 (valid!209 cacheFurthestNullable!45))))

(declare-fun res!30336 () Bool)

(assert (=> start!2686 (=> (not res!30336) (not e!23981))))

(declare-fun isEmpty!137 (List!685) Bool)

(assert (=> start!2686 (= res!30336 (not (isEmpty!137 lt!5180)))))

(declare-datatypes ((JsonLexer!74 0))(
  ( (JsonLexer!75) )
))
(declare-fun rules!109 (JsonLexer!74) List!685)

(assert (=> start!2686 (= lt!5180 (rules!109 JsonLexer!75))))

(assert (=> start!2686 e!23981))

(declare-fun inv!971 (CacheDown!152) Bool)

(assert (=> start!2686 (and (inv!971 cacheDown!333) e!23979)))

(assert (=> start!2686 (and (inv!969 input!525) e!23980)))

(declare-fun inv!972 (CacheFurthestNullable!100) Bool)

(assert (=> start!2686 (and (inv!972 cacheFurthestNullable!45) e!23964)))

(declare-fun e!23986 () Bool)

(declare-fun inv!973 (CacheUp!152) Bool)

(assert (=> start!2686 (and (inv!973 cacheUp!320) e!23986)))

(declare-fun tp!30105 () Bool)

(declare-fun tp!30087 () Bool)

(declare-fun array_inv!249 (array!762) Bool)

(assert (=> b!43690 (= e!23972 (and tp!30098 tp!30087 tp!30105 (array_inv!246 (_keys!521 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))) (array_inv!249 (_values!508 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))) e!23992))))

(declare-fun b!43691 () Bool)

(declare-fun lt!5188 () MutLongMap!230)

(assert (=> b!43691 (= e!23975 (and e!23983 ((_ is LongMap!230) lt!5188)))))

(assert (=> b!43691 (= lt!5188 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))

(declare-fun b!43692 () Bool)

(assert (=> b!43692 (= e!23986 e!23967)))

(declare-fun b!43693 () Bool)

(assert (=> b!43693 (= e!23971 e!23968)))

(declare-fun res!30344 () Bool)

(assert (=> b!43693 (=> (not res!30344) (not e!23968))))

(declare-fun lt!5194 () List!684)

(assert (=> b!43693 (= res!30344 (= lt!5194 lt!5184))))

(assert (=> b!43693 (= lt!5184 (list!182 (_2!571 lt!5191)))))

(assert (=> b!43693 (= lt!5194 (list!182 (_2!571 (_1!576 lt!5192))))))

(assert (= (and start!2686 res!30336) b!43671))

(assert (= (and b!43671 res!30340) b!43675))

(assert (= (and b!43675 res!30345) b!43666))

(assert (= (and b!43666 res!30338) b!43670))

(assert (= (and b!43670 res!30346) b!43681))

(assert (= (and b!43681 res!30341) b!43682))

(assert (= (and b!43682 res!30343) b!43693))

(assert (= (and b!43693 res!30344) b!43664))

(assert (= (and b!43664 res!30339) b!43661))

(assert (= (and b!43661 res!30337) b!43688))

(assert (= (and b!43688 res!30335) b!43679))

(assert (= (and b!43679 res!30342) b!43660))

(assert (= (and b!43677 condMapEmpty!864) mapIsEmpty!863))

(assert (= (and b!43677 (not condMapEmpty!864)) mapNonEmpty!863))

(assert (= b!43686 b!43677))

(assert (= b!43672 b!43686))

(assert (= b!43684 b!43672))

(assert (= (and b!43678 ((_ is LongMap!229) (v!12436 (underlying!654 (cache!710 cacheDown!333))))) b!43684))

(assert (= b!43676 b!43678))

(assert (= (and b!43687 ((_ is HashMap!225) (cache!710 cacheDown!333))) b!43676))

(assert (= start!2686 b!43687))

(assert (= start!2686 b!43683))

(assert (= (and b!43662 condMapEmpty!863) mapIsEmpty!862))

(assert (= (and b!43662 (not condMapEmpty!863)) mapNonEmpty!862))

(assert (= b!43659 b!43662))

(assert (= b!43667 b!43659))

(assert (= b!43668 b!43667))

(assert (= (and b!43665 ((_ is LongMap!228) (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))) b!43668))

(assert (= b!43674 b!43665))

(assert (= (and b!43663 ((_ is HashMap!224) (cache!709 cacheFurthestNullable!45))) b!43674))

(assert (= b!43663 b!43689))

(assert (= start!2686 b!43663))

(assert (= (and b!43685 condMapEmpty!862) mapIsEmpty!864))

(assert (= (and b!43685 (not condMapEmpty!862)) mapNonEmpty!864))

(assert (= b!43690 b!43685))

(assert (= b!43673 b!43690))

(assert (= b!43680 b!43673))

(assert (= (and b!43691 ((_ is LongMap!230) (v!12438 (underlying!656 (cache!711 cacheUp!320))))) b!43680))

(assert (= b!43669 b!43691))

(assert (= (and b!43692 ((_ is HashMap!226) (cache!711 cacheUp!320))) b!43669))

(assert (= start!2686 b!43692))

(declare-fun m!17415 () Bool)

(assert (=> mapNonEmpty!863 m!17415))

(declare-fun m!17417 () Bool)

(assert (=> b!43666 m!17417))

(declare-fun m!17419 () Bool)

(assert (=> mapNonEmpty!864 m!17419))

(declare-fun m!17421 () Bool)

(assert (=> b!43675 m!17421))

(declare-fun m!17423 () Bool)

(assert (=> b!43670 m!17423))

(declare-fun m!17425 () Bool)

(assert (=> b!43686 m!17425))

(declare-fun m!17427 () Bool)

(assert (=> b!43686 m!17427))

(declare-fun m!17429 () Bool)

(assert (=> b!43660 m!17429))

(declare-fun m!17431 () Bool)

(assert (=> b!43693 m!17431))

(declare-fun m!17433 () Bool)

(assert (=> b!43693 m!17433))

(declare-fun m!17435 () Bool)

(assert (=> b!43671 m!17435))

(declare-fun m!17437 () Bool)

(assert (=> b!43679 m!17437))

(declare-fun m!17439 () Bool)

(assert (=> b!43690 m!17439))

(declare-fun m!17441 () Bool)

(assert (=> b!43690 m!17441))

(declare-fun m!17443 () Bool)

(assert (=> b!43688 m!17443))

(declare-fun m!17445 () Bool)

(assert (=> b!43659 m!17445))

(declare-fun m!17447 () Bool)

(assert (=> b!43659 m!17447))

(declare-fun m!17449 () Bool)

(assert (=> b!43689 m!17449))

(declare-fun m!17451 () Bool)

(assert (=> b!43663 m!17451))

(declare-fun m!17453 () Bool)

(assert (=> b!43683 m!17453))

(declare-fun m!17455 () Bool)

(assert (=> b!43682 m!17455))

(declare-fun m!17457 () Bool)

(assert (=> b!43682 m!17457))

(declare-fun m!17459 () Bool)

(assert (=> b!43682 m!17459))

(declare-fun m!17461 () Bool)

(assert (=> b!43682 m!17461))

(declare-fun m!17463 () Bool)

(assert (=> b!43682 m!17463))

(declare-fun m!17465 () Bool)

(assert (=> b!43682 m!17465))

(declare-fun m!17467 () Bool)

(assert (=> start!2686 m!17467))

(declare-fun m!17469 () Bool)

(assert (=> start!2686 m!17469))

(declare-fun m!17471 () Bool)

(assert (=> start!2686 m!17471))

(declare-fun m!17473 () Bool)

(assert (=> start!2686 m!17473))

(declare-fun m!17475 () Bool)

(assert (=> start!2686 m!17475))

(declare-fun m!17477 () Bool)

(assert (=> start!2686 m!17477))

(declare-fun m!17479 () Bool)

(assert (=> b!43664 m!17479))

(declare-fun m!17481 () Bool)

(assert (=> b!43664 m!17481))

(declare-fun m!17483 () Bool)

(assert (=> b!43664 m!17483))

(declare-fun m!17485 () Bool)

(assert (=> mapNonEmpty!862 m!17485))

(declare-fun m!17487 () Bool)

(assert (=> b!43661 m!17487))

(declare-fun m!17489 () Bool)

(assert (=> b!43661 m!17489))

(check-sat (not b!43679) (not b!43663) (not b!43685) b_and!1113 (not b_next!1083) (not b_next!1081) (not b!43686) (not b!43659) (not b!43660) (not b!43683) (not b!43677) b_and!1117 b_and!1121 (not b!43693) (not start!2686) (not b_next!1085) (not b!43690) (not b!43675) b_and!1119 (not b!43682) (not b_next!1079) (not b_next!1077) b_and!1111 (not b!43664) (not mapNonEmpty!862) (not b!43670) (not b!43689) (not b!43661) (not b!43671) b_and!1115 (not b!43702) (not mapNonEmpty!863) (not b!43662) (not b!43688) (not mapNonEmpty!864) (not b!43666) (not b_next!1087))
(check-sat b_and!1113 (not b_next!1083) (not b_next!1085) (not b_next!1081) b_and!1119 b_and!1115 b_and!1117 (not b_next!1087) b_and!1121 (not b_next!1079) (not b_next!1077) b_and!1111)
(get-model)

(declare-fun d!4791 () Bool)

(assert (=> d!4791 (= (array_inv!246 (_keys!520 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))) (bvsge (size!676 (_keys!520 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!43686 d!4791))

(declare-fun d!4793 () Bool)

(assert (=> d!4793 (= (array_inv!248 (_values!507 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))) (bvsge (size!679 (_values!507 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!43686 d!4793))

(declare-fun d!4795 () Bool)

(assert (=> d!4795 (= (array_inv!246 (_keys!519 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))) (bvsge (size!676 (_keys!519 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!43659 d!4795))

(declare-fun d!4797 () Bool)

(assert (=> d!4797 (= (array_inv!247 (_values!506 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))) (bvsge (size!677 (_values!506 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!43659 d!4797))

(declare-fun d!4799 () Bool)

(declare-fun list!183 (Conc!129) List!684)

(assert (=> d!4799 (= (list!182 (_2!571 lt!5191)) (list!183 (c!15986 (_2!571 lt!5191))))))

(declare-fun bs!5677 () Bool)

(assert (= bs!5677 d!4799))

(declare-fun m!17491 () Bool)

(assert (=> bs!5677 m!17491))

(assert (=> b!43693 d!4799))

(declare-fun d!4801 () Bool)

(assert (=> d!4801 (= (list!182 (_2!571 (_1!576 lt!5192))) (list!183 (c!15986 (_2!571 (_1!576 lt!5192)))))))

(declare-fun bs!5678 () Bool)

(assert (= bs!5678 d!4801))

(declare-fun m!17493 () Bool)

(assert (=> bs!5678 m!17493))

(assert (=> b!43693 d!4801))

(declare-fun d!4803 () Bool)

(declare-fun validCacheMapDown!20 (MutableMap!225) Bool)

(assert (=> d!4803 (= (valid!207 cacheDown!333) (validCacheMapDown!20 (cache!710 cacheDown!333)))))

(declare-fun bs!5679 () Bool)

(assert (= bs!5679 d!4803))

(declare-fun m!17495 () Bool)

(assert (=> bs!5679 m!17495))

(assert (=> b!43666 d!4803))

(declare-fun d!4805 () Bool)

(declare-fun validCacheMapUp!18 (MutableMap!226) Bool)

(assert (=> d!4805 (= (valid!208 cacheUp!320) (validCacheMapUp!18 (cache!711 cacheUp!320)))))

(declare-fun bs!5680 () Bool)

(assert (= bs!5680 d!4805))

(declare-fun m!17497 () Bool)

(assert (=> bs!5680 m!17497))

(assert (=> b!43675 d!4805))

(declare-fun d!4807 () Bool)

(declare-fun c!15990 () Bool)

(assert (=> d!4807 (= c!15990 ((_ is Node!129) (c!15986 input!525)))))

(declare-fun e!24006 () Bool)

(assert (=> d!4807 (= (inv!970 (c!15986 input!525)) e!24006)))

(declare-fun b!43711 () Bool)

(declare-fun inv!974 (Conc!129) Bool)

(assert (=> b!43711 (= e!24006 (inv!974 (c!15986 input!525)))))

(declare-fun b!43712 () Bool)

(declare-fun e!24007 () Bool)

(assert (=> b!43712 (= e!24006 e!24007)))

(declare-fun res!30351 () Bool)

(assert (=> b!43712 (= res!30351 (not ((_ is Leaf!322) (c!15986 input!525))))))

(assert (=> b!43712 (=> res!30351 e!24007)))

(declare-fun b!43713 () Bool)

(declare-fun inv!975 (Conc!129) Bool)

(assert (=> b!43713 (= e!24007 (inv!975 (c!15986 input!525)))))

(assert (= (and d!4807 c!15990) b!43711))

(assert (= (and d!4807 (not c!15990)) b!43712))

(assert (= (and b!43712 (not res!30351)) b!43713))

(declare-fun m!17499 () Bool)

(assert (=> b!43711 m!17499))

(declare-fun m!17501 () Bool)

(assert (=> b!43713 m!17501))

(assert (=> b!43683 d!4807))

(declare-fun d!4809 () Bool)

(declare-fun e!24010 () Bool)

(assert (=> d!4809 e!24010))

(declare-fun res!30365 () Bool)

(assert (=> d!4809 (=> (not res!30365) (not e!24010))))

(declare-fun lt!5200 () tuple4!66)

(assert (=> d!4809 (= res!30365 (= (list!181 (_1!571 (_1!576 lt!5200))) (list!181 (_1!571 (lex!33 Lexer!56 lt!5180 input!525)))))))

(declare-fun lt!5199 () tuple4!66)

(assert (=> d!4809 (= lt!5200 (tuple4!67 (_1!576 lt!5199) (_2!576 lt!5199) (_3!164 lt!5199) (_4!33 lt!5199)))))

(declare-fun lexTailRecV3Mem!10 (LexerInterface!58 List!685 BalanceConc!258 BalanceConc!258 BalanceConc!258 BalanceConc!260 CacheUp!152 CacheDown!152 CacheFurthestNullable!100) tuple4!66)

(assert (=> d!4809 (= lt!5199 (lexTailRecV3Mem!10 Lexer!56 lt!5180 input!525 (BalanceConc!259 Empty!129) input!525 (BalanceConc!261 Empty!130) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!4809 (not (isEmpty!137 lt!5180))))

(assert (=> d!4809 (= (lexMem!24 Lexer!56 lt!5180 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!5200)))

(declare-fun b!43724 () Bool)

(declare-fun res!30362 () Bool)

(assert (=> b!43724 (=> (not res!30362) (not e!24010))))

(assert (=> b!43724 (= res!30362 (= (list!182 (_2!571 (_1!576 lt!5200))) (list!182 (_2!571 (lex!33 Lexer!56 lt!5180 input!525)))))))

(declare-fun b!43725 () Bool)

(assert (=> b!43725 (= e!24010 (= (totalInput!1530 (_4!33 lt!5200)) input!525))))

(declare-fun b!43726 () Bool)

(declare-fun res!30366 () Bool)

(assert (=> b!43726 (=> (not res!30366) (not e!24010))))

(assert (=> b!43726 (= res!30366 (valid!208 (_2!576 lt!5200)))))

(declare-fun b!43727 () Bool)

(declare-fun res!30363 () Bool)

(assert (=> b!43727 (=> (not res!30363) (not e!24010))))

(assert (=> b!43727 (= res!30363 (valid!207 (_3!164 lt!5200)))))

(declare-fun b!43728 () Bool)

(declare-fun res!30364 () Bool)

(assert (=> b!43728 (=> (not res!30364) (not e!24010))))

(assert (=> b!43728 (= res!30364 (valid!209 (_4!33 lt!5200)))))

(assert (= (and d!4809 res!30365) b!43724))

(assert (= (and b!43724 res!30362) b!43728))

(assert (= (and b!43728 res!30364) b!43726))

(assert (= (and b!43726 res!30366) b!43727))

(assert (= (and b!43727 res!30363) b!43725))

(declare-fun m!17503 () Bool)

(assert (=> b!43726 m!17503))

(declare-fun m!17505 () Bool)

(assert (=> d!4809 m!17505))

(declare-fun m!17507 () Bool)

(assert (=> d!4809 m!17507))

(declare-fun m!17509 () Bool)

(assert (=> d!4809 m!17509))

(assert (=> d!4809 m!17457))

(assert (=> d!4809 m!17475))

(declare-fun m!17511 () Bool)

(assert (=> b!43727 m!17511))

(declare-fun m!17513 () Bool)

(assert (=> b!43724 m!17513))

(assert (=> b!43724 m!17457))

(declare-fun m!17515 () Bool)

(assert (=> b!43724 m!17515))

(declare-fun m!17517 () Bool)

(assert (=> b!43728 m!17517))

(assert (=> b!43682 d!4809))

(declare-fun d!4811 () Bool)

(assert (=> d!4811 (valid!207 (_3!164 lt!5192))))

(declare-fun Unit!312 () Unit!310)

(assert (=> d!4811 (= (lemmaInvariant!51 (_3!164 lt!5192)) Unit!312)))

(declare-fun bs!5681 () Bool)

(assert (= bs!5681 d!4811))

(declare-fun m!17519 () Bool)

(assert (=> bs!5681 m!17519))

(assert (=> b!43682 d!4811))

(declare-fun d!4813 () Bool)

(assert (=> d!4813 (valid!208 (_2!576 lt!5192))))

(declare-fun Unit!313 () Unit!310)

(assert (=> d!4813 (= (lemmaInvariant!52 (_2!576 lt!5192)) Unit!313)))

(declare-fun bs!5682 () Bool)

(assert (= bs!5682 d!4813))

(declare-fun m!17521 () Bool)

(assert (=> bs!5682 m!17521))

(assert (=> b!43682 d!4813))

(declare-fun d!4815 () Bool)

(declare-fun list!184 (Conc!130) List!688)

(assert (=> d!4815 (= (list!181 (_1!571 lt!5191)) (list!184 (c!15987 (_1!571 lt!5191))))))

(declare-fun bs!5683 () Bool)

(assert (= bs!5683 d!4815))

(declare-fun m!17523 () Bool)

(assert (=> bs!5683 m!17523))

(assert (=> b!43682 d!4815))

(declare-fun d!4817 () Bool)

(assert (=> d!4817 (= (list!181 (_1!571 (_1!576 lt!5192))) (list!184 (c!15987 (_1!571 (_1!576 lt!5192)))))))

(declare-fun bs!5684 () Bool)

(assert (= bs!5684 d!4817))

(declare-fun m!17525 () Bool)

(assert (=> bs!5684 m!17525))

(assert (=> b!43682 d!4817))

(declare-fun b!43739 () Bool)

(declare-fun e!24018 () Bool)

(declare-fun lt!5203 () tuple2!816)

(assert (=> b!43739 (= e!24018 (= (_2!571 lt!5203) input!525))))

(declare-fun b!43740 () Bool)

(declare-fun e!24017 () Bool)

(declare-fun isEmpty!138 (BalanceConc!260) Bool)

(assert (=> b!43740 (= e!24017 (not (isEmpty!138 (_1!571 lt!5203))))))

(declare-fun b!43741 () Bool)

(assert (=> b!43741 (= e!24018 e!24017)))

(declare-fun res!30373 () Bool)

(declare-fun size!681 (BalanceConc!258) Int)

(assert (=> b!43741 (= res!30373 (< (size!681 (_2!571 lt!5203)) (size!681 input!525)))))

(assert (=> b!43741 (=> (not res!30373) (not e!24017))))

(declare-fun d!4819 () Bool)

(declare-fun e!24019 () Bool)

(assert (=> d!4819 e!24019))

(declare-fun res!30374 () Bool)

(assert (=> d!4819 (=> (not res!30374) (not e!24019))))

(assert (=> d!4819 (= res!30374 e!24018)))

(declare-fun c!15993 () Bool)

(declare-fun size!682 (BalanceConc!260) Int)

(assert (=> d!4819 (= c!15993 (> (size!682 (_1!571 lt!5203)) 0))))

(declare-fun lexTailRecV2!10 (LexerInterface!58 List!685 BalanceConc!258 BalanceConc!258 BalanceConc!258 BalanceConc!260) tuple2!816)

(assert (=> d!4819 (= lt!5203 (lexTailRecV2!10 Lexer!56 lt!5180 input!525 (BalanceConc!259 Empty!129) input!525 (BalanceConc!261 Empty!130)))))

(assert (=> d!4819 (= (lex!33 Lexer!56 lt!5180 input!525) lt!5203)))

(declare-fun b!43742 () Bool)

(declare-fun res!30375 () Bool)

(assert (=> b!43742 (=> (not res!30375) (not e!24019))))

(declare-datatypes ((tuple2!824 0))(
  ( (tuple2!825 (_1!577 List!688) (_2!577 List!684)) )
))
(declare-fun lexList!13 (LexerInterface!58 List!685 List!684) tuple2!824)

(assert (=> b!43742 (= res!30375 (= (list!181 (_1!571 lt!5203)) (_1!577 (lexList!13 Lexer!56 lt!5180 (list!182 input!525)))))))

(declare-fun b!43743 () Bool)

(assert (=> b!43743 (= e!24019 (= (list!182 (_2!571 lt!5203)) (_2!577 (lexList!13 Lexer!56 lt!5180 (list!182 input!525)))))))

(assert (= (and d!4819 c!15993) b!43741))

(assert (= (and d!4819 (not c!15993)) b!43739))

(assert (= (and b!43741 res!30373) b!43740))

(assert (= (and d!4819 res!30374) b!43742))

(assert (= (and b!43742 res!30375) b!43743))

(declare-fun m!17527 () Bool)

(assert (=> b!43740 m!17527))

(declare-fun m!17529 () Bool)

(assert (=> b!43743 m!17529))

(assert (=> b!43743 m!17483))

(assert (=> b!43743 m!17483))

(declare-fun m!17531 () Bool)

(assert (=> b!43743 m!17531))

(declare-fun m!17533 () Bool)

(assert (=> d!4819 m!17533))

(declare-fun m!17535 () Bool)

(assert (=> d!4819 m!17535))

(declare-fun m!17537 () Bool)

(assert (=> b!43741 m!17537))

(declare-fun m!17539 () Bool)

(assert (=> b!43741 m!17539))

(declare-fun m!17541 () Bool)

(assert (=> b!43742 m!17541))

(assert (=> b!43742 m!17483))

(assert (=> b!43742 m!17483))

(assert (=> b!43742 m!17531))

(assert (=> b!43682 d!4819))

(declare-fun d!4821 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!74) Rule!126)

(declare-fun integerLiteralRule!0 (JsonLexer!74) Rule!126)

(declare-fun floatLiteralRule!0 (JsonLexer!74) Rule!126)

(declare-fun trueRule!0 (JsonLexer!74) Rule!126)

(declare-fun falseRule!0 (JsonLexer!74) Rule!126)

(declare-fun nullRule!0 (JsonLexer!74) Rule!126)

(declare-fun jsonstringRule!0 (JsonLexer!74) Rule!126)

(declare-fun lBraceRule!0 (JsonLexer!74) Rule!126)

(declare-fun rBraceRule!0 (JsonLexer!74) Rule!126)

(declare-fun lBracketRule!0 (JsonLexer!74) Rule!126)

(declare-fun rBracketRule!0 (JsonLexer!74) Rule!126)

(declare-fun colonRule!0 (JsonLexer!74) Rule!126)

(declare-fun commaRule!0 (JsonLexer!74) Rule!126)

(declare-fun eofRule!0 (JsonLexer!74) Rule!126)

(assert (=> d!4821 (= (rules!109 JsonLexer!75) (Cons!683 (whitespaceRule!0 JsonLexer!75) (Cons!683 (integerLiteralRule!0 JsonLexer!75) (Cons!683 (floatLiteralRule!0 JsonLexer!75) (Cons!683 (trueRule!0 JsonLexer!75) (Cons!683 (falseRule!0 JsonLexer!75) (Cons!683 (nullRule!0 JsonLexer!75) (Cons!683 (jsonstringRule!0 JsonLexer!75) (Cons!683 (lBraceRule!0 JsonLexer!75) (Cons!683 (rBraceRule!0 JsonLexer!75) (Cons!683 (lBracketRule!0 JsonLexer!75) (Cons!683 (rBracketRule!0 JsonLexer!75) (Cons!683 (colonRule!0 JsonLexer!75) (Cons!683 (commaRule!0 JsonLexer!75) (Cons!683 (eofRule!0 JsonLexer!75) Nil!683)))))))))))))))))

(declare-fun bs!5685 () Bool)

(assert (= bs!5685 d!4821))

(declare-fun m!17543 () Bool)

(assert (=> bs!5685 m!17543))

(declare-fun m!17545 () Bool)

(assert (=> bs!5685 m!17545))

(declare-fun m!17547 () Bool)

(assert (=> bs!5685 m!17547))

(declare-fun m!17549 () Bool)

(assert (=> bs!5685 m!17549))

(declare-fun m!17551 () Bool)

(assert (=> bs!5685 m!17551))

(declare-fun m!17553 () Bool)

(assert (=> bs!5685 m!17553))

(declare-fun m!17555 () Bool)

(assert (=> bs!5685 m!17555))

(declare-fun m!17557 () Bool)

(assert (=> bs!5685 m!17557))

(declare-fun m!17559 () Bool)

(assert (=> bs!5685 m!17559))

(declare-fun m!17561 () Bool)

(assert (=> bs!5685 m!17561))

(declare-fun m!17563 () Bool)

(assert (=> bs!5685 m!17563))

(declare-fun m!17565 () Bool)

(assert (=> bs!5685 m!17565))

(declare-fun m!17567 () Bool)

(assert (=> bs!5685 m!17567))

(declare-fun m!17569 () Bool)

(assert (=> bs!5685 m!17569))

(assert (=> start!2686 d!4821))

(declare-fun d!4823 () Bool)

(declare-fun res!30378 () Bool)

(declare-fun e!24022 () Bool)

(assert (=> d!4823 (=> (not res!30378) (not e!24022))))

(assert (=> d!4823 (= res!30378 ((_ is HashMap!225) (cache!710 cacheDown!333)))))

(assert (=> d!4823 (= (inv!971 cacheDown!333) e!24022)))

(declare-fun b!43746 () Bool)

(assert (=> b!43746 (= e!24022 (validCacheMapDown!20 (cache!710 cacheDown!333)))))

(assert (= (and d!4823 res!30378) b!43746))

(assert (=> b!43746 m!17495))

(assert (=> start!2686 d!4823))

(declare-fun d!4825 () Bool)

(declare-fun isBalanced!23 (Conc!129) Bool)

(assert (=> d!4825 (= (inv!969 input!525) (isBalanced!23 (c!15986 input!525)))))

(declare-fun bs!5686 () Bool)

(assert (= bs!5686 d!4825))

(declare-fun m!17571 () Bool)

(assert (=> bs!5686 m!17571))

(assert (=> start!2686 d!4825))

(declare-fun d!4827 () Bool)

(assert (=> d!4827 (= (isEmpty!137 lt!5180) ((_ is Nil!683) lt!5180))))

(assert (=> start!2686 d!4827))

(declare-fun d!4829 () Bool)

(declare-fun res!30381 () Bool)

(declare-fun e!24025 () Bool)

(assert (=> d!4829 (=> (not res!30381) (not e!24025))))

(assert (=> d!4829 (= res!30381 ((_ is HashMap!224) (cache!709 cacheFurthestNullable!45)))))

(assert (=> d!4829 (= (inv!972 cacheFurthestNullable!45) e!24025)))

(declare-fun b!43749 () Bool)

(declare-fun validCacheMapFurthestNullable!12 (MutableMap!224 BalanceConc!258) Bool)

(assert (=> b!43749 (= e!24025 (validCacheMapFurthestNullable!12 (cache!709 cacheFurthestNullable!45) (totalInput!1530 cacheFurthestNullable!45)))))

(assert (= (and d!4829 res!30381) b!43749))

(declare-fun m!17573 () Bool)

(assert (=> b!43749 m!17573))

(assert (=> start!2686 d!4829))

(declare-fun d!4831 () Bool)

(declare-fun res!30384 () Bool)

(declare-fun e!24028 () Bool)

(assert (=> d!4831 (=> (not res!30384) (not e!24028))))

(assert (=> d!4831 (= res!30384 ((_ is HashMap!226) (cache!711 cacheUp!320)))))

(assert (=> d!4831 (= (inv!973 cacheUp!320) e!24028)))

(declare-fun b!43752 () Bool)

(assert (=> b!43752 (= e!24028 (validCacheMapUp!18 (cache!711 cacheUp!320)))))

(assert (= (and d!4831 res!30384) b!43752))

(assert (=> b!43752 m!17497))

(assert (=> start!2686 d!4831))

(declare-fun d!4833 () Bool)

(assert (=> d!4833 (= (list!182 lt!5187) (list!183 (c!15986 lt!5187)))))

(declare-fun bs!5687 () Bool)

(assert (= bs!5687 d!4833))

(declare-fun m!17575 () Bool)

(assert (=> bs!5687 m!17575))

(assert (=> b!43664 d!4833))

(declare-fun d!4835 () Bool)

(declare-fun fromListB!8 (List!684) BalanceConc!258)

(assert (=> d!4835 (= (seqFromList!28 lt!5185) (fromListB!8 lt!5185))))

(declare-fun bs!5688 () Bool)

(assert (= bs!5688 d!4835))

(declare-fun m!17577 () Bool)

(assert (=> bs!5688 m!17577))

(assert (=> b!43664 d!4835))

(declare-fun d!4837 () Bool)

(assert (=> d!4837 (= (list!182 input!525) (list!183 (c!15986 input!525)))))

(declare-fun bs!5689 () Bool)

(assert (= bs!5689 d!4837))

(declare-fun m!17579 () Bool)

(assert (=> bs!5689 m!17579))

(assert (=> b!43664 d!4837))

(declare-fun d!4839 () Bool)

(assert (=> d!4839 (= (array_inv!246 (_keys!521 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))) (bvsge (size!676 (_keys!521 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!43690 d!4839))

(declare-fun d!4841 () Bool)

(assert (=> d!4841 (= (array_inv!249 (_values!508 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))) (bvsge (size!680 (_values!508 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!43690 d!4841))

(declare-fun d!4843 () Bool)

(assert (=> d!4843 (= (inv!969 (totalInput!1530 cacheFurthestNullable!45)) (isBalanced!23 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))

(declare-fun bs!5690 () Bool)

(assert (= bs!5690 d!4843))

(declare-fun m!17581 () Bool)

(assert (=> bs!5690 m!17581))

(assert (=> b!43663 d!4843))

(declare-fun d!4845 () Bool)

(declare-fun c!15994 () Bool)

(assert (=> d!4845 (= c!15994 ((_ is Node!129) (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))

(declare-fun e!24029 () Bool)

(assert (=> d!4845 (= (inv!970 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) e!24029)))

(declare-fun b!43753 () Bool)

(assert (=> b!43753 (= e!24029 (inv!974 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))

(declare-fun b!43754 () Bool)

(declare-fun e!24030 () Bool)

(assert (=> b!43754 (= e!24029 e!24030)))

(declare-fun res!30385 () Bool)

(assert (=> b!43754 (= res!30385 (not ((_ is Leaf!322) (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(assert (=> b!43754 (=> res!30385 e!24030)))

(declare-fun b!43755 () Bool)

(assert (=> b!43755 (= e!24030 (inv!975 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))

(assert (= (and d!4845 c!15994) b!43753))

(assert (= (and d!4845 (not c!15994)) b!43754))

(assert (= (and b!43754 (not res!30385)) b!43755))

(declare-fun m!17583 () Bool)

(assert (=> b!43753 m!17583))

(declare-fun m!17585 () Bool)

(assert (=> b!43755 m!17585))

(assert (=> b!43689 d!4845))

(declare-fun d!4847 () Bool)

(assert (=> d!4847 (= (list!181 (_1!571 lt!5181)) (list!184 (c!15987 (_1!571 lt!5181))))))

(declare-fun bs!5691 () Bool)

(assert (= bs!5691 d!4847))

(declare-fun m!17587 () Bool)

(assert (=> bs!5691 m!17587))

(assert (=> b!43661 d!4847))

(declare-fun b!43756 () Bool)

(declare-fun e!24032 () Bool)

(declare-fun lt!5204 () tuple2!816)

(assert (=> b!43756 (= e!24032 (= (_2!571 lt!5204) lt!5187))))

(declare-fun b!43757 () Bool)

(declare-fun e!24031 () Bool)

(assert (=> b!43757 (= e!24031 (not (isEmpty!138 (_1!571 lt!5204))))))

(declare-fun b!43758 () Bool)

(assert (=> b!43758 (= e!24032 e!24031)))

(declare-fun res!30386 () Bool)

(assert (=> b!43758 (= res!30386 (< (size!681 (_2!571 lt!5204)) (size!681 lt!5187)))))

(assert (=> b!43758 (=> (not res!30386) (not e!24031))))

(declare-fun d!4849 () Bool)

(declare-fun e!24033 () Bool)

(assert (=> d!4849 e!24033))

(declare-fun res!30387 () Bool)

(assert (=> d!4849 (=> (not res!30387) (not e!24033))))

(assert (=> d!4849 (= res!30387 e!24032)))

(declare-fun c!15995 () Bool)

(assert (=> d!4849 (= c!15995 (> (size!682 (_1!571 lt!5204)) 0))))

(assert (=> d!4849 (= lt!5204 (lexTailRecV2!10 Lexer!56 lt!5180 lt!5187 (BalanceConc!259 Empty!129) lt!5187 (BalanceConc!261 Empty!130)))))

(assert (=> d!4849 (= (lex!33 Lexer!56 lt!5180 lt!5187) lt!5204)))

(declare-fun b!43759 () Bool)

(declare-fun res!30388 () Bool)

(assert (=> b!43759 (=> (not res!30388) (not e!24033))))

(assert (=> b!43759 (= res!30388 (= (list!181 (_1!571 lt!5204)) (_1!577 (lexList!13 Lexer!56 lt!5180 (list!182 lt!5187)))))))

(declare-fun b!43760 () Bool)

(assert (=> b!43760 (= e!24033 (= (list!182 (_2!571 lt!5204)) (_2!577 (lexList!13 Lexer!56 lt!5180 (list!182 lt!5187)))))))

(assert (= (and d!4849 c!15995) b!43758))

(assert (= (and d!4849 (not c!15995)) b!43756))

(assert (= (and b!43758 res!30386) b!43757))

(assert (= (and d!4849 res!30387) b!43759))

(assert (= (and b!43759 res!30388) b!43760))

(declare-fun m!17589 () Bool)

(assert (=> b!43757 m!17589))

(declare-fun m!17591 () Bool)

(assert (=> b!43760 m!17591))

(assert (=> b!43760 m!17479))

(assert (=> b!43760 m!17479))

(declare-fun m!17593 () Bool)

(assert (=> b!43760 m!17593))

(declare-fun m!17595 () Bool)

(assert (=> d!4849 m!17595))

(declare-fun m!17597 () Bool)

(assert (=> d!4849 m!17597))

(declare-fun m!17599 () Bool)

(assert (=> b!43758 m!17599))

(declare-fun m!17601 () Bool)

(assert (=> b!43758 m!17601))

(declare-fun m!17603 () Bool)

(assert (=> b!43759 m!17603))

(assert (=> b!43759 m!17479))

(assert (=> b!43759 m!17479))

(assert (=> b!43759 m!17593))

(assert (=> b!43661 d!4849))

(declare-fun d!4851 () Bool)

(assert (=> d!4851 (= (list!182 (_2!571 lt!5181)) (list!183 (c!15986 (_2!571 lt!5181))))))

(declare-fun bs!5692 () Bool)

(assert (= bs!5692 d!4851))

(declare-fun m!17605 () Bool)

(assert (=> bs!5692 m!17605))

(assert (=> b!43688 d!4851))

(declare-fun d!4853 () Bool)

(declare-fun res!30391 () Bool)

(declare-fun e!24036 () Bool)

(assert (=> d!4853 (=> (not res!30391) (not e!24036))))

(declare-fun rulesValid!16 (LexerInterface!58 List!685) Bool)

(assert (=> d!4853 (= res!30391 (rulesValid!16 Lexer!56 lt!5180))))

(assert (=> d!4853 (= (rulesInvariant!48 Lexer!56 lt!5180) e!24036)))

(declare-fun b!43763 () Bool)

(declare-datatypes ((List!691 0))(
  ( (Nil!689) (Cons!689 (h!6085 String!1061) (t!16392 List!691)) )
))
(declare-fun noDuplicateTag!16 (LexerInterface!58 List!685 List!691) Bool)

(assert (=> b!43763 (= e!24036 (noDuplicateTag!16 Lexer!56 lt!5180 Nil!689))))

(assert (= (and d!4853 res!30391) b!43763))

(declare-fun m!17607 () Bool)

(assert (=> d!4853 m!17607))

(declare-fun m!17609 () Bool)

(assert (=> b!43763 m!17609))

(assert (=> b!43671 d!4853))

(declare-fun b!43774 () Bool)

(declare-fun e!24048 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!12 (LexerInterface!58 List!685 List!688) Bool)

(declare-fun lex!34 (LexerInterface!58 List!685 BalanceConc!258) tuple2!816)

(assert (=> b!43774 (= e!24048 (rulesProduceEachTokenIndividuallyList!12 Lexer!56 lt!5180 (list!181 (_1!571 (lex!34 Lexer!56 lt!5180 (seqFromList!28 lt!5185))))))))

(declare-fun b!43775 () Bool)

(declare-fun e!24045 () Bool)

(declare-fun lt!5217 () tuple2!816)

(declare-fun rulesProduceEachTokenIndividuallyList!13 (LexerInterface!58 List!685 List!688) Bool)

(assert (=> b!43775 (= e!24045 (rulesProduceEachTokenIndividuallyList!13 Lexer!56 lt!5180 (list!181 (_1!571 lt!5217))))))

(declare-fun lt!5215 () Unit!310)

(declare-fun lt!5216 () Unit!310)

(assert (=> b!43775 (= lt!5215 lt!5216)))

(declare-fun lt!5218 () List!688)

(declare-fun rulesProduceEachTokenIndividually!4 (LexerInterface!58 List!685 BalanceConc!260) Bool)

(declare-fun seqFromList!29 (List!688) BalanceConc!260)

(assert (=> b!43775 (rulesProduceEachTokenIndividually!4 Lexer!56 lt!5180 (seqFromList!29 lt!5218))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!4 (LexerInterface!58 List!685 List!684 List!688) Unit!310)

(assert (=> b!43775 (= lt!5216 (lemmaLexThenRulesProducesEachTokenIndividually!4 Lexer!56 lt!5180 lt!5185 lt!5218))))

(assert (=> b!43775 (= lt!5218 (list!181 (_1!571 lt!5217)))))

(assert (=> b!43775 (= lt!5217 (lex!33 Lexer!56 lt!5180 (seqFromList!28 lt!5185)))))

(declare-fun b!43776 () Bool)

(declare-fun res!30405 () Bool)

(assert (=> b!43776 (=> res!30405 e!24048)))

(declare-fun rulesInvariant!49 (LexerInterface!58 List!685) Bool)

(assert (=> b!43776 (= res!30405 (not (rulesInvariant!49 Lexer!56 lt!5180)))))

(declare-fun b!43777 () Bool)

(declare-fun e!24046 () Bool)

(assert (=> b!43777 (= e!24046 e!24048)))

(declare-fun res!30406 () Bool)

(assert (=> b!43777 (=> res!30406 e!24048)))

(assert (=> b!43777 (= res!30406 (isEmpty!137 lt!5180))))

(declare-fun d!4855 () Bool)

(assert (=> d!4855 e!24046))

(declare-fun res!30402 () Bool)

(assert (=> d!4855 (=> (not res!30402) (not e!24046))))

(declare-fun lt!5219 () Bool)

(assert (=> d!4855 (= res!30402 lt!5219)))

(assert (=> d!4855 (= lt!5219 e!24045)))

(declare-fun res!30404 () Bool)

(assert (=> d!4855 (=> res!30404 e!24045)))

(declare-fun e!24047 () Bool)

(assert (=> d!4855 (= res!30404 (not e!24047))))

(declare-fun res!30403 () Bool)

(assert (=> d!4855 (=> (not res!30403) (not e!24047))))

(assert (=> d!4855 (= res!30403 (not (isEmpty!137 lt!5180)))))

(assert (=> d!4855 (= (lexThenRulesProduceEachTokenIndividually!14 Lexer!56 lt!5180 lt!5185) lt!5219)))

(declare-fun b!43778 () Bool)

(assert (=> b!43778 (= e!24047 (rulesInvariant!48 Lexer!56 lt!5180))))

(assert (= (and d!4855 res!30403) b!43778))

(assert (= (and d!4855 (not res!30404)) b!43775))

(assert (= (and d!4855 res!30402) b!43777))

(assert (= (and b!43777 (not res!30406)) b!43776))

(assert (= (and b!43776 (not res!30405)) b!43774))

(assert (=> d!4855 m!17475))

(declare-fun m!17611 () Bool)

(assert (=> b!43775 m!17611))

(declare-fun m!17613 () Bool)

(assert (=> b!43775 m!17613))

(declare-fun m!17615 () Bool)

(assert (=> b!43775 m!17615))

(declare-fun m!17617 () Bool)

(assert (=> b!43775 m!17617))

(declare-fun m!17619 () Bool)

(assert (=> b!43775 m!17619))

(assert (=> b!43775 m!17611))

(assert (=> b!43775 m!17617))

(assert (=> b!43775 m!17481))

(assert (=> b!43775 m!17481))

(declare-fun m!17621 () Bool)

(assert (=> b!43775 m!17621))

(declare-fun m!17623 () Bool)

(assert (=> b!43776 m!17623))

(assert (=> b!43778 m!17435))

(assert (=> b!43777 m!17475))

(assert (=> b!43774 m!17481))

(assert (=> b!43774 m!17481))

(declare-fun m!17625 () Bool)

(assert (=> b!43774 m!17625))

(declare-fun m!17627 () Bool)

(assert (=> b!43774 m!17627))

(assert (=> b!43774 m!17627))

(declare-fun m!17629 () Bool)

(assert (=> b!43774 m!17629))

(assert (=> b!43679 d!4855))

(declare-fun d!4857 () Bool)

(declare-fun res!30411 () Bool)

(declare-fun e!24053 () Bool)

(assert (=> d!4857 (=> res!30411 e!24053)))

(assert (=> d!4857 (= res!30411 ((_ is Nil!686) lt!5193))))

(assert (=> d!4857 (= (forall!70 lt!5193 lambda!746) e!24053)))

(declare-fun b!43783 () Bool)

(declare-fun e!24054 () Bool)

(assert (=> b!43783 (= e!24053 e!24054)))

(declare-fun res!30412 () Bool)

(assert (=> b!43783 (=> (not res!30412) (not e!24054))))

(declare-fun dynLambda!85 (Int Token!92) Bool)

(assert (=> b!43783 (= res!30412 (dynLambda!85 lambda!746 (h!6082 lt!5193)))))

(declare-fun b!43784 () Bool)

(assert (=> b!43784 (= e!24054 (forall!70 (t!16389 lt!5193) lambda!746))))

(assert (= (and d!4857 (not res!30411)) b!43783))

(assert (= (and b!43783 res!30412) b!43784))

(declare-fun b_lambda!241 () Bool)

(assert (=> (not b_lambda!241) (not b!43783)))

(declare-fun m!17631 () Bool)

(assert (=> b!43783 m!17631))

(declare-fun m!17633 () Bool)

(assert (=> b!43784 m!17633))

(assert (=> b!43660 d!4857))

(declare-fun d!4859 () Bool)

(assert (=> d!4859 (= (valid!209 cacheFurthestNullable!45) (validCacheMapFurthestNullable!12 (cache!709 cacheFurthestNullable!45) (totalInput!1530 cacheFurthestNullable!45)))))

(declare-fun bs!5693 () Bool)

(assert (= bs!5693 d!4859))

(assert (=> bs!5693 m!17573))

(assert (=> b!43670 d!4859))

(declare-fun e!24062 () Bool)

(declare-fun setRes!954 () Bool)

(declare-fun b!43789 () Bool)

(declare-fun tp!30112 () Bool)

(declare-fun inv!976 (Context!174) Bool)

(assert (=> b!43789 (= e!24062 (and (inv!976 (_2!572 (_1!573 (h!6083 mapDefault!862)))) setRes!954 tp!30112))))

(declare-fun condSetEmpty!954 () Bool)

(assert (=> b!43789 (= condSetEmpty!954 (= (_2!573 (h!6083 mapDefault!862)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!954 () Bool)

(assert (=> setIsEmpty!954 setRes!954))

(declare-fun setNonEmpty!954 () Bool)

(declare-fun tp!30111 () Bool)

(declare-fun setElem!954 () Context!174)

(assert (=> setNonEmpty!954 (= setRes!954 (and tp!30111 (inv!976 setElem!954)))))

(declare-fun setRest!954 () (InoxSet Context!174))

(assert (=> setNonEmpty!954 (= (_2!573 (h!6083 mapDefault!862)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!954 true) setRest!954))))

(assert (=> b!43677 (= tp!30102 e!24062)))

(assert (= (and b!43789 condSetEmpty!954) setIsEmpty!954))

(assert (= (and b!43789 (not condSetEmpty!954)) setNonEmpty!954))

(assert (= (and b!43677 ((_ is Cons!687) mapDefault!862)) b!43789))

(declare-fun m!17635 () Bool)

(assert (=> b!43789 m!17635))

(declare-fun m!17637 () Bool)

(assert (=> setNonEmpty!954 m!17637))

(declare-fun b!43790 () Bool)

(declare-fun tp!30114 () Bool)

(declare-fun setRes!955 () Bool)

(declare-fun e!24065 () Bool)

(assert (=> b!43790 (= e!24065 (and (inv!976 (_2!572 (_1!573 (h!6083 (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))))) setRes!955 tp!30114))))

(declare-fun condSetEmpty!955 () Bool)

(assert (=> b!43790 (= condSetEmpty!955 (= (_2!573 (h!6083 (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!955 () Bool)

(assert (=> setIsEmpty!955 setRes!955))

(declare-fun setNonEmpty!955 () Bool)

(declare-fun tp!30113 () Bool)

(declare-fun setElem!955 () Context!174)

(assert (=> setNonEmpty!955 (= setRes!955 (and tp!30113 (inv!976 setElem!955)))))

(declare-fun setRest!955 () (InoxSet Context!174))

(assert (=> setNonEmpty!955 (= (_2!573 (h!6083 (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!955 true) setRest!955))))

(assert (=> b!43686 (= tp!30097 e!24065)))

(assert (= (and b!43790 condSetEmpty!955) setIsEmpty!955))

(assert (= (and b!43790 (not condSetEmpty!955)) setNonEmpty!955))

(assert (= (and b!43686 ((_ is Cons!687) (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))) b!43790))

(declare-fun m!17639 () Bool)

(assert (=> b!43790 m!17639))

(declare-fun m!17641 () Bool)

(assert (=> setNonEmpty!955 m!17641))

(declare-fun b!43791 () Bool)

(declare-fun setRes!956 () Bool)

(declare-fun e!24068 () Bool)

(declare-fun tp!30116 () Bool)

(assert (=> b!43791 (= e!24068 (and (inv!976 (_2!572 (_1!573 (h!6083 (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))))) setRes!956 tp!30116))))

(declare-fun condSetEmpty!956 () Bool)

(assert (=> b!43791 (= condSetEmpty!956 (= (_2!573 (h!6083 (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!956 () Bool)

(assert (=> setIsEmpty!956 setRes!956))

(declare-fun setNonEmpty!956 () Bool)

(declare-fun tp!30115 () Bool)

(declare-fun setElem!956 () Context!174)

(assert (=> setNonEmpty!956 (= setRes!956 (and tp!30115 (inv!976 setElem!956)))))

(declare-fun setRest!956 () (InoxSet Context!174))

(assert (=> setNonEmpty!956 (= (_2!573 (h!6083 (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!956 true) setRest!956))))

(assert (=> b!43686 (= tp!30096 e!24068)))

(assert (= (and b!43791 condSetEmpty!956) setIsEmpty!956))

(assert (= (and b!43791 (not condSetEmpty!956)) setNonEmpty!956))

(assert (= (and b!43686 ((_ is Cons!687) (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))) b!43791))

(declare-fun m!17643 () Bool)

(assert (=> b!43791 m!17643))

(declare-fun m!17645 () Bool)

(assert (=> setNonEmpty!956 m!17645))

(declare-fun b!43796 () Bool)

(declare-fun e!24074 () Bool)

(declare-fun setRes!959 () Bool)

(declare-fun tp!30121 () Bool)

(assert (=> b!43796 (= e!24074 (and setRes!959 tp!30121))))

(declare-fun condSetEmpty!959 () Bool)

(assert (=> b!43796 (= condSetEmpty!959 (= (_1!569 (_1!570 (h!6081 (zeroValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!959 () Bool)

(assert (=> setIsEmpty!959 setRes!959))

(declare-fun setNonEmpty!959 () Bool)

(declare-fun tp!30122 () Bool)

(declare-fun setElem!959 () Context!174)

(assert (=> setNonEmpty!959 (= setRes!959 (and tp!30122 (inv!976 setElem!959)))))

(declare-fun setRest!959 () (InoxSet Context!174))

(assert (=> setNonEmpty!959 (= (_1!569 (_1!570 (h!6081 (zeroValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!959 true) setRest!959))))

(assert (=> b!43659 (= tp!30103 e!24074)))

(assert (= (and b!43796 condSetEmpty!959) setIsEmpty!959))

(assert (= (and b!43796 (not condSetEmpty!959)) setNonEmpty!959))

(assert (= (and b!43659 ((_ is Cons!685) (zeroValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45)))))))) b!43796))

(declare-fun m!17647 () Bool)

(assert (=> setNonEmpty!959 m!17647))

(declare-fun b!43797 () Bool)

(declare-fun e!24076 () Bool)

(declare-fun setRes!960 () Bool)

(declare-fun tp!30123 () Bool)

(assert (=> b!43797 (= e!24076 (and setRes!960 tp!30123))))

(declare-fun condSetEmpty!960 () Bool)

(assert (=> b!43797 (= condSetEmpty!960 (= (_1!569 (_1!570 (h!6081 (minValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!960 () Bool)

(assert (=> setIsEmpty!960 setRes!960))

(declare-fun setNonEmpty!960 () Bool)

(declare-fun tp!30124 () Bool)

(declare-fun setElem!960 () Context!174)

(assert (=> setNonEmpty!960 (= setRes!960 (and tp!30124 (inv!976 setElem!960)))))

(declare-fun setRest!960 () (InoxSet Context!174))

(assert (=> setNonEmpty!960 (= (_1!569 (_1!570 (h!6081 (minValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!960 true) setRest!960))))

(assert (=> b!43659 (= tp!30099 e!24076)))

(assert (= (and b!43797 condSetEmpty!960) setIsEmpty!960))

(assert (= (and b!43797 (not condSetEmpty!960)) setNonEmpty!960))

(assert (= (and b!43659 ((_ is Cons!685) (minValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45)))))))) b!43797))

(declare-fun m!17649 () Bool)

(assert (=> setNonEmpty!960 m!17649))

(declare-fun b!43800 () Bool)

(declare-fun e!24080 () Bool)

(assert (=> b!43800 (= e!24080 true)))

(declare-fun b!43799 () Bool)

(declare-fun e!24079 () Bool)

(assert (=> b!43799 (= e!24079 e!24080)))

(declare-fun b!43798 () Bool)

(declare-fun e!24078 () Bool)

(assert (=> b!43798 (= e!24078 e!24079)))

(assert (=> b!43702 e!24078))

(assert (= b!43799 b!43800))

(assert (= b!43798 b!43799))

(assert (= (and b!43702 ((_ is Cons!683) (t!16386 lt!5180))) b!43798))

(assert (=> b!43800 (< (dynLambda!82 order!127 (toValue!642 (transformation!163 (h!6079 (t!16386 lt!5180))))) (dynLambda!83 order!129 lambda!746))))

(assert (=> b!43800 (< (dynLambda!84 order!131 (toChars!501 (transformation!163 (h!6079 (t!16386 lt!5180))))) (dynLambda!83 order!129 lambda!746))))

(declare-fun setNonEmpty!965 () Bool)

(declare-fun setRes!965 () Bool)

(declare-fun tp!30137 () Bool)

(declare-fun setElem!966 () Context!174)

(assert (=> setNonEmpty!965 (= setRes!965 (and tp!30137 (inv!976 setElem!966)))))

(declare-fun mapValue!867 () List!689)

(declare-fun setRest!966 () (InoxSet Context!174))

(assert (=> setNonEmpty!965 (= (_2!573 (h!6083 mapValue!867)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!966 true) setRest!966))))

(declare-fun setNonEmpty!966 () Bool)

(declare-fun setRes!966 () Bool)

(declare-fun tp!30135 () Bool)

(declare-fun setElem!965 () Context!174)

(assert (=> setNonEmpty!966 (= setRes!966 (and tp!30135 (inv!976 setElem!965)))))

(declare-fun mapDefault!867 () List!689)

(declare-fun setRest!965 () (InoxSet Context!174))

(assert (=> setNonEmpty!966 (= (_2!573 (h!6083 mapDefault!867)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!965 true) setRest!965))))

(declare-fun e!24096 () Bool)

(declare-fun b!43807 () Bool)

(declare-fun tp!30138 () Bool)

(assert (=> b!43807 (= e!24096 (and (inv!976 (_2!572 (_1!573 (h!6083 mapValue!867)))) setRes!965 tp!30138))))

(declare-fun condSetEmpty!965 () Bool)

(assert (=> b!43807 (= condSetEmpty!965 (= (_2!573 (h!6083 mapValue!867)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun condMapEmpty!867 () Bool)

(assert (=> mapNonEmpty!863 (= condMapEmpty!867 (= mapRest!864 ((as const (Array (_ BitVec 32) List!689)) mapDefault!867)))))

(declare-fun e!24097 () Bool)

(declare-fun mapRes!867 () Bool)

(assert (=> mapNonEmpty!863 (= tp!30085 (and e!24097 mapRes!867))))

(declare-fun mapNonEmpty!867 () Bool)

(declare-fun tp!30139 () Bool)

(assert (=> mapNonEmpty!867 (= mapRes!867 (and tp!30139 e!24096))))

(declare-fun mapKey!867 () (_ BitVec 32))

(declare-fun mapRest!867 () (Array (_ BitVec 32) List!689))

(assert (=> mapNonEmpty!867 (= mapRest!864 (store mapRest!867 mapKey!867 mapValue!867))))

(declare-fun setIsEmpty!965 () Bool)

(assert (=> setIsEmpty!965 setRes!965))

(declare-fun setIsEmpty!966 () Bool)

(assert (=> setIsEmpty!966 setRes!966))

(declare-fun tp!30136 () Bool)

(declare-fun b!43808 () Bool)

(assert (=> b!43808 (= e!24097 (and (inv!976 (_2!572 (_1!573 (h!6083 mapDefault!867)))) setRes!966 tp!30136))))

(declare-fun condSetEmpty!966 () Bool)

(assert (=> b!43808 (= condSetEmpty!966 (= (_2!573 (h!6083 mapDefault!867)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun mapIsEmpty!867 () Bool)

(assert (=> mapIsEmpty!867 mapRes!867))

(assert (= (and mapNonEmpty!863 condMapEmpty!867) mapIsEmpty!867))

(assert (= (and mapNonEmpty!863 (not condMapEmpty!867)) mapNonEmpty!867))

(assert (= (and b!43807 condSetEmpty!965) setIsEmpty!965))

(assert (= (and b!43807 (not condSetEmpty!965)) setNonEmpty!965))

(assert (= (and mapNonEmpty!867 ((_ is Cons!687) mapValue!867)) b!43807))

(assert (= (and b!43808 condSetEmpty!966) setIsEmpty!966))

(assert (= (and b!43808 (not condSetEmpty!966)) setNonEmpty!966))

(assert (= (and mapNonEmpty!863 ((_ is Cons!687) mapDefault!867)) b!43808))

(declare-fun m!17651 () Bool)

(assert (=> b!43807 m!17651))

(declare-fun m!17653 () Bool)

(assert (=> setNonEmpty!966 m!17653))

(declare-fun m!17655 () Bool)

(assert (=> setNonEmpty!965 m!17655))

(declare-fun m!17657 () Bool)

(assert (=> mapNonEmpty!867 m!17657))

(declare-fun m!17659 () Bool)

(assert (=> b!43808 m!17659))

(declare-fun setRes!967 () Bool)

(declare-fun e!24100 () Bool)

(declare-fun tp!30141 () Bool)

(declare-fun b!43809 () Bool)

(assert (=> b!43809 (= e!24100 (and (inv!976 (_2!572 (_1!573 (h!6083 mapValue!864)))) setRes!967 tp!30141))))

(declare-fun condSetEmpty!967 () Bool)

(assert (=> b!43809 (= condSetEmpty!967 (= (_2!573 (h!6083 mapValue!864)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!967 () Bool)

(assert (=> setIsEmpty!967 setRes!967))

(declare-fun setNonEmpty!967 () Bool)

(declare-fun tp!30140 () Bool)

(declare-fun setElem!967 () Context!174)

(assert (=> setNonEmpty!967 (= setRes!967 (and tp!30140 (inv!976 setElem!967)))))

(declare-fun setRest!967 () (InoxSet Context!174))

(assert (=> setNonEmpty!967 (= (_2!573 (h!6083 mapValue!864)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!967 true) setRest!967))))

(assert (=> mapNonEmpty!863 (= tp!30100 e!24100)))

(assert (= (and b!43809 condSetEmpty!967) setIsEmpty!967))

(assert (= (and b!43809 (not condSetEmpty!967)) setNonEmpty!967))

(assert (= (and mapNonEmpty!863 ((_ is Cons!687) mapValue!864)) b!43809))

(declare-fun m!17661 () Bool)

(assert (=> b!43809 m!17661))

(declare-fun m!17663 () Bool)

(assert (=> setNonEmpty!967 m!17663))

(declare-fun b!43814 () Bool)

(declare-fun e!24110 () Bool)

(declare-fun tp!30147 () Bool)

(declare-fun setRes!970 () Bool)

(assert (=> b!43814 (= e!24110 (and (inv!976 (_1!574 (_1!575 (h!6084 mapDefault!864)))) setRes!970 tp!30147))))

(declare-fun condSetEmpty!970 () Bool)

(assert (=> b!43814 (= condSetEmpty!970 (= (_2!575 (h!6084 mapDefault!864)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!970 () Bool)

(assert (=> setIsEmpty!970 setRes!970))

(declare-fun setNonEmpty!970 () Bool)

(declare-fun tp!30146 () Bool)

(declare-fun setElem!970 () Context!174)

(assert (=> setNonEmpty!970 (= setRes!970 (and tp!30146 (inv!976 setElem!970)))))

(declare-fun setRest!970 () (InoxSet Context!174))

(assert (=> setNonEmpty!970 (= (_2!575 (h!6084 mapDefault!864)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!970 true) setRest!970))))

(assert (=> b!43685 (= tp!30084 e!24110)))

(assert (= (and b!43814 condSetEmpty!970) setIsEmpty!970))

(assert (= (and b!43814 (not condSetEmpty!970)) setNonEmpty!970))

(assert (= (and b!43685 ((_ is Cons!688) mapDefault!864)) b!43814))

(declare-fun m!17665 () Bool)

(assert (=> b!43814 m!17665))

(declare-fun m!17667 () Bool)

(assert (=> setNonEmpty!970 m!17667))

(declare-fun b!43821 () Bool)

(declare-fun tp!30153 () Bool)

(declare-fun e!24115 () Bool)

(declare-fun tp!30152 () Bool)

(assert (=> b!43821 (= e!24115 (and (inv!970 (left!551 (c!15986 input!525))) tp!30152 (inv!970 (right!881 (c!15986 input!525))) tp!30153))))

(declare-fun b!43822 () Bool)

(declare-fun inv!977 (IArray!259) Bool)

(assert (=> b!43822 (= e!24115 (inv!977 (xs!2708 (c!15986 input!525))))))

(assert (=> b!43683 (= tp!30095 (and (inv!970 (c!15986 input!525)) e!24115))))

(assert (= (and b!43683 ((_ is Node!129) (c!15986 input!525))) b!43821))

(assert (= (and b!43683 ((_ is Leaf!322) (c!15986 input!525))) b!43822))

(declare-fun m!17669 () Bool)

(assert (=> b!43821 m!17669))

(declare-fun m!17671 () Bool)

(assert (=> b!43821 m!17671))

(declare-fun m!17673 () Bool)

(assert (=> b!43822 m!17673))

(assert (=> b!43683 m!17453))

(declare-fun b!43823 () Bool)

(declare-fun e!24119 () Bool)

(declare-fun tp!30155 () Bool)

(declare-fun setRes!971 () Bool)

(assert (=> b!43823 (= e!24119 (and (inv!976 (_1!574 (_1!575 (h!6084 (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))))) setRes!971 tp!30155))))

(declare-fun condSetEmpty!971 () Bool)

(assert (=> b!43823 (= condSetEmpty!971 (= (_2!575 (h!6084 (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!971 () Bool)

(assert (=> setIsEmpty!971 setRes!971))

(declare-fun setNonEmpty!971 () Bool)

(declare-fun tp!30154 () Bool)

(declare-fun setElem!971 () Context!174)

(assert (=> setNonEmpty!971 (= setRes!971 (and tp!30154 (inv!976 setElem!971)))))

(declare-fun setRest!971 () (InoxSet Context!174))

(assert (=> setNonEmpty!971 (= (_2!575 (h!6084 (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!971 true) setRest!971))))

(assert (=> b!43690 (= tp!30087 e!24119)))

(assert (= (and b!43823 condSetEmpty!971) setIsEmpty!971))

(assert (= (and b!43823 (not condSetEmpty!971)) setNonEmpty!971))

(assert (= (and b!43690 ((_ is Cons!688) (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))) b!43823))

(declare-fun m!17675 () Bool)

(assert (=> b!43823 m!17675))

(declare-fun m!17677 () Bool)

(assert (=> setNonEmpty!971 m!17677))

(declare-fun tp!30157 () Bool)

(declare-fun e!24122 () Bool)

(declare-fun b!43824 () Bool)

(declare-fun setRes!972 () Bool)

(assert (=> b!43824 (= e!24122 (and (inv!976 (_1!574 (_1!575 (h!6084 (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))))) setRes!972 tp!30157))))

(declare-fun condSetEmpty!972 () Bool)

(assert (=> b!43824 (= condSetEmpty!972 (= (_2!575 (h!6084 (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!972 () Bool)

(assert (=> setIsEmpty!972 setRes!972))

(declare-fun setNonEmpty!972 () Bool)

(declare-fun tp!30156 () Bool)

(declare-fun setElem!972 () Context!174)

(assert (=> setNonEmpty!972 (= setRes!972 (and tp!30156 (inv!976 setElem!972)))))

(declare-fun setRest!972 () (InoxSet Context!174))

(assert (=> setNonEmpty!972 (= (_2!575 (h!6084 (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!972 true) setRest!972))))

(assert (=> b!43690 (= tp!30105 e!24122)))

(assert (= (and b!43824 condSetEmpty!972) setIsEmpty!972))

(assert (= (and b!43824 (not condSetEmpty!972)) setNonEmpty!972))

(assert (= (and b!43690 ((_ is Cons!688) (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))) b!43824))

(declare-fun m!17679 () Bool)

(assert (=> b!43824 m!17679))

(declare-fun m!17681 () Bool)

(assert (=> setNonEmpty!972 m!17681))

(declare-fun b!43825 () Bool)

(declare-fun e!24123 () Bool)

(declare-fun setRes!973 () Bool)

(declare-fun tp!30158 () Bool)

(assert (=> b!43825 (= e!24123 (and setRes!973 tp!30158))))

(declare-fun condSetEmpty!973 () Bool)

(assert (=> b!43825 (= condSetEmpty!973 (= (_1!569 (_1!570 (h!6081 mapDefault!863))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!973 () Bool)

(assert (=> setIsEmpty!973 setRes!973))

(declare-fun setNonEmpty!973 () Bool)

(declare-fun tp!30159 () Bool)

(declare-fun setElem!973 () Context!174)

(assert (=> setNonEmpty!973 (= setRes!973 (and tp!30159 (inv!976 setElem!973)))))

(declare-fun setRest!973 () (InoxSet Context!174))

(assert (=> setNonEmpty!973 (= (_1!569 (_1!570 (h!6081 mapDefault!863))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!973 true) setRest!973))))

(assert (=> b!43662 (= tp!30092 e!24123)))

(assert (= (and b!43825 condSetEmpty!973) setIsEmpty!973))

(assert (= (and b!43825 (not condSetEmpty!973)) setNonEmpty!973))

(assert (= (and b!43662 ((_ is Cons!685) mapDefault!863)) b!43825))

(declare-fun m!17683 () Bool)

(assert (=> setNonEmpty!973 m!17683))

(declare-fun e!24125 () Bool)

(declare-fun b!43826 () Bool)

(declare-fun tp!30160 () Bool)

(declare-fun tp!30161 () Bool)

(assert (=> b!43826 (= e!24125 (and (inv!970 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) tp!30160 (inv!970 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) tp!30161))))

(declare-fun b!43827 () Bool)

(assert (=> b!43827 (= e!24125 (inv!977 (xs!2708 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(assert (=> b!43689 (= tp!30093 (and (inv!970 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) e!24125))))

(assert (= (and b!43689 ((_ is Node!129) (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) b!43826))

(assert (= (and b!43689 ((_ is Leaf!322) (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) b!43827))

(declare-fun m!17685 () Bool)

(assert (=> b!43826 m!17685))

(declare-fun m!17687 () Bool)

(assert (=> b!43826 m!17687))

(declare-fun m!17689 () Bool)

(assert (=> b!43827 m!17689))

(assert (=> b!43689 m!17449))

(declare-fun setIsEmpty!978 () Bool)

(declare-fun setRes!979 () Bool)

(assert (=> setIsEmpty!978 setRes!979))

(declare-fun mapNonEmpty!870 () Bool)

(declare-fun mapRes!870 () Bool)

(declare-fun tp!30172 () Bool)

(declare-fun e!24135 () Bool)

(assert (=> mapNonEmpty!870 (= mapRes!870 (and tp!30172 e!24135))))

(declare-fun mapValue!870 () List!687)

(declare-fun mapRest!870 () (Array (_ BitVec 32) List!687))

(declare-fun mapKey!870 () (_ BitVec 32))

(assert (=> mapNonEmpty!870 (= mapRest!862 (store mapRest!870 mapKey!870 mapValue!870))))

(declare-fun mapIsEmpty!870 () Bool)

(assert (=> mapIsEmpty!870 mapRes!870))

(declare-fun b!43834 () Bool)

(declare-fun tp!30173 () Bool)

(assert (=> b!43834 (= e!24135 (and setRes!979 tp!30173))))

(declare-fun condSetEmpty!978 () Bool)

(assert (=> b!43834 (= condSetEmpty!978 (= (_1!569 (_1!570 (h!6081 mapValue!870))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setNonEmpty!978 () Bool)

(declare-fun setRes!978 () Bool)

(declare-fun tp!30176 () Bool)

(declare-fun setElem!979 () Context!174)

(assert (=> setNonEmpty!978 (= setRes!978 (and tp!30176 (inv!976 setElem!979)))))

(declare-fun mapDefault!870 () List!687)

(declare-fun setRest!978 () (InoxSet Context!174))

(assert (=> setNonEmpty!978 (= (_1!569 (_1!570 (h!6081 mapDefault!870))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!979 true) setRest!978))))

(declare-fun condMapEmpty!870 () Bool)

(assert (=> mapNonEmpty!862 (= condMapEmpty!870 (= mapRest!862 ((as const (Array (_ BitVec 32) List!687)) mapDefault!870)))))

(declare-fun e!24137 () Bool)

(assert (=> mapNonEmpty!862 (= tp!30089 (and e!24137 mapRes!870))))

(declare-fun b!43835 () Bool)

(declare-fun tp!30174 () Bool)

(assert (=> b!43835 (= e!24137 (and setRes!978 tp!30174))))

(declare-fun condSetEmpty!979 () Bool)

(assert (=> b!43835 (= condSetEmpty!979 (= (_1!569 (_1!570 (h!6081 mapDefault!870))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setNonEmpty!979 () Bool)

(declare-fun tp!30175 () Bool)

(declare-fun setElem!978 () Context!174)

(assert (=> setNonEmpty!979 (= setRes!979 (and tp!30175 (inv!976 setElem!978)))))

(declare-fun setRest!979 () (InoxSet Context!174))

(assert (=> setNonEmpty!979 (= (_1!569 (_1!570 (h!6081 mapValue!870))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!978 true) setRest!979))))

(declare-fun setIsEmpty!979 () Bool)

(assert (=> setIsEmpty!979 setRes!978))

(assert (= (and mapNonEmpty!862 condMapEmpty!870) mapIsEmpty!870))

(assert (= (and mapNonEmpty!862 (not condMapEmpty!870)) mapNonEmpty!870))

(assert (= (and b!43834 condSetEmpty!978) setIsEmpty!978))

(assert (= (and b!43834 (not condSetEmpty!978)) setNonEmpty!979))

(assert (= (and mapNonEmpty!870 ((_ is Cons!685) mapValue!870)) b!43834))

(assert (= (and b!43835 condSetEmpty!979) setIsEmpty!979))

(assert (= (and b!43835 (not condSetEmpty!979)) setNonEmpty!978))

(assert (= (and mapNonEmpty!862 ((_ is Cons!685) mapDefault!870)) b!43835))

(declare-fun m!17691 () Bool)

(assert (=> mapNonEmpty!870 m!17691))

(declare-fun m!17693 () Bool)

(assert (=> setNonEmpty!978 m!17693))

(declare-fun m!17695 () Bool)

(assert (=> setNonEmpty!979 m!17695))

(declare-fun b!43836 () Bool)

(declare-fun e!24139 () Bool)

(declare-fun setRes!980 () Bool)

(declare-fun tp!30177 () Bool)

(assert (=> b!43836 (= e!24139 (and setRes!980 tp!30177))))

(declare-fun condSetEmpty!980 () Bool)

(assert (=> b!43836 (= condSetEmpty!980 (= (_1!569 (_1!570 (h!6081 mapValue!863))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!980 () Bool)

(assert (=> setIsEmpty!980 setRes!980))

(declare-fun setNonEmpty!980 () Bool)

(declare-fun tp!30178 () Bool)

(declare-fun setElem!980 () Context!174)

(assert (=> setNonEmpty!980 (= setRes!980 (and tp!30178 (inv!976 setElem!980)))))

(declare-fun setRest!980 () (InoxSet Context!174))

(assert (=> setNonEmpty!980 (= (_1!569 (_1!570 (h!6081 mapValue!863))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!980 true) setRest!980))))

(assert (=> mapNonEmpty!862 (= tp!30091 e!24139)))

(assert (= (and b!43836 condSetEmpty!980) setIsEmpty!980))

(assert (= (and b!43836 (not condSetEmpty!980)) setNonEmpty!980))

(assert (= (and mapNonEmpty!862 ((_ is Cons!685) mapValue!863)) b!43836))

(declare-fun m!17697 () Bool)

(assert (=> setNonEmpty!980 m!17697))

(declare-fun setNonEmpty!985 () Bool)

(declare-fun setRes!985 () Bool)

(declare-fun tp!30191 () Bool)

(declare-fun setElem!986 () Context!174)

(assert (=> setNonEmpty!985 (= setRes!985 (and tp!30191 (inv!976 setElem!986)))))

(declare-fun mapValue!873 () List!690)

(declare-fun setRest!986 () (InoxSet Context!174))

(assert (=> setNonEmpty!985 (= (_2!575 (h!6084 mapValue!873)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!986 true) setRest!986))))

(declare-fun mapNonEmpty!873 () Bool)

(declare-fun mapRes!873 () Bool)

(declare-fun tp!30189 () Bool)

(declare-fun e!24154 () Bool)

(assert (=> mapNonEmpty!873 (= mapRes!873 (and tp!30189 e!24154))))

(declare-fun mapKey!873 () (_ BitVec 32))

(declare-fun mapRest!873 () (Array (_ BitVec 32) List!690))

(assert (=> mapNonEmpty!873 (= mapRest!863 (store mapRest!873 mapKey!873 mapValue!873))))

(declare-fun setNonEmpty!986 () Bool)

(declare-fun setRes!986 () Bool)

(declare-fun tp!30192 () Bool)

(declare-fun setElem!985 () Context!174)

(assert (=> setNonEmpty!986 (= setRes!986 (and tp!30192 (inv!976 setElem!985)))))

(declare-fun mapDefault!873 () List!690)

(declare-fun setRest!985 () (InoxSet Context!174))

(assert (=> setNonEmpty!986 (= (_2!575 (h!6084 mapDefault!873)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!985 true) setRest!985))))

(declare-fun setIsEmpty!985 () Bool)

(assert (=> setIsEmpty!985 setRes!986))

(declare-fun b!43843 () Bool)

(declare-fun tp!30193 () Bool)

(assert (=> b!43843 (= e!24154 (and (inv!976 (_1!574 (_1!575 (h!6084 mapValue!873)))) setRes!985 tp!30193))))

(declare-fun condSetEmpty!986 () Bool)

(assert (=> b!43843 (= condSetEmpty!986 (= (_2!575 (h!6084 mapValue!873)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun b!43844 () Bool)

(declare-fun tp!30190 () Bool)

(declare-fun e!24157 () Bool)

(assert (=> b!43844 (= e!24157 (and (inv!976 (_1!574 (_1!575 (h!6084 mapDefault!873)))) setRes!986 tp!30190))))

(declare-fun condSetEmpty!985 () Bool)

(assert (=> b!43844 (= condSetEmpty!985 (= (_2!575 (h!6084 mapDefault!873)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun mapIsEmpty!873 () Bool)

(assert (=> mapIsEmpty!873 mapRes!873))

(declare-fun setIsEmpty!986 () Bool)

(assert (=> setIsEmpty!986 setRes!985))

(declare-fun condMapEmpty!873 () Bool)

(assert (=> mapNonEmpty!864 (= condMapEmpty!873 (= mapRest!863 ((as const (Array (_ BitVec 32) List!690)) mapDefault!873)))))

(assert (=> mapNonEmpty!864 (= tp!30106 (and e!24157 mapRes!873))))

(assert (= (and mapNonEmpty!864 condMapEmpty!873) mapIsEmpty!873))

(assert (= (and mapNonEmpty!864 (not condMapEmpty!873)) mapNonEmpty!873))

(assert (= (and b!43843 condSetEmpty!986) setIsEmpty!986))

(assert (= (and b!43843 (not condSetEmpty!986)) setNonEmpty!985))

(assert (= (and mapNonEmpty!873 ((_ is Cons!688) mapValue!873)) b!43843))

(assert (= (and b!43844 condSetEmpty!985) setIsEmpty!985))

(assert (= (and b!43844 (not condSetEmpty!985)) setNonEmpty!986))

(assert (= (and mapNonEmpty!864 ((_ is Cons!688) mapDefault!873)) b!43844))

(declare-fun m!17699 () Bool)

(assert (=> b!43844 m!17699))

(declare-fun m!17701 () Bool)

(assert (=> b!43843 m!17701))

(declare-fun m!17703 () Bool)

(assert (=> setNonEmpty!985 m!17703))

(declare-fun m!17705 () Bool)

(assert (=> setNonEmpty!986 m!17705))

(declare-fun m!17707 () Bool)

(assert (=> mapNonEmpty!873 m!17707))

(declare-fun tp!30195 () Bool)

(declare-fun e!24161 () Bool)

(declare-fun setRes!987 () Bool)

(declare-fun b!43845 () Bool)

(assert (=> b!43845 (= e!24161 (and (inv!976 (_1!574 (_1!575 (h!6084 mapValue!862)))) setRes!987 tp!30195))))

(declare-fun condSetEmpty!987 () Bool)

(assert (=> b!43845 (= condSetEmpty!987 (= (_2!575 (h!6084 mapValue!862)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!987 () Bool)

(assert (=> setIsEmpty!987 setRes!987))

(declare-fun setNonEmpty!987 () Bool)

(declare-fun tp!30194 () Bool)

(declare-fun setElem!987 () Context!174)

(assert (=> setNonEmpty!987 (= setRes!987 (and tp!30194 (inv!976 setElem!987)))))

(declare-fun setRest!987 () (InoxSet Context!174))

(assert (=> setNonEmpty!987 (= (_2!575 (h!6084 mapValue!862)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!987 true) setRest!987))))

(assert (=> mapNonEmpty!864 (= tp!30101 e!24161)))

(assert (= (and b!43845 condSetEmpty!987) setIsEmpty!987))

(assert (= (and b!43845 (not condSetEmpty!987)) setNonEmpty!987))

(assert (= (and mapNonEmpty!864 ((_ is Cons!688) mapValue!862)) b!43845))

(declare-fun m!17709 () Bool)

(assert (=> b!43845 m!17709))

(declare-fun m!17711 () Bool)

(assert (=> setNonEmpty!987 m!17711))

(declare-fun b_lambda!243 () Bool)

(assert (= b_lambda!241 (or b!43660 b_lambda!243)))

(declare-fun bs!5694 () Bool)

(declare-fun d!4861 () Bool)

(assert (= bs!5694 (and d!4861 b!43660)))

(declare-fun rulesProduceIndividualToken!5 (LexerInterface!58 List!685 Token!92) Bool)

(assert (=> bs!5694 (= (dynLambda!85 lambda!746 (h!6082 lt!5193)) (rulesProduceIndividualToken!5 Lexer!56 lt!5180 (h!6082 lt!5193)))))

(declare-fun m!17713 () Bool)

(assert (=> bs!5694 m!17713))

(assert (=> b!43783 d!4861))

(check-sat (not b!43775) (not b!43836) (not d!4815) (not d!4813) (not b!43845) (not b!43742) (not setNonEmpty!956) (not b!43809) (not b!43740) (not b!43808) (not d!4809) (not b!43824) (not b!43826) (not d!4851) (not d!4837) (not setNonEmpty!979) (not b!43778) b_and!1113 (not mapNonEmpty!870) (not b!43727) (not mapNonEmpty!873) (not d!4803) (not b!43760) (not b!43755) (not setNonEmpty!978) (not d!4833) (not b!43844) (not mapNonEmpty!867) (not b_next!1083) (not b!43759) (not d!4855) (not b!43796) (not b_next!1085) (not b!43752) (not b!43791) (not setNonEmpty!960) (not b!43711) (not b!43713) (not setNonEmpty!967) (not b!43757) (not b!43753) (not b_next!1081) (not b!43774) (not b!43834) (not b!43726) (not b!43798) b_and!1119 (not d!4853) (not d!4849) (not b!43821) (not d!4859) (not setNonEmpty!985) (not b!43741) (not b!43822) (not b!43758) (not b!43776) (not b_next!1079) (not setNonEmpty!971) (not b_next!1077) (not setNonEmpty!966) b_and!1111 (not b!43763) (not setNonEmpty!959) (not b!43825) (not b!43749) (not b!43823) (not d!4799) (not setNonEmpty!987) (not setNonEmpty!965) (not setNonEmpty!954) (not b!43724) (not d!4825) (not b!43827) (not bs!5694) (not setNonEmpty!973) (not b!43743) (not d!4817) (not setNonEmpty!986) (not b!43689) b_and!1115 (not setNonEmpty!970) (not d!4805) (not setNonEmpty!955) (not d!4843) (not b!43728) (not d!4835) (not b!43683) (not b!43789) (not b!43784) (not d!4821) (not b!43843) (not d!4847) (not b_lambda!243) (not b!43746) (not b!43797) (not b!43790) b_and!1117 (not b!43814) (not setNonEmpty!972) (not d!4819) (not b_next!1087) (not d!4801) (not b!43777) (not b!43807) (not b!43835) (not d!4811) (not setNonEmpty!980) b_and!1121)
(check-sat b_and!1113 (not b_next!1083) (not b_next!1085) (not b_next!1081) b_and!1119 b_and!1115 b_and!1117 (not b_next!1087) b_and!1121 (not b_next!1079) (not b_next!1077) b_and!1111)
(get-model)

(declare-fun d!4863 () Bool)

(declare-fun res!30457 () Bool)

(declare-fun e!24167 () Bool)

(assert (=> d!4863 (=> res!30457 e!24167)))

(assert (=> d!4863 (= res!30457 (not ((_ is Node!129) (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(assert (=> d!4863 (= (isBalanced!23 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) e!24167)))

(declare-fun b!43858 () Bool)

(declare-fun res!30459 () Bool)

(declare-fun e!24166 () Bool)

(assert (=> b!43858 (=> (not res!30459) (not e!24166))))

(declare-fun isEmpty!139 (Conc!129) Bool)

(assert (=> b!43858 (= res!30459 (not (isEmpty!139 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))))

(declare-fun b!43859 () Bool)

(declare-fun res!30456 () Bool)

(assert (=> b!43859 (=> (not res!30456) (not e!24166))))

(assert (=> b!43859 (= res!30456 (isBalanced!23 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(declare-fun b!43860 () Bool)

(declare-fun res!30458 () Bool)

(assert (=> b!43860 (=> (not res!30458) (not e!24166))))

(assert (=> b!43860 (= res!30458 (isBalanced!23 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(declare-fun b!43861 () Bool)

(assert (=> b!43861 (= e!24166 (not (isEmpty!139 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))))

(declare-fun b!43862 () Bool)

(assert (=> b!43862 (= e!24167 e!24166)))

(declare-fun res!30455 () Bool)

(assert (=> b!43862 (=> (not res!30455) (not e!24166))))

(declare-fun height!10 (Conc!129) Int)

(assert (=> b!43862 (= res!30455 (<= (- 1) (- (height!10 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) (height!10 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))))

(declare-fun b!43863 () Bool)

(declare-fun res!30460 () Bool)

(assert (=> b!43863 (=> (not res!30460) (not e!24166))))

(assert (=> b!43863 (= res!30460 (<= (- (height!10 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) (height!10 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) 1))))

(assert (= (and d!4863 (not res!30457)) b!43862))

(assert (= (and b!43862 res!30455) b!43863))

(assert (= (and b!43863 res!30460) b!43859))

(assert (= (and b!43859 res!30456) b!43860))

(assert (= (and b!43860 res!30458) b!43858))

(assert (= (and b!43858 res!30459) b!43861))

(declare-fun m!17715 () Bool)

(assert (=> b!43860 m!17715))

(declare-fun m!17717 () Bool)

(assert (=> b!43863 m!17717))

(declare-fun m!17719 () Bool)

(assert (=> b!43863 m!17719))

(declare-fun m!17721 () Bool)

(assert (=> b!43859 m!17721))

(declare-fun m!17723 () Bool)

(assert (=> b!43861 m!17723))

(assert (=> b!43862 m!17717))

(assert (=> b!43862 m!17719))

(declare-fun m!17725 () Bool)

(assert (=> b!43858 m!17725))

(assert (=> d!4843 d!4863))

(declare-fun d!4865 () Bool)

(declare-fun res!30465 () Bool)

(declare-fun e!24170 () Bool)

(assert (=> d!4865 (=> (not res!30465) (not e!24170))))

(declare-fun size!683 (List!684) Int)

(declare-fun list!185 (IArray!259) List!684)

(assert (=> d!4865 (= res!30465 (<= (size!683 (list!185 (xs!2708 (c!15986 input!525)))) 512))))

(assert (=> d!4865 (= (inv!975 (c!15986 input!525)) e!24170)))

(declare-fun b!43868 () Bool)

(declare-fun res!30466 () Bool)

(assert (=> b!43868 (=> (not res!30466) (not e!24170))))

(assert (=> b!43868 (= res!30466 (= (csize!489 (c!15986 input!525)) (size!683 (list!185 (xs!2708 (c!15986 input!525))))))))

(declare-fun b!43869 () Bool)

(assert (=> b!43869 (= e!24170 (and (> (csize!489 (c!15986 input!525)) 0) (<= (csize!489 (c!15986 input!525)) 512)))))

(assert (= (and d!4865 res!30465) b!43868))

(assert (= (and b!43868 res!30466) b!43869))

(declare-fun m!17727 () Bool)

(assert (=> d!4865 m!17727))

(assert (=> d!4865 m!17727))

(declare-fun m!17729 () Bool)

(assert (=> d!4865 m!17729))

(assert (=> b!43868 m!17727))

(assert (=> b!43868 m!17727))

(assert (=> b!43868 m!17729))

(assert (=> b!43713 d!4865))

(declare-fun d!4867 () Bool)

(declare-fun res!30473 () Bool)

(declare-fun e!24173 () Bool)

(assert (=> d!4867 (=> (not res!30473) (not e!24173))))

(declare-fun size!684 (Conc!129) Int)

(assert (=> d!4867 (= res!30473 (= (csize!488 (c!15986 input!525)) (+ (size!684 (left!551 (c!15986 input!525))) (size!684 (right!881 (c!15986 input!525))))))))

(assert (=> d!4867 (= (inv!974 (c!15986 input!525)) e!24173)))

(declare-fun b!43876 () Bool)

(declare-fun res!30474 () Bool)

(assert (=> b!43876 (=> (not res!30474) (not e!24173))))

(assert (=> b!43876 (= res!30474 (and (not (= (left!551 (c!15986 input!525)) Empty!129)) (not (= (right!881 (c!15986 input!525)) Empty!129))))))

(declare-fun b!43877 () Bool)

(declare-fun res!30475 () Bool)

(assert (=> b!43877 (=> (not res!30475) (not e!24173))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!43877 (= res!30475 (= (cheight!340 (c!15986 input!525)) (+ (max!0 (height!10 (left!551 (c!15986 input!525))) (height!10 (right!881 (c!15986 input!525)))) 1)))))

(declare-fun b!43878 () Bool)

(assert (=> b!43878 (= e!24173 (<= 0 (cheight!340 (c!15986 input!525))))))

(assert (= (and d!4867 res!30473) b!43876))

(assert (= (and b!43876 res!30474) b!43877))

(assert (= (and b!43877 res!30475) b!43878))

(declare-fun m!17731 () Bool)

(assert (=> d!4867 m!17731))

(declare-fun m!17733 () Bool)

(assert (=> d!4867 m!17733))

(declare-fun m!17735 () Bool)

(assert (=> b!43877 m!17735))

(declare-fun m!17737 () Bool)

(assert (=> b!43877 m!17737))

(assert (=> b!43877 m!17735))

(assert (=> b!43877 m!17737))

(declare-fun m!17739 () Bool)

(assert (=> b!43877 m!17739))

(assert (=> b!43711 d!4867))

(declare-fun d!4869 () Bool)

(declare-fun lt!5225 () Bool)

(declare-fun e!24178 () Bool)

(assert (=> d!4869 (= lt!5225 e!24178)))

(declare-fun res!30484 () Bool)

(assert (=> d!4869 (=> (not res!30484) (not e!24178))))

(declare-fun print!6 (LexerInterface!58 BalanceConc!260) BalanceConc!258)

(declare-fun singletonSeq!1 (Token!92) BalanceConc!260)

(assert (=> d!4869 (= res!30484 (= (list!181 (_1!571 (lex!33 Lexer!56 lt!5180 (print!6 Lexer!56 (singletonSeq!1 (h!6082 lt!5193)))))) (list!181 (singletonSeq!1 (h!6082 lt!5193)))))))

(declare-fun e!24179 () Bool)

(assert (=> d!4869 (= lt!5225 e!24179)))

(declare-fun res!30483 () Bool)

(assert (=> d!4869 (=> (not res!30483) (not e!24179))))

(declare-fun lt!5224 () tuple2!816)

(assert (=> d!4869 (= res!30483 (= (size!682 (_1!571 lt!5224)) 1))))

(assert (=> d!4869 (= lt!5224 (lex!33 Lexer!56 lt!5180 (print!6 Lexer!56 (singletonSeq!1 (h!6082 lt!5193)))))))

(assert (=> d!4869 (not (isEmpty!137 lt!5180))))

(assert (=> d!4869 (= (rulesProduceIndividualToken!5 Lexer!56 lt!5180 (h!6082 lt!5193)) lt!5225)))

(declare-fun b!43885 () Bool)

(declare-fun res!30482 () Bool)

(assert (=> b!43885 (=> (not res!30482) (not e!24179))))

(declare-fun apply!21 (BalanceConc!260 Int) Token!92)

(assert (=> b!43885 (= res!30482 (= (apply!21 (_1!571 lt!5224) 0) (h!6082 lt!5193)))))

(declare-fun b!43886 () Bool)

(declare-fun isEmpty!140 (BalanceConc!258) Bool)

(assert (=> b!43886 (= e!24179 (isEmpty!140 (_2!571 lt!5224)))))

(declare-fun b!43887 () Bool)

(assert (=> b!43887 (= e!24178 (isEmpty!140 (_2!571 (lex!33 Lexer!56 lt!5180 (print!6 Lexer!56 (singletonSeq!1 (h!6082 lt!5193)))))))))

(assert (= (and d!4869 res!30483) b!43885))

(assert (= (and b!43885 res!30482) b!43886))

(assert (= (and d!4869 res!30484) b!43887))

(declare-fun m!17741 () Bool)

(assert (=> d!4869 m!17741))

(assert (=> d!4869 m!17475))

(declare-fun m!17743 () Bool)

(assert (=> d!4869 m!17743))

(declare-fun m!17745 () Bool)

(assert (=> d!4869 m!17745))

(declare-fun m!17747 () Bool)

(assert (=> d!4869 m!17747))

(assert (=> d!4869 m!17745))

(assert (=> d!4869 m!17745))

(declare-fun m!17749 () Bool)

(assert (=> d!4869 m!17749))

(assert (=> d!4869 m!17747))

(declare-fun m!17751 () Bool)

(assert (=> d!4869 m!17751))

(declare-fun m!17753 () Bool)

(assert (=> b!43885 m!17753))

(declare-fun m!17755 () Bool)

(assert (=> b!43886 m!17755))

(assert (=> b!43887 m!17745))

(assert (=> b!43887 m!17745))

(assert (=> b!43887 m!17747))

(assert (=> b!43887 m!17747))

(assert (=> b!43887 m!17751))

(declare-fun m!17757 () Bool)

(assert (=> b!43887 m!17757))

(assert (=> bs!5694 d!4869))

(declare-fun b!43898 () Bool)

(declare-fun e!24185 () List!688)

(declare-fun list!186 (IArray!261) List!688)

(assert (=> b!43898 (= e!24185 (list!186 (xs!2709 (c!15987 (_1!571 lt!5191)))))))

(declare-fun b!43899 () Bool)

(declare-fun ++!56 (List!688 List!688) List!688)

(assert (=> b!43899 (= e!24185 (++!56 (list!184 (left!552 (c!15987 (_1!571 lt!5191)))) (list!184 (right!882 (c!15987 (_1!571 lt!5191))))))))

(declare-fun b!43897 () Bool)

(declare-fun e!24184 () List!688)

(assert (=> b!43897 (= e!24184 e!24185)))

(declare-fun c!16001 () Bool)

(assert (=> b!43897 (= c!16001 ((_ is Leaf!323) (c!15987 (_1!571 lt!5191))))))

(declare-fun d!4871 () Bool)

(declare-fun c!16000 () Bool)

(assert (=> d!4871 (= c!16000 ((_ is Empty!130) (c!15987 (_1!571 lt!5191))))))

(assert (=> d!4871 (= (list!184 (c!15987 (_1!571 lt!5191))) e!24184)))

(declare-fun b!43896 () Bool)

(assert (=> b!43896 (= e!24184 Nil!686)))

(assert (= (and d!4871 c!16000) b!43896))

(assert (= (and d!4871 (not c!16000)) b!43897))

(assert (= (and b!43897 c!16001) b!43898))

(assert (= (and b!43897 (not c!16001)) b!43899))

(declare-fun m!17759 () Bool)

(assert (=> b!43898 m!17759))

(declare-fun m!17761 () Bool)

(assert (=> b!43899 m!17761))

(declare-fun m!17763 () Bool)

(assert (=> b!43899 m!17763))

(assert (=> b!43899 m!17761))

(assert (=> b!43899 m!17763))

(declare-fun m!17765 () Bool)

(assert (=> b!43899 m!17765))

(assert (=> d!4815 d!4871))

(declare-fun d!4873 () Bool)

(declare-fun lambda!749 () Int)

(declare-fun forall!71 (List!686 Int) Bool)

(assert (=> d!4873 (= (inv!976 setElem!955) (forall!71 (exprs!587 setElem!955) lambda!749))))

(declare-fun bs!5695 () Bool)

(assert (= bs!5695 d!4873))

(declare-fun m!17767 () Bool)

(assert (=> bs!5695 m!17767))

(assert (=> setNonEmpty!955 d!4873))

(declare-fun bs!5696 () Bool)

(declare-fun d!4875 () Bool)

(assert (= bs!5696 (and d!4875 d!4873)))

(declare-fun lambda!750 () Int)

(assert (=> bs!5696 (= lambda!750 lambda!749)))

(assert (=> d!4875 (= (inv!976 (_2!572 (_1!573 (h!6083 (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))))) (forall!71 (exprs!587 (_2!572 (_1!573 (h!6083 (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))))) lambda!750))))

(declare-fun bs!5697 () Bool)

(assert (= bs!5697 d!4875))

(declare-fun m!17769 () Bool)

(assert (=> bs!5697 m!17769))

(assert (=> b!43790 d!4875))

(declare-fun b!43909 () Bool)

(declare-fun e!24190 () List!684)

(declare-fun e!24191 () List!684)

(assert (=> b!43909 (= e!24190 e!24191)))

(declare-fun c!16007 () Bool)

(assert (=> b!43909 (= c!16007 ((_ is Leaf!322) (c!15986 lt!5187)))))

(declare-fun b!43911 () Bool)

(declare-fun ++!57 (List!684 List!684) List!684)

(assert (=> b!43911 (= e!24191 (++!57 (list!183 (left!551 (c!15986 lt!5187))) (list!183 (right!881 (c!15986 lt!5187)))))))

(declare-fun b!43908 () Bool)

(assert (=> b!43908 (= e!24190 Nil!682)))

(declare-fun d!4877 () Bool)

(declare-fun c!16006 () Bool)

(assert (=> d!4877 (= c!16006 ((_ is Empty!129) (c!15986 lt!5187)))))

(assert (=> d!4877 (= (list!183 (c!15986 lt!5187)) e!24190)))

(declare-fun b!43910 () Bool)

(assert (=> b!43910 (= e!24191 (list!185 (xs!2708 (c!15986 lt!5187))))))

(assert (= (and d!4877 c!16006) b!43908))

(assert (= (and d!4877 (not c!16006)) b!43909))

(assert (= (and b!43909 c!16007) b!43910))

(assert (= (and b!43909 (not c!16007)) b!43911))

(declare-fun m!17771 () Bool)

(assert (=> b!43911 m!17771))

(declare-fun m!17773 () Bool)

(assert (=> b!43911 m!17773))

(assert (=> b!43911 m!17771))

(assert (=> b!43911 m!17773))

(declare-fun m!17775 () Bool)

(assert (=> b!43911 m!17775))

(declare-fun m!17777 () Bool)

(assert (=> b!43910 m!17777))

(assert (=> d!4833 d!4877))

(declare-fun b!43914 () Bool)

(declare-fun e!24193 () List!688)

(assert (=> b!43914 (= e!24193 (list!186 (xs!2709 (c!15987 (_1!571 (_1!576 lt!5192))))))))

(declare-fun b!43915 () Bool)

(assert (=> b!43915 (= e!24193 (++!56 (list!184 (left!552 (c!15987 (_1!571 (_1!576 lt!5192))))) (list!184 (right!882 (c!15987 (_1!571 (_1!576 lt!5192)))))))))

(declare-fun b!43913 () Bool)

(declare-fun e!24192 () List!688)

(assert (=> b!43913 (= e!24192 e!24193)))

(declare-fun c!16009 () Bool)

(assert (=> b!43913 (= c!16009 ((_ is Leaf!323) (c!15987 (_1!571 (_1!576 lt!5192)))))))

(declare-fun d!4879 () Bool)

(declare-fun c!16008 () Bool)

(assert (=> d!4879 (= c!16008 ((_ is Empty!130) (c!15987 (_1!571 (_1!576 lt!5192)))))))

(assert (=> d!4879 (= (list!184 (c!15987 (_1!571 (_1!576 lt!5192)))) e!24192)))

(declare-fun b!43912 () Bool)

(assert (=> b!43912 (= e!24192 Nil!686)))

(assert (= (and d!4879 c!16008) b!43912))

(assert (= (and d!4879 (not c!16008)) b!43913))

(assert (= (and b!43913 c!16009) b!43914))

(assert (= (and b!43913 (not c!16009)) b!43915))

(declare-fun m!17779 () Bool)

(assert (=> b!43914 m!17779))

(declare-fun m!17781 () Bool)

(assert (=> b!43915 m!17781))

(declare-fun m!17783 () Bool)

(assert (=> b!43915 m!17783))

(assert (=> b!43915 m!17781))

(assert (=> b!43915 m!17783))

(declare-fun m!17785 () Bool)

(assert (=> b!43915 m!17785))

(assert (=> d!4817 d!4879))

(declare-fun bs!5698 () Bool)

(declare-fun d!4881 () Bool)

(assert (= bs!5698 (and d!4881 d!4873)))

(declare-fun lambda!751 () Int)

(assert (=> bs!5698 (= lambda!751 lambda!749)))

(declare-fun bs!5699 () Bool)

(assert (= bs!5699 (and d!4881 d!4875)))

(assert (=> bs!5699 (= lambda!751 lambda!750)))

(assert (=> d!4881 (= (inv!976 setElem!985) (forall!71 (exprs!587 setElem!985) lambda!751))))

(declare-fun bs!5700 () Bool)

(assert (= bs!5700 d!4881))

(declare-fun m!17787 () Bool)

(assert (=> bs!5700 m!17787))

(assert (=> setNonEmpty!986 d!4881))

(declare-fun bs!5701 () Bool)

(declare-fun d!4883 () Bool)

(assert (= bs!5701 (and d!4883 d!4873)))

(declare-fun lambda!752 () Int)

(assert (=> bs!5701 (= lambda!752 lambda!749)))

(declare-fun bs!5702 () Bool)

(assert (= bs!5702 (and d!4883 d!4875)))

(assert (=> bs!5702 (= lambda!752 lambda!750)))

(declare-fun bs!5703 () Bool)

(assert (= bs!5703 (and d!4883 d!4881)))

(assert (=> bs!5703 (= lambda!752 lambda!751)))

(assert (=> d!4883 (= (inv!976 setElem!966) (forall!71 (exprs!587 setElem!966) lambda!752))))

(declare-fun bs!5704 () Bool)

(assert (= bs!5704 d!4883))

(declare-fun m!17789 () Bool)

(assert (=> bs!5704 m!17789))

(assert (=> setNonEmpty!965 d!4883))

(declare-fun d!4885 () Bool)

(assert (=> d!4885 (= (valid!209 (_4!33 lt!5200)) (validCacheMapFurthestNullable!12 (cache!709 (_4!33 lt!5200)) (totalInput!1530 (_4!33 lt!5200))))))

(declare-fun bs!5705 () Bool)

(assert (= bs!5705 d!4885))

(declare-fun m!17791 () Bool)

(assert (=> bs!5705 m!17791))

(assert (=> b!43728 d!4885))

(declare-fun d!4887 () Bool)

(assert (=> d!4887 (= (valid!208 (_2!576 lt!5200)) (validCacheMapUp!18 (cache!711 (_2!576 lt!5200))))))

(declare-fun bs!5706 () Bool)

(assert (= bs!5706 d!4887))

(declare-fun m!17793 () Bool)

(assert (=> bs!5706 m!17793))

(assert (=> b!43726 d!4887))

(declare-fun d!4889 () Bool)

(declare-fun res!30491 () Bool)

(declare-fun e!24198 () Bool)

(assert (=> d!4889 (=> (not res!30491) (not e!24198))))

(declare-fun valid!210 (MutableMap!225) Bool)

(assert (=> d!4889 (= res!30491 (valid!210 (cache!710 cacheDown!333)))))

(assert (=> d!4889 (= (validCacheMapDown!20 (cache!710 cacheDown!333)) e!24198)))

(declare-fun b!43922 () Bool)

(declare-fun res!30492 () Bool)

(assert (=> b!43922 (=> (not res!30492) (not e!24198))))

(declare-fun invariantList!24 (List!689) Bool)

(declare-datatypes ((ListMap!49 0))(
  ( (ListMap!50 (toList!175 List!689)) )
))
(declare-fun map!247 (MutableMap!225) ListMap!49)

(assert (=> b!43922 (= res!30492 (invariantList!24 (toList!175 (map!247 (cache!710 cacheDown!333)))))))

(declare-fun b!43923 () Bool)

(declare-fun lambda!755 () Int)

(declare-fun forall!72 (List!689 Int) Bool)

(assert (=> b!43923 (= e!24198 (forall!72 (toList!175 (map!247 (cache!710 cacheDown!333))) lambda!755))))

(assert (= (and d!4889 res!30491) b!43922))

(assert (= (and b!43922 res!30492) b!43923))

(declare-fun m!17796 () Bool)

(assert (=> d!4889 m!17796))

(declare-fun m!17798 () Bool)

(assert (=> b!43922 m!17798))

(declare-fun m!17800 () Bool)

(assert (=> b!43922 m!17800))

(assert (=> b!43923 m!17798))

(declare-fun m!17802 () Bool)

(assert (=> b!43923 m!17802))

(assert (=> d!4803 d!4889))

(declare-fun bs!5707 () Bool)

(declare-fun d!4891 () Bool)

(assert (= bs!5707 (and d!4891 d!4873)))

(declare-fun lambda!756 () Int)

(assert (=> bs!5707 (= lambda!756 lambda!749)))

(declare-fun bs!5708 () Bool)

(assert (= bs!5708 (and d!4891 d!4875)))

(assert (=> bs!5708 (= lambda!756 lambda!750)))

(declare-fun bs!5709 () Bool)

(assert (= bs!5709 (and d!4891 d!4881)))

(assert (=> bs!5709 (= lambda!756 lambda!751)))

(declare-fun bs!5710 () Bool)

(assert (= bs!5710 (and d!4891 d!4883)))

(assert (=> bs!5710 (= lambda!756 lambda!752)))

(assert (=> d!4891 (= (inv!976 setElem!986) (forall!71 (exprs!587 setElem!986) lambda!756))))

(declare-fun bs!5711 () Bool)

(assert (= bs!5711 d!4891))

(declare-fun m!17804 () Bool)

(assert (=> bs!5711 m!17804))

(assert (=> setNonEmpty!985 d!4891))

(declare-fun d!4893 () Bool)

(assert (=> d!4893 (= (inv!977 (xs!2708 (c!15986 input!525))) (<= (size!683 (innerList!187 (xs!2708 (c!15986 input!525)))) 2147483647))))

(declare-fun bs!5712 () Bool)

(assert (= bs!5712 d!4893))

(declare-fun m!17806 () Bool)

(assert (=> bs!5712 m!17806))

(assert (=> b!43822 d!4893))

(declare-fun d!4895 () Bool)

(declare-fun lt!5228 () Int)

(declare-fun size!685 (List!688) Int)

(assert (=> d!4895 (= lt!5228 (size!685 (list!181 (_1!571 lt!5204))))))

(declare-fun size!686 (Conc!130) Int)

(assert (=> d!4895 (= lt!5228 (size!686 (c!15987 (_1!571 lt!5204))))))

(assert (=> d!4895 (= (size!682 (_1!571 lt!5204)) lt!5228)))

(declare-fun bs!5713 () Bool)

(assert (= bs!5713 d!4895))

(assert (=> bs!5713 m!17603))

(assert (=> bs!5713 m!17603))

(declare-fun m!17808 () Bool)

(assert (=> bs!5713 m!17808))

(declare-fun m!17810 () Bool)

(assert (=> bs!5713 m!17810))

(assert (=> d!4849 d!4895))

(declare-fun e!24209 () tuple2!816)

(declare-datatypes ((tuple2!826 0))(
  ( (tuple2!827 (_1!578 Token!92) (_2!578 BalanceConc!258)) )
))
(declare-datatypes ((Option!54 0))(
  ( (None!53) (Some!53 (v!12439 tuple2!826)) )
))
(declare-fun lt!5318 () Option!54)

(declare-fun b!43938 () Bool)

(declare-fun lt!5325 () BalanceConc!258)

(declare-fun append!7 (BalanceConc!260 Token!92) BalanceConc!260)

(assert (=> b!43938 (= e!24209 (lexTailRecV2!10 Lexer!56 lt!5180 lt!5187 lt!5325 (_2!578 (v!12439 lt!5318)) (append!7 (BalanceConc!261 Empty!130) (_1!578 (v!12439 lt!5318)))))))

(declare-fun lt!5320 () tuple2!816)

(declare-fun lexRec!8 (LexerInterface!58 List!685 BalanceConc!258) tuple2!816)

(assert (=> b!43938 (= lt!5320 (lexRec!8 Lexer!56 lt!5180 (_2!578 (v!12439 lt!5318))))))

(declare-fun lt!5308 () List!684)

(assert (=> b!43938 (= lt!5308 (list!182 (BalanceConc!259 Empty!129)))))

(declare-fun lt!5326 () List!684)

(declare-fun charsOf!4 (Token!92) BalanceConc!258)

(assert (=> b!43938 (= lt!5326 (list!182 (charsOf!4 (_1!578 (v!12439 lt!5318)))))))

(declare-fun lt!5330 () List!684)

(assert (=> b!43938 (= lt!5330 (list!182 (_2!578 (v!12439 lt!5318))))))

(declare-fun lt!5328 () Unit!310)

(declare-fun lemmaConcatAssociativity!10 (List!684 List!684 List!684) Unit!310)

(assert (=> b!43938 (= lt!5328 (lemmaConcatAssociativity!10 lt!5308 lt!5326 lt!5330))))

(assert (=> b!43938 (= (++!57 (++!57 lt!5308 lt!5326) lt!5330) (++!57 lt!5308 (++!57 lt!5326 lt!5330)))))

(declare-fun lt!5314 () Unit!310)

(assert (=> b!43938 (= lt!5314 lt!5328)))

(declare-fun lt!5297 () Option!54)

(declare-fun maxPrefixZipperSequence!6 (LexerInterface!58 List!685 BalanceConc!258) Option!54)

(assert (=> b!43938 (= lt!5297 (maxPrefixZipperSequence!6 Lexer!56 lt!5180 lt!5187))))

(declare-fun c!16016 () Bool)

(assert (=> b!43938 (= c!16016 ((_ is Some!53) lt!5297))))

(declare-fun e!24210 () tuple2!816)

(assert (=> b!43938 (= (lexRec!8 Lexer!56 lt!5180 lt!5187) e!24210)))

(declare-fun lt!5298 () Unit!310)

(declare-fun Unit!314 () Unit!310)

(assert (=> b!43938 (= lt!5298 Unit!314)))

(declare-fun lt!5323 () List!688)

(assert (=> b!43938 (= lt!5323 (list!181 (BalanceConc!261 Empty!130)))))

(declare-fun lt!5317 () List!688)

(assert (=> b!43938 (= lt!5317 (Cons!686 (_1!578 (v!12439 lt!5318)) Nil!686))))

(declare-fun lt!5304 () List!688)

(assert (=> b!43938 (= lt!5304 (list!181 (_1!571 lt!5320)))))

(declare-fun lt!5310 () Unit!310)

(declare-fun lemmaConcatAssociativity!11 (List!688 List!688 List!688) Unit!310)

(assert (=> b!43938 (= lt!5310 (lemmaConcatAssociativity!11 lt!5323 lt!5317 lt!5304))))

(assert (=> b!43938 (= (++!56 (++!56 lt!5323 lt!5317) lt!5304) (++!56 lt!5323 (++!56 lt!5317 lt!5304)))))

(declare-fun lt!5301 () Unit!310)

(assert (=> b!43938 (= lt!5301 lt!5310)))

(declare-fun lt!5322 () List!684)

(assert (=> b!43938 (= lt!5322 (++!57 (list!182 (BalanceConc!259 Empty!129)) (list!182 (charsOf!4 (_1!578 (v!12439 lt!5318))))))))

(declare-fun lt!5306 () List!684)

(assert (=> b!43938 (= lt!5306 (list!182 (_2!578 (v!12439 lt!5318))))))

(declare-fun lt!5305 () List!688)

(assert (=> b!43938 (= lt!5305 (list!181 (append!7 (BalanceConc!261 Empty!130) (_1!578 (v!12439 lt!5318)))))))

(declare-fun lt!5300 () Unit!310)

(declare-fun lemmaLexThenLexPrefix!3 (LexerInterface!58 List!685 List!684 List!684 List!688 List!688 List!684) Unit!310)

(assert (=> b!43938 (= lt!5300 (lemmaLexThenLexPrefix!3 Lexer!56 lt!5180 lt!5322 lt!5306 lt!5305 (list!181 (_1!571 lt!5320)) (list!182 (_2!571 lt!5320))))))

(assert (=> b!43938 (= (lexList!13 Lexer!56 lt!5180 lt!5322) (tuple2!825 lt!5305 Nil!682))))

(declare-fun lt!5309 () Unit!310)

(assert (=> b!43938 (= lt!5309 lt!5300)))

(declare-fun lt!5329 () BalanceConc!258)

(declare-fun ++!58 (BalanceConc!258 BalanceConc!258) BalanceConc!258)

(assert (=> b!43938 (= lt!5329 (++!58 (BalanceConc!259 Empty!129) (charsOf!4 (_1!578 (v!12439 lt!5318)))))))

(declare-fun lt!5324 () Option!54)

(assert (=> b!43938 (= lt!5324 (maxPrefixZipperSequence!6 Lexer!56 lt!5180 lt!5329))))

(declare-fun c!16018 () Bool)

(assert (=> b!43938 (= c!16018 ((_ is Some!53) lt!5324))))

(declare-fun e!24208 () tuple2!816)

(assert (=> b!43938 (= (lexRec!8 Lexer!56 lt!5180 (++!58 (BalanceConc!259 Empty!129) (charsOf!4 (_1!578 (v!12439 lt!5318))))) e!24208)))

(declare-fun lt!5319 () Unit!310)

(declare-fun Unit!315 () Unit!310)

(assert (=> b!43938 (= lt!5319 Unit!315)))

(assert (=> b!43938 (= lt!5325 (++!58 (BalanceConc!259 Empty!129) (charsOf!4 (_1!578 (v!12439 lt!5318)))))))

(declare-fun lt!5307 () List!684)

(assert (=> b!43938 (= lt!5307 (list!182 lt!5325))))

(declare-fun lt!5299 () List!684)

(assert (=> b!43938 (= lt!5299 (list!182 (_2!578 (v!12439 lt!5318))))))

(declare-fun lt!5321 () Unit!310)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!3 (List!684 List!684) Unit!310)

(assert (=> b!43938 (= lt!5321 (lemmaConcatTwoListThenFSndIsSuffix!3 lt!5307 lt!5299))))

(declare-fun isSuffix!3 (List!684 List!684) Bool)

(assert (=> b!43938 (isSuffix!3 lt!5299 (++!57 lt!5307 lt!5299))))

(declare-fun lt!5315 () Unit!310)

(assert (=> b!43938 (= lt!5315 lt!5321)))

(declare-fun b!43939 () Bool)

(declare-fun lt!5313 () tuple2!816)

(assert (=> b!43939 (= lt!5313 (lexRec!8 Lexer!56 lt!5180 (_2!578 (v!12439 lt!5324))))))

(declare-fun prepend!12 (BalanceConc!260 Token!92) BalanceConc!260)

(assert (=> b!43939 (= e!24208 (tuple2!817 (prepend!12 (_1!571 lt!5313) (_1!578 (v!12439 lt!5324))) (_2!571 lt!5313)))))

(declare-fun b!43940 () Bool)

(declare-fun lt!5311 () tuple2!816)

(assert (=> b!43940 (= lt!5311 (lexRec!8 Lexer!56 lt!5180 (_2!578 (v!12439 lt!5297))))))

(assert (=> b!43940 (= e!24210 (tuple2!817 (prepend!12 (_1!571 lt!5311) (_1!578 (v!12439 lt!5297))) (_2!571 lt!5311)))))

(declare-fun b!43941 () Bool)

(assert (=> b!43941 (= e!24208 (tuple2!817 (BalanceConc!261 Empty!130) lt!5329))))

(declare-fun e!24207 () Bool)

(declare-fun b!43942 () Bool)

(declare-fun lt!5316 () tuple2!816)

(assert (=> b!43942 (= e!24207 (= (list!182 (_2!571 lt!5316)) (list!182 (_2!571 (lexRec!8 Lexer!56 lt!5180 lt!5187)))))))

(declare-fun d!4897 () Bool)

(assert (=> d!4897 e!24207))

(declare-fun res!30495 () Bool)

(assert (=> d!4897 (=> (not res!30495) (not e!24207))))

(assert (=> d!4897 (= res!30495 (= (list!181 (_1!571 lt!5316)) (list!181 (_1!571 (lexRec!8 Lexer!56 lt!5180 lt!5187)))))))

(assert (=> d!4897 (= lt!5316 e!24209)))

(declare-fun c!16017 () Bool)

(assert (=> d!4897 (= c!16017 ((_ is Some!53) lt!5318))))

(declare-fun maxPrefixZipperSequenceV2!3 (LexerInterface!58 List!685 BalanceConc!258 BalanceConc!258) Option!54)

(assert (=> d!4897 (= lt!5318 (maxPrefixZipperSequenceV2!3 Lexer!56 lt!5180 lt!5187 lt!5187))))

(declare-fun lt!5302 () Unit!310)

(declare-fun lt!5312 () Unit!310)

(assert (=> d!4897 (= lt!5302 lt!5312)))

(declare-fun lt!5303 () List!684)

(declare-fun lt!5327 () List!684)

(assert (=> d!4897 (isSuffix!3 lt!5303 (++!57 lt!5327 lt!5303))))

(assert (=> d!4897 (= lt!5312 (lemmaConcatTwoListThenFSndIsSuffix!3 lt!5327 lt!5303))))

(assert (=> d!4897 (= lt!5303 (list!182 lt!5187))))

(assert (=> d!4897 (= lt!5327 (list!182 (BalanceConc!259 Empty!129)))))

(assert (=> d!4897 (= (lexTailRecV2!10 Lexer!56 lt!5180 lt!5187 (BalanceConc!259 Empty!129) lt!5187 (BalanceConc!261 Empty!130)) lt!5316)))

(declare-fun b!43943 () Bool)

(assert (=> b!43943 (= e!24209 (tuple2!817 (BalanceConc!261 Empty!130) lt!5187))))

(declare-fun b!43944 () Bool)

(assert (=> b!43944 (= e!24210 (tuple2!817 (BalanceConc!261 Empty!130) lt!5187))))

(assert (= (and d!4897 c!16017) b!43938))

(assert (= (and d!4897 (not c!16017)) b!43943))

(assert (= (and b!43938 c!16016) b!43940))

(assert (= (and b!43938 (not c!16016)) b!43944))

(assert (= (and b!43938 c!16018) b!43939))

(assert (= (and b!43938 (not c!16018)) b!43941))

(assert (= (and d!4897 res!30495) b!43942))

(declare-fun m!17812 () Bool)

(assert (=> b!43938 m!17812))

(declare-fun m!17814 () Bool)

(assert (=> b!43938 m!17814))

(declare-fun m!17816 () Bool)

(assert (=> b!43938 m!17816))

(declare-fun m!17818 () Bool)

(assert (=> b!43938 m!17818))

(declare-fun m!17820 () Bool)

(assert (=> b!43938 m!17820))

(declare-fun m!17822 () Bool)

(assert (=> b!43938 m!17822))

(declare-fun m!17824 () Bool)

(assert (=> b!43938 m!17824))

(declare-fun m!17826 () Bool)

(assert (=> b!43938 m!17826))

(assert (=> b!43938 m!17816))

(declare-fun m!17828 () Bool)

(assert (=> b!43938 m!17828))

(declare-fun m!17830 () Bool)

(assert (=> b!43938 m!17830))

(declare-fun m!17832 () Bool)

(assert (=> b!43938 m!17832))

(declare-fun m!17834 () Bool)

(assert (=> b!43938 m!17834))

(declare-fun m!17836 () Bool)

(assert (=> b!43938 m!17836))

(declare-fun m!17838 () Bool)

(assert (=> b!43938 m!17838))

(assert (=> b!43938 m!17812))

(declare-fun m!17840 () Bool)

(assert (=> b!43938 m!17840))

(declare-fun m!17842 () Bool)

(assert (=> b!43938 m!17842))

(assert (=> b!43938 m!17814))

(declare-fun m!17844 () Bool)

(assert (=> b!43938 m!17844))

(assert (=> b!43938 m!17830))

(declare-fun m!17846 () Bool)

(assert (=> b!43938 m!17846))

(assert (=> b!43938 m!17818))

(assert (=> b!43938 m!17814))

(declare-fun m!17848 () Bool)

(assert (=> b!43938 m!17848))

(declare-fun m!17850 () Bool)

(assert (=> b!43938 m!17850))

(declare-fun m!17852 () Bool)

(assert (=> b!43938 m!17852))

(declare-fun m!17854 () Bool)

(assert (=> b!43938 m!17854))

(declare-fun m!17856 () Bool)

(assert (=> b!43938 m!17856))

(declare-fun m!17858 () Bool)

(assert (=> b!43938 m!17858))

(declare-fun m!17860 () Bool)

(assert (=> b!43938 m!17860))

(declare-fun m!17862 () Bool)

(assert (=> b!43938 m!17862))

(assert (=> b!43938 m!17826))

(assert (=> b!43938 m!17834))

(declare-fun m!17864 () Bool)

(assert (=> b!43938 m!17864))

(assert (=> b!43938 m!17834))

(assert (=> b!43938 m!17844))

(declare-fun m!17866 () Bool)

(assert (=> b!43938 m!17866))

(assert (=> b!43938 m!17838))

(declare-fun m!17868 () Bool)

(assert (=> b!43938 m!17868))

(assert (=> b!43938 m!17848))

(assert (=> b!43938 m!17846))

(declare-fun m!17870 () Bool)

(assert (=> b!43938 m!17870))

(declare-fun m!17872 () Bool)

(assert (=> b!43938 m!17872))

(assert (=> b!43938 m!17862))

(declare-fun m!17874 () Bool)

(assert (=> b!43938 m!17874))

(declare-fun m!17876 () Bool)

(assert (=> b!43938 m!17876))

(declare-fun m!17878 () Bool)

(assert (=> d!4897 m!17878))

(declare-fun m!17880 () Bool)

(assert (=> d!4897 m!17880))

(assert (=> d!4897 m!17878))

(declare-fun m!17882 () Bool)

(assert (=> d!4897 m!17882))

(declare-fun m!17884 () Bool)

(assert (=> d!4897 m!17884))

(declare-fun m!17886 () Bool)

(assert (=> d!4897 m!17886))

(assert (=> d!4897 m!17826))

(assert (=> d!4897 m!17854))

(declare-fun m!17888 () Bool)

(assert (=> d!4897 m!17888))

(assert (=> d!4897 m!17479))

(declare-fun m!17890 () Bool)

(assert (=> b!43939 m!17890))

(declare-fun m!17892 () Bool)

(assert (=> b!43939 m!17892))

(declare-fun m!17894 () Bool)

(assert (=> b!43940 m!17894))

(declare-fun m!17896 () Bool)

(assert (=> b!43940 m!17896))

(declare-fun m!17898 () Bool)

(assert (=> b!43942 m!17898))

(assert (=> b!43942 m!17854))

(declare-fun m!17900 () Bool)

(assert (=> b!43942 m!17900))

(assert (=> d!4849 d!4897))

(declare-fun d!4899 () Bool)

(assert (=> d!4899 (= (list!182 (_2!571 (_1!576 lt!5200))) (list!183 (c!15986 (_2!571 (_1!576 lt!5200)))))))

(declare-fun bs!5714 () Bool)

(assert (= bs!5714 d!4899))

(declare-fun m!17902 () Bool)

(assert (=> bs!5714 m!17902))

(assert (=> b!43724 d!4899))

(declare-fun d!4901 () Bool)

(assert (=> d!4901 (= (list!182 (_2!571 (lex!33 Lexer!56 lt!5180 input!525))) (list!183 (c!15986 (_2!571 (lex!33 Lexer!56 lt!5180 input!525)))))))

(declare-fun bs!5715 () Bool)

(assert (= bs!5715 d!4901))

(declare-fun m!17904 () Bool)

(assert (=> bs!5715 m!17904))

(assert (=> b!43724 d!4901))

(assert (=> b!43724 d!4819))

(declare-fun d!4903 () Bool)

(assert (=> d!4903 (= (valid!208 (_2!576 lt!5192)) (validCacheMapUp!18 (cache!711 (_2!576 lt!5192))))))

(declare-fun bs!5716 () Bool)

(assert (= bs!5716 d!4903))

(declare-fun m!17906 () Bool)

(assert (=> bs!5716 m!17906))

(assert (=> d!4813 d!4903))

(assert (=> b!43777 d!4827))

(declare-fun b!43946 () Bool)

(declare-fun e!24211 () List!684)

(declare-fun e!24212 () List!684)

(assert (=> b!43946 (= e!24211 e!24212)))

(declare-fun c!16020 () Bool)

(assert (=> b!43946 (= c!16020 ((_ is Leaf!322) (c!15986 input!525)))))

(declare-fun b!43948 () Bool)

(assert (=> b!43948 (= e!24212 (++!57 (list!183 (left!551 (c!15986 input!525))) (list!183 (right!881 (c!15986 input!525)))))))

(declare-fun b!43945 () Bool)

(assert (=> b!43945 (= e!24211 Nil!682)))

(declare-fun d!4905 () Bool)

(declare-fun c!16019 () Bool)

(assert (=> d!4905 (= c!16019 ((_ is Empty!129) (c!15986 input!525)))))

(assert (=> d!4905 (= (list!183 (c!15986 input!525)) e!24211)))

(declare-fun b!43947 () Bool)

(assert (=> b!43947 (= e!24212 (list!185 (xs!2708 (c!15986 input!525))))))

(assert (= (and d!4905 c!16019) b!43945))

(assert (= (and d!4905 (not c!16019)) b!43946))

(assert (= (and b!43946 c!16020) b!43947))

(assert (= (and b!43946 (not c!16020)) b!43948))

(declare-fun m!17908 () Bool)

(assert (=> b!43948 m!17908))

(declare-fun m!17910 () Bool)

(assert (=> b!43948 m!17910))

(assert (=> b!43948 m!17908))

(assert (=> b!43948 m!17910))

(declare-fun m!17912 () Bool)

(assert (=> b!43948 m!17912))

(assert (=> b!43947 m!17727))

(assert (=> d!4837 d!4905))

(declare-fun d!4907 () Bool)

(assert (=> d!4907 (= (list!181 (_1!571 lt!5217)) (list!184 (c!15987 (_1!571 lt!5217))))))

(declare-fun bs!5717 () Bool)

(assert (= bs!5717 d!4907))

(declare-fun m!17914 () Bool)

(assert (=> bs!5717 m!17914))

(assert (=> b!43775 d!4907))

(declare-fun d!4909 () Bool)

(assert (=> d!4909 (rulesProduceEachTokenIndividually!4 Lexer!56 lt!5180 (seqFromList!29 lt!5218))))

(declare-fun lt!5333 () Unit!310)

(declare-fun choose!1142 (LexerInterface!58 List!685 List!684 List!688) Unit!310)

(assert (=> d!4909 (= lt!5333 (choose!1142 Lexer!56 lt!5180 lt!5185 lt!5218))))

(assert (=> d!4909 (not (isEmpty!137 lt!5180))))

(assert (=> d!4909 (= (lemmaLexThenRulesProducesEachTokenIndividually!4 Lexer!56 lt!5180 lt!5185 lt!5218) lt!5333)))

(declare-fun bs!5718 () Bool)

(assert (= bs!5718 d!4909))

(assert (=> bs!5718 m!17617))

(assert (=> bs!5718 m!17617))

(assert (=> bs!5718 m!17619))

(declare-fun m!17916 () Bool)

(assert (=> bs!5718 m!17916))

(assert (=> bs!5718 m!17475))

(assert (=> b!43775 d!4909))

(assert (=> b!43775 d!4835))

(declare-fun d!4911 () Bool)

(declare-fun fromListB!9 (List!688) BalanceConc!260)

(assert (=> d!4911 (= (seqFromList!29 lt!5218) (fromListB!9 lt!5218))))

(declare-fun bs!5719 () Bool)

(assert (= bs!5719 d!4911))

(declare-fun m!17918 () Bool)

(assert (=> bs!5719 m!17918))

(assert (=> b!43775 d!4911))

(declare-fun b!43949 () Bool)

(declare-fun e!24214 () Bool)

(declare-fun lt!5334 () tuple2!816)

(assert (=> b!43949 (= e!24214 (= (_2!571 lt!5334) (seqFromList!28 lt!5185)))))

(declare-fun b!43950 () Bool)

(declare-fun e!24213 () Bool)

(assert (=> b!43950 (= e!24213 (not (isEmpty!138 (_1!571 lt!5334))))))

(declare-fun b!43951 () Bool)

(assert (=> b!43951 (= e!24214 e!24213)))

(declare-fun res!30496 () Bool)

(assert (=> b!43951 (= res!30496 (< (size!681 (_2!571 lt!5334)) (size!681 (seqFromList!28 lt!5185))))))

(assert (=> b!43951 (=> (not res!30496) (not e!24213))))

(declare-fun d!4913 () Bool)

(declare-fun e!24215 () Bool)

(assert (=> d!4913 e!24215))

(declare-fun res!30497 () Bool)

(assert (=> d!4913 (=> (not res!30497) (not e!24215))))

(assert (=> d!4913 (= res!30497 e!24214)))

(declare-fun c!16021 () Bool)

(assert (=> d!4913 (= c!16021 (> (size!682 (_1!571 lt!5334)) 0))))

(assert (=> d!4913 (= lt!5334 (lexTailRecV2!10 Lexer!56 lt!5180 (seqFromList!28 lt!5185) (BalanceConc!259 Empty!129) (seqFromList!28 lt!5185) (BalanceConc!261 Empty!130)))))

(assert (=> d!4913 (= (lex!33 Lexer!56 lt!5180 (seqFromList!28 lt!5185)) lt!5334)))

(declare-fun b!43952 () Bool)

(declare-fun res!30498 () Bool)

(assert (=> b!43952 (=> (not res!30498) (not e!24215))))

(assert (=> b!43952 (= res!30498 (= (list!181 (_1!571 lt!5334)) (_1!577 (lexList!13 Lexer!56 lt!5180 (list!182 (seqFromList!28 lt!5185))))))))

(declare-fun b!43953 () Bool)

(assert (=> b!43953 (= e!24215 (= (list!182 (_2!571 lt!5334)) (_2!577 (lexList!13 Lexer!56 lt!5180 (list!182 (seqFromList!28 lt!5185))))))))

(assert (= (and d!4913 c!16021) b!43951))

(assert (= (and d!4913 (not c!16021)) b!43949))

(assert (= (and b!43951 res!30496) b!43950))

(assert (= (and d!4913 res!30497) b!43952))

(assert (= (and b!43952 res!30498) b!43953))

(declare-fun m!17920 () Bool)

(assert (=> b!43950 m!17920))

(declare-fun m!17922 () Bool)

(assert (=> b!43953 m!17922))

(assert (=> b!43953 m!17481))

(declare-fun m!17924 () Bool)

(assert (=> b!43953 m!17924))

(assert (=> b!43953 m!17924))

(declare-fun m!17926 () Bool)

(assert (=> b!43953 m!17926))

(declare-fun m!17928 () Bool)

(assert (=> d!4913 m!17928))

(assert (=> d!4913 m!17481))

(assert (=> d!4913 m!17481))

(declare-fun m!17930 () Bool)

(assert (=> d!4913 m!17930))

(declare-fun m!17932 () Bool)

(assert (=> b!43951 m!17932))

(assert (=> b!43951 m!17481))

(declare-fun m!17934 () Bool)

(assert (=> b!43951 m!17934))

(declare-fun m!17936 () Bool)

(assert (=> b!43952 m!17936))

(assert (=> b!43952 m!17481))

(assert (=> b!43952 m!17924))

(assert (=> b!43952 m!17924))

(assert (=> b!43952 m!17926))

(assert (=> b!43775 d!4913))

(declare-fun bs!5720 () Bool)

(declare-fun d!4915 () Bool)

(assert (= bs!5720 (and d!4915 b!43660)))

(declare-fun lambda!761 () Int)

(assert (=> bs!5720 (= lambda!761 lambda!746)))

(declare-fun b!43959 () Bool)

(declare-fun e!24221 () Bool)

(assert (=> b!43959 (= e!24221 true)))

(declare-fun b!43958 () Bool)

(declare-fun e!24220 () Bool)

(assert (=> b!43958 (= e!24220 e!24221)))

(declare-fun b!43957 () Bool)

(declare-fun e!24219 () Bool)

(assert (=> b!43957 (= e!24219 e!24220)))

(assert (=> d!4915 e!24219))

(assert (= b!43958 b!43959))

(assert (= b!43957 b!43958))

(assert (= (and d!4915 ((_ is Cons!683) lt!5180)) b!43957))

(assert (=> b!43959 (< (dynLambda!82 order!127 (toValue!642 (transformation!163 (h!6079 lt!5180)))) (dynLambda!83 order!129 lambda!761))))

(assert (=> b!43959 (< (dynLambda!84 order!131 (toChars!501 (transformation!163 (h!6079 lt!5180)))) (dynLambda!83 order!129 lambda!761))))

(assert (=> d!4915 true))

(declare-fun e!24218 () Bool)

(assert (=> d!4915 e!24218))

(declare-fun res!30501 () Bool)

(assert (=> d!4915 (=> (not res!30501) (not e!24218))))

(declare-fun lt!5337 () Bool)

(assert (=> d!4915 (= res!30501 (= lt!5337 (forall!70 (list!181 (seqFromList!29 lt!5218)) lambda!761)))))

(declare-fun forall!73 (BalanceConc!260 Int) Bool)

(assert (=> d!4915 (= lt!5337 (forall!73 (seqFromList!29 lt!5218) lambda!761))))

(assert (=> d!4915 (not (isEmpty!137 lt!5180))))

(assert (=> d!4915 (= (rulesProduceEachTokenIndividually!4 Lexer!56 lt!5180 (seqFromList!29 lt!5218)) lt!5337)))

(declare-fun b!43956 () Bool)

(assert (=> b!43956 (= e!24218 (= lt!5337 (rulesProduceEachTokenIndividuallyList!13 Lexer!56 lt!5180 (list!181 (seqFromList!29 lt!5218)))))))

(assert (= (and d!4915 res!30501) b!43956))

(assert (=> d!4915 m!17617))

(declare-fun m!17938 () Bool)

(assert (=> d!4915 m!17938))

(assert (=> d!4915 m!17938))

(declare-fun m!17940 () Bool)

(assert (=> d!4915 m!17940))

(assert (=> d!4915 m!17617))

(declare-fun m!17942 () Bool)

(assert (=> d!4915 m!17942))

(assert (=> d!4915 m!17475))

(assert (=> b!43956 m!17617))

(assert (=> b!43956 m!17938))

(assert (=> b!43956 m!17938))

(declare-fun m!17944 () Bool)

(assert (=> b!43956 m!17944))

(assert (=> b!43775 d!4915))

(declare-fun bs!5721 () Bool)

(declare-fun d!4917 () Bool)

(assert (= bs!5721 (and d!4917 b!43660)))

(declare-fun lambda!764 () Int)

(assert (=> bs!5721 (= lambda!764 lambda!746)))

(declare-fun bs!5722 () Bool)

(assert (= bs!5722 (and d!4917 d!4915)))

(assert (=> bs!5722 (= lambda!764 lambda!761)))

(declare-fun b!43970 () Bool)

(declare-fun e!24230 () Bool)

(assert (=> b!43970 (= e!24230 true)))

(declare-fun b!43969 () Bool)

(declare-fun e!24229 () Bool)

(assert (=> b!43969 (= e!24229 e!24230)))

(declare-fun b!43968 () Bool)

(declare-fun e!24228 () Bool)

(assert (=> b!43968 (= e!24228 e!24229)))

(assert (=> d!4917 e!24228))

(assert (= b!43969 b!43970))

(assert (= b!43968 b!43969))

(assert (= (and d!4917 ((_ is Cons!683) lt!5180)) b!43968))

(assert (=> b!43970 (< (dynLambda!82 order!127 (toValue!642 (transformation!163 (h!6079 lt!5180)))) (dynLambda!83 order!129 lambda!764))))

(assert (=> b!43970 (< (dynLambda!84 order!131 (toChars!501 (transformation!163 (h!6079 lt!5180)))) (dynLambda!83 order!129 lambda!764))))

(assert (=> d!4917 true))

(declare-fun lt!5340 () Bool)

(assert (=> d!4917 (= lt!5340 (forall!70 (list!181 (_1!571 lt!5217)) lambda!764))))

(declare-fun e!24227 () Bool)

(assert (=> d!4917 (= lt!5340 e!24227)))

(declare-fun res!30507 () Bool)

(assert (=> d!4917 (=> res!30507 e!24227)))

(assert (=> d!4917 (= res!30507 (not ((_ is Cons!686) (list!181 (_1!571 lt!5217)))))))

(assert (=> d!4917 (not (isEmpty!137 lt!5180))))

(assert (=> d!4917 (= (rulesProduceEachTokenIndividuallyList!13 Lexer!56 lt!5180 (list!181 (_1!571 lt!5217))) lt!5340)))

(declare-fun b!43966 () Bool)

(declare-fun e!24226 () Bool)

(assert (=> b!43966 (= e!24227 e!24226)))

(declare-fun res!30506 () Bool)

(assert (=> b!43966 (=> (not res!30506) (not e!24226))))

(assert (=> b!43966 (= res!30506 (rulesProduceIndividualToken!5 Lexer!56 lt!5180 (h!6082 (list!181 (_1!571 lt!5217)))))))

(declare-fun b!43967 () Bool)

(assert (=> b!43967 (= e!24226 (rulesProduceEachTokenIndividuallyList!13 Lexer!56 lt!5180 (t!16389 (list!181 (_1!571 lt!5217)))))))

(assert (= (and d!4917 (not res!30507)) b!43966))

(assert (= (and b!43966 res!30506) b!43967))

(assert (=> d!4917 m!17611))

(declare-fun m!17946 () Bool)

(assert (=> d!4917 m!17946))

(assert (=> d!4917 m!17475))

(declare-fun m!17948 () Bool)

(assert (=> b!43966 m!17948))

(declare-fun m!17950 () Bool)

(assert (=> b!43967 m!17950))

(assert (=> b!43775 d!4917))

(declare-fun d!4919 () Bool)

(declare-fun lt!5341 () Int)

(assert (=> d!4919 (= lt!5341 (size!685 (list!181 (_1!571 lt!5203))))))

(assert (=> d!4919 (= lt!5341 (size!686 (c!15987 (_1!571 lt!5203))))))

(assert (=> d!4919 (= (size!682 (_1!571 lt!5203)) lt!5341)))

(declare-fun bs!5723 () Bool)

(assert (= bs!5723 d!4919))

(assert (=> bs!5723 m!17541))

(assert (=> bs!5723 m!17541))

(declare-fun m!17952 () Bool)

(assert (=> bs!5723 m!17952))

(declare-fun m!17954 () Bool)

(assert (=> bs!5723 m!17954))

(assert (=> d!4819 d!4919))

(declare-fun lt!5363 () Option!54)

(declare-fun lt!5370 () BalanceConc!258)

(declare-fun e!24233 () tuple2!816)

(declare-fun b!43971 () Bool)

(assert (=> b!43971 (= e!24233 (lexTailRecV2!10 Lexer!56 lt!5180 input!525 lt!5370 (_2!578 (v!12439 lt!5363)) (append!7 (BalanceConc!261 Empty!130) (_1!578 (v!12439 lt!5363)))))))

(declare-fun lt!5365 () tuple2!816)

(assert (=> b!43971 (= lt!5365 (lexRec!8 Lexer!56 lt!5180 (_2!578 (v!12439 lt!5363))))))

(declare-fun lt!5353 () List!684)

(assert (=> b!43971 (= lt!5353 (list!182 (BalanceConc!259 Empty!129)))))

(declare-fun lt!5371 () List!684)

(assert (=> b!43971 (= lt!5371 (list!182 (charsOf!4 (_1!578 (v!12439 lt!5363)))))))

(declare-fun lt!5375 () List!684)

(assert (=> b!43971 (= lt!5375 (list!182 (_2!578 (v!12439 lt!5363))))))

(declare-fun lt!5373 () Unit!310)

(assert (=> b!43971 (= lt!5373 (lemmaConcatAssociativity!10 lt!5353 lt!5371 lt!5375))))

(assert (=> b!43971 (= (++!57 (++!57 lt!5353 lt!5371) lt!5375) (++!57 lt!5353 (++!57 lt!5371 lt!5375)))))

(declare-fun lt!5359 () Unit!310)

(assert (=> b!43971 (= lt!5359 lt!5373)))

(declare-fun lt!5342 () Option!54)

(assert (=> b!43971 (= lt!5342 (maxPrefixZipperSequence!6 Lexer!56 lt!5180 input!525))))

(declare-fun c!16022 () Bool)

(assert (=> b!43971 (= c!16022 ((_ is Some!53) lt!5342))))

(declare-fun e!24234 () tuple2!816)

(assert (=> b!43971 (= (lexRec!8 Lexer!56 lt!5180 input!525) e!24234)))

(declare-fun lt!5343 () Unit!310)

(declare-fun Unit!316 () Unit!310)

(assert (=> b!43971 (= lt!5343 Unit!316)))

(declare-fun lt!5368 () List!688)

(assert (=> b!43971 (= lt!5368 (list!181 (BalanceConc!261 Empty!130)))))

(declare-fun lt!5362 () List!688)

(assert (=> b!43971 (= lt!5362 (Cons!686 (_1!578 (v!12439 lt!5363)) Nil!686))))

(declare-fun lt!5349 () List!688)

(assert (=> b!43971 (= lt!5349 (list!181 (_1!571 lt!5365)))))

(declare-fun lt!5355 () Unit!310)

(assert (=> b!43971 (= lt!5355 (lemmaConcatAssociativity!11 lt!5368 lt!5362 lt!5349))))

(assert (=> b!43971 (= (++!56 (++!56 lt!5368 lt!5362) lt!5349) (++!56 lt!5368 (++!56 lt!5362 lt!5349)))))

(declare-fun lt!5346 () Unit!310)

(assert (=> b!43971 (= lt!5346 lt!5355)))

(declare-fun lt!5367 () List!684)

(assert (=> b!43971 (= lt!5367 (++!57 (list!182 (BalanceConc!259 Empty!129)) (list!182 (charsOf!4 (_1!578 (v!12439 lt!5363))))))))

(declare-fun lt!5351 () List!684)

(assert (=> b!43971 (= lt!5351 (list!182 (_2!578 (v!12439 lt!5363))))))

(declare-fun lt!5350 () List!688)

(assert (=> b!43971 (= lt!5350 (list!181 (append!7 (BalanceConc!261 Empty!130) (_1!578 (v!12439 lt!5363)))))))

(declare-fun lt!5345 () Unit!310)

(assert (=> b!43971 (= lt!5345 (lemmaLexThenLexPrefix!3 Lexer!56 lt!5180 lt!5367 lt!5351 lt!5350 (list!181 (_1!571 lt!5365)) (list!182 (_2!571 lt!5365))))))

(assert (=> b!43971 (= (lexList!13 Lexer!56 lt!5180 lt!5367) (tuple2!825 lt!5350 Nil!682))))

(declare-fun lt!5354 () Unit!310)

(assert (=> b!43971 (= lt!5354 lt!5345)))

(declare-fun lt!5374 () BalanceConc!258)

(assert (=> b!43971 (= lt!5374 (++!58 (BalanceConc!259 Empty!129) (charsOf!4 (_1!578 (v!12439 lt!5363)))))))

(declare-fun lt!5369 () Option!54)

(assert (=> b!43971 (= lt!5369 (maxPrefixZipperSequence!6 Lexer!56 lt!5180 lt!5374))))

(declare-fun c!16024 () Bool)

(assert (=> b!43971 (= c!16024 ((_ is Some!53) lt!5369))))

(declare-fun e!24232 () tuple2!816)

(assert (=> b!43971 (= (lexRec!8 Lexer!56 lt!5180 (++!58 (BalanceConc!259 Empty!129) (charsOf!4 (_1!578 (v!12439 lt!5363))))) e!24232)))

(declare-fun lt!5364 () Unit!310)

(declare-fun Unit!317 () Unit!310)

(assert (=> b!43971 (= lt!5364 Unit!317)))

(assert (=> b!43971 (= lt!5370 (++!58 (BalanceConc!259 Empty!129) (charsOf!4 (_1!578 (v!12439 lt!5363)))))))

(declare-fun lt!5352 () List!684)

(assert (=> b!43971 (= lt!5352 (list!182 lt!5370))))

(declare-fun lt!5344 () List!684)

(assert (=> b!43971 (= lt!5344 (list!182 (_2!578 (v!12439 lt!5363))))))

(declare-fun lt!5366 () Unit!310)

(assert (=> b!43971 (= lt!5366 (lemmaConcatTwoListThenFSndIsSuffix!3 lt!5352 lt!5344))))

(assert (=> b!43971 (isSuffix!3 lt!5344 (++!57 lt!5352 lt!5344))))

(declare-fun lt!5360 () Unit!310)

(assert (=> b!43971 (= lt!5360 lt!5366)))

(declare-fun b!43972 () Bool)

(declare-fun lt!5358 () tuple2!816)

(assert (=> b!43972 (= lt!5358 (lexRec!8 Lexer!56 lt!5180 (_2!578 (v!12439 lt!5369))))))

(assert (=> b!43972 (= e!24232 (tuple2!817 (prepend!12 (_1!571 lt!5358) (_1!578 (v!12439 lt!5369))) (_2!571 lt!5358)))))

(declare-fun b!43973 () Bool)

(declare-fun lt!5356 () tuple2!816)

(assert (=> b!43973 (= lt!5356 (lexRec!8 Lexer!56 lt!5180 (_2!578 (v!12439 lt!5342))))))

(assert (=> b!43973 (= e!24234 (tuple2!817 (prepend!12 (_1!571 lt!5356) (_1!578 (v!12439 lt!5342))) (_2!571 lt!5356)))))

(declare-fun b!43974 () Bool)

(assert (=> b!43974 (= e!24232 (tuple2!817 (BalanceConc!261 Empty!130) lt!5374))))

(declare-fun b!43975 () Bool)

(declare-fun e!24231 () Bool)

(declare-fun lt!5361 () tuple2!816)

(assert (=> b!43975 (= e!24231 (= (list!182 (_2!571 lt!5361)) (list!182 (_2!571 (lexRec!8 Lexer!56 lt!5180 input!525)))))))

(declare-fun d!4921 () Bool)

(assert (=> d!4921 e!24231))

(declare-fun res!30508 () Bool)

(assert (=> d!4921 (=> (not res!30508) (not e!24231))))

(assert (=> d!4921 (= res!30508 (= (list!181 (_1!571 lt!5361)) (list!181 (_1!571 (lexRec!8 Lexer!56 lt!5180 input!525)))))))

(assert (=> d!4921 (= lt!5361 e!24233)))

(declare-fun c!16023 () Bool)

(assert (=> d!4921 (= c!16023 ((_ is Some!53) lt!5363))))

(assert (=> d!4921 (= lt!5363 (maxPrefixZipperSequenceV2!3 Lexer!56 lt!5180 input!525 input!525))))

(declare-fun lt!5347 () Unit!310)

(declare-fun lt!5357 () Unit!310)

(assert (=> d!4921 (= lt!5347 lt!5357)))

(declare-fun lt!5348 () List!684)

(declare-fun lt!5372 () List!684)

(assert (=> d!4921 (isSuffix!3 lt!5348 (++!57 lt!5372 lt!5348))))

(assert (=> d!4921 (= lt!5357 (lemmaConcatTwoListThenFSndIsSuffix!3 lt!5372 lt!5348))))

(assert (=> d!4921 (= lt!5348 (list!182 input!525))))

(assert (=> d!4921 (= lt!5372 (list!182 (BalanceConc!259 Empty!129)))))

(assert (=> d!4921 (= (lexTailRecV2!10 Lexer!56 lt!5180 input!525 (BalanceConc!259 Empty!129) input!525 (BalanceConc!261 Empty!130)) lt!5361)))

(declare-fun b!43976 () Bool)

(assert (=> b!43976 (= e!24233 (tuple2!817 (BalanceConc!261 Empty!130) input!525))))

(declare-fun b!43977 () Bool)

(assert (=> b!43977 (= e!24234 (tuple2!817 (BalanceConc!261 Empty!130) input!525))))

(assert (= (and d!4921 c!16023) b!43971))

(assert (= (and d!4921 (not c!16023)) b!43976))

(assert (= (and b!43971 c!16022) b!43973))

(assert (= (and b!43971 (not c!16022)) b!43977))

(assert (= (and b!43971 c!16024) b!43972))

(assert (= (and b!43971 (not c!16024)) b!43974))

(assert (= (and d!4921 res!30508) b!43975))

(declare-fun m!17956 () Bool)

(assert (=> b!43971 m!17956))

(declare-fun m!17958 () Bool)

(assert (=> b!43971 m!17958))

(declare-fun m!17960 () Bool)

(assert (=> b!43971 m!17960))

(declare-fun m!17962 () Bool)

(assert (=> b!43971 m!17962))

(declare-fun m!17964 () Bool)

(assert (=> b!43971 m!17964))

(declare-fun m!17966 () Bool)

(assert (=> b!43971 m!17966))

(declare-fun m!17968 () Bool)

(assert (=> b!43971 m!17968))

(assert (=> b!43971 m!17826))

(assert (=> b!43971 m!17960))

(declare-fun m!17970 () Bool)

(assert (=> b!43971 m!17970))

(declare-fun m!17972 () Bool)

(assert (=> b!43971 m!17972))

(declare-fun m!17974 () Bool)

(assert (=> b!43971 m!17974))

(declare-fun m!17976 () Bool)

(assert (=> b!43971 m!17976))

(declare-fun m!17978 () Bool)

(assert (=> b!43971 m!17978))

(declare-fun m!17980 () Bool)

(assert (=> b!43971 m!17980))

(assert (=> b!43971 m!17956))

(declare-fun m!17982 () Bool)

(assert (=> b!43971 m!17982))

(declare-fun m!17984 () Bool)

(assert (=> b!43971 m!17984))

(assert (=> b!43971 m!17958))

(declare-fun m!17986 () Bool)

(assert (=> b!43971 m!17986))

(assert (=> b!43971 m!17972))

(declare-fun m!17988 () Bool)

(assert (=> b!43971 m!17988))

(assert (=> b!43971 m!17962))

(assert (=> b!43971 m!17958))

(declare-fun m!17990 () Bool)

(assert (=> b!43971 m!17990))

(declare-fun m!17992 () Bool)

(assert (=> b!43971 m!17992))

(assert (=> b!43971 m!17852))

(declare-fun m!17994 () Bool)

(assert (=> b!43971 m!17994))

(declare-fun m!17996 () Bool)

(assert (=> b!43971 m!17996))

(declare-fun m!17998 () Bool)

(assert (=> b!43971 m!17998))

(declare-fun m!18000 () Bool)

(assert (=> b!43971 m!18000))

(declare-fun m!18002 () Bool)

(assert (=> b!43971 m!18002))

(assert (=> b!43971 m!17826))

(assert (=> b!43971 m!17976))

(declare-fun m!18004 () Bool)

(assert (=> b!43971 m!18004))

(assert (=> b!43971 m!17976))

(assert (=> b!43971 m!17986))

(declare-fun m!18006 () Bool)

(assert (=> b!43971 m!18006))

(assert (=> b!43971 m!17980))

(declare-fun m!18008 () Bool)

(assert (=> b!43971 m!18008))

(assert (=> b!43971 m!17990))

(assert (=> b!43971 m!17988))

(declare-fun m!18010 () Bool)

(assert (=> b!43971 m!18010))

(declare-fun m!18012 () Bool)

(assert (=> b!43971 m!18012))

(assert (=> b!43971 m!18002))

(declare-fun m!18014 () Bool)

(assert (=> b!43971 m!18014))

(declare-fun m!18016 () Bool)

(assert (=> b!43971 m!18016))

(declare-fun m!18018 () Bool)

(assert (=> d!4921 m!18018))

(declare-fun m!18020 () Bool)

(assert (=> d!4921 m!18020))

(assert (=> d!4921 m!18018))

(declare-fun m!18022 () Bool)

(assert (=> d!4921 m!18022))

(declare-fun m!18024 () Bool)

(assert (=> d!4921 m!18024))

(declare-fun m!18026 () Bool)

(assert (=> d!4921 m!18026))

(assert (=> d!4921 m!17826))

(assert (=> d!4921 m!17994))

(declare-fun m!18028 () Bool)

(assert (=> d!4921 m!18028))

(assert (=> d!4921 m!17483))

(declare-fun m!18030 () Bool)

(assert (=> b!43972 m!18030))

(declare-fun m!18032 () Bool)

(assert (=> b!43972 m!18032))

(declare-fun m!18034 () Bool)

(assert (=> b!43973 m!18034))

(declare-fun m!18036 () Bool)

(assert (=> b!43973 m!18036))

(declare-fun m!18038 () Bool)

(assert (=> b!43975 m!18038))

(assert (=> b!43975 m!17994))

(declare-fun m!18040 () Bool)

(assert (=> b!43975 m!18040))

(assert (=> d!4819 d!4921))

(declare-fun bs!5724 () Bool)

(declare-fun d!4923 () Bool)

(assert (= bs!5724 (and d!4923 d!4873)))

(declare-fun lambda!765 () Int)

(assert (=> bs!5724 (= lambda!765 lambda!749)))

(declare-fun bs!5725 () Bool)

(assert (= bs!5725 (and d!4923 d!4883)))

(assert (=> bs!5725 (= lambda!765 lambda!752)))

(declare-fun bs!5726 () Bool)

(assert (= bs!5726 (and d!4923 d!4891)))

(assert (=> bs!5726 (= lambda!765 lambda!756)))

(declare-fun bs!5727 () Bool)

(assert (= bs!5727 (and d!4923 d!4875)))

(assert (=> bs!5727 (= lambda!765 lambda!750)))

(declare-fun bs!5728 () Bool)

(assert (= bs!5728 (and d!4923 d!4881)))

(assert (=> bs!5728 (= lambda!765 lambda!751)))

(assert (=> d!4923 (= (inv!976 setElem!980) (forall!71 (exprs!587 setElem!980) lambda!765))))

(declare-fun bs!5729 () Bool)

(assert (= bs!5729 d!4923))

(declare-fun m!18042 () Bool)

(assert (=> bs!5729 m!18042))

(assert (=> setNonEmpty!980 d!4923))

(declare-fun d!4925 () Bool)

(declare-fun res!30513 () Bool)

(declare-fun e!24239 () Bool)

(assert (=> d!4925 (=> res!30513 e!24239)))

(assert (=> d!4925 (= res!30513 ((_ is Nil!683) lt!5180))))

(assert (=> d!4925 (= (noDuplicateTag!16 Lexer!56 lt!5180 Nil!689) e!24239)))

(declare-fun b!43982 () Bool)

(declare-fun e!24240 () Bool)

(assert (=> b!43982 (= e!24239 e!24240)))

(declare-fun res!30514 () Bool)

(assert (=> b!43982 (=> (not res!30514) (not e!24240))))

(declare-fun contains!31 (List!691 String!1061) Bool)

(assert (=> b!43982 (= res!30514 (not (contains!31 Nil!689 (tag!341 (h!6079 lt!5180)))))))

(declare-fun b!43983 () Bool)

(assert (=> b!43983 (= e!24240 (noDuplicateTag!16 Lexer!56 (t!16386 lt!5180) (Cons!689 (tag!341 (h!6079 lt!5180)) Nil!689)))))

(assert (= (and d!4925 (not res!30513)) b!43982))

(assert (= (and b!43982 res!30514) b!43983))

(declare-fun m!18044 () Bool)

(assert (=> b!43982 m!18044))

(declare-fun m!18046 () Bool)

(assert (=> b!43983 m!18046))

(assert (=> b!43763 d!4925))

(declare-fun bs!5730 () Bool)

(declare-fun d!4927 () Bool)

(assert (= bs!5730 (and d!4927 d!4873)))

(declare-fun lambda!766 () Int)

(assert (=> bs!5730 (= lambda!766 lambda!749)))

(declare-fun bs!5731 () Bool)

(assert (= bs!5731 (and d!4927 d!4883)))

(assert (=> bs!5731 (= lambda!766 lambda!752)))

(declare-fun bs!5732 () Bool)

(assert (= bs!5732 (and d!4927 d!4891)))

(assert (=> bs!5732 (= lambda!766 lambda!756)))

(declare-fun bs!5733 () Bool)

(assert (= bs!5733 (and d!4927 d!4875)))

(assert (=> bs!5733 (= lambda!766 lambda!750)))

(declare-fun bs!5734 () Bool)

(assert (= bs!5734 (and d!4927 d!4881)))

(assert (=> bs!5734 (= lambda!766 lambda!751)))

(declare-fun bs!5735 () Bool)

(assert (= bs!5735 (and d!4927 d!4923)))

(assert (=> bs!5735 (= lambda!766 lambda!765)))

(assert (=> d!4927 (= (inv!976 setElem!973) (forall!71 (exprs!587 setElem!973) lambda!766))))

(declare-fun bs!5736 () Bool)

(assert (= bs!5736 d!4927))

(declare-fun m!18048 () Bool)

(assert (=> bs!5736 m!18048))

(assert (=> setNonEmpty!973 d!4927))

(declare-fun bs!5737 () Bool)

(declare-fun d!4929 () Bool)

(assert (= bs!5737 (and d!4929 d!4873)))

(declare-fun lambda!767 () Int)

(assert (=> bs!5737 (= lambda!767 lambda!749)))

(declare-fun bs!5738 () Bool)

(assert (= bs!5738 (and d!4929 d!4883)))

(assert (=> bs!5738 (= lambda!767 lambda!752)))

(declare-fun bs!5739 () Bool)

(assert (= bs!5739 (and d!4929 d!4891)))

(assert (=> bs!5739 (= lambda!767 lambda!756)))

(declare-fun bs!5740 () Bool)

(assert (= bs!5740 (and d!4929 d!4875)))

(assert (=> bs!5740 (= lambda!767 lambda!750)))

(declare-fun bs!5741 () Bool)

(assert (= bs!5741 (and d!4929 d!4881)))

(assert (=> bs!5741 (= lambda!767 lambda!751)))

(declare-fun bs!5742 () Bool)

(assert (= bs!5742 (and d!4929 d!4927)))

(assert (=> bs!5742 (= lambda!767 lambda!766)))

(declare-fun bs!5743 () Bool)

(assert (= bs!5743 (and d!4929 d!4923)))

(assert (=> bs!5743 (= lambda!767 lambda!765)))

(assert (=> d!4929 (= (inv!976 (_1!574 (_1!575 (h!6084 mapDefault!873)))) (forall!71 (exprs!587 (_1!574 (_1!575 (h!6084 mapDefault!873)))) lambda!767))))

(declare-fun bs!5744 () Bool)

(assert (= bs!5744 d!4929))

(declare-fun m!18050 () Bool)

(assert (=> bs!5744 m!18050))

(assert (=> b!43844 d!4929))

(declare-fun bs!5745 () Bool)

(declare-fun d!4931 () Bool)

(assert (= bs!5745 (and d!4931 d!4929)))

(declare-fun lambda!768 () Int)

(assert (=> bs!5745 (= lambda!768 lambda!767)))

(declare-fun bs!5746 () Bool)

(assert (= bs!5746 (and d!4931 d!4873)))

(assert (=> bs!5746 (= lambda!768 lambda!749)))

(declare-fun bs!5747 () Bool)

(assert (= bs!5747 (and d!4931 d!4883)))

(assert (=> bs!5747 (= lambda!768 lambda!752)))

(declare-fun bs!5748 () Bool)

(assert (= bs!5748 (and d!4931 d!4891)))

(assert (=> bs!5748 (= lambda!768 lambda!756)))

(declare-fun bs!5749 () Bool)

(assert (= bs!5749 (and d!4931 d!4875)))

(assert (=> bs!5749 (= lambda!768 lambda!750)))

(declare-fun bs!5750 () Bool)

(assert (= bs!5750 (and d!4931 d!4881)))

(assert (=> bs!5750 (= lambda!768 lambda!751)))

(declare-fun bs!5751 () Bool)

(assert (= bs!5751 (and d!4931 d!4927)))

(assert (=> bs!5751 (= lambda!768 lambda!766)))

(declare-fun bs!5752 () Bool)

(assert (= bs!5752 (and d!4931 d!4923)))

(assert (=> bs!5752 (= lambda!768 lambda!765)))

(assert (=> d!4931 (= (inv!976 setElem!965) (forall!71 (exprs!587 setElem!965) lambda!768))))

(declare-fun bs!5753 () Bool)

(assert (= bs!5753 d!4931))

(declare-fun m!18052 () Bool)

(assert (=> bs!5753 m!18052))

(assert (=> setNonEmpty!966 d!4931))

(assert (=> b!43683 d!4807))

(declare-fun d!4933 () Bool)

(declare-fun res!30519 () Bool)

(declare-fun e!24243 () Bool)

(assert (=> d!4933 (=> (not res!30519) (not e!24243))))

(declare-fun valid!211 (MutableMap!226) Bool)

(assert (=> d!4933 (= res!30519 (valid!211 (cache!711 cacheUp!320)))))

(assert (=> d!4933 (= (validCacheMapUp!18 (cache!711 cacheUp!320)) e!24243)))

(declare-fun b!43988 () Bool)

(declare-fun res!30520 () Bool)

(assert (=> b!43988 (=> (not res!30520) (not e!24243))))

(declare-fun invariantList!25 (List!690) Bool)

(declare-datatypes ((ListMap!51 0))(
  ( (ListMap!52 (toList!176 List!690)) )
))
(declare-fun map!248 (MutableMap!226) ListMap!51)

(assert (=> b!43988 (= res!30520 (invariantList!25 (toList!176 (map!248 (cache!711 cacheUp!320)))))))

(declare-fun b!43989 () Bool)

(declare-fun lambda!771 () Int)

(declare-fun forall!74 (List!690 Int) Bool)

(assert (=> b!43989 (= e!24243 (forall!74 (toList!176 (map!248 (cache!711 cacheUp!320))) lambda!771))))

(assert (= (and d!4933 res!30519) b!43988))

(assert (= (and b!43988 res!30520) b!43989))

(declare-fun m!18055 () Bool)

(assert (=> d!4933 m!18055))

(declare-fun m!18057 () Bool)

(assert (=> b!43988 m!18057))

(declare-fun m!18059 () Bool)

(assert (=> b!43988 m!18059))

(assert (=> b!43989 m!18057))

(declare-fun m!18061 () Bool)

(assert (=> b!43989 m!18061))

(assert (=> b!43752 d!4933))

(declare-fun d!4935 () Bool)

(assert (=> d!4935 (= (inv!977 (xs!2708 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) (<= (size!683 (innerList!187 (xs!2708 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) 2147483647))))

(declare-fun bs!5754 () Bool)

(assert (= bs!5754 d!4935))

(declare-fun m!18063 () Bool)

(assert (=> bs!5754 m!18063))

(assert (=> b!43827 d!4935))

(declare-fun d!4937 () Bool)

(assert (=> d!4937 true))

(declare-fun lt!5378 () Bool)

(declare-fun rulesValidInductive!8 (LexerInterface!58 List!685) Bool)

(assert (=> d!4937 (= lt!5378 (rulesValidInductive!8 Lexer!56 lt!5180))))

(declare-fun lambda!774 () Int)

(declare-fun forall!75 (List!685 Int) Bool)

(assert (=> d!4937 (= lt!5378 (forall!75 lt!5180 lambda!774))))

(assert (=> d!4937 (= (rulesValid!16 Lexer!56 lt!5180) lt!5378)))

(declare-fun bs!5755 () Bool)

(assert (= bs!5755 d!4937))

(declare-fun m!18065 () Bool)

(assert (=> bs!5755 m!18065))

(declare-fun m!18067 () Bool)

(assert (=> bs!5755 m!18067))

(assert (=> d!4853 d!4937))

(declare-fun d!4939 () Bool)

(assert (=> d!4939 (= (list!182 (_2!571 lt!5204)) (list!183 (c!15986 (_2!571 lt!5204))))))

(declare-fun bs!5756 () Bool)

(assert (= bs!5756 d!4939))

(declare-fun m!18069 () Bool)

(assert (=> bs!5756 m!18069))

(assert (=> b!43760 d!4939))

(declare-fun b!44002 () Bool)

(declare-fun e!24252 () Bool)

(declare-fun lt!5386 () tuple2!824)

(declare-fun isEmpty!141 (List!688) Bool)

(assert (=> b!44002 (= e!24252 (not (isEmpty!141 (_1!577 lt!5386))))))

(declare-fun b!44003 () Bool)

(declare-fun e!24250 () tuple2!824)

(declare-datatypes ((tuple2!828 0))(
  ( (tuple2!829 (_1!579 Token!92) (_2!579 List!684)) )
))
(declare-datatypes ((Option!55 0))(
  ( (None!54) (Some!54 (v!12440 tuple2!828)) )
))
(declare-fun lt!5387 () Option!55)

(declare-fun lt!5385 () tuple2!824)

(assert (=> b!44003 (= e!24250 (tuple2!825 (Cons!686 (_1!579 (v!12440 lt!5387)) (_1!577 lt!5385)) (_2!577 lt!5385)))))

(assert (=> b!44003 (= lt!5385 (lexList!13 Lexer!56 lt!5180 (_2!579 (v!12440 lt!5387))))))

(declare-fun b!44004 () Bool)

(declare-fun e!24251 () Bool)

(assert (=> b!44004 (= e!24251 (= (_2!577 lt!5386) (list!182 lt!5187)))))

(declare-fun b!44005 () Bool)

(assert (=> b!44005 (= e!24251 e!24252)))

(declare-fun res!30523 () Bool)

(assert (=> b!44005 (= res!30523 (< (size!683 (_2!577 lt!5386)) (size!683 (list!182 lt!5187))))))

(assert (=> b!44005 (=> (not res!30523) (not e!24252))))

(declare-fun b!44006 () Bool)

(assert (=> b!44006 (= e!24250 (tuple2!825 Nil!686 (list!182 lt!5187)))))

(declare-fun d!4941 () Bool)

(assert (=> d!4941 e!24251))

(declare-fun c!16030 () Bool)

(assert (=> d!4941 (= c!16030 (> (size!685 (_1!577 lt!5386)) 0))))

(assert (=> d!4941 (= lt!5386 e!24250)))

(declare-fun c!16029 () Bool)

(assert (=> d!4941 (= c!16029 ((_ is Some!54) lt!5387))))

(declare-fun maxPrefix!5 (LexerInterface!58 List!685 List!684) Option!55)

(assert (=> d!4941 (= lt!5387 (maxPrefix!5 Lexer!56 lt!5180 (list!182 lt!5187)))))

(assert (=> d!4941 (= (lexList!13 Lexer!56 lt!5180 (list!182 lt!5187)) lt!5386)))

(assert (= (and d!4941 c!16029) b!44003))

(assert (= (and d!4941 (not c!16029)) b!44006))

(assert (= (and d!4941 c!16030) b!44005))

(assert (= (and d!4941 (not c!16030)) b!44004))

(assert (= (and b!44005 res!30523) b!44002))

(declare-fun m!18071 () Bool)

(assert (=> b!44002 m!18071))

(declare-fun m!18073 () Bool)

(assert (=> b!44003 m!18073))

(declare-fun m!18075 () Bool)

(assert (=> b!44005 m!18075))

(assert (=> b!44005 m!17479))

(declare-fun m!18077 () Bool)

(assert (=> b!44005 m!18077))

(declare-fun m!18079 () Bool)

(assert (=> d!4941 m!18079))

(assert (=> d!4941 m!17479))

(declare-fun m!18081 () Bool)

(assert (=> d!4941 m!18081))

(assert (=> b!43760 d!4941))

(assert (=> b!43760 d!4833))

(declare-fun bs!5757 () Bool)

(declare-fun d!4943 () Bool)

(assert (= bs!5757 (and d!4943 d!4929)))

(declare-fun lambda!775 () Int)

(assert (=> bs!5757 (= lambda!775 lambda!767)))

(declare-fun bs!5758 () Bool)

(assert (= bs!5758 (and d!4943 d!4873)))

(assert (=> bs!5758 (= lambda!775 lambda!749)))

(declare-fun bs!5759 () Bool)

(assert (= bs!5759 (and d!4943 d!4883)))

(assert (=> bs!5759 (= lambda!775 lambda!752)))

(declare-fun bs!5760 () Bool)

(assert (= bs!5760 (and d!4943 d!4891)))

(assert (=> bs!5760 (= lambda!775 lambda!756)))

(declare-fun bs!5761 () Bool)

(assert (= bs!5761 (and d!4943 d!4875)))

(assert (=> bs!5761 (= lambda!775 lambda!750)))

(declare-fun bs!5762 () Bool)

(assert (= bs!5762 (and d!4943 d!4881)))

(assert (=> bs!5762 (= lambda!775 lambda!751)))

(declare-fun bs!5763 () Bool)

(assert (= bs!5763 (and d!4943 d!4931)))

(assert (=> bs!5763 (= lambda!775 lambda!768)))

(declare-fun bs!5764 () Bool)

(assert (= bs!5764 (and d!4943 d!4927)))

(assert (=> bs!5764 (= lambda!775 lambda!766)))

(declare-fun bs!5765 () Bool)

(assert (= bs!5765 (and d!4943 d!4923)))

(assert (=> bs!5765 (= lambda!775 lambda!765)))

(assert (=> d!4943 (= (inv!976 setElem!972) (forall!71 (exprs!587 setElem!972) lambda!775))))

(declare-fun bs!5766 () Bool)

(assert (= bs!5766 d!4943))

(declare-fun m!18083 () Bool)

(assert (=> bs!5766 m!18083))

(assert (=> setNonEmpty!972 d!4943))

(declare-fun bs!5767 () Bool)

(declare-fun d!4945 () Bool)

(assert (= bs!5767 (and d!4945 d!4929)))

(declare-fun lambda!776 () Int)

(assert (=> bs!5767 (= lambda!776 lambda!767)))

(declare-fun bs!5768 () Bool)

(assert (= bs!5768 (and d!4945 d!4873)))

(assert (=> bs!5768 (= lambda!776 lambda!749)))

(declare-fun bs!5769 () Bool)

(assert (= bs!5769 (and d!4945 d!4883)))

(assert (=> bs!5769 (= lambda!776 lambda!752)))

(declare-fun bs!5770 () Bool)

(assert (= bs!5770 (and d!4945 d!4891)))

(assert (=> bs!5770 (= lambda!776 lambda!756)))

(declare-fun bs!5771 () Bool)

(assert (= bs!5771 (and d!4945 d!4875)))

(assert (=> bs!5771 (= lambda!776 lambda!750)))

(declare-fun bs!5772 () Bool)

(assert (= bs!5772 (and d!4945 d!4881)))

(assert (=> bs!5772 (= lambda!776 lambda!751)))

(declare-fun bs!5773 () Bool)

(assert (= bs!5773 (and d!4945 d!4931)))

(assert (=> bs!5773 (= lambda!776 lambda!768)))

(declare-fun bs!5774 () Bool)

(assert (= bs!5774 (and d!4945 d!4923)))

(assert (=> bs!5774 (= lambda!776 lambda!765)))

(declare-fun bs!5775 () Bool)

(assert (= bs!5775 (and d!4945 d!4927)))

(assert (=> bs!5775 (= lambda!776 lambda!766)))

(declare-fun bs!5776 () Bool)

(assert (= bs!5776 (and d!4945 d!4943)))

(assert (=> bs!5776 (= lambda!776 lambda!775)))

(assert (=> d!4945 (= (inv!976 setElem!959) (forall!71 (exprs!587 setElem!959) lambda!776))))

(declare-fun bs!5777 () Bool)

(assert (= bs!5777 d!4945))

(declare-fun m!18085 () Bool)

(assert (=> bs!5777 m!18085))

(assert (=> setNonEmpty!959 d!4945))

(declare-fun d!4947 () Bool)

(assert (=> d!4947 (= (list!182 (_2!571 lt!5203)) (list!183 (c!15986 (_2!571 lt!5203))))))

(declare-fun bs!5778 () Bool)

(assert (= bs!5778 d!4947))

(declare-fun m!18087 () Bool)

(assert (=> bs!5778 m!18087))

(assert (=> b!43743 d!4947))

(declare-fun b!44007 () Bool)

(declare-fun e!24255 () Bool)

(declare-fun lt!5389 () tuple2!824)

(assert (=> b!44007 (= e!24255 (not (isEmpty!141 (_1!577 lt!5389))))))

(declare-fun b!44008 () Bool)

(declare-fun e!24253 () tuple2!824)

(declare-fun lt!5390 () Option!55)

(declare-fun lt!5388 () tuple2!824)

(assert (=> b!44008 (= e!24253 (tuple2!825 (Cons!686 (_1!579 (v!12440 lt!5390)) (_1!577 lt!5388)) (_2!577 lt!5388)))))

(assert (=> b!44008 (= lt!5388 (lexList!13 Lexer!56 lt!5180 (_2!579 (v!12440 lt!5390))))))

(declare-fun b!44009 () Bool)

(declare-fun e!24254 () Bool)

(assert (=> b!44009 (= e!24254 (= (_2!577 lt!5389) (list!182 input!525)))))

(declare-fun b!44010 () Bool)

(assert (=> b!44010 (= e!24254 e!24255)))

(declare-fun res!30524 () Bool)

(assert (=> b!44010 (= res!30524 (< (size!683 (_2!577 lt!5389)) (size!683 (list!182 input!525))))))

(assert (=> b!44010 (=> (not res!30524) (not e!24255))))

(declare-fun b!44011 () Bool)

(assert (=> b!44011 (= e!24253 (tuple2!825 Nil!686 (list!182 input!525)))))

(declare-fun d!4949 () Bool)

(assert (=> d!4949 e!24254))

(declare-fun c!16032 () Bool)

(assert (=> d!4949 (= c!16032 (> (size!685 (_1!577 lt!5389)) 0))))

(assert (=> d!4949 (= lt!5389 e!24253)))

(declare-fun c!16031 () Bool)

(assert (=> d!4949 (= c!16031 ((_ is Some!54) lt!5390))))

(assert (=> d!4949 (= lt!5390 (maxPrefix!5 Lexer!56 lt!5180 (list!182 input!525)))))

(assert (=> d!4949 (= (lexList!13 Lexer!56 lt!5180 (list!182 input!525)) lt!5389)))

(assert (= (and d!4949 c!16031) b!44008))

(assert (= (and d!4949 (not c!16031)) b!44011))

(assert (= (and d!4949 c!16032) b!44010))

(assert (= (and d!4949 (not c!16032)) b!44009))

(assert (= (and b!44010 res!30524) b!44007))

(declare-fun m!18089 () Bool)

(assert (=> b!44007 m!18089))

(declare-fun m!18091 () Bool)

(assert (=> b!44008 m!18091))

(declare-fun m!18093 () Bool)

(assert (=> b!44010 m!18093))

(assert (=> b!44010 m!17483))

(declare-fun m!18095 () Bool)

(assert (=> b!44010 m!18095))

(declare-fun m!18097 () Bool)

(assert (=> d!4949 m!18097))

(assert (=> d!4949 m!17483))

(declare-fun m!18099 () Bool)

(assert (=> d!4949 m!18099))

(assert (=> b!43743 d!4949))

(assert (=> b!43743 d!4837))

(assert (=> b!43689 d!4845))

(declare-fun d!4951 () Bool)

(declare-fun lt!5393 () Int)

(assert (=> d!4951 (= lt!5393 (size!683 (list!182 (_2!571 lt!5203))))))

(assert (=> d!4951 (= lt!5393 (size!684 (c!15986 (_2!571 lt!5203))))))

(assert (=> d!4951 (= (size!681 (_2!571 lt!5203)) lt!5393)))

(declare-fun bs!5779 () Bool)

(assert (= bs!5779 d!4951))

(assert (=> bs!5779 m!17529))

(assert (=> bs!5779 m!17529))

(declare-fun m!18101 () Bool)

(assert (=> bs!5779 m!18101))

(declare-fun m!18103 () Bool)

(assert (=> bs!5779 m!18103))

(assert (=> b!43741 d!4951))

(declare-fun d!4953 () Bool)

(declare-fun lt!5394 () Int)

(assert (=> d!4953 (= lt!5394 (size!683 (list!182 input!525)))))

(assert (=> d!4953 (= lt!5394 (size!684 (c!15986 input!525)))))

(assert (=> d!4953 (= (size!681 input!525) lt!5394)))

(declare-fun bs!5780 () Bool)

(assert (= bs!5780 d!4953))

(assert (=> bs!5780 m!17483))

(assert (=> bs!5780 m!17483))

(assert (=> bs!5780 m!18095))

(declare-fun m!18105 () Bool)

(assert (=> bs!5780 m!18105))

(assert (=> b!43741 d!4953))

(assert (=> d!4855 d!4827))

(declare-fun d!4955 () Bool)

(declare-fun lt!5395 () Int)

(assert (=> d!4955 (= lt!5395 (size!683 (list!182 (_2!571 lt!5204))))))

(assert (=> d!4955 (= lt!5395 (size!684 (c!15986 (_2!571 lt!5204))))))

(assert (=> d!4955 (= (size!681 (_2!571 lt!5204)) lt!5395)))

(declare-fun bs!5781 () Bool)

(assert (= bs!5781 d!4955))

(assert (=> bs!5781 m!17591))

(assert (=> bs!5781 m!17591))

(declare-fun m!18107 () Bool)

(assert (=> bs!5781 m!18107))

(declare-fun m!18109 () Bool)

(assert (=> bs!5781 m!18109))

(assert (=> b!43758 d!4955))

(declare-fun d!4957 () Bool)

(declare-fun lt!5396 () Int)

(assert (=> d!4957 (= lt!5396 (size!683 (list!182 lt!5187)))))

(assert (=> d!4957 (= lt!5396 (size!684 (c!15986 lt!5187)))))

(assert (=> d!4957 (= (size!681 lt!5187) lt!5396)))

(declare-fun bs!5782 () Bool)

(assert (= bs!5782 d!4957))

(assert (=> bs!5782 m!17479))

(assert (=> bs!5782 m!17479))

(assert (=> bs!5782 m!18077))

(declare-fun m!18111 () Bool)

(assert (=> bs!5782 m!18111))

(assert (=> b!43758 d!4957))

(declare-fun bs!5783 () Bool)

(declare-fun d!4959 () Bool)

(assert (= bs!5783 (and d!4959 d!4929)))

(declare-fun lambda!777 () Int)

(assert (=> bs!5783 (= lambda!777 lambda!767)))

(declare-fun bs!5784 () Bool)

(assert (= bs!5784 (and d!4959 d!4873)))

(assert (=> bs!5784 (= lambda!777 lambda!749)))

(declare-fun bs!5785 () Bool)

(assert (= bs!5785 (and d!4959 d!4883)))

(assert (=> bs!5785 (= lambda!777 lambda!752)))

(declare-fun bs!5786 () Bool)

(assert (= bs!5786 (and d!4959 d!4891)))

(assert (=> bs!5786 (= lambda!777 lambda!756)))

(declare-fun bs!5787 () Bool)

(assert (= bs!5787 (and d!4959 d!4875)))

(assert (=> bs!5787 (= lambda!777 lambda!750)))

(declare-fun bs!5788 () Bool)

(assert (= bs!5788 (and d!4959 d!4945)))

(assert (=> bs!5788 (= lambda!777 lambda!776)))

(declare-fun bs!5789 () Bool)

(assert (= bs!5789 (and d!4959 d!4881)))

(assert (=> bs!5789 (= lambda!777 lambda!751)))

(declare-fun bs!5790 () Bool)

(assert (= bs!5790 (and d!4959 d!4931)))

(assert (=> bs!5790 (= lambda!777 lambda!768)))

(declare-fun bs!5791 () Bool)

(assert (= bs!5791 (and d!4959 d!4923)))

(assert (=> bs!5791 (= lambda!777 lambda!765)))

(declare-fun bs!5792 () Bool)

(assert (= bs!5792 (and d!4959 d!4927)))

(assert (=> bs!5792 (= lambda!777 lambda!766)))

(declare-fun bs!5793 () Bool)

(assert (= bs!5793 (and d!4959 d!4943)))

(assert (=> bs!5793 (= lambda!777 lambda!775)))

(assert (=> d!4959 (= (inv!976 (_1!574 (_1!575 (h!6084 (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))))) (forall!71 (exprs!587 (_1!574 (_1!575 (h!6084 (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))))) lambda!777))))

(declare-fun bs!5794 () Bool)

(assert (= bs!5794 d!4959))

(declare-fun m!18113 () Bool)

(assert (=> bs!5794 m!18113))

(assert (=> b!43824 d!4959))

(declare-fun b!44017 () Bool)

(assert (=> b!44017 true))

(declare-fun d!4961 () Bool)

(declare-fun res!30529 () Bool)

(declare-fun e!24258 () Bool)

(assert (=> d!4961 (=> (not res!30529) (not e!24258))))

(declare-fun valid!212 (MutableMap!224) Bool)

(assert (=> d!4961 (= res!30529 (valid!212 (cache!709 cacheFurthestNullable!45)))))

(assert (=> d!4961 (= (validCacheMapFurthestNullable!12 (cache!709 cacheFurthestNullable!45) (totalInput!1530 cacheFurthestNullable!45)) e!24258)))

(declare-fun b!44016 () Bool)

(declare-fun res!30530 () Bool)

(assert (=> b!44016 (=> (not res!30530) (not e!24258))))

(declare-fun invariantList!26 (List!687) Bool)

(declare-datatypes ((ListMap!53 0))(
  ( (ListMap!54 (toList!177 List!687)) )
))
(declare-fun map!249 (MutableMap!224) ListMap!53)

(assert (=> b!44016 (= res!30530 (invariantList!26 (toList!177 (map!249 (cache!709 cacheFurthestNullable!45)))))))

(declare-fun lambda!780 () Int)

(declare-fun forall!76 (List!687 Int) Bool)

(assert (=> b!44017 (= e!24258 (forall!76 (toList!177 (map!249 (cache!709 cacheFurthestNullable!45))) lambda!780))))

(assert (= (and d!4961 res!30529) b!44016))

(assert (= (and b!44016 res!30530) b!44017))

(declare-fun m!18116 () Bool)

(assert (=> d!4961 m!18116))

(declare-fun m!18118 () Bool)

(assert (=> b!44016 m!18118))

(declare-fun m!18120 () Bool)

(assert (=> b!44016 m!18120))

(assert (=> b!44017 m!18118))

(declare-fun m!18122 () Bool)

(assert (=> b!44017 m!18122))

(assert (=> d!4859 d!4961))

(assert (=> b!43749 d!4961))

(declare-fun d!4963 () Bool)

(declare-fun c!16033 () Bool)

(assert (=> d!4963 (= c!16033 ((_ is Node!129) (left!551 (c!15986 input!525))))))

(declare-fun e!24259 () Bool)

(assert (=> d!4963 (= (inv!970 (left!551 (c!15986 input!525))) e!24259)))

(declare-fun b!44020 () Bool)

(assert (=> b!44020 (= e!24259 (inv!974 (left!551 (c!15986 input!525))))))

(declare-fun b!44021 () Bool)

(declare-fun e!24260 () Bool)

(assert (=> b!44021 (= e!24259 e!24260)))

(declare-fun res!30531 () Bool)

(assert (=> b!44021 (= res!30531 (not ((_ is Leaf!322) (left!551 (c!15986 input!525)))))))

(assert (=> b!44021 (=> res!30531 e!24260)))

(declare-fun b!44022 () Bool)

(assert (=> b!44022 (= e!24260 (inv!975 (left!551 (c!15986 input!525))))))

(assert (= (and d!4963 c!16033) b!44020))

(assert (= (and d!4963 (not c!16033)) b!44021))

(assert (= (and b!44021 (not res!30531)) b!44022))

(declare-fun m!18124 () Bool)

(assert (=> b!44020 m!18124))

(declare-fun m!18126 () Bool)

(assert (=> b!44022 m!18126))

(assert (=> b!43821 d!4963))

(declare-fun d!4965 () Bool)

(declare-fun c!16034 () Bool)

(assert (=> d!4965 (= c!16034 ((_ is Node!129) (right!881 (c!15986 input!525))))))

(declare-fun e!24261 () Bool)

(assert (=> d!4965 (= (inv!970 (right!881 (c!15986 input!525))) e!24261)))

(declare-fun b!44023 () Bool)

(assert (=> b!44023 (= e!24261 (inv!974 (right!881 (c!15986 input!525))))))

(declare-fun b!44024 () Bool)

(declare-fun e!24262 () Bool)

(assert (=> b!44024 (= e!24261 e!24262)))

(declare-fun res!30532 () Bool)

(assert (=> b!44024 (= res!30532 (not ((_ is Leaf!322) (right!881 (c!15986 input!525)))))))

(assert (=> b!44024 (=> res!30532 e!24262)))

(declare-fun b!44025 () Bool)

(assert (=> b!44025 (= e!24262 (inv!975 (right!881 (c!15986 input!525))))))

(assert (= (and d!4965 c!16034) b!44023))

(assert (= (and d!4965 (not c!16034)) b!44024))

(assert (= (and b!44024 (not res!30532)) b!44025))

(declare-fun m!18128 () Bool)

(assert (=> b!44023 m!18128))

(declare-fun m!18130 () Bool)

(assert (=> b!44025 m!18130))

(assert (=> b!43821 d!4965))

(declare-fun bs!5795 () Bool)

(declare-fun d!4967 () Bool)

(assert (= bs!5795 (and d!4967 d!4929)))

(declare-fun lambda!781 () Int)

(assert (=> bs!5795 (= lambda!781 lambda!767)))

(declare-fun bs!5796 () Bool)

(assert (= bs!5796 (and d!4967 d!4873)))

(assert (=> bs!5796 (= lambda!781 lambda!749)))

(declare-fun bs!5797 () Bool)

(assert (= bs!5797 (and d!4967 d!4883)))

(assert (=> bs!5797 (= lambda!781 lambda!752)))

(declare-fun bs!5798 () Bool)

(assert (= bs!5798 (and d!4967 d!4875)))

(assert (=> bs!5798 (= lambda!781 lambda!750)))

(declare-fun bs!5799 () Bool)

(assert (= bs!5799 (and d!4967 d!4945)))

(assert (=> bs!5799 (= lambda!781 lambda!776)))

(declare-fun bs!5800 () Bool)

(assert (= bs!5800 (and d!4967 d!4881)))

(assert (=> bs!5800 (= lambda!781 lambda!751)))

(declare-fun bs!5801 () Bool)

(assert (= bs!5801 (and d!4967 d!4931)))

(assert (=> bs!5801 (= lambda!781 lambda!768)))

(declare-fun bs!5802 () Bool)

(assert (= bs!5802 (and d!4967 d!4923)))

(assert (=> bs!5802 (= lambda!781 lambda!765)))

(declare-fun bs!5803 () Bool)

(assert (= bs!5803 (and d!4967 d!4891)))

(assert (=> bs!5803 (= lambda!781 lambda!756)))

(declare-fun bs!5804 () Bool)

(assert (= bs!5804 (and d!4967 d!4959)))

(assert (=> bs!5804 (= lambda!781 lambda!777)))

(declare-fun bs!5805 () Bool)

(assert (= bs!5805 (and d!4967 d!4927)))

(assert (=> bs!5805 (= lambda!781 lambda!766)))

(declare-fun bs!5806 () Bool)

(assert (= bs!5806 (and d!4967 d!4943)))

(assert (=> bs!5806 (= lambda!781 lambda!775)))

(assert (=> d!4967 (= (inv!976 setElem!971) (forall!71 (exprs!587 setElem!971) lambda!781))))

(declare-fun bs!5807 () Bool)

(assert (= bs!5807 d!4967))

(declare-fun m!18132 () Bool)

(assert (=> bs!5807 m!18132))

(assert (=> setNonEmpty!971 d!4967))

(declare-fun b!44027 () Bool)

(declare-fun e!24263 () List!684)

(declare-fun e!24264 () List!684)

(assert (=> b!44027 (= e!24263 e!24264)))

(declare-fun c!16036 () Bool)

(assert (=> b!44027 (= c!16036 ((_ is Leaf!322) (c!15986 (_2!571 (_1!576 lt!5192)))))))

(declare-fun b!44029 () Bool)

(assert (=> b!44029 (= e!24264 (++!57 (list!183 (left!551 (c!15986 (_2!571 (_1!576 lt!5192))))) (list!183 (right!881 (c!15986 (_2!571 (_1!576 lt!5192)))))))))

(declare-fun b!44026 () Bool)

(assert (=> b!44026 (= e!24263 Nil!682)))

(declare-fun d!4969 () Bool)

(declare-fun c!16035 () Bool)

(assert (=> d!4969 (= c!16035 ((_ is Empty!129) (c!15986 (_2!571 (_1!576 lt!5192)))))))

(assert (=> d!4969 (= (list!183 (c!15986 (_2!571 (_1!576 lt!5192)))) e!24263)))

(declare-fun b!44028 () Bool)

(assert (=> b!44028 (= e!24264 (list!185 (xs!2708 (c!15986 (_2!571 (_1!576 lt!5192))))))))

(assert (= (and d!4969 c!16035) b!44026))

(assert (= (and d!4969 (not c!16035)) b!44027))

(assert (= (and b!44027 c!16036) b!44028))

(assert (= (and b!44027 (not c!16036)) b!44029))

(declare-fun m!18134 () Bool)

(assert (=> b!44029 m!18134))

(declare-fun m!18136 () Bool)

(assert (=> b!44029 m!18136))

(assert (=> b!44029 m!18134))

(assert (=> b!44029 m!18136))

(declare-fun m!18138 () Bool)

(assert (=> b!44029 m!18138))

(declare-fun m!18140 () Bool)

(assert (=> b!44028 m!18140))

(assert (=> d!4801 d!4969))

(declare-fun d!4971 () Bool)

(declare-fun res!30535 () Bool)

(declare-fun e!24266 () Bool)

(assert (=> d!4971 (=> res!30535 e!24266)))

(assert (=> d!4971 (= res!30535 (not ((_ is Node!129) (c!15986 input!525))))))

(assert (=> d!4971 (= (isBalanced!23 (c!15986 input!525)) e!24266)))

(declare-fun b!44030 () Bool)

(declare-fun res!30537 () Bool)

(declare-fun e!24265 () Bool)

(assert (=> b!44030 (=> (not res!30537) (not e!24265))))

(assert (=> b!44030 (= res!30537 (not (isEmpty!139 (left!551 (c!15986 input!525)))))))

(declare-fun b!44031 () Bool)

(declare-fun res!30534 () Bool)

(assert (=> b!44031 (=> (not res!30534) (not e!24265))))

(assert (=> b!44031 (= res!30534 (isBalanced!23 (left!551 (c!15986 input!525))))))

(declare-fun b!44032 () Bool)

(declare-fun res!30536 () Bool)

(assert (=> b!44032 (=> (not res!30536) (not e!24265))))

(assert (=> b!44032 (= res!30536 (isBalanced!23 (right!881 (c!15986 input!525))))))

(declare-fun b!44033 () Bool)

(assert (=> b!44033 (= e!24265 (not (isEmpty!139 (right!881 (c!15986 input!525)))))))

(declare-fun b!44034 () Bool)

(assert (=> b!44034 (= e!24266 e!24265)))

(declare-fun res!30533 () Bool)

(assert (=> b!44034 (=> (not res!30533) (not e!24265))))

(assert (=> b!44034 (= res!30533 (<= (- 1) (- (height!10 (left!551 (c!15986 input!525))) (height!10 (right!881 (c!15986 input!525))))))))

(declare-fun b!44035 () Bool)

(declare-fun res!30538 () Bool)

(assert (=> b!44035 (=> (not res!30538) (not e!24265))))

(assert (=> b!44035 (= res!30538 (<= (- (height!10 (left!551 (c!15986 input!525))) (height!10 (right!881 (c!15986 input!525)))) 1))))

(assert (= (and d!4971 (not res!30535)) b!44034))

(assert (= (and b!44034 res!30533) b!44035))

(assert (= (and b!44035 res!30538) b!44031))

(assert (= (and b!44031 res!30534) b!44032))

(assert (= (and b!44032 res!30536) b!44030))

(assert (= (and b!44030 res!30537) b!44033))

(declare-fun m!18142 () Bool)

(assert (=> b!44032 m!18142))

(assert (=> b!44035 m!17735))

(assert (=> b!44035 m!17737))

(declare-fun m!18144 () Bool)

(assert (=> b!44031 m!18144))

(declare-fun m!18146 () Bool)

(assert (=> b!44033 m!18146))

(assert (=> b!44034 m!17735))

(assert (=> b!44034 m!17737))

(declare-fun m!18148 () Bool)

(assert (=> b!44030 m!18148))

(assert (=> d!4825 d!4971))

(declare-fun b!44038 () Bool)

(declare-fun e!24268 () List!688)

(assert (=> b!44038 (= e!24268 (list!186 (xs!2709 (c!15987 (_1!571 lt!5181)))))))

(declare-fun b!44039 () Bool)

(assert (=> b!44039 (= e!24268 (++!56 (list!184 (left!552 (c!15987 (_1!571 lt!5181)))) (list!184 (right!882 (c!15987 (_1!571 lt!5181))))))))

(declare-fun b!44037 () Bool)

(declare-fun e!24267 () List!688)

(assert (=> b!44037 (= e!24267 e!24268)))

(declare-fun c!16038 () Bool)

(assert (=> b!44037 (= c!16038 ((_ is Leaf!323) (c!15987 (_1!571 lt!5181))))))

(declare-fun d!4973 () Bool)

(declare-fun c!16037 () Bool)

(assert (=> d!4973 (= c!16037 ((_ is Empty!130) (c!15987 (_1!571 lt!5181))))))

(assert (=> d!4973 (= (list!184 (c!15987 (_1!571 lt!5181))) e!24267)))

(declare-fun b!44036 () Bool)

(assert (=> b!44036 (= e!24267 Nil!686)))

(assert (= (and d!4973 c!16037) b!44036))

(assert (= (and d!4973 (not c!16037)) b!44037))

(assert (= (and b!44037 c!16038) b!44038))

(assert (= (and b!44037 (not c!16038)) b!44039))

(declare-fun m!18150 () Bool)

(assert (=> b!44038 m!18150))

(declare-fun m!18152 () Bool)

(assert (=> b!44039 m!18152))

(declare-fun m!18154 () Bool)

(assert (=> b!44039 m!18154))

(assert (=> b!44039 m!18152))

(assert (=> b!44039 m!18154))

(declare-fun m!18156 () Bool)

(assert (=> b!44039 m!18156))

(assert (=> d!4847 d!4973))

(declare-fun bs!5808 () Bool)

(declare-fun d!4975 () Bool)

(assert (= bs!5808 (and d!4975 d!4967)))

(declare-fun lambda!782 () Int)

(assert (=> bs!5808 (= lambda!782 lambda!781)))

(declare-fun bs!5809 () Bool)

(assert (= bs!5809 (and d!4975 d!4929)))

(assert (=> bs!5809 (= lambda!782 lambda!767)))

(declare-fun bs!5810 () Bool)

(assert (= bs!5810 (and d!4975 d!4873)))

(assert (=> bs!5810 (= lambda!782 lambda!749)))

(declare-fun bs!5811 () Bool)

(assert (= bs!5811 (and d!4975 d!4883)))

(assert (=> bs!5811 (= lambda!782 lambda!752)))

(declare-fun bs!5812 () Bool)

(assert (= bs!5812 (and d!4975 d!4875)))

(assert (=> bs!5812 (= lambda!782 lambda!750)))

(declare-fun bs!5813 () Bool)

(assert (= bs!5813 (and d!4975 d!4945)))

(assert (=> bs!5813 (= lambda!782 lambda!776)))

(declare-fun bs!5814 () Bool)

(assert (= bs!5814 (and d!4975 d!4881)))

(assert (=> bs!5814 (= lambda!782 lambda!751)))

(declare-fun bs!5815 () Bool)

(assert (= bs!5815 (and d!4975 d!4931)))

(assert (=> bs!5815 (= lambda!782 lambda!768)))

(declare-fun bs!5816 () Bool)

(assert (= bs!5816 (and d!4975 d!4923)))

(assert (=> bs!5816 (= lambda!782 lambda!765)))

(declare-fun bs!5817 () Bool)

(assert (= bs!5817 (and d!4975 d!4891)))

(assert (=> bs!5817 (= lambda!782 lambda!756)))

(declare-fun bs!5818 () Bool)

(assert (= bs!5818 (and d!4975 d!4959)))

(assert (=> bs!5818 (= lambda!782 lambda!777)))

(declare-fun bs!5819 () Bool)

(assert (= bs!5819 (and d!4975 d!4927)))

(assert (=> bs!5819 (= lambda!782 lambda!766)))

(declare-fun bs!5820 () Bool)

(assert (= bs!5820 (and d!4975 d!4943)))

(assert (=> bs!5820 (= lambda!782 lambda!775)))

(assert (=> d!4975 (= (inv!976 (_1!574 (_1!575 (h!6084 (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))))) (forall!71 (exprs!587 (_1!574 (_1!575 (h!6084 (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320)))))))))) lambda!782))))

(declare-fun bs!5821 () Bool)

(assert (= bs!5821 d!4975))

(declare-fun m!18158 () Bool)

(assert (=> bs!5821 m!18158))

(assert (=> b!43823 d!4975))

(declare-fun bs!5822 () Bool)

(declare-fun d!4977 () Bool)

(assert (= bs!5822 (and d!4977 d!4967)))

(declare-fun lambda!783 () Int)

(assert (=> bs!5822 (= lambda!783 lambda!781)))

(declare-fun bs!5823 () Bool)

(assert (= bs!5823 (and d!4977 d!4929)))

(assert (=> bs!5823 (= lambda!783 lambda!767)))

(declare-fun bs!5824 () Bool)

(assert (= bs!5824 (and d!4977 d!4873)))

(assert (=> bs!5824 (= lambda!783 lambda!749)))

(declare-fun bs!5825 () Bool)

(assert (= bs!5825 (and d!4977 d!4883)))

(assert (=> bs!5825 (= lambda!783 lambda!752)))

(declare-fun bs!5826 () Bool)

(assert (= bs!5826 (and d!4977 d!4875)))

(assert (=> bs!5826 (= lambda!783 lambda!750)))

(declare-fun bs!5827 () Bool)

(assert (= bs!5827 (and d!4977 d!4945)))

(assert (=> bs!5827 (= lambda!783 lambda!776)))

(declare-fun bs!5828 () Bool)

(assert (= bs!5828 (and d!4977 d!4881)))

(assert (=> bs!5828 (= lambda!783 lambda!751)))

(declare-fun bs!5829 () Bool)

(assert (= bs!5829 (and d!4977 d!4931)))

(assert (=> bs!5829 (= lambda!783 lambda!768)))

(declare-fun bs!5830 () Bool)

(assert (= bs!5830 (and d!4977 d!4923)))

(assert (=> bs!5830 (= lambda!783 lambda!765)))

(declare-fun bs!5831 () Bool)

(assert (= bs!5831 (and d!4977 d!4891)))

(assert (=> bs!5831 (= lambda!783 lambda!756)))

(declare-fun bs!5832 () Bool)

(assert (= bs!5832 (and d!4977 d!4959)))

(assert (=> bs!5832 (= lambda!783 lambda!777)))

(declare-fun bs!5833 () Bool)

(assert (= bs!5833 (and d!4977 d!4927)))

(assert (=> bs!5833 (= lambda!783 lambda!766)))

(declare-fun bs!5834 () Bool)

(assert (= bs!5834 (and d!4977 d!4943)))

(assert (=> bs!5834 (= lambda!783 lambda!775)))

(declare-fun bs!5835 () Bool)

(assert (= bs!5835 (and d!4977 d!4975)))

(assert (=> bs!5835 (= lambda!783 lambda!782)))

(assert (=> d!4977 (= (inv!976 setElem!960) (forall!71 (exprs!587 setElem!960) lambda!783))))

(declare-fun bs!5836 () Bool)

(assert (= bs!5836 d!4977))

(declare-fun m!18160 () Bool)

(assert (=> bs!5836 m!18160))

(assert (=> setNonEmpty!960 d!4977))

(declare-fun d!4979 () Bool)

(assert (=> d!4979 (= (valid!207 (_3!164 lt!5200)) (validCacheMapDown!20 (cache!710 (_3!164 lt!5200))))))

(declare-fun bs!5837 () Bool)

(assert (= bs!5837 d!4979))

(declare-fun m!18162 () Bool)

(assert (=> bs!5837 m!18162))

(assert (=> b!43727 d!4979))

(declare-fun d!4981 () Bool)

(assert (=> d!4981 (= (valid!207 (_3!164 lt!5192)) (validCacheMapDown!20 (cache!710 (_3!164 lt!5192))))))

(declare-fun bs!5838 () Bool)

(assert (= bs!5838 d!4981))

(declare-fun m!18164 () Bool)

(assert (=> bs!5838 m!18164))

(assert (=> d!4811 d!4981))

(declare-fun bs!5839 () Bool)

(declare-fun d!4983 () Bool)

(assert (= bs!5839 (and d!4983 d!4967)))

(declare-fun lambda!784 () Int)

(assert (=> bs!5839 (= lambda!784 lambda!781)))

(declare-fun bs!5840 () Bool)

(assert (= bs!5840 (and d!4983 d!4929)))

(assert (=> bs!5840 (= lambda!784 lambda!767)))

(declare-fun bs!5841 () Bool)

(assert (= bs!5841 (and d!4983 d!4873)))

(assert (=> bs!5841 (= lambda!784 lambda!749)))

(declare-fun bs!5842 () Bool)

(assert (= bs!5842 (and d!4983 d!4883)))

(assert (=> bs!5842 (= lambda!784 lambda!752)))

(declare-fun bs!5843 () Bool)

(assert (= bs!5843 (and d!4983 d!4875)))

(assert (=> bs!5843 (= lambda!784 lambda!750)))

(declare-fun bs!5844 () Bool)

(assert (= bs!5844 (and d!4983 d!4945)))

(assert (=> bs!5844 (= lambda!784 lambda!776)))

(declare-fun bs!5845 () Bool)

(assert (= bs!5845 (and d!4983 d!4881)))

(assert (=> bs!5845 (= lambda!784 lambda!751)))

(declare-fun bs!5846 () Bool)

(assert (= bs!5846 (and d!4983 d!4931)))

(assert (=> bs!5846 (= lambda!784 lambda!768)))

(declare-fun bs!5847 () Bool)

(assert (= bs!5847 (and d!4983 d!4923)))

(assert (=> bs!5847 (= lambda!784 lambda!765)))

(declare-fun bs!5848 () Bool)

(assert (= bs!5848 (and d!4983 d!4891)))

(assert (=> bs!5848 (= lambda!784 lambda!756)))

(declare-fun bs!5849 () Bool)

(assert (= bs!5849 (and d!4983 d!4959)))

(assert (=> bs!5849 (= lambda!784 lambda!777)))

(declare-fun bs!5850 () Bool)

(assert (= bs!5850 (and d!4983 d!4977)))

(assert (=> bs!5850 (= lambda!784 lambda!783)))

(declare-fun bs!5851 () Bool)

(assert (= bs!5851 (and d!4983 d!4927)))

(assert (=> bs!5851 (= lambda!784 lambda!766)))

(declare-fun bs!5852 () Bool)

(assert (= bs!5852 (and d!4983 d!4943)))

(assert (=> bs!5852 (= lambda!784 lambda!775)))

(declare-fun bs!5853 () Bool)

(assert (= bs!5853 (and d!4983 d!4975)))

(assert (=> bs!5853 (= lambda!784 lambda!782)))

(assert (=> d!4983 (= (inv!976 setElem!954) (forall!71 (exprs!587 setElem!954) lambda!784))))

(declare-fun bs!5854 () Bool)

(assert (= bs!5854 d!4983))

(declare-fun m!18166 () Bool)

(assert (=> bs!5854 m!18166))

(assert (=> setNonEmpty!954 d!4983))

(declare-fun bs!5855 () Bool)

(declare-fun d!4985 () Bool)

(assert (= bs!5855 (and d!4985 d!4967)))

(declare-fun lambda!785 () Int)

(assert (=> bs!5855 (= lambda!785 lambda!781)))

(declare-fun bs!5856 () Bool)

(assert (= bs!5856 (and d!4985 d!4929)))

(assert (=> bs!5856 (= lambda!785 lambda!767)))

(declare-fun bs!5857 () Bool)

(assert (= bs!5857 (and d!4985 d!4873)))

(assert (=> bs!5857 (= lambda!785 lambda!749)))

(declare-fun bs!5858 () Bool)

(assert (= bs!5858 (and d!4985 d!4883)))

(assert (=> bs!5858 (= lambda!785 lambda!752)))

(declare-fun bs!5859 () Bool)

(assert (= bs!5859 (and d!4985 d!4875)))

(assert (=> bs!5859 (= lambda!785 lambda!750)))

(declare-fun bs!5860 () Bool)

(assert (= bs!5860 (and d!4985 d!4983)))

(assert (=> bs!5860 (= lambda!785 lambda!784)))

(declare-fun bs!5861 () Bool)

(assert (= bs!5861 (and d!4985 d!4945)))

(assert (=> bs!5861 (= lambda!785 lambda!776)))

(declare-fun bs!5862 () Bool)

(assert (= bs!5862 (and d!4985 d!4881)))

(assert (=> bs!5862 (= lambda!785 lambda!751)))

(declare-fun bs!5863 () Bool)

(assert (= bs!5863 (and d!4985 d!4931)))

(assert (=> bs!5863 (= lambda!785 lambda!768)))

(declare-fun bs!5864 () Bool)

(assert (= bs!5864 (and d!4985 d!4923)))

(assert (=> bs!5864 (= lambda!785 lambda!765)))

(declare-fun bs!5865 () Bool)

(assert (= bs!5865 (and d!4985 d!4891)))

(assert (=> bs!5865 (= lambda!785 lambda!756)))

(declare-fun bs!5866 () Bool)

(assert (= bs!5866 (and d!4985 d!4959)))

(assert (=> bs!5866 (= lambda!785 lambda!777)))

(declare-fun bs!5867 () Bool)

(assert (= bs!5867 (and d!4985 d!4977)))

(assert (=> bs!5867 (= lambda!785 lambda!783)))

(declare-fun bs!5868 () Bool)

(assert (= bs!5868 (and d!4985 d!4927)))

(assert (=> bs!5868 (= lambda!785 lambda!766)))

(declare-fun bs!5869 () Bool)

(assert (= bs!5869 (and d!4985 d!4943)))

(assert (=> bs!5869 (= lambda!785 lambda!775)))

(declare-fun bs!5870 () Bool)

(assert (= bs!5870 (and d!4985 d!4975)))

(assert (=> bs!5870 (= lambda!785 lambda!782)))

(assert (=> d!4985 (= (inv!976 (_2!572 (_1!573 (h!6083 mapDefault!862)))) (forall!71 (exprs!587 (_2!572 (_1!573 (h!6083 mapDefault!862)))) lambda!785))))

(declare-fun bs!5871 () Bool)

(assert (= bs!5871 d!4985))

(declare-fun m!18168 () Bool)

(assert (=> bs!5871 m!18168))

(assert (=> b!43789 d!4985))

(declare-fun d!4987 () Bool)

(declare-fun e!24271 () Bool)

(assert (=> d!4987 e!24271))

(declare-fun res!30541 () Bool)

(assert (=> d!4987 (=> (not res!30541) (not e!24271))))

(declare-fun lt!5399 () BalanceConc!258)

(assert (=> d!4987 (= res!30541 (= (list!182 lt!5399) lt!5185))))

(declare-fun fromList!5 (List!684) Conc!129)

(assert (=> d!4987 (= lt!5399 (BalanceConc!259 (fromList!5 lt!5185)))))

(assert (=> d!4987 (= (fromListB!8 lt!5185) lt!5399)))

(declare-fun b!44042 () Bool)

(assert (=> b!44042 (= e!24271 (isBalanced!23 (fromList!5 lt!5185)))))

(assert (= (and d!4987 res!30541) b!44042))

(declare-fun m!18170 () Bool)

(assert (=> d!4987 m!18170))

(declare-fun m!18172 () Bool)

(assert (=> d!4987 m!18172))

(assert (=> b!44042 m!18172))

(assert (=> b!44042 m!18172))

(declare-fun m!18174 () Bool)

(assert (=> b!44042 m!18174))

(assert (=> d!4835 d!4987))

(declare-fun b!44044 () Bool)

(declare-fun e!24272 () List!684)

(declare-fun e!24273 () List!684)

(assert (=> b!44044 (= e!24272 e!24273)))

(declare-fun c!16041 () Bool)

(assert (=> b!44044 (= c!16041 ((_ is Leaf!322) (c!15986 (_2!571 lt!5181))))))

(declare-fun b!44046 () Bool)

(assert (=> b!44046 (= e!24273 (++!57 (list!183 (left!551 (c!15986 (_2!571 lt!5181)))) (list!183 (right!881 (c!15986 (_2!571 lt!5181))))))))

(declare-fun b!44043 () Bool)

(assert (=> b!44043 (= e!24272 Nil!682)))

(declare-fun d!4989 () Bool)

(declare-fun c!16040 () Bool)

(assert (=> d!4989 (= c!16040 ((_ is Empty!129) (c!15986 (_2!571 lt!5181))))))

(assert (=> d!4989 (= (list!183 (c!15986 (_2!571 lt!5181))) e!24272)))

(declare-fun b!44045 () Bool)

(assert (=> b!44045 (= e!24273 (list!185 (xs!2708 (c!15986 (_2!571 lt!5181)))))))

(assert (= (and d!4989 c!16040) b!44043))

(assert (= (and d!4989 (not c!16040)) b!44044))

(assert (= (and b!44044 c!16041) b!44045))

(assert (= (and b!44044 (not c!16041)) b!44046))

(declare-fun m!18176 () Bool)

(assert (=> b!44046 m!18176))

(declare-fun m!18178 () Bool)

(assert (=> b!44046 m!18178))

(assert (=> b!44046 m!18176))

(assert (=> b!44046 m!18178))

(declare-fun m!18180 () Bool)

(assert (=> b!44046 m!18180))

(declare-fun m!18182 () Bool)

(assert (=> b!44045 m!18182))

(assert (=> d!4851 d!4989))

(assert (=> d!4805 d!4933))

(declare-fun bs!5872 () Bool)

(declare-fun d!4991 () Bool)

(assert (= bs!5872 (and d!4991 d!4967)))

(declare-fun lambda!786 () Int)

(assert (=> bs!5872 (= lambda!786 lambda!781)))

(declare-fun bs!5873 () Bool)

(assert (= bs!5873 (and d!4991 d!4985)))

(assert (=> bs!5873 (= lambda!786 lambda!785)))

(declare-fun bs!5874 () Bool)

(assert (= bs!5874 (and d!4991 d!4929)))

(assert (=> bs!5874 (= lambda!786 lambda!767)))

(declare-fun bs!5875 () Bool)

(assert (= bs!5875 (and d!4991 d!4873)))

(assert (=> bs!5875 (= lambda!786 lambda!749)))

(declare-fun bs!5876 () Bool)

(assert (= bs!5876 (and d!4991 d!4883)))

(assert (=> bs!5876 (= lambda!786 lambda!752)))

(declare-fun bs!5877 () Bool)

(assert (= bs!5877 (and d!4991 d!4875)))

(assert (=> bs!5877 (= lambda!786 lambda!750)))

(declare-fun bs!5878 () Bool)

(assert (= bs!5878 (and d!4991 d!4983)))

(assert (=> bs!5878 (= lambda!786 lambda!784)))

(declare-fun bs!5879 () Bool)

(assert (= bs!5879 (and d!4991 d!4945)))

(assert (=> bs!5879 (= lambda!786 lambda!776)))

(declare-fun bs!5880 () Bool)

(assert (= bs!5880 (and d!4991 d!4881)))

(assert (=> bs!5880 (= lambda!786 lambda!751)))

(declare-fun bs!5881 () Bool)

(assert (= bs!5881 (and d!4991 d!4931)))

(assert (=> bs!5881 (= lambda!786 lambda!768)))

(declare-fun bs!5882 () Bool)

(assert (= bs!5882 (and d!4991 d!4923)))

(assert (=> bs!5882 (= lambda!786 lambda!765)))

(declare-fun bs!5883 () Bool)

(assert (= bs!5883 (and d!4991 d!4891)))

(assert (=> bs!5883 (= lambda!786 lambda!756)))

(declare-fun bs!5884 () Bool)

(assert (= bs!5884 (and d!4991 d!4959)))

(assert (=> bs!5884 (= lambda!786 lambda!777)))

(declare-fun bs!5885 () Bool)

(assert (= bs!5885 (and d!4991 d!4977)))

(assert (=> bs!5885 (= lambda!786 lambda!783)))

(declare-fun bs!5886 () Bool)

(assert (= bs!5886 (and d!4991 d!4927)))

(assert (=> bs!5886 (= lambda!786 lambda!766)))

(declare-fun bs!5887 () Bool)

(assert (= bs!5887 (and d!4991 d!4943)))

(assert (=> bs!5887 (= lambda!786 lambda!775)))

(declare-fun bs!5888 () Bool)

(assert (= bs!5888 (and d!4991 d!4975)))

(assert (=> bs!5888 (= lambda!786 lambda!782)))

(assert (=> d!4991 (= (inv!976 setElem!987) (forall!71 (exprs!587 setElem!987) lambda!786))))

(declare-fun bs!5889 () Bool)

(assert (= bs!5889 d!4991))

(declare-fun m!18184 () Bool)

(assert (=> bs!5889 m!18184))

(assert (=> setNonEmpty!987 d!4991))

(declare-fun bs!5890 () Bool)

(declare-fun d!4993 () Bool)

(assert (= bs!5890 (and d!4993 d!4967)))

(declare-fun lambda!787 () Int)

(assert (=> bs!5890 (= lambda!787 lambda!781)))

(declare-fun bs!5891 () Bool)

(assert (= bs!5891 (and d!4993 d!4985)))

(assert (=> bs!5891 (= lambda!787 lambda!785)))

(declare-fun bs!5892 () Bool)

(assert (= bs!5892 (and d!4993 d!4929)))

(assert (=> bs!5892 (= lambda!787 lambda!767)))

(declare-fun bs!5893 () Bool)

(assert (= bs!5893 (and d!4993 d!4873)))

(assert (=> bs!5893 (= lambda!787 lambda!749)))

(declare-fun bs!5894 () Bool)

(assert (= bs!5894 (and d!4993 d!4883)))

(assert (=> bs!5894 (= lambda!787 lambda!752)))

(declare-fun bs!5895 () Bool)

(assert (= bs!5895 (and d!4993 d!4875)))

(assert (=> bs!5895 (= lambda!787 lambda!750)))

(declare-fun bs!5896 () Bool)

(assert (= bs!5896 (and d!4993 d!4983)))

(assert (=> bs!5896 (= lambda!787 lambda!784)))

(declare-fun bs!5897 () Bool)

(assert (= bs!5897 (and d!4993 d!4945)))

(assert (=> bs!5897 (= lambda!787 lambda!776)))

(declare-fun bs!5898 () Bool)

(assert (= bs!5898 (and d!4993 d!4931)))

(assert (=> bs!5898 (= lambda!787 lambda!768)))

(declare-fun bs!5899 () Bool)

(assert (= bs!5899 (and d!4993 d!4923)))

(assert (=> bs!5899 (= lambda!787 lambda!765)))

(declare-fun bs!5900 () Bool)

(assert (= bs!5900 (and d!4993 d!4891)))

(assert (=> bs!5900 (= lambda!787 lambda!756)))

(declare-fun bs!5901 () Bool)

(assert (= bs!5901 (and d!4993 d!4959)))

(assert (=> bs!5901 (= lambda!787 lambda!777)))

(declare-fun bs!5902 () Bool)

(assert (= bs!5902 (and d!4993 d!4881)))

(assert (=> bs!5902 (= lambda!787 lambda!751)))

(declare-fun bs!5903 () Bool)

(assert (= bs!5903 (and d!4993 d!4991)))

(assert (=> bs!5903 (= lambda!787 lambda!786)))

(declare-fun bs!5904 () Bool)

(assert (= bs!5904 (and d!4993 d!4977)))

(assert (=> bs!5904 (= lambda!787 lambda!783)))

(declare-fun bs!5905 () Bool)

(assert (= bs!5905 (and d!4993 d!4927)))

(assert (=> bs!5905 (= lambda!787 lambda!766)))

(declare-fun bs!5906 () Bool)

(assert (= bs!5906 (and d!4993 d!4943)))

(assert (=> bs!5906 (= lambda!787 lambda!775)))

(declare-fun bs!5907 () Bool)

(assert (= bs!5907 (and d!4993 d!4975)))

(assert (=> bs!5907 (= lambda!787 lambda!782)))

(assert (=> d!4993 (= (inv!976 (_2!572 (_1!573 (h!6083 mapValue!864)))) (forall!71 (exprs!587 (_2!572 (_1!573 (h!6083 mapValue!864)))) lambda!787))))

(declare-fun bs!5908 () Bool)

(assert (= bs!5908 d!4993))

(declare-fun m!18186 () Bool)

(assert (=> bs!5908 m!18186))

(assert (=> b!43809 d!4993))

(declare-fun bs!5909 () Bool)

(declare-fun d!4995 () Bool)

(assert (= bs!5909 (and d!4995 d!4967)))

(declare-fun lambda!788 () Int)

(assert (=> bs!5909 (= lambda!788 lambda!781)))

(declare-fun bs!5910 () Bool)

(assert (= bs!5910 (and d!4995 d!4993)))

(assert (=> bs!5910 (= lambda!788 lambda!787)))

(declare-fun bs!5911 () Bool)

(assert (= bs!5911 (and d!4995 d!4985)))

(assert (=> bs!5911 (= lambda!788 lambda!785)))

(declare-fun bs!5912 () Bool)

(assert (= bs!5912 (and d!4995 d!4929)))

(assert (=> bs!5912 (= lambda!788 lambda!767)))

(declare-fun bs!5913 () Bool)

(assert (= bs!5913 (and d!4995 d!4873)))

(assert (=> bs!5913 (= lambda!788 lambda!749)))

(declare-fun bs!5914 () Bool)

(assert (= bs!5914 (and d!4995 d!4883)))

(assert (=> bs!5914 (= lambda!788 lambda!752)))

(declare-fun bs!5915 () Bool)

(assert (= bs!5915 (and d!4995 d!4875)))

(assert (=> bs!5915 (= lambda!788 lambda!750)))

(declare-fun bs!5916 () Bool)

(assert (= bs!5916 (and d!4995 d!4983)))

(assert (=> bs!5916 (= lambda!788 lambda!784)))

(declare-fun bs!5917 () Bool)

(assert (= bs!5917 (and d!4995 d!4945)))

(assert (=> bs!5917 (= lambda!788 lambda!776)))

(declare-fun bs!5918 () Bool)

(assert (= bs!5918 (and d!4995 d!4931)))

(assert (=> bs!5918 (= lambda!788 lambda!768)))

(declare-fun bs!5919 () Bool)

(assert (= bs!5919 (and d!4995 d!4923)))

(assert (=> bs!5919 (= lambda!788 lambda!765)))

(declare-fun bs!5920 () Bool)

(assert (= bs!5920 (and d!4995 d!4891)))

(assert (=> bs!5920 (= lambda!788 lambda!756)))

(declare-fun bs!5921 () Bool)

(assert (= bs!5921 (and d!4995 d!4959)))

(assert (=> bs!5921 (= lambda!788 lambda!777)))

(declare-fun bs!5922 () Bool)

(assert (= bs!5922 (and d!4995 d!4881)))

(assert (=> bs!5922 (= lambda!788 lambda!751)))

(declare-fun bs!5923 () Bool)

(assert (= bs!5923 (and d!4995 d!4991)))

(assert (=> bs!5923 (= lambda!788 lambda!786)))

(declare-fun bs!5924 () Bool)

(assert (= bs!5924 (and d!4995 d!4977)))

(assert (=> bs!5924 (= lambda!788 lambda!783)))

(declare-fun bs!5925 () Bool)

(assert (= bs!5925 (and d!4995 d!4927)))

(assert (=> bs!5925 (= lambda!788 lambda!766)))

(declare-fun bs!5926 () Bool)

(assert (= bs!5926 (and d!4995 d!4943)))

(assert (=> bs!5926 (= lambda!788 lambda!775)))

(declare-fun bs!5927 () Bool)

(assert (= bs!5927 (and d!4995 d!4975)))

(assert (=> bs!5927 (= lambda!788 lambda!782)))

(assert (=> d!4995 (= (inv!976 setElem!979) (forall!71 (exprs!587 setElem!979) lambda!788))))

(declare-fun bs!5928 () Bool)

(assert (= bs!5928 d!4995))

(declare-fun m!18188 () Bool)

(assert (=> bs!5928 m!18188))

(assert (=> setNonEmpty!978 d!4995))

(declare-fun bs!5929 () Bool)

(declare-fun d!4997 () Bool)

(assert (= bs!5929 (and d!4997 d!4967)))

(declare-fun lambda!789 () Int)

(assert (=> bs!5929 (= lambda!789 lambda!781)))

(declare-fun bs!5930 () Bool)

(assert (= bs!5930 (and d!4997 d!4993)))

(assert (=> bs!5930 (= lambda!789 lambda!787)))

(declare-fun bs!5931 () Bool)

(assert (= bs!5931 (and d!4997 d!4985)))

(assert (=> bs!5931 (= lambda!789 lambda!785)))

(declare-fun bs!5932 () Bool)

(assert (= bs!5932 (and d!4997 d!4929)))

(assert (=> bs!5932 (= lambda!789 lambda!767)))

(declare-fun bs!5933 () Bool)

(assert (= bs!5933 (and d!4997 d!4873)))

(assert (=> bs!5933 (= lambda!789 lambda!749)))

(declare-fun bs!5934 () Bool)

(assert (= bs!5934 (and d!4997 d!4883)))

(assert (=> bs!5934 (= lambda!789 lambda!752)))

(declare-fun bs!5935 () Bool)

(assert (= bs!5935 (and d!4997 d!4875)))

(assert (=> bs!5935 (= lambda!789 lambda!750)))

(declare-fun bs!5936 () Bool)

(assert (= bs!5936 (and d!4997 d!4983)))

(assert (=> bs!5936 (= lambda!789 lambda!784)))

(declare-fun bs!5937 () Bool)

(assert (= bs!5937 (and d!4997 d!4931)))

(assert (=> bs!5937 (= lambda!789 lambda!768)))

(declare-fun bs!5938 () Bool)

(assert (= bs!5938 (and d!4997 d!4923)))

(assert (=> bs!5938 (= lambda!789 lambda!765)))

(declare-fun bs!5939 () Bool)

(assert (= bs!5939 (and d!4997 d!4891)))

(assert (=> bs!5939 (= lambda!789 lambda!756)))

(declare-fun bs!5940 () Bool)

(assert (= bs!5940 (and d!4997 d!4959)))

(assert (=> bs!5940 (= lambda!789 lambda!777)))

(declare-fun bs!5941 () Bool)

(assert (= bs!5941 (and d!4997 d!4995)))

(assert (=> bs!5941 (= lambda!789 lambda!788)))

(declare-fun bs!5942 () Bool)

(assert (= bs!5942 (and d!4997 d!4945)))

(assert (=> bs!5942 (= lambda!789 lambda!776)))

(declare-fun bs!5943 () Bool)

(assert (= bs!5943 (and d!4997 d!4881)))

(assert (=> bs!5943 (= lambda!789 lambda!751)))

(declare-fun bs!5944 () Bool)

(assert (= bs!5944 (and d!4997 d!4991)))

(assert (=> bs!5944 (= lambda!789 lambda!786)))

(declare-fun bs!5945 () Bool)

(assert (= bs!5945 (and d!4997 d!4977)))

(assert (=> bs!5945 (= lambda!789 lambda!783)))

(declare-fun bs!5946 () Bool)

(assert (= bs!5946 (and d!4997 d!4927)))

(assert (=> bs!5946 (= lambda!789 lambda!766)))

(declare-fun bs!5947 () Bool)

(assert (= bs!5947 (and d!4997 d!4943)))

(assert (=> bs!5947 (= lambda!789 lambda!775)))

(declare-fun bs!5948 () Bool)

(assert (= bs!5948 (and d!4997 d!4975)))

(assert (=> bs!5948 (= lambda!789 lambda!782)))

(assert (=> d!4997 (= (inv!976 (_2!572 (_1!573 (h!6083 mapDefault!867)))) (forall!71 (exprs!587 (_2!572 (_1!573 (h!6083 mapDefault!867)))) lambda!789))))

(declare-fun bs!5949 () Bool)

(assert (= bs!5949 d!4997))

(declare-fun m!18190 () Bool)

(assert (=> bs!5949 m!18190))

(assert (=> b!43808 d!4997))

(declare-fun bs!5950 () Bool)

(declare-fun d!4999 () Bool)

(assert (= bs!5950 (and d!4999 d!4967)))

(declare-fun lambda!790 () Int)

(assert (=> bs!5950 (= lambda!790 lambda!781)))

(declare-fun bs!5951 () Bool)

(assert (= bs!5951 (and d!4999 d!4993)))

(assert (=> bs!5951 (= lambda!790 lambda!787)))

(declare-fun bs!5952 () Bool)

(assert (= bs!5952 (and d!4999 d!4985)))

(assert (=> bs!5952 (= lambda!790 lambda!785)))

(declare-fun bs!5953 () Bool)

(assert (= bs!5953 (and d!4999 d!4929)))

(assert (=> bs!5953 (= lambda!790 lambda!767)))

(declare-fun bs!5954 () Bool)

(assert (= bs!5954 (and d!4999 d!4873)))

(assert (=> bs!5954 (= lambda!790 lambda!749)))

(declare-fun bs!5955 () Bool)

(assert (= bs!5955 (and d!4999 d!4883)))

(assert (=> bs!5955 (= lambda!790 lambda!752)))

(declare-fun bs!5956 () Bool)

(assert (= bs!5956 (and d!4999 d!4875)))

(assert (=> bs!5956 (= lambda!790 lambda!750)))

(declare-fun bs!5957 () Bool)

(assert (= bs!5957 (and d!4999 d!4983)))

(assert (=> bs!5957 (= lambda!790 lambda!784)))

(declare-fun bs!5958 () Bool)

(assert (= bs!5958 (and d!4999 d!4931)))

(assert (=> bs!5958 (= lambda!790 lambda!768)))

(declare-fun bs!5959 () Bool)

(assert (= bs!5959 (and d!4999 d!4923)))

(assert (=> bs!5959 (= lambda!790 lambda!765)))

(declare-fun bs!5960 () Bool)

(assert (= bs!5960 (and d!4999 d!4997)))

(assert (=> bs!5960 (= lambda!790 lambda!789)))

(declare-fun bs!5961 () Bool)

(assert (= bs!5961 (and d!4999 d!4891)))

(assert (=> bs!5961 (= lambda!790 lambda!756)))

(declare-fun bs!5962 () Bool)

(assert (= bs!5962 (and d!4999 d!4959)))

(assert (=> bs!5962 (= lambda!790 lambda!777)))

(declare-fun bs!5963 () Bool)

(assert (= bs!5963 (and d!4999 d!4995)))

(assert (=> bs!5963 (= lambda!790 lambda!788)))

(declare-fun bs!5964 () Bool)

(assert (= bs!5964 (and d!4999 d!4945)))

(assert (=> bs!5964 (= lambda!790 lambda!776)))

(declare-fun bs!5965 () Bool)

(assert (= bs!5965 (and d!4999 d!4881)))

(assert (=> bs!5965 (= lambda!790 lambda!751)))

(declare-fun bs!5966 () Bool)

(assert (= bs!5966 (and d!4999 d!4991)))

(assert (=> bs!5966 (= lambda!790 lambda!786)))

(declare-fun bs!5967 () Bool)

(assert (= bs!5967 (and d!4999 d!4977)))

(assert (=> bs!5967 (= lambda!790 lambda!783)))

(declare-fun bs!5968 () Bool)

(assert (= bs!5968 (and d!4999 d!4927)))

(assert (=> bs!5968 (= lambda!790 lambda!766)))

(declare-fun bs!5969 () Bool)

(assert (= bs!5969 (and d!4999 d!4943)))

(assert (=> bs!5969 (= lambda!790 lambda!775)))

(declare-fun bs!5970 () Bool)

(assert (= bs!5970 (and d!4999 d!4975)))

(assert (=> bs!5970 (= lambda!790 lambda!782)))

(assert (=> d!4999 (= (inv!976 (_1!574 (_1!575 (h!6084 mapValue!862)))) (forall!71 (exprs!587 (_1!574 (_1!575 (h!6084 mapValue!862)))) lambda!790))))

(declare-fun bs!5971 () Bool)

(assert (= bs!5971 d!4999))

(declare-fun m!18192 () Bool)

(assert (=> bs!5971 m!18192))

(assert (=> b!43845 d!4999))

(declare-fun d!5001 () Bool)

(declare-fun c!16044 () Bool)

(assert (=> d!5001 (= c!16044 ((_ is LexerInterfaceExt!55) Lexer!56))))

(declare-fun e!24276 () Bool)

(assert (=> d!5001 (= (rulesInvariant!49 Lexer!56 lt!5180) e!24276)))

(declare-fun b!44051 () Bool)

(declare-fun rulesInvariant!50 (LexerInterface!58 List!685) Bool)

(assert (=> b!44051 (= e!24276 (rulesInvariant!50 Lexer!56 lt!5180))))

(declare-fun b!44052 () Bool)

(assert (=> b!44052 (= e!24276 (rulesInvariant!48 Lexer!56 lt!5180))))

(assert (= (and d!5001 c!16044) b!44051))

(assert (= (and d!5001 (not c!16044)) b!44052))

(declare-fun m!18194 () Bool)

(assert (=> b!44051 m!18194))

(assert (=> b!44052 m!17435))

(assert (=> b!43776 d!5001))

(declare-fun d!5003 () Bool)

(declare-fun res!30542 () Bool)

(declare-fun e!24277 () Bool)

(assert (=> d!5003 (=> (not res!30542) (not e!24277))))

(assert (=> d!5003 (= res!30542 (= (csize!488 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) (+ (size!684 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) (size!684 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))))

(assert (=> d!5003 (= (inv!974 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) e!24277)))

(declare-fun b!44053 () Bool)

(declare-fun res!30543 () Bool)

(assert (=> b!44053 (=> (not res!30543) (not e!24277))))

(assert (=> b!44053 (= res!30543 (and (not (= (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) Empty!129)) (not (= (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) Empty!129))))))

(declare-fun b!44054 () Bool)

(declare-fun res!30544 () Bool)

(assert (=> b!44054 (=> (not res!30544) (not e!24277))))

(assert (=> b!44054 (= res!30544 (= (cheight!340 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) (+ (max!0 (height!10 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) (height!10 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) 1)))))

(declare-fun b!44055 () Bool)

(assert (=> b!44055 (= e!24277 (<= 0 (cheight!340 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(assert (= (and d!5003 res!30542) b!44053))

(assert (= (and b!44053 res!30543) b!44054))

(assert (= (and b!44054 res!30544) b!44055))

(declare-fun m!18196 () Bool)

(assert (=> d!5003 m!18196))

(declare-fun m!18198 () Bool)

(assert (=> d!5003 m!18198))

(assert (=> b!44054 m!17717))

(assert (=> b!44054 m!17719))

(assert (=> b!44054 m!17717))

(assert (=> b!44054 m!17719))

(declare-fun m!18200 () Bool)

(assert (=> b!44054 m!18200))

(assert (=> b!43753 d!5003))

(declare-fun d!5005 () Bool)

(declare-fun c!16047 () Bool)

(assert (=> d!5005 (= c!16047 ((_ is LexerInterfaceExt!55) Lexer!56))))

(declare-fun e!24280 () Bool)

(assert (=> d!5005 (= (rulesProduceEachTokenIndividuallyList!12 Lexer!56 lt!5180 (list!181 (_1!571 (lex!34 Lexer!56 lt!5180 (seqFromList!28 lt!5185))))) e!24280)))

(declare-fun b!44060 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!14 (LexerInterface!58 List!685 List!688) Bool)

(assert (=> b!44060 (= e!24280 (rulesProduceEachTokenIndividuallyList!14 Lexer!56 lt!5180 (list!181 (_1!571 (lex!34 Lexer!56 lt!5180 (seqFromList!28 lt!5185))))))))

(declare-fun b!44061 () Bool)

(assert (=> b!44061 (= e!24280 (rulesProduceEachTokenIndividuallyList!13 Lexer!56 lt!5180 (list!181 (_1!571 (lex!34 Lexer!56 lt!5180 (seqFromList!28 lt!5185))))))))

(assert (= (and d!5005 c!16047) b!44060))

(assert (= (and d!5005 (not c!16047)) b!44061))

(assert (=> b!44060 m!17627))

(declare-fun m!18202 () Bool)

(assert (=> b!44060 m!18202))

(assert (=> b!44061 m!17627))

(declare-fun m!18204 () Bool)

(assert (=> b!44061 m!18204))

(assert (=> b!43774 d!5005))

(declare-fun d!5007 () Bool)

(assert (=> d!5007 (= (list!181 (_1!571 (lex!34 Lexer!56 lt!5180 (seqFromList!28 lt!5185)))) (list!184 (c!15987 (_1!571 (lex!34 Lexer!56 lt!5180 (seqFromList!28 lt!5185))))))))

(declare-fun bs!5972 () Bool)

(assert (= bs!5972 d!5007))

(declare-fun m!18206 () Bool)

(assert (=> bs!5972 m!18206))

(assert (=> b!43774 d!5007))

(declare-fun d!5009 () Bool)

(declare-fun c!16050 () Bool)

(assert (=> d!5009 (= c!16050 ((_ is LexerInterfaceExt!55) Lexer!56))))

(declare-fun e!24283 () tuple2!816)

(assert (=> d!5009 (= (lex!34 Lexer!56 lt!5180 (seqFromList!28 lt!5185)) e!24283)))

(declare-fun b!44066 () Bool)

(declare-fun lex!35 (LexerInterface!58 List!685 BalanceConc!258) tuple2!816)

(assert (=> b!44066 (= e!24283 (lex!35 Lexer!56 lt!5180 (seqFromList!28 lt!5185)))))

(declare-fun b!44067 () Bool)

(assert (=> b!44067 (= e!24283 (lex!33 Lexer!56 lt!5180 (seqFromList!28 lt!5185)))))

(assert (= (and d!5009 c!16050) b!44066))

(assert (= (and d!5009 (not c!16050)) b!44067))

(assert (=> b!44066 m!17481))

(declare-fun m!18208 () Bool)

(assert (=> b!44066 m!18208))

(assert (=> b!44067 m!17481))

(assert (=> b!44067 m!17621))

(assert (=> b!43774 d!5009))

(assert (=> b!43774 d!4835))

(assert (=> d!4809 d!4827))

(declare-fun d!5011 () Bool)

(assert (=> d!5011 (= (list!181 (_1!571 (_1!576 lt!5200))) (list!184 (c!15987 (_1!571 (_1!576 lt!5200)))))))

(declare-fun bs!5973 () Bool)

(assert (= bs!5973 d!5011))

(declare-fun m!18210 () Bool)

(assert (=> bs!5973 m!18210))

(assert (=> d!4809 d!5011))

(declare-fun b!44090 () Bool)

(declare-fun lt!5479 () tuple2!816)

(declare-fun lt!5499 () Option!54)

(assert (=> b!44090 (= lt!5479 (lexRec!8 Lexer!56 lt!5180 (_2!578 (v!12439 lt!5499))))))

(declare-fun e!24295 () tuple2!816)

(assert (=> b!44090 (= e!24295 (tuple2!817 (prepend!12 (_1!571 lt!5479) (_1!578 (v!12439 lt!5499))) (_2!571 lt!5479)))))

(declare-fun b!44091 () Bool)

(declare-fun e!24294 () tuple2!816)

(declare-fun lt!5490 () BalanceConc!258)

(assert (=> b!44091 (= e!24294 (tuple2!817 (BalanceConc!261 Empty!130) lt!5490))))

(declare-fun b!44092 () Bool)

(declare-fun res!30556 () Bool)

(declare-fun e!24293 () Bool)

(assert (=> b!44092 (=> (not res!30556) (not e!24293))))

(declare-fun lt!5475 () tuple4!66)

(assert (=> b!44092 (= res!30556 (= (list!182 (_2!571 (_1!576 lt!5475))) (list!182 (_2!571 (lexRec!8 Lexer!56 lt!5180 input!525)))))))

(declare-fun b!44093 () Bool)

(declare-fun e!24292 () tuple4!66)

(declare-fun lt!5496 () tuple4!66)

(assert (=> b!44093 (= e!24292 (tuple4!67 (_1!576 lt!5496) (_2!576 lt!5496) (_3!164 lt!5496) (_4!33 lt!5496)))))

(declare-fun lt!5503 () tuple2!816)

(declare-datatypes ((tuple4!68 0))(
  ( (tuple4!69 (_1!580 Option!54) (_2!580 CacheUp!152) (_3!165 CacheDown!152) (_4!34 CacheFurthestNullable!100)) )
))
(declare-fun lt!5493 () tuple4!68)

(assert (=> b!44093 (= lt!5503 (lexRec!8 Lexer!56 lt!5180 (_2!578 (v!12439 (_1!580 lt!5493)))))))

(declare-fun lt!5471 () List!684)

(assert (=> b!44093 (= lt!5471 (list!182 (BalanceConc!259 Empty!129)))))

(declare-fun lt!5481 () List!684)

(assert (=> b!44093 (= lt!5481 (list!182 (charsOf!4 (_1!578 (v!12439 (_1!580 lt!5493))))))))

(declare-fun lt!5484 () List!684)

(assert (=> b!44093 (= lt!5484 (list!182 (_2!578 (v!12439 (_1!580 lt!5493)))))))

(declare-fun lt!5485 () Unit!310)

(assert (=> b!44093 (= lt!5485 (lemmaConcatAssociativity!10 lt!5471 lt!5481 lt!5484))))

(assert (=> b!44093 (= (++!57 (++!57 lt!5471 lt!5481) lt!5484) (++!57 lt!5471 (++!57 lt!5481 lt!5484)))))

(declare-fun lt!5482 () Unit!310)

(assert (=> b!44093 (= lt!5482 lt!5485)))

(assert (=> b!44093 (= lt!5499 (maxPrefixZipperSequence!6 Lexer!56 lt!5180 input!525))))

(declare-fun c!16059 () Bool)

(assert (=> b!44093 (= c!16059 ((_ is Some!53) lt!5499))))

(assert (=> b!44093 (= (lexRec!8 Lexer!56 lt!5180 input!525) e!24295)))

(declare-fun lt!5497 () Unit!310)

(declare-fun Unit!318 () Unit!310)

(assert (=> b!44093 (= lt!5497 Unit!318)))

(declare-fun lt!5474 () List!688)

(assert (=> b!44093 (= lt!5474 (list!181 (BalanceConc!261 Empty!130)))))

(declare-fun lt!5498 () List!688)

(assert (=> b!44093 (= lt!5498 (Cons!686 (_1!578 (v!12439 (_1!580 lt!5493))) Nil!686))))

(declare-fun lt!5477 () List!688)

(assert (=> b!44093 (= lt!5477 (list!181 (_1!571 lt!5503)))))

(declare-fun lt!5502 () Unit!310)

(assert (=> b!44093 (= lt!5502 (lemmaConcatAssociativity!11 lt!5474 lt!5498 lt!5477))))

(assert (=> b!44093 (= (++!56 (++!56 lt!5474 lt!5498) lt!5477) (++!56 lt!5474 (++!56 lt!5498 lt!5477)))))

(declare-fun lt!5473 () Unit!310)

(assert (=> b!44093 (= lt!5473 lt!5502)))

(declare-fun lt!5504 () List!684)

(assert (=> b!44093 (= lt!5504 (++!57 (list!182 (BalanceConc!259 Empty!129)) (list!182 (charsOf!4 (_1!578 (v!12439 (_1!580 lt!5493)))))))))

(declare-fun lt!5472 () List!684)

(assert (=> b!44093 (= lt!5472 (list!182 (_2!578 (v!12439 (_1!580 lt!5493)))))))

(declare-fun lt!5483 () List!688)

(assert (=> b!44093 (= lt!5483 (list!181 (append!7 (BalanceConc!261 Empty!130) (_1!578 (v!12439 (_1!580 lt!5493))))))))

(declare-fun lt!5488 () Unit!310)

(assert (=> b!44093 (= lt!5488 (lemmaLexThenLexPrefix!3 Lexer!56 lt!5180 lt!5504 lt!5472 lt!5483 (list!181 (_1!571 lt!5503)) (list!182 (_2!571 lt!5503))))))

(assert (=> b!44093 (= (lexList!13 Lexer!56 lt!5180 lt!5504) (tuple2!825 lt!5483 Nil!682))))

(declare-fun lt!5480 () Unit!310)

(assert (=> b!44093 (= lt!5480 lt!5488)))

(assert (=> b!44093 (= lt!5490 (++!58 (BalanceConc!259 Empty!129) (charsOf!4 (_1!578 (v!12439 (_1!580 lt!5493))))))))

(declare-fun lt!5491 () Option!54)

(assert (=> b!44093 (= lt!5491 (maxPrefixZipperSequence!6 Lexer!56 lt!5180 lt!5490))))

(declare-fun c!16057 () Bool)

(assert (=> b!44093 (= c!16057 ((_ is Some!53) lt!5491))))

(assert (=> b!44093 (= (lexRec!8 Lexer!56 lt!5180 (++!58 (BalanceConc!259 Empty!129) (charsOf!4 (_1!578 (v!12439 (_1!580 lt!5493)))))) e!24294)))

(declare-fun lt!5476 () Unit!310)

(declare-fun Unit!319 () Unit!310)

(assert (=> b!44093 (= lt!5476 Unit!319)))

(declare-fun lt!5478 () BalanceConc!258)

(assert (=> b!44093 (= lt!5478 (++!58 (BalanceConc!259 Empty!129) (charsOf!4 (_1!578 (v!12439 (_1!580 lt!5493))))))))

(declare-fun lt!5492 () List!684)

(assert (=> b!44093 (= lt!5492 (list!182 lt!5478))))

(declare-fun lt!5495 () List!684)

(assert (=> b!44093 (= lt!5495 (list!182 (_2!578 (v!12439 (_1!580 lt!5493)))))))

(declare-fun lt!5486 () Unit!310)

(assert (=> b!44093 (= lt!5486 (lemmaConcatTwoListThenFSndIsSuffix!3 lt!5492 lt!5495))))

(assert (=> b!44093 (isSuffix!3 lt!5495 (++!57 lt!5492 lt!5495))))

(declare-fun lt!5500 () Unit!310)

(assert (=> b!44093 (= lt!5500 lt!5486)))

(assert (=> b!44093 (= lt!5496 (lexTailRecV3Mem!10 Lexer!56 lt!5180 input!525 lt!5478 (_2!578 (v!12439 (_1!580 lt!5493))) (append!7 (BalanceConc!261 Empty!130) (_1!578 (v!12439 (_1!580 lt!5493)))) (_2!580 lt!5493) (_3!165 lt!5493) (_4!34 lt!5493)))))

(declare-fun b!44094 () Bool)

(declare-fun lt!5489 () tuple2!816)

(assert (=> b!44094 (= lt!5489 (lexRec!8 Lexer!56 lt!5180 (_2!578 (v!12439 lt!5491))))))

(assert (=> b!44094 (= e!24294 (tuple2!817 (prepend!12 (_1!571 lt!5489) (_1!578 (v!12439 lt!5491))) (_2!571 lt!5489)))))

(declare-fun b!44095 () Bool)

(assert (=> b!44095 (= e!24295 (tuple2!817 (BalanceConc!261 Empty!130) input!525))))

(declare-fun b!44096 () Bool)

(declare-fun res!30555 () Bool)

(assert (=> b!44096 (=> (not res!30555) (not e!24293))))

(assert (=> b!44096 (= res!30555 (valid!209 (_4!33 lt!5475)))))

(declare-fun b!44097 () Bool)

(declare-fun res!30558 () Bool)

(assert (=> b!44097 (=> (not res!30558) (not e!24293))))

(assert (=> b!44097 (= res!30558 (valid!208 (_2!576 lt!5475)))))

(declare-fun b!44098 () Bool)

(declare-fun res!30557 () Bool)

(assert (=> b!44098 (=> (not res!30557) (not e!24293))))

(assert (=> b!44098 (= res!30557 (valid!207 (_3!164 lt!5475)))))

(declare-fun d!5013 () Bool)

(assert (=> d!5013 e!24293))

(declare-fun res!30559 () Bool)

(assert (=> d!5013 (=> (not res!30559) (not e!24293))))

(assert (=> d!5013 (= res!30559 (= (list!181 (_1!571 (_1!576 lt!5475))) (list!181 (_1!571 (lexRec!8 Lexer!56 lt!5180 input!525)))))))

(assert (=> d!5013 (= lt!5475 e!24292)))

(declare-fun c!16058 () Bool)

(assert (=> d!5013 (= c!16058 ((_ is Some!53) (_1!580 lt!5493)))))

(declare-fun maxPrefixZipperSequenceV3Mem!2 (LexerInterface!58 List!685 BalanceConc!258 BalanceConc!258 CacheUp!152 CacheDown!152 CacheFurthestNullable!100) tuple4!68)

(assert (=> d!5013 (= lt!5493 (maxPrefixZipperSequenceV3Mem!2 Lexer!56 lt!5180 input!525 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun lt!5501 () Unit!310)

(declare-fun lt!5470 () Unit!310)

(assert (=> d!5013 (= lt!5501 lt!5470)))

(declare-fun lt!5494 () List!684)

(declare-fun lt!5487 () List!684)

(assert (=> d!5013 (isSuffix!3 lt!5494 (++!57 lt!5487 lt!5494))))

(assert (=> d!5013 (= lt!5470 (lemmaConcatTwoListThenFSndIsSuffix!3 lt!5487 lt!5494))))

(assert (=> d!5013 (= lt!5494 (list!182 input!525))))

(assert (=> d!5013 (= lt!5487 (list!182 (BalanceConc!259 Empty!129)))))

(assert (=> d!5013 (= (lexTailRecV3Mem!10 Lexer!56 lt!5180 input!525 (BalanceConc!259 Empty!129) input!525 (BalanceConc!261 Empty!130) cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!5475)))

(declare-fun b!44099 () Bool)

(assert (=> b!44099 (= e!24293 (= (totalInput!1530 (_4!33 lt!5475)) input!525))))

(declare-fun b!44100 () Bool)

(assert (=> b!44100 (= e!24292 (tuple4!67 (tuple2!817 (BalanceConc!261 Empty!130) input!525) (_2!580 lt!5493) (_3!165 lt!5493) (_4!34 lt!5493)))))

(assert (= (and d!5013 c!16058) b!44093))

(assert (= (and d!5013 (not c!16058)) b!44100))

(assert (= (and b!44093 c!16059) b!44090))

(assert (= (and b!44093 (not c!16059)) b!44095))

(assert (= (and b!44093 c!16057) b!44094))

(assert (= (and b!44093 (not c!16057)) b!44091))

(assert (= (and d!5013 res!30559) b!44092))

(assert (= (and b!44092 res!30556) b!44096))

(assert (= (and b!44096 res!30555) b!44097))

(assert (= (and b!44097 res!30558) b!44098))

(assert (= (and b!44098 res!30557) b!44099))

(declare-fun m!18212 () Bool)

(assert (=> b!44094 m!18212))

(declare-fun m!18214 () Bool)

(assert (=> b!44094 m!18214))

(declare-fun m!18216 () Bool)

(assert (=> d!5013 m!18216))

(declare-fun m!18218 () Bool)

(assert (=> d!5013 m!18218))

(assert (=> d!5013 m!17483))

(assert (=> d!5013 m!17994))

(assert (=> d!5013 m!18216))

(declare-fun m!18220 () Bool)

(assert (=> d!5013 m!18220))

(declare-fun m!18222 () Bool)

(assert (=> d!5013 m!18222))

(assert (=> d!5013 m!17826))

(assert (=> d!5013 m!18024))

(declare-fun m!18224 () Bool)

(assert (=> d!5013 m!18224))

(declare-fun m!18226 () Bool)

(assert (=> b!44098 m!18226))

(declare-fun m!18228 () Bool)

(assert (=> b!44092 m!18228))

(assert (=> b!44092 m!17994))

(assert (=> b!44092 m!18040))

(declare-fun m!18230 () Bool)

(assert (=> b!44096 m!18230))

(declare-fun m!18232 () Bool)

(assert (=> b!44097 m!18232))

(declare-fun m!18234 () Bool)

(assert (=> b!44090 m!18234))

(declare-fun m!18236 () Bool)

(assert (=> b!44090 m!18236))

(declare-fun m!18238 () Bool)

(assert (=> b!44093 m!18238))

(declare-fun m!18240 () Bool)

(assert (=> b!44093 m!18240))

(declare-fun m!18242 () Bool)

(assert (=> b!44093 m!18242))

(declare-fun m!18244 () Bool)

(assert (=> b!44093 m!18244))

(declare-fun m!18246 () Bool)

(assert (=> b!44093 m!18246))

(declare-fun m!18248 () Bool)

(assert (=> b!44093 m!18248))

(assert (=> b!44093 m!18246))

(declare-fun m!18250 () Bool)

(assert (=> b!44093 m!18250))

(declare-fun m!18252 () Bool)

(assert (=> b!44093 m!18252))

(assert (=> b!44093 m!18246))

(declare-fun m!18254 () Bool)

(assert (=> b!44093 m!18254))

(declare-fun m!18256 () Bool)

(assert (=> b!44093 m!18256))

(assert (=> b!44093 m!18250))

(declare-fun m!18258 () Bool)

(assert (=> b!44093 m!18258))

(assert (=> b!44093 m!18244))

(declare-fun m!18260 () Bool)

(assert (=> b!44093 m!18260))

(declare-fun m!18262 () Bool)

(assert (=> b!44093 m!18262))

(declare-fun m!18264 () Bool)

(assert (=> b!44093 m!18264))

(declare-fun m!18266 () Bool)

(assert (=> b!44093 m!18266))

(declare-fun m!18268 () Bool)

(assert (=> b!44093 m!18268))

(declare-fun m!18270 () Bool)

(assert (=> b!44093 m!18270))

(assert (=> b!44093 m!18238))

(declare-fun m!18272 () Bool)

(assert (=> b!44093 m!18272))

(declare-fun m!18274 () Bool)

(assert (=> b!44093 m!18274))

(assert (=> b!44093 m!18266))

(declare-fun m!18276 () Bool)

(assert (=> b!44093 m!18276))

(assert (=> b!44093 m!18016))

(declare-fun m!18278 () Bool)

(assert (=> b!44093 m!18278))

(assert (=> b!44093 m!18270))

(declare-fun m!18280 () Bool)

(assert (=> b!44093 m!18280))

(declare-fun m!18282 () Bool)

(assert (=> b!44093 m!18282))

(declare-fun m!18284 () Bool)

(assert (=> b!44093 m!18284))

(declare-fun m!18286 () Bool)

(assert (=> b!44093 m!18286))

(assert (=> b!44093 m!17826))

(assert (=> b!44093 m!18248))

(declare-fun m!18288 () Bool)

(assert (=> b!44093 m!18288))

(assert (=> b!44093 m!17852))

(assert (=> b!44093 m!17994))

(declare-fun m!18290 () Bool)

(assert (=> b!44093 m!18290))

(assert (=> b!44093 m!18254))

(assert (=> b!44093 m!18290))

(declare-fun m!18292 () Bool)

(assert (=> b!44093 m!18292))

(assert (=> b!44093 m!18252))

(declare-fun m!18294 () Bool)

(assert (=> b!44093 m!18294))

(assert (=> b!44093 m!18278))

(assert (=> b!44093 m!17826))

(assert (=> b!44093 m!18266))

(assert (=> d!4809 d!5013))

(assert (=> d!4809 d!4819))

(declare-fun d!5015 () Bool)

(assert (=> d!5015 (= (list!181 (_1!571 (lex!33 Lexer!56 lt!5180 input!525))) (list!184 (c!15987 (_1!571 (lex!33 Lexer!56 lt!5180 input!525)))))))

(declare-fun bs!5974 () Bool)

(assert (= bs!5974 d!5015))

(declare-fun m!18296 () Bool)

(assert (=> bs!5974 m!18296))

(assert (=> d!4809 d!5015))

(declare-fun bs!5975 () Bool)

(declare-fun d!5017 () Bool)

(assert (= bs!5975 (and d!5017 d!4967)))

(declare-fun lambda!791 () Int)

(assert (=> bs!5975 (= lambda!791 lambda!781)))

(declare-fun bs!5976 () Bool)

(assert (= bs!5976 (and d!5017 d!4993)))

(assert (=> bs!5976 (= lambda!791 lambda!787)))

(declare-fun bs!5977 () Bool)

(assert (= bs!5977 (and d!5017 d!4985)))

(assert (=> bs!5977 (= lambda!791 lambda!785)))

(declare-fun bs!5978 () Bool)

(assert (= bs!5978 (and d!5017 d!4873)))

(assert (=> bs!5978 (= lambda!791 lambda!749)))

(declare-fun bs!5979 () Bool)

(assert (= bs!5979 (and d!5017 d!4883)))

(assert (=> bs!5979 (= lambda!791 lambda!752)))

(declare-fun bs!5980 () Bool)

(assert (= bs!5980 (and d!5017 d!4875)))

(assert (=> bs!5980 (= lambda!791 lambda!750)))

(declare-fun bs!5981 () Bool)

(assert (= bs!5981 (and d!5017 d!4983)))

(assert (=> bs!5981 (= lambda!791 lambda!784)))

(declare-fun bs!5982 () Bool)

(assert (= bs!5982 (and d!5017 d!4931)))

(assert (=> bs!5982 (= lambda!791 lambda!768)))

(declare-fun bs!5983 () Bool)

(assert (= bs!5983 (and d!5017 d!4923)))

(assert (=> bs!5983 (= lambda!791 lambda!765)))

(declare-fun bs!5984 () Bool)

(assert (= bs!5984 (and d!5017 d!4997)))

(assert (=> bs!5984 (= lambda!791 lambda!789)))

(declare-fun bs!5985 () Bool)

(assert (= bs!5985 (and d!5017 d!4999)))

(assert (=> bs!5985 (= lambda!791 lambda!790)))

(declare-fun bs!5986 () Bool)

(assert (= bs!5986 (and d!5017 d!4929)))

(assert (=> bs!5986 (= lambda!791 lambda!767)))

(declare-fun bs!5987 () Bool)

(assert (= bs!5987 (and d!5017 d!4891)))

(assert (=> bs!5987 (= lambda!791 lambda!756)))

(declare-fun bs!5988 () Bool)

(assert (= bs!5988 (and d!5017 d!4959)))

(assert (=> bs!5988 (= lambda!791 lambda!777)))

(declare-fun bs!5989 () Bool)

(assert (= bs!5989 (and d!5017 d!4995)))

(assert (=> bs!5989 (= lambda!791 lambda!788)))

(declare-fun bs!5990 () Bool)

(assert (= bs!5990 (and d!5017 d!4945)))

(assert (=> bs!5990 (= lambda!791 lambda!776)))

(declare-fun bs!5991 () Bool)

(assert (= bs!5991 (and d!5017 d!4881)))

(assert (=> bs!5991 (= lambda!791 lambda!751)))

(declare-fun bs!5992 () Bool)

(assert (= bs!5992 (and d!5017 d!4991)))

(assert (=> bs!5992 (= lambda!791 lambda!786)))

(declare-fun bs!5993 () Bool)

(assert (= bs!5993 (and d!5017 d!4977)))

(assert (=> bs!5993 (= lambda!791 lambda!783)))

(declare-fun bs!5994 () Bool)

(assert (= bs!5994 (and d!5017 d!4927)))

(assert (=> bs!5994 (= lambda!791 lambda!766)))

(declare-fun bs!5995 () Bool)

(assert (= bs!5995 (and d!5017 d!4943)))

(assert (=> bs!5995 (= lambda!791 lambda!775)))

(declare-fun bs!5996 () Bool)

(assert (= bs!5996 (and d!5017 d!4975)))

(assert (=> bs!5996 (= lambda!791 lambda!782)))

(assert (=> d!5017 (= (inv!976 (_1!574 (_1!575 (h!6084 mapValue!873)))) (forall!71 (exprs!587 (_1!574 (_1!575 (h!6084 mapValue!873)))) lambda!791))))

(declare-fun bs!5997 () Bool)

(assert (= bs!5997 d!5017))

(declare-fun m!18298 () Bool)

(assert (=> bs!5997 m!18298))

(assert (=> b!43843 d!5017))

(declare-fun bs!5998 () Bool)

(declare-fun d!5019 () Bool)

(assert (= bs!5998 (and d!5019 d!4967)))

(declare-fun lambda!792 () Int)

(assert (=> bs!5998 (= lambda!792 lambda!781)))

(declare-fun bs!5999 () Bool)

(assert (= bs!5999 (and d!5019 d!4993)))

(assert (=> bs!5999 (= lambda!792 lambda!787)))

(declare-fun bs!6000 () Bool)

(assert (= bs!6000 (and d!5019 d!4985)))

(assert (=> bs!6000 (= lambda!792 lambda!785)))

(declare-fun bs!6001 () Bool)

(assert (= bs!6001 (and d!5019 d!4873)))

(assert (=> bs!6001 (= lambda!792 lambda!749)))

(declare-fun bs!6002 () Bool)

(assert (= bs!6002 (and d!5019 d!4883)))

(assert (=> bs!6002 (= lambda!792 lambda!752)))

(declare-fun bs!6003 () Bool)

(assert (= bs!6003 (and d!5019 d!4875)))

(assert (=> bs!6003 (= lambda!792 lambda!750)))

(declare-fun bs!6004 () Bool)

(assert (= bs!6004 (and d!5019 d!4983)))

(assert (=> bs!6004 (= lambda!792 lambda!784)))

(declare-fun bs!6005 () Bool)

(assert (= bs!6005 (and d!5019 d!4931)))

(assert (=> bs!6005 (= lambda!792 lambda!768)))

(declare-fun bs!6006 () Bool)

(assert (= bs!6006 (and d!5019 d!4997)))

(assert (=> bs!6006 (= lambda!792 lambda!789)))

(declare-fun bs!6007 () Bool)

(assert (= bs!6007 (and d!5019 d!4999)))

(assert (=> bs!6007 (= lambda!792 lambda!790)))

(declare-fun bs!6008 () Bool)

(assert (= bs!6008 (and d!5019 d!4929)))

(assert (=> bs!6008 (= lambda!792 lambda!767)))

(declare-fun bs!6009 () Bool)

(assert (= bs!6009 (and d!5019 d!4891)))

(assert (=> bs!6009 (= lambda!792 lambda!756)))

(declare-fun bs!6010 () Bool)

(assert (= bs!6010 (and d!5019 d!4959)))

(assert (=> bs!6010 (= lambda!792 lambda!777)))

(declare-fun bs!6011 () Bool)

(assert (= bs!6011 (and d!5019 d!4995)))

(assert (=> bs!6011 (= lambda!792 lambda!788)))

(declare-fun bs!6012 () Bool)

(assert (= bs!6012 (and d!5019 d!4945)))

(assert (=> bs!6012 (= lambda!792 lambda!776)))

(declare-fun bs!6013 () Bool)

(assert (= bs!6013 (and d!5019 d!4881)))

(assert (=> bs!6013 (= lambda!792 lambda!751)))

(declare-fun bs!6014 () Bool)

(assert (= bs!6014 (and d!5019 d!4991)))

(assert (=> bs!6014 (= lambda!792 lambda!786)))

(declare-fun bs!6015 () Bool)

(assert (= bs!6015 (and d!5019 d!4977)))

(assert (=> bs!6015 (= lambda!792 lambda!783)))

(declare-fun bs!6016 () Bool)

(assert (= bs!6016 (and d!5019 d!4927)))

(assert (=> bs!6016 (= lambda!792 lambda!766)))

(declare-fun bs!6017 () Bool)

(assert (= bs!6017 (and d!5019 d!4943)))

(assert (=> bs!6017 (= lambda!792 lambda!775)))

(declare-fun bs!6018 () Bool)

(assert (= bs!6018 (and d!5019 d!4975)))

(assert (=> bs!6018 (= lambda!792 lambda!782)))

(declare-fun bs!6019 () Bool)

(assert (= bs!6019 (and d!5019 d!4923)))

(assert (=> bs!6019 (= lambda!792 lambda!765)))

(declare-fun bs!6020 () Bool)

(assert (= bs!6020 (and d!5019 d!5017)))

(assert (=> bs!6020 (= lambda!792 lambda!791)))

(assert (=> d!5019 (= (inv!976 (_2!572 (_1!573 (h!6083 mapValue!867)))) (forall!71 (exprs!587 (_2!572 (_1!573 (h!6083 mapValue!867)))) lambda!792))))

(declare-fun bs!6021 () Bool)

(assert (= bs!6021 d!5019))

(declare-fun m!18300 () Bool)

(assert (=> bs!6021 m!18300))

(assert (=> b!43807 d!5019))

(declare-fun bs!6022 () Bool)

(declare-fun d!5021 () Bool)

(assert (= bs!6022 (and d!5021 d!4967)))

(declare-fun lambda!793 () Int)

(assert (=> bs!6022 (= lambda!793 lambda!781)))

(declare-fun bs!6023 () Bool)

(assert (= bs!6023 (and d!5021 d!4993)))

(assert (=> bs!6023 (= lambda!793 lambda!787)))

(declare-fun bs!6024 () Bool)

(assert (= bs!6024 (and d!5021 d!4873)))

(assert (=> bs!6024 (= lambda!793 lambda!749)))

(declare-fun bs!6025 () Bool)

(assert (= bs!6025 (and d!5021 d!4883)))

(assert (=> bs!6025 (= lambda!793 lambda!752)))

(declare-fun bs!6026 () Bool)

(assert (= bs!6026 (and d!5021 d!4875)))

(assert (=> bs!6026 (= lambda!793 lambda!750)))

(declare-fun bs!6027 () Bool)

(assert (= bs!6027 (and d!5021 d!4983)))

(assert (=> bs!6027 (= lambda!793 lambda!784)))

(declare-fun bs!6028 () Bool)

(assert (= bs!6028 (and d!5021 d!4931)))

(assert (=> bs!6028 (= lambda!793 lambda!768)))

(declare-fun bs!6029 () Bool)

(assert (= bs!6029 (and d!5021 d!4997)))

(assert (=> bs!6029 (= lambda!793 lambda!789)))

(declare-fun bs!6030 () Bool)

(assert (= bs!6030 (and d!5021 d!5019)))

(assert (=> bs!6030 (= lambda!793 lambda!792)))

(declare-fun bs!6031 () Bool)

(assert (= bs!6031 (and d!5021 d!4985)))

(assert (=> bs!6031 (= lambda!793 lambda!785)))

(declare-fun bs!6032 () Bool)

(assert (= bs!6032 (and d!5021 d!4999)))

(assert (=> bs!6032 (= lambda!793 lambda!790)))

(declare-fun bs!6033 () Bool)

(assert (= bs!6033 (and d!5021 d!4929)))

(assert (=> bs!6033 (= lambda!793 lambda!767)))

(declare-fun bs!6034 () Bool)

(assert (= bs!6034 (and d!5021 d!4891)))

(assert (=> bs!6034 (= lambda!793 lambda!756)))

(declare-fun bs!6035 () Bool)

(assert (= bs!6035 (and d!5021 d!4959)))

(assert (=> bs!6035 (= lambda!793 lambda!777)))

(declare-fun bs!6036 () Bool)

(assert (= bs!6036 (and d!5021 d!4995)))

(assert (=> bs!6036 (= lambda!793 lambda!788)))

(declare-fun bs!6037 () Bool)

(assert (= bs!6037 (and d!5021 d!4945)))

(assert (=> bs!6037 (= lambda!793 lambda!776)))

(declare-fun bs!6038 () Bool)

(assert (= bs!6038 (and d!5021 d!4881)))

(assert (=> bs!6038 (= lambda!793 lambda!751)))

(declare-fun bs!6039 () Bool)

(assert (= bs!6039 (and d!5021 d!4991)))

(assert (=> bs!6039 (= lambda!793 lambda!786)))

(declare-fun bs!6040 () Bool)

(assert (= bs!6040 (and d!5021 d!4977)))

(assert (=> bs!6040 (= lambda!793 lambda!783)))

(declare-fun bs!6041 () Bool)

(assert (= bs!6041 (and d!5021 d!4927)))

(assert (=> bs!6041 (= lambda!793 lambda!766)))

(declare-fun bs!6042 () Bool)

(assert (= bs!6042 (and d!5021 d!4943)))

(assert (=> bs!6042 (= lambda!793 lambda!775)))

(declare-fun bs!6043 () Bool)

(assert (= bs!6043 (and d!5021 d!4975)))

(assert (=> bs!6043 (= lambda!793 lambda!782)))

(declare-fun bs!6044 () Bool)

(assert (= bs!6044 (and d!5021 d!4923)))

(assert (=> bs!6044 (= lambda!793 lambda!765)))

(declare-fun bs!6045 () Bool)

(assert (= bs!6045 (and d!5021 d!5017)))

(assert (=> bs!6045 (= lambda!793 lambda!791)))

(assert (=> d!5021 (= (inv!976 setElem!970) (forall!71 (exprs!587 setElem!970) lambda!793))))

(declare-fun bs!6046 () Bool)

(assert (= bs!6046 d!5021))

(declare-fun m!18302 () Bool)

(assert (=> bs!6046 m!18302))

(assert (=> setNonEmpty!970 d!5021))

(declare-fun bs!6047 () Bool)

(declare-fun d!5023 () Bool)

(assert (= bs!6047 (and d!5023 d!4967)))

(declare-fun lambda!794 () Int)

(assert (=> bs!6047 (= lambda!794 lambda!781)))

(declare-fun bs!6048 () Bool)

(assert (= bs!6048 (and d!5023 d!4993)))

(assert (=> bs!6048 (= lambda!794 lambda!787)))

(declare-fun bs!6049 () Bool)

(assert (= bs!6049 (and d!5023 d!4873)))

(assert (=> bs!6049 (= lambda!794 lambda!749)))

(declare-fun bs!6050 () Bool)

(assert (= bs!6050 (and d!5023 d!5021)))

(assert (=> bs!6050 (= lambda!794 lambda!793)))

(declare-fun bs!6051 () Bool)

(assert (= bs!6051 (and d!5023 d!4883)))

(assert (=> bs!6051 (= lambda!794 lambda!752)))

(declare-fun bs!6052 () Bool)

(assert (= bs!6052 (and d!5023 d!4875)))

(assert (=> bs!6052 (= lambda!794 lambda!750)))

(declare-fun bs!6053 () Bool)

(assert (= bs!6053 (and d!5023 d!4983)))

(assert (=> bs!6053 (= lambda!794 lambda!784)))

(declare-fun bs!6054 () Bool)

(assert (= bs!6054 (and d!5023 d!4931)))

(assert (=> bs!6054 (= lambda!794 lambda!768)))

(declare-fun bs!6055 () Bool)

(assert (= bs!6055 (and d!5023 d!4997)))

(assert (=> bs!6055 (= lambda!794 lambda!789)))

(declare-fun bs!6056 () Bool)

(assert (= bs!6056 (and d!5023 d!5019)))

(assert (=> bs!6056 (= lambda!794 lambda!792)))

(declare-fun bs!6057 () Bool)

(assert (= bs!6057 (and d!5023 d!4985)))

(assert (=> bs!6057 (= lambda!794 lambda!785)))

(declare-fun bs!6058 () Bool)

(assert (= bs!6058 (and d!5023 d!4999)))

(assert (=> bs!6058 (= lambda!794 lambda!790)))

(declare-fun bs!6059 () Bool)

(assert (= bs!6059 (and d!5023 d!4929)))

(assert (=> bs!6059 (= lambda!794 lambda!767)))

(declare-fun bs!6060 () Bool)

(assert (= bs!6060 (and d!5023 d!4891)))

(assert (=> bs!6060 (= lambda!794 lambda!756)))

(declare-fun bs!6061 () Bool)

(assert (= bs!6061 (and d!5023 d!4959)))

(assert (=> bs!6061 (= lambda!794 lambda!777)))

(declare-fun bs!6062 () Bool)

(assert (= bs!6062 (and d!5023 d!4995)))

(assert (=> bs!6062 (= lambda!794 lambda!788)))

(declare-fun bs!6063 () Bool)

(assert (= bs!6063 (and d!5023 d!4945)))

(assert (=> bs!6063 (= lambda!794 lambda!776)))

(declare-fun bs!6064 () Bool)

(assert (= bs!6064 (and d!5023 d!4881)))

(assert (=> bs!6064 (= lambda!794 lambda!751)))

(declare-fun bs!6065 () Bool)

(assert (= bs!6065 (and d!5023 d!4991)))

(assert (=> bs!6065 (= lambda!794 lambda!786)))

(declare-fun bs!6066 () Bool)

(assert (= bs!6066 (and d!5023 d!4977)))

(assert (=> bs!6066 (= lambda!794 lambda!783)))

(declare-fun bs!6067 () Bool)

(assert (= bs!6067 (and d!5023 d!4927)))

(assert (=> bs!6067 (= lambda!794 lambda!766)))

(declare-fun bs!6068 () Bool)

(assert (= bs!6068 (and d!5023 d!4943)))

(assert (=> bs!6068 (= lambda!794 lambda!775)))

(declare-fun bs!6069 () Bool)

(assert (= bs!6069 (and d!5023 d!4975)))

(assert (=> bs!6069 (= lambda!794 lambda!782)))

(declare-fun bs!6070 () Bool)

(assert (= bs!6070 (and d!5023 d!4923)))

(assert (=> bs!6070 (= lambda!794 lambda!765)))

(declare-fun bs!6071 () Bool)

(assert (= bs!6071 (and d!5023 d!5017)))

(assert (=> bs!6071 (= lambda!794 lambda!791)))

(assert (=> d!5023 (= (inv!976 (_1!574 (_1!575 (h!6084 mapDefault!864)))) (forall!71 (exprs!587 (_1!574 (_1!575 (h!6084 mapDefault!864)))) lambda!794))))

(declare-fun bs!6072 () Bool)

(assert (= bs!6072 d!5023))

(declare-fun m!18304 () Bool)

(assert (=> bs!6072 m!18304))

(assert (=> b!43814 d!5023))

(declare-fun d!5025 () Bool)

(assert (=> d!5025 (= (list!181 (_1!571 lt!5203)) (list!184 (c!15987 (_1!571 lt!5203))))))

(declare-fun bs!6073 () Bool)

(assert (= bs!6073 d!5025))

(declare-fun m!18306 () Bool)

(assert (=> bs!6073 m!18306))

(assert (=> b!43742 d!5025))

(assert (=> b!43742 d!4949))

(assert (=> b!43742 d!4837))

(assert (=> b!43746 d!4889))

(declare-fun d!5027 () Bool)

(declare-fun c!16060 () Bool)

(assert (=> d!5027 (= c!16060 ((_ is Node!129) (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(declare-fun e!24296 () Bool)

(assert (=> d!5027 (= (inv!970 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) e!24296)))

(declare-fun b!44101 () Bool)

(assert (=> b!44101 (= e!24296 (inv!974 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(declare-fun b!44102 () Bool)

(declare-fun e!24297 () Bool)

(assert (=> b!44102 (= e!24296 e!24297)))

(declare-fun res!30560 () Bool)

(assert (=> b!44102 (= res!30560 (not ((_ is Leaf!322) (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))))

(assert (=> b!44102 (=> res!30560 e!24297)))

(declare-fun b!44103 () Bool)

(assert (=> b!44103 (= e!24297 (inv!975 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(assert (= (and d!5027 c!16060) b!44101))

(assert (= (and d!5027 (not c!16060)) b!44102))

(assert (= (and b!44102 (not res!30560)) b!44103))

(declare-fun m!18308 () Bool)

(assert (=> b!44101 m!18308))

(declare-fun m!18310 () Bool)

(assert (=> b!44103 m!18310))

(assert (=> b!43826 d!5027))

(declare-fun d!5029 () Bool)

(declare-fun c!16061 () Bool)

(assert (=> d!5029 (= c!16061 ((_ is Node!129) (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(declare-fun e!24298 () Bool)

(assert (=> d!5029 (= (inv!970 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) e!24298)))

(declare-fun b!44104 () Bool)

(assert (=> b!44104 (= e!24298 (inv!974 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(declare-fun b!44105 () Bool)

(declare-fun e!24299 () Bool)

(assert (=> b!44105 (= e!24298 e!24299)))

(declare-fun res!30561 () Bool)

(assert (=> b!44105 (= res!30561 (not ((_ is Leaf!322) (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))))

(assert (=> b!44105 (=> res!30561 e!24299)))

(declare-fun b!44106 () Bool)

(assert (=> b!44106 (= e!24299 (inv!975 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))

(assert (= (and d!5029 c!16061) b!44104))

(assert (= (and d!5029 (not c!16061)) b!44105))

(assert (= (and b!44105 (not res!30561)) b!44106))

(declare-fun m!18312 () Bool)

(assert (=> b!44104 m!18312))

(declare-fun m!18314 () Bool)

(assert (=> b!44106 m!18314))

(assert (=> b!43826 d!5029))

(declare-fun d!5031 () Bool)

(declare-fun res!30562 () Bool)

(declare-fun e!24300 () Bool)

(assert (=> d!5031 (=> res!30562 e!24300)))

(assert (=> d!5031 (= res!30562 ((_ is Nil!686) (t!16389 lt!5193)))))

(assert (=> d!5031 (= (forall!70 (t!16389 lt!5193) lambda!746) e!24300)))

(declare-fun b!44107 () Bool)

(declare-fun e!24301 () Bool)

(assert (=> b!44107 (= e!24300 e!24301)))

(declare-fun res!30563 () Bool)

(assert (=> b!44107 (=> (not res!30563) (not e!24301))))

(assert (=> b!44107 (= res!30563 (dynLambda!85 lambda!746 (h!6082 (t!16389 lt!5193))))))

(declare-fun b!44108 () Bool)

(assert (=> b!44108 (= e!24301 (forall!70 (t!16389 (t!16389 lt!5193)) lambda!746))))

(assert (= (and d!5031 (not res!30562)) b!44107))

(assert (= (and b!44107 res!30563) b!44108))

(declare-fun b_lambda!245 () Bool)

(assert (=> (not b_lambda!245) (not b!44107)))

(declare-fun m!18316 () Bool)

(assert (=> b!44107 m!18316))

(declare-fun m!18318 () Bool)

(assert (=> b!44108 m!18318))

(assert (=> b!43784 d!5031))

(declare-fun bs!6074 () Bool)

(declare-fun d!5033 () Bool)

(assert (= bs!6074 (and d!5033 d!5023)))

(declare-fun lambda!795 () Int)

(assert (=> bs!6074 (= lambda!795 lambda!794)))

(declare-fun bs!6075 () Bool)

(assert (= bs!6075 (and d!5033 d!4967)))

(assert (=> bs!6075 (= lambda!795 lambda!781)))

(declare-fun bs!6076 () Bool)

(assert (= bs!6076 (and d!5033 d!4993)))

(assert (=> bs!6076 (= lambda!795 lambda!787)))

(declare-fun bs!6077 () Bool)

(assert (= bs!6077 (and d!5033 d!4873)))

(assert (=> bs!6077 (= lambda!795 lambda!749)))

(declare-fun bs!6078 () Bool)

(assert (= bs!6078 (and d!5033 d!5021)))

(assert (=> bs!6078 (= lambda!795 lambda!793)))

(declare-fun bs!6079 () Bool)

(assert (= bs!6079 (and d!5033 d!4883)))

(assert (=> bs!6079 (= lambda!795 lambda!752)))

(declare-fun bs!6080 () Bool)

(assert (= bs!6080 (and d!5033 d!4875)))

(assert (=> bs!6080 (= lambda!795 lambda!750)))

(declare-fun bs!6081 () Bool)

(assert (= bs!6081 (and d!5033 d!4983)))

(assert (=> bs!6081 (= lambda!795 lambda!784)))

(declare-fun bs!6082 () Bool)

(assert (= bs!6082 (and d!5033 d!4931)))

(assert (=> bs!6082 (= lambda!795 lambda!768)))

(declare-fun bs!6083 () Bool)

(assert (= bs!6083 (and d!5033 d!4997)))

(assert (=> bs!6083 (= lambda!795 lambda!789)))

(declare-fun bs!6084 () Bool)

(assert (= bs!6084 (and d!5033 d!5019)))

(assert (=> bs!6084 (= lambda!795 lambda!792)))

(declare-fun bs!6085 () Bool)

(assert (= bs!6085 (and d!5033 d!4985)))

(assert (=> bs!6085 (= lambda!795 lambda!785)))

(declare-fun bs!6086 () Bool)

(assert (= bs!6086 (and d!5033 d!4999)))

(assert (=> bs!6086 (= lambda!795 lambda!790)))

(declare-fun bs!6087 () Bool)

(assert (= bs!6087 (and d!5033 d!4929)))

(assert (=> bs!6087 (= lambda!795 lambda!767)))

(declare-fun bs!6088 () Bool)

(assert (= bs!6088 (and d!5033 d!4891)))

(assert (=> bs!6088 (= lambda!795 lambda!756)))

(declare-fun bs!6089 () Bool)

(assert (= bs!6089 (and d!5033 d!4959)))

(assert (=> bs!6089 (= lambda!795 lambda!777)))

(declare-fun bs!6090 () Bool)

(assert (= bs!6090 (and d!5033 d!4995)))

(assert (=> bs!6090 (= lambda!795 lambda!788)))

(declare-fun bs!6091 () Bool)

(assert (= bs!6091 (and d!5033 d!4945)))

(assert (=> bs!6091 (= lambda!795 lambda!776)))

(declare-fun bs!6092 () Bool)

(assert (= bs!6092 (and d!5033 d!4881)))

(assert (=> bs!6092 (= lambda!795 lambda!751)))

(declare-fun bs!6093 () Bool)

(assert (= bs!6093 (and d!5033 d!4991)))

(assert (=> bs!6093 (= lambda!795 lambda!786)))

(declare-fun bs!6094 () Bool)

(assert (= bs!6094 (and d!5033 d!4977)))

(assert (=> bs!6094 (= lambda!795 lambda!783)))

(declare-fun bs!6095 () Bool)

(assert (= bs!6095 (and d!5033 d!4927)))

(assert (=> bs!6095 (= lambda!795 lambda!766)))

(declare-fun bs!6096 () Bool)

(assert (= bs!6096 (and d!5033 d!4943)))

(assert (=> bs!6096 (= lambda!795 lambda!775)))

(declare-fun bs!6097 () Bool)

(assert (= bs!6097 (and d!5033 d!4975)))

(assert (=> bs!6097 (= lambda!795 lambda!782)))

(declare-fun bs!6098 () Bool)

(assert (= bs!6098 (and d!5033 d!4923)))

(assert (=> bs!6098 (= lambda!795 lambda!765)))

(declare-fun bs!6099 () Bool)

(assert (= bs!6099 (and d!5033 d!5017)))

(assert (=> bs!6099 (= lambda!795 lambda!791)))

(assert (=> d!5033 (= (inv!976 setElem!967) (forall!71 (exprs!587 setElem!967) lambda!795))))

(declare-fun bs!6100 () Bool)

(assert (= bs!6100 d!5033))

(declare-fun m!18320 () Bool)

(assert (=> bs!6100 m!18320))

(assert (=> setNonEmpty!967 d!5033))

(declare-fun bs!6101 () Bool)

(declare-fun d!5035 () Bool)

(assert (= bs!6101 (and d!5035 d!5023)))

(declare-fun lambda!796 () Int)

(assert (=> bs!6101 (= lambda!796 lambda!794)))

(declare-fun bs!6102 () Bool)

(assert (= bs!6102 (and d!5035 d!4967)))

(assert (=> bs!6102 (= lambda!796 lambda!781)))

(declare-fun bs!6103 () Bool)

(assert (= bs!6103 (and d!5035 d!4993)))

(assert (=> bs!6103 (= lambda!796 lambda!787)))

(declare-fun bs!6104 () Bool)

(assert (= bs!6104 (and d!5035 d!4873)))

(assert (=> bs!6104 (= lambda!796 lambda!749)))

(declare-fun bs!6105 () Bool)

(assert (= bs!6105 (and d!5035 d!5021)))

(assert (=> bs!6105 (= lambda!796 lambda!793)))

(declare-fun bs!6106 () Bool)

(assert (= bs!6106 (and d!5035 d!4883)))

(assert (=> bs!6106 (= lambda!796 lambda!752)))

(declare-fun bs!6107 () Bool)

(assert (= bs!6107 (and d!5035 d!4875)))

(assert (=> bs!6107 (= lambda!796 lambda!750)))

(declare-fun bs!6108 () Bool)

(assert (= bs!6108 (and d!5035 d!4983)))

(assert (=> bs!6108 (= lambda!796 lambda!784)))

(declare-fun bs!6109 () Bool)

(assert (= bs!6109 (and d!5035 d!4931)))

(assert (=> bs!6109 (= lambda!796 lambda!768)))

(declare-fun bs!6110 () Bool)

(assert (= bs!6110 (and d!5035 d!4997)))

(assert (=> bs!6110 (= lambda!796 lambda!789)))

(declare-fun bs!6111 () Bool)

(assert (= bs!6111 (and d!5035 d!5033)))

(assert (=> bs!6111 (= lambda!796 lambda!795)))

(declare-fun bs!6112 () Bool)

(assert (= bs!6112 (and d!5035 d!5019)))

(assert (=> bs!6112 (= lambda!796 lambda!792)))

(declare-fun bs!6113 () Bool)

(assert (= bs!6113 (and d!5035 d!4985)))

(assert (=> bs!6113 (= lambda!796 lambda!785)))

(declare-fun bs!6114 () Bool)

(assert (= bs!6114 (and d!5035 d!4999)))

(assert (=> bs!6114 (= lambda!796 lambda!790)))

(declare-fun bs!6115 () Bool)

(assert (= bs!6115 (and d!5035 d!4929)))

(assert (=> bs!6115 (= lambda!796 lambda!767)))

(declare-fun bs!6116 () Bool)

(assert (= bs!6116 (and d!5035 d!4891)))

(assert (=> bs!6116 (= lambda!796 lambda!756)))

(declare-fun bs!6117 () Bool)

(assert (= bs!6117 (and d!5035 d!4959)))

(assert (=> bs!6117 (= lambda!796 lambda!777)))

(declare-fun bs!6118 () Bool)

(assert (= bs!6118 (and d!5035 d!4995)))

(assert (=> bs!6118 (= lambda!796 lambda!788)))

(declare-fun bs!6119 () Bool)

(assert (= bs!6119 (and d!5035 d!4945)))

(assert (=> bs!6119 (= lambda!796 lambda!776)))

(declare-fun bs!6120 () Bool)

(assert (= bs!6120 (and d!5035 d!4881)))

(assert (=> bs!6120 (= lambda!796 lambda!751)))

(declare-fun bs!6121 () Bool)

(assert (= bs!6121 (and d!5035 d!4991)))

(assert (=> bs!6121 (= lambda!796 lambda!786)))

(declare-fun bs!6122 () Bool)

(assert (= bs!6122 (and d!5035 d!4977)))

(assert (=> bs!6122 (= lambda!796 lambda!783)))

(declare-fun bs!6123 () Bool)

(assert (= bs!6123 (and d!5035 d!4927)))

(assert (=> bs!6123 (= lambda!796 lambda!766)))

(declare-fun bs!6124 () Bool)

(assert (= bs!6124 (and d!5035 d!4943)))

(assert (=> bs!6124 (= lambda!796 lambda!775)))

(declare-fun bs!6125 () Bool)

(assert (= bs!6125 (and d!5035 d!4975)))

(assert (=> bs!6125 (= lambda!796 lambda!782)))

(declare-fun bs!6126 () Bool)

(assert (= bs!6126 (and d!5035 d!4923)))

(assert (=> bs!6126 (= lambda!796 lambda!765)))

(declare-fun bs!6127 () Bool)

(assert (= bs!6127 (and d!5035 d!5017)))

(assert (=> bs!6127 (= lambda!796 lambda!791)))

(assert (=> d!5035 (= (inv!976 setElem!978) (forall!71 (exprs!587 setElem!978) lambda!796))))

(declare-fun bs!6128 () Bool)

(assert (= bs!6128 d!5035))

(declare-fun m!18322 () Bool)

(assert (=> bs!6128 m!18322))

(assert (=> setNonEmpty!979 d!5035))

(declare-fun bs!6129 () Bool)

(declare-fun d!5037 () Bool)

(assert (= bs!6129 (and d!5037 d!5023)))

(declare-fun lambda!797 () Int)

(assert (=> bs!6129 (= lambda!797 lambda!794)))

(declare-fun bs!6130 () Bool)

(assert (= bs!6130 (and d!5037 d!4967)))

(assert (=> bs!6130 (= lambda!797 lambda!781)))

(declare-fun bs!6131 () Bool)

(assert (= bs!6131 (and d!5037 d!4873)))

(assert (=> bs!6131 (= lambda!797 lambda!749)))

(declare-fun bs!6132 () Bool)

(assert (= bs!6132 (and d!5037 d!5021)))

(assert (=> bs!6132 (= lambda!797 lambda!793)))

(declare-fun bs!6133 () Bool)

(assert (= bs!6133 (and d!5037 d!4883)))

(assert (=> bs!6133 (= lambda!797 lambda!752)))

(declare-fun bs!6134 () Bool)

(assert (= bs!6134 (and d!5037 d!4875)))

(assert (=> bs!6134 (= lambda!797 lambda!750)))

(declare-fun bs!6135 () Bool)

(assert (= bs!6135 (and d!5037 d!4983)))

(assert (=> bs!6135 (= lambda!797 lambda!784)))

(declare-fun bs!6136 () Bool)

(assert (= bs!6136 (and d!5037 d!4931)))

(assert (=> bs!6136 (= lambda!797 lambda!768)))

(declare-fun bs!6137 () Bool)

(assert (= bs!6137 (and d!5037 d!4997)))

(assert (=> bs!6137 (= lambda!797 lambda!789)))

(declare-fun bs!6138 () Bool)

(assert (= bs!6138 (and d!5037 d!5033)))

(assert (=> bs!6138 (= lambda!797 lambda!795)))

(declare-fun bs!6139 () Bool)

(assert (= bs!6139 (and d!5037 d!4993)))

(assert (=> bs!6139 (= lambda!797 lambda!787)))

(declare-fun bs!6140 () Bool)

(assert (= bs!6140 (and d!5037 d!5035)))

(assert (=> bs!6140 (= lambda!797 lambda!796)))

(declare-fun bs!6141 () Bool)

(assert (= bs!6141 (and d!5037 d!5019)))

(assert (=> bs!6141 (= lambda!797 lambda!792)))

(declare-fun bs!6142 () Bool)

(assert (= bs!6142 (and d!5037 d!4985)))

(assert (=> bs!6142 (= lambda!797 lambda!785)))

(declare-fun bs!6143 () Bool)

(assert (= bs!6143 (and d!5037 d!4999)))

(assert (=> bs!6143 (= lambda!797 lambda!790)))

(declare-fun bs!6144 () Bool)

(assert (= bs!6144 (and d!5037 d!4929)))

(assert (=> bs!6144 (= lambda!797 lambda!767)))

(declare-fun bs!6145 () Bool)

(assert (= bs!6145 (and d!5037 d!4891)))

(assert (=> bs!6145 (= lambda!797 lambda!756)))

(declare-fun bs!6146 () Bool)

(assert (= bs!6146 (and d!5037 d!4959)))

(assert (=> bs!6146 (= lambda!797 lambda!777)))

(declare-fun bs!6147 () Bool)

(assert (= bs!6147 (and d!5037 d!4995)))

(assert (=> bs!6147 (= lambda!797 lambda!788)))

(declare-fun bs!6148 () Bool)

(assert (= bs!6148 (and d!5037 d!4945)))

(assert (=> bs!6148 (= lambda!797 lambda!776)))

(declare-fun bs!6149 () Bool)

(assert (= bs!6149 (and d!5037 d!4881)))

(assert (=> bs!6149 (= lambda!797 lambda!751)))

(declare-fun bs!6150 () Bool)

(assert (= bs!6150 (and d!5037 d!4991)))

(assert (=> bs!6150 (= lambda!797 lambda!786)))

(declare-fun bs!6151 () Bool)

(assert (= bs!6151 (and d!5037 d!4977)))

(assert (=> bs!6151 (= lambda!797 lambda!783)))

(declare-fun bs!6152 () Bool)

(assert (= bs!6152 (and d!5037 d!4927)))

(assert (=> bs!6152 (= lambda!797 lambda!766)))

(declare-fun bs!6153 () Bool)

(assert (= bs!6153 (and d!5037 d!4943)))

(assert (=> bs!6153 (= lambda!797 lambda!775)))

(declare-fun bs!6154 () Bool)

(assert (= bs!6154 (and d!5037 d!4975)))

(assert (=> bs!6154 (= lambda!797 lambda!782)))

(declare-fun bs!6155 () Bool)

(assert (= bs!6155 (and d!5037 d!4923)))

(assert (=> bs!6155 (= lambda!797 lambda!765)))

(declare-fun bs!6156 () Bool)

(assert (= bs!6156 (and d!5037 d!5017)))

(assert (=> bs!6156 (= lambda!797 lambda!791)))

(assert (=> d!5037 (= (inv!976 setElem!956) (forall!71 (exprs!587 setElem!956) lambda!797))))

(declare-fun bs!6157 () Bool)

(assert (= bs!6157 d!5037))

(declare-fun m!18324 () Bool)

(assert (=> bs!6157 m!18324))

(assert (=> setNonEmpty!956 d!5037))

(declare-fun d!5039 () Bool)

(assert (=> d!5039 (= (list!181 (_1!571 lt!5204)) (list!184 (c!15987 (_1!571 lt!5204))))))

(declare-fun bs!6158 () Bool)

(assert (= bs!6158 d!5039))

(declare-fun m!18326 () Bool)

(assert (=> bs!6158 m!18326))

(assert (=> b!43759 d!5039))

(assert (=> b!43759 d!4941))

(assert (=> b!43759 d!4833))

(declare-fun bs!6159 () Bool)

(declare-fun d!5041 () Bool)

(assert (= bs!6159 (and d!5041 d!5023)))

(declare-fun lambda!798 () Int)

(assert (=> bs!6159 (= lambda!798 lambda!794)))

(declare-fun bs!6160 () Bool)

(assert (= bs!6160 (and d!5041 d!4967)))

(assert (=> bs!6160 (= lambda!798 lambda!781)))

(declare-fun bs!6161 () Bool)

(assert (= bs!6161 (and d!5041 d!4873)))

(assert (=> bs!6161 (= lambda!798 lambda!749)))

(declare-fun bs!6162 () Bool)

(assert (= bs!6162 (and d!5041 d!5021)))

(assert (=> bs!6162 (= lambda!798 lambda!793)))

(declare-fun bs!6163 () Bool)

(assert (= bs!6163 (and d!5041 d!5037)))

(assert (=> bs!6163 (= lambda!798 lambda!797)))

(declare-fun bs!6164 () Bool)

(assert (= bs!6164 (and d!5041 d!4883)))

(assert (=> bs!6164 (= lambda!798 lambda!752)))

(declare-fun bs!6165 () Bool)

(assert (= bs!6165 (and d!5041 d!4875)))

(assert (=> bs!6165 (= lambda!798 lambda!750)))

(declare-fun bs!6166 () Bool)

(assert (= bs!6166 (and d!5041 d!4983)))

(assert (=> bs!6166 (= lambda!798 lambda!784)))

(declare-fun bs!6167 () Bool)

(assert (= bs!6167 (and d!5041 d!4931)))

(assert (=> bs!6167 (= lambda!798 lambda!768)))

(declare-fun bs!6168 () Bool)

(assert (= bs!6168 (and d!5041 d!4997)))

(assert (=> bs!6168 (= lambda!798 lambda!789)))

(declare-fun bs!6169 () Bool)

(assert (= bs!6169 (and d!5041 d!5033)))

(assert (=> bs!6169 (= lambda!798 lambda!795)))

(declare-fun bs!6170 () Bool)

(assert (= bs!6170 (and d!5041 d!4993)))

(assert (=> bs!6170 (= lambda!798 lambda!787)))

(declare-fun bs!6171 () Bool)

(assert (= bs!6171 (and d!5041 d!5035)))

(assert (=> bs!6171 (= lambda!798 lambda!796)))

(declare-fun bs!6172 () Bool)

(assert (= bs!6172 (and d!5041 d!5019)))

(assert (=> bs!6172 (= lambda!798 lambda!792)))

(declare-fun bs!6173 () Bool)

(assert (= bs!6173 (and d!5041 d!4985)))

(assert (=> bs!6173 (= lambda!798 lambda!785)))

(declare-fun bs!6174 () Bool)

(assert (= bs!6174 (and d!5041 d!4999)))

(assert (=> bs!6174 (= lambda!798 lambda!790)))

(declare-fun bs!6175 () Bool)

(assert (= bs!6175 (and d!5041 d!4929)))

(assert (=> bs!6175 (= lambda!798 lambda!767)))

(declare-fun bs!6176 () Bool)

(assert (= bs!6176 (and d!5041 d!4891)))

(assert (=> bs!6176 (= lambda!798 lambda!756)))

(declare-fun bs!6177 () Bool)

(assert (= bs!6177 (and d!5041 d!4959)))

(assert (=> bs!6177 (= lambda!798 lambda!777)))

(declare-fun bs!6178 () Bool)

(assert (= bs!6178 (and d!5041 d!4995)))

(assert (=> bs!6178 (= lambda!798 lambda!788)))

(declare-fun bs!6179 () Bool)

(assert (= bs!6179 (and d!5041 d!4945)))

(assert (=> bs!6179 (= lambda!798 lambda!776)))

(declare-fun bs!6180 () Bool)

(assert (= bs!6180 (and d!5041 d!4881)))

(assert (=> bs!6180 (= lambda!798 lambda!751)))

(declare-fun bs!6181 () Bool)

(assert (= bs!6181 (and d!5041 d!4991)))

(assert (=> bs!6181 (= lambda!798 lambda!786)))

(declare-fun bs!6182 () Bool)

(assert (= bs!6182 (and d!5041 d!4977)))

(assert (=> bs!6182 (= lambda!798 lambda!783)))

(declare-fun bs!6183 () Bool)

(assert (= bs!6183 (and d!5041 d!4927)))

(assert (=> bs!6183 (= lambda!798 lambda!766)))

(declare-fun bs!6184 () Bool)

(assert (= bs!6184 (and d!5041 d!4943)))

(assert (=> bs!6184 (= lambda!798 lambda!775)))

(declare-fun bs!6185 () Bool)

(assert (= bs!6185 (and d!5041 d!4975)))

(assert (=> bs!6185 (= lambda!798 lambda!782)))

(declare-fun bs!6186 () Bool)

(assert (= bs!6186 (and d!5041 d!4923)))

(assert (=> bs!6186 (= lambda!798 lambda!765)))

(declare-fun bs!6187 () Bool)

(assert (= bs!6187 (and d!5041 d!5017)))

(assert (=> bs!6187 (= lambda!798 lambda!791)))

(assert (=> d!5041 (= (inv!976 (_2!572 (_1!573 (h!6083 (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))))) (forall!71 (exprs!587 (_2!572 (_1!573 (h!6083 (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333)))))))))) lambda!798))))

(declare-fun bs!6188 () Bool)

(assert (= bs!6188 d!5041))

(declare-fun m!18328 () Bool)

(assert (=> bs!6188 m!18328))

(assert (=> b!43791 d!5041))

(assert (=> b!43778 d!4853))

(declare-fun d!5043 () Bool)

(declare-fun res!30564 () Bool)

(declare-fun e!24302 () Bool)

(assert (=> d!5043 (=> (not res!30564) (not e!24302))))

(assert (=> d!5043 (= res!30564 (<= (size!683 (list!185 (xs!2708 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) 512))))

(assert (=> d!5043 (= (inv!975 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) e!24302)))

(declare-fun b!44109 () Bool)

(declare-fun res!30565 () Bool)

(assert (=> b!44109 (=> (not res!30565) (not e!24302))))

(assert (=> b!44109 (= res!30565 (= (csize!489 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) (size!683 (list!185 (xs!2708 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))))))))

(declare-fun b!44110 () Bool)

(assert (=> b!44110 (= e!24302 (and (> (csize!489 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) 0) (<= (csize!489 (c!15986 (totalInput!1530 cacheFurthestNullable!45))) 512)))))

(assert (= (and d!5043 res!30564) b!44109))

(assert (= (and b!44109 res!30565) b!44110))

(declare-fun m!18330 () Bool)

(assert (=> d!5043 m!18330))

(assert (=> d!5043 m!18330))

(declare-fun m!18332 () Bool)

(assert (=> d!5043 m!18332))

(assert (=> b!44109 m!18330))

(assert (=> b!44109 m!18330))

(assert (=> b!44109 m!18332))

(assert (=> b!43755 d!5043))

(declare-fun d!5045 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!74) Regex!229)

(declare-datatypes ((StringLiteralValueInjection!36 0))(
  ( (StringLiteralValueInjection!37) )
))
(declare-fun injection!8 (StringLiteralValueInjection!36) TokenValueInjection!130)

(assert (=> d!5045 (= (jsonstringRule!0 JsonLexer!75) (Rule!127 (jsonStringRe!0 JsonLexer!75) (String!1062 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!37)))))

(declare-fun bs!6189 () Bool)

(assert (= bs!6189 d!5045))

(declare-fun m!18334 () Bool)

(assert (=> bs!6189 m!18334))

(declare-fun m!18336 () Bool)

(assert (=> bs!6189 m!18336))

(assert (=> d!4821 d!5045))

(declare-fun d!5047 () Bool)

(declare-fun falseRe!0 (JsonLexer!74) Regex!229)

(declare-datatypes ((KeywordValueInjection!16 0))(
  ( (KeywordValueInjection!17) )
))
(declare-fun injection!9 (KeywordValueInjection!16) TokenValueInjection!130)

(assert (=> d!5047 (= (falseRule!0 JsonLexer!75) (Rule!127 (falseRe!0 JsonLexer!75) (String!1062 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!17)))))

(declare-fun bs!6190 () Bool)

(assert (= bs!6190 d!5047))

(declare-fun m!18338 () Bool)

(assert (=> bs!6190 m!18338))

(declare-fun m!18340 () Bool)

(assert (=> bs!6190 m!18340))

(assert (=> d!4821 d!5047))

(declare-fun d!5049 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!74) Regex!229)

(assert (=> d!5049 (= (lBracketRule!0 JsonLexer!75) (Rule!127 (lBracketRe!0 JsonLexer!75) (String!1062 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!17)))))

(declare-fun bs!6191 () Bool)

(assert (= bs!6191 d!5049))

(declare-fun m!18342 () Bool)

(assert (=> bs!6191 m!18342))

(assert (=> bs!6191 m!18340))

(assert (=> d!4821 d!5049))

(declare-fun d!5051 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!74) Regex!229)

(assert (=> d!5051 (= (rBracketRule!0 JsonLexer!75) (Rule!127 (rBracketRe!0 JsonLexer!75) (String!1062 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!17)))))

(declare-fun bs!6192 () Bool)

(assert (= bs!6192 d!5051))

(declare-fun m!18344 () Bool)

(assert (=> bs!6192 m!18344))

(assert (=> bs!6192 m!18340))

(assert (=> d!4821 d!5051))

(declare-fun d!5053 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!74) Regex!229)

(assert (=> d!5053 (= (lBraceRule!0 JsonLexer!75) (Rule!127 (lBraceRe!0 JsonLexer!75) (String!1062 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!17)))))

(declare-fun bs!6193 () Bool)

(assert (= bs!6193 d!5053))

(declare-fun m!18346 () Bool)

(assert (=> bs!6193 m!18346))

(assert (=> bs!6193 m!18340))

(assert (=> d!4821 d!5053))

(declare-fun d!5055 () Bool)

(declare-fun nullRe!0 (JsonLexer!74) Regex!229)

(assert (=> d!5055 (= (nullRule!0 JsonLexer!75) (Rule!127 (nullRe!0 JsonLexer!75) (String!1062 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!17)))))

(declare-fun bs!6194 () Bool)

(assert (= bs!6194 d!5055))

(declare-fun m!18348 () Bool)

(assert (=> bs!6194 m!18348))

(assert (=> bs!6194 m!18340))

(assert (=> d!4821 d!5055))

(declare-fun d!5057 () Bool)

(declare-fun commaRe!0 (JsonLexer!74) Regex!229)

(assert (=> d!5057 (= (commaRule!0 JsonLexer!75) (Rule!127 (commaRe!0 JsonLexer!75) (String!1062 "ccoommmmaa") false (injection!9 KeywordValueInjection!17)))))

(declare-fun bs!6195 () Bool)

(assert (= bs!6195 d!5057))

(declare-fun m!18350 () Bool)

(assert (=> bs!6195 m!18350))

(assert (=> bs!6195 m!18340))

(assert (=> d!4821 d!5057))

(declare-fun d!5059 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!74) Regex!229)

(assert (=> d!5059 (= (rBraceRule!0 JsonLexer!75) (Rule!127 (rBraceRe!0 JsonLexer!75) (String!1062 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!17)))))

(declare-fun bs!6196 () Bool)

(assert (= bs!6196 d!5059))

(declare-fun m!18352 () Bool)

(assert (=> bs!6196 m!18352))

(assert (=> bs!6196 m!18340))

(assert (=> d!4821 d!5059))

(declare-fun d!5061 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!74) Regex!229)

(declare-datatypes ((WhitespaceValueInjection!12 0))(
  ( (WhitespaceValueInjection!13) )
))
(declare-fun injection!7 (WhitespaceValueInjection!12) TokenValueInjection!130)

(assert (=> d!5061 (= (whitespaceRule!0 JsonLexer!75) (Rule!127 (wsCharRe!0 JsonLexer!75) (String!1062 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!13)))))

(declare-fun bs!6197 () Bool)

(assert (= bs!6197 d!5061))

(declare-fun m!18354 () Bool)

(assert (=> bs!6197 m!18354))

(declare-fun m!18356 () Bool)

(assert (=> bs!6197 m!18356))

(assert (=> d!4821 d!5061))

(declare-fun d!5063 () Bool)

(declare-fun eofRe!0 (JsonLexer!74) Regex!229)

(assert (=> d!5063 (= (eofRule!0 JsonLexer!75) (Rule!127 (eofRe!0 JsonLexer!75) (String!1062 "eeooff") false (injection!7 WhitespaceValueInjection!13)))))

(declare-fun bs!6198 () Bool)

(assert (= bs!6198 d!5063))

(declare-fun m!18358 () Bool)

(assert (=> bs!6198 m!18358))

(assert (=> bs!6198 m!18356))

(assert (=> d!4821 d!5063))

(declare-fun d!5065 () Bool)

(declare-fun trueRe!0 (JsonLexer!74) Regex!229)

(assert (=> d!5065 (= (trueRule!0 JsonLexer!75) (Rule!127 (trueRe!0 JsonLexer!75) (String!1062 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!17)))))

(declare-fun bs!6199 () Bool)

(assert (= bs!6199 d!5065))

(declare-fun m!18360 () Bool)

(assert (=> bs!6199 m!18360))

(assert (=> bs!6199 m!18340))

(assert (=> d!4821 d!5065))

(declare-fun d!5067 () Bool)

(declare-fun colonRe!0 (JsonLexer!74) Regex!229)

(assert (=> d!5067 (= (colonRule!0 JsonLexer!75) (Rule!127 (colonRe!0 JsonLexer!75) (String!1062 "ccoolloonn") false (injection!9 KeywordValueInjection!17)))))

(declare-fun bs!6200 () Bool)

(assert (= bs!6200 d!5067))

(declare-fun m!18362 () Bool)

(assert (=> bs!6200 m!18362))

(assert (=> bs!6200 m!18340))

(assert (=> d!4821 d!5067))

(declare-fun d!5069 () Bool)

(declare-fun intRe!0 (JsonLexer!74) Regex!229)

(declare-datatypes ((IntegerValueInjection!16 0))(
  ( (IntegerValueInjection!17) )
))
(declare-fun injection!5 (IntegerValueInjection!16) TokenValueInjection!130)

(assert (=> d!5069 (= (integerLiteralRule!0 JsonLexer!75) (Rule!127 (intRe!0 JsonLexer!75) (String!1062 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!17)))))

(declare-fun bs!6201 () Bool)

(assert (= bs!6201 d!5069))

(declare-fun m!18364 () Bool)

(assert (=> bs!6201 m!18364))

(declare-fun m!18366 () Bool)

(assert (=> bs!6201 m!18366))

(assert (=> d!4821 d!5069))

(declare-fun d!5071 () Bool)

(declare-fun floatRe!0 (JsonLexer!74) Regex!229)

(declare-datatypes ((FloatLiteralValueInjection!12 0))(
  ( (FloatLiteralValueInjection!13) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!12) TokenValueInjection!130)

(assert (=> d!5071 (= (floatLiteralRule!0 JsonLexer!75) (Rule!127 (floatRe!0 JsonLexer!75) (String!1062 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!13)))))

(declare-fun bs!6202 () Bool)

(assert (= bs!6202 d!5071))

(declare-fun m!18368 () Bool)

(assert (=> bs!6202 m!18368))

(declare-fun m!18370 () Bool)

(assert (=> bs!6202 m!18370))

(assert (=> d!4821 d!5071))

(declare-fun d!5073 () Bool)

(declare-fun lt!5507 () Bool)

(assert (=> d!5073 (= lt!5507 (isEmpty!141 (list!181 (_1!571 lt!5204))))))

(declare-fun isEmpty!142 (Conc!130) Bool)

(assert (=> d!5073 (= lt!5507 (isEmpty!142 (c!15987 (_1!571 lt!5204))))))

(assert (=> d!5073 (= (isEmpty!138 (_1!571 lt!5204)) lt!5507)))

(declare-fun bs!6203 () Bool)

(assert (= bs!6203 d!5073))

(assert (=> bs!6203 m!17603))

(assert (=> bs!6203 m!17603))

(declare-fun m!18372 () Bool)

(assert (=> bs!6203 m!18372))

(declare-fun m!18374 () Bool)

(assert (=> bs!6203 m!18374))

(assert (=> b!43757 d!5073))

(declare-fun b!44112 () Bool)

(declare-fun e!24303 () List!684)

(declare-fun e!24304 () List!684)

(assert (=> b!44112 (= e!24303 e!24304)))

(declare-fun c!16063 () Bool)

(assert (=> b!44112 (= c!16063 ((_ is Leaf!322) (c!15986 (_2!571 lt!5191))))))

(declare-fun b!44114 () Bool)

(assert (=> b!44114 (= e!24304 (++!57 (list!183 (left!551 (c!15986 (_2!571 lt!5191)))) (list!183 (right!881 (c!15986 (_2!571 lt!5191))))))))

(declare-fun b!44111 () Bool)

(assert (=> b!44111 (= e!24303 Nil!682)))

(declare-fun d!5075 () Bool)

(declare-fun c!16062 () Bool)

(assert (=> d!5075 (= c!16062 ((_ is Empty!129) (c!15986 (_2!571 lt!5191))))))

(assert (=> d!5075 (= (list!183 (c!15986 (_2!571 lt!5191))) e!24303)))

(declare-fun b!44113 () Bool)

(assert (=> b!44113 (= e!24304 (list!185 (xs!2708 (c!15986 (_2!571 lt!5191)))))))

(assert (= (and d!5075 c!16062) b!44111))

(assert (= (and d!5075 (not c!16062)) b!44112))

(assert (= (and b!44112 c!16063) b!44113))

(assert (= (and b!44112 (not c!16063)) b!44114))

(declare-fun m!18376 () Bool)

(assert (=> b!44114 m!18376))

(declare-fun m!18378 () Bool)

(assert (=> b!44114 m!18378))

(assert (=> b!44114 m!18376))

(assert (=> b!44114 m!18378))

(declare-fun m!18380 () Bool)

(assert (=> b!44114 m!18380))

(declare-fun m!18382 () Bool)

(assert (=> b!44113 m!18382))

(assert (=> d!4799 d!5075))

(declare-fun d!5077 () Bool)

(declare-fun lt!5508 () Bool)

(assert (=> d!5077 (= lt!5508 (isEmpty!141 (list!181 (_1!571 lt!5203))))))

(assert (=> d!5077 (= lt!5508 (isEmpty!142 (c!15987 (_1!571 lt!5203))))))

(assert (=> d!5077 (= (isEmpty!138 (_1!571 lt!5203)) lt!5508)))

(declare-fun bs!6204 () Bool)

(assert (= bs!6204 d!5077))

(assert (=> bs!6204 m!17541))

(assert (=> bs!6204 m!17541))

(declare-fun m!18384 () Bool)

(assert (=> bs!6204 m!18384))

(declare-fun m!18386 () Bool)

(assert (=> bs!6204 m!18386))

(assert (=> b!43740 d!5077))

(declare-fun b!44115 () Bool)

(declare-fun tp!30196 () Bool)

(declare-fun e!24305 () Bool)

(declare-fun tp!30197 () Bool)

(assert (=> b!44115 (= e!24305 (and (inv!970 (left!551 (left!551 (c!15986 input!525)))) tp!30196 (inv!970 (right!881 (left!551 (c!15986 input!525)))) tp!30197))))

(declare-fun b!44116 () Bool)

(assert (=> b!44116 (= e!24305 (inv!977 (xs!2708 (left!551 (c!15986 input!525)))))))

(assert (=> b!43821 (= tp!30152 (and (inv!970 (left!551 (c!15986 input!525))) e!24305))))

(assert (= (and b!43821 ((_ is Node!129) (left!551 (c!15986 input!525)))) b!44115))

(assert (= (and b!43821 ((_ is Leaf!322) (left!551 (c!15986 input!525)))) b!44116))

(declare-fun m!18388 () Bool)

(assert (=> b!44115 m!18388))

(declare-fun m!18390 () Bool)

(assert (=> b!44115 m!18390))

(declare-fun m!18392 () Bool)

(assert (=> b!44116 m!18392))

(assert (=> b!43821 m!17669))

(declare-fun tp!30198 () Bool)

(declare-fun e!24307 () Bool)

(declare-fun b!44117 () Bool)

(declare-fun tp!30199 () Bool)

(assert (=> b!44117 (= e!24307 (and (inv!970 (left!551 (right!881 (c!15986 input!525)))) tp!30198 (inv!970 (right!881 (right!881 (c!15986 input!525)))) tp!30199))))

(declare-fun b!44118 () Bool)

(assert (=> b!44118 (= e!24307 (inv!977 (xs!2708 (right!881 (c!15986 input!525)))))))

(assert (=> b!43821 (= tp!30153 (and (inv!970 (right!881 (c!15986 input!525))) e!24307))))

(assert (= (and b!43821 ((_ is Node!129) (right!881 (c!15986 input!525)))) b!44117))

(assert (= (and b!43821 ((_ is Leaf!322) (right!881 (c!15986 input!525)))) b!44118))

(declare-fun m!18394 () Bool)

(assert (=> b!44117 m!18394))

(declare-fun m!18396 () Bool)

(assert (=> b!44117 m!18396))

(declare-fun m!18398 () Bool)

(assert (=> b!44118 m!18398))

(assert (=> b!43821 m!17671))

(declare-fun condSetEmpty!990 () Bool)

(assert (=> setNonEmpty!971 (= condSetEmpty!990 (= setRest!971 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!990 () Bool)

(assert (=> setNonEmpty!971 (= tp!30154 setRes!990)))

(declare-fun setIsEmpty!990 () Bool)

(assert (=> setIsEmpty!990 setRes!990))

(declare-fun setNonEmpty!990 () Bool)

(declare-fun tp!30202 () Bool)

(declare-fun setElem!990 () Context!174)

(assert (=> setNonEmpty!990 (= setRes!990 (and tp!30202 (inv!976 setElem!990)))))

(declare-fun setRest!990 () (InoxSet Context!174))

(assert (=> setNonEmpty!990 (= setRest!971 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!990 true) setRest!990))))

(assert (= (and setNonEmpty!971 condSetEmpty!990) setIsEmpty!990))

(assert (= (and setNonEmpty!971 (not condSetEmpty!990)) setNonEmpty!990))

(declare-fun m!18400 () Bool)

(assert (=> setNonEmpty!990 m!18400))

(declare-fun condSetEmpty!991 () Bool)

(assert (=> setNonEmpty!955 (= condSetEmpty!991 (= setRest!955 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!991 () Bool)

(assert (=> setNonEmpty!955 (= tp!30113 setRes!991)))

(declare-fun setIsEmpty!991 () Bool)

(assert (=> setIsEmpty!991 setRes!991))

(declare-fun setNonEmpty!991 () Bool)

(declare-fun tp!30203 () Bool)

(declare-fun setElem!991 () Context!174)

(assert (=> setNonEmpty!991 (= setRes!991 (and tp!30203 (inv!976 setElem!991)))))

(declare-fun setRest!991 () (InoxSet Context!174))

(assert (=> setNonEmpty!991 (= setRest!955 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!991 true) setRest!991))))

(assert (= (and setNonEmpty!955 condSetEmpty!991) setIsEmpty!991))

(assert (= (and setNonEmpty!955 (not condSetEmpty!991)) setNonEmpty!991))

(declare-fun m!18402 () Bool)

(assert (=> setNonEmpty!991 m!18402))

(declare-fun e!24314 () Bool)

(declare-fun setRes!992 () Bool)

(declare-fun b!44121 () Bool)

(declare-fun tp!30205 () Bool)

(assert (=> b!44121 (= e!24314 (and (inv!976 (_2!572 (_1!573 (h!6083 (t!16390 (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))))))) setRes!992 tp!30205))))

(declare-fun condSetEmpty!992 () Bool)

(assert (=> b!44121 (= condSetEmpty!992 (= (_2!573 (h!6083 (t!16390 (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!992 () Bool)

(assert (=> setIsEmpty!992 setRes!992))

(declare-fun setNonEmpty!992 () Bool)

(declare-fun tp!30204 () Bool)

(declare-fun setElem!992 () Context!174)

(assert (=> setNonEmpty!992 (= setRes!992 (and tp!30204 (inv!976 setElem!992)))))

(declare-fun setRest!992 () (InoxSet Context!174))

(assert (=> setNonEmpty!992 (= (_2!573 (h!6083 (t!16390 (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!992 true) setRest!992))))

(assert (=> b!43790 (= tp!30114 e!24314)))

(assert (= (and b!44121 condSetEmpty!992) setIsEmpty!992))

(assert (= (and b!44121 (not condSetEmpty!992)) setNonEmpty!992))

(assert (= (and b!43790 ((_ is Cons!687) (t!16390 (zeroValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))))) b!44121))

(declare-fun m!18404 () Bool)

(assert (=> b!44121 m!18404))

(declare-fun m!18406 () Bool)

(assert (=> setNonEmpty!992 m!18406))

(declare-fun b!44122 () Bool)

(declare-fun setRes!993 () Bool)

(declare-fun e!24318 () Bool)

(declare-fun tp!30207 () Bool)

(assert (=> b!44122 (= e!24318 (and (inv!976 (_1!574 (_1!575 (h!6084 (t!16391 (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))))))) setRes!993 tp!30207))))

(declare-fun condSetEmpty!993 () Bool)

(assert (=> b!44122 (= condSetEmpty!993 (= (_2!575 (h!6084 (t!16391 (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!993 () Bool)

(assert (=> setIsEmpty!993 setRes!993))

(declare-fun setNonEmpty!993 () Bool)

(declare-fun tp!30206 () Bool)

(declare-fun setElem!993 () Context!174)

(assert (=> setNonEmpty!993 (= setRes!993 (and tp!30206 (inv!976 setElem!993)))))

(declare-fun setRest!993 () (InoxSet Context!174))

(assert (=> setNonEmpty!993 (= (_2!575 (h!6084 (t!16391 (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!993 true) setRest!993))))

(assert (=> b!43823 (= tp!30155 e!24318)))

(assert (= (and b!44122 condSetEmpty!993) setIsEmpty!993))

(assert (= (and b!44122 (not condSetEmpty!993)) setNonEmpty!993))

(assert (= (and b!43823 ((_ is Cons!688) (t!16391 (zeroValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))))) b!44122))

(declare-fun m!18408 () Bool)

(assert (=> b!44122 m!18408))

(declare-fun m!18410 () Bool)

(assert (=> setNonEmpty!993 m!18410))

(declare-fun condSetEmpty!994 () Bool)

(assert (=> setNonEmpty!986 (= condSetEmpty!994 (= setRest!985 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!994 () Bool)

(assert (=> setNonEmpty!986 (= tp!30192 setRes!994)))

(declare-fun setIsEmpty!994 () Bool)

(assert (=> setIsEmpty!994 setRes!994))

(declare-fun setNonEmpty!994 () Bool)

(declare-fun tp!30208 () Bool)

(declare-fun setElem!994 () Context!174)

(assert (=> setNonEmpty!994 (= setRes!994 (and tp!30208 (inv!976 setElem!994)))))

(declare-fun setRest!994 () (InoxSet Context!174))

(assert (=> setNonEmpty!994 (= setRest!985 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!994 true) setRest!994))))

(assert (= (and setNonEmpty!986 condSetEmpty!994) setIsEmpty!994))

(assert (= (and setNonEmpty!986 (not condSetEmpty!994)) setNonEmpty!994))

(declare-fun m!18412 () Bool)

(assert (=> setNonEmpty!994 m!18412))

(declare-fun condSetEmpty!995 () Bool)

(assert (=> setNonEmpty!965 (= condSetEmpty!995 (= setRest!966 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!995 () Bool)

(assert (=> setNonEmpty!965 (= tp!30137 setRes!995)))

(declare-fun setIsEmpty!995 () Bool)

(assert (=> setIsEmpty!995 setRes!995))

(declare-fun setNonEmpty!995 () Bool)

(declare-fun tp!30209 () Bool)

(declare-fun setElem!995 () Context!174)

(assert (=> setNonEmpty!995 (= setRes!995 (and tp!30209 (inv!976 setElem!995)))))

(declare-fun setRest!995 () (InoxSet Context!174))

(assert (=> setNonEmpty!995 (= setRest!966 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!995 true) setRest!995))))

(assert (= (and setNonEmpty!965 condSetEmpty!995) setIsEmpty!995))

(assert (= (and setNonEmpty!965 (not condSetEmpty!995)) setNonEmpty!995))

(declare-fun m!18414 () Bool)

(assert (=> setNonEmpty!995 m!18414))

(declare-fun condSetEmpty!996 () Bool)

(assert (=> setNonEmpty!960 (= condSetEmpty!996 (= setRest!960 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!996 () Bool)

(assert (=> setNonEmpty!960 (= tp!30124 setRes!996)))

(declare-fun setIsEmpty!996 () Bool)

(assert (=> setIsEmpty!996 setRes!996))

(declare-fun setNonEmpty!996 () Bool)

(declare-fun tp!30210 () Bool)

(declare-fun setElem!996 () Context!174)

(assert (=> setNonEmpty!996 (= setRes!996 (and tp!30210 (inv!976 setElem!996)))))

(declare-fun setRest!996 () (InoxSet Context!174))

(assert (=> setNonEmpty!996 (= setRest!960 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!996 true) setRest!996))))

(assert (= (and setNonEmpty!960 condSetEmpty!996) setIsEmpty!996))

(assert (= (and setNonEmpty!960 (not condSetEmpty!996)) setNonEmpty!996))

(declare-fun m!18416 () Bool)

(assert (=> setNonEmpty!996 m!18416))

(declare-fun b!44123 () Bool)

(declare-fun e!24322 () Bool)

(declare-fun setRes!997 () Bool)

(declare-fun tp!30211 () Bool)

(assert (=> b!44123 (= e!24322 (and setRes!997 tp!30211))))

(declare-fun condSetEmpty!997 () Bool)

(assert (=> b!44123 (= condSetEmpty!997 (= (_1!569 (_1!570 (h!6081 (t!16388 mapDefault!863)))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!997 () Bool)

(assert (=> setIsEmpty!997 setRes!997))

(declare-fun setNonEmpty!997 () Bool)

(declare-fun tp!30212 () Bool)

(declare-fun setElem!997 () Context!174)

(assert (=> setNonEmpty!997 (= setRes!997 (and tp!30212 (inv!976 setElem!997)))))

(declare-fun setRest!997 () (InoxSet Context!174))

(assert (=> setNonEmpty!997 (= (_1!569 (_1!570 (h!6081 (t!16388 mapDefault!863)))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!997 true) setRest!997))))

(assert (=> b!43825 (= tp!30158 e!24322)))

(assert (= (and b!44123 condSetEmpty!997) setIsEmpty!997))

(assert (= (and b!44123 (not condSetEmpty!997)) setNonEmpty!997))

(assert (= (and b!43825 ((_ is Cons!685) (t!16388 mapDefault!863))) b!44123))

(declare-fun m!18418 () Bool)

(assert (=> setNonEmpty!997 m!18418))

(declare-fun b!44124 () Bool)

(declare-fun e!24324 () Bool)

(declare-fun setRes!998 () Bool)

(declare-fun tp!30213 () Bool)

(assert (=> b!44124 (= e!24324 (and setRes!998 tp!30213))))

(declare-fun condSetEmpty!998 () Bool)

(assert (=> b!44124 (= condSetEmpty!998 (= (_1!569 (_1!570 (h!6081 (t!16388 (minValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45)))))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!998 () Bool)

(assert (=> setIsEmpty!998 setRes!998))

(declare-fun setNonEmpty!998 () Bool)

(declare-fun tp!30214 () Bool)

(declare-fun setElem!998 () Context!174)

(assert (=> setNonEmpty!998 (= setRes!998 (and tp!30214 (inv!976 setElem!998)))))

(declare-fun setRest!998 () (InoxSet Context!174))

(assert (=> setNonEmpty!998 (= (_1!569 (_1!570 (h!6081 (t!16388 (minValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45)))))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!998 true) setRest!998))))

(assert (=> b!43797 (= tp!30123 e!24324)))

(assert (= (and b!44124 condSetEmpty!998) setIsEmpty!998))

(assert (= (and b!44124 (not condSetEmpty!998)) setNonEmpty!998))

(assert (= (and b!43797 ((_ is Cons!685) (t!16388 (minValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))))) b!44124))

(declare-fun m!18420 () Bool)

(assert (=> setNonEmpty!998 m!18420))

(declare-fun setNonEmpty!999 () Bool)

(declare-fun setRes!999 () Bool)

(declare-fun tp!30217 () Bool)

(declare-fun setElem!1000 () Context!174)

(assert (=> setNonEmpty!999 (= setRes!999 (and tp!30217 (inv!976 setElem!1000)))))

(declare-fun mapValue!874 () List!690)

(declare-fun setRest!1000 () (InoxSet Context!174))

(assert (=> setNonEmpty!999 (= (_2!575 (h!6084 mapValue!874)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1000 true) setRest!1000))))

(declare-fun mapNonEmpty!874 () Bool)

(declare-fun mapRes!874 () Bool)

(declare-fun tp!30215 () Bool)

(declare-fun e!24327 () Bool)

(assert (=> mapNonEmpty!874 (= mapRes!874 (and tp!30215 e!24327))))

(declare-fun mapRest!874 () (Array (_ BitVec 32) List!690))

(declare-fun mapKey!874 () (_ BitVec 32))

(assert (=> mapNonEmpty!874 (= mapRest!873 (store mapRest!874 mapKey!874 mapValue!874))))

(declare-fun setNonEmpty!1000 () Bool)

(declare-fun setRes!1000 () Bool)

(declare-fun tp!30218 () Bool)

(declare-fun setElem!999 () Context!174)

(assert (=> setNonEmpty!1000 (= setRes!1000 (and tp!30218 (inv!976 setElem!999)))))

(declare-fun mapDefault!874 () List!690)

(declare-fun setRest!999 () (InoxSet Context!174))

(assert (=> setNonEmpty!1000 (= (_2!575 (h!6084 mapDefault!874)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!999 true) setRest!999))))

(declare-fun setIsEmpty!999 () Bool)

(assert (=> setIsEmpty!999 setRes!1000))

(declare-fun tp!30219 () Bool)

(declare-fun b!44125 () Bool)

(assert (=> b!44125 (= e!24327 (and (inv!976 (_1!574 (_1!575 (h!6084 mapValue!874)))) setRes!999 tp!30219))))

(declare-fun condSetEmpty!1000 () Bool)

(assert (=> b!44125 (= condSetEmpty!1000 (= (_2!575 (h!6084 mapValue!874)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun tp!30216 () Bool)

(declare-fun b!44126 () Bool)

(declare-fun e!24330 () Bool)

(assert (=> b!44126 (= e!24330 (and (inv!976 (_1!574 (_1!575 (h!6084 mapDefault!874)))) setRes!1000 tp!30216))))

(declare-fun condSetEmpty!999 () Bool)

(assert (=> b!44126 (= condSetEmpty!999 (= (_2!575 (h!6084 mapDefault!874)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun mapIsEmpty!874 () Bool)

(assert (=> mapIsEmpty!874 mapRes!874))

(declare-fun setIsEmpty!1000 () Bool)

(assert (=> setIsEmpty!1000 setRes!999))

(declare-fun condMapEmpty!874 () Bool)

(assert (=> mapNonEmpty!873 (= condMapEmpty!874 (= mapRest!873 ((as const (Array (_ BitVec 32) List!690)) mapDefault!874)))))

(assert (=> mapNonEmpty!873 (= tp!30189 (and e!24330 mapRes!874))))

(assert (= (and mapNonEmpty!873 condMapEmpty!874) mapIsEmpty!874))

(assert (= (and mapNonEmpty!873 (not condMapEmpty!874)) mapNonEmpty!874))

(assert (= (and b!44125 condSetEmpty!1000) setIsEmpty!1000))

(assert (= (and b!44125 (not condSetEmpty!1000)) setNonEmpty!999))

(assert (= (and mapNonEmpty!874 ((_ is Cons!688) mapValue!874)) b!44125))

(assert (= (and b!44126 condSetEmpty!999) setIsEmpty!999))

(assert (= (and b!44126 (not condSetEmpty!999)) setNonEmpty!1000))

(assert (= (and mapNonEmpty!873 ((_ is Cons!688) mapDefault!874)) b!44126))

(declare-fun m!18422 () Bool)

(assert (=> b!44126 m!18422))

(declare-fun m!18424 () Bool)

(assert (=> b!44125 m!18424))

(declare-fun m!18426 () Bool)

(assert (=> setNonEmpty!999 m!18426))

(declare-fun m!18428 () Bool)

(assert (=> setNonEmpty!1000 m!18428))

(declare-fun m!18430 () Bool)

(assert (=> mapNonEmpty!874 m!18430))

(declare-fun condSetEmpty!1001 () Bool)

(assert (=> setNonEmpty!954 (= condSetEmpty!1001 (= setRest!954 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1001 () Bool)

(assert (=> setNonEmpty!954 (= tp!30111 setRes!1001)))

(declare-fun setIsEmpty!1001 () Bool)

(assert (=> setIsEmpty!1001 setRes!1001))

(declare-fun setNonEmpty!1001 () Bool)

(declare-fun tp!30220 () Bool)

(declare-fun setElem!1001 () Context!174)

(assert (=> setNonEmpty!1001 (= setRes!1001 (and tp!30220 (inv!976 setElem!1001)))))

(declare-fun setRest!1001 () (InoxSet Context!174))

(assert (=> setNonEmpty!1001 (= setRest!954 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1001 true) setRest!1001))))

(assert (= (and setNonEmpty!954 condSetEmpty!1001) setIsEmpty!1001))

(assert (= (and setNonEmpty!954 (not condSetEmpty!1001)) setNonEmpty!1001))

(declare-fun m!18432 () Bool)

(assert (=> setNonEmpty!1001 m!18432))

(declare-fun condSetEmpty!1002 () Bool)

(assert (=> setNonEmpty!985 (= condSetEmpty!1002 (= setRest!986 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1002 () Bool)

(assert (=> setNonEmpty!985 (= tp!30191 setRes!1002)))

(declare-fun setIsEmpty!1002 () Bool)

(assert (=> setIsEmpty!1002 setRes!1002))

(declare-fun setNonEmpty!1002 () Bool)

(declare-fun tp!30221 () Bool)

(declare-fun setElem!1002 () Context!174)

(assert (=> setNonEmpty!1002 (= setRes!1002 (and tp!30221 (inv!976 setElem!1002)))))

(declare-fun setRest!1002 () (InoxSet Context!174))

(assert (=> setNonEmpty!1002 (= setRest!986 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1002 true) setRest!1002))))

(assert (= (and setNonEmpty!985 condSetEmpty!1002) setIsEmpty!1002))

(assert (= (and setNonEmpty!985 (not condSetEmpty!1002)) setNonEmpty!1002))

(declare-fun m!18434 () Bool)

(assert (=> setNonEmpty!1002 m!18434))

(declare-fun tp!30223 () Bool)

(declare-fun e!24335 () Bool)

(declare-fun setRes!1003 () Bool)

(declare-fun b!44127 () Bool)

(assert (=> b!44127 (= e!24335 (and (inv!976 (_2!572 (_1!573 (h!6083 (t!16390 mapDefault!862))))) setRes!1003 tp!30223))))

(declare-fun condSetEmpty!1003 () Bool)

(assert (=> b!44127 (= condSetEmpty!1003 (= (_2!573 (h!6083 (t!16390 mapDefault!862))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1003 () Bool)

(assert (=> setIsEmpty!1003 setRes!1003))

(declare-fun setNonEmpty!1003 () Bool)

(declare-fun tp!30222 () Bool)

(declare-fun setElem!1003 () Context!174)

(assert (=> setNonEmpty!1003 (= setRes!1003 (and tp!30222 (inv!976 setElem!1003)))))

(declare-fun setRest!1003 () (InoxSet Context!174))

(assert (=> setNonEmpty!1003 (= (_2!573 (h!6083 (t!16390 mapDefault!862))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1003 true) setRest!1003))))

(assert (=> b!43789 (= tp!30112 e!24335)))

(assert (= (and b!44127 condSetEmpty!1003) setIsEmpty!1003))

(assert (= (and b!44127 (not condSetEmpty!1003)) setNonEmpty!1003))

(assert (= (and b!43789 ((_ is Cons!687) (t!16390 mapDefault!862))) b!44127))

(declare-fun m!18436 () Bool)

(assert (=> b!44127 m!18436))

(declare-fun m!18438 () Bool)

(assert (=> setNonEmpty!1003 m!18438))

(declare-fun b!44128 () Bool)

(declare-fun e!24337 () Bool)

(declare-fun setRes!1004 () Bool)

(declare-fun tp!30224 () Bool)

(assert (=> b!44128 (= e!24337 (and setRes!1004 tp!30224))))

(declare-fun condSetEmpty!1004 () Bool)

(assert (=> b!44128 (= condSetEmpty!1004 (= (_1!569 (_1!570 (h!6081 (t!16388 mapValue!870)))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1004 () Bool)

(assert (=> setIsEmpty!1004 setRes!1004))

(declare-fun setNonEmpty!1004 () Bool)

(declare-fun tp!30225 () Bool)

(declare-fun setElem!1004 () Context!174)

(assert (=> setNonEmpty!1004 (= setRes!1004 (and tp!30225 (inv!976 setElem!1004)))))

(declare-fun setRest!1004 () (InoxSet Context!174))

(assert (=> setNonEmpty!1004 (= (_1!569 (_1!570 (h!6081 (t!16388 mapValue!870)))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1004 true) setRest!1004))))

(assert (=> b!43834 (= tp!30173 e!24337)))

(assert (= (and b!44128 condSetEmpty!1004) setIsEmpty!1004))

(assert (= (and b!44128 (not condSetEmpty!1004)) setNonEmpty!1004))

(assert (= (and b!43834 ((_ is Cons!685) (t!16388 mapValue!870))) b!44128))

(declare-fun m!18440 () Bool)

(assert (=> setNonEmpty!1004 m!18440))

(declare-fun condSetEmpty!1005 () Bool)

(assert (=> setNonEmpty!987 (= condSetEmpty!1005 (= setRest!987 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1005 () Bool)

(assert (=> setNonEmpty!987 (= tp!30194 setRes!1005)))

(declare-fun setIsEmpty!1005 () Bool)

(assert (=> setIsEmpty!1005 setRes!1005))

(declare-fun setNonEmpty!1005 () Bool)

(declare-fun tp!30226 () Bool)

(declare-fun setElem!1005 () Context!174)

(assert (=> setNonEmpty!1005 (= setRes!1005 (and tp!30226 (inv!976 setElem!1005)))))

(declare-fun setRest!1005 () (InoxSet Context!174))

(assert (=> setNonEmpty!1005 (= setRest!987 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1005 true) setRest!1005))))

(assert (= (and setNonEmpty!987 condSetEmpty!1005) setIsEmpty!1005))

(assert (= (and setNonEmpty!987 (not condSetEmpty!1005)) setNonEmpty!1005))

(declare-fun m!18442 () Bool)

(assert (=> setNonEmpty!1005 m!18442))

(declare-fun b!44129 () Bool)

(declare-fun setRes!1006 () Bool)

(declare-fun e!24341 () Bool)

(declare-fun tp!30228 () Bool)

(assert (=> b!44129 (= e!24341 (and (inv!976 (_2!572 (_1!573 (h!6083 (t!16390 mapValue!864))))) setRes!1006 tp!30228))))

(declare-fun condSetEmpty!1006 () Bool)

(assert (=> b!44129 (= condSetEmpty!1006 (= (_2!573 (h!6083 (t!16390 mapValue!864))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1006 () Bool)

(assert (=> setIsEmpty!1006 setRes!1006))

(declare-fun setNonEmpty!1006 () Bool)

(declare-fun tp!30227 () Bool)

(declare-fun setElem!1006 () Context!174)

(assert (=> setNonEmpty!1006 (= setRes!1006 (and tp!30227 (inv!976 setElem!1006)))))

(declare-fun setRest!1006 () (InoxSet Context!174))

(assert (=> setNonEmpty!1006 (= (_2!573 (h!6083 (t!16390 mapValue!864))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1006 true) setRest!1006))))

(assert (=> b!43809 (= tp!30141 e!24341)))

(assert (= (and b!44129 condSetEmpty!1006) setIsEmpty!1006))

(assert (= (and b!44129 (not condSetEmpty!1006)) setNonEmpty!1006))

(assert (= (and b!43809 ((_ is Cons!687) (t!16390 mapValue!864))) b!44129))

(declare-fun m!18444 () Bool)

(assert (=> b!44129 m!18444))

(declare-fun m!18446 () Bool)

(assert (=> setNonEmpty!1006 m!18446))

(declare-fun condSetEmpty!1007 () Bool)

(assert (=> setNonEmpty!978 (= condSetEmpty!1007 (= setRest!978 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1007 () Bool)

(assert (=> setNonEmpty!978 (= tp!30176 setRes!1007)))

(declare-fun setIsEmpty!1007 () Bool)

(assert (=> setIsEmpty!1007 setRes!1007))

(declare-fun setNonEmpty!1007 () Bool)

(declare-fun tp!30229 () Bool)

(declare-fun setElem!1007 () Context!174)

(assert (=> setNonEmpty!1007 (= setRes!1007 (and tp!30229 (inv!976 setElem!1007)))))

(declare-fun setRest!1007 () (InoxSet Context!174))

(assert (=> setNonEmpty!1007 (= setRest!978 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1007 true) setRest!1007))))

(assert (= (and setNonEmpty!978 condSetEmpty!1007) setIsEmpty!1007))

(assert (= (and setNonEmpty!978 (not condSetEmpty!1007)) setNonEmpty!1007))

(declare-fun m!18448 () Bool)

(assert (=> setNonEmpty!1007 m!18448))

(declare-fun tp!30231 () Bool)

(declare-fun b!44130 () Bool)

(declare-fun e!24345 () Bool)

(declare-fun setRes!1008 () Bool)

(assert (=> b!44130 (= e!24345 (and (inv!976 (_2!572 (_1!573 (h!6083 (t!16390 mapDefault!867))))) setRes!1008 tp!30231))))

(declare-fun condSetEmpty!1008 () Bool)

(assert (=> b!44130 (= condSetEmpty!1008 (= (_2!573 (h!6083 (t!16390 mapDefault!867))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1008 () Bool)

(assert (=> setIsEmpty!1008 setRes!1008))

(declare-fun setNonEmpty!1008 () Bool)

(declare-fun tp!30230 () Bool)

(declare-fun setElem!1008 () Context!174)

(assert (=> setNonEmpty!1008 (= setRes!1008 (and tp!30230 (inv!976 setElem!1008)))))

(declare-fun setRest!1008 () (InoxSet Context!174))

(assert (=> setNonEmpty!1008 (= (_2!573 (h!6083 (t!16390 mapDefault!867))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1008 true) setRest!1008))))

(assert (=> b!43808 (= tp!30136 e!24345)))

(assert (= (and b!44130 condSetEmpty!1008) setIsEmpty!1008))

(assert (= (and b!44130 (not condSetEmpty!1008)) setNonEmpty!1008))

(assert (= (and b!43808 ((_ is Cons!687) (t!16390 mapDefault!867))) b!44130))

(declare-fun m!18450 () Bool)

(assert (=> b!44130 m!18450))

(declare-fun m!18452 () Bool)

(assert (=> setNonEmpty!1008 m!18452))

(declare-fun b!44131 () Bool)

(declare-fun setRes!1009 () Bool)

(declare-fun e!24349 () Bool)

(declare-fun tp!30233 () Bool)

(assert (=> b!44131 (= e!24349 (and (inv!976 (_1!574 (_1!575 (h!6084 (t!16391 mapValue!862))))) setRes!1009 tp!30233))))

(declare-fun condSetEmpty!1009 () Bool)

(assert (=> b!44131 (= condSetEmpty!1009 (= (_2!575 (h!6084 (t!16391 mapValue!862))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1009 () Bool)

(assert (=> setIsEmpty!1009 setRes!1009))

(declare-fun setNonEmpty!1009 () Bool)

(declare-fun tp!30232 () Bool)

(declare-fun setElem!1009 () Context!174)

(assert (=> setNonEmpty!1009 (= setRes!1009 (and tp!30232 (inv!976 setElem!1009)))))

(declare-fun setRest!1009 () (InoxSet Context!174))

(assert (=> setNonEmpty!1009 (= (_2!575 (h!6084 (t!16391 mapValue!862))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1009 true) setRest!1009))))

(assert (=> b!43845 (= tp!30195 e!24349)))

(assert (= (and b!44131 condSetEmpty!1009) setIsEmpty!1009))

(assert (= (and b!44131 (not condSetEmpty!1009)) setNonEmpty!1009))

(assert (= (and b!43845 ((_ is Cons!688) (t!16391 mapValue!862))) b!44131))

(declare-fun m!18454 () Bool)

(assert (=> b!44131 m!18454))

(declare-fun m!18456 () Bool)

(assert (=> setNonEmpty!1009 m!18456))

(declare-fun condSetEmpty!1010 () Bool)

(assert (=> setNonEmpty!980 (= condSetEmpty!1010 (= setRest!980 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1010 () Bool)

(assert (=> setNonEmpty!980 (= tp!30178 setRes!1010)))

(declare-fun setIsEmpty!1010 () Bool)

(assert (=> setIsEmpty!1010 setRes!1010))

(declare-fun setNonEmpty!1010 () Bool)

(declare-fun tp!30234 () Bool)

(declare-fun setElem!1010 () Context!174)

(assert (=> setNonEmpty!1010 (= setRes!1010 (and tp!30234 (inv!976 setElem!1010)))))

(declare-fun setRest!1010 () (InoxSet Context!174))

(assert (=> setNonEmpty!1010 (= setRest!980 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1010 true) setRest!1010))))

(assert (= (and setNonEmpty!980 condSetEmpty!1010) setIsEmpty!1010))

(assert (= (and setNonEmpty!980 (not condSetEmpty!1010)) setNonEmpty!1010))

(declare-fun m!18458 () Bool)

(assert (=> setNonEmpty!1010 m!18458))

(declare-fun b!44132 () Bool)

(declare-fun e!24351 () Bool)

(declare-fun setRes!1011 () Bool)

(declare-fun tp!30235 () Bool)

(assert (=> b!44132 (= e!24351 (and setRes!1011 tp!30235))))

(declare-fun condSetEmpty!1011 () Bool)

(assert (=> b!44132 (= condSetEmpty!1011 (= (_1!569 (_1!570 (h!6081 (t!16388 mapValue!863)))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1011 () Bool)

(assert (=> setIsEmpty!1011 setRes!1011))

(declare-fun setNonEmpty!1011 () Bool)

(declare-fun tp!30236 () Bool)

(declare-fun setElem!1011 () Context!174)

(assert (=> setNonEmpty!1011 (= setRes!1011 (and tp!30236 (inv!976 setElem!1011)))))

(declare-fun setRest!1011 () (InoxSet Context!174))

(assert (=> setNonEmpty!1011 (= (_1!569 (_1!570 (h!6081 (t!16388 mapValue!863)))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1011 true) setRest!1011))))

(assert (=> b!43836 (= tp!30177 e!24351)))

(assert (= (and b!44132 condSetEmpty!1011) setIsEmpty!1011))

(assert (= (and b!44132 (not condSetEmpty!1011)) setNonEmpty!1011))

(assert (= (and b!43836 ((_ is Cons!685) (t!16388 mapValue!863))) b!44132))

(declare-fun m!18460 () Bool)

(assert (=> setNonEmpty!1011 m!18460))

(declare-fun condSetEmpty!1012 () Bool)

(assert (=> setNonEmpty!973 (= condSetEmpty!1012 (= setRest!973 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1012 () Bool)

(assert (=> setNonEmpty!973 (= tp!30159 setRes!1012)))

(declare-fun setIsEmpty!1012 () Bool)

(assert (=> setIsEmpty!1012 setRes!1012))

(declare-fun setNonEmpty!1012 () Bool)

(declare-fun tp!30237 () Bool)

(declare-fun setElem!1012 () Context!174)

(assert (=> setNonEmpty!1012 (= setRes!1012 (and tp!30237 (inv!976 setElem!1012)))))

(declare-fun setRest!1012 () (InoxSet Context!174))

(assert (=> setNonEmpty!1012 (= setRest!973 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1012 true) setRest!1012))))

(assert (= (and setNonEmpty!973 condSetEmpty!1012) setIsEmpty!1012))

(assert (= (and setNonEmpty!973 (not condSetEmpty!1012)) setNonEmpty!1012))

(declare-fun m!18462 () Bool)

(assert (=> setNonEmpty!1012 m!18462))

(declare-fun b!44133 () Bool)

(declare-fun setRes!1013 () Bool)

(declare-fun tp!30239 () Bool)

(declare-fun e!24356 () Bool)

(assert (=> b!44133 (= e!24356 (and (inv!976 (_1!574 (_1!575 (h!6084 (t!16391 mapDefault!873))))) setRes!1013 tp!30239))))

(declare-fun condSetEmpty!1013 () Bool)

(assert (=> b!44133 (= condSetEmpty!1013 (= (_2!575 (h!6084 (t!16391 mapDefault!873))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1013 () Bool)

(assert (=> setIsEmpty!1013 setRes!1013))

(declare-fun setNonEmpty!1013 () Bool)

(declare-fun tp!30238 () Bool)

(declare-fun setElem!1013 () Context!174)

(assert (=> setNonEmpty!1013 (= setRes!1013 (and tp!30238 (inv!976 setElem!1013)))))

(declare-fun setRest!1013 () (InoxSet Context!174))

(assert (=> setNonEmpty!1013 (= (_2!575 (h!6084 (t!16391 mapDefault!873))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1013 true) setRest!1013))))

(assert (=> b!43844 (= tp!30190 e!24356)))

(assert (= (and b!44133 condSetEmpty!1013) setIsEmpty!1013))

(assert (= (and b!44133 (not condSetEmpty!1013)) setNonEmpty!1013))

(assert (= (and b!43844 ((_ is Cons!688) (t!16391 mapDefault!873))) b!44133))

(declare-fun m!18464 () Bool)

(assert (=> b!44133 m!18464))

(declare-fun m!18466 () Bool)

(assert (=> setNonEmpty!1013 m!18466))

(declare-fun setIsEmpty!1014 () Bool)

(declare-fun setRes!1015 () Bool)

(assert (=> setIsEmpty!1014 setRes!1015))

(declare-fun mapNonEmpty!875 () Bool)

(declare-fun mapRes!875 () Bool)

(declare-fun tp!30240 () Bool)

(declare-fun e!24357 () Bool)

(assert (=> mapNonEmpty!875 (= mapRes!875 (and tp!30240 e!24357))))

(declare-fun mapValue!875 () List!687)

(declare-fun mapKey!875 () (_ BitVec 32))

(declare-fun mapRest!875 () (Array (_ BitVec 32) List!687))

(assert (=> mapNonEmpty!875 (= mapRest!870 (store mapRest!875 mapKey!875 mapValue!875))))

(declare-fun mapIsEmpty!875 () Bool)

(assert (=> mapIsEmpty!875 mapRes!875))

(declare-fun b!44134 () Bool)

(declare-fun tp!30241 () Bool)

(assert (=> b!44134 (= e!24357 (and setRes!1015 tp!30241))))

(declare-fun condSetEmpty!1014 () Bool)

(assert (=> b!44134 (= condSetEmpty!1014 (= (_1!569 (_1!570 (h!6081 mapValue!875))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setNonEmpty!1014 () Bool)

(declare-fun setRes!1014 () Bool)

(declare-fun tp!30244 () Bool)

(declare-fun setElem!1015 () Context!174)

(assert (=> setNonEmpty!1014 (= setRes!1014 (and tp!30244 (inv!976 setElem!1015)))))

(declare-fun mapDefault!875 () List!687)

(declare-fun setRest!1014 () (InoxSet Context!174))

(assert (=> setNonEmpty!1014 (= (_1!569 (_1!570 (h!6081 mapDefault!875))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1015 true) setRest!1014))))

(declare-fun condMapEmpty!875 () Bool)

(assert (=> mapNonEmpty!870 (= condMapEmpty!875 (= mapRest!870 ((as const (Array (_ BitVec 32) List!687)) mapDefault!875)))))

(declare-fun e!24359 () Bool)

(assert (=> mapNonEmpty!870 (= tp!30172 (and e!24359 mapRes!875))))

(declare-fun b!44135 () Bool)

(declare-fun tp!30242 () Bool)

(assert (=> b!44135 (= e!24359 (and setRes!1014 tp!30242))))

(declare-fun condSetEmpty!1015 () Bool)

(assert (=> b!44135 (= condSetEmpty!1015 (= (_1!569 (_1!570 (h!6081 mapDefault!875))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setNonEmpty!1015 () Bool)

(declare-fun tp!30243 () Bool)

(declare-fun setElem!1014 () Context!174)

(assert (=> setNonEmpty!1015 (= setRes!1015 (and tp!30243 (inv!976 setElem!1014)))))

(declare-fun setRest!1015 () (InoxSet Context!174))

(assert (=> setNonEmpty!1015 (= (_1!569 (_1!570 (h!6081 mapValue!875))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1014 true) setRest!1015))))

(declare-fun setIsEmpty!1015 () Bool)

(assert (=> setIsEmpty!1015 setRes!1014))

(assert (= (and mapNonEmpty!870 condMapEmpty!875) mapIsEmpty!875))

(assert (= (and mapNonEmpty!870 (not condMapEmpty!875)) mapNonEmpty!875))

(assert (= (and b!44134 condSetEmpty!1014) setIsEmpty!1014))

(assert (= (and b!44134 (not condSetEmpty!1014)) setNonEmpty!1015))

(assert (= (and mapNonEmpty!875 ((_ is Cons!685) mapValue!875)) b!44134))

(assert (= (and b!44135 condSetEmpty!1015) setIsEmpty!1015))

(assert (= (and b!44135 (not condSetEmpty!1015)) setNonEmpty!1014))

(assert (= (and mapNonEmpty!870 ((_ is Cons!685) mapDefault!875)) b!44135))

(declare-fun m!18468 () Bool)

(assert (=> mapNonEmpty!875 m!18468))

(declare-fun m!18470 () Bool)

(assert (=> setNonEmpty!1014 m!18470))

(declare-fun m!18472 () Bool)

(assert (=> setNonEmpty!1015 m!18472))

(declare-fun setNonEmpty!1016 () Bool)

(declare-fun setRes!1016 () Bool)

(declare-fun tp!30247 () Bool)

(declare-fun setElem!1017 () Context!174)

(assert (=> setNonEmpty!1016 (= setRes!1016 (and tp!30247 (inv!976 setElem!1017)))))

(declare-fun mapValue!876 () List!689)

(declare-fun setRest!1017 () (InoxSet Context!174))

(assert (=> setNonEmpty!1016 (= (_2!573 (h!6083 mapValue!876)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1017 true) setRest!1017))))

(declare-fun setNonEmpty!1017 () Bool)

(declare-fun setRes!1017 () Bool)

(declare-fun tp!30245 () Bool)

(declare-fun setElem!1016 () Context!174)

(assert (=> setNonEmpty!1017 (= setRes!1017 (and tp!30245 (inv!976 setElem!1016)))))

(declare-fun mapDefault!876 () List!689)

(declare-fun setRest!1016 () (InoxSet Context!174))

(assert (=> setNonEmpty!1017 (= (_2!573 (h!6083 mapDefault!876)) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1016 true) setRest!1016))))

(declare-fun b!44136 () Bool)

(declare-fun tp!30248 () Bool)

(declare-fun e!24364 () Bool)

(assert (=> b!44136 (= e!24364 (and (inv!976 (_2!572 (_1!573 (h!6083 mapValue!876)))) setRes!1016 tp!30248))))

(declare-fun condSetEmpty!1016 () Bool)

(assert (=> b!44136 (= condSetEmpty!1016 (= (_2!573 (h!6083 mapValue!876)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun condMapEmpty!876 () Bool)

(assert (=> mapNonEmpty!867 (= condMapEmpty!876 (= mapRest!867 ((as const (Array (_ BitVec 32) List!689)) mapDefault!876)))))

(declare-fun e!24365 () Bool)

(declare-fun mapRes!876 () Bool)

(assert (=> mapNonEmpty!867 (= tp!30139 (and e!24365 mapRes!876))))

(declare-fun mapNonEmpty!876 () Bool)

(declare-fun tp!30249 () Bool)

(assert (=> mapNonEmpty!876 (= mapRes!876 (and tp!30249 e!24364))))

(declare-fun mapKey!876 () (_ BitVec 32))

(declare-fun mapRest!876 () (Array (_ BitVec 32) List!689))

(assert (=> mapNonEmpty!876 (= mapRest!867 (store mapRest!876 mapKey!876 mapValue!876))))

(declare-fun setIsEmpty!1016 () Bool)

(assert (=> setIsEmpty!1016 setRes!1016))

(declare-fun setIsEmpty!1017 () Bool)

(assert (=> setIsEmpty!1017 setRes!1017))

(declare-fun b!44137 () Bool)

(declare-fun tp!30246 () Bool)

(assert (=> b!44137 (= e!24365 (and (inv!976 (_2!572 (_1!573 (h!6083 mapDefault!876)))) setRes!1017 tp!30246))))

(declare-fun condSetEmpty!1017 () Bool)

(assert (=> b!44137 (= condSetEmpty!1017 (= (_2!573 (h!6083 mapDefault!876)) ((as const (Array Context!174 Bool)) false)))))

(declare-fun mapIsEmpty!876 () Bool)

(assert (=> mapIsEmpty!876 mapRes!876))

(assert (= (and mapNonEmpty!867 condMapEmpty!876) mapIsEmpty!876))

(assert (= (and mapNonEmpty!867 (not condMapEmpty!876)) mapNonEmpty!876))

(assert (= (and b!44136 condSetEmpty!1016) setIsEmpty!1016))

(assert (= (and b!44136 (not condSetEmpty!1016)) setNonEmpty!1016))

(assert (= (and mapNonEmpty!876 ((_ is Cons!687) mapValue!876)) b!44136))

(assert (= (and b!44137 condSetEmpty!1017) setIsEmpty!1017))

(assert (= (and b!44137 (not condSetEmpty!1017)) setNonEmpty!1017))

(assert (= (and mapNonEmpty!867 ((_ is Cons!687) mapDefault!876)) b!44137))

(declare-fun m!18474 () Bool)

(assert (=> b!44136 m!18474))

(declare-fun m!18476 () Bool)

(assert (=> setNonEmpty!1017 m!18476))

(declare-fun m!18478 () Bool)

(assert (=> setNonEmpty!1016 m!18478))

(declare-fun m!18480 () Bool)

(assert (=> mapNonEmpty!876 m!18480))

(declare-fun m!18482 () Bool)

(assert (=> b!44137 m!18482))

(declare-fun b!44158 () Bool)

(declare-fun e!24391 () Bool)

(declare-fun e!24385 () Bool)

(assert (=> b!44158 (= e!24391 e!24385)))

(declare-fun b!44159 () Bool)

(declare-fun e!24386 () Bool)

(declare-fun lt!5517 () MutLongMap!229)

(assert (=> b!44159 (= e!24386 ((_ is LongMap!229) lt!5517))))

(assert (=> b!44159 (= lt!5517 (v!12436 (underlying!654 (cache!710 (_3!164 (lexMem!24 Lexer!56 lt!5180 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))))))

(declare-fun e!24392 () Bool)

(declare-fun e!24388 () Bool)

(assert (=> d!4809 (= true (and e!24392 e!24388 e!24391))))

(declare-fun b!44160 () Bool)

(declare-fun e!24390 () Bool)

(declare-fun lt!5516 () MutLongMap!230)

(assert (=> b!44160 (= e!24390 ((_ is LongMap!230) lt!5516))))

(assert (=> b!44160 (= lt!5516 (v!12438 (underlying!656 (cache!711 (_2!576 (lexMem!24 Lexer!56 lt!5180 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))))))

(declare-fun b!44161 () Bool)

(declare-fun e!24387 () Bool)

(assert (=> b!44161 (= e!24387 e!24386)))

(declare-fun b!44162 () Bool)

(declare-fun e!24389 () Bool)

(assert (=> b!44162 (= e!24385 e!24389)))

(declare-fun b!44163 () Bool)

(declare-fun lt!5515 () MutLongMap!228)

(assert (=> b!44163 (= e!24389 ((_ is LongMap!228) lt!5515))))

(assert (=> b!44163 (= lt!5515 (v!12434 (underlying!652 (cache!709 (_4!33 (lexMem!24 Lexer!56 lt!5180 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))))))

(declare-fun b!44164 () Bool)

(declare-fun e!24393 () Bool)

(assert (=> b!44164 (= e!24393 e!24390)))

(declare-fun b!44165 () Bool)

(assert (=> b!44165 (= e!24388 e!24387)))

(declare-fun b!44166 () Bool)

(assert (=> b!44166 (= e!24392 e!24393)))

(assert (= b!44164 b!44160))

(assert (= (and b!44166 ((_ is HashMap!226) (cache!711 (_2!576 (lexMem!24 Lexer!56 lt!5180 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))) b!44164))

(assert (= d!4809 b!44166))

(assert (= b!44161 b!44159))

(assert (= (and b!44165 ((_ is HashMap!225) (cache!710 (_3!164 (lexMem!24 Lexer!56 lt!5180 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))) b!44161))

(assert (= d!4809 b!44165))

(assert (= b!44162 b!44163))

(assert (= (and b!44158 ((_ is HashMap!224) (cache!709 (_4!33 (lexMem!24 Lexer!56 lt!5180 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))) b!44162))

(assert (= d!4809 b!44158))

(declare-fun condSetEmpty!1018 () Bool)

(assert (=> setNonEmpty!966 (= condSetEmpty!1018 (= setRest!965 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1018 () Bool)

(assert (=> setNonEmpty!966 (= tp!30135 setRes!1018)))

(declare-fun setIsEmpty!1018 () Bool)

(assert (=> setIsEmpty!1018 setRes!1018))

(declare-fun setNonEmpty!1018 () Bool)

(declare-fun tp!30250 () Bool)

(declare-fun setElem!1018 () Context!174)

(assert (=> setNonEmpty!1018 (= setRes!1018 (and tp!30250 (inv!976 setElem!1018)))))

(declare-fun setRest!1018 () (InoxSet Context!174))

(assert (=> setNonEmpty!1018 (= setRest!965 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1018 true) setRest!1018))))

(assert (= (and setNonEmpty!966 condSetEmpty!1018) setIsEmpty!1018))

(assert (= (and setNonEmpty!966 (not condSetEmpty!1018)) setNonEmpty!1018))

(declare-fun m!18484 () Bool)

(assert (=> setNonEmpty!1018 m!18484))

(declare-fun setRes!1019 () Bool)

(declare-fun e!24397 () Bool)

(declare-fun tp!30252 () Bool)

(declare-fun b!44167 () Bool)

(assert (=> b!44167 (= e!24397 (and (inv!976 (_1!574 (_1!575 (h!6084 (t!16391 mapValue!873))))) setRes!1019 tp!30252))))

(declare-fun condSetEmpty!1019 () Bool)

(assert (=> b!44167 (= condSetEmpty!1019 (= (_2!575 (h!6084 (t!16391 mapValue!873))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1019 () Bool)

(assert (=> setIsEmpty!1019 setRes!1019))

(declare-fun setNonEmpty!1019 () Bool)

(declare-fun tp!30251 () Bool)

(declare-fun setElem!1019 () Context!174)

(assert (=> setNonEmpty!1019 (= setRes!1019 (and tp!30251 (inv!976 setElem!1019)))))

(declare-fun setRest!1019 () (InoxSet Context!174))

(assert (=> setNonEmpty!1019 (= (_2!575 (h!6084 (t!16391 mapValue!873))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1019 true) setRest!1019))))

(assert (=> b!43843 (= tp!30193 e!24397)))

(assert (= (and b!44167 condSetEmpty!1019) setIsEmpty!1019))

(assert (= (and b!44167 (not condSetEmpty!1019)) setNonEmpty!1019))

(assert (= (and b!43843 ((_ is Cons!688) (t!16391 mapValue!873))) b!44167))

(declare-fun m!18486 () Bool)

(assert (=> b!44167 m!18486))

(declare-fun m!18488 () Bool)

(assert (=> setNonEmpty!1019 m!18488))

(declare-fun e!24399 () Bool)

(declare-fun tp!30254 () Bool)

(declare-fun setRes!1020 () Bool)

(declare-fun b!44168 () Bool)

(assert (=> b!44168 (= e!24399 (and (inv!976 (_2!572 (_1!573 (h!6083 (t!16390 mapValue!867))))) setRes!1020 tp!30254))))

(declare-fun condSetEmpty!1020 () Bool)

(assert (=> b!44168 (= condSetEmpty!1020 (= (_2!573 (h!6083 (t!16390 mapValue!867))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1020 () Bool)

(assert (=> setIsEmpty!1020 setRes!1020))

(declare-fun setNonEmpty!1020 () Bool)

(declare-fun tp!30253 () Bool)

(declare-fun setElem!1020 () Context!174)

(assert (=> setNonEmpty!1020 (= setRes!1020 (and tp!30253 (inv!976 setElem!1020)))))

(declare-fun setRest!1020 () (InoxSet Context!174))

(assert (=> setNonEmpty!1020 (= (_2!573 (h!6083 (t!16390 mapValue!867))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1020 true) setRest!1020))))

(assert (=> b!43807 (= tp!30138 e!24399)))

(assert (= (and b!44168 condSetEmpty!1020) setIsEmpty!1020))

(assert (= (and b!44168 (not condSetEmpty!1020)) setNonEmpty!1020))

(assert (= (and b!43807 ((_ is Cons!687) (t!16390 mapValue!867))) b!44168))

(declare-fun m!18490 () Bool)

(assert (=> b!44168 m!18490))

(declare-fun m!18492 () Bool)

(assert (=> setNonEmpty!1020 m!18492))

(declare-fun condSetEmpty!1021 () Bool)

(assert (=> setNonEmpty!970 (= condSetEmpty!1021 (= setRest!970 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1021 () Bool)

(assert (=> setNonEmpty!970 (= tp!30146 setRes!1021)))

(declare-fun setIsEmpty!1021 () Bool)

(assert (=> setIsEmpty!1021 setRes!1021))

(declare-fun setNonEmpty!1021 () Bool)

(declare-fun tp!30255 () Bool)

(declare-fun setElem!1021 () Context!174)

(assert (=> setNonEmpty!1021 (= setRes!1021 (and tp!30255 (inv!976 setElem!1021)))))

(declare-fun setRest!1021 () (InoxSet Context!174))

(assert (=> setNonEmpty!1021 (= setRest!970 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1021 true) setRest!1021))))

(assert (= (and setNonEmpty!970 condSetEmpty!1021) setIsEmpty!1021))

(assert (= (and setNonEmpty!970 (not condSetEmpty!1021)) setNonEmpty!1021))

(declare-fun m!18494 () Bool)

(assert (=> setNonEmpty!1021 m!18494))

(declare-fun setRes!1022 () Bool)

(declare-fun b!44169 () Bool)

(declare-fun tp!30257 () Bool)

(declare-fun e!24404 () Bool)

(assert (=> b!44169 (= e!24404 (and (inv!976 (_1!574 (_1!575 (h!6084 (t!16391 mapDefault!864))))) setRes!1022 tp!30257))))

(declare-fun condSetEmpty!1022 () Bool)

(assert (=> b!44169 (= condSetEmpty!1022 (= (_2!575 (h!6084 (t!16391 mapDefault!864))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1022 () Bool)

(assert (=> setIsEmpty!1022 setRes!1022))

(declare-fun setNonEmpty!1022 () Bool)

(declare-fun tp!30256 () Bool)

(declare-fun setElem!1022 () Context!174)

(assert (=> setNonEmpty!1022 (= setRes!1022 (and tp!30256 (inv!976 setElem!1022)))))

(declare-fun setRest!1022 () (InoxSet Context!174))

(assert (=> setNonEmpty!1022 (= (_2!575 (h!6084 (t!16391 mapDefault!864))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1022 true) setRest!1022))))

(assert (=> b!43814 (= tp!30147 e!24404)))

(assert (= (and b!44169 condSetEmpty!1022) setIsEmpty!1022))

(assert (= (and b!44169 (not condSetEmpty!1022)) setNonEmpty!1022))

(assert (= (and b!43814 ((_ is Cons!688) (t!16391 mapDefault!864))) b!44169))

(declare-fun m!18496 () Bool)

(assert (=> b!44169 m!18496))

(declare-fun m!18498 () Bool)

(assert (=> setNonEmpty!1022 m!18498))

(declare-fun condSetEmpty!1023 () Bool)

(assert (=> setNonEmpty!972 (= condSetEmpty!1023 (= setRest!972 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1023 () Bool)

(assert (=> setNonEmpty!972 (= tp!30156 setRes!1023)))

(declare-fun setIsEmpty!1023 () Bool)

(assert (=> setIsEmpty!1023 setRes!1023))

(declare-fun setNonEmpty!1023 () Bool)

(declare-fun tp!30258 () Bool)

(declare-fun setElem!1023 () Context!174)

(assert (=> setNonEmpty!1023 (= setRes!1023 (and tp!30258 (inv!976 setElem!1023)))))

(declare-fun setRest!1023 () (InoxSet Context!174))

(assert (=> setNonEmpty!1023 (= setRest!972 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1023 true) setRest!1023))))

(assert (= (and setNonEmpty!972 condSetEmpty!1023) setIsEmpty!1023))

(assert (= (and setNonEmpty!972 (not condSetEmpty!1023)) setNonEmpty!1023))

(declare-fun m!18500 () Bool)

(assert (=> setNonEmpty!1023 m!18500))

(declare-fun condSetEmpty!1024 () Bool)

(assert (=> setNonEmpty!959 (= condSetEmpty!1024 (= setRest!959 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1024 () Bool)

(assert (=> setNonEmpty!959 (= tp!30122 setRes!1024)))

(declare-fun setIsEmpty!1024 () Bool)

(assert (=> setIsEmpty!1024 setRes!1024))

(declare-fun setNonEmpty!1024 () Bool)

(declare-fun tp!30259 () Bool)

(declare-fun setElem!1024 () Context!174)

(assert (=> setNonEmpty!1024 (= setRes!1024 (and tp!30259 (inv!976 setElem!1024)))))

(declare-fun setRest!1024 () (InoxSet Context!174))

(assert (=> setNonEmpty!1024 (= setRest!959 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1024 true) setRest!1024))))

(assert (= (and setNonEmpty!959 condSetEmpty!1024) setIsEmpty!1024))

(assert (= (and setNonEmpty!959 (not condSetEmpty!1024)) setNonEmpty!1024))

(declare-fun m!18502 () Bool)

(assert (=> setNonEmpty!1024 m!18502))

(declare-fun tp!30260 () Bool)

(declare-fun tp!30261 () Bool)

(declare-fun b!44170 () Bool)

(declare-fun e!24407 () Bool)

(assert (=> b!44170 (= e!24407 (and (inv!970 (left!551 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) tp!30260 (inv!970 (right!881 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) tp!30261))))

(declare-fun b!44171 () Bool)

(assert (=> b!44171 (= e!24407 (inv!977 (xs!2708 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))))

(assert (=> b!43826 (= tp!30160 (and (inv!970 (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) e!24407))))

(assert (= (and b!43826 ((_ is Node!129) (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) b!44170))

(assert (= (and b!43826 ((_ is Leaf!322) (left!551 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) b!44171))

(declare-fun m!18504 () Bool)

(assert (=> b!44170 m!18504))

(declare-fun m!18506 () Bool)

(assert (=> b!44170 m!18506))

(declare-fun m!18508 () Bool)

(assert (=> b!44171 m!18508))

(assert (=> b!43826 m!17685))

(declare-fun tp!30263 () Bool)

(declare-fun tp!30262 () Bool)

(declare-fun b!44172 () Bool)

(declare-fun e!24409 () Bool)

(assert (=> b!44172 (= e!24409 (and (inv!970 (left!551 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) tp!30262 (inv!970 (right!881 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) tp!30263))))

(declare-fun b!44173 () Bool)

(assert (=> b!44173 (= e!24409 (inv!977 (xs!2708 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))))))

(assert (=> b!43826 (= tp!30161 (and (inv!970 (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45)))) e!24409))))

(assert (= (and b!43826 ((_ is Node!129) (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) b!44172))

(assert (= (and b!43826 ((_ is Leaf!322) (right!881 (c!15986 (totalInput!1530 cacheFurthestNullable!45))))) b!44173))

(declare-fun m!18510 () Bool)

(assert (=> b!44172 m!18510))

(declare-fun m!18512 () Bool)

(assert (=> b!44172 m!18512))

(declare-fun m!18514 () Bool)

(assert (=> b!44173 m!18514))

(assert (=> b!43826 m!17687))

(declare-fun condSetEmpty!1025 () Bool)

(assert (=> setNonEmpty!967 (= condSetEmpty!1025 (= setRest!967 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1025 () Bool)

(assert (=> setNonEmpty!967 (= tp!30140 setRes!1025)))

(declare-fun setIsEmpty!1025 () Bool)

(assert (=> setIsEmpty!1025 setRes!1025))

(declare-fun setNonEmpty!1025 () Bool)

(declare-fun tp!30264 () Bool)

(declare-fun setElem!1025 () Context!174)

(assert (=> setNonEmpty!1025 (= setRes!1025 (and tp!30264 (inv!976 setElem!1025)))))

(declare-fun setRest!1025 () (InoxSet Context!174))

(assert (=> setNonEmpty!1025 (= setRest!967 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1025 true) setRest!1025))))

(assert (= (and setNonEmpty!967 condSetEmpty!1025) setIsEmpty!1025))

(assert (= (and setNonEmpty!967 (not condSetEmpty!1025)) setNonEmpty!1025))

(declare-fun m!18516 () Bool)

(assert (=> setNonEmpty!1025 m!18516))

(declare-fun condSetEmpty!1026 () Bool)

(assert (=> setNonEmpty!979 (= condSetEmpty!1026 (= setRest!979 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1026 () Bool)

(assert (=> setNonEmpty!979 (= tp!30175 setRes!1026)))

(declare-fun setIsEmpty!1026 () Bool)

(assert (=> setIsEmpty!1026 setRes!1026))

(declare-fun setNonEmpty!1026 () Bool)

(declare-fun tp!30265 () Bool)

(declare-fun setElem!1026 () Context!174)

(assert (=> setNonEmpty!1026 (= setRes!1026 (and tp!30265 (inv!976 setElem!1026)))))

(declare-fun setRest!1026 () (InoxSet Context!174))

(assert (=> setNonEmpty!1026 (= setRest!979 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1026 true) setRest!1026))))

(assert (= (and setNonEmpty!979 condSetEmpty!1026) setIsEmpty!1026))

(assert (= (and setNonEmpty!979 (not condSetEmpty!1026)) setNonEmpty!1026))

(declare-fun m!18518 () Bool)

(assert (=> setNonEmpty!1026 m!18518))

(declare-fun condSetEmpty!1027 () Bool)

(assert (=> setNonEmpty!956 (= condSetEmpty!1027 (= setRest!956 ((as const (Array Context!174 Bool)) false)))))

(declare-fun setRes!1027 () Bool)

(assert (=> setNonEmpty!956 (= tp!30115 setRes!1027)))

(declare-fun setIsEmpty!1027 () Bool)

(assert (=> setIsEmpty!1027 setRes!1027))

(declare-fun setNonEmpty!1027 () Bool)

(declare-fun tp!30266 () Bool)

(declare-fun setElem!1027 () Context!174)

(assert (=> setNonEmpty!1027 (= setRes!1027 (and tp!30266 (inv!976 setElem!1027)))))

(declare-fun setRest!1027 () (InoxSet Context!174))

(assert (=> setNonEmpty!1027 (= setRest!956 ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1027 true) setRest!1027))))

(assert (= (and setNonEmpty!956 condSetEmpty!1027) setIsEmpty!1027))

(assert (= (and setNonEmpty!956 (not condSetEmpty!1027)) setNonEmpty!1027))

(declare-fun m!18520 () Bool)

(assert (=> setNonEmpty!1027 m!18520))

(declare-fun b!44174 () Bool)

(declare-fun tp!30268 () Bool)

(declare-fun setRes!1028 () Bool)

(declare-fun e!24415 () Bool)

(assert (=> b!44174 (= e!24415 (and (inv!976 (_2!572 (_1!573 (h!6083 (t!16390 (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))))))) setRes!1028 tp!30268))))

(declare-fun condSetEmpty!1028 () Bool)

(assert (=> b!44174 (= condSetEmpty!1028 (= (_2!573 (h!6083 (t!16390 (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1028 () Bool)

(assert (=> setIsEmpty!1028 setRes!1028))

(declare-fun setNonEmpty!1028 () Bool)

(declare-fun tp!30267 () Bool)

(declare-fun setElem!1028 () Context!174)

(assert (=> setNonEmpty!1028 (= setRes!1028 (and tp!30267 (inv!976 setElem!1028)))))

(declare-fun setRest!1028 () (InoxSet Context!174))

(assert (=> setNonEmpty!1028 (= (_2!573 (h!6083 (t!16390 (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1028 true) setRest!1028))))

(assert (=> b!43791 (= tp!30116 e!24415)))

(assert (= (and b!44174 condSetEmpty!1028) setIsEmpty!1028))

(assert (= (and b!44174 (not condSetEmpty!1028)) setNonEmpty!1028))

(assert (= (and b!43791 ((_ is Cons!687) (t!16390 (minValue!485 (v!12435 (underlying!653 (v!12436 (underlying!654 (cache!710 cacheDown!333))))))))) b!44174))

(declare-fun m!18522 () Bool)

(assert (=> b!44174 m!18522))

(declare-fun m!18524 () Bool)

(assert (=> setNonEmpty!1028 m!18524))

(declare-fun b!44177 () Bool)

(declare-fun e!24419 () Bool)

(assert (=> b!44177 (= e!24419 true)))

(declare-fun b!44176 () Bool)

(declare-fun e!24418 () Bool)

(assert (=> b!44176 (= e!24418 e!24419)))

(declare-fun b!44175 () Bool)

(declare-fun e!24417 () Bool)

(assert (=> b!44175 (= e!24417 e!24418)))

(assert (=> b!43798 e!24417))

(assert (= b!44176 b!44177))

(assert (= b!44175 b!44176))

(assert (= (and b!43798 ((_ is Cons!683) (t!16386 (t!16386 lt!5180)))) b!44175))

(assert (=> b!44177 (< (dynLambda!82 order!127 (toValue!642 (transformation!163 (h!6079 (t!16386 (t!16386 lt!5180)))))) (dynLambda!83 order!129 lambda!746))))

(assert (=> b!44177 (< (dynLambda!84 order!131 (toChars!501 (transformation!163 (h!6079 (t!16386 (t!16386 lt!5180)))))) (dynLambda!83 order!129 lambda!746))))

(declare-fun b!44178 () Bool)

(declare-fun e!24420 () Bool)

(declare-fun setRes!1029 () Bool)

(declare-fun tp!30269 () Bool)

(assert (=> b!44178 (= e!24420 (and setRes!1029 tp!30269))))

(declare-fun condSetEmpty!1029 () Bool)

(assert (=> b!44178 (= condSetEmpty!1029 (= (_1!569 (_1!570 (h!6081 (t!16388 mapDefault!870)))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1029 () Bool)

(assert (=> setIsEmpty!1029 setRes!1029))

(declare-fun setNonEmpty!1029 () Bool)

(declare-fun tp!30270 () Bool)

(declare-fun setElem!1029 () Context!174)

(assert (=> setNonEmpty!1029 (= setRes!1029 (and tp!30270 (inv!976 setElem!1029)))))

(declare-fun setRest!1029 () (InoxSet Context!174))

(assert (=> setNonEmpty!1029 (= (_1!569 (_1!570 (h!6081 (t!16388 mapDefault!870)))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1029 true) setRest!1029))))

(assert (=> b!43835 (= tp!30174 e!24420)))

(assert (= (and b!44178 condSetEmpty!1029) setIsEmpty!1029))

(assert (= (and b!44178 (not condSetEmpty!1029)) setNonEmpty!1029))

(assert (= (and b!43835 ((_ is Cons!685) (t!16388 mapDefault!870))) b!44178))

(declare-fun m!18526 () Bool)

(assert (=> setNonEmpty!1029 m!18526))

(declare-fun setRes!1030 () Bool)

(declare-fun e!24424 () Bool)

(declare-fun tp!30272 () Bool)

(declare-fun b!44179 () Bool)

(assert (=> b!44179 (= e!24424 (and (inv!976 (_1!574 (_1!575 (h!6084 (t!16391 (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))))))) setRes!1030 tp!30272))))

(declare-fun condSetEmpty!1030 () Bool)

(assert (=> b!44179 (= condSetEmpty!1030 (= (_2!575 (h!6084 (t!16391 (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1030 () Bool)

(assert (=> setIsEmpty!1030 setRes!1030))

(declare-fun setNonEmpty!1030 () Bool)

(declare-fun tp!30271 () Bool)

(declare-fun setElem!1030 () Context!174)

(assert (=> setNonEmpty!1030 (= setRes!1030 (and tp!30271 (inv!976 setElem!1030)))))

(declare-fun setRest!1030 () (InoxSet Context!174))

(assert (=> setNonEmpty!1030 (= (_2!575 (h!6084 (t!16391 (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1030 true) setRest!1030))))

(assert (=> b!43824 (= tp!30157 e!24424)))

(assert (= (and b!44179 condSetEmpty!1030) setIsEmpty!1030))

(assert (= (and b!44179 (not condSetEmpty!1030)) setNonEmpty!1030))

(assert (= (and b!43824 ((_ is Cons!688) (t!16391 (minValue!486 (v!12437 (underlying!655 (v!12438 (underlying!656 (cache!711 cacheUp!320))))))))) b!44179))

(declare-fun m!18528 () Bool)

(assert (=> b!44179 m!18528))

(declare-fun m!18530 () Bool)

(assert (=> setNonEmpty!1030 m!18530))

(declare-fun b!44180 () Bool)

(declare-fun e!24425 () Bool)

(declare-fun setRes!1031 () Bool)

(declare-fun tp!30273 () Bool)

(assert (=> b!44180 (= e!24425 (and setRes!1031 tp!30273))))

(declare-fun condSetEmpty!1031 () Bool)

(assert (=> b!44180 (= condSetEmpty!1031 (= (_1!569 (_1!570 (h!6081 (t!16388 (zeroValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45)))))))))) ((as const (Array Context!174 Bool)) false)))))

(declare-fun setIsEmpty!1031 () Bool)

(assert (=> setIsEmpty!1031 setRes!1031))

(declare-fun setNonEmpty!1031 () Bool)

(declare-fun tp!30274 () Bool)

(declare-fun setElem!1031 () Context!174)

(assert (=> setNonEmpty!1031 (= setRes!1031 (and tp!30274 (inv!976 setElem!1031)))))

(declare-fun setRest!1031 () (InoxSet Context!174))

(assert (=> setNonEmpty!1031 (= (_1!569 (_1!570 (h!6081 (t!16388 (zeroValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45)))))))))) ((_ map or) (store ((as const (Array Context!174 Bool)) false) setElem!1031 true) setRest!1031))))

(assert (=> b!43796 (= tp!30121 e!24425)))

(assert (= (and b!44180 condSetEmpty!1031) setIsEmpty!1031))

(assert (= (and b!44180 (not condSetEmpty!1031)) setNonEmpty!1031))

(assert (= (and b!43796 ((_ is Cons!685) (t!16388 (zeroValue!484 (v!12433 (underlying!651 (v!12434 (underlying!652 (cache!709 cacheFurthestNullable!45))))))))) b!44180))

(declare-fun m!18532 () Bool)

(assert (=> setNonEmpty!1031 m!18532))

(declare-fun b_lambda!247 () Bool)

(assert (= b_lambda!245 (or b!43660 b_lambda!247)))

(declare-fun bs!6205 () Bool)

(declare-fun d!5079 () Bool)

(assert (= bs!6205 (and d!5079 b!43660)))

(assert (=> bs!6205 (= (dynLambda!85 lambda!746 (h!6082 (t!16389 lt!5193))) (rulesProduceIndividualToken!5 Lexer!56 lt!5180 (h!6082 (t!16389 lt!5193))))))

(declare-fun m!18534 () Bool)

(assert (=> bs!6205 m!18534))

(assert (=> b!44107 d!5079))

(check-sat (not d!4935) (not b!44033) (not setNonEmpty!1013) (not b!44090) (not d!5023) (not b!44137) (not b!44054) (not d!4941) (not b_lambda!247) (not b!43877) (not d!4899) (not b!44172) (not d!5025) (not setNonEmpty!1005) (not d!4907) (not b!44115) (not b!44135) (not d!5061) (not b!44108) (not b!43862) (not b!44045) (not setNonEmpty!999) (not setNonEmpty!1031) (not b!43885) (not b!44005) (not b!43989) (not b!43886) (not b!43826) (not d!4891) (not d!4939) (not setNonEmpty!1008) (not mapNonEmpty!875) (not b!44017) (not d!4947) (not d!4897) b_and!1113 (not b!44008) (not b!44134) (not b!44066) (not d!4937) (not b!44104) (not b!44130) (not b!43953) (not setNonEmpty!994) (not d!5067) (not d!4883) (not b!43938) (not b!44124) (not b!44118) (not b!44096) (not mapNonEmpty!876) (not b!44031) (not b!44114) (not setNonEmpty!992) (not b!44051) (not d!4975) (not b!43982) (not b!43861) (not b!44046) (not setNonEmpty!990) (not b!44060) (not b!43951) (not b!43967) (not b!43899) (not d!4901) (not d!5065) (not d!4959) (not b!44117) (not b!44038) (not d!4961) (not b_next!1083) (not d!4995) (not b!44101) (not b!44170) (not b!43915) (not b_next!1085) (not b!44042) (not b!43860) (not d!5077) (not setNonEmpty!1004) (not d!4915) (not d!4983) (not d!4867) (not setNonEmpty!1012) (not b!44010) (not b!44098) (not d!4895) (not b!44179) (not b!44022) (not setNonEmpty!1002) (not b!44032) (not d!4913) (not bs!6205) (not b!43910) (not d!5069) (not b!44052) (not b_next!1081) (not d!4977) (not d!4985) (not b!43859) (not b!43923) (not d!5057) (not b!44180) (not d!5051) (not setNonEmpty!1009) (not d!4933) (not d!5037) (not setNonEmpty!1000) (not b!44023) (not b!44097) (not b!43858) (not b!43957) (not d!4955) (not d!4993) (not d!4981) (not b!44123) (not setNonEmpty!996) (not setNonEmpty!1001) (not b!43975) (not d!5019) b_and!1119 (not b!44122) (not d!4885) (not b!44169) (not b!44173) (not setNonEmpty!997) (not d!5017) (not d!4943) (not setNonEmpty!1027) (not d!4957) (not setNonEmpty!1017) (not d!4979) (not b!43911) (not d!4931) (not d!5033) (not d!4889) (not setNonEmpty!991) (not setNonEmpty!1016) (not d!4919) (not b!44061) (not setNonEmpty!995) (not b!44103) (not b!43821) (not b!43887) (not d!5011) (not b!44002) (not b!44034) (not d!4951) (not setNonEmpty!1010) (not d!5049) (not b!44003) (not b!44035) (not b!44020) (not b!43868) (not mapNonEmpty!874) (not d!5043) (not b_next!1079) (not b_next!1077) (not b!44126) b_and!1111 (not setNonEmpty!1030) (not d!5035) (not d!4865) (not b!44028) (not b!44029) (not b!43922) (not b!44039) (not d!4903) (not d!4873) (not setNonEmpty!1020) (not d!4987) (not setNonEmpty!1007) (not setNonEmpty!1006) (not d!4881) (not b!44025) (not b!43971) (not b!43947) (not setNonEmpty!1021) (not b!44125) (not b!44121) (not b!44174) (not b!44133) (not b!44136) (not d!5021) (not b!44113) (not setNonEmpty!1022) (not b!44094) (not b!44016) (not b!43952) (not b!43898) (not b!43973) (not setNonEmpty!1015) (not d!5045) (not b!43914) (not d!4909) (not setNonEmpty!1026) (not d!4967) (not d!4923) (not d!4991) (not d!4893) (not d!4875) (not b!43942) (not d!5055) (not setNonEmpty!1019) (not b!43939) b_and!1115 (not setNonEmpty!1029) (not d!5039) (not b!43972) (not b!43988) (not d!4927) (not b!44131) (not setNonEmpty!1003) (not b!44093) (not b!44128) (not d!5063) (not b!43940) (not d!5003) (not d!5053) (not b!44168) (not b!44175) (not b!43956) (not setNonEmpty!1023) (not b!44092) (not setNonEmpty!993) (not b!43966) (not b!44106) (not b!44129) (not b!44030) (not setNonEmpty!1028) (not d!5041) (not b!44132) (not b!44007) (not b!44127) (not d!4949) (not setNonEmpty!1014) (not d!5047) (not d!4945) (not d!4887) (not setNonEmpty!1018) (not d!4929) (not b!44067) (not b!43950) (not d!4953) (not d!5007) (not d!4997) (not d!5013) (not b!43968) (not b!44109) (not b_lambda!243) b_and!1117 (not b!43948) (not b!43983) (not d!4869) (not d!4917) (not d!5015) (not b!44178) (not d!4911) (not setNonEmpty!1025) (not setNonEmpty!998) (not b!43863) (not b!44116) (not d!5059) (not b_next!1087) (not d!5071) (not b!44171) (not b!44167) (not d!4999) (not setNonEmpty!1024) b_and!1121 (not setNonEmpty!1011) (not d!4921) (not d!5073))
(check-sat b_and!1113 (not b_next!1083) (not b_next!1085) (not b_next!1081) b_and!1119 b_and!1115 b_and!1117 (not b_next!1087) b_and!1121 (not b_next!1079) (not b_next!1077) b_and!1111)
