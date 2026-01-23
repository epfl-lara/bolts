; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274794 () Bool)

(assert start!274794)

(declare-fun b!2829890 () Bool)

(declare-fun b_free!81257 () Bool)

(declare-fun b_next!81961 () Bool)

(assert (=> b!2829890 (= b_free!81257 (not b_next!81961))))

(declare-fun tp!903970 () Bool)

(declare-fun b_and!206915 () Bool)

(assert (=> b!2829890 (= tp!903970 b_and!206915)))

(declare-fun b!2829893 () Bool)

(declare-fun b_free!81259 () Bool)

(declare-fun b_next!81963 () Bool)

(assert (=> b!2829893 (= b_free!81259 (not b_next!81963))))

(declare-fun tp!903982 () Bool)

(declare-fun b_and!206917 () Bool)

(assert (=> b!2829893 (= tp!903982 b_and!206917)))

(declare-fun b!2829897 () Bool)

(declare-fun b_free!81261 () Bool)

(declare-fun b_next!81965 () Bool)

(assert (=> b!2829897 (= b_free!81261 (not b_next!81965))))

(declare-fun tp!903985 () Bool)

(declare-fun b_and!206919 () Bool)

(assert (=> b!2829897 (= tp!903985 b_and!206919)))

(declare-fun b!2829891 () Bool)

(declare-fun b_free!81263 () Bool)

(declare-fun b_next!81967 () Bool)

(assert (=> b!2829891 (= b_free!81263 (not b_next!81967))))

(declare-fun tp!903978 () Bool)

(declare-fun b_and!206921 () Bool)

(assert (=> b!2829891 (= tp!903978 b_and!206921)))

(declare-fun b_free!81265 () Bool)

(declare-fun b_next!81969 () Bool)

(assert (=> b!2829891 (= b_free!81265 (not b_next!81969))))

(declare-fun tp!903986 () Bool)

(declare-fun b_and!206923 () Bool)

(assert (=> b!2829891 (= tp!903986 b_and!206923)))

(declare-fun b!2829870 () Bool)

(declare-fun b_free!81267 () Bool)

(declare-fun b_next!81971 () Bool)

(assert (=> b!2829870 (= b_free!81267 (not b_next!81971))))

(declare-fun tp!903988 () Bool)

(declare-fun b_and!206925 () Bool)

(assert (=> b!2829870 (= tp!903988 b_and!206925)))

(declare-fun tp!903984 () Bool)

(declare-fun tp!903981 () Bool)

(declare-fun e!1791422 () Bool)

(declare-datatypes ((C!16940 0))(
  ( (C!16941 (val!10482 Int)) )
))
(declare-datatypes ((Regex!8379 0))(
  ( (ElementMatch!8379 (c!457769 C!16940)) (Concat!13597 (regOne!17270 Regex!8379) (regTwo!17270 Regex!8379)) (EmptyExpr!8379) (Star!8379 (reg!8708 Regex!8379)) (EmptyLang!8379) (Union!8379 (regOne!17271 Regex!8379) (regTwo!17271 Regex!8379)) )
))
(declare-datatypes ((List!33426 0))(
  ( (Nil!33302) (Cons!33302 (h!38722 Regex!8379) (t!231275 List!33426)) )
))
(declare-datatypes ((Context!4966 0))(
  ( (Context!4967 (exprs!2983 List!33426)) )
))
(declare-datatypes ((tuple3!5272 0))(
  ( (tuple3!5273 (_1!19848 Regex!8379) (_2!19848 Context!4966) (_3!3106 C!16940)) )
))
(declare-datatypes ((Hashable!4001 0))(
  ( (HashableExt!4000 (__x!22156 Int)) )
))
(declare-datatypes ((array!14519 0))(
  ( (array!14520 (arr!6471 (Array (_ BitVec 32) (_ BitVec 64))) (size!25924 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33484 0))(
  ( (tuple2!33485 (_1!19849 tuple3!5272) (_2!19849 (InoxSet Context!4966))) )
))
(declare-datatypes ((List!33427 0))(
  ( (Nil!33303) (Cons!33303 (h!38723 tuple2!33484) (t!231276 List!33427)) )
))
(declare-datatypes ((array!14521 0))(
  ( (array!14522 (arr!6472 (Array (_ BitVec 32) List!33427)) (size!25925 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8170 0))(
  ( (LongMapFixedSize!8171 (defaultEntry!4470 Int) (mask!10055 (_ BitVec 32)) (extraKeys!4334 (_ BitVec 32)) (zeroValue!4344 List!33427) (minValue!4344 List!33427) (_size!8213 (_ BitVec 32)) (_keys!4385 array!14519) (_values!4366 array!14521) (_vacant!4146 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16149 0))(
  ( (Cell!16150 (v!34327 LongMapFixedSize!8170)) )
))
(declare-datatypes ((MutLongMap!4085 0))(
  ( (LongMap!4085 (underlying!8399 Cell!16149)) (MutLongMapExt!4084 (__x!22157 Int)) )
))
(declare-datatypes ((Cell!16151 0))(
  ( (Cell!16152 (v!34328 MutLongMap!4085)) )
))
(declare-datatypes ((MutableMap!3991 0))(
  ( (MutableMapExt!3990 (__x!22158 Int)) (HashMap!3991 (underlying!8400 Cell!16151) (hashF!6033 Hashable!4001) (_size!8214 (_ BitVec 32)) (defaultValue!4162 Int)) )
))
(declare-datatypes ((CacheDown!2810 0))(
  ( (CacheDown!2811 (cache!4126 MutableMap!3991)) )
))
(declare-fun cacheDown!433 () CacheDown!2810)

(declare-fun e!1791408 () Bool)

(declare-fun array_inv!4635 (array!14519) Bool)

(declare-fun array_inv!4636 (array!14521) Bool)

(assert (=> b!2829870 (= e!1791422 (and tp!903988 tp!903984 tp!903981 (array_inv!4635 (_keys!4385 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))))) (array_inv!4636 (_values!4366 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))))) e!1791408))))

(declare-fun mapNonEmpty!18542 () Bool)

(declare-fun mapRes!18543 () Bool)

(declare-fun tp!903975 () Bool)

(declare-fun tp!903972 () Bool)

(assert (=> mapNonEmpty!18542 (= mapRes!18543 (and tp!903975 tp!903972))))

(declare-datatypes ((tuple2!33486 0))(
  ( (tuple2!33487 (_1!19850 Context!4966) (_2!19850 C!16940)) )
))
(declare-datatypes ((tuple2!33488 0))(
  ( (tuple2!33489 (_1!19851 tuple2!33486) (_2!19851 (InoxSet Context!4966))) )
))
(declare-datatypes ((List!33428 0))(
  ( (Nil!33304) (Cons!33304 (h!38724 tuple2!33488) (t!231277 List!33428)) )
))
(declare-fun mapRest!18542 () (Array (_ BitVec 32) List!33428))

(declare-fun mapValue!18543 () List!33428)

(declare-fun mapKey!18543 () (_ BitVec 32))

(declare-datatypes ((array!14523 0))(
  ( (array!14524 (arr!6473 (Array (_ BitVec 32) List!33428)) (size!25926 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8172 0))(
  ( (LongMapFixedSize!8173 (defaultEntry!4471 Int) (mask!10056 (_ BitVec 32)) (extraKeys!4335 (_ BitVec 32)) (zeroValue!4345 List!33428) (minValue!4345 List!33428) (_size!8215 (_ BitVec 32)) (_keys!4386 array!14519) (_values!4367 array!14523) (_vacant!4147 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4002 0))(
  ( (HashableExt!4001 (__x!22159 Int)) )
))
(declare-datatypes ((Cell!16153 0))(
  ( (Cell!16154 (v!34329 LongMapFixedSize!8172)) )
))
(declare-datatypes ((MutLongMap!4086 0))(
  ( (LongMap!4086 (underlying!8401 Cell!16153)) (MutLongMapExt!4085 (__x!22160 Int)) )
))
(declare-datatypes ((Cell!16155 0))(
  ( (Cell!16156 (v!34330 MutLongMap!4086)) )
))
(declare-datatypes ((MutableMap!3992 0))(
  ( (MutableMapExt!3991 (__x!22161 Int)) (HashMap!3992 (underlying!8402 Cell!16155) (hashF!6034 Hashable!4002) (_size!8216 (_ BitVec 32)) (defaultValue!4163 Int)) )
))
(declare-datatypes ((CacheUp!2688 0))(
  ( (CacheUp!2689 (cache!4127 MutableMap!3992)) )
))
(declare-fun cacheUp!420 () CacheUp!2688)

(assert (=> mapNonEmpty!18542 (= (arr!6473 (_values!4367 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))))) (store mapRest!18542 mapKey!18543 mapValue!18543))))

(declare-fun b!2829871 () Bool)

(declare-fun e!1791410 () Bool)

(declare-fun e!1791412 () Bool)

(declare-fun lt!1009354 () MutLongMap!4086)

(get-info :version)

(assert (=> b!2829871 (= e!1791410 (and e!1791412 ((_ is LongMap!4086) lt!1009354)))))

(assert (=> b!2829871 (= lt!1009354 (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))))

(declare-fun b!2829872 () Bool)

(declare-fun e!1791420 () Bool)

(declare-datatypes ((List!33429 0))(
  ( (Nil!33305) (Cons!33305 (h!38725 C!16940) (t!231278 List!33429)) )
))
(declare-datatypes ((IArray!20667 0))(
  ( (IArray!20668 (innerList!10391 List!33429)) )
))
(declare-datatypes ((Conc!10331 0))(
  ( (Node!10331 (left!25136 Conc!10331) (right!25466 Conc!10331) (csize!20892 Int) (cheight!10542 Int)) (Leaf!15733 (xs!13443 IArray!20667) (csize!20893 Int)) (Empty!10331) )
))
(declare-datatypes ((BalanceConc!20300 0))(
  ( (BalanceConc!20301 (c!457770 Conc!10331)) )
))
(declare-datatypes ((List!33430 0))(
  ( (Nil!33306) (Cons!33306 (h!38726 (_ BitVec 16)) (t!231279 List!33430)) )
))
(declare-datatypes ((TokenValue!5218 0))(
  ( (FloatLiteralValue!10436 (text!36971 List!33430)) (TokenValueExt!5217 (__x!22162 Int)) (Broken!26090 (value!160501 List!33430)) (Object!5341) (End!5218) (Def!5218) (Underscore!5218) (Match!5218) (Else!5218) (Error!5218) (Case!5218) (If!5218) (Extends!5218) (Abstract!5218) (Class!5218) (Val!5218) (DelimiterValue!10436 (del!5278 List!33430)) (KeywordValue!5224 (value!160502 List!33430)) (CommentValue!10436 (value!160503 List!33430)) (WhitespaceValue!10436 (value!160504 List!33430)) (IndentationValue!5218 (value!160505 List!33430)) (String!36611) (Int32!5218) (Broken!26091 (value!160506 List!33430)) (Boolean!5219) (Unit!47318) (OperatorValue!5221 (op!5278 List!33430)) (IdentifierValue!10436 (value!160507 List!33430)) (IdentifierValue!10437 (value!160508 List!33430)) (WhitespaceValue!10437 (value!160509 List!33430)) (True!10436) (False!10436) (Broken!26092 (value!160510 List!33430)) (Broken!26093 (value!160511 List!33430)) (True!10437) (RightBrace!5218) (RightBracket!5218) (Colon!5218) (Null!5218) (Comma!5218) (LeftBracket!5218) (False!10437) (LeftBrace!5218) (ImaginaryLiteralValue!5218 (text!36972 List!33430)) (StringLiteralValue!15654 (value!160512 List!33430)) (EOFValue!5218 (value!160513 List!33430)) (IdentValue!5218 (value!160514 List!33430)) (DelimiterValue!10437 (value!160515 List!33430)) (DedentValue!5218 (value!160516 List!33430)) (NewLineValue!5218 (value!160517 List!33430)) (IntegerValue!15654 (value!160518 (_ BitVec 32)) (text!36973 List!33430)) (IntegerValue!15655 (value!160519 Int) (text!36974 List!33430)) (Times!5218) (Or!5218) (Equal!5218) (Minus!5218) (Broken!26094 (value!160520 List!33430)) (And!5218) (Div!5218) (LessEqual!5218) (Mod!5218) (Concat!13598) (Not!5218) (Plus!5218) (SpaceValue!5218 (value!160521 List!33430)) (IntegerValue!15656 (value!160522 Int) (text!36975 List!33430)) (StringLiteralValue!15655 (text!36976 List!33430)) (FloatLiteralValue!10437 (text!36977 List!33430)) (BytesLiteralValue!5218 (value!160523 List!33430)) (CommentValue!10437 (value!160524 List!33430)) (StringLiteralValue!15656 (value!160525 List!33430)) (ErrorTokenValue!5218 (msg!5279 List!33430)) )
))
(declare-datatypes ((TokenValueInjection!9864 0))(
  ( (TokenValueInjection!9865 (toValue!7014 Int) (toChars!6873 Int)) )
))
(declare-datatypes ((String!36612 0))(
  ( (String!36613 (value!160526 String)) )
))
(declare-datatypes ((Rule!9776 0))(
  ( (Rule!9777 (regex!4988 Regex!8379) (tag!5492 String!36612) (isSeparator!4988 Bool) (transformation!4988 TokenValueInjection!9864)) )
))
(declare-datatypes ((Token!9378 0))(
  ( (Token!9379 (value!160527 TokenValue!5218) (rule!7416 Rule!9776) (size!25927 Int) (originalCharacters!5720 List!33429)) )
))
(declare-fun lt!1009359 () Token!9378)

(declare-fun size!25928 (BalanceConc!20300) Int)

(declare-fun charsOf!3093 (Token!9378) BalanceConc!20300)

(assert (=> b!2829872 (= e!1791420 (> (size!25928 (charsOf!3093 lt!1009359)) 0))))

(declare-fun b!2829873 () Bool)

(declare-fun e!1791409 () Bool)

(declare-fun e!1791423 () Bool)

(assert (=> b!2829873 (= e!1791409 e!1791423)))

(declare-fun b!2829875 () Bool)

(declare-fun e!1791406 () Bool)

(declare-fun e!1791431 () Bool)

(assert (=> b!2829875 (= e!1791406 e!1791431)))

(declare-fun res!1178070 () Bool)

(assert (=> b!2829875 (=> res!1178070 e!1791431)))

(declare-datatypes ((List!33431 0))(
  ( (Nil!33307) (Cons!33307 (h!38727 Token!9378) (t!231280 List!33431)) )
))
(declare-datatypes ((IArray!20669 0))(
  ( (IArray!20670 (innerList!10392 List!33431)) )
))
(declare-datatypes ((Conc!10332 0))(
  ( (Node!10332 (left!25137 Conc!10332) (right!25467 Conc!10332) (csize!20894 Int) (cheight!10543 Int)) (Leaf!15734 (xs!13444 IArray!20669) (csize!20895 Int)) (Empty!10332) )
))
(declare-datatypes ((BalanceConc!20302 0))(
  ( (BalanceConc!20303 (c!457771 Conc!10332)) )
))
(declare-fun v!6247 () BalanceConc!20302)

(declare-fun contains!6085 (BalanceConc!20302 Token!9378) Bool)

(assert (=> b!2829875 (= res!1178070 (not (contains!6085 v!6247 lt!1009359)))))

(declare-fun from!827 () Int)

(declare-fun apply!7776 (BalanceConc!20302 Int) Token!9378)

(assert (=> b!2829875 (= lt!1009359 (apply!7776 v!6247 (+ 1 from!827)))))

(declare-fun mapNonEmpty!18543 () Bool)

(declare-fun mapRes!18542 () Bool)

(declare-fun tp!903979 () Bool)

(declare-fun tp!903973 () Bool)

(assert (=> mapNonEmpty!18543 (= mapRes!18542 (and tp!903979 tp!903973))))

(declare-fun mapKey!18542 () (_ BitVec 32))

(declare-fun mapRest!18543 () (Array (_ BitVec 32) List!33427))

(declare-fun mapValue!18542 () List!33427)

(assert (=> mapNonEmpty!18543 (= (arr!6472 (_values!4366 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))))) (store mapRest!18543 mapKey!18542 mapValue!18542))))

(declare-fun b!2829876 () Bool)

(declare-fun res!1178061 () Bool)

(assert (=> b!2829876 (=> res!1178061 e!1791406)))

(declare-fun lt!1009358 () List!33431)

(declare-fun lt!1009353 () Token!9378)

(declare-fun contains!6086 (List!33431 Token!9378) Bool)

(assert (=> b!2829876 (= res!1178061 (not (contains!6086 lt!1009358 lt!1009353)))))

(declare-fun b!2829877 () Bool)

(declare-fun e!1791428 () Bool)

(declare-fun e!1791427 () Bool)

(assert (=> b!2829877 (= e!1791428 e!1791427)))

(declare-fun mapIsEmpty!18542 () Bool)

(assert (=> mapIsEmpty!18542 mapRes!18543))

(declare-datatypes ((List!33432 0))(
  ( (Nil!33308) (Cons!33308 (h!38728 Rule!9776) (t!231281 List!33432)) )
))
(declare-fun rules!1102 () List!33432)

(declare-fun e!1791414 () Bool)

(declare-fun e!1791430 () Bool)

(declare-fun tp!903977 () Bool)

(declare-fun b!2829878 () Bool)

(declare-fun inv!45248 (String!36612) Bool)

(declare-fun inv!45250 (TokenValueInjection!9864) Bool)

(assert (=> b!2829878 (= e!1791430 (and tp!903977 (inv!45248 (tag!5492 (h!38728 rules!1102))) (inv!45250 (transformation!4988 (h!38728 rules!1102))) e!1791414))))

(declare-datatypes ((LexerInterface!4578 0))(
  ( (LexerInterfaceExt!4575 (__x!22163 Int)) (Lexer!4576) )
))
(declare-fun thiss!11212 () LexerInterface!4578)

(declare-fun e!1791413 () Bool)

(declare-datatypes ((tuple3!5274 0))(
  ( (tuple3!5275 (_1!19852 Bool) (_2!19852 CacheUp!2688) (_3!3107 CacheDown!2810)) )
))
(declare-fun lt!1009360 () tuple3!5274)

(declare-fun b!2829879 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableMem!9 (LexerInterface!4578 BalanceConc!20302 Int List!33432 CacheUp!2688 CacheDown!2810) tuple3!5274)

(declare-fun tokensListTwoByTwoPredicateSeparable!158 (LexerInterface!4578 BalanceConc!20302 Int List!33432) Bool)

(assert (=> b!2829879 (= e!1791413 (= (_1!19852 (tokensListTwoByTwoPredicateSeparableMem!9 thiss!11212 v!6247 (+ 1 from!827) rules!1102 (_2!19852 lt!1009360) (_3!3107 lt!1009360))) (tokensListTwoByTwoPredicateSeparable!158 thiss!11212 v!6247 from!827 rules!1102)))))

(declare-fun b!2829880 () Bool)

(declare-fun res!1178069 () Bool)

(declare-fun e!1791416 () Bool)

(assert (=> b!2829880 (=> (not res!1178069) (not e!1791416))))

(declare-fun isEmpty!18384 (List!33432) Bool)

(assert (=> b!2829880 (= res!1178069 (not (isEmpty!18384 rules!1102)))))

(declare-fun b!2829881 () Bool)

(declare-fun e!1791421 () Bool)

(declare-fun tp!903971 () Bool)

(declare-fun inv!45251 (Conc!10332) Bool)

(assert (=> b!2829881 (= e!1791421 (and (inv!45251 (c!457771 v!6247)) tp!903971))))

(declare-fun b!2829882 () Bool)

(declare-fun e!1791417 () Bool)

(declare-fun tp!903974 () Bool)

(assert (=> b!2829882 (= e!1791417 (and tp!903974 mapRes!18543))))

(declare-fun condMapEmpty!18542 () Bool)

