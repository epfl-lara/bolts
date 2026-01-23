; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69024 () Bool)

(assert start!69024)

(declare-fun b!738591 () Bool)

(declare-fun b_free!22961 () Bool)

(declare-fun b_next!23025 () Bool)

(assert (=> b!738591 (= b_free!22961 (not b_next!23025))))

(declare-fun tp!235748 () Bool)

(declare-fun b_and!68337 () Bool)

(assert (=> b!738591 (= tp!235748 b_and!68337)))

(declare-fun b_free!22963 () Bool)

(declare-fun b_next!23027 () Bool)

(assert (=> b!738591 (= b_free!22963 (not b_next!23027))))

(declare-fun tp!235761 () Bool)

(declare-fun b_and!68339 () Bool)

(assert (=> b!738591 (= tp!235761 b_and!68339)))

(declare-fun b!738570 () Bool)

(declare-fun b_free!22965 () Bool)

(declare-fun b_next!23029 () Bool)

(assert (=> b!738570 (= b_free!22965 (not b_next!23029))))

(declare-fun tp!235745 () Bool)

(declare-fun b_and!68341 () Bool)

(assert (=> b!738570 (= tp!235745 b_and!68341)))

(declare-fun b!738584 () Bool)

(declare-fun b_free!22967 () Bool)

(declare-fun b_next!23031 () Bool)

(assert (=> b!738584 (= b_free!22967 (not b_next!23031))))

(declare-fun tp!235755 () Bool)

(declare-fun b_and!68343 () Bool)

(assert (=> b!738584 (= tp!235755 b_and!68343)))

(declare-fun b!738571 () Bool)

(declare-fun b_free!22969 () Bool)

(declare-fun b_next!23033 () Bool)

(assert (=> b!738571 (= b_free!22969 (not b_next!23033))))

(declare-fun tp!235758 () Bool)

(declare-fun b_and!68345 () Bool)

(assert (=> b!738571 (= tp!235758 b_and!68345)))

(declare-fun b!738604 () Bool)

(declare-fun b_free!22971 () Bool)

(declare-fun b_next!23035 () Bool)

(assert (=> b!738604 (= b_free!22971 (not b_next!23035))))

(declare-fun tp!235751 () Bool)

(declare-fun b_and!68347 () Bool)

(assert (=> b!738604 (= tp!235751 b_and!68347)))

(declare-fun b!738579 () Bool)

(declare-fun b_free!22973 () Bool)

(declare-fun b_next!23037 () Bool)

(assert (=> b!738579 (= b_free!22973 (not b_next!23037))))

(declare-fun tp!235765 () Bool)

(declare-fun b_and!68349 () Bool)

(assert (=> b!738579 (= tp!235765 b_and!68349)))

(declare-fun b!738565 () Bool)

(declare-fun b_free!22975 () Bool)

(declare-fun b_next!23039 () Bool)

(assert (=> b!738565 (= b_free!22975 (not b_next!23039))))

(declare-fun tp!235746 () Bool)

(declare-fun b_and!68351 () Bool)

(assert (=> b!738565 (= tp!235746 b_and!68351)))

(declare-fun b!738564 () Bool)

(declare-fun e!473080 () Bool)

(declare-fun e!473070 () Bool)

(assert (=> b!738564 (= e!473080 e!473070)))

(declare-fun res!327483 () Bool)

(declare-fun e!473083 () Bool)

(assert (=> start!69024 (=> (not res!327483) (not e!473083))))

(declare-datatypes ((LexerInterface!1401 0))(
  ( (LexerInterfaceExt!1398 (__x!6421 Int)) (Lexer!1399) )
))
(declare-fun thiss!12529 () LexerInterface!1401)

(get-info :version)

(assert (=> start!69024 (= res!327483 ((_ is Lexer!1399) thiss!12529))))

(assert (=> start!69024 e!473083))

