; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184634 () Bool)

(assert start!184634)

(declare-fun b!1850125 () Bool)

(declare-fun b_free!51647 () Bool)

(declare-fun b_next!52351 () Bool)

(assert (=> b!1850125 (= b_free!51647 (not b_next!52351))))

(declare-fun tp!523269 () Bool)

(declare-fun b_and!143869 () Bool)

(assert (=> b!1850125 (= tp!523269 b_and!143869)))

(declare-fun b_free!51649 () Bool)

(declare-fun b_next!52353 () Bool)

(assert (=> b!1850125 (= b_free!51649 (not b_next!52353))))

(declare-fun tp!523263 () Bool)

(declare-fun b_and!143871 () Bool)

(assert (=> b!1850125 (= tp!523263 b_and!143871)))

(declare-fun b!1850137 () Bool)

(declare-fun b_free!51651 () Bool)

(declare-fun b_next!52355 () Bool)

(assert (=> b!1850137 (= b_free!51651 (not b_next!52355))))

(declare-fun tp!523272 () Bool)

(declare-fun b_and!143873 () Bool)

(assert (=> b!1850137 (= tp!523272 b_and!143873)))

(declare-fun b!1850136 () Bool)

(declare-fun b_free!51653 () Bool)

(declare-fun b_next!52357 () Bool)

(assert (=> b!1850136 (= b_free!51653 (not b_next!52357))))

(declare-fun tp!523275 () Bool)

(declare-fun b_and!143875 () Bool)

(assert (=> b!1850136 (= tp!523275 b_and!143875)))

(declare-fun b_free!51655 () Bool)

(declare-fun b_next!52359 () Bool)

(assert (=> b!1850136 (= b_free!51655 (not b_next!52359))))

(declare-fun tp!523264 () Bool)

(declare-fun b_and!143877 () Bool)

(assert (=> b!1850136 (= tp!523264 b_and!143877)))

(declare-fun b!1850128 () Bool)

(declare-fun b_free!51657 () Bool)

(declare-fun b_next!52361 () Bool)

(assert (=> b!1850128 (= b_free!51657 (not b_next!52361))))

(declare-fun tp!523273 () Bool)

(declare-fun b_and!143879 () Bool)

(assert (=> b!1850128 (= tp!523273 b_and!143879)))

(declare-fun e!1182072 () Bool)

(assert (=> b!1850125 (= e!1182072 (and tp!523269 tp!523263))))

(declare-fun b!1850126 () Bool)

(declare-fun res!830668 () Bool)

(declare-fun e!1182077 () Bool)

(assert (=> b!1850126 (=> (not res!830668) (not e!1182077))))

(declare-datatypes ((LexerInterface!3289 0))(
  ( (LexerInterfaceExt!3286 (__x!12843 Int)) (Lexer!3287) )
))
(declare-fun thiss!10908 () LexerInterface!3289)

(declare-datatypes ((C!10204 0))(
  ( (C!10205 (val!5828 Int)) )
))
(declare-datatypes ((Regex!5027 0))(
  ( (ElementMatch!5027 (c!301992 C!10204)) (Concat!8809 (regOne!10566 Regex!5027) (regTwo!10566 Regex!5027)) (EmptyExpr!5027) (Star!5027 (reg!5356 Regex!5027)) (EmptyLang!5027) (Union!5027 (regOne!10567 Regex!5027) (regTwo!10567 Regex!5027)) )
))
(declare-datatypes ((List!20521 0))(
  ( (Nil!20449) (Cons!20449 (h!25850 (_ BitVec 16)) (t!172294 List!20521)) )
))
(declare-datatypes ((TokenValue!3782 0))(
  ( (FloatLiteralValue!7564 (text!26919 List!20521)) (TokenValueExt!3781 (__x!12844 Int)) (Broken!18910 (value!115033 List!20521)) (Object!3853) (End!3782) (Def!3782) (Underscore!3782) (Match!3782) (Else!3782) (Error!3782) (Case!3782) (If!3782) (Extends!3782) (Abstract!3782) (Class!3782) (Val!3782) (DelimiterValue!7564 (del!3842 List!20521)) (KeywordValue!3788 (value!115034 List!20521)) (CommentValue!7564 (value!115035 List!20521)) (WhitespaceValue!7564 (value!115036 List!20521)) (IndentationValue!3782 (value!115037 List!20521)) (String!23475) (Int32!3782) (Broken!18911 (value!115038 List!20521)) (Boolean!3783) (Unit!35123) (OperatorValue!3785 (op!3842 List!20521)) (IdentifierValue!7564 (value!115039 List!20521)) (IdentifierValue!7565 (value!115040 List!20521)) (WhitespaceValue!7565 (value!115041 List!20521)) (True!7564) (False!7564) (Broken!18912 (value!115042 List!20521)) (Broken!18913 (value!115043 List!20521)) (True!7565) (RightBrace!3782) (RightBracket!3782) (Colon!3782) (Null!3782) (Comma!3782) (LeftBracket!3782) (False!7565) (LeftBrace!3782) (ImaginaryLiteralValue!3782 (text!26920 List!20521)) (StringLiteralValue!11346 (value!115044 List!20521)) (EOFValue!3782 (value!115045 List!20521)) (IdentValue!3782 (value!115046 List!20521)) (DelimiterValue!7565 (value!115047 List!20521)) (DedentValue!3782 (value!115048 List!20521)) (NewLineValue!3782 (value!115049 List!20521)) (IntegerValue!11346 (value!115050 (_ BitVec 32)) (text!26921 List!20521)) (IntegerValue!11347 (value!115051 Int) (text!26922 List!20521)) (Times!3782) (Or!3782) (Equal!3782) (Minus!3782) (Broken!18914 (value!115052 List!20521)) (And!3782) (Div!3782) (LessEqual!3782) (Mod!3782) (Concat!8810) (Not!3782) (Plus!3782) (SpaceValue!3782 (value!115053 List!20521)) (IntegerValue!11348 (value!115054 Int) (text!26923 List!20521)) (StringLiteralValue!11347 (text!26924 List!20521)) (FloatLiteralValue!7565 (text!26925 List!20521)) (BytesLiteralValue!3782 (value!115055 List!20521)) (CommentValue!7565 (value!115056 List!20521)) (StringLiteralValue!11348 (value!115057 List!20521)) (ErrorTokenValue!3782 (msg!3843 List!20521)) )
))
(declare-datatypes ((List!20522 0))(
  ( (Nil!20450) (Cons!20450 (h!25851 C!10204) (t!172295 List!20522)) )
))
(declare-datatypes ((IArray!13545 0))(
  ( (IArray!13546 (innerList!6830 List!20522)) )
))
(declare-datatypes ((Conc!6770 0))(
  ( (Node!6770 (left!16445 Conc!6770) (right!16775 Conc!6770) (csize!13770 Int) (cheight!6981 Int)) (Leaf!9908 (xs!9646 IArray!13545) (csize!13771 Int)) (Empty!6770) )
))
(declare-datatypes ((BalanceConc!13462 0))(
  ( (BalanceConc!13463 (c!301993 Conc!6770)) )
))
(declare-datatypes ((String!23476 0))(
  ( (String!23477 (value!115058 String)) )
))
(declare-datatypes ((TokenValueInjection!7180 0))(
  ( (TokenValueInjection!7181 (toValue!5237 Int) (toChars!5096 Int)) )
))
(declare-datatypes ((Rule!7132 0))(
  ( (Rule!7133 (regex!3666 Regex!5027) (tag!4080 String!23476) (isSeparator!3666 Bool) (transformation!3666 TokenValueInjection!7180)) )
))
(declare-datatypes ((List!20523 0))(
  ( (Nil!20451) (Cons!20451 (h!25852 Rule!7132) (t!172296 List!20523)) )
))
(declare-fun rs!164 () List!20523)