(declare-fun mapDefault!18543 () List!33428)

(assert (=> b!2829882 (= condMapEmpty!18542 (= (arr!6473 (_values!4367 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))))) ((as const (Array (_ BitVec 32) List!33428)) mapDefault!18543)))))

(declare-fun b!2829883 () Bool)

(declare-fun e!1791426 () Bool)

(declare-fun tp!903976 () Bool)

(assert (=> b!2829883 (= e!1791426 (and e!1791430 tp!903976))))

(declare-fun b!2829884 () Bool)

(declare-fun tp!903980 () Bool)

(assert (=> b!2829884 (= e!1791408 (and tp!903980 mapRes!18542))))

(declare-fun condMapEmpty!18543 () Bool)

(declare-fun mapDefault!18542 () List!33427)

(assert (=> b!2829884 (= condMapEmpty!18543 (= (arr!6472 (_values!4366 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))))) ((as const (Array (_ BitVec 32) List!33427)) mapDefault!18542)))))

(declare-fun b!2829885 () Bool)

(declare-fun res!1178072 () Bool)

(assert (=> b!2829885 (=> (not res!1178072) (not e!1791416))))

(declare-fun rulesProduceEachTokenIndividually!1097 (LexerInterface!4578 List!33432 BalanceConc!20302) Bool)

(assert (=> b!2829885 (= res!1178072 (rulesProduceEachTokenIndividually!1097 thiss!11212 rules!1102 v!6247))))

(declare-fun b!2829886 () Bool)

(declare-fun e!1791429 () Bool)

(assert (=> b!2829886 (= e!1791429 e!1791416)))

(declare-fun res!1178066 () Bool)

(assert (=> b!2829886 (=> (not res!1178066) (not e!1791416))))

(declare-fun lt!1009352 () Int)

(assert (=> b!2829886 (= res!1178066 (<= from!827 lt!1009352))))

(declare-fun size!25929 (BalanceConc!20302) Int)

(assert (=> b!2829886 (= lt!1009352 (size!25929 v!6247))))

(declare-fun b!2829887 () Bool)

(declare-fun e!1791415 () Bool)

(declare-fun lt!1009362 () MutLongMap!4085)

(assert (=> b!2829887 (= e!1791415 (and e!1791409 ((_ is LongMap!4085) lt!1009362)))))

(assert (=> b!2829887 (= lt!1009362 (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))))

(declare-fun b!2829888 () Bool)

(assert (=> b!2829888 (= e!1791423 e!1791422)))

(declare-fun b!2829889 () Bool)

(declare-fun e!1791418 () Bool)

(assert (=> b!2829889 (= e!1791412 e!1791418)))

(declare-fun e!1791411 () Bool)

(declare-fun tp!903983 () Bool)

(declare-fun tp!903987 () Bool)

(declare-fun array_inv!4637 (array!14523) Bool)

(assert (=> b!2829890 (= e!1791411 (and tp!903970 tp!903983 tp!903987 (array_inv!4635 (_keys!4386 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))))) (array_inv!4637 (_values!4367 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))))) e!1791417))))

(assert (=> b!2829891 (= e!1791414 (and tp!903978 tp!903986))))

(declare-fun b!2829892 () Bool)

(declare-fun e!1791432 () Bool)

(declare-fun e!1791424 () Bool)

(assert (=> b!2829892 (= e!1791432 e!1791424)))

(assert (=> b!2829893 (= e!1791427 (and e!1791410 tp!903982))))

(declare-fun b!2829894 () Bool)

(declare-fun res!1178063 () Bool)

(assert (=> b!2829894 (=> res!1178063 e!1791431)))

(assert (=> b!2829894 (= res!1178063 (not (contains!6086 lt!1009358 lt!1009359)))))

(declare-fun res!1178067 () Bool)

(assert (=> start!274794 (=> (not res!1178067) (not e!1791429))))

(assert (=> start!274794 (= res!1178067 (and ((_ is Lexer!4576) thiss!11212) (>= from!827 0)))))

(assert (=> start!274794 e!1791429))

(assert (=> start!274794 e!1791426))

(declare-fun inv!45252 (BalanceConc!20302) Bool)

(assert (=> start!274794 (and (inv!45252 v!6247) e!1791421)))

(assert (=> start!274794 true))

(declare-fun inv!45253 (CacheDown!2810) Bool)

(assert (=> start!274794 (and (inv!45253 cacheDown!433) e!1791432)))

(declare-fun inv!45254 (CacheUp!2688) Bool)

(assert (=> start!274794 (and (inv!45254 cacheUp!420) e!1791428)))

(declare-fun b!2829874 () Bool)

(assert (=> b!2829874 (= e!1791431 e!1791413)))

(declare-fun res!1178068 () Bool)

(assert (=> b!2829874 (=> res!1178068 e!1791413)))

(assert (=> b!2829874 (= res!1178068 (not (_1!19852 lt!1009360)))))

(declare-fun separableTokensPredicateMem!8 (LexerInterface!4578 Token!9378 Token!9378 List!33432 CacheUp!2688 CacheDown!2810) tuple3!5274)

(assert (=> b!2829874 (= lt!1009360 (separableTokensPredicateMem!8 thiss!11212 lt!1009353 lt!1009359 rules!1102 cacheUp!420 cacheDown!433))))

(assert (=> b!2829874 e!1791420))

(declare-fun res!1178065 () Bool)

(assert (=> b!2829874 (=> (not res!1178065) (not e!1791420))))

(declare-fun rulesProduceIndividualToken!2115 (LexerInterface!4578 List!33432 Token!9378) Bool)

(assert (=> b!2829874 (= res!1178065 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009359))))

(declare-datatypes ((Unit!47319 0))(
  ( (Unit!47320) )
))
(declare-fun lt!1009363 () Unit!47319)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!733 (LexerInterface!4578 List!33432 List!33431 Token!9378) Unit!47319)

(assert (=> b!2829874 (= lt!1009363 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!733 thiss!11212 rules!1102 lt!1009358 lt!1009359))))

(assert (=> b!2829874 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009353)))

(declare-fun lt!1009351 () Unit!47319)

(assert (=> b!2829874 (= lt!1009351 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!733 thiss!11212 rules!1102 lt!1009358 lt!1009353))))

(declare-fun b!2829895 () Bool)

(declare-fun res!1178064 () Bool)

(assert (=> b!2829895 (=> (not res!1178064) (not e!1791416))))

(declare-fun rulesInvariant!3994 (LexerInterface!4578 List!33432) Bool)

(assert (=> b!2829895 (= res!1178064 (rulesInvariant!3994 thiss!11212 rules!1102))))

(declare-fun b!2829896 () Bool)

(declare-fun res!1178071 () Bool)

(assert (=> b!2829896 (=> (not res!1178071) (not e!1791416))))

(assert (=> b!2829896 (= res!1178071 (< from!827 (- lt!1009352 1)))))

(assert (=> b!2829897 (= e!1791424 (and e!1791415 tp!903985))))

(declare-fun mapIsEmpty!18543 () Bool)

(assert (=> mapIsEmpty!18543 mapRes!18542))

(declare-fun b!2829898 () Bool)

(assert (=> b!2829898 (= e!1791418 e!1791411)))

(declare-fun b!2829899 () Bool)

(assert (=> b!2829899 (= e!1791416 (not e!1791406))))

(declare-fun res!1178062 () Bool)

(assert (=> b!2829899 (=> res!1178062 e!1791406)))

(assert (=> b!2829899 (= res!1178062 (not (contains!6085 v!6247 lt!1009353)))))

(assert (=> b!2829899 (= lt!1009353 (apply!7776 v!6247 from!827))))

(declare-fun lt!1009357 () List!33431)

(declare-fun tail!4466 (List!33431) List!33431)

(declare-fun drop!1790 (List!33431 Int) List!33431)

(assert (=> b!2829899 (= (tail!4466 lt!1009357) (drop!1790 lt!1009358 (+ 2 from!827)))))

(declare-fun lt!1009356 () Unit!47319)

(declare-fun lemmaDropTail!876 (List!33431 Int) Unit!47319)

(assert (=> b!2829899 (= lt!1009356 (lemmaDropTail!876 lt!1009358 (+ 1 from!827)))))

(declare-fun lt!1009349 () List!33431)

(assert (=> b!2829899 (= (tail!4466 lt!1009349) lt!1009357)))

(declare-fun lt!1009350 () Unit!47319)

(assert (=> b!2829899 (= lt!1009350 (lemmaDropTail!876 lt!1009358 from!827))))

(declare-fun head!6241 (List!33431) Token!9378)

(declare-fun apply!7777 (List!33431 Int) Token!9378)

(assert (=> b!2829899 (= (head!6241 lt!1009357) (apply!7777 lt!1009358 (+ 1 from!827)))))

(assert (=> b!2829899 (= lt!1009357 (drop!1790 lt!1009358 (+ 1 from!827)))))

(declare-fun lt!1009355 () Unit!47319)

(declare-fun lemmaDropApply!988 (List!33431 Int) Unit!47319)

(assert (=> b!2829899 (= lt!1009355 (lemmaDropApply!988 lt!1009358 (+ 1 from!827)))))

(assert (=> b!2829899 (= (head!6241 lt!1009349) (apply!7777 lt!1009358 from!827))))

(assert (=> b!2829899 (= lt!1009349 (drop!1790 lt!1009358 from!827))))

(declare-fun lt!1009361 () Unit!47319)

(assert (=> b!2829899 (= lt!1009361 (lemmaDropApply!988 lt!1009358 from!827))))

(declare-fun list!12462 (BalanceConc!20302) List!33431)

(assert (=> b!2829899 (= lt!1009358 (list!12462 v!6247))))

(assert (= (and start!274794 res!1178067) b!2829886))

(assert (= (and b!2829886 res!1178066) b!2829880))

(assert (= (and b!2829880 res!1178069) b!2829895))

(assert (= (and b!2829895 res!1178064) b!2829885))

(assert (= (and b!2829885 res!1178072) b!2829896))

(assert (= (and b!2829896 res!1178071) b!2829899))

(assert (= (and b!2829899 (not res!1178062)) b!2829876))

(assert (= (and b!2829876 (not res!1178061)) b!2829875))

(assert (= (and b!2829875 (not res!1178070)) b!2829894))

(assert (= (and b!2829894 (not res!1178063)) b!2829874))

(assert (= (and b!2829874 res!1178065) b!2829872))

(assert (= (and b!2829874 (not res!1178068)) b!2829879))

(assert (= b!2829878 b!2829891))

(assert (= b!2829883 b!2829878))

(assert (= (and start!274794 ((_ is Cons!33308) rules!1102)) b!2829883))

(assert (= start!274794 b!2829881))

(assert (= (and b!2829884 condMapEmpty!18543) mapIsEmpty!18543))

(assert (= (and b!2829884 (not condMapEmpty!18543)) mapNonEmpty!18543))

(assert (= b!2829870 b!2829884))

(assert (= b!2829888 b!2829870))

(assert (= b!2829873 b!2829888))

(assert (= (and b!2829887 ((_ is LongMap!4085) (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))) b!2829873))

(assert (= b!2829897 b!2829887))

(assert (= (and b!2829892 ((_ is HashMap!3991) (cache!4126 cacheDown!433))) b!2829897))

(assert (= start!274794 b!2829892))

(assert (= (and b!2829882 condMapEmpty!18542) mapIsEmpty!18542))

(assert (= (and b!2829882 (not condMapEmpty!18542)) mapNonEmpty!18542))

(assert (= b!2829890 b!2829882))

(assert (= b!2829898 b!2829890))

(assert (= b!2829889 b!2829898))

(assert (= (and b!2829871 ((_ is LongMap!4086) (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))) b!2829889))

(assert (= b!2829893 b!2829871))

(assert (= (and b!2829877 ((_ is HashMap!3992) (cache!4127 cacheUp!420))) b!2829893))

(assert (= start!274794 b!2829877))

(declare-fun m!3259353 () Bool)

(assert (=> b!2829879 m!3259353))

(declare-fun m!3259355 () Bool)

(assert (=> b!2829879 m!3259355))

(declare-fun m!3259357 () Bool)

(assert (=> b!2829886 m!3259357))

(declare-fun m!3259359 () Bool)

(assert (=> b!2829876 m!3259359))

(declare-fun m!3259361 () Bool)

(assert (=> b!2829899 m!3259361))

(declare-fun m!3259363 () Bool)

(assert (=> b!2829899 m!3259363))

(declare-fun m!3259365 () Bool)

(assert (=> b!2829899 m!3259365))

(declare-fun m!3259367 () Bool)

(assert (=> b!2829899 m!3259367))

(declare-fun m!3259369 () Bool)

(assert (=> b!2829899 m!3259369))

(declare-fun m!3259371 () Bool)

(assert (=> b!2829899 m!3259371))

(declare-fun m!3259373 () Bool)

(assert (=> b!2829899 m!3259373))

(declare-fun m!3259375 () Bool)

(assert (=> b!2829899 m!3259375))

(declare-fun m!3259377 () Bool)

(assert (=> b!2829899 m!3259377))

(declare-fun m!3259379 () Bool)

(assert (=> b!2829899 m!3259379))

(declare-fun m!3259381 () Bool)

(assert (=> b!2829899 m!3259381))

(declare-fun m!3259383 () Bool)

(assert (=> b!2829899 m!3259383))

(declare-fun m!3259385 () Bool)

(assert (=> b!2829899 m!3259385))

(declare-fun m!3259387 () Bool)

(assert (=> b!2829899 m!3259387))

(declare-fun m!3259389 () Bool)

(assert (=> b!2829899 m!3259389))

(declare-fun m!3259391 () Bool)

(assert (=> b!2829899 m!3259391))

(declare-fun m!3259393 () Bool)

(assert (=> b!2829894 m!3259393))

(declare-fun m!3259395 () Bool)

(assert (=> b!2829881 m!3259395))

(declare-fun m!3259397 () Bool)

(assert (=> b!2829874 m!3259397))

(declare-fun m!3259399 () Bool)

(assert (=> b!2829874 m!3259399))

(declare-fun m!3259401 () Bool)

(assert (=> b!2829874 m!3259401))

(declare-fun m!3259403 () Bool)

(assert (=> b!2829874 m!3259403))

(declare-fun m!3259405 () Bool)

(assert (=> b!2829874 m!3259405))

(declare-fun m!3259407 () Bool)

(assert (=> b!2829885 m!3259407))

(declare-fun m!3259409 () Bool)

(assert (=> b!2829870 m!3259409))

(declare-fun m!3259411 () Bool)

(assert (=> b!2829870 m!3259411))

(declare-fun m!3259413 () Bool)

(assert (=> b!2829895 m!3259413))

(declare-fun m!3259415 () Bool)

(assert (=> b!2829880 m!3259415))

(declare-fun m!3259417 () Bool)

(assert (=> start!274794 m!3259417))

(declare-fun m!3259419 () Bool)

(assert (=> start!274794 m!3259419))

(declare-fun m!3259421 () Bool)

(assert (=> start!274794 m!3259421))

(declare-fun m!3259423 () Bool)

(assert (=> b!2829872 m!3259423))

(assert (=> b!2829872 m!3259423))

(declare-fun m!3259425 () Bool)

(assert (=> b!2829872 m!3259425))

(declare-fun m!3259427 () Bool)

(assert (=> b!2829875 m!3259427))

(declare-fun m!3259429 () Bool)

(assert (=> b!2829875 m!3259429))

(declare-fun m!3259431 () Bool)

(assert (=> mapNonEmpty!18543 m!3259431))

(declare-fun m!3259433 () Bool)

(assert (=> b!2829878 m!3259433))

(declare-fun m!3259435 () Bool)

(assert (=> b!2829878 m!3259435))

(declare-fun m!3259437 () Bool)

(assert (=> b!2829890 m!3259437))

(declare-fun m!3259439 () Bool)

(assert (=> b!2829890 m!3259439))

(declare-fun m!3259441 () Bool)

(assert (=> mapNonEmpty!18542 m!3259441))

(check-sat (not b!2829884) (not b!2829890) b_and!206925 (not b_next!81965) (not b_next!81967) (not b!2829870) (not b!2829895) (not b!2829882) (not b_next!81963) (not b!2829878) (not mapNonEmpty!18542) (not b!2829879) (not b_next!81971) (not b_next!81961) (not b!2829872) (not b!2829899) (not b!2829874) (not b!2829881) (not b!2829894) (not mapNonEmpty!18543) b_and!206915 (not b!2829883) (not b_next!81969) (not b!2829880) b_and!206923 b_and!206921 (not start!274794) b_and!206917 (not b!2829876) (not b!2829885) (not b!2829875) (not b!2829886) b_and!206919)
(check-sat b_and!206915 b_and!206925 (not b_next!81965) (not b_next!81969) (not b_next!81967) b_and!206917 b_and!206919 (not b_next!81963) (not b_next!81971) (not b_next!81961) b_and!206923 b_and!206921)
(get-model)

(declare-fun d!821126 () Bool)

(assert (=> d!821126 (= (isEmpty!18384 rules!1102) ((_ is Nil!33308) rules!1102))))

(assert (=> b!2829880 d!821126))

(declare-fun d!821128 () Bool)

(declare-fun lt!1009366 () Int)

(declare-fun size!25930 (List!33429) Int)

(declare-fun list!12463 (BalanceConc!20300) List!33429)

(assert (=> d!821128 (= lt!1009366 (size!25930 (list!12463 (charsOf!3093 lt!1009359))))))

(declare-fun size!25931 (Conc!10331) Int)

(assert (=> d!821128 (= lt!1009366 (size!25931 (c!457770 (charsOf!3093 lt!1009359))))))

(assert (=> d!821128 (= (size!25928 (charsOf!3093 lt!1009359)) lt!1009366)))

(declare-fun bs!518208 () Bool)

(assert (= bs!518208 d!821128))

(assert (=> bs!518208 m!3259423))

(declare-fun m!3259443 () Bool)

(assert (=> bs!518208 m!3259443))

(assert (=> bs!518208 m!3259443))

(declare-fun m!3259445 () Bool)

(assert (=> bs!518208 m!3259445))

(declare-fun m!3259447 () Bool)

(assert (=> bs!518208 m!3259447))

(assert (=> b!2829872 d!821128))

(declare-fun d!821130 () Bool)

(declare-fun lt!1009369 () BalanceConc!20300)

(assert (=> d!821130 (= (list!12463 lt!1009369) (originalCharacters!5720 lt!1009359))))

(declare-fun dynLambda!13991 (Int TokenValue!5218) BalanceConc!20300)

(assert (=> d!821130 (= lt!1009369 (dynLambda!13991 (toChars!6873 (transformation!4988 (rule!7416 lt!1009359))) (value!160527 lt!1009359)))))

(assert (=> d!821130 (= (charsOf!3093 lt!1009359) lt!1009369)))

(declare-fun b_lambda!84995 () Bool)

(assert (=> (not b_lambda!84995) (not d!821130)))

(declare-fun t!231283 () Bool)

(declare-fun tb!154173 () Bool)

(assert (=> (and b!2829891 (= (toChars!6873 (transformation!4988 (h!38728 rules!1102))) (toChars!6873 (transformation!4988 (rule!7416 lt!1009359)))) t!231283) tb!154173))

(declare-fun b!2829904 () Bool)

(declare-fun e!1791435 () Bool)

(declare-fun tp!903991 () Bool)

(declare-fun inv!45255 (Conc!10331) Bool)

(assert (=> b!2829904 (= e!1791435 (and (inv!45255 (c!457770 (dynLambda!13991 (toChars!6873 (transformation!4988 (rule!7416 lt!1009359))) (value!160527 lt!1009359)))) tp!903991))))

(declare-fun result!192138 () Bool)

(declare-fun inv!45256 (BalanceConc!20300) Bool)

(assert (=> tb!154173 (= result!192138 (and (inv!45256 (dynLambda!13991 (toChars!6873 (transformation!4988 (rule!7416 lt!1009359))) (value!160527 lt!1009359))) e!1791435))))

