; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71486 () Bool)

(assert start!71486)

(declare-fun b!771228 () Bool)

(declare-fun b_free!24365 () Bool)

(declare-fun b_next!24429 () Bool)

(assert (=> b!771228 (= b_free!24365 (not b_next!24429))))

(declare-fun tp!252552 () Bool)

(declare-fun b_and!71845 () Bool)

(assert (=> b!771228 (= tp!252552 b_and!71845)))

(declare-fun b!771223 () Bool)

(declare-fun b_free!24367 () Bool)

(declare-fun b_next!24431 () Bool)

(assert (=> b!771223 (= b_free!24367 (not b_next!24431))))

(declare-fun tp!252574 () Bool)

(declare-fun b_and!71847 () Bool)

(assert (=> b!771223 (= tp!252574 b_and!71847)))

(declare-fun b!771225 () Bool)

(declare-fun b_free!24369 () Bool)

(declare-fun b_next!24433 () Bool)

(assert (=> b!771225 (= b_free!24369 (not b_next!24433))))

(declare-fun tp!252571 () Bool)

(declare-fun b_and!71849 () Bool)

(assert (=> b!771225 (= tp!252571 b_and!71849)))

(declare-fun b!771229 () Bool)

(declare-fun b_free!24371 () Bool)

(declare-fun b_next!24435 () Bool)

(assert (=> b!771229 (= b_free!24371 (not b_next!24435))))

(declare-fun tp!252570 () Bool)

(declare-fun b_and!71851 () Bool)

(assert (=> b!771229 (= tp!252570 b_and!71851)))

(declare-fun b!771214 () Bool)

(declare-fun b_free!24373 () Bool)

(declare-fun b_next!24437 () Bool)

(assert (=> b!771214 (= b_free!24373 (not b_next!24437))))

(declare-fun tp!252557 () Bool)

(declare-fun b_and!71853 () Bool)

(assert (=> b!771214 (= tp!252557 b_and!71853)))

(declare-fun b!771204 () Bool)

(declare-fun b_free!24375 () Bool)

(declare-fun b_next!24439 () Bool)

(assert (=> b!771204 (= b_free!24375 (not b_next!24439))))

(declare-fun tp!252558 () Bool)

(declare-fun b_and!71855 () Bool)

(assert (=> b!771204 (= tp!252558 b_and!71855)))

(declare-fun b_free!24377 () Bool)

(declare-fun b_next!24441 () Bool)

(assert (=> b!771204 (= b_free!24377 (not b_next!24441))))

(declare-fun tp!252554 () Bool)

(declare-fun b_and!71857 () Bool)

(assert (=> b!771204 (= tp!252554 b_and!71857)))

(declare-fun b!771220 () Bool)

(declare-fun b_free!24379 () Bool)

(declare-fun b_next!24443 () Bool)

(assert (=> b!771220 (= b_free!24379 (not b_next!24443))))

(declare-fun tp!252563 () Bool)

(declare-fun b_and!71859 () Bool)

(assert (=> b!771220 (= tp!252563 b_and!71859)))

(declare-fun b!771203 () Bool)

(declare-fun e!496906 () Bool)

(declare-fun e!496900 () Bool)

(declare-fun e!496898 () Bool)