(declare-datatypes ((List!8262 0))(
  ( (Nil!8248) (Cons!8248 (h!13649 (_ BitVec 16)) (t!89610 List!8262)) )
))
(declare-datatypes ((TokenValue!1640 0))(
  ( (FloatLiteralValue!3280 (text!11925 List!8262)) (TokenValueExt!1639 (__x!6422 Int)) (Broken!8200 (value!51133 List!8262)) (Object!1653) (End!1640) (Def!1640) (Underscore!1640) (Match!1640) (Else!1640) (Error!1640) (Case!1640) (If!1640) (Extends!1640) (Abstract!1640) (Class!1640) (Val!1640) (DelimiterValue!3280 (del!1700 List!8262)) (KeywordValue!1646 (value!51134 List!8262)) (CommentValue!3280 (value!51135 List!8262)) (WhitespaceValue!3280 (value!51136 List!8262)) (IndentationValue!1640 (value!51137 List!8262)) (String!9937) (Int32!1640) (Broken!8201 (value!51138 List!8262)) (Boolean!1641) (Unit!12927) (OperatorValue!1643 (op!1700 List!8262)) (IdentifierValue!3280 (value!51139 List!8262)) (IdentifierValue!3281 (value!51140 List!8262)) (WhitespaceValue!3281 (value!51141 List!8262)) (True!3280) (False!3280) (Broken!8202 (value!51142 List!8262)) (Broken!8203 (value!51143 List!8262)) (True!3281) (RightBrace!1640) (RightBracket!1640) (Colon!1640) (Null!1640) (Comma!1640) (LeftBracket!1640) (False!3281) (LeftBrace!1640) (ImaginaryLiteralValue!1640 (text!11926 List!8262)) (StringLiteralValue!4920 (value!51144 List!8262)) (EOFValue!1640 (value!51145 List!8262)) (IdentValue!1640 (value!51146 List!8262)) (DelimiterValue!3281 (value!51147 List!8262)) (DedentValue!1640 (value!51148 List!8262)) (NewLineValue!1640 (value!51149 List!8262)) (IntegerValue!4920 (value!51150 (_ BitVec 32)) (text!11927 List!8262)) (IntegerValue!4921 (value!51151 Int) (text!11928 List!8262)) (Times!1640) (Or!1640) (Equal!1640) (Minus!1640) (Broken!8204 (value!51152 List!8262)) (And!1640) (Div!1640) (LessEqual!1640) (Mod!1640) (Concat!3581) (Not!1640) (Plus!1640) (SpaceValue!1640 (value!51153 List!8262)) (IntegerValue!4922 (value!51154 Int) (text!11929 List!8262)) (StringLiteralValue!4921 (text!11930 List!8262)) (FloatLiteralValue!3281 (text!11931 List!8262)) (BytesLiteralValue!1640 (value!51155 List!8262)) (CommentValue!3281 (value!51156 List!8262)) (StringLiteralValue!4922 (value!51157 List!8262)) (ErrorTokenValue!1640 (msg!1701 List!8262)) )
))
(declare-datatypes ((C!4484 0))(
  ( (C!4485 (val!2472 Int)) )
))
(declare-datatypes ((Regex!1941 0))(
  ( (ElementMatch!1941 (c!126244 C!4484)) (Concat!3582 (regOne!4394 Regex!1941) (regTwo!4394 Regex!1941)) (EmptyExpr!1941) (Star!1941 (reg!2270 Regex!1941)) (EmptyLang!1941) (Union!1941 (regOne!4395 Regex!1941) (regTwo!4395 Regex!1941)) )
))
(declare-datatypes ((List!8263 0))(
  ( (Nil!8249) (Cons!8249 (h!13650 C!4484) (t!89611 List!8263)) )
))
(declare-datatypes ((IArray!5637 0))(
  ( (IArray!5638 (innerList!2876 List!8263)) )
))
(declare-datatypes ((Conc!2818 0))(
  ( (Node!2818 (left!6271 Conc!2818) (right!6601 Conc!2818) (csize!5866 Int) (cheight!3029 Int)) (Leaf!4142 (xs!5483 IArray!5637) (csize!5867 Int)) (Empty!2818) )
))
(declare-datatypes ((BalanceConc!5648 0))(
  ( (BalanceConc!5649 (c!126245 Conc!2818)) )
))
(declare-datatypes ((String!9938 0))(
  ( (String!9939 (value!51158 String)) )
))
(declare-datatypes ((TokenValueInjection!3016 0))(
  ( (TokenValueInjection!3017 (toValue!2570 Int) (toChars!2429 Int)) )
))
(declare-datatypes ((Rule!2992 0))(
  ( (Rule!2993 (regex!1596 Regex!1941) (tag!1858 String!9938) (isSeparator!1596 Bool) (transformation!1596 TokenValueInjection!3016)) )
))
(declare-datatypes ((Token!2890 0))(
  ( (Token!2891 (value!51159 TokenValue!1640) (rule!2690 Rule!2992) (size!6699 Int) (originalCharacters!1870 List!8263)) )
))
(declare-datatypes ((List!8264 0))(
  ( (Nil!8250) (Cons!8250 (h!13651 Token!2890) (t!89612 List!8264)) )
))
(declare-datatypes ((IArray!5639 0))(
  ( (IArray!5640 (innerList!2877 List!8264)) )
))
(declare-datatypes ((Conc!2819 0))(
  ( (Node!2819 (left!6272 Conc!2819) (right!6602 Conc!2819) (csize!5868 Int) (cheight!3030 Int)) (Leaf!4143 (xs!5484 IArray!5639) (csize!5869 Int)) (Empty!2819) )
))
(declare-datatypes ((BalanceConc!5650 0))(
  ( (BalanceConc!5651 (c!126246 Conc!2819)) )
))
(declare-fun acc!372 () BalanceConc!5650)

(declare-fun e!473054 () Bool)

(declare-fun inv!10486 (BalanceConc!5650) Bool)

(assert (=> start!69024 (and (inv!10486 acc!372) e!473054)))

(declare-fun treated!50 () BalanceConc!5648)

(declare-fun e!473078 () Bool)

(declare-fun inv!10487 (BalanceConc!5648) Bool)

(assert (=> start!69024 (and (inv!10487 treated!50) e!473078)))

(declare-fun totalInput!378 () BalanceConc!5648)

(declare-fun e!473081 () Bool)

(assert (=> start!69024 (and (inv!10487 totalInput!378) e!473081)))

(declare-fun input!870 () BalanceConc!5648)

(declare-fun e!473075 () Bool)

(assert (=> start!69024 (and (inv!10487 input!870) e!473075)))

(declare-fun e!473062 () Bool)

(assert (=> start!69024 e!473062))

(assert (=> start!69024 true))