(assert (= tb!154173 b!2829904))

(declare-fun m!3259449 () Bool)

(assert (=> b!2829904 m!3259449))

(declare-fun m!3259451 () Bool)

(assert (=> tb!154173 m!3259451))

(assert (=> d!821130 t!231283))

(declare-fun b_and!206927 () Bool)

(assert (= b_and!206923 (and (=> t!231283 result!192138) b_and!206927)))

(declare-fun m!3259453 () Bool)

(assert (=> d!821130 m!3259453))

(declare-fun m!3259455 () Bool)

(assert (=> d!821130 m!3259455))

(assert (=> b!2829872 d!821130))

(declare-fun d!821132 () Bool)

(declare-fun c!457774 () Bool)

(assert (=> d!821132 (= c!457774 ((_ is Node!10332) (c!457771 v!6247)))))

(declare-fun e!1791440 () Bool)

(assert (=> d!821132 (= (inv!45251 (c!457771 v!6247)) e!1791440)))

(declare-fun b!2829911 () Bool)

(declare-fun inv!45257 (Conc!10332) Bool)

(assert (=> b!2829911 (= e!1791440 (inv!45257 (c!457771 v!6247)))))

(declare-fun b!2829912 () Bool)

(declare-fun e!1791441 () Bool)

(assert (=> b!2829912 (= e!1791440 e!1791441)))

(declare-fun res!1178077 () Bool)

(assert (=> b!2829912 (= res!1178077 (not ((_ is Leaf!15734) (c!457771 v!6247))))))

(assert (=> b!2829912 (=> res!1178077 e!1791441)))

(declare-fun b!2829913 () Bool)

(declare-fun inv!45258 (Conc!10332) Bool)

(assert (=> b!2829913 (= e!1791441 (inv!45258 (c!457771 v!6247)))))

(assert (= (and d!821132 c!457774) b!2829911))

(assert (= (and d!821132 (not c!457774)) b!2829912))

(assert (= (and b!2829912 (not res!1178077)) b!2829913))

(declare-fun m!3259457 () Bool)

(assert (=> b!2829911 m!3259457))

(declare-fun m!3259459 () Bool)

(assert (=> b!2829913 m!3259459))

(assert (=> b!2829881 d!821132))

(declare-fun d!821134 () Bool)

(assert (=> d!821134 (= (array_inv!4635 (_keys!4385 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))))) (bvsge (size!25924 (_keys!4385 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))))) #b00000000000000000000000000000000))))

(assert (=> b!2829870 d!821134))

(declare-fun d!821136 () Bool)

(assert (=> d!821136 (= (array_inv!4636 (_values!4366 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))))) (bvsge (size!25925 (_values!4366 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433))))))) #b00000000000000000000000000000000))))

(assert (=> b!2829870 d!821136))

(declare-fun d!821138 () Bool)

(assert (=> d!821138 (= (inv!45248 (tag!5492 (h!38728 rules!1102))) (= (mod (str.len (value!160526 (tag!5492 (h!38728 rules!1102)))) 2) 0))))

(assert (=> b!2829878 d!821138))

(declare-fun d!821140 () Bool)

(declare-fun res!1178080 () Bool)

(declare-fun e!1791444 () Bool)

(assert (=> d!821140 (=> (not res!1178080) (not e!1791444))))

(declare-fun semiInverseModEq!2073 (Int Int) Bool)

(assert (=> d!821140 (= res!1178080 (semiInverseModEq!2073 (toChars!6873 (transformation!4988 (h!38728 rules!1102))) (toValue!7014 (transformation!4988 (h!38728 rules!1102)))))))

(assert (=> d!821140 (= (inv!45250 (transformation!4988 (h!38728 rules!1102))) e!1791444)))

(declare-fun b!2829916 () Bool)

(declare-fun equivClasses!1972 (Int Int) Bool)

(assert (=> b!2829916 (= e!1791444 (equivClasses!1972 (toChars!6873 (transformation!4988 (h!38728 rules!1102))) (toValue!7014 (transformation!4988 (h!38728 rules!1102)))))))

(assert (= (and d!821140 res!1178080) b!2829916))

(declare-fun m!3259461 () Bool)

(assert (=> d!821140 m!3259461))

(declare-fun m!3259463 () Bool)

(assert (=> b!2829916 m!3259463))

(assert (=> b!2829878 d!821140))

(declare-fun d!821142 () Bool)

(assert (=> d!821142 (= (head!6241 (drop!1790 lt!1009358 (+ 1 from!827))) (apply!7777 lt!1009358 (+ 1 from!827)))))

(declare-fun lt!1009372 () Unit!47319)

(declare-fun choose!16713 (List!33431 Int) Unit!47319)

(assert (=> d!821142 (= lt!1009372 (choose!16713 lt!1009358 (+ 1 from!827)))))

(declare-fun e!1791447 () Bool)

(assert (=> d!821142 e!1791447))

(declare-fun res!1178083 () Bool)

(assert (=> d!821142 (=> (not res!1178083) (not e!1791447))))

(assert (=> d!821142 (= res!1178083 (>= (+ 1 from!827) 0))))

(assert (=> d!821142 (= (lemmaDropApply!988 lt!1009358 (+ 1 from!827)) lt!1009372)))

(declare-fun b!2829919 () Bool)

(declare-fun size!25932 (List!33431) Int)

(assert (=> b!2829919 (= e!1791447 (< (+ 1 from!827) (size!25932 lt!1009358)))))

(assert (= (and d!821142 res!1178083) b!2829919))

(assert (=> d!821142 m!3259387))

(assert (=> d!821142 m!3259387))

(declare-fun m!3259465 () Bool)

(assert (=> d!821142 m!3259465))

(assert (=> d!821142 m!3259391))

(declare-fun m!3259467 () Bool)

(assert (=> d!821142 m!3259467))

(declare-fun m!3259469 () Bool)

(assert (=> b!2829919 m!3259469))

(assert (=> b!2829899 d!821142))

(declare-fun b!2829938 () Bool)

(declare-fun e!1791461 () Int)

(declare-fun e!1791458 () Int)

(assert (=> b!2829938 (= e!1791461 e!1791458)))

(declare-fun c!457784 () Bool)

(declare-fun call!183277 () Int)

(assert (=> b!2829938 (= c!457784 (>= from!827 call!183277))))

(declare-fun b!2829939 () Bool)

(declare-fun e!1791460 () List!33431)

(assert (=> b!2829939 (= e!1791460 (drop!1790 (t!231280 lt!1009358) (- from!827 1)))))

(declare-fun b!2829940 () Bool)

(declare-fun e!1791462 () List!33431)

(assert (=> b!2829940 (= e!1791462 Nil!33307)))

(declare-fun b!2829941 () Bool)

(assert (=> b!2829941 (= e!1791458 0)))

(declare-fun b!2829943 () Bool)

(assert (=> b!2829943 (= e!1791460 lt!1009358)))

(declare-fun b!2829944 () Bool)

(assert (=> b!2829944 (= e!1791461 call!183277)))

(declare-fun bm!183272 () Bool)

(assert (=> bm!183272 (= call!183277 (size!25932 lt!1009358))))

(declare-fun b!2829945 () Bool)

(declare-fun e!1791459 () Bool)

(declare-fun lt!1009375 () List!33431)

(assert (=> b!2829945 (= e!1791459 (= (size!25932 lt!1009375) e!1791461))))

(declare-fun c!457786 () Bool)

(assert (=> b!2829945 (= c!457786 (<= from!827 0))))

(declare-fun b!2829946 () Bool)

(assert (=> b!2829946 (= e!1791462 e!1791460)))

(declare-fun c!457785 () Bool)

(assert (=> b!2829946 (= c!457785 (<= from!827 0))))

(declare-fun d!821144 () Bool)

(assert (=> d!821144 e!1791459))

(declare-fun res!1178086 () Bool)

(assert (=> d!821144 (=> (not res!1178086) (not e!1791459))))

(declare-fun content!4633 (List!33431) (InoxSet Token!9378))

(assert (=> d!821144 (= res!1178086 (= ((_ map implies) (content!4633 lt!1009375) (content!4633 lt!1009358)) ((as const (InoxSet Token!9378)) true)))))

(assert (=> d!821144 (= lt!1009375 e!1791462)))

(declare-fun c!457783 () Bool)

(assert (=> d!821144 (= c!457783 ((_ is Nil!33307) lt!1009358))))

(assert (=> d!821144 (= (drop!1790 lt!1009358 from!827) lt!1009375)))

(declare-fun b!2829942 () Bool)

(assert (=> b!2829942 (= e!1791458 (- call!183277 from!827))))

(assert (= (and d!821144 c!457783) b!2829940))

(assert (= (and d!821144 (not c!457783)) b!2829946))

(assert (= (and b!2829946 c!457785) b!2829943))

(assert (= (and b!2829946 (not c!457785)) b!2829939))

(assert (= (and d!821144 res!1178086) b!2829945))

(assert (= (and b!2829945 c!457786) b!2829944))

(assert (= (and b!2829945 (not c!457786)) b!2829938))

(assert (= (and b!2829938 c!457784) b!2829941))

(assert (= (and b!2829938 (not c!457784)) b!2829942))

(assert (= (or b!2829944 b!2829938 b!2829942) bm!183272))

(declare-fun m!3259471 () Bool)

(assert (=> b!2829939 m!3259471))

(assert (=> bm!183272 m!3259469))

(declare-fun m!3259473 () Bool)

(assert (=> b!2829945 m!3259473))

(declare-fun m!3259475 () Bool)

(assert (=> d!821144 m!3259475))

(declare-fun m!3259477 () Bool)

(assert (=> d!821144 m!3259477))

(assert (=> b!2829899 d!821144))

(declare-fun d!821146 () Bool)

(declare-fun lt!1009378 () Token!9378)

(assert (=> d!821146 (contains!6086 lt!1009358 lt!1009378)))

(declare-fun e!1791467 () Token!9378)

(assert (=> d!821146 (= lt!1009378 e!1791467)))

(declare-fun c!457789 () Bool)

(assert (=> d!821146 (= c!457789 (= from!827 0))))

(declare-fun e!1791468 () Bool)

(assert (=> d!821146 e!1791468))

(declare-fun res!1178089 () Bool)

(assert (=> d!821146 (=> (not res!1178089) (not e!1791468))))

(assert (=> d!821146 (= res!1178089 (<= 0 from!827))))

(assert (=> d!821146 (= (apply!7777 lt!1009358 from!827) lt!1009378)))

(declare-fun b!2829953 () Bool)

(assert (=> b!2829953 (= e!1791468 (< from!827 (size!25932 lt!1009358)))))

(declare-fun b!2829954 () Bool)

(assert (=> b!2829954 (= e!1791467 (head!6241 lt!1009358))))

(declare-fun b!2829955 () Bool)

(assert (=> b!2829955 (= e!1791467 (apply!7777 (tail!4466 lt!1009358) (- from!827 1)))))

(assert (= (and d!821146 res!1178089) b!2829953))

(assert (= (and d!821146 c!457789) b!2829954))

(assert (= (and d!821146 (not c!457789)) b!2829955))

(declare-fun m!3259479 () Bool)

(assert (=> d!821146 m!3259479))

(assert (=> b!2829953 m!3259469))

(declare-fun m!3259481 () Bool)

(assert (=> b!2829954 m!3259481))

(declare-fun m!3259483 () Bool)

(assert (=> b!2829955 m!3259483))

(assert (=> b!2829955 m!3259483))

(declare-fun m!3259485 () Bool)

(assert (=> b!2829955 m!3259485))

(assert (=> b!2829899 d!821146))

(declare-fun d!821148 () Bool)

(assert (=> d!821148 (= (tail!4466 (drop!1790 lt!1009358 from!827)) (drop!1790 lt!1009358 (+ from!827 1)))))

(declare-fun lt!1009381 () Unit!47319)

(declare-fun choose!16714 (List!33431 Int) Unit!47319)

(assert (=> d!821148 (= lt!1009381 (choose!16714 lt!1009358 from!827))))

(declare-fun e!1791471 () Bool)

(assert (=> d!821148 e!1791471))

(declare-fun res!1178092 () Bool)

(assert (=> d!821148 (=> (not res!1178092) (not e!1791471))))

(assert (=> d!821148 (= res!1178092 (>= from!827 0))))

(assert (=> d!821148 (= (lemmaDropTail!876 lt!1009358 from!827) lt!1009381)))

(declare-fun b!2829958 () Bool)

(assert (=> b!2829958 (= e!1791471 (< from!827 (size!25932 lt!1009358)))))

(assert (= (and d!821148 res!1178092) b!2829958))

(assert (=> d!821148 m!3259371))

(assert (=> d!821148 m!3259371))

(declare-fun m!3259487 () Bool)

(assert (=> d!821148 m!3259487))

(declare-fun m!3259489 () Bool)

(assert (=> d!821148 m!3259489))

(declare-fun m!3259491 () Bool)

(assert (=> d!821148 m!3259491))

(assert (=> b!2829958 m!3259469))

(assert (=> b!2829899 d!821148))

(declare-fun d!821150 () Bool)

(assert (=> d!821150 (= (tail!4466 (drop!1790 lt!1009358 (+ 1 from!827))) (drop!1790 lt!1009358 (+ 1 from!827 1)))))

(declare-fun lt!1009382 () Unit!47319)

(assert (=> d!821150 (= lt!1009382 (choose!16714 lt!1009358 (+ 1 from!827)))))

(declare-fun e!1791472 () Bool)

(assert (=> d!821150 e!1791472))

(declare-fun res!1178093 () Bool)

(assert (=> d!821150 (=> (not res!1178093) (not e!1791472))))

(assert (=> d!821150 (= res!1178093 (>= (+ 1 from!827) 0))))

(assert (=> d!821150 (= (lemmaDropTail!876 lt!1009358 (+ 1 from!827)) lt!1009382)))

(declare-fun b!2829959 () Bool)

(assert (=> b!2829959 (= e!1791472 (< (+ 1 from!827) (size!25932 lt!1009358)))))

(assert (= (and d!821150 res!1178093) b!2829959))

(assert (=> d!821150 m!3259387))

(assert (=> d!821150 m!3259387))

(declare-fun m!3259493 () Bool)

(assert (=> d!821150 m!3259493))

(declare-fun m!3259495 () Bool)

(assert (=> d!821150 m!3259495))

(declare-fun m!3259497 () Bool)

(assert (=> d!821150 m!3259497))

(assert (=> b!2829959 m!3259469))

(assert (=> b!2829899 d!821150))

(declare-fun d!821152 () Bool)

(assert (=> d!821152 (= (head!6241 lt!1009357) (h!38727 lt!1009357))))

(assert (=> b!2829899 d!821152))

(declare-fun d!821154 () Bool)

(declare-fun lt!1009385 () Token!9378)

(assert (=> d!821154 (= lt!1009385 (apply!7777 (list!12462 v!6247) from!827))))

(declare-fun apply!7778 (Conc!10332 Int) Token!9378)

(assert (=> d!821154 (= lt!1009385 (apply!7778 (c!457771 v!6247) from!827))))

(declare-fun e!1791475 () Bool)

(assert (=> d!821154 e!1791475))

(declare-fun res!1178096 () Bool)

(assert (=> d!821154 (=> (not res!1178096) (not e!1791475))))

(assert (=> d!821154 (= res!1178096 (<= 0 from!827))))

(assert (=> d!821154 (= (apply!7776 v!6247 from!827) lt!1009385)))

(declare-fun b!2829962 () Bool)

(assert (=> b!2829962 (= e!1791475 (< from!827 (size!25929 v!6247)))))

(assert (= (and d!821154 res!1178096) b!2829962))

(assert (=> d!821154 m!3259383))

(assert (=> d!821154 m!3259383))

(declare-fun m!3259499 () Bool)

(assert (=> d!821154 m!3259499))

(declare-fun m!3259501 () Bool)

(assert (=> d!821154 m!3259501))

(assert (=> b!2829962 m!3259357))

(assert (=> b!2829899 d!821154))

(declare-fun b!2829963 () Bool)

(declare-fun e!1791479 () Int)

(declare-fun e!1791476 () Int)

(assert (=> b!2829963 (= e!1791479 e!1791476)))

(declare-fun c!457791 () Bool)

(declare-fun call!183278 () Int)

(assert (=> b!2829963 (= c!457791 (>= (+ 1 from!827) call!183278))))

(declare-fun b!2829964 () Bool)

(declare-fun e!1791478 () List!33431)

(assert (=> b!2829964 (= e!1791478 (drop!1790 (t!231280 lt!1009358) (- (+ 1 from!827) 1)))))

(declare-fun b!2829965 () Bool)

(declare-fun e!1791480 () List!33431)

(assert (=> b!2829965 (= e!1791480 Nil!33307)))

(declare-fun b!2829966 () Bool)

(assert (=> b!2829966 (= e!1791476 0)))

(declare-fun b!2829968 () Bool)

(assert (=> b!2829968 (= e!1791478 lt!1009358)))

(declare-fun b!2829969 () Bool)

(assert (=> b!2829969 (= e!1791479 call!183278)))

(declare-fun bm!183273 () Bool)

(assert (=> bm!183273 (= call!183278 (size!25932 lt!1009358))))

(declare-fun b!2829970 () Bool)

(declare-fun e!1791477 () Bool)

(declare-fun lt!1009386 () List!33431)

(assert (=> b!2829970 (= e!1791477 (= (size!25932 lt!1009386) e!1791479))))

(declare-fun c!457793 () Bool)

(assert (=> b!2829970 (= c!457793 (<= (+ 1 from!827) 0))))

(declare-fun b!2829971 () Bool)

(assert (=> b!2829971 (= e!1791480 e!1791478)))

(declare-fun c!457792 () Bool)

(assert (=> b!2829971 (= c!457792 (<= (+ 1 from!827) 0))))

(declare-fun d!821156 () Bool)

(assert (=> d!821156 e!1791477))

(declare-fun res!1178097 () Bool)

(assert (=> d!821156 (=> (not res!1178097) (not e!1791477))))

(assert (=> d!821156 (= res!1178097 (= ((_ map implies) (content!4633 lt!1009386) (content!4633 lt!1009358)) ((as const (InoxSet Token!9378)) true)))))

(assert (=> d!821156 (= lt!1009386 e!1791480)))

(declare-fun c!457790 () Bool)

(assert (=> d!821156 (= c!457790 ((_ is Nil!33307) lt!1009358))))

(assert (=> d!821156 (= (drop!1790 lt!1009358 (+ 1 from!827)) lt!1009386)))

(declare-fun b!2829967 () Bool)

(assert (=> b!2829967 (= e!1791476 (- call!183278 (+ 1 from!827)))))

(assert (= (and d!821156 c!457790) b!2829965))

(assert (= (and d!821156 (not c!457790)) b!2829971))

(assert (= (and b!2829971 c!457792) b!2829968))

(assert (= (and b!2829971 (not c!457792)) b!2829964))

(assert (= (and d!821156 res!1178097) b!2829970))

(assert (= (and b!2829970 c!457793) b!2829969))

(assert (= (and b!2829970 (not c!457793)) b!2829963))

(assert (= (and b!2829963 c!457791) b!2829966))

(assert (= (and b!2829963 (not c!457791)) b!2829967))

(assert (= (or b!2829969 b!2829963 b!2829967) bm!183273))

(declare-fun m!3259503 () Bool)

(assert (=> b!2829964 m!3259503))

(assert (=> bm!183273 m!3259469))

(declare-fun m!3259505 () Bool)

(assert (=> b!2829970 m!3259505))

(declare-fun m!3259507 () Bool)

(assert (=> d!821156 m!3259507))

(assert (=> d!821156 m!3259477))

(assert (=> b!2829899 d!821156))

(declare-fun d!821158 () Bool)

(assert (=> d!821158 (= (tail!4466 lt!1009357) (t!231280 lt!1009357))))

