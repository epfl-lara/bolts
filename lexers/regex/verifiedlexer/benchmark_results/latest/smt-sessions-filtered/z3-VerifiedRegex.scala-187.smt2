; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2380 () Bool)

(assert start!2380)

(declare-fun b!41820 () Bool)

(declare-fun b_free!957 () Bool)

(declare-fun b_next!957 () Bool)

(assert (=> b!41820 (= b_free!957 (not b_next!957))))

(declare-fun tp!28892 () Bool)

(declare-fun b_and!991 () Bool)

(assert (=> b!41820 (= tp!28892 b_and!991)))

(declare-fun b!41812 () Bool)

(declare-fun b_free!959 () Bool)

(declare-fun b_next!959 () Bool)

(assert (=> b!41812 (= b_free!959 (not b_next!959))))

(declare-fun tp!28878 () Bool)

(declare-fun b_and!993 () Bool)

(assert (=> b!41812 (= tp!28878 b_and!993)))

(declare-fun b!41833 () Bool)

(declare-fun b_free!961 () Bool)

(declare-fun b_next!961 () Bool)

(assert (=> b!41833 (= b_free!961 (not b_next!961))))

(declare-fun tp!28872 () Bool)

(declare-fun b_and!995 () Bool)

(assert (=> b!41833 (= tp!28872 b_and!995)))

(declare-fun b!41837 () Bool)

(declare-fun b_free!963 () Bool)

(declare-fun b_next!963 () Bool)

(assert (=> b!41837 (= b_free!963 (not b_next!963))))

(declare-fun tp!28870 () Bool)

(declare-fun b_and!997 () Bool)

(assert (=> b!41837 (= tp!28870 b_and!997)))

(declare-fun b!41818 () Bool)

(declare-fun b_free!965 () Bool)

(declare-fun b_next!965 () Bool)

(assert (=> b!41818 (= b_free!965 (not b_next!965))))

(declare-fun tp!28873 () Bool)

(declare-fun b_and!999 () Bool)

(assert (=> b!41818 (= tp!28873 b_and!999)))

(declare-fun b!41821 () Bool)

(declare-fun b_free!967 () Bool)

(declare-fun b_next!967 () Bool)

(assert (=> b!41821 (= b_free!967 (not b_next!967))))

(declare-fun tp!28891 () Bool)

(declare-fun b_and!1001 () Bool)

(assert (=> b!41821 (= tp!28891 b_and!1001)))

(declare-fun e!22163 () Bool)

(declare-fun e!22166 () Bool)

(assert (=> b!41812 (= e!22163 (and e!22166 tp!28878))))

(declare-fun b!41813 () Bool)

(declare-fun e!22161 () Bool)