(declare-datatypes ((C!4576 0))(
  ( (C!4577 (val!2518 Int)) )
))
(declare-datatypes ((Regex!1987 0))(
  ( (ElementMatch!1987 (c!130270 C!4576)) (Concat!3667 (regOne!4486 Regex!1987) (regTwo!4486 Regex!1987)) (EmptyExpr!1987) (Star!1987 (reg!2316 Regex!1987)) (EmptyLang!1987) (Union!1987 (regOne!4487 Regex!1987) (regTwo!4487 Regex!1987)) )
))
(declare-datatypes ((List!8596 0))(
  ( (Nil!8582) (Cons!8582 (h!13983 Regex!1987) (t!91878 List!8596)) )
))
(declare-datatypes ((Context!778 0))(
  ( (Context!779 (exprs!889 List!8596)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10012 0))(
  ( (tuple2!10013 (_1!5773 (InoxSet Context!778)) (_2!5773 Int)) )
))
(declare-datatypes ((tuple2!10014 0))(
  ( (tuple2!10015 (_1!5774 tuple2!10012) (_2!5774 Int)) )
))
(declare-datatypes ((List!8597 0))(
  ( (Nil!8583) (Cons!8583 (h!13984 tuple2!10014) (t!91879 List!8597)) )
))
(declare-datatypes ((array!4165 0))(
  ( (array!4166 (arr!1858 (Array (_ BitVec 32) List!8597)) (size!6978 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1153 0))(
  ( (HashableExt!1152 (__x!6889 Int)) )
))
(declare-datatypes ((List!8598 0))(
  ( (Nil!8584) (Cons!8584 (h!13985 C!4576) (t!91880 List!8598)) )
))
(declare-datatypes ((IArray!5771 0))(
  ( (IArray!5772 (innerList!2943 List!8598)) )
))
(declare-datatypes ((Conc!2885 0))(
  ( (Node!2885 (left!6393 Conc!2885) (right!6723 Conc!2885) (csize!6000 Int) (cheight!3096 Int)) (Leaf!4232 (xs!5572 IArray!5771) (csize!6001 Int)) (Empty!2885) )
))
(declare-datatypes ((array!4167 0))(
  ( (array!4168 (arr!1859 (Array (_ BitVec 32) (_ BitVec 64))) (size!6979 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2362 0))(
  ( (LongMapFixedSize!2363 (defaultEntry!1537 Int) (mask!3059 (_ BitVec 32)) (extraKeys!1428 (_ BitVec 32)) (zeroValue!1438 List!8597) (minValue!1438 List!8597) (_size!2471 (_ BitVec 32)) (_keys!1475 array!4167) (_values!1460 array!4165) (_vacant!1242 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4665 0))(
  ( (Cell!4666 (v!18714 LongMapFixedSize!2362)) )
))
(declare-datatypes ((MutLongMap!1181 0))(
  ( (LongMap!1181 (underlying!2545 Cell!4665)) (MutLongMapExt!1180 (__x!6890 Int)) )
))
(declare-datatypes ((Cell!4667 0))(
  ( (Cell!4668 (v!18715 MutLongMap!1181)) )
))
(declare-datatypes ((MutableMap!1153 0))(
  ( (MutableMapExt!1152 (__x!6891 Int)) (HashMap!1153 (underlying!2546 Cell!4667) (hashF!3061 Hashable!1153) (_size!2472 (_ BitVec 32)) (defaultValue!1304 Int)) )
))
(declare-datatypes ((BalanceConc!5782 0))(
  ( (BalanceConc!5783 (c!130271 Conc!2885)) )
))
(declare-datatypes ((CacheFindLongestMatch!322 0))(
  ( (CacheFindLongestMatch!323 (cache!1540 MutableMap!1153) (totalInput!2122 BalanceConc!5782)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!322)

(declare-fun inv!10916 (BalanceConc!5782) Bool)

(assert (=> b!771203 (= e!496906 (and e!496900 (inv!10916 (totalInput!2122 cacheFindLongestMatch!134)) e!496898))))

(declare-fun e!496892 () Bool)

(assert (=> b!771204 (= e!496892 (and tp!252558 tp!252554))))

(declare-fun b!771205 () Bool)

(declare-fun res!338068 () Bool)

(declare-fun e!496894 () Bool)

(assert (=> b!771205 (=> (not res!338068) (not e!496894))))

(declare-datatypes ((tuple3!986 0))(
  ( (tuple3!987 (_1!5775 Regex!1987) (_2!5775 Context!778) (_3!767 C!4576)) )
))
(declare-datatypes ((tuple2!10016 0))(
  ( (tuple2!10017 (_1!5776 tuple3!986) (_2!5776 (InoxSet Context!778))) )
))
(declare-datatypes ((List!8599 0))(
  ( (Nil!8585) (Cons!8585 (h!13986 tuple2!10016) (t!91881 List!8599)) )
))
(declare-datatypes ((array!4169 0))(
  ( (array!4170 (arr!1860 (Array (_ BitVec 32) List!8599)) (size!6980 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2364 0))(
  ( (LongMapFixedSize!2365 (defaultEntry!1538 Int) (mask!3060 (_ BitVec 32)) (extraKeys!1429 (_ BitVec 32)) (zeroValue!1439 List!8599) (minValue!1439 List!8599) (_size!2473 (_ BitVec 32)) (_keys!1476 array!4167) (_values!1461 array!4169) (_vacant!1243 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4669 0))(
  ( (Cell!4670 (v!18716 LongMapFixedSize!2364)) )
))
(declare-datatypes ((MutLongMap!1182 0))(
  ( (LongMap!1182 (underlying!2547 Cell!4669)) (MutLongMapExt!1181 (__x!6892 Int)) )
))
(declare-datatypes ((Cell!4671 0))(
  ( (Cell!4672 (v!18717 MutLongMap!1182)) )
))
(declare-datatypes ((Hashable!1154 0))(
  ( (HashableExt!1153 (__x!6893 Int)) )
))
(declare-datatypes ((MutableMap!1154 0))(
  ( (MutableMapExt!1153 (__x!6894 Int)) (HashMap!1154 (underlying!2548 Cell!4671) (hashF!3062 Hashable!1154) (_size!2474 (_ BitVec 32)) (defaultValue!1305 Int)) )
))
(declare-datatypes ((CacheDown!658 0))(
  ( (CacheDown!659 (cache!1541 MutableMap!1154)) )
))
(declare-fun cacheDown!666 () CacheDown!658)

(declare-fun valid!957 (CacheDown!658) Bool)

(assert (=> b!771205 (= res!338068 (valid!957 cacheDown!666))))

(declare-fun b!771206 () Bool)

(declare-fun res!338075 () Bool)

(assert (=> b!771206 (=> (not res!338075) (not e!496894))))

(declare-datatypes ((tuple2!10018 0))(
  ( (tuple2!10019 (_1!5777 Context!778) (_2!5777 C!4576)) )
))
(declare-datatypes ((tuple2!10020 0))(
  ( (tuple2!10021 (_1!5778 tuple2!10018) (_2!5778 (InoxSet Context!778))) )
))
(declare-datatypes ((List!8600 0))(
  ( (Nil!8586) (Cons!8586 (h!13987 tuple2!10020) (t!91882 List!8600)) )
))
(declare-datatypes ((array!4171 0))(
  ( (array!4172 (arr!1861 (Array (_ BitVec 32) List!8600)) (size!6981 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2366 0))(
  ( (LongMapFixedSize!2367 (defaultEntry!1539 Int) (mask!3061 (_ BitVec 32)) (extraKeys!1430 (_ BitVec 32)) (zeroValue!1440 List!8600) (minValue!1440 List!8600) (_size!2475 (_ BitVec 32)) (_keys!1477 array!4167) (_values!1462 array!4171) (_vacant!1244 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4673 0))(
  ( (Cell!4674 (v!18718 LongMapFixedSize!2366)) )
))
(declare-datatypes ((MutLongMap!1183 0))(
  ( (LongMap!1183 (underlying!2549 Cell!4673)) (MutLongMapExt!1182 (__x!6895 Int)) )
))
(declare-datatypes ((Cell!4675 0))(
  ( (Cell!4676 (v!18719 MutLongMap!1183)) )
))
(declare-datatypes ((Hashable!1155 0))(
  ( (HashableExt!1154 (__x!6896 Int)) )
))
(declare-datatypes ((MutableMap!1155 0))(
  ( (MutableMapExt!1154 (__x!6897 Int)) (HashMap!1155 (underlying!2550 Cell!4675) (hashF!3063 Hashable!1155) (_size!2476 (_ BitVec 32)) (defaultValue!1306 Int)) )
))
(declare-datatypes ((CacheUp!652 0))(
  ( (CacheUp!653 (cache!1542 MutableMap!1155)) )
))
(declare-fun cacheUp!653 () CacheUp!652)

(declare-fun valid!958 (CacheUp!652) Bool)

(assert (=> b!771206 (= res!338075 (valid!958 cacheUp!653))))

(declare-fun res!338071 () Bool)

(declare-fun e!496904 () Bool)

(assert (=> start!71486 (=> (not res!338071) (not e!496904))))

(declare-datatypes ((LexerInterface!1439 0))(
  ( (LexerInterfaceExt!1436 (__x!6898 Int)) (Lexer!1437) )
))
(declare-fun thiss!15653 () LexerInterface!1439)

(get-info :version)

(assert (=> start!71486 (= res!338071 ((_ is Lexer!1437) thiss!15653))))

(assert (=> start!71486 e!496904))

(declare-fun e!496905 () Bool)

(assert (=> start!71486 e!496905))

(declare-fun input!1432 () BalanceConc!5782)

(declare-fun e!496876 () Bool)

(assert (=> start!71486 (and (inv!10916 input!1432) e!496876)))

(declare-fun inv!10917 (CacheFindLongestMatch!322) Bool)

(assert (=> start!71486 (and (inv!10917 cacheFindLongestMatch!134) e!496906)))

(assert (=> start!71486 true))

(declare-fun e!496891 () Bool)

(declare-fun inv!10918 (CacheUp!652) Bool)

(assert (=> start!71486 (and (inv!10918 cacheUp!653) e!496891)))

(declare-fun totalInput!472 () BalanceConc!5782)

(declare-fun e!496908 () Bool)

(assert (=> start!71486 (and (inv!10916 totalInput!472) e!496908)))

(declare-fun e!496897 () Bool)

(declare-fun inv!10919 (CacheDown!658) Bool)

(assert (=> start!71486 (and (inv!10919 cacheDown!666) e!496897)))

(declare-fun b!771207 () Bool)

(declare-fun e!496884 () Bool)

(declare-fun e!496877 () Bool)

(declare-fun lt!313730 () MutLongMap!1181)

(assert (=> b!771207 (= e!496884 (and e!496877 ((_ is LongMap!1181) lt!313730)))))

(assert (=> b!771207 (= lt!313730 (v!18715 (underlying!2546 (cache!1540 cacheFindLongestMatch!134))))))

(declare-fun b!771208 () Bool)

(declare-fun res!338073 () Bool)

(assert (=> b!771208 (=> (not res!338073) (not e!496894))))

(declare-fun valid!959 (CacheFindLongestMatch!322) Bool)

(assert (=> b!771208 (= res!338073 (valid!959 cacheFindLongestMatch!134))))

(declare-fun b!771209 () Bool)

(declare-fun res!338070 () Bool)

(assert (=> b!771209 (=> (not res!338070) (not e!496904))))

(declare-datatypes ((List!8601 0))(
  ( (Nil!8587) (Cons!8587 (h!13988 (_ BitVec 16)) (t!91883 List!8601)) )
))
(declare-datatypes ((TokenValue!1680 0))(
  ( (FloatLiteralValue!3360 (text!12205 List!8601)) (TokenValueExt!1679 (__x!6899 Int)) (Broken!8400 (value!52270 List!8601)) (Object!1693) (End!1680) (Def!1680) (Underscore!1680) (Match!1680) (Else!1680) (Error!1680) (Case!1680) (If!1680) (Extends!1680) (Abstract!1680) (Class!1680) (Val!1680) (DelimiterValue!3360 (del!1740 List!8601)) (KeywordValue!1686 (value!52271 List!8601)) (CommentValue!3360 (value!52272 List!8601)) (WhitespaceValue!3360 (value!52273 List!8601)) (IndentationValue!1680 (value!52274 List!8601)) (String!10149) (Int32!1680) (Broken!8401 (value!52275 List!8601)) (Boolean!1681) (Unit!13114) (OperatorValue!1683 (op!1740 List!8601)) (IdentifierValue!3360 (value!52276 List!8601)) (IdentifierValue!3361 (value!52277 List!8601)) (WhitespaceValue!3361 (value!52278 List!8601)) (True!3360) (False!3360) (Broken!8402 (value!52279 List!8601)) (Broken!8403 (value!52280 List!8601)) (True!3361) (RightBrace!1680) (RightBracket!1680) (Colon!1680) (Null!1680) (Comma!1680) (LeftBracket!1680) (False!3361) (LeftBrace!1680) (ImaginaryLiteralValue!1680 (text!12206 List!8601)) (StringLiteralValue!5040 (value!52281 List!8601)) (EOFValue!1680 (value!52282 List!8601)) (IdentValue!1680 (value!52283 List!8601)) (DelimiterValue!3361 (value!52284 List!8601)) (DedentValue!1680 (value!52285 List!8601)) (NewLineValue!1680 (value!52286 List!8601)) (IntegerValue!5040 (value!52287 (_ BitVec 32)) (text!12207 List!8601)) (IntegerValue!5041 (value!52288 Int) (text!12208 List!8601)) (Times!1680) (Or!1680) (Equal!1680) (Minus!1680) (Broken!8404 (value!52289 List!8601)) (And!1680) (Div!1680) (LessEqual!1680) (Mod!1680) (Concat!3668) (Not!1680) (Plus!1680) (SpaceValue!1680 (value!52290 List!8601)) (IntegerValue!5042 (value!52291 Int) (text!12209 List!8601)) (StringLiteralValue!5041 (text!12210 List!8601)) (FloatLiteralValue!3361 (text!12211 List!8601)) (BytesLiteralValue!1680 (value!52292 List!8601)) (CommentValue!3361 (value!52293 List!8601)) (StringLiteralValue!5042 (value!52294 List!8601)) (ErrorTokenValue!1680 (msg!1741 List!8601)) )
))
(declare-datatypes ((TokenValueInjection!3096 0))(
  ( (TokenValueInjection!3097 (toValue!2628 Int) (toChars!2487 Int)) )
))
(declare-datatypes ((String!10150 0))(
  ( (String!10151 (value!52295 String)) )
))
(declare-datatypes ((Rule!3072 0))(
  ( (Rule!3073 (regex!1636 Regex!1987) (tag!1898 String!10150) (isSeparator!1636 Bool) (transformation!1636 TokenValueInjection!3096)) )
))
(declare-datatypes ((List!8602 0))(
  ( (Nil!8588) (Cons!8588 (h!13989 Rule!3072) (t!91884 List!8602)) )
))
(declare-fun rulesArg!343 () List!8602)

(declare-fun isEmpty!5216 (List!8602) Bool)

(assert (=> b!771209 (= res!338070 (not (isEmpty!5216 rulesArg!343)))))

(declare-fun b!771210 () Bool)

(declare-fun e!496885 () Bool)

(assert (=> b!771210 (= e!496894 (not e!496885))))

(declare-fun res!338067 () Bool)

(assert (=> b!771210 (=> res!338067 e!496885)))

(assert (=> b!771210 (= res!338067 (or (and ((_ is Cons!8588) rulesArg!343) ((_ is Nil!8588) (t!91884 rulesArg!343))) (not ((_ is Cons!8588) rulesArg!343))))))

(declare-fun lt!313729 () List!8598)

(declare-fun isPrefix!992 (List!8598 List!8598) Bool)

(assert (=> b!771210 (isPrefix!992 lt!313729 lt!313729)))

(declare-datatypes ((Unit!13115 0))(
  ( (Unit!13116) )
))
(declare-fun lt!313727 () Unit!13115)

(declare-fun lemmaIsPrefixRefl!703 (List!8598 List!8598) Unit!13115)

(assert (=> b!771210 (= lt!313727 (lemmaIsPrefixRefl!703 lt!313729 lt!313729))))

(declare-fun b!771211 () Bool)

(declare-fun e!496889 () Bool)

(declare-fun tp!252559 () Bool)

(declare-fun mapRes!5781 () Bool)

(assert (=> b!771211 (= e!496889 (and tp!252559 mapRes!5781))))

(declare-fun condMapEmpty!5780 () Bool)

(declare-fun mapDefault!5782 () List!8597)

(assert (=> b!771211 (= condMapEmpty!5780 (= (arr!1858 (_values!1460 (v!18714 (underlying!2545 (v!18715 (underlying!2546 (cache!1540 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8597)) mapDefault!5782)))))

(declare-fun b!771212 () Bool)

(declare-fun e!496886 () Bool)

(assert (=> b!771212 (= e!496897 e!496886)))

(declare-fun b!771213 () Bool)

(declare-fun tp!252566 () Bool)

(declare-fun e!496878 () Bool)

(declare-fun inv!10910 (String!10150) Bool)

(declare-fun inv!10920 (TokenValueInjection!3096) Bool)

(assert (=> b!771213 (= e!496878 (and tp!252566 (inv!10910 (tag!1898 (h!13989 rulesArg!343))) (inv!10920 (transformation!1636 (h!13989 rulesArg!343))) e!496892))))

(declare-fun e!496899 () Bool)

(declare-fun tp!252573 () Bool)

(declare-fun e!496875 () Bool)

(declare-fun tp!252547 () Bool)

(declare-fun array_inv!1349 (array!4167) Bool)

(declare-fun array_inv!1350 (array!4171) Bool)

(assert (=> b!771214 (= e!496875 (and tp!252557 tp!252573 tp!252547 (array_inv!1349 (_keys!1477 (v!18718 (underlying!2549 (v!18719 (underlying!2550 (cache!1542 cacheUp!653))))))) (array_inv!1350 (_values!1462 (v!18718 (underlying!2549 (v!18719 (underlying!2550 (cache!1542 cacheUp!653))))))) e!496899))))

(declare-fun b!771215 () Bool)

(declare-fun tp!252567 () Bool)

(declare-fun inv!10921 (Conc!2885) Bool)

(assert (=> b!771215 (= e!496898 (and (inv!10921 (c!130271 (totalInput!2122 cacheFindLongestMatch!134))) tp!252567))))

(declare-fun b!771216 () Bool)

(declare-fun e!496890 () Bool)

(declare-fun e!496882 () Bool)

(assert (=> b!771216 (= e!496890 e!496882)))

(declare-fun mapNonEmpty!5780 () Bool)

(declare-fun tp!252555 () Bool)

(declare-fun tp!252549 () Bool)

(assert (=> mapNonEmpty!5780 (= mapRes!5781 (and tp!252555 tp!252549))))

(declare-fun mapKey!5781 () (_ BitVec 32))

(declare-fun mapValue!5780 () List!8597)

(declare-fun mapRest!5782 () (Array (_ BitVec 32) List!8597))

(assert (=> mapNonEmpty!5780 (= (arr!1858 (_values!1460 (v!18714 (underlying!2545 (v!18715 (underlying!2546 (cache!1540 cacheFindLongestMatch!134))))))) (store mapRest!5782 mapKey!5781 mapValue!5780))))

(declare-fun b!771217 () Bool)

(declare-fun tp!252564 () Bool)

(assert (=> b!771217 (= e!496905 (and e!496878 tp!252564))))

(declare-fun b!771218 () Bool)

(declare-fun e!496901 () Bool)

(declare-fun e!496888 () Bool)

(assert (=> b!771218 (= e!496901 e!496888)))

(declare-fun b!771219 () Bool)

(declare-fun res!338074 () Bool)

(assert (=> b!771219 (=> (not res!338074) (not e!496894))))

(assert (=> b!771219 (= res!338074 (= (totalInput!2122 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun e!496881 () Bool)

(assert (=> b!771220 (= e!496886 (and e!496881 tp!252563))))

(declare-fun b!771221 () Bool)

(declare-fun tp!252565 () Bool)

(assert (=> b!771221 (= e!496876 (and (inv!10921 (c!130271 input!1432)) tp!252565))))

(declare-fun mapNonEmpty!5781 () Bool)

(declare-fun mapRes!5782 () Bool)

(declare-fun tp!252568 () Bool)

(declare-fun tp!252548 () Bool)

(assert (=> mapNonEmpty!5781 (= mapRes!5782 (and tp!252568 tp!252548))))

(declare-fun mapValue!5781 () List!8600)

(declare-fun mapRest!5781 () (Array (_ BitVec 32) List!8600))

(declare-fun mapKey!5780 () (_ BitVec 32))

(assert (=> mapNonEmpty!5781 (= (arr!1861 (_values!1462 (v!18718 (underlying!2549 (v!18719 (underlying!2550 (cache!1542 cacheUp!653))))))) (store mapRest!5781 mapKey!5780 mapValue!5781))))

(declare-fun b!771222 () Bool)

(declare-fun e!496902 () Bool)

(declare-fun lt!313726 () MutLongMap!1183)

(assert (=> b!771222 (= e!496902 (and e!496901 ((_ is LongMap!1183) lt!313726)))))

(assert (=> b!771222 (= lt!313726 (v!18719 (underlying!2550 (cache!1542 cacheUp!653))))))

(declare-fun e!496893 () Bool)

(assert (=> b!771223 (= e!496893 (and e!496902 tp!252574))))

(declare-fun b!771224 () Bool)

(declare-fun e!496883 () Bool)

(assert (=> b!771224 (= e!496877 e!496883)))

(assert (=> b!771225 (= e!496900 (and e!496884 tp!252571))))

(declare-fun b!771226 () Bool)

(declare-fun e!496880 () Bool)

(declare-fun lt!313728 () MutLongMap!1182)

(assert (=> b!771226 (= e!496881 (and e!496880 ((_ is LongMap!1182) lt!313728)))))

(assert (=> b!771226 (= lt!313728 (v!18717 (underlying!2548 (cache!1541 cacheDown!666))))))

(declare-fun b!771227 () Bool)

(assert (=> b!771227 (= e!496880 e!496890)))

(declare-fun e!496895 () Bool)

(declare-fun tp!252550 () Bool)

(declare-fun tp!252551 () Bool)

(declare-fun array_inv!1351 (array!4165) Bool)

(assert (=> b!771228 (= e!496895 (and tp!252552 tp!252550 tp!252551 (array_inv!1349 (_keys!1475 (v!18714 (underlying!2545 (v!18715 (underlying!2546 (cache!1540 cacheFindLongestMatch!134))))))) (array_inv!1351 (_values!1460 (v!18714 (underlying!2545 (v!18715 (underlying!2546 (cache!1540 cacheFindLongestMatch!134))))))) e!496889))))

(declare-fun e!496907 () Bool)

(declare-fun tp!252553 () Bool)

(declare-fun tp!252562 () Bool)

(declare-fun array_inv!1352 (array!4169) Bool)

(assert (=> b!771229 (= e!496882 (and tp!252570 tp!252562 tp!252553 (array_inv!1349 (_keys!1476 (v!18716 (underlying!2547 (v!18717 (underlying!2548 (cache!1541 cacheDown!666))))))) (array_inv!1352 (_values!1461 (v!18716 (underlying!2547 (v!18717 (underlying!2548 (cache!1541 cacheDown!666))))))) e!496907))))

(declare-fun b!771230 () Bool)

(declare-fun tp!252572 () Bool)

(assert (=> b!771230 (= e!496899 (and tp!252572 mapRes!5782))))

(declare-fun condMapEmpty!5781 () Bool)

(declare-fun mapDefault!5781 () List!8600)

(assert (=> b!771230 (= condMapEmpty!5781 (= (arr!1861 (_values!1462 (v!18718 (underlying!2549 (v!18719 (underlying!2550 (cache!1542 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8600)) mapDefault!5781)))))

(declare-fun b!771231 () Bool)

(declare-fun res!338072 () Bool)

(assert (=> b!771231 (=> (not res!338072) (not e!496904))))

(declare-fun rulesValidInductive!581 (LexerInterface!1439 List!8602) Bool)

(assert (=> b!771231 (= res!338072 (rulesValidInductive!581 thiss!15653 rulesArg!343))))

(declare-fun b!771232 () Bool)

(assert (=> b!771232 (= e!496883 e!496895)))

(declare-fun b!771233 () Bool)

(declare-fun tp!252560 () Bool)

(declare-fun mapRes!5780 () Bool)

(assert (=> b!771233 (= e!496907 (and tp!252560 mapRes!5780))))

(declare-fun condMapEmpty!5782 () Bool)

(declare-fun mapDefault!5780 () List!8599)

(assert (=> b!771233 (= condMapEmpty!5782 (= (arr!1860 (_values!1461 (v!18716 (underlying!2547 (v!18717 (underlying!2548 (cache!1541 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8599)) mapDefault!5780)))))

(declare-fun mapIsEmpty!5780 () Bool)

(assert (=> mapIsEmpty!5780 mapRes!5781))

(declare-fun mapIsEmpty!5781 () Bool)

(assert (=> mapIsEmpty!5781 mapRes!5780))

(declare-fun mapNonEmpty!5782 () Bool)

(declare-fun tp!252561 () Bool)

(declare-fun tp!252569 () Bool)

(assert (=> mapNonEmpty!5782 (= mapRes!5780 (and tp!252561 tp!252569))))

(declare-fun mapValue!5782 () List!8599)

(declare-fun mapRest!5780 () (Array (_ BitVec 32) List!8599))

(declare-fun mapKey!5782 () (_ BitVec 32))

(assert (=> mapNonEmpty!5782 (= (arr!1860 (_values!1461 (v!18716 (underlying!2547 (v!18717 (underlying!2548 (cache!1541 cacheDown!666))))))) (store mapRest!5780 mapKey!5782 mapValue!5782))))

(declare-fun b!771234 () Bool)

(assert (=> b!771234 (= e!496904 e!496894)))

(declare-fun res!338069 () Bool)

(assert (=> b!771234 (=> (not res!338069) (not e!496894))))

(declare-fun isSuffix!217 (List!8598 List!8598) Bool)

(declare-fun list!3437 (BalanceConc!5782) List!8598)

(assert (=> b!771234 (= res!338069 (isSuffix!217 lt!313729 (list!3437 totalInput!472)))))

(assert (=> b!771234 (= lt!313729 (list!3437 input!1432))))

(declare-fun b!771235 () Bool)

(assert (=> b!771235 (= e!496891 e!496893)))

(declare-fun b!771236 () Bool)

(declare-fun tp!252556 () Bool)

(assert (=> b!771236 (= e!496908 (and (inv!10921 (c!130271 totalInput!472)) tp!252556))))

(declare-fun mapIsEmpty!5782 () Bool)

(assert (=> mapIsEmpty!5782 mapRes!5782))

(declare-fun b!771237 () Bool)

(assert (=> b!771237 (= e!496885 true)))

(declare-fun lt!313732 () Bool)

(assert (=> b!771237 (= lt!313732 (rulesValidInductive!581 thiss!15653 (t!91884 rulesArg!343)))))

(declare-datatypes ((Token!2946 0))(
  ( (Token!2947 (value!52296 TokenValue!1680) (rule!2761 Rule!3072) (size!6982 Int) (originalCharacters!1898 List!8598)) )
))
(declare-datatypes ((tuple2!10022 0))(
  ( (tuple2!10023 (_1!5779 Token!2946) (_2!5779 BalanceConc!5782)) )
))
(declare-datatypes ((Option!1872 0))(
  ( (None!1871) (Some!1871 (v!18720 tuple2!10022)) )
))
(declare-datatypes ((tuple4!548 0))(
  ( (tuple4!549 (_1!5780 Option!1872) (_2!5780 CacheUp!652) (_3!768 CacheDown!658) (_4!274 CacheFindLongestMatch!322)) )
))
(declare-fun lt!313731 () tuple4!548)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!65 (LexerInterface!1439 Rule!3072 BalanceConc!5782 BalanceConc!5782 CacheUp!652 CacheDown!658 CacheFindLongestMatch!322) tuple4!548)

(assert (=> b!771237 (= lt!313731 (maxPrefixOneRuleZipperSequenceV2Mem!65 thiss!15653 (h!13989 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun b!771238 () Bool)

(assert (=> b!771238 (= e!496888 e!496875)))

(assert (= (and start!71486 res!338071) b!771231))

(assert (= (and b!771231 res!338072) b!771209))

(assert (= (and b!771209 res!338070) b!771234))

(assert (= (and b!771234 res!338069) b!771206))

(assert (= (and b!771206 res!338075) b!771205))

(assert (= (and b!771205 res!338068) b!771208))

(assert (= (and b!771208 res!338073) b!771219))

(assert (= (and b!771219 res!338074) b!771210))

(assert (= (and b!771210 (not res!338067)) b!771237))

(assert (= b!771213 b!771204))

(assert (= b!771217 b!771213))

(assert (= (and start!71486 ((_ is Cons!8588) rulesArg!343)) b!771217))

(assert (= start!71486 b!771221))

(assert (= (and b!771211 condMapEmpty!5780) mapIsEmpty!5780))

(assert (= (and b!771211 (not condMapEmpty!5780)) mapNonEmpty!5780))

(assert (= b!771228 b!771211))

(assert (= b!771232 b!771228))

(assert (= b!771224 b!771232))

(assert (= (and b!771207 ((_ is LongMap!1181) (v!18715 (underlying!2546 (cache!1540 cacheFindLongestMatch!134))))) b!771224))

(assert (= b!771225 b!771207))

(assert (= (and b!771203 ((_ is HashMap!1153) (cache!1540 cacheFindLongestMatch!134))) b!771225))

(assert (= b!771203 b!771215))

(assert (= start!71486 b!771203))

(assert (= (and b!771230 condMapEmpty!5781) mapIsEmpty!5782))

(assert (= (and b!771230 (not condMapEmpty!5781)) mapNonEmpty!5781))

(assert (= b!771214 b!771230))

(assert (= b!771238 b!771214))

(assert (= b!771218 b!771238))

(assert (= (and b!771222 ((_ is LongMap!1183) (v!18719 (underlying!2550 (cache!1542 cacheUp!653))))) b!771218))

(assert (= b!771223 b!771222))

(assert (= (and b!771235 ((_ is HashMap!1155) (cache!1542 cacheUp!653))) b!771223))

(assert (= start!71486 b!771235))

(assert (= start!71486 b!771236))

(assert (= (and b!771233 condMapEmpty!5782) mapIsEmpty!5781))

(assert (= (and b!771233 (not condMapEmpty!5782)) mapNonEmpty!5782))

(assert (= b!771229 b!771233))

(assert (= b!771216 b!771229))

(assert (= b!771227 b!771216))

(assert (= (and b!771226 ((_ is LongMap!1182) (v!18717 (underlying!2548 (cache!1541 cacheDown!666))))) b!771227))

(assert (= b!771220 b!771226))

(assert (= (and b!771212 ((_ is HashMap!1154) (cache!1541 cacheDown!666))) b!771220))

(assert (= start!71486 b!771212))

(declare-fun m!1039839 () Bool)

(assert (=> b!771205 m!1039839))

(declare-fun m!1039841 () Bool)

(assert (=> b!771236 m!1039841))

(declare-fun m!1039843 () Bool)

(assert (=> b!771209 m!1039843))

(declare-fun m!1039845 () Bool)

(assert (=> b!771221 m!1039845))

(declare-fun m!1039847 () Bool)

(assert (=> b!771208 m!1039847))

(declare-fun m!1039849 () Bool)

(assert (=> b!771234 m!1039849))

(assert (=> b!771234 m!1039849))

(declare-fun m!1039851 () Bool)

(assert (=> b!771234 m!1039851))

(declare-fun m!1039853 () Bool)

(assert (=> b!771234 m!1039853))

(declare-fun m!1039855 () Bool)

(assert (=> mapNonEmpty!5782 m!1039855))

(declare-fun m!1039857 () Bool)

(assert (=> b!771213 m!1039857))

(declare-fun m!1039859 () Bool)

(assert (=> b!771213 m!1039859))

(declare-fun m!1039861 () Bool)

(assert (=> mapNonEmpty!5781 m!1039861))

(declare-fun m!1039863 () Bool)

(assert (=> b!771237 m!1039863))

(declare-fun m!1039865 () Bool)

(assert (=> b!771237 m!1039865))

(declare-fun m!1039867 () Bool)

(assert (=> mapNonEmpty!5780 m!1039867))

(declare-fun m!1039869 () Bool)

(assert (=> b!771228 m!1039869))

(declare-fun m!1039871 () Bool)

(assert (=> b!771228 m!1039871))

(declare-fun m!1039873 () Bool)

(assert (=> b!771206 m!1039873))

(declare-fun m!1039875 () Bool)

(assert (=> b!771215 m!1039875))

(declare-fun m!1039877 () Bool)

(assert (=> b!771203 m!1039877))

(declare-fun m!1039879 () Bool)

(assert (=> b!771231 m!1039879))

(declare-fun m!1039881 () Bool)

(assert (=> b!771210 m!1039881))

(declare-fun m!1039883 () Bool)

(assert (=> b!771210 m!1039883))

(declare-fun m!1039885 () Bool)

(assert (=> b!771229 m!1039885))

(declare-fun m!1039887 () Bool)

(assert (=> b!771229 m!1039887))

(declare-fun m!1039889 () Bool)

(assert (=> start!71486 m!1039889))

(declare-fun m!1039891 () Bool)

(assert (=> start!71486 m!1039891))

(declare-fun m!1039893 () Bool)

(assert (=> start!71486 m!1039893))

(declare-fun m!1039895 () Bool)

(assert (=> start!71486 m!1039895))

(declare-fun m!1039897 () Bool)

(assert (=> start!71486 m!1039897))

(declare-fun m!1039899 () Bool)

(assert (=> b!771214 m!1039899))

(declare-fun m!1039901 () Bool)

(assert (=> b!771214 m!1039901))

(check-sat (not b!771213) (not b_next!24431) (not mapNonEmpty!5780) (not b!771231) (not b!771203) b_and!71855 (not b!771217) (not b!771230) b_and!71859 b_and!71853 b_and!71849 (not b_next!24435) (not b!771229) (not mapNonEmpty!5782) b_and!71851 (not b!771215) b_and!71857 (not b!771206) (not b_next!24433) (not b!771205) (not b!771211) b_and!71847 (not b_next!24429) (not b!771221) (not mapNonEmpty!5781) (not start!71486) b_and!71845 (not b_next!24437) (not b!771233) (not b!771237) (not b_next!24441) (not b!771210) (not b_next!24439) (not b!771234) (not b!771236) (not b!771208) (not b!771228) (not b!771209) (not b_next!24443) (not b!771214))
(check-sat (not b_next!24433) (not b_next!24431) b_and!71855 b_and!71847 (not b_next!24429) b_and!71859 b_and!71853 b_and!71849 (not b_next!24441) (not b_next!24439) (not b_next!24435) (not b_next!24443) b_and!71851 b_and!71857 b_and!71845 (not b_next!24437))