(declare-fun rulesInvariant!2958 (LexerInterface!3289 List!20523) Bool)

(assert (=> b!1850126 (= res!830668 (rulesInvariant!2958 thiss!10908 rs!164))))

(declare-fun e!1182079 () Bool)

(declare-fun e!1182087 () Bool)

(declare-fun tp!523268 () Bool)

(declare-fun b!1850127 () Bool)

(declare-fun inv!26842 (String!23476) Bool)

(declare-fun inv!26843 (TokenValueInjection!7180) Bool)

(assert (=> b!1850127 (= e!1182079 (and tp!523268 (inv!26842 (tag!4080 (h!25852 rs!164))) (inv!26843 (transformation!3666 (h!25852 rs!164))) e!1182087))))

(declare-fun e!1182073 () Bool)

(declare-fun e!1182086 () Bool)

(assert (=> b!1850128 (= e!1182073 (and e!1182086 tp!523273))))

(declare-fun b!1850129 () Bool)

(declare-fun e!1182081 () Bool)

(declare-fun tp!523277 () Bool)

(assert (=> b!1850129 (= e!1182081 (and e!1182079 tp!523277))))

(declare-fun b!1850130 () Bool)

(declare-fun e!1182075 () Bool)

(assert (=> b!1850130 (= e!1182075 e!1182073)))

(declare-fun b!1850131 () Bool)

(declare-datatypes ((Hashable!1811 0))(
  ( (HashableExt!1810 (__x!12845 Int)) )
))
(declare-datatypes ((List!20524 0))(
  ( (Nil!20452) (Cons!20452 (h!25853 Regex!5027) (t!172297 List!20524)) )
))
(declare-datatypes ((Context!1874 0))(
  ( (Context!1875 (exprs!1437 List!20524)) )
))
(declare-datatypes ((tuple2!19708 0))(
  ( (tuple2!19709 (_1!11256 Context!1874) (_2!11256 C!10204)) )
))
(declare-datatypes ((array!6406 0))(
  ( (array!6407 (arr!2845 (Array (_ BitVec 32) (_ BitVec 64))) (size!16153 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19710 0))(
  ( (tuple2!19711 (_1!11257 tuple2!19708) (_2!11257 (InoxSet Context!1874))) )
))
(declare-datatypes ((List!20525 0))(
  ( (Nil!20453) (Cons!20453 (h!25854 tuple2!19710) (t!172298 List!20525)) )
))
(declare-datatypes ((array!6408 0))(
  ( (array!6409 (arr!2846 (Array (_ BitVec 32) List!20525)) (size!16154 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3734 0))(
  ( (LongMapFixedSize!3735 (defaultEntry!2227 Int) (mask!5548 (_ BitVec 32)) (extraKeys!2114 (_ BitVec 32)) (zeroValue!2124 List!20525) (minValue!2124 List!20525) (_size!3815 (_ BitVec 32)) (_keys!2161 array!6406) (_values!2146 array!6408) (_vacant!1928 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7353 0))(
  ( (Cell!7354 (v!25964 LongMapFixedSize!3734)) )
))
(declare-datatypes ((MutLongMap!1867 0))(
  ( (LongMap!1867 (underlying!3947 Cell!7353)) (MutLongMapExt!1866 (__x!12846 Int)) )
))
(declare-datatypes ((Cell!7355 0))(
  ( (Cell!7356 (v!25965 MutLongMap!1867)) )
))
(declare-datatypes ((MutableMap!1811 0))(
  ( (MutableMapExt!1810 (__x!12847 Int)) (HashMap!1811 (underlying!3948 Cell!7355) (hashF!3730 Hashable!1811) (_size!3816 (_ BitVec 32)) (defaultValue!1971 Int)) )
))
(declare-datatypes ((CacheUp!1110 0))(
  ( (CacheUp!1111 (cache!2192 MutableMap!1811)) )
))
(declare-fun cacheUp!391 () CacheUp!1110)

(declare-fun valid!1497 (CacheUp!1110) Bool)

(assert (=> b!1850131 (= e!1182077 (not (valid!1497 cacheUp!391)))))

(declare-fun lt!715449 () BalanceConc!13462)

(declare-datatypes ((Token!6886 0))(
  ( (Token!6887 (value!115059 TokenValue!3782) (rule!5860 Rule!7132) (size!16155 Int) (originalCharacters!4474 List!20522)) )
))
(declare-fun t!6207 () Token!6886)

(declare-datatypes ((List!20526 0))(
  ( (Nil!20454) (Cons!20454 (h!25855 Token!6886) (t!172299 List!20526)) )
))
(declare-datatypes ((IArray!13547 0))(
  ( (IArray!13548 (innerList!6831 List!20526)) )
))
(declare-datatypes ((Conc!6771 0))(
  ( (Node!6771 (left!16446 Conc!6771) (right!16776 Conc!6771) (csize!13772 Int) (cheight!6982 Int)) (Leaf!9909 (xs!9647 IArray!13547) (csize!13773 Int)) (Empty!6771) )
))
(declare-datatypes ((BalanceConc!13464 0))(
  ( (BalanceConc!13465 (c!301994 Conc!6771)) )
))
(declare-fun print!1424 (LexerInterface!3289 BalanceConc!13464) BalanceConc!13462)

(declare-fun singletonSeq!1796 (Token!6886) BalanceConc!13464)

(assert (=> b!1850131 (= lt!715449 (print!1424 thiss!10908 (singletonSeq!1796 t!6207)))))

(declare-fun b!1850132 () Bool)

(declare-fun e!1182083 () Bool)

(declare-fun e!1182071 () Bool)

(assert (=> b!1850132 (= e!1182083 e!1182071)))

(declare-fun b!1850133 () Bool)

(declare-fun res!830666 () Bool)

(assert (=> b!1850133 (=> (not res!830666) (not e!1182077))))

(declare-fun isEmpty!12785 (List!20523) Bool)

(assert (=> b!1850133 (= res!830666 (not (isEmpty!12785 rs!164)))))

(declare-fun b!1850134 () Bool)

(declare-fun e!1182084 () Bool)

(declare-fun tp!523271 () Bool)

(declare-fun mapRes!8714 () Bool)

(assert (=> b!1850134 (= e!1182084 (and tp!523271 mapRes!8714))))

(declare-fun condMapEmpty!8714 () Bool)

(declare-fun mapDefault!8714 () List!20525)

(assert (=> b!1850134 (= condMapEmpty!8714 (= (arr!2846 (_values!2146 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))))) ((as const (Array (_ BitVec 32) List!20525)) mapDefault!8714)))))

(declare-fun res!830667 () Bool)

(assert (=> start!184634 (=> (not res!830667) (not e!1182077))))

(get-info :version)

(assert (=> start!184634 (= res!830667 ((_ is Lexer!3287) thiss!10908))))

(assert (=> start!184634 e!1182077))

(assert (=> start!184634 true))

(assert (=> start!184634 e!1182081))

(declare-fun e!1182082 () Bool)

(declare-fun inv!26844 (Token!6886) Bool)

(assert (=> start!184634 (and (inv!26844 t!6207) e!1182082)))

(declare-fun inv!26845 (CacheUp!1110) Bool)

(assert (=> start!184634 (and (inv!26845 cacheUp!391) e!1182075)))

(declare-fun b!1850135 () Bool)

(declare-fun e!1182080 () Bool)

(declare-fun lt!715450 () MutLongMap!1867)

(assert (=> b!1850135 (= e!1182086 (and e!1182080 ((_ is LongMap!1867) lt!715450)))))

(assert (=> b!1850135 (= lt!715450 (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))))

(assert (=> b!1850136 (= e!1182087 (and tp!523275 tp!523264))))

(declare-fun mapIsEmpty!8714 () Bool)

(assert (=> mapIsEmpty!8714 mapRes!8714))

(declare-fun tp!523270 () Bool)

(declare-fun tp!523274 () Bool)

(declare-fun array_inv!2047 (array!6406) Bool)

(declare-fun array_inv!2048 (array!6408) Bool)

(assert (=> b!1850137 (= e!1182071 (and tp!523272 tp!523270 tp!523274 (array_inv!2047 (_keys!2161 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))))) (array_inv!2048 (_values!2146 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))))) e!1182084))))