(declare-datatypes ((Regex!219 0))(
  ( (ElementMatch!219 (c!15860 (_ BitVec 16))) (Concat!364 (regOne!950 Regex!219) (regTwo!950 Regex!219)) (EmptyExpr!219) (Star!219 (reg!548 Regex!219)) (EmptyLang!219) (Union!219 (regOne!951 Regex!219) (regTwo!951 Regex!219)) )
))
(declare-datatypes ((List!616 0))(
  ( (Nil!614) (Cons!614 (h!6010 Regex!219) (t!16130 List!616)) )
))
(declare-datatypes ((Context!154 0))(
  ( (Context!155 (exprs!577 List!616)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!222 0))(
  ( (tuple3!223 (_1!490 (InoxSet Context!154)) (_2!490 Int) (_3!136 Int)) )
))
(declare-datatypes ((tuple2!708 0))(
  ( (tuple2!709 (_1!491 tuple3!222) (_2!491 Int)) )
))
(declare-datatypes ((List!617 0))(
  ( (Nil!615) (Cons!615 (h!6011 tuple2!708) (t!16131 List!617)) )
))
(declare-datatypes ((List!618 0))(
  ( (Nil!616) (Cons!616 (h!6012 (_ BitVec 16)) (t!16132 List!618)) )
))
(declare-datatypes ((IArray!225 0))(
  ( (IArray!226 (innerList!170 List!618)) )
))
(declare-datatypes ((Conc!112 0))(
  ( (Node!112 (left!523 Conc!112) (right!853 Conc!112) (csize!454 Int) (cheight!323 Int)) (Leaf!300 (xs!2691 IArray!225) (csize!455 Int)) (Empty!112) )
))
(declare-datatypes ((BalanceConc!224 0))(
  ( (BalanceConc!225 (c!15861 Conc!112)) )
))
(declare-datatypes ((array!660 0))(
  ( (array!661 (arr!331 (Array (_ BitVec 32) (_ BitVec 64))) (size!616 (_ BitVec 32))) )
))
(declare-datatypes ((array!662 0))(
  ( (array!663 (arr!332 (Array (_ BitVec 32) List!617)) (size!617 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!400 0))(
  ( (LongMapFixedSize!401 (defaultEntry!538 Int) (mask!911 (_ BitVec 32)) (extraKeys!446 (_ BitVec 32)) (zeroValue!456 List!617) (minValue!456 List!617) (_size!532 (_ BitVec 32)) (_keys!491 array!660) (_values!478 array!662) (_vacant!260 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!196 0))(
  ( (HashableExt!195 (__x!1070 Int)) )
))
(declare-datatypes ((Cell!789 0))(
  ( (Cell!790 (v!12375 LongMapFixedSize!400)) )
))
(declare-datatypes ((MutLongMap!200 0))(
  ( (LongMap!200 (underlying!595 Cell!789)) (MutLongMapExt!199 (__x!1071 Int)) )
))
(declare-datatypes ((Cell!791 0))(
  ( (Cell!792 (v!12376 MutLongMap!200)) )
))
(declare-datatypes ((MutableMap!196 0))(
  ( (MutableMapExt!195 (__x!1072 Int)) (HashMap!196 (underlying!596 Cell!791) (hashF!2064 Hashable!196) (_size!533 (_ BitVec 32)) (defaultValue!345 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!82 0))(
  ( (CacheFurthestNullable!83 (cache!681 MutableMap!196) (totalInput!1518 BalanceConc!224)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!82)

(declare-fun tp!28887 () Bool)

(declare-fun inv!901 (Conc!112) Bool)

(assert (=> b!41813 (= e!22161 (and (inv!901 (c!15861 (totalInput!1518 cacheFurthestNullable!45))) tp!28887))))

(declare-fun b!41814 () Bool)

(declare-fun res!29692 () Bool)

(declare-fun e!22157 () Bool)

(assert (=> b!41814 (=> (not res!29692) (not e!22157))))

(declare-datatypes ((TokenValue!145 0))(
  ( (FloatLiteralValue!290 (text!1460 List!618)) (TokenValueExt!144 (__x!1073 Int)) (Broken!725 (value!7198 List!618)) (Object!146) (End!145) (Def!145) (Underscore!145) (Match!145) (Else!145) (Error!145) (Case!145) (If!145) (Extends!145) (Abstract!145) (Class!145) (Val!145) (DelimiterValue!290 (del!205 List!618)) (KeywordValue!151 (value!7199 List!618)) (CommentValue!290 (value!7200 List!618)) (WhitespaceValue!290 (value!7201 List!618)) (IndentationValue!145 (value!7202 List!618)) (String!1016) (Int32!145) (Broken!726 (value!7203 List!618)) (Boolean!146) (Unit!275) (OperatorValue!148 (op!205 List!618)) (IdentifierValue!290 (value!7204 List!618)) (IdentifierValue!291 (value!7205 List!618)) (WhitespaceValue!291 (value!7206 List!618)) (True!290) (False!290) (Broken!727 (value!7207 List!618)) (Broken!728 (value!7208 List!618)) (True!291) (RightBrace!145) (RightBracket!145) (Colon!145) (Null!145) (Comma!145) (LeftBracket!145) (False!291) (LeftBrace!145) (ImaginaryLiteralValue!145 (text!1461 List!618)) (StringLiteralValue!435 (value!7209 List!618)) (EOFValue!145 (value!7210 List!618)) (IdentValue!145 (value!7211 List!618)) (DelimiterValue!291 (value!7212 List!618)) (DedentValue!145 (value!7213 List!618)) (NewLineValue!145 (value!7214 List!618)) (IntegerValue!435 (value!7215 (_ BitVec 32)) (text!1462 List!618)) (IntegerValue!436 (value!7216 Int) (text!1463 List!618)) (Times!145) (Or!145) (Equal!145) (Minus!145) (Broken!729 (value!7217 List!618)) (And!145) (Div!145) (LessEqual!145) (Mod!145) (Concat!365) (Not!145) (Plus!145) (SpaceValue!145 (value!7218 List!618)) (IntegerValue!437 (value!7219 Int) (text!1464 List!618)) (StringLiteralValue!436 (text!1465 List!618)) (FloatLiteralValue!291 (text!1466 List!618)) (BytesLiteralValue!145 (value!7220 List!618)) (CommentValue!291 (value!7221 List!618)) (StringLiteralValue!437 (value!7222 List!618)) (ErrorTokenValue!145 (msg!206 List!618)) )
))
(declare-datatypes ((String!1017 0))(
  ( (String!1018 (value!7223 String)) )
))
(declare-datatypes ((TokenValueInjection!114 0))(
  ( (TokenValueInjection!115 (toValue!634 Int) (toChars!493 Int)) )
))
(declare-datatypes ((Rule!110 0))(
  ( (Rule!111 (regex!155 Regex!219) (tag!333 String!1017) (isSeparator!155 Bool) (transformation!155 TokenValueInjection!114)) )
))
(declare-datatypes ((List!619 0))(
  ( (Nil!617) (Cons!617 (h!6013 Rule!110) (t!16133 List!619)) )
))
(declare-fun lt!4494 () List!619)

(declare-datatypes ((LexerInterface!50 0))(
  ( (LexerInterfaceExt!47 (__x!1074 Int)) (Lexer!48) )
))
(declare-fun rulesInvariant!42 (LexerInterface!50 List!619) Bool)

(assert (=> b!41814 (= res!29692 (rulesInvariant!42 Lexer!48 lt!4494))))

(declare-fun b!41815 () Bool)

(declare-fun res!29693 () Bool)

(assert (=> b!41815 (=> (not res!29693) (not e!22157))))

(declare-fun valid!187 (CacheFurthestNullable!82) Bool)

(assert (=> b!41815 (= res!29693 (valid!187 cacheFurthestNullable!45))))

(declare-fun b!41816 () Bool)

(declare-fun e!22139 () Bool)

(declare-fun e!22149 () Bool)

(assert (=> b!41816 (= e!22139 e!22149)))

(declare-fun b!41817 () Bool)

(declare-fun e!22164 () Bool)

(assert (=> b!41817 (= e!22157 e!22164)))

(declare-fun res!29691 () Bool)

(assert (=> b!41817 (=> (not res!29691) (not e!22164))))

(declare-datatypes ((tuple2!710 0))(
  ( (tuple2!711 (_1!492 Context!154) (_2!492 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!197 0))(
  ( (HashableExt!196 (__x!1075 Int)) )
))
(declare-datatypes ((tuple2!712 0))(
  ( (tuple2!713 (_1!493 tuple2!710) (_2!493 (InoxSet Context!154))) )
))
(declare-datatypes ((List!620 0))(
  ( (Nil!618) (Cons!618 (h!6014 tuple2!712) (t!16134 List!620)) )
))
(declare-datatypes ((array!664 0))(
  ( (array!665 (arr!333 (Array (_ BitVec 32) List!620)) (size!618 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!402 0))(
  ( (LongMapFixedSize!403 (defaultEntry!539 Int) (mask!912 (_ BitVec 32)) (extraKeys!447 (_ BitVec 32)) (zeroValue!457 List!620) (minValue!457 List!620) (_size!534 (_ BitVec 32)) (_keys!492 array!660) (_values!479 array!664) (_vacant!261 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!793 0))(
  ( (Cell!794 (v!12377 LongMapFixedSize!402)) )
))
(declare-datatypes ((MutLongMap!201 0))(
  ( (LongMap!201 (underlying!597 Cell!793)) (MutLongMapExt!200 (__x!1076 Int)) )
))
(declare-datatypes ((Cell!795 0))(
  ( (Cell!796 (v!12378 MutLongMap!201)) )
))
(declare-datatypes ((MutableMap!197 0))(
  ( (MutableMapExt!196 (__x!1077 Int)) (HashMap!197 (underlying!598 Cell!795) (hashF!2065 Hashable!197) (_size!535 (_ BitVec 32)) (defaultValue!346 Int)) )
))
(declare-datatypes ((CacheUp!132 0))(
  ( (CacheUp!133 (cache!682 MutableMap!197)) )
))
(declare-datatypes ((Token!76 0))(
  ( (Token!77 (value!7224 TokenValue!145) (rule!631 Rule!110) (size!619 Int) (originalCharacters!209 List!618)) )
))
(declare-datatypes ((List!621 0))(
  ( (Nil!619) (Cons!619 (h!6015 Token!76) (t!16135 List!621)) )
))
(declare-datatypes ((IArray!227 0))(
  ( (IArray!228 (innerList!171 List!621)) )
))
(declare-datatypes ((Conc!113 0))(
  ( (Node!113 (left!524 Conc!113) (right!854 Conc!113) (csize!456 Int) (cheight!324 Int)) (Leaf!301 (xs!2692 IArray!227) (csize!457 Int)) (Empty!113) )
))
(declare-datatypes ((BalanceConc!226 0))(
  ( (BalanceConc!227 (c!15862 Conc!113)) )
))
(declare-datatypes ((tuple2!714 0))(
  ( (tuple2!715 (_1!494 BalanceConc!226) (_2!494 BalanceConc!224)) )
))
(declare-datatypes ((tuple3!224 0))(
  ( (tuple3!225 (_1!495 Regex!219) (_2!495 Context!154) (_3!137 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!716 0))(
  ( (tuple2!717 (_1!496 tuple3!224) (_2!496 (InoxSet Context!154))) )
))
(declare-datatypes ((List!622 0))(
  ( (Nil!620) (Cons!620 (h!6016 tuple2!716) (t!16136 List!622)) )
))
(declare-datatypes ((array!666 0))(
  ( (array!667 (arr!334 (Array (_ BitVec 32) List!622)) (size!620 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!404 0))(
  ( (LongMapFixedSize!405 (defaultEntry!540 Int) (mask!913 (_ BitVec 32)) (extraKeys!448 (_ BitVec 32)) (zeroValue!458 List!622) (minValue!458 List!622) (_size!536 (_ BitVec 32)) (_keys!493 array!660) (_values!480 array!666) (_vacant!262 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!797 0))(
  ( (Cell!798 (v!12379 LongMapFixedSize!404)) )
))
(declare-datatypes ((MutLongMap!202 0))(
  ( (LongMap!202 (underlying!599 Cell!797)) (MutLongMapExt!201 (__x!1078 Int)) )
))
(declare-datatypes ((Cell!799 0))(
  ( (Cell!800 (v!12380 MutLongMap!202)) )
))
(declare-datatypes ((Hashable!198 0))(
  ( (HashableExt!197 (__x!1079 Int)) )
))
(declare-datatypes ((MutableMap!198 0))(
  ( (MutableMapExt!197 (__x!1080 Int)) (HashMap!198 (underlying!600 Cell!799) (hashF!2066 Hashable!198) (_size!537 (_ BitVec 32)) (defaultValue!347 Int)) )
))
(declare-datatypes ((CacheDown!134 0))(
  ( (CacheDown!135 (cache!683 MutableMap!198)) )
))
(declare-datatypes ((tuple4!50 0))(
  ( (tuple4!51 (_1!497 tuple2!714) (_2!497 CacheUp!132) (_3!138 CacheDown!134) (_4!25 CacheFurthestNullable!82)) )
))
(declare-fun lt!4490 () tuple4!50)

(declare-fun lt!4489 () tuple2!714)

(declare-fun list!154 (BalanceConc!226) List!621)

(assert (=> b!41817 (= res!29691 (= (list!154 (_1!494 (_1!497 lt!4490))) (list!154 (_1!494 lt!4489))))))

(declare-fun input!525 () BalanceConc!224)

(declare-fun lex!24 (LexerInterface!50 List!619 BalanceConc!224) tuple2!714)

(assert (=> b!41817 (= lt!4489 (lex!24 Lexer!48 lt!4494 input!525))))

(declare-datatypes ((Unit!276 0))(
  ( (Unit!277) )
))
(declare-fun lt!4488 () Unit!276)

(declare-fun lemmaInvariant!39 (CacheDown!134) Unit!276)

(assert (=> b!41817 (= lt!4488 (lemmaInvariant!39 (_3!138 lt!4490)))))

(declare-fun lt!4491 () Unit!276)

(declare-fun lemmaInvariant!40 (CacheUp!132) Unit!276)

(assert (=> b!41817 (= lt!4491 (lemmaInvariant!40 (_2!497 lt!4490)))))

(declare-fun cacheUp!320 () CacheUp!132)

(declare-fun cacheDown!333 () CacheDown!134)

(declare-fun lexMem!18 (LexerInterface!50 List!619 BalanceConc!224 CacheUp!132 CacheDown!134 CacheFurthestNullable!82) tuple4!50)

(assert (=> b!41817 (= lt!4490 (lexMem!18 Lexer!48 lt!4494 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun mapIsEmpty!724 () Bool)

(declare-fun mapRes!725 () Bool)

(assert (=> mapIsEmpty!724 mapRes!725))

(declare-fun res!29694 () Bool)

(assert (=> start!2380 (=> (not res!29694) (not e!22157))))

(declare-fun isEmpty!123 (List!619) Bool)

(assert (=> start!2380 (= res!29694 (not (isEmpty!123 lt!4494)))))

(declare-datatypes ((JsonLexer!62 0))(
  ( (JsonLexer!63) )
))
(declare-fun rules!109 (JsonLexer!62) List!619)

(assert (=> start!2380 (= lt!4494 (rules!109 JsonLexer!63))))

(assert (=> start!2380 e!22157))

(declare-fun e!22158 () Bool)

(declare-fun inv!902 (CacheDown!134) Bool)

(assert (=> start!2380 (and (inv!902 cacheDown!333) e!22158)))

(declare-fun e!22156 () Bool)

(declare-fun inv!903 (BalanceConc!224) Bool)

(assert (=> start!2380 (and (inv!903 input!525) e!22156)))

(declare-fun e!22147 () Bool)

(declare-fun inv!904 (CacheFurthestNullable!82) Bool)

(assert (=> start!2380 (and (inv!904 cacheFurthestNullable!45) e!22147)))

(declare-fun e!22151 () Bool)

(declare-fun inv!905 (CacheUp!132) Bool)

(assert (=> start!2380 (and (inv!905 cacheUp!320) e!22151)))

(declare-fun tp!28874 () Bool)

(declare-fun tp!28886 () Bool)

(declare-fun e!22153 () Bool)

(declare-fun array_inv!216 (array!660) Bool)

(declare-fun array_inv!217 (array!664) Bool)

(assert (=> b!41818 (= e!22149 (and tp!28873 tp!28874 tp!28886 (array_inv!216 (_keys!492 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320))))))) (array_inv!217 (_values!479 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320))))))) e!22153))))

(declare-fun b!41819 () Bool)

(declare-fun e!22160 () Bool)

(declare-fun e!22141 () Bool)

(assert (=> b!41819 (= e!22160 e!22141)))

(declare-fun tp!28890 () Bool)

(declare-fun tp!28882 () Bool)

(declare-fun e!22154 () Bool)

(declare-fun e!22155 () Bool)

(declare-fun array_inv!218 (array!662) Bool)

(assert (=> b!41820 (= e!22155 (and tp!28892 tp!28890 tp!28882 (array_inv!216 (_keys!491 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))) (array_inv!218 (_values!478 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))) e!22154))))

(declare-fun e!22145 () Bool)

(declare-fun e!22144 () Bool)

(assert (=> b!41821 (= e!22145 (and e!22144 tp!28891))))

(declare-fun mapIsEmpty!725 () Bool)

(declare-fun mapRes!724 () Bool)

(assert (=> mapIsEmpty!725 mapRes!724))

(declare-fun b!41822 () Bool)

(declare-fun list!155 (BalanceConc!224) List!618)

(assert (=> b!41822 (= e!22164 (not (= (list!155 (_2!494 (_1!497 lt!4490))) (list!155 (_2!494 lt!4489)))))))

(declare-fun b!41823 () Bool)

(declare-fun e!22159 () Bool)

(declare-fun e!22140 () Bool)

(assert (=> b!41823 (= e!22159 e!22140)))

(declare-fun mapIsEmpty!726 () Bool)

(declare-fun mapRes!726 () Bool)

(assert (=> mapIsEmpty!726 mapRes!726))

(declare-fun mapNonEmpty!724 () Bool)

(declare-fun tp!28888 () Bool)

(declare-fun tp!28884 () Bool)

(assert (=> mapNonEmpty!724 (= mapRes!724 (and tp!28888 tp!28884))))

(declare-fun mapRest!724 () (Array (_ BitVec 32) List!617))

(declare-fun mapKey!725 () (_ BitVec 32))

(declare-fun mapValue!724 () List!617)

(assert (=> mapNonEmpty!724 (= (arr!332 (_values!478 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))) (store mapRest!724 mapKey!725 mapValue!724))))

(declare-fun b!41824 () Bool)

(declare-fun e!22165 () Bool)

(assert (=> b!41824 (= e!22165 e!22160)))

(declare-fun b!41825 () Bool)

(declare-fun res!29690 () Bool)

(assert (=> b!41825 (=> (not res!29690) (not e!22157))))

(declare-fun valid!188 (CacheDown!134) Bool)

(assert (=> b!41825 (= res!29690 (valid!188 cacheDown!333))))

(declare-fun b!41826 () Bool)

(declare-fun tp!28883 () Bool)

(assert (=> b!41826 (= e!22154 (and tp!28883 mapRes!724))))

(declare-fun condMapEmpty!726 () Bool)

(declare-fun mapDefault!724 () List!617)

(assert (=> b!41826 (= condMapEmpty!726 (= (arr!332 (_values!478 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!617)) mapDefault!724)))))

(declare-fun b!41827 () Bool)

(assert (=> b!41827 (= e!22147 (and e!22145 (inv!903 (totalInput!1518 cacheFurthestNullable!45)) e!22161))))

(declare-fun b!41828 () Bool)

(declare-fun res!29688 () Bool)

(assert (=> b!41828 (=> (not res!29688) (not e!22157))))

(assert (=> b!41828 (= res!29688 (= (totalInput!1518 cacheFurthestNullable!45) input!525))))

(declare-fun b!41829 () Bool)

(declare-fun e!22150 () Bool)

(assert (=> b!41829 (= e!22158 e!22150)))

(declare-fun b!41830 () Bool)

(assert (=> b!41830 (= e!22151 e!22163)))

(declare-fun b!41831 () Bool)

(declare-fun res!29689 () Bool)

(assert (=> b!41831 (=> (not res!29689) (not e!22157))))

(declare-fun valid!189 (CacheUp!132) Bool)

(assert (=> b!41831 (= res!29689 (valid!189 cacheUp!320))))

(declare-fun b!41832 () Bool)

(declare-fun e!22142 () Bool)

(declare-fun tp!28889 () Bool)

(assert (=> b!41832 (= e!22142 (and tp!28889 mapRes!725))))

(declare-fun condMapEmpty!725 () Bool)

(declare-fun mapDefault!725 () List!622)

(assert (=> b!41832 (= condMapEmpty!725 (= (arr!334 (_values!480 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!622)) mapDefault!725)))))

(declare-fun tp!28877 () Bool)

(declare-fun tp!28880 () Bool)

(declare-fun array_inv!219 (array!666) Bool)

(assert (=> b!41833 (= e!22141 (and tp!28872 tp!28877 tp!28880 (array_inv!216 (_keys!493 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333))))))) (array_inv!219 (_values!480 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333))))))) e!22142))))

