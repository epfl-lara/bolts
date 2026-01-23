; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201488 () Bool)

(assert start!201488)

(declare-fun b!2045061 () Bool)

(declare-fun b_free!57177 () Bool)

(declare-fun b_next!57881 () Bool)

(assert (=> b!2045061 (= b_free!57177 (not b_next!57881))))

(declare-fun tp!608306 () Bool)

(declare-fun b_and!163117 () Bool)

(assert (=> b!2045061 (= tp!608306 b_and!163117)))

(declare-fun b!2045029 () Bool)

(declare-fun b_free!57179 () Bool)

(declare-fun b_next!57883 () Bool)

(assert (=> b!2045029 (= b_free!57179 (not b_next!57883))))

(declare-fun tp!608323 () Bool)

(declare-fun b_and!163119 () Bool)

(assert (=> b!2045029 (= tp!608323 b_and!163119)))

(declare-fun b_free!57181 () Bool)

(declare-fun b_next!57885 () Bool)

(assert (=> b!2045029 (= b_free!57181 (not b_next!57885))))

(declare-fun tp!608295 () Bool)

(declare-fun b_and!163121 () Bool)

(assert (=> b!2045029 (= tp!608295 b_and!163121)))

(declare-fun b!2045044 () Bool)

(declare-fun b_free!57183 () Bool)

(declare-fun b_next!57887 () Bool)

(assert (=> b!2045044 (= b_free!57183 (not b_next!57887))))

(declare-fun tp!608299 () Bool)

(declare-fun b_and!163123 () Bool)

(assert (=> b!2045044 (= tp!608299 b_and!163123)))

(declare-fun b!2045055 () Bool)

(declare-fun b_free!57185 () Bool)

(declare-fun b_next!57889 () Bool)

(assert (=> b!2045055 (= b_free!57185 (not b_next!57889))))

(declare-fun tp!608317 () Bool)

(declare-fun b_and!163125 () Bool)

(assert (=> b!2045055 (= tp!608317 b_and!163125)))

(declare-fun b!2045073 () Bool)

(declare-fun b_free!57187 () Bool)

(declare-fun b_next!57891 () Bool)

(assert (=> b!2045073 (= b_free!57187 (not b_next!57891))))

(declare-fun tp!608303 () Bool)

(declare-fun b_and!163127 () Bool)

(assert (=> b!2045073 (= tp!608303 b_and!163127)))

(declare-fun b!2045074 () Bool)

(declare-fun b_free!57189 () Bool)

(declare-fun b_next!57893 () Bool)

(assert (=> b!2045074 (= b_free!57189 (not b_next!57893))))

(declare-fun tp!608294 () Bool)

(declare-fun b_and!163129 () Bool)

(assert (=> b!2045074 (= tp!608294 b_and!163129)))

(declare-fun b!2045071 () Bool)

(declare-fun b_free!57191 () Bool)

(declare-fun b_next!57895 () Bool)

(assert (=> b!2045071 (= b_free!57191 (not b_next!57895))))

(declare-fun tp!608305 () Bool)

(declare-fun b_and!163131 () Bool)

(assert (=> b!2045071 (= tp!608305 b_and!163131)))

(declare-fun b!2045064 () Bool)

(declare-fun b_free!57193 () Bool)

(declare-fun b_next!57897 () Bool)

(assert (=> b!2045064 (= b_free!57193 (not b_next!57897))))

(declare-fun tp!608297 () Bool)

(declare-fun b_and!163133 () Bool)

(assert (=> b!2045064 (= tp!608297 b_and!163133)))

(declare-fun b!2045037 () Bool)

(declare-fun b_free!57195 () Bool)

(declare-fun b_next!57899 () Bool)

(assert (=> b!2045037 (= b_free!57195 (not b_next!57899))))

(declare-fun tp!608304 () Bool)

(declare-fun b_and!163135 () Bool)

(assert (=> b!2045037 (= tp!608304 b_and!163135)))

(declare-fun b_free!57197 () Bool)

(declare-fun b_next!57901 () Bool)

(assert (=> b!2045037 (= b_free!57197 (not b_next!57901))))

(declare-fun tp!608329 () Bool)

(declare-fun b_and!163137 () Bool)

(assert (=> b!2045037 (= tp!608329 b_and!163137)))

(declare-fun b!2045046 () Bool)

(declare-fun b_free!57199 () Bool)

(declare-fun b_next!57903 () Bool)

(assert (=> b!2045046 (= b_free!57199 (not b_next!57903))))

(declare-fun tp!608320 () Bool)

(declare-fun b_and!163139 () Bool)

(assert (=> b!2045046 (= tp!608320 b_and!163139)))

(declare-fun b!2045025 () Bool)

(declare-fun e!1291913 () Bool)

(declare-fun e!1291939 () Bool)

(assert (=> b!2045025 (= e!1291913 e!1291939)))

(declare-fun mapNonEmpty!9310 () Bool)

(declare-fun mapRes!9310 () Bool)

(declare-fun tp!608310 () Bool)

(declare-fun tp!608289 () Bool)

(assert (=> mapNonEmpty!9310 (= mapRes!9310 (and tp!608310 tp!608289))))