(declare-fun mapNonEmpty!8714 () Bool)

(declare-fun tp!523267 () Bool)

(declare-fun tp!523265 () Bool)

(assert (=> mapNonEmpty!8714 (= mapRes!8714 (and tp!523267 tp!523265))))

(declare-fun mapValue!8714 () List!20525)

(declare-fun mapKey!8714 () (_ BitVec 32))

(declare-fun mapRest!8714 () (Array (_ BitVec 32) List!20525))

(assert (=> mapNonEmpty!8714 (= (arr!2846 (_values!2146 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))))) (store mapRest!8714 mapKey!8714 mapValue!8714))))

(declare-fun b!1850138 () Bool)

(declare-fun tp!523266 () Bool)

(declare-fun e!1182078 () Bool)

(assert (=> b!1850138 (= e!1182078 (and tp!523266 (inv!26842 (tag!4080 (rule!5860 t!6207))) (inv!26843 (transformation!3666 (rule!5860 t!6207))) e!1182072))))

(declare-fun b!1850139 () Bool)

(assert (=> b!1850139 (= e!1182080 e!1182083)))

(declare-fun tp!523276 () Bool)

(declare-fun b!1850140 () Bool)

(declare-fun inv!21 (TokenValue!3782) Bool)

(assert (=> b!1850140 (= e!1182082 (and (inv!21 (value!115059 t!6207)) e!1182078 tp!523276))))

(assert (= (and start!184634 res!830667) b!1850133))

(assert (= (and b!1850133 res!830666) b!1850126))

(assert (= (and b!1850126 res!830668) b!1850131))

(assert (= b!1850127 b!1850136))

(assert (= b!1850129 b!1850127))

(assert (= (and start!184634 ((_ is Cons!20451) rs!164)) b!1850129))

(assert (= b!1850138 b!1850125))

(assert (= b!1850140 b!1850138))

(assert (= start!184634 b!1850140))

(assert (= (and b!1850134 condMapEmpty!8714) mapIsEmpty!8714))

(assert (= (and b!1850134 (not condMapEmpty!8714)) mapNonEmpty!8714))

(assert (= b!1850137 b!1850134))

(assert (= b!1850132 b!1850137))

(assert (= b!1850139 b!1850132))

(assert (= (and b!1850135 ((_ is LongMap!1867) (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))) b!1850139))

(assert (= b!1850128 b!1850135))

(assert (= (and b!1850130 ((_ is HashMap!1811) (cache!2192 cacheUp!391))) b!1850128))

(assert (= start!184634 b!1850130))

(declare-fun m!2276975 () Bool)

(assert (=> b!1850131 m!2276975))

(declare-fun m!2276977 () Bool)

(assert (=> b!1850131 m!2276977))

(assert (=> b!1850131 m!2276977))

(declare-fun m!2276979 () Bool)

(assert (=> b!1850131 m!2276979))

(declare-fun m!2276981 () Bool)

(assert (=> mapNonEmpty!8714 m!2276981))

(declare-fun m!2276983 () Bool)

(assert (=> b!1850138 m!2276983))

(declare-fun m!2276985 () Bool)

(assert (=> b!1850138 m!2276985))

(declare-fun m!2276987 () Bool)

(assert (=> b!1850137 m!2276987))

(declare-fun m!2276989 () Bool)

(assert (=> b!1850137 m!2276989))

(declare-fun m!2276991 () Bool)

(assert (=> start!184634 m!2276991))

(declare-fun m!2276993 () Bool)

(assert (=> start!184634 m!2276993))

(declare-fun m!2276995 () Bool)

(assert (=> b!1850133 m!2276995))

(declare-fun m!2276997 () Bool)

(assert (=> b!1850140 m!2276997))

(declare-fun m!2276999 () Bool)

(assert (=> b!1850126 m!2276999))

(declare-fun m!2277001 () Bool)

(assert (=> b!1850127 m!2277001))

(declare-fun m!2277003 () Bool)

(assert (=> b!1850127 m!2277003))

(check-sat (not b!1850131) (not b_next!52351) (not b!1850134) b_and!143879 (not b!1850133) (not b_next!52359) b_and!143871 (not start!184634) (not b!1850126) b_and!143875 b_and!143869 (not b!1850140) (not b_next!52353) (not b_next!52355) (not b!1850137) (not b!1850129) (not b_next!52361) (not b!1850127) (not b_next!52357) (not b!1850138) b_and!143877 (not mapNonEmpty!8714) b_and!143873)
(check-sat (not b_next!52351) (not b_next!52353) b_and!143879 (not b_next!52355) (not b_next!52361) (not b_next!52359) (not b_next!52357) b_and!143877 b_and!143871 b_and!143873 b_and!143875 b_and!143869)
(get-model)

(declare-fun b!1850151 () Bool)

(declare-fun e!1182096 () Bool)

(declare-fun inv!15 (TokenValue!3782) Bool)

(assert (=> b!1850151 (= e!1182096 (inv!15 (value!115059 t!6207)))))

(declare-fun d!565702 () Bool)

(declare-fun c!301999 () Bool)

(assert (=> d!565702 (= c!301999 ((_ is IntegerValue!11346) (value!115059 t!6207)))))

(declare-fun e!1182095 () Bool)

(assert (=> d!565702 (= (inv!21 (value!115059 t!6207)) e!1182095)))

(declare-fun b!1850152 () Bool)

(declare-fun e!1182094 () Bool)

(assert (=> b!1850152 (= e!1182095 e!1182094)))

(declare-fun c!302000 () Bool)

(assert (=> b!1850152 (= c!302000 ((_ is IntegerValue!11347) (value!115059 t!6207)))))

(declare-fun b!1850153 () Bool)

(declare-fun res!830673 () Bool)

(assert (=> b!1850153 (=> res!830673 e!1182096)))

(assert (=> b!1850153 (= res!830673 (not ((_ is IntegerValue!11348) (value!115059 t!6207))))))

(assert (=> b!1850153 (= e!1182094 e!1182096)))

(declare-fun b!1850154 () Bool)

(declare-fun inv!16 (TokenValue!3782) Bool)

(assert (=> b!1850154 (= e!1182095 (inv!16 (value!115059 t!6207)))))

(declare-fun b!1850155 () Bool)

(declare-fun inv!17 (TokenValue!3782) Bool)

(assert (=> b!1850155 (= e!1182094 (inv!17 (value!115059 t!6207)))))

(assert (= (and d!565702 c!301999) b!1850154))

