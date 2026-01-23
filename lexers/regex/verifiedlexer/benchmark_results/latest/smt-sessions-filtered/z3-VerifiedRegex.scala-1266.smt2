; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66024 () Bool)

(assert start!66024)

(declare-fun b!690204 () Bool)

(declare-fun b_free!19465 () Bool)

(declare-fun b_next!19529 () Bool)

(assert (=> b!690204 (= b_free!19465 (not b_next!19529))))

(declare-fun tp!207110 () Bool)

(declare-fun b_and!63259 () Bool)

(assert (=> b!690204 (= tp!207110 b_and!63259)))

(declare-fun b!690202 () Bool)

(declare-fun b_free!19467 () Bool)

(declare-fun b_next!19531 () Bool)

(assert (=> b!690202 (= b_free!19467 (not b_next!19531))))

(declare-fun tp!207120 () Bool)

(declare-fun b_and!63261 () Bool)

(assert (=> b!690202 (= tp!207120 b_and!63261)))

(declare-fun b_free!19469 () Bool)

(declare-fun b_next!19533 () Bool)

(assert (=> b!690202 (= b_free!19469 (not b_next!19533))))

(declare-fun tp!207121 () Bool)

(declare-fun b_and!63263 () Bool)

(assert (=> b!690202 (= tp!207121 b_and!63263)))

(declare-fun b!690197 () Bool)

(declare-fun b_free!19471 () Bool)

(declare-fun b_next!19535 () Bool)

(assert (=> b!690197 (= b_free!19471 (not b_next!19535))))

(declare-fun tp!207112 () Bool)

(declare-fun b_and!63265 () Bool)

(assert (=> b!690197 (= tp!207112 b_and!63265)))

(declare-fun b!690210 () Bool)

(declare-fun b_free!19473 () Bool)

(declare-fun b_next!19537 () Bool)

(assert (=> b!690210 (= b_free!19473 (not b_next!19537))))

(declare-fun tp!207114 () Bool)

(declare-fun b_and!63267 () Bool)

(assert (=> b!690210 (= tp!207114 b_and!63267)))

(declare-fun b!690192 () Bool)

(declare-fun b_free!19475 () Bool)

(declare-fun b_next!19539 () Bool)

(assert (=> b!690192 (= b_free!19475 (not b_next!19539))))

(declare-fun tp!207111 () Bool)

(declare-fun b_and!63269 () Bool)

(assert (=> b!690192 (= tp!207111 b_and!63269)))

(declare-fun b!690211 () Bool)

(declare-fun b_free!19477 () Bool)

(declare-fun b_next!19541 () Bool)

(assert (=> b!690211 (= b_free!19477 (not b_next!19541))))

(declare-fun tp!207107 () Bool)

(declare-fun b_and!63271 () Bool)

(assert (=> b!690211 (= tp!207107 b_and!63271)))

(declare-fun b!690193 () Bool)

(declare-fun b_free!19479 () Bool)

(declare-fun b_next!19543 () Bool)

(assert (=> b!690193 (= b_free!19479 (not b_next!19543))))

(declare-fun tp!207123 () Bool)

(declare-fun b_and!63273 () Bool)

(assert (=> b!690193 (= tp!207123 b_and!63273)))

(declare-fun b!690181 () Bool)

(declare-fun res!313270 () Bool)

(declare-fun e!433896 () Bool)

(assert (=> b!690181 (=> (not res!313270) (not e!433896))))

(declare-datatypes ((LexerInterface!1303 0))(
  ( (LexerInterfaceExt!1300 (__x!5310 Int)) (Lexer!1301) )
))
(declare-fun thiss!12183 () LexerInterface!1303)