(declare-fun b!41834 () Bool)

(assert (=> b!41834 (= e!22140 e!22155)))

(declare-fun mapNonEmpty!725 () Bool)

(declare-fun tp!28875 () Bool)

(declare-fun tp!28879 () Bool)

(assert (=> mapNonEmpty!725 (= mapRes!726 (and tp!28875 tp!28879))))

(declare-fun mapValue!725 () List!620)

(declare-fun mapKey!726 () (_ BitVec 32))

(declare-fun mapRest!726 () (Array (_ BitVec 32) List!620))

(assert (=> mapNonEmpty!725 (= (arr!333 (_values!479 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320))))))) (store mapRest!726 mapKey!726 mapValue!725))))

(declare-fun b!41835 () Bool)

(declare-fun tp!28876 () Bool)

(assert (=> b!41835 (= e!22153 (and tp!28876 mapRes!726))))

(declare-fun condMapEmpty!724 () Bool)

(declare-fun mapDefault!726 () List!620)

(assert (=> b!41835 (= condMapEmpty!724 (= (arr!333 (_values!479 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!620)) mapDefault!726)))))

(declare-fun b!41836 () Bool)

(declare-fun e!22152 () Bool)

(assert (=> b!41836 (= e!22152 e!22139)))

(declare-fun e!22162 () Bool)

(assert (=> b!41837 (= e!22150 (and e!22162 tp!28870))))

(declare-fun b!41838 () Bool)

(declare-fun tp!28881 () Bool)

(assert (=> b!41838 (= e!22156 (and (inv!901 (c!15861 input!525)) tp!28881))))

(declare-fun b!41839 () Bool)

(declare-fun lt!4487 () MutLongMap!200)

(get-info :version)

(assert (=> b!41839 (= e!22144 (and e!22159 ((_ is LongMap!200) lt!4487)))))

(assert (=> b!41839 (= lt!4487 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))

(declare-fun mapNonEmpty!726 () Bool)

(declare-fun tp!28885 () Bool)

(declare-fun tp!28871 () Bool)

(assert (=> mapNonEmpty!726 (= mapRes!725 (and tp!28885 tp!28871))))

(declare-fun mapValue!726 () List!622)

(declare-fun mapKey!724 () (_ BitVec 32))

(declare-fun mapRest!725 () (Array (_ BitVec 32) List!622))

(assert (=> mapNonEmpty!726 (= (arr!334 (_values!480 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333))))))) (store mapRest!725 mapKey!724 mapValue!726))))

(declare-fun b!41840 () Bool)

(declare-fun lt!4492 () MutLongMap!201)

(assert (=> b!41840 (= e!22166 (and e!22152 ((_ is LongMap!201) lt!4492)))))

(assert (=> b!41840 (= lt!4492 (v!12378 (underlying!598 (cache!682 cacheUp!320))))))

(declare-fun b!41841 () Bool)

(declare-fun lt!4493 () MutLongMap!202)

(assert (=> b!41841 (= e!22162 (and e!22165 ((_ is LongMap!202) lt!4493)))))

(assert (=> b!41841 (= lt!4493 (v!12380 (underlying!600 (cache!683 cacheDown!333))))))

(assert (= (and start!2380 res!29694) b!41814))

(assert (= (and b!41814 res!29692) b!41831))

(assert (= (and b!41831 res!29689) b!41825))

(assert (= (and b!41825 res!29690) b!41815))

(assert (= (and b!41815 res!29693) b!41828))

(assert (= (and b!41828 res!29688) b!41817))

(assert (= (and b!41817 res!29691) b!41822))

(assert (= (and b!41832 condMapEmpty!725) mapIsEmpty!724))

(assert (= (and b!41832 (not condMapEmpty!725)) mapNonEmpty!726))

(assert (= b!41833 b!41832))

(assert (= b!41819 b!41833))

(assert (= b!41824 b!41819))

(assert (= (and b!41841 ((_ is LongMap!202) (v!12380 (underlying!600 (cache!683 cacheDown!333))))) b!41824))

(assert (= b!41837 b!41841))

(assert (= (and b!41829 ((_ is HashMap!198) (cache!683 cacheDown!333))) b!41837))

(assert (= start!2380 b!41829))

(assert (= start!2380 b!41838))

(assert (= (and b!41826 condMapEmpty!726) mapIsEmpty!725))

(assert (= (and b!41826 (not condMapEmpty!726)) mapNonEmpty!724))

(assert (= b!41820 b!41826))

(assert (= b!41834 b!41820))

(assert (= b!41823 b!41834))

(assert (= (and b!41839 ((_ is LongMap!200) (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))) b!41823))

(assert (= b!41821 b!41839))

(assert (= (and b!41827 ((_ is HashMap!196) (cache!681 cacheFurthestNullable!45))) b!41821))

(assert (= b!41827 b!41813))

(assert (= start!2380 b!41827))

(assert (= (and b!41835 condMapEmpty!724) mapIsEmpty!726))

(assert (= (and b!41835 (not condMapEmpty!724)) mapNonEmpty!725))

(assert (= b!41818 b!41835))

(assert (= b!41816 b!41818))

(assert (= b!41836 b!41816))

(assert (= (and b!41840 ((_ is LongMap!201) (v!12378 (underlying!598 (cache!682 cacheUp!320))))) b!41836))

(assert (= b!41812 b!41840))

(assert (= (and b!41830 ((_ is HashMap!197) (cache!682 cacheUp!320))) b!41812))

(assert (= start!2380 b!41830))

(declare-fun m!15134 () Bool)

(assert (=> b!41822 m!15134))

(declare-fun m!15136 () Bool)

(assert (=> b!41822 m!15136))

(declare-fun m!15138 () Bool)

(assert (=> b!41825 m!15138))

(declare-fun m!15140 () Bool)

(assert (=> b!41815 m!15140))

(declare-fun m!15142 () Bool)

(assert (=> mapNonEmpty!725 m!15142))

(declare-fun m!15144 () Bool)

(assert (=> b!41817 m!15144))

(declare-fun m!15146 () Bool)

(assert (=> b!41817 m!15146))

(declare-fun m!15148 () Bool)

(assert (=> b!41817 m!15148))

(declare-fun m!15150 () Bool)

(assert (=> b!41817 m!15150))

(declare-fun m!15152 () Bool)

(assert (=> b!41817 m!15152))

(declare-fun m!15154 () Bool)

(assert (=> b!41817 m!15154))

(declare-fun m!15156 () Bool)

(assert (=> b!41831 m!15156))

(declare-fun m!15158 () Bool)

(assert (=> b!41820 m!15158))

(declare-fun m!15160 () Bool)

(assert (=> b!41820 m!15160))

(declare-fun m!15162 () Bool)

(assert (=> b!41813 m!15162))

(declare-fun m!15164 () Bool)

(assert (=> mapNonEmpty!726 m!15164))

(declare-fun m!15166 () Bool)

(assert (=> start!2380 m!15166))

(declare-fun m!15168 () Bool)

(assert (=> start!2380 m!15168))

(declare-fun m!15170 () Bool)

(assert (=> start!2380 m!15170))

(declare-fun m!15172 () Bool)

(assert (=> start!2380 m!15172))

(declare-fun m!15174 () Bool)

(assert (=> start!2380 m!15174))

(declare-fun m!15176 () Bool)

(assert (=> start!2380 m!15176))

(declare-fun m!15178 () Bool)

(assert (=> b!41838 m!15178))

(declare-fun m!15180 () Bool)

(assert (=> b!41833 m!15180))

(declare-fun m!15182 () Bool)

(assert (=> b!41833 m!15182))

(declare-fun m!15184 () Bool)

(assert (=> mapNonEmpty!724 m!15184))

(declare-fun m!15186 () Bool)

(assert (=> b!41827 m!15186))

(declare-fun m!15188 () Bool)

(assert (=> b!41814 m!15188))

(declare-fun m!15190 () Bool)

(assert (=> b!41818 m!15190))

(declare-fun m!15192 () Bool)

(assert (=> b!41818 m!15192))

(check-sat (not b!41820) (not b_next!961) (not b!41813) (not start!2380) b_and!1001 b_and!999 (not b_next!967) (not b!41826) (not b_next!963) b_and!991 (not mapNonEmpty!726) b_and!997 (not b!41814) (not mapNonEmpty!725) (not b!41832) b_and!995 (not b!41831) (not mapNonEmpty!724) (not b!41833) (not b!41827) (not b!41825) (not b!41822) (not b_next!959) (not b!41838) (not b!41817) b_and!993 (not b_next!965) (not b!41835) (not b!41818) (not b_next!957) (not b!41815))
(check-sat b_and!995 (not b_next!959) (not b_next!961) b_and!1001 b_and!999 (not b_next!967) (not b_next!963) (not b_next!957) b_and!991 b_and!997 b_and!993 (not b_next!965))
(get-model)

(declare-fun d!4302 () Bool)

(assert (=> d!4302 (= (array_inv!216 (_keys!493 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333))))))) (bvsge (size!616 (_keys!493 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!41833 d!4302))

(declare-fun d!4304 () Bool)

(assert (=> d!4304 (= (array_inv!219 (_values!480 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333))))))) (bvsge (size!620 (_values!480 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!41833 d!4304))

(declare-fun d!4306 () Bool)

(declare-fun validCacheMapFurthestNullable!7 (MutableMap!196 BalanceConc!224) Bool)

(assert (=> d!4306 (= (valid!187 cacheFurthestNullable!45) (validCacheMapFurthestNullable!7 (cache!681 cacheFurthestNullable!45) (totalInput!1518 cacheFurthestNullable!45)))))

(declare-fun bs!5093 () Bool)

(assert (= bs!5093 d!4306))

(declare-fun m!15194 () Bool)

(assert (=> bs!5093 m!15194))

(assert (=> b!41815 d!4306))

(declare-fun d!4308 () Bool)

(declare-fun res!29697 () Bool)

(declare-fun e!22169 () Bool)

(assert (=> d!4308 (=> (not res!29697) (not e!22169))))

(declare-fun rulesValid!11 (LexerInterface!50 List!619) Bool)

(assert (=> d!4308 (= res!29697 (rulesValid!11 Lexer!48 lt!4494))))

(assert (=> d!4308 (= (rulesInvariant!42 Lexer!48 lt!4494) e!22169)))

(declare-fun b!41844 () Bool)

(declare-datatypes ((List!623 0))(
  ( (Nil!621) (Cons!621 (h!6017 String!1017) (t!16137 List!623)) )
))
(declare-fun noDuplicateTag!11 (LexerInterface!50 List!619 List!623) Bool)

(assert (=> b!41844 (= e!22169 (noDuplicateTag!11 Lexer!48 lt!4494 Nil!621))))

(assert (= (and d!4308 res!29697) b!41844))

(declare-fun m!15196 () Bool)

(assert (=> d!4308 m!15196))

(declare-fun m!15198 () Bool)

(assert (=> b!41844 m!15198))

(assert (=> b!41814 d!4308))

(declare-fun d!4310 () Bool)

(declare-fun validCacheMapUp!13 (MutableMap!197) Bool)

(assert (=> d!4310 (= (valid!189 cacheUp!320) (validCacheMapUp!13 (cache!682 cacheUp!320)))))

(declare-fun bs!5094 () Bool)

(assert (= bs!5094 d!4310))

(declare-fun m!15200 () Bool)

(assert (=> bs!5094 m!15200))

(assert (=> b!41831 d!4310))

(declare-fun d!4312 () Bool)

(declare-fun list!156 (Conc!112) List!618)

(assert (=> d!4312 (= (list!155 (_2!494 (_1!497 lt!4490))) (list!156 (c!15861 (_2!494 (_1!497 lt!4490)))))))

(declare-fun bs!5095 () Bool)

(assert (= bs!5095 d!4312))

(declare-fun m!15202 () Bool)

(assert (=> bs!5095 m!15202))

(assert (=> b!41822 d!4312))

(declare-fun d!4314 () Bool)

(assert (=> d!4314 (= (list!155 (_2!494 lt!4489)) (list!156 (c!15861 (_2!494 lt!4489))))))

(declare-fun bs!5096 () Bool)

(assert (= bs!5096 d!4314))

(declare-fun m!15204 () Bool)

(assert (=> bs!5096 m!15204))

(assert (=> b!41822 d!4314))

(declare-fun d!4316 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!62) Rule!110)

