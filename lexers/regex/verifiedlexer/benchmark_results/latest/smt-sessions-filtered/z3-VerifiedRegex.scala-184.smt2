; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2216 () Bool)

(assert start!2216)

(declare-fun b!40738 () Bool)

(declare-fun b_free!885 () Bool)

(declare-fun b_next!885 () Bool)

(assert (=> b!40738 (= b_free!885 (not b_next!885))))

(declare-fun tp!28197 () Bool)

(declare-fun b_and!919 () Bool)

(assert (=> b!40738 (= tp!28197 b_and!919)))

(declare-fun b!40750 () Bool)

(declare-fun b_free!887 () Bool)

(declare-fun b_next!887 () Bool)

(assert (=> b!40750 (= b_free!887 (not b_next!887))))

(declare-fun tp!28208 () Bool)

(declare-fun b_and!921 () Bool)

(assert (=> b!40750 (= tp!28208 b_and!921)))

(declare-fun b!40757 () Bool)

(declare-fun b_free!889 () Bool)

(declare-fun b_next!889 () Bool)

(assert (=> b!40757 (= b_free!889 (not b_next!889))))

(declare-fun tp!28205 () Bool)

(declare-fun b_and!923 () Bool)

(assert (=> b!40757 (= tp!28205 b_and!923)))

(declare-fun b!40744 () Bool)

(declare-fun b_free!891 () Bool)

(declare-fun b_next!891 () Bool)

(assert (=> b!40744 (= b_free!891 (not b_next!891))))

(declare-fun tp!28203 () Bool)

(declare-fun b_and!925 () Bool)

(assert (=> b!40744 (= tp!28203 b_and!925)))

(declare-fun b!40732 () Bool)

(declare-fun b_free!893 () Bool)

(declare-fun b_next!893 () Bool)

(assert (=> b!40732 (= b_free!893 (not b_next!893))))

(declare-fun tp!28192 () Bool)

(declare-fun b_and!927 () Bool)

(assert (=> b!40732 (= tp!28192 b_and!927)))

(declare-fun b!40734 () Bool)

(declare-fun b_free!895 () Bool)

(declare-fun b_next!895 () Bool)

(assert (=> b!40734 (= b_free!895 (not b_next!895))))

(declare-fun tp!28211 () Bool)

(declare-fun b_and!929 () Bool)

(assert (=> b!40734 (= tp!28211 b_and!929)))

(declare-fun b!40773 () Bool)

(declare-fun e!21137 () Bool)

(assert (=> b!40773 (= e!21137 true)))

(declare-fun b!40772 () Bool)

(declare-fun e!21136 () Bool)

(assert (=> b!40772 (= e!21136 e!21137)))

(declare-fun b!40771 () Bool)

(declare-fun e!21135 () Bool)

(assert (=> b!40771 (= e!21135 e!21136)))

(declare-fun b!40729 () Bool)

(assert (=> b!40729 e!21135))

(assert (= b!40772 b!40773))

(assert (= b!40771 b!40772))

(declare-datatypes ((List!573 0))(
  ( (Nil!571) (Cons!571 (h!5967 (_ BitVec 16)) (t!15951 List!573)) )
))
(declare-datatypes ((TokenValue!139 0))(
  ( (FloatLiteralValue!278 (text!1418 List!573)) (TokenValueExt!138 (__x!1007 Int)) (Broken!695 (value!7028 List!573)) (Object!140) (End!139) (Def!139) (Underscore!139) (Match!139) (Else!139) (Error!139) (Case!139) (If!139) (Extends!139) (Abstract!139) (Class!139) (Val!139) (DelimiterValue!278 (del!199 List!573)) (KeywordValue!145 (value!7029 List!573)) (CommentValue!278 (value!7030 List!573)) (WhitespaceValue!278 (value!7031 List!573)) (IndentationValue!139 (value!7032 List!573)) (String!986) (Int32!139) (Broken!696 (value!7033 List!573)) (Boolean!140) (Unit!255) (OperatorValue!142 (op!199 List!573)) (IdentifierValue!278 (value!7034 List!573)) (IdentifierValue!279 (value!7035 List!573)) (WhitespaceValue!279 (value!7036 List!573)) (True!278) (False!278) (Broken!697 (value!7037 List!573)) (Broken!698 (value!7038 List!573)) (True!279) (RightBrace!139) (RightBracket!139) (Colon!139) (Null!139) (Comma!139) (LeftBracket!139) (False!279) (LeftBrace!139) (ImaginaryLiteralValue!139 (text!1419 List!573)) (StringLiteralValue!417 (value!7039 List!573)) (EOFValue!139 (value!7040 List!573)) (IdentValue!139 (value!7041 List!573)) (DelimiterValue!279 (value!7042 List!573)) (DedentValue!139 (value!7043 List!573)) (NewLineValue!139 (value!7044 List!573)) (IntegerValue!417 (value!7045 (_ BitVec 32)) (text!1420 List!573)) (IntegerValue!418 (value!7046 Int) (text!1421 List!573)) (Times!139) (Or!139) (Equal!139) (Minus!139) (Broken!699 (value!7047 List!573)) (And!139) (Div!139) (LessEqual!139) (Mod!139) (Concat!352) (Not!139) (Plus!139) (SpaceValue!139 (value!7048 List!573)) (IntegerValue!419 (value!7049 Int) (text!1422 List!573)) (StringLiteralValue!418 (text!1423 List!573)) (FloatLiteralValue!279 (text!1424 List!573)) (BytesLiteralValue!139 (value!7050 List!573)) (CommentValue!279 (value!7051 List!573)) (StringLiteralValue!419 (value!7052 List!573)) (ErrorTokenValue!139 (msg!200 List!573)) )
))
(declare-datatypes ((Regex!213 0))(
  ( (ElementMatch!213 (c!15814 (_ BitVec 16))) (Concat!353 (regOne!938 Regex!213) (regTwo!938 Regex!213)) (EmptyExpr!213) (Star!213 (reg!542 Regex!213)) (EmptyLang!213) (Union!213 (regOne!939 Regex!213) (regTwo!939 Regex!213)) )
))
(declare-datatypes ((String!987 0))(
  ( (String!988 (value!7053 String)) )
))
(declare-datatypes ((IArray!203 0))(
  ( (IArray!204 (innerList!159 List!573)) )
))
(declare-datatypes ((Conc!101 0))(
  ( (Node!101 (left!505 Conc!101) (right!835 Conc!101) (csize!432 Int) (cheight!312 Int)) (Leaf!286 (xs!2680 IArray!203) (csize!433 Int)) (Empty!101) )
))
(declare-datatypes ((BalanceConc!202 0))(
  ( (BalanceConc!203 (c!15815 Conc!101)) )
))
(declare-datatypes ((TokenValueInjection!102 0))(
  ( (TokenValueInjection!103 (toValue!628 Int) (toChars!487 Int)) )
))
(declare-datatypes ((Rule!98 0))(
  ( (Rule!99 (regex!149 Regex!213) (tag!327 String!987) (isSeparator!149 Bool) (transformation!149 TokenValueInjection!102)) )
))
(declare-datatypes ((List!574 0))(
  ( (Nil!572) (Cons!572 (h!5968 Rule!98) (t!15952 List!574)) )
))
(declare-fun lt!4223 () List!574)

(get-info :version)

(assert (= (and b!40729 ((_ is Cons!572) lt!4223)) b!40771))

(declare-fun lambda!675 () Int)

(declare-fun order!105 () Int)

(declare-fun order!103 () Int)

(declare-fun dynLambda!68 (Int Int) Int)

(declare-fun dynLambda!69 (Int Int) Int)

(assert (=> b!40773 (< (dynLambda!68 order!103 (toValue!628 (transformation!149 (h!5968 lt!4223)))) (dynLambda!69 order!105 lambda!675))))

(declare-fun order!107 () Int)

(declare-fun dynLambda!70 (Int Int) Int)

(assert (=> b!40773 (< (dynLambda!70 order!107 (toChars!487 (transformation!149 (h!5968 lt!4223)))) (dynLambda!69 order!105 lambda!675))))

(declare-fun mapNonEmpty!643 () Bool)

(declare-fun mapRes!644 () Bool)

(declare-fun tp!28195 () Bool)

(declare-fun tp!28193 () Bool)

(assert (=> mapNonEmpty!643 (= mapRes!644 (and tp!28195 tp!28193))))