(declare-datatypes ((C!11048 0))(
  ( (C!11049 (val!6510 Int)) )
))
(declare-datatypes ((Regex!5451 0))(
  ( (ElementMatch!5451 (c!331045 C!11048)) (Concat!9610 (regOne!11414 Regex!5451) (regTwo!11414 Regex!5451)) (EmptyExpr!5451) (Star!5451 (reg!5780 Regex!5451)) (EmptyLang!5451) (Union!5451 (regOne!11415 Regex!5451) (regTwo!11415 Regex!5451)) )
))
(declare-datatypes ((List!22535 0))(
  ( (Nil!22451) (Cons!22451 (h!27852 Regex!5451) (t!191649 List!22535)) )
))
(declare-datatypes ((Context!2042 0))(
  ( (Context!2043 (exprs!1521 List!22535)) )
))
(declare-datatypes ((Hashable!1931 0))(
  ( (HashableExt!1930 (__x!13956 Int)) )
))
(declare-datatypes ((tuple3!2090 0))(
  ( (tuple3!2091 (_1!12092 Regex!5451) (_2!12092 Context!2042) (_3!1509 C!11048)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21166 0))(
  ( (tuple2!21167 (_1!12093 tuple3!2090) (_2!12093 (InoxSet Context!2042))) )
))
(declare-datatypes ((List!22536 0))(
  ( (Nil!22452) (Cons!22452 (h!27853 tuple2!21166) (t!191650 List!22536)) )
))
(declare-datatypes ((array!6954 0))(
  ( (array!6955 (arr!3089 (Array (_ BitVec 32) (_ BitVec 64))) (size!17553 (_ BitVec 32))) )
))
(declare-datatypes ((array!6956 0))(
  ( (array!6957 (arr!3090 (Array (_ BitVec 32) List!22536)) (size!17554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4034 0))(
  ( (LongMapFixedSize!4035 (defaultEntry!2382 Int) (mask!6058 (_ BitVec 32)) (extraKeys!2265 (_ BitVec 32)) (zeroValue!2275 List!22536) (minValue!2275 List!22536) (_size!4085 (_ BitVec 32)) (_keys!2314 array!6954) (_values!2297 array!6956) (_vacant!2078 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7893 0))(
  ( (Cell!7894 (v!27139 LongMapFixedSize!4034)) )
))
(declare-datatypes ((MutLongMap!2017 0))(
  ( (LongMap!2017 (underlying!4229 Cell!7893)) (MutLongMapExt!2016 (__x!13957 Int)) )
))
(declare-datatypes ((Cell!7895 0))(
  ( (Cell!7896 (v!27140 MutLongMap!2017)) )
))
(declare-datatypes ((MutableMap!1931 0))(
  ( (MutableMapExt!1930 (__x!13958 Int)) (HashMap!1931 (underlying!4230 Cell!7895) (hashF!3854 Hashable!1931) (_size!4086 (_ BitVec 32)) (defaultValue!2093 Int)) )
))
(declare-datatypes ((CacheDown!1230 0))(
  ( (CacheDown!1231 (cache!2312 MutableMap!1931)) )
))
(declare-fun cacheDown!575 () CacheDown!1230)

(declare-fun mapKey!9310 () (_ BitVec 32))

(declare-fun mapValue!9311 () List!22536)

(declare-fun mapRest!9310 () (Array (_ BitVec 32) List!22536))

(assert (=> mapNonEmpty!9310 (= (arr!3090 (_values!2297 (v!27139 (underlying!4229 (v!27140 (underlying!4230 (cache!2312 cacheDown!575))))))) (store mapRest!9310 mapKey!9310 mapValue!9311))))

(declare-datatypes ((List!22537 0))(
  ( (Nil!22453) (Cons!22453 (h!27854 (_ BitVec 16)) (t!191651 List!22537)) )
))
(declare-datatypes ((TokenValue!4159 0))(
  ( (FloatLiteralValue!8318 (text!29558 List!22537)) (TokenValueExt!4158 (__x!13959 Int)) (Broken!20795 (value!126283 List!22537)) (Object!4242) (End!4159) (Def!4159) (Underscore!4159) (Match!4159) (Else!4159) (Error!4159) (Case!4159) (If!4159) (Extends!4159) (Abstract!4159) (Class!4159) (Val!4159) (DelimiterValue!8318 (del!4219 List!22537)) (KeywordValue!4165 (value!126284 List!22537)) (CommentValue!8318 (value!126285 List!22537)) (WhitespaceValue!8318 (value!126286 List!22537)) (IndentationValue!4159 (value!126287 List!22537)) (String!25986) (Int32!4159) (Broken!20796 (value!126288 List!22537)) (Boolean!4160) (Unit!37038) (OperatorValue!4162 (op!4219 List!22537)) (IdentifierValue!8318 (value!126289 List!22537)) (IdentifierValue!8319 (value!126290 List!22537)) (WhitespaceValue!8319 (value!126291 List!22537)) (True!8318) (False!8318) (Broken!20797 (value!126292 List!22537)) (Broken!20798 (value!126293 List!22537)) (True!8319) (RightBrace!4159) (RightBracket!4159) (Colon!4159) (Null!4159) (Comma!4159) (LeftBracket!4159) (False!8319) (LeftBrace!4159) (ImaginaryLiteralValue!4159 (text!29559 List!22537)) (StringLiteralValue!12477 (value!126294 List!22537)) (EOFValue!4159 (value!126295 List!22537)) (IdentValue!4159 (value!126296 List!22537)) (DelimiterValue!8319 (value!126297 List!22537)) (DedentValue!4159 (value!126298 List!22537)) (NewLineValue!4159 (value!126299 List!22537)) (IntegerValue!12477 (value!126300 (_ BitVec 32)) (text!29560 List!22537)) (IntegerValue!12478 (value!126301 Int) (text!29561 List!22537)) (Times!4159) (Or!4159) (Equal!4159) (Minus!4159) (Broken!20799 (value!126302 List!22537)) (And!4159) (Div!4159) (LessEqual!4159) (Mod!4159) (Concat!9611) (Not!4159) (Plus!4159) (SpaceValue!4159 (value!126303 List!22537)) (IntegerValue!12479 (value!126304 Int) (text!29562 List!22537)) (StringLiteralValue!12478 (text!29563 List!22537)) (FloatLiteralValue!8319 (text!29564 List!22537)) (BytesLiteralValue!4159 (value!126305 List!22537)) (CommentValue!8319 (value!126306 List!22537)) (StringLiteralValue!12479 (value!126307 List!22537)) (ErrorTokenValue!4159 (msg!4220 List!22537)) )
))
(declare-datatypes ((tuple2!21168 0))(
  ( (tuple2!21169 (_1!12094 Context!2042) (_2!12094 C!11048)) )
))
(declare-datatypes ((tuple2!21170 0))(
  ( (tuple2!21171 (_1!12095 tuple2!21168) (_2!12095 (InoxSet Context!2042))) )
))
(declare-datatypes ((List!22538 0))(
  ( (Nil!22454) (Cons!22454 (h!27855 tuple2!21170) (t!191652 List!22538)) )
))
(declare-datatypes ((array!6958 0))(
  ( (array!6959 (arr!3091 (Array (_ BitVec 32) List!22538)) (size!17555 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4036 0))(
  ( (LongMapFixedSize!4037 (defaultEntry!2383 Int) (mask!6059 (_ BitVec 32)) (extraKeys!2266 (_ BitVec 32)) (zeroValue!2276 List!22538) (minValue!2276 List!22538) (_size!4087 (_ BitVec 32)) (_keys!2315 array!6954) (_values!2298 array!6958) (_vacant!2079 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7897 0))(
  ( (Cell!7898 (v!27141 LongMapFixedSize!4036)) )
))
(declare-datatypes ((MutLongMap!2018 0))(
  ( (LongMap!2018 (underlying!4231 Cell!7897)) (MutLongMapExt!2017 (__x!13960 Int)) )
))
(declare-datatypes ((List!22539 0))(
  ( (Nil!22455) (Cons!22455 (h!27856 C!11048) (t!191653 List!22539)) )
))
(declare-datatypes ((IArray!15047 0))(
  ( (IArray!15048 (innerList!7581 List!22539)) )
))
(declare-datatypes ((Conc!7521 0))(
  ( (Node!7521 (left!17819 Conc!7521) (right!18149 Conc!7521) (csize!15272 Int) (cheight!7732 Int)) (Leaf!11014 (xs!10429 IArray!15047) (csize!15273 Int)) (Empty!7521) )
))
(declare-datatypes ((BalanceConc!14804 0))(
  ( (BalanceConc!14805 (c!331046 Conc!7521)) )
))
(declare-datatypes ((TokenValueInjection!7902 0))(
  ( (TokenValueInjection!7903 (toValue!5706 Int) (toChars!5565 Int)) )
))
(declare-datatypes ((Hashable!1932 0))(
  ( (HashableExt!1931 (__x!13961 Int)) )
))
(declare-datatypes ((Cell!7899 0))(
  ( (Cell!7900 (v!27142 MutLongMap!2018)) )
))
(declare-datatypes ((MutableMap!1932 0))(
  ( (MutableMapExt!1931 (__x!13962 Int)) (HashMap!1932 (underlying!4232 Cell!7899) (hashF!3855 Hashable!1932) (_size!4088 (_ BitVec 32)) (defaultValue!2094 Int)) )
))
(declare-datatypes ((CacheUp!1226 0))(
  ( (CacheUp!1227 (cache!2313 MutableMap!1932)) )
))
(declare-datatypes ((String!25987 0))(
  ( (String!25988 (value!126308 String)) )
))
(declare-datatypes ((Rule!7846 0))(
  ( (Rule!7847 (regex!4023 Regex!5451) (tag!4513 String!25987) (isSeparator!4023 Bool) (transformation!4023 TokenValueInjection!7902)) )
))
(declare-datatypes ((Token!7596 0))(
  ( (Token!7597 (value!126309 TokenValue!4159) (rule!6259 Rule!7846) (size!17556 Int) (originalCharacters!4829 List!22539)) )
))
(declare-datatypes ((tuple2!21172 0))(
  ( (tuple2!21173 (_1!12096 Token!7596) (_2!12096 BalanceConc!14804)) )
))
(declare-datatypes ((Option!4704 0))(
  ( (None!4703) (Some!4703 (v!27143 tuple2!21172)) )
))
(declare-datatypes ((tuple3!2092 0))(
  ( (tuple3!2093 (_1!12097 Option!4704) (_2!12097 CacheUp!1226) (_3!1510 CacheDown!1230)) )
))
(declare-fun err!3145 () tuple3!2092)

(declare-fun tp!608315 () Bool)

(declare-fun e!1291947 () Bool)

(declare-fun b!2045026 () Bool)

(declare-fun e!1291942 () Bool)

(declare-fun inv!21 (TokenValue!4159) Bool)

(assert (=> b!2045026 (= e!1291942 (and (inv!21 (value!126309 (_1!12096 (v!27143 (_1!12097 err!3145))))) e!1291947 tp!608315))))

(declare-fun b!2045027 () Bool)

(declare-fun e!1291924 () Bool)

(assert (=> b!2045027 (= e!1291924 e!1291913)))

(declare-fun b!2045028 () Bool)

(declare-fun e!1291901 () Bool)

(declare-fun e!1291949 () Bool)

(assert (=> b!2045028 (= e!1291901 e!1291949)))

(declare-fun e!1291903 () Bool)

(assert (=> b!2045029 (= e!1291903 (and tp!608323 tp!608295))))

(declare-fun b!2045030 () Bool)

(declare-fun res!895918 () Bool)

(declare-fun e!1291900 () Bool)

(assert (=> b!2045030 (=> (not res!895918) (not e!1291900))))

(declare-datatypes ((List!22540 0))(
  ( (Nil!22456) (Cons!22456 (h!27857 Token!7596) (t!191654 List!22540)) )
))
(declare-datatypes ((IArray!15049 0))(
  ( (IArray!15050 (innerList!7582 List!22540)) )
))
(declare-datatypes ((Conc!7522 0))(
  ( (Node!7522 (left!17820 Conc!7522) (right!18150 Conc!7522) (csize!15274 Int) (cheight!7733 Int)) (Leaf!11015 (xs!10430 IArray!15049) (csize!15275 Int)) (Empty!7522) )
))
(declare-datatypes ((BalanceConc!14806 0))(
  ( (BalanceConc!14807 (c!331047 Conc!7522)) )
))
(declare-datatypes ((tuple2!21174 0))(
  ( (tuple2!21175 (_1!12098 BalanceConc!14806) (_2!12098 BalanceConc!14804)) )
))
(declare-fun lt!766832 () tuple2!21174)

(declare-fun lt!766827 () tuple2!21174)

(declare-fun list!9197 (BalanceConc!14804) List!22539)

(assert (=> b!2045030 (= res!895918 (= (list!9197 (_2!12098 lt!766832)) (list!9197 (_2!12098 lt!766827))))))

(declare-fun b!2045031 () Bool)

(declare-fun e!1291930 () Bool)

(declare-fun e!1291905 () Bool)

(declare-fun tp!608319 () Bool)

(assert (=> b!2045031 (= e!1291930 (and e!1291905 tp!608319))))

(declare-fun e!1291933 () Bool)

(declare-fun b!2045032 () Bool)

(declare-fun e!1291929 () Bool)

(declare-fun inv!29802 (Token!7596) Bool)

(declare-fun inv!29803 (BalanceConc!14804) Bool)

(assert (=> b!2045032 (= e!1291933 (and (inv!29802 (_1!12096 (v!27143 (_1!12097 err!3145)))) e!1291942 (inv!29803 (_2!12096 (v!27143 (_1!12097 err!3145)))) e!1291929))))

(declare-fun b!2045033 () Bool)

(declare-fun e!1291915 () Bool)

(declare-fun totalInput!418 () BalanceConc!14804)

(declare-fun tp!608322 () Bool)

(declare-fun inv!29804 (Conc!7521) Bool)

(assert (=> b!2045033 (= e!1291915 (and (inv!29804 (c!331046 totalInput!418)) tp!608322))))

(declare-fun b!2045034 () Bool)

(declare-fun e!1291899 () Bool)

(declare-fun e!1291918 () Bool)

(assert (=> b!2045034 (= e!1291899 e!1291918)))

(declare-fun b!2045035 () Bool)

(declare-fun e!1291902 () Bool)

(assert (=> b!2045035 (= e!1291900 (not e!1291902))))

(declare-fun res!895920 () Bool)

(assert (=> b!2045035 (=> res!895920 e!1291902)))

(declare-fun lt!766834 () List!22539)

(declare-fun lt!766829 () List!22539)

(declare-fun isSuffix!480 (List!22539 List!22539) Bool)

(assert (=> b!2045035 (= res!895920 (not (isSuffix!480 lt!766834 lt!766829)))))

(declare-fun lt!766830 () List!22539)

(assert (=> b!2045035 (isSuffix!480 lt!766834 lt!766830)))

(declare-datatypes ((Unit!37039 0))(
  ( (Unit!37040) )
))
(declare-fun lt!766828 () Unit!37039)

(declare-fun lt!766838 () List!22539)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!381 (List!22539 List!22539) Unit!37039)

(assert (=> b!2045035 (= lt!766828 (lemmaConcatTwoListThenFSndIsSuffix!381 lt!766838 lt!766834))))

(declare-fun b!2045036 () Bool)

(declare-fun res!895922 () Bool)

(declare-fun e!1291935 () Bool)

(assert (=> b!2045036 (=> (not res!895922) (not e!1291935))))

(declare-fun lt!766825 () tuple2!21174)

(declare-fun isEmpty!13980 (List!22539) Bool)

(assert (=> b!2045036 (= res!895922 (isEmpty!13980 (list!9197 (_2!12098 lt!766825))))))

(declare-fun e!1291922 () Bool)

(assert (=> b!2045037 (= e!1291922 (and tp!608304 tp!608329))))

(declare-fun b!2045038 () Bool)

(declare-fun e!1291917 () Bool)

(declare-fun tp!608326 () Bool)

(assert (=> b!2045038 (= e!1291917 (and tp!608326 mapRes!9310))))

(declare-fun condMapEmpty!9312 () Bool)

(declare-fun mapDefault!9311 () List!22536)

(assert (=> b!2045038 (= condMapEmpty!9312 (= (arr!3090 (_values!2297 (v!27139 (underlying!4229 (v!27140 (underlying!4230 (cache!2312 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22536)) mapDefault!9311)))))

(declare-fun b!2045039 () Bool)

(declare-fun res!895917 () Bool)

(declare-fun e!1291923 () Bool)

(assert (=> b!2045039 (=> (not res!895917) (not e!1291923))))

(declare-datatypes ((LexerInterface!3635 0))(
  ( (LexerInterfaceExt!3632 (__x!13963 Int)) (Lexer!3633) )
))
(declare-fun thiss!12889 () LexerInterface!3635)

(declare-datatypes ((List!22541 0))(
  ( (Nil!22457) (Cons!22457 (h!27858 Rule!7846) (t!191655 List!22541)) )
))
(declare-fun rules!1563 () List!22541)

(declare-fun rulesInvariant!3234 (LexerInterface!3635 List!22541) Bool)

(assert (=> b!2045039 (= res!895917 (rulesInvariant!3234 thiss!12889 rules!1563))))

(declare-fun b!2045040 () Bool)

(declare-fun e!1291940 () Bool)

(declare-fun e!1291950 () Bool)

(assert (=> b!2045040 (= e!1291940 e!1291950)))

(declare-fun b!2045041 () Bool)

(declare-fun e!1291911 () tuple3!2092)

(declare-fun call!125305 () tuple3!2092)

(assert (=> b!2045041 (= e!1291911 call!125305)))

(declare-fun b!2045042 () Bool)

(declare-fun e!1291920 () Bool)

(declare-fun treated!60 () BalanceConc!14804)

(declare-fun tp!608312 () Bool)

(assert (=> b!2045042 (= e!1291920 (and (inv!29804 (c!331046 treated!60)) tp!608312))))

(declare-fun b!2045043 () Bool)

(assert (=> b!2045043 (= e!1291935 e!1291900)))

(declare-fun res!895925 () Bool)

(assert (=> b!2045043 (=> (not res!895925) (not e!1291900))))

(declare-fun acc!382 () BalanceConc!14806)

(declare-fun list!9198 (BalanceConc!14806) List!22540)

(declare-fun ++!6097 (BalanceConc!14806 BalanceConc!14806) BalanceConc!14806)

(assert (=> b!2045043 (= res!895925 (= (list!9198 (_1!12098 lt!766832)) (list!9198 (++!6097 acc!382 (_1!12098 lt!766827)))))))

(declare-fun input!986 () BalanceConc!14804)

(declare-fun lexRec!440 (LexerInterface!3635 List!22541 BalanceConc!14804) tuple2!21174)

(assert (=> b!2045043 (= lt!766827 (lexRec!440 thiss!12889 rules!1563 input!986))))

(assert (=> b!2045043 (= lt!766832 (lexRec!440 thiss!12889 rules!1563 totalInput!418))))

(declare-fun e!1291938 () Bool)

(declare-fun e!1291936 () Bool)

(assert (=> b!2045044 (= e!1291938 (and e!1291936 tp!608299))))

(declare-fun b!2045045 () Bool)

(declare-fun res!895919 () Bool)

(assert (=> b!2045045 (=> (not res!895919) (not e!1291923))))

(declare-fun isEmpty!13981 (List!22541) Bool)

(assert (=> b!2045045 (= res!895919 (not (isEmpty!13981 rules!1563)))))

(declare-fun e!1291928 () Bool)

(declare-fun tp!608300 () Bool)

(declare-fun e!1291925 () Bool)

(declare-fun tp!608313 () Bool)

(declare-fun array_inv!2217 (array!6954) Bool)

(declare-fun array_inv!2218 (array!6956) Bool)

(assert (=> b!2045046 (= e!1291928 (and tp!608320 tp!608313 tp!608300 (array_inv!2217 (_keys!2314 (v!27139 (underlying!4229 (v!27140 (underlying!4230 (cache!2312 (_3!1510 err!3145)))))))) (array_inv!2218 (_values!2297 (v!27139 (underlying!4229 (v!27140 (underlying!4230 (cache!2312 (_3!1510 err!3145)))))))) e!1291925))))

(declare-fun b!2045047 () Bool)

(declare-fun tp!608309 () Bool)

(assert (=> b!2045047 (= e!1291929 (and (inv!29804 (c!331046 (_2!12096 (v!27143 (_1!12097 err!3145))))) tp!608309))))

(declare-fun mapNonEmpty!9311 () Bool)

(declare-fun mapRes!9312 () Bool)

(declare-fun tp!608311 () Bool)

(declare-fun tp!608302 () Bool)

(assert (=> mapNonEmpty!9311 (= mapRes!9312 (and tp!608311 tp!608302))))

(declare-fun mapRest!9313 () (Array (_ BitVec 32) List!22536))

(declare-fun mapKey!9313 () (_ BitVec 32))

(declare-fun mapValue!9312 () List!22536)

(assert (=> mapNonEmpty!9311 (= (arr!3090 (_values!2297 (v!27139 (underlying!4229 (v!27140 (underlying!4230 (cache!2312 (_3!1510 err!3145)))))))) (store mapRest!9313 mapKey!9313 mapValue!9312))))

(declare-fun mapNonEmpty!9312 () Bool)

(declare-fun mapRes!9311 () Bool)

(declare-fun tp!608308 () Bool)

(declare-fun tp!608290 () Bool)

(assert (=> mapNonEmpty!9312 (= mapRes!9311 (and tp!608308 tp!608290))))

(declare-fun cacheUp!562 () CacheUp!1226)

(declare-fun mapRest!9312 () (Array (_ BitVec 32) List!22538))

(declare-fun mapKey!9312 () (_ BitVec 32))

(declare-fun mapValue!9313 () List!22538)

(assert (=> mapNonEmpty!9312 (= (arr!3091 (_values!2298 (v!27141 (underlying!4231 (v!27142 (underlying!4232 (cache!2313 cacheUp!562))))))) (store mapRest!9312 mapKey!9312 mapValue!9313))))

(declare-fun b!2045048 () Bool)

(declare-fun e!1291932 () Bool)

(assert (=> b!2045048 (= e!1291902 e!1291932)))

(declare-fun res!895926 () Bool)

(assert (=> b!2045048 (=> res!895926 e!1291932)))

(declare-fun lt!766836 () tuple3!2092)

(get-info :version)

(assert (=> b!2045048 (= res!895926 (not ((_ is Some!4703) (_1!12097 lt!766836))))))

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!14 (LexerInterface!3635 List!22541 BalanceConc!14804 BalanceConc!14804 CacheUp!1226 CacheDown!1230) tuple3!2092)

(assert (=> b!2045048 (= lt!766836 (maxPrefixZipperSequenceV2MemOnlyDeriv!14 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2045049 () Bool)

(declare-fun e!1291926 () Bool)

(assert (=> b!2045049 (= e!1291926 e!1291901)))

(declare-fun b!2045050 () Bool)

(declare-fun e!1291948 () Bool)

(declare-fun e!1291945 () Bool)

(assert (=> b!2045050 (= e!1291948 e!1291945)))

(declare-fun b!2045051 () Bool)

(declare-fun e!1291898 () Bool)

(declare-fun e!1291897 () Bool)

(declare-fun lt!766839 () MutLongMap!2017)

(assert (=> b!2045051 (= e!1291898 (and e!1291897 ((_ is LongMap!2017) lt!766839)))))

(assert (=> b!2045051 (= lt!766839 (v!27140 (underlying!4230 (cache!2312 cacheDown!575))))))

(declare-fun b!2045052 () Bool)

(declare-fun res!895916 () Bool)

(assert (=> b!2045052 (=> (not res!895916) (not e!1291900))))

(declare-fun valid!1607 (CacheDown!1230) Bool)

(assert (=> b!2045052 (= res!895916 (valid!1607 cacheDown!575))))

(declare-fun b!2045053 () Bool)

(declare-fun e!1291909 () Bool)

(declare-fun lt!766835 () tuple3!2092)

(assert (=> b!2045053 (= e!1291909 (= lt!766835 e!1291911))))

(declare-fun c!331043 () Bool)

(assert (=> b!2045053 (= c!331043 (and ((_ is Cons!22457) rules!1563) ((_ is Nil!22457) (t!191655 rules!1563))))))

(declare-fun b!2045054 () Bool)

(declare-fun e!1291927 () Bool)

(assert (=> b!2045054 (= e!1291923 e!1291927)))

(declare-fun res!895921 () Bool)

(assert (=> b!2045054 (=> (not res!895921) (not e!1291927))))

(assert (=> b!2045054 (= res!895921 (= lt!766829 lt!766830))))

(declare-fun ++!6098 (List!22539 List!22539) List!22539)

(assert (=> b!2045054 (= lt!766830 (++!6098 lt!766838 lt!766834))))

(assert (=> b!2045054 (= lt!766829 (list!9197 totalInput!418))))

(assert (=> b!2045054 (= lt!766834 (list!9197 input!986))))

(assert (=> b!2045054 (= lt!766838 (list!9197 treated!60))))

(declare-fun tp!608301 () Bool)

(declare-fun e!1291937 () Bool)

(declare-fun tp!608291 () Bool)

(declare-fun array_inv!2219 (array!6958) Bool)

(assert (=> b!2045055 (= e!1291949 (and tp!608317 tp!608291 tp!608301 (array_inv!2217 (_keys!2315 (v!27141 (underlying!4231 (v!27142 (underlying!4232 (cache!2313 cacheUp!562))))))) (array_inv!2219 (_values!2298 (v!27141 (underlying!4231 (v!27142 (underlying!4232 (cache!2313 cacheUp!562))))))) e!1291937))))

(declare-fun b!2045056 () Bool)

(declare-fun e!1291944 () Bool)

(declare-fun lt!766840 () MutLongMap!2018)

(assert (=> b!2045056 (= e!1291944 (and e!1291924 ((_ is LongMap!2018) lt!766840)))))

(assert (=> b!2045056 (= lt!766840 (v!27142 (underlying!4232 (cache!2313 (_2!12097 err!3145)))))))

(declare-fun mapNonEmpty!9313 () Bool)

(declare-fun mapRes!9313 () Bool)

(declare-fun tp!608307 () Bool)

(declare-fun tp!608325 () Bool)

(assert (=> mapNonEmpty!9313 (= mapRes!9313 (and tp!608307 tp!608325))))

(declare-fun mapValue!9310 () List!22538)

(declare-fun mapKey!9311 () (_ BitVec 32))

(declare-fun mapRest!9311 () (Array (_ BitVec 32) List!22538))

(assert (=> mapNonEmpty!9313 (= (arr!3091 (_values!2298 (v!27141 (underlying!4231 (v!27142 (underlying!4232 (cache!2313 (_2!12097 err!3145)))))))) (store mapRest!9311 mapKey!9311 mapValue!9310))))

(declare-fun mapIsEmpty!9310 () Bool)

(assert (=> mapIsEmpty!9310 mapRes!9310))

(declare-fun b!2045057 () Bool)

(declare-fun tp!608293 () Bool)

(declare-fun inv!29801 (String!25987) Bool)

(declare-fun inv!29805 (TokenValueInjection!7902) Bool)

(assert (=> b!2045057 (= e!1291947 (and tp!608293 (inv!29801 (tag!4513 (rule!6259 (_1!12096 (v!27143 (_1!12097 err!3145)))))) (inv!29805 (transformation!4023 (rule!6259 (_1!12096 (v!27143 (_1!12097 err!3145)))))) e!1291922))))

(declare-fun b!2045058 () Bool)

(declare-fun e!1291943 () Bool)

(declare-fun tp!608314 () Bool)

(assert (=> b!2045058 (= e!1291943 (and tp!608314 mapRes!9313))))

(declare-fun condMapEmpty!9310 () Bool)

(declare-fun mapDefault!9313 () List!22538)

(assert (=> b!2045058 (= condMapEmpty!9310 (= (arr!3091 (_values!2298 (v!27141 (underlying!4231 (v!27142 (underlying!4232 (cache!2313 (_2!12097 err!3145)))))))) ((as const (Array (_ BitVec 32) List!22538)) mapDefault!9313)))))

(declare-fun b!2045059 () Bool)

(declare-fun e!1291910 () Bool)

(declare-fun tp!608296 () Bool)

(assert (=> b!2045059 (= e!1291910 (and (inv!29804 (c!331046 input!986)) tp!608296))))

(declare-fun b!2045060 () Bool)

(declare-fun e!1291912 () Bool)

(assert (=> b!2045060 (= e!1291912 e!1291938)))

(declare-fun res!895923 () Bool)

(assert (=> start!201488 (=> (not res!895923) (not e!1291923))))

(assert (=> start!201488 (= res!895923 ((_ is Lexer!3633) thiss!12889))))

(assert (=> start!201488 e!1291923))

(declare-fun inv!29806 (CacheDown!1230) Bool)

(assert (=> start!201488 (and (inv!29806 cacheDown!575) e!1291948)))

(assert (=> start!201488 true))

(declare-fun e!1291907 () Bool)

(declare-fun inv!29807 (CacheUp!1226) Bool)

(assert (=> start!201488 (and (inv!29807 cacheUp!562) e!1291907)))

(assert (=> start!201488 e!1291930))

(assert (=> start!201488 (and (inv!29803 totalInput!418) e!1291915)))

(assert (=> start!201488 (and (inv!29803 treated!60) e!1291920)))

(assert (=> start!201488 (and (inv!29803 input!986) e!1291910)))

(declare-fun e!1291904 () Bool)

(declare-fun inv!29808 (BalanceConc!14806) Bool)

(assert (=> start!201488 (and (inv!29808 acc!382) e!1291904)))

(assert (=> b!2045061 (= e!1291918 (and e!1291944 tp!608306))))

(declare-fun b!2045062 () Bool)

(declare-fun e!1291896 () Bool)

(assert (=> b!2045062 (= e!1291897 e!1291896)))

(declare-fun lt!766837 () tuple3!2092)

(declare-fun lt!766841 () tuple3!2092)

(declare-fun b!2045063 () Bool)

(assert (=> b!2045063 (= lt!766841 (maxPrefixZipperSequenceV2MemOnlyDeriv!14 thiss!12889 (t!191655 rules!1563) input!986 totalInput!418 (_2!12097 lt!766837) (_3!1510 lt!766837)))))

(assert (=> b!2045063 (= lt!766837 call!125305)))

(declare-fun e!1291946 () tuple3!2092)

(assert (=> b!2045063 (= e!1291946 (tuple3!2093 (ite (and ((_ is None!4703) (_1!12097 lt!766837)) ((_ is None!4703) (_1!12097 lt!766841))) None!4703 (ite ((_ is None!4703) (_1!12097 lt!766841)) (_1!12097 lt!766837) (ite ((_ is None!4703) (_1!12097 lt!766837)) (_1!12097 lt!766841) (ite (>= (size!17556 (_1!12096 (v!27143 (_1!12097 lt!766837)))) (size!17556 (_1!12096 (v!27143 (_1!12097 lt!766841))))) (Some!4703 (v!27143 (_1!12097 lt!766837))) (Some!4703 (v!27143 (_1!12097 lt!766841))))))) (_2!12097 lt!766841) (_3!1510 lt!766841)))))

(declare-fun tp!608316 () Bool)

(declare-fun tp!608327 () Bool)

(assert (=> b!2045064 (= e!1291939 (and tp!608297 tp!608316 tp!608327 (array_inv!2217 (_keys!2315 (v!27141 (underlying!4231 (v!27142 (underlying!4232 (cache!2313 (_2!12097 err!3145)))))))) (array_inv!2219 (_values!2298 (v!27141 (underlying!4231 (v!27142 (underlying!4232 (cache!2313 (_2!12097 err!3145)))))))) e!1291943))))

(declare-fun b!2045065 () Bool)

(declare-fun e!1291921 () Bool)

(assert (=> b!2045065 (= e!1291896 e!1291921)))

(declare-fun mapIsEmpty!9311 () Bool)

(assert (=> mapIsEmpty!9311 mapRes!9313))

(declare-fun b!2045066 () Bool)

(assert (=> b!2045066 (= e!1291911 e!1291946)))

(declare-fun c!331044 () Bool)

(assert (=> b!2045066 (= c!331044 ((_ is Cons!22457) rules!1563))))

(declare-fun b!2045067 () Bool)

(assert (=> b!2045067 (= e!1291927 e!1291935)))

(declare-fun res!895924 () Bool)

(assert (=> b!2045067 (=> (not res!895924) (not e!1291935))))

(assert (=> b!2045067 (= res!895924 (= (list!9198 (_1!12098 lt!766825)) (list!9198 acc!382)))))

(assert (=> b!2045067 (= lt!766825 (lexRec!440 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2045068 () Bool)

(declare-fun tp!608298 () Bool)

(assert (=> b!2045068 (= e!1291937 (and tp!608298 mapRes!9311))))

(declare-fun condMapEmpty!9313 () Bool)

(declare-fun mapDefault!9310 () List!22538)

(assert (=> b!2045068 (= condMapEmpty!9313 (= (arr!3091 (_values!2298 (v!27141 (underlying!4231 (v!27142 (underlying!4232 (cache!2313 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22538)) mapDefault!9310)))))

(declare-fun tp!608318 () Bool)

(declare-fun b!2045069 () Bool)

(assert (=> b!2045069 (= e!1291905 (and tp!608318 (inv!29801 (tag!4513 (h!27858 rules!1563))) (inv!29805 (transformation!4023 (h!27858 rules!1563))) e!1291903))))

(declare-fun b!2045070 () Bool)

(assert (=> b!2045070 (= e!1291950 e!1291928)))

(assert (=> b!2045071 (= e!1291945 (and e!1291898 tp!608305))))

(declare-fun b!2045072 () Bool)

(assert (=> b!2045072 true))

(assert (=> b!2045072 (and e!1291933 (inv!29807 (_2!12097 err!3145)) e!1291899 (inv!29806 (_3!1510 err!3145)) e!1291912)))

(assert (=> b!2045072 (= e!1291946 err!3145)))

(declare-fun bm!125300 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!6 (LexerInterface!3635 Rule!7846 BalanceConc!14804 BalanceConc!14804 CacheUp!1226 CacheDown!1230) tuple3!2092)

(assert (=> bm!125300 (= call!125305 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!6 thiss!12889 (h!27858 rules!1563) input!986 totalInput!418 (_2!12097 lt!766836) (_3!1510 lt!766836)))))

(declare-fun e!1291941 () Bool)

(declare-fun e!1291934 () Bool)

(assert (=> b!2045073 (= e!1291941 (and e!1291934 tp!608303))))

(declare-fun tp!608324 () Bool)

(declare-fun tp!608328 () Bool)

(assert (=> b!2045074 (= e!1291921 (and tp!608294 tp!608328 tp!608324 (array_inv!2217 (_keys!2314 (v!27139 (underlying!4229 (v!27140 (underlying!4230 (cache!2312 cacheDown!575))))))) (array_inv!2218 (_values!2297 (v!27139 (underlying!4229 (v!27140 (underlying!4230 (cache!2312 cacheDown!575))))))) e!1291917))))

(declare-fun b!2045075 () Bool)

(declare-fun tp!608292 () Bool)

(declare-fun inv!29809 (Conc!7522) Bool)

(assert (=> b!2045075 (= e!1291904 (and (inv!29809 (c!331047 acc!382)) tp!608292))))

(declare-fun mapIsEmpty!9312 () Bool)

(assert (=> mapIsEmpty!9312 mapRes!9311))

(declare-fun b!2045076 () Bool)

(assert (=> b!2045076 (= e!1291932 true)))

(assert (=> b!2045076 e!1291909))

(declare-fun res!895915 () Bool)

(assert (=> b!2045076 (=> (not res!895915) (not e!1291909))))

(declare-fun isPrefix!1995 (List!22539 List!22539) Bool)

(assert (=> b!2045076 (= res!895915 (isPrefix!1995 lt!766834 lt!766834))))

(declare-fun lt!766833 () Unit!37039)

(declare-fun lemmaIsPrefixRefl!1313 (List!22539 List!22539) Unit!37039)

(assert (=> b!2045076 (= lt!766833 (lemmaIsPrefixRefl!1313 lt!766834 lt!766834))))

(assert (=> b!2045076 (= lt!766835 (maxPrefixZipperSequenceV2MemOnlyDeriv!14 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12097 lt!766836) (_3!1510 lt!766836)))))

(declare-fun lt!766824 () tuple2!21174)

(assert (=> b!2045076 (= lt!766824 (lexRec!440 thiss!12889 rules!1563 (_2!12096 (v!27143 (_1!12097 lt!766836)))))))

(declare-fun b!2045077 () Bool)

(declare-fun lt!766831 () MutLongMap!2018)

(assert (=> b!2045077 (= e!1291934 (and e!1291926 ((_ is LongMap!2018) lt!766831)))))

(assert (=> b!2045077 (= lt!766831 (v!27142 (underlying!4232 (cache!2313 cacheUp!562))))))

(declare-fun b!2045078 () Bool)

(declare-fun lt!766826 () MutLongMap!2017)

(assert (=> b!2045078 (= e!1291936 (and e!1291940 ((_ is LongMap!2017) lt!766826)))))

(assert (=> b!2045078 (= lt!766826 (v!27140 (underlying!4230 (cache!2312 (_3!1510 err!3145)))))))

(declare-fun b!2045079 () Bool)

(assert (=> b!2045079 (= e!1291907 e!1291941)))

(declare-fun mapIsEmpty!9313 () Bool)

(assert (=> mapIsEmpty!9313 mapRes!9312))

(declare-fun b!2045080 () Bool)

(declare-fun res!895927 () Bool)

(assert (=> b!2045080 (=> (not res!895927) (not e!1291900))))

(declare-fun valid!1608 (CacheUp!1226) Bool)

(assert (=> b!2045080 (= res!895927 (valid!1608 cacheUp!562))))

(declare-fun b!2045081 () Bool)

(declare-fun tp!608321 () Bool)

(assert (=> b!2045081 (= e!1291925 (and tp!608321 mapRes!9312))))

(declare-fun condMapEmpty!9311 () Bool)

(declare-fun mapDefault!9312 () List!22536)

(assert (=> b!2045081 (= condMapEmpty!9311 (= (arr!3090 (_values!2297 (v!27139 (underlying!4229 (v!27140 (underlying!4230 (cache!2312 (_3!1510 err!3145)))))))) ((as const (Array (_ BitVec 32) List!22536)) mapDefault!9312)))))

(assert (= (and start!201488 res!895923) b!2045045))

(assert (= (and b!2045045 res!895919) b!2045039))

(assert (= (and b!2045039 res!895917) b!2045054))

(assert (= (and b!2045054 res!895921) b!2045067))

(assert (= (and b!2045067 res!895924) b!2045036))

(assert (= (and b!2045036 res!895922) b!2045043))

(assert (= (and b!2045043 res!895925) b!2045030))

(assert (= (and b!2045030 res!895918) b!2045080))

(assert (= (and b!2045080 res!895927) b!2045052))

(assert (= (and b!2045052 res!895916) b!2045035))

(assert (= (and b!2045035 (not res!895920)) b!2045048))

(assert (= (and b!2045048 (not res!895926)) b!2045076))

(assert (= (and b!2045076 res!895915) b!2045053))

(assert (= (and b!2045053 c!331043) b!2045041))

(assert (= (and b!2045053 (not c!331043)) b!2045066))

(assert (= (and b!2045066 c!331044) b!2045063))

(assert (= (and b!2045066 (not c!331044)) b!2045072))

(assert (= b!2045057 b!2045037))

(assert (= b!2045026 b!2045057))

(assert (= b!2045032 b!2045026))

(assert (= b!2045032 b!2045047))

(assert (= (and b!2045072 ((_ is Some!4703) (_1!12097 err!3145))) b!2045032))

(assert (= (and b!2045058 condMapEmpty!9310) mapIsEmpty!9311))

(assert (= (and b!2045058 (not condMapEmpty!9310)) mapNonEmpty!9313))

(assert (= b!2045064 b!2045058))

(assert (= b!2045025 b!2045064))

(assert (= b!2045027 b!2045025))

(assert (= (and b!2045056 ((_ is LongMap!2018) (v!27142 (underlying!4232 (cache!2313 (_2!12097 err!3145)))))) b!2045027))

(assert (= b!2045061 b!2045056))

(assert (= (and b!2045034 ((_ is HashMap!1932) (cache!2313 (_2!12097 err!3145)))) b!2045061))

(assert (= b!2045072 b!2045034))

(assert (= (and b!2045081 condMapEmpty!9311) mapIsEmpty!9313))

(assert (= (and b!2045081 (not condMapEmpty!9311)) mapNonEmpty!9311))

(assert (= b!2045046 b!2045081))

(assert (= b!2045070 b!2045046))

(assert (= b!2045040 b!2045070))

(assert (= (and b!2045078 ((_ is LongMap!2017) (v!27140 (underlying!4230 (cache!2312 (_3!1510 err!3145)))))) b!2045040))

(assert (= b!2045044 b!2045078))

(assert (= (and b!2045060 ((_ is HashMap!1931) (cache!2312 (_3!1510 err!3145)))) b!2045044))

(assert (= b!2045072 b!2045060))

(assert (= (or b!2045041 b!2045063) bm!125300))

(assert (= (and b!2045038 condMapEmpty!9312) mapIsEmpty!9310))

(assert (= (and b!2045038 (not condMapEmpty!9312)) mapNonEmpty!9310))

(assert (= b!2045074 b!2045038))

(assert (= b!2045065 b!2045074))

(assert (= b!2045062 b!2045065))

(assert (= (and b!2045051 ((_ is LongMap!2017) (v!27140 (underlying!4230 (cache!2312 cacheDown!575))))) b!2045062))

(assert (= b!2045071 b!2045051))

(assert (= (and b!2045050 ((_ is HashMap!1931) (cache!2312 cacheDown!575))) b!2045071))

(assert (= start!201488 b!2045050))

(assert (= (and b!2045068 condMapEmpty!9313) mapIsEmpty!9312))

(assert (= (and b!2045068 (not condMapEmpty!9313)) mapNonEmpty!9312))

(assert (= b!2045055 b!2045068))

(assert (= b!2045028 b!2045055))

(assert (= b!2045049 b!2045028))

(assert (= (and b!2045077 ((_ is LongMap!2018) (v!27142 (underlying!4232 (cache!2313 cacheUp!562))))) b!2045049))

(assert (= b!2045073 b!2045077))

(assert (= (and b!2045079 ((_ is HashMap!1932) (cache!2313 cacheUp!562))) b!2045073))

(assert (= start!201488 b!2045079))

(assert (= b!2045069 b!2045029))

(assert (= b!2045031 b!2045069))

(assert (= (and start!201488 ((_ is Cons!22457) rules!1563)) b!2045031))

(assert (= start!201488 b!2045033))

(assert (= start!201488 b!2045042))

(assert (= start!201488 b!2045059))

(assert (= start!201488 b!2045075))

(declare-fun m!2488907 () Bool)

(assert (=> mapNonEmpty!9313 m!2488907))

(declare-fun m!2488909 () Bool)

(assert (=> mapNonEmpty!9311 m!2488909))

(declare-fun m!2488911 () Bool)

(assert (=> b!2045069 m!2488911))

(declare-fun m!2488913 () Bool)

(assert (=> b!2045069 m!2488913))

(declare-fun m!2488915 () Bool)

(assert (=> b!2045074 m!2488915))

(declare-fun m!2488917 () Bool)

(assert (=> b!2045074 m!2488917))

(declare-fun m!2488919 () Bool)

(assert (=> b!2045026 m!2488919))

(declare-fun m!2488921 () Bool)

(assert (=> b!2045048 m!2488921))

(declare-fun m!2488923 () Bool)

(assert (=> b!2045039 m!2488923))

(declare-fun m!2488925 () Bool)

(assert (=> b!2045064 m!2488925))

(declare-fun m!2488927 () Bool)

(assert (=> b!2045064 m!2488927))

(declare-fun m!2488929 () Bool)

(assert (=> b!2045032 m!2488929))

(declare-fun m!2488931 () Bool)

(assert (=> b!2045032 m!2488931))

(declare-fun m!2488933 () Bool)

(assert (=> start!201488 m!2488933))

(declare-fun m!2488935 () Bool)

(assert (=> start!201488 m!2488935))

(declare-fun m!2488937 () Bool)

(assert (=> start!201488 m!2488937))

(declare-fun m!2488939 () Bool)

(assert (=> start!201488 m!2488939))

(declare-fun m!2488941 () Bool)

(assert (=> start!201488 m!2488941))

(declare-fun m!2488943 () Bool)

(assert (=> start!201488 m!2488943))

(declare-fun m!2488945 () Bool)

(assert (=> b!2045046 m!2488945))

(declare-fun m!2488947 () Bool)

(assert (=> b!2045046 m!2488947))

(declare-fun m!2488949 () Bool)

(assert (=> b!2045033 m!2488949))

(declare-fun m!2488951 () Bool)

(assert (=> b!2045055 m!2488951))

(declare-fun m!2488953 () Bool)

(assert (=> b!2045055 m!2488953))

(declare-fun m!2488955 () Bool)

(assert (=> mapNonEmpty!9310 m!2488955))

(declare-fun m!2488957 () Bool)

(assert (=> b!2045042 m!2488957))

(declare-fun m!2488959 () Bool)

(assert (=> b!2045035 m!2488959))

(declare-fun m!2488961 () Bool)

(assert (=> b!2045035 m!2488961))

(declare-fun m!2488963 () Bool)

(assert (=> b!2045035 m!2488963))

(declare-fun m!2488965 () Bool)

(assert (=> b!2045030 m!2488965))

(declare-fun m!2488967 () Bool)

(assert (=> b!2045030 m!2488967))

(declare-fun m!2488969 () Bool)

(assert (=> b!2045043 m!2488969))

(declare-fun m!2488971 () Bool)

(assert (=> b!2045043 m!2488971))

(declare-fun m!2488973 () Bool)

(assert (=> b!2045043 m!2488973))

(assert (=> b!2045043 m!2488969))

(declare-fun m!2488975 () Bool)

(assert (=> b!2045043 m!2488975))

(declare-fun m!2488977 () Bool)

(assert (=> b!2045043 m!2488977))

(declare-fun m!2488979 () Bool)

(assert (=> b!2045080 m!2488979))

(declare-fun m!2488981 () Bool)

(assert (=> bm!125300 m!2488981))

(declare-fun m!2488983 () Bool)

(assert (=> b!2045045 m!2488983))

(declare-fun m!2488985 () Bool)

(assert (=> b!2045052 m!2488985))

(declare-fun m!2488987 () Bool)

(assert (=> b!2045076 m!2488987))

(declare-fun m!2488989 () Bool)

(assert (=> b!2045076 m!2488989))

(declare-fun m!2488991 () Bool)

(assert (=> b!2045076 m!2488991))

(declare-fun m!2488993 () Bool)

(assert (=> b!2045076 m!2488993))

(declare-fun m!2488995 () Bool)

(assert (=> b!2045054 m!2488995))

(declare-fun m!2488997 () Bool)

(assert (=> b!2045054 m!2488997))

(declare-fun m!2488999 () Bool)

(assert (=> b!2045054 m!2488999))

(declare-fun m!2489001 () Bool)

(assert (=> b!2045054 m!2489001))

(declare-fun m!2489003 () Bool)

(assert (=> mapNonEmpty!9312 m!2489003))

(declare-fun m!2489005 () Bool)

(assert (=> b!2045063 m!2489005))

(declare-fun m!2489007 () Bool)

(assert (=> b!2045059 m!2489007))

(declare-fun m!2489009 () Bool)

(assert (=> b!2045047 m!2489009))

(declare-fun m!2489011 () Bool)

(assert (=> b!2045057 m!2489011))

(declare-fun m!2489013 () Bool)

(assert (=> b!2045057 m!2489013))

(declare-fun m!2489015 () Bool)

(assert (=> b!2045075 m!2489015))

(declare-fun m!2489017 () Bool)

(assert (=> b!2045072 m!2489017))

(declare-fun m!2489019 () Bool)

(assert (=> b!2045072 m!2489019))

(declare-fun m!2489021 () Bool)

(assert (=> b!2045036 m!2489021))

(assert (=> b!2045036 m!2489021))

(declare-fun m!2489023 () Bool)

(assert (=> b!2045036 m!2489023))

(declare-fun m!2489025 () Bool)

(assert (=> b!2045067 m!2489025))

(declare-fun m!2489027 () Bool)

(assert (=> b!2045067 m!2489027))

(declare-fun m!2489029 () Bool)

(assert (=> b!2045067 m!2489029))

(check-sat (not b!2045076) b_and!163121 (not mapNonEmpty!9312) (not b!2045035) b_and!163131 b_and!163135 (not b_next!57893) (not start!201488) b_and!163133 (not b!2045069) (not b_next!57899) (not b!2045072) (not mapNonEmpty!9313) (not b!2045068) b_and!163117 (not bm!125300) (not mapNonEmpty!9310) (not b!2045047) b_and!163119 (not b!2045059) (not b_next!57887) (not b!2045032) (not b_next!57901) (not b!2045048) (not b!2045074) (not b!2045031) b_and!163123 b_and!163137 (not b!2045075) (not b!2045046) (not b_next!57889) (not b!2045030) (not b!2045043) (not b!2045026) (not b!2045063) (not b!2045052) (not mapNonEmpty!9311) b_and!163125 b_and!163139 (not b!2045057) (not b!2045033) b_and!163127 (not b!2045058) (not b_next!57895) (not b!2045054) (not b_next!57897) (not b!2045038) (not b!2045042) (not b_next!57883) (not b!2045045) (not b_next!57903) (not b_next!57885) (not b_next!57881) (not b!2045081) (not b!2045036) (not b!2045080) (not b!2045067) b_and!163129 (not b_next!57891) (not b!2045064) (not b!2045039) (not b!2045055))
(check-sat (not b_next!57899) b_and!163121 b_and!163117 b_and!163119 (not b_next!57887) (not b_next!57901) b_and!163131 (not b_next!57889) b_and!163135 (not b_next!57893) (not b_next!57897) (not b_next!57883) b_and!163133 b_and!163123 b_and!163137 b_and!163125 b_and!163139 b_and!163127 (not b_next!57895) (not b_next!57903) (not b_next!57885) (not b_next!57881) b_and!163129 (not b_next!57891))
