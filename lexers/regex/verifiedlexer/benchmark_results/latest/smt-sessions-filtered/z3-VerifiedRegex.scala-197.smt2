; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3042 () Bool)

(assert start!3042)

(declare-fun b!46002 () Bool)

(declare-fun b_free!1197 () Bool)

(declare-fun b_next!1197 () Bool)

(assert (=> b!46002 (= b_free!1197 (not b_next!1197))))

(declare-fun tp!31304 () Bool)

(declare-fun b_and!1231 () Bool)

(assert (=> b!46002 (= tp!31304 b_and!1231)))

(declare-fun b!45992 () Bool)

(declare-fun b_free!1199 () Bool)

(declare-fun b_next!1199 () Bool)

(assert (=> b!45992 (= b_free!1199 (not b_next!1199))))

(declare-fun tp!31315 () Bool)

(declare-fun b_and!1233 () Bool)

(assert (=> b!45992 (= tp!31315 b_and!1233)))

(declare-fun b!45983 () Bool)

(declare-fun b_free!1201 () Bool)

(declare-fun b_next!1201 () Bool)

(assert (=> b!45983 (= b_free!1201 (not b_next!1201))))

(declare-fun tp!31308 () Bool)

(declare-fun b_and!1235 () Bool)

(assert (=> b!45983 (= tp!31308 b_and!1235)))

(declare-fun b!46011 () Bool)

(declare-fun b_free!1203 () Bool)

(declare-fun b_next!1203 () Bool)

(assert (=> b!46011 (= b_free!1203 (not b_next!1203))))

(declare-fun tp!31312 () Bool)

(declare-fun b_and!1237 () Bool)

(assert (=> b!46011 (= tp!31312 b_and!1237)))

(declare-fun b!45984 () Bool)

(declare-fun b_free!1205 () Bool)

(declare-fun b_next!1205 () Bool)

(assert (=> b!45984 (= b_free!1205 (not b_next!1205))))

(declare-fun tp!31300 () Bool)

(declare-fun b_and!1239 () Bool)

(assert (=> b!45984 (= tp!31300 b_and!1239)))

(declare-fun b!46007 () Bool)

(declare-fun b_free!1207 () Bool)

(declare-fun b_next!1207 () Bool)

(assert (=> b!46007 (= b_free!1207 (not b_next!1207))))

(declare-fun tp!31306 () Bool)

(declare-fun b_and!1241 () Bool)

(assert (=> b!46007 (= tp!31306 b_and!1241)))

(declare-fun b!46027 () Bool)

(declare-fun e!26113 () Bool)

(assert (=> b!46027 (= e!26113 true)))

(declare-fun b!46026 () Bool)

(declare-fun e!26112 () Bool)

(assert (=> b!46026 (= e!26112 e!26113)))

(declare-fun b!46025 () Bool)

(declare-fun e!26111 () Bool)

(assert (=> b!46025 (= e!26111 e!26112)))

(declare-fun b!45980 () Bool)

(assert (=> b!45980 e!26111))

(assert (= b!46026 b!46027))

(assert (= b!46025 b!46026))

(declare-datatypes ((List!758 0))(
  ( (Nil!756) (Cons!756 (h!6152 (_ BitVec 16)) (t!16815 List!758)) )
))
(declare-datatypes ((TokenValue!163 0))(
  ( (FloatLiteralValue!326 (text!1586 List!758)) (TokenValueExt!162 (__x!1276 Int)) (Broken!815 (value!7714 List!758)) (Object!164) (End!163) (Def!163) (Underscore!163) (Match!163) (Else!163) (Error!163) (Case!163) (If!163) (Extends!163) (Abstract!163) (Class!163) (Val!163) (DelimiterValue!326 (del!223 List!758)) (KeywordValue!169 (value!7715 List!758)) (CommentValue!326 (value!7716 List!758)) (WhitespaceValue!326 (value!7717 List!758)) (IndentationValue!163 (value!7718 List!758)) (String!1110) (Int32!163) (Broken!816 (value!7719 List!758)) (Boolean!164) (Unit!347) (OperatorValue!166 (op!223 List!758)) (IdentifierValue!326 (value!7720 List!758)) (IdentifierValue!327 (value!7721 List!758)) (WhitespaceValue!327 (value!7722 List!758)) (True!326) (False!326) (Broken!817 (value!7723 List!758)) (Broken!818 (value!7724 List!758)) (True!327) (RightBrace!163) (RightBracket!163) (Colon!163) (Null!163) (Comma!163) (LeftBracket!163) (False!327) (LeftBrace!163) (ImaginaryLiteralValue!163 (text!1587 List!758)) (StringLiteralValue!489 (value!7725 List!758)) (EOFValue!163 (value!7726 List!758)) (IdentValue!163 (value!7727 List!758)) (DelimiterValue!327 (value!7728 List!758)) (DedentValue!163 (value!7729 List!758)) (NewLineValue!163 (value!7730 List!758)) (IntegerValue!489 (value!7731 (_ BitVec 32)) (text!1588 List!758)) (IntegerValue!490 (value!7732 Int) (text!1589 List!758)) (Times!163) (Or!163) (Equal!163) (Minus!163) (Broken!819 (value!7733 List!758)) (And!163) (Div!163) (LessEqual!163) (Mod!163) (Concat!402) (Not!163) (Plus!163) (SpaceValue!163 (value!7734 List!758)) (IntegerValue!491 (value!7735 Int) (text!1590 List!758)) (StringLiteralValue!490 (text!1591 List!758)) (FloatLiteralValue!327 (text!1592 List!758)) (BytesLiteralValue!163 (value!7736 List!758)) (CommentValue!327 (value!7737 List!758)) (StringLiteralValue!491 (value!7738 List!758)) (ErrorTokenValue!163 (msg!224 List!758)) )
))
(declare-datatypes ((Regex!239 0))(
  ( (ElementMatch!239 (c!16131 (_ BitVec 16))) (Concat!403 (regOne!990 Regex!239) (regTwo!990 Regex!239)) (EmptyExpr!239) (Star!239 (reg!568 Regex!239)) (EmptyLang!239) (Union!239 (regOne!991 Regex!239) (regTwo!991 Regex!239)) )
))
(declare-datatypes ((String!1111 0))(
  ( (String!1112 (value!7739 String)) )
))
(declare-datatypes ((IArray!295 0))(
  ( (IArray!296 (innerList!205 List!758)) )
))
(declare-datatypes ((Conc!147 0))(
  ( (Node!147 (left!594 Conc!147) (right!924 Conc!147) (csize!524 Int) (cheight!358 Int)) (Leaf!345 (xs!2726 IArray!295) (csize!525 Int)) (Empty!147) )
))
(declare-datatypes ((BalanceConc!294 0))(
  ( (BalanceConc!295 (c!16132 Conc!147)) )
))
(declare-datatypes ((TokenValueInjection!150 0))(
  ( (TokenValueInjection!151 (toValue!652 Int) (toChars!511 Int)) )
))
(declare-datatypes ((Rule!146 0))(
  ( (Rule!147 (regex!173 Regex!239) (tag!351 String!1111) (isSeparator!173 Bool) (transformation!173 TokenValueInjection!150)) )
))
(declare-datatypes ((List!759 0))(
  ( (Nil!757) (Cons!757 (h!6153 Rule!146) (t!16816 List!759)) )
))
(declare-fun lt!6076 () List!759)

(get-info :version)

(assert (= (and b!45980 ((_ is Cons!757) lt!6076)) b!46025))

(declare-fun order!189 () Int)

(declare-fun lambda!857 () Int)

(declare-fun order!187 () Int)

(declare-fun dynLambda!117 (Int Int) Int)

(declare-fun dynLambda!118 (Int Int) Int)

(assert (=> b!46027 (< (dynLambda!117 order!187 (toValue!652 (transformation!173 (h!6153 lt!6076)))) (dynLambda!118 order!189 lambda!857))))

(declare-fun order!191 () Int)

(declare-fun dynLambda!119 (Int Int) Int)

(assert (=> b!46027 (< (dynLambda!119 order!191 (toChars!511 (transformation!173 (h!6153 lt!6076)))) (dynLambda!118 order!189 lambda!857))))

(declare-fun b!45977 () Bool)

(declare-fun e!26084 () Bool)

(declare-fun e!26092 () Bool)

(assert (=> b!45977 (= e!26084 e!26092)))

(declare-fun b!45978 () Bool)

(declare-fun e!26081 () Bool)

(declare-fun e!26085 () Bool)

(assert (=> b!45978 (= e!26081 e!26085)))

(declare-fun b!45979 () Bool)

(declare-fun e!26086 () Bool)

(declare-fun input!525 () BalanceConc!294)

(declare-fun tp!31307 () Bool)

(declare-fun inv!1039 (Conc!147) Bool)

(assert (=> b!45979 (= e!26086 (and (inv!1039 (c!16132 input!525)) tp!31307))))

(declare-fun res!31291 () Bool)

(declare-fun e!26089 () Bool)

(assert (=> b!45980 (=> (not res!31291) (not e!26089))))

(declare-datatypes ((Token!112 0))(
  ( (Token!113 (value!7740 TokenValue!163) (rule!649 Rule!146) (size!739 Int) (originalCharacters!227 List!758)) )
))
(declare-datatypes ((List!760 0))(
  ( (Nil!758) (Cons!758 (h!6154 Token!112) (t!16817 List!760)) )
))
(declare-fun lt!6074 () List!760)

(declare-fun forall!92 (List!760 Int) Bool)

(assert (=> b!45980 (= res!31291 (forall!92 lt!6074 lambda!857))))

(declare-fun b!45981 () Bool)

(declare-fun e!26096 () Bool)

(declare-fun e!26077 () Bool)

(assert (=> b!45981 (= e!26096 e!26077)))

(declare-fun res!31282 () Bool)

(assert (=> b!45981 (=> (not res!31282) (not e!26077))))

(declare-fun lt!6085 () BalanceConc!294)

(declare-fun lt!6080 () List!758)

(declare-fun list!207 (BalanceConc!294) List!758)

(assert (=> b!45981 (= res!31282 (= (list!207 lt!6085) lt!6080))))

(declare-fun seqFromList!38 (List!758) BalanceConc!294)

(assert (=> b!45981 (= lt!6085 (seqFromList!38 lt!6080))))

(assert (=> b!45981 (= lt!6080 (list!207 input!525))))

(declare-fun mapIsEmpty!1000 () Bool)

(declare-fun mapRes!1001 () Bool)

(assert (=> mapIsEmpty!1000 mapRes!1001))

(declare-fun b!45982 () Bool)

(declare-fun e!26083 () Bool)

(declare-fun e!26088 () Bool)

(assert (=> b!45982 (= e!26083 e!26088)))

(declare-fun tp!31317 () Bool)

(declare-fun tp!31314 () Bool)

(declare-fun e!26078 () Bool)

(declare-fun e!26104 () Bool)

(declare-datatypes ((Hashable!253 0))(
  ( (HashableExt!252 (__x!1277 Int)) )
))
(declare-datatypes ((List!761 0))(
  ( (Nil!759) (Cons!759 (h!6155 Regex!239) (t!16818 List!761)) )
))
(declare-datatypes ((Context!194 0))(
  ( (Context!195 (exprs!597 List!761)) )
))
(declare-datatypes ((tuple2!922 0))(
  ( (tuple2!923 (_1!650 Context!194) (_2!650 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!924 0))(
  ( (tuple2!925 (_1!651 tuple2!922) (_2!651 (InoxSet Context!194))) )
))
(declare-datatypes ((List!762 0))(
  ( (Nil!760) (Cons!760 (h!6156 tuple2!924) (t!16819 List!762)) )
))
(declare-datatypes ((array!854 0))(
  ( (array!855 (arr!408 (Array (_ BitVec 32) List!762)) (size!740 (_ BitVec 32))) )
))
(declare-datatypes ((array!856 0))(
  ( (array!857 (arr!409 (Array (_ BitVec 32) (_ BitVec 64))) (size!741 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!514 0))(
  ( (LongMapFixedSize!515 (defaultEntry!595 Int) (mask!978 (_ BitVec 32)) (extraKeys!503 (_ BitVec 32)) (zeroValue!513 List!762) (minValue!513 List!762) (_size!646 (_ BitVec 32)) (_keys!548 array!856) (_values!535 array!854) (_vacant!317 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1017 0))(
  ( (Cell!1018 (v!12493 LongMapFixedSize!514)) )
))
(declare-datatypes ((MutLongMap!257 0))(
  ( (LongMap!257 (underlying!709 Cell!1017)) (MutLongMapExt!256 (__x!1278 Int)) )
))
(declare-datatypes ((Cell!1019 0))(
  ( (Cell!1020 (v!12494 MutLongMap!257)) )
))
(declare-datatypes ((MutableMap!253 0))(
  ( (MutableMapExt!252 (__x!1279 Int)) (HashMap!253 (underlying!710 Cell!1019) (hashF!2121 Hashable!253) (_size!647 (_ BitVec 32)) (defaultValue!402 Int)) )
))
(declare-datatypes ((CacheUp!172 0))(
  ( (CacheUp!173 (cache!738 MutableMap!253)) )
))
(declare-fun cacheUp!320 () CacheUp!172)

(declare-fun array_inv!273 (array!856) Bool)

(declare-fun array_inv!274 (array!854) Bool)

(assert (=> b!45983 (= e!26104 (and tp!31308 tp!31314 tp!31317 (array_inv!273 (_keys!548 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320))))))) (array_inv!274 (_values!535 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320))))))) e!26078))))

(declare-fun res!31286 () Bool)

(declare-fun e!26101 () Bool)

(assert (=> start!3042 (=> (not res!31286) (not e!26101))))

(declare-fun isEmpty!152 (List!759) Bool)

(assert (=> start!3042 (= res!31286 (not (isEmpty!152 lt!6076)))))

(declare-datatypes ((JsonLexer!86 0))(
  ( (JsonLexer!87) )
))
(declare-fun rules!109 (JsonLexer!86) List!759)

(assert (=> start!3042 (= lt!6076 (rules!109 JsonLexer!87))))

(assert (=> start!3042 e!26101))

