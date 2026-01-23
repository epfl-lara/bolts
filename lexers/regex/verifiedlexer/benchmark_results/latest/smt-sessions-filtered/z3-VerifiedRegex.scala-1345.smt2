; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71440 () Bool)

(assert start!71440)

(declare-fun b!770783 () Bool)

(declare-fun b_free!24329 () Bool)

(declare-fun b_next!24393 () Bool)

(assert (=> b!770783 (= b_free!24329 (not b_next!24393))))

(declare-fun tp!252189 () Bool)

(declare-fun b_and!71809 () Bool)

(assert (=> b!770783 (= tp!252189 b_and!71809)))

(declare-fun b!770799 () Bool)

(declare-fun b_free!24331 () Bool)

(declare-fun b_next!24395 () Bool)

(assert (=> b!770799 (= b_free!24331 (not b_next!24395))))

(declare-fun tp!252194 () Bool)

(declare-fun b_and!71811 () Bool)

(assert (=> b!770799 (= tp!252194 b_and!71811)))

(declare-fun b_free!24333 () Bool)

(declare-fun b_next!24397 () Bool)

(assert (=> b!770799 (= b_free!24333 (not b_next!24397))))

(declare-fun tp!252206 () Bool)

(declare-fun b_and!71813 () Bool)

(assert (=> b!770799 (= tp!252206 b_and!71813)))

(declare-fun b!770767 () Bool)

(declare-fun b_free!24335 () Bool)

(declare-fun b_next!24399 () Bool)

(assert (=> b!770767 (= b_free!24335 (not b_next!24399))))

(declare-fun tp!252196 () Bool)

(declare-fun b_and!71815 () Bool)

(assert (=> b!770767 (= tp!252196 b_and!71815)))

(declare-fun b!770794 () Bool)

(declare-fun b_free!24337 () Bool)

(declare-fun b_next!24401 () Bool)

(assert (=> b!770794 (= b_free!24337 (not b_next!24401))))

(declare-fun tp!252191 () Bool)

(declare-fun b_and!71817 () Bool)

(assert (=> b!770794 (= tp!252191 b_and!71817)))

(declare-fun b!770787 () Bool)

(declare-fun b_free!24339 () Bool)

(declare-fun b_next!24403 () Bool)

(assert (=> b!770787 (= b_free!24339 (not b_next!24403))))

(declare-fun tp!252201 () Bool)

(declare-fun b_and!71819 () Bool)

(assert (=> b!770787 (= tp!252201 b_and!71819)))

(declare-fun b!770765 () Bool)

(declare-fun b_free!24341 () Bool)

(declare-fun b_next!24405 () Bool)

(assert (=> b!770765 (= b_free!24341 (not b_next!24405))))

(declare-fun tp!252198 () Bool)

(declare-fun b_and!71821 () Bool)

(assert (=> b!770765 (= tp!252198 b_and!71821)))

(declare-fun b!770763 () Bool)

(declare-fun b_free!24343 () Bool)

(declare-fun b_next!24407 () Bool)

(assert (=> b!770763 (= b_free!24343 (not b_next!24407))))

(declare-fun tp!252200 () Bool)

(declare-fun b_and!71823 () Bool)

(assert (=> b!770763 (= tp!252200 b_and!71823)))

(declare-fun e!496503 () Bool)

(declare-fun e!496517 () Bool)

(assert (=> b!770763 (= e!496503 (and e!496517 tp!252200))))

(declare-fun mapNonEmpty!5753 () Bool)

(declare-fun mapRes!5755 () Bool)

(declare-fun tp!252188 () Bool)

(declare-fun tp!252210 () Bool)

(assert (=> mapNonEmpty!5753 (= mapRes!5755 (and tp!252188 tp!252210))))

(declare-datatypes ((C!4572 0))(
  ( (C!4573 (val!2516 Int)) )
))
(declare-datatypes ((Regex!1985 0))(
  ( (ElementMatch!1985 (c!130258 C!4572)) (Concat!3663 (regOne!4482 Regex!1985) (regTwo!4482 Regex!1985)) (EmptyExpr!1985) (Star!1985 (reg!2314 Regex!1985)) (EmptyLang!1985) (Union!1985 (regOne!4483 Regex!1985) (regTwo!4483 Regex!1985)) )
))
(declare-datatypes ((List!8582 0))(
  ( (Nil!8568) (Cons!8568 (h!13969 Regex!1985) (t!91864 List!8582)) )
))
(declare-datatypes ((Context!774 0))(
  ( (Context!775 (exprs!887 List!8582)) )
))
(declare-datatypes ((tuple2!9986 0))(
  ( (tuple2!9987 (_1!5756 Context!774) (_2!5756 C!4572)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9988 0))(
  ( (tuple2!9989 (_1!5757 tuple2!9986) (_2!5757 (InoxSet Context!774))) )
))
(declare-datatypes ((List!8583 0))(
  ( (Nil!8569) (Cons!8569 (h!13970 tuple2!9988) (t!91865 List!8583)) )
))
(declare-datatypes ((array!4145 0))(
  ( (array!4146 (arr!1850 (Array (_ BitVec 32) (_ BitVec 64))) (size!6967 (_ BitVec 32))) )
))
(declare-datatypes ((array!4147 0))(
  ( (array!4148 (arr!1851 (Array (_ BitVec 32) List!8583)) (size!6968 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2350 0))(
  ( (LongMapFixedSize!2351 (defaultEntry!1531 Int) (mask!3052 (_ BitVec 32)) (extraKeys!1422 (_ BitVec 32)) (zeroValue!1432 List!8583) (minValue!1432 List!8583) (_size!2459 (_ BitVec 32)) (_keys!1469 array!4145) (_values!1454 array!4147) (_vacant!1236 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4641 0))(
  ( (Cell!4642 (v!18701 LongMapFixedSize!2350)) )
))
(declare-datatypes ((MutLongMap!1175 0))(
  ( (LongMap!1175 (underlying!2533 Cell!4641)) (MutLongMapExt!1174 (__x!6867 Int)) )
))
(declare-datatypes ((Cell!4643 0))(
  ( (Cell!4644 (v!18702 MutLongMap!1175)) )
))
(declare-datatypes ((Hashable!1147 0))(
  ( (HashableExt!1146 (__x!6868 Int)) )
))
(declare-datatypes ((MutableMap!1147 0))(
  ( (MutableMapExt!1146 (__x!6869 Int)) (HashMap!1147 (underlying!2534 Cell!4643) (hashF!3055 Hashable!1147) (_size!2460 (_ BitVec 32)) (defaultValue!1298 Int)) )
))
(declare-datatypes ((CacheUp!648 0))(
  ( (CacheUp!649 (cache!1534 MutableMap!1147)) )
))
(declare-fun cacheUp!653 () CacheUp!648)

(declare-fun mapRest!5754 () (Array (_ BitVec 32) List!8583))

(declare-fun mapValue!5753 () List!8583)

(declare-fun mapKey!5755 () (_ BitVec 32))

(assert (=> mapNonEmpty!5753 (= (arr!1851 (_values!1454 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))))) (store mapRest!5754 mapKey!5755 mapValue!5753))))

(declare-fun b!770764 () Bool)

(declare-fun e!496527 () Bool)

(declare-datatypes ((List!8584 0))(
  ( (Nil!8570) (Cons!8570 (h!13971 C!4572) (t!91866 List!8584)) )
))
(declare-datatypes ((IArray!5767 0))(
  ( (IArray!5768 (innerList!2941 List!8584)) )
))
(declare-datatypes ((Conc!2883 0))(
  ( (Node!2883 (left!6388 Conc!2883) (right!6718 Conc!2883) (csize!5996 Int) (cheight!3094 Int)) (Leaf!4229 (xs!5570 IArray!5767) (csize!5997 Int)) (Empty!2883) )
))
(declare-datatypes ((BalanceConc!5778 0))(
  ( (BalanceConc!5779 (c!130259 Conc!2883)) )
))
(declare-fun input!1432 () BalanceConc!5778)

(declare-fun tp!252199 () Bool)

(declare-fun inv!10898 (Conc!2883) Bool)

(assert (=> b!770764 (= e!496527 (and (inv!10898 (c!130259 input!1432)) tp!252199))))

(declare-fun e!496516 () Bool)

(declare-fun e!496506 () Bool)

(assert (=> b!770765 (= e!496516 (and e!496506 tp!252198))))

(declare-fun b!770766 () Bool)

(declare-fun e!496498 () Bool)

(declare-fun e!496505 () Bool)

(assert (=> b!770766 (= e!496498 e!496505)))

(declare-fun mapIsEmpty!5753 () Bool)

(declare-fun mapRes!5754 () Bool)

(assert (=> mapIsEmpty!5753 mapRes!5754))

(declare-fun tp!252205 () Bool)

(declare-fun tp!252207 () Bool)

(declare-datatypes ((tuple3!982 0))(
  ( (tuple3!983 (_1!5758 Regex!1985) (_2!5758 Context!774) (_3!763 C!4572)) )
))
(declare-datatypes ((tuple2!9990 0))(
  ( (tuple2!9991 (_1!5759 tuple3!982) (_2!5759 (InoxSet Context!774))) )
))
(declare-datatypes ((List!8585 0))(
  ( (Nil!8571) (Cons!8571 (h!13972 tuple2!9990) (t!91867 List!8585)) )
))
(declare-datatypes ((array!4149 0))(
  ( (array!4150 (arr!1852 (Array (_ BitVec 32) List!8585)) (size!6969 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2352 0))(
  ( (LongMapFixedSize!2353 (defaultEntry!1532 Int) (mask!3053 (_ BitVec 32)) (extraKeys!1423 (_ BitVec 32)) (zeroValue!1433 List!8585) (minValue!1433 List!8585) (_size!2461 (_ BitVec 32)) (_keys!1470 array!4145) (_values!1455 array!4149) (_vacant!1237 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4645 0))(
  ( (Cell!4646 (v!18703 LongMapFixedSize!2352)) )
))
(declare-datatypes ((MutLongMap!1176 0))(
  ( (LongMap!1176 (underlying!2535 Cell!4645)) (MutLongMapExt!1175 (__x!6870 Int)) )
))
(declare-datatypes ((Cell!4647 0))(
  ( (Cell!4648 (v!18704 MutLongMap!1176)) )
))
(declare-datatypes ((Hashable!1148 0))(
  ( (HashableExt!1147 (__x!6871 Int)) )
))
(declare-datatypes ((MutableMap!1148 0))(
  ( (MutableMapExt!1147 (__x!6872 Int)) (HashMap!1148 (underlying!2536 Cell!4647) (hashF!3056 Hashable!1148) (_size!2462 (_ BitVec 32)) (defaultValue!1299 Int)) )
))
(declare-datatypes ((CacheDown!654 0))(
  ( (CacheDown!655 (cache!1535 MutableMap!1148)) )
))
(declare-fun cacheDown!666 () CacheDown!654)

(declare-fun e!496524 () Bool)

(declare-fun e!496499 () Bool)

(declare-fun array_inv!1342 (array!4145) Bool)

(declare-fun array_inv!1343 (array!4149) Bool)

(assert (=> b!770767 (= e!496524 (and tp!252196 tp!252205 tp!252207 (array_inv!1342 (_keys!1470 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))))) (array_inv!1343 (_values!1455 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))))) e!496499))))

(declare-fun b!770768 () Bool)

(declare-fun res!337953 () Bool)

(declare-fun e!496521 () Bool)

(assert (=> b!770768 (=> (not res!337953) (not e!496521))))