(declare-fun integerLiteralRule!0 (JsonLexer!62) Rule!110)

(declare-fun floatLiteralRule!0 (JsonLexer!62) Rule!110)

(declare-fun trueRule!0 (JsonLexer!62) Rule!110)

(declare-fun falseRule!0 (JsonLexer!62) Rule!110)

(declare-fun nullRule!0 (JsonLexer!62) Rule!110)

(declare-fun jsonstringRule!0 (JsonLexer!62) Rule!110)

(declare-fun lBraceRule!0 (JsonLexer!62) Rule!110)

(declare-fun rBraceRule!0 (JsonLexer!62) Rule!110)

(declare-fun lBracketRule!0 (JsonLexer!62) Rule!110)

(declare-fun rBracketRule!0 (JsonLexer!62) Rule!110)

(declare-fun colonRule!0 (JsonLexer!62) Rule!110)

(declare-fun commaRule!0 (JsonLexer!62) Rule!110)

(declare-fun eofRule!0 (JsonLexer!62) Rule!110)

(assert (=> d!4316 (= (rules!109 JsonLexer!63) (Cons!617 (whitespaceRule!0 JsonLexer!63) (Cons!617 (integerLiteralRule!0 JsonLexer!63) (Cons!617 (floatLiteralRule!0 JsonLexer!63) (Cons!617 (trueRule!0 JsonLexer!63) (Cons!617 (falseRule!0 JsonLexer!63) (Cons!617 (nullRule!0 JsonLexer!63) (Cons!617 (jsonstringRule!0 JsonLexer!63) (Cons!617 (lBraceRule!0 JsonLexer!63) (Cons!617 (rBraceRule!0 JsonLexer!63) (Cons!617 (lBracketRule!0 JsonLexer!63) (Cons!617 (rBracketRule!0 JsonLexer!63) (Cons!617 (colonRule!0 JsonLexer!63) (Cons!617 (commaRule!0 JsonLexer!63) (Cons!617 (eofRule!0 JsonLexer!63) Nil!617)))))))))))))))))

(declare-fun bs!5097 () Bool)

(assert (= bs!5097 d!4316))

(declare-fun m!15206 () Bool)

(assert (=> bs!5097 m!15206))

(declare-fun m!15208 () Bool)

(assert (=> bs!5097 m!15208))

(declare-fun m!15210 () Bool)

(assert (=> bs!5097 m!15210))

(declare-fun m!15212 () Bool)

(assert (=> bs!5097 m!15212))

(declare-fun m!15214 () Bool)

(assert (=> bs!5097 m!15214))

(declare-fun m!15216 () Bool)

(assert (=> bs!5097 m!15216))

(declare-fun m!15218 () Bool)

(assert (=> bs!5097 m!15218))

(declare-fun m!15220 () Bool)

(assert (=> bs!5097 m!15220))

(declare-fun m!15222 () Bool)

(assert (=> bs!5097 m!15222))

(declare-fun m!15224 () Bool)

(assert (=> bs!5097 m!15224))

(declare-fun m!15226 () Bool)

(assert (=> bs!5097 m!15226))

(declare-fun m!15228 () Bool)

(assert (=> bs!5097 m!15228))

(declare-fun m!15230 () Bool)

(assert (=> bs!5097 m!15230))

(declare-fun m!15232 () Bool)

(assert (=> bs!5097 m!15232))

(assert (=> start!2380 d!4316))

(declare-fun d!4318 () Bool)

(declare-fun res!29700 () Bool)

(declare-fun e!22172 () Bool)

(assert (=> d!4318 (=> (not res!29700) (not e!22172))))

(assert (=> d!4318 (= res!29700 ((_ is HashMap!198) (cache!683 cacheDown!333)))))

(assert (=> d!4318 (= (inv!902 cacheDown!333) e!22172)))

(declare-fun b!41847 () Bool)

(declare-fun validCacheMapDown!15 (MutableMap!198) Bool)

(assert (=> b!41847 (= e!22172 (validCacheMapDown!15 (cache!683 cacheDown!333)))))

(assert (= (and d!4318 res!29700) b!41847))

(declare-fun m!15234 () Bool)

(assert (=> b!41847 m!15234))

(assert (=> start!2380 d!4318))

(declare-fun d!4320 () Bool)

(declare-fun isBalanced!18 (Conc!112) Bool)

(assert (=> d!4320 (= (inv!903 input!525) (isBalanced!18 (c!15861 input!525)))))

(declare-fun bs!5098 () Bool)

(assert (= bs!5098 d!4320))

(declare-fun m!15236 () Bool)

(assert (=> bs!5098 m!15236))

(assert (=> start!2380 d!4320))

(declare-fun d!4322 () Bool)

(declare-fun res!29703 () Bool)

(declare-fun e!22175 () Bool)

(assert (=> d!4322 (=> (not res!29703) (not e!22175))))

(assert (=> d!4322 (= res!29703 ((_ is HashMap!196) (cache!681 cacheFurthestNullable!45)))))

(assert (=> d!4322 (= (inv!904 cacheFurthestNullable!45) e!22175)))

(declare-fun b!41850 () Bool)

(assert (=> b!41850 (= e!22175 (validCacheMapFurthestNullable!7 (cache!681 cacheFurthestNullable!45) (totalInput!1518 cacheFurthestNullable!45)))))

(assert (= (and d!4322 res!29703) b!41850))

(assert (=> b!41850 m!15194))

(assert (=> start!2380 d!4322))

(declare-fun d!4324 () Bool)

(declare-fun res!29706 () Bool)

(declare-fun e!22178 () Bool)

(assert (=> d!4324 (=> (not res!29706) (not e!22178))))

(assert (=> d!4324 (= res!29706 ((_ is HashMap!197) (cache!682 cacheUp!320)))))

(assert (=> d!4324 (= (inv!905 cacheUp!320) e!22178)))

(declare-fun b!41853 () Bool)

(assert (=> b!41853 (= e!22178 (validCacheMapUp!13 (cache!682 cacheUp!320)))))

(assert (= (and d!4324 res!29706) b!41853))

(assert (=> b!41853 m!15200))

(assert (=> start!2380 d!4324))

(declare-fun d!4326 () Bool)

(assert (=> d!4326 (= (isEmpty!123 lt!4494) ((_ is Nil!617) lt!4494))))

(assert (=> start!2380 d!4326))

(declare-fun d!4328 () Bool)

(declare-fun c!15865 () Bool)

(assert (=> d!4328 (= c!15865 ((_ is Node!112) (c!15861 (totalInput!1518 cacheFurthestNullable!45))))))

(declare-fun e!22183 () Bool)

(assert (=> d!4328 (= (inv!901 (c!15861 (totalInput!1518 cacheFurthestNullable!45))) e!22183)))

(declare-fun b!41860 () Bool)

(declare-fun inv!906 (Conc!112) Bool)

(assert (=> b!41860 (= e!22183 (inv!906 (c!15861 (totalInput!1518 cacheFurthestNullable!45))))))

(declare-fun b!41861 () Bool)

(declare-fun e!22184 () Bool)

(assert (=> b!41861 (= e!22183 e!22184)))

(declare-fun res!29709 () Bool)

(assert (=> b!41861 (= res!29709 (not ((_ is Leaf!300) (c!15861 (totalInput!1518 cacheFurthestNullable!45)))))))

(assert (=> b!41861 (=> res!29709 e!22184)))

(declare-fun b!41862 () Bool)

(declare-fun inv!907 (Conc!112) Bool)

(assert (=> b!41862 (= e!22184 (inv!907 (c!15861 (totalInput!1518 cacheFurthestNullable!45))))))

(assert (= (and d!4328 c!15865) b!41860))

(assert (= (and d!4328 (not c!15865)) b!41861))

(assert (= (and b!41861 (not res!29709)) b!41862))

(declare-fun m!15238 () Bool)

(assert (=> b!41860 m!15238))

(declare-fun m!15240 () Bool)

(assert (=> b!41862 m!15240))

(assert (=> b!41813 d!4328))

(declare-fun d!4330 () Bool)

(declare-fun c!15866 () Bool)

(assert (=> d!4330 (= c!15866 ((_ is Node!112) (c!15861 input!525)))))

(declare-fun e!22185 () Bool)

(assert (=> d!4330 (= (inv!901 (c!15861 input!525)) e!22185)))

(declare-fun b!41863 () Bool)

(assert (=> b!41863 (= e!22185 (inv!906 (c!15861 input!525)))))

(declare-fun b!41864 () Bool)

(declare-fun e!22186 () Bool)

(assert (=> b!41864 (= e!22185 e!22186)))

(declare-fun res!29710 () Bool)

(assert (=> b!41864 (= res!29710 (not ((_ is Leaf!300) (c!15861 input!525))))))

(assert (=> b!41864 (=> res!29710 e!22186)))

(declare-fun b!41865 () Bool)

(assert (=> b!41865 (= e!22186 (inv!907 (c!15861 input!525)))))

(assert (= (and d!4330 c!15866) b!41863))

(assert (= (and d!4330 (not c!15866)) b!41864))

(assert (= (and b!41864 (not res!29710)) b!41865))

(declare-fun m!15242 () Bool)

(assert (=> b!41863 m!15242))

(declare-fun m!15244 () Bool)

(assert (=> b!41865 m!15244))

(assert (=> b!41838 d!4330))

(declare-fun d!4332 () Bool)