(declare-datatypes ((tuple3!296 0))(
  ( (tuple3!297 (_1!652 Regex!239) (_2!652 Context!194) (_3!189 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!926 0))(
  ( (tuple2!927 (_1!653 tuple3!296) (_2!653 (InoxSet Context!194))) )
))
(declare-datatypes ((List!763 0))(
  ( (Nil!761) (Cons!761 (h!6157 tuple2!926) (t!16820 List!763)) )
))
(declare-datatypes ((array!858 0))(
  ( (array!859 (arr!410 (Array (_ BitVec 32) List!763)) (size!742 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!516 0))(
  ( (LongMapFixedSize!517 (defaultEntry!596 Int) (mask!979 (_ BitVec 32)) (extraKeys!504 (_ BitVec 32)) (zeroValue!514 List!763) (minValue!514 List!763) (_size!648 (_ BitVec 32)) (_keys!549 array!856) (_values!536 array!858) (_vacant!318 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1021 0))(
  ( (Cell!1022 (v!12495 LongMapFixedSize!516)) )
))
(declare-datatypes ((MutLongMap!258 0))(
  ( (LongMap!258 (underlying!711 Cell!1021)) (MutLongMapExt!257 (__x!1280 Int)) )
))
(declare-datatypes ((Cell!1023 0))(
  ( (Cell!1024 (v!12496 MutLongMap!258)) )
))
(declare-datatypes ((Hashable!254 0))(
  ( (HashableExt!253 (__x!1281 Int)) )
))
(declare-datatypes ((MutableMap!254 0))(
  ( (MutableMapExt!253 (__x!1282 Int)) (HashMap!254 (underlying!712 Cell!1023) (hashF!2122 Hashable!254) (_size!649 (_ BitVec 32)) (defaultValue!403 Int)) )
))
(declare-datatypes ((CacheDown!170 0))(
  ( (CacheDown!171 (cache!739 MutableMap!254)) )
))
(declare-fun cacheDown!333 () CacheDown!170)

(declare-fun e!26095 () Bool)

(declare-fun inv!1040 (CacheDown!170) Bool)

(assert (=> start!3042 (and (inv!1040 cacheDown!333) e!26095)))

(declare-fun inv!1041 (BalanceConc!294) Bool)

(assert (=> start!3042 (and (inv!1041 input!525) e!26086)))

(declare-datatypes ((tuple3!298 0))(
  ( (tuple3!299 (_1!654 (InoxSet Context!194)) (_2!654 Int) (_3!190 Int)) )
))
(declare-datatypes ((tuple2!928 0))(
  ( (tuple2!929 (_1!655 tuple3!298) (_2!655 Int)) )
))
(declare-datatypes ((List!764 0))(
  ( (Nil!762) (Cons!762 (h!6158 tuple2!928) (t!16821 List!764)) )
))
(declare-datatypes ((array!860 0))(
  ( (array!861 (arr!411 (Array (_ BitVec 32) List!764)) (size!743 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!518 0))(
  ( (LongMapFixedSize!519 (defaultEntry!597 Int) (mask!980 (_ BitVec 32)) (extraKeys!505 (_ BitVec 32)) (zeroValue!515 List!764) (minValue!515 List!764) (_size!650 (_ BitVec 32)) (_keys!550 array!856) (_values!537 array!860) (_vacant!319 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!255 0))(
  ( (HashableExt!254 (__x!1283 Int)) )
))
(declare-datatypes ((Cell!1025 0))(
  ( (Cell!1026 (v!12497 LongMapFixedSize!518)) )
))
(declare-datatypes ((MutLongMap!259 0))(
  ( (LongMap!259 (underlying!713 Cell!1025)) (MutLongMapExt!258 (__x!1284 Int)) )
))
(declare-datatypes ((Cell!1027 0))(
  ( (Cell!1028 (v!12498 MutLongMap!259)) )
))
(declare-datatypes ((MutableMap!255 0))(
  ( (MutableMapExt!254 (__x!1285 Int)) (HashMap!255 (underlying!714 Cell!1027) (hashF!2123 Hashable!255) (_size!651 (_ BitVec 32)) (defaultValue!404 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!120 0))(
  ( (CacheFurthestNullable!121 (cache!740 MutableMap!255) (totalInput!1543 BalanceConc!294)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!120)

(declare-fun e!26079 () Bool)

(declare-fun inv!1042 (CacheFurthestNullable!120) Bool)

(assert (=> start!3042 (and (inv!1042 cacheFurthestNullable!45) e!26079)))

(declare-fun e!26103 () Bool)

(declare-fun inv!1043 (CacheUp!172) Bool)

(assert (=> start!3042 (and (inv!1043 cacheUp!320) e!26103)))

(declare-fun e!26098 () Bool)

(declare-fun e!26093 () Bool)

(assert (=> b!45984 (= e!26098 (and e!26093 tp!31300))))

(declare-fun b!45985 () Bool)

(assert (=> b!45985 (= e!26092 e!26104)))

(declare-fun mapIsEmpty!1001 () Bool)

(declare-fun mapRes!1002 () Bool)

(assert (=> mapIsEmpty!1001 mapRes!1002))

(declare-fun b!45986 () Bool)

(declare-fun res!31281 () Bool)

(assert (=> b!45986 (=> (not res!31281) (not e!26089))))

(declare-datatypes ((LexerInterface!67 0))(
  ( (LexerInterfaceExt!64 (__x!1286 Int)) (Lexer!65) )
))
(declare-fun lexThenRulesProduceEachTokenIndividually!20 (LexerInterface!67 List!759 List!758) Bool)

(assert (=> b!45986 (= res!31281 (lexThenRulesProduceEachTokenIndividually!20 Lexer!65 lt!6076 lt!6080))))

(declare-fun b!45987 () Bool)

(declare-fun e!26080 () Bool)

(assert (=> b!45987 (= e!26101 e!26080)))

(declare-fun res!31283 () Bool)

(assert (=> b!45987 (=> (not res!31283) (not e!26080))))

(declare-fun lt!6086 () List!760)

(assert (=> b!45987 (= res!31283 (= lt!6074 lt!6086))))

(declare-datatypes ((IArray!297 0))(
  ( (IArray!298 (innerList!206 List!760)) )
))
(declare-datatypes ((Conc!148 0))(
  ( (Node!148 (left!595 Conc!148) (right!925 Conc!148) (csize!526 Int) (cheight!359 Int)) (Leaf!346 (xs!2727 IArray!297) (csize!527 Int)) (Empty!148) )
))
(declare-datatypes ((BalanceConc!296 0))(
  ( (BalanceConc!297 (c!16133 Conc!148)) )
))
(declare-datatypes ((tuple2!930 0))(
  ( (tuple2!931 (_1!656 BalanceConc!296) (_2!656 BalanceConc!294)) )
))
(declare-fun lt!6081 () tuple2!930)

(declare-fun list!208 (BalanceConc!296) List!760)

(assert (=> b!45987 (= lt!6086 (list!208 (_1!656 lt!6081)))))

(declare-datatypes ((tuple4!82 0))(
  ( (tuple4!83 (_1!657 tuple2!930) (_2!657 CacheUp!172) (_3!191 CacheDown!170) (_4!41 CacheFurthestNullable!120)) )
))
(declare-fun lt!6087 () tuple4!82)

(assert (=> b!45987 (= lt!6074 (list!208 (_1!656 (_1!657 lt!6087))))))

(declare-fun lex!46 (LexerInterface!67 List!759 BalanceConc!294) tuple2!930)

(assert (=> b!45987 (= lt!6081 (lex!46 Lexer!65 lt!6076 input!525))))

(declare-datatypes ((Unit!348 0))(
  ( (Unit!349) )
))
(declare-fun lt!6075 () Unit!348)

(declare-fun lemmaInvariant!63 (CacheDown!170) Unit!348)

(assert (=> b!45987 (= lt!6075 (lemmaInvariant!63 (_3!191 lt!6087)))))

(declare-fun lt!6082 () Unit!348)

(declare-fun lemmaInvariant!64 (CacheUp!172) Unit!348)

(assert (=> b!45987 (= lt!6082 (lemmaInvariant!64 (_2!657 lt!6087)))))

(declare-fun lexMem!30 (LexerInterface!67 List!759 BalanceConc!294 CacheUp!172 CacheDown!170 CacheFurthestNullable!120) tuple4!82)

(assert (=> b!45987 (= lt!6087 (lexMem!30 Lexer!65 lt!6076 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!45988 () Bool)

(declare-fun e!26076 () Bool)

(assert (=> b!45988 (= e!26095 e!26076)))

(declare-fun b!45989 () Bool)

(assert (=> b!45989 (= e!26103 e!26098)))

(declare-fun b!45990 () Bool)

(declare-fun e!26099 () Bool)

(declare-fun tp!31298 () Bool)

(assert (=> b!45990 (= e!26099 (and tp!31298 mapRes!1002))))

(declare-fun condMapEmpty!1000 () Bool)

(declare-fun mapDefault!1001 () List!764)

(assert (=> b!45990 (= condMapEmpty!1000 (= (arr!411 (_values!537 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!764)) mapDefault!1001)))))

(declare-fun b!45991 () Bool)

(declare-fun e!26097 () Bool)

(assert (=> b!45991 (= e!26097 e!26081)))

(declare-fun mapNonEmpty!1000 () Bool)

(declare-fun tp!31316 () Bool)

(declare-fun tp!31299 () Bool)

(assert (=> mapNonEmpty!1000 (= mapRes!1001 (and tp!31316 tp!31299))))

(declare-fun mapValue!1001 () List!763)

(declare-fun mapKey!1002 () (_ BitVec 32))

(declare-fun mapRest!1002 () (Array (_ BitVec 32) List!763))

(assert (=> mapNonEmpty!1000 (= (arr!410 (_values!536 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333))))))) (store mapRest!1002 mapKey!1002 mapValue!1001))))

(declare-fun mapNonEmpty!1001 () Bool)

(declare-fun mapRes!1000 () Bool)

(declare-fun tp!31319 () Bool)

(declare-fun tp!31309 () Bool)

(assert (=> mapNonEmpty!1001 (= mapRes!1000 (and tp!31319 tp!31309))))

(declare-fun mapKey!1001 () (_ BitVec 32))

(declare-fun mapValue!1000 () List!762)

(declare-fun mapRest!1001 () (Array (_ BitVec 32) List!762))

(assert (=> mapNonEmpty!1001 (= (arr!408 (_values!535 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320))))))) (store mapRest!1001 mapKey!1001 mapValue!1000))))

(declare-fun tp!31302 () Bool)

(declare-fun e!26075 () Bool)

(declare-fun tp!31305 () Bool)

(declare-fun e!26082 () Bool)

(declare-fun array_inv!275 (array!858) Bool)

(assert (=> b!45992 (= e!26075 (and tp!31315 tp!31302 tp!31305 (array_inv!273 (_keys!549 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333))))))) (array_inv!275 (_values!536 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333))))))) e!26082))))

(declare-fun b!45993 () Bool)

(declare-fun e!26074 () Bool)

(declare-fun lt!6084 () MutLongMap!258)

(assert (=> b!45993 (= e!26074 (and e!26083 ((_ is LongMap!258) lt!6084)))))

(assert (=> b!45993 (= lt!6084 (v!12496 (underlying!712 (cache!739 cacheDown!333))))))

(declare-fun b!45994 () Bool)

(declare-fun tp!31313 () Bool)

(assert (=> b!45994 (= e!26082 (and tp!31313 mapRes!1001))))

(declare-fun condMapEmpty!1001 () Bool)

(declare-fun mapDefault!1002 () List!763)

(assert (=> b!45994 (= condMapEmpty!1001 (= (arr!410 (_values!536 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!763)) mapDefault!1002)))))

(declare-fun b!45995 () Bool)

(declare-fun res!31297 () Bool)

(assert (=> b!45995 (=> (not res!31297) (not e!26101))))

(declare-fun valid!230 (CacheFurthestNullable!120) Bool)

(assert (=> b!45995 (= res!31297 (valid!230 cacheFurthestNullable!45))))

(declare-fun b!45996 () Bool)

(assert (=> b!45996 (= e!26080 e!26096)))

(declare-fun res!31284 () Bool)

(assert (=> b!45996 (=> (not res!31284) (not e!26096))))

(declare-fun lt!6088 () List!758)

(declare-fun lt!6083 () List!758)

(assert (=> b!45996 (= res!31284 (= lt!6088 lt!6083))))

(assert (=> b!45996 (= lt!6083 (list!207 (_2!656 lt!6081)))))

(assert (=> b!45996 (= lt!6088 (list!207 (_2!656 (_1!657 lt!6087))))))

(declare-fun b!45997 () Bool)

(declare-fun res!31288 () Bool)

(assert (=> b!45997 (=> (not res!31288) (not e!26089))))

(declare-fun rulesProduceEachTokenIndividuallyList!23 (LexerInterface!67 List!759 List!760) Bool)

(assert (=> b!45997 (= res!31288 (rulesProduceEachTokenIndividuallyList!23 Lexer!65 lt!6076 lt!6074))))

(declare-fun b!45998 () Bool)

(declare-fun lt!6079 () MutLongMap!257)

(assert (=> b!45998 (= e!26093 (and e!26084 ((_ is LongMap!257) lt!6079)))))

(assert (=> b!45998 (= lt!6079 (v!12494 (underlying!710 (cache!738 cacheUp!320))))))

(declare-fun b!45999 () Bool)

(assert (=> b!45999 (= e!26088 e!26075)))

(declare-fun b!46000 () Bool)

(declare-fun e!26087 () Bool)

(declare-fun lt!6077 () MutLongMap!259)

(assert (=> b!46000 (= e!26087 (and e!26097 ((_ is LongMap!259) lt!6077)))))

(assert (=> b!46000 (= lt!6077 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))

(declare-fun b!46001 () Bool)

(declare-fun res!31294 () Bool)

(assert (=> b!46001 (=> (not res!31294) (not e!26101))))

(declare-fun rulesInvariant!60 (LexerInterface!67 List!759) Bool)

(assert (=> b!46001 (= res!31294 (rulesInvariant!60 Lexer!65 lt!6076))))

(assert (=> b!46002 (= e!26076 (and e!26074 tp!31304))))

(declare-fun b!46003 () Bool)

(declare-fun tp!31301 () Bool)

(assert (=> b!46003 (= e!26078 (and tp!31301 mapRes!1000))))

(declare-fun condMapEmpty!1002 () Bool)

(declare-fun mapDefault!1000 () List!762)

(assert (=> b!46003 (= condMapEmpty!1002 (= (arr!408 (_values!535 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!762)) mapDefault!1000)))))

(declare-fun b!46004 () Bool)

(assert (=> b!46004 (= e!26077 e!26089)))

(declare-fun res!31295 () Bool)

(assert (=> b!46004 (=> (not res!31295) (not e!26089))))

(declare-fun lt!6078 () tuple2!930)

(assert (=> b!46004 (= res!31295 (= lt!6086 (list!208 (_1!656 lt!6078))))))

(assert (=> b!46004 (= lt!6078 (lex!46 Lexer!65 lt!6076 lt!6085))))

(declare-fun b!46005 () Bool)

(declare-fun res!31296 () Bool)

(assert (=> b!46005 (=> (not res!31296) (not e!26089))))

(declare-fun forall!93 (BalanceConc!296 Int) Bool)

(assert (=> b!46005 (= res!31296 (forall!93 (_1!656 (_1!657 lt!6087)) lambda!857))))

(declare-fun b!46006 () Bool)

(declare-fun e!26102 () Bool)

(declare-fun tp!31310 () Bool)

(assert (=> b!46006 (= e!26102 (and (inv!1039 (c!16132 (totalInput!1543 cacheFurthestNullable!45))) tp!31310))))

(declare-fun e!26091 () Bool)

(assert (=> b!46007 (= e!26091 (and e!26087 tp!31306))))

(declare-fun b!46008 () Bool)

(declare-fun res!31293 () Bool)

(assert (=> b!46008 (=> (not res!31293) (not e!26089))))

(declare-fun valid!231 (CacheUp!172) Bool)

(assert (=> b!46008 (= res!31293 (valid!231 (_2!657 lt!6087)))))

(declare-fun b!46009 () Bool)

(declare-fun res!31289 () Bool)

