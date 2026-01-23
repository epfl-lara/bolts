; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47822 () Bool)

(assert start!47822)

(declare-fun b!521906 () Bool)

(declare-fun b_free!13733 () Bool)

(declare-fun b_next!13749 () Bool)

(assert (=> b!521906 (= b_free!13733 (not b_next!13749))))

(declare-fun tp!162634 () Bool)

(declare-fun b_and!51227 () Bool)

(assert (=> b!521906 (= tp!162634 b_and!51227)))

(declare-fun b!521916 () Bool)

(declare-fun b_free!13735 () Bool)

(declare-fun b_next!13751 () Bool)

(assert (=> b!521916 (= b_free!13735 (not b_next!13751))))

(declare-fun tp!162632 () Bool)

(declare-fun b_and!51229 () Bool)

(assert (=> b!521916 (= tp!162632 b_and!51229)))

(declare-fun b_free!13737 () Bool)

(declare-fun b_next!13753 () Bool)

(assert (=> b!521916 (= b_free!13737 (not b_next!13753))))

(declare-fun tp!162628 () Bool)

(declare-fun b_and!51231 () Bool)

(assert (=> b!521916 (= tp!162628 b_and!51231)))

(declare-fun b!521905 () Bool)

(declare-fun b_free!13739 () Bool)

(declare-fun b_next!13755 () Bool)

(assert (=> b!521905 (= b_free!13739 (not b_next!13755))))

(declare-fun tp!162630 () Bool)

(declare-fun b_and!51233 () Bool)

(assert (=> b!521905 (= tp!162630 b_and!51233)))

(declare-fun b!521915 () Bool)

(declare-fun b_free!13741 () Bool)

(declare-fun b_next!13757 () Bool)

(assert (=> b!521915 (= b_free!13741 (not b_next!13757))))

(declare-fun tp!162646 () Bool)

(declare-fun b_and!51235 () Bool)

(assert (=> b!521915 (= tp!162646 b_and!51235)))

(declare-fun b!521901 () Bool)

(declare-fun b_free!13743 () Bool)

(declare-fun b_next!13759 () Bool)

(assert (=> b!521901 (= b_free!13743 (not b_next!13759))))

(declare-fun tp!162647 () Bool)

(declare-fun b_and!51237 () Bool)

(assert (=> b!521901 (= tp!162647 b_and!51237)))

(declare-fun b!521890 () Bool)

(declare-fun b_free!13745 () Bool)

(declare-fun b_next!13761 () Bool)

(assert (=> b!521890 (= b_free!13745 (not b_next!13761))))

(declare-fun tp!162627 () Bool)

(declare-fun b_and!51239 () Bool)

(assert (=> b!521890 (= tp!162627 b_and!51239)))

(declare-fun b!521895 () Bool)

(declare-fun b_free!13747 () Bool)

(declare-fun b_next!13763 () Bool)

(assert (=> b!521895 (= b_free!13747 (not b_next!13763))))

(declare-fun tp!162649 () Bool)

(declare-fun b_and!51241 () Bool)

(assert (=> b!521895 (= tp!162649 b_and!51241)))

(declare-fun mapNonEmpty!2133 () Bool)

(declare-fun mapRes!2135 () Bool)

(declare-fun tp!162645 () Bool)

(declare-fun tp!162626 () Bool)

(assert (=> mapNonEmpty!2133 (= mapRes!2135 (and tp!162645 tp!162626))))

(declare-fun mapKey!2134 () (_ BitVec 32))

(declare-datatypes ((C!3332 0))(
  ( (C!3333 (val!1892 Int)) )
))
(declare-datatypes ((Regex!1205 0))(
  ( (ElementMatch!1205 (c!100729 C!3332)) (Concat!2109 (regOne!2922 Regex!1205) (regTwo!2922 Regex!1205)) (EmptyExpr!1205) (Star!1205 (reg!1534 Regex!1205)) (EmptyLang!1205) (Union!1205 (regOne!2923 Regex!1205) (regTwo!2923 Regex!1205)) )
))
(declare-datatypes ((List!4857 0))(
  ( (Nil!4847) (Cons!4847 (h!10248 Regex!1205) (t!73447 List!4857)) )
))
(declare-datatypes ((Context!286 0))(
  ( (Context!287 (exprs!643 List!4857)) )
))
(declare-datatypes ((tuple3!354 0))(
  ( (tuple3!355 (_1!3201 Regex!1205) (_2!3201 Context!286) (_3!222 C!3332)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!5958 0))(
  ( (tuple2!5959 (_1!3202 tuple3!354) (_2!3202 (InoxSet Context!286))) )
))
(declare-datatypes ((List!4858 0))(
  ( (Nil!4848) (Cons!4848 (h!10249 tuple2!5958) (t!73448 List!4858)) )
))
(declare-datatypes ((array!2143 0))(
  ( (array!2144 (arr!980 (Array (_ BitVec 32) List!4858)) (size!3956 (_ BitVec 32))) )
))
(declare-datatypes ((array!2145 0))(
  ( (array!2146 (arr!981 (Array (_ BitVec 32) (_ BitVec 64))) (size!3957 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1102 0))(
  ( (LongMapFixedSize!1103 (defaultEntry!907 Int) (mask!2025 (_ BitVec 32)) (extraKeys!798 (_ BitVec 32)) (zeroValue!808 List!4858) (minValue!808 List!4858) (_size!1211 (_ BitVec 32)) (_keys!845 array!2145) (_values!830 array!2143) (_vacant!612 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2145 0))(
  ( (Cell!2146 (v!15935 LongMapFixedSize!1102)) )
))
(declare-datatypes ((MutLongMap!551 0))(
  ( (LongMap!551 (underlying!1281 Cell!2145)) (MutLongMapExt!550 (__x!3550 Int)) )
))
(declare-datatypes ((Cell!2147 0))(
  ( (Cell!2148 (v!15936 MutLongMap!551)) )
))
(declare-datatypes ((Hashable!523 0))(
  ( (HashableExt!522 (__x!3551 Int)) )
))
(declare-datatypes ((MutableMap!523 0))(
  ( (MutableMapExt!522 (__x!3552 Int)) (HashMap!523 (underlying!1282 Cell!2147) (hashF!2431 Hashable!523) (_size!1212 (_ BitVec 32)) (defaultValue!674 Int)) )
))
(declare-datatypes ((CacheDown!194 0))(
  ( (CacheDown!195 (cache!910 MutableMap!523)) )
))
(declare-fun cacheDown!462 () CacheDown!194)

(declare-fun mapRest!2135 () (Array (_ BitVec 32) List!4858))

(declare-fun mapValue!2134 () List!4858)

(assert (=> mapNonEmpty!2133 (= (arr!980 (_values!830 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))) (store mapRest!2135 mapKey!2134 mapValue!2134))))

(declare-fun b!521887 () Bool)

(declare-fun res!221573 () Bool)

(declare-fun e!313083 () Bool)

(assert (=> b!521887 (=> (not res!221573) (not e!313083))))

(declare-datatypes ((tuple2!5960 0))(
  ( (tuple2!5961 (_1!3203 Context!286) (_2!3203 C!3332)) )
))
(declare-datatypes ((tuple2!5962 0))(
  ( (tuple2!5963 (_1!3204 tuple2!5960) (_2!3204 (InoxSet Context!286))) )
))
(declare-datatypes ((List!4859 0))(
  ( (Nil!4849) (Cons!4849 (h!10250 tuple2!5962) (t!73449 List!4859)) )
))
(declare-datatypes ((Hashable!524 0))(
  ( (HashableExt!523 (__x!3553 Int)) )
))
(declare-datatypes ((array!2147 0))(
  ( (array!2148 (arr!982 (Array (_ BitVec 32) List!4859)) (size!3958 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1104 0))(
  ( (LongMapFixedSize!1105 (defaultEntry!908 Int) (mask!2026 (_ BitVec 32)) (extraKeys!799 (_ BitVec 32)) (zeroValue!809 List!4859) (minValue!809 List!4859) (_size!1213 (_ BitVec 32)) (_keys!846 array!2145) (_values!831 array!2147) (_vacant!613 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2149 0))(
  ( (Cell!2150 (v!15937 LongMapFixedSize!1104)) )
))
(declare-datatypes ((MutLongMap!552 0))(
  ( (LongMap!552 (underlying!1283 Cell!2149)) (MutLongMapExt!551 (__x!3554 Int)) )
))
(declare-datatypes ((Cell!2151 0))(
  ( (Cell!2152 (v!15938 MutLongMap!552)) )
))
(declare-datatypes ((MutableMap!524 0))(
  ( (MutableMapExt!523 (__x!3555 Int)) (HashMap!524 (underlying!1284 Cell!2151) (hashF!2432 Hashable!524) (_size!1214 (_ BitVec 32)) (defaultValue!675 Int)) )
))
(declare-datatypes ((CacheUp!206 0))(
  ( (CacheUp!207 (cache!911 MutableMap!524)) )
))
(declare-fun cacheUp!449 () CacheUp!206)

(declare-fun valid!522 (CacheUp!206) Bool)

(assert (=> b!521887 (= res!221573 (valid!522 cacheUp!449))))

(declare-fun b!521888 () Bool)

(declare-fun e!313085 () Bool)

(declare-fun e!313073 () Bool)

(assert (=> b!521888 (= e!313085 e!313073)))

(declare-fun b!521889 () Bool)

(declare-fun e!313069 () Bool)

(declare-fun e!313079 () Bool)

(declare-fun lt!217190 () MutLongMap!551)

(get-info :version)

(assert (=> b!521889 (= e!313069 (and e!313079 ((_ is LongMap!551) lt!217190)))))

(assert (=> b!521889 (= lt!217190 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))

(declare-fun tp!162644 () Bool)

(declare-fun tp!162624 () Bool)

(declare-fun e!313066 () Bool)

(declare-fun e!313082 () Bool)

(declare-fun array_inv!713 (array!2145) Bool)

(declare-fun array_inv!714 (array!2147) Bool)

(assert (=> b!521890 (= e!313082 (and tp!162627 tp!162644 tp!162624 (array_inv!713 (_keys!846 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))) (array_inv!714 (_values!831 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))) e!313066))))

(declare-fun b!521891 () Bool)

(declare-fun e!313078 () Bool)

(assert (=> b!521891 (= e!313079 e!313078)))

(declare-fun b!521892 () Bool)

(declare-fun e!313076 () Bool)

(declare-fun e!313061 () Bool)

(assert (=> b!521892 (= e!313076 e!313061)))

(declare-fun b!521893 () Bool)

(declare-fun e!313081 () Bool)

(declare-fun e!313086 () Bool)

(assert (=> b!521893 (= e!313081 e!313086)))

(declare-fun mapIsEmpty!2133 () Bool)

(assert (=> mapIsEmpty!2133 mapRes!2135))

(declare-fun b!521894 () Bool)

(declare-fun e!313074 () Bool)

(assert (=> b!521894 (= e!313078 e!313074)))

(declare-fun e!313077 () Bool)

(assert (=> b!521895 (= e!313086 (and e!313077 tp!162649))))

(declare-fun b!521896 () Bool)

(declare-fun e!313065 () Bool)

(declare-fun tp!162642 () Bool)

(assert (=> b!521896 (= e!313065 (and tp!162642 mapRes!2135))))

(declare-fun condMapEmpty!2135 () Bool)

(declare-fun mapDefault!2135 () List!4858)

(assert (=> b!521896 (= condMapEmpty!2135 (= (arr!980 (_values!830 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))) ((as const (Array (_ BitVec 32) List!4858)) mapDefault!2135)))))

(declare-fun e!313075 () Bool)

(declare-fun e!313063 () Bool)

(declare-fun b!521897 () Bool)

(declare-fun e!313084 () Bool)

(declare-datatypes ((List!4860 0))(
  ( (Nil!4850) (Cons!4850 (h!10251 C!3332) (t!73450 List!4860)) )
))
(declare-datatypes ((IArray!3167 0))(
  ( (IArray!3168 (innerList!1641 List!4860)) )
))
(declare-datatypes ((tuple3!356 0))(
  ( (tuple3!357 (_1!3205 (InoxSet Context!286)) (_2!3205 Int) (_3!223 Int)) )
))
(declare-datatypes ((Hashable!525 0))(
  ( (HashableExt!524 (__x!3556 Int)) )
))
(declare-datatypes ((tuple2!5964 0))(
  ( (tuple2!5965 (_1!3206 tuple3!356) (_2!3206 Int)) )
))
(declare-datatypes ((List!4861 0))(
  ( (Nil!4851) (Cons!4851 (h!10252 tuple2!5964) (t!73451 List!4861)) )
))
(declare-datatypes ((array!2149 0))(
  ( (array!2150 (arr!983 (Array (_ BitVec 32) List!4861)) (size!3959 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1106 0))(
  ( (LongMapFixedSize!1107 (defaultEntry!909 Int) (mask!2027 (_ BitVec 32)) (extraKeys!800 (_ BitVec 32)) (zeroValue!810 List!4861) (minValue!810 List!4861) (_size!1215 (_ BitVec 32)) (_keys!847 array!2145) (_values!832 array!2149) (_vacant!614 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2153 0))(
  ( (Cell!2154 (v!15939 LongMapFixedSize!1106)) )
))
(declare-datatypes ((MutLongMap!553 0))(
  ( (LongMap!553 (underlying!1285 Cell!2153)) (MutLongMapExt!552 (__x!3557 Int)) )
))
(declare-datatypes ((Cell!2155 0))(
  ( (Cell!2156 (v!15940 MutLongMap!553)) )
))
(declare-datatypes ((MutableMap!525 0))(
  ( (MutableMapExt!524 (__x!3558 Int)) (HashMap!525 (underlying!1286 Cell!2155) (hashF!2433 Hashable!525) (_size!1216 (_ BitVec 32)) (defaultValue!676 Int)) )
))
(declare-datatypes ((Conc!1583 0))(
  ( (Node!1583 (left!4179 Conc!1583) (right!4509 Conc!1583) (csize!3396 Int) (cheight!1794 Int)) (Leaf!2526 (xs!4218 IArray!3167) (csize!3397 Int)) (Empty!1583) )
))
(declare-datatypes ((BalanceConc!3174 0))(
  ( (BalanceConc!3175 (c!100730 Conc!1583)) )
))
(declare-datatypes ((CacheFurthestNullable!146 0))(
  ( (CacheFurthestNullable!147 (cache!912 MutableMap!525) (totalInput!1731 BalanceConc!3174)) )
))
(declare-fun cacheFurthestNullable!56 () CacheFurthestNullable!146)

(declare-fun inv!6118 (BalanceConc!3174) Bool)

(assert (=> b!521897 (= e!313084 (and e!313063 (inv!6118 (totalInput!1731 cacheFurthestNullable!56)) e!313075))))

(declare-fun b!521898 () Bool)

(declare-fun res!221572 () Bool)

(assert (=> b!521898 (=> (not res!221572) (not e!313083))))

(declare-datatypes ((List!4862 0))(
  ( (Nil!4852) (Cons!4852 (h!10253 (_ BitVec 16)) (t!73452 List!4862)) )
))
(declare-datatypes ((TokenValue!904 0))(
  ( (FloatLiteralValue!1808 (text!6773 List!4862)) (TokenValueExt!903 (__x!3559 Int)) (Broken!4520 (value!29909 List!4862)) (Object!913) (End!904) (Def!904) (Underscore!904) (Match!904) (Else!904) (Error!904) (Case!904) (If!904) (Extends!904) (Abstract!904) (Class!904) (Val!904) (DelimiterValue!1808 (del!964 List!4862)) (KeywordValue!910 (value!29910 List!4862)) (CommentValue!1808 (value!29911 List!4862)) (WhitespaceValue!1808 (value!29912 List!4862)) (IndentationValue!904 (value!29913 List!4862)) (String!6245) (Int32!904) (Broken!4521 (value!29914 List!4862)) (Boolean!905) (Unit!8785) (OperatorValue!907 (op!964 List!4862)) (IdentifierValue!1808 (value!29915 List!4862)) (IdentifierValue!1809 (value!29916 List!4862)) (WhitespaceValue!1809 (value!29917 List!4862)) (True!1808) (False!1808) (Broken!4522 (value!29918 List!4862)) (Broken!4523 (value!29919 List!4862)) (True!1809) (RightBrace!904) (RightBracket!904) (Colon!904) (Null!904) (Comma!904) (LeftBracket!904) (False!1809) (LeftBrace!904) (ImaginaryLiteralValue!904 (text!6774 List!4862)) (StringLiteralValue!2712 (value!29920 List!4862)) (EOFValue!904 (value!29921 List!4862)) (IdentValue!904 (value!29922 List!4862)) (DelimiterValue!1809 (value!29923 List!4862)) (DedentValue!904 (value!29924 List!4862)) (NewLineValue!904 (value!29925 List!4862)) (IntegerValue!2712 (value!29926 (_ BitVec 32)) (text!6775 List!4862)) (IntegerValue!2713 (value!29927 Int) (text!6776 List!4862)) (Times!904) (Or!904) (Equal!904) (Minus!904) (Broken!4524 (value!29928 List!4862)) (And!904) (Div!904) (LessEqual!904) (Mod!904) (Concat!2110) (Not!904) (Plus!904) (SpaceValue!904 (value!29929 List!4862)) (IntegerValue!2714 (value!29930 Int) (text!6777 List!4862)) (StringLiteralValue!2713 (text!6778 List!4862)) (FloatLiteralValue!1809 (text!6779 List!4862)) (BytesLiteralValue!904 (value!29931 List!4862)) (CommentValue!1809 (value!29932 List!4862)) (StringLiteralValue!2714 (value!29933 List!4862)) (ErrorTokenValue!904 (msg!965 List!4862)) )
))
(declare-datatypes ((TokenValueInjection!1576 0))(
  ( (TokenValueInjection!1577 (toValue!1707 Int) (toChars!1566 Int)) )
))
(declare-datatypes ((String!6246 0))(
  ( (String!6247 (value!29934 String)) )
))
(declare-datatypes ((Rule!1560 0))(
  ( (Rule!1561 (regex!880 Regex!1205) (tag!1142 String!6246) (isSeparator!880 Bool) (transformation!880 TokenValueInjection!1576)) )
))
(declare-datatypes ((List!4863 0))(
  ( (Nil!4853) (Cons!4853 (h!10254 Rule!1560) (t!73453 List!4863)) )
))
(declare-fun rules!1345 () List!4863)

(declare-fun isEmpty!3579 (List!4863) Bool)

(assert (=> b!521898 (= res!221572 (not (isEmpty!3579 rules!1345)))))

(declare-fun b!521899 () Bool)

(declare-fun e!313060 () Bool)

(declare-fun tp!162640 () Bool)

(declare-fun mapRes!2134 () Bool)

(assert (=> b!521899 (= e!313060 (and tp!162640 mapRes!2134))))

(declare-fun condMapEmpty!2134 () Bool)

(declare-fun mapDefault!2133 () List!4861)

(assert (=> b!521899 (= condMapEmpty!2134 (= (arr!983 (_values!832 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))) ((as const (Array (_ BitVec 32) List!4861)) mapDefault!2133)))))

(declare-fun mapNonEmpty!2134 () Bool)

(declare-fun tp!162639 () Bool)

(declare-fun tp!162637 () Bool)

(assert (=> mapNonEmpty!2134 (= mapRes!2134 (and tp!162639 tp!162637))))

(declare-fun mapRest!2134 () (Array (_ BitVec 32) List!4861))

(declare-fun mapValue!2133 () List!4861)

(declare-fun mapKey!2133 () (_ BitVec 32))

(assert (=> mapNonEmpty!2134 (= (arr!983 (_values!832 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))) (store mapRest!2134 mapKey!2133 mapValue!2133))))

(declare-fun b!521900 () Bool)

(declare-fun tp!162633 () Bool)

(declare-fun mapRes!2133 () Bool)

(assert (=> b!521900 (= e!313066 (and tp!162633 mapRes!2133))))

(declare-fun condMapEmpty!2133 () Bool)

(declare-fun mapDefault!2134 () List!4859)

(assert (=> b!521900 (= condMapEmpty!2133 (= (arr!982 (_values!831 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))) ((as const (Array (_ BitVec 32) List!4859)) mapDefault!2134)))))

(declare-fun e!313064 () Bool)

(assert (=> b!521901 (= e!313063 (and e!313064 tp!162647))))

(declare-fun b!521902 () Bool)

(declare-fun e!313070 () Bool)

(declare-fun lt!217189 () MutLongMap!553)

(assert (=> b!521902 (= e!313064 (and e!313070 ((_ is LongMap!553) lt!217189)))))

(assert (=> b!521902 (= lt!217189 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))

(declare-fun b!521903 () Bool)

(declare-fun res!221574 () Bool)

(assert (=> b!521903 (=> (not res!221574) (not e!313083))))

(declare-fun valid!523 (CacheFurthestNullable!146) Bool)

(assert (=> b!521903 (= res!221574 (valid!523 cacheFurthestNullable!56))))

(declare-fun b!521904 () Bool)

(assert (=> b!521904 (= e!313070 e!313076)))

(declare-fun e!313072 () Bool)

(assert (=> b!521905 (= e!313072 (and e!313069 tp!162630))))

(declare-fun tp!162643 () Bool)

(declare-fun tp!162635 () Bool)

(declare-fun array_inv!715 (array!2149) Bool)

(assert (=> b!521906 (= e!313061 (and tp!162634 tp!162635 tp!162643 (array_inv!713 (_keys!847 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))) (array_inv!715 (_values!832 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))) e!313060))))

(declare-fun b!521907 () Bool)

(assert (=> b!521907 (= e!313073 e!313082)))

(declare-fun b!521908 () Bool)

(declare-fun res!221570 () Bool)

(assert (=> b!521908 (=> (not res!221570) (not e!313083))))

(declare-fun valid!524 (CacheDown!194) Bool)

(assert (=> b!521908 (= res!221570 (valid!524 cacheDown!462))))

(declare-fun tp!162631 () Bool)

(declare-fun e!313067 () Bool)

(declare-fun e!313080 () Bool)

(declare-fun b!521909 () Bool)

(declare-fun inv!6116 (String!6246) Bool)

(declare-fun inv!6119 (TokenValueInjection!1576) Bool)

(assert (=> b!521909 (= e!313067 (and tp!162631 (inv!6116 (tag!1142 (h!10254 rules!1345))) (inv!6119 (transformation!880 (h!10254 rules!1345))) e!313080))))

(declare-fun b!521910 () Bool)

(declare-fun e!313088 () Bool)

(declare-fun tp!162641 () Bool)

(assert (=> b!521910 (= e!313088 (and e!313067 tp!162641))))

(declare-fun b!521911 () Bool)

(declare-fun e!313062 () Bool)

(assert (=> b!521911 (= e!313062 e!313072)))

(declare-fun b!521912 () Bool)

(declare-fun tp!162650 () Bool)

(declare-fun inv!6120 (Conc!1583) Bool)

(assert (=> b!521912 (= e!313075 (and (inv!6120 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) tp!162650))))

(declare-fun mapIsEmpty!2134 () Bool)

(assert (=> mapIsEmpty!2134 mapRes!2134))

(declare-fun mapIsEmpty!2135 () Bool)

(assert (=> mapIsEmpty!2135 mapRes!2133))

(declare-fun res!221571 () Bool)

(assert (=> start!47822 (=> (not res!221571) (not e!313083))))

(declare-datatypes ((LexerInterface!766 0))(
  ( (LexerInterfaceExt!763 (__x!3560 Int)) (Lexer!764) )
))
(declare-fun thiss!12147 () LexerInterface!766)

(assert (=> start!47822 (= res!221571 ((_ is Lexer!764) thiss!12147))))

(assert (=> start!47822 e!313083))

(declare-fun input!747 () BalanceConc!3174)

(declare-fun e!313087 () Bool)

(assert (=> start!47822 (and (inv!6118 input!747) e!313087)))

(declare-fun inv!6121 (CacheDown!194) Bool)

(assert (=> start!47822 (and (inv!6121 cacheDown!462) e!313062)))

(assert (=> start!47822 true))

(declare-fun inv!6122 (CacheFurthestNullable!146) Bool)

(assert (=> start!47822 (and (inv!6122 cacheFurthestNullable!56) e!313084)))

(declare-fun inv!6123 (CacheUp!206) Bool)

(assert (=> start!47822 (and (inv!6123 cacheUp!449) e!313081)))

(assert (=> start!47822 e!313088))

(declare-fun b!521913 () Bool)

(declare-fun lt!217193 () MutLongMap!552)

(assert (=> b!521913 (= e!313077 (and e!313085 ((_ is LongMap!552) lt!217193)))))

(assert (=> b!521913 (= lt!217193 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))

(declare-fun b!521914 () Bool)

(declare-fun res!221569 () Bool)

(assert (=> b!521914 (=> (not res!221569) (not e!313083))))

(assert (=> b!521914 (= res!221569 (= (totalInput!1731 cacheFurthestNullable!56) input!747))))

(declare-fun tp!162629 () Bool)

(declare-fun tp!162625 () Bool)

(declare-fun array_inv!716 (array!2143) Bool)

(assert (=> b!521915 (= e!313074 (and tp!162646 tp!162629 tp!162625 (array_inv!713 (_keys!845 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))) (array_inv!716 (_values!830 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))) e!313065))))

(assert (=> b!521916 (= e!313080 (and tp!162632 tp!162628))))

(declare-fun b!521917 () Bool)

(declare-fun lt!217191 () List!4860)

(declare-fun lt!217192 () List!4860)

(declare-fun ++!1365 (List!4860 List!4860) List!4860)

(assert (=> b!521917 (= e!313083 (not (= lt!217191 (++!1365 lt!217192 lt!217191))))))

(declare-fun list!2034 (BalanceConc!3174) List!4860)

(assert (=> b!521917 (= lt!217191 (list!2034 input!747))))

(assert (=> b!521917 (= lt!217192 (list!2034 (BalanceConc!3175 Empty!1583)))))

(declare-fun b!521918 () Bool)

(declare-fun tp!162636 () Bool)

(assert (=> b!521918 (= e!313087 (and (inv!6120 (c!100730 input!747)) tp!162636))))

(declare-fun b!521919 () Bool)

(declare-fun res!221568 () Bool)

(assert (=> b!521919 (=> (not res!221568) (not e!313083))))

(declare-fun rulesInvariant!732 (LexerInterface!766 List!4863) Bool)

(assert (=> b!521919 (= res!221568 (rulesInvariant!732 thiss!12147 rules!1345))))

(declare-fun mapNonEmpty!2135 () Bool)

(declare-fun tp!162648 () Bool)

(declare-fun tp!162638 () Bool)

(assert (=> mapNonEmpty!2135 (= mapRes!2133 (and tp!162648 tp!162638))))

(declare-fun mapKey!2135 () (_ BitVec 32))

(declare-fun mapValue!2135 () List!4859)

(declare-fun mapRest!2133 () (Array (_ BitVec 32) List!4859))

(assert (=> mapNonEmpty!2135 (= (arr!982 (_values!831 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))) (store mapRest!2133 mapKey!2135 mapValue!2135))))

(assert (= (and start!47822 res!221571) b!521898))

(assert (= (and b!521898 res!221572) b!521919))

(assert (= (and b!521919 res!221568) b!521887))

(assert (= (and b!521887 res!221573) b!521908))

(assert (= (and b!521908 res!221570) b!521903))

(assert (= (and b!521903 res!221574) b!521914))

(assert (= (and b!521914 res!221569) b!521917))

(assert (= start!47822 b!521918))

(assert (= (and b!521896 condMapEmpty!2135) mapIsEmpty!2133))

(assert (= (and b!521896 (not condMapEmpty!2135)) mapNonEmpty!2133))

(assert (= b!521915 b!521896))

(assert (= b!521894 b!521915))

(assert (= b!521891 b!521894))

(assert (= (and b!521889 ((_ is LongMap!551) (v!15936 (underlying!1282 (cache!910 cacheDown!462))))) b!521891))

(assert (= b!521905 b!521889))

(assert (= (and b!521911 ((_ is HashMap!523) (cache!910 cacheDown!462))) b!521905))

(assert (= start!47822 b!521911))

(assert (= (and b!521899 condMapEmpty!2134) mapIsEmpty!2134))

(assert (= (and b!521899 (not condMapEmpty!2134)) mapNonEmpty!2134))

(assert (= b!521906 b!521899))

(assert (= b!521892 b!521906))

(assert (= b!521904 b!521892))

(assert (= (and b!521902 ((_ is LongMap!553) (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))) b!521904))

(assert (= b!521901 b!521902))

(assert (= (and b!521897 ((_ is HashMap!525) (cache!912 cacheFurthestNullable!56))) b!521901))

(assert (= b!521897 b!521912))

(assert (= start!47822 b!521897))

(assert (= (and b!521900 condMapEmpty!2133) mapIsEmpty!2135))

(assert (= (and b!521900 (not condMapEmpty!2133)) mapNonEmpty!2135))

(assert (= b!521890 b!521900))

(assert (= b!521907 b!521890))

(assert (= b!521888 b!521907))

(assert (= (and b!521913 ((_ is LongMap!552) (v!15938 (underlying!1284 (cache!911 cacheUp!449))))) b!521888))

(assert (= b!521895 b!521913))

(assert (= (and b!521893 ((_ is HashMap!524) (cache!911 cacheUp!449))) b!521895))

(assert (= start!47822 b!521893))

(assert (= b!521909 b!521916))

(assert (= b!521910 b!521909))

(assert (= (and start!47822 ((_ is Cons!4853) rules!1345)) b!521910))

(declare-fun m!768097 () Bool)

(assert (=> b!521915 m!768097))

(declare-fun m!768099 () Bool)

(assert (=> b!521915 m!768099))

(declare-fun m!768101 () Bool)

(assert (=> b!521918 m!768101))

(declare-fun m!768103 () Bool)

(assert (=> b!521919 m!768103))

(declare-fun m!768105 () Bool)

(assert (=> b!521903 m!768105))

(declare-fun m!768107 () Bool)

(assert (=> b!521912 m!768107))

(declare-fun m!768109 () Bool)

(assert (=> b!521909 m!768109))

(declare-fun m!768111 () Bool)

(assert (=> b!521909 m!768111))

(declare-fun m!768113 () Bool)

(assert (=> b!521887 m!768113))

(declare-fun m!768115 () Bool)

(assert (=> b!521908 m!768115))

(declare-fun m!768117 () Bool)

(assert (=> start!47822 m!768117))

(declare-fun m!768119 () Bool)

(assert (=> start!47822 m!768119))

(declare-fun m!768121 () Bool)

(assert (=> start!47822 m!768121))

(declare-fun m!768123 () Bool)

(assert (=> start!47822 m!768123))

(declare-fun m!768125 () Bool)

(assert (=> b!521890 m!768125))

(declare-fun m!768127 () Bool)

(assert (=> b!521890 m!768127))

(declare-fun m!768129 () Bool)

(assert (=> b!521897 m!768129))

(declare-fun m!768131 () Bool)

(assert (=> mapNonEmpty!2133 m!768131))

(declare-fun m!768133 () Bool)

(assert (=> b!521906 m!768133))

(declare-fun m!768135 () Bool)

(assert (=> b!521906 m!768135))

(declare-fun m!768137 () Bool)

(assert (=> b!521898 m!768137))

(declare-fun m!768139 () Bool)

(assert (=> mapNonEmpty!2135 m!768139))

(declare-fun m!768141 () Bool)

(assert (=> b!521917 m!768141))

(declare-fun m!768143 () Bool)

(assert (=> b!521917 m!768143))

(declare-fun m!768145 () Bool)

(assert (=> b!521917 m!768145))

(declare-fun m!768147 () Bool)

(assert (=> mapNonEmpty!2134 m!768147))

(check-sat (not b_next!13751) (not b_next!13759) (not b!521909) (not b!521897) (not b!521915) (not b_next!13763) (not b!521912) (not b!521900) (not b_next!13749) (not b!521910) (not b_next!13757) (not b!521918) (not b!521896) (not b!521899) b_and!51241 b_and!51235 (not b_next!13753) (not b!521908) (not b!521898) (not b!521887) b_and!51229 (not mapNonEmpty!2133) (not mapNonEmpty!2134) (not b!521906) (not b!521903) b_and!51239 b_and!51233 b_and!51227 b_and!51237 (not start!47822) (not b_next!13761) b_and!51231 (not b_next!13755) (not b!521917) (not mapNonEmpty!2135) (not b!521919) (not b!521890))
(check-sat (not b_next!13751) (not b_next!13759) (not b_next!13753) (not b_next!13763) b_and!51229 (not b_next!13749) (not b_next!13761) (not b_next!13757) b_and!51241 b_and!51235 b_and!51239 b_and!51233 b_and!51227 b_and!51237 b_and!51231 (not b_next!13755))
(get-model)

(declare-fun d!186167 () Bool)

(assert (=> d!186167 (= (array_inv!713 (_keys!846 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))) (bvsge (size!3957 (_keys!846 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!521890 d!186167))

(declare-fun d!186169 () Bool)

(assert (=> d!186169 (= (array_inv!714 (_values!831 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))) (bvsge (size!3958 (_values!831 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!521890 d!186169))

(declare-fun d!186171 () Bool)

(declare-fun c!100733 () Bool)

(assert (=> d!186171 (= c!100733 ((_ is Node!1583) (c!100730 input!747)))))

(declare-fun e!313093 () Bool)

(assert (=> d!186171 (= (inv!6120 (c!100730 input!747)) e!313093)))

(declare-fun b!521926 () Bool)

(declare-fun inv!6124 (Conc!1583) Bool)

(assert (=> b!521926 (= e!313093 (inv!6124 (c!100730 input!747)))))

(declare-fun b!521927 () Bool)

(declare-fun e!313094 () Bool)

(assert (=> b!521927 (= e!313093 e!313094)))

(declare-fun res!221577 () Bool)

(assert (=> b!521927 (= res!221577 (not ((_ is Leaf!2526) (c!100730 input!747))))))

(assert (=> b!521927 (=> res!221577 e!313094)))

(declare-fun b!521928 () Bool)

(declare-fun inv!6125 (Conc!1583) Bool)

(assert (=> b!521928 (= e!313094 (inv!6125 (c!100730 input!747)))))

(assert (= (and d!186171 c!100733) b!521926))

(assert (= (and d!186171 (not c!100733)) b!521927))

(assert (= (and b!521927 (not res!221577)) b!521928))

(declare-fun m!768149 () Bool)

(assert (=> b!521926 m!768149))

(declare-fun m!768151 () Bool)

(assert (=> b!521928 m!768151))

(assert (=> b!521918 d!186171))

(declare-fun d!186173 () Bool)

(declare-fun res!221580 () Bool)

(declare-fun e!313097 () Bool)

(assert (=> d!186173 (=> (not res!221580) (not e!313097))))

(declare-fun rulesValid!317 (LexerInterface!766 List!4863) Bool)

(assert (=> d!186173 (= res!221580 (rulesValid!317 thiss!12147 rules!1345))))

(assert (=> d!186173 (= (rulesInvariant!732 thiss!12147 rules!1345) e!313097)))

(declare-fun b!521931 () Bool)

(declare-datatypes ((List!4864 0))(
  ( (Nil!4854) (Cons!4854 (h!10255 String!6246) (t!73454 List!4864)) )
))
(declare-fun noDuplicateTag!317 (LexerInterface!766 List!4863 List!4864) Bool)

(assert (=> b!521931 (= e!313097 (noDuplicateTag!317 thiss!12147 rules!1345 Nil!4854))))

(assert (= (and d!186173 res!221580) b!521931))

(declare-fun m!768153 () Bool)

(assert (=> d!186173 m!768153))

(declare-fun m!768155 () Bool)

(assert (=> b!521931 m!768155))

(assert (=> b!521919 d!186173))

(declare-fun d!186175 () Bool)

(declare-fun validCacheMapDown!30 (MutableMap!523) Bool)

(assert (=> d!186175 (= (valid!524 cacheDown!462) (validCacheMapDown!30 (cache!910 cacheDown!462)))))

(declare-fun bs!60576 () Bool)

(assert (= bs!60576 d!186175))

(declare-fun m!768157 () Bool)

(assert (=> bs!60576 m!768157))

(assert (=> b!521908 d!186175))

(declare-fun b!521941 () Bool)

(declare-fun e!313102 () List!4860)

(assert (=> b!521941 (= e!313102 (Cons!4850 (h!10251 lt!217192) (++!1365 (t!73450 lt!217192) lt!217191)))))

(declare-fun b!521942 () Bool)

(declare-fun res!221585 () Bool)

(declare-fun e!313103 () Bool)

(assert (=> b!521942 (=> (not res!221585) (not e!313103))))

(declare-fun lt!217196 () List!4860)

(declare-fun size!3960 (List!4860) Int)

(assert (=> b!521942 (= res!221585 (= (size!3960 lt!217196) (+ (size!3960 lt!217192) (size!3960 lt!217191))))))

(declare-fun b!521940 () Bool)

(assert (=> b!521940 (= e!313102 lt!217191)))

(declare-fun d!186177 () Bool)

(assert (=> d!186177 e!313103))

(declare-fun res!221586 () Bool)

(assert (=> d!186177 (=> (not res!221586) (not e!313103))))

(declare-fun content!882 (List!4860) (InoxSet C!3332))

(assert (=> d!186177 (= res!221586 (= (content!882 lt!217196) ((_ map or) (content!882 lt!217192) (content!882 lt!217191))))))

(assert (=> d!186177 (= lt!217196 e!313102)))

(declare-fun c!100736 () Bool)

(assert (=> d!186177 (= c!100736 ((_ is Nil!4850) lt!217192))))

(assert (=> d!186177 (= (++!1365 lt!217192 lt!217191) lt!217196)))

(declare-fun b!521943 () Bool)

(assert (=> b!521943 (= e!313103 (or (not (= lt!217191 Nil!4850)) (= lt!217196 lt!217192)))))

(assert (= (and d!186177 c!100736) b!521940))

(assert (= (and d!186177 (not c!100736)) b!521941))

(assert (= (and d!186177 res!221586) b!521942))

(assert (= (and b!521942 res!221585) b!521943))

(declare-fun m!768159 () Bool)

(assert (=> b!521941 m!768159))

(declare-fun m!768161 () Bool)

(assert (=> b!521942 m!768161))

(declare-fun m!768163 () Bool)

(assert (=> b!521942 m!768163))

(declare-fun m!768165 () Bool)

(assert (=> b!521942 m!768165))

(declare-fun m!768167 () Bool)

(assert (=> d!186177 m!768167))

(declare-fun m!768169 () Bool)

(assert (=> d!186177 m!768169))

(declare-fun m!768171 () Bool)

(assert (=> d!186177 m!768171))

(assert (=> b!521917 d!186177))

(declare-fun d!186179 () Bool)

(declare-fun list!2035 (Conc!1583) List!4860)

(assert (=> d!186179 (= (list!2034 input!747) (list!2035 (c!100730 input!747)))))

(declare-fun bs!60577 () Bool)

(assert (= bs!60577 d!186179))

(declare-fun m!768173 () Bool)

(assert (=> bs!60577 m!768173))

(assert (=> b!521917 d!186179))

(declare-fun d!186181 () Bool)

(assert (=> d!186181 (= (list!2034 (BalanceConc!3175 Empty!1583)) (list!2035 (c!100730 (BalanceConc!3175 Empty!1583))))))

(declare-fun bs!60578 () Bool)

(assert (= bs!60578 d!186181))

(declare-fun m!768175 () Bool)

(assert (=> bs!60578 m!768175))

(assert (=> b!521917 d!186181))

(declare-fun d!186183 () Bool)

(assert (=> d!186183 (= (inv!6116 (tag!1142 (h!10254 rules!1345))) (= (mod (str.len (value!29934 (tag!1142 (h!10254 rules!1345)))) 2) 0))))

(assert (=> b!521909 d!186183))

(declare-fun d!186185 () Bool)

(declare-fun res!221589 () Bool)

(declare-fun e!313106 () Bool)

(assert (=> d!186185 (=> (not res!221589) (not e!313106))))

(declare-fun semiInverseModEq!352 (Int Int) Bool)

(assert (=> d!186185 (= res!221589 (semiInverseModEq!352 (toChars!1566 (transformation!880 (h!10254 rules!1345))) (toValue!1707 (transformation!880 (h!10254 rules!1345)))))))

(assert (=> d!186185 (= (inv!6119 (transformation!880 (h!10254 rules!1345))) e!313106)))

(declare-fun b!521946 () Bool)

(declare-fun equivClasses!335 (Int Int) Bool)

(assert (=> b!521946 (= e!313106 (equivClasses!335 (toChars!1566 (transformation!880 (h!10254 rules!1345))) (toValue!1707 (transformation!880 (h!10254 rules!1345)))))))

(assert (= (and d!186185 res!221589) b!521946))

(declare-fun m!768177 () Bool)

(assert (=> d!186185 m!768177))

(declare-fun m!768179 () Bool)

(assert (=> b!521946 m!768179))

(assert (=> b!521909 d!186185))

(declare-fun d!186187 () Bool)

(declare-fun isBalanced!489 (Conc!1583) Bool)

(assert (=> d!186187 (= (inv!6118 input!747) (isBalanced!489 (c!100730 input!747)))))

(declare-fun bs!60579 () Bool)

(assert (= bs!60579 d!186187))

(declare-fun m!768181 () Bool)

(assert (=> bs!60579 m!768181))

(assert (=> start!47822 d!186187))

(declare-fun d!186189 () Bool)

(declare-fun res!221592 () Bool)

(declare-fun e!313109 () Bool)

(assert (=> d!186189 (=> (not res!221592) (not e!313109))))

(assert (=> d!186189 (= res!221592 ((_ is HashMap!523) (cache!910 cacheDown!462)))))

(assert (=> d!186189 (= (inv!6121 cacheDown!462) e!313109)))

(declare-fun b!521949 () Bool)

(assert (=> b!521949 (= e!313109 (validCacheMapDown!30 (cache!910 cacheDown!462)))))

(assert (= (and d!186189 res!221592) b!521949))

(assert (=> b!521949 m!768157))

(assert (=> start!47822 d!186189))

(declare-fun d!186191 () Bool)

(declare-fun res!221595 () Bool)

(declare-fun e!313112 () Bool)

(assert (=> d!186191 (=> (not res!221595) (not e!313112))))

(assert (=> d!186191 (= res!221595 ((_ is HashMap!525) (cache!912 cacheFurthestNullable!56)))))

(assert (=> d!186191 (= (inv!6122 cacheFurthestNullable!56) e!313112)))

(declare-fun b!521952 () Bool)

(declare-fun validCacheMapFurthestNullable!23 (MutableMap!525 BalanceConc!3174) Bool)

(assert (=> b!521952 (= e!313112 (validCacheMapFurthestNullable!23 (cache!912 cacheFurthestNullable!56) (totalInput!1731 cacheFurthestNullable!56)))))

(assert (= (and d!186191 res!221595) b!521952))

(declare-fun m!768183 () Bool)

(assert (=> b!521952 m!768183))

(assert (=> start!47822 d!186191))

(declare-fun d!186193 () Bool)

(declare-fun res!221598 () Bool)

(declare-fun e!313115 () Bool)

(assert (=> d!186193 (=> (not res!221598) (not e!313115))))

(assert (=> d!186193 (= res!221598 ((_ is HashMap!524) (cache!911 cacheUp!449)))))

(assert (=> d!186193 (= (inv!6123 cacheUp!449) e!313115)))

(declare-fun b!521955 () Bool)

(declare-fun validCacheMapUp!33 (MutableMap!524) Bool)

(assert (=> b!521955 (= e!313115 (validCacheMapUp!33 (cache!911 cacheUp!449)))))

(assert (= (and d!186193 res!221598) b!521955))

(declare-fun m!768185 () Bool)

(assert (=> b!521955 m!768185))

(assert (=> start!47822 d!186193))

(declare-fun d!186195 () Bool)

(declare-fun c!100737 () Bool)

(assert (=> d!186195 (= c!100737 ((_ is Node!1583) (c!100730 (totalInput!1731 cacheFurthestNullable!56))))))

(declare-fun e!313116 () Bool)

(assert (=> d!186195 (= (inv!6120 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) e!313116)))

(declare-fun b!521956 () Bool)

(assert (=> b!521956 (= e!313116 (inv!6124 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))))

(declare-fun b!521957 () Bool)

(declare-fun e!313117 () Bool)

(assert (=> b!521957 (= e!313116 e!313117)))

(declare-fun res!221599 () Bool)

(assert (=> b!521957 (= res!221599 (not ((_ is Leaf!2526) (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(assert (=> b!521957 (=> res!221599 e!313117)))

(declare-fun b!521958 () Bool)

(assert (=> b!521958 (= e!313117 (inv!6125 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))))

(assert (= (and d!186195 c!100737) b!521956))

(assert (= (and d!186195 (not c!100737)) b!521957))

(assert (= (and b!521957 (not res!221599)) b!521958))

(declare-fun m!768187 () Bool)

(assert (=> b!521956 m!768187))

(declare-fun m!768189 () Bool)

(assert (=> b!521958 m!768189))

(assert (=> b!521912 d!186195))

(declare-fun d!186197 () Bool)

(assert (=> d!186197 (= (valid!523 cacheFurthestNullable!56) (validCacheMapFurthestNullable!23 (cache!912 cacheFurthestNullable!56) (totalInput!1731 cacheFurthestNullable!56)))))

(declare-fun bs!60580 () Bool)

(assert (= bs!60580 d!186197))

(assert (=> bs!60580 m!768183))

(assert (=> b!521903 d!186197))

(declare-fun d!186199 () Bool)

(assert (=> d!186199 (= (inv!6118 (totalInput!1731 cacheFurthestNullable!56)) (isBalanced!489 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))))

(declare-fun bs!60581 () Bool)

(assert (= bs!60581 d!186199))

(declare-fun m!768191 () Bool)

(assert (=> bs!60581 m!768191))

(assert (=> b!521897 d!186199))

(declare-fun d!186201 () Bool)

(assert (=> d!186201 (= (isEmpty!3579 rules!1345) ((_ is Nil!4853) rules!1345))))

(assert (=> b!521898 d!186201))

(declare-fun d!186203 () Bool)

(assert (=> d!186203 (= (array_inv!713 (_keys!847 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))) (bvsge (size!3957 (_keys!847 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!521906 d!186203))

(declare-fun d!186205 () Bool)

(assert (=> d!186205 (= (array_inv!715 (_values!832 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))) (bvsge (size!3959 (_values!832 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!521906 d!186205))

(declare-fun d!186207 () Bool)

(assert (=> d!186207 (= (valid!522 cacheUp!449) (validCacheMapUp!33 (cache!911 cacheUp!449)))))

(declare-fun bs!60582 () Bool)

(assert (= bs!60582 d!186207))

(assert (=> bs!60582 m!768185))

(assert (=> b!521887 d!186207))

(declare-fun d!186209 () Bool)

(assert (=> d!186209 (= (array_inv!713 (_keys!845 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))) (bvsge (size!3957 (_keys!845 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!521915 d!186209))

(declare-fun d!186211 () Bool)

(assert (=> d!186211 (= (array_inv!716 (_values!830 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))) (bvsge (size!3956 (_values!830 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!521915 d!186211))

(declare-fun e!313124 () Bool)

(declare-fun tp_is_empty!2789 () Bool)

(declare-fun setRes!2117 () Bool)

(declare-fun tp!162662 () Bool)

(declare-fun e!313126 () Bool)

(declare-fun b!521967 () Bool)

(declare-fun inv!6126 (Context!286) Bool)

(assert (=> b!521967 (= e!313126 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))))) e!313124 tp_is_empty!2789 setRes!2117 tp!162662))))

(declare-fun condSetEmpty!2117 () Bool)

(assert (=> b!521967 (= condSetEmpty!2117 (= (_2!3204 (h!10250 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!521968 () Bool)

(declare-fun e!313125 () Bool)

(declare-fun tp!162661 () Bool)

(assert (=> b!521968 (= e!313125 tp!162661)))

(declare-fun setIsEmpty!2117 () Bool)

(assert (=> setIsEmpty!2117 setRes!2117))

(declare-fun tp!162659 () Bool)

(declare-fun setElem!2117 () Context!286)

(declare-fun setNonEmpty!2117 () Bool)

(assert (=> setNonEmpty!2117 (= setRes!2117 (and tp!162659 (inv!6126 setElem!2117) e!313125))))

(declare-fun setRest!2117 () (InoxSet Context!286))

(assert (=> setNonEmpty!2117 (= (_2!3204 (h!10250 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2117 true) setRest!2117))))

(assert (=> b!521890 (= tp!162644 e!313126)))

(declare-fun b!521969 () Bool)

(declare-fun tp!162660 () Bool)

(assert (=> b!521969 (= e!313124 tp!162660)))

(assert (= b!521967 b!521969))

(assert (= (and b!521967 condSetEmpty!2117) setIsEmpty!2117))

(assert (= (and b!521967 (not condSetEmpty!2117)) setNonEmpty!2117))

(assert (= setNonEmpty!2117 b!521968))

(assert (= (and b!521890 ((_ is Cons!4849) (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))) b!521967))

(declare-fun m!768193 () Bool)

(assert (=> b!521967 m!768193))

(declare-fun m!768195 () Bool)

(assert (=> setNonEmpty!2117 m!768195))

(declare-fun b!521970 () Bool)

(declare-fun tp!162666 () Bool)

(declare-fun setRes!2118 () Bool)

(declare-fun e!313127 () Bool)

(declare-fun e!313129 () Bool)

(assert (=> b!521970 (= e!313129 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))))) e!313127 tp_is_empty!2789 setRes!2118 tp!162666))))

(declare-fun condSetEmpty!2118 () Bool)

(assert (=> b!521970 (= condSetEmpty!2118 (= (_2!3204 (h!10250 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!521971 () Bool)

(declare-fun e!313128 () Bool)

(declare-fun tp!162665 () Bool)

(assert (=> b!521971 (= e!313128 tp!162665)))

(declare-fun setIsEmpty!2118 () Bool)

(assert (=> setIsEmpty!2118 setRes!2118))

(declare-fun setElem!2118 () Context!286)

(declare-fun tp!162663 () Bool)

(declare-fun setNonEmpty!2118 () Bool)

(assert (=> setNonEmpty!2118 (= setRes!2118 (and tp!162663 (inv!6126 setElem!2118) e!313128))))

(declare-fun setRest!2118 () (InoxSet Context!286))

(assert (=> setNonEmpty!2118 (= (_2!3204 (h!10250 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2118 true) setRest!2118))))

(assert (=> b!521890 (= tp!162624 e!313129)))

(declare-fun b!521972 () Bool)

(declare-fun tp!162664 () Bool)

(assert (=> b!521972 (= e!313127 tp!162664)))

(assert (= b!521970 b!521972))

(assert (= (and b!521970 condSetEmpty!2118) setIsEmpty!2118))

(assert (= (and b!521970 (not condSetEmpty!2118)) setNonEmpty!2118))

(assert (= setNonEmpty!2118 b!521971))

(assert (= (and b!521890 ((_ is Cons!4849) (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))) b!521970))

(declare-fun m!768197 () Bool)

(assert (=> b!521970 m!768197))

(declare-fun m!768199 () Bool)

(assert (=> setNonEmpty!2118 m!768199))

(declare-fun tp!162674 () Bool)

(declare-fun b!521981 () Bool)

(declare-fun e!313135 () Bool)

(declare-fun tp!162673 () Bool)

(assert (=> b!521981 (= e!313135 (and (inv!6120 (left!4179 (c!100730 input!747))) tp!162673 (inv!6120 (right!4509 (c!100730 input!747))) tp!162674))))

(declare-fun b!521983 () Bool)

(declare-fun e!313134 () Bool)

(declare-fun tp!162675 () Bool)

(assert (=> b!521983 (= e!313134 tp!162675)))

(declare-fun b!521982 () Bool)

(declare-fun inv!6127 (IArray!3167) Bool)

(assert (=> b!521982 (= e!313135 (and (inv!6127 (xs!4218 (c!100730 input!747))) e!313134))))

(assert (=> b!521918 (= tp!162636 (and (inv!6120 (c!100730 input!747)) e!313135))))

(assert (= (and b!521918 ((_ is Node!1583) (c!100730 input!747))) b!521981))

(assert (= b!521982 b!521983))

(assert (= (and b!521918 ((_ is Leaf!2526) (c!100730 input!747))) b!521982))

(declare-fun m!768201 () Bool)

(assert (=> b!521981 m!768201))

(declare-fun m!768203 () Bool)

(assert (=> b!521981 m!768203))

(declare-fun m!768205 () Bool)

(assert (=> b!521982 m!768205))

(assert (=> b!521918 m!768101))

(declare-fun setNonEmpty!2123 () Bool)

(declare-fun setRes!2123 () Bool)

(declare-fun setElem!2123 () Context!286)

(declare-fun e!313145 () Bool)

(declare-fun tp!162690 () Bool)

(assert (=> setNonEmpty!2123 (= setRes!2123 (and tp!162690 (inv!6126 setElem!2123) e!313145))))

(declare-fun mapDefault!2138 () List!4861)

(declare-fun setRest!2124 () (InoxSet Context!286))

(assert (=> setNonEmpty!2123 (= (_1!3205 (_1!3206 (h!10252 mapDefault!2138))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2123 true) setRest!2124))))

(declare-fun setIsEmpty!2123 () Bool)

(assert (=> setIsEmpty!2123 setRes!2123))

(declare-fun setIsEmpty!2124 () Bool)

(declare-fun setRes!2124 () Bool)

(assert (=> setIsEmpty!2124 setRes!2124))

(declare-fun b!521994 () Bool)

(declare-fun e!313147 () Bool)

(declare-fun tp!162696 () Bool)

(assert (=> b!521994 (= e!313147 tp!162696)))

(declare-fun b!521995 () Bool)

(declare-fun e!313144 () Bool)

(declare-fun tp!162695 () Bool)

(assert (=> b!521995 (= e!313144 (and setRes!2123 tp!162695))))

(declare-fun condSetEmpty!2123 () Bool)

(assert (=> b!521995 (= condSetEmpty!2123 (= (_1!3205 (_1!3206 (h!10252 mapDefault!2138))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun condMapEmpty!2138 () Bool)

(assert (=> mapNonEmpty!2134 (= condMapEmpty!2138 (= mapRest!2134 ((as const (Array (_ BitVec 32) List!4861)) mapDefault!2138)))))

(declare-fun mapRes!2138 () Bool)

(assert (=> mapNonEmpty!2134 (= tp!162639 (and e!313144 mapRes!2138))))

(declare-fun mapNonEmpty!2138 () Bool)

(declare-fun tp!162691 () Bool)

(declare-fun e!313146 () Bool)

(assert (=> mapNonEmpty!2138 (= mapRes!2138 (and tp!162691 e!313146))))

(declare-fun mapKey!2138 () (_ BitVec 32))

(declare-fun mapValue!2138 () List!4861)

(declare-fun mapRest!2138 () (Array (_ BitVec 32) List!4861))

(assert (=> mapNonEmpty!2138 (= mapRest!2134 (store mapRest!2138 mapKey!2138 mapValue!2138))))

(declare-fun b!521996 () Bool)

(declare-fun tp!162693 () Bool)

(assert (=> b!521996 (= e!313145 tp!162693)))

(declare-fun setElem!2124 () Context!286)

(declare-fun tp!162692 () Bool)

(declare-fun setNonEmpty!2124 () Bool)

(assert (=> setNonEmpty!2124 (= setRes!2124 (and tp!162692 (inv!6126 setElem!2124) e!313147))))

(declare-fun setRest!2123 () (InoxSet Context!286))

(assert (=> setNonEmpty!2124 (= (_1!3205 (_1!3206 (h!10252 mapValue!2138))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2124 true) setRest!2123))))

(declare-fun mapIsEmpty!2138 () Bool)

(assert (=> mapIsEmpty!2138 mapRes!2138))

(declare-fun b!521997 () Bool)

(declare-fun tp!162694 () Bool)

(assert (=> b!521997 (= e!313146 (and setRes!2124 tp!162694))))

(declare-fun condSetEmpty!2124 () Bool)

(assert (=> b!521997 (= condSetEmpty!2124 (= (_1!3205 (_1!3206 (h!10252 mapValue!2138))) ((as const (Array Context!286 Bool)) false)))))

(assert (= (and mapNonEmpty!2134 condMapEmpty!2138) mapIsEmpty!2138))

(assert (= (and mapNonEmpty!2134 (not condMapEmpty!2138)) mapNonEmpty!2138))

(assert (= (and b!521997 condSetEmpty!2124) setIsEmpty!2124))

(assert (= (and b!521997 (not condSetEmpty!2124)) setNonEmpty!2124))

(assert (= setNonEmpty!2124 b!521994))

(assert (= (and mapNonEmpty!2138 ((_ is Cons!4851) mapValue!2138)) b!521997))

(assert (= (and b!521995 condSetEmpty!2123) setIsEmpty!2123))

(assert (= (and b!521995 (not condSetEmpty!2123)) setNonEmpty!2123))

(assert (= setNonEmpty!2123 b!521996))

(assert (= (and mapNonEmpty!2134 ((_ is Cons!4851) mapDefault!2138)) b!521995))

(declare-fun m!768207 () Bool)

(assert (=> setNonEmpty!2123 m!768207))

(declare-fun m!768209 () Bool)

(assert (=> mapNonEmpty!2138 m!768209))

(declare-fun m!768211 () Bool)

(assert (=> setNonEmpty!2124 m!768211))

(declare-fun b!522004 () Bool)

(declare-fun e!313153 () Bool)

(declare-fun setRes!2127 () Bool)

(declare-fun tp!162705 () Bool)

(assert (=> b!522004 (= e!313153 (and setRes!2127 tp!162705))))

(declare-fun condSetEmpty!2127 () Bool)

(assert (=> b!522004 (= condSetEmpty!2127 (= (_1!3205 (_1!3206 (h!10252 mapValue!2133))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2127 () Bool)

(assert (=> setIsEmpty!2127 setRes!2127))

(declare-fun e!313152 () Bool)

(declare-fun setElem!2127 () Context!286)

(declare-fun tp!162703 () Bool)

(declare-fun setNonEmpty!2127 () Bool)

(assert (=> setNonEmpty!2127 (= setRes!2127 (and tp!162703 (inv!6126 setElem!2127) e!313152))))

(declare-fun setRest!2127 () (InoxSet Context!286))

(assert (=> setNonEmpty!2127 (= (_1!3205 (_1!3206 (h!10252 mapValue!2133))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2127 true) setRest!2127))))

(assert (=> mapNonEmpty!2134 (= tp!162637 e!313153)))

(declare-fun b!522005 () Bool)

(declare-fun tp!162704 () Bool)

(assert (=> b!522005 (= e!313152 tp!162704)))

(assert (= (and b!522004 condSetEmpty!2127) setIsEmpty!2127))

(assert (= (and b!522004 (not condSetEmpty!2127)) setNonEmpty!2127))

(assert (= setNonEmpty!2127 b!522005))

(assert (= (and mapNonEmpty!2134 ((_ is Cons!4851) mapValue!2133)) b!522004))

(declare-fun m!768213 () Bool)

(assert (=> setNonEmpty!2127 m!768213))

(declare-fun b!522016 () Bool)

(declare-fun b_free!13749 () Bool)

(declare-fun b_next!13765 () Bool)

(assert (=> b!522016 (= b_free!13749 (not b_next!13765))))

(declare-fun tp!162715 () Bool)

(declare-fun b_and!51243 () Bool)

(assert (=> b!522016 (= tp!162715 b_and!51243)))

(declare-fun b_free!13751 () Bool)

(declare-fun b_next!13767 () Bool)

(assert (=> b!522016 (= b_free!13751 (not b_next!13767))))

(declare-fun tp!162716 () Bool)

(declare-fun b_and!51245 () Bool)

(assert (=> b!522016 (= tp!162716 b_and!51245)))

(declare-fun e!313162 () Bool)

(assert (=> b!522016 (= e!313162 (and tp!162715 tp!162716))))

(declare-fun b!522015 () Bool)

(declare-fun tp!162714 () Bool)

(declare-fun e!313163 () Bool)

(assert (=> b!522015 (= e!313163 (and tp!162714 (inv!6116 (tag!1142 (h!10254 (t!73453 rules!1345)))) (inv!6119 (transformation!880 (h!10254 (t!73453 rules!1345)))) e!313162))))

(declare-fun b!522014 () Bool)

(declare-fun e!313164 () Bool)

(declare-fun tp!162717 () Bool)

(assert (=> b!522014 (= e!313164 (and e!313163 tp!162717))))

(assert (=> b!521910 (= tp!162641 e!313164)))

(assert (= b!522015 b!522016))

(assert (= b!522014 b!522015))

(assert (= (and b!521910 ((_ is Cons!4853) (t!73453 rules!1345))) b!522014))

(declare-fun m!768215 () Bool)

(assert (=> b!522015 m!768215))

(declare-fun m!768217 () Bool)

(assert (=> b!522015 m!768217))

(declare-fun b!522017 () Bool)

(declare-fun e!313167 () Bool)

(declare-fun setRes!2128 () Bool)

(declare-fun tp!162720 () Bool)

(assert (=> b!522017 (= e!313167 (and setRes!2128 tp!162720))))

(declare-fun condSetEmpty!2128 () Bool)

(assert (=> b!522017 (= condSetEmpty!2128 (= (_1!3205 (_1!3206 (h!10252 mapDefault!2133))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2128 () Bool)

(assert (=> setIsEmpty!2128 setRes!2128))

(declare-fun setNonEmpty!2128 () Bool)

(declare-fun setElem!2128 () Context!286)

(declare-fun tp!162718 () Bool)

(declare-fun e!313166 () Bool)

(assert (=> setNonEmpty!2128 (= setRes!2128 (and tp!162718 (inv!6126 setElem!2128) e!313166))))

(declare-fun setRest!2128 () (InoxSet Context!286))

(assert (=> setNonEmpty!2128 (= (_1!3205 (_1!3206 (h!10252 mapDefault!2133))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2128 true) setRest!2128))))

(assert (=> b!521899 (= tp!162640 e!313167)))

(declare-fun b!522018 () Bool)

(declare-fun tp!162719 () Bool)

(assert (=> b!522018 (= e!313166 tp!162719)))

(assert (= (and b!522017 condSetEmpty!2128) setIsEmpty!2128))

(assert (= (and b!522017 (not condSetEmpty!2128)) setNonEmpty!2128))

(assert (= setNonEmpty!2128 b!522018))

(assert (= (and b!521899 ((_ is Cons!4851) mapDefault!2133)) b!522017))

(declare-fun m!768219 () Bool)

(assert (=> setNonEmpty!2128 m!768219))

(declare-fun b!522031 () Bool)

(declare-fun e!313170 () Bool)

(declare-fun tp!162735 () Bool)

(assert (=> b!522031 (= e!313170 tp!162735)))

(declare-fun b!522030 () Bool)

(declare-fun tp!162731 () Bool)

(declare-fun tp!162734 () Bool)

(assert (=> b!522030 (= e!313170 (and tp!162731 tp!162734))))

(assert (=> b!521909 (= tp!162631 e!313170)))

(declare-fun b!522032 () Bool)

(declare-fun tp!162733 () Bool)

(declare-fun tp!162732 () Bool)

(assert (=> b!522032 (= e!313170 (and tp!162733 tp!162732))))

(declare-fun b!522029 () Bool)

(assert (=> b!522029 (= e!313170 tp_is_empty!2789)))

(assert (= (and b!521909 ((_ is ElementMatch!1205) (regex!880 (h!10254 rules!1345)))) b!522029))

(assert (= (and b!521909 ((_ is Concat!2109) (regex!880 (h!10254 rules!1345)))) b!522030))

(assert (= (and b!521909 ((_ is Star!1205) (regex!880 (h!10254 rules!1345)))) b!522031))

(assert (= (and b!521909 ((_ is Union!1205) (regex!880 (h!10254 rules!1345)))) b!522032))

(declare-fun e!313172 () Bool)

(declare-fun b!522033 () Bool)

(declare-fun tp!162736 () Bool)

(declare-fun tp!162737 () Bool)

(assert (=> b!522033 (= e!313172 (and (inv!6120 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) tp!162736 (inv!6120 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) tp!162737))))

(declare-fun b!522035 () Bool)

(declare-fun e!313171 () Bool)

(declare-fun tp!162738 () Bool)

(assert (=> b!522035 (= e!313171 tp!162738)))

(declare-fun b!522034 () Bool)

(assert (=> b!522034 (= e!313172 (and (inv!6127 (xs!4218 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) e!313171))))

(assert (=> b!521912 (= tp!162650 (and (inv!6120 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) e!313172))))

(assert (= (and b!521912 ((_ is Node!1583) (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) b!522033))

(assert (= b!522034 b!522035))

(assert (= (and b!521912 ((_ is Leaf!2526) (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) b!522034))

(declare-fun m!768221 () Bool)

(assert (=> b!522033 m!768221))

(declare-fun m!768223 () Bool)

(assert (=> b!522033 m!768223))

(declare-fun m!768225 () Bool)

(assert (=> b!522034 m!768225))

(assert (=> b!521912 m!768107))

(declare-fun b!522036 () Bool)

(declare-fun e!313175 () Bool)

(declare-fun e!313173 () Bool)

(declare-fun setRes!2129 () Bool)

(declare-fun tp!162742 () Bool)

(assert (=> b!522036 (= e!313175 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 mapDefault!2134)))) e!313173 tp_is_empty!2789 setRes!2129 tp!162742))))

(declare-fun condSetEmpty!2129 () Bool)

(assert (=> b!522036 (= condSetEmpty!2129 (= (_2!3204 (h!10250 mapDefault!2134)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522037 () Bool)

(declare-fun e!313174 () Bool)

(declare-fun tp!162741 () Bool)

(assert (=> b!522037 (= e!313174 tp!162741)))

(declare-fun setIsEmpty!2129 () Bool)

(assert (=> setIsEmpty!2129 setRes!2129))

(declare-fun setElem!2129 () Context!286)

(declare-fun setNonEmpty!2129 () Bool)

(declare-fun tp!162739 () Bool)

(assert (=> setNonEmpty!2129 (= setRes!2129 (and tp!162739 (inv!6126 setElem!2129) e!313174))))

(declare-fun setRest!2129 () (InoxSet Context!286))

(assert (=> setNonEmpty!2129 (= (_2!3204 (h!10250 mapDefault!2134)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2129 true) setRest!2129))))

(assert (=> b!521900 (= tp!162633 e!313175)))

(declare-fun b!522038 () Bool)

(declare-fun tp!162740 () Bool)

(assert (=> b!522038 (= e!313173 tp!162740)))

(assert (= b!522036 b!522038))

(assert (= (and b!522036 condSetEmpty!2129) setIsEmpty!2129))

(assert (= (and b!522036 (not condSetEmpty!2129)) setNonEmpty!2129))

(assert (= setNonEmpty!2129 b!522037))

(assert (= (and b!521900 ((_ is Cons!4849) mapDefault!2134)) b!522036))

(declare-fun m!768227 () Bool)

(assert (=> b!522036 m!768227))

(declare-fun m!768229 () Bool)

(assert (=> setNonEmpty!2129 m!768229))

(declare-fun setRes!2135 () Bool)

(declare-fun setElem!2135 () Context!286)

(declare-fun setNonEmpty!2134 () Bool)

(declare-fun tp!162764 () Bool)

(declare-fun e!313193 () Bool)

(assert (=> setNonEmpty!2134 (= setRes!2135 (and tp!162764 (inv!6126 setElem!2135) e!313193))))

(declare-fun mapValue!2141 () List!4859)

(declare-fun setRest!2134 () (InoxSet Context!286))

(assert (=> setNonEmpty!2134 (= (_2!3204 (h!10250 mapValue!2141)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2135 true) setRest!2134))))

(declare-fun mapIsEmpty!2141 () Bool)

(declare-fun mapRes!2141 () Bool)

(assert (=> mapIsEmpty!2141 mapRes!2141))

(declare-fun b!522053 () Bool)

(declare-fun e!313191 () Bool)

(declare-fun tp!162768 () Bool)

(declare-fun e!313190 () Bool)

(assert (=> b!522053 (= e!313191 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 mapValue!2141)))) e!313190 tp_is_empty!2789 setRes!2135 tp!162768))))

(declare-fun condSetEmpty!2135 () Bool)

(assert (=> b!522053 (= condSetEmpty!2135 (= (_2!3204 (h!10250 mapValue!2141)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522054 () Bool)

(declare-fun e!313192 () Bool)

(declare-fun tp!162765 () Bool)

(assert (=> b!522054 (= e!313192 tp!162765)))

(declare-fun b!522055 () Bool)

(declare-fun tp!162766 () Bool)

(assert (=> b!522055 (= e!313193 tp!162766)))

(declare-fun condMapEmpty!2141 () Bool)

(declare-fun mapDefault!2141 () List!4859)

(assert (=> mapNonEmpty!2135 (= condMapEmpty!2141 (= mapRest!2133 ((as const (Array (_ BitVec 32) List!4859)) mapDefault!2141)))))

(declare-fun e!313189 () Bool)

(assert (=> mapNonEmpty!2135 (= tp!162648 (and e!313189 mapRes!2141))))

(declare-fun setIsEmpty!2134 () Bool)

(declare-fun setRes!2134 () Bool)

(assert (=> setIsEmpty!2134 setRes!2134))

(declare-fun mapNonEmpty!2141 () Bool)

(declare-fun tp!162767 () Bool)

(assert (=> mapNonEmpty!2141 (= mapRes!2141 (and tp!162767 e!313191))))

(declare-fun mapRest!2141 () (Array (_ BitVec 32) List!4859))

(declare-fun mapKey!2141 () (_ BitVec 32))

(assert (=> mapNonEmpty!2141 (= mapRest!2133 (store mapRest!2141 mapKey!2141 mapValue!2141))))

(declare-fun e!313188 () Bool)

(declare-fun b!522056 () Bool)

(declare-fun tp!162761 () Bool)

(assert (=> b!522056 (= e!313189 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 mapDefault!2141)))) e!313188 tp_is_empty!2789 setRes!2134 tp!162761))))

(declare-fun condSetEmpty!2134 () Bool)

(assert (=> b!522056 (= condSetEmpty!2134 (= (_2!3204 (h!10250 mapDefault!2141)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setElem!2134 () Context!286)

(declare-fun tp!162769 () Bool)

(declare-fun setNonEmpty!2135 () Bool)

(assert (=> setNonEmpty!2135 (= setRes!2134 (and tp!162769 (inv!6126 setElem!2134) e!313192))))

(declare-fun setRest!2135 () (InoxSet Context!286))

(assert (=> setNonEmpty!2135 (= (_2!3204 (h!10250 mapDefault!2141)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2134 true) setRest!2135))))

(declare-fun b!522057 () Bool)

(declare-fun tp!162763 () Bool)

(assert (=> b!522057 (= e!313188 tp!162763)))

(declare-fun setIsEmpty!2135 () Bool)

(assert (=> setIsEmpty!2135 setRes!2135))

(declare-fun b!522058 () Bool)

(declare-fun tp!162762 () Bool)

(assert (=> b!522058 (= e!313190 tp!162762)))

(assert (= (and mapNonEmpty!2135 condMapEmpty!2141) mapIsEmpty!2141))

(assert (= (and mapNonEmpty!2135 (not condMapEmpty!2141)) mapNonEmpty!2141))

(assert (= b!522053 b!522058))

(assert (= (and b!522053 condSetEmpty!2135) setIsEmpty!2135))

(assert (= (and b!522053 (not condSetEmpty!2135)) setNonEmpty!2134))

(assert (= setNonEmpty!2134 b!522055))

(assert (= (and mapNonEmpty!2141 ((_ is Cons!4849) mapValue!2141)) b!522053))

(assert (= b!522056 b!522057))

(assert (= (and b!522056 condSetEmpty!2134) setIsEmpty!2134))

(assert (= (and b!522056 (not condSetEmpty!2134)) setNonEmpty!2135))

(assert (= setNonEmpty!2135 b!522054))

(assert (= (and mapNonEmpty!2135 ((_ is Cons!4849) mapDefault!2141)) b!522056))

(declare-fun m!768231 () Bool)

(assert (=> setNonEmpty!2135 m!768231))

(declare-fun m!768233 () Bool)

(assert (=> mapNonEmpty!2141 m!768233))

(declare-fun m!768235 () Bool)

(assert (=> setNonEmpty!2134 m!768235))

(declare-fun m!768237 () Bool)

(assert (=> b!522053 m!768237))

(declare-fun m!768239 () Bool)

(assert (=> b!522056 m!768239))

(declare-fun e!313194 () Bool)

(declare-fun b!522059 () Bool)

(declare-fun setRes!2136 () Bool)

(declare-fun e!313196 () Bool)

(declare-fun tp!162773 () Bool)

(assert (=> b!522059 (= e!313196 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 mapValue!2135)))) e!313194 tp_is_empty!2789 setRes!2136 tp!162773))))

(declare-fun condSetEmpty!2136 () Bool)

(assert (=> b!522059 (= condSetEmpty!2136 (= (_2!3204 (h!10250 mapValue!2135)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522060 () Bool)

(declare-fun e!313195 () Bool)

(declare-fun tp!162772 () Bool)

(assert (=> b!522060 (= e!313195 tp!162772)))

(declare-fun setIsEmpty!2136 () Bool)

(assert (=> setIsEmpty!2136 setRes!2136))

(declare-fun setNonEmpty!2136 () Bool)

(declare-fun tp!162770 () Bool)

(declare-fun setElem!2136 () Context!286)

(assert (=> setNonEmpty!2136 (= setRes!2136 (and tp!162770 (inv!6126 setElem!2136) e!313195))))

(declare-fun setRest!2136 () (InoxSet Context!286))

(assert (=> setNonEmpty!2136 (= (_2!3204 (h!10250 mapValue!2135)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2136 true) setRest!2136))))

(assert (=> mapNonEmpty!2135 (= tp!162638 e!313196)))

(declare-fun b!522061 () Bool)

(declare-fun tp!162771 () Bool)

(assert (=> b!522061 (= e!313194 tp!162771)))

(assert (= b!522059 b!522061))

(assert (= (and b!522059 condSetEmpty!2136) setIsEmpty!2136))

(assert (= (and b!522059 (not condSetEmpty!2136)) setNonEmpty!2136))

(assert (= setNonEmpty!2136 b!522060))

(assert (= (and mapNonEmpty!2135 ((_ is Cons!4849) mapValue!2135)) b!522059))

(declare-fun m!768241 () Bool)

(assert (=> b!522059 m!768241))

(declare-fun m!768243 () Bool)

(assert (=> setNonEmpty!2136 m!768243))

(declare-fun setNonEmpty!2141 () Bool)

(declare-fun tp!162801 () Bool)

(declare-fun setElem!2141 () Context!286)

(declare-fun setRes!2141 () Bool)

(declare-fun e!313213 () Bool)

(assert (=> setNonEmpty!2141 (= setRes!2141 (and tp!162801 (inv!6126 setElem!2141) e!313213))))

(declare-fun mapValue!2144 () List!4858)

(declare-fun setRest!2142 () (InoxSet Context!286))

(assert (=> setNonEmpty!2141 (= (_2!3202 (h!10249 mapValue!2144)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2141 true) setRest!2142))))

(declare-fun b!522076 () Bool)

(declare-fun e!313211 () Bool)

(declare-fun tp!162803 () Bool)

(assert (=> b!522076 (= e!313211 tp!162803)))

(declare-fun e!313212 () Bool)

(declare-fun tp!162805 () Bool)

(declare-fun tp!162800 () Bool)

(declare-fun setRes!2142 () Bool)

(declare-fun mapDefault!2144 () List!4858)

(declare-fun b!522077 () Bool)

(declare-fun e!313209 () Bool)

(assert (=> b!522077 (= e!313212 (and tp!162805 (inv!6126 (_2!3201 (_1!3202 (h!10249 mapDefault!2144)))) e!313209 tp_is_empty!2789 setRes!2142 tp!162800))))

(declare-fun condSetEmpty!2142 () Bool)

(assert (=> b!522077 (= condSetEmpty!2142 (= (_2!3202 (h!10249 mapDefault!2144)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522078 () Bool)

(declare-fun tp!162796 () Bool)

(assert (=> b!522078 (= e!313209 tp!162796)))

(declare-fun b!522079 () Bool)

(declare-fun tp!162799 () Bool)

(assert (=> b!522079 (= e!313213 tp!162799)))

(declare-fun b!522080 () Bool)

(declare-fun tp!162806 () Bool)

(declare-fun e!313210 () Bool)

(declare-fun tp!162802 () Bool)

(assert (=> b!522080 (= e!313210 (and tp!162806 (inv!6126 (_2!3201 (_1!3202 (h!10249 mapValue!2144)))) e!313211 tp_is_empty!2789 setRes!2141 tp!162802))))

(declare-fun condSetEmpty!2141 () Bool)

(assert (=> b!522080 (= condSetEmpty!2141 (= (_2!3202 (h!10249 mapValue!2144)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2141 () Bool)

(assert (=> setIsEmpty!2141 setRes!2141))

(declare-fun condMapEmpty!2144 () Bool)

(assert (=> mapNonEmpty!2133 (= condMapEmpty!2144 (= mapRest!2135 ((as const (Array (_ BitVec 32) List!4858)) mapDefault!2144)))))

(declare-fun mapRes!2144 () Bool)

(assert (=> mapNonEmpty!2133 (= tp!162645 (and e!313212 mapRes!2144))))

(declare-fun mapIsEmpty!2144 () Bool)

(assert (=> mapIsEmpty!2144 mapRes!2144))

(declare-fun tp!162797 () Bool)

(declare-fun setElem!2142 () Context!286)

(declare-fun e!313214 () Bool)

(declare-fun setNonEmpty!2142 () Bool)

(assert (=> setNonEmpty!2142 (= setRes!2142 (and tp!162797 (inv!6126 setElem!2142) e!313214))))

(declare-fun setRest!2141 () (InoxSet Context!286))

(assert (=> setNonEmpty!2142 (= (_2!3202 (h!10249 mapDefault!2144)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2142 true) setRest!2141))))

(declare-fun mapNonEmpty!2144 () Bool)

(declare-fun tp!162798 () Bool)

(assert (=> mapNonEmpty!2144 (= mapRes!2144 (and tp!162798 e!313210))))

(declare-fun mapRest!2144 () (Array (_ BitVec 32) List!4858))

(declare-fun mapKey!2144 () (_ BitVec 32))

(assert (=> mapNonEmpty!2144 (= mapRest!2135 (store mapRest!2144 mapKey!2144 mapValue!2144))))

(declare-fun b!522081 () Bool)

(declare-fun tp!162804 () Bool)

(assert (=> b!522081 (= e!313214 tp!162804)))

(declare-fun setIsEmpty!2142 () Bool)

(assert (=> setIsEmpty!2142 setRes!2142))

(assert (= (and mapNonEmpty!2133 condMapEmpty!2144) mapIsEmpty!2144))

(assert (= (and mapNonEmpty!2133 (not condMapEmpty!2144)) mapNonEmpty!2144))

(assert (= b!522080 b!522076))

(assert (= (and b!522080 condSetEmpty!2141) setIsEmpty!2141))

(assert (= (and b!522080 (not condSetEmpty!2141)) setNonEmpty!2141))

(assert (= setNonEmpty!2141 b!522079))

(assert (= (and mapNonEmpty!2144 ((_ is Cons!4848) mapValue!2144)) b!522080))

(assert (= b!522077 b!522078))

(assert (= (and b!522077 condSetEmpty!2142) setIsEmpty!2142))

(assert (= (and b!522077 (not condSetEmpty!2142)) setNonEmpty!2142))

(assert (= setNonEmpty!2142 b!522081))

(assert (= (and mapNonEmpty!2133 ((_ is Cons!4848) mapDefault!2144)) b!522077))

(declare-fun m!768245 () Bool)

(assert (=> b!522080 m!768245))

(declare-fun m!768247 () Bool)

(assert (=> mapNonEmpty!2144 m!768247))

(declare-fun m!768249 () Bool)

(assert (=> b!522077 m!768249))

(declare-fun m!768251 () Bool)

(assert (=> setNonEmpty!2142 m!768251))

(declare-fun m!768253 () Bool)

(assert (=> setNonEmpty!2141 m!768253))

(declare-fun e!313221 () Bool)

(assert (=> mapNonEmpty!2133 (= tp!162626 e!313221)))

(declare-fun setIsEmpty!2145 () Bool)

(declare-fun setRes!2145 () Bool)

(assert (=> setIsEmpty!2145 setRes!2145))

(declare-fun b!522090 () Bool)

(declare-fun e!313223 () Bool)

(declare-fun tp!162817 () Bool)

(assert (=> b!522090 (= e!313223 tp!162817)))

(declare-fun b!522091 () Bool)

(declare-fun tp!162818 () Bool)

(declare-fun tp!162820 () Bool)

(declare-fun e!313222 () Bool)

(assert (=> b!522091 (= e!313221 (and tp!162820 (inv!6126 (_2!3201 (_1!3202 (h!10249 mapValue!2134)))) e!313222 tp_is_empty!2789 setRes!2145 tp!162818))))

(declare-fun condSetEmpty!2145 () Bool)

(assert (=> b!522091 (= condSetEmpty!2145 (= (_2!3202 (h!10249 mapValue!2134)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522092 () Bool)

(declare-fun tp!162819 () Bool)

(assert (=> b!522092 (= e!313222 tp!162819)))

(declare-fun tp!162821 () Bool)

(declare-fun setElem!2145 () Context!286)

(declare-fun setNonEmpty!2145 () Bool)

(assert (=> setNonEmpty!2145 (= setRes!2145 (and tp!162821 (inv!6126 setElem!2145) e!313223))))

(declare-fun setRest!2145 () (InoxSet Context!286))

(assert (=> setNonEmpty!2145 (= (_2!3202 (h!10249 mapValue!2134)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2145 true) setRest!2145))))

(assert (= b!522091 b!522092))

(assert (= (and b!522091 condSetEmpty!2145) setIsEmpty!2145))

(assert (= (and b!522091 (not condSetEmpty!2145)) setNonEmpty!2145))

(assert (= setNonEmpty!2145 b!522090))

(assert (= (and mapNonEmpty!2133 ((_ is Cons!4848) mapValue!2134)) b!522091))

(declare-fun m!768255 () Bool)

(assert (=> b!522091 m!768255))

(declare-fun m!768257 () Bool)

(assert (=> setNonEmpty!2145 m!768257))

(declare-fun e!313224 () Bool)

(assert (=> b!521896 (= tp!162642 e!313224)))

(declare-fun setIsEmpty!2146 () Bool)

(declare-fun setRes!2146 () Bool)

(assert (=> setIsEmpty!2146 setRes!2146))

(declare-fun b!522093 () Bool)

(declare-fun e!313226 () Bool)

(declare-fun tp!162822 () Bool)

(assert (=> b!522093 (= e!313226 tp!162822)))

(declare-fun tp!162823 () Bool)

(declare-fun e!313225 () Bool)

(declare-fun tp!162825 () Bool)

(declare-fun b!522094 () Bool)

(assert (=> b!522094 (= e!313224 (and tp!162825 (inv!6126 (_2!3201 (_1!3202 (h!10249 mapDefault!2135)))) e!313225 tp_is_empty!2789 setRes!2146 tp!162823))))

(declare-fun condSetEmpty!2146 () Bool)

(assert (=> b!522094 (= condSetEmpty!2146 (= (_2!3202 (h!10249 mapDefault!2135)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522095 () Bool)

(declare-fun tp!162824 () Bool)

(assert (=> b!522095 (= e!313225 tp!162824)))

(declare-fun tp!162826 () Bool)

(declare-fun setElem!2146 () Context!286)

(declare-fun setNonEmpty!2146 () Bool)

(assert (=> setNonEmpty!2146 (= setRes!2146 (and tp!162826 (inv!6126 setElem!2146) e!313226))))

(declare-fun setRest!2146 () (InoxSet Context!286))

(assert (=> setNonEmpty!2146 (= (_2!3202 (h!10249 mapDefault!2135)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2146 true) setRest!2146))))

(assert (= b!522094 b!522095))

(assert (= (and b!522094 condSetEmpty!2146) setIsEmpty!2146))

(assert (= (and b!522094 (not condSetEmpty!2146)) setNonEmpty!2146))

(assert (= setNonEmpty!2146 b!522093))

(assert (= (and b!521896 ((_ is Cons!4848) mapDefault!2135)) b!522094))

(declare-fun m!768259 () Bool)

(assert (=> b!522094 m!768259))

(declare-fun m!768261 () Bool)

(assert (=> setNonEmpty!2146 m!768261))

(declare-fun b!522096 () Bool)

(declare-fun e!313228 () Bool)

(declare-fun setRes!2147 () Bool)

(declare-fun tp!162829 () Bool)

(assert (=> b!522096 (= e!313228 (and setRes!2147 tp!162829))))

(declare-fun condSetEmpty!2147 () Bool)

(assert (=> b!522096 (= condSetEmpty!2147 (= (_1!3205 (_1!3206 (h!10252 (zeroValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2147 () Bool)

(assert (=> setIsEmpty!2147 setRes!2147))

(declare-fun setElem!2147 () Context!286)

(declare-fun setNonEmpty!2147 () Bool)

(declare-fun tp!162827 () Bool)

(declare-fun e!313227 () Bool)

(assert (=> setNonEmpty!2147 (= setRes!2147 (and tp!162827 (inv!6126 setElem!2147) e!313227))))

(declare-fun setRest!2147 () (InoxSet Context!286))

(assert (=> setNonEmpty!2147 (= (_1!3205 (_1!3206 (h!10252 (zeroValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2147 true) setRest!2147))))

(assert (=> b!521906 (= tp!162635 e!313228)))

(declare-fun b!522097 () Bool)

(declare-fun tp!162828 () Bool)

(assert (=> b!522097 (= e!313227 tp!162828)))

(assert (= (and b!522096 condSetEmpty!2147) setIsEmpty!2147))

(assert (= (and b!522096 (not condSetEmpty!2147)) setNonEmpty!2147))

(assert (= setNonEmpty!2147 b!522097))

(assert (= (and b!521906 ((_ is Cons!4851) (zeroValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56)))))))) b!522096))

(declare-fun m!768263 () Bool)

(assert (=> setNonEmpty!2147 m!768263))

(declare-fun b!522098 () Bool)

(declare-fun e!313230 () Bool)

(declare-fun setRes!2148 () Bool)

(declare-fun tp!162832 () Bool)

(assert (=> b!522098 (= e!313230 (and setRes!2148 tp!162832))))

(declare-fun condSetEmpty!2148 () Bool)

(assert (=> b!522098 (= condSetEmpty!2148 (= (_1!3205 (_1!3206 (h!10252 (minValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2148 () Bool)

(assert (=> setIsEmpty!2148 setRes!2148))

(declare-fun tp!162830 () Bool)

(declare-fun e!313229 () Bool)

(declare-fun setNonEmpty!2148 () Bool)

(declare-fun setElem!2148 () Context!286)

(assert (=> setNonEmpty!2148 (= setRes!2148 (and tp!162830 (inv!6126 setElem!2148) e!313229))))

(declare-fun setRest!2148 () (InoxSet Context!286))

(assert (=> setNonEmpty!2148 (= (_1!3205 (_1!3206 (h!10252 (minValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2148 true) setRest!2148))))

(assert (=> b!521906 (= tp!162643 e!313230)))

(declare-fun b!522099 () Bool)

(declare-fun tp!162831 () Bool)

(assert (=> b!522099 (= e!313229 tp!162831)))

(assert (= (and b!522098 condSetEmpty!2148) setIsEmpty!2148))

(assert (= (and b!522098 (not condSetEmpty!2148)) setNonEmpty!2148))

(assert (= setNonEmpty!2148 b!522099))

(assert (= (and b!521906 ((_ is Cons!4851) (minValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56)))))))) b!522098))

(declare-fun m!768265 () Bool)

(assert (=> setNonEmpty!2148 m!768265))

(declare-fun e!313231 () Bool)

(assert (=> b!521915 (= tp!162629 e!313231)))

(declare-fun setIsEmpty!2149 () Bool)

(declare-fun setRes!2149 () Bool)

(assert (=> setIsEmpty!2149 setRes!2149))

(declare-fun b!522100 () Bool)

(declare-fun e!313233 () Bool)

(declare-fun tp!162833 () Bool)

(assert (=> b!522100 (= e!313233 tp!162833)))

(declare-fun b!522101 () Bool)

(declare-fun tp!162836 () Bool)

(declare-fun e!313232 () Bool)

(declare-fun tp!162834 () Bool)

(assert (=> b!522101 (= e!313231 (and tp!162836 (inv!6126 (_2!3201 (_1!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))))) e!313232 tp_is_empty!2789 setRes!2149 tp!162834))))

(declare-fun condSetEmpty!2149 () Bool)

(assert (=> b!522101 (= condSetEmpty!2149 (= (_2!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522102 () Bool)

(declare-fun tp!162835 () Bool)

(assert (=> b!522102 (= e!313232 tp!162835)))

(declare-fun tp!162837 () Bool)

(declare-fun setElem!2149 () Context!286)

(declare-fun setNonEmpty!2149 () Bool)

(assert (=> setNonEmpty!2149 (= setRes!2149 (and tp!162837 (inv!6126 setElem!2149) e!313233))))

(declare-fun setRest!2149 () (InoxSet Context!286))

(assert (=> setNonEmpty!2149 (= (_2!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2149 true) setRest!2149))))

(assert (= b!522101 b!522102))

(assert (= (and b!522101 condSetEmpty!2149) setIsEmpty!2149))

(assert (= (and b!522101 (not condSetEmpty!2149)) setNonEmpty!2149))

(assert (= setNonEmpty!2149 b!522100))

(assert (= (and b!521915 ((_ is Cons!4848) (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))) b!522101))

(declare-fun m!768267 () Bool)

(assert (=> b!522101 m!768267))

(declare-fun m!768269 () Bool)

(assert (=> setNonEmpty!2149 m!768269))

(declare-fun e!313234 () Bool)

(assert (=> b!521915 (= tp!162625 e!313234)))

(declare-fun setIsEmpty!2150 () Bool)

(declare-fun setRes!2150 () Bool)

(assert (=> setIsEmpty!2150 setRes!2150))

(declare-fun b!522103 () Bool)

(declare-fun e!313236 () Bool)

(declare-fun tp!162838 () Bool)

(assert (=> b!522103 (= e!313236 tp!162838)))

(declare-fun b!522104 () Bool)

(declare-fun tp!162839 () Bool)

(declare-fun tp!162841 () Bool)

(declare-fun e!313235 () Bool)

(assert (=> b!522104 (= e!313234 (and tp!162841 (inv!6126 (_2!3201 (_1!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))))) e!313235 tp_is_empty!2789 setRes!2150 tp!162839))))

(declare-fun condSetEmpty!2150 () Bool)

(assert (=> b!522104 (= condSetEmpty!2150 (= (_2!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522105 () Bool)

(declare-fun tp!162840 () Bool)

(assert (=> b!522105 (= e!313235 tp!162840)))

(declare-fun setElem!2150 () Context!286)

(declare-fun setNonEmpty!2150 () Bool)

(declare-fun tp!162842 () Bool)

(assert (=> setNonEmpty!2150 (= setRes!2150 (and tp!162842 (inv!6126 setElem!2150) e!313236))))

(declare-fun setRest!2150 () (InoxSet Context!286))

(assert (=> setNonEmpty!2150 (= (_2!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2150 true) setRest!2150))))

(assert (= b!522104 b!522105))

(assert (= (and b!522104 condSetEmpty!2150) setIsEmpty!2150))

(assert (= (and b!522104 (not condSetEmpty!2150)) setNonEmpty!2150))

(assert (= setNonEmpty!2150 b!522103))

(assert (= (and b!521915 ((_ is Cons!4848) (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))) b!522104))

(declare-fun m!768271 () Bool)

(assert (=> b!522104 m!768271))

(declare-fun m!768273 () Bool)

(assert (=> setNonEmpty!2150 m!768273))

(check-sat (not b!522092) (not b!522033) (not b!522097) (not b!521995) (not b_next!13751) (not setNonEmpty!2129) (not setNonEmpty!2128) b_and!51241 b_and!51235 (not b!522034) (not d!186173) (not b!521968) (not setNonEmpty!2142) (not b!521971) (not b!522017) (not setNonEmpty!2145) (not b_next!13759) (not setNonEmpty!2124) (not setNonEmpty!2146) (not b!521942) (not b!521983) (not b!522031) (not b!521956) (not d!186175) (not d!186207) (not setNonEmpty!2150) (not b!521926) (not b!522079) (not b!522053) (not setNonEmpty!2147) (not b!521946) b_and!51245 (not b_next!13753) (not b!522005) b_and!51243 (not b!521969) (not b!522058) (not b!522103) (not b_next!13763) (not setNonEmpty!2123) (not b!522015) (not mapNonEmpty!2141) (not b_next!13765) (not b!522076) tp_is_empty!2789 (not b!521928) (not b!521912) (not setNonEmpty!2117) (not b!522077) (not b!522038) (not b!522055) (not b!521970) (not b!522035) (not d!186199) (not mapNonEmpty!2138) (not b!521949) (not b!522096) (not b!521997) (not setNonEmpty!2118) (not b!522057) b_and!51229 (not d!186177) (not setNonEmpty!2134) (not b!522081) (not b!522078) (not b!521982) (not d!186197) (not b!521955) (not b!522098) (not b!522056) (not b!522100) (not b!522104) (not b!521952) (not b!522036) b_and!51239 b_and!51233 (not b!522101) (not b!522030) b_and!51227 (not setNonEmpty!2141) (not b!522018) b_and!51237 (not b_next!13749) (not b!522093) (not b!522004) (not b!522090) (not b!522059) (not b!522095) (not d!186181) (not b_next!13761) (not b!522054) (not setNonEmpty!2149) (not b_next!13757) (not b!522080) (not b!521972) b_and!51231 (not b_next!13755) (not setNonEmpty!2127) (not d!186179) (not b!521996) (not b!522032) (not setNonEmpty!2136) (not b!522105) (not b!521931) (not b!521967) (not b!522037) (not b!522060) (not b_next!13767) (not b!521994) (not b!522094) (not b!522099) (not setNonEmpty!2148) (not b!522014) (not mapNonEmpty!2144) (not d!186185) (not b!521958) (not b!521918) (not setNonEmpty!2135) (not b!522102) (not d!186187) (not b!522091) (not b!522061) (not b!521941) (not b!521981))
(check-sat (not b_next!13751) (not b_next!13759) b_and!51243 (not b_next!13763) (not b_next!13765) b_and!51229 (not b_next!13749) (not b_next!13761) (not b_next!13757) (not b_next!13767) b_and!51241 b_and!51235 (not b_next!13753) b_and!51245 b_and!51239 b_and!51233 b_and!51227 b_and!51237 b_and!51231 (not b_next!13755))
(get-model)

(declare-fun d!186213 () Bool)

(declare-fun lambda!14965 () Int)

(declare-fun forall!1467 (List!4857 Int) Bool)

(assert (=> d!186213 (= (inv!6126 (_1!3203 (_1!3204 (h!10250 mapDefault!2141)))) (forall!1467 (exprs!643 (_1!3203 (_1!3204 (h!10250 mapDefault!2141)))) lambda!14965))))

(declare-fun bs!60583 () Bool)

(assert (= bs!60583 d!186213))

(declare-fun m!768275 () Bool)

(assert (=> bs!60583 m!768275))

(assert (=> b!522056 d!186213))

(declare-fun bs!60584 () Bool)

(declare-fun d!186215 () Bool)

(assert (= bs!60584 (and d!186215 d!186213)))

(declare-fun lambda!14966 () Int)

(assert (=> bs!60584 (= lambda!14966 lambda!14965)))

(assert (=> d!186215 (= (inv!6126 setElem!2118) (forall!1467 (exprs!643 setElem!2118) lambda!14966))))

(declare-fun bs!60585 () Bool)

(assert (= bs!60585 d!186215))

(declare-fun m!768277 () Bool)

(assert (=> bs!60585 m!768277))

(assert (=> setNonEmpty!2118 d!186215))

(declare-fun d!186217 () Bool)

(declare-fun res!221606 () Bool)

(declare-fun e!313239 () Bool)

(assert (=> d!186217 (=> (not res!221606) (not e!313239))))

(declare-fun valid!525 (MutableMap!524) Bool)

(assert (=> d!186217 (= res!221606 (valid!525 (cache!911 cacheUp!449)))))

(assert (=> d!186217 (= (validCacheMapUp!33 (cache!911 cacheUp!449)) e!313239)))

(declare-fun b!522110 () Bool)

(declare-fun res!221607 () Bool)

(assert (=> b!522110 (=> (not res!221607) (not e!313239))))

(declare-fun invariantList!89 (List!4859) Bool)

(declare-datatypes ((ListMap!227 0))(
  ( (ListMap!228 (toList!447 List!4859)) )
))
(declare-fun map!1114 (MutableMap!524) ListMap!227)

(assert (=> b!522110 (= res!221607 (invariantList!89 (toList!447 (map!1114 (cache!911 cacheUp!449)))))))

(declare-fun b!522111 () Bool)

(declare-fun lambda!14969 () Int)

(declare-fun forall!1468 (List!4859 Int) Bool)

(assert (=> b!522111 (= e!313239 (forall!1468 (toList!447 (map!1114 (cache!911 cacheUp!449))) lambda!14969))))

(assert (= (and d!186217 res!221606) b!522110))

(assert (= (and b!522110 res!221607) b!522111))

(declare-fun m!768280 () Bool)

(assert (=> d!186217 m!768280))

(declare-fun m!768282 () Bool)

(assert (=> b!522110 m!768282))

(declare-fun m!768284 () Bool)

(assert (=> b!522110 m!768284))

(assert (=> b!522111 m!768282))

(declare-fun m!768286 () Bool)

(assert (=> b!522111 m!768286))

(assert (=> b!521955 d!186217))

(declare-fun b!522125 () Bool)

(declare-fun res!221623 () Bool)

(declare-fun e!313244 () Bool)

(assert (=> b!522125 (=> (not res!221623) (not e!313244))))

(assert (=> b!522125 (= res!221623 (isBalanced!489 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(declare-fun b!522126 () Bool)

(declare-fun res!221620 () Bool)

(assert (=> b!522126 (=> (not res!221620) (not e!313244))))

(assert (=> b!522126 (= res!221620 (isBalanced!489 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(declare-fun b!522127 () Bool)

(declare-fun e!313245 () Bool)

(assert (=> b!522127 (= e!313245 e!313244)))

(declare-fun res!221624 () Bool)

(assert (=> b!522127 (=> (not res!221624) (not e!313244))))

(declare-fun height!245 (Conc!1583) Int)

(assert (=> b!522127 (= res!221624 (<= (- 1) (- (height!245 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) (height!245 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))))

(declare-fun d!186219 () Bool)

(declare-fun res!221622 () Bool)

(assert (=> d!186219 (=> res!221622 e!313245)))

(assert (=> d!186219 (= res!221622 (not ((_ is Node!1583) (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(assert (=> d!186219 (= (isBalanced!489 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) e!313245)))

(declare-fun b!522124 () Bool)

(declare-fun res!221625 () Bool)

(assert (=> b!522124 (=> (not res!221625) (not e!313244))))

(declare-fun isEmpty!3580 (Conc!1583) Bool)

(assert (=> b!522124 (= res!221625 (not (isEmpty!3580 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))))))

(declare-fun b!522128 () Bool)

(assert (=> b!522128 (= e!313244 (not (isEmpty!3580 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))))))

(declare-fun b!522129 () Bool)

(declare-fun res!221621 () Bool)

(assert (=> b!522129 (=> (not res!221621) (not e!313244))))

(assert (=> b!522129 (= res!221621 (<= (- (height!245 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) (height!245 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) 1))))

(assert (= (and d!186219 (not res!221622)) b!522127))

(assert (= (and b!522127 res!221624) b!522129))

(assert (= (and b!522129 res!221621) b!522126))

(assert (= (and b!522126 res!221620) b!522125))

(assert (= (and b!522125 res!221623) b!522124))

(assert (= (and b!522124 res!221625) b!522128))

(declare-fun m!768288 () Bool)

(assert (=> b!522128 m!768288))

(declare-fun m!768290 () Bool)

(assert (=> b!522125 m!768290))

(declare-fun m!768292 () Bool)

(assert (=> b!522124 m!768292))

(declare-fun m!768294 () Bool)

(assert (=> b!522126 m!768294))

(declare-fun m!768296 () Bool)

(assert (=> b!522129 m!768296))

(declare-fun m!768298 () Bool)

(assert (=> b!522129 m!768298))

(assert (=> b!522127 m!768296))

(assert (=> b!522127 m!768298))

(assert (=> d!186199 d!186219))

(declare-fun d!186221 () Bool)

(declare-fun lt!217199 () Int)

(assert (=> d!186221 (>= lt!217199 0)))

(declare-fun e!313248 () Int)

(assert (=> d!186221 (= lt!217199 e!313248)))

(declare-fun c!100740 () Bool)

(assert (=> d!186221 (= c!100740 ((_ is Nil!4850) lt!217196))))

(assert (=> d!186221 (= (size!3960 lt!217196) lt!217199)))

(declare-fun b!522134 () Bool)

(assert (=> b!522134 (= e!313248 0)))

(declare-fun b!522135 () Bool)

(assert (=> b!522135 (= e!313248 (+ 1 (size!3960 (t!73450 lt!217196))))))

(assert (= (and d!186221 c!100740) b!522134))

(assert (= (and d!186221 (not c!100740)) b!522135))

(declare-fun m!768300 () Bool)

(assert (=> b!522135 m!768300))

(assert (=> b!521942 d!186221))

(declare-fun d!186223 () Bool)

(declare-fun lt!217200 () Int)

(assert (=> d!186223 (>= lt!217200 0)))

(declare-fun e!313249 () Int)

(assert (=> d!186223 (= lt!217200 e!313249)))

(declare-fun c!100741 () Bool)

(assert (=> d!186223 (= c!100741 ((_ is Nil!4850) lt!217192))))

(assert (=> d!186223 (= (size!3960 lt!217192) lt!217200)))

(declare-fun b!522136 () Bool)

(assert (=> b!522136 (= e!313249 0)))

(declare-fun b!522137 () Bool)

(assert (=> b!522137 (= e!313249 (+ 1 (size!3960 (t!73450 lt!217192))))))

(assert (= (and d!186223 c!100741) b!522136))

(assert (= (and d!186223 (not c!100741)) b!522137))

(declare-fun m!768302 () Bool)

(assert (=> b!522137 m!768302))

(assert (=> b!521942 d!186223))

(declare-fun d!186225 () Bool)

(declare-fun lt!217201 () Int)

(assert (=> d!186225 (>= lt!217201 0)))

(declare-fun e!313250 () Int)

(assert (=> d!186225 (= lt!217201 e!313250)))

(declare-fun c!100742 () Bool)

(assert (=> d!186225 (= c!100742 ((_ is Nil!4850) lt!217191))))

(assert (=> d!186225 (= (size!3960 lt!217191) lt!217201)))

(declare-fun b!522138 () Bool)

(assert (=> b!522138 (= e!313250 0)))

(declare-fun b!522139 () Bool)

(assert (=> b!522139 (= e!313250 (+ 1 (size!3960 (t!73450 lt!217191))))))

(assert (= (and d!186225 c!100742) b!522138))

(assert (= (and d!186225 (not c!100742)) b!522139))

(declare-fun m!768304 () Bool)

(assert (=> b!522139 m!768304))

(assert (=> b!521942 d!186225))

(declare-fun b!522150 () Bool)

(declare-fun e!313256 () List!4860)

(declare-fun list!2036 (IArray!3167) List!4860)

(assert (=> b!522150 (= e!313256 (list!2036 (xs!4218 (c!100730 (BalanceConc!3175 Empty!1583)))))))

(declare-fun b!522148 () Bool)

(declare-fun e!313255 () List!4860)

(assert (=> b!522148 (= e!313255 Nil!4850)))

(declare-fun b!522151 () Bool)

(assert (=> b!522151 (= e!313256 (++!1365 (list!2035 (left!4179 (c!100730 (BalanceConc!3175 Empty!1583)))) (list!2035 (right!4509 (c!100730 (BalanceConc!3175 Empty!1583))))))))

(declare-fun b!522149 () Bool)

(assert (=> b!522149 (= e!313255 e!313256)))

(declare-fun c!100748 () Bool)

(assert (=> b!522149 (= c!100748 ((_ is Leaf!2526) (c!100730 (BalanceConc!3175 Empty!1583))))))

(declare-fun d!186227 () Bool)

(declare-fun c!100747 () Bool)

(assert (=> d!186227 (= c!100747 ((_ is Empty!1583) (c!100730 (BalanceConc!3175 Empty!1583))))))

(assert (=> d!186227 (= (list!2035 (c!100730 (BalanceConc!3175 Empty!1583))) e!313255)))

(assert (= (and d!186227 c!100747) b!522148))

(assert (= (and d!186227 (not c!100747)) b!522149))

(assert (= (and b!522149 c!100748) b!522150))

(assert (= (and b!522149 (not c!100748)) b!522151))

(declare-fun m!768306 () Bool)

(assert (=> b!522150 m!768306))

(declare-fun m!768308 () Bool)

(assert (=> b!522151 m!768308))

(declare-fun m!768310 () Bool)

(assert (=> b!522151 m!768310))

(assert (=> b!522151 m!768308))

(assert (=> b!522151 m!768310))

(declare-fun m!768312 () Bool)

(assert (=> b!522151 m!768312))

(assert (=> d!186181 d!186227))

(declare-fun bs!60586 () Bool)

(declare-fun d!186229 () Bool)

(assert (= bs!60586 (and d!186229 d!186213)))

(declare-fun lambda!14970 () Int)

(assert (=> bs!60586 (= lambda!14970 lambda!14965)))

(declare-fun bs!60587 () Bool)

(assert (= bs!60587 (and d!186229 d!186215)))

(assert (=> bs!60587 (= lambda!14970 lambda!14966)))

(assert (=> d!186229 (= (inv!6126 setElem!2136) (forall!1467 (exprs!643 setElem!2136) lambda!14970))))

(declare-fun bs!60588 () Bool)

(assert (= bs!60588 d!186229))

(declare-fun m!768314 () Bool)

(assert (=> bs!60588 m!768314))

(assert (=> setNonEmpty!2136 d!186229))

(declare-fun d!186231 () Bool)

(assert (=> d!186231 (= (inv!6116 (tag!1142 (h!10254 (t!73453 rules!1345)))) (= (mod (str.len (value!29934 (tag!1142 (h!10254 (t!73453 rules!1345))))) 2) 0))))

(assert (=> b!522015 d!186231))

(declare-fun d!186233 () Bool)

(declare-fun res!221626 () Bool)

(declare-fun e!313257 () Bool)

(assert (=> d!186233 (=> (not res!221626) (not e!313257))))

(assert (=> d!186233 (= res!221626 (semiInverseModEq!352 (toChars!1566 (transformation!880 (h!10254 (t!73453 rules!1345)))) (toValue!1707 (transformation!880 (h!10254 (t!73453 rules!1345))))))))

(assert (=> d!186233 (= (inv!6119 (transformation!880 (h!10254 (t!73453 rules!1345)))) e!313257)))

(declare-fun b!522152 () Bool)

(assert (=> b!522152 (= e!313257 (equivClasses!335 (toChars!1566 (transformation!880 (h!10254 (t!73453 rules!1345)))) (toValue!1707 (transformation!880 (h!10254 (t!73453 rules!1345))))))))

(assert (= (and d!186233 res!221626) b!522152))

(declare-fun m!768316 () Bool)

(assert (=> d!186233 m!768316))

(declare-fun m!768318 () Bool)

(assert (=> b!522152 m!768318))

(assert (=> b!522015 d!186233))

(declare-fun bs!60589 () Bool)

(declare-fun d!186235 () Bool)

(assert (= bs!60589 (and d!186235 d!186213)))

(declare-fun lambda!14971 () Int)

(assert (=> bs!60589 (= lambda!14971 lambda!14965)))

(declare-fun bs!60590 () Bool)

(assert (= bs!60590 (and d!186235 d!186215)))

(assert (=> bs!60590 (= lambda!14971 lambda!14966)))

(declare-fun bs!60591 () Bool)

(assert (= bs!60591 (and d!186235 d!186229)))

(assert (=> bs!60591 (= lambda!14971 lambda!14970)))

(assert (=> d!186235 (= (inv!6126 (_2!3201 (_1!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))))) (forall!1467 (exprs!643 (_2!3201 (_1!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))))) lambda!14971))))

(declare-fun bs!60592 () Bool)

(assert (= bs!60592 d!186235))

(declare-fun m!768320 () Bool)

(assert (=> bs!60592 m!768320))

(assert (=> b!522101 d!186235))

(declare-fun bs!60593 () Bool)

(declare-fun d!186237 () Bool)

(assert (= bs!60593 (and d!186237 d!186213)))

(declare-fun lambda!14972 () Int)

(assert (=> bs!60593 (= lambda!14972 lambda!14965)))

(declare-fun bs!60594 () Bool)

(assert (= bs!60594 (and d!186237 d!186215)))

(assert (=> bs!60594 (= lambda!14972 lambda!14966)))

(declare-fun bs!60595 () Bool)

(assert (= bs!60595 (and d!186237 d!186229)))

(assert (=> bs!60595 (= lambda!14972 lambda!14970)))

(declare-fun bs!60596 () Bool)

(assert (= bs!60596 (and d!186237 d!186235)))

(assert (=> bs!60596 (= lambda!14972 lambda!14971)))

(assert (=> d!186237 (= (inv!6126 (_2!3201 (_1!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))))) (forall!1467 (exprs!643 (_2!3201 (_1!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))))) lambda!14972))))

(declare-fun bs!60597 () Bool)

(assert (= bs!60597 d!186237))

(declare-fun m!768322 () Bool)

(assert (=> bs!60597 m!768322))

(assert (=> b!522104 d!186237))

(declare-fun bs!60598 () Bool)

(declare-fun d!186239 () Bool)

(assert (= bs!60598 (and d!186239 d!186235)))

(declare-fun lambda!14973 () Int)

(assert (=> bs!60598 (= lambda!14973 lambda!14971)))

(declare-fun bs!60599 () Bool)

(assert (= bs!60599 (and d!186239 d!186229)))

(assert (=> bs!60599 (= lambda!14973 lambda!14970)))

(declare-fun bs!60600 () Bool)

(assert (= bs!60600 (and d!186239 d!186213)))

(assert (=> bs!60600 (= lambda!14973 lambda!14965)))

(declare-fun bs!60601 () Bool)

(assert (= bs!60601 (and d!186239 d!186215)))

(assert (=> bs!60601 (= lambda!14973 lambda!14966)))

(declare-fun bs!60602 () Bool)

(assert (= bs!60602 (and d!186239 d!186237)))

(assert (=> bs!60602 (= lambda!14973 lambda!14972)))

(assert (=> d!186239 (= (inv!6126 setElem!2149) (forall!1467 (exprs!643 setElem!2149) lambda!14973))))

(declare-fun bs!60603 () Bool)

(assert (= bs!60603 d!186239))

(declare-fun m!768324 () Bool)

(assert (=> bs!60603 m!768324))

(assert (=> setNonEmpty!2149 d!186239))

(declare-fun bs!60604 () Bool)

(declare-fun d!186241 () Bool)

(assert (= bs!60604 (and d!186241 d!186235)))

(declare-fun lambda!14974 () Int)

(assert (=> bs!60604 (= lambda!14974 lambda!14971)))

(declare-fun bs!60605 () Bool)

(assert (= bs!60605 (and d!186241 d!186229)))

(assert (=> bs!60605 (= lambda!14974 lambda!14970)))

(declare-fun bs!60606 () Bool)

(assert (= bs!60606 (and d!186241 d!186213)))

(assert (=> bs!60606 (= lambda!14974 lambda!14965)))

(declare-fun bs!60607 () Bool)

(assert (= bs!60607 (and d!186241 d!186239)))

(assert (=> bs!60607 (= lambda!14974 lambda!14973)))

(declare-fun bs!60608 () Bool)

(assert (= bs!60608 (and d!186241 d!186215)))

(assert (=> bs!60608 (= lambda!14974 lambda!14966)))

(declare-fun bs!60609 () Bool)

(assert (= bs!60609 (and d!186241 d!186237)))

(assert (=> bs!60609 (= lambda!14974 lambda!14972)))

(assert (=> d!186241 (= (inv!6126 setElem!2150) (forall!1467 (exprs!643 setElem!2150) lambda!14974))))

(declare-fun bs!60610 () Bool)

(assert (= bs!60610 d!186241))

(declare-fun m!768326 () Bool)

(assert (=> bs!60610 m!768326))

(assert (=> setNonEmpty!2150 d!186241))

(declare-fun d!186243 () Bool)

(declare-fun c!100749 () Bool)

(assert (=> d!186243 (= c!100749 ((_ is Node!1583) (left!4179 (c!100730 input!747))))))

(declare-fun e!313258 () Bool)

(assert (=> d!186243 (= (inv!6120 (left!4179 (c!100730 input!747))) e!313258)))

(declare-fun b!522153 () Bool)

(assert (=> b!522153 (= e!313258 (inv!6124 (left!4179 (c!100730 input!747))))))

(declare-fun b!522154 () Bool)

(declare-fun e!313259 () Bool)

(assert (=> b!522154 (= e!313258 e!313259)))

(declare-fun res!221627 () Bool)

(assert (=> b!522154 (= res!221627 (not ((_ is Leaf!2526) (left!4179 (c!100730 input!747)))))))

(assert (=> b!522154 (=> res!221627 e!313259)))

(declare-fun b!522155 () Bool)

(assert (=> b!522155 (= e!313259 (inv!6125 (left!4179 (c!100730 input!747))))))

(assert (= (and d!186243 c!100749) b!522153))

(assert (= (and d!186243 (not c!100749)) b!522154))

(assert (= (and b!522154 (not res!221627)) b!522155))

(declare-fun m!768328 () Bool)

(assert (=> b!522153 m!768328))

(declare-fun m!768330 () Bool)

(assert (=> b!522155 m!768330))

(assert (=> b!521981 d!186243))

(declare-fun d!186245 () Bool)

(declare-fun c!100750 () Bool)

(assert (=> d!186245 (= c!100750 ((_ is Node!1583) (right!4509 (c!100730 input!747))))))

(declare-fun e!313260 () Bool)

(assert (=> d!186245 (= (inv!6120 (right!4509 (c!100730 input!747))) e!313260)))

(declare-fun b!522156 () Bool)

(assert (=> b!522156 (= e!313260 (inv!6124 (right!4509 (c!100730 input!747))))))

(declare-fun b!522157 () Bool)

(declare-fun e!313261 () Bool)

(assert (=> b!522157 (= e!313260 e!313261)))

(declare-fun res!221628 () Bool)

(assert (=> b!522157 (= res!221628 (not ((_ is Leaf!2526) (right!4509 (c!100730 input!747)))))))

(assert (=> b!522157 (=> res!221628 e!313261)))

(declare-fun b!522158 () Bool)

(assert (=> b!522158 (= e!313261 (inv!6125 (right!4509 (c!100730 input!747))))))

(assert (= (and d!186245 c!100750) b!522156))

(assert (= (and d!186245 (not c!100750)) b!522157))

(assert (= (and b!522157 (not res!221628)) b!522158))

(declare-fun m!768332 () Bool)

(assert (=> b!522156 m!768332))

(declare-fun m!768334 () Bool)

(assert (=> b!522158 m!768334))

(assert (=> b!521981 d!186245))

(declare-fun d!186247 () Bool)

(declare-fun res!221635 () Bool)

(declare-fun e!313266 () Bool)

(assert (=> d!186247 (=> (not res!221635) (not e!313266))))

(declare-fun valid!526 (MutableMap!523) Bool)

(assert (=> d!186247 (= res!221635 (valid!526 (cache!910 cacheDown!462)))))

(assert (=> d!186247 (= (validCacheMapDown!30 (cache!910 cacheDown!462)) e!313266)))

(declare-fun b!522165 () Bool)

(declare-fun res!221636 () Bool)

(assert (=> b!522165 (=> (not res!221636) (not e!313266))))

(declare-fun invariantList!90 (List!4858) Bool)

(declare-datatypes ((ListMap!229 0))(
  ( (ListMap!230 (toList!448 List!4858)) )
))
(declare-fun map!1115 (MutableMap!523) ListMap!229)

(assert (=> b!522165 (= res!221636 (invariantList!90 (toList!448 (map!1115 (cache!910 cacheDown!462)))))))

(declare-fun b!522166 () Bool)

(declare-fun lambda!14977 () Int)

(declare-fun forall!1469 (List!4858 Int) Bool)

(assert (=> b!522166 (= e!313266 (forall!1469 (toList!448 (map!1115 (cache!910 cacheDown!462))) lambda!14977))))

(assert (= (and d!186247 res!221635) b!522165))

(assert (= (and b!522165 res!221636) b!522166))

(declare-fun m!768337 () Bool)

(assert (=> d!186247 m!768337))

(declare-fun m!768339 () Bool)

(assert (=> b!522165 m!768339))

(declare-fun m!768341 () Bool)

(assert (=> b!522165 m!768341))

(assert (=> b!522166 m!768339))

(declare-fun m!768343 () Bool)

(assert (=> b!522166 m!768343))

(assert (=> b!521949 d!186247))

(declare-fun bs!60611 () Bool)

(declare-fun d!186249 () Bool)

(assert (= bs!60611 (and d!186249 d!186235)))

(declare-fun lambda!14978 () Int)

(assert (=> bs!60611 (= lambda!14978 lambda!14971)))

(declare-fun bs!60612 () Bool)

(assert (= bs!60612 (and d!186249 d!186241)))

(assert (=> bs!60612 (= lambda!14978 lambda!14974)))

(declare-fun bs!60613 () Bool)

(assert (= bs!60613 (and d!186249 d!186229)))

(assert (=> bs!60613 (= lambda!14978 lambda!14970)))

(declare-fun bs!60614 () Bool)

(assert (= bs!60614 (and d!186249 d!186213)))

(assert (=> bs!60614 (= lambda!14978 lambda!14965)))

(declare-fun bs!60615 () Bool)

(assert (= bs!60615 (and d!186249 d!186239)))

(assert (=> bs!60615 (= lambda!14978 lambda!14973)))

(declare-fun bs!60616 () Bool)

(assert (= bs!60616 (and d!186249 d!186215)))

(assert (=> bs!60616 (= lambda!14978 lambda!14966)))

(declare-fun bs!60617 () Bool)

(assert (= bs!60617 (and d!186249 d!186237)))

(assert (=> bs!60617 (= lambda!14978 lambda!14972)))

(assert (=> d!186249 (= (inv!6126 setElem!2135) (forall!1467 (exprs!643 setElem!2135) lambda!14978))))

(declare-fun bs!60618 () Bool)

(assert (= bs!60618 d!186249))

(declare-fun m!768345 () Bool)

(assert (=> bs!60618 m!768345))

(assert (=> setNonEmpty!2134 d!186249))

(declare-fun bs!60619 () Bool)

(declare-fun d!186251 () Bool)

(assert (= bs!60619 (and d!186251 d!186235)))

(declare-fun lambda!14979 () Int)

(assert (=> bs!60619 (= lambda!14979 lambda!14971)))

(declare-fun bs!60620 () Bool)

(assert (= bs!60620 (and d!186251 d!186241)))

(assert (=> bs!60620 (= lambda!14979 lambda!14974)))

(declare-fun bs!60621 () Bool)

(assert (= bs!60621 (and d!186251 d!186229)))

(assert (=> bs!60621 (= lambda!14979 lambda!14970)))

(declare-fun bs!60622 () Bool)

(assert (= bs!60622 (and d!186251 d!186213)))

(assert (=> bs!60622 (= lambda!14979 lambda!14965)))

(declare-fun bs!60623 () Bool)

(assert (= bs!60623 (and d!186251 d!186239)))

(assert (=> bs!60623 (= lambda!14979 lambda!14973)))

(declare-fun bs!60624 () Bool)

(assert (= bs!60624 (and d!186251 d!186215)))

(assert (=> bs!60624 (= lambda!14979 lambda!14966)))

(declare-fun bs!60625 () Bool)

(assert (= bs!60625 (and d!186251 d!186249)))

(assert (=> bs!60625 (= lambda!14979 lambda!14978)))

(declare-fun bs!60626 () Bool)

(assert (= bs!60626 (and d!186251 d!186237)))

(assert (=> bs!60626 (= lambda!14979 lambda!14972)))

(assert (=> d!186251 (= (inv!6126 (_2!3201 (_1!3202 (h!10249 mapValue!2144)))) (forall!1467 (exprs!643 (_2!3201 (_1!3202 (h!10249 mapValue!2144)))) lambda!14979))))

(declare-fun bs!60627 () Bool)

(assert (= bs!60627 d!186251))

(declare-fun m!768347 () Bool)

(assert (=> bs!60627 m!768347))

(assert (=> b!522080 d!186251))

(declare-fun bs!60628 () Bool)

(declare-fun d!186253 () Bool)

(assert (= bs!60628 (and d!186253 d!186235)))

(declare-fun lambda!14980 () Int)

(assert (=> bs!60628 (= lambda!14980 lambda!14971)))

(declare-fun bs!60629 () Bool)

(assert (= bs!60629 (and d!186253 d!186241)))

(assert (=> bs!60629 (= lambda!14980 lambda!14974)))

(declare-fun bs!60630 () Bool)

(assert (= bs!60630 (and d!186253 d!186229)))

(assert (=> bs!60630 (= lambda!14980 lambda!14970)))

(declare-fun bs!60631 () Bool)

(assert (= bs!60631 (and d!186253 d!186251)))

(assert (=> bs!60631 (= lambda!14980 lambda!14979)))

(declare-fun bs!60632 () Bool)

(assert (= bs!60632 (and d!186253 d!186213)))

(assert (=> bs!60632 (= lambda!14980 lambda!14965)))

(declare-fun bs!60633 () Bool)

(assert (= bs!60633 (and d!186253 d!186239)))

(assert (=> bs!60633 (= lambda!14980 lambda!14973)))

(declare-fun bs!60634 () Bool)

(assert (= bs!60634 (and d!186253 d!186215)))

(assert (=> bs!60634 (= lambda!14980 lambda!14966)))

(declare-fun bs!60635 () Bool)

(assert (= bs!60635 (and d!186253 d!186249)))

(assert (=> bs!60635 (= lambda!14980 lambda!14978)))

(declare-fun bs!60636 () Bool)

(assert (= bs!60636 (and d!186253 d!186237)))

(assert (=> bs!60636 (= lambda!14980 lambda!14972)))

(assert (=> d!186253 (= (inv!6126 setElem!2128) (forall!1467 (exprs!643 setElem!2128) lambda!14980))))

(declare-fun bs!60637 () Bool)

(assert (= bs!60637 d!186253))

(declare-fun m!768349 () Bool)

(assert (=> bs!60637 m!768349))

(assert (=> setNonEmpty!2128 d!186253))

(declare-fun bs!60638 () Bool)

(declare-fun d!186255 () Bool)

(assert (= bs!60638 (and d!186255 d!186235)))

(declare-fun lambda!14981 () Int)

(assert (=> bs!60638 (= lambda!14981 lambda!14971)))

(declare-fun bs!60639 () Bool)

(assert (= bs!60639 (and d!186255 d!186241)))

(assert (=> bs!60639 (= lambda!14981 lambda!14974)))

(declare-fun bs!60640 () Bool)

(assert (= bs!60640 (and d!186255 d!186229)))

(assert (=> bs!60640 (= lambda!14981 lambda!14970)))

(declare-fun bs!60641 () Bool)

(assert (= bs!60641 (and d!186255 d!186253)))

(assert (=> bs!60641 (= lambda!14981 lambda!14980)))

(declare-fun bs!60642 () Bool)

(assert (= bs!60642 (and d!186255 d!186251)))

(assert (=> bs!60642 (= lambda!14981 lambda!14979)))

(declare-fun bs!60643 () Bool)

(assert (= bs!60643 (and d!186255 d!186213)))

(assert (=> bs!60643 (= lambda!14981 lambda!14965)))

(declare-fun bs!60644 () Bool)

(assert (= bs!60644 (and d!186255 d!186239)))

(assert (=> bs!60644 (= lambda!14981 lambda!14973)))

(declare-fun bs!60645 () Bool)

(assert (= bs!60645 (and d!186255 d!186215)))

(assert (=> bs!60645 (= lambda!14981 lambda!14966)))

(declare-fun bs!60646 () Bool)

(assert (= bs!60646 (and d!186255 d!186249)))

(assert (=> bs!60646 (= lambda!14981 lambda!14978)))

(declare-fun bs!60647 () Bool)

(assert (= bs!60647 (and d!186255 d!186237)))

(assert (=> bs!60647 (= lambda!14981 lambda!14972)))

(assert (=> d!186255 (= (inv!6126 (_1!3203 (_1!3204 (h!10250 mapValue!2141)))) (forall!1467 (exprs!643 (_1!3203 (_1!3204 (h!10250 mapValue!2141)))) lambda!14981))))

(declare-fun bs!60648 () Bool)

(assert (= bs!60648 d!186255))

(declare-fun m!768351 () Bool)

(assert (=> bs!60648 m!768351))

(assert (=> b!522053 d!186255))

(declare-fun bs!60649 () Bool)

(declare-fun d!186257 () Bool)

(assert (= bs!60649 (and d!186257 d!186235)))

(declare-fun lambda!14982 () Int)

(assert (=> bs!60649 (= lambda!14982 lambda!14971)))

(declare-fun bs!60650 () Bool)

(assert (= bs!60650 (and d!186257 d!186241)))

(assert (=> bs!60650 (= lambda!14982 lambda!14974)))

(declare-fun bs!60651 () Bool)

(assert (= bs!60651 (and d!186257 d!186229)))

(assert (=> bs!60651 (= lambda!14982 lambda!14970)))

(declare-fun bs!60652 () Bool)

(assert (= bs!60652 (and d!186257 d!186255)))

(assert (=> bs!60652 (= lambda!14982 lambda!14981)))

(declare-fun bs!60653 () Bool)

(assert (= bs!60653 (and d!186257 d!186253)))

(assert (=> bs!60653 (= lambda!14982 lambda!14980)))

(declare-fun bs!60654 () Bool)

(assert (= bs!60654 (and d!186257 d!186251)))

(assert (=> bs!60654 (= lambda!14982 lambda!14979)))

(declare-fun bs!60655 () Bool)

(assert (= bs!60655 (and d!186257 d!186213)))

(assert (=> bs!60655 (= lambda!14982 lambda!14965)))

(declare-fun bs!60656 () Bool)

(assert (= bs!60656 (and d!186257 d!186239)))

(assert (=> bs!60656 (= lambda!14982 lambda!14973)))

(declare-fun bs!60657 () Bool)

(assert (= bs!60657 (and d!186257 d!186215)))

(assert (=> bs!60657 (= lambda!14982 lambda!14966)))

(declare-fun bs!60658 () Bool)

(assert (= bs!60658 (and d!186257 d!186249)))

(assert (=> bs!60658 (= lambda!14982 lambda!14978)))

(declare-fun bs!60659 () Bool)

(assert (= bs!60659 (and d!186257 d!186237)))

(assert (=> bs!60659 (= lambda!14982 lambda!14972)))

(assert (=> d!186257 (= (inv!6126 (_1!3203 (_1!3204 (h!10250 mapDefault!2134)))) (forall!1467 (exprs!643 (_1!3203 (_1!3204 (h!10250 mapDefault!2134)))) lambda!14982))))

(declare-fun bs!60660 () Bool)

(assert (= bs!60660 d!186257))

(declare-fun m!768353 () Bool)

(assert (=> bs!60660 m!768353))

(assert (=> b!522036 d!186257))

(declare-fun d!186259 () Bool)

(assert (=> d!186259 (= (inv!6127 (xs!4218 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) (<= (size!3960 (innerList!1641 (xs!4218 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) 2147483647))))

(declare-fun bs!60661 () Bool)

(assert (= bs!60661 d!186259))

(declare-fun m!768355 () Bool)

(assert (=> bs!60661 m!768355))

(assert (=> b!522034 d!186259))

(declare-fun d!186261 () Bool)

(declare-fun res!221641 () Bool)

(declare-fun e!313271 () Bool)

(assert (=> d!186261 (=> res!221641 e!313271)))

(assert (=> d!186261 (= res!221641 ((_ is Nil!4853) rules!1345))))

(assert (=> d!186261 (= (noDuplicateTag!317 thiss!12147 rules!1345 Nil!4854) e!313271)))

(declare-fun b!522171 () Bool)

(declare-fun e!313272 () Bool)

(assert (=> b!522171 (= e!313271 e!313272)))

(declare-fun res!221642 () Bool)

(assert (=> b!522171 (=> (not res!221642) (not e!313272))))

(declare-fun contains!1169 (List!4864 String!6246) Bool)

(assert (=> b!522171 (= res!221642 (not (contains!1169 Nil!4854 (tag!1142 (h!10254 rules!1345)))))))

(declare-fun b!522172 () Bool)

(assert (=> b!522172 (= e!313272 (noDuplicateTag!317 thiss!12147 (t!73453 rules!1345) (Cons!4854 (tag!1142 (h!10254 rules!1345)) Nil!4854)))))

(assert (= (and d!186261 (not res!221641)) b!522171))

(assert (= (and b!522171 res!221642) b!522172))

(declare-fun m!768357 () Bool)

(assert (=> b!522171 m!768357))

(declare-fun m!768359 () Bool)

(assert (=> b!522172 m!768359))

(assert (=> b!521931 d!186261))

(declare-fun bs!60662 () Bool)

(declare-fun d!186263 () Bool)

(assert (= bs!60662 (and d!186263 d!186235)))

(declare-fun lambda!14983 () Int)

(assert (=> bs!60662 (= lambda!14983 lambda!14971)))

(declare-fun bs!60663 () Bool)

(assert (= bs!60663 (and d!186263 d!186241)))

(assert (=> bs!60663 (= lambda!14983 lambda!14974)))

(declare-fun bs!60664 () Bool)

(assert (= bs!60664 (and d!186263 d!186229)))

(assert (=> bs!60664 (= lambda!14983 lambda!14970)))

(declare-fun bs!60665 () Bool)

(assert (= bs!60665 (and d!186263 d!186255)))

(assert (=> bs!60665 (= lambda!14983 lambda!14981)))

(declare-fun bs!60666 () Bool)

(assert (= bs!60666 (and d!186263 d!186253)))

(assert (=> bs!60666 (= lambda!14983 lambda!14980)))

(declare-fun bs!60667 () Bool)

(assert (= bs!60667 (and d!186263 d!186251)))

(assert (=> bs!60667 (= lambda!14983 lambda!14979)))

(declare-fun bs!60668 () Bool)

(assert (= bs!60668 (and d!186263 d!186213)))

(assert (=> bs!60668 (= lambda!14983 lambda!14965)))

(declare-fun bs!60669 () Bool)

(assert (= bs!60669 (and d!186263 d!186239)))

(assert (=> bs!60669 (= lambda!14983 lambda!14973)))

(declare-fun bs!60670 () Bool)

(assert (= bs!60670 (and d!186263 d!186215)))

(assert (=> bs!60670 (= lambda!14983 lambda!14966)))

(declare-fun bs!60671 () Bool)

(assert (= bs!60671 (and d!186263 d!186249)))

(assert (=> bs!60671 (= lambda!14983 lambda!14978)))

(declare-fun bs!60672 () Bool)

(assert (= bs!60672 (and d!186263 d!186237)))

(assert (=> bs!60672 (= lambda!14983 lambda!14972)))

(declare-fun bs!60673 () Bool)

(assert (= bs!60673 (and d!186263 d!186257)))

(assert (=> bs!60673 (= lambda!14983 lambda!14982)))

(assert (=> d!186263 (= (inv!6126 (_1!3203 (_1!3204 (h!10250 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))))) (forall!1467 (exprs!643 (_1!3203 (_1!3204 (h!10250 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))))) lambda!14983))))

(declare-fun bs!60674 () Bool)

(assert (= bs!60674 d!186263))

(declare-fun m!768361 () Bool)

(assert (=> bs!60674 m!768361))

(assert (=> b!521970 d!186263))

(declare-fun d!186265 () Bool)

(assert (=> d!186265 true))

(declare-fun order!4347 () Int)

(declare-fun lambda!14986 () Int)

(declare-fun order!4349 () Int)

(declare-fun dynLambda!3012 (Int Int) Int)

(declare-fun dynLambda!3013 (Int Int) Int)

(assert (=> d!186265 (< (dynLambda!3012 order!4347 (toChars!1566 (transformation!880 (h!10254 rules!1345)))) (dynLambda!3013 order!4349 lambda!14986))))

(assert (=> d!186265 true))

(declare-fun order!4351 () Int)

(declare-fun dynLambda!3014 (Int Int) Int)

(assert (=> d!186265 (< (dynLambda!3014 order!4351 (toValue!1707 (transformation!880 (h!10254 rules!1345)))) (dynLambda!3013 order!4349 lambda!14986))))

(declare-fun Forall!267 (Int) Bool)

(assert (=> d!186265 (= (semiInverseModEq!352 (toChars!1566 (transformation!880 (h!10254 rules!1345))) (toValue!1707 (transformation!880 (h!10254 rules!1345)))) (Forall!267 lambda!14986))))

(declare-fun bs!60675 () Bool)

(assert (= bs!60675 d!186265))

(declare-fun m!768363 () Bool)

(assert (=> bs!60675 m!768363))

(assert (=> d!186185 d!186265))

(declare-fun bs!60676 () Bool)

(declare-fun d!186267 () Bool)

(assert (= bs!60676 (and d!186267 d!186235)))

(declare-fun lambda!14987 () Int)

(assert (=> bs!60676 (= lambda!14987 lambda!14971)))

(declare-fun bs!60677 () Bool)

(assert (= bs!60677 (and d!186267 d!186241)))

(assert (=> bs!60677 (= lambda!14987 lambda!14974)))

(declare-fun bs!60678 () Bool)

(assert (= bs!60678 (and d!186267 d!186229)))

(assert (=> bs!60678 (= lambda!14987 lambda!14970)))

(declare-fun bs!60679 () Bool)

(assert (= bs!60679 (and d!186267 d!186255)))

(assert (=> bs!60679 (= lambda!14987 lambda!14981)))

(declare-fun bs!60680 () Bool)

(assert (= bs!60680 (and d!186267 d!186251)))

(assert (=> bs!60680 (= lambda!14987 lambda!14979)))

(declare-fun bs!60681 () Bool)

(assert (= bs!60681 (and d!186267 d!186213)))

(assert (=> bs!60681 (= lambda!14987 lambda!14965)))

(declare-fun bs!60682 () Bool)

(assert (= bs!60682 (and d!186267 d!186239)))

(assert (=> bs!60682 (= lambda!14987 lambda!14973)))

(declare-fun bs!60683 () Bool)

(assert (= bs!60683 (and d!186267 d!186215)))

(assert (=> bs!60683 (= lambda!14987 lambda!14966)))

(declare-fun bs!60684 () Bool)

(assert (= bs!60684 (and d!186267 d!186249)))

(assert (=> bs!60684 (= lambda!14987 lambda!14978)))

(declare-fun bs!60685 () Bool)

(assert (= bs!60685 (and d!186267 d!186237)))

(assert (=> bs!60685 (= lambda!14987 lambda!14972)))

(declare-fun bs!60686 () Bool)

(assert (= bs!60686 (and d!186267 d!186257)))

(assert (=> bs!60686 (= lambda!14987 lambda!14982)))

(declare-fun bs!60687 () Bool)

(assert (= bs!60687 (and d!186267 d!186253)))

(assert (=> bs!60687 (= lambda!14987 lambda!14980)))

(declare-fun bs!60688 () Bool)

(assert (= bs!60688 (and d!186267 d!186263)))

(assert (=> bs!60688 (= lambda!14987 lambda!14983)))

(assert (=> d!186267 (= (inv!6126 setElem!2124) (forall!1467 (exprs!643 setElem!2124) lambda!14987))))

(declare-fun bs!60689 () Bool)

(assert (= bs!60689 d!186267))

(declare-fun m!768365 () Bool)

(assert (=> bs!60689 m!768365))

(assert (=> setNonEmpty!2124 d!186267))

(declare-fun d!186269 () Bool)

(declare-fun res!221647 () Bool)

(declare-fun e!313275 () Bool)

(assert (=> d!186269 (=> (not res!221647) (not e!313275))))

(assert (=> d!186269 (= res!221647 (<= (size!3960 (list!2036 (xs!4218 (c!100730 input!747)))) 512))))

(assert (=> d!186269 (= (inv!6125 (c!100730 input!747)) e!313275)))

(declare-fun b!522181 () Bool)

(declare-fun res!221648 () Bool)

(assert (=> b!522181 (=> (not res!221648) (not e!313275))))

(assert (=> b!522181 (= res!221648 (= (csize!3397 (c!100730 input!747)) (size!3960 (list!2036 (xs!4218 (c!100730 input!747))))))))

(declare-fun b!522182 () Bool)

(assert (=> b!522182 (= e!313275 (and (> (csize!3397 (c!100730 input!747)) 0) (<= (csize!3397 (c!100730 input!747)) 512)))))

(assert (= (and d!186269 res!221647) b!522181))

(assert (= (and b!522181 res!221648) b!522182))

(declare-fun m!768367 () Bool)

(assert (=> d!186269 m!768367))

(assert (=> d!186269 m!768367))

(declare-fun m!768369 () Bool)

(assert (=> d!186269 m!768369))

(assert (=> b!522181 m!768367))

(assert (=> b!522181 m!768367))

(assert (=> b!522181 m!768369))

(assert (=> b!521928 d!186269))

(declare-fun bs!60690 () Bool)

(declare-fun d!186271 () Bool)

(assert (= bs!60690 (and d!186271 d!186235)))

(declare-fun lambda!14988 () Int)

(assert (=> bs!60690 (= lambda!14988 lambda!14971)))

(declare-fun bs!60691 () Bool)

(assert (= bs!60691 (and d!186271 d!186241)))

(assert (=> bs!60691 (= lambda!14988 lambda!14974)))

(declare-fun bs!60692 () Bool)

(assert (= bs!60692 (and d!186271 d!186229)))

(assert (=> bs!60692 (= lambda!14988 lambda!14970)))

(declare-fun bs!60693 () Bool)

(assert (= bs!60693 (and d!186271 d!186255)))

(assert (=> bs!60693 (= lambda!14988 lambda!14981)))

(declare-fun bs!60694 () Bool)

(assert (= bs!60694 (and d!186271 d!186251)))

(assert (=> bs!60694 (= lambda!14988 lambda!14979)))

(declare-fun bs!60695 () Bool)

(assert (= bs!60695 (and d!186271 d!186213)))

(assert (=> bs!60695 (= lambda!14988 lambda!14965)))

(declare-fun bs!60696 () Bool)

(assert (= bs!60696 (and d!186271 d!186239)))

(assert (=> bs!60696 (= lambda!14988 lambda!14973)))

(declare-fun bs!60697 () Bool)

(assert (= bs!60697 (and d!186271 d!186215)))

(assert (=> bs!60697 (= lambda!14988 lambda!14966)))

(declare-fun bs!60698 () Bool)

(assert (= bs!60698 (and d!186271 d!186249)))

(assert (=> bs!60698 (= lambda!14988 lambda!14978)))

(declare-fun bs!60699 () Bool)

(assert (= bs!60699 (and d!186271 d!186237)))

(assert (=> bs!60699 (= lambda!14988 lambda!14972)))

(declare-fun bs!60700 () Bool)

(assert (= bs!60700 (and d!186271 d!186267)))

(assert (=> bs!60700 (= lambda!14988 lambda!14987)))

(declare-fun bs!60701 () Bool)

(assert (= bs!60701 (and d!186271 d!186257)))

(assert (=> bs!60701 (= lambda!14988 lambda!14982)))

(declare-fun bs!60702 () Bool)

(assert (= bs!60702 (and d!186271 d!186253)))

(assert (=> bs!60702 (= lambda!14988 lambda!14980)))

(declare-fun bs!60703 () Bool)

(assert (= bs!60703 (and d!186271 d!186263)))

(assert (=> bs!60703 (= lambda!14988 lambda!14983)))

(assert (=> d!186271 (= (inv!6126 (_2!3201 (_1!3202 (h!10249 mapValue!2134)))) (forall!1467 (exprs!643 (_2!3201 (_1!3202 (h!10249 mapValue!2134)))) lambda!14988))))

(declare-fun bs!60704 () Bool)

(assert (= bs!60704 d!186271))

(declare-fun m!768371 () Bool)

(assert (=> bs!60704 m!768371))

(assert (=> b!522091 d!186271))

(declare-fun bs!60705 () Bool)

(declare-fun d!186273 () Bool)

(assert (= bs!60705 (and d!186273 d!186235)))

(declare-fun lambda!14989 () Int)

(assert (=> bs!60705 (= lambda!14989 lambda!14971)))

(declare-fun bs!60706 () Bool)

(assert (= bs!60706 (and d!186273 d!186241)))

(assert (=> bs!60706 (= lambda!14989 lambda!14974)))

(declare-fun bs!60707 () Bool)

(assert (= bs!60707 (and d!186273 d!186229)))

(assert (=> bs!60707 (= lambda!14989 lambda!14970)))

(declare-fun bs!60708 () Bool)

(assert (= bs!60708 (and d!186273 d!186251)))

(assert (=> bs!60708 (= lambda!14989 lambda!14979)))

(declare-fun bs!60709 () Bool)

(assert (= bs!60709 (and d!186273 d!186213)))

(assert (=> bs!60709 (= lambda!14989 lambda!14965)))

(declare-fun bs!60710 () Bool)

(assert (= bs!60710 (and d!186273 d!186239)))

(assert (=> bs!60710 (= lambda!14989 lambda!14973)))

(declare-fun bs!60711 () Bool)

(assert (= bs!60711 (and d!186273 d!186215)))

(assert (=> bs!60711 (= lambda!14989 lambda!14966)))

(declare-fun bs!60712 () Bool)

(assert (= bs!60712 (and d!186273 d!186249)))

(assert (=> bs!60712 (= lambda!14989 lambda!14978)))

(declare-fun bs!60713 () Bool)

(assert (= bs!60713 (and d!186273 d!186237)))

(assert (=> bs!60713 (= lambda!14989 lambda!14972)))

(declare-fun bs!60714 () Bool)

(assert (= bs!60714 (and d!186273 d!186267)))

(assert (=> bs!60714 (= lambda!14989 lambda!14987)))

(declare-fun bs!60715 () Bool)

(assert (= bs!60715 (and d!186273 d!186257)))

(assert (=> bs!60715 (= lambda!14989 lambda!14982)))

(declare-fun bs!60716 () Bool)

(assert (= bs!60716 (and d!186273 d!186255)))

(assert (=> bs!60716 (= lambda!14989 lambda!14981)))

(declare-fun bs!60717 () Bool)

(assert (= bs!60717 (and d!186273 d!186271)))

(assert (=> bs!60717 (= lambda!14989 lambda!14988)))

(declare-fun bs!60718 () Bool)

(assert (= bs!60718 (and d!186273 d!186253)))

(assert (=> bs!60718 (= lambda!14989 lambda!14980)))

(declare-fun bs!60719 () Bool)

(assert (= bs!60719 (and d!186273 d!186263)))

(assert (=> bs!60719 (= lambda!14989 lambda!14983)))

(assert (=> d!186273 (= (inv!6126 (_2!3201 (_1!3202 (h!10249 mapDefault!2135)))) (forall!1467 (exprs!643 (_2!3201 (_1!3202 (h!10249 mapDefault!2135)))) lambda!14989))))

(declare-fun bs!60720 () Bool)

(assert (= bs!60720 d!186273))

(declare-fun m!768373 () Bool)

(assert (=> bs!60720 m!768373))

(assert (=> b!522094 d!186273))

(declare-fun d!186275 () Bool)

(declare-fun res!221655 () Bool)

(declare-fun e!313278 () Bool)

(assert (=> d!186275 (=> (not res!221655) (not e!313278))))

(declare-fun size!3961 (Conc!1583) Int)

(assert (=> d!186275 (= res!221655 (= (csize!3396 (c!100730 input!747)) (+ (size!3961 (left!4179 (c!100730 input!747))) (size!3961 (right!4509 (c!100730 input!747))))))))

(assert (=> d!186275 (= (inv!6124 (c!100730 input!747)) e!313278)))

(declare-fun b!522189 () Bool)

(declare-fun res!221656 () Bool)

(assert (=> b!522189 (=> (not res!221656) (not e!313278))))

(assert (=> b!522189 (= res!221656 (and (not (= (left!4179 (c!100730 input!747)) Empty!1583)) (not (= (right!4509 (c!100730 input!747)) Empty!1583))))))

(declare-fun b!522190 () Bool)

(declare-fun res!221657 () Bool)

(assert (=> b!522190 (=> (not res!221657) (not e!313278))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!522190 (= res!221657 (= (cheight!1794 (c!100730 input!747)) (+ (max!0 (height!245 (left!4179 (c!100730 input!747))) (height!245 (right!4509 (c!100730 input!747)))) 1)))))

(declare-fun b!522191 () Bool)

(assert (=> b!522191 (= e!313278 (<= 0 (cheight!1794 (c!100730 input!747))))))

(assert (= (and d!186275 res!221655) b!522189))

(assert (= (and b!522189 res!221656) b!522190))

(assert (= (and b!522190 res!221657) b!522191))

(declare-fun m!768375 () Bool)

(assert (=> d!186275 m!768375))

(declare-fun m!768377 () Bool)

(assert (=> d!186275 m!768377))

(declare-fun m!768379 () Bool)

(assert (=> b!522190 m!768379))

(declare-fun m!768381 () Bool)

(assert (=> b!522190 m!768381))

(assert (=> b!522190 m!768379))

(assert (=> b!522190 m!768381))

(declare-fun m!768383 () Bool)

(assert (=> b!522190 m!768383))

(assert (=> b!521926 d!186275))

(declare-fun bs!60721 () Bool)

(declare-fun d!186277 () Bool)

(assert (= bs!60721 (and d!186277 d!186235)))

(declare-fun lambda!14990 () Int)

(assert (=> bs!60721 (= lambda!14990 lambda!14971)))

(declare-fun bs!60722 () Bool)

(assert (= bs!60722 (and d!186277 d!186241)))

(assert (=> bs!60722 (= lambda!14990 lambda!14974)))

(declare-fun bs!60723 () Bool)

(assert (= bs!60723 (and d!186277 d!186229)))

(assert (=> bs!60723 (= lambda!14990 lambda!14970)))

(declare-fun bs!60724 () Bool)

(assert (= bs!60724 (and d!186277 d!186251)))

(assert (=> bs!60724 (= lambda!14990 lambda!14979)))

(declare-fun bs!60725 () Bool)

(assert (= bs!60725 (and d!186277 d!186213)))

(assert (=> bs!60725 (= lambda!14990 lambda!14965)))

(declare-fun bs!60726 () Bool)

(assert (= bs!60726 (and d!186277 d!186273)))

(assert (=> bs!60726 (= lambda!14990 lambda!14989)))

(declare-fun bs!60727 () Bool)

(assert (= bs!60727 (and d!186277 d!186239)))

(assert (=> bs!60727 (= lambda!14990 lambda!14973)))

(declare-fun bs!60728 () Bool)

(assert (= bs!60728 (and d!186277 d!186215)))

(assert (=> bs!60728 (= lambda!14990 lambda!14966)))

(declare-fun bs!60729 () Bool)

(assert (= bs!60729 (and d!186277 d!186249)))

(assert (=> bs!60729 (= lambda!14990 lambda!14978)))

(declare-fun bs!60730 () Bool)

(assert (= bs!60730 (and d!186277 d!186237)))

(assert (=> bs!60730 (= lambda!14990 lambda!14972)))

(declare-fun bs!60731 () Bool)

(assert (= bs!60731 (and d!186277 d!186267)))

(assert (=> bs!60731 (= lambda!14990 lambda!14987)))

(declare-fun bs!60732 () Bool)

(assert (= bs!60732 (and d!186277 d!186257)))

(assert (=> bs!60732 (= lambda!14990 lambda!14982)))

(declare-fun bs!60733 () Bool)

(assert (= bs!60733 (and d!186277 d!186255)))

(assert (=> bs!60733 (= lambda!14990 lambda!14981)))

(declare-fun bs!60734 () Bool)

(assert (= bs!60734 (and d!186277 d!186271)))

(assert (=> bs!60734 (= lambda!14990 lambda!14988)))

(declare-fun bs!60735 () Bool)

(assert (= bs!60735 (and d!186277 d!186253)))

(assert (=> bs!60735 (= lambda!14990 lambda!14980)))

(declare-fun bs!60736 () Bool)

(assert (= bs!60736 (and d!186277 d!186263)))

(assert (=> bs!60736 (= lambda!14990 lambda!14983)))

(assert (=> d!186277 (= (inv!6126 setElem!2145) (forall!1467 (exprs!643 setElem!2145) lambda!14990))))

(declare-fun bs!60737 () Bool)

(assert (= bs!60737 d!186277))

(declare-fun m!768385 () Bool)

(assert (=> bs!60737 m!768385))

(assert (=> setNonEmpty!2145 d!186277))

(declare-fun bs!60738 () Bool)

(declare-fun d!186279 () Bool)

(assert (= bs!60738 (and d!186279 d!186235)))

(declare-fun lambda!14991 () Int)

(assert (=> bs!60738 (= lambda!14991 lambda!14971)))

(declare-fun bs!60739 () Bool)

(assert (= bs!60739 (and d!186279 d!186241)))

(assert (=> bs!60739 (= lambda!14991 lambda!14974)))

(declare-fun bs!60740 () Bool)

(assert (= bs!60740 (and d!186279 d!186229)))

(assert (=> bs!60740 (= lambda!14991 lambda!14970)))

(declare-fun bs!60741 () Bool)

(assert (= bs!60741 (and d!186279 d!186251)))

(assert (=> bs!60741 (= lambda!14991 lambda!14979)))

(declare-fun bs!60742 () Bool)

(assert (= bs!60742 (and d!186279 d!186213)))

(assert (=> bs!60742 (= lambda!14991 lambda!14965)))

(declare-fun bs!60743 () Bool)

(assert (= bs!60743 (and d!186279 d!186273)))

(assert (=> bs!60743 (= lambda!14991 lambda!14989)))

(declare-fun bs!60744 () Bool)

(assert (= bs!60744 (and d!186279 d!186277)))

(assert (=> bs!60744 (= lambda!14991 lambda!14990)))

(declare-fun bs!60745 () Bool)

(assert (= bs!60745 (and d!186279 d!186239)))

(assert (=> bs!60745 (= lambda!14991 lambda!14973)))

(declare-fun bs!60746 () Bool)

(assert (= bs!60746 (and d!186279 d!186215)))

(assert (=> bs!60746 (= lambda!14991 lambda!14966)))

(declare-fun bs!60747 () Bool)

(assert (= bs!60747 (and d!186279 d!186249)))

(assert (=> bs!60747 (= lambda!14991 lambda!14978)))

(declare-fun bs!60748 () Bool)

(assert (= bs!60748 (and d!186279 d!186237)))

(assert (=> bs!60748 (= lambda!14991 lambda!14972)))

(declare-fun bs!60749 () Bool)

(assert (= bs!60749 (and d!186279 d!186267)))

(assert (=> bs!60749 (= lambda!14991 lambda!14987)))

(declare-fun bs!60750 () Bool)

(assert (= bs!60750 (and d!186279 d!186257)))

(assert (=> bs!60750 (= lambda!14991 lambda!14982)))

(declare-fun bs!60751 () Bool)

(assert (= bs!60751 (and d!186279 d!186255)))

(assert (=> bs!60751 (= lambda!14991 lambda!14981)))

(declare-fun bs!60752 () Bool)

(assert (= bs!60752 (and d!186279 d!186271)))

(assert (=> bs!60752 (= lambda!14991 lambda!14988)))

(declare-fun bs!60753 () Bool)

(assert (= bs!60753 (and d!186279 d!186253)))

(assert (=> bs!60753 (= lambda!14991 lambda!14980)))

(declare-fun bs!60754 () Bool)

(assert (= bs!60754 (and d!186279 d!186263)))

(assert (=> bs!60754 (= lambda!14991 lambda!14983)))

(assert (=> d!186279 (= (inv!6126 setElem!2146) (forall!1467 (exprs!643 setElem!2146) lambda!14991))))

(declare-fun bs!60755 () Bool)

(assert (= bs!60755 d!186279))

(declare-fun m!768387 () Bool)

(assert (=> bs!60755 m!768387))

(assert (=> setNonEmpty!2146 d!186279))

(declare-fun bs!60756 () Bool)

(declare-fun d!186281 () Bool)

(assert (= bs!60756 (and d!186281 d!186235)))

(declare-fun lambda!14992 () Int)

(assert (=> bs!60756 (= lambda!14992 lambda!14971)))

(declare-fun bs!60757 () Bool)

(assert (= bs!60757 (and d!186281 d!186241)))

(assert (=> bs!60757 (= lambda!14992 lambda!14974)))

(declare-fun bs!60758 () Bool)

(assert (= bs!60758 (and d!186281 d!186229)))

(assert (=> bs!60758 (= lambda!14992 lambda!14970)))

(declare-fun bs!60759 () Bool)

(assert (= bs!60759 (and d!186281 d!186251)))

(assert (=> bs!60759 (= lambda!14992 lambda!14979)))

(declare-fun bs!60760 () Bool)

(assert (= bs!60760 (and d!186281 d!186213)))

(assert (=> bs!60760 (= lambda!14992 lambda!14965)))

(declare-fun bs!60761 () Bool)

(assert (= bs!60761 (and d!186281 d!186273)))

(assert (=> bs!60761 (= lambda!14992 lambda!14989)))

(declare-fun bs!60762 () Bool)

(assert (= bs!60762 (and d!186281 d!186277)))

(assert (=> bs!60762 (= lambda!14992 lambda!14990)))

(declare-fun bs!60763 () Bool)

(assert (= bs!60763 (and d!186281 d!186239)))

(assert (=> bs!60763 (= lambda!14992 lambda!14973)))

(declare-fun bs!60764 () Bool)

(assert (= bs!60764 (and d!186281 d!186215)))

(assert (=> bs!60764 (= lambda!14992 lambda!14966)))

(declare-fun bs!60765 () Bool)

(assert (= bs!60765 (and d!186281 d!186249)))

(assert (=> bs!60765 (= lambda!14992 lambda!14978)))

(declare-fun bs!60766 () Bool)

(assert (= bs!60766 (and d!186281 d!186237)))

(assert (=> bs!60766 (= lambda!14992 lambda!14972)))

(declare-fun bs!60767 () Bool)

(assert (= bs!60767 (and d!186281 d!186267)))

(assert (=> bs!60767 (= lambda!14992 lambda!14987)))

(declare-fun bs!60768 () Bool)

(assert (= bs!60768 (and d!186281 d!186257)))

(assert (=> bs!60768 (= lambda!14992 lambda!14982)))

(declare-fun bs!60769 () Bool)

(assert (= bs!60769 (and d!186281 d!186279)))

(assert (=> bs!60769 (= lambda!14992 lambda!14991)))

(declare-fun bs!60770 () Bool)

(assert (= bs!60770 (and d!186281 d!186255)))

(assert (=> bs!60770 (= lambda!14992 lambda!14981)))

(declare-fun bs!60771 () Bool)

(assert (= bs!60771 (and d!186281 d!186271)))

(assert (=> bs!60771 (= lambda!14992 lambda!14988)))

(declare-fun bs!60772 () Bool)

(assert (= bs!60772 (and d!186281 d!186253)))

(assert (=> bs!60772 (= lambda!14992 lambda!14980)))

(declare-fun bs!60773 () Bool)

(assert (= bs!60773 (and d!186281 d!186263)))

(assert (=> bs!60773 (= lambda!14992 lambda!14983)))

(assert (=> d!186281 (= (inv!6126 setElem!2134) (forall!1467 (exprs!643 setElem!2134) lambda!14992))))

(declare-fun bs!60774 () Bool)

(assert (= bs!60774 d!186281))

(declare-fun m!768389 () Bool)

(assert (=> bs!60774 m!768389))

(assert (=> setNonEmpty!2135 d!186281))

(declare-fun bs!60775 () Bool)

(declare-fun d!186283 () Bool)

(assert (= bs!60775 (and d!186283 d!186235)))

(declare-fun lambda!14993 () Int)

(assert (=> bs!60775 (= lambda!14993 lambda!14971)))

(declare-fun bs!60776 () Bool)

(assert (= bs!60776 (and d!186283 d!186241)))

(assert (=> bs!60776 (= lambda!14993 lambda!14974)))

(declare-fun bs!60777 () Bool)

(assert (= bs!60777 (and d!186283 d!186229)))

(assert (=> bs!60777 (= lambda!14993 lambda!14970)))

(declare-fun bs!60778 () Bool)

(assert (= bs!60778 (and d!186283 d!186251)))

(assert (=> bs!60778 (= lambda!14993 lambda!14979)))

(declare-fun bs!60779 () Bool)

(assert (= bs!60779 (and d!186283 d!186213)))

(assert (=> bs!60779 (= lambda!14993 lambda!14965)))

(declare-fun bs!60780 () Bool)

(assert (= bs!60780 (and d!186283 d!186273)))

(assert (=> bs!60780 (= lambda!14993 lambda!14989)))

(declare-fun bs!60781 () Bool)

(assert (= bs!60781 (and d!186283 d!186277)))

(assert (=> bs!60781 (= lambda!14993 lambda!14990)))

(declare-fun bs!60782 () Bool)

(assert (= bs!60782 (and d!186283 d!186239)))

(assert (=> bs!60782 (= lambda!14993 lambda!14973)))

(declare-fun bs!60783 () Bool)

(assert (= bs!60783 (and d!186283 d!186215)))

(assert (=> bs!60783 (= lambda!14993 lambda!14966)))

(declare-fun bs!60784 () Bool)

(assert (= bs!60784 (and d!186283 d!186249)))

(assert (=> bs!60784 (= lambda!14993 lambda!14978)))

(declare-fun bs!60785 () Bool)

(assert (= bs!60785 (and d!186283 d!186237)))

(assert (=> bs!60785 (= lambda!14993 lambda!14972)))

(declare-fun bs!60786 () Bool)

(assert (= bs!60786 (and d!186283 d!186267)))

(assert (=> bs!60786 (= lambda!14993 lambda!14987)))

(declare-fun bs!60787 () Bool)

(assert (= bs!60787 (and d!186283 d!186257)))

(assert (=> bs!60787 (= lambda!14993 lambda!14982)))

(declare-fun bs!60788 () Bool)

(assert (= bs!60788 (and d!186283 d!186279)))

(assert (=> bs!60788 (= lambda!14993 lambda!14991)))

(declare-fun bs!60789 () Bool)

(assert (= bs!60789 (and d!186283 d!186255)))

(assert (=> bs!60789 (= lambda!14993 lambda!14981)))

(declare-fun bs!60790 () Bool)

(assert (= bs!60790 (and d!186283 d!186271)))

(assert (=> bs!60790 (= lambda!14993 lambda!14988)))

(declare-fun bs!60791 () Bool)

(assert (= bs!60791 (and d!186283 d!186281)))

(assert (=> bs!60791 (= lambda!14993 lambda!14992)))

(declare-fun bs!60792 () Bool)

(assert (= bs!60792 (and d!186283 d!186253)))

(assert (=> bs!60792 (= lambda!14993 lambda!14980)))

(declare-fun bs!60793 () Bool)

(assert (= bs!60793 (and d!186283 d!186263)))

(assert (=> bs!60793 (= lambda!14993 lambda!14983)))

(assert (=> d!186283 (= (inv!6126 setElem!2117) (forall!1467 (exprs!643 setElem!2117) lambda!14993))))

(declare-fun bs!60794 () Bool)

(assert (= bs!60794 d!186283))

(declare-fun m!768391 () Bool)

(assert (=> bs!60794 m!768391))

(assert (=> setNonEmpty!2117 d!186283))

(assert (=> b!521912 d!186195))

(declare-fun b!522193 () Bool)

(declare-fun e!313279 () List!4860)

(assert (=> b!522193 (= e!313279 (Cons!4850 (h!10251 (t!73450 lt!217192)) (++!1365 (t!73450 (t!73450 lt!217192)) lt!217191)))))

(declare-fun b!522194 () Bool)

(declare-fun res!221658 () Bool)

(declare-fun e!313280 () Bool)

(assert (=> b!522194 (=> (not res!221658) (not e!313280))))

(declare-fun lt!217202 () List!4860)

(assert (=> b!522194 (= res!221658 (= (size!3960 lt!217202) (+ (size!3960 (t!73450 lt!217192)) (size!3960 lt!217191))))))

(declare-fun b!522192 () Bool)

(assert (=> b!522192 (= e!313279 lt!217191)))

(declare-fun d!186285 () Bool)

(assert (=> d!186285 e!313280))

(declare-fun res!221659 () Bool)

(assert (=> d!186285 (=> (not res!221659) (not e!313280))))

(assert (=> d!186285 (= res!221659 (= (content!882 lt!217202) ((_ map or) (content!882 (t!73450 lt!217192)) (content!882 lt!217191))))))

(assert (=> d!186285 (= lt!217202 e!313279)))

(declare-fun c!100751 () Bool)

(assert (=> d!186285 (= c!100751 ((_ is Nil!4850) (t!73450 lt!217192)))))

(assert (=> d!186285 (= (++!1365 (t!73450 lt!217192) lt!217191) lt!217202)))

(declare-fun b!522195 () Bool)

(assert (=> b!522195 (= e!313280 (or (not (= lt!217191 Nil!4850)) (= lt!217202 (t!73450 lt!217192))))))

(assert (= (and d!186285 c!100751) b!522192))

(assert (= (and d!186285 (not c!100751)) b!522193))

(assert (= (and d!186285 res!221659) b!522194))

(assert (= (and b!522194 res!221658) b!522195))

(declare-fun m!768393 () Bool)

(assert (=> b!522193 m!768393))

(declare-fun m!768395 () Bool)

(assert (=> b!522194 m!768395))

(assert (=> b!522194 m!768302))

(assert (=> b!522194 m!768165))

(declare-fun m!768397 () Bool)

(assert (=> d!186285 m!768397))

(declare-fun m!768399 () Bool)

(assert (=> d!186285 m!768399))

(assert (=> d!186285 m!768171))

(assert (=> b!521941 d!186285))

(declare-fun bs!60795 () Bool)

(declare-fun d!186287 () Bool)

(assert (= bs!60795 (and d!186287 d!186235)))

(declare-fun lambda!14994 () Int)

(assert (=> bs!60795 (= lambda!14994 lambda!14971)))

(declare-fun bs!60796 () Bool)

(assert (= bs!60796 (and d!186287 d!186241)))

(assert (=> bs!60796 (= lambda!14994 lambda!14974)))

(declare-fun bs!60797 () Bool)

(assert (= bs!60797 (and d!186287 d!186229)))

(assert (=> bs!60797 (= lambda!14994 lambda!14970)))

(declare-fun bs!60798 () Bool)

(assert (= bs!60798 (and d!186287 d!186251)))

(assert (=> bs!60798 (= lambda!14994 lambda!14979)))

(declare-fun bs!60799 () Bool)

(assert (= bs!60799 (and d!186287 d!186213)))

(assert (=> bs!60799 (= lambda!14994 lambda!14965)))

(declare-fun bs!60800 () Bool)

(assert (= bs!60800 (and d!186287 d!186273)))

(assert (=> bs!60800 (= lambda!14994 lambda!14989)))

(declare-fun bs!60801 () Bool)

(assert (= bs!60801 (and d!186287 d!186277)))

(assert (=> bs!60801 (= lambda!14994 lambda!14990)))

(declare-fun bs!60802 () Bool)

(assert (= bs!60802 (and d!186287 d!186239)))

(assert (=> bs!60802 (= lambda!14994 lambda!14973)))

(declare-fun bs!60803 () Bool)

(assert (= bs!60803 (and d!186287 d!186215)))

(assert (=> bs!60803 (= lambda!14994 lambda!14966)))

(declare-fun bs!60804 () Bool)

(assert (= bs!60804 (and d!186287 d!186249)))

(assert (=> bs!60804 (= lambda!14994 lambda!14978)))

(declare-fun bs!60805 () Bool)

(assert (= bs!60805 (and d!186287 d!186237)))

(assert (=> bs!60805 (= lambda!14994 lambda!14972)))

(declare-fun bs!60806 () Bool)

(assert (= bs!60806 (and d!186287 d!186267)))

(assert (=> bs!60806 (= lambda!14994 lambda!14987)))

(declare-fun bs!60807 () Bool)

(assert (= bs!60807 (and d!186287 d!186279)))

(assert (=> bs!60807 (= lambda!14994 lambda!14991)))

(declare-fun bs!60808 () Bool)

(assert (= bs!60808 (and d!186287 d!186255)))

(assert (=> bs!60808 (= lambda!14994 lambda!14981)))

(declare-fun bs!60809 () Bool)

(assert (= bs!60809 (and d!186287 d!186271)))

(assert (=> bs!60809 (= lambda!14994 lambda!14988)))

(declare-fun bs!60810 () Bool)

(assert (= bs!60810 (and d!186287 d!186281)))

(assert (=> bs!60810 (= lambda!14994 lambda!14992)))

(declare-fun bs!60811 () Bool)

(assert (= bs!60811 (and d!186287 d!186253)))

(assert (=> bs!60811 (= lambda!14994 lambda!14980)))

(declare-fun bs!60812 () Bool)

(assert (= bs!60812 (and d!186287 d!186263)))

(assert (=> bs!60812 (= lambda!14994 lambda!14983)))

(declare-fun bs!60813 () Bool)

(assert (= bs!60813 (and d!186287 d!186283)))

(assert (=> bs!60813 (= lambda!14994 lambda!14993)))

(declare-fun bs!60814 () Bool)

(assert (= bs!60814 (and d!186287 d!186257)))

(assert (=> bs!60814 (= lambda!14994 lambda!14982)))

(assert (=> d!186287 (= (inv!6126 (_1!3203 (_1!3204 (h!10250 mapValue!2135)))) (forall!1467 (exprs!643 (_1!3203 (_1!3204 (h!10250 mapValue!2135)))) lambda!14994))))

(declare-fun bs!60815 () Bool)

(assert (= bs!60815 d!186287))

(declare-fun m!768401 () Bool)

(assert (=> bs!60815 m!768401))

(assert (=> b!522059 d!186287))

(declare-fun b!522201 () Bool)

(assert (=> b!522201 true))

(declare-fun d!186289 () Bool)

(declare-fun res!221664 () Bool)

(declare-fun e!313283 () Bool)

(assert (=> d!186289 (=> (not res!221664) (not e!313283))))

(declare-fun valid!527 (MutableMap!525) Bool)

(assert (=> d!186289 (= res!221664 (valid!527 (cache!912 cacheFurthestNullable!56)))))

(assert (=> d!186289 (= (validCacheMapFurthestNullable!23 (cache!912 cacheFurthestNullable!56) (totalInput!1731 cacheFurthestNullable!56)) e!313283)))

(declare-fun b!522200 () Bool)

(declare-fun res!221665 () Bool)

(assert (=> b!522200 (=> (not res!221665) (not e!313283))))

(declare-fun invariantList!91 (List!4861) Bool)

(declare-datatypes ((ListMap!231 0))(
  ( (ListMap!232 (toList!449 List!4861)) )
))
(declare-fun map!1116 (MutableMap!525) ListMap!231)

(assert (=> b!522200 (= res!221665 (invariantList!91 (toList!449 (map!1116 (cache!912 cacheFurthestNullable!56)))))))

(declare-fun lambda!14997 () Int)

(declare-fun forall!1470 (List!4861 Int) Bool)

(assert (=> b!522201 (= e!313283 (forall!1470 (toList!449 (map!1116 (cache!912 cacheFurthestNullable!56))) lambda!14997))))

(assert (= (and d!186289 res!221664) b!522200))

(assert (= (and b!522200 res!221665) b!522201))

(declare-fun m!768404 () Bool)

(assert (=> d!186289 m!768404))

(declare-fun m!768406 () Bool)

(assert (=> b!522200 m!768406))

(declare-fun m!768408 () Bool)

(assert (=> b!522200 m!768408))

(assert (=> b!522201 m!768406))

(declare-fun m!768410 () Bool)

(assert (=> b!522201 m!768410))

(assert (=> b!521952 d!186289))

(assert (=> d!186175 d!186247))

(declare-fun d!186291 () Bool)

(assert (=> d!186291 true))

(declare-fun order!4353 () Int)

(declare-fun lambda!15000 () Int)

(declare-fun dynLambda!3015 (Int Int) Int)

(assert (=> d!186291 (< (dynLambda!3014 order!4351 (toValue!1707 (transformation!880 (h!10254 rules!1345)))) (dynLambda!3015 order!4353 lambda!15000))))

(declare-fun Forall2!193 (Int) Bool)

(assert (=> d!186291 (= (equivClasses!335 (toChars!1566 (transformation!880 (h!10254 rules!1345))) (toValue!1707 (transformation!880 (h!10254 rules!1345)))) (Forall2!193 lambda!15000))))

(declare-fun bs!60816 () Bool)

(assert (= bs!60816 d!186291))

(declare-fun m!768412 () Bool)

(assert (=> bs!60816 m!768412))

(assert (=> b!521946 d!186291))

(declare-fun d!186293 () Bool)

(assert (=> d!186293 true))

(declare-fun lt!217205 () Bool)

(declare-fun rulesValidInductive!293 (LexerInterface!766 List!4863) Bool)

(assert (=> d!186293 (= lt!217205 (rulesValidInductive!293 thiss!12147 rules!1345))))

(declare-fun lambda!15003 () Int)

(declare-fun forall!1471 (List!4863 Int) Bool)

(assert (=> d!186293 (= lt!217205 (forall!1471 rules!1345 lambda!15003))))

(assert (=> d!186293 (= (rulesValid!317 thiss!12147 rules!1345) lt!217205)))

(declare-fun bs!60817 () Bool)

(assert (= bs!60817 d!186293))

(declare-fun m!768414 () Bool)

(assert (=> bs!60817 m!768414))

(declare-fun m!768416 () Bool)

(assert (=> bs!60817 m!768416))

(assert (=> d!186173 d!186293))

(declare-fun bs!60818 () Bool)

(declare-fun d!186295 () Bool)

(assert (= bs!60818 (and d!186295 d!186235)))

(declare-fun lambda!15004 () Int)

(assert (=> bs!60818 (= lambda!15004 lambda!14971)))

(declare-fun bs!60819 () Bool)

(assert (= bs!60819 (and d!186295 d!186241)))

(assert (=> bs!60819 (= lambda!15004 lambda!14974)))

(declare-fun bs!60820 () Bool)

(assert (= bs!60820 (and d!186295 d!186229)))

(assert (=> bs!60820 (= lambda!15004 lambda!14970)))

(declare-fun bs!60821 () Bool)

(assert (= bs!60821 (and d!186295 d!186287)))

(assert (=> bs!60821 (= lambda!15004 lambda!14994)))

(declare-fun bs!60822 () Bool)

(assert (= bs!60822 (and d!186295 d!186251)))

(assert (=> bs!60822 (= lambda!15004 lambda!14979)))

(declare-fun bs!60823 () Bool)

(assert (= bs!60823 (and d!186295 d!186213)))

(assert (=> bs!60823 (= lambda!15004 lambda!14965)))

(declare-fun bs!60824 () Bool)

(assert (= bs!60824 (and d!186295 d!186273)))

(assert (=> bs!60824 (= lambda!15004 lambda!14989)))

(declare-fun bs!60825 () Bool)

(assert (= bs!60825 (and d!186295 d!186277)))

(assert (=> bs!60825 (= lambda!15004 lambda!14990)))

(declare-fun bs!60826 () Bool)

(assert (= bs!60826 (and d!186295 d!186239)))

(assert (=> bs!60826 (= lambda!15004 lambda!14973)))

(declare-fun bs!60827 () Bool)

(assert (= bs!60827 (and d!186295 d!186215)))

(assert (=> bs!60827 (= lambda!15004 lambda!14966)))

(declare-fun bs!60828 () Bool)

(assert (= bs!60828 (and d!186295 d!186249)))

(assert (=> bs!60828 (= lambda!15004 lambda!14978)))

(declare-fun bs!60829 () Bool)

(assert (= bs!60829 (and d!186295 d!186237)))

(assert (=> bs!60829 (= lambda!15004 lambda!14972)))

(declare-fun bs!60830 () Bool)

(assert (= bs!60830 (and d!186295 d!186267)))

(assert (=> bs!60830 (= lambda!15004 lambda!14987)))

(declare-fun bs!60831 () Bool)

(assert (= bs!60831 (and d!186295 d!186279)))

(assert (=> bs!60831 (= lambda!15004 lambda!14991)))

(declare-fun bs!60832 () Bool)

(assert (= bs!60832 (and d!186295 d!186255)))

(assert (=> bs!60832 (= lambda!15004 lambda!14981)))

(declare-fun bs!60833 () Bool)

(assert (= bs!60833 (and d!186295 d!186271)))

(assert (=> bs!60833 (= lambda!15004 lambda!14988)))

(declare-fun bs!60834 () Bool)

(assert (= bs!60834 (and d!186295 d!186281)))

(assert (=> bs!60834 (= lambda!15004 lambda!14992)))

(declare-fun bs!60835 () Bool)

(assert (= bs!60835 (and d!186295 d!186253)))

(assert (=> bs!60835 (= lambda!15004 lambda!14980)))

(declare-fun bs!60836 () Bool)

(assert (= bs!60836 (and d!186295 d!186263)))

(assert (=> bs!60836 (= lambda!15004 lambda!14983)))

(declare-fun bs!60837 () Bool)

(assert (= bs!60837 (and d!186295 d!186283)))

(assert (=> bs!60837 (= lambda!15004 lambda!14993)))

(declare-fun bs!60838 () Bool)

(assert (= bs!60838 (and d!186295 d!186257)))

(assert (=> bs!60838 (= lambda!15004 lambda!14982)))

(assert (=> d!186295 (= (inv!6126 setElem!2127) (forall!1467 (exprs!643 setElem!2127) lambda!15004))))

(declare-fun bs!60839 () Bool)

(assert (= bs!60839 d!186295))

(declare-fun m!768418 () Bool)

(assert (=> bs!60839 m!768418))

(assert (=> setNonEmpty!2127 d!186295))

(declare-fun bs!60840 () Bool)

(declare-fun d!186297 () Bool)

(assert (= bs!60840 (and d!186297 d!186235)))

(declare-fun lambda!15005 () Int)

(assert (=> bs!60840 (= lambda!15005 lambda!14971)))

(declare-fun bs!60841 () Bool)

(assert (= bs!60841 (and d!186297 d!186241)))

(assert (=> bs!60841 (= lambda!15005 lambda!14974)))

(declare-fun bs!60842 () Bool)

(assert (= bs!60842 (and d!186297 d!186229)))

(assert (=> bs!60842 (= lambda!15005 lambda!14970)))

(declare-fun bs!60843 () Bool)

(assert (= bs!60843 (and d!186297 d!186287)))

(assert (=> bs!60843 (= lambda!15005 lambda!14994)))

(declare-fun bs!60844 () Bool)

(assert (= bs!60844 (and d!186297 d!186251)))

(assert (=> bs!60844 (= lambda!15005 lambda!14979)))

(declare-fun bs!60845 () Bool)

(assert (= bs!60845 (and d!186297 d!186213)))

(assert (=> bs!60845 (= lambda!15005 lambda!14965)))

(declare-fun bs!60846 () Bool)

(assert (= bs!60846 (and d!186297 d!186273)))

(assert (=> bs!60846 (= lambda!15005 lambda!14989)))

(declare-fun bs!60847 () Bool)

(assert (= bs!60847 (and d!186297 d!186277)))

(assert (=> bs!60847 (= lambda!15005 lambda!14990)))

(declare-fun bs!60848 () Bool)

(assert (= bs!60848 (and d!186297 d!186239)))

(assert (=> bs!60848 (= lambda!15005 lambda!14973)))

(declare-fun bs!60849 () Bool)

(assert (= bs!60849 (and d!186297 d!186215)))

(assert (=> bs!60849 (= lambda!15005 lambda!14966)))

(declare-fun bs!60850 () Bool)

(assert (= bs!60850 (and d!186297 d!186237)))

(assert (=> bs!60850 (= lambda!15005 lambda!14972)))

(declare-fun bs!60851 () Bool)

(assert (= bs!60851 (and d!186297 d!186267)))

(assert (=> bs!60851 (= lambda!15005 lambda!14987)))

(declare-fun bs!60852 () Bool)

(assert (= bs!60852 (and d!186297 d!186279)))

(assert (=> bs!60852 (= lambda!15005 lambda!14991)))

(declare-fun bs!60853 () Bool)

(assert (= bs!60853 (and d!186297 d!186255)))

(assert (=> bs!60853 (= lambda!15005 lambda!14981)))

(declare-fun bs!60854 () Bool)

(assert (= bs!60854 (and d!186297 d!186271)))

(assert (=> bs!60854 (= lambda!15005 lambda!14988)))

(declare-fun bs!60855 () Bool)

(assert (= bs!60855 (and d!186297 d!186281)))

(assert (=> bs!60855 (= lambda!15005 lambda!14992)))

(declare-fun bs!60856 () Bool)

(assert (= bs!60856 (and d!186297 d!186253)))

(assert (=> bs!60856 (= lambda!15005 lambda!14980)))

(declare-fun bs!60857 () Bool)

(assert (= bs!60857 (and d!186297 d!186263)))

(assert (=> bs!60857 (= lambda!15005 lambda!14983)))

(declare-fun bs!60858 () Bool)

(assert (= bs!60858 (and d!186297 d!186295)))

(assert (=> bs!60858 (= lambda!15005 lambda!15004)))

(declare-fun bs!60859 () Bool)

(assert (= bs!60859 (and d!186297 d!186249)))

(assert (=> bs!60859 (= lambda!15005 lambda!14978)))

(declare-fun bs!60860 () Bool)

(assert (= bs!60860 (and d!186297 d!186283)))

(assert (=> bs!60860 (= lambda!15005 lambda!14993)))

(declare-fun bs!60861 () Bool)

(assert (= bs!60861 (and d!186297 d!186257)))

(assert (=> bs!60861 (= lambda!15005 lambda!14982)))

(assert (=> d!186297 (= (inv!6126 setElem!2141) (forall!1467 (exprs!643 setElem!2141) lambda!15005))))

(declare-fun bs!60862 () Bool)

(assert (= bs!60862 d!186297))

(declare-fun m!768420 () Bool)

(assert (=> bs!60862 m!768420))

(assert (=> setNonEmpty!2141 d!186297))

(assert (=> b!521918 d!186171))

(declare-fun bs!60863 () Bool)

(declare-fun d!186299 () Bool)

(assert (= bs!60863 (and d!186299 d!186235)))

(declare-fun lambda!15006 () Int)

(assert (=> bs!60863 (= lambda!15006 lambda!14971)))

(declare-fun bs!60864 () Bool)

(assert (= bs!60864 (and d!186299 d!186241)))

(assert (=> bs!60864 (= lambda!15006 lambda!14974)))

(declare-fun bs!60865 () Bool)

(assert (= bs!60865 (and d!186299 d!186229)))

(assert (=> bs!60865 (= lambda!15006 lambda!14970)))

(declare-fun bs!60866 () Bool)

(assert (= bs!60866 (and d!186299 d!186287)))

(assert (=> bs!60866 (= lambda!15006 lambda!14994)))

(declare-fun bs!60867 () Bool)

(assert (= bs!60867 (and d!186299 d!186251)))

(assert (=> bs!60867 (= lambda!15006 lambda!14979)))

(declare-fun bs!60868 () Bool)

(assert (= bs!60868 (and d!186299 d!186273)))

(assert (=> bs!60868 (= lambda!15006 lambda!14989)))

(declare-fun bs!60869 () Bool)

(assert (= bs!60869 (and d!186299 d!186277)))

(assert (=> bs!60869 (= lambda!15006 lambda!14990)))

(declare-fun bs!60870 () Bool)

(assert (= bs!60870 (and d!186299 d!186239)))

(assert (=> bs!60870 (= lambda!15006 lambda!14973)))

(declare-fun bs!60871 () Bool)

(assert (= bs!60871 (and d!186299 d!186215)))

(assert (=> bs!60871 (= lambda!15006 lambda!14966)))

(declare-fun bs!60872 () Bool)

(assert (= bs!60872 (and d!186299 d!186237)))

(assert (=> bs!60872 (= lambda!15006 lambda!14972)))

(declare-fun bs!60873 () Bool)

(assert (= bs!60873 (and d!186299 d!186267)))

(assert (=> bs!60873 (= lambda!15006 lambda!14987)))

(declare-fun bs!60874 () Bool)

(assert (= bs!60874 (and d!186299 d!186279)))

(assert (=> bs!60874 (= lambda!15006 lambda!14991)))

(declare-fun bs!60875 () Bool)

(assert (= bs!60875 (and d!186299 d!186255)))

(assert (=> bs!60875 (= lambda!15006 lambda!14981)))

(declare-fun bs!60876 () Bool)

(assert (= bs!60876 (and d!186299 d!186271)))

(assert (=> bs!60876 (= lambda!15006 lambda!14988)))

(declare-fun bs!60877 () Bool)

(assert (= bs!60877 (and d!186299 d!186281)))

(assert (=> bs!60877 (= lambda!15006 lambda!14992)))

(declare-fun bs!60878 () Bool)

(assert (= bs!60878 (and d!186299 d!186253)))

(assert (=> bs!60878 (= lambda!15006 lambda!14980)))

(declare-fun bs!60879 () Bool)

(assert (= bs!60879 (and d!186299 d!186263)))

(assert (=> bs!60879 (= lambda!15006 lambda!14983)))

(declare-fun bs!60880 () Bool)

(assert (= bs!60880 (and d!186299 d!186297)))

(assert (=> bs!60880 (= lambda!15006 lambda!15005)))

(declare-fun bs!60881 () Bool)

(assert (= bs!60881 (and d!186299 d!186213)))

(assert (=> bs!60881 (= lambda!15006 lambda!14965)))

(declare-fun bs!60882 () Bool)

(assert (= bs!60882 (and d!186299 d!186295)))

(assert (=> bs!60882 (= lambda!15006 lambda!15004)))

(declare-fun bs!60883 () Bool)

(assert (= bs!60883 (and d!186299 d!186249)))

(assert (=> bs!60883 (= lambda!15006 lambda!14978)))

(declare-fun bs!60884 () Bool)

(assert (= bs!60884 (and d!186299 d!186283)))

(assert (=> bs!60884 (= lambda!15006 lambda!14993)))

(declare-fun bs!60885 () Bool)

(assert (= bs!60885 (and d!186299 d!186257)))

(assert (=> bs!60885 (= lambda!15006 lambda!14982)))

(assert (=> d!186299 (= (inv!6126 setElem!2148) (forall!1467 (exprs!643 setElem!2148) lambda!15006))))

(declare-fun bs!60886 () Bool)

(assert (= bs!60886 d!186299))

(declare-fun m!768422 () Bool)

(assert (=> bs!60886 m!768422))

(assert (=> setNonEmpty!2148 d!186299))

(declare-fun bs!60887 () Bool)

(declare-fun d!186301 () Bool)

(assert (= bs!60887 (and d!186301 d!186235)))

(declare-fun lambda!15007 () Int)

(assert (=> bs!60887 (= lambda!15007 lambda!14971)))

(declare-fun bs!60888 () Bool)

(assert (= bs!60888 (and d!186301 d!186241)))

(assert (=> bs!60888 (= lambda!15007 lambda!14974)))

(declare-fun bs!60889 () Bool)

(assert (= bs!60889 (and d!186301 d!186229)))

(assert (=> bs!60889 (= lambda!15007 lambda!14970)))

(declare-fun bs!60890 () Bool)

(assert (= bs!60890 (and d!186301 d!186287)))

(assert (=> bs!60890 (= lambda!15007 lambda!14994)))

(declare-fun bs!60891 () Bool)

(assert (= bs!60891 (and d!186301 d!186251)))

(assert (=> bs!60891 (= lambda!15007 lambda!14979)))

(declare-fun bs!60892 () Bool)

(assert (= bs!60892 (and d!186301 d!186273)))

(assert (=> bs!60892 (= lambda!15007 lambda!14989)))

(declare-fun bs!60893 () Bool)

(assert (= bs!60893 (and d!186301 d!186277)))

(assert (=> bs!60893 (= lambda!15007 lambda!14990)))

(declare-fun bs!60894 () Bool)

(assert (= bs!60894 (and d!186301 d!186239)))

(assert (=> bs!60894 (= lambda!15007 lambda!14973)))

(declare-fun bs!60895 () Bool)

(assert (= bs!60895 (and d!186301 d!186215)))

(assert (=> bs!60895 (= lambda!15007 lambda!14966)))

(declare-fun bs!60896 () Bool)

(assert (= bs!60896 (and d!186301 d!186237)))

(assert (=> bs!60896 (= lambda!15007 lambda!14972)))

(declare-fun bs!60897 () Bool)

(assert (= bs!60897 (and d!186301 d!186299)))

(assert (=> bs!60897 (= lambda!15007 lambda!15006)))

(declare-fun bs!60898 () Bool)

(assert (= bs!60898 (and d!186301 d!186267)))

(assert (=> bs!60898 (= lambda!15007 lambda!14987)))

(declare-fun bs!60899 () Bool)

(assert (= bs!60899 (and d!186301 d!186279)))

(assert (=> bs!60899 (= lambda!15007 lambda!14991)))

(declare-fun bs!60900 () Bool)

(assert (= bs!60900 (and d!186301 d!186255)))

(assert (=> bs!60900 (= lambda!15007 lambda!14981)))

(declare-fun bs!60901 () Bool)

(assert (= bs!60901 (and d!186301 d!186271)))

(assert (=> bs!60901 (= lambda!15007 lambda!14988)))

(declare-fun bs!60902 () Bool)

(assert (= bs!60902 (and d!186301 d!186281)))

(assert (=> bs!60902 (= lambda!15007 lambda!14992)))

(declare-fun bs!60903 () Bool)

(assert (= bs!60903 (and d!186301 d!186253)))

(assert (=> bs!60903 (= lambda!15007 lambda!14980)))

(declare-fun bs!60904 () Bool)

(assert (= bs!60904 (and d!186301 d!186263)))

(assert (=> bs!60904 (= lambda!15007 lambda!14983)))

(declare-fun bs!60905 () Bool)

(assert (= bs!60905 (and d!186301 d!186297)))

(assert (=> bs!60905 (= lambda!15007 lambda!15005)))

(declare-fun bs!60906 () Bool)

(assert (= bs!60906 (and d!186301 d!186213)))

(assert (=> bs!60906 (= lambda!15007 lambda!14965)))

(declare-fun bs!60907 () Bool)

(assert (= bs!60907 (and d!186301 d!186295)))

(assert (=> bs!60907 (= lambda!15007 lambda!15004)))

(declare-fun bs!60908 () Bool)

(assert (= bs!60908 (and d!186301 d!186249)))

(assert (=> bs!60908 (= lambda!15007 lambda!14978)))

(declare-fun bs!60909 () Bool)

(assert (= bs!60909 (and d!186301 d!186283)))

(assert (=> bs!60909 (= lambda!15007 lambda!14993)))

(declare-fun bs!60910 () Bool)

(assert (= bs!60910 (and d!186301 d!186257)))

(assert (=> bs!60910 (= lambda!15007 lambda!14982)))

(assert (=> d!186301 (= (inv!6126 (_2!3201 (_1!3202 (h!10249 mapDefault!2144)))) (forall!1467 (exprs!643 (_2!3201 (_1!3202 (h!10249 mapDefault!2144)))) lambda!15007))))

(declare-fun bs!60911 () Bool)

(assert (= bs!60911 d!186301))

(declare-fun m!768424 () Bool)

(assert (=> bs!60911 m!768424))

(assert (=> b!522077 d!186301))

(declare-fun d!186303 () Bool)

(assert (=> d!186303 (= (inv!6127 (xs!4218 (c!100730 input!747))) (<= (size!3960 (innerList!1641 (xs!4218 (c!100730 input!747)))) 2147483647))))

(declare-fun bs!60912 () Bool)

(assert (= bs!60912 d!186303))

(declare-fun m!768426 () Bool)

(assert (=> bs!60912 m!768426))

(assert (=> b!521982 d!186303))

(declare-fun d!186305 () Bool)

(declare-fun res!221668 () Bool)

(declare-fun e!313286 () Bool)

(assert (=> d!186305 (=> (not res!221668) (not e!313286))))

(assert (=> d!186305 (= res!221668 (= (csize!3396 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) (+ (size!3961 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) (size!3961 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))))

(assert (=> d!186305 (= (inv!6124 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) e!313286)))

(declare-fun b!522210 () Bool)

(declare-fun res!221669 () Bool)

(assert (=> b!522210 (=> (not res!221669) (not e!313286))))

(assert (=> b!522210 (= res!221669 (and (not (= (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) Empty!1583)) (not (= (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) Empty!1583))))))

(declare-fun b!522211 () Bool)

(declare-fun res!221670 () Bool)

(assert (=> b!522211 (=> (not res!221670) (not e!313286))))

(assert (=> b!522211 (= res!221670 (= (cheight!1794 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) (+ (max!0 (height!245 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) (height!245 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) 1)))))

(declare-fun b!522212 () Bool)

(assert (=> b!522212 (= e!313286 (<= 0 (cheight!1794 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(assert (= (and d!186305 res!221668) b!522210))

(assert (= (and b!522210 res!221669) b!522211))

(assert (= (and b!522211 res!221670) b!522212))

(declare-fun m!768428 () Bool)

(assert (=> d!186305 m!768428))

(declare-fun m!768430 () Bool)

(assert (=> d!186305 m!768430))

(assert (=> b!522211 m!768296))

(assert (=> b!522211 m!768298))

(assert (=> b!522211 m!768296))

(assert (=> b!522211 m!768298))

(declare-fun m!768432 () Bool)

(assert (=> b!522211 m!768432))

(assert (=> b!521956 d!186305))

(declare-fun d!186307 () Bool)

(declare-fun res!221671 () Bool)

(declare-fun e!313287 () Bool)

(assert (=> d!186307 (=> (not res!221671) (not e!313287))))

(assert (=> d!186307 (= res!221671 (<= (size!3960 (list!2036 (xs!4218 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) 512))))

(assert (=> d!186307 (= (inv!6125 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) e!313287)))

(declare-fun b!522213 () Bool)

(declare-fun res!221672 () Bool)

(assert (=> b!522213 (=> (not res!221672) (not e!313287))))

(assert (=> b!522213 (= res!221672 (= (csize!3397 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) (size!3960 (list!2036 (xs!4218 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))))

(declare-fun b!522214 () Bool)

(assert (=> b!522214 (= e!313287 (and (> (csize!3397 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) 0) (<= (csize!3397 (c!100730 (totalInput!1731 cacheFurthestNullable!56))) 512)))))

(assert (= (and d!186307 res!221671) b!522213))

(assert (= (and b!522213 res!221672) b!522214))

(declare-fun m!768434 () Bool)

(assert (=> d!186307 m!768434))

(assert (=> d!186307 m!768434))

(declare-fun m!768436 () Bool)

(assert (=> d!186307 m!768436))

(assert (=> b!522213 m!768434))

(assert (=> b!522213 m!768434))

(assert (=> b!522213 m!768436))

(assert (=> b!521958 d!186307))

(declare-fun d!186309 () Bool)

(declare-fun c!100754 () Bool)

(assert (=> d!186309 (= c!100754 ((_ is Nil!4850) lt!217196))))

(declare-fun e!313290 () (InoxSet C!3332))

(assert (=> d!186309 (= (content!882 lt!217196) e!313290)))

(declare-fun b!522219 () Bool)

(assert (=> b!522219 (= e!313290 ((as const (Array C!3332 Bool)) false))))

(declare-fun b!522220 () Bool)

(assert (=> b!522220 (= e!313290 ((_ map or) (store ((as const (Array C!3332 Bool)) false) (h!10251 lt!217196) true) (content!882 (t!73450 lt!217196))))))

(assert (= (and d!186309 c!100754) b!522219))

(assert (= (and d!186309 (not c!100754)) b!522220))

(declare-fun m!768438 () Bool)

(assert (=> b!522220 m!768438))

(declare-fun m!768440 () Bool)

(assert (=> b!522220 m!768440))

(assert (=> d!186177 d!186309))

(declare-fun d!186311 () Bool)

(declare-fun c!100755 () Bool)

(assert (=> d!186311 (= c!100755 ((_ is Nil!4850) lt!217192))))

(declare-fun e!313291 () (InoxSet C!3332))

(assert (=> d!186311 (= (content!882 lt!217192) e!313291)))

(declare-fun b!522221 () Bool)

(assert (=> b!522221 (= e!313291 ((as const (Array C!3332 Bool)) false))))

(declare-fun b!522222 () Bool)

(assert (=> b!522222 (= e!313291 ((_ map or) (store ((as const (Array C!3332 Bool)) false) (h!10251 lt!217192) true) (content!882 (t!73450 lt!217192))))))

(assert (= (and d!186311 c!100755) b!522221))

(assert (= (and d!186311 (not c!100755)) b!522222))

(declare-fun m!768442 () Bool)

(assert (=> b!522222 m!768442))

(assert (=> b!522222 m!768399))

(assert (=> d!186177 d!186311))

(declare-fun d!186313 () Bool)

(declare-fun c!100756 () Bool)

(assert (=> d!186313 (= c!100756 ((_ is Nil!4850) lt!217191))))

(declare-fun e!313292 () (InoxSet C!3332))

(assert (=> d!186313 (= (content!882 lt!217191) e!313292)))

(declare-fun b!522223 () Bool)

(assert (=> b!522223 (= e!313292 ((as const (Array C!3332 Bool)) false))))

(declare-fun b!522224 () Bool)

(assert (=> b!522224 (= e!313292 ((_ map or) (store ((as const (Array C!3332 Bool)) false) (h!10251 lt!217191) true) (content!882 (t!73450 lt!217191))))))

(assert (= (and d!186313 c!100756) b!522223))

(assert (= (and d!186313 (not c!100756)) b!522224))

(declare-fun m!768444 () Bool)

(assert (=> b!522224 m!768444))

(declare-fun m!768446 () Bool)

(assert (=> b!522224 m!768446))

(assert (=> d!186177 d!186313))

(declare-fun bs!60913 () Bool)

(declare-fun d!186315 () Bool)

(assert (= bs!60913 (and d!186315 d!186235)))

(declare-fun lambda!15008 () Int)

(assert (=> bs!60913 (= lambda!15008 lambda!14971)))

(declare-fun bs!60914 () Bool)

(assert (= bs!60914 (and d!186315 d!186241)))

(assert (=> bs!60914 (= lambda!15008 lambda!14974)))

(declare-fun bs!60915 () Bool)

(assert (= bs!60915 (and d!186315 d!186229)))

(assert (=> bs!60915 (= lambda!15008 lambda!14970)))

(declare-fun bs!60916 () Bool)

(assert (= bs!60916 (and d!186315 d!186287)))

(assert (=> bs!60916 (= lambda!15008 lambda!14994)))

(declare-fun bs!60917 () Bool)

(assert (= bs!60917 (and d!186315 d!186251)))

(assert (=> bs!60917 (= lambda!15008 lambda!14979)))

(declare-fun bs!60918 () Bool)

(assert (= bs!60918 (and d!186315 d!186273)))

(assert (=> bs!60918 (= lambda!15008 lambda!14989)))

(declare-fun bs!60919 () Bool)

(assert (= bs!60919 (and d!186315 d!186277)))

(assert (=> bs!60919 (= lambda!15008 lambda!14990)))

(declare-fun bs!60920 () Bool)

(assert (= bs!60920 (and d!186315 d!186239)))

(assert (=> bs!60920 (= lambda!15008 lambda!14973)))

(declare-fun bs!60921 () Bool)

(assert (= bs!60921 (and d!186315 d!186215)))

(assert (=> bs!60921 (= lambda!15008 lambda!14966)))

(declare-fun bs!60922 () Bool)

(assert (= bs!60922 (and d!186315 d!186237)))

(assert (=> bs!60922 (= lambda!15008 lambda!14972)))

(declare-fun bs!60923 () Bool)

(assert (= bs!60923 (and d!186315 d!186299)))

(assert (=> bs!60923 (= lambda!15008 lambda!15006)))

(declare-fun bs!60924 () Bool)

(assert (= bs!60924 (and d!186315 d!186267)))

(assert (=> bs!60924 (= lambda!15008 lambda!14987)))

(declare-fun bs!60925 () Bool)

(assert (= bs!60925 (and d!186315 d!186301)))

(assert (=> bs!60925 (= lambda!15008 lambda!15007)))

(declare-fun bs!60926 () Bool)

(assert (= bs!60926 (and d!186315 d!186279)))

(assert (=> bs!60926 (= lambda!15008 lambda!14991)))

(declare-fun bs!60927 () Bool)

(assert (= bs!60927 (and d!186315 d!186255)))

(assert (=> bs!60927 (= lambda!15008 lambda!14981)))

(declare-fun bs!60928 () Bool)

(assert (= bs!60928 (and d!186315 d!186271)))

(assert (=> bs!60928 (= lambda!15008 lambda!14988)))

(declare-fun bs!60929 () Bool)

(assert (= bs!60929 (and d!186315 d!186281)))

(assert (=> bs!60929 (= lambda!15008 lambda!14992)))

(declare-fun bs!60930 () Bool)

(assert (= bs!60930 (and d!186315 d!186253)))

(assert (=> bs!60930 (= lambda!15008 lambda!14980)))

(declare-fun bs!60931 () Bool)

(assert (= bs!60931 (and d!186315 d!186263)))

(assert (=> bs!60931 (= lambda!15008 lambda!14983)))

(declare-fun bs!60932 () Bool)

(assert (= bs!60932 (and d!186315 d!186297)))

(assert (=> bs!60932 (= lambda!15008 lambda!15005)))

(declare-fun bs!60933 () Bool)

(assert (= bs!60933 (and d!186315 d!186213)))

(assert (=> bs!60933 (= lambda!15008 lambda!14965)))

(declare-fun bs!60934 () Bool)

(assert (= bs!60934 (and d!186315 d!186295)))

(assert (=> bs!60934 (= lambda!15008 lambda!15004)))

(declare-fun bs!60935 () Bool)

(assert (= bs!60935 (and d!186315 d!186249)))

(assert (=> bs!60935 (= lambda!15008 lambda!14978)))

(declare-fun bs!60936 () Bool)

(assert (= bs!60936 (and d!186315 d!186283)))

(assert (=> bs!60936 (= lambda!15008 lambda!14993)))

(declare-fun bs!60937 () Bool)

(assert (= bs!60937 (and d!186315 d!186257)))

(assert (=> bs!60937 (= lambda!15008 lambda!14982)))

(assert (=> d!186315 (= (inv!6126 setElem!2123) (forall!1467 (exprs!643 setElem!2123) lambda!15008))))

(declare-fun bs!60938 () Bool)

(assert (= bs!60938 d!186315))

(declare-fun m!768448 () Bool)

(assert (=> bs!60938 m!768448))

(assert (=> setNonEmpty!2123 d!186315))

(declare-fun b!522226 () Bool)

(declare-fun res!221676 () Bool)

(declare-fun e!313293 () Bool)

(assert (=> b!522226 (=> (not res!221676) (not e!313293))))

(assert (=> b!522226 (= res!221676 (isBalanced!489 (right!4509 (c!100730 input!747))))))

(declare-fun b!522227 () Bool)

(declare-fun res!221673 () Bool)

(assert (=> b!522227 (=> (not res!221673) (not e!313293))))

(assert (=> b!522227 (= res!221673 (isBalanced!489 (left!4179 (c!100730 input!747))))))

(declare-fun b!522228 () Bool)

(declare-fun e!313294 () Bool)

(assert (=> b!522228 (= e!313294 e!313293)))

(declare-fun res!221677 () Bool)

(assert (=> b!522228 (=> (not res!221677) (not e!313293))))

(assert (=> b!522228 (= res!221677 (<= (- 1) (- (height!245 (left!4179 (c!100730 input!747))) (height!245 (right!4509 (c!100730 input!747))))))))

(declare-fun d!186317 () Bool)

(declare-fun res!221675 () Bool)

(assert (=> d!186317 (=> res!221675 e!313294)))

(assert (=> d!186317 (= res!221675 (not ((_ is Node!1583) (c!100730 input!747))))))

(assert (=> d!186317 (= (isBalanced!489 (c!100730 input!747)) e!313294)))

(declare-fun b!522225 () Bool)

(declare-fun res!221678 () Bool)

(assert (=> b!522225 (=> (not res!221678) (not e!313293))))

(assert (=> b!522225 (= res!221678 (not (isEmpty!3580 (left!4179 (c!100730 input!747)))))))

(declare-fun b!522229 () Bool)

(assert (=> b!522229 (= e!313293 (not (isEmpty!3580 (right!4509 (c!100730 input!747)))))))

(declare-fun b!522230 () Bool)

(declare-fun res!221674 () Bool)

(assert (=> b!522230 (=> (not res!221674) (not e!313293))))

(assert (=> b!522230 (= res!221674 (<= (- (height!245 (left!4179 (c!100730 input!747))) (height!245 (right!4509 (c!100730 input!747)))) 1))))

(assert (= (and d!186317 (not res!221675)) b!522228))

(assert (= (and b!522228 res!221677) b!522230))

(assert (= (and b!522230 res!221674) b!522227))

(assert (= (and b!522227 res!221673) b!522226))

(assert (= (and b!522226 res!221676) b!522225))

(assert (= (and b!522225 res!221678) b!522229))

(declare-fun m!768450 () Bool)

(assert (=> b!522229 m!768450))

(declare-fun m!768452 () Bool)

(assert (=> b!522226 m!768452))

(declare-fun m!768454 () Bool)

(assert (=> b!522225 m!768454))

(declare-fun m!768456 () Bool)

(assert (=> b!522227 m!768456))

(assert (=> b!522230 m!768379))

(assert (=> b!522230 m!768381))

(assert (=> b!522228 m!768379))

(assert (=> b!522228 m!768381))

(assert (=> d!186187 d!186317))

(declare-fun bs!60939 () Bool)

(declare-fun d!186319 () Bool)

(assert (= bs!60939 (and d!186319 d!186235)))

(declare-fun lambda!15009 () Int)

(assert (=> bs!60939 (= lambda!15009 lambda!14971)))

(declare-fun bs!60940 () Bool)

(assert (= bs!60940 (and d!186319 d!186241)))

(assert (=> bs!60940 (= lambda!15009 lambda!14974)))

(declare-fun bs!60941 () Bool)

(assert (= bs!60941 (and d!186319 d!186229)))

(assert (=> bs!60941 (= lambda!15009 lambda!14970)))

(declare-fun bs!60942 () Bool)

(assert (= bs!60942 (and d!186319 d!186287)))

(assert (=> bs!60942 (= lambda!15009 lambda!14994)))

(declare-fun bs!60943 () Bool)

(assert (= bs!60943 (and d!186319 d!186251)))

(assert (=> bs!60943 (= lambda!15009 lambda!14979)))

(declare-fun bs!60944 () Bool)

(assert (= bs!60944 (and d!186319 d!186273)))

(assert (=> bs!60944 (= lambda!15009 lambda!14989)))

(declare-fun bs!60945 () Bool)

(assert (= bs!60945 (and d!186319 d!186277)))

(assert (=> bs!60945 (= lambda!15009 lambda!14990)))

(declare-fun bs!60946 () Bool)

(assert (= bs!60946 (and d!186319 d!186239)))

(assert (=> bs!60946 (= lambda!15009 lambda!14973)))

(declare-fun bs!60947 () Bool)

(assert (= bs!60947 (and d!186319 d!186215)))

(assert (=> bs!60947 (= lambda!15009 lambda!14966)))

(declare-fun bs!60948 () Bool)

(assert (= bs!60948 (and d!186319 d!186237)))

(assert (=> bs!60948 (= lambda!15009 lambda!14972)))

(declare-fun bs!60949 () Bool)

(assert (= bs!60949 (and d!186319 d!186299)))

(assert (=> bs!60949 (= lambda!15009 lambda!15006)))

(declare-fun bs!60950 () Bool)

(assert (= bs!60950 (and d!186319 d!186267)))

(assert (=> bs!60950 (= lambda!15009 lambda!14987)))

(declare-fun bs!60951 () Bool)

(assert (= bs!60951 (and d!186319 d!186301)))

(assert (=> bs!60951 (= lambda!15009 lambda!15007)))

(declare-fun bs!60952 () Bool)

(assert (= bs!60952 (and d!186319 d!186279)))

(assert (=> bs!60952 (= lambda!15009 lambda!14991)))

(declare-fun bs!60953 () Bool)

(assert (= bs!60953 (and d!186319 d!186255)))

(assert (=> bs!60953 (= lambda!15009 lambda!14981)))

(declare-fun bs!60954 () Bool)

(assert (= bs!60954 (and d!186319 d!186271)))

(assert (=> bs!60954 (= lambda!15009 lambda!14988)))

(declare-fun bs!60955 () Bool)

(assert (= bs!60955 (and d!186319 d!186281)))

(assert (=> bs!60955 (= lambda!15009 lambda!14992)))

(declare-fun bs!60956 () Bool)

(assert (= bs!60956 (and d!186319 d!186253)))

(assert (=> bs!60956 (= lambda!15009 lambda!14980)))

(declare-fun bs!60957 () Bool)

(assert (= bs!60957 (and d!186319 d!186263)))

(assert (=> bs!60957 (= lambda!15009 lambda!14983)))

(declare-fun bs!60958 () Bool)

(assert (= bs!60958 (and d!186319 d!186315)))

(assert (=> bs!60958 (= lambda!15009 lambda!15008)))

(declare-fun bs!60959 () Bool)

(assert (= bs!60959 (and d!186319 d!186297)))

(assert (=> bs!60959 (= lambda!15009 lambda!15005)))

(declare-fun bs!60960 () Bool)

(assert (= bs!60960 (and d!186319 d!186213)))

(assert (=> bs!60960 (= lambda!15009 lambda!14965)))

(declare-fun bs!60961 () Bool)

(assert (= bs!60961 (and d!186319 d!186295)))

(assert (=> bs!60961 (= lambda!15009 lambda!15004)))

(declare-fun bs!60962 () Bool)

(assert (= bs!60962 (and d!186319 d!186249)))

(assert (=> bs!60962 (= lambda!15009 lambda!14978)))

(declare-fun bs!60963 () Bool)

(assert (= bs!60963 (and d!186319 d!186283)))

(assert (=> bs!60963 (= lambda!15009 lambda!14993)))

(declare-fun bs!60964 () Bool)

(assert (= bs!60964 (and d!186319 d!186257)))

(assert (=> bs!60964 (= lambda!15009 lambda!14982)))

(assert (=> d!186319 (= (inv!6126 setElem!2147) (forall!1467 (exprs!643 setElem!2147) lambda!15009))))

(declare-fun bs!60965 () Bool)

(assert (= bs!60965 d!186319))

(declare-fun m!768458 () Bool)

(assert (=> bs!60965 m!768458))

(assert (=> setNonEmpty!2147 d!186319))

(declare-fun bs!60966 () Bool)

(declare-fun d!186321 () Bool)

(assert (= bs!60966 (and d!186321 d!186235)))

(declare-fun lambda!15010 () Int)

(assert (=> bs!60966 (= lambda!15010 lambda!14971)))

(declare-fun bs!60967 () Bool)

(assert (= bs!60967 (and d!186321 d!186241)))

(assert (=> bs!60967 (= lambda!15010 lambda!14974)))

(declare-fun bs!60968 () Bool)

(assert (= bs!60968 (and d!186321 d!186287)))

(assert (=> bs!60968 (= lambda!15010 lambda!14994)))

(declare-fun bs!60969 () Bool)

(assert (= bs!60969 (and d!186321 d!186251)))

(assert (=> bs!60969 (= lambda!15010 lambda!14979)))

(declare-fun bs!60970 () Bool)

(assert (= bs!60970 (and d!186321 d!186273)))

(assert (=> bs!60970 (= lambda!15010 lambda!14989)))

(declare-fun bs!60971 () Bool)

(assert (= bs!60971 (and d!186321 d!186277)))

(assert (=> bs!60971 (= lambda!15010 lambda!14990)))

(declare-fun bs!60972 () Bool)

(assert (= bs!60972 (and d!186321 d!186239)))

(assert (=> bs!60972 (= lambda!15010 lambda!14973)))

(declare-fun bs!60973 () Bool)

(assert (= bs!60973 (and d!186321 d!186215)))

(assert (=> bs!60973 (= lambda!15010 lambda!14966)))

(declare-fun bs!60974 () Bool)

(assert (= bs!60974 (and d!186321 d!186237)))

(assert (=> bs!60974 (= lambda!15010 lambda!14972)))

(declare-fun bs!60975 () Bool)

(assert (= bs!60975 (and d!186321 d!186299)))

(assert (=> bs!60975 (= lambda!15010 lambda!15006)))

(declare-fun bs!60976 () Bool)

(assert (= bs!60976 (and d!186321 d!186267)))

(assert (=> bs!60976 (= lambda!15010 lambda!14987)))

(declare-fun bs!60977 () Bool)

(assert (= bs!60977 (and d!186321 d!186301)))

(assert (=> bs!60977 (= lambda!15010 lambda!15007)))

(declare-fun bs!60978 () Bool)

(assert (= bs!60978 (and d!186321 d!186319)))

(assert (=> bs!60978 (= lambda!15010 lambda!15009)))

(declare-fun bs!60979 () Bool)

(assert (= bs!60979 (and d!186321 d!186229)))

(assert (=> bs!60979 (= lambda!15010 lambda!14970)))

(declare-fun bs!60980 () Bool)

(assert (= bs!60980 (and d!186321 d!186279)))

(assert (=> bs!60980 (= lambda!15010 lambda!14991)))

(declare-fun bs!60981 () Bool)

(assert (= bs!60981 (and d!186321 d!186255)))

(assert (=> bs!60981 (= lambda!15010 lambda!14981)))

(declare-fun bs!60982 () Bool)

(assert (= bs!60982 (and d!186321 d!186271)))

(assert (=> bs!60982 (= lambda!15010 lambda!14988)))

(declare-fun bs!60983 () Bool)

(assert (= bs!60983 (and d!186321 d!186281)))

(assert (=> bs!60983 (= lambda!15010 lambda!14992)))

(declare-fun bs!60984 () Bool)

(assert (= bs!60984 (and d!186321 d!186253)))

(assert (=> bs!60984 (= lambda!15010 lambda!14980)))

(declare-fun bs!60985 () Bool)

(assert (= bs!60985 (and d!186321 d!186263)))

(assert (=> bs!60985 (= lambda!15010 lambda!14983)))

(declare-fun bs!60986 () Bool)

(assert (= bs!60986 (and d!186321 d!186315)))

(assert (=> bs!60986 (= lambda!15010 lambda!15008)))

(declare-fun bs!60987 () Bool)

(assert (= bs!60987 (and d!186321 d!186297)))

(assert (=> bs!60987 (= lambda!15010 lambda!15005)))

(declare-fun bs!60988 () Bool)

(assert (= bs!60988 (and d!186321 d!186213)))

(assert (=> bs!60988 (= lambda!15010 lambda!14965)))

(declare-fun bs!60989 () Bool)

(assert (= bs!60989 (and d!186321 d!186295)))

(assert (=> bs!60989 (= lambda!15010 lambda!15004)))

(declare-fun bs!60990 () Bool)

(assert (= bs!60990 (and d!186321 d!186249)))

(assert (=> bs!60990 (= lambda!15010 lambda!14978)))

(declare-fun bs!60991 () Bool)

(assert (= bs!60991 (and d!186321 d!186283)))

(assert (=> bs!60991 (= lambda!15010 lambda!14993)))

(declare-fun bs!60992 () Bool)

(assert (= bs!60992 (and d!186321 d!186257)))

(assert (=> bs!60992 (= lambda!15010 lambda!14982)))

(assert (=> d!186321 (= (inv!6126 setElem!2142) (forall!1467 (exprs!643 setElem!2142) lambda!15010))))

(declare-fun bs!60993 () Bool)

(assert (= bs!60993 d!186321))

(declare-fun m!768460 () Bool)

(assert (=> bs!60993 m!768460))

(assert (=> setNonEmpty!2142 d!186321))

(assert (=> d!186207 d!186217))

(declare-fun b!522233 () Bool)

(declare-fun e!313296 () List!4860)

(assert (=> b!522233 (= e!313296 (list!2036 (xs!4218 (c!100730 input!747))))))

(declare-fun b!522231 () Bool)

(declare-fun e!313295 () List!4860)

(assert (=> b!522231 (= e!313295 Nil!4850)))

(declare-fun b!522234 () Bool)

(assert (=> b!522234 (= e!313296 (++!1365 (list!2035 (left!4179 (c!100730 input!747))) (list!2035 (right!4509 (c!100730 input!747)))))))

(declare-fun b!522232 () Bool)

(assert (=> b!522232 (= e!313295 e!313296)))

(declare-fun c!100758 () Bool)

(assert (=> b!522232 (= c!100758 ((_ is Leaf!2526) (c!100730 input!747)))))

(declare-fun d!186323 () Bool)

(declare-fun c!100757 () Bool)

(assert (=> d!186323 (= c!100757 ((_ is Empty!1583) (c!100730 input!747)))))

(assert (=> d!186323 (= (list!2035 (c!100730 input!747)) e!313295)))

(assert (= (and d!186323 c!100757) b!522231))

(assert (= (and d!186323 (not c!100757)) b!522232))

(assert (= (and b!522232 c!100758) b!522233))

(assert (= (and b!522232 (not c!100758)) b!522234))

(assert (=> b!522233 m!768367))

(declare-fun m!768462 () Bool)

(assert (=> b!522234 m!768462))

(declare-fun m!768464 () Bool)

(assert (=> b!522234 m!768464))

(assert (=> b!522234 m!768462))

(assert (=> b!522234 m!768464))

(declare-fun m!768466 () Bool)

(assert (=> b!522234 m!768466))

(assert (=> d!186179 d!186323))

(declare-fun d!186325 () Bool)

(declare-fun c!100759 () Bool)

(assert (=> d!186325 (= c!100759 ((_ is Node!1583) (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(declare-fun e!313297 () Bool)

(assert (=> d!186325 (= (inv!6120 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) e!313297)))

(declare-fun b!522235 () Bool)

(assert (=> b!522235 (= e!313297 (inv!6124 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(declare-fun b!522236 () Bool)

(declare-fun e!313298 () Bool)

(assert (=> b!522236 (= e!313297 e!313298)))

(declare-fun res!221679 () Bool)

(assert (=> b!522236 (= res!221679 (not ((_ is Leaf!2526) (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))))))

(assert (=> b!522236 (=> res!221679 e!313298)))

(declare-fun b!522237 () Bool)

(assert (=> b!522237 (= e!313298 (inv!6125 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(assert (= (and d!186325 c!100759) b!522235))

(assert (= (and d!186325 (not c!100759)) b!522236))

(assert (= (and b!522236 (not res!221679)) b!522237))

(declare-fun m!768468 () Bool)

(assert (=> b!522235 m!768468))

(declare-fun m!768470 () Bool)

(assert (=> b!522237 m!768470))

(assert (=> b!522033 d!186325))

(declare-fun d!186327 () Bool)

(declare-fun c!100760 () Bool)

(assert (=> d!186327 (= c!100760 ((_ is Node!1583) (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(declare-fun e!313299 () Bool)

(assert (=> d!186327 (= (inv!6120 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) e!313299)))

(declare-fun b!522238 () Bool)

(assert (=> b!522238 (= e!313299 (inv!6124 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(declare-fun b!522239 () Bool)

(declare-fun e!313300 () Bool)

(assert (=> b!522239 (= e!313299 e!313300)))

(declare-fun res!221680 () Bool)

(assert (=> b!522239 (= res!221680 (not ((_ is Leaf!2526) (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))))))

(assert (=> b!522239 (=> res!221680 e!313300)))

(declare-fun b!522240 () Bool)

(assert (=> b!522240 (= e!313300 (inv!6125 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))))

(assert (= (and d!186327 c!100760) b!522238))

(assert (= (and d!186327 (not c!100760)) b!522239))

(assert (= (and b!522239 (not res!221680)) b!522240))

(declare-fun m!768472 () Bool)

(assert (=> b!522238 m!768472))

(declare-fun m!768474 () Bool)

(assert (=> b!522240 m!768474))

(assert (=> b!522033 d!186327))

(assert (=> d!186197 d!186289))

(declare-fun bs!60994 () Bool)

(declare-fun d!186329 () Bool)

(assert (= bs!60994 (and d!186329 d!186235)))

(declare-fun lambda!15011 () Int)

(assert (=> bs!60994 (= lambda!15011 lambda!14971)))

(declare-fun bs!60995 () Bool)

(assert (= bs!60995 (and d!186329 d!186241)))

(assert (=> bs!60995 (= lambda!15011 lambda!14974)))

(declare-fun bs!60996 () Bool)

(assert (= bs!60996 (and d!186329 d!186287)))

(assert (=> bs!60996 (= lambda!15011 lambda!14994)))

(declare-fun bs!60997 () Bool)

(assert (= bs!60997 (and d!186329 d!186251)))

(assert (=> bs!60997 (= lambda!15011 lambda!14979)))

(declare-fun bs!60998 () Bool)

(assert (= bs!60998 (and d!186329 d!186273)))

(assert (=> bs!60998 (= lambda!15011 lambda!14989)))

(declare-fun bs!60999 () Bool)

(assert (= bs!60999 (and d!186329 d!186277)))

(assert (=> bs!60999 (= lambda!15011 lambda!14990)))

(declare-fun bs!61000 () Bool)

(assert (= bs!61000 (and d!186329 d!186239)))

(assert (=> bs!61000 (= lambda!15011 lambda!14973)))

(declare-fun bs!61001 () Bool)

(assert (= bs!61001 (and d!186329 d!186215)))

(assert (=> bs!61001 (= lambda!15011 lambda!14966)))

(declare-fun bs!61002 () Bool)

(assert (= bs!61002 (and d!186329 d!186237)))

(assert (=> bs!61002 (= lambda!15011 lambda!14972)))

(declare-fun bs!61003 () Bool)

(assert (= bs!61003 (and d!186329 d!186321)))

(assert (=> bs!61003 (= lambda!15011 lambda!15010)))

(declare-fun bs!61004 () Bool)

(assert (= bs!61004 (and d!186329 d!186299)))

(assert (=> bs!61004 (= lambda!15011 lambda!15006)))

(declare-fun bs!61005 () Bool)

(assert (= bs!61005 (and d!186329 d!186267)))

(assert (=> bs!61005 (= lambda!15011 lambda!14987)))

(declare-fun bs!61006 () Bool)

(assert (= bs!61006 (and d!186329 d!186301)))

(assert (=> bs!61006 (= lambda!15011 lambda!15007)))

(declare-fun bs!61007 () Bool)

(assert (= bs!61007 (and d!186329 d!186319)))

(assert (=> bs!61007 (= lambda!15011 lambda!15009)))

(declare-fun bs!61008 () Bool)

(assert (= bs!61008 (and d!186329 d!186229)))

(assert (=> bs!61008 (= lambda!15011 lambda!14970)))

(declare-fun bs!61009 () Bool)

(assert (= bs!61009 (and d!186329 d!186279)))

(assert (=> bs!61009 (= lambda!15011 lambda!14991)))

(declare-fun bs!61010 () Bool)

(assert (= bs!61010 (and d!186329 d!186255)))

(assert (=> bs!61010 (= lambda!15011 lambda!14981)))

(declare-fun bs!61011 () Bool)

(assert (= bs!61011 (and d!186329 d!186271)))

(assert (=> bs!61011 (= lambda!15011 lambda!14988)))

(declare-fun bs!61012 () Bool)

(assert (= bs!61012 (and d!186329 d!186281)))

(assert (=> bs!61012 (= lambda!15011 lambda!14992)))

(declare-fun bs!61013 () Bool)

(assert (= bs!61013 (and d!186329 d!186253)))

(assert (=> bs!61013 (= lambda!15011 lambda!14980)))

(declare-fun bs!61014 () Bool)

(assert (= bs!61014 (and d!186329 d!186263)))

(assert (=> bs!61014 (= lambda!15011 lambda!14983)))

(declare-fun bs!61015 () Bool)

(assert (= bs!61015 (and d!186329 d!186315)))

(assert (=> bs!61015 (= lambda!15011 lambda!15008)))

(declare-fun bs!61016 () Bool)

(assert (= bs!61016 (and d!186329 d!186297)))

(assert (=> bs!61016 (= lambda!15011 lambda!15005)))

(declare-fun bs!61017 () Bool)

(assert (= bs!61017 (and d!186329 d!186213)))

(assert (=> bs!61017 (= lambda!15011 lambda!14965)))

(declare-fun bs!61018 () Bool)

(assert (= bs!61018 (and d!186329 d!186295)))

(assert (=> bs!61018 (= lambda!15011 lambda!15004)))

(declare-fun bs!61019 () Bool)

(assert (= bs!61019 (and d!186329 d!186249)))

(assert (=> bs!61019 (= lambda!15011 lambda!14978)))

(declare-fun bs!61020 () Bool)

(assert (= bs!61020 (and d!186329 d!186283)))

(assert (=> bs!61020 (= lambda!15011 lambda!14993)))

(declare-fun bs!61021 () Bool)

(assert (= bs!61021 (and d!186329 d!186257)))

(assert (=> bs!61021 (= lambda!15011 lambda!14982)))

(assert (=> d!186329 (= (inv!6126 setElem!2129) (forall!1467 (exprs!643 setElem!2129) lambda!15011))))

(declare-fun bs!61022 () Bool)

(assert (= bs!61022 d!186329))

(declare-fun m!768476 () Bool)

(assert (=> bs!61022 m!768476))

(assert (=> setNonEmpty!2129 d!186329))

(declare-fun bs!61023 () Bool)

(declare-fun d!186331 () Bool)

(assert (= bs!61023 (and d!186331 d!186235)))

(declare-fun lambda!15012 () Int)

(assert (=> bs!61023 (= lambda!15012 lambda!14971)))

(declare-fun bs!61024 () Bool)

(assert (= bs!61024 (and d!186331 d!186241)))

(assert (=> bs!61024 (= lambda!15012 lambda!14974)))

(declare-fun bs!61025 () Bool)

(assert (= bs!61025 (and d!186331 d!186287)))

(assert (=> bs!61025 (= lambda!15012 lambda!14994)))

(declare-fun bs!61026 () Bool)

(assert (= bs!61026 (and d!186331 d!186251)))

(assert (=> bs!61026 (= lambda!15012 lambda!14979)))

(declare-fun bs!61027 () Bool)

(assert (= bs!61027 (and d!186331 d!186273)))

(assert (=> bs!61027 (= lambda!15012 lambda!14989)))

(declare-fun bs!61028 () Bool)

(assert (= bs!61028 (and d!186331 d!186277)))

(assert (=> bs!61028 (= lambda!15012 lambda!14990)))

(declare-fun bs!61029 () Bool)

(assert (= bs!61029 (and d!186331 d!186239)))

(assert (=> bs!61029 (= lambda!15012 lambda!14973)))

(declare-fun bs!61030 () Bool)

(assert (= bs!61030 (and d!186331 d!186215)))

(assert (=> bs!61030 (= lambda!15012 lambda!14966)))

(declare-fun bs!61031 () Bool)

(assert (= bs!61031 (and d!186331 d!186237)))

(assert (=> bs!61031 (= lambda!15012 lambda!14972)))

(declare-fun bs!61032 () Bool)

(assert (= bs!61032 (and d!186331 d!186299)))

(assert (=> bs!61032 (= lambda!15012 lambda!15006)))

(declare-fun bs!61033 () Bool)

(assert (= bs!61033 (and d!186331 d!186267)))

(assert (=> bs!61033 (= lambda!15012 lambda!14987)))

(declare-fun bs!61034 () Bool)

(assert (= bs!61034 (and d!186331 d!186301)))

(assert (=> bs!61034 (= lambda!15012 lambda!15007)))

(declare-fun bs!61035 () Bool)

(assert (= bs!61035 (and d!186331 d!186319)))

(assert (=> bs!61035 (= lambda!15012 lambda!15009)))

(declare-fun bs!61036 () Bool)

(assert (= bs!61036 (and d!186331 d!186229)))

(assert (=> bs!61036 (= lambda!15012 lambda!14970)))

(declare-fun bs!61037 () Bool)

(assert (= bs!61037 (and d!186331 d!186279)))

(assert (=> bs!61037 (= lambda!15012 lambda!14991)))

(declare-fun bs!61038 () Bool)

(assert (= bs!61038 (and d!186331 d!186255)))

(assert (=> bs!61038 (= lambda!15012 lambda!14981)))

(declare-fun bs!61039 () Bool)

(assert (= bs!61039 (and d!186331 d!186271)))

(assert (=> bs!61039 (= lambda!15012 lambda!14988)))

(declare-fun bs!61040 () Bool)

(assert (= bs!61040 (and d!186331 d!186281)))

(assert (=> bs!61040 (= lambda!15012 lambda!14992)))

(declare-fun bs!61041 () Bool)

(assert (= bs!61041 (and d!186331 d!186253)))

(assert (=> bs!61041 (= lambda!15012 lambda!14980)))

(declare-fun bs!61042 () Bool)

(assert (= bs!61042 (and d!186331 d!186263)))

(assert (=> bs!61042 (= lambda!15012 lambda!14983)))

(declare-fun bs!61043 () Bool)

(assert (= bs!61043 (and d!186331 d!186315)))

(assert (=> bs!61043 (= lambda!15012 lambda!15008)))

(declare-fun bs!61044 () Bool)

(assert (= bs!61044 (and d!186331 d!186297)))

(assert (=> bs!61044 (= lambda!15012 lambda!15005)))

(declare-fun bs!61045 () Bool)

(assert (= bs!61045 (and d!186331 d!186213)))

(assert (=> bs!61045 (= lambda!15012 lambda!14965)))

(declare-fun bs!61046 () Bool)

(assert (= bs!61046 (and d!186331 d!186295)))

(assert (=> bs!61046 (= lambda!15012 lambda!15004)))

(declare-fun bs!61047 () Bool)

(assert (= bs!61047 (and d!186331 d!186249)))

(assert (=> bs!61047 (= lambda!15012 lambda!14978)))

(declare-fun bs!61048 () Bool)

(assert (= bs!61048 (and d!186331 d!186321)))

(assert (=> bs!61048 (= lambda!15012 lambda!15010)))

(declare-fun bs!61049 () Bool)

(assert (= bs!61049 (and d!186331 d!186329)))

(assert (=> bs!61049 (= lambda!15012 lambda!15011)))

(declare-fun bs!61050 () Bool)

(assert (= bs!61050 (and d!186331 d!186283)))

(assert (=> bs!61050 (= lambda!15012 lambda!14993)))

(declare-fun bs!61051 () Bool)

(assert (= bs!61051 (and d!186331 d!186257)))

(assert (=> bs!61051 (= lambda!15012 lambda!14982)))

(assert (=> d!186331 (= (inv!6126 (_1!3203 (_1!3204 (h!10250 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))))) (forall!1467 (exprs!643 (_1!3203 (_1!3204 (h!10250 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))))) lambda!15012))))

(declare-fun bs!61052 () Bool)

(assert (= bs!61052 d!186331))

(declare-fun m!768478 () Bool)

(assert (=> bs!61052 m!768478))

(assert (=> b!521967 d!186331))

(declare-fun b!522245 () Bool)

(declare-fun e!313303 () Bool)

(declare-fun tp!162847 () Bool)

(declare-fun tp!162848 () Bool)

(assert (=> b!522245 (= e!313303 (and tp!162847 tp!162848))))

(assert (=> b!522095 (= tp!162824 e!313303)))

(assert (= (and b!522095 ((_ is Cons!4847) (exprs!643 (_2!3201 (_1!3202 (h!10249 mapDefault!2135)))))) b!522245))

(declare-fun b!522246 () Bool)

(declare-fun tp!162852 () Bool)

(declare-fun e!313304 () Bool)

(declare-fun setRes!2151 () Bool)

(declare-fun e!313306 () Bool)

(assert (=> b!522246 (= e!313306 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 (t!73449 mapDefault!2141))))) e!313304 tp_is_empty!2789 setRes!2151 tp!162852))))

(declare-fun condSetEmpty!2151 () Bool)

(assert (=> b!522246 (= condSetEmpty!2151 (= (_2!3204 (h!10250 (t!73449 mapDefault!2141))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522247 () Bool)

(declare-fun e!313305 () Bool)

(declare-fun tp!162851 () Bool)

(assert (=> b!522247 (= e!313305 tp!162851)))

(declare-fun setIsEmpty!2151 () Bool)

(assert (=> setIsEmpty!2151 setRes!2151))

(declare-fun setNonEmpty!2151 () Bool)

(declare-fun tp!162849 () Bool)

(declare-fun setElem!2151 () Context!286)

(assert (=> setNonEmpty!2151 (= setRes!2151 (and tp!162849 (inv!6126 setElem!2151) e!313305))))

(declare-fun setRest!2151 () (InoxSet Context!286))

(assert (=> setNonEmpty!2151 (= (_2!3204 (h!10250 (t!73449 mapDefault!2141))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2151 true) setRest!2151))))

(assert (=> b!522056 (= tp!162761 e!313306)))

(declare-fun b!522248 () Bool)

(declare-fun tp!162850 () Bool)

(assert (=> b!522248 (= e!313304 tp!162850)))

(assert (= b!522246 b!522248))

(assert (= (and b!522246 condSetEmpty!2151) setIsEmpty!2151))

(assert (= (and b!522246 (not condSetEmpty!2151)) setNonEmpty!2151))

(assert (= setNonEmpty!2151 b!522247))

(assert (= (and b!522056 ((_ is Cons!4849) (t!73449 mapDefault!2141))) b!522246))

(declare-fun m!768480 () Bool)

(assert (=> b!522246 m!768480))

(declare-fun m!768482 () Bool)

(assert (=> setNonEmpty!2151 m!768482))

(declare-fun condSetEmpty!2154 () Bool)

(assert (=> setNonEmpty!2118 (= condSetEmpty!2154 (= setRest!2118 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2154 () Bool)

(assert (=> setNonEmpty!2118 (= tp!162663 setRes!2154)))

(declare-fun setIsEmpty!2154 () Bool)

(assert (=> setIsEmpty!2154 setRes!2154))

(declare-fun setElem!2154 () Context!286)

(declare-fun tp!162858 () Bool)

(declare-fun setNonEmpty!2154 () Bool)

(declare-fun e!313309 () Bool)

(assert (=> setNonEmpty!2154 (= setRes!2154 (and tp!162858 (inv!6126 setElem!2154) e!313309))))

(declare-fun setRest!2154 () (InoxSet Context!286))

(assert (=> setNonEmpty!2154 (= setRest!2118 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2154 true) setRest!2154))))

(declare-fun b!522253 () Bool)

(declare-fun tp!162857 () Bool)

(assert (=> b!522253 (= e!313309 tp!162857)))

(assert (= (and setNonEmpty!2118 condSetEmpty!2154) setIsEmpty!2154))

(assert (= (and setNonEmpty!2118 (not condSetEmpty!2154)) setNonEmpty!2154))

(assert (= setNonEmpty!2154 b!522253))

(declare-fun m!768484 () Bool)

(assert (=> setNonEmpty!2154 m!768484))

(declare-fun b!522254 () Bool)

(declare-fun e!313310 () Bool)

(declare-fun tp!162859 () Bool)

(declare-fun tp!162860 () Bool)

(assert (=> b!522254 (= e!313310 (and tp!162859 tp!162860))))

(assert (=> b!521996 (= tp!162693 e!313310)))

(assert (= (and b!521996 ((_ is Cons!4847) (exprs!643 setElem!2123))) b!522254))

(declare-fun b!522255 () Bool)

(declare-fun e!313311 () Bool)

(declare-fun tp!162861 () Bool)

(declare-fun tp!162862 () Bool)

(assert (=> b!522255 (= e!313311 (and tp!162861 tp!162862))))

(assert (=> b!522092 (= tp!162819 e!313311)))

(assert (= (and b!522092 ((_ is Cons!4847) (exprs!643 (_2!3201 (_1!3202 (h!10249 mapValue!2134)))))) b!522255))

(declare-fun b!522256 () Bool)

(declare-fun e!313312 () Bool)

(declare-fun tp!162863 () Bool)

(declare-fun tp!162864 () Bool)

(assert (=> b!522256 (= e!313312 (and tp!162863 tp!162864))))

(assert (=> b!522057 (= tp!162763 e!313312)))

(assert (= (and b!522057 ((_ is Cons!4847) (exprs!643 (_1!3203 (_1!3204 (h!10250 mapDefault!2141)))))) b!522256))

(declare-fun b!522257 () Bool)

(declare-fun e!313313 () Bool)

(declare-fun tp!162865 () Bool)

(declare-fun tp!162866 () Bool)

(assert (=> b!522257 (= e!313313 (and tp!162865 tp!162866))))

(assert (=> b!521969 (= tp!162660 e!313313)))

(assert (= (and b!521969 ((_ is Cons!4847) (exprs!643 (_1!3203 (_1!3204 (h!10250 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))))))) b!522257))

(declare-fun b!522258 () Bool)

(declare-fun e!313314 () Bool)

(declare-fun tp!162867 () Bool)

(declare-fun tp!162868 () Bool)

(assert (=> b!522258 (= e!313314 (and tp!162867 tp!162868))))

(assert (=> b!522058 (= tp!162762 e!313314)))

(assert (= (and b!522058 ((_ is Cons!4847) (exprs!643 (_1!3203 (_1!3204 (h!10250 mapValue!2141)))))) b!522258))

(declare-fun b!522259 () Bool)

(declare-fun e!313315 () Bool)

(declare-fun tp!162869 () Bool)

(declare-fun tp!162870 () Bool)

(assert (=> b!522259 (= e!313315 (and tp!162869 tp!162870))))

(assert (=> b!522060 (= tp!162772 e!313315)))

(assert (= (and b!522060 ((_ is Cons!4847) (exprs!643 setElem!2136))) b!522259))

(declare-fun condSetEmpty!2155 () Bool)

(assert (=> setNonEmpty!2136 (= condSetEmpty!2155 (= setRest!2136 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2155 () Bool)

(assert (=> setNonEmpty!2136 (= tp!162770 setRes!2155)))

(declare-fun setIsEmpty!2155 () Bool)

(assert (=> setIsEmpty!2155 setRes!2155))

(declare-fun e!313316 () Bool)

(declare-fun setNonEmpty!2155 () Bool)

(declare-fun tp!162872 () Bool)

(declare-fun setElem!2155 () Context!286)

(assert (=> setNonEmpty!2155 (= setRes!2155 (and tp!162872 (inv!6126 setElem!2155) e!313316))))

(declare-fun setRest!2155 () (InoxSet Context!286))

(assert (=> setNonEmpty!2155 (= setRest!2136 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2155 true) setRest!2155))))

(declare-fun b!522260 () Bool)

(declare-fun tp!162871 () Bool)

(assert (=> b!522260 (= e!313316 tp!162871)))

(assert (= (and setNonEmpty!2136 condSetEmpty!2155) setIsEmpty!2155))

(assert (= (and setNonEmpty!2136 (not condSetEmpty!2155)) setNonEmpty!2155))

(assert (= setNonEmpty!2155 b!522260))

(declare-fun m!768486 () Bool)

(assert (=> setNonEmpty!2155 m!768486))

(declare-fun b!522263 () Bool)

(declare-fun e!313317 () Bool)

(declare-fun tp!162877 () Bool)

(assert (=> b!522263 (= e!313317 tp!162877)))

(declare-fun b!522262 () Bool)

(declare-fun tp!162873 () Bool)

(declare-fun tp!162876 () Bool)

(assert (=> b!522262 (= e!313317 (and tp!162873 tp!162876))))

(assert (=> b!522015 (= tp!162714 e!313317)))

(declare-fun b!522264 () Bool)

(declare-fun tp!162875 () Bool)

(declare-fun tp!162874 () Bool)

(assert (=> b!522264 (= e!313317 (and tp!162875 tp!162874))))

(declare-fun b!522261 () Bool)

(assert (=> b!522261 (= e!313317 tp_is_empty!2789)))

(assert (= (and b!522015 ((_ is ElementMatch!1205) (regex!880 (h!10254 (t!73453 rules!1345))))) b!522261))

(assert (= (and b!522015 ((_ is Concat!2109) (regex!880 (h!10254 (t!73453 rules!1345))))) b!522262))

(assert (= (and b!522015 ((_ is Star!1205) (regex!880 (h!10254 (t!73453 rules!1345))))) b!522263))

(assert (= (and b!522015 ((_ is Union!1205) (regex!880 (h!10254 (t!73453 rules!1345))))) b!522264))

(declare-fun b!522267 () Bool)

(declare-fun e!313318 () Bool)

(declare-fun tp!162882 () Bool)

(assert (=> b!522267 (= e!313318 tp!162882)))

(declare-fun b!522266 () Bool)

(declare-fun tp!162878 () Bool)

(declare-fun tp!162881 () Bool)

(assert (=> b!522266 (= e!313318 (and tp!162878 tp!162881))))

(assert (=> b!522101 (= tp!162836 e!313318)))

(declare-fun b!522268 () Bool)

(declare-fun tp!162880 () Bool)

(declare-fun tp!162879 () Bool)

(assert (=> b!522268 (= e!313318 (and tp!162880 tp!162879))))

(declare-fun b!522265 () Bool)

(assert (=> b!522265 (= e!313318 tp_is_empty!2789)))

(assert (= (and b!522101 ((_ is ElementMatch!1205) (_1!3201 (_1!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) b!522265))

(assert (= (and b!522101 ((_ is Concat!2109) (_1!3201 (_1!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) b!522266))

(assert (= (and b!522101 ((_ is Star!1205) (_1!3201 (_1!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) b!522267))

(assert (= (and b!522101 ((_ is Union!1205) (_1!3201 (_1!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) b!522268))

(declare-fun e!313319 () Bool)

(assert (=> b!522101 (= tp!162834 e!313319)))

(declare-fun setIsEmpty!2156 () Bool)

(declare-fun setRes!2156 () Bool)

(assert (=> setIsEmpty!2156 setRes!2156))

(declare-fun b!522269 () Bool)

(declare-fun e!313321 () Bool)

(declare-fun tp!162883 () Bool)

(assert (=> b!522269 (= e!313321 tp!162883)))

(declare-fun e!313320 () Bool)

(declare-fun b!522270 () Bool)

(declare-fun tp!162886 () Bool)

(declare-fun tp!162884 () Bool)

(assert (=> b!522270 (= e!313319 (and tp!162886 (inv!6126 (_2!3201 (_1!3202 (h!10249 (t!73448 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) e!313320 tp_is_empty!2789 setRes!2156 tp!162884))))

(declare-fun condSetEmpty!2156 () Bool)

(assert (=> b!522270 (= condSetEmpty!2156 (= (_2!3202 (h!10249 (t!73448 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522271 () Bool)

(declare-fun tp!162885 () Bool)

(assert (=> b!522271 (= e!313320 tp!162885)))

(declare-fun setNonEmpty!2156 () Bool)

(declare-fun setElem!2156 () Context!286)

(declare-fun tp!162887 () Bool)

(assert (=> setNonEmpty!2156 (= setRes!2156 (and tp!162887 (inv!6126 setElem!2156) e!313321))))

(declare-fun setRest!2156 () (InoxSet Context!286))

(assert (=> setNonEmpty!2156 (= (_2!3202 (h!10249 (t!73448 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2156 true) setRest!2156))))

(assert (= b!522270 b!522271))

(assert (= (and b!522270 condSetEmpty!2156) setIsEmpty!2156))

(assert (= (and b!522270 (not condSetEmpty!2156)) setNonEmpty!2156))

(assert (= setNonEmpty!2156 b!522269))

(assert (= (and b!522101 ((_ is Cons!4848) (t!73448 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))) b!522270))

(declare-fun m!768488 () Bool)

(assert (=> b!522270 m!768488))

(declare-fun m!768490 () Bool)

(assert (=> setNonEmpty!2156 m!768490))

(declare-fun b!522274 () Bool)

(declare-fun e!313322 () Bool)

(declare-fun tp!162892 () Bool)

(assert (=> b!522274 (= e!313322 tp!162892)))

(declare-fun b!522273 () Bool)

(declare-fun tp!162888 () Bool)

(declare-fun tp!162891 () Bool)

(assert (=> b!522273 (= e!313322 (and tp!162888 tp!162891))))

(assert (=> b!522104 (= tp!162841 e!313322)))

(declare-fun b!522275 () Bool)

(declare-fun tp!162890 () Bool)

(declare-fun tp!162889 () Bool)

(assert (=> b!522275 (= e!313322 (and tp!162890 tp!162889))))

(declare-fun b!522272 () Bool)

(assert (=> b!522272 (= e!313322 tp_is_empty!2789)))

(assert (= (and b!522104 ((_ is ElementMatch!1205) (_1!3201 (_1!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) b!522272))

(assert (= (and b!522104 ((_ is Concat!2109) (_1!3201 (_1!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) b!522273))

(assert (= (and b!522104 ((_ is Star!1205) (_1!3201 (_1!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) b!522274))

(assert (= (and b!522104 ((_ is Union!1205) (_1!3201 (_1!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) b!522275))

(declare-fun e!313323 () Bool)

(assert (=> b!522104 (= tp!162839 e!313323)))

(declare-fun setIsEmpty!2157 () Bool)

(declare-fun setRes!2157 () Bool)

(assert (=> setIsEmpty!2157 setRes!2157))

(declare-fun b!522276 () Bool)

(declare-fun e!313325 () Bool)

(declare-fun tp!162893 () Bool)

(assert (=> b!522276 (= e!313325 tp!162893)))

(declare-fun tp!162896 () Bool)

(declare-fun tp!162894 () Bool)

(declare-fun b!522277 () Bool)

(declare-fun e!313324 () Bool)

(assert (=> b!522277 (= e!313323 (and tp!162896 (inv!6126 (_2!3201 (_1!3202 (h!10249 (t!73448 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))))) e!313324 tp_is_empty!2789 setRes!2157 tp!162894))))

(declare-fun condSetEmpty!2157 () Bool)

(assert (=> b!522277 (= condSetEmpty!2157 (= (_2!3202 (h!10249 (t!73448 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522278 () Bool)

(declare-fun tp!162895 () Bool)

(assert (=> b!522278 (= e!313324 tp!162895)))

(declare-fun setElem!2157 () Context!286)

(declare-fun tp!162897 () Bool)

(declare-fun setNonEmpty!2157 () Bool)

(assert (=> setNonEmpty!2157 (= setRes!2157 (and tp!162897 (inv!6126 setElem!2157) e!313325))))

(declare-fun setRest!2157 () (InoxSet Context!286))

(assert (=> setNonEmpty!2157 (= (_2!3202 (h!10249 (t!73448 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2157 true) setRest!2157))))

(assert (= b!522277 b!522278))

(assert (= (and b!522277 condSetEmpty!2157) setIsEmpty!2157))

(assert (= (and b!522277 (not condSetEmpty!2157)) setNonEmpty!2157))

(assert (= setNonEmpty!2157 b!522276))

(assert (= (and b!522104 ((_ is Cons!4848) (t!73448 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462))))))))) b!522277))

(declare-fun m!768492 () Bool)

(assert (=> b!522277 m!768492))

(declare-fun m!768494 () Bool)

(assert (=> setNonEmpty!2157 m!768494))

(declare-fun condSetEmpty!2158 () Bool)

(assert (=> setNonEmpty!2149 (= condSetEmpty!2158 (= setRest!2149 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2158 () Bool)

(assert (=> setNonEmpty!2149 (= tp!162837 setRes!2158)))

(declare-fun setIsEmpty!2158 () Bool)

(assert (=> setIsEmpty!2158 setRes!2158))

(declare-fun e!313326 () Bool)

(declare-fun setElem!2158 () Context!286)

(declare-fun setNonEmpty!2158 () Bool)

(declare-fun tp!162899 () Bool)

(assert (=> setNonEmpty!2158 (= setRes!2158 (and tp!162899 (inv!6126 setElem!2158) e!313326))))

(declare-fun setRest!2158 () (InoxSet Context!286))

(assert (=> setNonEmpty!2158 (= setRest!2149 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2158 true) setRest!2158))))

(declare-fun b!522279 () Bool)

(declare-fun tp!162898 () Bool)

(assert (=> b!522279 (= e!313326 tp!162898)))

(assert (= (and setNonEmpty!2149 condSetEmpty!2158) setIsEmpty!2158))

(assert (= (and setNonEmpty!2149 (not condSetEmpty!2158)) setNonEmpty!2158))

(assert (= setNonEmpty!2158 b!522279))

(declare-fun m!768496 () Bool)

(assert (=> setNonEmpty!2158 m!768496))

(declare-fun condSetEmpty!2159 () Bool)

(assert (=> setNonEmpty!2150 (= condSetEmpty!2159 (= setRest!2150 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2159 () Bool)

(assert (=> setNonEmpty!2150 (= tp!162842 setRes!2159)))

(declare-fun setIsEmpty!2159 () Bool)

(assert (=> setIsEmpty!2159 setRes!2159))

(declare-fun setElem!2159 () Context!286)

(declare-fun setNonEmpty!2159 () Bool)

(declare-fun e!313327 () Bool)

(declare-fun tp!162901 () Bool)

(assert (=> setNonEmpty!2159 (= setRes!2159 (and tp!162901 (inv!6126 setElem!2159) e!313327))))

(declare-fun setRest!2159 () (InoxSet Context!286))

(assert (=> setNonEmpty!2159 (= setRest!2150 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2159 true) setRest!2159))))

(declare-fun b!522280 () Bool)

(declare-fun tp!162900 () Bool)

(assert (=> b!522280 (= e!313327 tp!162900)))

(assert (= (and setNonEmpty!2150 condSetEmpty!2159) setIsEmpty!2159))

(assert (= (and setNonEmpty!2150 (not condSetEmpty!2159)) setNonEmpty!2159))

(assert (= setNonEmpty!2159 b!522280))

(declare-fun m!768498 () Bool)

(assert (=> setNonEmpty!2159 m!768498))

(declare-fun b!522283 () Bool)

(declare-fun e!313328 () Bool)

(declare-fun tp!162906 () Bool)

(assert (=> b!522283 (= e!313328 tp!162906)))

(declare-fun b!522282 () Bool)

(declare-fun tp!162902 () Bool)

(declare-fun tp!162905 () Bool)

(assert (=> b!522282 (= e!313328 (and tp!162902 tp!162905))))

(assert (=> b!522031 (= tp!162735 e!313328)))

(declare-fun b!522284 () Bool)

(declare-fun tp!162904 () Bool)

(declare-fun tp!162903 () Bool)

(assert (=> b!522284 (= e!313328 (and tp!162904 tp!162903))))

(declare-fun b!522281 () Bool)

(assert (=> b!522281 (= e!313328 tp_is_empty!2789)))

(assert (= (and b!522031 ((_ is ElementMatch!1205) (reg!1534 (regex!880 (h!10254 rules!1345))))) b!522281))

(assert (= (and b!522031 ((_ is Concat!2109) (reg!1534 (regex!880 (h!10254 rules!1345))))) b!522282))

(assert (= (and b!522031 ((_ is Star!1205) (reg!1534 (regex!880 (h!10254 rules!1345))))) b!522283))

(assert (= (and b!522031 ((_ is Union!1205) (reg!1534 (regex!880 (h!10254 rules!1345))))) b!522284))

(declare-fun b!522285 () Bool)

(declare-fun e!313329 () Bool)

(declare-fun tp!162907 () Bool)

(declare-fun tp!162908 () Bool)

(assert (=> b!522285 (= e!313329 (and tp!162907 tp!162908))))

(assert (=> b!522005 (= tp!162704 e!313329)))

(assert (= (and b!522005 ((_ is Cons!4847) (exprs!643 setElem!2127))) b!522285))

(declare-fun b!522286 () Bool)

(declare-fun e!313330 () Bool)

(declare-fun tp!162909 () Bool)

(declare-fun tp!162910 () Bool)

(assert (=> b!522286 (= e!313330 (and tp!162909 tp!162910))))

(assert (=> b!522076 (= tp!162803 e!313330)))

(assert (= (and b!522076 ((_ is Cons!4847) (exprs!643 (_2!3201 (_1!3202 (h!10249 mapValue!2144)))))) b!522286))

(declare-fun b!522287 () Bool)

(declare-fun e!313331 () Bool)

(declare-fun tp!162911 () Bool)

(declare-fun tp!162912 () Bool)

(assert (=> b!522287 (= e!313331 (and tp!162911 tp!162912))))

(assert (=> b!522099 (= tp!162831 e!313331)))

(assert (= (and b!522099 ((_ is Cons!4847) (exprs!643 setElem!2148))) b!522287))

(declare-fun b!522288 () Bool)

(declare-fun e!313332 () Bool)

(declare-fun tp!162913 () Bool)

(declare-fun tp!162914 () Bool)

(assert (=> b!522288 (= e!313332 (and tp!162913 tp!162914))))

(assert (=> b!522078 (= tp!162796 e!313332)))

(assert (= (and b!522078 ((_ is Cons!4847) (exprs!643 (_2!3201 (_1!3202 (h!10249 mapDefault!2144)))))) b!522288))

(declare-fun b!522289 () Bool)

(declare-fun tp!162916 () Bool)

(declare-fun tp!162915 () Bool)

(declare-fun e!313334 () Bool)

(assert (=> b!522289 (= e!313334 (and (inv!6120 (left!4179 (left!4179 (c!100730 input!747)))) tp!162915 (inv!6120 (right!4509 (left!4179 (c!100730 input!747)))) tp!162916))))

(declare-fun b!522291 () Bool)

(declare-fun e!313333 () Bool)

(declare-fun tp!162917 () Bool)

(assert (=> b!522291 (= e!313333 tp!162917)))

(declare-fun b!522290 () Bool)

(assert (=> b!522290 (= e!313334 (and (inv!6127 (xs!4218 (left!4179 (c!100730 input!747)))) e!313333))))

(assert (=> b!521981 (= tp!162673 (and (inv!6120 (left!4179 (c!100730 input!747))) e!313334))))

(assert (= (and b!521981 ((_ is Node!1583) (left!4179 (c!100730 input!747)))) b!522289))

(assert (= b!522290 b!522291))

(assert (= (and b!521981 ((_ is Leaf!2526) (left!4179 (c!100730 input!747)))) b!522290))

(declare-fun m!768500 () Bool)

(assert (=> b!522289 m!768500))

(declare-fun m!768502 () Bool)

(assert (=> b!522289 m!768502))

(declare-fun m!768504 () Bool)

(assert (=> b!522290 m!768504))

(assert (=> b!521981 m!768201))

(declare-fun tp!162919 () Bool)

(declare-fun e!313336 () Bool)

(declare-fun b!522292 () Bool)

(declare-fun tp!162918 () Bool)

(assert (=> b!522292 (= e!313336 (and (inv!6120 (left!4179 (right!4509 (c!100730 input!747)))) tp!162918 (inv!6120 (right!4509 (right!4509 (c!100730 input!747)))) tp!162919))))

(declare-fun b!522294 () Bool)

(declare-fun e!313335 () Bool)

(declare-fun tp!162920 () Bool)

(assert (=> b!522294 (= e!313335 tp!162920)))

(declare-fun b!522293 () Bool)

(assert (=> b!522293 (= e!313336 (and (inv!6127 (xs!4218 (right!4509 (c!100730 input!747)))) e!313335))))

(assert (=> b!521981 (= tp!162674 (and (inv!6120 (right!4509 (c!100730 input!747))) e!313336))))

(assert (= (and b!521981 ((_ is Node!1583) (right!4509 (c!100730 input!747)))) b!522292))

(assert (= b!522293 b!522294))

(assert (= (and b!521981 ((_ is Leaf!2526) (right!4509 (c!100730 input!747)))) b!522293))

(declare-fun m!768506 () Bool)

(assert (=> b!522292 m!768506))

(declare-fun m!768508 () Bool)

(assert (=> b!522292 m!768508))

(declare-fun m!768510 () Bool)

(assert (=> b!522293 m!768510))

(assert (=> b!521981 m!768203))

(declare-fun b!522295 () Bool)

(declare-fun e!313338 () Bool)

(declare-fun setRes!2160 () Bool)

(declare-fun tp!162923 () Bool)

(assert (=> b!522295 (= e!313338 (and setRes!2160 tp!162923))))

(declare-fun condSetEmpty!2160 () Bool)

(assert (=> b!522295 (= condSetEmpty!2160 (= (_1!3205 (_1!3206 (h!10252 (t!73451 mapDefault!2133)))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2160 () Bool)

(assert (=> setIsEmpty!2160 setRes!2160))

(declare-fun tp!162921 () Bool)

(declare-fun e!313337 () Bool)

(declare-fun setElem!2160 () Context!286)

(declare-fun setNonEmpty!2160 () Bool)

(assert (=> setNonEmpty!2160 (= setRes!2160 (and tp!162921 (inv!6126 setElem!2160) e!313337))))

(declare-fun setRest!2160 () (InoxSet Context!286))

(assert (=> setNonEmpty!2160 (= (_1!3205 (_1!3206 (h!10252 (t!73451 mapDefault!2133)))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2160 true) setRest!2160))))

(assert (=> b!522017 (= tp!162720 e!313338)))

(declare-fun b!522296 () Bool)

(declare-fun tp!162922 () Bool)

(assert (=> b!522296 (= e!313337 tp!162922)))

(assert (= (and b!522295 condSetEmpty!2160) setIsEmpty!2160))

(assert (= (and b!522295 (not condSetEmpty!2160)) setNonEmpty!2160))

(assert (= setNonEmpty!2160 b!522296))

(assert (= (and b!522017 ((_ is Cons!4851) (t!73451 mapDefault!2133))) b!522295))

(declare-fun m!768512 () Bool)

(assert (=> setNonEmpty!2160 m!768512))

(declare-fun b!522301 () Bool)

(declare-fun e!313341 () Bool)

(declare-fun tp!162926 () Bool)

(assert (=> b!522301 (= e!313341 (and tp_is_empty!2789 tp!162926))))

(assert (=> b!521983 (= tp!162675 e!313341)))

(assert (= (and b!521983 ((_ is Cons!4850) (innerList!1641 (xs!4218 (c!100730 input!747))))) b!522301))

(declare-fun condSetEmpty!2161 () Bool)

(assert (=> setNonEmpty!2134 (= condSetEmpty!2161 (= setRest!2134 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2161 () Bool)

(assert (=> setNonEmpty!2134 (= tp!162764 setRes!2161)))

(declare-fun setIsEmpty!2161 () Bool)

(assert (=> setIsEmpty!2161 setRes!2161))

(declare-fun setElem!2161 () Context!286)

(declare-fun e!313342 () Bool)

(declare-fun setNonEmpty!2161 () Bool)

(declare-fun tp!162928 () Bool)

(assert (=> setNonEmpty!2161 (= setRes!2161 (and tp!162928 (inv!6126 setElem!2161) e!313342))))

(declare-fun setRest!2161 () (InoxSet Context!286))

(assert (=> setNonEmpty!2161 (= setRest!2134 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2161 true) setRest!2161))))

(declare-fun b!522302 () Bool)

(declare-fun tp!162927 () Bool)

(assert (=> b!522302 (= e!313342 tp!162927)))

(assert (= (and setNonEmpty!2134 condSetEmpty!2161) setIsEmpty!2161))

(assert (= (and setNonEmpty!2134 (not condSetEmpty!2161)) setNonEmpty!2161))

(assert (= setNonEmpty!2161 b!522302))

(declare-fun m!768514 () Bool)

(assert (=> setNonEmpty!2161 m!768514))

(declare-fun b!522305 () Bool)

(declare-fun e!313343 () Bool)

(declare-fun tp!162933 () Bool)

(assert (=> b!522305 (= e!313343 tp!162933)))

(declare-fun b!522304 () Bool)

(declare-fun tp!162929 () Bool)

(declare-fun tp!162932 () Bool)

(assert (=> b!522304 (= e!313343 (and tp!162929 tp!162932))))

(assert (=> b!522080 (= tp!162806 e!313343)))

(declare-fun b!522306 () Bool)

(declare-fun tp!162931 () Bool)

(declare-fun tp!162930 () Bool)

(assert (=> b!522306 (= e!313343 (and tp!162931 tp!162930))))

(declare-fun b!522303 () Bool)

(assert (=> b!522303 (= e!313343 tp_is_empty!2789)))

(assert (= (and b!522080 ((_ is ElementMatch!1205) (_1!3201 (_1!3202 (h!10249 mapValue!2144))))) b!522303))

(assert (= (and b!522080 ((_ is Concat!2109) (_1!3201 (_1!3202 (h!10249 mapValue!2144))))) b!522304))

(assert (= (and b!522080 ((_ is Star!1205) (_1!3201 (_1!3202 (h!10249 mapValue!2144))))) b!522305))

(assert (= (and b!522080 ((_ is Union!1205) (_1!3201 (_1!3202 (h!10249 mapValue!2144))))) b!522306))

(declare-fun e!313344 () Bool)

(assert (=> b!522080 (= tp!162802 e!313344)))

(declare-fun setIsEmpty!2162 () Bool)

(declare-fun setRes!2162 () Bool)

(assert (=> setIsEmpty!2162 setRes!2162))

(declare-fun b!522307 () Bool)

(declare-fun e!313346 () Bool)

(declare-fun tp!162934 () Bool)

(assert (=> b!522307 (= e!313346 tp!162934)))

(declare-fun e!313345 () Bool)

(declare-fun tp!162937 () Bool)

(declare-fun b!522308 () Bool)

(declare-fun tp!162935 () Bool)

(assert (=> b!522308 (= e!313344 (and tp!162937 (inv!6126 (_2!3201 (_1!3202 (h!10249 (t!73448 mapValue!2144))))) e!313345 tp_is_empty!2789 setRes!2162 tp!162935))))

(declare-fun condSetEmpty!2162 () Bool)

(assert (=> b!522308 (= condSetEmpty!2162 (= (_2!3202 (h!10249 (t!73448 mapValue!2144))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522309 () Bool)

(declare-fun tp!162936 () Bool)

(assert (=> b!522309 (= e!313345 tp!162936)))

(declare-fun tp!162938 () Bool)

(declare-fun setElem!2162 () Context!286)

(declare-fun setNonEmpty!2162 () Bool)

(assert (=> setNonEmpty!2162 (= setRes!2162 (and tp!162938 (inv!6126 setElem!2162) e!313346))))

(declare-fun setRest!2162 () (InoxSet Context!286))

(assert (=> setNonEmpty!2162 (= (_2!3202 (h!10249 (t!73448 mapValue!2144))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2162 true) setRest!2162))))

(assert (= b!522308 b!522309))

(assert (= (and b!522308 condSetEmpty!2162) setIsEmpty!2162))

(assert (= (and b!522308 (not condSetEmpty!2162)) setNonEmpty!2162))

(assert (= setNonEmpty!2162 b!522307))

(assert (= (and b!522080 ((_ is Cons!4848) (t!73448 mapValue!2144))) b!522308))

(declare-fun m!768516 () Bool)

(assert (=> b!522308 m!768516))

(declare-fun m!768518 () Bool)

(assert (=> setNonEmpty!2162 m!768518))

(declare-fun condSetEmpty!2163 () Bool)

(assert (=> setNonEmpty!2128 (= condSetEmpty!2163 (= setRest!2128 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2163 () Bool)

(assert (=> setNonEmpty!2128 (= tp!162718 setRes!2163)))

(declare-fun setIsEmpty!2163 () Bool)

(assert (=> setIsEmpty!2163 setRes!2163))

(declare-fun e!313347 () Bool)

(declare-fun tp!162940 () Bool)

(declare-fun setNonEmpty!2163 () Bool)

(declare-fun setElem!2163 () Context!286)

(assert (=> setNonEmpty!2163 (= setRes!2163 (and tp!162940 (inv!6126 setElem!2163) e!313347))))

(declare-fun setRest!2163 () (InoxSet Context!286))

(assert (=> setNonEmpty!2163 (= setRest!2128 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2163 true) setRest!2163))))

(declare-fun b!522310 () Bool)

(declare-fun tp!162939 () Bool)

(assert (=> b!522310 (= e!313347 tp!162939)))

(assert (= (and setNonEmpty!2128 condSetEmpty!2163) setIsEmpty!2163))

(assert (= (and setNonEmpty!2128 (not condSetEmpty!2163)) setNonEmpty!2163))

(assert (= setNonEmpty!2163 b!522310))

(declare-fun m!768520 () Bool)

(assert (=> setNonEmpty!2163 m!768520))

(declare-fun b!522311 () Bool)

(declare-fun e!313348 () Bool)

(declare-fun tp!162941 () Bool)

(declare-fun tp!162942 () Bool)

(assert (=> b!522311 (= e!313348 (and tp!162941 tp!162942))))

(assert (=> b!521994 (= tp!162696 e!313348)))

(assert (= (and b!521994 ((_ is Cons!4847) (exprs!643 setElem!2124))) b!522311))

(declare-fun tp!162946 () Bool)

(declare-fun e!313351 () Bool)

(declare-fun setRes!2164 () Bool)

(declare-fun e!313349 () Bool)

(declare-fun b!522312 () Bool)

(assert (=> b!522312 (= e!313351 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 (t!73449 mapValue!2141))))) e!313349 tp_is_empty!2789 setRes!2164 tp!162946))))

(declare-fun condSetEmpty!2164 () Bool)

(assert (=> b!522312 (= condSetEmpty!2164 (= (_2!3204 (h!10250 (t!73449 mapValue!2141))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522313 () Bool)

(declare-fun e!313350 () Bool)

(declare-fun tp!162945 () Bool)

(assert (=> b!522313 (= e!313350 tp!162945)))

(declare-fun setIsEmpty!2164 () Bool)

(assert (=> setIsEmpty!2164 setRes!2164))

(declare-fun setElem!2164 () Context!286)

(declare-fun setNonEmpty!2164 () Bool)

(declare-fun tp!162943 () Bool)

(assert (=> setNonEmpty!2164 (= setRes!2164 (and tp!162943 (inv!6126 setElem!2164) e!313350))))

(declare-fun setRest!2164 () (InoxSet Context!286))

(assert (=> setNonEmpty!2164 (= (_2!3204 (h!10250 (t!73449 mapValue!2141))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2164 true) setRest!2164))))

(assert (=> b!522053 (= tp!162768 e!313351)))

(declare-fun b!522314 () Bool)

(declare-fun tp!162944 () Bool)

(assert (=> b!522314 (= e!313349 tp!162944)))

(assert (= b!522312 b!522314))

(assert (= (and b!522312 condSetEmpty!2164) setIsEmpty!2164))

(assert (= (and b!522312 (not condSetEmpty!2164)) setNonEmpty!2164))

(assert (= setNonEmpty!2164 b!522313))

(assert (= (and b!522053 ((_ is Cons!4849) (t!73449 mapValue!2141))) b!522312))

(declare-fun m!768522 () Bool)

(assert (=> b!522312 m!768522))

(declare-fun m!768524 () Bool)

(assert (=> setNonEmpty!2164 m!768524))

(declare-fun b!522315 () Bool)

(declare-fun tp!162950 () Bool)

(declare-fun e!313354 () Bool)

(declare-fun setRes!2165 () Bool)

(declare-fun e!313352 () Bool)

(assert (=> b!522315 (= e!313354 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 (t!73449 mapDefault!2134))))) e!313352 tp_is_empty!2789 setRes!2165 tp!162950))))

(declare-fun condSetEmpty!2165 () Bool)

(assert (=> b!522315 (= condSetEmpty!2165 (= (_2!3204 (h!10250 (t!73449 mapDefault!2134))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522316 () Bool)

(declare-fun e!313353 () Bool)

(declare-fun tp!162949 () Bool)

(assert (=> b!522316 (= e!313353 tp!162949)))

(declare-fun setIsEmpty!2165 () Bool)

(assert (=> setIsEmpty!2165 setRes!2165))

(declare-fun setElem!2165 () Context!286)

(declare-fun setNonEmpty!2165 () Bool)

(declare-fun tp!162947 () Bool)

(assert (=> setNonEmpty!2165 (= setRes!2165 (and tp!162947 (inv!6126 setElem!2165) e!313353))))

(declare-fun setRest!2165 () (InoxSet Context!286))

(assert (=> setNonEmpty!2165 (= (_2!3204 (h!10250 (t!73449 mapDefault!2134))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2165 true) setRest!2165))))

(assert (=> b!522036 (= tp!162742 e!313354)))

(declare-fun b!522317 () Bool)

(declare-fun tp!162948 () Bool)

(assert (=> b!522317 (= e!313352 tp!162948)))

(assert (= b!522315 b!522317))

(assert (= (and b!522315 condSetEmpty!2165) setIsEmpty!2165))

(assert (= (and b!522315 (not condSetEmpty!2165)) setNonEmpty!2165))

(assert (= setNonEmpty!2165 b!522316))

(assert (= (and b!522036 ((_ is Cons!4849) (t!73449 mapDefault!2134))) b!522315))

(declare-fun m!768526 () Bool)

(assert (=> b!522315 m!768526))

(declare-fun m!768528 () Bool)

(assert (=> setNonEmpty!2165 m!768528))

(declare-fun b!522318 () Bool)

(declare-fun e!313355 () Bool)

(declare-fun tp!162951 () Bool)

(declare-fun tp!162952 () Bool)

(assert (=> b!522318 (= e!313355 (and tp!162951 tp!162952))))

(assert (=> b!522055 (= tp!162766 e!313355)))

(assert (= (and b!522055 ((_ is Cons!4847) (exprs!643 setElem!2135))) b!522318))

(declare-fun b!522319 () Bool)

(declare-fun e!313356 () Bool)

(declare-fun tp!162953 () Bool)

(declare-fun tp!162954 () Bool)

(assert (=> b!522319 (= e!313356 (and tp!162953 tp!162954))))

(assert (=> b!522097 (= tp!162828 e!313356)))

(assert (= (and b!522097 ((_ is Cons!4847) (exprs!643 setElem!2147))) b!522319))

(declare-fun setElem!2166 () Context!286)

(declare-fun setNonEmpty!2166 () Bool)

(declare-fun tp!162960 () Bool)

(declare-fun setRes!2166 () Bool)

(declare-fun e!313361 () Bool)

(assert (=> setNonEmpty!2166 (= setRes!2166 (and tp!162960 (inv!6126 setElem!2166) e!313361))))

(declare-fun mapValue!2145 () List!4858)

(declare-fun setRest!2167 () (InoxSet Context!286))

(assert (=> setNonEmpty!2166 (= (_2!3202 (h!10249 mapValue!2145)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2166 true) setRest!2167))))

(declare-fun b!522320 () Bool)

(declare-fun e!313359 () Bool)

(declare-fun tp!162962 () Bool)

(assert (=> b!522320 (= e!313359 tp!162962)))

(declare-fun e!313360 () Bool)

(declare-fun tp!162964 () Bool)

(declare-fun mapDefault!2145 () List!4858)

(declare-fun setRes!2167 () Bool)

(declare-fun e!313357 () Bool)

(declare-fun tp!162959 () Bool)

(declare-fun b!522321 () Bool)

(assert (=> b!522321 (= e!313360 (and tp!162964 (inv!6126 (_2!3201 (_1!3202 (h!10249 mapDefault!2145)))) e!313357 tp_is_empty!2789 setRes!2167 tp!162959))))

(declare-fun condSetEmpty!2167 () Bool)

(assert (=> b!522321 (= condSetEmpty!2167 (= (_2!3202 (h!10249 mapDefault!2145)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522322 () Bool)

(declare-fun tp!162955 () Bool)

(assert (=> b!522322 (= e!313357 tp!162955)))

(declare-fun b!522323 () Bool)

(declare-fun tp!162958 () Bool)

(assert (=> b!522323 (= e!313361 tp!162958)))

(declare-fun tp!162961 () Bool)

(declare-fun e!313358 () Bool)

(declare-fun tp!162965 () Bool)

(declare-fun b!522324 () Bool)

(assert (=> b!522324 (= e!313358 (and tp!162965 (inv!6126 (_2!3201 (_1!3202 (h!10249 mapValue!2145)))) e!313359 tp_is_empty!2789 setRes!2166 tp!162961))))

(declare-fun condSetEmpty!2166 () Bool)

(assert (=> b!522324 (= condSetEmpty!2166 (= (_2!3202 (h!10249 mapValue!2145)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2166 () Bool)

(assert (=> setIsEmpty!2166 setRes!2166))

(declare-fun condMapEmpty!2145 () Bool)

(assert (=> mapNonEmpty!2144 (= condMapEmpty!2145 (= mapRest!2144 ((as const (Array (_ BitVec 32) List!4858)) mapDefault!2145)))))

(declare-fun mapRes!2145 () Bool)

(assert (=> mapNonEmpty!2144 (= tp!162798 (and e!313360 mapRes!2145))))

(declare-fun mapIsEmpty!2145 () Bool)

(assert (=> mapIsEmpty!2145 mapRes!2145))

(declare-fun e!313362 () Bool)

(declare-fun tp!162956 () Bool)

(declare-fun setNonEmpty!2167 () Bool)

(declare-fun setElem!2167 () Context!286)

(assert (=> setNonEmpty!2167 (= setRes!2167 (and tp!162956 (inv!6126 setElem!2167) e!313362))))

(declare-fun setRest!2166 () (InoxSet Context!286))

(assert (=> setNonEmpty!2167 (= (_2!3202 (h!10249 mapDefault!2145)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2167 true) setRest!2166))))

(declare-fun mapNonEmpty!2145 () Bool)

(declare-fun tp!162957 () Bool)

(assert (=> mapNonEmpty!2145 (= mapRes!2145 (and tp!162957 e!313358))))

(declare-fun mapKey!2145 () (_ BitVec 32))

(declare-fun mapRest!2145 () (Array (_ BitVec 32) List!4858))

(assert (=> mapNonEmpty!2145 (= mapRest!2144 (store mapRest!2145 mapKey!2145 mapValue!2145))))

(declare-fun b!522325 () Bool)

(declare-fun tp!162963 () Bool)

(assert (=> b!522325 (= e!313362 tp!162963)))

(declare-fun setIsEmpty!2167 () Bool)

(assert (=> setIsEmpty!2167 setRes!2167))

(assert (= (and mapNonEmpty!2144 condMapEmpty!2145) mapIsEmpty!2145))

(assert (= (and mapNonEmpty!2144 (not condMapEmpty!2145)) mapNonEmpty!2145))

(assert (= b!522324 b!522320))

(assert (= (and b!522324 condSetEmpty!2166) setIsEmpty!2166))

(assert (= (and b!522324 (not condSetEmpty!2166)) setNonEmpty!2166))

(assert (= setNonEmpty!2166 b!522323))

(assert (= (and mapNonEmpty!2145 ((_ is Cons!4848) mapValue!2145)) b!522324))

(assert (= b!522321 b!522322))

(assert (= (and b!522321 condSetEmpty!2167) setIsEmpty!2167))

(assert (= (and b!522321 (not condSetEmpty!2167)) setNonEmpty!2167))

(assert (= setNonEmpty!2167 b!522325))

(assert (= (and mapNonEmpty!2144 ((_ is Cons!4848) mapDefault!2145)) b!522321))

(declare-fun m!768530 () Bool)

(assert (=> b!522324 m!768530))

(declare-fun m!768532 () Bool)

(assert (=> mapNonEmpty!2145 m!768532))

(declare-fun m!768534 () Bool)

(assert (=> b!522321 m!768534))

(declare-fun m!768536 () Bool)

(assert (=> setNonEmpty!2167 m!768536))

(declare-fun m!768538 () Bool)

(assert (=> setNonEmpty!2166 m!768538))

(declare-fun setRes!2168 () Bool)

(declare-fun b!522326 () Bool)

(declare-fun tp!162969 () Bool)

(declare-fun e!313365 () Bool)

(declare-fun e!313363 () Bool)

(assert (=> b!522326 (= e!313365 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 (t!73449 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))))))) e!313363 tp_is_empty!2789 setRes!2168 tp!162969))))

(declare-fun condSetEmpty!2168 () Bool)

(assert (=> b!522326 (= condSetEmpty!2168 (= (_2!3204 (h!10250 (t!73449 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522327 () Bool)

(declare-fun e!313364 () Bool)

(declare-fun tp!162968 () Bool)

(assert (=> b!522327 (= e!313364 tp!162968)))

(declare-fun setIsEmpty!2168 () Bool)

(assert (=> setIsEmpty!2168 setRes!2168))

(declare-fun setElem!2168 () Context!286)

(declare-fun tp!162966 () Bool)

(declare-fun setNonEmpty!2168 () Bool)

(assert (=> setNonEmpty!2168 (= setRes!2168 (and tp!162966 (inv!6126 setElem!2168) e!313364))))

(declare-fun setRest!2168 () (InoxSet Context!286))

(assert (=> setNonEmpty!2168 (= (_2!3204 (h!10250 (t!73449 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2168 true) setRest!2168))))

(assert (=> b!521970 (= tp!162666 e!313365)))

(declare-fun b!522328 () Bool)

(declare-fun tp!162967 () Bool)

(assert (=> b!522328 (= e!313363 tp!162967)))

(assert (= b!522326 b!522328))

(assert (= (and b!522326 condSetEmpty!2168) setIsEmpty!2168))

(assert (= (and b!522326 (not condSetEmpty!2168)) setNonEmpty!2168))

(assert (= setNonEmpty!2168 b!522327))

(assert (= (and b!521970 ((_ is Cons!4849) (t!73449 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))))) b!522326))

(declare-fun m!768540 () Bool)

(assert (=> b!522326 m!768540))

(declare-fun m!768542 () Bool)

(assert (=> setNonEmpty!2168 m!768542))

(declare-fun b!522329 () Bool)

(declare-fun e!313366 () Bool)

(declare-fun tp!162970 () Bool)

(declare-fun tp!162971 () Bool)

(assert (=> b!522329 (= e!313366 (and tp!162970 tp!162971))))

(assert (=> b!521968 (= tp!162661 e!313366)))

(assert (= (and b!521968 ((_ is Cons!4847) (exprs!643 setElem!2117))) b!522329))

(declare-fun e!313368 () Bool)

(declare-fun setRes!2169 () Bool)

(declare-fun tp!162972 () Bool)

(declare-fun setElem!2169 () Context!286)

(declare-fun setNonEmpty!2169 () Bool)

(assert (=> setNonEmpty!2169 (= setRes!2169 (and tp!162972 (inv!6126 setElem!2169) e!313368))))

(declare-fun mapDefault!2146 () List!4861)

(declare-fun setRest!2170 () (InoxSet Context!286))

(assert (=> setNonEmpty!2169 (= (_1!3205 (_1!3206 (h!10252 mapDefault!2146))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2169 true) setRest!2170))))

(declare-fun setIsEmpty!2169 () Bool)

(assert (=> setIsEmpty!2169 setRes!2169))

(declare-fun setIsEmpty!2170 () Bool)

(declare-fun setRes!2170 () Bool)

(assert (=> setIsEmpty!2170 setRes!2170))

(declare-fun b!522330 () Bool)

(declare-fun e!313370 () Bool)

(declare-fun tp!162978 () Bool)

(assert (=> b!522330 (= e!313370 tp!162978)))

(declare-fun b!522331 () Bool)

(declare-fun e!313367 () Bool)

(declare-fun tp!162977 () Bool)

(assert (=> b!522331 (= e!313367 (and setRes!2169 tp!162977))))

(declare-fun condSetEmpty!2169 () Bool)

(assert (=> b!522331 (= condSetEmpty!2169 (= (_1!3205 (_1!3206 (h!10252 mapDefault!2146))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun condMapEmpty!2146 () Bool)

(assert (=> mapNonEmpty!2138 (= condMapEmpty!2146 (= mapRest!2138 ((as const (Array (_ BitVec 32) List!4861)) mapDefault!2146)))))

(declare-fun mapRes!2146 () Bool)

(assert (=> mapNonEmpty!2138 (= tp!162691 (and e!313367 mapRes!2146))))

(declare-fun mapNonEmpty!2146 () Bool)

(declare-fun tp!162973 () Bool)

(declare-fun e!313369 () Bool)

(assert (=> mapNonEmpty!2146 (= mapRes!2146 (and tp!162973 e!313369))))

(declare-fun mapValue!2146 () List!4861)

(declare-fun mapKey!2146 () (_ BitVec 32))

(declare-fun mapRest!2146 () (Array (_ BitVec 32) List!4861))

(assert (=> mapNonEmpty!2146 (= mapRest!2138 (store mapRest!2146 mapKey!2146 mapValue!2146))))

(declare-fun b!522332 () Bool)

(declare-fun tp!162975 () Bool)

(assert (=> b!522332 (= e!313368 tp!162975)))

(declare-fun tp!162974 () Bool)

(declare-fun setNonEmpty!2170 () Bool)

(declare-fun setElem!2170 () Context!286)

(assert (=> setNonEmpty!2170 (= setRes!2170 (and tp!162974 (inv!6126 setElem!2170) e!313370))))

(declare-fun setRest!2169 () (InoxSet Context!286))

(assert (=> setNonEmpty!2170 (= (_1!3205 (_1!3206 (h!10252 mapValue!2146))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2170 true) setRest!2169))))

(declare-fun mapIsEmpty!2146 () Bool)

(assert (=> mapIsEmpty!2146 mapRes!2146))

(declare-fun b!522333 () Bool)

(declare-fun tp!162976 () Bool)

(assert (=> b!522333 (= e!313369 (and setRes!2170 tp!162976))))

(declare-fun condSetEmpty!2170 () Bool)

(assert (=> b!522333 (= condSetEmpty!2170 (= (_1!3205 (_1!3206 (h!10252 mapValue!2146))) ((as const (Array Context!286 Bool)) false)))))

(assert (= (and mapNonEmpty!2138 condMapEmpty!2146) mapIsEmpty!2146))

(assert (= (and mapNonEmpty!2138 (not condMapEmpty!2146)) mapNonEmpty!2146))

(assert (= (and b!522333 condSetEmpty!2170) setIsEmpty!2170))

(assert (= (and b!522333 (not condSetEmpty!2170)) setNonEmpty!2170))

(assert (= setNonEmpty!2170 b!522330))

(assert (= (and mapNonEmpty!2146 ((_ is Cons!4851) mapValue!2146)) b!522333))

(assert (= (and b!522331 condSetEmpty!2169) setIsEmpty!2169))

(assert (= (and b!522331 (not condSetEmpty!2169)) setNonEmpty!2169))

(assert (= setNonEmpty!2169 b!522332))

(assert (= (and mapNonEmpty!2138 ((_ is Cons!4851) mapDefault!2146)) b!522331))

(declare-fun m!768544 () Bool)

(assert (=> setNonEmpty!2169 m!768544))

(declare-fun m!768546 () Bool)

(assert (=> mapNonEmpty!2146 m!768546))

(declare-fun m!768548 () Bool)

(assert (=> setNonEmpty!2170 m!768548))

(declare-fun condSetEmpty!2171 () Bool)

(assert (=> setNonEmpty!2124 (= condSetEmpty!2171 (= setRest!2123 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2171 () Bool)

(assert (=> setNonEmpty!2124 (= tp!162692 setRes!2171)))

(declare-fun setIsEmpty!2171 () Bool)

(assert (=> setIsEmpty!2171 setRes!2171))

(declare-fun setNonEmpty!2171 () Bool)

(declare-fun setElem!2171 () Context!286)

(declare-fun tp!162980 () Bool)

(declare-fun e!313371 () Bool)

(assert (=> setNonEmpty!2171 (= setRes!2171 (and tp!162980 (inv!6126 setElem!2171) e!313371))))

(declare-fun setRest!2171 () (InoxSet Context!286))

(assert (=> setNonEmpty!2171 (= setRest!2123 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2171 true) setRest!2171))))

(declare-fun b!522334 () Bool)

(declare-fun tp!162979 () Bool)

(assert (=> b!522334 (= e!313371 tp!162979)))

(assert (= (and setNonEmpty!2124 condSetEmpty!2171) setIsEmpty!2171))

(assert (= (and setNonEmpty!2124 (not condSetEmpty!2171)) setNonEmpty!2171))

(assert (= setNonEmpty!2171 b!522334))

(declare-fun m!768550 () Bool)

(assert (=> setNonEmpty!2171 m!768550))

(declare-fun b!522337 () Bool)

(declare-fun e!313372 () Bool)

(declare-fun tp!162985 () Bool)

(assert (=> b!522337 (= e!313372 tp!162985)))

(declare-fun b!522336 () Bool)

(declare-fun tp!162981 () Bool)

(declare-fun tp!162984 () Bool)

(assert (=> b!522336 (= e!313372 (and tp!162981 tp!162984))))

(assert (=> b!522091 (= tp!162820 e!313372)))

(declare-fun b!522338 () Bool)

(declare-fun tp!162983 () Bool)

(declare-fun tp!162982 () Bool)

(assert (=> b!522338 (= e!313372 (and tp!162983 tp!162982))))

(declare-fun b!522335 () Bool)

(assert (=> b!522335 (= e!313372 tp_is_empty!2789)))

(assert (= (and b!522091 ((_ is ElementMatch!1205) (_1!3201 (_1!3202 (h!10249 mapValue!2134))))) b!522335))

(assert (= (and b!522091 ((_ is Concat!2109) (_1!3201 (_1!3202 (h!10249 mapValue!2134))))) b!522336))

(assert (= (and b!522091 ((_ is Star!1205) (_1!3201 (_1!3202 (h!10249 mapValue!2134))))) b!522337))

(assert (= (and b!522091 ((_ is Union!1205) (_1!3201 (_1!3202 (h!10249 mapValue!2134))))) b!522338))

(declare-fun e!313373 () Bool)

(assert (=> b!522091 (= tp!162818 e!313373)))

(declare-fun setIsEmpty!2172 () Bool)

(declare-fun setRes!2172 () Bool)

(assert (=> setIsEmpty!2172 setRes!2172))

(declare-fun b!522339 () Bool)

(declare-fun e!313375 () Bool)

(declare-fun tp!162986 () Bool)

(assert (=> b!522339 (= e!313375 tp!162986)))

(declare-fun b!522340 () Bool)

(declare-fun tp!162989 () Bool)

(declare-fun tp!162987 () Bool)

(declare-fun e!313374 () Bool)

(assert (=> b!522340 (= e!313373 (and tp!162989 (inv!6126 (_2!3201 (_1!3202 (h!10249 (t!73448 mapValue!2134))))) e!313374 tp_is_empty!2789 setRes!2172 tp!162987))))

(declare-fun condSetEmpty!2172 () Bool)

(assert (=> b!522340 (= condSetEmpty!2172 (= (_2!3202 (h!10249 (t!73448 mapValue!2134))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522341 () Bool)

(declare-fun tp!162988 () Bool)

(assert (=> b!522341 (= e!313374 tp!162988)))

(declare-fun setNonEmpty!2172 () Bool)

(declare-fun tp!162990 () Bool)

(declare-fun setElem!2172 () Context!286)

(assert (=> setNonEmpty!2172 (= setRes!2172 (and tp!162990 (inv!6126 setElem!2172) e!313375))))

(declare-fun setRest!2172 () (InoxSet Context!286))

(assert (=> setNonEmpty!2172 (= (_2!3202 (h!10249 (t!73448 mapValue!2134))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2172 true) setRest!2172))))

(assert (= b!522340 b!522341))

(assert (= (and b!522340 condSetEmpty!2172) setIsEmpty!2172))

(assert (= (and b!522340 (not condSetEmpty!2172)) setNonEmpty!2172))

(assert (= setNonEmpty!2172 b!522339))

(assert (= (and b!522091 ((_ is Cons!4848) (t!73448 mapValue!2134))) b!522340))

(declare-fun m!768552 () Bool)

(assert (=> b!522340 m!768552))

(declare-fun m!768554 () Bool)

(assert (=> setNonEmpty!2172 m!768554))

(declare-fun b!522344 () Bool)

(declare-fun e!313376 () Bool)

(declare-fun tp!162995 () Bool)

(assert (=> b!522344 (= e!313376 tp!162995)))

(declare-fun b!522343 () Bool)

(declare-fun tp!162991 () Bool)

(declare-fun tp!162994 () Bool)

(assert (=> b!522343 (= e!313376 (and tp!162991 tp!162994))))

(assert (=> b!522094 (= tp!162825 e!313376)))

(declare-fun b!522345 () Bool)

(declare-fun tp!162993 () Bool)

(declare-fun tp!162992 () Bool)

(assert (=> b!522345 (= e!313376 (and tp!162993 tp!162992))))

(declare-fun b!522342 () Bool)

(assert (=> b!522342 (= e!313376 tp_is_empty!2789)))

(assert (= (and b!522094 ((_ is ElementMatch!1205) (_1!3201 (_1!3202 (h!10249 mapDefault!2135))))) b!522342))

(assert (= (and b!522094 ((_ is Concat!2109) (_1!3201 (_1!3202 (h!10249 mapDefault!2135))))) b!522343))

(assert (= (and b!522094 ((_ is Star!1205) (_1!3201 (_1!3202 (h!10249 mapDefault!2135))))) b!522344))

(assert (= (and b!522094 ((_ is Union!1205) (_1!3201 (_1!3202 (h!10249 mapDefault!2135))))) b!522345))

(declare-fun e!313377 () Bool)

(assert (=> b!522094 (= tp!162823 e!313377)))

(declare-fun setIsEmpty!2173 () Bool)

(declare-fun setRes!2173 () Bool)

(assert (=> setIsEmpty!2173 setRes!2173))

(declare-fun b!522346 () Bool)

(declare-fun e!313379 () Bool)

(declare-fun tp!162996 () Bool)

(assert (=> b!522346 (= e!313379 tp!162996)))

(declare-fun e!313378 () Bool)

(declare-fun tp!162999 () Bool)

(declare-fun tp!162997 () Bool)

(declare-fun b!522347 () Bool)

(assert (=> b!522347 (= e!313377 (and tp!162999 (inv!6126 (_2!3201 (_1!3202 (h!10249 (t!73448 mapDefault!2135))))) e!313378 tp_is_empty!2789 setRes!2173 tp!162997))))

(declare-fun condSetEmpty!2173 () Bool)

(assert (=> b!522347 (= condSetEmpty!2173 (= (_2!3202 (h!10249 (t!73448 mapDefault!2135))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522348 () Bool)

(declare-fun tp!162998 () Bool)

(assert (=> b!522348 (= e!313378 tp!162998)))

(declare-fun setElem!2173 () Context!286)

(declare-fun setNonEmpty!2173 () Bool)

(declare-fun tp!163000 () Bool)

(assert (=> setNonEmpty!2173 (= setRes!2173 (and tp!163000 (inv!6126 setElem!2173) e!313379))))

(declare-fun setRest!2173 () (InoxSet Context!286))

(assert (=> setNonEmpty!2173 (= (_2!3202 (h!10249 (t!73448 mapDefault!2135))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2173 true) setRest!2173))))

(assert (= b!522347 b!522348))

(assert (= (and b!522347 condSetEmpty!2173) setIsEmpty!2173))

(assert (= (and b!522347 (not condSetEmpty!2173)) setNonEmpty!2173))

(assert (= setNonEmpty!2173 b!522346))

(assert (= (and b!522094 ((_ is Cons!4848) (t!73448 mapDefault!2135))) b!522347))

(declare-fun m!768556 () Bool)

(assert (=> b!522347 m!768556))

(declare-fun m!768558 () Bool)

(assert (=> setNonEmpty!2173 m!768558))

(declare-fun setRes!2175 () Bool)

(declare-fun setElem!2175 () Context!286)

(declare-fun tp!163004 () Bool)

(declare-fun e!313385 () Bool)

(declare-fun setNonEmpty!2174 () Bool)

(assert (=> setNonEmpty!2174 (= setRes!2175 (and tp!163004 (inv!6126 setElem!2175) e!313385))))

(declare-fun mapValue!2147 () List!4859)

(declare-fun setRest!2174 () (InoxSet Context!286))

(assert (=> setNonEmpty!2174 (= (_2!3204 (h!10250 mapValue!2147)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2175 true) setRest!2174))))

(declare-fun mapIsEmpty!2147 () Bool)

(declare-fun mapRes!2147 () Bool)

(assert (=> mapIsEmpty!2147 mapRes!2147))

(declare-fun e!313383 () Bool)

(declare-fun b!522349 () Bool)

(declare-fun e!313382 () Bool)

(declare-fun tp!163008 () Bool)

(assert (=> b!522349 (= e!313383 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 mapValue!2147)))) e!313382 tp_is_empty!2789 setRes!2175 tp!163008))))

(declare-fun condSetEmpty!2175 () Bool)

(assert (=> b!522349 (= condSetEmpty!2175 (= (_2!3204 (h!10250 mapValue!2147)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522350 () Bool)

(declare-fun e!313384 () Bool)

(declare-fun tp!163005 () Bool)

(assert (=> b!522350 (= e!313384 tp!163005)))

(declare-fun b!522351 () Bool)

(declare-fun tp!163006 () Bool)

(assert (=> b!522351 (= e!313385 tp!163006)))

(declare-fun condMapEmpty!2147 () Bool)

(declare-fun mapDefault!2147 () List!4859)

(assert (=> mapNonEmpty!2141 (= condMapEmpty!2147 (= mapRest!2141 ((as const (Array (_ BitVec 32) List!4859)) mapDefault!2147)))))

(declare-fun e!313381 () Bool)

(assert (=> mapNonEmpty!2141 (= tp!162767 (and e!313381 mapRes!2147))))

(declare-fun setIsEmpty!2174 () Bool)

(declare-fun setRes!2174 () Bool)

(assert (=> setIsEmpty!2174 setRes!2174))

(declare-fun mapNonEmpty!2147 () Bool)

(declare-fun tp!163007 () Bool)

(assert (=> mapNonEmpty!2147 (= mapRes!2147 (and tp!163007 e!313383))))

(declare-fun mapRest!2147 () (Array (_ BitVec 32) List!4859))

(declare-fun mapKey!2147 () (_ BitVec 32))

(assert (=> mapNonEmpty!2147 (= mapRest!2141 (store mapRest!2147 mapKey!2147 mapValue!2147))))

(declare-fun b!522352 () Bool)

(declare-fun tp!163001 () Bool)

(declare-fun e!313380 () Bool)

(assert (=> b!522352 (= e!313381 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 mapDefault!2147)))) e!313380 tp_is_empty!2789 setRes!2174 tp!163001))))

(declare-fun condSetEmpty!2174 () Bool)

(assert (=> b!522352 (= condSetEmpty!2174 (= (_2!3204 (h!10250 mapDefault!2147)) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setNonEmpty!2175 () Bool)

(declare-fun setElem!2174 () Context!286)

(declare-fun tp!163009 () Bool)

(assert (=> setNonEmpty!2175 (= setRes!2174 (and tp!163009 (inv!6126 setElem!2174) e!313384))))

(declare-fun setRest!2175 () (InoxSet Context!286))

(assert (=> setNonEmpty!2175 (= (_2!3204 (h!10250 mapDefault!2147)) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2174 true) setRest!2175))))

(declare-fun b!522353 () Bool)

(declare-fun tp!163003 () Bool)

(assert (=> b!522353 (= e!313380 tp!163003)))

(declare-fun setIsEmpty!2175 () Bool)

(assert (=> setIsEmpty!2175 setRes!2175))

(declare-fun b!522354 () Bool)

(declare-fun tp!163002 () Bool)

(assert (=> b!522354 (= e!313382 tp!163002)))

(assert (= (and mapNonEmpty!2141 condMapEmpty!2147) mapIsEmpty!2147))

(assert (= (and mapNonEmpty!2141 (not condMapEmpty!2147)) mapNonEmpty!2147))

(assert (= b!522349 b!522354))

(assert (= (and b!522349 condSetEmpty!2175) setIsEmpty!2175))

(assert (= (and b!522349 (not condSetEmpty!2175)) setNonEmpty!2174))

(assert (= setNonEmpty!2174 b!522351))

(assert (= (and mapNonEmpty!2147 ((_ is Cons!4849) mapValue!2147)) b!522349))

(assert (= b!522352 b!522353))

(assert (= (and b!522352 condSetEmpty!2174) setIsEmpty!2174))

(assert (= (and b!522352 (not condSetEmpty!2174)) setNonEmpty!2175))

(assert (= setNonEmpty!2175 b!522350))

(assert (= (and mapNonEmpty!2141 ((_ is Cons!4849) mapDefault!2147)) b!522352))

(declare-fun m!768560 () Bool)

(assert (=> setNonEmpty!2175 m!768560))

(declare-fun m!768562 () Bool)

(assert (=> mapNonEmpty!2147 m!768562))

(declare-fun m!768564 () Bool)

(assert (=> setNonEmpty!2174 m!768564))

(declare-fun m!768566 () Bool)

(assert (=> b!522349 m!768566))

(declare-fun m!768568 () Bool)

(assert (=> b!522352 m!768568))

(declare-fun b!522355 () Bool)

(declare-fun e!313386 () Bool)

(declare-fun tp!163010 () Bool)

(declare-fun tp!163011 () Bool)

(assert (=> b!522355 (= e!313386 (and tp!163010 tp!163011))))

(assert (=> b!522038 (= tp!162740 e!313386)))

(assert (= (and b!522038 ((_ is Cons!4847) (exprs!643 (_1!3203 (_1!3204 (h!10250 mapDefault!2134)))))) b!522355))

(declare-fun condSetEmpty!2176 () Bool)

(assert (=> setNonEmpty!2145 (= condSetEmpty!2176 (= setRest!2145 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2176 () Bool)

(assert (=> setNonEmpty!2145 (= tp!162821 setRes!2176)))

(declare-fun setIsEmpty!2176 () Bool)

(assert (=> setIsEmpty!2176 setRes!2176))

(declare-fun tp!163013 () Bool)

(declare-fun e!313387 () Bool)

(declare-fun setNonEmpty!2176 () Bool)

(declare-fun setElem!2176 () Context!286)

(assert (=> setNonEmpty!2176 (= setRes!2176 (and tp!163013 (inv!6126 setElem!2176) e!313387))))

(declare-fun setRest!2176 () (InoxSet Context!286))

(assert (=> setNonEmpty!2176 (= setRest!2145 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2176 true) setRest!2176))))

(declare-fun b!522356 () Bool)

(declare-fun tp!163012 () Bool)

(assert (=> b!522356 (= e!313387 tp!163012)))

(assert (= (and setNonEmpty!2145 condSetEmpty!2176) setIsEmpty!2176))

(assert (= (and setNonEmpty!2145 (not condSetEmpty!2176)) setNonEmpty!2176))

(assert (= setNonEmpty!2176 b!522356))

(declare-fun m!768570 () Bool)

(assert (=> setNonEmpty!2176 m!768570))

(declare-fun condSetEmpty!2177 () Bool)

(assert (=> setNonEmpty!2146 (= condSetEmpty!2177 (= setRest!2146 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2177 () Bool)

(assert (=> setNonEmpty!2146 (= tp!162826 setRes!2177)))

(declare-fun setIsEmpty!2177 () Bool)

(assert (=> setIsEmpty!2177 setRes!2177))

(declare-fun tp!163015 () Bool)

(declare-fun e!313388 () Bool)

(declare-fun setElem!2177 () Context!286)

(declare-fun setNonEmpty!2177 () Bool)

(assert (=> setNonEmpty!2177 (= setRes!2177 (and tp!163015 (inv!6126 setElem!2177) e!313388))))

(declare-fun setRest!2177 () (InoxSet Context!286))

(assert (=> setNonEmpty!2177 (= setRest!2146 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2177 true) setRest!2177))))

(declare-fun b!522357 () Bool)

(declare-fun tp!163014 () Bool)

(assert (=> b!522357 (= e!313388 tp!163014)))

(assert (= (and setNonEmpty!2146 condSetEmpty!2177) setIsEmpty!2177))

(assert (= (and setNonEmpty!2146 (not condSetEmpty!2177)) setNonEmpty!2177))

(assert (= setNonEmpty!2177 b!522357))

(declare-fun m!768572 () Bool)

(assert (=> setNonEmpty!2177 m!768572))

(declare-fun condSetEmpty!2178 () Bool)

(assert (=> setNonEmpty!2135 (= condSetEmpty!2178 (= setRest!2135 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2178 () Bool)

(assert (=> setNonEmpty!2135 (= tp!162769 setRes!2178)))

(declare-fun setIsEmpty!2178 () Bool)

(assert (=> setIsEmpty!2178 setRes!2178))

(declare-fun e!313389 () Bool)

(declare-fun setElem!2178 () Context!286)

(declare-fun tp!163017 () Bool)

(declare-fun setNonEmpty!2178 () Bool)

(assert (=> setNonEmpty!2178 (= setRes!2178 (and tp!163017 (inv!6126 setElem!2178) e!313389))))

(declare-fun setRest!2178 () (InoxSet Context!286))

(assert (=> setNonEmpty!2178 (= setRest!2135 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2178 true) setRest!2178))))

(declare-fun b!522358 () Bool)

(declare-fun tp!163016 () Bool)

(assert (=> b!522358 (= e!313389 tp!163016)))

(assert (= (and setNonEmpty!2135 condSetEmpty!2178) setIsEmpty!2178))

(assert (= (and setNonEmpty!2135 (not condSetEmpty!2178)) setNonEmpty!2178))

(assert (= setNonEmpty!2178 b!522358))

(declare-fun m!768574 () Bool)

(assert (=> setNonEmpty!2178 m!768574))

(declare-fun condSetEmpty!2179 () Bool)

(assert (=> setNonEmpty!2117 (= condSetEmpty!2179 (= setRest!2117 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2179 () Bool)

(assert (=> setNonEmpty!2117 (= tp!162659 setRes!2179)))

(declare-fun setIsEmpty!2179 () Bool)

(assert (=> setIsEmpty!2179 setRes!2179))

(declare-fun setNonEmpty!2179 () Bool)

(declare-fun tp!163019 () Bool)

(declare-fun e!313390 () Bool)

(declare-fun setElem!2179 () Context!286)

(assert (=> setNonEmpty!2179 (= setRes!2179 (and tp!163019 (inv!6126 setElem!2179) e!313390))))

(declare-fun setRest!2179 () (InoxSet Context!286))

(assert (=> setNonEmpty!2179 (= setRest!2117 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2179 true) setRest!2179))))

(declare-fun b!522359 () Bool)

(declare-fun tp!163018 () Bool)

(assert (=> b!522359 (= e!313390 tp!163018)))

(assert (= (and setNonEmpty!2117 condSetEmpty!2179) setIsEmpty!2179))

(assert (= (and setNonEmpty!2117 (not condSetEmpty!2179)) setNonEmpty!2179))

(assert (= setNonEmpty!2179 b!522359))

(declare-fun m!768576 () Bool)

(assert (=> setNonEmpty!2179 m!768576))

(declare-fun b!522360 () Bool)

(declare-fun e!313391 () Bool)

(declare-fun tp!163020 () Bool)

(declare-fun tp!163021 () Bool)

(assert (=> b!522360 (= e!313391 (and tp!163020 tp!163021))))

(assert (=> b!521972 (= tp!162664 e!313391)))

(assert (= (and b!521972 ((_ is Cons!4847) (exprs!643 (_1!3203 (_1!3204 (h!10250 (minValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449)))))))))))) b!522360))

(declare-fun b!522361 () Bool)

(declare-fun e!313393 () Bool)

(declare-fun setRes!2180 () Bool)

(declare-fun tp!163024 () Bool)

(assert (=> b!522361 (= e!313393 (and setRes!2180 tp!163024))))

(declare-fun condSetEmpty!2180 () Bool)

(assert (=> b!522361 (= condSetEmpty!2180 (= (_1!3205 (_1!3206 (h!10252 (t!73451 mapValue!2138)))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2180 () Bool)

(assert (=> setIsEmpty!2180 setRes!2180))

(declare-fun tp!163022 () Bool)

(declare-fun setNonEmpty!2180 () Bool)

(declare-fun setElem!2180 () Context!286)

(declare-fun e!313392 () Bool)

(assert (=> setNonEmpty!2180 (= setRes!2180 (and tp!163022 (inv!6126 setElem!2180) e!313392))))

(declare-fun setRest!2180 () (InoxSet Context!286))

(assert (=> setNonEmpty!2180 (= (_1!3205 (_1!3206 (h!10252 (t!73451 mapValue!2138)))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2180 true) setRest!2180))))

(assert (=> b!521997 (= tp!162694 e!313393)))

(declare-fun b!522362 () Bool)

(declare-fun tp!163023 () Bool)

(assert (=> b!522362 (= e!313392 tp!163023)))

(assert (= (and b!522361 condSetEmpty!2180) setIsEmpty!2180))

(assert (= (and b!522361 (not condSetEmpty!2180)) setNonEmpty!2180))

(assert (= setNonEmpty!2180 b!522362))

(assert (= (and b!521997 ((_ is Cons!4851) (t!73451 mapValue!2138))) b!522361))

(declare-fun m!768578 () Bool)

(assert (=> setNonEmpty!2180 m!768578))

(declare-fun e!313394 () Bool)

(declare-fun e!313396 () Bool)

(declare-fun setRes!2181 () Bool)

(declare-fun tp!163028 () Bool)

(declare-fun b!522363 () Bool)

(assert (=> b!522363 (= e!313396 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 (t!73449 mapValue!2135))))) e!313394 tp_is_empty!2789 setRes!2181 tp!163028))))

(declare-fun condSetEmpty!2181 () Bool)

(assert (=> b!522363 (= condSetEmpty!2181 (= (_2!3204 (h!10250 (t!73449 mapValue!2135))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522364 () Bool)

(declare-fun e!313395 () Bool)

(declare-fun tp!163027 () Bool)

(assert (=> b!522364 (= e!313395 tp!163027)))

(declare-fun setIsEmpty!2181 () Bool)

(assert (=> setIsEmpty!2181 setRes!2181))

(declare-fun setElem!2181 () Context!286)

(declare-fun tp!163025 () Bool)

(declare-fun setNonEmpty!2181 () Bool)

(assert (=> setNonEmpty!2181 (= setRes!2181 (and tp!163025 (inv!6126 setElem!2181) e!313395))))

(declare-fun setRest!2181 () (InoxSet Context!286))

(assert (=> setNonEmpty!2181 (= (_2!3204 (h!10250 (t!73449 mapValue!2135))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2181 true) setRest!2181))))

(assert (=> b!522059 (= tp!162773 e!313396)))

(declare-fun b!522365 () Bool)

(declare-fun tp!163026 () Bool)

(assert (=> b!522365 (= e!313394 tp!163026)))

(assert (= b!522363 b!522365))

(assert (= (and b!522363 condSetEmpty!2181) setIsEmpty!2181))

(assert (= (and b!522363 (not condSetEmpty!2181)) setNonEmpty!2181))

(assert (= setNonEmpty!2181 b!522364))

(assert (= (and b!522059 ((_ is Cons!4849) (t!73449 mapValue!2135))) b!522363))

(declare-fun m!768580 () Bool)

(assert (=> b!522363 m!768580))

(declare-fun m!768582 () Bool)

(assert (=> setNonEmpty!2181 m!768582))

(declare-fun b!522368 () Bool)

(declare-fun b_free!13753 () Bool)

(declare-fun b_next!13769 () Bool)

(assert (=> b!522368 (= b_free!13753 (not b_next!13769))))

(declare-fun tp!163030 () Bool)

(declare-fun b_and!51247 () Bool)

(assert (=> b!522368 (= tp!163030 b_and!51247)))

(declare-fun b_free!13755 () Bool)

(declare-fun b_next!13771 () Bool)

(assert (=> b!522368 (= b_free!13755 (not b_next!13771))))

(declare-fun tp!163031 () Bool)

(declare-fun b_and!51249 () Bool)

(assert (=> b!522368 (= tp!163031 b_and!51249)))

(declare-fun e!313397 () Bool)

(assert (=> b!522368 (= e!313397 (and tp!163030 tp!163031))))

(declare-fun tp!163029 () Bool)

(declare-fun e!313398 () Bool)

(declare-fun b!522367 () Bool)

(assert (=> b!522367 (= e!313398 (and tp!163029 (inv!6116 (tag!1142 (h!10254 (t!73453 (t!73453 rules!1345))))) (inv!6119 (transformation!880 (h!10254 (t!73453 (t!73453 rules!1345))))) e!313397))))

(declare-fun b!522366 () Bool)

(declare-fun e!313399 () Bool)

(declare-fun tp!163032 () Bool)

(assert (=> b!522366 (= e!313399 (and e!313398 tp!163032))))

(assert (=> b!522014 (= tp!162717 e!313399)))

(assert (= b!522367 b!522368))

(assert (= b!522366 b!522367))

(assert (= (and b!522014 ((_ is Cons!4853) (t!73453 (t!73453 rules!1345)))) b!522366))

(declare-fun m!768584 () Bool)

(assert (=> b!522367 m!768584))

(declare-fun m!768586 () Bool)

(assert (=> b!522367 m!768586))

(declare-fun b!522369 () Bool)

(declare-fun e!313401 () Bool)

(declare-fun tp!163033 () Bool)

(declare-fun tp!163034 () Bool)

(assert (=> b!522369 (= e!313401 (and tp!163033 tp!163034))))

(assert (=> b!522100 (= tp!162833 e!313401)))

(assert (= (and b!522100 ((_ is Cons!4847) (exprs!643 setElem!2149))) b!522369))

(declare-fun b!522370 () Bool)

(declare-fun e!313402 () Bool)

(declare-fun tp!163035 () Bool)

(declare-fun tp!163036 () Bool)

(assert (=> b!522370 (= e!313402 (and tp!163035 tp!163036))))

(assert (=> b!522103 (= tp!162838 e!313402)))

(assert (= (and b!522103 ((_ is Cons!4847) (exprs!643 setElem!2150))) b!522370))

(declare-fun b!522371 () Bool)

(declare-fun e!313403 () Bool)

(declare-fun tp!163037 () Bool)

(declare-fun tp!163038 () Bool)

(assert (=> b!522371 (= e!313403 (and tp!163037 tp!163038))))

(assert (=> b!522105 (= tp!162840 e!313403)))

(assert (= (and b!522105 ((_ is Cons!4847) (exprs!643 (_2!3201 (_1!3202 (h!10249 (minValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))))))) b!522371))

(declare-fun b!522372 () Bool)

(declare-fun e!313405 () Bool)

(declare-fun setRes!2182 () Bool)

(declare-fun tp!163041 () Bool)

(assert (=> b!522372 (= e!313405 (and setRes!2182 tp!163041))))

(declare-fun condSetEmpty!2182 () Bool)

(assert (=> b!522372 (= condSetEmpty!2182 (= (_1!3205 (_1!3206 (h!10252 (t!73451 mapValue!2133)))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2182 () Bool)

(assert (=> setIsEmpty!2182 setRes!2182))

(declare-fun e!313404 () Bool)

(declare-fun tp!163039 () Bool)

(declare-fun setNonEmpty!2182 () Bool)

(declare-fun setElem!2182 () Context!286)

(assert (=> setNonEmpty!2182 (= setRes!2182 (and tp!163039 (inv!6126 setElem!2182) e!313404))))

(declare-fun setRest!2182 () (InoxSet Context!286))

(assert (=> setNonEmpty!2182 (= (_1!3205 (_1!3206 (h!10252 (t!73451 mapValue!2133)))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2182 true) setRest!2182))))

(assert (=> b!522004 (= tp!162705 e!313405)))

(declare-fun b!522373 () Bool)

(declare-fun tp!163040 () Bool)

(assert (=> b!522373 (= e!313404 tp!163040)))

(assert (= (and b!522372 condSetEmpty!2182) setIsEmpty!2182))

(assert (= (and b!522372 (not condSetEmpty!2182)) setNonEmpty!2182))

(assert (= setNonEmpty!2182 b!522373))

(assert (= (and b!522004 ((_ is Cons!4851) (t!73451 mapValue!2133))) b!522372))

(declare-fun m!768588 () Bool)

(assert (=> setNonEmpty!2182 m!768588))

(declare-fun condSetEmpty!2183 () Bool)

(assert (=> setNonEmpty!2127 (= condSetEmpty!2183 (= setRest!2127 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2183 () Bool)

(assert (=> setNonEmpty!2127 (= tp!162703 setRes!2183)))

(declare-fun setIsEmpty!2183 () Bool)

(assert (=> setIsEmpty!2183 setRes!2183))

(declare-fun setNonEmpty!2183 () Bool)

(declare-fun e!313406 () Bool)

(declare-fun tp!163043 () Bool)

(declare-fun setElem!2183 () Context!286)

(assert (=> setNonEmpty!2183 (= setRes!2183 (and tp!163043 (inv!6126 setElem!2183) e!313406))))

(declare-fun setRest!2183 () (InoxSet Context!286))

(assert (=> setNonEmpty!2183 (= setRest!2127 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2183 true) setRest!2183))))

(declare-fun b!522374 () Bool)

(declare-fun tp!163042 () Bool)

(assert (=> b!522374 (= e!313406 tp!163042)))

(assert (= (and setNonEmpty!2127 condSetEmpty!2183) setIsEmpty!2183))

(assert (= (and setNonEmpty!2127 (not condSetEmpty!2183)) setNonEmpty!2183))

(assert (= setNonEmpty!2183 b!522374))

(declare-fun m!768590 () Bool)

(assert (=> setNonEmpty!2183 m!768590))

(declare-fun b!522375 () Bool)

(declare-fun e!313408 () Bool)

(declare-fun setRes!2184 () Bool)

(declare-fun tp!163046 () Bool)

(assert (=> b!522375 (= e!313408 (and setRes!2184 tp!163046))))

(declare-fun condSetEmpty!2184 () Bool)

(assert (=> b!522375 (= condSetEmpty!2184 (= (_1!3205 (_1!3206 (h!10252 (t!73451 (minValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56)))))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2184 () Bool)

(assert (=> setIsEmpty!2184 setRes!2184))

(declare-fun setNonEmpty!2184 () Bool)

(declare-fun e!313407 () Bool)

(declare-fun setElem!2184 () Context!286)

(declare-fun tp!163044 () Bool)

(assert (=> setNonEmpty!2184 (= setRes!2184 (and tp!163044 (inv!6126 setElem!2184) e!313407))))

(declare-fun setRest!2184 () (InoxSet Context!286))

(assert (=> setNonEmpty!2184 (= (_1!3205 (_1!3206 (h!10252 (t!73451 (minValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2184 true) setRest!2184))))

(assert (=> b!522098 (= tp!162832 e!313408)))

(declare-fun b!522376 () Bool)

(declare-fun tp!163045 () Bool)

(assert (=> b!522376 (= e!313407 tp!163045)))

(assert (= (and b!522375 condSetEmpty!2184) setIsEmpty!2184))

(assert (= (and b!522375 (not condSetEmpty!2184)) setNonEmpty!2184))

(assert (= setNonEmpty!2184 b!522376))

(assert (= (and b!522098 ((_ is Cons!4851) (t!73451 (minValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))))) b!522375))

(declare-fun m!768592 () Bool)

(assert (=> setNonEmpty!2184 m!768592))

(declare-fun condSetEmpty!2185 () Bool)

(assert (=> setNonEmpty!2141 (= condSetEmpty!2185 (= setRest!2142 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2185 () Bool)

(assert (=> setNonEmpty!2141 (= tp!162801 setRes!2185)))

(declare-fun setIsEmpty!2185 () Bool)

(assert (=> setIsEmpty!2185 setRes!2185))

(declare-fun tp!163048 () Bool)

(declare-fun e!313409 () Bool)

(declare-fun setElem!2185 () Context!286)

(declare-fun setNonEmpty!2185 () Bool)

(assert (=> setNonEmpty!2185 (= setRes!2185 (and tp!163048 (inv!6126 setElem!2185) e!313409))))

(declare-fun setRest!2185 () (InoxSet Context!286))

(assert (=> setNonEmpty!2185 (= setRest!2142 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2185 true) setRest!2185))))

(declare-fun b!522377 () Bool)

(declare-fun tp!163047 () Bool)

(assert (=> b!522377 (= e!313409 tp!163047)))

(assert (= (and setNonEmpty!2141 condSetEmpty!2185) setIsEmpty!2185))

(assert (= (and setNonEmpty!2141 (not condSetEmpty!2185)) setNonEmpty!2185))

(assert (= setNonEmpty!2185 b!522377))

(declare-fun m!768594 () Bool)

(assert (=> setNonEmpty!2185 m!768594))

(declare-fun b!522378 () Bool)

(declare-fun e!313410 () Bool)

(declare-fun tp!163049 () Bool)

(declare-fun tp!163050 () Bool)

(assert (=> b!522378 (= e!313410 (and tp!163049 tp!163050))))

(assert (=> b!522061 (= tp!162771 e!313410)))

(assert (= (and b!522061 ((_ is Cons!4847) (exprs!643 (_1!3203 (_1!3204 (h!10250 mapValue!2135)))))) b!522378))

(declare-fun b!522379 () Bool)

(declare-fun e!313411 () Bool)

(declare-fun tp!163051 () Bool)

(declare-fun tp!163052 () Bool)

(assert (=> b!522379 (= e!313411 (and tp!163051 tp!163052))))

(assert (=> b!522102 (= tp!162835 e!313411)))

(assert (= (and b!522102 ((_ is Cons!4847) (exprs!643 (_2!3201 (_1!3202 (h!10249 (zeroValue!808 (v!15935 (underlying!1281 (v!15936 (underlying!1282 (cache!910 cacheDown!462)))))))))))) b!522379))

(declare-fun condSetEmpty!2186 () Bool)

(assert (=> setNonEmpty!2148 (= condSetEmpty!2186 (= setRest!2148 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2186 () Bool)

(assert (=> setNonEmpty!2148 (= tp!162830 setRes!2186)))

(declare-fun setIsEmpty!2186 () Bool)

(assert (=> setIsEmpty!2186 setRes!2186))

(declare-fun tp!163054 () Bool)

(declare-fun e!313412 () Bool)

(declare-fun setNonEmpty!2186 () Bool)

(declare-fun setElem!2186 () Context!286)

(assert (=> setNonEmpty!2186 (= setRes!2186 (and tp!163054 (inv!6126 setElem!2186) e!313412))))

(declare-fun setRest!2186 () (InoxSet Context!286))

(assert (=> setNonEmpty!2186 (= setRest!2148 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2186 true) setRest!2186))))

(declare-fun b!522380 () Bool)

(declare-fun tp!163053 () Bool)

(assert (=> b!522380 (= e!313412 tp!163053)))

(assert (= (and setNonEmpty!2148 condSetEmpty!2186) setIsEmpty!2186))

(assert (= (and setNonEmpty!2148 (not condSetEmpty!2186)) setNonEmpty!2186))

(assert (= setNonEmpty!2186 b!522380))

(declare-fun m!768596 () Bool)

(assert (=> setNonEmpty!2186 m!768596))

(declare-fun b!522383 () Bool)

(declare-fun e!313413 () Bool)

(declare-fun tp!163059 () Bool)

(assert (=> b!522383 (= e!313413 tp!163059)))

(declare-fun b!522382 () Bool)

(declare-fun tp!163055 () Bool)

(declare-fun tp!163058 () Bool)

(assert (=> b!522382 (= e!313413 (and tp!163055 tp!163058))))

(assert (=> b!522077 (= tp!162805 e!313413)))

(declare-fun b!522384 () Bool)

(declare-fun tp!163057 () Bool)

(declare-fun tp!163056 () Bool)

(assert (=> b!522384 (= e!313413 (and tp!163057 tp!163056))))

(declare-fun b!522381 () Bool)

(assert (=> b!522381 (= e!313413 tp_is_empty!2789)))

(assert (= (and b!522077 ((_ is ElementMatch!1205) (_1!3201 (_1!3202 (h!10249 mapDefault!2144))))) b!522381))

(assert (= (and b!522077 ((_ is Concat!2109) (_1!3201 (_1!3202 (h!10249 mapDefault!2144))))) b!522382))

(assert (= (and b!522077 ((_ is Star!1205) (_1!3201 (_1!3202 (h!10249 mapDefault!2144))))) b!522383))

(assert (= (and b!522077 ((_ is Union!1205) (_1!3201 (_1!3202 (h!10249 mapDefault!2144))))) b!522384))

(declare-fun e!313414 () Bool)

(assert (=> b!522077 (= tp!162800 e!313414)))

(declare-fun setIsEmpty!2187 () Bool)

(declare-fun setRes!2187 () Bool)

(assert (=> setIsEmpty!2187 setRes!2187))

(declare-fun b!522385 () Bool)

(declare-fun e!313416 () Bool)

(declare-fun tp!163060 () Bool)

(assert (=> b!522385 (= e!313416 tp!163060)))

(declare-fun tp!163063 () Bool)

(declare-fun e!313415 () Bool)

(declare-fun tp!163061 () Bool)

(declare-fun b!522386 () Bool)

(assert (=> b!522386 (= e!313414 (and tp!163063 (inv!6126 (_2!3201 (_1!3202 (h!10249 (t!73448 mapDefault!2144))))) e!313415 tp_is_empty!2789 setRes!2187 tp!163061))))

(declare-fun condSetEmpty!2187 () Bool)

(assert (=> b!522386 (= condSetEmpty!2187 (= (_2!3202 (h!10249 (t!73448 mapDefault!2144))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522387 () Bool)

(declare-fun tp!163062 () Bool)

(assert (=> b!522387 (= e!313415 tp!163062)))

(declare-fun setElem!2187 () Context!286)

(declare-fun tp!163064 () Bool)

(declare-fun setNonEmpty!2187 () Bool)

(assert (=> setNonEmpty!2187 (= setRes!2187 (and tp!163064 (inv!6126 setElem!2187) e!313416))))

(declare-fun setRest!2187 () (InoxSet Context!286))

(assert (=> setNonEmpty!2187 (= (_2!3202 (h!10249 (t!73448 mapDefault!2144))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2187 true) setRest!2187))))

(assert (= b!522386 b!522387))

(assert (= (and b!522386 condSetEmpty!2187) setIsEmpty!2187))

(assert (= (and b!522386 (not condSetEmpty!2187)) setNonEmpty!2187))

(assert (= setNonEmpty!2187 b!522385))

(assert (= (and b!522077 ((_ is Cons!4848) (t!73448 mapDefault!2144))) b!522386))

(declare-fun m!768598 () Bool)

(assert (=> b!522386 m!768598))

(declare-fun m!768600 () Bool)

(assert (=> setNonEmpty!2187 m!768600))

(declare-fun b!522390 () Bool)

(declare-fun e!313417 () Bool)

(declare-fun tp!163069 () Bool)

(assert (=> b!522390 (= e!313417 tp!163069)))

(declare-fun b!522389 () Bool)

(declare-fun tp!163065 () Bool)

(declare-fun tp!163068 () Bool)

(assert (=> b!522389 (= e!313417 (and tp!163065 tp!163068))))

(assert (=> b!522030 (= tp!162731 e!313417)))

(declare-fun b!522391 () Bool)

(declare-fun tp!163067 () Bool)

(declare-fun tp!163066 () Bool)

(assert (=> b!522391 (= e!313417 (and tp!163067 tp!163066))))

(declare-fun b!522388 () Bool)

(assert (=> b!522388 (= e!313417 tp_is_empty!2789)))

(assert (= (and b!522030 ((_ is ElementMatch!1205) (regOne!2922 (regex!880 (h!10254 rules!1345))))) b!522388))

(assert (= (and b!522030 ((_ is Concat!2109) (regOne!2922 (regex!880 (h!10254 rules!1345))))) b!522389))

(assert (= (and b!522030 ((_ is Star!1205) (regOne!2922 (regex!880 (h!10254 rules!1345))))) b!522390))

(assert (= (and b!522030 ((_ is Union!1205) (regOne!2922 (regex!880 (h!10254 rules!1345))))) b!522391))

(declare-fun b!522394 () Bool)

(declare-fun e!313418 () Bool)

(declare-fun tp!163074 () Bool)

(assert (=> b!522394 (= e!313418 tp!163074)))

(declare-fun b!522393 () Bool)

(declare-fun tp!163070 () Bool)

(declare-fun tp!163073 () Bool)

(assert (=> b!522393 (= e!313418 (and tp!163070 tp!163073))))

(assert (=> b!522030 (= tp!162734 e!313418)))

(declare-fun b!522395 () Bool)

(declare-fun tp!163072 () Bool)

(declare-fun tp!163071 () Bool)

(assert (=> b!522395 (= e!313418 (and tp!163072 tp!163071))))

(declare-fun b!522392 () Bool)

(assert (=> b!522392 (= e!313418 tp_is_empty!2789)))

(assert (= (and b!522030 ((_ is ElementMatch!1205) (regTwo!2922 (regex!880 (h!10254 rules!1345))))) b!522392))

(assert (= (and b!522030 ((_ is Concat!2109) (regTwo!2922 (regex!880 (h!10254 rules!1345))))) b!522393))

(assert (= (and b!522030 ((_ is Star!1205) (regTwo!2922 (regex!880 (h!10254 rules!1345))))) b!522394))

(assert (= (and b!522030 ((_ is Union!1205) (regTwo!2922 (regex!880 (h!10254 rules!1345))))) b!522395))

(declare-fun b!522398 () Bool)

(declare-fun e!313419 () Bool)

(declare-fun tp!163079 () Bool)

(assert (=> b!522398 (= e!313419 tp!163079)))

(declare-fun b!522397 () Bool)

(declare-fun tp!163075 () Bool)

(declare-fun tp!163078 () Bool)

(assert (=> b!522397 (= e!313419 (and tp!163075 tp!163078))))

(assert (=> b!522032 (= tp!162733 e!313419)))

(declare-fun b!522399 () Bool)

(declare-fun tp!163077 () Bool)

(declare-fun tp!163076 () Bool)

(assert (=> b!522399 (= e!313419 (and tp!163077 tp!163076))))

(declare-fun b!522396 () Bool)

(assert (=> b!522396 (= e!313419 tp_is_empty!2789)))

(assert (= (and b!522032 ((_ is ElementMatch!1205) (regOne!2923 (regex!880 (h!10254 rules!1345))))) b!522396))

(assert (= (and b!522032 ((_ is Concat!2109) (regOne!2923 (regex!880 (h!10254 rules!1345))))) b!522397))

(assert (= (and b!522032 ((_ is Star!1205) (regOne!2923 (regex!880 (h!10254 rules!1345))))) b!522398))

(assert (= (and b!522032 ((_ is Union!1205) (regOne!2923 (regex!880 (h!10254 rules!1345))))) b!522399))

(declare-fun b!522402 () Bool)

(declare-fun e!313420 () Bool)

(declare-fun tp!163084 () Bool)

(assert (=> b!522402 (= e!313420 tp!163084)))

(declare-fun b!522401 () Bool)

(declare-fun tp!163080 () Bool)

(declare-fun tp!163083 () Bool)

(assert (=> b!522401 (= e!313420 (and tp!163080 tp!163083))))

(assert (=> b!522032 (= tp!162732 e!313420)))

(declare-fun b!522403 () Bool)

(declare-fun tp!163082 () Bool)

(declare-fun tp!163081 () Bool)

(assert (=> b!522403 (= e!313420 (and tp!163082 tp!163081))))

(declare-fun b!522400 () Bool)

(assert (=> b!522400 (= e!313420 tp_is_empty!2789)))

(assert (= (and b!522032 ((_ is ElementMatch!1205) (regTwo!2923 (regex!880 (h!10254 rules!1345))))) b!522400))

(assert (= (and b!522032 ((_ is Concat!2109) (regTwo!2923 (regex!880 (h!10254 rules!1345))))) b!522401))

(assert (= (and b!522032 ((_ is Star!1205) (regTwo!2923 (regex!880 (h!10254 rules!1345))))) b!522402))

(assert (= (and b!522032 ((_ is Union!1205) (regTwo!2923 (regex!880 (h!10254 rules!1345))))) b!522403))

(declare-fun b!522404 () Bool)

(declare-fun e!313421 () Bool)

(declare-fun tp!163085 () Bool)

(declare-fun tp!163086 () Bool)

(assert (=> b!522404 (= e!313421 (and tp!163085 tp!163086))))

(assert (=> b!522079 (= tp!162799 e!313421)))

(assert (= (and b!522079 ((_ is Cons!4847) (exprs!643 setElem!2141))) b!522404))

(declare-fun condSetEmpty!2188 () Bool)

(assert (=> setNonEmpty!2123 (= condSetEmpty!2188 (= setRest!2124 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2188 () Bool)

(assert (=> setNonEmpty!2123 (= tp!162690 setRes!2188)))

(declare-fun setIsEmpty!2188 () Bool)

(assert (=> setIsEmpty!2188 setRes!2188))

(declare-fun e!313422 () Bool)

(declare-fun setElem!2188 () Context!286)

(declare-fun setNonEmpty!2188 () Bool)

(declare-fun tp!163088 () Bool)

(assert (=> setNonEmpty!2188 (= setRes!2188 (and tp!163088 (inv!6126 setElem!2188) e!313422))))

(declare-fun setRest!2188 () (InoxSet Context!286))

(assert (=> setNonEmpty!2188 (= setRest!2124 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2188 true) setRest!2188))))

(declare-fun b!522405 () Bool)

(declare-fun tp!163087 () Bool)

(assert (=> b!522405 (= e!313422 tp!163087)))

(assert (= (and setNonEmpty!2123 condSetEmpty!2188) setIsEmpty!2188))

(assert (= (and setNonEmpty!2123 (not condSetEmpty!2188)) setNonEmpty!2188))

(assert (= setNonEmpty!2188 b!522405))

(declare-fun m!768602 () Bool)

(assert (=> setNonEmpty!2188 m!768602))

(declare-fun b!522406 () Bool)

(declare-fun e!313424 () Bool)

(declare-fun setRes!2189 () Bool)

(declare-fun tp!163091 () Bool)

(assert (=> b!522406 (= e!313424 (and setRes!2189 tp!163091))))

(declare-fun condSetEmpty!2189 () Bool)

(assert (=> b!522406 (= condSetEmpty!2189 (= (_1!3205 (_1!3206 (h!10252 (t!73451 (zeroValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56)))))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2189 () Bool)

(assert (=> setIsEmpty!2189 setRes!2189))

(declare-fun e!313423 () Bool)

(declare-fun setNonEmpty!2189 () Bool)

(declare-fun tp!163089 () Bool)

(declare-fun setElem!2189 () Context!286)

(assert (=> setNonEmpty!2189 (= setRes!2189 (and tp!163089 (inv!6126 setElem!2189) e!313423))))

(declare-fun setRest!2189 () (InoxSet Context!286))

(assert (=> setNonEmpty!2189 (= (_1!3205 (_1!3206 (h!10252 (t!73451 (zeroValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2189 true) setRest!2189))))

(assert (=> b!522096 (= tp!162829 e!313424)))

(declare-fun b!522407 () Bool)

(declare-fun tp!163090 () Bool)

(assert (=> b!522407 (= e!313423 tp!163090)))

(assert (= (and b!522406 condSetEmpty!2189) setIsEmpty!2189))

(assert (= (and b!522406 (not condSetEmpty!2189)) setNonEmpty!2189))

(assert (= setNonEmpty!2189 b!522407))

(assert (= (and b!522096 ((_ is Cons!4851) (t!73451 (zeroValue!810 (v!15939 (underlying!1285 (v!15940 (underlying!1286 (cache!912 cacheFurthestNullable!56))))))))) b!522406))

(declare-fun m!768604 () Bool)

(assert (=> setNonEmpty!2189 m!768604))

(declare-fun b!522408 () Bool)

(declare-fun e!313425 () Bool)

(declare-fun tp!163092 () Bool)

(declare-fun tp!163093 () Bool)

(assert (=> b!522408 (= e!313425 (and tp!163092 tp!163093))))

(assert (=> b!522054 (= tp!162765 e!313425)))

(assert (= (and b!522054 ((_ is Cons!4847) (exprs!643 setElem!2134))) b!522408))

(declare-fun b!522409 () Bool)

(declare-fun e!313426 () Bool)

(declare-fun tp!163094 () Bool)

(declare-fun tp!163095 () Bool)

(assert (=> b!522409 (= e!313426 (and tp!163094 tp!163095))))

(assert (=> b!522037 (= tp!162741 e!313426)))

(assert (= (and b!522037 ((_ is Cons!4847) (exprs!643 setElem!2129))) b!522409))

(declare-fun condSetEmpty!2190 () Bool)

(assert (=> setNonEmpty!2147 (= condSetEmpty!2190 (= setRest!2147 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2190 () Bool)

(assert (=> setNonEmpty!2147 (= tp!162827 setRes!2190)))

(declare-fun setIsEmpty!2190 () Bool)

(assert (=> setIsEmpty!2190 setRes!2190))

(declare-fun setNonEmpty!2190 () Bool)

(declare-fun setElem!2190 () Context!286)

(declare-fun e!313427 () Bool)

(declare-fun tp!163097 () Bool)

(assert (=> setNonEmpty!2190 (= setRes!2190 (and tp!163097 (inv!6126 setElem!2190) e!313427))))

(declare-fun setRest!2190 () (InoxSet Context!286))

(assert (=> setNonEmpty!2190 (= setRest!2147 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2190 true) setRest!2190))))

(declare-fun b!522410 () Bool)

(declare-fun tp!163096 () Bool)

(assert (=> b!522410 (= e!313427 tp!163096)))

(assert (= (and setNonEmpty!2147 condSetEmpty!2190) setIsEmpty!2190))

(assert (= (and setNonEmpty!2147 (not condSetEmpty!2190)) setNonEmpty!2190))

(assert (= setNonEmpty!2190 b!522410))

(declare-fun m!768606 () Bool)

(assert (=> setNonEmpty!2190 m!768606))

(declare-fun condSetEmpty!2191 () Bool)

(assert (=> setNonEmpty!2142 (= condSetEmpty!2191 (= setRest!2141 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2191 () Bool)

(assert (=> setNonEmpty!2142 (= tp!162797 setRes!2191)))

(declare-fun setIsEmpty!2191 () Bool)

(assert (=> setIsEmpty!2191 setRes!2191))

(declare-fun tp!163099 () Bool)

(declare-fun e!313428 () Bool)

(declare-fun setNonEmpty!2191 () Bool)

(declare-fun setElem!2191 () Context!286)

(assert (=> setNonEmpty!2191 (= setRes!2191 (and tp!163099 (inv!6126 setElem!2191) e!313428))))

(declare-fun setRest!2191 () (InoxSet Context!286))

(assert (=> setNonEmpty!2191 (= setRest!2141 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2191 true) setRest!2191))))

(declare-fun b!522411 () Bool)

(declare-fun tp!163098 () Bool)

(assert (=> b!522411 (= e!313428 tp!163098)))

(assert (= (and setNonEmpty!2142 condSetEmpty!2191) setIsEmpty!2191))

(assert (= (and setNonEmpty!2142 (not condSetEmpty!2191)) setNonEmpty!2191))

(assert (= setNonEmpty!2191 b!522411))

(declare-fun m!768608 () Bool)

(assert (=> setNonEmpty!2191 m!768608))

(declare-fun b!522412 () Bool)

(declare-fun e!313429 () Bool)

(declare-fun tp!163100 () Bool)

(declare-fun tp!163101 () Bool)

(assert (=> b!522412 (= e!313429 (and tp!163100 tp!163101))))

(assert (=> b!522018 (= tp!162719 e!313429)))

(assert (= (and b!522018 ((_ is Cons!4847) (exprs!643 setElem!2128))) b!522412))

(declare-fun b!522413 () Bool)

(declare-fun e!313430 () Bool)

(declare-fun tp!163102 () Bool)

(declare-fun tp!163103 () Bool)

(assert (=> b!522413 (= e!313430 (and tp!163102 tp!163103))))

(assert (=> b!522081 (= tp!162804 e!313430)))

(assert (= (and b!522081 ((_ is Cons!4847) (exprs!643 setElem!2142))) b!522413))

(declare-fun b!522414 () Bool)

(declare-fun e!313431 () Bool)

(declare-fun tp!163104 () Bool)

(declare-fun tp!163105 () Bool)

(assert (=> b!522414 (= e!313431 (and tp!163104 tp!163105))))

(assert (=> b!521971 (= tp!162665 e!313431)))

(assert (= (and b!521971 ((_ is Cons!4847) (exprs!643 setElem!2118))) b!522414))

(declare-fun b!522415 () Bool)

(declare-fun e!313433 () Bool)

(declare-fun setRes!2192 () Bool)

(declare-fun tp!163108 () Bool)

(assert (=> b!522415 (= e!313433 (and setRes!2192 tp!163108))))

(declare-fun condSetEmpty!2192 () Bool)

(assert (=> b!522415 (= condSetEmpty!2192 (= (_1!3205 (_1!3206 (h!10252 (t!73451 mapDefault!2138)))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun setIsEmpty!2192 () Bool)

(assert (=> setIsEmpty!2192 setRes!2192))

(declare-fun setElem!2192 () Context!286)

(declare-fun e!313432 () Bool)

(declare-fun tp!163106 () Bool)

(declare-fun setNonEmpty!2192 () Bool)

(assert (=> setNonEmpty!2192 (= setRes!2192 (and tp!163106 (inv!6126 setElem!2192) e!313432))))

(declare-fun setRest!2192 () (InoxSet Context!286))

(assert (=> setNonEmpty!2192 (= (_1!3205 (_1!3206 (h!10252 (t!73451 mapDefault!2138)))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2192 true) setRest!2192))))

(assert (=> b!521995 (= tp!162695 e!313433)))

(declare-fun b!522416 () Bool)

(declare-fun tp!163107 () Bool)

(assert (=> b!522416 (= e!313432 tp!163107)))

(assert (= (and b!522415 condSetEmpty!2192) setIsEmpty!2192))

(assert (= (and b!522415 (not condSetEmpty!2192)) setNonEmpty!2192))

(assert (= setNonEmpty!2192 b!522416))

(assert (= (and b!521995 ((_ is Cons!4851) (t!73451 mapDefault!2138))) b!522415))

(declare-fun m!768610 () Bool)

(assert (=> setNonEmpty!2192 m!768610))

(declare-fun e!313435 () Bool)

(declare-fun tp!163109 () Bool)

(declare-fun b!522417 () Bool)

(declare-fun tp!163110 () Bool)

(assert (=> b!522417 (= e!313435 (and (inv!6120 (left!4179 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) tp!163109 (inv!6120 (right!4509 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) tp!163110))))

(declare-fun b!522419 () Bool)

(declare-fun e!313434 () Bool)

(declare-fun tp!163111 () Bool)

(assert (=> b!522419 (= e!313434 tp!163111)))

(declare-fun b!522418 () Bool)

(assert (=> b!522418 (= e!313435 (and (inv!6127 (xs!4218 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) e!313434))))

(assert (=> b!522033 (= tp!162736 (and (inv!6120 (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) e!313435))))

(assert (= (and b!522033 ((_ is Node!1583) (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) b!522417))

(assert (= b!522418 b!522419))

(assert (= (and b!522033 ((_ is Leaf!2526) (left!4179 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) b!522418))

(declare-fun m!768612 () Bool)

(assert (=> b!522417 m!768612))

(declare-fun m!768614 () Bool)

(assert (=> b!522417 m!768614))

(declare-fun m!768616 () Bool)

(assert (=> b!522418 m!768616))

(assert (=> b!522033 m!768221))

(declare-fun e!313437 () Bool)

(declare-fun b!522420 () Bool)

(declare-fun tp!163112 () Bool)

(declare-fun tp!163113 () Bool)

(assert (=> b!522420 (= e!313437 (and (inv!6120 (left!4179 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) tp!163112 (inv!6120 (right!4509 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) tp!163113))))

(declare-fun b!522422 () Bool)

(declare-fun e!313436 () Bool)

(declare-fun tp!163114 () Bool)

(assert (=> b!522422 (= e!313436 tp!163114)))

(declare-fun b!522421 () Bool)

(assert (=> b!522421 (= e!313437 (and (inv!6127 (xs!4218 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) e!313436))))

(assert (=> b!522033 (= tp!162737 (and (inv!6120 (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))) e!313437))))

(assert (= (and b!522033 ((_ is Node!1583) (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) b!522420))

(assert (= b!522421 b!522422))

(assert (= (and b!522033 ((_ is Leaf!2526) (right!4509 (c!100730 (totalInput!1731 cacheFurthestNullable!56))))) b!522421))

(declare-fun m!768618 () Bool)

(assert (=> b!522420 m!768618))

(declare-fun m!768620 () Bool)

(assert (=> b!522420 m!768620))

(declare-fun m!768622 () Bool)

(assert (=> b!522421 m!768622))

(assert (=> b!522033 m!768223))

(declare-fun b!522423 () Bool)

(declare-fun e!313438 () Bool)

(declare-fun tp!163115 () Bool)

(declare-fun tp!163116 () Bool)

(assert (=> b!522423 (= e!313438 (and tp!163115 tp!163116))))

(assert (=> b!522090 (= tp!162817 e!313438)))

(assert (= (and b!522090 ((_ is Cons!4847) (exprs!643 setElem!2145))) b!522423))

(declare-fun b!522424 () Bool)

(declare-fun e!313439 () Bool)

(declare-fun tp!163117 () Bool)

(assert (=> b!522424 (= e!313439 (and tp_is_empty!2789 tp!163117))))

(assert (=> b!522035 (= tp!162738 e!313439)))

(assert (= (and b!522035 ((_ is Cons!4850) (innerList!1641 (xs!4218 (c!100730 (totalInput!1731 cacheFurthestNullable!56)))))) b!522424))

(declare-fun b!522425 () Bool)

(declare-fun e!313440 () Bool)

(declare-fun tp!163118 () Bool)

(declare-fun tp!163119 () Bool)

(assert (=> b!522425 (= e!313440 (and tp!163118 tp!163119))))

(assert (=> b!522093 (= tp!162822 e!313440)))

(assert (= (and b!522093 ((_ is Cons!4847) (exprs!643 setElem!2146))) b!522425))

(declare-fun condSetEmpty!2193 () Bool)

(assert (=> setNonEmpty!2129 (= condSetEmpty!2193 (= setRest!2129 ((as const (Array Context!286 Bool)) false)))))

(declare-fun setRes!2193 () Bool)

(assert (=> setNonEmpty!2129 (= tp!162739 setRes!2193)))

(declare-fun setIsEmpty!2193 () Bool)

(assert (=> setIsEmpty!2193 setRes!2193))

(declare-fun tp!163121 () Bool)

(declare-fun e!313441 () Bool)

(declare-fun setElem!2193 () Context!286)

(declare-fun setNonEmpty!2193 () Bool)

(assert (=> setNonEmpty!2193 (= setRes!2193 (and tp!163121 (inv!6126 setElem!2193) e!313441))))

(declare-fun setRest!2193 () (InoxSet Context!286))

(assert (=> setNonEmpty!2193 (= setRest!2129 ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2193 true) setRest!2193))))

(declare-fun b!522426 () Bool)

(declare-fun tp!163120 () Bool)

(assert (=> b!522426 (= e!313441 tp!163120)))

(assert (= (and setNonEmpty!2129 condSetEmpty!2193) setIsEmpty!2193))

(assert (= (and setNonEmpty!2129 (not condSetEmpty!2193)) setNonEmpty!2193))

(assert (= setNonEmpty!2193 b!522426))

(declare-fun m!768624 () Bool)

(assert (=> setNonEmpty!2193 m!768624))

(declare-fun e!313442 () Bool)

(declare-fun tp!163125 () Bool)

(declare-fun setRes!2194 () Bool)

(declare-fun b!522427 () Bool)

(declare-fun e!313444 () Bool)

(assert (=> b!522427 (= e!313444 (and (inv!6126 (_1!3203 (_1!3204 (h!10250 (t!73449 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))))))) e!313442 tp_is_empty!2789 setRes!2194 tp!163125))))

(declare-fun condSetEmpty!2194 () Bool)

(assert (=> b!522427 (= condSetEmpty!2194 (= (_2!3204 (h!10250 (t!73449 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))))) ((as const (Array Context!286 Bool)) false)))))

(declare-fun b!522428 () Bool)

(declare-fun e!313443 () Bool)

(declare-fun tp!163124 () Bool)

(assert (=> b!522428 (= e!313443 tp!163124)))

(declare-fun setIsEmpty!2194 () Bool)

(assert (=> setIsEmpty!2194 setRes!2194))

(declare-fun setNonEmpty!2194 () Bool)

(declare-fun tp!163122 () Bool)

(declare-fun setElem!2194 () Context!286)

(assert (=> setNonEmpty!2194 (= setRes!2194 (and tp!163122 (inv!6126 setElem!2194) e!313443))))

(declare-fun setRest!2194 () (InoxSet Context!286))

(assert (=> setNonEmpty!2194 (= (_2!3204 (h!10250 (t!73449 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!286 Bool)) false) setElem!2194 true) setRest!2194))))

(assert (=> b!521967 (= tp!162662 e!313444)))

(declare-fun b!522429 () Bool)

(declare-fun tp!163123 () Bool)

(assert (=> b!522429 (= e!313442 tp!163123)))

(assert (= b!522427 b!522429))

(assert (= (and b!522427 condSetEmpty!2194) setIsEmpty!2194))

(assert (= (and b!522427 (not condSetEmpty!2194)) setNonEmpty!2194))

(assert (= setNonEmpty!2194 b!522428))

(assert (= (and b!521967 ((_ is Cons!4849) (t!73449 (zeroValue!809 (v!15937 (underlying!1283 (v!15938 (underlying!1284 (cache!911 cacheUp!449))))))))) b!522427))

(declare-fun m!768626 () Bool)

(assert (=> b!522427 m!768626))

(declare-fun m!768628 () Bool)

(assert (=> setNonEmpty!2194 m!768628))

(check-sat (not d!186291) (not b!522406) (not setNonEmpty!2163) (not d!186289) (not b!522358) (not b!522302) (not setNonEmpty!2156) (not b!522259) (not b!522344) (not b_next!13751) (not d!186319) (not b!522369) b_and!51235 (not b!522286) (not b!522306) (not b!522267) (not b!522419) (not b!522224) (not b!522410) (not b!522201) (not b!522356) b_and!51241 (not b!522426) (not b!522386) (not b!522291) (not b!522366) (not setNonEmpty!2159) (not b!522375) (not b!522246) (not d!186247) (not b!522254) (not d!186301) (not b!522255) (not b_next!13759) (not b!522330) (not b!522331) (not d!186241) (not b!522153) (not d!186281) (not d!186307) (not b!522137) (not setNonEmpty!2187) (not d!186269) (not b_next!13769) (not b!522289) (not b!522352) (not setNonEmpty!2180) (not b!522128) (not b!522285) (not b!522193) (not b!522277) (not b!522371) (not b!522333) (not b!522423) (not b!522382) (not b!522332) (not b!522190) (not d!186239) (not b!522374) (not b!522296) (not b!522349) (not b!522340) (not b!522279) (not b!522311) (not b!522346) (not b!522362) (not b_next!13753) (not setNonEmpty!2184) (not b!522407) (not d!186303) b_and!51245 (not b!522222) (not setNonEmpty!2175) (not d!186237) b_and!51247 (not setNonEmpty!2176) b_and!51243 (not setNonEmpty!2168) (not b!522273) (not b!522125) (not b!522290) (not b!522414) (not b!522288) (not b!522370) (not b!522271) (not b!522390) (not b!522393) (not setNonEmpty!2160) (not b_next!13763) (not b!522225) (not b!522135) (not b!522213) (not d!186295) (not b_next!13765) tp_is_empty!2789 (not setNonEmpty!2167) (not b!522257) (not b!522399) (not b!522337) (not b!522275) (not b!522301) (not setNonEmpty!2190) (not b!522282) (not b!522421) (not b!522350) (not b!522247) (not b!522353) (not mapNonEmpty!2145) (not b!522220) (not b!522248) (not setNonEmpty!2151) (not setNonEmpty!2169) (not b!522323) (not d!186267) (not b!522156) (not b!522343) (not setNonEmpty!2170) (not b!522401) (not setNonEmpty!2161) (not d!186275) (not setNonEmpty!2181) b_and!51229 (not b!522194) (not b!522127) (not b!522416) (not b!522347) (not d!186257) (not d!186305) (not d!186329) b_and!51249 (not b!522412) (not b!522341) (not b!522284) (not b!522345) (not setNonEmpty!2154) (not b_next!13771) (not b!522415) (not b!522270) (not b!522260) (not b!522336) (not b!522295) (not setNonEmpty!2188) (not setNonEmpty!2182) (not b!522318) (not b!522151) (not b!522294) (not b!522357) (not d!186279) (not d!186285) (not b!522319) (not b!522363) (not b!522280) (not b!522334) (not b!522139) (not b!522238) (not b!522237) (not b!522365) (not b!522258) (not b!522305) (not d!186271) (not b!522403) (not d!186331) (not b!522315) (not setNonEmpty!2185) (not b!522379) b_and!51239 (not b!522404) (not b!522405) (not b!522383) (not setNonEmpty!2194) (not b!522292) (not setNonEmpty!2165) b_and!51233 (not d!186255) (not setNonEmpty!2174) (not b!522329) (not d!186265) (not setNonEmpty!2173) (not b!522313) (not mapNonEmpty!2146) (not b!522171) (not b!522111) b_and!51227 (not b!522377) (not setNonEmpty!2158) (not d!186215) (not b!522389) (not b!522200) b_and!51237 (not b_next!13749) (not b!522307) (not setNonEmpty!2155) (not d!186293) (not b!522427) (not b!522158) (not b!522263) (not b!522230) (not setNonEmpty!2178) (not d!186287) (not b!522234) (not b!522124) (not b!522211) (not d!186251) (not b!522316) (not setNonEmpty!2193) (not b!522283) (not b!522420) (not b_next!13761) (not b!522395) (not b!522129) (not b!522165) (not b!522413) (not setNonEmpty!2191) (not b!522287) (not d!186259) (not b!522402) (not setNonEmpty!2192) (not b!522150) (not setNonEmpty!2179) (not b!522328) (not b!522411) (not b_next!13757) (not b!522354) (not setNonEmpty!2166) (not b!522361) (not b!522126) (not d!186217) (not setNonEmpty!2162) (not b!522428) (not d!186299) (not b!522351) (not b!522394) (not setNonEmpty!2171) b_and!51231 (not b!522314) (not b_next!13755) (not b!522324) (not b!522360) (not b!522424) (not b!522387) (not b!522274) (not b!522228) (not d!186297) (not d!186283) (not b!522367) (not b!522397) (not b!522325) (not b!522378) (not setNonEmpty!2172) (not b!522376) (not b!522312) (not b!522227) (not b!522110) (not b!522262) (not d!186315) (not b!522348) (not mapNonEmpty!2147) (not d!186321) (not b!522256) (not b!522181) (not b!522166) (not d!186233) (not d!186253) (not b!522372) (not b!522320) (not b!522398) (not setNonEmpty!2186) (not b!522310) (not b_next!13767) (not d!186273) (not d!186235) (not b!522304) (not b!522293) (not b!522429) (not b!522226) (not setNonEmpty!2183) (not b!522264) (not b!522425) (not b!522229) (not b!522276) (not setNonEmpty!2189) (not b!522391) (not b!522233) (not b!522253) (not b!522327) (not setNonEmpty!2157) (not b!522417) (not b!522338) (not b!522240) (not b!522268) (not b!522418) (not b!522326) (not setNonEmpty!2164) (not b!522364) (not b!522155) (not b!522409) (not b!522033) (not b!522322) (not b!522278) (not d!186249) (not d!186277) (not b!522422) (not b!522384) (not d!186213) (not b!522339) (not b!522152) (not b!522373) (not b!522317) (not b!522269) (not d!186229) (not b!522380) (not b!522359) (not b!522235) (not setNonEmpty!2177) (not b!522321) (not b!522309) (not b!522308) (not d!186263) (not b!522385) (not b!521981) (not b!522172) (not b!522245) (not b!522266) (not b!522408) (not b!522355))
(check-sat (not b_next!13751) (not b_next!13759) (not b_next!13769) b_and!51243 (not b_next!13763) (not b_next!13765) b_and!51229 b_and!51249 (not b_next!13771) (not b_next!13749) (not b_next!13761) (not b_next!13757) (not b_next!13767) b_and!51241 b_and!51235 (not b_next!13753) b_and!51247 b_and!51245 b_and!51239 b_and!51233 b_and!51227 b_and!51237 b_and!51231 (not b_next!13755))
