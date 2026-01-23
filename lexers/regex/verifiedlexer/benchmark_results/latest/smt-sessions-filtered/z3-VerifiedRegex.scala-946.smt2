; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48254 () Bool)

(assert start!48254)

(declare-fun b!526264 () Bool)

(declare-fun b_free!13897 () Bool)

(declare-fun b_next!13913 () Bool)

(assert (=> b!526264 (= b_free!13897 (not b_next!13913))))

(declare-fun tp!166086 () Bool)

(declare-fun b_and!51391 () Bool)

(assert (=> b!526264 (= tp!166086 b_and!51391)))

(declare-fun b!526273 () Bool)

(declare-fun b_free!13899 () Bool)

(declare-fun b_next!13915 () Bool)

(assert (=> b!526273 (= b_free!13899 (not b_next!13915))))

(declare-fun tp!166102 () Bool)

(declare-fun b_and!51393 () Bool)

(assert (=> b!526273 (= tp!166102 b_and!51393)))

(declare-fun b!526259 () Bool)

(declare-fun b_free!13901 () Bool)

(declare-fun b_next!13917 () Bool)

(assert (=> b!526259 (= b_free!13901 (not b_next!13917))))

(declare-fun tp!166100 () Bool)

(declare-fun b_and!51395 () Bool)

(assert (=> b!526259 (= tp!166100 b_and!51395)))

(declare-fun b!526251 () Bool)

(declare-fun b_free!13903 () Bool)

(declare-fun b_next!13919 () Bool)

(assert (=> b!526251 (= b_free!13903 (not b_next!13919))))

(declare-fun tp!166098 () Bool)

(declare-fun b_and!51397 () Bool)

(assert (=> b!526251 (= tp!166098 b_and!51397)))

(declare-fun b!526279 () Bool)

(declare-fun b_free!13905 () Bool)

(declare-fun b_next!13921 () Bool)

(assert (=> b!526279 (= b_free!13905 (not b_next!13921))))

(declare-fun tp!166088 () Bool)

(declare-fun b_and!51399 () Bool)

(assert (=> b!526279 (= tp!166088 b_and!51399)))

(declare-fun b!526278 () Bool)

(declare-fun b_free!13907 () Bool)

(declare-fun b_next!13923 () Bool)

(assert (=> b!526278 (= b_free!13907 (not b_next!13923))))

(declare-fun tp!166087 () Bool)

(declare-fun b_and!51401 () Bool)

(assert (=> b!526278 (= tp!166087 b_and!51401)))

(declare-fun b_free!13909 () Bool)

(declare-fun b_next!13925 () Bool)

(assert (=> b!526278 (= b_free!13909 (not b_next!13925))))

(declare-fun tp!166093 () Bool)

(declare-fun b_and!51403 () Bool)

(assert (=> b!526278 (= tp!166093 b_and!51403)))

(declare-fun b!526272 () Bool)

(declare-fun b_free!13911 () Bool)

(declare-fun b_next!13927 () Bool)

(assert (=> b!526272 (= b_free!13911 (not b_next!13927))))

(declare-fun tp!166104 () Bool)

(declare-fun b_and!51405 () Bool)

(assert (=> b!526272 (= tp!166104 b_and!51405)))

(declare-fun b!526246 () Bool)

(declare-fun e!316140 () Bool)

(declare-fun e!316159 () Bool)

(declare-fun tp!166090 () Bool)

(assert (=> b!526246 (= e!316140 (and e!316159 tp!166090))))

(declare-fun b!526247 () Bool)

(declare-fun e!316154 () Bool)

(declare-fun e!316135 () Bool)

(assert (=> b!526247 (= e!316154 e!316135)))

(declare-fun res!222703 () Bool)

(assert (=> b!526247 (=> (not res!222703) (not e!316135))))

(declare-datatypes ((C!3348 0))(
  ( (C!3349 (val!1900 Int)) )
))
(declare-datatypes ((List!4926 0))(
  ( (Nil!4916) (Cons!4916 (h!10317 C!3348) (t!73536 List!4926)) )
))
(declare-fun lt!217753 () List!4926)

(declare-fun lt!217751 () List!4926)

(declare-fun ++!1376 (List!4926 List!4926) List!4926)

(assert (=> b!526247 (= res!222703 (= lt!217753 (++!1376 lt!217751 lt!217753)))))

(declare-datatypes ((IArray!3197 0))(
  ( (IArray!3198 (innerList!1656 List!4926)) )
))
(declare-datatypes ((Conc!1598 0))(
  ( (Node!1598 (left!4206 Conc!1598) (right!4536 Conc!1598) (csize!3426 Int) (cheight!1809 Int)) (Leaf!2545 (xs!4235 IArray!3197) (csize!3427 Int)) (Empty!1598) )
))
(declare-datatypes ((BalanceConc!3204 0))(
  ( (BalanceConc!3205 (c!101059 Conc!1598)) )
))
(declare-fun input!747 () BalanceConc!3204)

(declare-fun list!2061 (BalanceConc!3204) List!4926)