(assert (= (and d!565702 (not c!301999)) b!1850152))

(assert (= (and b!1850152 c!302000) b!1850155))

(assert (= (and b!1850152 (not c!302000)) b!1850153))

(assert (= (and b!1850153 (not res!830673)) b!1850151))

(declare-fun m!2277005 () Bool)

(assert (=> b!1850151 m!2277005))

(declare-fun m!2277007 () Bool)

(assert (=> b!1850154 m!2277007))

(declare-fun m!2277009 () Bool)

(assert (=> b!1850155 m!2277009))

(assert (=> b!1850140 d!565702))

(declare-fun d!565704 () Bool)

(declare-fun res!830676 () Bool)

(declare-fun e!1182099 () Bool)

(assert (=> d!565704 (=> (not res!830676) (not e!1182099))))

(declare-fun rulesValid!1399 (LexerInterface!3289 List!20523) Bool)

(assert (=> d!565704 (= res!830676 (rulesValid!1399 thiss!10908 rs!164))))

(assert (=> d!565704 (= (rulesInvariant!2958 thiss!10908 rs!164) e!1182099)))

(declare-fun b!1850158 () Bool)

(declare-datatypes ((List!20527 0))(
  ( (Nil!20455) (Cons!20455 (h!25856 String!23476) (t!172307 List!20527)) )
))
(declare-fun noDuplicateTag!1397 (LexerInterface!3289 List!20523 List!20527) Bool)

(assert (=> b!1850158 (= e!1182099 (noDuplicateTag!1397 thiss!10908 rs!164 Nil!20455))))

(assert (= (and d!565704 res!830676) b!1850158))

(declare-fun m!2277011 () Bool)

(assert (=> d!565704 m!2277011))

(declare-fun m!2277013 () Bool)

(assert (=> b!1850158 m!2277013))

(assert (=> b!1850126 d!565704))

(declare-fun d!565706 () Bool)

(declare-fun validCacheMapUp!174 (MutableMap!1811) Bool)

(assert (=> d!565706 (= (valid!1497 cacheUp!391) (validCacheMapUp!174 (cache!2192 cacheUp!391)))))

(declare-fun bs!409792 () Bool)

(assert (= bs!409792 d!565706))

(declare-fun m!2277015 () Bool)

(assert (=> bs!409792 m!2277015))

(assert (=> b!1850131 d!565706))

(declare-fun d!565708 () Bool)

(declare-fun lt!715453 () BalanceConc!13462)

(declare-fun list!8308 (BalanceConc!13462) List!20522)

(declare-fun printList!1004 (LexerInterface!3289 List!20526) List!20522)

(declare-fun list!8309 (BalanceConc!13464) List!20526)

(assert (=> d!565708 (= (list!8308 lt!715453) (printList!1004 thiss!10908 (list!8309 (singletonSeq!1796 t!6207))))))

(declare-fun printTailRec!942 (LexerInterface!3289 BalanceConc!13464 Int BalanceConc!13462) BalanceConc!13462)

(assert (=> d!565708 (= lt!715453 (printTailRec!942 thiss!10908 (singletonSeq!1796 t!6207) 0 (BalanceConc!13463 Empty!6770)))))

(assert (=> d!565708 (= (print!1424 thiss!10908 (singletonSeq!1796 t!6207)) lt!715453)))

(declare-fun bs!409793 () Bool)

(assert (= bs!409793 d!565708))

(declare-fun m!2277017 () Bool)

(assert (=> bs!409793 m!2277017))

(assert (=> bs!409793 m!2276977))

(declare-fun m!2277019 () Bool)

(assert (=> bs!409793 m!2277019))

(assert (=> bs!409793 m!2277019))

(declare-fun m!2277021 () Bool)

(assert (=> bs!409793 m!2277021))

(assert (=> bs!409793 m!2276977))

(declare-fun m!2277023 () Bool)

(assert (=> bs!409793 m!2277023))

(assert (=> b!1850131 d!565708))

(declare-fun d!565710 () Bool)

(declare-fun e!1182102 () Bool)

(assert (=> d!565710 e!1182102))

(declare-fun res!830679 () Bool)

(assert (=> d!565710 (=> (not res!830679) (not e!1182102))))

(declare-fun lt!715456 () BalanceConc!13464)

(assert (=> d!565710 (= res!830679 (= (list!8309 lt!715456) (Cons!20454 t!6207 Nil!20454)))))

(declare-fun singleton!816 (Token!6886) BalanceConc!13464)

(assert (=> d!565710 (= lt!715456 (singleton!816 t!6207))))

(assert (=> d!565710 (= (singletonSeq!1796 t!6207) lt!715456)))

(declare-fun b!1850161 () Bool)

(declare-fun isBalanced!2112 (Conc!6771) Bool)

(assert (=> b!1850161 (= e!1182102 (isBalanced!2112 (c!301994 lt!715456)))))

(assert (= (and d!565710 res!830679) b!1850161))

(declare-fun m!2277025 () Bool)

(assert (=> d!565710 m!2277025))

(declare-fun m!2277027 () Bool)

(assert (=> d!565710 m!2277027))

(declare-fun m!2277029 () Bool)

(assert (=> b!1850161 m!2277029))

(assert (=> b!1850131 d!565710))

(declare-fun d!565712 () Bool)

(assert (=> d!565712 (= (inv!26842 (tag!4080 (rule!5860 t!6207))) (= (mod (str.len (value!115058 (tag!4080 (rule!5860 t!6207)))) 2) 0))))

(assert (=> b!1850138 d!565712))

(declare-fun d!565714 () Bool)

(declare-fun res!830682 () Bool)

(declare-fun e!1182105 () Bool)

(assert (=> d!565714 (=> (not res!830682) (not e!1182105))))

(declare-fun semiInverseModEq!1489 (Int Int) Bool)

(assert (=> d!565714 (= res!830682 (semiInverseModEq!1489 (toChars!5096 (transformation!3666 (rule!5860 t!6207))) (toValue!5237 (transformation!3666 (rule!5860 t!6207)))))))

(assert (=> d!565714 (= (inv!26843 (transformation!3666 (rule!5860 t!6207))) e!1182105)))

(declare-fun b!1850164 () Bool)

(declare-fun equivClasses!1422 (Int Int) Bool)

(assert (=> b!1850164 (= e!1182105 (equivClasses!1422 (toChars!5096 (transformation!3666 (rule!5860 t!6207))) (toValue!5237 (transformation!3666 (rule!5860 t!6207)))))))

(assert (= (and d!565714 res!830682) b!1850164))

(declare-fun m!2277031 () Bool)

(assert (=> d!565714 m!2277031))

(declare-fun m!2277033 () Bool)

(assert (=> b!1850164 m!2277033))

(assert (=> b!1850138 d!565714))

(declare-fun d!565716 () Bool)

(assert (=> d!565716 (= (isEmpty!12785 rs!164) ((_ is Nil!20451) rs!164))))

(assert (=> b!1850133 d!565716))

(declare-fun d!565718 () Bool)