(declare-datatypes ((List!575 0))(
  ( (Nil!573) (Cons!573 (h!5969 Regex!213) (t!15953 List!575)) )
))
(declare-datatypes ((Context!142 0))(
  ( (Context!143 (exprs!571 List!575)) )
))
(declare-datatypes ((tuple3!198 0))(
  ( (tuple3!199 (_1!444 Regex!213) (_2!444 Context!142) (_3!120 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!648 0))(
  ( (tuple2!649 (_1!445 tuple3!198) (_2!445 (InoxSet Context!142))) )
))
(declare-datatypes ((List!576 0))(
  ( (Nil!574) (Cons!574 (h!5970 tuple2!648) (t!15954 List!576)) )
))
(declare-fun mapRest!645 () (Array (_ BitVec 32) List!576))

(declare-fun mapKey!645 () (_ BitVec 32))

(declare-fun mapValue!645 () List!576)

(declare-datatypes ((array!602 0))(
  ( (array!603 (arr!308 (Array (_ BitVec 32) List!576)) (size!582 (_ BitVec 32))) )
))
(declare-datatypes ((array!604 0))(
  ( (array!605 (arr!309 (Array (_ BitVec 32) (_ BitVec 64))) (size!583 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!366 0))(
  ( (LongMapFixedSize!367 (defaultEntry!521 Int) (mask!891 (_ BitVec 32)) (extraKeys!429 (_ BitVec 32)) (zeroValue!439 List!576) (minValue!439 List!576) (_size!498 (_ BitVec 32)) (_keys!474 array!604) (_values!461 array!602) (_vacant!243 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!721 0))(
  ( (Cell!722 (v!12339 LongMapFixedSize!366)) )
))
(declare-datatypes ((MutLongMap!183 0))(
  ( (LongMap!183 (underlying!561 Cell!721)) (MutLongMapExt!182 (__x!1008 Int)) )
))
(declare-datatypes ((Cell!723 0))(
  ( (Cell!724 (v!12340 MutLongMap!183)) )
))
(declare-datatypes ((Hashable!179 0))(
  ( (HashableExt!178 (__x!1009 Int)) )
))
(declare-datatypes ((MutableMap!179 0))(
  ( (MutableMapExt!178 (__x!1010 Int)) (HashMap!179 (underlying!562 Cell!723) (hashF!2047 Hashable!179) (_size!499 (_ BitVec 32)) (defaultValue!328 Int)) )
))
(declare-datatypes ((CacheDown!122 0))(
  ( (CacheDown!123 (cache!664 MutableMap!179)) )
))
(declare-fun cacheDown!333 () CacheDown!122)

(assert (=> mapNonEmpty!643 (= (arr!308 (_values!461 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333))))))) (store mapRest!645 mapKey!645 mapValue!645))))

(declare-fun b!40721 () Bool)

(declare-fun e!21114 () Bool)

(declare-fun e!21103 () Bool)

(declare-datatypes ((tuple2!650 0))(
  ( (tuple2!651 (_1!446 Context!142) (_2!446 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!652 0))(
  ( (tuple2!653 (_1!447 tuple2!650) (_2!447 (InoxSet Context!142))) )
))
(declare-datatypes ((List!577 0))(
  ( (Nil!575) (Cons!575 (h!5971 tuple2!652) (t!15955 List!577)) )
))
(declare-datatypes ((array!606 0))(
  ( (array!607 (arr!310 (Array (_ BitVec 32) List!577)) (size!584 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!368 0))(
  ( (LongMapFixedSize!369 (defaultEntry!522 Int) (mask!892 (_ BitVec 32)) (extraKeys!430 (_ BitVec 32)) (zeroValue!440 List!577) (minValue!440 List!577) (_size!500 (_ BitVec 32)) (_keys!475 array!604) (_values!462 array!606) (_vacant!244 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!725 0))(
  ( (Cell!726 (v!12341 LongMapFixedSize!368)) )
))
(declare-datatypes ((MutLongMap!184 0))(
  ( (LongMap!184 (underlying!563 Cell!725)) (MutLongMapExt!183 (__x!1011 Int)) )
))
(declare-fun lt!4229 () MutLongMap!184)

(assert (=> b!40721 (= e!21114 (and e!21103 ((_ is LongMap!184) lt!4229)))))

(declare-datatypes ((Hashable!180 0))(
  ( (HashableExt!179 (__x!1012 Int)) )
))
(declare-datatypes ((Cell!727 0))(
  ( (Cell!728 (v!12342 MutLongMap!184)) )
))
(declare-datatypes ((MutableMap!180 0))(
  ( (MutableMapExt!179 (__x!1013 Int)) (HashMap!180 (underlying!564 Cell!727) (hashF!2048 Hashable!180) (_size!501 (_ BitVec 32)) (defaultValue!329 Int)) )
))
(declare-datatypes ((CacheUp!122 0))(
  ( (CacheUp!123 (cache!665 MutableMap!180)) )
))
(declare-fun cacheUp!320 () CacheUp!122)

(assert (=> b!40721 (= lt!4229 (v!12342 (underlying!564 (cache!665 cacheUp!320))))))

(declare-fun b!40722 () Bool)

(declare-fun res!29303 () Bool)

(declare-fun e!21119 () Bool)

(assert (=> b!40722 (=> (not res!29303) (not e!21119))))

(declare-datatypes ((Token!66 0))(
  ( (Token!67 (value!7054 TokenValue!139) (rule!626 Rule!98) (size!585 Int) (originalCharacters!204 List!573)) )
))
(declare-datatypes ((List!578 0))(
  ( (Nil!576) (Cons!576 (h!5972 Token!66) (t!15956 List!578)) )
))
(declare-datatypes ((IArray!205 0))(
  ( (IArray!206 (innerList!160 List!578)) )
))
(declare-datatypes ((Conc!102 0))(
  ( (Node!102 (left!506 Conc!102) (right!836 Conc!102) (csize!434 Int) (cheight!313 Int)) (Leaf!287 (xs!2681 IArray!205) (csize!435 Int)) (Empty!102) )
))
(declare-datatypes ((BalanceConc!204 0))(
  ( (BalanceConc!205 (c!15816 Conc!102)) )
))
(declare-datatypes ((tuple2!654 0))(
  ( (tuple2!655 (_1!448 BalanceConc!204) (_2!448 BalanceConc!202)) )
))
(declare-datatypes ((tuple3!200 0))(
  ( (tuple3!201 (_1!449 (InoxSet Context!142)) (_2!449 Int) (_3!121 Int)) )
))
(declare-datatypes ((tuple2!656 0))(
  ( (tuple2!657 (_1!450 tuple3!200) (_2!450 Int)) )
))
(declare-datatypes ((List!579 0))(
  ( (Nil!577) (Cons!577 (h!5973 tuple2!656) (t!15957 List!579)) )
))
(declare-datatypes ((array!608 0))(
  ( (array!609 (arr!311 (Array (_ BitVec 32) List!579)) (size!586 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!370 0))(
  ( (LongMapFixedSize!371 (defaultEntry!523 Int) (mask!893 (_ BitVec 32)) (extraKeys!431 (_ BitVec 32)) (zeroValue!441 List!579) (minValue!441 List!579) (_size!502 (_ BitVec 32)) (_keys!476 array!604) (_values!463 array!608) (_vacant!245 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!181 0))(
  ( (HashableExt!180 (__x!1014 Int)) )
))
(declare-datatypes ((Cell!729 0))(
  ( (Cell!730 (v!12343 LongMapFixedSize!370)) )
))
(declare-datatypes ((MutLongMap!185 0))(
  ( (LongMap!185 (underlying!565 Cell!729)) (MutLongMapExt!184 (__x!1015 Int)) )
))
(declare-datatypes ((Cell!731 0))(
  ( (Cell!732 (v!12344 MutLongMap!185)) )
))
(declare-datatypes ((MutableMap!181 0))(
  ( (MutableMapExt!180 (__x!1016 Int)) (HashMap!181 (underlying!566 Cell!731) (hashF!2049 Hashable!181) (_size!503 (_ BitVec 32)) (defaultValue!330 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!70 0))(
  ( (CacheFurthestNullable!71 (cache!666 MutableMap!181) (totalInput!1512 BalanceConc!202)) )
))
(declare-datatypes ((tuple4!42 0))(
  ( (tuple4!43 (_1!451 tuple2!654) (_2!451 CacheUp!122) (_3!122 CacheDown!122) (_4!21 CacheFurthestNullable!70)) )
))
(declare-fun lt!4219 () tuple4!42)

(declare-fun input!525 () BalanceConc!202)

(assert (=> b!40722 (= res!29303 (= (totalInput!1512 (_4!21 lt!4219)) input!525))))

(declare-fun b!40723 () Bool)

(declare-fun e!21128 () Bool)

(declare-fun e!21109 () Bool)

(assert (=> b!40723 (= e!21128 e!21109)))

(declare-fun res!29291 () Bool)

(assert (=> b!40723 (=> (not res!29291) (not e!21109))))

(declare-fun lt!4230 () List!578)

(declare-fun lt!4231 () List!578)

(assert (=> b!40723 (= res!29291 (= lt!4230 lt!4231))))

(declare-fun lt!4217 () tuple2!654)

(declare-fun list!141 (BalanceConc!204) List!578)

(assert (=> b!40723 (= lt!4231 (list!141 (_1!448 lt!4217)))))

(assert (=> b!40723 (= lt!4230 (list!141 (_1!448 (_1!451 lt!4219))))))

(declare-datatypes ((LexerInterface!44 0))(
  ( (LexerInterfaceExt!41 (__x!1017 Int)) (Lexer!42) )
))
(declare-fun lex!18 (LexerInterface!44 List!574 BalanceConc!202) tuple2!654)

(assert (=> b!40723 (= lt!4217 (lex!18 Lexer!42 lt!4223 input!525))))

(declare-datatypes ((Unit!256 0))(
  ( (Unit!257) )
))
(declare-fun lt!4228 () Unit!256)

(declare-fun lemmaInvariant!31 (CacheDown!122) Unit!256)

(assert (=> b!40723 (= lt!4228 (lemmaInvariant!31 (_3!122 lt!4219)))))

(declare-fun lt!4218 () Unit!256)

(declare-fun lemmaInvariant!32 (CacheUp!122) Unit!256)

(assert (=> b!40723 (= lt!4218 (lemmaInvariant!32 (_2!451 lt!4219)))))

(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!70)

(declare-fun lexMem!14 (LexerInterface!44 List!574 BalanceConc!202 CacheUp!122 CacheDown!122 CacheFurthestNullable!70) tuple4!42)

(assert (=> b!40723 (= lt!4219 (lexMem!14 Lexer!42 lt!4223 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!40724 () Bool)

(declare-fun res!29296 () Bool)

(assert (=> b!40724 (=> (not res!29296) (not e!21128))))

(assert (=> b!40724 (= res!29296 (= (totalInput!1512 cacheFurthestNullable!45) input!525))))

(declare-fun b!40725 () Bool)

(declare-fun res!29287 () Bool)

(assert (=> b!40725 (=> (not res!29287) (not e!21128))))

(declare-fun valid!175 (CacheUp!122) Bool)

(assert (=> b!40725 (= res!29287 (valid!175 cacheUp!320))))

(declare-fun b!40726 () Bool)

(declare-fun res!29293 () Bool)

(assert (=> b!40726 (=> (not res!29293) (not e!21119))))

(declare-fun valid!176 (CacheFurthestNullable!70) Bool)

(assert (=> b!40726 (= res!29293 (valid!176 (_4!21 lt!4219)))))

(declare-fun b!40727 () Bool)

(declare-fun e!21124 () Bool)

(declare-fun e!21105 () Bool)

(assert (=> b!40727 (= e!21124 e!21105)))

(declare-fun res!29294 () Bool)

(assert (=> start!2216 (=> (not res!29294) (not e!21128))))

(declare-fun isEmpty!114 (List!574) Bool)

(assert (=> start!2216 (= res!29294 (not (isEmpty!114 lt!4223)))))

(declare-datatypes ((JsonLexer!52 0))(
  ( (JsonLexer!53) )
))
(declare-fun rules!109 (JsonLexer!52) List!574)

(assert (=> start!2216 (= lt!4223 (rules!109 JsonLexer!53))))

(assert (=> start!2216 e!21128))

(declare-fun e!21127 () Bool)

(declare-fun inv!854 (CacheDown!122) Bool)

(assert (=> start!2216 (and (inv!854 cacheDown!333) e!21127)))

(declare-fun e!21099 () Bool)

(declare-fun inv!855 (BalanceConc!202) Bool)

(assert (=> start!2216 (and (inv!855 input!525) e!21099)))

(declare-fun e!21110 () Bool)

(declare-fun inv!856 (CacheFurthestNullable!70) Bool)

(assert (=> start!2216 (and (inv!856 cacheFurthestNullable!45) e!21110)))

(declare-fun e!21125 () Bool)

(declare-fun inv!857 (CacheUp!122) Bool)

(assert (=> start!2216 (and (inv!857 cacheUp!320) e!21125)))

(declare-fun b!40728 () Bool)

(declare-fun res!29290 () Bool)

(assert (=> b!40728 (=> (not res!29290) (not e!21128))))

(declare-fun valid!177 (CacheDown!122) Bool)

(assert (=> b!40728 (= res!29290 (valid!177 cacheDown!333))))

(declare-fun res!29302 () Bool)

(assert (=> b!40729 (=> (not res!29302) (not e!21119))))

(declare-fun forall!59 (List!578 Int) Bool)

(assert (=> b!40729 (= res!29302 (forall!59 lt!4230 lambda!675))))

(declare-fun b!40730 () Bool)

(declare-fun e!21098 () Bool)

(assert (=> b!40730 (= e!21125 e!21098)))

(declare-fun b!40731 () Bool)

(declare-fun rulesProduceEachTokenIndividually!1 (LexerInterface!44 List!574 BalanceConc!204) Bool)

(assert (=> b!40731 (= e!21119 (not (rulesProduceEachTokenIndividually!1 Lexer!42 lt!4223 (_1!448 (_1!451 lt!4219)))))))

(declare-fun e!21108 () Bool)

(declare-fun e!21126 () Bool)

(declare-fun tp!28202 () Bool)

(declare-fun tp!28209 () Bool)

(declare-fun array_inv!199 (array!604) Bool)

(declare-fun array_inv!200 (array!602) Bool)

(assert (=> b!40732 (= e!21126 (and tp!28192 tp!28209 tp!28202 (array_inv!199 (_keys!474 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333))))))) (array_inv!200 (_values!461 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333))))))) e!21108))))

(declare-fun b!40733 () Bool)

(declare-fun e!21117 () Bool)

(declare-fun tp!28200 () Bool)

(declare-fun mapRes!643 () Bool)

(assert (=> b!40733 (= e!21117 (and tp!28200 mapRes!643))))

(declare-fun condMapEmpty!644 () Bool)

(declare-fun mapDefault!643 () List!579)

(assert (=> b!40733 (= condMapEmpty!644 (= (arr!311 (_values!463 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!579)) mapDefault!643)))))

(declare-fun e!21106 () Bool)

(declare-fun e!21118 () Bool)

(assert (=> b!40734 (= e!21106 (and e!21118 tp!28211))))

(declare-fun b!40735 () Bool)

(declare-fun e!21111 () Bool)

(assert (=> b!40735 (= e!21127 e!21111)))

(declare-fun b!40736 () Bool)

(declare-fun e!21113 () Bool)

(declare-fun e!21123 () Bool)

(assert (=> b!40736 (= e!21113 e!21123)))

(declare-fun b!40737 () Bool)

(declare-fun res!29289 () Bool)

(assert (=> b!40737 (=> (not res!29289) (not e!21119))))

(declare-fun lt!4225 () List!573)

(declare-fun lt!4226 () tuple2!654)

(declare-fun list!142 (BalanceConc!202) List!573)

(assert (=> b!40737 (= res!29289 (= lt!4225 (list!142 (_2!448 lt!4226))))))

(declare-fun tp!28194 () Bool)

(declare-fun tp!28190 () Bool)

(declare-fun array_inv!201 (array!608) Bool)

(assert (=> b!40738 (= e!21105 (and tp!28197 tp!28190 tp!28194 (array_inv!199 (_keys!476 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))) (array_inv!201 (_values!463 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))) e!21117))))

(declare-fun b!40739 () Bool)

(declare-fun e!21102 () Bool)

(declare-fun lt!4220 () MutLongMap!185)

(assert (=> b!40739 (= e!21118 (and e!21102 ((_ is LongMap!185) lt!4220)))))

(assert (=> b!40739 (= lt!4220 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))

(declare-fun mapNonEmpty!644 () Bool)

(declare-fun mapRes!645 () Bool)

(declare-fun tp!28207 () Bool)

(declare-fun tp!28201 () Bool)

(assert (=> mapNonEmpty!644 (= mapRes!645 (and tp!28207 tp!28201))))

(declare-fun mapKey!643 () (_ BitVec 32))

(declare-fun mapRest!644 () (Array (_ BitVec 32) List!577))

(declare-fun mapValue!643 () List!577)

(assert (=> mapNonEmpty!644 (= (arr!310 (_values!462 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320))))))) (store mapRest!644 mapKey!643 mapValue!643))))

(declare-fun b!40740 () Bool)

(assert (=> b!40740 (= e!21102 e!21124)))

(declare-fun mapIsEmpty!643 () Bool)

(assert (=> mapIsEmpty!643 mapRes!645))

(declare-fun b!40741 () Bool)

(declare-fun e!21120 () Bool)

(declare-fun tp!28191 () Bool)

(assert (=> b!40741 (= e!21120 (and tp!28191 mapRes!645))))

(declare-fun condMapEmpty!643 () Bool)

(declare-fun mapDefault!644 () List!577)

(assert (=> b!40741 (= condMapEmpty!643 (= (arr!310 (_values!462 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!577)) mapDefault!644)))))

(declare-fun b!40742 () Bool)

(declare-fun tp!28189 () Bool)

(assert (=> b!40742 (= e!21108 (and tp!28189 mapRes!644))))

(declare-fun condMapEmpty!645 () Bool)

(declare-fun mapDefault!645 () List!576)

(assert (=> b!40742 (= condMapEmpty!645 (= (arr!308 (_values!461 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!576)) mapDefault!645)))))

(declare-fun b!40743 () Bool)

(declare-fun tp!28198 () Bool)

(declare-fun inv!858 (Conc!101) Bool)

(assert (=> b!40743 (= e!21099 (and (inv!858 (c!15815 input!525)) tp!28198))))

(assert (=> b!40744 (= e!21098 (and e!21114 tp!28203))))

(declare-fun b!40745 () Bool)

(declare-fun e!21121 () Bool)

(declare-fun e!21112 () Bool)

(assert (=> b!40745 (= e!21121 e!21112)))

(declare-fun res!29285 () Bool)

(assert (=> b!40745 (=> (not res!29285) (not e!21112))))

(declare-fun lt!4222 () BalanceConc!202)

(declare-fun lt!4227 () List!573)

(assert (=> b!40745 (= res!29285 (= (list!142 lt!4222) lt!4227))))

(declare-fun seqFromList!17 (List!573) BalanceConc!202)

(assert (=> b!40745 (= lt!4222 (seqFromList!17 lt!4227))))

(assert (=> b!40745 (= lt!4227 (list!142 input!525))))

(declare-fun b!40746 () Bool)

(declare-fun res!29300 () Bool)

(assert (=> b!40746 (=> (not res!29300) (not e!21128))))

(declare-fun rulesInvariant!35 (LexerInterface!44 List!574) Bool)

(assert (=> b!40746 (= res!29300 (rulesInvariant!35 Lexer!42 lt!4223))))

(declare-fun b!40747 () Bool)

(assert (=> b!40747 (= e!21103 e!21113)))

(declare-fun mapIsEmpty!644 () Bool)

(assert (=> mapIsEmpty!644 mapRes!644))

(declare-fun b!40748 () Bool)

(declare-fun res!29299 () Bool)

(assert (=> b!40748 (=> (not res!29299) (not e!21119))))

(declare-fun lexThenRulesProduceEachTokenIndividually!10 (LexerInterface!44 List!574 List!573) Bool)

(assert (=> b!40748 (= res!29299 (lexThenRulesProduceEachTokenIndividually!10 Lexer!42 lt!4223 lt!4227))))

(declare-fun b!40749 () Bool)

(assert (=> b!40749 (= e!21109 e!21121)))

(declare-fun res!29297 () Bool)

(assert (=> b!40749 (=> (not res!29297) (not e!21121))))

(declare-fun lt!4221 () List!573)

(assert (=> b!40749 (= res!29297 (= lt!4221 lt!4225))))

(assert (=> b!40749 (= lt!4225 (list!142 (_2!448 lt!4217)))))

(assert (=> b!40749 (= lt!4221 (list!142 (_2!448 (_1!451 lt!4219))))))

(declare-fun tp!28204 () Bool)

(declare-fun tp!28196 () Bool)

(declare-fun array_inv!202 (array!606) Bool)

(assert (=> b!40750 (= e!21123 (and tp!28208 tp!28204 tp!28196 (array_inv!199 (_keys!475 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320))))))) (array_inv!202 (_values!462 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320))))))) e!21120))))

(declare-fun b!40751 () Bool)

(declare-fun e!21100 () Bool)

(declare-fun tp!28210 () Bool)

(assert (=> b!40751 (= e!21100 (and (inv!858 (c!15815 (totalInput!1512 cacheFurthestNullable!45))) tp!28210))))

(declare-fun mapIsEmpty!645 () Bool)

(assert (=> mapIsEmpty!645 mapRes!643))

(declare-fun b!40752 () Bool)

(declare-fun e!21101 () Bool)

(declare-fun e!21122 () Bool)

(declare-fun lt!4224 () MutLongMap!183)

(assert (=> b!40752 (= e!21101 (and e!21122 ((_ is LongMap!183) lt!4224)))))

(assert (=> b!40752 (= lt!4224 (v!12340 (underlying!562 (cache!664 cacheDown!333))))))

(declare-fun b!40753 () Bool)

(declare-fun res!29292 () Bool)

(assert (=> b!40753 (=> (not res!29292) (not e!21119))))

(declare-fun rulesProduceEachTokenIndividuallyList!6 (LexerInterface!44 List!574 List!578) Bool)

(assert (=> b!40753 (= res!29292 (rulesProduceEachTokenIndividuallyList!6 Lexer!42 lt!4223 lt!4230))))

(declare-fun b!40754 () Bool)