(assert (=> d!4332 (= (array_inv!216 (_keys!491 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))) (bvsge (size!616 (_keys!491 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!41820 d!4332))

(declare-fun d!4334 () Bool)

(assert (=> d!4334 (= (array_inv!218 (_values!478 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))) (bvsge (size!617 (_values!478 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!41820 d!4334))

(declare-fun d!4336 () Bool)

(assert (=> d!4336 (= (inv!903 (totalInput!1518 cacheFurthestNullable!45)) (isBalanced!18 (c!15861 (totalInput!1518 cacheFurthestNullable!45))))))

(declare-fun bs!5099 () Bool)

(assert (= bs!5099 d!4336))

(declare-fun m!15246 () Bool)

(assert (=> bs!5099 m!15246))

(assert (=> b!41827 d!4336))

(declare-fun d!4338 () Bool)

(assert (=> d!4338 (= (array_inv!216 (_keys!492 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320))))))) (bvsge (size!616 (_keys!492 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!41818 d!4338))

(declare-fun d!4340 () Bool)

(assert (=> d!4340 (= (array_inv!217 (_values!479 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320))))))) (bvsge (size!618 (_values!479 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!41818 d!4340))

(declare-fun d!4342 () Bool)

(assert (=> d!4342 (= (valid!188 cacheDown!333) (validCacheMapDown!15 (cache!683 cacheDown!333)))))

(declare-fun bs!5100 () Bool)

(assert (= bs!5100 d!4342))

(assert (=> bs!5100 m!15234))

(assert (=> b!41825 d!4342))

(declare-fun d!4344 () Bool)

(assert (=> d!4344 (valid!188 (_3!138 lt!4490))))

(declare-fun Unit!278 () Unit!276)

(assert (=> d!4344 (= (lemmaInvariant!39 (_3!138 lt!4490)) Unit!278)))

(declare-fun bs!5101 () Bool)

(assert (= bs!5101 d!4344))

(declare-fun m!15248 () Bool)

(assert (=> bs!5101 m!15248))

(assert (=> b!41817 d!4344))

(declare-fun b!41876 () Bool)

(declare-fun res!29718 () Bool)

(declare-fun e!22193 () Bool)

(assert (=> b!41876 (=> (not res!29718) (not e!22193))))

(declare-fun lt!4497 () tuple2!714)

(declare-datatypes ((tuple2!718 0))(
  ( (tuple2!719 (_1!498 List!621) (_2!498 List!618)) )
))
(declare-fun lexList!8 (LexerInterface!50 List!619 List!618) tuple2!718)

(assert (=> b!41876 (= res!29718 (= (list!154 (_1!494 lt!4497)) (_1!498 (lexList!8 Lexer!48 lt!4494 (list!155 input!525)))))))

(declare-fun b!41877 () Bool)

(assert (=> b!41877 (= e!22193 (= (list!155 (_2!494 lt!4497)) (_2!498 (lexList!8 Lexer!48 lt!4494 (list!155 input!525)))))))

(declare-fun b!41878 () Bool)

(declare-fun e!22194 () Bool)

(assert (=> b!41878 (= e!22194 (= (_2!494 lt!4497) input!525))))

(declare-fun b!41879 () Bool)

(declare-fun e!22195 () Bool)

(declare-fun isEmpty!124 (BalanceConc!226) Bool)

(assert (=> b!41879 (= e!22195 (not (isEmpty!124 (_1!494 lt!4497))))))

(declare-fun b!41880 () Bool)

(assert (=> b!41880 (= e!22194 e!22195)))

(declare-fun res!29717 () Bool)

(declare-fun size!621 (BalanceConc!224) Int)

(assert (=> b!41880 (= res!29717 (< (size!621 (_2!494 lt!4497)) (size!621 input!525)))))

(assert (=> b!41880 (=> (not res!29717) (not e!22195))))

(declare-fun d!4346 () Bool)

(assert (=> d!4346 e!22193))

(declare-fun res!29719 () Bool)

(assert (=> d!4346 (=> (not res!29719) (not e!22193))))

(assert (=> d!4346 (= res!29719 e!22194)))

(declare-fun c!15870 () Bool)

(declare-fun size!622 (BalanceConc!226) Int)

(assert (=> d!4346 (= c!15870 (> (size!622 (_1!494 lt!4497)) 0))))

(declare-fun lexTailRecV2!5 (LexerInterface!50 List!619 BalanceConc!224 BalanceConc!224 BalanceConc!224 BalanceConc!226) tuple2!714)

(assert (=> d!4346 (= lt!4497 (lexTailRecV2!5 Lexer!48 lt!4494 input!525 (BalanceConc!225 Empty!112) input!525 (BalanceConc!227 Empty!113)))))

(assert (=> d!4346 (= (lex!24 Lexer!48 lt!4494 input!525) lt!4497)))

(assert (= (and d!4346 c!15870) b!41880))

(assert (= (and d!4346 (not c!15870)) b!41878))

(assert (= (and b!41880 res!29717) b!41879))

(assert (= (and d!4346 res!29719) b!41876))

(assert (= (and b!41876 res!29718) b!41877))

(declare-fun m!15250 () Bool)

(assert (=> b!41877 m!15250))

(declare-fun m!15252 () Bool)

(assert (=> b!41877 m!15252))

(assert (=> b!41877 m!15252))

(declare-fun m!15254 () Bool)

(assert (=> b!41877 m!15254))

(declare-fun m!15256 () Bool)

(assert (=> b!41879 m!15256))

(declare-fun m!15258 () Bool)

(assert (=> d!4346 m!15258))

(declare-fun m!15260 () Bool)

(assert (=> d!4346 m!15260))

(declare-fun m!15262 () Bool)

(assert (=> b!41876 m!15262))

(assert (=> b!41876 m!15252))

(assert (=> b!41876 m!15252))

(assert (=> b!41876 m!15254))

(declare-fun m!15264 () Bool)

(assert (=> b!41880 m!15264))

(declare-fun m!15266 () Bool)

(assert (=> b!41880 m!15266))

(assert (=> b!41817 d!4346))

(declare-fun d!4348 () Bool)

(declare-fun list!157 (Conc!113) List!621)

(assert (=> d!4348 (= (list!154 (_1!494 (_1!497 lt!4490))) (list!157 (c!15862 (_1!494 (_1!497 lt!4490)))))))

(declare-fun bs!5102 () Bool)

(assert (= bs!5102 d!4348))

(declare-fun m!15268 () Bool)

(assert (=> bs!5102 m!15268))

(assert (=> b!41817 d!4348))

(declare-fun d!4350 () Bool)

(assert (=> d!4350 (= (list!154 (_1!494 lt!4489)) (list!157 (c!15862 (_1!494 lt!4489))))))

(declare-fun bs!5103 () Bool)

(assert (= bs!5103 d!4350))

(declare-fun m!15270 () Bool)

(assert (=> bs!5103 m!15270))

(assert (=> b!41817 d!4350))

(declare-fun d!4352 () Bool)

(assert (=> d!4352 (valid!189 (_2!497 lt!4490))))

(declare-fun Unit!279 () Unit!276)

(assert (=> d!4352 (= (lemmaInvariant!40 (_2!497 lt!4490)) Unit!279)))

(declare-fun bs!5104 () Bool)

(assert (= bs!5104 d!4352))

(declare-fun m!15272 () Bool)

(assert (=> bs!5104 m!15272))

(assert (=> b!41817 d!4352))

(declare-fun d!4354 () Bool)

(declare-fun e!22198 () Bool)

(assert (=> d!4354 e!22198))

(declare-fun res!29731 () Bool)

(assert (=> d!4354 (=> (not res!29731) (not e!22198))))

(declare-fun lt!4502 () tuple4!50)

(assert (=> d!4354 (= res!29731 (= (list!154 (_1!494 (_1!497 lt!4502))) (list!154 (_1!494 (lex!24 Lexer!48 lt!4494 input!525)))))))

(declare-fun lt!4503 () tuple4!50)

(assert (=> d!4354 (= lt!4502 (tuple4!51 (_1!497 lt!4503) (_2!497 lt!4503) (_3!138 lt!4503) (_4!25 lt!4503)))))

(declare-fun lexTailRecV3Mem!5 (LexerInterface!50 List!619 BalanceConc!224 BalanceConc!224 BalanceConc!224 BalanceConc!226 CacheUp!132 CacheDown!134 CacheFurthestNullable!82) tuple4!50)

(assert (=> d!4354 (= lt!4503 (lexTailRecV3Mem!5 Lexer!48 lt!4494 input!525 (BalanceConc!225 Empty!112) input!525 (BalanceConc!227 Empty!113) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!4354 (not (isEmpty!123 lt!4494))))

(assert (=> d!4354 (= (lexMem!18 Lexer!48 lt!4494 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!4502)))

(declare-fun b!41891 () Bool)

(declare-fun res!29734 () Bool)

(assert (=> b!41891 (=> (not res!29734) (not e!22198))))

(assert (=> b!41891 (= res!29734 (= (list!155 (_2!494 (_1!497 lt!4502))) (list!155 (_2!494 (lex!24 Lexer!48 lt!4494 input!525)))))))

(declare-fun b!41892 () Bool)

(assert (=> b!41892 (= e!22198 (= (totalInput!1518 (_4!25 lt!4502)) input!525))))

(declare-fun b!41893 () Bool)

(declare-fun res!29730 () Bool)

(assert (=> b!41893 (=> (not res!29730) (not e!22198))))

(assert (=> b!41893 (= res!29730 (valid!187 (_4!25 lt!4502)))))

(declare-fun b!41894 () Bool)

(declare-fun res!29732 () Bool)

(assert (=> b!41894 (=> (not res!29732) (not e!22198))))

(assert (=> b!41894 (= res!29732 (valid!188 (_3!138 lt!4502)))))

(declare-fun b!41895 () Bool)

(declare-fun res!29733 () Bool)

(assert (=> b!41895 (=> (not res!29733) (not e!22198))))

(assert (=> b!41895 (= res!29733 (valid!189 (_2!497 lt!4502)))))

(assert (= (and d!4354 res!29731) b!41891))

(assert (= (and b!41891 res!29734) b!41893))

(assert (= (and b!41893 res!29730) b!41895))

(assert (= (and b!41895 res!29733) b!41894))

(assert (= (and b!41894 res!29732) b!41892))

(declare-fun m!15274 () Bool)

(assert (=> b!41893 m!15274))

(declare-fun m!15276 () Bool)

(assert (=> b!41891 m!15276))

(assert (=> b!41891 m!15148))

(declare-fun m!15278 () Bool)

(assert (=> b!41891 m!15278))

(declare-fun m!15280 () Bool)

(assert (=> d!4354 m!15280))

(assert (=> d!4354 m!15148))

(assert (=> d!4354 m!15168))

(declare-fun m!15282 () Bool)

(assert (=> d!4354 m!15282))

(declare-fun m!15284 () Bool)

(assert (=> d!4354 m!15284))

(declare-fun m!15286 () Bool)

(assert (=> b!41894 m!15286))

(declare-fun m!15288 () Bool)

(assert (=> b!41895 m!15288))

(assert (=> b!41817 d!4354))

(declare-fun b!41902 () Bool)

(declare-fun e!22210 () Bool)

(declare-fun setRes!732 () Bool)

(declare-fun tp!28903 () Bool)

(assert (=> b!41902 (= e!22210 (and setRes!732 tp!28903))))

(declare-fun condSetEmpty!733 () Bool)

(declare-fun mapDefault!729 () List!617)

(assert (=> b!41902 (= condSetEmpty!733 (= (_1!490 (_1!491 (h!6011 mapDefault!729))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun mapNonEmpty!729 () Bool)

(declare-fun mapRes!729 () Bool)

(declare-fun tp!28907 () Bool)

(declare-fun e!22207 () Bool)

(assert (=> mapNonEmpty!729 (= mapRes!729 (and tp!28907 e!22207))))

(declare-fun mapKey!729 () (_ BitVec 32))

(declare-fun mapValue!729 () List!617)

(declare-fun mapRest!729 () (Array (_ BitVec 32) List!617))

(assert (=> mapNonEmpty!729 (= mapRest!724 (store mapRest!729 mapKey!729 mapValue!729))))

(declare-fun setIsEmpty!732 () Bool)

(assert (=> setIsEmpty!732 setRes!732))

(declare-fun setNonEmpty!732 () Bool)

(declare-fun tp!28904 () Bool)

(declare-fun setElem!732 () Context!154)

(declare-fun inv!908 (Context!154) Bool)

(assert (=> setNonEmpty!732 (= setRes!732 (and tp!28904 (inv!908 setElem!732)))))

(declare-fun setRest!732 () (InoxSet Context!154))

(assert (=> setNonEmpty!732 (= (_1!490 (_1!491 (h!6011 mapDefault!729))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!732 true) setRest!732))))

(declare-fun b!41903 () Bool)

(declare-fun setRes!733 () Bool)

(declare-fun tp!28906 () Bool)

(assert (=> b!41903 (= e!22207 (and setRes!733 tp!28906))))

(declare-fun condSetEmpty!732 () Bool)

(assert (=> b!41903 (= condSetEmpty!732 (= (_1!490 (_1!491 (h!6011 mapValue!729))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun mapIsEmpty!729 () Bool)

(assert (=> mapIsEmpty!729 mapRes!729))

(declare-fun setIsEmpty!733 () Bool)

(assert (=> setIsEmpty!733 setRes!733))

(declare-fun condMapEmpty!729 () Bool)

(assert (=> mapNonEmpty!724 (= condMapEmpty!729 (= mapRest!724 ((as const (Array (_ BitVec 32) List!617)) mapDefault!729)))))

(assert (=> mapNonEmpty!724 (= tp!28888 (and e!22210 mapRes!729))))

(declare-fun setNonEmpty!733 () Bool)

(declare-fun tp!28905 () Bool)

(declare-fun setElem!733 () Context!154)

(assert (=> setNonEmpty!733 (= setRes!733 (and tp!28905 (inv!908 setElem!733)))))

(declare-fun setRest!733 () (InoxSet Context!154))

(assert (=> setNonEmpty!733 (= (_1!490 (_1!491 (h!6011 mapValue!729))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!733 true) setRest!733))))

(assert (= (and mapNonEmpty!724 condMapEmpty!729) mapIsEmpty!729))

(assert (= (and mapNonEmpty!724 (not condMapEmpty!729)) mapNonEmpty!729))

(assert (= (and b!41903 condSetEmpty!732) setIsEmpty!733))

(assert (= (and b!41903 (not condSetEmpty!732)) setNonEmpty!733))

(assert (= (and mapNonEmpty!729 ((_ is Cons!615) mapValue!729)) b!41903))

(assert (= (and b!41902 condSetEmpty!733) setIsEmpty!732))

(assert (= (and b!41902 (not condSetEmpty!733)) setNonEmpty!732))

(assert (= (and mapNonEmpty!724 ((_ is Cons!615) mapDefault!729)) b!41902))

(declare-fun m!15290 () Bool)

(assert (=> mapNonEmpty!729 m!15290))

(declare-fun m!15292 () Bool)

(assert (=> setNonEmpty!732 m!15292))

(declare-fun m!15294 () Bool)

(assert (=> setNonEmpty!733 m!15294))

(declare-fun b!41908 () Bool)

(declare-fun e!22216 () Bool)

(declare-fun setRes!736 () Bool)

(declare-fun tp!28913 () Bool)

(assert (=> b!41908 (= e!22216 (and setRes!736 tp!28913))))

(declare-fun condSetEmpty!736 () Bool)

(assert (=> b!41908 (= condSetEmpty!736 (= (_1!490 (_1!491 (h!6011 mapValue!724))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!736 () Bool)

(assert (=> setIsEmpty!736 setRes!736))

(declare-fun setNonEmpty!736 () Bool)

(declare-fun tp!28912 () Bool)

(declare-fun setElem!736 () Context!154)

(assert (=> setNonEmpty!736 (= setRes!736 (and tp!28912 (inv!908 setElem!736)))))

(declare-fun setRest!736 () (InoxSet Context!154))

(assert (=> setNonEmpty!736 (= (_1!490 (_1!491 (h!6011 mapValue!724))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!736 true) setRest!736))))

(assert (=> mapNonEmpty!724 (= tp!28884 e!22216)))

(assert (= (and b!41908 condSetEmpty!736) setIsEmpty!736))

(assert (= (and b!41908 (not condSetEmpty!736)) setNonEmpty!736))

(assert (= (and mapNonEmpty!724 ((_ is Cons!615) mapValue!724)) b!41908))

(declare-fun m!15296 () Bool)

(assert (=> setNonEmpty!736 m!15296))

(declare-fun tp!28919 () Bool)

(declare-fun setRes!739 () Bool)

(declare-fun e!22225 () Bool)

(declare-fun b!41913 () Bool)

(assert (=> b!41913 (= e!22225 (and (inv!908 (_2!495 (_1!496 (h!6016 (zeroValue!458 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333)))))))))) setRes!739 tp!28919))))

(declare-fun condSetEmpty!739 () Bool)

(assert (=> b!41913 (= condSetEmpty!739 (= (_2!496 (h!6016 (zeroValue!458 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333)))))))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!739 () Bool)

(assert (=> setIsEmpty!739 setRes!739))

(declare-fun setNonEmpty!739 () Bool)

(declare-fun tp!28918 () Bool)

(declare-fun setElem!739 () Context!154)

(assert (=> setNonEmpty!739 (= setRes!739 (and tp!28918 (inv!908 setElem!739)))))

(declare-fun setRest!739 () (InoxSet Context!154))

(assert (=> setNonEmpty!739 (= (_2!496 (h!6016 (zeroValue!458 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!739 true) setRest!739))))

(assert (=> b!41833 (= tp!28877 e!22225)))

(assert (= (and b!41913 condSetEmpty!739) setIsEmpty!739))

(assert (= (and b!41913 (not condSetEmpty!739)) setNonEmpty!739))

(assert (= (and b!41833 ((_ is Cons!620) (zeroValue!458 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333)))))))) b!41913))

(declare-fun m!15298 () Bool)

(assert (=> b!41913 m!15298))

(declare-fun m!15300 () Bool)

(assert (=> setNonEmpty!739 m!15300))

(declare-fun setRes!740 () Bool)

(declare-fun b!41914 () Bool)

(declare-fun tp!28921 () Bool)

(declare-fun e!22228 () Bool)

(assert (=> b!41914 (= e!22228 (and (inv!908 (_2!495 (_1!496 (h!6016 (minValue!458 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333)))))))))) setRes!740 tp!28921))))

(declare-fun condSetEmpty!740 () Bool)

(assert (=> b!41914 (= condSetEmpty!740 (= (_2!496 (h!6016 (minValue!458 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333)))))))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!740 () Bool)