(assert (=> b!2829899 d!821158))

(declare-fun b!2829972 () Bool)

(declare-fun e!1791484 () Int)

(declare-fun e!1791481 () Int)

(assert (=> b!2829972 (= e!1791484 e!1791481)))

(declare-fun c!457795 () Bool)

(declare-fun call!183279 () Int)

(assert (=> b!2829972 (= c!457795 (>= (+ 2 from!827) call!183279))))

(declare-fun b!2829973 () Bool)

(declare-fun e!1791483 () List!33431)

(assert (=> b!2829973 (= e!1791483 (drop!1790 (t!231280 lt!1009358) (- (+ 2 from!827) 1)))))

(declare-fun b!2829974 () Bool)

(declare-fun e!1791485 () List!33431)

(assert (=> b!2829974 (= e!1791485 Nil!33307)))

(declare-fun b!2829975 () Bool)

(assert (=> b!2829975 (= e!1791481 0)))

(declare-fun b!2829977 () Bool)

(assert (=> b!2829977 (= e!1791483 lt!1009358)))

(declare-fun b!2829978 () Bool)

(assert (=> b!2829978 (= e!1791484 call!183279)))

(declare-fun bm!183274 () Bool)

(assert (=> bm!183274 (= call!183279 (size!25932 lt!1009358))))

(declare-fun b!2829979 () Bool)

(declare-fun e!1791482 () Bool)

(declare-fun lt!1009387 () List!33431)

(assert (=> b!2829979 (= e!1791482 (= (size!25932 lt!1009387) e!1791484))))

(declare-fun c!457797 () Bool)

(assert (=> b!2829979 (= c!457797 (<= (+ 2 from!827) 0))))

(declare-fun b!2829980 () Bool)

(assert (=> b!2829980 (= e!1791485 e!1791483)))

(declare-fun c!457796 () Bool)

(assert (=> b!2829980 (= c!457796 (<= (+ 2 from!827) 0))))

(declare-fun d!821160 () Bool)

(assert (=> d!821160 e!1791482))

(declare-fun res!1178098 () Bool)

(assert (=> d!821160 (=> (not res!1178098) (not e!1791482))))

(assert (=> d!821160 (= res!1178098 (= ((_ map implies) (content!4633 lt!1009387) (content!4633 lt!1009358)) ((as const (InoxSet Token!9378)) true)))))

(assert (=> d!821160 (= lt!1009387 e!1791485)))

(declare-fun c!457794 () Bool)

(assert (=> d!821160 (= c!457794 ((_ is Nil!33307) lt!1009358))))

(assert (=> d!821160 (= (drop!1790 lt!1009358 (+ 2 from!827)) lt!1009387)))

(declare-fun b!2829976 () Bool)

(assert (=> b!2829976 (= e!1791481 (- call!183279 (+ 2 from!827)))))

(assert (= (and d!821160 c!457794) b!2829974))

(assert (= (and d!821160 (not c!457794)) b!2829980))

(assert (= (and b!2829980 c!457796) b!2829977))

(assert (= (and b!2829980 (not c!457796)) b!2829973))

(assert (= (and d!821160 res!1178098) b!2829979))

(assert (= (and b!2829979 c!457797) b!2829978))

(assert (= (and b!2829979 (not c!457797)) b!2829972))

(assert (= (and b!2829972 c!457795) b!2829975))

(assert (= (and b!2829972 (not c!457795)) b!2829976))

(assert (= (or b!2829978 b!2829972 b!2829976) bm!183274))

(declare-fun m!3259509 () Bool)

(assert (=> b!2829973 m!3259509))

(assert (=> bm!183274 m!3259469))

(declare-fun m!3259511 () Bool)

(assert (=> b!2829979 m!3259511))

(declare-fun m!3259513 () Bool)

(assert (=> d!821160 m!3259513))

(assert (=> d!821160 m!3259477))

(assert (=> b!2829899 d!821160))

(declare-fun d!821162 () Bool)

(assert (=> d!821162 (= (tail!4466 lt!1009349) (t!231280 lt!1009349))))

(assert (=> b!2829899 d!821162))

(declare-fun d!821164 () Bool)

(declare-fun lt!1009388 () Token!9378)

(assert (=> d!821164 (contains!6086 lt!1009358 lt!1009388)))

(declare-fun e!1791486 () Token!9378)

(assert (=> d!821164 (= lt!1009388 e!1791486)))

(declare-fun c!457798 () Bool)

(assert (=> d!821164 (= c!457798 (= (+ 1 from!827) 0))))

(declare-fun e!1791487 () Bool)

(assert (=> d!821164 e!1791487))

(declare-fun res!1178099 () Bool)

(assert (=> d!821164 (=> (not res!1178099) (not e!1791487))))

(assert (=> d!821164 (= res!1178099 (<= 0 (+ 1 from!827)))))

(assert (=> d!821164 (= (apply!7777 lt!1009358 (+ 1 from!827)) lt!1009388)))

(declare-fun b!2829981 () Bool)

(assert (=> b!2829981 (= e!1791487 (< (+ 1 from!827) (size!25932 lt!1009358)))))

(declare-fun b!2829982 () Bool)

(assert (=> b!2829982 (= e!1791486 (head!6241 lt!1009358))))

(declare-fun b!2829983 () Bool)

(assert (=> b!2829983 (= e!1791486 (apply!7777 (tail!4466 lt!1009358) (- (+ 1 from!827) 1)))))

(assert (= (and d!821164 res!1178099) b!2829981))

(assert (= (and d!821164 c!457798) b!2829982))

(assert (= (and d!821164 (not c!457798)) b!2829983))

(declare-fun m!3259515 () Bool)

(assert (=> d!821164 m!3259515))

(assert (=> b!2829981 m!3259469))

(assert (=> b!2829982 m!3259481))

(assert (=> b!2829983 m!3259483))

(assert (=> b!2829983 m!3259483))

(declare-fun m!3259517 () Bool)

(assert (=> b!2829983 m!3259517))

(assert (=> b!2829899 d!821164))

(declare-fun d!821166 () Bool)

(declare-fun lt!1009391 () Bool)

(assert (=> d!821166 (= lt!1009391 (contains!6086 (list!12462 v!6247) lt!1009353))))

(declare-fun contains!6087 (Conc!10332 Token!9378) Bool)

(assert (=> d!821166 (= lt!1009391 (contains!6087 (c!457771 v!6247) lt!1009353))))

(assert (=> d!821166 (= (contains!6085 v!6247 lt!1009353) lt!1009391)))

(declare-fun bs!518209 () Bool)

(assert (= bs!518209 d!821166))

(assert (=> bs!518209 m!3259383))

(assert (=> bs!518209 m!3259383))

(declare-fun m!3259519 () Bool)

(assert (=> bs!518209 m!3259519))

(declare-fun m!3259521 () Bool)

(assert (=> bs!518209 m!3259521))

(assert (=> b!2829899 d!821166))

(declare-fun d!821168 () Bool)

(assert (=> d!821168 (= (head!6241 (drop!1790 lt!1009358 from!827)) (apply!7777 lt!1009358 from!827))))

(declare-fun lt!1009392 () Unit!47319)

(assert (=> d!821168 (= lt!1009392 (choose!16713 lt!1009358 from!827))))

(declare-fun e!1791488 () Bool)

(assert (=> d!821168 e!1791488))

(declare-fun res!1178100 () Bool)

(assert (=> d!821168 (=> (not res!1178100) (not e!1791488))))

(assert (=> d!821168 (= res!1178100 (>= from!827 0))))

(assert (=> d!821168 (= (lemmaDropApply!988 lt!1009358 from!827) lt!1009392)))

(declare-fun b!2829984 () Bool)

(assert (=> b!2829984 (= e!1791488 (< from!827 (size!25932 lt!1009358)))))

(assert (= (and d!821168 res!1178100) b!2829984))

(assert (=> d!821168 m!3259371))

(assert (=> d!821168 m!3259371))

(declare-fun m!3259523 () Bool)

(assert (=> d!821168 m!3259523))

(assert (=> d!821168 m!3259361))

(declare-fun m!3259525 () Bool)

(assert (=> d!821168 m!3259525))

(assert (=> b!2829984 m!3259469))

(assert (=> b!2829899 d!821168))

(declare-fun d!821170 () Bool)

(assert (=> d!821170 (= (head!6241 lt!1009349) (h!38727 lt!1009349))))

(assert (=> b!2829899 d!821170))

(declare-fun d!821172 () Bool)

(declare-fun list!12464 (Conc!10332) List!33431)

(assert (=> d!821172 (= (list!12462 v!6247) (list!12464 (c!457771 v!6247)))))

(declare-fun bs!518210 () Bool)

(assert (= bs!518210 d!821172))

(declare-fun m!3259527 () Bool)

(assert (=> bs!518210 m!3259527))

(assert (=> b!2829899 d!821172))

(declare-fun b!2829995 () Bool)

(declare-fun e!1791495 () Bool)

(assert (=> b!2829995 (= e!1791495 (<= (+ 1 from!827) (size!25929 v!6247)))))

(declare-fun lt!1009469 () tuple3!5274)

(declare-fun lt!1009466 () tuple3!5274)

(declare-fun b!2829996 () Bool)

(assert (=> b!2829996 (= lt!1009469 (tokensListTwoByTwoPredicateSeparableMem!9 thiss!11212 v!6247 (+ 1 from!827 1) rules!1102 (_2!19852 lt!1009466) (_3!3107 lt!1009466)))))

(declare-fun e!1791497 () tuple3!5274)

(assert (=> b!2829996 (= e!1791497 (tuple3!5275 (_1!19852 lt!1009469) (_2!19852 lt!1009469) (_3!3107 lt!1009469)))))

(declare-fun b!2829997 () Bool)

(assert (=> b!2829997 (= e!1791497 (tuple3!5275 false (_2!19852 lt!1009466) (_3!3107 lt!1009466)))))

(declare-fun b!2829998 () Bool)

(declare-fun e!1791496 () tuple3!5274)

(assert (=> b!2829998 (= e!1791496 (tuple3!5275 true (_2!19852 lt!1009360) (_3!3107 lt!1009360)))))

(declare-fun lt!1009464 () tuple3!5274)

(declare-fun d!821174 () Bool)

(assert (=> d!821174 (= (_1!19852 lt!1009464) (tokensListTwoByTwoPredicateSeparable!158 thiss!11212 v!6247 (+ 1 from!827) rules!1102))))

(assert (=> d!821174 (= lt!1009464 e!1791496)))

(declare-fun c!457804 () Bool)

(assert (=> d!821174 (= c!457804 (< (+ 1 from!827) (- (size!25929 v!6247) 1)))))

(assert (=> d!821174 e!1791495))

(declare-fun res!1178103 () Bool)

(assert (=> d!821174 (=> (not res!1178103) (not e!1791495))))

(assert (=> d!821174 (= res!1178103 (>= (+ 1 from!827) 0))))

(assert (=> d!821174 (= (tokensListTwoByTwoPredicateSeparableMem!9 thiss!11212 v!6247 (+ 1 from!827) rules!1102 (_2!19852 lt!1009360) (_3!3107 lt!1009360)) lt!1009464)))

(declare-fun b!2829999 () Bool)

(assert (=> b!2829999 (= e!1791496 e!1791497)))

(declare-fun lt!1009462 () List!33431)

(assert (=> b!2829999 (= lt!1009462 (list!12462 v!6247))))

(declare-fun lt!1009452 () Unit!47319)

(assert (=> b!2829999 (= lt!1009452 (lemmaDropApply!988 lt!1009462 (+ 1 from!827)))))

(assert (=> b!2829999 (= (head!6241 (drop!1790 lt!1009462 (+ 1 from!827))) (apply!7777 lt!1009462 (+ 1 from!827)))))

(declare-fun lt!1009461 () Unit!47319)

(assert (=> b!2829999 (= lt!1009461 lt!1009452)))

(declare-fun lt!1009468 () List!33431)

(assert (=> b!2829999 (= lt!1009468 (list!12462 v!6247))))

(declare-fun lt!1009454 () Int)

(assert (=> b!2829999 (= lt!1009454 (+ 1 from!827 1))))

(declare-fun lt!1009467 () Unit!47319)

(assert (=> b!2829999 (= lt!1009467 (lemmaDropApply!988 lt!1009468 lt!1009454))))

(assert (=> b!2829999 (= (head!6241 (drop!1790 lt!1009468 lt!1009454)) (apply!7777 lt!1009468 lt!1009454))))

(declare-fun lt!1009471 () Unit!47319)

(assert (=> b!2829999 (= lt!1009471 lt!1009467)))

(declare-fun lt!1009474 () List!33431)

(assert (=> b!2829999 (= lt!1009474 (list!12462 v!6247))))

(declare-fun lt!1009458 () Unit!47319)

(assert (=> b!2829999 (= lt!1009458 (lemmaDropTail!876 lt!1009474 (+ 1 from!827)))))

(assert (=> b!2829999 (= (tail!4466 (drop!1790 lt!1009474 (+ 1 from!827))) (drop!1790 lt!1009474 (+ 1 from!827 1)))))

(declare-fun lt!1009472 () Unit!47319)

(assert (=> b!2829999 (= lt!1009472 lt!1009458)))

(declare-fun lt!1009457 () List!33431)

(assert (=> b!2829999 (= lt!1009457 (list!12462 v!6247))))

(declare-fun lt!1009460 () Int)

(assert (=> b!2829999 (= lt!1009460 (+ 1 from!827 1))))

(declare-fun lt!1009470 () Unit!47319)

(assert (=> b!2829999 (= lt!1009470 (lemmaDropTail!876 lt!1009457 lt!1009460))))

(assert (=> b!2829999 (= (tail!4466 (drop!1790 lt!1009457 lt!1009460)) (drop!1790 lt!1009457 (+ lt!1009460 1)))))

(declare-fun lt!1009463 () Unit!47319)

(assert (=> b!2829999 (= lt!1009463 lt!1009470)))

(declare-fun lt!1009456 () List!33431)

(assert (=> b!2829999 (= lt!1009456 (list!12462 v!6247))))

(declare-fun lt!1009455 () Token!9378)

(assert (=> b!2829999 (= lt!1009455 (apply!7776 v!6247 (+ 1 from!827)))))

(declare-fun lt!1009449 () Unit!47319)

(assert (=> b!2829999 (= lt!1009449 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!733 thiss!11212 rules!1102 lt!1009456 lt!1009455))))

(assert (=> b!2829999 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009455)))

(declare-fun lt!1009451 () Unit!47319)

(assert (=> b!2829999 (= lt!1009451 lt!1009449)))

(declare-fun lt!1009459 () List!33431)

(assert (=> b!2829999 (= lt!1009459 (list!12462 v!6247))))

(declare-fun lt!1009465 () Token!9378)

(assert (=> b!2829999 (= lt!1009465 (apply!7776 v!6247 (+ 1 from!827 1)))))

(declare-fun lt!1009476 () Unit!47319)

(assert (=> b!2829999 (= lt!1009476 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!733 thiss!11212 rules!1102 lt!1009459 lt!1009465))))

(assert (=> b!2829999 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009465)))

(declare-fun lt!1009473 () Unit!47319)

(assert (=> b!2829999 (= lt!1009473 lt!1009476)))

(assert (=> b!2829999 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 (apply!7776 v!6247 (+ 1 from!827)))))

(declare-fun lt!1009475 () Unit!47319)

(declare-fun Unit!47321 () Unit!47319)

(assert (=> b!2829999 (= lt!1009475 Unit!47321)))

(assert (=> b!2829999 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 (apply!7776 v!6247 (+ 1 from!827 1)))))

(declare-fun lt!1009453 () Unit!47319)

(declare-fun Unit!47322 () Unit!47319)

(assert (=> b!2829999 (= lt!1009453 Unit!47322)))

(assert (=> b!2829999 (> (size!25928 (charsOf!3093 (apply!7776 v!6247 (+ 1 from!827 1)))) 0)))

(declare-fun lt!1009450 () Unit!47319)

(declare-fun Unit!47323 () Unit!47319)

(assert (=> b!2829999 (= lt!1009450 Unit!47323)))

(assert (=> b!2829999 (= lt!1009466 (separableTokensPredicateMem!8 thiss!11212 (apply!7776 v!6247 (+ 1 from!827)) (apply!7776 v!6247 (+ 1 from!827 1)) rules!1102 (_2!19852 lt!1009360) (_3!3107 lt!1009360)))))

(declare-fun c!457803 () Bool)

(assert (=> b!2829999 (= c!457803 (_1!19852 lt!1009466))))

(assert (= (and d!821174 res!1178103) b!2829995))

(assert (= (and d!821174 c!457804) b!2829999))

(assert (= (and d!821174 (not c!457804)) b!2829998))

(assert (= (and b!2829999 c!457803) b!2829996))

(assert (= (and b!2829999 (not c!457803)) b!2829997))

(assert (=> b!2829995 m!3259357))

(declare-fun m!3259529 () Bool)

(assert (=> b!2829996 m!3259529))

(declare-fun m!3259531 () Bool)

(assert (=> d!821174 m!3259531))

(assert (=> d!821174 m!3259357))

(declare-fun m!3259533 () Bool)

(assert (=> b!2829999 m!3259533))

(declare-fun m!3259535 () Bool)

(assert (=> b!2829999 m!3259535))

(declare-fun m!3259537 () Bool)

(assert (=> b!2829999 m!3259537))

(declare-fun m!3259539 () Bool)

(assert (=> b!2829999 m!3259539))

(assert (=> b!2829999 m!3259539))

(declare-fun m!3259541 () Bool)

(assert (=> b!2829999 m!3259541))

(declare-fun m!3259543 () Bool)

(assert (=> b!2829999 m!3259543))

(declare-fun m!3259545 () Bool)

(assert (=> b!2829999 m!3259545))

(declare-fun m!3259547 () Bool)

(assert (=> b!2829999 m!3259547))

(assert (=> b!2829999 m!3259429))

(assert (=> b!2829999 m!3259429))

(declare-fun m!3259549 () Bool)

(assert (=> b!2829999 m!3259549))

(assert (=> b!2829999 m!3259429))

(assert (=> b!2829999 m!3259539))

(declare-fun m!3259551 () Bool)

(assert (=> b!2829999 m!3259551))

(declare-fun m!3259553 () Bool)

(assert (=> b!2829999 m!3259553))

(declare-fun m!3259555 () Bool)

(assert (=> b!2829999 m!3259555))

(declare-fun m!3259557 () Bool)

(assert (=> b!2829999 m!3259557))

(declare-fun m!3259559 () Bool)

(assert (=> b!2829999 m!3259559))

(declare-fun m!3259561 () Bool)

(assert (=> b!2829999 m!3259561))

(assert (=> b!2829999 m!3259539))

(assert (=> b!2829999 m!3259535))

(declare-fun m!3259563 () Bool)

(assert (=> b!2829999 m!3259563))

(declare-fun m!3259565 () Bool)

(assert (=> b!2829999 m!3259565))

(assert (=> b!2829999 m!3259383))

(declare-fun m!3259567 () Bool)

(assert (=> b!2829999 m!3259567))

(assert (=> b!2829999 m!3259567))

(declare-fun m!3259569 () Bool)

(assert (=> b!2829999 m!3259569))

(assert (=> b!2829999 m!3259557))

(declare-fun m!3259571 () Bool)

(assert (=> b!2829999 m!3259571))

(declare-fun m!3259573 () Bool)

(assert (=> b!2829999 m!3259573))

(declare-fun m!3259575 () Bool)

(assert (=> b!2829999 m!3259575))

(declare-fun m!3259577 () Bool)

(assert (=> b!2829999 m!3259577))

(declare-fun m!3259579 () Bool)

(assert (=> b!2829999 m!3259579))

(assert (=> b!2829999 m!3259545))

(declare-fun m!3259581 () Bool)

(assert (=> b!2829999 m!3259581))

(assert (=> b!2829999 m!3259563))

(declare-fun m!3259583 () Bool)