(declare-datatypes ((tuple2!9992 0))(
  ( (tuple2!9993 (_1!5760 (InoxSet Context!774)) (_2!5760 Int)) )
))
(declare-datatypes ((tuple2!9994 0))(
  ( (tuple2!9995 (_1!5761 tuple2!9992) (_2!5761 Int)) )
))
(declare-datatypes ((List!8586 0))(
  ( (Nil!8572) (Cons!8572 (h!13973 tuple2!9994) (t!91868 List!8586)) )
))
(declare-datatypes ((array!4151 0))(
  ( (array!4152 (arr!1853 (Array (_ BitVec 32) List!8586)) (size!6970 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1149 0))(
  ( (HashableExt!1148 (__x!6873 Int)) )
))
(declare-datatypes ((LongMapFixedSize!2354 0))(
  ( (LongMapFixedSize!2355 (defaultEntry!1533 Int) (mask!3054 (_ BitVec 32)) (extraKeys!1424 (_ BitVec 32)) (zeroValue!1434 List!8586) (minValue!1434 List!8586) (_size!2463 (_ BitVec 32)) (_keys!1471 array!4145) (_values!1456 array!4151) (_vacant!1238 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4649 0))(
  ( (Cell!4650 (v!18705 LongMapFixedSize!2354)) )
))
(declare-datatypes ((MutLongMap!1177 0))(
  ( (LongMap!1177 (underlying!2537 Cell!4649)) (MutLongMapExt!1176 (__x!6874 Int)) )
))
(declare-datatypes ((Cell!4651 0))(
  ( (Cell!4652 (v!18706 MutLongMap!1177)) )
))
(declare-datatypes ((MutableMap!1149 0))(
  ( (MutableMapExt!1148 (__x!6875 Int)) (HashMap!1149 (underlying!2538 Cell!4651) (hashF!3057 Hashable!1149) (_size!2464 (_ BitVec 32)) (defaultValue!1300 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!318 0))(
  ( (CacheFindLongestMatch!319 (cache!1536 MutableMap!1149) (totalInput!2119 BalanceConc!5778)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!318)

(declare-fun totalInput!472 () BalanceConc!5778)

(assert (=> b!770768 (= res!337953 (= (totalInput!2119 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun mapIsEmpty!5754 () Bool)

(assert (=> mapIsEmpty!5754 mapRes!5755))

(declare-fun b!770769 () Bool)

(declare-fun res!337954 () Bool)

(assert (=> b!770769 (=> (not res!337954) (not e!496521))))

(declare-fun valid!952 (CacheFindLongestMatch!318) Bool)

(assert (=> b!770769 (= res!337954 (valid!952 cacheFindLongestMatch!134))))

(declare-fun b!770770 () Bool)

(declare-fun e!496528 () Bool)

(declare-fun lt!313659 () MutLongMap!1175)

(get-info :version)

(assert (=> b!770770 (= e!496506 (and e!496528 ((_ is LongMap!1175) lt!313659)))))

(assert (=> b!770770 (= lt!313659 (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))))

(declare-fun b!770771 () Bool)

(declare-fun e!496529 () Bool)

(declare-fun e!496502 () Bool)

(assert (=> b!770771 (= e!496529 e!496502)))

(declare-fun b!770772 () Bool)

(declare-fun e!496530 () Bool)

(assert (=> b!770772 (= e!496530 e!496521)))

(declare-fun res!337960 () Bool)

(assert (=> b!770772 (=> (not res!337960) (not e!496521))))

(declare-fun lt!313657 () List!8584)

(declare-fun isSuffix!215 (List!8584 List!8584) Bool)

(declare-fun list!3434 (BalanceConc!5778) List!8584)

(assert (=> b!770772 (= res!337960 (isSuffix!215 lt!313657 (list!3434 totalInput!472)))))

(assert (=> b!770772 (= lt!313657 (list!3434 input!1432))))

(declare-fun b!770773 () Bool)

(assert (=> b!770773 (= e!496528 e!496529)))

(declare-fun res!337958 () Bool)

(assert (=> start!71440 (=> (not res!337958) (not e!496530))))

(declare-datatypes ((LexerInterface!1437 0))(
  ( (LexerInterfaceExt!1434 (__x!6876 Int)) (Lexer!1435) )
))
(declare-fun thiss!15653 () LexerInterface!1437)

(assert (=> start!71440 (= res!337958 ((_ is Lexer!1435) thiss!15653))))

(assert (=> start!71440 e!496530))

(declare-fun e!496512 () Bool)

(assert (=> start!71440 e!496512))

(declare-fun inv!10899 (BalanceConc!5778) Bool)

(assert (=> start!71440 (and (inv!10899 input!1432) e!496527)))

(declare-fun e!496520 () Bool)

(declare-fun inv!10900 (CacheFindLongestMatch!318) Bool)

(assert (=> start!71440 (and (inv!10900 cacheFindLongestMatch!134) e!496520)))

(assert (=> start!71440 true))

(declare-fun e!496518 () Bool)

(declare-fun inv!10901 (CacheUp!648) Bool)

(assert (=> start!71440 (and (inv!10901 cacheUp!653) e!496518)))

(declare-fun e!496509 () Bool)

(assert (=> start!71440 (and (inv!10899 totalInput!472) e!496509)))

(declare-fun e!496500 () Bool)

(declare-fun inv!10902 (CacheDown!654) Bool)

(assert (=> start!71440 (and (inv!10902 cacheDown!666) e!496500)))

(declare-fun b!770774 () Bool)

(declare-fun res!337956 () Bool)

(assert (=> b!770774 (=> (not res!337956) (not e!496530))))

(declare-datatypes ((List!8587 0))(
  ( (Nil!8573) (Cons!8573 (h!13974 (_ BitVec 16)) (t!91869 List!8587)) )
))
(declare-datatypes ((TokenValue!1678 0))(
  ( (FloatLiteralValue!3356 (text!12191 List!8587)) (TokenValueExt!1677 (__x!6877 Int)) (Broken!8390 (value!52214 List!8587)) (Object!1691) (End!1678) (Def!1678) (Underscore!1678) (Match!1678) (Else!1678) (Error!1678) (Case!1678) (If!1678) (Extends!1678) (Abstract!1678) (Class!1678) (Val!1678) (DelimiterValue!3356 (del!1738 List!8587)) (KeywordValue!1684 (value!52215 List!8587)) (CommentValue!3356 (value!52216 List!8587)) (WhitespaceValue!3356 (value!52217 List!8587)) (IndentationValue!1678 (value!52218 List!8587)) (String!10139) (Int32!1678) (Broken!8391 (value!52219 List!8587)) (Boolean!1679) (Unit!13108) (OperatorValue!1681 (op!1738 List!8587)) (IdentifierValue!3356 (value!52220 List!8587)) (IdentifierValue!3357 (value!52221 List!8587)) (WhitespaceValue!3357 (value!52222 List!8587)) (True!3356) (False!3356) (Broken!8392 (value!52223 List!8587)) (Broken!8393 (value!52224 List!8587)) (True!3357) (RightBrace!1678) (RightBracket!1678) (Colon!1678) (Null!1678) (Comma!1678) (LeftBracket!1678) (False!3357) (LeftBrace!1678) (ImaginaryLiteralValue!1678 (text!12192 List!8587)) (StringLiteralValue!5034 (value!52225 List!8587)) (EOFValue!1678 (value!52226 List!8587)) (IdentValue!1678 (value!52227 List!8587)) (DelimiterValue!3357 (value!52228 List!8587)) (DedentValue!1678 (value!52229 List!8587)) (NewLineValue!1678 (value!52230 List!8587)) (IntegerValue!5034 (value!52231 (_ BitVec 32)) (text!12193 List!8587)) (IntegerValue!5035 (value!52232 Int) (text!12194 List!8587)) (Times!1678) (Or!1678) (Equal!1678) (Minus!1678) (Broken!8394 (value!52233 List!8587)) (And!1678) (Div!1678) (LessEqual!1678) (Mod!1678) (Concat!3664) (Not!1678) (Plus!1678) (SpaceValue!1678 (value!52234 List!8587)) (IntegerValue!5036 (value!52235 Int) (text!12195 List!8587)) (StringLiteralValue!5035 (text!12196 List!8587)) (FloatLiteralValue!3357 (text!12197 List!8587)) (BytesLiteralValue!1678 (value!52236 List!8587)) (CommentValue!3357 (value!52237 List!8587)) (StringLiteralValue!5036 (value!52238 List!8587)) (ErrorTokenValue!1678 (msg!1739 List!8587)) )
))
(declare-datatypes ((TokenValueInjection!3092 0))(
  ( (TokenValueInjection!3093 (toValue!2626 Int) (toChars!2485 Int)) )
))
(declare-datatypes ((String!10140 0))(
  ( (String!10141 (value!52239 String)) )
))
(declare-datatypes ((Rule!3068 0))(
  ( (Rule!3069 (regex!1634 Regex!1985) (tag!1896 String!10140) (isSeparator!1634 Bool) (transformation!1634 TokenValueInjection!3092)) )
))
(declare-datatypes ((List!8588 0))(
  ( (Nil!8574) (Cons!8574 (h!13975 Rule!3068) (t!91870 List!8588)) )
))
(declare-fun rulesArg!343 () List!8588)

(declare-fun isEmpty!5213 (List!8588) Bool)

(assert (=> b!770774 (= res!337956 (not (isEmpty!5213 rulesArg!343)))))

(declare-fun e!496514 () Bool)

(declare-fun b!770775 () Bool)

(declare-fun e!496501 () Bool)

(assert (=> b!770775 (= e!496520 (and e!496514 (inv!10899 (totalInput!2119 cacheFindLongestMatch!134)) e!496501))))

(declare-fun b!770776 () Bool)

(declare-fun lt!313654 () MutLongMap!1176)

(assert (=> b!770776 (= e!496517 (and e!496498 ((_ is LongMap!1176) lt!313654)))))

(assert (=> b!770776 (= lt!313654 (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))))

(declare-fun b!770777 () Bool)

(declare-fun res!337957 () Bool)

(assert (=> b!770777 (=> (not res!337957) (not e!496521))))

(declare-fun valid!953 (CacheUp!648) Bool)

(assert (=> b!770777 (= res!337957 (valid!953 cacheUp!653))))

(declare-fun b!770778 () Bool)

(declare-fun e!496504 () Bool)

(assert (=> b!770778 (= e!496521 (not e!496504))))

(declare-fun res!337959 () Bool)

(assert (=> b!770778 (=> res!337959 e!496504)))

(assert (=> b!770778 (= res!337959 (or (and ((_ is Cons!8574) rulesArg!343) ((_ is Nil!8574) (t!91870 rulesArg!343))) (not ((_ is Cons!8574) rulesArg!343))))))

(declare-fun isPrefix!990 (List!8584 List!8584) Bool)

(assert (=> b!770778 (isPrefix!990 lt!313657 lt!313657)))

(declare-datatypes ((Unit!13109 0))(
  ( (Unit!13110) )
))
(declare-fun lt!313658 () Unit!13109)

(declare-fun lemmaIsPrefixRefl!701 (List!8584 List!8584) Unit!13109)

(assert (=> b!770778 (= lt!313658 (lemmaIsPrefixRefl!701 lt!313657 lt!313657))))

(declare-fun b!770779 () Bool)

(declare-fun e!496508 () Bool)

(declare-fun e!496526 () Bool)

(assert (=> b!770779 (= e!496508 e!496526)))

(declare-fun b!770780 () Bool)

(declare-fun e!496525 () Bool)

(declare-fun tp!252202 () Bool)

(assert (=> b!770780 (= e!496512 (and e!496525 tp!252202))))

(declare-fun b!770781 () Bool)

(declare-fun res!337962 () Bool)

(assert (=> b!770781 (=> (not res!337962) (not e!496521))))

(declare-fun valid!954 (CacheDown!654) Bool)

(assert (=> b!770781 (= res!337962 (valid!954 cacheDown!666))))

(declare-fun b!770782 () Bool)

(declare-fun tp!252193 () Bool)

(assert (=> b!770782 (= e!496509 (and (inv!10898 (c!130259 totalInput!472)) tp!252193))))

(declare-fun tp!252185 () Bool)

(declare-fun e!496522 () Bool)

(declare-fun tp!252211 () Bool)

(declare-fun array_inv!1344 (array!4147) Bool)

(assert (=> b!770783 (= e!496502 (and tp!252189 tp!252211 tp!252185 (array_inv!1342 (_keys!1469 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))))) (array_inv!1344 (_values!1454 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))))) e!496522))))

(declare-fun b!770784 () Bool)

(declare-fun tp!252187 () Bool)

(assert (=> b!770784 (= e!496522 (and tp!252187 mapRes!5755))))

(declare-fun condMapEmpty!5753 () Bool)

(declare-fun mapDefault!5754 () List!8583)

(assert (=> b!770784 (= condMapEmpty!5753 (= (arr!1851 (_values!1454 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8583)) mapDefault!5754)))))

(declare-fun mapIsEmpty!5755 () Bool)

(declare-fun mapRes!5753 () Bool)

(assert (=> mapIsEmpty!5755 mapRes!5753))

(declare-fun b!770785 () Bool)

(declare-fun e!496519 () Bool)

(assert (=> b!770785 (= e!496519 (not (isEmpty!5213 (t!91870 rulesArg!343))))))

(declare-fun b!770786 () Bool)

(declare-fun e!496510 () Bool)

(declare-fun tp!252184 () Bool)

(assert (=> b!770786 (= e!496510 (and tp!252184 mapRes!5753))))

(declare-fun condMapEmpty!5755 () Bool)

(declare-fun mapDefault!5755 () List!8586)

(assert (=> b!770786 (= condMapEmpty!5755 (= (arr!1853 (_values!1456 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8586)) mapDefault!5755)))))

(declare-fun tp!252192 () Bool)

(declare-fun tp!252190 () Bool)

(declare-fun array_inv!1345 (array!4151) Bool)

(assert (=> b!770787 (= e!496526 (and tp!252201 tp!252190 tp!252192 (array_inv!1342 (_keys!1471 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))) (array_inv!1345 (_values!1456 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))) e!496510))))

(declare-fun mapNonEmpty!5754 () Bool)

(declare-fun tp!252197 () Bool)

(declare-fun tp!252209 () Bool)

(assert (=> mapNonEmpty!5754 (= mapRes!5754 (and tp!252197 tp!252209))))

(declare-fun mapRest!5755 () (Array (_ BitVec 32) List!8585))

(declare-fun mapValue!5754 () List!8585)

(declare-fun mapKey!5754 () (_ BitVec 32))

(assert (=> mapNonEmpty!5754 (= (arr!1852 (_values!1455 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))))) (store mapRest!5755 mapKey!5754 mapValue!5754))))

(declare-fun b!770788 () Bool)

(declare-fun tp!252204 () Bool)

(assert (=> b!770788 (= e!496499 (and tp!252204 mapRes!5754))))

(declare-fun condMapEmpty!5754 () Bool)

(declare-fun mapDefault!5753 () List!8585)

(assert (=> b!770788 (= condMapEmpty!5754 (= (arr!1852 (_values!1455 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8585)) mapDefault!5753)))))

(declare-fun b!770789 () Bool)

(declare-fun tp!252195 () Bool)

(assert (=> b!770789 (= e!496501 (and (inv!10898 (c!130259 (totalInput!2119 cacheFindLongestMatch!134))) tp!252195))))

(declare-fun b!770790 () Bool)

(declare-fun res!337955 () Bool)

(assert (=> b!770790 (=> (not res!337955) (not e!496530))))

(declare-fun rulesValidInductive!580 (LexerInterface!1437 List!8588) Bool)

(assert (=> b!770790 (= res!337955 (rulesValidInductive!580 thiss!15653 rulesArg!343))))

(declare-fun tp!252208 () Bool)

(declare-fun e!496513 () Bool)

(declare-fun b!770791 () Bool)

(declare-fun inv!10893 (String!10140) Bool)

(declare-fun inv!10903 (TokenValueInjection!3092) Bool)

(assert (=> b!770791 (= e!496525 (and tp!252208 (inv!10893 (tag!1896 (h!13975 rulesArg!343))) (inv!10903 (transformation!1634 (h!13975 rulesArg!343))) e!496513))))

(declare-fun b!770792 () Bool)

(declare-fun e!496507 () Bool)

(declare-fun e!496532 () Bool)

(declare-fun lt!313656 () MutLongMap!1177)

(assert (=> b!770792 (= e!496507 (and e!496532 ((_ is LongMap!1177) lt!313656)))))

(assert (=> b!770792 (= lt!313656 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))

(declare-fun mapNonEmpty!5755 () Bool)

(declare-fun tp!252186 () Bool)

(declare-fun tp!252203 () Bool)

(assert (=> mapNonEmpty!5755 (= mapRes!5753 (and tp!252186 tp!252203))))

(declare-fun mapRest!5753 () (Array (_ BitVec 32) List!8586))

(declare-fun mapValue!5755 () List!8586)

(declare-fun mapKey!5753 () (_ BitVec 32))

(assert (=> mapNonEmpty!5755 (= (arr!1853 (_values!1456 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))) (store mapRest!5753 mapKey!5753 mapValue!5755))))

(declare-fun b!770793 () Bool)

(assert (=> b!770793 (= e!496504 e!496519)))

(declare-fun res!337961 () Bool)

(assert (=> b!770793 (=> res!337961 e!496519)))

(assert (=> b!770793 (= res!337961 (not (rulesValidInductive!580 thiss!15653 (t!91870 rulesArg!343))))))

(declare-datatypes ((Token!2944 0))(
  ( (Token!2945 (value!52240 TokenValue!1678) (rule!2759 Rule!3068) (size!6971 Int) (originalCharacters!1897 List!8584)) )
))
(declare-datatypes ((tuple2!9996 0))(
  ( (tuple2!9997 (_1!5762 Token!2944) (_2!5762 BalanceConc!5778)) )
))
(declare-datatypes ((Option!1871 0))(
  ( (None!1870) (Some!1870 (v!18707 tuple2!9996)) )
))
(declare-datatypes ((tuple4!544 0))(
  ( (tuple4!545 (_1!5763 Option!1871) (_2!5763 CacheUp!648) (_3!764 CacheDown!654) (_4!272 CacheFindLongestMatch!318)) )
))
(declare-fun lt!313655 () tuple4!544)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!64 (LexerInterface!1437 Rule!3068 BalanceConc!5778 BalanceConc!5778 CacheUp!648 CacheDown!654 CacheFindLongestMatch!318) tuple4!544)

