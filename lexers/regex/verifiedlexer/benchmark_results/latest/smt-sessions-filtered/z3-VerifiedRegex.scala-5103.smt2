; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261120 () Bool)

(assert start!261120)

(declare-fun b!2680900 () Bool)

(declare-fun b_free!75729 () Bool)

(declare-fun b_next!76433 () Bool)

(assert (=> b!2680900 (= b_free!75729 (not b_next!76433))))

(declare-fun tp!848040 () Bool)

(declare-fun b_and!198525 () Bool)

(assert (=> b!2680900 (= tp!848040 b_and!198525)))

(declare-fun b!2680882 () Bool)

(declare-fun b_free!75731 () Bool)

(declare-fun b_next!76435 () Bool)

(assert (=> b!2680882 (= b_free!75731 (not b_next!76435))))

(declare-fun tp!848031 () Bool)

(declare-fun b_and!198527 () Bool)

(assert (=> b!2680882 (= tp!848031 b_and!198527)))

(declare-fun b_free!75733 () Bool)

(declare-fun b_next!76437 () Bool)

(assert (=> b!2680882 (= b_free!75733 (not b_next!76437))))

(declare-fun tp!848030 () Bool)

(declare-fun b_and!198529 () Bool)

(assert (=> b!2680882 (= tp!848030 b_and!198529)))

(declare-fun b!2680885 () Bool)

(declare-fun b_free!75735 () Bool)

(declare-fun b_next!76439 () Bool)

(assert (=> b!2680885 (= b_free!75735 (not b_next!76439))))

(declare-fun tp!848036 () Bool)

(declare-fun b_and!198531 () Bool)

(assert (=> b!2680885 (= tp!848036 b_and!198531)))

(declare-fun b!2680878 () Bool)

(declare-fun b_free!75737 () Bool)

(declare-fun b_next!76441 () Bool)

(assert (=> b!2680878 (= b_free!75737 (not b_next!76441))))

(declare-fun tp!848039 () Bool)

(declare-fun b_and!198533 () Bool)

(assert (=> b!2680878 (= tp!848039 b_and!198533)))

(declare-fun b!2680902 () Bool)

(declare-fun b_free!75739 () Bool)

(declare-fun b_next!76443 () Bool)

(assert (=> b!2680902 (= b_free!75739 (not b_next!76443))))

(declare-fun tp!848038 () Bool)

(declare-fun b_and!198535 () Bool)

(assert (=> b!2680902 (= tp!848038 b_and!198535)))

(declare-fun b!2680877 () Bool)

(declare-fun e!1690150 () Bool)

(declare-fun e!1690149 () Bool)

(assert (=> b!2680877 (= e!1690150 e!1690149)))

(declare-fun e!1690162 () Bool)

(declare-fun tp!848023 () Bool)