(assert (=> b!2829999 m!3259583))

(assert (=> b!2829879 d!821174))

(declare-fun b!2830016 () Bool)

(declare-fun res!1178121 () Bool)

(declare-fun e!1791510 () Bool)

(assert (=> b!2830016 (=> (not res!1178121) (not e!1791510))))

(assert (=> b!2830016 (= res!1178121 (not (isEmpty!18384 rules!1102)))))

(declare-fun b!2830017 () Bool)

(declare-fun res!1178125 () Bool)

(assert (=> b!2830017 (=> (not res!1178125) (not e!1791510))))

(assert (=> b!2830017 (= res!1178125 (rulesInvariant!3994 thiss!11212 rules!1102))))

(declare-fun lt!1009561 () Bool)

(declare-fun d!821176 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!706 (LexerInterface!4578 List!33431 List!33432) Bool)

(declare-fun dropList!1003 (BalanceConc!20302 Int) List!33431)

(assert (=> d!821176 (= lt!1009561 (tokensListTwoByTwoPredicateSeparableList!706 thiss!11212 (dropList!1003 v!6247 from!827) rules!1102))))

(declare-fun lt!1009559 () Unit!47319)

(declare-fun lt!1009566 () Unit!47319)

(assert (=> d!821176 (= lt!1009559 lt!1009566)))

(declare-fun lt!1009571 () List!33431)

(declare-fun rulesProduceEachTokenIndividuallyList!1623 (LexerInterface!4578 List!33432 List!33431) Bool)

(assert (=> d!821176 (rulesProduceEachTokenIndividuallyList!1623 thiss!11212 rules!1102 lt!1009571)))

(declare-fun lt!1009573 () List!33431)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!75 (LexerInterface!4578 List!33432 List!33431 List!33431) Unit!47319)

(assert (=> d!821176 (= lt!1009566 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!75 thiss!11212 rules!1102 lt!1009573 lt!1009571))))

(assert (=> d!821176 e!1791510))

(declare-fun res!1178124 () Bool)

(assert (=> d!821176 (=> (not res!1178124) (not e!1791510))))

(assert (=> d!821176 (= res!1178124 ((_ is Lexer!4576) thiss!11212))))

(assert (=> d!821176 (= lt!1009571 (dropList!1003 v!6247 from!827))))

(assert (=> d!821176 (= lt!1009573 (list!12462 v!6247))))

(declare-fun lt!1009543 () Unit!47319)

(declare-fun lt!1009549 () Unit!47319)

(assert (=> d!821176 (= lt!1009543 lt!1009549)))

(declare-fun lt!1009567 () List!33431)

(declare-fun subseq!490 (List!33431 List!33431) Bool)

(assert (=> d!821176 (subseq!490 (drop!1790 lt!1009567 from!827) lt!1009567)))

(declare-fun lemmaDropSubSeq!75 (List!33431 Int) Unit!47319)

(assert (=> d!821176 (= lt!1009549 (lemmaDropSubSeq!75 lt!1009567 from!827))))

(declare-fun e!1791512 () Bool)

(assert (=> d!821176 e!1791512))

(declare-fun res!1178120 () Bool)

(assert (=> d!821176 (=> (not res!1178120) (not e!1791512))))

(assert (=> d!821176 (= res!1178120 (>= from!827 0))))

(assert (=> d!821176 (= lt!1009567 (list!12462 v!6247))))

(declare-fun e!1791511 () Bool)

(assert (=> d!821176 (= lt!1009561 e!1791511)))

(declare-fun res!1178127 () Bool)

(assert (=> d!821176 (=> res!1178127 e!1791511)))

(assert (=> d!821176 (= res!1178127 (not (< from!827 (- (size!25929 v!6247) 1))))))

(declare-fun e!1791509 () Bool)

(assert (=> d!821176 e!1791509))

(declare-fun res!1178123 () Bool)

(assert (=> d!821176 (=> (not res!1178123) (not e!1791509))))

(assert (=> d!821176 (= res!1178123 (>= from!827 0))))

(assert (=> d!821176 (= (tokensListTwoByTwoPredicateSeparable!158 thiss!11212 v!6247 from!827 rules!1102) lt!1009561)))

(declare-fun b!2830018 () Bool)

(declare-fun res!1178126 () Bool)

(assert (=> b!2830018 (=> (not res!1178126) (not e!1791510))))

(assert (=> b!2830018 (= res!1178126 (subseq!490 lt!1009571 lt!1009573))))

(declare-fun b!2830019 () Bool)

(assert (=> b!2830019 (= e!1791510 (rulesProduceEachTokenIndividuallyList!1623 thiss!11212 rules!1102 lt!1009573))))

(declare-fun b!2830020 () Bool)

(assert (=> b!2830020 (= e!1791509 (<= from!827 (size!25929 v!6247)))))

(declare-fun b!2830021 () Bool)

(declare-fun e!1791508 () Bool)

(assert (=> b!2830021 (= e!1791508 (tokensListTwoByTwoPredicateSeparable!158 thiss!11212 v!6247 (+ from!827 1) rules!1102))))

(declare-fun b!2830022 () Bool)

(assert (=> b!2830022 (= e!1791511 e!1791508)))

(declare-fun res!1178122 () Bool)

(assert (=> b!2830022 (=> (not res!1178122) (not e!1791508))))

(declare-fun separableTokensPredicate!911 (LexerInterface!4578 Token!9378 Token!9378 List!33432) Bool)

(assert (=> b!2830022 (= res!1178122 (separableTokensPredicate!911 thiss!11212 (apply!7776 v!6247 from!827) (apply!7776 v!6247 (+ from!827 1)) rules!1102))))

(declare-fun lt!1009565 () Unit!47319)

(declare-fun Unit!47324 () Unit!47319)

(assert (=> b!2830022 (= lt!1009565 Unit!47324)))

(assert (=> b!2830022 (> (size!25928 (charsOf!3093 (apply!7776 v!6247 (+ from!827 1)))) 0)))

(declare-fun lt!1009553 () Unit!47319)

(declare-fun Unit!47325 () Unit!47319)

(assert (=> b!2830022 (= lt!1009553 Unit!47325)))

(assert (=> b!2830022 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 (apply!7776 v!6247 (+ from!827 1)))))

(declare-fun lt!1009563 () Unit!47319)

(declare-fun Unit!47326 () Unit!47319)

(assert (=> b!2830022 (= lt!1009563 Unit!47326)))

(assert (=> b!2830022 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 (apply!7776 v!6247 from!827))))

(declare-fun lt!1009572 () Unit!47319)

(declare-fun lt!1009547 () Unit!47319)

(assert (=> b!2830022 (= lt!1009572 lt!1009547)))

(declare-fun lt!1009555 () Token!9378)

(assert (=> b!2830022 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009555)))

(declare-fun lt!1009556 () List!33431)

(assert (=> b!2830022 (= lt!1009547 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!733 thiss!11212 rules!1102 lt!1009556 lt!1009555))))

(assert (=> b!2830022 (= lt!1009555 (apply!7776 v!6247 (+ from!827 1)))))

(assert (=> b!2830022 (= lt!1009556 (list!12462 v!6247))))

(declare-fun lt!1009545 () Unit!47319)

(declare-fun lt!1009548 () Unit!47319)

(assert (=> b!2830022 (= lt!1009545 lt!1009548)))

(declare-fun lt!1009569 () Token!9378)

(assert (=> b!2830022 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009569)))

(declare-fun lt!1009544 () List!33431)

(assert (=> b!2830022 (= lt!1009548 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!733 thiss!11212 rules!1102 lt!1009544 lt!1009569))))

(assert (=> b!2830022 (= lt!1009569 (apply!7776 v!6247 from!827))))

(assert (=> b!2830022 (= lt!1009544 (list!12462 v!6247))))

(declare-fun lt!1009560 () Unit!47319)

(declare-fun lt!1009546 () Unit!47319)

(assert (=> b!2830022 (= lt!1009560 lt!1009546)))

(declare-fun lt!1009558 () List!33431)

(declare-fun lt!1009568 () Int)

(assert (=> b!2830022 (= (tail!4466 (drop!1790 lt!1009558 lt!1009568)) (drop!1790 lt!1009558 (+ lt!1009568 1)))))

(assert (=> b!2830022 (= lt!1009546 (lemmaDropTail!876 lt!1009558 lt!1009568))))

(assert (=> b!2830022 (= lt!1009568 (+ from!827 1))))

(assert (=> b!2830022 (= lt!1009558 (list!12462 v!6247))))

(declare-fun lt!1009557 () Unit!47319)

(declare-fun lt!1009552 () Unit!47319)

(assert (=> b!2830022 (= lt!1009557 lt!1009552)))

(declare-fun lt!1009564 () List!33431)

(assert (=> b!2830022 (= (tail!4466 (drop!1790 lt!1009564 from!827)) (drop!1790 lt!1009564 (+ from!827 1)))))

(assert (=> b!2830022 (= lt!1009552 (lemmaDropTail!876 lt!1009564 from!827))))

(assert (=> b!2830022 (= lt!1009564 (list!12462 v!6247))))

(declare-fun lt!1009550 () Unit!47319)

(declare-fun lt!1009574 () Unit!47319)

(assert (=> b!2830022 (= lt!1009550 lt!1009574)))

(declare-fun lt!1009562 () List!33431)

(declare-fun lt!1009551 () Int)

(assert (=> b!2830022 (= (head!6241 (drop!1790 lt!1009562 lt!1009551)) (apply!7777 lt!1009562 lt!1009551))))

(assert (=> b!2830022 (= lt!1009574 (lemmaDropApply!988 lt!1009562 lt!1009551))))

(assert (=> b!2830022 (= lt!1009551 (+ from!827 1))))

(assert (=> b!2830022 (= lt!1009562 (list!12462 v!6247))))

(declare-fun lt!1009575 () Unit!47319)

(declare-fun lt!1009570 () Unit!47319)

(assert (=> b!2830022 (= lt!1009575 lt!1009570)))

(declare-fun lt!1009554 () List!33431)

(assert (=> b!2830022 (= (head!6241 (drop!1790 lt!1009554 from!827)) (apply!7777 lt!1009554 from!827))))

(assert (=> b!2830022 (= lt!1009570 (lemmaDropApply!988 lt!1009554 from!827))))

(assert (=> b!2830022 (= lt!1009554 (list!12462 v!6247))))

(declare-fun b!2830023 () Bool)

(assert (=> b!2830023 (= e!1791512 (<= from!827 (size!25932 lt!1009567)))))

(assert (= (and d!821176 res!1178123) b!2830020))

(assert (= (and d!821176 (not res!1178127)) b!2830022))

(assert (= (and b!2830022 res!1178122) b!2830021))

(assert (= (and d!821176 res!1178120) b!2830023))

(assert (= (and d!821176 res!1178124) b!2830016))

(assert (= (and b!2830016 res!1178121) b!2830017))

(assert (= (and b!2830017 res!1178125) b!2830018))

(assert (= (and b!2830018 res!1178126) b!2830019))

(declare-fun m!3259585 () Bool)

(assert (=> b!2830023 m!3259585))

(declare-fun m!3259587 () Bool)

(assert (=> b!2830019 m!3259587))

(assert (=> d!821176 m!3259357))

(declare-fun m!3259589 () Bool)

(assert (=> d!821176 m!3259589))

(declare-fun m!3259591 () Bool)

(assert (=> d!821176 m!3259591))

(declare-fun m!3259593 () Bool)

(assert (=> d!821176 m!3259593))

(declare-fun m!3259595 () Bool)

(assert (=> d!821176 m!3259595))

(declare-fun m!3259597 () Bool)

(assert (=> d!821176 m!3259597))

(declare-fun m!3259599 () Bool)

(assert (=> d!821176 m!3259599))

(assert (=> d!821176 m!3259383))

(assert (=> d!821176 m!3259593))

(declare-fun m!3259601 () Bool)

(assert (=> d!821176 m!3259601))

(assert (=> d!821176 m!3259589))

(assert (=> b!2830017 m!3259413))

(assert (=> b!2830016 m!3259415))

(assert (=> b!2830020 m!3259357))

(declare-fun m!3259603 () Bool)

(assert (=> b!2830018 m!3259603))

(declare-fun m!3259605 () Bool)

(assert (=> b!2830021 m!3259605))

(declare-fun m!3259607 () Bool)

(assert (=> b!2830022 m!3259607))

(declare-fun m!3259609 () Bool)

(assert (=> b!2830022 m!3259609))

(declare-fun m!3259611 () Bool)

(assert (=> b!2830022 m!3259611))

(declare-fun m!3259613 () Bool)

(assert (=> b!2830022 m!3259613))

(declare-fun m!3259615 () Bool)

(assert (=> b!2830022 m!3259615))

(declare-fun m!3259617 () Bool)

(assert (=> b!2830022 m!3259617))

(declare-fun m!3259619 () Bool)

(assert (=> b!2830022 m!3259619))

(declare-fun m!3259621 () Bool)

(assert (=> b!2830022 m!3259621))

(declare-fun m!3259623 () Bool)

(assert (=> b!2830022 m!3259623))

(declare-fun m!3259625 () Bool)

(assert (=> b!2830022 m!3259625))

(assert (=> b!2830022 m!3259383))

(declare-fun m!3259627 () Bool)

(assert (=> b!2830022 m!3259627))

(declare-fun m!3259629 () Bool)

(assert (=> b!2830022 m!3259629))

(declare-fun m!3259631 () Bool)

(assert (=> b!2830022 m!3259631))

(declare-fun m!3259633 () Bool)

(assert (=> b!2830022 m!3259633))

(assert (=> b!2830022 m!3259369))

(declare-fun m!3259635 () Bool)

(assert (=> b!2830022 m!3259635))

(declare-fun m!3259637 () Bool)

(assert (=> b!2830022 m!3259637))

(declare-fun m!3259639 () Bool)

(assert (=> b!2830022 m!3259639))

(assert (=> b!2830022 m!3259623))

(declare-fun m!3259641 () Bool)

(assert (=> b!2830022 m!3259641))

(assert (=> b!2830022 m!3259607))

(assert (=> b!2830022 m!3259369))

(declare-fun m!3259643 () Bool)

(assert (=> b!2830022 m!3259643))

(declare-fun m!3259645 () Bool)

(assert (=> b!2830022 m!3259645))

(assert (=> b!2830022 m!3259611))

(assert (=> b!2830022 m!3259369))

(assert (=> b!2830022 m!3259631))

(declare-fun m!3259647 () Bool)

(assert (=> b!2830022 m!3259647))

(assert (=> b!2830022 m!3259621))

(declare-fun m!3259649 () Bool)

(assert (=> b!2830022 m!3259649))

(declare-fun m!3259651 () Bool)

(assert (=> b!2830022 m!3259651))

(assert (=> b!2830022 m!3259631))

(declare-fun m!3259653 () Bool)

(assert (=> b!2830022 m!3259653))

(assert (=> b!2830022 m!3259631))

(declare-fun m!3259655 () Bool)

(assert (=> b!2830022 m!3259655))

(assert (=> b!2830022 m!3259633))

(declare-fun m!3259657 () Bool)

(assert (=> b!2830022 m!3259657))

(assert (=> b!2829879 d!821176))

(declare-fun d!821178 () Bool)

(assert (=> d!821178 (= (array_inv!4635 (_keys!4386 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))))) (bvsge (size!25924 (_keys!4386 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))))) #b00000000000000000000000000000000))))

(assert (=> b!2829890 d!821178))

(declare-fun d!821180 () Bool)

(assert (=> d!821180 (= (array_inv!4637 (_values!4367 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))))) (bvsge (size!25926 (_values!4367 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420))))))) #b00000000000000000000000000000000))))

(assert (=> b!2829890 d!821180))

(declare-fun d!821182 () Bool)

(declare-fun lt!1009578 () Bool)

(assert (=> d!821182 (= lt!1009578 (select (content!4633 lt!1009358) lt!1009353))))

(declare-fun e!1791518 () Bool)

(assert (=> d!821182 (= lt!1009578 e!1791518)))

(declare-fun res!1178132 () Bool)

(assert (=> d!821182 (=> (not res!1178132) (not e!1791518))))

(assert (=> d!821182 (= res!1178132 ((_ is Cons!33307) lt!1009358))))

(assert (=> d!821182 (= (contains!6086 lt!1009358 lt!1009353) lt!1009578)))

(declare-fun b!2830028 () Bool)

(declare-fun e!1791517 () Bool)

(assert (=> b!2830028 (= e!1791518 e!1791517)))

(declare-fun res!1178133 () Bool)

(assert (=> b!2830028 (=> res!1178133 e!1791517)))

(assert (=> b!2830028 (= res!1178133 (= (h!38727 lt!1009358) lt!1009353))))

(declare-fun b!2830029 () Bool)

(assert (=> b!2830029 (= e!1791517 (contains!6086 (t!231280 lt!1009358) lt!1009353))))

(assert (= (and d!821182 res!1178132) b!2830028))

(assert (= (and b!2830028 (not res!1178133)) b!2830029))

(assert (=> d!821182 m!3259477))

(declare-fun m!3259659 () Bool)

(assert (=> d!821182 m!3259659))

(declare-fun m!3259661 () Bool)

(assert (=> b!2830029 m!3259661))

(assert (=> b!2829876 d!821182))

(declare-fun d!821184 () Bool)

(declare-fun lt!1009581 () Int)

(assert (=> d!821184 (= lt!1009581 (size!25932 (list!12462 v!6247)))))

(declare-fun size!25933 (Conc!10332) Int)

(assert (=> d!821184 (= lt!1009581 (size!25933 (c!457771 v!6247)))))

(assert (=> d!821184 (= (size!25929 v!6247) lt!1009581)))

(declare-fun bs!518211 () Bool)

(assert (= bs!518211 d!821184))

(assert (=> bs!518211 m!3259383))

(assert (=> bs!518211 m!3259383))

(declare-fun m!3259663 () Bool)

(assert (=> bs!518211 m!3259663))

(declare-fun m!3259665 () Bool)

(assert (=> bs!518211 m!3259665))

(assert (=> b!2829886 d!821184))

(declare-fun d!821186 () Bool)

(declare-fun lt!1009586 () Bool)

(declare-fun e!1791524 () Bool)

(assert (=> d!821186 (= lt!1009586 e!1791524)))

(declare-fun res!1178140 () Bool)

(assert (=> d!821186 (=> (not res!1178140) (not e!1791524))))

(declare-datatypes ((tuple2!33490 0))(
  ( (tuple2!33491 (_1!19853 BalanceConc!20302) (_2!19853 BalanceConc!20300)) )
))
(declare-fun lex!2011 (LexerInterface!4578 List!33432 BalanceConc!20300) tuple2!33490)

(declare-fun print!1730 (LexerInterface!4578 BalanceConc!20302) BalanceConc!20300)

(declare-fun singletonSeq!2156 (Token!9378) BalanceConc!20302)

(assert (=> d!821186 (= res!1178140 (= (list!12462 (_1!19853 (lex!2011 thiss!11212 rules!1102 (print!1730 thiss!11212 (singletonSeq!2156 lt!1009359))))) (list!12462 (singletonSeq!2156 lt!1009359))))))

(declare-fun e!1791523 () Bool)

(assert (=> d!821186 (= lt!1009586 e!1791523)))

(declare-fun res!1178142 () Bool)

(assert (=> d!821186 (=> (not res!1178142) (not e!1791523))))

(declare-fun lt!1009587 () tuple2!33490)

(assert (=> d!821186 (= res!1178142 (= (size!25929 (_1!19853 lt!1009587)) 1))))

(assert (=> d!821186 (= lt!1009587 (lex!2011 thiss!11212 rules!1102 (print!1730 thiss!11212 (singletonSeq!2156 lt!1009359))))))

(assert (=> d!821186 (not (isEmpty!18384 rules!1102))))

(assert (=> d!821186 (= (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009359) lt!1009586)))

(declare-fun b!2830036 () Bool)