(assert (=> b!46009 (=> (not res!31289) (not e!26101))))

(assert (=> b!46009 (= res!31289 (valid!231 cacheUp!320))))

(declare-fun b!46010 () Bool)

(assert (=> b!46010 (= e!26079 (and e!26091 (inv!1041 (totalInput!1543 cacheFurthestNullable!45)) e!26102))))

(declare-fun tp!31318 () Bool)

(declare-fun tp!31311 () Bool)

(declare-fun array_inv!276 (array!860) Bool)

(assert (=> b!46011 (= e!26085 (and tp!31312 tp!31311 tp!31318 (array_inv!273 (_keys!550 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))) (array_inv!276 (_values!537 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))) e!26099))))

(declare-fun b!46012 () Bool)

(declare-fun res!31287 () Bool)

(assert (=> b!46012 (=> (not res!31287) (not e!26089))))

(declare-fun valid!232 (CacheDown!170) Bool)

(assert (=> b!46012 (= res!31287 (valid!232 (_3!191 lt!6087)))))

(declare-fun b!46013 () Bool)

(declare-fun res!31285 () Bool)

(assert (=> b!46013 (=> (not res!31285) (not e!26089))))

(assert (=> b!46013 (= res!31285 (= lt!6083 (list!207 (_2!656 lt!6078))))))

(declare-fun mapNonEmpty!1002 () Bool)

(declare-fun tp!31303 () Bool)

(declare-fun tp!31320 () Bool)

(assert (=> mapNonEmpty!1002 (= mapRes!1002 (and tp!31303 tp!31320))))

(declare-fun mapValue!1002 () List!764)

(declare-fun mapKey!1000 () (_ BitVec 32))

(declare-fun mapRest!1000 () (Array (_ BitVec 32) List!764))

(assert (=> mapNonEmpty!1002 (= (arr!411 (_values!537 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))) (store mapRest!1000 mapKey!1000 mapValue!1002))))

(declare-fun mapIsEmpty!1002 () Bool)

(assert (=> mapIsEmpty!1002 mapRes!1000))

(declare-fun b!46014 () Bool)

(assert (=> b!46014 (= e!26089 (not (valid!230 (_4!41 lt!6087))))))

(declare-fun b!46015 () Bool)

(declare-fun res!31292 () Bool)

(assert (=> b!46015 (=> (not res!31292) (not e!26101))))

(assert (=> b!46015 (= res!31292 (= (totalInput!1543 cacheFurthestNullable!45) input!525))))

(declare-fun b!46016 () Bool)

(declare-fun res!31290 () Bool)

(assert (=> b!46016 (=> (not res!31290) (not e!26101))))

(assert (=> b!46016 (= res!31290 (valid!232 cacheDown!333))))

(assert (= (and start!3042 res!31286) b!46001))

(assert (= (and b!46001 res!31294) b!46009))

(assert (= (and b!46009 res!31289) b!46016))

(assert (= (and b!46016 res!31290) b!45995))

(assert (= (and b!45995 res!31297) b!46015))

(assert (= (and b!46015 res!31292) b!45987))

(assert (= (and b!45987 res!31283) b!45996))

(assert (= (and b!45996 res!31284) b!45981))

(assert (= (and b!45981 res!31282) b!46004))

(assert (= (and b!46004 res!31295) b!46013))

(assert (= (and b!46013 res!31285) b!45986))

(assert (= (and b!45986 res!31281) b!45980))

(assert (= (and b!45980 res!31291) b!46005))

(assert (= (and b!46005 res!31296) b!45997))

(assert (= (and b!45997 res!31288) b!46008))

(assert (= (and b!46008 res!31293) b!46012))

(assert (= (and b!46012 res!31287) b!46014))

(assert (= (and b!45994 condMapEmpty!1001) mapIsEmpty!1000))

(assert (= (and b!45994 (not condMapEmpty!1001)) mapNonEmpty!1000))

(assert (= b!45992 b!45994))

(assert (= b!45999 b!45992))

(assert (= b!45982 b!45999))

(assert (= (and b!45993 ((_ is LongMap!258) (v!12496 (underlying!712 (cache!739 cacheDown!333))))) b!45982))

(assert (= b!46002 b!45993))

(assert (= (and b!45988 ((_ is HashMap!254) (cache!739 cacheDown!333))) b!46002))

(assert (= start!3042 b!45988))

(assert (= start!3042 b!45979))

(assert (= (and b!45990 condMapEmpty!1000) mapIsEmpty!1001))

(assert (= (and b!45990 (not condMapEmpty!1000)) mapNonEmpty!1002))

(assert (= b!46011 b!45990))

(assert (= b!45978 b!46011))

(assert (= b!45991 b!45978))

(assert (= (and b!46000 ((_ is LongMap!259) (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))) b!45991))

(assert (= b!46007 b!46000))

(assert (= (and b!46010 ((_ is HashMap!255) (cache!740 cacheFurthestNullable!45))) b!46007))

(assert (= b!46010 b!46006))

(assert (= start!3042 b!46010))

(assert (= (and b!46003 condMapEmpty!1002) mapIsEmpty!1002))

(assert (= (and b!46003 (not condMapEmpty!1002)) mapNonEmpty!1001))

(assert (= b!45983 b!46003))

(assert (= b!45985 b!45983))

(assert (= b!45977 b!45985))

(assert (= (and b!45998 ((_ is LongMap!257) (v!12494 (underlying!710 (cache!738 cacheUp!320))))) b!45977))

(assert (= b!45984 b!45998))

(assert (= (and b!45989 ((_ is HashMap!253) (cache!738 cacheUp!320))) b!45984))

(assert (= start!3042 b!45989))

(declare-fun m!20194 () Bool)

(assert (=> b!46004 m!20194))

(declare-fun m!20196 () Bool)

(assert (=> b!46004 m!20196))

(declare-fun m!20198 () Bool)

(assert (=> b!45987 m!20198))

(declare-fun m!20200 () Bool)

(assert (=> b!45987 m!20200))

(declare-fun m!20202 () Bool)

(assert (=> b!45987 m!20202))

(declare-fun m!20204 () Bool)

(assert (=> b!45987 m!20204))

(declare-fun m!20206 () Bool)

(assert (=> b!45987 m!20206))

(declare-fun m!20208 () Bool)

(assert (=> b!45987 m!20208))

(declare-fun m!20210 () Bool)

(assert (=> b!46016 m!20210))

(declare-fun m!20212 () Bool)

(assert (=> b!45997 m!20212))

(declare-fun m!20214 () Bool)

(assert (=> b!46008 m!20214))

(declare-fun m!20216 () Bool)

(assert (=> b!46001 m!20216))

(declare-fun m!20218 () Bool)

(assert (=> b!46010 m!20218))

(declare-fun m!20220 () Bool)

(assert (=> b!46012 m!20220))

(declare-fun m!20222 () Bool)

(assert (=> mapNonEmpty!1000 m!20222))

(declare-fun m!20224 () Bool)

(assert (=> b!46011 m!20224))

(declare-fun m!20226 () Bool)

(assert (=> b!46011 m!20226))

(declare-fun m!20228 () Bool)

(assert (=> b!45983 m!20228))

(declare-fun m!20230 () Bool)

(assert (=> b!45983 m!20230))

(declare-fun m!20232 () Bool)

(assert (=> b!45979 m!20232))

(declare-fun m!20234 () Bool)

(assert (=> b!45992 m!20234))

(declare-fun m!20236 () Bool)

(assert (=> b!45992 m!20236))

(declare-fun m!20238 () Bool)

(assert (=> b!46006 m!20238))

(declare-fun m!20240 () Bool)

(assert (=> mapNonEmpty!1002 m!20240))

(declare-fun m!20242 () Bool)

(assert (=> b!45980 m!20242))

(declare-fun m!20244 () Bool)

(assert (=> mapNonEmpty!1001 m!20244))

(declare-fun m!20246 () Bool)

(assert (=> b!45981 m!20246))

(declare-fun m!20248 () Bool)

(assert (=> b!45981 m!20248))

(declare-fun m!20250 () Bool)

(assert (=> b!45981 m!20250))

(declare-fun m!20252 () Bool)

(assert (=> b!46014 m!20252))

(declare-fun m!20254 () Bool)

(assert (=> b!46009 m!20254))

(declare-fun m!20256 () Bool)

(assert (=> b!45995 m!20256))

(declare-fun m!20258 () Bool)

(assert (=> b!45986 m!20258))

(declare-fun m!20260 () Bool)

(assert (=> start!3042 m!20260))

(declare-fun m!20262 () Bool)

(assert (=> start!3042 m!20262))

(declare-fun m!20264 () Bool)

(assert (=> start!3042 m!20264))

(declare-fun m!20266 () Bool)

(assert (=> start!3042 m!20266))

(declare-fun m!20268 () Bool)

(assert (=> start!3042 m!20268))

(declare-fun m!20270 () Bool)

(assert (=> start!3042 m!20270))

(declare-fun m!20272 () Bool)

(assert (=> b!45996 m!20272))

(declare-fun m!20274 () Bool)

(assert (=> b!45996 m!20274))

(declare-fun m!20276 () Bool)

(assert (=> b!46013 m!20276))

(declare-fun m!20278 () Bool)

(assert (=> b!46005 m!20278))

(check-sat (not b!45995) (not b!45981) (not b_next!1207) b_and!1231 (not b!46009) b_and!1241 (not mapNonEmpty!1002) (not start!3042) b_and!1233 (not b!46004) (not b!45987) (not b!46005) (not b_next!1197) (not b!46011) b_and!1237 b_and!1235 (not b!45979) (not b!45990) (not b!45994) (not b!45986) (not b!46016) (not b!45997) b_and!1239 (not b!46003) (not b!46012) (not mapNonEmpty!1001) (not b_next!1199) (not b!46001) (not b!46025) (not b_next!1205) (not b!45996) (not b!45992) (not b!45983) (not b!46010) (not b!46014) (not b!46008) (not b_next!1201) (not b!46006) (not b!46013) (not b!45980) (not b_next!1203) (not mapNonEmpty!1000))
(check-sat (not b_next!1197) b_and!1237 b_and!1235 (not b_next!1207) b_and!1231 b_and!1239 b_and!1241 (not b_next!1201) (not b_next!1203) b_and!1233 (not b_next!1205) (not b_next!1199))
(get-model)

(declare-fun bs!6298 () Bool)

(declare-fun d!5394 () Bool)

(assert (= bs!6298 (and d!5394 b!45980)))

(declare-fun lambda!860 () Int)

(assert (=> bs!6298 (= lambda!860 lambda!857)))

(declare-fun b!46036 () Bool)

(declare-fun e!26122 () Bool)

(assert (=> b!46036 (= e!26122 true)))

(declare-fun b!46035 () Bool)

(declare-fun e!26121 () Bool)

(assert (=> b!46035 (= e!26121 e!26122)))

(declare-fun b!46034 () Bool)

(declare-fun e!26120 () Bool)

(assert (=> b!46034 (= e!26120 e!26121)))

(assert (=> d!5394 e!26120))

(assert (= b!46035 b!46036))

(assert (= b!46034 b!46035))

(assert (= (and d!5394 ((_ is Cons!757) lt!6076)) b!46034))

(assert (=> b!46036 (< (dynLambda!117 order!187 (toValue!652 (transformation!173 (h!6153 lt!6076)))) (dynLambda!118 order!189 lambda!860))))

(assert (=> b!46036 (< (dynLambda!119 order!191 (toChars!511 (transformation!173 (h!6153 lt!6076)))) (dynLambda!118 order!189 lambda!860))))

(assert (=> d!5394 true))

(declare-fun lt!6091 () Bool)

(assert (=> d!5394 (= lt!6091 (forall!92 lt!6074 lambda!860))))

(declare-fun e!26119 () Bool)

(assert (=> d!5394 (= lt!6091 e!26119)))

(declare-fun res!31305 () Bool)

(assert (=> d!5394 (=> res!31305 e!26119)))

(assert (=> d!5394 (= res!31305 (not ((_ is Cons!758) lt!6074)))))

(assert (=> d!5394 (not (isEmpty!152 lt!6076))))

(assert (=> d!5394 (= (rulesProduceEachTokenIndividuallyList!23 Lexer!65 lt!6076 lt!6074) lt!6091)))

(declare-fun b!46032 () Bool)

(declare-fun e!26118 () Bool)

(assert (=> b!46032 (= e!26119 e!26118)))

(declare-fun res!31304 () Bool)

(assert (=> b!46032 (=> (not res!31304) (not e!26118))))

(declare-fun rulesProduceIndividualToken!10 (LexerInterface!67 List!759 Token!112) Bool)

(assert (=> b!46032 (= res!31304 (rulesProduceIndividualToken!10 Lexer!65 lt!6076 (h!6154 lt!6074)))))

(declare-fun b!46033 () Bool)

(assert (=> b!46033 (= e!26118 (rulesProduceEachTokenIndividuallyList!23 Lexer!65 lt!6076 (t!16817 lt!6074)))))

(assert (= (and d!5394 (not res!31305)) b!46032))

(assert (= (and b!46032 res!31304) b!46033))

(declare-fun m!20280 () Bool)

(assert (=> d!5394 m!20280))

(assert (=> d!5394 m!20262))

(declare-fun m!20282 () Bool)

(assert (=> b!46032 m!20282))

(declare-fun m!20284 () Bool)

(assert (=> b!46033 m!20284))

(assert (=> b!45997 d!5394))

(declare-fun d!5396 () Bool)

(declare-fun validCacheMapUp!23 (MutableMap!253) Bool)

(assert (=> d!5396 (= (valid!231 (_2!657 lt!6087)) (validCacheMapUp!23 (cache!738 (_2!657 lt!6087))))))

(declare-fun bs!6299 () Bool)

(assert (= bs!6299 d!5396))

(declare-fun m!20286 () Bool)

(assert (=> bs!6299 m!20286))

(assert (=> b!46008 d!5396))

(declare-fun d!5398 () Bool)

(declare-fun res!31310 () Bool)

(declare-fun e!26127 () Bool)

(assert (=> d!5398 (=> res!31310 e!26127)))

(assert (=> d!5398 (= res!31310 ((_ is Nil!758) lt!6074))))

(assert (=> d!5398 (= (forall!92 lt!6074 lambda!857) e!26127)))

(declare-fun b!46043 () Bool)

(declare-fun e!26128 () Bool)

(assert (=> b!46043 (= e!26127 e!26128)))

(declare-fun res!31311 () Bool)

(assert (=> b!46043 (=> (not res!31311) (not e!26128))))

(declare-fun dynLambda!120 (Int Token!112) Bool)

(assert (=> b!46043 (= res!31311 (dynLambda!120 lambda!857 (h!6154 lt!6074)))))

(declare-fun b!46044 () Bool)

(assert (=> b!46044 (= e!26128 (forall!92 (t!16817 lt!6074) lambda!857))))

(assert (= (and d!5398 (not res!31310)) b!46043))

(assert (= (and b!46043 res!31311) b!46044))

(declare-fun b_lambda!265 () Bool)

(assert (=> (not b_lambda!265) (not b!46043)))

(declare-fun m!20288 () Bool)

(assert (=> b!46043 m!20288))