(declare-datatypes ((C!15900 0))(
  ( (C!15901 (val!9884 Int)) )
))
(declare-datatypes ((Regex!7871 0))(
  ( (ElementMatch!7871 (c!431818 C!15900)) (Concat!12813 (regOne!16254 Regex!7871) (regTwo!16254 Regex!7871)) (EmptyExpr!7871) (Star!7871 (reg!8200 Regex!7871)) (EmptyLang!7871) (Union!7871 (regOne!16255 Regex!7871) (regTwo!16255 Regex!7871)) )
))
(declare-datatypes ((List!31000 0))(
  ( (Nil!30900) (Cons!30900 (h!36320 Regex!7871) (t!224501 List!31000)) )
))
(declare-datatypes ((Context!4290 0))(
  ( (Context!4291 (exprs!2645 List!31000)) )
))
(declare-datatypes ((tuple2!30360 0))(
  ( (tuple2!30361 (_1!17737 Context!4290) (_2!17737 C!15900)) )
))
(declare-datatypes ((array!12381 0))(
  ( (array!12382 (arr!5532 (Array (_ BitVec 32) (_ BitVec 64))) (size!23876 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30362 0))(
  ( (tuple2!30363 (_1!17738 tuple2!30360) (_2!17738 (InoxSet Context!4290))) )
))
(declare-datatypes ((List!31001 0))(
  ( (Nil!30901) (Cons!30901 (h!36321 tuple2!30362) (t!224502 List!31001)) )
))
(declare-datatypes ((array!12383 0))(
  ( (array!12384 (arr!5533 (Array (_ BitVec 32) List!31001)) (size!23877 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3388 0))(
  ( (HashableExt!3387 (__x!19779 Int)) )
))
(declare-datatypes ((LongMapFixedSize!6944 0))(
  ( (LongMapFixedSize!6945 (defaultEntry!3857 Int) (mask!9144 (_ BitVec 32)) (extraKeys!3721 (_ BitVec 32)) (zeroValue!3731 List!31001) (minValue!3731 List!31001) (_size!6987 (_ BitVec 32)) (_keys!3772 array!12381) (_values!3753 array!12383) (_vacant!3533 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13697 0))(
  ( (Cell!13698 (v!32725 LongMapFixedSize!6944)) )
))
(declare-datatypes ((MutLongMap!3472 0))(
  ( (LongMap!3472 (underlying!7147 Cell!13697)) (MutLongMapExt!3471 (__x!19780 Int)) )
))
(declare-datatypes ((Cell!13699 0))(
  ( (Cell!13700 (v!32726 MutLongMap!3472)) )
))
(declare-datatypes ((MutableMap!3378 0))(
  ( (MutableMapExt!3377 (__x!19781 Int)) (HashMap!3378 (underlying!7148 Cell!13699) (hashF!5420 Hashable!3388) (_size!6988 (_ BitVec 32)) (defaultValue!3549 Int)) )
))
(declare-datatypes ((CacheUp!2090 0))(
  ( (CacheUp!2091 (cache!3521 MutableMap!3378)) )
))
(declare-fun cacheUp!486 () CacheUp!2090)

(declare-fun e!1690159 () Bool)

(declare-fun tp!848037 () Bool)

(declare-fun array_inv!3950 (array!12381) Bool)

(declare-fun array_inv!3951 (array!12383) Bool)

(assert (=> b!2680878 (= e!1690162 (and tp!848039 tp!848037 tp!848023 (array_inv!3950 (_keys!3772 (v!32725 (underlying!7147 (v!32726 (underlying!7148 (cache!3521 cacheUp!486))))))) (array_inv!3951 (_values!3753 (v!32725 (underlying!7147 (v!32726 (underlying!7148 (cache!3521 cacheUp!486))))))) e!1690159))))

(declare-fun b!2680879 () Bool)

(declare-fun res!1126897 () Bool)

(declare-fun e!1690164 () Bool)

(assert (=> b!2680879 (=> (not res!1126897) (not e!1690164))))

(declare-datatypes ((List!31002 0))(
  ( (Nil!30902) (Cons!30902 (h!36322 (_ BitVec 16)) (t!224503 List!31002)) )
))
(declare-datatypes ((TokenValue!4942 0))(
  ( (FloatLiteralValue!9884 (text!35039 List!31002)) (TokenValueExt!4941 (__x!19782 Int)) (Broken!24710 (value!152107 List!31002)) (Object!5041) (End!4942) (Def!4942) (Underscore!4942) (Match!4942) (Else!4942) (Error!4942) (Case!4942) (If!4942) (Extends!4942) (Abstract!4942) (Class!4942) (Val!4942) (DelimiterValue!9884 (del!5002 List!31002)) (KeywordValue!4948 (value!152108 List!31002)) (CommentValue!9884 (value!152109 List!31002)) (WhitespaceValue!9884 (value!152110 List!31002)) (IndentationValue!4942 (value!152111 List!31002)) (String!34607) (Int32!4942) (Broken!24711 (value!152112 List!31002)) (Boolean!4943) (Unit!45075) (OperatorValue!4945 (op!5002 List!31002)) (IdentifierValue!9884 (value!152113 List!31002)) (IdentifierValue!9885 (value!152114 List!31002)) (WhitespaceValue!9885 (value!152115 List!31002)) (True!9884) (False!9884) (Broken!24712 (value!152116 List!31002)) (Broken!24713 (value!152117 List!31002)) (True!9885) (RightBrace!4942) (RightBracket!4942) (Colon!4942) (Null!4942) (Comma!4942) (LeftBracket!4942) (False!9885) (LeftBrace!4942) (ImaginaryLiteralValue!4942 (text!35040 List!31002)) (StringLiteralValue!14826 (value!152118 List!31002)) (EOFValue!4942 (value!152119 List!31002)) (IdentValue!4942 (value!152120 List!31002)) (DelimiterValue!9885 (value!152121 List!31002)) (DedentValue!4942 (value!152122 List!31002)) (NewLineValue!4942 (value!152123 List!31002)) (IntegerValue!14826 (value!152124 (_ BitVec 32)) (text!35041 List!31002)) (IntegerValue!14827 (value!152125 Int) (text!35042 List!31002)) (Times!4942) (Or!4942) (Equal!4942) (Minus!4942) (Broken!24714 (value!152126 List!31002)) (And!4942) (Div!4942) (LessEqual!4942) (Mod!4942) (Concat!12814) (Not!4942) (Plus!4942) (SpaceValue!4942 (value!152127 List!31002)) (IntegerValue!14828 (value!152128 Int) (text!35043 List!31002)) (StringLiteralValue!14827 (text!35044 List!31002)) (FloatLiteralValue!9885 (text!35045 List!31002)) (BytesLiteralValue!4942 (value!152129 List!31002)) (CommentValue!9885 (value!152130 List!31002)) (StringLiteralValue!14828 (value!152131 List!31002)) (ErrorTokenValue!4942 (msg!5003 List!31002)) )
))
(declare-datatypes ((String!34608 0))(
  ( (String!34609 (value!152132 String)) )
))
(declare-datatypes ((List!31003 0))(
  ( (Nil!30903) (Cons!30903 (h!36323 C!15900) (t!224504 List!31003)) )
))
(declare-datatypes ((IArray!19343 0))(
  ( (IArray!19344 (innerList!9729 List!31003)) )
))
(declare-datatypes ((Conc!9669 0))(
  ( (Node!9669 (left!23892 Conc!9669) (right!24222 Conc!9669) (csize!19568 Int) (cheight!9880 Int)) (Leaf!14773 (xs!12699 IArray!19343) (csize!19569 Int)) (Empty!9669) )
))
(declare-datatypes ((BalanceConc!18952 0))(
  ( (BalanceConc!18953 (c!431819 Conc!9669)) )
))
(declare-datatypes ((TokenValueInjection!9324 0))(
  ( (TokenValueInjection!9325 (toValue!6674 Int) (toChars!6533 Int)) )
))
(declare-datatypes ((Rule!9240 0))(
  ( (Rule!9241 (regex!4720 Regex!7871) (tag!5224 String!34608) (isSeparator!4720 Bool) (transformation!4720 TokenValueInjection!9324)) )
))
(declare-datatypes ((List!31004 0))(
  ( (Nil!30904) (Cons!30904 (h!36324 Rule!9240) (t!224505 List!31004)) )
))
(declare-fun rules!1381 () List!31004)

(declare-fun isEmpty!17670 (List!31004) Bool)

(assert (=> b!2680879 (= res!1126897 (not (isEmpty!17670 rules!1381)))))

(declare-fun b!2680880 () Bool)

(declare-fun e!1690147 () Bool)

(declare-fun totalInput!354 () BalanceConc!18952)

(declare-fun tp!848021 () Bool)

(declare-fun inv!41925 (Conc!9669) Bool)

(assert (=> b!2680880 (= e!1690147 (and (inv!41925 (c!431819 totalInput!354)) tp!848021))))

(declare-fun b!2680881 () Bool)

(declare-fun e!1690156 () Bool)

(declare-fun e!1690170 () Bool)

(declare-fun lt!944227 () MutLongMap!3472)

(get-info :version)

(assert (=> b!2680881 (= e!1690156 (and e!1690170 ((_ is LongMap!3472) lt!944227)))))

(assert (=> b!2680881 (= lt!944227 (v!32726 (underlying!7148 (cache!3521 cacheUp!486))))))

(declare-fun e!1690168 () Bool)

(assert (=> b!2680882 (= e!1690168 (and tp!848031 tp!848030))))

(declare-fun b!2680883 () Bool)

(declare-fun tp!848022 () Bool)

(declare-fun mapRes!15905 () Bool)

(assert (=> b!2680883 (= e!1690159 (and tp!848022 mapRes!15905))))

(declare-fun condMapEmpty!15906 () Bool)

(declare-fun mapDefault!15906 () List!31001)

(assert (=> b!2680883 (= condMapEmpty!15906 (= (arr!5533 (_values!3753 (v!32725 (underlying!7147 (v!32726 (underlying!7148 (cache!3521 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31001)) mapDefault!15906)))))

(declare-fun b!2680884 () Bool)

(declare-fun e!1690145 () Bool)

(assert (=> b!2680884 (= e!1690164 e!1690145)))

(declare-fun res!1126890 () Bool)

(assert (=> b!2680884 (=> (not res!1126890) (not e!1690145))))

(declare-datatypes ((Token!8906 0))(
  ( (Token!8907 (value!152133 TokenValue!4942) (rule!7130 Rule!9240) (size!23878 Int) (originalCharacters!5484 List!31003)) )
))
(declare-datatypes ((List!31005 0))(
  ( (Nil!30905) (Cons!30905 (h!36325 Token!8906) (t!224506 List!31005)) )
))
(declare-datatypes ((IArray!19345 0))(
  ( (IArray!19346 (innerList!9730 List!31005)) )
))
(declare-datatypes ((Conc!9670 0))(
  ( (Node!9670 (left!23893 Conc!9670) (right!24223 Conc!9670) (csize!19570 Int) (cheight!9881 Int)) (Leaf!14774 (xs!12700 IArray!19345) (csize!19571 Int)) (Empty!9670) )
))
(declare-datatypes ((BalanceConc!18954 0))(
  ( (BalanceConc!18955 (c!431820 Conc!9670)) )
))
(declare-datatypes ((tuple2!30364 0))(
  ( (tuple2!30365 (_1!17739 BalanceConc!18954) (_2!17739 BalanceConc!18952)) )
))
(declare-fun lt!944222 () tuple2!30364)

(declare-fun acc!348 () BalanceConc!18954)

(declare-fun list!11670 (BalanceConc!18954) List!31005)

(assert (=> b!2680884 (= res!1126890 (= (list!11670 (_1!17739 lt!944222)) (list!11670 acc!348)))))

(declare-datatypes ((LexerInterface!4316 0))(
  ( (LexerInterfaceExt!4313 (__x!19783 Int)) (Lexer!4314) )
))
(declare-fun thiss!12257 () LexerInterface!4316)

(declare-fun treated!26 () BalanceConc!18952)

(declare-fun lexRec!583 (LexerInterface!4316 List!31004 BalanceConc!18952) tuple2!30364)

(assert (=> b!2680884 (= lt!944222 (lexRec!583 thiss!12257 rules!1381 treated!26))))

(declare-fun e!1690157 () Bool)

(assert (=> b!2680885 (= e!1690157 (and e!1690156 tp!848036))))

(declare-fun tp!848032 () Bool)

(declare-fun b!2680886 () Bool)

(declare-fun e!1690161 () Bool)

(declare-fun inv!41923 (String!34608) Bool)

(declare-fun inv!41926 (TokenValueInjection!9324) Bool)

(assert (=> b!2680886 (= e!1690161 (and tp!848032 (inv!41923 (tag!5224 (h!36324 rules!1381))) (inv!41926 (transformation!4720 (h!36324 rules!1381))) e!1690168))))

(declare-fun mapIsEmpty!15905 () Bool)

(assert (=> mapIsEmpty!15905 mapRes!15905))

(declare-fun b!2680887 () Bool)

(declare-fun e!1690151 () Bool)

(assert (=> b!2680887 (= e!1690151 e!1690162)))

(declare-fun b!2680888 () Bool)

(declare-fun e!1690146 () Bool)

(assert (=> b!2680888 (= e!1690146 e!1690150)))

(declare-fun b!2680889 () Bool)

(declare-fun res!1126893 () Bool)

(assert (=> b!2680889 (=> (not res!1126893) (not e!1690145))))

(declare-fun isEmpty!17671 (List!31003) Bool)

(declare-fun list!11671 (BalanceConc!18952) List!31003)

(assert (=> b!2680889 (= res!1126893 (isEmpty!17671 (list!11671 (_2!17739 lt!944222))))))

(declare-fun b!2680890 () Bool)

(declare-fun e!1690166 () Bool)

(assert (=> b!2680890 (= e!1690166 e!1690157)))

(declare-fun b!2680891 () Bool)

(assert (=> b!2680891 (= e!1690170 e!1690151)))

(declare-fun mapIsEmpty!15906 () Bool)

(declare-fun mapRes!15906 () Bool)

(assert (=> mapIsEmpty!15906 mapRes!15906))

(declare-fun b!2680892 () Bool)

(declare-fun e!1690160 () Bool)

(declare-datatypes ((tuple3!4174 0))(
  ( (tuple3!4175 (_1!17740 Regex!7871) (_2!17740 Context!4290) (_3!2557 C!15900)) )
))
(declare-datatypes ((tuple2!30366 0))(
  ( (tuple2!30367 (_1!17741 tuple3!4174) (_2!17741 (InoxSet Context!4290))) )
))
(declare-datatypes ((List!31006 0))(
  ( (Nil!30906) (Cons!30906 (h!36326 tuple2!30366) (t!224507 List!31006)) )
))
(declare-datatypes ((array!12385 0))(
  ( (array!12386 (arr!5534 (Array (_ BitVec 32) List!31006)) (size!23879 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6946 0))(
  ( (LongMapFixedSize!6947 (defaultEntry!3858 Int) (mask!9145 (_ BitVec 32)) (extraKeys!3722 (_ BitVec 32)) (zeroValue!3732 List!31006) (minValue!3732 List!31006) (_size!6989 (_ BitVec 32)) (_keys!3773 array!12381) (_values!3754 array!12385) (_vacant!3534 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13701 0))(
  ( (Cell!13702 (v!32727 LongMapFixedSize!6946)) )
))
(declare-datatypes ((MutLongMap!3473 0))(
  ( (LongMap!3473 (underlying!7149 Cell!13701)) (MutLongMapExt!3472 (__x!19784 Int)) )
))
(declare-fun lt!944225 () MutLongMap!3473)

(assert (=> b!2680892 (= e!1690160 (and e!1690146 ((_ is LongMap!3473) lt!944225)))))

(declare-datatypes ((Cell!13703 0))(
  ( (Cell!13704 (v!32728 MutLongMap!3473)) )
))
(declare-datatypes ((Hashable!3389 0))(
  ( (HashableExt!3388 (__x!19785 Int)) )
))
(declare-datatypes ((MutableMap!3379 0))(
  ( (MutableMapExt!3378 (__x!19786 Int)) (HashMap!3379 (underlying!7150 Cell!13703) (hashF!5421 Hashable!3389) (_size!6990 (_ BitVec 32)) (defaultValue!3550 Int)) )
))
(declare-datatypes ((CacheDown!2198 0))(
  ( (CacheDown!2199 (cache!3522 MutableMap!3379)) )
))
(declare-fun cacheDown!499 () CacheDown!2198)

(assert (=> b!2680892 (= lt!944225 (v!32728 (underlying!7150 (cache!3522 cacheDown!499))))))

(declare-fun mapNonEmpty!15905 () Bool)

(declare-fun tp!848024 () Bool)

(declare-fun tp!848025 () Bool)

(assert (=> mapNonEmpty!15905 (= mapRes!15906 (and tp!848024 tp!848025))))

(declare-fun mapRest!15905 () (Array (_ BitVec 32) List!31006))

(declare-fun mapKey!15905 () (_ BitVec 32))

(declare-fun mapValue!15906 () List!31006)

(assert (=> mapNonEmpty!15905 (= (arr!5534 (_values!3754 (v!32727 (underlying!7149 (v!32728 (underlying!7150 (cache!3522 cacheDown!499))))))) (store mapRest!15905 mapKey!15905 mapValue!15906))))

(declare-fun b!2680893 () Bool)

(declare-fun e!1690153 () Bool)

(declare-fun tp!848026 () Bool)

(declare-fun inv!41927 (Conc!9670) Bool)

(assert (=> b!2680893 (= e!1690153 (and (inv!41927 (c!431820 acc!348)) tp!848026))))

(declare-fun b!2680894 () Bool)

(declare-fun e!1690171 () Bool)

(declare-fun tp!848034 () Bool)

(assert (=> b!2680894 (= e!1690171 (and (inv!41925 (c!431819 treated!26)) tp!848034))))

(declare-fun res!1126889 () Bool)

(assert (=> start!261120 (=> (not res!1126889) (not e!1690164))))

(assert (=> start!261120 (= res!1126889 ((_ is Lexer!4314) thiss!12257))))

(assert (=> start!261120 e!1690164))

(declare-fun inv!41928 (BalanceConc!18952) Bool)

(assert (=> start!261120 (and (inv!41928 totalInput!354) e!1690147)))

(declare-fun inv!41929 (CacheUp!2090) Bool)

(assert (=> start!261120 (and (inv!41929 cacheUp!486) e!1690166)))

(declare-fun inv!41930 (BalanceConc!18954) Bool)

(assert (=> start!261120 (and (inv!41930 acc!348) e!1690153)))

(declare-fun input!780 () BalanceConc!18952)

(declare-fun e!1690154 () Bool)

(assert (=> start!261120 (and (inv!41928 input!780) e!1690154)))

(assert (=> start!261120 (and (inv!41928 treated!26) e!1690171)))

(declare-fun e!1690158 () Bool)

(assert (=> start!261120 e!1690158))

(assert (=> start!261120 true))

(declare-fun e!1690169 () Bool)

(declare-fun inv!41931 (CacheDown!2198) Bool)

(assert (=> start!261120 (and (inv!41931 cacheDown!499) e!1690169)))

(declare-fun b!2680895 () Bool)

(declare-fun e!1690163 () Bool)

(assert (=> b!2680895 (= e!1690145 e!1690163)))

(declare-fun res!1126892 () Bool)

(assert (=> b!2680895 (=> (not res!1126892) (not e!1690163))))

(declare-fun lt!944226 () tuple2!30364)

(declare-fun lt!944223 () tuple2!30364)

(declare-fun ++!7540 (BalanceConc!18954 BalanceConc!18954) BalanceConc!18954)

(assert (=> b!2680895 (= res!1126892 (= (list!11670 (_1!17739 lt!944226)) (list!11670 (++!7540 acc!348 (_1!17739 lt!944223)))))))

(assert (=> b!2680895 (= lt!944223 (lexRec!583 thiss!12257 rules!1381 input!780))))

(assert (=> b!2680895 (= lt!944226 (lexRec!583 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2680896 () Bool)

(declare-fun e!1690167 () Bool)

(declare-fun tp!848020 () Bool)

(assert (=> b!2680896 (= e!1690167 (and tp!848020 mapRes!15906))))

(declare-fun condMapEmpty!15905 () Bool)

(declare-fun mapDefault!15905 () List!31006)

(assert (=> b!2680896 (= condMapEmpty!15905 (= (arr!5534 (_values!3754 (v!32727 (underlying!7149 (v!32728 (underlying!7150 (cache!3522 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31006)) mapDefault!15905)))))

(declare-fun b!2680897 () Bool)

(assert (=> b!2680897 (= e!1690163 false)))

(declare-fun lt!944224 () List!31003)

(assert (=> b!2680897 (= lt!944224 (list!11671 (_2!17739 lt!944223)))))

(declare-fun lt!944228 () List!31003)

(assert (=> b!2680897 (= lt!944228 (list!11671 (_2!17739 lt!944226)))))

(declare-fun b!2680898 () Bool)

(declare-fun res!1126895 () Bool)

(assert (=> b!2680898 (=> (not res!1126895) (not e!1690164))))

(declare-fun ++!7541 (List!31003 List!31003) List!31003)

(assert (=> b!2680898 (= res!1126895 (= (list!11671 totalInput!354) (++!7541 (list!11671 treated!26) (list!11671 input!780))))))

(declare-fun mapNonEmpty!15906 () Bool)

(declare-fun tp!848027 () Bool)

(declare-fun tp!848029 () Bool)

(assert (=> mapNonEmpty!15906 (= mapRes!15905 (and tp!848027 tp!848029))))

(declare-fun mapRest!15906 () (Array (_ BitVec 32) List!31001))

(declare-fun mapKey!15906 () (_ BitVec 32))

(declare-fun mapValue!15905 () List!31001)

(assert (=> mapNonEmpty!15906 (= (arr!5533 (_values!3753 (v!32725 (underlying!7147 (v!32726 (underlying!7148 (cache!3521 cacheUp!486))))))) (store mapRest!15906 mapKey!15906 mapValue!15905))))

(declare-fun b!2680899 () Bool)

(declare-fun res!1126894 () Bool)

(assert (=> b!2680899 (=> (not res!1126894) (not e!1690164))))

(declare-fun valid!2689 (CacheUp!2090) Bool)

(assert (=> b!2680899 (= res!1126894 (valid!2689 cacheUp!486))))

(declare-fun tp!848019 () Bool)

(declare-fun tp!848033 () Bool)

(declare-fun array_inv!3952 (array!12385) Bool)

(assert (=> b!2680900 (= e!1690149 (and tp!848040 tp!848019 tp!848033 (array_inv!3950 (_keys!3773 (v!32727 (underlying!7149 (v!32728 (underlying!7150 (cache!3522 cacheDown!499))))))) (array_inv!3952 (_values!3754 (v!32727 (underlying!7149 (v!32728 (underlying!7150 (cache!3522 cacheDown!499))))))) e!1690167))))

(declare-fun b!2680901 () Bool)

(declare-fun res!1126896 () Bool)

(assert (=> b!2680901 (=> (not res!1126896) (not e!1690164))))

(declare-fun rulesInvariant!3814 (LexerInterface!4316 List!31004) Bool)

(assert (=> b!2680901 (= res!1126896 (rulesInvariant!3814 thiss!12257 rules!1381))))

(declare-fun e!1690148 () Bool)

(assert (=> b!2680902 (= e!1690148 (and e!1690160 tp!848038))))

(declare-fun b!2680903 () Bool)

(declare-fun res!1126891 () Bool)

(assert (=> b!2680903 (=> (not res!1126891) (not e!1690164))))

(declare-fun valid!2690 (CacheDown!2198) Bool)

(assert (=> b!2680903 (= res!1126891 (valid!2690 cacheDown!499))))

(declare-fun b!2680904 () Bool)

(declare-fun tp!848028 () Bool)

(assert (=> b!2680904 (= e!1690158 (and e!1690161 tp!848028))))

(declare-fun b!2680905 () Bool)

(declare-fun tp!848035 () Bool)

(assert (=> b!2680905 (= e!1690154 (and (inv!41925 (c!431819 input!780)) tp!848035))))

(declare-fun b!2680906 () Bool)

(assert (=> b!2680906 (= e!1690169 e!1690148)))

(assert (= (and start!261120 res!1126889) b!2680879))

(assert (= (and b!2680879 res!1126897) b!2680901))

(assert (= (and b!2680901 res!1126896) b!2680899))

(assert (= (and b!2680899 res!1126894) b!2680903))

(assert (= (and b!2680903 res!1126891) b!2680898))

(assert (= (and b!2680898 res!1126895) b!2680884))

(assert (= (and b!2680884 res!1126890) b!2680889))

(assert (= (and b!2680889 res!1126893) b!2680895))

(assert (= (and b!2680895 res!1126892) b!2680897))

(assert (= start!261120 b!2680880))

(assert (= (and b!2680883 condMapEmpty!15906) mapIsEmpty!15905))

(assert (= (and b!2680883 (not condMapEmpty!15906)) mapNonEmpty!15906))

(assert (= b!2680878 b!2680883))

(assert (= b!2680887 b!2680878))

(assert (= b!2680891 b!2680887))

(assert (= (and b!2680881 ((_ is LongMap!3472) (v!32726 (underlying!7148 (cache!3521 cacheUp!486))))) b!2680891))

(assert (= b!2680885 b!2680881))

(assert (= (and b!2680890 ((_ is HashMap!3378) (cache!3521 cacheUp!486))) b!2680885))

(assert (= start!261120 b!2680890))

(assert (= start!261120 b!2680893))

(assert (= start!261120 b!2680905))

(assert (= start!261120 b!2680894))

(assert (= b!2680886 b!2680882))

(assert (= b!2680904 b!2680886))

(assert (= (and start!261120 ((_ is Cons!30904) rules!1381)) b!2680904))

(assert (= (and b!2680896 condMapEmpty!15905) mapIsEmpty!15906))

(assert (= (and b!2680896 (not condMapEmpty!15905)) mapNonEmpty!15905))

(assert (= b!2680900 b!2680896))

(assert (= b!2680877 b!2680900))

(assert (= b!2680888 b!2680877))

(assert (= (and b!2680892 ((_ is LongMap!3473) (v!32728 (underlying!7150 (cache!3522 cacheDown!499))))) b!2680888))

(assert (= b!2680902 b!2680892))

(assert (= (and b!2680906 ((_ is HashMap!3379) (cache!3522 cacheDown!499))) b!2680902))

(assert (= start!261120 b!2680906))

(declare-fun m!3048971 () Bool)

(assert (=> b!2680900 m!3048971))

(declare-fun m!3048973 () Bool)

(assert (=> b!2680900 m!3048973))

(declare-fun m!3048975 () Bool)

(assert (=> b!2680899 m!3048975))

(declare-fun m!3048977 () Bool)

(assert (=> b!2680898 m!3048977))

(declare-fun m!3048979 () Bool)

(assert (=> b!2680898 m!3048979))

(declare-fun m!3048981 () Bool)

(assert (=> b!2680898 m!3048981))

(assert (=> b!2680898 m!3048979))

(assert (=> b!2680898 m!3048981))

(declare-fun m!3048983 () Bool)

(assert (=> b!2680898 m!3048983))

(declare-fun m!3048985 () Bool)

(assert (=> start!261120 m!3048985))

(declare-fun m!3048987 () Bool)

(assert (=> start!261120 m!3048987))

(declare-fun m!3048989 () Bool)

(assert (=> start!261120 m!3048989))

(declare-fun m!3048991 () Bool)

(assert (=> start!261120 m!3048991))

(declare-fun m!3048993 () Bool)

(assert (=> start!261120 m!3048993))

(declare-fun m!3048995 () Bool)

(assert (=> start!261120 m!3048995))

(declare-fun m!3048997 () Bool)

(assert (=> b!2680905 m!3048997))

(declare-fun m!3048999 () Bool)

(assert (=> b!2680895 m!3048999))

(declare-fun m!3049001 () Bool)

(assert (=> b!2680895 m!3049001))

(declare-fun m!3049003 () Bool)

(assert (=> b!2680895 m!3049003))

(declare-fun m!3049005 () Bool)

(assert (=> b!2680895 m!3049005))

(assert (=> b!2680895 m!3048999))

(declare-fun m!3049007 () Bool)

(assert (=> b!2680895 m!3049007))

(declare-fun m!3049009 () Bool)

(assert (=> b!2680897 m!3049009))

(declare-fun m!3049011 () Bool)

(assert (=> b!2680897 m!3049011))

(declare-fun m!3049013 () Bool)

(assert (=> b!2680884 m!3049013))

(declare-fun m!3049015 () Bool)

(assert (=> b!2680884 m!3049015))

(declare-fun m!3049017 () Bool)

(assert (=> b!2680884 m!3049017))

(declare-fun m!3049019 () Bool)

(assert (=> b!2680893 m!3049019))

(declare-fun m!3049021 () Bool)

(assert (=> mapNonEmpty!15905 m!3049021))

(declare-fun m!3049023 () Bool)

(assert (=> b!2680901 m!3049023))

(declare-fun m!3049025 () Bool)

(assert (=> b!2680879 m!3049025))

(declare-fun m!3049027 () Bool)

(assert (=> b!2680889 m!3049027))

(assert (=> b!2680889 m!3049027))

(declare-fun m!3049029 () Bool)

(assert (=> b!2680889 m!3049029))

(declare-fun m!3049031 () Bool)

(assert (=> b!2680903 m!3049031))

(declare-fun m!3049033 () Bool)

(assert (=> mapNonEmpty!15906 m!3049033))

(declare-fun m!3049035 () Bool)

(assert (=> b!2680894 m!3049035))

(declare-fun m!3049037 () Bool)

(assert (=> b!2680886 m!3049037))

(declare-fun m!3049039 () Bool)

(assert (=> b!2680886 m!3049039))

(declare-fun m!3049041 () Bool)

(assert (=> b!2680878 m!3049041))

(declare-fun m!3049043 () Bool)

(assert (=> b!2680878 m!3049043))

(declare-fun m!3049045 () Bool)

(assert (=> b!2680880 m!3049045))

(check-sat (not b_next!76433) b_and!198527 (not mapNonEmpty!15905) (not b!2680895) b_and!198535 b_and!198531 (not b!2680897) (not b_next!76435) (not b_next!76439) (not b!2680884) (not mapNonEmpty!15906) (not b!2680879) (not b!2680900) (not b_next!76437) (not b!2680880) b_and!198529 (not b!2680905) (not b!2680899) b_and!198533 (not b!2680889) (not b!2680886) (not b!2680878) b_and!198525 (not b!2680894) (not b_next!76443) (not b!2680883) (not b!2680903) (not start!261120) (not b!2680893) (not b_next!76441) (not b!2680904) (not b!2680901) (not b!2680896) (not b!2680898))
(check-sat b_and!198533 (not b_next!76433) b_and!198527 b_and!198535 b_and!198525 (not b_next!76443) b_and!198531 (not b_next!76435) (not b_next!76439) (not b_next!76441) (not b_next!76437) b_and!198529)