(declare-fun res!1178141 () Bool)

(assert (=> b!2830036 (=> (not res!1178141) (not e!1791523))))

(assert (=> b!2830036 (= res!1178141 (= (apply!7776 (_1!19853 lt!1009587) 0) lt!1009359))))

(declare-fun b!2830037 () Bool)

(declare-fun isEmpty!18385 (BalanceConc!20300) Bool)

(assert (=> b!2830037 (= e!1791523 (isEmpty!18385 (_2!19853 lt!1009587)))))

(declare-fun b!2830038 () Bool)

(assert (=> b!2830038 (= e!1791524 (isEmpty!18385 (_2!19853 (lex!2011 thiss!11212 rules!1102 (print!1730 thiss!11212 (singletonSeq!2156 lt!1009359))))))))

(assert (= (and d!821186 res!1178142) b!2830036))

(assert (= (and b!2830036 res!1178141) b!2830037))

(assert (= (and d!821186 res!1178140) b!2830038))

(assert (=> d!821186 m!3259415))

(declare-fun m!3259667 () Bool)

(assert (=> d!821186 m!3259667))

(declare-fun m!3259669 () Bool)

(assert (=> d!821186 m!3259669))

(assert (=> d!821186 m!3259667))

(declare-fun m!3259671 () Bool)

(assert (=> d!821186 m!3259671))

(assert (=> d!821186 m!3259671))

(declare-fun m!3259673 () Bool)

(assert (=> d!821186 m!3259673))

(declare-fun m!3259675 () Bool)

(assert (=> d!821186 m!3259675))

(assert (=> d!821186 m!3259667))

(declare-fun m!3259677 () Bool)

(assert (=> d!821186 m!3259677))

(declare-fun m!3259679 () Bool)

(assert (=> b!2830036 m!3259679))

(declare-fun m!3259681 () Bool)

(assert (=> b!2830037 m!3259681))

(assert (=> b!2830038 m!3259667))

(assert (=> b!2830038 m!3259667))

(assert (=> b!2830038 m!3259671))

(assert (=> b!2830038 m!3259671))

(assert (=> b!2830038 m!3259673))

(declare-fun m!3259683 () Bool)

(assert (=> b!2830038 m!3259683))

(assert (=> b!2829874 d!821186))

(declare-fun d!821188 () Bool)

(assert (=> d!821188 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009359)))

(declare-fun lt!1009590 () Unit!47319)

(declare-fun choose!16715 (LexerInterface!4578 List!33432 List!33431 Token!9378) Unit!47319)

(assert (=> d!821188 (= lt!1009590 (choose!16715 thiss!11212 rules!1102 lt!1009358 lt!1009359))))

(assert (=> d!821188 (not (isEmpty!18384 rules!1102))))

(assert (=> d!821188 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!733 thiss!11212 rules!1102 lt!1009358 lt!1009359) lt!1009590)))

(declare-fun bs!518212 () Bool)

(assert (= bs!518212 d!821188))

(assert (=> bs!518212 m!3259399))

(declare-fun m!3259685 () Bool)

(assert (=> bs!518212 m!3259685))

(assert (=> bs!518212 m!3259415))

(assert (=> b!2829874 d!821188))

(declare-fun d!821190 () Bool)

(declare-fun lt!1009591 () Bool)

(declare-fun e!1791526 () Bool)

(assert (=> d!821190 (= lt!1009591 e!1791526)))

(declare-fun res!1178143 () Bool)

(assert (=> d!821190 (=> (not res!1178143) (not e!1791526))))

(assert (=> d!821190 (= res!1178143 (= (list!12462 (_1!19853 (lex!2011 thiss!11212 rules!1102 (print!1730 thiss!11212 (singletonSeq!2156 lt!1009353))))) (list!12462 (singletonSeq!2156 lt!1009353))))))

(declare-fun e!1791525 () Bool)

(assert (=> d!821190 (= lt!1009591 e!1791525)))

(declare-fun res!1178145 () Bool)

(assert (=> d!821190 (=> (not res!1178145) (not e!1791525))))

(declare-fun lt!1009592 () tuple2!33490)

(assert (=> d!821190 (= res!1178145 (= (size!25929 (_1!19853 lt!1009592)) 1))))

(assert (=> d!821190 (= lt!1009592 (lex!2011 thiss!11212 rules!1102 (print!1730 thiss!11212 (singletonSeq!2156 lt!1009353))))))

(assert (=> d!821190 (not (isEmpty!18384 rules!1102))))

(assert (=> d!821190 (= (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009353) lt!1009591)))

(declare-fun b!2830039 () Bool)

(declare-fun res!1178144 () Bool)

(assert (=> b!2830039 (=> (not res!1178144) (not e!1791525))))

(assert (=> b!2830039 (= res!1178144 (= (apply!7776 (_1!19853 lt!1009592) 0) lt!1009353))))

(declare-fun b!2830040 () Bool)

(assert (=> b!2830040 (= e!1791525 (isEmpty!18385 (_2!19853 lt!1009592)))))

(declare-fun b!2830041 () Bool)

(assert (=> b!2830041 (= e!1791526 (isEmpty!18385 (_2!19853 (lex!2011 thiss!11212 rules!1102 (print!1730 thiss!11212 (singletonSeq!2156 lt!1009353))))))))

(assert (= (and d!821190 res!1178145) b!2830039))

(assert (= (and b!2830039 res!1178144) b!2830040))

(assert (= (and d!821190 res!1178143) b!2830041))

(assert (=> d!821190 m!3259415))

(declare-fun m!3259687 () Bool)

(assert (=> d!821190 m!3259687))

(declare-fun m!3259689 () Bool)

(assert (=> d!821190 m!3259689))

(assert (=> d!821190 m!3259687))

(declare-fun m!3259691 () Bool)

(assert (=> d!821190 m!3259691))

(assert (=> d!821190 m!3259691))

(declare-fun m!3259693 () Bool)

(assert (=> d!821190 m!3259693))

(declare-fun m!3259695 () Bool)

(assert (=> d!821190 m!3259695))

(assert (=> d!821190 m!3259687))

(declare-fun m!3259697 () Bool)

(assert (=> d!821190 m!3259697))

(declare-fun m!3259699 () Bool)

(assert (=> b!2830039 m!3259699))

(declare-fun m!3259701 () Bool)

(assert (=> b!2830040 m!3259701))

(assert (=> b!2830041 m!3259687))

(assert (=> b!2830041 m!3259687))

(assert (=> b!2830041 m!3259691))

(assert (=> b!2830041 m!3259691))

(assert (=> b!2830041 m!3259693))

(declare-fun m!3259703 () Bool)

(assert (=> b!2830041 m!3259703))

(assert (=> b!2829874 d!821190))

(declare-fun d!821192 () Bool)

(assert (=> d!821192 (rulesProduceIndividualToken!2115 thiss!11212 rules!1102 lt!1009353)))

(declare-fun lt!1009593 () Unit!47319)

(assert (=> d!821192 (= lt!1009593 (choose!16715 thiss!11212 rules!1102 lt!1009358 lt!1009353))))

(assert (=> d!821192 (not (isEmpty!18384 rules!1102))))

(assert (=> d!821192 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!733 thiss!11212 rules!1102 lt!1009358 lt!1009353) lt!1009593)))

(declare-fun bs!518213 () Bool)

(assert (= bs!518213 d!821192))

(assert (=> bs!518213 m!3259401))

(declare-fun m!3259705 () Bool)

(assert (=> bs!518213 m!3259705))

(assert (=> bs!518213 m!3259415))

(assert (=> b!2829874 d!821192))

(declare-fun lt!1009598 () tuple3!5274)

(declare-fun d!821194 () Bool)

(assert (=> d!821194 (= (_1!19852 lt!1009598) (separableTokensPredicate!911 thiss!11212 lt!1009353 lt!1009359 rules!1102))))

(declare-fun lt!1009599 () tuple3!5274)

(assert (=> d!821194 (= lt!1009598 (tuple3!5275 (not (_1!19852 lt!1009599)) (_2!19852 lt!1009599) (_3!3107 lt!1009599)))))

(declare-fun prefixMatchZipperSequenceMem!2 (Regex!8379 BalanceConc!20300 CacheUp!2688 CacheDown!2810) tuple3!5274)

(declare-fun rulesRegex!993 (LexerInterface!4578 List!33432) Regex!8379)

(declare-fun ++!8097 (BalanceConc!20300 BalanceConc!20300) BalanceConc!20300)

(declare-fun singletonSeq!2157 (C!16940) BalanceConc!20300)

(declare-fun apply!7779 (BalanceConc!20300 Int) C!16940)

(assert (=> d!821194 (= lt!1009599 (prefixMatchZipperSequenceMem!2 (rulesRegex!993 thiss!11212 rules!1102) (++!8097 (charsOf!3093 lt!1009353) (singletonSeq!2157 (apply!7779 (charsOf!3093 lt!1009359) 0))) cacheUp!420 cacheDown!433))))

(assert (=> d!821194 (not (isEmpty!18384 rules!1102))))

(assert (=> d!821194 (= (separableTokensPredicateMem!8 thiss!11212 lt!1009353 lt!1009359 rules!1102 cacheUp!420 cacheDown!433) lt!1009598)))

(declare-fun bs!518214 () Bool)

(assert (= bs!518214 d!821194))

(declare-fun m!3259707 () Bool)

(assert (=> bs!518214 m!3259707))

(declare-fun m!3259709 () Bool)

(assert (=> bs!518214 m!3259709))

(declare-fun m!3259711 () Bool)

(assert (=> bs!518214 m!3259711))

(declare-fun m!3259713 () Bool)

(assert (=> bs!518214 m!3259713))

(declare-fun m!3259715 () Bool)

(assert (=> bs!518214 m!3259715))

(declare-fun m!3259717 () Bool)

(assert (=> bs!518214 m!3259717))

(assert (=> bs!518214 m!3259713))

(assert (=> bs!518214 m!3259717))

(assert (=> bs!518214 m!3259709))

(assert (=> bs!518214 m!3259415))

(assert (=> bs!518214 m!3259707))

(assert (=> bs!518214 m!3259423))

(assert (=> bs!518214 m!3259423))

(assert (=> bs!518214 m!3259715))

(declare-fun m!3259719 () Bool)

(assert (=> bs!518214 m!3259719))

(assert (=> b!2829874 d!821194))

(declare-fun d!821196 () Bool)

(declare-fun lt!1009600 () Bool)

(assert (=> d!821196 (= lt!1009600 (select (content!4633 lt!1009358) lt!1009359))))

(declare-fun e!1791528 () Bool)

(assert (=> d!821196 (= lt!1009600 e!1791528)))

(declare-fun res!1178146 () Bool)

(assert (=> d!821196 (=> (not res!1178146) (not e!1791528))))

(assert (=> d!821196 (= res!1178146 ((_ is Cons!33307) lt!1009358))))

(assert (=> d!821196 (= (contains!6086 lt!1009358 lt!1009359) lt!1009600)))

(declare-fun b!2830042 () Bool)

(declare-fun e!1791527 () Bool)

(assert (=> b!2830042 (= e!1791528 e!1791527)))

(declare-fun res!1178147 () Bool)

(assert (=> b!2830042 (=> res!1178147 e!1791527)))

(assert (=> b!2830042 (= res!1178147 (= (h!38727 lt!1009358) lt!1009359))))

(declare-fun b!2830043 () Bool)

(assert (=> b!2830043 (= e!1791527 (contains!6086 (t!231280 lt!1009358) lt!1009359))))

(assert (= (and d!821196 res!1178146) b!2830042))

(assert (= (and b!2830042 (not res!1178147)) b!2830043))

(assert (=> d!821196 m!3259477))

(declare-fun m!3259721 () Bool)

(assert (=> d!821196 m!3259721))

(declare-fun m!3259723 () Bool)

(assert (=> b!2830043 m!3259723))

(assert (=> b!2829894 d!821196))

(declare-fun d!821198 () Bool)

(declare-fun lt!1009601 () Bool)

(assert (=> d!821198 (= lt!1009601 (contains!6086 (list!12462 v!6247) lt!1009359))))

(assert (=> d!821198 (= lt!1009601 (contains!6087 (c!457771 v!6247) lt!1009359))))

(assert (=> d!821198 (= (contains!6085 v!6247 lt!1009359) lt!1009601)))

(declare-fun bs!518215 () Bool)

(assert (= bs!518215 d!821198))

(assert (=> bs!518215 m!3259383))

(assert (=> bs!518215 m!3259383))

(declare-fun m!3259725 () Bool)

(assert (=> bs!518215 m!3259725))

(declare-fun m!3259727 () Bool)

(assert (=> bs!518215 m!3259727))

(assert (=> b!2829875 d!821198))

(declare-fun d!821200 () Bool)

(declare-fun lt!1009602 () Token!9378)

(assert (=> d!821200 (= lt!1009602 (apply!7777 (list!12462 v!6247) (+ 1 from!827)))))

(assert (=> d!821200 (= lt!1009602 (apply!7778 (c!457771 v!6247) (+ 1 from!827)))))

(declare-fun e!1791529 () Bool)

(assert (=> d!821200 e!1791529))

(declare-fun res!1178148 () Bool)

(assert (=> d!821200 (=> (not res!1178148) (not e!1791529))))

(assert (=> d!821200 (= res!1178148 (<= 0 (+ 1 from!827)))))

(assert (=> d!821200 (= (apply!7776 v!6247 (+ 1 from!827)) lt!1009602)))

(declare-fun b!2830044 () Bool)

(assert (=> b!2830044 (= e!1791529 (< (+ 1 from!827) (size!25929 v!6247)))))

(assert (= (and d!821200 res!1178148) b!2830044))

(assert (=> d!821200 m!3259383))

(assert (=> d!821200 m!3259383))

(declare-fun m!3259729 () Bool)

(assert (=> d!821200 m!3259729))

(declare-fun m!3259731 () Bool)

(assert (=> d!821200 m!3259731))

(assert (=> b!2830044 m!3259357))

(assert (=> b!2829875 d!821200))

(declare-fun d!821202 () Bool)

(declare-fun isBalanced!3122 (Conc!10332) Bool)

(assert (=> d!821202 (= (inv!45252 v!6247) (isBalanced!3122 (c!457771 v!6247)))))

(declare-fun bs!518216 () Bool)

(assert (= bs!518216 d!821202))

(declare-fun m!3259733 () Bool)

(assert (=> bs!518216 m!3259733))

(assert (=> start!274794 d!821202))

(declare-fun d!821204 () Bool)

(declare-fun res!1178151 () Bool)

(declare-fun e!1791532 () Bool)

(assert (=> d!821204 (=> (not res!1178151) (not e!1791532))))

(assert (=> d!821204 (= res!1178151 ((_ is HashMap!3991) (cache!4126 cacheDown!433)))))

(assert (=> d!821204 (= (inv!45253 cacheDown!433) e!1791532)))

(declare-fun b!2830047 () Bool)

(declare-fun validCacheMapDown!435 (MutableMap!3991) Bool)

(assert (=> b!2830047 (= e!1791532 (validCacheMapDown!435 (cache!4126 cacheDown!433)))))

(assert (= (and d!821204 res!1178151) b!2830047))

(declare-fun m!3259735 () Bool)

(assert (=> b!2830047 m!3259735))

(assert (=> start!274794 d!821204))

(declare-fun d!821206 () Bool)

(declare-fun res!1178154 () Bool)

(declare-fun e!1791535 () Bool)

(assert (=> d!821206 (=> (not res!1178154) (not e!1791535))))

(assert (=> d!821206 (= res!1178154 ((_ is HashMap!3992) (cache!4127 cacheUp!420)))))

(assert (=> d!821206 (= (inv!45254 cacheUp!420) e!1791535)))

(declare-fun b!2830050 () Bool)

(declare-fun validCacheMapUp!404 (MutableMap!3992) Bool)

(assert (=> b!2830050 (= e!1791535 (validCacheMapUp!404 (cache!4127 cacheUp!420)))))

(assert (= (and d!821206 res!1178154) b!2830050))

(declare-fun m!3259737 () Bool)

(assert (=> b!2830050 m!3259737))

(assert (=> start!274794 d!821206))

(declare-fun d!821208 () Bool)

(declare-fun res!1178157 () Bool)

(declare-fun e!1791538 () Bool)

(assert (=> d!821208 (=> (not res!1178157) (not e!1791538))))

(declare-fun rulesValid!1843 (LexerInterface!4578 List!33432) Bool)

(assert (=> d!821208 (= res!1178157 (rulesValid!1843 thiss!11212 rules!1102))))

(assert (=> d!821208 (= (rulesInvariant!3994 thiss!11212 rules!1102) e!1791538)))

(declare-fun b!2830053 () Bool)

(declare-datatypes ((List!33433 0))(
  ( (Nil!33309) (Cons!33309 (h!38729 String!36612) (t!231292 List!33433)) )
))
(declare-fun noDuplicateTag!1839 (LexerInterface!4578 List!33432 List!33433) Bool)

(assert (=> b!2830053 (= e!1791538 (noDuplicateTag!1839 thiss!11212 rules!1102 Nil!33309))))

(assert (= (and d!821208 res!1178157) b!2830053))

(declare-fun m!3259739 () Bool)

(assert (=> d!821208 m!3259739))

(declare-fun m!3259741 () Bool)

(assert (=> b!2830053 m!3259741))

(assert (=> b!2829895 d!821208))

(declare-fun b!2830067 () Bool)

(declare-fun e!1791550 () Bool)

(assert (=> b!2830067 (= e!1791550 true)))

(declare-fun b!2830066 () Bool)

(declare-fun e!1791549 () Bool)

(assert (=> b!2830066 (= e!1791549 e!1791550)))

(declare-fun b!2830065 () Bool)

(declare-fun e!1791548 () Bool)

(assert (=> b!2830065 (= e!1791548 e!1791549)))

(declare-fun d!821210 () Bool)

(assert (=> d!821210 e!1791548))

(assert (= b!2830066 b!2830067))

(assert (= b!2830065 b!2830066))

(assert (= (and d!821210 ((_ is Cons!33308) rules!1102)) b!2830065))

(declare-fun order!17741 () Int)

(declare-fun lambda!103896 () Int)

(declare-fun order!17743 () Int)

(declare-fun dynLambda!13992 (Int Int) Int)

(declare-fun dynLambda!13993 (Int Int) Int)

(assert (=> b!2830067 (< (dynLambda!13992 order!17741 (toValue!7014 (transformation!4988 (h!38728 rules!1102)))) (dynLambda!13993 order!17743 lambda!103896))))

(declare-fun order!17745 () Int)

(declare-fun dynLambda!13994 (Int Int) Int)

(assert (=> b!2830067 (< (dynLambda!13994 order!17745 (toChars!6873 (transformation!4988 (h!38728 rules!1102)))) (dynLambda!13993 order!17743 lambda!103896))))

(assert (=> d!821210 true))

(declare-fun e!1791541 () Bool)

(assert (=> d!821210 e!1791541))

(declare-fun res!1178160 () Bool)

(assert (=> d!821210 (=> (not res!1178160) (not e!1791541))))

(declare-fun lt!1009605 () Bool)

(declare-fun forall!6843 (List!33431 Int) Bool)

(assert (=> d!821210 (= res!1178160 (= lt!1009605 (forall!6843 (list!12462 v!6247) lambda!103896)))))

(declare-fun forall!6844 (BalanceConc!20302 Int) Bool)

(assert (=> d!821210 (= lt!1009605 (forall!6844 v!6247 lambda!103896))))

(assert (=> d!821210 (not (isEmpty!18384 rules!1102))))

(assert (=> d!821210 (= (rulesProduceEachTokenIndividually!1097 thiss!11212 rules!1102 v!6247) lt!1009605)))

(declare-fun b!2830056 () Bool)

(assert (=> b!2830056 (= e!1791541 (= lt!1009605 (rulesProduceEachTokenIndividuallyList!1623 thiss!11212 rules!1102 (list!12462 v!6247))))))