(assert (=> b!40754 (= e!21110 (and e!21106 (inv!855 (totalInput!1512 cacheFurthestNullable!45)) e!21100))))

(declare-fun b!40755 () Bool)

(declare-fun res!29301 () Bool)

(assert (=> b!40755 (=> (not res!29301) (not e!21119))))

(assert (=> b!40755 (= res!29301 (valid!175 (_2!451 lt!4219)))))

(declare-fun b!40756 () Bool)

(declare-fun res!29295 () Bool)

(assert (=> b!40756 (=> (not res!29295) (not e!21119))))

(declare-fun forall!60 (BalanceConc!204 Int) Bool)

(assert (=> b!40756 (= res!29295 (forall!60 (_1!448 (_1!451 lt!4219)) lambda!675))))

(assert (=> b!40757 (= e!21111 (and e!21101 tp!28205))))

(declare-fun mapNonEmpty!645 () Bool)

(declare-fun tp!28206 () Bool)

(declare-fun tp!28199 () Bool)

(assert (=> mapNonEmpty!645 (= mapRes!643 (and tp!28206 tp!28199))))

(declare-fun mapRest!643 () (Array (_ BitVec 32) List!579))

(declare-fun mapValue!644 () List!579)

(declare-fun mapKey!644 () (_ BitVec 32))

(assert (=> mapNonEmpty!645 (= (arr!311 (_values!463 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))) (store mapRest!643 mapKey!644 mapValue!644))))

(declare-fun b!40758 () Bool)

(declare-fun e!21104 () Bool)

(assert (=> b!40758 (= e!21122 e!21104)))

(declare-fun b!40759 () Bool)

(assert (=> b!40759 (= e!21112 e!21119)))

(declare-fun res!29288 () Bool)

(assert (=> b!40759 (=> (not res!29288) (not e!21119))))

(assert (=> b!40759 (= res!29288 (= lt!4231 (list!141 (_1!448 lt!4226))))))

(assert (=> b!40759 (= lt!4226 (lex!18 Lexer!42 lt!4223 lt!4222))))

(declare-fun b!40760 () Bool)

(declare-fun res!29298 () Bool)

(assert (=> b!40760 (=> (not res!29298) (not e!21119))))

(assert (=> b!40760 (= res!29298 (valid!177 (_3!122 lt!4219)))))

(declare-fun b!40761 () Bool)

(assert (=> b!40761 (= e!21104 e!21126)))

(declare-fun b!40762 () Bool)

(declare-fun res!29286 () Bool)

(assert (=> b!40762 (=> (not res!29286) (not e!21128))))

(assert (=> b!40762 (= res!29286 (valid!176 cacheFurthestNullable!45))))

(assert (= (and start!2216 res!29294) b!40746))

(assert (= (and b!40746 res!29300) b!40725))

(assert (= (and b!40725 res!29287) b!40728))

(assert (= (and b!40728 res!29290) b!40762))

(assert (= (and b!40762 res!29286) b!40724))

(assert (= (and b!40724 res!29296) b!40723))

(assert (= (and b!40723 res!29291) b!40749))

(assert (= (and b!40749 res!29297) b!40745))

(assert (= (and b!40745 res!29285) b!40759))

(assert (= (and b!40759 res!29288) b!40737))

(assert (= (and b!40737 res!29289) b!40748))

(assert (= (and b!40748 res!29299) b!40729))

(assert (= (and b!40729 res!29302) b!40756))

(assert (= (and b!40756 res!29295) b!40753))

(assert (= (and b!40753 res!29292) b!40755))

(assert (= (and b!40755 res!29301) b!40760))

(assert (= (and b!40760 res!29298) b!40726))

(assert (= (and b!40726 res!29293) b!40722))

(assert (= (and b!40722 res!29303) b!40731))

(assert (= (and b!40742 condMapEmpty!645) mapIsEmpty!644))

(assert (= (and b!40742 (not condMapEmpty!645)) mapNonEmpty!643))

(assert (= b!40732 b!40742))

(assert (= b!40761 b!40732))

(assert (= b!40758 b!40761))

(assert (= (and b!40752 ((_ is LongMap!183) (v!12340 (underlying!562 (cache!664 cacheDown!333))))) b!40758))

(assert (= b!40757 b!40752))

(assert (= (and b!40735 ((_ is HashMap!179) (cache!664 cacheDown!333))) b!40757))

(assert (= start!2216 b!40735))

(assert (= start!2216 b!40743))

(assert (= (and b!40733 condMapEmpty!644) mapIsEmpty!645))

(assert (= (and b!40733 (not condMapEmpty!644)) mapNonEmpty!645))

(assert (= b!40738 b!40733))

(assert (= b!40727 b!40738))

(assert (= b!40740 b!40727))

(assert (= (and b!40739 ((_ is LongMap!185) (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))) b!40740))

(assert (= b!40734 b!40739))

(assert (= (and b!40754 ((_ is HashMap!181) (cache!666 cacheFurthestNullable!45))) b!40734))

(assert (= b!40754 b!40751))

(assert (= start!2216 b!40754))

(assert (= (and b!40741 condMapEmpty!643) mapIsEmpty!643))

(assert (= (and b!40741 (not condMapEmpty!643)) mapNonEmpty!644))

(assert (= b!40750 b!40741))

(assert (= b!40736 b!40750))

(assert (= b!40747 b!40736))

(assert (= (and b!40721 ((_ is LongMap!184) (v!12342 (underlying!564 (cache!665 cacheUp!320))))) b!40747))

(assert (= b!40744 b!40721))

(assert (= (and b!40730 ((_ is HashMap!180) (cache!665 cacheUp!320))) b!40744))

(assert (= start!2216 b!40730))

(declare-fun m!14042 () Bool)

(assert (=> b!40728 m!14042))

(declare-fun m!14044 () Bool)

(assert (=> start!2216 m!14044))

(declare-fun m!14046 () Bool)

(assert (=> start!2216 m!14046))

(declare-fun m!14048 () Bool)

(assert (=> start!2216 m!14048))

(declare-fun m!14050 () Bool)

(assert (=> start!2216 m!14050))

(declare-fun m!14052 () Bool)

(assert (=> start!2216 m!14052))

(declare-fun m!14054 () Bool)

(assert (=> start!2216 m!14054))

(declare-fun m!14056 () Bool)

(assert (=> b!40756 m!14056))

(declare-fun m!14058 () Bool)

(assert (=> b!40754 m!14058))

(declare-fun m!14060 () Bool)

(assert (=> b!40743 m!14060))

(declare-fun m!14062 () Bool)

(assert (=> b!40748 m!14062))

(declare-fun m!14064 () Bool)

(assert (=> b!40732 m!14064))

(declare-fun m!14066 () Bool)

(assert (=> b!40732 m!14066))

(declare-fun m!14068 () Bool)

(assert (=> b!40723 m!14068))

(declare-fun m!14070 () Bool)

(assert (=> b!40723 m!14070))

(declare-fun m!14072 () Bool)

(assert (=> b!40723 m!14072))

(declare-fun m!14074 () Bool)

(assert (=> b!40723 m!14074))

(declare-fun m!14076 () Bool)

(assert (=> b!40723 m!14076))

(declare-fun m!14078 () Bool)

(assert (=> b!40723 m!14078))

(declare-fun m!14080 () Bool)

(assert (=> b!40729 m!14080))

(declare-fun m!14082 () Bool)

(assert (=> b!40760 m!14082))

(declare-fun m!14084 () Bool)

(assert (=> b!40725 m!14084))

(declare-fun m!14086 () Bool)

(assert (=> b!40731 m!14086))

(declare-fun m!14088 () Bool)

(assert (=> b!40726 m!14088))

(declare-fun m!14090 () Bool)

(assert (=> b!40749 m!14090))

(declare-fun m!14092 () Bool)

(assert (=> b!40749 m!14092))

(declare-fun m!14094 () Bool)

(assert (=> b!40751 m!14094))

(declare-fun m!14096 () Bool)

(assert (=> mapNonEmpty!644 m!14096))

(declare-fun m!14098 () Bool)

(assert (=> b!40746 m!14098))

(declare-fun m!14100 () Bool)

(assert (=> b!40738 m!14100))

(declare-fun m!14102 () Bool)

(assert (=> b!40738 m!14102))

(declare-fun m!14104 () Bool)

(assert (=> b!40745 m!14104))

(declare-fun m!14106 () Bool)

(assert (=> b!40745 m!14106))

(declare-fun m!14108 () Bool)

(assert (=> b!40745 m!14108))

(declare-fun m!14110 () Bool)

(assert (=> mapNonEmpty!645 m!14110))

(declare-fun m!14112 () Bool)

(assert (=> b!40750 m!14112))

(declare-fun m!14114 () Bool)

(assert (=> b!40750 m!14114))

(declare-fun m!14116 () Bool)

(assert (=> b!40759 m!14116))

(declare-fun m!14118 () Bool)

(assert (=> b!40759 m!14118))

(declare-fun m!14120 () Bool)

(assert (=> b!40753 m!14120))

(declare-fun m!14122 () Bool)

(assert (=> mapNonEmpty!643 m!14122))

(declare-fun m!14124 () Bool)

(assert (=> b!40737 m!14124))

(declare-fun m!14126 () Bool)

(assert (=> b!40755 m!14126))

(declare-fun m!14128 () Bool)

(assert (=> b!40762 m!14128))

(check-sat b_and!919 b_and!921 (not b!40753) (not b!40738) (not b!40732) (not b_next!895) (not b!40749) (not b!40742) (not b!40731) (not b!40728) b_and!925 (not b!40743) (not b!40745) (not b_next!885) (not b!40756) b_and!923 (not b_next!887) (not b!40733) (not b!40760) (not b!40729) (not b!40750) (not mapNonEmpty!645) (not b!40741) (not b!40759) (not b!40746) (not b!40726) (not b!40771) (not b_next!891) (not mapNonEmpty!644) (not b!40737) (not b!40725) (not b_next!893) (not start!2216) (not mapNonEmpty!643) (not b!40723) (not b!40751) b_and!927 (not b!40755) (not b!40754) (not b!40762) (not b!40748) b_and!929 (not b_next!889))
(check-sat b_and!919 b_and!921 b_and!925 (not b_next!885) (not b_next!891) (not b_next!893) b_and!927 (not b_next!895) b_and!923 (not b_next!887) b_and!929 (not b_next!889))
(get-model)

(declare-fun d!4077 () Bool)