(assert (=> b!526247 (= lt!217753 (list!2061 input!747))))

(assert (=> b!526247 (= lt!217751 (list!2061 (BalanceConc!3205 Empty!1598)))))

(declare-fun b!526248 () Bool)

(declare-fun e!316138 () Bool)

(declare-fun e!316148 () Bool)

(declare-datatypes ((Regex!1213 0))(
  ( (ElementMatch!1213 (c!101060 C!3348)) (Concat!2125 (regOne!2938 Regex!1213) (regTwo!2938 Regex!1213)) (EmptyExpr!1213) (Star!1213 (reg!1542 Regex!1213)) (EmptyLang!1213) (Union!1213 (regOne!2939 Regex!1213) (regTwo!2939 Regex!1213)) )
))
(declare-datatypes ((List!4927 0))(
  ( (Nil!4917) (Cons!4917 (h!10318 Regex!1213) (t!73537 List!4927)) )
))
(declare-datatypes ((Context!302 0))(
  ( (Context!303 (exprs!651 List!4927)) )
))
(declare-datatypes ((tuple2!6062 0))(
  ( (tuple2!6063 (_1!3268 Context!302) (_2!3268 C!3348)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!6064 0))(
  ( (tuple2!6065 (_1!3269 tuple2!6062) (_2!3269 (InoxSet Context!302))) )
))
(declare-datatypes ((List!4928 0))(
  ( (Nil!4918) (Cons!4918 (h!10319 tuple2!6064) (t!73538 List!4928)) )
))
(declare-datatypes ((array!2221 0))(
  ( (array!2222 (arr!1011 (Array (_ BitVec 32) List!4928)) (size!4014 (_ BitVec 32))) )
))
(declare-datatypes ((array!2223 0))(
  ( (array!2224 (arr!1012 (Array (_ BitVec 32) (_ BitVec 64))) (size!4015 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1148 0))(
  ( (LongMapFixedSize!1149 (defaultEntry!930 Int) (mask!2052 (_ BitVec 32)) (extraKeys!821 (_ BitVec 32)) (zeroValue!831 List!4928) (minValue!831 List!4928) (_size!1257 (_ BitVec 32)) (_keys!868 array!2223) (_values!853 array!2221) (_vacant!635 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2237 0))(
  ( (Cell!2238 (v!15992 LongMapFixedSize!1148)) )
))
(declare-datatypes ((MutLongMap!574 0))(
  ( (LongMap!574 (underlying!1327 Cell!2237)) (MutLongMapExt!573 (__x!3635 Int)) )
))
(declare-fun lt!217749 () MutLongMap!574)

(get-info :version)

(assert (=> b!526248 (= e!316138 (and e!316148 ((_ is LongMap!574) lt!217749)))))

(declare-datatypes ((Hashable!546 0))(
  ( (HashableExt!545 (__x!3636 Int)) )
))
(declare-datatypes ((Cell!2239 0))(
  ( (Cell!2240 (v!15993 MutLongMap!574)) )
))
(declare-datatypes ((MutableMap!546 0))(
  ( (MutableMapExt!545 (__x!3637 Int)) (HashMap!546 (underlying!1328 Cell!2239) (hashF!2454 Hashable!546) (_size!1258 (_ BitVec 32)) (defaultValue!697 Int)) )
))
(declare-datatypes ((CacheUp!222 0))(
  ( (CacheUp!223 (cache!933 MutableMap!546)) )
))
(declare-fun cacheUp!449 () CacheUp!222)

(assert (=> b!526248 (= lt!217749 (v!15993 (underlying!1328 (cache!933 cacheUp!449))))))

(declare-fun b!526249 () Bool)

(declare-fun e!316158 () Bool)

(declare-fun e!316130 () Bool)

(assert (=> b!526249 (= e!316158 e!316130)))

(declare-fun mapIsEmpty!2256 () Bool)

(declare-fun mapRes!2257 () Bool)

(assert (=> mapIsEmpty!2256 mapRes!2257))

(declare-fun b!526250 () Bool)

(declare-fun e!316133 () Bool)

(declare-fun tp!166099 () Bool)

(declare-fun mapRes!2258 () Bool)

(assert (=> b!526250 (= e!316133 (and tp!166099 mapRes!2258))))

(declare-fun condMapEmpty!2256 () Bool)

(declare-datatypes ((tuple3!384 0))(
  ( (tuple3!385 (_1!3270 Regex!1213) (_2!3270 Context!302) (_3!237 C!3348)) )
))
(declare-datatypes ((tuple2!6066 0))(
  ( (tuple2!6067 (_1!3271 tuple3!384) (_2!3271 (InoxSet Context!302))) )
))
(declare-datatypes ((List!4929 0))(
  ( (Nil!4919) (Cons!4919 (h!10320 tuple2!6066) (t!73539 List!4929)) )
))
(declare-datatypes ((array!2225 0))(
  ( (array!2226 (arr!1013 (Array (_ BitVec 32) List!4929)) (size!4016 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1150 0))(
  ( (LongMapFixedSize!1151 (defaultEntry!931 Int) (mask!2053 (_ BitVec 32)) (extraKeys!822 (_ BitVec 32)) (zeroValue!832 List!4929) (minValue!832 List!4929) (_size!1259 (_ BitVec 32)) (_keys!869 array!2223) (_values!854 array!2225) (_vacant!636 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2241 0))(
  ( (Cell!2242 (v!15994 LongMapFixedSize!1150)) )
))
(declare-datatypes ((MutLongMap!575 0))(
  ( (LongMap!575 (underlying!1329 Cell!2241)) (MutLongMapExt!574 (__x!3638 Int)) )
))
(declare-datatypes ((Cell!2243 0))(
  ( (Cell!2244 (v!15995 MutLongMap!575)) )
))
(declare-datatypes ((Hashable!547 0))(
  ( (HashableExt!546 (__x!3639 Int)) )
))
(declare-datatypes ((MutableMap!547 0))(
  ( (MutableMapExt!546 (__x!3640 Int)) (HashMap!547 (underlying!1330 Cell!2243) (hashF!2455 Hashable!547) (_size!1260 (_ BitVec 32)) (defaultValue!698 Int)) )
))
(declare-datatypes ((CacheDown!208 0))(
  ( (CacheDown!209 (cache!934 MutableMap!547)) )
))
(declare-fun cacheDown!462 () CacheDown!208)

(declare-fun mapDefault!2258 () List!4929)

(assert (=> b!526250 (= condMapEmpty!2256 (= (arr!1013 (_values!854 (v!15994 (underlying!1329 (v!15995 (underlying!1330 (cache!934 cacheDown!462))))))) ((as const (Array (_ BitVec 32) List!4929)) mapDefault!2258)))))

(declare-fun e!316139 () Bool)

(declare-fun tp!166107 () Bool)

(declare-fun tp!166089 () Bool)

(declare-fun array_inv!737 (array!2223) Bool)

(declare-fun array_inv!738 (array!2225) Bool)

(assert (=> b!526251 (= e!316139 (and tp!166098 tp!166107 tp!166089 (array_inv!737 (_keys!869 (v!15994 (underlying!1329 (v!15995 (underlying!1330 (cache!934 cacheDown!462))))))) (array_inv!738 (_values!854 (v!15994 (underlying!1329 (v!15995 (underlying!1330 (cache!934 cacheDown!462))))))) e!316133))))

(declare-fun res!222700 () Bool)

(assert (=> start!48254 (=> (not res!222700) (not e!316154))))

(declare-datatypes ((LexerInterface!774 0))(
  ( (LexerInterfaceExt!771 (__x!3641 Int)) (Lexer!772) )
))
(declare-fun thiss!12147 () LexerInterface!774)

(assert (=> start!48254 (= res!222700 ((_ is Lexer!772) thiss!12147))))

(assert (=> start!48254 e!316154))

(declare-fun e!316155 () Bool)

(declare-fun inv!6184 (BalanceConc!3204) Bool)

(assert (=> start!48254 (and (inv!6184 input!747) e!316155)))

(declare-fun e!316150 () Bool)

(declare-fun inv!6185 (CacheDown!208) Bool)

(assert (=> start!48254 (and (inv!6185 cacheDown!462) e!316150)))

(assert (=> start!48254 true))

(declare-datatypes ((tuple3!386 0))(
  ( (tuple3!387 (_1!3272 (InoxSet Context!302)) (_2!3272 Int) (_3!238 Int)) )
))
(declare-datatypes ((Hashable!548 0))(
  ( (HashableExt!547 (__x!3642 Int)) )
))
(declare-datatypes ((tuple2!6068 0))(
  ( (tuple2!6069 (_1!3273 tuple3!386) (_2!3273 Int)) )
))
(declare-datatypes ((List!4930 0))(
  ( (Nil!4920) (Cons!4920 (h!10321 tuple2!6068) (t!73540 List!4930)) )
))
(declare-datatypes ((array!2227 0))(
  ( (array!2228 (arr!1014 (Array (_ BitVec 32) List!4930)) (size!4017 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1152 0))(
  ( (LongMapFixedSize!1153 (defaultEntry!932 Int) (mask!2054 (_ BitVec 32)) (extraKeys!823 (_ BitVec 32)) (zeroValue!833 List!4930) (minValue!833 List!4930) (_size!1261 (_ BitVec 32)) (_keys!870 array!2223) (_values!855 array!2227) (_vacant!637 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2245 0))(
  ( (Cell!2246 (v!15996 LongMapFixedSize!1152)) )
))
(declare-datatypes ((MutLongMap!576 0))(
  ( (LongMap!576 (underlying!1331 Cell!2245)) (MutLongMapExt!575 (__x!3643 Int)) )
))
(declare-datatypes ((Cell!2247 0))(
  ( (Cell!2248 (v!15997 MutLongMap!576)) )
))
(declare-datatypes ((MutableMap!548 0))(
  ( (MutableMapExt!547 (__x!3644 Int)) (HashMap!548 (underlying!1332 Cell!2247) (hashF!2456 Hashable!548) (_size!1262 (_ BitVec 32)) (defaultValue!699 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!162 0))(
  ( (CacheFurthestNullable!163 (cache!935 MutableMap!548) (totalInput!1743 BalanceConc!3204)) )
))
(declare-fun cacheFurthestNullable!56 () CacheFurthestNullable!162)

(declare-fun e!316147 () Bool)

(declare-fun inv!6186 (CacheFurthestNullable!162) Bool)

(assert (=> start!48254 (and (inv!6186 cacheFurthestNullable!56) e!316147)))

(declare-fun e!316149 () Bool)

(declare-fun inv!6187 (CacheUp!222) Bool)

(assert (=> start!48254 (and (inv!6187 cacheUp!449) e!316149)))

(assert (=> start!48254 e!316140))

(declare-fun mapNonEmpty!2256 () Bool)

(declare-fun tp!166108 () Bool)

(declare-fun tp!166092 () Bool)

(assert (=> mapNonEmpty!2256 (= mapRes!2257 (and tp!166108 tp!166092))))

(declare-fun mapValue!2257 () List!4928)

(declare-fun mapKey!2257 () (_ BitVec 32))

(declare-fun mapRest!2257 () (Array (_ BitVec 32) List!4928))

(assert (=> mapNonEmpty!2256 (= (arr!1011 (_values!853 (v!15992 (underlying!1327 (v!15993 (underlying!1328 (cache!933 cacheUp!449))))))) (store mapRest!2257 mapKey!2257 mapValue!2257))))

(declare-fun b!526252 () Bool)

(declare-fun res!222708 () Bool)

(assert (=> b!526252 (=> (not res!222708) (not e!316154))))

(assert (=> b!526252 (= res!222708 (= (totalInput!1743 cacheFurthestNullable!56) input!747))))

(declare-fun e!316156 () Bool)

(declare-datatypes ((List!4931 0))(
  ( (Nil!4921) (Cons!4921 (h!10322 (_ BitVec 16)) (t!73541 List!4931)) )
))
(declare-datatypes ((TokenValue!912 0))(
  ( (FloatLiteralValue!1824 (text!6829 List!4931)) (TokenValueExt!911 (__x!3645 Int)) (Broken!4560 (value!30136 List!4931)) (Object!921) (End!912) (Def!912) (Underscore!912) (Match!912) (Else!912) (Error!912) (Case!912) (If!912) (Extends!912) (Abstract!912) (Class!912) (Val!912) (DelimiterValue!1824 (del!972 List!4931)) (KeywordValue!918 (value!30137 List!4931)) (CommentValue!1824 (value!30138 List!4931)) (WhitespaceValue!1824 (value!30139 List!4931)) (IndentationValue!912 (value!30140 List!4931)) (String!6285) (Int32!912) (Broken!4561 (value!30141 List!4931)) (Boolean!913) (Unit!8799) (OperatorValue!915 (op!972 List!4931)) (IdentifierValue!1824 (value!30142 List!4931)) (IdentifierValue!1825 (value!30143 List!4931)) (WhitespaceValue!1825 (value!30144 List!4931)) (True!1824) (False!1824) (Broken!4562 (value!30145 List!4931)) (Broken!4563 (value!30146 List!4931)) (True!1825) (RightBrace!912) (RightBracket!912) (Colon!912) (Null!912) (Comma!912) (LeftBracket!912) (False!1825) (LeftBrace!912) (ImaginaryLiteralValue!912 (text!6830 List!4931)) (StringLiteralValue!2736 (value!30147 List!4931)) (EOFValue!912 (value!30148 List!4931)) (IdentValue!912 (value!30149 List!4931)) (DelimiterValue!1825 (value!30150 List!4931)) (DedentValue!912 (value!30151 List!4931)) (NewLineValue!912 (value!30152 List!4931)) (IntegerValue!2736 (value!30153 (_ BitVec 32)) (text!6831 List!4931)) (IntegerValue!2737 (value!30154 Int) (text!6832 List!4931)) (Times!912) (Or!912) (Equal!912) (Minus!912) (Broken!4564 (value!30155 List!4931)) (And!912) (Div!912) (LessEqual!912) (Mod!912) (Concat!2126) (Not!912) (Plus!912) (SpaceValue!912 (value!30156 List!4931)) (IntegerValue!2738 (value!30157 Int) (text!6833 List!4931)) (StringLiteralValue!2737 (text!6834 List!4931)) (FloatLiteralValue!1825 (text!6835 List!4931)) (BytesLiteralValue!912 (value!30158 List!4931)) (CommentValue!1825 (value!30159 List!4931)) (StringLiteralValue!2738 (value!30160 List!4931)) (ErrorTokenValue!912 (msg!973 List!4931)) )
))
(declare-datatypes ((TokenValueInjection!1592 0))(
  ( (TokenValueInjection!1593 (toValue!1723 Int) (toChars!1582 Int)) )
))
(declare-datatypes ((String!6286 0))(
  ( (String!6287 (value!30161 String)) )
))
(declare-datatypes ((Rule!1576 0))(
  ( (Rule!1577 (regex!888 Regex!1213) (tag!1150 String!6286) (isSeparator!888 Bool) (transformation!888 TokenValueInjection!1592)) )
))
(declare-datatypes ((List!4932 0))(
  ( (Nil!4922) (Cons!4922 (h!10323 Rule!1576) (t!73542 List!4932)) )
))
(declare-fun rules!1345 () List!4932)

(declare-fun tp!166110 () Bool)

(declare-fun b!526253 () Bool)

(declare-fun inv!6181 (String!6286) Bool)

(declare-fun inv!6188 (TokenValueInjection!1592) Bool)

(assert (=> b!526253 (= e!316159 (and tp!166110 (inv!6181 (tag!1150 (h!10323 rules!1345))) (inv!6188 (transformation!888 (h!10323 rules!1345))) e!316156))))

(declare-fun b!526254 () Bool)

(declare-fun e!316141 () Bool)

(assert (=> b!526254 (= e!316141 e!316158)))

(declare-fun mapNonEmpty!2257 () Bool)

(declare-fun tp!166105 () Bool)

(declare-fun tp!166084 () Bool)

(assert (=> mapNonEmpty!2257 (= mapRes!2258 (and tp!166105 tp!166084))))

(declare-fun mapValue!2256 () List!4929)

(declare-fun mapKey!2256 () (_ BitVec 32))

(declare-fun mapRest!2256 () (Array (_ BitVec 32) List!4929))

(assert (=> mapNonEmpty!2257 (= (arr!1013 (_values!854 (v!15994 (underlying!1329 (v!15995 (underlying!1330 (cache!934 cacheDown!462))))))) (store mapRest!2256 mapKey!2256 mapValue!2256))))

(declare-fun b!526255 () Bool)

(declare-fun res!222706 () Bool)

(assert (=> b!526255 (=> (not res!222706) (not e!316154))))

(declare-fun valid!558 (CacheUp!222) Bool)

(assert (=> b!526255 (= res!222706 (valid!558 cacheUp!449))))

(declare-fun b!526256 () Bool)

(declare-fun e!316136 () Bool)

(declare-fun lt!217748 () MutLongMap!576)

(assert (=> b!526256 (= e!316136 (and e!316141 ((_ is LongMap!576) lt!217748)))))

(assert (=> b!526256 (= lt!217748 (v!15997 (underlying!1332 (cache!935 cacheFurthestNullable!56))))))

(declare-fun b!526257 () Bool)

(declare-fun e!316143 () Bool)

(assert (=> b!526257 (= e!316135 e!316143)))

(declare-fun res!222705 () Bool)

(assert (=> b!526257 (=> (not res!222705) (not e!316143))))

(declare-datatypes ((Token!1514 0))(
  ( (Token!1515 (value!30162 TokenValue!912) (rule!1589 Rule!1576) (size!4018 Int) (originalCharacters!928 List!4926)) )
))
(declare-datatypes ((List!4933 0))(
  ( (Nil!4923) (Cons!4923 (h!10324 Token!1514) (t!73543 List!4933)) )
))
(declare-datatypes ((IArray!3199 0))(
  ( (IArray!3200 (innerList!1657 List!4933)) )
))
(declare-datatypes ((Conc!1599 0))(
  ( (Node!1599 (left!4207 Conc!1599) (right!4537 Conc!1599) (csize!3428 Int) (cheight!1810 Int)) (Leaf!2546 (xs!4236 IArray!3199) (csize!3429 Int)) (Empty!1599) )
))
(declare-datatypes ((BalanceConc!3206 0))(
  ( (BalanceConc!3207 (c!101061 Conc!1599)) )
))
(declare-datatypes ((tuple2!6070 0))(
  ( (tuple2!6071 (_1!3274 BalanceConc!3206) (_2!3274 BalanceConc!3204)) )
))
(declare-fun lt!217747 () tuple2!6070)

(declare-fun list!2062 (BalanceConc!3206) List!4933)

(assert (=> b!526257 (= res!222705 (= (list!2062 (_1!3274 lt!217747)) (list!2062 (BalanceConc!3207 Empty!1599))))))

(declare-fun lexRec!142 (LexerInterface!774 List!4932 BalanceConc!3204) tuple2!6070)

(assert (=> b!526257 (= lt!217747 (lexRec!142 thiss!12147 rules!1345 (BalanceConc!3205 Empty!1598)))))

(declare-fun mapIsEmpty!2257 () Bool)

(declare-fun mapRes!2256 () Bool)

(assert (=> mapIsEmpty!2257 mapRes!2256))

(declare-fun b!526258 () Bool)

(declare-fun e!316126 () Bool)

(assert (=> b!526258 (= e!316126 false)))

(declare-fun lt!217750 () List!4926)

(declare-fun lt!217746 () tuple2!6070)

(assert (=> b!526258 (= lt!217750 (list!2061 (_2!3274 lt!217746)))))

(declare-fun e!316151 () Bool)

(assert (=> b!526259 (= e!316151 (and e!316138 tp!166100))))

(declare-fun b!526260 () Bool)

(declare-fun e!316157 () Bool)

(declare-fun e!316132 () Bool)

(assert (=> b!526260 (= e!316147 (and e!316157 (inv!6184 (totalInput!1743 cacheFurthestNullable!56)) e!316132))))

(declare-fun b!526261 () Bool)

(declare-fun e!316142 () Bool)

(assert (=> b!526261 (= e!316148 e!316142)))

(declare-fun b!526262 () Bool)

(declare-fun e!316134 () Bool)

(assert (=> b!526262 (= e!316150 e!316134)))

(declare-fun b!526263 () Bool)

(assert (=> b!526263 (= e!316149 e!316151)))

(assert (=> b!526264 (= e!316157 (and e!316136 tp!166086))))

(declare-fun b!526265 () Bool)

(declare-fun res!222704 () Bool)

(assert (=> b!526265 (=> (not res!222704) (not e!316154))))

(declare-fun valid!559 (CacheFurthestNullable!162) Bool)

(assert (=> b!526265 (= res!222704 (valid!559 cacheFurthestNullable!56))))

(declare-fun b!526266 () Bool)

(declare-fun res!222701 () Bool)

(assert (=> b!526266 (=> (not res!222701) (not e!316154))))

(declare-fun rulesInvariant!738 (LexerInterface!774 List!4932) Bool)

(assert (=> b!526266 (= res!222701 (rulesInvariant!738 thiss!12147 rules!1345))))

(declare-fun b!526267 () Bool)

(declare-fun e!316127 () Bool)

(declare-fun tp!166085 () Bool)

(assert (=> b!526267 (= e!316127 (and tp!166085 mapRes!2256))))

(declare-fun condMapEmpty!2257 () Bool)

(declare-fun mapDefault!2257 () List!4930)

(assert (=> b!526267 (= condMapEmpty!2257 (= (arr!1014 (_values!855 (v!15996 (underlying!1331 (v!15997 (underlying!1332 (cache!935 cacheFurthestNullable!56))))))) ((as const (Array (_ BitVec 32) List!4930)) mapDefault!2257)))))

(declare-fun b!526268 () Bool)

(declare-fun res!222710 () Bool)

(assert (=> b!526268 (=> (not res!222710) (not e!316143))))

(declare-fun isEmpty!3603 (List!4926) Bool)

(assert (=> b!526268 (= res!222710 (isEmpty!3603 (list!2061 (_2!3274 lt!217747))))))

(declare-fun b!526269 () Bool)

(declare-fun res!222709 () Bool)

(assert (=> b!526269 (=> (not res!222709) (not e!316154))))

(declare-fun valid!560 (CacheDown!208) Bool)

(assert (=> b!526269 (= res!222709 (valid!560 cacheDown!462))))

(declare-fun b!526270 () Bool)

(assert (=> b!526270 (= e!316143 e!316126)))

(declare-fun res!222702 () Bool)

(assert (=> b!526270 (=> (not res!222702) (not e!316126))))

(declare-fun ++!1377 (BalanceConc!3206 BalanceConc!3206) BalanceConc!3206)

(assert (=> b!526270 (= res!222702 (= (list!2062 (_1!3274 lt!217746)) (list!2062 (++!1377 (BalanceConc!3207 Empty!1599) (_1!3274 lt!217746)))))))

(assert (=> b!526270 (= lt!217746 (lexRec!142 thiss!12147 rules!1345 input!747))))

(declare-fun b!526271 () Bool)

(declare-fun e!316144 () Bool)

(declare-fun e!316131 () Bool)

(declare-fun lt!217752 () MutLongMap!575)

(assert (=> b!526271 (= e!316144 (and e!316131 ((_ is LongMap!575) lt!217752)))))

(assert (=> b!526271 (= lt!217752 (v!15995 (underlying!1330 (cache!934 cacheDown!462))))))

(declare-fun tp!166091 () Bool)

(declare-fun tp!166097 () Bool)

(declare-fun array_inv!739 (array!2227) Bool)

(assert (=> b!526272 (= e!316130 (and tp!166104 tp!166097 tp!166091 (array_inv!737 (_keys!870 (v!15996 (underlying!1331 (v!15997 (underlying!1332 (cache!935 cacheFurthestNullable!56))))))) (array_inv!739 (_values!855 (v!15996 (underlying!1331 (v!15997 (underlying!1332 (cache!935 cacheFurthestNullable!56))))))) e!316127))))

(declare-fun mapIsEmpty!2258 () Bool)

(assert (=> mapIsEmpty!2258 mapRes!2258))

(declare-fun tp!166095 () Bool)

(declare-fun e!316137 () Bool)

(declare-fun e!316146 () Bool)

(declare-fun tp!166106 () Bool)

(declare-fun array_inv!740 (array!2221) Bool)

(assert (=> b!526273 (= e!316146 (and tp!166102 tp!166106 tp!166095 (array_inv!737 (_keys!868 (v!15992 (underlying!1327 (v!15993 (underlying!1328 (cache!933 cacheUp!449))))))) (array_inv!740 (_values!853 (v!15992 (underlying!1327 (v!15993 (underlying!1328 (cache!933 cacheUp!449))))))) e!316137))))

(declare-fun b!526274 () Bool)

(declare-fun tp!166094 () Bool)

(declare-fun inv!6189 (Conc!1598) Bool)

(assert (=> b!526274 (= e!316155 (and (inv!6189 (c!101059 input!747)) tp!166094))))

(declare-fun b!526275 () Bool)

(declare-fun tp!166109 () Bool)

(assert (=> b!526275 (= e!316132 (and (inv!6189 (c!101059 (totalInput!1743 cacheFurthestNullable!56))) tp!166109))))

(declare-fun b!526276 () Bool)

(declare-fun e!316153 () Bool)

(assert (=> b!526276 (= e!316131 e!316153)))

(declare-fun b!526277 () Bool)

(assert (=> b!526277 (= e!316142 e!316146)))

(assert (=> b!526278 (= e!316156 (and tp!166087 tp!166093))))

(assert (=> b!526279 (= e!316134 (and e!316144 tp!166088))))

(declare-fun b!526280 () Bool)

(assert (=> b!526280 (= e!316153 e!316139)))

(declare-fun mapNonEmpty!2258 () Bool)

(declare-fun tp!166103 () Bool)

(declare-fun tp!166101 () Bool)

(assert (=> mapNonEmpty!2258 (= mapRes!2256 (and tp!166103 tp!166101))))

(declare-fun mapRest!2258 () (Array (_ BitVec 32) List!4930))

(declare-fun mapKey!2258 () (_ BitVec 32))

(declare-fun mapValue!2258 () List!4930)

(assert (=> mapNonEmpty!2258 (= (arr!1014 (_values!855 (v!15996 (underlying!1331 (v!15997 (underlying!1332 (cache!935 cacheFurthestNullable!56))))))) (store mapRest!2258 mapKey!2258 mapValue!2258))))

(declare-fun b!526281 () Bool)

(declare-fun tp!166096 () Bool)

(assert (=> b!526281 (= e!316137 (and tp!166096 mapRes!2257))))

(declare-fun condMapEmpty!2258 () Bool)

(declare-fun mapDefault!2256 () List!4928)

(assert (=> b!526281 (= condMapEmpty!2258 (= (arr!1011 (_values!853 (v!15992 (underlying!1327 (v!15993 (underlying!1328 (cache!933 cacheUp!449))))))) ((as const (Array (_ BitVec 32) List!4928)) mapDefault!2256)))))

(declare-fun b!526282 () Bool)

(declare-fun res!222707 () Bool)

(assert (=> b!526282 (=> (not res!222707) (not e!316154))))

(declare-fun isEmpty!3604 (List!4932) Bool)

(assert (=> b!526282 (= res!222707 (not (isEmpty!3604 rules!1345)))))

(assert (= (and start!48254 res!222700) b!526282))

(assert (= (and b!526282 res!222707) b!526266))

(assert (= (and b!526266 res!222701) b!526255))

(assert (= (and b!526255 res!222706) b!526269))

(assert (= (and b!526269 res!222709) b!526265))

(assert (= (and b!526265 res!222704) b!526252))

(assert (= (and b!526252 res!222708) b!526247))

(assert (= (and b!526247 res!222703) b!526257))

(assert (= (and b!526257 res!222705) b!526268))

(assert (= (and b!526268 res!222710) b!526270))

(assert (= (and b!526270 res!222702) b!526258))

(assert (= start!48254 b!526274))

(assert (= (and b!526250 condMapEmpty!2256) mapIsEmpty!2258))

(assert (= (and b!526250 (not condMapEmpty!2256)) mapNonEmpty!2257))

(assert (= b!526251 b!526250))

(assert (= b!526280 b!526251))

(assert (= b!526276 b!526280))

(assert (= (and b!526271 ((_ is LongMap!575) (v!15995 (underlying!1330 (cache!934 cacheDown!462))))) b!526276))

(assert (= b!526279 b!526271))

(assert (= (and b!526262 ((_ is HashMap!547) (cache!934 cacheDown!462))) b!526279))

(assert (= start!48254 b!526262))

(assert (= (and b!526267 condMapEmpty!2257) mapIsEmpty!2257))

(assert (= (and b!526267 (not condMapEmpty!2257)) mapNonEmpty!2258))

(assert (= b!526272 b!526267))

(assert (= b!526249 b!526272))

(assert (= b!526254 b!526249))

(assert (= (and b!526256 ((_ is LongMap!576) (v!15997 (underlying!1332 (cache!935 cacheFurthestNullable!56))))) b!526254))

(assert (= b!526264 b!526256))

(assert (= (and b!526260 ((_ is HashMap!548) (cache!935 cacheFurthestNullable!56))) b!526264))

(assert (= b!526260 b!526275))

(assert (= start!48254 b!526260))

(assert (= (and b!526281 condMapEmpty!2258) mapIsEmpty!2256))

(assert (= (and b!526281 (not condMapEmpty!2258)) mapNonEmpty!2256))

(assert (= b!526273 b!526281))

(assert (= b!526277 b!526273))

(assert (= b!526261 b!526277))

(assert (= (and b!526248 ((_ is LongMap!574) (v!15993 (underlying!1328 (cache!933 cacheUp!449))))) b!526261))

(assert (= b!526259 b!526248))

(assert (= (and b!526263 ((_ is HashMap!546) (cache!933 cacheUp!449))) b!526259))

(assert (= start!48254 b!526263))

(assert (= b!526253 b!526278))

(assert (= b!526246 b!526253))

(assert (= (and start!48254 ((_ is Cons!4922) rules!1345)) b!526246))

(declare-fun m!772273 () Bool)

(assert (=> b!526269 m!772273))

(declare-fun m!772275 () Bool)

(assert (=> b!526274 m!772275))

(declare-fun m!772277 () Bool)

(assert (=> mapNonEmpty!2257 m!772277))

(declare-fun m!772279 () Bool)

(assert (=> b!526265 m!772279))

(declare-fun m!772281 () Bool)

(assert (=> b!526247 m!772281))

(declare-fun m!772283 () Bool)

(assert (=> b!526247 m!772283))

(declare-fun m!772285 () Bool)

(assert (=> b!526247 m!772285))

(declare-fun m!772287 () Bool)

(assert (=> b!526257 m!772287))

(declare-fun m!772289 () Bool)

(assert (=> b!526257 m!772289))

(declare-fun m!772291 () Bool)

(assert (=> b!526257 m!772291))

(declare-fun m!772293 () Bool)

(assert (=> b!526273 m!772293))

(declare-fun m!772295 () Bool)

(assert (=> b!526273 m!772295))

(declare-fun m!772297 () Bool)

(assert (=> b!526251 m!772297))

(declare-fun m!772299 () Bool)

(assert (=> b!526251 m!772299))

(declare-fun m!772301 () Bool)

(assert (=> b!526258 m!772301))

(declare-fun m!772303 () Bool)

(assert (=> b!526260 m!772303))

(declare-fun m!772305 () Bool)

(assert (=> mapNonEmpty!2256 m!772305))

(declare-fun m!772307 () Bool)

(assert (=> b!526272 m!772307))

(declare-fun m!772309 () Bool)

(assert (=> b!526272 m!772309))

(declare-fun m!772311 () Bool)

(assert (=> mapNonEmpty!2258 m!772311))

(declare-fun m!772313 () Bool)

(assert (=> b!526266 m!772313))

(declare-fun m!772315 () Bool)

(assert (=> b!526270 m!772315))

(declare-fun m!772317 () Bool)

(assert (=> b!526270 m!772317))

(assert (=> b!526270 m!772317))

(declare-fun m!772319 () Bool)

(assert (=> b!526270 m!772319))

(declare-fun m!772321 () Bool)

(assert (=> b!526270 m!772321))

(declare-fun m!772323 () Bool)

(assert (=> b!526268 m!772323))

(assert (=> b!526268 m!772323))

(declare-fun m!772325 () Bool)

(assert (=> b!526268 m!772325))

(declare-fun m!772327 () Bool)

(assert (=> b!526255 m!772327))

(declare-fun m!772329 () Bool)

(assert (=> b!526253 m!772329))

(declare-fun m!772331 () Bool)

(assert (=> b!526253 m!772331))

(declare-fun m!772333 () Bool)

(assert (=> b!526282 m!772333))

(declare-fun m!772335 () Bool)

(assert (=> start!48254 m!772335))

(declare-fun m!772337 () Bool)

(assert (=> start!48254 m!772337))

(declare-fun m!772339 () Bool)

(assert (=> start!48254 m!772339))

(declare-fun m!772341 () Bool)

(assert (=> start!48254 m!772341))

(declare-fun m!772343 () Bool)

(assert (=> b!526275 m!772343))

(check-sat (not b!526266) (not b!526275) (not mapNonEmpty!2256) (not b!526246) b_and!51393 (not b!526247) (not b!526257) b_and!51397 (not b!526260) (not mapNonEmpty!2257) (not b_next!13917) (not b!526269) (not b!526265) (not b!526268) (not b!526251) (not b!526274) (not b_next!13927) (not b!526282) (not b!526272) b_and!51403 b_and!51391 (not b!526255) (not b_next!13915) b_and!51401 (not mapNonEmpty!2258) b_and!51405 (not b!526270) (not b_next!13921) (not b!526273) (not b_next!13913) (not b_next!13919) (not b_next!13925) (not b!526253) (not b!526250) b_and!51395 (not b!526258) (not b!526267) (not b!526281) (not start!48254) b_and!51399 (not b_next!13923))
(check-sat (not b_next!13927) b_and!51393 b_and!51403 b_and!51397 b_and!51391 (not b_next!13917) b_and!51395 (not b_next!13915) b_and!51401 b_and!51405 (not b_next!13921) (not b_next!13913) (not b_next!13919) (not b_next!13925) b_and!51399 (not b_next!13923))