(assert (=> setIsEmpty!740 setRes!740))

(declare-fun setNonEmpty!740 () Bool)

(declare-fun tp!28920 () Bool)

(declare-fun setElem!740 () Context!154)

(assert (=> setNonEmpty!740 (= setRes!740 (and tp!28920 (inv!908 setElem!740)))))

(declare-fun setRest!740 () (InoxSet Context!154))

(assert (=> setNonEmpty!740 (= (_2!496 (h!6016 (minValue!458 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!740 true) setRest!740))))

(assert (=> b!41833 (= tp!28880 e!22228)))

(assert (= (and b!41914 condSetEmpty!740) setIsEmpty!740))

(assert (= (and b!41914 (not condSetEmpty!740)) setNonEmpty!740))

(assert (= (and b!41833 ((_ is Cons!620) (minValue!458 (v!12379 (underlying!599 (v!12380 (underlying!600 (cache!683 cacheDown!333)))))))) b!41914))

(declare-fun m!15302 () Bool)

(assert (=> b!41914 m!15302))

(declare-fun m!15304 () Bool)

(assert (=> setNonEmpty!740 m!15304))

(declare-fun tp!28923 () Bool)

(declare-fun setRes!741 () Bool)

(declare-fun b!41915 () Bool)

(declare-fun e!22231 () Bool)

(assert (=> b!41915 (= e!22231 (and (inv!908 (_2!495 (_1!496 (h!6016 mapDefault!725)))) setRes!741 tp!28923))))

(declare-fun condSetEmpty!741 () Bool)

(assert (=> b!41915 (= condSetEmpty!741 (= (_2!496 (h!6016 mapDefault!725)) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!741 () Bool)

(assert (=> setIsEmpty!741 setRes!741))

(declare-fun setNonEmpty!741 () Bool)

(declare-fun tp!28922 () Bool)

(declare-fun setElem!741 () Context!154)

(assert (=> setNonEmpty!741 (= setRes!741 (and tp!28922 (inv!908 setElem!741)))))

(declare-fun setRest!741 () (InoxSet Context!154))

(assert (=> setNonEmpty!741 (= (_2!496 (h!6016 mapDefault!725)) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!741 true) setRest!741))))

(assert (=> b!41832 (= tp!28889 e!22231)))

(assert (= (and b!41915 condSetEmpty!741) setIsEmpty!741))

(assert (= (and b!41915 (not condSetEmpty!741)) setNonEmpty!741))

(assert (= (and b!41832 ((_ is Cons!620) mapDefault!725)) b!41915))

(declare-fun m!15306 () Bool)

(assert (=> b!41915 m!15306))

(declare-fun m!15308 () Bool)

(assert (=> setNonEmpty!741 m!15308))

(declare-fun tp!28928 () Bool)

(declare-fun tp!28929 () Bool)

(declare-fun e!22236 () Bool)

(declare-fun b!41922 () Bool)

(assert (=> b!41922 (= e!22236 (and (inv!901 (left!523 (c!15861 (totalInput!1518 cacheFurthestNullable!45)))) tp!28928 (inv!901 (right!853 (c!15861 (totalInput!1518 cacheFurthestNullable!45)))) tp!28929))))

(declare-fun b!41923 () Bool)

(declare-fun inv!909 (IArray!225) Bool)

(assert (=> b!41923 (= e!22236 (inv!909 (xs!2691 (c!15861 (totalInput!1518 cacheFurthestNullable!45)))))))

(assert (=> b!41813 (= tp!28887 (and (inv!901 (c!15861 (totalInput!1518 cacheFurthestNullable!45))) e!22236))))

(assert (= (and b!41813 ((_ is Node!112) (c!15861 (totalInput!1518 cacheFurthestNullable!45)))) b!41922))

(assert (= (and b!41813 ((_ is Leaf!300) (c!15861 (totalInput!1518 cacheFurthestNullable!45)))) b!41923))

(declare-fun m!15310 () Bool)

(assert (=> b!41922 m!15310))

(declare-fun m!15312 () Bool)

(assert (=> b!41922 m!15312))

(declare-fun m!15314 () Bool)

(assert (=> b!41923 m!15314))

(assert (=> b!41813 m!15162))

(declare-fun setNonEmpty!746 () Bool)

(declare-fun setRes!747 () Bool)

(declare-fun tp!28943 () Bool)

(declare-fun setElem!746 () Context!154)

(assert (=> setNonEmpty!746 (= setRes!747 (and tp!28943 (inv!908 setElem!746)))))

(declare-fun mapDefault!732 () List!622)

(declare-fun setRest!747 () (InoxSet Context!154))

(assert (=> setNonEmpty!746 (= (_2!496 (h!6016 mapDefault!732)) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!746 true) setRest!747))))

(declare-fun setIsEmpty!746 () Bool)

(assert (=> setIsEmpty!746 setRes!747))

(declare-fun tp!28944 () Bool)

(declare-fun b!41930 () Bool)

(declare-fun e!22254 () Bool)

(assert (=> b!41930 (= e!22254 (and (inv!908 (_2!495 (_1!496 (h!6016 mapDefault!732)))) setRes!747 tp!28944))))

(declare-fun condSetEmpty!746 () Bool)

(assert (=> b!41930 (= condSetEmpty!746 (= (_2!496 (h!6016 mapDefault!732)) ((as const (Array Context!154 Bool)) false)))))