(assert (=> d!4077 (= (array_inv!199 (_keys!476 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))) (bvsge (size!583 (_keys!476 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!40738 d!4077))

(declare-fun d!4079 () Bool)

(assert (=> d!4079 (= (array_inv!201 (_values!463 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))) (bvsge (size!586 (_values!463 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!40738 d!4079))

(declare-fun d!4081 () Bool)

(declare-fun lt!4234 () Bool)

(assert (=> d!4081 (= lt!4234 (forall!59 (list!141 (_1!448 (_1!451 lt!4219))) lambda!675))))

(declare-fun forall!61 (Conc!102 Int) Bool)

(assert (=> d!4081 (= lt!4234 (forall!61 (c!15816 (_1!448 (_1!451 lt!4219))) lambda!675))))

(assert (=> d!4081 (= (forall!60 (_1!448 (_1!451 lt!4219)) lambda!675) lt!4234)))

(declare-fun bs!5028 () Bool)

(assert (= bs!5028 d!4081))

(assert (=> bs!5028 m!14068))

(assert (=> bs!5028 m!14068))

(declare-fun m!14130 () Bool)

(assert (=> bs!5028 m!14130))

(declare-fun m!14132 () Bool)

(assert (=> bs!5028 m!14132))

(assert (=> b!40756 d!4081))

(declare-fun bs!5029 () Bool)

(declare-fun d!4083 () Bool)

(assert (= bs!5029 (and d!4083 b!40729)))

(declare-fun lambda!678 () Int)

(assert (=> bs!5029 (= lambda!678 lambda!675)))

(declare-fun b!40782 () Bool)

(declare-fun e!21146 () Bool)

(assert (=> b!40782 (= e!21146 true)))

(declare-fun b!40781 () Bool)

(declare-fun e!21145 () Bool)

(assert (=> b!40781 (= e!21145 e!21146)))

(declare-fun b!40780 () Bool)

(declare-fun e!21144 () Bool)

(assert (=> b!40780 (= e!21144 e!21145)))

(assert (=> d!4083 e!21144))

(assert (= b!40781 b!40782))

(assert (= b!40780 b!40781))

(assert (= (and d!4083 ((_ is Cons!572) lt!4223)) b!40780))

(assert (=> b!40782 (< (dynLambda!68 order!103 (toValue!628 (transformation!149 (h!5968 lt!4223)))) (dynLambda!69 order!105 lambda!678))))

(assert (=> b!40782 (< (dynLambda!70 order!107 (toChars!487 (transformation!149 (h!5968 lt!4223)))) (dynLambda!69 order!105 lambda!678))))

(assert (=> d!4083 true))

(declare-fun lt!4237 () Bool)

(assert (=> d!4083 (= lt!4237 (forall!59 lt!4230 lambda!678))))

(declare-fun e!21143 () Bool)

(assert (=> d!4083 (= lt!4237 e!21143)))

(declare-fun res!29310 () Bool)

(assert (=> d!4083 (=> res!29310 e!21143)))

(assert (=> d!4083 (= res!29310 (not ((_ is Cons!576) lt!4230)))))

(assert (=> d!4083 (not (isEmpty!114 lt!4223))))

(assert (=> d!4083 (= (rulesProduceEachTokenIndividuallyList!6 Lexer!42 lt!4223 lt!4230) lt!4237)))

(declare-fun b!40778 () Bool)

(declare-fun e!21142 () Bool)

(assert (=> b!40778 (= e!21143 e!21142)))

(declare-fun res!29311 () Bool)

(assert (=> b!40778 (=> (not res!29311) (not e!21142))))

(declare-fun rulesProduceIndividualToken!3 (LexerInterface!44 List!574 Token!66) Bool)

(assert (=> b!40778 (= res!29311 (rulesProduceIndividualToken!3 Lexer!42 lt!4223 (h!5972 lt!4230)))))

(declare-fun b!40779 () Bool)

(assert (=> b!40779 (= e!21142 (rulesProduceEachTokenIndividuallyList!6 Lexer!42 lt!4223 (t!15956 lt!4230)))))

(assert (= (and d!4083 (not res!29310)) b!40778))

(assert (= (and b!40778 res!29311) b!40779))

(declare-fun m!14134 () Bool)

(assert (=> d!4083 m!14134))

(assert (=> d!4083 m!14046))

(declare-fun m!14136 () Bool)

(assert (=> b!40778 m!14136))

(declare-fun m!14138 () Bool)

(assert (=> b!40779 m!14138))

(assert (=> b!40753 d!4083))

(declare-fun d!4085 () Bool)

(declare-fun isBalanced!15 (Conc!101) Bool)

(assert (=> d!4085 (= (inv!855 (totalInput!1512 cacheFurthestNullable!45)) (isBalanced!15 (c!15815 (totalInput!1512 cacheFurthestNullable!45))))))

(declare-fun bs!5030 () Bool)

(assert (= bs!5030 d!4085))

(declare-fun m!14140 () Bool)

(assert (=> bs!5030 m!14140))

(assert (=> b!40754 d!4085))

(declare-fun d!4087 () Bool)

(declare-fun list!143 (Conc!101) List!573)

(assert (=> d!4087 (= (list!142 (_2!448 lt!4226)) (list!143 (c!15815 (_2!448 lt!4226))))))

(declare-fun bs!5031 () Bool)

(assert (= bs!5031 d!4087))

(declare-fun m!14142 () Bool)

(assert (=> bs!5031 m!14142))

(assert (=> b!40737 d!4087))

(declare-fun d!4089 () Bool)

(declare-fun validCacheMapUp!10 (MutableMap!180) Bool)

(assert (=> d!4089 (= (valid!175 (_2!451 lt!4219)) (validCacheMapUp!10 (cache!665 (_2!451 lt!4219))))))

(declare-fun bs!5032 () Bool)

(assert (= bs!5032 d!4089))

(declare-fun m!14144 () Bool)

(assert (=> bs!5032 m!14144))

(assert (=> b!40755 d!4089))

(declare-fun d!4091 () Bool)

(declare-fun validCacheMapDown!12 (MutableMap!179) Bool)

(assert (=> d!4091 (= (valid!177 (_3!122 lt!4219)) (validCacheMapDown!12 (cache!664 (_3!122 lt!4219))))))

(declare-fun bs!5033 () Bool)

(assert (= bs!5033 d!4091))

(declare-fun m!14146 () Bool)

(assert (=> bs!5033 m!14146))

(assert (=> b!40760 d!4091))

(declare-fun d!4093 () Bool)

(assert (=> d!4093 (valid!177 (_3!122 lt!4219))))

(declare-fun Unit!258 () Unit!256)

(assert (=> d!4093 (= (lemmaInvariant!31 (_3!122 lt!4219)) Unit!258)))

(declare-fun bs!5034 () Bool)

(assert (= bs!5034 d!4093))

(assert (=> bs!5034 m!14082))

(assert (=> b!40723 d!4093))

(declare-fun d!4095 () Bool)

(declare-fun list!144 (Conc!102) List!578)

(assert (=> d!4095 (= (list!141 (_1!448 lt!4217)) (list!144 (c!15816 (_1!448 lt!4217))))))

(declare-fun bs!5035 () Bool)

(assert (= bs!5035 d!4095))

(declare-fun m!14148 () Bool)

(assert (=> bs!5035 m!14148))

(assert (=> b!40723 d!4095))

(declare-fun d!4097 () Bool)

(assert (=> d!4097 (valid!175 (_2!451 lt!4219))))

(declare-fun Unit!259 () Unit!256)

(assert (=> d!4097 (= (lemmaInvariant!32 (_2!451 lt!4219)) Unit!259)))

(declare-fun bs!5036 () Bool)

(assert (= bs!5036 d!4097))

(assert (=> bs!5036 m!14126))

(assert (=> b!40723 d!4097))

(declare-fun d!4099 () Bool)

(declare-fun e!21149 () Bool)

(assert (=> d!4099 e!21149))

(declare-fun res!29325 () Bool)

(assert (=> d!4099 (=> (not res!29325) (not e!21149))))

(declare-fun lt!4242 () tuple4!42)

(assert (=> d!4099 (= res!29325 (= (list!141 (_1!448 (_1!451 lt!4242))) (list!141 (_1!448 (lex!18 Lexer!42 lt!4223 input!525)))))))

(declare-fun lt!4243 () tuple4!42)

(assert (=> d!4099 (= lt!4242 (tuple4!43 (_1!451 lt!4243) (_2!451 lt!4243) (_3!122 lt!4243) (_4!21 lt!4243)))))

(declare-fun lexTailRecV3Mem!2 (LexerInterface!44 List!574 BalanceConc!202 BalanceConc!202 BalanceConc!202 BalanceConc!204 CacheUp!122 CacheDown!122 CacheFurthestNullable!70) tuple4!42)

(assert (=> d!4099 (= lt!4243 (lexTailRecV3Mem!2 Lexer!42 lt!4223 input!525 (BalanceConc!203 Empty!101) input!525 (BalanceConc!205 Empty!102) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!4099 (not (isEmpty!114 lt!4223))))

(assert (=> d!4099 (= (lexMem!14 Lexer!42 lt!4223 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!4242)))

(declare-fun b!40795 () Bool)

(declare-fun res!29324 () Bool)

(assert (=> b!40795 (=> (not res!29324) (not e!21149))))

(assert (=> b!40795 (= res!29324 (valid!177 (_3!122 lt!4242)))))

(declare-fun b!40796 () Bool)

(assert (=> b!40796 (= e!21149 (= (totalInput!1512 (_4!21 lt!4242)) input!525))))

(declare-fun b!40797 () Bool)

(declare-fun res!29323 () Bool)

(assert (=> b!40797 (=> (not res!29323) (not e!21149))))

(assert (=> b!40797 (= res!29323 (= (list!142 (_2!448 (_1!451 lt!4242))) (list!142 (_2!448 (lex!18 Lexer!42 lt!4223 input!525)))))))

(declare-fun b!40798 () Bool)

(declare-fun res!29326 () Bool)

(assert (=> b!40798 (=> (not res!29326) (not e!21149))))

(assert (=> b!40798 (= res!29326 (valid!175 (_2!451 lt!4242)))))

(declare-fun b!40799 () Bool)

(declare-fun res!29322 () Bool)

(assert (=> b!40799 (=> (not res!29322) (not e!21149))))

(assert (=> b!40799 (= res!29322 (valid!176 (_4!21 lt!4242)))))

(assert (= (and d!4099 res!29325) b!40797))

(assert (= (and b!40797 res!29323) b!40799))

(assert (= (and b!40799 res!29322) b!40798))

(assert (= (and b!40798 res!29326) b!40795))

(assert (= (and b!40795 res!29324) b!40796))

(declare-fun m!14150 () Bool)

(assert (=> b!40799 m!14150))

(declare-fun m!14152 () Bool)

(assert (=> b!40795 m!14152))

(declare-fun m!14154 () Bool)

(assert (=> b!40797 m!14154))

(assert (=> b!40797 m!14072))

(declare-fun m!14156 () Bool)

(assert (=> b!40797 m!14156))

(declare-fun m!14158 () Bool)

(assert (=> b!40798 m!14158))

(declare-fun m!14160 () Bool)

(assert (=> d!4099 m!14160))

(assert (=> d!4099 m!14046))

(declare-fun m!14162 () Bool)

(assert (=> d!4099 m!14162))

(assert (=> d!4099 m!14072))

(declare-fun m!14164 () Bool)

(assert (=> d!4099 m!14164))

(assert (=> b!40723 d!4099))

(declare-fun lt!4246 () tuple2!654)

(declare-fun e!21157 () Bool)

(declare-fun b!40810 () Bool)

(declare-datatypes ((tuple2!658 0))(
  ( (tuple2!659 (_1!452 List!578) (_2!452 List!573)) )
))
(declare-fun lexList!5 (LexerInterface!44 List!574 List!573) tuple2!658)

(assert (=> b!40810 (= e!21157 (= (list!142 (_2!448 lt!4246)) (_2!452 (lexList!5 Lexer!42 lt!4223 (list!142 input!525)))))))

(declare-fun b!40811 () Bool)

(declare-fun res!29333 () Bool)

(assert (=> b!40811 (=> (not res!29333) (not e!21157))))

(assert (=> b!40811 (= res!29333 (= (list!141 (_1!448 lt!4246)) (_1!452 (lexList!5 Lexer!42 lt!4223 (list!142 input!525)))))))

(declare-fun b!40812 () Bool)

(declare-fun e!21158 () Bool)

(assert (=> b!40812 (= e!21158 (= (_2!448 lt!4246) input!525))))

(declare-fun d!4101 () Bool)

(assert (=> d!4101 e!21157))

(declare-fun res!29334 () Bool)

(assert (=> d!4101 (=> (not res!29334) (not e!21157))))

(assert (=> d!4101 (= res!29334 e!21158)))

(declare-fun c!15819 () Bool)

(declare-fun size!587 (BalanceConc!204) Int)

(assert (=> d!4101 (= c!15819 (> (size!587 (_1!448 lt!4246)) 0))))

(declare-fun lexTailRecV2!2 (LexerInterface!44 List!574 BalanceConc!202 BalanceConc!202 BalanceConc!202 BalanceConc!204) tuple2!654)

(assert (=> d!4101 (= lt!4246 (lexTailRecV2!2 Lexer!42 lt!4223 input!525 (BalanceConc!203 Empty!101) input!525 (BalanceConc!205 Empty!102)))))

(assert (=> d!4101 (= (lex!18 Lexer!42 lt!4223 input!525) lt!4246)))

(declare-fun b!40813 () Bool)

(declare-fun e!21156 () Bool)

(declare-fun isEmpty!115 (BalanceConc!204) Bool)

(assert (=> b!40813 (= e!21156 (not (isEmpty!115 (_1!448 lt!4246))))))

(declare-fun b!40814 () Bool)

(assert (=> b!40814 (= e!21158 e!21156)))

(declare-fun res!29335 () Bool)

(declare-fun size!588 (BalanceConc!202) Int)

(assert (=> b!40814 (= res!29335 (< (size!588 (_2!448 lt!4246)) (size!588 input!525)))))

(assert (=> b!40814 (=> (not res!29335) (not e!21156))))

(assert (= (and d!4101 c!15819) b!40814))

(assert (= (and d!4101 (not c!15819)) b!40812))

(assert (= (and b!40814 res!29335) b!40813))

(assert (= (and d!4101 res!29334) b!40811))

(assert (= (and b!40811 res!29333) b!40810))

(declare-fun m!14166 () Bool)

(assert (=> b!40813 m!14166))

(declare-fun m!14168 () Bool)

(assert (=> b!40811 m!14168))

(assert (=> b!40811 m!14108))

(assert (=> b!40811 m!14108))

(declare-fun m!14170 () Bool)

(assert (=> b!40811 m!14170))

(declare-fun m!14172 () Bool)

(assert (=> b!40814 m!14172))

(declare-fun m!14174 () Bool)

(assert (=> b!40814 m!14174))

(declare-fun m!14176 () Bool)

(assert (=> b!40810 m!14176))

(assert (=> b!40810 m!14108))

(assert (=> b!40810 m!14108))

(assert (=> b!40810 m!14170))

(declare-fun m!14178 () Bool)

(assert (=> d!4101 m!14178))

(declare-fun m!14180 () Bool)

(assert (=> d!4101 m!14180))

(assert (=> b!40723 d!4101))

(declare-fun d!4103 () Bool)

(assert (=> d!4103 (= (list!141 (_1!448 (_1!451 lt!4219))) (list!144 (c!15816 (_1!448 (_1!451 lt!4219)))))))

(declare-fun bs!5037 () Bool)

(assert (= bs!5037 d!4103))

(declare-fun m!14182 () Bool)

(assert (=> bs!5037 m!14182))

(assert (=> b!40723 d!4103))

(declare-fun d!4105 () Bool)

(declare-fun c!15822 () Bool)

(assert (=> d!4105 (= c!15822 ((_ is Node!101) (c!15815 input!525)))))

(declare-fun e!21163 () Bool)

(assert (=> d!4105 (= (inv!858 (c!15815 input!525)) e!21163)))

(declare-fun b!40821 () Bool)

(declare-fun inv!859 (Conc!101) Bool)

(assert (=> b!40821 (= e!21163 (inv!859 (c!15815 input!525)))))

(declare-fun b!40822 () Bool)

(declare-fun e!21164 () Bool)

(assert (=> b!40822 (= e!21163 e!21164)))

(declare-fun res!29338 () Bool)

(assert (=> b!40822 (= res!29338 (not ((_ is Leaf!286) (c!15815 input!525))))))

(assert (=> b!40822 (=> res!29338 e!21164)))

(declare-fun b!40823 () Bool)

(declare-fun inv!860 (Conc!101) Bool)

(assert (=> b!40823 (= e!21164 (inv!860 (c!15815 input!525)))))

(assert (= (and d!4105 c!15822) b!40821))

(assert (= (and d!4105 (not c!15822)) b!40822))

(assert (= (and b!40822 (not res!29338)) b!40823))

(declare-fun m!14184 () Bool)

(assert (=> b!40821 m!14184))

(declare-fun m!14186 () Bool)

(assert (=> b!40823 m!14186))

(assert (=> b!40743 d!4105))

(declare-fun d!4107 () Bool)

(declare-fun validCacheMapFurthestNullable!4 (MutableMap!181 BalanceConc!202) Bool)

(assert (=> d!4107 (= (valid!176 cacheFurthestNullable!45) (validCacheMapFurthestNullable!4 (cache!666 cacheFurthestNullable!45) (totalInput!1512 cacheFurthestNullable!45)))))

(declare-fun bs!5038 () Bool)

(assert (= bs!5038 d!4107))

(declare-fun m!14188 () Bool)

(assert (=> bs!5038 m!14188))

(assert (=> b!40762 d!4107))

(declare-fun d!4109 () Bool)

(assert (=> d!4109 (= (list!141 (_1!448 lt!4226)) (list!144 (c!15816 (_1!448 lt!4226))))))

(declare-fun bs!5039 () Bool)

(assert (= bs!5039 d!4109))

(declare-fun m!14190 () Bool)

(assert (=> bs!5039 m!14190))

(assert (=> b!40759 d!4109))

(declare-fun lt!4247 () tuple2!654)

(declare-fun e!21166 () Bool)

(declare-fun b!40824 () Bool)

(assert (=> b!40824 (= e!21166 (= (list!142 (_2!448 lt!4247)) (_2!452 (lexList!5 Lexer!42 lt!4223 (list!142 lt!4222)))))))

(declare-fun b!40825 () Bool)

(declare-fun res!29339 () Bool)

(assert (=> b!40825 (=> (not res!29339) (not e!21166))))

(assert (=> b!40825 (= res!29339 (= (list!141 (_1!448 lt!4247)) (_1!452 (lexList!5 Lexer!42 lt!4223 (list!142 lt!4222)))))))

(declare-fun b!40826 () Bool)

(declare-fun e!21167 () Bool)

(assert (=> b!40826 (= e!21167 (= (_2!448 lt!4247) lt!4222))))

(declare-fun d!4111 () Bool)

(assert (=> d!4111 e!21166))

(declare-fun res!29340 () Bool)

(assert (=> d!4111 (=> (not res!29340) (not e!21166))))

(assert (=> d!4111 (= res!29340 e!21167)))

(declare-fun c!15823 () Bool)

(assert (=> d!4111 (= c!15823 (> (size!587 (_1!448 lt!4247)) 0))))

(assert (=> d!4111 (= lt!4247 (lexTailRecV2!2 Lexer!42 lt!4223 lt!4222 (BalanceConc!203 Empty!101) lt!4222 (BalanceConc!205 Empty!102)))))

(assert (=> d!4111 (= (lex!18 Lexer!42 lt!4223 lt!4222) lt!4247)))

(declare-fun b!40827 () Bool)

(declare-fun e!21165 () Bool)

(assert (=> b!40827 (= e!21165 (not (isEmpty!115 (_1!448 lt!4247))))))

(declare-fun b!40828 () Bool)

(assert (=> b!40828 (= e!21167 e!21165)))

(declare-fun res!29341 () Bool)

(assert (=> b!40828 (= res!29341 (< (size!588 (_2!448 lt!4247)) (size!588 lt!4222)))))

(assert (=> b!40828 (=> (not res!29341) (not e!21165))))

(assert (= (and d!4111 c!15823) b!40828))

(assert (= (and d!4111 (not c!15823)) b!40826))

(assert (= (and b!40828 res!29341) b!40827))

(assert (= (and d!4111 res!29340) b!40825))

(assert (= (and b!40825 res!29339) b!40824))

(declare-fun m!14192 () Bool)

(assert (=> b!40827 m!14192))

(declare-fun m!14194 () Bool)

(assert (=> b!40825 m!14194))

(assert (=> b!40825 m!14104))

(assert (=> b!40825 m!14104))

(declare-fun m!14196 () Bool)

(assert (=> b!40825 m!14196))

(declare-fun m!14198 () Bool)

(assert (=> b!40828 m!14198))

(declare-fun m!14200 () Bool)

(assert (=> b!40828 m!14200))

(declare-fun m!14202 () Bool)

(assert (=> b!40824 m!14202))

(assert (=> b!40824 m!14104))

(assert (=> b!40824 m!14104))

(assert (=> b!40824 m!14196))

(declare-fun m!14204 () Bool)

(assert (=> d!4111 m!14204))

(declare-fun m!14206 () Bool)

(assert (=> d!4111 m!14206))

(assert (=> b!40759 d!4111))

(declare-fun d!4113 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!52) Rule!98)

(declare-fun integerLiteralRule!0 (JsonLexer!52) Rule!98)

(declare-fun floatLiteralRule!0 (JsonLexer!52) Rule!98)

(declare-fun trueRule!0 (JsonLexer!52) Rule!98)

(declare-fun falseRule!0 (JsonLexer!52) Rule!98)

(declare-fun nullRule!0 (JsonLexer!52) Rule!98)

(declare-fun jsonstringRule!0 (JsonLexer!52) Rule!98)

(declare-fun lBraceRule!0 (JsonLexer!52) Rule!98)

(declare-fun rBraceRule!0 (JsonLexer!52) Rule!98)

(declare-fun lBracketRule!0 (JsonLexer!52) Rule!98)

(declare-fun rBracketRule!0 (JsonLexer!52) Rule!98)

(declare-fun colonRule!0 (JsonLexer!52) Rule!98)

(declare-fun commaRule!0 (JsonLexer!52) Rule!98)

(declare-fun eofRule!0 (JsonLexer!52) Rule!98)

(assert (=> d!4113 (= (rules!109 JsonLexer!53) (Cons!572 (whitespaceRule!0 JsonLexer!53) (Cons!572 (integerLiteralRule!0 JsonLexer!53) (Cons!572 (floatLiteralRule!0 JsonLexer!53) (Cons!572 (trueRule!0 JsonLexer!53) (Cons!572 (falseRule!0 JsonLexer!53) (Cons!572 (nullRule!0 JsonLexer!53) (Cons!572 (jsonstringRule!0 JsonLexer!53) (Cons!572 (lBraceRule!0 JsonLexer!53) (Cons!572 (rBraceRule!0 JsonLexer!53) (Cons!572 (lBracketRule!0 JsonLexer!53) (Cons!572 (rBracketRule!0 JsonLexer!53) (Cons!572 (colonRule!0 JsonLexer!53) (Cons!572 (commaRule!0 JsonLexer!53) (Cons!572 (eofRule!0 JsonLexer!53) Nil!572)))))))))))))))))

(declare-fun bs!5040 () Bool)

(assert (= bs!5040 d!4113))

(declare-fun m!14208 () Bool)

(assert (=> bs!5040 m!14208))

(declare-fun m!14210 () Bool)

(assert (=> bs!5040 m!14210))

(declare-fun m!14212 () Bool)

(assert (=> bs!5040 m!14212))

(declare-fun m!14214 () Bool)

(assert (=> bs!5040 m!14214))

(declare-fun m!14216 () Bool)

(assert (=> bs!5040 m!14216))

(declare-fun m!14218 () Bool)

(assert (=> bs!5040 m!14218))

(declare-fun m!14220 () Bool)

(assert (=> bs!5040 m!14220))

(declare-fun m!14222 () Bool)

(assert (=> bs!5040 m!14222))

(declare-fun m!14224 () Bool)

(assert (=> bs!5040 m!14224))

(declare-fun m!14226 () Bool)

(assert (=> bs!5040 m!14226))

(declare-fun m!14228 () Bool)

(assert (=> bs!5040 m!14228))

(declare-fun m!14230 () Bool)

(assert (=> bs!5040 m!14230))

(declare-fun m!14232 () Bool)

(assert (=> bs!5040 m!14232))

(declare-fun m!14234 () Bool)

(assert (=> bs!5040 m!14234))

(assert (=> start!2216 d!4113))

(declare-fun d!4115 () Bool)

(declare-fun res!29344 () Bool)

(declare-fun e!21170 () Bool)

(assert (=> d!4115 (=> (not res!29344) (not e!21170))))

(assert (=> d!4115 (= res!29344 ((_ is HashMap!179) (cache!664 cacheDown!333)))))

(assert (=> d!4115 (= (inv!854 cacheDown!333) e!21170)))

(declare-fun b!40831 () Bool)

(assert (=> b!40831 (= e!21170 (validCacheMapDown!12 (cache!664 cacheDown!333)))))

(assert (= (and d!4115 res!29344) b!40831))

(declare-fun m!14236 () Bool)

(assert (=> b!40831 m!14236))

(assert (=> start!2216 d!4115))

(declare-fun d!4117 () Bool)

(assert (=> d!4117 (= (isEmpty!114 lt!4223) ((_ is Nil!572) lt!4223))))

(assert (=> start!2216 d!4117))

(declare-fun d!4119 () Bool)

(assert (=> d!4119 (= (inv!855 input!525) (isBalanced!15 (c!15815 input!525)))))

(declare-fun bs!5041 () Bool)

(assert (= bs!5041 d!4119))

(declare-fun m!14238 () Bool)

(assert (=> bs!5041 m!14238))

(assert (=> start!2216 d!4119))

(declare-fun d!4121 () Bool)

(declare-fun res!29347 () Bool)

(declare-fun e!21173 () Bool)

(assert (=> d!4121 (=> (not res!29347) (not e!21173))))

(assert (=> d!4121 (= res!29347 ((_ is HashMap!181) (cache!666 cacheFurthestNullable!45)))))

(assert (=> d!4121 (= (inv!856 cacheFurthestNullable!45) e!21173)))

(declare-fun b!40834 () Bool)

(assert (=> b!40834 (= e!21173 (validCacheMapFurthestNullable!4 (cache!666 cacheFurthestNullable!45) (totalInput!1512 cacheFurthestNullable!45)))))

(assert (= (and d!4121 res!29347) b!40834))

(assert (=> b!40834 m!14188))

(assert (=> start!2216 d!4121))

(declare-fun d!4123 () Bool)

(declare-fun res!29350 () Bool)

(declare-fun e!21176 () Bool)

(assert (=> d!4123 (=> (not res!29350) (not e!21176))))

(assert (=> d!4123 (= res!29350 ((_ is HashMap!180) (cache!665 cacheUp!320)))))

(assert (=> d!4123 (= (inv!857 cacheUp!320) e!21176)))

(declare-fun b!40837 () Bool)

(assert (=> b!40837 (= e!21176 (validCacheMapUp!10 (cache!665 cacheUp!320)))))

(assert (= (and d!4123 res!29350) b!40837))

(declare-fun m!14240 () Bool)

(assert (=> b!40837 m!14240))

(assert (=> start!2216 d!4123))

(declare-fun d!4125 () Bool)

(assert (=> d!4125 (= (valid!177 cacheDown!333) (validCacheMapDown!12 (cache!664 cacheDown!333)))))

(declare-fun bs!5042 () Bool)

(assert (= bs!5042 d!4125))

(assert (=> bs!5042 m!14236))

(assert (=> b!40728 d!4125))

(declare-fun d!4127 () Bool)

(declare-fun res!29355 () Bool)

(declare-fun e!21181 () Bool)

(assert (=> d!4127 (=> res!29355 e!21181)))

(assert (=> d!4127 (= res!29355 ((_ is Nil!576) lt!4230))))

(assert (=> d!4127 (= (forall!59 lt!4230 lambda!675) e!21181)))

(declare-fun b!40842 () Bool)

(declare-fun e!21182 () Bool)

(assert (=> b!40842 (= e!21181 e!21182)))

(declare-fun res!29356 () Bool)

(assert (=> b!40842 (=> (not res!29356) (not e!21182))))

(declare-fun dynLambda!71 (Int Token!66) Bool)

(assert (=> b!40842 (= res!29356 (dynLambda!71 lambda!675 (h!5972 lt!4230)))))

(declare-fun b!40843 () Bool)

(assert (=> b!40843 (= e!21182 (forall!59 (t!15956 lt!4230) lambda!675))))

(assert (= (and d!4127 (not res!29355)) b!40842))

(assert (= (and b!40842 res!29356) b!40843))

(declare-fun b_lambda!233 () Bool)

(assert (=> (not b_lambda!233) (not b!40842)))

(declare-fun m!14242 () Bool)

(assert (=> b!40842 m!14242))

(declare-fun m!14244 () Bool)

(assert (=> b!40843 m!14244))

(assert (=> b!40729 d!4127))

(declare-fun b!40854 () Bool)

(declare-fun res!29367 () Bool)

(declare-fun e!21193 () Bool)

(assert (=> b!40854 (=> res!29367 e!21193)))

(declare-fun rulesInvariant!36 (LexerInterface!44 List!574) Bool)

(assert (=> b!40854 (= res!29367 (not (rulesInvariant!36 Lexer!42 lt!4223)))))

(declare-fun b!40855 () Bool)

(declare-fun e!21194 () Bool)

(assert (=> b!40855 (= e!21194 e!21193)))

(declare-fun res!29370 () Bool)

(assert (=> b!40855 (=> res!29370 e!21193)))

(assert (=> b!40855 (= res!29370 (isEmpty!114 lt!4223))))

(declare-fun b!40856 () Bool)

(declare-fun e!21191 () Bool)

(assert (=> b!40856 (= e!21191 (rulesInvariant!35 Lexer!42 lt!4223))))

(declare-fun b!40857 () Bool)

(declare-fun e!21192 () Bool)

(declare-fun lt!4262 () tuple2!654)

(assert (=> b!40857 (= e!21192 (rulesProduceEachTokenIndividuallyList!6 Lexer!42 lt!4223 (list!141 (_1!448 lt!4262))))))

(declare-fun lt!4259 () Unit!256)

(declare-fun lt!4260 () Unit!256)

(assert (=> b!40857 (= lt!4259 lt!4260)))

(declare-fun lt!4258 () List!578)

(declare-fun seqFromList!18 (List!578) BalanceConc!204)

(assert (=> b!40857 (rulesProduceEachTokenIndividually!1 Lexer!42 lt!4223 (seqFromList!18 lt!4258))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!1 (LexerInterface!44 List!574 List!573 List!578) Unit!256)

(assert (=> b!40857 (= lt!4260 (lemmaLexThenRulesProducesEachTokenIndividually!1 Lexer!42 lt!4223 lt!4227 lt!4258))))

(assert (=> b!40857 (= lt!4258 (list!141 (_1!448 lt!4262)))))

(assert (=> b!40857 (= lt!4262 (lex!18 Lexer!42 lt!4223 (seqFromList!17 lt!4227)))))

(declare-fun b!40858 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!7 (LexerInterface!44 List!574 List!578) Bool)

(declare-fun lex!19 (LexerInterface!44 List!574 BalanceConc!202) tuple2!654)

(assert (=> b!40858 (= e!21193 (rulesProduceEachTokenIndividuallyList!7 Lexer!42 lt!4223 (list!141 (_1!448 (lex!19 Lexer!42 lt!4223 (seqFromList!17 lt!4227))))))))

(declare-fun d!4129 () Bool)

(assert (=> d!4129 e!21194))

(declare-fun res!29369 () Bool)

(assert (=> d!4129 (=> (not res!29369) (not e!21194))))

(declare-fun lt!4261 () Bool)

(assert (=> d!4129 (= res!29369 lt!4261)))

(assert (=> d!4129 (= lt!4261 e!21192)))

(declare-fun res!29371 () Bool)

(assert (=> d!4129 (=> res!29371 e!21192)))

(assert (=> d!4129 (= res!29371 (not e!21191))))

(declare-fun res!29368 () Bool)

(assert (=> d!4129 (=> (not res!29368) (not e!21191))))

(assert (=> d!4129 (= res!29368 (not (isEmpty!114 lt!4223)))))

(assert (=> d!4129 (= (lexThenRulesProduceEachTokenIndividually!10 Lexer!42 lt!4223 lt!4227) lt!4261)))

(assert (= (and d!4129 res!29368) b!40856))

(assert (= (and d!4129 (not res!29371)) b!40857))

(assert (= (and d!4129 res!29369) b!40855))

(assert (= (and b!40855 (not res!29370)) b!40854))

(assert (= (and b!40854 (not res!29367)) b!40858))

(assert (=> d!4129 m!14046))

(assert (=> b!40855 m!14046))

(assert (=> b!40857 m!14106))

(declare-fun m!14246 () Bool)

(assert (=> b!40857 m!14246))

(declare-fun m!14248 () Bool)

(assert (=> b!40857 m!14248))

(declare-fun m!14250 () Bool)

(assert (=> b!40857 m!14250))

(declare-fun m!14252 () Bool)

(assert (=> b!40857 m!14252))

(assert (=> b!40857 m!14106))

(declare-fun m!14254 () Bool)

(assert (=> b!40857 m!14254))

(assert (=> b!40857 m!14246))

(assert (=> b!40857 m!14250))

(declare-fun m!14256 () Bool)

(assert (=> b!40857 m!14256))

(assert (=> b!40858 m!14106))

(assert (=> b!40858 m!14106))

(declare-fun m!14258 () Bool)

(assert (=> b!40858 m!14258))

(declare-fun m!14260 () Bool)

(assert (=> b!40858 m!14260))

(assert (=> b!40858 m!14260))

(declare-fun m!14262 () Bool)

(assert (=> b!40858 m!14262))

(assert (=> b!40856 m!14098))

(declare-fun m!14264 () Bool)

(assert (=> b!40854 m!14264))

(assert (=> b!40748 d!4129))

(declare-fun d!4131 () Bool)

(assert (=> d!4131 (= (valid!175 cacheUp!320) (validCacheMapUp!10 (cache!665 cacheUp!320)))))

(declare-fun bs!5043 () Bool)

(assert (= bs!5043 d!4131))

(assert (=> bs!5043 m!14240))

(assert (=> b!40725 d!4131))

(declare-fun d!4133 () Bool)

(assert (=> d!4133 (= (list!142 lt!4222) (list!143 (c!15815 lt!4222)))))

(declare-fun bs!5044 () Bool)

(assert (= bs!5044 d!4133))

(declare-fun m!14266 () Bool)

(assert (=> bs!5044 m!14266))

(assert (=> b!40745 d!4133))

(declare-fun d!4135 () Bool)

(declare-fun fromListB!2 (List!573) BalanceConc!202)

(assert (=> d!4135 (= (seqFromList!17 lt!4227) (fromListB!2 lt!4227))))

(declare-fun bs!5045 () Bool)

(assert (= bs!5045 d!4135))

(declare-fun m!14268 () Bool)

(assert (=> bs!5045 m!14268))

(assert (=> b!40745 d!4135))

(declare-fun d!4137 () Bool)

(assert (=> d!4137 (= (list!142 input!525) (list!143 (c!15815 input!525)))))

(declare-fun bs!5046 () Bool)

(assert (= bs!5046 d!4137))

(declare-fun m!14270 () Bool)

(assert (=> bs!5046 m!14270))

(assert (=> b!40745 d!4137))

(declare-fun d!4139 () Bool)

(assert (=> d!4139 (= (valid!176 (_4!21 lt!4219)) (validCacheMapFurthestNullable!4 (cache!666 (_4!21 lt!4219)) (totalInput!1512 (_4!21 lt!4219))))))

(declare-fun bs!5047 () Bool)

(assert (= bs!5047 d!4139))

(declare-fun m!14272 () Bool)

(assert (=> bs!5047 m!14272))

(assert (=> b!40726 d!4139))

(declare-fun d!4141 () Bool)

(declare-fun res!29374 () Bool)

(declare-fun e!21197 () Bool)

(assert (=> d!4141 (=> (not res!29374) (not e!21197))))

(declare-fun rulesValid!8 (LexerInterface!44 List!574) Bool)

(assert (=> d!4141 (= res!29374 (rulesValid!8 Lexer!42 lt!4223))))

(assert (=> d!4141 (= (rulesInvariant!35 Lexer!42 lt!4223) e!21197)))

(declare-fun b!40861 () Bool)

(declare-datatypes ((List!580 0))(
  ( (Nil!578) (Cons!578 (h!5974 String!987) (t!15964 List!580)) )
))
(declare-fun noDuplicateTag!8 (LexerInterface!44 List!574 List!580) Bool)

(assert (=> b!40861 (= e!21197 (noDuplicateTag!8 Lexer!42 lt!4223 Nil!578))))

(assert (= (and d!4141 res!29374) b!40861))

(declare-fun m!14274 () Bool)

(assert (=> d!4141 m!14274))

(declare-fun m!14276 () Bool)

(assert (=> b!40861 m!14276))

(assert (=> b!40746 d!4141))

(declare-fun d!4143 () Bool)

(declare-fun c!15824 () Bool)

(assert (=> d!4143 (= c!15824 ((_ is Node!101) (c!15815 (totalInput!1512 cacheFurthestNullable!45))))))

(declare-fun e!21198 () Bool)

(assert (=> d!4143 (= (inv!858 (c!15815 (totalInput!1512 cacheFurthestNullable!45))) e!21198)))

(declare-fun b!40862 () Bool)

(assert (=> b!40862 (= e!21198 (inv!859 (c!15815 (totalInput!1512 cacheFurthestNullable!45))))))

(declare-fun b!40863 () Bool)

(declare-fun e!21199 () Bool)

(assert (=> b!40863 (= e!21198 e!21199)))

(declare-fun res!29375 () Bool)

(assert (=> b!40863 (= res!29375 (not ((_ is Leaf!286) (c!15815 (totalInput!1512 cacheFurthestNullable!45)))))))

(assert (=> b!40863 (=> res!29375 e!21199)))

(declare-fun b!40864 () Bool)

(assert (=> b!40864 (= e!21199 (inv!860 (c!15815 (totalInput!1512 cacheFurthestNullable!45))))))

(assert (= (and d!4143 c!15824) b!40862))

(assert (= (and d!4143 (not c!15824)) b!40863))

(assert (= (and b!40863 (not res!29375)) b!40864))

(declare-fun m!14278 () Bool)

(assert (=> b!40862 m!14278))

(declare-fun m!14280 () Bool)

(assert (=> b!40864 m!14280))

(assert (=> b!40751 d!4143))

(declare-fun d!4145 () Bool)

(assert (=> d!4145 (= (list!142 (_2!448 lt!4217)) (list!143 (c!15815 (_2!448 lt!4217))))))

(declare-fun bs!5048 () Bool)

(assert (= bs!5048 d!4145))

(declare-fun m!14282 () Bool)

(assert (=> bs!5048 m!14282))

(assert (=> b!40749 d!4145))

(declare-fun d!4147 () Bool)

(assert (=> d!4147 (= (list!142 (_2!448 (_1!451 lt!4219))) (list!143 (c!15815 (_2!448 (_1!451 lt!4219)))))))

(declare-fun bs!5049 () Bool)

(assert (= bs!5049 d!4147))

(declare-fun m!14284 () Bool)

(assert (=> bs!5049 m!14284))

(assert (=> b!40749 d!4147))

(declare-fun bs!5050 () Bool)

(declare-fun d!4149 () Bool)

(assert (= bs!5050 (and d!4149 b!40729)))

(declare-fun lambda!683 () Int)

(assert (=> bs!5050 (= lambda!683 lambda!675)))

(declare-fun bs!5051 () Bool)

(assert (= bs!5051 (and d!4149 d!4083)))

(assert (=> bs!5051 (= lambda!683 lambda!678)))

(declare-fun b!40870 () Bool)

(declare-fun e!21205 () Bool)

(assert (=> b!40870 (= e!21205 true)))

(declare-fun b!40869 () Bool)

(declare-fun e!21204 () Bool)

(assert (=> b!40869 (= e!21204 e!21205)))

(declare-fun b!40868 () Bool)

(declare-fun e!21203 () Bool)

(assert (=> b!40868 (= e!21203 e!21204)))

(assert (=> d!4149 e!21203))

(assert (= b!40869 b!40870))

(assert (= b!40868 b!40869))

(assert (= (and d!4149 ((_ is Cons!572) lt!4223)) b!40868))

(assert (=> b!40870 (< (dynLambda!68 order!103 (toValue!628 (transformation!149 (h!5968 lt!4223)))) (dynLambda!69 order!105 lambda!683))))

(assert (=> b!40870 (< (dynLambda!70 order!107 (toChars!487 (transformation!149 (h!5968 lt!4223)))) (dynLambda!69 order!105 lambda!683))))

(assert (=> d!4149 true))

(declare-fun e!21202 () Bool)

(assert (=> d!4149 e!21202))

(declare-fun res!29378 () Bool)

(assert (=> d!4149 (=> (not res!29378) (not e!21202))))

(declare-fun lt!4265 () Bool)

(assert (=> d!4149 (= res!29378 (= lt!4265 (forall!59 (list!141 (_1!448 (_1!451 lt!4219))) lambda!683)))))

(assert (=> d!4149 (= lt!4265 (forall!60 (_1!448 (_1!451 lt!4219)) lambda!683))))

(assert (=> d!4149 (not (isEmpty!114 lt!4223))))

(assert (=> d!4149 (= (rulesProduceEachTokenIndividually!1 Lexer!42 lt!4223 (_1!448 (_1!451 lt!4219))) lt!4265)))

(declare-fun b!40867 () Bool)

(assert (=> b!40867 (= e!21202 (= lt!4265 (rulesProduceEachTokenIndividuallyList!6 Lexer!42 lt!4223 (list!141 (_1!448 (_1!451 lt!4219))))))))

(assert (= (and d!4149 res!29378) b!40867))

(assert (=> d!4149 m!14068))

(assert (=> d!4149 m!14068))

(declare-fun m!14286 () Bool)

(assert (=> d!4149 m!14286))

(declare-fun m!14288 () Bool)

(assert (=> d!4149 m!14288))

(assert (=> d!4149 m!14046))

(assert (=> b!40867 m!14068))

(assert (=> b!40867 m!14068))

(declare-fun m!14290 () Bool)

(assert (=> b!40867 m!14290))

(assert (=> b!40731 d!4149))

(declare-fun d!4151 () Bool)

(assert (=> d!4151 (= (array_inv!199 (_keys!475 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320))))))) (bvsge (size!583 (_keys!475 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!40750 d!4151))

(declare-fun d!4153 () Bool)

(assert (=> d!4153 (= (array_inv!202 (_values!462 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320))))))) (bvsge (size!584 (_values!462 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!40750 d!4153))

(declare-fun d!4155 () Bool)

(assert (=> d!4155 (= (array_inv!199 (_keys!474 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333))))))) (bvsge (size!583 (_keys!474 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!40732 d!4155))

(declare-fun d!4157 () Bool)

(assert (=> d!4157 (= (array_inv!200 (_values!461 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333))))))) (bvsge (size!582 (_values!461 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!40732 d!4157))

(declare-fun b!40875 () Bool)

(declare-fun e!21210 () Bool)

(declare-fun setRes!622 () Bool)

(declare-fun tp!28216 () Bool)

(assert (=> b!40875 (= e!21210 (and setRes!622 tp!28216))))

(declare-fun condSetEmpty!622 () Bool)

(assert (=> b!40875 (= condSetEmpty!622 (= (_1!449 (_1!450 (h!5973 (zeroValue!441 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!622 () Bool)

(assert (=> setIsEmpty!622 setRes!622))

(declare-fun setNonEmpty!622 () Bool)

(declare-fun tp!28217 () Bool)

(declare-fun setElem!622 () Context!142)

(declare-fun inv!861 (Context!142) Bool)

(assert (=> setNonEmpty!622 (= setRes!622 (and tp!28217 (inv!861 setElem!622)))))

(declare-fun setRest!622 () (InoxSet Context!142))

(assert (=> setNonEmpty!622 (= (_1!449 (_1!450 (h!5973 (zeroValue!441 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!622 true) setRest!622))))

(assert (=> b!40738 (= tp!28190 e!21210)))

(assert (= (and b!40875 condSetEmpty!622) setIsEmpty!622))

(assert (= (and b!40875 (not condSetEmpty!622)) setNonEmpty!622))

(assert (= (and b!40738 ((_ is Cons!577) (zeroValue!441 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45)))))))) b!40875))

(declare-fun m!14292 () Bool)

(assert (=> setNonEmpty!622 m!14292))

(declare-fun b!40876 () Bool)

(declare-fun e!21212 () Bool)

(declare-fun setRes!623 () Bool)

(declare-fun tp!28218 () Bool)

(assert (=> b!40876 (= e!21212 (and setRes!623 tp!28218))))

(declare-fun condSetEmpty!623 () Bool)

(assert (=> b!40876 (= condSetEmpty!623 (= (_1!449 (_1!450 (h!5973 (minValue!441 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!623 () Bool)

(assert (=> setIsEmpty!623 setRes!623))

(declare-fun setNonEmpty!623 () Bool)

(declare-fun tp!28219 () Bool)

(declare-fun setElem!623 () Context!142)

(assert (=> setNonEmpty!623 (= setRes!623 (and tp!28219 (inv!861 setElem!623)))))

(declare-fun setRest!623 () (InoxSet Context!142))

(assert (=> setNonEmpty!623 (= (_1!449 (_1!450 (h!5973 (minValue!441 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!623 true) setRest!623))))

(assert (=> b!40738 (= tp!28194 e!21212)))

(assert (= (and b!40876 condSetEmpty!623) setIsEmpty!623))

(assert (= (and b!40876 (not condSetEmpty!623)) setNonEmpty!623))

(assert (= (and b!40738 ((_ is Cons!577) (minValue!441 (v!12343 (underlying!565 (v!12344 (underlying!566 (cache!666 cacheFurthestNullable!45)))))))) b!40876))

(declare-fun m!14294 () Bool)

(assert (=> setNonEmpty!623 m!14294))

(declare-fun mapIsEmpty!648 () Bool)

(declare-fun mapRes!648 () Bool)

(assert (=> mapIsEmpty!648 mapRes!648))

(declare-fun tp!28234 () Bool)

(declare-fun e!21227 () Bool)

(declare-fun mapValue!648 () List!577)

(declare-fun b!40883 () Bool)

(declare-fun setRes!629 () Bool)

(assert (=> b!40883 (= e!21227 (and (inv!861 (_1!446 (_1!447 (h!5971 mapValue!648)))) setRes!629 tp!28234))))

(declare-fun condSetEmpty!629 () Bool)

(assert (=> b!40883 (= condSetEmpty!629 (= (_2!447 (h!5971 mapValue!648)) ((as const (Array Context!142 Bool)) false)))))

(declare-fun e!21231 () Bool)

(declare-fun mapDefault!648 () List!577)

(declare-fun b!40884 () Bool)

(declare-fun tp!28233 () Bool)

(declare-fun setRes!628 () Bool)

(assert (=> b!40884 (= e!21231 (and (inv!861 (_1!446 (_1!447 (h!5971 mapDefault!648)))) setRes!628 tp!28233))))

(declare-fun condSetEmpty!628 () Bool)

(assert (=> b!40884 (= condSetEmpty!628 (= (_2!447 (h!5971 mapDefault!648)) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setNonEmpty!628 () Bool)

(declare-fun tp!28231 () Bool)

(declare-fun setElem!629 () Context!142)

(assert (=> setNonEmpty!628 (= setRes!629 (and tp!28231 (inv!861 setElem!629)))))

(declare-fun setRest!629 () (InoxSet Context!142))

(assert (=> setNonEmpty!628 (= (_2!447 (h!5971 mapValue!648)) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!629 true) setRest!629))))

(declare-fun setIsEmpty!628 () Bool)

(assert (=> setIsEmpty!628 setRes!628))

(declare-fun condMapEmpty!648 () Bool)

(assert (=> mapNonEmpty!644 (= condMapEmpty!648 (= mapRest!644 ((as const (Array (_ BitVec 32) List!577)) mapDefault!648)))))

(assert (=> mapNonEmpty!644 (= tp!28207 (and e!21231 mapRes!648))))

(declare-fun setNonEmpty!629 () Bool)

(declare-fun tp!28230 () Bool)

(declare-fun setElem!628 () Context!142)

(assert (=> setNonEmpty!629 (= setRes!628 (and tp!28230 (inv!861 setElem!628)))))

(declare-fun setRest!628 () (InoxSet Context!142))

(assert (=> setNonEmpty!629 (= (_2!447 (h!5971 mapDefault!648)) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!628 true) setRest!628))))

(declare-fun setIsEmpty!629 () Bool)

(assert (=> setIsEmpty!629 setRes!629))

(declare-fun mapNonEmpty!648 () Bool)

(declare-fun tp!28232 () Bool)

(assert (=> mapNonEmpty!648 (= mapRes!648 (and tp!28232 e!21227))))

(declare-fun mapRest!648 () (Array (_ BitVec 32) List!577))

(declare-fun mapKey!648 () (_ BitVec 32))

(assert (=> mapNonEmpty!648 (= mapRest!644 (store mapRest!648 mapKey!648 mapValue!648))))

(assert (= (and mapNonEmpty!644 condMapEmpty!648) mapIsEmpty!648))

(assert (= (and mapNonEmpty!644 (not condMapEmpty!648)) mapNonEmpty!648))

(assert (= (and b!40883 condSetEmpty!629) setIsEmpty!629))

(assert (= (and b!40883 (not condSetEmpty!629)) setNonEmpty!628))

(assert (= (and mapNonEmpty!648 ((_ is Cons!575) mapValue!648)) b!40883))

(assert (= (and b!40884 condSetEmpty!628) setIsEmpty!628))

(assert (= (and b!40884 (not condSetEmpty!628)) setNonEmpty!629))

(assert (= (and mapNonEmpty!644 ((_ is Cons!575) mapDefault!648)) b!40884))

(declare-fun m!14296 () Bool)

(assert (=> setNonEmpty!628 m!14296))

(declare-fun m!14298 () Bool)

(assert (=> mapNonEmpty!648 m!14298))

(declare-fun m!14300 () Bool)

(assert (=> b!40883 m!14300))

(declare-fun m!14302 () Bool)

(assert (=> b!40884 m!14302))

(declare-fun m!14304 () Bool)

(assert (=> setNonEmpty!629 m!14304))

(declare-fun setRes!632 () Bool)

(declare-fun b!40889 () Bool)

(declare-fun tp!28240 () Bool)

(declare-fun e!21240 () Bool)

(assert (=> b!40889 (= e!21240 (and (inv!861 (_1!446 (_1!447 (h!5971 mapValue!643)))) setRes!632 tp!28240))))

(declare-fun condSetEmpty!632 () Bool)

(assert (=> b!40889 (= condSetEmpty!632 (= (_2!447 (h!5971 mapValue!643)) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!632 () Bool)

(assert (=> setIsEmpty!632 setRes!632))

(declare-fun setNonEmpty!632 () Bool)

(declare-fun tp!28239 () Bool)

(declare-fun setElem!632 () Context!142)

(assert (=> setNonEmpty!632 (= setRes!632 (and tp!28239 (inv!861 setElem!632)))))

(declare-fun setRest!632 () (InoxSet Context!142))

(assert (=> setNonEmpty!632 (= (_2!447 (h!5971 mapValue!643)) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!632 true) setRest!632))))

(assert (=> mapNonEmpty!644 (= tp!28201 e!21240)))

(assert (= (and b!40889 condSetEmpty!632) setIsEmpty!632))

(assert (= (and b!40889 (not condSetEmpty!632)) setNonEmpty!632))

(assert (= (and mapNonEmpty!644 ((_ is Cons!575) mapValue!643)) b!40889))

(declare-fun m!14306 () Bool)

(assert (=> b!40889 m!14306))

(declare-fun m!14308 () Bool)

(assert (=> setNonEmpty!632 m!14308))

(declare-fun b!40892 () Bool)

(declare-fun e!21243 () Bool)

(assert (=> b!40892 (= e!21243 true)))

(declare-fun b!40891 () Bool)

(declare-fun e!21242 () Bool)

(assert (=> b!40891 (= e!21242 e!21243)))

(declare-fun b!40890 () Bool)

(declare-fun e!21241 () Bool)

(assert (=> b!40890 (= e!21241 e!21242)))

(assert (=> b!40771 e!21241))

(assert (= b!40891 b!40892))

(assert (= b!40890 b!40891))

(assert (= (and b!40771 ((_ is Cons!572) (t!15952 lt!4223))) b!40890))

(assert (=> b!40892 (< (dynLambda!68 order!103 (toValue!628 (transformation!149 (h!5968 (t!15952 lt!4223))))) (dynLambda!69 order!105 lambda!675))))

(assert (=> b!40892 (< (dynLambda!70 order!107 (toChars!487 (transformation!149 (h!5968 (t!15952 lt!4223))))) (dynLambda!69 order!105 lambda!675))))

(declare-fun e!21248 () Bool)

(declare-fun tp!28246 () Bool)

(declare-fun tp!28245 () Bool)

(declare-fun b!40899 () Bool)

(assert (=> b!40899 (= e!21248 (and (inv!858 (left!505 (c!15815 (totalInput!1512 cacheFurthestNullable!45)))) tp!28245 (inv!858 (right!835 (c!15815 (totalInput!1512 cacheFurthestNullable!45)))) tp!28246))))

(declare-fun b!40900 () Bool)

(declare-fun inv!862 (IArray!203) Bool)

(assert (=> b!40900 (= e!21248 (inv!862 (xs!2680 (c!15815 (totalInput!1512 cacheFurthestNullable!45)))))))

(assert (=> b!40751 (= tp!28210 (and (inv!858 (c!15815 (totalInput!1512 cacheFurthestNullable!45))) e!21248))))

(assert (= (and b!40751 ((_ is Node!101) (c!15815 (totalInput!1512 cacheFurthestNullable!45)))) b!40899))

(assert (= (and b!40751 ((_ is Leaf!286) (c!15815 (totalInput!1512 cacheFurthestNullable!45)))) b!40900))

(declare-fun m!14310 () Bool)

(assert (=> b!40899 m!14310))

(declare-fun m!14312 () Bool)

(assert (=> b!40899 m!14312))

(declare-fun m!14314 () Bool)

(assert (=> b!40900 m!14314))

(assert (=> b!40751 m!14094))

(declare-fun b!40901 () Bool)

(declare-fun e!21250 () Bool)

(declare-fun setRes!633 () Bool)

(declare-fun tp!28247 () Bool)

(assert (=> b!40901 (= e!21250 (and setRes!633 tp!28247))))

(declare-fun condSetEmpty!633 () Bool)

(assert (=> b!40901 (= condSetEmpty!633 (= (_1!449 (_1!450 (h!5973 mapDefault!643))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!633 () Bool)

(assert (=> setIsEmpty!633 setRes!633))

(declare-fun setNonEmpty!633 () Bool)

(declare-fun tp!28248 () Bool)

(declare-fun setElem!633 () Context!142)

(assert (=> setNonEmpty!633 (= setRes!633 (and tp!28248 (inv!861 setElem!633)))))

(declare-fun setRest!633 () (InoxSet Context!142))

(assert (=> setNonEmpty!633 (= (_1!449 (_1!450 (h!5973 mapDefault!643))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!633 true) setRest!633))))

(assert (=> b!40733 (= tp!28200 e!21250)))

(assert (= (and b!40901 condSetEmpty!633) setIsEmpty!633))

(assert (= (and b!40901 (not condSetEmpty!633)) setNonEmpty!633))

(assert (= (and b!40733 ((_ is Cons!577) mapDefault!643)) b!40901))

(declare-fun m!14316 () Bool)

(assert (=> setNonEmpty!633 m!14316))

(declare-fun setRes!636 () Bool)

(declare-fun b!40906 () Bool)

(declare-fun e!21258 () Bool)

(declare-fun tp!28253 () Bool)

(assert (=> b!40906 (= e!21258 (and (inv!861 (_2!444 (_1!445 (h!5970 mapDefault!645)))) setRes!636 tp!28253))))

(declare-fun condSetEmpty!636 () Bool)

(assert (=> b!40906 (= condSetEmpty!636 (= (_2!445 (h!5970 mapDefault!645)) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!636 () Bool)

(assert (=> setIsEmpty!636 setRes!636))

(declare-fun setNonEmpty!636 () Bool)

(declare-fun tp!28254 () Bool)

(declare-fun setElem!636 () Context!142)

(assert (=> setNonEmpty!636 (= setRes!636 (and tp!28254 (inv!861 setElem!636)))))

(declare-fun setRest!636 () (InoxSet Context!142))

(assert (=> setNonEmpty!636 (= (_2!445 (h!5970 mapDefault!645)) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!636 true) setRest!636))))

(assert (=> b!40742 (= tp!28189 e!21258)))

(assert (= (and b!40906 condSetEmpty!636) setIsEmpty!636))

(assert (= (and b!40906 (not condSetEmpty!636)) setNonEmpty!636))

(assert (= (and b!40742 ((_ is Cons!574) mapDefault!645)) b!40906))

(declare-fun m!14318 () Bool)

(assert (=> b!40906 m!14318))

(declare-fun m!14320 () Bool)

(assert (=> setNonEmpty!636 m!14320))

(declare-fun e!21261 () Bool)

(declare-fun b!40907 () Bool)

(declare-fun tp!28256 () Bool)

(declare-fun tp!28255 () Bool)

(assert (=> b!40907 (= e!21261 (and (inv!858 (left!505 (c!15815 input!525))) tp!28255 (inv!858 (right!835 (c!15815 input!525))) tp!28256))))

(declare-fun b!40908 () Bool)

(assert (=> b!40908 (= e!21261 (inv!862 (xs!2680 (c!15815 input!525))))))

(assert (=> b!40743 (= tp!28198 (and (inv!858 (c!15815 input!525)) e!21261))))

(assert (= (and b!40743 ((_ is Node!101) (c!15815 input!525))) b!40907))

(assert (= (and b!40743 ((_ is Leaf!286) (c!15815 input!525))) b!40908))

(declare-fun m!14322 () Bool)

(assert (=> b!40907 m!14322))

(declare-fun m!14324 () Bool)

(assert (=> b!40907 m!14324))

(declare-fun m!14326 () Bool)

(assert (=> b!40908 m!14326))

(assert (=> b!40743 m!14060))

(declare-fun condMapEmpty!651 () Bool)

(declare-fun mapDefault!651 () List!579)

(assert (=> mapNonEmpty!645 (= condMapEmpty!651 (= mapRest!643 ((as const (Array (_ BitVec 32) List!579)) mapDefault!651)))))

(declare-fun e!21271 () Bool)

(declare-fun mapRes!651 () Bool)

(assert (=> mapNonEmpty!645 (= tp!28206 (and e!21271 mapRes!651))))

(declare-fun setNonEmpty!641 () Bool)

(declare-fun setRes!642 () Bool)

(declare-fun tp!28269 () Bool)

(declare-fun setElem!641 () Context!142)

(assert (=> setNonEmpty!641 (= setRes!642 (and tp!28269 (inv!861 setElem!641)))))

(declare-fun mapValue!651 () List!579)

(declare-fun setRest!641 () (InoxSet Context!142))

(assert (=> setNonEmpty!641 (= (_1!449 (_1!450 (h!5973 mapValue!651))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!641 true) setRest!641))))

(declare-fun mapIsEmpty!651 () Bool)

(assert (=> mapIsEmpty!651 mapRes!651))

(declare-fun setIsEmpty!641 () Bool)

(assert (=> setIsEmpty!641 setRes!642))

(declare-fun mapNonEmpty!651 () Bool)

(declare-fun tp!28270 () Bool)

(declare-fun e!21274 () Bool)

(assert (=> mapNonEmpty!651 (= mapRes!651 (and tp!28270 e!21274))))

(declare-fun mapRest!651 () (Array (_ BitVec 32) List!579))

(declare-fun mapKey!651 () (_ BitVec 32))

(assert (=> mapNonEmpty!651 (= mapRest!643 (store mapRest!651 mapKey!651 mapValue!651))))

(declare-fun b!40915 () Bool)

(declare-fun setRes!641 () Bool)

(declare-fun tp!28271 () Bool)

(assert (=> b!40915 (= e!21271 (and setRes!641 tp!28271))))

(declare-fun condSetEmpty!642 () Bool)

(assert (=> b!40915 (= condSetEmpty!642 (= (_1!449 (_1!450 (h!5973 mapDefault!651))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun b!40916 () Bool)

(declare-fun tp!28268 () Bool)

(assert (=> b!40916 (= e!21274 (and setRes!642 tp!28268))))

(declare-fun condSetEmpty!641 () Bool)

(assert (=> b!40916 (= condSetEmpty!641 (= (_1!449 (_1!450 (h!5973 mapValue!651))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!642 () Bool)

(assert (=> setIsEmpty!642 setRes!641))

(declare-fun setNonEmpty!642 () Bool)

(declare-fun tp!28267 () Bool)

(declare-fun setElem!642 () Context!142)

(assert (=> setNonEmpty!642 (= setRes!641 (and tp!28267 (inv!861 setElem!642)))))

(declare-fun setRest!642 () (InoxSet Context!142))

(assert (=> setNonEmpty!642 (= (_1!449 (_1!450 (h!5973 mapDefault!651))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!642 true) setRest!642))))

(assert (= (and mapNonEmpty!645 condMapEmpty!651) mapIsEmpty!651))

(assert (= (and mapNonEmpty!645 (not condMapEmpty!651)) mapNonEmpty!651))

(assert (= (and b!40916 condSetEmpty!641) setIsEmpty!641))

(assert (= (and b!40916 (not condSetEmpty!641)) setNonEmpty!641))

(assert (= (and mapNonEmpty!651 ((_ is Cons!577) mapValue!651)) b!40916))

(assert (= (and b!40915 condSetEmpty!642) setIsEmpty!642))

(assert (= (and b!40915 (not condSetEmpty!642)) setNonEmpty!642))

(assert (= (and mapNonEmpty!645 ((_ is Cons!577) mapDefault!651)) b!40915))

(declare-fun m!14328 () Bool)

(assert (=> setNonEmpty!641 m!14328))

(declare-fun m!14330 () Bool)

(assert (=> mapNonEmpty!651 m!14330))

(declare-fun m!14332 () Bool)

(assert (=> setNonEmpty!642 m!14332))

(declare-fun b!40917 () Bool)

(declare-fun e!21275 () Bool)

(declare-fun setRes!643 () Bool)

(declare-fun tp!28272 () Bool)

(assert (=> b!40917 (= e!21275 (and setRes!643 tp!28272))))

(declare-fun condSetEmpty!643 () Bool)

(assert (=> b!40917 (= condSetEmpty!643 (= (_1!449 (_1!450 (h!5973 mapValue!644))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!643 () Bool)

(assert (=> setIsEmpty!643 setRes!643))

(declare-fun setNonEmpty!643 () Bool)

(declare-fun tp!28273 () Bool)

(declare-fun setElem!643 () Context!142)

(assert (=> setNonEmpty!643 (= setRes!643 (and tp!28273 (inv!861 setElem!643)))))

(declare-fun setRest!643 () (InoxSet Context!142))

(assert (=> setNonEmpty!643 (= (_1!449 (_1!450 (h!5973 mapValue!644))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!643 true) setRest!643))))

(assert (=> mapNonEmpty!645 (= tp!28199 e!21275)))

(assert (= (and b!40917 condSetEmpty!643) setIsEmpty!643))

(assert (= (and b!40917 (not condSetEmpty!643)) setNonEmpty!643))

(assert (= (and mapNonEmpty!645 ((_ is Cons!577) mapValue!644)) b!40917))

(declare-fun m!14334 () Bool)

(assert (=> setNonEmpty!643 m!14334))

(declare-fun mapNonEmpty!654 () Bool)

(declare-fun mapRes!654 () Bool)

(declare-fun tp!28287 () Bool)

(declare-fun e!21291 () Bool)

(assert (=> mapNonEmpty!654 (= mapRes!654 (and tp!28287 e!21291))))

(declare-fun mapRest!654 () (Array (_ BitVec 32) List!576))

(declare-fun mapValue!654 () List!576)

(declare-fun mapKey!654 () (_ BitVec 32))

(assert (=> mapNonEmpty!654 (= mapRest!645 (store mapRest!654 mapKey!654 mapValue!654))))

(declare-fun setIsEmpty!648 () Bool)

(declare-fun setRes!649 () Bool)

(assert (=> setIsEmpty!648 setRes!649))

(declare-fun mapIsEmpty!654 () Bool)

(assert (=> mapIsEmpty!654 mapRes!654))

(declare-fun setRes!648 () Bool)

(declare-fun mapDefault!654 () List!576)

(declare-fun e!21290 () Bool)

(declare-fun b!40924 () Bool)

(declare-fun tp!28285 () Bool)

(assert (=> b!40924 (= e!21290 (and (inv!861 (_2!444 (_1!445 (h!5970 mapDefault!654)))) setRes!648 tp!28285))))

(declare-fun condSetEmpty!649 () Bool)

(assert (=> b!40924 (= condSetEmpty!649 (= (_2!445 (h!5970 mapDefault!654)) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setNonEmpty!648 () Bool)

(declare-fun tp!28286 () Bool)

(declare-fun setElem!649 () Context!142)

(assert (=> setNonEmpty!648 (= setRes!649 (and tp!28286 (inv!861 setElem!649)))))

(declare-fun setRest!649 () (InoxSet Context!142))

(assert (=> setNonEmpty!648 (= (_2!445 (h!5970 mapValue!654)) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!649 true) setRest!649))))

(declare-fun condMapEmpty!654 () Bool)

(assert (=> mapNonEmpty!643 (= condMapEmpty!654 (= mapRest!645 ((as const (Array (_ BitVec 32) List!576)) mapDefault!654)))))

(assert (=> mapNonEmpty!643 (= tp!28195 (and e!21290 mapRes!654))))

(declare-fun setNonEmpty!649 () Bool)

(declare-fun tp!28284 () Bool)

(declare-fun setElem!648 () Context!142)

(assert (=> setNonEmpty!649 (= setRes!648 (and tp!28284 (inv!861 setElem!648)))))

(declare-fun setRest!648 () (InoxSet Context!142))

(assert (=> setNonEmpty!649 (= (_2!445 (h!5970 mapDefault!654)) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!648 true) setRest!648))))

(declare-fun setIsEmpty!649 () Bool)

(assert (=> setIsEmpty!649 setRes!648))

(declare-fun tp!28288 () Bool)

(declare-fun b!40925 () Bool)

(assert (=> b!40925 (= e!21291 (and (inv!861 (_2!444 (_1!445 (h!5970 mapValue!654)))) setRes!649 tp!28288))))

(declare-fun condSetEmpty!648 () Bool)

(assert (=> b!40925 (= condSetEmpty!648 (= (_2!445 (h!5970 mapValue!654)) ((as const (Array Context!142 Bool)) false)))))

(assert (= (and mapNonEmpty!643 condMapEmpty!654) mapIsEmpty!654))

(assert (= (and mapNonEmpty!643 (not condMapEmpty!654)) mapNonEmpty!654))

(assert (= (and b!40925 condSetEmpty!648) setIsEmpty!648))

(assert (= (and b!40925 (not condSetEmpty!648)) setNonEmpty!648))

(assert (= (and mapNonEmpty!654 ((_ is Cons!574) mapValue!654)) b!40925))

(assert (= (and b!40924 condSetEmpty!649) setIsEmpty!649))

(assert (= (and b!40924 (not condSetEmpty!649)) setNonEmpty!649))

(assert (= (and mapNonEmpty!643 ((_ is Cons!574) mapDefault!654)) b!40924))

(declare-fun m!14336 () Bool)

(assert (=> mapNonEmpty!654 m!14336))

(declare-fun m!14338 () Bool)

(assert (=> setNonEmpty!648 m!14338))

(declare-fun m!14340 () Bool)

(assert (=> setNonEmpty!649 m!14340))

(declare-fun m!14342 () Bool)

(assert (=> b!40925 m!14342))

(declare-fun m!14344 () Bool)

(assert (=> b!40924 m!14344))

(declare-fun tp!28289 () Bool)

(declare-fun setRes!650 () Bool)

(declare-fun e!21295 () Bool)

(declare-fun b!40926 () Bool)

(assert (=> b!40926 (= e!21295 (and (inv!861 (_2!444 (_1!445 (h!5970 mapValue!645)))) setRes!650 tp!28289))))

(declare-fun condSetEmpty!650 () Bool)

(assert (=> b!40926 (= condSetEmpty!650 (= (_2!445 (h!5970 mapValue!645)) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!650 () Bool)

(assert (=> setIsEmpty!650 setRes!650))

(declare-fun setNonEmpty!650 () Bool)

(declare-fun tp!28290 () Bool)

(declare-fun setElem!650 () Context!142)

(assert (=> setNonEmpty!650 (= setRes!650 (and tp!28290 (inv!861 setElem!650)))))

(declare-fun setRest!650 () (InoxSet Context!142))

(assert (=> setNonEmpty!650 (= (_2!445 (h!5970 mapValue!645)) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!650 true) setRest!650))))

(assert (=> mapNonEmpty!643 (= tp!28193 e!21295)))

(assert (= (and b!40926 condSetEmpty!650) setIsEmpty!650))

(assert (= (and b!40926 (not condSetEmpty!650)) setNonEmpty!650))

(assert (= (and mapNonEmpty!643 ((_ is Cons!574) mapValue!645)) b!40926))

(declare-fun m!14346 () Bool)

(assert (=> b!40926 m!14346))

(declare-fun m!14348 () Bool)

(assert (=> setNonEmpty!650 m!14348))

(declare-fun setRes!651 () Bool)

(declare-fun tp!28292 () Bool)

(declare-fun b!40927 () Bool)

(declare-fun e!21300 () Bool)

(assert (=> b!40927 (= e!21300 (and (inv!861 (_1!446 (_1!447 (h!5971 (zeroValue!440 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320)))))))))) setRes!651 tp!28292))))

(declare-fun condSetEmpty!651 () Bool)

(assert (=> b!40927 (= condSetEmpty!651 (= (_2!447 (h!5971 (zeroValue!440 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320)))))))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!651 () Bool)

(assert (=> setIsEmpty!651 setRes!651))

(declare-fun setNonEmpty!651 () Bool)

(declare-fun tp!28291 () Bool)

(declare-fun setElem!651 () Context!142)

(assert (=> setNonEmpty!651 (= setRes!651 (and tp!28291 (inv!861 setElem!651)))))

(declare-fun setRest!651 () (InoxSet Context!142))

(assert (=> setNonEmpty!651 (= (_2!447 (h!5971 (zeroValue!440 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!651 true) setRest!651))))

(assert (=> b!40750 (= tp!28204 e!21300)))

(assert (= (and b!40927 condSetEmpty!651) setIsEmpty!651))

(assert (= (and b!40927 (not condSetEmpty!651)) setNonEmpty!651))

(assert (= (and b!40750 ((_ is Cons!575) (zeroValue!440 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320)))))))) b!40927))

(declare-fun m!14350 () Bool)

(assert (=> b!40927 m!14350))

(declare-fun m!14352 () Bool)

(assert (=> setNonEmpty!651 m!14352))

(declare-fun e!21303 () Bool)

(declare-fun b!40928 () Bool)

(declare-fun setRes!652 () Bool)

(declare-fun tp!28294 () Bool)

(assert (=> b!40928 (= e!21303 (and (inv!861 (_1!446 (_1!447 (h!5971 (minValue!440 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320)))))))))) setRes!652 tp!28294))))

(declare-fun condSetEmpty!652 () Bool)

(assert (=> b!40928 (= condSetEmpty!652 (= (_2!447 (h!5971 (minValue!440 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320)))))))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!652 () Bool)

(assert (=> setIsEmpty!652 setRes!652))

(declare-fun setNonEmpty!652 () Bool)

(declare-fun tp!28293 () Bool)

(declare-fun setElem!652 () Context!142)

(assert (=> setNonEmpty!652 (= setRes!652 (and tp!28293 (inv!861 setElem!652)))))

(declare-fun setRest!652 () (InoxSet Context!142))

(assert (=> setNonEmpty!652 (= (_2!447 (h!5971 (minValue!440 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!652 true) setRest!652))))

(assert (=> b!40750 (= tp!28196 e!21303)))

(assert (= (and b!40928 condSetEmpty!652) setIsEmpty!652))

(assert (= (and b!40928 (not condSetEmpty!652)) setNonEmpty!652))

(assert (= (and b!40750 ((_ is Cons!575) (minValue!440 (v!12341 (underlying!563 (v!12342 (underlying!564 (cache!665 cacheUp!320)))))))) b!40928))

(declare-fun m!14354 () Bool)

(assert (=> b!40928 m!14354))

(declare-fun m!14356 () Bool)

(assert (=> setNonEmpty!652 m!14356))

(declare-fun b!40929 () Bool)

(declare-fun tp!28295 () Bool)

(declare-fun setRes!653 () Bool)

(declare-fun e!21304 () Bool)

(assert (=> b!40929 (= e!21304 (and (inv!861 (_2!444 (_1!445 (h!5970 (zeroValue!439 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333)))))))))) setRes!653 tp!28295))))

(declare-fun condSetEmpty!653 () Bool)

(assert (=> b!40929 (= condSetEmpty!653 (= (_2!445 (h!5970 (zeroValue!439 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333)))))))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!653 () Bool)

(assert (=> setIsEmpty!653 setRes!653))

(declare-fun setNonEmpty!653 () Bool)

(declare-fun tp!28296 () Bool)

(declare-fun setElem!653 () Context!142)

(assert (=> setNonEmpty!653 (= setRes!653 (and tp!28296 (inv!861 setElem!653)))))

(declare-fun setRest!653 () (InoxSet Context!142))

(assert (=> setNonEmpty!653 (= (_2!445 (h!5970 (zeroValue!439 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!653 true) setRest!653))))

(assert (=> b!40732 (= tp!28209 e!21304)))

(assert (= (and b!40929 condSetEmpty!653) setIsEmpty!653))

(assert (= (and b!40929 (not condSetEmpty!653)) setNonEmpty!653))

(assert (= (and b!40732 ((_ is Cons!574) (zeroValue!439 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333)))))))) b!40929))

(declare-fun m!14358 () Bool)

(assert (=> b!40929 m!14358))

(declare-fun m!14360 () Bool)

(assert (=> setNonEmpty!653 m!14360))

(declare-fun tp!28297 () Bool)

(declare-fun b!40930 () Bool)

(declare-fun e!21307 () Bool)

(declare-fun setRes!654 () Bool)

(assert (=> b!40930 (= e!21307 (and (inv!861 (_2!444 (_1!445 (h!5970 (minValue!439 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333)))))))))) setRes!654 tp!28297))))

(declare-fun condSetEmpty!654 () Bool)

(assert (=> b!40930 (= condSetEmpty!654 (= (_2!445 (h!5970 (minValue!439 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333)))))))) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!654 () Bool)