(assert (=> b!770793 (= lt!313655 (maxPrefixOneRuleZipperSequenceV2Mem!64 thiss!15653 (h!13975 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(assert (=> b!770794 (= e!496514 (and e!496507 tp!252191))))

(declare-fun b!770795 () Bool)

(assert (=> b!770795 (= e!496500 e!496503)))

(declare-fun b!770796 () Bool)

(assert (=> b!770796 (= e!496518 e!496516)))

(declare-fun b!770797 () Bool)

(assert (=> b!770797 (= e!496505 e!496524)))

(declare-fun b!770798 () Bool)

(assert (=> b!770798 (= e!496532 e!496508)))

(assert (=> b!770799 (= e!496513 (and tp!252194 tp!252206))))

(assert (= (and start!71440 res!337958) b!770790))

(assert (= (and b!770790 res!337955) b!770774))

(assert (= (and b!770774 res!337956) b!770772))

(assert (= (and b!770772 res!337960) b!770777))

(assert (= (and b!770777 res!337957) b!770781))

(assert (= (and b!770781 res!337962) b!770769))

(assert (= (and b!770769 res!337954) b!770768))

(assert (= (and b!770768 res!337953) b!770778))

(assert (= (and b!770778 (not res!337959)) b!770793))

(assert (= (and b!770793 (not res!337961)) b!770785))

(assert (= b!770791 b!770799))

(assert (= b!770780 b!770791))

(assert (= (and start!71440 ((_ is Cons!8574) rulesArg!343)) b!770780))

(assert (= start!71440 b!770764))

(assert (= (and b!770786 condMapEmpty!5755) mapIsEmpty!5755))

(assert (= (and b!770786 (not condMapEmpty!5755)) mapNonEmpty!5755))

(assert (= b!770787 b!770786))

(assert (= b!770779 b!770787))

(assert (= b!770798 b!770779))

(assert (= (and b!770792 ((_ is LongMap!1177) (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))) b!770798))

(assert (= b!770794 b!770792))

(assert (= (and b!770775 ((_ is HashMap!1149) (cache!1536 cacheFindLongestMatch!134))) b!770794))

(assert (= b!770775 b!770789))

(assert (= start!71440 b!770775))

(assert (= (and b!770784 condMapEmpty!5753) mapIsEmpty!5754))

(assert (= (and b!770784 (not condMapEmpty!5753)) mapNonEmpty!5753))

(assert (= b!770783 b!770784))

(assert (= b!770771 b!770783))

(assert (= b!770773 b!770771))

(assert (= (and b!770770 ((_ is LongMap!1175) (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))) b!770773))

(assert (= b!770765 b!770770))

(assert (= (and b!770796 ((_ is HashMap!1147) (cache!1534 cacheUp!653))) b!770765))

(assert (= start!71440 b!770796))

(assert (= start!71440 b!770782))

(assert (= (and b!770788 condMapEmpty!5754) mapIsEmpty!5753))

(assert (= (and b!770788 (not condMapEmpty!5754)) mapNonEmpty!5754))

(assert (= b!770767 b!770788))

(assert (= b!770797 b!770767))

(assert (= b!770766 b!770797))

(assert (= (and b!770776 ((_ is LongMap!1176) (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))) b!770766))

(assert (= b!770763 b!770776))

(assert (= (and b!770795 ((_ is HashMap!1148) (cache!1535 cacheDown!666))) b!770763))

(assert (= start!71440 b!770795))

(declare-fun m!1039533 () Bool)

(assert (=> b!770789 m!1039533))

(declare-fun m!1039535 () Bool)

(assert (=> b!770769 m!1039535))

(declare-fun m!1039537 () Bool)

(assert (=> b!770791 m!1039537))

(declare-fun m!1039539 () Bool)

(assert (=> b!770791 m!1039539))

(declare-fun m!1039541 () Bool)

(assert (=> b!770764 m!1039541))

(declare-fun m!1039543 () Bool)

(assert (=> b!770782 m!1039543))

(declare-fun m!1039545 () Bool)

(assert (=> mapNonEmpty!5753 m!1039545))

(declare-fun m!1039547 () Bool)

(assert (=> b!770785 m!1039547))

(declare-fun m!1039549 () Bool)

(assert (=> mapNonEmpty!5754 m!1039549))

(declare-fun m!1039551 () Bool)

(assert (=> mapNonEmpty!5755 m!1039551))

(declare-fun m!1039553 () Bool)

(assert (=> b!770775 m!1039553))

(declare-fun m!1039555 () Bool)

(assert (=> b!770772 m!1039555))

(assert (=> b!770772 m!1039555))

(declare-fun m!1039557 () Bool)

(assert (=> b!770772 m!1039557))

(declare-fun m!1039559 () Bool)

(assert (=> b!770772 m!1039559))

(declare-fun m!1039561 () Bool)

(assert (=> b!770781 m!1039561))

(declare-fun m!1039563 () Bool)

(assert (=> start!71440 m!1039563))

(declare-fun m!1039565 () Bool)

(assert (=> start!71440 m!1039565))

(declare-fun m!1039567 () Bool)

(assert (=> start!71440 m!1039567))

(declare-fun m!1039569 () Bool)

(assert (=> start!71440 m!1039569))

(declare-fun m!1039571 () Bool)

(assert (=> start!71440 m!1039571))

(declare-fun m!1039573 () Bool)

(assert (=> b!770777 m!1039573))

(declare-fun m!1039575 () Bool)

(assert (=> b!770767 m!1039575))

(declare-fun m!1039577 () Bool)

(assert (=> b!770767 m!1039577))

(declare-fun m!1039579 () Bool)

(assert (=> b!770787 m!1039579))

(declare-fun m!1039581 () Bool)

(assert (=> b!770787 m!1039581))

(declare-fun m!1039583 () Bool)

(assert (=> b!770790 m!1039583))

(declare-fun m!1039585 () Bool)

(assert (=> b!770774 m!1039585))

(declare-fun m!1039587 () Bool)

(assert (=> b!770778 m!1039587))

(declare-fun m!1039589 () Bool)

(assert (=> b!770778 m!1039589))

(declare-fun m!1039591 () Bool)

(assert (=> b!770783 m!1039591))

(declare-fun m!1039593 () Bool)

(assert (=> b!770783 m!1039593))

(declare-fun m!1039595 () Bool)

(assert (=> b!770793 m!1039595))

(declare-fun m!1039597 () Bool)

(assert (=> b!770793 m!1039597))

(check-sat (not b!770769) (not b!770781) b_and!71823 (not b_next!24397) b_and!71809 (not b_next!24407) (not b!770786) (not b!770767) (not b!770787) (not b_next!24399) b_and!71821 (not b_next!24401) (not b!770782) (not b!770780) (not b!770789) b_and!71813 (not b!770764) (not b!770774) (not start!71440) (not b!770783) (not b!770790) (not b!770777) (not b!770775) (not mapNonEmpty!5754) (not b!770785) (not b!770788) (not b_next!24393) (not b_next!24395) (not b!770793) b_and!71815 b_and!71819 (not b!770784) b_and!71811 (not mapNonEmpty!5753) (not mapNonEmpty!5755) b_and!71817 (not b_next!24405) (not b!770791) (not b!770778) (not b_next!24403) (not b!770772))
(check-sat b_and!71813 b_and!71823 (not b_next!24397) b_and!71809 (not b_next!24407) b_and!71815 b_and!71819 b_and!71811 (not b_next!24399) b_and!71821 b_and!71817 (not b_next!24401) (not b_next!24405) (not b_next!24403) (not b_next!24393) (not b_next!24395))
(get-model)

(declare-fun b!770811 () Bool)

(declare-fun e!496539 () Bool)

(declare-fun size!6972 (List!8584) Int)

(assert (=> b!770811 (= e!496539 (>= (size!6972 lt!313657) (size!6972 lt!313657)))))

(declare-fun d!251584 () Bool)

(assert (=> d!251584 e!496539))

(declare-fun res!337978 () Bool)

(assert (=> d!251584 (=> res!337978 e!496539)))

(declare-fun lt!313662 () Bool)

(assert (=> d!251584 (= res!337978 (not lt!313662))))

(declare-fun e!496540 () Bool)

(assert (=> d!251584 (= lt!313662 e!496540)))

(declare-fun res!337975 () Bool)

(assert (=> d!251584 (=> res!337975 e!496540)))

(assert (=> d!251584 (= res!337975 ((_ is Nil!8570) lt!313657))))

(assert (=> d!251584 (= (isPrefix!990 lt!313657 lt!313657) lt!313662)))

(declare-fun b!770808 () Bool)

(declare-fun e!496541 () Bool)

(assert (=> b!770808 (= e!496540 e!496541)))

(declare-fun res!337977 () Bool)

(assert (=> b!770808 (=> (not res!337977) (not e!496541))))

(assert (=> b!770808 (= res!337977 (not ((_ is Nil!8570) lt!313657)))))

(declare-fun b!770809 () Bool)

(declare-fun res!337976 () Bool)

(assert (=> b!770809 (=> (not res!337976) (not e!496541))))

(declare-fun head!1419 (List!8584) C!4572)

(assert (=> b!770809 (= res!337976 (= (head!1419 lt!313657) (head!1419 lt!313657)))))

(declare-fun b!770810 () Bool)

(declare-fun tail!977 (List!8584) List!8584)

(assert (=> b!770810 (= e!496541 (isPrefix!990 (tail!977 lt!313657) (tail!977 lt!313657)))))

(assert (= (and d!251584 (not res!337975)) b!770808))

(assert (= (and b!770808 res!337977) b!770809))

(assert (= (and b!770809 res!337976) b!770810))

(assert (= (and d!251584 (not res!337978)) b!770811))

(declare-fun m!1039599 () Bool)

(assert (=> b!770811 m!1039599))

(assert (=> b!770811 m!1039599))

(declare-fun m!1039601 () Bool)

(assert (=> b!770809 m!1039601))

(assert (=> b!770809 m!1039601))

(declare-fun m!1039603 () Bool)

(assert (=> b!770810 m!1039603))

(assert (=> b!770810 m!1039603))

(assert (=> b!770810 m!1039603))

(assert (=> b!770810 m!1039603))

(declare-fun m!1039605 () Bool)

(assert (=> b!770810 m!1039605))

(assert (=> b!770778 d!251584))

(declare-fun d!251586 () Bool)

(assert (=> d!251586 (isPrefix!990 lt!313657 lt!313657)))

(declare-fun lt!313665 () Unit!13109)

(declare-fun choose!4876 (List!8584 List!8584) Unit!13109)

(assert (=> d!251586 (= lt!313665 (choose!4876 lt!313657 lt!313657))))

(assert (=> d!251586 (= (lemmaIsPrefixRefl!701 lt!313657 lt!313657) lt!313665)))

(declare-fun bs!165949 () Bool)

(assert (= bs!165949 d!251586))

(assert (=> bs!165949 m!1039587))

(declare-fun m!1039607 () Bool)

(assert (=> bs!165949 m!1039607))

(assert (=> b!770778 d!251586))

(declare-fun d!251588 () Bool)

(assert (=> d!251588 (= (array_inv!1342 (_keys!1471 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))) (bvsge (size!6967 (_keys!1471 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!770787 d!251588))

(declare-fun d!251590 () Bool)

(assert (=> d!251590 (= (array_inv!1345 (_values!1456 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))) (bvsge (size!6970 (_values!1456 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!770787 d!251590))

(declare-fun d!251592 () Bool)

(declare-fun validCacheMapUp!102 (MutableMap!1147) Bool)

(assert (=> d!251592 (= (valid!953 cacheUp!653) (validCacheMapUp!102 (cache!1534 cacheUp!653)))))

(declare-fun bs!165950 () Bool)

(assert (= bs!165950 d!251592))

(declare-fun m!1039609 () Bool)

(assert (=> bs!165950 m!1039609))

(assert (=> b!770777 d!251592))

(declare-fun d!251594 () Bool)

(assert (=> d!251594 (= (array_inv!1342 (_keys!1470 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))))) (bvsge (size!6967 (_keys!1470 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!770767 d!251594))

(declare-fun d!251596 () Bool)

(assert (=> d!251596 (= (array_inv!1343 (_values!1455 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))))) (bvsge (size!6969 (_values!1455 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!770767 d!251596))

(declare-fun d!251598 () Bool)

(declare-fun res!337981 () Bool)

(declare-fun e!496544 () Bool)

(assert (=> d!251598 (=> (not res!337981) (not e!496544))))

(assert (=> d!251598 (= res!337981 ((_ is HashMap!1148) (cache!1535 cacheDown!666)))))

(assert (=> d!251598 (= (inv!10902 cacheDown!666) e!496544)))

(declare-fun b!770814 () Bool)

(declare-fun validCacheMapDown!102 (MutableMap!1148) Bool)

(assert (=> b!770814 (= e!496544 (validCacheMapDown!102 (cache!1535 cacheDown!666)))))

(assert (= (and d!251598 res!337981) b!770814))

(declare-fun m!1039611 () Bool)

(assert (=> b!770814 m!1039611))

(assert (=> start!71440 d!251598))

(declare-fun d!251600 () Bool)

(declare-fun isBalanced!775 (Conc!2883) Bool)

(assert (=> d!251600 (= (inv!10899 totalInput!472) (isBalanced!775 (c!130259 totalInput!472)))))

(declare-fun bs!165951 () Bool)

(assert (= bs!165951 d!251600))

(declare-fun m!1039613 () Bool)

(assert (=> bs!165951 m!1039613))

(assert (=> start!71440 d!251600))

(declare-fun d!251602 () Bool)

(assert (=> d!251602 (= (inv!10899 input!1432) (isBalanced!775 (c!130259 input!1432)))))

(declare-fun bs!165952 () Bool)

(assert (= bs!165952 d!251602))

(declare-fun m!1039615 () Bool)

(assert (=> bs!165952 m!1039615))

(assert (=> start!71440 d!251602))

(declare-fun d!251604 () Bool)

(declare-fun res!337984 () Bool)

(declare-fun e!496547 () Bool)

(assert (=> d!251604 (=> (not res!337984) (not e!496547))))

(assert (=> d!251604 (= res!337984 ((_ is HashMap!1147) (cache!1534 cacheUp!653)))))

(assert (=> d!251604 (= (inv!10901 cacheUp!653) e!496547)))

(declare-fun b!770817 () Bool)

(assert (=> b!770817 (= e!496547 (validCacheMapUp!102 (cache!1534 cacheUp!653)))))

(assert (= (and d!251604 res!337984) b!770817))

(assert (=> b!770817 m!1039609))

(assert (=> start!71440 d!251604))

(declare-fun d!251606 () Bool)

(declare-fun res!337987 () Bool)

(declare-fun e!496550 () Bool)

(assert (=> d!251606 (=> (not res!337987) (not e!496550))))

(assert (=> d!251606 (= res!337987 ((_ is HashMap!1149) (cache!1536 cacheFindLongestMatch!134)))))

(assert (=> d!251606 (= (inv!10900 cacheFindLongestMatch!134) e!496550)))

(declare-fun b!770820 () Bool)

(declare-fun validCacheMapFindLongestMatch!48 (MutableMap!1149 BalanceConc!5778) Bool)

(assert (=> b!770820 (= e!496550 (validCacheMapFindLongestMatch!48 (cache!1536 cacheFindLongestMatch!134) (totalInput!2119 cacheFindLongestMatch!134)))))

(assert (= (and d!251606 res!337987) b!770820))

(declare-fun m!1039617 () Bool)

(assert (=> b!770820 m!1039617))

(assert (=> start!71440 d!251606))

(declare-fun d!251608 () Bool)

(assert (=> d!251608 (= (isEmpty!5213 (t!91870 rulesArg!343)) ((_ is Nil!8574) (t!91870 rulesArg!343)))))

(assert (=> b!770785 d!251608))

(declare-fun d!251610 () Bool)

(assert (=> d!251610 (= (inv!10899 (totalInput!2119 cacheFindLongestMatch!134)) (isBalanced!775 (c!130259 (totalInput!2119 cacheFindLongestMatch!134))))))

(declare-fun bs!165953 () Bool)

(assert (= bs!165953 d!251610))

(declare-fun m!1039619 () Bool)

(assert (=> bs!165953 m!1039619))

(assert (=> b!770775 d!251610))

(declare-fun d!251612 () Bool)

(assert (=> d!251612 true))

(declare-fun lt!313668 () Bool)

(declare-fun lambda!23289 () Int)

(declare-fun forall!2045 (List!8588 Int) Bool)

(assert (=> d!251612 (= lt!313668 (forall!2045 (t!91870 rulesArg!343) lambda!23289))))

(declare-fun e!496556 () Bool)

(assert (=> d!251612 (= lt!313668 e!496556)))

(declare-fun res!337992 () Bool)

(assert (=> d!251612 (=> res!337992 e!496556)))

(assert (=> d!251612 (= res!337992 (not ((_ is Cons!8574) (t!91870 rulesArg!343))))))

(assert (=> d!251612 (= (rulesValidInductive!580 thiss!15653 (t!91870 rulesArg!343)) lt!313668)))

(declare-fun b!770825 () Bool)

(declare-fun e!496555 () Bool)

(assert (=> b!770825 (= e!496556 e!496555)))

(declare-fun res!337993 () Bool)

(assert (=> b!770825 (=> (not res!337993) (not e!496555))))

(declare-fun ruleValid!503 (LexerInterface!1437 Rule!3068) Bool)

(assert (=> b!770825 (= res!337993 (ruleValid!503 thiss!15653 (h!13975 (t!91870 rulesArg!343))))))

(declare-fun b!770826 () Bool)

(assert (=> b!770826 (= e!496555 (rulesValidInductive!580 thiss!15653 (t!91870 (t!91870 rulesArg!343))))))

(assert (= (and d!251612 (not res!337992)) b!770825))

(assert (= (and b!770825 res!337993) b!770826))

(declare-fun m!1039621 () Bool)

(assert (=> d!251612 m!1039621))

(declare-fun m!1039623 () Bool)

(assert (=> b!770825 m!1039623))

(declare-fun m!1039625 () Bool)

(assert (=> b!770826 m!1039625))

(assert (=> b!770793 d!251612))

(declare-fun d!251614 () Bool)

(declare-fun e!496563 () Bool)

(assert (=> d!251614 e!496563))

(declare-fun res!338007 () Bool)

(assert (=> d!251614 (=> (not res!338007) (not e!496563))))

(declare-fun lt!313685 () tuple4!544)

(declare-fun maxPrefixOneRuleZipperSequenceV2!79 (LexerInterface!1437 Rule!3068 BalanceConc!5778 BalanceConc!5778) Option!1871)

(assert (=> d!251614 (= res!338007 (= (_1!5763 lt!313685) (maxPrefixOneRuleZipperSequenceV2!79 thiss!15653 (h!13975 rulesArg!343) input!1432 totalInput!472)))))

(declare-fun e!496565 () Option!1871)

(declare-datatypes ((tuple2!9998 0))(
  ( (tuple2!9999 (_1!5764 BalanceConc!5778) (_2!5764 BalanceConc!5778)) )
))
(declare-datatypes ((tuple4!546 0))(
  ( (tuple4!547 (_1!5765 tuple2!9998) (_2!5765 CacheUp!648) (_3!765 CacheDown!654) (_4!273 CacheFindLongestMatch!318)) )
))
(declare-fun lt!313684 () tuple4!546)

(assert (=> d!251614 (= lt!313685 (tuple4!545 e!496565 (_2!5765 lt!313684) (_3!765 lt!313684) (_4!273 lt!313684)))))

(declare-fun c!130262 () Bool)

(declare-fun isEmpty!5214 (BalanceConc!5778) Bool)

(assert (=> d!251614 (= c!130262 (isEmpty!5214 (_1!5764 (_1!5765 lt!313684))))))

(declare-fun findLongestMatchWithZipperSequenceV2Mem!31 (Regex!1985 BalanceConc!5778 BalanceConc!5778 CacheUp!648 CacheDown!654 CacheFindLongestMatch!318) tuple4!546)

(assert (=> d!251614 (= lt!313684 (findLongestMatchWithZipperSequenceV2Mem!31 (regex!1634 (h!13975 rulesArg!343)) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(assert (=> d!251614 (ruleValid!503 thiss!15653 (h!13975 rulesArg!343))))

(assert (=> d!251614 (= (maxPrefixOneRuleZipperSequenceV2Mem!64 thiss!15653 (h!13975 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134) lt!313685)))

(declare-fun b!770843 () Bool)

(declare-fun res!338006 () Bool)

(assert (=> b!770843 (=> (not res!338006) (not e!496563))))

(assert (=> b!770843 (= res!338006 (valid!952 (_4!272 lt!313685)))))

(declare-fun b!770844 () Bool)

(assert (=> b!770844 (= e!496565 None!1870)))

(declare-fun b!770845 () Bool)

(declare-fun apply!1779 (TokenValueInjection!3092 BalanceConc!5778) TokenValue!1678)

(declare-fun size!6973 (BalanceConc!5778) Int)

(assert (=> b!770845 (= e!496565 (Some!1870 (tuple2!9997 (Token!2945 (apply!1779 (transformation!1634 (h!13975 rulesArg!343)) (_1!5764 (_1!5765 lt!313684))) (h!13975 rulesArg!343) (size!6973 (_1!5764 (_1!5765 lt!313684))) (list!3434 (_1!5764 (_1!5765 lt!313684)))) (_2!5764 (_1!5765 lt!313684)))))))

(declare-fun lt!313686 () List!8584)

(assert (=> b!770845 (= lt!313686 (list!3434 input!1432))))

(declare-fun lt!313682 () Unit!13109)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!236 (Regex!1985 List!8584) Unit!13109)

(assert (=> b!770845 (= lt!313682 (longestMatchIsAcceptedByMatchOrIsEmpty!236 (regex!1634 (h!13975 rulesArg!343)) lt!313686))))

(declare-fun res!338004 () Bool)

(declare-fun isEmpty!5215 (List!8584) Bool)

(declare-datatypes ((tuple2!10000 0))(
  ( (tuple2!10001 (_1!5766 List!8584) (_2!5766 List!8584)) )
))
(declare-fun findLongestMatchInner!252 (Regex!1985 List!8584 Int List!8584 List!8584 Int) tuple2!10000)

(assert (=> b!770845 (= res!338004 (isEmpty!5215 (_1!5766 (findLongestMatchInner!252 (regex!1634 (h!13975 rulesArg!343)) Nil!8570 (size!6972 Nil!8570) lt!313686 lt!313686 (size!6972 lt!313686)))))))

(declare-fun e!496564 () Bool)

(assert (=> b!770845 (=> res!338004 e!496564)))

(assert (=> b!770845 e!496564))

(declare-fun lt!313683 () Unit!13109)

(assert (=> b!770845 (= lt!313683 lt!313682)))

(declare-fun lt!313681 () Unit!13109)

(declare-fun lemmaSemiInverse!306 (TokenValueInjection!3092 BalanceConc!5778) Unit!13109)

(assert (=> b!770845 (= lt!313681 (lemmaSemiInverse!306 (transformation!1634 (h!13975 rulesArg!343)) (_1!5764 (_1!5765 lt!313684))))))

(declare-fun b!770846 () Bool)

(assert (=> b!770846 (= e!496563 (= (totalInput!2119 (_4!272 lt!313685)) totalInput!472))))

(declare-fun b!770847 () Bool)

(declare-fun res!338005 () Bool)

(assert (=> b!770847 (=> (not res!338005) (not e!496563))))

(assert (=> b!770847 (= res!338005 (valid!953 (_2!5763 lt!313685)))))

(declare-fun b!770848 () Bool)

(declare-fun matchR!731 (Regex!1985 List!8584) Bool)

(assert (=> b!770848 (= e!496564 (matchR!731 (regex!1634 (h!13975 rulesArg!343)) (_1!5766 (findLongestMatchInner!252 (regex!1634 (h!13975 rulesArg!343)) Nil!8570 (size!6972 Nil!8570) lt!313686 lt!313686 (size!6972 lt!313686)))))))

(declare-fun b!770849 () Bool)

(declare-fun res!338008 () Bool)

(assert (=> b!770849 (=> (not res!338008) (not e!496563))))

(assert (=> b!770849 (= res!338008 (valid!954 (_3!764 lt!313685)))))

(assert (= (and d!251614 c!130262) b!770844))

(assert (= (and d!251614 (not c!130262)) b!770845))

(assert (= (and b!770845 (not res!338004)) b!770848))

(assert (= (and d!251614 res!338007) b!770847))

(assert (= (and b!770847 res!338005) b!770849))

(assert (= (and b!770849 res!338008) b!770843))

(assert (= (and b!770843 res!338006) b!770846))

(declare-fun m!1039627 () Bool)

(assert (=> b!770845 m!1039627))

(assert (=> b!770845 m!1039559))

(declare-fun m!1039629 () Bool)

(assert (=> b!770845 m!1039629))

(declare-fun m!1039631 () Bool)

(assert (=> b!770845 m!1039631))

(declare-fun m!1039633 () Bool)

(assert (=> b!770845 m!1039633))

(declare-fun m!1039635 () Bool)

(assert (=> b!770845 m!1039635))

(declare-fun m!1039637 () Bool)

(assert (=> b!770845 m!1039637))

(declare-fun m!1039639 () Bool)

(assert (=> b!770845 m!1039639))

(declare-fun m!1039641 () Bool)

(assert (=> b!770845 m!1039641))

(assert (=> b!770845 m!1039629))

(assert (=> b!770845 m!1039631))

(declare-fun m!1039643 () Bool)

(assert (=> b!770845 m!1039643))

(declare-fun m!1039645 () Bool)

(assert (=> b!770843 m!1039645))

(assert (=> b!770848 m!1039629))

(assert (=> b!770848 m!1039631))

(assert (=> b!770848 m!1039629))

(assert (=> b!770848 m!1039631))

(assert (=> b!770848 m!1039643))

(declare-fun m!1039647 () Bool)

(assert (=> b!770848 m!1039647))

(declare-fun m!1039649 () Bool)

(assert (=> d!251614 m!1039649))

(declare-fun m!1039651 () Bool)

(assert (=> d!251614 m!1039651))

(declare-fun m!1039653 () Bool)

(assert (=> d!251614 m!1039653))

(declare-fun m!1039655 () Bool)

(assert (=> d!251614 m!1039655))

(declare-fun m!1039657 () Bool)

(assert (=> b!770847 m!1039657))

(declare-fun m!1039659 () Bool)

(assert (=> b!770849 m!1039659))

(assert (=> b!770793 d!251614))

(declare-fun d!251616 () Bool)

(assert (=> d!251616 (= (isEmpty!5213 rulesArg!343) ((_ is Nil!8574) rulesArg!343))))

(assert (=> b!770774 d!251616))

(declare-fun d!251618 () Bool)

(declare-fun c!130265 () Bool)

(assert (=> d!251618 (= c!130265 ((_ is Node!2883) (c!130259 input!1432)))))

(declare-fun e!496570 () Bool)

(assert (=> d!251618 (= (inv!10898 (c!130259 input!1432)) e!496570)))

(declare-fun b!770856 () Bool)

(declare-fun inv!10904 (Conc!2883) Bool)

(assert (=> b!770856 (= e!496570 (inv!10904 (c!130259 input!1432)))))

(declare-fun b!770857 () Bool)

(declare-fun e!496571 () Bool)

(assert (=> b!770857 (= e!496570 e!496571)))

(declare-fun res!338011 () Bool)

(assert (=> b!770857 (= res!338011 (not ((_ is Leaf!4229) (c!130259 input!1432))))))

(assert (=> b!770857 (=> res!338011 e!496571)))

(declare-fun b!770858 () Bool)

(declare-fun inv!10905 (Conc!2883) Bool)

(assert (=> b!770858 (= e!496571 (inv!10905 (c!130259 input!1432)))))

(assert (= (and d!251618 c!130265) b!770856))

(assert (= (and d!251618 (not c!130265)) b!770857))

(assert (= (and b!770857 (not res!338011)) b!770858))

(declare-fun m!1039661 () Bool)

(assert (=> b!770856 m!1039661))

(declare-fun m!1039663 () Bool)

(assert (=> b!770858 m!1039663))

(assert (=> b!770764 d!251618))

(declare-fun d!251620 () Bool)

(assert (=> d!251620 (= (array_inv!1342 (_keys!1469 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))))) (bvsge (size!6967 (_keys!1469 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!770783 d!251620))

(declare-fun d!251622 () Bool)

(assert (=> d!251622 (= (array_inv!1344 (_values!1454 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))))) (bvsge (size!6968 (_values!1454 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!770783 d!251622))

(declare-fun d!251624 () Bool)

(declare-fun e!496574 () Bool)

(assert (=> d!251624 e!496574))

(declare-fun res!338014 () Bool)

(assert (=> d!251624 (=> res!338014 e!496574)))

(declare-fun lt!313689 () Bool)

(assert (=> d!251624 (= res!338014 (not lt!313689))))

(declare-fun drop!395 (List!8584 Int) List!8584)

(assert (=> d!251624 (= lt!313689 (= lt!313657 (drop!395 (list!3434 totalInput!472) (- (size!6972 (list!3434 totalInput!472)) (size!6972 lt!313657)))))))

(assert (=> d!251624 (= (isSuffix!215 lt!313657 (list!3434 totalInput!472)) lt!313689)))

(declare-fun b!770861 () Bool)

(assert (=> b!770861 (= e!496574 (>= (size!6972 (list!3434 totalInput!472)) (size!6972 lt!313657)))))

(assert (= (and d!251624 (not res!338014)) b!770861))

(assert (=> d!251624 m!1039555))

(declare-fun m!1039665 () Bool)

(assert (=> d!251624 m!1039665))

(assert (=> d!251624 m!1039599))

(assert (=> d!251624 m!1039555))

(declare-fun m!1039667 () Bool)

(assert (=> d!251624 m!1039667))

(assert (=> b!770861 m!1039555))

(assert (=> b!770861 m!1039665))

(assert (=> b!770861 m!1039599))

(assert (=> b!770772 d!251624))

(declare-fun d!251626 () Bool)

(declare-fun list!3435 (Conc!2883) List!8584)

(assert (=> d!251626 (= (list!3434 totalInput!472) (list!3435 (c!130259 totalInput!472)))))

(declare-fun bs!165954 () Bool)

(assert (= bs!165954 d!251626))

(declare-fun m!1039669 () Bool)

(assert (=> bs!165954 m!1039669))

(assert (=> b!770772 d!251626))

(declare-fun d!251628 () Bool)

(assert (=> d!251628 (= (list!3434 input!1432) (list!3435 (c!130259 input!1432)))))

(declare-fun bs!165955 () Bool)

(assert (= bs!165955 d!251628))

(declare-fun m!1039671 () Bool)

(assert (=> bs!165955 m!1039671))

(assert (=> b!770772 d!251628))

(declare-fun d!251630 () Bool)

(assert (=> d!251630 (= (inv!10893 (tag!1896 (h!13975 rulesArg!343))) (= (mod (str.len (value!52239 (tag!1896 (h!13975 rulesArg!343)))) 2) 0))))

(assert (=> b!770791 d!251630))

(declare-fun d!251632 () Bool)

(declare-fun res!338017 () Bool)

(declare-fun e!496577 () Bool)

(assert (=> d!251632 (=> (not res!338017) (not e!496577))))

(declare-fun semiInverseModEq!612 (Int Int) Bool)

(assert (=> d!251632 (= res!338017 (semiInverseModEq!612 (toChars!2485 (transformation!1634 (h!13975 rulesArg!343))) (toValue!2626 (transformation!1634 (h!13975 rulesArg!343)))))))

(assert (=> d!251632 (= (inv!10903 (transformation!1634 (h!13975 rulesArg!343))) e!496577)))

(declare-fun b!770864 () Bool)

(declare-fun equivClasses!587 (Int Int) Bool)

(assert (=> b!770864 (= e!496577 (equivClasses!587 (toChars!2485 (transformation!1634 (h!13975 rulesArg!343))) (toValue!2626 (transformation!1634 (h!13975 rulesArg!343)))))))

(assert (= (and d!251632 res!338017) b!770864))

(declare-fun m!1039673 () Bool)

(assert (=> d!251632 m!1039673))

(declare-fun m!1039675 () Bool)

(assert (=> b!770864 m!1039675))

(assert (=> b!770791 d!251632))

(declare-fun d!251634 () Bool)

(declare-fun c!130266 () Bool)

(assert (=> d!251634 (= c!130266 ((_ is Node!2883) (c!130259 totalInput!472)))))

(declare-fun e!496578 () Bool)

(assert (=> d!251634 (= (inv!10898 (c!130259 totalInput!472)) e!496578)))

(declare-fun b!770865 () Bool)

(assert (=> b!770865 (= e!496578 (inv!10904 (c!130259 totalInput!472)))))

(declare-fun b!770866 () Bool)

(declare-fun e!496579 () Bool)

(assert (=> b!770866 (= e!496578 e!496579)))

(declare-fun res!338018 () Bool)

(assert (=> b!770866 (= res!338018 (not ((_ is Leaf!4229) (c!130259 totalInput!472))))))

(assert (=> b!770866 (=> res!338018 e!496579)))

(declare-fun b!770867 () Bool)

(assert (=> b!770867 (= e!496579 (inv!10905 (c!130259 totalInput!472)))))

(assert (= (and d!251634 c!130266) b!770865))

(assert (= (and d!251634 (not c!130266)) b!770866))

(assert (= (and b!770866 (not res!338018)) b!770867))

(declare-fun m!1039677 () Bool)

(assert (=> b!770865 m!1039677))

(declare-fun m!1039679 () Bool)

(assert (=> b!770867 m!1039679))

(assert (=> b!770782 d!251634))

(declare-fun bs!165956 () Bool)

(declare-fun d!251636 () Bool)

(assert (= bs!165956 (and d!251636 d!251612)))

(declare-fun lambda!23290 () Int)

(assert (=> bs!165956 (= lambda!23290 lambda!23289)))

(assert (=> d!251636 true))

(declare-fun lt!313690 () Bool)

(assert (=> d!251636 (= lt!313690 (forall!2045 rulesArg!343 lambda!23290))))

(declare-fun e!496581 () Bool)

(assert (=> d!251636 (= lt!313690 e!496581)))

(declare-fun res!338019 () Bool)

(assert (=> d!251636 (=> res!338019 e!496581)))

(assert (=> d!251636 (= res!338019 (not ((_ is Cons!8574) rulesArg!343)))))

(assert (=> d!251636 (= (rulesValidInductive!580 thiss!15653 rulesArg!343) lt!313690)))

(declare-fun b!770868 () Bool)

(declare-fun e!496580 () Bool)

(assert (=> b!770868 (= e!496581 e!496580)))

(declare-fun res!338020 () Bool)

(assert (=> b!770868 (=> (not res!338020) (not e!496580))))

(assert (=> b!770868 (= res!338020 (ruleValid!503 thiss!15653 (h!13975 rulesArg!343)))))

(declare-fun b!770869 () Bool)

(assert (=> b!770869 (= e!496580 (rulesValidInductive!580 thiss!15653 (t!91870 rulesArg!343)))))

(assert (= (and d!251636 (not res!338019)) b!770868))

(assert (= (and b!770868 res!338020) b!770869))

(declare-fun m!1039681 () Bool)

(assert (=> d!251636 m!1039681))

(assert (=> b!770868 m!1039655))

(assert (=> b!770869 m!1039595))

(assert (=> b!770790 d!251636))

(declare-fun d!251638 () Bool)

(assert (=> d!251638 (= (valid!954 cacheDown!666) (validCacheMapDown!102 (cache!1535 cacheDown!666)))))

(declare-fun bs!165957 () Bool)

(assert (= bs!165957 d!251638))

(assert (=> bs!165957 m!1039611))

(assert (=> b!770781 d!251638))

(declare-fun d!251640 () Bool)

(declare-fun c!130267 () Bool)

(assert (=> d!251640 (= c!130267 ((_ is Node!2883) (c!130259 (totalInput!2119 cacheFindLongestMatch!134))))))

(declare-fun e!496582 () Bool)

(assert (=> d!251640 (= (inv!10898 (c!130259 (totalInput!2119 cacheFindLongestMatch!134))) e!496582)))

(declare-fun b!770870 () Bool)

(assert (=> b!770870 (= e!496582 (inv!10904 (c!130259 (totalInput!2119 cacheFindLongestMatch!134))))))

(declare-fun b!770871 () Bool)

(declare-fun e!496583 () Bool)

(assert (=> b!770871 (= e!496582 e!496583)))

(declare-fun res!338021 () Bool)

(assert (=> b!770871 (= res!338021 (not ((_ is Leaf!4229) (c!130259 (totalInput!2119 cacheFindLongestMatch!134)))))))

(assert (=> b!770871 (=> res!338021 e!496583)))

(declare-fun b!770872 () Bool)

(assert (=> b!770872 (= e!496583 (inv!10905 (c!130259 (totalInput!2119 cacheFindLongestMatch!134))))))

(assert (= (and d!251640 c!130267) b!770870))

(assert (= (and d!251640 (not c!130267)) b!770871))

(assert (= (and b!770871 (not res!338021)) b!770872))

(declare-fun m!1039683 () Bool)

(assert (=> b!770870 m!1039683))

(declare-fun m!1039685 () Bool)

(assert (=> b!770872 m!1039685))

(assert (=> b!770789 d!251640))

(declare-fun d!251642 () Bool)

(assert (=> d!251642 (= (valid!952 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!48 (cache!1536 cacheFindLongestMatch!134) (totalInput!2119 cacheFindLongestMatch!134)))))

(declare-fun bs!165958 () Bool)

(assert (= bs!165958 d!251642))

(assert (=> bs!165958 m!1039617))

(assert (=> b!770769 d!251642))

(declare-fun b!770879 () Bool)

(declare-fun e!496589 () Bool)

(declare-fun setRes!7011 () Bool)

(declare-fun tp!252218 () Bool)

(assert (=> b!770879 (= e!496589 (and setRes!7011 tp!252218))))

(declare-fun condSetEmpty!7011 () Bool)

(assert (=> b!770879 (= condSetEmpty!7011 (= (_1!5760 (_1!5761 (h!13973 (zeroValue!1434 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))))) ((as const (Array Context!774 Bool)) false)))))

(assert (=> b!770787 (= tp!252190 e!496589)))

(declare-fun setIsEmpty!7011 () Bool)

(assert (=> setIsEmpty!7011 setRes!7011))

(declare-fun e!496588 () Bool)

(declare-fun setElem!7011 () Context!774)

(declare-fun setNonEmpty!7011 () Bool)

(declare-fun tp!252219 () Bool)

(declare-fun inv!10906 (Context!774) Bool)

(assert (=> setNonEmpty!7011 (= setRes!7011 (and tp!252219 (inv!10906 setElem!7011) e!496588))))

(declare-fun setRest!7011 () (InoxSet Context!774))

(assert (=> setNonEmpty!7011 (= (_1!5760 (_1!5761 (h!13973 (zeroValue!1434 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7011 true) setRest!7011))))

(declare-fun b!770880 () Bool)

(declare-fun tp!252220 () Bool)

(assert (=> b!770880 (= e!496588 tp!252220)))

(assert (= (and b!770879 condSetEmpty!7011) setIsEmpty!7011))

(assert (= (and b!770879 (not condSetEmpty!7011)) setNonEmpty!7011))

(assert (= setNonEmpty!7011 b!770880))

(assert (= (and b!770787 ((_ is Cons!8572) (zeroValue!1434 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134)))))))) b!770879))

(declare-fun m!1039687 () Bool)

(assert (=> setNonEmpty!7011 m!1039687))

(declare-fun b!770881 () Bool)

(declare-fun e!496591 () Bool)

(declare-fun setRes!7012 () Bool)

(declare-fun tp!252221 () Bool)

(assert (=> b!770881 (= e!496591 (and setRes!7012 tp!252221))))

(declare-fun condSetEmpty!7012 () Bool)

(assert (=> b!770881 (= condSetEmpty!7012 (= (_1!5760 (_1!5761 (h!13973 (minValue!1434 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))))) ((as const (Array Context!774 Bool)) false)))))

(assert (=> b!770787 (= tp!252192 e!496591)))

(declare-fun setIsEmpty!7012 () Bool)

(assert (=> setIsEmpty!7012 setRes!7012))

(declare-fun e!496590 () Bool)

(declare-fun tp!252222 () Bool)

(declare-fun setNonEmpty!7012 () Bool)

(declare-fun setElem!7012 () Context!774)

(assert (=> setNonEmpty!7012 (= setRes!7012 (and tp!252222 (inv!10906 setElem!7012) e!496590))))

(declare-fun setRest!7012 () (InoxSet Context!774))

(assert (=> setNonEmpty!7012 (= (_1!5760 (_1!5761 (h!13973 (minValue!1434 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7012 true) setRest!7012))))

(declare-fun b!770882 () Bool)

(declare-fun tp!252223 () Bool)

(assert (=> b!770882 (= e!496590 tp!252223)))

(assert (= (and b!770881 condSetEmpty!7012) setIsEmpty!7012))

(assert (= (and b!770881 (not condSetEmpty!7012)) setNonEmpty!7012))

(assert (= setNonEmpty!7012 b!770882))

(assert (= (and b!770787 ((_ is Cons!8572) (minValue!1434 (v!18705 (underlying!2537 (v!18706 (underlying!2538 (cache!1536 cacheFindLongestMatch!134)))))))) b!770881))

(declare-fun m!1039689 () Bool)

(assert (=> setNonEmpty!7012 m!1039689))

(declare-fun e!496598 () Bool)

(assert (=> b!770767 (= tp!252205 e!496598)))

(declare-fun b!770891 () Bool)

(declare-fun e!496599 () Bool)

(declare-fun tp!252238 () Bool)

(assert (=> b!770891 (= e!496599 tp!252238)))

(declare-fun setIsEmpty!7015 () Bool)

(declare-fun setRes!7015 () Bool)

(assert (=> setIsEmpty!7015 setRes!7015))

(declare-fun b!770892 () Bool)

(declare-fun tp_is_empty!3729 () Bool)

(declare-fun tp!252237 () Bool)

(declare-fun tp!252235 () Bool)

(assert (=> b!770892 (= e!496598 (and tp!252235 (inv!10906 (_2!5758 (_1!5759 (h!13972 (zeroValue!1433 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666)))))))))) e!496599 tp_is_empty!3729 setRes!7015 tp!252237))))

(declare-fun condSetEmpty!7015 () Bool)

(assert (=> b!770892 (= condSetEmpty!7015 (= (_2!5759 (h!13972 (zeroValue!1433 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666)))))))) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!770893 () Bool)

(declare-fun e!496600 () Bool)

(declare-fun tp!252234 () Bool)

(assert (=> b!770893 (= e!496600 tp!252234)))

(declare-fun tp!252236 () Bool)

(declare-fun setElem!7015 () Context!774)

(declare-fun setNonEmpty!7015 () Bool)

(assert (=> setNonEmpty!7015 (= setRes!7015 (and tp!252236 (inv!10906 setElem!7015) e!496600))))

(declare-fun setRest!7015 () (InoxSet Context!774))

(assert (=> setNonEmpty!7015 (= (_2!5759 (h!13972 (zeroValue!1433 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7015 true) setRest!7015))))

(assert (= b!770892 b!770891))

(assert (= (and b!770892 condSetEmpty!7015) setIsEmpty!7015))

(assert (= (and b!770892 (not condSetEmpty!7015)) setNonEmpty!7015))

(assert (= setNonEmpty!7015 b!770893))

(assert (= (and b!770767 ((_ is Cons!8571) (zeroValue!1433 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666)))))))) b!770892))

(declare-fun m!1039691 () Bool)

(assert (=> b!770892 m!1039691))

(declare-fun m!1039693 () Bool)

(assert (=> setNonEmpty!7015 m!1039693))

(declare-fun e!496601 () Bool)

(assert (=> b!770767 (= tp!252207 e!496601)))

(declare-fun b!770894 () Bool)

(declare-fun e!496602 () Bool)

(declare-fun tp!252243 () Bool)

(assert (=> b!770894 (= e!496602 tp!252243)))

(declare-fun setIsEmpty!7016 () Bool)

(declare-fun setRes!7016 () Bool)

(assert (=> setIsEmpty!7016 setRes!7016))

(declare-fun tp!252240 () Bool)

(declare-fun b!770895 () Bool)

(declare-fun tp!252242 () Bool)

(assert (=> b!770895 (= e!496601 (and tp!252240 (inv!10906 (_2!5758 (_1!5759 (h!13972 (minValue!1433 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666)))))))))) e!496602 tp_is_empty!3729 setRes!7016 tp!252242))))