(assert (=> d!565718 (= (array_inv!2047 (_keys!2161 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))))) (bvsge (size!16153 (_keys!2161 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850137 d!565718))

(declare-fun d!565720 () Bool)

(assert (=> d!565720 (= (array_inv!2048 (_values!2146 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))))) (bvsge (size!16154 (_values!2146 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850137 d!565720))

(declare-fun d!565722 () Bool)

(assert (=> d!565722 (= (inv!26842 (tag!4080 (h!25852 rs!164))) (= (mod (str.len (value!115058 (tag!4080 (h!25852 rs!164)))) 2) 0))))

(assert (=> b!1850127 d!565722))

(declare-fun d!565724 () Bool)

(declare-fun res!830683 () Bool)

(declare-fun e!1182106 () Bool)

(assert (=> d!565724 (=> (not res!830683) (not e!1182106))))

(assert (=> d!565724 (= res!830683 (semiInverseModEq!1489 (toChars!5096 (transformation!3666 (h!25852 rs!164))) (toValue!5237 (transformation!3666 (h!25852 rs!164)))))))

(assert (=> d!565724 (= (inv!26843 (transformation!3666 (h!25852 rs!164))) e!1182106)))

(declare-fun b!1850165 () Bool)

(assert (=> b!1850165 (= e!1182106 (equivClasses!1422 (toChars!5096 (transformation!3666 (h!25852 rs!164))) (toValue!5237 (transformation!3666 (h!25852 rs!164)))))))

(assert (= (and d!565724 res!830683) b!1850165))

(declare-fun m!2277035 () Bool)

(assert (=> d!565724 m!2277035))

(declare-fun m!2277037 () Bool)

(assert (=> b!1850165 m!2277037))

(assert (=> b!1850127 d!565724))

(declare-fun d!565726 () Bool)

(declare-fun res!830688 () Bool)

(declare-fun e!1182109 () Bool)

(assert (=> d!565726 (=> (not res!830688) (not e!1182109))))

(declare-fun isEmpty!12786 (List!20522) Bool)

(assert (=> d!565726 (= res!830688 (not (isEmpty!12786 (originalCharacters!4474 t!6207))))))

(assert (=> d!565726 (= (inv!26844 t!6207) e!1182109)))

(declare-fun b!1850170 () Bool)

(declare-fun res!830689 () Bool)

(assert (=> b!1850170 (=> (not res!830689) (not e!1182109))))

(declare-fun dynLambda!10159 (Int TokenValue!3782) BalanceConc!13462)

(assert (=> b!1850170 (= res!830689 (= (originalCharacters!4474 t!6207) (list!8308 (dynLambda!10159 (toChars!5096 (transformation!3666 (rule!5860 t!6207))) (value!115059 t!6207)))))))

(declare-fun b!1850171 () Bool)

(declare-fun size!16156 (List!20522) Int)

(assert (=> b!1850171 (= e!1182109 (= (size!16155 t!6207) (size!16156 (originalCharacters!4474 t!6207))))))

(assert (= (and d!565726 res!830688) b!1850170))

(assert (= (and b!1850170 res!830689) b!1850171))

(declare-fun b_lambda!61421 () Bool)

(assert (=> (not b_lambda!61421) (not b!1850170)))

(declare-fun t!172302 () Bool)

(declare-fun tb!112877 () Bool)

(assert (=> (and b!1850125 (= (toChars!5096 (transformation!3666 (rule!5860 t!6207))) (toChars!5096 (transformation!3666 (rule!5860 t!6207)))) t!172302) tb!112877))

(declare-fun b!1850176 () Bool)

(declare-fun e!1182112 () Bool)

(declare-fun tp!523280 () Bool)

(declare-fun inv!26846 (Conc!6770) Bool)

(assert (=> b!1850176 (= e!1182112 (and (inv!26846 (c!301993 (dynLambda!10159 (toChars!5096 (transformation!3666 (rule!5860 t!6207))) (value!115059 t!6207)))) tp!523280))))

(declare-fun result!136048 () Bool)

(declare-fun inv!26847 (BalanceConc!13462) Bool)

(assert (=> tb!112877 (= result!136048 (and (inv!26847 (dynLambda!10159 (toChars!5096 (transformation!3666 (rule!5860 t!6207))) (value!115059 t!6207))) e!1182112))))

(assert (= tb!112877 b!1850176))

(declare-fun m!2277039 () Bool)

(assert (=> b!1850176 m!2277039))

(declare-fun m!2277041 () Bool)

(assert (=> tb!112877 m!2277041))

(assert (=> b!1850170 t!172302))

(declare-fun b_and!143881 () Bool)

(assert (= b_and!143871 (and (=> t!172302 result!136048) b_and!143881)))

(declare-fun t!172304 () Bool)

(declare-fun tb!112879 () Bool)

(assert (=> (and b!1850136 (= (toChars!5096 (transformation!3666 (h!25852 rs!164))) (toChars!5096 (transformation!3666 (rule!5860 t!6207)))) t!172304) tb!112879))

(declare-fun result!136052 () Bool)

(assert (= result!136052 result!136048))

(assert (=> b!1850170 t!172304))

(declare-fun b_and!143883 () Bool)

(assert (= b_and!143877 (and (=> t!172304 result!136052) b_and!143883)))

(declare-fun m!2277043 () Bool)

(assert (=> d!565726 m!2277043))

(declare-fun m!2277045 () Bool)

(assert (=> b!1850170 m!2277045))

(assert (=> b!1850170 m!2277045))

(declare-fun m!2277047 () Bool)

(assert (=> b!1850170 m!2277047))

(declare-fun m!2277049 () Bool)

(assert (=> b!1850171 m!2277049))

(assert (=> start!184634 d!565726))

(declare-fun d!565728 () Bool)

(declare-fun res!830692 () Bool)

(declare-fun e!1182115 () Bool)

(assert (=> d!565728 (=> (not res!830692) (not e!1182115))))

(assert (=> d!565728 (= res!830692 ((_ is HashMap!1811) (cache!2192 cacheUp!391)))))

(assert (=> d!565728 (= (inv!26845 cacheUp!391) e!1182115)))

(declare-fun b!1850179 () Bool)

(assert (=> b!1850179 (= e!1182115 (validCacheMapUp!174 (cache!2192 cacheUp!391)))))

(assert (= (and d!565728 res!830692) b!1850179))

(assert (=> b!1850179 m!2277015))

(assert (=> start!184634 d!565728))

(declare-fun b!1850184 () Bool)

(declare-fun e!1182118 () Bool)

(declare-fun tp_is_empty!8493 () Bool)

(declare-fun tp!523283 () Bool)

(assert (=> b!1850184 (= e!1182118 (and tp_is_empty!8493 tp!523283))))

(assert (=> b!1850140 (= tp!523276 e!1182118)))

(assert (= (and b!1850140 ((_ is Cons!20450) (originalCharacters!4474 t!6207))) b!1850184))

(declare-fun b!1850195 () Bool)

(declare-fun e!1182121 () Bool)

(assert (=> b!1850195 (= e!1182121 tp_is_empty!8493)))

(declare-fun b!1850198 () Bool)

(declare-fun tp!523294 () Bool)

(declare-fun tp!523295 () Bool)

(assert (=> b!1850198 (= e!1182121 (and tp!523294 tp!523295))))

(declare-fun b!1850196 () Bool)

(declare-fun tp!523296 () Bool)

(declare-fun tp!523298 () Bool)

(assert (=> b!1850196 (= e!1182121 (and tp!523296 tp!523298))))

(declare-fun b!1850197 () Bool)

(declare-fun tp!523297 () Bool)

(assert (=> b!1850197 (= e!1182121 tp!523297)))

(assert (=> b!1850138 (= tp!523266 e!1182121)))

(assert (= (and b!1850138 ((_ is ElementMatch!5027) (regex!3666 (rule!5860 t!6207)))) b!1850195))

(assert (= (and b!1850138 ((_ is Concat!8809) (regex!3666 (rule!5860 t!6207)))) b!1850196))

(assert (= (and b!1850138 ((_ is Star!5027) (regex!3666 (rule!5860 t!6207)))) b!1850197))

(assert (= (and b!1850138 ((_ is Union!5027) (regex!3666 (rule!5860 t!6207)))) b!1850198))

(declare-fun b!1850209 () Bool)

(declare-fun b_free!51659 () Bool)

(declare-fun b_next!52363 () Bool)

(assert (=> b!1850209 (= b_free!51659 (not b_next!52363))))

(declare-fun tp!523308 () Bool)

(declare-fun b_and!143885 () Bool)

(assert (=> b!1850209 (= tp!523308 b_and!143885)))

(declare-fun b_free!51661 () Bool)

(declare-fun b_next!52365 () Bool)

(assert (=> b!1850209 (= b_free!51661 (not b_next!52365))))

(declare-fun t!172306 () Bool)

(declare-fun tb!112881 () Bool)

(assert (=> (and b!1850209 (= (toChars!5096 (transformation!3666 (h!25852 (t!172296 rs!164)))) (toChars!5096 (transformation!3666 (rule!5860 t!6207)))) t!172306) tb!112881))

(declare-fun result!136060 () Bool)

(assert (= result!136060 result!136048))

(assert (=> b!1850170 t!172306))

(declare-fun b_and!143887 () Bool)

(declare-fun tp!523307 () Bool)

(assert (=> b!1850209 (= tp!523307 (and (=> t!172306 result!136060) b_and!143887))))

(declare-fun e!1182130 () Bool)

(assert (=> b!1850209 (= e!1182130 (and tp!523308 tp!523307))))

(declare-fun b!1850208 () Bool)

(declare-fun e!1182132 () Bool)

(declare-fun tp!523309 () Bool)

(assert (=> b!1850208 (= e!1182132 (and tp!523309 (inv!26842 (tag!4080 (h!25852 (t!172296 rs!164)))) (inv!26843 (transformation!3666 (h!25852 (t!172296 rs!164)))) e!1182130))))

(declare-fun b!1850207 () Bool)

(declare-fun e!1182133 () Bool)

(declare-fun tp!523310 () Bool)

(assert (=> b!1850207 (= e!1182133 (and e!1182132 tp!523310))))

(assert (=> b!1850129 (= tp!523277 e!1182133)))

(assert (= b!1850208 b!1850209))

(assert (= b!1850207 b!1850208))

(assert (= (and b!1850129 ((_ is Cons!20451) (t!172296 rs!164))) b!1850207))

(declare-fun m!2277051 () Bool)

(assert (=> b!1850208 m!2277051))

(declare-fun m!2277053 () Bool)

(assert (=> b!1850208 m!2277053))

(declare-fun b!1850218 () Bool)

(declare-fun e!1182140 () Bool)

(declare-fun tp!523321 () Bool)

(assert (=> b!1850218 (= e!1182140 tp!523321)))

(declare-fun setElem!11332 () Context!1874)

(declare-fun setRes!11332 () Bool)

(declare-fun setNonEmpty!11332 () Bool)

(declare-fun tp!523320 () Bool)

(declare-fun inv!26848 (Context!1874) Bool)

(assert (=> setNonEmpty!11332 (= setRes!11332 (and tp!523320 (inv!26848 setElem!11332) e!1182140))))

(declare-fun setRest!11332 () (InoxSet Context!1874))

(assert (=> setNonEmpty!11332 (= (_2!11257 (h!25854 mapDefault!8714)) ((_ map or) (store ((as const (Array Context!1874 Bool)) false) setElem!11332 true) setRest!11332))))

(declare-fun setIsEmpty!11332 () Bool)

(assert (=> setIsEmpty!11332 setRes!11332))

(declare-fun b!1850219 () Bool)

(declare-fun e!1182142 () Bool)

(declare-fun tp!523319 () Bool)

(assert (=> b!1850219 (= e!1182142 tp!523319)))

(declare-fun b!1850220 () Bool)

(declare-fun tp!523322 () Bool)

(declare-fun e!1182141 () Bool)

(assert (=> b!1850220 (= e!1182141 (and (inv!26848 (_1!11256 (_1!11257 (h!25854 mapDefault!8714)))) e!1182142 tp_is_empty!8493 setRes!11332 tp!523322))))

(declare-fun condSetEmpty!11332 () Bool)

(assert (=> b!1850220 (= condSetEmpty!11332 (= (_2!11257 (h!25854 mapDefault!8714)) ((as const (Array Context!1874 Bool)) false)))))

(assert (=> b!1850134 (= tp!523271 e!1182141)))

(assert (= b!1850220 b!1850219))

(assert (= (and b!1850220 condSetEmpty!11332) setIsEmpty!11332))

(assert (= (and b!1850220 (not condSetEmpty!11332)) setNonEmpty!11332))

(assert (= setNonEmpty!11332 b!1850218))

(assert (= (and b!1850134 ((_ is Cons!20453) mapDefault!8714)) b!1850220))

(declare-fun m!2277055 () Bool)

(assert (=> setNonEmpty!11332 m!2277055))

(declare-fun m!2277057 () Bool)

(assert (=> b!1850220 m!2277057))

(declare-fun b!1850235 () Bool)

(declare-fun e!1182158 () Bool)

(declare-fun tp!523349 () Bool)

(assert (=> b!1850235 (= e!1182158 tp!523349)))

(declare-fun setIsEmpty!11337 () Bool)

(declare-fun setRes!11338 () Bool)

(assert (=> setIsEmpty!11337 setRes!11338))

(declare-fun setIsEmpty!11338 () Bool)

(declare-fun setRes!11337 () Bool)

(assert (=> setIsEmpty!11338 setRes!11337))

(declare-fun b!1850236 () Bool)

(declare-fun e!1182157 () Bool)

(declare-fun tp!523341 () Bool)

(assert (=> b!1850236 (= e!1182157 tp!523341)))

(declare-fun e!1182155 () Bool)

(declare-fun b!1850237 () Bool)

(declare-fun mapDefault!8717 () List!20525)

(declare-fun e!1182156 () Bool)

(declare-fun tp!523346 () Bool)

(assert (=> b!1850237 (= e!1182156 (and (inv!26848 (_1!11256 (_1!11257 (h!25854 mapDefault!8717)))) e!1182155 tp_is_empty!8493 setRes!11338 tp!523346))))

(declare-fun condSetEmpty!11337 () Bool)

(assert (=> b!1850237 (= condSetEmpty!11337 (= (_2!11257 (h!25854 mapDefault!8717)) ((as const (Array Context!1874 Bool)) false)))))

(declare-fun b!1850238 () Bool)

(declare-fun tp!523344 () Bool)

(assert (=> b!1850238 (= e!1182155 tp!523344)))

(declare-fun setElem!11338 () Context!1874)

(declare-fun tp!523348 () Bool)

(declare-fun setNonEmpty!11337 () Bool)

(declare-fun e!1182160 () Bool)

(assert (=> setNonEmpty!11337 (= setRes!11337 (and tp!523348 (inv!26848 setElem!11338) e!1182160))))

(declare-fun mapValue!8717 () List!20525)

(declare-fun setRest!11337 () (InoxSet Context!1874))

(assert (=> setNonEmpty!11337 (= (_2!11257 (h!25854 mapValue!8717)) ((_ map or) (store ((as const (Array Context!1874 Bool)) false) setElem!11338 true) setRest!11337))))

(declare-fun tp!523343 () Bool)

(declare-fun e!1182159 () Bool)

(declare-fun b!1850239 () Bool)

(assert (=> b!1850239 (= e!1182159 (and (inv!26848 (_1!11256 (_1!11257 (h!25854 mapValue!8717)))) e!1182157 tp_is_empty!8493 setRes!11337 tp!523343))))

(declare-fun condSetEmpty!11338 () Bool)

(assert (=> b!1850239 (= condSetEmpty!11338 (= (_2!11257 (h!25854 mapValue!8717)) ((as const (Array Context!1874 Bool)) false)))))

(declare-fun mapNonEmpty!8717 () Bool)

(declare-fun mapRes!8717 () Bool)

(declare-fun tp!523342 () Bool)

(assert (=> mapNonEmpty!8717 (= mapRes!8717 (and tp!523342 e!1182159))))

(declare-fun mapRest!8717 () (Array (_ BitVec 32) List!20525))

(declare-fun mapKey!8717 () (_ BitVec 32))

(assert (=> mapNonEmpty!8717 (= mapRest!8714 (store mapRest!8717 mapKey!8717 mapValue!8717))))

(declare-fun b!1850240 () Bool)

(declare-fun tp!523345 () Bool)

(assert (=> b!1850240 (= e!1182160 tp!523345)))

(declare-fun condMapEmpty!8717 () Bool)

(assert (=> mapNonEmpty!8714 (= condMapEmpty!8717 (= mapRest!8714 ((as const (Array (_ BitVec 32) List!20525)) mapDefault!8717)))))

(assert (=> mapNonEmpty!8714 (= tp!523267 (and e!1182156 mapRes!8717))))

(declare-fun setNonEmpty!11338 () Bool)

(declare-fun tp!523347 () Bool)

(declare-fun setElem!11337 () Context!1874)

(assert (=> setNonEmpty!11338 (= setRes!11338 (and tp!523347 (inv!26848 setElem!11337) e!1182158))))

(declare-fun setRest!11338 () (InoxSet Context!1874))

(assert (=> setNonEmpty!11338 (= (_2!11257 (h!25854 mapDefault!8717)) ((_ map or) (store ((as const (Array Context!1874 Bool)) false) setElem!11337 true) setRest!11338))))

(declare-fun mapIsEmpty!8717 () Bool)

(assert (=> mapIsEmpty!8717 mapRes!8717))

(assert (= (and mapNonEmpty!8714 condMapEmpty!8717) mapIsEmpty!8717))

(assert (= (and mapNonEmpty!8714 (not condMapEmpty!8717)) mapNonEmpty!8717))

(assert (= b!1850239 b!1850236))

(assert (= (and b!1850239 condSetEmpty!11338) setIsEmpty!11338))

(assert (= (and b!1850239 (not condSetEmpty!11338)) setNonEmpty!11337))

(assert (= setNonEmpty!11337 b!1850240))

(assert (= (and mapNonEmpty!8717 ((_ is Cons!20453) mapValue!8717)) b!1850239))

(assert (= b!1850237 b!1850238))

(assert (= (and b!1850237 condSetEmpty!11337) setIsEmpty!11337))

(assert (= (and b!1850237 (not condSetEmpty!11337)) setNonEmpty!11338))

(assert (= setNonEmpty!11338 b!1850235))

(assert (= (and mapNonEmpty!8714 ((_ is Cons!20453) mapDefault!8717)) b!1850237))

(declare-fun m!2277059 () Bool)

(assert (=> b!1850239 m!2277059))

(declare-fun m!2277061 () Bool)

(assert (=> setNonEmpty!11337 m!2277061))

(declare-fun m!2277063 () Bool)

(assert (=> setNonEmpty!11338 m!2277063))

(declare-fun m!2277065 () Bool)

(assert (=> b!1850237 m!2277065))

(declare-fun m!2277067 () Bool)

(assert (=> mapNonEmpty!8717 m!2277067))

(declare-fun b!1850241 () Bool)

(declare-fun e!1182161 () Bool)

(declare-fun tp!523352 () Bool)

(assert (=> b!1850241 (= e!1182161 tp!523352)))

(declare-fun setElem!11339 () Context!1874)

(declare-fun setRes!11339 () Bool)

(declare-fun setNonEmpty!11339 () Bool)

(declare-fun tp!523351 () Bool)

(assert (=> setNonEmpty!11339 (= setRes!11339 (and tp!523351 (inv!26848 setElem!11339) e!1182161))))

(declare-fun setRest!11339 () (InoxSet Context!1874))

(assert (=> setNonEmpty!11339 (= (_2!11257 (h!25854 mapValue!8714)) ((_ map or) (store ((as const (Array Context!1874 Bool)) false) setElem!11339 true) setRest!11339))))

(declare-fun setIsEmpty!11339 () Bool)

(assert (=> setIsEmpty!11339 setRes!11339))

(declare-fun b!1850242 () Bool)

(declare-fun e!1182163 () Bool)

(declare-fun tp!523350 () Bool)

(assert (=> b!1850242 (= e!1182163 tp!523350)))

(declare-fun e!1182162 () Bool)

(declare-fun b!1850243 () Bool)

(declare-fun tp!523353 () Bool)

(assert (=> b!1850243 (= e!1182162 (and (inv!26848 (_1!11256 (_1!11257 (h!25854 mapValue!8714)))) e!1182163 tp_is_empty!8493 setRes!11339 tp!523353))))

(declare-fun condSetEmpty!11339 () Bool)

(assert (=> b!1850243 (= condSetEmpty!11339 (= (_2!11257 (h!25854 mapValue!8714)) ((as const (Array Context!1874 Bool)) false)))))

(assert (=> mapNonEmpty!8714 (= tp!523265 e!1182162)))

(assert (= b!1850243 b!1850242))

(assert (= (and b!1850243 condSetEmpty!11339) setIsEmpty!11339))

(assert (= (and b!1850243 (not condSetEmpty!11339)) setNonEmpty!11339))

(assert (= setNonEmpty!11339 b!1850241))

(assert (= (and mapNonEmpty!8714 ((_ is Cons!20453) mapValue!8714)) b!1850243))

(declare-fun m!2277069 () Bool)

(assert (=> setNonEmpty!11339 m!2277069))

(declare-fun m!2277071 () Bool)

(assert (=> b!1850243 m!2277071))

(declare-fun b!1850244 () Bool)

(declare-fun e!1182164 () Bool)

(declare-fun tp!523356 () Bool)

(assert (=> b!1850244 (= e!1182164 tp!523356)))

(declare-fun tp!523355 () Bool)

(declare-fun setRes!11340 () Bool)

(declare-fun setNonEmpty!11340 () Bool)

(declare-fun setElem!11340 () Context!1874)

(assert (=> setNonEmpty!11340 (= setRes!11340 (and tp!523355 (inv!26848 setElem!11340) e!1182164))))

(declare-fun setRest!11340 () (InoxSet Context!1874))

(assert (=> setNonEmpty!11340 (= (_2!11257 (h!25854 (zeroValue!2124 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391)))))))) ((_ map or) (store ((as const (Array Context!1874 Bool)) false) setElem!11340 true) setRest!11340))))