(assert (= (and d!821210 res!1178160) b!2830056))

(assert (=> d!821210 m!3259383))

(assert (=> d!821210 m!3259383))

(declare-fun m!3259743 () Bool)

(assert (=> d!821210 m!3259743))

(declare-fun m!3259745 () Bool)

(assert (=> d!821210 m!3259745))

(assert (=> d!821210 m!3259415))

(assert (=> b!2830056 m!3259383))

(assert (=> b!2830056 m!3259383))

(declare-fun m!3259747 () Bool)

(assert (=> b!2830056 m!3259747))

(assert (=> b!2829885 d!821210))

(declare-fun tp!904000 () Bool)

(declare-fun e!1791555 () Bool)

(declare-fun tp!903998 () Bool)

(declare-fun b!2830078 () Bool)

(assert (=> b!2830078 (= e!1791555 (and (inv!45251 (left!25137 (c!457771 v!6247))) tp!903998 (inv!45251 (right!25467 (c!457771 v!6247))) tp!904000))))

(declare-fun b!2830080 () Bool)

(declare-fun e!1791556 () Bool)

(declare-fun tp!903999 () Bool)

(assert (=> b!2830080 (= e!1791556 tp!903999)))

(declare-fun b!2830079 () Bool)

(declare-fun inv!45259 (IArray!20669) Bool)

(assert (=> b!2830079 (= e!1791555 (and (inv!45259 (xs!13444 (c!457771 v!6247))) e!1791556))))

(assert (=> b!2829881 (= tp!903971 (and (inv!45251 (c!457771 v!6247)) e!1791555))))

(assert (= (and b!2829881 ((_ is Node!10332) (c!457771 v!6247))) b!2830078))

(assert (= b!2830079 b!2830080))

(assert (= (and b!2829881 ((_ is Leaf!15734) (c!457771 v!6247))) b!2830079))

(declare-fun m!3259749 () Bool)

(assert (=> b!2830078 m!3259749))

(declare-fun m!3259751 () Bool)

(assert (=> b!2830078 m!3259751))

(declare-fun m!3259753 () Bool)

(assert (=> b!2830079 m!3259753))

(assert (=> b!2829881 m!3259395))

(declare-fun e!1791563 () Bool)

(assert (=> b!2829882 (= tp!903974 e!1791563)))

(declare-fun b!2830089 () Bool)

(declare-fun e!1791564 () Bool)

(declare-fun tp!904011 () Bool)

(assert (=> b!2830089 (= e!1791564 tp!904011)))

(declare-fun b!2830090 () Bool)

(declare-fun e!1791565 () Bool)

(declare-fun tp!904009 () Bool)

(assert (=> b!2830090 (= e!1791565 tp!904009)))

(declare-fun setNonEmpty!24790 () Bool)

(declare-fun setElem!24790 () Context!4966)

(declare-fun setRes!24790 () Bool)

(declare-fun tp!904010 () Bool)

(declare-fun inv!45260 (Context!4966) Bool)

(assert (=> setNonEmpty!24790 (= setRes!24790 (and tp!904010 (inv!45260 setElem!24790) e!1791565))))

(declare-fun setRest!24790 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24790 (= (_2!19851 (h!38724 mapDefault!18543)) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24790 true) setRest!24790))))

(declare-fun setIsEmpty!24790 () Bool)

(assert (=> setIsEmpty!24790 setRes!24790))

(declare-fun tp!904012 () Bool)

(declare-fun b!2830091 () Bool)

(declare-fun tp_is_empty!14557 () Bool)

(assert (=> b!2830091 (= e!1791563 (and (inv!45260 (_1!19850 (_1!19851 (h!38724 mapDefault!18543)))) e!1791564 tp_is_empty!14557 setRes!24790 tp!904012))))

(declare-fun condSetEmpty!24790 () Bool)

(assert (=> b!2830091 (= condSetEmpty!24790 (= (_2!19851 (h!38724 mapDefault!18543)) ((as const (Array Context!4966 Bool)) false)))))

(assert (= b!2830091 b!2830089))

(assert (= (and b!2830091 condSetEmpty!24790) setIsEmpty!24790))

(assert (= (and b!2830091 (not condSetEmpty!24790)) setNonEmpty!24790))

(assert (= setNonEmpty!24790 b!2830090))

(assert (= (and b!2829882 ((_ is Cons!33304) mapDefault!18543)) b!2830091))

(declare-fun m!3259755 () Bool)

(assert (=> setNonEmpty!24790 m!3259755))

(declare-fun m!3259757 () Bool)

(assert (=> b!2830091 m!3259757))

(declare-fun setIsEmpty!24793 () Bool)

(declare-fun setRes!24793 () Bool)

(assert (=> setIsEmpty!24793 setRes!24793))

(declare-fun e!1791574 () Bool)

(assert (=> b!2829870 (= tp!903984 e!1791574)))

(declare-fun tp!904023 () Bool)

(declare-fun tp!904024 () Bool)

(declare-fun e!1791573 () Bool)

(declare-fun b!2830100 () Bool)

(assert (=> b!2830100 (= e!1791574 (and tp!904024 (inv!45260 (_2!19848 (_1!19849 (h!38723 (zeroValue!4344 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433)))))))))) e!1791573 tp_is_empty!14557 setRes!24793 tp!904023))))

(declare-fun condSetEmpty!24793 () Bool)

(assert (=> b!2830100 (= condSetEmpty!24793 (= (_2!19849 (h!38723 (zeroValue!4344 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433)))))))) ((as const (Array Context!4966 Bool)) false)))))

(declare-fun b!2830101 () Bool)

(declare-fun e!1791572 () Bool)

(declare-fun tp!904026 () Bool)

(assert (=> b!2830101 (= e!1791572 tp!904026)))

(declare-fun b!2830102 () Bool)

(declare-fun tp!904027 () Bool)

(assert (=> b!2830102 (= e!1791573 tp!904027)))

(declare-fun setElem!24793 () Context!4966)

(declare-fun tp!904025 () Bool)

(declare-fun setNonEmpty!24793 () Bool)

(assert (=> setNonEmpty!24793 (= setRes!24793 (and tp!904025 (inv!45260 setElem!24793) e!1791572))))

(declare-fun setRest!24793 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24793 (= (_2!19849 (h!38723 (zeroValue!4344 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433)))))))) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24793 true) setRest!24793))))

(assert (= b!2830100 b!2830102))

(assert (= (and b!2830100 condSetEmpty!24793) setIsEmpty!24793))

(assert (= (and b!2830100 (not condSetEmpty!24793)) setNonEmpty!24793))

(assert (= setNonEmpty!24793 b!2830101))

(assert (= (and b!2829870 ((_ is Cons!33303) (zeroValue!4344 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433)))))))) b!2830100))

(declare-fun m!3259759 () Bool)

(assert (=> b!2830100 m!3259759))

(declare-fun m!3259761 () Bool)

(assert (=> setNonEmpty!24793 m!3259761))

(declare-fun setIsEmpty!24794 () Bool)

(declare-fun setRes!24794 () Bool)

(assert (=> setIsEmpty!24794 setRes!24794))

(declare-fun e!1791577 () Bool)

(assert (=> b!2829870 (= tp!903981 e!1791577)))

(declare-fun tp!904029 () Bool)

(declare-fun e!1791576 () Bool)

(declare-fun tp!904028 () Bool)

(declare-fun b!2830103 () Bool)

(assert (=> b!2830103 (= e!1791577 (and tp!904029 (inv!45260 (_2!19848 (_1!19849 (h!38723 (minValue!4344 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433)))))))))) e!1791576 tp_is_empty!14557 setRes!24794 tp!904028))))

(declare-fun condSetEmpty!24794 () Bool)

(assert (=> b!2830103 (= condSetEmpty!24794 (= (_2!19849 (h!38723 (minValue!4344 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433)))))))) ((as const (Array Context!4966 Bool)) false)))))

(declare-fun b!2830104 () Bool)

(declare-fun e!1791575 () Bool)

(declare-fun tp!904031 () Bool)

(assert (=> b!2830104 (= e!1791575 tp!904031)))

(declare-fun b!2830105 () Bool)

(declare-fun tp!904032 () Bool)

(assert (=> b!2830105 (= e!1791576 tp!904032)))

(declare-fun setNonEmpty!24794 () Bool)

(declare-fun setElem!24794 () Context!4966)

(declare-fun tp!904030 () Bool)

(assert (=> setNonEmpty!24794 (= setRes!24794 (and tp!904030 (inv!45260 setElem!24794) e!1791575))))

(declare-fun setRest!24794 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24794 (= (_2!19849 (h!38723 (minValue!4344 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433)))))))) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24794 true) setRest!24794))))

(assert (= b!2830103 b!2830105))

(assert (= (and b!2830103 condSetEmpty!24794) setIsEmpty!24794))

(assert (= (and b!2830103 (not condSetEmpty!24794)) setNonEmpty!24794))

(assert (= setNonEmpty!24794 b!2830104))

(assert (= (and b!2829870 ((_ is Cons!33303) (minValue!4344 (v!34327 (underlying!8399 (v!34328 (underlying!8400 (cache!4126 cacheDown!433)))))))) b!2830103))

(declare-fun m!3259763 () Bool)

(assert (=> b!2830103 m!3259763))

(declare-fun m!3259765 () Bool)

(assert (=> setNonEmpty!24794 m!3259765))

(declare-fun b!2830117 () Bool)

(declare-fun e!1791580 () Bool)

(declare-fun tp!904046 () Bool)

(declare-fun tp!904044 () Bool)

(assert (=> b!2830117 (= e!1791580 (and tp!904046 tp!904044))))

(declare-fun b!2830119 () Bool)

(declare-fun tp!904045 () Bool)

(declare-fun tp!904047 () Bool)

(assert (=> b!2830119 (= e!1791580 (and tp!904045 tp!904047))))

(declare-fun b!2830116 () Bool)

(assert (=> b!2830116 (= e!1791580 tp_is_empty!14557)))

(declare-fun b!2830118 () Bool)

(declare-fun tp!904043 () Bool)

(assert (=> b!2830118 (= e!1791580 tp!904043)))

(assert (=> b!2829878 (= tp!903977 e!1791580)))

(assert (= (and b!2829878 ((_ is ElementMatch!8379) (regex!4988 (h!38728 rules!1102)))) b!2830116))

(assert (= (and b!2829878 ((_ is Concat!13597) (regex!4988 (h!38728 rules!1102)))) b!2830117))

(assert (= (and b!2829878 ((_ is Star!8379) (regex!4988 (h!38728 rules!1102)))) b!2830118))

(assert (= (and b!2829878 ((_ is Union!8379) (regex!4988 (h!38728 rules!1102)))) b!2830119))

(declare-fun mapNonEmpty!18546 () Bool)

(declare-fun mapRes!18546 () Bool)

(declare-fun tp!904069 () Bool)

(declare-fun e!1791596 () Bool)

(assert (=> mapNonEmpty!18546 (= mapRes!18546 (and tp!904069 e!1791596))))

(declare-fun mapValue!18546 () List!33428)

(declare-fun mapKey!18546 () (_ BitVec 32))

(declare-fun mapRest!18546 () (Array (_ BitVec 32) List!33428))

(assert (=> mapNonEmpty!18546 (= mapRest!18542 (store mapRest!18546 mapKey!18546 mapValue!18546))))

(declare-fun mapIsEmpty!18546 () Bool)

(assert (=> mapIsEmpty!18546 mapRes!18546))

(declare-fun condMapEmpty!18546 () Bool)

(declare-fun mapDefault!18546 () List!33428)

(assert (=> mapNonEmpty!18542 (= condMapEmpty!18546 (= mapRest!18542 ((as const (Array (_ BitVec 32) List!33428)) mapDefault!18546)))))

(declare-fun e!1791595 () Bool)

(assert (=> mapNonEmpty!18542 (= tp!903975 (and e!1791595 mapRes!18546))))

(declare-fun setIsEmpty!24799 () Bool)

(declare-fun setRes!24799 () Bool)

(assert (=> setIsEmpty!24799 setRes!24799))

(declare-fun b!2830134 () Bool)

(declare-fun e!1791597 () Bool)

(declare-fun tp!904073 () Bool)

(assert (=> b!2830134 (= e!1791597 tp!904073)))

(declare-fun b!2830135 () Bool)

(declare-fun tp!904070 () Bool)

(declare-fun e!1791594 () Bool)

(assert (=> b!2830135 (= e!1791596 (and (inv!45260 (_1!19850 (_1!19851 (h!38724 mapValue!18546)))) e!1791594 tp_is_empty!14557 setRes!24799 tp!904070))))

(declare-fun condSetEmpty!24799 () Bool)

(assert (=> b!2830135 (= condSetEmpty!24799 (= (_2!19851 (h!38724 mapValue!18546)) ((as const (Array Context!4966 Bool)) false)))))

(declare-fun b!2830136 () Bool)

(declare-fun e!1791598 () Bool)

(declare-fun tp!904067 () Bool)

(assert (=> b!2830136 (= e!1791598 tp!904067)))

(declare-fun tp!904066 () Bool)

(declare-fun e!1791593 () Bool)

(declare-fun b!2830137 () Bool)

(declare-fun setRes!24800 () Bool)

(assert (=> b!2830137 (= e!1791595 (and (inv!45260 (_1!19850 (_1!19851 (h!38724 mapDefault!18546)))) e!1791593 tp_is_empty!14557 setRes!24800 tp!904066))))

(declare-fun condSetEmpty!24800 () Bool)

(assert (=> b!2830137 (= condSetEmpty!24800 (= (_2!19851 (h!38724 mapDefault!18546)) ((as const (Array Context!4966 Bool)) false)))))

(declare-fun setIsEmpty!24800 () Bool)

(assert (=> setIsEmpty!24800 setRes!24800))

(declare-fun b!2830138 () Bool)

(declare-fun tp!904071 () Bool)

(assert (=> b!2830138 (= e!1791593 tp!904071)))

(declare-fun b!2830139 () Bool)

(declare-fun tp!904072 () Bool)

(assert (=> b!2830139 (= e!1791594 tp!904072)))

(declare-fun setNonEmpty!24799 () Bool)

(declare-fun tp!904068 () Bool)

(declare-fun setElem!24800 () Context!4966)

(assert (=> setNonEmpty!24799 (= setRes!24800 (and tp!904068 (inv!45260 setElem!24800) e!1791597))))

(declare-fun setRest!24800 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24799 (= (_2!19851 (h!38724 mapDefault!18546)) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24800 true) setRest!24800))))

(declare-fun setElem!24799 () Context!4966)

(declare-fun tp!904074 () Bool)

(declare-fun setNonEmpty!24800 () Bool)

(assert (=> setNonEmpty!24800 (= setRes!24799 (and tp!904074 (inv!45260 setElem!24799) e!1791598))))

(declare-fun setRest!24799 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24800 (= (_2!19851 (h!38724 mapValue!18546)) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24799 true) setRest!24799))))

(assert (= (and mapNonEmpty!18542 condMapEmpty!18546) mapIsEmpty!18546))

(assert (= (and mapNonEmpty!18542 (not condMapEmpty!18546)) mapNonEmpty!18546))

(assert (= b!2830135 b!2830139))

(assert (= (and b!2830135 condSetEmpty!24799) setIsEmpty!24799))

(assert (= (and b!2830135 (not condSetEmpty!24799)) setNonEmpty!24800))

(assert (= setNonEmpty!24800 b!2830136))

(assert (= (and mapNonEmpty!18546 ((_ is Cons!33304) mapValue!18546)) b!2830135))

(assert (= b!2830137 b!2830138))

(assert (= (and b!2830137 condSetEmpty!24800) setIsEmpty!24800))

(assert (= (and b!2830137 (not condSetEmpty!24800)) setNonEmpty!24799))

(assert (= setNonEmpty!24799 b!2830134))

(assert (= (and mapNonEmpty!18542 ((_ is Cons!33304) mapDefault!18546)) b!2830137))

(declare-fun m!3259767 () Bool)

(assert (=> b!2830135 m!3259767))

(declare-fun m!3259769 () Bool)

(assert (=> setNonEmpty!24800 m!3259769))

(declare-fun m!3259771 () Bool)

(assert (=> mapNonEmpty!18546 m!3259771))

(declare-fun m!3259773 () Bool)

(assert (=> b!2830137 m!3259773))

(declare-fun m!3259775 () Bool)

(assert (=> setNonEmpty!24799 m!3259775))

(declare-fun e!1791599 () Bool)

(assert (=> mapNonEmpty!18542 (= tp!903972 e!1791599)))

(declare-fun b!2830140 () Bool)

(declare-fun e!1791600 () Bool)

(declare-fun tp!904077 () Bool)

(assert (=> b!2830140 (= e!1791600 tp!904077)))

(declare-fun b!2830141 () Bool)

(declare-fun e!1791601 () Bool)

(declare-fun tp!904075 () Bool)

(assert (=> b!2830141 (= e!1791601 tp!904075)))

(declare-fun setRes!24801 () Bool)

(declare-fun setNonEmpty!24801 () Bool)

(declare-fun tp!904076 () Bool)

(declare-fun setElem!24801 () Context!4966)

(assert (=> setNonEmpty!24801 (= setRes!24801 (and tp!904076 (inv!45260 setElem!24801) e!1791601))))

(declare-fun setRest!24801 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24801 (= (_2!19851 (h!38724 mapValue!18543)) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24801 true) setRest!24801))))

(declare-fun setIsEmpty!24801 () Bool)

(assert (=> setIsEmpty!24801 setRes!24801))

(declare-fun tp!904078 () Bool)

(declare-fun b!2830142 () Bool)

(assert (=> b!2830142 (= e!1791599 (and (inv!45260 (_1!19850 (_1!19851 (h!38724 mapValue!18543)))) e!1791600 tp_is_empty!14557 setRes!24801 tp!904078))))

(declare-fun condSetEmpty!24801 () Bool)

(assert (=> b!2830142 (= condSetEmpty!24801 (= (_2!19851 (h!38724 mapValue!18543)) ((as const (Array Context!4966 Bool)) false)))))

(assert (= b!2830142 b!2830140))

(assert (= (and b!2830142 condSetEmpty!24801) setIsEmpty!24801))

(assert (= (and b!2830142 (not condSetEmpty!24801)) setNonEmpty!24801))

(assert (= setNonEmpty!24801 b!2830141))

(assert (= (and mapNonEmpty!18542 ((_ is Cons!33304) mapValue!18543)) b!2830142))

(declare-fun m!3259777 () Bool)

(assert (=> setNonEmpty!24801 m!3259777))

(declare-fun m!3259779 () Bool)

(assert (=> b!2830142 m!3259779))

(declare-fun e!1791602 () Bool)

(assert (=> b!2829890 (= tp!903983 e!1791602)))

(declare-fun b!2830143 () Bool)

(declare-fun e!1791603 () Bool)

(declare-fun tp!904081 () Bool)

(assert (=> b!2830143 (= e!1791603 tp!904081)))

(declare-fun b!2830144 () Bool)

(declare-fun e!1791604 () Bool)

(declare-fun tp!904079 () Bool)

(assert (=> b!2830144 (= e!1791604 tp!904079)))

(declare-fun setRes!24802 () Bool)

(declare-fun setNonEmpty!24802 () Bool)

(declare-fun setElem!24802 () Context!4966)

(declare-fun tp!904080 () Bool)

(assert (=> setNonEmpty!24802 (= setRes!24802 (and tp!904080 (inv!45260 setElem!24802) e!1791604))))

(declare-fun setRest!24802 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24802 (= (_2!19851 (h!38724 (zeroValue!4345 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420)))))))) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24802 true) setRest!24802))))

(declare-fun setIsEmpty!24802 () Bool)

(assert (=> setIsEmpty!24802 setRes!24802))

(declare-fun b!2830145 () Bool)

(declare-fun tp!904082 () Bool)