(declare-datatypes ((C!4256 0))(
  ( (C!4257 (val!2358 Int)) )
))
(declare-datatypes ((Regex!1827 0))(
  ( (ElementMatch!1827 (c!121528 C!4256)) (Concat!3360 (regOne!4166 Regex!1827) (regTwo!4166 Regex!1827)) (EmptyExpr!1827) (Star!1827 (reg!2156 Regex!1827)) (EmptyLang!1827) (Union!1827 (regOne!4167 Regex!1827) (regTwo!4167 Regex!1827)) )
))
(declare-datatypes ((String!9388 0))(
  ( (String!9389 (value!48078 String)) )
))
(declare-datatypes ((List!7421 0))(
  ( (Nil!7407) (Cons!7407 (h!12808 (_ BitVec 16)) (t!87237 List!7421)) )
))
(declare-datatypes ((TokenValue!1533 0))(
  ( (FloatLiteralValue!3066 (text!11176 List!7421)) (TokenValueExt!1532 (__x!5311 Int)) (Broken!7665 (value!48079 List!7421)) (Object!1546) (End!1533) (Def!1533) (Underscore!1533) (Match!1533) (Else!1533) (Error!1533) (Case!1533) (If!1533) (Extends!1533) (Abstract!1533) (Class!1533) (Val!1533) (DelimiterValue!3066 (del!1593 List!7421)) (KeywordValue!1539 (value!48080 List!7421)) (CommentValue!3066 (value!48081 List!7421)) (WhitespaceValue!3066 (value!48082 List!7421)) (IndentationValue!1533 (value!48083 List!7421)) (String!9390) (Int32!1533) (Broken!7666 (value!48084 List!7421)) (Boolean!1534) (Unit!12627) (OperatorValue!1536 (op!1593 List!7421)) (IdentifierValue!3066 (value!48085 List!7421)) (IdentifierValue!3067 (value!48086 List!7421)) (WhitespaceValue!3067 (value!48087 List!7421)) (True!3066) (False!3066) (Broken!7667 (value!48088 List!7421)) (Broken!7668 (value!48089 List!7421)) (True!3067) (RightBrace!1533) (RightBracket!1533) (Colon!1533) (Null!1533) (Comma!1533) (LeftBracket!1533) (False!3067) (LeftBrace!1533) (ImaginaryLiteralValue!1533 (text!11177 List!7421)) (StringLiteralValue!4599 (value!48090 List!7421)) (EOFValue!1533 (value!48091 List!7421)) (IdentValue!1533 (value!48092 List!7421)) (DelimiterValue!3067 (value!48093 List!7421)) (DedentValue!1533 (value!48094 List!7421)) (NewLineValue!1533 (value!48095 List!7421)) (IntegerValue!4599 (value!48096 (_ BitVec 32)) (text!11178 List!7421)) (IntegerValue!4600 (value!48097 Int) (text!11179 List!7421)) (Times!1533) (Or!1533) (Equal!1533) (Minus!1533) (Broken!7669 (value!48098 List!7421)) (And!1533) (Div!1533) (LessEqual!1533) (Mod!1533) (Concat!3361) (Not!1533) (Plus!1533) (SpaceValue!1533 (value!48099 List!7421)) (IntegerValue!4601 (value!48100 Int) (text!11180 List!7421)) (StringLiteralValue!4600 (text!11181 List!7421)) (FloatLiteralValue!3067 (text!11182 List!7421)) (BytesLiteralValue!1533 (value!48101 List!7421)) (CommentValue!3067 (value!48102 List!7421)) (StringLiteralValue!4601 (value!48103 List!7421)) (ErrorTokenValue!1533 (msg!1594 List!7421)) )
))
(declare-datatypes ((List!7422 0))(
  ( (Nil!7408) (Cons!7408 (h!12809 C!4256) (t!87238 List!7422)) )
))
(declare-datatypes ((IArray!5243 0))(
  ( (IArray!5244 (innerList!2679 List!7422)) )
))
(declare-datatypes ((Conc!2621 0))(
  ( (Node!2621 (left!5965 Conc!2621) (right!6295 Conc!2621) (csize!5472 Int) (cheight!2832 Int)) (Leaf!3888 (xs!5272 IArray!5243) (csize!5473 Int)) (Empty!2621) )
))
(declare-datatypes ((BalanceConc!5254 0))(
  ( (BalanceConc!5255 (c!121529 Conc!2621)) )
))
(declare-datatypes ((TokenValueInjection!2802 0))(
  ( (TokenValueInjection!2803 (toValue!2449 Int) (toChars!2308 Int)) )
))
(declare-datatypes ((Rule!2778 0))(
  ( (Rule!2779 (regex!1489 Regex!1827) (tag!1751 String!9388) (isSeparator!1489 Bool) (transformation!1489 TokenValueInjection!2802)) )
))
(declare-datatypes ((List!7423 0))(
  ( (Nil!7409) (Cons!7409 (h!12810 Rule!2778) (t!87239 List!7423)) )
))
(declare-fun rules!1357 () List!7423)

(declare-fun rulesInvariant!1237 (LexerInterface!1303 List!7423) Bool)

(assert (=> b!690181 (= res!313270 (rulesInvariant!1237 thiss!12183 rules!1357))))

(declare-fun b!690182 () Bool)

(declare-fun e!433898 () Bool)

(declare-fun e!433916 () Bool)

(assert (=> b!690182 (= e!433898 e!433916)))

(declare-fun b!690183 () Bool)

(declare-fun e!433917 () Bool)

(declare-fun e!433902 () Bool)

(declare-fun tp!207119 () Bool)

(assert (=> b!690183 (= e!433917 (and e!433902 tp!207119))))