(declare-fun m!20290 () Bool)

(assert (=> b!46044 m!20290))

(assert (=> b!45980 d!5398))

(declare-fun d!5400 () Bool)

(declare-fun isBalanced!28 (Conc!147) Bool)

(assert (=> d!5400 (= (inv!1041 (totalInput!1543 cacheFurthestNullable!45)) (isBalanced!28 (c!16132 (totalInput!1543 cacheFurthestNullable!45))))))

(declare-fun bs!6300 () Bool)

(assert (= bs!6300 d!5400))

(declare-fun m!20292 () Bool)

(assert (=> bs!6300 m!20292))

(assert (=> b!46010 d!5400))

(declare-fun d!5402 () Bool)

(assert (=> d!5402 (= (valid!231 cacheUp!320) (validCacheMapUp!23 (cache!738 cacheUp!320)))))

(declare-fun bs!6301 () Bool)

(assert (= bs!6301 d!5402))

(declare-fun m!20294 () Bool)

(assert (=> bs!6301 m!20294))

(assert (=> b!46009 d!5402))

(declare-fun d!5404 () Bool)

(declare-fun list!209 (Conc!147) List!758)

(assert (=> d!5404 (= (list!207 lt!6085) (list!209 (c!16132 lt!6085)))))

(declare-fun bs!6302 () Bool)

(assert (= bs!6302 d!5404))

(declare-fun m!20296 () Bool)

(assert (=> bs!6302 m!20296))

(assert (=> b!45981 d!5404))

(declare-fun d!5406 () Bool)

(declare-fun fromListB!14 (List!758) BalanceConc!294)

(assert (=> d!5406 (= (seqFromList!38 lt!6080) (fromListB!14 lt!6080))))

(declare-fun bs!6303 () Bool)

(assert (= bs!6303 d!5406))

(declare-fun m!20298 () Bool)

(assert (=> bs!6303 m!20298))

(assert (=> b!45981 d!5406))

(declare-fun d!5408 () Bool)

(assert (=> d!5408 (= (list!207 input!525) (list!209 (c!16132 input!525)))))

(declare-fun bs!6304 () Bool)

(assert (= bs!6304 d!5408))

(declare-fun m!20300 () Bool)

(assert (=> bs!6304 m!20300))

(assert (=> b!45981 d!5408))

(declare-fun d!5410 () Bool)

(declare-fun validCacheMapFurthestNullable!17 (MutableMap!255 BalanceConc!294) Bool)

(assert (=> d!5410 (= (valid!230 cacheFurthestNullable!45) (validCacheMapFurthestNullable!17 (cache!740 cacheFurthestNullable!45) (totalInput!1543 cacheFurthestNullable!45)))))

(declare-fun bs!6305 () Bool)

(assert (= bs!6305 d!5410))

(declare-fun m!20302 () Bool)

(assert (=> bs!6305 m!20302))

(assert (=> b!45995 d!5410))

(declare-fun d!5412 () Bool)

(declare-fun c!16136 () Bool)

(assert (=> d!5412 (= c!16136 ((_ is Node!147) (c!16132 (totalInput!1543 cacheFurthestNullable!45))))))

(declare-fun e!26133 () Bool)

(assert (=> d!5412 (= (inv!1039 (c!16132 (totalInput!1543 cacheFurthestNullable!45))) e!26133)))

(declare-fun b!46051 () Bool)

(declare-fun inv!1044 (Conc!147) Bool)

(assert (=> b!46051 (= e!26133 (inv!1044 (c!16132 (totalInput!1543 cacheFurthestNullable!45))))))

(declare-fun b!46052 () Bool)

(declare-fun e!26134 () Bool)

(assert (=> b!46052 (= e!26133 e!26134)))

(declare-fun res!31314 () Bool)

(assert (=> b!46052 (= res!31314 (not ((_ is Leaf!345) (c!16132 (totalInput!1543 cacheFurthestNullable!45)))))))

(assert (=> b!46052 (=> res!31314 e!26134)))

(declare-fun b!46053 () Bool)

(declare-fun inv!1045 (Conc!147) Bool)

(assert (=> b!46053 (= e!26134 (inv!1045 (c!16132 (totalInput!1543 cacheFurthestNullable!45))))))

(assert (= (and d!5412 c!16136) b!46051))

(assert (= (and d!5412 (not c!16136)) b!46052))

(assert (= (and b!46052 (not res!31314)) b!46053))

(declare-fun m!20304 () Bool)

(assert (=> b!46051 m!20304))

(declare-fun m!20306 () Bool)

(assert (=> b!46053 m!20306))

(assert (=> b!46006 d!5412))

(declare-fun d!5414 () Bool)

(declare-fun lt!6094 () Bool)

(assert (=> d!5414 (= lt!6094 (forall!92 (list!208 (_1!656 (_1!657 lt!6087))) lambda!857))))

(declare-fun forall!94 (Conc!148 Int) Bool)

(assert (=> d!5414 (= lt!6094 (forall!94 (c!16133 (_1!656 (_1!657 lt!6087))) lambda!857))))

(assert (=> d!5414 (= (forall!93 (_1!656 (_1!657 lt!6087)) lambda!857) lt!6094)))

(declare-fun bs!6306 () Bool)

(assert (= bs!6306 d!5414))

(assert (=> bs!6306 m!20198))

(assert (=> bs!6306 m!20198))

(declare-fun m!20308 () Bool)

(assert (=> bs!6306 m!20308))

(declare-fun m!20310 () Bool)

(assert (=> bs!6306 m!20310))

(assert (=> b!46005 d!5414))

(declare-fun d!5416 () Bool)

(assert (=> d!5416 (= (valid!230 (_4!41 lt!6087)) (validCacheMapFurthestNullable!17 (cache!740 (_4!41 lt!6087)) (totalInput!1543 (_4!41 lt!6087))))))

(declare-fun bs!6307 () Bool)

(assert (= bs!6307 d!5416))

(declare-fun m!20312 () Bool)

(assert (=> bs!6307 m!20312))

(assert (=> b!46014 d!5416))

(declare-fun d!5418 () Bool)

(declare-fun e!26145 () Bool)

(assert (=> d!5418 e!26145))

(declare-fun res!31326 () Bool)

(assert (=> d!5418 (=> (not res!31326) (not e!26145))))

(declare-fun lt!6108 () Bool)

(assert (=> d!5418 (= res!31326 lt!6108)))

(declare-fun e!26144 () Bool)

(assert (=> d!5418 (= lt!6108 e!26144)))

(declare-fun res!31325 () Bool)

(assert (=> d!5418 (=> res!31325 e!26144)))

(declare-fun e!26146 () Bool)

(assert (=> d!5418 (= res!31325 (not e!26146))))

(declare-fun res!31327 () Bool)

(assert (=> d!5418 (=> (not res!31327) (not e!26146))))

(assert (=> d!5418 (= res!31327 (not (isEmpty!152 lt!6076)))))

(assert (=> d!5418 (= (lexThenRulesProduceEachTokenIndividually!20 Lexer!65 lt!6076 lt!6080) lt!6108)))

(declare-fun b!46064 () Bool)

(declare-fun e!26143 () Bool)

(assert (=> b!46064 (= e!26145 e!26143)))

(declare-fun res!31328 () Bool)

(assert (=> b!46064 (=> res!31328 e!26143)))

(assert (=> b!46064 (= res!31328 (isEmpty!152 lt!6076))))

(declare-fun b!46065 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!24 (LexerInterface!67 List!759 List!760) Bool)

(declare-fun lex!47 (LexerInterface!67 List!759 BalanceConc!294) tuple2!930)

(assert (=> b!46065 (= e!26143 (rulesProduceEachTokenIndividuallyList!24 Lexer!65 lt!6076 (list!208 (_1!656 (lex!47 Lexer!65 lt!6076 (seqFromList!38 lt!6080))))))))

(declare-fun b!46066 () Bool)

(assert (=> b!46066 (= e!26146 (rulesInvariant!60 Lexer!65 lt!6076))))

(declare-fun b!46067 () Bool)

(declare-fun res!31329 () Bool)

(assert (=> b!46067 (=> res!31329 e!26143)))

(declare-fun rulesInvariant!61 (LexerInterface!67 List!759) Bool)

(assert (=> b!46067 (= res!31329 (not (rulesInvariant!61 Lexer!65 lt!6076)))))

(declare-fun b!46068 () Bool)

(declare-fun lt!6105 () tuple2!930)

(assert (=> b!46068 (= e!26144 (rulesProduceEachTokenIndividuallyList!23 Lexer!65 lt!6076 (list!208 (_1!656 lt!6105))))))

(declare-fun lt!6106 () Unit!348)

(declare-fun lt!6107 () Unit!348)

(assert (=> b!46068 (= lt!6106 lt!6107)))

(declare-fun lt!6109 () List!760)

(declare-fun rulesProduceEachTokenIndividually!9 (LexerInterface!67 List!759 BalanceConc!296) Bool)

(declare-fun seqFromList!39 (List!760) BalanceConc!296)