(declare-fun condSetEmpty!7016 () Bool)

(assert (=> b!770895 (= condSetEmpty!7016 (= (_2!5759 (h!13972 (minValue!1433 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666)))))))) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!770896 () Bool)

(declare-fun e!496603 () Bool)

(declare-fun tp!252239 () Bool)

(assert (=> b!770896 (= e!496603 tp!252239)))

(declare-fun tp!252241 () Bool)

(declare-fun setElem!7016 () Context!774)

(declare-fun setNonEmpty!7016 () Bool)

(assert (=> setNonEmpty!7016 (= setRes!7016 (and tp!252241 (inv!10906 setElem!7016) e!496603))))

(declare-fun setRest!7016 () (InoxSet Context!774))

(assert (=> setNonEmpty!7016 (= (_2!5759 (h!13972 (minValue!1433 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7016 true) setRest!7016))))

(assert (= b!770895 b!770894))

(assert (= (and b!770895 condSetEmpty!7016) setIsEmpty!7016))

(assert (= (and b!770895 (not condSetEmpty!7016)) setNonEmpty!7016))

(assert (= setNonEmpty!7016 b!770896))

(assert (= (and b!770767 ((_ is Cons!8571) (minValue!1433 (v!18703 (underlying!2535 (v!18704 (underlying!2536 (cache!1535 cacheDown!666)))))))) b!770895))

(declare-fun m!1039695 () Bool)

(assert (=> b!770895 m!1039695))

(declare-fun m!1039697 () Bool)

(assert (=> setNonEmpty!7016 m!1039697))

(declare-fun b!770897 () Bool)

(declare-fun e!496605 () Bool)

(declare-fun setRes!7017 () Bool)

(declare-fun tp!252244 () Bool)

(assert (=> b!770897 (= e!496605 (and setRes!7017 tp!252244))))

(declare-fun condSetEmpty!7017 () Bool)

(assert (=> b!770897 (= condSetEmpty!7017 (= (_1!5760 (_1!5761 (h!13973 mapDefault!5755))) ((as const (Array Context!774 Bool)) false)))))

(assert (=> b!770786 (= tp!252184 e!496605)))

(declare-fun setIsEmpty!7017 () Bool)

(assert (=> setIsEmpty!7017 setRes!7017))

(declare-fun e!496604 () Bool)

(declare-fun setElem!7017 () Context!774)

(declare-fun setNonEmpty!7017 () Bool)

(declare-fun tp!252245 () Bool)

(assert (=> setNonEmpty!7017 (= setRes!7017 (and tp!252245 (inv!10906 setElem!7017) e!496604))))

(declare-fun setRest!7017 () (InoxSet Context!774))

(assert (=> setNonEmpty!7017 (= (_1!5760 (_1!5761 (h!13973 mapDefault!5755))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7017 true) setRest!7017))))

