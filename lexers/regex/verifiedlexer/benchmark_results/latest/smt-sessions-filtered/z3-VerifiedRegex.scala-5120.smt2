; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262062 () Bool)

(assert start!262062)

(declare-fun b!2696089 () Bool)

(declare-fun b_free!76201 () Bool)

(declare-fun b_next!76905 () Bool)

(assert (=> b!2696089 (= b_free!76201 (not b_next!76905))))

(declare-fun tp!853043 () Bool)

(declare-fun b_and!199331 () Bool)

(assert (=> b!2696089 (= tp!853043 b_and!199331)))

(declare-fun b!2696097 () Bool)

(declare-fun b_free!76203 () Bool)

(declare-fun b_next!76907 () Bool)

(assert (=> b!2696097 (= b_free!76203 (not b_next!76907))))

(declare-fun tp!853033 () Bool)

(declare-fun b_and!199333 () Bool)

(assert (=> b!2696097 (= tp!853033 b_and!199333)))

(declare-fun b!2696100 () Bool)

(declare-fun b_free!76205 () Bool)

(declare-fun b_next!76909 () Bool)

(assert (=> b!2696100 (= b_free!76205 (not b_next!76909))))

(declare-fun tp!853022 () Bool)

(declare-fun b_and!199335 () Bool)

(assert (=> b!2696100 (= tp!853022 b_and!199335)))

(declare-fun b!2696109 () Bool)

(declare-fun b_free!76207 () Bool)

(declare-fun b_next!76911 () Bool)

(assert (=> b!2696109 (= b_free!76207 (not b_next!76911))))

(declare-fun tp!853034 () Bool)

(declare-fun b_and!199337 () Bool)

(assert (=> b!2696109 (= tp!853034 b_and!199337)))

(declare-fun b_free!76209 () Bool)

(declare-fun b_next!76913 () Bool)

(assert (=> b!2696109 (= b_free!76209 (not b_next!76913))))

(declare-fun tp!853025 () Bool)

(declare-fun b_and!199339 () Bool)

(assert (=> b!2696109 (= tp!853025 b_and!199339)))

(declare-fun b!2696085 () Bool)

(declare-fun b_free!76211 () Bool)

(declare-fun b_next!76915 () Bool)

(assert (=> b!2696085 (= b_free!76211 (not b_next!76915))))

(declare-fun tp!853038 () Bool)

(declare-fun b_and!199341 () Bool)

(assert (=> b!2696085 (= tp!853038 b_and!199341)))

(declare-fun b!2696084 () Bool)

(declare-fun e!1700136 () Bool)

(declare-fun e!1700123 () Bool)

(assert (=> b!2696084 (= e!1700136 e!1700123)))

(declare-fun tp!853031 () Bool)

(declare-fun tp!853039 () Bool)

(declare-fun e!1700138 () Bool)

(declare-datatypes ((C!15968 0))(
  ( (C!15969 (val!9918 Int)) )
))
(declare-datatypes ((Regex!7905 0))(
  ( (ElementMatch!7905 (c!434613 C!15968)) (Concat!12880 (regOne!16322 Regex!7905) (regTwo!16322 Regex!7905)) (EmptyExpr!7905) (Star!7905 (reg!8234 Regex!7905)) (EmptyLang!7905) (Union!7905 (regOne!16323 Regex!7905) (regTwo!16323 Regex!7905)) )
))
(declare-datatypes ((array!12605 0))(
  ( (array!12606 (arr!5632 (Array (_ BitVec 32) (_ BitVec 64))) (size!24047 (_ BitVec 32))) )
))
(declare-datatypes ((List!31242 0))(
  ( (Nil!31142) (Cons!31142 (h!36562 Regex!7905) (t!225249 List!31242)) )
))
(declare-datatypes ((Context!4358 0))(
  ( (Context!4359 (exprs!2679 List!31242)) )
))
(declare-datatypes ((tuple3!4298 0))(
  ( (tuple3!4299 (_1!17992 Regex!7905) (_2!17992 Context!4358) (_3!2619 C!15968)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30746 0))(
  ( (tuple2!30747 (_1!17993 tuple3!4298) (_2!17993 (InoxSet Context!4358))) )
))
(declare-datatypes ((List!31243 0))(
  ( (Nil!31143) (Cons!31143 (h!36563 tuple2!30746) (t!225250 List!31243)) )
))
(declare-datatypes ((array!12607 0))(
  ( (array!12608 (arr!5633 (Array (_ BitVec 32) List!31243)) (size!24048 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7076 0))(
  ( (LongMapFixedSize!7077 (defaultEntry!3923 Int) (mask!9227 (_ BitVec 32)) (extraKeys!3787 (_ BitVec 32)) (zeroValue!3797 List!31243) (minValue!3797 List!31243) (_size!7119 (_ BitVec 32)) (_keys!3838 array!12605) (_values!3819 array!12607) (_vacant!3599 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13961 0))(
  ( (Cell!13962 (v!32916 LongMapFixedSize!7076)) )
))
(declare-datatypes ((MutLongMap!3538 0))(
  ( (LongMap!3538 (underlying!7279 Cell!13961)) (MutLongMapExt!3537 (__x!20043 Int)) )
))
(declare-datatypes ((Cell!13963 0))(
  ( (Cell!13964 (v!32917 MutLongMap!3538)) )
))
(declare-datatypes ((Hashable!3454 0))(
  ( (HashableExt!3453 (__x!20044 Int)) )
))
(declare-datatypes ((MutableMap!3444 0))(
  ( (MutableMapExt!3443 (__x!20045 Int)) (HashMap!3444 (underlying!7280 Cell!13963) (hashF!5486 Hashable!3454) (_size!7120 (_ BitVec 32)) (defaultValue!3615 Int)) )
))
(declare-datatypes ((CacheDown!2266 0))(
  ( (CacheDown!2267 (cache!3587 MutableMap!3444)) )
))
(declare-fun cacheDown!499 () CacheDown!2266)

(declare-fun e!1700141 () Bool)

(declare-fun array_inv!4025 (array!12605) Bool)

(declare-fun array_inv!4026 (array!12607) Bool)

(assert (=> b!2696085 (= e!1700141 (and tp!853038 tp!853039 tp!853031 (array_inv!4025 (_keys!3838 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))) (array_inv!4026 (_values!3819 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))) e!1700138))))

(declare-fun mapIsEmpty!16163 () Bool)

(declare-fun mapRes!16163 () Bool)

(assert (=> mapIsEmpty!16163 mapRes!16163))

(declare-fun res!1132608 () Bool)

(declare-fun e!1700139 () Bool)

(assert (=> start!262062 (=> (not res!1132608) (not e!1700139))))

(declare-datatypes ((LexerInterface!4349 0))(
  ( (LexerInterfaceExt!4346 (__x!20046 Int)) (Lexer!4347) )
))
(declare-fun thiss!12257 () LexerInterface!4349)

(get-info :version)

(assert (=> start!262062 (= res!1132608 ((_ is Lexer!4347) thiss!12257))))

(assert (=> start!262062 e!1700139))

(declare-datatypes ((List!31244 0))(
  ( (Nil!31144) (Cons!31144 (h!36564 C!15968) (t!225251 List!31244)) )
))
(declare-datatypes ((IArray!19475 0))(
  ( (IArray!19476 (innerList!9795 List!31244)) )
))
(declare-datatypes ((Conc!9735 0))(
  ( (Node!9735 (left!23981 Conc!9735) (right!24311 Conc!9735) (csize!19700 Int) (cheight!9946 Int)) (Leaf!14856 (xs!12775 IArray!19475) (csize!19701 Int)) (Empty!9735) )
))
(declare-datatypes ((BalanceConc!19084 0))(
  ( (BalanceConc!19085 (c!434614 Conc!9735)) )
))
(declare-fun totalInput!354 () BalanceConc!19084)

(declare-fun e!1700132 () Bool)

(declare-fun inv!42193 (BalanceConc!19084) Bool)

(assert (=> start!262062 (and (inv!42193 totalInput!354) e!1700132)))

(declare-datatypes ((tuple2!30748 0))(
  ( (tuple2!30749 (_1!17994 Context!4358) (_2!17994 C!15968)) )
))
(declare-datatypes ((tuple2!30750 0))(
  ( (tuple2!30751 (_1!17995 tuple2!30748) (_2!17995 (InoxSet Context!4358))) )
))
(declare-datatypes ((List!31245 0))(
  ( (Nil!31145) (Cons!31145 (h!36565 tuple2!30750) (t!225252 List!31245)) )
))
(declare-datatypes ((array!12609 0))(
  ( (array!12610 (arr!5634 (Array (_ BitVec 32) List!31245)) (size!24049 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3455 0))(
  ( (HashableExt!3454 (__x!20047 Int)) )
))
(declare-datatypes ((LongMapFixedSize!7078 0))(
  ( (LongMapFixedSize!7079 (defaultEntry!3924 Int) (mask!9228 (_ BitVec 32)) (extraKeys!3788 (_ BitVec 32)) (zeroValue!3798 List!31245) (minValue!3798 List!31245) (_size!7121 (_ BitVec 32)) (_keys!3839 array!12605) (_values!3820 array!12609) (_vacant!3600 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13965 0))(
  ( (Cell!13966 (v!32918 LongMapFixedSize!7078)) )
))
(declare-datatypes ((MutLongMap!3539 0))(
  ( (LongMap!3539 (underlying!7281 Cell!13965)) (MutLongMapExt!3538 (__x!20048 Int)) )
))
(declare-datatypes ((Cell!13967 0))(
  ( (Cell!13968 (v!32919 MutLongMap!3539)) )
))
(declare-datatypes ((MutableMap!3445 0))(
  ( (MutableMapExt!3444 (__x!20049 Int)) (HashMap!3445 (underlying!7282 Cell!13967) (hashF!5487 Hashable!3455) (_size!7122 (_ BitVec 32)) (defaultValue!3616 Int)) )
))
(declare-datatypes ((CacheUp!2154 0))(
  ( (CacheUp!2155 (cache!3588 MutableMap!3445)) )
))
(declare-fun cacheUp!486 () CacheUp!2154)

(declare-fun e!1700146 () Bool)

(declare-fun inv!42194 (CacheUp!2154) Bool)

(assert (=> start!262062 (and (inv!42194 cacheUp!486) e!1700146)))

(declare-datatypes ((List!31246 0))(
  ( (Nil!31146) (Cons!31146 (h!36566 (_ BitVec 16)) (t!225253 List!31246)) )
))
(declare-datatypes ((TokenValue!4975 0))(
  ( (FloatLiteralValue!9950 (text!35270 List!31246)) (TokenValueExt!4974 (__x!20050 Int)) (Broken!24875 (value!153049 List!31246)) (Object!5074) (End!4975) (Def!4975) (Underscore!4975) (Match!4975) (Else!4975) (Error!4975) (Case!4975) (If!4975) (Extends!4975) (Abstract!4975) (Class!4975) (Val!4975) (DelimiterValue!9950 (del!5035 List!31246)) (KeywordValue!4981 (value!153050 List!31246)) (CommentValue!9950 (value!153051 List!31246)) (WhitespaceValue!9950 (value!153052 List!31246)) (IndentationValue!4975 (value!153053 List!31246)) (String!34774) (Int32!4975) (Broken!24876 (value!153054 List!31246)) (Boolean!4976) (Unit!45222) (OperatorValue!4978 (op!5035 List!31246)) (IdentifierValue!9950 (value!153055 List!31246)) (IdentifierValue!9951 (value!153056 List!31246)) (WhitespaceValue!9951 (value!153057 List!31246)) (True!9950) (False!9950) (Broken!24877 (value!153058 List!31246)) (Broken!24878 (value!153059 List!31246)) (True!9951) (RightBrace!4975) (RightBracket!4975) (Colon!4975) (Null!4975) (Comma!4975) (LeftBracket!4975) (False!9951) (LeftBrace!4975) (ImaginaryLiteralValue!4975 (text!35271 List!31246)) (StringLiteralValue!14925 (value!153060 List!31246)) (EOFValue!4975 (value!153061 List!31246)) (IdentValue!4975 (value!153062 List!31246)) (DelimiterValue!9951 (value!153063 List!31246)) (DedentValue!4975 (value!153064 List!31246)) (NewLineValue!4975 (value!153065 List!31246)) (IntegerValue!14925 (value!153066 (_ BitVec 32)) (text!35272 List!31246)) (IntegerValue!14926 (value!153067 Int) (text!35273 List!31246)) (Times!4975) (Or!4975) (Equal!4975) (Minus!4975) (Broken!24879 (value!153068 List!31246)) (And!4975) (Div!4975) (LessEqual!4975) (Mod!4975) (Concat!12881) (Not!4975) (Plus!4975) (SpaceValue!4975 (value!153069 List!31246)) (IntegerValue!14927 (value!153070 Int) (text!35274 List!31246)) (StringLiteralValue!14926 (text!35275 List!31246)) (FloatLiteralValue!9951 (text!35276 List!31246)) (BytesLiteralValue!4975 (value!153071 List!31246)) (CommentValue!9951 (value!153072 List!31246)) (StringLiteralValue!14927 (value!153073 List!31246)) (ErrorTokenValue!4975 (msg!5036 List!31246)) )
))
(declare-datatypes ((String!34775 0))(
  ( (String!34776 (value!153074 String)) )
))
(declare-datatypes ((TokenValueInjection!9390 0))(
  ( (TokenValueInjection!9391 (toValue!6711 Int) (toChars!6570 Int)) )
))
(declare-datatypes ((Rule!9306 0))(
  ( (Rule!9307 (regex!4753 Regex!7905) (tag!5257 String!34775) (isSeparator!4753 Bool) (transformation!4753 TokenValueInjection!9390)) )
))
(declare-datatypes ((Token!8972 0))(
  ( (Token!8973 (value!153075 TokenValue!4975) (rule!7170 Rule!9306) (size!24050 Int) (originalCharacters!5517 List!31244)) )
))
(declare-datatypes ((List!31247 0))(
  ( (Nil!31147) (Cons!31147 (h!36567 Token!8972) (t!225254 List!31247)) )
))
(declare-datatypes ((IArray!19477 0))(
  ( (IArray!19478 (innerList!9796 List!31247)) )
))
(declare-datatypes ((Conc!9736 0))(
  ( (Node!9736 (left!23982 Conc!9736) (right!24312 Conc!9736) (csize!19702 Int) (cheight!9947 Int)) (Leaf!14857 (xs!12776 IArray!19477) (csize!19703 Int)) (Empty!9736) )
))
(declare-datatypes ((BalanceConc!19086 0))(
  ( (BalanceConc!19087 (c!434615 Conc!9736)) )
))
(declare-fun acc!348 () BalanceConc!19086)

(declare-fun e!1700135 () Bool)

(declare-fun inv!42195 (BalanceConc!19086) Bool)

(assert (=> start!262062 (and (inv!42195 acc!348) e!1700135)))

(declare-fun input!780 () BalanceConc!19084)

(declare-fun e!1700134 () Bool)

(assert (=> start!262062 (and (inv!42193 input!780) e!1700134)))

(declare-fun treated!26 () BalanceConc!19084)

(declare-fun e!1700127 () Bool)

(assert (=> start!262062 (and (inv!42193 treated!26) e!1700127)))

(declare-fun e!1700125 () Bool)

(assert (=> start!262062 e!1700125))

(assert (=> start!262062 true))

(declare-fun e!1700122 () Bool)

(declare-fun inv!42196 (CacheDown!2266) Bool)

(assert (=> start!262062 (and (inv!42196 cacheDown!499) e!1700122)))

(declare-fun b!2696086 () Bool)

(declare-fun e!1700124 () Bool)

(declare-fun tp!853037 () Bool)

(assert (=> b!2696086 (= e!1700124 (and tp!853037 mapRes!16163))))

(declare-fun condMapEmpty!16163 () Bool)

(declare-fun mapDefault!16164 () List!31245)

(assert (=> b!2696086 (= condMapEmpty!16163 (= (arr!5634 (_values!3820 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31245)) mapDefault!16164)))))

(declare-fun b!2696087 () Bool)

(declare-fun res!1132615 () Bool)

(assert (=> b!2696087 (=> (not res!1132615) (not e!1700139))))

(declare-datatypes ((List!31248 0))(
  ( (Nil!31148) (Cons!31148 (h!36568 Rule!9306) (t!225255 List!31248)) )
))
(declare-fun rules!1381 () List!31248)

(declare-fun rulesInvariant!3836 (LexerInterface!4349 List!31248) Bool)

(assert (=> b!2696087 (= res!1132615 (rulesInvariant!3836 thiss!12257 rules!1381))))

(declare-fun b!2696088 () Bool)

(declare-fun e!1700145 () Bool)

(declare-fun e!1700137 () Bool)

(assert (=> b!2696088 (= e!1700145 e!1700137)))

(declare-fun e!1700129 () Bool)

(declare-fun e!1700121 () Bool)

(assert (=> b!2696089 (= e!1700129 (and e!1700121 tp!853043))))

(declare-fun b!2696090 () Bool)

(declare-fun res!1132613 () Bool)

(declare-fun e!1700142 () Bool)

(assert (=> b!2696090 (=> (not res!1132613) (not e!1700142))))

(declare-datatypes ((tuple2!30752 0))(
  ( (tuple2!30753 (_1!17996 BalanceConc!19086) (_2!17996 BalanceConc!19084)) )
))
(declare-fun lt!952553 () tuple2!30752)

(declare-fun lt!952556 () tuple2!30752)

(declare-fun list!11747 (BalanceConc!19084) List!31244)

(assert (=> b!2696090 (= res!1132613 (= (list!11747 (_2!17996 lt!952553)) (list!11747 (_2!17996 lt!952556))))))

(declare-fun b!2696091 () Bool)

(assert (=> b!2696091 (= e!1700122 e!1700129)))

(declare-fun b!2696092 () Bool)

(declare-fun e!1700126 () Bool)

(assert (=> b!2696092 (= e!1700139 e!1700126)))

(declare-fun res!1132610 () Bool)

(assert (=> b!2696092 (=> (not res!1132610) (not e!1700126))))

(declare-fun lt!952552 () tuple2!30752)

(declare-fun list!11748 (BalanceConc!19086) List!31247)

(assert (=> b!2696092 (= res!1132610 (= (list!11748 (_1!17996 lt!952552)) (list!11748 acc!348)))))

(declare-fun lexRec!611 (LexerInterface!4349 List!31248 BalanceConc!19084) tuple2!30752)

(assert (=> b!2696092 (= lt!952552 (lexRec!611 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2696093 () Bool)

(declare-fun tp!853024 () Bool)

(declare-fun inv!42197 (Conc!9736) Bool)

(assert (=> b!2696093 (= e!1700135 (and (inv!42197 (c!434615 acc!348)) tp!853024))))

(declare-fun b!2696094 () Bool)

(declare-fun tp!853040 () Bool)

(declare-fun inv!42198 (Conc!9735) Bool)

(assert (=> b!2696094 (= e!1700132 (and (inv!42198 (c!434614 totalInput!354)) tp!853040))))

(declare-fun b!2696095 () Bool)

(declare-fun tp!853026 () Bool)

(assert (=> b!2696095 (= e!1700134 (and (inv!42198 (c!434614 input!780)) tp!853026))))

(declare-fun b!2696096 () Bool)

(declare-fun e!1700128 () Bool)

(declare-fun tp!853023 () Bool)

(assert (=> b!2696096 (= e!1700125 (and e!1700128 tp!853023))))

(declare-fun tp!853041 () Bool)

(declare-fun tp!853042 () Bool)

(declare-fun array_inv!4027 (array!12609) Bool)

(assert (=> b!2696097 (= e!1700137 (and tp!853033 tp!853042 tp!853041 (array_inv!4025 (_keys!3839 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))) (array_inv!4027 (_values!3820 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))) e!1700124))))

(declare-fun b!2696098 () Bool)

(declare-fun tp!853028 () Bool)

(assert (=> b!2696098 (= e!1700127 (and (inv!42198 (c!434614 treated!26)) tp!853028))))

(declare-fun b!2696099 () Bool)

(declare-fun res!1132617 () Bool)

(assert (=> b!2696099 (=> (not res!1132617) (not e!1700139))))

(declare-fun valid!2744 (CacheUp!2154) Bool)

(assert (=> b!2696099 (= res!1132617 (valid!2744 cacheUp!486))))

(declare-fun e!1700130 () Bool)

(declare-fun e!1700131 () Bool)

(assert (=> b!2696100 (= e!1700130 (and e!1700131 tp!853022))))

(declare-fun b!2696101 () Bool)

(assert (=> b!2696101 (= e!1700123 e!1700141)))

(declare-fun mapNonEmpty!16163 () Bool)

(declare-fun mapRes!16164 () Bool)

(declare-fun tp!853035 () Bool)

(declare-fun tp!853029 () Bool)

(assert (=> mapNonEmpty!16163 (= mapRes!16164 (and tp!853035 tp!853029))))

(declare-fun mapKey!16163 () (_ BitVec 32))

(declare-fun mapValue!16163 () List!31243)

(declare-fun mapRest!16164 () (Array (_ BitVec 32) List!31243))

(assert (=> mapNonEmpty!16163 (= (arr!5633 (_values!3819 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))) (store mapRest!16164 mapKey!16163 mapValue!16163))))

(declare-fun b!2696102 () Bool)

(declare-fun res!1132611 () Bool)

(assert (=> b!2696102 (=> (not res!1132611) (not e!1700126))))

(declare-fun isEmpty!17744 (List!31244) Bool)

(assert (=> b!2696102 (= res!1132611 (isEmpty!17744 (list!11747 (_2!17996 lt!952552))))))

(declare-fun b!2696103 () Bool)

(declare-fun res!1132609 () Bool)

(assert (=> b!2696103 (=> (not res!1132609) (not e!1700139))))

(declare-fun ++!7645 (List!31244 List!31244) List!31244)

(assert (=> b!2696103 (= res!1132609 (= (list!11747 totalInput!354) (++!7645 (list!11747 treated!26) (list!11747 input!780))))))

(declare-fun b!2696104 () Bool)

(declare-fun e!1700133 () Bool)

(assert (=> b!2696104 (= e!1700133 e!1700145)))

(declare-fun mapNonEmpty!16164 () Bool)

(declare-fun tp!853030 () Bool)

(declare-fun tp!853027 () Bool)

(assert (=> mapNonEmpty!16164 (= mapRes!16163 (and tp!853030 tp!853027))))

(declare-fun mapRest!16163 () (Array (_ BitVec 32) List!31245))

(declare-fun mapValue!16164 () List!31245)

(declare-fun mapKey!16164 () (_ BitVec 32))

(assert (=> mapNonEmpty!16164 (= (arr!5634 (_values!3820 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))) (store mapRest!16163 mapKey!16164 mapValue!16164))))

(declare-fun b!2696105 () Bool)

(declare-fun tp!853036 () Bool)

(assert (=> b!2696105 (= e!1700138 (and tp!853036 mapRes!16164))))

(declare-fun condMapEmpty!16164 () Bool)

(declare-fun mapDefault!16163 () List!31243)

(assert (=> b!2696105 (= condMapEmpty!16164 (= (arr!5633 (_values!3819 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31243)) mapDefault!16163)))))

(declare-fun b!2696106 () Bool)

(declare-fun size!24051 (BalanceConc!19084) Int)

(assert (=> b!2696106 (= e!1700142 (< (size!24051 input!780) 0))))

(declare-fun b!2696107 () Bool)

(declare-fun res!1132614 () Bool)

(assert (=> b!2696107 (=> (not res!1132614) (not e!1700139))))

(declare-fun valid!2745 (CacheDown!2266) Bool)

(assert (=> b!2696107 (= res!1132614 (valid!2745 cacheDown!499))))

(declare-fun b!2696108 () Bool)

(declare-fun res!1132612 () Bool)

(assert (=> b!2696108 (=> (not res!1132612) (not e!1700139))))

(declare-fun isEmpty!17745 (List!31248) Bool)

(assert (=> b!2696108 (= res!1132612 (not (isEmpty!17745 rules!1381)))))

(declare-fun e!1700143 () Bool)

(assert (=> b!2696109 (= e!1700143 (and tp!853034 tp!853025))))

(declare-fun tp!853032 () Bool)

(declare-fun b!2696110 () Bool)

(declare-fun inv!42190 (String!34775) Bool)

(declare-fun inv!42199 (TokenValueInjection!9390) Bool)

(assert (=> b!2696110 (= e!1700128 (and tp!853032 (inv!42190 (tag!5257 (h!36568 rules!1381))) (inv!42199 (transformation!4753 (h!36568 rules!1381))) e!1700143))))

(declare-fun b!2696111 () Bool)

(assert (=> b!2696111 (= e!1700146 e!1700130)))

(declare-fun b!2696112 () Bool)

(assert (=> b!2696112 (= e!1700126 e!1700142)))

(declare-fun res!1132616 () Bool)

(assert (=> b!2696112 (=> (not res!1132616) (not e!1700142))))

(declare-fun ++!7646 (BalanceConc!19086 BalanceConc!19086) BalanceConc!19086)

(assert (=> b!2696112 (= res!1132616 (= (list!11748 (_1!17996 lt!952553)) (list!11748 (++!7646 acc!348 (_1!17996 lt!952556)))))))

(assert (=> b!2696112 (= lt!952556 (lexRec!611 thiss!12257 rules!1381 input!780))))

(assert (=> b!2696112 (= lt!952553 (lexRec!611 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2696113 () Bool)

(declare-fun lt!952554 () MutLongMap!3538)

(assert (=> b!2696113 (= e!1700121 (and e!1700136 ((_ is LongMap!3538) lt!952554)))))

(assert (=> b!2696113 (= lt!952554 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))

(declare-fun mapIsEmpty!16164 () Bool)

(assert (=> mapIsEmpty!16164 mapRes!16164))

(declare-fun b!2696114 () Bool)

(declare-fun lt!952555 () MutLongMap!3539)

(assert (=> b!2696114 (= e!1700131 (and e!1700133 ((_ is LongMap!3539) lt!952555)))))

(assert (=> b!2696114 (= lt!952555 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))

(assert (= (and start!262062 res!1132608) b!2696108))

(assert (= (and b!2696108 res!1132612) b!2696087))

(assert (= (and b!2696087 res!1132615) b!2696099))

(assert (= (and b!2696099 res!1132617) b!2696107))

(assert (= (and b!2696107 res!1132614) b!2696103))

(assert (= (and b!2696103 res!1132609) b!2696092))

(assert (= (and b!2696092 res!1132610) b!2696102))

(assert (= (and b!2696102 res!1132611) b!2696112))

(assert (= (and b!2696112 res!1132616) b!2696090))

(assert (= (and b!2696090 res!1132613) b!2696106))

(assert (= start!262062 b!2696094))

(assert (= (and b!2696086 condMapEmpty!16163) mapIsEmpty!16163))

(assert (= (and b!2696086 (not condMapEmpty!16163)) mapNonEmpty!16164))

(assert (= b!2696097 b!2696086))

(assert (= b!2696088 b!2696097))

(assert (= b!2696104 b!2696088))

(assert (= (and b!2696114 ((_ is LongMap!3539) (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))) b!2696104))

(assert (= b!2696100 b!2696114))

(assert (= (and b!2696111 ((_ is HashMap!3445) (cache!3588 cacheUp!486))) b!2696100))

(assert (= start!262062 b!2696111))

(assert (= start!262062 b!2696093))

(assert (= start!262062 b!2696095))

(assert (= start!262062 b!2696098))

(assert (= b!2696110 b!2696109))

(assert (= b!2696096 b!2696110))

(assert (= (and start!262062 ((_ is Cons!31148) rules!1381)) b!2696096))

(assert (= (and b!2696105 condMapEmpty!16164) mapIsEmpty!16164))

(assert (= (and b!2696105 (not condMapEmpty!16164)) mapNonEmpty!16163))

(assert (= b!2696085 b!2696105))

(assert (= b!2696101 b!2696085))

(assert (= b!2696084 b!2696101))

(assert (= (and b!2696113 ((_ is LongMap!3538) (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))) b!2696084))

(assert (= b!2696089 b!2696113))

(assert (= (and b!2696091 ((_ is HashMap!3444) (cache!3587 cacheDown!499))) b!2696089))

(assert (= start!262062 b!2696091))

(declare-fun m!3077147 () Bool)

(assert (=> mapNonEmpty!16164 m!3077147))

(declare-fun m!3077149 () Bool)

(assert (=> b!2696099 m!3077149))

(declare-fun m!3077151 () Bool)

(assert (=> b!2696102 m!3077151))

(assert (=> b!2696102 m!3077151))

(declare-fun m!3077153 () Bool)

(assert (=> b!2696102 m!3077153))

(declare-fun m!3077155 () Bool)

(assert (=> b!2696107 m!3077155))

(declare-fun m!3077157 () Bool)

(assert (=> b!2696097 m!3077157))

(declare-fun m!3077159 () Bool)

(assert (=> b!2696097 m!3077159))

(declare-fun m!3077161 () Bool)

(assert (=> b!2696085 m!3077161))

(declare-fun m!3077163 () Bool)

(assert (=> b!2696085 m!3077163))

(declare-fun m!3077165 () Bool)

(assert (=> b!2696106 m!3077165))

(declare-fun m!3077167 () Bool)

(assert (=> b!2696090 m!3077167))

(declare-fun m!3077169 () Bool)

(assert (=> b!2696090 m!3077169))

(declare-fun m!3077171 () Bool)

(assert (=> b!2696095 m!3077171))

(declare-fun m!3077173 () Bool)

(assert (=> b!2696087 m!3077173))

(declare-fun m!3077175 () Bool)

(assert (=> b!2696093 m!3077175))

(declare-fun m!3077177 () Bool)

(assert (=> b!2696112 m!3077177))

(assert (=> b!2696112 m!3077177))

(declare-fun m!3077179 () Bool)

(assert (=> b!2696112 m!3077179))

(declare-fun m!3077181 () Bool)

(assert (=> b!2696112 m!3077181))

(declare-fun m!3077183 () Bool)

(assert (=> b!2696112 m!3077183))

(declare-fun m!3077185 () Bool)

(assert (=> b!2696112 m!3077185))

(declare-fun m!3077187 () Bool)

(assert (=> b!2696094 m!3077187))

(declare-fun m!3077189 () Bool)

(assert (=> mapNonEmpty!16163 m!3077189))

(declare-fun m!3077191 () Bool)

(assert (=> start!262062 m!3077191))

(declare-fun m!3077193 () Bool)

(assert (=> start!262062 m!3077193))

(declare-fun m!3077195 () Bool)

(assert (=> start!262062 m!3077195))

(declare-fun m!3077197 () Bool)

(assert (=> start!262062 m!3077197))

(declare-fun m!3077199 () Bool)

(assert (=> start!262062 m!3077199))

(declare-fun m!3077201 () Bool)

(assert (=> start!262062 m!3077201))

(declare-fun m!3077203 () Bool)

(assert (=> b!2696098 m!3077203))

(declare-fun m!3077205 () Bool)

(assert (=> b!2696110 m!3077205))

(declare-fun m!3077207 () Bool)

(assert (=> b!2696110 m!3077207))

(declare-fun m!3077209 () Bool)

(assert (=> b!2696103 m!3077209))

(declare-fun m!3077211 () Bool)

(assert (=> b!2696103 m!3077211))

(declare-fun m!3077213 () Bool)

(assert (=> b!2696103 m!3077213))

(assert (=> b!2696103 m!3077211))

(assert (=> b!2696103 m!3077213))

(declare-fun m!3077215 () Bool)

(assert (=> b!2696103 m!3077215))

(declare-fun m!3077217 () Bool)

(assert (=> b!2696092 m!3077217))

(declare-fun m!3077219 () Bool)

(assert (=> b!2696092 m!3077219))

(declare-fun m!3077221 () Bool)

(assert (=> b!2696092 m!3077221))

(declare-fun m!3077223 () Bool)

(assert (=> b!2696108 m!3077223))

(check-sat (not mapNonEmpty!16164) (not mapNonEmpty!16163) (not b_next!76911) b_and!199331 (not b_next!76909) (not b!2696095) (not b!2696099) (not start!262062) (not b_next!76915) (not b!2696108) (not b!2696090) b_and!199333 (not b!2696106) (not b!2696087) (not b!2696086) (not b!2696085) b_and!199339 (not b!2696112) (not b!2696098) (not b!2696102) (not b_next!76905) (not b!2696093) (not b!2696096) (not b!2696103) (not b!2696097) (not b_next!76907) b_and!199337 (not b!2696094) (not b!2696110) (not b!2696092) b_and!199335 b_and!199341 (not b_next!76913) (not b!2696107) (not b!2696105))
(check-sat (not b_next!76911) b_and!199331 (not b_next!76909) b_and!199339 (not b_next!76905) (not b_next!76915) b_and!199335 b_and!199333 (not b_next!76907) b_and!199337 b_and!199341 (not b_next!76913))
(get-model)

(declare-fun d!772595 () Bool)

(declare-fun c!434618 () Bool)

(assert (=> d!772595 (= c!434618 ((_ is Node!9735) (c!434614 treated!26)))))

(declare-fun e!1700151 () Bool)

(assert (=> d!772595 (= (inv!42198 (c!434614 treated!26)) e!1700151)))

(declare-fun b!2696121 () Bool)

(declare-fun inv!42200 (Conc!9735) Bool)

(assert (=> b!2696121 (= e!1700151 (inv!42200 (c!434614 treated!26)))))

(declare-fun b!2696122 () Bool)

(declare-fun e!1700152 () Bool)

(assert (=> b!2696122 (= e!1700151 e!1700152)))

(declare-fun res!1132620 () Bool)

(assert (=> b!2696122 (= res!1132620 (not ((_ is Leaf!14856) (c!434614 treated!26))))))

(assert (=> b!2696122 (=> res!1132620 e!1700152)))

(declare-fun b!2696123 () Bool)

(declare-fun inv!42201 (Conc!9735) Bool)

(assert (=> b!2696123 (= e!1700152 (inv!42201 (c!434614 treated!26)))))

(assert (= (and d!772595 c!434618) b!2696121))

(assert (= (and d!772595 (not c!434618)) b!2696122))

(assert (= (and b!2696122 (not res!1132620)) b!2696123))

(declare-fun m!3077225 () Bool)

(assert (=> b!2696121 m!3077225))

(declare-fun m!3077227 () Bool)

(assert (=> b!2696123 m!3077227))

(assert (=> b!2696098 d!772595))

(declare-fun d!772597 () Bool)

(declare-fun res!1132623 () Bool)

(declare-fun e!1700155 () Bool)

(assert (=> d!772597 (=> (not res!1132623) (not e!1700155))))

(declare-fun rulesValid!1769 (LexerInterface!4349 List!31248) Bool)

(assert (=> d!772597 (= res!1132623 (rulesValid!1769 thiss!12257 rules!1381))))

(assert (=> d!772597 (= (rulesInvariant!3836 thiss!12257 rules!1381) e!1700155)))

(declare-fun b!2696126 () Bool)

(declare-datatypes ((List!31249 0))(
  ( (Nil!31149) (Cons!31149 (h!36569 String!34775) (t!225256 List!31249)) )
))
(declare-fun noDuplicateTag!1765 (LexerInterface!4349 List!31248 List!31249) Bool)

(assert (=> b!2696126 (= e!1700155 (noDuplicateTag!1765 thiss!12257 rules!1381 Nil!31149))))

(assert (= (and d!772597 res!1132623) b!2696126))

(declare-fun m!3077229 () Bool)

(assert (=> d!772597 m!3077229))

(declare-fun m!3077231 () Bool)

(assert (=> b!2696126 m!3077231))

(assert (=> b!2696087 d!772597))

(declare-fun d!772599 () Bool)

(declare-fun validCacheMapDown!357 (MutableMap!3444) Bool)

(assert (=> d!772599 (= (valid!2745 cacheDown!499) (validCacheMapDown!357 (cache!3587 cacheDown!499)))))

(declare-fun bs!483863 () Bool)

(assert (= bs!483863 d!772599))

(declare-fun m!3077233 () Bool)

(assert (=> bs!483863 m!3077233))

(assert (=> b!2696107 d!772599))

(declare-fun d!772601 () Bool)

(assert (=> d!772601 (= (isEmpty!17745 rules!1381) ((_ is Nil!31148) rules!1381))))

(assert (=> b!2696108 d!772601))

(declare-fun d!772603 () Bool)

(declare-fun validCacheMapUp!326 (MutableMap!3445) Bool)

(assert (=> d!772603 (= (valid!2744 cacheUp!486) (validCacheMapUp!326 (cache!3588 cacheUp!486)))))

(declare-fun bs!483864 () Bool)

(assert (= bs!483864 d!772603))

(declare-fun m!3077235 () Bool)

(assert (=> bs!483864 m!3077235))

(assert (=> b!2696099 d!772603))

(declare-fun d!772605 () Bool)

(declare-fun list!11749 (Conc!9735) List!31244)

(assert (=> d!772605 (= (list!11747 (_2!17996 lt!952553)) (list!11749 (c!434614 (_2!17996 lt!952553))))))

(declare-fun bs!483865 () Bool)

(assert (= bs!483865 d!772605))

(declare-fun m!3077237 () Bool)

(assert (=> bs!483865 m!3077237))

(assert (=> b!2696090 d!772605))

(declare-fun d!772607 () Bool)

(assert (=> d!772607 (= (list!11747 (_2!17996 lt!952556)) (list!11749 (c!434614 (_2!17996 lt!952556))))))

(declare-fun bs!483866 () Bool)

(assert (= bs!483866 d!772607))

(declare-fun m!3077239 () Bool)

(assert (=> bs!483866 m!3077239))

(assert (=> b!2696090 d!772607))

(declare-fun d!772609 () Bool)

(assert (=> d!772609 (= (inv!42190 (tag!5257 (h!36568 rules!1381))) (= (mod (str.len (value!153074 (tag!5257 (h!36568 rules!1381)))) 2) 0))))

(assert (=> b!2696110 d!772609))

(declare-fun d!772611 () Bool)

(declare-fun res!1132626 () Bool)

(declare-fun e!1700158 () Bool)

(assert (=> d!772611 (=> (not res!1132626) (not e!1700158))))

(declare-fun semiInverseModEq!1963 (Int Int) Bool)

(assert (=> d!772611 (= res!1132626 (semiInverseModEq!1963 (toChars!6570 (transformation!4753 (h!36568 rules!1381))) (toValue!6711 (transformation!4753 (h!36568 rules!1381)))))))

(assert (=> d!772611 (= (inv!42199 (transformation!4753 (h!36568 rules!1381))) e!1700158)))

(declare-fun b!2696129 () Bool)

(declare-fun equivClasses!1864 (Int Int) Bool)

(assert (=> b!2696129 (= e!1700158 (equivClasses!1864 (toChars!6570 (transformation!4753 (h!36568 rules!1381))) (toValue!6711 (transformation!4753 (h!36568 rules!1381)))))))

(assert (= (and d!772611 res!1132626) b!2696129))

(declare-fun m!3077241 () Bool)

(assert (=> d!772611 m!3077241))

(declare-fun m!3077243 () Bool)

(assert (=> b!2696129 m!3077243))

(assert (=> b!2696110 d!772611))

(declare-fun d!772613 () Bool)

(declare-fun list!11750 (Conc!9736) List!31247)

(assert (=> d!772613 (= (list!11748 (_1!17996 lt!952552)) (list!11750 (c!434615 (_1!17996 lt!952552))))))

(declare-fun bs!483867 () Bool)

(assert (= bs!483867 d!772613))

(declare-fun m!3077245 () Bool)

(assert (=> bs!483867 m!3077245))

(assert (=> b!2696092 d!772613))

(declare-fun d!772615 () Bool)

(assert (=> d!772615 (= (list!11748 acc!348) (list!11750 (c!434615 acc!348)))))

(declare-fun bs!483868 () Bool)

(assert (= bs!483868 d!772615))

(declare-fun m!3077247 () Bool)

(assert (=> bs!483868 m!3077247))

(assert (=> b!2696092 d!772615))

(declare-fun b!2696144 () Bool)

(declare-fun e!1700170 () Bool)

(declare-fun e!1700169 () Bool)

(assert (=> b!2696144 (= e!1700170 e!1700169)))

(declare-fun res!1132635 () Bool)

(declare-fun lt!952564 () tuple2!30752)

(assert (=> b!2696144 (= res!1132635 (< (size!24051 (_2!17996 lt!952564)) (size!24051 treated!26)))))

(assert (=> b!2696144 (=> (not res!1132635) (not e!1700169))))

(declare-fun b!2696145 () Bool)

(declare-fun e!1700168 () tuple2!30752)

(assert (=> b!2696145 (= e!1700168 (tuple2!30753 (BalanceConc!19087 Empty!9736) treated!26))))

(declare-fun e!1700167 () Bool)

(declare-fun b!2696146 () Bool)

(declare-datatypes ((tuple2!30754 0))(
  ( (tuple2!30755 (_1!17997 List!31247) (_2!17997 List!31244)) )
))
(declare-fun lexList!1198 (LexerInterface!4349 List!31248 List!31244) tuple2!30754)

(assert (=> b!2696146 (= e!1700167 (= (list!11747 (_2!17996 lt!952564)) (_2!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 treated!26)))))))

(declare-fun b!2696147 () Bool)

(declare-fun lt!952565 () tuple2!30752)

(declare-datatypes ((tuple2!30756 0))(
  ( (tuple2!30757 (_1!17998 Token!8972) (_2!17998 BalanceConc!19084)) )
))
(declare-datatypes ((Option!6146 0))(
  ( (None!6145) (Some!6145 (v!32920 tuple2!30756)) )
))
(declare-fun lt!952563 () Option!6146)

(declare-fun prepend!1084 (BalanceConc!19086 Token!8972) BalanceConc!19086)

(assert (=> b!2696147 (= e!1700168 (tuple2!30753 (prepend!1084 (_1!17996 lt!952565) (_1!17998 (v!32920 lt!952563))) (_2!17996 lt!952565)))))

(assert (=> b!2696147 (= lt!952565 (lexRec!611 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952563))))))

(declare-fun b!2696148 () Bool)

(declare-fun res!1132634 () Bool)

(assert (=> b!2696148 (=> (not res!1132634) (not e!1700167))))

(assert (=> b!2696148 (= res!1132634 (= (list!11748 (_1!17996 lt!952564)) (_1!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 treated!26)))))))

(declare-fun b!2696150 () Bool)

(declare-fun isEmpty!17746 (BalanceConc!19086) Bool)

(assert (=> b!2696150 (= e!1700169 (not (isEmpty!17746 (_1!17996 lt!952564))))))

(declare-fun d!772617 () Bool)

(assert (=> d!772617 e!1700167))

(declare-fun res!1132633 () Bool)

(assert (=> d!772617 (=> (not res!1132633) (not e!1700167))))

(assert (=> d!772617 (= res!1132633 e!1700170)))

(declare-fun c!434625 () Bool)

(declare-fun size!24052 (BalanceConc!19086) Int)

(assert (=> d!772617 (= c!434625 (> (size!24052 (_1!17996 lt!952564)) 0))))

(assert (=> d!772617 (= lt!952564 e!1700168)))

(declare-fun c!434624 () Bool)

(assert (=> d!772617 (= c!434624 ((_ is Some!6145) lt!952563))))

(declare-fun maxPrefixZipperSequence!1010 (LexerInterface!4349 List!31248 BalanceConc!19084) Option!6146)

(assert (=> d!772617 (= lt!952563 (maxPrefixZipperSequence!1010 thiss!12257 rules!1381 treated!26))))

(assert (=> d!772617 (= (lexRec!611 thiss!12257 rules!1381 treated!26) lt!952564)))

(declare-fun b!2696149 () Bool)

(assert (=> b!2696149 (= e!1700170 (= (list!11747 (_2!17996 lt!952564)) (list!11747 treated!26)))))

(assert (= (and d!772617 c!434624) b!2696147))

(assert (= (and d!772617 (not c!434624)) b!2696145))

(assert (= (and d!772617 c!434625) b!2696144))

(assert (= (and d!772617 (not c!434625)) b!2696149))

(assert (= (and b!2696144 res!1132635) b!2696150))

(assert (= (and d!772617 res!1132633) b!2696148))

(assert (= (and b!2696148 res!1132634) b!2696146))

(declare-fun m!3077249 () Bool)

(assert (=> b!2696149 m!3077249))

(assert (=> b!2696149 m!3077211))

(assert (=> b!2696146 m!3077249))

(assert (=> b!2696146 m!3077211))

(assert (=> b!2696146 m!3077211))

(declare-fun m!3077251 () Bool)

(assert (=> b!2696146 m!3077251))

(declare-fun m!3077253 () Bool)

(assert (=> d!772617 m!3077253))

(declare-fun m!3077255 () Bool)

(assert (=> d!772617 m!3077255))

(declare-fun m!3077257 () Bool)

(assert (=> b!2696147 m!3077257))

(declare-fun m!3077259 () Bool)

(assert (=> b!2696147 m!3077259))

(declare-fun m!3077261 () Bool)

(assert (=> b!2696144 m!3077261))

(declare-fun m!3077263 () Bool)

(assert (=> b!2696144 m!3077263))

(declare-fun m!3077265 () Bool)

(assert (=> b!2696148 m!3077265))

(assert (=> b!2696148 m!3077211))

(assert (=> b!2696148 m!3077211))

(assert (=> b!2696148 m!3077251))

(declare-fun m!3077267 () Bool)

(assert (=> b!2696150 m!3077267))

(assert (=> b!2696092 d!772617))

(declare-fun b!2696151 () Bool)

(declare-fun e!1700174 () Bool)

(declare-fun e!1700173 () Bool)

(assert (=> b!2696151 (= e!1700174 e!1700173)))

(declare-fun res!1132638 () Bool)

(declare-fun lt!952567 () tuple2!30752)

(assert (=> b!2696151 (= res!1132638 (< (size!24051 (_2!17996 lt!952567)) (size!24051 input!780)))))

(assert (=> b!2696151 (=> (not res!1132638) (not e!1700173))))

(declare-fun b!2696152 () Bool)

(declare-fun e!1700172 () tuple2!30752)

(assert (=> b!2696152 (= e!1700172 (tuple2!30753 (BalanceConc!19087 Empty!9736) input!780))))

(declare-fun e!1700171 () Bool)

(declare-fun b!2696153 () Bool)

(assert (=> b!2696153 (= e!1700171 (= (list!11747 (_2!17996 lt!952567)) (_2!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 input!780)))))))

(declare-fun b!2696154 () Bool)

(declare-fun lt!952568 () tuple2!30752)

(declare-fun lt!952566 () Option!6146)

(assert (=> b!2696154 (= e!1700172 (tuple2!30753 (prepend!1084 (_1!17996 lt!952568) (_1!17998 (v!32920 lt!952566))) (_2!17996 lt!952568)))))

(assert (=> b!2696154 (= lt!952568 (lexRec!611 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952566))))))

(declare-fun b!2696155 () Bool)

(declare-fun res!1132637 () Bool)

(assert (=> b!2696155 (=> (not res!1132637) (not e!1700171))))

(assert (=> b!2696155 (= res!1132637 (= (list!11748 (_1!17996 lt!952567)) (_1!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 input!780)))))))

(declare-fun b!2696157 () Bool)

(assert (=> b!2696157 (= e!1700173 (not (isEmpty!17746 (_1!17996 lt!952567))))))

(declare-fun d!772619 () Bool)

(assert (=> d!772619 e!1700171))

(declare-fun res!1132636 () Bool)

(assert (=> d!772619 (=> (not res!1132636) (not e!1700171))))

(assert (=> d!772619 (= res!1132636 e!1700174)))

(declare-fun c!434627 () Bool)

(assert (=> d!772619 (= c!434627 (> (size!24052 (_1!17996 lt!952567)) 0))))

(assert (=> d!772619 (= lt!952567 e!1700172)))

(declare-fun c!434626 () Bool)

(assert (=> d!772619 (= c!434626 ((_ is Some!6145) lt!952566))))

(assert (=> d!772619 (= lt!952566 (maxPrefixZipperSequence!1010 thiss!12257 rules!1381 input!780))))

(assert (=> d!772619 (= (lexRec!611 thiss!12257 rules!1381 input!780) lt!952567)))

(declare-fun b!2696156 () Bool)

(assert (=> b!2696156 (= e!1700174 (= (list!11747 (_2!17996 lt!952567)) (list!11747 input!780)))))

(assert (= (and d!772619 c!434626) b!2696154))

(assert (= (and d!772619 (not c!434626)) b!2696152))

(assert (= (and d!772619 c!434627) b!2696151))

(assert (= (and d!772619 (not c!434627)) b!2696156))

(assert (= (and b!2696151 res!1132638) b!2696157))

(assert (= (and d!772619 res!1132636) b!2696155))

(assert (= (and b!2696155 res!1132637) b!2696153))

(declare-fun m!3077269 () Bool)

(assert (=> b!2696156 m!3077269))

(assert (=> b!2696156 m!3077213))

(assert (=> b!2696153 m!3077269))

(assert (=> b!2696153 m!3077213))

(assert (=> b!2696153 m!3077213))

(declare-fun m!3077271 () Bool)

(assert (=> b!2696153 m!3077271))

(declare-fun m!3077273 () Bool)

(assert (=> d!772619 m!3077273))

(declare-fun m!3077275 () Bool)

(assert (=> d!772619 m!3077275))

(declare-fun m!3077277 () Bool)

(assert (=> b!2696154 m!3077277))

(declare-fun m!3077279 () Bool)

(assert (=> b!2696154 m!3077279))

(declare-fun m!3077281 () Bool)

(assert (=> b!2696151 m!3077281))

(assert (=> b!2696151 m!3077165))

(declare-fun m!3077283 () Bool)

(assert (=> b!2696155 m!3077283))

(assert (=> b!2696155 m!3077213))

(assert (=> b!2696155 m!3077213))

(assert (=> b!2696155 m!3077271))

(declare-fun m!3077285 () Bool)

(assert (=> b!2696157 m!3077285))

(assert (=> b!2696112 d!772619))

(declare-fun d!772621 () Bool)

(assert (=> d!772621 (= (list!11748 (_1!17996 lt!952553)) (list!11750 (c!434615 (_1!17996 lt!952553))))))

(declare-fun bs!483869 () Bool)

(assert (= bs!483869 d!772621))

(declare-fun m!3077287 () Bool)

(assert (=> bs!483869 m!3077287))

(assert (=> b!2696112 d!772621))

(declare-fun b!2696168 () Bool)

(declare-fun res!1132647 () Bool)

(declare-fun e!1700177 () Bool)

(assert (=> b!2696168 (=> (not res!1132647) (not e!1700177))))

(declare-fun height!1427 (Conc!9736) Int)

(declare-fun ++!7647 (Conc!9736 Conc!9736) Conc!9736)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2696168 (= res!1132647 (>= (height!1427 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))) (max!0 (height!1427 (c!434615 acc!348)) (height!1427 (c!434615 (_1!17996 lt!952556))))))))

(declare-fun lt!952571 () BalanceConc!19086)

(declare-fun b!2696169 () Bool)

(declare-fun ++!7648 (List!31247 List!31247) List!31247)

(assert (=> b!2696169 (= e!1700177 (= (list!11748 lt!952571) (++!7648 (list!11748 acc!348) (list!11748 (_1!17996 lt!952556)))))))

(declare-fun b!2696167 () Bool)

(declare-fun res!1132650 () Bool)

(assert (=> b!2696167 (=> (not res!1132650) (not e!1700177))))

(assert (=> b!2696167 (= res!1132650 (<= (height!1427 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))) (+ (max!0 (height!1427 (c!434615 acc!348)) (height!1427 (c!434615 (_1!17996 lt!952556)))) 1)))))

(declare-fun b!2696166 () Bool)

(declare-fun res!1132649 () Bool)

(assert (=> b!2696166 (=> (not res!1132649) (not e!1700177))))

(declare-fun isBalanced!2945 (Conc!9736) Bool)

(assert (=> b!2696166 (= res!1132649 (isBalanced!2945 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))))))

(declare-fun d!772623 () Bool)

(assert (=> d!772623 e!1700177))

(declare-fun res!1132648 () Bool)

(assert (=> d!772623 (=> (not res!1132648) (not e!1700177))))

(declare-fun appendAssocInst!667 (Conc!9736 Conc!9736) Bool)

(assert (=> d!772623 (= res!1132648 (appendAssocInst!667 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))))))

(assert (=> d!772623 (= lt!952571 (BalanceConc!19087 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))))))

(assert (=> d!772623 (= (++!7646 acc!348 (_1!17996 lt!952556)) lt!952571)))

(assert (= (and d!772623 res!1132648) b!2696166))

(assert (= (and b!2696166 res!1132649) b!2696167))

(assert (= (and b!2696167 res!1132650) b!2696168))

(assert (= (and b!2696168 res!1132647) b!2696169))

(declare-fun m!3077289 () Bool)

(assert (=> b!2696169 m!3077289))

(assert (=> b!2696169 m!3077219))

(declare-fun m!3077291 () Bool)

(assert (=> b!2696169 m!3077291))

(assert (=> b!2696169 m!3077219))

(assert (=> b!2696169 m!3077291))

(declare-fun m!3077293 () Bool)

(assert (=> b!2696169 m!3077293))

(declare-fun m!3077295 () Bool)

(assert (=> b!2696167 m!3077295))

(declare-fun m!3077297 () Bool)

(assert (=> b!2696167 m!3077297))

(declare-fun m!3077299 () Bool)

(assert (=> b!2696167 m!3077299))

(declare-fun m!3077301 () Bool)

(assert (=> b!2696167 m!3077301))

(assert (=> b!2696167 m!3077299))

(assert (=> b!2696167 m!3077297))

(assert (=> b!2696167 m!3077295))

(declare-fun m!3077303 () Bool)

(assert (=> b!2696167 m!3077303))

(assert (=> b!2696168 m!3077295))

(assert (=> b!2696168 m!3077297))

(assert (=> b!2696168 m!3077299))

(assert (=> b!2696168 m!3077301))

(assert (=> b!2696168 m!3077299))

(assert (=> b!2696168 m!3077297))

(assert (=> b!2696168 m!3077295))

(assert (=> b!2696168 m!3077303))

(assert (=> b!2696166 m!3077299))

(assert (=> b!2696166 m!3077299))

(declare-fun m!3077305 () Bool)

(assert (=> b!2696166 m!3077305))

(declare-fun m!3077307 () Bool)

(assert (=> d!772623 m!3077307))

(assert (=> d!772623 m!3077299))

(assert (=> b!2696112 d!772623))

(declare-fun b!2696170 () Bool)

(declare-fun e!1700181 () Bool)

(declare-fun e!1700180 () Bool)

(assert (=> b!2696170 (= e!1700181 e!1700180)))

(declare-fun res!1132653 () Bool)

(declare-fun lt!952573 () tuple2!30752)

(assert (=> b!2696170 (= res!1132653 (< (size!24051 (_2!17996 lt!952573)) (size!24051 totalInput!354)))))

(assert (=> b!2696170 (=> (not res!1132653) (not e!1700180))))

(declare-fun b!2696171 () Bool)

(declare-fun e!1700179 () tuple2!30752)

(assert (=> b!2696171 (= e!1700179 (tuple2!30753 (BalanceConc!19087 Empty!9736) totalInput!354))))

(declare-fun b!2696172 () Bool)

(declare-fun e!1700178 () Bool)

(assert (=> b!2696172 (= e!1700178 (= (list!11747 (_2!17996 lt!952573)) (_2!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 totalInput!354)))))))

(declare-fun b!2696173 () Bool)

(declare-fun lt!952574 () tuple2!30752)

(declare-fun lt!952572 () Option!6146)

(assert (=> b!2696173 (= e!1700179 (tuple2!30753 (prepend!1084 (_1!17996 lt!952574) (_1!17998 (v!32920 lt!952572))) (_2!17996 lt!952574)))))

(assert (=> b!2696173 (= lt!952574 (lexRec!611 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952572))))))

(declare-fun b!2696174 () Bool)

(declare-fun res!1132652 () Bool)

(assert (=> b!2696174 (=> (not res!1132652) (not e!1700178))))

(assert (=> b!2696174 (= res!1132652 (= (list!11748 (_1!17996 lt!952573)) (_1!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 totalInput!354)))))))

(declare-fun b!2696176 () Bool)

(assert (=> b!2696176 (= e!1700180 (not (isEmpty!17746 (_1!17996 lt!952573))))))

(declare-fun d!772625 () Bool)

(assert (=> d!772625 e!1700178))

(declare-fun res!1132651 () Bool)

(assert (=> d!772625 (=> (not res!1132651) (not e!1700178))))

(assert (=> d!772625 (= res!1132651 e!1700181)))

(declare-fun c!434632 () Bool)

(assert (=> d!772625 (= c!434632 (> (size!24052 (_1!17996 lt!952573)) 0))))

(assert (=> d!772625 (= lt!952573 e!1700179)))

(declare-fun c!434631 () Bool)

(assert (=> d!772625 (= c!434631 ((_ is Some!6145) lt!952572))))

(assert (=> d!772625 (= lt!952572 (maxPrefixZipperSequence!1010 thiss!12257 rules!1381 totalInput!354))))

(assert (=> d!772625 (= (lexRec!611 thiss!12257 rules!1381 totalInput!354) lt!952573)))

(declare-fun b!2696175 () Bool)

(assert (=> b!2696175 (= e!1700181 (= (list!11747 (_2!17996 lt!952573)) (list!11747 totalInput!354)))))

(assert (= (and d!772625 c!434631) b!2696173))

(assert (= (and d!772625 (not c!434631)) b!2696171))

(assert (= (and d!772625 c!434632) b!2696170))

(assert (= (and d!772625 (not c!434632)) b!2696175))

(assert (= (and b!2696170 res!1132653) b!2696176))

(assert (= (and d!772625 res!1132651) b!2696174))

(assert (= (and b!2696174 res!1132652) b!2696172))

(declare-fun m!3077309 () Bool)

(assert (=> b!2696175 m!3077309))

(assert (=> b!2696175 m!3077209))

(assert (=> b!2696172 m!3077309))

(assert (=> b!2696172 m!3077209))

(assert (=> b!2696172 m!3077209))

(declare-fun m!3077311 () Bool)

(assert (=> b!2696172 m!3077311))

(declare-fun m!3077313 () Bool)

(assert (=> d!772625 m!3077313))

(declare-fun m!3077315 () Bool)

(assert (=> d!772625 m!3077315))

(declare-fun m!3077317 () Bool)

(assert (=> b!2696173 m!3077317))

(declare-fun m!3077319 () Bool)

(assert (=> b!2696173 m!3077319))

(declare-fun m!3077321 () Bool)

(assert (=> b!2696170 m!3077321))

(declare-fun m!3077323 () Bool)

(assert (=> b!2696170 m!3077323))

(declare-fun m!3077325 () Bool)

(assert (=> b!2696174 m!3077325))

(assert (=> b!2696174 m!3077209))

(assert (=> b!2696174 m!3077209))

(assert (=> b!2696174 m!3077311))

(declare-fun m!3077327 () Bool)

(assert (=> b!2696176 m!3077327))

(assert (=> b!2696112 d!772625))

(declare-fun d!772627 () Bool)

(assert (=> d!772627 (= (list!11748 (++!7646 acc!348 (_1!17996 lt!952556))) (list!11750 (c!434615 (++!7646 acc!348 (_1!17996 lt!952556)))))))

(declare-fun bs!483870 () Bool)

(assert (= bs!483870 d!772627))

(declare-fun m!3077329 () Bool)

(assert (=> bs!483870 m!3077329))

(assert (=> b!2696112 d!772627))

(declare-fun d!772629 () Bool)

(declare-fun isBalanced!2946 (Conc!9735) Bool)

(assert (=> d!772629 (= (inv!42193 input!780) (isBalanced!2946 (c!434614 input!780)))))

(declare-fun bs!483871 () Bool)

(assert (= bs!483871 d!772629))

(declare-fun m!3077331 () Bool)

(assert (=> bs!483871 m!3077331))

(assert (=> start!262062 d!772629))

(declare-fun d!772631 () Bool)

(assert (=> d!772631 (= (inv!42193 treated!26) (isBalanced!2946 (c!434614 treated!26)))))

(declare-fun bs!483872 () Bool)

(assert (= bs!483872 d!772631))

(declare-fun m!3077333 () Bool)

(assert (=> bs!483872 m!3077333))

(assert (=> start!262062 d!772631))

(declare-fun d!772633 () Bool)

(declare-fun res!1132656 () Bool)

(declare-fun e!1700184 () Bool)

(assert (=> d!772633 (=> (not res!1132656) (not e!1700184))))

(assert (=> d!772633 (= res!1132656 ((_ is HashMap!3445) (cache!3588 cacheUp!486)))))

(assert (=> d!772633 (= (inv!42194 cacheUp!486) e!1700184)))

(declare-fun b!2696179 () Bool)

(assert (=> b!2696179 (= e!1700184 (validCacheMapUp!326 (cache!3588 cacheUp!486)))))

(assert (= (and d!772633 res!1132656) b!2696179))

(assert (=> b!2696179 m!3077235))

(assert (=> start!262062 d!772633))

(declare-fun d!772635 () Bool)

(declare-fun res!1132659 () Bool)

(declare-fun e!1700187 () Bool)

(assert (=> d!772635 (=> (not res!1132659) (not e!1700187))))

(assert (=> d!772635 (= res!1132659 ((_ is HashMap!3444) (cache!3587 cacheDown!499)))))

(assert (=> d!772635 (= (inv!42196 cacheDown!499) e!1700187)))

(declare-fun b!2696182 () Bool)

(assert (=> b!2696182 (= e!1700187 (validCacheMapDown!357 (cache!3587 cacheDown!499)))))

(assert (= (and d!772635 res!1132659) b!2696182))

(assert (=> b!2696182 m!3077233))

(assert (=> start!262062 d!772635))

(declare-fun d!772637 () Bool)

(assert (=> d!772637 (= (inv!42195 acc!348) (isBalanced!2945 (c!434615 acc!348)))))

(declare-fun bs!483873 () Bool)

(assert (= bs!483873 d!772637))

(declare-fun m!3077335 () Bool)

(assert (=> bs!483873 m!3077335))

(assert (=> start!262062 d!772637))

(declare-fun d!772639 () Bool)

(assert (=> d!772639 (= (inv!42193 totalInput!354) (isBalanced!2946 (c!434614 totalInput!354)))))

(declare-fun bs!483874 () Bool)

(assert (= bs!483874 d!772639))

(declare-fun m!3077337 () Bool)

(assert (=> bs!483874 m!3077337))

(assert (=> start!262062 d!772639))

(declare-fun d!772641 () Bool)

(assert (=> d!772641 (= (isEmpty!17744 (list!11747 (_2!17996 lt!952552))) ((_ is Nil!31144) (list!11747 (_2!17996 lt!952552))))))

(assert (=> b!2696102 d!772641))

(declare-fun d!772643 () Bool)

(assert (=> d!772643 (= (list!11747 (_2!17996 lt!952552)) (list!11749 (c!434614 (_2!17996 lt!952552))))))

(declare-fun bs!483875 () Bool)

(assert (= bs!483875 d!772643))

(declare-fun m!3077339 () Bool)

(assert (=> bs!483875 m!3077339))

(assert (=> b!2696102 d!772643))

(declare-fun d!772645 () Bool)

(assert (=> d!772645 (= (list!11747 totalInput!354) (list!11749 (c!434614 totalInput!354)))))

(declare-fun bs!483876 () Bool)

(assert (= bs!483876 d!772645))

(declare-fun m!3077341 () Bool)

(assert (=> bs!483876 m!3077341))

(assert (=> b!2696103 d!772645))

(declare-fun b!2696194 () Bool)

(declare-fun lt!952577 () List!31244)

(declare-fun e!1700192 () Bool)

(assert (=> b!2696194 (= e!1700192 (or (not (= (list!11747 input!780) Nil!31144)) (= lt!952577 (list!11747 treated!26))))))

(declare-fun d!772647 () Bool)

(assert (=> d!772647 e!1700192))

(declare-fun res!1132665 () Bool)

(assert (=> d!772647 (=> (not res!1132665) (not e!1700192))))

(declare-fun content!4408 (List!31244) (InoxSet C!15968))

(assert (=> d!772647 (= res!1132665 (= (content!4408 lt!952577) ((_ map or) (content!4408 (list!11747 treated!26)) (content!4408 (list!11747 input!780)))))))

(declare-fun e!1700193 () List!31244)

(assert (=> d!772647 (= lt!952577 e!1700193)))

(declare-fun c!434635 () Bool)

(assert (=> d!772647 (= c!434635 ((_ is Nil!31144) (list!11747 treated!26)))))

(assert (=> d!772647 (= (++!7645 (list!11747 treated!26) (list!11747 input!780)) lt!952577)))

(declare-fun b!2696192 () Bool)

(assert (=> b!2696192 (= e!1700193 (Cons!31144 (h!36564 (list!11747 treated!26)) (++!7645 (t!225251 (list!11747 treated!26)) (list!11747 input!780))))))

(declare-fun b!2696193 () Bool)

(declare-fun res!1132664 () Bool)

(assert (=> b!2696193 (=> (not res!1132664) (not e!1700192))))

(declare-fun size!24053 (List!31244) Int)

(assert (=> b!2696193 (= res!1132664 (= (size!24053 lt!952577) (+ (size!24053 (list!11747 treated!26)) (size!24053 (list!11747 input!780)))))))

(declare-fun b!2696191 () Bool)

(assert (=> b!2696191 (= e!1700193 (list!11747 input!780))))

(assert (= (and d!772647 c!434635) b!2696191))

(assert (= (and d!772647 (not c!434635)) b!2696192))

(assert (= (and d!772647 res!1132665) b!2696193))

(assert (= (and b!2696193 res!1132664) b!2696194))

(declare-fun m!3077343 () Bool)

(assert (=> d!772647 m!3077343))

(assert (=> d!772647 m!3077211))

(declare-fun m!3077345 () Bool)

(assert (=> d!772647 m!3077345))

(assert (=> d!772647 m!3077213))

(declare-fun m!3077347 () Bool)

(assert (=> d!772647 m!3077347))

(assert (=> b!2696192 m!3077213))

(declare-fun m!3077349 () Bool)

(assert (=> b!2696192 m!3077349))

(declare-fun m!3077351 () Bool)

(assert (=> b!2696193 m!3077351))

(assert (=> b!2696193 m!3077211))

(declare-fun m!3077353 () Bool)

(assert (=> b!2696193 m!3077353))

(assert (=> b!2696193 m!3077213))

(declare-fun m!3077355 () Bool)

(assert (=> b!2696193 m!3077355))

(assert (=> b!2696103 d!772647))

(declare-fun d!772649 () Bool)

(assert (=> d!772649 (= (list!11747 treated!26) (list!11749 (c!434614 treated!26)))))

(declare-fun bs!483877 () Bool)

(assert (= bs!483877 d!772649))

(declare-fun m!3077357 () Bool)

(assert (=> bs!483877 m!3077357))

(assert (=> b!2696103 d!772649))

(declare-fun d!772651 () Bool)

(assert (=> d!772651 (= (list!11747 input!780) (list!11749 (c!434614 input!780)))))

(declare-fun bs!483878 () Bool)

(assert (= bs!483878 d!772651))

(declare-fun m!3077359 () Bool)

(assert (=> bs!483878 m!3077359))

(assert (=> b!2696103 d!772651))

(declare-fun d!772653 () Bool)

(declare-fun c!434638 () Bool)

(assert (=> d!772653 (= c!434638 ((_ is Node!9736) (c!434615 acc!348)))))

(declare-fun e!1700198 () Bool)

(assert (=> d!772653 (= (inv!42197 (c!434615 acc!348)) e!1700198)))

(declare-fun b!2696201 () Bool)

(declare-fun inv!42202 (Conc!9736) Bool)

(assert (=> b!2696201 (= e!1700198 (inv!42202 (c!434615 acc!348)))))

(declare-fun b!2696202 () Bool)

(declare-fun e!1700199 () Bool)

(assert (=> b!2696202 (= e!1700198 e!1700199)))

(declare-fun res!1132668 () Bool)

(assert (=> b!2696202 (= res!1132668 (not ((_ is Leaf!14857) (c!434615 acc!348))))))

(assert (=> b!2696202 (=> res!1132668 e!1700199)))

(declare-fun b!2696203 () Bool)

(declare-fun inv!42203 (Conc!9736) Bool)

(assert (=> b!2696203 (= e!1700199 (inv!42203 (c!434615 acc!348)))))

(assert (= (and d!772653 c!434638) b!2696201))

(assert (= (and d!772653 (not c!434638)) b!2696202))

(assert (= (and b!2696202 (not res!1132668)) b!2696203))

(declare-fun m!3077361 () Bool)

(assert (=> b!2696201 m!3077361))

(declare-fun m!3077363 () Bool)

(assert (=> b!2696203 m!3077363))

(assert (=> b!2696093 d!772653))

(declare-fun d!772655 () Bool)

(declare-fun c!434639 () Bool)

(assert (=> d!772655 (= c!434639 ((_ is Node!9735) (c!434614 totalInput!354)))))

(declare-fun e!1700200 () Bool)

(assert (=> d!772655 (= (inv!42198 (c!434614 totalInput!354)) e!1700200)))

(declare-fun b!2696204 () Bool)

(assert (=> b!2696204 (= e!1700200 (inv!42200 (c!434614 totalInput!354)))))

(declare-fun b!2696205 () Bool)

(declare-fun e!1700201 () Bool)

(assert (=> b!2696205 (= e!1700200 e!1700201)))

(declare-fun res!1132669 () Bool)

(assert (=> b!2696205 (= res!1132669 (not ((_ is Leaf!14856) (c!434614 totalInput!354))))))

(assert (=> b!2696205 (=> res!1132669 e!1700201)))

(declare-fun b!2696206 () Bool)

(assert (=> b!2696206 (= e!1700201 (inv!42201 (c!434614 totalInput!354)))))

(assert (= (and d!772655 c!434639) b!2696204))

(assert (= (and d!772655 (not c!434639)) b!2696205))

(assert (= (and b!2696205 (not res!1132669)) b!2696206))

(declare-fun m!3077365 () Bool)

(assert (=> b!2696204 m!3077365))

(declare-fun m!3077367 () Bool)

(assert (=> b!2696206 m!3077367))

(assert (=> b!2696094 d!772655))

(declare-fun d!772657 () Bool)

(assert (=> d!772657 (= (array_inv!4025 (_keys!3838 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))) (bvsge (size!24047 (_keys!3838 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2696085 d!772657))

(declare-fun d!772659 () Bool)

(assert (=> d!772659 (= (array_inv!4026 (_values!3819 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))) (bvsge (size!24048 (_values!3819 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2696085 d!772659))

(declare-fun d!772661 () Bool)

(declare-fun c!434640 () Bool)

(assert (=> d!772661 (= c!434640 ((_ is Node!9735) (c!434614 input!780)))))

(declare-fun e!1700202 () Bool)

(assert (=> d!772661 (= (inv!42198 (c!434614 input!780)) e!1700202)))

(declare-fun b!2696207 () Bool)

(assert (=> b!2696207 (= e!1700202 (inv!42200 (c!434614 input!780)))))

(declare-fun b!2696208 () Bool)

(declare-fun e!1700203 () Bool)

(assert (=> b!2696208 (= e!1700202 e!1700203)))

(declare-fun res!1132670 () Bool)

(assert (=> b!2696208 (= res!1132670 (not ((_ is Leaf!14856) (c!434614 input!780))))))

(assert (=> b!2696208 (=> res!1132670 e!1700203)))

(declare-fun b!2696209 () Bool)

(assert (=> b!2696209 (= e!1700203 (inv!42201 (c!434614 input!780)))))

(assert (= (and d!772661 c!434640) b!2696207))

(assert (= (and d!772661 (not c!434640)) b!2696208))

(assert (= (and b!2696208 (not res!1132670)) b!2696209))

(declare-fun m!3077369 () Bool)

(assert (=> b!2696207 m!3077369))

(declare-fun m!3077371 () Bool)

(assert (=> b!2696209 m!3077371))

(assert (=> b!2696095 d!772661))

(declare-fun d!772663 () Bool)

(declare-fun lt!952580 () Int)

(assert (=> d!772663 (= lt!952580 (size!24053 (list!11747 input!780)))))

(declare-fun size!24054 (Conc!9735) Int)

(assert (=> d!772663 (= lt!952580 (size!24054 (c!434614 input!780)))))

(assert (=> d!772663 (= (size!24051 input!780) lt!952580)))

(declare-fun bs!483879 () Bool)

(assert (= bs!483879 d!772663))

(assert (=> bs!483879 m!3077213))

(assert (=> bs!483879 m!3077213))

(assert (=> bs!483879 m!3077355))

(declare-fun m!3077373 () Bool)

(assert (=> bs!483879 m!3077373))

(assert (=> b!2696106 d!772663))

(declare-fun d!772665 () Bool)

(assert (=> d!772665 (= (array_inv!4025 (_keys!3839 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))) (bvsge (size!24047 (_keys!3839 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2696097 d!772665))

(declare-fun d!772667 () Bool)

(assert (=> d!772667 (= (array_inv!4027 (_values!3820 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))) (bvsge (size!24049 (_values!3820 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2696097 d!772667))

(declare-fun tp!853051 () Bool)

(declare-fun b!2696218 () Bool)

(declare-fun tp!853052 () Bool)

(declare-fun e!1700209 () Bool)

(assert (=> b!2696218 (= e!1700209 (and (inv!42198 (left!23981 (c!434614 treated!26))) tp!853051 (inv!42198 (right!24311 (c!434614 treated!26))) tp!853052))))

(declare-fun b!2696220 () Bool)

(declare-fun e!1700208 () Bool)

(declare-fun tp!853050 () Bool)

(assert (=> b!2696220 (= e!1700208 tp!853050)))

(declare-fun b!2696219 () Bool)

(declare-fun inv!42204 (IArray!19475) Bool)

(assert (=> b!2696219 (= e!1700209 (and (inv!42204 (xs!12775 (c!434614 treated!26))) e!1700208))))

(assert (=> b!2696098 (= tp!853028 (and (inv!42198 (c!434614 treated!26)) e!1700209))))

(assert (= (and b!2696098 ((_ is Node!9735) (c!434614 treated!26))) b!2696218))

(assert (= b!2696219 b!2696220))

(assert (= (and b!2696098 ((_ is Leaf!14856) (c!434614 treated!26))) b!2696219))

(declare-fun m!3077375 () Bool)

(assert (=> b!2696218 m!3077375))

(declare-fun m!3077377 () Bool)

(assert (=> b!2696218 m!3077377))

(declare-fun m!3077379 () Bool)

(assert (=> b!2696219 m!3077379))

(assert (=> b!2696098 m!3077203))

(declare-fun b!2696233 () Bool)

(declare-fun e!1700212 () Bool)

(declare-fun tp!853063 () Bool)

(assert (=> b!2696233 (= e!1700212 tp!853063)))

(declare-fun b!2696231 () Bool)

(declare-fun tp_is_empty!13855 () Bool)

(assert (=> b!2696231 (= e!1700212 tp_is_empty!13855)))

(declare-fun b!2696234 () Bool)

(declare-fun tp!853065 () Bool)

(declare-fun tp!853066 () Bool)

(assert (=> b!2696234 (= e!1700212 (and tp!853065 tp!853066))))

(declare-fun b!2696232 () Bool)

(declare-fun tp!853064 () Bool)

(declare-fun tp!853067 () Bool)

(assert (=> b!2696232 (= e!1700212 (and tp!853064 tp!853067))))

(assert (=> b!2696110 (= tp!853032 e!1700212)))

(assert (= (and b!2696110 ((_ is ElementMatch!7905) (regex!4753 (h!36568 rules!1381)))) b!2696231))

(assert (= (and b!2696110 ((_ is Concat!12880) (regex!4753 (h!36568 rules!1381)))) b!2696232))

(assert (= (and b!2696110 ((_ is Star!7905) (regex!4753 (h!36568 rules!1381)))) b!2696233))

(assert (= (and b!2696110 ((_ is Union!7905) (regex!4753 (h!36568 rules!1381)))) b!2696234))

(declare-fun mapNonEmpty!16167 () Bool)

(declare-fun mapRes!16167 () Bool)

(declare-fun tp!853092 () Bool)

(declare-fun e!1700225 () Bool)

(assert (=> mapNonEmpty!16167 (= mapRes!16167 (and tp!853092 e!1700225))))

(declare-fun mapKey!16167 () (_ BitVec 32))

(declare-fun mapValue!16167 () List!31243)

(declare-fun mapRest!16167 () (Array (_ BitVec 32) List!31243))

(assert (=> mapNonEmpty!16167 (= mapRest!16164 (store mapRest!16167 mapKey!16167 mapValue!16167))))

(declare-fun condMapEmpty!16167 () Bool)

(declare-fun mapDefault!16167 () List!31243)

(assert (=> mapNonEmpty!16163 (= condMapEmpty!16167 (= mapRest!16164 ((as const (Array (_ BitVec 32) List!31243)) mapDefault!16167)))))

(declare-fun e!1700226 () Bool)

(assert (=> mapNonEmpty!16163 (= tp!853035 (and e!1700226 mapRes!16167))))

(declare-fun b!2696249 () Bool)

(declare-fun e!1700229 () Bool)

(declare-fun tp!853099 () Bool)

(assert (=> b!2696249 (= e!1700229 tp!853099)))

(declare-fun tp!853095 () Bool)

(declare-fun b!2696250 () Bool)

(declare-fun tp!853096 () Bool)

(declare-fun setRes!21252 () Bool)

(declare-fun e!1700230 () Bool)

(declare-fun inv!42205 (Context!4358) Bool)

(assert (=> b!2696250 (= e!1700226 (and tp!853096 (inv!42205 (_2!17992 (_1!17993 (h!36563 mapDefault!16167)))) e!1700230 tp_is_empty!13855 setRes!21252 tp!853095))))

(declare-fun condSetEmpty!21251 () Bool)

(assert (=> b!2696250 (= condSetEmpty!21251 (= (_2!17993 (h!36563 mapDefault!16167)) ((as const (Array Context!4358 Bool)) false)))))

(declare-fun b!2696251 () Bool)

(declare-fun e!1700228 () Bool)

(declare-fun tp!853094 () Bool)

(assert (=> b!2696251 (= e!1700228 tp!853094)))

(declare-fun tp!853091 () Bool)

(declare-fun setRes!21251 () Bool)

(declare-fun tp!853097 () Bool)

(declare-fun b!2696252 () Bool)

(assert (=> b!2696252 (= e!1700225 (and tp!853097 (inv!42205 (_2!17992 (_1!17993 (h!36563 mapValue!16167)))) e!1700228 tp_is_empty!13855 setRes!21251 tp!853091))))

(declare-fun condSetEmpty!21252 () Bool)

(assert (=> b!2696252 (= condSetEmpty!21252 (= (_2!17993 (h!36563 mapValue!16167)) ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setNonEmpty!21251 () Bool)

(declare-fun setElem!21251 () Context!4358)

(declare-fun tp!853098 () Bool)

(assert (=> setNonEmpty!21251 (= setRes!21252 (and tp!853098 (inv!42205 setElem!21251) e!1700229))))

(declare-fun setRest!21251 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21251 (= (_2!17993 (h!36563 mapDefault!16167)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21251 true) setRest!21251))))

(declare-fun b!2696253 () Bool)

(declare-fun tp!853090 () Bool)

(assert (=> b!2696253 (= e!1700230 tp!853090)))

(declare-fun setIsEmpty!21251 () Bool)

(assert (=> setIsEmpty!21251 setRes!21251))

(declare-fun b!2696254 () Bool)

(declare-fun e!1700227 () Bool)

(declare-fun tp!853093 () Bool)

(assert (=> b!2696254 (= e!1700227 tp!853093)))

(declare-fun setIsEmpty!21252 () Bool)

(assert (=> setIsEmpty!21252 setRes!21252))

(declare-fun setElem!21252 () Context!4358)

(declare-fun tp!853100 () Bool)

(declare-fun setNonEmpty!21252 () Bool)

(assert (=> setNonEmpty!21252 (= setRes!21251 (and tp!853100 (inv!42205 setElem!21252) e!1700227))))

(declare-fun setRest!21252 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21252 (= (_2!17993 (h!36563 mapValue!16167)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21252 true) setRest!21252))))

(declare-fun mapIsEmpty!16167 () Bool)

(assert (=> mapIsEmpty!16167 mapRes!16167))

(assert (= (and mapNonEmpty!16163 condMapEmpty!16167) mapIsEmpty!16167))

(assert (= (and mapNonEmpty!16163 (not condMapEmpty!16167)) mapNonEmpty!16167))

(assert (= b!2696252 b!2696251))

(assert (= (and b!2696252 condSetEmpty!21252) setIsEmpty!21251))

(assert (= (and b!2696252 (not condSetEmpty!21252)) setNonEmpty!21252))

(assert (= setNonEmpty!21252 b!2696254))

(assert (= (and mapNonEmpty!16167 ((_ is Cons!31143) mapValue!16167)) b!2696252))

(assert (= b!2696250 b!2696253))

(assert (= (and b!2696250 condSetEmpty!21251) setIsEmpty!21252))

(assert (= (and b!2696250 (not condSetEmpty!21251)) setNonEmpty!21251))

(assert (= setNonEmpty!21251 b!2696249))

(assert (= (and mapNonEmpty!16163 ((_ is Cons!31143) mapDefault!16167)) b!2696250))

(declare-fun m!3077381 () Bool)

(assert (=> setNonEmpty!21251 m!3077381))

(declare-fun m!3077383 () Bool)

(assert (=> mapNonEmpty!16167 m!3077383))

(declare-fun m!3077385 () Bool)

(assert (=> b!2696250 m!3077385))

(declare-fun m!3077387 () Bool)

(assert (=> setNonEmpty!21252 m!3077387))

(declare-fun m!3077389 () Bool)

(assert (=> b!2696252 m!3077389))

(declare-fun b!2696263 () Bool)

(declare-fun e!1700237 () Bool)

(declare-fun tp!853112 () Bool)

(assert (=> b!2696263 (= e!1700237 tp!853112)))

(declare-fun setIsEmpty!21255 () Bool)

(declare-fun setRes!21255 () Bool)

(assert (=> setIsEmpty!21255 setRes!21255))

(declare-fun e!1700239 () Bool)

(assert (=> mapNonEmpty!16163 (= tp!853029 e!1700239)))

(declare-fun setNonEmpty!21255 () Bool)

(declare-fun e!1700238 () Bool)

(declare-fun setElem!21255 () Context!4358)

(declare-fun tp!853114 () Bool)

(assert (=> setNonEmpty!21255 (= setRes!21255 (and tp!853114 (inv!42205 setElem!21255) e!1700238))))

(declare-fun setRest!21255 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21255 (= (_2!17993 (h!36563 mapValue!16163)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21255 true) setRest!21255))))

(declare-fun b!2696264 () Bool)

(declare-fun tp!853111 () Bool)

(assert (=> b!2696264 (= e!1700238 tp!853111)))

(declare-fun tp!853113 () Bool)

(declare-fun b!2696265 () Bool)

(declare-fun tp!853115 () Bool)

(assert (=> b!2696265 (= e!1700239 (and tp!853113 (inv!42205 (_2!17992 (_1!17993 (h!36563 mapValue!16163)))) e!1700237 tp_is_empty!13855 setRes!21255 tp!853115))))

(declare-fun condSetEmpty!21255 () Bool)

(assert (=> b!2696265 (= condSetEmpty!21255 (= (_2!17993 (h!36563 mapValue!16163)) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696265 b!2696263))

(assert (= (and b!2696265 condSetEmpty!21255) setIsEmpty!21255))

(assert (= (and b!2696265 (not condSetEmpty!21255)) setNonEmpty!21255))

(assert (= setNonEmpty!21255 b!2696264))

(assert (= (and mapNonEmpty!16163 ((_ is Cons!31143) mapValue!16163)) b!2696265))

(declare-fun m!3077391 () Bool)

(assert (=> setNonEmpty!21255 m!3077391))

(declare-fun m!3077393 () Bool)

(assert (=> b!2696265 m!3077393))

(declare-fun tp!853122 () Bool)

(declare-fun b!2696274 () Bool)

(declare-fun e!1700244 () Bool)

(declare-fun tp!853123 () Bool)

(assert (=> b!2696274 (= e!1700244 (and (inv!42197 (left!23982 (c!434615 acc!348))) tp!853122 (inv!42197 (right!24312 (c!434615 acc!348))) tp!853123))))

(declare-fun b!2696276 () Bool)

(declare-fun e!1700245 () Bool)

(declare-fun tp!853124 () Bool)

(assert (=> b!2696276 (= e!1700245 tp!853124)))

(declare-fun b!2696275 () Bool)

(declare-fun inv!42206 (IArray!19477) Bool)

(assert (=> b!2696275 (= e!1700244 (and (inv!42206 (xs!12776 (c!434615 acc!348))) e!1700245))))

(assert (=> b!2696093 (= tp!853024 (and (inv!42197 (c!434615 acc!348)) e!1700244))))

(assert (= (and b!2696093 ((_ is Node!9736) (c!434615 acc!348))) b!2696274))

(assert (= b!2696275 b!2696276))

(assert (= (and b!2696093 ((_ is Leaf!14857) (c!434615 acc!348))) b!2696275))

(declare-fun m!3077395 () Bool)

(assert (=> b!2696274 m!3077395))

(declare-fun m!3077397 () Bool)

(assert (=> b!2696274 m!3077397))

(declare-fun m!3077399 () Bool)

(assert (=> b!2696275 m!3077399))

(assert (=> b!2696093 m!3077175))

(declare-fun tp!853127 () Bool)

(declare-fun b!2696277 () Bool)

(declare-fun tp!853126 () Bool)

(declare-fun e!1700247 () Bool)

(assert (=> b!2696277 (= e!1700247 (and (inv!42198 (left!23981 (c!434614 totalInput!354))) tp!853126 (inv!42198 (right!24311 (c!434614 totalInput!354))) tp!853127))))

(declare-fun b!2696279 () Bool)

(declare-fun e!1700246 () Bool)

(declare-fun tp!853125 () Bool)

(assert (=> b!2696279 (= e!1700246 tp!853125)))

(declare-fun b!2696278 () Bool)

(assert (=> b!2696278 (= e!1700247 (and (inv!42204 (xs!12775 (c!434614 totalInput!354))) e!1700246))))

(assert (=> b!2696094 (= tp!853040 (and (inv!42198 (c!434614 totalInput!354)) e!1700247))))

(assert (= (and b!2696094 ((_ is Node!9735) (c!434614 totalInput!354))) b!2696277))

(assert (= b!2696278 b!2696279))

(assert (= (and b!2696094 ((_ is Leaf!14856) (c!434614 totalInput!354))) b!2696278))

(declare-fun m!3077401 () Bool)

(assert (=> b!2696277 m!3077401))

(declare-fun m!3077403 () Bool)

(assert (=> b!2696277 m!3077403))

(declare-fun m!3077405 () Bool)

(assert (=> b!2696278 m!3077405))

(assert (=> b!2696094 m!3077187))

(declare-fun b!2696280 () Bool)

(declare-fun e!1700248 () Bool)

(declare-fun tp!853129 () Bool)

(assert (=> b!2696280 (= e!1700248 tp!853129)))

(declare-fun setIsEmpty!21256 () Bool)

(declare-fun setRes!21256 () Bool)

(assert (=> setIsEmpty!21256 setRes!21256))

(declare-fun e!1700250 () Bool)

(assert (=> b!2696085 (= tp!853039 e!1700250)))

(declare-fun tp!853131 () Bool)

(declare-fun setNonEmpty!21256 () Bool)

(declare-fun e!1700249 () Bool)

(declare-fun setElem!21256 () Context!4358)

(assert (=> setNonEmpty!21256 (= setRes!21256 (and tp!853131 (inv!42205 setElem!21256) e!1700249))))

(declare-fun setRest!21256 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21256 (= (_2!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21256 true) setRest!21256))))

(declare-fun b!2696281 () Bool)

(declare-fun tp!853128 () Bool)

(assert (=> b!2696281 (= e!1700249 tp!853128)))

(declare-fun tp!853130 () Bool)

(declare-fun tp!853132 () Bool)

(declare-fun b!2696282 () Bool)

(assert (=> b!2696282 (= e!1700250 (and tp!853130 (inv!42205 (_2!17992 (_1!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))))) e!1700248 tp_is_empty!13855 setRes!21256 tp!853132))))

(declare-fun condSetEmpty!21256 () Bool)

(assert (=> b!2696282 (= condSetEmpty!21256 (= (_2!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696282 b!2696280))

(assert (= (and b!2696282 condSetEmpty!21256) setIsEmpty!21256))

(assert (= (and b!2696282 (not condSetEmpty!21256)) setNonEmpty!21256))

(assert (= setNonEmpty!21256 b!2696281))

(assert (= (and b!2696085 ((_ is Cons!31143) (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))) b!2696282))

(declare-fun m!3077407 () Bool)

(assert (=> setNonEmpty!21256 m!3077407))

(declare-fun m!3077409 () Bool)

(assert (=> b!2696282 m!3077409))

(declare-fun b!2696283 () Bool)

(declare-fun e!1700251 () Bool)

(declare-fun tp!853134 () Bool)

(assert (=> b!2696283 (= e!1700251 tp!853134)))

(declare-fun setIsEmpty!21257 () Bool)

(declare-fun setRes!21257 () Bool)

(assert (=> setIsEmpty!21257 setRes!21257))

(declare-fun e!1700253 () Bool)

(assert (=> b!2696085 (= tp!853031 e!1700253)))

(declare-fun e!1700252 () Bool)

(declare-fun setElem!21257 () Context!4358)

(declare-fun tp!853136 () Bool)

(declare-fun setNonEmpty!21257 () Bool)

(assert (=> setNonEmpty!21257 (= setRes!21257 (and tp!853136 (inv!42205 setElem!21257) e!1700252))))

(declare-fun setRest!21257 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21257 (= (_2!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21257 true) setRest!21257))))

(declare-fun b!2696284 () Bool)

(declare-fun tp!853133 () Bool)

(assert (=> b!2696284 (= e!1700252 tp!853133)))

(declare-fun tp!853135 () Bool)

(declare-fun b!2696285 () Bool)

(declare-fun tp!853137 () Bool)

(assert (=> b!2696285 (= e!1700253 (and tp!853135 (inv!42205 (_2!17992 (_1!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))))) e!1700251 tp_is_empty!13855 setRes!21257 tp!853137))))

(declare-fun condSetEmpty!21257 () Bool)

(assert (=> b!2696285 (= condSetEmpty!21257 (= (_2!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696285 b!2696283))

(assert (= (and b!2696285 condSetEmpty!21257) setIsEmpty!21257))

(assert (= (and b!2696285 (not condSetEmpty!21257)) setNonEmpty!21257))

(assert (= setNonEmpty!21257 b!2696284))

(assert (= (and b!2696085 ((_ is Cons!31143) (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))) b!2696285))

(declare-fun m!3077411 () Bool)

(assert (=> setNonEmpty!21257 m!3077411))

(declare-fun m!3077413 () Bool)

(assert (=> b!2696285 m!3077413))

(declare-fun b!2696300 () Bool)

(declare-fun e!1700268 () Bool)

(declare-fun tp!853160 () Bool)

(assert (=> b!2696300 (= e!1700268 tp!853160)))

(declare-fun mapIsEmpty!16170 () Bool)

(declare-fun mapRes!16170 () Bool)

(assert (=> mapIsEmpty!16170 mapRes!16170))

(declare-fun setIsEmpty!21262 () Bool)

(declare-fun setRes!21262 () Bool)

(assert (=> setIsEmpty!21262 setRes!21262))

(declare-fun b!2696301 () Bool)

(declare-fun e!1700269 () Bool)

(declare-fun tp!853157 () Bool)

(assert (=> b!2696301 (= e!1700269 tp!853157)))

(declare-fun setIsEmpty!21263 () Bool)

(declare-fun setRes!21263 () Bool)

(assert (=> setIsEmpty!21263 setRes!21263))

(declare-fun condMapEmpty!16170 () Bool)

(declare-fun mapDefault!16170 () List!31245)

(assert (=> mapNonEmpty!16164 (= condMapEmpty!16170 (= mapRest!16163 ((as const (Array (_ BitVec 32) List!31245)) mapDefault!16170)))))

(declare-fun e!1700270 () Bool)

(assert (=> mapNonEmpty!16164 (= tp!853030 (and e!1700270 mapRes!16170))))

(declare-fun mapNonEmpty!16170 () Bool)

(declare-fun tp!853159 () Bool)

(declare-fun e!1700266 () Bool)

(assert (=> mapNonEmpty!16170 (= mapRes!16170 (and tp!853159 e!1700266))))

(declare-fun mapRest!16170 () (Array (_ BitVec 32) List!31245))

(declare-fun mapValue!16170 () List!31245)

(declare-fun mapKey!16170 () (_ BitVec 32))

(assert (=> mapNonEmpty!16170 (= mapRest!16163 (store mapRest!16170 mapKey!16170 mapValue!16170))))

(declare-fun tp!853163 () Bool)

(declare-fun e!1700271 () Bool)

(declare-fun setNonEmpty!21262 () Bool)

(declare-fun setElem!21263 () Context!4358)

(assert (=> setNonEmpty!21262 (= setRes!21262 (and tp!853163 (inv!42205 setElem!21263) e!1700271))))

(declare-fun setRest!21263 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21262 (= (_2!17995 (h!36565 mapValue!16170)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21263 true) setRest!21263))))

(declare-fun b!2696302 () Bool)

(declare-fun tp!853156 () Bool)

(assert (=> b!2696302 (= e!1700271 tp!853156)))

(declare-fun b!2696303 () Bool)

(declare-fun e!1700267 () Bool)

(declare-fun tp!853162 () Bool)

(assert (=> b!2696303 (= e!1700267 tp!853162)))

(declare-fun setElem!21262 () Context!4358)

(declare-fun tp!853161 () Bool)

(declare-fun setNonEmpty!21263 () Bool)

(assert (=> setNonEmpty!21263 (= setRes!21263 (and tp!853161 (inv!42205 setElem!21262) e!1700269))))

(declare-fun setRest!21262 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21263 (= (_2!17995 (h!36565 mapDefault!16170)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21262 true) setRest!21262))))

(declare-fun b!2696304 () Bool)

(declare-fun tp!853164 () Bool)

(assert (=> b!2696304 (= e!1700266 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 mapValue!16170)))) e!1700267 tp_is_empty!13855 setRes!21262 tp!853164))))

(declare-fun condSetEmpty!21262 () Bool)

(assert (=> b!2696304 (= condSetEmpty!21262 (= (_2!17995 (h!36565 mapValue!16170)) ((as const (Array Context!4358 Bool)) false)))))

(declare-fun tp!853158 () Bool)

(declare-fun b!2696305 () Bool)

(assert (=> b!2696305 (= e!1700270 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 mapDefault!16170)))) e!1700268 tp_is_empty!13855 setRes!21263 tp!853158))))

(declare-fun condSetEmpty!21263 () Bool)

(assert (=> b!2696305 (= condSetEmpty!21263 (= (_2!17995 (h!36565 mapDefault!16170)) ((as const (Array Context!4358 Bool)) false)))))

(assert (= (and mapNonEmpty!16164 condMapEmpty!16170) mapIsEmpty!16170))

(assert (= (and mapNonEmpty!16164 (not condMapEmpty!16170)) mapNonEmpty!16170))

(assert (= b!2696304 b!2696303))

(assert (= (and b!2696304 condSetEmpty!21262) setIsEmpty!21262))

(assert (= (and b!2696304 (not condSetEmpty!21262)) setNonEmpty!21262))

(assert (= setNonEmpty!21262 b!2696302))

(assert (= (and mapNonEmpty!16170 ((_ is Cons!31145) mapValue!16170)) b!2696304))

(assert (= b!2696305 b!2696300))

(assert (= (and b!2696305 condSetEmpty!21263) setIsEmpty!21263))

(assert (= (and b!2696305 (not condSetEmpty!21263)) setNonEmpty!21263))

(assert (= setNonEmpty!21263 b!2696301))

(assert (= (and mapNonEmpty!16164 ((_ is Cons!31145) mapDefault!16170)) b!2696305))

(declare-fun m!3077415 () Bool)

(assert (=> b!2696305 m!3077415))

(declare-fun m!3077417 () Bool)

(assert (=> mapNonEmpty!16170 m!3077417))

(declare-fun m!3077419 () Bool)

(assert (=> b!2696304 m!3077419))

(declare-fun m!3077421 () Bool)

(assert (=> setNonEmpty!21262 m!3077421))

(declare-fun m!3077423 () Bool)

(assert (=> setNonEmpty!21263 m!3077423))

(declare-fun b!2696314 () Bool)

(declare-fun e!1700280 () Bool)

(declare-fun tp!853175 () Bool)

(assert (=> b!2696314 (= e!1700280 tp!853175)))

(declare-fun setElem!21266 () Context!4358)

(declare-fun setNonEmpty!21266 () Bool)

(declare-fun setRes!21266 () Bool)

(declare-fun e!1700279 () Bool)

(declare-fun tp!853174 () Bool)

(assert (=> setNonEmpty!21266 (= setRes!21266 (and tp!853174 (inv!42205 setElem!21266) e!1700279))))

(declare-fun setRest!21266 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21266 (= (_2!17995 (h!36565 mapValue!16164)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21266 true) setRest!21266))))

(declare-fun b!2696315 () Bool)

(declare-fun e!1700278 () Bool)

(declare-fun tp!853176 () Bool)

(assert (=> b!2696315 (= e!1700278 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 mapValue!16164)))) e!1700280 tp_is_empty!13855 setRes!21266 tp!853176))))

(declare-fun condSetEmpty!21266 () Bool)

(assert (=> b!2696315 (= condSetEmpty!21266 (= (_2!17995 (h!36565 mapValue!16164)) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> mapNonEmpty!16164 (= tp!853027 e!1700278)))

(declare-fun b!2696316 () Bool)

(declare-fun tp!853173 () Bool)

(assert (=> b!2696316 (= e!1700279 tp!853173)))

(declare-fun setIsEmpty!21266 () Bool)

(assert (=> setIsEmpty!21266 setRes!21266))

(assert (= b!2696315 b!2696314))

(assert (= (and b!2696315 condSetEmpty!21266) setIsEmpty!21266))

(assert (= (and b!2696315 (not condSetEmpty!21266)) setNonEmpty!21266))

(assert (= setNonEmpty!21266 b!2696316))

(assert (= (and mapNonEmpty!16164 ((_ is Cons!31145) mapValue!16164)) b!2696315))

(declare-fun m!3077425 () Bool)

(assert (=> setNonEmpty!21266 m!3077425))

(declare-fun m!3077427 () Bool)

(assert (=> b!2696315 m!3077427))

(declare-fun tp!853179 () Bool)

(declare-fun b!2696317 () Bool)

(declare-fun e!1700282 () Bool)

(declare-fun tp!853178 () Bool)

(assert (=> b!2696317 (= e!1700282 (and (inv!42198 (left!23981 (c!434614 input!780))) tp!853178 (inv!42198 (right!24311 (c!434614 input!780))) tp!853179))))

(declare-fun b!2696319 () Bool)

(declare-fun e!1700281 () Bool)

(declare-fun tp!853177 () Bool)

(assert (=> b!2696319 (= e!1700281 tp!853177)))

(declare-fun b!2696318 () Bool)

(assert (=> b!2696318 (= e!1700282 (and (inv!42204 (xs!12775 (c!434614 input!780))) e!1700281))))

(assert (=> b!2696095 (= tp!853026 (and (inv!42198 (c!434614 input!780)) e!1700282))))

(assert (= (and b!2696095 ((_ is Node!9735) (c!434614 input!780))) b!2696317))

(assert (= b!2696318 b!2696319))

(assert (= (and b!2696095 ((_ is Leaf!14856) (c!434614 input!780))) b!2696318))

(declare-fun m!3077429 () Bool)

(assert (=> b!2696317 m!3077429))

(declare-fun m!3077431 () Bool)

(assert (=> b!2696317 m!3077431))

(declare-fun m!3077433 () Bool)

(assert (=> b!2696318 m!3077433))

(assert (=> b!2696095 m!3077171))

(declare-fun b!2696330 () Bool)

(declare-fun b_free!76213 () Bool)

(declare-fun b_next!76917 () Bool)

(assert (=> b!2696330 (= b_free!76213 (not b_next!76917))))

(declare-fun tp!853188 () Bool)

(declare-fun b_and!199343 () Bool)

(assert (=> b!2696330 (= tp!853188 b_and!199343)))

(declare-fun b_free!76215 () Bool)

(declare-fun b_next!76919 () Bool)

(assert (=> b!2696330 (= b_free!76215 (not b_next!76919))))

(declare-fun tp!853190 () Bool)

(declare-fun b_and!199345 () Bool)

(assert (=> b!2696330 (= tp!853190 b_and!199345)))

(declare-fun e!1700293 () Bool)

(assert (=> b!2696330 (= e!1700293 (and tp!853188 tp!853190))))

(declare-fun tp!853191 () Bool)

(declare-fun b!2696329 () Bool)

(declare-fun e!1700292 () Bool)

(assert (=> b!2696329 (= e!1700292 (and tp!853191 (inv!42190 (tag!5257 (h!36568 (t!225255 rules!1381)))) (inv!42199 (transformation!4753 (h!36568 (t!225255 rules!1381)))) e!1700293))))

(declare-fun b!2696328 () Bool)

(declare-fun e!1700294 () Bool)

(declare-fun tp!853189 () Bool)

(assert (=> b!2696328 (= e!1700294 (and e!1700292 tp!853189))))

(assert (=> b!2696096 (= tp!853023 e!1700294)))

(assert (= b!2696329 b!2696330))

(assert (= b!2696328 b!2696329))

(assert (= (and b!2696096 ((_ is Cons!31148) (t!225255 rules!1381))) b!2696328))

(declare-fun m!3077435 () Bool)

(assert (=> b!2696329 m!3077435))

(declare-fun m!3077437 () Bool)

(assert (=> b!2696329 m!3077437))

(declare-fun b!2696331 () Bool)

(declare-fun e!1700297 () Bool)

(declare-fun tp!853194 () Bool)

(assert (=> b!2696331 (= e!1700297 tp!853194)))

(declare-fun e!1700296 () Bool)

(declare-fun tp!853193 () Bool)

(declare-fun setRes!21267 () Bool)

(declare-fun setElem!21267 () Context!4358)

(declare-fun setNonEmpty!21267 () Bool)

(assert (=> setNonEmpty!21267 (= setRes!21267 (and tp!853193 (inv!42205 setElem!21267) e!1700296))))

(declare-fun setRest!21267 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21267 (= (_2!17995 (h!36565 mapDefault!16164)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21267 true) setRest!21267))))

(declare-fun b!2696332 () Bool)

(declare-fun e!1700295 () Bool)

(declare-fun tp!853195 () Bool)

(assert (=> b!2696332 (= e!1700295 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 mapDefault!16164)))) e!1700297 tp_is_empty!13855 setRes!21267 tp!853195))))

(declare-fun condSetEmpty!21267 () Bool)

(assert (=> b!2696332 (= condSetEmpty!21267 (= (_2!17995 (h!36565 mapDefault!16164)) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> b!2696086 (= tp!853037 e!1700295)))

(declare-fun b!2696333 () Bool)

(declare-fun tp!853192 () Bool)

(assert (=> b!2696333 (= e!1700296 tp!853192)))

(declare-fun setIsEmpty!21267 () Bool)

(assert (=> setIsEmpty!21267 setRes!21267))

(assert (= b!2696332 b!2696331))

(assert (= (and b!2696332 condSetEmpty!21267) setIsEmpty!21267))

(assert (= (and b!2696332 (not condSetEmpty!21267)) setNonEmpty!21267))

(assert (= setNonEmpty!21267 b!2696333))

(assert (= (and b!2696086 ((_ is Cons!31145) mapDefault!16164)) b!2696332))

(declare-fun m!3077439 () Bool)

(assert (=> setNonEmpty!21267 m!3077439))

(declare-fun m!3077441 () Bool)

(assert (=> b!2696332 m!3077441))

(declare-fun b!2696334 () Bool)

(declare-fun e!1700298 () Bool)

(declare-fun tp!853197 () Bool)

(assert (=> b!2696334 (= e!1700298 tp!853197)))

(declare-fun setIsEmpty!21268 () Bool)

(declare-fun setRes!21268 () Bool)

(assert (=> setIsEmpty!21268 setRes!21268))

(declare-fun e!1700300 () Bool)

(assert (=> b!2696105 (= tp!853036 e!1700300)))

(declare-fun setNonEmpty!21268 () Bool)

(declare-fun tp!853199 () Bool)

(declare-fun e!1700299 () Bool)

(declare-fun setElem!21268 () Context!4358)

(assert (=> setNonEmpty!21268 (= setRes!21268 (and tp!853199 (inv!42205 setElem!21268) e!1700299))))

(declare-fun setRest!21268 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21268 (= (_2!17993 (h!36563 mapDefault!16163)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21268 true) setRest!21268))))

(declare-fun b!2696335 () Bool)

(declare-fun tp!853196 () Bool)

(assert (=> b!2696335 (= e!1700299 tp!853196)))

(declare-fun tp!853200 () Bool)

(declare-fun tp!853198 () Bool)

(declare-fun b!2696336 () Bool)

(assert (=> b!2696336 (= e!1700300 (and tp!853198 (inv!42205 (_2!17992 (_1!17993 (h!36563 mapDefault!16163)))) e!1700298 tp_is_empty!13855 setRes!21268 tp!853200))))

(declare-fun condSetEmpty!21268 () Bool)

(assert (=> b!2696336 (= condSetEmpty!21268 (= (_2!17993 (h!36563 mapDefault!16163)) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696336 b!2696334))

(assert (= (and b!2696336 condSetEmpty!21268) setIsEmpty!21268))

(assert (= (and b!2696336 (not condSetEmpty!21268)) setNonEmpty!21268))

(assert (= setNonEmpty!21268 b!2696335))

(assert (= (and b!2696105 ((_ is Cons!31143) mapDefault!16163)) b!2696336))

(declare-fun m!3077443 () Bool)

(assert (=> setNonEmpty!21268 m!3077443))

(declare-fun m!3077445 () Bool)

(assert (=> b!2696336 m!3077445))

(declare-fun b!2696337 () Bool)

(declare-fun e!1700303 () Bool)

(declare-fun tp!853203 () Bool)

(assert (=> b!2696337 (= e!1700303 tp!853203)))

(declare-fun setNonEmpty!21269 () Bool)

(declare-fun setRes!21269 () Bool)

(declare-fun e!1700302 () Bool)

(declare-fun setElem!21269 () Context!4358)

(declare-fun tp!853202 () Bool)

(assert (=> setNonEmpty!21269 (= setRes!21269 (and tp!853202 (inv!42205 setElem!21269) e!1700302))))

(declare-fun setRest!21269 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21269 (= (_2!17995 (h!36565 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21269 true) setRest!21269))))

(declare-fun e!1700301 () Bool)

(declare-fun b!2696338 () Bool)

(declare-fun tp!853204 () Bool)

(assert (=> b!2696338 (= e!1700301 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))))) e!1700303 tp_is_empty!13855 setRes!21269 tp!853204))))

(declare-fun condSetEmpty!21269 () Bool)

(assert (=> b!2696338 (= condSetEmpty!21269 (= (_2!17995 (h!36565 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> b!2696097 (= tp!853042 e!1700301)))

(declare-fun b!2696339 () Bool)

(declare-fun tp!853201 () Bool)

(assert (=> b!2696339 (= e!1700302 tp!853201)))

(declare-fun setIsEmpty!21269 () Bool)

(assert (=> setIsEmpty!21269 setRes!21269))

(assert (= b!2696338 b!2696337))

(assert (= (and b!2696338 condSetEmpty!21269) setIsEmpty!21269))

(assert (= (and b!2696338 (not condSetEmpty!21269)) setNonEmpty!21269))

(assert (= setNonEmpty!21269 b!2696339))

(assert (= (and b!2696097 ((_ is Cons!31145) (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))) b!2696338))

(declare-fun m!3077447 () Bool)

(assert (=> setNonEmpty!21269 m!3077447))

(declare-fun m!3077449 () Bool)

(assert (=> b!2696338 m!3077449))

(declare-fun b!2696340 () Bool)

(declare-fun e!1700306 () Bool)

(declare-fun tp!853207 () Bool)

(assert (=> b!2696340 (= e!1700306 tp!853207)))

(declare-fun setRes!21270 () Bool)

(declare-fun setElem!21270 () Context!4358)

(declare-fun tp!853206 () Bool)

(declare-fun e!1700305 () Bool)

(declare-fun setNonEmpty!21270 () Bool)

(assert (=> setNonEmpty!21270 (= setRes!21270 (and tp!853206 (inv!42205 setElem!21270) e!1700305))))

(declare-fun setRest!21270 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21270 (= (_2!17995 (h!36565 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21270 true) setRest!21270))))

(declare-fun tp!853208 () Bool)

(declare-fun e!1700304 () Bool)

(declare-fun b!2696341 () Bool)

(assert (=> b!2696341 (= e!1700304 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))))) e!1700306 tp_is_empty!13855 setRes!21270 tp!853208))))

(declare-fun condSetEmpty!21270 () Bool)

(assert (=> b!2696341 (= condSetEmpty!21270 (= (_2!17995 (h!36565 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> b!2696097 (= tp!853041 e!1700304)))

(declare-fun b!2696342 () Bool)

(declare-fun tp!853205 () Bool)

(assert (=> b!2696342 (= e!1700305 tp!853205)))

(declare-fun setIsEmpty!21270 () Bool)

(assert (=> setIsEmpty!21270 setRes!21270))

(assert (= b!2696341 b!2696340))

(assert (= (and b!2696341 condSetEmpty!21270) setIsEmpty!21270))

(assert (= (and b!2696341 (not condSetEmpty!21270)) setNonEmpty!21270))

(assert (= setNonEmpty!21270 b!2696342))

(assert (= (and b!2696097 ((_ is Cons!31145) (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))) b!2696341))

(declare-fun m!3077451 () Bool)

(assert (=> setNonEmpty!21270 m!3077451))

(declare-fun m!3077453 () Bool)

(assert (=> b!2696341 m!3077453))

(check-sat (not b!2696284) (not b!2696094) (not b!2696316) (not b!2696166) (not b!2696340) (not b!2696179) (not b!2696282) (not mapNonEmpty!16167) (not b!2696332) (not b!2696249) (not d!772613) (not b!2696219) (not b!2696147) (not b!2696123) (not d!772629) (not b!2696305) (not b!2696285) (not b_next!76911) (not b!2696129) (not d!772627) (not b!2696265) (not b!2696278) (not b!2696253) (not b!2696342) (not mapNonEmpty!16170) (not b!2696233) (not b!2696234) b_and!199331 (not b_next!76909) (not b!2696153) b_and!199339 (not b!2696329) (not b!2696319) (not d!772623) (not setNonEmpty!21257) (not b!2696204) (not d!772617) (not b!2696301) (not b!2696274) (not d!772639) (not b!2696098) (not b!2696277) (not b!2696173) (not b_next!76905) (not d!772605) (not b!2696126) (not b!2696093) (not setNonEmpty!21266) (not b!2696203) (not b!2696279) (not d!772645) (not setNonEmpty!21256) (not d!772597) (not b!2696095) (not b!2696275) (not d!772631) (not b!2696169) (not b!2696192) b_and!199343 (not b!2696174) (not setNonEmpty!21270) (not b!2696315) (not d!772637) (not setNonEmpty!21267) (not b!2696281) (not b!2696157) (not b!2696168) (not b!2696182) (not setNonEmpty!21251) (not b!2696336) (not b!2696335) (not b!2696175) (not b!2696193) (not b_next!76907) (not setNonEmpty!21263) b_and!199337 (not b!2696121) tp_is_empty!13855 (not setNonEmpty!21252) (not b!2696263) (not b_next!76917) (not b!2696146) (not b!2696176) (not b!2696207) (not b!2696338) (not b!2696156) (not b_next!76915) (not b!2696341) (not b!2696318) (not b!2696333) (not d!772615) (not b!2696328) (not setNonEmpty!21255) (not b!2696149) (not setNonEmpty!21269) (not d!772619) (not b!2696206) (not b!2696303) b_and!199335 (not b!2696252) (not d!772621) (not b!2696154) (not b!2696148) b_and!199345 (not b!2696151) (not b!2696220) (not b!2696283) (not b!2696300) (not d!772625) (not b!2696232) (not d!772607) (not d!772611) (not setNonEmpty!21268) (not b!2696314) (not b!2696144) b_and!199333 (not b!2696280) (not b!2696251) (not d!772663) (not b!2696218) (not d!772599) (not b!2696337) (not d!772649) (not d!772603) b_and!199341 (not b!2696331) (not b_next!76913) (not b!2696250) (not b!2696155) (not b!2696172) (not d!772643) (not b!2696302) (not b!2696334) (not b!2696167) (not b!2696304) (not b_next!76919) (not b!2696317) (not b!2696209) (not b!2696201) (not b!2696264) (not b!2696150) (not b!2696254) (not b!2696276) (not d!772647) (not b!2696339) (not d!772651) (not setNonEmpty!21262) (not b!2696170))
(check-sat (not b_next!76911) b_and!199331 (not b_next!76909) b_and!199339 (not b_next!76905) b_and!199343 (not b_next!76915) b_and!199335 b_and!199345 b_and!199333 (not b_next!76919) (not b_next!76907) b_and!199337 (not b_next!76917) b_and!199341 (not b_next!76913))
(get-model)

(declare-fun d!772669 () Bool)

(declare-fun lambda!100288 () Int)

(declare-fun forall!6544 (List!31242 Int) Bool)

(assert (=> d!772669 (= (inv!42205 setElem!21267) (forall!6544 (exprs!2679 setElem!21267) lambda!100288))))

(declare-fun bs!483880 () Bool)

(assert (= bs!483880 d!772669))

(declare-fun m!3077455 () Bool)

(assert (=> bs!483880 m!3077455))

(assert (=> setNonEmpty!21267 d!772669))

(declare-fun d!772671 () Bool)

(assert (=> d!772671 true))

(declare-fun order!17061 () Int)

(declare-fun order!17063 () Int)

(declare-fun lambda!100291 () Int)

(declare-fun dynLambda!13449 (Int Int) Int)

(declare-fun dynLambda!13450 (Int Int) Int)

(assert (=> d!772671 (< (dynLambda!13449 order!17061 (toChars!6570 (transformation!4753 (h!36568 rules!1381)))) (dynLambda!13450 order!17063 lambda!100291))))

(assert (=> d!772671 true))

(declare-fun order!17065 () Int)

(declare-fun dynLambda!13451 (Int Int) Int)

(assert (=> d!772671 (< (dynLambda!13451 order!17065 (toValue!6711 (transformation!4753 (h!36568 rules!1381)))) (dynLambda!13450 order!17063 lambda!100291))))

(declare-fun Forall!1201 (Int) Bool)

(assert (=> d!772671 (= (semiInverseModEq!1963 (toChars!6570 (transformation!4753 (h!36568 rules!1381))) (toValue!6711 (transformation!4753 (h!36568 rules!1381)))) (Forall!1201 lambda!100291))))

(declare-fun bs!483881 () Bool)

(assert (= bs!483881 d!772671))

(declare-fun m!3077457 () Bool)

(assert (=> bs!483881 m!3077457))

(assert (=> d!772611 d!772671))

(declare-fun d!772673 () Bool)

(declare-fun c!434645 () Bool)

(assert (=> d!772673 (= c!434645 ((_ is Empty!9735) (c!434614 treated!26)))))

(declare-fun e!1700311 () List!31244)

(assert (=> d!772673 (= (list!11749 (c!434614 treated!26)) e!1700311)))

(declare-fun b!2696357 () Bool)

(declare-fun e!1700312 () List!31244)

(declare-fun list!11751 (IArray!19475) List!31244)

(assert (=> b!2696357 (= e!1700312 (list!11751 (xs!12775 (c!434614 treated!26))))))

(declare-fun b!2696355 () Bool)

(assert (=> b!2696355 (= e!1700311 Nil!31144)))

(declare-fun b!2696358 () Bool)

(assert (=> b!2696358 (= e!1700312 (++!7645 (list!11749 (left!23981 (c!434614 treated!26))) (list!11749 (right!24311 (c!434614 treated!26)))))))

(declare-fun b!2696356 () Bool)

(assert (=> b!2696356 (= e!1700311 e!1700312)))

(declare-fun c!434646 () Bool)

(assert (=> b!2696356 (= c!434646 ((_ is Leaf!14856) (c!434614 treated!26)))))

(assert (= (and d!772673 c!434645) b!2696355))

(assert (= (and d!772673 (not c!434645)) b!2696356))

(assert (= (and b!2696356 c!434646) b!2696357))

(assert (= (and b!2696356 (not c!434646)) b!2696358))

(declare-fun m!3077459 () Bool)

(assert (=> b!2696357 m!3077459))

(declare-fun m!3077461 () Bool)

(assert (=> b!2696358 m!3077461))

(declare-fun m!3077463 () Bool)

(assert (=> b!2696358 m!3077463))

(assert (=> b!2696358 m!3077461))

(assert (=> b!2696358 m!3077463))

(declare-fun m!3077465 () Bool)

(assert (=> b!2696358 m!3077465))

(assert (=> d!772649 d!772673))

(declare-fun d!772675 () Bool)

(declare-fun lt!952583 () Int)

(assert (=> d!772675 (>= lt!952583 0)))

(declare-fun e!1700315 () Int)

(assert (=> d!772675 (= lt!952583 e!1700315)))

(declare-fun c!434649 () Bool)

(assert (=> d!772675 (= c!434649 ((_ is Nil!31144) (list!11747 input!780)))))

(assert (=> d!772675 (= (size!24053 (list!11747 input!780)) lt!952583)))

(declare-fun b!2696363 () Bool)

(assert (=> b!2696363 (= e!1700315 0)))

(declare-fun b!2696364 () Bool)

(assert (=> b!2696364 (= e!1700315 (+ 1 (size!24053 (t!225251 (list!11747 input!780)))))))

(assert (= (and d!772675 c!434649) b!2696363))

(assert (= (and d!772675 (not c!434649)) b!2696364))

(declare-fun m!3077467 () Bool)

(assert (=> b!2696364 m!3077467))

(assert (=> d!772663 d!772675))

(assert (=> d!772663 d!772651))

(declare-fun d!772677 () Bool)

(declare-fun lt!952586 () Int)

(assert (=> d!772677 (= lt!952586 (size!24053 (list!11749 (c!434614 input!780))))))

(assert (=> d!772677 (= lt!952586 (ite ((_ is Empty!9735) (c!434614 input!780)) 0 (ite ((_ is Leaf!14856) (c!434614 input!780)) (csize!19701 (c!434614 input!780)) (csize!19700 (c!434614 input!780)))))))

(assert (=> d!772677 (= (size!24054 (c!434614 input!780)) lt!952586)))

(declare-fun bs!483882 () Bool)

(assert (= bs!483882 d!772677))

(assert (=> bs!483882 m!3077359))

(assert (=> bs!483882 m!3077359))

(declare-fun m!3077469 () Bool)

(assert (=> bs!483882 m!3077469))

(assert (=> d!772663 d!772677))

(declare-fun bs!483883 () Bool)

(declare-fun d!772679 () Bool)

(assert (= bs!483883 (and d!772679 d!772669)))

(declare-fun lambda!100292 () Int)

(assert (=> bs!483883 (= lambda!100292 lambda!100288)))

(assert (=> d!772679 (= (inv!42205 setElem!21263) (forall!6544 (exprs!2679 setElem!21263) lambda!100292))))

(declare-fun bs!483884 () Bool)

(assert (= bs!483884 d!772679))

(declare-fun m!3077471 () Bool)

(assert (=> bs!483884 m!3077471))

(assert (=> setNonEmpty!21262 d!772679))

(declare-fun d!772681 () Bool)

(declare-fun res!1132677 () Bool)

(declare-fun e!1700318 () Bool)

(assert (=> d!772681 (=> (not res!1132677) (not e!1700318))))

(declare-fun size!24055 (List!31247) Int)

(declare-fun list!11752 (IArray!19477) List!31247)

(assert (=> d!772681 (= res!1132677 (<= (size!24055 (list!11752 (xs!12776 (c!434615 acc!348)))) 512))))

(assert (=> d!772681 (= (inv!42203 (c!434615 acc!348)) e!1700318)))

(declare-fun b!2696369 () Bool)

(declare-fun res!1132678 () Bool)

(assert (=> b!2696369 (=> (not res!1132678) (not e!1700318))))

(assert (=> b!2696369 (= res!1132678 (= (csize!19703 (c!434615 acc!348)) (size!24055 (list!11752 (xs!12776 (c!434615 acc!348))))))))

(declare-fun b!2696370 () Bool)

(assert (=> b!2696370 (= e!1700318 (and (> (csize!19703 (c!434615 acc!348)) 0) (<= (csize!19703 (c!434615 acc!348)) 512)))))

(assert (= (and d!772681 res!1132677) b!2696369))

(assert (= (and b!2696369 res!1132678) b!2696370))

(declare-fun m!3077473 () Bool)

(assert (=> d!772681 m!3077473))

(assert (=> d!772681 m!3077473))

(declare-fun m!3077475 () Bool)

(assert (=> d!772681 m!3077475))

(assert (=> b!2696369 m!3077473))

(assert (=> b!2696369 m!3077473))

(assert (=> b!2696369 m!3077475))

(assert (=> b!2696203 d!772681))

(declare-fun d!772683 () Bool)

(declare-fun c!434652 () Bool)

(assert (=> d!772683 (= c!434652 ((_ is Nil!31144) lt!952577))))

(declare-fun e!1700321 () (InoxSet C!15968))

(assert (=> d!772683 (= (content!4408 lt!952577) e!1700321)))

(declare-fun b!2696375 () Bool)

(assert (=> b!2696375 (= e!1700321 ((as const (Array C!15968 Bool)) false))))

(declare-fun b!2696376 () Bool)

(assert (=> b!2696376 (= e!1700321 ((_ map or) (store ((as const (Array C!15968 Bool)) false) (h!36564 lt!952577) true) (content!4408 (t!225251 lt!952577))))))

(assert (= (and d!772683 c!434652) b!2696375))

(assert (= (and d!772683 (not c!434652)) b!2696376))

(declare-fun m!3077477 () Bool)

(assert (=> b!2696376 m!3077477))

(declare-fun m!3077479 () Bool)

(assert (=> b!2696376 m!3077479))

(assert (=> d!772647 d!772683))

(declare-fun d!772685 () Bool)

(declare-fun c!434653 () Bool)

(assert (=> d!772685 (= c!434653 ((_ is Nil!31144) (list!11747 treated!26)))))

(declare-fun e!1700322 () (InoxSet C!15968))

(assert (=> d!772685 (= (content!4408 (list!11747 treated!26)) e!1700322)))

(declare-fun b!2696377 () Bool)

(assert (=> b!2696377 (= e!1700322 ((as const (Array C!15968 Bool)) false))))

(declare-fun b!2696378 () Bool)

(assert (=> b!2696378 (= e!1700322 ((_ map or) (store ((as const (Array C!15968 Bool)) false) (h!36564 (list!11747 treated!26)) true) (content!4408 (t!225251 (list!11747 treated!26)))))))

(assert (= (and d!772685 c!434653) b!2696377))

(assert (= (and d!772685 (not c!434653)) b!2696378))

(declare-fun m!3077481 () Bool)

(assert (=> b!2696378 m!3077481))

(declare-fun m!3077483 () Bool)

(assert (=> b!2696378 m!3077483))

(assert (=> d!772647 d!772685))

(declare-fun d!772687 () Bool)

(declare-fun c!434654 () Bool)

(assert (=> d!772687 (= c!434654 ((_ is Nil!31144) (list!11747 input!780)))))

(declare-fun e!1700323 () (InoxSet C!15968))

(assert (=> d!772687 (= (content!4408 (list!11747 input!780)) e!1700323)))

(declare-fun b!2696379 () Bool)

(assert (=> b!2696379 (= e!1700323 ((as const (Array C!15968 Bool)) false))))

(declare-fun b!2696380 () Bool)

(assert (=> b!2696380 (= e!1700323 ((_ map or) (store ((as const (Array C!15968 Bool)) false) (h!36564 (list!11747 input!780)) true) (content!4408 (t!225251 (list!11747 input!780)))))))

(assert (= (and d!772687 c!434654) b!2696379))

(assert (= (and d!772687 (not c!434654)) b!2696380))

(declare-fun m!3077485 () Bool)

(assert (=> b!2696380 m!3077485))

(declare-fun m!3077487 () Bool)

(assert (=> b!2696380 m!3077487))

(assert (=> d!772647 d!772687))

(declare-fun bs!483885 () Bool)

(declare-fun d!772689 () Bool)

(assert (= bs!483885 (and d!772689 d!772669)))

(declare-fun lambda!100293 () Int)

(assert (=> bs!483885 (= lambda!100293 lambda!100288)))

(declare-fun bs!483886 () Bool)

(assert (= bs!483886 (and d!772689 d!772679)))

(assert (=> bs!483886 (= lambda!100293 lambda!100292)))

(assert (=> d!772689 (= (inv!42205 (_1!17994 (_1!17995 (h!36565 mapValue!16164)))) (forall!6544 (exprs!2679 (_1!17994 (_1!17995 (h!36565 mapValue!16164)))) lambda!100293))))

(declare-fun bs!483887 () Bool)

(assert (= bs!483887 d!772689))

(declare-fun m!3077489 () Bool)

(assert (=> bs!483887 m!3077489))

(assert (=> b!2696315 d!772689))

(declare-fun bs!483888 () Bool)

(declare-fun d!772691 () Bool)

(assert (= bs!483888 (and d!772691 d!772669)))

(declare-fun lambda!100294 () Int)

(assert (=> bs!483888 (= lambda!100294 lambda!100288)))

(declare-fun bs!483889 () Bool)

(assert (= bs!483889 (and d!772691 d!772679)))

(assert (=> bs!483889 (= lambda!100294 lambda!100292)))

(declare-fun bs!483890 () Bool)

(assert (= bs!483890 (and d!772691 d!772689)))

(assert (=> bs!483890 (= lambda!100294 lambda!100293)))

(assert (=> d!772691 (= (inv!42205 (_1!17994 (_1!17995 (h!36565 mapValue!16170)))) (forall!6544 (exprs!2679 (_1!17994 (_1!17995 (h!36565 mapValue!16170)))) lambda!100294))))

(declare-fun bs!483891 () Bool)

(assert (= bs!483891 d!772691))

(declare-fun m!3077491 () Bool)

(assert (=> bs!483891 m!3077491))

(assert (=> b!2696304 d!772691))

(declare-fun bs!483892 () Bool)

(declare-fun d!772693 () Bool)

(assert (= bs!483892 (and d!772693 d!772669)))

(declare-fun lambda!100295 () Int)

(assert (=> bs!483892 (= lambda!100295 lambda!100288)))

(declare-fun bs!483893 () Bool)

(assert (= bs!483893 (and d!772693 d!772679)))

(assert (=> bs!483893 (= lambda!100295 lambda!100292)))

(declare-fun bs!483894 () Bool)

(assert (= bs!483894 (and d!772693 d!772689)))

(assert (=> bs!483894 (= lambda!100295 lambda!100293)))

(declare-fun bs!483895 () Bool)

(assert (= bs!483895 (and d!772693 d!772691)))

(assert (=> bs!483895 (= lambda!100295 lambda!100294)))

(assert (=> d!772693 (= (inv!42205 (_2!17992 (_1!17993 (h!36563 mapValue!16167)))) (forall!6544 (exprs!2679 (_2!17992 (_1!17993 (h!36563 mapValue!16167)))) lambda!100295))))

(declare-fun bs!483896 () Bool)

(assert (= bs!483896 d!772693))

(declare-fun m!3077493 () Bool)

(assert (=> bs!483896 m!3077493))

(assert (=> b!2696252 d!772693))

(declare-fun bs!483897 () Bool)

(declare-fun d!772695 () Bool)

(assert (= bs!483897 (and d!772695 d!772691)))

(declare-fun lambda!100296 () Int)

(assert (=> bs!483897 (= lambda!100296 lambda!100294)))

(declare-fun bs!483898 () Bool)

(assert (= bs!483898 (and d!772695 d!772669)))

(assert (=> bs!483898 (= lambda!100296 lambda!100288)))

(declare-fun bs!483899 () Bool)

(assert (= bs!483899 (and d!772695 d!772689)))

(assert (=> bs!483899 (= lambda!100296 lambda!100293)))

(declare-fun bs!483900 () Bool)

(assert (= bs!483900 (and d!772695 d!772679)))

(assert (=> bs!483900 (= lambda!100296 lambda!100292)))

(declare-fun bs!483901 () Bool)

(assert (= bs!483901 (and d!772695 d!772693)))

(assert (=> bs!483901 (= lambda!100296 lambda!100295)))

(assert (=> d!772695 (= (inv!42205 (_1!17994 (_1!17995 (h!36565 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))))) (forall!6544 (exprs!2679 (_1!17994 (_1!17995 (h!36565 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))))) lambda!100296))))

(declare-fun bs!483902 () Bool)

(assert (= bs!483902 d!772695))

(declare-fun m!3077495 () Bool)

(assert (=> bs!483902 m!3077495))

(assert (=> b!2696338 d!772695))

(declare-fun d!772697 () Bool)

(assert (=> d!772697 (= (inv!42204 (xs!12775 (c!434614 input!780))) (<= (size!24053 (innerList!9795 (xs!12775 (c!434614 input!780)))) 2147483647))))

(declare-fun bs!483903 () Bool)

(assert (= bs!483903 d!772697))

(declare-fun m!3077497 () Bool)

(assert (=> bs!483903 m!3077497))

(assert (=> b!2696318 d!772697))

(declare-fun d!772699 () Bool)

(declare-fun lt!952589 () Int)

(assert (=> d!772699 (= lt!952589 (size!24055 (list!11748 (_1!17996 lt!952567))))))

(declare-fun size!24056 (Conc!9736) Int)

(assert (=> d!772699 (= lt!952589 (size!24056 (c!434615 (_1!17996 lt!952567))))))

(assert (=> d!772699 (= (size!24052 (_1!17996 lt!952567)) lt!952589)))

(declare-fun bs!483904 () Bool)

(assert (= bs!483904 d!772699))

(assert (=> bs!483904 m!3077283))

(assert (=> bs!483904 m!3077283))

(declare-fun m!3077499 () Bool)

(assert (=> bs!483904 m!3077499))

(declare-fun m!3077501 () Bool)

(assert (=> bs!483904 m!3077501))

(assert (=> d!772619 d!772699))

(declare-fun lt!952604 () Option!6146)

(declare-fun b!2696397 () Bool)

(declare-fun e!1700340 () Bool)

(declare-fun get!9731 (Option!6146) tuple2!30756)

(declare-datatypes ((tuple2!30758 0))(
  ( (tuple2!30759 (_1!17999 Token!8972) (_2!17999 List!31244)) )
))
(declare-datatypes ((Option!6147 0))(
  ( (None!6146) (Some!6146 (v!32922 tuple2!30758)) )
))
(declare-fun get!9732 (Option!6147) tuple2!30758)

(declare-fun maxPrefixZipper!457 (LexerInterface!4349 List!31248 List!31244) Option!6147)

(assert (=> b!2696397 (= e!1700340 (= (list!11747 (_2!17998 (get!9731 lt!952604))) (_2!17999 (get!9732 (maxPrefixZipper!457 thiss!12257 rules!1381 (list!11747 input!780))))))))

(declare-fun b!2696398 () Bool)

(declare-fun e!1700341 () Option!6146)

(declare-fun call!173598 () Option!6146)

(assert (=> b!2696398 (= e!1700341 call!173598)))

(declare-fun b!2696399 () Bool)

(declare-fun e!1700337 () Bool)

(assert (=> b!2696399 (= e!1700337 e!1700340)))

(declare-fun res!1132695 () Bool)

(assert (=> b!2696399 (=> (not res!1132695) (not e!1700340))))

(assert (=> b!2696399 (= res!1132695 (= (_1!17998 (get!9731 lt!952604)) (_1!17999 (get!9732 (maxPrefixZipper!457 thiss!12257 rules!1381 (list!11747 input!780))))))))

(declare-fun b!2696400 () Bool)

(declare-fun lt!952610 () Option!6146)

(declare-fun lt!952608 () Option!6146)

(assert (=> b!2696400 (= e!1700341 (ite (and ((_ is None!6145) lt!952610) ((_ is None!6145) lt!952608)) None!6145 (ite ((_ is None!6145) lt!952608) lt!952610 (ite ((_ is None!6145) lt!952610) lt!952608 (ite (>= (size!24050 (_1!17998 (v!32920 lt!952610))) (size!24050 (_1!17998 (v!32920 lt!952608)))) lt!952610 lt!952608)))))))

(assert (=> b!2696400 (= lt!952610 call!173598)))

(assert (=> b!2696400 (= lt!952608 (maxPrefixZipperSequence!1010 thiss!12257 (t!225255 rules!1381) input!780))))

(declare-fun bm!173593 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!466 (LexerInterface!4349 Rule!9306 BalanceConc!19084) Option!6146)

(assert (=> bm!173593 (= call!173598 (maxPrefixOneRuleZipperSequence!466 thiss!12257 (h!36568 rules!1381) input!780))))

(declare-fun b!2696401 () Bool)

(declare-fun e!1700339 () Bool)

(declare-fun e!1700336 () Bool)

(assert (=> b!2696401 (= e!1700339 e!1700336)))

(declare-fun res!1132696 () Bool)

(assert (=> b!2696401 (=> (not res!1132696) (not e!1700336))))

(declare-fun maxPrefix!2353 (LexerInterface!4349 List!31248 List!31244) Option!6147)

(assert (=> b!2696401 (= res!1132696 (= (_1!17998 (get!9731 lt!952604)) (_1!17999 (get!9732 (maxPrefix!2353 thiss!12257 rules!1381 (list!11747 input!780))))))))

(declare-fun d!772701 () Bool)

(declare-fun e!1700338 () Bool)

(assert (=> d!772701 e!1700338))

(declare-fun res!1132692 () Bool)

(assert (=> d!772701 (=> (not res!1132692) (not e!1700338))))

(declare-fun isDefined!4867 (Option!6146) Bool)

(declare-fun isDefined!4868 (Option!6147) Bool)

(assert (=> d!772701 (= res!1132692 (= (isDefined!4867 lt!952604) (isDefined!4868 (maxPrefixZipper!457 thiss!12257 rules!1381 (list!11747 input!780)))))))

(assert (=> d!772701 (= lt!952604 e!1700341)))

(declare-fun c!434657 () Bool)

(assert (=> d!772701 (= c!434657 (and ((_ is Cons!31148) rules!1381) ((_ is Nil!31148) (t!225255 rules!1381))))))

(declare-datatypes ((Unit!45223 0))(
  ( (Unit!45224) )
))
(declare-fun lt!952606 () Unit!45223)

(declare-fun lt!952607 () Unit!45223)

(assert (=> d!772701 (= lt!952606 lt!952607)))

(declare-fun lt!952609 () List!31244)

(declare-fun lt!952605 () List!31244)

(declare-fun isPrefix!2470 (List!31244 List!31244) Bool)

(assert (=> d!772701 (isPrefix!2470 lt!952609 lt!952605)))

(declare-fun lemmaIsPrefixRefl!1596 (List!31244 List!31244) Unit!45223)

(assert (=> d!772701 (= lt!952607 (lemmaIsPrefixRefl!1596 lt!952609 lt!952605))))

(assert (=> d!772701 (= lt!952605 (list!11747 input!780))))

(assert (=> d!772701 (= lt!952609 (list!11747 input!780))))

(declare-fun rulesValidInductive!1652 (LexerInterface!4349 List!31248) Bool)

(assert (=> d!772701 (rulesValidInductive!1652 thiss!12257 rules!1381)))

(assert (=> d!772701 (= (maxPrefixZipperSequence!1010 thiss!12257 rules!1381 input!780) lt!952604)))

(declare-fun b!2696402 () Bool)

(assert (=> b!2696402 (= e!1700336 (= (list!11747 (_2!17998 (get!9731 lt!952604))) (_2!17999 (get!9732 (maxPrefix!2353 thiss!12257 rules!1381 (list!11747 input!780))))))))

(declare-fun b!2696403 () Bool)

(declare-fun res!1132694 () Bool)

(assert (=> b!2696403 (=> (not res!1132694) (not e!1700338))))

(assert (=> b!2696403 (= res!1132694 e!1700337)))

(declare-fun res!1132693 () Bool)

(assert (=> b!2696403 (=> res!1132693 e!1700337)))

(assert (=> b!2696403 (= res!1132693 (not (isDefined!4867 lt!952604)))))

(declare-fun b!2696404 () Bool)

(assert (=> b!2696404 (= e!1700338 e!1700339)))

(declare-fun res!1132691 () Bool)

(assert (=> b!2696404 (=> res!1132691 e!1700339)))

(assert (=> b!2696404 (= res!1132691 (not (isDefined!4867 lt!952604)))))

(assert (= (and d!772701 c!434657) b!2696398))

(assert (= (and d!772701 (not c!434657)) b!2696400))

(assert (= (or b!2696398 b!2696400) bm!173593))

(assert (= (and d!772701 res!1132692) b!2696403))

(assert (= (and b!2696403 (not res!1132693)) b!2696399))

(assert (= (and b!2696399 res!1132695) b!2696397))

(assert (= (and b!2696403 res!1132694) b!2696404))

(assert (= (and b!2696404 (not res!1132691)) b!2696401))

(assert (= (and b!2696401 res!1132696) b!2696402))

(declare-fun m!3077503 () Bool)

(assert (=> b!2696404 m!3077503))

(declare-fun m!3077505 () Bool)

(assert (=> b!2696399 m!3077505))

(assert (=> b!2696399 m!3077213))

(assert (=> b!2696399 m!3077213))

(declare-fun m!3077507 () Bool)

(assert (=> b!2696399 m!3077507))

(assert (=> b!2696399 m!3077507))

(declare-fun m!3077509 () Bool)

(assert (=> b!2696399 m!3077509))

(declare-fun m!3077511 () Bool)

(assert (=> bm!173593 m!3077511))

(declare-fun m!3077513 () Bool)

(assert (=> b!2696400 m!3077513))

(assert (=> d!772701 m!3077213))

(assert (=> d!772701 m!3077507))

(assert (=> d!772701 m!3077503))

(declare-fun m!3077515 () Bool)

(assert (=> d!772701 m!3077515))

(declare-fun m!3077517 () Bool)

(assert (=> d!772701 m!3077517))

(assert (=> d!772701 m!3077507))

(declare-fun m!3077519 () Bool)

(assert (=> d!772701 m!3077519))

(declare-fun m!3077521 () Bool)

(assert (=> d!772701 m!3077521))

(assert (=> d!772701 m!3077213))

(declare-fun m!3077523 () Bool)

(assert (=> b!2696402 m!3077523))

(declare-fun m!3077525 () Bool)

(assert (=> b!2696402 m!3077525))

(declare-fun m!3077527 () Bool)

(assert (=> b!2696402 m!3077527))

(assert (=> b!2696402 m!3077213))

(assert (=> b!2696402 m!3077505))

(assert (=> b!2696402 m!3077213))

(assert (=> b!2696402 m!3077523))

(assert (=> b!2696403 m!3077503))

(assert (=> b!2696401 m!3077505))

(assert (=> b!2696401 m!3077213))

(assert (=> b!2696401 m!3077213))

(assert (=> b!2696401 m!3077523))

(assert (=> b!2696401 m!3077523))

(assert (=> b!2696401 m!3077525))

(assert (=> b!2696397 m!3077213))

(assert (=> b!2696397 m!3077507))

(assert (=> b!2696397 m!3077527))

(assert (=> b!2696397 m!3077507))

(assert (=> b!2696397 m!3077509))

(assert (=> b!2696397 m!3077213))

(assert (=> b!2696397 m!3077505))

(assert (=> d!772619 d!772701))

(declare-fun bs!483905 () Bool)

(declare-fun d!772703 () Bool)

(assert (= bs!483905 (and d!772703 d!772695)))

(declare-fun lambda!100297 () Int)

(assert (=> bs!483905 (= lambda!100297 lambda!100296)))

(declare-fun bs!483906 () Bool)

(assert (= bs!483906 (and d!772703 d!772691)))

(assert (=> bs!483906 (= lambda!100297 lambda!100294)))

(declare-fun bs!483907 () Bool)

(assert (= bs!483907 (and d!772703 d!772669)))

(assert (=> bs!483907 (= lambda!100297 lambda!100288)))

(declare-fun bs!483908 () Bool)

(assert (= bs!483908 (and d!772703 d!772689)))

(assert (=> bs!483908 (= lambda!100297 lambda!100293)))

(declare-fun bs!483909 () Bool)

(assert (= bs!483909 (and d!772703 d!772679)))

(assert (=> bs!483909 (= lambda!100297 lambda!100292)))

(declare-fun bs!483910 () Bool)

(assert (= bs!483910 (and d!772703 d!772693)))

(assert (=> bs!483910 (= lambda!100297 lambda!100295)))

(assert (=> d!772703 (= (inv!42205 setElem!21257) (forall!6544 (exprs!2679 setElem!21257) lambda!100297))))

(declare-fun bs!483911 () Bool)

(assert (= bs!483911 d!772703))

(declare-fun m!3077529 () Bool)

(assert (=> bs!483911 m!3077529))

(assert (=> setNonEmpty!21257 d!772703))

(declare-fun bs!483912 () Bool)

(declare-fun d!772705 () Bool)

(assert (= bs!483912 (and d!772705 d!772695)))

(declare-fun lambda!100298 () Int)

(assert (=> bs!483912 (= lambda!100298 lambda!100296)))

(declare-fun bs!483913 () Bool)

(assert (= bs!483913 (and d!772705 d!772691)))

(assert (=> bs!483913 (= lambda!100298 lambda!100294)))

(declare-fun bs!483914 () Bool)

(assert (= bs!483914 (and d!772705 d!772669)))

(assert (=> bs!483914 (= lambda!100298 lambda!100288)))

(declare-fun bs!483915 () Bool)

(assert (= bs!483915 (and d!772705 d!772689)))

(assert (=> bs!483915 (= lambda!100298 lambda!100293)))

(declare-fun bs!483916 () Bool)

(assert (= bs!483916 (and d!772705 d!772679)))

(assert (=> bs!483916 (= lambda!100298 lambda!100292)))

(declare-fun bs!483917 () Bool)

(assert (= bs!483917 (and d!772705 d!772703)))

(assert (=> bs!483917 (= lambda!100298 lambda!100297)))

(declare-fun bs!483918 () Bool)

(assert (= bs!483918 (and d!772705 d!772693)))

(assert (=> bs!483918 (= lambda!100298 lambda!100295)))

(assert (=> d!772705 (= (inv!42205 setElem!21256) (forall!6544 (exprs!2679 setElem!21256) lambda!100298))))

(declare-fun bs!483919 () Bool)

(assert (= bs!483919 d!772705))

(declare-fun m!3077531 () Bool)

(assert (=> bs!483919 m!3077531))

(assert (=> setNonEmpty!21256 d!772705))

(declare-fun b!2696415 () Bool)

(declare-fun e!1700347 () List!31247)

(assert (=> b!2696415 (= e!1700347 (list!11752 (xs!12776 (c!434615 acc!348))))))

(declare-fun b!2696413 () Bool)

(declare-fun e!1700346 () List!31247)

(assert (=> b!2696413 (= e!1700346 Nil!31147)))

(declare-fun b!2696414 () Bool)

(assert (=> b!2696414 (= e!1700346 e!1700347)))

(declare-fun c!434663 () Bool)

(assert (=> b!2696414 (= c!434663 ((_ is Leaf!14857) (c!434615 acc!348)))))

(declare-fun d!772707 () Bool)

(declare-fun c!434662 () Bool)

(assert (=> d!772707 (= c!434662 ((_ is Empty!9736) (c!434615 acc!348)))))

(assert (=> d!772707 (= (list!11750 (c!434615 acc!348)) e!1700346)))

(declare-fun b!2696416 () Bool)

(assert (=> b!2696416 (= e!1700347 (++!7648 (list!11750 (left!23982 (c!434615 acc!348))) (list!11750 (right!24312 (c!434615 acc!348)))))))

(assert (= (and d!772707 c!434662) b!2696413))

(assert (= (and d!772707 (not c!434662)) b!2696414))

(assert (= (and b!2696414 c!434663) b!2696415))

(assert (= (and b!2696414 (not c!434663)) b!2696416))

(assert (=> b!2696415 m!3077473))

(declare-fun m!3077533 () Bool)

(assert (=> b!2696416 m!3077533))

(declare-fun m!3077535 () Bool)

(assert (=> b!2696416 m!3077535))

(assert (=> b!2696416 m!3077533))

(assert (=> b!2696416 m!3077535))

(declare-fun m!3077537 () Bool)

(assert (=> b!2696416 m!3077537))

(assert (=> d!772615 d!772707))

(declare-fun bs!483920 () Bool)

(declare-fun d!772709 () Bool)

(assert (= bs!483920 (and d!772709 d!772695)))

(declare-fun lambda!100299 () Int)

(assert (=> bs!483920 (= lambda!100299 lambda!100296)))

(declare-fun bs!483921 () Bool)

(assert (= bs!483921 (and d!772709 d!772691)))

(assert (=> bs!483921 (= lambda!100299 lambda!100294)))

(declare-fun bs!483922 () Bool)

(assert (= bs!483922 (and d!772709 d!772669)))

(assert (=> bs!483922 (= lambda!100299 lambda!100288)))

(declare-fun bs!483923 () Bool)

(assert (= bs!483923 (and d!772709 d!772689)))

(assert (=> bs!483923 (= lambda!100299 lambda!100293)))

(declare-fun bs!483924 () Bool)

(assert (= bs!483924 (and d!772709 d!772679)))

(assert (=> bs!483924 (= lambda!100299 lambda!100292)))

(declare-fun bs!483925 () Bool)

(assert (= bs!483925 (and d!772709 d!772703)))

(assert (=> bs!483925 (= lambda!100299 lambda!100297)))

(declare-fun bs!483926 () Bool)

(assert (= bs!483926 (and d!772709 d!772705)))

(assert (=> bs!483926 (= lambda!100299 lambda!100298)))

(declare-fun bs!483927 () Bool)

(assert (= bs!483927 (and d!772709 d!772693)))

(assert (=> bs!483927 (= lambda!100299 lambda!100295)))

(assert (=> d!772709 (= (inv!42205 setElem!21255) (forall!6544 (exprs!2679 setElem!21255) lambda!100299))))

(declare-fun bs!483928 () Bool)

(assert (= bs!483928 d!772709))

(declare-fun m!3077539 () Bool)

(assert (=> bs!483928 m!3077539))

(assert (=> setNonEmpty!21255 d!772709))

(declare-fun d!772711 () Bool)

(declare-fun lt!952613 () Bool)

(declare-fun isEmpty!17747 (List!31247) Bool)

(assert (=> d!772711 (= lt!952613 (isEmpty!17747 (list!11748 (_1!17996 lt!952573))))))

(declare-fun isEmpty!17748 (Conc!9736) Bool)

(assert (=> d!772711 (= lt!952613 (isEmpty!17748 (c!434615 (_1!17996 lt!952573))))))

(assert (=> d!772711 (= (isEmpty!17746 (_1!17996 lt!952573)) lt!952613)))

(declare-fun bs!483929 () Bool)

(assert (= bs!483929 d!772711))

(assert (=> bs!483929 m!3077325))

(assert (=> bs!483929 m!3077325))

(declare-fun m!3077541 () Bool)

(assert (=> bs!483929 m!3077541))

(declare-fun m!3077543 () Bool)

(assert (=> bs!483929 m!3077543))

(assert (=> b!2696176 d!772711))

(declare-fun d!772713 () Bool)

(declare-fun res!1132703 () Bool)

(declare-fun e!1700350 () Bool)

(assert (=> d!772713 (=> (not res!1132703) (not e!1700350))))

(assert (=> d!772713 (= res!1132703 (= (csize!19700 (c!434614 input!780)) (+ (size!24054 (left!23981 (c!434614 input!780))) (size!24054 (right!24311 (c!434614 input!780))))))))

(assert (=> d!772713 (= (inv!42200 (c!434614 input!780)) e!1700350)))

(declare-fun b!2696423 () Bool)

(declare-fun res!1132704 () Bool)

(assert (=> b!2696423 (=> (not res!1132704) (not e!1700350))))

(assert (=> b!2696423 (= res!1132704 (and (not (= (left!23981 (c!434614 input!780)) Empty!9735)) (not (= (right!24311 (c!434614 input!780)) Empty!9735))))))

(declare-fun b!2696424 () Bool)

(declare-fun res!1132705 () Bool)

(assert (=> b!2696424 (=> (not res!1132705) (not e!1700350))))

(declare-fun height!1428 (Conc!9735) Int)

(assert (=> b!2696424 (= res!1132705 (= (cheight!9946 (c!434614 input!780)) (+ (max!0 (height!1428 (left!23981 (c!434614 input!780))) (height!1428 (right!24311 (c!434614 input!780)))) 1)))))

(declare-fun b!2696425 () Bool)

(assert (=> b!2696425 (= e!1700350 (<= 0 (cheight!9946 (c!434614 input!780))))))

(assert (= (and d!772713 res!1132703) b!2696423))

(assert (= (and b!2696423 res!1132704) b!2696424))

(assert (= (and b!2696424 res!1132705) b!2696425))

(declare-fun m!3077545 () Bool)

(assert (=> d!772713 m!3077545))

(declare-fun m!3077547 () Bool)

(assert (=> d!772713 m!3077547))

(declare-fun m!3077549 () Bool)

(assert (=> b!2696424 m!3077549))

(declare-fun m!3077551 () Bool)

(assert (=> b!2696424 m!3077551))

(assert (=> b!2696424 m!3077549))

(assert (=> b!2696424 m!3077551))

(declare-fun m!3077553 () Bool)

(assert (=> b!2696424 m!3077553))

(assert (=> b!2696207 d!772713))

(assert (=> b!2696095 d!772661))

(declare-fun d!772715 () Bool)

(assert (=> d!772715 true))

(declare-fun lt!952616 () Bool)

(assert (=> d!772715 (= lt!952616 (rulesValidInductive!1652 thiss!12257 rules!1381))))

(declare-fun lambda!100302 () Int)

(declare-fun forall!6545 (List!31248 Int) Bool)

(assert (=> d!772715 (= lt!952616 (forall!6545 rules!1381 lambda!100302))))

(assert (=> d!772715 (= (rulesValid!1769 thiss!12257 rules!1381) lt!952616)))

(declare-fun bs!483930 () Bool)

(assert (= bs!483930 d!772715))

(assert (=> bs!483930 m!3077521))

(declare-fun m!3077555 () Bool)

(assert (=> bs!483930 m!3077555))

(assert (=> d!772597 d!772715))

(declare-fun d!772717 () Bool)

(assert (=> d!772717 (= (height!1427 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))) (ite ((_ is Empty!9736) (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))) 0 (ite ((_ is Leaf!14857) (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))) 1 (cheight!9947 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))))))))

(assert (=> b!2696168 d!772717))

(declare-fun d!772719 () Bool)

(assert (=> d!772719 (= (height!1427 (c!434615 acc!348)) (ite ((_ is Empty!9736) (c!434615 acc!348)) 0 (ite ((_ is Leaf!14857) (c!434615 acc!348)) 1 (cheight!9947 (c!434615 acc!348)))))))

(assert (=> b!2696168 d!772719))

(declare-fun b!2696470 () Bool)

(declare-fun e!1700373 () Conc!9736)

(declare-fun call!173636 () Conc!9736)

(assert (=> b!2696470 (= e!1700373 call!173636)))

(declare-fun b!2696471 () Bool)

(declare-fun e!1700375 () Conc!9736)

(declare-fun call!173643 () Conc!9736)

(assert (=> b!2696471 (= e!1700375 call!173643)))

(declare-fun c!434683 () Bool)

(declare-fun bm!173626 () Bool)

(declare-fun call!173639 () Int)

(assert (=> bm!173626 (= call!173639 (height!1427 (ite c!434683 (right!24312 (c!434615 acc!348)) (right!24312 (c!434615 (_1!17996 lt!952556))))))))

(declare-fun call!173642 () Conc!9736)

(declare-fun call!173645 () Conc!9736)

(declare-fun c!434680 () Bool)

(declare-fun c!434686 () Bool)

(declare-fun lt!952625 () Conc!9736)

(declare-fun call!173631 () Conc!9736)

(declare-fun bm!173627 () Bool)

(declare-fun c!434684 () Bool)

(declare-fun lt!952628 () Conc!9736)

(declare-fun <>!243 (Conc!9736 Conc!9736) Conc!9736)

(assert (=> bm!173627 (= call!173642 (<>!243 (ite c!434686 (c!434615 acc!348) (ite c!434683 (ite c!434680 (left!23982 (c!434615 acc!348)) call!173631) (ite c!434684 call!173645 lt!952628))) (ite c!434686 (c!434615 (_1!17996 lt!952556)) (ite c!434683 (ite c!434680 call!173631 lt!952625) (ite c!434684 (right!24312 (c!434615 (_1!17996 lt!952556))) call!173645)))))))

(declare-fun e!1700379 () Bool)

(declare-fun lt!952627 () Conc!9736)

(declare-fun b!2696472 () Bool)

(assert (=> b!2696472 (= e!1700379 (= (list!11750 lt!952627) (++!7648 (list!11750 (c!434615 acc!348)) (list!11750 (c!434615 (_1!17996 lt!952556))))))))

(declare-fun bm!173628 () Bool)

(declare-fun call!173632 () Int)

(assert (=> bm!173628 (= call!173632 (height!1427 (ite c!434683 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))))))

(declare-fun call!173637 () Int)

(declare-fun bm!173629 () Bool)

(assert (=> bm!173629 (= call!173637 (height!1427 (ite c!434683 (left!23982 (c!434615 acc!348)) lt!952628)))))

(declare-fun bm!173630 () Bool)

(declare-fun call!173634 () Conc!9736)

(assert (=> bm!173630 (= call!173636 call!173634)))

(declare-fun b!2696473 () Bool)

(declare-fun e!1700380 () Conc!9736)

(declare-fun call!173638 () Conc!9736)

(assert (=> b!2696473 (= e!1700380 call!173638)))

(declare-fun bm!173632 () Bool)

(declare-fun call!173646 () Conc!9736)

(assert (=> bm!173632 (= call!173638 call!173646)))

(declare-fun b!2696474 () Bool)

(declare-fun e!1700376 () Conc!9736)

(assert (=> b!2696474 (= e!1700376 call!173642)))

(declare-fun b!2696475 () Bool)

(declare-fun res!1132720 () Bool)

(assert (=> b!2696475 (=> (not res!1132720) (not e!1700379))))

(assert (=> b!2696475 (= res!1132720 (isBalanced!2945 lt!952627))))

(declare-fun b!2696476 () Bool)

(assert (=> b!2696476 (= e!1700380 e!1700375)))

(declare-fun call!173644 () Conc!9736)

(assert (=> b!2696476 (= lt!952628 call!173644)))

(assert (=> b!2696476 (= c!434684 (= call!173637 (- call!173632 3)))))

(declare-fun b!2696477 () Bool)

(declare-fun res!1132716 () Bool)

(assert (=> b!2696477 (=> (not res!1132716) (not e!1700379))))

(assert (=> b!2696477 (= res!1132716 (<= (height!1427 lt!952627) (+ (max!0 (height!1427 (c!434615 acc!348)) (height!1427 (c!434615 (_1!17996 lt!952556)))) 1)))))

(declare-fun b!2696478 () Bool)

(assert (=> b!2696478 (= e!1700373 call!173636)))

(declare-fun c!434687 () Bool)

(declare-fun bm!173633 () Bool)

(declare-fun call!173633 () Conc!9736)

(declare-fun c!434681 () Bool)

(assert (=> bm!173633 (= call!173633 (++!7647 (ite c!434683 (ite c!434687 (right!24312 (c!434615 acc!348)) (right!24312 (right!24312 (c!434615 acc!348)))) (c!434615 acc!348)) (ite c!434683 (c!434615 (_1!17996 lt!952556)) (ite c!434681 (left!23982 (c!434615 (_1!17996 lt!952556))) (left!23982 (left!23982 (c!434615 (_1!17996 lt!952556))))))))))

(declare-fun b!2696479 () Bool)

(declare-fun e!1700371 () Conc!9736)

(declare-fun e!1700378 () Conc!9736)

(assert (=> b!2696479 (= e!1700371 e!1700378)))

(declare-fun c!434685 () Bool)

(assert (=> b!2696479 (= c!434685 (= (c!434615 (_1!17996 lt!952556)) Empty!9736))))

(declare-fun bm!173634 () Bool)

(declare-fun call!173635 () Conc!9736)

(assert (=> bm!173634 (= call!173635 call!173633)))

(declare-fun b!2696480 () Bool)

(assert (=> b!2696480 (= e!1700378 (c!434615 acc!348))))

(declare-fun bm!173635 () Bool)

(declare-fun call!173640 () Int)

(assert (=> bm!173635 (= call!173640 (height!1427 (ite c!434683 lt!952625 (left!23982 (c!434615 (_1!17996 lt!952556))))))))

(declare-fun b!2696481 () Bool)

(assert (=> b!2696481 (= e!1700371 (c!434615 (_1!17996 lt!952556)))))

(declare-fun b!2696482 () Bool)

(declare-fun res!1132717 () Bool)

(assert (=> b!2696482 (=> (not res!1132717) (not e!1700379))))

(assert (=> b!2696482 (= res!1132717 (>= (height!1427 lt!952627) (max!0 (height!1427 (c!434615 acc!348)) (height!1427 (c!434615 (_1!17996 lt!952556))))))))

(declare-fun bm!173636 () Bool)

(assert (=> bm!173636 (= call!173645 call!173638)))

(declare-fun b!2696483 () Bool)

(declare-fun e!1700372 () Conc!9736)

(assert (=> b!2696483 (= e!1700372 e!1700373)))

(assert (=> b!2696483 (= lt!952625 call!173635)))

(assert (=> b!2696483 (= c!434680 (= call!173640 (- call!173632 3)))))

(declare-fun b!2696484 () Bool)

(declare-fun call!173641 () Conc!9736)

(assert (=> b!2696484 (= e!1700372 call!173641)))

(declare-fun bm!173637 () Bool)

(assert (=> bm!173637 (= call!173634 call!173642)))

(declare-fun b!2696485 () Bool)

(assert (=> b!2696485 (= c!434681 (>= call!173639 call!173640))))

(declare-fun e!1700377 () Conc!9736)

(assert (=> b!2696485 (= e!1700377 e!1700380)))

(declare-fun b!2696486 () Bool)

(assert (=> b!2696486 (= e!1700375 call!173643)))

(declare-fun b!2696487 () Bool)

(assert (=> b!2696487 (= e!1700376 e!1700377)))

(declare-fun lt!952626 () Int)

(assert (=> b!2696487 (= c!434683 (< lt!952626 (- 1)))))

(declare-fun d!772721 () Bool)

(assert (=> d!772721 e!1700379))

(declare-fun res!1132719 () Bool)

(assert (=> d!772721 (=> (not res!1132719) (not e!1700379))))

(assert (=> d!772721 (= res!1132719 (appendAssocInst!667 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))))))

(assert (=> d!772721 (= lt!952627 e!1700371)))

(declare-fun c!434682 () Bool)

(assert (=> d!772721 (= c!434682 (= (c!434615 acc!348) Empty!9736))))

(declare-fun e!1700374 () Bool)

(assert (=> d!772721 e!1700374))

(declare-fun res!1132718 () Bool)

(assert (=> d!772721 (=> (not res!1132718) (not e!1700374))))

(assert (=> d!772721 (= res!1132718 (isBalanced!2945 (c!434615 acc!348)))))

(assert (=> d!772721 (= (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))) lt!952627)))

(declare-fun bm!173631 () Bool)

(assert (=> bm!173631 (= call!173631 call!173641)))

(declare-fun b!2696488 () Bool)

(assert (=> b!2696488 (= c!434687 (>= call!173637 call!173639))))

(assert (=> b!2696488 (= e!1700377 e!1700372)))

(declare-fun bm!173638 () Bool)

(assert (=> bm!173638 (= call!173641 call!173646)))

(declare-fun bm!173639 () Bool)

(assert (=> bm!173639 (= call!173644 call!173633)))

(declare-fun b!2696489 () Bool)

(assert (=> b!2696489 (= c!434686 (and (<= (- 1) lt!952626) (<= lt!952626 1)))))

(assert (=> b!2696489 (= lt!952626 (- (height!1427 (c!434615 (_1!17996 lt!952556))) (height!1427 (c!434615 acc!348))))))

(assert (=> b!2696489 (= e!1700378 e!1700376)))

(declare-fun b!2696490 () Bool)

(assert (=> b!2696490 (= e!1700374 (isBalanced!2945 (c!434615 (_1!17996 lt!952556))))))

(declare-fun bm!173640 () Bool)

(assert (=> bm!173640 (= call!173646 (<>!243 (ite c!434683 (ite c!434687 (left!23982 (c!434615 acc!348)) (ite c!434680 (left!23982 (right!24312 (c!434615 acc!348))) (left!23982 (c!434615 acc!348)))) (ite c!434681 call!173644 (ite c!434684 lt!952628 (right!24312 (left!23982 (c!434615 (_1!17996 lt!952556))))))) (ite c!434683 (ite c!434687 call!173635 (ite c!434680 lt!952625 (left!23982 (right!24312 (c!434615 acc!348))))) (ite c!434681 (right!24312 (c!434615 (_1!17996 lt!952556))) (ite c!434684 (right!24312 (left!23982 (c!434615 (_1!17996 lt!952556)))) (right!24312 (c!434615 (_1!17996 lt!952556))))))))))

(declare-fun bm!173641 () Bool)

(assert (=> bm!173641 (= call!173643 call!173634)))

(assert (= (and d!772721 res!1132718) b!2696490))

(assert (= (and d!772721 c!434682) b!2696481))

(assert (= (and d!772721 (not c!434682)) b!2696479))

(assert (= (and b!2696479 c!434685) b!2696480))

(assert (= (and b!2696479 (not c!434685)) b!2696489))

(assert (= (and b!2696489 c!434686) b!2696474))

(assert (= (and b!2696489 (not c!434686)) b!2696487))

(assert (= (and b!2696487 c!434683) b!2696488))

(assert (= (and b!2696487 (not c!434683)) b!2696485))

(assert (= (and b!2696488 c!434687) b!2696484))

(assert (= (and b!2696488 (not c!434687)) b!2696483))

(assert (= (and b!2696483 c!434680) b!2696478))

(assert (= (and b!2696483 (not c!434680)) b!2696470))

(assert (= (or b!2696478 b!2696470) bm!173631))

(assert (= (or b!2696478 b!2696470) bm!173630))

(assert (= (or b!2696484 b!2696483) bm!173634))

(assert (= (or b!2696484 bm!173631) bm!173638))

(assert (= (and b!2696485 c!434681) b!2696473))

(assert (= (and b!2696485 (not c!434681)) b!2696476))

(assert (= (and b!2696476 c!434684) b!2696471))

(assert (= (and b!2696476 (not c!434684)) b!2696486))

(assert (= (or b!2696471 b!2696486) bm!173636))

(assert (= (or b!2696471 b!2696486) bm!173641))

(assert (= (or b!2696473 b!2696476) bm!173639))

(assert (= (or b!2696473 bm!173636) bm!173632))

(assert (= (or b!2696488 b!2696485) bm!173626))

(assert (= (or b!2696488 b!2696476) bm!173629))

(assert (= (or bm!173634 bm!173639) bm!173633))

(assert (= (or b!2696483 b!2696485) bm!173635))

(assert (= (or bm!173638 bm!173632) bm!173640))

(assert (= (or bm!173630 bm!173641) bm!173637))

(assert (= (or b!2696483 b!2696476) bm!173628))

(assert (= (or b!2696474 bm!173637) bm!173627))

(assert (= (and d!772721 res!1132719) b!2696475))

(assert (= (and b!2696475 res!1132720) b!2696477))

(assert (= (and b!2696477 res!1132716) b!2696482))

(assert (= (and b!2696482 res!1132717) b!2696472))

(declare-fun m!3077557 () Bool)

(assert (=> bm!173629 m!3077557))

(assert (=> b!2696489 m!3077295))

(assert (=> b!2696489 m!3077297))

(declare-fun m!3077559 () Bool)

(assert (=> b!2696472 m!3077559))

(assert (=> b!2696472 m!3077247))

(declare-fun m!3077561 () Bool)

(assert (=> b!2696472 m!3077561))

(assert (=> b!2696472 m!3077247))

(assert (=> b!2696472 m!3077561))

(declare-fun m!3077563 () Bool)

(assert (=> b!2696472 m!3077563))

(declare-fun m!3077565 () Bool)

(assert (=> b!2696482 m!3077565))

(assert (=> b!2696482 m!3077297))

(assert (=> b!2696482 m!3077295))

(assert (=> b!2696482 m!3077297))

(assert (=> b!2696482 m!3077295))

(assert (=> b!2696482 m!3077303))

(declare-fun m!3077567 () Bool)

(assert (=> bm!173627 m!3077567))

(declare-fun m!3077569 () Bool)

(assert (=> b!2696475 m!3077569))

(assert (=> b!2696477 m!3077565))

(assert (=> b!2696477 m!3077297))

(assert (=> b!2696477 m!3077295))

(assert (=> b!2696477 m!3077297))

(assert (=> b!2696477 m!3077295))

(assert (=> b!2696477 m!3077303))

(declare-fun m!3077571 () Bool)

(assert (=> bm!173626 m!3077571))

(declare-fun m!3077573 () Bool)

(assert (=> bm!173633 m!3077573))

(declare-fun m!3077575 () Bool)

(assert (=> bm!173640 m!3077575))

(declare-fun m!3077577 () Bool)

(assert (=> bm!173635 m!3077577))

(declare-fun m!3077579 () Bool)

(assert (=> bm!173628 m!3077579))

(assert (=> d!772721 m!3077307))

(assert (=> d!772721 m!3077335))

(declare-fun m!3077581 () Bool)

(assert (=> b!2696490 m!3077581))

(assert (=> b!2696168 d!772721))

(declare-fun d!772723 () Bool)

(assert (=> d!772723 (= (height!1427 (c!434615 (_1!17996 lt!952556))) (ite ((_ is Empty!9736) (c!434615 (_1!17996 lt!952556))) 0 (ite ((_ is Leaf!14857) (c!434615 (_1!17996 lt!952556))) 1 (cheight!9947 (c!434615 (_1!17996 lt!952556))))))))

(assert (=> b!2696168 d!772723))

(declare-fun d!772725 () Bool)

(assert (=> d!772725 (= (max!0 (height!1427 (c!434615 acc!348)) (height!1427 (c!434615 (_1!17996 lt!952556)))) (ite (< (height!1427 (c!434615 acc!348)) (height!1427 (c!434615 (_1!17996 lt!952556)))) (height!1427 (c!434615 (_1!17996 lt!952556))) (height!1427 (c!434615 acc!348))))))

(assert (=> b!2696168 d!772725))

(declare-fun d!772727 () Bool)

(declare-fun res!1132725 () Bool)

(declare-fun e!1700383 () Bool)

(assert (=> d!772727 (=> (not res!1132725) (not e!1700383))))

(assert (=> d!772727 (= res!1132725 (<= (size!24053 (list!11751 (xs!12775 (c!434614 totalInput!354)))) 512))))

(assert (=> d!772727 (= (inv!42201 (c!434614 totalInput!354)) e!1700383)))

(declare-fun b!2696495 () Bool)

(declare-fun res!1132726 () Bool)

(assert (=> b!2696495 (=> (not res!1132726) (not e!1700383))))

(assert (=> b!2696495 (= res!1132726 (= (csize!19701 (c!434614 totalInput!354)) (size!24053 (list!11751 (xs!12775 (c!434614 totalInput!354))))))))

(declare-fun b!2696496 () Bool)

(assert (=> b!2696496 (= e!1700383 (and (> (csize!19701 (c!434614 totalInput!354)) 0) (<= (csize!19701 (c!434614 totalInput!354)) 512)))))

(assert (= (and d!772727 res!1132725) b!2696495))

(assert (= (and b!2696495 res!1132726) b!2696496))

(declare-fun m!3077583 () Bool)

(assert (=> d!772727 m!3077583))

(assert (=> d!772727 m!3077583))

(declare-fun m!3077585 () Bool)

(assert (=> d!772727 m!3077585))

(assert (=> b!2696495 m!3077583))

(assert (=> b!2696495 m!3077583))

(assert (=> b!2696495 m!3077585))

(assert (=> b!2696206 d!772727))

(declare-fun d!772729 () Bool)

(assert (=> d!772729 (= (list!11748 (_1!17996 lt!952567)) (list!11750 (c!434615 (_1!17996 lt!952567))))))

(declare-fun bs!483931 () Bool)

(assert (= bs!483931 d!772729))

(declare-fun m!3077587 () Bool)

(assert (=> bs!483931 m!3077587))

(assert (=> b!2696155 d!772729))

(declare-fun b!2696507 () Bool)

(declare-fun e!1700392 () Bool)

(declare-fun lt!952635 () tuple2!30754)

(assert (=> b!2696507 (= e!1700392 (not (isEmpty!17747 (_1!17997 lt!952635))))))

(declare-fun b!2696508 () Bool)

(declare-fun e!1700391 () tuple2!30754)

(declare-fun lt!952637 () Option!6147)

(declare-fun lt!952636 () tuple2!30754)

(assert (=> b!2696508 (= e!1700391 (tuple2!30755 (Cons!31147 (_1!17999 (v!32922 lt!952637)) (_1!17997 lt!952636)) (_2!17997 lt!952636)))))

(assert (=> b!2696508 (= lt!952636 (lexList!1198 thiss!12257 rules!1381 (_2!17999 (v!32922 lt!952637))))))

(declare-fun b!2696509 () Bool)

(assert (=> b!2696509 (= e!1700391 (tuple2!30755 Nil!31147 (list!11747 input!780)))))

(declare-fun b!2696510 () Bool)

(declare-fun e!1700390 () Bool)

(assert (=> b!2696510 (= e!1700390 (= (_2!17997 lt!952635) (list!11747 input!780)))))

(declare-fun b!2696511 () Bool)

(assert (=> b!2696511 (= e!1700390 e!1700392)))

(declare-fun res!1132729 () Bool)

(assert (=> b!2696511 (= res!1132729 (< (size!24053 (_2!17997 lt!952635)) (size!24053 (list!11747 input!780))))))

(assert (=> b!2696511 (=> (not res!1132729) (not e!1700392))))

(declare-fun d!772731 () Bool)

(assert (=> d!772731 e!1700390))

(declare-fun c!434692 () Bool)

(assert (=> d!772731 (= c!434692 (> (size!24055 (_1!17997 lt!952635)) 0))))

(assert (=> d!772731 (= lt!952635 e!1700391)))

(declare-fun c!434693 () Bool)

(assert (=> d!772731 (= c!434693 ((_ is Some!6146) lt!952637))))

(assert (=> d!772731 (= lt!952637 (maxPrefix!2353 thiss!12257 rules!1381 (list!11747 input!780)))))

(assert (=> d!772731 (= (lexList!1198 thiss!12257 rules!1381 (list!11747 input!780)) lt!952635)))

(assert (= (and d!772731 c!434693) b!2696508))

(assert (= (and d!772731 (not c!434693)) b!2696509))

(assert (= (and d!772731 c!434692) b!2696511))

(assert (= (and d!772731 (not c!434692)) b!2696510))

(assert (= (and b!2696511 res!1132729) b!2696507))

(declare-fun m!3077589 () Bool)

(assert (=> b!2696507 m!3077589))

(declare-fun m!3077591 () Bool)

(assert (=> b!2696508 m!3077591))

(declare-fun m!3077593 () Bool)

(assert (=> b!2696511 m!3077593))

(assert (=> b!2696511 m!3077213))

(assert (=> b!2696511 m!3077355))

(declare-fun m!3077595 () Bool)

(assert (=> d!772731 m!3077595))

(assert (=> d!772731 m!3077213))

(assert (=> d!772731 m!3077523))

(assert (=> b!2696155 d!772731))

(assert (=> b!2696155 d!772651))

(declare-fun d!772733 () Bool)

(declare-fun c!434694 () Bool)

(assert (=> d!772733 (= c!434694 ((_ is Empty!9735) (c!434614 input!780)))))

(declare-fun e!1700393 () List!31244)

(assert (=> d!772733 (= (list!11749 (c!434614 input!780)) e!1700393)))

(declare-fun b!2696514 () Bool)

(declare-fun e!1700394 () List!31244)

(assert (=> b!2696514 (= e!1700394 (list!11751 (xs!12775 (c!434614 input!780))))))

(declare-fun b!2696512 () Bool)

(assert (=> b!2696512 (= e!1700393 Nil!31144)))

(declare-fun b!2696515 () Bool)

(assert (=> b!2696515 (= e!1700394 (++!7645 (list!11749 (left!23981 (c!434614 input!780))) (list!11749 (right!24311 (c!434614 input!780)))))))

(declare-fun b!2696513 () Bool)

(assert (=> b!2696513 (= e!1700393 e!1700394)))

(declare-fun c!434695 () Bool)

(assert (=> b!2696513 (= c!434695 ((_ is Leaf!14856) (c!434614 input!780)))))

(assert (= (and d!772733 c!434694) b!2696512))

(assert (= (and d!772733 (not c!434694)) b!2696513))

(assert (= (and b!2696513 c!434695) b!2696514))

(assert (= (and b!2696513 (not c!434695)) b!2696515))

(declare-fun m!3077597 () Bool)

(assert (=> b!2696514 m!3077597))

(declare-fun m!3077599 () Bool)

(assert (=> b!2696515 m!3077599))

(declare-fun m!3077601 () Bool)

(assert (=> b!2696515 m!3077601))

(assert (=> b!2696515 m!3077599))

(assert (=> b!2696515 m!3077601))

(declare-fun m!3077603 () Bool)

(assert (=> b!2696515 m!3077603))

(assert (=> d!772651 d!772733))

(declare-fun d!772735 () Bool)

(declare-fun e!1700397 () Bool)

(assert (=> d!772735 e!1700397))

(declare-fun res!1132732 () Bool)

(assert (=> d!772735 (=> (not res!1132732) (not e!1700397))))

(declare-fun prepend!1085 (Conc!9736 Token!8972) Conc!9736)

(assert (=> d!772735 (= res!1132732 (isBalanced!2945 (prepend!1085 (c!434615 (_1!17996 lt!952565)) (_1!17998 (v!32920 lt!952563)))))))

(declare-fun lt!952640 () BalanceConc!19086)

(assert (=> d!772735 (= lt!952640 (BalanceConc!19087 (prepend!1085 (c!434615 (_1!17996 lt!952565)) (_1!17998 (v!32920 lt!952563)))))))

(assert (=> d!772735 (= (prepend!1084 (_1!17996 lt!952565) (_1!17998 (v!32920 lt!952563))) lt!952640)))

(declare-fun b!2696518 () Bool)

(assert (=> b!2696518 (= e!1700397 (= (list!11748 lt!952640) (Cons!31147 (_1!17998 (v!32920 lt!952563)) (list!11748 (_1!17996 lt!952565)))))))

(assert (= (and d!772735 res!1132732) b!2696518))

(declare-fun m!3077605 () Bool)

(assert (=> d!772735 m!3077605))

(assert (=> d!772735 m!3077605))

(declare-fun m!3077607 () Bool)

(assert (=> d!772735 m!3077607))

(declare-fun m!3077609 () Bool)

(assert (=> b!2696518 m!3077609))

(declare-fun m!3077611 () Bool)

(assert (=> b!2696518 m!3077611))

(assert (=> b!2696147 d!772735))

(declare-fun b!2696519 () Bool)

(declare-fun e!1700401 () Bool)

(declare-fun e!1700400 () Bool)

(assert (=> b!2696519 (= e!1700401 e!1700400)))

(declare-fun res!1132735 () Bool)

(declare-fun lt!952642 () tuple2!30752)

(assert (=> b!2696519 (= res!1132735 (< (size!24051 (_2!17996 lt!952642)) (size!24051 (_2!17998 (v!32920 lt!952563)))))))

(assert (=> b!2696519 (=> (not res!1132735) (not e!1700400))))

(declare-fun b!2696520 () Bool)

(declare-fun e!1700399 () tuple2!30752)

(assert (=> b!2696520 (= e!1700399 (tuple2!30753 (BalanceConc!19087 Empty!9736) (_2!17998 (v!32920 lt!952563))))))

(declare-fun e!1700398 () Bool)

(declare-fun b!2696521 () Bool)

(assert (=> b!2696521 (= e!1700398 (= (list!11747 (_2!17996 lt!952642)) (_2!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 (_2!17998 (v!32920 lt!952563)))))))))

(declare-fun b!2696522 () Bool)

(declare-fun lt!952643 () tuple2!30752)

(declare-fun lt!952641 () Option!6146)

(assert (=> b!2696522 (= e!1700399 (tuple2!30753 (prepend!1084 (_1!17996 lt!952643) (_1!17998 (v!32920 lt!952641))) (_2!17996 lt!952643)))))

(assert (=> b!2696522 (= lt!952643 (lexRec!611 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952641))))))

(declare-fun b!2696523 () Bool)

(declare-fun res!1132734 () Bool)

(assert (=> b!2696523 (=> (not res!1132734) (not e!1700398))))

(assert (=> b!2696523 (= res!1132734 (= (list!11748 (_1!17996 lt!952642)) (_1!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 (_2!17998 (v!32920 lt!952563)))))))))

(declare-fun b!2696525 () Bool)

(assert (=> b!2696525 (= e!1700400 (not (isEmpty!17746 (_1!17996 lt!952642))))))

(declare-fun d!772737 () Bool)

(assert (=> d!772737 e!1700398))

(declare-fun res!1132733 () Bool)

(assert (=> d!772737 (=> (not res!1132733) (not e!1700398))))

(assert (=> d!772737 (= res!1132733 e!1700401)))

(declare-fun c!434698 () Bool)

(assert (=> d!772737 (= c!434698 (> (size!24052 (_1!17996 lt!952642)) 0))))

(assert (=> d!772737 (= lt!952642 e!1700399)))

(declare-fun c!434697 () Bool)

(assert (=> d!772737 (= c!434697 ((_ is Some!6145) lt!952641))))

(assert (=> d!772737 (= lt!952641 (maxPrefixZipperSequence!1010 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952563))))))

(assert (=> d!772737 (= (lexRec!611 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952563))) lt!952642)))

(declare-fun b!2696524 () Bool)

(assert (=> b!2696524 (= e!1700401 (= (list!11747 (_2!17996 lt!952642)) (list!11747 (_2!17998 (v!32920 lt!952563)))))))

(assert (= (and d!772737 c!434697) b!2696522))

(assert (= (and d!772737 (not c!434697)) b!2696520))

(assert (= (and d!772737 c!434698) b!2696519))

(assert (= (and d!772737 (not c!434698)) b!2696524))

(assert (= (and b!2696519 res!1132735) b!2696525))

(assert (= (and d!772737 res!1132733) b!2696523))

(assert (= (and b!2696523 res!1132734) b!2696521))

(declare-fun m!3077613 () Bool)

(assert (=> b!2696524 m!3077613))

(declare-fun m!3077615 () Bool)

(assert (=> b!2696524 m!3077615))

(assert (=> b!2696521 m!3077613))

(assert (=> b!2696521 m!3077615))

(assert (=> b!2696521 m!3077615))

(declare-fun m!3077617 () Bool)

(assert (=> b!2696521 m!3077617))

(declare-fun m!3077619 () Bool)

(assert (=> d!772737 m!3077619))

(declare-fun m!3077621 () Bool)

(assert (=> d!772737 m!3077621))

(declare-fun m!3077623 () Bool)

(assert (=> b!2696522 m!3077623))

(declare-fun m!3077625 () Bool)

(assert (=> b!2696522 m!3077625))

(declare-fun m!3077627 () Bool)

(assert (=> b!2696519 m!3077627))

(declare-fun m!3077629 () Bool)

(assert (=> b!2696519 m!3077629))

(declare-fun m!3077631 () Bool)

(assert (=> b!2696523 m!3077631))

(assert (=> b!2696523 m!3077615))

(assert (=> b!2696523 m!3077615))

(assert (=> b!2696523 m!3077617))

(declare-fun m!3077633 () Bool)

(assert (=> b!2696525 m!3077633))

(assert (=> b!2696147 d!772737))

(declare-fun d!772739 () Bool)

(declare-fun lt!952644 () Int)

(assert (=> d!772739 (= lt!952644 (size!24053 (list!11747 (_2!17996 lt!952573))))))

(assert (=> d!772739 (= lt!952644 (size!24054 (c!434614 (_2!17996 lt!952573))))))

(assert (=> d!772739 (= (size!24051 (_2!17996 lt!952573)) lt!952644)))

(declare-fun bs!483932 () Bool)

(assert (= bs!483932 d!772739))

(assert (=> bs!483932 m!3077309))

(assert (=> bs!483932 m!3077309))

(declare-fun m!3077635 () Bool)

(assert (=> bs!483932 m!3077635))

(declare-fun m!3077637 () Bool)

(assert (=> bs!483932 m!3077637))

(assert (=> b!2696170 d!772739))

(declare-fun d!772741 () Bool)

(declare-fun lt!952645 () Int)

(assert (=> d!772741 (= lt!952645 (size!24053 (list!11747 totalInput!354)))))

(assert (=> d!772741 (= lt!952645 (size!24054 (c!434614 totalInput!354)))))

(assert (=> d!772741 (= (size!24051 totalInput!354) lt!952645)))

(declare-fun bs!483933 () Bool)

(assert (= bs!483933 d!772741))

(assert (=> bs!483933 m!3077209))

(assert (=> bs!483933 m!3077209))

(declare-fun m!3077639 () Bool)

(assert (=> bs!483933 m!3077639))

(declare-fun m!3077641 () Bool)

(assert (=> bs!483933 m!3077641))

(assert (=> b!2696170 d!772741))

(declare-fun d!772743 () Bool)

(declare-fun res!1132736 () Bool)

(declare-fun e!1700402 () Bool)

(assert (=> d!772743 (=> (not res!1132736) (not e!1700402))))

(assert (=> d!772743 (= res!1132736 (<= (size!24053 (list!11751 (xs!12775 (c!434614 treated!26)))) 512))))

(assert (=> d!772743 (= (inv!42201 (c!434614 treated!26)) e!1700402)))

(declare-fun b!2696526 () Bool)

(declare-fun res!1132737 () Bool)

(assert (=> b!2696526 (=> (not res!1132737) (not e!1700402))))

(assert (=> b!2696526 (= res!1132737 (= (csize!19701 (c!434614 treated!26)) (size!24053 (list!11751 (xs!12775 (c!434614 treated!26))))))))

(declare-fun b!2696527 () Bool)

(assert (=> b!2696527 (= e!1700402 (and (> (csize!19701 (c!434614 treated!26)) 0) (<= (csize!19701 (c!434614 treated!26)) 512)))))

(assert (= (and d!772743 res!1132736) b!2696526))

(assert (= (and b!2696526 res!1132737) b!2696527))

(assert (=> d!772743 m!3077459))

(assert (=> d!772743 m!3077459))

(declare-fun m!3077643 () Bool)

(assert (=> d!772743 m!3077643))

(assert (=> b!2696526 m!3077459))

(assert (=> b!2696526 m!3077459))

(assert (=> b!2696526 m!3077643))

(assert (=> b!2696123 d!772743))

(declare-fun bs!483934 () Bool)

(declare-fun d!772745 () Bool)

(assert (= bs!483934 (and d!772745 d!772691)))

(declare-fun lambda!100303 () Int)

(assert (=> bs!483934 (= lambda!100303 lambda!100294)))

(declare-fun bs!483935 () Bool)

(assert (= bs!483935 (and d!772745 d!772669)))

(assert (=> bs!483935 (= lambda!100303 lambda!100288)))

(declare-fun bs!483936 () Bool)

(assert (= bs!483936 (and d!772745 d!772689)))

(assert (=> bs!483936 (= lambda!100303 lambda!100293)))

(declare-fun bs!483937 () Bool)

(assert (= bs!483937 (and d!772745 d!772679)))

(assert (=> bs!483937 (= lambda!100303 lambda!100292)))

(declare-fun bs!483938 () Bool)

(assert (= bs!483938 (and d!772745 d!772703)))

(assert (=> bs!483938 (= lambda!100303 lambda!100297)))

(declare-fun bs!483939 () Bool)

(assert (= bs!483939 (and d!772745 d!772705)))

(assert (=> bs!483939 (= lambda!100303 lambda!100298)))

(declare-fun bs!483940 () Bool)

(assert (= bs!483940 (and d!772745 d!772693)))

(assert (=> bs!483940 (= lambda!100303 lambda!100295)))

(declare-fun bs!483941 () Bool)

(assert (= bs!483941 (and d!772745 d!772695)))

(assert (=> bs!483941 (= lambda!100303 lambda!100296)))

(declare-fun bs!483942 () Bool)

(assert (= bs!483942 (and d!772745 d!772709)))

(assert (=> bs!483942 (= lambda!100303 lambda!100299)))

(assert (=> d!772745 (= (inv!42205 (_2!17992 (_1!17993 (h!36563 mapDefault!16163)))) (forall!6544 (exprs!2679 (_2!17992 (_1!17993 (h!36563 mapDefault!16163)))) lambda!100303))))

(declare-fun bs!483943 () Bool)

(assert (= bs!483943 d!772745))

(declare-fun m!3077645 () Bool)

(assert (=> bs!483943 m!3077645))

(assert (=> b!2696336 d!772745))

(declare-fun bs!483944 () Bool)

(declare-fun d!772747 () Bool)

(assert (= bs!483944 (and d!772747 d!772691)))

(declare-fun lambda!100304 () Int)

(assert (=> bs!483944 (= lambda!100304 lambda!100294)))

(declare-fun bs!483945 () Bool)

(assert (= bs!483945 (and d!772747 d!772669)))

(assert (=> bs!483945 (= lambda!100304 lambda!100288)))

(declare-fun bs!483946 () Bool)

(assert (= bs!483946 (and d!772747 d!772689)))

(assert (=> bs!483946 (= lambda!100304 lambda!100293)))

(declare-fun bs!483947 () Bool)

(assert (= bs!483947 (and d!772747 d!772679)))

(assert (=> bs!483947 (= lambda!100304 lambda!100292)))

(declare-fun bs!483948 () Bool)

(assert (= bs!483948 (and d!772747 d!772703)))

(assert (=> bs!483948 (= lambda!100304 lambda!100297)))

(declare-fun bs!483949 () Bool)

(assert (= bs!483949 (and d!772747 d!772705)))

(assert (=> bs!483949 (= lambda!100304 lambda!100298)))

(declare-fun bs!483950 () Bool)

(assert (= bs!483950 (and d!772747 d!772693)))

(assert (=> bs!483950 (= lambda!100304 lambda!100295)))

(declare-fun bs!483951 () Bool)

(assert (= bs!483951 (and d!772747 d!772695)))

(assert (=> bs!483951 (= lambda!100304 lambda!100296)))

(declare-fun bs!483952 () Bool)

(assert (= bs!483952 (and d!772747 d!772709)))

(assert (=> bs!483952 (= lambda!100304 lambda!100299)))

(declare-fun bs!483953 () Bool)

(assert (= bs!483953 (and d!772747 d!772745)))

(assert (=> bs!483953 (= lambda!100304 lambda!100303)))

(assert (=> d!772747 (= (inv!42205 setElem!21266) (forall!6544 (exprs!2679 setElem!21266) lambda!100304))))

(declare-fun bs!483954 () Bool)

(assert (= bs!483954 d!772747))

(declare-fun m!3077647 () Bool)

(assert (=> bs!483954 m!3077647))

(assert (=> setNonEmpty!21266 d!772747))

(declare-fun d!772749 () Bool)

(assert (=> d!772749 (= (inv!42204 (xs!12775 (c!434614 treated!26))) (<= (size!24053 (innerList!9795 (xs!12775 (c!434614 treated!26)))) 2147483647))))

(declare-fun bs!483955 () Bool)

(assert (= bs!483955 d!772749))

(declare-fun m!3077649 () Bool)

(assert (=> bs!483955 m!3077649))

(assert (=> b!2696219 d!772749))

(declare-fun d!772751 () Bool)

(declare-fun res!1132742 () Bool)

(declare-fun e!1700405 () Bool)

(assert (=> d!772751 (=> (not res!1132742) (not e!1700405))))

(declare-fun valid!2746 (MutableMap!3445) Bool)

(assert (=> d!772751 (= res!1132742 (valid!2746 (cache!3588 cacheUp!486)))))

(assert (=> d!772751 (= (validCacheMapUp!326 (cache!3588 cacheUp!486)) e!1700405)))

(declare-fun b!2696532 () Bool)

(declare-fun res!1132743 () Bool)

(assert (=> b!2696532 (=> (not res!1132743) (not e!1700405))))

(declare-fun invariantList!442 (List!31245) Bool)

(declare-datatypes ((ListMap!1217 0))(
  ( (ListMap!1218 (toList!1806 List!31245)) )
))
(declare-fun map!6854 (MutableMap!3445) ListMap!1217)

(assert (=> b!2696532 (= res!1132743 (invariantList!442 (toList!1806 (map!6854 (cache!3588 cacheUp!486)))))))

(declare-fun b!2696533 () Bool)

(declare-fun lambda!100307 () Int)

(declare-fun forall!6546 (List!31245 Int) Bool)

(assert (=> b!2696533 (= e!1700405 (forall!6546 (toList!1806 (map!6854 (cache!3588 cacheUp!486))) lambda!100307))))

(assert (= (and d!772751 res!1132742) b!2696532))

(assert (= (and b!2696532 res!1132743) b!2696533))

(declare-fun m!3077652 () Bool)

(assert (=> d!772751 m!3077652))

(declare-fun m!3077654 () Bool)

(assert (=> b!2696532 m!3077654))

(declare-fun m!3077656 () Bool)

(assert (=> b!2696532 m!3077656))

(assert (=> b!2696533 m!3077654))

(declare-fun m!3077658 () Bool)

(assert (=> b!2696533 m!3077658))

(assert (=> d!772603 d!772751))

(declare-fun bs!483956 () Bool)

(declare-fun d!772753 () Bool)

(assert (= bs!483956 (and d!772753 d!772691)))

(declare-fun lambda!100308 () Int)

(assert (=> bs!483956 (= lambda!100308 lambda!100294)))

(declare-fun bs!483957 () Bool)

(assert (= bs!483957 (and d!772753 d!772669)))

(assert (=> bs!483957 (= lambda!100308 lambda!100288)))

(declare-fun bs!483958 () Bool)

(assert (= bs!483958 (and d!772753 d!772689)))

(assert (=> bs!483958 (= lambda!100308 lambda!100293)))

(declare-fun bs!483959 () Bool)

(assert (= bs!483959 (and d!772753 d!772679)))

(assert (=> bs!483959 (= lambda!100308 lambda!100292)))

(declare-fun bs!483960 () Bool)

(assert (= bs!483960 (and d!772753 d!772747)))

(assert (=> bs!483960 (= lambda!100308 lambda!100304)))

(declare-fun bs!483961 () Bool)

(assert (= bs!483961 (and d!772753 d!772703)))

(assert (=> bs!483961 (= lambda!100308 lambda!100297)))

(declare-fun bs!483962 () Bool)

(assert (= bs!483962 (and d!772753 d!772705)))

(assert (=> bs!483962 (= lambda!100308 lambda!100298)))

(declare-fun bs!483963 () Bool)

(assert (= bs!483963 (and d!772753 d!772693)))

(assert (=> bs!483963 (= lambda!100308 lambda!100295)))

(declare-fun bs!483964 () Bool)

(assert (= bs!483964 (and d!772753 d!772695)))

(assert (=> bs!483964 (= lambda!100308 lambda!100296)))

(declare-fun bs!483965 () Bool)

(assert (= bs!483965 (and d!772753 d!772709)))

(assert (=> bs!483965 (= lambda!100308 lambda!100299)))

(declare-fun bs!483966 () Bool)

(assert (= bs!483966 (and d!772753 d!772745)))

(assert (=> bs!483966 (= lambda!100308 lambda!100303)))

(assert (=> d!772753 (= (inv!42205 setElem!21262) (forall!6544 (exprs!2679 setElem!21262) lambda!100308))))

(declare-fun bs!483967 () Bool)

(assert (= bs!483967 d!772753))

(declare-fun m!3077660 () Bool)

(assert (=> bs!483967 m!3077660))

(assert (=> setNonEmpty!21263 d!772753))

(declare-fun bs!483968 () Bool)

(declare-fun d!772755 () Bool)

(assert (= bs!483968 (and d!772755 d!772691)))

(declare-fun lambda!100309 () Int)

(assert (=> bs!483968 (= lambda!100309 lambda!100294)))

(declare-fun bs!483969 () Bool)

(assert (= bs!483969 (and d!772755 d!772669)))

(assert (=> bs!483969 (= lambda!100309 lambda!100288)))

(declare-fun bs!483970 () Bool)

(assert (= bs!483970 (and d!772755 d!772753)))

(assert (=> bs!483970 (= lambda!100309 lambda!100308)))

(declare-fun bs!483971 () Bool)

(assert (= bs!483971 (and d!772755 d!772689)))

(assert (=> bs!483971 (= lambda!100309 lambda!100293)))

(declare-fun bs!483972 () Bool)

(assert (= bs!483972 (and d!772755 d!772679)))

(assert (=> bs!483972 (= lambda!100309 lambda!100292)))

(declare-fun bs!483973 () Bool)

(assert (= bs!483973 (and d!772755 d!772747)))

(assert (=> bs!483973 (= lambda!100309 lambda!100304)))

(declare-fun bs!483974 () Bool)

(assert (= bs!483974 (and d!772755 d!772703)))

(assert (=> bs!483974 (= lambda!100309 lambda!100297)))

(declare-fun bs!483975 () Bool)

(assert (= bs!483975 (and d!772755 d!772705)))

(assert (=> bs!483975 (= lambda!100309 lambda!100298)))

(declare-fun bs!483976 () Bool)

(assert (= bs!483976 (and d!772755 d!772693)))

(assert (=> bs!483976 (= lambda!100309 lambda!100295)))

(declare-fun bs!483977 () Bool)

(assert (= bs!483977 (and d!772755 d!772695)))

(assert (=> bs!483977 (= lambda!100309 lambda!100296)))

(declare-fun bs!483978 () Bool)

(assert (= bs!483978 (and d!772755 d!772709)))

(assert (=> bs!483978 (= lambda!100309 lambda!100299)))

(declare-fun bs!483979 () Bool)

(assert (= bs!483979 (and d!772755 d!772745)))

(assert (=> bs!483979 (= lambda!100309 lambda!100303)))

(assert (=> d!772755 (= (inv!42205 (_1!17994 (_1!17995 (h!36565 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))))) (forall!6544 (exprs!2679 (_1!17994 (_1!17995 (h!36565 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))))) lambda!100309))))

(declare-fun bs!483980 () Bool)

(assert (= bs!483980 d!772755))

(declare-fun m!3077662 () Bool)

(assert (=> bs!483980 m!3077662))

(assert (=> b!2696341 d!772755))

(declare-fun bs!483981 () Bool)

(declare-fun d!772757 () Bool)

(assert (= bs!483981 (and d!772757 d!772669)))

(declare-fun lambda!100310 () Int)

(assert (=> bs!483981 (= lambda!100310 lambda!100288)))

(declare-fun bs!483982 () Bool)

(assert (= bs!483982 (and d!772757 d!772753)))

(assert (=> bs!483982 (= lambda!100310 lambda!100308)))

(declare-fun bs!483983 () Bool)

(assert (= bs!483983 (and d!772757 d!772689)))

(assert (=> bs!483983 (= lambda!100310 lambda!100293)))

(declare-fun bs!483984 () Bool)

(assert (= bs!483984 (and d!772757 d!772679)))

(assert (=> bs!483984 (= lambda!100310 lambda!100292)))

(declare-fun bs!483985 () Bool)

(assert (= bs!483985 (and d!772757 d!772747)))

(assert (=> bs!483985 (= lambda!100310 lambda!100304)))

(declare-fun bs!483986 () Bool)

(assert (= bs!483986 (and d!772757 d!772703)))

(assert (=> bs!483986 (= lambda!100310 lambda!100297)))

(declare-fun bs!483987 () Bool)

(assert (= bs!483987 (and d!772757 d!772705)))

(assert (=> bs!483987 (= lambda!100310 lambda!100298)))

(declare-fun bs!483988 () Bool)

(assert (= bs!483988 (and d!772757 d!772693)))

(assert (=> bs!483988 (= lambda!100310 lambda!100295)))

(declare-fun bs!483989 () Bool)

(assert (= bs!483989 (and d!772757 d!772695)))

(assert (=> bs!483989 (= lambda!100310 lambda!100296)))

(declare-fun bs!483990 () Bool)

(assert (= bs!483990 (and d!772757 d!772709)))

(assert (=> bs!483990 (= lambda!100310 lambda!100299)))

(declare-fun bs!483991 () Bool)

(assert (= bs!483991 (and d!772757 d!772745)))

(assert (=> bs!483991 (= lambda!100310 lambda!100303)))

(declare-fun bs!483992 () Bool)

(assert (= bs!483992 (and d!772757 d!772691)))

(assert (=> bs!483992 (= lambda!100310 lambda!100294)))

(declare-fun bs!483993 () Bool)

(assert (= bs!483993 (and d!772757 d!772755)))

(assert (=> bs!483993 (= lambda!100310 lambda!100309)))

(assert (=> d!772757 (= (inv!42205 setElem!21269) (forall!6544 (exprs!2679 setElem!21269) lambda!100310))))

(declare-fun bs!483994 () Bool)

(assert (= bs!483994 d!772757))

(declare-fun m!3077664 () Bool)

(assert (=> bs!483994 m!3077664))

(assert (=> setNonEmpty!21269 d!772757))

(assert (=> b!2696098 d!772595))

(declare-fun d!772759 () Bool)

(declare-fun lt!952646 () Bool)

(assert (=> d!772759 (= lt!952646 (isEmpty!17747 (list!11748 (_1!17996 lt!952564))))))

(assert (=> d!772759 (= lt!952646 (isEmpty!17748 (c!434615 (_1!17996 lt!952564))))))

(assert (=> d!772759 (= (isEmpty!17746 (_1!17996 lt!952564)) lt!952646)))

(declare-fun bs!483995 () Bool)

(assert (= bs!483995 d!772759))

(assert (=> bs!483995 m!3077265))

(assert (=> bs!483995 m!3077265))

(declare-fun m!3077666 () Bool)

(assert (=> bs!483995 m!3077666))

(declare-fun m!3077668 () Bool)

(assert (=> bs!483995 m!3077668))

(assert (=> b!2696150 d!772759))

(declare-fun d!772761 () Bool)

(declare-fun c!434699 () Bool)

(assert (=> d!772761 (= c!434699 ((_ is Empty!9735) (c!434614 totalInput!354)))))

(declare-fun e!1700406 () List!31244)

(assert (=> d!772761 (= (list!11749 (c!434614 totalInput!354)) e!1700406)))

(declare-fun b!2696536 () Bool)

(declare-fun e!1700407 () List!31244)

(assert (=> b!2696536 (= e!1700407 (list!11751 (xs!12775 (c!434614 totalInput!354))))))

(declare-fun b!2696534 () Bool)

(assert (=> b!2696534 (= e!1700406 Nil!31144)))

(declare-fun b!2696537 () Bool)

(assert (=> b!2696537 (= e!1700407 (++!7645 (list!11749 (left!23981 (c!434614 totalInput!354))) (list!11749 (right!24311 (c!434614 totalInput!354)))))))

(declare-fun b!2696535 () Bool)

(assert (=> b!2696535 (= e!1700406 e!1700407)))

(declare-fun c!434700 () Bool)

(assert (=> b!2696535 (= c!434700 ((_ is Leaf!14856) (c!434614 totalInput!354)))))

(assert (= (and d!772761 c!434699) b!2696534))

(assert (= (and d!772761 (not c!434699)) b!2696535))

(assert (= (and b!2696535 c!434700) b!2696536))

(assert (= (and b!2696535 (not c!434700)) b!2696537))

(assert (=> b!2696536 m!3077583))

(declare-fun m!3077670 () Bool)

(assert (=> b!2696537 m!3077670))

(declare-fun m!3077672 () Bool)

(assert (=> b!2696537 m!3077672))

(assert (=> b!2696537 m!3077670))

(assert (=> b!2696537 m!3077672))

(declare-fun m!3077674 () Bool)

(assert (=> b!2696537 m!3077674))

(assert (=> d!772645 d!772761))

(declare-fun d!772763 () Bool)

(assert (=> d!772763 (= (inv!42190 (tag!5257 (h!36568 (t!225255 rules!1381)))) (= (mod (str.len (value!153074 (tag!5257 (h!36568 (t!225255 rules!1381))))) 2) 0))))

(assert (=> b!2696329 d!772763))

(declare-fun d!772765 () Bool)

(declare-fun res!1132744 () Bool)

(declare-fun e!1700408 () Bool)

(assert (=> d!772765 (=> (not res!1132744) (not e!1700408))))

(assert (=> d!772765 (= res!1132744 (semiInverseModEq!1963 (toChars!6570 (transformation!4753 (h!36568 (t!225255 rules!1381)))) (toValue!6711 (transformation!4753 (h!36568 (t!225255 rules!1381))))))))

(assert (=> d!772765 (= (inv!42199 (transformation!4753 (h!36568 (t!225255 rules!1381)))) e!1700408)))

(declare-fun b!2696538 () Bool)

(assert (=> b!2696538 (= e!1700408 (equivClasses!1864 (toChars!6570 (transformation!4753 (h!36568 (t!225255 rules!1381)))) (toValue!6711 (transformation!4753 (h!36568 (t!225255 rules!1381))))))))

(assert (= (and d!772765 res!1132744) b!2696538))

(declare-fun m!3077676 () Bool)

(assert (=> d!772765 m!3077676))

(declare-fun m!3077678 () Bool)

(assert (=> b!2696538 m!3077678))

(assert (=> b!2696329 d!772765))

(declare-fun d!772767 () Bool)

(assert (=> d!772767 (= (inv!42204 (xs!12775 (c!434614 totalInput!354))) (<= (size!24053 (innerList!9795 (xs!12775 (c!434614 totalInput!354)))) 2147483647))))

(declare-fun bs!483996 () Bool)

(assert (= bs!483996 d!772767))

(declare-fun m!3077680 () Bool)

(assert (=> bs!483996 m!3077680))

(assert (=> b!2696278 d!772767))

(declare-fun d!772769 () Bool)

(assert (=> d!772769 true))

(declare-fun order!17067 () Int)

(declare-fun lambda!100313 () Int)

(declare-fun dynLambda!13452 (Int Int) Int)

(assert (=> d!772769 (< (dynLambda!13451 order!17065 (toValue!6711 (transformation!4753 (h!36568 rules!1381)))) (dynLambda!13452 order!17067 lambda!100313))))

(declare-fun Forall2!800 (Int) Bool)

(assert (=> d!772769 (= (equivClasses!1864 (toChars!6570 (transformation!4753 (h!36568 rules!1381))) (toValue!6711 (transformation!4753 (h!36568 rules!1381)))) (Forall2!800 lambda!100313))))

(declare-fun bs!483997 () Bool)

(assert (= bs!483997 d!772769))

(declare-fun m!3077682 () Bool)

(assert (=> bs!483997 m!3077682))

(assert (=> b!2696129 d!772769))

(declare-fun d!772771 () Bool)

(assert (=> d!772771 (= (list!11747 (_2!17996 lt!952573)) (list!11749 (c!434614 (_2!17996 lt!952573))))))

(declare-fun bs!483998 () Bool)

(assert (= bs!483998 d!772771))

(declare-fun m!3077684 () Bool)

(assert (=> bs!483998 m!3077684))

(assert (=> b!2696175 d!772771))

(assert (=> b!2696175 d!772645))

(assert (=> b!2696094 d!772655))

(assert (=> b!2696167 d!772717))

(assert (=> b!2696167 d!772719))

(assert (=> b!2696167 d!772721))

(assert (=> b!2696167 d!772723))

(assert (=> b!2696167 d!772725))

(declare-fun d!772773 () Bool)

(declare-fun e!1700411 () Bool)

(assert (=> d!772773 e!1700411))

(declare-fun res!1132747 () Bool)

(assert (=> d!772773 (=> (not res!1132747) (not e!1700411))))

(assert (=> d!772773 (= res!1132747 (isBalanced!2945 (prepend!1085 (c!434615 (_1!17996 lt!952568)) (_1!17998 (v!32920 lt!952566)))))))

(declare-fun lt!952647 () BalanceConc!19086)

(assert (=> d!772773 (= lt!952647 (BalanceConc!19087 (prepend!1085 (c!434615 (_1!17996 lt!952568)) (_1!17998 (v!32920 lt!952566)))))))

(assert (=> d!772773 (= (prepend!1084 (_1!17996 lt!952568) (_1!17998 (v!32920 lt!952566))) lt!952647)))

(declare-fun b!2696543 () Bool)

(assert (=> b!2696543 (= e!1700411 (= (list!11748 lt!952647) (Cons!31147 (_1!17998 (v!32920 lt!952566)) (list!11748 (_1!17996 lt!952568)))))))

(assert (= (and d!772773 res!1132747) b!2696543))

(declare-fun m!3077686 () Bool)

(assert (=> d!772773 m!3077686))

(assert (=> d!772773 m!3077686))

(declare-fun m!3077688 () Bool)

(assert (=> d!772773 m!3077688))

(declare-fun m!3077690 () Bool)

(assert (=> b!2696543 m!3077690))

(declare-fun m!3077692 () Bool)

(assert (=> b!2696543 m!3077692))

(assert (=> b!2696154 d!772773))

(declare-fun b!2696544 () Bool)

(declare-fun e!1700415 () Bool)

(declare-fun e!1700414 () Bool)

(assert (=> b!2696544 (= e!1700415 e!1700414)))

(declare-fun res!1132750 () Bool)

(declare-fun lt!952649 () tuple2!30752)

(assert (=> b!2696544 (= res!1132750 (< (size!24051 (_2!17996 lt!952649)) (size!24051 (_2!17998 (v!32920 lt!952566)))))))

(assert (=> b!2696544 (=> (not res!1132750) (not e!1700414))))

(declare-fun b!2696545 () Bool)

(declare-fun e!1700413 () tuple2!30752)

(assert (=> b!2696545 (= e!1700413 (tuple2!30753 (BalanceConc!19087 Empty!9736) (_2!17998 (v!32920 lt!952566))))))

(declare-fun e!1700412 () Bool)

(declare-fun b!2696546 () Bool)

(assert (=> b!2696546 (= e!1700412 (= (list!11747 (_2!17996 lt!952649)) (_2!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 (_2!17998 (v!32920 lt!952566)))))))))

(declare-fun b!2696547 () Bool)

(declare-fun lt!952650 () tuple2!30752)

(declare-fun lt!952648 () Option!6146)

(assert (=> b!2696547 (= e!1700413 (tuple2!30753 (prepend!1084 (_1!17996 lt!952650) (_1!17998 (v!32920 lt!952648))) (_2!17996 lt!952650)))))

(assert (=> b!2696547 (= lt!952650 (lexRec!611 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952648))))))

(declare-fun b!2696548 () Bool)

(declare-fun res!1132749 () Bool)

(assert (=> b!2696548 (=> (not res!1132749) (not e!1700412))))

(assert (=> b!2696548 (= res!1132749 (= (list!11748 (_1!17996 lt!952649)) (_1!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 (_2!17998 (v!32920 lt!952566)))))))))

(declare-fun b!2696550 () Bool)

(assert (=> b!2696550 (= e!1700414 (not (isEmpty!17746 (_1!17996 lt!952649))))))

(declare-fun d!772775 () Bool)

(assert (=> d!772775 e!1700412))

(declare-fun res!1132748 () Bool)

(assert (=> d!772775 (=> (not res!1132748) (not e!1700412))))

(assert (=> d!772775 (= res!1132748 e!1700415)))

(declare-fun c!434702 () Bool)

(assert (=> d!772775 (= c!434702 (> (size!24052 (_1!17996 lt!952649)) 0))))

(assert (=> d!772775 (= lt!952649 e!1700413)))

(declare-fun c!434701 () Bool)

(assert (=> d!772775 (= c!434701 ((_ is Some!6145) lt!952648))))

(assert (=> d!772775 (= lt!952648 (maxPrefixZipperSequence!1010 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952566))))))

(assert (=> d!772775 (= (lexRec!611 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952566))) lt!952649)))

(declare-fun b!2696549 () Bool)

(assert (=> b!2696549 (= e!1700415 (= (list!11747 (_2!17996 lt!952649)) (list!11747 (_2!17998 (v!32920 lt!952566)))))))

(assert (= (and d!772775 c!434701) b!2696547))

(assert (= (and d!772775 (not c!434701)) b!2696545))

(assert (= (and d!772775 c!434702) b!2696544))

(assert (= (and d!772775 (not c!434702)) b!2696549))

(assert (= (and b!2696544 res!1132750) b!2696550))

(assert (= (and d!772775 res!1132748) b!2696548))

(assert (= (and b!2696548 res!1132749) b!2696546))

(declare-fun m!3077694 () Bool)

(assert (=> b!2696549 m!3077694))

(declare-fun m!3077696 () Bool)

(assert (=> b!2696549 m!3077696))

(assert (=> b!2696546 m!3077694))

(assert (=> b!2696546 m!3077696))

(assert (=> b!2696546 m!3077696))

(declare-fun m!3077698 () Bool)

(assert (=> b!2696546 m!3077698))

(declare-fun m!3077700 () Bool)

(assert (=> d!772775 m!3077700))

(declare-fun m!3077702 () Bool)

(assert (=> d!772775 m!3077702))

(declare-fun m!3077704 () Bool)

(assert (=> b!2696547 m!3077704))

(declare-fun m!3077706 () Bool)

(assert (=> b!2696547 m!3077706))

(declare-fun m!3077708 () Bool)

(assert (=> b!2696544 m!3077708))

(declare-fun m!3077710 () Bool)

(assert (=> b!2696544 m!3077710))

(declare-fun m!3077712 () Bool)

(assert (=> b!2696548 m!3077712))

(assert (=> b!2696548 m!3077696))

(assert (=> b!2696548 m!3077696))

(assert (=> b!2696548 m!3077698))

(declare-fun m!3077714 () Bool)

(assert (=> b!2696550 m!3077714))

(assert (=> b!2696154 d!772775))

(declare-fun d!772777 () Bool)

(declare-fun lt!952651 () Int)

(assert (=> d!772777 (>= lt!952651 0)))

(declare-fun e!1700416 () Int)

(assert (=> d!772777 (= lt!952651 e!1700416)))

(declare-fun c!434703 () Bool)

(assert (=> d!772777 (= c!434703 ((_ is Nil!31144) lt!952577))))

(assert (=> d!772777 (= (size!24053 lt!952577) lt!952651)))

(declare-fun b!2696551 () Bool)

(assert (=> b!2696551 (= e!1700416 0)))

(declare-fun b!2696552 () Bool)

(assert (=> b!2696552 (= e!1700416 (+ 1 (size!24053 (t!225251 lt!952577))))))

(assert (= (and d!772777 c!434703) b!2696551))

(assert (= (and d!772777 (not c!434703)) b!2696552))

(declare-fun m!3077716 () Bool)

(assert (=> b!2696552 m!3077716))

(assert (=> b!2696193 d!772777))

(declare-fun d!772779 () Bool)

(declare-fun lt!952652 () Int)

(assert (=> d!772779 (>= lt!952652 0)))

(declare-fun e!1700417 () Int)

(assert (=> d!772779 (= lt!952652 e!1700417)))

(declare-fun c!434704 () Bool)

(assert (=> d!772779 (= c!434704 ((_ is Nil!31144) (list!11747 treated!26)))))

(assert (=> d!772779 (= (size!24053 (list!11747 treated!26)) lt!952652)))

(declare-fun b!2696553 () Bool)

(assert (=> b!2696553 (= e!1700417 0)))

(declare-fun b!2696554 () Bool)

(assert (=> b!2696554 (= e!1700417 (+ 1 (size!24053 (t!225251 (list!11747 treated!26)))))))

(assert (= (and d!772779 c!434704) b!2696553))

(assert (= (and d!772779 (not c!434704)) b!2696554))

(declare-fun m!3077718 () Bool)

(assert (=> b!2696554 m!3077718))

(assert (=> b!2696193 d!772779))

(assert (=> b!2696193 d!772675))

(declare-fun d!772781 () Bool)

(assert (=> d!772781 (= (list!11747 (_2!17996 lt!952564)) (list!11749 (c!434614 (_2!17996 lt!952564))))))

(declare-fun bs!483999 () Bool)

(assert (= bs!483999 d!772781))

(declare-fun m!3077720 () Bool)

(assert (=> bs!483999 m!3077720))

(assert (=> b!2696146 d!772781))

(declare-fun b!2696555 () Bool)

(declare-fun e!1700420 () Bool)

(declare-fun lt!952653 () tuple2!30754)

(assert (=> b!2696555 (= e!1700420 (not (isEmpty!17747 (_1!17997 lt!952653))))))

(declare-fun b!2696556 () Bool)

(declare-fun e!1700419 () tuple2!30754)

(declare-fun lt!952655 () Option!6147)

(declare-fun lt!952654 () tuple2!30754)

(assert (=> b!2696556 (= e!1700419 (tuple2!30755 (Cons!31147 (_1!17999 (v!32922 lt!952655)) (_1!17997 lt!952654)) (_2!17997 lt!952654)))))

(assert (=> b!2696556 (= lt!952654 (lexList!1198 thiss!12257 rules!1381 (_2!17999 (v!32922 lt!952655))))))

(declare-fun b!2696557 () Bool)

(assert (=> b!2696557 (= e!1700419 (tuple2!30755 Nil!31147 (list!11747 treated!26)))))

(declare-fun b!2696558 () Bool)

(declare-fun e!1700418 () Bool)

(assert (=> b!2696558 (= e!1700418 (= (_2!17997 lt!952653) (list!11747 treated!26)))))

(declare-fun b!2696559 () Bool)

(assert (=> b!2696559 (= e!1700418 e!1700420)))

(declare-fun res!1132751 () Bool)

(assert (=> b!2696559 (= res!1132751 (< (size!24053 (_2!17997 lt!952653)) (size!24053 (list!11747 treated!26))))))

(assert (=> b!2696559 (=> (not res!1132751) (not e!1700420))))

(declare-fun d!772783 () Bool)

(assert (=> d!772783 e!1700418))

(declare-fun c!434705 () Bool)

(assert (=> d!772783 (= c!434705 (> (size!24055 (_1!17997 lt!952653)) 0))))

(assert (=> d!772783 (= lt!952653 e!1700419)))

(declare-fun c!434706 () Bool)

(assert (=> d!772783 (= c!434706 ((_ is Some!6146) lt!952655))))

(assert (=> d!772783 (= lt!952655 (maxPrefix!2353 thiss!12257 rules!1381 (list!11747 treated!26)))))

(assert (=> d!772783 (= (lexList!1198 thiss!12257 rules!1381 (list!11747 treated!26)) lt!952653)))

(assert (= (and d!772783 c!434706) b!2696556))

(assert (= (and d!772783 (not c!434706)) b!2696557))

(assert (= (and d!772783 c!434705) b!2696559))

(assert (= (and d!772783 (not c!434705)) b!2696558))

(assert (= (and b!2696559 res!1132751) b!2696555))

(declare-fun m!3077722 () Bool)

(assert (=> b!2696555 m!3077722))

(declare-fun m!3077724 () Bool)

(assert (=> b!2696556 m!3077724))

(declare-fun m!3077726 () Bool)

(assert (=> b!2696559 m!3077726))

(assert (=> b!2696559 m!3077211))

(assert (=> b!2696559 m!3077353))

(declare-fun m!3077728 () Bool)

(assert (=> d!772783 m!3077728))

(assert (=> d!772783 m!3077211))

(declare-fun m!3077730 () Bool)

(assert (=> d!772783 m!3077730))

(assert (=> b!2696146 d!772783))

(assert (=> b!2696146 d!772649))

(declare-fun d!772785 () Bool)

(declare-fun res!1132758 () Bool)

(declare-fun e!1700425 () Bool)

(assert (=> d!772785 (=> (not res!1132758) (not e!1700425))))

(declare-fun valid!2747 (MutableMap!3444) Bool)

(assert (=> d!772785 (= res!1132758 (valid!2747 (cache!3587 cacheDown!499)))))

(assert (=> d!772785 (= (validCacheMapDown!357 (cache!3587 cacheDown!499)) e!1700425)))

(declare-fun b!2696566 () Bool)

(declare-fun res!1132759 () Bool)

(assert (=> b!2696566 (=> (not res!1132759) (not e!1700425))))

(declare-fun invariantList!443 (List!31243) Bool)

(declare-datatypes ((ListMap!1219 0))(
  ( (ListMap!1220 (toList!1807 List!31243)) )
))
(declare-fun map!6855 (MutableMap!3444) ListMap!1219)

(assert (=> b!2696566 (= res!1132759 (invariantList!443 (toList!1807 (map!6855 (cache!3587 cacheDown!499)))))))

(declare-fun b!2696567 () Bool)

(declare-fun lambda!100316 () Int)

(declare-fun forall!6547 (List!31243 Int) Bool)

(assert (=> b!2696567 (= e!1700425 (forall!6547 (toList!1807 (map!6855 (cache!3587 cacheDown!499))) lambda!100316))))

(assert (= (and d!772785 res!1132758) b!2696566))

(assert (= (and b!2696566 res!1132759) b!2696567))

(declare-fun m!3077733 () Bool)

(assert (=> d!772785 m!3077733))

(declare-fun m!3077735 () Bool)

(assert (=> b!2696566 m!3077735))

(declare-fun m!3077737 () Bool)

(assert (=> b!2696566 m!3077737))

(assert (=> b!2696567 m!3077735))

(declare-fun m!3077739 () Bool)

(assert (=> b!2696567 m!3077739))

(assert (=> b!2696182 d!772785))

(declare-fun d!772787 () Bool)

(declare-fun c!434707 () Bool)

(assert (=> d!772787 (= c!434707 ((_ is Node!9735) (left!23981 (c!434614 input!780))))))

(declare-fun e!1700426 () Bool)

(assert (=> d!772787 (= (inv!42198 (left!23981 (c!434614 input!780))) e!1700426)))

(declare-fun b!2696568 () Bool)

(assert (=> b!2696568 (= e!1700426 (inv!42200 (left!23981 (c!434614 input!780))))))

(declare-fun b!2696569 () Bool)

(declare-fun e!1700427 () Bool)

(assert (=> b!2696569 (= e!1700426 e!1700427)))

(declare-fun res!1132760 () Bool)

(assert (=> b!2696569 (= res!1132760 (not ((_ is Leaf!14856) (left!23981 (c!434614 input!780)))))))

(assert (=> b!2696569 (=> res!1132760 e!1700427)))

(declare-fun b!2696570 () Bool)

(assert (=> b!2696570 (= e!1700427 (inv!42201 (left!23981 (c!434614 input!780))))))

(assert (= (and d!772787 c!434707) b!2696568))

(assert (= (and d!772787 (not c!434707)) b!2696569))

(assert (= (and b!2696569 (not res!1132760)) b!2696570))

(declare-fun m!3077741 () Bool)

(assert (=> b!2696568 m!3077741))

(declare-fun m!3077743 () Bool)

(assert (=> b!2696570 m!3077743))

(assert (=> b!2696317 d!772787))

(declare-fun d!772789 () Bool)

(declare-fun c!434708 () Bool)

(assert (=> d!772789 (= c!434708 ((_ is Node!9735) (right!24311 (c!434614 input!780))))))

(declare-fun e!1700428 () Bool)

(assert (=> d!772789 (= (inv!42198 (right!24311 (c!434614 input!780))) e!1700428)))

(declare-fun b!2696571 () Bool)

(assert (=> b!2696571 (= e!1700428 (inv!42200 (right!24311 (c!434614 input!780))))))

(declare-fun b!2696572 () Bool)

(declare-fun e!1700429 () Bool)

(assert (=> b!2696572 (= e!1700428 e!1700429)))

(declare-fun res!1132761 () Bool)

(assert (=> b!2696572 (= res!1132761 (not ((_ is Leaf!14856) (right!24311 (c!434614 input!780)))))))

(assert (=> b!2696572 (=> res!1132761 e!1700429)))

(declare-fun b!2696573 () Bool)

(assert (=> b!2696573 (= e!1700429 (inv!42201 (right!24311 (c!434614 input!780))))))

(assert (= (and d!772789 c!434708) b!2696571))

(assert (= (and d!772789 (not c!434708)) b!2696572))

(assert (= (and b!2696572 (not res!1132761)) b!2696573))

(declare-fun m!3077745 () Bool)

(assert (=> b!2696571 m!3077745))

(declare-fun m!3077747 () Bool)

(assert (=> b!2696573 m!3077747))

(assert (=> b!2696317 d!772789))

(declare-fun d!772791 () Bool)

(declare-fun e!1700430 () Bool)

(assert (=> d!772791 e!1700430))

(declare-fun res!1132762 () Bool)

(assert (=> d!772791 (=> (not res!1132762) (not e!1700430))))

(assert (=> d!772791 (= res!1132762 (isBalanced!2945 (prepend!1085 (c!434615 (_1!17996 lt!952574)) (_1!17998 (v!32920 lt!952572)))))))

(declare-fun lt!952656 () BalanceConc!19086)

(assert (=> d!772791 (= lt!952656 (BalanceConc!19087 (prepend!1085 (c!434615 (_1!17996 lt!952574)) (_1!17998 (v!32920 lt!952572)))))))

(assert (=> d!772791 (= (prepend!1084 (_1!17996 lt!952574) (_1!17998 (v!32920 lt!952572))) lt!952656)))

(declare-fun b!2696574 () Bool)

(assert (=> b!2696574 (= e!1700430 (= (list!11748 lt!952656) (Cons!31147 (_1!17998 (v!32920 lt!952572)) (list!11748 (_1!17996 lt!952574)))))))

(assert (= (and d!772791 res!1132762) b!2696574))

(declare-fun m!3077749 () Bool)

(assert (=> d!772791 m!3077749))

(assert (=> d!772791 m!3077749))

(declare-fun m!3077751 () Bool)

(assert (=> d!772791 m!3077751))

(declare-fun m!3077753 () Bool)

(assert (=> b!2696574 m!3077753))

(declare-fun m!3077755 () Bool)

(assert (=> b!2696574 m!3077755))

(assert (=> b!2696173 d!772791))

(declare-fun b!2696575 () Bool)

(declare-fun e!1700434 () Bool)

(declare-fun e!1700433 () Bool)

(assert (=> b!2696575 (= e!1700434 e!1700433)))

(declare-fun res!1132765 () Bool)

(declare-fun lt!952658 () tuple2!30752)

(assert (=> b!2696575 (= res!1132765 (< (size!24051 (_2!17996 lt!952658)) (size!24051 (_2!17998 (v!32920 lt!952572)))))))

(assert (=> b!2696575 (=> (not res!1132765) (not e!1700433))))

(declare-fun b!2696576 () Bool)

(declare-fun e!1700432 () tuple2!30752)

(assert (=> b!2696576 (= e!1700432 (tuple2!30753 (BalanceConc!19087 Empty!9736) (_2!17998 (v!32920 lt!952572))))))

(declare-fun e!1700431 () Bool)

(declare-fun b!2696577 () Bool)

(assert (=> b!2696577 (= e!1700431 (= (list!11747 (_2!17996 lt!952658)) (_2!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 (_2!17998 (v!32920 lt!952572)))))))))

(declare-fun b!2696578 () Bool)

(declare-fun lt!952659 () tuple2!30752)

(declare-fun lt!952657 () Option!6146)

(assert (=> b!2696578 (= e!1700432 (tuple2!30753 (prepend!1084 (_1!17996 lt!952659) (_1!17998 (v!32920 lt!952657))) (_2!17996 lt!952659)))))

(assert (=> b!2696578 (= lt!952659 (lexRec!611 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952657))))))

(declare-fun b!2696579 () Bool)

(declare-fun res!1132764 () Bool)

(assert (=> b!2696579 (=> (not res!1132764) (not e!1700431))))

(assert (=> b!2696579 (= res!1132764 (= (list!11748 (_1!17996 lt!952658)) (_1!17997 (lexList!1198 thiss!12257 rules!1381 (list!11747 (_2!17998 (v!32920 lt!952572)))))))))

(declare-fun b!2696581 () Bool)

(assert (=> b!2696581 (= e!1700433 (not (isEmpty!17746 (_1!17996 lt!952658))))))

(declare-fun d!772793 () Bool)

(assert (=> d!772793 e!1700431))

(declare-fun res!1132763 () Bool)

(assert (=> d!772793 (=> (not res!1132763) (not e!1700431))))

(assert (=> d!772793 (= res!1132763 e!1700434)))

(declare-fun c!434710 () Bool)

(assert (=> d!772793 (= c!434710 (> (size!24052 (_1!17996 lt!952658)) 0))))

(assert (=> d!772793 (= lt!952658 e!1700432)))

(declare-fun c!434709 () Bool)

(assert (=> d!772793 (= c!434709 ((_ is Some!6145) lt!952657))))

(assert (=> d!772793 (= lt!952657 (maxPrefixZipperSequence!1010 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952572))))))

(assert (=> d!772793 (= (lexRec!611 thiss!12257 rules!1381 (_2!17998 (v!32920 lt!952572))) lt!952658)))

(declare-fun b!2696580 () Bool)

(assert (=> b!2696580 (= e!1700434 (= (list!11747 (_2!17996 lt!952658)) (list!11747 (_2!17998 (v!32920 lt!952572)))))))

(assert (= (and d!772793 c!434709) b!2696578))

(assert (= (and d!772793 (not c!434709)) b!2696576))

(assert (= (and d!772793 c!434710) b!2696575))

(assert (= (and d!772793 (not c!434710)) b!2696580))

(assert (= (and b!2696575 res!1132765) b!2696581))

(assert (= (and d!772793 res!1132763) b!2696579))

(assert (= (and b!2696579 res!1132764) b!2696577))

(declare-fun m!3077757 () Bool)

(assert (=> b!2696580 m!3077757))

(declare-fun m!3077759 () Bool)

(assert (=> b!2696580 m!3077759))

(assert (=> b!2696577 m!3077757))

(assert (=> b!2696577 m!3077759))

(assert (=> b!2696577 m!3077759))

(declare-fun m!3077761 () Bool)

(assert (=> b!2696577 m!3077761))

(declare-fun m!3077763 () Bool)

(assert (=> d!772793 m!3077763))

(declare-fun m!3077765 () Bool)

(assert (=> d!772793 m!3077765))

(declare-fun m!3077767 () Bool)

(assert (=> b!2696578 m!3077767))

(declare-fun m!3077769 () Bool)

(assert (=> b!2696578 m!3077769))

(declare-fun m!3077771 () Bool)

(assert (=> b!2696575 m!3077771))

(declare-fun m!3077773 () Bool)

(assert (=> b!2696575 m!3077773))

(declare-fun m!3077775 () Bool)

(assert (=> b!2696579 m!3077775))

(assert (=> b!2696579 m!3077759))

(assert (=> b!2696579 m!3077759))

(assert (=> b!2696579 m!3077761))

(declare-fun m!3077777 () Bool)

(assert (=> b!2696581 m!3077777))

(assert (=> b!2696173 d!772793))

(declare-fun bs!484000 () Bool)

(declare-fun d!772795 () Bool)

(assert (= bs!484000 (and d!772795 d!772669)))

(declare-fun lambda!100317 () Int)

(assert (=> bs!484000 (= lambda!100317 lambda!100288)))

(declare-fun bs!484001 () Bool)

(assert (= bs!484001 (and d!772795 d!772753)))

(assert (=> bs!484001 (= lambda!100317 lambda!100308)))

(declare-fun bs!484002 () Bool)

(assert (= bs!484002 (and d!772795 d!772757)))

(assert (=> bs!484002 (= lambda!100317 lambda!100310)))

(declare-fun bs!484003 () Bool)

(assert (= bs!484003 (and d!772795 d!772689)))

(assert (=> bs!484003 (= lambda!100317 lambda!100293)))

(declare-fun bs!484004 () Bool)

(assert (= bs!484004 (and d!772795 d!772679)))

(assert (=> bs!484004 (= lambda!100317 lambda!100292)))

(declare-fun bs!484005 () Bool)

(assert (= bs!484005 (and d!772795 d!772747)))

(assert (=> bs!484005 (= lambda!100317 lambda!100304)))

(declare-fun bs!484006 () Bool)

(assert (= bs!484006 (and d!772795 d!772703)))

(assert (=> bs!484006 (= lambda!100317 lambda!100297)))

(declare-fun bs!484007 () Bool)

(assert (= bs!484007 (and d!772795 d!772705)))

(assert (=> bs!484007 (= lambda!100317 lambda!100298)))

(declare-fun bs!484008 () Bool)

(assert (= bs!484008 (and d!772795 d!772693)))

(assert (=> bs!484008 (= lambda!100317 lambda!100295)))

(declare-fun bs!484009 () Bool)

(assert (= bs!484009 (and d!772795 d!772695)))

(assert (=> bs!484009 (= lambda!100317 lambda!100296)))

(declare-fun bs!484010 () Bool)

(assert (= bs!484010 (and d!772795 d!772709)))

(assert (=> bs!484010 (= lambda!100317 lambda!100299)))

(declare-fun bs!484011 () Bool)

(assert (= bs!484011 (and d!772795 d!772745)))

(assert (=> bs!484011 (= lambda!100317 lambda!100303)))

(declare-fun bs!484012 () Bool)

(assert (= bs!484012 (and d!772795 d!772691)))

(assert (=> bs!484012 (= lambda!100317 lambda!100294)))

(declare-fun bs!484013 () Bool)

(assert (= bs!484013 (and d!772795 d!772755)))

(assert (=> bs!484013 (= lambda!100317 lambda!100309)))

(assert (=> d!772795 (= (inv!42205 (_2!17992 (_1!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))))) (forall!6544 (exprs!2679 (_2!17992 (_1!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))))) lambda!100317))))

(declare-fun bs!484014 () Bool)

(assert (= bs!484014 d!772795))

(declare-fun m!3077779 () Bool)

(assert (=> bs!484014 m!3077779))

(assert (=> b!2696285 d!772795))

(declare-fun bs!484015 () Bool)

(declare-fun d!772797 () Bool)

(assert (= bs!484015 (and d!772797 d!772669)))

(declare-fun lambda!100318 () Int)

(assert (=> bs!484015 (= lambda!100318 lambda!100288)))

(declare-fun bs!484016 () Bool)

(assert (= bs!484016 (and d!772797 d!772753)))

(assert (=> bs!484016 (= lambda!100318 lambda!100308)))

(declare-fun bs!484017 () Bool)

(assert (= bs!484017 (and d!772797 d!772795)))

(assert (=> bs!484017 (= lambda!100318 lambda!100317)))

(declare-fun bs!484018 () Bool)

(assert (= bs!484018 (and d!772797 d!772757)))

(assert (=> bs!484018 (= lambda!100318 lambda!100310)))

(declare-fun bs!484019 () Bool)

(assert (= bs!484019 (and d!772797 d!772689)))

(assert (=> bs!484019 (= lambda!100318 lambda!100293)))

(declare-fun bs!484020 () Bool)

(assert (= bs!484020 (and d!772797 d!772679)))

(assert (=> bs!484020 (= lambda!100318 lambda!100292)))

(declare-fun bs!484021 () Bool)

(assert (= bs!484021 (and d!772797 d!772747)))

(assert (=> bs!484021 (= lambda!100318 lambda!100304)))

(declare-fun bs!484022 () Bool)

(assert (= bs!484022 (and d!772797 d!772703)))

(assert (=> bs!484022 (= lambda!100318 lambda!100297)))

(declare-fun bs!484023 () Bool)

(assert (= bs!484023 (and d!772797 d!772705)))

(assert (=> bs!484023 (= lambda!100318 lambda!100298)))

(declare-fun bs!484024 () Bool)

(assert (= bs!484024 (and d!772797 d!772693)))

(assert (=> bs!484024 (= lambda!100318 lambda!100295)))

(declare-fun bs!484025 () Bool)

(assert (= bs!484025 (and d!772797 d!772695)))

(assert (=> bs!484025 (= lambda!100318 lambda!100296)))

(declare-fun bs!484026 () Bool)

(assert (= bs!484026 (and d!772797 d!772709)))

(assert (=> bs!484026 (= lambda!100318 lambda!100299)))

(declare-fun bs!484027 () Bool)

(assert (= bs!484027 (and d!772797 d!772745)))

(assert (=> bs!484027 (= lambda!100318 lambda!100303)))

(declare-fun bs!484028 () Bool)

(assert (= bs!484028 (and d!772797 d!772691)))

(assert (=> bs!484028 (= lambda!100318 lambda!100294)))

(declare-fun bs!484029 () Bool)

(assert (= bs!484029 (and d!772797 d!772755)))

(assert (=> bs!484029 (= lambda!100318 lambda!100309)))

(assert (=> d!772797 (= (inv!42205 (_2!17992 (_1!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))))) (forall!6544 (exprs!2679 (_2!17992 (_1!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))))) lambda!100318))))

(declare-fun bs!484030 () Bool)

(assert (= bs!484030 d!772797))

(declare-fun m!3077781 () Bool)

(assert (=> bs!484030 m!3077781))

(assert (=> b!2696282 d!772797))

(assert (=> b!2696179 d!772751))

(declare-fun d!772799 () Bool)

(declare-fun c!434711 () Bool)

(assert (=> d!772799 (= c!434711 ((_ is Node!9735) (left!23981 (c!434614 treated!26))))))

(declare-fun e!1700435 () Bool)

(assert (=> d!772799 (= (inv!42198 (left!23981 (c!434614 treated!26))) e!1700435)))

(declare-fun b!2696582 () Bool)

(assert (=> b!2696582 (= e!1700435 (inv!42200 (left!23981 (c!434614 treated!26))))))

(declare-fun b!2696583 () Bool)

(declare-fun e!1700436 () Bool)

(assert (=> b!2696583 (= e!1700435 e!1700436)))

(declare-fun res!1132766 () Bool)

(assert (=> b!2696583 (= res!1132766 (not ((_ is Leaf!14856) (left!23981 (c!434614 treated!26)))))))

(assert (=> b!2696583 (=> res!1132766 e!1700436)))

(declare-fun b!2696584 () Bool)

(assert (=> b!2696584 (= e!1700436 (inv!42201 (left!23981 (c!434614 treated!26))))))

(assert (= (and d!772799 c!434711) b!2696582))

(assert (= (and d!772799 (not c!434711)) b!2696583))

(assert (= (and b!2696583 (not res!1132766)) b!2696584))

(declare-fun m!3077783 () Bool)

(assert (=> b!2696582 m!3077783))

(declare-fun m!3077785 () Bool)

(assert (=> b!2696584 m!3077785))

(assert (=> b!2696218 d!772799))

(declare-fun d!772801 () Bool)

(declare-fun c!434712 () Bool)

(assert (=> d!772801 (= c!434712 ((_ is Node!9735) (right!24311 (c!434614 treated!26))))))

(declare-fun e!1700437 () Bool)

(assert (=> d!772801 (= (inv!42198 (right!24311 (c!434614 treated!26))) e!1700437)))

(declare-fun b!2696585 () Bool)

(assert (=> b!2696585 (= e!1700437 (inv!42200 (right!24311 (c!434614 treated!26))))))

(declare-fun b!2696586 () Bool)

(declare-fun e!1700438 () Bool)

(assert (=> b!2696586 (= e!1700437 e!1700438)))

(declare-fun res!1132767 () Bool)

(assert (=> b!2696586 (= res!1132767 (not ((_ is Leaf!14856) (right!24311 (c!434614 treated!26)))))))

(assert (=> b!2696586 (=> res!1132767 e!1700438)))

(declare-fun b!2696587 () Bool)

(assert (=> b!2696587 (= e!1700438 (inv!42201 (right!24311 (c!434614 treated!26))))))

(assert (= (and d!772801 c!434712) b!2696585))

(assert (= (and d!772801 (not c!434712)) b!2696586))

(assert (= (and b!2696586 (not res!1132767)) b!2696587))

(declare-fun m!3077787 () Bool)

(assert (=> b!2696585 m!3077787))

(declare-fun m!3077789 () Bool)

(assert (=> b!2696587 m!3077789))

(assert (=> b!2696218 d!772801))

(declare-fun bs!484031 () Bool)

(declare-fun d!772803 () Bool)

(assert (= bs!484031 (and d!772803 d!772669)))

(declare-fun lambda!100319 () Int)

(assert (=> bs!484031 (= lambda!100319 lambda!100288)))

(declare-fun bs!484032 () Bool)

(assert (= bs!484032 (and d!772803 d!772753)))

(assert (=> bs!484032 (= lambda!100319 lambda!100308)))

(declare-fun bs!484033 () Bool)

(assert (= bs!484033 (and d!772803 d!772795)))

(assert (=> bs!484033 (= lambda!100319 lambda!100317)))

(declare-fun bs!484034 () Bool)

(assert (= bs!484034 (and d!772803 d!772757)))

(assert (=> bs!484034 (= lambda!100319 lambda!100310)))

(declare-fun bs!484035 () Bool)

(assert (= bs!484035 (and d!772803 d!772689)))

(assert (=> bs!484035 (= lambda!100319 lambda!100293)))

(declare-fun bs!484036 () Bool)

(assert (= bs!484036 (and d!772803 d!772679)))

(assert (=> bs!484036 (= lambda!100319 lambda!100292)))

(declare-fun bs!484037 () Bool)

(assert (= bs!484037 (and d!772803 d!772747)))

(assert (=> bs!484037 (= lambda!100319 lambda!100304)))

(declare-fun bs!484038 () Bool)

(assert (= bs!484038 (and d!772803 d!772797)))

(assert (=> bs!484038 (= lambda!100319 lambda!100318)))

(declare-fun bs!484039 () Bool)

(assert (= bs!484039 (and d!772803 d!772703)))

(assert (=> bs!484039 (= lambda!100319 lambda!100297)))

(declare-fun bs!484040 () Bool)

(assert (= bs!484040 (and d!772803 d!772705)))

(assert (=> bs!484040 (= lambda!100319 lambda!100298)))

(declare-fun bs!484041 () Bool)

(assert (= bs!484041 (and d!772803 d!772693)))

(assert (=> bs!484041 (= lambda!100319 lambda!100295)))

(declare-fun bs!484042 () Bool)

(assert (= bs!484042 (and d!772803 d!772695)))

(assert (=> bs!484042 (= lambda!100319 lambda!100296)))

(declare-fun bs!484043 () Bool)

(assert (= bs!484043 (and d!772803 d!772709)))

(assert (=> bs!484043 (= lambda!100319 lambda!100299)))

(declare-fun bs!484044 () Bool)

(assert (= bs!484044 (and d!772803 d!772745)))

(assert (=> bs!484044 (= lambda!100319 lambda!100303)))

(declare-fun bs!484045 () Bool)

(assert (= bs!484045 (and d!772803 d!772691)))

(assert (=> bs!484045 (= lambda!100319 lambda!100294)))

(declare-fun bs!484046 () Bool)

(assert (= bs!484046 (and d!772803 d!772755)))

(assert (=> bs!484046 (= lambda!100319 lambda!100309)))

(assert (=> d!772803 (= (inv!42205 (_2!17992 (_1!17993 (h!36563 mapDefault!16167)))) (forall!6544 (exprs!2679 (_2!17992 (_1!17993 (h!36563 mapDefault!16167)))) lambda!100319))))

(declare-fun bs!484047 () Bool)

(assert (= bs!484047 d!772803))

(declare-fun m!3077791 () Bool)

(assert (=> bs!484047 m!3077791))

(assert (=> b!2696250 d!772803))

(declare-fun bs!484048 () Bool)

(declare-fun d!772805 () Bool)

(assert (= bs!484048 (and d!772805 d!772669)))

(declare-fun lambda!100320 () Int)

(assert (=> bs!484048 (= lambda!100320 lambda!100288)))

(declare-fun bs!484049 () Bool)

(assert (= bs!484049 (and d!772805 d!772753)))

(assert (=> bs!484049 (= lambda!100320 lambda!100308)))

(declare-fun bs!484050 () Bool)

(assert (= bs!484050 (and d!772805 d!772795)))

(assert (=> bs!484050 (= lambda!100320 lambda!100317)))

(declare-fun bs!484051 () Bool)

(assert (= bs!484051 (and d!772805 d!772757)))

(assert (=> bs!484051 (= lambda!100320 lambda!100310)))

(declare-fun bs!484052 () Bool)

(assert (= bs!484052 (and d!772805 d!772689)))

(assert (=> bs!484052 (= lambda!100320 lambda!100293)))

(declare-fun bs!484053 () Bool)

(assert (= bs!484053 (and d!772805 d!772803)))

(assert (=> bs!484053 (= lambda!100320 lambda!100319)))

(declare-fun bs!484054 () Bool)

(assert (= bs!484054 (and d!772805 d!772679)))

(assert (=> bs!484054 (= lambda!100320 lambda!100292)))

(declare-fun bs!484055 () Bool)

(assert (= bs!484055 (and d!772805 d!772747)))

(assert (=> bs!484055 (= lambda!100320 lambda!100304)))

(declare-fun bs!484056 () Bool)

(assert (= bs!484056 (and d!772805 d!772797)))

(assert (=> bs!484056 (= lambda!100320 lambda!100318)))

(declare-fun bs!484057 () Bool)

(assert (= bs!484057 (and d!772805 d!772703)))

(assert (=> bs!484057 (= lambda!100320 lambda!100297)))

(declare-fun bs!484058 () Bool)

(assert (= bs!484058 (and d!772805 d!772705)))

(assert (=> bs!484058 (= lambda!100320 lambda!100298)))

(declare-fun bs!484059 () Bool)

(assert (= bs!484059 (and d!772805 d!772693)))

(assert (=> bs!484059 (= lambda!100320 lambda!100295)))

(declare-fun bs!484060 () Bool)

(assert (= bs!484060 (and d!772805 d!772695)))

(assert (=> bs!484060 (= lambda!100320 lambda!100296)))

(declare-fun bs!484061 () Bool)

(assert (= bs!484061 (and d!772805 d!772709)))

(assert (=> bs!484061 (= lambda!100320 lambda!100299)))

(declare-fun bs!484062 () Bool)

(assert (= bs!484062 (and d!772805 d!772745)))

(assert (=> bs!484062 (= lambda!100320 lambda!100303)))

(declare-fun bs!484063 () Bool)

(assert (= bs!484063 (and d!772805 d!772691)))

(assert (=> bs!484063 (= lambda!100320 lambda!100294)))

(declare-fun bs!484064 () Bool)

(assert (= bs!484064 (and d!772805 d!772755)))

(assert (=> bs!484064 (= lambda!100320 lambda!100309)))

(assert (=> d!772805 (= (inv!42205 setElem!21270) (forall!6544 (exprs!2679 setElem!21270) lambda!100320))))

(declare-fun bs!484065 () Bool)

(assert (= bs!484065 d!772805))

(declare-fun m!3077793 () Bool)

(assert (=> bs!484065 m!3077793))

(assert (=> setNonEmpty!21270 d!772805))

(declare-fun b!2696600 () Bool)

(declare-fun res!1132784 () Bool)

(declare-fun e!1700443 () Bool)

(assert (=> b!2696600 (=> (not res!1132784) (not e!1700443))))

(assert (=> b!2696600 (= res!1132784 (isBalanced!2946 (left!23981 (c!434614 treated!26))))))

(declare-fun b!2696601 () Bool)

(declare-fun isEmpty!17749 (Conc!9735) Bool)

(assert (=> b!2696601 (= e!1700443 (not (isEmpty!17749 (right!24311 (c!434614 treated!26)))))))

(declare-fun b!2696602 () Bool)

(declare-fun res!1132781 () Bool)

(assert (=> b!2696602 (=> (not res!1132781) (not e!1700443))))

(assert (=> b!2696602 (= res!1132781 (not (isEmpty!17749 (left!23981 (c!434614 treated!26)))))))

(declare-fun b!2696603 () Bool)

(declare-fun res!1132780 () Bool)

(assert (=> b!2696603 (=> (not res!1132780) (not e!1700443))))

(assert (=> b!2696603 (= res!1132780 (<= (- (height!1428 (left!23981 (c!434614 treated!26))) (height!1428 (right!24311 (c!434614 treated!26)))) 1))))

(declare-fun d!772807 () Bool)

(declare-fun res!1132782 () Bool)

(declare-fun e!1700444 () Bool)

(assert (=> d!772807 (=> res!1132782 e!1700444)))

(assert (=> d!772807 (= res!1132782 (not ((_ is Node!9735) (c!434614 treated!26))))))

(assert (=> d!772807 (= (isBalanced!2946 (c!434614 treated!26)) e!1700444)))

(declare-fun b!2696604 () Bool)

(declare-fun res!1132785 () Bool)

(assert (=> b!2696604 (=> (not res!1132785) (not e!1700443))))

(assert (=> b!2696604 (= res!1132785 (isBalanced!2946 (right!24311 (c!434614 treated!26))))))

(declare-fun b!2696605 () Bool)

(assert (=> b!2696605 (= e!1700444 e!1700443)))

(declare-fun res!1132783 () Bool)

(assert (=> b!2696605 (=> (not res!1132783) (not e!1700443))))

(assert (=> b!2696605 (= res!1132783 (<= (- 1) (- (height!1428 (left!23981 (c!434614 treated!26))) (height!1428 (right!24311 (c!434614 treated!26))))))))

(assert (= (and d!772807 (not res!1132782)) b!2696605))

(assert (= (and b!2696605 res!1132783) b!2696603))

(assert (= (and b!2696603 res!1132780) b!2696600))

(assert (= (and b!2696600 res!1132784) b!2696604))

(assert (= (and b!2696604 res!1132785) b!2696602))

(assert (= (and b!2696602 res!1132781) b!2696601))

(declare-fun m!3077795 () Bool)

(assert (=> b!2696605 m!3077795))

(declare-fun m!3077797 () Bool)

(assert (=> b!2696605 m!3077797))

(assert (=> b!2696603 m!3077795))

(assert (=> b!2696603 m!3077797))

(declare-fun m!3077799 () Bool)

(assert (=> b!2696602 m!3077799))

(declare-fun m!3077801 () Bool)

(assert (=> b!2696604 m!3077801))

(declare-fun m!3077803 () Bool)

(assert (=> b!2696601 m!3077803))

(declare-fun m!3077805 () Bool)

(assert (=> b!2696600 m!3077805))

(assert (=> d!772631 d!772807))

(declare-fun d!772809 () Bool)

(assert (=> d!772809 (= (inv!42206 (xs!12776 (c!434615 acc!348))) (<= (size!24055 (innerList!9796 (xs!12776 (c!434615 acc!348)))) 2147483647))))

(declare-fun bs!484066 () Bool)

(assert (= bs!484066 d!772809))

(declare-fun m!3077807 () Bool)

(assert (=> bs!484066 m!3077807))

(assert (=> b!2696275 d!772809))

(declare-fun d!772811 () Bool)

(declare-fun lt!952660 () Bool)

(assert (=> d!772811 (= lt!952660 (isEmpty!17747 (list!11748 (_1!17996 lt!952567))))))

(assert (=> d!772811 (= lt!952660 (isEmpty!17748 (c!434615 (_1!17996 lt!952567))))))

(assert (=> d!772811 (= (isEmpty!17746 (_1!17996 lt!952567)) lt!952660)))

(declare-fun bs!484067 () Bool)

(assert (= bs!484067 d!772811))

(assert (=> bs!484067 m!3077283))

(assert (=> bs!484067 m!3077283))

(declare-fun m!3077809 () Bool)

(assert (=> bs!484067 m!3077809))

(declare-fun m!3077811 () Bool)

(assert (=> bs!484067 m!3077811))

(assert (=> b!2696157 d!772811))

(assert (=> b!2696149 d!772781))

(assert (=> b!2696149 d!772649))

(declare-fun b!2696606 () Bool)

(declare-fun res!1132790 () Bool)

(declare-fun e!1700445 () Bool)

(assert (=> b!2696606 (=> (not res!1132790) (not e!1700445))))

(assert (=> b!2696606 (= res!1132790 (isBalanced!2946 (left!23981 (c!434614 input!780))))))

(declare-fun b!2696607 () Bool)

(assert (=> b!2696607 (= e!1700445 (not (isEmpty!17749 (right!24311 (c!434614 input!780)))))))

(declare-fun b!2696608 () Bool)

(declare-fun res!1132787 () Bool)

(assert (=> b!2696608 (=> (not res!1132787) (not e!1700445))))

(assert (=> b!2696608 (= res!1132787 (not (isEmpty!17749 (left!23981 (c!434614 input!780)))))))

(declare-fun b!2696609 () Bool)

(declare-fun res!1132786 () Bool)

(assert (=> b!2696609 (=> (not res!1132786) (not e!1700445))))

(assert (=> b!2696609 (= res!1132786 (<= (- (height!1428 (left!23981 (c!434614 input!780))) (height!1428 (right!24311 (c!434614 input!780)))) 1))))

(declare-fun d!772813 () Bool)

(declare-fun res!1132788 () Bool)

(declare-fun e!1700446 () Bool)

(assert (=> d!772813 (=> res!1132788 e!1700446)))

(assert (=> d!772813 (= res!1132788 (not ((_ is Node!9735) (c!434614 input!780))))))

(assert (=> d!772813 (= (isBalanced!2946 (c!434614 input!780)) e!1700446)))

(declare-fun b!2696610 () Bool)

(declare-fun res!1132791 () Bool)

(assert (=> b!2696610 (=> (not res!1132791) (not e!1700445))))

(assert (=> b!2696610 (= res!1132791 (isBalanced!2946 (right!24311 (c!434614 input!780))))))

(declare-fun b!2696611 () Bool)

(assert (=> b!2696611 (= e!1700446 e!1700445)))

(declare-fun res!1132789 () Bool)

(assert (=> b!2696611 (=> (not res!1132789) (not e!1700445))))

(assert (=> b!2696611 (= res!1132789 (<= (- 1) (- (height!1428 (left!23981 (c!434614 input!780))) (height!1428 (right!24311 (c!434614 input!780))))))))

(assert (= (and d!772813 (not res!1132788)) b!2696611))

(assert (= (and b!2696611 res!1132789) b!2696609))

(assert (= (and b!2696609 res!1132786) b!2696606))

(assert (= (and b!2696606 res!1132790) b!2696610))

(assert (= (and b!2696610 res!1132791) b!2696608))

(assert (= (and b!2696608 res!1132787) b!2696607))

(assert (=> b!2696611 m!3077549))

(assert (=> b!2696611 m!3077551))

(assert (=> b!2696609 m!3077549))

(assert (=> b!2696609 m!3077551))

(declare-fun m!3077813 () Bool)

(assert (=> b!2696608 m!3077813))

(declare-fun m!3077815 () Bool)

(assert (=> b!2696610 m!3077815))

(declare-fun m!3077817 () Bool)

(assert (=> b!2696607 m!3077817))

(declare-fun m!3077819 () Bool)

(assert (=> b!2696606 m!3077819))

(assert (=> d!772629 d!772813))

(declare-fun d!772815 () Bool)

(declare-fun c!434713 () Bool)

(assert (=> d!772815 (= c!434713 ((_ is Node!9735) (left!23981 (c!434614 totalInput!354))))))

(declare-fun e!1700447 () Bool)

(assert (=> d!772815 (= (inv!42198 (left!23981 (c!434614 totalInput!354))) e!1700447)))

(declare-fun b!2696612 () Bool)

(assert (=> b!2696612 (= e!1700447 (inv!42200 (left!23981 (c!434614 totalInput!354))))))

(declare-fun b!2696613 () Bool)

(declare-fun e!1700448 () Bool)

(assert (=> b!2696613 (= e!1700447 e!1700448)))

(declare-fun res!1132792 () Bool)

(assert (=> b!2696613 (= res!1132792 (not ((_ is Leaf!14856) (left!23981 (c!434614 totalInput!354)))))))

(assert (=> b!2696613 (=> res!1132792 e!1700448)))

(declare-fun b!2696614 () Bool)

(assert (=> b!2696614 (= e!1700448 (inv!42201 (left!23981 (c!434614 totalInput!354))))))

(assert (= (and d!772815 c!434713) b!2696612))

(assert (= (and d!772815 (not c!434713)) b!2696613))

(assert (= (and b!2696613 (not res!1132792)) b!2696614))

(declare-fun m!3077821 () Bool)

(assert (=> b!2696612 m!3077821))

(declare-fun m!3077823 () Bool)

(assert (=> b!2696614 m!3077823))

(assert (=> b!2696277 d!772815))

(declare-fun d!772817 () Bool)

(declare-fun c!434714 () Bool)

(assert (=> d!772817 (= c!434714 ((_ is Node!9735) (right!24311 (c!434614 totalInput!354))))))

(declare-fun e!1700449 () Bool)

(assert (=> d!772817 (= (inv!42198 (right!24311 (c!434614 totalInput!354))) e!1700449)))

(declare-fun b!2696615 () Bool)

(assert (=> b!2696615 (= e!1700449 (inv!42200 (right!24311 (c!434614 totalInput!354))))))

(declare-fun b!2696616 () Bool)

(declare-fun e!1700450 () Bool)

(assert (=> b!2696616 (= e!1700449 e!1700450)))

(declare-fun res!1132793 () Bool)

(assert (=> b!2696616 (= res!1132793 (not ((_ is Leaf!14856) (right!24311 (c!434614 totalInput!354)))))))

(assert (=> b!2696616 (=> res!1132793 e!1700450)))

(declare-fun b!2696617 () Bool)

(assert (=> b!2696617 (= e!1700450 (inv!42201 (right!24311 (c!434614 totalInput!354))))))

(assert (= (and d!772817 c!434714) b!2696615))

(assert (= (and d!772817 (not c!434714)) b!2696616))

(assert (= (and b!2696616 (not res!1132793)) b!2696617))

(declare-fun m!3077825 () Bool)

(assert (=> b!2696615 m!3077825))

(declare-fun m!3077827 () Bool)

(assert (=> b!2696617 m!3077827))

(assert (=> b!2696277 d!772817))

(declare-fun d!772819 () Bool)

(declare-fun c!434715 () Bool)

(assert (=> d!772819 (= c!434715 ((_ is Empty!9735) (c!434614 (_2!17996 lt!952556))))))

(declare-fun e!1700451 () List!31244)

(assert (=> d!772819 (= (list!11749 (c!434614 (_2!17996 lt!952556))) e!1700451)))

(declare-fun b!2696620 () Bool)

(declare-fun e!1700452 () List!31244)

(assert (=> b!2696620 (= e!1700452 (list!11751 (xs!12775 (c!434614 (_2!17996 lt!952556)))))))

(declare-fun b!2696618 () Bool)

(assert (=> b!2696618 (= e!1700451 Nil!31144)))

(declare-fun b!2696621 () Bool)

(assert (=> b!2696621 (= e!1700452 (++!7645 (list!11749 (left!23981 (c!434614 (_2!17996 lt!952556)))) (list!11749 (right!24311 (c!434614 (_2!17996 lt!952556))))))))

(declare-fun b!2696619 () Bool)

(assert (=> b!2696619 (= e!1700451 e!1700452)))

(declare-fun c!434716 () Bool)

(assert (=> b!2696619 (= c!434716 ((_ is Leaf!14856) (c!434614 (_2!17996 lt!952556))))))

(assert (= (and d!772819 c!434715) b!2696618))

(assert (= (and d!772819 (not c!434715)) b!2696619))

(assert (= (and b!2696619 c!434716) b!2696620))

(assert (= (and b!2696619 (not c!434716)) b!2696621))

(declare-fun m!3077829 () Bool)

(assert (=> b!2696620 m!3077829))

(declare-fun m!3077831 () Bool)

(assert (=> b!2696621 m!3077831))

(declare-fun m!3077833 () Bool)

(assert (=> b!2696621 m!3077833))

(assert (=> b!2696621 m!3077831))

(assert (=> b!2696621 m!3077833))

(declare-fun m!3077835 () Bool)

(assert (=> b!2696621 m!3077835))

(assert (=> d!772607 d!772819))

(declare-fun d!772821 () Bool)

(declare-fun res!1132800 () Bool)

(declare-fun e!1700455 () Bool)

(assert (=> d!772821 (=> (not res!1132800) (not e!1700455))))

(assert (=> d!772821 (= res!1132800 (= (csize!19702 (c!434615 acc!348)) (+ (size!24056 (left!23982 (c!434615 acc!348))) (size!24056 (right!24312 (c!434615 acc!348))))))))

(assert (=> d!772821 (= (inv!42202 (c!434615 acc!348)) e!1700455)))

(declare-fun b!2696628 () Bool)

(declare-fun res!1132801 () Bool)

(assert (=> b!2696628 (=> (not res!1132801) (not e!1700455))))

(assert (=> b!2696628 (= res!1132801 (and (not (= (left!23982 (c!434615 acc!348)) Empty!9736)) (not (= (right!24312 (c!434615 acc!348)) Empty!9736))))))

(declare-fun b!2696629 () Bool)

(declare-fun res!1132802 () Bool)

(assert (=> b!2696629 (=> (not res!1132802) (not e!1700455))))

(assert (=> b!2696629 (= res!1132802 (= (cheight!9947 (c!434615 acc!348)) (+ (max!0 (height!1427 (left!23982 (c!434615 acc!348))) (height!1427 (right!24312 (c!434615 acc!348)))) 1)))))

(declare-fun b!2696630 () Bool)

(assert (=> b!2696630 (= e!1700455 (<= 0 (cheight!9947 (c!434615 acc!348))))))

(assert (= (and d!772821 res!1132800) b!2696628))

(assert (= (and b!2696628 res!1132801) b!2696629))

(assert (= (and b!2696629 res!1132802) b!2696630))

(declare-fun m!3077837 () Bool)

(assert (=> d!772821 m!3077837))

(declare-fun m!3077839 () Bool)

(assert (=> d!772821 m!3077839))

(declare-fun m!3077841 () Bool)

(assert (=> b!2696629 m!3077841))

(declare-fun m!3077843 () Bool)

(assert (=> b!2696629 m!3077843))

(assert (=> b!2696629 m!3077841))

(assert (=> b!2696629 m!3077843))

(declare-fun m!3077845 () Bool)

(assert (=> b!2696629 m!3077845))

(assert (=> b!2696201 d!772821))

(declare-fun b!2696649 () Bool)

(declare-fun e!1700477 () Bool)

(declare-fun appendAssoc!185 (List!31247 List!31247 List!31247) Bool)

(assert (=> b!2696649 (= e!1700477 (appendAssoc!185 (list!11750 (left!23982 (c!434615 acc!348))) (list!11750 (left!23982 (right!24312 (c!434615 acc!348)))) (++!7648 (list!11750 (right!24312 (right!24312 (c!434615 acc!348)))) (list!11750 (c!434615 (_1!17996 lt!952556))))))))

(declare-fun b!2696650 () Bool)

(declare-fun e!1700481 () Bool)

(declare-fun e!1700479 () Bool)

(assert (=> b!2696650 (= e!1700481 e!1700479)))

(declare-fun res!1132821 () Bool)

(assert (=> b!2696650 (=> (not res!1132821) (not e!1700479))))

(assert (=> b!2696650 (= res!1132821 (appendAssoc!185 (list!11750 (c!434615 acc!348)) (list!11750 (left!23982 (c!434615 (_1!17996 lt!952556)))) (list!11750 (right!24312 (c!434615 (_1!17996 lt!952556))))))))

(declare-fun d!772823 () Bool)

(declare-fun e!1700474 () Bool)

(assert (=> d!772823 e!1700474))

(declare-fun res!1132822 () Bool)

(assert (=> d!772823 (=> (not res!1132822) (not e!1700474))))

(declare-fun e!1700476 () Bool)

(assert (=> d!772823 (= res!1132822 e!1700476)))

(declare-fun res!1132826 () Bool)

(assert (=> d!772823 (=> res!1132826 e!1700476)))

(assert (=> d!772823 (= res!1132826 (not ((_ is Node!9736) (c!434615 acc!348))))))

(assert (=> d!772823 (= (appendAssocInst!667 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))) true)))

(declare-fun b!2696651 () Bool)

(declare-fun e!1700475 () Bool)

(declare-fun e!1700480 () Bool)

(assert (=> b!2696651 (= e!1700475 e!1700480)))

(declare-fun res!1132828 () Bool)

(assert (=> b!2696651 (=> res!1132828 e!1700480)))

(assert (=> b!2696651 (= res!1132828 (not ((_ is Node!9736) (right!24312 (c!434615 acc!348)))))))

(declare-fun b!2696652 () Bool)

(declare-fun e!1700482 () Bool)

(assert (=> b!2696652 (= e!1700479 e!1700482)))

(declare-fun res!1132824 () Bool)

(assert (=> b!2696652 (=> res!1132824 e!1700482)))

(assert (=> b!2696652 (= res!1132824 (not ((_ is Node!9736) (left!23982 (c!434615 (_1!17996 lt!952556))))))))

(declare-fun b!2696653 () Bool)

(assert (=> b!2696653 (= e!1700476 e!1700475)))

(declare-fun res!1132829 () Bool)

(assert (=> b!2696653 (=> (not res!1132829) (not e!1700475))))

(assert (=> b!2696653 (= res!1132829 (appendAssoc!185 (list!11750 (left!23982 (c!434615 acc!348))) (list!11750 (right!24312 (c!434615 acc!348))) (list!11750 (c!434615 (_1!17996 lt!952556)))))))

(declare-fun b!2696654 () Bool)

(assert (=> b!2696654 (= e!1700474 e!1700481)))

(declare-fun res!1132825 () Bool)

(assert (=> b!2696654 (=> res!1132825 e!1700481)))

(assert (=> b!2696654 (= res!1132825 (not ((_ is Node!9736) (c!434615 (_1!17996 lt!952556)))))))

(declare-fun b!2696655 () Bool)

(declare-fun e!1700478 () Bool)

(assert (=> b!2696655 (= e!1700482 e!1700478)))

(declare-fun res!1132827 () Bool)

(assert (=> b!2696655 (=> (not res!1132827) (not e!1700478))))

(assert (=> b!2696655 (= res!1132827 (appendAssoc!185 (list!11750 (c!434615 acc!348)) (list!11750 (left!23982 (left!23982 (c!434615 (_1!17996 lt!952556))))) (list!11750 (right!24312 (left!23982 (c!434615 (_1!17996 lt!952556)))))))))

(declare-fun b!2696656 () Bool)

(assert (=> b!2696656 (= e!1700478 (appendAssoc!185 (++!7648 (list!11750 (c!434615 acc!348)) (list!11750 (left!23982 (left!23982 (c!434615 (_1!17996 lt!952556)))))) (list!11750 (right!24312 (left!23982 (c!434615 (_1!17996 lt!952556))))) (list!11750 (right!24312 (c!434615 (_1!17996 lt!952556))))))))

(declare-fun b!2696657 () Bool)

(assert (=> b!2696657 (= e!1700480 e!1700477)))

(declare-fun res!1132823 () Bool)

(assert (=> b!2696657 (=> (not res!1132823) (not e!1700477))))

(assert (=> b!2696657 (= res!1132823 (appendAssoc!185 (list!11750 (left!23982 (right!24312 (c!434615 acc!348)))) (list!11750 (right!24312 (right!24312 (c!434615 acc!348)))) (list!11750 (c!434615 (_1!17996 lt!952556)))))))

(assert (= (and d!772823 (not res!1132826)) b!2696653))

(assert (= (and b!2696653 res!1132829) b!2696651))

(assert (= (and b!2696651 (not res!1132828)) b!2696657))

(assert (= (and b!2696657 res!1132823) b!2696649))

(assert (= (and d!772823 res!1132822) b!2696654))

(assert (= (and b!2696654 (not res!1132825)) b!2696650))

(assert (= (and b!2696650 res!1132821) b!2696652))

(assert (= (and b!2696652 (not res!1132824)) b!2696655))

(assert (= (and b!2696655 res!1132827) b!2696656))

(assert (=> b!2696656 m!3077247))

(declare-fun m!3077847 () Bool)

(assert (=> b!2696656 m!3077847))

(declare-fun m!3077849 () Bool)

(assert (=> b!2696656 m!3077849))

(declare-fun m!3077851 () Bool)

(assert (=> b!2696656 m!3077851))

(assert (=> b!2696656 m!3077247))

(assert (=> b!2696656 m!3077847))

(assert (=> b!2696656 m!3077849))

(declare-fun m!3077853 () Bool)

(assert (=> b!2696656 m!3077853))

(assert (=> b!2696656 m!3077851))

(declare-fun m!3077855 () Bool)

(assert (=> b!2696656 m!3077855))

(assert (=> b!2696656 m!3077853))

(assert (=> b!2696655 m!3077247))

(assert (=> b!2696655 m!3077847))

(assert (=> b!2696655 m!3077853))

(assert (=> b!2696655 m!3077247))

(assert (=> b!2696655 m!3077847))

(assert (=> b!2696655 m!3077853))

(declare-fun m!3077857 () Bool)

(assert (=> b!2696655 m!3077857))

(declare-fun m!3077859 () Bool)

(assert (=> b!2696649 m!3077859))

(assert (=> b!2696649 m!3077561))

(declare-fun m!3077861 () Bool)

(assert (=> b!2696649 m!3077861))

(declare-fun m!3077863 () Bool)

(assert (=> b!2696649 m!3077863))

(assert (=> b!2696649 m!3077561))

(assert (=> b!2696649 m!3077533))

(assert (=> b!2696649 m!3077863))

(assert (=> b!2696649 m!3077861))

(declare-fun m!3077865 () Bool)

(assert (=> b!2696649 m!3077865))

(assert (=> b!2696649 m!3077533))

(assert (=> b!2696649 m!3077859))

(assert (=> b!2696657 m!3077863))

(assert (=> b!2696657 m!3077859))

(assert (=> b!2696657 m!3077561))

(assert (=> b!2696657 m!3077863))

(assert (=> b!2696657 m!3077859))

(assert (=> b!2696657 m!3077561))

(declare-fun m!3077867 () Bool)

(assert (=> b!2696657 m!3077867))

(assert (=> b!2696653 m!3077533))

(assert (=> b!2696653 m!3077535))

(assert (=> b!2696653 m!3077561))

(assert (=> b!2696653 m!3077533))

(assert (=> b!2696653 m!3077535))

(assert (=> b!2696653 m!3077561))

(declare-fun m!3077869 () Bool)

(assert (=> b!2696653 m!3077869))

(assert (=> b!2696650 m!3077247))

(declare-fun m!3077871 () Bool)

(assert (=> b!2696650 m!3077871))

(assert (=> b!2696650 m!3077851))

(assert (=> b!2696650 m!3077247))

(assert (=> b!2696650 m!3077871))

(assert (=> b!2696650 m!3077851))

(declare-fun m!3077873 () Bool)

(assert (=> b!2696650 m!3077873))

(assert (=> d!772623 d!772823))

(assert (=> d!772623 d!772721))

(assert (=> d!772599 d!772785))

(declare-fun d!772825 () Bool)

(declare-fun c!434717 () Bool)

(assert (=> d!772825 (= c!434717 ((_ is Empty!9735) (c!434614 (_2!17996 lt!952553))))))

(declare-fun e!1700483 () List!31244)

(assert (=> d!772825 (= (list!11749 (c!434614 (_2!17996 lt!952553))) e!1700483)))

(declare-fun b!2696660 () Bool)

(declare-fun e!1700484 () List!31244)

(assert (=> b!2696660 (= e!1700484 (list!11751 (xs!12775 (c!434614 (_2!17996 lt!952553)))))))

(declare-fun b!2696658 () Bool)

(assert (=> b!2696658 (= e!1700483 Nil!31144)))

(declare-fun b!2696661 () Bool)

(assert (=> b!2696661 (= e!1700484 (++!7645 (list!11749 (left!23981 (c!434614 (_2!17996 lt!952553)))) (list!11749 (right!24311 (c!434614 (_2!17996 lt!952553))))))))

(declare-fun b!2696659 () Bool)

(assert (=> b!2696659 (= e!1700483 e!1700484)))

(declare-fun c!434718 () Bool)

(assert (=> b!2696659 (= c!434718 ((_ is Leaf!14856) (c!434614 (_2!17996 lt!952553))))))

(assert (= (and d!772825 c!434717) b!2696658))

(assert (= (and d!772825 (not c!434717)) b!2696659))

(assert (= (and b!2696659 c!434718) b!2696660))

(assert (= (and b!2696659 (not c!434718)) b!2696661))

(declare-fun m!3077875 () Bool)

(assert (=> b!2696660 m!3077875))

(declare-fun m!3077877 () Bool)

(assert (=> b!2696661 m!3077877))

(declare-fun m!3077879 () Bool)

(assert (=> b!2696661 m!3077879))

(assert (=> b!2696661 m!3077877))

(assert (=> b!2696661 m!3077879))

(declare-fun m!3077881 () Bool)

(assert (=> b!2696661 m!3077881))

(assert (=> d!772605 d!772825))

(declare-fun d!772827 () Bool)

(assert (=> d!772827 (= (list!11748 (_1!17996 lt!952573)) (list!11750 (c!434615 (_1!17996 lt!952573))))))

(declare-fun bs!484068 () Bool)

(assert (= bs!484068 d!772827))

(declare-fun m!3077883 () Bool)

(assert (=> bs!484068 m!3077883))

(assert (=> b!2696174 d!772827))

(declare-fun b!2696662 () Bool)

(declare-fun e!1700487 () Bool)

(declare-fun lt!952661 () tuple2!30754)

(assert (=> b!2696662 (= e!1700487 (not (isEmpty!17747 (_1!17997 lt!952661))))))

(declare-fun b!2696663 () Bool)

(declare-fun e!1700486 () tuple2!30754)

(declare-fun lt!952663 () Option!6147)

(declare-fun lt!952662 () tuple2!30754)

(assert (=> b!2696663 (= e!1700486 (tuple2!30755 (Cons!31147 (_1!17999 (v!32922 lt!952663)) (_1!17997 lt!952662)) (_2!17997 lt!952662)))))

(assert (=> b!2696663 (= lt!952662 (lexList!1198 thiss!12257 rules!1381 (_2!17999 (v!32922 lt!952663))))))

(declare-fun b!2696664 () Bool)

(assert (=> b!2696664 (= e!1700486 (tuple2!30755 Nil!31147 (list!11747 totalInput!354)))))

(declare-fun b!2696665 () Bool)

(declare-fun e!1700485 () Bool)

(assert (=> b!2696665 (= e!1700485 (= (_2!17997 lt!952661) (list!11747 totalInput!354)))))

(declare-fun b!2696666 () Bool)

(assert (=> b!2696666 (= e!1700485 e!1700487)))

(declare-fun res!1132830 () Bool)

(assert (=> b!2696666 (= res!1132830 (< (size!24053 (_2!17997 lt!952661)) (size!24053 (list!11747 totalInput!354))))))

(assert (=> b!2696666 (=> (not res!1132830) (not e!1700487))))

(declare-fun d!772829 () Bool)

(assert (=> d!772829 e!1700485))

(declare-fun c!434719 () Bool)

(assert (=> d!772829 (= c!434719 (> (size!24055 (_1!17997 lt!952661)) 0))))

(assert (=> d!772829 (= lt!952661 e!1700486)))

(declare-fun c!434720 () Bool)

(assert (=> d!772829 (= c!434720 ((_ is Some!6146) lt!952663))))

(assert (=> d!772829 (= lt!952663 (maxPrefix!2353 thiss!12257 rules!1381 (list!11747 totalInput!354)))))

(assert (=> d!772829 (= (lexList!1198 thiss!12257 rules!1381 (list!11747 totalInput!354)) lt!952661)))

(assert (= (and d!772829 c!434720) b!2696663))

(assert (= (and d!772829 (not c!434720)) b!2696664))

(assert (= (and d!772829 c!434719) b!2696666))

(assert (= (and d!772829 (not c!434719)) b!2696665))

(assert (= (and b!2696666 res!1132830) b!2696662))

(declare-fun m!3077885 () Bool)

(assert (=> b!2696662 m!3077885))

(declare-fun m!3077887 () Bool)

(assert (=> b!2696663 m!3077887))

(declare-fun m!3077889 () Bool)

(assert (=> b!2696666 m!3077889))

(assert (=> b!2696666 m!3077209))

(assert (=> b!2696666 m!3077639))

(declare-fun m!3077891 () Bool)

(assert (=> d!772829 m!3077891))

(assert (=> d!772829 m!3077209))

(declare-fun m!3077893 () Bool)

(assert (=> d!772829 m!3077893))

(assert (=> b!2696174 d!772829))

(assert (=> b!2696174 d!772645))

(assert (=> b!2696093 d!772653))

(declare-fun b!2696679 () Bool)

(declare-fun res!1132846 () Bool)

(declare-fun e!1700492 () Bool)

(assert (=> b!2696679 (=> (not res!1132846) (not e!1700492))))

(assert (=> b!2696679 (= res!1132846 (isBalanced!2945 (right!24312 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))))))))

(declare-fun b!2696680 () Bool)

(declare-fun e!1700493 () Bool)

(assert (=> b!2696680 (= e!1700493 e!1700492)))

(declare-fun res!1132843 () Bool)

(assert (=> b!2696680 (=> (not res!1132843) (not e!1700492))))

(assert (=> b!2696680 (= res!1132843 (<= (- 1) (- (height!1427 (left!23982 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))))) (height!1427 (right!24312 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))))))))))

(declare-fun b!2696681 () Bool)

(declare-fun res!1132844 () Bool)

(assert (=> b!2696681 (=> (not res!1132844) (not e!1700492))))

(assert (=> b!2696681 (= res!1132844 (not (isEmpty!17748 (left!23982 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))))))))

(declare-fun b!2696682 () Bool)

(declare-fun res!1132848 () Bool)

(assert (=> b!2696682 (=> (not res!1132848) (not e!1700492))))

(assert (=> b!2696682 (= res!1132848 (isBalanced!2945 (left!23982 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))))))))

(declare-fun b!2696683 () Bool)

(assert (=> b!2696683 (= e!1700492 (not (isEmpty!17748 (right!24312 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))))))))

(declare-fun d!772831 () Bool)

(declare-fun res!1132847 () Bool)

(assert (=> d!772831 (=> res!1132847 e!1700493)))

(assert (=> d!772831 (= res!1132847 (not ((_ is Node!9736) (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))))))))

(assert (=> d!772831 (= (isBalanced!2945 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))) e!1700493)))

(declare-fun b!2696684 () Bool)

(declare-fun res!1132845 () Bool)

(assert (=> b!2696684 (=> (not res!1132845) (not e!1700492))))

(assert (=> b!2696684 (= res!1132845 (<= (- (height!1427 (left!23982 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556))))) (height!1427 (right!24312 (++!7647 (c!434615 acc!348) (c!434615 (_1!17996 lt!952556)))))) 1))))

(assert (= (and d!772831 (not res!1132847)) b!2696680))

(assert (= (and b!2696680 res!1132843) b!2696684))

(assert (= (and b!2696684 res!1132845) b!2696682))

(assert (= (and b!2696682 res!1132848) b!2696679))

(assert (= (and b!2696679 res!1132846) b!2696681))

(assert (= (and b!2696681 res!1132844) b!2696683))

(declare-fun m!3077895 () Bool)

(assert (=> b!2696680 m!3077895))

(declare-fun m!3077897 () Bool)

(assert (=> b!2696680 m!3077897))

(declare-fun m!3077899 () Bool)

(assert (=> b!2696679 m!3077899))

(assert (=> b!2696684 m!3077895))

(assert (=> b!2696684 m!3077897))

(declare-fun m!3077901 () Bool)

(assert (=> b!2696683 m!3077901))

(declare-fun m!3077903 () Bool)

(assert (=> b!2696681 m!3077903))

(declare-fun m!3077905 () Bool)

(assert (=> b!2696682 m!3077905))

(assert (=> b!2696166 d!772831))

(assert (=> b!2696166 d!772721))

(declare-fun d!772833 () Bool)

(declare-fun res!1132849 () Bool)

(declare-fun e!1700494 () Bool)

(assert (=> d!772833 (=> (not res!1132849) (not e!1700494))))

(assert (=> d!772833 (= res!1132849 (= (csize!19700 (c!434614 totalInput!354)) (+ (size!24054 (left!23981 (c!434614 totalInput!354))) (size!24054 (right!24311 (c!434614 totalInput!354))))))))

(assert (=> d!772833 (= (inv!42200 (c!434614 totalInput!354)) e!1700494)))

(declare-fun b!2696685 () Bool)

(declare-fun res!1132850 () Bool)

(assert (=> b!2696685 (=> (not res!1132850) (not e!1700494))))

(assert (=> b!2696685 (= res!1132850 (and (not (= (left!23981 (c!434614 totalInput!354)) Empty!9735)) (not (= (right!24311 (c!434614 totalInput!354)) Empty!9735))))))

(declare-fun b!2696686 () Bool)

(declare-fun res!1132851 () Bool)

(assert (=> b!2696686 (=> (not res!1132851) (not e!1700494))))

(assert (=> b!2696686 (= res!1132851 (= (cheight!9946 (c!434614 totalInput!354)) (+ (max!0 (height!1428 (left!23981 (c!434614 totalInput!354))) (height!1428 (right!24311 (c!434614 totalInput!354)))) 1)))))

(declare-fun b!2696687 () Bool)

(assert (=> b!2696687 (= e!1700494 (<= 0 (cheight!9946 (c!434614 totalInput!354))))))

(assert (= (and d!772833 res!1132849) b!2696685))

(assert (= (and b!2696685 res!1132850) b!2696686))

(assert (= (and b!2696686 res!1132851) b!2696687))

(declare-fun m!3077907 () Bool)

(assert (=> d!772833 m!3077907))

(declare-fun m!3077909 () Bool)

(assert (=> d!772833 m!3077909))

(declare-fun m!3077911 () Bool)

(assert (=> b!2696686 m!3077911))

(declare-fun m!3077913 () Bool)

(assert (=> b!2696686 m!3077913))

(assert (=> b!2696686 m!3077911))

(assert (=> b!2696686 m!3077913))

(declare-fun m!3077915 () Bool)

(assert (=> b!2696686 m!3077915))

(assert (=> b!2696204 d!772833))

(declare-fun d!772835 () Bool)

(assert (=> d!772835 (= (list!11747 (_2!17996 lt!952567)) (list!11749 (c!434614 (_2!17996 lt!952567))))))

(declare-fun bs!484069 () Bool)

(assert (= bs!484069 d!772835))

(declare-fun m!3077917 () Bool)

(assert (=> bs!484069 m!3077917))

(assert (=> b!2696153 d!772835))

(assert (=> b!2696153 d!772731))

(assert (=> b!2696153 d!772651))

(declare-fun lt!952664 () List!31244)

(declare-fun b!2696691 () Bool)

(declare-fun e!1700495 () Bool)

(assert (=> b!2696691 (= e!1700495 (or (not (= (list!11747 input!780) Nil!31144)) (= lt!952664 (t!225251 (list!11747 treated!26)))))))

(declare-fun d!772837 () Bool)

(assert (=> d!772837 e!1700495))

(declare-fun res!1132853 () Bool)

(assert (=> d!772837 (=> (not res!1132853) (not e!1700495))))

(assert (=> d!772837 (= res!1132853 (= (content!4408 lt!952664) ((_ map or) (content!4408 (t!225251 (list!11747 treated!26))) (content!4408 (list!11747 input!780)))))))

(declare-fun e!1700496 () List!31244)

(assert (=> d!772837 (= lt!952664 e!1700496)))

(declare-fun c!434721 () Bool)

(assert (=> d!772837 (= c!434721 ((_ is Nil!31144) (t!225251 (list!11747 treated!26))))))

(assert (=> d!772837 (= (++!7645 (t!225251 (list!11747 treated!26)) (list!11747 input!780)) lt!952664)))

(declare-fun b!2696689 () Bool)

(assert (=> b!2696689 (= e!1700496 (Cons!31144 (h!36564 (t!225251 (list!11747 treated!26))) (++!7645 (t!225251 (t!225251 (list!11747 treated!26))) (list!11747 input!780))))))

(declare-fun b!2696690 () Bool)

(declare-fun res!1132852 () Bool)

(assert (=> b!2696690 (=> (not res!1132852) (not e!1700495))))

(assert (=> b!2696690 (= res!1132852 (= (size!24053 lt!952664) (+ (size!24053 (t!225251 (list!11747 treated!26))) (size!24053 (list!11747 input!780)))))))

(declare-fun b!2696688 () Bool)

(assert (=> b!2696688 (= e!1700496 (list!11747 input!780))))

(assert (= (and d!772837 c!434721) b!2696688))

(assert (= (and d!772837 (not c!434721)) b!2696689))

(assert (= (and d!772837 res!1132853) b!2696690))

(assert (= (and b!2696690 res!1132852) b!2696691))

(declare-fun m!3077919 () Bool)

(assert (=> d!772837 m!3077919))

(assert (=> d!772837 m!3077483))

(assert (=> d!772837 m!3077213))

(assert (=> d!772837 m!3077347))

(assert (=> b!2696689 m!3077213))

(declare-fun m!3077921 () Bool)

(assert (=> b!2696689 m!3077921))

(declare-fun m!3077923 () Bool)

(assert (=> b!2696690 m!3077923))

(assert (=> b!2696690 m!3077718))

(assert (=> b!2696690 m!3077213))

(assert (=> b!2696690 m!3077355))

(assert (=> b!2696192 d!772837))

(declare-fun d!772839 () Bool)

(declare-fun c!434722 () Bool)

(assert (=> d!772839 (= c!434722 ((_ is Empty!9735) (c!434614 (_2!17996 lt!952552))))))

(declare-fun e!1700497 () List!31244)

(assert (=> d!772839 (= (list!11749 (c!434614 (_2!17996 lt!952552))) e!1700497)))

(declare-fun b!2696694 () Bool)

(declare-fun e!1700498 () List!31244)

(assert (=> b!2696694 (= e!1700498 (list!11751 (xs!12775 (c!434614 (_2!17996 lt!952552)))))))

(declare-fun b!2696692 () Bool)

(assert (=> b!2696692 (= e!1700497 Nil!31144)))

(declare-fun b!2696695 () Bool)

(assert (=> b!2696695 (= e!1700498 (++!7645 (list!11749 (left!23981 (c!434614 (_2!17996 lt!952552)))) (list!11749 (right!24311 (c!434614 (_2!17996 lt!952552))))))))

(declare-fun b!2696693 () Bool)

(assert (=> b!2696693 (= e!1700497 e!1700498)))

(declare-fun c!434723 () Bool)

(assert (=> b!2696693 (= c!434723 ((_ is Leaf!14856) (c!434614 (_2!17996 lt!952552))))))

(assert (= (and d!772839 c!434722) b!2696692))

(assert (= (and d!772839 (not c!434722)) b!2696693))

(assert (= (and b!2696693 c!434723) b!2696694))

(assert (= (and b!2696693 (not c!434723)) b!2696695))

(declare-fun m!3077925 () Bool)

(assert (=> b!2696694 m!3077925))

(declare-fun m!3077927 () Bool)

(assert (=> b!2696695 m!3077927))

(declare-fun m!3077929 () Bool)

(assert (=> b!2696695 m!3077929))

(assert (=> b!2696695 m!3077927))

(assert (=> b!2696695 m!3077929))

(declare-fun m!3077931 () Bool)

(assert (=> b!2696695 m!3077931))

(assert (=> d!772643 d!772839))

(declare-fun d!772841 () Bool)

(declare-fun lt!952665 () Int)

(assert (=> d!772841 (= lt!952665 (size!24055 (list!11748 (_1!17996 lt!952573))))))

(assert (=> d!772841 (= lt!952665 (size!24056 (c!434615 (_1!17996 lt!952573))))))

(assert (=> d!772841 (= (size!24052 (_1!17996 lt!952573)) lt!952665)))

(declare-fun bs!484070 () Bool)

(assert (= bs!484070 d!772841))

(assert (=> bs!484070 m!3077325))

(assert (=> bs!484070 m!3077325))

(declare-fun m!3077933 () Bool)

(assert (=> bs!484070 m!3077933))

(declare-fun m!3077935 () Bool)

(assert (=> bs!484070 m!3077935))

(assert (=> d!772625 d!772841))

(declare-fun lt!952666 () Option!6146)

(declare-fun e!1700503 () Bool)

(declare-fun b!2696696 () Bool)

(assert (=> b!2696696 (= e!1700503 (= (list!11747 (_2!17998 (get!9731 lt!952666))) (_2!17999 (get!9732 (maxPrefixZipper!457 thiss!12257 rules!1381 (list!11747 totalInput!354))))))))

(declare-fun b!2696697 () Bool)

(declare-fun e!1700504 () Option!6146)

(declare-fun call!173647 () Option!6146)

(assert (=> b!2696697 (= e!1700504 call!173647)))

(declare-fun b!2696698 () Bool)

(declare-fun e!1700500 () Bool)

(assert (=> b!2696698 (= e!1700500 e!1700503)))

(declare-fun res!1132858 () Bool)

(assert (=> b!2696698 (=> (not res!1132858) (not e!1700503))))

(assert (=> b!2696698 (= res!1132858 (= (_1!17998 (get!9731 lt!952666)) (_1!17999 (get!9732 (maxPrefixZipper!457 thiss!12257 rules!1381 (list!11747 totalInput!354))))))))

(declare-fun b!2696699 () Bool)

(declare-fun lt!952672 () Option!6146)

(declare-fun lt!952670 () Option!6146)

(assert (=> b!2696699 (= e!1700504 (ite (and ((_ is None!6145) lt!952672) ((_ is None!6145) lt!952670)) None!6145 (ite ((_ is None!6145) lt!952670) lt!952672 (ite ((_ is None!6145) lt!952672) lt!952670 (ite (>= (size!24050 (_1!17998 (v!32920 lt!952672))) (size!24050 (_1!17998 (v!32920 lt!952670)))) lt!952672 lt!952670)))))))

(assert (=> b!2696699 (= lt!952672 call!173647)))

(assert (=> b!2696699 (= lt!952670 (maxPrefixZipperSequence!1010 thiss!12257 (t!225255 rules!1381) totalInput!354))))

(declare-fun bm!173642 () Bool)

(assert (=> bm!173642 (= call!173647 (maxPrefixOneRuleZipperSequence!466 thiss!12257 (h!36568 rules!1381) totalInput!354))))

(declare-fun b!2696700 () Bool)

(declare-fun e!1700502 () Bool)

(declare-fun e!1700499 () Bool)

(assert (=> b!2696700 (= e!1700502 e!1700499)))

(declare-fun res!1132859 () Bool)

(assert (=> b!2696700 (=> (not res!1132859) (not e!1700499))))

(assert (=> b!2696700 (= res!1132859 (= (_1!17998 (get!9731 lt!952666)) (_1!17999 (get!9732 (maxPrefix!2353 thiss!12257 rules!1381 (list!11747 totalInput!354))))))))

(declare-fun d!772843 () Bool)

(declare-fun e!1700501 () Bool)

(assert (=> d!772843 e!1700501))

(declare-fun res!1132855 () Bool)

(assert (=> d!772843 (=> (not res!1132855) (not e!1700501))))

(assert (=> d!772843 (= res!1132855 (= (isDefined!4867 lt!952666) (isDefined!4868 (maxPrefixZipper!457 thiss!12257 rules!1381 (list!11747 totalInput!354)))))))

(assert (=> d!772843 (= lt!952666 e!1700504)))

(declare-fun c!434724 () Bool)

(assert (=> d!772843 (= c!434724 (and ((_ is Cons!31148) rules!1381) ((_ is Nil!31148) (t!225255 rules!1381))))))

(declare-fun lt!952668 () Unit!45223)

(declare-fun lt!952669 () Unit!45223)

(assert (=> d!772843 (= lt!952668 lt!952669)))

(declare-fun lt!952671 () List!31244)

(declare-fun lt!952667 () List!31244)

(assert (=> d!772843 (isPrefix!2470 lt!952671 lt!952667)))

(assert (=> d!772843 (= lt!952669 (lemmaIsPrefixRefl!1596 lt!952671 lt!952667))))

(assert (=> d!772843 (= lt!952667 (list!11747 totalInput!354))))

(assert (=> d!772843 (= lt!952671 (list!11747 totalInput!354))))

(assert (=> d!772843 (rulesValidInductive!1652 thiss!12257 rules!1381)))

(assert (=> d!772843 (= (maxPrefixZipperSequence!1010 thiss!12257 rules!1381 totalInput!354) lt!952666)))

(declare-fun b!2696701 () Bool)

(assert (=> b!2696701 (= e!1700499 (= (list!11747 (_2!17998 (get!9731 lt!952666))) (_2!17999 (get!9732 (maxPrefix!2353 thiss!12257 rules!1381 (list!11747 totalInput!354))))))))

(declare-fun b!2696702 () Bool)

(declare-fun res!1132857 () Bool)

(assert (=> b!2696702 (=> (not res!1132857) (not e!1700501))))

(assert (=> b!2696702 (= res!1132857 e!1700500)))

(declare-fun res!1132856 () Bool)

(assert (=> b!2696702 (=> res!1132856 e!1700500)))

(assert (=> b!2696702 (= res!1132856 (not (isDefined!4867 lt!952666)))))

(declare-fun b!2696703 () Bool)

(assert (=> b!2696703 (= e!1700501 e!1700502)))

(declare-fun res!1132854 () Bool)

(assert (=> b!2696703 (=> res!1132854 e!1700502)))

(assert (=> b!2696703 (= res!1132854 (not (isDefined!4867 lt!952666)))))

(assert (= (and d!772843 c!434724) b!2696697))

(assert (= (and d!772843 (not c!434724)) b!2696699))

(assert (= (or b!2696697 b!2696699) bm!173642))

(assert (= (and d!772843 res!1132855) b!2696702))

(assert (= (and b!2696702 (not res!1132856)) b!2696698))

(assert (= (and b!2696698 res!1132858) b!2696696))

(assert (= (and b!2696702 res!1132857) b!2696703))

(assert (= (and b!2696703 (not res!1132854)) b!2696700))

(assert (= (and b!2696700 res!1132859) b!2696701))

(declare-fun m!3077937 () Bool)

(assert (=> b!2696703 m!3077937))

(declare-fun m!3077939 () Bool)

(assert (=> b!2696698 m!3077939))

(assert (=> b!2696698 m!3077209))

(assert (=> b!2696698 m!3077209))

(declare-fun m!3077941 () Bool)

(assert (=> b!2696698 m!3077941))

(assert (=> b!2696698 m!3077941))

(declare-fun m!3077943 () Bool)

(assert (=> b!2696698 m!3077943))

(declare-fun m!3077945 () Bool)

(assert (=> bm!173642 m!3077945))

(declare-fun m!3077947 () Bool)

(assert (=> b!2696699 m!3077947))

(assert (=> d!772843 m!3077209))

(assert (=> d!772843 m!3077941))

(assert (=> d!772843 m!3077937))

(declare-fun m!3077949 () Bool)

(assert (=> d!772843 m!3077949))

(declare-fun m!3077951 () Bool)

(assert (=> d!772843 m!3077951))

(assert (=> d!772843 m!3077941))

(declare-fun m!3077953 () Bool)

(assert (=> d!772843 m!3077953))

(assert (=> d!772843 m!3077521))

(assert (=> d!772843 m!3077209))

(assert (=> b!2696701 m!3077893))

(declare-fun m!3077955 () Bool)

(assert (=> b!2696701 m!3077955))

(declare-fun m!3077957 () Bool)

(assert (=> b!2696701 m!3077957))

(assert (=> b!2696701 m!3077209))

(assert (=> b!2696701 m!3077939))

(assert (=> b!2696701 m!3077209))

(assert (=> b!2696701 m!3077893))

(assert (=> b!2696702 m!3077937))

(assert (=> b!2696700 m!3077939))

(assert (=> b!2696700 m!3077209))

(assert (=> b!2696700 m!3077209))

(assert (=> b!2696700 m!3077893))

(assert (=> b!2696700 m!3077893))

(assert (=> b!2696700 m!3077955))

(assert (=> b!2696696 m!3077209))

(assert (=> b!2696696 m!3077941))

(assert (=> b!2696696 m!3077957))

(assert (=> b!2696696 m!3077941))

(assert (=> b!2696696 m!3077943))

(assert (=> b!2696696 m!3077209))

(assert (=> b!2696696 m!3077939))

(assert (=> d!772625 d!772843))

(declare-fun bs!484071 () Bool)

(declare-fun d!772845 () Bool)

(assert (= bs!484071 (and d!772845 d!772669)))

(declare-fun lambda!100321 () Int)

(assert (=> bs!484071 (= lambda!100321 lambda!100288)))

(declare-fun bs!484072 () Bool)

(assert (= bs!484072 (and d!772845 d!772753)))

(assert (=> bs!484072 (= lambda!100321 lambda!100308)))

(declare-fun bs!484073 () Bool)

(assert (= bs!484073 (and d!772845 d!772795)))

(assert (=> bs!484073 (= lambda!100321 lambda!100317)))

(declare-fun bs!484074 () Bool)

(assert (= bs!484074 (and d!772845 d!772689)))

(assert (=> bs!484074 (= lambda!100321 lambda!100293)))

(declare-fun bs!484075 () Bool)

(assert (= bs!484075 (and d!772845 d!772803)))

(assert (=> bs!484075 (= lambda!100321 lambda!100319)))

(declare-fun bs!484076 () Bool)

(assert (= bs!484076 (and d!772845 d!772679)))

(assert (=> bs!484076 (= lambda!100321 lambda!100292)))

(declare-fun bs!484077 () Bool)

(assert (= bs!484077 (and d!772845 d!772747)))

(assert (=> bs!484077 (= lambda!100321 lambda!100304)))

(declare-fun bs!484078 () Bool)

(assert (= bs!484078 (and d!772845 d!772797)))

(assert (=> bs!484078 (= lambda!100321 lambda!100318)))

(declare-fun bs!484079 () Bool)

(assert (= bs!484079 (and d!772845 d!772703)))

(assert (=> bs!484079 (= lambda!100321 lambda!100297)))

(declare-fun bs!484080 () Bool)

(assert (= bs!484080 (and d!772845 d!772705)))

(assert (=> bs!484080 (= lambda!100321 lambda!100298)))

(declare-fun bs!484081 () Bool)

(assert (= bs!484081 (and d!772845 d!772693)))

(assert (=> bs!484081 (= lambda!100321 lambda!100295)))

(declare-fun bs!484082 () Bool)

(assert (= bs!484082 (and d!772845 d!772695)))

(assert (=> bs!484082 (= lambda!100321 lambda!100296)))

(declare-fun bs!484083 () Bool)

(assert (= bs!484083 (and d!772845 d!772709)))

(assert (=> bs!484083 (= lambda!100321 lambda!100299)))

(declare-fun bs!484084 () Bool)

(assert (= bs!484084 (and d!772845 d!772745)))

(assert (=> bs!484084 (= lambda!100321 lambda!100303)))

(declare-fun bs!484085 () Bool)

(assert (= bs!484085 (and d!772845 d!772691)))

(assert (=> bs!484085 (= lambda!100321 lambda!100294)))

(declare-fun bs!484086 () Bool)

(assert (= bs!484086 (and d!772845 d!772755)))

(assert (=> bs!484086 (= lambda!100321 lambda!100309)))

(declare-fun bs!484087 () Bool)

(assert (= bs!484087 (and d!772845 d!772757)))

(assert (=> bs!484087 (= lambda!100321 lambda!100310)))

(declare-fun bs!484088 () Bool)

(assert (= bs!484088 (and d!772845 d!772805)))

(assert (=> bs!484088 (= lambda!100321 lambda!100320)))

(assert (=> d!772845 (= (inv!42205 (_2!17992 (_1!17993 (h!36563 mapValue!16163)))) (forall!6544 (exprs!2679 (_2!17992 (_1!17993 (h!36563 mapValue!16163)))) lambda!100321))))

(declare-fun bs!484089 () Bool)

(assert (= bs!484089 d!772845))

(declare-fun m!3077959 () Bool)

(assert (=> bs!484089 m!3077959))

(assert (=> b!2696265 d!772845))

(declare-fun d!772847 () Bool)

(declare-fun res!1132860 () Bool)

(declare-fun e!1700505 () Bool)

(assert (=> d!772847 (=> (not res!1132860) (not e!1700505))))

(assert (=> d!772847 (= res!1132860 (<= (size!24053 (list!11751 (xs!12775 (c!434614 input!780)))) 512))))

(assert (=> d!772847 (= (inv!42201 (c!434614 input!780)) e!1700505)))

(declare-fun b!2696704 () Bool)

(declare-fun res!1132861 () Bool)

(assert (=> b!2696704 (=> (not res!1132861) (not e!1700505))))

(assert (=> b!2696704 (= res!1132861 (= (csize!19701 (c!434614 input!780)) (size!24053 (list!11751 (xs!12775 (c!434614 input!780))))))))

(declare-fun b!2696705 () Bool)

(assert (=> b!2696705 (= e!1700505 (and (> (csize!19701 (c!434614 input!780)) 0) (<= (csize!19701 (c!434614 input!780)) 512)))))

(assert (= (and d!772847 res!1132860) b!2696704))

(assert (= (and b!2696704 res!1132861) b!2696705))

(assert (=> d!772847 m!3077597))

(assert (=> d!772847 m!3077597))

(declare-fun m!3077961 () Bool)

(assert (=> d!772847 m!3077961))

(assert (=> b!2696704 m!3077597))

(assert (=> b!2696704 m!3077597))

(assert (=> b!2696704 m!3077961))

(assert (=> b!2696209 d!772847))

(declare-fun d!772849 () Bool)

(declare-fun res!1132862 () Bool)

(declare-fun e!1700506 () Bool)

(assert (=> d!772849 (=> (not res!1132862) (not e!1700506))))

(assert (=> d!772849 (= res!1132862 (= (csize!19700 (c!434614 treated!26)) (+ (size!24054 (left!23981 (c!434614 treated!26))) (size!24054 (right!24311 (c!434614 treated!26))))))))

(assert (=> d!772849 (= (inv!42200 (c!434614 treated!26)) e!1700506)))

(declare-fun b!2696706 () Bool)

(declare-fun res!1132863 () Bool)

(assert (=> b!2696706 (=> (not res!1132863) (not e!1700506))))

(assert (=> b!2696706 (= res!1132863 (and (not (= (left!23981 (c!434614 treated!26)) Empty!9735)) (not (= (right!24311 (c!434614 treated!26)) Empty!9735))))))

(declare-fun b!2696707 () Bool)

(declare-fun res!1132864 () Bool)

(assert (=> b!2696707 (=> (not res!1132864) (not e!1700506))))

(assert (=> b!2696707 (= res!1132864 (= (cheight!9946 (c!434614 treated!26)) (+ (max!0 (height!1428 (left!23981 (c!434614 treated!26))) (height!1428 (right!24311 (c!434614 treated!26)))) 1)))))

(declare-fun b!2696708 () Bool)

(assert (=> b!2696708 (= e!1700506 (<= 0 (cheight!9946 (c!434614 treated!26))))))

(assert (= (and d!772849 res!1132862) b!2696706))

(assert (= (and b!2696706 res!1132863) b!2696707))

(assert (= (and b!2696707 res!1132864) b!2696708))

(declare-fun m!3077963 () Bool)

(assert (=> d!772849 m!3077963))

(declare-fun m!3077965 () Bool)

(assert (=> d!772849 m!3077965))

(assert (=> b!2696707 m!3077795))

(assert (=> b!2696707 m!3077797))

(assert (=> b!2696707 m!3077795))

(assert (=> b!2696707 m!3077797))

(declare-fun m!3077967 () Bool)

(assert (=> b!2696707 m!3077967))

(assert (=> b!2696121 d!772849))

(declare-fun bs!484090 () Bool)

(declare-fun d!772851 () Bool)

(assert (= bs!484090 (and d!772851 d!772669)))

(declare-fun lambda!100322 () Int)

(assert (=> bs!484090 (= lambda!100322 lambda!100288)))

(declare-fun bs!484091 () Bool)

(assert (= bs!484091 (and d!772851 d!772753)))

(assert (=> bs!484091 (= lambda!100322 lambda!100308)))

(declare-fun bs!484092 () Bool)

(assert (= bs!484092 (and d!772851 d!772795)))

(assert (=> bs!484092 (= lambda!100322 lambda!100317)))

(declare-fun bs!484093 () Bool)

(assert (= bs!484093 (and d!772851 d!772689)))

(assert (=> bs!484093 (= lambda!100322 lambda!100293)))

(declare-fun bs!484094 () Bool)

(assert (= bs!484094 (and d!772851 d!772803)))

(assert (=> bs!484094 (= lambda!100322 lambda!100319)))

(declare-fun bs!484095 () Bool)

(assert (= bs!484095 (and d!772851 d!772679)))

(assert (=> bs!484095 (= lambda!100322 lambda!100292)))

(declare-fun bs!484096 () Bool)

(assert (= bs!484096 (and d!772851 d!772845)))

(assert (=> bs!484096 (= lambda!100322 lambda!100321)))

(declare-fun bs!484097 () Bool)

(assert (= bs!484097 (and d!772851 d!772747)))

(assert (=> bs!484097 (= lambda!100322 lambda!100304)))

(declare-fun bs!484098 () Bool)

(assert (= bs!484098 (and d!772851 d!772797)))

(assert (=> bs!484098 (= lambda!100322 lambda!100318)))

(declare-fun bs!484099 () Bool)

(assert (= bs!484099 (and d!772851 d!772703)))

(assert (=> bs!484099 (= lambda!100322 lambda!100297)))

(declare-fun bs!484100 () Bool)

(assert (= bs!484100 (and d!772851 d!772705)))

(assert (=> bs!484100 (= lambda!100322 lambda!100298)))

(declare-fun bs!484101 () Bool)

(assert (= bs!484101 (and d!772851 d!772693)))

(assert (=> bs!484101 (= lambda!100322 lambda!100295)))

(declare-fun bs!484102 () Bool)

(assert (= bs!484102 (and d!772851 d!772695)))

(assert (=> bs!484102 (= lambda!100322 lambda!100296)))

(declare-fun bs!484103 () Bool)

(assert (= bs!484103 (and d!772851 d!772709)))

(assert (=> bs!484103 (= lambda!100322 lambda!100299)))

(declare-fun bs!484104 () Bool)

(assert (= bs!484104 (and d!772851 d!772745)))

(assert (=> bs!484104 (= lambda!100322 lambda!100303)))

(declare-fun bs!484105 () Bool)

(assert (= bs!484105 (and d!772851 d!772691)))

(assert (=> bs!484105 (= lambda!100322 lambda!100294)))

(declare-fun bs!484106 () Bool)

(assert (= bs!484106 (and d!772851 d!772755)))

(assert (=> bs!484106 (= lambda!100322 lambda!100309)))

(declare-fun bs!484107 () Bool)

(assert (= bs!484107 (and d!772851 d!772757)))

(assert (=> bs!484107 (= lambda!100322 lambda!100310)))

(declare-fun bs!484108 () Bool)

(assert (= bs!484108 (and d!772851 d!772805)))

(assert (=> bs!484108 (= lambda!100322 lambda!100320)))

(assert (=> d!772851 (= (inv!42205 setElem!21251) (forall!6544 (exprs!2679 setElem!21251) lambda!100322))))

(declare-fun bs!484109 () Bool)

(assert (= bs!484109 d!772851))

(declare-fun m!3077969 () Bool)

(assert (=> bs!484109 m!3077969))

(assert (=> setNonEmpty!21251 d!772851))

(declare-fun bs!484110 () Bool)

(declare-fun d!772853 () Bool)

(assert (= bs!484110 (and d!772853 d!772669)))

(declare-fun lambda!100323 () Int)

(assert (=> bs!484110 (= lambda!100323 lambda!100288)))

(declare-fun bs!484111 () Bool)

(assert (= bs!484111 (and d!772853 d!772753)))

(assert (=> bs!484111 (= lambda!100323 lambda!100308)))

(declare-fun bs!484112 () Bool)

(assert (= bs!484112 (and d!772853 d!772795)))

(assert (=> bs!484112 (= lambda!100323 lambda!100317)))

(declare-fun bs!484113 () Bool)

(assert (= bs!484113 (and d!772853 d!772689)))

(assert (=> bs!484113 (= lambda!100323 lambda!100293)))

(declare-fun bs!484114 () Bool)

(assert (= bs!484114 (and d!772853 d!772803)))

(assert (=> bs!484114 (= lambda!100323 lambda!100319)))

(declare-fun bs!484115 () Bool)

(assert (= bs!484115 (and d!772853 d!772679)))

(assert (=> bs!484115 (= lambda!100323 lambda!100292)))

(declare-fun bs!484116 () Bool)

(assert (= bs!484116 (and d!772853 d!772845)))

(assert (=> bs!484116 (= lambda!100323 lambda!100321)))

(declare-fun bs!484117 () Bool)

(assert (= bs!484117 (and d!772853 d!772747)))

(assert (=> bs!484117 (= lambda!100323 lambda!100304)))

(declare-fun bs!484118 () Bool)

(assert (= bs!484118 (and d!772853 d!772797)))

(assert (=> bs!484118 (= lambda!100323 lambda!100318)))

(declare-fun bs!484119 () Bool)

(assert (= bs!484119 (and d!772853 d!772703)))

(assert (=> bs!484119 (= lambda!100323 lambda!100297)))

(declare-fun bs!484120 () Bool)

(assert (= bs!484120 (and d!772853 d!772705)))

(assert (=> bs!484120 (= lambda!100323 lambda!100298)))

(declare-fun bs!484121 () Bool)

(assert (= bs!484121 (and d!772853 d!772851)))

(assert (=> bs!484121 (= lambda!100323 lambda!100322)))

(declare-fun bs!484122 () Bool)

(assert (= bs!484122 (and d!772853 d!772693)))

(assert (=> bs!484122 (= lambda!100323 lambda!100295)))

(declare-fun bs!484123 () Bool)

(assert (= bs!484123 (and d!772853 d!772695)))

(assert (=> bs!484123 (= lambda!100323 lambda!100296)))

(declare-fun bs!484124 () Bool)

(assert (= bs!484124 (and d!772853 d!772709)))

(assert (=> bs!484124 (= lambda!100323 lambda!100299)))

(declare-fun bs!484125 () Bool)

(assert (= bs!484125 (and d!772853 d!772745)))

(assert (=> bs!484125 (= lambda!100323 lambda!100303)))

(declare-fun bs!484126 () Bool)

(assert (= bs!484126 (and d!772853 d!772691)))

(assert (=> bs!484126 (= lambda!100323 lambda!100294)))

(declare-fun bs!484127 () Bool)

(assert (= bs!484127 (and d!772853 d!772755)))

(assert (=> bs!484127 (= lambda!100323 lambda!100309)))

(declare-fun bs!484128 () Bool)

(assert (= bs!484128 (and d!772853 d!772757)))

(assert (=> bs!484128 (= lambda!100323 lambda!100310)))

(declare-fun bs!484129 () Bool)

(assert (= bs!484129 (and d!772853 d!772805)))

(assert (=> bs!484129 (= lambda!100323 lambda!100320)))

(assert (=> d!772853 (= (inv!42205 setElem!21268) (forall!6544 (exprs!2679 setElem!21268) lambda!100323))))

(declare-fun bs!484130 () Bool)

(assert (= bs!484130 d!772853))

(declare-fun m!3077971 () Bool)

(assert (=> bs!484130 m!3077971))

(assert (=> setNonEmpty!21268 d!772853))

(declare-fun bs!484131 () Bool)

(declare-fun d!772855 () Bool)

(assert (= bs!484131 (and d!772855 d!772669)))

(declare-fun lambda!100324 () Int)

(assert (=> bs!484131 (= lambda!100324 lambda!100288)))

(declare-fun bs!484132 () Bool)

(assert (= bs!484132 (and d!772855 d!772753)))

(assert (=> bs!484132 (= lambda!100324 lambda!100308)))

(declare-fun bs!484133 () Bool)

(assert (= bs!484133 (and d!772855 d!772795)))

(assert (=> bs!484133 (= lambda!100324 lambda!100317)))

(declare-fun bs!484134 () Bool)

(assert (= bs!484134 (and d!772855 d!772689)))

(assert (=> bs!484134 (= lambda!100324 lambda!100293)))

(declare-fun bs!484135 () Bool)

(assert (= bs!484135 (and d!772855 d!772803)))

(assert (=> bs!484135 (= lambda!100324 lambda!100319)))

(declare-fun bs!484136 () Bool)

(assert (= bs!484136 (and d!772855 d!772679)))

(assert (=> bs!484136 (= lambda!100324 lambda!100292)))

(declare-fun bs!484137 () Bool)

(assert (= bs!484137 (and d!772855 d!772845)))

(assert (=> bs!484137 (= lambda!100324 lambda!100321)))

(declare-fun bs!484138 () Bool)

(assert (= bs!484138 (and d!772855 d!772747)))

(assert (=> bs!484138 (= lambda!100324 lambda!100304)))

(declare-fun bs!484139 () Bool)

(assert (= bs!484139 (and d!772855 d!772797)))

(assert (=> bs!484139 (= lambda!100324 lambda!100318)))

(declare-fun bs!484140 () Bool)

(assert (= bs!484140 (and d!772855 d!772703)))

(assert (=> bs!484140 (= lambda!100324 lambda!100297)))

(declare-fun bs!484141 () Bool)

(assert (= bs!484141 (and d!772855 d!772851)))

(assert (=> bs!484141 (= lambda!100324 lambda!100322)))

(declare-fun bs!484142 () Bool)

(assert (= bs!484142 (and d!772855 d!772693)))

(assert (=> bs!484142 (= lambda!100324 lambda!100295)))

(declare-fun bs!484143 () Bool)

(assert (= bs!484143 (and d!772855 d!772695)))

(assert (=> bs!484143 (= lambda!100324 lambda!100296)))

(declare-fun bs!484144 () Bool)

(assert (= bs!484144 (and d!772855 d!772709)))

(assert (=> bs!484144 (= lambda!100324 lambda!100299)))

(declare-fun bs!484145 () Bool)

(assert (= bs!484145 (and d!772855 d!772745)))

(assert (=> bs!484145 (= lambda!100324 lambda!100303)))

(declare-fun bs!484146 () Bool)

(assert (= bs!484146 (and d!772855 d!772691)))

(assert (=> bs!484146 (= lambda!100324 lambda!100294)))

(declare-fun bs!484147 () Bool)

(assert (= bs!484147 (and d!772855 d!772755)))

(assert (=> bs!484147 (= lambda!100324 lambda!100309)))

(declare-fun bs!484148 () Bool)

(assert (= bs!484148 (and d!772855 d!772757)))

(assert (=> bs!484148 (= lambda!100324 lambda!100310)))

(declare-fun bs!484149 () Bool)

(assert (= bs!484149 (and d!772855 d!772805)))

(assert (=> bs!484149 (= lambda!100324 lambda!100320)))

(declare-fun bs!484150 () Bool)

(assert (= bs!484150 (and d!772855 d!772705)))

(assert (=> bs!484150 (= lambda!100324 lambda!100298)))

(declare-fun bs!484151 () Bool)

(assert (= bs!484151 (and d!772855 d!772853)))

(assert (=> bs!484151 (= lambda!100324 lambda!100323)))

(assert (=> d!772855 (= (inv!42205 (_1!17994 (_1!17995 (h!36565 mapDefault!16164)))) (forall!6544 (exprs!2679 (_1!17994 (_1!17995 (h!36565 mapDefault!16164)))) lambda!100324))))

(declare-fun bs!484152 () Bool)

(assert (= bs!484152 d!772855))

(declare-fun m!3077973 () Bool)

(assert (=> bs!484152 m!3077973))

(assert (=> b!2696332 d!772855))

(assert (=> b!2696172 d!772771))

(assert (=> b!2696172 d!772829))

(assert (=> b!2696172 d!772645))

(declare-fun d!772857 () Bool)

(declare-fun lt!952673 () Int)

(assert (=> d!772857 (= lt!952673 (size!24053 (list!11747 (_2!17996 lt!952567))))))

(assert (=> d!772857 (= lt!952673 (size!24054 (c!434614 (_2!17996 lt!952567))))))

(assert (=> d!772857 (= (size!24051 (_2!17996 lt!952567)) lt!952673)))

(declare-fun bs!484153 () Bool)

(assert (= bs!484153 d!772857))

(assert (=> bs!484153 m!3077269))

(assert (=> bs!484153 m!3077269))

(declare-fun m!3077975 () Bool)

(assert (=> bs!484153 m!3077975))

(declare-fun m!3077977 () Bool)

(assert (=> bs!484153 m!3077977))

(assert (=> b!2696151 d!772857))

(assert (=> b!2696151 d!772663))

(declare-fun b!2696709 () Bool)

(declare-fun res!1132869 () Bool)

(declare-fun e!1700507 () Bool)

(assert (=> b!2696709 (=> (not res!1132869) (not e!1700507))))

(assert (=> b!2696709 (= res!1132869 (isBalanced!2946 (left!23981 (c!434614 totalInput!354))))))

(declare-fun b!2696710 () Bool)

(assert (=> b!2696710 (= e!1700507 (not (isEmpty!17749 (right!24311 (c!434614 totalInput!354)))))))

(declare-fun b!2696711 () Bool)

(declare-fun res!1132866 () Bool)

(assert (=> b!2696711 (=> (not res!1132866) (not e!1700507))))

(assert (=> b!2696711 (= res!1132866 (not (isEmpty!17749 (left!23981 (c!434614 totalInput!354)))))))

(declare-fun b!2696712 () Bool)

(declare-fun res!1132865 () Bool)

(assert (=> b!2696712 (=> (not res!1132865) (not e!1700507))))

(assert (=> b!2696712 (= res!1132865 (<= (- (height!1428 (left!23981 (c!434614 totalInput!354))) (height!1428 (right!24311 (c!434614 totalInput!354)))) 1))))

(declare-fun d!772859 () Bool)

(declare-fun res!1132867 () Bool)

(declare-fun e!1700508 () Bool)

(assert (=> d!772859 (=> res!1132867 e!1700508)))

(assert (=> d!772859 (= res!1132867 (not ((_ is Node!9735) (c!434614 totalInput!354))))))

(assert (=> d!772859 (= (isBalanced!2946 (c!434614 totalInput!354)) e!1700508)))

(declare-fun b!2696713 () Bool)

(declare-fun res!1132870 () Bool)

(assert (=> b!2696713 (=> (not res!1132870) (not e!1700507))))

(assert (=> b!2696713 (= res!1132870 (isBalanced!2946 (right!24311 (c!434614 totalInput!354))))))

(declare-fun b!2696714 () Bool)

(assert (=> b!2696714 (= e!1700508 e!1700507)))

(declare-fun res!1132868 () Bool)

(assert (=> b!2696714 (=> (not res!1132868) (not e!1700507))))

(assert (=> b!2696714 (= res!1132868 (<= (- 1) (- (height!1428 (left!23981 (c!434614 totalInput!354))) (height!1428 (right!24311 (c!434614 totalInput!354))))))))

(assert (= (and d!772859 (not res!1132867)) b!2696714))

(assert (= (and b!2696714 res!1132868) b!2696712))

(assert (= (and b!2696712 res!1132865) b!2696709))

(assert (= (and b!2696709 res!1132869) b!2696713))

(assert (= (and b!2696713 res!1132870) b!2696711))

(assert (= (and b!2696711 res!1132866) b!2696710))

(assert (=> b!2696714 m!3077911))

(assert (=> b!2696714 m!3077913))

(assert (=> b!2696712 m!3077911))

(assert (=> b!2696712 m!3077913))

(declare-fun m!3077979 () Bool)

(assert (=> b!2696711 m!3077979))

(declare-fun m!3077981 () Bool)

(assert (=> b!2696713 m!3077981))

(declare-fun m!3077983 () Bool)

(assert (=> b!2696710 m!3077983))

(declare-fun m!3077985 () Bool)

(assert (=> b!2696709 m!3077985))

(assert (=> d!772639 d!772859))

(declare-fun d!772861 () Bool)

(declare-fun c!434725 () Bool)

(assert (=> d!772861 (= c!434725 ((_ is Node!9736) (left!23982 (c!434615 acc!348))))))

(declare-fun e!1700509 () Bool)

(assert (=> d!772861 (= (inv!42197 (left!23982 (c!434615 acc!348))) e!1700509)))

(declare-fun b!2696715 () Bool)

(assert (=> b!2696715 (= e!1700509 (inv!42202 (left!23982 (c!434615 acc!348))))))

(declare-fun b!2696716 () Bool)

(declare-fun e!1700510 () Bool)

(assert (=> b!2696716 (= e!1700509 e!1700510)))

(declare-fun res!1132871 () Bool)

(assert (=> b!2696716 (= res!1132871 (not ((_ is Leaf!14857) (left!23982 (c!434615 acc!348)))))))

(assert (=> b!2696716 (=> res!1132871 e!1700510)))

(declare-fun b!2696717 () Bool)

(assert (=> b!2696717 (= e!1700510 (inv!42203 (left!23982 (c!434615 acc!348))))))

(assert (= (and d!772861 c!434725) b!2696715))

(assert (= (and d!772861 (not c!434725)) b!2696716))

(assert (= (and b!2696716 (not res!1132871)) b!2696717))

(declare-fun m!3077987 () Bool)

(assert (=> b!2696715 m!3077987))

(declare-fun m!3077989 () Bool)

(assert (=> b!2696717 m!3077989))

(assert (=> b!2696274 d!772861))

(declare-fun d!772863 () Bool)

(declare-fun c!434726 () Bool)

(assert (=> d!772863 (= c!434726 ((_ is Node!9736) (right!24312 (c!434615 acc!348))))))

(declare-fun e!1700511 () Bool)

(assert (=> d!772863 (= (inv!42197 (right!24312 (c!434615 acc!348))) e!1700511)))

(declare-fun b!2696718 () Bool)

(assert (=> b!2696718 (= e!1700511 (inv!42202 (right!24312 (c!434615 acc!348))))))

(declare-fun b!2696719 () Bool)

(declare-fun e!1700512 () Bool)

(assert (=> b!2696719 (= e!1700511 e!1700512)))

(declare-fun res!1132872 () Bool)

(assert (=> b!2696719 (= res!1132872 (not ((_ is Leaf!14857) (right!24312 (c!434615 acc!348)))))))

(assert (=> b!2696719 (=> res!1132872 e!1700512)))

(declare-fun b!2696720 () Bool)

(assert (=> b!2696720 (= e!1700512 (inv!42203 (right!24312 (c!434615 acc!348))))))

(assert (= (and d!772863 c!434726) b!2696718))

(assert (= (and d!772863 (not c!434726)) b!2696719))

(assert (= (and b!2696719 (not res!1132872)) b!2696720))

(declare-fun m!3077991 () Bool)

(assert (=> b!2696718 m!3077991))

(declare-fun m!3077993 () Bool)

(assert (=> b!2696720 m!3077993))

(assert (=> b!2696274 d!772863))

(declare-fun b!2696723 () Bool)

(declare-fun e!1700514 () List!31247)

(assert (=> b!2696723 (= e!1700514 (list!11752 (xs!12776 (c!434615 (_1!17996 lt!952552)))))))

(declare-fun b!2696721 () Bool)

(declare-fun e!1700513 () List!31247)

(assert (=> b!2696721 (= e!1700513 Nil!31147)))

(declare-fun b!2696722 () Bool)

(assert (=> b!2696722 (= e!1700513 e!1700514)))

(declare-fun c!434728 () Bool)

(assert (=> b!2696722 (= c!434728 ((_ is Leaf!14857) (c!434615 (_1!17996 lt!952552))))))

(declare-fun d!772865 () Bool)

(declare-fun c!434727 () Bool)

(assert (=> d!772865 (= c!434727 ((_ is Empty!9736) (c!434615 (_1!17996 lt!952552))))))

(assert (=> d!772865 (= (list!11750 (c!434615 (_1!17996 lt!952552))) e!1700513)))

(declare-fun b!2696724 () Bool)

(assert (=> b!2696724 (= e!1700514 (++!7648 (list!11750 (left!23982 (c!434615 (_1!17996 lt!952552)))) (list!11750 (right!24312 (c!434615 (_1!17996 lt!952552))))))))

(assert (= (and d!772865 c!434727) b!2696721))

(assert (= (and d!772865 (not c!434727)) b!2696722))

(assert (= (and b!2696722 c!434728) b!2696723))

(assert (= (and b!2696722 (not c!434728)) b!2696724))

(declare-fun m!3077995 () Bool)

(assert (=> b!2696723 m!3077995))

(declare-fun m!3077997 () Bool)

(assert (=> b!2696724 m!3077997))

(declare-fun m!3077999 () Bool)

(assert (=> b!2696724 m!3077999))

(assert (=> b!2696724 m!3077997))

(assert (=> b!2696724 m!3077999))

(declare-fun m!3078001 () Bool)

(assert (=> b!2696724 m!3078001))

(assert (=> d!772613 d!772865))

(declare-fun d!772867 () Bool)

(declare-fun res!1132877 () Bool)

(declare-fun e!1700519 () Bool)

(assert (=> d!772867 (=> res!1132877 e!1700519)))

(assert (=> d!772867 (= res!1132877 ((_ is Nil!31148) rules!1381))))

(assert (=> d!772867 (= (noDuplicateTag!1765 thiss!12257 rules!1381 Nil!31149) e!1700519)))

(declare-fun b!2696729 () Bool)

(declare-fun e!1700520 () Bool)

(assert (=> b!2696729 (= e!1700519 e!1700520)))

(declare-fun res!1132878 () Bool)

(assert (=> b!2696729 (=> (not res!1132878) (not e!1700520))))

(declare-fun contains!5944 (List!31249 String!34775) Bool)

(assert (=> b!2696729 (= res!1132878 (not (contains!5944 Nil!31149 (tag!5257 (h!36568 rules!1381)))))))

(declare-fun b!2696730 () Bool)

(assert (=> b!2696730 (= e!1700520 (noDuplicateTag!1765 thiss!12257 (t!225255 rules!1381) (Cons!31149 (tag!5257 (h!36568 rules!1381)) Nil!31149)))))

(assert (= (and d!772867 (not res!1132877)) b!2696729))

(assert (= (and b!2696729 res!1132878) b!2696730))

(declare-fun m!3078003 () Bool)

(assert (=> b!2696729 m!3078003))

(declare-fun m!3078005 () Bool)

(assert (=> b!2696730 m!3078005))

(assert (=> b!2696126 d!772867))

(declare-fun bs!484154 () Bool)

(declare-fun d!772869 () Bool)

(assert (= bs!484154 (and d!772869 d!772669)))

(declare-fun lambda!100325 () Int)

(assert (=> bs!484154 (= lambda!100325 lambda!100288)))

(declare-fun bs!484155 () Bool)

(assert (= bs!484155 (and d!772869 d!772753)))

(assert (=> bs!484155 (= lambda!100325 lambda!100308)))

(declare-fun bs!484156 () Bool)

(assert (= bs!484156 (and d!772869 d!772795)))

(assert (=> bs!484156 (= lambda!100325 lambda!100317)))

(declare-fun bs!484157 () Bool)

(assert (= bs!484157 (and d!772869 d!772689)))

(assert (=> bs!484157 (= lambda!100325 lambda!100293)))

(declare-fun bs!484158 () Bool)

(assert (= bs!484158 (and d!772869 d!772803)))

(assert (=> bs!484158 (= lambda!100325 lambda!100319)))

(declare-fun bs!484159 () Bool)

(assert (= bs!484159 (and d!772869 d!772679)))

(assert (=> bs!484159 (= lambda!100325 lambda!100292)))

(declare-fun bs!484160 () Bool)

(assert (= bs!484160 (and d!772869 d!772845)))

(assert (=> bs!484160 (= lambda!100325 lambda!100321)))

(declare-fun bs!484161 () Bool)

(assert (= bs!484161 (and d!772869 d!772747)))

(assert (=> bs!484161 (= lambda!100325 lambda!100304)))

(declare-fun bs!484162 () Bool)

(assert (= bs!484162 (and d!772869 d!772797)))

(assert (=> bs!484162 (= lambda!100325 lambda!100318)))

(declare-fun bs!484163 () Bool)

(assert (= bs!484163 (and d!772869 d!772703)))

(assert (=> bs!484163 (= lambda!100325 lambda!100297)))

(declare-fun bs!484164 () Bool)

(assert (= bs!484164 (and d!772869 d!772851)))

(assert (=> bs!484164 (= lambda!100325 lambda!100322)))

(declare-fun bs!484165 () Bool)

(assert (= bs!484165 (and d!772869 d!772693)))

(assert (=> bs!484165 (= lambda!100325 lambda!100295)))

(declare-fun bs!484166 () Bool)

(assert (= bs!484166 (and d!772869 d!772855)))

(assert (=> bs!484166 (= lambda!100325 lambda!100324)))

(declare-fun bs!484167 () Bool)

(assert (= bs!484167 (and d!772869 d!772695)))

(assert (=> bs!484167 (= lambda!100325 lambda!100296)))

(declare-fun bs!484168 () Bool)

(assert (= bs!484168 (and d!772869 d!772709)))

(assert (=> bs!484168 (= lambda!100325 lambda!100299)))

(declare-fun bs!484169 () Bool)

(assert (= bs!484169 (and d!772869 d!772745)))

(assert (=> bs!484169 (= lambda!100325 lambda!100303)))

(declare-fun bs!484170 () Bool)

(assert (= bs!484170 (and d!772869 d!772691)))

(assert (=> bs!484170 (= lambda!100325 lambda!100294)))

(declare-fun bs!484171 () Bool)

(assert (= bs!484171 (and d!772869 d!772755)))

(assert (=> bs!484171 (= lambda!100325 lambda!100309)))

(declare-fun bs!484172 () Bool)

(assert (= bs!484172 (and d!772869 d!772757)))

(assert (=> bs!484172 (= lambda!100325 lambda!100310)))

(declare-fun bs!484173 () Bool)

(assert (= bs!484173 (and d!772869 d!772805)))

(assert (=> bs!484173 (= lambda!100325 lambda!100320)))

(declare-fun bs!484174 () Bool)

(assert (= bs!484174 (and d!772869 d!772705)))

(assert (=> bs!484174 (= lambda!100325 lambda!100298)))

(declare-fun bs!484175 () Bool)

(assert (= bs!484175 (and d!772869 d!772853)))

(assert (=> bs!484175 (= lambda!100325 lambda!100323)))

(assert (=> d!772869 (= (inv!42205 (_1!17994 (_1!17995 (h!36565 mapDefault!16170)))) (forall!6544 (exprs!2679 (_1!17994 (_1!17995 (h!36565 mapDefault!16170)))) lambda!100325))))

(declare-fun bs!484176 () Bool)

(assert (= bs!484176 d!772869))

(declare-fun m!3078007 () Bool)

(assert (=> bs!484176 m!3078007))

(assert (=> b!2696305 d!772869))

(declare-fun d!772871 () Bool)

(assert (=> d!772871 (= (list!11748 (_1!17996 lt!952564)) (list!11750 (c!434615 (_1!17996 lt!952564))))))

(declare-fun bs!484177 () Bool)

(assert (= bs!484177 d!772871))

(declare-fun m!3078009 () Bool)

(assert (=> bs!484177 m!3078009))

(assert (=> b!2696148 d!772871))

(assert (=> b!2696148 d!772783))

(assert (=> b!2696148 d!772649))

(declare-fun d!772873 () Bool)

(declare-fun lt!952674 () Int)

(assert (=> d!772873 (= lt!952674 (size!24055 (list!11748 (_1!17996 lt!952564))))))

(assert (=> d!772873 (= lt!952674 (size!24056 (c!434615 (_1!17996 lt!952564))))))

(assert (=> d!772873 (= (size!24052 (_1!17996 lt!952564)) lt!952674)))

(declare-fun bs!484178 () Bool)

(assert (= bs!484178 d!772873))

(assert (=> bs!484178 m!3077265))

(assert (=> bs!484178 m!3077265))

(declare-fun m!3078011 () Bool)

(assert (=> bs!484178 m!3078011))

(declare-fun m!3078013 () Bool)

(assert (=> bs!484178 m!3078013))

(assert (=> d!772617 d!772873))

(declare-fun b!2696731 () Bool)

(declare-fun lt!952675 () Option!6146)

(declare-fun e!1700525 () Bool)

(assert (=> b!2696731 (= e!1700525 (= (list!11747 (_2!17998 (get!9731 lt!952675))) (_2!17999 (get!9732 (maxPrefixZipper!457 thiss!12257 rules!1381 (list!11747 treated!26))))))))

(declare-fun b!2696732 () Bool)

(declare-fun e!1700526 () Option!6146)

(declare-fun call!173648 () Option!6146)

(assert (=> b!2696732 (= e!1700526 call!173648)))

(declare-fun b!2696733 () Bool)

(declare-fun e!1700522 () Bool)

(assert (=> b!2696733 (= e!1700522 e!1700525)))

(declare-fun res!1132883 () Bool)

(assert (=> b!2696733 (=> (not res!1132883) (not e!1700525))))

(assert (=> b!2696733 (= res!1132883 (= (_1!17998 (get!9731 lt!952675)) (_1!17999 (get!9732 (maxPrefixZipper!457 thiss!12257 rules!1381 (list!11747 treated!26))))))))

(declare-fun b!2696734 () Bool)

(declare-fun lt!952681 () Option!6146)

(declare-fun lt!952679 () Option!6146)

(assert (=> b!2696734 (= e!1700526 (ite (and ((_ is None!6145) lt!952681) ((_ is None!6145) lt!952679)) None!6145 (ite ((_ is None!6145) lt!952679) lt!952681 (ite ((_ is None!6145) lt!952681) lt!952679 (ite (>= (size!24050 (_1!17998 (v!32920 lt!952681))) (size!24050 (_1!17998 (v!32920 lt!952679)))) lt!952681 lt!952679)))))))

(assert (=> b!2696734 (= lt!952681 call!173648)))

(assert (=> b!2696734 (= lt!952679 (maxPrefixZipperSequence!1010 thiss!12257 (t!225255 rules!1381) treated!26))))

(declare-fun bm!173643 () Bool)

(assert (=> bm!173643 (= call!173648 (maxPrefixOneRuleZipperSequence!466 thiss!12257 (h!36568 rules!1381) treated!26))))

(declare-fun b!2696735 () Bool)

(declare-fun e!1700524 () Bool)

(declare-fun e!1700521 () Bool)

(assert (=> b!2696735 (= e!1700524 e!1700521)))

(declare-fun res!1132884 () Bool)

(assert (=> b!2696735 (=> (not res!1132884) (not e!1700521))))

(assert (=> b!2696735 (= res!1132884 (= (_1!17998 (get!9731 lt!952675)) (_1!17999 (get!9732 (maxPrefix!2353 thiss!12257 rules!1381 (list!11747 treated!26))))))))

(declare-fun d!772875 () Bool)

(declare-fun e!1700523 () Bool)

(assert (=> d!772875 e!1700523))

(declare-fun res!1132880 () Bool)

(assert (=> d!772875 (=> (not res!1132880) (not e!1700523))))

(assert (=> d!772875 (= res!1132880 (= (isDefined!4867 lt!952675) (isDefined!4868 (maxPrefixZipper!457 thiss!12257 rules!1381 (list!11747 treated!26)))))))

(assert (=> d!772875 (= lt!952675 e!1700526)))

(declare-fun c!434729 () Bool)

(assert (=> d!772875 (= c!434729 (and ((_ is Cons!31148) rules!1381) ((_ is Nil!31148) (t!225255 rules!1381))))))

(declare-fun lt!952677 () Unit!45223)

(declare-fun lt!952678 () Unit!45223)

(assert (=> d!772875 (= lt!952677 lt!952678)))

(declare-fun lt!952680 () List!31244)

(declare-fun lt!952676 () List!31244)

(assert (=> d!772875 (isPrefix!2470 lt!952680 lt!952676)))

(assert (=> d!772875 (= lt!952678 (lemmaIsPrefixRefl!1596 lt!952680 lt!952676))))

(assert (=> d!772875 (= lt!952676 (list!11747 treated!26))))

(assert (=> d!772875 (= lt!952680 (list!11747 treated!26))))

(assert (=> d!772875 (rulesValidInductive!1652 thiss!12257 rules!1381)))

(assert (=> d!772875 (= (maxPrefixZipperSequence!1010 thiss!12257 rules!1381 treated!26) lt!952675)))

(declare-fun b!2696736 () Bool)

(assert (=> b!2696736 (= e!1700521 (= (list!11747 (_2!17998 (get!9731 lt!952675))) (_2!17999 (get!9732 (maxPrefix!2353 thiss!12257 rules!1381 (list!11747 treated!26))))))))

(declare-fun b!2696737 () Bool)

(declare-fun res!1132882 () Bool)

(assert (=> b!2696737 (=> (not res!1132882) (not e!1700523))))

(assert (=> b!2696737 (= res!1132882 e!1700522)))

(declare-fun res!1132881 () Bool)

(assert (=> b!2696737 (=> res!1132881 e!1700522)))

(assert (=> b!2696737 (= res!1132881 (not (isDefined!4867 lt!952675)))))

(declare-fun b!2696738 () Bool)

(assert (=> b!2696738 (= e!1700523 e!1700524)))

(declare-fun res!1132879 () Bool)

(assert (=> b!2696738 (=> res!1132879 e!1700524)))

(assert (=> b!2696738 (= res!1132879 (not (isDefined!4867 lt!952675)))))

(assert (= (and d!772875 c!434729) b!2696732))

(assert (= (and d!772875 (not c!434729)) b!2696734))

(assert (= (or b!2696732 b!2696734) bm!173643))

(assert (= (and d!772875 res!1132880) b!2696737))

(assert (= (and b!2696737 (not res!1132881)) b!2696733))

(assert (= (and b!2696733 res!1132883) b!2696731))

(assert (= (and b!2696737 res!1132882) b!2696738))

(assert (= (and b!2696738 (not res!1132879)) b!2696735))

(assert (= (and b!2696735 res!1132884) b!2696736))

(declare-fun m!3078015 () Bool)

(assert (=> b!2696738 m!3078015))

(declare-fun m!3078017 () Bool)

(assert (=> b!2696733 m!3078017))

(assert (=> b!2696733 m!3077211))

(assert (=> b!2696733 m!3077211))

(declare-fun m!3078019 () Bool)

(assert (=> b!2696733 m!3078019))

(assert (=> b!2696733 m!3078019))

(declare-fun m!3078021 () Bool)

(assert (=> b!2696733 m!3078021))

(declare-fun m!3078023 () Bool)

(assert (=> bm!173643 m!3078023))

(declare-fun m!3078025 () Bool)

(assert (=> b!2696734 m!3078025))

(assert (=> d!772875 m!3077211))

(assert (=> d!772875 m!3078019))

(assert (=> d!772875 m!3078015))

(declare-fun m!3078027 () Bool)

(assert (=> d!772875 m!3078027))

(declare-fun m!3078029 () Bool)

(assert (=> d!772875 m!3078029))

(assert (=> d!772875 m!3078019))

(declare-fun m!3078031 () Bool)

(assert (=> d!772875 m!3078031))

(assert (=> d!772875 m!3077521))

(assert (=> d!772875 m!3077211))

(assert (=> b!2696736 m!3077730))

(declare-fun m!3078033 () Bool)

(assert (=> b!2696736 m!3078033))

(declare-fun m!3078035 () Bool)

(assert (=> b!2696736 m!3078035))

(assert (=> b!2696736 m!3077211))

(assert (=> b!2696736 m!3078017))

(assert (=> b!2696736 m!3077211))

(assert (=> b!2696736 m!3077730))

(assert (=> b!2696737 m!3078015))

(assert (=> b!2696735 m!3078017))

(assert (=> b!2696735 m!3077211))

(assert (=> b!2696735 m!3077211))

(assert (=> b!2696735 m!3077730))

(assert (=> b!2696735 m!3077730))

(assert (=> b!2696735 m!3078033))

(assert (=> b!2696731 m!3077211))

(assert (=> b!2696731 m!3078019))

(assert (=> b!2696731 m!3078035))

(assert (=> b!2696731 m!3078019))

(assert (=> b!2696731 m!3078021))

(assert (=> b!2696731 m!3077211))

(assert (=> b!2696731 m!3078017))

(assert (=> d!772617 d!772875))

(declare-fun b!2696739 () Bool)

(declare-fun res!1132888 () Bool)

(declare-fun e!1700527 () Bool)

(assert (=> b!2696739 (=> (not res!1132888) (not e!1700527))))

(assert (=> b!2696739 (= res!1132888 (isBalanced!2945 (right!24312 (c!434615 acc!348))))))

(declare-fun b!2696740 () Bool)

(declare-fun e!1700528 () Bool)

(assert (=> b!2696740 (= e!1700528 e!1700527)))

(declare-fun res!1132885 () Bool)

(assert (=> b!2696740 (=> (not res!1132885) (not e!1700527))))

(assert (=> b!2696740 (= res!1132885 (<= (- 1) (- (height!1427 (left!23982 (c!434615 acc!348))) (height!1427 (right!24312 (c!434615 acc!348))))))))

(declare-fun b!2696741 () Bool)

(declare-fun res!1132886 () Bool)

(assert (=> b!2696741 (=> (not res!1132886) (not e!1700527))))

(assert (=> b!2696741 (= res!1132886 (not (isEmpty!17748 (left!23982 (c!434615 acc!348)))))))

(declare-fun b!2696742 () Bool)

(declare-fun res!1132890 () Bool)

(assert (=> b!2696742 (=> (not res!1132890) (not e!1700527))))

(assert (=> b!2696742 (= res!1132890 (isBalanced!2945 (left!23982 (c!434615 acc!348))))))

(declare-fun b!2696743 () Bool)

(assert (=> b!2696743 (= e!1700527 (not (isEmpty!17748 (right!24312 (c!434615 acc!348)))))))

(declare-fun d!772877 () Bool)

(declare-fun res!1132889 () Bool)

(assert (=> d!772877 (=> res!1132889 e!1700528)))

(assert (=> d!772877 (= res!1132889 (not ((_ is Node!9736) (c!434615 acc!348))))))

(assert (=> d!772877 (= (isBalanced!2945 (c!434615 acc!348)) e!1700528)))

(declare-fun b!2696744 () Bool)

(declare-fun res!1132887 () Bool)

(assert (=> b!2696744 (=> (not res!1132887) (not e!1700527))))

(assert (=> b!2696744 (= res!1132887 (<= (- (height!1427 (left!23982 (c!434615 acc!348))) (height!1427 (right!24312 (c!434615 acc!348)))) 1))))

(assert (= (and d!772877 (not res!1132889)) b!2696740))

(assert (= (and b!2696740 res!1132885) b!2696744))

(assert (= (and b!2696744 res!1132887) b!2696742))

(assert (= (and b!2696742 res!1132890) b!2696739))

(assert (= (and b!2696739 res!1132888) b!2696741))

(assert (= (and b!2696741 res!1132886) b!2696743))

(assert (=> b!2696740 m!3077841))

(assert (=> b!2696740 m!3077843))

(declare-fun m!3078037 () Bool)

(assert (=> b!2696739 m!3078037))

(assert (=> b!2696744 m!3077841))

(assert (=> b!2696744 m!3077843))

(declare-fun m!3078039 () Bool)

(assert (=> b!2696743 m!3078039))

(declare-fun m!3078041 () Bool)

(assert (=> b!2696741 m!3078041))

(declare-fun m!3078043 () Bool)

(assert (=> b!2696742 m!3078043))

(assert (=> d!772637 d!772877))

(declare-fun bs!484179 () Bool)

(declare-fun d!772879 () Bool)

(assert (= bs!484179 (and d!772879 d!772669)))

(declare-fun lambda!100326 () Int)

(assert (=> bs!484179 (= lambda!100326 lambda!100288)))

(declare-fun bs!484180 () Bool)

(assert (= bs!484180 (and d!772879 d!772753)))

(assert (=> bs!484180 (= lambda!100326 lambda!100308)))

(declare-fun bs!484181 () Bool)

(assert (= bs!484181 (and d!772879 d!772795)))

(assert (=> bs!484181 (= lambda!100326 lambda!100317)))

(declare-fun bs!484182 () Bool)

(assert (= bs!484182 (and d!772879 d!772689)))

(assert (=> bs!484182 (= lambda!100326 lambda!100293)))

(declare-fun bs!484183 () Bool)

(assert (= bs!484183 (and d!772879 d!772803)))

(assert (=> bs!484183 (= lambda!100326 lambda!100319)))

(declare-fun bs!484184 () Bool)

(assert (= bs!484184 (and d!772879 d!772679)))

(assert (=> bs!484184 (= lambda!100326 lambda!100292)))

(declare-fun bs!484185 () Bool)

(assert (= bs!484185 (and d!772879 d!772845)))

(assert (=> bs!484185 (= lambda!100326 lambda!100321)))

(declare-fun bs!484186 () Bool)

(assert (= bs!484186 (and d!772879 d!772869)))

(assert (=> bs!484186 (= lambda!100326 lambda!100325)))

(declare-fun bs!484187 () Bool)

(assert (= bs!484187 (and d!772879 d!772747)))

(assert (=> bs!484187 (= lambda!100326 lambda!100304)))

(declare-fun bs!484188 () Bool)

(assert (= bs!484188 (and d!772879 d!772797)))

(assert (=> bs!484188 (= lambda!100326 lambda!100318)))

(declare-fun bs!484189 () Bool)

(assert (= bs!484189 (and d!772879 d!772703)))

(assert (=> bs!484189 (= lambda!100326 lambda!100297)))

(declare-fun bs!484190 () Bool)

(assert (= bs!484190 (and d!772879 d!772851)))

(assert (=> bs!484190 (= lambda!100326 lambda!100322)))

(declare-fun bs!484191 () Bool)

(assert (= bs!484191 (and d!772879 d!772693)))

(assert (=> bs!484191 (= lambda!100326 lambda!100295)))

(declare-fun bs!484192 () Bool)

(assert (= bs!484192 (and d!772879 d!772855)))

(assert (=> bs!484192 (= lambda!100326 lambda!100324)))

(declare-fun bs!484193 () Bool)

(assert (= bs!484193 (and d!772879 d!772695)))

(assert (=> bs!484193 (= lambda!100326 lambda!100296)))

(declare-fun bs!484194 () Bool)

(assert (= bs!484194 (and d!772879 d!772709)))

(assert (=> bs!484194 (= lambda!100326 lambda!100299)))

(declare-fun bs!484195 () Bool)

(assert (= bs!484195 (and d!772879 d!772745)))

(assert (=> bs!484195 (= lambda!100326 lambda!100303)))

(declare-fun bs!484196 () Bool)

(assert (= bs!484196 (and d!772879 d!772691)))

(assert (=> bs!484196 (= lambda!100326 lambda!100294)))

(declare-fun bs!484197 () Bool)

(assert (= bs!484197 (and d!772879 d!772755)))

(assert (=> bs!484197 (= lambda!100326 lambda!100309)))

(declare-fun bs!484198 () Bool)

(assert (= bs!484198 (and d!772879 d!772757)))

(assert (=> bs!484198 (= lambda!100326 lambda!100310)))

(declare-fun bs!484199 () Bool)

(assert (= bs!484199 (and d!772879 d!772805)))

(assert (=> bs!484199 (= lambda!100326 lambda!100320)))

(declare-fun bs!484200 () Bool)

(assert (= bs!484200 (and d!772879 d!772705)))

(assert (=> bs!484200 (= lambda!100326 lambda!100298)))

(declare-fun bs!484201 () Bool)

(assert (= bs!484201 (and d!772879 d!772853)))

(assert (=> bs!484201 (= lambda!100326 lambda!100323)))

(assert (=> d!772879 (= (inv!42205 setElem!21252) (forall!6544 (exprs!2679 setElem!21252) lambda!100326))))

(declare-fun bs!484202 () Bool)

(assert (= bs!484202 d!772879))

(declare-fun m!3078045 () Bool)

(assert (=> bs!484202 m!3078045))

(assert (=> setNonEmpty!21252 d!772879))

(declare-fun d!772881 () Bool)

(declare-fun lt!952682 () Int)

(assert (=> d!772881 (= lt!952682 (size!24053 (list!11747 (_2!17996 lt!952564))))))

(assert (=> d!772881 (= lt!952682 (size!24054 (c!434614 (_2!17996 lt!952564))))))

(assert (=> d!772881 (= (size!24051 (_2!17996 lt!952564)) lt!952682)))

(declare-fun bs!484203 () Bool)

(assert (= bs!484203 d!772881))

(assert (=> bs!484203 m!3077249))

(assert (=> bs!484203 m!3077249))

(declare-fun m!3078047 () Bool)

(assert (=> bs!484203 m!3078047))

(declare-fun m!3078049 () Bool)

(assert (=> bs!484203 m!3078049))

(assert (=> b!2696144 d!772881))

(declare-fun d!772883 () Bool)

(declare-fun lt!952683 () Int)

(assert (=> d!772883 (= lt!952683 (size!24053 (list!11747 treated!26)))))

(assert (=> d!772883 (= lt!952683 (size!24054 (c!434614 treated!26)))))

(assert (=> d!772883 (= (size!24051 treated!26) lt!952683)))

(declare-fun bs!484204 () Bool)

(assert (= bs!484204 d!772883))

(assert (=> bs!484204 m!3077211))

(assert (=> bs!484204 m!3077211))

(assert (=> bs!484204 m!3077353))

(declare-fun m!3078051 () Bool)

(assert (=> bs!484204 m!3078051))

(assert (=> b!2696144 d!772883))

(declare-fun b!2696747 () Bool)

(declare-fun e!1700530 () List!31247)

(assert (=> b!2696747 (= e!1700530 (list!11752 (xs!12776 (c!434615 (++!7646 acc!348 (_1!17996 lt!952556))))))))

(declare-fun b!2696745 () Bool)

(declare-fun e!1700529 () List!31247)

(assert (=> b!2696745 (= e!1700529 Nil!31147)))

(declare-fun b!2696746 () Bool)

(assert (=> b!2696746 (= e!1700529 e!1700530)))

(declare-fun c!434731 () Bool)

(assert (=> b!2696746 (= c!434731 ((_ is Leaf!14857) (c!434615 (++!7646 acc!348 (_1!17996 lt!952556)))))))

(declare-fun d!772885 () Bool)

(declare-fun c!434730 () Bool)

(assert (=> d!772885 (= c!434730 ((_ is Empty!9736) (c!434615 (++!7646 acc!348 (_1!17996 lt!952556)))))))

(assert (=> d!772885 (= (list!11750 (c!434615 (++!7646 acc!348 (_1!17996 lt!952556)))) e!1700529)))

(declare-fun b!2696748 () Bool)

(assert (=> b!2696748 (= e!1700530 (++!7648 (list!11750 (left!23982 (c!434615 (++!7646 acc!348 (_1!17996 lt!952556))))) (list!11750 (right!24312 (c!434615 (++!7646 acc!348 (_1!17996 lt!952556)))))))))

(assert (= (and d!772885 c!434730) b!2696745))

(assert (= (and d!772885 (not c!434730)) b!2696746))

(assert (= (and b!2696746 c!434731) b!2696747))

(assert (= (and b!2696746 (not c!434731)) b!2696748))

(declare-fun m!3078053 () Bool)

(assert (=> b!2696747 m!3078053))

(declare-fun m!3078055 () Bool)

(assert (=> b!2696748 m!3078055))

(declare-fun m!3078057 () Bool)

(assert (=> b!2696748 m!3078057))

(assert (=> b!2696748 m!3078055))

(assert (=> b!2696748 m!3078057))

(declare-fun m!3078059 () Bool)

(assert (=> b!2696748 m!3078059))

(assert (=> d!772627 d!772885))

(declare-fun d!772887 () Bool)

(assert (=> d!772887 (= (list!11748 lt!952571) (list!11750 (c!434615 lt!952571)))))

(declare-fun bs!484205 () Bool)

(assert (= bs!484205 d!772887))

(declare-fun m!3078061 () Bool)

(assert (=> bs!484205 m!3078061))

(assert (=> b!2696169 d!772887))

(declare-fun b!2696757 () Bool)

(declare-fun e!1700535 () List!31247)

(assert (=> b!2696757 (= e!1700535 (list!11748 (_1!17996 lt!952556)))))

(declare-fun b!2696758 () Bool)

(assert (=> b!2696758 (= e!1700535 (Cons!31147 (h!36567 (list!11748 acc!348)) (++!7648 (t!225254 (list!11748 acc!348)) (list!11748 (_1!17996 lt!952556)))))))

(declare-fun d!772889 () Bool)

(declare-fun e!1700536 () Bool)

(assert (=> d!772889 e!1700536))

(declare-fun res!1132895 () Bool)

(assert (=> d!772889 (=> (not res!1132895) (not e!1700536))))

(declare-fun lt!952686 () List!31247)

(declare-fun content!4409 (List!31247) (InoxSet Token!8972))

(assert (=> d!772889 (= res!1132895 (= (content!4409 lt!952686) ((_ map or) (content!4409 (list!11748 acc!348)) (content!4409 (list!11748 (_1!17996 lt!952556))))))))

(assert (=> d!772889 (= lt!952686 e!1700535)))

(declare-fun c!434734 () Bool)

(assert (=> d!772889 (= c!434734 ((_ is Nil!31147) (list!11748 acc!348)))))

(assert (=> d!772889 (= (++!7648 (list!11748 acc!348) (list!11748 (_1!17996 lt!952556))) lt!952686)))

(declare-fun b!2696760 () Bool)

(assert (=> b!2696760 (= e!1700536 (or (not (= (list!11748 (_1!17996 lt!952556)) Nil!31147)) (= lt!952686 (list!11748 acc!348))))))

(declare-fun b!2696759 () Bool)

(declare-fun res!1132896 () Bool)

(assert (=> b!2696759 (=> (not res!1132896) (not e!1700536))))

(assert (=> b!2696759 (= res!1132896 (= (size!24055 lt!952686) (+ (size!24055 (list!11748 acc!348)) (size!24055 (list!11748 (_1!17996 lt!952556))))))))

(assert (= (and d!772889 c!434734) b!2696757))

(assert (= (and d!772889 (not c!434734)) b!2696758))

(assert (= (and d!772889 res!1132895) b!2696759))

(assert (= (and b!2696759 res!1132896) b!2696760))

(assert (=> b!2696758 m!3077291))

(declare-fun m!3078063 () Bool)

(assert (=> b!2696758 m!3078063))

(declare-fun m!3078065 () Bool)

(assert (=> d!772889 m!3078065))

(assert (=> d!772889 m!3077219))

(declare-fun m!3078067 () Bool)

(assert (=> d!772889 m!3078067))

(assert (=> d!772889 m!3077291))

(declare-fun m!3078069 () Bool)

(assert (=> d!772889 m!3078069))

(declare-fun m!3078071 () Bool)

(assert (=> b!2696759 m!3078071))

(assert (=> b!2696759 m!3077219))

(declare-fun m!3078073 () Bool)

(assert (=> b!2696759 m!3078073))

(assert (=> b!2696759 m!3077291))

(declare-fun m!3078075 () Bool)

(assert (=> b!2696759 m!3078075))

(assert (=> b!2696169 d!772889))

(assert (=> b!2696169 d!772615))

(declare-fun d!772891 () Bool)

(assert (=> d!772891 (= (list!11748 (_1!17996 lt!952556)) (list!11750 (c!434615 (_1!17996 lt!952556))))))

(declare-fun bs!484206 () Bool)

(assert (= bs!484206 d!772891))

(assert (=> bs!484206 m!3077561))

(assert (=> b!2696169 d!772891))

(declare-fun b!2696763 () Bool)

(declare-fun e!1700538 () List!31247)

(assert (=> b!2696763 (= e!1700538 (list!11752 (xs!12776 (c!434615 (_1!17996 lt!952553)))))))

(declare-fun b!2696761 () Bool)

(declare-fun e!1700537 () List!31247)

(assert (=> b!2696761 (= e!1700537 Nil!31147)))

(declare-fun b!2696762 () Bool)

(assert (=> b!2696762 (= e!1700537 e!1700538)))

(declare-fun c!434736 () Bool)

(assert (=> b!2696762 (= c!434736 ((_ is Leaf!14857) (c!434615 (_1!17996 lt!952553))))))

(declare-fun d!772893 () Bool)

(declare-fun c!434735 () Bool)

(assert (=> d!772893 (= c!434735 ((_ is Empty!9736) (c!434615 (_1!17996 lt!952553))))))

(assert (=> d!772893 (= (list!11750 (c!434615 (_1!17996 lt!952553))) e!1700537)))

(declare-fun b!2696764 () Bool)

(assert (=> b!2696764 (= e!1700538 (++!7648 (list!11750 (left!23982 (c!434615 (_1!17996 lt!952553)))) (list!11750 (right!24312 (c!434615 (_1!17996 lt!952553))))))))

(assert (= (and d!772893 c!434735) b!2696761))

(assert (= (and d!772893 (not c!434735)) b!2696762))

(assert (= (and b!2696762 c!434736) b!2696763))

(assert (= (and b!2696762 (not c!434736)) b!2696764))

(declare-fun m!3078077 () Bool)

(assert (=> b!2696763 m!3078077))

(declare-fun m!3078079 () Bool)

(assert (=> b!2696764 m!3078079))

(declare-fun m!3078081 () Bool)

(assert (=> b!2696764 m!3078081))

(assert (=> b!2696764 m!3078079))

(assert (=> b!2696764 m!3078081))

(declare-fun m!3078083 () Bool)

(assert (=> b!2696764 m!3078083))

(assert (=> d!772621 d!772893))

(assert (=> b!2696156 d!772835))

(assert (=> b!2696156 d!772651))

(declare-fun condSetEmpty!21273 () Bool)

(assert (=> setNonEmpty!21267 (= condSetEmpty!21273 (= setRest!21267 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21273 () Bool)

(assert (=> setNonEmpty!21267 (= tp!853193 setRes!21273)))

(declare-fun setIsEmpty!21273 () Bool)

(assert (=> setIsEmpty!21273 setRes!21273))

(declare-fun setNonEmpty!21273 () Bool)

(declare-fun setElem!21273 () Context!4358)

(declare-fun tp!853214 () Bool)

(declare-fun e!1700541 () Bool)

(assert (=> setNonEmpty!21273 (= setRes!21273 (and tp!853214 (inv!42205 setElem!21273) e!1700541))))

(declare-fun setRest!21273 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21273 (= setRest!21267 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21273 true) setRest!21273))))

(declare-fun b!2696769 () Bool)

(declare-fun tp!853213 () Bool)

(assert (=> b!2696769 (= e!1700541 tp!853213)))

(assert (= (and setNonEmpty!21267 condSetEmpty!21273) setIsEmpty!21273))

(assert (= (and setNonEmpty!21267 (not condSetEmpty!21273)) setNonEmpty!21273))

(assert (= setNonEmpty!21273 b!2696769))

(declare-fun m!3078085 () Bool)

(assert (=> setNonEmpty!21273 m!3078085))

(declare-fun b!2696774 () Bool)

(declare-fun e!1700544 () Bool)

(declare-fun tp!853219 () Bool)

(declare-fun tp!853220 () Bool)

(assert (=> b!2696774 (= e!1700544 (and tp!853219 tp!853220))))

(assert (=> b!2696253 (= tp!853090 e!1700544)))

(assert (= (and b!2696253 ((_ is Cons!31142) (exprs!2679 (_2!17992 (_1!17993 (h!36563 mapDefault!16167)))))) b!2696774))

(declare-fun b!2696775 () Bool)

(declare-fun e!1700545 () Bool)

(declare-fun tp!853221 () Bool)

(declare-fun tp!853222 () Bool)

(assert (=> b!2696775 (= e!1700545 (and tp!853221 tp!853222))))

(assert (=> b!2696335 (= tp!853196 e!1700545)))

(assert (= (and b!2696335 ((_ is Cons!31142) (exprs!2679 setElem!21268))) b!2696775))

(declare-fun b!2696776 () Bool)

(declare-fun e!1700546 () Bool)

(declare-fun tp!853223 () Bool)

(declare-fun tp!853224 () Bool)

(assert (=> b!2696776 (= e!1700546 (and tp!853223 tp!853224))))

(assert (=> b!2696333 (= tp!853192 e!1700546)))

(assert (= (and b!2696333 ((_ is Cons!31142) (exprs!2679 setElem!21267))) b!2696776))

(declare-fun b!2696777 () Bool)

(declare-fun e!1700547 () Bool)

(declare-fun tp!853225 () Bool)

(declare-fun tp!853226 () Bool)

(assert (=> b!2696777 (= e!1700547 (and tp!853225 tp!853226))))

(assert (=> b!2696254 (= tp!853093 e!1700547)))

(assert (= (and b!2696254 ((_ is Cons!31142) (exprs!2679 setElem!21252))) b!2696777))

(declare-fun b!2696780 () Bool)

(declare-fun e!1700548 () Bool)

(declare-fun tp!853227 () Bool)

(assert (=> b!2696780 (= e!1700548 tp!853227)))

(declare-fun b!2696778 () Bool)

(assert (=> b!2696778 (= e!1700548 tp_is_empty!13855)))

(declare-fun b!2696781 () Bool)

(declare-fun tp!853229 () Bool)

(declare-fun tp!853230 () Bool)

(assert (=> b!2696781 (= e!1700548 (and tp!853229 tp!853230))))

(declare-fun b!2696779 () Bool)

(declare-fun tp!853228 () Bool)

(declare-fun tp!853231 () Bool)

(assert (=> b!2696779 (= e!1700548 (and tp!853228 tp!853231))))

(assert (=> b!2696285 (= tp!853135 e!1700548)))

(assert (= (and b!2696285 ((_ is ElementMatch!7905) (_1!17992 (_1!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) b!2696778))

(assert (= (and b!2696285 ((_ is Concat!12880) (_1!17992 (_1!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) b!2696779))

(assert (= (and b!2696285 ((_ is Star!7905) (_1!17992 (_1!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) b!2696780))

(assert (= (and b!2696285 ((_ is Union!7905) (_1!17992 (_1!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) b!2696781))

(declare-fun b!2696782 () Bool)

(declare-fun e!1700549 () Bool)

(declare-fun tp!853233 () Bool)

(assert (=> b!2696782 (= e!1700549 tp!853233)))

(declare-fun setIsEmpty!21274 () Bool)

(declare-fun setRes!21274 () Bool)

(assert (=> setIsEmpty!21274 setRes!21274))

(declare-fun e!1700551 () Bool)

(assert (=> b!2696285 (= tp!853137 e!1700551)))

(declare-fun tp!853235 () Bool)

(declare-fun setNonEmpty!21274 () Bool)

(declare-fun e!1700550 () Bool)

(declare-fun setElem!21274 () Context!4358)

(assert (=> setNonEmpty!21274 (= setRes!21274 (and tp!853235 (inv!42205 setElem!21274) e!1700550))))

(declare-fun setRest!21274 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21274 (= (_2!17993 (h!36563 (t!225250 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21274 true) setRest!21274))))

(declare-fun b!2696783 () Bool)

(declare-fun tp!853232 () Bool)

(assert (=> b!2696783 (= e!1700550 tp!853232)))

(declare-fun b!2696784 () Bool)

(declare-fun tp!853236 () Bool)

(declare-fun tp!853234 () Bool)

(assert (=> b!2696784 (= e!1700551 (and tp!853234 (inv!42205 (_2!17992 (_1!17993 (h!36563 (t!225250 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) e!1700549 tp_is_empty!13855 setRes!21274 tp!853236))))

(declare-fun condSetEmpty!21274 () Bool)

(assert (=> b!2696784 (= condSetEmpty!21274 (= (_2!17993 (h!36563 (t!225250 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696784 b!2696782))

(assert (= (and b!2696784 condSetEmpty!21274) setIsEmpty!21274))

(assert (= (and b!2696784 (not condSetEmpty!21274)) setNonEmpty!21274))

(assert (= setNonEmpty!21274 b!2696783))

(assert (= (and b!2696285 ((_ is Cons!31143) (t!225250 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))) b!2696784))

(declare-fun m!3078087 () Bool)

(assert (=> setNonEmpty!21274 m!3078087))

(declare-fun m!3078089 () Bool)

(assert (=> b!2696784 m!3078089))

(declare-fun condSetEmpty!21275 () Bool)

(assert (=> setNonEmpty!21262 (= condSetEmpty!21275 (= setRest!21263 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21275 () Bool)

(assert (=> setNonEmpty!21262 (= tp!853163 setRes!21275)))

(declare-fun setIsEmpty!21275 () Bool)

(assert (=> setIsEmpty!21275 setRes!21275))

(declare-fun tp!853238 () Bool)

(declare-fun setNonEmpty!21275 () Bool)

(declare-fun e!1700552 () Bool)

(declare-fun setElem!21275 () Context!4358)

(assert (=> setNonEmpty!21275 (= setRes!21275 (and tp!853238 (inv!42205 setElem!21275) e!1700552))))

(declare-fun setRest!21275 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21275 (= setRest!21263 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21275 true) setRest!21275))))

(declare-fun b!2696785 () Bool)

(declare-fun tp!853237 () Bool)

(assert (=> b!2696785 (= e!1700552 tp!853237)))

(assert (= (and setNonEmpty!21262 condSetEmpty!21275) setIsEmpty!21275))

(assert (= (and setNonEmpty!21262 (not condSetEmpty!21275)) setNonEmpty!21275))

(assert (= setNonEmpty!21275 b!2696785))

(declare-fun m!3078091 () Bool)

(assert (=> setNonEmpty!21275 m!3078091))

(declare-fun b!2696788 () Bool)

(declare-fun e!1700553 () Bool)

(declare-fun tp!853239 () Bool)

(assert (=> b!2696788 (= e!1700553 tp!853239)))

(declare-fun b!2696786 () Bool)

(assert (=> b!2696786 (= e!1700553 tp_is_empty!13855)))

(declare-fun b!2696789 () Bool)

(declare-fun tp!853241 () Bool)

(declare-fun tp!853242 () Bool)

(assert (=> b!2696789 (= e!1700553 (and tp!853241 tp!853242))))

(declare-fun b!2696787 () Bool)

(declare-fun tp!853240 () Bool)

(declare-fun tp!853243 () Bool)

(assert (=> b!2696787 (= e!1700553 (and tp!853240 tp!853243))))

(assert (=> b!2696282 (= tp!853130 e!1700553)))

(assert (= (and b!2696282 ((_ is ElementMatch!7905) (_1!17992 (_1!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) b!2696786))

(assert (= (and b!2696282 ((_ is Concat!12880) (_1!17992 (_1!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) b!2696787))

(assert (= (and b!2696282 ((_ is Star!7905) (_1!17992 (_1!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) b!2696788))

(assert (= (and b!2696282 ((_ is Union!7905) (_1!17992 (_1!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) b!2696789))

(declare-fun b!2696790 () Bool)

(declare-fun e!1700554 () Bool)

(declare-fun tp!853245 () Bool)

(assert (=> b!2696790 (= e!1700554 tp!853245)))

(declare-fun setIsEmpty!21276 () Bool)

(declare-fun setRes!21276 () Bool)

(assert (=> setIsEmpty!21276 setRes!21276))

(declare-fun e!1700556 () Bool)

(assert (=> b!2696282 (= tp!853132 e!1700556)))

(declare-fun e!1700555 () Bool)

(declare-fun setNonEmpty!21276 () Bool)

(declare-fun tp!853247 () Bool)

(declare-fun setElem!21276 () Context!4358)

(assert (=> setNonEmpty!21276 (= setRes!21276 (and tp!853247 (inv!42205 setElem!21276) e!1700555))))

(declare-fun setRest!21276 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21276 (= (_2!17993 (h!36563 (t!225250 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21276 true) setRest!21276))))

(declare-fun b!2696791 () Bool)

(declare-fun tp!853244 () Bool)

(assert (=> b!2696791 (= e!1700555 tp!853244)))

(declare-fun tp!853248 () Bool)

(declare-fun tp!853246 () Bool)

(declare-fun b!2696792 () Bool)

(assert (=> b!2696792 (= e!1700556 (and tp!853246 (inv!42205 (_2!17992 (_1!17993 (h!36563 (t!225250 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))))) e!1700554 tp_is_empty!13855 setRes!21276 tp!853248))))

(declare-fun condSetEmpty!21276 () Bool)

(assert (=> b!2696792 (= condSetEmpty!21276 (= (_2!17993 (h!36563 (t!225250 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696792 b!2696790))

(assert (= (and b!2696792 condSetEmpty!21276) setIsEmpty!21276))

(assert (= (and b!2696792 (not condSetEmpty!21276)) setNonEmpty!21276))

(assert (= setNonEmpty!21276 b!2696791))

(assert (= (and b!2696282 ((_ is Cons!31143) (t!225250 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499))))))))) b!2696792))

(declare-fun m!3078093 () Bool)

(assert (=> setNonEmpty!21276 m!3078093))

(declare-fun m!3078095 () Bool)

(assert (=> b!2696792 m!3078095))

(declare-fun mapNonEmpty!16171 () Bool)

(declare-fun mapRes!16171 () Bool)

(declare-fun tp!853251 () Bool)

(declare-fun e!1700557 () Bool)

(assert (=> mapNonEmpty!16171 (= mapRes!16171 (and tp!853251 e!1700557))))

(declare-fun mapRest!16171 () (Array (_ BitVec 32) List!31243))

(declare-fun mapValue!16171 () List!31243)

(declare-fun mapKey!16171 () (_ BitVec 32))

(assert (=> mapNonEmpty!16171 (= mapRest!16167 (store mapRest!16171 mapKey!16171 mapValue!16171))))

(declare-fun condMapEmpty!16171 () Bool)

(declare-fun mapDefault!16171 () List!31243)

(assert (=> mapNonEmpty!16167 (= condMapEmpty!16171 (= mapRest!16167 ((as const (Array (_ BitVec 32) List!31243)) mapDefault!16171)))))

(declare-fun e!1700558 () Bool)

(assert (=> mapNonEmpty!16167 (= tp!853092 (and e!1700558 mapRes!16171))))

(declare-fun b!2696793 () Bool)

(declare-fun e!1700561 () Bool)

(declare-fun tp!853258 () Bool)

(assert (=> b!2696793 (= e!1700561 tp!853258)))

(declare-fun b!2696794 () Bool)

(declare-fun tp!853255 () Bool)

(declare-fun tp!853254 () Bool)

(declare-fun setRes!21278 () Bool)

(declare-fun e!1700562 () Bool)

(assert (=> b!2696794 (= e!1700558 (and tp!853255 (inv!42205 (_2!17992 (_1!17993 (h!36563 mapDefault!16171)))) e!1700562 tp_is_empty!13855 setRes!21278 tp!853254))))

(declare-fun condSetEmpty!21277 () Bool)

(assert (=> b!2696794 (= condSetEmpty!21277 (= (_2!17993 (h!36563 mapDefault!16171)) ((as const (Array Context!4358 Bool)) false)))))

(declare-fun b!2696795 () Bool)

(declare-fun e!1700560 () Bool)

(declare-fun tp!853253 () Bool)

(assert (=> b!2696795 (= e!1700560 tp!853253)))

(declare-fun tp!853256 () Bool)

(declare-fun b!2696796 () Bool)

(declare-fun setRes!21277 () Bool)

(declare-fun tp!853250 () Bool)

(assert (=> b!2696796 (= e!1700557 (and tp!853256 (inv!42205 (_2!17992 (_1!17993 (h!36563 mapValue!16171)))) e!1700560 tp_is_empty!13855 setRes!21277 tp!853250))))

(declare-fun condSetEmpty!21278 () Bool)

(assert (=> b!2696796 (= condSetEmpty!21278 (= (_2!17993 (h!36563 mapValue!16171)) ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setNonEmpty!21277 () Bool)

(declare-fun setElem!21277 () Context!4358)

(declare-fun tp!853257 () Bool)

(assert (=> setNonEmpty!21277 (= setRes!21278 (and tp!853257 (inv!42205 setElem!21277) e!1700561))))

(declare-fun setRest!21277 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21277 (= (_2!17993 (h!36563 mapDefault!16171)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21277 true) setRest!21277))))

(declare-fun b!2696797 () Bool)

(declare-fun tp!853249 () Bool)

(assert (=> b!2696797 (= e!1700562 tp!853249)))

(declare-fun setIsEmpty!21277 () Bool)

(assert (=> setIsEmpty!21277 setRes!21277))

(declare-fun b!2696798 () Bool)

(declare-fun e!1700559 () Bool)

(declare-fun tp!853252 () Bool)

(assert (=> b!2696798 (= e!1700559 tp!853252)))

(declare-fun setIsEmpty!21278 () Bool)

(assert (=> setIsEmpty!21278 setRes!21278))

(declare-fun setNonEmpty!21278 () Bool)

(declare-fun setElem!21278 () Context!4358)

(declare-fun tp!853259 () Bool)

(assert (=> setNonEmpty!21278 (= setRes!21277 (and tp!853259 (inv!42205 setElem!21278) e!1700559))))

(declare-fun setRest!21278 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21278 (= (_2!17993 (h!36563 mapValue!16171)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21278 true) setRest!21278))))

(declare-fun mapIsEmpty!16171 () Bool)

(assert (=> mapIsEmpty!16171 mapRes!16171))

(assert (= (and mapNonEmpty!16167 condMapEmpty!16171) mapIsEmpty!16171))

(assert (= (and mapNonEmpty!16167 (not condMapEmpty!16171)) mapNonEmpty!16171))

(assert (= b!2696796 b!2696795))

(assert (= (and b!2696796 condSetEmpty!21278) setIsEmpty!21277))

(assert (= (and b!2696796 (not condSetEmpty!21278)) setNonEmpty!21278))

(assert (= setNonEmpty!21278 b!2696798))

(assert (= (and mapNonEmpty!16171 ((_ is Cons!31143) mapValue!16171)) b!2696796))

(assert (= b!2696794 b!2696797))

(assert (= (and b!2696794 condSetEmpty!21277) setIsEmpty!21278))

(assert (= (and b!2696794 (not condSetEmpty!21277)) setNonEmpty!21277))

(assert (= setNonEmpty!21277 b!2696793))

(assert (= (and mapNonEmpty!16167 ((_ is Cons!31143) mapDefault!16171)) b!2696794))

(declare-fun m!3078097 () Bool)

(assert (=> setNonEmpty!21277 m!3078097))

(declare-fun m!3078099 () Bool)

(assert (=> mapNonEmpty!16171 m!3078099))

(declare-fun m!3078101 () Bool)

(assert (=> b!2696794 m!3078101))

(declare-fun m!3078103 () Bool)

(assert (=> setNonEmpty!21278 m!3078103))

(declare-fun m!3078105 () Bool)

(assert (=> b!2696796 m!3078105))

(declare-fun b!2696799 () Bool)

(declare-fun e!1700563 () Bool)

(declare-fun tp!853260 () Bool)

(declare-fun tp!853261 () Bool)

(assert (=> b!2696799 (= e!1700563 (and tp!853260 tp!853261))))

(assert (=> b!2696314 (= tp!853175 e!1700563)))

(assert (= (and b!2696314 ((_ is Cons!31142) (exprs!2679 (_1!17994 (_1!17995 (h!36565 mapValue!16164)))))) b!2696799))

(declare-fun tp!853263 () Bool)

(declare-fun e!1700565 () Bool)

(declare-fun tp!853264 () Bool)

(declare-fun b!2696800 () Bool)

(assert (=> b!2696800 (= e!1700565 (and (inv!42198 (left!23981 (left!23981 (c!434614 treated!26)))) tp!853263 (inv!42198 (right!24311 (left!23981 (c!434614 treated!26)))) tp!853264))))

(declare-fun b!2696802 () Bool)

(declare-fun e!1700564 () Bool)

(declare-fun tp!853262 () Bool)

(assert (=> b!2696802 (= e!1700564 tp!853262)))

(declare-fun b!2696801 () Bool)

(assert (=> b!2696801 (= e!1700565 (and (inv!42204 (xs!12775 (left!23981 (c!434614 treated!26)))) e!1700564))))

(assert (=> b!2696218 (= tp!853051 (and (inv!42198 (left!23981 (c!434614 treated!26))) e!1700565))))

(assert (= (and b!2696218 ((_ is Node!9735) (left!23981 (c!434614 treated!26)))) b!2696800))

(assert (= b!2696801 b!2696802))

(assert (= (and b!2696218 ((_ is Leaf!14856) (left!23981 (c!434614 treated!26)))) b!2696801))

(declare-fun m!3078107 () Bool)

(assert (=> b!2696800 m!3078107))

(declare-fun m!3078109 () Bool)

(assert (=> b!2696800 m!3078109))

(declare-fun m!3078111 () Bool)

(assert (=> b!2696801 m!3078111))

(assert (=> b!2696218 m!3077375))

(declare-fun tp!853266 () Bool)

(declare-fun e!1700567 () Bool)

(declare-fun b!2696803 () Bool)

(declare-fun tp!853267 () Bool)

(assert (=> b!2696803 (= e!1700567 (and (inv!42198 (left!23981 (right!24311 (c!434614 treated!26)))) tp!853266 (inv!42198 (right!24311 (right!24311 (c!434614 treated!26)))) tp!853267))))

(declare-fun b!2696805 () Bool)

(declare-fun e!1700566 () Bool)

(declare-fun tp!853265 () Bool)

(assert (=> b!2696805 (= e!1700566 tp!853265)))

(declare-fun b!2696804 () Bool)

(assert (=> b!2696804 (= e!1700567 (and (inv!42204 (xs!12775 (right!24311 (c!434614 treated!26)))) e!1700566))))

(assert (=> b!2696218 (= tp!853052 (and (inv!42198 (right!24311 (c!434614 treated!26))) e!1700567))))

(assert (= (and b!2696218 ((_ is Node!9735) (right!24311 (c!434614 treated!26)))) b!2696803))

(assert (= b!2696804 b!2696805))

(assert (= (and b!2696218 ((_ is Leaf!14856) (right!24311 (c!434614 treated!26)))) b!2696804))

(declare-fun m!3078113 () Bool)

(assert (=> b!2696803 m!3078113))

(declare-fun m!3078115 () Bool)

(assert (=> b!2696803 m!3078115))

(declare-fun m!3078117 () Bool)

(assert (=> b!2696804 m!3078117))

(assert (=> b!2696218 m!3077377))

(declare-fun b!2696806 () Bool)

(declare-fun e!1700568 () Bool)

(declare-fun tp!853268 () Bool)

(declare-fun tp!853269 () Bool)

(assert (=> b!2696806 (= e!1700568 (and tp!853268 tp!853269))))

(assert (=> b!2696303 (= tp!853162 e!1700568)))

(assert (= (and b!2696303 ((_ is Cons!31142) (exprs!2679 (_1!17994 (_1!17995 (h!36565 mapValue!16170)))))) b!2696806))

(declare-fun b!2696809 () Bool)

(declare-fun e!1700569 () Bool)

(declare-fun tp!853270 () Bool)

(assert (=> b!2696809 (= e!1700569 tp!853270)))

(declare-fun b!2696807 () Bool)

(assert (=> b!2696807 (= e!1700569 tp_is_empty!13855)))

(declare-fun b!2696810 () Bool)

(declare-fun tp!853272 () Bool)

(declare-fun tp!853273 () Bool)

(assert (=> b!2696810 (= e!1700569 (and tp!853272 tp!853273))))

(declare-fun b!2696808 () Bool)

(declare-fun tp!853271 () Bool)

(declare-fun tp!853274 () Bool)

(assert (=> b!2696808 (= e!1700569 (and tp!853271 tp!853274))))

(assert (=> b!2696232 (= tp!853064 e!1700569)))

(assert (= (and b!2696232 ((_ is ElementMatch!7905) (regOne!16322 (regex!4753 (h!36568 rules!1381))))) b!2696807))

(assert (= (and b!2696232 ((_ is Concat!12880) (regOne!16322 (regex!4753 (h!36568 rules!1381))))) b!2696808))

(assert (= (and b!2696232 ((_ is Star!7905) (regOne!16322 (regex!4753 (h!36568 rules!1381))))) b!2696809))

(assert (= (and b!2696232 ((_ is Union!7905) (regOne!16322 (regex!4753 (h!36568 rules!1381))))) b!2696810))

(declare-fun b!2696813 () Bool)

(declare-fun e!1700570 () Bool)

(declare-fun tp!853275 () Bool)

(assert (=> b!2696813 (= e!1700570 tp!853275)))

(declare-fun b!2696811 () Bool)

(assert (=> b!2696811 (= e!1700570 tp_is_empty!13855)))

(declare-fun b!2696814 () Bool)

(declare-fun tp!853277 () Bool)

(declare-fun tp!853278 () Bool)

(assert (=> b!2696814 (= e!1700570 (and tp!853277 tp!853278))))

(declare-fun b!2696812 () Bool)

(declare-fun tp!853276 () Bool)

(declare-fun tp!853279 () Bool)

(assert (=> b!2696812 (= e!1700570 (and tp!853276 tp!853279))))

(assert (=> b!2696232 (= tp!853067 e!1700570)))

(assert (= (and b!2696232 ((_ is ElementMatch!7905) (regTwo!16322 (regex!4753 (h!36568 rules!1381))))) b!2696811))

(assert (= (and b!2696232 ((_ is Concat!12880) (regTwo!16322 (regex!4753 (h!36568 rules!1381))))) b!2696812))

(assert (= (and b!2696232 ((_ is Star!7905) (regTwo!16322 (regex!4753 (h!36568 rules!1381))))) b!2696813))

(assert (= (and b!2696232 ((_ is Union!7905) (regTwo!16322 (regex!4753 (h!36568 rules!1381))))) b!2696814))

(declare-fun b!2696817 () Bool)

(declare-fun e!1700571 () Bool)

(declare-fun tp!853280 () Bool)

(assert (=> b!2696817 (= e!1700571 tp!853280)))

(declare-fun b!2696815 () Bool)

(assert (=> b!2696815 (= e!1700571 tp_is_empty!13855)))

(declare-fun b!2696818 () Bool)

(declare-fun tp!853282 () Bool)

(declare-fun tp!853283 () Bool)

(assert (=> b!2696818 (= e!1700571 (and tp!853282 tp!853283))))

(declare-fun b!2696816 () Bool)

(declare-fun tp!853281 () Bool)

(declare-fun tp!853284 () Bool)

(assert (=> b!2696816 (= e!1700571 (and tp!853281 tp!853284))))

(assert (=> b!2696250 (= tp!853096 e!1700571)))

(assert (= (and b!2696250 ((_ is ElementMatch!7905) (_1!17992 (_1!17993 (h!36563 mapDefault!16167))))) b!2696815))

(assert (= (and b!2696250 ((_ is Concat!12880) (_1!17992 (_1!17993 (h!36563 mapDefault!16167))))) b!2696816))

(assert (= (and b!2696250 ((_ is Star!7905) (_1!17992 (_1!17993 (h!36563 mapDefault!16167))))) b!2696817))

(assert (= (and b!2696250 ((_ is Union!7905) (_1!17992 (_1!17993 (h!36563 mapDefault!16167))))) b!2696818))

(declare-fun b!2696819 () Bool)

(declare-fun e!1700572 () Bool)

(declare-fun tp!853286 () Bool)

(assert (=> b!2696819 (= e!1700572 tp!853286)))

(declare-fun setIsEmpty!21279 () Bool)

(declare-fun setRes!21279 () Bool)

(assert (=> setIsEmpty!21279 setRes!21279))

(declare-fun e!1700574 () Bool)

(assert (=> b!2696250 (= tp!853095 e!1700574)))

(declare-fun setNonEmpty!21279 () Bool)

(declare-fun tp!853288 () Bool)

(declare-fun setElem!21279 () Context!4358)

(declare-fun e!1700573 () Bool)

(assert (=> setNonEmpty!21279 (= setRes!21279 (and tp!853288 (inv!42205 setElem!21279) e!1700573))))

(declare-fun setRest!21279 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21279 (= (_2!17993 (h!36563 (t!225250 mapDefault!16167))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21279 true) setRest!21279))))

(declare-fun b!2696820 () Bool)

(declare-fun tp!853285 () Bool)

(assert (=> b!2696820 (= e!1700573 tp!853285)))

(declare-fun tp!853289 () Bool)

(declare-fun b!2696821 () Bool)

(declare-fun tp!853287 () Bool)

(assert (=> b!2696821 (= e!1700574 (and tp!853287 (inv!42205 (_2!17992 (_1!17993 (h!36563 (t!225250 mapDefault!16167))))) e!1700572 tp_is_empty!13855 setRes!21279 tp!853289))))

(declare-fun condSetEmpty!21279 () Bool)

(assert (=> b!2696821 (= condSetEmpty!21279 (= (_2!17993 (h!36563 (t!225250 mapDefault!16167))) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696821 b!2696819))

(assert (= (and b!2696821 condSetEmpty!21279) setIsEmpty!21279))

(assert (= (and b!2696821 (not condSetEmpty!21279)) setNonEmpty!21279))

(assert (= setNonEmpty!21279 b!2696820))

(assert (= (and b!2696250 ((_ is Cons!31143) (t!225250 mapDefault!16167))) b!2696821))

(declare-fun m!3078119 () Bool)

(assert (=> setNonEmpty!21279 m!3078119))

(declare-fun m!3078121 () Bool)

(assert (=> b!2696821 m!3078121))

(declare-fun condSetEmpty!21280 () Bool)

(assert (=> setNonEmpty!21270 (= condSetEmpty!21280 (= setRest!21270 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21280 () Bool)

(assert (=> setNonEmpty!21270 (= tp!853206 setRes!21280)))

(declare-fun setIsEmpty!21280 () Bool)

(assert (=> setIsEmpty!21280 setRes!21280))

(declare-fun tp!853291 () Bool)

(declare-fun setElem!21280 () Context!4358)

(declare-fun setNonEmpty!21280 () Bool)

(declare-fun e!1700575 () Bool)

(assert (=> setNonEmpty!21280 (= setRes!21280 (and tp!853291 (inv!42205 setElem!21280) e!1700575))))

(declare-fun setRest!21280 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21280 (= setRest!21270 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21280 true) setRest!21280))))

(declare-fun b!2696822 () Bool)

(declare-fun tp!853290 () Bool)

(assert (=> b!2696822 (= e!1700575 tp!853290)))

(assert (= (and setNonEmpty!21270 condSetEmpty!21280) setIsEmpty!21280))

(assert (= (and setNonEmpty!21270 (not condSetEmpty!21280)) setNonEmpty!21280))

(assert (= setNonEmpty!21280 b!2696822))

(declare-fun m!3078123 () Bool)

(assert (=> setNonEmpty!21280 m!3078123))

(declare-fun b!2696823 () Bool)

(declare-fun e!1700578 () Bool)

(declare-fun tp!853294 () Bool)

(assert (=> b!2696823 (= e!1700578 tp!853294)))

(declare-fun setElem!21281 () Context!4358)

(declare-fun setNonEmpty!21281 () Bool)

(declare-fun setRes!21281 () Bool)

(declare-fun tp!853293 () Bool)

(declare-fun e!1700577 () Bool)

(assert (=> setNonEmpty!21281 (= setRes!21281 (and tp!853293 (inv!42205 setElem!21281) e!1700577))))

(declare-fun setRest!21281 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21281 (= (_2!17995 (h!36565 (t!225252 mapValue!16164))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21281 true) setRest!21281))))

(declare-fun e!1700576 () Bool)

(declare-fun b!2696824 () Bool)

(declare-fun tp!853295 () Bool)

(assert (=> b!2696824 (= e!1700576 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 (t!225252 mapValue!16164))))) e!1700578 tp_is_empty!13855 setRes!21281 tp!853295))))

(declare-fun condSetEmpty!21281 () Bool)

(assert (=> b!2696824 (= condSetEmpty!21281 (= (_2!17995 (h!36565 (t!225252 mapValue!16164))) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> b!2696315 (= tp!853176 e!1700576)))

(declare-fun b!2696825 () Bool)

(declare-fun tp!853292 () Bool)

(assert (=> b!2696825 (= e!1700577 tp!853292)))

(declare-fun setIsEmpty!21281 () Bool)

(assert (=> setIsEmpty!21281 setRes!21281))

(assert (= b!2696824 b!2696823))

(assert (= (and b!2696824 condSetEmpty!21281) setIsEmpty!21281))

(assert (= (and b!2696824 (not condSetEmpty!21281)) setNonEmpty!21281))

(assert (= setNonEmpty!21281 b!2696825))

(assert (= (and b!2696315 ((_ is Cons!31145) (t!225252 mapValue!16164))) b!2696824))

(declare-fun m!3078125 () Bool)

(assert (=> setNonEmpty!21281 m!3078125))

(declare-fun m!3078127 () Bool)

(assert (=> b!2696824 m!3078127))

(declare-fun b!2696826 () Bool)

(declare-fun e!1700579 () Bool)

(declare-fun tp!853296 () Bool)

(declare-fun tp!853297 () Bool)

(assert (=> b!2696826 (= e!1700579 (and tp!853296 tp!853297))))

(assert (=> b!2696337 (= tp!853203 e!1700579)))

(assert (= (and b!2696337 ((_ is Cons!31142) (exprs!2679 (_1!17994 (_1!17995 (h!36565 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))))))) b!2696826))

(declare-fun b!2696831 () Bool)

(declare-fun e!1700582 () Bool)

(declare-fun tp!853300 () Bool)

(assert (=> b!2696831 (= e!1700582 (and tp_is_empty!13855 tp!853300))))

(assert (=> b!2696220 (= tp!853050 e!1700582)))

(assert (= (and b!2696220 ((_ is Cons!31144) (innerList!9795 (xs!12775 (c!434614 treated!26))))) b!2696831))

(declare-fun b!2696832 () Bool)

(declare-fun e!1700585 () Bool)

(declare-fun tp!853303 () Bool)

(assert (=> b!2696832 (= e!1700585 tp!853303)))

(declare-fun setRes!21282 () Bool)

(declare-fun setElem!21282 () Context!4358)

(declare-fun tp!853302 () Bool)

(declare-fun e!1700584 () Bool)

(declare-fun setNonEmpty!21282 () Bool)

(assert (=> setNonEmpty!21282 (= setRes!21282 (and tp!853302 (inv!42205 setElem!21282) e!1700584))))

(declare-fun setRest!21282 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21282 (= (_2!17995 (h!36565 (t!225252 mapValue!16170))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21282 true) setRest!21282))))

(declare-fun b!2696833 () Bool)

(declare-fun tp!853304 () Bool)

(declare-fun e!1700583 () Bool)

(assert (=> b!2696833 (= e!1700583 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 (t!225252 mapValue!16170))))) e!1700585 tp_is_empty!13855 setRes!21282 tp!853304))))

(declare-fun condSetEmpty!21282 () Bool)

(assert (=> b!2696833 (= condSetEmpty!21282 (= (_2!17995 (h!36565 (t!225252 mapValue!16170))) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> b!2696304 (= tp!853164 e!1700583)))

(declare-fun b!2696834 () Bool)

(declare-fun tp!853301 () Bool)

(assert (=> b!2696834 (= e!1700584 tp!853301)))

(declare-fun setIsEmpty!21282 () Bool)

(assert (=> setIsEmpty!21282 setRes!21282))

(assert (= b!2696833 b!2696832))

(assert (= (and b!2696833 condSetEmpty!21282) setIsEmpty!21282))

(assert (= (and b!2696833 (not condSetEmpty!21282)) setNonEmpty!21282))

(assert (= setNonEmpty!21282 b!2696834))

(assert (= (and b!2696304 ((_ is Cons!31145) (t!225252 mapValue!16170))) b!2696833))

(declare-fun m!3078129 () Bool)

(assert (=> setNonEmpty!21282 m!3078129))

(declare-fun m!3078131 () Bool)

(assert (=> b!2696833 m!3078131))

(declare-fun b!2696837 () Bool)

(declare-fun e!1700586 () Bool)

(declare-fun tp!853305 () Bool)

(assert (=> b!2696837 (= e!1700586 tp!853305)))

(declare-fun b!2696835 () Bool)

(assert (=> b!2696835 (= e!1700586 tp_is_empty!13855)))

(declare-fun b!2696838 () Bool)

(declare-fun tp!853307 () Bool)

(declare-fun tp!853308 () Bool)

(assert (=> b!2696838 (= e!1700586 (and tp!853307 tp!853308))))

(declare-fun b!2696836 () Bool)

(declare-fun tp!853306 () Bool)

(declare-fun tp!853309 () Bool)

(assert (=> b!2696836 (= e!1700586 (and tp!853306 tp!853309))))

(assert (=> b!2696234 (= tp!853065 e!1700586)))

(assert (= (and b!2696234 ((_ is ElementMatch!7905) (regOne!16323 (regex!4753 (h!36568 rules!1381))))) b!2696835))

(assert (= (and b!2696234 ((_ is Concat!12880) (regOne!16323 (regex!4753 (h!36568 rules!1381))))) b!2696836))

(assert (= (and b!2696234 ((_ is Star!7905) (regOne!16323 (regex!4753 (h!36568 rules!1381))))) b!2696837))

(assert (= (and b!2696234 ((_ is Union!7905) (regOne!16323 (regex!4753 (h!36568 rules!1381))))) b!2696838))

(declare-fun b!2696841 () Bool)

(declare-fun e!1700587 () Bool)

(declare-fun tp!853310 () Bool)

(assert (=> b!2696841 (= e!1700587 tp!853310)))

(declare-fun b!2696839 () Bool)

(assert (=> b!2696839 (= e!1700587 tp_is_empty!13855)))

(declare-fun b!2696842 () Bool)

(declare-fun tp!853312 () Bool)

(declare-fun tp!853313 () Bool)

(assert (=> b!2696842 (= e!1700587 (and tp!853312 tp!853313))))

(declare-fun b!2696840 () Bool)

(declare-fun tp!853311 () Bool)

(declare-fun tp!853314 () Bool)

(assert (=> b!2696840 (= e!1700587 (and tp!853311 tp!853314))))

(assert (=> b!2696234 (= tp!853066 e!1700587)))

(assert (= (and b!2696234 ((_ is ElementMatch!7905) (regTwo!16323 (regex!4753 (h!36568 rules!1381))))) b!2696839))

(assert (= (and b!2696234 ((_ is Concat!12880) (regTwo!16323 (regex!4753 (h!36568 rules!1381))))) b!2696840))

(assert (= (and b!2696234 ((_ is Star!7905) (regTwo!16323 (regex!4753 (h!36568 rules!1381))))) b!2696841))

(assert (= (and b!2696234 ((_ is Union!7905) (regTwo!16323 (regex!4753 (h!36568 rules!1381))))) b!2696842))

(declare-fun b!2696845 () Bool)

(declare-fun e!1700588 () Bool)

(declare-fun tp!853315 () Bool)

(assert (=> b!2696845 (= e!1700588 tp!853315)))

(declare-fun b!2696843 () Bool)

(assert (=> b!2696843 (= e!1700588 tp_is_empty!13855)))

(declare-fun b!2696846 () Bool)

(declare-fun tp!853317 () Bool)

(declare-fun tp!853318 () Bool)

(assert (=> b!2696846 (= e!1700588 (and tp!853317 tp!853318))))

(declare-fun b!2696844 () Bool)

(declare-fun tp!853316 () Bool)

(declare-fun tp!853319 () Bool)

(assert (=> b!2696844 (= e!1700588 (and tp!853316 tp!853319))))

(assert (=> b!2696252 (= tp!853097 e!1700588)))

(assert (= (and b!2696252 ((_ is ElementMatch!7905) (_1!17992 (_1!17993 (h!36563 mapValue!16167))))) b!2696843))

(assert (= (and b!2696252 ((_ is Concat!12880) (_1!17992 (_1!17993 (h!36563 mapValue!16167))))) b!2696844))

(assert (= (and b!2696252 ((_ is Star!7905) (_1!17992 (_1!17993 (h!36563 mapValue!16167))))) b!2696845))

(assert (= (and b!2696252 ((_ is Union!7905) (_1!17992 (_1!17993 (h!36563 mapValue!16167))))) b!2696846))

(declare-fun b!2696847 () Bool)

(declare-fun e!1700589 () Bool)

(declare-fun tp!853321 () Bool)

(assert (=> b!2696847 (= e!1700589 tp!853321)))

(declare-fun setIsEmpty!21283 () Bool)

(declare-fun setRes!21283 () Bool)

(assert (=> setIsEmpty!21283 setRes!21283))

(declare-fun e!1700591 () Bool)

(assert (=> b!2696252 (= tp!853091 e!1700591)))

(declare-fun tp!853323 () Bool)

(declare-fun e!1700590 () Bool)

(declare-fun setElem!21283 () Context!4358)

(declare-fun setNonEmpty!21283 () Bool)

(assert (=> setNonEmpty!21283 (= setRes!21283 (and tp!853323 (inv!42205 setElem!21283) e!1700590))))

(declare-fun setRest!21283 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21283 (= (_2!17993 (h!36563 (t!225250 mapValue!16167))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21283 true) setRest!21283))))

(declare-fun b!2696848 () Bool)

(declare-fun tp!853320 () Bool)

(assert (=> b!2696848 (= e!1700590 tp!853320)))

(declare-fun tp!853322 () Bool)

(declare-fun b!2696849 () Bool)

(declare-fun tp!853324 () Bool)

(assert (=> b!2696849 (= e!1700591 (and tp!853322 (inv!42205 (_2!17992 (_1!17993 (h!36563 (t!225250 mapValue!16167))))) e!1700589 tp_is_empty!13855 setRes!21283 tp!853324))))

(declare-fun condSetEmpty!21283 () Bool)

(assert (=> b!2696849 (= condSetEmpty!21283 (= (_2!17993 (h!36563 (t!225250 mapValue!16167))) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696849 b!2696847))

(assert (= (and b!2696849 condSetEmpty!21283) setIsEmpty!21283))

(assert (= (and b!2696849 (not condSetEmpty!21283)) setNonEmpty!21283))

(assert (= setNonEmpty!21283 b!2696848))

(assert (= (and b!2696252 ((_ is Cons!31143) (t!225250 mapValue!16167))) b!2696849))

(declare-fun m!3078133 () Bool)

(assert (=> setNonEmpty!21283 m!3078133))

(declare-fun m!3078135 () Bool)

(assert (=> b!2696849 m!3078135))

(declare-fun b!2696850 () Bool)

(declare-fun e!1700592 () Bool)

(declare-fun tp!853325 () Bool)

(declare-fun tp!853326 () Bool)

(assert (=> b!2696850 (= e!1700592 (and tp!853325 tp!853326))))

(assert (=> b!2696342 (= tp!853205 e!1700592)))

(assert (= (and b!2696342 ((_ is Cons!31142) (exprs!2679 setElem!21270))) b!2696850))

(declare-fun b!2696851 () Bool)

(declare-fun e!1700595 () Bool)

(declare-fun tp!853329 () Bool)

(assert (=> b!2696851 (= e!1700595 tp!853329)))

(declare-fun setNonEmpty!21284 () Bool)

(declare-fun e!1700594 () Bool)

(declare-fun tp!853328 () Bool)

(declare-fun setRes!21284 () Bool)

(declare-fun setElem!21284 () Context!4358)

(assert (=> setNonEmpty!21284 (= setRes!21284 (and tp!853328 (inv!42205 setElem!21284) e!1700594))))

(declare-fun setRest!21284 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21284 (= (_2!17995 (h!36565 (t!225252 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21284 true) setRest!21284))))

(declare-fun tp!853330 () Bool)

(declare-fun e!1700593 () Bool)

(declare-fun b!2696852 () Bool)

(assert (=> b!2696852 (= e!1700593 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 (t!225252 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))))))) e!1700595 tp_is_empty!13855 setRes!21284 tp!853330))))

(declare-fun condSetEmpty!21284 () Bool)

(assert (=> b!2696852 (= condSetEmpty!21284 (= (_2!17995 (h!36565 (t!225252 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))))) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> b!2696338 (= tp!853204 e!1700593)))

(declare-fun b!2696853 () Bool)

(declare-fun tp!853327 () Bool)

(assert (=> b!2696853 (= e!1700594 tp!853327)))

(declare-fun setIsEmpty!21284 () Bool)

(assert (=> setIsEmpty!21284 setRes!21284))

(assert (= b!2696852 b!2696851))

(assert (= (and b!2696852 condSetEmpty!21284) setIsEmpty!21284))

(assert (= (and b!2696852 (not condSetEmpty!21284)) setNonEmpty!21284))

(assert (= setNonEmpty!21284 b!2696853))

(assert (= (and b!2696338 ((_ is Cons!31145) (t!225252 (zeroValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))))) b!2696852))

(declare-fun m!3078137 () Bool)

(assert (=> setNonEmpty!21284 m!3078137))

(declare-fun m!3078139 () Bool)

(assert (=> b!2696852 m!3078139))

(declare-fun b!2696854 () Bool)

(declare-fun e!1700596 () Bool)

(declare-fun tp!853331 () Bool)

(declare-fun tp!853332 () Bool)

(assert (=> b!2696854 (= e!1700596 (and tp!853331 tp!853332))))

(assert (=> b!2696283 (= tp!853134 e!1700596)))

(assert (= (and b!2696283 ((_ is Cons!31142) (exprs!2679 (_2!17992 (_1!17993 (h!36563 (minValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))))))) b!2696854))

(declare-fun b!2696857 () Bool)

(declare-fun b_free!76217 () Bool)

(declare-fun b_next!76921 () Bool)

(assert (=> b!2696857 (= b_free!76217 (not b_next!76921))))

(declare-fun tp!853333 () Bool)

(declare-fun b_and!199347 () Bool)

(assert (=> b!2696857 (= tp!853333 b_and!199347)))

(declare-fun b_free!76219 () Bool)

(declare-fun b_next!76923 () Bool)

(assert (=> b!2696857 (= b_free!76219 (not b_next!76923))))

(declare-fun tp!853335 () Bool)

(declare-fun b_and!199349 () Bool)

(assert (=> b!2696857 (= tp!853335 b_and!199349)))

(declare-fun e!1700599 () Bool)

(assert (=> b!2696857 (= e!1700599 (and tp!853333 tp!853335))))

(declare-fun b!2696856 () Bool)

(declare-fun tp!853336 () Bool)

(declare-fun e!1700598 () Bool)

(assert (=> b!2696856 (= e!1700598 (and tp!853336 (inv!42190 (tag!5257 (h!36568 (t!225255 (t!225255 rules!1381))))) (inv!42199 (transformation!4753 (h!36568 (t!225255 (t!225255 rules!1381))))) e!1700599))))

(declare-fun b!2696855 () Bool)

(declare-fun e!1700600 () Bool)

(declare-fun tp!853334 () Bool)

(assert (=> b!2696855 (= e!1700600 (and e!1700598 tp!853334))))

(assert (=> b!2696328 (= tp!853189 e!1700600)))

(assert (= b!2696856 b!2696857))

(assert (= b!2696855 b!2696856))

(assert (= (and b!2696328 ((_ is Cons!31148) (t!225255 (t!225255 rules!1381)))) b!2696855))

(declare-fun m!3078141 () Bool)

(assert (=> b!2696856 m!3078141))

(declare-fun m!3078143 () Bool)

(assert (=> b!2696856 m!3078143))

(declare-fun b!2696858 () Bool)

(declare-fun e!1700601 () Bool)

(declare-fun tp!853337 () Bool)

(declare-fun tp!853338 () Bool)

(assert (=> b!2696858 (= e!1700601 (and tp!853337 tp!853338))))

(assert (=> b!2696280 (= tp!853129 e!1700601)))

(assert (= (and b!2696280 ((_ is Cons!31142) (exprs!2679 (_2!17992 (_1!17993 (h!36563 (zeroValue!3797 (v!32916 (underlying!7279 (v!32917 (underlying!7280 (cache!3587 cacheDown!499)))))))))))) b!2696858))

(declare-fun e!1700603 () Bool)

(declare-fun tp!853341 () Bool)

(declare-fun tp!853340 () Bool)

(declare-fun b!2696859 () Bool)

(assert (=> b!2696859 (= e!1700603 (and (inv!42198 (left!23981 (left!23981 (c!434614 totalInput!354)))) tp!853340 (inv!42198 (right!24311 (left!23981 (c!434614 totalInput!354)))) tp!853341))))

(declare-fun b!2696861 () Bool)

(declare-fun e!1700602 () Bool)

(declare-fun tp!853339 () Bool)

(assert (=> b!2696861 (= e!1700602 tp!853339)))

(declare-fun b!2696860 () Bool)

(assert (=> b!2696860 (= e!1700603 (and (inv!42204 (xs!12775 (left!23981 (c!434614 totalInput!354)))) e!1700602))))

(assert (=> b!2696277 (= tp!853126 (and (inv!42198 (left!23981 (c!434614 totalInput!354))) e!1700603))))

(assert (= (and b!2696277 ((_ is Node!9735) (left!23981 (c!434614 totalInput!354)))) b!2696859))

(assert (= b!2696860 b!2696861))

(assert (= (and b!2696277 ((_ is Leaf!14856) (left!23981 (c!434614 totalInput!354)))) b!2696860))

(declare-fun m!3078145 () Bool)

(assert (=> b!2696859 m!3078145))

(declare-fun m!3078147 () Bool)

(assert (=> b!2696859 m!3078147))

(declare-fun m!3078149 () Bool)

(assert (=> b!2696860 m!3078149))

(assert (=> b!2696277 m!3077401))

(declare-fun e!1700605 () Bool)

(declare-fun tp!853344 () Bool)

(declare-fun b!2696862 () Bool)

(declare-fun tp!853343 () Bool)

(assert (=> b!2696862 (= e!1700605 (and (inv!42198 (left!23981 (right!24311 (c!434614 totalInput!354)))) tp!853343 (inv!42198 (right!24311 (right!24311 (c!434614 totalInput!354)))) tp!853344))))

(declare-fun b!2696864 () Bool)

(declare-fun e!1700604 () Bool)

(declare-fun tp!853342 () Bool)

(assert (=> b!2696864 (= e!1700604 tp!853342)))

(declare-fun b!2696863 () Bool)

(assert (=> b!2696863 (= e!1700605 (and (inv!42204 (xs!12775 (right!24311 (c!434614 totalInput!354)))) e!1700604))))

(assert (=> b!2696277 (= tp!853127 (and (inv!42198 (right!24311 (c!434614 totalInput!354))) e!1700605))))

(assert (= (and b!2696277 ((_ is Node!9735) (right!24311 (c!434614 totalInput!354)))) b!2696862))

(assert (= b!2696863 b!2696864))

(assert (= (and b!2696277 ((_ is Leaf!14856) (right!24311 (c!434614 totalInput!354)))) b!2696863))

(declare-fun m!3078151 () Bool)

(assert (=> b!2696862 m!3078151))

(declare-fun m!3078153 () Bool)

(assert (=> b!2696862 m!3078153))

(declare-fun m!3078155 () Bool)

(assert (=> b!2696863 m!3078155))

(assert (=> b!2696277 m!3077403))

(declare-fun condSetEmpty!21285 () Bool)

(assert (=> setNonEmpty!21257 (= condSetEmpty!21285 (= setRest!21257 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21285 () Bool)

(assert (=> setNonEmpty!21257 (= tp!853136 setRes!21285)))

(declare-fun setIsEmpty!21285 () Bool)

(assert (=> setIsEmpty!21285 setRes!21285))

(declare-fun e!1700606 () Bool)

(declare-fun setElem!21285 () Context!4358)

(declare-fun tp!853346 () Bool)

(declare-fun setNonEmpty!21285 () Bool)

(assert (=> setNonEmpty!21285 (= setRes!21285 (and tp!853346 (inv!42205 setElem!21285) e!1700606))))

(declare-fun setRest!21285 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21285 (= setRest!21257 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21285 true) setRest!21285))))

(declare-fun b!2696865 () Bool)

(declare-fun tp!853345 () Bool)

(assert (=> b!2696865 (= e!1700606 tp!853345)))

(assert (= (and setNonEmpty!21257 condSetEmpty!21285) setIsEmpty!21285))

(assert (= (and setNonEmpty!21257 (not condSetEmpty!21285)) setNonEmpty!21285))

(assert (= setNonEmpty!21285 b!2696865))

(declare-fun m!3078157 () Bool)

(assert (=> setNonEmpty!21285 m!3078157))

(declare-fun condSetEmpty!21286 () Bool)

(assert (=> setNonEmpty!21256 (= condSetEmpty!21286 (= setRest!21256 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21286 () Bool)

(assert (=> setNonEmpty!21256 (= tp!853131 setRes!21286)))

(declare-fun setIsEmpty!21286 () Bool)

(assert (=> setIsEmpty!21286 setRes!21286))

(declare-fun tp!853348 () Bool)

(declare-fun setNonEmpty!21286 () Bool)

(declare-fun e!1700607 () Bool)

(declare-fun setElem!21286 () Context!4358)

(assert (=> setNonEmpty!21286 (= setRes!21286 (and tp!853348 (inv!42205 setElem!21286) e!1700607))))

(declare-fun setRest!21286 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21286 (= setRest!21256 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21286 true) setRest!21286))))

(declare-fun b!2696866 () Bool)

(declare-fun tp!853347 () Bool)

(assert (=> b!2696866 (= e!1700607 tp!853347)))

(assert (= (and setNonEmpty!21256 condSetEmpty!21286) setIsEmpty!21286))

(assert (= (and setNonEmpty!21256 (not condSetEmpty!21286)) setNonEmpty!21286))

(assert (= setNonEmpty!21286 b!2696866))

(declare-fun m!3078159 () Bool)

(assert (=> setNonEmpty!21286 m!3078159))

(declare-fun b!2696867 () Bool)

(declare-fun e!1700608 () Bool)

(declare-fun tp!853349 () Bool)

(assert (=> b!2696867 (= e!1700608 (and tp_is_empty!13855 tp!853349))))

(assert (=> b!2696279 (= tp!853125 e!1700608)))

(assert (= (and b!2696279 ((_ is Cons!31144) (innerList!9795 (xs!12775 (c!434614 totalInput!354))))) b!2696867))

(declare-fun b!2696868 () Bool)

(declare-fun e!1700609 () Bool)

(declare-fun tp!853350 () Bool)

(declare-fun tp!853351 () Bool)

(assert (=> b!2696868 (= e!1700609 (and tp!853350 tp!853351))))

(assert (=> b!2696263 (= tp!853112 e!1700609)))

(assert (= (and b!2696263 ((_ is Cons!31142) (exprs!2679 (_2!17992 (_1!17993 (h!36563 mapValue!16163)))))) b!2696868))

(declare-fun condSetEmpty!21287 () Bool)

(assert (=> setNonEmpty!21255 (= condSetEmpty!21287 (= setRest!21255 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21287 () Bool)

(assert (=> setNonEmpty!21255 (= tp!853114 setRes!21287)))

(declare-fun setIsEmpty!21287 () Bool)

(assert (=> setIsEmpty!21287 setRes!21287))

(declare-fun setNonEmpty!21287 () Bool)

(declare-fun e!1700610 () Bool)

(declare-fun setElem!21287 () Context!4358)

(declare-fun tp!853353 () Bool)

(assert (=> setNonEmpty!21287 (= setRes!21287 (and tp!853353 (inv!42205 setElem!21287) e!1700610))))

(declare-fun setRest!21287 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21287 (= setRest!21255 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21287 true) setRest!21287))))

(declare-fun b!2696869 () Bool)

(declare-fun tp!853352 () Bool)

(assert (=> b!2696869 (= e!1700610 tp!853352)))

(assert (= (and setNonEmpty!21255 condSetEmpty!21287) setIsEmpty!21287))

(assert (= (and setNonEmpty!21255 (not condSetEmpty!21287)) setNonEmpty!21287))

(assert (= setNonEmpty!21287 b!2696869))

(declare-fun m!3078161 () Bool)

(assert (=> setNonEmpty!21287 m!3078161))

(declare-fun b!2696872 () Bool)

(declare-fun e!1700611 () Bool)

(declare-fun tp!853354 () Bool)

(assert (=> b!2696872 (= e!1700611 tp!853354)))

(declare-fun b!2696870 () Bool)

(assert (=> b!2696870 (= e!1700611 tp_is_empty!13855)))

(declare-fun b!2696873 () Bool)

(declare-fun tp!853356 () Bool)

(declare-fun tp!853357 () Bool)

(assert (=> b!2696873 (= e!1700611 (and tp!853356 tp!853357))))

(declare-fun b!2696871 () Bool)

(declare-fun tp!853355 () Bool)

(declare-fun tp!853358 () Bool)

(assert (=> b!2696871 (= e!1700611 (and tp!853355 tp!853358))))

(assert (=> b!2696265 (= tp!853113 e!1700611)))

(assert (= (and b!2696265 ((_ is ElementMatch!7905) (_1!17992 (_1!17993 (h!36563 mapValue!16163))))) b!2696870))

(assert (= (and b!2696265 ((_ is Concat!12880) (_1!17992 (_1!17993 (h!36563 mapValue!16163))))) b!2696871))

(assert (= (and b!2696265 ((_ is Star!7905) (_1!17992 (_1!17993 (h!36563 mapValue!16163))))) b!2696872))

(assert (= (and b!2696265 ((_ is Union!7905) (_1!17992 (_1!17993 (h!36563 mapValue!16163))))) b!2696873))

(declare-fun b!2696874 () Bool)

(declare-fun e!1700612 () Bool)

(declare-fun tp!853360 () Bool)

(assert (=> b!2696874 (= e!1700612 tp!853360)))

(declare-fun setIsEmpty!21288 () Bool)

(declare-fun setRes!21288 () Bool)

(assert (=> setIsEmpty!21288 setRes!21288))

(declare-fun e!1700614 () Bool)

(assert (=> b!2696265 (= tp!853115 e!1700614)))

(declare-fun tp!853362 () Bool)

(declare-fun setElem!21288 () Context!4358)

(declare-fun e!1700613 () Bool)

(declare-fun setNonEmpty!21288 () Bool)

(assert (=> setNonEmpty!21288 (= setRes!21288 (and tp!853362 (inv!42205 setElem!21288) e!1700613))))

(declare-fun setRest!21288 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21288 (= (_2!17993 (h!36563 (t!225250 mapValue!16163))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21288 true) setRest!21288))))

(declare-fun b!2696875 () Bool)

(declare-fun tp!853359 () Bool)

(assert (=> b!2696875 (= e!1700613 tp!853359)))

(declare-fun b!2696876 () Bool)

(declare-fun tp!853363 () Bool)

(declare-fun tp!853361 () Bool)

(assert (=> b!2696876 (= e!1700614 (and tp!853361 (inv!42205 (_2!17992 (_1!17993 (h!36563 (t!225250 mapValue!16163))))) e!1700612 tp_is_empty!13855 setRes!21288 tp!853363))))

(declare-fun condSetEmpty!21288 () Bool)

(assert (=> b!2696876 (= condSetEmpty!21288 (= (_2!17993 (h!36563 (t!225250 mapValue!16163))) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696876 b!2696874))

(assert (= (and b!2696876 condSetEmpty!21288) setIsEmpty!21288))

(assert (= (and b!2696876 (not condSetEmpty!21288)) setNonEmpty!21288))

(assert (= setNonEmpty!21288 b!2696875))

(assert (= (and b!2696265 ((_ is Cons!31143) (t!225250 mapValue!16163))) b!2696876))

(declare-fun m!3078163 () Bool)

(assert (=> setNonEmpty!21288 m!3078163))

(declare-fun m!3078165 () Bool)

(assert (=> b!2696876 m!3078165))

(declare-fun b!2696877 () Bool)

(declare-fun e!1700615 () Bool)

(declare-fun tp!853364 () Bool)

(declare-fun tp!853365 () Bool)

(assert (=> b!2696877 (= e!1700615 (and tp!853364 tp!853365))))

(assert (=> b!2696300 (= tp!853160 e!1700615)))

(assert (= (and b!2696300 ((_ is Cons!31142) (exprs!2679 (_1!17994 (_1!17995 (h!36565 mapDefault!16170)))))) b!2696877))

(declare-fun condSetEmpty!21289 () Bool)

(assert (=> setNonEmpty!21251 (= condSetEmpty!21289 (= setRest!21251 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21289 () Bool)

(assert (=> setNonEmpty!21251 (= tp!853098 setRes!21289)))

(declare-fun setIsEmpty!21289 () Bool)

(assert (=> setIsEmpty!21289 setRes!21289))

(declare-fun tp!853367 () Bool)

(declare-fun setElem!21289 () Context!4358)

(declare-fun setNonEmpty!21289 () Bool)

(declare-fun e!1700616 () Bool)

(assert (=> setNonEmpty!21289 (= setRes!21289 (and tp!853367 (inv!42205 setElem!21289) e!1700616))))

(declare-fun setRest!21289 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21289 (= setRest!21251 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21289 true) setRest!21289))))

(declare-fun b!2696878 () Bool)

(declare-fun tp!853366 () Bool)

(assert (=> b!2696878 (= e!1700616 tp!853366)))

(assert (= (and setNonEmpty!21251 condSetEmpty!21289) setIsEmpty!21289))

(assert (= (and setNonEmpty!21251 (not condSetEmpty!21289)) setNonEmpty!21289))

(assert (= setNonEmpty!21289 b!2696878))

(declare-fun m!3078167 () Bool)

(assert (=> setNonEmpty!21289 m!3078167))

(declare-fun b!2696892 () Bool)

(declare-fun b_free!76221 () Bool)

(declare-fun b_next!76925 () Bool)

(assert (=> b!2696892 (= b_free!76221 (not b_next!76925))))

(declare-fun tp!853379 () Bool)

(declare-fun b_and!199351 () Bool)

(assert (=> b!2696892 (= tp!853379 b_and!199351)))

(declare-fun b_free!76223 () Bool)

(declare-fun b_next!76927 () Bool)

(assert (=> b!2696892 (= b_free!76223 (not b_next!76927))))

(declare-fun tp!853381 () Bool)

(declare-fun b_and!199353 () Bool)

(assert (=> b!2696892 (= tp!853381 b_and!199353)))

(declare-fun b!2696891 () Bool)

(declare-fun e!1700632 () Bool)

(declare-fun tp!853382 () Bool)

(declare-fun e!1700633 () Bool)

(assert (=> b!2696891 (= e!1700633 (and tp!853382 (inv!42190 (tag!5257 (rule!7170 (h!36567 (innerList!9796 (xs!12776 (c!434615 acc!348))))))) (inv!42199 (transformation!4753 (rule!7170 (h!36567 (innerList!9796 (xs!12776 (c!434615 acc!348))))))) e!1700632))))

(declare-fun tp!853380 () Bool)

(declare-fun e!1700631 () Bool)

(declare-fun b!2696890 () Bool)

(declare-fun inv!21 (TokenValue!4975) Bool)

(assert (=> b!2696890 (= e!1700631 (and (inv!21 (value!153075 (h!36567 (innerList!9796 (xs!12776 (c!434615 acc!348)))))) e!1700633 tp!853380))))

(assert (=> b!2696892 (= e!1700632 (and tp!853379 tp!853381))))

(declare-fun tp!853378 () Bool)

(declare-fun b!2696889 () Bool)

(declare-fun e!1700634 () Bool)

(declare-fun inv!42207 (Token!8972) Bool)

(assert (=> b!2696889 (= e!1700634 (and (inv!42207 (h!36567 (innerList!9796 (xs!12776 (c!434615 acc!348))))) e!1700631 tp!853378))))

(assert (=> b!2696276 (= tp!853124 e!1700634)))

(assert (= b!2696891 b!2696892))

(assert (= b!2696890 b!2696891))

(assert (= b!2696889 b!2696890))

(assert (= (and b!2696276 ((_ is Cons!31147) (innerList!9796 (xs!12776 (c!434615 acc!348))))) b!2696889))

(declare-fun m!3078169 () Bool)

(assert (=> b!2696891 m!3078169))

(declare-fun m!3078171 () Bool)

(assert (=> b!2696891 m!3078171))

(declare-fun m!3078173 () Bool)

(assert (=> b!2696890 m!3078173))

(declare-fun m!3078175 () Bool)

(assert (=> b!2696889 m!3078175))

(declare-fun b!2696893 () Bool)

(declare-fun e!1700635 () Bool)

(declare-fun tp!853383 () Bool)

(declare-fun tp!853384 () Bool)

(assert (=> b!2696893 (= e!1700635 (and tp!853383 tp!853384))))

(assert (=> b!2696339 (= tp!853201 e!1700635)))

(assert (= (and b!2696339 ((_ is Cons!31142) (exprs!2679 setElem!21269))) b!2696893))

(declare-fun condSetEmpty!21290 () Bool)

(assert (=> setNonEmpty!21268 (= condSetEmpty!21290 (= setRest!21268 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21290 () Bool)

(assert (=> setNonEmpty!21268 (= tp!853199 setRes!21290)))

(declare-fun setIsEmpty!21290 () Bool)

(assert (=> setIsEmpty!21290 setRes!21290))

(declare-fun tp!853386 () Bool)

(declare-fun setElem!21290 () Context!4358)

(declare-fun setNonEmpty!21290 () Bool)

(declare-fun e!1700636 () Bool)

(assert (=> setNonEmpty!21290 (= setRes!21290 (and tp!853386 (inv!42205 setElem!21290) e!1700636))))

(declare-fun setRest!21290 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21290 (= setRest!21268 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21290 true) setRest!21290))))

(declare-fun b!2696894 () Bool)

(declare-fun tp!853385 () Bool)

(assert (=> b!2696894 (= e!1700636 tp!853385)))

(assert (= (and setNonEmpty!21268 condSetEmpty!21290) setIsEmpty!21290))

(assert (= (and setNonEmpty!21268 (not condSetEmpty!21290)) setNonEmpty!21290))

(assert (= setNonEmpty!21290 b!2696894))

(declare-fun m!3078177 () Bool)

(assert (=> setNonEmpty!21290 m!3078177))

(declare-fun b!2696895 () Bool)

(declare-fun e!1700639 () Bool)

(declare-fun tp!853389 () Bool)

(assert (=> b!2696895 (= e!1700639 tp!853389)))

(declare-fun setElem!21291 () Context!4358)

(declare-fun e!1700638 () Bool)

(declare-fun tp!853388 () Bool)

(declare-fun setNonEmpty!21291 () Bool)

(declare-fun setRes!21291 () Bool)

(assert (=> setNonEmpty!21291 (= setRes!21291 (and tp!853388 (inv!42205 setElem!21291) e!1700638))))

(declare-fun setRest!21291 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21291 (= (_2!17995 (h!36565 (t!225252 mapDefault!16164))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21291 true) setRest!21291))))

(declare-fun tp!853390 () Bool)

(declare-fun b!2696896 () Bool)

(declare-fun e!1700637 () Bool)

(assert (=> b!2696896 (= e!1700637 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 (t!225252 mapDefault!16164))))) e!1700639 tp_is_empty!13855 setRes!21291 tp!853390))))

(declare-fun condSetEmpty!21291 () Bool)

(assert (=> b!2696896 (= condSetEmpty!21291 (= (_2!17995 (h!36565 (t!225252 mapDefault!16164))) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> b!2696332 (= tp!853195 e!1700637)))

(declare-fun b!2696897 () Bool)

(declare-fun tp!853387 () Bool)

(assert (=> b!2696897 (= e!1700638 tp!853387)))

(declare-fun setIsEmpty!21291 () Bool)

(assert (=> setIsEmpty!21291 setRes!21291))

(assert (= b!2696896 b!2696895))

(assert (= (and b!2696896 condSetEmpty!21291) setIsEmpty!21291))

(assert (= (and b!2696896 (not condSetEmpty!21291)) setNonEmpty!21291))

(assert (= setNonEmpty!21291 b!2696897))

(assert (= (and b!2696332 ((_ is Cons!31145) (t!225252 mapDefault!16164))) b!2696896))

(declare-fun m!3078179 () Bool)

(assert (=> setNonEmpty!21291 m!3078179))

(declare-fun m!3078181 () Bool)

(assert (=> b!2696896 m!3078181))

(declare-fun b!2696900 () Bool)

(declare-fun e!1700640 () Bool)

(declare-fun tp!853391 () Bool)

(assert (=> b!2696900 (= e!1700640 tp!853391)))

(declare-fun b!2696898 () Bool)

(assert (=> b!2696898 (= e!1700640 tp_is_empty!13855)))

(declare-fun b!2696901 () Bool)

(declare-fun tp!853393 () Bool)

(declare-fun tp!853394 () Bool)

(assert (=> b!2696901 (= e!1700640 (and tp!853393 tp!853394))))

(declare-fun b!2696899 () Bool)

(declare-fun tp!853392 () Bool)

(declare-fun tp!853395 () Bool)

(assert (=> b!2696899 (= e!1700640 (and tp!853392 tp!853395))))

(assert (=> b!2696336 (= tp!853198 e!1700640)))

(assert (= (and b!2696336 ((_ is ElementMatch!7905) (_1!17992 (_1!17993 (h!36563 mapDefault!16163))))) b!2696898))

(assert (= (and b!2696336 ((_ is Concat!12880) (_1!17992 (_1!17993 (h!36563 mapDefault!16163))))) b!2696899))

(assert (= (and b!2696336 ((_ is Star!7905) (_1!17992 (_1!17993 (h!36563 mapDefault!16163))))) b!2696900))

(assert (= (and b!2696336 ((_ is Union!7905) (_1!17992 (_1!17993 (h!36563 mapDefault!16163))))) b!2696901))

(declare-fun b!2696902 () Bool)

(declare-fun e!1700641 () Bool)

(declare-fun tp!853397 () Bool)

(assert (=> b!2696902 (= e!1700641 tp!853397)))

(declare-fun setIsEmpty!21292 () Bool)

(declare-fun setRes!21292 () Bool)

(assert (=> setIsEmpty!21292 setRes!21292))

(declare-fun e!1700643 () Bool)

(assert (=> b!2696336 (= tp!853200 e!1700643)))

(declare-fun tp!853399 () Bool)

(declare-fun setElem!21292 () Context!4358)

(declare-fun setNonEmpty!21292 () Bool)

(declare-fun e!1700642 () Bool)

(assert (=> setNonEmpty!21292 (= setRes!21292 (and tp!853399 (inv!42205 setElem!21292) e!1700642))))

(declare-fun setRest!21292 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21292 (= (_2!17993 (h!36563 (t!225250 mapDefault!16163))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21292 true) setRest!21292))))

(declare-fun b!2696903 () Bool)

(declare-fun tp!853396 () Bool)

(assert (=> b!2696903 (= e!1700642 tp!853396)))

(declare-fun tp!853400 () Bool)

(declare-fun tp!853398 () Bool)

(declare-fun b!2696904 () Bool)

(assert (=> b!2696904 (= e!1700643 (and tp!853398 (inv!42205 (_2!17992 (_1!17993 (h!36563 (t!225250 mapDefault!16163))))) e!1700641 tp_is_empty!13855 setRes!21292 tp!853400))))

(declare-fun condSetEmpty!21292 () Bool)

(assert (=> b!2696904 (= condSetEmpty!21292 (= (_2!17993 (h!36563 (t!225250 mapDefault!16163))) ((as const (Array Context!4358 Bool)) false)))))

(assert (= b!2696904 b!2696902))

(assert (= (and b!2696904 condSetEmpty!21292) setIsEmpty!21292))

(assert (= (and b!2696904 (not condSetEmpty!21292)) setNonEmpty!21292))

(assert (= setNonEmpty!21292 b!2696903))

(assert (= (and b!2696336 ((_ is Cons!31143) (t!225250 mapDefault!16163))) b!2696904))

(declare-fun m!3078183 () Bool)

(assert (=> setNonEmpty!21292 m!3078183))

(declare-fun m!3078185 () Bool)

(assert (=> b!2696904 m!3078185))

(declare-fun b!2696905 () Bool)

(declare-fun e!1700644 () Bool)

(declare-fun tp!853401 () Bool)

(declare-fun tp!853402 () Bool)

(assert (=> b!2696905 (= e!1700644 (and tp!853401 tp!853402))))

(assert (=> b!2696302 (= tp!853156 e!1700644)))

(assert (= (and b!2696302 ((_ is Cons!31142) (exprs!2679 setElem!21263))) b!2696905))

(declare-fun b!2696906 () Bool)

(declare-fun e!1700645 () Bool)

(declare-fun tp!853403 () Bool)

(declare-fun tp!853404 () Bool)

(assert (=> b!2696906 (= e!1700645 (and tp!853403 tp!853404))))

(assert (=> b!2696249 (= tp!853099 e!1700645)))

(assert (= (and b!2696249 ((_ is Cons!31142) (exprs!2679 setElem!21251))) b!2696906))

(declare-fun b!2696907 () Bool)

(declare-fun e!1700646 () Bool)

(declare-fun tp!853405 () Bool)

(declare-fun tp!853406 () Bool)

(assert (=> b!2696907 (= e!1700646 (and tp!853405 tp!853406))))

(assert (=> b!2696340 (= tp!853207 e!1700646)))

(assert (= (and b!2696340 ((_ is Cons!31142) (exprs!2679 (_1!17994 (_1!17995 (h!36565 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486)))))))))))) b!2696907))

(declare-fun condSetEmpty!21293 () Bool)

(assert (=> setNonEmpty!21266 (= condSetEmpty!21293 (= setRest!21266 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21293 () Bool)

(assert (=> setNonEmpty!21266 (= tp!853174 setRes!21293)))

(declare-fun setIsEmpty!21293 () Bool)

(assert (=> setIsEmpty!21293 setRes!21293))

(declare-fun setNonEmpty!21293 () Bool)

(declare-fun e!1700647 () Bool)

(declare-fun tp!853408 () Bool)

(declare-fun setElem!21293 () Context!4358)

(assert (=> setNonEmpty!21293 (= setRes!21293 (and tp!853408 (inv!42205 setElem!21293) e!1700647))))

(declare-fun setRest!21293 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21293 (= setRest!21266 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21293 true) setRest!21293))))

(declare-fun b!2696908 () Bool)

(declare-fun tp!853407 () Bool)

(assert (=> b!2696908 (= e!1700647 tp!853407)))

(assert (= (and setNonEmpty!21266 condSetEmpty!21293) setIsEmpty!21293))

(assert (= (and setNonEmpty!21266 (not condSetEmpty!21293)) setNonEmpty!21293))

(assert (= setNonEmpty!21293 b!2696908))

(declare-fun m!3078187 () Bool)

(assert (=> setNonEmpty!21293 m!3078187))

(declare-fun condSetEmpty!21294 () Bool)

(assert (=> setNonEmpty!21263 (= condSetEmpty!21294 (= setRest!21262 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21294 () Bool)

(assert (=> setNonEmpty!21263 (= tp!853161 setRes!21294)))

(declare-fun setIsEmpty!21294 () Bool)

(assert (=> setIsEmpty!21294 setRes!21294))

(declare-fun setNonEmpty!21294 () Bool)

(declare-fun setElem!21294 () Context!4358)

(declare-fun tp!853410 () Bool)

(declare-fun e!1700648 () Bool)

(assert (=> setNonEmpty!21294 (= setRes!21294 (and tp!853410 (inv!42205 setElem!21294) e!1700648))))

(declare-fun setRest!21294 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21294 (= setRest!21262 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21294 true) setRest!21294))))

(declare-fun b!2696909 () Bool)

(declare-fun tp!853409 () Bool)

(assert (=> b!2696909 (= e!1700648 tp!853409)))

(assert (= (and setNonEmpty!21263 condSetEmpty!21294) setIsEmpty!21294))

(assert (= (and setNonEmpty!21263 (not condSetEmpty!21294)) setNonEmpty!21294))

(assert (= setNonEmpty!21294 b!2696909))

(declare-fun m!3078189 () Bool)

(assert (=> setNonEmpty!21294 m!3078189))

(declare-fun b!2696912 () Bool)

(declare-fun e!1700649 () Bool)

(declare-fun tp!853411 () Bool)

(assert (=> b!2696912 (= e!1700649 tp!853411)))

(declare-fun b!2696910 () Bool)

(assert (=> b!2696910 (= e!1700649 tp_is_empty!13855)))

(declare-fun b!2696913 () Bool)

(declare-fun tp!853413 () Bool)

(declare-fun tp!853414 () Bool)

(assert (=> b!2696913 (= e!1700649 (and tp!853413 tp!853414))))

(declare-fun b!2696911 () Bool)

(declare-fun tp!853412 () Bool)

(declare-fun tp!853415 () Bool)

(assert (=> b!2696911 (= e!1700649 (and tp!853412 tp!853415))))

(assert (=> b!2696233 (= tp!853063 e!1700649)))

(assert (= (and b!2696233 ((_ is ElementMatch!7905) (reg!8234 (regex!4753 (h!36568 rules!1381))))) b!2696910))

(assert (= (and b!2696233 ((_ is Concat!12880) (reg!8234 (regex!4753 (h!36568 rules!1381))))) b!2696911))

(assert (= (and b!2696233 ((_ is Star!7905) (reg!8234 (regex!4753 (h!36568 rules!1381))))) b!2696912))

(assert (= (and b!2696233 ((_ is Union!7905) (reg!8234 (regex!4753 (h!36568 rules!1381))))) b!2696913))

(declare-fun b!2696914 () Bool)

(declare-fun e!1700650 () Bool)

(declare-fun tp!853416 () Bool)

(declare-fun tp!853417 () Bool)

(assert (=> b!2696914 (= e!1700650 (and tp!853416 tp!853417))))

(assert (=> b!2696251 (= tp!853094 e!1700650)))

(assert (= (and b!2696251 ((_ is Cons!31142) (exprs!2679 (_2!17992 (_1!17993 (h!36563 mapValue!16167)))))) b!2696914))

(declare-fun b!2696915 () Bool)

(declare-fun e!1700653 () Bool)

(declare-fun tp!853420 () Bool)

(assert (=> b!2696915 (= e!1700653 tp!853420)))

(declare-fun setNonEmpty!21295 () Bool)

(declare-fun e!1700652 () Bool)

(declare-fun tp!853419 () Bool)

(declare-fun setRes!21295 () Bool)

(declare-fun setElem!21295 () Context!4358)

(assert (=> setNonEmpty!21295 (= setRes!21295 (and tp!853419 (inv!42205 setElem!21295) e!1700652))))

(declare-fun setRest!21295 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21295 (= (_2!17995 (h!36565 (t!225252 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21295 true) setRest!21295))))

(declare-fun tp!853421 () Bool)

(declare-fun b!2696916 () Bool)

(declare-fun e!1700651 () Bool)

(assert (=> b!2696916 (= e!1700651 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 (t!225252 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))))))) e!1700653 tp_is_empty!13855 setRes!21295 tp!853421))))

(declare-fun condSetEmpty!21295 () Bool)

(assert (=> b!2696916 (= condSetEmpty!21295 (= (_2!17995 (h!36565 (t!225252 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))))) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> b!2696341 (= tp!853208 e!1700651)))

(declare-fun b!2696917 () Bool)

(declare-fun tp!853418 () Bool)

(assert (=> b!2696917 (= e!1700652 tp!853418)))

(declare-fun setIsEmpty!21295 () Bool)

(assert (=> setIsEmpty!21295 setRes!21295))

(assert (= b!2696916 b!2696915))

(assert (= (and b!2696916 condSetEmpty!21295) setIsEmpty!21295))

(assert (= (and b!2696916 (not condSetEmpty!21295)) setNonEmpty!21295))

(assert (= setNonEmpty!21295 b!2696917))

(assert (= (and b!2696341 ((_ is Cons!31145) (t!225252 (minValue!3798 (v!32918 (underlying!7281 (v!32919 (underlying!7282 (cache!3588 cacheUp!486))))))))) b!2696916))

(declare-fun m!3078191 () Bool)

(assert (=> setNonEmpty!21295 m!3078191))

(declare-fun m!3078193 () Bool)

(assert (=> b!2696916 m!3078193))

(declare-fun tp!853422 () Bool)

(declare-fun tp!853423 () Bool)

(declare-fun e!1700654 () Bool)

(declare-fun b!2696918 () Bool)

(assert (=> b!2696918 (= e!1700654 (and (inv!42197 (left!23982 (left!23982 (c!434615 acc!348)))) tp!853422 (inv!42197 (right!24312 (left!23982 (c!434615 acc!348)))) tp!853423))))

(declare-fun b!2696920 () Bool)

(declare-fun e!1700655 () Bool)

(declare-fun tp!853424 () Bool)

(assert (=> b!2696920 (= e!1700655 tp!853424)))

(declare-fun b!2696919 () Bool)

(assert (=> b!2696919 (= e!1700654 (and (inv!42206 (xs!12776 (left!23982 (c!434615 acc!348)))) e!1700655))))

(assert (=> b!2696274 (= tp!853122 (and (inv!42197 (left!23982 (c!434615 acc!348))) e!1700654))))

(assert (= (and b!2696274 ((_ is Node!9736) (left!23982 (c!434615 acc!348)))) b!2696918))

(assert (= b!2696919 b!2696920))

(assert (= (and b!2696274 ((_ is Leaf!14857) (left!23982 (c!434615 acc!348)))) b!2696919))

(declare-fun m!3078195 () Bool)

(assert (=> b!2696918 m!3078195))

(declare-fun m!3078197 () Bool)

(assert (=> b!2696918 m!3078197))

(declare-fun m!3078199 () Bool)

(assert (=> b!2696919 m!3078199))

(assert (=> b!2696274 m!3077395))

(declare-fun b!2696921 () Bool)

(declare-fun tp!853426 () Bool)

(declare-fun tp!853425 () Bool)

(declare-fun e!1700656 () Bool)

(assert (=> b!2696921 (= e!1700656 (and (inv!42197 (left!23982 (right!24312 (c!434615 acc!348)))) tp!853425 (inv!42197 (right!24312 (right!24312 (c!434615 acc!348)))) tp!853426))))

(declare-fun b!2696923 () Bool)

(declare-fun e!1700657 () Bool)

(declare-fun tp!853427 () Bool)

(assert (=> b!2696923 (= e!1700657 tp!853427)))

(declare-fun b!2696922 () Bool)

(assert (=> b!2696922 (= e!1700656 (and (inv!42206 (xs!12776 (right!24312 (c!434615 acc!348)))) e!1700657))))

(assert (=> b!2696274 (= tp!853123 (and (inv!42197 (right!24312 (c!434615 acc!348))) e!1700656))))

(assert (= (and b!2696274 ((_ is Node!9736) (right!24312 (c!434615 acc!348)))) b!2696921))

(assert (= b!2696922 b!2696923))

(assert (= (and b!2696274 ((_ is Leaf!14857) (right!24312 (c!434615 acc!348)))) b!2696922))

(declare-fun m!3078201 () Bool)

(assert (=> b!2696921 m!3078201))

(declare-fun m!3078203 () Bool)

(assert (=> b!2696921 m!3078203))

(declare-fun m!3078205 () Bool)

(assert (=> b!2696922 m!3078205))

(assert (=> b!2696274 m!3077397))

(declare-fun b!2696924 () Bool)

(declare-fun e!1700658 () Bool)

(declare-fun tp!853428 () Bool)

(declare-fun tp!853429 () Bool)

(assert (=> b!2696924 (= e!1700658 (and tp!853428 tp!853429))))

(assert (=> b!2696316 (= tp!853173 e!1700658)))

(assert (= (and b!2696316 ((_ is Cons!31142) (exprs!2679 setElem!21266))) b!2696924))

(declare-fun condSetEmpty!21296 () Bool)

(assert (=> setNonEmpty!21269 (= condSetEmpty!21296 (= setRest!21269 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21296 () Bool)

(assert (=> setNonEmpty!21269 (= tp!853202 setRes!21296)))

(declare-fun setIsEmpty!21296 () Bool)

(assert (=> setIsEmpty!21296 setRes!21296))

(declare-fun tp!853431 () Bool)

(declare-fun setElem!21296 () Context!4358)

(declare-fun e!1700659 () Bool)

(declare-fun setNonEmpty!21296 () Bool)

(assert (=> setNonEmpty!21296 (= setRes!21296 (and tp!853431 (inv!42205 setElem!21296) e!1700659))))

(declare-fun setRest!21296 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21296 (= setRest!21269 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21296 true) setRest!21296))))

(declare-fun b!2696925 () Bool)

(declare-fun tp!853430 () Bool)

(assert (=> b!2696925 (= e!1700659 tp!853430)))

(assert (= (and setNonEmpty!21269 condSetEmpty!21296) setIsEmpty!21296))

(assert (= (and setNonEmpty!21269 (not condSetEmpty!21296)) setNonEmpty!21296))

(assert (= setNonEmpty!21296 b!2696925))

(declare-fun m!3078207 () Bool)

(assert (=> setNonEmpty!21296 m!3078207))

(declare-fun b!2696926 () Bool)

(declare-fun e!1700660 () Bool)

(declare-fun tp!853432 () Bool)

(declare-fun tp!853433 () Bool)

(assert (=> b!2696926 (= e!1700660 (and tp!853432 tp!853433))))

(assert (=> b!2696334 (= tp!853197 e!1700660)))

(assert (= (and b!2696334 ((_ is Cons!31142) (exprs!2679 (_2!17992 (_1!17993 (h!36563 mapDefault!16163)))))) b!2696926))

(declare-fun b!2696927 () Bool)

(declare-fun e!1700661 () Bool)

(declare-fun tp!853434 () Bool)

(declare-fun tp!853435 () Bool)

(assert (=> b!2696927 (= e!1700661 (and tp!853434 tp!853435))))

(assert (=> b!2696331 (= tp!853194 e!1700661)))

(assert (= (and b!2696331 ((_ is Cons!31142) (exprs!2679 (_1!17994 (_1!17995 (h!36565 mapDefault!16164)))))) b!2696927))

(declare-fun b!2696928 () Bool)

(declare-fun e!1700664 () Bool)

(declare-fun tp!853438 () Bool)

(assert (=> b!2696928 (= e!1700664 tp!853438)))

(declare-fun setRes!21297 () Bool)

(declare-fun setNonEmpty!21297 () Bool)

(declare-fun e!1700663 () Bool)

(declare-fun tp!853437 () Bool)

(declare-fun setElem!21297 () Context!4358)

(assert (=> setNonEmpty!21297 (= setRes!21297 (and tp!853437 (inv!42205 setElem!21297) e!1700663))))

(declare-fun setRest!21297 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21297 (= (_2!17995 (h!36565 (t!225252 mapDefault!16170))) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21297 true) setRest!21297))))

(declare-fun b!2696929 () Bool)

(declare-fun tp!853439 () Bool)

(declare-fun e!1700662 () Bool)

(assert (=> b!2696929 (= e!1700662 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 (t!225252 mapDefault!16170))))) e!1700664 tp_is_empty!13855 setRes!21297 tp!853439))))

(declare-fun condSetEmpty!21297 () Bool)

(assert (=> b!2696929 (= condSetEmpty!21297 (= (_2!17995 (h!36565 (t!225252 mapDefault!16170))) ((as const (Array Context!4358 Bool)) false)))))

(assert (=> b!2696305 (= tp!853158 e!1700662)))

(declare-fun b!2696930 () Bool)

(declare-fun tp!853436 () Bool)

(assert (=> b!2696930 (= e!1700663 tp!853436)))

(declare-fun setIsEmpty!21297 () Bool)

(assert (=> setIsEmpty!21297 setRes!21297))

(assert (= b!2696929 b!2696928))

(assert (= (and b!2696929 condSetEmpty!21297) setIsEmpty!21297))

(assert (= (and b!2696929 (not condSetEmpty!21297)) setNonEmpty!21297))

(assert (= setNonEmpty!21297 b!2696930))

(assert (= (and b!2696305 ((_ is Cons!31145) (t!225252 mapDefault!16170))) b!2696929))

(declare-fun m!3078209 () Bool)

(assert (=> setNonEmpty!21297 m!3078209))

(declare-fun m!3078211 () Bool)

(assert (=> b!2696929 m!3078211))

(declare-fun b!2696931 () Bool)

(declare-fun e!1700665 () Bool)

(declare-fun tp!853440 () Bool)

(assert (=> b!2696931 (= e!1700665 (and tp_is_empty!13855 tp!853440))))

(assert (=> b!2696319 (= tp!853177 e!1700665)))

(assert (= (and b!2696319 ((_ is Cons!31144) (innerList!9795 (xs!12775 (c!434614 input!780))))) b!2696931))

(declare-fun b!2696934 () Bool)

(declare-fun e!1700666 () Bool)

(declare-fun tp!853441 () Bool)

(assert (=> b!2696934 (= e!1700666 tp!853441)))

(declare-fun b!2696932 () Bool)

(assert (=> b!2696932 (= e!1700666 tp_is_empty!13855)))

(declare-fun b!2696935 () Bool)

(declare-fun tp!853443 () Bool)

(declare-fun tp!853444 () Bool)

(assert (=> b!2696935 (= e!1700666 (and tp!853443 tp!853444))))

(declare-fun b!2696933 () Bool)

(declare-fun tp!853442 () Bool)

(declare-fun tp!853445 () Bool)

(assert (=> b!2696933 (= e!1700666 (and tp!853442 tp!853445))))

(assert (=> b!2696329 (= tp!853191 e!1700666)))

(assert (= (and b!2696329 ((_ is ElementMatch!7905) (regex!4753 (h!36568 (t!225255 rules!1381))))) b!2696932))

(assert (= (and b!2696329 ((_ is Concat!12880) (regex!4753 (h!36568 (t!225255 rules!1381))))) b!2696933))

(assert (= (and b!2696329 ((_ is Star!7905) (regex!4753 (h!36568 (t!225255 rules!1381))))) b!2696934))

(assert (= (and b!2696329 ((_ is Union!7905) (regex!4753 (h!36568 (t!225255 rules!1381))))) b!2696935))

(declare-fun b!2696936 () Bool)

(declare-fun e!1700667 () Bool)

(declare-fun tp!853446 () Bool)

(declare-fun tp!853447 () Bool)

(assert (=> b!2696936 (= e!1700667 (and tp!853446 tp!853447))))

(assert (=> b!2696301 (= tp!853157 e!1700667)))

(assert (= (and b!2696301 ((_ is Cons!31142) (exprs!2679 setElem!21262))) b!2696936))

(declare-fun b!2696937 () Bool)

(declare-fun e!1700668 () Bool)

(declare-fun tp!853448 () Bool)

(declare-fun tp!853449 () Bool)

(assert (=> b!2696937 (= e!1700668 (and tp!853448 tp!853449))))

(assert (=> b!2696284 (= tp!853133 e!1700668)))

(assert (= (and b!2696284 ((_ is Cons!31142) (exprs!2679 setElem!21257))) b!2696937))

(declare-fun b!2696938 () Bool)

(declare-fun e!1700671 () Bool)

(declare-fun tp!853454 () Bool)

(assert (=> b!2696938 (= e!1700671 tp!853454)))

(declare-fun mapIsEmpty!16172 () Bool)

(declare-fun mapRes!16172 () Bool)

(assert (=> mapIsEmpty!16172 mapRes!16172))

(declare-fun setIsEmpty!21298 () Bool)

(declare-fun setRes!21298 () Bool)

(assert (=> setIsEmpty!21298 setRes!21298))

(declare-fun b!2696939 () Bool)

(declare-fun e!1700672 () Bool)

(declare-fun tp!853451 () Bool)

(assert (=> b!2696939 (= e!1700672 tp!853451)))

(declare-fun setIsEmpty!21299 () Bool)

(declare-fun setRes!21299 () Bool)

(assert (=> setIsEmpty!21299 setRes!21299))

(declare-fun condMapEmpty!16172 () Bool)

(declare-fun mapDefault!16172 () List!31245)

(assert (=> mapNonEmpty!16170 (= condMapEmpty!16172 (= mapRest!16170 ((as const (Array (_ BitVec 32) List!31245)) mapDefault!16172)))))

(declare-fun e!1700673 () Bool)

(assert (=> mapNonEmpty!16170 (= tp!853159 (and e!1700673 mapRes!16172))))

(declare-fun mapNonEmpty!16172 () Bool)

(declare-fun tp!853453 () Bool)

(declare-fun e!1700669 () Bool)

(assert (=> mapNonEmpty!16172 (= mapRes!16172 (and tp!853453 e!1700669))))

(declare-fun mapKey!16172 () (_ BitVec 32))

(declare-fun mapRest!16172 () (Array (_ BitVec 32) List!31245))

(declare-fun mapValue!16172 () List!31245)

(assert (=> mapNonEmpty!16172 (= mapRest!16170 (store mapRest!16172 mapKey!16172 mapValue!16172))))

(declare-fun setElem!21299 () Context!4358)

(declare-fun tp!853457 () Bool)

(declare-fun e!1700674 () Bool)

(declare-fun setNonEmpty!21298 () Bool)

(assert (=> setNonEmpty!21298 (= setRes!21298 (and tp!853457 (inv!42205 setElem!21299) e!1700674))))

(declare-fun setRest!21299 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21298 (= (_2!17995 (h!36565 mapValue!16172)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21299 true) setRest!21299))))

(declare-fun b!2696940 () Bool)

(declare-fun tp!853450 () Bool)

(assert (=> b!2696940 (= e!1700674 tp!853450)))

(declare-fun b!2696941 () Bool)

(declare-fun e!1700670 () Bool)

(declare-fun tp!853456 () Bool)

(assert (=> b!2696941 (= e!1700670 tp!853456)))

(declare-fun setNonEmpty!21299 () Bool)

(declare-fun tp!853455 () Bool)

(declare-fun setElem!21298 () Context!4358)

(assert (=> setNonEmpty!21299 (= setRes!21299 (and tp!853455 (inv!42205 setElem!21298) e!1700672))))

(declare-fun setRest!21298 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21299 (= (_2!17995 (h!36565 mapDefault!16172)) ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21298 true) setRest!21298))))

(declare-fun b!2696942 () Bool)

(declare-fun tp!853458 () Bool)

(assert (=> b!2696942 (= e!1700669 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 mapValue!16172)))) e!1700670 tp_is_empty!13855 setRes!21298 tp!853458))))

(declare-fun condSetEmpty!21298 () Bool)

(assert (=> b!2696942 (= condSetEmpty!21298 (= (_2!17995 (h!36565 mapValue!16172)) ((as const (Array Context!4358 Bool)) false)))))

(declare-fun b!2696943 () Bool)

(declare-fun tp!853452 () Bool)

(assert (=> b!2696943 (= e!1700673 (and (inv!42205 (_1!17994 (_1!17995 (h!36565 mapDefault!16172)))) e!1700671 tp_is_empty!13855 setRes!21299 tp!853452))))

(declare-fun condSetEmpty!21299 () Bool)

(assert (=> b!2696943 (= condSetEmpty!21299 (= (_2!17995 (h!36565 mapDefault!16172)) ((as const (Array Context!4358 Bool)) false)))))

(assert (= (and mapNonEmpty!16170 condMapEmpty!16172) mapIsEmpty!16172))

(assert (= (and mapNonEmpty!16170 (not condMapEmpty!16172)) mapNonEmpty!16172))

(assert (= b!2696942 b!2696941))

(assert (= (and b!2696942 condSetEmpty!21298) setIsEmpty!21298))

(assert (= (and b!2696942 (not condSetEmpty!21298)) setNonEmpty!21298))

(assert (= setNonEmpty!21298 b!2696940))

(assert (= (and mapNonEmpty!16172 ((_ is Cons!31145) mapValue!16172)) b!2696942))

(assert (= b!2696943 b!2696938))

(assert (= (and b!2696943 condSetEmpty!21299) setIsEmpty!21299))

(assert (= (and b!2696943 (not condSetEmpty!21299)) setNonEmpty!21299))

(assert (= setNonEmpty!21299 b!2696939))

(assert (= (and mapNonEmpty!16170 ((_ is Cons!31145) mapDefault!16172)) b!2696943))

(declare-fun m!3078213 () Bool)

(assert (=> b!2696943 m!3078213))

(declare-fun m!3078215 () Bool)

(assert (=> mapNonEmpty!16172 m!3078215))

(declare-fun m!3078217 () Bool)

(assert (=> b!2696942 m!3078217))

(declare-fun m!3078219 () Bool)

(assert (=> setNonEmpty!21298 m!3078219))

(declare-fun m!3078221 () Bool)

(assert (=> setNonEmpty!21299 m!3078221))

(declare-fun b!2696944 () Bool)

(declare-fun e!1700675 () Bool)

(declare-fun tp!853459 () Bool)

(declare-fun tp!853460 () Bool)

(assert (=> b!2696944 (= e!1700675 (and tp!853459 tp!853460))))

(assert (=> b!2696281 (= tp!853128 e!1700675)))

(assert (= (and b!2696281 ((_ is Cons!31142) (exprs!2679 setElem!21256))) b!2696944))

(declare-fun condSetEmpty!21300 () Bool)

(assert (=> setNonEmpty!21252 (= condSetEmpty!21300 (= setRest!21252 ((as const (Array Context!4358 Bool)) false)))))

(declare-fun setRes!21300 () Bool)

(assert (=> setNonEmpty!21252 (= tp!853100 setRes!21300)))

(declare-fun setIsEmpty!21300 () Bool)

(assert (=> setIsEmpty!21300 setRes!21300))

(declare-fun tp!853462 () Bool)

(declare-fun e!1700676 () Bool)

(declare-fun setNonEmpty!21300 () Bool)

(declare-fun setElem!21300 () Context!4358)

(assert (=> setNonEmpty!21300 (= setRes!21300 (and tp!853462 (inv!42205 setElem!21300) e!1700676))))

(declare-fun setRest!21300 () (InoxSet Context!4358))

(assert (=> setNonEmpty!21300 (= setRest!21252 ((_ map or) (store ((as const (Array Context!4358 Bool)) false) setElem!21300 true) setRest!21300))))

(declare-fun b!2696945 () Bool)

(declare-fun tp!853461 () Bool)

(assert (=> b!2696945 (= e!1700676 tp!853461)))

(assert (= (and setNonEmpty!21252 condSetEmpty!21300) setIsEmpty!21300))

(assert (= (and setNonEmpty!21252 (not condSetEmpty!21300)) setNonEmpty!21300))

(assert (= setNonEmpty!21300 b!2696945))

(declare-fun m!3078223 () Bool)

(assert (=> setNonEmpty!21300 m!3078223))

(declare-fun b!2696946 () Bool)

(declare-fun e!1700677 () Bool)

(declare-fun tp!853463 () Bool)

(declare-fun tp!853464 () Bool)

(assert (=> b!2696946 (= e!1700677 (and tp!853463 tp!853464))))

(assert (=> b!2696264 (= tp!853111 e!1700677)))

(assert (= (and b!2696264 ((_ is Cons!31142) (exprs!2679 setElem!21255))) b!2696946))

(declare-fun tp!853467 () Bool)

(declare-fun tp!853466 () Bool)

(declare-fun b!2696947 () Bool)

(declare-fun e!1700679 () Bool)

(assert (=> b!2696947 (= e!1700679 (and (inv!42198 (left!23981 (left!23981 (c!434614 input!780)))) tp!853466 (inv!42198 (right!24311 (left!23981 (c!434614 input!780)))) tp!853467))))

(declare-fun b!2696949 () Bool)

(declare-fun e!1700678 () Bool)

(declare-fun tp!853465 () Bool)

(assert (=> b!2696949 (= e!1700678 tp!853465)))

(declare-fun b!2696948 () Bool)

(assert (=> b!2696948 (= e!1700679 (and (inv!42204 (xs!12775 (left!23981 (c!434614 input!780)))) e!1700678))))

(assert (=> b!2696317 (= tp!853178 (and (inv!42198 (left!23981 (c!434614 input!780))) e!1700679))))

(assert (= (and b!2696317 ((_ is Node!9735) (left!23981 (c!434614 input!780)))) b!2696947))

(assert (= b!2696948 b!2696949))

(assert (= (and b!2696317 ((_ is Leaf!14856) (left!23981 (c!434614 input!780)))) b!2696948))

(declare-fun m!3078225 () Bool)

(assert (=> b!2696947 m!3078225))

(declare-fun m!3078227 () Bool)

(assert (=> b!2696947 m!3078227))

(declare-fun m!3078229 () Bool)

(assert (=> b!2696948 m!3078229))

(assert (=> b!2696317 m!3077429))

(declare-fun e!1700681 () Bool)

(declare-fun tp!853469 () Bool)

(declare-fun b!2696950 () Bool)

(declare-fun tp!853470 () Bool)

(assert (=> b!2696950 (= e!1700681 (and (inv!42198 (left!23981 (right!24311 (c!434614 input!780)))) tp!853469 (inv!42198 (right!24311 (right!24311 (c!434614 input!780)))) tp!853470))))

(declare-fun b!2696952 () Bool)

(declare-fun e!1700680 () Bool)

(declare-fun tp!853468 () Bool)

(assert (=> b!2696952 (= e!1700680 tp!853468)))

(declare-fun b!2696951 () Bool)

(assert (=> b!2696951 (= e!1700681 (and (inv!42204 (xs!12775 (right!24311 (c!434614 input!780)))) e!1700680))))

(assert (=> b!2696317 (= tp!853179 (and (inv!42198 (right!24311 (c!434614 input!780))) e!1700681))))

(assert (= (and b!2696317 ((_ is Node!9735) (right!24311 (c!434614 input!780)))) b!2696950))

(assert (= b!2696951 b!2696952))

(assert (= (and b!2696317 ((_ is Leaf!14856) (right!24311 (c!434614 input!780)))) b!2696951))

(declare-fun m!3078231 () Bool)

(assert (=> b!2696950 m!3078231))

(declare-fun m!3078233 () Bool)

(assert (=> b!2696950 m!3078233))

(declare-fun m!3078235 () Bool)

(assert (=> b!2696951 m!3078235))

(assert (=> b!2696317 m!3077431))

(check-sat (not b!2696812) (not d!772803) (not b!2696823) (not b!2696695) (not d!772873) (not b!2696897) (not b!2696707) (not setNonEmpty!21276) (not b!2696740) (not b!2696550) (not b!2696940) (not b!2696802) (not b!2696522) (not b!2696758) (not b!2696805) (not b!2696507) (not b!2696657) (not b!2696717) (not b!2696587) (not b!2696804) (not b!2696855) (not b!2696536) (not d!772703) (not d!772797) (not b!2696715) (not d!772741) (not b!2696924) (not d!772691) (not setNonEmpty!21290) (not b!2696686) (not b!2696833) (not b!2696832) (not b!2696784) (not b!2696577) (not b!2696680) (not setNonEmpty!21299) (not mapNonEmpty!16172) (not b!2696364) (not b!2696694) (not b!2696779) (not b!2696612) (not b!2696611) (not d!772737) (not b!2696869) (not b!2696808) (not setNonEmpty!21298) (not b!2696836) (not b!2696848) (not b!2696818) (not b!2696850) (not setNonEmpty!21287) (not b!2696793) (not b!2696763) (not b!2696653) (not b!2696570) (not setNonEmpty!21285) (not b!2696660) (not b!2696876) (not setNonEmpty!21289) (not b!2696928) (not setNonEmpty!21277) (not b_next!76911) (not b!2696878) (not b!2696610) (not b!2696861) (not b!2696821) (not b!2696744) (not b!2696864) (not d!772747) (not b!2696834) (not b!2696548) (not b!2696931) (not b!2696794) (not b!2696403) (not b!2696874) (not d!772709) (not b!2696608) (not b!2696777) (not b!2696810) (not b!2696817) (not b!2696926) (not b!2696845) (not b!2696873) (not d!772681) (not b!2696710) (not b!2696741) (not b!2696650) (not b!2696788) (not setNonEmpty!21282) (not b!2696790) (not b!2696872) b_and!199331 (not b!2696718) (not b!2696902) (not setNonEmpty!21294) (not b!2696477) (not d!772805) (not b!2696930) (not d!772835) (not b_next!76909) (not b!2696521) (not b!2696798) b_and!199339 (not d!772745) (not b!2696376) (not b!2696890) (not b!2696903) (not b!2696609) (not b!2696899) (not b!2696849) (not b!2696573) (not b!2696787) (not b!2696655) (not bm!173629) (not b!2696889) (not d!772793) (not b!2696797) (not b!2696803) (not b!2696875) (not b!2696709) (not b!2696277) (not b!2696780) (not b!2696615) (not b!2696951) (not b!2696617) (not b!2696482) (not b!2696916) (not b!2696274) (not b!2696934) (not b!2696662) (not b!2696518) (not b!2696424) (not b!2696919) (not b!2696404) (not d!772785) (not b!2696943) (not b!2696799) (not b!2696852) (not b!2696791) (not b!2696579) (not b!2696809) (not b!2696908) (not b!2696358) (not b!2696909) (not b!2696606) (not d!772721) (not d!772829) (not b!2696776) (not d!772791) (not b_next!76925) (not d!772715) (not d!772753) (not d!772857) (not b!2696816) (not b_next!76905) (not b!2696584) (not setNonEmpty!21275) (not d!772671) (not b!2696495) (not b!2696699) (not b!2696696) (not b!2696556) (not setNonEmpty!21280) (not b!2696759) (not setNonEmpty!21283) (not bm!173635) (not b!2696819) (not b!2696860) (not b!2696774) (not b!2696538) (not d!772881) (not b!2696416) (not b!2696704) (not b!2696837) (not b!2696629) (not b!2696681) (not b!2696935) (not b!2696574) (not b!2696929) (not b!2696401) (not b!2696742) (not b!2696690) (not b!2696866) (not b!2696490) (not b!2696842) (not b!2696922) (not b!2696933) (not b!2696893) (not b!2696906) (not d!772775) (not b!2696917) (not d!772833) (not b!2696656) (not setNonEmpty!21278) (not b!2696526) (not d!772891) (not b!2696927) (not setNonEmpty!21273) (not b!2696853) (not d!772669) (not b!2696854) (not b!2696489) (not d!772883) b_and!199343 (not setNonEmpty!21284) (not b!2696525) (not bm!173642) (not b!2696900) (not b!2696844) (not d!772751) (not d!772711) (not b!2696952) (not b!2696537) (not setNonEmpty!21286) (not b!2696921) (not b!2696682) (not b!2696357) (not b!2696918) (not b!2696735) (not d!772729) (not b!2696602) (not b!2696415) (not setNonEmpty!21293) (not setNonEmpty!21300) (not d!772749) b_and!199349 (not b!2696524) (not b!2696764) (not b!2696748) (not b!2696582) (not b!2696856) (not b!2696605) (not b_next!76907) (not d!772871) (not b!2696568) (not d!772679) (not b!2696936) b_and!199337 (not b!2696871) (not setNonEmpty!21292) (not b!2696824) tp_is_empty!13855 (not b!2696523) (not b!2696700) (not b_next!76917) (not b!2696949) (not setNonEmpty!21281) (not b!2696895) (not setNonEmpty!21288) (not b!2696831) (not b!2696901) (not setNonEmpty!21279) (not b!2696714) (not setNonEmpty!21295) (not b!2696559) (not b!2696679) (not b!2696547) (not bm!173643) (not b!2696859) (not b!2696851) (not b!2696847) (not d!772769) (not b_next!76915) (not b!2696814) (not d!772765) (not b!2696580) (not b!2696607) (not b!2696737) (not d!772841) (not b!2696729) (not d!772705) (not b!2696938) (not b!2696795) (not setNonEmpty!21296) (not b!2696905) (not d!772869) (not d!772837) (not d!772689) (not b!2696601) (not b!2696925) (not d!772827) (not d!772697) (not d!772695) (not b!2696549) (not d!772759) (not d!772701) (not d!772809) (not b!2696743) (not b!2696508) (not b!2696920) (not b!2696863) (not d!772795) (not b!2696543) b_and!199335 (not bm!173633) (not d!772811) (not b!2696724) (not b!2696877) (not b!2696825) (not b!2696904) (not b!2696862) (not b!2696739) (not bm!173640) (not setNonEmpty!21274) (not b!2696399) (not b!2696533) (not b!2696720) (not b!2696937) (not b!2696701) (not b!2696661) (not b!2696894) (not b!2696950) (not d!772755) (not b!2696941) (not b!2696731) b_and!199345 (not b!2696738) (not b!2696785) b_and!199353 (not b!2696683) (not d!772727) (not b!2696703) (not b!2696945) (not b!2696806) (not b!2696841) (not b!2696475) (not d!772847) (not b!2696838) (not b!2696822) (not b!2696733) (not b!2696620) (not d!772855) (not b!2696915) (not bm!173627) (not b!2696769) (not b!2696581) (not mapNonEmpty!16171) (not b!2696711) (not b!2696944) (not b!2696747) (not b!2696689) (not b!2696544) (not b!2696552) (not b!2696554) (not b!2696713) (not b!2696796) (not b!2696782) (not b!2696515) (not d!772771) (not b!2696826) (not d!772887) (not b!2696781) (not b!2696511) (not b!2696604) (not b!2696546) (not b!2696380) (not b!2696702) (not bm!173593) (not b!2696684) (not b!2696402) (not b!2696813) b_and!199333 (not d!772849) (not b!2696820) (not d!772773) (not b!2696846) (not d!772739) (not bm!173628) (not b!2696912) (not b!2696532) (not b!2696614) (not d!772851) (not b!2696575) (not b!2696723) (not b!2696907) (not b!2696218) (not d!772757) (not d!772743) (not b!2696400) (not b!2696775) (not d!772783) (not b!2696621) (not b!2696566) (not b_next!76927) (not b!2696378) (not b!2696789) (not b!2696792) (not b!2696397) (not d!772735) (not b_next!76913) (not d!772845) (not b!2696800) (not b!2696600) (not d!772843) (not b!2696555) (not d!772677) (not b!2696896) b_and!199341 (not b!2696730) b_and!199351 (not d!772767) (not b!2696891) (not b!2696519) (not b!2696947) (not b!2696663) (not b!2696865) (not b!2696666) (not b!2696585) (not b!2696783) (not b!2696369) (not b_next!76923) (not b!2696603) (not b!2696911) (not b!2696858) b_and!199347 (not b!2696514) (not b!2696923) (not b!2696317) (not d!772889) (not d!772713) (not b!2696868) (not d!772853) (not b!2696939) (not b!2696914) (not b_next!76919) (not b!2696571) (not d!772875) (not b!2696946) (not d!772781) (not b!2696840) (not b!2696712) (not b!2696736) (not b!2696649) (not b!2696867) (not b!2696472) (not d!772821) (not d!772699) (not b!2696578) (not b!2696734) (not d!772879) (not bm!173626) (not b!2696913) (not b!2696942) (not b!2696567) (not d!772693) (not b_next!76921) (not b!2696948) (not b!2696698) (not setNonEmpty!21297) (not b!2696801) (not d!772731) (not setNonEmpty!21291))
(check-sat (not b_next!76911) b_and!199331 (not b_next!76909) b_and!199339 (not b_next!76925) (not b_next!76905) b_and!199343 b_and!199349 (not b_next!76915) b_and!199335 b_and!199333 (not b_next!76927) (not b_next!76923) (not b_next!76921) (not b_next!76907) b_and!199337 (not b_next!76917) b_and!199345 b_and!199353 b_and!199341 (not b_next!76913) b_and!199351 (not b_next!76919) b_and!199347)