(assert (=> b!46068 (rulesProduceEachTokenIndividually!9 Lexer!65 lt!6076 (seqFromList!39 lt!6109))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!9 (LexerInterface!67 List!759 List!758 List!760) Unit!348)

(assert (=> b!46068 (= lt!6107 (lemmaLexThenRulesProducesEachTokenIndividually!9 Lexer!65 lt!6076 lt!6080 lt!6109))))

(assert (=> b!46068 (= lt!6109 (list!208 (_1!656 lt!6105)))))

(assert (=> b!46068 (= lt!6105 (lex!46 Lexer!65 lt!6076 (seqFromList!38 lt!6080)))))

(assert (= (and d!5418 res!31327) b!46066))

(assert (= (and d!5418 (not res!31325)) b!46068))

(assert (= (and d!5418 res!31326) b!46064))

(assert (= (and b!46064 (not res!31328)) b!46067))

(assert (= (and b!46067 (not res!31329)) b!46065))

(assert (=> d!5418 m!20262))

(declare-fun m!20314 () Bool)

(assert (=> b!46068 m!20314))

(assert (=> b!46068 m!20248))

(assert (=> b!46068 m!20248))

(declare-fun m!20316 () Bool)

(assert (=> b!46068 m!20316))

(assert (=> b!46068 m!20314))

(declare-fun m!20318 () Bool)

(assert (=> b!46068 m!20318))

(declare-fun m!20320 () Bool)

(assert (=> b!46068 m!20320))

(assert (=> b!46068 m!20320))

(declare-fun m!20322 () Bool)

(assert (=> b!46068 m!20322))

(declare-fun m!20324 () Bool)

(assert (=> b!46068 m!20324))

(assert (=> b!46065 m!20248))

(assert (=> b!46065 m!20248))

(declare-fun m!20326 () Bool)

(assert (=> b!46065 m!20326))

(declare-fun m!20328 () Bool)

(assert (=> b!46065 m!20328))

(assert (=> b!46065 m!20328))

(declare-fun m!20330 () Bool)

(assert (=> b!46065 m!20330))

(declare-fun m!20332 () Bool)

(assert (=> b!46067 m!20332))

(assert (=> b!46064 m!20262))

(assert (=> b!46066 m!20216))

(assert (=> b!45986 d!5418))

(declare-fun d!5420 () Bool)

(declare-fun c!16137 () Bool)

(assert (=> d!5420 (= c!16137 ((_ is Node!147) (c!16132 input!525)))))

(declare-fun e!26147 () Bool)

(assert (=> d!5420 (= (inv!1039 (c!16132 input!525)) e!26147)))

(declare-fun b!46069 () Bool)

(assert (=> b!46069 (= e!26147 (inv!1044 (c!16132 input!525)))))

(declare-fun b!46070 () Bool)

(declare-fun e!26148 () Bool)

(assert (=> b!46070 (= e!26147 e!26148)))

(declare-fun res!31330 () Bool)

(assert (=> b!46070 (= res!31330 (not ((_ is Leaf!345) (c!16132 input!525))))))

(assert (=> b!46070 (=> res!31330 e!26148)))

(declare-fun b!46071 () Bool)

(assert (=> b!46071 (= e!26148 (inv!1045 (c!16132 input!525)))))

(assert (= (and d!5420 c!16137) b!46069))

(assert (= (and d!5420 (not c!16137)) b!46070))

(assert (= (and b!46070 (not res!31330)) b!46071))

(declare-fun m!20334 () Bool)

(assert (=> b!46069 m!20334))

(declare-fun m!20336 () Bool)

(assert (=> b!46071 m!20336))

(assert (=> b!45979 d!5420))

(declare-fun d!5422 () Bool)

(declare-fun validCacheMapDown!25 (MutableMap!254) Bool)

(assert (=> d!5422 (= (valid!232 cacheDown!333) (validCacheMapDown!25 (cache!739 cacheDown!333)))))

(declare-fun bs!6308 () Bool)

(assert (= bs!6308 d!5422))

(declare-fun m!20338 () Bool)

(assert (=> bs!6308 m!20338))

(assert (=> b!46016 d!5422))

(declare-fun d!5424 () Bool)

(declare-fun list!210 (Conc!148) List!760)

(assert (=> d!5424 (= (list!208 (_1!656 (_1!657 lt!6087))) (list!210 (c!16133 (_1!656 (_1!657 lt!6087)))))))

(declare-fun bs!6309 () Bool)

(assert (= bs!6309 d!5424))

(declare-fun m!20340 () Bool)

(assert (=> bs!6309 m!20340))

(assert (=> b!45987 d!5424))

(declare-fun b!46082 () Bool)

(declare-fun res!31343 () Bool)

(declare-fun e!26151 () Bool)

(assert (=> b!46082 (=> (not res!31343) (not e!26151))))

(declare-fun lt!6114 () tuple4!82)

(assert (=> b!46082 (= res!31343 (valid!230 (_4!41 lt!6114)))))

(declare-fun b!46083 () Bool)

(declare-fun res!31342 () Bool)

(assert (=> b!46083 (=> (not res!31342) (not e!26151))))

(assert (=> b!46083 (= res!31342 (= (list!207 (_2!656 (_1!657 lt!6114))) (list!207 (_2!656 (lex!46 Lexer!65 lt!6076 input!525)))))))

(declare-fun b!46084 () Bool)

(assert (=> b!46084 (= e!26151 (= (totalInput!1543 (_4!41 lt!6114)) input!525))))

(declare-fun b!46085 () Bool)

(declare-fun res!31344 () Bool)

(assert (=> b!46085 (=> (not res!31344) (not e!26151))))

(assert (=> b!46085 (= res!31344 (valid!232 (_3!191 lt!6114)))))

(declare-fun d!5426 () Bool)

(assert (=> d!5426 e!26151))

(declare-fun res!31345 () Bool)

(assert (=> d!5426 (=> (not res!31345) (not e!26151))))

(assert (=> d!5426 (= res!31345 (= (list!208 (_1!656 (_1!657 lt!6114))) (list!208 (_1!656 (lex!46 Lexer!65 lt!6076 input!525)))))))

(declare-fun lt!6115 () tuple4!82)

(assert (=> d!5426 (= lt!6114 (tuple4!83 (_1!657 lt!6115) (_2!657 lt!6115) (_3!191 lt!6115) (_4!41 lt!6115)))))

(declare-fun lexTailRecV3Mem!15 (LexerInterface!67 List!759 BalanceConc!294 BalanceConc!294 BalanceConc!294 BalanceConc!296 CacheUp!172 CacheDown!170 CacheFurthestNullable!120) tuple4!82)

(assert (=> d!5426 (= lt!6115 (lexTailRecV3Mem!15 Lexer!65 lt!6076 input!525 (BalanceConc!295 Empty!147) input!525 (BalanceConc!297 Empty!148) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!5426 (not (isEmpty!152 lt!6076))))

(assert (=> d!5426 (= (lexMem!30 Lexer!65 lt!6076 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!6114)))

(declare-fun b!46086 () Bool)

(declare-fun res!31341 () Bool)

(assert (=> b!46086 (=> (not res!31341) (not e!26151))))

(assert (=> b!46086 (= res!31341 (valid!231 (_2!657 lt!6114)))))

(assert (= (and d!5426 res!31345) b!46083))

(assert (= (and b!46083 res!31342) b!46082))

(assert (= (and b!46082 res!31343) b!46086))

(assert (= (and b!46086 res!31341) b!46085))

(assert (= (and b!46085 res!31344) b!46084))

(assert (=> d!5426 m!20202))

(declare-fun m!20342 () Bool)

(assert (=> d!5426 m!20342))

(declare-fun m!20344 () Bool)

(assert (=> d!5426 m!20344))

(assert (=> d!5426 m!20262))

(declare-fun m!20346 () Bool)

(assert (=> d!5426 m!20346))

(declare-fun m!20348 () Bool)

(assert (=> b!46086 m!20348))

(declare-fun m!20350 () Bool)

(assert (=> b!46085 m!20350))

(declare-fun m!20352 () Bool)

(assert (=> b!46082 m!20352))

(declare-fun m!20354 () Bool)

(assert (=> b!46083 m!20354))

(assert (=> b!46083 m!20202))

(declare-fun m!20356 () Bool)

(assert (=> b!46083 m!20356))

(assert (=> b!45987 d!5426))

(declare-fun lt!6118 () tuple2!930)

(declare-fun b!46097 () Bool)

(declare-fun e!26160 () Bool)

(declare-datatypes ((tuple2!932 0))(
  ( (tuple2!933 (_1!658 List!760) (_2!658 List!758)) )
))
(declare-fun lexList!18 (LexerInterface!67 List!759 List!758) tuple2!932)

(assert (=> b!46097 (= e!26160 (= (list!207 (_2!656 lt!6118)) (_2!658 (lexList!18 Lexer!65 lt!6076 (list!207 input!525)))))))

(declare-fun b!46098 () Bool)

(declare-fun e!26159 () Bool)

(declare-fun isEmpty!153 (BalanceConc!296) Bool)

(assert (=> b!46098 (= e!26159 (not (isEmpty!153 (_1!656 lt!6118))))))

(declare-fun b!46099 () Bool)

(declare-fun e!26158 () Bool)

(assert (=> b!46099 (= e!26158 e!26159)))

(declare-fun res!31352 () Bool)

(declare-fun size!744 (BalanceConc!294) Int)

(assert (=> b!46099 (= res!31352 (< (size!744 (_2!656 lt!6118)) (size!744 input!525)))))

(assert (=> b!46099 (=> (not res!31352) (not e!26159))))

(declare-fun d!5428 () Bool)

(assert (=> d!5428 e!26160))

(declare-fun res!31353 () Bool)

(assert (=> d!5428 (=> (not res!31353) (not e!26160))))

(assert (=> d!5428 (= res!31353 e!26158)))

(declare-fun c!16140 () Bool)

(declare-fun size!745 (BalanceConc!296) Int)

(assert (=> d!5428 (= c!16140 (> (size!745 (_1!656 lt!6118)) 0))))

(declare-fun lexTailRecV2!15 (LexerInterface!67 List!759 BalanceConc!294 BalanceConc!294 BalanceConc!294 BalanceConc!296) tuple2!930)

(assert (=> d!5428 (= lt!6118 (lexTailRecV2!15 Lexer!65 lt!6076 input!525 (BalanceConc!295 Empty!147) input!525 (BalanceConc!297 Empty!148)))))

(assert (=> d!5428 (= (lex!46 Lexer!65 lt!6076 input!525) lt!6118)))

(declare-fun b!46100 () Bool)

(assert (=> b!46100 (= e!26158 (= (_2!656 lt!6118) input!525))))

(declare-fun b!46101 () Bool)

(declare-fun res!31354 () Bool)

(assert (=> b!46101 (=> (not res!31354) (not e!26160))))

(assert (=> b!46101 (= res!31354 (= (list!208 (_1!656 lt!6118)) (_1!658 (lexList!18 Lexer!65 lt!6076 (list!207 input!525)))))))

(assert (= (and d!5428 c!16140) b!46099))

(assert (= (and d!5428 (not c!16140)) b!46100))

(assert (= (and b!46099 res!31352) b!46098))

(assert (= (and d!5428 res!31353) b!46101))

(assert (= (and b!46101 res!31354) b!46097))

(declare-fun m!20358 () Bool)

(assert (=> b!46097 m!20358))

(assert (=> b!46097 m!20250))

(assert (=> b!46097 m!20250))

(declare-fun m!20360 () Bool)

(assert (=> b!46097 m!20360))

(declare-fun m!20362 () Bool)

(assert (=> b!46098 m!20362))

(declare-fun m!20364 () Bool)

(assert (=> b!46101 m!20364))

(assert (=> b!46101 m!20250))

(assert (=> b!46101 m!20250))

(assert (=> b!46101 m!20360))

(declare-fun m!20366 () Bool)

(assert (=> b!46099 m!20366))

(declare-fun m!20368 () Bool)

(assert (=> b!46099 m!20368))

(declare-fun m!20370 () Bool)

(assert (=> d!5428 m!20370))

(declare-fun m!20372 () Bool)

(assert (=> d!5428 m!20372))

(assert (=> b!45987 d!5428))

(declare-fun d!5430 () Bool)

(assert (=> d!5430 (valid!231 (_2!657 lt!6087))))

(declare-fun Unit!350 () Unit!348)

(assert (=> d!5430 (= (lemmaInvariant!64 (_2!657 lt!6087)) Unit!350)))

(declare-fun bs!6310 () Bool)

(assert (= bs!6310 d!5430))

(assert (=> bs!6310 m!20214))

(assert (=> b!45987 d!5430))

(declare-fun d!5432 () Bool)

(assert (=> d!5432 (valid!232 (_3!191 lt!6087))))

(declare-fun Unit!351 () Unit!348)

(assert (=> d!5432 (= (lemmaInvariant!63 (_3!191 lt!6087)) Unit!351)))

(declare-fun bs!6311 () Bool)

(assert (= bs!6311 d!5432))

(assert (=> bs!6311 m!20220))

(assert (=> b!45987 d!5432))

(declare-fun d!5434 () Bool)

(assert (=> d!5434 (= (list!208 (_1!656 lt!6081)) (list!210 (c!16133 (_1!656 lt!6081))))))

(declare-fun bs!6312 () Bool)

(assert (= bs!6312 d!5434))

(declare-fun m!20374 () Bool)

(assert (=> bs!6312 m!20374))

(assert (=> b!45987 d!5434))

(declare-fun d!5436 () Bool)

(assert (=> d!5436 (= (list!207 (_2!656 lt!6081)) (list!209 (c!16132 (_2!656 lt!6081))))))

(declare-fun bs!6313 () Bool)

(assert (= bs!6313 d!5436))

(declare-fun m!20376 () Bool)

(assert (=> bs!6313 m!20376))

(assert (=> b!45996 d!5436))

(declare-fun d!5438 () Bool)

(assert (=> d!5438 (= (list!207 (_2!656 (_1!657 lt!6087))) (list!209 (c!16132 (_2!656 (_1!657 lt!6087)))))))

(declare-fun bs!6314 () Bool)

(assert (= bs!6314 d!5438))

(declare-fun m!20378 () Bool)

(assert (=> bs!6314 m!20378))

(assert (=> b!45996 d!5438))

(declare-fun d!5440 () Bool)

(assert (=> d!5440 (= (list!207 (_2!656 lt!6078)) (list!209 (c!16132 (_2!656 lt!6078))))))

(declare-fun bs!6315 () Bool)

(assert (= bs!6315 d!5440))

(declare-fun m!20380 () Bool)

(assert (=> bs!6315 m!20380))

(assert (=> b!46013 d!5440))

(declare-fun d!5442 () Bool)

(assert (=> d!5442 (= (array_inv!273 (_keys!549 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333))))))) (bvsge (size!741 (_keys!549 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!45992 d!5442))

(declare-fun d!5444 () Bool)

(assert (=> d!5444 (= (array_inv!275 (_values!536 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333))))))) (bvsge (size!742 (_values!536 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!45992 d!5444))

(declare-fun d!5446 () Bool)

(assert (=> d!5446 (= (list!208 (_1!656 lt!6078)) (list!210 (c!16133 (_1!656 lt!6078))))))

(declare-fun bs!6316 () Bool)

(assert (= bs!6316 d!5446))

(declare-fun m!20382 () Bool)

(assert (=> bs!6316 m!20382))

(assert (=> b!46004 d!5446))

(declare-fun lt!6119 () tuple2!930)

(declare-fun e!26163 () Bool)

(declare-fun b!46102 () Bool)

(assert (=> b!46102 (= e!26163 (= (list!207 (_2!656 lt!6119)) (_2!658 (lexList!18 Lexer!65 lt!6076 (list!207 lt!6085)))))))

(declare-fun b!46103 () Bool)

(declare-fun e!26162 () Bool)

(assert (=> b!46103 (= e!26162 (not (isEmpty!153 (_1!656 lt!6119))))))

(declare-fun b!46104 () Bool)

(declare-fun e!26161 () Bool)

(assert (=> b!46104 (= e!26161 e!26162)))

(declare-fun res!31355 () Bool)

(assert (=> b!46104 (= res!31355 (< (size!744 (_2!656 lt!6119)) (size!744 lt!6085)))))

(assert (=> b!46104 (=> (not res!31355) (not e!26162))))

(declare-fun d!5448 () Bool)

(assert (=> d!5448 e!26163))

(declare-fun res!31356 () Bool)

(assert (=> d!5448 (=> (not res!31356) (not e!26163))))

(assert (=> d!5448 (= res!31356 e!26161)))

(declare-fun c!16141 () Bool)

(assert (=> d!5448 (= c!16141 (> (size!745 (_1!656 lt!6119)) 0))))

(assert (=> d!5448 (= lt!6119 (lexTailRecV2!15 Lexer!65 lt!6076 lt!6085 (BalanceConc!295 Empty!147) lt!6085 (BalanceConc!297 Empty!148)))))

(assert (=> d!5448 (= (lex!46 Lexer!65 lt!6076 lt!6085) lt!6119)))

(declare-fun b!46105 () Bool)

(assert (=> b!46105 (= e!26161 (= (_2!656 lt!6119) lt!6085))))

(declare-fun b!46106 () Bool)

(declare-fun res!31357 () Bool)

(assert (=> b!46106 (=> (not res!31357) (not e!26163))))

(assert (=> b!46106 (= res!31357 (= (list!208 (_1!656 lt!6119)) (_1!658 (lexList!18 Lexer!65 lt!6076 (list!207 lt!6085)))))))

(assert (= (and d!5448 c!16141) b!46104))

(assert (= (and d!5448 (not c!16141)) b!46105))

(assert (= (and b!46104 res!31355) b!46103))

(assert (= (and d!5448 res!31356) b!46106))

(assert (= (and b!46106 res!31357) b!46102))

(declare-fun m!20384 () Bool)

(assert (=> b!46102 m!20384))

(assert (=> b!46102 m!20246))

(assert (=> b!46102 m!20246))

(declare-fun m!20386 () Bool)

(assert (=> b!46102 m!20386))

(declare-fun m!20388 () Bool)

(assert (=> b!46103 m!20388))

(declare-fun m!20390 () Bool)

(assert (=> b!46106 m!20390))

(assert (=> b!46106 m!20246))

(assert (=> b!46106 m!20246))

(assert (=> b!46106 m!20386))

(declare-fun m!20392 () Bool)

(assert (=> b!46104 m!20392))

(declare-fun m!20394 () Bool)

(assert (=> b!46104 m!20394))

(declare-fun m!20396 () Bool)

(assert (=> d!5448 m!20396))

(declare-fun m!20398 () Bool)

(assert (=> d!5448 m!20398))

(assert (=> b!46004 d!5448))

(declare-fun d!5450 () Bool)

(assert (=> d!5450 (= (array_inv!273 (_keys!550 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))) (bvsge (size!741 (_keys!550 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!46011 d!5450))

(declare-fun d!5452 () Bool)

(assert (=> d!5452 (= (array_inv!276 (_values!537 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))) (bvsge (size!743 (_values!537 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!46011 d!5452))

(declare-fun d!5454 () Bool)

(declare-fun res!31360 () Bool)

(declare-fun e!26166 () Bool)

(assert (=> d!5454 (=> (not res!31360) (not e!26166))))

(declare-fun rulesValid!21 (LexerInterface!67 List!759) Bool)

(assert (=> d!5454 (= res!31360 (rulesValid!21 Lexer!65 lt!6076))))

(assert (=> d!5454 (= (rulesInvariant!60 Lexer!65 lt!6076) e!26166)))

(declare-fun b!46109 () Bool)

(declare-datatypes ((List!765 0))(
  ( (Nil!763) (Cons!763 (h!6159 String!1111) (t!16824 List!765)) )
))
(declare-fun noDuplicateTag!21 (LexerInterface!67 List!759 List!765) Bool)

(assert (=> b!46109 (= e!26166 (noDuplicateTag!21 Lexer!65 lt!6076 Nil!763))))

(assert (= (and d!5454 res!31360) b!46109))

(declare-fun m!20400 () Bool)

(assert (=> d!5454 m!20400))

(declare-fun m!20402 () Bool)

(assert (=> b!46109 m!20402))

(assert (=> b!46001 d!5454))

(declare-fun d!5456 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!86) Rule!146)

(declare-fun integerLiteralRule!0 (JsonLexer!86) Rule!146)

(declare-fun floatLiteralRule!0 (JsonLexer!86) Rule!146)

(declare-fun trueRule!0 (JsonLexer!86) Rule!146)

(declare-fun falseRule!0 (JsonLexer!86) Rule!146)

(declare-fun nullRule!0 (JsonLexer!86) Rule!146)

(declare-fun jsonstringRule!0 (JsonLexer!86) Rule!146)

(declare-fun lBraceRule!0 (JsonLexer!86) Rule!146)

(declare-fun rBraceRule!0 (JsonLexer!86) Rule!146)

(declare-fun lBracketRule!0 (JsonLexer!86) Rule!146)

(declare-fun rBracketRule!0 (JsonLexer!86) Rule!146)

(declare-fun colonRule!0 (JsonLexer!86) Rule!146)

(declare-fun commaRule!0 (JsonLexer!86) Rule!146)

(declare-fun eofRule!0 (JsonLexer!86) Rule!146)

(assert (=> d!5456 (= (rules!109 JsonLexer!87) (Cons!757 (whitespaceRule!0 JsonLexer!87) (Cons!757 (integerLiteralRule!0 JsonLexer!87) (Cons!757 (floatLiteralRule!0 JsonLexer!87) (Cons!757 (trueRule!0 JsonLexer!87) (Cons!757 (falseRule!0 JsonLexer!87) (Cons!757 (nullRule!0 JsonLexer!87) (Cons!757 (jsonstringRule!0 JsonLexer!87) (Cons!757 (lBraceRule!0 JsonLexer!87) (Cons!757 (rBraceRule!0 JsonLexer!87) (Cons!757 (lBracketRule!0 JsonLexer!87) (Cons!757 (rBracketRule!0 JsonLexer!87) (Cons!757 (colonRule!0 JsonLexer!87) (Cons!757 (commaRule!0 JsonLexer!87) (Cons!757 (eofRule!0 JsonLexer!87) Nil!757)))))))))))))))))

(declare-fun bs!6317 () Bool)

(assert (= bs!6317 d!5456))

(declare-fun m!20404 () Bool)

(assert (=> bs!6317 m!20404))

(declare-fun m!20406 () Bool)

(assert (=> bs!6317 m!20406))

(declare-fun m!20408 () Bool)

(assert (=> bs!6317 m!20408))

(declare-fun m!20410 () Bool)

(assert (=> bs!6317 m!20410))

(declare-fun m!20412 () Bool)

(assert (=> bs!6317 m!20412))

(declare-fun m!20414 () Bool)

(assert (=> bs!6317 m!20414))

(declare-fun m!20416 () Bool)

(assert (=> bs!6317 m!20416))

(declare-fun m!20418 () Bool)

(assert (=> bs!6317 m!20418))

(declare-fun m!20420 () Bool)

(assert (=> bs!6317 m!20420))

(declare-fun m!20422 () Bool)

(assert (=> bs!6317 m!20422))

(declare-fun m!20424 () Bool)

(assert (=> bs!6317 m!20424))

(declare-fun m!20426 () Bool)

(assert (=> bs!6317 m!20426))

(declare-fun m!20428 () Bool)

(assert (=> bs!6317 m!20428))

(declare-fun m!20430 () Bool)

(assert (=> bs!6317 m!20430))

(assert (=> start!3042 d!5456))

(declare-fun d!5458 () Bool)

(assert (=> d!5458 (= (isEmpty!152 lt!6076) ((_ is Nil!757) lt!6076))))

(assert (=> start!3042 d!5458))

(declare-fun d!5460 () Bool)

(declare-fun res!31363 () Bool)

(declare-fun e!26169 () Bool)

(assert (=> d!5460 (=> (not res!31363) (not e!26169))))

(assert (=> d!5460 (= res!31363 ((_ is HashMap!254) (cache!739 cacheDown!333)))))

(assert (=> d!5460 (= (inv!1040 cacheDown!333) e!26169)))

(declare-fun b!46112 () Bool)

(assert (=> b!46112 (= e!26169 (validCacheMapDown!25 (cache!739 cacheDown!333)))))

(assert (= (and d!5460 res!31363) b!46112))

(assert (=> b!46112 m!20338))

(assert (=> start!3042 d!5460))

(declare-fun d!5462 () Bool)

(assert (=> d!5462 (= (inv!1041 input!525) (isBalanced!28 (c!16132 input!525)))))

(declare-fun bs!6318 () Bool)

(assert (= bs!6318 d!5462))

(declare-fun m!20432 () Bool)

(assert (=> bs!6318 m!20432))

(assert (=> start!3042 d!5462))

(declare-fun d!5464 () Bool)

(declare-fun res!31366 () Bool)

(declare-fun e!26172 () Bool)

(assert (=> d!5464 (=> (not res!31366) (not e!26172))))

(assert (=> d!5464 (= res!31366 ((_ is HashMap!255) (cache!740 cacheFurthestNullable!45)))))

(assert (=> d!5464 (= (inv!1042 cacheFurthestNullable!45) e!26172)))

(declare-fun b!46115 () Bool)

(assert (=> b!46115 (= e!26172 (validCacheMapFurthestNullable!17 (cache!740 cacheFurthestNullable!45) (totalInput!1543 cacheFurthestNullable!45)))))

(assert (= (and d!5464 res!31366) b!46115))

(assert (=> b!46115 m!20302))

(assert (=> start!3042 d!5464))

(declare-fun d!5466 () Bool)

(declare-fun res!31369 () Bool)

(declare-fun e!26175 () Bool)

(assert (=> d!5466 (=> (not res!31369) (not e!26175))))

(assert (=> d!5466 (= res!31369 ((_ is HashMap!253) (cache!738 cacheUp!320)))))

(assert (=> d!5466 (= (inv!1043 cacheUp!320) e!26175)))

(declare-fun b!46118 () Bool)

(assert (=> b!46118 (= e!26175 (validCacheMapUp!23 (cache!738 cacheUp!320)))))

(assert (= (and d!5466 res!31369) b!46118))

(assert (=> b!46118 m!20294))

(assert (=> start!3042 d!5466))

(declare-fun d!5468 () Bool)

(assert (=> d!5468 (= (valid!232 (_3!191 lt!6087)) (validCacheMapDown!25 (cache!739 (_3!191 lt!6087))))))

(declare-fun bs!6319 () Bool)

(assert (= bs!6319 d!5468))

(declare-fun m!20434 () Bool)

(assert (=> bs!6319 m!20434))

(assert (=> b!46012 d!5468))

(declare-fun d!5470 () Bool)

(assert (=> d!5470 (= (array_inv!273 (_keys!548 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320))))))) (bvsge (size!741 (_keys!548 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!45983 d!5470))

(declare-fun d!5472 () Bool)

(assert (=> d!5472 (= (array_inv!274 (_values!535 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320))))))) (bvsge (size!740 (_values!535 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!45983 d!5472))

(declare-fun b!46121 () Bool)

(declare-fun e!26178 () Bool)

(assert (=> b!46121 (= e!26178 true)))

(declare-fun b!46120 () Bool)

(declare-fun e!26177 () Bool)

(assert (=> b!46120 (= e!26177 e!26178)))

(declare-fun b!46119 () Bool)

(declare-fun e!26176 () Bool)

(assert (=> b!46119 (= e!26176 e!26177)))

(assert (=> b!46025 e!26176))

(assert (= b!46120 b!46121))

(assert (= b!46119 b!46120))

(assert (= (and b!46025 ((_ is Cons!757) (t!16816 lt!6076))) b!46119))

(assert (=> b!46121 (< (dynLambda!117 order!187 (toValue!652 (transformation!173 (h!6153 (t!16816 lt!6076))))) (dynLambda!118 order!189 lambda!857))))

(assert (=> b!46121 (< (dynLambda!119 order!191 (toChars!511 (transformation!173 (h!6153 (t!16816 lt!6076))))) (dynLambda!118 order!189 lambda!857))))

(declare-fun b!46126 () Bool)

(declare-fun e!26183 () Bool)

(declare-fun setRes!1178 () Bool)

(declare-fun tp!31325 () Bool)

(assert (=> b!46126 (= e!26183 (and setRes!1178 tp!31325))))

(declare-fun condSetEmpty!1178 () Bool)

(assert (=> b!46126 (= condSetEmpty!1178 (= (_1!654 (_1!655 (h!6158 mapDefault!1001))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1178 () Bool)

(assert (=> setIsEmpty!1178 setRes!1178))

(declare-fun setNonEmpty!1178 () Bool)

(declare-fun tp!31326 () Bool)

(declare-fun setElem!1178 () Context!194)

(declare-fun inv!1046 (Context!194) Bool)

(assert (=> setNonEmpty!1178 (= setRes!1178 (and tp!31326 (inv!1046 setElem!1178)))))

(declare-fun setRest!1178 () (InoxSet Context!194))

(assert (=> setNonEmpty!1178 (= (_1!654 (_1!655 (h!6158 mapDefault!1001))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1178 true) setRest!1178))))

(assert (=> b!45990 (= tp!31298 e!26183)))

(assert (= (and b!46126 condSetEmpty!1178) setIsEmpty!1178))

(assert (= (and b!46126 (not condSetEmpty!1178)) setNonEmpty!1178))

(assert (= (and b!45990 ((_ is Cons!762) mapDefault!1001)) b!46126))

(declare-fun m!20436 () Bool)

(assert (=> setNonEmpty!1178 m!20436))

(declare-fun tp!31332 () Bool)

(declare-fun b!46133 () Bool)

(declare-fun e!26189 () Bool)

(declare-fun tp!31331 () Bool)

(assert (=> b!46133 (= e!26189 (and (inv!1039 (left!594 (c!16132 (totalInput!1543 cacheFurthestNullable!45)))) tp!31331 (inv!1039 (right!924 (c!16132 (totalInput!1543 cacheFurthestNullable!45)))) tp!31332))))

(declare-fun b!46134 () Bool)

(declare-fun inv!1047 (IArray!295) Bool)

(assert (=> b!46134 (= e!26189 (inv!1047 (xs!2726 (c!16132 (totalInput!1543 cacheFurthestNullable!45)))))))

(assert (=> b!46006 (= tp!31310 (and (inv!1039 (c!16132 (totalInput!1543 cacheFurthestNullable!45))) e!26189))))

(assert (= (and b!46006 ((_ is Node!147) (c!16132 (totalInput!1543 cacheFurthestNullable!45)))) b!46133))

(assert (= (and b!46006 ((_ is Leaf!345) (c!16132 (totalInput!1543 cacheFurthestNullable!45)))) b!46134))

(declare-fun m!20438 () Bool)

(assert (=> b!46133 m!20438))

(declare-fun m!20440 () Bool)

(assert (=> b!46133 m!20440))

(declare-fun m!20442 () Bool)

(assert (=> b!46134 m!20442))

(assert (=> b!46006 m!20238))

(declare-fun e!26191 () Bool)

(declare-fun tp!31333 () Bool)

(declare-fun tp!31334 () Bool)

(declare-fun b!46135 () Bool)

(assert (=> b!46135 (= e!26191 (and (inv!1039 (left!594 (c!16132 input!525))) tp!31333 (inv!1039 (right!924 (c!16132 input!525))) tp!31334))))

(declare-fun b!46136 () Bool)

(assert (=> b!46136 (= e!26191 (inv!1047 (xs!2726 (c!16132 input!525))))))

(assert (=> b!45979 (= tp!31307 (and (inv!1039 (c!16132 input!525)) e!26191))))

(assert (= (and b!45979 ((_ is Node!147) (c!16132 input!525))) b!46135))

(assert (= (and b!45979 ((_ is Leaf!345) (c!16132 input!525))) b!46136))

(declare-fun m!20444 () Bool)

(assert (=> b!46135 m!20444))

(declare-fun m!20446 () Bool)

(assert (=> b!46135 m!20446))

(declare-fun m!20448 () Bool)

(assert (=> b!46136 m!20448))

(assert (=> b!45979 m!20232))

(declare-fun setRes!1181 () Bool)

(declare-fun e!26200 () Bool)

(declare-fun tp!31340 () Bool)

(declare-fun b!46141 () Bool)

(assert (=> b!46141 (= e!26200 (and (inv!1046 (_1!650 (_1!651 (h!6156 mapDefault!1000)))) setRes!1181 tp!31340))))

(declare-fun condSetEmpty!1181 () Bool)

(assert (=> b!46141 (= condSetEmpty!1181 (= (_2!651 (h!6156 mapDefault!1000)) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1181 () Bool)

(assert (=> setIsEmpty!1181 setRes!1181))

(declare-fun setNonEmpty!1181 () Bool)

(declare-fun tp!31339 () Bool)

(declare-fun setElem!1181 () Context!194)

(assert (=> setNonEmpty!1181 (= setRes!1181 (and tp!31339 (inv!1046 setElem!1181)))))

(declare-fun setRest!1181 () (InoxSet Context!194))

(assert (=> setNonEmpty!1181 (= (_2!651 (h!6156 mapDefault!1000)) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1181 true) setRest!1181))))

(assert (=> b!46003 (= tp!31301 e!26200)))

(assert (= (and b!46141 condSetEmpty!1181) setIsEmpty!1181))

(assert (= (and b!46141 (not condSetEmpty!1181)) setNonEmpty!1181))

(assert (= (and b!46003 ((_ is Cons!760) mapDefault!1000)) b!46141))

(declare-fun m!20450 () Bool)

(assert (=> b!46141 m!20450))

(declare-fun m!20452 () Bool)

(assert (=> setNonEmpty!1181 m!20452))

(declare-fun setIsEmpty!1186 () Bool)

(declare-fun setRes!1186 () Bool)

(assert (=> setIsEmpty!1186 setRes!1186))

(declare-fun mapIsEmpty!1005 () Bool)

(declare-fun mapRes!1005 () Bool)

(assert (=> mapIsEmpty!1005 mapRes!1005))

(declare-fun condMapEmpty!1005 () Bool)

(declare-fun mapDefault!1005 () List!764)

(assert (=> mapNonEmpty!1002 (= condMapEmpty!1005 (= mapRest!1000 ((as const (Array (_ BitVec 32) List!764)) mapDefault!1005)))))

(declare-fun e!26213 () Bool)

(assert (=> mapNonEmpty!1002 (= tp!31303 (and e!26213 mapRes!1005))))

(declare-fun setNonEmpty!1186 () Bool)

(declare-fun setRes!1187 () Bool)

(declare-fun tp!31351 () Bool)

(declare-fun setElem!1186 () Context!194)

(assert (=> setNonEmpty!1186 (= setRes!1187 (and tp!31351 (inv!1046 setElem!1186)))))

(declare-fun mapValue!1005 () List!764)

(declare-fun setRest!1186 () (InoxSet Context!194))

(assert (=> setNonEmpty!1186 (= (_1!654 (_1!655 (h!6158 mapValue!1005))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1186 true) setRest!1186))))

(declare-fun mapNonEmpty!1005 () Bool)

(declare-fun tp!31352 () Bool)

(declare-fun e!26211 () Bool)

(assert (=> mapNonEmpty!1005 (= mapRes!1005 (and tp!31352 e!26211))))

(declare-fun mapKey!1005 () (_ BitVec 32))

(declare-fun mapRest!1005 () (Array (_ BitVec 32) List!764))

(assert (=> mapNonEmpty!1005 (= mapRest!1000 (store mapRest!1005 mapKey!1005 mapValue!1005))))

(declare-fun b!46148 () Bool)

(declare-fun tp!31353 () Bool)

(assert (=> b!46148 (= e!26213 (and setRes!1186 tp!31353))))

(declare-fun condSetEmpty!1187 () Bool)

(assert (=> b!46148 (= condSetEmpty!1187 (= (_1!654 (_1!655 (h!6158 mapDefault!1005))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setNonEmpty!1187 () Bool)

(declare-fun tp!31354 () Bool)

(declare-fun setElem!1187 () Context!194)

(assert (=> setNonEmpty!1187 (= setRes!1186 (and tp!31354 (inv!1046 setElem!1187)))))

(declare-fun setRest!1187 () (InoxSet Context!194))

(assert (=> setNonEmpty!1187 (= (_1!654 (_1!655 (h!6158 mapDefault!1005))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1187 true) setRest!1187))))

(declare-fun b!46149 () Bool)

(declare-fun tp!31355 () Bool)

(assert (=> b!46149 (= e!26211 (and setRes!1187 tp!31355))))

(declare-fun condSetEmpty!1186 () Bool)

(assert (=> b!46149 (= condSetEmpty!1186 (= (_1!654 (_1!655 (h!6158 mapValue!1005))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1187 () Bool)

(assert (=> setIsEmpty!1187 setRes!1187))

(assert (= (and mapNonEmpty!1002 condMapEmpty!1005) mapIsEmpty!1005))

(assert (= (and mapNonEmpty!1002 (not condMapEmpty!1005)) mapNonEmpty!1005))

(assert (= (and b!46149 condSetEmpty!1186) setIsEmpty!1187))

(assert (= (and b!46149 (not condSetEmpty!1186)) setNonEmpty!1186))

(assert (= (and mapNonEmpty!1005 ((_ is Cons!762) mapValue!1005)) b!46149))

(assert (= (and b!46148 condSetEmpty!1187) setIsEmpty!1186))

(assert (= (and b!46148 (not condSetEmpty!1187)) setNonEmpty!1187))

(assert (= (and mapNonEmpty!1002 ((_ is Cons!762) mapDefault!1005)) b!46148))

(declare-fun m!20454 () Bool)

(assert (=> setNonEmpty!1186 m!20454))

(declare-fun m!20456 () Bool)

(assert (=> mapNonEmpty!1005 m!20456))

(declare-fun m!20458 () Bool)

(assert (=> setNonEmpty!1187 m!20458))

(declare-fun b!46150 () Bool)

(declare-fun e!26214 () Bool)

(declare-fun setRes!1188 () Bool)

(declare-fun tp!31356 () Bool)

(assert (=> b!46150 (= e!26214 (and setRes!1188 tp!31356))))

(declare-fun condSetEmpty!1188 () Bool)

(assert (=> b!46150 (= condSetEmpty!1188 (= (_1!654 (_1!655 (h!6158 mapValue!1002))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1188 () Bool)

(assert (=> setIsEmpty!1188 setRes!1188))

(declare-fun setNonEmpty!1188 () Bool)

(declare-fun tp!31357 () Bool)

(declare-fun setElem!1188 () Context!194)

(assert (=> setNonEmpty!1188 (= setRes!1188 (and tp!31357 (inv!1046 setElem!1188)))))

(declare-fun setRest!1188 () (InoxSet Context!194))

(assert (=> setNonEmpty!1188 (= (_1!654 (_1!655 (h!6158 mapValue!1002))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1188 true) setRest!1188))))

(assert (=> mapNonEmpty!1002 (= tp!31320 e!26214)))

(assert (= (and b!46150 condSetEmpty!1188) setIsEmpty!1188))

(assert (= (and b!46150 (not condSetEmpty!1188)) setNonEmpty!1188))

(assert (= (and mapNonEmpty!1002 ((_ is Cons!762) mapValue!1002)) b!46150))

(declare-fun m!20460 () Bool)

(assert (=> setNonEmpty!1188 m!20460))

(declare-fun e!26223 () Bool)

(declare-fun b!46155 () Bool)

(declare-fun setRes!1191 () Bool)

(declare-fun tp!31362 () Bool)

(assert (=> b!46155 (= e!26223 (and (inv!1046 (_2!652 (_1!653 (h!6157 (zeroValue!514 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333)))))))))) setRes!1191 tp!31362))))

(declare-fun condSetEmpty!1191 () Bool)

(assert (=> b!46155 (= condSetEmpty!1191 (= (_2!653 (h!6157 (zeroValue!514 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333)))))))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1191 () Bool)

(assert (=> setIsEmpty!1191 setRes!1191))

(declare-fun setNonEmpty!1191 () Bool)

(declare-fun tp!31363 () Bool)

(declare-fun setElem!1191 () Context!194)

(assert (=> setNonEmpty!1191 (= setRes!1191 (and tp!31363 (inv!1046 setElem!1191)))))

(declare-fun setRest!1191 () (InoxSet Context!194))

(assert (=> setNonEmpty!1191 (= (_2!653 (h!6157 (zeroValue!514 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1191 true) setRest!1191))))

(assert (=> b!45992 (= tp!31302 e!26223)))

(assert (= (and b!46155 condSetEmpty!1191) setIsEmpty!1191))

(assert (= (and b!46155 (not condSetEmpty!1191)) setNonEmpty!1191))

(assert (= (and b!45992 ((_ is Cons!761) (zeroValue!514 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333)))))))) b!46155))

(declare-fun m!20462 () Bool)

(assert (=> b!46155 m!20462))

(declare-fun m!20464 () Bool)

(assert (=> setNonEmpty!1191 m!20464))

(declare-fun tp!31364 () Bool)

(declare-fun e!26226 () Bool)

(declare-fun b!46156 () Bool)

(declare-fun setRes!1192 () Bool)

(assert (=> b!46156 (= e!26226 (and (inv!1046 (_2!652 (_1!653 (h!6157 (minValue!514 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333)))))))))) setRes!1192 tp!31364))))

(declare-fun condSetEmpty!1192 () Bool)

(assert (=> b!46156 (= condSetEmpty!1192 (= (_2!653 (h!6157 (minValue!514 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333)))))))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1192 () Bool)

(assert (=> setIsEmpty!1192 setRes!1192))

(declare-fun setNonEmpty!1192 () Bool)

(declare-fun tp!31365 () Bool)

(declare-fun setElem!1192 () Context!194)

(assert (=> setNonEmpty!1192 (= setRes!1192 (and tp!31365 (inv!1046 setElem!1192)))))

(declare-fun setRest!1192 () (InoxSet Context!194))

(assert (=> setNonEmpty!1192 (= (_2!653 (h!6157 (minValue!514 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1192 true) setRest!1192))))

(assert (=> b!45992 (= tp!31305 e!26226)))

(assert (= (and b!46156 condSetEmpty!1192) setIsEmpty!1192))

(assert (= (and b!46156 (not condSetEmpty!1192)) setNonEmpty!1192))

(assert (= (and b!45992 ((_ is Cons!761) (minValue!514 (v!12495 (underlying!711 (v!12496 (underlying!712 (cache!739 cacheDown!333)))))))) b!46156))

(declare-fun m!20466 () Bool)

(assert (=> b!46156 m!20466))

(declare-fun m!20468 () Bool)

(assert (=> setNonEmpty!1192 m!20468))

(declare-fun b!46157 () Bool)

(declare-fun tp!31366 () Bool)

(declare-fun e!26229 () Bool)

(declare-fun setRes!1193 () Bool)

(assert (=> b!46157 (= e!26229 (and (inv!1046 (_2!652 (_1!653 (h!6157 mapDefault!1002)))) setRes!1193 tp!31366))))

(declare-fun condSetEmpty!1193 () Bool)

(assert (=> b!46157 (= condSetEmpty!1193 (= (_2!653 (h!6157 mapDefault!1002)) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1193 () Bool)

(assert (=> setIsEmpty!1193 setRes!1193))

(declare-fun setNonEmpty!1193 () Bool)

(declare-fun tp!31367 () Bool)

(declare-fun setElem!1193 () Context!194)

(assert (=> setNonEmpty!1193 (= setRes!1193 (and tp!31367 (inv!1046 setElem!1193)))))

(declare-fun setRest!1193 () (InoxSet Context!194))

(assert (=> setNonEmpty!1193 (= (_2!653 (h!6157 mapDefault!1002)) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1193 true) setRest!1193))))

(assert (=> b!45994 (= tp!31313 e!26229)))

(assert (= (and b!46157 condSetEmpty!1193) setIsEmpty!1193))

(assert (= (and b!46157 (not condSetEmpty!1193)) setNonEmpty!1193))

(assert (= (and b!45994 ((_ is Cons!761) mapDefault!1002)) b!46157))

(declare-fun m!20470 () Bool)

(assert (=> b!46157 m!20470))

(declare-fun m!20472 () Bool)

(assert (=> setNonEmpty!1193 m!20472))

(declare-fun b!46158 () Bool)

(declare-fun e!26231 () Bool)

(declare-fun setRes!1194 () Bool)

(declare-fun tp!31368 () Bool)

(assert (=> b!46158 (= e!26231 (and setRes!1194 tp!31368))))

(declare-fun condSetEmpty!1194 () Bool)

(assert (=> b!46158 (= condSetEmpty!1194 (= (_1!654 (_1!655 (h!6158 (zeroValue!515 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1194 () Bool)

(assert (=> setIsEmpty!1194 setRes!1194))

(declare-fun setNonEmpty!1194 () Bool)

(declare-fun tp!31369 () Bool)

(declare-fun setElem!1194 () Context!194)

(assert (=> setNonEmpty!1194 (= setRes!1194 (and tp!31369 (inv!1046 setElem!1194)))))

(declare-fun setRest!1194 () (InoxSet Context!194))

(assert (=> setNonEmpty!1194 (= (_1!654 (_1!655 (h!6158 (zeroValue!515 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1194 true) setRest!1194))))

(assert (=> b!46011 (= tp!31311 e!26231)))

(assert (= (and b!46158 condSetEmpty!1194) setIsEmpty!1194))

(assert (= (and b!46158 (not condSetEmpty!1194)) setNonEmpty!1194))

(assert (= (and b!46011 ((_ is Cons!762) (zeroValue!515 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45)))))))) b!46158))

(declare-fun m!20474 () Bool)

(assert (=> setNonEmpty!1194 m!20474))

(declare-fun b!46159 () Bool)

(declare-fun e!26233 () Bool)

(declare-fun setRes!1195 () Bool)

(declare-fun tp!31370 () Bool)

(assert (=> b!46159 (= e!26233 (and setRes!1195 tp!31370))))

(declare-fun condSetEmpty!1195 () Bool)

(assert (=> b!46159 (= condSetEmpty!1195 (= (_1!654 (_1!655 (h!6158 (minValue!515 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1195 () Bool)

(assert (=> setIsEmpty!1195 setRes!1195))

(declare-fun setNonEmpty!1195 () Bool)

(declare-fun tp!31371 () Bool)

(declare-fun setElem!1195 () Context!194)

(assert (=> setNonEmpty!1195 (= setRes!1195 (and tp!31371 (inv!1046 setElem!1195)))))

(declare-fun setRest!1195 () (InoxSet Context!194))

(assert (=> setNonEmpty!1195 (= (_1!654 (_1!655 (h!6158 (minValue!515 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1195 true) setRest!1195))))

(assert (=> b!46011 (= tp!31318 e!26233)))

(assert (= (and b!46159 condSetEmpty!1195) setIsEmpty!1195))

(assert (= (and b!46159 (not condSetEmpty!1195)) setNonEmpty!1195))

(assert (= (and b!46011 ((_ is Cons!762) (minValue!515 (v!12497 (underlying!713 (v!12498 (underlying!714 (cache!740 cacheFurthestNullable!45)))))))) b!46159))

(declare-fun m!20476 () Bool)

(assert (=> setNonEmpty!1195 m!20476))

(declare-fun setNonEmpty!1200 () Bool)

(declare-fun setRes!1200 () Bool)

(declare-fun tp!31385 () Bool)

(declare-fun setElem!1201 () Context!194)

(assert (=> setNonEmpty!1200 (= setRes!1200 (and tp!31385 (inv!1046 setElem!1201)))))

(declare-fun mapDefault!1008 () List!763)

(declare-fun setRest!1201 () (InoxSet Context!194))

(assert (=> setNonEmpty!1200 (= (_2!653 (h!6157 mapDefault!1008)) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1201 true) setRest!1201))))

(declare-fun tp!31383 () Bool)

(declare-fun setRes!1201 () Bool)

(declare-fun b!46166 () Bool)

(declare-fun mapValue!1008 () List!763)

(declare-fun e!26247 () Bool)

(assert (=> b!46166 (= e!26247 (and (inv!1046 (_2!652 (_1!653 (h!6157 mapValue!1008)))) setRes!1201 tp!31383))))

(declare-fun condSetEmpty!1200 () Bool)

(assert (=> b!46166 (= condSetEmpty!1200 (= (_2!653 (h!6157 mapValue!1008)) ((as const (Array Context!194 Bool)) false)))))

(declare-fun b!46167 () Bool)

(declare-fun tp!31384 () Bool)

(declare-fun e!26250 () Bool)

(assert (=> b!46167 (= e!26250 (and (inv!1046 (_2!652 (_1!653 (h!6157 mapDefault!1008)))) setRes!1200 tp!31384))))

(declare-fun condSetEmpty!1201 () Bool)

(assert (=> b!46167 (= condSetEmpty!1201 (= (_2!653 (h!6157 mapDefault!1008)) ((as const (Array Context!194 Bool)) false)))))

(declare-fun mapNonEmpty!1008 () Bool)

(declare-fun mapRes!1008 () Bool)

(declare-fun tp!31386 () Bool)

(assert (=> mapNonEmpty!1008 (= mapRes!1008 (and tp!31386 e!26247))))

(declare-fun mapRest!1008 () (Array (_ BitVec 32) List!763))

(declare-fun mapKey!1008 () (_ BitVec 32))

(assert (=> mapNonEmpty!1008 (= mapRest!1002 (store mapRest!1008 mapKey!1008 mapValue!1008))))

(declare-fun setNonEmpty!1201 () Bool)

(declare-fun tp!31382 () Bool)

(declare-fun setElem!1200 () Context!194)

(assert (=> setNonEmpty!1201 (= setRes!1201 (and tp!31382 (inv!1046 setElem!1200)))))

(declare-fun setRest!1200 () (InoxSet Context!194))

(assert (=> setNonEmpty!1201 (= (_2!653 (h!6157 mapValue!1008)) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1200 true) setRest!1200))))

(declare-fun setIsEmpty!1201 () Bool)

(assert (=> setIsEmpty!1201 setRes!1201))

(declare-fun mapIsEmpty!1008 () Bool)

(assert (=> mapIsEmpty!1008 mapRes!1008))

(declare-fun setIsEmpty!1200 () Bool)

(assert (=> setIsEmpty!1200 setRes!1200))

(declare-fun condMapEmpty!1008 () Bool)

(assert (=> mapNonEmpty!1000 (= condMapEmpty!1008 (= mapRest!1002 ((as const (Array (_ BitVec 32) List!763)) mapDefault!1008)))))

(assert (=> mapNonEmpty!1000 (= tp!31316 (and e!26250 mapRes!1008))))

(assert (= (and mapNonEmpty!1000 condMapEmpty!1008) mapIsEmpty!1008))

(assert (= (and mapNonEmpty!1000 (not condMapEmpty!1008)) mapNonEmpty!1008))

(assert (= (and b!46166 condSetEmpty!1200) setIsEmpty!1201))

(assert (= (and b!46166 (not condSetEmpty!1200)) setNonEmpty!1201))

(assert (= (and mapNonEmpty!1008 ((_ is Cons!761) mapValue!1008)) b!46166))

(assert (= (and b!46167 condSetEmpty!1201) setIsEmpty!1200))

(assert (= (and b!46167 (not condSetEmpty!1201)) setNonEmpty!1200))

(assert (= (and mapNonEmpty!1000 ((_ is Cons!761) mapDefault!1008)) b!46167))

(declare-fun m!20478 () Bool)

(assert (=> setNonEmpty!1200 m!20478))

(declare-fun m!20480 () Bool)

(assert (=> mapNonEmpty!1008 m!20480))

(declare-fun m!20482 () Bool)

(assert (=> setNonEmpty!1201 m!20482))

(declare-fun m!20484 () Bool)

(assert (=> b!46166 m!20484))

(declare-fun m!20486 () Bool)

(assert (=> b!46167 m!20486))

(declare-fun setRes!1202 () Bool)

(declare-fun b!46168 () Bool)

(declare-fun tp!31387 () Bool)

(declare-fun e!26254 () Bool)

(assert (=> b!46168 (= e!26254 (and (inv!1046 (_2!652 (_1!653 (h!6157 mapValue!1001)))) setRes!1202 tp!31387))))

(declare-fun condSetEmpty!1202 () Bool)

(assert (=> b!46168 (= condSetEmpty!1202 (= (_2!653 (h!6157 mapValue!1001)) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1202 () Bool)

(assert (=> setIsEmpty!1202 setRes!1202))

(declare-fun setNonEmpty!1202 () Bool)

(declare-fun tp!31388 () Bool)

(declare-fun setElem!1202 () Context!194)

(assert (=> setNonEmpty!1202 (= setRes!1202 (and tp!31388 (inv!1046 setElem!1202)))))

(declare-fun setRest!1202 () (InoxSet Context!194))

(assert (=> setNonEmpty!1202 (= (_2!653 (h!6157 mapValue!1001)) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1202 true) setRest!1202))))

(assert (=> mapNonEmpty!1000 (= tp!31299 e!26254)))

(assert (= (and b!46168 condSetEmpty!1202) setIsEmpty!1202))

(assert (= (and b!46168 (not condSetEmpty!1202)) setNonEmpty!1202))

(assert (= (and mapNonEmpty!1000 ((_ is Cons!761) mapValue!1001)) b!46168))

(declare-fun m!20488 () Bool)

(assert (=> b!46168 m!20488))

(declare-fun m!20490 () Bool)

(assert (=> setNonEmpty!1202 m!20490))

(declare-fun setIsEmpty!1207 () Bool)

(declare-fun setRes!1207 () Bool)

(assert (=> setIsEmpty!1207 setRes!1207))

(declare-fun setIsEmpty!1208 () Bool)

(declare-fun setRes!1208 () Bool)

(assert (=> setIsEmpty!1208 setRes!1208))

(declare-fun b!46175 () Bool)

(declare-fun mapValue!1011 () List!762)

(declare-fun e!26272 () Bool)

(declare-fun tp!31401 () Bool)

(assert (=> b!46175 (= e!26272 (and (inv!1046 (_1!650 (_1!651 (h!6156 mapValue!1011)))) setRes!1208 tp!31401))))

(declare-fun condSetEmpty!1208 () Bool)

(assert (=> b!46175 (= condSetEmpty!1208 (= (_2!651 (h!6156 mapValue!1011)) ((as const (Array Context!194 Bool)) false)))))

(declare-fun mapNonEmpty!1011 () Bool)

(declare-fun mapRes!1011 () Bool)

(declare-fun tp!31400 () Bool)

(assert (=> mapNonEmpty!1011 (= mapRes!1011 (and tp!31400 e!26272))))

(declare-fun mapKey!1011 () (_ BitVec 32))

(declare-fun mapRest!1011 () (Array (_ BitVec 32) List!762))

(assert (=> mapNonEmpty!1011 (= mapRest!1001 (store mapRest!1011 mapKey!1011 mapValue!1011))))

(declare-fun condMapEmpty!1011 () Bool)

(declare-fun mapDefault!1011 () List!762)

(assert (=> mapNonEmpty!1001 (= condMapEmpty!1011 (= mapRest!1001 ((as const (Array (_ BitVec 32) List!762)) mapDefault!1011)))))

(declare-fun e!26271 () Bool)

(assert (=> mapNonEmpty!1001 (= tp!31319 (and e!26271 mapRes!1011))))

(declare-fun mapIsEmpty!1011 () Bool)

(assert (=> mapIsEmpty!1011 mapRes!1011))

(declare-fun setNonEmpty!1207 () Bool)

(declare-fun tp!31403 () Bool)

(declare-fun setElem!1207 () Context!194)

(assert (=> setNonEmpty!1207 (= setRes!1208 (and tp!31403 (inv!1046 setElem!1207)))))

(declare-fun setRest!1207 () (InoxSet Context!194))

(assert (=> setNonEmpty!1207 (= (_2!651 (h!6156 mapValue!1011)) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1207 true) setRest!1207))))

(declare-fun setNonEmpty!1208 () Bool)

(declare-fun tp!31402 () Bool)

(declare-fun setElem!1208 () Context!194)

(assert (=> setNonEmpty!1208 (= setRes!1207 (and tp!31402 (inv!1046 setElem!1208)))))

(declare-fun setRest!1208 () (InoxSet Context!194))

(assert (=> setNonEmpty!1208 (= (_2!651 (h!6156 mapDefault!1011)) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1208 true) setRest!1208))))

(declare-fun b!46176 () Bool)

(declare-fun tp!31399 () Bool)

(assert (=> b!46176 (= e!26271 (and (inv!1046 (_1!650 (_1!651 (h!6156 mapDefault!1011)))) setRes!1207 tp!31399))))

(declare-fun condSetEmpty!1207 () Bool)

(assert (=> b!46176 (= condSetEmpty!1207 (= (_2!651 (h!6156 mapDefault!1011)) ((as const (Array Context!194 Bool)) false)))))

(assert (= (and mapNonEmpty!1001 condMapEmpty!1011) mapIsEmpty!1011))

(assert (= (and mapNonEmpty!1001 (not condMapEmpty!1011)) mapNonEmpty!1011))

(assert (= (and b!46175 condSetEmpty!1208) setIsEmpty!1208))

(assert (= (and b!46175 (not condSetEmpty!1208)) setNonEmpty!1207))

(assert (= (and mapNonEmpty!1011 ((_ is Cons!760) mapValue!1011)) b!46175))

(assert (= (and b!46176 condSetEmpty!1207) setIsEmpty!1207))

(assert (= (and b!46176 (not condSetEmpty!1207)) setNonEmpty!1208))

(assert (= (and mapNonEmpty!1001 ((_ is Cons!760) mapDefault!1011)) b!46176))

(declare-fun m!20492 () Bool)

(assert (=> mapNonEmpty!1011 m!20492))

(declare-fun m!20494 () Bool)

(assert (=> setNonEmpty!1208 m!20494))

(declare-fun m!20496 () Bool)

(assert (=> b!46175 m!20496))

(declare-fun m!20498 () Bool)

(assert (=> setNonEmpty!1207 m!20498))

(declare-fun m!20500 () Bool)

(assert (=> b!46176 m!20500))

(declare-fun b!46177 () Bool)

(declare-fun setRes!1209 () Bool)

(declare-fun tp!31405 () Bool)

(declare-fun e!26275 () Bool)

(assert (=> b!46177 (= e!26275 (and (inv!1046 (_1!650 (_1!651 (h!6156 mapValue!1000)))) setRes!1209 tp!31405))))

(declare-fun condSetEmpty!1209 () Bool)

(assert (=> b!46177 (= condSetEmpty!1209 (= (_2!651 (h!6156 mapValue!1000)) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1209 () Bool)

(assert (=> setIsEmpty!1209 setRes!1209))

(declare-fun setNonEmpty!1209 () Bool)

(declare-fun tp!31404 () Bool)

(declare-fun setElem!1209 () Context!194)

(assert (=> setNonEmpty!1209 (= setRes!1209 (and tp!31404 (inv!1046 setElem!1209)))))

(declare-fun setRest!1209 () (InoxSet Context!194))

(assert (=> setNonEmpty!1209 (= (_2!651 (h!6156 mapValue!1000)) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1209 true) setRest!1209))))

(assert (=> mapNonEmpty!1001 (= tp!31309 e!26275)))

(assert (= (and b!46177 condSetEmpty!1209) setIsEmpty!1209))

(assert (= (and b!46177 (not condSetEmpty!1209)) setNonEmpty!1209))

(assert (= (and mapNonEmpty!1001 ((_ is Cons!760) mapValue!1000)) b!46177))

(declare-fun m!20502 () Bool)

(assert (=> b!46177 m!20502))

(declare-fun m!20504 () Bool)

(assert (=> setNonEmpty!1209 m!20504))

(declare-fun setRes!1210 () Bool)

(declare-fun tp!31407 () Bool)

(declare-fun b!46178 () Bool)

(declare-fun e!26278 () Bool)

(assert (=> b!46178 (= e!26278 (and (inv!1046 (_1!650 (_1!651 (h!6156 (zeroValue!513 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320)))))))))) setRes!1210 tp!31407))))

(declare-fun condSetEmpty!1210 () Bool)

(assert (=> b!46178 (= condSetEmpty!1210 (= (_2!651 (h!6156 (zeroValue!513 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320)))))))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1210 () Bool)

(assert (=> setIsEmpty!1210 setRes!1210))

(declare-fun setNonEmpty!1210 () Bool)

(declare-fun tp!31406 () Bool)

(declare-fun setElem!1210 () Context!194)

(assert (=> setNonEmpty!1210 (= setRes!1210 (and tp!31406 (inv!1046 setElem!1210)))))

(declare-fun setRest!1210 () (InoxSet Context!194))

(assert (=> setNonEmpty!1210 (= (_2!651 (h!6156 (zeroValue!513 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1210 true) setRest!1210))))

(assert (=> b!45983 (= tp!31314 e!26278)))

(assert (= (and b!46178 condSetEmpty!1210) setIsEmpty!1210))

(assert (= (and b!46178 (not condSetEmpty!1210)) setNonEmpty!1210))

(assert (= (and b!45983 ((_ is Cons!760) (zeroValue!513 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320)))))))) b!46178))

(declare-fun m!20506 () Bool)

(assert (=> b!46178 m!20506))

(declare-fun m!20508 () Bool)

(assert (=> setNonEmpty!1210 m!20508))

(declare-fun setRes!1211 () Bool)

(declare-fun b!46179 () Bool)

(declare-fun e!26281 () Bool)

(declare-fun tp!31409 () Bool)

(assert (=> b!46179 (= e!26281 (and (inv!1046 (_1!650 (_1!651 (h!6156 (minValue!513 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320)))))))))) setRes!1211 tp!31409))))