(declare-fun b!770898 () Bool)

(declare-fun tp!252246 () Bool)

(assert (=> b!770898 (= e!496604 tp!252246)))

(assert (= (and b!770897 condSetEmpty!7017) setIsEmpty!7017))

(assert (= (and b!770897 (not condSetEmpty!7017)) setNonEmpty!7017))

(assert (= setNonEmpty!7017 b!770898))

(assert (= (and b!770786 ((_ is Cons!8572) mapDefault!5755)) b!770897))

(declare-fun m!1039699 () Bool)

(assert (=> setNonEmpty!7017 m!1039699))

(declare-fun setElem!7022 () Context!774)

(declare-fun e!496617 () Bool)

(declare-fun setNonEmpty!7022 () Bool)

(declare-fun tp!252264 () Bool)

(declare-fun setRes!7023 () Bool)

(assert (=> setNonEmpty!7022 (= setRes!7023 (and tp!252264 (inv!10906 setElem!7022) e!496617))))

(declare-fun mapDefault!5758 () List!8586)

(declare-fun setRest!7023 () (InoxSet Context!774))

(assert (=> setNonEmpty!7022 (= (_1!5760 (_1!5761 (h!13973 mapDefault!5758))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7022 true) setRest!7023))))

(declare-fun mapNonEmpty!5758 () Bool)