(assert (=> setIsEmpty!654 setRes!654))

(declare-fun setNonEmpty!654 () Bool)

(declare-fun tp!28298 () Bool)

(declare-fun setElem!654 () Context!142)

(assert (=> setNonEmpty!654 (= setRes!654 (and tp!28298 (inv!861 setElem!654)))))

(declare-fun setRest!654 () (InoxSet Context!142))

(assert (=> setNonEmpty!654 (= (_2!445 (h!5970 (minValue!439 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!654 true) setRest!654))))

(assert (=> b!40732 (= tp!28202 e!21307)))

(assert (= (and b!40930 condSetEmpty!654) setIsEmpty!654))

(assert (= (and b!40930 (not condSetEmpty!654)) setNonEmpty!654))

(assert (= (and b!40732 ((_ is Cons!574) (minValue!439 (v!12339 (underlying!561 (v!12340 (underlying!562 (cache!664 cacheDown!333)))))))) b!40930))

(declare-fun m!14362 () Bool)

(assert (=> b!40930 m!14362))

(declare-fun m!14364 () Bool)

(assert (=> setNonEmpty!654 m!14364))

(declare-fun tp!28300 () Bool)

(declare-fun b!40931 () Bool)

(declare-fun setRes!655 () Bool)

(declare-fun e!21312 () Bool)

(assert (=> b!40931 (= e!21312 (and (inv!861 (_1!446 (_1!447 (h!5971 mapDefault!644)))) setRes!655 tp!28300))))

(declare-fun condSetEmpty!655 () Bool)

(assert (=> b!40931 (= condSetEmpty!655 (= (_2!447 (h!5971 mapDefault!644)) ((as const (Array Context!142 Bool)) false)))))

(declare-fun setIsEmpty!655 () Bool)

(assert (=> setIsEmpty!655 setRes!655))

(declare-fun setNonEmpty!655 () Bool)

(declare-fun tp!28299 () Bool)

(declare-fun setElem!655 () Context!142)

(assert (=> setNonEmpty!655 (= setRes!655 (and tp!28299 (inv!861 setElem!655)))))

(declare-fun setRest!655 () (InoxSet Context!142))

(assert (=> setNonEmpty!655 (= (_2!447 (h!5971 mapDefault!644)) ((_ map or) (store ((as const (Array Context!142 Bool)) false) setElem!655 true) setRest!655))))

(assert (=> b!40741 (= tp!28191 e!21312)))

(assert (= (and b!40931 condSetEmpty!655) setIsEmpty!655))

(assert (= (and b!40931 (not condSetEmpty!655)) setNonEmpty!655))

(assert (= (and b!40741 ((_ is Cons!575) mapDefault!644)) b!40931))

(declare-fun m!14366 () Bool)

(assert (=> b!40931 m!14366))

(declare-fun m!14368 () Bool)

(assert (=> setNonEmpty!655 m!14368))

(declare-fun b_lambda!235 () Bool)

(assert (= b_lambda!233 (or b!40729 b_lambda!235)))

(declare-fun bs!5052 () Bool)

(declare-fun d!4159 () Bool)

(assert (= bs!5052 (and d!4159 b!40729)))

(assert (=> bs!5052 (= (dynLambda!71 lambda!675 (h!5972 lt!4230)) (rulesProduceIndividualToken!3 Lexer!42 lt!4223 (h!5972 lt!4230)))))

(assert (=> bs!5052 m!14136))

(assert (=> b!40842 d!4159))

(check-sat (not b!40926) (not d!4101) (not setNonEmpty!643) (not d!4083) (not b!40861) (not b!40929) (not setNonEmpty!633) (not d!4103) (not setNonEmpty!623) (not b!40868) b_and!919 (not b!40795) (not b!40875) b_and!921 (not d!4097) (not d!4149) (not d!4087) (not mapNonEmpty!648) (not b!40930) (not b!40855) (not d!4099) b_and!925 (not b!40743) (not d!4147) (not b!40915) (not b!40924) (not setNonEmpty!622) (not b_next!885) (not b!40864) (not b!40779) (not d!4081) (not mapNonEmpty!654) (not d!4109) (not b!40925) (not d!4135) (not d!4107) (not setNonEmpty!650) b_and!923 (not b_next!887) (not b!40811) (not setNonEmpty!629) (not b!40890) (not d!4091) (not d!4093) (not b!40900) (not b!40889) (not b!40854) (not b!40867) (not d!4089) (not b!40856) (not b!40917) (not b!40899) (not b!40780) (not d!4125) (not d!4139) (not b!40876) (not d!4133) (not d!4137) (not b!40858) (not d!4095) (not setNonEmpty!654) (not b!40810) (not b!40798) (not b!40821) (not b_lambda!235) (not d!4129) (not b!40813) (not b!40906) (not b!40799) (not b_next!891) (not d!4145) (not setNonEmpty!652) (not b!40778) (not setNonEmpty!651) (not setNonEmpty!642) (not setNonEmpty!641) (not b!40916) (not b!40823) (not b!40797) (not bs!5052) (not setNonEmpty!648) (not setNonEmpty!628) (not b!40843) (not d!4111) (not mapNonEmpty!651) (not b!40862) (not b!40827) (not b!40907) (not b!40831) (not setNonEmpty!649) (not b!40824) (not setNonEmpty!632) (not b!40814) (not setNonEmpty!636) (not b_next!893) (not d!4085) (not setNonEmpty!653) (not b!40834) (not b!40908) (not d!4119) (not b!40751) (not b!40928) (not b!40883) b_and!927 (not b!40931) (not b!40927) (not d!4113) (not b!40857) (not b_next!895) (not d!4131) (not b!40825) (not d!4141) (not b!40884) (not b!40837) (not setNonEmpty!655) (not b!40901) (not b_next!889) (not b!40828) b_and!929)
(check-sat b_and!919 b_and!921 b_and!925 (not b_next!885) (not b_next!891) (not b_next!893) b_and!927 (not b_next!895) b_and!923 (not b_next!887) b_and!929 (not b_next!889))