(declare-fun setIsEmpty!11340 () Bool)

(assert (=> setIsEmpty!11340 setRes!11340))

(declare-fun b!1850245 () Bool)

(declare-fun e!1182166 () Bool)

(declare-fun tp!523354 () Bool)

(assert (=> b!1850245 (= e!1182166 tp!523354)))

(declare-fun e!1182165 () Bool)

(declare-fun b!1850246 () Bool)

(declare-fun tp!523357 () Bool)

(assert (=> b!1850246 (= e!1182165 (and (inv!26848 (_1!11256 (_1!11257 (h!25854 (zeroValue!2124 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391)))))))))) e!1182166 tp_is_empty!8493 setRes!11340 tp!523357))))

(declare-fun condSetEmpty!11340 () Bool)

(assert (=> b!1850246 (= condSetEmpty!11340 (= (_2!11257 (h!25854 (zeroValue!2124 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391)))))))) ((as const (Array Context!1874 Bool)) false)))))

(assert (=> b!1850137 (= tp!523270 e!1182165)))

(assert (= b!1850246 b!1850245))

(assert (= (and b!1850246 condSetEmpty!11340) setIsEmpty!11340))

(assert (= (and b!1850246 (not condSetEmpty!11340)) setNonEmpty!11340))

(assert (= setNonEmpty!11340 b!1850244))