(declare-fun mapRes!5758 () Bool)

(declare-fun tp!252266 () Bool)

(declare-fun e!496616 () Bool)

(assert (=> mapNonEmpty!5758 (= mapRes!5758 (and tp!252266 e!496616))))

(declare-fun mapValue!5758 () List!8586)

(declare-fun mapRest!5758 () (Array (_ BitVec 32) List!8586))

(declare-fun mapKey!5758 () (_ BitVec 32))

(assert (=> mapNonEmpty!5758 (= mapRest!5753 (store mapRest!5758 mapKey!5758 mapValue!5758))))

(declare-fun b!770909 () Bool)

(declare-fun e!496614 () Bool)

(declare-fun tp!252265 () Bool)

(assert (=> b!770909 (= e!496614 (and setRes!7023 tp!252265))))

(declare-fun condSetEmpty!7023 () Bool)

(assert (=> b!770909 (= condSetEmpty!7023 (= (_1!5760 (_1!5761 (h!13973 mapDefault!5758))) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!770910 () Bool)

(declare-fun setRes!7022 () Bool)

(declare-fun tp!252267 () Bool)

(assert (=> b!770910 (= e!496616 (and setRes!7022 tp!252267))))

(declare-fun condSetEmpty!7022 () Bool)

(assert (=> b!770910 (= condSetEmpty!7022 (= (_1!5760 (_1!5761 (h!13973 mapValue!5758))) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!770911 () Bool)

(declare-fun e!496615 () Bool)

(declare-fun tp!252262 () Bool)

(assert (=> b!770911 (= e!496615 tp!252262)))

(declare-fun setNonEmpty!7023 () Bool)

(declare-fun tp!252263 () Bool)

(declare-fun setElem!7023 () Context!774)

(assert (=> setNonEmpty!7023 (= setRes!7022 (and tp!252263 (inv!10906 setElem!7023) e!496615))))

(declare-fun setRest!7022 () (InoxSet Context!774))

(assert (=> setNonEmpty!7023 (= (_1!5760 (_1!5761 (h!13973 mapValue!5758))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7023 true) setRest!7022))))

(declare-fun setIsEmpty!7023 () Bool)

(assert (=> setIsEmpty!7023 setRes!7023))

(declare-fun setIsEmpty!7022 () Bool)

(assert (=> setIsEmpty!7022 setRes!7022))

(declare-fun condMapEmpty!5758 () Bool)

(assert (=> mapNonEmpty!5755 (= condMapEmpty!5758 (= mapRest!5753 ((as const (Array (_ BitVec 32) List!8586)) mapDefault!5758)))))

(assert (=> mapNonEmpty!5755 (= tp!252186 (and e!496614 mapRes!5758))))

(declare-fun mapIsEmpty!5758 () Bool)

(assert (=> mapIsEmpty!5758 mapRes!5758))

(declare-fun b!770912 () Bool)

(declare-fun tp!252261 () Bool)

(assert (=> b!770912 (= e!496617 tp!252261)))

(assert (= (and mapNonEmpty!5755 condMapEmpty!5758) mapIsEmpty!5758))

(assert (= (and mapNonEmpty!5755 (not condMapEmpty!5758)) mapNonEmpty!5758))

(assert (= (and b!770910 condSetEmpty!7022) setIsEmpty!7022))

(assert (= (and b!770910 (not condSetEmpty!7022)) setNonEmpty!7023))

(assert (= setNonEmpty!7023 b!770911))

(assert (= (and mapNonEmpty!5758 ((_ is Cons!8572) mapValue!5758)) b!770910))

(assert (= (and b!770909 condSetEmpty!7023) setIsEmpty!7023))

(assert (= (and b!770909 (not condSetEmpty!7023)) setNonEmpty!7022))

(assert (= setNonEmpty!7022 b!770912))

(assert (= (and mapNonEmpty!5755 ((_ is Cons!8572) mapDefault!5758)) b!770909))

(declare-fun m!1039701 () Bool)

(assert (=> setNonEmpty!7022 m!1039701))

(declare-fun m!1039703 () Bool)

(assert (=> mapNonEmpty!5758 m!1039703))

(declare-fun m!1039705 () Bool)

(assert (=> setNonEmpty!7023 m!1039705))

(declare-fun b!770913 () Bool)

(declare-fun e!496619 () Bool)

(declare-fun setRes!7024 () Bool)

(declare-fun tp!252268 () Bool)

(assert (=> b!770913 (= e!496619 (and setRes!7024 tp!252268))))

(declare-fun condSetEmpty!7024 () Bool)

(assert (=> b!770913 (= condSetEmpty!7024 (= (_1!5760 (_1!5761 (h!13973 mapValue!5755))) ((as const (Array Context!774 Bool)) false)))))

(assert (=> mapNonEmpty!5755 (= tp!252203 e!496619)))

(declare-fun setIsEmpty!7024 () Bool)

(assert (=> setIsEmpty!7024 setRes!7024))

(declare-fun tp!252269 () Bool)

(declare-fun setNonEmpty!7024 () Bool)

(declare-fun setElem!7024 () Context!774)

(declare-fun e!496618 () Bool)

(assert (=> setNonEmpty!7024 (= setRes!7024 (and tp!252269 (inv!10906 setElem!7024) e!496618))))

(declare-fun setRest!7024 () (InoxSet Context!774))

(assert (=> setNonEmpty!7024 (= (_1!5760 (_1!5761 (h!13973 mapValue!5755))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7024 true) setRest!7024))))

(declare-fun b!770914 () Bool)

(declare-fun tp!252270 () Bool)

(assert (=> b!770914 (= e!496618 tp!252270)))

(assert (= (and b!770913 condSetEmpty!7024) setIsEmpty!7024))

(assert (= (and b!770913 (not condSetEmpty!7024)) setNonEmpty!7024))

(assert (= setNonEmpty!7024 b!770914))

(assert (= (and mapNonEmpty!5755 ((_ is Cons!8572) mapValue!5755)) b!770913))

(declare-fun m!1039707 () Bool)

(assert (=> setNonEmpty!7024 m!1039707))

(declare-fun e!496628 () Bool)

(assert (=> b!770784 (= tp!252187 e!496628)))

(declare-fun setIsEmpty!7027 () Bool)

(declare-fun setRes!7027 () Bool)

(assert (=> setIsEmpty!7027 setRes!7027))

(declare-fun b!770923 () Bool)

(declare-fun e!496627 () Bool)

(declare-fun tp!252279 () Bool)

(assert (=> b!770923 (= e!496627 tp!252279)))

(declare-fun setNonEmpty!7027 () Bool)

(declare-fun setElem!7027 () Context!774)

(declare-fun tp!252281 () Bool)

(assert (=> setNonEmpty!7027 (= setRes!7027 (and tp!252281 (inv!10906 setElem!7027) e!496627))))

(declare-fun setRest!7027 () (InoxSet Context!774))

(assert (=> setNonEmpty!7027 (= (_2!5757 (h!13970 mapDefault!5754)) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7027 true) setRest!7027))))

(declare-fun b!770924 () Bool)

(declare-fun tp!252280 () Bool)

(declare-fun e!496626 () Bool)

(assert (=> b!770924 (= e!496628 (and (inv!10906 (_1!5756 (_1!5757 (h!13970 mapDefault!5754)))) e!496626 tp_is_empty!3729 setRes!7027 tp!252280))))

(declare-fun condSetEmpty!7027 () Bool)

(assert (=> b!770924 (= condSetEmpty!7027 (= (_2!5757 (h!13970 mapDefault!5754)) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!770925 () Bool)

(declare-fun tp!252282 () Bool)

(assert (=> b!770925 (= e!496626 tp!252282)))

(assert (= b!770924 b!770925))

(assert (= (and b!770924 condSetEmpty!7027) setIsEmpty!7027))

(assert (= (and b!770924 (not condSetEmpty!7027)) setNonEmpty!7027))

(assert (= setNonEmpty!7027 b!770923))

(assert (= (and b!770784 ((_ is Cons!8569) mapDefault!5754)) b!770924))

(declare-fun m!1039709 () Bool)

(assert (=> setNonEmpty!7027 m!1039709))

(declare-fun m!1039711 () Bool)

(assert (=> b!770924 m!1039711))

(declare-fun e!496634 () Bool)

(declare-fun tp!252289 () Bool)

(declare-fun tp!252291 () Bool)

(declare-fun b!770934 () Bool)

(assert (=> b!770934 (= e!496634 (and (inv!10898 (left!6388 (c!130259 input!1432))) tp!252291 (inv!10898 (right!6718 (c!130259 input!1432))) tp!252289))))

(declare-fun b!770936 () Bool)

(declare-fun e!496633 () Bool)

(declare-fun tp!252290 () Bool)

(assert (=> b!770936 (= e!496633 tp!252290)))

(declare-fun b!770935 () Bool)

(declare-fun inv!10907 (IArray!5767) Bool)

(assert (=> b!770935 (= e!496634 (and (inv!10907 (xs!5570 (c!130259 input!1432))) e!496633))))

(assert (=> b!770764 (= tp!252199 (and (inv!10898 (c!130259 input!1432)) e!496634))))

(assert (= (and b!770764 ((_ is Node!2883) (c!130259 input!1432))) b!770934))

(assert (= b!770935 b!770936))

(assert (= (and b!770764 ((_ is Leaf!4229) (c!130259 input!1432))) b!770935))

(declare-fun m!1039713 () Bool)

(assert (=> b!770934 m!1039713))

(declare-fun m!1039715 () Bool)

(assert (=> b!770934 m!1039715))

(declare-fun m!1039717 () Bool)

(assert (=> b!770935 m!1039717))

(assert (=> b!770764 m!1039541))

(declare-fun e!496637 () Bool)

(assert (=> b!770783 (= tp!252211 e!496637)))

(declare-fun setIsEmpty!7028 () Bool)

(declare-fun setRes!7028 () Bool)

(assert (=> setIsEmpty!7028 setRes!7028))

(declare-fun b!770937 () Bool)

(declare-fun e!496636 () Bool)

(declare-fun tp!252292 () Bool)

(assert (=> b!770937 (= e!496636 tp!252292)))

(declare-fun setElem!7028 () Context!774)

(declare-fun setNonEmpty!7028 () Bool)

(declare-fun tp!252294 () Bool)

(assert (=> setNonEmpty!7028 (= setRes!7028 (and tp!252294 (inv!10906 setElem!7028) e!496636))))

(declare-fun setRest!7028 () (InoxSet Context!774))

(assert (=> setNonEmpty!7028 (= (_2!5757 (h!13970 (zeroValue!1432 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7028 true) setRest!7028))))

(declare-fun e!496635 () Bool)

(declare-fun tp!252293 () Bool)

(declare-fun b!770938 () Bool)

(assert (=> b!770938 (= e!496637 (and (inv!10906 (_1!5756 (_1!5757 (h!13970 (zeroValue!1432 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653)))))))))) e!496635 tp_is_empty!3729 setRes!7028 tp!252293))))

(declare-fun condSetEmpty!7028 () Bool)

(assert (=> b!770938 (= condSetEmpty!7028 (= (_2!5757 (h!13970 (zeroValue!1432 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653)))))))) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!770939 () Bool)

(declare-fun tp!252295 () Bool)

(assert (=> b!770939 (= e!496635 tp!252295)))

(assert (= b!770938 b!770939))

(assert (= (and b!770938 condSetEmpty!7028) setIsEmpty!7028))

(assert (= (and b!770938 (not condSetEmpty!7028)) setNonEmpty!7028))

(assert (= setNonEmpty!7028 b!770937))

(assert (= (and b!770783 ((_ is Cons!8569) (zeroValue!1432 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653)))))))) b!770938))

(declare-fun m!1039719 () Bool)

(assert (=> setNonEmpty!7028 m!1039719))