(declare-fun condSetEmpty!1211 () Bool)

(assert (=> b!46179 (= condSetEmpty!1211 (= (_2!651 (h!6156 (minValue!513 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320)))))))) ((as const (Array Context!194 Bool)) false)))))

(declare-fun setIsEmpty!1211 () Bool)

(assert (=> setIsEmpty!1211 setRes!1211))

(declare-fun setNonEmpty!1211 () Bool)

(declare-fun tp!31408 () Bool)

(declare-fun setElem!1211 () Context!194)

(assert (=> setNonEmpty!1211 (= setRes!1211 (and tp!31408 (inv!1046 setElem!1211)))))

(declare-fun setRest!1211 () (InoxSet Context!194))

(assert (=> setNonEmpty!1211 (= (_2!651 (h!6156 (minValue!513 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!194 Bool)) false) setElem!1211 true) setRest!1211))))

(assert (=> b!45983 (= tp!31317 e!26281)))

(assert (= (and b!46179 condSetEmpty!1211) setIsEmpty!1211))

(assert (= (and b!46179 (not condSetEmpty!1211)) setNonEmpty!1211))

(assert (= (and b!45983 ((_ is Cons!760) (minValue!513 (v!12493 (underlying!709 (v!12494 (underlying!710 (cache!738 cacheUp!320)))))))) b!46179))