(assert (= (and b!1850137 ((_ is Cons!20453) (zeroValue!2124 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391)))))))) b!1850246))

(declare-fun m!2277073 () Bool)

(assert (=> setNonEmpty!11340 m!2277073))

(declare-fun m!2277075 () Bool)

(assert (=> b!1850246 m!2277075))

(declare-fun b!1850247 () Bool)

(declare-fun e!1182167 () Bool)

(declare-fun tp!523360 () Bool)

(assert (=> b!1850247 (= e!1182167 tp!523360)))

(declare-fun setNonEmpty!11341 () Bool)

(declare-fun setElem!11341 () Context!1874)

(declare-fun setRes!11341 () Bool)

(declare-fun tp!523359 () Bool)

(assert (=> setNonEmpty!11341 (= setRes!11341 (and tp!523359 (inv!26848 setElem!11341) e!1182167))))

(declare-fun setRest!11341 () (InoxSet Context!1874))

(assert (=> setNonEmpty!11341 (= (_2!11257 (h!25854 (minValue!2124 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391)))))))) ((_ map or) (store ((as const (Array Context!1874 Bool)) false) setElem!11341 true) setRest!11341))))

(declare-fun setIsEmpty!11341 () Bool)

(assert (=> setIsEmpty!11341 setRes!11341))

