; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48334 () Bool)

(assert start!48334)

(declare-fun b!527567 () Bool)

(declare-fun b_free!14033 () Bool)

(declare-fun b_next!14049 () Bool)

(assert (=> b!527567 (= b_free!14033 (not b_next!14049))))

(declare-fun tp!167209 () Bool)

(declare-fun b_and!51527 () Bool)

(assert (=> b!527567 (= tp!167209 b_and!51527)))

(declare-fun b!527540 () Bool)

(declare-fun b_free!14035 () Bool)

(declare-fun b_next!14051 () Bool)

(assert (=> b!527540 (= b_free!14035 (not b_next!14051))))

(declare-fun tp!167230 () Bool)

(declare-fun b_and!51529 () Bool)

(assert (=> b!527540 (= tp!167230 b_and!51529)))

(declare-fun b!527544 () Bool)

(declare-fun b_free!14037 () Bool)

(declare-fun b_next!14053 () Bool)

(assert (=> b!527544 (= b_free!14037 (not b_next!14053))))

(declare-fun tp!167215 () Bool)

(declare-fun b_and!51531 () Bool)

(assert (=> b!527544 (= tp!167215 b_and!51531)))

(declare-fun b!527557 () Bool)

(declare-fun b_free!14039 () Bool)

(declare-fun b_next!14055 () Bool)

(assert (=> b!527557 (= b_free!14039 (not b_next!14055))))

(declare-fun tp!167231 () Bool)

(declare-fun b_and!51533 () Bool)

(assert (=> b!527557 (= tp!167231 b_and!51533)))

(declare-fun b_free!14041 () Bool)

(declare-fun b_next!14057 () Bool)

(assert (=> b!527557 (= b_free!14041 (not b_next!14057))))

(declare-fun tp!167211 () Bool)

(declare-fun b_and!51535 () Bool)

(assert (=> b!527557 (= tp!167211 b_and!51535)))

(declare-fun b!527560 () Bool)

(declare-fun b_free!14043 () Bool)

(declare-fun b_next!14059 () Bool)

(assert (=> b!527560 (= b_free!14043 (not b_next!14059))))

(declare-fun tp!167233 () Bool)

(declare-fun b_and!51537 () Bool)

(assert (=> b!527560 (= tp!167233 b_and!51537)))

(declare-fun b!527543 () Bool)

(declare-fun b_free!14045 () Bool)

(declare-fun b_next!14061 () Bool)

(assert (=> b!527543 (= b_free!14045 (not b_next!14061))))

(declare-fun tp!167225 () Bool)

(declare-fun b_and!51539 () Bool)

(assert (=> b!527543 (= tp!167225 b_and!51539)))

(declare-fun b!527554 () Bool)

(declare-fun b_free!14047 () Bool)

(declare-fun b_next!14063 () Bool)

(assert (=> b!527554 (= b_free!14047 (not b_next!14063))))

(declare-fun tp!167223 () Bool)

(declare-fun b_and!51541 () Bool)

(assert (=> b!527554 (= tp!167223 b_and!51541)))

(declare-fun b!527531 () Bool)

(declare-fun res!223001 () Bool)

(declare-fun e!317224 () Bool)

(assert (=> b!527531 (=> res!223001 e!317224)))

(declare-datatypes ((C!3364 0))(
  ( (C!3365 (val!1908 Int)) )
))
(declare-datatypes ((Regex!1221 0))(
  ( (ElementMatch!1221 (c!101089 C!3364)) (Concat!2138 (regOne!2954 Regex!1221) (regTwo!2954 Regex!1221)) (EmptyExpr!1221) (Star!1221 (reg!1550 Regex!1221)) (EmptyLang!1221) (Union!1221 (regOne!2955 Regex!1221) (regTwo!2955 Regex!1221)) )
))
(declare-datatypes ((List!4976 0))(
  ( (Nil!4966) (Cons!4966 (h!10367 Regex!1221) (t!73588 List!4976)) )
))
(declare-datatypes ((Context!318 0))(
  ( (Context!319 (exprs!659 List!4976)) )
))
(declare-datatypes ((tuple2!6124 0))(
  ( (tuple2!6125 (_1!3315 Context!318) (_2!3315 C!3364)) )
))
(declare-datatypes ((Hashable!566 0))(
  ( (HashableExt!565 (__x!3705 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!6126 0))(
  ( (tuple2!6127 (_1!3316 tuple2!6124) (_2!3316 (InoxSet Context!318))) )
))
(declare-datatypes ((List!4977 0))(
  ( (Nil!4967) (Cons!4967 (h!10368 tuple2!6126) (t!73589 List!4977)) )
))
(declare-datatypes ((array!2281 0))(
  ( (array!2282 (arr!1039 (Array (_ BitVec 32) List!4977)) (size!4049 (_ BitVec 32))) )
))
(declare-datatypes ((array!2283 0))(
  ( (array!2284 (arr!1040 (Array (_ BitVec 32) (_ BitVec 64))) (size!4050 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1188 0))(
  ( (LongMapFixedSize!1189 (defaultEntry!950 Int) (mask!2076 (_ BitVec 32)) (extraKeys!841 (_ BitVec 32)) (zeroValue!851 List!4977) (minValue!851 List!4977) (_size!1297 (_ BitVec 32)) (_keys!888 array!2283) (_values!873 array!2281) (_vacant!655 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2317 0))(
  ( (Cell!2318 (v!16032 LongMapFixedSize!1188)) )
))
(declare-datatypes ((MutLongMap!594 0))(
  ( (LongMap!594 (underlying!1367 Cell!2317)) (MutLongMapExt!593 (__x!3706 Int)) )
))
(declare-datatypes ((Cell!2319 0))(
  ( (Cell!2320 (v!16033 MutLongMap!594)) )
))
(declare-datatypes ((MutableMap!566 0))(
  ( (MutableMapExt!565 (__x!3707 Int)) (HashMap!566 (underlying!1368 Cell!2319) (hashF!2474 Hashable!566) (_size!1298 (_ BitVec 32)) (defaultValue!717 Int)) )
))
(declare-datatypes ((CacheUp!236 0))(
  ( (CacheUp!237 (cache!953 MutableMap!566)) )
))
(declare-datatypes ((Hashable!567 0))(
  ( (HashableExt!566 (__x!3708 Int)) )
))
(declare-datatypes ((tuple3!410 0))(
  ( (tuple3!411 (_1!3317 (InoxSet Context!318)) (_2!3317 Int) (_3!253 Int)) )
))
(declare-datatypes ((tuple2!6128 0))(
  ( (tuple2!6129 (_1!3318 tuple3!410) (_2!3318 Int)) )
))
(declare-datatypes ((List!4978 0))(
  ( (Nil!4968) (Cons!4968 (h!10369 tuple2!6128) (t!73590 List!4978)) )
))
(declare-datatypes ((array!2285 0))(
  ( (array!2286 (arr!1041 (Array (_ BitVec 32) List!4978)) (size!4051 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1190 0))(
  ( (LongMapFixedSize!1191 (defaultEntry!951 Int) (mask!2077 (_ BitVec 32)) (extraKeys!842 (_ BitVec 32)) (zeroValue!852 List!4978) (minValue!852 List!4978) (_size!1299 (_ BitVec 32)) (_keys!889 array!2283) (_values!874 array!2285) (_vacant!656 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2321 0))(
  ( (Cell!2322 (v!16034 LongMapFixedSize!1190)) )
))
(declare-datatypes ((MutLongMap!595 0))(
  ( (LongMap!595 (underlying!1369 Cell!2321)) (MutLongMapExt!594 (__x!3709 Int)) )
))
(declare-datatypes ((Cell!2323 0))(
  ( (Cell!2324 (v!16035 MutLongMap!595)) )
))
(declare-datatypes ((MutableMap!567 0))(
  ( (MutableMapExt!566 (__x!3710 Int)) (HashMap!567 (underlying!1370 Cell!2323) (hashF!2475 Hashable!567) (_size!1300 (_ BitVec 32)) (defaultValue!718 Int)) )
))
(declare-datatypes ((List!4979 0))(
  ( (Nil!4969) (Cons!4969 (h!10370 C!3364) (t!73591 List!4979)) )
))
(declare-datatypes ((IArray!3219 0))(
  ( (IArray!3220 (innerList!1667 List!4979)) )
))
(declare-datatypes ((Conc!1609 0))(
  ( (Node!1609 (left!4223 Conc!1609) (right!4553 Conc!1609) (csize!3448 Int) (cheight!1820 Int)) (Leaf!2560 (xs!4246 IArray!3219) (csize!3449 Int)) (Empty!1609) )
))
(declare-datatypes ((BalanceConc!3226 0))(
  ( (BalanceConc!3227 (c!101090 Conc!1609)) )
))
(declare-datatypes ((CacheFurthestNullable!176 0))(
  ( (CacheFurthestNullable!177 (cache!954 MutableMap!567) (totalInput!1751 BalanceConc!3226)) )
))
(declare-datatypes ((tuple3!412 0))(
  ( (tuple3!413 (_1!3319 Regex!1221) (_2!3319 Context!318) (_3!254 C!3364)) )
))
(declare-datatypes ((tuple2!6130 0))(
  ( (tuple2!6131 (_1!3320 tuple3!412) (_2!3320 (InoxSet Context!318))) )
))
(declare-datatypes ((List!4980 0))(
  ( (Nil!4970) (Cons!4970 (h!10371 tuple2!6130) (t!73592 List!4980)) )
))
(declare-datatypes ((array!2287 0))(
  ( (array!2288 (arr!1042 (Array (_ BitVec 32) List!4980)) (size!4052 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1192 0))(
  ( (LongMapFixedSize!1193 (defaultEntry!952 Int) (mask!2078 (_ BitVec 32)) (extraKeys!843 (_ BitVec 32)) (zeroValue!853 List!4980) (minValue!853 List!4980) (_size!1301 (_ BitVec 32)) (_keys!890 array!2283) (_values!875 array!2287) (_vacant!657 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2325 0))(
  ( (Cell!2326 (v!16036 LongMapFixedSize!1192)) )
))
(declare-datatypes ((MutLongMap!596 0))(
  ( (LongMap!596 (underlying!1371 Cell!2325)) (MutLongMapExt!595 (__x!3711 Int)) )
))
(declare-datatypes ((Cell!2327 0))(
  ( (Cell!2328 (v!16037 MutLongMap!596)) )
))
(declare-datatypes ((Hashable!568 0))(
  ( (HashableExt!567 (__x!3712 Int)) )
))
(declare-datatypes ((MutableMap!568 0))(
  ( (MutableMapExt!567 (__x!3713 Int)) (HashMap!568 (underlying!1372 Cell!2327) (hashF!2476 Hashable!568) (_size!1302 (_ BitVec 32)) (defaultValue!719 Int)) )
))
(declare-datatypes ((CacheDown!220 0))(
  ( (CacheDown!221 (cache!955 MutableMap!568)) )
))
(declare-datatypes ((List!4981 0))(
  ( (Nil!4971) (Cons!4971 (h!10372 (_ BitVec 16)) (t!73593 List!4981)) )
))
(declare-datatypes ((TokenValue!917 0))(
  ( (FloatLiteralValue!1834 (text!6864 List!4981)) (TokenValueExt!916 (__x!3714 Int)) (Broken!4585 (value!30282 List!4981)) (Object!926) (End!917) (Def!917) (Underscore!917) (Match!917) (Else!917) (Error!917) (Case!917) (If!917) (Extends!917) (Abstract!917) (Class!917) (Val!917) (DelimiterValue!1834 (del!977 List!4981)) (KeywordValue!923 (value!30283 List!4981)) (CommentValue!1834 (value!30284 List!4981)) (WhitespaceValue!1834 (value!30285 List!4981)) (IndentationValue!917 (value!30286 List!4981)) (String!6316) (Int32!917) (Broken!4586 (value!30287 List!4981)) (Boolean!918) (Unit!8804) (OperatorValue!920 (op!977 List!4981)) (IdentifierValue!1834 (value!30288 List!4981)) (IdentifierValue!1835 (value!30289 List!4981)) (WhitespaceValue!1835 (value!30290 List!4981)) (True!1834) (False!1834) (Broken!4587 (value!30291 List!4981)) (Broken!4588 (value!30292 List!4981)) (True!1835) (RightBrace!917) (RightBracket!917) (Colon!917) (Null!917) (Comma!917) (LeftBracket!917) (False!1835) (LeftBrace!917) (ImaginaryLiteralValue!917 (text!6865 List!4981)) (StringLiteralValue!2751 (value!30293 List!4981)) (EOFValue!917 (value!30294 List!4981)) (IdentValue!917 (value!30295 List!4981)) (DelimiterValue!1835 (value!30296 List!4981)) (DedentValue!917 (value!30297 List!4981)) (NewLineValue!917 (value!30298 List!4981)) (IntegerValue!2751 (value!30299 (_ BitVec 32)) (text!6866 List!4981)) (IntegerValue!2752 (value!30300 Int) (text!6867 List!4981)) (Times!917) (Or!917) (Equal!917) (Minus!917) (Broken!4589 (value!30301 List!4981)) (And!917) (Div!917) (LessEqual!917) (Mod!917) (Concat!2139) (Not!917) (Plus!917) (SpaceValue!917 (value!30302 List!4981)) (IntegerValue!2753 (value!30303 Int) (text!6868 List!4981)) (StringLiteralValue!2752 (text!6869 List!4981)) (FloatLiteralValue!1835 (text!6870 List!4981)) (BytesLiteralValue!917 (value!30304 List!4981)) (CommentValue!1835 (value!30305 List!4981)) (StringLiteralValue!2753 (value!30306 List!4981)) (ErrorTokenValue!917 (msg!978 List!4981)) )
))
(declare-datatypes ((String!6317 0))(
  ( (String!6318 (value!30307 String)) )
))
(declare-datatypes ((TokenValueInjection!1602 0))(
  ( (TokenValueInjection!1603 (toValue!1730 Int) (toChars!1589 Int)) )
))
(declare-datatypes ((Rule!1586 0))(
  ( (Rule!1587 (regex!893 Regex!1221) (tag!1155 String!6317) (isSeparator!893 Bool) (transformation!893 TokenValueInjection!1602)) )
))
(declare-datatypes ((Token!1522 0))(
  ( (Token!1523 (value!30308 TokenValue!917) (rule!1593 Rule!1586) (size!4053 Int) (originalCharacters!932 List!4979)) )
))
(declare-datatypes ((List!4982 0))(
  ( (Nil!4972) (Cons!4972 (h!10373 Token!1522) (t!73594 List!4982)) )
))
(declare-datatypes ((IArray!3221 0))(
  ( (IArray!3222 (innerList!1668 List!4982)) )
))
(declare-datatypes ((Conc!1610 0))(
  ( (Node!1610 (left!4224 Conc!1610) (right!4554 Conc!1610) (csize!3450 Int) (cheight!1821 Int)) (Leaf!2561 (xs!4247 IArray!3221) (csize!3451 Int)) (Empty!1610) )
))
(declare-datatypes ((BalanceConc!3228 0))(
  ( (BalanceConc!3229 (c!101091 Conc!1610)) )
))
(declare-datatypes ((tuple2!6132 0))(
  ( (tuple2!6133 (_1!3321 BalanceConc!3228) (_2!3321 BalanceConc!3226)) )
))
(declare-datatypes ((tuple4!96 0))(
  ( (tuple4!97 (_1!3322 tuple2!6132) (_2!3322 CacheUp!236) (_3!255 CacheDown!220) (_4!48 CacheFurthestNullable!176)) )
))
(declare-fun lt!217877 () tuple4!96)

(declare-fun valid!576 (CacheUp!236) Bool)

(assert (=> b!527531 (= res!223001 (not (valid!576 (_2!3322 lt!217877))))))

(declare-fun b!527532 () Bool)

(declare-fun res!223006 () Bool)

(declare-fun e!317229 () Bool)

(assert (=> b!527532 (=> (not res!223006) (not e!317229))))

(declare-fun cacheFurthestNullable!56 () CacheFurthestNullable!176)

(declare-fun valid!577 (CacheFurthestNullable!176) Bool)

(assert (=> b!527532 (= res!223006 (valid!577 cacheFurthestNullable!56))))

(declare-fun e!317238 () Bool)

(declare-fun e!317230 () Bool)

(declare-fun e!317233 () Bool)

(declare-fun b!527533 () Bool)

(declare-fun inv!6226 (BalanceConc!3226) Bool)

(assert (=> b!527533 (= e!317238 (and e!317230 (inv!6226 (totalInput!1751 cacheFurthestNullable!56)) e!317233))))

(declare-fun tp!167210 () Bool)

(declare-fun e!317215 () Bool)

(declare-fun e!317234 () Bool)

(declare-fun b!527534 () Bool)

(declare-datatypes ((List!4983 0))(
  ( (Nil!4973) (Cons!4973 (h!10374 Rule!1586) (t!73595 List!4983)) )
))
(declare-fun rules!1345 () List!4983)

(declare-fun inv!6224 (String!6317) Bool)

(declare-fun inv!6227 (TokenValueInjection!1602) Bool)

(assert (=> b!527534 (= e!317234 (and tp!167210 (inv!6224 (tag!1155 (h!10374 rules!1345))) (inv!6227 (transformation!893 (h!10374 rules!1345))) e!317215))))

(declare-fun b!527535 () Bool)

(declare-fun e!317225 () Bool)

(declare-fun e!317212 () Bool)

(declare-fun lt!217878 () MutLongMap!596)

(get-info :version)

(assert (=> b!527535 (= e!317225 (and e!317212 ((_ is LongMap!596) lt!217878)))))

(declare-fun cacheDown!462 () CacheDown!220)

(assert (=> b!527535 (= lt!217878 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))

(declare-fun b!527536 () Bool)

(declare-fun res!222999 () Bool)

(assert (=> b!527536 (=> (not res!222999) (not e!317229))))

(declare-fun cacheUp!449 () CacheUp!236)

(assert (=> b!527536 (= res!222999 (valid!576 cacheUp!449))))

(declare-fun mapIsEmpty!2340 () Bool)

(declare-fun mapRes!2342 () Bool)

(assert (=> mapIsEmpty!2340 mapRes!2342))

(declare-fun b!527537 () Bool)

(declare-fun res!223000 () Bool)

(assert (=> b!527537 (=> res!223000 e!317224)))

(declare-fun lt!217879 () tuple2!6132)

(declare-fun list!2068 (BalanceConc!3226) List!4979)

(assert (=> b!527537 (= res!223000 (not (= (list!2068 (_2!3321 (_1!3322 lt!217877))) (list!2068 (_2!3321 lt!217879)))))))

(declare-fun b!527538 () Bool)

(declare-fun e!317218 () Bool)

(declare-fun e!317213 () Bool)

(assert (=> b!527538 (= e!317218 e!317213)))

(declare-fun b!527539 () Bool)

(declare-fun tp!167224 () Bool)

(declare-fun inv!6228 (Conc!1609) Bool)

(assert (=> b!527539 (= e!317233 (and (inv!6228 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) tp!167224))))

(declare-fun b!527541 () Bool)

(declare-fun e!317222 () Bool)

(declare-fun e!317226 () Bool)

(assert (=> b!527541 (= e!317222 e!317226)))

(declare-fun b!527542 () Bool)

(declare-fun e!317236 () Bool)

(declare-fun e!317216 () Bool)

(assert (=> b!527542 (= e!317236 e!317216)))

(declare-fun e!317219 () Bool)

(declare-fun tp!167221 () Bool)

(declare-fun tp!167232 () Bool)

(declare-fun array_inv!757 (array!2283) Bool)

(declare-fun array_inv!758 (array!2281) Bool)

(assert (=> b!527543 (= e!317226 (and tp!167225 tp!167221 tp!167232 (array_inv!757 (_keys!888 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))) (array_inv!758 (_values!873 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))) e!317219))))

(declare-fun mapNonEmpty!2340 () Bool)

(declare-fun mapRes!2341 () Bool)

(declare-fun tp!167222 () Bool)

(declare-fun tp!167227 () Bool)

(assert (=> mapNonEmpty!2340 (= mapRes!2341 (and tp!167222 tp!167227))))

(declare-fun mapRest!2340 () (Array (_ BitVec 32) List!4980))

(declare-fun mapValue!2341 () List!4980)

(declare-fun mapKey!2340 () (_ BitVec 32))

(assert (=> mapNonEmpty!2340 (= (arr!1042 (_values!875 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))) (store mapRest!2340 mapKey!2340 mapValue!2341))))

(declare-fun e!317228 () Bool)

(assert (=> b!527544 (= e!317228 (and e!317225 tp!167215))))

(declare-fun b!527545 () Bool)

(declare-fun res!222998 () Bool)

(assert (=> b!527545 (=> res!222998 e!317224)))

(assert (=> b!527545 (= res!222998 (not (valid!577 (_4!48 lt!217877))))))

(declare-fun b!527546 () Bool)

(declare-fun e!317235 () Bool)

(declare-fun lt!217875 () MutLongMap!595)

(assert (=> b!527546 (= e!317235 (and e!317218 ((_ is LongMap!595) lt!217875)))))

(assert (=> b!527546 (= lt!217875 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))

(declare-fun b!527547 () Bool)

(declare-fun e!317237 () Bool)

(assert (=> b!527547 (= e!317237 e!317228)))

(declare-fun b!527548 () Bool)

(assert (=> b!527548 (= e!317229 e!317224)))

(declare-fun res!222997 () Bool)

(assert (=> b!527548 (=> res!222997 e!317224)))

(declare-fun list!2069 (BalanceConc!3228) List!4982)

(assert (=> b!527548 (= res!222997 (not (= (list!2069 (_1!3321 (_1!3322 lt!217877))) (list!2069 (_1!3321 lt!217879)))))))

(declare-fun input!747 () BalanceConc!3226)

(declare-datatypes ((LexerInterface!779 0))(
  ( (LexerInterfaceExt!776 (__x!3715 Int)) (Lexer!777) )
))
(declare-fun thiss!12147 () LexerInterface!779)

(declare-fun lex!558 (LexerInterface!779 List!4983 BalanceConc!3226) tuple2!6132)

(assert (=> b!527548 (= lt!217879 (lex!558 thiss!12147 rules!1345 input!747))))

(declare-fun lexTailRecV3Mem!21 (LexerInterface!779 List!4983 BalanceConc!3226 BalanceConc!3226 BalanceConc!3226 BalanceConc!3228 CacheUp!236 CacheDown!220 CacheFurthestNullable!176) tuple4!96)

(assert (=> b!527548 (= lt!217877 (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610) cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))

(declare-fun b!527549 () Bool)

(declare-fun e!317241 () Bool)

(declare-fun e!317231 () Bool)

(declare-fun lt!217876 () MutLongMap!594)

(assert (=> b!527549 (= e!317241 (and e!317231 ((_ is LongMap!594) lt!217876)))))

(assert (=> b!527549 (= lt!217876 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))

(declare-fun b!527550 () Bool)

(declare-fun tp!167228 () Bool)

(declare-fun mapRes!2340 () Bool)

(assert (=> b!527550 (= e!317219 (and tp!167228 mapRes!2340))))

(declare-fun condMapEmpty!2340 () Bool)

(declare-fun mapDefault!2340 () List!4977)

(assert (=> b!527550 (= condMapEmpty!2340 (= (arr!1039 (_values!873 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))) ((as const (Array (_ BitVec 32) List!4977)) mapDefault!2340)))))

(declare-fun mapNonEmpty!2341 () Bool)

(declare-fun tp!167208 () Bool)

(declare-fun tp!167226 () Bool)

(assert (=> mapNonEmpty!2341 (= mapRes!2342 (and tp!167208 tp!167226))))

(declare-fun mapKey!2341 () (_ BitVec 32))

(declare-fun mapRest!2342 () (Array (_ BitVec 32) List!4978))

(declare-fun mapValue!2342 () List!4978)

(assert (=> mapNonEmpty!2341 (= (arr!1041 (_values!874 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))) (store mapRest!2342 mapKey!2341 mapValue!2342))))

(declare-fun b!527551 () Bool)

(declare-fun e!317227 () Bool)

(declare-fun tp!167216 () Bool)

(assert (=> b!527551 (= e!317227 (and tp!167216 mapRes!2341))))

(declare-fun condMapEmpty!2341 () Bool)

(declare-fun mapDefault!2342 () List!4980)

(assert (=> b!527551 (= condMapEmpty!2341 (= (arr!1042 (_values!875 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))) ((as const (Array (_ BitVec 32) List!4980)) mapDefault!2342)))))

(declare-fun mapIsEmpty!2341 () Bool)

(assert (=> mapIsEmpty!2341 mapRes!2340))

(declare-fun b!527552 () Bool)

(declare-fun e!317232 () Bool)

(assert (=> b!527552 (= e!317212 e!317232)))

(declare-fun b!527553 () Bool)

(declare-fun res!223004 () Bool)

(assert (=> b!527553 (=> (not res!223004) (not e!317229))))

(declare-fun isEmpty!3609 (List!4983) Bool)

(assert (=> b!527553 (= res!223004 (not (isEmpty!3609 rules!1345)))))

(declare-fun mapNonEmpty!2342 () Bool)

(declare-fun tp!167219 () Bool)

(declare-fun tp!167217 () Bool)

(assert (=> mapNonEmpty!2342 (= mapRes!2340 (and tp!167219 tp!167217))))

(declare-fun mapKey!2342 () (_ BitVec 32))

(declare-fun mapValue!2340 () List!4977)

(declare-fun mapRest!2341 () (Array (_ BitVec 32) List!4977))

(assert (=> mapNonEmpty!2342 (= (arr!1039 (_values!873 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))) (store mapRest!2341 mapKey!2342 mapValue!2340))))

(declare-fun tp!167220 () Bool)

(declare-fun tp!167218 () Bool)

(declare-fun e!317240 () Bool)

(declare-fun e!317214 () Bool)

(declare-fun array_inv!759 (array!2285) Bool)

(assert (=> b!527554 (= e!317214 (and tp!167223 tp!167218 tp!167220 (array_inv!757 (_keys!889 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))) (array_inv!759 (_values!874 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))) e!317240))))

(declare-fun b!527555 () Bool)

(assert (=> b!527555 (= e!317231 e!317222)))

(declare-fun b!527556 () Bool)

(declare-fun res!223002 () Bool)

(assert (=> b!527556 (=> (not res!223002) (not e!317229))))

(assert (=> b!527556 (= res!223002 (= (totalInput!1751 cacheFurthestNullable!56) input!747))))

(assert (=> b!527557 (= e!317215 (and tp!167231 tp!167211))))

(declare-fun b!527558 () Bool)

(declare-fun e!317221 () Bool)

(assert (=> b!527558 (= e!317232 e!317221)))

(declare-fun b!527559 () Bool)

(declare-fun tp!167212 () Bool)

(assert (=> b!527559 (= e!317240 (and tp!167212 mapRes!2342))))

(declare-fun condMapEmpty!2342 () Bool)

(declare-fun mapDefault!2341 () List!4978)

(assert (=> b!527559 (= condMapEmpty!2342 (= (arr!1041 (_values!874 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))) ((as const (Array (_ BitVec 32) List!4978)) mapDefault!2341)))))

(assert (=> b!527560 (= e!317216 (and e!317241 tp!167233))))

(declare-fun b!527561 () Bool)

(declare-fun res!222996 () Bool)

(assert (=> b!527561 (=> res!222996 e!317224)))

(declare-fun valid!578 (CacheDown!220) Bool)

(assert (=> b!527561 (= res!222996 (not (valid!578 (_3!255 lt!217877))))))

(declare-fun b!527562 () Bool)

(assert (=> b!527562 (= e!317224 (not (= (totalInput!1751 (_4!48 lt!217877)) input!747)))))

(declare-fun b!527563 () Bool)

(declare-fun res!223003 () Bool)

(assert (=> b!527563 (=> (not res!223003) (not e!317229))))

(assert (=> b!527563 (= res!223003 (valid!578 cacheDown!462))))

(declare-fun b!527564 () Bool)

(declare-fun e!317220 () Bool)

(declare-fun tp!167214 () Bool)

(assert (=> b!527564 (= e!317220 (and (inv!6228 (c!101090 input!747)) tp!167214))))

(declare-fun b!527565 () Bool)

(assert (=> b!527565 (= e!317213 e!317214)))

(declare-fun b!527566 () Bool)

(declare-fun res!223005 () Bool)

(assert (=> b!527566 (=> (not res!223005) (not e!317229))))

(declare-fun rulesInvariant!742 (LexerInterface!779 List!4983) Bool)

(assert (=> b!527566 (= res!223005 (rulesInvariant!742 thiss!12147 rules!1345))))

(declare-fun mapIsEmpty!2342 () Bool)

(assert (=> mapIsEmpty!2342 mapRes!2341))

(declare-fun tp!167213 () Bool)

(declare-fun tp!167207 () Bool)

(declare-fun array_inv!760 (array!2287) Bool)

(assert (=> b!527567 (= e!317221 (and tp!167209 tp!167213 tp!167207 (array_inv!757 (_keys!890 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))) (array_inv!760 (_values!875 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))) e!317227))))

(declare-fun b!527568 () Bool)

(declare-fun e!317242 () Bool)

(declare-fun tp!167229 () Bool)

(assert (=> b!527568 (= e!317242 (and e!317234 tp!167229))))

(declare-fun res!222995 () Bool)

(assert (=> start!48334 (=> (not res!222995) (not e!317229))))

(assert (=> start!48334 (= res!222995 ((_ is Lexer!777) thiss!12147))))

(assert (=> start!48334 e!317229))

(assert (=> start!48334 (and (inv!6226 input!747) e!317220)))

(declare-fun inv!6229 (CacheDown!220) Bool)

(assert (=> start!48334 (and (inv!6229 cacheDown!462) e!317237)))

(assert (=> start!48334 true))

(declare-fun inv!6230 (CacheFurthestNullable!176) Bool)

(assert (=> start!48334 (and (inv!6230 cacheFurthestNullable!56) e!317238)))

(declare-fun inv!6231 (CacheUp!236) Bool)

(assert (=> start!48334 (and (inv!6231 cacheUp!449) e!317236)))

(assert (=> start!48334 e!317242))

(assert (=> b!527540 (= e!317230 (and e!317235 tp!167230))))

(assert (= (and start!48334 res!222995) b!527553))

(assert (= (and b!527553 res!223004) b!527566))

(assert (= (and b!527566 res!223005) b!527536))

(assert (= (and b!527536 res!222999) b!527563))

(assert (= (and b!527563 res!223003) b!527532))

(assert (= (and b!527532 res!223006) b!527556))

(assert (= (and b!527556 res!223002) b!527548))

(assert (= (and b!527548 (not res!222997)) b!527537))

(assert (= (and b!527537 (not res!223000)) b!527545))

(assert (= (and b!527545 (not res!222998)) b!527531))

(assert (= (and b!527531 (not res!223001)) b!527561))

(assert (= (and b!527561 (not res!222996)) b!527562))

(assert (= start!48334 b!527564))

(assert (= (and b!527551 condMapEmpty!2341) mapIsEmpty!2342))

(assert (= (and b!527551 (not condMapEmpty!2341)) mapNonEmpty!2340))

(assert (= b!527567 b!527551))

(assert (= b!527558 b!527567))

(assert (= b!527552 b!527558))

(assert (= (and b!527535 ((_ is LongMap!596) (v!16037 (underlying!1372 (cache!955 cacheDown!462))))) b!527552))

(assert (= b!527544 b!527535))

(assert (= (and b!527547 ((_ is HashMap!568) (cache!955 cacheDown!462))) b!527544))

(assert (= start!48334 b!527547))

(assert (= (and b!527559 condMapEmpty!2342) mapIsEmpty!2340))

(assert (= (and b!527559 (not condMapEmpty!2342)) mapNonEmpty!2341))

(assert (= b!527554 b!527559))

(assert (= b!527565 b!527554))

(assert (= b!527538 b!527565))

(assert (= (and b!527546 ((_ is LongMap!595) (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))) b!527538))

(assert (= b!527540 b!527546))

(assert (= (and b!527533 ((_ is HashMap!567) (cache!954 cacheFurthestNullable!56))) b!527540))

(assert (= b!527533 b!527539))

(assert (= start!48334 b!527533))

(assert (= (and b!527550 condMapEmpty!2340) mapIsEmpty!2341))

(assert (= (and b!527550 (not condMapEmpty!2340)) mapNonEmpty!2342))

(assert (= b!527543 b!527550))

(assert (= b!527541 b!527543))

(assert (= b!527555 b!527541))

(assert (= (and b!527549 ((_ is LongMap!594) (v!16033 (underlying!1368 (cache!953 cacheUp!449))))) b!527555))

(assert (= b!527560 b!527549))

(assert (= (and b!527542 ((_ is HashMap!566) (cache!953 cacheUp!449))) b!527560))

(assert (= start!48334 b!527542))

(assert (= b!527534 b!527557))

(assert (= b!527568 b!527534))

(assert (= (and start!48334 ((_ is Cons!4973) rules!1345)) b!527568))

(declare-fun m!773146 () Bool)

(assert (=> b!527545 m!773146))

(declare-fun m!773148 () Bool)

(assert (=> mapNonEmpty!2342 m!773148))

(declare-fun m!773150 () Bool)

(assert (=> mapNonEmpty!2340 m!773150))

(declare-fun m!773152 () Bool)

(assert (=> b!527553 m!773152))

(declare-fun m!773154 () Bool)

(assert (=> b!527554 m!773154))

(declare-fun m!773156 () Bool)

(assert (=> b!527554 m!773156))

(declare-fun m!773158 () Bool)

(assert (=> b!527543 m!773158))

(declare-fun m!773160 () Bool)

(assert (=> b!527543 m!773160))

(declare-fun m!773162 () Bool)

(assert (=> b!527531 m!773162))

(declare-fun m!773164 () Bool)

(assert (=> b!527564 m!773164))

(declare-fun m!773166 () Bool)

(assert (=> b!527536 m!773166))

(declare-fun m!773168 () Bool)

(assert (=> b!527548 m!773168))

(declare-fun m!773170 () Bool)

(assert (=> b!527548 m!773170))

(declare-fun m!773172 () Bool)

(assert (=> b!527548 m!773172))

(declare-fun m!773174 () Bool)

(assert (=> b!527548 m!773174))

(declare-fun m!773176 () Bool)

(assert (=> b!527567 m!773176))

(declare-fun m!773178 () Bool)

(assert (=> b!527567 m!773178))

(declare-fun m!773180 () Bool)

(assert (=> mapNonEmpty!2341 m!773180))

(declare-fun m!773182 () Bool)

(assert (=> b!527537 m!773182))

(declare-fun m!773184 () Bool)

(assert (=> b!527537 m!773184))

(declare-fun m!773186 () Bool)

(assert (=> b!527563 m!773186))

(declare-fun m!773188 () Bool)

(assert (=> b!527534 m!773188))

(declare-fun m!773190 () Bool)

(assert (=> b!527534 m!773190))

(declare-fun m!773192 () Bool)

(assert (=> b!527533 m!773192))

(declare-fun m!773194 () Bool)

(assert (=> b!527566 m!773194))

(declare-fun m!773196 () Bool)

(assert (=> b!527539 m!773196))

(declare-fun m!773198 () Bool)

(assert (=> b!527561 m!773198))

(declare-fun m!773200 () Bool)

(assert (=> b!527532 m!773200))

(declare-fun m!773202 () Bool)

(assert (=> start!48334 m!773202))

(declare-fun m!773204 () Bool)

(assert (=> start!48334 m!773204))

(declare-fun m!773206 () Bool)

(assert (=> start!48334 m!773206))

(declare-fun m!773208 () Bool)

(assert (=> start!48334 m!773208))

(check-sat (not b!527553) (not b!527568) (not b!527554) (not b!527533) b_and!51541 b_and!51527 (not b!527548) (not b_next!14051) (not b!527563) (not b_next!14053) (not mapNonEmpty!2340) (not b_next!14057) (not b!527537) (not b!527532) (not b_next!14063) (not b!527536) (not mapNonEmpty!2342) (not b!527531) (not b!527550) b_and!51533 (not b!527539) (not b_next!14055) (not b!527566) (not b!527561) (not b!527543) (not b_next!14061) (not b!527534) b_and!51539 b_and!51531 (not start!48334) (not b!527564) (not b!527545) (not b_next!14049) (not b_next!14059) (not b!527559) b_and!51535 b_and!51537 (not mapNonEmpty!2341) (not b!527567) (not b!527551) b_and!51529)
(check-sat (not b_next!14053) (not b_next!14057) (not b_next!14063) b_and!51541 b_and!51533 (not b_next!14055) b_and!51531 b_and!51527 b_and!51529 (not b_next!14051) (not b_next!14061) b_and!51539 (not b_next!14049) (not b_next!14059) b_and!51535 b_and!51537)
(get-model)

(declare-fun d!187647 () Bool)

(declare-fun validCacheMapUp!38 (MutableMap!566) Bool)

(assert (=> d!187647 (= (valid!576 cacheUp!449) (validCacheMapUp!38 (cache!953 cacheUp!449)))))

(declare-fun bs!66542 () Bool)

(assert (= bs!66542 d!187647))

(declare-fun m!773210 () Bool)

(assert (=> bs!66542 m!773210))

(assert (=> b!527536 d!187647))

(declare-fun d!187649 () Bool)

(declare-fun validCacheMapDown!35 (MutableMap!568) Bool)

(assert (=> d!187649 (= (valid!578 cacheDown!462) (validCacheMapDown!35 (cache!955 cacheDown!462)))))

(declare-fun bs!66543 () Bool)

(assert (= bs!66543 d!187649))

(declare-fun m!773212 () Bool)

(assert (=> bs!66543 m!773212))

(assert (=> b!527563 d!187649))

(declare-fun d!187651 () Bool)

(assert (=> d!187651 (= (isEmpty!3609 rules!1345) ((_ is Nil!4973) rules!1345))))

(assert (=> b!527553 d!187651))

(declare-fun d!187653 () Bool)

(declare-fun c!101094 () Bool)

(assert (=> d!187653 (= c!101094 ((_ is Node!1609) (c!101090 input!747)))))

(declare-fun e!317247 () Bool)

(assert (=> d!187653 (= (inv!6228 (c!101090 input!747)) e!317247)))

(declare-fun b!527575 () Bool)

(declare-fun inv!6232 (Conc!1609) Bool)

(assert (=> b!527575 (= e!317247 (inv!6232 (c!101090 input!747)))))

(declare-fun b!527576 () Bool)

(declare-fun e!317248 () Bool)

(assert (=> b!527576 (= e!317247 e!317248)))

(declare-fun res!223009 () Bool)

(assert (=> b!527576 (= res!223009 (not ((_ is Leaf!2560) (c!101090 input!747))))))

(assert (=> b!527576 (=> res!223009 e!317248)))

(declare-fun b!527577 () Bool)

(declare-fun inv!6233 (Conc!1609) Bool)

(assert (=> b!527577 (= e!317248 (inv!6233 (c!101090 input!747)))))

(assert (= (and d!187653 c!101094) b!527575))

(assert (= (and d!187653 (not c!101094)) b!527576))

(assert (= (and b!527576 (not res!223009)) b!527577))

(declare-fun m!773214 () Bool)

(assert (=> b!527575 m!773214))

(declare-fun m!773216 () Bool)

(assert (=> b!527577 m!773216))

(assert (=> b!527564 d!187653))

(declare-fun d!187655 () Bool)

(declare-fun validCacheMapFurthestNullable!28 (MutableMap!567 BalanceConc!3226) Bool)

(assert (=> d!187655 (= (valid!577 (_4!48 lt!217877)) (validCacheMapFurthestNullable!28 (cache!954 (_4!48 lt!217877)) (totalInput!1751 (_4!48 lt!217877))))))

(declare-fun bs!66544 () Bool)

(assert (= bs!66544 d!187655))

(declare-fun m!773218 () Bool)

(assert (=> bs!66544 m!773218))

(assert (=> b!527545 d!187655))

(declare-fun d!187657 () Bool)

(assert (=> d!187657 (= (array_inv!757 (_keys!888 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))) (bvsge (size!4050 (_keys!888 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!527543 d!187657))

(declare-fun d!187659 () Bool)

(assert (=> d!187659 (= (array_inv!758 (_values!873 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))) (bvsge (size!4049 (_values!873 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!527543 d!187659))

(declare-fun d!187661 () Bool)

(declare-fun isBalanced!497 (Conc!1609) Bool)

(assert (=> d!187661 (= (inv!6226 (totalInput!1751 cacheFurthestNullable!56)) (isBalanced!497 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))))

(declare-fun bs!66545 () Bool)

(assert (= bs!66545 d!187661))

(declare-fun m!773220 () Bool)

(assert (=> bs!66545 m!773220))

(assert (=> b!527533 d!187661))

(declare-fun d!187663 () Bool)

(assert (=> d!187663 (= (inv!6224 (tag!1155 (h!10374 rules!1345))) (= (mod (str.len (value!30307 (tag!1155 (h!10374 rules!1345)))) 2) 0))))

(assert (=> b!527534 d!187663))

(declare-fun d!187665 () Bool)

(declare-fun res!223012 () Bool)

(declare-fun e!317251 () Bool)

(assert (=> d!187665 (=> (not res!223012) (not e!317251))))

(declare-fun semiInverseModEq!357 (Int Int) Bool)

(assert (=> d!187665 (= res!223012 (semiInverseModEq!357 (toChars!1589 (transformation!893 (h!10374 rules!1345))) (toValue!1730 (transformation!893 (h!10374 rules!1345)))))))

(assert (=> d!187665 (= (inv!6227 (transformation!893 (h!10374 rules!1345))) e!317251)))

(declare-fun b!527580 () Bool)

(declare-fun equivClasses!340 (Int Int) Bool)

(assert (=> b!527580 (= e!317251 (equivClasses!340 (toChars!1589 (transformation!893 (h!10374 rules!1345))) (toValue!1730 (transformation!893 (h!10374 rules!1345)))))))

(assert (= (and d!187665 res!223012) b!527580))

(declare-fun m!773222 () Bool)

(assert (=> d!187665 m!773222))

(declare-fun m!773224 () Bool)

(assert (=> b!527580 m!773224))

(assert (=> b!527534 d!187665))

(declare-fun d!187667 () Bool)

(assert (=> d!187667 (= (valid!578 (_3!255 lt!217877)) (validCacheMapDown!35 (cache!955 (_3!255 lt!217877))))))

(declare-fun bs!66546 () Bool)

(assert (= bs!66546 d!187667))

(declare-fun m!773226 () Bool)

(assert (=> bs!66546 m!773226))

(assert (=> b!527561 d!187667))

(declare-fun d!187669 () Bool)

(assert (=> d!187669 (= (array_inv!757 (_keys!890 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))) (bvsge (size!4050 (_keys!890 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!527567 d!187669))

(declare-fun d!187671 () Bool)

(assert (=> d!187671 (= (array_inv!760 (_values!875 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))) (bvsge (size!4052 (_values!875 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!527567 d!187671))

(declare-fun d!187673 () Bool)

(assert (=> d!187673 (= (valid!577 cacheFurthestNullable!56) (validCacheMapFurthestNullable!28 (cache!954 cacheFurthestNullable!56) (totalInput!1751 cacheFurthestNullable!56)))))

(declare-fun bs!66547 () Bool)

(assert (= bs!66547 d!187673))

(declare-fun m!773228 () Bool)

(assert (=> bs!66547 m!773228))

(assert (=> b!527532 d!187673))

(declare-fun d!187675 () Bool)

(assert (=> d!187675 (= (valid!576 (_2!3322 lt!217877)) (validCacheMapUp!38 (cache!953 (_2!3322 lt!217877))))))

(declare-fun bs!66548 () Bool)

(assert (= bs!66548 d!187675))

(declare-fun m!773230 () Bool)

(assert (=> bs!66548 m!773230))

(assert (=> b!527531 d!187675))

(declare-fun d!187677 () Bool)

(declare-fun list!2070 (Conc!1609) List!4979)

(assert (=> d!187677 (= (list!2068 (_2!3321 (_1!3322 lt!217877))) (list!2070 (c!101090 (_2!3321 (_1!3322 lt!217877)))))))

(declare-fun bs!66549 () Bool)

(assert (= bs!66549 d!187677))

(declare-fun m!773232 () Bool)

(assert (=> bs!66549 m!773232))

(assert (=> b!527537 d!187677))

(declare-fun d!187679 () Bool)

(assert (=> d!187679 (= (list!2068 (_2!3321 lt!217879)) (list!2070 (c!101090 (_2!3321 lt!217879))))))

(declare-fun bs!66550 () Bool)

(assert (= bs!66550 d!187679))

(declare-fun m!773234 () Bool)

(assert (=> bs!66550 m!773234))

(assert (=> b!527537 d!187679))

(declare-fun d!187681 () Bool)

(assert (=> d!187681 (= (array_inv!757 (_keys!889 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))) (bvsge (size!4050 (_keys!889 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!527554 d!187681))

(declare-fun d!187683 () Bool)

(assert (=> d!187683 (= (array_inv!759 (_values!874 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))) (bvsge (size!4051 (_values!874 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!527554 d!187683))

(declare-fun d!187685 () Bool)

(declare-fun c!101095 () Bool)

(assert (=> d!187685 (= c!101095 ((_ is Node!1609) (c!101090 (totalInput!1751 cacheFurthestNullable!56))))))

(declare-fun e!317252 () Bool)

(assert (=> d!187685 (= (inv!6228 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) e!317252)))

(declare-fun b!527581 () Bool)

(assert (=> b!527581 (= e!317252 (inv!6232 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))))

(declare-fun b!527582 () Bool)

(declare-fun e!317253 () Bool)

(assert (=> b!527582 (= e!317252 e!317253)))

(declare-fun res!223013 () Bool)

(assert (=> b!527582 (= res!223013 (not ((_ is Leaf!2560) (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(assert (=> b!527582 (=> res!223013 e!317253)))

(declare-fun b!527583 () Bool)

(assert (=> b!527583 (= e!317253 (inv!6233 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))))

(assert (= (and d!187685 c!101095) b!527581))

(assert (= (and d!187685 (not c!101095)) b!527582))

(assert (= (and b!527582 (not res!223013)) b!527583))

(declare-fun m!773236 () Bool)

(assert (=> b!527581 m!773236))

(declare-fun m!773238 () Bool)

(assert (=> b!527583 m!773238))

(assert (=> b!527539 d!187685))

(declare-fun d!187687 () Bool)

(assert (=> d!187687 (= (inv!6226 input!747) (isBalanced!497 (c!101090 input!747)))))

(declare-fun bs!66551 () Bool)

(assert (= bs!66551 d!187687))

(declare-fun m!773240 () Bool)

(assert (=> bs!66551 m!773240))

(assert (=> start!48334 d!187687))

(declare-fun d!187689 () Bool)

(declare-fun res!223016 () Bool)

(declare-fun e!317256 () Bool)

(assert (=> d!187689 (=> (not res!223016) (not e!317256))))

(assert (=> d!187689 (= res!223016 ((_ is HashMap!568) (cache!955 cacheDown!462)))))

(assert (=> d!187689 (= (inv!6229 cacheDown!462) e!317256)))

(declare-fun b!527586 () Bool)

(assert (=> b!527586 (= e!317256 (validCacheMapDown!35 (cache!955 cacheDown!462)))))

(assert (= (and d!187689 res!223016) b!527586))

(assert (=> b!527586 m!773212))

(assert (=> start!48334 d!187689))

(declare-fun d!187691 () Bool)

(declare-fun res!223019 () Bool)

(declare-fun e!317259 () Bool)

(assert (=> d!187691 (=> (not res!223019) (not e!317259))))

(assert (=> d!187691 (= res!223019 ((_ is HashMap!567) (cache!954 cacheFurthestNullable!56)))))

(assert (=> d!187691 (= (inv!6230 cacheFurthestNullable!56) e!317259)))

(declare-fun b!527589 () Bool)

(assert (=> b!527589 (= e!317259 (validCacheMapFurthestNullable!28 (cache!954 cacheFurthestNullable!56) (totalInput!1751 cacheFurthestNullable!56)))))

(assert (= (and d!187691 res!223019) b!527589))

(assert (=> b!527589 m!773228))

(assert (=> start!48334 d!187691))

(declare-fun d!187693 () Bool)

(declare-fun res!223022 () Bool)

(declare-fun e!317262 () Bool)

(assert (=> d!187693 (=> (not res!223022) (not e!317262))))

(assert (=> d!187693 (= res!223022 ((_ is HashMap!566) (cache!953 cacheUp!449)))))

(assert (=> d!187693 (= (inv!6231 cacheUp!449) e!317262)))

(declare-fun b!527592 () Bool)

(assert (=> b!527592 (= e!317262 (validCacheMapUp!38 (cache!953 cacheUp!449)))))

(assert (= (and d!187693 res!223022) b!527592))

(assert (=> b!527592 m!773210))

(assert (=> start!48334 d!187693))

(declare-fun d!187695 () Bool)

(declare-fun list!2071 (Conc!1610) List!4982)

(assert (=> d!187695 (= (list!2069 (_1!3321 (_1!3322 lt!217877))) (list!2071 (c!101091 (_1!3321 (_1!3322 lt!217877)))))))

(declare-fun bs!66552 () Bool)

(assert (= bs!66552 d!187695))

(declare-fun m!773242 () Bool)

(assert (=> bs!66552 m!773242))

(assert (=> b!527548 d!187695))

(declare-fun d!187697 () Bool)

(assert (=> d!187697 (= (list!2069 (_1!3321 lt!217879)) (list!2071 (c!101091 (_1!3321 lt!217879))))))

(declare-fun bs!66553 () Bool)

(assert (= bs!66553 d!187697))

(declare-fun m!773244 () Bool)

(assert (=> bs!66553 m!773244))

(assert (=> b!527548 d!187697))

(declare-fun d!187699 () Bool)

(declare-fun e!317270 () Bool)

(assert (=> d!187699 e!317270))

(declare-fun res!223031 () Bool)

(assert (=> d!187699 (=> (not res!223031) (not e!317270))))

(declare-fun e!317269 () Bool)

(assert (=> d!187699 (= res!223031 e!317269)))

(declare-fun c!101099 () Bool)

(declare-fun lt!217882 () tuple2!6132)

(declare-fun size!4054 (BalanceConc!3228) Int)

(assert (=> d!187699 (= c!101099 (> (size!4054 (_1!3321 lt!217882)) 0))))

(declare-fun lexTailRecV2!267 (LexerInterface!779 List!4983 BalanceConc!3226 BalanceConc!3226 BalanceConc!3226 BalanceConc!3228) tuple2!6132)

(assert (=> d!187699 (= lt!217882 (lexTailRecV2!267 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610)))))

(assert (=> d!187699 (= (lex!558 thiss!12147 rules!1345 input!747) lt!217882)))

(declare-fun b!527603 () Bool)

(declare-datatypes ((tuple2!6134 0))(
  ( (tuple2!6135 (_1!3323 List!4982) (_2!3323 List!4979)) )
))
(declare-fun lexList!305 (LexerInterface!779 List!4983 List!4979) tuple2!6134)

(assert (=> b!527603 (= e!317270 (= (list!2068 (_2!3321 lt!217882)) (_2!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 input!747)))))))

(declare-fun b!527604 () Bool)

(declare-fun e!317271 () Bool)

(declare-fun isEmpty!3610 (BalanceConc!3228) Bool)

(assert (=> b!527604 (= e!317271 (not (isEmpty!3610 (_1!3321 lt!217882))))))

(declare-fun b!527605 () Bool)

(assert (=> b!527605 (= e!317269 (= (_2!3321 lt!217882) input!747))))

(declare-fun b!527606 () Bool)

(assert (=> b!527606 (= e!317269 e!317271)))

(declare-fun res!223030 () Bool)

(declare-fun size!4055 (BalanceConc!3226) Int)

(assert (=> b!527606 (= res!223030 (< (size!4055 (_2!3321 lt!217882)) (size!4055 input!747)))))

(assert (=> b!527606 (=> (not res!223030) (not e!317271))))

(declare-fun b!527607 () Bool)

(declare-fun res!223029 () Bool)

(assert (=> b!527607 (=> (not res!223029) (not e!317270))))

(assert (=> b!527607 (= res!223029 (= (list!2069 (_1!3321 lt!217882)) (_1!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 input!747)))))))

(assert (= (and d!187699 c!101099) b!527606))

(assert (= (and d!187699 (not c!101099)) b!527605))

(assert (= (and b!527606 res!223030) b!527604))

(assert (= (and d!187699 res!223031) b!527607))

(assert (= (and b!527607 res!223029) b!527603))

(declare-fun m!773246 () Bool)

(assert (=> b!527603 m!773246))

(declare-fun m!773248 () Bool)

(assert (=> b!527603 m!773248))

(assert (=> b!527603 m!773248))

(declare-fun m!773250 () Bool)

(assert (=> b!527603 m!773250))

(declare-fun m!773252 () Bool)

(assert (=> b!527604 m!773252))

(declare-fun m!773254 () Bool)

(assert (=> b!527607 m!773254))

(assert (=> b!527607 m!773248))

(assert (=> b!527607 m!773248))

(assert (=> b!527607 m!773250))

(declare-fun m!773256 () Bool)

(assert (=> b!527606 m!773256))

(declare-fun m!773258 () Bool)

(assert (=> b!527606 m!773258))

(declare-fun m!773260 () Bool)

(assert (=> d!187699 m!773260))

(declare-fun m!773262 () Bool)

(assert (=> d!187699 m!773262))

(assert (=> b!527548 d!187699))

(declare-fun b!527630 () Bool)

(declare-fun res!223045 () Bool)

(declare-fun e!317281 () Bool)

(assert (=> b!527630 (=> (not res!223045) (not e!317281))))

(declare-fun lt!217967 () tuple4!96)

(assert (=> b!527630 (= res!223045 (valid!576 (_2!3322 lt!217967)))))

(declare-fun b!527631 () Bool)

(declare-fun e!317283 () tuple4!96)

(declare-fun lt!217960 () tuple4!96)

(assert (=> b!527631 (= e!317283 (tuple4!97 (_1!3322 lt!217960) (_2!3322 lt!217960) (_3!255 lt!217960) (_4!48 lt!217960)))))

(declare-datatypes ((tuple2!6136 0))(
  ( (tuple2!6137 (_1!3324 Token!1522) (_2!3324 BalanceConc!3226)) )
))
(declare-datatypes ((Option!1248 0))(
  ( (None!1247) (Some!1247 (v!16038 tuple2!6136)) )
))
(declare-datatypes ((tuple4!98 0))(
  ( (tuple4!99 (_1!3325 Option!1248) (_2!3325 CacheUp!236) (_3!256 CacheDown!220) (_4!49 CacheFurthestNullable!176)) )
))
(declare-fun lt!217977 () tuple4!98)

(declare-fun lt!217968 () tuple2!6132)

(declare-fun lexRec!143 (LexerInterface!779 List!4983 BalanceConc!3226) tuple2!6132)

(assert (=> b!527631 (= lt!217968 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 (_1!3325 lt!217977)))))))

(declare-fun lt!217964 () List!4979)

(assert (=> b!527631 (= lt!217964 (list!2068 (BalanceConc!3227 Empty!1609)))))

(declare-fun lt!217981 () List!4979)

(declare-fun charsOf!522 (Token!1522) BalanceConc!3226)

(assert (=> b!527631 (= lt!217981 (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(declare-fun lt!217953 () List!4979)

(assert (=> b!527631 (= lt!217953 (list!2068 (_2!3324 (v!16038 (_1!3325 lt!217977)))))))

(declare-datatypes ((Unit!8805 0))(
  ( (Unit!8806) )
))
(declare-fun lt!217971 () Unit!8805)

(declare-fun lemmaConcatAssociativity!619 (List!4979 List!4979 List!4979) Unit!8805)

(assert (=> b!527631 (= lt!217971 (lemmaConcatAssociativity!619 lt!217964 lt!217981 lt!217953))))

(declare-fun ++!1378 (List!4979 List!4979) List!4979)

(assert (=> b!527631 (= (++!1378 (++!1378 lt!217964 lt!217981) lt!217953) (++!1378 lt!217964 (++!1378 lt!217981 lt!217953)))))

(declare-fun lt!217955 () Unit!8805)

(assert (=> b!527631 (= lt!217955 lt!217971)))

(declare-fun lt!217984 () Option!1248)

(declare-fun maxPrefixZipperSequence!446 (LexerInterface!779 List!4983 BalanceConc!3226) Option!1248)

(assert (=> b!527631 (= lt!217984 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 input!747))))

(declare-fun c!101106 () Bool)

(assert (=> b!527631 (= c!101106 ((_ is Some!1247) lt!217984))))

(declare-fun e!317280 () tuple2!6132)

(assert (=> b!527631 (= (lexRec!143 thiss!12147 rules!1345 input!747) e!317280)))

(declare-fun lt!217980 () Unit!8805)

(declare-fun Unit!8807 () Unit!8805)

(assert (=> b!527631 (= lt!217980 Unit!8807)))

(declare-fun lt!217962 () List!4982)

(assert (=> b!527631 (= lt!217962 (list!2069 (BalanceConc!3229 Empty!1610)))))

(declare-fun lt!217966 () List!4982)

(assert (=> b!527631 (= lt!217966 (Cons!4972 (_1!3324 (v!16038 (_1!3325 lt!217977))) Nil!4972))))

(declare-fun lt!217965 () List!4982)

(assert (=> b!527631 (= lt!217965 (list!2069 (_1!3321 lt!217968)))))

(declare-fun lt!217958 () Unit!8805)

(declare-fun lemmaConcatAssociativity!620 (List!4982 List!4982 List!4982) Unit!8805)

(assert (=> b!527631 (= lt!217958 (lemmaConcatAssociativity!620 lt!217962 lt!217966 lt!217965))))

(declare-fun ++!1379 (List!4982 List!4982) List!4982)

(assert (=> b!527631 (= (++!1379 (++!1379 lt!217962 lt!217966) lt!217965) (++!1379 lt!217962 (++!1379 lt!217966 lt!217965)))))

(declare-fun lt!217979 () Unit!8805)

(assert (=> b!527631 (= lt!217979 lt!217958)))

(declare-fun lt!217969 () List!4979)

(assert (=> b!527631 (= lt!217969 (++!1378 (list!2068 (BalanceConc!3227 Empty!1609)) (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))))))

(declare-fun lt!217982 () List!4979)

(assert (=> b!527631 (= lt!217982 (list!2068 (_2!3324 (v!16038 (_1!3325 lt!217977)))))))

(declare-fun lt!217961 () List!4982)

(declare-fun append!158 (BalanceConc!3228 Token!1522) BalanceConc!3228)

(assert (=> b!527631 (= lt!217961 (list!2069 (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(declare-fun lt!217973 () Unit!8805)

(declare-fun lemmaLexThenLexPrefix!122 (LexerInterface!779 List!4983 List!4979 List!4979 List!4982 List!4982 List!4979) Unit!8805)

(assert (=> b!527631 (= lt!217973 (lemmaLexThenLexPrefix!122 thiss!12147 rules!1345 lt!217969 lt!217982 lt!217961 (list!2069 (_1!3321 lt!217968)) (list!2068 (_2!3321 lt!217968))))))

(assert (=> b!527631 (= (lexList!305 thiss!12147 rules!1345 lt!217969) (tuple2!6135 lt!217961 Nil!4969))))

(declare-fun lt!217983 () Unit!8805)

(assert (=> b!527631 (= lt!217983 lt!217973)))

(declare-fun lt!217976 () BalanceConc!3226)

(declare-fun ++!1380 (BalanceConc!3226 BalanceConc!3226) BalanceConc!3226)

(assert (=> b!527631 (= lt!217976 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(declare-fun lt!217978 () Option!1248)

(assert (=> b!527631 (= lt!217978 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 lt!217976))))

(declare-fun c!101108 () Bool)

(assert (=> b!527631 (= c!101108 ((_ is Some!1247) lt!217978))))

(declare-fun e!317282 () tuple2!6132)

(assert (=> b!527631 (= (lexRec!143 thiss!12147 rules!1345 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))) e!317282)))

(declare-fun lt!217987 () Unit!8805)

(declare-fun Unit!8808 () Unit!8805)

(assert (=> b!527631 (= lt!217987 Unit!8808)))

(declare-fun lt!217956 () BalanceConc!3226)

(assert (=> b!527631 (= lt!217956 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(declare-fun lt!217986 () List!4979)

(assert (=> b!527631 (= lt!217986 (list!2068 lt!217956))))

(declare-fun lt!217974 () List!4979)

(assert (=> b!527631 (= lt!217974 (list!2068 (_2!3324 (v!16038 (_1!3325 lt!217977)))))))

(declare-fun lt!217954 () Unit!8805)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!120 (List!4979 List!4979) Unit!8805)

(assert (=> b!527631 (= lt!217954 (lemmaConcatTwoListThenFSndIsSuffix!120 lt!217986 lt!217974))))

(declare-fun isSuffix!120 (List!4979 List!4979) Bool)

(assert (=> b!527631 (isSuffix!120 lt!217974 (++!1378 lt!217986 lt!217974))))

(declare-fun lt!217972 () Unit!8805)

(assert (=> b!527631 (= lt!217972 lt!217954)))

(assert (=> b!527631 (= lt!217960 (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 lt!217956 (_2!3324 (v!16038 (_1!3325 lt!217977))) (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977)))) (_2!3325 lt!217977) (_3!256 lt!217977) (_4!49 lt!217977)))))

(declare-fun b!527632 () Bool)

(declare-fun res!223042 () Bool)

(assert (=> b!527632 (=> (not res!223042) (not e!317281))))

(assert (=> b!527632 (= res!223042 (valid!578 (_3!255 lt!217967)))))

(declare-fun b!527633 () Bool)

(declare-fun res!223046 () Bool)

(assert (=> b!527633 (=> (not res!223046) (not e!317281))))

(assert (=> b!527633 (= res!223046 (= (list!2068 (_2!3321 (_1!3322 lt!217967))) (list!2068 (_2!3321 (lexRec!143 thiss!12147 rules!1345 input!747)))))))

(declare-fun b!527634 () Bool)

(assert (=> b!527634 (= e!317282 (tuple2!6133 (BalanceConc!3229 Empty!1610) lt!217976))))

(declare-fun b!527635 () Bool)

(assert (=> b!527635 (= e!317281 (= (totalInput!1751 (_4!48 lt!217967)) input!747))))

(declare-fun lt!217970 () tuple2!6132)

(declare-fun b!527636 () Bool)

(assert (=> b!527636 (= lt!217970 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!217984))))))

(declare-fun prepend!242 (BalanceConc!3228 Token!1522) BalanceConc!3228)

(assert (=> b!527636 (= e!317280 (tuple2!6133 (prepend!242 (_1!3321 lt!217970) (_1!3324 (v!16038 lt!217984))) (_2!3321 lt!217970)))))

(declare-fun b!527637 () Bool)

(declare-fun lt!217975 () tuple2!6132)

(assert (=> b!527637 (= lt!217975 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!217978))))))

(assert (=> b!527637 (= e!317282 (tuple2!6133 (prepend!242 (_1!3321 lt!217975) (_1!3324 (v!16038 lt!217978))) (_2!3321 lt!217975)))))

(declare-fun b!527638 () Bool)

(assert (=> b!527638 (= e!317280 (tuple2!6133 (BalanceConc!3229 Empty!1610) input!747))))

(declare-fun b!527640 () Bool)

(declare-fun res!223044 () Bool)

(assert (=> b!527640 (=> (not res!223044) (not e!317281))))

(assert (=> b!527640 (= res!223044 (valid!577 (_4!48 lt!217967)))))

(declare-fun d!187701 () Bool)

(assert (=> d!187701 e!317281))

(declare-fun res!223043 () Bool)

(assert (=> d!187701 (=> (not res!223043) (not e!317281))))

(assert (=> d!187701 (= res!223043 (= (list!2069 (_1!3321 (_1!3322 lt!217967))) (list!2069 (_1!3321 (lexRec!143 thiss!12147 rules!1345 input!747)))))))

(assert (=> d!187701 (= lt!217967 e!317283)))

(declare-fun c!101107 () Bool)

(assert (=> d!187701 (= c!101107 ((_ is Some!1247) (_1!3325 lt!217977)))))

(declare-fun maxPrefixZipperSequenceV3Mem!3 (LexerInterface!779 List!4983 BalanceConc!3226 BalanceConc!3226 CacheUp!236 CacheDown!220 CacheFurthestNullable!176) tuple4!98)

(assert (=> d!187701 (= lt!217977 (maxPrefixZipperSequenceV3Mem!3 thiss!12147 rules!1345 input!747 input!747 cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))

(declare-fun lt!217963 () Unit!8805)

(declare-fun lt!217957 () Unit!8805)

(assert (=> d!187701 (= lt!217963 lt!217957)))

(declare-fun lt!217985 () List!4979)

(declare-fun lt!217959 () List!4979)

(assert (=> d!187701 (isSuffix!120 lt!217985 (++!1378 lt!217959 lt!217985))))

(assert (=> d!187701 (= lt!217957 (lemmaConcatTwoListThenFSndIsSuffix!120 lt!217959 lt!217985))))

(assert (=> d!187701 (= lt!217985 (list!2068 input!747))))

(assert (=> d!187701 (= lt!217959 (list!2068 (BalanceConc!3227 Empty!1609)))))

(assert (=> d!187701 (= (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610) cacheUp!449 cacheDown!462 cacheFurthestNullable!56) lt!217967)))

(declare-fun b!527639 () Bool)

(assert (=> b!527639 (= e!317283 (tuple4!97 (tuple2!6133 (BalanceConc!3229 Empty!1610) input!747) (_2!3325 lt!217977) (_3!256 lt!217977) (_4!49 lt!217977)))))

(assert (= (and d!187701 c!101107) b!527631))

(assert (= (and d!187701 (not c!101107)) b!527639))

(assert (= (and b!527631 c!101106) b!527636))

(assert (= (and b!527631 (not c!101106)) b!527638))

(assert (= (and b!527631 c!101108) b!527637))

(assert (= (and b!527631 (not c!101108)) b!527634))

(assert (= (and d!187701 res!223043) b!527633))

(assert (= (and b!527633 res!223046) b!527640))

(assert (= (and b!527640 res!223044) b!527630))

(assert (= (and b!527630 res!223045) b!527632))

(assert (= (and b!527632 res!223042) b!527635))

(declare-fun m!773264 () Bool)

(assert (=> b!527637 m!773264))

(declare-fun m!773266 () Bool)

(assert (=> b!527637 m!773266))

(declare-fun m!773268 () Bool)

(assert (=> b!527630 m!773268))

(declare-fun m!773270 () Bool)

(assert (=> b!527636 m!773270))

(declare-fun m!773272 () Bool)

(assert (=> b!527636 m!773272))

(declare-fun m!773274 () Bool)

(assert (=> b!527633 m!773274))

(declare-fun m!773276 () Bool)

(assert (=> b!527633 m!773276))

(declare-fun m!773278 () Bool)

(assert (=> b!527633 m!773278))

(declare-fun m!773280 () Bool)

(assert (=> b!527632 m!773280))

(declare-fun m!773282 () Bool)

(assert (=> b!527631 m!773282))

(declare-fun m!773284 () Bool)

(assert (=> b!527631 m!773284))

(declare-fun m!773286 () Bool)

(assert (=> b!527631 m!773286))

(declare-fun m!773288 () Bool)

(assert (=> b!527631 m!773288))

(declare-fun m!773290 () Bool)

(assert (=> b!527631 m!773290))

(declare-fun m!773292 () Bool)

(assert (=> b!527631 m!773292))

(declare-fun m!773294 () Bool)

(assert (=> b!527631 m!773294))

(declare-fun m!773296 () Bool)

(assert (=> b!527631 m!773296))

(declare-fun m!773298 () Bool)

(assert (=> b!527631 m!773298))

(declare-fun m!773300 () Bool)

(assert (=> b!527631 m!773300))

(declare-fun m!773302 () Bool)

(assert (=> b!527631 m!773302))

(declare-fun m!773304 () Bool)

(assert (=> b!527631 m!773304))

(declare-fun m!773306 () Bool)

(assert (=> b!527631 m!773306))

(declare-fun m!773308 () Bool)

(assert (=> b!527631 m!773308))

(declare-fun m!773310 () Bool)

(assert (=> b!527631 m!773310))

(assert (=> b!527631 m!773282))

(declare-fun m!773312 () Bool)

(assert (=> b!527631 m!773312))

(declare-fun m!773314 () Bool)

(assert (=> b!527631 m!773314))

(assert (=> b!527631 m!773296))

(declare-fun m!773316 () Bool)

(assert (=> b!527631 m!773316))

(assert (=> b!527631 m!773288))

(declare-fun m!773318 () Bool)

(assert (=> b!527631 m!773318))

(declare-fun m!773320 () Bool)

(assert (=> b!527631 m!773320))

(declare-fun m!773322 () Bool)

(assert (=> b!527631 m!773322))

(declare-fun m!773324 () Bool)

(assert (=> b!527631 m!773324))

(assert (=> b!527631 m!773316))

(assert (=> b!527631 m!773302))

(assert (=> b!527631 m!773312))

(assert (=> b!527631 m!773282))

(declare-fun m!773326 () Bool)

(assert (=> b!527631 m!773326))

(assert (=> b!527631 m!773304))

(declare-fun m!773328 () Bool)

(assert (=> b!527631 m!773328))

(declare-fun m!773330 () Bool)

(assert (=> b!527631 m!773330))

(assert (=> b!527631 m!773322))

(declare-fun m!773332 () Bool)

(assert (=> b!527631 m!773332))

(declare-fun m!773334 () Bool)

(assert (=> b!527631 m!773334))

(declare-fun m!773336 () Bool)

(assert (=> b!527631 m!773336))

(declare-fun m!773338 () Bool)

(assert (=> b!527631 m!773338))

(assert (=> b!527631 m!773300))

(declare-fun m!773340 () Bool)

(assert (=> b!527631 m!773340))

(declare-fun m!773342 () Bool)

(assert (=> b!527631 m!773342))

(assert (=> b!527631 m!773276))

(assert (=> b!527631 m!773316))

(assert (=> b!527631 m!773332))

(assert (=> b!527631 m!773308))

(assert (=> b!527631 m!773286))

(declare-fun m!773344 () Bool)

(assert (=> b!527631 m!773344))

(declare-fun m!773346 () Bool)

(assert (=> b!527640 m!773346))

(assert (=> d!187701 m!773322))

(declare-fun m!773348 () Bool)

(assert (=> d!187701 m!773348))

(assert (=> d!187701 m!773248))

(declare-fun m!773350 () Bool)

(assert (=> d!187701 m!773350))

(declare-fun m!773352 () Bool)

(assert (=> d!187701 m!773352))

(declare-fun m!773354 () Bool)

(assert (=> d!187701 m!773354))

(assert (=> d!187701 m!773276))

(assert (=> d!187701 m!773354))

(declare-fun m!773356 () Bool)

(assert (=> d!187701 m!773356))

(declare-fun m!773358 () Bool)

(assert (=> d!187701 m!773358))

(assert (=> b!527548 d!187701))

(declare-fun d!187703 () Bool)

(declare-fun res!223049 () Bool)

(declare-fun e!317286 () Bool)

(assert (=> d!187703 (=> (not res!223049) (not e!317286))))

(declare-fun rulesValid!322 (LexerInterface!779 List!4983) Bool)

(assert (=> d!187703 (= res!223049 (rulesValid!322 thiss!12147 rules!1345))))

(assert (=> d!187703 (= (rulesInvariant!742 thiss!12147 rules!1345) e!317286)))

(declare-fun b!527643 () Bool)

(declare-datatypes ((List!4984 0))(
  ( (Nil!4974) (Cons!4974 (h!10375 String!6317) (t!73596 List!4984)) )
))
(declare-fun noDuplicateTag!322 (LexerInterface!779 List!4983 List!4984) Bool)

(assert (=> b!527643 (= e!317286 (noDuplicateTag!322 thiss!12147 rules!1345 Nil!4974))))

(assert (= (and d!187703 res!223049) b!527643))

(declare-fun m!773360 () Bool)

(assert (=> d!187703 m!773360))

(declare-fun m!773362 () Bool)

(assert (=> b!527643 m!773362))

(assert (=> b!527566 d!187703))

(declare-fun tp!167242 () Bool)

(declare-fun tp!167240 () Bool)

(declare-fun e!317291 () Bool)

(declare-fun b!527652 () Bool)

(assert (=> b!527652 (= e!317291 (and (inv!6228 (left!4223 (c!101090 input!747))) tp!167242 (inv!6228 (right!4553 (c!101090 input!747))) tp!167240))))

(declare-fun b!527654 () Bool)

(declare-fun e!317292 () Bool)

(declare-fun tp!167241 () Bool)

(assert (=> b!527654 (= e!317292 tp!167241)))

(declare-fun b!527653 () Bool)

(declare-fun inv!6234 (IArray!3219) Bool)

(assert (=> b!527653 (= e!317291 (and (inv!6234 (xs!4246 (c!101090 input!747))) e!317292))))

(assert (=> b!527564 (= tp!167214 (and (inv!6228 (c!101090 input!747)) e!317291))))

(assert (= (and b!527564 ((_ is Node!1609) (c!101090 input!747))) b!527652))

(assert (= b!527653 b!527654))

(assert (= (and b!527564 ((_ is Leaf!2560) (c!101090 input!747))) b!527653))

(declare-fun m!773364 () Bool)

(assert (=> b!527652 m!773364))

(declare-fun m!773366 () Bool)

(assert (=> b!527652 m!773366))

(declare-fun m!773368 () Bool)

(assert (=> b!527653 m!773368))

(assert (=> b!527564 m!773164))

(declare-fun setElem!2591 () Context!318)

(declare-fun tp!167267 () Bool)

(declare-fun setRes!2592 () Bool)

(declare-fun e!317307 () Bool)

(declare-fun setNonEmpty!2591 () Bool)

(declare-fun inv!6235 (Context!318) Bool)

(assert (=> setNonEmpty!2591 (= setRes!2592 (and tp!167267 (inv!6235 setElem!2591) e!317307))))

(declare-fun mapDefault!2345 () List!4977)

(declare-fun setRest!2592 () (InoxSet Context!318))

(assert (=> setNonEmpty!2591 (= (_2!3316 (h!10368 mapDefault!2345)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2591 true) setRest!2592))))

(declare-fun b!527669 () Bool)

(declare-fun tp!167268 () Bool)

(declare-fun e!317309 () Bool)

(declare-fun e!317306 () Bool)

(declare-fun tp_is_empty!2799 () Bool)

(assert (=> b!527669 (= e!317306 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 mapDefault!2345)))) e!317309 tp_is_empty!2799 setRes!2592 tp!167268))))

(declare-fun condSetEmpty!2591 () Bool)

(assert (=> b!527669 (= condSetEmpty!2591 (= (_2!3316 (h!10368 mapDefault!2345)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun e!317308 () Bool)

(declare-fun b!527670 () Bool)

(declare-fun tp!167266 () Bool)

(declare-fun e!317310 () Bool)

(declare-fun setRes!2591 () Bool)

(declare-fun mapValue!2345 () List!4977)

(assert (=> b!527670 (= e!317310 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 mapValue!2345)))) e!317308 tp_is_empty!2799 setRes!2591 tp!167266))))

(declare-fun condSetEmpty!2592 () Bool)

(assert (=> b!527670 (= condSetEmpty!2592 (= (_2!3316 (h!10368 mapValue!2345)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun condMapEmpty!2345 () Bool)

(assert (=> mapNonEmpty!2342 (= condMapEmpty!2345 (= mapRest!2341 ((as const (Array (_ BitVec 32) List!4977)) mapDefault!2345)))))

(declare-fun mapRes!2345 () Bool)

(assert (=> mapNonEmpty!2342 (= tp!167219 (and e!317306 mapRes!2345))))

(declare-fun setElem!2592 () Context!318)

(declare-fun tp!167265 () Bool)

(declare-fun e!317305 () Bool)

(declare-fun setNonEmpty!2592 () Bool)

(assert (=> setNonEmpty!2592 (= setRes!2591 (and tp!167265 (inv!6235 setElem!2592) e!317305))))

(declare-fun setRest!2591 () (InoxSet Context!318))

(assert (=> setNonEmpty!2592 (= (_2!3316 (h!10368 mapValue!2345)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2592 true) setRest!2591))))

(declare-fun mapIsEmpty!2345 () Bool)

(assert (=> mapIsEmpty!2345 mapRes!2345))

(declare-fun b!527671 () Bool)

(declare-fun tp!167269 () Bool)

(assert (=> b!527671 (= e!317305 tp!167269)))

(declare-fun setIsEmpty!2591 () Bool)

(assert (=> setIsEmpty!2591 setRes!2592))

(declare-fun b!527672 () Bool)

(declare-fun tp!167261 () Bool)

(assert (=> b!527672 (= e!317308 tp!167261)))

(declare-fun b!527673 () Bool)

(declare-fun tp!167264 () Bool)

(assert (=> b!527673 (= e!317309 tp!167264)))

(declare-fun b!527674 () Bool)

(declare-fun tp!167263 () Bool)

(assert (=> b!527674 (= e!317307 tp!167263)))

(declare-fun setIsEmpty!2592 () Bool)

(assert (=> setIsEmpty!2592 setRes!2591))

(declare-fun mapNonEmpty!2345 () Bool)

(declare-fun tp!167262 () Bool)

(assert (=> mapNonEmpty!2345 (= mapRes!2345 (and tp!167262 e!317310))))

(declare-fun mapKey!2345 () (_ BitVec 32))

(declare-fun mapRest!2345 () (Array (_ BitVec 32) List!4977))

(assert (=> mapNonEmpty!2345 (= mapRest!2341 (store mapRest!2345 mapKey!2345 mapValue!2345))))

(assert (= (and mapNonEmpty!2342 condMapEmpty!2345) mapIsEmpty!2345))

(assert (= (and mapNonEmpty!2342 (not condMapEmpty!2345)) mapNonEmpty!2345))

(assert (= b!527670 b!527672))

(assert (= (and b!527670 condSetEmpty!2592) setIsEmpty!2592))

(assert (= (and b!527670 (not condSetEmpty!2592)) setNonEmpty!2592))

(assert (= setNonEmpty!2592 b!527671))

(assert (= (and mapNonEmpty!2345 ((_ is Cons!4967) mapValue!2345)) b!527670))

(assert (= b!527669 b!527673))

(assert (= (and b!527669 condSetEmpty!2591) setIsEmpty!2591))

(assert (= (and b!527669 (not condSetEmpty!2591)) setNonEmpty!2591))

(assert (= setNonEmpty!2591 b!527674))

(assert (= (and mapNonEmpty!2342 ((_ is Cons!4967) mapDefault!2345)) b!527669))

(declare-fun m!773370 () Bool)

(assert (=> b!527669 m!773370))

(declare-fun m!773372 () Bool)

(assert (=> setNonEmpty!2591 m!773372))

(declare-fun m!773374 () Bool)

(assert (=> b!527670 m!773374))

(declare-fun m!773376 () Bool)

(assert (=> mapNonEmpty!2345 m!773376))

(declare-fun m!773378 () Bool)

(assert (=> setNonEmpty!2592 m!773378))

(declare-fun tp!167281 () Bool)

(declare-fun setRes!2595 () Bool)

(declare-fun e!317319 () Bool)

(declare-fun e!317318 () Bool)

(declare-fun b!527683 () Bool)

(assert (=> b!527683 (= e!317318 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 mapValue!2340)))) e!317319 tp_is_empty!2799 setRes!2595 tp!167281))))

(declare-fun condSetEmpty!2595 () Bool)

(assert (=> b!527683 (= condSetEmpty!2595 (= (_2!3316 (h!10368 mapValue!2340)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!527684 () Bool)

(declare-fun tp!167280 () Bool)

(assert (=> b!527684 (= e!317319 tp!167280)))

(declare-fun setIsEmpty!2595 () Bool)

(assert (=> setIsEmpty!2595 setRes!2595))

(assert (=> mapNonEmpty!2342 (= tp!167217 e!317318)))

(declare-fun e!317317 () Bool)

(declare-fun setElem!2595 () Context!318)

(declare-fun setNonEmpty!2595 () Bool)

(declare-fun tp!167279 () Bool)

(assert (=> setNonEmpty!2595 (= setRes!2595 (and tp!167279 (inv!6235 setElem!2595) e!317317))))

(declare-fun setRest!2595 () (InoxSet Context!318))

(assert (=> setNonEmpty!2595 (= (_2!3316 (h!10368 mapValue!2340)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2595 true) setRest!2595))))

(declare-fun b!527685 () Bool)

(declare-fun tp!167278 () Bool)

(assert (=> b!527685 (= e!317317 tp!167278)))

(assert (= b!527683 b!527684))

(assert (= (and b!527683 condSetEmpty!2595) setIsEmpty!2595))

(assert (= (and b!527683 (not condSetEmpty!2595)) setNonEmpty!2595))

(assert (= setNonEmpty!2595 b!527685))

(assert (= (and mapNonEmpty!2342 ((_ is Cons!4967) mapValue!2340)) b!527683))

(declare-fun m!773380 () Bool)

(assert (=> b!527683 m!773380))

(declare-fun m!773382 () Bool)

(assert (=> setNonEmpty!2595 m!773382))

(declare-fun b!527686 () Bool)

(declare-fun e!317322 () Bool)

(declare-fun e!317321 () Bool)

(declare-fun tp!167285 () Bool)

(declare-fun setRes!2596 () Bool)

(assert (=> b!527686 (= e!317321 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))))) e!317322 tp_is_empty!2799 setRes!2596 tp!167285))))

(declare-fun condSetEmpty!2596 () Bool)

(assert (=> b!527686 (= condSetEmpty!2596 (= (_2!3316 (h!10368 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!527687 () Bool)

(declare-fun tp!167284 () Bool)

(assert (=> b!527687 (= e!317322 tp!167284)))

(declare-fun setIsEmpty!2596 () Bool)

(assert (=> setIsEmpty!2596 setRes!2596))

(assert (=> b!527543 (= tp!167221 e!317321)))

(declare-fun e!317320 () Bool)

(declare-fun setElem!2596 () Context!318)

(declare-fun setNonEmpty!2596 () Bool)

(declare-fun tp!167283 () Bool)

(assert (=> setNonEmpty!2596 (= setRes!2596 (and tp!167283 (inv!6235 setElem!2596) e!317320))))

(declare-fun setRest!2596 () (InoxSet Context!318))

(assert (=> setNonEmpty!2596 (= (_2!3316 (h!10368 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2596 true) setRest!2596))))

(declare-fun b!527688 () Bool)

(declare-fun tp!167282 () Bool)

(assert (=> b!527688 (= e!317320 tp!167282)))

(assert (= b!527686 b!527687))

(assert (= (and b!527686 condSetEmpty!2596) setIsEmpty!2596))

(assert (= (and b!527686 (not condSetEmpty!2596)) setNonEmpty!2596))

(assert (= setNonEmpty!2596 b!527688))

(assert (= (and b!527543 ((_ is Cons!4967) (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))) b!527686))

(declare-fun m!773384 () Bool)

(assert (=> b!527686 m!773384))

(declare-fun m!773386 () Bool)

(assert (=> setNonEmpty!2596 m!773386))

(declare-fun e!317324 () Bool)

(declare-fun tp!167289 () Bool)

(declare-fun e!317325 () Bool)

(declare-fun setRes!2597 () Bool)

(declare-fun b!527689 () Bool)

(assert (=> b!527689 (= e!317324 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))))) e!317325 tp_is_empty!2799 setRes!2597 tp!167289))))

(declare-fun condSetEmpty!2597 () Bool)

(assert (=> b!527689 (= condSetEmpty!2597 (= (_2!3316 (h!10368 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!527690 () Bool)

(declare-fun tp!167288 () Bool)

(assert (=> b!527690 (= e!317325 tp!167288)))

(declare-fun setIsEmpty!2597 () Bool)

(assert (=> setIsEmpty!2597 setRes!2597))

(assert (=> b!527543 (= tp!167232 e!317324)))

(declare-fun setElem!2597 () Context!318)

(declare-fun e!317323 () Bool)

(declare-fun tp!167287 () Bool)

(declare-fun setNonEmpty!2597 () Bool)

(assert (=> setNonEmpty!2597 (= setRes!2597 (and tp!167287 (inv!6235 setElem!2597) e!317323))))

(declare-fun setRest!2597 () (InoxSet Context!318))

(assert (=> setNonEmpty!2597 (= (_2!3316 (h!10368 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2597 true) setRest!2597))))

(declare-fun b!527691 () Bool)

(declare-fun tp!167286 () Bool)

(assert (=> b!527691 (= e!317323 tp!167286)))

(assert (= b!527689 b!527690))

(assert (= (and b!527689 condSetEmpty!2597) setIsEmpty!2597))

(assert (= (and b!527689 (not condSetEmpty!2597)) setNonEmpty!2597))

(assert (= setNonEmpty!2597 b!527691))

(assert (= (and b!527543 ((_ is Cons!4967) (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))) b!527689))

(declare-fun m!773388 () Bool)

(assert (=> b!527689 m!773388))

(declare-fun m!773390 () Bool)

(assert (=> setNonEmpty!2597 m!773390))

(declare-fun setRes!2600 () Bool)

(declare-fun tp!167300 () Bool)

(declare-fun b!527700 () Bool)

(declare-fun tp!167303 () Bool)

(declare-fun e!317334 () Bool)

(declare-fun e!317333 () Bool)

(assert (=> b!527700 (= e!317334 (and tp!167300 (inv!6235 (_2!3319 (_1!3320 (h!10371 mapDefault!2342)))) e!317333 tp_is_empty!2799 setRes!2600 tp!167303))))

(declare-fun condSetEmpty!2600 () Bool)

(assert (=> b!527700 (= condSetEmpty!2600 (= (_2!3320 (h!10371 mapDefault!2342)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun e!317332 () Bool)

(declare-fun tp!167302 () Bool)

(declare-fun setNonEmpty!2600 () Bool)

(declare-fun setElem!2600 () Context!318)

(assert (=> setNonEmpty!2600 (= setRes!2600 (and tp!167302 (inv!6235 setElem!2600) e!317332))))

(declare-fun setRest!2600 () (InoxSet Context!318))

(assert (=> setNonEmpty!2600 (= (_2!3320 (h!10371 mapDefault!2342)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2600 true) setRest!2600))))

(assert (=> b!527551 (= tp!167216 e!317334)))

(declare-fun b!527701 () Bool)

(declare-fun tp!167301 () Bool)

(assert (=> b!527701 (= e!317333 tp!167301)))

(declare-fun b!527702 () Bool)

(declare-fun tp!167304 () Bool)

(assert (=> b!527702 (= e!317332 tp!167304)))

(declare-fun setIsEmpty!2600 () Bool)

(assert (=> setIsEmpty!2600 setRes!2600))

(assert (= b!527700 b!527701))

(assert (= (and b!527700 condSetEmpty!2600) setIsEmpty!2600))

(assert (= (and b!527700 (not condSetEmpty!2600)) setNonEmpty!2600))

(assert (= setNonEmpty!2600 b!527702))

(assert (= (and b!527551 ((_ is Cons!4970) mapDefault!2342)) b!527700))

(declare-fun m!773392 () Bool)

(assert (=> b!527700 m!773392))

(declare-fun m!773394 () Bool)

(assert (=> setNonEmpty!2600 m!773394))

(declare-fun tp!167334 () Bool)

(declare-fun setNonEmpty!2605 () Bool)

(declare-fun setRes!2605 () Bool)

(declare-fun e!317350 () Bool)

(declare-fun setElem!2606 () Context!318)

(assert (=> setNonEmpty!2605 (= setRes!2605 (and tp!167334 (inv!6235 setElem!2606) e!317350))))

(declare-fun mapDefault!2348 () List!4980)

(declare-fun setRest!2606 () (InoxSet Context!318))

(assert (=> setNonEmpty!2605 (= (_2!3320 (h!10371 mapDefault!2348)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2606 true) setRest!2606))))

(declare-fun condMapEmpty!2348 () Bool)

(assert (=> mapNonEmpty!2340 (= condMapEmpty!2348 (= mapRest!2340 ((as const (Array (_ BitVec 32) List!4980)) mapDefault!2348)))))

(declare-fun e!317348 () Bool)

(declare-fun mapRes!2348 () Bool)

(assert (=> mapNonEmpty!2340 (= tp!167222 (and e!317348 mapRes!2348))))

(declare-fun b!527717 () Bool)

(declare-fun e!317351 () Bool)

(declare-fun tp!167335 () Bool)

(assert (=> b!527717 (= e!317351 tp!167335)))

(declare-fun setIsEmpty!2605 () Bool)

(assert (=> setIsEmpty!2605 setRes!2605))

(declare-fun tp!167333 () Bool)

(declare-fun tp!167328 () Bool)

(declare-fun e!317349 () Bool)

(declare-fun b!527718 () Bool)

(declare-fun setRes!2606 () Bool)

(declare-fun mapValue!2348 () List!4980)

(assert (=> b!527718 (= e!317349 (and tp!167333 (inv!6235 (_2!3319 (_1!3320 (h!10371 mapValue!2348)))) e!317351 tp_is_empty!2799 setRes!2606 tp!167328))))

(declare-fun condSetEmpty!2605 () Bool)

(assert (=> b!527718 (= condSetEmpty!2605 (= (_2!3320 (h!10371 mapValue!2348)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun tp!167332 () Bool)

(declare-fun b!527719 () Bool)

(declare-fun e!317352 () Bool)

(declare-fun tp!167331 () Bool)

(assert (=> b!527719 (= e!317348 (and tp!167331 (inv!6235 (_2!3319 (_1!3320 (h!10371 mapDefault!2348)))) e!317352 tp_is_empty!2799 setRes!2605 tp!167332))))

(declare-fun condSetEmpty!2606 () Bool)

(assert (=> b!527719 (= condSetEmpty!2606 (= (_2!3320 (h!10371 mapDefault!2348)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setIsEmpty!2606 () Bool)

(assert (=> setIsEmpty!2606 setRes!2606))

(declare-fun b!527720 () Bool)

(declare-fun tp!167337 () Bool)

(assert (=> b!527720 (= e!317350 tp!167337)))

(declare-fun tp!167327 () Bool)

(declare-fun e!317347 () Bool)

(declare-fun setElem!2605 () Context!318)

(declare-fun setNonEmpty!2606 () Bool)

(assert (=> setNonEmpty!2606 (= setRes!2606 (and tp!167327 (inv!6235 setElem!2605) e!317347))))

(declare-fun setRest!2605 () (InoxSet Context!318))

(assert (=> setNonEmpty!2606 (= (_2!3320 (h!10371 mapValue!2348)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2605 true) setRest!2605))))

(declare-fun b!527721 () Bool)

(declare-fun tp!167329 () Bool)

(assert (=> b!527721 (= e!317352 tp!167329)))

(declare-fun mapNonEmpty!2348 () Bool)

(declare-fun tp!167330 () Bool)

(assert (=> mapNonEmpty!2348 (= mapRes!2348 (and tp!167330 e!317349))))

(declare-fun mapRest!2348 () (Array (_ BitVec 32) List!4980))

(declare-fun mapKey!2348 () (_ BitVec 32))

(assert (=> mapNonEmpty!2348 (= mapRest!2340 (store mapRest!2348 mapKey!2348 mapValue!2348))))

(declare-fun b!527722 () Bool)

(declare-fun tp!167336 () Bool)

(assert (=> b!527722 (= e!317347 tp!167336)))

(declare-fun mapIsEmpty!2348 () Bool)

(assert (=> mapIsEmpty!2348 mapRes!2348))

(assert (= (and mapNonEmpty!2340 condMapEmpty!2348) mapIsEmpty!2348))

(assert (= (and mapNonEmpty!2340 (not condMapEmpty!2348)) mapNonEmpty!2348))

(assert (= b!527718 b!527717))

(assert (= (and b!527718 condSetEmpty!2605) setIsEmpty!2606))

(assert (= (and b!527718 (not condSetEmpty!2605)) setNonEmpty!2606))

(assert (= setNonEmpty!2606 b!527722))

(assert (= (and mapNonEmpty!2348 ((_ is Cons!4970) mapValue!2348)) b!527718))

(assert (= b!527719 b!527721))

(assert (= (and b!527719 condSetEmpty!2606) setIsEmpty!2605))

(assert (= (and b!527719 (not condSetEmpty!2606)) setNonEmpty!2605))

(assert (= setNonEmpty!2605 b!527720))

(assert (= (and mapNonEmpty!2340 ((_ is Cons!4970) mapDefault!2348)) b!527719))

(declare-fun m!773396 () Bool)

(assert (=> b!527718 m!773396))

(declare-fun m!773398 () Bool)

(assert (=> b!527719 m!773398))

(declare-fun m!773400 () Bool)

(assert (=> mapNonEmpty!2348 m!773400))

(declare-fun m!773402 () Bool)

(assert (=> setNonEmpty!2605 m!773402))

(declare-fun m!773404 () Bool)

(assert (=> setNonEmpty!2606 m!773404))

(declare-fun b!527723 () Bool)

(declare-fun e!317354 () Bool)

(declare-fun setRes!2607 () Bool)

(declare-fun tp!167338 () Bool)

(declare-fun e!317355 () Bool)

(declare-fun tp!167341 () Bool)

(assert (=> b!527723 (= e!317355 (and tp!167338 (inv!6235 (_2!3319 (_1!3320 (h!10371 mapValue!2341)))) e!317354 tp_is_empty!2799 setRes!2607 tp!167341))))

(declare-fun condSetEmpty!2607 () Bool)

(assert (=> b!527723 (= condSetEmpty!2607 (= (_2!3320 (h!10371 mapValue!2341)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setElem!2607 () Context!318)

(declare-fun tp!167340 () Bool)

(declare-fun setNonEmpty!2607 () Bool)

(declare-fun e!317353 () Bool)

(assert (=> setNonEmpty!2607 (= setRes!2607 (and tp!167340 (inv!6235 setElem!2607) e!317353))))

(declare-fun setRest!2607 () (InoxSet Context!318))

(assert (=> setNonEmpty!2607 (= (_2!3320 (h!10371 mapValue!2341)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2607 true) setRest!2607))))

(assert (=> mapNonEmpty!2340 (= tp!167227 e!317355)))

(declare-fun b!527724 () Bool)

(declare-fun tp!167339 () Bool)

(assert (=> b!527724 (= e!317354 tp!167339)))

(declare-fun b!527725 () Bool)

(declare-fun tp!167342 () Bool)

(assert (=> b!527725 (= e!317353 tp!167342)))

(declare-fun setIsEmpty!2607 () Bool)

(assert (=> setIsEmpty!2607 setRes!2607))

(assert (= b!527723 b!527724))

(assert (= (and b!527723 condSetEmpty!2607) setIsEmpty!2607))

(assert (= (and b!527723 (not condSetEmpty!2607)) setNonEmpty!2607))

(assert (= setNonEmpty!2607 b!527725))

(assert (= (and mapNonEmpty!2340 ((_ is Cons!4970) mapValue!2341)) b!527723))

(declare-fun m!773406 () Bool)

(assert (=> b!527723 m!773406))

(declare-fun m!773408 () Bool)

(assert (=> setNonEmpty!2607 m!773408))

(declare-fun e!317358 () Bool)

(assert (=> b!527534 (= tp!167210 e!317358)))

(declare-fun b!527738 () Bool)

(declare-fun tp!167357 () Bool)

(assert (=> b!527738 (= e!317358 tp!167357)))

(declare-fun b!527737 () Bool)

(declare-fun tp!167353 () Bool)

(declare-fun tp!167355 () Bool)

(assert (=> b!527737 (= e!317358 (and tp!167353 tp!167355))))

(declare-fun b!527736 () Bool)

(assert (=> b!527736 (= e!317358 tp_is_empty!2799)))

(declare-fun b!527739 () Bool)

(declare-fun tp!167356 () Bool)

(declare-fun tp!167354 () Bool)

(assert (=> b!527739 (= e!317358 (and tp!167356 tp!167354))))

(assert (= (and b!527534 ((_ is ElementMatch!1221) (regex!893 (h!10374 rules!1345)))) b!527736))

(assert (= (and b!527534 ((_ is Concat!2138) (regex!893 (h!10374 rules!1345)))) b!527737))

(assert (= (and b!527534 ((_ is Star!1221) (regex!893 (h!10374 rules!1345)))) b!527738))

(assert (= (and b!527534 ((_ is Union!1221) (regex!893 (h!10374 rules!1345)))) b!527739))

(declare-fun b!527740 () Bool)

(declare-fun e!317360 () Bool)

(declare-fun tp!167361 () Bool)

(declare-fun setRes!2608 () Bool)

(declare-fun e!317361 () Bool)

(assert (=> b!527740 (= e!317360 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 mapDefault!2340)))) e!317361 tp_is_empty!2799 setRes!2608 tp!167361))))

(declare-fun condSetEmpty!2608 () Bool)

(assert (=> b!527740 (= condSetEmpty!2608 (= (_2!3316 (h!10368 mapDefault!2340)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!527741 () Bool)

(declare-fun tp!167360 () Bool)

(assert (=> b!527741 (= e!317361 tp!167360)))

(declare-fun setIsEmpty!2608 () Bool)

(assert (=> setIsEmpty!2608 setRes!2608))

(assert (=> b!527550 (= tp!167228 e!317360)))

(declare-fun setElem!2608 () Context!318)

(declare-fun tp!167359 () Bool)

(declare-fun setNonEmpty!2608 () Bool)

(declare-fun e!317359 () Bool)

(assert (=> setNonEmpty!2608 (= setRes!2608 (and tp!167359 (inv!6235 setElem!2608) e!317359))))

(declare-fun setRest!2608 () (InoxSet Context!318))

(assert (=> setNonEmpty!2608 (= (_2!3316 (h!10368 mapDefault!2340)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2608 true) setRest!2608))))

(declare-fun b!527742 () Bool)

(declare-fun tp!167358 () Bool)

(assert (=> b!527742 (= e!317359 tp!167358)))

(assert (= b!527740 b!527741))

(assert (= (and b!527740 condSetEmpty!2608) setIsEmpty!2608))

(assert (= (and b!527740 (not condSetEmpty!2608)) setNonEmpty!2608))

(assert (= setNonEmpty!2608 b!527742))

(assert (= (and b!527550 ((_ is Cons!4967) mapDefault!2340)) b!527740))

(declare-fun m!773410 () Bool)

(assert (=> b!527740 m!773410))

(declare-fun m!773412 () Bool)

(assert (=> setNonEmpty!2608 m!773412))

(declare-fun tp!167362 () Bool)

(declare-fun setRes!2609 () Bool)

(declare-fun b!527743 () Bool)

(declare-fun tp!167365 () Bool)

(declare-fun e!317363 () Bool)

(declare-fun e!317364 () Bool)

(assert (=> b!527743 (= e!317364 (and tp!167362 (inv!6235 (_2!3319 (_1!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))))) e!317363 tp_is_empty!2799 setRes!2609 tp!167365))))

(declare-fun condSetEmpty!2609 () Bool)

(assert (=> b!527743 (= condSetEmpty!2609 (= (_2!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun e!317362 () Bool)

(declare-fun tp!167364 () Bool)

(declare-fun setNonEmpty!2609 () Bool)

(declare-fun setElem!2609 () Context!318)

(assert (=> setNonEmpty!2609 (= setRes!2609 (and tp!167364 (inv!6235 setElem!2609) e!317362))))

(declare-fun setRest!2609 () (InoxSet Context!318))

(assert (=> setNonEmpty!2609 (= (_2!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2609 true) setRest!2609))))

(assert (=> b!527567 (= tp!167213 e!317364)))

(declare-fun b!527744 () Bool)

(declare-fun tp!167363 () Bool)

(assert (=> b!527744 (= e!317363 tp!167363)))

(declare-fun b!527745 () Bool)

(declare-fun tp!167366 () Bool)

(assert (=> b!527745 (= e!317362 tp!167366)))

(declare-fun setIsEmpty!2609 () Bool)

(assert (=> setIsEmpty!2609 setRes!2609))

(assert (= b!527743 b!527744))

(assert (= (and b!527743 condSetEmpty!2609) setIsEmpty!2609))

(assert (= (and b!527743 (not condSetEmpty!2609)) setNonEmpty!2609))

(assert (= setNonEmpty!2609 b!527745))

(assert (= (and b!527567 ((_ is Cons!4970) (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))) b!527743))

(declare-fun m!773414 () Bool)

(assert (=> b!527743 m!773414))

(declare-fun m!773416 () Bool)

(assert (=> setNonEmpty!2609 m!773416))

(declare-fun setRes!2610 () Bool)

(declare-fun tp!167367 () Bool)

(declare-fun b!527746 () Bool)

(declare-fun e!317367 () Bool)

(declare-fun tp!167370 () Bool)

(declare-fun e!317366 () Bool)

(assert (=> b!527746 (= e!317367 (and tp!167367 (inv!6235 (_2!3319 (_1!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))))) e!317366 tp_is_empty!2799 setRes!2610 tp!167370))))

(declare-fun condSetEmpty!2610 () Bool)

(assert (=> b!527746 (= condSetEmpty!2610 (= (_2!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setElem!2610 () Context!318)

(declare-fun e!317365 () Bool)

(declare-fun setNonEmpty!2610 () Bool)

(declare-fun tp!167369 () Bool)

(assert (=> setNonEmpty!2610 (= setRes!2610 (and tp!167369 (inv!6235 setElem!2610) e!317365))))

(declare-fun setRest!2610 () (InoxSet Context!318))

(assert (=> setNonEmpty!2610 (= (_2!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2610 true) setRest!2610))))

(assert (=> b!527567 (= tp!167207 e!317367)))

(declare-fun b!527747 () Bool)

(declare-fun tp!167368 () Bool)

(assert (=> b!527747 (= e!317366 tp!167368)))

(declare-fun b!527748 () Bool)

(declare-fun tp!167371 () Bool)

(assert (=> b!527748 (= e!317365 tp!167371)))

(declare-fun setIsEmpty!2610 () Bool)

(assert (=> setIsEmpty!2610 setRes!2610))

(assert (= b!527746 b!527747))

(assert (= (and b!527746 condSetEmpty!2610) setIsEmpty!2610))

(assert (= (and b!527746 (not condSetEmpty!2610)) setNonEmpty!2610))

(assert (= setNonEmpty!2610 b!527748))

(assert (= (and b!527567 ((_ is Cons!4970) (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))) b!527746))

(declare-fun m!773418 () Bool)

(assert (=> b!527746 m!773418))

(declare-fun m!773420 () Bool)

(assert (=> setNonEmpty!2610 m!773420))

(declare-fun setRes!2613 () Bool)

(declare-fun setElem!2613 () Context!318)

(declare-fun setNonEmpty!2613 () Bool)

(declare-fun tp!167378 () Bool)

(declare-fun e!317372 () Bool)

(assert (=> setNonEmpty!2613 (= setRes!2613 (and tp!167378 (inv!6235 setElem!2613) e!317372))))

(declare-fun setRest!2613 () (InoxSet Context!318))

(assert (=> setNonEmpty!2613 (= (_1!3317 (_1!3318 (h!10369 mapDefault!2341))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2613 true) setRest!2613))))

(declare-fun setIsEmpty!2613 () Bool)

(assert (=> setIsEmpty!2613 setRes!2613))

(declare-fun b!527756 () Bool)

(declare-fun tp!167380 () Bool)

(assert (=> b!527756 (= e!317372 tp!167380)))

(declare-fun e!317373 () Bool)

(assert (=> b!527559 (= tp!167212 e!317373)))

(declare-fun b!527755 () Bool)

(declare-fun tp!167379 () Bool)

(assert (=> b!527755 (= e!317373 (and setRes!2613 tp!167379))))

(declare-fun condSetEmpty!2613 () Bool)

(assert (=> b!527755 (= condSetEmpty!2613 (= (_1!3317 (_1!3318 (h!10369 mapDefault!2341))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!527755 condSetEmpty!2613) setIsEmpty!2613))

(assert (= (and b!527755 (not condSetEmpty!2613)) setNonEmpty!2613))

(assert (= setNonEmpty!2613 b!527756))

(assert (= (and b!527559 ((_ is Cons!4968) mapDefault!2341)) b!527755))

(declare-fun m!773422 () Bool)

(assert (=> setNonEmpty!2613 m!773422))

(declare-fun mapNonEmpty!2351 () Bool)

(declare-fun mapRes!2351 () Bool)

(declare-fun tp!167400 () Bool)

(declare-fun e!317382 () Bool)

(assert (=> mapNonEmpty!2351 (= mapRes!2351 (and tp!167400 e!317382))))

(declare-fun mapValue!2351 () List!4978)

(declare-fun mapRest!2351 () (Array (_ BitVec 32) List!4978))

(declare-fun mapKey!2351 () (_ BitVec 32))

(assert (=> mapNonEmpty!2351 (= mapRest!2342 (store mapRest!2351 mapKey!2351 mapValue!2351))))

(declare-fun b!527767 () Bool)

(declare-fun e!317384 () Bool)

(declare-fun tp!167401 () Bool)

(assert (=> b!527767 (= e!317384 tp!167401)))

(declare-fun condMapEmpty!2351 () Bool)

(declare-fun mapDefault!2351 () List!4978)

(assert (=> mapNonEmpty!2341 (= condMapEmpty!2351 (= mapRest!2342 ((as const (Array (_ BitVec 32) List!4978)) mapDefault!2351)))))

(declare-fun e!317385 () Bool)

(assert (=> mapNonEmpty!2341 (= tp!167208 (and e!317385 mapRes!2351))))

(declare-fun setIsEmpty!2618 () Bool)

(declare-fun setRes!2618 () Bool)

(assert (=> setIsEmpty!2618 setRes!2618))

(declare-fun b!527768 () Bool)

(declare-fun e!317383 () Bool)

(declare-fun tp!167395 () Bool)

(assert (=> b!527768 (= e!317383 tp!167395)))

(declare-fun tp!167396 () Bool)

(declare-fun setElem!2619 () Context!318)

(declare-fun setNonEmpty!2618 () Bool)

(assert (=> setNonEmpty!2618 (= setRes!2618 (and tp!167396 (inv!6235 setElem!2619) e!317383))))

(declare-fun setRest!2618 () (InoxSet Context!318))

(assert (=> setNonEmpty!2618 (= (_1!3317 (_1!3318 (h!10369 mapDefault!2351))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2619 true) setRest!2618))))

(declare-fun b!527769 () Bool)

(declare-fun tp!167397 () Bool)

(assert (=> b!527769 (= e!317385 (and setRes!2618 tp!167397))))

(declare-fun condSetEmpty!2618 () Bool)

(assert (=> b!527769 (= condSetEmpty!2618 (= (_1!3317 (_1!3318 (h!10369 mapDefault!2351))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun tp!167399 () Bool)

(declare-fun setElem!2618 () Context!318)

(declare-fun setRes!2619 () Bool)

(declare-fun setNonEmpty!2619 () Bool)

(assert (=> setNonEmpty!2619 (= setRes!2619 (and tp!167399 (inv!6235 setElem!2618) e!317384))))

(declare-fun setRest!2619 () (InoxSet Context!318))

(assert (=> setNonEmpty!2619 (= (_1!3317 (_1!3318 (h!10369 mapValue!2351))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2618 true) setRest!2619))))

(declare-fun mapIsEmpty!2351 () Bool)

(assert (=> mapIsEmpty!2351 mapRes!2351))

(declare-fun b!527770 () Bool)

(declare-fun tp!167398 () Bool)

(assert (=> b!527770 (= e!317382 (and setRes!2619 tp!167398))))

(declare-fun condSetEmpty!2619 () Bool)

(assert (=> b!527770 (= condSetEmpty!2619 (= (_1!3317 (_1!3318 (h!10369 mapValue!2351))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setIsEmpty!2619 () Bool)

(assert (=> setIsEmpty!2619 setRes!2619))

(assert (= (and mapNonEmpty!2341 condMapEmpty!2351) mapIsEmpty!2351))

(assert (= (and mapNonEmpty!2341 (not condMapEmpty!2351)) mapNonEmpty!2351))

(assert (= (and b!527770 condSetEmpty!2619) setIsEmpty!2619))

(assert (= (and b!527770 (not condSetEmpty!2619)) setNonEmpty!2619))

(assert (= setNonEmpty!2619 b!527767))

(assert (= (and mapNonEmpty!2351 ((_ is Cons!4968) mapValue!2351)) b!527770))

(assert (= (and b!527769 condSetEmpty!2618) setIsEmpty!2618))

(assert (= (and b!527769 (not condSetEmpty!2618)) setNonEmpty!2618))

(assert (= setNonEmpty!2618 b!527768))

(assert (= (and mapNonEmpty!2341 ((_ is Cons!4968) mapDefault!2351)) b!527769))

(declare-fun m!773424 () Bool)

(assert (=> mapNonEmpty!2351 m!773424))

(declare-fun m!773426 () Bool)

(assert (=> setNonEmpty!2618 m!773426))

(declare-fun m!773428 () Bool)

(assert (=> setNonEmpty!2619 m!773428))

(declare-fun e!317386 () Bool)

(declare-fun setNonEmpty!2620 () Bool)

(declare-fun setRes!2620 () Bool)

(declare-fun setElem!2620 () Context!318)

(declare-fun tp!167402 () Bool)

(assert (=> setNonEmpty!2620 (= setRes!2620 (and tp!167402 (inv!6235 setElem!2620) e!317386))))

(declare-fun setRest!2620 () (InoxSet Context!318))

(assert (=> setNonEmpty!2620 (= (_1!3317 (_1!3318 (h!10369 mapValue!2342))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2620 true) setRest!2620))))

(declare-fun setIsEmpty!2620 () Bool)

(assert (=> setIsEmpty!2620 setRes!2620))

(declare-fun b!527772 () Bool)

(declare-fun tp!167404 () Bool)

(assert (=> b!527772 (= e!317386 tp!167404)))

(declare-fun e!317387 () Bool)

(assert (=> mapNonEmpty!2341 (= tp!167226 e!317387)))

(declare-fun b!527771 () Bool)

(declare-fun tp!167403 () Bool)

(assert (=> b!527771 (= e!317387 (and setRes!2620 tp!167403))))

(declare-fun condSetEmpty!2620 () Bool)

(assert (=> b!527771 (= condSetEmpty!2620 (= (_1!3317 (_1!3318 (h!10369 mapValue!2342))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!527771 condSetEmpty!2620) setIsEmpty!2620))

(assert (= (and b!527771 (not condSetEmpty!2620)) setNonEmpty!2620))

(assert (= setNonEmpty!2620 b!527772))

(assert (= (and mapNonEmpty!2341 ((_ is Cons!4968) mapValue!2342)) b!527771))

(declare-fun m!773430 () Bool)

(assert (=> setNonEmpty!2620 m!773430))

(declare-fun b!527783 () Bool)

(declare-fun b_free!14049 () Bool)

(declare-fun b_next!14065 () Bool)

(assert (=> b!527783 (= b_free!14049 (not b_next!14065))))

(declare-fun tp!167416 () Bool)

(declare-fun b_and!51543 () Bool)

(assert (=> b!527783 (= tp!167416 b_and!51543)))

(declare-fun b_free!14051 () Bool)

(declare-fun b_next!14067 () Bool)

(assert (=> b!527783 (= b_free!14051 (not b_next!14067))))

(declare-fun tp!167415 () Bool)

(declare-fun b_and!51545 () Bool)

(assert (=> b!527783 (= tp!167415 b_and!51545)))

(declare-fun e!317398 () Bool)

(assert (=> b!527783 (= e!317398 (and tp!167416 tp!167415))))

(declare-fun e!317397 () Bool)

(declare-fun tp!167413 () Bool)

(declare-fun b!527782 () Bool)

(assert (=> b!527782 (= e!317397 (and tp!167413 (inv!6224 (tag!1155 (h!10374 (t!73595 rules!1345)))) (inv!6227 (transformation!893 (h!10374 (t!73595 rules!1345)))) e!317398))))

(declare-fun b!527781 () Bool)

(declare-fun e!317396 () Bool)

(declare-fun tp!167414 () Bool)

(assert (=> b!527781 (= e!317396 (and e!317397 tp!167414))))

(assert (=> b!527568 (= tp!167229 e!317396)))

(assert (= b!527782 b!527783))

(assert (= b!527781 b!527782))

(assert (= (and b!527568 ((_ is Cons!4973) (t!73595 rules!1345))) b!527781))

(declare-fun m!773432 () Bool)

(assert (=> b!527782 m!773432))

(declare-fun m!773434 () Bool)

(assert (=> b!527782 m!773434))

(declare-fun tp!167417 () Bool)

(declare-fun setRes!2621 () Bool)

(declare-fun e!317400 () Bool)

(declare-fun setNonEmpty!2621 () Bool)

(declare-fun setElem!2621 () Context!318)

(assert (=> setNonEmpty!2621 (= setRes!2621 (and tp!167417 (inv!6235 setElem!2621) e!317400))))

(declare-fun setRest!2621 () (InoxSet Context!318))

(assert (=> setNonEmpty!2621 (= (_1!3317 (_1!3318 (h!10369 (zeroValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2621 true) setRest!2621))))

(declare-fun setIsEmpty!2621 () Bool)

(assert (=> setIsEmpty!2621 setRes!2621))

(declare-fun b!527785 () Bool)

(declare-fun tp!167419 () Bool)

(assert (=> b!527785 (= e!317400 tp!167419)))

(declare-fun e!317401 () Bool)

(assert (=> b!527554 (= tp!167218 e!317401)))

(declare-fun b!527784 () Bool)

(declare-fun tp!167418 () Bool)

(assert (=> b!527784 (= e!317401 (and setRes!2621 tp!167418))))

(declare-fun condSetEmpty!2621 () Bool)

(assert (=> b!527784 (= condSetEmpty!2621 (= (_1!3317 (_1!3318 (h!10369 (zeroValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!527784 condSetEmpty!2621) setIsEmpty!2621))

(assert (= (and b!527784 (not condSetEmpty!2621)) setNonEmpty!2621))

(assert (= setNonEmpty!2621 b!527785))

(assert (= (and b!527554 ((_ is Cons!4968) (zeroValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56)))))))) b!527784))

(declare-fun m!773436 () Bool)

(assert (=> setNonEmpty!2621 m!773436))

(declare-fun e!317402 () Bool)

(declare-fun setElem!2622 () Context!318)

(declare-fun setRes!2622 () Bool)

(declare-fun setNonEmpty!2622 () Bool)

(declare-fun tp!167420 () Bool)

(assert (=> setNonEmpty!2622 (= setRes!2622 (and tp!167420 (inv!6235 setElem!2622) e!317402))))

(declare-fun setRest!2622 () (InoxSet Context!318))

(assert (=> setNonEmpty!2622 (= (_1!3317 (_1!3318 (h!10369 (minValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2622 true) setRest!2622))))

(declare-fun setIsEmpty!2622 () Bool)

(assert (=> setIsEmpty!2622 setRes!2622))

(declare-fun b!527787 () Bool)

(declare-fun tp!167422 () Bool)

(assert (=> b!527787 (= e!317402 tp!167422)))

(declare-fun e!317403 () Bool)

(assert (=> b!527554 (= tp!167220 e!317403)))

(declare-fun b!527786 () Bool)

(declare-fun tp!167421 () Bool)

(assert (=> b!527786 (= e!317403 (and setRes!2622 tp!167421))))

(declare-fun condSetEmpty!2622 () Bool)

(assert (=> b!527786 (= condSetEmpty!2622 (= (_1!3317 (_1!3318 (h!10369 (minValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!527786 condSetEmpty!2622) setIsEmpty!2622))

(assert (= (and b!527786 (not condSetEmpty!2622)) setNonEmpty!2622))

(assert (= setNonEmpty!2622 b!527787))

(assert (= (and b!527554 ((_ is Cons!4968) (minValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56)))))))) b!527786))

(declare-fun m!773438 () Bool)

(assert (=> setNonEmpty!2622 m!773438))

(declare-fun tp!167423 () Bool)

(declare-fun tp!167425 () Bool)

(declare-fun b!527788 () Bool)

(declare-fun e!317404 () Bool)

(assert (=> b!527788 (= e!317404 (and (inv!6228 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) tp!167425 (inv!6228 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) tp!167423))))

(declare-fun b!527790 () Bool)

(declare-fun e!317405 () Bool)

(declare-fun tp!167424 () Bool)

(assert (=> b!527790 (= e!317405 tp!167424)))

(declare-fun b!527789 () Bool)

(assert (=> b!527789 (= e!317404 (and (inv!6234 (xs!4246 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) e!317405))))

(assert (=> b!527539 (= tp!167224 (and (inv!6228 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) e!317404))))

(assert (= (and b!527539 ((_ is Node!1609) (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) b!527788))

(assert (= b!527789 b!527790))

(assert (= (and b!527539 ((_ is Leaf!2560) (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) b!527789))

(declare-fun m!773440 () Bool)

(assert (=> b!527788 m!773440))

(declare-fun m!773442 () Bool)

(assert (=> b!527788 m!773442))

(declare-fun m!773444 () Bool)

(assert (=> b!527789 m!773444))

(assert (=> b!527539 m!773196))

(check-sat (not b_next!14063) (not b!527748) (not b!527771) (not b!527691) (not b!527685) (not b!527672) (not b!527701) (not b!527581) (not b_next!14053) (not d!187665) (not b!527789) b_and!51543 (not b!527725) (not d!187703) (not b!527785) (not b!527769) (not d!187687) (not b!527782) (not b!527686) (not d!187673) (not b_next!14057) (not b!527669) (not mapNonEmpty!2351) (not setNonEmpty!2618) (not b!527689) (not b!527767) (not b!527684) (not b!527637) (not b!527739) (not setNonEmpty!2592) (not b!527630) (not b!527652) (not d!187695) (not b!527772) (not b!527756) (not b!527770) (not setNonEmpty!2622) (not b!527606) (not b!527592) (not b!527787) (not setNonEmpty!2605) (not b!527702) (not d!187661) (not b!527722) (not b!527580) (not setNonEmpty!2591) (not setNonEmpty!2608) (not setNonEmpty!2613) (not b!527640) (not b!527670) (not mapNonEmpty!2345) (not b!527720) (not b!527632) (not b!527654) (not b!527589) (not b!527575) (not d!187699) (not b!527721) (not b!527603) (not b!527688) (not b!527744) (not b!527755) (not b!527724) b_and!51541 (not b!527790) (not d!187677) (not b!527653) (not setNonEmpty!2610) (not b!527671) (not b!527788) b_and!51533 (not b!527539) (not b!527723) (not setNonEmpty!2620) b_and!51545 (not b!527781) (not setNonEmpty!2607) (not setNonEmpty!2609) (not b!527690) (not b!527738) (not b!527737) (not b!527577) (not b!527583) (not b!527741) (not b!527687) (not b!527742) (not b!527633) (not b_next!14055) (not b!527746) (not b!527586) (not setNonEmpty!2621) (not b!527643) (not b!527674) (not b_next!14061) (not b!527673) b_and!51539 (not b!527740) (not d!187649) b_and!51531 (not setNonEmpty!2597) (not setNonEmpty!2600) (not d!187647) (not b!527636) (not b!527564) (not d!187667) (not setNonEmpty!2596) (not b!527719) (not d!187697) (not d!187679) b_and!51527 (not b_next!14067) (not b!527717) (not setNonEmpty!2606) (not b_next!14049) (not b_next!14059) (not b!527607) (not b!527747) (not b!527768) (not d!187675) (not b!527786) (not b!527718) b_and!51535 (not d!187701) (not d!187655) b_and!51537 (not setNonEmpty!2619) (not b!527743) (not b!527683) (not b!527631) b_and!51529 (not b!527700) (not b!527604) (not b!527745) (not mapNonEmpty!2348) (not b_next!14065) (not b!527784) (not setNonEmpty!2595) (not b_next!14051) tp_is_empty!2799)
(check-sat (not b_next!14053) b_and!51543 (not b_next!14057) (not b_next!14063) b_and!51541 b_and!51533 b_and!51545 (not b_next!14055) b_and!51531 b_and!51529 (not b_next!14061) b_and!51539 b_and!51527 (not b_next!14067) (not b_next!14049) (not b_next!14059) b_and!51535 b_and!51537 (not b_next!14065) (not b_next!14051))
(get-model)

(declare-fun d!187705 () Bool)

(declare-fun lambda!15292 () Int)

(declare-fun forall!1495 (List!4976 Int) Bool)

(assert (=> d!187705 (= (inv!6235 setElem!2618) (forall!1495 (exprs!659 setElem!2618) lambda!15292))))

(declare-fun bs!66554 () Bool)

(assert (= bs!66554 d!187705))

(declare-fun m!773446 () Bool)

(assert (=> bs!66554 m!773446))

(assert (=> setNonEmpty!2619 d!187705))

(declare-fun bs!66555 () Bool)

(declare-fun d!187707 () Bool)

(assert (= bs!66555 (and d!187707 d!187705)))

(declare-fun lambda!15293 () Int)

(assert (=> bs!66555 (= lambda!15293 lambda!15292)))

(assert (=> d!187707 (= (inv!6235 (_1!3315 (_1!3316 (h!10368 mapDefault!2345)))) (forall!1495 (exprs!659 (_1!3315 (_1!3316 (h!10368 mapDefault!2345)))) lambda!15293))))

(declare-fun bs!66556 () Bool)

(assert (= bs!66556 d!187707))

(declare-fun m!773448 () Bool)

(assert (=> bs!66556 m!773448))

(assert (=> b!527669 d!187707))

(declare-fun d!187709 () Bool)

(declare-fun size!4056 (List!4979) Int)

(assert (=> d!187709 (= (inv!6234 (xs!4246 (c!101090 input!747))) (<= (size!4056 (innerList!1667 (xs!4246 (c!101090 input!747)))) 2147483647))))

(declare-fun bs!66557 () Bool)

(assert (= bs!66557 d!187709))

(declare-fun m!773450 () Bool)

(assert (=> bs!66557 m!773450))

(assert (=> b!527653 d!187709))

(declare-fun bs!66558 () Bool)

(declare-fun d!187711 () Bool)

(assert (= bs!66558 (and d!187711 d!187705)))

(declare-fun lambda!15294 () Int)

(assert (=> bs!66558 (= lambda!15294 lambda!15292)))

(declare-fun bs!66559 () Bool)

(assert (= bs!66559 (and d!187711 d!187707)))

(assert (=> bs!66559 (= lambda!15294 lambda!15293)))

(assert (=> d!187711 (= (inv!6235 setElem!2620) (forall!1495 (exprs!659 setElem!2620) lambda!15294))))

(declare-fun bs!66560 () Bool)

(assert (= bs!66560 d!187711))

(declare-fun m!773452 () Bool)

(assert (=> bs!66560 m!773452))

(assert (=> setNonEmpty!2620 d!187711))

(declare-fun bs!66561 () Bool)

(declare-fun d!187713 () Bool)

(assert (= bs!66561 (and d!187713 d!187705)))

(declare-fun lambda!15295 () Int)

(assert (=> bs!66561 (= lambda!15295 lambda!15292)))

(declare-fun bs!66562 () Bool)

(assert (= bs!66562 (and d!187713 d!187707)))

(assert (=> bs!66562 (= lambda!15295 lambda!15293)))

(declare-fun bs!66563 () Bool)

(assert (= bs!66563 (and d!187713 d!187711)))

(assert (=> bs!66563 (= lambda!15295 lambda!15294)))

(assert (=> d!187713 (= (inv!6235 setElem!2600) (forall!1495 (exprs!659 setElem!2600) lambda!15295))))

(declare-fun bs!66564 () Bool)

(assert (= bs!66564 d!187713))

(declare-fun m!773454 () Bool)

(assert (=> bs!66564 m!773454))

(assert (=> setNonEmpty!2600 d!187713))

(declare-fun bs!66565 () Bool)

(declare-fun d!187715 () Bool)

(assert (= bs!66565 (and d!187715 d!187705)))

(declare-fun lambda!15296 () Int)

(assert (=> bs!66565 (= lambda!15296 lambda!15292)))

(declare-fun bs!66566 () Bool)

(assert (= bs!66566 (and d!187715 d!187707)))

(assert (=> bs!66566 (= lambda!15296 lambda!15293)))

(declare-fun bs!66567 () Bool)

(assert (= bs!66567 (and d!187715 d!187711)))

(assert (=> bs!66567 (= lambda!15296 lambda!15294)))

(declare-fun bs!66568 () Bool)

(assert (= bs!66568 (and d!187715 d!187713)))

(assert (=> bs!66568 (= lambda!15296 lambda!15295)))

(assert (=> d!187715 (= (inv!6235 setElem!2592) (forall!1495 (exprs!659 setElem!2592) lambda!15296))))

(declare-fun bs!66569 () Bool)

(assert (= bs!66569 d!187715))

(declare-fun m!773456 () Bool)

(assert (=> bs!66569 m!773456))

(assert (=> setNonEmpty!2592 d!187715))

(declare-fun d!187717 () Bool)

(declare-fun res!223060 () Bool)

(declare-fun e!317408 () Bool)

(assert (=> d!187717 (=> (not res!223060) (not e!317408))))

(declare-fun size!4057 (Conc!1609) Int)

(assert (=> d!187717 (= res!223060 (= (csize!3448 (c!101090 input!747)) (+ (size!4057 (left!4223 (c!101090 input!747))) (size!4057 (right!4553 (c!101090 input!747))))))))

(assert (=> d!187717 (= (inv!6232 (c!101090 input!747)) e!317408)))

(declare-fun b!527797 () Bool)

(declare-fun res!223061 () Bool)

(assert (=> b!527797 (=> (not res!223061) (not e!317408))))

(assert (=> b!527797 (= res!223061 (and (not (= (left!4223 (c!101090 input!747)) Empty!1609)) (not (= (right!4553 (c!101090 input!747)) Empty!1609))))))

(declare-fun b!527798 () Bool)

(declare-fun res!223062 () Bool)

(assert (=> b!527798 (=> (not res!223062) (not e!317408))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!252 (Conc!1609) Int)

(assert (=> b!527798 (= res!223062 (= (cheight!1820 (c!101090 input!747)) (+ (max!0 (height!252 (left!4223 (c!101090 input!747))) (height!252 (right!4553 (c!101090 input!747)))) 1)))))

(declare-fun b!527799 () Bool)

(assert (=> b!527799 (= e!317408 (<= 0 (cheight!1820 (c!101090 input!747))))))

(assert (= (and d!187717 res!223060) b!527797))

(assert (= (and b!527797 res!223061) b!527798))

(assert (= (and b!527798 res!223062) b!527799))

(declare-fun m!773458 () Bool)

(assert (=> d!187717 m!773458))

(declare-fun m!773460 () Bool)

(assert (=> d!187717 m!773460))

(declare-fun m!773462 () Bool)

(assert (=> b!527798 m!773462))

(declare-fun m!773464 () Bool)

(assert (=> b!527798 m!773464))

(assert (=> b!527798 m!773462))

(assert (=> b!527798 m!773464))

(declare-fun m!773466 () Bool)

(assert (=> b!527798 m!773466))

(assert (=> b!527575 d!187717))

(declare-fun bs!66570 () Bool)

(declare-fun d!187719 () Bool)

(assert (= bs!66570 (and d!187719 d!187707)))

(declare-fun lambda!15297 () Int)

(assert (=> bs!66570 (= lambda!15297 lambda!15293)))

(declare-fun bs!66571 () Bool)

(assert (= bs!66571 (and d!187719 d!187711)))

(assert (=> bs!66571 (= lambda!15297 lambda!15294)))

(declare-fun bs!66572 () Bool)

(assert (= bs!66572 (and d!187719 d!187713)))

(assert (=> bs!66572 (= lambda!15297 lambda!15295)))

(declare-fun bs!66573 () Bool)

(assert (= bs!66573 (and d!187719 d!187715)))

(assert (=> bs!66573 (= lambda!15297 lambda!15296)))

(declare-fun bs!66574 () Bool)

(assert (= bs!66574 (and d!187719 d!187705)))

(assert (=> bs!66574 (= lambda!15297 lambda!15292)))

(assert (=> d!187719 (= (inv!6235 setElem!2619) (forall!1495 (exprs!659 setElem!2619) lambda!15297))))

(declare-fun bs!66575 () Bool)

(assert (= bs!66575 d!187719))

(declare-fun m!773468 () Bool)

(assert (=> bs!66575 m!773468))

(assert (=> setNonEmpty!2618 d!187719))

(declare-fun d!187721 () Bool)

(assert (=> d!187721 (= (list!2068 (_2!3321 (_1!3322 lt!217967))) (list!2070 (c!101090 (_2!3321 (_1!3322 lt!217967)))))))

(declare-fun bs!66576 () Bool)

(assert (= bs!66576 d!187721))

(declare-fun m!773470 () Bool)

(assert (=> bs!66576 m!773470))

(assert (=> b!527633 d!187721))

(declare-fun d!187723 () Bool)

(assert (=> d!187723 (= (list!2068 (_2!3321 (lexRec!143 thiss!12147 rules!1345 input!747))) (list!2070 (c!101090 (_2!3321 (lexRec!143 thiss!12147 rules!1345 input!747)))))))

(declare-fun bs!66577 () Bool)

(assert (= bs!66577 d!187723))

(declare-fun m!773472 () Bool)

(assert (=> bs!66577 m!773472))

(assert (=> b!527633 d!187723))

(declare-fun b!527814 () Bool)

(declare-fun e!317420 () Bool)

(declare-fun e!317417 () Bool)

(assert (=> b!527814 (= e!317420 e!317417)))

(declare-fun res!223069 () Bool)

(declare-fun lt!217994 () tuple2!6132)

(assert (=> b!527814 (= res!223069 (< (size!4055 (_2!3321 lt!217994)) (size!4055 input!747)))))

(assert (=> b!527814 (=> (not res!223069) (not e!317417))))

(declare-fun d!187725 () Bool)

(declare-fun e!317419 () Bool)

(assert (=> d!187725 e!317419))

(declare-fun res!223071 () Bool)

(assert (=> d!187725 (=> (not res!223071) (not e!317419))))

(assert (=> d!187725 (= res!223071 e!317420)))

(declare-fun c!101113 () Bool)

(assert (=> d!187725 (= c!101113 (> (size!4054 (_1!3321 lt!217994)) 0))))

(declare-fun e!317418 () tuple2!6132)

(assert (=> d!187725 (= lt!217994 e!317418)))

(declare-fun c!101114 () Bool)

(declare-fun lt!217996 () Option!1248)

(assert (=> d!187725 (= c!101114 ((_ is Some!1247) lt!217996))))

(assert (=> d!187725 (= lt!217996 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 input!747))))

(assert (=> d!187725 (= (lexRec!143 thiss!12147 rules!1345 input!747) lt!217994)))

(declare-fun b!527815 () Bool)

(assert (=> b!527815 (= e!317418 (tuple2!6133 (BalanceConc!3229 Empty!1610) input!747))))

(declare-fun b!527816 () Bool)

(assert (=> b!527816 (= e!317420 (= (list!2068 (_2!3321 lt!217994)) (list!2068 input!747)))))

(declare-fun b!527817 () Bool)

(declare-fun res!223070 () Bool)

(assert (=> b!527817 (=> (not res!223070) (not e!317419))))

(assert (=> b!527817 (= res!223070 (= (list!2069 (_1!3321 lt!217994)) (_1!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 input!747)))))))

(declare-fun b!527818 () Bool)

(assert (=> b!527818 (= e!317417 (not (isEmpty!3610 (_1!3321 lt!217994))))))

(declare-fun b!527819 () Bool)

(assert (=> b!527819 (= e!317419 (= (list!2068 (_2!3321 lt!217994)) (_2!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 input!747)))))))

(declare-fun b!527820 () Bool)

(declare-fun lt!217995 () tuple2!6132)

(assert (=> b!527820 (= e!317418 (tuple2!6133 (prepend!242 (_1!3321 lt!217995) (_1!3324 (v!16038 lt!217996))) (_2!3321 lt!217995)))))

(assert (=> b!527820 (= lt!217995 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!217996))))))

(assert (= (and d!187725 c!101114) b!527820))

(assert (= (and d!187725 (not c!101114)) b!527815))

(assert (= (and d!187725 c!101113) b!527814))

(assert (= (and d!187725 (not c!101113)) b!527816))

(assert (= (and b!527814 res!223069) b!527818))

(assert (= (and d!187725 res!223071) b!527817))

(assert (= (and b!527817 res!223070) b!527819))

(declare-fun m!773474 () Bool)

(assert (=> b!527814 m!773474))

(assert (=> b!527814 m!773258))

(declare-fun m!773476 () Bool)

(assert (=> b!527820 m!773476))

(declare-fun m!773478 () Bool)

(assert (=> b!527820 m!773478))

(declare-fun m!773480 () Bool)

(assert (=> b!527817 m!773480))

(assert (=> b!527817 m!773248))

(assert (=> b!527817 m!773248))

(assert (=> b!527817 m!773250))

(declare-fun m!773482 () Bool)

(assert (=> d!187725 m!773482))

(assert (=> d!187725 m!773330))

(declare-fun m!773484 () Bool)

(assert (=> b!527816 m!773484))

(assert (=> b!527816 m!773248))

(declare-fun m!773486 () Bool)

(assert (=> b!527818 m!773486))

(assert (=> b!527819 m!773484))

(assert (=> b!527819 m!773248))

(assert (=> b!527819 m!773248))

(assert (=> b!527819 m!773250))

(assert (=> b!527633 d!187725))

(declare-fun b!527826 () Bool)

(assert (=> b!527826 true))

(declare-fun d!187727 () Bool)

(declare-fun res!223076 () Bool)

(declare-fun e!317423 () Bool)

(assert (=> d!187727 (=> (not res!223076) (not e!317423))))

(declare-fun valid!579 (MutableMap!567) Bool)

(assert (=> d!187727 (= res!223076 (valid!579 (cache!954 cacheFurthestNullable!56)))))

(assert (=> d!187727 (= (validCacheMapFurthestNullable!28 (cache!954 cacheFurthestNullable!56) (totalInput!1751 cacheFurthestNullable!56)) e!317423)))

(declare-fun b!527825 () Bool)

(declare-fun res!223077 () Bool)

(assert (=> b!527825 (=> (not res!223077) (not e!317423))))

(declare-fun invariantList!104 (List!4978) Bool)

(declare-datatypes ((ListMap!257 0))(
  ( (ListMap!258 (toList!465 List!4978)) )
))
(declare-fun map!1140 (MutableMap!567) ListMap!257)

(assert (=> b!527825 (= res!223077 (invariantList!104 (toList!465 (map!1140 (cache!954 cacheFurthestNullable!56)))))))

(declare-fun lambda!15300 () Int)

(declare-fun forall!1496 (List!4978 Int) Bool)

(assert (=> b!527826 (= e!317423 (forall!1496 (toList!465 (map!1140 (cache!954 cacheFurthestNullable!56))) lambda!15300))))

(assert (= (and d!187727 res!223076) b!527825))

(assert (= (and b!527825 res!223077) b!527826))

(declare-fun m!773489 () Bool)

(assert (=> d!187727 m!773489))

(declare-fun m!773491 () Bool)

(assert (=> b!527825 m!773491))

(declare-fun m!773493 () Bool)

(assert (=> b!527825 m!773493))

(assert (=> b!527826 m!773491))

(declare-fun m!773495 () Bool)

(assert (=> b!527826 m!773495))

(assert (=> b!527589 d!187727))

(declare-fun d!187729 () Bool)

(declare-fun res!223084 () Bool)

(declare-fun e!317428 () Bool)

(assert (=> d!187729 (=> (not res!223084) (not e!317428))))

(declare-fun valid!580 (MutableMap!568) Bool)

(assert (=> d!187729 (= res!223084 (valid!580 (cache!955 (_3!255 lt!217877))))))

(assert (=> d!187729 (= (validCacheMapDown!35 (cache!955 (_3!255 lt!217877))) e!317428)))

(declare-fun b!527835 () Bool)

(declare-fun res!223085 () Bool)

(assert (=> b!527835 (=> (not res!223085) (not e!317428))))

(declare-fun invariantList!105 (List!4980) Bool)

(declare-datatypes ((ListMap!259 0))(
  ( (ListMap!260 (toList!466 List!4980)) )
))
(declare-fun map!1141 (MutableMap!568) ListMap!259)

(assert (=> b!527835 (= res!223085 (invariantList!105 (toList!466 (map!1141 (cache!955 (_3!255 lt!217877))))))))

(declare-fun b!527836 () Bool)

(declare-fun lambda!15303 () Int)

(declare-fun forall!1497 (List!4980 Int) Bool)

(assert (=> b!527836 (= e!317428 (forall!1497 (toList!466 (map!1141 (cache!955 (_3!255 lt!217877)))) lambda!15303))))

(assert (= (and d!187729 res!223084) b!527835))

(assert (= (and b!527835 res!223085) b!527836))

(declare-fun m!773498 () Bool)

(assert (=> d!187729 m!773498))

(declare-fun m!773500 () Bool)

(assert (=> b!527835 m!773500))

(declare-fun m!773502 () Bool)

(assert (=> b!527835 m!773502))

(assert (=> b!527836 m!773500))

(declare-fun m!773504 () Bool)

(assert (=> b!527836 m!773504))

(assert (=> d!187667 d!187729))

(declare-fun b!527848 () Bool)

(declare-fun e!317431 () Bool)

(declare-fun lt!217999 () BalanceConc!3226)

(assert (=> b!527848 (= e!317431 (= (list!2068 lt!217999) (++!1378 (list!2068 (BalanceConc!3227 Empty!1609)) (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))))

(declare-fun b!527846 () Bool)

(declare-fun res!223095 () Bool)

(assert (=> b!527846 (=> (not res!223095) (not e!317431))))

(declare-fun ++!1381 (Conc!1609 Conc!1609) Conc!1609)

(assert (=> b!527846 (= res!223095 (<= (height!252 (++!1381 (c!101090 (BalanceConc!3227 Empty!1609)) (c!101090 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))) (+ (max!0 (height!252 (c!101090 (BalanceConc!3227 Empty!1609))) (height!252 (c!101090 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))) 1)))))

(declare-fun d!187731 () Bool)

(assert (=> d!187731 e!317431))

(declare-fun res!223097 () Bool)

(assert (=> d!187731 (=> (not res!223097) (not e!317431))))

(declare-fun appendAssocInst!109 (Conc!1609 Conc!1609) Bool)

(assert (=> d!187731 (= res!223097 (appendAssocInst!109 (c!101090 (BalanceConc!3227 Empty!1609)) (c!101090 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))))))

(assert (=> d!187731 (= lt!217999 (BalanceConc!3227 (++!1381 (c!101090 (BalanceConc!3227 Empty!1609)) (c!101090 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))))

(assert (=> d!187731 (= (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))) lt!217999)))

(declare-fun b!527847 () Bool)

(declare-fun res!223096 () Bool)

(assert (=> b!527847 (=> (not res!223096) (not e!317431))))

(assert (=> b!527847 (= res!223096 (>= (height!252 (++!1381 (c!101090 (BalanceConc!3227 Empty!1609)) (c!101090 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))) (max!0 (height!252 (c!101090 (BalanceConc!3227 Empty!1609))) (height!252 (c!101090 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))))))))

(declare-fun b!527845 () Bool)

(declare-fun res!223094 () Bool)

(assert (=> b!527845 (=> (not res!223094) (not e!317431))))

(assert (=> b!527845 (= res!223094 (isBalanced!497 (++!1381 (c!101090 (BalanceConc!3227 Empty!1609)) (c!101090 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))))

(assert (= (and d!187731 res!223097) b!527845))

(assert (= (and b!527845 res!223094) b!527846))

(assert (= (and b!527846 res!223095) b!527847))

(assert (= (and b!527847 res!223096) b!527848))

(declare-fun m!773506 () Bool)

(assert (=> b!527847 m!773506))

(declare-fun m!773508 () Bool)

(assert (=> b!527847 m!773508))

(declare-fun m!773510 () Bool)

(assert (=> b!527847 m!773510))

(assert (=> b!527847 m!773506))

(assert (=> b!527847 m!773510))

(declare-fun m!773512 () Bool)

(assert (=> b!527847 m!773512))

(assert (=> b!527847 m!773508))

(declare-fun m!773514 () Bool)

(assert (=> b!527847 m!773514))

(declare-fun m!773516 () Bool)

(assert (=> b!527848 m!773516))

(assert (=> b!527848 m!773322))

(assert (=> b!527848 m!773316))

(assert (=> b!527848 m!773332))

(assert (=> b!527848 m!773322))

(assert (=> b!527848 m!773332))

(assert (=> b!527848 m!773334))

(assert (=> b!527846 m!773506))

(assert (=> b!527846 m!773508))

(assert (=> b!527846 m!773510))

(assert (=> b!527846 m!773506))

(assert (=> b!527846 m!773510))

(assert (=> b!527846 m!773512))

(assert (=> b!527846 m!773508))

(assert (=> b!527846 m!773514))

(declare-fun m!773518 () Bool)

(assert (=> d!187731 m!773518))

(assert (=> d!187731 m!773508))

(assert (=> b!527845 m!773508))

(assert (=> b!527845 m!773508))

(declare-fun m!773520 () Bool)

(assert (=> b!527845 m!773520))

(assert (=> b!527631 d!187731))

(declare-fun b!527859 () Bool)

(declare-fun res!223102 () Bool)

(declare-fun e!317436 () Bool)

(assert (=> b!527859 (=> (not res!223102) (not e!317436))))

(declare-fun lt!218002 () List!4979)

(assert (=> b!527859 (= res!223102 (= (size!4056 lt!218002) (+ (size!4056 lt!217981) (size!4056 lt!217953))))))

(declare-fun b!527857 () Bool)

(declare-fun e!317437 () List!4979)

(assert (=> b!527857 (= e!317437 lt!217953)))

(declare-fun b!527858 () Bool)

(assert (=> b!527858 (= e!317437 (Cons!4969 (h!10370 lt!217981) (++!1378 (t!73591 lt!217981) lt!217953)))))

(declare-fun d!187733 () Bool)

(assert (=> d!187733 e!317436))

(declare-fun res!223103 () Bool)

(assert (=> d!187733 (=> (not res!223103) (not e!317436))))

(declare-fun content!889 (List!4979) (InoxSet C!3364))

(assert (=> d!187733 (= res!223103 (= (content!889 lt!218002) ((_ map or) (content!889 lt!217981) (content!889 lt!217953))))))

(assert (=> d!187733 (= lt!218002 e!317437)))

(declare-fun c!101120 () Bool)

(assert (=> d!187733 (= c!101120 ((_ is Nil!4969) lt!217981))))

(assert (=> d!187733 (= (++!1378 lt!217981 lt!217953) lt!218002)))

(declare-fun b!527860 () Bool)

(assert (=> b!527860 (= e!317436 (or (not (= lt!217953 Nil!4969)) (= lt!218002 lt!217981)))))

(assert (= (and d!187733 c!101120) b!527857))

(assert (= (and d!187733 (not c!101120)) b!527858))

(assert (= (and d!187733 res!223103) b!527859))

(assert (= (and b!527859 res!223102) b!527860))

(declare-fun m!773522 () Bool)

(assert (=> b!527859 m!773522))

(declare-fun m!773524 () Bool)

(assert (=> b!527859 m!773524))

(declare-fun m!773526 () Bool)

(assert (=> b!527859 m!773526))

(declare-fun m!773528 () Bool)

(assert (=> b!527858 m!773528))

(declare-fun m!773530 () Bool)

(assert (=> d!187733 m!773530))

(declare-fun m!773532 () Bool)

(assert (=> d!187733 m!773532))

(declare-fun m!773534 () Bool)

(assert (=> d!187733 m!773534))

(assert (=> b!527631 d!187733))

(declare-fun d!187735 () Bool)

(assert (=> d!187735 (= (++!1378 (++!1378 lt!217964 lt!217981) lt!217953) (++!1378 lt!217964 (++!1378 lt!217981 lt!217953)))))

(declare-fun lt!218005 () Unit!8805)

(declare-fun choose!3731 (List!4979 List!4979 List!4979) Unit!8805)

(assert (=> d!187735 (= lt!218005 (choose!3731 lt!217964 lt!217981 lt!217953))))

(assert (=> d!187735 (= (lemmaConcatAssociativity!619 lt!217964 lt!217981 lt!217953) lt!218005)))

(declare-fun bs!66578 () Bool)

(assert (= bs!66578 d!187735))

(assert (=> bs!66578 m!773308))

(assert (=> bs!66578 m!773310))

(declare-fun m!773536 () Bool)

(assert (=> bs!66578 m!773536))

(assert (=> bs!66578 m!773286))

(assert (=> bs!66578 m!773286))

(assert (=> bs!66578 m!773344))

(assert (=> bs!66578 m!773308))

(assert (=> b!527631 d!187735))

(declare-fun d!187737 () Bool)

(assert (=> d!187737 (= (list!2069 (BalanceConc!3229 Empty!1610)) (list!2071 (c!101091 (BalanceConc!3229 Empty!1610))))))

(declare-fun bs!66579 () Bool)

(assert (= bs!66579 d!187737))

(declare-fun m!773538 () Bool)

(assert (=> bs!66579 m!773538))

(assert (=> b!527631 d!187737))

(declare-fun b!527877 () Bool)

(declare-fun e!317452 () Option!1248)

(declare-fun call!38111 () Option!1248)

(assert (=> b!527877 (= e!317452 call!38111)))

(declare-fun b!527878 () Bool)

(declare-fun lt!218024 () Option!1248)

(declare-fun lt!218022 () Option!1248)

(assert (=> b!527878 (= e!317452 (ite (and ((_ is None!1247) lt!218024) ((_ is None!1247) lt!218022)) None!1247 (ite ((_ is None!1247) lt!218022) lt!218024 (ite ((_ is None!1247) lt!218024) lt!218022 (ite (>= (size!4053 (_1!3324 (v!16038 lt!218024))) (size!4053 (_1!3324 (v!16038 lt!218022)))) lt!218024 lt!218022)))))))

(assert (=> b!527878 (= lt!218024 call!38111)))

(assert (=> b!527878 (= lt!218022 (maxPrefixZipperSequence!446 thiss!12147 (t!73595 rules!1345) input!747))))

(declare-fun b!527879 () Bool)

(declare-fun e!317450 () Bool)

(declare-fun e!317453 () Bool)

(assert (=> b!527879 (= e!317450 e!317453)))

(declare-fun res!223116 () Bool)

(assert (=> b!527879 (=> res!223116 e!317453)))

(declare-fun lt!218021 () Option!1248)

(declare-fun isDefined!1062 (Option!1248) Bool)

(assert (=> b!527879 (= res!223116 (not (isDefined!1062 lt!218021)))))

(declare-fun b!527880 () Bool)

(declare-fun e!317454 () Bool)

(declare-fun e!317455 () Bool)

(assert (=> b!527880 (= e!317454 e!317455)))

(declare-fun res!223118 () Bool)

(assert (=> b!527880 (=> (not res!223118) (not e!317455))))

(declare-fun get!1860 (Option!1248) tuple2!6136)

(declare-datatypes ((tuple2!6138 0))(
  ( (tuple2!6139 (_1!3326 Token!1522) (_2!3326 List!4979)) )
))
(declare-datatypes ((Option!1249 0))(
  ( (None!1248) (Some!1248 (v!16041 tuple2!6138)) )
))
(declare-fun get!1861 (Option!1249) tuple2!6138)

(declare-fun maxPrefixZipper!204 (LexerInterface!779 List!4983 List!4979) Option!1249)

(assert (=> b!527880 (= res!223118 (= (_1!3324 (get!1860 lt!218021)) (_1!3326 (get!1861 (maxPrefixZipper!204 thiss!12147 rules!1345 (list!2068 input!747))))))))

(declare-fun b!527881 () Bool)

(declare-fun e!317451 () Bool)

(assert (=> b!527881 (= e!317453 e!317451)))

(declare-fun res!223117 () Bool)

(assert (=> b!527881 (=> (not res!223117) (not e!317451))))

(declare-fun maxPrefix!483 (LexerInterface!779 List!4983 List!4979) Option!1249)

(assert (=> b!527881 (= res!223117 (= (_1!3324 (get!1860 lt!218021)) (_1!3326 (get!1861 (maxPrefix!483 thiss!12147 rules!1345 (list!2068 input!747))))))))

(declare-fun d!187739 () Bool)

(assert (=> d!187739 e!317450))

(declare-fun res!223120 () Bool)

(assert (=> d!187739 (=> (not res!223120) (not e!317450))))

(declare-fun isDefined!1063 (Option!1249) Bool)

(assert (=> d!187739 (= res!223120 (= (isDefined!1062 lt!218021) (isDefined!1063 (maxPrefixZipper!204 thiss!12147 rules!1345 (list!2068 input!747)))))))

(assert (=> d!187739 (= lt!218021 e!317452)))

(declare-fun c!101123 () Bool)

(assert (=> d!187739 (= c!101123 (and ((_ is Cons!4973) rules!1345) ((_ is Nil!4973) (t!73595 rules!1345))))))

(declare-fun lt!218026 () Unit!8805)

(declare-fun lt!218023 () Unit!8805)

(assert (=> d!187739 (= lt!218026 lt!218023)))

(declare-fun lt!218025 () List!4979)

(declare-fun lt!218020 () List!4979)

(declare-fun isPrefix!555 (List!4979 List!4979) Bool)

(assert (=> d!187739 (isPrefix!555 lt!218025 lt!218020)))

(declare-fun lemmaIsPrefixRefl!301 (List!4979 List!4979) Unit!8805)

(assert (=> d!187739 (= lt!218023 (lemmaIsPrefixRefl!301 lt!218025 lt!218020))))

(assert (=> d!187739 (= lt!218020 (list!2068 input!747))))

(assert (=> d!187739 (= lt!218025 (list!2068 input!747))))

(declare-fun rulesValidInductive!298 (LexerInterface!779 List!4983) Bool)

(assert (=> d!187739 (rulesValidInductive!298 thiss!12147 rules!1345)))

(assert (=> d!187739 (= (maxPrefixZipperSequence!446 thiss!12147 rules!1345 input!747) lt!218021)))

(declare-fun b!527882 () Bool)

(assert (=> b!527882 (= e!317451 (= (list!2068 (_2!3324 (get!1860 lt!218021))) (_2!3326 (get!1861 (maxPrefix!483 thiss!12147 rules!1345 (list!2068 input!747))))))))

(declare-fun b!527883 () Bool)

(assert (=> b!527883 (= e!317455 (= (list!2068 (_2!3324 (get!1860 lt!218021))) (_2!3326 (get!1861 (maxPrefixZipper!204 thiss!12147 rules!1345 (list!2068 input!747))))))))

(declare-fun bm!38106 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!205 (LexerInterface!779 Rule!1586 BalanceConc!3226) Option!1248)

(assert (=> bm!38106 (= call!38111 (maxPrefixOneRuleZipperSequence!205 thiss!12147 (h!10374 rules!1345) input!747))))

(declare-fun b!527884 () Bool)

(declare-fun res!223121 () Bool)

(assert (=> b!527884 (=> (not res!223121) (not e!317450))))

(assert (=> b!527884 (= res!223121 e!317454)))

(declare-fun res!223119 () Bool)

(assert (=> b!527884 (=> res!223119 e!317454)))

(assert (=> b!527884 (= res!223119 (not (isDefined!1062 lt!218021)))))

(assert (= (and d!187739 c!101123) b!527877))

(assert (= (and d!187739 (not c!101123)) b!527878))

(assert (= (or b!527877 b!527878) bm!38106))

(assert (= (and d!187739 res!223120) b!527884))

(assert (= (and b!527884 (not res!223119)) b!527880))

(assert (= (and b!527880 res!223118) b!527883))

(assert (= (and b!527884 res!223121) b!527879))

(assert (= (and b!527879 (not res!223116)) b!527881))

(assert (= (and b!527881 res!223117) b!527882))

(declare-fun m!773540 () Bool)

(assert (=> b!527882 m!773540))

(declare-fun m!773542 () Bool)

(assert (=> b!527882 m!773542))

(assert (=> b!527882 m!773248))

(assert (=> b!527882 m!773540))

(assert (=> b!527882 m!773248))

(declare-fun m!773544 () Bool)

(assert (=> b!527882 m!773544))

(declare-fun m!773546 () Bool)

(assert (=> b!527882 m!773546))

(assert (=> b!527880 m!773544))

(assert (=> b!527880 m!773248))

(assert (=> b!527880 m!773248))

(declare-fun m!773548 () Bool)

(assert (=> b!527880 m!773548))

(assert (=> b!527880 m!773548))

(declare-fun m!773550 () Bool)

(assert (=> b!527880 m!773550))

(assert (=> d!187739 m!773248))

(assert (=> d!187739 m!773548))

(assert (=> d!187739 m!773248))

(declare-fun m!773552 () Bool)

(assert (=> d!187739 m!773552))

(declare-fun m!773554 () Bool)

(assert (=> d!187739 m!773554))

(declare-fun m!773556 () Bool)

(assert (=> d!187739 m!773556))

(assert (=> d!187739 m!773548))

(declare-fun m!773558 () Bool)

(assert (=> d!187739 m!773558))

(declare-fun m!773560 () Bool)

(assert (=> d!187739 m!773560))

(assert (=> b!527879 m!773552))

(assert (=> b!527883 m!773248))

(assert (=> b!527883 m!773548))

(assert (=> b!527883 m!773248))

(assert (=> b!527883 m!773544))

(assert (=> b!527883 m!773546))

(assert (=> b!527883 m!773548))

(assert (=> b!527883 m!773550))

(assert (=> b!527884 m!773552))

(assert (=> b!527881 m!773544))

(assert (=> b!527881 m!773248))

(assert (=> b!527881 m!773248))

(assert (=> b!527881 m!773540))

(assert (=> b!527881 m!773540))

(assert (=> b!527881 m!773542))

(declare-fun m!773562 () Bool)

(assert (=> b!527878 m!773562))

(declare-fun m!773564 () Bool)

(assert (=> bm!38106 m!773564))

(assert (=> b!527631 d!187739))

(declare-fun b!527885 () Bool)

(declare-fun e!317458 () Option!1248)

(declare-fun call!38112 () Option!1248)

(assert (=> b!527885 (= e!317458 call!38112)))

(declare-fun b!527886 () Bool)

(declare-fun lt!218031 () Option!1248)

(declare-fun lt!218029 () Option!1248)

(assert (=> b!527886 (= e!317458 (ite (and ((_ is None!1247) lt!218031) ((_ is None!1247) lt!218029)) None!1247 (ite ((_ is None!1247) lt!218029) lt!218031 (ite ((_ is None!1247) lt!218031) lt!218029 (ite (>= (size!4053 (_1!3324 (v!16038 lt!218031))) (size!4053 (_1!3324 (v!16038 lt!218029)))) lt!218031 lt!218029)))))))

(assert (=> b!527886 (= lt!218031 call!38112)))

(assert (=> b!527886 (= lt!218029 (maxPrefixZipperSequence!446 thiss!12147 (t!73595 rules!1345) lt!217976))))

(declare-fun b!527887 () Bool)

(declare-fun e!317456 () Bool)

(declare-fun e!317459 () Bool)

(assert (=> b!527887 (= e!317456 e!317459)))

(declare-fun res!223122 () Bool)

(assert (=> b!527887 (=> res!223122 e!317459)))

(declare-fun lt!218028 () Option!1248)

(assert (=> b!527887 (= res!223122 (not (isDefined!1062 lt!218028)))))

(declare-fun b!527888 () Bool)

(declare-fun e!317460 () Bool)

(declare-fun e!317461 () Bool)

(assert (=> b!527888 (= e!317460 e!317461)))

(declare-fun res!223124 () Bool)

(assert (=> b!527888 (=> (not res!223124) (not e!317461))))

(assert (=> b!527888 (= res!223124 (= (_1!3324 (get!1860 lt!218028)) (_1!3326 (get!1861 (maxPrefixZipper!204 thiss!12147 rules!1345 (list!2068 lt!217976))))))))

(declare-fun b!527889 () Bool)

(declare-fun e!317457 () Bool)

(assert (=> b!527889 (= e!317459 e!317457)))

(declare-fun res!223123 () Bool)

(assert (=> b!527889 (=> (not res!223123) (not e!317457))))

(assert (=> b!527889 (= res!223123 (= (_1!3324 (get!1860 lt!218028)) (_1!3326 (get!1861 (maxPrefix!483 thiss!12147 rules!1345 (list!2068 lt!217976))))))))

(declare-fun d!187741 () Bool)

(assert (=> d!187741 e!317456))

(declare-fun res!223126 () Bool)

(assert (=> d!187741 (=> (not res!223126) (not e!317456))))

(assert (=> d!187741 (= res!223126 (= (isDefined!1062 lt!218028) (isDefined!1063 (maxPrefixZipper!204 thiss!12147 rules!1345 (list!2068 lt!217976)))))))

(assert (=> d!187741 (= lt!218028 e!317458)))

(declare-fun c!101124 () Bool)

(assert (=> d!187741 (= c!101124 (and ((_ is Cons!4973) rules!1345) ((_ is Nil!4973) (t!73595 rules!1345))))))

(declare-fun lt!218033 () Unit!8805)

(declare-fun lt!218030 () Unit!8805)

(assert (=> d!187741 (= lt!218033 lt!218030)))

(declare-fun lt!218032 () List!4979)

(declare-fun lt!218027 () List!4979)

(assert (=> d!187741 (isPrefix!555 lt!218032 lt!218027)))

(assert (=> d!187741 (= lt!218030 (lemmaIsPrefixRefl!301 lt!218032 lt!218027))))

(assert (=> d!187741 (= lt!218027 (list!2068 lt!217976))))

(assert (=> d!187741 (= lt!218032 (list!2068 lt!217976))))

(assert (=> d!187741 (rulesValidInductive!298 thiss!12147 rules!1345)))

(assert (=> d!187741 (= (maxPrefixZipperSequence!446 thiss!12147 rules!1345 lt!217976) lt!218028)))

(declare-fun b!527890 () Bool)

(assert (=> b!527890 (= e!317457 (= (list!2068 (_2!3324 (get!1860 lt!218028))) (_2!3326 (get!1861 (maxPrefix!483 thiss!12147 rules!1345 (list!2068 lt!217976))))))))

(declare-fun b!527891 () Bool)

(assert (=> b!527891 (= e!317461 (= (list!2068 (_2!3324 (get!1860 lt!218028))) (_2!3326 (get!1861 (maxPrefixZipper!204 thiss!12147 rules!1345 (list!2068 lt!217976))))))))

(declare-fun bm!38107 () Bool)

(assert (=> bm!38107 (= call!38112 (maxPrefixOneRuleZipperSequence!205 thiss!12147 (h!10374 rules!1345) lt!217976))))

(declare-fun b!527892 () Bool)

(declare-fun res!223127 () Bool)

(assert (=> b!527892 (=> (not res!223127) (not e!317456))))

(assert (=> b!527892 (= res!223127 e!317460)))

(declare-fun res!223125 () Bool)

(assert (=> b!527892 (=> res!223125 e!317460)))

(assert (=> b!527892 (= res!223125 (not (isDefined!1062 lt!218028)))))

(assert (= (and d!187741 c!101124) b!527885))

(assert (= (and d!187741 (not c!101124)) b!527886))

(assert (= (or b!527885 b!527886) bm!38107))

(assert (= (and d!187741 res!223126) b!527892))

(assert (= (and b!527892 (not res!223125)) b!527888))

(assert (= (and b!527888 res!223124) b!527891))

(assert (= (and b!527892 res!223127) b!527887))

(assert (= (and b!527887 (not res!223122)) b!527889))

(assert (= (and b!527889 res!223123) b!527890))

(declare-fun m!773566 () Bool)

(assert (=> b!527890 m!773566))

(declare-fun m!773568 () Bool)

(assert (=> b!527890 m!773568))

(declare-fun m!773570 () Bool)

(assert (=> b!527890 m!773570))

(assert (=> b!527890 m!773566))

(assert (=> b!527890 m!773570))

(declare-fun m!773572 () Bool)

(assert (=> b!527890 m!773572))

(declare-fun m!773574 () Bool)

(assert (=> b!527890 m!773574))

(assert (=> b!527888 m!773572))

(assert (=> b!527888 m!773570))

(assert (=> b!527888 m!773570))

(declare-fun m!773576 () Bool)

(assert (=> b!527888 m!773576))

(assert (=> b!527888 m!773576))

(declare-fun m!773578 () Bool)

(assert (=> b!527888 m!773578))

(assert (=> d!187741 m!773570))

(assert (=> d!187741 m!773576))

(assert (=> d!187741 m!773570))

(declare-fun m!773580 () Bool)

(assert (=> d!187741 m!773580))

(declare-fun m!773582 () Bool)

(assert (=> d!187741 m!773582))

(assert (=> d!187741 m!773556))

(assert (=> d!187741 m!773576))

(declare-fun m!773584 () Bool)

(assert (=> d!187741 m!773584))

(declare-fun m!773586 () Bool)

(assert (=> d!187741 m!773586))

(assert (=> b!527887 m!773580))

(assert (=> b!527891 m!773570))

(assert (=> b!527891 m!773576))

(assert (=> b!527891 m!773570))

(assert (=> b!527891 m!773572))

(assert (=> b!527891 m!773574))

(assert (=> b!527891 m!773576))

(assert (=> b!527891 m!773578))

(assert (=> b!527892 m!773580))

(assert (=> b!527889 m!773572))

(assert (=> b!527889 m!773570))

(assert (=> b!527889 m!773570))

(assert (=> b!527889 m!773566))

(assert (=> b!527889 m!773566))

(assert (=> b!527889 m!773568))

(declare-fun m!773588 () Bool)

(assert (=> b!527886 m!773588))

(declare-fun m!773590 () Bool)

(assert (=> bm!38107 m!773590))

(assert (=> b!527631 d!187741))

(declare-fun d!187743 () Bool)

(declare-fun e!317464 () Bool)

(assert (=> d!187743 e!317464))

(declare-fun res!223130 () Bool)

(assert (=> d!187743 (=> (not res!223130) (not e!317464))))

(declare-fun isBalanced!498 (Conc!1610) Bool)

(declare-fun append!159 (Conc!1610 Token!1522) Conc!1610)

(assert (=> d!187743 (= res!223130 (isBalanced!498 (append!159 (c!101091 (BalanceConc!3229 Empty!1610)) (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(declare-fun lt!218036 () BalanceConc!3228)

(assert (=> d!187743 (= lt!218036 (BalanceConc!3229 (append!159 (c!101091 (BalanceConc!3229 Empty!1610)) (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(assert (=> d!187743 (= (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977)))) lt!218036)))

(declare-fun b!527895 () Bool)

(declare-fun $colon+!29 (List!4982 Token!1522) List!4982)

(assert (=> b!527895 (= e!317464 (= (list!2069 lt!218036) ($colon+!29 (list!2069 (BalanceConc!3229 Empty!1610)) (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(assert (= (and d!187743 res!223130) b!527895))

(declare-fun m!773592 () Bool)

(assert (=> d!187743 m!773592))

(assert (=> d!187743 m!773592))

(declare-fun m!773594 () Bool)

(assert (=> d!187743 m!773594))

(declare-fun m!773596 () Bool)

(assert (=> b!527895 m!773596))

(assert (=> b!527895 m!773338))

(assert (=> b!527895 m!773338))

(declare-fun m!773598 () Bool)

(assert (=> b!527895 m!773598))

(assert (=> b!527631 d!187743))

(assert (=> b!527631 d!187725))

(declare-fun d!187745 () Bool)

(assert (=> d!187745 (isSuffix!120 lt!217974 (++!1378 lt!217986 lt!217974))))

(declare-fun lt!218039 () Unit!8805)

(declare-fun choose!3732 (List!4979 List!4979) Unit!8805)

(assert (=> d!187745 (= lt!218039 (choose!3732 lt!217986 lt!217974))))

(assert (=> d!187745 (= (lemmaConcatTwoListThenFSndIsSuffix!120 lt!217986 lt!217974) lt!218039)))

(declare-fun bs!66580 () Bool)

(assert (= bs!66580 d!187745))

(assert (=> bs!66580 m!773312))

(assert (=> bs!66580 m!773312))

(assert (=> bs!66580 m!773314))

(declare-fun m!773600 () Bool)

(assert (=> bs!66580 m!773600))

(assert (=> b!527631 d!187745))

(declare-fun b!527896 () Bool)

(declare-fun res!223134 () Bool)

(declare-fun e!317466 () Bool)

(assert (=> b!527896 (=> (not res!223134) (not e!317466))))

(declare-fun lt!218054 () tuple4!96)

(assert (=> b!527896 (= res!223134 (valid!576 (_2!3322 lt!218054)))))

(declare-fun b!527897 () Bool)

(declare-fun e!317468 () tuple4!96)

(declare-fun lt!218047 () tuple4!96)

(assert (=> b!527897 (= e!317468 (tuple4!97 (_1!3322 lt!218047) (_2!3322 lt!218047) (_3!255 lt!218047) (_4!48 lt!218047)))))

(declare-fun lt!218064 () tuple4!98)

(declare-fun lt!218055 () tuple2!6132)

(assert (=> b!527897 (= lt!218055 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 (_1!3325 lt!218064)))))))

(declare-fun lt!218051 () List!4979)

(assert (=> b!527897 (= lt!218051 (list!2068 lt!217956))))

(declare-fun lt!218068 () List!4979)

(assert (=> b!527897 (= lt!218068 (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!218064))))))))

(declare-fun lt!218040 () List!4979)

(assert (=> b!527897 (= lt!218040 (list!2068 (_2!3324 (v!16038 (_1!3325 lt!218064)))))))

(declare-fun lt!218058 () Unit!8805)

(assert (=> b!527897 (= lt!218058 (lemmaConcatAssociativity!619 lt!218051 lt!218068 lt!218040))))

(assert (=> b!527897 (= (++!1378 (++!1378 lt!218051 lt!218068) lt!218040) (++!1378 lt!218051 (++!1378 lt!218068 lt!218040)))))

(declare-fun lt!218042 () Unit!8805)

(assert (=> b!527897 (= lt!218042 lt!218058)))

(declare-fun lt!218071 () Option!1248)

(assert (=> b!527897 (= lt!218071 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 (_2!3324 (v!16038 (_1!3325 lt!217977)))))))

(declare-fun c!101126 () Bool)

(assert (=> b!527897 (= c!101126 ((_ is Some!1247) lt!218071))))

(declare-fun e!317465 () tuple2!6132)

(assert (=> b!527897 (= (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 (_1!3325 lt!217977)))) e!317465)))

(declare-fun lt!218067 () Unit!8805)

(declare-fun Unit!8809 () Unit!8805)

(assert (=> b!527897 (= lt!218067 Unit!8809)))

(declare-fun lt!218049 () List!4982)

(assert (=> b!527897 (= lt!218049 (list!2069 (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(declare-fun lt!218053 () List!4982)

(assert (=> b!527897 (= lt!218053 (Cons!4972 (_1!3324 (v!16038 (_1!3325 lt!218064))) Nil!4972))))

(declare-fun lt!218052 () List!4982)

(assert (=> b!527897 (= lt!218052 (list!2069 (_1!3321 lt!218055)))))

(declare-fun lt!218045 () Unit!8805)

(assert (=> b!527897 (= lt!218045 (lemmaConcatAssociativity!620 lt!218049 lt!218053 lt!218052))))

(assert (=> b!527897 (= (++!1379 (++!1379 lt!218049 lt!218053) lt!218052) (++!1379 lt!218049 (++!1379 lt!218053 lt!218052)))))

(declare-fun lt!218066 () Unit!8805)

(assert (=> b!527897 (= lt!218066 lt!218045)))

(declare-fun lt!218056 () List!4979)

(assert (=> b!527897 (= lt!218056 (++!1378 (list!2068 lt!217956) (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!218064)))))))))

(declare-fun lt!218069 () List!4979)

(assert (=> b!527897 (= lt!218069 (list!2068 (_2!3324 (v!16038 (_1!3325 lt!218064)))))))

(declare-fun lt!218048 () List!4982)

(assert (=> b!527897 (= lt!218048 (list!2069 (append!158 (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977)))) (_1!3324 (v!16038 (_1!3325 lt!218064))))))))

(declare-fun lt!218060 () Unit!8805)

(assert (=> b!527897 (= lt!218060 (lemmaLexThenLexPrefix!122 thiss!12147 rules!1345 lt!218056 lt!218069 lt!218048 (list!2069 (_1!3321 lt!218055)) (list!2068 (_2!3321 lt!218055))))))

(assert (=> b!527897 (= (lexList!305 thiss!12147 rules!1345 lt!218056) (tuple2!6135 lt!218048 Nil!4969))))

(declare-fun lt!218070 () Unit!8805)

(assert (=> b!527897 (= lt!218070 lt!218060)))

(declare-fun lt!218063 () BalanceConc!3226)

(assert (=> b!527897 (= lt!218063 (++!1380 lt!217956 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!218064))))))))

(declare-fun lt!218065 () Option!1248)

(assert (=> b!527897 (= lt!218065 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 lt!218063))))

(declare-fun c!101128 () Bool)

(assert (=> b!527897 (= c!101128 ((_ is Some!1247) lt!218065))))

(declare-fun e!317467 () tuple2!6132)

(assert (=> b!527897 (= (lexRec!143 thiss!12147 rules!1345 (++!1380 lt!217956 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!218064)))))) e!317467)))

(declare-fun lt!218074 () Unit!8805)

(declare-fun Unit!8810 () Unit!8805)

(assert (=> b!527897 (= lt!218074 Unit!8810)))

(declare-fun lt!218043 () BalanceConc!3226)

(assert (=> b!527897 (= lt!218043 (++!1380 lt!217956 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!218064))))))))

(declare-fun lt!218073 () List!4979)

(assert (=> b!527897 (= lt!218073 (list!2068 lt!218043))))

(declare-fun lt!218061 () List!4979)

(assert (=> b!527897 (= lt!218061 (list!2068 (_2!3324 (v!16038 (_1!3325 lt!218064)))))))

(declare-fun lt!218041 () Unit!8805)

(assert (=> b!527897 (= lt!218041 (lemmaConcatTwoListThenFSndIsSuffix!120 lt!218073 lt!218061))))

(assert (=> b!527897 (isSuffix!120 lt!218061 (++!1378 lt!218073 lt!218061))))

(declare-fun lt!218059 () Unit!8805)

(assert (=> b!527897 (= lt!218059 lt!218041)))

(assert (=> b!527897 (= lt!218047 (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 lt!218043 (_2!3324 (v!16038 (_1!3325 lt!218064))) (append!158 (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977)))) (_1!3324 (v!16038 (_1!3325 lt!218064)))) (_2!3325 lt!218064) (_3!256 lt!218064) (_4!49 lt!218064)))))

(declare-fun b!527898 () Bool)

(declare-fun res!223131 () Bool)

(assert (=> b!527898 (=> (not res!223131) (not e!317466))))

(assert (=> b!527898 (= res!223131 (valid!578 (_3!255 lt!218054)))))

(declare-fun b!527899 () Bool)

(declare-fun res!223135 () Bool)

(assert (=> b!527899 (=> (not res!223135) (not e!317466))))

(assert (=> b!527899 (= res!223135 (= (list!2068 (_2!3321 (_1!3322 lt!218054))) (list!2068 (_2!3321 (lexRec!143 thiss!12147 rules!1345 input!747)))))))

(declare-fun b!527900 () Bool)

(assert (=> b!527900 (= e!317467 (tuple2!6133 (BalanceConc!3229 Empty!1610) lt!218063))))

(declare-fun b!527901 () Bool)

(assert (=> b!527901 (= e!317466 (= (totalInput!1751 (_4!48 lt!218054)) input!747))))

(declare-fun b!527902 () Bool)

(declare-fun lt!218057 () tuple2!6132)

(assert (=> b!527902 (= lt!218057 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!218071))))))

(assert (=> b!527902 (= e!317465 (tuple2!6133 (prepend!242 (_1!3321 lt!218057) (_1!3324 (v!16038 lt!218071))) (_2!3321 lt!218057)))))

(declare-fun b!527903 () Bool)

(declare-fun lt!218062 () tuple2!6132)

(assert (=> b!527903 (= lt!218062 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!218065))))))

(assert (=> b!527903 (= e!317467 (tuple2!6133 (prepend!242 (_1!3321 lt!218062) (_1!3324 (v!16038 lt!218065))) (_2!3321 lt!218062)))))

(declare-fun b!527904 () Bool)

(assert (=> b!527904 (= e!317465 (tuple2!6133 (BalanceConc!3229 Empty!1610) (_2!3324 (v!16038 (_1!3325 lt!217977)))))))

(declare-fun b!527906 () Bool)

(declare-fun res!223133 () Bool)

(assert (=> b!527906 (=> (not res!223133) (not e!317466))))

(assert (=> b!527906 (= res!223133 (valid!577 (_4!48 lt!218054)))))

(declare-fun d!187747 () Bool)

(assert (=> d!187747 e!317466))

(declare-fun res!223132 () Bool)

(assert (=> d!187747 (=> (not res!223132) (not e!317466))))

(assert (=> d!187747 (= res!223132 (= (list!2069 (_1!3321 (_1!3322 lt!218054))) (list!2069 (_1!3321 (lexRec!143 thiss!12147 rules!1345 input!747)))))))

(assert (=> d!187747 (= lt!218054 e!317468)))

(declare-fun c!101127 () Bool)

(assert (=> d!187747 (= c!101127 ((_ is Some!1247) (_1!3325 lt!218064)))))

(assert (=> d!187747 (= lt!218064 (maxPrefixZipperSequenceV3Mem!3 thiss!12147 rules!1345 (_2!3324 (v!16038 (_1!3325 lt!217977))) input!747 (_2!3325 lt!217977) (_3!256 lt!217977) (_4!49 lt!217977)))))

(declare-fun lt!218050 () Unit!8805)

(declare-fun lt!218044 () Unit!8805)

(assert (=> d!187747 (= lt!218050 lt!218044)))

(declare-fun lt!218072 () List!4979)

(declare-fun lt!218046 () List!4979)

(assert (=> d!187747 (isSuffix!120 lt!218072 (++!1378 lt!218046 lt!218072))))

(assert (=> d!187747 (= lt!218044 (lemmaConcatTwoListThenFSndIsSuffix!120 lt!218046 lt!218072))))

(assert (=> d!187747 (= lt!218072 (list!2068 (_2!3324 (v!16038 (_1!3325 lt!217977)))))))

(assert (=> d!187747 (= lt!218046 (list!2068 lt!217956))))

(assert (=> d!187747 (= (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 lt!217956 (_2!3324 (v!16038 (_1!3325 lt!217977))) (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977)))) (_2!3325 lt!217977) (_3!256 lt!217977) (_4!49 lt!217977)) lt!218054)))

(declare-fun b!527905 () Bool)

(assert (=> b!527905 (= e!317468 (tuple4!97 (tuple2!6133 (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977)))) (_2!3324 (v!16038 (_1!3325 lt!217977)))) (_2!3325 lt!218064) (_3!256 lt!218064) (_4!49 lt!218064)))))

(assert (= (and d!187747 c!101127) b!527897))

(assert (= (and d!187747 (not c!101127)) b!527905))

(assert (= (and b!527897 c!101126) b!527902))

(assert (= (and b!527897 (not c!101126)) b!527904))

(assert (= (and b!527897 c!101128) b!527903))

(assert (= (and b!527897 (not c!101128)) b!527900))

(assert (= (and d!187747 res!223132) b!527899))

(assert (= (and b!527899 res!223135) b!527906))

(assert (= (and b!527906 res!223133) b!527896))

(assert (= (and b!527896 res!223134) b!527898))

(assert (= (and b!527898 res!223131) b!527901))

(declare-fun m!773602 () Bool)

(assert (=> b!527903 m!773602))

(declare-fun m!773604 () Bool)

(assert (=> b!527903 m!773604))

(declare-fun m!773606 () Bool)

(assert (=> b!527896 m!773606))

(declare-fun m!773608 () Bool)

(assert (=> b!527902 m!773608))

(declare-fun m!773610 () Bool)

(assert (=> b!527902 m!773610))

(declare-fun m!773612 () Bool)

(assert (=> b!527899 m!773612))

(assert (=> b!527899 m!773276))

(assert (=> b!527899 m!773278))

(declare-fun m!773614 () Bool)

(assert (=> b!527898 m!773614))

(declare-fun m!773616 () Bool)

(assert (=> b!527897 m!773616))

(declare-fun m!773618 () Bool)

(assert (=> b!527897 m!773618))

(declare-fun m!773620 () Bool)

(assert (=> b!527897 m!773620))

(declare-fun m!773622 () Bool)

(assert (=> b!527897 m!773622))

(declare-fun m!773624 () Bool)

(assert (=> b!527897 m!773624))

(declare-fun m!773626 () Bool)

(assert (=> b!527897 m!773626))

(declare-fun m!773628 () Bool)

(assert (=> b!527897 m!773628))

(declare-fun m!773630 () Bool)

(assert (=> b!527897 m!773630))

(declare-fun m!773632 () Bool)

(assert (=> b!527897 m!773632))

(declare-fun m!773634 () Bool)

(assert (=> b!527897 m!773634))

(declare-fun m!773636 () Bool)

(assert (=> b!527897 m!773636))

(declare-fun m!773638 () Bool)

(assert (=> b!527897 m!773638))

(declare-fun m!773640 () Bool)

(assert (=> b!527897 m!773640))

(declare-fun m!773642 () Bool)

(assert (=> b!527897 m!773642))

(declare-fun m!773644 () Bool)

(assert (=> b!527897 m!773644))

(assert (=> b!527897 m!773282))

(assert (=> b!527897 m!773616))

(declare-fun m!773646 () Bool)

(assert (=> b!527897 m!773646))

(declare-fun m!773648 () Bool)

(assert (=> b!527897 m!773648))

(assert (=> b!527897 m!773630))

(declare-fun m!773650 () Bool)

(assert (=> b!527897 m!773650))

(assert (=> b!527897 m!773622))

(declare-fun m!773652 () Bool)

(assert (=> b!527897 m!773652))

(declare-fun m!773654 () Bool)

(assert (=> b!527897 m!773654))

(assert (=> b!527897 m!773318))

(declare-fun m!773656 () Bool)

(assert (=> b!527897 m!773656))

(assert (=> b!527897 m!773650))

(assert (=> b!527897 m!773636))

(assert (=> b!527897 m!773646))

(assert (=> b!527897 m!773616))

(declare-fun m!773658 () Bool)

(assert (=> b!527897 m!773658))

(assert (=> b!527897 m!773638))

(declare-fun m!773660 () Bool)

(assert (=> b!527897 m!773660))

(declare-fun m!773662 () Bool)

(assert (=> b!527897 m!773662))

(assert (=> b!527897 m!773318))

(declare-fun m!773664 () Bool)

(assert (=> b!527897 m!773664))

(declare-fun m!773666 () Bool)

(assert (=> b!527897 m!773666))

(declare-fun m!773668 () Bool)

(assert (=> b!527897 m!773668))

(assert (=> b!527897 m!773282))

(assert (=> b!527897 m!773326))

(assert (=> b!527897 m!773634))

(declare-fun m!773670 () Bool)

(assert (=> b!527897 m!773670))

(declare-fun m!773672 () Bool)

(assert (=> b!527897 m!773672))

(assert (=> b!527897 m!773294))

(assert (=> b!527897 m!773650))

(assert (=> b!527897 m!773664))

(assert (=> b!527897 m!773642))

(assert (=> b!527897 m!773620))

(declare-fun m!773674 () Bool)

(assert (=> b!527897 m!773674))

(declare-fun m!773676 () Bool)

(assert (=> b!527906 m!773676))

(assert (=> d!187747 m!773318))

(declare-fun m!773678 () Bool)

(assert (=> d!187747 m!773678))

(assert (=> d!187747 m!773320))

(declare-fun m!773680 () Bool)

(assert (=> d!187747 m!773680))

(assert (=> d!187747 m!773352))

(declare-fun m!773682 () Bool)

(assert (=> d!187747 m!773682))

(assert (=> d!187747 m!773276))

(assert (=> d!187747 m!773682))

(declare-fun m!773684 () Bool)

(assert (=> d!187747 m!773684))

(declare-fun m!773686 () Bool)

(assert (=> d!187747 m!773686))

(assert (=> b!527631 d!187747))

(declare-fun b!527909 () Bool)

(declare-fun res!223136 () Bool)

(declare-fun e!317469 () Bool)

(assert (=> b!527909 (=> (not res!223136) (not e!317469))))

(declare-fun lt!218075 () List!4979)

(assert (=> b!527909 (= res!223136 (= (size!4056 lt!218075) (+ (size!4056 lt!217964) (size!4056 (++!1378 lt!217981 lt!217953)))))))

(declare-fun b!527907 () Bool)

(declare-fun e!317470 () List!4979)

(assert (=> b!527907 (= e!317470 (++!1378 lt!217981 lt!217953))))

(declare-fun b!527908 () Bool)

(assert (=> b!527908 (= e!317470 (Cons!4969 (h!10370 lt!217964) (++!1378 (t!73591 lt!217964) (++!1378 lt!217981 lt!217953))))))

(declare-fun d!187749 () Bool)

(assert (=> d!187749 e!317469))

(declare-fun res!223137 () Bool)

(assert (=> d!187749 (=> (not res!223137) (not e!317469))))

(assert (=> d!187749 (= res!223137 (= (content!889 lt!218075) ((_ map or) (content!889 lt!217964) (content!889 (++!1378 lt!217981 lt!217953)))))))

(assert (=> d!187749 (= lt!218075 e!317470)))

(declare-fun c!101129 () Bool)

(assert (=> d!187749 (= c!101129 ((_ is Nil!4969) lt!217964))))

(assert (=> d!187749 (= (++!1378 lt!217964 (++!1378 lt!217981 lt!217953)) lt!218075)))

(declare-fun b!527910 () Bool)

(assert (=> b!527910 (= e!317469 (or (not (= (++!1378 lt!217981 lt!217953) Nil!4969)) (= lt!218075 lt!217964)))))

(assert (= (and d!187749 c!101129) b!527907))

(assert (= (and d!187749 (not c!101129)) b!527908))

(assert (= (and d!187749 res!223137) b!527909))

(assert (= (and b!527909 res!223136) b!527910))

(declare-fun m!773688 () Bool)

(assert (=> b!527909 m!773688))

(declare-fun m!773690 () Bool)

(assert (=> b!527909 m!773690))

(assert (=> b!527909 m!773308))

(declare-fun m!773692 () Bool)

(assert (=> b!527909 m!773692))

(assert (=> b!527908 m!773308))

(declare-fun m!773694 () Bool)

(assert (=> b!527908 m!773694))

(declare-fun m!773696 () Bool)

(assert (=> d!187749 m!773696))

(declare-fun m!773698 () Bool)

(assert (=> d!187749 m!773698))

(assert (=> d!187749 m!773308))

(declare-fun m!773700 () Bool)

(assert (=> d!187749 m!773700))

(assert (=> b!527631 d!187749))

(declare-fun b!527922 () Bool)

(declare-fun e!317476 () Bool)

(declare-fun lt!218078 () List!4982)

(assert (=> b!527922 (= e!317476 (or (not (= (++!1379 lt!217966 lt!217965) Nil!4972)) (= lt!218078 lt!217962)))))

(declare-fun b!527921 () Bool)

(declare-fun res!223143 () Bool)

(assert (=> b!527921 (=> (not res!223143) (not e!317476))))

(declare-fun size!4058 (List!4982) Int)

(assert (=> b!527921 (= res!223143 (= (size!4058 lt!218078) (+ (size!4058 lt!217962) (size!4058 (++!1379 lt!217966 lt!217965)))))))

(declare-fun d!187751 () Bool)

(assert (=> d!187751 e!317476))

(declare-fun res!223142 () Bool)

(assert (=> d!187751 (=> (not res!223142) (not e!317476))))

(declare-fun content!890 (List!4982) (InoxSet Token!1522))

(assert (=> d!187751 (= res!223142 (= (content!890 lt!218078) ((_ map or) (content!890 lt!217962) (content!890 (++!1379 lt!217966 lt!217965)))))))

(declare-fun e!317475 () List!4982)

(assert (=> d!187751 (= lt!218078 e!317475)))

(declare-fun c!101132 () Bool)

(assert (=> d!187751 (= c!101132 ((_ is Nil!4972) lt!217962))))

(assert (=> d!187751 (= (++!1379 lt!217962 (++!1379 lt!217966 lt!217965)) lt!218078)))

(declare-fun b!527919 () Bool)

(assert (=> b!527919 (= e!317475 (++!1379 lt!217966 lt!217965))))

(declare-fun b!527920 () Bool)

(assert (=> b!527920 (= e!317475 (Cons!4972 (h!10373 lt!217962) (++!1379 (t!73594 lt!217962) (++!1379 lt!217966 lt!217965))))))

(assert (= (and d!187751 c!101132) b!527919))

(assert (= (and d!187751 (not c!101132)) b!527920))

(assert (= (and d!187751 res!223142) b!527921))

(assert (= (and b!527921 res!223143) b!527922))

(declare-fun m!773702 () Bool)

(assert (=> b!527921 m!773702))

(declare-fun m!773704 () Bool)

(assert (=> b!527921 m!773704))

(assert (=> b!527921 m!773296))

(declare-fun m!773706 () Bool)

(assert (=> b!527921 m!773706))

(declare-fun m!773708 () Bool)

(assert (=> d!187751 m!773708))

(declare-fun m!773710 () Bool)

(assert (=> d!187751 m!773710))

(assert (=> d!187751 m!773296))

(declare-fun m!773712 () Bool)

(assert (=> d!187751 m!773712))

(assert (=> b!527920 m!773296))

(declare-fun m!773714 () Bool)

(assert (=> b!527920 m!773714))

(assert (=> b!527631 d!187751))

(declare-fun b!527925 () Bool)

(declare-fun res!223144 () Bool)

(declare-fun e!317477 () Bool)

(assert (=> b!527925 (=> (not res!223144) (not e!317477))))

(declare-fun lt!218079 () List!4979)

(assert (=> b!527925 (= res!223144 (= (size!4056 lt!218079) (+ (size!4056 (++!1378 lt!217964 lt!217981)) (size!4056 lt!217953))))))

(declare-fun b!527923 () Bool)

(declare-fun e!317478 () List!4979)

(assert (=> b!527923 (= e!317478 lt!217953)))

(declare-fun b!527924 () Bool)

(assert (=> b!527924 (= e!317478 (Cons!4969 (h!10370 (++!1378 lt!217964 lt!217981)) (++!1378 (t!73591 (++!1378 lt!217964 lt!217981)) lt!217953)))))

(declare-fun d!187753 () Bool)

(assert (=> d!187753 e!317477))

(declare-fun res!223145 () Bool)

(assert (=> d!187753 (=> (not res!223145) (not e!317477))))

(assert (=> d!187753 (= res!223145 (= (content!889 lt!218079) ((_ map or) (content!889 (++!1378 lt!217964 lt!217981)) (content!889 lt!217953))))))

(assert (=> d!187753 (= lt!218079 e!317478)))

(declare-fun c!101133 () Bool)

(assert (=> d!187753 (= c!101133 ((_ is Nil!4969) (++!1378 lt!217964 lt!217981)))))

(assert (=> d!187753 (= (++!1378 (++!1378 lt!217964 lt!217981) lt!217953) lt!218079)))

(declare-fun b!527926 () Bool)

(assert (=> b!527926 (= e!317477 (or (not (= lt!217953 Nil!4969)) (= lt!218079 (++!1378 lt!217964 lt!217981))))))

(assert (= (and d!187753 c!101133) b!527923))

(assert (= (and d!187753 (not c!101133)) b!527924))

(assert (= (and d!187753 res!223145) b!527925))

(assert (= (and b!527925 res!223144) b!527926))

(declare-fun m!773716 () Bool)

(assert (=> b!527925 m!773716))

(assert (=> b!527925 m!773286))

(declare-fun m!773718 () Bool)

(assert (=> b!527925 m!773718))

(assert (=> b!527925 m!773526))

(declare-fun m!773720 () Bool)

(assert (=> b!527924 m!773720))

(declare-fun m!773722 () Bool)

(assert (=> d!187753 m!773722))

(assert (=> d!187753 m!773286))

(declare-fun m!773724 () Bool)

(assert (=> d!187753 m!773724))

(assert (=> d!187753 m!773534))

(assert (=> b!527631 d!187753))

(declare-fun d!187755 () Bool)

(assert (=> d!187755 (= (list!2068 lt!217956) (list!2070 (c!101090 lt!217956)))))

(declare-fun bs!66581 () Bool)

(assert (= bs!66581 d!187755))

(declare-fun m!773726 () Bool)

(assert (=> bs!66581 m!773726))

(assert (=> b!527631 d!187755))

(declare-fun lt!218080 () List!4982)

(declare-fun e!317480 () Bool)

(declare-fun b!527930 () Bool)

(assert (=> b!527930 (= e!317480 (or (not (= lt!217965 Nil!4972)) (= lt!218080 lt!217966)))))

(declare-fun b!527929 () Bool)

(declare-fun res!223147 () Bool)

(assert (=> b!527929 (=> (not res!223147) (not e!317480))))

(assert (=> b!527929 (= res!223147 (= (size!4058 lt!218080) (+ (size!4058 lt!217966) (size!4058 lt!217965))))))

(declare-fun d!187757 () Bool)

(assert (=> d!187757 e!317480))

(declare-fun res!223146 () Bool)

(assert (=> d!187757 (=> (not res!223146) (not e!317480))))

(assert (=> d!187757 (= res!223146 (= (content!890 lt!218080) ((_ map or) (content!890 lt!217966) (content!890 lt!217965))))))

(declare-fun e!317479 () List!4982)

(assert (=> d!187757 (= lt!218080 e!317479)))

(declare-fun c!101134 () Bool)

(assert (=> d!187757 (= c!101134 ((_ is Nil!4972) lt!217966))))

(assert (=> d!187757 (= (++!1379 lt!217966 lt!217965) lt!218080)))

(declare-fun b!527927 () Bool)

(assert (=> b!527927 (= e!317479 lt!217965)))

(declare-fun b!527928 () Bool)

(assert (=> b!527928 (= e!317479 (Cons!4972 (h!10373 lt!217966) (++!1379 (t!73594 lt!217966) lt!217965)))))

(assert (= (and d!187757 c!101134) b!527927))

(assert (= (and d!187757 (not c!101134)) b!527928))

(assert (= (and d!187757 res!223146) b!527929))

(assert (= (and b!527929 res!223147) b!527930))

(declare-fun m!773728 () Bool)

(assert (=> b!527929 m!773728))

(declare-fun m!773730 () Bool)

(assert (=> b!527929 m!773730))

(declare-fun m!773732 () Bool)

(assert (=> b!527929 m!773732))

(declare-fun m!773734 () Bool)

(assert (=> d!187757 m!773734))

(declare-fun m!773736 () Bool)

(assert (=> d!187757 m!773736))

(declare-fun m!773738 () Bool)

(assert (=> d!187757 m!773738))

(declare-fun m!773740 () Bool)

(assert (=> b!527928 m!773740))

(assert (=> b!527631 d!187757))

(declare-fun d!187759 () Bool)

(assert (=> d!187759 (= (list!2068 (BalanceConc!3227 Empty!1609)) (list!2070 (c!101090 (BalanceConc!3227 Empty!1609))))))

(declare-fun bs!66582 () Bool)

(assert (= bs!66582 d!187759))

(declare-fun m!773742 () Bool)

(assert (=> bs!66582 m!773742))

(assert (=> b!527631 d!187759))

(declare-fun d!187761 () Bool)

(assert (=> d!187761 (= (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))) (list!2070 (c!101090 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))))))

(declare-fun bs!66583 () Bool)

(assert (= bs!66583 d!187761))

(declare-fun m!773744 () Bool)

(assert (=> bs!66583 m!773744))

(assert (=> b!527631 d!187761))

(declare-fun d!187763 () Bool)

(assert (=> d!187763 (= (list!2068 (_2!3321 lt!217968)) (list!2070 (c!101090 (_2!3321 lt!217968))))))

(declare-fun bs!66584 () Bool)

(assert (= bs!66584 d!187763))

(declare-fun m!773746 () Bool)

(assert (=> bs!66584 m!773746))

(assert (=> b!527631 d!187763))

(declare-fun b!527941 () Bool)

(declare-fun e!317488 () tuple2!6134)

(declare-fun lt!218087 () Option!1249)

(declare-fun lt!218089 () tuple2!6134)

(assert (=> b!527941 (= e!317488 (tuple2!6135 (Cons!4972 (_1!3326 (v!16041 lt!218087)) (_1!3323 lt!218089)) (_2!3323 lt!218089)))))

(assert (=> b!527941 (= lt!218089 (lexList!305 thiss!12147 rules!1345 (_2!3326 (v!16041 lt!218087))))))

(declare-fun d!187765 () Bool)

(declare-fun e!317487 () Bool)

(assert (=> d!187765 e!317487))

(declare-fun c!101139 () Bool)

(declare-fun lt!218088 () tuple2!6134)

(assert (=> d!187765 (= c!101139 (> (size!4058 (_1!3323 lt!218088)) 0))))

(assert (=> d!187765 (= lt!218088 e!317488)))

(declare-fun c!101140 () Bool)

(assert (=> d!187765 (= c!101140 ((_ is Some!1248) lt!218087))))

(assert (=> d!187765 (= lt!218087 (maxPrefix!483 thiss!12147 rules!1345 lt!217969))))

(assert (=> d!187765 (= (lexList!305 thiss!12147 rules!1345 lt!217969) lt!218088)))

(declare-fun b!527942 () Bool)

(declare-fun e!317489 () Bool)

(declare-fun isEmpty!3611 (List!4982) Bool)

(assert (=> b!527942 (= e!317489 (not (isEmpty!3611 (_1!3323 lt!218088))))))

(declare-fun b!527943 () Bool)

(assert (=> b!527943 (= e!317488 (tuple2!6135 Nil!4972 lt!217969))))

(declare-fun b!527944 () Bool)

(assert (=> b!527944 (= e!317487 (= (_2!3323 lt!218088) lt!217969))))

(declare-fun b!527945 () Bool)

(assert (=> b!527945 (= e!317487 e!317489)))

(declare-fun res!223150 () Bool)

(assert (=> b!527945 (= res!223150 (< (size!4056 (_2!3323 lt!218088)) (size!4056 lt!217969)))))

(assert (=> b!527945 (=> (not res!223150) (not e!317489))))

(assert (= (and d!187765 c!101140) b!527941))

(assert (= (and d!187765 (not c!101140)) b!527943))

(assert (= (and d!187765 c!101139) b!527945))

(assert (= (and d!187765 (not c!101139)) b!527944))

(assert (= (and b!527945 res!223150) b!527942))

(declare-fun m!773748 () Bool)

(assert (=> b!527941 m!773748))

(declare-fun m!773750 () Bool)

(assert (=> d!187765 m!773750))

(declare-fun m!773752 () Bool)

(assert (=> d!187765 m!773752))

(declare-fun m!773754 () Bool)

(assert (=> b!527942 m!773754))

(declare-fun m!773756 () Bool)

(assert (=> b!527945 m!773756))

(declare-fun m!773758 () Bool)

(assert (=> b!527945 m!773758))

(assert (=> b!527631 d!187765))

(declare-fun lt!218090 () List!4982)

(declare-fun e!317491 () Bool)

(declare-fun b!527949 () Bool)

(assert (=> b!527949 (= e!317491 (or (not (= lt!217965 Nil!4972)) (= lt!218090 (++!1379 lt!217962 lt!217966))))))

(declare-fun b!527948 () Bool)

(declare-fun res!223152 () Bool)

(assert (=> b!527948 (=> (not res!223152) (not e!317491))))

(assert (=> b!527948 (= res!223152 (= (size!4058 lt!218090) (+ (size!4058 (++!1379 lt!217962 lt!217966)) (size!4058 lt!217965))))))

(declare-fun d!187767 () Bool)

(assert (=> d!187767 e!317491))

(declare-fun res!223151 () Bool)

(assert (=> d!187767 (=> (not res!223151) (not e!317491))))

(assert (=> d!187767 (= res!223151 (= (content!890 lt!218090) ((_ map or) (content!890 (++!1379 lt!217962 lt!217966)) (content!890 lt!217965))))))

(declare-fun e!317490 () List!4982)

(assert (=> d!187767 (= lt!218090 e!317490)))

(declare-fun c!101141 () Bool)

(assert (=> d!187767 (= c!101141 ((_ is Nil!4972) (++!1379 lt!217962 lt!217966)))))

(assert (=> d!187767 (= (++!1379 (++!1379 lt!217962 lt!217966) lt!217965) lt!218090)))

(declare-fun b!527946 () Bool)

(assert (=> b!527946 (= e!317490 lt!217965)))

(declare-fun b!527947 () Bool)

(assert (=> b!527947 (= e!317490 (Cons!4972 (h!10373 (++!1379 lt!217962 lt!217966)) (++!1379 (t!73594 (++!1379 lt!217962 lt!217966)) lt!217965)))))

(assert (= (and d!187767 c!101141) b!527946))

(assert (= (and d!187767 (not c!101141)) b!527947))

(assert (= (and d!187767 res!223151) b!527948))

(assert (= (and b!527948 res!223152) b!527949))

(declare-fun m!773760 () Bool)

(assert (=> b!527948 m!773760))

(assert (=> b!527948 m!773300))

(declare-fun m!773762 () Bool)

(assert (=> b!527948 m!773762))

(assert (=> b!527948 m!773732))

(declare-fun m!773764 () Bool)

(assert (=> d!187767 m!773764))

(assert (=> d!187767 m!773300))

(declare-fun m!773766 () Bool)

(assert (=> d!187767 m!773766))

(assert (=> d!187767 m!773738))

(declare-fun m!773768 () Bool)

(assert (=> b!527947 m!773768))

(assert (=> b!527631 d!187767))

(declare-fun b!527952 () Bool)

(declare-fun res!223153 () Bool)

(declare-fun e!317492 () Bool)

(assert (=> b!527952 (=> (not res!223153) (not e!317492))))

(declare-fun lt!218091 () List!4979)

(assert (=> b!527952 (= res!223153 (= (size!4056 lt!218091) (+ (size!4056 lt!217986) (size!4056 lt!217974))))))

(declare-fun b!527950 () Bool)

(declare-fun e!317493 () List!4979)

(assert (=> b!527950 (= e!317493 lt!217974)))

(declare-fun b!527951 () Bool)

(assert (=> b!527951 (= e!317493 (Cons!4969 (h!10370 lt!217986) (++!1378 (t!73591 lt!217986) lt!217974)))))

(declare-fun d!187769 () Bool)

(assert (=> d!187769 e!317492))

(declare-fun res!223154 () Bool)

(assert (=> d!187769 (=> (not res!223154) (not e!317492))))

(assert (=> d!187769 (= res!223154 (= (content!889 lt!218091) ((_ map or) (content!889 lt!217986) (content!889 lt!217974))))))

(assert (=> d!187769 (= lt!218091 e!317493)))

(declare-fun c!101142 () Bool)

(assert (=> d!187769 (= c!101142 ((_ is Nil!4969) lt!217986))))

(assert (=> d!187769 (= (++!1378 lt!217986 lt!217974) lt!218091)))

(declare-fun b!527953 () Bool)

(assert (=> b!527953 (= e!317492 (or (not (= lt!217974 Nil!4969)) (= lt!218091 lt!217986)))))

(assert (= (and d!187769 c!101142) b!527950))

(assert (= (and d!187769 (not c!101142)) b!527951))

(assert (= (and d!187769 res!223154) b!527952))

(assert (= (and b!527952 res!223153) b!527953))

(declare-fun m!773770 () Bool)

(assert (=> b!527952 m!773770))

(declare-fun m!773772 () Bool)

(assert (=> b!527952 m!773772))

(declare-fun m!773774 () Bool)

(assert (=> b!527952 m!773774))

(declare-fun m!773776 () Bool)

(assert (=> b!527951 m!773776))

(declare-fun m!773778 () Bool)

(assert (=> d!187769 m!773778))

(declare-fun m!773780 () Bool)

(assert (=> d!187769 m!773780))

(declare-fun m!773782 () Bool)

(assert (=> d!187769 m!773782))

(assert (=> b!527631 d!187769))

(declare-fun b!527956 () Bool)

(declare-fun res!223155 () Bool)

(declare-fun e!317494 () Bool)

(assert (=> b!527956 (=> (not res!223155) (not e!317494))))

(declare-fun lt!218092 () List!4979)

(assert (=> b!527956 (= res!223155 (= (size!4056 lt!218092) (+ (size!4056 (list!2068 (BalanceConc!3227 Empty!1609))) (size!4056 (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))))))))

(declare-fun b!527954 () Bool)

(declare-fun e!317495 () List!4979)

(assert (=> b!527954 (= e!317495 (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(declare-fun b!527955 () Bool)

(assert (=> b!527955 (= e!317495 (Cons!4969 (h!10370 (list!2068 (BalanceConc!3227 Empty!1609))) (++!1378 (t!73591 (list!2068 (BalanceConc!3227 Empty!1609))) (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))))

(declare-fun d!187771 () Bool)

(assert (=> d!187771 e!317494))

(declare-fun res!223156 () Bool)

(assert (=> d!187771 (=> (not res!223156) (not e!317494))))

(assert (=> d!187771 (= res!223156 (= (content!889 lt!218092) ((_ map or) (content!889 (list!2068 (BalanceConc!3227 Empty!1609))) (content!889 (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))))))))

(assert (=> d!187771 (= lt!218092 e!317495)))

(declare-fun c!101143 () Bool)

(assert (=> d!187771 (= c!101143 ((_ is Nil!4969) (list!2068 (BalanceConc!3227 Empty!1609))))))

(assert (=> d!187771 (= (++!1378 (list!2068 (BalanceConc!3227 Empty!1609)) (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))) lt!218092)))

(declare-fun b!527957 () Bool)

(assert (=> b!527957 (= e!317494 (or (not (= (list!2068 (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))) Nil!4969)) (= lt!218092 (list!2068 (BalanceConc!3227 Empty!1609)))))))

(assert (= (and d!187771 c!101143) b!527954))

(assert (= (and d!187771 (not c!101143)) b!527955))

(assert (= (and d!187771 res!223156) b!527956))

(assert (= (and b!527956 res!223155) b!527957))

(declare-fun m!773784 () Bool)

(assert (=> b!527956 m!773784))

(assert (=> b!527956 m!773322))

(declare-fun m!773786 () Bool)

(assert (=> b!527956 m!773786))

(assert (=> b!527956 m!773332))

(declare-fun m!773788 () Bool)

(assert (=> b!527956 m!773788))

(assert (=> b!527955 m!773332))

(declare-fun m!773790 () Bool)

(assert (=> b!527955 m!773790))

(declare-fun m!773792 () Bool)

(assert (=> d!187771 m!773792))

(assert (=> d!187771 m!773322))

(declare-fun m!773794 () Bool)

(assert (=> d!187771 m!773794))

(assert (=> d!187771 m!773332))

(declare-fun m!773796 () Bool)

(assert (=> d!187771 m!773796))

(assert (=> b!527631 d!187771))

(declare-fun d!187773 () Bool)

(assert (=> d!187773 (= (list!2068 (_2!3324 (v!16038 (_1!3325 lt!217977)))) (list!2070 (c!101090 (_2!3324 (v!16038 (_1!3325 lt!217977))))))))

(declare-fun bs!66585 () Bool)

(assert (= bs!66585 d!187773))

(declare-fun m!773798 () Bool)

(assert (=> bs!66585 m!773798))

(assert (=> b!527631 d!187773))

(declare-fun d!187775 () Bool)

(declare-fun lt!218095 () BalanceConc!3226)

(assert (=> d!187775 (= (list!2068 lt!218095) (originalCharacters!932 (_1!3324 (v!16038 (_1!3325 lt!217977)))))))

(declare-fun dynLambda!3037 (Int TokenValue!917) BalanceConc!3226)

(assert (=> d!187775 (= lt!218095 (dynLambda!3037 (toChars!1589 (transformation!893 (rule!1593 (_1!3324 (v!16038 (_1!3325 lt!217977)))))) (value!30308 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))

(assert (=> d!187775 (= (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))) lt!218095)))

(declare-fun b_lambda!20469 () Bool)

(assert (=> (not b_lambda!20469) (not d!187775)))

(declare-fun tb!47189 () Bool)

(declare-fun t!73598 () Bool)

(assert (=> (and b!527557 (= (toChars!1589 (transformation!893 (h!10374 rules!1345))) (toChars!1589 (transformation!893 (rule!1593 (_1!3324 (v!16038 (_1!3325 lt!217977))))))) t!73598) tb!47189))

(declare-fun b!527962 () Bool)

(declare-fun e!317498 () Bool)

(declare-fun tp!167428 () Bool)

(assert (=> b!527962 (= e!317498 (and (inv!6228 (c!101090 (dynLambda!3037 (toChars!1589 (transformation!893 (rule!1593 (_1!3324 (v!16038 (_1!3325 lt!217977)))))) (value!30308 (_1!3324 (v!16038 (_1!3325 lt!217977))))))) tp!167428))))

(declare-fun result!52510 () Bool)

(assert (=> tb!47189 (= result!52510 (and (inv!6226 (dynLambda!3037 (toChars!1589 (transformation!893 (rule!1593 (_1!3324 (v!16038 (_1!3325 lt!217977)))))) (value!30308 (_1!3324 (v!16038 (_1!3325 lt!217977)))))) e!317498))))

(assert (= tb!47189 b!527962))

(declare-fun m!773800 () Bool)

(assert (=> b!527962 m!773800))

(declare-fun m!773802 () Bool)

(assert (=> tb!47189 m!773802))

(assert (=> d!187775 t!73598))

(declare-fun b_and!51547 () Bool)

(assert (= b_and!51535 (and (=> t!73598 result!52510) b_and!51547)))

(declare-fun t!73600 () Bool)

(declare-fun tb!47191 () Bool)

(assert (=> (and b!527783 (= (toChars!1589 (transformation!893 (h!10374 (t!73595 rules!1345)))) (toChars!1589 (transformation!893 (rule!1593 (_1!3324 (v!16038 (_1!3325 lt!217977))))))) t!73600) tb!47191))

(declare-fun result!52514 () Bool)

(assert (= result!52514 result!52510))

(assert (=> d!187775 t!73600))

(declare-fun b_and!51549 () Bool)

(assert (= b_and!51545 (and (=> t!73600 result!52514) b_and!51549)))

(declare-fun m!773804 () Bool)

(assert (=> d!187775 m!773804))

(declare-fun m!773806 () Bool)

(assert (=> d!187775 m!773806))

(assert (=> b!527631 d!187775))

(declare-fun d!187777 () Bool)

(assert (=> d!187777 (= (++!1379 (++!1379 lt!217962 lt!217966) lt!217965) (++!1379 lt!217962 (++!1379 lt!217966 lt!217965)))))

(declare-fun lt!218098 () Unit!8805)

(declare-fun choose!3733 (List!4982 List!4982 List!4982) Unit!8805)

(assert (=> d!187777 (= lt!218098 (choose!3733 lt!217962 lt!217966 lt!217965))))

(assert (=> d!187777 (= (lemmaConcatAssociativity!620 lt!217962 lt!217966 lt!217965) lt!218098)))

(declare-fun bs!66586 () Bool)

(assert (= bs!66586 d!187777))

(assert (=> bs!66586 m!773296))

(assert (=> bs!66586 m!773296))

(assert (=> bs!66586 m!773298))

(assert (=> bs!66586 m!773300))

(assert (=> bs!66586 m!773300))

(assert (=> bs!66586 m!773340))

(declare-fun m!773808 () Bool)

(assert (=> bs!66586 m!773808))

(assert (=> b!527631 d!187777))

(declare-fun d!187779 () Bool)

(declare-fun e!317501 () Bool)

(assert (=> d!187779 e!317501))

(declare-fun res!223159 () Bool)

(assert (=> d!187779 (=> res!223159 e!317501)))

(declare-fun lt!218101 () Bool)

(assert (=> d!187779 (= res!223159 (not lt!218101))))

(declare-fun drop!326 (List!4979 Int) List!4979)

(assert (=> d!187779 (= lt!218101 (= lt!217974 (drop!326 (++!1378 lt!217986 lt!217974) (- (size!4056 (++!1378 lt!217986 lt!217974)) (size!4056 lt!217974)))))))

(assert (=> d!187779 (= (isSuffix!120 lt!217974 (++!1378 lt!217986 lt!217974)) lt!218101)))

(declare-fun b!527965 () Bool)

(assert (=> b!527965 (= e!317501 (>= (size!4056 (++!1378 lt!217986 lt!217974)) (size!4056 lt!217974)))))

(assert (= (and d!187779 (not res!223159)) b!527965))

(assert (=> d!187779 m!773312))

(declare-fun m!773810 () Bool)

(assert (=> d!187779 m!773810))

(assert (=> d!187779 m!773774))

(assert (=> d!187779 m!773312))

(declare-fun m!773812 () Bool)

(assert (=> d!187779 m!773812))

(assert (=> b!527965 m!773312))

(assert (=> b!527965 m!773810))

(assert (=> b!527965 m!773774))

(assert (=> b!527631 d!187779))

(declare-fun d!187781 () Bool)

(assert (=> d!187781 (= (lexList!305 thiss!12147 rules!1345 lt!217969) (tuple2!6135 lt!217961 Nil!4969))))

(declare-fun lt!218104 () Unit!8805)

(declare-fun choose!3734 (LexerInterface!779 List!4983 List!4979 List!4979 List!4982 List!4982 List!4979) Unit!8805)

(assert (=> d!187781 (= lt!218104 (choose!3734 thiss!12147 rules!1345 lt!217969 lt!217982 lt!217961 (list!2069 (_1!3321 lt!217968)) (list!2068 (_2!3321 lt!217968))))))

(assert (=> d!187781 (not (isEmpty!3609 rules!1345))))

(assert (=> d!187781 (= (lemmaLexThenLexPrefix!122 thiss!12147 rules!1345 lt!217969 lt!217982 lt!217961 (list!2069 (_1!3321 lt!217968)) (list!2068 (_2!3321 lt!217968))) lt!218104)))

(declare-fun bs!66587 () Bool)

(assert (= bs!66587 d!187781))

(assert (=> bs!66587 m!773336))

(assert (=> bs!66587 m!773302))

(assert (=> bs!66587 m!773304))

(declare-fun m!773814 () Bool)

(assert (=> bs!66587 m!773814))

(assert (=> bs!66587 m!773152))

(assert (=> b!527631 d!187781))

(declare-fun lt!218105 () List!4982)

(declare-fun e!317503 () Bool)

(declare-fun b!527969 () Bool)

(assert (=> b!527969 (= e!317503 (or (not (= lt!217966 Nil!4972)) (= lt!218105 lt!217962)))))

(declare-fun b!527968 () Bool)

(declare-fun res!223161 () Bool)

(assert (=> b!527968 (=> (not res!223161) (not e!317503))))

(assert (=> b!527968 (= res!223161 (= (size!4058 lt!218105) (+ (size!4058 lt!217962) (size!4058 lt!217966))))))

(declare-fun d!187783 () Bool)

(assert (=> d!187783 e!317503))

(declare-fun res!223160 () Bool)

(assert (=> d!187783 (=> (not res!223160) (not e!317503))))

(assert (=> d!187783 (= res!223160 (= (content!890 lt!218105) ((_ map or) (content!890 lt!217962) (content!890 lt!217966))))))

(declare-fun e!317502 () List!4982)

(assert (=> d!187783 (= lt!218105 e!317502)))

(declare-fun c!101144 () Bool)

(assert (=> d!187783 (= c!101144 ((_ is Nil!4972) lt!217962))))

(assert (=> d!187783 (= (++!1379 lt!217962 lt!217966) lt!218105)))

(declare-fun b!527966 () Bool)

(assert (=> b!527966 (= e!317502 lt!217966)))

(declare-fun b!527967 () Bool)

(assert (=> b!527967 (= e!317502 (Cons!4972 (h!10373 lt!217962) (++!1379 (t!73594 lt!217962) lt!217966)))))

(assert (= (and d!187783 c!101144) b!527966))

(assert (= (and d!187783 (not c!101144)) b!527967))

(assert (= (and d!187783 res!223160) b!527968))

(assert (= (and b!527968 res!223161) b!527969))

(declare-fun m!773816 () Bool)

(assert (=> b!527968 m!773816))

(assert (=> b!527968 m!773704))

(assert (=> b!527968 m!773730))

(declare-fun m!773818 () Bool)

(assert (=> d!187783 m!773818))

(assert (=> d!187783 m!773710))

(assert (=> d!187783 m!773736))

(declare-fun m!773820 () Bool)

(assert (=> b!527967 m!773820))

(assert (=> b!527631 d!187783))

(declare-fun b!527970 () Bool)

(declare-fun e!317507 () Bool)

(declare-fun e!317504 () Bool)

(assert (=> b!527970 (= e!317507 e!317504)))

(declare-fun res!223162 () Bool)

(declare-fun lt!218106 () tuple2!6132)

(assert (=> b!527970 (= res!223162 (< (size!4055 (_2!3321 lt!218106)) (size!4055 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))))

(assert (=> b!527970 (=> (not res!223162) (not e!317504))))

(declare-fun d!187785 () Bool)

(declare-fun e!317506 () Bool)

(assert (=> d!187785 e!317506))

(declare-fun res!223164 () Bool)

(assert (=> d!187785 (=> (not res!223164) (not e!317506))))

(assert (=> d!187785 (= res!223164 e!317507)))

(declare-fun c!101145 () Bool)

(assert (=> d!187785 (= c!101145 (> (size!4054 (_1!3321 lt!218106)) 0))))

(declare-fun e!317505 () tuple2!6132)

(assert (=> d!187785 (= lt!218106 e!317505)))

(declare-fun c!101146 () Bool)

(declare-fun lt!218108 () Option!1248)

(assert (=> d!187785 (= c!101146 ((_ is Some!1247) lt!218108))))

(assert (=> d!187785 (= lt!218108 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))))))

(assert (=> d!187785 (= (lexRec!143 thiss!12147 rules!1345 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))) lt!218106)))

(declare-fun b!527971 () Bool)

(assert (=> b!527971 (= e!317505 (tuple2!6133 (BalanceConc!3229 Empty!1610) (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977)))))))))

(declare-fun b!527972 () Bool)

(assert (=> b!527972 (= e!317507 (= (list!2068 (_2!3321 lt!218106)) (list!2068 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))))

(declare-fun b!527973 () Bool)

(declare-fun res!223163 () Bool)

(assert (=> b!527973 (=> (not res!223163) (not e!317506))))

(assert (=> b!527973 (= res!223163 (= (list!2069 (_1!3321 lt!218106)) (_1!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))))))

(declare-fun b!527974 () Bool)

(assert (=> b!527974 (= e!317504 (not (isEmpty!3610 (_1!3321 lt!218106))))))

(declare-fun b!527975 () Bool)

(assert (=> b!527975 (= e!317506 (= (list!2068 (_2!3321 lt!218106)) (_2!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 (_1!3325 lt!217977))))))))))))

(declare-fun b!527976 () Bool)

(declare-fun lt!218107 () tuple2!6132)

(assert (=> b!527976 (= e!317505 (tuple2!6133 (prepend!242 (_1!3321 lt!218107) (_1!3324 (v!16038 lt!218108))) (_2!3321 lt!218107)))))

(assert (=> b!527976 (= lt!218107 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!218108))))))

(assert (= (and d!187785 c!101146) b!527976))

(assert (= (and d!187785 (not c!101146)) b!527971))

(assert (= (and d!187785 c!101145) b!527970))

(assert (= (and d!187785 (not c!101145)) b!527972))

(assert (= (and b!527970 res!223162) b!527974))

(assert (= (and d!187785 res!223164) b!527973))

(assert (= (and b!527973 res!223163) b!527975))

(declare-fun m!773822 () Bool)

(assert (=> b!527970 m!773822))

(assert (=> b!527970 m!773288))

(declare-fun m!773824 () Bool)

(assert (=> b!527970 m!773824))

(declare-fun m!773826 () Bool)

(assert (=> b!527976 m!773826))

(declare-fun m!773828 () Bool)

(assert (=> b!527976 m!773828))

(declare-fun m!773830 () Bool)

(assert (=> b!527973 m!773830))

(assert (=> b!527973 m!773288))

(declare-fun m!773832 () Bool)

(assert (=> b!527973 m!773832))

(assert (=> b!527973 m!773832))

(declare-fun m!773834 () Bool)

(assert (=> b!527973 m!773834))

(declare-fun m!773836 () Bool)

(assert (=> d!187785 m!773836))

(assert (=> d!187785 m!773288))

(declare-fun m!773838 () Bool)

(assert (=> d!187785 m!773838))

(declare-fun m!773840 () Bool)

(assert (=> b!527972 m!773840))

(assert (=> b!527972 m!773288))

(assert (=> b!527972 m!773832))

(declare-fun m!773842 () Bool)

(assert (=> b!527974 m!773842))

(assert (=> b!527975 m!773840))

(assert (=> b!527975 m!773288))

(assert (=> b!527975 m!773832))

(assert (=> b!527975 m!773832))

(assert (=> b!527975 m!773834))

(assert (=> b!527631 d!187785))

(declare-fun b!527977 () Bool)

(declare-fun e!317511 () Bool)

(declare-fun e!317508 () Bool)

(assert (=> b!527977 (= e!317511 e!317508)))

(declare-fun res!223165 () Bool)

(declare-fun lt!218109 () tuple2!6132)

(assert (=> b!527977 (= res!223165 (< (size!4055 (_2!3321 lt!218109)) (size!4055 (_2!3324 (v!16038 (_1!3325 lt!217977))))))))

(assert (=> b!527977 (=> (not res!223165) (not e!317508))))

(declare-fun d!187787 () Bool)

(declare-fun e!317510 () Bool)

(assert (=> d!187787 e!317510))

(declare-fun res!223167 () Bool)

(assert (=> d!187787 (=> (not res!223167) (not e!317510))))

(assert (=> d!187787 (= res!223167 e!317511)))

(declare-fun c!101147 () Bool)

(assert (=> d!187787 (= c!101147 (> (size!4054 (_1!3321 lt!218109)) 0))))

(declare-fun e!317509 () tuple2!6132)

(assert (=> d!187787 (= lt!218109 e!317509)))

(declare-fun c!101148 () Bool)

(declare-fun lt!218111 () Option!1248)

(assert (=> d!187787 (= c!101148 ((_ is Some!1247) lt!218111))))

(assert (=> d!187787 (= lt!218111 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 (_2!3324 (v!16038 (_1!3325 lt!217977)))))))

(assert (=> d!187787 (= (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 (_1!3325 lt!217977)))) lt!218109)))

(declare-fun b!527978 () Bool)

(assert (=> b!527978 (= e!317509 (tuple2!6133 (BalanceConc!3229 Empty!1610) (_2!3324 (v!16038 (_1!3325 lt!217977)))))))

(declare-fun b!527979 () Bool)

(assert (=> b!527979 (= e!317511 (= (list!2068 (_2!3321 lt!218109)) (list!2068 (_2!3324 (v!16038 (_1!3325 lt!217977))))))))

(declare-fun b!527980 () Bool)

(declare-fun res!223166 () Bool)

(assert (=> b!527980 (=> (not res!223166) (not e!317510))))

(assert (=> b!527980 (= res!223166 (= (list!2069 (_1!3321 lt!218109)) (_1!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 (_2!3324 (v!16038 (_1!3325 lt!217977))))))))))

(declare-fun b!527981 () Bool)

(assert (=> b!527981 (= e!317508 (not (isEmpty!3610 (_1!3321 lt!218109))))))

(declare-fun b!527982 () Bool)

(assert (=> b!527982 (= e!317510 (= (list!2068 (_2!3321 lt!218109)) (_2!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 (_2!3324 (v!16038 (_1!3325 lt!217977))))))))))

(declare-fun b!527983 () Bool)

(declare-fun lt!218110 () tuple2!6132)

(assert (=> b!527983 (= e!317509 (tuple2!6133 (prepend!242 (_1!3321 lt!218110) (_1!3324 (v!16038 lt!218111))) (_2!3321 lt!218110)))))

(assert (=> b!527983 (= lt!218110 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!218111))))))

(assert (= (and d!187787 c!101148) b!527983))

(assert (= (and d!187787 (not c!101148)) b!527978))

(assert (= (and d!187787 c!101147) b!527977))

(assert (= (and d!187787 (not c!101147)) b!527979))

(assert (= (and b!527977 res!223165) b!527981))

(assert (= (and d!187787 res!223167) b!527980))

(assert (= (and b!527980 res!223166) b!527982))

(declare-fun m!773844 () Bool)

(assert (=> b!527977 m!773844))

(declare-fun m!773846 () Bool)

(assert (=> b!527977 m!773846))

(declare-fun m!773848 () Bool)

(assert (=> b!527983 m!773848))

(declare-fun m!773850 () Bool)

(assert (=> b!527983 m!773850))

(declare-fun m!773852 () Bool)

(assert (=> b!527980 m!773852))

(assert (=> b!527980 m!773320))

(assert (=> b!527980 m!773320))

(declare-fun m!773854 () Bool)

(assert (=> b!527980 m!773854))

(declare-fun m!773856 () Bool)

(assert (=> d!187787 m!773856))

(assert (=> d!187787 m!773662))

(declare-fun m!773858 () Bool)

(assert (=> b!527979 m!773858))

(assert (=> b!527979 m!773320))

(declare-fun m!773860 () Bool)

(assert (=> b!527981 m!773860))

(assert (=> b!527982 m!773858))

(assert (=> b!527982 m!773320))

(assert (=> b!527982 m!773320))

(assert (=> b!527982 m!773854))

(assert (=> b!527631 d!187787))

(declare-fun d!187789 () Bool)

(assert (=> d!187789 (= (list!2069 (_1!3321 lt!217968)) (list!2071 (c!101091 (_1!3321 lt!217968))))))

(declare-fun bs!66588 () Bool)

(assert (= bs!66588 d!187789))

(declare-fun m!773862 () Bool)

(assert (=> bs!66588 m!773862))

(assert (=> b!527631 d!187789))

(declare-fun d!187791 () Bool)

(assert (=> d!187791 (= (list!2069 (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977))))) (list!2071 (c!101091 (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 (_1!3325 lt!217977)))))))))

(declare-fun bs!66589 () Bool)

(assert (= bs!66589 d!187791))

(declare-fun m!773864 () Bool)

(assert (=> bs!66589 m!773864))

(assert (=> b!527631 d!187791))

(declare-fun b!527986 () Bool)

(declare-fun res!223168 () Bool)

(declare-fun e!317512 () Bool)

(assert (=> b!527986 (=> (not res!223168) (not e!317512))))

(declare-fun lt!218112 () List!4979)

(assert (=> b!527986 (= res!223168 (= (size!4056 lt!218112) (+ (size!4056 lt!217964) (size!4056 lt!217981))))))

(declare-fun b!527984 () Bool)

(declare-fun e!317513 () List!4979)

(assert (=> b!527984 (= e!317513 lt!217981)))

(declare-fun b!527985 () Bool)

(assert (=> b!527985 (= e!317513 (Cons!4969 (h!10370 lt!217964) (++!1378 (t!73591 lt!217964) lt!217981)))))

(declare-fun d!187793 () Bool)

(assert (=> d!187793 e!317512))

(declare-fun res!223169 () Bool)

(assert (=> d!187793 (=> (not res!223169) (not e!317512))))

(assert (=> d!187793 (= res!223169 (= (content!889 lt!218112) ((_ map or) (content!889 lt!217964) (content!889 lt!217981))))))

(assert (=> d!187793 (= lt!218112 e!317513)))

(declare-fun c!101149 () Bool)

(assert (=> d!187793 (= c!101149 ((_ is Nil!4969) lt!217964))))

(assert (=> d!187793 (= (++!1378 lt!217964 lt!217981) lt!218112)))

(declare-fun b!527987 () Bool)

(assert (=> b!527987 (= e!317512 (or (not (= lt!217981 Nil!4969)) (= lt!218112 lt!217964)))))

(assert (= (and d!187793 c!101149) b!527984))

(assert (= (and d!187793 (not c!101149)) b!527985))

(assert (= (and d!187793 res!223169) b!527986))

(assert (= (and b!527986 res!223168) b!527987))

(declare-fun m!773866 () Bool)

(assert (=> b!527986 m!773866))

(assert (=> b!527986 m!773690))

(assert (=> b!527986 m!773524))

(declare-fun m!773868 () Bool)

(assert (=> b!527985 m!773868))

(declare-fun m!773870 () Bool)

(assert (=> d!187793 m!773870))

(assert (=> d!187793 m!773698))

(assert (=> d!187793 m!773532))

(assert (=> b!527631 d!187793))

(declare-fun d!187795 () Bool)

(assert (=> d!187795 true))

(declare-fun lt!218115 () Bool)

(assert (=> d!187795 (= lt!218115 (rulesValidInductive!298 thiss!12147 rules!1345))))

(declare-fun lambda!15306 () Int)

(declare-fun forall!1498 (List!4983 Int) Bool)

(assert (=> d!187795 (= lt!218115 (forall!1498 rules!1345 lambda!15306))))

(assert (=> d!187795 (= (rulesValid!322 thiss!12147 rules!1345) lt!218115)))

(declare-fun bs!66590 () Bool)

(assert (= bs!66590 d!187795))

(assert (=> bs!66590 m!773556))

(declare-fun m!773872 () Bool)

(assert (=> bs!66590 m!773872))

(assert (=> d!187703 d!187795))

(declare-fun bs!66591 () Bool)

(declare-fun d!187797 () Bool)

(assert (= bs!66591 (and d!187797 d!187707)))

(declare-fun lambda!15307 () Int)

(assert (=> bs!66591 (= lambda!15307 lambda!15293)))

(declare-fun bs!66592 () Bool)

(assert (= bs!66592 (and d!187797 d!187711)))

(assert (=> bs!66592 (= lambda!15307 lambda!15294)))

(declare-fun bs!66593 () Bool)

(assert (= bs!66593 (and d!187797 d!187713)))

(assert (=> bs!66593 (= lambda!15307 lambda!15295)))

(declare-fun bs!66594 () Bool)

(assert (= bs!66594 (and d!187797 d!187719)))

(assert (=> bs!66594 (= lambda!15307 lambda!15297)))

(declare-fun bs!66595 () Bool)

(assert (= bs!66595 (and d!187797 d!187715)))

(assert (=> bs!66595 (= lambda!15307 lambda!15296)))

(declare-fun bs!66596 () Bool)

(assert (= bs!66596 (and d!187797 d!187705)))

(assert (=> bs!66596 (= lambda!15307 lambda!15292)))

(assert (=> d!187797 (= (inv!6235 setElem!2607) (forall!1495 (exprs!659 setElem!2607) lambda!15307))))

(declare-fun bs!66597 () Bool)

(assert (= bs!66597 d!187797))

(declare-fun m!773874 () Bool)

(assert (=> bs!66597 m!773874))

(assert (=> setNonEmpty!2607 d!187797))

(declare-fun bs!66598 () Bool)

(declare-fun d!187799 () Bool)

(assert (= bs!66598 (and d!187799 d!187707)))

(declare-fun lambda!15308 () Int)

(assert (=> bs!66598 (= lambda!15308 lambda!15293)))

(declare-fun bs!66599 () Bool)

(assert (= bs!66599 (and d!187799 d!187711)))

(assert (=> bs!66599 (= lambda!15308 lambda!15294)))

(declare-fun bs!66600 () Bool)

(assert (= bs!66600 (and d!187799 d!187713)))

(assert (=> bs!66600 (= lambda!15308 lambda!15295)))

(declare-fun bs!66601 () Bool)

(assert (= bs!66601 (and d!187799 d!187797)))

(assert (=> bs!66601 (= lambda!15308 lambda!15307)))

(declare-fun bs!66602 () Bool)

(assert (= bs!66602 (and d!187799 d!187719)))

(assert (=> bs!66602 (= lambda!15308 lambda!15297)))

(declare-fun bs!66603 () Bool)

(assert (= bs!66603 (and d!187799 d!187715)))

(assert (=> bs!66603 (= lambda!15308 lambda!15296)))

(declare-fun bs!66604 () Bool)

(assert (= bs!66604 (and d!187799 d!187705)))

(assert (=> bs!66604 (= lambda!15308 lambda!15292)))

(assert (=> d!187799 (= (inv!6235 setElem!2613) (forall!1495 (exprs!659 setElem!2613) lambda!15308))))

(declare-fun bs!66605 () Bool)

(assert (= bs!66605 d!187799))

(declare-fun m!773876 () Bool)

(assert (=> bs!66605 m!773876))

(assert (=> setNonEmpty!2613 d!187799))

(declare-fun b!527999 () Bool)

(declare-fun e!317518 () List!4982)

(declare-fun e!317519 () List!4982)

(assert (=> b!527999 (= e!317518 e!317519)))

(declare-fun c!101155 () Bool)

(assert (=> b!527999 (= c!101155 ((_ is Leaf!2561) (c!101091 (_1!3321 (_1!3322 lt!217877)))))))

(declare-fun b!528000 () Bool)

(declare-fun list!2072 (IArray!3221) List!4982)

(assert (=> b!528000 (= e!317519 (list!2072 (xs!4247 (c!101091 (_1!3321 (_1!3322 lt!217877))))))))

(declare-fun d!187801 () Bool)

(declare-fun c!101154 () Bool)

(assert (=> d!187801 (= c!101154 ((_ is Empty!1610) (c!101091 (_1!3321 (_1!3322 lt!217877)))))))

(assert (=> d!187801 (= (list!2071 (c!101091 (_1!3321 (_1!3322 lt!217877)))) e!317518)))

(declare-fun b!527998 () Bool)

(assert (=> b!527998 (= e!317518 Nil!4972)))

(declare-fun b!528001 () Bool)

(assert (=> b!528001 (= e!317519 (++!1379 (list!2071 (left!4224 (c!101091 (_1!3321 (_1!3322 lt!217877))))) (list!2071 (right!4554 (c!101091 (_1!3321 (_1!3322 lt!217877)))))))))

(assert (= (and d!187801 c!101154) b!527998))

(assert (= (and d!187801 (not c!101154)) b!527999))

(assert (= (and b!527999 c!101155) b!528000))

(assert (= (and b!527999 (not c!101155)) b!528001))

(declare-fun m!773878 () Bool)

(assert (=> b!528000 m!773878))

(declare-fun m!773880 () Bool)

(assert (=> b!528001 m!773880))

(declare-fun m!773882 () Bool)

(assert (=> b!528001 m!773882))

(assert (=> b!528001 m!773880))

(assert (=> b!528001 m!773882))

(declare-fun m!773884 () Bool)

(assert (=> b!528001 m!773884))

(assert (=> d!187695 d!187801))

(declare-fun bs!66606 () Bool)

(declare-fun d!187803 () Bool)

(assert (= bs!66606 (and d!187803 d!187799)))

(declare-fun lambda!15309 () Int)

(assert (=> bs!66606 (= lambda!15309 lambda!15308)))

(declare-fun bs!66607 () Bool)

(assert (= bs!66607 (and d!187803 d!187707)))

(assert (=> bs!66607 (= lambda!15309 lambda!15293)))

(declare-fun bs!66608 () Bool)

(assert (= bs!66608 (and d!187803 d!187711)))

(assert (=> bs!66608 (= lambda!15309 lambda!15294)))

(declare-fun bs!66609 () Bool)

(assert (= bs!66609 (and d!187803 d!187713)))

(assert (=> bs!66609 (= lambda!15309 lambda!15295)))

(declare-fun bs!66610 () Bool)

(assert (= bs!66610 (and d!187803 d!187797)))

(assert (=> bs!66610 (= lambda!15309 lambda!15307)))

(declare-fun bs!66611 () Bool)

(assert (= bs!66611 (and d!187803 d!187719)))

(assert (=> bs!66611 (= lambda!15309 lambda!15297)))

(declare-fun bs!66612 () Bool)

(assert (= bs!66612 (and d!187803 d!187715)))

(assert (=> bs!66612 (= lambda!15309 lambda!15296)))

(declare-fun bs!66613 () Bool)

(assert (= bs!66613 (and d!187803 d!187705)))

(assert (=> bs!66613 (= lambda!15309 lambda!15292)))

(assert (=> d!187803 (= (inv!6235 setElem!2605) (forall!1495 (exprs!659 setElem!2605) lambda!15309))))

(declare-fun bs!66614 () Bool)

(assert (= bs!66614 d!187803))

(declare-fun m!773886 () Bool)

(assert (=> bs!66614 m!773886))

(assert (=> setNonEmpty!2606 d!187803))

(declare-fun bs!66615 () Bool)

(declare-fun d!187805 () Bool)

(assert (= bs!66615 (and d!187805 d!187799)))

(declare-fun lambda!15310 () Int)

(assert (=> bs!66615 (= lambda!15310 lambda!15308)))

(declare-fun bs!66616 () Bool)

(assert (= bs!66616 (and d!187805 d!187707)))

(assert (=> bs!66616 (= lambda!15310 lambda!15293)))

(declare-fun bs!66617 () Bool)

(assert (= bs!66617 (and d!187805 d!187711)))

(assert (=> bs!66617 (= lambda!15310 lambda!15294)))

(declare-fun bs!66618 () Bool)

(assert (= bs!66618 (and d!187805 d!187713)))

(assert (=> bs!66618 (= lambda!15310 lambda!15295)))

(declare-fun bs!66619 () Bool)

(assert (= bs!66619 (and d!187805 d!187803)))

(assert (=> bs!66619 (= lambda!15310 lambda!15309)))

(declare-fun bs!66620 () Bool)

(assert (= bs!66620 (and d!187805 d!187797)))

(assert (=> bs!66620 (= lambda!15310 lambda!15307)))

(declare-fun bs!66621 () Bool)

(assert (= bs!66621 (and d!187805 d!187719)))

(assert (=> bs!66621 (= lambda!15310 lambda!15297)))

(declare-fun bs!66622 () Bool)

(assert (= bs!66622 (and d!187805 d!187715)))

(assert (=> bs!66622 (= lambda!15310 lambda!15296)))

(declare-fun bs!66623 () Bool)

(assert (= bs!66623 (and d!187805 d!187705)))

(assert (=> bs!66623 (= lambda!15310 lambda!15292)))

(assert (=> d!187805 (= (inv!6235 setElem!2608) (forall!1495 (exprs!659 setElem!2608) lambda!15310))))

(declare-fun bs!66624 () Bool)

(assert (= bs!66624 d!187805))

(declare-fun m!773888 () Bool)

(assert (=> bs!66624 m!773888))

(assert (=> setNonEmpty!2608 d!187805))

(assert (=> b!527564 d!187653))

(declare-fun d!187807 () Bool)

(assert (=> d!187807 (= (list!2069 (_1!3321 (lexRec!143 thiss!12147 rules!1345 input!747))) (list!2071 (c!101091 (_1!3321 (lexRec!143 thiss!12147 rules!1345 input!747)))))))

(declare-fun bs!66625 () Bool)

(assert (= bs!66625 d!187807))

(declare-fun m!773890 () Bool)

(assert (=> bs!66625 m!773890))

(assert (=> d!187701 d!187807))

(declare-fun d!187809 () Bool)

(declare-fun e!317520 () Bool)

(assert (=> d!187809 e!317520))

(declare-fun res!223170 () Bool)

(assert (=> d!187809 (=> res!223170 e!317520)))

(declare-fun lt!218116 () Bool)

(assert (=> d!187809 (= res!223170 (not lt!218116))))

(assert (=> d!187809 (= lt!218116 (= lt!217985 (drop!326 (++!1378 lt!217959 lt!217985) (- (size!4056 (++!1378 lt!217959 lt!217985)) (size!4056 lt!217985)))))))

(assert (=> d!187809 (= (isSuffix!120 lt!217985 (++!1378 lt!217959 lt!217985)) lt!218116)))

(declare-fun b!528002 () Bool)

(assert (=> b!528002 (= e!317520 (>= (size!4056 (++!1378 lt!217959 lt!217985)) (size!4056 lt!217985)))))

(assert (= (and d!187809 (not res!223170)) b!528002))

(assert (=> d!187809 m!773354))

(declare-fun m!773892 () Bool)

(assert (=> d!187809 m!773892))

(declare-fun m!773894 () Bool)

(assert (=> d!187809 m!773894))

(assert (=> d!187809 m!773354))

(declare-fun m!773896 () Bool)

(assert (=> d!187809 m!773896))

(assert (=> b!528002 m!773354))

(assert (=> b!528002 m!773892))

(assert (=> b!528002 m!773894))

(assert (=> d!187701 d!187809))

(declare-fun b!528027 () Bool)

(declare-fun res!223200 () Bool)

(declare-fun e!317538 () Bool)

(assert (=> b!528027 (=> (not res!223200) (not e!317538))))

(declare-fun lt!218136 () tuple4!98)

(assert (=> b!528027 (= res!223200 (valid!577 (_4!49 lt!218136)))))

(declare-fun b!528028 () Bool)

(declare-fun e!317537 () Bool)

(assert (=> b!528028 (= e!317537 (= (list!2068 (_2!3324 (get!1860 (_1!3325 lt!218136)))) (_2!3326 (get!1861 (maxPrefixZipper!204 thiss!12147 rules!1345 (list!2068 input!747))))))))

(declare-fun b!528029 () Bool)

(declare-fun e!317533 () Bool)

(assert (=> b!528029 (= e!317533 e!317537)))

(declare-fun res!223191 () Bool)

(assert (=> b!528029 (=> (not res!223191) (not e!317537))))

(assert (=> b!528029 (= res!223191 (= (_1!3324 (get!1860 (_1!3325 lt!218136))) (_1!3326 (get!1861 (maxPrefixZipper!204 thiss!12147 rules!1345 (list!2068 input!747))))))))

(declare-fun b!528030 () Bool)

(declare-fun e!317536 () Bool)

(assert (=> b!528030 (= e!317536 (= (list!2068 (_2!3324 (get!1860 (_1!3325 lt!218136)))) (_2!3326 (get!1861 (maxPrefix!483 thiss!12147 rules!1345 (list!2068 input!747))))))))

(declare-fun b!528031 () Bool)

(declare-fun res!223195 () Bool)

(assert (=> b!528031 (=> (not res!223195) (not e!317538))))

(assert (=> b!528031 (= res!223195 e!317533)))

(declare-fun res!223193 () Bool)

(assert (=> b!528031 (=> res!223193 e!317533)))

(assert (=> b!528031 (= res!223193 (not (isDefined!1062 (_1!3325 lt!218136))))))

(declare-fun b!528032 () Bool)

(declare-fun res!223192 () Bool)

(assert (=> b!528032 (=> (not res!223192) (not e!317538))))

(assert (=> b!528032 (= res!223192 (valid!578 (_3!256 lt!218136)))))

(declare-fun b!528033 () Bool)

(declare-fun e!317534 () Bool)

(assert (=> b!528033 (= e!317534 e!317536)))

(declare-fun res!223198 () Bool)

(assert (=> b!528033 (=> (not res!223198) (not e!317536))))

(assert (=> b!528033 (= res!223198 (= (_1!3324 (get!1860 (_1!3325 lt!218136))) (_1!3326 (get!1861 (maxPrefix!483 thiss!12147 rules!1345 (list!2068 input!747))))))))

(declare-fun bm!38110 () Bool)

(declare-fun call!38115 () tuple4!98)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!1 (LexerInterface!779 Rule!1586 BalanceConc!3226 BalanceConc!3226 CacheUp!236 CacheDown!220 CacheFurthestNullable!176) tuple4!98)

(assert (=> bm!38110 (= call!38115 (maxPrefixOneRuleZipperSequenceV3Mem!1 thiss!12147 (h!10374 rules!1345) input!747 input!747 cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))

(declare-fun d!187811 () Bool)

(assert (=> d!187811 e!317538))

(declare-fun res!223197 () Bool)

(assert (=> d!187811 (=> (not res!223197) (not e!317538))))

(assert (=> d!187811 (= res!223197 (= (isDefined!1062 (_1!3325 lt!218136)) (isDefined!1063 (maxPrefixZipper!204 thiss!12147 rules!1345 (list!2068 input!747)))))))

(declare-datatypes ((tuple4!100 0))(
  ( (tuple4!101 (_1!3327 Option!1248) (_2!3327 CacheUp!236) (_3!257 CacheFurthestNullable!176) (_4!50 CacheDown!220)) )
))
(declare-fun lt!218138 () tuple4!100)

(assert (=> d!187811 (= lt!218136 (tuple4!99 (_1!3327 lt!218138) (_2!3327 lt!218138) (_4!50 lt!218138) (_3!257 lt!218138)))))

(declare-fun e!317535 () tuple4!100)

(assert (=> d!187811 (= lt!218138 e!317535)))

(declare-fun c!101158 () Bool)

(assert (=> d!187811 (= c!101158 (and ((_ is Cons!4973) rules!1345) ((_ is Nil!4973) (t!73595 rules!1345))))))

(declare-fun lt!218143 () Unit!8805)

(declare-fun lt!218140 () Unit!8805)

(assert (=> d!187811 (= lt!218143 lt!218140)))

(declare-fun lt!218137 () List!4979)

(declare-fun lt!218139 () List!4979)

(assert (=> d!187811 (isPrefix!555 lt!218137 lt!218139)))

(assert (=> d!187811 (= lt!218140 (lemmaIsPrefixRefl!301 lt!218137 lt!218139))))

(assert (=> d!187811 (= lt!218139 (list!2068 input!747))))

(assert (=> d!187811 (= lt!218137 (list!2068 input!747))))

(assert (=> d!187811 (rulesValidInductive!298 thiss!12147 rules!1345)))

(assert (=> d!187811 (= (maxPrefixZipperSequenceV3Mem!3 thiss!12147 rules!1345 input!747 input!747 cacheUp!449 cacheDown!462 cacheFurthestNullable!56) lt!218136)))

(declare-fun b!528034 () Bool)

(declare-fun lt!218141 () tuple4!98)

(declare-fun lt!218142 () tuple4!98)

(assert (=> b!528034 (= e!317535 (tuple4!101 (ite (and ((_ is None!1247) (_1!3325 lt!218141)) ((_ is None!1247) (_1!3325 lt!218142))) None!1247 (ite ((_ is None!1247) (_1!3325 lt!218142)) (_1!3325 lt!218141) (ite ((_ is None!1247) (_1!3325 lt!218141)) (_1!3325 lt!218142) (ite (>= (size!4053 (_1!3324 (v!16038 (_1!3325 lt!218141)))) (size!4053 (_1!3324 (v!16038 (_1!3325 lt!218142))))) (_1!3325 lt!218141) (_1!3325 lt!218142))))) (_2!3325 lt!218142) (_4!49 lt!218142) (_3!256 lt!218142)))))

(assert (=> b!528034 (= lt!218141 call!38115)))

(assert (=> b!528034 (= lt!218142 (maxPrefixZipperSequenceV3Mem!3 thiss!12147 (t!73595 rules!1345) input!747 input!747 (_2!3325 lt!218141) (_3!256 lt!218141) (_4!49 lt!218141)))))

(declare-fun b!528035 () Bool)

(declare-fun res!223199 () Bool)

(assert (=> b!528035 (=> (not res!223199) (not e!317538))))

(assert (=> b!528035 (= res!223199 (valid!576 (_2!3325 lt!218136)))))

(declare-fun b!528036 () Bool)

(declare-fun lt!218135 () tuple4!98)

(assert (=> b!528036 (= e!317535 (tuple4!101 (_1!3325 lt!218135) (_2!3325 lt!218135) (_4!49 lt!218135) (_3!256 lt!218135)))))

(assert (=> b!528036 (= lt!218135 call!38115)))

(declare-fun b!528037 () Bool)

(declare-fun res!223196 () Bool)

(assert (=> b!528037 (=> (not res!223196) (not e!317538))))

(assert (=> b!528037 (= res!223196 e!317534)))

(declare-fun res!223194 () Bool)

(assert (=> b!528037 (=> res!223194 e!317534)))

(assert (=> b!528037 (= res!223194 (not (isDefined!1062 (_1!3325 lt!218136))))))

(declare-fun b!528038 () Bool)

(assert (=> b!528038 (= e!317538 (= (totalInput!1751 (_4!49 lt!218136)) input!747))))

(assert (= (and d!187811 c!101158) b!528036))

(assert (= (and d!187811 (not c!101158)) b!528034))

(assert (= (or b!528036 b!528034) bm!38110))

(assert (= (and d!187811 res!223197) b!528031))

(assert (= (and b!528031 (not res!223193)) b!528029))

(assert (= (and b!528029 res!223191) b!528028))

(assert (= (and b!528031 res!223195) b!528037))

(assert (= (and b!528037 (not res!223194)) b!528033))

(assert (= (and b!528033 res!223198) b!528030))

(assert (= (and b!528037 res!223196) b!528035))

(assert (= (and b!528035 res!223199) b!528032))

(assert (= (and b!528032 res!223192) b!528027))

(assert (= (and b!528027 res!223200) b!528038))

(declare-fun m!773898 () Bool)

(assert (=> b!528033 m!773898))

(assert (=> b!528033 m!773248))

(assert (=> b!528033 m!773248))

(assert (=> b!528033 m!773540))

(assert (=> b!528033 m!773540))

(assert (=> b!528033 m!773542))

(declare-fun m!773900 () Bool)

(assert (=> bm!38110 m!773900))

(declare-fun m!773902 () Bool)

(assert (=> d!187811 m!773902))

(assert (=> d!187811 m!773548))

(assert (=> d!187811 m!773558))

(assert (=> d!187811 m!773248))

(declare-fun m!773904 () Bool)

(assert (=> d!187811 m!773904))

(assert (=> d!187811 m!773556))

(assert (=> d!187811 m!773248))

(assert (=> d!187811 m!773548))

(declare-fun m!773906 () Bool)

(assert (=> d!187811 m!773906))

(declare-fun m!773908 () Bool)

(assert (=> b!528034 m!773908))

(assert (=> b!528028 m!773248))

(declare-fun m!773910 () Bool)

(assert (=> b!528028 m!773910))

(assert (=> b!528028 m!773548))

(assert (=> b!528028 m!773550))

(assert (=> b!528028 m!773898))

(assert (=> b!528028 m!773248))

(assert (=> b!528028 m!773548))

(declare-fun m!773912 () Bool)

(assert (=> b!528035 m!773912))

(assert (=> b!528037 m!773904))

(assert (=> b!528031 m!773904))

(declare-fun m!773914 () Bool)

(assert (=> b!528027 m!773914))

(assert (=> b!528030 m!773248))

(assert (=> b!528030 m!773540))

(assert (=> b!528030 m!773542))

(assert (=> b!528030 m!773910))

(assert (=> b!528030 m!773898))

(assert (=> b!528030 m!773248))

(assert (=> b!528030 m!773540))

(assert (=> b!528029 m!773898))

(assert (=> b!528029 m!773248))

(assert (=> b!528029 m!773248))

(assert (=> b!528029 m!773548))

(assert (=> b!528029 m!773548))

(assert (=> b!528029 m!773550))

(declare-fun m!773916 () Bool)

(assert (=> b!528032 m!773916))

(assert (=> d!187701 d!187811))

(assert (=> d!187701 d!187725))

(declare-fun d!187813 () Bool)

(assert (=> d!187813 (isSuffix!120 lt!217985 (++!1378 lt!217959 lt!217985))))

(declare-fun lt!218144 () Unit!8805)

(assert (=> d!187813 (= lt!218144 (choose!3732 lt!217959 lt!217985))))

(assert (=> d!187813 (= (lemmaConcatTwoListThenFSndIsSuffix!120 lt!217959 lt!217985) lt!218144)))

(declare-fun bs!66626 () Bool)

(assert (= bs!66626 d!187813))

(assert (=> bs!66626 m!773354))

(assert (=> bs!66626 m!773354))

(assert (=> bs!66626 m!773356))

(declare-fun m!773918 () Bool)

(assert (=> bs!66626 m!773918))

(assert (=> d!187701 d!187813))

(assert (=> d!187701 d!187759))

(declare-fun d!187815 () Bool)

(assert (=> d!187815 (= (list!2069 (_1!3321 (_1!3322 lt!217967))) (list!2071 (c!101091 (_1!3321 (_1!3322 lt!217967)))))))

(declare-fun bs!66627 () Bool)

(assert (= bs!66627 d!187815))

(declare-fun m!773920 () Bool)

(assert (=> bs!66627 m!773920))

(assert (=> d!187701 d!187815))

(declare-fun b!528041 () Bool)

(declare-fun res!223201 () Bool)

(declare-fun e!317539 () Bool)

(assert (=> b!528041 (=> (not res!223201) (not e!317539))))

(declare-fun lt!218145 () List!4979)

(assert (=> b!528041 (= res!223201 (= (size!4056 lt!218145) (+ (size!4056 lt!217959) (size!4056 lt!217985))))))

(declare-fun b!528039 () Bool)

(declare-fun e!317540 () List!4979)

(assert (=> b!528039 (= e!317540 lt!217985)))

(declare-fun b!528040 () Bool)

(assert (=> b!528040 (= e!317540 (Cons!4969 (h!10370 lt!217959) (++!1378 (t!73591 lt!217959) lt!217985)))))

(declare-fun d!187817 () Bool)

(assert (=> d!187817 e!317539))

(declare-fun res!223202 () Bool)

(assert (=> d!187817 (=> (not res!223202) (not e!317539))))

(assert (=> d!187817 (= res!223202 (= (content!889 lt!218145) ((_ map or) (content!889 lt!217959) (content!889 lt!217985))))))

(assert (=> d!187817 (= lt!218145 e!317540)))

(declare-fun c!101159 () Bool)

(assert (=> d!187817 (= c!101159 ((_ is Nil!4969) lt!217959))))

(assert (=> d!187817 (= (++!1378 lt!217959 lt!217985) lt!218145)))

(declare-fun b!528042 () Bool)

(assert (=> b!528042 (= e!317539 (or (not (= lt!217985 Nil!4969)) (= lt!218145 lt!217959)))))

(assert (= (and d!187817 c!101159) b!528039))

(assert (= (and d!187817 (not c!101159)) b!528040))

(assert (= (and d!187817 res!223202) b!528041))

(assert (= (and b!528041 res!223201) b!528042))

(declare-fun m!773922 () Bool)

(assert (=> b!528041 m!773922))

(declare-fun m!773924 () Bool)

(assert (=> b!528041 m!773924))

(assert (=> b!528041 m!773894))

(declare-fun m!773926 () Bool)

(assert (=> b!528040 m!773926))

(declare-fun m!773928 () Bool)

(assert (=> d!187817 m!773928))

(declare-fun m!773930 () Bool)

(assert (=> d!187817 m!773930))

(declare-fun m!773932 () Bool)

(assert (=> d!187817 m!773932))

(assert (=> d!187701 d!187817))

(declare-fun d!187819 () Bool)

(assert (=> d!187819 (= (list!2068 input!747) (list!2070 (c!101090 input!747)))))

(declare-fun bs!66628 () Bool)

(assert (= bs!66628 d!187819))

(declare-fun m!773934 () Bool)

(assert (=> bs!66628 m!773934))

(assert (=> d!187701 d!187819))

(declare-fun d!187821 () Bool)

(declare-fun lt!218148 () Int)

(assert (=> d!187821 (= lt!218148 (size!4056 (list!2068 (_2!3321 lt!217882))))))

(assert (=> d!187821 (= lt!218148 (size!4057 (c!101090 (_2!3321 lt!217882))))))

(assert (=> d!187821 (= (size!4055 (_2!3321 lt!217882)) lt!218148)))

(declare-fun bs!66629 () Bool)

(assert (= bs!66629 d!187821))

(assert (=> bs!66629 m!773246))

(assert (=> bs!66629 m!773246))

(declare-fun m!773936 () Bool)

(assert (=> bs!66629 m!773936))

(declare-fun m!773938 () Bool)

(assert (=> bs!66629 m!773938))

(assert (=> b!527606 d!187821))

(declare-fun d!187823 () Bool)

(declare-fun lt!218149 () Int)

(assert (=> d!187823 (= lt!218149 (size!4056 (list!2068 input!747)))))

(assert (=> d!187823 (= lt!218149 (size!4057 (c!101090 input!747)))))

(assert (=> d!187823 (= (size!4055 input!747) lt!218149)))

(declare-fun bs!66630 () Bool)

(assert (= bs!66630 d!187823))

(assert (=> bs!66630 m!773248))

(assert (=> bs!66630 m!773248))

(declare-fun m!773940 () Bool)

(assert (=> bs!66630 m!773940))

(declare-fun m!773942 () Bool)

(assert (=> bs!66630 m!773942))

(assert (=> b!527606 d!187823))

(declare-fun bs!66631 () Bool)

(declare-fun d!187825 () Bool)

(assert (= bs!66631 (and d!187825 d!187799)))

(declare-fun lambda!15311 () Int)

(assert (=> bs!66631 (= lambda!15311 lambda!15308)))

(declare-fun bs!66632 () Bool)

(assert (= bs!66632 (and d!187825 d!187805)))

(assert (=> bs!66632 (= lambda!15311 lambda!15310)))

(declare-fun bs!66633 () Bool)

(assert (= bs!66633 (and d!187825 d!187707)))

(assert (=> bs!66633 (= lambda!15311 lambda!15293)))

(declare-fun bs!66634 () Bool)

(assert (= bs!66634 (and d!187825 d!187711)))

(assert (=> bs!66634 (= lambda!15311 lambda!15294)))

(declare-fun bs!66635 () Bool)

(assert (= bs!66635 (and d!187825 d!187713)))

(assert (=> bs!66635 (= lambda!15311 lambda!15295)))

(declare-fun bs!66636 () Bool)

(assert (= bs!66636 (and d!187825 d!187803)))

(assert (=> bs!66636 (= lambda!15311 lambda!15309)))

(declare-fun bs!66637 () Bool)

(assert (= bs!66637 (and d!187825 d!187797)))

(assert (=> bs!66637 (= lambda!15311 lambda!15307)))

(declare-fun bs!66638 () Bool)

(assert (= bs!66638 (and d!187825 d!187719)))

(assert (=> bs!66638 (= lambda!15311 lambda!15297)))

(declare-fun bs!66639 () Bool)

(assert (= bs!66639 (and d!187825 d!187715)))

(assert (=> bs!66639 (= lambda!15311 lambda!15296)))

(declare-fun bs!66640 () Bool)

(assert (= bs!66640 (and d!187825 d!187705)))

(assert (=> bs!66640 (= lambda!15311 lambda!15292)))

(assert (=> d!187825 (= (inv!6235 setElem!2610) (forall!1495 (exprs!659 setElem!2610) lambda!15311))))

(declare-fun bs!66641 () Bool)

(assert (= bs!66641 d!187825))

(declare-fun m!773944 () Bool)

(assert (=> bs!66641 m!773944))

(assert (=> setNonEmpty!2610 d!187825))

(declare-fun d!187827 () Bool)

(declare-fun c!101160 () Bool)

(assert (=> d!187827 (= c!101160 ((_ is Node!1609) (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(declare-fun e!317541 () Bool)

(assert (=> d!187827 (= (inv!6228 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) e!317541)))

(declare-fun b!528043 () Bool)

(assert (=> b!528043 (= e!317541 (inv!6232 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(declare-fun b!528044 () Bool)

(declare-fun e!317542 () Bool)

(assert (=> b!528044 (= e!317541 e!317542)))

(declare-fun res!223203 () Bool)

(assert (=> b!528044 (= res!223203 (not ((_ is Leaf!2560) (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))))))

(assert (=> b!528044 (=> res!223203 e!317542)))

(declare-fun b!528045 () Bool)

(assert (=> b!528045 (= e!317542 (inv!6233 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(assert (= (and d!187827 c!101160) b!528043))

(assert (= (and d!187827 (not c!101160)) b!528044))

(assert (= (and b!528044 (not res!223203)) b!528045))

(declare-fun m!773946 () Bool)

(assert (=> b!528043 m!773946))

(declare-fun m!773948 () Bool)

(assert (=> b!528045 m!773948))

(assert (=> b!527788 d!187827))

(declare-fun d!187829 () Bool)

(declare-fun c!101161 () Bool)

(assert (=> d!187829 (= c!101161 ((_ is Node!1609) (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(declare-fun e!317543 () Bool)

(assert (=> d!187829 (= (inv!6228 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) e!317543)))

(declare-fun b!528046 () Bool)

(assert (=> b!528046 (= e!317543 (inv!6232 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(declare-fun b!528047 () Bool)

(declare-fun e!317544 () Bool)

(assert (=> b!528047 (= e!317543 e!317544)))

(declare-fun res!223204 () Bool)

(assert (=> b!528047 (= res!223204 (not ((_ is Leaf!2560) (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))))))

(assert (=> b!528047 (=> res!223204 e!317544)))

(declare-fun b!528048 () Bool)

(assert (=> b!528048 (= e!317544 (inv!6233 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(assert (= (and d!187829 c!101161) b!528046))

(assert (= (and d!187829 (not c!101161)) b!528047))

(assert (= (and b!528047 (not res!223204)) b!528048))

(declare-fun m!773950 () Bool)

(assert (=> b!528046 m!773950))

(declare-fun m!773952 () Bool)

(assert (=> b!528048 m!773952))

(assert (=> b!527788 d!187829))

(declare-fun bs!66642 () Bool)

(declare-fun d!187831 () Bool)

(assert (= bs!66642 (and d!187831 d!187799)))

(declare-fun lambda!15312 () Int)

(assert (=> bs!66642 (= lambda!15312 lambda!15308)))

(declare-fun bs!66643 () Bool)

(assert (= bs!66643 (and d!187831 d!187805)))

(assert (=> bs!66643 (= lambda!15312 lambda!15310)))

(declare-fun bs!66644 () Bool)

(assert (= bs!66644 (and d!187831 d!187711)))

(assert (=> bs!66644 (= lambda!15312 lambda!15294)))

(declare-fun bs!66645 () Bool)

(assert (= bs!66645 (and d!187831 d!187713)))

(assert (=> bs!66645 (= lambda!15312 lambda!15295)))

(declare-fun bs!66646 () Bool)

(assert (= bs!66646 (and d!187831 d!187803)))

(assert (=> bs!66646 (= lambda!15312 lambda!15309)))

(declare-fun bs!66647 () Bool)

(assert (= bs!66647 (and d!187831 d!187797)))

(assert (=> bs!66647 (= lambda!15312 lambda!15307)))

(declare-fun bs!66648 () Bool)

(assert (= bs!66648 (and d!187831 d!187719)))

(assert (=> bs!66648 (= lambda!15312 lambda!15297)))

(declare-fun bs!66649 () Bool)

(assert (= bs!66649 (and d!187831 d!187707)))

(assert (=> bs!66649 (= lambda!15312 lambda!15293)))

(declare-fun bs!66650 () Bool)

(assert (= bs!66650 (and d!187831 d!187825)))

(assert (=> bs!66650 (= lambda!15312 lambda!15311)))

(declare-fun bs!66651 () Bool)

(assert (= bs!66651 (and d!187831 d!187715)))

(assert (=> bs!66651 (= lambda!15312 lambda!15296)))

(declare-fun bs!66652 () Bool)

(assert (= bs!66652 (and d!187831 d!187705)))

(assert (=> bs!66652 (= lambda!15312 lambda!15292)))

(assert (=> d!187831 (= (inv!6235 setElem!2595) (forall!1495 (exprs!659 setElem!2595) lambda!15312))))

(declare-fun bs!66653 () Bool)

(assert (= bs!66653 d!187831))

(declare-fun m!773954 () Bool)

(assert (=> bs!66653 m!773954))

(assert (=> setNonEmpty!2595 d!187831))

(declare-fun d!187833 () Bool)

(declare-fun res!223209 () Bool)

(declare-fun e!317547 () Bool)

(assert (=> d!187833 (=> (not res!223209) (not e!317547))))

(declare-fun valid!581 (MutableMap!566) Bool)

(assert (=> d!187833 (= res!223209 (valid!581 (cache!953 cacheUp!449)))))

(assert (=> d!187833 (= (validCacheMapUp!38 (cache!953 cacheUp!449)) e!317547)))

(declare-fun b!528053 () Bool)

(declare-fun res!223210 () Bool)

(assert (=> b!528053 (=> (not res!223210) (not e!317547))))

(declare-fun invariantList!106 (List!4977) Bool)

(declare-datatypes ((ListMap!261 0))(
  ( (ListMap!262 (toList!467 List!4977)) )
))
(declare-fun map!1142 (MutableMap!566) ListMap!261)

(assert (=> b!528053 (= res!223210 (invariantList!106 (toList!467 (map!1142 (cache!953 cacheUp!449)))))))

(declare-fun b!528054 () Bool)

(declare-fun lambda!15315 () Int)

(declare-fun forall!1499 (List!4977 Int) Bool)

(assert (=> b!528054 (= e!317547 (forall!1499 (toList!467 (map!1142 (cache!953 cacheUp!449))) lambda!15315))))

(assert (= (and d!187833 res!223209) b!528053))

(assert (= (and b!528053 res!223210) b!528054))

(declare-fun m!773957 () Bool)

(assert (=> d!187833 m!773957))

(declare-fun m!773959 () Bool)

(assert (=> b!528053 m!773959))

(declare-fun m!773961 () Bool)

(assert (=> b!528053 m!773961))

(assert (=> b!528054 m!773959))

(declare-fun m!773963 () Bool)

(assert (=> b!528054 m!773963))

(assert (=> b!527592 d!187833))

(declare-fun bs!66654 () Bool)

(declare-fun b!528056 () Bool)

(assert (= bs!66654 (and b!528056 b!527826)))

(declare-fun lambda!15316 () Int)

(assert (=> bs!66654 (= (= (totalInput!1751 (_4!48 lt!217877)) (totalInput!1751 cacheFurthestNullable!56)) (= lambda!15316 lambda!15300))))

(assert (=> b!528056 true))

(declare-fun d!187835 () Bool)

(declare-fun res!223211 () Bool)

(declare-fun e!317548 () Bool)

(assert (=> d!187835 (=> (not res!223211) (not e!317548))))

(assert (=> d!187835 (= res!223211 (valid!579 (cache!954 (_4!48 lt!217877))))))

(assert (=> d!187835 (= (validCacheMapFurthestNullable!28 (cache!954 (_4!48 lt!217877)) (totalInput!1751 (_4!48 lt!217877))) e!317548)))

(declare-fun b!528055 () Bool)

(declare-fun res!223212 () Bool)

(assert (=> b!528055 (=> (not res!223212) (not e!317548))))

(assert (=> b!528055 (= res!223212 (invariantList!104 (toList!465 (map!1140 (cache!954 (_4!48 lt!217877))))))))

(assert (=> b!528056 (= e!317548 (forall!1496 (toList!465 (map!1140 (cache!954 (_4!48 lt!217877)))) lambda!15316))))

(assert (= (and d!187835 res!223211) b!528055))

(assert (= (and b!528055 res!223212) b!528056))

(declare-fun m!773965 () Bool)

(assert (=> d!187835 m!773965))

(declare-fun m!773967 () Bool)

(assert (=> b!528055 m!773967))

(declare-fun m!773969 () Bool)

(assert (=> b!528055 m!773969))

(assert (=> b!528056 m!773967))

(declare-fun m!773971 () Bool)

(assert (=> b!528056 m!773971))

(assert (=> d!187655 d!187835))

(declare-fun bs!66655 () Bool)

(declare-fun d!187837 () Bool)

(assert (= bs!66655 (and d!187837 d!187799)))

(declare-fun lambda!15317 () Int)

(assert (=> bs!66655 (= lambda!15317 lambda!15308)))

(declare-fun bs!66656 () Bool)

(assert (= bs!66656 (and d!187837 d!187805)))

(assert (=> bs!66656 (= lambda!15317 lambda!15310)))

(declare-fun bs!66657 () Bool)

(assert (= bs!66657 (and d!187837 d!187831)))

(assert (=> bs!66657 (= lambda!15317 lambda!15312)))

(declare-fun bs!66658 () Bool)

(assert (= bs!66658 (and d!187837 d!187711)))

(assert (=> bs!66658 (= lambda!15317 lambda!15294)))

(declare-fun bs!66659 () Bool)

(assert (= bs!66659 (and d!187837 d!187713)))

(assert (=> bs!66659 (= lambda!15317 lambda!15295)))

(declare-fun bs!66660 () Bool)

(assert (= bs!66660 (and d!187837 d!187803)))

(assert (=> bs!66660 (= lambda!15317 lambda!15309)))

(declare-fun bs!66661 () Bool)

(assert (= bs!66661 (and d!187837 d!187797)))

(assert (=> bs!66661 (= lambda!15317 lambda!15307)))

(declare-fun bs!66662 () Bool)

(assert (= bs!66662 (and d!187837 d!187719)))

(assert (=> bs!66662 (= lambda!15317 lambda!15297)))

(declare-fun bs!66663 () Bool)

(assert (= bs!66663 (and d!187837 d!187707)))

(assert (=> bs!66663 (= lambda!15317 lambda!15293)))

(declare-fun bs!66664 () Bool)

(assert (= bs!66664 (and d!187837 d!187825)))

(assert (=> bs!66664 (= lambda!15317 lambda!15311)))

(declare-fun bs!66665 () Bool)

(assert (= bs!66665 (and d!187837 d!187715)))

(assert (=> bs!66665 (= lambda!15317 lambda!15296)))

(declare-fun bs!66666 () Bool)

(assert (= bs!66666 (and d!187837 d!187705)))

(assert (=> bs!66666 (= lambda!15317 lambda!15292)))

(assert (=> d!187837 (= (inv!6235 setElem!2609) (forall!1495 (exprs!659 setElem!2609) lambda!15317))))

(declare-fun bs!66667 () Bool)

(assert (= bs!66667 d!187837))

(declare-fun m!773973 () Bool)

(assert (=> bs!66667 m!773973))

(assert (=> setNonEmpty!2609 d!187837))

(declare-fun d!187839 () Bool)

(declare-fun lt!218152 () Bool)

(assert (=> d!187839 (= lt!218152 (isEmpty!3611 (list!2069 (_1!3321 lt!217882))))))

(declare-fun isEmpty!3612 (Conc!1610) Bool)

(assert (=> d!187839 (= lt!218152 (isEmpty!3612 (c!101091 (_1!3321 lt!217882))))))

(assert (=> d!187839 (= (isEmpty!3610 (_1!3321 lt!217882)) lt!218152)))

(declare-fun bs!66668 () Bool)

(assert (= bs!66668 d!187839))

(assert (=> bs!66668 m!773254))

(assert (=> bs!66668 m!773254))

(declare-fun m!773975 () Bool)

(assert (=> bs!66668 m!773975))

(declare-fun m!773977 () Bool)

(assert (=> bs!66668 m!773977))

(assert (=> b!527604 d!187839))

(declare-fun bs!66669 () Bool)

(declare-fun d!187841 () Bool)

(assert (= bs!66669 (and d!187841 d!187799)))

(declare-fun lambda!15318 () Int)

(assert (=> bs!66669 (= lambda!15318 lambda!15308)))

(declare-fun bs!66670 () Bool)

(assert (= bs!66670 (and d!187841 d!187805)))

(assert (=> bs!66670 (= lambda!15318 lambda!15310)))

(declare-fun bs!66671 () Bool)

(assert (= bs!66671 (and d!187841 d!187831)))

(assert (=> bs!66671 (= lambda!15318 lambda!15312)))

(declare-fun bs!66672 () Bool)

(assert (= bs!66672 (and d!187841 d!187711)))

(assert (=> bs!66672 (= lambda!15318 lambda!15294)))

(declare-fun bs!66673 () Bool)

(assert (= bs!66673 (and d!187841 d!187713)))

(assert (=> bs!66673 (= lambda!15318 lambda!15295)))

(declare-fun bs!66674 () Bool)

(assert (= bs!66674 (and d!187841 d!187803)))

(assert (=> bs!66674 (= lambda!15318 lambda!15309)))

(declare-fun bs!66675 () Bool)

(assert (= bs!66675 (and d!187841 d!187837)))

(assert (=> bs!66675 (= lambda!15318 lambda!15317)))

(declare-fun bs!66676 () Bool)

(assert (= bs!66676 (and d!187841 d!187797)))

(assert (=> bs!66676 (= lambda!15318 lambda!15307)))

(declare-fun bs!66677 () Bool)

(assert (= bs!66677 (and d!187841 d!187719)))

(assert (=> bs!66677 (= lambda!15318 lambda!15297)))

(declare-fun bs!66678 () Bool)

(assert (= bs!66678 (and d!187841 d!187707)))

(assert (=> bs!66678 (= lambda!15318 lambda!15293)))

(declare-fun bs!66679 () Bool)

(assert (= bs!66679 (and d!187841 d!187825)))

(assert (=> bs!66679 (= lambda!15318 lambda!15311)))

(declare-fun bs!66680 () Bool)

(assert (= bs!66680 (and d!187841 d!187715)))

(assert (=> bs!66680 (= lambda!15318 lambda!15296)))

(declare-fun bs!66681 () Bool)

(assert (= bs!66681 (and d!187841 d!187705)))

(assert (=> bs!66681 (= lambda!15318 lambda!15292)))

(assert (=> d!187841 (= (inv!6235 setElem!2597) (forall!1495 (exprs!659 setElem!2597) lambda!15318))))

(declare-fun bs!66682 () Bool)

(assert (= bs!66682 d!187841))

(declare-fun m!773979 () Bool)

(assert (=> bs!66682 m!773979))

(assert (=> setNonEmpty!2597 d!187841))

(assert (=> d!187673 d!187727))

(declare-fun bs!66683 () Bool)

(declare-fun d!187843 () Bool)

(assert (= bs!66683 (and d!187843 d!187799)))

(declare-fun lambda!15319 () Int)

(assert (=> bs!66683 (= lambda!15319 lambda!15308)))

(declare-fun bs!66684 () Bool)

(assert (= bs!66684 (and d!187843 d!187805)))

(assert (=> bs!66684 (= lambda!15319 lambda!15310)))

(declare-fun bs!66685 () Bool)

(assert (= bs!66685 (and d!187843 d!187711)))

(assert (=> bs!66685 (= lambda!15319 lambda!15294)))

(declare-fun bs!66686 () Bool)

(assert (= bs!66686 (and d!187843 d!187713)))

(assert (=> bs!66686 (= lambda!15319 lambda!15295)))

(declare-fun bs!66687 () Bool)

(assert (= bs!66687 (and d!187843 d!187803)))

(assert (=> bs!66687 (= lambda!15319 lambda!15309)))

(declare-fun bs!66688 () Bool)

(assert (= bs!66688 (and d!187843 d!187837)))

(assert (=> bs!66688 (= lambda!15319 lambda!15317)))

(declare-fun bs!66689 () Bool)

(assert (= bs!66689 (and d!187843 d!187797)))

(assert (=> bs!66689 (= lambda!15319 lambda!15307)))

(declare-fun bs!66690 () Bool)

(assert (= bs!66690 (and d!187843 d!187719)))

(assert (=> bs!66690 (= lambda!15319 lambda!15297)))

(declare-fun bs!66691 () Bool)

(assert (= bs!66691 (and d!187843 d!187707)))

(assert (=> bs!66691 (= lambda!15319 lambda!15293)))

(declare-fun bs!66692 () Bool)

(assert (= bs!66692 (and d!187843 d!187825)))

(assert (=> bs!66692 (= lambda!15319 lambda!15311)))

(declare-fun bs!66693 () Bool)

(assert (= bs!66693 (and d!187843 d!187831)))

(assert (=> bs!66693 (= lambda!15319 lambda!15312)))

(declare-fun bs!66694 () Bool)

(assert (= bs!66694 (and d!187843 d!187841)))

(assert (=> bs!66694 (= lambda!15319 lambda!15318)))

(declare-fun bs!66695 () Bool)

(assert (= bs!66695 (and d!187843 d!187715)))

(assert (=> bs!66695 (= lambda!15319 lambda!15296)))

(declare-fun bs!66696 () Bool)

(assert (= bs!66696 (and d!187843 d!187705)))

(assert (=> bs!66696 (= lambda!15319 lambda!15292)))

(assert (=> d!187843 (= (inv!6235 (_2!3319 (_1!3320 (h!10371 mapValue!2348)))) (forall!1495 (exprs!659 (_2!3319 (_1!3320 (h!10371 mapValue!2348)))) lambda!15319))))

(declare-fun bs!66697 () Bool)

(assert (= bs!66697 d!187843))

(declare-fun m!773981 () Bool)

(assert (=> bs!66697 m!773981))

(assert (=> b!527718 d!187843))

(declare-fun d!187845 () Bool)

(declare-fun res!223217 () Bool)

(declare-fun e!317551 () Bool)

(assert (=> d!187845 (=> (not res!223217) (not e!317551))))

(declare-fun list!2073 (IArray!3219) List!4979)

(assert (=> d!187845 (= res!223217 (<= (size!4056 (list!2073 (xs!4246 (c!101090 input!747)))) 512))))

(assert (=> d!187845 (= (inv!6233 (c!101090 input!747)) e!317551)))

(declare-fun b!528061 () Bool)

(declare-fun res!223218 () Bool)

(assert (=> b!528061 (=> (not res!223218) (not e!317551))))

(assert (=> b!528061 (= res!223218 (= (csize!3449 (c!101090 input!747)) (size!4056 (list!2073 (xs!4246 (c!101090 input!747))))))))

(declare-fun b!528062 () Bool)

(assert (=> b!528062 (= e!317551 (and (> (csize!3449 (c!101090 input!747)) 0) (<= (csize!3449 (c!101090 input!747)) 512)))))

(assert (= (and d!187845 res!223217) b!528061))

(assert (= (and b!528061 res!223218) b!528062))

(declare-fun m!773983 () Bool)

(assert (=> d!187845 m!773983))

(assert (=> d!187845 m!773983))

(declare-fun m!773985 () Bool)

(assert (=> d!187845 m!773985))

(assert (=> b!528061 m!773983))

(assert (=> b!528061 m!773983))

(assert (=> b!528061 m!773985))

(assert (=> b!527577 d!187845))

(declare-fun b!528063 () Bool)

(declare-fun e!317555 () Bool)

(declare-fun e!317552 () Bool)

(assert (=> b!528063 (= e!317555 e!317552)))

(declare-fun res!223219 () Bool)

(declare-fun lt!218153 () tuple2!6132)

(assert (=> b!528063 (= res!223219 (< (size!4055 (_2!3321 lt!218153)) (size!4055 (_2!3324 (v!16038 lt!217978)))))))

(assert (=> b!528063 (=> (not res!223219) (not e!317552))))

(declare-fun d!187847 () Bool)

(declare-fun e!317554 () Bool)

(assert (=> d!187847 e!317554))

(declare-fun res!223221 () Bool)

(assert (=> d!187847 (=> (not res!223221) (not e!317554))))

(assert (=> d!187847 (= res!223221 e!317555)))

(declare-fun c!101162 () Bool)

(assert (=> d!187847 (= c!101162 (> (size!4054 (_1!3321 lt!218153)) 0))))

(declare-fun e!317553 () tuple2!6132)

(assert (=> d!187847 (= lt!218153 e!317553)))

(declare-fun c!101163 () Bool)

(declare-fun lt!218155 () Option!1248)

(assert (=> d!187847 (= c!101163 ((_ is Some!1247) lt!218155))))

(assert (=> d!187847 (= lt!218155 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!217978))))))

(assert (=> d!187847 (= (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!217978))) lt!218153)))

(declare-fun b!528064 () Bool)

(assert (=> b!528064 (= e!317553 (tuple2!6133 (BalanceConc!3229 Empty!1610) (_2!3324 (v!16038 lt!217978))))))

(declare-fun b!528065 () Bool)

(assert (=> b!528065 (= e!317555 (= (list!2068 (_2!3321 lt!218153)) (list!2068 (_2!3324 (v!16038 lt!217978)))))))

(declare-fun b!528066 () Bool)

(declare-fun res!223220 () Bool)

(assert (=> b!528066 (=> (not res!223220) (not e!317554))))

(assert (=> b!528066 (= res!223220 (= (list!2069 (_1!3321 lt!218153)) (_1!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 (_2!3324 (v!16038 lt!217978)))))))))

(declare-fun b!528067 () Bool)

(assert (=> b!528067 (= e!317552 (not (isEmpty!3610 (_1!3321 lt!218153))))))

(declare-fun b!528068 () Bool)

(assert (=> b!528068 (= e!317554 (= (list!2068 (_2!3321 lt!218153)) (_2!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 (_2!3324 (v!16038 lt!217978)))))))))

(declare-fun b!528069 () Bool)

(declare-fun lt!218154 () tuple2!6132)

(assert (=> b!528069 (= e!317553 (tuple2!6133 (prepend!242 (_1!3321 lt!218154) (_1!3324 (v!16038 lt!218155))) (_2!3321 lt!218154)))))

(assert (=> b!528069 (= lt!218154 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!218155))))))

(assert (= (and d!187847 c!101163) b!528069))

(assert (= (and d!187847 (not c!101163)) b!528064))

(assert (= (and d!187847 c!101162) b!528063))

(assert (= (and d!187847 (not c!101162)) b!528065))

(assert (= (and b!528063 res!223219) b!528067))

(assert (= (and d!187847 res!223221) b!528066))

(assert (= (and b!528066 res!223220) b!528068))

(declare-fun m!773987 () Bool)

(assert (=> b!528063 m!773987))

(declare-fun m!773989 () Bool)

(assert (=> b!528063 m!773989))

(declare-fun m!773991 () Bool)

(assert (=> b!528069 m!773991))

(declare-fun m!773993 () Bool)

(assert (=> b!528069 m!773993))

(declare-fun m!773995 () Bool)

(assert (=> b!528066 m!773995))

(declare-fun m!773997 () Bool)

(assert (=> b!528066 m!773997))

(assert (=> b!528066 m!773997))

(declare-fun m!773999 () Bool)

(assert (=> b!528066 m!773999))

(declare-fun m!774001 () Bool)

(assert (=> d!187847 m!774001))

(declare-fun m!774003 () Bool)

(assert (=> d!187847 m!774003))

(declare-fun m!774005 () Bool)

(assert (=> b!528065 m!774005))

(assert (=> b!528065 m!773997))

(declare-fun m!774007 () Bool)

(assert (=> b!528067 m!774007))

(assert (=> b!528068 m!774005))

(assert (=> b!528068 m!773997))

(assert (=> b!528068 m!773997))

(assert (=> b!528068 m!773999))

(assert (=> b!527637 d!187847))

(declare-fun d!187849 () Bool)

(declare-fun e!317558 () Bool)

(assert (=> d!187849 e!317558))

(declare-fun res!223224 () Bool)

(assert (=> d!187849 (=> (not res!223224) (not e!317558))))

(declare-fun prepend!243 (Conc!1610 Token!1522) Conc!1610)

(assert (=> d!187849 (= res!223224 (isBalanced!498 (prepend!243 (c!101091 (_1!3321 lt!217975)) (_1!3324 (v!16038 lt!217978)))))))

(declare-fun lt!218158 () BalanceConc!3228)

(assert (=> d!187849 (= lt!218158 (BalanceConc!3229 (prepend!243 (c!101091 (_1!3321 lt!217975)) (_1!3324 (v!16038 lt!217978)))))))

(assert (=> d!187849 (= (prepend!242 (_1!3321 lt!217975) (_1!3324 (v!16038 lt!217978))) lt!218158)))

(declare-fun b!528072 () Bool)

(assert (=> b!528072 (= e!317558 (= (list!2069 lt!218158) (Cons!4972 (_1!3324 (v!16038 lt!217978)) (list!2069 (_1!3321 lt!217975)))))))

(assert (= (and d!187849 res!223224) b!528072))

(declare-fun m!774009 () Bool)

(assert (=> d!187849 m!774009))

(assert (=> d!187849 m!774009))

(declare-fun m!774011 () Bool)

(assert (=> d!187849 m!774011))

(declare-fun m!774013 () Bool)

(assert (=> b!528072 m!774013))

(declare-fun m!774015 () Bool)

(assert (=> b!528072 m!774015))

(assert (=> b!527637 d!187849))

(declare-fun d!187851 () Bool)

(declare-fun lt!218161 () Int)

(assert (=> d!187851 (= lt!218161 (size!4058 (list!2069 (_1!3321 lt!217882))))))

(declare-fun size!4059 (Conc!1610) Int)

(assert (=> d!187851 (= lt!218161 (size!4059 (c!101091 (_1!3321 lt!217882))))))

(assert (=> d!187851 (= (size!4054 (_1!3321 lt!217882)) lt!218161)))

(declare-fun bs!66698 () Bool)

(assert (= bs!66698 d!187851))

(assert (=> bs!66698 m!773254))

(assert (=> bs!66698 m!773254))

(declare-fun m!774017 () Bool)

(assert (=> bs!66698 m!774017))

(declare-fun m!774019 () Bool)

(assert (=> bs!66698 m!774019))

(assert (=> d!187699 d!187851))

(declare-fun b!528087 () Bool)

(declare-fun e!317567 () tuple2!6132)

(assert (=> b!528087 (= e!317567 (tuple2!6133 (BalanceConc!3229 Empty!1610) input!747))))

(declare-fun e!317569 () Bool)

(declare-fun b!528088 () Bool)

(declare-fun lt!218241 () tuple2!6132)

(assert (=> b!528088 (= e!317569 (= (list!2068 (_2!3321 lt!218241)) (list!2068 (_2!3321 (lexRec!143 thiss!12147 rules!1345 input!747)))))))

(declare-fun b!528089 () Bool)

(declare-fun e!317570 () tuple2!6132)

(declare-fun lt!218239 () BalanceConc!3226)

(assert (=> b!528089 (= e!317570 (tuple2!6133 (BalanceConc!3229 Empty!1610) lt!218239))))

(declare-fun b!528090 () Bool)

(declare-fun lt!218251 () Option!1248)

(declare-fun lt!218263 () tuple2!6132)

(assert (=> b!528090 (= lt!218263 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!218251))))))

(assert (=> b!528090 (= e!317570 (tuple2!6133 (prepend!242 (_1!3321 lt!218263) (_1!3324 (v!16038 lt!218251))) (_2!3321 lt!218263)))))

(declare-fun d!187853 () Bool)

(assert (=> d!187853 e!317569))

(declare-fun res!223227 () Bool)

(assert (=> d!187853 (=> (not res!223227) (not e!317569))))

(assert (=> d!187853 (= res!223227 (= (list!2069 (_1!3321 lt!218241)) (list!2069 (_1!3321 (lexRec!143 thiss!12147 rules!1345 input!747)))))))

(declare-fun e!317568 () tuple2!6132)

(assert (=> d!187853 (= lt!218241 e!317568)))

(declare-fun c!101173 () Bool)

(declare-fun lt!218250 () Option!1248)

(assert (=> d!187853 (= c!101173 ((_ is Some!1247) lt!218250))))

(declare-fun maxPrefixZipperSequenceV2!120 (LexerInterface!779 List!4983 BalanceConc!3226 BalanceConc!3226) Option!1248)

(assert (=> d!187853 (= lt!218250 (maxPrefixZipperSequenceV2!120 thiss!12147 rules!1345 input!747 input!747))))

(declare-fun lt!218242 () Unit!8805)

(declare-fun lt!218236 () Unit!8805)

(assert (=> d!187853 (= lt!218242 lt!218236)))

(declare-fun lt!218260 () List!4979)

(declare-fun lt!218261 () List!4979)

(assert (=> d!187853 (isSuffix!120 lt!218260 (++!1378 lt!218261 lt!218260))))

(assert (=> d!187853 (= lt!218236 (lemmaConcatTwoListThenFSndIsSuffix!120 lt!218261 lt!218260))))

(assert (=> d!187853 (= lt!218260 (list!2068 input!747))))

(assert (=> d!187853 (= lt!218261 (list!2068 (BalanceConc!3227 Empty!1609)))))

(assert (=> d!187853 (= (lexTailRecV2!267 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610)) lt!218241)))

(declare-fun b!528091 () Bool)

(assert (=> b!528091 (= e!317568 (tuple2!6133 (BalanceConc!3229 Empty!1610) input!747))))

(declare-fun b!528092 () Bool)

(declare-fun lt!218238 () BalanceConc!3226)

(assert (=> b!528092 (= e!317568 (lexTailRecV2!267 thiss!12147 rules!1345 input!747 lt!218238 (_2!3324 (v!16038 lt!218250)) (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 lt!218250)))))))

(declare-fun lt!218253 () tuple2!6132)

(assert (=> b!528092 (= lt!218253 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!218250))))))

(declare-fun lt!218234 () List!4979)

(assert (=> b!528092 (= lt!218234 (list!2068 (BalanceConc!3227 Empty!1609)))))

(declare-fun lt!218249 () List!4979)

(assert (=> b!528092 (= lt!218249 (list!2068 (charsOf!522 (_1!3324 (v!16038 lt!218250)))))))

(declare-fun lt!218255 () List!4979)

(assert (=> b!528092 (= lt!218255 (list!2068 (_2!3324 (v!16038 lt!218250))))))

(declare-fun lt!218244 () Unit!8805)

(assert (=> b!528092 (= lt!218244 (lemmaConcatAssociativity!619 lt!218234 lt!218249 lt!218255))))

(assert (=> b!528092 (= (++!1378 (++!1378 lt!218234 lt!218249) lt!218255) (++!1378 lt!218234 (++!1378 lt!218249 lt!218255)))))

(declare-fun lt!218258 () Unit!8805)

(assert (=> b!528092 (= lt!218258 lt!218244)))

(declare-fun lt!218254 () Option!1248)

(assert (=> b!528092 (= lt!218254 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 input!747))))

(declare-fun c!101172 () Bool)

(assert (=> b!528092 (= c!101172 ((_ is Some!1247) lt!218254))))

(assert (=> b!528092 (= (lexRec!143 thiss!12147 rules!1345 input!747) e!317567)))

(declare-fun lt!218233 () Unit!8805)

(declare-fun Unit!8811 () Unit!8805)

(assert (=> b!528092 (= lt!218233 Unit!8811)))

(declare-fun lt!218232 () List!4982)

(assert (=> b!528092 (= lt!218232 (list!2069 (BalanceConc!3229 Empty!1610)))))

(declare-fun lt!218262 () List!4982)

(assert (=> b!528092 (= lt!218262 (Cons!4972 (_1!3324 (v!16038 lt!218250)) Nil!4972))))

(declare-fun lt!218252 () List!4982)

(assert (=> b!528092 (= lt!218252 (list!2069 (_1!3321 lt!218253)))))

(declare-fun lt!218240 () Unit!8805)

(assert (=> b!528092 (= lt!218240 (lemmaConcatAssociativity!620 lt!218232 lt!218262 lt!218252))))

(assert (=> b!528092 (= (++!1379 (++!1379 lt!218232 lt!218262) lt!218252) (++!1379 lt!218232 (++!1379 lt!218262 lt!218252)))))

(declare-fun lt!218231 () Unit!8805)

(assert (=> b!528092 (= lt!218231 lt!218240)))

(declare-fun lt!218248 () List!4979)

(assert (=> b!528092 (= lt!218248 (++!1378 (list!2068 (BalanceConc!3227 Empty!1609)) (list!2068 (charsOf!522 (_1!3324 (v!16038 lt!218250))))))))

(declare-fun lt!218243 () List!4979)

(assert (=> b!528092 (= lt!218243 (list!2068 (_2!3324 (v!16038 lt!218250))))))

(declare-fun lt!218245 () List!4982)

(assert (=> b!528092 (= lt!218245 (list!2069 (append!158 (BalanceConc!3229 Empty!1610) (_1!3324 (v!16038 lt!218250)))))))

(declare-fun lt!218247 () Unit!8805)

(assert (=> b!528092 (= lt!218247 (lemmaLexThenLexPrefix!122 thiss!12147 rules!1345 lt!218248 lt!218243 lt!218245 (list!2069 (_1!3321 lt!218253)) (list!2068 (_2!3321 lt!218253))))))

(assert (=> b!528092 (= (lexList!305 thiss!12147 rules!1345 lt!218248) (tuple2!6135 lt!218245 Nil!4969))))

(declare-fun lt!218237 () Unit!8805)

(assert (=> b!528092 (= lt!218237 lt!218247)))

(assert (=> b!528092 (= lt!218239 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 lt!218250)))))))

(assert (=> b!528092 (= lt!218251 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 lt!218239))))

(declare-fun c!101171 () Bool)

(assert (=> b!528092 (= c!101171 ((_ is Some!1247) lt!218251))))

(assert (=> b!528092 (= (lexRec!143 thiss!12147 rules!1345 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 lt!218250))))) e!317570)))

(declare-fun lt!218230 () Unit!8805)

(declare-fun Unit!8812 () Unit!8805)

(assert (=> b!528092 (= lt!218230 Unit!8812)))

(assert (=> b!528092 (= lt!218238 (++!1380 (BalanceConc!3227 Empty!1609) (charsOf!522 (_1!3324 (v!16038 lt!218250)))))))

(declare-fun lt!218257 () List!4979)

(assert (=> b!528092 (= lt!218257 (list!2068 lt!218238))))

(declare-fun lt!218259 () List!4979)

(assert (=> b!528092 (= lt!218259 (list!2068 (_2!3324 (v!16038 lt!218250))))))

(declare-fun lt!218256 () Unit!8805)

(assert (=> b!528092 (= lt!218256 (lemmaConcatTwoListThenFSndIsSuffix!120 lt!218257 lt!218259))))

(assert (=> b!528092 (isSuffix!120 lt!218259 (++!1378 lt!218257 lt!218259))))

(declare-fun lt!218235 () Unit!8805)

(assert (=> b!528092 (= lt!218235 lt!218256)))

(declare-fun lt!218246 () tuple2!6132)

(declare-fun b!528093 () Bool)

(assert (=> b!528093 (= lt!218246 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!218254))))))

(assert (=> b!528093 (= e!317567 (tuple2!6133 (prepend!242 (_1!3321 lt!218246) (_1!3324 (v!16038 lt!218254))) (_2!3321 lt!218246)))))

(assert (= (and d!187853 c!101173) b!528092))

(assert (= (and d!187853 (not c!101173)) b!528091))

(assert (= (and b!528092 c!101172) b!528093))

(assert (= (and b!528092 (not c!101172)) b!528087))

(assert (= (and b!528092 c!101171) b!528090))

(assert (= (and b!528092 (not c!101171)) b!528089))

(assert (= (and d!187853 res!223227) b!528088))

(declare-fun m!774021 () Bool)

(assert (=> d!187853 m!774021))

(declare-fun m!774023 () Bool)

(assert (=> d!187853 m!774023))

(assert (=> d!187853 m!773322))

(assert (=> d!187853 m!773276))

(declare-fun m!774025 () Bool)

(assert (=> d!187853 m!774025))

(declare-fun m!774027 () Bool)

(assert (=> d!187853 m!774027))

(assert (=> d!187853 m!774021))

(assert (=> d!187853 m!773352))

(assert (=> d!187853 m!773248))

(declare-fun m!774029 () Bool)

(assert (=> d!187853 m!774029))

(declare-fun m!774031 () Bool)

(assert (=> b!528088 m!774031))

(assert (=> b!528088 m!773276))

(assert (=> b!528088 m!773278))

(declare-fun m!774033 () Bool)

(assert (=> b!528090 m!774033))

(declare-fun m!774035 () Bool)

(assert (=> b!528090 m!774035))

(assert (=> b!528092 m!773322))

(declare-fun m!774037 () Bool)

(assert (=> b!528092 m!774037))

(assert (=> b!528092 m!773330))

(declare-fun m!774039 () Bool)

(assert (=> b!528092 m!774039))

(declare-fun m!774041 () Bool)

(assert (=> b!528092 m!774041))

(declare-fun m!774043 () Bool)

(assert (=> b!528092 m!774043))

(declare-fun m!774045 () Bool)

(assert (=> b!528092 m!774045))

(declare-fun m!774047 () Bool)

(assert (=> b!528092 m!774047))

(assert (=> b!528092 m!774037))

(declare-fun m!774049 () Bool)

(assert (=> b!528092 m!774049))

(assert (=> b!528092 m!773322))

(assert (=> b!528092 m!774043))

(declare-fun m!774051 () Bool)

(assert (=> b!528092 m!774051))

(assert (=> b!528092 m!774041))

(declare-fun m!774053 () Bool)

(assert (=> b!528092 m!774053))

(declare-fun m!774055 () Bool)

(assert (=> b!528092 m!774055))

(declare-fun m!774057 () Bool)

(assert (=> b!528092 m!774057))

(assert (=> b!528092 m!774055))

(declare-fun m!774059 () Bool)

(assert (=> b!528092 m!774059))

(declare-fun m!774061 () Bool)

(assert (=> b!528092 m!774061))

(declare-fun m!774063 () Bool)

(assert (=> b!528092 m!774063))

(declare-fun m!774065 () Bool)

(assert (=> b!528092 m!774065))

(declare-fun m!774067 () Bool)

(assert (=> b!528092 m!774067))

(declare-fun m!774069 () Bool)

(assert (=> b!528092 m!774069))

(declare-fun m!774071 () Bool)

(assert (=> b!528092 m!774071))

(declare-fun m!774073 () Bool)

(assert (=> b!528092 m!774073))

(declare-fun m!774075 () Bool)

(assert (=> b!528092 m!774075))

(assert (=> b!528092 m!774053))

(declare-fun m!774077 () Bool)

(assert (=> b!528092 m!774077))

(assert (=> b!528092 m!774071))

(declare-fun m!774079 () Bool)

(assert (=> b!528092 m!774079))

(declare-fun m!774081 () Bool)

(assert (=> b!528092 m!774081))

(assert (=> b!528092 m!774061))

(declare-fun m!774083 () Bool)

(assert (=> b!528092 m!774083))

(assert (=> b!528092 m!774079))

(declare-fun m!774085 () Bool)

(assert (=> b!528092 m!774085))

(declare-fun m!774087 () Bool)

(assert (=> b!528092 m!774087))

(declare-fun m!774089 () Bool)

(assert (=> b!528092 m!774089))

(assert (=> b!528092 m!774063))

(assert (=> b!528092 m!774045))

(declare-fun m!774091 () Bool)

(assert (=> b!528092 m!774091))

(assert (=> b!528092 m!774087))

(assert (=> b!528092 m!774079))

(declare-fun m!774093 () Bool)

(assert (=> b!528092 m!774093))

(assert (=> b!528092 m!774041))

(assert (=> b!528092 m!773276))

(assert (=> b!528092 m!773338))

(declare-fun m!774095 () Bool)

(assert (=> b!528093 m!774095))

(declare-fun m!774097 () Bool)

(assert (=> b!528093 m!774097))

(assert (=> d!187699 d!187853))

(assert (=> b!527539 d!187685))

(declare-fun bs!66699 () Bool)

(declare-fun d!187855 () Bool)

(assert (= bs!66699 (and d!187855 d!187843)))

(declare-fun lambda!15320 () Int)

(assert (=> bs!66699 (= lambda!15320 lambda!15319)))

(declare-fun bs!66700 () Bool)

(assert (= bs!66700 (and d!187855 d!187799)))

(assert (=> bs!66700 (= lambda!15320 lambda!15308)))

(declare-fun bs!66701 () Bool)

(assert (= bs!66701 (and d!187855 d!187805)))

(assert (=> bs!66701 (= lambda!15320 lambda!15310)))

(declare-fun bs!66702 () Bool)

(assert (= bs!66702 (and d!187855 d!187711)))

(assert (=> bs!66702 (= lambda!15320 lambda!15294)))

(declare-fun bs!66703 () Bool)

(assert (= bs!66703 (and d!187855 d!187713)))

(assert (=> bs!66703 (= lambda!15320 lambda!15295)))

(declare-fun bs!66704 () Bool)

(assert (= bs!66704 (and d!187855 d!187803)))

(assert (=> bs!66704 (= lambda!15320 lambda!15309)))

(declare-fun bs!66705 () Bool)

(assert (= bs!66705 (and d!187855 d!187837)))

(assert (=> bs!66705 (= lambda!15320 lambda!15317)))

(declare-fun bs!66706 () Bool)

(assert (= bs!66706 (and d!187855 d!187797)))

(assert (=> bs!66706 (= lambda!15320 lambda!15307)))

(declare-fun bs!66707 () Bool)

(assert (= bs!66707 (and d!187855 d!187719)))

(assert (=> bs!66707 (= lambda!15320 lambda!15297)))

(declare-fun bs!66708 () Bool)

(assert (= bs!66708 (and d!187855 d!187707)))

(assert (=> bs!66708 (= lambda!15320 lambda!15293)))

(declare-fun bs!66709 () Bool)

(assert (= bs!66709 (and d!187855 d!187825)))

(assert (=> bs!66709 (= lambda!15320 lambda!15311)))

(declare-fun bs!66710 () Bool)

(assert (= bs!66710 (and d!187855 d!187831)))

(assert (=> bs!66710 (= lambda!15320 lambda!15312)))

(declare-fun bs!66711 () Bool)

(assert (= bs!66711 (and d!187855 d!187841)))

(assert (=> bs!66711 (= lambda!15320 lambda!15318)))

(declare-fun bs!66712 () Bool)

(assert (= bs!66712 (and d!187855 d!187715)))

(assert (=> bs!66712 (= lambda!15320 lambda!15296)))

(declare-fun bs!66713 () Bool)

(assert (= bs!66713 (and d!187855 d!187705)))

(assert (=> bs!66713 (= lambda!15320 lambda!15292)))

(assert (=> d!187855 (= (inv!6235 (_1!3315 (_1!3316 (h!10368 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))))) (forall!1495 (exprs!659 (_1!3315 (_1!3316 (h!10368 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))))) lambda!15320))))

(declare-fun bs!66714 () Bool)

(assert (= bs!66714 d!187855))

(declare-fun m!774099 () Bool)

(assert (=> bs!66714 m!774099))

(assert (=> b!527686 d!187855))

(declare-fun bs!66715 () Bool)

(declare-fun d!187857 () Bool)

(assert (= bs!66715 (and d!187857 d!187855)))

(declare-fun lambda!15321 () Int)

(assert (=> bs!66715 (= lambda!15321 lambda!15320)))

(declare-fun bs!66716 () Bool)

(assert (= bs!66716 (and d!187857 d!187843)))

(assert (=> bs!66716 (= lambda!15321 lambda!15319)))

(declare-fun bs!66717 () Bool)

(assert (= bs!66717 (and d!187857 d!187799)))

(assert (=> bs!66717 (= lambda!15321 lambda!15308)))

(declare-fun bs!66718 () Bool)

(assert (= bs!66718 (and d!187857 d!187805)))

(assert (=> bs!66718 (= lambda!15321 lambda!15310)))

(declare-fun bs!66719 () Bool)

(assert (= bs!66719 (and d!187857 d!187711)))

(assert (=> bs!66719 (= lambda!15321 lambda!15294)))

(declare-fun bs!66720 () Bool)

(assert (= bs!66720 (and d!187857 d!187713)))

(assert (=> bs!66720 (= lambda!15321 lambda!15295)))

(declare-fun bs!66721 () Bool)

(assert (= bs!66721 (and d!187857 d!187803)))

(assert (=> bs!66721 (= lambda!15321 lambda!15309)))

(declare-fun bs!66722 () Bool)

(assert (= bs!66722 (and d!187857 d!187837)))

(assert (=> bs!66722 (= lambda!15321 lambda!15317)))

(declare-fun bs!66723 () Bool)

(assert (= bs!66723 (and d!187857 d!187797)))

(assert (=> bs!66723 (= lambda!15321 lambda!15307)))

(declare-fun bs!66724 () Bool)

(assert (= bs!66724 (and d!187857 d!187719)))

(assert (=> bs!66724 (= lambda!15321 lambda!15297)))

(declare-fun bs!66725 () Bool)

(assert (= bs!66725 (and d!187857 d!187707)))

(assert (=> bs!66725 (= lambda!15321 lambda!15293)))

(declare-fun bs!66726 () Bool)

(assert (= bs!66726 (and d!187857 d!187825)))

(assert (=> bs!66726 (= lambda!15321 lambda!15311)))

(declare-fun bs!66727 () Bool)

(assert (= bs!66727 (and d!187857 d!187831)))

(assert (=> bs!66727 (= lambda!15321 lambda!15312)))

(declare-fun bs!66728 () Bool)

(assert (= bs!66728 (and d!187857 d!187841)))

(assert (=> bs!66728 (= lambda!15321 lambda!15318)))

(declare-fun bs!66729 () Bool)

(assert (= bs!66729 (and d!187857 d!187715)))

(assert (=> bs!66729 (= lambda!15321 lambda!15296)))

(declare-fun bs!66730 () Bool)

(assert (= bs!66730 (and d!187857 d!187705)))

(assert (=> bs!66730 (= lambda!15321 lambda!15292)))

(assert (=> d!187857 (= (inv!6235 setElem!2622) (forall!1495 (exprs!659 setElem!2622) lambda!15321))))

(declare-fun bs!66731 () Bool)

(assert (= bs!66731 d!187857))

(declare-fun m!774101 () Bool)

(assert (=> bs!66731 m!774101))

(assert (=> setNonEmpty!2622 d!187857))

(declare-fun d!187859 () Bool)

(declare-fun res!223228 () Bool)

(declare-fun e!317571 () Bool)

(assert (=> d!187859 (=> (not res!223228) (not e!317571))))

(assert (=> d!187859 (= res!223228 (<= (size!4056 (list!2073 (xs!4246 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) 512))))

(assert (=> d!187859 (= (inv!6233 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) e!317571)))

(declare-fun b!528094 () Bool)

(declare-fun res!223229 () Bool)

(assert (=> b!528094 (=> (not res!223229) (not e!317571))))

(assert (=> b!528094 (= res!223229 (= (csize!3449 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) (size!4056 (list!2073 (xs!4246 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))))

(declare-fun b!528095 () Bool)

(assert (=> b!528095 (= e!317571 (and (> (csize!3449 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) 0) (<= (csize!3449 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) 512)))))

(assert (= (and d!187859 res!223228) b!528094))

(assert (= (and b!528094 res!223229) b!528095))

(declare-fun m!774103 () Bool)

(assert (=> d!187859 m!774103))

(assert (=> d!187859 m!774103))

(declare-fun m!774105 () Bool)

(assert (=> d!187859 m!774105))

(assert (=> b!528094 m!774103))

(assert (=> b!528094 m!774103))

(assert (=> b!528094 m!774105))

(assert (=> b!527583 d!187859))

(declare-fun bs!66732 () Bool)

(declare-fun d!187861 () Bool)

(assert (= bs!66732 (and d!187861 d!187855)))

(declare-fun lambda!15322 () Int)

(assert (=> bs!66732 (= lambda!15322 lambda!15320)))

(declare-fun bs!66733 () Bool)

(assert (= bs!66733 (and d!187861 d!187843)))

(assert (=> bs!66733 (= lambda!15322 lambda!15319)))

(declare-fun bs!66734 () Bool)

(assert (= bs!66734 (and d!187861 d!187799)))

(assert (=> bs!66734 (= lambda!15322 lambda!15308)))

(declare-fun bs!66735 () Bool)

(assert (= bs!66735 (and d!187861 d!187711)))

(assert (=> bs!66735 (= lambda!15322 lambda!15294)))

(declare-fun bs!66736 () Bool)

(assert (= bs!66736 (and d!187861 d!187713)))

(assert (=> bs!66736 (= lambda!15322 lambda!15295)))

(declare-fun bs!66737 () Bool)

(assert (= bs!66737 (and d!187861 d!187803)))

(assert (=> bs!66737 (= lambda!15322 lambda!15309)))

(declare-fun bs!66738 () Bool)

(assert (= bs!66738 (and d!187861 d!187837)))

(assert (=> bs!66738 (= lambda!15322 lambda!15317)))

(declare-fun bs!66739 () Bool)

(assert (= bs!66739 (and d!187861 d!187797)))

(assert (=> bs!66739 (= lambda!15322 lambda!15307)))

(declare-fun bs!66740 () Bool)

(assert (= bs!66740 (and d!187861 d!187719)))

(assert (=> bs!66740 (= lambda!15322 lambda!15297)))

(declare-fun bs!66741 () Bool)

(assert (= bs!66741 (and d!187861 d!187805)))

(assert (=> bs!66741 (= lambda!15322 lambda!15310)))

(declare-fun bs!66742 () Bool)

(assert (= bs!66742 (and d!187861 d!187857)))

(assert (=> bs!66742 (= lambda!15322 lambda!15321)))

(declare-fun bs!66743 () Bool)

(assert (= bs!66743 (and d!187861 d!187707)))

(assert (=> bs!66743 (= lambda!15322 lambda!15293)))

(declare-fun bs!66744 () Bool)

(assert (= bs!66744 (and d!187861 d!187825)))

(assert (=> bs!66744 (= lambda!15322 lambda!15311)))

(declare-fun bs!66745 () Bool)

(assert (= bs!66745 (and d!187861 d!187831)))

(assert (=> bs!66745 (= lambda!15322 lambda!15312)))

(declare-fun bs!66746 () Bool)

(assert (= bs!66746 (and d!187861 d!187841)))

(assert (=> bs!66746 (= lambda!15322 lambda!15318)))

(declare-fun bs!66747 () Bool)

(assert (= bs!66747 (and d!187861 d!187715)))

(assert (=> bs!66747 (= lambda!15322 lambda!15296)))

(declare-fun bs!66748 () Bool)

(assert (= bs!66748 (and d!187861 d!187705)))

(assert (=> bs!66748 (= lambda!15322 lambda!15292)))

(assert (=> d!187861 (= (inv!6235 (_2!3319 (_1!3320 (h!10371 mapDefault!2342)))) (forall!1495 (exprs!659 (_2!3319 (_1!3320 (h!10371 mapDefault!2342)))) lambda!15322))))

(declare-fun bs!66749 () Bool)

(assert (= bs!66749 d!187861))

(declare-fun m!774107 () Bool)

(assert (=> bs!66749 m!774107))

(assert (=> b!527700 d!187861))

(declare-fun bs!66750 () Bool)

(declare-fun d!187863 () Bool)

(assert (= bs!66750 (and d!187863 d!187855)))

(declare-fun lambda!15323 () Int)

(assert (=> bs!66750 (= lambda!15323 lambda!15320)))

(declare-fun bs!66751 () Bool)

(assert (= bs!66751 (and d!187863 d!187843)))

(assert (=> bs!66751 (= lambda!15323 lambda!15319)))

(declare-fun bs!66752 () Bool)

(assert (= bs!66752 (and d!187863 d!187799)))

(assert (=> bs!66752 (= lambda!15323 lambda!15308)))

(declare-fun bs!66753 () Bool)

(assert (= bs!66753 (and d!187863 d!187711)))

(assert (=> bs!66753 (= lambda!15323 lambda!15294)))

(declare-fun bs!66754 () Bool)

(assert (= bs!66754 (and d!187863 d!187713)))

(assert (=> bs!66754 (= lambda!15323 lambda!15295)))

(declare-fun bs!66755 () Bool)

(assert (= bs!66755 (and d!187863 d!187803)))

(assert (=> bs!66755 (= lambda!15323 lambda!15309)))

(declare-fun bs!66756 () Bool)

(assert (= bs!66756 (and d!187863 d!187837)))

(assert (=> bs!66756 (= lambda!15323 lambda!15317)))

(declare-fun bs!66757 () Bool)

(assert (= bs!66757 (and d!187863 d!187861)))

(assert (=> bs!66757 (= lambda!15323 lambda!15322)))

(declare-fun bs!66758 () Bool)

(assert (= bs!66758 (and d!187863 d!187797)))

(assert (=> bs!66758 (= lambda!15323 lambda!15307)))

(declare-fun bs!66759 () Bool)

(assert (= bs!66759 (and d!187863 d!187719)))

(assert (=> bs!66759 (= lambda!15323 lambda!15297)))

(declare-fun bs!66760 () Bool)

(assert (= bs!66760 (and d!187863 d!187805)))

(assert (=> bs!66760 (= lambda!15323 lambda!15310)))

(declare-fun bs!66761 () Bool)

(assert (= bs!66761 (and d!187863 d!187857)))

(assert (=> bs!66761 (= lambda!15323 lambda!15321)))

(declare-fun bs!66762 () Bool)

(assert (= bs!66762 (and d!187863 d!187707)))

(assert (=> bs!66762 (= lambda!15323 lambda!15293)))

(declare-fun bs!66763 () Bool)

(assert (= bs!66763 (and d!187863 d!187825)))

(assert (=> bs!66763 (= lambda!15323 lambda!15311)))

(declare-fun bs!66764 () Bool)

(assert (= bs!66764 (and d!187863 d!187831)))

(assert (=> bs!66764 (= lambda!15323 lambda!15312)))

(declare-fun bs!66765 () Bool)

(assert (= bs!66765 (and d!187863 d!187841)))

(assert (=> bs!66765 (= lambda!15323 lambda!15318)))

(declare-fun bs!66766 () Bool)

(assert (= bs!66766 (and d!187863 d!187715)))

(assert (=> bs!66766 (= lambda!15323 lambda!15296)))

(declare-fun bs!66767 () Bool)

(assert (= bs!66767 (and d!187863 d!187705)))

(assert (=> bs!66767 (= lambda!15323 lambda!15292)))

(assert (=> d!187863 (= (inv!6235 (_1!3315 (_1!3316 (h!10368 mapValue!2345)))) (forall!1495 (exprs!659 (_1!3315 (_1!3316 (h!10368 mapValue!2345)))) lambda!15323))))

(declare-fun bs!66768 () Bool)

(assert (= bs!66768 d!187863))

(declare-fun m!774109 () Bool)

(assert (=> bs!66768 m!774109))

(assert (=> b!527670 d!187863))

(assert (=> d!187647 d!187833))

(declare-fun b!528096 () Bool)

(declare-fun e!317575 () Bool)

(declare-fun e!317572 () Bool)

(assert (=> b!528096 (= e!317575 e!317572)))

(declare-fun res!223230 () Bool)

(declare-fun lt!218264 () tuple2!6132)

(assert (=> b!528096 (= res!223230 (< (size!4055 (_2!3321 lt!218264)) (size!4055 (_2!3324 (v!16038 lt!217984)))))))

(assert (=> b!528096 (=> (not res!223230) (not e!317572))))

(declare-fun d!187865 () Bool)

(declare-fun e!317574 () Bool)

(assert (=> d!187865 e!317574))

(declare-fun res!223232 () Bool)

(assert (=> d!187865 (=> (not res!223232) (not e!317574))))

(assert (=> d!187865 (= res!223232 e!317575)))

(declare-fun c!101174 () Bool)

(assert (=> d!187865 (= c!101174 (> (size!4054 (_1!3321 lt!218264)) 0))))

(declare-fun e!317573 () tuple2!6132)

(assert (=> d!187865 (= lt!218264 e!317573)))

(declare-fun c!101175 () Bool)

(declare-fun lt!218266 () Option!1248)

(assert (=> d!187865 (= c!101175 ((_ is Some!1247) lt!218266))))

(assert (=> d!187865 (= lt!218266 (maxPrefixZipperSequence!446 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!217984))))))

(assert (=> d!187865 (= (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!217984))) lt!218264)))

(declare-fun b!528097 () Bool)

(assert (=> b!528097 (= e!317573 (tuple2!6133 (BalanceConc!3229 Empty!1610) (_2!3324 (v!16038 lt!217984))))))

(declare-fun b!528098 () Bool)

(assert (=> b!528098 (= e!317575 (= (list!2068 (_2!3321 lt!218264)) (list!2068 (_2!3324 (v!16038 lt!217984)))))))

(declare-fun b!528099 () Bool)

(declare-fun res!223231 () Bool)

(assert (=> b!528099 (=> (not res!223231) (not e!317574))))

(assert (=> b!528099 (= res!223231 (= (list!2069 (_1!3321 lt!218264)) (_1!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 (_2!3324 (v!16038 lt!217984)))))))))

(declare-fun b!528100 () Bool)

(assert (=> b!528100 (= e!317572 (not (isEmpty!3610 (_1!3321 lt!218264))))))

(declare-fun b!528101 () Bool)

(assert (=> b!528101 (= e!317574 (= (list!2068 (_2!3321 lt!218264)) (_2!3323 (lexList!305 thiss!12147 rules!1345 (list!2068 (_2!3324 (v!16038 lt!217984)))))))))

(declare-fun b!528102 () Bool)

(declare-fun lt!218265 () tuple2!6132)

(assert (=> b!528102 (= e!317573 (tuple2!6133 (prepend!242 (_1!3321 lt!218265) (_1!3324 (v!16038 lt!218266))) (_2!3321 lt!218265)))))

(assert (=> b!528102 (= lt!218265 (lexRec!143 thiss!12147 rules!1345 (_2!3324 (v!16038 lt!218266))))))

(assert (= (and d!187865 c!101175) b!528102))

(assert (= (and d!187865 (not c!101175)) b!528097))

(assert (= (and d!187865 c!101174) b!528096))

(assert (= (and d!187865 (not c!101174)) b!528098))

(assert (= (and b!528096 res!223230) b!528100))

(assert (= (and d!187865 res!223232) b!528099))

(assert (= (and b!528099 res!223231) b!528101))

(declare-fun m!774111 () Bool)

(assert (=> b!528096 m!774111))

(declare-fun m!774113 () Bool)

(assert (=> b!528096 m!774113))

(declare-fun m!774115 () Bool)

(assert (=> b!528102 m!774115))

(declare-fun m!774117 () Bool)

(assert (=> b!528102 m!774117))

(declare-fun m!774119 () Bool)

(assert (=> b!528099 m!774119))

(declare-fun m!774121 () Bool)

(assert (=> b!528099 m!774121))

(assert (=> b!528099 m!774121))

(declare-fun m!774123 () Bool)

(assert (=> b!528099 m!774123))

(declare-fun m!774125 () Bool)

(assert (=> d!187865 m!774125))

(declare-fun m!774127 () Bool)

(assert (=> d!187865 m!774127))

(declare-fun m!774129 () Bool)

(assert (=> b!528098 m!774129))

(assert (=> b!528098 m!774121))

(declare-fun m!774131 () Bool)

(assert (=> b!528100 m!774131))

(assert (=> b!528101 m!774129))

(assert (=> b!528101 m!774121))

(assert (=> b!528101 m!774121))

(assert (=> b!528101 m!774123))

(assert (=> b!527636 d!187865))

(declare-fun d!187867 () Bool)

(declare-fun e!317576 () Bool)

(assert (=> d!187867 e!317576))

(declare-fun res!223233 () Bool)

(assert (=> d!187867 (=> (not res!223233) (not e!317576))))

(assert (=> d!187867 (= res!223233 (isBalanced!498 (prepend!243 (c!101091 (_1!3321 lt!217970)) (_1!3324 (v!16038 lt!217984)))))))

(declare-fun lt!218267 () BalanceConc!3228)

(assert (=> d!187867 (= lt!218267 (BalanceConc!3229 (prepend!243 (c!101091 (_1!3321 lt!217970)) (_1!3324 (v!16038 lt!217984)))))))

(assert (=> d!187867 (= (prepend!242 (_1!3321 lt!217970) (_1!3324 (v!16038 lt!217984))) lt!218267)))

(declare-fun b!528103 () Bool)

(assert (=> b!528103 (= e!317576 (= (list!2069 lt!218267) (Cons!4972 (_1!3324 (v!16038 lt!217984)) (list!2069 (_1!3321 lt!217970)))))))

(assert (= (and d!187867 res!223233) b!528103))

(declare-fun m!774133 () Bool)

(assert (=> d!187867 m!774133))

(assert (=> d!187867 m!774133))

(declare-fun m!774135 () Bool)

(assert (=> d!187867 m!774135))

(declare-fun m!774137 () Bool)

(assert (=> b!528103 m!774137))

(declare-fun m!774139 () Bool)

(assert (=> b!528103 m!774139))

(assert (=> b!527636 d!187867))

(declare-fun b!528105 () Bool)

(declare-fun e!317577 () List!4982)

(declare-fun e!317578 () List!4982)

(assert (=> b!528105 (= e!317577 e!317578)))

(declare-fun c!101177 () Bool)

(assert (=> b!528105 (= c!101177 ((_ is Leaf!2561) (c!101091 (_1!3321 lt!217879))))))

(declare-fun b!528106 () Bool)

(assert (=> b!528106 (= e!317578 (list!2072 (xs!4247 (c!101091 (_1!3321 lt!217879)))))))

(declare-fun d!187869 () Bool)

(declare-fun c!101176 () Bool)

(assert (=> d!187869 (= c!101176 ((_ is Empty!1610) (c!101091 (_1!3321 lt!217879))))))

(assert (=> d!187869 (= (list!2071 (c!101091 (_1!3321 lt!217879))) e!317577)))

(declare-fun b!528104 () Bool)

(assert (=> b!528104 (= e!317577 Nil!4972)))

(declare-fun b!528107 () Bool)

(assert (=> b!528107 (= e!317578 (++!1379 (list!2071 (left!4224 (c!101091 (_1!3321 lt!217879)))) (list!2071 (right!4554 (c!101091 (_1!3321 lt!217879))))))))

(assert (= (and d!187869 c!101176) b!528104))

(assert (= (and d!187869 (not c!101176)) b!528105))

(assert (= (and b!528105 c!101177) b!528106))

(assert (= (and b!528105 (not c!101177)) b!528107))

(declare-fun m!774141 () Bool)

(assert (=> b!528106 m!774141))

(declare-fun m!774143 () Bool)

(assert (=> b!528107 m!774143))

(declare-fun m!774145 () Bool)

(assert (=> b!528107 m!774145))

(assert (=> b!528107 m!774143))

(assert (=> b!528107 m!774145))

(declare-fun m!774147 () Bool)

(assert (=> b!528107 m!774147))

(assert (=> d!187697 d!187869))

(declare-fun d!187871 () Bool)

(assert (=> d!187871 true))

(declare-fun order!4387 () Int)

(declare-fun order!4389 () Int)

(declare-fun lambda!15326 () Int)

(declare-fun dynLambda!3038 (Int Int) Int)

(declare-fun dynLambda!3039 (Int Int) Int)

(assert (=> d!187871 (< (dynLambda!3038 order!4387 (toChars!1589 (transformation!893 (h!10374 rules!1345)))) (dynLambda!3039 order!4389 lambda!15326))))

(assert (=> d!187871 true))

(declare-fun order!4391 () Int)

(declare-fun dynLambda!3040 (Int Int) Int)

(assert (=> d!187871 (< (dynLambda!3040 order!4391 (toValue!1730 (transformation!893 (h!10374 rules!1345)))) (dynLambda!3039 order!4389 lambda!15326))))

(declare-fun Forall!272 (Int) Bool)

(assert (=> d!187871 (= (semiInverseModEq!357 (toChars!1589 (transformation!893 (h!10374 rules!1345))) (toValue!1730 (transformation!893 (h!10374 rules!1345)))) (Forall!272 lambda!15326))))

(declare-fun bs!66769 () Bool)

(assert (= bs!66769 d!187871))

(declare-fun m!774149 () Bool)

(assert (=> bs!66769 m!774149))

(assert (=> d!187665 d!187871))

(declare-fun d!187873 () Bool)

(assert (=> d!187873 (= (valid!578 (_3!255 lt!217967)) (validCacheMapDown!35 (cache!955 (_3!255 lt!217967))))))

(declare-fun bs!66770 () Bool)

(assert (= bs!66770 d!187873))

(declare-fun m!774151 () Bool)

(assert (=> bs!66770 m!774151))

(assert (=> b!527632 d!187873))

(declare-fun bs!66771 () Bool)

(declare-fun d!187875 () Bool)

(assert (= bs!66771 (and d!187875 d!187855)))

(declare-fun lambda!15327 () Int)

(assert (=> bs!66771 (= lambda!15327 lambda!15320)))

(declare-fun bs!66772 () Bool)

(assert (= bs!66772 (and d!187875 d!187843)))

(assert (=> bs!66772 (= lambda!15327 lambda!15319)))

(declare-fun bs!66773 () Bool)

(assert (= bs!66773 (and d!187875 d!187799)))

(assert (=> bs!66773 (= lambda!15327 lambda!15308)))

(declare-fun bs!66774 () Bool)

(assert (= bs!66774 (and d!187875 d!187711)))

(assert (=> bs!66774 (= lambda!15327 lambda!15294)))

(declare-fun bs!66775 () Bool)

(assert (= bs!66775 (and d!187875 d!187713)))

(assert (=> bs!66775 (= lambda!15327 lambda!15295)))

(declare-fun bs!66776 () Bool)

(assert (= bs!66776 (and d!187875 d!187803)))

(assert (=> bs!66776 (= lambda!15327 lambda!15309)))

(declare-fun bs!66777 () Bool)

(assert (= bs!66777 (and d!187875 d!187837)))

(assert (=> bs!66777 (= lambda!15327 lambda!15317)))

(declare-fun bs!66778 () Bool)

(assert (= bs!66778 (and d!187875 d!187861)))

(assert (=> bs!66778 (= lambda!15327 lambda!15322)))

(declare-fun bs!66779 () Bool)

(assert (= bs!66779 (and d!187875 d!187797)))

(assert (=> bs!66779 (= lambda!15327 lambda!15307)))

(declare-fun bs!66780 () Bool)

(assert (= bs!66780 (and d!187875 d!187719)))

(assert (=> bs!66780 (= lambda!15327 lambda!15297)))

(declare-fun bs!66781 () Bool)

(assert (= bs!66781 (and d!187875 d!187805)))

(assert (=> bs!66781 (= lambda!15327 lambda!15310)))

(declare-fun bs!66782 () Bool)

(assert (= bs!66782 (and d!187875 d!187857)))

(assert (=> bs!66782 (= lambda!15327 lambda!15321)))

(declare-fun bs!66783 () Bool)

(assert (= bs!66783 (and d!187875 d!187707)))

(assert (=> bs!66783 (= lambda!15327 lambda!15293)))

(declare-fun bs!66784 () Bool)

(assert (= bs!66784 (and d!187875 d!187825)))

(assert (=> bs!66784 (= lambda!15327 lambda!15311)))

(declare-fun bs!66785 () Bool)

(assert (= bs!66785 (and d!187875 d!187831)))

(assert (=> bs!66785 (= lambda!15327 lambda!15312)))

(declare-fun bs!66786 () Bool)

(assert (= bs!66786 (and d!187875 d!187841)))

(assert (=> bs!66786 (= lambda!15327 lambda!15318)))

(declare-fun bs!66787 () Bool)

(assert (= bs!66787 (and d!187875 d!187705)))

(assert (=> bs!66787 (= lambda!15327 lambda!15292)))

(declare-fun bs!66788 () Bool)

(assert (= bs!66788 (and d!187875 d!187863)))

(assert (=> bs!66788 (= lambda!15327 lambda!15323)))

(declare-fun bs!66789 () Bool)

(assert (= bs!66789 (and d!187875 d!187715)))

(assert (=> bs!66789 (= lambda!15327 lambda!15296)))

(assert (=> d!187875 (= (inv!6235 setElem!2591) (forall!1495 (exprs!659 setElem!2591) lambda!15327))))

(declare-fun bs!66790 () Bool)

(assert (= bs!66790 d!187875))

(declare-fun m!774153 () Bool)

(assert (=> bs!66790 m!774153))

(assert (=> setNonEmpty!2591 d!187875))

(declare-fun d!187877 () Bool)

(declare-fun c!101178 () Bool)

(assert (=> d!187877 (= c!101178 ((_ is Node!1609) (left!4223 (c!101090 input!747))))))

(declare-fun e!317579 () Bool)

(assert (=> d!187877 (= (inv!6228 (left!4223 (c!101090 input!747))) e!317579)))

(declare-fun b!528112 () Bool)

(assert (=> b!528112 (= e!317579 (inv!6232 (left!4223 (c!101090 input!747))))))

(declare-fun b!528113 () Bool)

(declare-fun e!317580 () Bool)

(assert (=> b!528113 (= e!317579 e!317580)))

(declare-fun res!223234 () Bool)

(assert (=> b!528113 (= res!223234 (not ((_ is Leaf!2560) (left!4223 (c!101090 input!747)))))))

(assert (=> b!528113 (=> res!223234 e!317580)))

(declare-fun b!528114 () Bool)

(assert (=> b!528114 (= e!317580 (inv!6233 (left!4223 (c!101090 input!747))))))

(assert (= (and d!187877 c!101178) b!528112))

(assert (= (and d!187877 (not c!101178)) b!528113))

(assert (= (and b!528113 (not res!223234)) b!528114))

(declare-fun m!774155 () Bool)

(assert (=> b!528112 m!774155))

(declare-fun m!774157 () Bool)

(assert (=> b!528114 m!774157))

(assert (=> b!527652 d!187877))

(declare-fun d!187879 () Bool)

(declare-fun c!101179 () Bool)

(assert (=> d!187879 (= c!101179 ((_ is Node!1609) (right!4553 (c!101090 input!747))))))

(declare-fun e!317581 () Bool)

(assert (=> d!187879 (= (inv!6228 (right!4553 (c!101090 input!747))) e!317581)))

(declare-fun b!528115 () Bool)

(assert (=> b!528115 (= e!317581 (inv!6232 (right!4553 (c!101090 input!747))))))

(declare-fun b!528116 () Bool)

(declare-fun e!317582 () Bool)

(assert (=> b!528116 (= e!317581 e!317582)))

(declare-fun res!223235 () Bool)

(assert (=> b!528116 (= res!223235 (not ((_ is Leaf!2560) (right!4553 (c!101090 input!747)))))))

(assert (=> b!528116 (=> res!223235 e!317582)))

(declare-fun b!528117 () Bool)

(assert (=> b!528117 (= e!317582 (inv!6233 (right!4553 (c!101090 input!747))))))

(assert (= (and d!187879 c!101179) b!528115))

(assert (= (and d!187879 (not c!101179)) b!528116))

(assert (= (and b!528116 (not res!223235)) b!528117))

(declare-fun m!774159 () Bool)

(assert (=> b!528115 m!774159))

(declare-fun m!774161 () Bool)

(assert (=> b!528117 m!774161))

(assert (=> b!527652 d!187879))

(declare-fun d!187881 () Bool)

(assert (=> d!187881 (= (inv!6224 (tag!1155 (h!10374 (t!73595 rules!1345)))) (= (mod (str.len (value!30307 (tag!1155 (h!10374 (t!73595 rules!1345))))) 2) 0))))

(assert (=> b!527782 d!187881))

(declare-fun d!187883 () Bool)

(declare-fun res!223236 () Bool)

(declare-fun e!317583 () Bool)

(assert (=> d!187883 (=> (not res!223236) (not e!317583))))

(assert (=> d!187883 (= res!223236 (semiInverseModEq!357 (toChars!1589 (transformation!893 (h!10374 (t!73595 rules!1345)))) (toValue!1730 (transformation!893 (h!10374 (t!73595 rules!1345))))))))

(assert (=> d!187883 (= (inv!6227 (transformation!893 (h!10374 (t!73595 rules!1345)))) e!317583)))

(declare-fun b!528118 () Bool)

(assert (=> b!528118 (= e!317583 (equivClasses!340 (toChars!1589 (transformation!893 (h!10374 (t!73595 rules!1345)))) (toValue!1730 (transformation!893 (h!10374 (t!73595 rules!1345))))))))

(assert (= (and d!187883 res!223236) b!528118))

(declare-fun m!774163 () Bool)

(assert (=> d!187883 m!774163))

(declare-fun m!774165 () Bool)

(assert (=> b!528118 m!774165))

(assert (=> b!527782 d!187883))

(declare-fun d!187885 () Bool)

(declare-fun res!223237 () Bool)

(declare-fun e!317584 () Bool)

(assert (=> d!187885 (=> (not res!223237) (not e!317584))))

(assert (=> d!187885 (= res!223237 (= (csize!3448 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) (+ (size!4057 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) (size!4057 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))))

(assert (=> d!187885 (= (inv!6232 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) e!317584)))

(declare-fun b!528119 () Bool)

(declare-fun res!223238 () Bool)

(assert (=> b!528119 (=> (not res!223238) (not e!317584))))

(assert (=> b!528119 (= res!223238 (and (not (= (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) Empty!1609)) (not (= (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) Empty!1609))))))

(declare-fun b!528120 () Bool)

(declare-fun res!223239 () Bool)

(assert (=> b!528120 (=> (not res!223239) (not e!317584))))

(assert (=> b!528120 (= res!223239 (= (cheight!1820 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) (+ (max!0 (height!252 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) (height!252 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) 1)))))

(declare-fun b!528121 () Bool)

(assert (=> b!528121 (= e!317584 (<= 0 (cheight!1820 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(assert (= (and d!187885 res!223237) b!528119))

(assert (= (and b!528119 res!223238) b!528120))

(assert (= (and b!528120 res!223239) b!528121))

(declare-fun m!774167 () Bool)

(assert (=> d!187885 m!774167))

(declare-fun m!774169 () Bool)

(assert (=> d!187885 m!774169))

(declare-fun m!774171 () Bool)

(assert (=> b!528120 m!774171))

(declare-fun m!774173 () Bool)

(assert (=> b!528120 m!774173))

(assert (=> b!528120 m!774171))

(assert (=> b!528120 m!774173))

(declare-fun m!774175 () Bool)

(assert (=> b!528120 m!774175))

(assert (=> b!527581 d!187885))

(declare-fun d!187887 () Bool)

(declare-fun c!101184 () Bool)

(assert (=> d!187887 (= c!101184 ((_ is Empty!1609) (c!101090 (_2!3321 (_1!3322 lt!217877)))))))

(declare-fun e!317589 () List!4979)

(assert (=> d!187887 (= (list!2070 (c!101090 (_2!3321 (_1!3322 lt!217877)))) e!317589)))

(declare-fun b!528132 () Bool)

(declare-fun e!317590 () List!4979)

(assert (=> b!528132 (= e!317590 (list!2073 (xs!4246 (c!101090 (_2!3321 (_1!3322 lt!217877))))))))

(declare-fun b!528133 () Bool)

(assert (=> b!528133 (= e!317590 (++!1378 (list!2070 (left!4223 (c!101090 (_2!3321 (_1!3322 lt!217877))))) (list!2070 (right!4553 (c!101090 (_2!3321 (_1!3322 lt!217877)))))))))

(declare-fun b!528131 () Bool)

(assert (=> b!528131 (= e!317589 e!317590)))

(declare-fun c!101185 () Bool)

(assert (=> b!528131 (= c!101185 ((_ is Leaf!2560) (c!101090 (_2!3321 (_1!3322 lt!217877)))))))

(declare-fun b!528130 () Bool)

(assert (=> b!528130 (= e!317589 Nil!4969)))

(assert (= (and d!187887 c!101184) b!528130))

(assert (= (and d!187887 (not c!101184)) b!528131))

(assert (= (and b!528131 c!101185) b!528132))

(assert (= (and b!528131 (not c!101185)) b!528133))

(declare-fun m!774177 () Bool)

(assert (=> b!528132 m!774177))

(declare-fun m!774179 () Bool)

(assert (=> b!528133 m!774179))

(declare-fun m!774181 () Bool)

(assert (=> b!528133 m!774181))

(assert (=> b!528133 m!774179))

(assert (=> b!528133 m!774181))

(declare-fun m!774183 () Bool)

(assert (=> b!528133 m!774183))

(assert (=> d!187677 d!187887))

(declare-fun d!187889 () Bool)

(assert (=> d!187889 (= (valid!576 (_2!3322 lt!217967)) (validCacheMapUp!38 (cache!953 (_2!3322 lt!217967))))))

(declare-fun bs!66791 () Bool)

(assert (= bs!66791 d!187889))

(declare-fun m!774185 () Bool)

(assert (=> bs!66791 m!774185))

(assert (=> b!527630 d!187889))

(declare-fun bs!66792 () Bool)

(declare-fun d!187891 () Bool)

(assert (= bs!66792 (and d!187891 d!187855)))

(declare-fun lambda!15328 () Int)

(assert (=> bs!66792 (= lambda!15328 lambda!15320)))

(declare-fun bs!66793 () Bool)

(assert (= bs!66793 (and d!187891 d!187843)))

(assert (=> bs!66793 (= lambda!15328 lambda!15319)))

(declare-fun bs!66794 () Bool)

(assert (= bs!66794 (and d!187891 d!187799)))

(assert (=> bs!66794 (= lambda!15328 lambda!15308)))

(declare-fun bs!66795 () Bool)

(assert (= bs!66795 (and d!187891 d!187711)))

(assert (=> bs!66795 (= lambda!15328 lambda!15294)))

(declare-fun bs!66796 () Bool)

(assert (= bs!66796 (and d!187891 d!187713)))

(assert (=> bs!66796 (= lambda!15328 lambda!15295)))

(declare-fun bs!66797 () Bool)

(assert (= bs!66797 (and d!187891 d!187803)))

(assert (=> bs!66797 (= lambda!15328 lambda!15309)))

(declare-fun bs!66798 () Bool)

(assert (= bs!66798 (and d!187891 d!187837)))

(assert (=> bs!66798 (= lambda!15328 lambda!15317)))

(declare-fun bs!66799 () Bool)

(assert (= bs!66799 (and d!187891 d!187797)))

(assert (=> bs!66799 (= lambda!15328 lambda!15307)))

(declare-fun bs!66800 () Bool)

(assert (= bs!66800 (and d!187891 d!187719)))

(assert (=> bs!66800 (= lambda!15328 lambda!15297)))

(declare-fun bs!66801 () Bool)

(assert (= bs!66801 (and d!187891 d!187805)))

(assert (=> bs!66801 (= lambda!15328 lambda!15310)))

(declare-fun bs!66802 () Bool)

(assert (= bs!66802 (and d!187891 d!187857)))

(assert (=> bs!66802 (= lambda!15328 lambda!15321)))

(declare-fun bs!66803 () Bool)

(assert (= bs!66803 (and d!187891 d!187707)))

(assert (=> bs!66803 (= lambda!15328 lambda!15293)))

(declare-fun bs!66804 () Bool)

(assert (= bs!66804 (and d!187891 d!187825)))

(assert (=> bs!66804 (= lambda!15328 lambda!15311)))

(declare-fun bs!66805 () Bool)

(assert (= bs!66805 (and d!187891 d!187831)))

(assert (=> bs!66805 (= lambda!15328 lambda!15312)))

(declare-fun bs!66806 () Bool)

(assert (= bs!66806 (and d!187891 d!187841)))

(assert (=> bs!66806 (= lambda!15328 lambda!15318)))

(declare-fun bs!66807 () Bool)

(assert (= bs!66807 (and d!187891 d!187705)))

(assert (=> bs!66807 (= lambda!15328 lambda!15292)))

(declare-fun bs!66808 () Bool)

(assert (= bs!66808 (and d!187891 d!187863)))

(assert (=> bs!66808 (= lambda!15328 lambda!15323)))

(declare-fun bs!66809 () Bool)

(assert (= bs!66809 (and d!187891 d!187715)))

(assert (=> bs!66809 (= lambda!15328 lambda!15296)))

(declare-fun bs!66810 () Bool)

(assert (= bs!66810 (and d!187891 d!187861)))

(assert (=> bs!66810 (= lambda!15328 lambda!15322)))

(declare-fun bs!66811 () Bool)

(assert (= bs!66811 (and d!187891 d!187875)))

(assert (=> bs!66811 (= lambda!15328 lambda!15327)))

(assert (=> d!187891 (= (inv!6235 (_2!3319 (_1!3320 (h!10371 mapValue!2341)))) (forall!1495 (exprs!659 (_2!3319 (_1!3320 (h!10371 mapValue!2341)))) lambda!15328))))

(declare-fun bs!66812 () Bool)

(assert (= bs!66812 d!187891))

(declare-fun m!774187 () Bool)

(assert (=> bs!66812 m!774187))

(assert (=> b!527723 d!187891))

(declare-fun bs!66813 () Bool)

(declare-fun b!528135 () Bool)

(assert (= bs!66813 (and b!528135 b!528054)))

(declare-fun lambda!15329 () Int)

(assert (=> bs!66813 (= lambda!15329 lambda!15315)))

(declare-fun d!187893 () Bool)

(declare-fun res!223240 () Bool)

(declare-fun e!317591 () Bool)

(assert (=> d!187893 (=> (not res!223240) (not e!317591))))

(assert (=> d!187893 (= res!223240 (valid!581 (cache!953 (_2!3322 lt!217877))))))

(assert (=> d!187893 (= (validCacheMapUp!38 (cache!953 (_2!3322 lt!217877))) e!317591)))

(declare-fun b!528134 () Bool)

(declare-fun res!223241 () Bool)

(assert (=> b!528134 (=> (not res!223241) (not e!317591))))

(assert (=> b!528134 (= res!223241 (invariantList!106 (toList!467 (map!1142 (cache!953 (_2!3322 lt!217877))))))))

(assert (=> b!528135 (= e!317591 (forall!1499 (toList!467 (map!1142 (cache!953 (_2!3322 lt!217877)))) lambda!15329))))

(assert (= (and d!187893 res!223240) b!528134))

(assert (= (and b!528134 res!223241) b!528135))

(declare-fun m!774189 () Bool)

(assert (=> d!187893 m!774189))

(declare-fun m!774191 () Bool)

(assert (=> b!528134 m!774191))

(declare-fun m!774193 () Bool)

(assert (=> b!528134 m!774193))

(assert (=> b!528135 m!774191))

(declare-fun m!774195 () Bool)

(assert (=> b!528135 m!774195))

(assert (=> d!187675 d!187893))

(declare-fun bs!66814 () Bool)

(declare-fun d!187895 () Bool)

(assert (= bs!66814 (and d!187895 d!187855)))

(declare-fun lambda!15330 () Int)

(assert (=> bs!66814 (= lambda!15330 lambda!15320)))

(declare-fun bs!66815 () Bool)

(assert (= bs!66815 (and d!187895 d!187891)))

(assert (=> bs!66815 (= lambda!15330 lambda!15328)))

(declare-fun bs!66816 () Bool)

(assert (= bs!66816 (and d!187895 d!187843)))

(assert (=> bs!66816 (= lambda!15330 lambda!15319)))

(declare-fun bs!66817 () Bool)

(assert (= bs!66817 (and d!187895 d!187799)))

(assert (=> bs!66817 (= lambda!15330 lambda!15308)))

(declare-fun bs!66818 () Bool)

(assert (= bs!66818 (and d!187895 d!187711)))

(assert (=> bs!66818 (= lambda!15330 lambda!15294)))

(declare-fun bs!66819 () Bool)

(assert (= bs!66819 (and d!187895 d!187713)))

(assert (=> bs!66819 (= lambda!15330 lambda!15295)))

(declare-fun bs!66820 () Bool)

(assert (= bs!66820 (and d!187895 d!187803)))

(assert (=> bs!66820 (= lambda!15330 lambda!15309)))

(declare-fun bs!66821 () Bool)

(assert (= bs!66821 (and d!187895 d!187837)))

(assert (=> bs!66821 (= lambda!15330 lambda!15317)))

(declare-fun bs!66822 () Bool)

(assert (= bs!66822 (and d!187895 d!187797)))

(assert (=> bs!66822 (= lambda!15330 lambda!15307)))

(declare-fun bs!66823 () Bool)

(assert (= bs!66823 (and d!187895 d!187719)))

(assert (=> bs!66823 (= lambda!15330 lambda!15297)))

(declare-fun bs!66824 () Bool)

(assert (= bs!66824 (and d!187895 d!187805)))

(assert (=> bs!66824 (= lambda!15330 lambda!15310)))

(declare-fun bs!66825 () Bool)

(assert (= bs!66825 (and d!187895 d!187857)))

(assert (=> bs!66825 (= lambda!15330 lambda!15321)))

(declare-fun bs!66826 () Bool)

(assert (= bs!66826 (and d!187895 d!187707)))

(assert (=> bs!66826 (= lambda!15330 lambda!15293)))

(declare-fun bs!66827 () Bool)

(assert (= bs!66827 (and d!187895 d!187825)))

(assert (=> bs!66827 (= lambda!15330 lambda!15311)))

(declare-fun bs!66828 () Bool)

(assert (= bs!66828 (and d!187895 d!187831)))

(assert (=> bs!66828 (= lambda!15330 lambda!15312)))

(declare-fun bs!66829 () Bool)

(assert (= bs!66829 (and d!187895 d!187841)))

(assert (=> bs!66829 (= lambda!15330 lambda!15318)))

(declare-fun bs!66830 () Bool)

(assert (= bs!66830 (and d!187895 d!187705)))

(assert (=> bs!66830 (= lambda!15330 lambda!15292)))

(declare-fun bs!66831 () Bool)

(assert (= bs!66831 (and d!187895 d!187863)))

(assert (=> bs!66831 (= lambda!15330 lambda!15323)))

(declare-fun bs!66832 () Bool)

(assert (= bs!66832 (and d!187895 d!187715)))

(assert (=> bs!66832 (= lambda!15330 lambda!15296)))

(declare-fun bs!66833 () Bool)

(assert (= bs!66833 (and d!187895 d!187861)))

(assert (=> bs!66833 (= lambda!15330 lambda!15322)))

(declare-fun bs!66834 () Bool)

(assert (= bs!66834 (and d!187895 d!187875)))

(assert (=> bs!66834 (= lambda!15330 lambda!15327)))

(assert (=> d!187895 (= (inv!6235 setElem!2596) (forall!1495 (exprs!659 setElem!2596) lambda!15330))))

(declare-fun bs!66835 () Bool)

(assert (= bs!66835 d!187895))

(declare-fun m!774197 () Bool)

(assert (=> bs!66835 m!774197))

(assert (=> setNonEmpty!2596 d!187895))

(declare-fun bs!66836 () Bool)

(declare-fun d!187897 () Bool)

(assert (= bs!66836 (and d!187897 d!187855)))

(declare-fun lambda!15331 () Int)

(assert (=> bs!66836 (= lambda!15331 lambda!15320)))

(declare-fun bs!66837 () Bool)

(assert (= bs!66837 (and d!187897 d!187895)))

(assert (=> bs!66837 (= lambda!15331 lambda!15330)))

(declare-fun bs!66838 () Bool)

(assert (= bs!66838 (and d!187897 d!187891)))

(assert (=> bs!66838 (= lambda!15331 lambda!15328)))

(declare-fun bs!66839 () Bool)

(assert (= bs!66839 (and d!187897 d!187843)))

(assert (=> bs!66839 (= lambda!15331 lambda!15319)))

(declare-fun bs!66840 () Bool)

(assert (= bs!66840 (and d!187897 d!187799)))

(assert (=> bs!66840 (= lambda!15331 lambda!15308)))

(declare-fun bs!66841 () Bool)

(assert (= bs!66841 (and d!187897 d!187711)))

(assert (=> bs!66841 (= lambda!15331 lambda!15294)))

(declare-fun bs!66842 () Bool)

(assert (= bs!66842 (and d!187897 d!187713)))

(assert (=> bs!66842 (= lambda!15331 lambda!15295)))

(declare-fun bs!66843 () Bool)

(assert (= bs!66843 (and d!187897 d!187803)))

(assert (=> bs!66843 (= lambda!15331 lambda!15309)))

(declare-fun bs!66844 () Bool)

(assert (= bs!66844 (and d!187897 d!187837)))

(assert (=> bs!66844 (= lambda!15331 lambda!15317)))

(declare-fun bs!66845 () Bool)

(assert (= bs!66845 (and d!187897 d!187797)))

(assert (=> bs!66845 (= lambda!15331 lambda!15307)))

(declare-fun bs!66846 () Bool)

(assert (= bs!66846 (and d!187897 d!187719)))

(assert (=> bs!66846 (= lambda!15331 lambda!15297)))

(declare-fun bs!66847 () Bool)

(assert (= bs!66847 (and d!187897 d!187805)))

(assert (=> bs!66847 (= lambda!15331 lambda!15310)))

(declare-fun bs!66848 () Bool)

(assert (= bs!66848 (and d!187897 d!187857)))

(assert (=> bs!66848 (= lambda!15331 lambda!15321)))

(declare-fun bs!66849 () Bool)

(assert (= bs!66849 (and d!187897 d!187707)))

(assert (=> bs!66849 (= lambda!15331 lambda!15293)))

(declare-fun bs!66850 () Bool)

(assert (= bs!66850 (and d!187897 d!187825)))

(assert (=> bs!66850 (= lambda!15331 lambda!15311)))

(declare-fun bs!66851 () Bool)

(assert (= bs!66851 (and d!187897 d!187831)))

(assert (=> bs!66851 (= lambda!15331 lambda!15312)))

(declare-fun bs!66852 () Bool)

(assert (= bs!66852 (and d!187897 d!187841)))

(assert (=> bs!66852 (= lambda!15331 lambda!15318)))

(declare-fun bs!66853 () Bool)

(assert (= bs!66853 (and d!187897 d!187705)))

(assert (=> bs!66853 (= lambda!15331 lambda!15292)))

(declare-fun bs!66854 () Bool)

(assert (= bs!66854 (and d!187897 d!187863)))

(assert (=> bs!66854 (= lambda!15331 lambda!15323)))

(declare-fun bs!66855 () Bool)

(assert (= bs!66855 (and d!187897 d!187715)))

(assert (=> bs!66855 (= lambda!15331 lambda!15296)))

(declare-fun bs!66856 () Bool)

(assert (= bs!66856 (and d!187897 d!187861)))

(assert (=> bs!66856 (= lambda!15331 lambda!15322)))

(declare-fun bs!66857 () Bool)

(assert (= bs!66857 (and d!187897 d!187875)))

(assert (=> bs!66857 (= lambda!15331 lambda!15327)))

(assert (=> d!187897 (= (inv!6235 (_2!3319 (_1!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))))) (forall!1495 (exprs!659 (_2!3319 (_1!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))))) lambda!15331))))

(declare-fun bs!66858 () Bool)

(assert (= bs!66858 d!187897))

(declare-fun m!774199 () Bool)

(assert (=> bs!66858 m!774199))

(assert (=> b!527743 d!187897))

(declare-fun bs!66859 () Bool)

(declare-fun d!187899 () Bool)

(assert (= bs!66859 (and d!187899 d!187855)))

(declare-fun lambda!15332 () Int)

(assert (=> bs!66859 (= lambda!15332 lambda!15320)))

(declare-fun bs!66860 () Bool)

(assert (= bs!66860 (and d!187899 d!187895)))

(assert (=> bs!66860 (= lambda!15332 lambda!15330)))

(declare-fun bs!66861 () Bool)

(assert (= bs!66861 (and d!187899 d!187891)))

(assert (=> bs!66861 (= lambda!15332 lambda!15328)))

(declare-fun bs!66862 () Bool)

(assert (= bs!66862 (and d!187899 d!187843)))

(assert (=> bs!66862 (= lambda!15332 lambda!15319)))

(declare-fun bs!66863 () Bool)

(assert (= bs!66863 (and d!187899 d!187799)))

(assert (=> bs!66863 (= lambda!15332 lambda!15308)))

(declare-fun bs!66864 () Bool)

(assert (= bs!66864 (and d!187899 d!187711)))

(assert (=> bs!66864 (= lambda!15332 lambda!15294)))

(declare-fun bs!66865 () Bool)

(assert (= bs!66865 (and d!187899 d!187713)))

(assert (=> bs!66865 (= lambda!15332 lambda!15295)))

(declare-fun bs!66866 () Bool)

(assert (= bs!66866 (and d!187899 d!187803)))

(assert (=> bs!66866 (= lambda!15332 lambda!15309)))

(declare-fun bs!66867 () Bool)

(assert (= bs!66867 (and d!187899 d!187837)))

(assert (=> bs!66867 (= lambda!15332 lambda!15317)))

(declare-fun bs!66868 () Bool)

(assert (= bs!66868 (and d!187899 d!187797)))

(assert (=> bs!66868 (= lambda!15332 lambda!15307)))

(declare-fun bs!66869 () Bool)

(assert (= bs!66869 (and d!187899 d!187897)))

(assert (=> bs!66869 (= lambda!15332 lambda!15331)))

(declare-fun bs!66870 () Bool)

(assert (= bs!66870 (and d!187899 d!187719)))

(assert (=> bs!66870 (= lambda!15332 lambda!15297)))

(declare-fun bs!66871 () Bool)

(assert (= bs!66871 (and d!187899 d!187805)))

(assert (=> bs!66871 (= lambda!15332 lambda!15310)))

(declare-fun bs!66872 () Bool)

(assert (= bs!66872 (and d!187899 d!187857)))

(assert (=> bs!66872 (= lambda!15332 lambda!15321)))

(declare-fun bs!66873 () Bool)

(assert (= bs!66873 (and d!187899 d!187707)))

(assert (=> bs!66873 (= lambda!15332 lambda!15293)))

(declare-fun bs!66874 () Bool)

(assert (= bs!66874 (and d!187899 d!187825)))

(assert (=> bs!66874 (= lambda!15332 lambda!15311)))

(declare-fun bs!66875 () Bool)

(assert (= bs!66875 (and d!187899 d!187831)))

(assert (=> bs!66875 (= lambda!15332 lambda!15312)))

(declare-fun bs!66876 () Bool)

(assert (= bs!66876 (and d!187899 d!187841)))

(assert (=> bs!66876 (= lambda!15332 lambda!15318)))

(declare-fun bs!66877 () Bool)

(assert (= bs!66877 (and d!187899 d!187705)))

(assert (=> bs!66877 (= lambda!15332 lambda!15292)))

(declare-fun bs!66878 () Bool)

(assert (= bs!66878 (and d!187899 d!187863)))

(assert (=> bs!66878 (= lambda!15332 lambda!15323)))

(declare-fun bs!66879 () Bool)

(assert (= bs!66879 (and d!187899 d!187715)))

(assert (=> bs!66879 (= lambda!15332 lambda!15296)))

(declare-fun bs!66880 () Bool)

(assert (= bs!66880 (and d!187899 d!187861)))

(assert (=> bs!66880 (= lambda!15332 lambda!15322)))

(declare-fun bs!66881 () Bool)

(assert (= bs!66881 (and d!187899 d!187875)))

(assert (=> bs!66881 (= lambda!15332 lambda!15327)))

(assert (=> d!187899 (= (inv!6235 (_2!3319 (_1!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))))) (forall!1495 (exprs!659 (_2!3319 (_1!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))))) lambda!15332))))

(declare-fun bs!66882 () Bool)

(assert (= bs!66882 d!187899))

(declare-fun m!774201 () Bool)

(assert (=> bs!66882 m!774201))

(assert (=> b!527746 d!187899))

(declare-fun bs!66883 () Bool)

(declare-fun d!187901 () Bool)

(assert (= bs!66883 (and d!187901 d!187855)))

(declare-fun lambda!15333 () Int)

(assert (=> bs!66883 (= lambda!15333 lambda!15320)))

(declare-fun bs!66884 () Bool)

(assert (= bs!66884 (and d!187901 d!187895)))

(assert (=> bs!66884 (= lambda!15333 lambda!15330)))

(declare-fun bs!66885 () Bool)

(assert (= bs!66885 (and d!187901 d!187891)))

(assert (=> bs!66885 (= lambda!15333 lambda!15328)))

(declare-fun bs!66886 () Bool)

(assert (= bs!66886 (and d!187901 d!187843)))

(assert (=> bs!66886 (= lambda!15333 lambda!15319)))

(declare-fun bs!66887 () Bool)

(assert (= bs!66887 (and d!187901 d!187899)))

(assert (=> bs!66887 (= lambda!15333 lambda!15332)))

(declare-fun bs!66888 () Bool)

(assert (= bs!66888 (and d!187901 d!187799)))

(assert (=> bs!66888 (= lambda!15333 lambda!15308)))

(declare-fun bs!66889 () Bool)

(assert (= bs!66889 (and d!187901 d!187711)))

(assert (=> bs!66889 (= lambda!15333 lambda!15294)))

(declare-fun bs!66890 () Bool)

(assert (= bs!66890 (and d!187901 d!187713)))

(assert (=> bs!66890 (= lambda!15333 lambda!15295)))

(declare-fun bs!66891 () Bool)

(assert (= bs!66891 (and d!187901 d!187803)))

(assert (=> bs!66891 (= lambda!15333 lambda!15309)))

(declare-fun bs!66892 () Bool)

(assert (= bs!66892 (and d!187901 d!187837)))

(assert (=> bs!66892 (= lambda!15333 lambda!15317)))

(declare-fun bs!66893 () Bool)

(assert (= bs!66893 (and d!187901 d!187797)))

(assert (=> bs!66893 (= lambda!15333 lambda!15307)))

(declare-fun bs!66894 () Bool)

(assert (= bs!66894 (and d!187901 d!187897)))

(assert (=> bs!66894 (= lambda!15333 lambda!15331)))

(declare-fun bs!66895 () Bool)

(assert (= bs!66895 (and d!187901 d!187719)))

(assert (=> bs!66895 (= lambda!15333 lambda!15297)))

(declare-fun bs!66896 () Bool)

(assert (= bs!66896 (and d!187901 d!187805)))

(assert (=> bs!66896 (= lambda!15333 lambda!15310)))

(declare-fun bs!66897 () Bool)

(assert (= bs!66897 (and d!187901 d!187857)))

(assert (=> bs!66897 (= lambda!15333 lambda!15321)))

(declare-fun bs!66898 () Bool)

(assert (= bs!66898 (and d!187901 d!187707)))

(assert (=> bs!66898 (= lambda!15333 lambda!15293)))

(declare-fun bs!66899 () Bool)

(assert (= bs!66899 (and d!187901 d!187825)))

(assert (=> bs!66899 (= lambda!15333 lambda!15311)))

(declare-fun bs!66900 () Bool)

(assert (= bs!66900 (and d!187901 d!187831)))

(assert (=> bs!66900 (= lambda!15333 lambda!15312)))

(declare-fun bs!66901 () Bool)

(assert (= bs!66901 (and d!187901 d!187841)))

(assert (=> bs!66901 (= lambda!15333 lambda!15318)))

(declare-fun bs!66902 () Bool)

(assert (= bs!66902 (and d!187901 d!187705)))

(assert (=> bs!66902 (= lambda!15333 lambda!15292)))

(declare-fun bs!66903 () Bool)

(assert (= bs!66903 (and d!187901 d!187863)))

(assert (=> bs!66903 (= lambda!15333 lambda!15323)))

(declare-fun bs!66904 () Bool)

(assert (= bs!66904 (and d!187901 d!187715)))

(assert (=> bs!66904 (= lambda!15333 lambda!15296)))

(declare-fun bs!66905 () Bool)

(assert (= bs!66905 (and d!187901 d!187861)))

(assert (=> bs!66905 (= lambda!15333 lambda!15322)))

(declare-fun bs!66906 () Bool)

(assert (= bs!66906 (and d!187901 d!187875)))

(assert (=> bs!66906 (= lambda!15333 lambda!15327)))

(assert (=> d!187901 (= (inv!6235 (_2!3319 (_1!3320 (h!10371 mapDefault!2348)))) (forall!1495 (exprs!659 (_2!3319 (_1!3320 (h!10371 mapDefault!2348)))) lambda!15333))))

(declare-fun bs!66907 () Bool)

(assert (= bs!66907 d!187901))

(declare-fun m!774203 () Bool)

(assert (=> bs!66907 m!774203))

(assert (=> b!527719 d!187901))

(declare-fun d!187903 () Bool)

(declare-fun res!223246 () Bool)

(declare-fun e!317596 () Bool)

(assert (=> d!187903 (=> res!223246 e!317596)))

(assert (=> d!187903 (= res!223246 ((_ is Nil!4973) rules!1345))))

(assert (=> d!187903 (= (noDuplicateTag!322 thiss!12147 rules!1345 Nil!4974) e!317596)))

(declare-fun b!528140 () Bool)

(declare-fun e!317597 () Bool)

(assert (=> b!528140 (= e!317596 e!317597)))

(declare-fun res!223247 () Bool)

(assert (=> b!528140 (=> (not res!223247) (not e!317597))))

(declare-fun contains!1175 (List!4984 String!6317) Bool)

(assert (=> b!528140 (= res!223247 (not (contains!1175 Nil!4974 (tag!1155 (h!10374 rules!1345)))))))

(declare-fun b!528141 () Bool)

(assert (=> b!528141 (= e!317597 (noDuplicateTag!322 thiss!12147 (t!73595 rules!1345) (Cons!4974 (tag!1155 (h!10374 rules!1345)) Nil!4974)))))

(assert (= (and d!187903 (not res!223246)) b!528140))

(assert (= (and b!528140 res!223247) b!528141))

(declare-fun m!774205 () Bool)

(assert (=> b!528140 m!774205))

(declare-fun m!774207 () Bool)

(assert (=> b!528141 m!774207))

(assert (=> b!527643 d!187903))

(declare-fun d!187905 () Bool)

(assert (=> d!187905 true))

(declare-fun lambda!15336 () Int)

(declare-fun order!4393 () Int)

(declare-fun dynLambda!3041 (Int Int) Int)

(assert (=> d!187905 (< (dynLambda!3040 order!4391 (toValue!1730 (transformation!893 (h!10374 rules!1345)))) (dynLambda!3041 order!4393 lambda!15336))))

(declare-fun Forall2!198 (Int) Bool)

(assert (=> d!187905 (= (equivClasses!340 (toChars!1589 (transformation!893 (h!10374 rules!1345))) (toValue!1730 (transformation!893 (h!10374 rules!1345)))) (Forall2!198 lambda!15336))))

(declare-fun bs!66908 () Bool)

(assert (= bs!66908 d!187905))

(declare-fun m!774209 () Bool)

(assert (=> bs!66908 m!774209))

(assert (=> b!527580 d!187905))

(declare-fun bs!66909 () Bool)

(declare-fun d!187907 () Bool)

(assert (= bs!66909 (and d!187907 d!187855)))

(declare-fun lambda!15337 () Int)

(assert (=> bs!66909 (= lambda!15337 lambda!15320)))

(declare-fun bs!66910 () Bool)

(assert (= bs!66910 (and d!187907 d!187895)))

(assert (=> bs!66910 (= lambda!15337 lambda!15330)))

(declare-fun bs!66911 () Bool)

(assert (= bs!66911 (and d!187907 d!187891)))

(assert (=> bs!66911 (= lambda!15337 lambda!15328)))

(declare-fun bs!66912 () Bool)

(assert (= bs!66912 (and d!187907 d!187843)))

(assert (=> bs!66912 (= lambda!15337 lambda!15319)))

(declare-fun bs!66913 () Bool)

(assert (= bs!66913 (and d!187907 d!187899)))

(assert (=> bs!66913 (= lambda!15337 lambda!15332)))

(declare-fun bs!66914 () Bool)

(assert (= bs!66914 (and d!187907 d!187799)))

(assert (=> bs!66914 (= lambda!15337 lambda!15308)))

(declare-fun bs!66915 () Bool)

(assert (= bs!66915 (and d!187907 d!187713)))

(assert (=> bs!66915 (= lambda!15337 lambda!15295)))

(declare-fun bs!66916 () Bool)

(assert (= bs!66916 (and d!187907 d!187803)))

(assert (=> bs!66916 (= lambda!15337 lambda!15309)))

(declare-fun bs!66917 () Bool)

(assert (= bs!66917 (and d!187907 d!187837)))

(assert (=> bs!66917 (= lambda!15337 lambda!15317)))

(declare-fun bs!66918 () Bool)

(assert (= bs!66918 (and d!187907 d!187797)))

(assert (=> bs!66918 (= lambda!15337 lambda!15307)))

(declare-fun bs!66919 () Bool)

(assert (= bs!66919 (and d!187907 d!187897)))

(assert (=> bs!66919 (= lambda!15337 lambda!15331)))

(declare-fun bs!66920 () Bool)

(assert (= bs!66920 (and d!187907 d!187719)))

(assert (=> bs!66920 (= lambda!15337 lambda!15297)))

(declare-fun bs!66921 () Bool)

(assert (= bs!66921 (and d!187907 d!187805)))

(assert (=> bs!66921 (= lambda!15337 lambda!15310)))

(declare-fun bs!66922 () Bool)

(assert (= bs!66922 (and d!187907 d!187857)))

(assert (=> bs!66922 (= lambda!15337 lambda!15321)))

(declare-fun bs!66923 () Bool)

(assert (= bs!66923 (and d!187907 d!187707)))

(assert (=> bs!66923 (= lambda!15337 lambda!15293)))

(declare-fun bs!66924 () Bool)

(assert (= bs!66924 (and d!187907 d!187825)))

(assert (=> bs!66924 (= lambda!15337 lambda!15311)))

(declare-fun bs!66925 () Bool)

(assert (= bs!66925 (and d!187907 d!187831)))

(assert (=> bs!66925 (= lambda!15337 lambda!15312)))

(declare-fun bs!66926 () Bool)

(assert (= bs!66926 (and d!187907 d!187841)))

(assert (=> bs!66926 (= lambda!15337 lambda!15318)))

(declare-fun bs!66927 () Bool)

(assert (= bs!66927 (and d!187907 d!187705)))

(assert (=> bs!66927 (= lambda!15337 lambda!15292)))

(declare-fun bs!66928 () Bool)

(assert (= bs!66928 (and d!187907 d!187863)))

(assert (=> bs!66928 (= lambda!15337 lambda!15323)))

(declare-fun bs!66929 () Bool)

(assert (= bs!66929 (and d!187907 d!187715)))

(assert (=> bs!66929 (= lambda!15337 lambda!15296)))

(declare-fun bs!66930 () Bool)

(assert (= bs!66930 (and d!187907 d!187711)))

(assert (=> bs!66930 (= lambda!15337 lambda!15294)))

(declare-fun bs!66931 () Bool)

(assert (= bs!66931 (and d!187907 d!187901)))

(assert (=> bs!66931 (= lambda!15337 lambda!15333)))

(declare-fun bs!66932 () Bool)

(assert (= bs!66932 (and d!187907 d!187861)))

(assert (=> bs!66932 (= lambda!15337 lambda!15322)))

(declare-fun bs!66933 () Bool)

(assert (= bs!66933 (and d!187907 d!187875)))

(assert (=> bs!66933 (= lambda!15337 lambda!15327)))

(assert (=> d!187907 (= (inv!6235 (_1!3315 (_1!3316 (h!10368 mapDefault!2340)))) (forall!1495 (exprs!659 (_1!3315 (_1!3316 (h!10368 mapDefault!2340)))) lambda!15337))))

(declare-fun bs!66934 () Bool)

(assert (= bs!66934 d!187907))

(declare-fun m!774211 () Bool)

(assert (=> bs!66934 m!774211))

(assert (=> b!527740 d!187907))

(declare-fun d!187909 () Bool)

(assert (=> d!187909 (= (list!2069 (_1!3321 lt!217882)) (list!2071 (c!101091 (_1!3321 lt!217882))))))

(declare-fun bs!66935 () Bool)

(assert (= bs!66935 d!187909))

(declare-fun m!774213 () Bool)

(assert (=> bs!66935 m!774213))

(assert (=> b!527607 d!187909))

(declare-fun b!528146 () Bool)

(declare-fun e!317601 () tuple2!6134)

(declare-fun lt!218268 () Option!1249)

(declare-fun lt!218270 () tuple2!6134)

(assert (=> b!528146 (= e!317601 (tuple2!6135 (Cons!4972 (_1!3326 (v!16041 lt!218268)) (_1!3323 lt!218270)) (_2!3323 lt!218270)))))

(assert (=> b!528146 (= lt!218270 (lexList!305 thiss!12147 rules!1345 (_2!3326 (v!16041 lt!218268))))))

(declare-fun d!187911 () Bool)

(declare-fun e!317600 () Bool)

(assert (=> d!187911 e!317600))

(declare-fun c!101186 () Bool)

(declare-fun lt!218269 () tuple2!6134)

(assert (=> d!187911 (= c!101186 (> (size!4058 (_1!3323 lt!218269)) 0))))

(assert (=> d!187911 (= lt!218269 e!317601)))

(declare-fun c!101187 () Bool)

(assert (=> d!187911 (= c!101187 ((_ is Some!1248) lt!218268))))

(assert (=> d!187911 (= lt!218268 (maxPrefix!483 thiss!12147 rules!1345 (list!2068 input!747)))))

(assert (=> d!187911 (= (lexList!305 thiss!12147 rules!1345 (list!2068 input!747)) lt!218269)))

(declare-fun b!528147 () Bool)

(declare-fun e!317602 () Bool)

(assert (=> b!528147 (= e!317602 (not (isEmpty!3611 (_1!3323 lt!218269))))))

(declare-fun b!528148 () Bool)

(assert (=> b!528148 (= e!317601 (tuple2!6135 Nil!4972 (list!2068 input!747)))))

(declare-fun b!528149 () Bool)

(assert (=> b!528149 (= e!317600 (= (_2!3323 lt!218269) (list!2068 input!747)))))

(declare-fun b!528150 () Bool)

(assert (=> b!528150 (= e!317600 e!317602)))

(declare-fun res!223250 () Bool)

(assert (=> b!528150 (= res!223250 (< (size!4056 (_2!3323 lt!218269)) (size!4056 (list!2068 input!747))))))

(assert (=> b!528150 (=> (not res!223250) (not e!317602))))

(assert (= (and d!187911 c!101187) b!528146))

(assert (= (and d!187911 (not c!101187)) b!528148))

(assert (= (and d!187911 c!101186) b!528150))

(assert (= (and d!187911 (not c!101186)) b!528149))

(assert (= (and b!528150 res!223250) b!528147))

(declare-fun m!774215 () Bool)

(assert (=> b!528146 m!774215))

(declare-fun m!774217 () Bool)

(assert (=> d!187911 m!774217))

(assert (=> d!187911 m!773248))

(assert (=> d!187911 m!773540))

(declare-fun m!774219 () Bool)

(assert (=> b!528147 m!774219))

(declare-fun m!774221 () Bool)

(assert (=> b!528150 m!774221))

(assert (=> b!528150 m!773248))

(assert (=> b!528150 m!773940))

(assert (=> b!527607 d!187911))

(assert (=> b!527607 d!187819))

(declare-fun bs!66936 () Bool)

(declare-fun b!528152 () Bool)

(assert (= bs!66936 (and b!528152 b!527836)))

(declare-fun lambda!15338 () Int)

(assert (=> bs!66936 (= lambda!15338 lambda!15303)))

(declare-fun d!187913 () Bool)

(declare-fun res!223251 () Bool)

(declare-fun e!317603 () Bool)

(assert (=> d!187913 (=> (not res!223251) (not e!317603))))

(assert (=> d!187913 (= res!223251 (valid!580 (cache!955 cacheDown!462)))))

(assert (=> d!187913 (= (validCacheMapDown!35 (cache!955 cacheDown!462)) e!317603)))

(declare-fun b!528151 () Bool)

(declare-fun res!223252 () Bool)

(assert (=> b!528151 (=> (not res!223252) (not e!317603))))

(assert (=> b!528151 (= res!223252 (invariantList!105 (toList!466 (map!1141 (cache!955 cacheDown!462)))))))

(assert (=> b!528152 (= e!317603 (forall!1497 (toList!466 (map!1141 (cache!955 cacheDown!462))) lambda!15338))))

(assert (= (and d!187913 res!223251) b!528151))

(assert (= (and b!528151 res!223252) b!528152))

(declare-fun m!774223 () Bool)

(assert (=> d!187913 m!774223))

(declare-fun m!774225 () Bool)

(assert (=> b!528151 m!774225))

(declare-fun m!774227 () Bool)

(assert (=> b!528151 m!774227))

(assert (=> b!528152 m!774225))

(declare-fun m!774229 () Bool)

(assert (=> b!528152 m!774229))

(assert (=> d!187649 d!187913))

(declare-fun d!187915 () Bool)

(assert (=> d!187915 (= (inv!6234 (xs!4246 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) (<= (size!4056 (innerList!1667 (xs!4246 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) 2147483647))))

(declare-fun bs!66937 () Bool)

(assert (= bs!66937 d!187915))

(declare-fun m!774231 () Bool)

(assert (=> bs!66937 m!774231))

(assert (=> b!527789 d!187915))

(declare-fun bs!66938 () Bool)

(declare-fun d!187917 () Bool)

(assert (= bs!66938 (and d!187917 d!187855)))

(declare-fun lambda!15339 () Int)

(assert (=> bs!66938 (= lambda!15339 lambda!15320)))

(declare-fun bs!66939 () Bool)

(assert (= bs!66939 (and d!187917 d!187895)))

(assert (=> bs!66939 (= lambda!15339 lambda!15330)))

(declare-fun bs!66940 () Bool)

(assert (= bs!66940 (and d!187917 d!187891)))

(assert (=> bs!66940 (= lambda!15339 lambda!15328)))

(declare-fun bs!66941 () Bool)

(assert (= bs!66941 (and d!187917 d!187843)))

(assert (=> bs!66941 (= lambda!15339 lambda!15319)))

(declare-fun bs!66942 () Bool)

(assert (= bs!66942 (and d!187917 d!187899)))

(assert (=> bs!66942 (= lambda!15339 lambda!15332)))

(declare-fun bs!66943 () Bool)

(assert (= bs!66943 (and d!187917 d!187799)))

(assert (=> bs!66943 (= lambda!15339 lambda!15308)))

(declare-fun bs!66944 () Bool)

(assert (= bs!66944 (and d!187917 d!187713)))

(assert (=> bs!66944 (= lambda!15339 lambda!15295)))

(declare-fun bs!66945 () Bool)

(assert (= bs!66945 (and d!187917 d!187803)))

(assert (=> bs!66945 (= lambda!15339 lambda!15309)))

(declare-fun bs!66946 () Bool)

(assert (= bs!66946 (and d!187917 d!187837)))

(assert (=> bs!66946 (= lambda!15339 lambda!15317)))

(declare-fun bs!66947 () Bool)

(assert (= bs!66947 (and d!187917 d!187797)))

(assert (=> bs!66947 (= lambda!15339 lambda!15307)))

(declare-fun bs!66948 () Bool)

(assert (= bs!66948 (and d!187917 d!187897)))

(assert (=> bs!66948 (= lambda!15339 lambda!15331)))

(declare-fun bs!66949 () Bool)

(assert (= bs!66949 (and d!187917 d!187907)))

(assert (=> bs!66949 (= lambda!15339 lambda!15337)))

(declare-fun bs!66950 () Bool)

(assert (= bs!66950 (and d!187917 d!187719)))

(assert (=> bs!66950 (= lambda!15339 lambda!15297)))

(declare-fun bs!66951 () Bool)

(assert (= bs!66951 (and d!187917 d!187805)))

(assert (=> bs!66951 (= lambda!15339 lambda!15310)))

(declare-fun bs!66952 () Bool)

(assert (= bs!66952 (and d!187917 d!187857)))

(assert (=> bs!66952 (= lambda!15339 lambda!15321)))

(declare-fun bs!66953 () Bool)

(assert (= bs!66953 (and d!187917 d!187707)))

(assert (=> bs!66953 (= lambda!15339 lambda!15293)))

(declare-fun bs!66954 () Bool)

(assert (= bs!66954 (and d!187917 d!187825)))

(assert (=> bs!66954 (= lambda!15339 lambda!15311)))

(declare-fun bs!66955 () Bool)

(assert (= bs!66955 (and d!187917 d!187831)))

(assert (=> bs!66955 (= lambda!15339 lambda!15312)))

(declare-fun bs!66956 () Bool)

(assert (= bs!66956 (and d!187917 d!187841)))

(assert (=> bs!66956 (= lambda!15339 lambda!15318)))

(declare-fun bs!66957 () Bool)

(assert (= bs!66957 (and d!187917 d!187705)))

(assert (=> bs!66957 (= lambda!15339 lambda!15292)))

(declare-fun bs!66958 () Bool)

(assert (= bs!66958 (and d!187917 d!187863)))

(assert (=> bs!66958 (= lambda!15339 lambda!15323)))

(declare-fun bs!66959 () Bool)

(assert (= bs!66959 (and d!187917 d!187715)))

(assert (=> bs!66959 (= lambda!15339 lambda!15296)))

(declare-fun bs!66960 () Bool)

(assert (= bs!66960 (and d!187917 d!187711)))

(assert (=> bs!66960 (= lambda!15339 lambda!15294)))

(declare-fun bs!66961 () Bool)

(assert (= bs!66961 (and d!187917 d!187901)))

(assert (=> bs!66961 (= lambda!15339 lambda!15333)))

(declare-fun bs!66962 () Bool)

(assert (= bs!66962 (and d!187917 d!187861)))

(assert (=> bs!66962 (= lambda!15339 lambda!15322)))

(declare-fun bs!66963 () Bool)

(assert (= bs!66963 (and d!187917 d!187875)))

(assert (=> bs!66963 (= lambda!15339 lambda!15327)))

(assert (=> d!187917 (= (inv!6235 (_1!3315 (_1!3316 (h!10368 mapValue!2340)))) (forall!1495 (exprs!659 (_1!3315 (_1!3316 (h!10368 mapValue!2340)))) lambda!15339))))

(declare-fun bs!66964 () Bool)

(assert (= bs!66964 d!187917))

(declare-fun m!774233 () Bool)

(assert (=> bs!66964 m!774233))

(assert (=> b!527683 d!187917))

(declare-fun b!528165 () Bool)

(declare-fun res!223270 () Bool)

(declare-fun e!317608 () Bool)

(assert (=> b!528165 (=> (not res!223270) (not e!317608))))

(declare-fun isEmpty!3613 (Conc!1609) Bool)

(assert (=> b!528165 (= res!223270 (not (isEmpty!3613 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))))))

(declare-fun b!528166 () Bool)

(declare-fun res!223269 () Bool)

(assert (=> b!528166 (=> (not res!223269) (not e!317608))))

(assert (=> b!528166 (= res!223269 (<= (- (height!252 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) (height!252 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) 1))))

(declare-fun b!528167 () Bool)

(declare-fun e!317609 () Bool)

(assert (=> b!528167 (= e!317609 e!317608)))

(declare-fun res!223265 () Bool)

(assert (=> b!528167 (=> (not res!223265) (not e!317608))))

(assert (=> b!528167 (= res!223265 (<= (- 1) (- (height!252 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) (height!252 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))))

(declare-fun b!528168 () Bool)

(declare-fun res!223267 () Bool)

(assert (=> b!528168 (=> (not res!223267) (not e!317608))))

(assert (=> b!528168 (= res!223267 (isBalanced!497 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(declare-fun b!528169 () Bool)

(assert (=> b!528169 (= e!317608 (not (isEmpty!3613 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))))))

(declare-fun b!528170 () Bool)

(declare-fun res!223266 () Bool)

(assert (=> b!528170 (=> (not res!223266) (not e!317608))))

(assert (=> b!528170 (= res!223266 (isBalanced!497 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(declare-fun d!187919 () Bool)

(declare-fun res!223268 () Bool)

(assert (=> d!187919 (=> res!223268 e!317609)))

(assert (=> d!187919 (= res!223268 (not ((_ is Node!1609) (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))))

(assert (=> d!187919 (= (isBalanced!497 (c!101090 (totalInput!1751 cacheFurthestNullable!56))) e!317609)))

(assert (= (and d!187919 (not res!223268)) b!528167))

(assert (= (and b!528167 res!223265) b!528166))

(assert (= (and b!528166 res!223269) b!528170))

(assert (= (and b!528170 res!223266) b!528168))

(assert (= (and b!528168 res!223267) b!528165))

(assert (= (and b!528165 res!223270) b!528169))

(assert (=> b!528166 m!774171))

(assert (=> b!528166 m!774173))

(declare-fun m!774235 () Bool)

(assert (=> b!528168 m!774235))

(declare-fun m!774237 () Bool)

(assert (=> b!528169 m!774237))

(declare-fun m!774239 () Bool)

(assert (=> b!528170 m!774239))

(assert (=> b!528167 m!774171))

(assert (=> b!528167 m!774173))

(declare-fun m!774241 () Bool)

(assert (=> b!528165 m!774241))

(assert (=> d!187661 d!187919))

(declare-fun d!187921 () Bool)

(assert (=> d!187921 (= (list!2068 (_2!3321 lt!217882)) (list!2070 (c!101090 (_2!3321 lt!217882))))))

(declare-fun bs!66965 () Bool)

(assert (= bs!66965 d!187921))

(declare-fun m!774243 () Bool)

(assert (=> bs!66965 m!774243))

(assert (=> b!527603 d!187921))

(assert (=> b!527603 d!187911))

(assert (=> b!527603 d!187819))

(declare-fun d!187923 () Bool)

(assert (=> d!187923 (= (valid!577 (_4!48 lt!217967)) (validCacheMapFurthestNullable!28 (cache!954 (_4!48 lt!217967)) (totalInput!1751 (_4!48 lt!217967))))))

(declare-fun bs!66966 () Bool)

(assert (= bs!66966 d!187923))

(declare-fun m!774245 () Bool)

(assert (=> bs!66966 m!774245))

(assert (=> b!527640 d!187923))

(declare-fun bs!66967 () Bool)

(declare-fun d!187925 () Bool)

(assert (= bs!66967 (and d!187925 d!187855)))

(declare-fun lambda!15340 () Int)

(assert (=> bs!66967 (= lambda!15340 lambda!15320)))

(declare-fun bs!66968 () Bool)

(assert (= bs!66968 (and d!187925 d!187895)))

(assert (=> bs!66968 (= lambda!15340 lambda!15330)))

(declare-fun bs!66969 () Bool)

(assert (= bs!66969 (and d!187925 d!187891)))

(assert (=> bs!66969 (= lambda!15340 lambda!15328)))

(declare-fun bs!66970 () Bool)

(assert (= bs!66970 (and d!187925 d!187843)))

(assert (=> bs!66970 (= lambda!15340 lambda!15319)))

(declare-fun bs!66971 () Bool)

(assert (= bs!66971 (and d!187925 d!187899)))

(assert (=> bs!66971 (= lambda!15340 lambda!15332)))

(declare-fun bs!66972 () Bool)

(assert (= bs!66972 (and d!187925 d!187799)))

(assert (=> bs!66972 (= lambda!15340 lambda!15308)))

(declare-fun bs!66973 () Bool)

(assert (= bs!66973 (and d!187925 d!187803)))

(assert (=> bs!66973 (= lambda!15340 lambda!15309)))

(declare-fun bs!66974 () Bool)

(assert (= bs!66974 (and d!187925 d!187837)))

(assert (=> bs!66974 (= lambda!15340 lambda!15317)))

(declare-fun bs!66975 () Bool)

(assert (= bs!66975 (and d!187925 d!187797)))

(assert (=> bs!66975 (= lambda!15340 lambda!15307)))

(declare-fun bs!66976 () Bool)

(assert (= bs!66976 (and d!187925 d!187897)))

(assert (=> bs!66976 (= lambda!15340 lambda!15331)))

(declare-fun bs!66977 () Bool)

(assert (= bs!66977 (and d!187925 d!187907)))

(assert (=> bs!66977 (= lambda!15340 lambda!15337)))

(declare-fun bs!66978 () Bool)

(assert (= bs!66978 (and d!187925 d!187719)))

(assert (=> bs!66978 (= lambda!15340 lambda!15297)))

(declare-fun bs!66979 () Bool)

(assert (= bs!66979 (and d!187925 d!187805)))

(assert (=> bs!66979 (= lambda!15340 lambda!15310)))

(declare-fun bs!66980 () Bool)

(assert (= bs!66980 (and d!187925 d!187857)))

(assert (=> bs!66980 (= lambda!15340 lambda!15321)))

(declare-fun bs!66981 () Bool)

(assert (= bs!66981 (and d!187925 d!187707)))

(assert (=> bs!66981 (= lambda!15340 lambda!15293)))

(declare-fun bs!66982 () Bool)

(assert (= bs!66982 (and d!187925 d!187825)))

(assert (=> bs!66982 (= lambda!15340 lambda!15311)))

(declare-fun bs!66983 () Bool)

(assert (= bs!66983 (and d!187925 d!187831)))

(assert (=> bs!66983 (= lambda!15340 lambda!15312)))

(declare-fun bs!66984 () Bool)

(assert (= bs!66984 (and d!187925 d!187841)))

(assert (=> bs!66984 (= lambda!15340 lambda!15318)))

(declare-fun bs!66985 () Bool)

(assert (= bs!66985 (and d!187925 d!187705)))

(assert (=> bs!66985 (= lambda!15340 lambda!15292)))

(declare-fun bs!66986 () Bool)

(assert (= bs!66986 (and d!187925 d!187863)))

(assert (=> bs!66986 (= lambda!15340 lambda!15323)))

(declare-fun bs!66987 () Bool)

(assert (= bs!66987 (and d!187925 d!187715)))

(assert (=> bs!66987 (= lambda!15340 lambda!15296)))

(declare-fun bs!66988 () Bool)

(assert (= bs!66988 (and d!187925 d!187711)))

(assert (=> bs!66988 (= lambda!15340 lambda!15294)))

(declare-fun bs!66989 () Bool)

(assert (= bs!66989 (and d!187925 d!187901)))

(assert (=> bs!66989 (= lambda!15340 lambda!15333)))

(declare-fun bs!66990 () Bool)

(assert (= bs!66990 (and d!187925 d!187917)))

(assert (=> bs!66990 (= lambda!15340 lambda!15339)))

(declare-fun bs!66991 () Bool)

(assert (= bs!66991 (and d!187925 d!187713)))

(assert (=> bs!66991 (= lambda!15340 lambda!15295)))

(declare-fun bs!66992 () Bool)

(assert (= bs!66992 (and d!187925 d!187861)))

(assert (=> bs!66992 (= lambda!15340 lambda!15322)))

(declare-fun bs!66993 () Bool)

(assert (= bs!66993 (and d!187925 d!187875)))

(assert (=> bs!66993 (= lambda!15340 lambda!15327)))

(assert (=> d!187925 (= (inv!6235 setElem!2621) (forall!1495 (exprs!659 setElem!2621) lambda!15340))))

(declare-fun bs!66994 () Bool)

(assert (= bs!66994 d!187925))

(declare-fun m!774247 () Bool)

(assert (=> bs!66994 m!774247))

(assert (=> setNonEmpty!2621 d!187925))

(declare-fun b!528171 () Bool)

(declare-fun res!223276 () Bool)

(declare-fun e!317610 () Bool)

(assert (=> b!528171 (=> (not res!223276) (not e!317610))))

(assert (=> b!528171 (= res!223276 (not (isEmpty!3613 (left!4223 (c!101090 input!747)))))))

(declare-fun b!528172 () Bool)

(declare-fun res!223275 () Bool)

(assert (=> b!528172 (=> (not res!223275) (not e!317610))))

(assert (=> b!528172 (= res!223275 (<= (- (height!252 (left!4223 (c!101090 input!747))) (height!252 (right!4553 (c!101090 input!747)))) 1))))

(declare-fun b!528173 () Bool)

(declare-fun e!317611 () Bool)

(assert (=> b!528173 (= e!317611 e!317610)))

(declare-fun res!223271 () Bool)

(assert (=> b!528173 (=> (not res!223271) (not e!317610))))

(assert (=> b!528173 (= res!223271 (<= (- 1) (- (height!252 (left!4223 (c!101090 input!747))) (height!252 (right!4553 (c!101090 input!747))))))))

(declare-fun b!528174 () Bool)

(declare-fun res!223273 () Bool)

(assert (=> b!528174 (=> (not res!223273) (not e!317610))))

(assert (=> b!528174 (= res!223273 (isBalanced!497 (right!4553 (c!101090 input!747))))))

(declare-fun b!528175 () Bool)

(assert (=> b!528175 (= e!317610 (not (isEmpty!3613 (right!4553 (c!101090 input!747)))))))

(declare-fun b!528176 () Bool)

(declare-fun res!223272 () Bool)

(assert (=> b!528176 (=> (not res!223272) (not e!317610))))

(assert (=> b!528176 (= res!223272 (isBalanced!497 (left!4223 (c!101090 input!747))))))

(declare-fun d!187927 () Bool)

(declare-fun res!223274 () Bool)

(assert (=> d!187927 (=> res!223274 e!317611)))

(assert (=> d!187927 (= res!223274 (not ((_ is Node!1609) (c!101090 input!747))))))

(assert (=> d!187927 (= (isBalanced!497 (c!101090 input!747)) e!317611)))

(assert (= (and d!187927 (not res!223274)) b!528173))

(assert (= (and b!528173 res!223271) b!528172))

(assert (= (and b!528172 res!223275) b!528176))

(assert (= (and b!528176 res!223272) b!528174))

(assert (= (and b!528174 res!223273) b!528171))

(assert (= (and b!528171 res!223276) b!528175))

(assert (=> b!528172 m!773462))

(assert (=> b!528172 m!773464))

(declare-fun m!774249 () Bool)

(assert (=> b!528174 m!774249))

(declare-fun m!774251 () Bool)

(assert (=> b!528175 m!774251))

(declare-fun m!774253 () Bool)

(assert (=> b!528176 m!774253))

(assert (=> b!528173 m!773462))

(assert (=> b!528173 m!773464))

(declare-fun m!774255 () Bool)

(assert (=> b!528171 m!774255))

(assert (=> d!187687 d!187927))

(declare-fun d!187929 () Bool)

(declare-fun c!101188 () Bool)

(assert (=> d!187929 (= c!101188 ((_ is Empty!1609) (c!101090 (_2!3321 lt!217879))))))

(declare-fun e!317612 () List!4979)

(assert (=> d!187929 (= (list!2070 (c!101090 (_2!3321 lt!217879))) e!317612)))

(declare-fun b!528179 () Bool)

(declare-fun e!317613 () List!4979)

(assert (=> b!528179 (= e!317613 (list!2073 (xs!4246 (c!101090 (_2!3321 lt!217879)))))))

(declare-fun b!528180 () Bool)

(assert (=> b!528180 (= e!317613 (++!1378 (list!2070 (left!4223 (c!101090 (_2!3321 lt!217879)))) (list!2070 (right!4553 (c!101090 (_2!3321 lt!217879))))))))

(declare-fun b!528178 () Bool)

(assert (=> b!528178 (= e!317612 e!317613)))

(declare-fun c!101189 () Bool)

(assert (=> b!528178 (= c!101189 ((_ is Leaf!2560) (c!101090 (_2!3321 lt!217879))))))

(declare-fun b!528177 () Bool)

(assert (=> b!528177 (= e!317612 Nil!4969)))

(assert (= (and d!187929 c!101188) b!528177))

(assert (= (and d!187929 (not c!101188)) b!528178))

(assert (= (and b!528178 c!101189) b!528179))

(assert (= (and b!528178 (not c!101189)) b!528180))

(declare-fun m!774257 () Bool)

(assert (=> b!528179 m!774257))

(declare-fun m!774259 () Bool)

(assert (=> b!528180 m!774259))

(declare-fun m!774261 () Bool)

(assert (=> b!528180 m!774261))

(assert (=> b!528180 m!774259))

(assert (=> b!528180 m!774261))

(declare-fun m!774263 () Bool)

(assert (=> b!528180 m!774263))

(assert (=> d!187679 d!187929))

(assert (=> b!527586 d!187913))

(declare-fun bs!66995 () Bool)

(declare-fun d!187931 () Bool)

(assert (= bs!66995 (and d!187931 d!187855)))

(declare-fun lambda!15341 () Int)

(assert (=> bs!66995 (= lambda!15341 lambda!15320)))

(declare-fun bs!66996 () Bool)

(assert (= bs!66996 (and d!187931 d!187895)))

(assert (=> bs!66996 (= lambda!15341 lambda!15330)))

(declare-fun bs!66997 () Bool)

(assert (= bs!66997 (and d!187931 d!187891)))

(assert (=> bs!66997 (= lambda!15341 lambda!15328)))

(declare-fun bs!66998 () Bool)

(assert (= bs!66998 (and d!187931 d!187843)))

(assert (=> bs!66998 (= lambda!15341 lambda!15319)))

(declare-fun bs!66999 () Bool)

(assert (= bs!66999 (and d!187931 d!187899)))

(assert (=> bs!66999 (= lambda!15341 lambda!15332)))

(declare-fun bs!67000 () Bool)

(assert (= bs!67000 (and d!187931 d!187799)))

(assert (=> bs!67000 (= lambda!15341 lambda!15308)))

(declare-fun bs!67001 () Bool)

(assert (= bs!67001 (and d!187931 d!187837)))

(assert (=> bs!67001 (= lambda!15341 lambda!15317)))

(declare-fun bs!67002 () Bool)

(assert (= bs!67002 (and d!187931 d!187797)))

(assert (=> bs!67002 (= lambda!15341 lambda!15307)))

(declare-fun bs!67003 () Bool)

(assert (= bs!67003 (and d!187931 d!187897)))

(assert (=> bs!67003 (= lambda!15341 lambda!15331)))

(declare-fun bs!67004 () Bool)

(assert (= bs!67004 (and d!187931 d!187907)))

(assert (=> bs!67004 (= lambda!15341 lambda!15337)))

(declare-fun bs!67005 () Bool)

(assert (= bs!67005 (and d!187931 d!187719)))

(assert (=> bs!67005 (= lambda!15341 lambda!15297)))

(declare-fun bs!67006 () Bool)

(assert (= bs!67006 (and d!187931 d!187805)))

(assert (=> bs!67006 (= lambda!15341 lambda!15310)))

(declare-fun bs!67007 () Bool)

(assert (= bs!67007 (and d!187931 d!187857)))

(assert (=> bs!67007 (= lambda!15341 lambda!15321)))

(declare-fun bs!67008 () Bool)

(assert (= bs!67008 (and d!187931 d!187707)))

(assert (=> bs!67008 (= lambda!15341 lambda!15293)))

(declare-fun bs!67009 () Bool)

(assert (= bs!67009 (and d!187931 d!187825)))

(assert (=> bs!67009 (= lambda!15341 lambda!15311)))

(declare-fun bs!67010 () Bool)

(assert (= bs!67010 (and d!187931 d!187831)))

(assert (=> bs!67010 (= lambda!15341 lambda!15312)))

(declare-fun bs!67011 () Bool)

(assert (= bs!67011 (and d!187931 d!187841)))

(assert (=> bs!67011 (= lambda!15341 lambda!15318)))

(declare-fun bs!67012 () Bool)

(assert (= bs!67012 (and d!187931 d!187705)))

(assert (=> bs!67012 (= lambda!15341 lambda!15292)))

(declare-fun bs!67013 () Bool)

(assert (= bs!67013 (and d!187931 d!187863)))

(assert (=> bs!67013 (= lambda!15341 lambda!15323)))

(declare-fun bs!67014 () Bool)

(assert (= bs!67014 (and d!187931 d!187715)))

(assert (=> bs!67014 (= lambda!15341 lambda!15296)))

(declare-fun bs!67015 () Bool)

(assert (= bs!67015 (and d!187931 d!187711)))

(assert (=> bs!67015 (= lambda!15341 lambda!15294)))

(declare-fun bs!67016 () Bool)

(assert (= bs!67016 (and d!187931 d!187901)))

(assert (=> bs!67016 (= lambda!15341 lambda!15333)))

(declare-fun bs!67017 () Bool)

(assert (= bs!67017 (and d!187931 d!187917)))

(assert (=> bs!67017 (= lambda!15341 lambda!15339)))

(declare-fun bs!67018 () Bool)

(assert (= bs!67018 (and d!187931 d!187713)))

(assert (=> bs!67018 (= lambda!15341 lambda!15295)))

(declare-fun bs!67019 () Bool)

(assert (= bs!67019 (and d!187931 d!187925)))

(assert (=> bs!67019 (= lambda!15341 lambda!15340)))

(declare-fun bs!67020 () Bool)

(assert (= bs!67020 (and d!187931 d!187803)))

(assert (=> bs!67020 (= lambda!15341 lambda!15309)))

(declare-fun bs!67021 () Bool)

(assert (= bs!67021 (and d!187931 d!187861)))

(assert (=> bs!67021 (= lambda!15341 lambda!15322)))

(declare-fun bs!67022 () Bool)

(assert (= bs!67022 (and d!187931 d!187875)))

(assert (=> bs!67022 (= lambda!15341 lambda!15327)))

(assert (=> d!187931 (= (inv!6235 (_1!3315 (_1!3316 (h!10368 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))))) (forall!1495 (exprs!659 (_1!3315 (_1!3316 (h!10368 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))))) lambda!15341))))

(declare-fun bs!67023 () Bool)

(assert (= bs!67023 d!187931))

(declare-fun m!774265 () Bool)

(assert (=> bs!67023 m!774265))

(assert (=> b!527689 d!187931))

(declare-fun bs!67024 () Bool)

(declare-fun d!187933 () Bool)

(assert (= bs!67024 (and d!187933 d!187855)))

(declare-fun lambda!15342 () Int)

(assert (=> bs!67024 (= lambda!15342 lambda!15320)))

(declare-fun bs!67025 () Bool)

(assert (= bs!67025 (and d!187933 d!187895)))

(assert (=> bs!67025 (= lambda!15342 lambda!15330)))

(declare-fun bs!67026 () Bool)

(assert (= bs!67026 (and d!187933 d!187843)))

(assert (=> bs!67026 (= lambda!15342 lambda!15319)))

(declare-fun bs!67027 () Bool)

(assert (= bs!67027 (and d!187933 d!187899)))

(assert (=> bs!67027 (= lambda!15342 lambda!15332)))

(declare-fun bs!67028 () Bool)

(assert (= bs!67028 (and d!187933 d!187799)))

(assert (=> bs!67028 (= lambda!15342 lambda!15308)))

(declare-fun bs!67029 () Bool)

(assert (= bs!67029 (and d!187933 d!187837)))

(assert (=> bs!67029 (= lambda!15342 lambda!15317)))

(declare-fun bs!67030 () Bool)

(assert (= bs!67030 (and d!187933 d!187797)))

(assert (=> bs!67030 (= lambda!15342 lambda!15307)))

(declare-fun bs!67031 () Bool)

(assert (= bs!67031 (and d!187933 d!187897)))

(assert (=> bs!67031 (= lambda!15342 lambda!15331)))

(declare-fun bs!67032 () Bool)

(assert (= bs!67032 (and d!187933 d!187907)))

(assert (=> bs!67032 (= lambda!15342 lambda!15337)))

(declare-fun bs!67033 () Bool)

(assert (= bs!67033 (and d!187933 d!187719)))

(assert (=> bs!67033 (= lambda!15342 lambda!15297)))

(declare-fun bs!67034 () Bool)

(assert (= bs!67034 (and d!187933 d!187891)))

(assert (=> bs!67034 (= lambda!15342 lambda!15328)))

(declare-fun bs!67035 () Bool)

(assert (= bs!67035 (and d!187933 d!187931)))

(assert (=> bs!67035 (= lambda!15342 lambda!15341)))

(declare-fun bs!67036 () Bool)

(assert (= bs!67036 (and d!187933 d!187805)))

(assert (=> bs!67036 (= lambda!15342 lambda!15310)))

(declare-fun bs!67037 () Bool)

(assert (= bs!67037 (and d!187933 d!187857)))

(assert (=> bs!67037 (= lambda!15342 lambda!15321)))

(declare-fun bs!67038 () Bool)

(assert (= bs!67038 (and d!187933 d!187707)))

(assert (=> bs!67038 (= lambda!15342 lambda!15293)))

(declare-fun bs!67039 () Bool)

(assert (= bs!67039 (and d!187933 d!187825)))

(assert (=> bs!67039 (= lambda!15342 lambda!15311)))

(declare-fun bs!67040 () Bool)

(assert (= bs!67040 (and d!187933 d!187831)))

(assert (=> bs!67040 (= lambda!15342 lambda!15312)))

(declare-fun bs!67041 () Bool)

(assert (= bs!67041 (and d!187933 d!187841)))

(assert (=> bs!67041 (= lambda!15342 lambda!15318)))

(declare-fun bs!67042 () Bool)

(assert (= bs!67042 (and d!187933 d!187705)))

(assert (=> bs!67042 (= lambda!15342 lambda!15292)))

(declare-fun bs!67043 () Bool)

(assert (= bs!67043 (and d!187933 d!187863)))

(assert (=> bs!67043 (= lambda!15342 lambda!15323)))

(declare-fun bs!67044 () Bool)

(assert (= bs!67044 (and d!187933 d!187715)))

(assert (=> bs!67044 (= lambda!15342 lambda!15296)))

(declare-fun bs!67045 () Bool)

(assert (= bs!67045 (and d!187933 d!187711)))

(assert (=> bs!67045 (= lambda!15342 lambda!15294)))

(declare-fun bs!67046 () Bool)

(assert (= bs!67046 (and d!187933 d!187901)))

(assert (=> bs!67046 (= lambda!15342 lambda!15333)))

(declare-fun bs!67047 () Bool)

(assert (= bs!67047 (and d!187933 d!187917)))

(assert (=> bs!67047 (= lambda!15342 lambda!15339)))

(declare-fun bs!67048 () Bool)

(assert (= bs!67048 (and d!187933 d!187713)))

(assert (=> bs!67048 (= lambda!15342 lambda!15295)))

(declare-fun bs!67049 () Bool)

(assert (= bs!67049 (and d!187933 d!187925)))

(assert (=> bs!67049 (= lambda!15342 lambda!15340)))

(declare-fun bs!67050 () Bool)

(assert (= bs!67050 (and d!187933 d!187803)))

(assert (=> bs!67050 (= lambda!15342 lambda!15309)))

(declare-fun bs!67051 () Bool)

(assert (= bs!67051 (and d!187933 d!187861)))

(assert (=> bs!67051 (= lambda!15342 lambda!15322)))

(declare-fun bs!67052 () Bool)

(assert (= bs!67052 (and d!187933 d!187875)))

(assert (=> bs!67052 (= lambda!15342 lambda!15327)))

(assert (=> d!187933 (= (inv!6235 setElem!2606) (forall!1495 (exprs!659 setElem!2606) lambda!15342))))

(declare-fun bs!67053 () Bool)

(assert (= bs!67053 d!187933))

(declare-fun m!774267 () Bool)

(assert (=> bs!67053 m!774267))

(assert (=> setNonEmpty!2605 d!187933))

(declare-fun condSetEmpty!2625 () Bool)

(assert (=> setNonEmpty!2619 (= condSetEmpty!2625 (= setRest!2619 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2625 () Bool)

(assert (=> setNonEmpty!2619 (= tp!167399 setRes!2625)))

(declare-fun setIsEmpty!2625 () Bool)

(assert (=> setIsEmpty!2625 setRes!2625))

(declare-fun setElem!2625 () Context!318)

(declare-fun e!317616 () Bool)

(declare-fun tp!167434 () Bool)

(declare-fun setNonEmpty!2625 () Bool)

(assert (=> setNonEmpty!2625 (= setRes!2625 (and tp!167434 (inv!6235 setElem!2625) e!317616))))

(declare-fun setRest!2625 () (InoxSet Context!318))

(assert (=> setNonEmpty!2625 (= setRest!2619 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2625 true) setRest!2625))))

(declare-fun b!528185 () Bool)

(declare-fun tp!167433 () Bool)

(assert (=> b!528185 (= e!317616 tp!167433)))

(assert (= (and setNonEmpty!2619 condSetEmpty!2625) setIsEmpty!2625))

(assert (= (and setNonEmpty!2619 (not condSetEmpty!2625)) setNonEmpty!2625))

(assert (= setNonEmpty!2625 b!528185))

(declare-fun m!774269 () Bool)

(assert (=> setNonEmpty!2625 m!774269))

(declare-fun e!317618 () Bool)

(declare-fun e!317619 () Bool)

(declare-fun setRes!2626 () Bool)

(declare-fun tp!167438 () Bool)

(declare-fun b!528186 () Bool)

(assert (=> b!528186 (= e!317618 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 (t!73589 mapDefault!2345))))) e!317619 tp_is_empty!2799 setRes!2626 tp!167438))))

(declare-fun condSetEmpty!2626 () Bool)

(assert (=> b!528186 (= condSetEmpty!2626 (= (_2!3316 (h!10368 (t!73589 mapDefault!2345))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!528187 () Bool)

(declare-fun tp!167437 () Bool)

(assert (=> b!528187 (= e!317619 tp!167437)))

(declare-fun setIsEmpty!2626 () Bool)

(assert (=> setIsEmpty!2626 setRes!2626))

(assert (=> b!527669 (= tp!167268 e!317618)))

(declare-fun setElem!2626 () Context!318)

(declare-fun setNonEmpty!2626 () Bool)

(declare-fun tp!167436 () Bool)

(declare-fun e!317617 () Bool)

(assert (=> setNonEmpty!2626 (= setRes!2626 (and tp!167436 (inv!6235 setElem!2626) e!317617))))

(declare-fun setRest!2626 () (InoxSet Context!318))

(assert (=> setNonEmpty!2626 (= (_2!3316 (h!10368 (t!73589 mapDefault!2345))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2626 true) setRest!2626))))

(declare-fun b!528188 () Bool)

(declare-fun tp!167435 () Bool)

(assert (=> b!528188 (= e!317617 tp!167435)))

(assert (= b!528186 b!528187))

(assert (= (and b!528186 condSetEmpty!2626) setIsEmpty!2626))

(assert (= (and b!528186 (not condSetEmpty!2626)) setNonEmpty!2626))

(assert (= setNonEmpty!2626 b!528188))

(assert (= (and b!527669 ((_ is Cons!4967) (t!73589 mapDefault!2345))) b!528186))

(declare-fun m!774271 () Bool)

(assert (=> b!528186 m!774271))

(declare-fun m!774273 () Bool)

(assert (=> setNonEmpty!2626 m!774273))

(declare-fun condSetEmpty!2627 () Bool)

(assert (=> setNonEmpty!2620 (= condSetEmpty!2627 (= setRest!2620 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2627 () Bool)

(assert (=> setNonEmpty!2620 (= tp!167402 setRes!2627)))

(declare-fun setIsEmpty!2627 () Bool)

(assert (=> setIsEmpty!2627 setRes!2627))

(declare-fun tp!167440 () Bool)

(declare-fun setNonEmpty!2627 () Bool)

(declare-fun e!317620 () Bool)

(declare-fun setElem!2627 () Context!318)

(assert (=> setNonEmpty!2627 (= setRes!2627 (and tp!167440 (inv!6235 setElem!2627) e!317620))))

(declare-fun setRest!2627 () (InoxSet Context!318))

(assert (=> setNonEmpty!2627 (= setRest!2620 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2627 true) setRest!2627))))

(declare-fun b!528189 () Bool)

(declare-fun tp!167439 () Bool)

(assert (=> b!528189 (= e!317620 tp!167439)))

(assert (= (and setNonEmpty!2620 condSetEmpty!2627) setIsEmpty!2627))

(assert (= (and setNonEmpty!2620 (not condSetEmpty!2627)) setNonEmpty!2627))

(assert (= setNonEmpty!2627 b!528189))

(declare-fun m!774275 () Bool)

(assert (=> setNonEmpty!2627 m!774275))

(declare-fun condSetEmpty!2628 () Bool)

(assert (=> setNonEmpty!2600 (= condSetEmpty!2628 (= setRest!2600 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2628 () Bool)

(assert (=> setNonEmpty!2600 (= tp!167302 setRes!2628)))

(declare-fun setIsEmpty!2628 () Bool)

(assert (=> setIsEmpty!2628 setRes!2628))

(declare-fun setNonEmpty!2628 () Bool)

(declare-fun setElem!2628 () Context!318)

(declare-fun tp!167442 () Bool)

(declare-fun e!317621 () Bool)

(assert (=> setNonEmpty!2628 (= setRes!2628 (and tp!167442 (inv!6235 setElem!2628) e!317621))))

(declare-fun setRest!2628 () (InoxSet Context!318))

(assert (=> setNonEmpty!2628 (= setRest!2600 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2628 true) setRest!2628))))

(declare-fun b!528190 () Bool)

(declare-fun tp!167441 () Bool)

(assert (=> b!528190 (= e!317621 tp!167441)))

(assert (= (and setNonEmpty!2600 condSetEmpty!2628) setIsEmpty!2628))

(assert (= (and setNonEmpty!2600 (not condSetEmpty!2628)) setNonEmpty!2628))

(assert (= setNonEmpty!2628 b!528190))

(declare-fun m!774277 () Bool)

(assert (=> setNonEmpty!2628 m!774277))

(declare-fun condSetEmpty!2629 () Bool)

(assert (=> setNonEmpty!2592 (= condSetEmpty!2629 (= setRest!2591 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2629 () Bool)

(assert (=> setNonEmpty!2592 (= tp!167265 setRes!2629)))

(declare-fun setIsEmpty!2629 () Bool)

(assert (=> setIsEmpty!2629 setRes!2629))

(declare-fun setNonEmpty!2629 () Bool)

(declare-fun e!317622 () Bool)

(declare-fun setElem!2629 () Context!318)

(declare-fun tp!167444 () Bool)

(assert (=> setNonEmpty!2629 (= setRes!2629 (and tp!167444 (inv!6235 setElem!2629) e!317622))))

(declare-fun setRest!2629 () (InoxSet Context!318))

(assert (=> setNonEmpty!2629 (= setRest!2591 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2629 true) setRest!2629))))

(declare-fun b!528191 () Bool)

(declare-fun tp!167443 () Bool)

(assert (=> b!528191 (= e!317622 tp!167443)))

(assert (= (and setNonEmpty!2592 condSetEmpty!2629) setIsEmpty!2629))

(assert (= (and setNonEmpty!2592 (not condSetEmpty!2629)) setNonEmpty!2629))

(assert (= setNonEmpty!2629 b!528191))

(declare-fun m!774279 () Bool)

(assert (=> setNonEmpty!2629 m!774279))

(declare-fun b!528196 () Bool)

(declare-fun e!317625 () Bool)

(declare-fun tp!167449 () Bool)

(declare-fun tp!167450 () Bool)

(assert (=> b!528196 (= e!317625 (and tp!167449 tp!167450))))

(assert (=> b!527787 (= tp!167422 e!317625)))

(assert (= (and b!527787 ((_ is Cons!4966) (exprs!659 setElem!2622))) b!528196))

(declare-fun b!528199 () Bool)

(declare-fun b_free!14053 () Bool)

(declare-fun b_next!14069 () Bool)

(assert (=> b!528199 (= b_free!14053 (not b_next!14069))))

(declare-fun tp!167454 () Bool)

(declare-fun b_and!51551 () Bool)

(assert (=> b!528199 (= tp!167454 b_and!51551)))

(declare-fun b_free!14055 () Bool)

(declare-fun b_next!14071 () Bool)

(assert (=> b!528199 (= b_free!14055 (not b_next!14071))))

(declare-fun t!73605 () Bool)

(declare-fun tb!47193 () Bool)

(assert (=> (and b!528199 (= (toChars!1589 (transformation!893 (h!10374 (t!73595 (t!73595 rules!1345))))) (toChars!1589 (transformation!893 (rule!1593 (_1!3324 (v!16038 (_1!3325 lt!217977))))))) t!73605) tb!47193))

(declare-fun result!52520 () Bool)

(assert (= result!52520 result!52510))

(assert (=> d!187775 t!73605))

(declare-fun tp!167453 () Bool)

(declare-fun b_and!51553 () Bool)

(assert (=> b!528199 (= tp!167453 (and (=> t!73605 result!52520) b_and!51553))))

(declare-fun e!317628 () Bool)

(assert (=> b!528199 (= e!317628 (and tp!167454 tp!167453))))

(declare-fun tp!167451 () Bool)

(declare-fun e!317627 () Bool)

(declare-fun b!528198 () Bool)

(assert (=> b!528198 (= e!317627 (and tp!167451 (inv!6224 (tag!1155 (h!10374 (t!73595 (t!73595 rules!1345))))) (inv!6227 (transformation!893 (h!10374 (t!73595 (t!73595 rules!1345))))) e!317628))))

(declare-fun b!528197 () Bool)

(declare-fun e!317626 () Bool)

(declare-fun tp!167452 () Bool)

(assert (=> b!528197 (= e!317626 (and e!317627 tp!167452))))

(assert (=> b!527781 (= tp!167414 e!317626)))

(assert (= b!528198 b!528199))

(assert (= b!528197 b!528198))

(assert (= (and b!527781 ((_ is Cons!4973) (t!73595 (t!73595 rules!1345)))) b!528197))

(declare-fun m!774281 () Bool)

(assert (=> b!528198 m!774281))

(declare-fun m!774283 () Bool)

(assert (=> b!528198 m!774283))

(declare-fun condSetEmpty!2630 () Bool)

(assert (=> setNonEmpty!2618 (= condSetEmpty!2630 (= setRest!2618 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2630 () Bool)

(assert (=> setNonEmpty!2618 (= tp!167396 setRes!2630)))

(declare-fun setIsEmpty!2630 () Bool)

(assert (=> setIsEmpty!2630 setRes!2630))

(declare-fun setElem!2630 () Context!318)

(declare-fun setNonEmpty!2630 () Bool)

(declare-fun e!317630 () Bool)

(declare-fun tp!167456 () Bool)

(assert (=> setNonEmpty!2630 (= setRes!2630 (and tp!167456 (inv!6235 setElem!2630) e!317630))))

(declare-fun setRest!2630 () (InoxSet Context!318))

(assert (=> setNonEmpty!2630 (= setRest!2618 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2630 true) setRest!2630))))

(declare-fun b!528200 () Bool)

(declare-fun tp!167455 () Bool)

(assert (=> b!528200 (= e!317630 tp!167455)))

(assert (= (and setNonEmpty!2618 condSetEmpty!2630) setIsEmpty!2630))

(assert (= (and setNonEmpty!2618 (not condSetEmpty!2630)) setNonEmpty!2630))

(assert (= setNonEmpty!2630 b!528200))

(declare-fun m!774285 () Bool)

(assert (=> setNonEmpty!2630 m!774285))

(declare-fun b!528201 () Bool)

(declare-fun e!317631 () Bool)

(declare-fun tp!167457 () Bool)

(declare-fun tp!167458 () Bool)

(assert (=> b!528201 (= e!317631 (and tp!167457 tp!167458))))

(assert (=> b!527725 (= tp!167342 e!317631)))

(assert (= (and b!527725 ((_ is Cons!4966) (exprs!659 setElem!2607))) b!528201))

(declare-fun e!317632 () Bool)

(declare-fun setNonEmpty!2631 () Bool)

(declare-fun setElem!2631 () Context!318)

(declare-fun setRes!2631 () Bool)

(declare-fun tp!167459 () Bool)

(assert (=> setNonEmpty!2631 (= setRes!2631 (and tp!167459 (inv!6235 setElem!2631) e!317632))))

(declare-fun setRest!2631 () (InoxSet Context!318))

(assert (=> setNonEmpty!2631 (= (_1!3317 (_1!3318 (h!10369 (t!73590 mapValue!2342)))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2631 true) setRest!2631))))

(declare-fun setIsEmpty!2631 () Bool)

(assert (=> setIsEmpty!2631 setRes!2631))

(declare-fun b!528203 () Bool)

(declare-fun tp!167461 () Bool)

(assert (=> b!528203 (= e!317632 tp!167461)))

(declare-fun e!317633 () Bool)

(assert (=> b!527771 (= tp!167403 e!317633)))

(declare-fun b!528202 () Bool)

(declare-fun tp!167460 () Bool)

(assert (=> b!528202 (= e!317633 (and setRes!2631 tp!167460))))

(declare-fun condSetEmpty!2631 () Bool)

(assert (=> b!528202 (= condSetEmpty!2631 (= (_1!3317 (_1!3318 (h!10369 (t!73590 mapValue!2342)))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!528202 condSetEmpty!2631) setIsEmpty!2631))

(assert (= (and b!528202 (not condSetEmpty!2631)) setNonEmpty!2631))

(assert (= setNonEmpty!2631 b!528203))

(assert (= (and b!527771 ((_ is Cons!4968) (t!73590 mapValue!2342))) b!528202))

(declare-fun m!774287 () Bool)

(assert (=> setNonEmpty!2631 m!774287))

(declare-fun mapNonEmpty!2352 () Bool)

(declare-fun mapRes!2352 () Bool)

(declare-fun tp!167467 () Bool)

(declare-fun e!317634 () Bool)

(assert (=> mapNonEmpty!2352 (= mapRes!2352 (and tp!167467 e!317634))))

(declare-fun mapValue!2352 () List!4978)

(declare-fun mapKey!2352 () (_ BitVec 32))

(declare-fun mapRest!2352 () (Array (_ BitVec 32) List!4978))

(assert (=> mapNonEmpty!2352 (= mapRest!2351 (store mapRest!2352 mapKey!2352 mapValue!2352))))

(declare-fun b!528204 () Bool)

(declare-fun e!317636 () Bool)

(declare-fun tp!167468 () Bool)

(assert (=> b!528204 (= e!317636 tp!167468)))

(declare-fun condMapEmpty!2352 () Bool)

(declare-fun mapDefault!2352 () List!4978)

(assert (=> mapNonEmpty!2351 (= condMapEmpty!2352 (= mapRest!2351 ((as const (Array (_ BitVec 32) List!4978)) mapDefault!2352)))))

(declare-fun e!317637 () Bool)

(assert (=> mapNonEmpty!2351 (= tp!167400 (and e!317637 mapRes!2352))))

(declare-fun setIsEmpty!2632 () Bool)

(declare-fun setRes!2632 () Bool)

(assert (=> setIsEmpty!2632 setRes!2632))

(declare-fun b!528205 () Bool)

(declare-fun e!317635 () Bool)

(declare-fun tp!167462 () Bool)

(assert (=> b!528205 (= e!317635 tp!167462)))

(declare-fun tp!167463 () Bool)

(declare-fun setElem!2633 () Context!318)

(declare-fun setNonEmpty!2632 () Bool)

(assert (=> setNonEmpty!2632 (= setRes!2632 (and tp!167463 (inv!6235 setElem!2633) e!317635))))

(declare-fun setRest!2632 () (InoxSet Context!318))

(assert (=> setNonEmpty!2632 (= (_1!3317 (_1!3318 (h!10369 mapDefault!2352))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2633 true) setRest!2632))))

(declare-fun b!528206 () Bool)

(declare-fun tp!167464 () Bool)

(assert (=> b!528206 (= e!317637 (and setRes!2632 tp!167464))))

(declare-fun condSetEmpty!2632 () Bool)

(assert (=> b!528206 (= condSetEmpty!2632 (= (_1!3317 (_1!3318 (h!10369 mapDefault!2352))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun tp!167466 () Bool)

(declare-fun setElem!2632 () Context!318)

(declare-fun setRes!2633 () Bool)

(declare-fun setNonEmpty!2633 () Bool)

(assert (=> setNonEmpty!2633 (= setRes!2633 (and tp!167466 (inv!6235 setElem!2632) e!317636))))

(declare-fun setRest!2633 () (InoxSet Context!318))

(assert (=> setNonEmpty!2633 (= (_1!3317 (_1!3318 (h!10369 mapValue!2352))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2632 true) setRest!2633))))

(declare-fun mapIsEmpty!2352 () Bool)

(assert (=> mapIsEmpty!2352 mapRes!2352))

(declare-fun b!528207 () Bool)

(declare-fun tp!167465 () Bool)

(assert (=> b!528207 (= e!317634 (and setRes!2633 tp!167465))))

(declare-fun condSetEmpty!2633 () Bool)

(assert (=> b!528207 (= condSetEmpty!2633 (= (_1!3317 (_1!3318 (h!10369 mapValue!2352))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setIsEmpty!2633 () Bool)

(assert (=> setIsEmpty!2633 setRes!2633))

(assert (= (and mapNonEmpty!2351 condMapEmpty!2352) mapIsEmpty!2352))

(assert (= (and mapNonEmpty!2351 (not condMapEmpty!2352)) mapNonEmpty!2352))

(assert (= (and b!528207 condSetEmpty!2633) setIsEmpty!2633))

(assert (= (and b!528207 (not condSetEmpty!2633)) setNonEmpty!2633))

(assert (= setNonEmpty!2633 b!528204))

(assert (= (and mapNonEmpty!2352 ((_ is Cons!4968) mapValue!2352)) b!528207))

(assert (= (and b!528206 condSetEmpty!2632) setIsEmpty!2632))

(assert (= (and b!528206 (not condSetEmpty!2632)) setNonEmpty!2632))

(assert (= setNonEmpty!2632 b!528205))

(assert (= (and mapNonEmpty!2351 ((_ is Cons!4968) mapDefault!2352)) b!528206))

(declare-fun m!774289 () Bool)

(assert (=> mapNonEmpty!2352 m!774289))

(declare-fun m!774291 () Bool)

(assert (=> setNonEmpty!2632 m!774291))

(declare-fun m!774293 () Bool)

(assert (=> setNonEmpty!2633 m!774293))

(declare-fun setRes!2634 () Bool)

(declare-fun setElem!2634 () Context!318)

(declare-fun tp!167469 () Bool)

(declare-fun setNonEmpty!2634 () Bool)

(declare-fun e!317638 () Bool)

(assert (=> setNonEmpty!2634 (= setRes!2634 (and tp!167469 (inv!6235 setElem!2634) e!317638))))

(declare-fun setRest!2634 () (InoxSet Context!318))

(assert (=> setNonEmpty!2634 (= (_1!3317 (_1!3318 (h!10369 (t!73590 mapDefault!2341)))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2634 true) setRest!2634))))

(declare-fun setIsEmpty!2634 () Bool)

(assert (=> setIsEmpty!2634 setRes!2634))

(declare-fun b!528209 () Bool)

(declare-fun tp!167471 () Bool)

(assert (=> b!528209 (= e!317638 tp!167471)))

(declare-fun e!317639 () Bool)

(assert (=> b!527755 (= tp!167379 e!317639)))

(declare-fun b!528208 () Bool)

(declare-fun tp!167470 () Bool)

(assert (=> b!528208 (= e!317639 (and setRes!2634 tp!167470))))

(declare-fun condSetEmpty!2634 () Bool)

(assert (=> b!528208 (= condSetEmpty!2634 (= (_1!3317 (_1!3318 (h!10369 (t!73590 mapDefault!2341)))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!528208 condSetEmpty!2634) setIsEmpty!2634))

(assert (= (and b!528208 (not condSetEmpty!2634)) setNonEmpty!2634))

(assert (= setNonEmpty!2634 b!528209))

(assert (= (and b!527755 ((_ is Cons!4968) (t!73590 mapDefault!2341))) b!528208))

(declare-fun m!774295 () Bool)

(assert (=> setNonEmpty!2634 m!774295))

(declare-fun e!317640 () Bool)

(assert (=> b!527738 (= tp!167357 e!317640)))

(declare-fun b!528212 () Bool)

(declare-fun tp!167476 () Bool)

(assert (=> b!528212 (= e!317640 tp!167476)))

(declare-fun b!528211 () Bool)

(declare-fun tp!167472 () Bool)

(declare-fun tp!167474 () Bool)

(assert (=> b!528211 (= e!317640 (and tp!167472 tp!167474))))

(declare-fun b!528210 () Bool)

(assert (=> b!528210 (= e!317640 tp_is_empty!2799)))

(declare-fun b!528213 () Bool)

(declare-fun tp!167475 () Bool)

(declare-fun tp!167473 () Bool)

(assert (=> b!528213 (= e!317640 (and tp!167475 tp!167473))))

(assert (= (and b!527738 ((_ is ElementMatch!1221) (reg!1550 (regex!893 (h!10374 rules!1345))))) b!528210))

(assert (= (and b!527738 ((_ is Concat!2138) (reg!1550 (regex!893 (h!10374 rules!1345))))) b!528211))

(assert (= (and b!527738 ((_ is Star!1221) (reg!1550 (regex!893 (h!10374 rules!1345))))) b!528212))

(assert (= (and b!527738 ((_ is Union!1221) (reg!1550 (regex!893 (h!10374 rules!1345))))) b!528213))

(declare-fun condSetEmpty!2635 () Bool)

(assert (=> setNonEmpty!2607 (= condSetEmpty!2635 (= setRest!2607 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2635 () Bool)

(assert (=> setNonEmpty!2607 (= tp!167340 setRes!2635)))

(declare-fun setIsEmpty!2635 () Bool)

(assert (=> setIsEmpty!2635 setRes!2635))

(declare-fun setElem!2635 () Context!318)

(declare-fun tp!167478 () Bool)

(declare-fun setNonEmpty!2635 () Bool)

(declare-fun e!317641 () Bool)

(assert (=> setNonEmpty!2635 (= setRes!2635 (and tp!167478 (inv!6235 setElem!2635) e!317641))))

(declare-fun setRest!2635 () (InoxSet Context!318))

(assert (=> setNonEmpty!2635 (= setRest!2607 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2635 true) setRest!2635))))

(declare-fun b!528214 () Bool)

(declare-fun tp!167477 () Bool)

(assert (=> b!528214 (= e!317641 tp!167477)))

(assert (= (and setNonEmpty!2607 condSetEmpty!2635) setIsEmpty!2635))

(assert (= (and setNonEmpty!2607 (not condSetEmpty!2635)) setNonEmpty!2635))

(assert (= setNonEmpty!2635 b!528214))

(declare-fun m!774297 () Bool)

(assert (=> setNonEmpty!2635 m!774297))

(declare-fun condSetEmpty!2636 () Bool)

(assert (=> setNonEmpty!2613 (= condSetEmpty!2636 (= setRest!2613 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2636 () Bool)

(assert (=> setNonEmpty!2613 (= tp!167378 setRes!2636)))

(declare-fun setIsEmpty!2636 () Bool)

(assert (=> setIsEmpty!2636 setRes!2636))

(declare-fun setNonEmpty!2636 () Bool)

(declare-fun e!317642 () Bool)

(declare-fun setElem!2636 () Context!318)

(declare-fun tp!167480 () Bool)

(assert (=> setNonEmpty!2636 (= setRes!2636 (and tp!167480 (inv!6235 setElem!2636) e!317642))))

(declare-fun setRest!2636 () (InoxSet Context!318))

(assert (=> setNonEmpty!2636 (= setRest!2613 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2636 true) setRest!2636))))

(declare-fun b!528215 () Bool)

(declare-fun tp!167479 () Bool)

(assert (=> b!528215 (= e!317642 tp!167479)))

(assert (= (and setNonEmpty!2613 condSetEmpty!2636) setIsEmpty!2636))

(assert (= (and setNonEmpty!2613 (not condSetEmpty!2636)) setNonEmpty!2636))

(assert (= setNonEmpty!2636 b!528215))

(declare-fun m!774299 () Bool)

(assert (=> setNonEmpty!2636 m!774299))

(declare-fun b!528216 () Bool)

(declare-fun e!317643 () Bool)

(declare-fun tp!167481 () Bool)

(declare-fun tp!167482 () Bool)

(assert (=> b!528216 (= e!317643 (and tp!167481 tp!167482))))

(assert (=> b!527742 (= tp!167358 e!317643)))

(assert (= (and b!527742 ((_ is Cons!4966) (exprs!659 setElem!2608))) b!528216))

(declare-fun b!528217 () Bool)

(declare-fun e!317644 () Bool)

(declare-fun tp!167483 () Bool)

(declare-fun tp!167484 () Bool)

(assert (=> b!528217 (= e!317644 (and tp!167483 tp!167484))))

(assert (=> b!527722 (= tp!167336 e!317644)))

(assert (= (and b!527722 ((_ is Cons!4966) (exprs!659 setElem!2605))) b!528217))

(declare-fun b!528218 () Bool)

(declare-fun e!317645 () Bool)

(declare-fun tp!167485 () Bool)

(declare-fun tp!167486 () Bool)

(assert (=> b!528218 (= e!317645 (and tp!167485 tp!167486))))

(assert (=> b!527748 (= tp!167371 e!317645)))

(assert (= (and b!527748 ((_ is Cons!4966) (exprs!659 setElem!2610))) b!528218))

(declare-fun condSetEmpty!2637 () Bool)

(assert (=> setNonEmpty!2606 (= condSetEmpty!2637 (= setRest!2605 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2637 () Bool)

(assert (=> setNonEmpty!2606 (= tp!167327 setRes!2637)))

(declare-fun setIsEmpty!2637 () Bool)

(assert (=> setIsEmpty!2637 setRes!2637))

(declare-fun setElem!2637 () Context!318)

(declare-fun tp!167488 () Bool)

(declare-fun e!317646 () Bool)

(declare-fun setNonEmpty!2637 () Bool)

(assert (=> setNonEmpty!2637 (= setRes!2637 (and tp!167488 (inv!6235 setElem!2637) e!317646))))

(declare-fun setRest!2637 () (InoxSet Context!318))

(assert (=> setNonEmpty!2637 (= setRest!2605 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2637 true) setRest!2637))))

(declare-fun b!528219 () Bool)

(declare-fun tp!167487 () Bool)

(assert (=> b!528219 (= e!317646 tp!167487)))

(assert (= (and setNonEmpty!2606 condSetEmpty!2637) setIsEmpty!2637))

(assert (= (and setNonEmpty!2606 (not condSetEmpty!2637)) setNonEmpty!2637))

(assert (= setNonEmpty!2637 b!528219))

(declare-fun m!774301 () Bool)

(assert (=> setNonEmpty!2637 m!774301))

(declare-fun b!528224 () Bool)

(declare-fun e!317649 () Bool)

(declare-fun tp!167491 () Bool)

(assert (=> b!528224 (= e!317649 (and tp_is_empty!2799 tp!167491))))

(assert (=> b!527790 (= tp!167424 e!317649)))

(assert (= (and b!527790 ((_ is Cons!4969) (innerList!1667 (xs!4246 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))))) b!528224))

(declare-fun condSetEmpty!2638 () Bool)

(assert (=> setNonEmpty!2608 (= condSetEmpty!2638 (= setRest!2608 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2638 () Bool)

(assert (=> setNonEmpty!2608 (= tp!167359 setRes!2638)))

(declare-fun setIsEmpty!2638 () Bool)

(assert (=> setIsEmpty!2638 setRes!2638))

(declare-fun tp!167493 () Bool)

(declare-fun e!317650 () Bool)

(declare-fun setElem!2638 () Context!318)

(declare-fun setNonEmpty!2638 () Bool)

(assert (=> setNonEmpty!2638 (= setRes!2638 (and tp!167493 (inv!6235 setElem!2638) e!317650))))

(declare-fun setRest!2638 () (InoxSet Context!318))

(assert (=> setNonEmpty!2638 (= setRest!2608 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2638 true) setRest!2638))))

(declare-fun b!528225 () Bool)

(declare-fun tp!167492 () Bool)

(assert (=> b!528225 (= e!317650 tp!167492)))

(assert (= (and setNonEmpty!2608 condSetEmpty!2638) setIsEmpty!2638))

(assert (= (and setNonEmpty!2608 (not condSetEmpty!2638)) setNonEmpty!2638))

(assert (= setNonEmpty!2638 b!528225))

(declare-fun m!774303 () Bool)

(assert (=> setNonEmpty!2638 m!774303))

(declare-fun b!528226 () Bool)

(declare-fun e!317651 () Bool)

(declare-fun tp!167494 () Bool)

(declare-fun tp!167495 () Bool)

(assert (=> b!528226 (= e!317651 (and tp!167494 tp!167495))))

(assert (=> b!527745 (= tp!167366 e!317651)))

(assert (= (and b!527745 ((_ is Cons!4966) (exprs!659 setElem!2609))) b!528226))

(declare-fun e!317672 () Bool)

(declare-fun e!317671 () Bool)

(declare-fun e!317676 () Bool)

(assert (=> d!187701 (= true (and e!317672 e!317671 e!317676))))

(declare-fun b!528247 () Bool)

(declare-fun e!317675 () Bool)

(declare-fun lt!218279 () MutLongMap!596)

(assert (=> b!528247 (= e!317675 ((_ is LongMap!596) lt!218279))))

(assert (=> b!528247 (= lt!218279 (v!16037 (underlying!1372 (cache!955 (_3!255 (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610) cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))))))

(declare-fun b!528248 () Bool)

(declare-fun e!317673 () Bool)

(declare-fun lt!218278 () MutLongMap!594)

(assert (=> b!528248 (= e!317673 ((_ is LongMap!594) lt!218278))))

(assert (=> b!528248 (= lt!218278 (v!16033 (underlying!1368 (cache!953 (_2!3322 (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610) cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))))))

(declare-fun b!528249 () Bool)

(declare-fun e!317670 () Bool)

(assert (=> b!528249 (= e!317670 e!317675)))

(declare-fun b!528250 () Bool)

(declare-fun e!317678 () Bool)

(assert (=> b!528250 (= e!317672 e!317678)))

(declare-fun b!528251 () Bool)

(assert (=> b!528251 (= e!317678 e!317673)))

(declare-fun b!528252 () Bool)

(declare-fun e!317677 () Bool)

(assert (=> b!528252 (= e!317676 e!317677)))

(declare-fun b!528253 () Bool)

(assert (=> b!528253 (= e!317671 e!317670)))

(declare-fun b!528254 () Bool)

(declare-fun e!317674 () Bool)

(declare-fun lt!218277 () MutLongMap!595)

(assert (=> b!528254 (= e!317674 ((_ is LongMap!595) lt!218277))))

(assert (=> b!528254 (= lt!218277 (v!16035 (underlying!1370 (cache!954 (_4!48 (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610) cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))))))

(declare-fun b!528255 () Bool)

(assert (=> b!528255 (= e!317677 e!317674)))

(assert (= b!528251 b!528248))

(assert (= (and b!528250 ((_ is HashMap!566) (cache!953 (_2!3322 (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610) cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))) b!528251))

(assert (= d!187701 b!528250))

(assert (= b!528249 b!528247))

(assert (= (and b!528253 ((_ is HashMap!568) (cache!955 (_3!255 (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610) cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))) b!528249))

(assert (= d!187701 b!528253))

(assert (= b!528255 b!528254))

(assert (= (and b!528252 ((_ is HashMap!567) (cache!954 (_4!48 (lexTailRecV3Mem!21 thiss!12147 rules!1345 input!747 (BalanceConc!3227 Empty!1609) input!747 (BalanceConc!3229 Empty!1610) cacheUp!449 cacheDown!462 cacheFurthestNullable!56))))) b!528255))

(assert (= d!187701 b!528252))

(declare-fun b!528256 () Bool)

(declare-fun e!317679 () Bool)

(declare-fun tp!167496 () Bool)

(declare-fun tp!167497 () Bool)

(assert (=> b!528256 (= e!317679 (and tp!167496 tp!167497))))

(assert (=> b!527688 (= tp!167282 e!317679)))

(assert (= (and b!527688 ((_ is Cons!4966) (exprs!659 setElem!2596))) b!528256))

(declare-fun b!528257 () Bool)

(declare-fun e!317680 () Bool)

(declare-fun tp!167498 () Bool)

(declare-fun tp!167499 () Bool)

(assert (=> b!528257 (= e!317680 (and tp!167498 tp!167499))))

(assert (=> b!527674 (= tp!167263 e!317680)))

(assert (= (and b!527674 ((_ is Cons!4966) (exprs!659 setElem!2591))) b!528257))

(declare-fun condSetEmpty!2639 () Bool)

(assert (=> setNonEmpty!2610 (= condSetEmpty!2639 (= setRest!2610 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2639 () Bool)

(assert (=> setNonEmpty!2610 (= tp!167369 setRes!2639)))

(declare-fun setIsEmpty!2639 () Bool)

(assert (=> setIsEmpty!2639 setRes!2639))

(declare-fun setElem!2639 () Context!318)

(declare-fun e!317681 () Bool)

(declare-fun tp!167501 () Bool)

(declare-fun setNonEmpty!2639 () Bool)

(assert (=> setNonEmpty!2639 (= setRes!2639 (and tp!167501 (inv!6235 setElem!2639) e!317681))))

(declare-fun setRest!2639 () (InoxSet Context!318))

(assert (=> setNonEmpty!2639 (= setRest!2610 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2639 true) setRest!2639))))

(declare-fun b!528258 () Bool)

(declare-fun tp!167500 () Bool)

(assert (=> b!528258 (= e!317681 tp!167500)))

(assert (= (and setNonEmpty!2610 condSetEmpty!2639) setIsEmpty!2639))

(assert (= (and setNonEmpty!2610 (not condSetEmpty!2639)) setNonEmpty!2639))

(assert (= setNonEmpty!2639 b!528258))

(declare-fun m!774305 () Bool)

(assert (=> setNonEmpty!2639 m!774305))

(declare-fun tp!167508 () Bool)

(declare-fun setNonEmpty!2640 () Bool)

(declare-fun e!317684 () Bool)

(declare-fun setElem!2640 () Context!318)

(declare-fun setRes!2641 () Bool)

(assert (=> setNonEmpty!2640 (= setRes!2641 (and tp!167508 (inv!6235 setElem!2640) e!317684))))

(declare-fun mapDefault!2353 () List!4977)

(declare-fun setRest!2641 () (InoxSet Context!318))

(assert (=> setNonEmpty!2640 (= (_2!3316 (h!10368 mapDefault!2353)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2640 true) setRest!2641))))

(declare-fun e!317686 () Bool)

(declare-fun b!528259 () Bool)

(declare-fun e!317683 () Bool)

(declare-fun tp!167509 () Bool)

(assert (=> b!528259 (= e!317683 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 mapDefault!2353)))) e!317686 tp_is_empty!2799 setRes!2641 tp!167509))))

(declare-fun condSetEmpty!2640 () Bool)

(assert (=> b!528259 (= condSetEmpty!2640 (= (_2!3316 (h!10368 mapDefault!2353)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2640 () Bool)

(declare-fun e!317687 () Bool)

(declare-fun tp!167507 () Bool)

(declare-fun b!528260 () Bool)

(declare-fun e!317685 () Bool)

(declare-fun mapValue!2353 () List!4977)

(assert (=> b!528260 (= e!317687 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 mapValue!2353)))) e!317685 tp_is_empty!2799 setRes!2640 tp!167507))))

(declare-fun condSetEmpty!2641 () Bool)

(assert (=> b!528260 (= condSetEmpty!2641 (= (_2!3316 (h!10368 mapValue!2353)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun condMapEmpty!2353 () Bool)

(assert (=> mapNonEmpty!2345 (= condMapEmpty!2353 (= mapRest!2345 ((as const (Array (_ BitVec 32) List!4977)) mapDefault!2353)))))

(declare-fun mapRes!2353 () Bool)

(assert (=> mapNonEmpty!2345 (= tp!167262 (and e!317683 mapRes!2353))))

(declare-fun tp!167506 () Bool)

(declare-fun setNonEmpty!2641 () Bool)

(declare-fun setElem!2641 () Context!318)

(declare-fun e!317682 () Bool)

(assert (=> setNonEmpty!2641 (= setRes!2640 (and tp!167506 (inv!6235 setElem!2641) e!317682))))

(declare-fun setRest!2640 () (InoxSet Context!318))

(assert (=> setNonEmpty!2641 (= (_2!3316 (h!10368 mapValue!2353)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2641 true) setRest!2640))))

(declare-fun mapIsEmpty!2353 () Bool)

(assert (=> mapIsEmpty!2353 mapRes!2353))

(declare-fun b!528261 () Bool)

(declare-fun tp!167510 () Bool)

(assert (=> b!528261 (= e!317682 tp!167510)))

(declare-fun setIsEmpty!2640 () Bool)

(assert (=> setIsEmpty!2640 setRes!2641))

(declare-fun b!528262 () Bool)

(declare-fun tp!167502 () Bool)

(assert (=> b!528262 (= e!317685 tp!167502)))

(declare-fun b!528263 () Bool)

(declare-fun tp!167505 () Bool)

(assert (=> b!528263 (= e!317686 tp!167505)))

(declare-fun b!528264 () Bool)

(declare-fun tp!167504 () Bool)

(assert (=> b!528264 (= e!317684 tp!167504)))

(declare-fun setIsEmpty!2641 () Bool)

(assert (=> setIsEmpty!2641 setRes!2640))

(declare-fun mapNonEmpty!2353 () Bool)

(declare-fun tp!167503 () Bool)

(assert (=> mapNonEmpty!2353 (= mapRes!2353 (and tp!167503 e!317687))))

(declare-fun mapKey!2353 () (_ BitVec 32))

(declare-fun mapRest!2353 () (Array (_ BitVec 32) List!4977))

(assert (=> mapNonEmpty!2353 (= mapRest!2345 (store mapRest!2353 mapKey!2353 mapValue!2353))))

(assert (= (and mapNonEmpty!2345 condMapEmpty!2353) mapIsEmpty!2353))

(assert (= (and mapNonEmpty!2345 (not condMapEmpty!2353)) mapNonEmpty!2353))

(assert (= b!528260 b!528262))

(assert (= (and b!528260 condSetEmpty!2641) setIsEmpty!2641))

(assert (= (and b!528260 (not condSetEmpty!2641)) setNonEmpty!2641))

(assert (= setNonEmpty!2641 b!528261))

(assert (= (and mapNonEmpty!2353 ((_ is Cons!4967) mapValue!2353)) b!528260))

(assert (= b!528259 b!528263))

(assert (= (and b!528259 condSetEmpty!2640) setIsEmpty!2640))

(assert (= (and b!528259 (not condSetEmpty!2640)) setNonEmpty!2640))

(assert (= setNonEmpty!2640 b!528264))

(assert (= (and mapNonEmpty!2345 ((_ is Cons!4967) mapDefault!2353)) b!528259))

(declare-fun m!774307 () Bool)

(assert (=> b!528259 m!774307))

(declare-fun m!774309 () Bool)

(assert (=> setNonEmpty!2640 m!774309))

(declare-fun m!774311 () Bool)

(assert (=> b!528260 m!774311))

(declare-fun m!774313 () Bool)

(assert (=> mapNonEmpty!2353 m!774313))

(declare-fun m!774315 () Bool)

(assert (=> setNonEmpty!2641 m!774315))

(declare-fun tp!167511 () Bool)

(declare-fun b!528265 () Bool)

(declare-fun tp!167513 () Bool)

(declare-fun e!317688 () Bool)

(assert (=> b!528265 (= e!317688 (and (inv!6228 (left!4223 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) tp!167513 (inv!6228 (right!4553 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) tp!167511))))

(declare-fun b!528267 () Bool)

(declare-fun e!317689 () Bool)

(declare-fun tp!167512 () Bool)

(assert (=> b!528267 (= e!317689 tp!167512)))

(declare-fun b!528266 () Bool)

(assert (=> b!528266 (= e!317688 (and (inv!6234 (xs!4246 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) e!317689))))

(assert (=> b!527788 (= tp!167425 (and (inv!6228 (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) e!317688))))

(assert (= (and b!527788 ((_ is Node!1609) (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) b!528265))

(assert (= b!528266 b!528267))

(assert (= (and b!527788 ((_ is Leaf!2560) (left!4223 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) b!528266))

(declare-fun m!774317 () Bool)

(assert (=> b!528265 m!774317))

(declare-fun m!774319 () Bool)

(assert (=> b!528265 m!774319))

(declare-fun m!774321 () Bool)

(assert (=> b!528266 m!774321))

(assert (=> b!527788 m!773440))

(declare-fun tp!167514 () Bool)

(declare-fun tp!167516 () Bool)

(declare-fun b!528268 () Bool)

(declare-fun e!317690 () Bool)

(assert (=> b!528268 (= e!317690 (and (inv!6228 (left!4223 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) tp!167516 (inv!6228 (right!4553 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) tp!167514))))

(declare-fun b!528270 () Bool)

(declare-fun e!317691 () Bool)

(declare-fun tp!167515 () Bool)

(assert (=> b!528270 (= e!317691 tp!167515)))

(declare-fun b!528269 () Bool)

(assert (=> b!528269 (= e!317690 (and (inv!6234 (xs!4246 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) e!317691))))

(assert (=> b!527788 (= tp!167423 (and (inv!6228 (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56)))) e!317690))))

(assert (= (and b!527788 ((_ is Node!1609) (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) b!528268))

(assert (= b!528269 b!528270))

(assert (= (and b!527788 ((_ is Leaf!2560) (right!4553 (c!101090 (totalInput!1751 cacheFurthestNullable!56))))) b!528269))

(declare-fun m!774323 () Bool)

(assert (=> b!528268 m!774323))

(declare-fun m!774325 () Bool)

(assert (=> b!528268 m!774325))

(declare-fun m!774327 () Bool)

(assert (=> b!528269 m!774327))

(assert (=> b!527788 m!773442))

(declare-fun condSetEmpty!2642 () Bool)

(assert (=> setNonEmpty!2595 (= condSetEmpty!2642 (= setRest!2595 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2642 () Bool)

(assert (=> setNonEmpty!2595 (= tp!167279 setRes!2642)))

(declare-fun setIsEmpty!2642 () Bool)

(assert (=> setIsEmpty!2642 setRes!2642))

(declare-fun setElem!2642 () Context!318)

(declare-fun tp!167518 () Bool)

(declare-fun setNonEmpty!2642 () Bool)

(declare-fun e!317692 () Bool)

(assert (=> setNonEmpty!2642 (= setRes!2642 (and tp!167518 (inv!6235 setElem!2642) e!317692))))

(declare-fun setRest!2642 () (InoxSet Context!318))

(assert (=> setNonEmpty!2642 (= setRest!2595 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2642 true) setRest!2642))))

(declare-fun b!528271 () Bool)

(declare-fun tp!167517 () Bool)

(assert (=> b!528271 (= e!317692 tp!167517)))

(assert (= (and setNonEmpty!2595 condSetEmpty!2642) setIsEmpty!2642))

(assert (= (and setNonEmpty!2595 (not condSetEmpty!2642)) setNonEmpty!2642))

(assert (= setNonEmpty!2642 b!528271))

(declare-fun m!774329 () Bool)

(assert (=> setNonEmpty!2642 m!774329))

(declare-fun b!528272 () Bool)

(declare-fun e!317693 () Bool)

(declare-fun tp!167519 () Bool)

(declare-fun tp!167520 () Bool)

(assert (=> b!528272 (= e!317693 (and tp!167519 tp!167520))))

(assert (=> b!527741 (= tp!167360 e!317693)))

(assert (= (and b!527741 ((_ is Cons!4966) (exprs!659 (_1!3315 (_1!3316 (h!10368 mapDefault!2340)))))) b!528272))

(declare-fun condSetEmpty!2643 () Bool)

(assert (=> setNonEmpty!2609 (= condSetEmpty!2643 (= setRest!2609 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2643 () Bool)

(assert (=> setNonEmpty!2609 (= tp!167364 setRes!2643)))

(declare-fun setIsEmpty!2643 () Bool)

(assert (=> setIsEmpty!2643 setRes!2643))

(declare-fun setNonEmpty!2643 () Bool)

(declare-fun tp!167522 () Bool)

(declare-fun setElem!2643 () Context!318)

(declare-fun e!317694 () Bool)

(assert (=> setNonEmpty!2643 (= setRes!2643 (and tp!167522 (inv!6235 setElem!2643) e!317694))))

(declare-fun setRest!2643 () (InoxSet Context!318))

(assert (=> setNonEmpty!2643 (= setRest!2609 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2643 true) setRest!2643))))

(declare-fun b!528273 () Bool)

(declare-fun tp!167521 () Bool)

(assert (=> b!528273 (= e!317694 tp!167521)))

(assert (= (and setNonEmpty!2609 condSetEmpty!2643) setIsEmpty!2643))

(assert (= (and setNonEmpty!2609 (not condSetEmpty!2643)) setNonEmpty!2643))

(assert (= setNonEmpty!2643 b!528273))

(declare-fun m!774331 () Bool)

(assert (=> setNonEmpty!2643 m!774331))

(declare-fun b!528274 () Bool)

(declare-fun e!317695 () Bool)

(declare-fun tp!167523 () Bool)

(declare-fun tp!167524 () Bool)

(assert (=> b!528274 (= e!317695 (and tp!167523 tp!167524))))

(assert (=> b!527717 (= tp!167335 e!317695)))

(assert (= (and b!527717 ((_ is Cons!4966) (exprs!659 (_2!3319 (_1!3320 (h!10371 mapValue!2348)))))) b!528274))

(declare-fun b!528275 () Bool)

(declare-fun e!317696 () Bool)

(declare-fun tp!167525 () Bool)

(declare-fun tp!167526 () Bool)

(assert (=> b!528275 (= e!317696 (and tp!167525 tp!167526))))

(assert (=> b!527672 (= tp!167261 e!317696)))

(assert (= (and b!527672 ((_ is Cons!4966) (exprs!659 (_1!3315 (_1!3316 (h!10368 mapValue!2345)))))) b!528275))

(declare-fun b!528276 () Bool)

(declare-fun e!317697 () Bool)

(declare-fun tp!167527 () Bool)

(declare-fun tp!167528 () Bool)

(assert (=> b!528276 (= e!317697 (and tp!167527 tp!167528))))

(assert (=> b!527684 (= tp!167280 e!317697)))

(assert (= (and b!527684 ((_ is Cons!4966) (exprs!659 (_1!3315 (_1!3316 (h!10368 mapValue!2340)))))) b!528276))

(declare-fun condSetEmpty!2644 () Bool)

(assert (=> setNonEmpty!2597 (= condSetEmpty!2644 (= setRest!2597 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2644 () Bool)

(assert (=> setNonEmpty!2597 (= tp!167287 setRes!2644)))

(declare-fun setIsEmpty!2644 () Bool)

(assert (=> setIsEmpty!2644 setRes!2644))

(declare-fun tp!167530 () Bool)

(declare-fun e!317698 () Bool)

(declare-fun setNonEmpty!2644 () Bool)

(declare-fun setElem!2644 () Context!318)

(assert (=> setNonEmpty!2644 (= setRes!2644 (and tp!167530 (inv!6235 setElem!2644) e!317698))))

(declare-fun setRest!2644 () (InoxSet Context!318))

(assert (=> setNonEmpty!2644 (= setRest!2597 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2644 true) setRest!2644))))

(declare-fun b!528277 () Bool)

(declare-fun tp!167529 () Bool)

(assert (=> b!528277 (= e!317698 tp!167529)))

(assert (= (and setNonEmpty!2597 condSetEmpty!2644) setIsEmpty!2644))

(assert (= (and setNonEmpty!2597 (not condSetEmpty!2644)) setNonEmpty!2644))

(assert (= setNonEmpty!2644 b!528277))

(declare-fun m!774333 () Bool)

(assert (=> setNonEmpty!2644 m!774333))

(declare-fun b!528278 () Bool)

(declare-fun e!317699 () Bool)

(declare-fun tp!167531 () Bool)

(declare-fun tp!167532 () Bool)

(assert (=> b!528278 (= e!317699 (and tp!167531 tp!167532))))

(assert (=> b!527785 (= tp!167419 e!317699)))

(assert (= (and b!527785 ((_ is Cons!4966) (exprs!659 setElem!2621))) b!528278))

(declare-fun e!317700 () Bool)

(assert (=> b!527718 (= tp!167333 e!317700)))

(declare-fun b!528281 () Bool)

(declare-fun tp!167537 () Bool)

(assert (=> b!528281 (= e!317700 tp!167537)))

(declare-fun b!528280 () Bool)

(declare-fun tp!167533 () Bool)

(declare-fun tp!167535 () Bool)

(assert (=> b!528280 (= e!317700 (and tp!167533 tp!167535))))

(declare-fun b!528279 () Bool)

(assert (=> b!528279 (= e!317700 tp_is_empty!2799)))

(declare-fun b!528282 () Bool)

(declare-fun tp!167536 () Bool)

(declare-fun tp!167534 () Bool)

(assert (=> b!528282 (= e!317700 (and tp!167536 tp!167534))))

(assert (= (and b!527718 ((_ is ElementMatch!1221) (_1!3319 (_1!3320 (h!10371 mapValue!2348))))) b!528279))

(assert (= (and b!527718 ((_ is Concat!2138) (_1!3319 (_1!3320 (h!10371 mapValue!2348))))) b!528280))

(assert (= (and b!527718 ((_ is Star!1221) (_1!3319 (_1!3320 (h!10371 mapValue!2348))))) b!528281))

(assert (= (and b!527718 ((_ is Union!1221) (_1!3319 (_1!3320 (h!10371 mapValue!2348))))) b!528282))

(declare-fun e!317702 () Bool)

(declare-fun tp!167541 () Bool)

(declare-fun tp!167538 () Bool)

(declare-fun b!528283 () Bool)

(declare-fun setRes!2645 () Bool)

(declare-fun e!317703 () Bool)

(assert (=> b!528283 (= e!317703 (and tp!167538 (inv!6235 (_2!3319 (_1!3320 (h!10371 (t!73592 mapValue!2348))))) e!317702 tp_is_empty!2799 setRes!2645 tp!167541))))

(declare-fun condSetEmpty!2645 () Bool)

(assert (=> b!528283 (= condSetEmpty!2645 (= (_2!3320 (h!10371 (t!73592 mapValue!2348))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setElem!2645 () Context!318)

(declare-fun e!317701 () Bool)

(declare-fun setNonEmpty!2645 () Bool)

(declare-fun tp!167540 () Bool)

(assert (=> setNonEmpty!2645 (= setRes!2645 (and tp!167540 (inv!6235 setElem!2645) e!317701))))

(declare-fun setRest!2645 () (InoxSet Context!318))

(assert (=> setNonEmpty!2645 (= (_2!3320 (h!10371 (t!73592 mapValue!2348))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2645 true) setRest!2645))))

(assert (=> b!527718 (= tp!167328 e!317703)))

(declare-fun b!528284 () Bool)

(declare-fun tp!167539 () Bool)

(assert (=> b!528284 (= e!317702 tp!167539)))

(declare-fun b!528285 () Bool)

(declare-fun tp!167542 () Bool)

(assert (=> b!528285 (= e!317701 tp!167542)))

(declare-fun setIsEmpty!2645 () Bool)

(assert (=> setIsEmpty!2645 setRes!2645))

(assert (= b!528283 b!528284))

(assert (= (and b!528283 condSetEmpty!2645) setIsEmpty!2645))

(assert (= (and b!528283 (not condSetEmpty!2645)) setNonEmpty!2645))

(assert (= setNonEmpty!2645 b!528285))

(assert (= (and b!527718 ((_ is Cons!4970) (t!73592 mapValue!2348))) b!528283))

(declare-fun m!774335 () Bool)

(assert (=> b!528283 m!774335))

(declare-fun m!774337 () Bool)

(assert (=> setNonEmpty!2645 m!774337))

(declare-fun e!317704 () Bool)

(declare-fun tp!167543 () Bool)

(declare-fun setNonEmpty!2646 () Bool)

(declare-fun setElem!2646 () Context!318)

(declare-fun setRes!2646 () Bool)

(assert (=> setNonEmpty!2646 (= setRes!2646 (and tp!167543 (inv!6235 setElem!2646) e!317704))))

(declare-fun setRest!2646 () (InoxSet Context!318))

(assert (=> setNonEmpty!2646 (= (_1!3317 (_1!3318 (h!10369 (t!73590 mapValue!2351)))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2646 true) setRest!2646))))

(declare-fun setIsEmpty!2646 () Bool)

(assert (=> setIsEmpty!2646 setRes!2646))

(declare-fun b!528287 () Bool)

(declare-fun tp!167545 () Bool)

(assert (=> b!528287 (= e!317704 tp!167545)))

(declare-fun e!317705 () Bool)

(assert (=> b!527770 (= tp!167398 e!317705)))

(declare-fun b!528286 () Bool)

(declare-fun tp!167544 () Bool)

(assert (=> b!528286 (= e!317705 (and setRes!2646 tp!167544))))

(declare-fun condSetEmpty!2646 () Bool)

(assert (=> b!528286 (= condSetEmpty!2646 (= (_1!3317 (_1!3318 (h!10369 (t!73590 mapValue!2351)))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!528286 condSetEmpty!2646) setIsEmpty!2646))

(assert (= (and b!528286 (not condSetEmpty!2646)) setNonEmpty!2646))

(assert (= setNonEmpty!2646 b!528287))

(assert (= (and b!527770 ((_ is Cons!4968) (t!73590 mapValue!2351))) b!528286))

(declare-fun m!774339 () Bool)

(assert (=> setNonEmpty!2646 m!774339))

(declare-fun b!528288 () Bool)

(declare-fun e!317706 () Bool)

(declare-fun tp!167546 () Bool)

(declare-fun tp!167547 () Bool)

(assert (=> b!528288 (= e!317706 (and tp!167546 tp!167547))))

(assert (=> b!527702 (= tp!167304 e!317706)))

(assert (= (and b!527702 ((_ is Cons!4966) (exprs!659 setElem!2600))) b!528288))

(declare-fun setRes!2647 () Bool)

(declare-fun e!317708 () Bool)

(declare-fun e!317709 () Bool)

(declare-fun b!528289 () Bool)

(declare-fun tp!167551 () Bool)

(assert (=> b!528289 (= e!317708 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 (t!73589 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))))))) e!317709 tp_is_empty!2799 setRes!2647 tp!167551))))

(declare-fun condSetEmpty!2647 () Bool)

(assert (=> b!528289 (= condSetEmpty!2647 (= (_2!3316 (h!10368 (t!73589 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!528290 () Bool)

(declare-fun tp!167550 () Bool)

(assert (=> b!528290 (= e!317709 tp!167550)))

(declare-fun setIsEmpty!2647 () Bool)

(assert (=> setIsEmpty!2647 setRes!2647))

(assert (=> b!527686 (= tp!167285 e!317708)))

(declare-fun setElem!2647 () Context!318)

(declare-fun e!317707 () Bool)

(declare-fun tp!167549 () Bool)

(declare-fun setNonEmpty!2647 () Bool)

(assert (=> setNonEmpty!2647 (= setRes!2647 (and tp!167549 (inv!6235 setElem!2647) e!317707))))

(declare-fun setRest!2647 () (InoxSet Context!318))

(assert (=> setNonEmpty!2647 (= (_2!3316 (h!10368 (t!73589 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2647 true) setRest!2647))))

(declare-fun b!528291 () Bool)

(declare-fun tp!167548 () Bool)

(assert (=> b!528291 (= e!317707 tp!167548)))

(assert (= b!528289 b!528290))

(assert (= (and b!528289 condSetEmpty!2647) setIsEmpty!2647))

(assert (= (and b!528289 (not condSetEmpty!2647)) setNonEmpty!2647))

(assert (= setNonEmpty!2647 b!528291))

(assert (= (and b!527686 ((_ is Cons!4967) (t!73589 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))))) b!528289))

(declare-fun m!774341 () Bool)

(assert (=> b!528289 m!774341))

(declare-fun m!774343 () Bool)

(assert (=> setNonEmpty!2647 m!774343))

(declare-fun b!528292 () Bool)

(declare-fun e!317710 () Bool)

(declare-fun tp!167552 () Bool)

(declare-fun tp!167553 () Bool)

(assert (=> b!528292 (= e!317710 (and tp!167552 tp!167553))))

(assert (=> b!527671 (= tp!167269 e!317710)))

(assert (= (and b!527671 ((_ is Cons!4966) (exprs!659 setElem!2592))) b!528292))

(declare-fun b!528293 () Bool)

(declare-fun e!317711 () Bool)

(declare-fun tp!167554 () Bool)

(declare-fun tp!167555 () Bool)

(assert (=> b!528293 (= e!317711 (and tp!167554 tp!167555))))

(assert (=> b!527690 (= tp!167288 e!317711)))

(assert (= (and b!527690 ((_ is Cons!4966) (exprs!659 (_1!3315 (_1!3316 (h!10368 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))))))) b!528293))

(declare-fun condSetEmpty!2648 () Bool)

(assert (=> setNonEmpty!2622 (= condSetEmpty!2648 (= setRest!2622 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2648 () Bool)

(assert (=> setNonEmpty!2622 (= tp!167420 setRes!2648)))

(declare-fun setIsEmpty!2648 () Bool)

(assert (=> setIsEmpty!2648 setRes!2648))

(declare-fun e!317712 () Bool)

(declare-fun setElem!2648 () Context!318)

(declare-fun tp!167557 () Bool)

(declare-fun setNonEmpty!2648 () Bool)

(assert (=> setNonEmpty!2648 (= setRes!2648 (and tp!167557 (inv!6235 setElem!2648) e!317712))))

(declare-fun setRest!2648 () (InoxSet Context!318))

(assert (=> setNonEmpty!2648 (= setRest!2622 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2648 true) setRest!2648))))

(declare-fun b!528294 () Bool)

(declare-fun tp!167556 () Bool)

(assert (=> b!528294 (= e!317712 tp!167556)))

(assert (= (and setNonEmpty!2622 condSetEmpty!2648) setIsEmpty!2648))

(assert (= (and setNonEmpty!2622 (not condSetEmpty!2648)) setNonEmpty!2648))

(assert (= setNonEmpty!2648 b!528294))

(declare-fun m!774345 () Bool)

(assert (=> setNonEmpty!2648 m!774345))

(declare-fun tp!167558 () Bool)

(declare-fun setNonEmpty!2649 () Bool)

(declare-fun setRes!2649 () Bool)

(declare-fun setElem!2649 () Context!318)

(declare-fun e!317713 () Bool)

(assert (=> setNonEmpty!2649 (= setRes!2649 (and tp!167558 (inv!6235 setElem!2649) e!317713))))

(declare-fun setRest!2649 () (InoxSet Context!318))

(assert (=> setNonEmpty!2649 (= (_1!3317 (_1!3318 (h!10369 (t!73590 mapDefault!2351)))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2649 true) setRest!2649))))

(declare-fun setIsEmpty!2649 () Bool)

(assert (=> setIsEmpty!2649 setRes!2649))

(declare-fun b!528296 () Bool)

(declare-fun tp!167560 () Bool)

(assert (=> b!528296 (= e!317713 tp!167560)))

(declare-fun e!317714 () Bool)

(assert (=> b!527769 (= tp!167397 e!317714)))

(declare-fun b!528295 () Bool)

(declare-fun tp!167559 () Bool)

(assert (=> b!528295 (= e!317714 (and setRes!2649 tp!167559))))

(declare-fun condSetEmpty!2649 () Bool)

(assert (=> b!528295 (= condSetEmpty!2649 (= (_1!3317 (_1!3318 (h!10369 (t!73590 mapDefault!2351)))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!528295 condSetEmpty!2649) setIsEmpty!2649))

(assert (= (and b!528295 (not condSetEmpty!2649)) setNonEmpty!2649))

(assert (= setNonEmpty!2649 b!528296))

(assert (= (and b!527769 ((_ is Cons!4968) (t!73590 mapDefault!2351))) b!528295))

(declare-fun m!774347 () Bool)

(assert (=> setNonEmpty!2649 m!774347))

(declare-fun e!317715 () Bool)

(assert (=> b!527700 (= tp!167300 e!317715)))

(declare-fun b!528299 () Bool)

(declare-fun tp!167565 () Bool)

(assert (=> b!528299 (= e!317715 tp!167565)))

(declare-fun b!528298 () Bool)

(declare-fun tp!167561 () Bool)

(declare-fun tp!167563 () Bool)

(assert (=> b!528298 (= e!317715 (and tp!167561 tp!167563))))

(declare-fun b!528297 () Bool)

(assert (=> b!528297 (= e!317715 tp_is_empty!2799)))

(declare-fun b!528300 () Bool)

(declare-fun tp!167564 () Bool)

(declare-fun tp!167562 () Bool)

(assert (=> b!528300 (= e!317715 (and tp!167564 tp!167562))))

(assert (= (and b!527700 ((_ is ElementMatch!1221) (_1!3319 (_1!3320 (h!10371 mapDefault!2342))))) b!528297))

(assert (= (and b!527700 ((_ is Concat!2138) (_1!3319 (_1!3320 (h!10371 mapDefault!2342))))) b!528298))

(assert (= (and b!527700 ((_ is Star!1221) (_1!3319 (_1!3320 (h!10371 mapDefault!2342))))) b!528299))

(assert (= (and b!527700 ((_ is Union!1221) (_1!3319 (_1!3320 (h!10371 mapDefault!2342))))) b!528300))

(declare-fun tp!167569 () Bool)

(declare-fun setRes!2650 () Bool)

(declare-fun b!528301 () Bool)

(declare-fun e!317717 () Bool)

(declare-fun tp!167566 () Bool)

(declare-fun e!317718 () Bool)

(assert (=> b!528301 (= e!317718 (and tp!167566 (inv!6235 (_2!3319 (_1!3320 (h!10371 (t!73592 mapDefault!2342))))) e!317717 tp_is_empty!2799 setRes!2650 tp!167569))))

(declare-fun condSetEmpty!2650 () Bool)

(assert (=> b!528301 (= condSetEmpty!2650 (= (_2!3320 (h!10371 (t!73592 mapDefault!2342))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setElem!2650 () Context!318)

(declare-fun tp!167568 () Bool)

(declare-fun setNonEmpty!2650 () Bool)

(declare-fun e!317716 () Bool)

(assert (=> setNonEmpty!2650 (= setRes!2650 (and tp!167568 (inv!6235 setElem!2650) e!317716))))

(declare-fun setRest!2650 () (InoxSet Context!318))

(assert (=> setNonEmpty!2650 (= (_2!3320 (h!10371 (t!73592 mapDefault!2342))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2650 true) setRest!2650))))

(assert (=> b!527700 (= tp!167303 e!317718)))

(declare-fun b!528302 () Bool)

(declare-fun tp!167567 () Bool)

(assert (=> b!528302 (= e!317717 tp!167567)))

(declare-fun b!528303 () Bool)

(declare-fun tp!167570 () Bool)

(assert (=> b!528303 (= e!317716 tp!167570)))

(declare-fun setIsEmpty!2650 () Bool)

(assert (=> setIsEmpty!2650 setRes!2650))

(assert (= b!528301 b!528302))

(assert (= (and b!528301 condSetEmpty!2650) setIsEmpty!2650))

(assert (= (and b!528301 (not condSetEmpty!2650)) setNonEmpty!2650))

(assert (= setNonEmpty!2650 b!528303))

(assert (= (and b!527700 ((_ is Cons!4970) (t!73592 mapDefault!2342))) b!528301))

(declare-fun m!774349 () Bool)

(assert (=> b!528301 m!774349))

(declare-fun m!774351 () Bool)

(assert (=> setNonEmpty!2650 m!774351))

(declare-fun b!528304 () Bool)

(declare-fun e!317719 () Bool)

(declare-fun tp!167571 () Bool)

(declare-fun tp!167572 () Bool)

(assert (=> b!528304 (= e!317719 (and tp!167571 tp!167572))))

(assert (=> b!527772 (= tp!167404 e!317719)))

(assert (= (and b!527772 ((_ is Cons!4966) (exprs!659 setElem!2620))) b!528304))

(declare-fun e!317722 () Bool)

(declare-fun e!317721 () Bool)

(declare-fun b!528305 () Bool)

(declare-fun setRes!2651 () Bool)

(declare-fun tp!167576 () Bool)

(assert (=> b!528305 (= e!317721 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 (t!73589 mapValue!2345))))) e!317722 tp_is_empty!2799 setRes!2651 tp!167576))))

(declare-fun condSetEmpty!2651 () Bool)

(assert (=> b!528305 (= condSetEmpty!2651 (= (_2!3316 (h!10368 (t!73589 mapValue!2345))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!528306 () Bool)

(declare-fun tp!167575 () Bool)

(assert (=> b!528306 (= e!317722 tp!167575)))

(declare-fun setIsEmpty!2651 () Bool)

(assert (=> setIsEmpty!2651 setRes!2651))

(assert (=> b!527670 (= tp!167266 e!317721)))

(declare-fun setElem!2651 () Context!318)

(declare-fun tp!167574 () Bool)

(declare-fun setNonEmpty!2651 () Bool)

(declare-fun e!317720 () Bool)

(assert (=> setNonEmpty!2651 (= setRes!2651 (and tp!167574 (inv!6235 setElem!2651) e!317720))))

(declare-fun setRest!2651 () (InoxSet Context!318))

(assert (=> setNonEmpty!2651 (= (_2!3316 (h!10368 (t!73589 mapValue!2345))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2651 true) setRest!2651))))

(declare-fun b!528307 () Bool)

(declare-fun tp!167573 () Bool)

(assert (=> b!528307 (= e!317720 tp!167573)))

(assert (= b!528305 b!528306))

(assert (= (and b!528305 condSetEmpty!2651) setIsEmpty!2651))

(assert (= (and b!528305 (not condSetEmpty!2651)) setNonEmpty!2651))

(assert (= setNonEmpty!2651 b!528307))

(assert (= (and b!527670 ((_ is Cons!4967) (t!73589 mapValue!2345))) b!528305))

(declare-fun m!774353 () Bool)

(assert (=> b!528305 m!774353))

(declare-fun m!774355 () Bool)

(assert (=> setNonEmpty!2651 m!774355))

(declare-fun b!528308 () Bool)

(declare-fun e!317723 () Bool)

(declare-fun tp!167577 () Bool)

(assert (=> b!528308 (= e!317723 (and tp_is_empty!2799 tp!167577))))

(assert (=> b!527654 (= tp!167241 e!317723)))

(assert (= (and b!527654 ((_ is Cons!4969) (innerList!1667 (xs!4246 (c!101090 input!747))))) b!528308))

(declare-fun b!528309 () Bool)

(declare-fun e!317724 () Bool)

(declare-fun tp!167578 () Bool)

(declare-fun tp!167579 () Bool)

(assert (=> b!528309 (= e!317724 (and tp!167578 tp!167579))))

(assert (=> b!527756 (= tp!167380 e!317724)))

(assert (= (and b!527756 ((_ is Cons!4966) (exprs!659 setElem!2613))) b!528309))

(declare-fun e!317725 () Bool)

(assert (=> b!527739 (= tp!167356 e!317725)))

(declare-fun b!528312 () Bool)

(declare-fun tp!167584 () Bool)

(assert (=> b!528312 (= e!317725 tp!167584)))

(declare-fun b!528311 () Bool)

(declare-fun tp!167580 () Bool)

(declare-fun tp!167582 () Bool)

(assert (=> b!528311 (= e!317725 (and tp!167580 tp!167582))))

(declare-fun b!528310 () Bool)

(assert (=> b!528310 (= e!317725 tp_is_empty!2799)))

(declare-fun b!528313 () Bool)

(declare-fun tp!167583 () Bool)

(declare-fun tp!167581 () Bool)

(assert (=> b!528313 (= e!317725 (and tp!167583 tp!167581))))

(assert (= (and b!527739 ((_ is ElementMatch!1221) (regOne!2955 (regex!893 (h!10374 rules!1345))))) b!528310))

(assert (= (and b!527739 ((_ is Concat!2138) (regOne!2955 (regex!893 (h!10374 rules!1345))))) b!528311))

(assert (= (and b!527739 ((_ is Star!1221) (regOne!2955 (regex!893 (h!10374 rules!1345))))) b!528312))

(assert (= (and b!527739 ((_ is Union!1221) (regOne!2955 (regex!893 (h!10374 rules!1345))))) b!528313))

(declare-fun e!317726 () Bool)

(assert (=> b!527739 (= tp!167354 e!317726)))

(declare-fun b!528316 () Bool)

(declare-fun tp!167589 () Bool)

(assert (=> b!528316 (= e!317726 tp!167589)))

(declare-fun b!528315 () Bool)

(declare-fun tp!167585 () Bool)

(declare-fun tp!167587 () Bool)

(assert (=> b!528315 (= e!317726 (and tp!167585 tp!167587))))

(declare-fun b!528314 () Bool)

(assert (=> b!528314 (= e!317726 tp_is_empty!2799)))

(declare-fun b!528317 () Bool)

(declare-fun tp!167588 () Bool)

(declare-fun tp!167586 () Bool)

(assert (=> b!528317 (= e!317726 (and tp!167588 tp!167586))))

(assert (= (and b!527739 ((_ is ElementMatch!1221) (regTwo!2955 (regex!893 (h!10374 rules!1345))))) b!528314))

(assert (= (and b!527739 ((_ is Concat!2138) (regTwo!2955 (regex!893 (h!10374 rules!1345))))) b!528315))

(assert (= (and b!527739 ((_ is Star!1221) (regTwo!2955 (regex!893 (h!10374 rules!1345))))) b!528316))

(assert (= (and b!527739 ((_ is Union!1221) (regTwo!2955 (regex!893 (h!10374 rules!1345))))) b!528317))

(declare-fun setNonEmpty!2652 () Bool)

(declare-fun tp!167590 () Bool)

(declare-fun e!317727 () Bool)

(declare-fun setElem!2652 () Context!318)

(declare-fun setRes!2652 () Bool)

(assert (=> setNonEmpty!2652 (= setRes!2652 (and tp!167590 (inv!6235 setElem!2652) e!317727))))

(declare-fun setRest!2652 () (InoxSet Context!318))

(assert (=> setNonEmpty!2652 (= (_1!3317 (_1!3318 (h!10369 (t!73590 (minValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2652 true) setRest!2652))))

(declare-fun setIsEmpty!2652 () Bool)

(assert (=> setIsEmpty!2652 setRes!2652))

(declare-fun b!528319 () Bool)

(declare-fun tp!167592 () Bool)

(assert (=> b!528319 (= e!317727 tp!167592)))

(declare-fun e!317728 () Bool)

(assert (=> b!527786 (= tp!167421 e!317728)))

(declare-fun b!528318 () Bool)

(declare-fun tp!167591 () Bool)

(assert (=> b!528318 (= e!317728 (and setRes!2652 tp!167591))))

(declare-fun condSetEmpty!2652 () Bool)

(assert (=> b!528318 (= condSetEmpty!2652 (= (_1!3317 (_1!3318 (h!10369 (t!73590 (minValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56)))))))))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!528318 condSetEmpty!2652) setIsEmpty!2652))

(assert (= (and b!528318 (not condSetEmpty!2652)) setNonEmpty!2652))

(assert (= setNonEmpty!2652 b!528319))

(assert (= (and b!527786 ((_ is Cons!4968) (t!73590 (minValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))))) b!528318))

(declare-fun m!774357 () Bool)

(assert (=> setNonEmpty!2652 m!774357))

(declare-fun b!528320 () Bool)

(declare-fun e!317729 () Bool)

(declare-fun tp!167593 () Bool)

(declare-fun tp!167594 () Bool)

(assert (=> b!528320 (= e!317729 (and tp!167593 tp!167594))))

(assert (=> b!527768 (= tp!167395 e!317729)))

(assert (= (and b!527768 ((_ is Cons!4966) (exprs!659 setElem!2619))) b!528320))

(declare-fun b!528321 () Bool)

(declare-fun e!317730 () Bool)

(declare-fun tp!167595 () Bool)

(declare-fun tp!167596 () Bool)

(assert (=> b!528321 (= e!317730 (and tp!167595 tp!167596))))

(assert (=> b!527724 (= tp!167339 e!317730)))

(assert (= (and b!527724 ((_ is Cons!4966) (exprs!659 (_2!3319 (_1!3320 (h!10371 mapValue!2341)))))) b!528321))

(declare-fun condSetEmpty!2653 () Bool)

(assert (=> setNonEmpty!2591 (= condSetEmpty!2653 (= setRest!2592 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2653 () Bool)

(assert (=> setNonEmpty!2591 (= tp!167267 setRes!2653)))

(declare-fun setIsEmpty!2653 () Bool)

(assert (=> setIsEmpty!2653 setRes!2653))

(declare-fun e!317731 () Bool)

(declare-fun tp!167598 () Bool)

(declare-fun setNonEmpty!2653 () Bool)

(declare-fun setElem!2653 () Context!318)

(assert (=> setNonEmpty!2653 (= setRes!2653 (and tp!167598 (inv!6235 setElem!2653) e!317731))))

(declare-fun setRest!2653 () (InoxSet Context!318))

(assert (=> setNonEmpty!2653 (= setRest!2592 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2653 true) setRest!2653))))

(declare-fun b!528322 () Bool)

(declare-fun tp!167597 () Bool)

(assert (=> b!528322 (= e!317731 tp!167597)))

(assert (= (and setNonEmpty!2591 condSetEmpty!2653) setIsEmpty!2653))

(assert (= (and setNonEmpty!2591 (not condSetEmpty!2653)) setNonEmpty!2653))

(assert (= setNonEmpty!2653 b!528322))

(declare-fun m!774359 () Bool)

(assert (=> setNonEmpty!2653 m!774359))

(declare-fun b!528323 () Bool)

(declare-fun tp!167601 () Bool)

(declare-fun e!317732 () Bool)

(declare-fun tp!167599 () Bool)

(assert (=> b!528323 (= e!317732 (and (inv!6228 (left!4223 (left!4223 (c!101090 input!747)))) tp!167601 (inv!6228 (right!4553 (left!4223 (c!101090 input!747)))) tp!167599))))

(declare-fun b!528325 () Bool)

(declare-fun e!317733 () Bool)

(declare-fun tp!167600 () Bool)

(assert (=> b!528325 (= e!317733 tp!167600)))

(declare-fun b!528324 () Bool)

(assert (=> b!528324 (= e!317732 (and (inv!6234 (xs!4246 (left!4223 (c!101090 input!747)))) e!317733))))

(assert (=> b!527652 (= tp!167242 (and (inv!6228 (left!4223 (c!101090 input!747))) e!317732))))

(assert (= (and b!527652 ((_ is Node!1609) (left!4223 (c!101090 input!747)))) b!528323))

(assert (= b!528324 b!528325))

(assert (= (and b!527652 ((_ is Leaf!2560) (left!4223 (c!101090 input!747)))) b!528324))

(declare-fun m!774361 () Bool)

(assert (=> b!528323 m!774361))

(declare-fun m!774363 () Bool)

(assert (=> b!528323 m!774363))

(declare-fun m!774365 () Bool)

(assert (=> b!528324 m!774365))

(assert (=> b!527652 m!773364))

(declare-fun tp!167602 () Bool)

(declare-fun e!317734 () Bool)

(declare-fun b!528326 () Bool)

(declare-fun tp!167604 () Bool)

(assert (=> b!528326 (= e!317734 (and (inv!6228 (left!4223 (right!4553 (c!101090 input!747)))) tp!167604 (inv!6228 (right!4553 (right!4553 (c!101090 input!747)))) tp!167602))))

(declare-fun b!528328 () Bool)

(declare-fun e!317735 () Bool)

(declare-fun tp!167603 () Bool)

(assert (=> b!528328 (= e!317735 tp!167603)))

(declare-fun b!528327 () Bool)

(assert (=> b!528327 (= e!317734 (and (inv!6234 (xs!4246 (right!4553 (c!101090 input!747)))) e!317735))))

(assert (=> b!527652 (= tp!167240 (and (inv!6228 (right!4553 (c!101090 input!747))) e!317734))))

(assert (= (and b!527652 ((_ is Node!1609) (right!4553 (c!101090 input!747)))) b!528326))

(assert (= b!528327 b!528328))

(assert (= (and b!527652 ((_ is Leaf!2560) (right!4553 (c!101090 input!747)))) b!528327))

(declare-fun m!774367 () Bool)

(assert (=> b!528326 m!774367))

(declare-fun m!774369 () Bool)

(assert (=> b!528326 m!774369))

(declare-fun m!774371 () Bool)

(assert (=> b!528327 m!774371))

(assert (=> b!527652 m!773366))

(declare-fun e!317736 () Bool)

(assert (=> b!527782 (= tp!167413 e!317736)))

(declare-fun b!528331 () Bool)

(declare-fun tp!167609 () Bool)

(assert (=> b!528331 (= e!317736 tp!167609)))

(declare-fun b!528330 () Bool)

(declare-fun tp!167605 () Bool)

(declare-fun tp!167607 () Bool)

(assert (=> b!528330 (= e!317736 (and tp!167605 tp!167607))))

(declare-fun b!528329 () Bool)

(assert (=> b!528329 (= e!317736 tp_is_empty!2799)))

(declare-fun b!528332 () Bool)

(declare-fun tp!167608 () Bool)

(declare-fun tp!167606 () Bool)

(assert (=> b!528332 (= e!317736 (and tp!167608 tp!167606))))

(assert (= (and b!527782 ((_ is ElementMatch!1221) (regex!893 (h!10374 (t!73595 rules!1345))))) b!528329))

(assert (= (and b!527782 ((_ is Concat!2138) (regex!893 (h!10374 (t!73595 rules!1345))))) b!528330))

(assert (= (and b!527782 ((_ is Star!1221) (regex!893 (h!10374 (t!73595 rules!1345))))) b!528331))

(assert (= (and b!527782 ((_ is Union!1221) (regex!893 (h!10374 (t!73595 rules!1345))))) b!528332))

(declare-fun e!317737 () Bool)

(assert (=> b!527737 (= tp!167353 e!317737)))

(declare-fun b!528335 () Bool)

(declare-fun tp!167614 () Bool)

(assert (=> b!528335 (= e!317737 tp!167614)))

(declare-fun b!528334 () Bool)

(declare-fun tp!167610 () Bool)

(declare-fun tp!167612 () Bool)

(assert (=> b!528334 (= e!317737 (and tp!167610 tp!167612))))

(declare-fun b!528333 () Bool)

(assert (=> b!528333 (= e!317737 tp_is_empty!2799)))

(declare-fun b!528336 () Bool)

(declare-fun tp!167613 () Bool)

(declare-fun tp!167611 () Bool)

(assert (=> b!528336 (= e!317737 (and tp!167613 tp!167611))))

(assert (= (and b!527737 ((_ is ElementMatch!1221) (regOne!2954 (regex!893 (h!10374 rules!1345))))) b!528333))

(assert (= (and b!527737 ((_ is Concat!2138) (regOne!2954 (regex!893 (h!10374 rules!1345))))) b!528334))

(assert (= (and b!527737 ((_ is Star!1221) (regOne!2954 (regex!893 (h!10374 rules!1345))))) b!528335))

(assert (= (and b!527737 ((_ is Union!1221) (regOne!2954 (regex!893 (h!10374 rules!1345))))) b!528336))

(declare-fun e!317738 () Bool)

(assert (=> b!527737 (= tp!167355 e!317738)))

(declare-fun b!528339 () Bool)

(declare-fun tp!167619 () Bool)

(assert (=> b!528339 (= e!317738 tp!167619)))

(declare-fun b!528338 () Bool)

(declare-fun tp!167615 () Bool)

(declare-fun tp!167617 () Bool)

(assert (=> b!528338 (= e!317738 (and tp!167615 tp!167617))))

(declare-fun b!528337 () Bool)

(assert (=> b!528337 (= e!317738 tp_is_empty!2799)))

(declare-fun b!528340 () Bool)

(declare-fun tp!167618 () Bool)

(declare-fun tp!167616 () Bool)

(assert (=> b!528340 (= e!317738 (and tp!167618 tp!167616))))

(assert (= (and b!527737 ((_ is ElementMatch!1221) (regTwo!2954 (regex!893 (h!10374 rules!1345))))) b!528337))

(assert (= (and b!527737 ((_ is Concat!2138) (regTwo!2954 (regex!893 (h!10374 rules!1345))))) b!528338))

(assert (= (and b!527737 ((_ is Star!1221) (regTwo!2954 (regex!893 (h!10374 rules!1345))))) b!528339))

(assert (= (and b!527737 ((_ is Union!1221) (regTwo!2954 (regex!893 (h!10374 rules!1345))))) b!528340))

(declare-fun b!528341 () Bool)

(declare-fun e!317739 () Bool)

(declare-fun tp!167620 () Bool)

(declare-fun tp!167621 () Bool)

(assert (=> b!528341 (= e!317739 (and tp!167620 tp!167621))))

(assert (=> b!527767 (= tp!167401 e!317739)))

(assert (= (and b!527767 ((_ is Cons!4966) (exprs!659 setElem!2618))) b!528341))

(declare-fun e!317740 () Bool)

(assert (=> b!527723 (= tp!167338 e!317740)))

(declare-fun b!528344 () Bool)

(declare-fun tp!167626 () Bool)

(assert (=> b!528344 (= e!317740 tp!167626)))

(declare-fun b!528343 () Bool)

(declare-fun tp!167622 () Bool)

(declare-fun tp!167624 () Bool)

(assert (=> b!528343 (= e!317740 (and tp!167622 tp!167624))))

(declare-fun b!528342 () Bool)

(assert (=> b!528342 (= e!317740 tp_is_empty!2799)))

(declare-fun b!528345 () Bool)

(declare-fun tp!167625 () Bool)

(declare-fun tp!167623 () Bool)

(assert (=> b!528345 (= e!317740 (and tp!167625 tp!167623))))

(assert (= (and b!527723 ((_ is ElementMatch!1221) (_1!3319 (_1!3320 (h!10371 mapValue!2341))))) b!528342))

(assert (= (and b!527723 ((_ is Concat!2138) (_1!3319 (_1!3320 (h!10371 mapValue!2341))))) b!528343))

(assert (= (and b!527723 ((_ is Star!1221) (_1!3319 (_1!3320 (h!10371 mapValue!2341))))) b!528344))

(assert (= (and b!527723 ((_ is Union!1221) (_1!3319 (_1!3320 (h!10371 mapValue!2341))))) b!528345))

(declare-fun e!317743 () Bool)

(declare-fun e!317742 () Bool)

(declare-fun tp!167627 () Bool)

(declare-fun b!528346 () Bool)

(declare-fun tp!167630 () Bool)

(declare-fun setRes!2654 () Bool)

(assert (=> b!528346 (= e!317743 (and tp!167627 (inv!6235 (_2!3319 (_1!3320 (h!10371 (t!73592 mapValue!2341))))) e!317742 tp_is_empty!2799 setRes!2654 tp!167630))))

(declare-fun condSetEmpty!2654 () Bool)

(assert (=> b!528346 (= condSetEmpty!2654 (= (_2!3320 (h!10371 (t!73592 mapValue!2341))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setNonEmpty!2654 () Bool)

(declare-fun e!317741 () Bool)

(declare-fun tp!167629 () Bool)

(declare-fun setElem!2654 () Context!318)

(assert (=> setNonEmpty!2654 (= setRes!2654 (and tp!167629 (inv!6235 setElem!2654) e!317741))))

(declare-fun setRest!2654 () (InoxSet Context!318))

(assert (=> setNonEmpty!2654 (= (_2!3320 (h!10371 (t!73592 mapValue!2341))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2654 true) setRest!2654))))

(assert (=> b!527723 (= tp!167341 e!317743)))

(declare-fun b!528347 () Bool)

(declare-fun tp!167628 () Bool)

(assert (=> b!528347 (= e!317742 tp!167628)))

(declare-fun b!528348 () Bool)

(declare-fun tp!167631 () Bool)

(assert (=> b!528348 (= e!317741 tp!167631)))

(declare-fun setIsEmpty!2654 () Bool)

(assert (=> setIsEmpty!2654 setRes!2654))

(assert (= b!528346 b!528347))

(assert (= (and b!528346 condSetEmpty!2654) setIsEmpty!2654))

(assert (= (and b!528346 (not condSetEmpty!2654)) setNonEmpty!2654))

(assert (= setNonEmpty!2654 b!528348))

(assert (= (and b!527723 ((_ is Cons!4970) (t!73592 mapValue!2341))) b!528346))

(declare-fun m!774373 () Bool)

(assert (=> b!528346 m!774373))

(declare-fun m!774375 () Bool)

(assert (=> setNonEmpty!2654 m!774375))

(declare-fun e!317747 () Bool)

(declare-fun setNonEmpty!2655 () Bool)

(declare-fun tp!167639 () Bool)

(declare-fun setRes!2655 () Bool)

(declare-fun setElem!2656 () Context!318)

(assert (=> setNonEmpty!2655 (= setRes!2655 (and tp!167639 (inv!6235 setElem!2656) e!317747))))

(declare-fun mapDefault!2354 () List!4980)

(declare-fun setRest!2656 () (InoxSet Context!318))

(assert (=> setNonEmpty!2655 (= (_2!3320 (h!10371 mapDefault!2354)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2656 true) setRest!2656))))

(declare-fun condMapEmpty!2354 () Bool)

(assert (=> mapNonEmpty!2348 (= condMapEmpty!2354 (= mapRest!2348 ((as const (Array (_ BitVec 32) List!4980)) mapDefault!2354)))))

(declare-fun e!317745 () Bool)

(declare-fun mapRes!2354 () Bool)

(assert (=> mapNonEmpty!2348 (= tp!167330 (and e!317745 mapRes!2354))))

(declare-fun b!528349 () Bool)

(declare-fun e!317748 () Bool)

(declare-fun tp!167640 () Bool)

(assert (=> b!528349 (= e!317748 tp!167640)))

(declare-fun setIsEmpty!2655 () Bool)

(assert (=> setIsEmpty!2655 setRes!2655))

(declare-fun tp!167633 () Bool)

(declare-fun e!317746 () Bool)

(declare-fun setRes!2656 () Bool)

(declare-fun tp!167638 () Bool)

(declare-fun b!528350 () Bool)

(declare-fun mapValue!2354 () List!4980)

(assert (=> b!528350 (= e!317746 (and tp!167638 (inv!6235 (_2!3319 (_1!3320 (h!10371 mapValue!2354)))) e!317748 tp_is_empty!2799 setRes!2656 tp!167633))))

(declare-fun condSetEmpty!2655 () Bool)

(assert (=> b!528350 (= condSetEmpty!2655 (= (_2!3320 (h!10371 mapValue!2354)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun tp!167637 () Bool)

(declare-fun b!528351 () Bool)

(declare-fun e!317749 () Bool)

(declare-fun tp!167636 () Bool)

(assert (=> b!528351 (= e!317745 (and tp!167636 (inv!6235 (_2!3319 (_1!3320 (h!10371 mapDefault!2354)))) e!317749 tp_is_empty!2799 setRes!2655 tp!167637))))

(declare-fun condSetEmpty!2656 () Bool)

(assert (=> b!528351 (= condSetEmpty!2656 (= (_2!3320 (h!10371 mapDefault!2354)) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setIsEmpty!2656 () Bool)

(assert (=> setIsEmpty!2656 setRes!2656))

(declare-fun b!528352 () Bool)

(declare-fun tp!167642 () Bool)

(assert (=> b!528352 (= e!317747 tp!167642)))

(declare-fun e!317744 () Bool)

(declare-fun tp!167632 () Bool)

(declare-fun setElem!2655 () Context!318)

(declare-fun setNonEmpty!2656 () Bool)

(assert (=> setNonEmpty!2656 (= setRes!2656 (and tp!167632 (inv!6235 setElem!2655) e!317744))))

(declare-fun setRest!2655 () (InoxSet Context!318))

(assert (=> setNonEmpty!2656 (= (_2!3320 (h!10371 mapValue!2354)) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2655 true) setRest!2655))))

(declare-fun b!528353 () Bool)

(declare-fun tp!167634 () Bool)

(assert (=> b!528353 (= e!317749 tp!167634)))

(declare-fun mapNonEmpty!2354 () Bool)

(declare-fun tp!167635 () Bool)

(assert (=> mapNonEmpty!2354 (= mapRes!2354 (and tp!167635 e!317746))))

(declare-fun mapKey!2354 () (_ BitVec 32))

(declare-fun mapRest!2354 () (Array (_ BitVec 32) List!4980))

(assert (=> mapNonEmpty!2354 (= mapRest!2348 (store mapRest!2354 mapKey!2354 mapValue!2354))))

(declare-fun b!528354 () Bool)

(declare-fun tp!167641 () Bool)

(assert (=> b!528354 (= e!317744 tp!167641)))

(declare-fun mapIsEmpty!2354 () Bool)

(assert (=> mapIsEmpty!2354 mapRes!2354))

(assert (= (and mapNonEmpty!2348 condMapEmpty!2354) mapIsEmpty!2354))

(assert (= (and mapNonEmpty!2348 (not condMapEmpty!2354)) mapNonEmpty!2354))

(assert (= b!528350 b!528349))

(assert (= (and b!528350 condSetEmpty!2655) setIsEmpty!2656))

(assert (= (and b!528350 (not condSetEmpty!2655)) setNonEmpty!2656))

(assert (= setNonEmpty!2656 b!528354))

(assert (= (and mapNonEmpty!2354 ((_ is Cons!4970) mapValue!2354)) b!528350))

(assert (= b!528351 b!528353))

(assert (= (and b!528351 condSetEmpty!2656) setIsEmpty!2655))

(assert (= (and b!528351 (not condSetEmpty!2656)) setNonEmpty!2655))

(assert (= setNonEmpty!2655 b!528352))

(assert (= (and mapNonEmpty!2348 ((_ is Cons!4970) mapDefault!2354)) b!528351))

(declare-fun m!774377 () Bool)

(assert (=> b!528350 m!774377))

(declare-fun m!774379 () Bool)

(assert (=> b!528351 m!774379))

(declare-fun m!774381 () Bool)

(assert (=> mapNonEmpty!2354 m!774381))

(declare-fun m!774383 () Bool)

(assert (=> setNonEmpty!2655 m!774383))

(declare-fun m!774385 () Bool)

(assert (=> setNonEmpty!2656 m!774385))

(declare-fun b!528355 () Bool)

(declare-fun e!317750 () Bool)

(declare-fun tp!167643 () Bool)

(declare-fun tp!167644 () Bool)

(assert (=> b!528355 (= e!317750 (and tp!167643 tp!167644))))

(assert (=> b!527744 (= tp!167363 e!317750)))

(assert (= (and b!527744 ((_ is Cons!4966) (exprs!659 (_2!3319 (_1!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))))))) b!528355))

(declare-fun b!528356 () Bool)

(declare-fun e!317751 () Bool)

(declare-fun tp!167645 () Bool)

(declare-fun tp!167646 () Bool)

(assert (=> b!528356 (= e!317751 (and tp!167645 tp!167646))))

(assert (=> b!527747 (= tp!167368 e!317751)))

(assert (= (and b!527747 ((_ is Cons!4966) (exprs!659 (_2!3319 (_1!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462)))))))))))) b!528356))

(declare-fun b!528357 () Bool)

(declare-fun e!317752 () Bool)

(declare-fun tp!167647 () Bool)

(declare-fun tp!167648 () Bool)

(assert (=> b!528357 (= e!317752 (and tp!167647 tp!167648))))

(assert (=> b!527720 (= tp!167337 e!317752)))

(assert (= (and b!527720 ((_ is Cons!4966) (exprs!659 setElem!2606))) b!528357))

(declare-fun b!528358 () Bool)

(declare-fun e!317753 () Bool)

(declare-fun tp!167649 () Bool)

(declare-fun tp!167650 () Bool)

(assert (=> b!528358 (= e!317753 (and tp!167649 tp!167650))))

(assert (=> b!527721 (= tp!167329 e!317753)))

(assert (= (and b!527721 ((_ is Cons!4966) (exprs!659 (_2!3319 (_1!3320 (h!10371 mapDefault!2348)))))) b!528358))

(declare-fun condSetEmpty!2657 () Bool)

(assert (=> setNonEmpty!2596 (= condSetEmpty!2657 (= setRest!2596 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2657 () Bool)

(assert (=> setNonEmpty!2596 (= tp!167283 setRes!2657)))

(declare-fun setIsEmpty!2657 () Bool)

(assert (=> setIsEmpty!2657 setRes!2657))

(declare-fun setElem!2657 () Context!318)

(declare-fun setNonEmpty!2657 () Bool)

(declare-fun e!317754 () Bool)

(declare-fun tp!167652 () Bool)

(assert (=> setNonEmpty!2657 (= setRes!2657 (and tp!167652 (inv!6235 setElem!2657) e!317754))))

(declare-fun setRest!2657 () (InoxSet Context!318))

(assert (=> setNonEmpty!2657 (= setRest!2596 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2657 true) setRest!2657))))

(declare-fun b!528359 () Bool)

(declare-fun tp!167651 () Bool)

(assert (=> b!528359 (= e!317754 tp!167651)))

(assert (= (and setNonEmpty!2596 condSetEmpty!2657) setIsEmpty!2657))

(assert (= (and setNonEmpty!2596 (not condSetEmpty!2657)) setNonEmpty!2657))

(assert (= setNonEmpty!2657 b!528359))

(declare-fun m!774387 () Bool)

(assert (=> setNonEmpty!2657 m!774387))

(declare-fun e!317755 () Bool)

(assert (=> b!527743 (= tp!167362 e!317755)))

(declare-fun b!528362 () Bool)

(declare-fun tp!167657 () Bool)

(assert (=> b!528362 (= e!317755 tp!167657)))

(declare-fun b!528361 () Bool)

(declare-fun tp!167653 () Bool)

(declare-fun tp!167655 () Bool)

(assert (=> b!528361 (= e!317755 (and tp!167653 tp!167655))))

(declare-fun b!528360 () Bool)

(assert (=> b!528360 (= e!317755 tp_is_empty!2799)))

(declare-fun b!528363 () Bool)

(declare-fun tp!167656 () Bool)

(declare-fun tp!167654 () Bool)

(assert (=> b!528363 (= e!317755 (and tp!167656 tp!167654))))

(assert (= (and b!527743 ((_ is ElementMatch!1221) (_1!3319 (_1!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) b!528360))

(assert (= (and b!527743 ((_ is Concat!2138) (_1!3319 (_1!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) b!528361))

(assert (= (and b!527743 ((_ is Star!1221) (_1!3319 (_1!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) b!528362))

(assert (= (and b!527743 ((_ is Union!1221) (_1!3319 (_1!3320 (h!10371 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) b!528363))

(declare-fun e!317758 () Bool)

(declare-fun b!528364 () Bool)

(declare-fun e!317757 () Bool)

(declare-fun tp!167658 () Bool)

(declare-fun tp!167661 () Bool)

(declare-fun setRes!2658 () Bool)

(assert (=> b!528364 (= e!317758 (and tp!167658 (inv!6235 (_2!3319 (_1!3320 (h!10371 (t!73592 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) e!317757 tp_is_empty!2799 setRes!2658 tp!167661))))

(declare-fun condSetEmpty!2658 () Bool)

(assert (=> b!528364 (= condSetEmpty!2658 (= (_2!3320 (h!10371 (t!73592 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setElem!2658 () Context!318)

(declare-fun e!317756 () Bool)

(declare-fun tp!167660 () Bool)

(declare-fun setNonEmpty!2658 () Bool)

(assert (=> setNonEmpty!2658 (= setRes!2658 (and tp!167660 (inv!6235 setElem!2658) e!317756))))

(declare-fun setRest!2658 () (InoxSet Context!318))

(assert (=> setNonEmpty!2658 (= (_2!3320 (h!10371 (t!73592 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2658 true) setRest!2658))))

(assert (=> b!527743 (= tp!167365 e!317758)))

(declare-fun b!528365 () Bool)

(declare-fun tp!167659 () Bool)

(assert (=> b!528365 (= e!317757 tp!167659)))

(declare-fun b!528366 () Bool)

(declare-fun tp!167662 () Bool)

(assert (=> b!528366 (= e!317756 tp!167662)))

(declare-fun setIsEmpty!2658 () Bool)

(assert (=> setIsEmpty!2658 setRes!2658))

(assert (= b!528364 b!528365))

(assert (= (and b!528364 condSetEmpty!2658) setIsEmpty!2658))

(assert (= (and b!528364 (not condSetEmpty!2658)) setNonEmpty!2658))

(assert (= setNonEmpty!2658 b!528366))

(assert (= (and b!527743 ((_ is Cons!4970) (t!73592 (zeroValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))) b!528364))

(declare-fun m!774389 () Bool)

(assert (=> b!528364 m!774389))

(declare-fun m!774391 () Bool)

(assert (=> setNonEmpty!2658 m!774391))

(declare-fun e!317759 () Bool)

(assert (=> b!527746 (= tp!167367 e!317759)))

(declare-fun b!528369 () Bool)

(declare-fun tp!167667 () Bool)

(assert (=> b!528369 (= e!317759 tp!167667)))

(declare-fun b!528368 () Bool)

(declare-fun tp!167663 () Bool)

(declare-fun tp!167665 () Bool)

(assert (=> b!528368 (= e!317759 (and tp!167663 tp!167665))))

(declare-fun b!528367 () Bool)

(assert (=> b!528367 (= e!317759 tp_is_empty!2799)))

(declare-fun b!528370 () Bool)

(declare-fun tp!167666 () Bool)

(declare-fun tp!167664 () Bool)

(assert (=> b!528370 (= e!317759 (and tp!167666 tp!167664))))

(assert (= (and b!527746 ((_ is ElementMatch!1221) (_1!3319 (_1!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) b!528367))

(assert (= (and b!527746 ((_ is Concat!2138) (_1!3319 (_1!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) b!528368))

(assert (= (and b!527746 ((_ is Star!1221) (_1!3319 (_1!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) b!528369))

(assert (= (and b!527746 ((_ is Union!1221) (_1!3319 (_1!3320 (h!10371 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) b!528370))

(declare-fun b!528371 () Bool)

(declare-fun tp!167668 () Bool)

(declare-fun tp!167671 () Bool)

(declare-fun setRes!2659 () Bool)

(declare-fun e!317762 () Bool)

(declare-fun e!317761 () Bool)

(assert (=> b!528371 (= e!317762 (and tp!167668 (inv!6235 (_2!3319 (_1!3320 (h!10371 (t!73592 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))))) e!317761 tp_is_empty!2799 setRes!2659 tp!167671))))

(declare-fun condSetEmpty!2659 () Bool)

(assert (=> b!528371 (= condSetEmpty!2659 (= (_2!3320 (h!10371 (t!73592 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun e!317760 () Bool)

(declare-fun setElem!2659 () Context!318)

(declare-fun setNonEmpty!2659 () Bool)

(declare-fun tp!167670 () Bool)

(assert (=> setNonEmpty!2659 (= setRes!2659 (and tp!167670 (inv!6235 setElem!2659) e!317760))))

(declare-fun setRest!2659 () (InoxSet Context!318))

(assert (=> setNonEmpty!2659 (= (_2!3320 (h!10371 (t!73592 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2659 true) setRest!2659))))

(assert (=> b!527746 (= tp!167370 e!317762)))

(declare-fun b!528372 () Bool)

(declare-fun tp!167669 () Bool)

(assert (=> b!528372 (= e!317761 tp!167669)))

(declare-fun b!528373 () Bool)

(declare-fun tp!167672 () Bool)

(assert (=> b!528373 (= e!317760 tp!167672)))

(declare-fun setIsEmpty!2659 () Bool)

(assert (=> setIsEmpty!2659 setRes!2659))

(assert (= b!528371 b!528372))

(assert (= (and b!528371 condSetEmpty!2659) setIsEmpty!2659))

(assert (= (and b!528371 (not condSetEmpty!2659)) setNonEmpty!2659))

(assert (= setNonEmpty!2659 b!528373))

(assert (= (and b!527746 ((_ is Cons!4970) (t!73592 (minValue!853 (v!16036 (underlying!1371 (v!16037 (underlying!1372 (cache!955 cacheDown!462))))))))) b!528371))

(declare-fun m!774393 () Bool)

(assert (=> b!528371 m!774393))

(declare-fun m!774395 () Bool)

(assert (=> setNonEmpty!2659 m!774395))

(declare-fun e!317763 () Bool)

(assert (=> b!527719 (= tp!167331 e!317763)))

(declare-fun b!528376 () Bool)

(declare-fun tp!167677 () Bool)

(assert (=> b!528376 (= e!317763 tp!167677)))

(declare-fun b!528375 () Bool)

(declare-fun tp!167673 () Bool)

(declare-fun tp!167675 () Bool)

(assert (=> b!528375 (= e!317763 (and tp!167673 tp!167675))))

(declare-fun b!528374 () Bool)

(assert (=> b!528374 (= e!317763 tp_is_empty!2799)))

(declare-fun b!528377 () Bool)

(declare-fun tp!167676 () Bool)

(declare-fun tp!167674 () Bool)

(assert (=> b!528377 (= e!317763 (and tp!167676 tp!167674))))

(assert (= (and b!527719 ((_ is ElementMatch!1221) (_1!3319 (_1!3320 (h!10371 mapDefault!2348))))) b!528374))

(assert (= (and b!527719 ((_ is Concat!2138) (_1!3319 (_1!3320 (h!10371 mapDefault!2348))))) b!528375))

(assert (= (and b!527719 ((_ is Star!1221) (_1!3319 (_1!3320 (h!10371 mapDefault!2348))))) b!528376))

(assert (= (and b!527719 ((_ is Union!1221) (_1!3319 (_1!3320 (h!10371 mapDefault!2348))))) b!528377))

(declare-fun b!528378 () Bool)

(declare-fun tp!167678 () Bool)

(declare-fun e!317765 () Bool)

(declare-fun tp!167681 () Bool)

(declare-fun setRes!2660 () Bool)

(declare-fun e!317766 () Bool)

(assert (=> b!528378 (= e!317766 (and tp!167678 (inv!6235 (_2!3319 (_1!3320 (h!10371 (t!73592 mapDefault!2348))))) e!317765 tp_is_empty!2799 setRes!2660 tp!167681))))

(declare-fun condSetEmpty!2660 () Bool)

(assert (=> b!528378 (= condSetEmpty!2660 (= (_2!3320 (h!10371 (t!73592 mapDefault!2348))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun setElem!2660 () Context!318)

(declare-fun setNonEmpty!2660 () Bool)

(declare-fun e!317764 () Bool)

(declare-fun tp!167680 () Bool)

(assert (=> setNonEmpty!2660 (= setRes!2660 (and tp!167680 (inv!6235 setElem!2660) e!317764))))

(declare-fun setRest!2660 () (InoxSet Context!318))

(assert (=> setNonEmpty!2660 (= (_2!3320 (h!10371 (t!73592 mapDefault!2348))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2660 true) setRest!2660))))

(assert (=> b!527719 (= tp!167332 e!317766)))

(declare-fun b!528379 () Bool)

(declare-fun tp!167679 () Bool)

(assert (=> b!528379 (= e!317765 tp!167679)))

(declare-fun b!528380 () Bool)

(declare-fun tp!167682 () Bool)

(assert (=> b!528380 (= e!317764 tp!167682)))

(declare-fun setIsEmpty!2660 () Bool)

(assert (=> setIsEmpty!2660 setRes!2660))

(assert (= b!528378 b!528379))

(assert (= (and b!528378 condSetEmpty!2660) setIsEmpty!2660))

(assert (= (and b!528378 (not condSetEmpty!2660)) setNonEmpty!2660))

(assert (= setNonEmpty!2660 b!528380))

(assert (= (and b!527719 ((_ is Cons!4970) (t!73592 mapDefault!2348))) b!528378))

(declare-fun m!774397 () Bool)

(assert (=> b!528378 m!774397))

(declare-fun m!774399 () Bool)

(assert (=> setNonEmpty!2660 m!774399))

(declare-fun b!528381 () Bool)

(declare-fun e!317767 () Bool)

(declare-fun tp!167683 () Bool)

(declare-fun tp!167684 () Bool)

(assert (=> b!528381 (= e!317767 (and tp!167683 tp!167684))))

(assert (=> b!527685 (= tp!167278 e!317767)))

(assert (= (and b!527685 ((_ is Cons!4966) (exprs!659 setElem!2595))) b!528381))

(declare-fun e!317769 () Bool)

(declare-fun b!528382 () Bool)

(declare-fun setRes!2661 () Bool)

(declare-fun tp!167688 () Bool)

(declare-fun e!317770 () Bool)

(assert (=> b!528382 (= e!317769 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 (t!73589 mapDefault!2340))))) e!317770 tp_is_empty!2799 setRes!2661 tp!167688))))

(declare-fun condSetEmpty!2661 () Bool)

(assert (=> b!528382 (= condSetEmpty!2661 (= (_2!3316 (h!10368 (t!73589 mapDefault!2340))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!528383 () Bool)

(declare-fun tp!167687 () Bool)

(assert (=> b!528383 (= e!317770 tp!167687)))

(declare-fun setIsEmpty!2661 () Bool)

(assert (=> setIsEmpty!2661 setRes!2661))

(assert (=> b!527740 (= tp!167361 e!317769)))

(declare-fun setElem!2661 () Context!318)

(declare-fun setNonEmpty!2661 () Bool)

(declare-fun e!317768 () Bool)

(declare-fun tp!167686 () Bool)

(assert (=> setNonEmpty!2661 (= setRes!2661 (and tp!167686 (inv!6235 setElem!2661) e!317768))))

(declare-fun setRest!2661 () (InoxSet Context!318))

(assert (=> setNonEmpty!2661 (= (_2!3316 (h!10368 (t!73589 mapDefault!2340))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2661 true) setRest!2661))))

(declare-fun b!528384 () Bool)

(declare-fun tp!167685 () Bool)

(assert (=> b!528384 (= e!317768 tp!167685)))

(assert (= b!528382 b!528383))

(assert (= (and b!528382 condSetEmpty!2661) setIsEmpty!2661))

(assert (= (and b!528382 (not condSetEmpty!2661)) setNonEmpty!2661))

(assert (= setNonEmpty!2661 b!528384))

(assert (= (and b!527740 ((_ is Cons!4967) (t!73589 mapDefault!2340))) b!528382))

(declare-fun m!774401 () Bool)

(assert (=> b!528382 m!774401))

(declare-fun m!774403 () Bool)

(assert (=> setNonEmpty!2661 m!774403))

(declare-fun setRes!2662 () Bool)

(declare-fun e!317772 () Bool)

(declare-fun tp!167692 () Bool)

(declare-fun e!317773 () Bool)

(declare-fun b!528385 () Bool)

(assert (=> b!528385 (= e!317772 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 (t!73589 mapValue!2340))))) e!317773 tp_is_empty!2799 setRes!2662 tp!167692))))

(declare-fun condSetEmpty!2662 () Bool)

(assert (=> b!528385 (= condSetEmpty!2662 (= (_2!3316 (h!10368 (t!73589 mapValue!2340))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!528386 () Bool)

(declare-fun tp!167691 () Bool)

(assert (=> b!528386 (= e!317773 tp!167691)))

(declare-fun setIsEmpty!2662 () Bool)

(assert (=> setIsEmpty!2662 setRes!2662))

(assert (=> b!527683 (= tp!167281 e!317772)))

(declare-fun tp!167690 () Bool)

(declare-fun e!317771 () Bool)

(declare-fun setNonEmpty!2662 () Bool)

(declare-fun setElem!2662 () Context!318)

(assert (=> setNonEmpty!2662 (= setRes!2662 (and tp!167690 (inv!6235 setElem!2662) e!317771))))

(declare-fun setRest!2662 () (InoxSet Context!318))

(assert (=> setNonEmpty!2662 (= (_2!3316 (h!10368 (t!73589 mapValue!2340))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2662 true) setRest!2662))))

(declare-fun b!528387 () Bool)

(declare-fun tp!167689 () Bool)

(assert (=> b!528387 (= e!317771 tp!167689)))

(assert (= b!528385 b!528386))

(assert (= (and b!528385 condSetEmpty!2662) setIsEmpty!2662))

(assert (= (and b!528385 (not condSetEmpty!2662)) setNonEmpty!2662))

(assert (= setNonEmpty!2662 b!528387))

(assert (= (and b!527683 ((_ is Cons!4967) (t!73589 mapValue!2340))) b!528385))

(declare-fun m!774405 () Bool)

(assert (=> b!528385 m!774405))

(declare-fun m!774407 () Bool)

(assert (=> setNonEmpty!2662 m!774407))

(declare-fun b!528388 () Bool)

(declare-fun e!317774 () Bool)

(declare-fun tp!167693 () Bool)

(declare-fun tp!167694 () Bool)

(assert (=> b!528388 (= e!317774 (and tp!167693 tp!167694))))

(assert (=> b!527687 (= tp!167284 e!317774)))

(assert (= (and b!527687 ((_ is Cons!4966) (exprs!659 (_1!3315 (_1!3316 (h!10368 (zeroValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449)))))))))))) b!528388))

(declare-fun b!528389 () Bool)

(declare-fun e!317775 () Bool)

(declare-fun tp!167695 () Bool)

(declare-fun tp!167696 () Bool)

(assert (=> b!528389 (= e!317775 (and tp!167695 tp!167696))))

(assert (=> b!527673 (= tp!167264 e!317775)))

(assert (= (and b!527673 ((_ is Cons!4966) (exprs!659 (_1!3315 (_1!3316 (h!10368 mapDefault!2345)))))) b!528389))

(declare-fun condSetEmpty!2663 () Bool)

(assert (=> setNonEmpty!2621 (= condSetEmpty!2663 (= setRest!2621 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2663 () Bool)

(assert (=> setNonEmpty!2621 (= tp!167417 setRes!2663)))

(declare-fun setIsEmpty!2663 () Bool)

(assert (=> setIsEmpty!2663 setRes!2663))

(declare-fun tp!167698 () Bool)

(declare-fun setNonEmpty!2663 () Bool)

(declare-fun setElem!2663 () Context!318)

(declare-fun e!317776 () Bool)

(assert (=> setNonEmpty!2663 (= setRes!2663 (and tp!167698 (inv!6235 setElem!2663) e!317776))))

(declare-fun setRest!2663 () (InoxSet Context!318))

(assert (=> setNonEmpty!2663 (= setRest!2621 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2663 true) setRest!2663))))

(declare-fun b!528390 () Bool)

(declare-fun tp!167697 () Bool)

(assert (=> b!528390 (= e!317776 tp!167697)))

(assert (= (and setNonEmpty!2621 condSetEmpty!2663) setIsEmpty!2663))

(assert (= (and setNonEmpty!2621 (not condSetEmpty!2663)) setNonEmpty!2663))

(assert (= setNonEmpty!2663 b!528390))

(declare-fun m!774409 () Bool)

(assert (=> setNonEmpty!2663 m!774409))

(declare-fun b!528391 () Bool)

(declare-fun e!317777 () Bool)

(declare-fun tp!167699 () Bool)

(declare-fun tp!167700 () Bool)

(assert (=> b!528391 (= e!317777 (and tp!167699 tp!167700))))

(assert (=> b!527691 (= tp!167286 e!317777)))

(assert (= (and b!527691 ((_ is Cons!4966) (exprs!659 setElem!2597))) b!528391))

(declare-fun b!528392 () Bool)

(declare-fun e!317778 () Bool)

(declare-fun tp!167701 () Bool)

(declare-fun tp!167702 () Bool)

(assert (=> b!528392 (= e!317778 (and tp!167701 tp!167702))))

(assert (=> b!527701 (= tp!167301 e!317778)))

(assert (= (and b!527701 ((_ is Cons!4966) (exprs!659 (_2!3319 (_1!3320 (h!10371 mapDefault!2342)))))) b!528392))

(declare-fun e!317781 () Bool)

(declare-fun e!317780 () Bool)

(declare-fun b!528393 () Bool)

(declare-fun tp!167706 () Bool)

(declare-fun setRes!2664 () Bool)

(assert (=> b!528393 (= e!317780 (and (inv!6235 (_1!3315 (_1!3316 (h!10368 (t!73589 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))))))) e!317781 tp_is_empty!2799 setRes!2664 tp!167706))))

(declare-fun condSetEmpty!2664 () Bool)

(assert (=> b!528393 (= condSetEmpty!2664 (= (_2!3316 (h!10368 (t!73589 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))))) ((as const (Array Context!318 Bool)) false)))))

(declare-fun b!528394 () Bool)

(declare-fun tp!167705 () Bool)

(assert (=> b!528394 (= e!317781 tp!167705)))

(declare-fun setIsEmpty!2664 () Bool)

(assert (=> setIsEmpty!2664 setRes!2664))

(assert (=> b!527689 (= tp!167289 e!317780)))

(declare-fun setElem!2664 () Context!318)

(declare-fun tp!167704 () Bool)

(declare-fun setNonEmpty!2664 () Bool)

(declare-fun e!317779 () Bool)

(assert (=> setNonEmpty!2664 (= setRes!2664 (and tp!167704 (inv!6235 setElem!2664) e!317779))))

(declare-fun setRest!2664 () (InoxSet Context!318))

(assert (=> setNonEmpty!2664 (= (_2!3316 (h!10368 (t!73589 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2664 true) setRest!2664))))

(declare-fun b!528395 () Bool)

(declare-fun tp!167703 () Bool)

(assert (=> b!528395 (= e!317779 tp!167703)))

(assert (= b!528393 b!528394))

(assert (= (and b!528393 condSetEmpty!2664) setIsEmpty!2664))

(assert (= (and b!528393 (not condSetEmpty!2664)) setNonEmpty!2664))

(assert (= setNonEmpty!2664 b!528395))

(assert (= (and b!527689 ((_ is Cons!4967) (t!73589 (minValue!851 (v!16032 (underlying!1367 (v!16033 (underlying!1368 (cache!953 cacheUp!449))))))))) b!528393))

(declare-fun m!774411 () Bool)

(assert (=> b!528393 m!774411))

(declare-fun m!774413 () Bool)

(assert (=> setNonEmpty!2664 m!774413))

(declare-fun setElem!2665 () Context!318)

(declare-fun setRes!2665 () Bool)

(declare-fun e!317782 () Bool)

(declare-fun tp!167707 () Bool)

(declare-fun setNonEmpty!2665 () Bool)

(assert (=> setNonEmpty!2665 (= setRes!2665 (and tp!167707 (inv!6235 setElem!2665) e!317782))))

(declare-fun setRest!2665 () (InoxSet Context!318))

(assert (=> setNonEmpty!2665 (= (_1!3317 (_1!3318 (h!10369 (t!73590 (zeroValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2665 true) setRest!2665))))

(declare-fun setIsEmpty!2665 () Bool)

(assert (=> setIsEmpty!2665 setRes!2665))

(declare-fun b!528397 () Bool)

(declare-fun tp!167709 () Bool)

(assert (=> b!528397 (= e!317782 tp!167709)))

(declare-fun e!317783 () Bool)

(assert (=> b!527784 (= tp!167418 e!317783)))

(declare-fun b!528396 () Bool)

(declare-fun tp!167708 () Bool)

(assert (=> b!528396 (= e!317783 (and setRes!2665 tp!167708))))

(declare-fun condSetEmpty!2665 () Bool)

(assert (=> b!528396 (= condSetEmpty!2665 (= (_1!3317 (_1!3318 (h!10369 (t!73590 (zeroValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56)))))))))) ((as const (Array Context!318 Bool)) false)))))

(assert (= (and b!528396 condSetEmpty!2665) setIsEmpty!2665))

(assert (= (and b!528396 (not condSetEmpty!2665)) setNonEmpty!2665))

(assert (= setNonEmpty!2665 b!528397))

(assert (= (and b!527784 ((_ is Cons!4968) (t!73590 (zeroValue!852 (v!16034 (underlying!1369 (v!16035 (underlying!1370 (cache!954 cacheFurthestNullable!56))))))))) b!528396))

(declare-fun m!774415 () Bool)

(assert (=> setNonEmpty!2665 m!774415))

(declare-fun condSetEmpty!2666 () Bool)

(assert (=> setNonEmpty!2605 (= condSetEmpty!2666 (= setRest!2606 ((as const (Array Context!318 Bool)) false)))))

(declare-fun setRes!2666 () Bool)

(assert (=> setNonEmpty!2605 (= tp!167334 setRes!2666)))

(declare-fun setIsEmpty!2666 () Bool)

(assert (=> setIsEmpty!2666 setRes!2666))

(declare-fun setNonEmpty!2666 () Bool)

(declare-fun tp!167711 () Bool)

(declare-fun e!317784 () Bool)

(declare-fun setElem!2666 () Context!318)

(assert (=> setNonEmpty!2666 (= setRes!2666 (and tp!167711 (inv!6235 setElem!2666) e!317784))))

(declare-fun setRest!2666 () (InoxSet Context!318))

(assert (=> setNonEmpty!2666 (= setRest!2606 ((_ map or) (store ((as const (Array Context!318 Bool)) false) setElem!2666 true) setRest!2666))))

(declare-fun b!528398 () Bool)

(declare-fun tp!167710 () Bool)

(assert (=> b!528398 (= e!317784 tp!167710)))

(assert (= (and setNonEmpty!2605 condSetEmpty!2666) setIsEmpty!2666))

(assert (= (and setNonEmpty!2605 (not condSetEmpty!2666)) setNonEmpty!2666))

(assert (= setNonEmpty!2666 b!528398))

(declare-fun m!774417 () Bool)

(assert (=> setNonEmpty!2666 m!774417))

(check-sat (not b!528173) (not b!528298) (not b!527970) (not b!528065) (not b!528201) (not b!528339) (not b_next!14053) (not d!187731) (not b!528336) (not setNonEmpty!2660) (not b!528267) (not d!187719) (not d!187715) (not b!528140) (not b!528174) (not b!528325) (not b!528211) (not b!527884) (not b!528294) (not b!527965) (not d!187849) (not setNonEmpty!2634) (not mapNonEmpty!2352) b_and!51543 (not b!528392) (not b!527881) (not d!187915) (not b!527882) (not setNonEmpty!2664) (not b!528372) (not d!187723) (not d!187791) (not b!527890) (not b!527945) (not b!528282) (not b!528357) (not b!528362) (not b!528040) (not b!528287) (not b!528068) (not b!528375) (not b!528027) (not b!528200) (not b!528102) (not b!527898) (not b!528048) (not b!528393) (not d!187913) (not b!527956) (not b_next!14057) (not b!528275) (not b!528203) (not b!528359) (not d!187799) (not b!528120) (not b!528373) (not b!528384) (not b!528202) (not d!187889) (not setNonEmpty!2639) (not setNonEmpty!2637) (not b!527892) (not setNonEmpty!2646) (not b!528146) (not d!187907) (not b!528274) (not d!187743) (not d!187777) (not d!187773) (not b_lambda!20469) (not b!528151) (not b!527652) (not d!187763) (not b!528072) (not b!528258) (not mapNonEmpty!2353) (not d!187831) (not d!187865) (not b!528099) (not d!187909) (not b!528396) (not d!187857) (not b!528150) (not d!187711) (not b!527846) (not b_next!14071) (not d!187911) (not d!187867) (not b!528351) (not b!527948) (not b!528319) (not b!528349) (not b!528395) (not b!528031) (not b!528288) (not d!187861) (not d!187835) (not setNonEmpty!2629) (not b!528369) (not b!528185) (not b!528365) (not b!528186) (not b!528187) (not b!528379) (not d!187891) (not b!528340) (not b!527941) (not b!528094) (not d!187817) (not b!528101) (not b!528285) (not d!187917) (not b!528383) (not b!528209) (not b!528344) (not d!187873) (not b!528090) (not d!187769) (not d!187883) (not b!528037) (not b!528273) (not b!527835) (not setNonEmpty!2636) (not setNonEmpty!2638) (not b!528302) (not b!528341) (not b!528191) (not b!528262) (not b!528133) (not setNonEmpty!2640) (not setNonEmpty!2655) (not d!187805) (not b!528354) (not d!187745) (not b!528088) (not b!528043) (not setNonEmpty!2645) (not b!528175) (not setNonEmpty!2656) (not b!527826) (not d!187781) (not b!528176) (not b!528054) (not setNonEmpty!2649) (not d!187823) (not b!528270) (not d!187925) (not d!187713) (not b!528364) (not b!527906) (not b!528278) (not b!528299) (not b!528386) (not bm!38107) (not d!187755) (not b!528356) (not b!528295) (not b!527982) (not b!528225) (not b!528366) (not b!527859) (not b!528338) (not d!187707) (not b!528303) (not b!528001) b_and!51551 (not b!528215) (not b_next!14063) (not b!528032) (not d!187851) (not b!528290) (not d!187859) (not b!527983) (not setNonEmpty!2650) (not b!528307) (not b!528257) (not b!528343) (not setNonEmpty!2632) (not b!528212) b_and!51541 (not b!528196) (not b!528347) (not b!528390) (not b!527891) (not b!528063) (not d!187931) (not d!187727) (not b!527951) (not b!527825) (not setNonEmpty!2666) (not b!528206) (not d!187893) (not setNonEmpty!2658) (not b!527788) (not b!528378) (not b!528093) (not b!528370) (not b!527889) (not b!527974) (not b!528306) (not b!528317) (not d!187853) (not b!528328) (not b!527975) (not b!528394) (not setNonEmpty!2628) (not b!527962) (not b!528170) (not b!528100) (not b!528226) (not b!528117) (not d!187885) (not b!528106) b_and!51533 (not b!528382) (not b!528224) (not b!528330) (not b!528304) (not b!528308) (not b!527896) (not b!528318) (not d!187789) (not b!528331) b_and!51547 (not d!187721) (not tb!47189) (not b!527847) (not b!528284) (not d!187753) (not b!528268) (not b!528141) (not d!187821) (not b!528309) (not b!528291) (not b!527886) (not setNonEmpty!2652) (not setNonEmpty!2642) (not d!187807) (not b!528266) (not b!528067) (not setNonEmpty!2626) (not d!187761) (not b!528296) (not d!187845) (not bm!38110) (not d!187839) (not b!528103) (not b!527981) (not d!187863) (not b!528323) (not d!187847) (not b!527848) (not b!528381) (not d!187767) (not b!527895) (not b!528171) (not d!187779) (not d!187757) (not b!527899) (not b!528114) (not setNonEmpty!2630) (not b!527924) (not b!527908) (not b!528214) (not b!528327) (not b!528096) (not b!528147) (not b!528218) (not b!528377) (not bm!38106) (not b!528190) (not b!528264) (not b!528376) (not b!527952) (not d!187905) (not b!528371) (not b!528397) (not b!528388) (not d!187837) (not setNonEmpty!2654) (not b!528387) (not d!187895) (not b!527942) (not b!528334) (not b!528180) (not b!528286) (not b!528152) (not d!187815) (not b!528300) (not b!528112) (not b!527985) (not b!528322) (not b!527955) (not b!528169) (not d!187833) (not b!527977) (not d!187739) (not d!187737) (not b!528281) (not d!187803) (not b!527814) (not d!187783) (not b_next!14055) (not b!528188) (not b!528035) (not setNonEmpty!2657) (not d!187759) (not d!187741) (not b!527883) (not d!187717) (not b!527921) (not b!528312) (not setNonEmpty!2651) (not b!528361) (not b!527909) (not setNonEmpty!2644) (not d!187771) (not setNonEmpty!2647) (not b!527920) (not b!528207) (not b!528324) (not b!528213) (not d!187819) (not b!528002) (not b!527818) (not setNonEmpty!2635) (not b!528389) (not b!528350) (not b!527902) (not d!187775) (not setNonEmpty!2665) (not setNonEmpty!2659) (not b!528166) (not d!187855) (not b!527798) (not b!528280) (not d!187785) (not d!187797) (not b!528283) (not b!527976) (not d!187841) (not d!187735) (not b!528256) (not b!528320) (not b!528326) (not b!528385) (not b!528348) (not d!187901) (not b!528352) (not b!527820) (not d!187813) (not b!528208) (not b!527903) (not b!528398) (not setNonEmpty!2661) (not b!527947) (not b!528293) (not b!528363) (not b!528000) (not d!187843) (not b!528315) (not d!187875) (not b!528276) (not setNonEmpty!2662) (not b!528197) (not b!528335) (not b!528272) (not b!528168) b_and!51539 (not setNonEmpty!2643) (not b!527817) (not d!187795) (not b!528205) (not b_next!14061) (not d!187749) (not setNonEmpty!2663) (not b!527878) (not b!528189) b_and!51531 (not b!528041) (not b!528391) (not b!528292) (not b!528321) (not setNonEmpty!2627) (not b!528305) (not b!528260) (not b!528179) (not b!528115) (not d!187751) (not b!528358) (not b!528204) (not d!187705) (not b!527816) (not b!528028) (not b!528216) (not b!528030) (not b!528269) (not b!528033) b_and!51527 (not b!527928) (not b_next!14067) (not d!187787) (not b!527968) (not b!528066) (not b!528259) (not mapNonEmpty!2354) (not d!187921) (not b!527845) (not b!528045) (not b!528316) (not d!187825) b_and!51549 (not b_next!14069) (not b!528069) (not b!527925) (not b!528355) (not b!528165) (not d!187809) (not b_next!14049) (not d!187747) (not b!527929) (not b_next!14059) (not b!528261) (not d!187709) (not b!528289) (not b!527980) (not d!187793) (not b!528332) (not b!527986) (not b!528277) (not b!528368) (not b!527887) (not b!528135) (not d!187765) (not d!187897) (not b!527879) (not setNonEmpty!2648) (not d!187725) (not d!187923) b_and!51537 (not b!528346) (not b!527858) (not b!528134) (not b!528353) (not b!528167) (not b!528056) (not b!528118) (not b!528311) (not b!528271) (not b!528172) (not setNonEmpty!2641) b_and!51553 (not setNonEmpty!2631) (not b!528217) (not b!528265) (not d!187871) (not b!527880) (not b!527836) (not setNonEmpty!2633) (not b!527967) (not setNonEmpty!2625) (not d!187933) (not d!187811) (not b!528198) (not b!528061) (not b!528345) (not b!528219) (not b!527819) (not b!527897) (not b!528053) (not b!527972) b_and!51529 (not b!528046) (not b!528029) (not b!527888) (not b!528034) (not b!527979) (not d!187729) (not b!528098) (not b!528313) (not d!187733) (not b!528092) (not b!528301) (not setNonEmpty!2653) (not b_next!14051) (not b!528263) (not b!527973) tp_is_empty!2799 (not b_next!14065) (not d!187899) (not b!528055) (not b!528132) (not b!528107) (not b!528380))
(check-sat (not b_next!14053) b_and!51543 (not b_next!14057) (not b_next!14071) b_and!51541 b_and!51533 b_and!51547 (not b_next!14055) b_and!51531 b_and!51537 b_and!51553 b_and!51529 b_and!51551 (not b_next!14063) (not b_next!14061) b_and!51539 b_and!51527 (not b_next!14067) (not b_next!14049) (not b_next!14059) b_and!51549 (not b_next!14069) (not b_next!14065) (not b_next!14051))