(declare-fun m!20510 () Bool)

(assert (=> b!46179 m!20510))

(declare-fun m!20512 () Bool)

(assert (=> setNonEmpty!1211 m!20512))

(declare-fun b_lambda!267 () Bool)

(assert (= b_lambda!265 (or b!45980 b_lambda!267)))

(declare-fun bs!6320 () Bool)

(declare-fun d!5474 () Bool)

(assert (= bs!6320 (and d!5474 b!45980)))

(assert (=> bs!6320 (= (dynLambda!120 lambda!857 (h!6154 lt!6074)) (rulesProduceIndividualToken!10 Lexer!65 lt!6076 (h!6154 lt!6074)))))

(assert (=> bs!6320 m!20282))

(assert (=> b!46043 d!5474))

(check-sat (not b_next!1197) (not d!5396) (not b!46034) (not mapNonEmpty!1011) (not mapNonEmpty!1005) (not setNonEmpty!1181) (not d!5424) (not b!46119) (not setNonEmpty!1193) (not d!5422) (not setNonEmpty!1201) (not d!5426) (not b!46156) (not b!46067) b_and!1237 (not setNonEmpty!1211) (not b!46155) (not b!45979) (not d!5400) (not b!46157) (not d!5410) b_and!1235 (not d!5432) (not b!46133) (not b!46126) (not b_next!1207) (not setNonEmpty!1192) (not setNonEmpty!1178) (not d!5436) (not b!46134) (not b!46083) (not b!46176) (not b!46150) (not b!46148) (not b!46179) (not d!5408) b_and!1231 (not b_lambda!267) (not b!46099) (not d!5448) (not b!46175) (not b!46168) b_and!1239 (not setNonEmpty!1200) (not b!46178) (not b!46109) (not b!46069) (not b!46166) (not b!46112) (not d!5454) (not d!5428) (not d!5456) (not d!5430) (not b!46102) (not b_next!1205) (not b!46068) (not bs!6320) (not b!46086) (not b_next!1199) (not b!46103) (not b!46158) (not d!5434) (not d!5446) (not b!46136) (not b!46051) (not b!46167) (not b!46159) (not b!46115) (not d!5462) (not setNonEmpty!1210) (not b!46033) (not b!46064) (not b!46085) (not d!5402) (not b!46071) (not setNonEmpty!1188) (not d!5394) (not b!46135) (not setNonEmpty!1191) (not setNonEmpty!1202) (not d!5440) (not d!5406) (not d!5416) (not b!46141) (not mapNonEmpty!1008) b_and!1241 (not b!46082) (not setNonEmpty!1209) (not b!46104) (not setNonEmpty!1194) (not b!46149) (not b!46118) (not b!46177) (not b!46065) (not setNonEmpty!1208) (not setNonEmpty!1186) (not d!5404) (not b!46066) (not b!46053) (not setNonEmpty!1195) (not b!46106) (not b_next!1201) (not b!46006) (not b!46044) (not setNonEmpty!1187) (not d!5414) (not b!46032) (not b_next!1203) (not b!46101) (not d!5418) (not b!46097) b_and!1233 (not setNonEmpty!1207) (not d!5438) (not d!5468) (not b!46098))
(check-sat (not b_next!1197) b_and!1237 b_and!1235 (not b_next!1207) b_and!1231 b_and!1239 b_and!1241 (not b_next!1201) (not b_next!1203) b_and!1233 (not b_next!1205) (not b_next!1199))