(declare-fun m!1039721 () Bool)

(assert (=> b!770938 m!1039721))

(declare-fun e!496640 () Bool)

(assert (=> b!770783 (= tp!252185 e!496640)))

(declare-fun setIsEmpty!7029 () Bool)

(declare-fun setRes!7029 () Bool)

(assert (=> setIsEmpty!7029 setRes!7029))

(declare-fun b!770940 () Bool)

(declare-fun e!496639 () Bool)

(declare-fun tp!252296 () Bool)

(assert (=> b!770940 (= e!496639 tp!252296)))

(declare-fun tp!252298 () Bool)

(declare-fun setElem!7029 () Context!774)

(declare-fun setNonEmpty!7029 () Bool)

(assert (=> setNonEmpty!7029 (= setRes!7029 (and tp!252298 (inv!10906 setElem!7029) e!496639))))

(declare-fun setRest!7029 () (InoxSet Context!774))

(assert (=> setNonEmpty!7029 (= (_2!5757 (h!13970 (minValue!1432 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7029 true) setRest!7029))))

(declare-fun b!770941 () Bool)

(declare-fun e!496638 () Bool)

(declare-fun tp!252297 () Bool)

(assert (=> b!770941 (= e!496640 (and (inv!10906 (_1!5756 (_1!5757 (h!13970 (minValue!1432 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653)))))))))) e!496638 tp_is_empty!3729 setRes!7029 tp!252297))))

(declare-fun condSetEmpty!7029 () Bool)

(assert (=> b!770941 (= condSetEmpty!7029 (= (_2!5757 (h!13970 (minValue!1432 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653)))))))) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!770942 () Bool)

(declare-fun tp!252299 () Bool)

(assert (=> b!770942 (= e!496638 tp!252299)))

(assert (= b!770941 b!770942))

(assert (= (and b!770941 condSetEmpty!7029) setIsEmpty!7029))

(assert (= (and b!770941 (not condSetEmpty!7029)) setNonEmpty!7029))

(assert (= setNonEmpty!7029 b!770940))

(assert (= (and b!770783 ((_ is Cons!8569) (minValue!1432 (v!18701 (underlying!2533 (v!18702 (underlying!2534 (cache!1534 cacheUp!653)))))))) b!770941))

(declare-fun m!1039723 () Bool)

(assert (=> setNonEmpty!7029 m!1039723))

(declare-fun m!1039725 () Bool)

(assert (=> b!770941 m!1039725))

(declare-fun e!496643 () Bool)

(assert (=> b!770791 (= tp!252208 e!496643)))

(declare-fun b!770953 () Bool)

(assert (=> b!770953 (= e!496643 tp_is_empty!3729)))

(declare-fun b!770955 () Bool)

(declare-fun tp!252314 () Bool)

(assert (=> b!770955 (= e!496643 tp!252314)))

(declare-fun b!770954 () Bool)

(declare-fun tp!252313 () Bool)

(declare-fun tp!252312 () Bool)

(assert (=> b!770954 (= e!496643 (and tp!252313 tp!252312))))

(declare-fun b!770956 () Bool)

(declare-fun tp!252310 () Bool)

(declare-fun tp!252311 () Bool)

(assert (=> b!770956 (= e!496643 (and tp!252310 tp!252311))))

(assert (= (and b!770791 ((_ is ElementMatch!1985) (regex!1634 (h!13975 rulesArg!343)))) b!770953))

(assert (= (and b!770791 ((_ is Concat!3663) (regex!1634 (h!13975 rulesArg!343)))) b!770954))

(assert (= (and b!770791 ((_ is Star!1985) (regex!1634 (h!13975 rulesArg!343)))) b!770955))

(assert (= (and b!770791 ((_ is Union!1985) (regex!1634 (h!13975 rulesArg!343)))) b!770956))

(declare-fun b!770971 () Bool)

(declare-fun e!496659 () Bool)

(declare-fun tp!252336 () Bool)

(assert (=> b!770971 (= e!496659 tp!252336)))

(declare-fun mapIsEmpty!5761 () Bool)

(declare-fun mapRes!5761 () Bool)

(assert (=> mapIsEmpty!5761 mapRes!5761))

(declare-fun setIsEmpty!7034 () Bool)

(declare-fun setRes!7034 () Bool)

(assert (=> setIsEmpty!7034 setRes!7034))

(declare-fun b!770973 () Bool)

(declare-fun e!496656 () Bool)

(declare-fun tp!252337 () Bool)

(assert (=> b!770973 (= e!496656 tp!252337)))

(declare-fun setNonEmpty!7034 () Bool)

(declare-fun setElem!7034 () Context!774)

(declare-fun setRes!7035 () Bool)

(declare-fun e!496658 () Bool)

(declare-fun tp!252339 () Bool)

(assert (=> setNonEmpty!7034 (= setRes!7035 (and tp!252339 (inv!10906 setElem!7034) e!496658))))

(declare-fun mapDefault!5761 () List!8583)

(declare-fun setRest!7034 () (InoxSet Context!774))

(assert (=> setNonEmpty!7034 (= (_2!5757 (h!13970 mapDefault!5761)) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7034 true) setRest!7034))))

(declare-fun mapNonEmpty!5761 () Bool)

(declare-fun tp!252335 () Bool)

(declare-fun e!496657 () Bool)

(assert (=> mapNonEmpty!5761 (= mapRes!5761 (and tp!252335 e!496657))))

(declare-fun mapRest!5761 () (Array (_ BitVec 32) List!8583))

(declare-fun mapValue!5761 () List!8583)

(declare-fun mapKey!5761 () (_ BitVec 32))

(assert (=> mapNonEmpty!5761 (= mapRest!5754 (store mapRest!5761 mapKey!5761 mapValue!5761))))

(declare-fun b!770974 () Bool)

(declare-fun tp!252334 () Bool)

(assert (=> b!770974 (= e!496658 tp!252334)))

(declare-fun b!770972 () Bool)

(declare-fun e!496660 () Bool)

(declare-fun tp!252340 () Bool)

(assert (=> b!770972 (= e!496660 tp!252340)))

(declare-fun condMapEmpty!5761 () Bool)

(assert (=> mapNonEmpty!5753 (= condMapEmpty!5761 (= mapRest!5754 ((as const (Array (_ BitVec 32) List!8583)) mapDefault!5761)))))

(declare-fun e!496661 () Bool)

(assert (=> mapNonEmpty!5753 (= tp!252188 (and e!496661 mapRes!5761))))

(declare-fun tp!252338 () Bool)

(declare-fun setElem!7035 () Context!774)

(declare-fun setNonEmpty!7035 () Bool)

(assert (=> setNonEmpty!7035 (= setRes!7034 (and tp!252338 (inv!10906 setElem!7035) e!496660))))

(declare-fun setRest!7035 () (InoxSet Context!774))

(assert (=> setNonEmpty!7035 (= (_2!5757 (h!13970 mapValue!5761)) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7035 true) setRest!7035))))

(declare-fun setIsEmpty!7035 () Bool)

(assert (=> setIsEmpty!7035 setRes!7035))

(declare-fun tp!252341 () Bool)

(declare-fun b!770975 () Bool)

(assert (=> b!770975 (= e!496661 (and (inv!10906 (_1!5756 (_1!5757 (h!13970 mapDefault!5761)))) e!496659 tp_is_empty!3729 setRes!7035 tp!252341))))

(declare-fun condSetEmpty!7034 () Bool)

(assert (=> b!770975 (= condSetEmpty!7034 (= (_2!5757 (h!13970 mapDefault!5761)) ((as const (Array Context!774 Bool)) false)))))

(declare-fun tp!252333 () Bool)

(declare-fun b!770976 () Bool)

(assert (=> b!770976 (= e!496657 (and (inv!10906 (_1!5756 (_1!5757 (h!13970 mapValue!5761)))) e!496656 tp_is_empty!3729 setRes!7034 tp!252333))))

(declare-fun condSetEmpty!7035 () Bool)

(assert (=> b!770976 (= condSetEmpty!7035 (= (_2!5757 (h!13970 mapValue!5761)) ((as const (Array Context!774 Bool)) false)))))

(assert (= (and mapNonEmpty!5753 condMapEmpty!5761) mapIsEmpty!5761))

(assert (= (and mapNonEmpty!5753 (not condMapEmpty!5761)) mapNonEmpty!5761))

(assert (= b!770976 b!770973))

(assert (= (and b!770976 condSetEmpty!7035) setIsEmpty!7034))

(assert (= (and b!770976 (not condSetEmpty!7035)) setNonEmpty!7035))

(assert (= setNonEmpty!7035 b!770972))

(assert (= (and mapNonEmpty!5761 ((_ is Cons!8569) mapValue!5761)) b!770976))

(assert (= b!770975 b!770971))

(assert (= (and b!770975 condSetEmpty!7034) setIsEmpty!7035))

(assert (= (and b!770975 (not condSetEmpty!7034)) setNonEmpty!7034))

(assert (= setNonEmpty!7034 b!770974))

(assert (= (and mapNonEmpty!5753 ((_ is Cons!8569) mapDefault!5761)) b!770975))

(declare-fun m!1039727 () Bool)

(assert (=> mapNonEmpty!5761 m!1039727))

(declare-fun m!1039729 () Bool)

(assert (=> setNonEmpty!7034 m!1039729))

(declare-fun m!1039731 () Bool)

(assert (=> b!770976 m!1039731))

(declare-fun m!1039733 () Bool)

(assert (=> setNonEmpty!7035 m!1039733))

(declare-fun m!1039735 () Bool)

(assert (=> b!770975 m!1039735))

(declare-fun e!496664 () Bool)

(assert (=> mapNonEmpty!5753 (= tp!252210 e!496664)))

(declare-fun setIsEmpty!7036 () Bool)

(declare-fun setRes!7036 () Bool)

(assert (=> setIsEmpty!7036 setRes!7036))

(declare-fun b!770977 () Bool)

(declare-fun e!496663 () Bool)

(declare-fun tp!252342 () Bool)

(assert (=> b!770977 (= e!496663 tp!252342)))

(declare-fun setElem!7036 () Context!774)

(declare-fun tp!252344 () Bool)

(declare-fun setNonEmpty!7036 () Bool)

(assert (=> setNonEmpty!7036 (= setRes!7036 (and tp!252344 (inv!10906 setElem!7036) e!496663))))

(declare-fun setRest!7036 () (InoxSet Context!774))

(assert (=> setNonEmpty!7036 (= (_2!5757 (h!13970 mapValue!5753)) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7036 true) setRest!7036))))

(declare-fun e!496662 () Bool)

(declare-fun tp!252343 () Bool)

(declare-fun b!770978 () Bool)

(assert (=> b!770978 (= e!496664 (and (inv!10906 (_1!5756 (_1!5757 (h!13970 mapValue!5753)))) e!496662 tp_is_empty!3729 setRes!7036 tp!252343))))

(declare-fun condSetEmpty!7036 () Bool)