(declare-fun condMapEmpty!732 () Bool)

(assert (=> mapNonEmpty!726 (= condMapEmpty!732 (= mapRest!725 ((as const (Array (_ BitVec 32) List!622)) mapDefault!732)))))

(declare-fun mapRes!732 () Bool)

(assert (=> mapNonEmpty!726 (= tp!28885 (and e!22254 mapRes!732))))

(declare-fun mapNonEmpty!732 () Bool)

(declare-fun tp!28942 () Bool)

(declare-fun e!22252 () Bool)

(assert (=> mapNonEmpty!732 (= mapRes!732 (and tp!28942 e!22252))))

(declare-fun mapRest!732 () (Array (_ BitVec 32) List!622))

(declare-fun mapKey!732 () (_ BitVec 32))

(declare-fun mapValue!732 () List!622)

(assert (=> mapNonEmpty!732 (= mapRest!725 (store mapRest!732 mapKey!732 mapValue!732))))

(declare-fun setIsEmpty!747 () Bool)

(declare-fun setRes!746 () Bool)

(assert (=> setIsEmpty!747 setRes!746))

(declare-fun setNonEmpty!747 () Bool)

(declare-fun tp!28940 () Bool)

(declare-fun setElem!747 () Context!154)

(assert (=> setNonEmpty!747 (= setRes!746 (and tp!28940 (inv!908 setElem!747)))))

(declare-fun setRest!746 () (InoxSet Context!154))

(assert (=> setNonEmpty!747 (= (_2!496 (h!6016 mapValue!732)) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!747 true) setRest!746))))

(declare-fun b!41931 () Bool)

(declare-fun tp!28941 () Bool)

(assert (=> b!41931 (= e!22252 (and (inv!908 (_2!495 (_1!496 (h!6016 mapValue!732)))) setRes!746 tp!28941))))

(declare-fun condSetEmpty!747 () Bool)

(assert (=> b!41931 (= condSetEmpty!747 (= (_2!496 (h!6016 mapValue!732)) ((as const (Array Context!154 Bool)) false)))))

(declare-fun mapIsEmpty!732 () Bool)

(assert (=> mapIsEmpty!732 mapRes!732))

(assert (= (and mapNonEmpty!726 condMapEmpty!732) mapIsEmpty!732))

(assert (= (and mapNonEmpty!726 (not condMapEmpty!732)) mapNonEmpty!732))

(assert (= (and b!41931 condSetEmpty!747) setIsEmpty!747))

(assert (= (and b!41931 (not condSetEmpty!747)) setNonEmpty!747))

(assert (= (and mapNonEmpty!732 ((_ is Cons!620) mapValue!732)) b!41931))

(assert (= (and b!41930 condSetEmpty!746) setIsEmpty!746))

(assert (= (and b!41930 (not condSetEmpty!746)) setNonEmpty!746))

(assert (= (and mapNonEmpty!726 ((_ is Cons!620) mapDefault!732)) b!41930))

(declare-fun m!15316 () Bool)

(assert (=> b!41931 m!15316))

(declare-fun m!15318 () Bool)

(assert (=> mapNonEmpty!732 m!15318))

(declare-fun m!15320 () Bool)

(assert (=> b!41930 m!15320))

(declare-fun m!15322 () Bool)

(assert (=> setNonEmpty!747 m!15322))

(declare-fun m!15324 () Bool)

(assert (=> setNonEmpty!746 m!15324))

(declare-fun setRes!748 () Bool)

(declare-fun b!41932 () Bool)

(declare-fun tp!28946 () Bool)

(declare-fun e!22258 () Bool)

(assert (=> b!41932 (= e!22258 (and (inv!908 (_2!495 (_1!496 (h!6016 mapValue!726)))) setRes!748 tp!28946))))

(declare-fun condSetEmpty!748 () Bool)

(assert (=> b!41932 (= condSetEmpty!748 (= (_2!496 (h!6016 mapValue!726)) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!748 () Bool)

(assert (=> setIsEmpty!748 setRes!748))

(declare-fun setNonEmpty!748 () Bool)

(declare-fun tp!28945 () Bool)

(declare-fun setElem!748 () Context!154)

(assert (=> setNonEmpty!748 (= setRes!748 (and tp!28945 (inv!908 setElem!748)))))

(declare-fun setRest!748 () (InoxSet Context!154))

(assert (=> setNonEmpty!748 (= (_2!496 (h!6016 mapValue!726)) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!748 true) setRest!748))))

(assert (=> mapNonEmpty!726 (= tp!28871 e!22258)))

(assert (= (and b!41932 condSetEmpty!748) setIsEmpty!748))

(assert (= (and b!41932 (not condSetEmpty!748)) setNonEmpty!748))

(assert (= (and mapNonEmpty!726 ((_ is Cons!620) mapValue!726)) b!41932))

(declare-fun m!15326 () Bool)

(assert (=> b!41932 m!15326))

(declare-fun m!15328 () Bool)

(assert (=> setNonEmpty!748 m!15328))

(declare-fun e!22259 () Bool)

(declare-fun tp!28947 () Bool)

(declare-fun b!41933 () Bool)

(declare-fun tp!28948 () Bool)

(assert (=> b!41933 (= e!22259 (and (inv!901 (left!523 (c!15861 input!525))) tp!28947 (inv!901 (right!853 (c!15861 input!525))) tp!28948))))

(declare-fun b!41934 () Bool)

(assert (=> b!41934 (= e!22259 (inv!909 (xs!2691 (c!15861 input!525))))))

(assert (=> b!41838 (= tp!28881 (and (inv!901 (c!15861 input!525)) e!22259))))

(assert (= (and b!41838 ((_ is Node!112) (c!15861 input!525))) b!41933))

(assert (= (and b!41838 ((_ is Leaf!300) (c!15861 input!525))) b!41934))

(declare-fun m!15330 () Bool)

(assert (=> b!41933 m!15330))

(declare-fun m!15332 () Bool)

(assert (=> b!41933 m!15332))

(declare-fun m!15334 () Bool)

(assert (=> b!41934 m!15334))

(assert (=> b!41838 m!15178))

(declare-fun b!41935 () Bool)

(declare-fun e!22262 () Bool)

(declare-fun setRes!749 () Bool)

(declare-fun tp!28950 () Bool)

(assert (=> b!41935 (= e!22262 (and setRes!749 tp!28950))))

(declare-fun condSetEmpty!749 () Bool)

(assert (=> b!41935 (= condSetEmpty!749 (= (_1!490 (_1!491 (h!6011 (zeroValue!456 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!749 () Bool)

(assert (=> setIsEmpty!749 setRes!749))

(declare-fun setNonEmpty!749 () Bool)

(declare-fun tp!28949 () Bool)

(declare-fun setElem!749 () Context!154)

(assert (=> setNonEmpty!749 (= setRes!749 (and tp!28949 (inv!908 setElem!749)))))

(declare-fun setRest!749 () (InoxSet Context!154))

(assert (=> setNonEmpty!749 (= (_1!490 (_1!491 (h!6011 (zeroValue!456 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!749 true) setRest!749))))

(assert (=> b!41820 (= tp!28890 e!22262)))

(assert (= (and b!41935 condSetEmpty!749) setIsEmpty!749))

(assert (= (and b!41935 (not condSetEmpty!749)) setNonEmpty!749))

(assert (= (and b!41820 ((_ is Cons!615) (zeroValue!456 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45)))))))) b!41935))

(declare-fun m!15336 () Bool)

(assert (=> setNonEmpty!749 m!15336))

(declare-fun b!41936 () Bool)

(declare-fun e!22264 () Bool)

(declare-fun setRes!750 () Bool)

(declare-fun tp!28952 () Bool)

(assert (=> b!41936 (= e!22264 (and setRes!750 tp!28952))))

(declare-fun condSetEmpty!750 () Bool)

(assert (=> b!41936 (= condSetEmpty!750 (= (_1!490 (_1!491 (h!6011 (minValue!456 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!750 () Bool)

(assert (=> setIsEmpty!750 setRes!750))

(declare-fun setNonEmpty!750 () Bool)

(declare-fun tp!28951 () Bool)

(declare-fun setElem!750 () Context!154)

(assert (=> setNonEmpty!750 (= setRes!750 (and tp!28951 (inv!908 setElem!750)))))

(declare-fun setRest!750 () (InoxSet Context!154))

(assert (=> setNonEmpty!750 (= (_1!490 (_1!491 (h!6011 (minValue!456 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!750 true) setRest!750))))

(assert (=> b!41820 (= tp!28882 e!22264)))

(assert (= (and b!41936 condSetEmpty!750) setIsEmpty!750))

(assert (= (and b!41936 (not condSetEmpty!750)) setNonEmpty!750))

(assert (= (and b!41820 ((_ is Cons!615) (minValue!456 (v!12375 (underlying!595 (v!12376 (underlying!596 (cache!681 cacheFurthestNullable!45)))))))) b!41936))

(declare-fun m!15338 () Bool)

(assert (=> setNonEmpty!750 m!15338))

(declare-fun b!41937 () Bool)

(declare-fun e!22266 () Bool)

(declare-fun setRes!751 () Bool)

(declare-fun tp!28954 () Bool)

(assert (=> b!41937 (= e!22266 (and setRes!751 tp!28954))))

(declare-fun condSetEmpty!751 () Bool)

(assert (=> b!41937 (= condSetEmpty!751 (= (_1!490 (_1!491 (h!6011 mapDefault!724))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!751 () Bool)

(assert (=> setIsEmpty!751 setRes!751))

(declare-fun setNonEmpty!751 () Bool)

(declare-fun tp!28953 () Bool)

(declare-fun setElem!751 () Context!154)

(assert (=> setNonEmpty!751 (= setRes!751 (and tp!28953 (inv!908 setElem!751)))))

(declare-fun setRest!751 () (InoxSet Context!154))

(assert (=> setNonEmpty!751 (= (_1!490 (_1!491 (h!6011 mapDefault!724))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!751 true) setRest!751))))

(assert (=> b!41826 (= tp!28883 e!22266)))

(assert (= (and b!41937 condSetEmpty!751) setIsEmpty!751))

(assert (= (and b!41937 (not condSetEmpty!751)) setNonEmpty!751))

(assert (= (and b!41826 ((_ is Cons!615) mapDefault!724)) b!41937))

(declare-fun m!15340 () Bool)

(assert (=> setNonEmpty!751 m!15340))

(declare-fun tp!28959 () Bool)

(declare-fun e!22275 () Bool)

(declare-fun setRes!754 () Bool)

(declare-fun b!41942 () Bool)

(assert (=> b!41942 (= e!22275 (and (inv!908 (_1!492 (_1!493 (h!6014 (zeroValue!457 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320)))))))))) setRes!754 tp!28959))))

(declare-fun condSetEmpty!754 () Bool)

(assert (=> b!41942 (= condSetEmpty!754 (= (_2!493 (h!6014 (zeroValue!457 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320)))))))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!754 () Bool)

(assert (=> setIsEmpty!754 setRes!754))

(declare-fun setNonEmpty!754 () Bool)

(declare-fun tp!28960 () Bool)

(declare-fun setElem!754 () Context!154)

(assert (=> setNonEmpty!754 (= setRes!754 (and tp!28960 (inv!908 setElem!754)))))

(declare-fun setRest!754 () (InoxSet Context!154))

(assert (=> setNonEmpty!754 (= (_2!493 (h!6014 (zeroValue!457 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!754 true) setRest!754))))

(assert (=> b!41818 (= tp!28874 e!22275)))

(assert (= (and b!41942 condSetEmpty!754) setIsEmpty!754))

(assert (= (and b!41942 (not condSetEmpty!754)) setNonEmpty!754))

(assert (= (and b!41818 ((_ is Cons!618) (zeroValue!457 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320)))))))) b!41942))

(declare-fun m!15342 () Bool)

(assert (=> b!41942 m!15342))

(declare-fun m!15344 () Bool)

(assert (=> setNonEmpty!754 m!15344))

(declare-fun setRes!755 () Bool)

(declare-fun tp!28961 () Bool)

(declare-fun e!22278 () Bool)

(declare-fun b!41943 () Bool)

(assert (=> b!41943 (= e!22278 (and (inv!908 (_1!492 (_1!493 (h!6014 (minValue!457 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320)))))))))) setRes!755 tp!28961))))

(declare-fun condSetEmpty!755 () Bool)

(assert (=> b!41943 (= condSetEmpty!755 (= (_2!493 (h!6014 (minValue!457 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320)))))))) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!755 () Bool)