(declare-fun b!1850248 () Bool)

(declare-fun e!1182169 () Bool)

(declare-fun tp!523358 () Bool)

(assert (=> b!1850248 (= e!1182169 tp!523358)))

(declare-fun b!1850249 () Bool)

(declare-fun e!1182168 () Bool)

(declare-fun tp!523361 () Bool)

(assert (=> b!1850249 (= e!1182168 (and (inv!26848 (_1!11256 (_1!11257 (h!25854 (minValue!2124 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391)))))))))) e!1182169 tp_is_empty!8493 setRes!11341 tp!523361))))

(declare-fun condSetEmpty!11341 () Bool)

(assert (=> b!1850249 (= condSetEmpty!11341 (= (_2!11257 (h!25854 (minValue!2124 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391)))))))) ((as const (Array Context!1874 Bool)) false)))))

(assert (=> b!1850137 (= tp!523274 e!1182168)))

(assert (= b!1850249 b!1850248))

(assert (= (and b!1850249 condSetEmpty!11341) setIsEmpty!11341))

(assert (= (and b!1850249 (not condSetEmpty!11341)) setNonEmpty!11341))

(assert (= setNonEmpty!11341 b!1850247))

(assert (= (and b!1850137 ((_ is Cons!20453) (minValue!2124 (v!25964 (underlying!3947 (v!25965 (underlying!3948 (cache!2192 cacheUp!391)))))))) b!1850249))

(declare-fun m!2277077 () Bool)

(assert (=> setNonEmpty!11341 m!2277077))

(declare-fun m!2277079 () Bool)

(assert (=> b!1850249 m!2277079))

(declare-fun b!1850250 () Bool)

(declare-fun e!1182170 () Bool)

(assert (=> b!1850250 (= e!1182170 tp_is_empty!8493)))

(declare-fun b!1850253 () Bool)

(declare-fun tp!523362 () Bool)

(declare-fun tp!523363 () Bool)

(assert (=> b!1850253 (= e!1182170 (and tp!523362 tp!523363))))

(declare-fun b!1850251 () Bool)

(declare-fun tp!523364 () Bool)

(declare-fun tp!523366 () Bool)

(assert (=> b!1850251 (= e!1182170 (and tp!523364 tp!523366))))

(declare-fun b!1850252 () Bool)

(declare-fun tp!523365 () Bool)

(assert (=> b!1850252 (= e!1182170 tp!523365)))

(assert (=> b!1850127 (= tp!523268 e!1182170)))

(assert (= (and b!1850127 ((_ is ElementMatch!5027) (regex!3666 (h!25852 rs!164)))) b!1850250))

(assert (= (and b!1850127 ((_ is Concat!8809) (regex!3666 (h!25852 rs!164)))) b!1850251))

(assert (= (and b!1850127 ((_ is Star!5027) (regex!3666 (h!25852 rs!164)))) b!1850252))

(assert (= (and b!1850127 ((_ is Union!5027) (regex!3666 (h!25852 rs!164)))) b!1850253))

(declare-fun b_lambda!61423 () Bool)

(assert (= b_lambda!61421 (or (and b!1850125 b_free!51649) (and b!1850136 b_free!51655 (= (toChars!5096 (transformation!3666 (h!25852 rs!164))) (toChars!5096 (transformation!3666 (rule!5860 t!6207))))) (and b!1850209 b_free!51661 (= (toChars!5096 (transformation!3666 (h!25852 (t!172296 rs!164)))) (toChars!5096 (transformation!3666 (rule!5860 t!6207))))) b_lambda!61423)))

(check-sat (not b_next!52365) (not b!1850238) b_and!143879 (not b!1850249) (not d!565714) (not b!1850241) (not b!1850235) (not b!1850240) (not b!1850151) (not b_next!52351) (not b!1850248) b_and!143887 (not b_next!52353) (not b!1850237) (not b!1850170) (not setNonEmpty!11332) (not b!1850208) b_and!143885 (not b!1850164) (not b_next!52355) (not b_next!52361) (not b!1850246) (not b!1850155) (not b!1850165) (not d!565726) (not b!1850252) (not b_next!52359) (not b!1850245) (not b!1850220) (not b!1850161) (not setNonEmpty!11337) (not d!565704) (not b_next!52357) (not b!1850253) (not b!1850198) (not b!1850171) (not b!1850242) (not d!565724) (not b!1850176) (not b!1850219) (not b!1850218) (not b!1850251) (not b!1850154) (not d!565706) (not b!1850196) (not tb!112877) (not b!1850236) (not b!1850244) (not b!1850179) (not setNonEmpty!11341) (not b!1850247) (not b!1850184) (not b!1850207) (not mapNonEmpty!8717) (not b!1850239) b_and!143883 b_and!143873 (not b!1850158) (not d!565708) (not b!1850197) (not b!1850243) (not d!565710) b_and!143875 (not setNonEmpty!11339) b_and!143881 (not setNonEmpty!11338) (not b_next!52363) b_and!143869 (not setNonEmpty!11340) tp_is_empty!8493 (not b_lambda!61423))
(check-sat (not b_next!52351) (not b_next!52365) b_and!143879 b_and!143885 (not b_next!52355) (not b_next!52361) (not b_next!52359) (not b_next!52357) b_and!143875 b_and!143881 b_and!143887 (not b_next!52353) b_and!143883 b_and!143873 (not b_next!52363) b_and!143869)