(declare-datatypes ((array!3745 0))(
  ( (array!3746 (arr!1682 (Array (_ BitVec 32) (_ BitVec 64))) (size!6700 (_ BitVec 32))) )
))
(declare-datatypes ((List!8265 0))(
  ( (Nil!8251) (Cons!8251 (h!13652 Regex!1941) (t!89613 List!8265)) )
))
(declare-datatypes ((Context!686 0))(
  ( (Context!687 (exprs!843 List!8265)) )
))
(declare-datatypes ((tuple2!9358 0))(
  ( (tuple2!9359 (_1!5348 Context!686) (_2!5348 C!4484)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9360 0))(
  ( (tuple2!9361 (_1!5349 tuple2!9358) (_2!5349 (InoxSet Context!686))) )
))
(declare-datatypes ((List!8266 0))(
  ( (Nil!8252) (Cons!8252 (h!13653 tuple2!9360) (t!89614 List!8266)) )
))
(declare-datatypes ((array!3747 0))(
  ( (array!3748 (arr!1683 (Array (_ BitVec 32) List!8266)) (size!6701 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2102 0))(
  ( (LongMapFixedSize!2103 (defaultEntry!1407 Int) (mask!2906 (_ BitVec 32)) (extraKeys!1298 (_ BitVec 32)) (zeroValue!1308 List!8266) (minValue!1308 List!8266) (_size!2211 (_ BitVec 32)) (_keys!1345 array!3745) (_values!1330 array!3747) (_vacant!1112 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4145 0))(
  ( (Cell!4146 (v!18373 LongMapFixedSize!2102)) )
))
(declare-datatypes ((MutLongMap!1051 0))(
  ( (LongMap!1051 (underlying!2285 Cell!4145)) (MutLongMapExt!1050 (__x!6423 Int)) )
))
(declare-datatypes ((Hashable!1023 0))(
  ( (HashableExt!1022 (__x!6424 Int)) )
))
(declare-datatypes ((Cell!4147 0))(
  ( (Cell!4148 (v!18374 MutLongMap!1051)) )
))
(declare-datatypes ((MutableMap!1023 0))(
  ( (MutableMapExt!1022 (__x!6425 Int)) (HashMap!1023 (underlying!2286 Cell!4147) (hashF!2931 Hashable!1023) (_size!2212 (_ BitVec 32)) (defaultValue!1174 Int)) )
))
(declare-datatypes ((CacheUp!566 0))(
  ( (CacheUp!567 (cache!1410 MutableMap!1023)) )
))
(declare-fun cacheUp!502 () CacheUp!566)

(declare-fun e!473077 () Bool)

(declare-fun inv!10488 (CacheUp!566) Bool)

(assert (=> start!69024 (and (inv!10488 cacheUp!502) e!473077)))

(declare-datatypes ((tuple3!902 0))(
  ( (tuple3!903 (_1!5350 Regex!1941) (_2!5350 Context!686) (_3!669 C!4484)) )
))
(declare-datatypes ((tuple2!9362 0))(
  ( (tuple2!9363 (_1!5351 tuple3!902) (_2!5351 (InoxSet Context!686))) )
))
(declare-datatypes ((List!8267 0))(
  ( (Nil!8253) (Cons!8253 (h!13654 tuple2!9362) (t!89615 List!8267)) )
))
(declare-datatypes ((array!3749 0))(
  ( (array!3750 (arr!1684 (Array (_ BitVec 32) List!8267)) (size!6702 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2104 0))(
  ( (LongMapFixedSize!2105 (defaultEntry!1408 Int) (mask!2907 (_ BitVec 32)) (extraKeys!1299 (_ BitVec 32)) (zeroValue!1309 List!8267) (minValue!1309 List!8267) (_size!2213 (_ BitVec 32)) (_keys!1346 array!3745) (_values!1331 array!3749) (_vacant!1113 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4149 0))(
  ( (Cell!4150 (v!18375 LongMapFixedSize!2104)) )
))
(declare-datatypes ((MutLongMap!1052 0))(
  ( (LongMap!1052 (underlying!2287 Cell!4149)) (MutLongMapExt!1051 (__x!6426 Int)) )
))
(declare-datatypes ((Cell!4151 0))(
  ( (Cell!4152 (v!18376 MutLongMap!1052)) )
))
(declare-datatypes ((Hashable!1024 0))(
  ( (HashableExt!1023 (__x!6427 Int)) )
))
(declare-datatypes ((MutableMap!1024 0))(
  ( (MutableMapExt!1023 (__x!6428 Int)) (HashMap!1024 (underlying!2288 Cell!4151) (hashF!2932 Hashable!1024) (_size!2214 (_ BitVec 32)) (defaultValue!1175 Int)) )
))
(declare-datatypes ((CacheDown!574 0))(
  ( (CacheDown!575 (cache!1411 MutableMap!1024)) )
))
(declare-fun cacheDown!515 () CacheDown!574)

(declare-fun e!473063 () Bool)

(declare-fun inv!10489 (CacheDown!574) Bool)

(assert (=> start!69024 (and (inv!10489 cacheDown!515) e!473063)))

(declare-datatypes ((Hashable!1025 0))(
  ( (HashableExt!1024 (__x!6429 Int)) )
))
(declare-datatypes ((tuple2!9364 0))(
  ( (tuple2!9365 (_1!5352 (InoxSet Context!686)) (_2!5352 Int)) )
))
(declare-datatypes ((tuple2!9366 0))(
  ( (tuple2!9367 (_1!5353 tuple2!9364) (_2!5353 Int)) )
))
(declare-datatypes ((List!8268 0))(
  ( (Nil!8254) (Cons!8254 (h!13655 tuple2!9366) (t!89616 List!8268)) )
))
(declare-datatypes ((array!3751 0))(
  ( (array!3752 (arr!1685 (Array (_ BitVec 32) List!8268)) (size!6703 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2106 0))(
  ( (LongMapFixedSize!2107 (defaultEntry!1409 Int) (mask!2908 (_ BitVec 32)) (extraKeys!1300 (_ BitVec 32)) (zeroValue!1310 List!8268) (minValue!1310 List!8268) (_size!2215 (_ BitVec 32)) (_keys!1347 array!3745) (_values!1332 array!3751) (_vacant!1114 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4153 0))(
  ( (Cell!4154 (v!18377 LongMapFixedSize!2106)) )
))
(declare-datatypes ((MutLongMap!1053 0))(
  ( (LongMap!1053 (underlying!2289 Cell!4153)) (MutLongMapExt!1052 (__x!6430 Int)) )
))
(declare-datatypes ((Cell!4155 0))(
  ( (Cell!4156 (v!18378 MutLongMap!1053)) )
))
(declare-datatypes ((MutableMap!1025 0))(
  ( (MutableMapExt!1024 (__x!6431 Int)) (HashMap!1025 (underlying!2290 Cell!4155) (hashF!2933 Hashable!1025) (_size!2216 (_ BitVec 32)) (defaultValue!1176 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!232 0))(
  ( (CacheFindLongestMatch!233 (cache!1412 MutableMap!1025) (totalInput!1994 BalanceConc!5648)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!232)

(declare-fun e!473074 () Bool)

(declare-fun inv!10490 (CacheFindLongestMatch!232) Bool)

(assert (=> start!69024 (and (inv!10490 cacheFindLongestMatch!74) e!473074)))

(declare-fun tp!235749 () Bool)

(declare-fun e!473071 () Bool)

(declare-fun tp!235762 () Bool)

(declare-fun e!473057 () Bool)

(declare-fun array_inv!1228 (array!3745) Bool)

(declare-fun array_inv!1229 (array!3751) Bool)

(assert (=> b!738565 (= e!473071 (and tp!235746 tp!235762 tp!235749 (array_inv!1228 (_keys!1347 (v!18377 (underlying!2289 (v!18378 (underlying!2290 (cache!1412 cacheFindLongestMatch!74))))))) (array_inv!1229 (_values!1332 (v!18377 (underlying!2289 (v!18378 (underlying!2290 (cache!1412 cacheFindLongestMatch!74))))))) e!473057))))

(declare-fun b!738566 () Bool)

(declare-fun e!473061 () Bool)

(declare-fun e!473068 () Bool)

(assert (=> b!738566 (= e!473061 e!473068)))

(declare-fun res!327484 () Bool)

(assert (=> b!738566 (=> (not res!327484) (not e!473068))))

(declare-datatypes ((tuple2!9368 0))(
  ( (tuple2!9369 (_1!5354 BalanceConc!5650) (_2!5354 BalanceConc!5648)) )
))
(declare-fun lt!302162 () tuple2!9368)

(declare-fun lt!302163 () tuple2!9368)

(declare-fun list!3341 (BalanceConc!5650) List!8264)

(declare-fun ++!2159 (BalanceConc!5650 BalanceConc!5650) BalanceConc!5650)

(assert (=> b!738566 (= res!327484 (= (list!3341 (_1!5354 lt!302163)) (list!3341 (++!2159 acc!372 (_1!5354 lt!302162)))))))

(declare-datatypes ((List!8269 0))(
  ( (Nil!8255) (Cons!8255 (h!13656 Rule!2992) (t!89617 List!8269)) )
))
(declare-fun rules!1486 () List!8269)

(declare-fun lexRec!231 (LexerInterface!1401 List!8269 BalanceConc!5648) tuple2!9368)

(assert (=> b!738566 (= lt!302162 (lexRec!231 thiss!12529 rules!1486 input!870))))

(assert (=> b!738566 (= lt!302163 (lexRec!231 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!738567 () Bool)

(declare-fun tp!235768 () Bool)

(declare-fun inv!10491 (Conc!2819) Bool)

(assert (=> b!738567 (= e!473054 (and (inv!10491 (c!126246 acc!372)) tp!235768))))

(declare-fun b!738568 () Bool)

(declare-fun lt!302170 () List!8263)

(declare-fun lt!302166 () List!8263)

(declare-fun isSuffix!191 (List!8263 List!8263) Bool)

(assert (=> b!738568 (= e!473068 (not (isSuffix!191 lt!302170 lt!302166)))))

(declare-fun lt!302165 () List!8263)

(assert (=> b!738568 (isSuffix!191 lt!302170 lt!302165)))

(declare-datatypes ((Unit!12928 0))(
  ( (Unit!12929) )
))
(declare-fun lt!302172 () Unit!12928)

(declare-fun lt!302164 () List!8263)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!191 (List!8263 List!8263) Unit!12928)

(assert (=> b!738568 (= lt!302172 (lemmaConcatTwoListThenFSndIsSuffix!191 lt!302164 lt!302170))))

(declare-fun b!738569 () Bool)

(declare-fun e!473082 () Bool)

(declare-fun tp!235769 () Bool)

(declare-fun mapRes!4932 () Bool)

(assert (=> b!738569 (= e!473082 (and tp!235769 mapRes!4932))))

(declare-fun condMapEmpty!4932 () Bool)

(declare-fun mapDefault!4933 () List!8267)

(assert (=> b!738569 (= condMapEmpty!4932 (= (arr!1684 (_values!1331 (v!18375 (underlying!2287 (v!18376 (underlying!2288 (cache!1411 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!8267)) mapDefault!4933)))))

(declare-fun tp!235766 () Bool)

(declare-fun tp!235756 () Bool)

(declare-fun e!473059 () Bool)

(declare-fun array_inv!1230 (array!3747) Bool)

(assert (=> b!738570 (= e!473070 (and tp!235745 tp!235766 tp!235756 (array_inv!1228 (_keys!1345 (v!18373 (underlying!2285 (v!18374 (underlying!2286 (cache!1410 cacheUp!502))))))) (array_inv!1230 (_values!1330 (v!18373 (underlying!2285 (v!18374 (underlying!2286 (cache!1410 cacheUp!502))))))) e!473059))))

(declare-fun tp!235752 () Bool)

(declare-fun e!473060 () Bool)

(declare-fun tp!235747 () Bool)

(declare-fun array_inv!1231 (array!3749) Bool)

(assert (=> b!738571 (= e!473060 (and tp!235758 tp!235747 tp!235752 (array_inv!1228 (_keys!1346 (v!18375 (underlying!2287 (v!18376 (underlying!2288 (cache!1411 cacheDown!515))))))) (array_inv!1231 (_values!1331 (v!18375 (underlying!2287 (v!18376 (underlying!2288 (cache!1411 cacheDown!515))))))) e!473082))))

(declare-fun b!738572 () Bool)

(declare-fun e!473058 () Bool)

(assert (=> b!738572 (= e!473058 e!473071)))

(declare-fun b!738573 () Bool)

(declare-fun e!473084 () Bool)

(assert (=> b!738573 (= e!473084 e!473061)))

(declare-fun res!327481 () Bool)

(assert (=> b!738573 (=> (not res!327481) (not e!473061))))

(declare-fun lt!302167 () tuple2!9368)

(assert (=> b!738573 (= res!327481 (= (list!3341 (_1!5354 lt!302167)) (list!3341 acc!372)))))

(assert (=> b!738573 (= lt!302167 (lexRec!231 thiss!12529 rules!1486 treated!50))))

(declare-fun mapNonEmpty!4931 () Bool)

(declare-fun mapRes!4933 () Bool)

(declare-fun tp!235743 () Bool)

(declare-fun tp!235759 () Bool)

(assert (=> mapNonEmpty!4931 (= mapRes!4933 (and tp!235743 tp!235759))))

(declare-fun mapRest!4933 () (Array (_ BitVec 32) List!8268))

(declare-fun mapKey!4931 () (_ BitVec 32))

(declare-fun mapValue!4932 () List!8268)

(assert (=> mapNonEmpty!4931 (= (arr!1685 (_values!1332 (v!18377 (underlying!2289 (v!18378 (underlying!2290 (cache!1412 cacheFindLongestMatch!74))))))) (store mapRest!4933 mapKey!4931 mapValue!4932))))

(declare-fun b!738574 () Bool)

(declare-fun e!473088 () Bool)

(assert (=> b!738574 (= e!473088 e!473060)))

(declare-fun mapIsEmpty!4931 () Bool)

(assert (=> mapIsEmpty!4931 mapRes!4932))

(declare-fun b!738575 () Bool)

(declare-fun e!473086 () Bool)

(declare-fun e!473079 () Bool)

(declare-fun lt!302171 () MutLongMap!1052)

(assert (=> b!738575 (= e!473086 (and e!473079 ((_ is LongMap!1052) lt!302171)))))

(assert (=> b!738575 (= lt!302171 (v!18376 (underlying!2288 (cache!1411 cacheDown!515))))))

(declare-fun b!738576 () Bool)

(declare-fun e!473055 () Bool)

(assert (=> b!738576 (= e!473055 e!473080)))

(declare-fun b!738577 () Bool)

(declare-fun e!473069 () Bool)

(assert (=> b!738577 (= e!473077 e!473069)))

(declare-fun b!738578 () Bool)

(declare-fun res!327477 () Bool)

(assert (=> b!738578 (=> (not res!327477) (not e!473083))))

(declare-fun rulesInvariant!1311 (LexerInterface!1401 List!8269) Bool)

(assert (=> b!738578 (= res!327477 (rulesInvariant!1311 thiss!12529 rules!1486))))

(declare-fun e!473052 () Bool)

(declare-fun e!473053 () Bool)

(assert (=> b!738579 (= e!473052 (and e!473053 tp!235765))))

(declare-fun b!738580 () Bool)

(declare-fun e!473067 () Bool)

(declare-fun tp!235760 () Bool)

(assert (=> b!738580 (= e!473062 (and e!473067 tp!235760))))

(declare-fun b!738581 () Bool)

(declare-fun tp!235744 () Bool)

(assert (=> b!738581 (= e!473057 (and tp!235744 mapRes!4933))))

(declare-fun condMapEmpty!4931 () Bool)

(declare-fun mapDefault!4932 () List!8268)

(assert (=> b!738581 (= condMapEmpty!4931 (= (arr!1685 (_values!1332 (v!18377 (underlying!2289 (v!18378 (underlying!2290 (cache!1412 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!8268)) mapDefault!4932)))))

(declare-fun b!738582 () Bool)

(declare-fun tp!235753 () Bool)

(declare-fun inv!10492 (Conc!2818) Bool)

(assert (=> b!738582 (= e!473078 (and (inv!10492 (c!126245 treated!50)) tp!235753))))

(declare-fun b!738583 () Bool)

(declare-fun tp!235754 () Bool)

(declare-fun mapRes!4931 () Bool)

(assert (=> b!738583 (= e!473059 (and tp!235754 mapRes!4931))))

(declare-fun condMapEmpty!4933 () Bool)

(declare-fun mapDefault!4931 () List!8266)

(assert (=> b!738583 (= condMapEmpty!4933 (= (arr!1683 (_values!1330 (v!18373 (underlying!2285 (v!18374 (underlying!2286 (cache!1410 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!8266)) mapDefault!4931)))))

(declare-fun e!473066 () Bool)

(assert (=> b!738584 (= e!473066 (and e!473086 tp!235755))))

(declare-fun b!738585 () Bool)

(declare-fun res!327478 () Bool)

(assert (=> b!738585 (=> (not res!327478) (not e!473061))))

(declare-fun isEmpty!5090 (List!8263) Bool)

(declare-fun list!3342 (BalanceConc!5648) List!8263)

(assert (=> b!738585 (= res!327478 (isEmpty!5090 (list!3342 (_2!5354 lt!302167))))))

(declare-fun e!473064 () Bool)

(declare-fun b!738586 () Bool)

(declare-fun tp!235771 () Bool)

(declare-fun inv!10485 (String!9938) Bool)

(declare-fun inv!10493 (TokenValueInjection!3016) Bool)

(assert (=> b!738586 (= e!473067 (and tp!235771 (inv!10485 (tag!1858 (h!13656 rules!1486))) (inv!10493 (transformation!1596 (h!13656 rules!1486))) e!473064))))

(declare-fun mapNonEmpty!4932 () Bool)

(declare-fun tp!235770 () Bool)

(declare-fun tp!235764 () Bool)

(assert (=> mapNonEmpty!4932 (= mapRes!4932 (and tp!235770 tp!235764))))

(declare-fun mapKey!4933 () (_ BitVec 32))

(declare-fun mapValue!4933 () List!8267)

(declare-fun mapRest!4931 () (Array (_ BitVec 32) List!8267))

(assert (=> mapNonEmpty!4932 (= (arr!1684 (_values!1331 (v!18375 (underlying!2287 (v!18376 (underlying!2288 (cache!1411 cacheDown!515))))))) (store mapRest!4931 mapKey!4933 mapValue!4933))))

(declare-fun b!738587 () Bool)

(declare-fun res!327480 () Bool)

(assert (=> b!738587 (=> (not res!327480) (not e!473068))))

(assert (=> b!738587 (= res!327480 (= (list!3342 (_2!5354 lt!302163)) (list!3342 (_2!5354 lt!302162))))))

(declare-fun b!738588 () Bool)

(declare-fun e!473076 () Bool)

(declare-fun tp!235750 () Bool)

(assert (=> b!738588 (= e!473076 (and (inv!10492 (c!126245 (totalInput!1994 cacheFindLongestMatch!74))) tp!235750))))

(declare-fun b!738589 () Bool)

(declare-fun res!327476 () Bool)

(assert (=> b!738589 (=> (not res!327476) (not e!473068))))

(assert (=> b!738589 (= res!327476 (= (totalInput!1994 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!738590 () Bool)

(declare-fun res!327479 () Bool)

(assert (=> b!738590 (=> (not res!327479) (not e!473068))))

(declare-fun valid!848 (CacheUp!566) Bool)

(assert (=> b!738590 (= res!327479 (valid!848 cacheUp!502))))

(assert (=> b!738591 (= e!473064 (and tp!235748 tp!235761))))

(declare-fun b!738592 () Bool)

(assert (=> b!738592 (= e!473074 (and e!473052 (inv!10487 (totalInput!1994 cacheFindLongestMatch!74)) e!473076))))

(declare-fun b!738593 () Bool)

(assert (=> b!738593 (= e!473083 e!473084)))

(declare-fun res!327487 () Bool)

(assert (=> b!738593 (=> (not res!327487) (not e!473084))))

(assert (=> b!738593 (= res!327487 (= lt!302166 lt!302165))))

(declare-fun ++!2160 (List!8263 List!8263) List!8263)

(assert (=> b!738593 (= lt!302165 (++!2160 lt!302164 lt!302170))))

(assert (=> b!738593 (= lt!302166 (list!3342 totalInput!378))))

(assert (=> b!738593 (= lt!302170 (list!3342 input!870))))

(assert (=> b!738593 (= lt!302164 (list!3342 treated!50))))

(declare-fun b!738594 () Bool)

(declare-fun e!473085 () Bool)

(declare-fun lt!302168 () MutLongMap!1053)

(assert (=> b!738594 (= e!473053 (and e!473085 ((_ is LongMap!1053) lt!302168)))))

(assert (=> b!738594 (= lt!302168 (v!18378 (underlying!2290 (cache!1412 cacheFindLongestMatch!74))))))

(declare-fun b!738595 () Bool)

(declare-fun res!327486 () Bool)

(assert (=> b!738595 (=> (not res!327486) (not e!473083))))

(declare-fun isEmpty!5091 (List!8269) Bool)

(assert (=> b!738595 (= res!327486 (not (isEmpty!5091 rules!1486)))))

(declare-fun mapNonEmpty!4933 () Bool)

(declare-fun tp!235757 () Bool)

(declare-fun tp!235763 () Bool)

(assert (=> mapNonEmpty!4933 (= mapRes!4931 (and tp!235757 tp!235763))))

(declare-fun mapRest!4932 () (Array (_ BitVec 32) List!8266))

(declare-fun mapValue!4931 () List!8266)

(declare-fun mapKey!4932 () (_ BitVec 32))

(assert (=> mapNonEmpty!4933 (= (arr!1683 (_values!1330 (v!18373 (underlying!2285 (v!18374 (underlying!2286 (cache!1410 cacheUp!502))))))) (store mapRest!4932 mapKey!4932 mapValue!4931))))

(declare-fun b!738596 () Bool)

(declare-fun res!327482 () Bool)

(assert (=> b!738596 (=> (not res!327482) (not e!473068))))

(declare-fun valid!849 (CacheDown!574) Bool)

(assert (=> b!738596 (= res!327482 (valid!849 cacheDown!515))))

(declare-fun b!738597 () Bool)

(declare-fun tp!235772 () Bool)

(assert (=> b!738597 (= e!473081 (and (inv!10492 (c!126245 totalInput!378)) tp!235772))))

(declare-fun b!738598 () Bool)

(declare-fun tp!235767 () Bool)

(assert (=> b!738598 (= e!473075 (and (inv!10492 (c!126245 input!870)) tp!235767))))

(declare-fun b!738599 () Bool)

(declare-fun res!327485 () Bool)

(assert (=> b!738599 (=> (not res!327485) (not e!473068))))

(declare-fun valid!850 (CacheFindLongestMatch!232) Bool)

(assert (=> b!738599 (= res!327485 (valid!850 cacheFindLongestMatch!74))))

(declare-fun b!738600 () Bool)

(assert (=> b!738600 (= e!473079 e!473088)))

(declare-fun b!738601 () Bool)

(assert (=> b!738601 (= e!473063 e!473066)))

(declare-fun b!738602 () Bool)

(declare-fun e!473072 () Bool)

(declare-fun lt!302169 () MutLongMap!1051)

(assert (=> b!738602 (= e!473072 (and e!473055 ((_ is LongMap!1051) lt!302169)))))

(assert (=> b!738602 (= lt!302169 (v!18374 (underlying!2286 (cache!1410 cacheUp!502))))))

(declare-fun b!738603 () Bool)

(assert (=> b!738603 (= e!473085 e!473058)))

(assert (=> b!738604 (= e!473069 (and e!473072 tp!235751))))

(declare-fun mapIsEmpty!4932 () Bool)

(assert (=> mapIsEmpty!4932 mapRes!4931))

(declare-fun mapIsEmpty!4933 () Bool)

(assert (=> mapIsEmpty!4933 mapRes!4933))

(assert (= (and start!69024 res!327483) b!738595))

(assert (= (and b!738595 res!327486) b!738578))

(assert (= (and b!738578 res!327477) b!738593))

(assert (= (and b!738593 res!327487) b!738573))

(assert (= (and b!738573 res!327481) b!738585))

(assert (= (and b!738585 res!327478) b!738566))

(assert (= (and b!738566 res!327484) b!738587))

(assert (= (and b!738587 res!327480) b!738590))

(assert (= (and b!738590 res!327479) b!738596))

(assert (= (and b!738596 res!327482) b!738599))

(assert (= (and b!738599 res!327485) b!738589))

(assert (= (and b!738589 res!327476) b!738568))

(assert (= start!69024 b!738567))

(assert (= start!69024 b!738582))

(assert (= start!69024 b!738597))

(assert (= start!69024 b!738598))

(assert (= b!738586 b!738591))

(assert (= b!738580 b!738586))

(assert (= (and start!69024 ((_ is Cons!8255) rules!1486)) b!738580))

(assert (= (and b!738583 condMapEmpty!4933) mapIsEmpty!4932))

(assert (= (and b!738583 (not condMapEmpty!4933)) mapNonEmpty!4933))

(assert (= b!738570 b!738583))

(assert (= b!738564 b!738570))

(assert (= b!738576 b!738564))

(assert (= (and b!738602 ((_ is LongMap!1051) (v!18374 (underlying!2286 (cache!1410 cacheUp!502))))) b!738576))

(assert (= b!738604 b!738602))

(assert (= (and b!738577 ((_ is HashMap!1023) (cache!1410 cacheUp!502))) b!738604))

(assert (= start!69024 b!738577))

(assert (= (and b!738569 condMapEmpty!4932) mapIsEmpty!4931))

(assert (= (and b!738569 (not condMapEmpty!4932)) mapNonEmpty!4932))

(assert (= b!738571 b!738569))

(assert (= b!738574 b!738571))

(assert (= b!738600 b!738574))

(assert (= (and b!738575 ((_ is LongMap!1052) (v!18376 (underlying!2288 (cache!1411 cacheDown!515))))) b!738600))

(assert (= b!738584 b!738575))

(assert (= (and b!738601 ((_ is HashMap!1024) (cache!1411 cacheDown!515))) b!738584))

(assert (= start!69024 b!738601))

(assert (= (and b!738581 condMapEmpty!4931) mapIsEmpty!4933))

(assert (= (and b!738581 (not condMapEmpty!4931)) mapNonEmpty!4931))

(assert (= b!738565 b!738581))

(assert (= b!738572 b!738565))

(assert (= b!738603 b!738572))

(assert (= (and b!738594 ((_ is LongMap!1053) (v!18378 (underlying!2290 (cache!1412 cacheFindLongestMatch!74))))) b!738603))

(assert (= b!738579 b!738594))

(assert (= (and b!738592 ((_ is HashMap!1025) (cache!1412 cacheFindLongestMatch!74))) b!738579))

(assert (= b!738592 b!738588))

(assert (= start!69024 b!738592))

(declare-fun m!998206 () Bool)

(assert (=> b!738593 m!998206))

(declare-fun m!998208 () Bool)

(assert (=> b!738593 m!998208))

(declare-fun m!998210 () Bool)

(assert (=> b!738593 m!998210))

(declare-fun m!998212 () Bool)

(assert (=> b!738593 m!998212))

(declare-fun m!998214 () Bool)

(assert (=> b!738566 m!998214))

(declare-fun m!998216 () Bool)

(assert (=> b!738566 m!998216))

(assert (=> b!738566 m!998214))

(declare-fun m!998218 () Bool)

(assert (=> b!738566 m!998218))

(declare-fun m!998220 () Bool)

(assert (=> b!738566 m!998220))

(declare-fun m!998222 () Bool)

(assert (=> b!738566 m!998222))

(declare-fun m!998224 () Bool)

(assert (=> b!738599 m!998224))

(declare-fun m!998226 () Bool)

(assert (=> b!738568 m!998226))

(declare-fun m!998228 () Bool)

(assert (=> b!738568 m!998228))

(declare-fun m!998230 () Bool)

(assert (=> b!738568 m!998230))

(declare-fun m!998232 () Bool)

(assert (=> b!738573 m!998232))

(declare-fun m!998234 () Bool)

(assert (=> b!738573 m!998234))

(declare-fun m!998236 () Bool)

(assert (=> b!738573 m!998236))

(declare-fun m!998238 () Bool)

(assert (=> b!738598 m!998238))

(declare-fun m!998240 () Bool)

(assert (=> b!738588 m!998240))

(declare-fun m!998242 () Bool)

(assert (=> b!738592 m!998242))

(declare-fun m!998244 () Bool)

(assert (=> b!738586 m!998244))

(declare-fun m!998246 () Bool)

(assert (=> b!738586 m!998246))

(declare-fun m!998248 () Bool)

(assert (=> b!738587 m!998248))

(declare-fun m!998250 () Bool)

(assert (=> b!738587 m!998250))

(declare-fun m!998252 () Bool)

(assert (=> b!738590 m!998252))

(declare-fun m!998254 () Bool)

(assert (=> b!738595 m!998254))

(declare-fun m!998256 () Bool)

(assert (=> mapNonEmpty!4933 m!998256))

(declare-fun m!998258 () Bool)

(assert (=> start!69024 m!998258))

(declare-fun m!998260 () Bool)

(assert (=> start!69024 m!998260))

(declare-fun m!998262 () Bool)

(assert (=> start!69024 m!998262))

(declare-fun m!998264 () Bool)

(assert (=> start!69024 m!998264))

(declare-fun m!998266 () Bool)

(assert (=> start!69024 m!998266))

(declare-fun m!998268 () Bool)

(assert (=> start!69024 m!998268))

(declare-fun m!998270 () Bool)

(assert (=> start!69024 m!998270))

(declare-fun m!998272 () Bool)

(assert (=> b!738567 m!998272))

(declare-fun m!998274 () Bool)

(assert (=> mapNonEmpty!4932 m!998274))

(declare-fun m!998276 () Bool)

(assert (=> b!738571 m!998276))

(declare-fun m!998278 () Bool)

(assert (=> b!738571 m!998278))

(declare-fun m!998280 () Bool)

(assert (=> b!738597 m!998280))

(declare-fun m!998282 () Bool)

(assert (=> b!738570 m!998282))

(declare-fun m!998284 () Bool)

(assert (=> b!738570 m!998284))

(declare-fun m!998286 () Bool)

(assert (=> b!738565 m!998286))

(declare-fun m!998288 () Bool)

(assert (=> b!738565 m!998288))

(declare-fun m!998290 () Bool)

(assert (=> b!738596 m!998290))

(declare-fun m!998292 () Bool)

(assert (=> b!738582 m!998292))

(declare-fun m!998294 () Bool)

(assert (=> b!738578 m!998294))

(declare-fun m!998296 () Bool)

(assert (=> mapNonEmpty!4931 m!998296))

(declare-fun m!998298 () Bool)

(assert (=> b!738585 m!998298))

(assert (=> b!738585 m!998298))

(declare-fun m!998300 () Bool)

(assert (=> b!738585 m!998300))

(check-sat (not b!738599) (not b_next!23039) (not b!738580) b_and!68339 (not b_next!23031) (not b!738583) b_and!68349 (not b!738592) (not b!738595) b_and!68351 (not mapNonEmpty!4932) (not b!738586) (not b!738568) (not b_next!23033) (not b_next!23037) (not b!738571) (not b!738578) b_and!68345 (not b!738598) (not b!738590) (not b!738573) (not b!738581) b_and!68343 (not b_next!23035) (not b_next!23029) (not start!69024) (not mapNonEmpty!4933) (not b!738593) (not b!738587) b_and!68347 (not b!738569) b_and!68341 (not mapNonEmpty!4931) (not b!738567) (not b!738582) b_and!68337 (not b!738565) (not b!738597) (not b_next!23025) (not b!738570) (not b_next!23027) (not b!738596) (not b!738585) (not b!738588) (not b!738566))
(check-sat b_and!68351 (not b_next!23033) b_and!68343 (not b_next!23039) b_and!68347 b_and!68339 b_and!68341 (not b_next!23031) b_and!68337 b_and!68349 (not b_next!23025) (not b_next!23027) (not b_next!23037) b_and!68345 (not b_next!23035) (not b_next!23029))