(assert (=> setIsEmpty!755 setRes!755))

(declare-fun setNonEmpty!755 () Bool)

(declare-fun tp!28962 () Bool)

(declare-fun setElem!755 () Context!154)

(assert (=> setNonEmpty!755 (= setRes!755 (and tp!28962 (inv!908 setElem!755)))))

(declare-fun setRest!755 () (InoxSet Context!154))

(assert (=> setNonEmpty!755 (= (_2!493 (h!6014 (minValue!457 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!755 true) setRest!755))))

(assert (=> b!41818 (= tp!28886 e!22278)))

(assert (= (and b!41943 condSetEmpty!755) setIsEmpty!755))

(assert (= (and b!41943 (not condSetEmpty!755)) setNonEmpty!755))

(assert (= (and b!41818 ((_ is Cons!618) (minValue!457 (v!12377 (underlying!597 (v!12378 (underlying!598 (cache!682 cacheUp!320)))))))) b!41943))

(declare-fun m!15346 () Bool)

(assert (=> b!41943 m!15346))

(declare-fun m!15348 () Bool)

(assert (=> setNonEmpty!755 m!15348))

(declare-fun e!22281 () Bool)

(declare-fun tp!28963 () Bool)

(declare-fun b!41944 () Bool)

(declare-fun setRes!756 () Bool)

(assert (=> b!41944 (= e!22281 (and (inv!908 (_1!492 (_1!493 (h!6014 mapDefault!726)))) setRes!756 tp!28963))))

(declare-fun condSetEmpty!756 () Bool)

(assert (=> b!41944 (= condSetEmpty!756 (= (_2!493 (h!6014 mapDefault!726)) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!756 () Bool)

(assert (=> setIsEmpty!756 setRes!756))

(declare-fun setNonEmpty!756 () Bool)

(declare-fun tp!28964 () Bool)

(declare-fun setElem!756 () Context!154)

(assert (=> setNonEmpty!756 (= setRes!756 (and tp!28964 (inv!908 setElem!756)))))

(declare-fun setRest!756 () (InoxSet Context!154))

(assert (=> setNonEmpty!756 (= (_2!493 (h!6014 mapDefault!726)) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!756 true) setRest!756))))

(assert (=> b!41835 (= tp!28876 e!22281)))

(assert (= (and b!41944 condSetEmpty!756) setIsEmpty!756))

(assert (= (and b!41944 (not condSetEmpty!756)) setNonEmpty!756))

(assert (= (and b!41835 ((_ is Cons!618) mapDefault!726)) b!41944))

(declare-fun m!15350 () Bool)

(assert (=> b!41944 m!15350))

(declare-fun m!15352 () Bool)

(assert (=> setNonEmpty!756 m!15352))

(declare-fun setIsEmpty!761 () Bool)

(declare-fun setRes!762 () Bool)

(assert (=> setIsEmpty!761 setRes!762))

(declare-fun mapIsEmpty!735 () Bool)

(declare-fun mapRes!735 () Bool)

(assert (=> mapIsEmpty!735 mapRes!735))

(declare-fun e!22299 () Bool)

(declare-fun b!41951 () Bool)

(declare-fun mapDefault!735 () List!620)

(declare-fun setRes!761 () Bool)

(declare-fun tp!28978 () Bool)

(assert (=> b!41951 (= e!22299 (and (inv!908 (_1!492 (_1!493 (h!6014 mapDefault!735)))) setRes!761 tp!28978))))

(declare-fun condSetEmpty!761 () Bool)

(assert (=> b!41951 (= condSetEmpty!761 (= (_2!493 (h!6014 mapDefault!735)) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setNonEmpty!761 () Bool)

(declare-fun tp!28975 () Bool)

(declare-fun setElem!761 () Context!154)

(assert (=> setNonEmpty!761 (= setRes!761 (and tp!28975 (inv!908 setElem!761)))))

(declare-fun setRest!762 () (InoxSet Context!154))

(assert (=> setNonEmpty!761 (= (_2!493 (h!6014 mapDefault!735)) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!761 true) setRest!762))))

(declare-fun mapValue!735 () List!620)

(declare-fun e!22295 () Bool)

(declare-fun b!41952 () Bool)

(declare-fun tp!28976 () Bool)

(assert (=> b!41952 (= e!22295 (and (inv!908 (_1!492 (_1!493 (h!6014 mapValue!735)))) setRes!762 tp!28976))))

(declare-fun condSetEmpty!762 () Bool)

(assert (=> b!41952 (= condSetEmpty!762 (= (_2!493 (h!6014 mapValue!735)) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setNonEmpty!762 () Bool)

(declare-fun tp!28979 () Bool)

(declare-fun setElem!762 () Context!154)

(assert (=> setNonEmpty!762 (= setRes!762 (and tp!28979 (inv!908 setElem!762)))))

(declare-fun setRest!761 () (InoxSet Context!154))

(assert (=> setNonEmpty!762 (= (_2!493 (h!6014 mapValue!735)) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!762 true) setRest!761))))

(declare-fun mapNonEmpty!735 () Bool)

(declare-fun tp!28977 () Bool)

(assert (=> mapNonEmpty!735 (= mapRes!735 (and tp!28977 e!22295))))

(declare-fun mapKey!735 () (_ BitVec 32))

(declare-fun mapRest!735 () (Array (_ BitVec 32) List!620))

(assert (=> mapNonEmpty!735 (= mapRest!726 (store mapRest!735 mapKey!735 mapValue!735))))

(declare-fun setIsEmpty!762 () Bool)

(assert (=> setIsEmpty!762 setRes!761))

(declare-fun condMapEmpty!735 () Bool)

(assert (=> mapNonEmpty!725 (= condMapEmpty!735 (= mapRest!726 ((as const (Array (_ BitVec 32) List!620)) mapDefault!735)))))

(assert (=> mapNonEmpty!725 (= tp!28875 (and e!22299 mapRes!735))))

(assert (= (and mapNonEmpty!725 condMapEmpty!735) mapIsEmpty!735))

(assert (= (and mapNonEmpty!725 (not condMapEmpty!735)) mapNonEmpty!735))

(assert (= (and b!41952 condSetEmpty!762) setIsEmpty!761))

(assert (= (and b!41952 (not condSetEmpty!762)) setNonEmpty!762))

(assert (= (and mapNonEmpty!735 ((_ is Cons!618) mapValue!735)) b!41952))

(assert (= (and b!41951 condSetEmpty!761) setIsEmpty!762))

(assert (= (and b!41951 (not condSetEmpty!761)) setNonEmpty!761))

(assert (= (and mapNonEmpty!725 ((_ is Cons!618) mapDefault!735)) b!41951))

(declare-fun m!15354 () Bool)

(assert (=> mapNonEmpty!735 m!15354))

(declare-fun m!15356 () Bool)

(assert (=> b!41952 m!15356))

(declare-fun m!15358 () Bool)

(assert (=> setNonEmpty!762 m!15358))

(declare-fun m!15360 () Bool)

(assert (=> setNonEmpty!761 m!15360))

(declare-fun m!15362 () Bool)

(assert (=> b!41951 m!15362))

(declare-fun tp!28980 () Bool)

(declare-fun setRes!763 () Bool)

(declare-fun b!41953 () Bool)

(declare-fun e!22302 () Bool)

(assert (=> b!41953 (= e!22302 (and (inv!908 (_1!492 (_1!493 (h!6014 mapValue!725)))) setRes!763 tp!28980))))

(declare-fun condSetEmpty!763 () Bool)

(assert (=> b!41953 (= condSetEmpty!763 (= (_2!493 (h!6014 mapValue!725)) ((as const (Array Context!154 Bool)) false)))))

(declare-fun setIsEmpty!763 () Bool)

(assert (=> setIsEmpty!763 setRes!763))

(declare-fun setNonEmpty!763 () Bool)

(declare-fun tp!28981 () Bool)

(declare-fun setElem!763 () Context!154)

(assert (=> setNonEmpty!763 (= setRes!763 (and tp!28981 (inv!908 setElem!763)))))

(declare-fun setRest!763 () (InoxSet Context!154))

(assert (=> setNonEmpty!763 (= (_2!493 (h!6014 mapValue!725)) ((_ map or) (store ((as const (Array Context!154 Bool)) false) setElem!763 true) setRest!763))))

(assert (=> mapNonEmpty!725 (= tp!28879 e!22302)))

(assert (= (and b!41953 condSetEmpty!763) setIsEmpty!763))

(assert (= (and b!41953 (not condSetEmpty!763)) setNonEmpty!763))

(assert (= (and mapNonEmpty!725 ((_ is Cons!618) mapValue!725)) b!41953))

(declare-fun m!15364 () Bool)

(assert (=> b!41953 m!15364))

(declare-fun m!15366 () Bool)

(assert (=> setNonEmpty!763 m!15366))

(check-sat (not b!41891) (not b!41838) (not b!41877) (not setNonEmpty!747) (not b_next!963) (not setNonEmpty!739) (not d!4346) (not b!41902) (not d!4308) (not d!4312) (not b!41922) (not d!4306) (not mapNonEmpty!735) b_and!995 (not b!41930) (not setNonEmpty!736) (not setNonEmpty!754) (not b!41847) (not d!4344) (not d!4350) (not setNonEmpty!733) (not b!41862) (not b!41915) (not setNonEmpty!761) (not b_next!959) (not b_next!961) (not setNonEmpty!748) (not setNonEmpty!762) (not b!41932) (not b!41908) (not b!41951) (not b!41914) (not setNonEmpty!740) (not b!41813) (not b!41895) (not setNonEmpty!763) (not setNonEmpty!755) (not d!4336) (not b!41903) b_and!1001 (not b!41944) (not d!4314) (not setNonEmpty!732) b_and!999 (not setNonEmpty!756) (not b!41935) (not d!4316) (not b!41850) (not b!41844) (not b!41942) (not b_next!967) (not mapNonEmpty!732) (not b!41863) (not setNonEmpty!741) (not d!4320) (not setNonEmpty!749) (not b!41894) (not b!41876) (not b!41879) (not b!41860) b_and!993 (not b_next!965) (not d!4342) (not setNonEmpty!750) (not d!4310) (not b!41934) (not mapNonEmpty!729) (not b!41913) (not b!41936) (not b_next!957) (not b!41893) (not b!41923) (not b!41952) (not b!41943) b_and!991 (not b!41880) (not setNonEmpty!746) (not d!4348) (not b!41931) (not d!4352) (not b!41937) (not b!41933) b_and!997 (not b!41953) (not setNonEmpty!751) (not d!4354) (not b!41853) (not b!41865))
(check-sat b_and!995 (not b_next!959) (not b_next!961) b_and!1001 b_and!999 (not b_next!967) (not b_next!963) (not b_next!957) b_and!991 b_and!997 b_and!993 (not b_next!965))