(assert (=> b!770978 (= condSetEmpty!7036 (= (_2!5757 (h!13970 mapValue!5753)) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!770979 () Bool)

(declare-fun tp!252345 () Bool)

(assert (=> b!770979 (= e!496662 tp!252345)))

(assert (= b!770978 b!770979))

(assert (= (and b!770978 condSetEmpty!7036) setIsEmpty!7036))

(assert (= (and b!770978 (not condSetEmpty!7036)) setNonEmpty!7036))

(assert (= setNonEmpty!7036 b!770977))

(assert (= (and mapNonEmpty!5753 ((_ is Cons!8569) mapValue!5753)) b!770978))

(declare-fun m!1039737 () Bool)

(assert (=> setNonEmpty!7036 m!1039737))

(declare-fun m!1039739 () Bool)

(assert (=> b!770978 m!1039739))

(declare-fun tp!252346 () Bool)

(declare-fun e!496666 () Bool)

(declare-fun b!770980 () Bool)

(declare-fun tp!252348 () Bool)

(assert (=> b!770980 (= e!496666 (and (inv!10898 (left!6388 (c!130259 totalInput!472))) tp!252348 (inv!10898 (right!6718 (c!130259 totalInput!472))) tp!252346))))

(declare-fun b!770982 () Bool)

(declare-fun e!496665 () Bool)

(declare-fun tp!252347 () Bool)

(assert (=> b!770982 (= e!496665 tp!252347)))

(declare-fun b!770981 () Bool)

(assert (=> b!770981 (= e!496666 (and (inv!10907 (xs!5570 (c!130259 totalInput!472))) e!496665))))

(assert (=> b!770782 (= tp!252193 (and (inv!10898 (c!130259 totalInput!472)) e!496666))))

(assert (= (and b!770782 ((_ is Node!2883) (c!130259 totalInput!472))) b!770980))

(assert (= b!770981 b!770982))

(assert (= (and b!770782 ((_ is Leaf!4229) (c!130259 totalInput!472))) b!770981))

(declare-fun m!1039741 () Bool)

(assert (=> b!770980 m!1039741))

(declare-fun m!1039743 () Bool)

(assert (=> b!770980 m!1039743))

(declare-fun m!1039745 () Bool)

(assert (=> b!770981 m!1039745))

(assert (=> b!770782 m!1039543))

(declare-fun b!770983 () Bool)

(declare-fun tp!252351 () Bool)

(declare-fun tp!252349 () Bool)

(declare-fun e!496668 () Bool)

(assert (=> b!770983 (= e!496668 (and (inv!10898 (left!6388 (c!130259 (totalInput!2119 cacheFindLongestMatch!134)))) tp!252351 (inv!10898 (right!6718 (c!130259 (totalInput!2119 cacheFindLongestMatch!134)))) tp!252349))))

(declare-fun b!770985 () Bool)

(declare-fun e!496667 () Bool)

(declare-fun tp!252350 () Bool)

(assert (=> b!770985 (= e!496667 tp!252350)))

(declare-fun b!770984 () Bool)

(assert (=> b!770984 (= e!496668 (and (inv!10907 (xs!5570 (c!130259 (totalInput!2119 cacheFindLongestMatch!134)))) e!496667))))

(assert (=> b!770789 (= tp!252195 (and (inv!10898 (c!130259 (totalInput!2119 cacheFindLongestMatch!134))) e!496668))))

(assert (= (and b!770789 ((_ is Node!2883) (c!130259 (totalInput!2119 cacheFindLongestMatch!134)))) b!770983))

(assert (= b!770984 b!770985))

(assert (= (and b!770789 ((_ is Leaf!4229) (c!130259 (totalInput!2119 cacheFindLongestMatch!134)))) b!770984))

(declare-fun m!1039747 () Bool)

(assert (=> b!770983 m!1039747))

(declare-fun m!1039749 () Bool)

(assert (=> b!770983 m!1039749))

(declare-fun m!1039751 () Bool)

(assert (=> b!770984 m!1039751))

(assert (=> b!770789 m!1039533))

(declare-fun b!770996 () Bool)

(declare-fun b_free!24345 () Bool)

(declare-fun b_next!24409 () Bool)

(assert (=> b!770996 (= b_free!24345 (not b_next!24409))))

(declare-fun tp!252361 () Bool)

(declare-fun b_and!71825 () Bool)

(assert (=> b!770996 (= tp!252361 b_and!71825)))

(declare-fun b_free!24347 () Bool)

(declare-fun b_next!24411 () Bool)

(assert (=> b!770996 (= b_free!24347 (not b_next!24411))))

(declare-fun tp!252360 () Bool)

(declare-fun b_and!71827 () Bool)

(assert (=> b!770996 (= tp!252360 b_and!71827)))

(declare-fun e!496679 () Bool)

(assert (=> b!770996 (= e!496679 (and tp!252361 tp!252360))))

(declare-fun b!770995 () Bool)

(declare-fun tp!252362 () Bool)

(declare-fun e!496677 () Bool)

(assert (=> b!770995 (= e!496677 (and tp!252362 (inv!10893 (tag!1896 (h!13975 (t!91870 rulesArg!343)))) (inv!10903 (transformation!1634 (h!13975 (t!91870 rulesArg!343)))) e!496679))))

(declare-fun b!770994 () Bool)

(declare-fun e!496680 () Bool)

(declare-fun tp!252363 () Bool)

(assert (=> b!770994 (= e!496680 (and e!496677 tp!252363))))

(assert (=> b!770780 (= tp!252202 e!496680)))

(assert (= b!770995 b!770996))

(assert (= b!770994 b!770995))

(assert (= (and b!770780 ((_ is Cons!8574) (t!91870 rulesArg!343))) b!770994))

(declare-fun m!1039753 () Bool)

(assert (=> b!770995 m!1039753))

(declare-fun m!1039755 () Bool)

(assert (=> b!770995 m!1039755))

(declare-fun e!496681 () Bool)

(assert (=> b!770788 (= tp!252204 e!496681)))

(declare-fun b!770997 () Bool)

(declare-fun e!496682 () Bool)

(declare-fun tp!252368 () Bool)

(assert (=> b!770997 (= e!496682 tp!252368)))

(declare-fun setIsEmpty!7037 () Bool)

(declare-fun setRes!7037 () Bool)

(assert (=> setIsEmpty!7037 setRes!7037))

(declare-fun b!770998 () Bool)

(declare-fun tp!252367 () Bool)

(declare-fun tp!252365 () Bool)

(assert (=> b!770998 (= e!496681 (and tp!252365 (inv!10906 (_2!5758 (_1!5759 (h!13972 mapDefault!5753)))) e!496682 tp_is_empty!3729 setRes!7037 tp!252367))))

(declare-fun condSetEmpty!7037 () Bool)

(assert (=> b!770998 (= condSetEmpty!7037 (= (_2!5759 (h!13972 mapDefault!5753)) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!770999 () Bool)

(declare-fun e!496683 () Bool)

(declare-fun tp!252364 () Bool)

(assert (=> b!770999 (= e!496683 tp!252364)))

(declare-fun tp!252366 () Bool)

(declare-fun setNonEmpty!7037 () Bool)

(declare-fun setElem!7037 () Context!774)

(assert (=> setNonEmpty!7037 (= setRes!7037 (and tp!252366 (inv!10906 setElem!7037) e!496683))))

(declare-fun setRest!7037 () (InoxSet Context!774))

(assert (=> setNonEmpty!7037 (= (_2!5759 (h!13972 mapDefault!5753)) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7037 true) setRest!7037))))

(assert (= b!770998 b!770997))

(assert (= (and b!770998 condSetEmpty!7037) setIsEmpty!7037))

(assert (= (and b!770998 (not condSetEmpty!7037)) setNonEmpty!7037))

(assert (= setNonEmpty!7037 b!770999))

(assert (= (and b!770788 ((_ is Cons!8571) mapDefault!5753)) b!770998))

(declare-fun m!1039757 () Bool)

(assert (=> b!770998 m!1039757))

(declare-fun m!1039759 () Bool)

(assert (=> setNonEmpty!7037 m!1039759))

(declare-fun tp!252401 () Bool)

(declare-fun mapDefault!5764 () List!8585)

(declare-fun setRes!7043 () Bool)

(declare-fun e!496699 () Bool)

(declare-fun tp!252400 () Bool)

(declare-fun b!771014 () Bool)

(declare-fun e!496696 () Bool)

(assert (=> b!771014 (= e!496699 (and tp!252401 (inv!10906 (_2!5758 (_1!5759 (h!13972 mapDefault!5764)))) e!496696 tp_is_empty!3729 setRes!7043 tp!252400))))

(declare-fun condSetEmpty!7042 () Bool)

(assert (=> b!771014 (= condSetEmpty!7042 (= (_2!5759 (h!13972 mapDefault!5764)) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!771015 () Bool)

(declare-fun tp!252399 () Bool)

(assert (=> b!771015 (= e!496696 tp!252399)))

(declare-fun b!771016 () Bool)

(declare-fun e!496697 () Bool)

(declare-fun tp!252393 () Bool)

(assert (=> b!771016 (= e!496697 tp!252393)))

(declare-fun tp!252394 () Bool)

(declare-fun setElem!7042 () Context!774)

(declare-fun setRes!7042 () Bool)

(declare-fun e!496701 () Bool)

(declare-fun setNonEmpty!7042 () Bool)

(assert (=> setNonEmpty!7042 (= setRes!7042 (and tp!252394 (inv!10906 setElem!7042) e!496701))))

(declare-fun mapValue!5764 () List!8585)

(declare-fun setRest!7043 () (InoxSet Context!774))

(assert (=> setNonEmpty!7042 (= (_2!5759 (h!13972 mapValue!5764)) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7042 true) setRest!7043))))

(declare-fun setIsEmpty!7042 () Bool)

(assert (=> setIsEmpty!7042 setRes!7043))

(declare-fun setIsEmpty!7043 () Bool)

(assert (=> setIsEmpty!7043 setRes!7042))

(declare-fun mapNonEmpty!5764 () Bool)

(declare-fun mapRes!5764 () Bool)

(declare-fun tp!252396 () Bool)

(declare-fun e!496698 () Bool)

(assert (=> mapNonEmpty!5764 (= mapRes!5764 (and tp!252396 e!496698))))

(declare-fun mapRest!5764 () (Array (_ BitVec 32) List!8585))

(declare-fun mapKey!5764 () (_ BitVec 32))

(assert (=> mapNonEmpty!5764 (= mapRest!5755 (store mapRest!5764 mapKey!5764 mapValue!5764))))

(declare-fun b!771017 () Bool)

(declare-fun tp!252391 () Bool)

(assert (=> b!771017 (= e!496701 tp!252391)))

(declare-fun tp!252392 () Bool)

(declare-fun tp!252395 () Bool)

(declare-fun b!771018 () Bool)

(assert (=> b!771018 (= e!496698 (and tp!252395 (inv!10906 (_2!5758 (_1!5759 (h!13972 mapValue!5764)))) e!496697 tp_is_empty!3729 setRes!7042 tp!252392))))

(declare-fun condSetEmpty!7043 () Bool)

(assert (=> b!771018 (= condSetEmpty!7043 (= (_2!5759 (h!13972 mapValue!5764)) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!771019 () Bool)

(declare-fun e!496700 () Bool)

(declare-fun tp!252398 () Bool)

(assert (=> b!771019 (= e!496700 tp!252398)))

(declare-fun tp!252397 () Bool)

(declare-fun setElem!7043 () Context!774)

(declare-fun setNonEmpty!7043 () Bool)

(assert (=> setNonEmpty!7043 (= setRes!7043 (and tp!252397 (inv!10906 setElem!7043) e!496700))))

(declare-fun setRest!7042 () (InoxSet Context!774))

(assert (=> setNonEmpty!7043 (= (_2!5759 (h!13972 mapDefault!5764)) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7043 true) setRest!7042))))

(declare-fun mapIsEmpty!5764 () Bool)

(assert (=> mapIsEmpty!5764 mapRes!5764))

(declare-fun condMapEmpty!5764 () Bool)

(assert (=> mapNonEmpty!5754 (= condMapEmpty!5764 (= mapRest!5755 ((as const (Array (_ BitVec 32) List!8585)) mapDefault!5764)))))

(assert (=> mapNonEmpty!5754 (= tp!252197 (and e!496699 mapRes!5764))))

(assert (= (and mapNonEmpty!5754 condMapEmpty!5764) mapIsEmpty!5764))

(assert (= (and mapNonEmpty!5754 (not condMapEmpty!5764)) mapNonEmpty!5764))

(assert (= b!771018 b!771016))

(assert (= (and b!771018 condSetEmpty!7043) setIsEmpty!7043))

(assert (= (and b!771018 (not condSetEmpty!7043)) setNonEmpty!7042))

(assert (= setNonEmpty!7042 b!771017))

(assert (= (and mapNonEmpty!5764 ((_ is Cons!8571) mapValue!5764)) b!771018))

(assert (= b!771014 b!771015))

(assert (= (and b!771014 condSetEmpty!7042) setIsEmpty!7042))

(assert (= (and b!771014 (not condSetEmpty!7042)) setNonEmpty!7043))

(assert (= setNonEmpty!7043 b!771019))

(assert (= (and mapNonEmpty!5754 ((_ is Cons!8571) mapDefault!5764)) b!771014))

(declare-fun m!1039761 () Bool)

(assert (=> mapNonEmpty!5764 m!1039761))

(declare-fun m!1039763 () Bool)

(assert (=> b!771018 m!1039763))

(declare-fun m!1039765 () Bool)

(assert (=> setNonEmpty!7042 m!1039765))

(declare-fun m!1039767 () Bool)

(assert (=> b!771014 m!1039767))

(declare-fun m!1039769 () Bool)

(assert (=> setNonEmpty!7043 m!1039769))

(declare-fun e!496702 () Bool)

(assert (=> mapNonEmpty!5754 (= tp!252209 e!496702)))

(declare-fun b!771020 () Bool)

(declare-fun e!496703 () Bool)

(declare-fun tp!252406 () Bool)

(assert (=> b!771020 (= e!496703 tp!252406)))

(declare-fun setIsEmpty!7044 () Bool)

(declare-fun setRes!7044 () Bool)

(assert (=> setIsEmpty!7044 setRes!7044))

(declare-fun b!771021 () Bool)

(declare-fun tp!252403 () Bool)

(declare-fun tp!252405 () Bool)

(assert (=> b!771021 (= e!496702 (and tp!252403 (inv!10906 (_2!5758 (_1!5759 (h!13972 mapValue!5754)))) e!496703 tp_is_empty!3729 setRes!7044 tp!252405))))

(declare-fun condSetEmpty!7044 () Bool)

(assert (=> b!771021 (= condSetEmpty!7044 (= (_2!5759 (h!13972 mapValue!5754)) ((as const (Array Context!774 Bool)) false)))))

(declare-fun b!771022 () Bool)

(declare-fun e!496704 () Bool)

(declare-fun tp!252402 () Bool)

(assert (=> b!771022 (= e!496704 tp!252402)))

(declare-fun setNonEmpty!7044 () Bool)

(declare-fun setElem!7044 () Context!774)

(declare-fun tp!252404 () Bool)

(assert (=> setNonEmpty!7044 (= setRes!7044 (and tp!252404 (inv!10906 setElem!7044) e!496704))))

(declare-fun setRest!7044 () (InoxSet Context!774))

(assert (=> setNonEmpty!7044 (= (_2!5759 (h!13972 mapValue!5754)) ((_ map or) (store ((as const (Array Context!774 Bool)) false) setElem!7044 true) setRest!7044))))

(assert (= b!771021 b!771020))

(assert (= (and b!771021 condSetEmpty!7044) setIsEmpty!7044))

(assert (= (and b!771021 (not condSetEmpty!7044)) setNonEmpty!7044))

(assert (= setNonEmpty!7044 b!771022))

(assert (= (and mapNonEmpty!5754 ((_ is Cons!8571) mapValue!5754)) b!771021))

(declare-fun m!1039771 () Bool)

(assert (=> b!771021 m!1039771))

(declare-fun m!1039773 () Bool)

(assert (=> setNonEmpty!7044 m!1039773))

(check-sat (not b!770980) (not b!770937) b_and!71825 (not d!251602) (not b!770981) (not b!770817) (not b!770973) (not b!770825) (not b!770868) (not b!770938) (not b!770882) (not d!251592) (not b!770789) b_and!71813 (not b!770849) (not b!770974) (not b!770826) b_and!71823 (not b!770976) (not b!770955) (not b!770924) b_and!71827 (not b!770820) (not setNonEmpty!7027) (not b!770994) (not b!770925) (not b!770911) (not b_next!24397) (not d!251628) (not b!771022) (not setNonEmpty!7017) (not mapNonEmpty!5761) b_and!71809 (not b!770814) (not setNonEmpty!7036) (not setNonEmpty!7011) (not d!251632) (not setNonEmpty!7029) (not b_next!24411) (not b!770764) (not b!770936) (not b!771020) (not d!251610) (not b!770861) (not b!770995) (not b!771014) (not b!770811) (not b!770923) (not b_next!24409) (not b!770934) tp_is_empty!3729 (not b_next!24407) (not b!770913) (not b!771018) (not b!770893) (not d!251626) (not b!770997) (not b!770867) (not b!770982) (not b!770872) (not b!770942) (not d!251612) (not b!770914) (not b!770848) (not b!770845) (not b!770809) (not d!251624) (not b!770897) (not setNonEmpty!7015) (not b!770894) (not b_next!24395) (not b_next!24393) (not b!771015) (not b!770985) (not b!770971) (not b!770983) (not b!770856) (not b!770847) (not b!770879) (not b!770881) (not setNonEmpty!7042) (not setNonEmpty!7037) (not b!770984) (not d!251586) (not setNonEmpty!7035) (not b!770940) (not b!770972) (not b!770975) b_and!71815 (not b!770898) (not b!771017) (not b!770843) (not b!770896) b_and!71819 (not setNonEmpty!7012) (not d!251642) b_and!71811 (not b!770912) (not b!770864) (not setNonEmpty!7034) (not b!770909) (not setNonEmpty!7022) (not d!251600) (not setNonEmpty!7024) (not b!771019) (not b!770941) (not setNonEmpty!7044) (not b_next!24399) (not b!770870) (not b!771016) (not setNonEmpty!7023) (not d!251636) (not mapNonEmpty!5764) (not b!771021) (not b!770999) b_and!71821 (not d!251614) (not b!770978) (not mapNonEmpty!5758) b_and!71817 (not b!770979) (not b!770895) (not b!770977) (not b!770865) (not b!770891) (not b_next!24401) (not b!770939) (not b!770869) (not b!770998) (not setNonEmpty!7016) (not b!770880) (not b_next!24405) (not b!770935) (not b!770910) (not b!770810) (not b!770954) (not b!770858) (not setNonEmpty!7028) (not b!770782) (not b!770892) (not d!251638) (not b!770956) (not b_next!24403) (not setNonEmpty!7043))
(check-sat b_and!71825 b_and!71813 (not b_next!24397) b_and!71809 (not b_next!24411) b_and!71815 b_and!71819 b_and!71811 (not b_next!24399) b_and!71821 b_and!71817 (not b_next!24401) (not b_next!24405) (not b_next!24403) b_and!71823 b_and!71827 (not b_next!24409) (not b_next!24407) (not b_next!24393) (not b_next!24395))