(declare-fun b!690184 () Bool)

(declare-fun e!433913 () Bool)

(declare-fun e!433909 () Bool)

(assert (=> b!690184 (= e!433913 e!433909)))

(declare-fun e!433907 () Bool)

(declare-fun e!433908 () Bool)

(declare-fun b!690185 () Bool)

(declare-datatypes ((Hashable!721 0))(
  ( (HashableExt!720 (__x!5312 Int)) )
))
(declare-datatypes ((List!7424 0))(
  ( (Nil!7410) (Cons!7410 (h!12811 Regex!1827) (t!87240 List!7424)) )
))
(declare-datatypes ((Context!474 0))(
  ( (Context!475 (exprs!737 List!7424)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7790 0))(
  ( (tuple2!7791 (_1!4296 (InoxSet Context!474)) (_2!4296 Int)) )
))
(declare-datatypes ((array!2821 0))(
  ( (array!2822 (arr!1274 (Array (_ BitVec 32) (_ BitVec 64))) (size!6082 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!7792 0))(
  ( (tuple2!7793 (_1!4297 tuple2!7790) (_2!4297 Int)) )
))
(declare-datatypes ((List!7425 0))(
  ( (Nil!7411) (Cons!7411 (h!12812 tuple2!7792) (t!87241 List!7425)) )
))
(declare-datatypes ((array!2823 0))(
  ( (array!2824 (arr!1275 (Array (_ BitVec 32) List!7425)) (size!6083 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1498 0))(
  ( (LongMapFixedSize!1499 (defaultEntry!1105 Int) (mask!2547 (_ BitVec 32)) (extraKeys!996 (_ BitVec 32)) (zeroValue!1006 List!7425) (minValue!1006 List!7425) (_size!1607 (_ BitVec 32)) (_keys!1043 array!2821) (_values!1028 array!2823) (_vacant!810 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2937 0))(
  ( (Cell!2938 (v!17616 LongMapFixedSize!1498)) )
))
(declare-datatypes ((MutLongMap!749 0))(
  ( (LongMap!749 (underlying!1681 Cell!2937)) (MutLongMapExt!748 (__x!5313 Int)) )
))
(declare-datatypes ((Cell!2939 0))(
  ( (Cell!2940 (v!17617 MutLongMap!749)) )
))
(declare-datatypes ((MutableMap!721 0))(
  ( (MutableMapExt!720 (__x!5314 Int)) (HashMap!721 (underlying!1682 Cell!2939) (hashF!2629 Hashable!721) (_size!1608 (_ BitVec 32)) (defaultValue!872 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!28 0))(
  ( (CacheFindLongestMatch!29 (cache!1108 MutableMap!721) (totalInput!1793 BalanceConc!5254)) )
))
(declare-fun cacheFindLongestMatch!59 () CacheFindLongestMatch!28)

(declare-fun e!433925 () Bool)

(declare-fun inv!9508 (BalanceConc!5254) Bool)

(assert (=> b!690185 (= e!433907 (and e!433908 (inv!9508 (totalInput!1793 cacheFindLongestMatch!59)) e!433925))))

(declare-fun b!690186 () Bool)

(declare-fun e!433906 () Bool)

(declare-fun e!433900 () Bool)

(assert (=> b!690186 (= e!433906 e!433900)))

(declare-fun b!690187 () Bool)

(declare-fun e!433911 () Bool)

(declare-fun tp!207115 () Bool)

(declare-fun mapRes!3014 () Bool)

(assert (=> b!690187 (= e!433911 (and tp!207115 mapRes!3014))))

(declare-fun condMapEmpty!3015 () Bool)

(declare-datatypes ((tuple3!700 0))(
  ( (tuple3!701 (_1!4298 Regex!1827) (_2!4298 Context!474) (_3!401 C!4256)) )
))
(declare-datatypes ((tuple2!7794 0))(
  ( (tuple2!7795 (_1!4299 tuple3!700) (_2!4299 (InoxSet Context!474))) )
))
(declare-datatypes ((List!7426 0))(
  ( (Nil!7412) (Cons!7412 (h!12813 tuple2!7794) (t!87242 List!7426)) )
))
(declare-datatypes ((array!2825 0))(
  ( (array!2826 (arr!1276 (Array (_ BitVec 32) List!7426)) (size!6084 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1500 0))(
  ( (LongMapFixedSize!1501 (defaultEntry!1106 Int) (mask!2548 (_ BitVec 32)) (extraKeys!997 (_ BitVec 32)) (zeroValue!1007 List!7426) (minValue!1007 List!7426) (_size!1609 (_ BitVec 32)) (_keys!1044 array!2821) (_values!1029 array!2825) (_vacant!811 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2941 0))(
  ( (Cell!2942 (v!17618 LongMapFixedSize!1500)) )
))
(declare-datatypes ((MutLongMap!750 0))(
  ( (LongMap!750 (underlying!1683 Cell!2941)) (MutLongMapExt!749 (__x!5315 Int)) )
))
(declare-datatypes ((Cell!2943 0))(
  ( (Cell!2944 (v!17619 MutLongMap!750)) )
))
(declare-datatypes ((Hashable!722 0))(
  ( (HashableExt!721 (__x!5316 Int)) )
))
(declare-datatypes ((MutableMap!722 0))(
  ( (MutableMapExt!721 (__x!5317 Int)) (HashMap!722 (underlying!1684 Cell!2943) (hashF!2630 Hashable!722) (_size!1610 (_ BitVec 32)) (defaultValue!873 Int)) )
))
(declare-datatypes ((CacheDown!372 0))(
  ( (CacheDown!373 (cache!1109 MutableMap!722)) )
))
(declare-fun cacheDown!470 () CacheDown!372)

(declare-fun mapDefault!3014 () List!7426)

(assert (=> b!690187 (= condMapEmpty!3015 (= (arr!1276 (_values!1029 (v!17618 (underlying!1683 (v!17619 (underlying!1684 (cache!1109 cacheDown!470))))))) ((as const (Array (_ BitVec 32) List!7426)) mapDefault!3014)))))

(declare-fun b!690188 () Bool)

(assert (=> b!690188 (= e!433896 false)))

(declare-datatypes ((Token!2686 0))(
  ( (Token!2687 (value!48104 TokenValue!1533) (rule!2532 Rule!2778) (size!6085 Int) (originalCharacters!1768 List!7422)) )
))
(declare-datatypes ((List!7427 0))(
  ( (Nil!7413) (Cons!7413 (h!12814 Token!2686) (t!87243 List!7427)) )
))
(declare-datatypes ((IArray!5245 0))(
  ( (IArray!5246 (innerList!2680 List!7427)) )
))
(declare-datatypes ((Conc!2622 0))(
  ( (Node!2622 (left!5966 Conc!2622) (right!6296 Conc!2622) (csize!5474 Int) (cheight!2833 Int)) (Leaf!3889 (xs!5273 IArray!5245) (csize!5475 Int)) (Empty!2622) )
))
(declare-datatypes ((BalanceConc!5256 0))(
  ( (BalanceConc!5257 (c!121530 Conc!2622)) )
))
(declare-datatypes ((tuple2!7796 0))(
  ( (tuple2!7797 (_1!4300 BalanceConc!5256) (_2!4300 BalanceConc!5254)) )
))
(declare-datatypes ((tuple2!7798 0))(
  ( (tuple2!7799 (_1!4301 Context!474) (_2!4301 C!4256)) )
))
(declare-datatypes ((tuple2!7800 0))(
  ( (tuple2!7801 (_1!4302 tuple2!7798) (_2!4302 (InoxSet Context!474))) )
))
(declare-datatypes ((List!7428 0))(
  ( (Nil!7414) (Cons!7414 (h!12815 tuple2!7800) (t!87244 List!7428)) )
))
(declare-datatypes ((array!2827 0))(
  ( (array!2828 (arr!1277 (Array (_ BitVec 32) List!7428)) (size!6086 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1502 0))(
  ( (LongMapFixedSize!1503 (defaultEntry!1107 Int) (mask!2549 (_ BitVec 32)) (extraKeys!998 (_ BitVec 32)) (zeroValue!1008 List!7428) (minValue!1008 List!7428) (_size!1611 (_ BitVec 32)) (_keys!1045 array!2821) (_values!1030 array!2827) (_vacant!812 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2945 0))(
  ( (Cell!2946 (v!17620 LongMapFixedSize!1502)) )
))
(declare-datatypes ((MutLongMap!751 0))(
  ( (LongMap!751 (underlying!1685 Cell!2945)) (MutLongMapExt!750 (__x!5318 Int)) )
))
(declare-datatypes ((Cell!2947 0))(
  ( (Cell!2948 (v!17621 MutLongMap!751)) )
))
(declare-datatypes ((Hashable!723 0))(
  ( (HashableExt!722 (__x!5319 Int)) )
))
(declare-datatypes ((MutableMap!723 0))(
  ( (MutableMapExt!722 (__x!5320 Int)) (HashMap!723 (underlying!1686 Cell!2947) (hashF!2631 Hashable!723) (_size!1612 (_ BitVec 32)) (defaultValue!874 Int)) )
))
(declare-datatypes ((CacheUp!368 0))(
  ( (CacheUp!369 (cache!1110 MutableMap!723)) )
))
(declare-datatypes ((tuple4!102 0))(
  ( (tuple4!103 (_1!4303 tuple2!7796) (_2!4303 CacheUp!368) (_3!402 CacheDown!372) (_4!51 CacheFindLongestMatch!28)) )
))
(declare-fun lt!284433 () tuple4!102)

(declare-fun input!756 () BalanceConc!5254)

(declare-fun cacheUp!457 () CacheUp!368)

(declare-fun lexTailRecV2Mem!1 (LexerInterface!1303 List!7423 BalanceConc!5254 BalanceConc!5254 BalanceConc!5254 BalanceConc!5256 CacheUp!368 CacheDown!372 CacheFindLongestMatch!28) tuple4!102)

(assert (=> b!690188 (= lt!284433 (lexTailRecV2Mem!1 thiss!12183 rules!1357 input!756 (BalanceConc!5255 Empty!2621) input!756 (BalanceConc!5257 Empty!2622) cacheUp!457 cacheDown!470 cacheFindLongestMatch!59))))

(declare-fun b!690189 () Bool)

(declare-fun e!433918 () Bool)

(declare-fun e!433914 () Bool)

(assert (=> b!690189 (= e!433918 e!433914)))

(declare-fun b!690190 () Bool)

(declare-fun tp!207129 () Bool)

(declare-fun e!433903 () Bool)

(declare-fun inv!9505 (String!9388) Bool)

(declare-fun inv!9509 (TokenValueInjection!2802) Bool)

(assert (=> b!690190 (= e!433902 (and tp!207129 (inv!9505 (tag!1751 (h!12810 rules!1357))) (inv!9509 (transformation!1489 (h!12810 rules!1357))) e!433903))))

(declare-fun b!690191 () Bool)

(declare-fun e!433924 () Bool)

(declare-fun lt!284434 () MutLongMap!750)

(get-info :version)

(assert (=> b!690191 (= e!433924 (and e!433906 ((_ is LongMap!750) lt!284434)))))

(assert (=> b!690191 (= lt!284434 (v!17619 (underlying!1684 (cache!1109 cacheDown!470))))))

(declare-fun e!433904 () Bool)

(declare-fun tp!207117 () Bool)

(declare-fun tp!207126 () Bool)

(declare-fun array_inv!930 (array!2821) Bool)

(declare-fun array_inv!931 (array!2823) Bool)

(assert (=> b!690192 (= e!433916 (and tp!207111 tp!207117 tp!207126 (array_inv!930 (_keys!1043 (v!17616 (underlying!1681 (v!17617 (underlying!1682 (cache!1108 cacheFindLongestMatch!59))))))) (array_inv!931 (_values!1028 (v!17616 (underlying!1681 (v!17617 (underlying!1682 (cache!1108 cacheFindLongestMatch!59))))))) e!433904))))

(declare-fun tp!207125 () Bool)

(declare-fun e!433899 () Bool)

(declare-fun tp!207128 () Bool)

(declare-fun array_inv!932 (array!2827) Bool)

(assert (=> b!690193 (= e!433909 (and tp!207123 tp!207125 tp!207128 (array_inv!930 (_keys!1045 (v!17620 (underlying!1685 (v!17621 (underlying!1686 (cache!1110 cacheUp!457))))))) (array_inv!932 (_values!1030 (v!17620 (underlying!1685 (v!17621 (underlying!1686 (cache!1110 cacheUp!457))))))) e!433899))))

(declare-fun mapIsEmpty!3014 () Bool)

(declare-fun mapRes!3016 () Bool)

(assert (=> mapIsEmpty!3014 mapRes!3016))

(declare-fun b!690194 () Bool)

(declare-fun tp!207108 () Bool)

(declare-fun inv!9510 (Conc!2621) Bool)

(assert (=> b!690194 (= e!433925 (and (inv!9510 (c!121529 (totalInput!1793 cacheFindLongestMatch!59))) tp!207108))))

(declare-fun b!690195 () Bool)

(declare-fun e!433905 () Bool)

(assert (=> b!690195 (= e!433905 e!433898)))

(declare-fun b!690196 () Bool)

(declare-fun res!313272 () Bool)

(assert (=> b!690196 (=> (not res!313272) (not e!433896))))

(assert (=> b!690196 (= res!313272 (= (totalInput!1793 cacheFindLongestMatch!59) input!756))))

(declare-fun tp!207132 () Bool)

(declare-fun tp!207113 () Bool)

(declare-fun e!433921 () Bool)

(declare-fun array_inv!933 (array!2825) Bool)

(assert (=> b!690197 (= e!433921 (and tp!207112 tp!207132 tp!207113 (array_inv!930 (_keys!1044 (v!17618 (underlying!1683 (v!17619 (underlying!1684 (cache!1109 cacheDown!470))))))) (array_inv!933 (_values!1029 (v!17618 (underlying!1683 (v!17619 (underlying!1684 (cache!1109 cacheDown!470))))))) e!433911))))

(declare-fun mapNonEmpty!3014 () Bool)

(declare-fun tp!207109 () Bool)

(declare-fun tp!207131 () Bool)

(assert (=> mapNonEmpty!3014 (= mapRes!3016 (and tp!207109 tp!207131))))

(declare-fun mapKey!3014 () (_ BitVec 32))

(declare-fun mapValue!3015 () List!7428)

(declare-fun mapRest!3015 () (Array (_ BitVec 32) List!7428))

(assert (=> mapNonEmpty!3014 (= (arr!1277 (_values!1030 (v!17620 (underlying!1685 (v!17621 (underlying!1686 (cache!1110 cacheUp!457))))))) (store mapRest!3015 mapKey!3014 mapValue!3015))))

(declare-fun b!690198 () Bool)

(declare-fun res!313268 () Bool)

(assert (=> b!690198 (=> (not res!313268) (not e!433896))))

(declare-fun valid!637 (CacheDown!372) Bool)

(assert (=> b!690198 (= res!313268 (valid!637 cacheDown!470))))

(declare-fun b!690199 () Bool)

(declare-fun e!433912 () Bool)

(assert (=> b!690199 (= e!433912 e!433913)))

(declare-fun b!690200 () Bool)

(declare-fun res!313267 () Bool)

(assert (=> b!690200 (=> (not res!313267) (not e!433896))))

(declare-fun isEmpty!4858 (List!7423) Bool)

(assert (=> b!690200 (= res!313267 (not (isEmpty!4858 rules!1357)))))

(declare-fun b!690201 () Bool)

(declare-fun e!433897 () Bool)

(declare-fun lt!284431 () MutLongMap!749)

(assert (=> b!690201 (= e!433897 (and e!433905 ((_ is LongMap!749) lt!284431)))))

(assert (=> b!690201 (= lt!284431 (v!17617 (underlying!1682 (cache!1108 cacheFindLongestMatch!59))))))

(declare-fun res!313271 () Bool)

(assert (=> start!66024 (=> (not res!313271) (not e!433896))))

(assert (=> start!66024 (= res!313271 ((_ is Lexer!1301) thiss!12183))))

(assert (=> start!66024 e!433896))

(declare-fun inv!9511 (CacheFindLongestMatch!28) Bool)

(assert (=> start!66024 (and (inv!9511 cacheFindLongestMatch!59) e!433907)))

(declare-fun e!433915 () Bool)

(assert (=> start!66024 (and (inv!9508 input!756) e!433915)))

(declare-fun inv!9512 (CacheUp!368) Bool)

(assert (=> start!66024 (and (inv!9512 cacheUp!457) e!433918)))

(declare-fun e!433920 () Bool)

(declare-fun inv!9513 (CacheDown!372) Bool)

(assert (=> start!66024 (and (inv!9513 cacheDown!470) e!433920)))

(assert (=> start!66024 true))

(assert (=> start!66024 e!433917))

(assert (=> b!690202 (= e!433903 (and tp!207120 tp!207121))))

(declare-fun b!690203 () Bool)

(declare-fun res!313269 () Bool)

(assert (=> b!690203 (=> (not res!313269) (not e!433896))))

(declare-fun valid!638 (CacheFindLongestMatch!28) Bool)

(assert (=> b!690203 (= res!313269 (valid!638 cacheFindLongestMatch!59))))

(declare-fun e!433923 () Bool)

(assert (=> b!690204 (= e!433914 (and e!433923 tp!207110))))

(declare-fun b!690205 () Bool)

(declare-fun tp!207127 () Bool)

(assert (=> b!690205 (= e!433915 (and (inv!9510 (c!121529 input!756)) tp!207127))))

(declare-fun b!690206 () Bool)

(declare-fun res!313266 () Bool)

(assert (=> b!690206 (=> (not res!313266) (not e!433896))))

(declare-fun valid!639 (CacheUp!368) Bool)

(assert (=> b!690206 (= res!313266 (valid!639 cacheUp!457))))

(declare-fun b!690207 () Bool)

(declare-fun tp!207130 () Bool)

(assert (=> b!690207 (= e!433899 (and tp!207130 mapRes!3016))))

(declare-fun condMapEmpty!3014 () Bool)

(declare-fun mapDefault!3015 () List!7428)

(assert (=> b!690207 (= condMapEmpty!3014 (= (arr!1277 (_values!1030 (v!17620 (underlying!1685 (v!17621 (underlying!1686 (cache!1110 cacheUp!457))))))) ((as const (Array (_ BitVec 32) List!7428)) mapDefault!3015)))))

(declare-fun b!690208 () Bool)

(declare-fun lt!284432 () MutLongMap!751)

(assert (=> b!690208 (= e!433923 (and e!433912 ((_ is LongMap!751) lt!284432)))))

(assert (=> b!690208 (= lt!284432 (v!17621 (underlying!1686 (cache!1110 cacheUp!457))))))

(declare-fun b!690209 () Bool)

(declare-fun tp!207124 () Bool)

(declare-fun mapRes!3015 () Bool)

(assert (=> b!690209 (= e!433904 (and tp!207124 mapRes!3015))))

(declare-fun condMapEmpty!3016 () Bool)

(declare-fun mapDefault!3016 () List!7425)

(assert (=> b!690209 (= condMapEmpty!3016 (= (arr!1275 (_values!1028 (v!17616 (underlying!1681 (v!17617 (underlying!1682 (cache!1108 cacheFindLongestMatch!59))))))) ((as const (Array (_ BitVec 32) List!7425)) mapDefault!3016)))))

(declare-fun e!433901 () Bool)

(assert (=> b!690210 (= e!433901 (and e!433924 tp!207114))))

(assert (=> b!690211 (= e!433908 (and e!433897 tp!207107))))

(declare-fun mapNonEmpty!3015 () Bool)

(declare-fun tp!207106 () Bool)

(declare-fun tp!207116 () Bool)

(assert (=> mapNonEmpty!3015 (= mapRes!3015 (and tp!207106 tp!207116))))

(declare-fun mapRest!3014 () (Array (_ BitVec 32) List!7425))

(declare-fun mapKey!3016 () (_ BitVec 32))

(declare-fun mapValue!3016 () List!7425)

(assert (=> mapNonEmpty!3015 (= (arr!1275 (_values!1028 (v!17616 (underlying!1681 (v!17617 (underlying!1682 (cache!1108 cacheFindLongestMatch!59))))))) (store mapRest!3014 mapKey!3016 mapValue!3016))))

(declare-fun mapIsEmpty!3015 () Bool)

(assert (=> mapIsEmpty!3015 mapRes!3014))

(declare-fun b!690212 () Bool)

(assert (=> b!690212 (= e!433900 e!433921)))

(declare-fun b!690213 () Bool)

(assert (=> b!690213 (= e!433920 e!433901)))

(declare-fun mapNonEmpty!3016 () Bool)

(declare-fun tp!207122 () Bool)

(declare-fun tp!207118 () Bool)

(assert (=> mapNonEmpty!3016 (= mapRes!3014 (and tp!207122 tp!207118))))

(declare-fun mapRest!3016 () (Array (_ BitVec 32) List!7426))

(declare-fun mapKey!3015 () (_ BitVec 32))

(declare-fun mapValue!3014 () List!7426)

(assert (=> mapNonEmpty!3016 (= (arr!1276 (_values!1029 (v!17618 (underlying!1683 (v!17619 (underlying!1684 (cache!1109 cacheDown!470))))))) (store mapRest!3016 mapKey!3015 mapValue!3014))))

(declare-fun mapIsEmpty!3016 () Bool)

(assert (=> mapIsEmpty!3016 mapRes!3015))

(assert (= (and start!66024 res!313271) b!690200))

(assert (= (and b!690200 res!313267) b!690181))

(assert (= (and b!690181 res!313270) b!690206))

(assert (= (and b!690206 res!313266) b!690198))

(assert (= (and b!690198 res!313268) b!690203))

(assert (= (and b!690203 res!313269) b!690196))

(assert (= (and b!690196 res!313272) b!690188))

(assert (= (and b!690209 condMapEmpty!3016) mapIsEmpty!3016))

(assert (= (and b!690209 (not condMapEmpty!3016)) mapNonEmpty!3015))

(assert (= b!690192 b!690209))

(assert (= b!690182 b!690192))

(assert (= b!690195 b!690182))

(assert (= (and b!690201 ((_ is LongMap!749) (v!17617 (underlying!1682 (cache!1108 cacheFindLongestMatch!59))))) b!690195))

(assert (= b!690211 b!690201))

(assert (= (and b!690185 ((_ is HashMap!721) (cache!1108 cacheFindLongestMatch!59))) b!690211))

(assert (= b!690185 b!690194))

(assert (= start!66024 b!690185))

(assert (= start!66024 b!690205))

(assert (= (and b!690207 condMapEmpty!3014) mapIsEmpty!3014))

(assert (= (and b!690207 (not condMapEmpty!3014)) mapNonEmpty!3014))

(assert (= b!690193 b!690207))

(assert (= b!690184 b!690193))

(assert (= b!690199 b!690184))

(assert (= (and b!690208 ((_ is LongMap!751) (v!17621 (underlying!1686 (cache!1110 cacheUp!457))))) b!690199))

(assert (= b!690204 b!690208))

(assert (= (and b!690189 ((_ is HashMap!723) (cache!1110 cacheUp!457))) b!690204))

(assert (= start!66024 b!690189))

(assert (= (and b!690187 condMapEmpty!3015) mapIsEmpty!3015))

(assert (= (and b!690187 (not condMapEmpty!3015)) mapNonEmpty!3016))

(assert (= b!690197 b!690187))

(assert (= b!690212 b!690197))

(assert (= b!690186 b!690212))

(assert (= (and b!690191 ((_ is LongMap!750) (v!17619 (underlying!1684 (cache!1109 cacheDown!470))))) b!690186))

(assert (= b!690210 b!690191))

(assert (= (and b!690213 ((_ is HashMap!722) (cache!1109 cacheDown!470))) b!690210))

(assert (= start!66024 b!690213))

(assert (= b!690190 b!690202))

(assert (= b!690183 b!690190))

(assert (= (and start!66024 ((_ is Cons!7409) rules!1357)) b!690183))

(declare-fun m!946601 () Bool)

(assert (=> mapNonEmpty!3016 m!946601))

(declare-fun m!946603 () Bool)

(assert (=> b!690194 m!946603))

(declare-fun m!946605 () Bool)

(assert (=> b!690200 m!946605))

(declare-fun m!946607 () Bool)

(assert (=> start!66024 m!946607))

(declare-fun m!946609 () Bool)

(assert (=> start!66024 m!946609))

(declare-fun m!946611 () Bool)

(assert (=> start!66024 m!946611))

(declare-fun m!946613 () Bool)

(assert (=> start!66024 m!946613))

(declare-fun m!946615 () Bool)

(assert (=> b!690192 m!946615))

(declare-fun m!946617 () Bool)

(assert (=> b!690192 m!946617))

(declare-fun m!946619 () Bool)

(assert (=> b!690188 m!946619))

(declare-fun m!946621 () Bool)

(assert (=> b!690198 m!946621))

(declare-fun m!946623 () Bool)

(assert (=> b!690206 m!946623))

(declare-fun m!946625 () Bool)

(assert (=> mapNonEmpty!3015 m!946625))

(declare-fun m!946627 () Bool)

(assert (=> b!690203 m!946627))

(declare-fun m!946629 () Bool)

(assert (=> b!690193 m!946629))

(declare-fun m!946631 () Bool)

(assert (=> b!690193 m!946631))

(declare-fun m!946633 () Bool)

(assert (=> b!690205 m!946633))

(declare-fun m!946635 () Bool)

(assert (=> b!690181 m!946635))

(declare-fun m!946637 () Bool)

(assert (=> mapNonEmpty!3014 m!946637))

(declare-fun m!946639 () Bool)

(assert (=> b!690190 m!946639))

(declare-fun m!946641 () Bool)

(assert (=> b!690190 m!946641))

(declare-fun m!946643 () Bool)

(assert (=> b!690197 m!946643))

(declare-fun m!946645 () Bool)

(assert (=> b!690197 m!946645))

(declare-fun m!946647 () Bool)

(assert (=> b!690185 m!946647))

(check-sat b_and!63269 (not b!690194) b_and!63259 (not b!690188) (not b_next!19543) (not b!690183) (not b!690187) (not b!690197) (not start!66024) (not mapNonEmpty!3015) (not b!690209) (not b_next!19535) (not b!690205) (not b!690190) (not b!690203) (not b!690193) (not b_next!19537) (not b!690185) b_and!63261 (not b!690200) b_and!63273 (not b_next!19541) (not b!690198) (not b_next!19531) (not b!690192) (not mapNonEmpty!3014) (not b_next!19533) b_and!63263 b_and!63265 (not b_next!19539) b_and!63267 (not mapNonEmpty!3016) (not b!690207) (not b_next!19529) (not b!690206) b_and!63271 (not b!690181))
(check-sat b_and!63269 b_and!63259 (not b_next!19535) (not b_next!19543) (not b_next!19531) (not b_next!19533) (not b_next!19529) b_and!63271 (not b_next!19537) b_and!63261 b_and!63273 (not b_next!19541) b_and!63263 b_and!63265 (not b_next!19539) b_and!63267)