(assert (=> b!2830145 (= e!1791602 (and (inv!45260 (_1!19850 (_1!19851 (h!38724 (zeroValue!4345 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420)))))))))) e!1791603 tp_is_empty!14557 setRes!24802 tp!904082))))

(declare-fun condSetEmpty!24802 () Bool)

(assert (=> b!2830145 (= condSetEmpty!24802 (= (_2!19851 (h!38724 (zeroValue!4345 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420)))))))) ((as const (Array Context!4966 Bool)) false)))))

(assert (= b!2830145 b!2830143))

(assert (= (and b!2830145 condSetEmpty!24802) setIsEmpty!24802))

(assert (= (and b!2830145 (not condSetEmpty!24802)) setNonEmpty!24802))

(assert (= setNonEmpty!24802 b!2830144))

(assert (= (and b!2829890 ((_ is Cons!33304) (zeroValue!4345 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420)))))))) b!2830145))

(declare-fun m!3259781 () Bool)

(assert (=> setNonEmpty!24802 m!3259781))

(declare-fun m!3259783 () Bool)

(assert (=> b!2830145 m!3259783))

(declare-fun e!1791605 () Bool)

(assert (=> b!2829890 (= tp!903987 e!1791605)))

(declare-fun b!2830146 () Bool)

(declare-fun e!1791606 () Bool)

(declare-fun tp!904085 () Bool)

(assert (=> b!2830146 (= e!1791606 tp!904085)))

(declare-fun b!2830147 () Bool)

(declare-fun e!1791607 () Bool)

(declare-fun tp!904083 () Bool)

(assert (=> b!2830147 (= e!1791607 tp!904083)))

(declare-fun tp!904084 () Bool)

(declare-fun setElem!24803 () Context!4966)

(declare-fun setRes!24803 () Bool)

(declare-fun setNonEmpty!24803 () Bool)

(assert (=> setNonEmpty!24803 (= setRes!24803 (and tp!904084 (inv!45260 setElem!24803) e!1791607))))

(declare-fun setRest!24803 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24803 (= (_2!19851 (h!38724 (minValue!4345 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420)))))))) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24803 true) setRest!24803))))

(declare-fun setIsEmpty!24803 () Bool)

(assert (=> setIsEmpty!24803 setRes!24803))

(declare-fun tp!904086 () Bool)

(declare-fun b!2830148 () Bool)

(assert (=> b!2830148 (= e!1791605 (and (inv!45260 (_1!19850 (_1!19851 (h!38724 (minValue!4345 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420)))))))))) e!1791606 tp_is_empty!14557 setRes!24803 tp!904086))))

(declare-fun condSetEmpty!24803 () Bool)

(assert (=> b!2830148 (= condSetEmpty!24803 (= (_2!19851 (h!38724 (minValue!4345 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420)))))))) ((as const (Array Context!4966 Bool)) false)))))

(assert (= b!2830148 b!2830146))

(assert (= (and b!2830148 condSetEmpty!24803) setIsEmpty!24803))

(assert (= (and b!2830148 (not condSetEmpty!24803)) setNonEmpty!24803))

(assert (= setNonEmpty!24803 b!2830147))

(assert (= (and b!2829890 ((_ is Cons!33304) (minValue!4345 (v!34329 (underlying!8401 (v!34330 (underlying!8402 (cache!4127 cacheUp!420)))))))) b!2830148))

(declare-fun m!3259785 () Bool)

(assert (=> setNonEmpty!24803 m!3259785))

(declare-fun m!3259787 () Bool)

(assert (=> b!2830148 m!3259787))

(declare-fun b!2830159 () Bool)

(declare-fun b_free!81269 () Bool)

(declare-fun b_next!81973 () Bool)

(assert (=> b!2830159 (= b_free!81269 (not b_next!81973))))

(declare-fun tp!904096 () Bool)

(declare-fun b_and!206929 () Bool)

(assert (=> b!2830159 (= tp!904096 b_and!206929)))

(declare-fun b_free!81271 () Bool)

(declare-fun b_next!81975 () Bool)

(assert (=> b!2830159 (= b_free!81271 (not b_next!81975))))

(declare-fun tb!154175 () Bool)

(declare-fun t!231291 () Bool)

(assert (=> (and b!2830159 (= (toChars!6873 (transformation!4988 (h!38728 (t!231281 rules!1102)))) (toChars!6873 (transformation!4988 (rule!7416 lt!1009359)))) t!231291) tb!154175))

(declare-fun result!192154 () Bool)

(assert (= result!192154 result!192138))

(assert (=> d!821130 t!231291))

(declare-fun b_and!206931 () Bool)

(declare-fun tp!904097 () Bool)

(assert (=> b!2830159 (= tp!904097 (and (=> t!231291 result!192154) b_and!206931))))

(declare-fun e!1791616 () Bool)

(assert (=> b!2830159 (= e!1791616 (and tp!904096 tp!904097))))

(declare-fun b!2830158 () Bool)

(declare-fun e!1791617 () Bool)

(declare-fun tp!904098 () Bool)

(assert (=> b!2830158 (= e!1791617 (and tp!904098 (inv!45248 (tag!5492 (h!38728 (t!231281 rules!1102)))) (inv!45250 (transformation!4988 (h!38728 (t!231281 rules!1102)))) e!1791616))))

(declare-fun b!2830157 () Bool)

(declare-fun e!1791619 () Bool)

(declare-fun tp!904095 () Bool)

(assert (=> b!2830157 (= e!1791619 (and e!1791617 tp!904095))))

(assert (=> b!2829883 (= tp!903976 e!1791619)))

(assert (= b!2830158 b!2830159))

(assert (= b!2830157 b!2830158))

(assert (= (and b!2829883 ((_ is Cons!33308) (t!231281 rules!1102))) b!2830157))

(declare-fun m!3259789 () Bool)

(assert (=> b!2830158 m!3259789))

(declare-fun m!3259791 () Bool)

(assert (=> b!2830158 m!3259791))

(declare-fun setIsEmpty!24804 () Bool)

(declare-fun setRes!24804 () Bool)

(assert (=> setIsEmpty!24804 setRes!24804))

(declare-fun e!1791622 () Bool)

(assert (=> b!2829884 (= tp!903980 e!1791622)))

(declare-fun e!1791621 () Bool)

(declare-fun tp!904099 () Bool)

(declare-fun b!2830160 () Bool)

(declare-fun tp!904100 () Bool)

(assert (=> b!2830160 (= e!1791622 (and tp!904100 (inv!45260 (_2!19848 (_1!19849 (h!38723 mapDefault!18542)))) e!1791621 tp_is_empty!14557 setRes!24804 tp!904099))))

(declare-fun condSetEmpty!24804 () Bool)

(assert (=> b!2830160 (= condSetEmpty!24804 (= (_2!19849 (h!38723 mapDefault!18542)) ((as const (Array Context!4966 Bool)) false)))))

(declare-fun b!2830161 () Bool)

(declare-fun e!1791620 () Bool)

(declare-fun tp!904102 () Bool)

(assert (=> b!2830161 (= e!1791620 tp!904102)))

(declare-fun b!2830162 () Bool)

(declare-fun tp!904103 () Bool)

(assert (=> b!2830162 (= e!1791621 tp!904103)))

(declare-fun setNonEmpty!24804 () Bool)

(declare-fun tp!904101 () Bool)

(declare-fun setElem!24804 () Context!4966)

(assert (=> setNonEmpty!24804 (= setRes!24804 (and tp!904101 (inv!45260 setElem!24804) e!1791620))))

(declare-fun setRest!24804 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24804 (= (_2!19849 (h!38723 mapDefault!18542)) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24804 true) setRest!24804))))

(assert (= b!2830160 b!2830162))

(assert (= (and b!2830160 condSetEmpty!24804) setIsEmpty!24804))

(assert (= (and b!2830160 (not condSetEmpty!24804)) setNonEmpty!24804))

(assert (= setNonEmpty!24804 b!2830161))

(assert (= (and b!2829884 ((_ is Cons!33303) mapDefault!18542)) b!2830160))

(declare-fun m!3259793 () Bool)

(assert (=> b!2830160 m!3259793))

(declare-fun m!3259795 () Bool)

(assert (=> setNonEmpty!24804 m!3259795))

(declare-fun setRes!24810 () Bool)

(declare-fun e!1791636 () Bool)

(declare-fun tp!904132 () Bool)

(declare-fun setNonEmpty!24809 () Bool)

(declare-fun setElem!24810 () Context!4966)

(assert (=> setNonEmpty!24809 (= setRes!24810 (and tp!904132 (inv!45260 setElem!24810) e!1791636))))

(declare-fun mapValue!18549 () List!33427)

(declare-fun setRest!24810 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24809 (= (_2!19849 (h!38723 mapValue!18549)) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24810 true) setRest!24810))))

(declare-fun setNonEmpty!24810 () Bool)

(declare-fun setElem!24809 () Context!4966)

(declare-fun setRes!24809 () Bool)

(declare-fun tp!904130 () Bool)

(declare-fun e!1791640 () Bool)

(assert (=> setNonEmpty!24810 (= setRes!24809 (and tp!904130 (inv!45260 setElem!24809) e!1791640))))

(declare-fun mapDefault!18549 () List!33427)

(declare-fun setRest!24809 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24810 (= (_2!19849 (h!38723 mapDefault!18549)) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24809 true) setRest!24809))))

(declare-fun b!2830177 () Bool)

(declare-fun e!1791635 () Bool)

(declare-fun tp!904134 () Bool)

(assert (=> b!2830177 (= e!1791635 tp!904134)))

(declare-fun b!2830178 () Bool)

(declare-fun tp!904136 () Bool)

(assert (=> b!2830178 (= e!1791640 tp!904136)))

(declare-fun mapIsEmpty!18549 () Bool)

(declare-fun mapRes!18549 () Bool)

(assert (=> mapIsEmpty!18549 mapRes!18549))

(declare-fun setIsEmpty!24809 () Bool)

(assert (=> setIsEmpty!24809 setRes!24810))

(declare-fun b!2830179 () Bool)

(declare-fun tp!904127 () Bool)

(assert (=> b!2830179 (= e!1791636 tp!904127)))

(declare-fun condMapEmpty!18549 () Bool)

(assert (=> mapNonEmpty!18543 (= condMapEmpty!18549 (= mapRest!18543 ((as const (Array (_ BitVec 32) List!33427)) mapDefault!18549)))))

(declare-fun e!1791639 () Bool)

(assert (=> mapNonEmpty!18543 (= tp!903979 (and e!1791639 mapRes!18549))))

(declare-fun e!1791638 () Bool)

(declare-fun b!2830180 () Bool)

(declare-fun tp!904135 () Bool)

(declare-fun tp!904126 () Bool)

(assert (=> b!2830180 (= e!1791638 (and tp!904135 (inv!45260 (_2!19848 (_1!19849 (h!38723 mapValue!18549)))) e!1791635 tp_is_empty!14557 setRes!24810 tp!904126))))

(declare-fun condSetEmpty!24810 () Bool)

(assert (=> b!2830180 (= condSetEmpty!24810 (= (_2!19849 (h!38723 mapValue!18549)) ((as const (Array Context!4966 Bool)) false)))))

(declare-fun e!1791637 () Bool)

(declare-fun tp!904128 () Bool)

(declare-fun b!2830181 () Bool)

(declare-fun tp!904131 () Bool)

(assert (=> b!2830181 (= e!1791639 (and tp!904128 (inv!45260 (_2!19848 (_1!19849 (h!38723 mapDefault!18549)))) e!1791637 tp_is_empty!14557 setRes!24809 tp!904131))))

(declare-fun condSetEmpty!24809 () Bool)

(assert (=> b!2830181 (= condSetEmpty!24809 (= (_2!19849 (h!38723 mapDefault!18549)) ((as const (Array Context!4966 Bool)) false)))))

(declare-fun b!2830182 () Bool)

(declare-fun tp!904133 () Bool)

(assert (=> b!2830182 (= e!1791637 tp!904133)))

(declare-fun setIsEmpty!24810 () Bool)

(assert (=> setIsEmpty!24810 setRes!24809))

(declare-fun mapNonEmpty!18549 () Bool)

(declare-fun tp!904129 () Bool)

(assert (=> mapNonEmpty!18549 (= mapRes!18549 (and tp!904129 e!1791638))))

(declare-fun mapKey!18549 () (_ BitVec 32))

(declare-fun mapRest!18549 () (Array (_ BitVec 32) List!33427))

(assert (=> mapNonEmpty!18549 (= mapRest!18543 (store mapRest!18549 mapKey!18549 mapValue!18549))))

(assert (= (and mapNonEmpty!18543 condMapEmpty!18549) mapIsEmpty!18549))

(assert (= (and mapNonEmpty!18543 (not condMapEmpty!18549)) mapNonEmpty!18549))

(assert (= b!2830180 b!2830177))

(assert (= (and b!2830180 condSetEmpty!24810) setIsEmpty!24809))

(assert (= (and b!2830180 (not condSetEmpty!24810)) setNonEmpty!24809))

(assert (= setNonEmpty!24809 b!2830179))

(assert (= (and mapNonEmpty!18549 ((_ is Cons!33303) mapValue!18549)) b!2830180))

(assert (= b!2830181 b!2830182))

(assert (= (and b!2830181 condSetEmpty!24809) setIsEmpty!24810))

(assert (= (and b!2830181 (not condSetEmpty!24809)) setNonEmpty!24810))

(assert (= setNonEmpty!24810 b!2830178))

(assert (= (and mapNonEmpty!18543 ((_ is Cons!33303) mapDefault!18549)) b!2830181))

(declare-fun m!3259797 () Bool)

(assert (=> setNonEmpty!24809 m!3259797))

(declare-fun m!3259799 () Bool)

(assert (=> setNonEmpty!24810 m!3259799))

(declare-fun m!3259801 () Bool)

(assert (=> mapNonEmpty!18549 m!3259801))

(declare-fun m!3259803 () Bool)

(assert (=> b!2830180 m!3259803))

(declare-fun m!3259805 () Bool)

(assert (=> b!2830181 m!3259805))

(declare-fun setIsEmpty!24811 () Bool)

(declare-fun setRes!24811 () Bool)

(assert (=> setIsEmpty!24811 setRes!24811))

(declare-fun e!1791643 () Bool)

(assert (=> mapNonEmpty!18543 (= tp!903973 e!1791643)))

(declare-fun e!1791642 () Bool)

(declare-fun b!2830183 () Bool)

(declare-fun tp!904137 () Bool)

(declare-fun tp!904138 () Bool)

(assert (=> b!2830183 (= e!1791643 (and tp!904138 (inv!45260 (_2!19848 (_1!19849 (h!38723 mapValue!18542)))) e!1791642 tp_is_empty!14557 setRes!24811 tp!904137))))

(declare-fun condSetEmpty!24811 () Bool)

(assert (=> b!2830183 (= condSetEmpty!24811 (= (_2!19849 (h!38723 mapValue!18542)) ((as const (Array Context!4966 Bool)) false)))))

(declare-fun b!2830184 () Bool)

(declare-fun e!1791641 () Bool)

(declare-fun tp!904140 () Bool)

(assert (=> b!2830184 (= e!1791641 tp!904140)))

(declare-fun b!2830185 () Bool)

(declare-fun tp!904141 () Bool)

(assert (=> b!2830185 (= e!1791642 tp!904141)))

(declare-fun tp!904139 () Bool)

(declare-fun setNonEmpty!24811 () Bool)

(declare-fun setElem!24811 () Context!4966)

(assert (=> setNonEmpty!24811 (= setRes!24811 (and tp!904139 (inv!45260 setElem!24811) e!1791641))))

(declare-fun setRest!24811 () (InoxSet Context!4966))

(assert (=> setNonEmpty!24811 (= (_2!19849 (h!38723 mapValue!18542)) ((_ map or) (store ((as const (Array Context!4966 Bool)) false) setElem!24811 true) setRest!24811))))

(assert (= b!2830183 b!2830185))

(assert (= (and b!2830183 condSetEmpty!24811) setIsEmpty!24811))

(assert (= (and b!2830183 (not condSetEmpty!24811)) setNonEmpty!24811))

(assert (= setNonEmpty!24811 b!2830184))

(assert (= (and mapNonEmpty!18543 ((_ is Cons!33303) mapValue!18542)) b!2830183))

(declare-fun m!3259807 () Bool)

(assert (=> b!2830183 m!3259807))

(declare-fun m!3259809 () Bool)

(assert (=> setNonEmpty!24811 m!3259809))

(check-sat (not b_next!81965) (not b!2830053) (not d!821140) (not d!821188) (not b!2830022) (not d!821156) (not d!821154) (not b!2830143) (not d!821182) (not tb!154173) (not b!2829953) (not mapNonEmpty!18546) (not b!2830148) (not b!2830162) (not bm!183272) (not d!821166) (not b!2830050) (not d!821184) (not d!821148) (not b!2830018) (not b!2830039) (not b!2830020) (not d!821172) b_and!206931 (not b!2830079) (not b!2829911) (not b!2830184) (not setNonEmpty!24800) (not d!821164) (not b!2830016) (not b!2830119) (not b!2829954) (not b_next!81973) (not d!821168) (not b!2830181) (not b!2829982) (not b!2830065) (not b!2830056) (not d!821190) (not b!2830139) (not b!2829939) (not bm!183273) (not b!2830090) (not b!2830117) (not b!2830137) (not setNonEmpty!24790) (not setNonEmpty!24793) (not b!2830105) (not b!2830147) (not b_next!81971) (not d!821142) (not b!2830136) (not b_next!81961) (not b!2830146) (not b!2830180) (not b!2829983) (not b!2829919) (not b!2830041) (not b!2830103) (not d!821174) (not b!2829958) (not b!2829973) (not setNonEmpty!24811) (not mapNonEmpty!18549) (not b!2830183) b_and!206927 (not b!2829984) (not d!821146) (not setNonEmpty!24803) (not b!2830080) (not b!2830178) (not b!2829913) (not b!2830134) (not b!2830043) (not d!821198) (not b!2830029) (not b!2830140) (not b!2830017) (not d!821200) (not b!2829970) (not d!821192) (not b!2830091) (not setNonEmpty!24810) (not b!2830019) (not b!2830177) (not b!2829962) (not b!2829955) (not b!2830021) (not b!2829945) (not b!2830182) (not bm!183274) (not b!2830104) (not b!2830144) (not b!2830145) (not b!2829881) (not setNonEmpty!24799) b_and!206915 (not b!2829964) (not b!2829996) b_and!206925 (not setNonEmpty!24801) (not d!821144) (not b_next!81969) (not b!2829995) (not d!821196) (not d!821150) (not b!2829916) (not b!2830047) (not setNonEmpty!24804) (not b_next!81967) (not d!821202) (not b!2830038) (not d!821186) (not b!2830185) (not b!2830040) (not b_lambda!84995) (not b!2830118) (not setNonEmpty!24794) (not b!2830161) (not setNonEmpty!24802) b_and!206921 (not b!2830138) (not b_next!81975) (not b!2830037) (not b!2830036) (not b!2830179) (not b!2830100) tp_is_empty!14557 (not b!2830160) (not d!821176) (not d!821160) (not d!821194) (not b!2830023) (not b!2830101) b_and!206917 (not d!821128) (not b!2830135) (not b!2830157) (not b!2830102) (not d!821210) b_and!206919 (not b!2830089) (not b!2830044) (not b!2829959) (not b!2829981) (not b!2830141) (not b!2830158) (not b!2830078) (not b_next!81963) (not b!2830142) (not d!821208) (not b!2829904) (not b!2829999) (not b!2829979) b_and!206929 (not setNonEmpty!24809) (not d!821130))
(check-sat b_and!206931 (not b_next!81973) b_and!206927 b_and!206915 b_and!206925 (not b_next!81965) (not b_next!81969) (not b_next!81967) b_and!206917 b_and!206919 (not b_next!81963) b_and!206929 (not b_next!81971) (not b_next!81961) b_and!206921 (not b_next!81975))
