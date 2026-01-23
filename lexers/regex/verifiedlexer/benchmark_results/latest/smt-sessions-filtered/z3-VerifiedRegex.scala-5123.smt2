; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262530 () Bool)

(assert start!262530)

(declare-fun b!2704546 () Bool)

(declare-fun b_free!76317 () Bool)

(declare-fun b_next!77021 () Bool)

(assert (=> b!2704546 (= b_free!76317 (not b_next!77021))))

(declare-fun tp!855321 () Bool)

(declare-fun b_and!199747 () Bool)

(assert (=> b!2704546 (= tp!855321 b_and!199747)))

(declare-fun b_free!76319 () Bool)

(declare-fun b_next!77023 () Bool)

(assert (=> b!2704546 (= b_free!76319 (not b_next!77023))))

(declare-fun tp!855322 () Bool)

(declare-fun b_and!199749 () Bool)

(assert (=> b!2704546 (= tp!855322 b_and!199749)))

(declare-fun b!2704523 () Bool)

(declare-fun b_free!76321 () Bool)

(declare-fun b_next!77025 () Bool)

(assert (=> b!2704523 (= b_free!76321 (not b_next!77025))))

(declare-fun tp!855326 () Bool)

(declare-fun b_and!199751 () Bool)

(assert (=> b!2704523 (= tp!855326 b_and!199751)))

(declare-fun b!2704520 () Bool)

(declare-fun b_free!76323 () Bool)

(declare-fun b_next!77027 () Bool)

(assert (=> b!2704520 (= b_free!76323 (not b_next!77027))))

(declare-fun tp!855327 () Bool)

(declare-fun b_and!199753 () Bool)

(assert (=> b!2704520 (= tp!855327 b_and!199753)))

(declare-fun b!2704551 () Bool)

(declare-fun b_free!76325 () Bool)

(declare-fun b_next!77029 () Bool)

(assert (=> b!2704551 (= b_free!76325 (not b_next!77029))))

(declare-fun tp!855340 () Bool)

(declare-fun b_and!199755 () Bool)

(assert (=> b!2704551 (= tp!855340 b_and!199755)))

(declare-fun b!2704542 () Bool)

(declare-fun b_free!76327 () Bool)

(declare-fun b_next!77031 () Bool)

(assert (=> b!2704542 (= b_free!76327 (not b_next!77031))))

(declare-fun tp!855332 () Bool)

(declare-fun b_and!199757 () Bool)

(assert (=> b!2704542 (= tp!855332 b_and!199757)))

(declare-fun b!2704514 () Bool)

(declare-fun res!1135736 () Bool)

(declare-fun e!1705175 () Bool)

(assert (=> b!2704514 (=> (not res!1135736) (not e!1705175))))

(declare-datatypes ((List!31289 0))(
  ( (Nil!31189) (Cons!31189 (h!36609 (_ BitVec 16)) (t!225723 List!31289)) )
))
(declare-datatypes ((TokenValue!4981 0))(
  ( (FloatLiteralValue!9962 (text!35312 List!31289)) (TokenValueExt!4980 (__x!20091 Int)) (Broken!24905 (value!153220 List!31289)) (Object!5080) (End!4981) (Def!4981) (Underscore!4981) (Match!4981) (Else!4981) (Error!4981) (Case!4981) (If!4981) (Extends!4981) (Abstract!4981) (Class!4981) (Val!4981) (DelimiterValue!9962 (del!5041 List!31289)) (KeywordValue!4987 (value!153221 List!31289)) (CommentValue!9962 (value!153222 List!31289)) (WhitespaceValue!9962 (value!153223 List!31289)) (IndentationValue!4981 (value!153224 List!31289)) (String!34804) (Int32!4981) (Broken!24906 (value!153225 List!31289)) (Boolean!4982) (Unit!45274) (OperatorValue!4984 (op!5041 List!31289)) (IdentifierValue!9962 (value!153226 List!31289)) (IdentifierValue!9963 (value!153227 List!31289)) (WhitespaceValue!9963 (value!153228 List!31289)) (True!9962) (False!9962) (Broken!24907 (value!153229 List!31289)) (Broken!24908 (value!153230 List!31289)) (True!9963) (RightBrace!4981) (RightBracket!4981) (Colon!4981) (Null!4981) (Comma!4981) (LeftBracket!4981) (False!9963) (LeftBrace!4981) (ImaginaryLiteralValue!4981 (text!35313 List!31289)) (StringLiteralValue!14943 (value!153231 List!31289)) (EOFValue!4981 (value!153232 List!31289)) (IdentValue!4981 (value!153233 List!31289)) (DelimiterValue!9963 (value!153234 List!31289)) (DedentValue!4981 (value!153235 List!31289)) (NewLineValue!4981 (value!153236 List!31289)) (IntegerValue!14943 (value!153237 (_ BitVec 32)) (text!35314 List!31289)) (IntegerValue!14944 (value!153238 Int) (text!35315 List!31289)) (Times!4981) (Or!4981) (Equal!4981) (Minus!4981) (Broken!24909 (value!153239 List!31289)) (And!4981) (Div!4981) (LessEqual!4981) (Mod!4981) (Concat!12892) (Not!4981) (Plus!4981) (SpaceValue!4981 (value!153240 List!31289)) (IntegerValue!14945 (value!153241 Int) (text!35316 List!31289)) (StringLiteralValue!14944 (text!35317 List!31289)) (FloatLiteralValue!9963 (text!35318 List!31289)) (BytesLiteralValue!4981 (value!153242 List!31289)) (CommentValue!9963 (value!153243 List!31289)) (StringLiteralValue!14945 (value!153244 List!31289)) (ErrorTokenValue!4981 (msg!5042 List!31289)) )
))
(declare-datatypes ((C!15980 0))(
  ( (C!15981 (val!9924 Int)) )
))
(declare-datatypes ((Regex!7911 0))(
  ( (ElementMatch!7911 (c!436394 C!15980)) (Concat!12893 (regOne!16334 Regex!7911) (regTwo!16334 Regex!7911)) (EmptyExpr!7911) (Star!7911 (reg!8240 Regex!7911)) (EmptyLang!7911) (Union!7911 (regOne!16335 Regex!7911) (regTwo!16335 Regex!7911)) )
))
(declare-datatypes ((String!34805 0))(
  ( (String!34806 (value!153245 String)) )
))
(declare-datatypes ((List!31290 0))(
  ( (Nil!31190) (Cons!31190 (h!36610 C!15980) (t!225724 List!31290)) )
))
(declare-datatypes ((IArray!19499 0))(
  ( (IArray!19500 (innerList!9807 List!31290)) )
))
(declare-datatypes ((Conc!9747 0))(
  ( (Node!9747 (left!24000 Conc!9747) (right!24330 Conc!9747) (csize!19724 Int) (cheight!9958 Int)) (Leaf!14871 (xs!12795 IArray!19499) (csize!19725 Int)) (Empty!9747) )
))
(declare-datatypes ((BalanceConc!19108 0))(
  ( (BalanceConc!19109 (c!436395 Conc!9747)) )
))
(declare-datatypes ((TokenValueInjection!9402 0))(
  ( (TokenValueInjection!9403 (toValue!6721 Int) (toChars!6580 Int)) )
))
(declare-datatypes ((Rule!9318 0))(
  ( (Rule!9319 (regex!4759 Regex!7911) (tag!5263 String!34805) (isSeparator!4759 Bool) (transformation!4759 TokenValueInjection!9402)) )
))
(declare-datatypes ((Token!8984 0))(
  ( (Token!8985 (value!153246 TokenValue!4981) (rule!7181 Rule!9318) (size!24088 Int) (originalCharacters!5523 List!31290)) )
))
(declare-datatypes ((List!31291 0))(
  ( (Nil!31191) (Cons!31191 (h!36611 Token!8984) (t!225725 List!31291)) )
))
(declare-datatypes ((IArray!19501 0))(
  ( (IArray!19502 (innerList!9808 List!31291)) )
))
(declare-datatypes ((Conc!9748 0))(
  ( (Node!9748 (left!24001 Conc!9748) (right!24331 Conc!9748) (csize!19726 Int) (cheight!9959 Int)) (Leaf!14872 (xs!12796 IArray!19501) (csize!19727 Int)) (Empty!9748) )
))
(declare-datatypes ((BalanceConc!19110 0))(
  ( (BalanceConc!19111 (c!436396 Conc!9748)) )
))
(declare-datatypes ((tuple2!30826 0))(
  ( (tuple2!30827 (_1!18043 BalanceConc!19110) (_2!18043 BalanceConc!19108)) )
))
(declare-fun lt!956254 () tuple2!30826)

(declare-fun isEmpty!17765 (List!31290) Bool)

(declare-fun list!11768 (BalanceConc!19108) List!31290)

(assert (=> b!2704514 (= res!1135736 (isEmpty!17765 (list!11768 (_2!18043 lt!956254))))))

(declare-fun b!2704515 () Bool)

(declare-fun e!1705165 () tuple2!30826)

(declare-fun lt!956233 () BalanceConc!19108)

(assert (=> b!2704515 (= e!1705165 (tuple2!30827 (BalanceConc!19111 Empty!9748) lt!956233))))

(declare-fun tp!855339 () Bool)

(declare-fun e!1705157 () Bool)

(declare-fun b!2704516 () Bool)

(declare-fun e!1705164 () Bool)

(declare-datatypes ((List!31292 0))(
  ( (Nil!31192) (Cons!31192 (h!36612 Rule!9318) (t!225726 List!31292)) )
))
(declare-fun rules!1381 () List!31292)

(declare-fun inv!42252 (String!34805) Bool)

(declare-fun inv!42255 (TokenValueInjection!9402) Bool)

(assert (=> b!2704516 (= e!1705164 (and tp!855339 (inv!42252 (tag!5263 (h!36612 rules!1381))) (inv!42255 (transformation!4759 (h!36612 rules!1381))) e!1705157))))

(declare-fun b!2704517 () Bool)

(declare-fun e!1705184 () Bool)

(declare-fun e!1705169 () Bool)

(assert (=> b!2704517 (= e!1705184 e!1705169)))

(declare-fun mapNonEmpty!16223 () Bool)

(declare-fun mapRes!16223 () Bool)

(declare-fun tp!855334 () Bool)

(declare-fun tp!855328 () Bool)

(assert (=> mapNonEmpty!16223 (= mapRes!16223 (and tp!855334 tp!855328))))

(declare-datatypes ((List!31293 0))(
  ( (Nil!31193) (Cons!31193 (h!36613 Regex!7911) (t!225727 List!31293)) )
))
(declare-datatypes ((Context!4370 0))(
  ( (Context!4371 (exprs!2685 List!31293)) )
))
(declare-datatypes ((tuple2!30828 0))(
  ( (tuple2!30829 (_1!18044 Context!4370) (_2!18044 C!15980)) )
))
(declare-datatypes ((array!12650 0))(
  ( (array!12651 (arr!5650 (Array (_ BitVec 32) (_ BitVec 64))) (size!24089 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30830 0))(
  ( (tuple2!30831 (_1!18045 tuple2!30828) (_2!18045 (InoxSet Context!4370))) )
))
(declare-datatypes ((List!31294 0))(
  ( (Nil!31194) (Cons!31194 (h!36614 tuple2!30830) (t!225728 List!31294)) )
))
(declare-datatypes ((array!12652 0))(
  ( (array!12653 (arr!5651 (Array (_ BitVec 32) List!31294)) (size!24090 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3466 0))(
  ( (HashableExt!3465 (__x!20092 Int)) )
))
(declare-datatypes ((LongMapFixedSize!7100 0))(
  ( (LongMapFixedSize!7101 (defaultEntry!3935 Int) (mask!9242 (_ BitVec 32)) (extraKeys!3799 (_ BitVec 32)) (zeroValue!3809 List!31294) (minValue!3809 List!31294) (_size!7143 (_ BitVec 32)) (_keys!3850 array!12650) (_values!3831 array!12652) (_vacant!3611 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14009 0))(
  ( (Cell!14010 (v!32957 LongMapFixedSize!7100)) )
))
(declare-datatypes ((MutLongMap!3550 0))(
  ( (LongMap!3550 (underlying!7303 Cell!14009)) (MutLongMapExt!3549 (__x!20093 Int)) )
))
(declare-datatypes ((Cell!14011 0))(
  ( (Cell!14012 (v!32958 MutLongMap!3550)) )
))
(declare-datatypes ((MutableMap!3456 0))(
  ( (MutableMapExt!3455 (__x!20094 Int)) (HashMap!3456 (underlying!7304 Cell!14011) (hashF!5498 Hashable!3466) (_size!7144 (_ BitVec 32)) (defaultValue!3627 Int)) )
))
(declare-datatypes ((CacheUp!2166 0))(
  ( (CacheUp!2167 (cache!3599 MutableMap!3456)) )
))
(declare-fun cacheUp!486 () CacheUp!2166)

(declare-fun mapKey!16223 () (_ BitVec 32))

(declare-fun mapValue!16223 () List!31294)

(declare-fun mapRest!16223 () (Array (_ BitVec 32) List!31294))

(assert (=> mapNonEmpty!16223 (= (arr!5651 (_values!3831 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))))) (store mapRest!16223 mapKey!16223 mapValue!16223))))

(declare-fun b!2704518 () Bool)

(declare-fun res!1135727 () Bool)

(declare-fun e!1705172 () Bool)

(assert (=> b!2704518 (=> (not res!1135727) (not e!1705172))))

(declare-fun isEmpty!17766 (List!31292) Bool)

(assert (=> b!2704518 (= res!1135727 (not (isEmpty!17766 rules!1381)))))

(declare-fun mapNonEmpty!16224 () Bool)

(declare-fun mapRes!16224 () Bool)

(declare-fun tp!855320 () Bool)

(declare-fun tp!855333 () Bool)

(assert (=> mapNonEmpty!16224 (= mapRes!16224 (and tp!855320 tp!855333))))

(declare-datatypes ((tuple3!4320 0))(
  ( (tuple3!4321 (_1!18046 Regex!7911) (_2!18046 Context!4370) (_3!2630 C!15980)) )
))
(declare-datatypes ((tuple2!30832 0))(
  ( (tuple2!30833 (_1!18047 tuple3!4320) (_2!18047 (InoxSet Context!4370))) )
))
(declare-datatypes ((List!31295 0))(
  ( (Nil!31195) (Cons!31195 (h!36615 tuple2!30832) (t!225729 List!31295)) )
))
(declare-fun mapValue!16224 () List!31295)

(declare-fun mapRest!16224 () (Array (_ BitVec 32) List!31295))

(declare-datatypes ((array!12654 0))(
  ( (array!12655 (arr!5652 (Array (_ BitVec 32) List!31295)) (size!24091 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7102 0))(
  ( (LongMapFixedSize!7103 (defaultEntry!3936 Int) (mask!9243 (_ BitVec 32)) (extraKeys!3800 (_ BitVec 32)) (zeroValue!3810 List!31295) (minValue!3810 List!31295) (_size!7145 (_ BitVec 32)) (_keys!3851 array!12650) (_values!3832 array!12654) (_vacant!3612 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14013 0))(
  ( (Cell!14014 (v!32959 LongMapFixedSize!7102)) )
))
(declare-datatypes ((MutLongMap!3551 0))(
  ( (LongMap!3551 (underlying!7305 Cell!14013)) (MutLongMapExt!3550 (__x!20095 Int)) )
))
(declare-datatypes ((Cell!14015 0))(
  ( (Cell!14016 (v!32960 MutLongMap!3551)) )
))
(declare-datatypes ((Hashable!3467 0))(
  ( (HashableExt!3466 (__x!20096 Int)) )
))
(declare-datatypes ((MutableMap!3457 0))(
  ( (MutableMapExt!3456 (__x!20097 Int)) (HashMap!3457 (underlying!7306 Cell!14015) (hashF!5499 Hashable!3467) (_size!7146 (_ BitVec 32)) (defaultValue!3628 Int)) )
))
(declare-datatypes ((CacheDown!2278 0))(
  ( (CacheDown!2279 (cache!3600 MutableMap!3457)) )
))
(declare-fun cacheDown!499 () CacheDown!2278)

(declare-fun mapKey!16224 () (_ BitVec 32))

(assert (=> mapNonEmpty!16224 (= (arr!5652 (_values!3832 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))))) (store mapRest!16224 mapKey!16224 mapValue!16224))))

(declare-fun b!2704519 () Bool)

(declare-fun e!1705167 () Bool)

(assert (=> b!2704519 (= e!1705172 e!1705167)))

(declare-fun res!1135732 () Bool)

(assert (=> b!2704519 (=> (not res!1135732) (not e!1705167))))

(declare-fun totalInput!354 () BalanceConc!19108)

(declare-fun lt!956245 () List!31290)

(declare-fun lt!956256 () List!31290)

(declare-fun ++!7668 (List!31290 List!31290) List!31290)

(assert (=> b!2704519 (= res!1135732 (= (list!11768 totalInput!354) (++!7668 lt!956245 lt!956256)))))

(declare-fun input!780 () BalanceConc!19108)

(assert (=> b!2704519 (= lt!956256 (list!11768 input!780))))

(declare-fun treated!26 () BalanceConc!19108)

(assert (=> b!2704519 (= lt!956245 (list!11768 treated!26))))

(declare-fun mapIsEmpty!16223 () Bool)

(assert (=> mapIsEmpty!16223 mapRes!16223))

(declare-fun e!1705161 () Bool)

(declare-fun e!1705178 () Bool)

(assert (=> b!2704520 (= e!1705161 (and e!1705178 tp!855327))))

(declare-fun b!2704521 () Bool)

(declare-fun e!1705166 () Bool)

(assert (=> b!2704521 (= e!1705175 e!1705166)))

(declare-fun res!1135730 () Bool)

(assert (=> b!2704521 (=> (not res!1135730) (not e!1705166))))

(declare-fun lt!956234 () tuple2!30826)

(declare-fun acc!348 () BalanceConc!19110)

(declare-fun lt!956247 () tuple2!30826)

(declare-fun list!11769 (BalanceConc!19110) List!31291)

(declare-fun ++!7669 (BalanceConc!19110 BalanceConc!19110) BalanceConc!19110)

(assert (=> b!2704521 (= res!1135730 (= (list!11769 (_1!18043 lt!956247)) (list!11769 (++!7669 acc!348 (_1!18043 lt!956234)))))))

(declare-datatypes ((LexerInterface!4355 0))(
  ( (LexerInterfaceExt!4352 (__x!20098 Int)) (Lexer!4353) )
))
(declare-fun thiss!12257 () LexerInterface!4355)

(declare-fun lexRec!617 (LexerInterface!4355 List!31292 BalanceConc!19108) tuple2!30826)

(assert (=> b!2704521 (= lt!956234 (lexRec!617 thiss!12257 rules!1381 input!780))))

(assert (=> b!2704521 (= lt!956247 (lexRec!617 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2704522 () Bool)

(declare-fun e!1705185 () Bool)

(assert (=> b!2704522 (= e!1705185 e!1705161)))

(declare-fun e!1705190 () Bool)

(declare-fun e!1705160 () Bool)

(assert (=> b!2704523 (= e!1705190 (and e!1705160 tp!855326))))

(declare-fun b!2704524 () Bool)

(declare-fun e!1705189 () Bool)

(declare-fun tp!855325 () Bool)

(assert (=> b!2704524 (= e!1705189 (and tp!855325 mapRes!16223))))

(declare-fun condMapEmpty!16223 () Bool)

(declare-fun mapDefault!16223 () List!31294)

(assert (=> b!2704524 (= condMapEmpty!16223 (= (arr!5651 (_values!3831 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31294)) mapDefault!16223)))))

(declare-fun b!2704525 () Bool)

(declare-fun e!1705176 () Bool)

(assert (=> b!2704525 (= e!1705176 e!1705190)))

(declare-fun b!2704526 () Bool)

(declare-fun e!1705173 () Bool)

(declare-fun tp!855324 () Bool)

(declare-fun inv!42256 (Conc!9747) Bool)

(assert (=> b!2704526 (= e!1705173 (and (inv!42256 (c!436395 treated!26)) tp!855324))))

(declare-fun b!2704527 () Bool)

(declare-fun e!1705163 () Bool)

(declare-fun tp!855330 () Bool)

(assert (=> b!2704527 (= e!1705163 (and (inv!42256 (c!436395 totalInput!354)) tp!855330))))

(declare-fun b!2704528 () Bool)

(declare-fun res!1135726 () Bool)

(assert (=> b!2704528 (=> (not res!1135726) (not e!1705172))))

(declare-fun rulesInvariant!3840 (LexerInterface!4355 List!31292) Bool)

(assert (=> b!2704528 (= res!1135726 (rulesInvariant!3840 thiss!12257 rules!1381))))

(declare-fun b!2704529 () Bool)

(declare-fun e!1705171 () Bool)

(declare-fun lt!956238 () MutLongMap!3550)

(get-info :version)

(assert (=> b!2704529 (= e!1705160 (and e!1705171 ((_ is LongMap!3550) lt!956238)))))

(assert (=> b!2704529 (= lt!956238 (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))))

(declare-fun res!1135733 () Bool)

(assert (=> start!262530 (=> (not res!1135733) (not e!1705172))))

(assert (=> start!262530 (= res!1135733 ((_ is Lexer!4353) thiss!12257))))

(assert (=> start!262530 e!1705172))

(declare-fun inv!42257 (BalanceConc!19108) Bool)

(assert (=> start!262530 (and (inv!42257 totalInput!354) e!1705163)))

(declare-fun inv!42258 (CacheUp!2166) Bool)

(assert (=> start!262530 (and (inv!42258 cacheUp!486) e!1705176)))

(declare-fun e!1705170 () Bool)

(declare-fun inv!42259 (BalanceConc!19110) Bool)

(assert (=> start!262530 (and (inv!42259 acc!348) e!1705170)))

(declare-fun e!1705179 () Bool)

(assert (=> start!262530 (and (inv!42257 input!780) e!1705179)))

(assert (=> start!262530 (and (inv!42257 treated!26) e!1705173)))

(declare-fun e!1705182 () Bool)

(assert (=> start!262530 e!1705182))

(assert (=> start!262530 true))

(declare-fun inv!42260 (CacheDown!2278) Bool)

(assert (=> start!262530 (and (inv!42260 cacheDown!499) e!1705185)))

(declare-fun b!2704530 () Bool)

(declare-fun res!1135725 () Bool)

(assert (=> b!2704530 (=> (not res!1135725) (not e!1705172))))

(declare-fun valid!2758 (CacheUp!2166) Bool)

(assert (=> b!2704530 (= res!1135725 (valid!2758 cacheUp!486))))

(declare-fun b!2704531 () Bool)

(assert (=> b!2704531 (= e!1705167 e!1705175)))

(declare-fun res!1135728 () Bool)

(assert (=> b!2704531 (=> (not res!1135728) (not e!1705175))))

(declare-fun lt!956242 () List!31291)

(declare-fun lt!956255 () List!31291)

(assert (=> b!2704531 (= res!1135728 (= lt!956242 lt!956255))))

(assert (=> b!2704531 (= lt!956255 (list!11769 acc!348))))

(assert (=> b!2704531 (= lt!956242 (list!11769 (_1!18043 lt!956254)))))

(assert (=> b!2704531 (= lt!956254 (lexRec!617 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2704532 () Bool)

(declare-fun lt!956236 () BalanceConc!19110)

(declare-datatypes ((tuple2!30834 0))(
  ( (tuple2!30835 (_1!18048 Token!8984) (_2!18048 BalanceConc!19108)) )
))
(declare-datatypes ((Option!6154 0))(
  ( (None!6153) (Some!6153 (v!32961 tuple2!30834)) )
))
(declare-fun lt!956241 () Option!6154)

(declare-fun e!1705186 () tuple2!30826)

(declare-fun lexTailRec!38 (LexerInterface!4355 List!31292 BalanceConc!19108 BalanceConc!19108 BalanceConc!19108 BalanceConc!19110) tuple2!30826)

(assert (=> b!2704532 (= e!1705186 (lexTailRec!38 thiss!12257 rules!1381 totalInput!354 lt!956233 (_2!18048 (v!32961 lt!956241)) lt!956236))))

(declare-fun lt!956244 () tuple2!30826)

(assert (=> b!2704532 (= lt!956244 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956241))))))

(declare-fun lt!956251 () BalanceConc!19108)

(declare-fun charsOf!2998 (Token!8984) BalanceConc!19108)

(assert (=> b!2704532 (= lt!956251 (charsOf!2998 (_1!18048 (v!32961 lt!956241))))))

(declare-fun lt!956253 () List!31290)

(assert (=> b!2704532 (= lt!956253 (list!11768 lt!956251))))

(declare-fun lt!956243 () List!31290)

(assert (=> b!2704532 (= lt!956243 (list!11768 (_2!18048 (v!32961 lt!956241))))))

(declare-datatypes ((Unit!45275 0))(
  ( (Unit!45276) )
))
(declare-fun lt!956249 () Unit!45275)

(declare-fun lemmaConcatAssociativity!1569 (List!31290 List!31290 List!31290) Unit!45275)

(assert (=> b!2704532 (= lt!956249 (lemmaConcatAssociativity!1569 lt!956245 lt!956253 lt!956243))))

(declare-fun lt!956239 () List!31290)

(assert (=> b!2704532 (= lt!956239 (++!7668 lt!956245 lt!956253))))

(declare-fun res!1135737 () Bool)

(assert (=> b!2704532 (= res!1135737 (= (++!7668 lt!956239 lt!956243) (++!7668 lt!956245 (++!7668 lt!956253 lt!956243))))))

(declare-fun e!1705168 () Bool)

(assert (=> b!2704532 (=> (not res!1135737) (not e!1705168))))

(assert (=> b!2704532 e!1705168))

(declare-fun lt!956232 () List!31291)

(assert (=> b!2704532 (= lt!956232 (Cons!31191 (_1!18048 (v!32961 lt!956241)) Nil!31191))))

(declare-fun lt!956235 () List!31291)

(assert (=> b!2704532 (= lt!956235 (list!11769 (_1!18043 lt!956244)))))

(declare-fun lt!956250 () Unit!45275)

(declare-fun lemmaConcatAssociativity!1570 (List!31291 List!31291 List!31291) Unit!45275)

(assert (=> b!2704532 (= lt!956250 (lemmaConcatAssociativity!1570 lt!956255 lt!956232 lt!956235))))

(declare-fun ++!7670 (List!31291 List!31291) List!31291)

(assert (=> b!2704532 (= (++!7670 (++!7670 lt!956255 lt!956232) lt!956235) (++!7670 lt!956255 (++!7670 lt!956232 lt!956235)))))

(declare-fun append!785 (BalanceConc!19110 Token!8984) BalanceConc!19110)

(assert (=> b!2704532 (= lt!956236 (append!785 acc!348 (_1!18048 (v!32961 lt!956241))))))

(declare-fun lt!956240 () List!31291)

(assert (=> b!2704532 (= lt!956240 (list!11769 lt!956236))))

(declare-fun lt!956252 () Unit!45275)

(declare-fun lemmaLexThenLexPrefix!414 (LexerInterface!4355 List!31292 List!31290 List!31290 List!31291 List!31291 List!31290) Unit!45275)

(assert (=> b!2704532 (= lt!956252 (lemmaLexThenLexPrefix!414 thiss!12257 rules!1381 lt!956239 lt!956243 lt!956240 lt!956235 (list!11768 (_2!18043 lt!956244))))))

(declare-datatypes ((tuple2!30836 0))(
  ( (tuple2!30837 (_1!18049 List!31291) (_2!18049 List!31290)) )
))
(declare-fun lexList!1202 (LexerInterface!4355 List!31292 List!31290) tuple2!30836)

(assert (=> b!2704532 (= (lexList!1202 thiss!12257 rules!1381 lt!956239) (tuple2!30837 lt!956240 Nil!31190))))

(declare-fun ++!7671 (BalanceConc!19108 BalanceConc!19108) BalanceConc!19108)

(assert (=> b!2704532 (= lt!956233 (++!7671 treated!26 lt!956251))))

(declare-fun lt!956248 () Option!6154)

(declare-fun maxPrefixZipperSequence!1015 (LexerInterface!4355 List!31292 BalanceConc!19108) Option!6154)

(assert (=> b!2704532 (= lt!956248 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 lt!956233))))

(declare-fun c!436392 () Bool)

(assert (=> b!2704532 (= c!436392 ((_ is Some!6153) lt!956248))))

(assert (=> b!2704532 (= (lexRec!617 thiss!12257 rules!1381 lt!956233) e!1705165)))

(declare-fun b!2704533 () Bool)

(declare-fun e!1705180 () Bool)

(declare-fun e!1705174 () Bool)

(assert (=> b!2704533 (= e!1705180 e!1705174)))

(declare-fun res!1135724 () Bool)

(assert (=> b!2704533 (=> (not res!1135724) (not e!1705174))))

(declare-fun lt!956257 () tuple2!30826)

(assert (=> b!2704533 (= res!1135724 (= lt!956255 (list!11769 (_1!18043 lt!956257))))))

(declare-fun b!2704534 () Bool)

(declare-fun tp!855331 () Bool)

(assert (=> b!2704534 (= e!1705182 (and e!1705164 tp!855331))))

(declare-fun e!1705183 () Bool)

(declare-fun b!2704535 () Bool)

(declare-fun lex!1966 (LexerInterface!4355 List!31292 BalanceConc!19108) tuple2!30826)

(declare-fun lexTailRecV2!878 (LexerInterface!4355 List!31292 BalanceConc!19108 BalanceConc!19108 BalanceConc!19108 BalanceConc!19110) tuple2!30826)

(assert (=> b!2704535 (= e!1705183 (= (lex!1966 thiss!12257 rules!1381 input!780) (lexTailRecV2!878 thiss!12257 rules!1381 input!780 (BalanceConc!19109 Empty!9747) input!780 (BalanceConc!19111 Empty!9748))))))

(declare-fun b!2704536 () Bool)

(declare-fun res!1135729 () Bool)

(assert (=> b!2704536 (=> (not res!1135729) (not e!1705166))))

(assert (=> b!2704536 (= res!1135729 (= (list!11768 (_2!18043 lt!956247)) (list!11768 (_2!18043 lt!956234))))))

(declare-fun b!2704537 () Bool)

(declare-fun lt!956237 () tuple2!30826)

(assert (=> b!2704537 (= lt!956237 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956248))))))

(declare-fun prepend!1092 (BalanceConc!19110 Token!8984) BalanceConc!19110)

(assert (=> b!2704537 (= e!1705165 (tuple2!30827 (prepend!1092 (_1!18043 lt!956237) (_1!18048 (v!32961 lt!956248))) (_2!18043 lt!956237)))))

(declare-fun b!2704538 () Bool)

(assert (=> b!2704538 (= e!1705166 (not e!1705180))))

(declare-fun res!1135735 () Bool)

(assert (=> b!2704538 (=> res!1135735 e!1705180)))

(declare-datatypes ((tuple3!4322 0))(
  ( (tuple3!4323 (_1!18050 Option!6154) (_2!18050 CacheUp!2166) (_3!2631 CacheDown!2278)) )
))
(declare-fun maxPrefixZipperSequenceMem!25 (LexerInterface!4355 List!31292 BalanceConc!19108 CacheUp!2166 CacheDown!2278) tuple3!4322)

(assert (=> b!2704538 (= res!1135735 ((_ is Some!6153) (_1!18050 (maxPrefixZipperSequenceMem!25 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))))

(assert (=> b!2704538 e!1705183))

(declare-fun res!1135734 () Bool)

(assert (=> b!2704538 (=> (not res!1135734) (not e!1705183))))

(assert (=> b!2704538 (= res!1135734 (= lt!956257 e!1705186))))

(declare-fun c!436393 () Bool)

(assert (=> b!2704538 (= c!436393 ((_ is Some!6153) lt!956241))))

(assert (=> b!2704538 (= lt!956257 (lexTailRec!38 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348))))

(assert (=> b!2704538 (= lt!956241 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 input!780))))

(declare-fun b!2704539 () Bool)

(declare-fun e!1705158 () Bool)

(assert (=> b!2704539 (= e!1705169 e!1705158)))

(declare-fun b!2704540 () Bool)

(declare-fun e!1705159 () Bool)

(declare-fun e!1705162 () Bool)

(assert (=> b!2704540 (= e!1705159 e!1705162)))

(declare-fun b!2704541 () Bool)

(assert (=> b!2704541 (= e!1705168 (= lt!956234 (tuple2!30827 (prepend!1092 (_1!18043 lt!956244) (_1!18048 (v!32961 lt!956241))) (_2!18043 lt!956244))))))

(declare-fun tp!855338 () Bool)

(declare-fun tp!855336 () Bool)

(declare-fun e!1705181 () Bool)

(declare-fun array_inv!4038 (array!12650) Bool)

(declare-fun array_inv!4039 (array!12654) Bool)

(assert (=> b!2704542 (= e!1705158 (and tp!855332 tp!855338 tp!855336 (array_inv!4038 (_keys!3851 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))))) (array_inv!4039 (_values!3832 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))))) e!1705181))))

(declare-fun b!2704543 () Bool)

(assert (=> b!2704543 (= e!1705186 (tuple2!30827 acc!348 input!780))))

(declare-fun b!2704544 () Bool)

(assert (=> b!2704544 (= e!1705174 (= lt!956256 (list!11768 (_2!18043 lt!956257))))))

(declare-fun b!2704545 () Bool)

(declare-fun tp!855323 () Bool)

(assert (=> b!2704545 (= e!1705181 (and tp!855323 mapRes!16224))))

(declare-fun condMapEmpty!16224 () Bool)

(declare-fun mapDefault!16224 () List!31295)

(assert (=> b!2704545 (= condMapEmpty!16224 (= (arr!5652 (_values!3832 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31295)) mapDefault!16224)))))

(assert (=> b!2704546 (= e!1705157 (and tp!855321 tp!855322))))

(declare-fun b!2704547 () Bool)

(declare-fun tp!855341 () Bool)

(assert (=> b!2704547 (= e!1705179 (and (inv!42256 (c!436395 input!780)) tp!855341))))

(declare-fun b!2704548 () Bool)

(declare-fun res!1135731 () Bool)

(assert (=> b!2704548 (=> (not res!1135731) (not e!1705172))))

(declare-fun valid!2759 (CacheDown!2278) Bool)

(assert (=> b!2704548 (= res!1135731 (valid!2759 cacheDown!499))))

(declare-fun b!2704549 () Bool)

(assert (=> b!2704549 (= e!1705171 e!1705159)))

(declare-fun b!2704550 () Bool)

(declare-fun lt!956246 () MutLongMap!3551)

(assert (=> b!2704550 (= e!1705178 (and e!1705184 ((_ is LongMap!3551) lt!956246)))))

(assert (=> b!2704550 (= lt!956246 (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))))

(declare-fun tp!855335 () Bool)

(declare-fun tp!855329 () Bool)

(declare-fun array_inv!4040 (array!12652) Bool)

(assert (=> b!2704551 (= e!1705162 (and tp!855340 tp!855335 tp!855329 (array_inv!4038 (_keys!3850 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))))) (array_inv!4040 (_values!3831 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))))) e!1705189))))

(declare-fun mapIsEmpty!16224 () Bool)

(assert (=> mapIsEmpty!16224 mapRes!16224))

(declare-fun b!2704552 () Bool)

(declare-fun tp!855337 () Bool)

(declare-fun inv!42261 (Conc!9748) Bool)

(assert (=> b!2704552 (= e!1705170 (and (inv!42261 (c!436396 acc!348)) tp!855337))))

(assert (= (and start!262530 res!1135733) b!2704518))

(assert (= (and b!2704518 res!1135727) b!2704528))

(assert (= (and b!2704528 res!1135726) b!2704530))

(assert (= (and b!2704530 res!1135725) b!2704548))

(assert (= (and b!2704548 res!1135731) b!2704519))

(assert (= (and b!2704519 res!1135732) b!2704531))

(assert (= (and b!2704531 res!1135728) b!2704514))

(assert (= (and b!2704514 res!1135736) b!2704521))

(assert (= (and b!2704521 res!1135730) b!2704536))

(assert (= (and b!2704536 res!1135729) b!2704538))

(assert (= (and b!2704538 c!436393) b!2704532))

(assert (= (and b!2704538 (not c!436393)) b!2704543))

(assert (= (and b!2704532 res!1135737) b!2704541))

(assert (= (and b!2704532 c!436392) b!2704537))

(assert (= (and b!2704532 (not c!436392)) b!2704515))

(assert (= (and b!2704538 res!1135734) b!2704535))

(assert (= (and b!2704538 (not res!1135735)) b!2704533))

(assert (= (and b!2704533 res!1135724) b!2704544))

(assert (= start!262530 b!2704527))

(assert (= (and b!2704524 condMapEmpty!16223) mapIsEmpty!16223))

(assert (= (and b!2704524 (not condMapEmpty!16223)) mapNonEmpty!16223))

(assert (= b!2704551 b!2704524))

(assert (= b!2704540 b!2704551))

(assert (= b!2704549 b!2704540))

(assert (= (and b!2704529 ((_ is LongMap!3550) (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))) b!2704549))

(assert (= b!2704523 b!2704529))

(assert (= (and b!2704525 ((_ is HashMap!3456) (cache!3599 cacheUp!486))) b!2704523))

(assert (= start!262530 b!2704525))

(assert (= start!262530 b!2704552))

(assert (= start!262530 b!2704547))

(assert (= start!262530 b!2704526))

(assert (= b!2704516 b!2704546))

(assert (= b!2704534 b!2704516))

(assert (= (and start!262530 ((_ is Cons!31192) rules!1381)) b!2704534))

(assert (= (and b!2704545 condMapEmpty!16224) mapIsEmpty!16224))

(assert (= (and b!2704545 (not condMapEmpty!16224)) mapNonEmpty!16224))

(assert (= b!2704542 b!2704545))

(assert (= b!2704539 b!2704542))

(assert (= b!2704517 b!2704539))

(assert (= (and b!2704550 ((_ is LongMap!3551) (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))) b!2704517))

(assert (= b!2704520 b!2704550))

(assert (= (and b!2704522 ((_ is HashMap!3457) (cache!3600 cacheDown!499))) b!2704520))

(assert (= start!262530 b!2704522))

(declare-fun m!3093883 () Bool)

(assert (=> b!2704536 m!3093883))

(declare-fun m!3093885 () Bool)

(assert (=> b!2704536 m!3093885))

(declare-fun m!3093887 () Bool)

(assert (=> b!2704537 m!3093887))

(declare-fun m!3093889 () Bool)

(assert (=> b!2704537 m!3093889))

(declare-fun m!3093891 () Bool)

(assert (=> b!2704535 m!3093891))

(declare-fun m!3093893 () Bool)

(assert (=> b!2704535 m!3093893))

(declare-fun m!3093895 () Bool)

(assert (=> b!2704551 m!3093895))

(declare-fun m!3093897 () Bool)

(assert (=> b!2704551 m!3093897))

(declare-fun m!3093899 () Bool)

(assert (=> b!2704541 m!3093899))

(declare-fun m!3093901 () Bool)

(assert (=> start!262530 m!3093901))

(declare-fun m!3093903 () Bool)

(assert (=> start!262530 m!3093903))

(declare-fun m!3093905 () Bool)

(assert (=> start!262530 m!3093905))

(declare-fun m!3093907 () Bool)

(assert (=> start!262530 m!3093907))

(declare-fun m!3093909 () Bool)

(assert (=> start!262530 m!3093909))

(declare-fun m!3093911 () Bool)

(assert (=> start!262530 m!3093911))

(declare-fun m!3093913 () Bool)

(assert (=> b!2704538 m!3093913))

(declare-fun m!3093915 () Bool)

(assert (=> b!2704538 m!3093915))

(declare-fun m!3093917 () Bool)

(assert (=> b!2704538 m!3093917))

(declare-fun m!3093919 () Bool)

(assert (=> b!2704547 m!3093919))

(declare-fun m!3093921 () Bool)

(assert (=> mapNonEmpty!16223 m!3093921))

(declare-fun m!3093923 () Bool)

(assert (=> b!2704552 m!3093923))

(declare-fun m!3093925 () Bool)

(assert (=> mapNonEmpty!16224 m!3093925))

(declare-fun m!3093927 () Bool)

(assert (=> b!2704526 m!3093927))

(declare-fun m!3093929 () Bool)

(assert (=> b!2704519 m!3093929))

(declare-fun m!3093931 () Bool)

(assert (=> b!2704519 m!3093931))

(declare-fun m!3093933 () Bool)

(assert (=> b!2704519 m!3093933))

(declare-fun m!3093935 () Bool)

(assert (=> b!2704519 m!3093935))

(declare-fun m!3093937 () Bool)

(assert (=> b!2704516 m!3093937))

(declare-fun m!3093939 () Bool)

(assert (=> b!2704516 m!3093939))

(declare-fun m!3093941 () Bool)

(assert (=> b!2704514 m!3093941))

(assert (=> b!2704514 m!3093941))

(declare-fun m!3093943 () Bool)

(assert (=> b!2704514 m!3093943))

(declare-fun m!3093945 () Bool)

(assert (=> b!2704521 m!3093945))

(declare-fun m!3093947 () Bool)

(assert (=> b!2704521 m!3093947))

(declare-fun m!3093949 () Bool)

(assert (=> b!2704521 m!3093949))

(declare-fun m!3093951 () Bool)

(assert (=> b!2704521 m!3093951))

(assert (=> b!2704521 m!3093949))

(declare-fun m!3093953 () Bool)

(assert (=> b!2704521 m!3093953))

(declare-fun m!3093955 () Bool)

(assert (=> b!2704530 m!3093955))

(declare-fun m!3093957 () Bool)

(assert (=> b!2704532 m!3093957))

(declare-fun m!3093959 () Bool)

(assert (=> b!2704532 m!3093959))

(declare-fun m!3093961 () Bool)

(assert (=> b!2704532 m!3093961))

(declare-fun m!3093963 () Bool)

(assert (=> b!2704532 m!3093963))

(declare-fun m!3093965 () Bool)

(assert (=> b!2704532 m!3093965))

(declare-fun m!3093967 () Bool)

(assert (=> b!2704532 m!3093967))

(assert (=> b!2704532 m!3093961))

(assert (=> b!2704532 m!3093957))

(declare-fun m!3093969 () Bool)

(assert (=> b!2704532 m!3093969))

(declare-fun m!3093971 () Bool)

(assert (=> b!2704532 m!3093971))

(declare-fun m!3093973 () Bool)

(assert (=> b!2704532 m!3093973))

(declare-fun m!3093975 () Bool)

(assert (=> b!2704532 m!3093975))

(declare-fun m!3093977 () Bool)

(assert (=> b!2704532 m!3093977))

(declare-fun m!3093979 () Bool)

(assert (=> b!2704532 m!3093979))

(declare-fun m!3093981 () Bool)

(assert (=> b!2704532 m!3093981))

(assert (=> b!2704532 m!3093979))

(declare-fun m!3093983 () Bool)

(assert (=> b!2704532 m!3093983))

(declare-fun m!3093985 () Bool)

(assert (=> b!2704532 m!3093985))

(declare-fun m!3093987 () Bool)

(assert (=> b!2704532 m!3093987))

(declare-fun m!3093989 () Bool)

(assert (=> b!2704532 m!3093989))

(declare-fun m!3093991 () Bool)

(assert (=> b!2704532 m!3093991))

(declare-fun m!3093993 () Bool)

(assert (=> b!2704532 m!3093993))

(declare-fun m!3093995 () Bool)

(assert (=> b!2704532 m!3093995))

(assert (=> b!2704532 m!3093989))

(declare-fun m!3093997 () Bool)

(assert (=> b!2704532 m!3093997))

(declare-fun m!3093999 () Bool)

(assert (=> b!2704532 m!3093999))

(declare-fun m!3094001 () Bool)

(assert (=> b!2704532 m!3094001))

(declare-fun m!3094003 () Bool)

(assert (=> b!2704532 m!3094003))

(declare-fun m!3094005 () Bool)

(assert (=> b!2704542 m!3094005))

(declare-fun m!3094007 () Bool)

(assert (=> b!2704542 m!3094007))

(declare-fun m!3094009 () Bool)

(assert (=> b!2704533 m!3094009))

(declare-fun m!3094011 () Bool)

(assert (=> b!2704544 m!3094011))

(declare-fun m!3094013 () Bool)

(assert (=> b!2704548 m!3094013))

(declare-fun m!3094015 () Bool)

(assert (=> b!2704528 m!3094015))

(declare-fun m!3094017 () Bool)

(assert (=> b!2704531 m!3094017))

(declare-fun m!3094019 () Bool)

(assert (=> b!2704531 m!3094019))

(declare-fun m!3094021 () Bool)

(assert (=> b!2704531 m!3094021))

(declare-fun m!3094023 () Bool)

(assert (=> b!2704518 m!3094023))

(declare-fun m!3094025 () Bool)

(assert (=> b!2704527 m!3094025))

(check-sat b_and!199751 (not b!2704521) (not b!2704541) (not b_next!77029) (not b!2704536) (not b!2704538) (not b!2704551) b_and!199755 (not b!2704530) (not b!2704524) (not b!2704548) (not b!2704514) (not b!2704528) (not b_next!77025) (not b_next!77031) (not b!2704516) (not b!2704547) (not b!2704527) (not b!2704518) (not b!2704532) (not b!2704542) (not b!2704531) (not b!2704537) (not b!2704535) (not b!2704533) (not b!2704545) (not b!2704544) b_and!199747 (not b!2704552) (not mapNonEmpty!16224) (not b!2704534) (not b_next!77023) (not b_next!77021) (not mapNonEmpty!16223) (not b!2704519) b_and!199753 (not b_next!77027) b_and!199749 (not start!262530) (not b!2704526) b_and!199757)
(check-sat (not b_next!77025) b_and!199751 (not b_next!77029) b_and!199755 (not b_next!77031) b_and!199747 (not b_next!77023) (not b_next!77021) b_and!199753 (not b_next!77027) b_and!199749 b_and!199757)
(get-model)

(declare-fun call!174239 () tuple3!4322)

(declare-fun bm!174234 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceMem!11 (LexerInterface!4355 Rule!9318 BalanceConc!19108 CacheUp!2166 CacheDown!2278) tuple3!4322)

(assert (=> bm!174234 (= call!174239 (maxPrefixOneRuleZipperSequenceMem!11 thiss!12257 (h!36612 rules!1381) input!780 cacheUp!486 cacheDown!499))))

(declare-fun b!2704561 () Bool)

(declare-fun e!1705195 () tuple3!4322)

(declare-fun lt!956276 () tuple3!4322)

(declare-fun lt!956280 () tuple3!4322)

(assert (=> b!2704561 (= e!1705195 (tuple3!4323 (ite (and ((_ is None!6153) (_1!18050 lt!956276)) ((_ is None!6153) (_1!18050 lt!956280))) None!6153 (ite ((_ is None!6153) (_1!18050 lt!956280)) (_1!18050 lt!956276) (ite ((_ is None!6153) (_1!18050 lt!956276)) (_1!18050 lt!956280) (ite (>= (size!24088 (_1!18048 (v!32961 (_1!18050 lt!956276)))) (size!24088 (_1!18048 (v!32961 (_1!18050 lt!956280))))) (_1!18050 lt!956276) (_1!18050 lt!956280))))) (_2!18050 lt!956280) (_3!2631 lt!956280)))))

(assert (=> b!2704561 (= lt!956276 call!174239)))

(assert (=> b!2704561 (= lt!956280 (maxPrefixZipperSequenceMem!25 thiss!12257 (t!225726 rules!1381) input!780 (_2!18050 lt!956276) (_3!2631 lt!956276)))))

(declare-fun d!777038 () Bool)

(declare-fun e!1705196 () Bool)

(assert (=> d!777038 e!1705196))

(declare-fun res!1135745 () Bool)

(assert (=> d!777038 (=> (not res!1135745) (not e!1705196))))

(declare-fun lt!956277 () tuple3!4322)

(assert (=> d!777038 (= res!1135745 (= (_1!18050 lt!956277) (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 input!780)))))

(assert (=> d!777038 (= lt!956277 e!1705195)))

(declare-fun c!436399 () Bool)

(assert (=> d!777038 (= c!436399 (and ((_ is Cons!31192) rules!1381) ((_ is Nil!31192) (t!225726 rules!1381))))))

(declare-fun lt!956274 () Unit!45275)

(declare-fun lt!956275 () Unit!45275)

(assert (=> d!777038 (= lt!956274 lt!956275)))

(declare-fun lt!956281 () List!31290)

(declare-fun lt!956278 () List!31290)

(declare-fun isPrefix!2473 (List!31290 List!31290) Bool)

(assert (=> d!777038 (isPrefix!2473 lt!956281 lt!956278)))

(declare-fun lemmaIsPrefixRefl!1599 (List!31290 List!31290) Unit!45275)

(assert (=> d!777038 (= lt!956275 (lemmaIsPrefixRefl!1599 lt!956281 lt!956278))))

(assert (=> d!777038 (= lt!956278 (list!11768 input!780))))

(assert (=> d!777038 (= lt!956281 (list!11768 input!780))))

(declare-fun rulesValidInductive!1655 (LexerInterface!4355 List!31292) Bool)

(assert (=> d!777038 (rulesValidInductive!1655 thiss!12257 rules!1381)))

(assert (=> d!777038 (= (maxPrefixZipperSequenceMem!25 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499) lt!956277)))

(declare-fun b!2704562 () Bool)

(assert (=> b!2704562 (= e!1705196 (valid!2759 (_3!2631 lt!956277)))))

(declare-fun b!2704563 () Bool)

(declare-fun lt!956279 () tuple3!4322)

(assert (=> b!2704563 (= e!1705195 (tuple3!4323 (_1!18050 lt!956279) (_2!18050 lt!956279) (_3!2631 lt!956279)))))

(assert (=> b!2704563 (= lt!956279 call!174239)))

(declare-fun b!2704564 () Bool)

(declare-fun res!1135744 () Bool)

(assert (=> b!2704564 (=> (not res!1135744) (not e!1705196))))

(assert (=> b!2704564 (= res!1135744 (valid!2758 (_2!18050 lt!956277)))))

(assert (= (and d!777038 c!436399) b!2704563))

(assert (= (and d!777038 (not c!436399)) b!2704561))

(assert (= (or b!2704563 b!2704561) bm!174234))

(assert (= (and d!777038 res!1135745) b!2704564))

(assert (= (and b!2704564 res!1135744) b!2704562))

(declare-fun m!3094027 () Bool)

(assert (=> b!2704564 m!3094027))

(declare-fun m!3094029 () Bool)

(assert (=> bm!174234 m!3094029))

(declare-fun m!3094031 () Bool)

(assert (=> b!2704562 m!3094031))

(declare-fun m!3094033 () Bool)

(assert (=> d!777038 m!3094033))

(assert (=> d!777038 m!3093917))

(declare-fun m!3094035 () Bool)

(assert (=> d!777038 m!3094035))

(assert (=> d!777038 m!3093933))

(declare-fun m!3094037 () Bool)

(assert (=> d!777038 m!3094037))

(declare-fun m!3094039 () Bool)

(assert (=> b!2704561 m!3094039))

(assert (=> b!2704538 d!777038))

(declare-fun b!2704579 () Bool)

(declare-fun lt!956355 () tuple2!30826)

(declare-fun lt!956337 () Option!6154)

(assert (=> b!2704579 (= lt!956355 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956337))))))

(declare-fun e!1705207 () tuple2!30826)

(assert (=> b!2704579 (= e!1705207 (tuple2!30827 (prepend!1092 (_1!18043 lt!956355) (_1!18048 (v!32961 lt!956337))) (_2!18043 lt!956355)))))

(declare-fun e!1705205 () tuple2!30826)

(declare-fun lt!956346 () Option!6154)

(declare-fun b!2704580 () Bool)

(assert (=> b!2704580 (= e!1705205 (lexTailRec!38 thiss!12257 rules!1381 totalInput!354 (++!7671 treated!26 (charsOf!2998 (_1!18048 (v!32961 lt!956346)))) (_2!18048 (v!32961 lt!956346)) (append!785 acc!348 (_1!18048 (v!32961 lt!956346)))))))

(declare-fun lt!956345 () tuple2!30826)

(assert (=> b!2704580 (= lt!956345 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956346))))))

(declare-fun lt!956350 () List!31290)

(assert (=> b!2704580 (= lt!956350 (list!11768 treated!26))))

(declare-fun lt!956338 () List!31290)

(assert (=> b!2704580 (= lt!956338 (list!11768 (charsOf!2998 (_1!18048 (v!32961 lt!956346)))))))

(declare-fun lt!956348 () List!31290)

(assert (=> b!2704580 (= lt!956348 (list!11768 (_2!18048 (v!32961 lt!956346))))))

(declare-fun lt!956334 () Unit!45275)

(assert (=> b!2704580 (= lt!956334 (lemmaConcatAssociativity!1569 lt!956350 lt!956338 lt!956348))))

(assert (=> b!2704580 (= (++!7668 (++!7668 lt!956350 lt!956338) lt!956348) (++!7668 lt!956350 (++!7668 lt!956338 lt!956348)))))

(declare-fun lt!956351 () Unit!45275)

(assert (=> b!2704580 (= lt!956351 lt!956334)))

(assert (=> b!2704580 (= lt!956337 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 input!780))))

(declare-fun c!436406 () Bool)

(assert (=> b!2704580 (= c!436406 ((_ is Some!6153) lt!956337))))

(assert (=> b!2704580 (= (lexRec!617 thiss!12257 rules!1381 input!780) e!1705207)))

(declare-fun lt!956356 () Unit!45275)

(declare-fun Unit!45277 () Unit!45275)

(assert (=> b!2704580 (= lt!956356 Unit!45277)))

(declare-fun lt!956344 () List!31291)

(assert (=> b!2704580 (= lt!956344 (list!11769 acc!348))))

(declare-fun lt!956354 () List!31291)

(assert (=> b!2704580 (= lt!956354 (Cons!31191 (_1!18048 (v!32961 lt!956346)) Nil!31191))))

(declare-fun lt!956352 () List!31291)

(assert (=> b!2704580 (= lt!956352 (list!11769 (_1!18043 lt!956345)))))

(declare-fun lt!956341 () Unit!45275)

(assert (=> b!2704580 (= lt!956341 (lemmaConcatAssociativity!1570 lt!956344 lt!956354 lt!956352))))

(assert (=> b!2704580 (= (++!7670 (++!7670 lt!956344 lt!956354) lt!956352) (++!7670 lt!956344 (++!7670 lt!956354 lt!956352)))))

(declare-fun lt!956339 () Unit!45275)

(assert (=> b!2704580 (= lt!956339 lt!956341)))

(declare-fun lt!956342 () List!31290)

(assert (=> b!2704580 (= lt!956342 (++!7668 (list!11768 treated!26) (list!11768 (charsOf!2998 (_1!18048 (v!32961 lt!956346))))))))

(declare-fun lt!956336 () List!31290)

(assert (=> b!2704580 (= lt!956336 (list!11768 (_2!18048 (v!32961 lt!956346))))))

(declare-fun lt!956343 () List!31291)

(assert (=> b!2704580 (= lt!956343 (list!11769 (append!785 acc!348 (_1!18048 (v!32961 lt!956346)))))))

(declare-fun lt!956349 () Unit!45275)

(assert (=> b!2704580 (= lt!956349 (lemmaLexThenLexPrefix!414 thiss!12257 rules!1381 lt!956342 lt!956336 lt!956343 (list!11769 (_1!18043 lt!956345)) (list!11768 (_2!18043 lt!956345))))))

(assert (=> b!2704580 (= (lexList!1202 thiss!12257 rules!1381 lt!956342) (tuple2!30837 lt!956343 Nil!31190))))

(declare-fun lt!956347 () Unit!45275)

(assert (=> b!2704580 (= lt!956347 lt!956349)))

(declare-fun lt!956333 () BalanceConc!19108)

(assert (=> b!2704580 (= lt!956333 (++!7671 treated!26 (charsOf!2998 (_1!18048 (v!32961 lt!956346)))))))

(declare-fun lt!956335 () Option!6154)

(assert (=> b!2704580 (= lt!956335 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 lt!956333))))

(declare-fun c!436407 () Bool)

(assert (=> b!2704580 (= c!436407 ((_ is Some!6153) lt!956335))))

(declare-fun e!1705206 () tuple2!30826)

(assert (=> b!2704580 (= (lexRec!617 thiss!12257 rules!1381 (++!7671 treated!26 (charsOf!2998 (_1!18048 (v!32961 lt!956346))))) e!1705206)))

(declare-fun lt!956340 () Unit!45275)

(declare-fun Unit!45278 () Unit!45275)

(assert (=> b!2704580 (= lt!956340 Unit!45278)))

(declare-fun d!777040 () Bool)

(declare-fun e!1705208 () Bool)

(assert (=> d!777040 e!1705208))

(declare-fun res!1135748 () Bool)

(assert (=> d!777040 (=> (not res!1135748) (not e!1705208))))

(declare-fun lt!956332 () tuple2!30826)

(assert (=> d!777040 (= res!1135748 (= (list!11769 (_1!18043 lt!956332)) (list!11769 (_1!18043 (lexRec!617 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!777040 (= lt!956332 e!1705205)))

(declare-fun c!436408 () Bool)

(assert (=> d!777040 (= c!436408 ((_ is Some!6153) lt!956346))))

(assert (=> d!777040 (= lt!956346 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 input!780))))

(assert (=> d!777040 (= (lexTailRec!38 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) lt!956332)))

(declare-fun b!2704581 () Bool)

(assert (=> b!2704581 (= e!1705208 (= (list!11768 (_2!18043 lt!956332)) (list!11768 (_2!18043 (lexRec!617 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2704582 () Bool)

(assert (=> b!2704582 (= e!1705207 (tuple2!30827 (BalanceConc!19111 Empty!9748) input!780))))

(declare-fun b!2704583 () Bool)

(assert (=> b!2704583 (= e!1705206 (tuple2!30827 (BalanceConc!19111 Empty!9748) lt!956333))))

(declare-fun b!2704584 () Bool)

(assert (=> b!2704584 (= e!1705205 (tuple2!30827 acc!348 input!780))))

(declare-fun lt!956353 () tuple2!30826)

(declare-fun b!2704585 () Bool)

(assert (=> b!2704585 (= lt!956353 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956335))))))

(assert (=> b!2704585 (= e!1705206 (tuple2!30827 (prepend!1092 (_1!18043 lt!956353) (_1!18048 (v!32961 lt!956335))) (_2!18043 lt!956353)))))

(assert (= (and d!777040 c!436408) b!2704580))

(assert (= (and d!777040 (not c!436408)) b!2704584))

(assert (= (and b!2704580 c!436406) b!2704579))

(assert (= (and b!2704580 (not c!436406)) b!2704582))

(assert (= (and b!2704580 c!436407) b!2704585))

(assert (= (and b!2704580 (not c!436407)) b!2704583))

(assert (= (and d!777040 res!1135748) b!2704581))

(declare-fun m!3094041 () Bool)

(assert (=> d!777040 m!3094041))

(assert (=> d!777040 m!3093947))

(declare-fun m!3094043 () Bool)

(assert (=> d!777040 m!3094043))

(assert (=> d!777040 m!3093917))

(declare-fun m!3094045 () Bool)

(assert (=> b!2704579 m!3094045))

(declare-fun m!3094047 () Bool)

(assert (=> b!2704579 m!3094047))

(declare-fun m!3094049 () Bool)

(assert (=> b!2704585 m!3094049))

(declare-fun m!3094051 () Bool)

(assert (=> b!2704585 m!3094051))

(declare-fun m!3094053 () Bool)

(assert (=> b!2704580 m!3094053))

(declare-fun m!3094055 () Bool)

(assert (=> b!2704580 m!3094055))

(declare-fun m!3094057 () Bool)

(assert (=> b!2704580 m!3094057))

(declare-fun m!3094059 () Bool)

(assert (=> b!2704580 m!3094059))

(declare-fun m!3094061 () Bool)

(assert (=> b!2704580 m!3094061))

(assert (=> b!2704580 m!3093935))

(declare-fun m!3094063 () Bool)

(assert (=> b!2704580 m!3094063))

(declare-fun m!3094065 () Bool)

(assert (=> b!2704580 m!3094065))

(declare-fun m!3094067 () Bool)

(assert (=> b!2704580 m!3094067))

(declare-fun m!3094069 () Bool)

(assert (=> b!2704580 m!3094069))

(assert (=> b!2704580 m!3093917))

(declare-fun m!3094071 () Bool)

(assert (=> b!2704580 m!3094071))

(declare-fun m!3094073 () Bool)

(assert (=> b!2704580 m!3094073))

(declare-fun m!3094075 () Bool)

(assert (=> b!2704580 m!3094075))

(declare-fun m!3094077 () Bool)

(assert (=> b!2704580 m!3094077))

(assert (=> b!2704580 m!3093953))

(declare-fun m!3094079 () Bool)

(assert (=> b!2704580 m!3094079))

(declare-fun m!3094081 () Bool)

(assert (=> b!2704580 m!3094081))

(assert (=> b!2704580 m!3094017))

(assert (=> b!2704580 m!3094053))

(assert (=> b!2704580 m!3094073))

(assert (=> b!2704580 m!3094057))

(declare-fun m!3094083 () Bool)

(assert (=> b!2704580 m!3094083))

(assert (=> b!2704580 m!3094059))

(declare-fun m!3094085 () Bool)

(assert (=> b!2704580 m!3094085))

(assert (=> b!2704580 m!3094079))

(assert (=> b!2704580 m!3094073))

(assert (=> b!2704580 m!3094061))

(declare-fun m!3094087 () Bool)

(assert (=> b!2704580 m!3094087))

(declare-fun m!3094089 () Bool)

(assert (=> b!2704580 m!3094089))

(assert (=> b!2704580 m!3094077))

(declare-fun m!3094091 () Bool)

(assert (=> b!2704580 m!3094091))

(assert (=> b!2704580 m!3093935))

(declare-fun m!3094093 () Bool)

(assert (=> b!2704580 m!3094093))

(assert (=> b!2704580 m!3094079))

(assert (=> b!2704580 m!3094063))

(declare-fun m!3094095 () Bool)

(assert (=> b!2704580 m!3094095))

(declare-fun m!3094097 () Bool)

(assert (=> b!2704580 m!3094097))

(assert (=> b!2704580 m!3094057))

(declare-fun m!3094099 () Bool)

(assert (=> b!2704580 m!3094099))

(assert (=> b!2704580 m!3094097))

(assert (=> b!2704580 m!3094069))

(declare-fun m!3094101 () Bool)

(assert (=> b!2704580 m!3094101))

(declare-fun m!3094103 () Bool)

(assert (=> b!2704581 m!3094103))

(assert (=> b!2704581 m!3093947))

(declare-fun m!3094105 () Bool)

(assert (=> b!2704581 m!3094105))

(assert (=> b!2704538 d!777040))

(declare-fun b!2704602 () Bool)

(declare-fun e!1705223 () Bool)

(declare-fun e!1705226 () Bool)

(assert (=> b!2704602 (= e!1705223 e!1705226)))

(declare-fun res!1135762 () Bool)

(assert (=> b!2704602 (=> (not res!1135762) (not e!1705226))))

(declare-fun lt!956376 () Option!6154)

(declare-fun get!9740 (Option!6154) tuple2!30834)

(declare-datatypes ((tuple2!30838 0))(
  ( (tuple2!30839 (_1!18051 Token!8984) (_2!18051 List!31290)) )
))
(declare-datatypes ((Option!6155 0))(
  ( (None!6154) (Some!6154 (v!32964 tuple2!30838)) )
))
(declare-fun get!9741 (Option!6155) tuple2!30838)

(declare-fun maxPrefix!2356 (LexerInterface!4355 List!31292 List!31290) Option!6155)

(assert (=> b!2704602 (= res!1135762 (= (_1!18048 (get!9740 lt!956376)) (_1!18051 (get!9741 (maxPrefix!2356 thiss!12257 rules!1381 (list!11768 input!780))))))))

(declare-fun b!2704603 () Bool)

(declare-fun e!1705222 () Bool)

(declare-fun maxPrefixZipper!460 (LexerInterface!4355 List!31292 List!31290) Option!6155)

(assert (=> b!2704603 (= e!1705222 (= (list!11768 (_2!18048 (get!9740 lt!956376))) (_2!18051 (get!9741 (maxPrefixZipper!460 thiss!12257 rules!1381 (list!11768 input!780))))))))

(declare-fun d!777042 () Bool)

(declare-fun e!1705225 () Bool)

(assert (=> d!777042 e!1705225))

(declare-fun res!1135763 () Bool)

(assert (=> d!777042 (=> (not res!1135763) (not e!1705225))))

(declare-fun isDefined!4873 (Option!6154) Bool)

(declare-fun isDefined!4874 (Option!6155) Bool)

(assert (=> d!777042 (= res!1135763 (= (isDefined!4873 lt!956376) (isDefined!4874 (maxPrefixZipper!460 thiss!12257 rules!1381 (list!11768 input!780)))))))

(declare-fun e!1705224 () Option!6154)

(assert (=> d!777042 (= lt!956376 e!1705224)))

(declare-fun c!436411 () Bool)

(assert (=> d!777042 (= c!436411 (and ((_ is Cons!31192) rules!1381) ((_ is Nil!31192) (t!225726 rules!1381))))))

(declare-fun lt!956371 () Unit!45275)

(declare-fun lt!956375 () Unit!45275)

(assert (=> d!777042 (= lt!956371 lt!956375)))

(declare-fun lt!956377 () List!31290)

(declare-fun lt!956374 () List!31290)

(assert (=> d!777042 (isPrefix!2473 lt!956377 lt!956374)))

(assert (=> d!777042 (= lt!956375 (lemmaIsPrefixRefl!1599 lt!956377 lt!956374))))

(assert (=> d!777042 (= lt!956374 (list!11768 input!780))))

(assert (=> d!777042 (= lt!956377 (list!11768 input!780))))

(assert (=> d!777042 (rulesValidInductive!1655 thiss!12257 rules!1381)))

(assert (=> d!777042 (= (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 input!780) lt!956376)))

(declare-fun call!174242 () Option!6154)

(declare-fun bm!174237 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!469 (LexerInterface!4355 Rule!9318 BalanceConc!19108) Option!6154)

(assert (=> bm!174237 (= call!174242 (maxPrefixOneRuleZipperSequence!469 thiss!12257 (h!36612 rules!1381) input!780))))

(declare-fun b!2704604 () Bool)

(assert (=> b!2704604 (= e!1705225 e!1705223)))

(declare-fun res!1135766 () Bool)

(assert (=> b!2704604 (=> res!1135766 e!1705223)))

(assert (=> b!2704604 (= res!1135766 (not (isDefined!4873 lt!956376)))))

(declare-fun b!2704605 () Bool)

(declare-fun e!1705221 () Bool)

(assert (=> b!2704605 (= e!1705221 e!1705222)))

(declare-fun res!1135761 () Bool)

(assert (=> b!2704605 (=> (not res!1135761) (not e!1705222))))

(assert (=> b!2704605 (= res!1135761 (= (_1!18048 (get!9740 lt!956376)) (_1!18051 (get!9741 (maxPrefixZipper!460 thiss!12257 rules!1381 (list!11768 input!780))))))))

(declare-fun b!2704606 () Bool)

(assert (=> b!2704606 (= e!1705226 (= (list!11768 (_2!18048 (get!9740 lt!956376))) (_2!18051 (get!9741 (maxPrefix!2356 thiss!12257 rules!1381 (list!11768 input!780))))))))

(declare-fun b!2704607 () Bool)

(assert (=> b!2704607 (= e!1705224 call!174242)))

(declare-fun b!2704608 () Bool)

(declare-fun lt!956372 () Option!6154)

(declare-fun lt!956373 () Option!6154)

(assert (=> b!2704608 (= e!1705224 (ite (and ((_ is None!6153) lt!956372) ((_ is None!6153) lt!956373)) None!6153 (ite ((_ is None!6153) lt!956373) lt!956372 (ite ((_ is None!6153) lt!956372) lt!956373 (ite (>= (size!24088 (_1!18048 (v!32961 lt!956372))) (size!24088 (_1!18048 (v!32961 lt!956373)))) lt!956372 lt!956373)))))))

(assert (=> b!2704608 (= lt!956372 call!174242)))

(assert (=> b!2704608 (= lt!956373 (maxPrefixZipperSequence!1015 thiss!12257 (t!225726 rules!1381) input!780))))

(declare-fun b!2704609 () Bool)

(declare-fun res!1135764 () Bool)

(assert (=> b!2704609 (=> (not res!1135764) (not e!1705225))))

(assert (=> b!2704609 (= res!1135764 e!1705221)))

(declare-fun res!1135765 () Bool)

(assert (=> b!2704609 (=> res!1135765 e!1705221)))

(assert (=> b!2704609 (= res!1135765 (not (isDefined!4873 lt!956376)))))

(assert (= (and d!777042 c!436411) b!2704607))

(assert (= (and d!777042 (not c!436411)) b!2704608))

(assert (= (or b!2704607 b!2704608) bm!174237))

(assert (= (and d!777042 res!1135763) b!2704609))

(assert (= (and b!2704609 (not res!1135765)) b!2704605))

(assert (= (and b!2704605 res!1135761) b!2704603))

(assert (= (and b!2704609 res!1135764) b!2704604))

(assert (= (and b!2704604 (not res!1135766)) b!2704602))

(assert (= (and b!2704602 res!1135762) b!2704606))

(declare-fun m!3094107 () Bool)

(assert (=> b!2704602 m!3094107))

(assert (=> b!2704602 m!3093933))

(assert (=> b!2704602 m!3093933))

(declare-fun m!3094109 () Bool)

(assert (=> b!2704602 m!3094109))

(assert (=> b!2704602 m!3094109))

(declare-fun m!3094111 () Bool)

(assert (=> b!2704602 m!3094111))

(declare-fun m!3094113 () Bool)

(assert (=> b!2704606 m!3094113))

(assert (=> b!2704606 m!3093933))

(assert (=> b!2704606 m!3094109))

(assert (=> b!2704606 m!3093933))

(assert (=> b!2704606 m!3094107))

(assert (=> b!2704606 m!3094109))

(assert (=> b!2704606 m!3094111))

(assert (=> b!2704605 m!3094107))

(assert (=> b!2704605 m!3093933))

(assert (=> b!2704605 m!3093933))

(declare-fun m!3094115 () Bool)

(assert (=> b!2704605 m!3094115))

(assert (=> b!2704605 m!3094115))

(declare-fun m!3094117 () Bool)

(assert (=> b!2704605 m!3094117))

(declare-fun m!3094119 () Bool)

(assert (=> b!2704604 m!3094119))

(assert (=> d!777042 m!3094033))

(declare-fun m!3094121 () Bool)

(assert (=> d!777042 m!3094121))

(assert (=> d!777042 m!3094119))

(assert (=> d!777042 m!3094115))

(declare-fun m!3094123 () Bool)

(assert (=> d!777042 m!3094123))

(assert (=> d!777042 m!3093933))

(assert (=> d!777042 m!3094115))

(assert (=> d!777042 m!3093933))

(declare-fun m!3094125 () Bool)

(assert (=> d!777042 m!3094125))

(declare-fun m!3094127 () Bool)

(assert (=> bm!174237 m!3094127))

(declare-fun m!3094129 () Bool)

(assert (=> b!2704608 m!3094129))

(assert (=> b!2704603 m!3093933))

(assert (=> b!2704603 m!3094115))

(assert (=> b!2704603 m!3094113))

(assert (=> b!2704603 m!3094115))

(assert (=> b!2704603 m!3094117))

(assert (=> b!2704603 m!3093933))

(assert (=> b!2704603 m!3094107))

(assert (=> b!2704609 m!3094119))

(assert (=> b!2704538 d!777042))

(declare-fun d!777044 () Bool)

(assert (=> d!777044 (= (isEmpty!17766 rules!1381) ((_ is Nil!31192) rules!1381))))

(assert (=> b!2704518 d!777044))

(declare-fun b!2704624 () Bool)

(declare-fun res!1135775 () Bool)

(declare-fun e!1705237 () Bool)

(assert (=> b!2704624 (=> (not res!1135775) (not e!1705237))))

(declare-fun lt!956385 () tuple2!30826)

(assert (=> b!2704624 (= res!1135775 (= (list!11769 (_1!18043 lt!956385)) (_1!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 (_2!18048 (v!32961 lt!956248)))))))))

(declare-fun b!2704625 () Bool)

(declare-fun e!1705236 () Bool)

(assert (=> b!2704625 (= e!1705236 (= (list!11768 (_2!18043 lt!956385)) (list!11768 (_2!18048 (v!32961 lt!956248)))))))

(declare-fun d!777046 () Bool)

(assert (=> d!777046 e!1705237))

(declare-fun res!1135773 () Bool)

(assert (=> d!777046 (=> (not res!1135773) (not e!1705237))))

(assert (=> d!777046 (= res!1135773 e!1705236)))

(declare-fun c!436417 () Bool)

(declare-fun size!24092 (BalanceConc!19110) Int)

(assert (=> d!777046 (= c!436417 (> (size!24092 (_1!18043 lt!956385)) 0))))

(declare-fun e!1705238 () tuple2!30826)

(assert (=> d!777046 (= lt!956385 e!1705238)))

(declare-fun c!436416 () Bool)

(declare-fun lt!956384 () Option!6154)

(assert (=> d!777046 (= c!436416 ((_ is Some!6153) lt!956384))))

(assert (=> d!777046 (= lt!956384 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956248))))))

(assert (=> d!777046 (= (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956248))) lt!956385)))

(declare-fun b!2704626 () Bool)

(declare-fun e!1705235 () Bool)

(assert (=> b!2704626 (= e!1705236 e!1705235)))

(declare-fun res!1135774 () Bool)

(declare-fun size!24093 (BalanceConc!19108) Int)

(assert (=> b!2704626 (= res!1135774 (< (size!24093 (_2!18043 lt!956385)) (size!24093 (_2!18048 (v!32961 lt!956248)))))))

(assert (=> b!2704626 (=> (not res!1135774) (not e!1705235))))

(declare-fun b!2704627 () Bool)

(assert (=> b!2704627 (= e!1705238 (tuple2!30827 (BalanceConc!19111 Empty!9748) (_2!18048 (v!32961 lt!956248))))))

(declare-fun b!2704628 () Bool)

(declare-fun isEmpty!17767 (BalanceConc!19110) Bool)

(assert (=> b!2704628 (= e!1705235 (not (isEmpty!17767 (_1!18043 lt!956385))))))

(declare-fun b!2704629 () Bool)

(assert (=> b!2704629 (= e!1705237 (= (list!11768 (_2!18043 lt!956385)) (_2!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 (_2!18048 (v!32961 lt!956248)))))))))

(declare-fun b!2704630 () Bool)

(declare-fun lt!956386 () tuple2!30826)

(assert (=> b!2704630 (= e!1705238 (tuple2!30827 (prepend!1092 (_1!18043 lt!956386) (_1!18048 (v!32961 lt!956384))) (_2!18043 lt!956386)))))

(assert (=> b!2704630 (= lt!956386 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956384))))))

(assert (= (and d!777046 c!436416) b!2704630))

(assert (= (and d!777046 (not c!436416)) b!2704627))

(assert (= (and d!777046 c!436417) b!2704626))

(assert (= (and d!777046 (not c!436417)) b!2704625))

(assert (= (and b!2704626 res!1135774) b!2704628))

(assert (= (and d!777046 res!1135773) b!2704624))

(assert (= (and b!2704624 res!1135775) b!2704629))

(declare-fun m!3094131 () Bool)

(assert (=> b!2704624 m!3094131))

(declare-fun m!3094133 () Bool)

(assert (=> b!2704624 m!3094133))

(assert (=> b!2704624 m!3094133))

(declare-fun m!3094135 () Bool)

(assert (=> b!2704624 m!3094135))

(declare-fun m!3094137 () Bool)

(assert (=> b!2704628 m!3094137))

(declare-fun m!3094139 () Bool)

(assert (=> b!2704629 m!3094139))

(assert (=> b!2704629 m!3094133))

(assert (=> b!2704629 m!3094133))

(assert (=> b!2704629 m!3094135))

(declare-fun m!3094141 () Bool)

(assert (=> b!2704630 m!3094141))

(declare-fun m!3094143 () Bool)

(assert (=> b!2704630 m!3094143))

(declare-fun m!3094145 () Bool)

(assert (=> b!2704626 m!3094145))

(declare-fun m!3094147 () Bool)

(assert (=> b!2704626 m!3094147))

(assert (=> b!2704625 m!3094139))

(assert (=> b!2704625 m!3094133))

(declare-fun m!3094149 () Bool)

(assert (=> d!777046 m!3094149))

(declare-fun m!3094151 () Bool)

(assert (=> d!777046 m!3094151))

(assert (=> b!2704537 d!777046))

(declare-fun d!777048 () Bool)

(declare-fun e!1705241 () Bool)

(assert (=> d!777048 e!1705241))

(declare-fun res!1135778 () Bool)

(assert (=> d!777048 (=> (not res!1135778) (not e!1705241))))

(declare-fun isBalanced!2951 (Conc!9748) Bool)

(declare-fun prepend!1093 (Conc!9748 Token!8984) Conc!9748)

(assert (=> d!777048 (= res!1135778 (isBalanced!2951 (prepend!1093 (c!436396 (_1!18043 lt!956237)) (_1!18048 (v!32961 lt!956248)))))))

(declare-fun lt!956389 () BalanceConc!19110)

(assert (=> d!777048 (= lt!956389 (BalanceConc!19111 (prepend!1093 (c!436396 (_1!18043 lt!956237)) (_1!18048 (v!32961 lt!956248)))))))

(assert (=> d!777048 (= (prepend!1092 (_1!18043 lt!956237) (_1!18048 (v!32961 lt!956248))) lt!956389)))

(declare-fun b!2704633 () Bool)

(assert (=> b!2704633 (= e!1705241 (= (list!11769 lt!956389) (Cons!31191 (_1!18048 (v!32961 lt!956248)) (list!11769 (_1!18043 lt!956237)))))))

(assert (= (and d!777048 res!1135778) b!2704633))

(declare-fun m!3094153 () Bool)

(assert (=> d!777048 m!3094153))

(assert (=> d!777048 m!3094153))

(declare-fun m!3094155 () Bool)

(assert (=> d!777048 m!3094155))

(declare-fun m!3094157 () Bool)

(assert (=> b!2704633 m!3094157))

(declare-fun m!3094159 () Bool)

(assert (=> b!2704633 m!3094159))

(assert (=> b!2704537 d!777048))

(declare-fun d!777050 () Bool)

(declare-fun list!11770 (Conc!9747) List!31290)

(assert (=> d!777050 (= (list!11768 (_2!18043 lt!956247)) (list!11770 (c!436395 (_2!18043 lt!956247))))))

(declare-fun bs!487251 () Bool)

(assert (= bs!487251 d!777050))

(declare-fun m!3094161 () Bool)

(assert (=> bs!487251 m!3094161))

(assert (=> b!2704536 d!777050))

(declare-fun d!777052 () Bool)

(assert (=> d!777052 (= (list!11768 (_2!18043 lt!956234)) (list!11770 (c!436395 (_2!18043 lt!956234))))))

(declare-fun bs!487252 () Bool)

(assert (= bs!487252 d!777052))

(declare-fun m!3094163 () Bool)

(assert (=> bs!487252 m!3094163))

(assert (=> b!2704536 d!777052))

(declare-fun d!777054 () Bool)

(assert (=> d!777054 (= (list!11768 totalInput!354) (list!11770 (c!436395 totalInput!354)))))

(declare-fun bs!487253 () Bool)

(assert (= bs!487253 d!777054))

(declare-fun m!3094165 () Bool)

(assert (=> bs!487253 m!3094165))

(assert (=> b!2704519 d!777054))

(declare-fun lt!956392 () List!31290)

(declare-fun b!2704645 () Bool)

(declare-fun e!1705247 () Bool)

(assert (=> b!2704645 (= e!1705247 (or (not (= lt!956256 Nil!31190)) (= lt!956392 lt!956245)))))

(declare-fun d!777056 () Bool)

(assert (=> d!777056 e!1705247))

(declare-fun res!1135783 () Bool)

(assert (=> d!777056 (=> (not res!1135783) (not e!1705247))))

(declare-fun content!4416 (List!31290) (InoxSet C!15980))

(assert (=> d!777056 (= res!1135783 (= (content!4416 lt!956392) ((_ map or) (content!4416 lt!956245) (content!4416 lt!956256))))))

(declare-fun e!1705246 () List!31290)

(assert (=> d!777056 (= lt!956392 e!1705246)))

(declare-fun c!436421 () Bool)

(assert (=> d!777056 (= c!436421 ((_ is Nil!31190) lt!956245))))

(assert (=> d!777056 (= (++!7668 lt!956245 lt!956256) lt!956392)))

(declare-fun b!2704644 () Bool)

(declare-fun res!1135784 () Bool)

(assert (=> b!2704644 (=> (not res!1135784) (not e!1705247))))

(declare-fun size!24094 (List!31290) Int)

(assert (=> b!2704644 (= res!1135784 (= (size!24094 lt!956392) (+ (size!24094 lt!956245) (size!24094 lt!956256))))))

(declare-fun b!2704642 () Bool)

(assert (=> b!2704642 (= e!1705246 lt!956256)))

(declare-fun b!2704643 () Bool)

(assert (=> b!2704643 (= e!1705246 (Cons!31190 (h!36610 lt!956245) (++!7668 (t!225724 lt!956245) lt!956256)))))

(assert (= (and d!777056 c!436421) b!2704642))

(assert (= (and d!777056 (not c!436421)) b!2704643))

(assert (= (and d!777056 res!1135783) b!2704644))

(assert (= (and b!2704644 res!1135784) b!2704645))

(declare-fun m!3094167 () Bool)

(assert (=> d!777056 m!3094167))

(declare-fun m!3094169 () Bool)

(assert (=> d!777056 m!3094169))

(declare-fun m!3094171 () Bool)

(assert (=> d!777056 m!3094171))

(declare-fun m!3094173 () Bool)

(assert (=> b!2704644 m!3094173))

(declare-fun m!3094175 () Bool)

(assert (=> b!2704644 m!3094175))

(declare-fun m!3094177 () Bool)

(assert (=> b!2704644 m!3094177))

(declare-fun m!3094179 () Bool)

(assert (=> b!2704643 m!3094179))

(assert (=> b!2704519 d!777056))

(declare-fun d!777058 () Bool)

(assert (=> d!777058 (= (list!11768 input!780) (list!11770 (c!436395 input!780)))))

(declare-fun bs!487254 () Bool)

(assert (= bs!487254 d!777058))

(declare-fun m!3094181 () Bool)

(assert (=> bs!487254 m!3094181))

(assert (=> b!2704519 d!777058))

(declare-fun d!777060 () Bool)

(assert (=> d!777060 (= (list!11768 treated!26) (list!11770 (c!436395 treated!26)))))

(declare-fun bs!487255 () Bool)

(assert (= bs!487255 d!777060))

(declare-fun m!3094183 () Bool)

(assert (=> bs!487255 m!3094183))

(assert (=> b!2704519 d!777060))

(declare-fun d!777062 () Bool)

(assert (=> d!777062 (= (isEmpty!17765 (list!11768 (_2!18043 lt!956254))) ((_ is Nil!31190) (list!11768 (_2!18043 lt!956254))))))

(assert (=> b!2704514 d!777062))

(declare-fun d!777064 () Bool)

(assert (=> d!777064 (= (list!11768 (_2!18043 lt!956254)) (list!11770 (c!436395 (_2!18043 lt!956254))))))

(declare-fun bs!487256 () Bool)

(assert (= bs!487256 d!777064))

(declare-fun m!3094185 () Bool)

(assert (=> bs!487256 m!3094185))

(assert (=> b!2704514 d!777064))

(declare-fun b!2704656 () Bool)

(declare-fun e!1705255 () Bool)

(declare-fun e!1705254 () Bool)

(assert (=> b!2704656 (= e!1705255 e!1705254)))

(declare-fun res!1135787 () Bool)

(declare-fun lt!956400 () tuple2!30836)

(assert (=> b!2704656 (= res!1135787 (< (size!24094 (_2!18049 lt!956400)) (size!24094 lt!956239)))))

(assert (=> b!2704656 (=> (not res!1135787) (not e!1705254))))

(declare-fun d!777066 () Bool)

(assert (=> d!777066 e!1705255))

(declare-fun c!436427 () Bool)

(declare-fun size!24095 (List!31291) Int)

(assert (=> d!777066 (= c!436427 (> (size!24095 (_1!18049 lt!956400)) 0))))

(declare-fun e!1705256 () tuple2!30836)

(assert (=> d!777066 (= lt!956400 e!1705256)))

(declare-fun c!436426 () Bool)

(declare-fun lt!956399 () Option!6155)

(assert (=> d!777066 (= c!436426 ((_ is Some!6154) lt!956399))))

(assert (=> d!777066 (= lt!956399 (maxPrefix!2356 thiss!12257 rules!1381 lt!956239))))

(assert (=> d!777066 (= (lexList!1202 thiss!12257 rules!1381 lt!956239) lt!956400)))

(declare-fun b!2704657 () Bool)

(declare-fun isEmpty!17768 (List!31291) Bool)

(assert (=> b!2704657 (= e!1705254 (not (isEmpty!17768 (_1!18049 lt!956400))))))

(declare-fun b!2704658 () Bool)

(assert (=> b!2704658 (= e!1705255 (= (_2!18049 lt!956400) lt!956239))))

(declare-fun b!2704659 () Bool)

(assert (=> b!2704659 (= e!1705256 (tuple2!30837 Nil!31191 lt!956239))))

(declare-fun b!2704660 () Bool)

(declare-fun lt!956401 () tuple2!30836)

(assert (=> b!2704660 (= e!1705256 (tuple2!30837 (Cons!31191 (_1!18051 (v!32964 lt!956399)) (_1!18049 lt!956401)) (_2!18049 lt!956401)))))

(assert (=> b!2704660 (= lt!956401 (lexList!1202 thiss!12257 rules!1381 (_2!18051 (v!32964 lt!956399))))))

(assert (= (and d!777066 c!436426) b!2704660))

(assert (= (and d!777066 (not c!436426)) b!2704659))

(assert (= (and d!777066 c!436427) b!2704656))

(assert (= (and d!777066 (not c!436427)) b!2704658))

(assert (= (and b!2704656 res!1135787) b!2704657))

(declare-fun m!3094187 () Bool)

(assert (=> b!2704656 m!3094187))

(declare-fun m!3094189 () Bool)

(assert (=> b!2704656 m!3094189))

(declare-fun m!3094191 () Bool)

(assert (=> d!777066 m!3094191))

(declare-fun m!3094193 () Bool)

(assert (=> d!777066 m!3094193))

(declare-fun m!3094195 () Bool)

(assert (=> b!2704657 m!3094195))

(declare-fun m!3094197 () Bool)

(assert (=> b!2704660 m!3094197))

(assert (=> b!2704532 d!777066))

(declare-fun d!777068 () Bool)

(assert (=> d!777068 (= (lexList!1202 thiss!12257 rules!1381 lt!956239) (tuple2!30837 lt!956240 Nil!31190))))

(declare-fun lt!956404 () Unit!45275)

(declare-fun choose!15936 (LexerInterface!4355 List!31292 List!31290 List!31290 List!31291 List!31291 List!31290) Unit!45275)

(assert (=> d!777068 (= lt!956404 (choose!15936 thiss!12257 rules!1381 lt!956239 lt!956243 lt!956240 lt!956235 (list!11768 (_2!18043 lt!956244))))))

(assert (=> d!777068 (not (isEmpty!17766 rules!1381))))

(assert (=> d!777068 (= (lemmaLexThenLexPrefix!414 thiss!12257 rules!1381 lt!956239 lt!956243 lt!956240 lt!956235 (list!11768 (_2!18043 lt!956244))) lt!956404)))

(declare-fun bs!487257 () Bool)

(assert (= bs!487257 d!777068))

(assert (=> bs!487257 m!3093993))

(assert (=> bs!487257 m!3093979))

(declare-fun m!3094199 () Bool)

(assert (=> bs!487257 m!3094199))

(assert (=> bs!487257 m!3094023))

(assert (=> b!2704532 d!777068))

(declare-fun d!777070 () Bool)

(declare-fun list!11771 (Conc!9748) List!31291)

(assert (=> d!777070 (= (list!11769 (_1!18043 lt!956244)) (list!11771 (c!436396 (_1!18043 lt!956244))))))

(declare-fun bs!487258 () Bool)

(assert (= bs!487258 d!777070))

(declare-fun m!3094201 () Bool)

(assert (=> bs!487258 m!3094201))

(assert (=> b!2704532 d!777070))

(declare-fun b!2704661 () Bool)

(declare-fun lt!956428 () tuple2!30826)

(declare-fun lt!956410 () Option!6154)

(assert (=> b!2704661 (= lt!956428 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956410))))))

(declare-fun e!1705259 () tuple2!30826)

(assert (=> b!2704661 (= e!1705259 (tuple2!30827 (prepend!1092 (_1!18043 lt!956428) (_1!18048 (v!32961 lt!956410))) (_2!18043 lt!956428)))))

(declare-fun lt!956419 () Option!6154)

(declare-fun e!1705257 () tuple2!30826)

(declare-fun b!2704662 () Bool)

(assert (=> b!2704662 (= e!1705257 (lexTailRec!38 thiss!12257 rules!1381 totalInput!354 (++!7671 lt!956233 (charsOf!2998 (_1!18048 (v!32961 lt!956419)))) (_2!18048 (v!32961 lt!956419)) (append!785 lt!956236 (_1!18048 (v!32961 lt!956419)))))))

(declare-fun lt!956418 () tuple2!30826)

(assert (=> b!2704662 (= lt!956418 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956419))))))

(declare-fun lt!956423 () List!31290)

(assert (=> b!2704662 (= lt!956423 (list!11768 lt!956233))))

(declare-fun lt!956411 () List!31290)

(assert (=> b!2704662 (= lt!956411 (list!11768 (charsOf!2998 (_1!18048 (v!32961 lt!956419)))))))

(declare-fun lt!956421 () List!31290)

(assert (=> b!2704662 (= lt!956421 (list!11768 (_2!18048 (v!32961 lt!956419))))))

(declare-fun lt!956407 () Unit!45275)

(assert (=> b!2704662 (= lt!956407 (lemmaConcatAssociativity!1569 lt!956423 lt!956411 lt!956421))))

(assert (=> b!2704662 (= (++!7668 (++!7668 lt!956423 lt!956411) lt!956421) (++!7668 lt!956423 (++!7668 lt!956411 lt!956421)))))

(declare-fun lt!956424 () Unit!45275)

(assert (=> b!2704662 (= lt!956424 lt!956407)))

(assert (=> b!2704662 (= lt!956410 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956241))))))

(declare-fun c!436428 () Bool)

(assert (=> b!2704662 (= c!436428 ((_ is Some!6153) lt!956410))))

(assert (=> b!2704662 (= (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956241))) e!1705259)))

(declare-fun lt!956429 () Unit!45275)

(declare-fun Unit!45279 () Unit!45275)

(assert (=> b!2704662 (= lt!956429 Unit!45279)))

(declare-fun lt!956417 () List!31291)

(assert (=> b!2704662 (= lt!956417 (list!11769 lt!956236))))

(declare-fun lt!956427 () List!31291)

(assert (=> b!2704662 (= lt!956427 (Cons!31191 (_1!18048 (v!32961 lt!956419)) Nil!31191))))

(declare-fun lt!956425 () List!31291)

(assert (=> b!2704662 (= lt!956425 (list!11769 (_1!18043 lt!956418)))))

(declare-fun lt!956414 () Unit!45275)

(assert (=> b!2704662 (= lt!956414 (lemmaConcatAssociativity!1570 lt!956417 lt!956427 lt!956425))))

(assert (=> b!2704662 (= (++!7670 (++!7670 lt!956417 lt!956427) lt!956425) (++!7670 lt!956417 (++!7670 lt!956427 lt!956425)))))

(declare-fun lt!956412 () Unit!45275)

(assert (=> b!2704662 (= lt!956412 lt!956414)))

(declare-fun lt!956415 () List!31290)

(assert (=> b!2704662 (= lt!956415 (++!7668 (list!11768 lt!956233) (list!11768 (charsOf!2998 (_1!18048 (v!32961 lt!956419))))))))

(declare-fun lt!956409 () List!31290)

(assert (=> b!2704662 (= lt!956409 (list!11768 (_2!18048 (v!32961 lt!956419))))))

(declare-fun lt!956416 () List!31291)

(assert (=> b!2704662 (= lt!956416 (list!11769 (append!785 lt!956236 (_1!18048 (v!32961 lt!956419)))))))

(declare-fun lt!956422 () Unit!45275)

(assert (=> b!2704662 (= lt!956422 (lemmaLexThenLexPrefix!414 thiss!12257 rules!1381 lt!956415 lt!956409 lt!956416 (list!11769 (_1!18043 lt!956418)) (list!11768 (_2!18043 lt!956418))))))

(assert (=> b!2704662 (= (lexList!1202 thiss!12257 rules!1381 lt!956415) (tuple2!30837 lt!956416 Nil!31190))))

(declare-fun lt!956420 () Unit!45275)

(assert (=> b!2704662 (= lt!956420 lt!956422)))

(declare-fun lt!956406 () BalanceConc!19108)

(assert (=> b!2704662 (= lt!956406 (++!7671 lt!956233 (charsOf!2998 (_1!18048 (v!32961 lt!956419)))))))

(declare-fun lt!956408 () Option!6154)

(assert (=> b!2704662 (= lt!956408 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 lt!956406))))

(declare-fun c!436429 () Bool)

(assert (=> b!2704662 (= c!436429 ((_ is Some!6153) lt!956408))))

(declare-fun e!1705258 () tuple2!30826)

(assert (=> b!2704662 (= (lexRec!617 thiss!12257 rules!1381 (++!7671 lt!956233 (charsOf!2998 (_1!18048 (v!32961 lt!956419))))) e!1705258)))

(declare-fun lt!956413 () Unit!45275)

(declare-fun Unit!45280 () Unit!45275)

(assert (=> b!2704662 (= lt!956413 Unit!45280)))

(declare-fun d!777072 () Bool)

(declare-fun e!1705260 () Bool)

(assert (=> d!777072 e!1705260))

(declare-fun res!1135788 () Bool)

(assert (=> d!777072 (=> (not res!1135788) (not e!1705260))))

(declare-fun lt!956405 () tuple2!30826)

(assert (=> d!777072 (= res!1135788 (= (list!11769 (_1!18043 lt!956405)) (list!11769 (_1!18043 (lexRec!617 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!777072 (= lt!956405 e!1705257)))

(declare-fun c!436430 () Bool)

(assert (=> d!777072 (= c!436430 ((_ is Some!6153) lt!956419))))

(assert (=> d!777072 (= lt!956419 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956241))))))

(assert (=> d!777072 (= (lexTailRec!38 thiss!12257 rules!1381 totalInput!354 lt!956233 (_2!18048 (v!32961 lt!956241)) lt!956236) lt!956405)))

(declare-fun b!2704663 () Bool)

(assert (=> b!2704663 (= e!1705260 (= (list!11768 (_2!18043 lt!956405)) (list!11768 (_2!18043 (lexRec!617 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2704664 () Bool)

(assert (=> b!2704664 (= e!1705259 (tuple2!30827 (BalanceConc!19111 Empty!9748) (_2!18048 (v!32961 lt!956241))))))

(declare-fun b!2704665 () Bool)

(assert (=> b!2704665 (= e!1705258 (tuple2!30827 (BalanceConc!19111 Empty!9748) lt!956406))))

(declare-fun b!2704666 () Bool)

(assert (=> b!2704666 (= e!1705257 (tuple2!30827 lt!956236 (_2!18048 (v!32961 lt!956241))))))

(declare-fun lt!956426 () tuple2!30826)

(declare-fun b!2704667 () Bool)

(assert (=> b!2704667 (= lt!956426 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956408))))))

(assert (=> b!2704667 (= e!1705258 (tuple2!30827 (prepend!1092 (_1!18043 lt!956426) (_1!18048 (v!32961 lt!956408))) (_2!18043 lt!956426)))))

(assert (= (and d!777072 c!436430) b!2704662))

(assert (= (and d!777072 (not c!436430)) b!2704666))

(assert (= (and b!2704662 c!436428) b!2704661))

(assert (= (and b!2704662 (not c!436428)) b!2704664))

(assert (= (and b!2704662 c!436429) b!2704667))

(assert (= (and b!2704662 (not c!436429)) b!2704665))

(assert (= (and d!777072 res!1135788) b!2704663))

(declare-fun m!3094203 () Bool)

(assert (=> d!777072 m!3094203))

(assert (=> d!777072 m!3093947))

(assert (=> d!777072 m!3094043))

(declare-fun m!3094205 () Bool)

(assert (=> d!777072 m!3094205))

(declare-fun m!3094207 () Bool)

(assert (=> b!2704661 m!3094207))

(declare-fun m!3094209 () Bool)

(assert (=> b!2704661 m!3094209))

(declare-fun m!3094211 () Bool)

(assert (=> b!2704667 m!3094211))

(declare-fun m!3094213 () Bool)

(assert (=> b!2704667 m!3094213))

(declare-fun m!3094215 () Bool)

(assert (=> b!2704662 m!3094215))

(declare-fun m!3094217 () Bool)

(assert (=> b!2704662 m!3094217))

(declare-fun m!3094219 () Bool)

(assert (=> b!2704662 m!3094219))

(declare-fun m!3094221 () Bool)

(assert (=> b!2704662 m!3094221))

(declare-fun m!3094223 () Bool)

(assert (=> b!2704662 m!3094223))

(declare-fun m!3094225 () Bool)

(assert (=> b!2704662 m!3094225))

(declare-fun m!3094227 () Bool)

(assert (=> b!2704662 m!3094227))

(declare-fun m!3094229 () Bool)

(assert (=> b!2704662 m!3094229))

(declare-fun m!3094231 () Bool)

(assert (=> b!2704662 m!3094231))

(declare-fun m!3094233 () Bool)

(assert (=> b!2704662 m!3094233))

(assert (=> b!2704662 m!3094205))

(declare-fun m!3094235 () Bool)

(assert (=> b!2704662 m!3094235))

(declare-fun m!3094237 () Bool)

(assert (=> b!2704662 m!3094237))

(declare-fun m!3094239 () Bool)

(assert (=> b!2704662 m!3094239))

(declare-fun m!3094241 () Bool)

(assert (=> b!2704662 m!3094241))

(assert (=> b!2704662 m!3093991))

(declare-fun m!3094243 () Bool)

(assert (=> b!2704662 m!3094243))

(declare-fun m!3094245 () Bool)

(assert (=> b!2704662 m!3094245))

(assert (=> b!2704662 m!3093971))

(assert (=> b!2704662 m!3094215))

(assert (=> b!2704662 m!3094237))

(assert (=> b!2704662 m!3094219))

(declare-fun m!3094247 () Bool)

(assert (=> b!2704662 m!3094247))

(assert (=> b!2704662 m!3094221))

(declare-fun m!3094249 () Bool)

(assert (=> b!2704662 m!3094249))

(assert (=> b!2704662 m!3094243))

(assert (=> b!2704662 m!3094237))

(assert (=> b!2704662 m!3094223))

(declare-fun m!3094251 () Bool)

(assert (=> b!2704662 m!3094251))

(declare-fun m!3094253 () Bool)

(assert (=> b!2704662 m!3094253))

(assert (=> b!2704662 m!3094241))

(declare-fun m!3094255 () Bool)

(assert (=> b!2704662 m!3094255))

(assert (=> b!2704662 m!3094225))

(declare-fun m!3094257 () Bool)

(assert (=> b!2704662 m!3094257))

(assert (=> b!2704662 m!3094243))

(assert (=> b!2704662 m!3094227))

(declare-fun m!3094259 () Bool)

(assert (=> b!2704662 m!3094259))

(declare-fun m!3094261 () Bool)

(assert (=> b!2704662 m!3094261))

(assert (=> b!2704662 m!3094219))

(declare-fun m!3094263 () Bool)

(assert (=> b!2704662 m!3094263))

(assert (=> b!2704662 m!3094261))

(assert (=> b!2704662 m!3094233))

(declare-fun m!3094265 () Bool)

(assert (=> b!2704662 m!3094265))

(declare-fun m!3094267 () Bool)

(assert (=> b!2704663 m!3094267))

(assert (=> b!2704663 m!3093947))

(assert (=> b!2704663 m!3094105))

(assert (=> b!2704532 d!777072))

(declare-fun d!777074 () Bool)

(declare-fun e!1705263 () Bool)

(assert (=> d!777074 e!1705263))

(declare-fun res!1135791 () Bool)

(assert (=> d!777074 (=> (not res!1135791) (not e!1705263))))

(declare-fun append!786 (Conc!9748 Token!8984) Conc!9748)

(assert (=> d!777074 (= res!1135791 (isBalanced!2951 (append!786 (c!436396 acc!348) (_1!18048 (v!32961 lt!956241)))))))

(declare-fun lt!956432 () BalanceConc!19110)

(assert (=> d!777074 (= lt!956432 (BalanceConc!19111 (append!786 (c!436396 acc!348) (_1!18048 (v!32961 lt!956241)))))))

(assert (=> d!777074 (= (append!785 acc!348 (_1!18048 (v!32961 lt!956241))) lt!956432)))

(declare-fun b!2704670 () Bool)

(declare-fun $colon+!172 (List!31291 Token!8984) List!31291)

(assert (=> b!2704670 (= e!1705263 (= (list!11769 lt!956432) ($colon+!172 (list!11769 acc!348) (_1!18048 (v!32961 lt!956241)))))))

(assert (= (and d!777074 res!1135791) b!2704670))

(declare-fun m!3094269 () Bool)

(assert (=> d!777074 m!3094269))

(assert (=> d!777074 m!3094269))

(declare-fun m!3094271 () Bool)

(assert (=> d!777074 m!3094271))

(declare-fun m!3094273 () Bool)

(assert (=> b!2704670 m!3094273))

(assert (=> b!2704670 m!3094017))

(assert (=> b!2704670 m!3094017))

(declare-fun m!3094275 () Bool)

(assert (=> b!2704670 m!3094275))

(assert (=> b!2704532 d!777074))

(declare-fun b!2704680 () Bool)

(declare-fun e!1705268 () List!31291)

(assert (=> b!2704680 (= e!1705268 (Cons!31191 (h!36611 lt!956232) (++!7670 (t!225725 lt!956232) lt!956235)))))

(declare-fun b!2704679 () Bool)

(assert (=> b!2704679 (= e!1705268 lt!956235)))

(declare-fun e!1705269 () Bool)

(declare-fun lt!956435 () List!31291)

(declare-fun b!2704682 () Bool)

(assert (=> b!2704682 (= e!1705269 (or (not (= lt!956235 Nil!31191)) (= lt!956435 lt!956232)))))

(declare-fun b!2704681 () Bool)

(declare-fun res!1135796 () Bool)

(assert (=> b!2704681 (=> (not res!1135796) (not e!1705269))))

(assert (=> b!2704681 (= res!1135796 (= (size!24095 lt!956435) (+ (size!24095 lt!956232) (size!24095 lt!956235))))))

(declare-fun d!777076 () Bool)

(assert (=> d!777076 e!1705269))

(declare-fun res!1135797 () Bool)

(assert (=> d!777076 (=> (not res!1135797) (not e!1705269))))

(declare-fun content!4417 (List!31291) (InoxSet Token!8984))

(assert (=> d!777076 (= res!1135797 (= (content!4417 lt!956435) ((_ map or) (content!4417 lt!956232) (content!4417 lt!956235))))))

(assert (=> d!777076 (= lt!956435 e!1705268)))

(declare-fun c!436434 () Bool)

(assert (=> d!777076 (= c!436434 ((_ is Nil!31191) lt!956232))))

(assert (=> d!777076 (= (++!7670 lt!956232 lt!956235) lt!956435)))

(assert (= (and d!777076 c!436434) b!2704679))

(assert (= (and d!777076 (not c!436434)) b!2704680))

(assert (= (and d!777076 res!1135797) b!2704681))

(assert (= (and b!2704681 res!1135796) b!2704682))

(declare-fun m!3094277 () Bool)

(assert (=> b!2704680 m!3094277))

(declare-fun m!3094279 () Bool)

(assert (=> b!2704681 m!3094279))

(declare-fun m!3094281 () Bool)

(assert (=> b!2704681 m!3094281))

(declare-fun m!3094283 () Bool)

(assert (=> b!2704681 m!3094283))

(declare-fun m!3094285 () Bool)

(assert (=> d!777076 m!3094285))

(declare-fun m!3094287 () Bool)

(assert (=> d!777076 m!3094287))

(declare-fun m!3094289 () Bool)

(assert (=> d!777076 m!3094289))

(assert (=> b!2704532 d!777076))

(declare-fun e!1705270 () List!31291)

(declare-fun b!2704684 () Bool)

(assert (=> b!2704684 (= e!1705270 (Cons!31191 (h!36611 (++!7670 lt!956255 lt!956232)) (++!7670 (t!225725 (++!7670 lt!956255 lt!956232)) lt!956235)))))

(declare-fun b!2704683 () Bool)

(assert (=> b!2704683 (= e!1705270 lt!956235)))

(declare-fun lt!956436 () List!31291)

(declare-fun e!1705271 () Bool)

(declare-fun b!2704686 () Bool)

(assert (=> b!2704686 (= e!1705271 (or (not (= lt!956235 Nil!31191)) (= lt!956436 (++!7670 lt!956255 lt!956232))))))

(declare-fun b!2704685 () Bool)

(declare-fun res!1135798 () Bool)

(assert (=> b!2704685 (=> (not res!1135798) (not e!1705271))))

(assert (=> b!2704685 (= res!1135798 (= (size!24095 lt!956436) (+ (size!24095 (++!7670 lt!956255 lt!956232)) (size!24095 lt!956235))))))

(declare-fun d!777078 () Bool)

(assert (=> d!777078 e!1705271))

(declare-fun res!1135799 () Bool)

(assert (=> d!777078 (=> (not res!1135799) (not e!1705271))))

(assert (=> d!777078 (= res!1135799 (= (content!4417 lt!956436) ((_ map or) (content!4417 (++!7670 lt!956255 lt!956232)) (content!4417 lt!956235))))))

(assert (=> d!777078 (= lt!956436 e!1705270)))

(declare-fun c!436435 () Bool)

(assert (=> d!777078 (= c!436435 ((_ is Nil!31191) (++!7670 lt!956255 lt!956232)))))

(assert (=> d!777078 (= (++!7670 (++!7670 lt!956255 lt!956232) lt!956235) lt!956436)))

(assert (= (and d!777078 c!436435) b!2704683))

(assert (= (and d!777078 (not c!436435)) b!2704684))

(assert (= (and d!777078 res!1135799) b!2704685))

(assert (= (and b!2704685 res!1135798) b!2704686))

(declare-fun m!3094291 () Bool)

(assert (=> b!2704684 m!3094291))

(declare-fun m!3094293 () Bool)

(assert (=> b!2704685 m!3094293))

(assert (=> b!2704685 m!3093961))

(declare-fun m!3094295 () Bool)

(assert (=> b!2704685 m!3094295))

(assert (=> b!2704685 m!3094283))

(declare-fun m!3094297 () Bool)

(assert (=> d!777078 m!3094297))

(assert (=> d!777078 m!3093961))

(declare-fun m!3094299 () Bool)

(assert (=> d!777078 m!3094299))

(assert (=> d!777078 m!3094289))

(assert (=> b!2704532 d!777078))

(declare-fun b!2704687 () Bool)

(declare-fun e!1705274 () Bool)

(declare-fun e!1705277 () Bool)

(assert (=> b!2704687 (= e!1705274 e!1705277)))

(declare-fun res!1135801 () Bool)

(assert (=> b!2704687 (=> (not res!1135801) (not e!1705277))))

(declare-fun lt!956442 () Option!6154)

(assert (=> b!2704687 (= res!1135801 (= (_1!18048 (get!9740 lt!956442)) (_1!18051 (get!9741 (maxPrefix!2356 thiss!12257 rules!1381 (list!11768 lt!956233))))))))

(declare-fun e!1705273 () Bool)

(declare-fun b!2704688 () Bool)

(assert (=> b!2704688 (= e!1705273 (= (list!11768 (_2!18048 (get!9740 lt!956442))) (_2!18051 (get!9741 (maxPrefixZipper!460 thiss!12257 rules!1381 (list!11768 lt!956233))))))))

(declare-fun d!777080 () Bool)

(declare-fun e!1705276 () Bool)

(assert (=> d!777080 e!1705276))

(declare-fun res!1135802 () Bool)

(assert (=> d!777080 (=> (not res!1135802) (not e!1705276))))

(assert (=> d!777080 (= res!1135802 (= (isDefined!4873 lt!956442) (isDefined!4874 (maxPrefixZipper!460 thiss!12257 rules!1381 (list!11768 lt!956233)))))))

(declare-fun e!1705275 () Option!6154)

(assert (=> d!777080 (= lt!956442 e!1705275)))

(declare-fun c!436436 () Bool)

(assert (=> d!777080 (= c!436436 (and ((_ is Cons!31192) rules!1381) ((_ is Nil!31192) (t!225726 rules!1381))))))

(declare-fun lt!956437 () Unit!45275)

(declare-fun lt!956441 () Unit!45275)

(assert (=> d!777080 (= lt!956437 lt!956441)))

(declare-fun lt!956443 () List!31290)

(declare-fun lt!956440 () List!31290)

(assert (=> d!777080 (isPrefix!2473 lt!956443 lt!956440)))

(assert (=> d!777080 (= lt!956441 (lemmaIsPrefixRefl!1599 lt!956443 lt!956440))))

(assert (=> d!777080 (= lt!956440 (list!11768 lt!956233))))

(assert (=> d!777080 (= lt!956443 (list!11768 lt!956233))))

(assert (=> d!777080 (rulesValidInductive!1655 thiss!12257 rules!1381)))

(assert (=> d!777080 (= (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 lt!956233) lt!956442)))

(declare-fun call!174243 () Option!6154)

(declare-fun bm!174238 () Bool)

(assert (=> bm!174238 (= call!174243 (maxPrefixOneRuleZipperSequence!469 thiss!12257 (h!36612 rules!1381) lt!956233))))

(declare-fun b!2704689 () Bool)

(assert (=> b!2704689 (= e!1705276 e!1705274)))

(declare-fun res!1135805 () Bool)

(assert (=> b!2704689 (=> res!1135805 e!1705274)))

(assert (=> b!2704689 (= res!1135805 (not (isDefined!4873 lt!956442)))))

(declare-fun b!2704690 () Bool)

(declare-fun e!1705272 () Bool)

(assert (=> b!2704690 (= e!1705272 e!1705273)))

(declare-fun res!1135800 () Bool)

(assert (=> b!2704690 (=> (not res!1135800) (not e!1705273))))

(assert (=> b!2704690 (= res!1135800 (= (_1!18048 (get!9740 lt!956442)) (_1!18051 (get!9741 (maxPrefixZipper!460 thiss!12257 rules!1381 (list!11768 lt!956233))))))))

(declare-fun b!2704691 () Bool)

(assert (=> b!2704691 (= e!1705277 (= (list!11768 (_2!18048 (get!9740 lt!956442))) (_2!18051 (get!9741 (maxPrefix!2356 thiss!12257 rules!1381 (list!11768 lt!956233))))))))

(declare-fun b!2704692 () Bool)

(assert (=> b!2704692 (= e!1705275 call!174243)))

(declare-fun b!2704693 () Bool)

(declare-fun lt!956438 () Option!6154)

(declare-fun lt!956439 () Option!6154)

(assert (=> b!2704693 (= e!1705275 (ite (and ((_ is None!6153) lt!956438) ((_ is None!6153) lt!956439)) None!6153 (ite ((_ is None!6153) lt!956439) lt!956438 (ite ((_ is None!6153) lt!956438) lt!956439 (ite (>= (size!24088 (_1!18048 (v!32961 lt!956438))) (size!24088 (_1!18048 (v!32961 lt!956439)))) lt!956438 lt!956439)))))))

(assert (=> b!2704693 (= lt!956438 call!174243)))

(assert (=> b!2704693 (= lt!956439 (maxPrefixZipperSequence!1015 thiss!12257 (t!225726 rules!1381) lt!956233))))

(declare-fun b!2704694 () Bool)

(declare-fun res!1135803 () Bool)

(assert (=> b!2704694 (=> (not res!1135803) (not e!1705276))))

(assert (=> b!2704694 (= res!1135803 e!1705272)))

(declare-fun res!1135804 () Bool)

(assert (=> b!2704694 (=> res!1135804 e!1705272)))

(assert (=> b!2704694 (= res!1135804 (not (isDefined!4873 lt!956442)))))

(assert (= (and d!777080 c!436436) b!2704692))

(assert (= (and d!777080 (not c!436436)) b!2704693))

(assert (= (or b!2704692 b!2704693) bm!174238))

(assert (= (and d!777080 res!1135802) b!2704694))

(assert (= (and b!2704694 (not res!1135804)) b!2704690))

(assert (= (and b!2704690 res!1135800) b!2704688))

(assert (= (and b!2704694 res!1135803) b!2704689))

(assert (= (and b!2704689 (not res!1135805)) b!2704687))

(assert (= (and b!2704687 res!1135801) b!2704691))

(declare-fun m!3094301 () Bool)

(assert (=> b!2704687 m!3094301))

(assert (=> b!2704687 m!3094225))

(assert (=> b!2704687 m!3094225))

(declare-fun m!3094303 () Bool)

(assert (=> b!2704687 m!3094303))

(assert (=> b!2704687 m!3094303))

(declare-fun m!3094305 () Bool)

(assert (=> b!2704687 m!3094305))

(declare-fun m!3094307 () Bool)

(assert (=> b!2704691 m!3094307))

(assert (=> b!2704691 m!3094225))

(assert (=> b!2704691 m!3094303))

(assert (=> b!2704691 m!3094225))

(assert (=> b!2704691 m!3094301))

(assert (=> b!2704691 m!3094303))

(assert (=> b!2704691 m!3094305))

(assert (=> b!2704690 m!3094301))

(assert (=> b!2704690 m!3094225))

(assert (=> b!2704690 m!3094225))

(declare-fun m!3094309 () Bool)

(assert (=> b!2704690 m!3094309))

(assert (=> b!2704690 m!3094309))

(declare-fun m!3094311 () Bool)

(assert (=> b!2704690 m!3094311))

(declare-fun m!3094313 () Bool)

(assert (=> b!2704689 m!3094313))

(assert (=> d!777080 m!3094033))

(declare-fun m!3094315 () Bool)

(assert (=> d!777080 m!3094315))

(assert (=> d!777080 m!3094313))

(assert (=> d!777080 m!3094309))

(declare-fun m!3094317 () Bool)

(assert (=> d!777080 m!3094317))

(assert (=> d!777080 m!3094225))

(assert (=> d!777080 m!3094309))

(assert (=> d!777080 m!3094225))

(declare-fun m!3094319 () Bool)

(assert (=> d!777080 m!3094319))

(declare-fun m!3094321 () Bool)

(assert (=> bm!174238 m!3094321))

(declare-fun m!3094323 () Bool)

(assert (=> b!2704693 m!3094323))

(assert (=> b!2704688 m!3094225))

(assert (=> b!2704688 m!3094309))

(assert (=> b!2704688 m!3094307))

(assert (=> b!2704688 m!3094309))

(assert (=> b!2704688 m!3094311))

(assert (=> b!2704688 m!3094225))

(assert (=> b!2704688 m!3094301))

(assert (=> b!2704694 m!3094313))

(assert (=> b!2704532 d!777080))

(declare-fun b!2704696 () Bool)

(declare-fun e!1705278 () List!31291)

(assert (=> b!2704696 (= e!1705278 (Cons!31191 (h!36611 lt!956255) (++!7670 (t!225725 lt!956255) (++!7670 lt!956232 lt!956235))))))

(declare-fun b!2704695 () Bool)

(assert (=> b!2704695 (= e!1705278 (++!7670 lt!956232 lt!956235))))

(declare-fun e!1705279 () Bool)

(declare-fun b!2704698 () Bool)

(declare-fun lt!956444 () List!31291)

(assert (=> b!2704698 (= e!1705279 (or (not (= (++!7670 lt!956232 lt!956235) Nil!31191)) (= lt!956444 lt!956255)))))

(declare-fun b!2704697 () Bool)

(declare-fun res!1135806 () Bool)

(assert (=> b!2704697 (=> (not res!1135806) (not e!1705279))))

(assert (=> b!2704697 (= res!1135806 (= (size!24095 lt!956444) (+ (size!24095 lt!956255) (size!24095 (++!7670 lt!956232 lt!956235)))))))

(declare-fun d!777082 () Bool)

(assert (=> d!777082 e!1705279))

(declare-fun res!1135807 () Bool)

(assert (=> d!777082 (=> (not res!1135807) (not e!1705279))))

(assert (=> d!777082 (= res!1135807 (= (content!4417 lt!956444) ((_ map or) (content!4417 lt!956255) (content!4417 (++!7670 lt!956232 lt!956235)))))))

(assert (=> d!777082 (= lt!956444 e!1705278)))

(declare-fun c!436437 () Bool)

(assert (=> d!777082 (= c!436437 ((_ is Nil!31191) lt!956255))))

(assert (=> d!777082 (= (++!7670 lt!956255 (++!7670 lt!956232 lt!956235)) lt!956444)))

(assert (= (and d!777082 c!436437) b!2704695))

(assert (= (and d!777082 (not c!436437)) b!2704696))

(assert (= (and d!777082 res!1135807) b!2704697))

(assert (= (and b!2704697 res!1135806) b!2704698))

(assert (=> b!2704696 m!3093989))

(declare-fun m!3094325 () Bool)

(assert (=> b!2704696 m!3094325))

(declare-fun m!3094327 () Bool)

(assert (=> b!2704697 m!3094327))

(declare-fun m!3094329 () Bool)

(assert (=> b!2704697 m!3094329))

(assert (=> b!2704697 m!3093989))

(declare-fun m!3094331 () Bool)

(assert (=> b!2704697 m!3094331))

(declare-fun m!3094333 () Bool)

(assert (=> d!777082 m!3094333))

(declare-fun m!3094335 () Bool)

(assert (=> d!777082 m!3094335))

(assert (=> d!777082 m!3093989))

(declare-fun m!3094337 () Bool)

(assert (=> d!777082 m!3094337))

(assert (=> b!2704532 d!777082))

(declare-fun d!777084 () Bool)

(assert (=> d!777084 (= (list!11768 (_2!18048 (v!32961 lt!956241))) (list!11770 (c!436395 (_2!18048 (v!32961 lt!956241)))))))

(declare-fun bs!487259 () Bool)

(assert (= bs!487259 d!777084))

(declare-fun m!3094339 () Bool)

(assert (=> bs!487259 m!3094339))

(assert (=> b!2704532 d!777084))

(declare-fun d!777086 () Bool)

(assert (=> d!777086 (= (list!11768 lt!956251) (list!11770 (c!436395 lt!956251)))))

(declare-fun bs!487260 () Bool)

(assert (= bs!487260 d!777086))

(declare-fun m!3094341 () Bool)

(assert (=> bs!487260 m!3094341))

(assert (=> b!2704532 d!777086))

(declare-fun d!777088 () Bool)

(assert (=> d!777088 (= (++!7668 (++!7668 lt!956245 lt!956253) lt!956243) (++!7668 lt!956245 (++!7668 lt!956253 lt!956243)))))

(declare-fun lt!956447 () Unit!45275)

(declare-fun choose!15937 (List!31290 List!31290 List!31290) Unit!45275)

(assert (=> d!777088 (= lt!956447 (choose!15937 lt!956245 lt!956253 lt!956243))))

(assert (=> d!777088 (= (lemmaConcatAssociativity!1569 lt!956245 lt!956253 lt!956243) lt!956447)))

(declare-fun bs!487261 () Bool)

(assert (= bs!487261 d!777088))

(assert (=> bs!487261 m!3093957))

(assert (=> bs!487261 m!3093969))

(assert (=> bs!487261 m!3093957))

(assert (=> bs!487261 m!3093975))

(assert (=> bs!487261 m!3093975))

(declare-fun m!3094343 () Bool)

(assert (=> bs!487261 m!3094343))

(declare-fun m!3094345 () Bool)

(assert (=> bs!487261 m!3094345))

(assert (=> b!2704532 d!777088))

(declare-fun lt!956448 () List!31290)

(declare-fun b!2704702 () Bool)

(declare-fun e!1705281 () Bool)

(assert (=> b!2704702 (= e!1705281 (or (not (= (++!7668 lt!956253 lt!956243) Nil!31190)) (= lt!956448 lt!956245)))))

(declare-fun d!777090 () Bool)

(assert (=> d!777090 e!1705281))

(declare-fun res!1135808 () Bool)

(assert (=> d!777090 (=> (not res!1135808) (not e!1705281))))

(assert (=> d!777090 (= res!1135808 (= (content!4416 lt!956448) ((_ map or) (content!4416 lt!956245) (content!4416 (++!7668 lt!956253 lt!956243)))))))

(declare-fun e!1705280 () List!31290)

(assert (=> d!777090 (= lt!956448 e!1705280)))

(declare-fun c!436438 () Bool)

(assert (=> d!777090 (= c!436438 ((_ is Nil!31190) lt!956245))))

(assert (=> d!777090 (= (++!7668 lt!956245 (++!7668 lt!956253 lt!956243)) lt!956448)))

(declare-fun b!2704701 () Bool)

(declare-fun res!1135809 () Bool)

(assert (=> b!2704701 (=> (not res!1135809) (not e!1705281))))

(assert (=> b!2704701 (= res!1135809 (= (size!24094 lt!956448) (+ (size!24094 lt!956245) (size!24094 (++!7668 lt!956253 lt!956243)))))))

(declare-fun b!2704699 () Bool)

(assert (=> b!2704699 (= e!1705280 (++!7668 lt!956253 lt!956243))))

(declare-fun b!2704700 () Bool)

(assert (=> b!2704700 (= e!1705280 (Cons!31190 (h!36610 lt!956245) (++!7668 (t!225724 lt!956245) (++!7668 lt!956253 lt!956243))))))

(assert (= (and d!777090 c!436438) b!2704699))

(assert (= (and d!777090 (not c!436438)) b!2704700))

(assert (= (and d!777090 res!1135808) b!2704701))

(assert (= (and b!2704701 res!1135809) b!2704702))

(declare-fun m!3094347 () Bool)

(assert (=> d!777090 m!3094347))

(assert (=> d!777090 m!3094169))

(assert (=> d!777090 m!3093957))

(declare-fun m!3094349 () Bool)

(assert (=> d!777090 m!3094349))

(declare-fun m!3094351 () Bool)

(assert (=> b!2704701 m!3094351))

(assert (=> b!2704701 m!3094175))

(assert (=> b!2704701 m!3093957))

(declare-fun m!3094353 () Bool)

(assert (=> b!2704701 m!3094353))

(assert (=> b!2704700 m!3093957))

(declare-fun m!3094355 () Bool)

(assert (=> b!2704700 m!3094355))

(assert (=> b!2704532 d!777090))

(declare-fun d!777092 () Bool)

(assert (=> d!777092 (= (list!11769 lt!956236) (list!11771 (c!436396 lt!956236)))))

(declare-fun bs!487262 () Bool)

(assert (= bs!487262 d!777092))

(declare-fun m!3094357 () Bool)

(assert (=> bs!487262 m!3094357))

(assert (=> b!2704532 d!777092))

(declare-fun b!2704703 () Bool)

(declare-fun res!1135812 () Bool)

(declare-fun e!1705284 () Bool)

(assert (=> b!2704703 (=> (not res!1135812) (not e!1705284))))

(declare-fun lt!956450 () tuple2!30826)

(assert (=> b!2704703 (= res!1135812 (= (list!11769 (_1!18043 lt!956450)) (_1!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 lt!956233)))))))

(declare-fun b!2704704 () Bool)

(declare-fun e!1705283 () Bool)

(assert (=> b!2704704 (= e!1705283 (= (list!11768 (_2!18043 lt!956450)) (list!11768 lt!956233)))))

(declare-fun d!777094 () Bool)

(assert (=> d!777094 e!1705284))

(declare-fun res!1135810 () Bool)

(assert (=> d!777094 (=> (not res!1135810) (not e!1705284))))

(assert (=> d!777094 (= res!1135810 e!1705283)))

(declare-fun c!436440 () Bool)

(assert (=> d!777094 (= c!436440 (> (size!24092 (_1!18043 lt!956450)) 0))))

(declare-fun e!1705285 () tuple2!30826)

(assert (=> d!777094 (= lt!956450 e!1705285)))

(declare-fun c!436439 () Bool)

(declare-fun lt!956449 () Option!6154)

(assert (=> d!777094 (= c!436439 ((_ is Some!6153) lt!956449))))

(assert (=> d!777094 (= lt!956449 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 lt!956233))))

(assert (=> d!777094 (= (lexRec!617 thiss!12257 rules!1381 lt!956233) lt!956450)))

(declare-fun b!2704705 () Bool)

(declare-fun e!1705282 () Bool)

(assert (=> b!2704705 (= e!1705283 e!1705282)))

(declare-fun res!1135811 () Bool)

(assert (=> b!2704705 (= res!1135811 (< (size!24093 (_2!18043 lt!956450)) (size!24093 lt!956233)))))

(assert (=> b!2704705 (=> (not res!1135811) (not e!1705282))))

(declare-fun b!2704706 () Bool)

(assert (=> b!2704706 (= e!1705285 (tuple2!30827 (BalanceConc!19111 Empty!9748) lt!956233))))

(declare-fun b!2704707 () Bool)

(assert (=> b!2704707 (= e!1705282 (not (isEmpty!17767 (_1!18043 lt!956450))))))

(declare-fun b!2704708 () Bool)

(assert (=> b!2704708 (= e!1705284 (= (list!11768 (_2!18043 lt!956450)) (_2!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 lt!956233)))))))

(declare-fun b!2704709 () Bool)

(declare-fun lt!956451 () tuple2!30826)

(assert (=> b!2704709 (= e!1705285 (tuple2!30827 (prepend!1092 (_1!18043 lt!956451) (_1!18048 (v!32961 lt!956449))) (_2!18043 lt!956451)))))

(assert (=> b!2704709 (= lt!956451 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956449))))))

(assert (= (and d!777094 c!436439) b!2704709))

(assert (= (and d!777094 (not c!436439)) b!2704706))

(assert (= (and d!777094 c!436440) b!2704705))

(assert (= (and d!777094 (not c!436440)) b!2704704))

(assert (= (and b!2704705 res!1135811) b!2704707))

(assert (= (and d!777094 res!1135810) b!2704703))

(assert (= (and b!2704703 res!1135812) b!2704708))

(declare-fun m!3094359 () Bool)

(assert (=> b!2704703 m!3094359))

(assert (=> b!2704703 m!3094225))

(assert (=> b!2704703 m!3094225))

(declare-fun m!3094361 () Bool)

(assert (=> b!2704703 m!3094361))

(declare-fun m!3094363 () Bool)

(assert (=> b!2704707 m!3094363))

(declare-fun m!3094365 () Bool)

(assert (=> b!2704708 m!3094365))

(assert (=> b!2704708 m!3094225))

(assert (=> b!2704708 m!3094225))

(assert (=> b!2704708 m!3094361))

(declare-fun m!3094367 () Bool)

(assert (=> b!2704709 m!3094367))

(declare-fun m!3094369 () Bool)

(assert (=> b!2704709 m!3094369))

(declare-fun m!3094371 () Bool)

(assert (=> b!2704705 m!3094371))

(declare-fun m!3094373 () Bool)

(assert (=> b!2704705 m!3094373))

(assert (=> b!2704704 m!3094365))

(assert (=> b!2704704 m!3094225))

(declare-fun m!3094375 () Bool)

(assert (=> d!777094 m!3094375))

(assert (=> d!777094 m!3094003))

(assert (=> b!2704532 d!777094))

(declare-fun e!1705287 () Bool)

(declare-fun lt!956452 () List!31290)

(declare-fun b!2704713 () Bool)

(assert (=> b!2704713 (= e!1705287 (or (not (= lt!956243 Nil!31190)) (= lt!956452 lt!956239)))))

(declare-fun d!777096 () Bool)

(assert (=> d!777096 e!1705287))

(declare-fun res!1135813 () Bool)

(assert (=> d!777096 (=> (not res!1135813) (not e!1705287))))

(assert (=> d!777096 (= res!1135813 (= (content!4416 lt!956452) ((_ map or) (content!4416 lt!956239) (content!4416 lt!956243))))))

(declare-fun e!1705286 () List!31290)

(assert (=> d!777096 (= lt!956452 e!1705286)))

(declare-fun c!436441 () Bool)

(assert (=> d!777096 (= c!436441 ((_ is Nil!31190) lt!956239))))

(assert (=> d!777096 (= (++!7668 lt!956239 lt!956243) lt!956452)))

(declare-fun b!2704712 () Bool)

(declare-fun res!1135814 () Bool)

(assert (=> b!2704712 (=> (not res!1135814) (not e!1705287))))

(assert (=> b!2704712 (= res!1135814 (= (size!24094 lt!956452) (+ (size!24094 lt!956239) (size!24094 lt!956243))))))

(declare-fun b!2704710 () Bool)

(assert (=> b!2704710 (= e!1705286 lt!956243)))

(declare-fun b!2704711 () Bool)

(assert (=> b!2704711 (= e!1705286 (Cons!31190 (h!36610 lt!956239) (++!7668 (t!225724 lt!956239) lt!956243)))))

(assert (= (and d!777096 c!436441) b!2704710))

(assert (= (and d!777096 (not c!436441)) b!2704711))

(assert (= (and d!777096 res!1135813) b!2704712))

(assert (= (and b!2704712 res!1135814) b!2704713))

(declare-fun m!3094377 () Bool)

(assert (=> d!777096 m!3094377))

(declare-fun m!3094379 () Bool)

(assert (=> d!777096 m!3094379))

(declare-fun m!3094381 () Bool)

(assert (=> d!777096 m!3094381))

(declare-fun m!3094383 () Bool)

(assert (=> b!2704712 m!3094383))

(assert (=> b!2704712 m!3094189))

(declare-fun m!3094385 () Bool)

(assert (=> b!2704712 m!3094385))

(declare-fun m!3094387 () Bool)

(assert (=> b!2704711 m!3094387))

(assert (=> b!2704532 d!777096))

(declare-fun lt!956453 () List!31290)

(declare-fun b!2704717 () Bool)

(declare-fun e!1705289 () Bool)

(assert (=> b!2704717 (= e!1705289 (or (not (= lt!956253 Nil!31190)) (= lt!956453 lt!956245)))))

(declare-fun d!777098 () Bool)

(assert (=> d!777098 e!1705289))

(declare-fun res!1135815 () Bool)

(assert (=> d!777098 (=> (not res!1135815) (not e!1705289))))

(assert (=> d!777098 (= res!1135815 (= (content!4416 lt!956453) ((_ map or) (content!4416 lt!956245) (content!4416 lt!956253))))))

(declare-fun e!1705288 () List!31290)

(assert (=> d!777098 (= lt!956453 e!1705288)))

(declare-fun c!436442 () Bool)

(assert (=> d!777098 (= c!436442 ((_ is Nil!31190) lt!956245))))

(assert (=> d!777098 (= (++!7668 lt!956245 lt!956253) lt!956453)))

(declare-fun b!2704716 () Bool)

(declare-fun res!1135816 () Bool)

(assert (=> b!2704716 (=> (not res!1135816) (not e!1705289))))

(assert (=> b!2704716 (= res!1135816 (= (size!24094 lt!956453) (+ (size!24094 lt!956245) (size!24094 lt!956253))))))

(declare-fun b!2704714 () Bool)

(assert (=> b!2704714 (= e!1705288 lt!956253)))

(declare-fun b!2704715 () Bool)

(assert (=> b!2704715 (= e!1705288 (Cons!31190 (h!36610 lt!956245) (++!7668 (t!225724 lt!956245) lt!956253)))))

(assert (= (and d!777098 c!436442) b!2704714))

(assert (= (and d!777098 (not c!436442)) b!2704715))

(assert (= (and d!777098 res!1135815) b!2704716))

(assert (= (and b!2704716 res!1135816) b!2704717))

(declare-fun m!3094389 () Bool)

(assert (=> d!777098 m!3094389))

(assert (=> d!777098 m!3094169))

(declare-fun m!3094391 () Bool)

(assert (=> d!777098 m!3094391))

(declare-fun m!3094393 () Bool)

(assert (=> b!2704716 m!3094393))

(assert (=> b!2704716 m!3094175))

(declare-fun m!3094395 () Bool)

(assert (=> b!2704716 m!3094395))

(declare-fun m!3094397 () Bool)

(assert (=> b!2704715 m!3094397))

(assert (=> b!2704532 d!777098))

(declare-fun d!777100 () Bool)

(assert (=> d!777100 (= (++!7670 (++!7670 lt!956255 lt!956232) lt!956235) (++!7670 lt!956255 (++!7670 lt!956232 lt!956235)))))

(declare-fun lt!956456 () Unit!45275)

(declare-fun choose!15938 (List!31291 List!31291 List!31291) Unit!45275)

(assert (=> d!777100 (= lt!956456 (choose!15938 lt!956255 lt!956232 lt!956235))))

(assert (=> d!777100 (= (lemmaConcatAssociativity!1570 lt!956255 lt!956232 lt!956235) lt!956456)))

(declare-fun bs!487263 () Bool)

(assert (= bs!487263 d!777100))

(declare-fun m!3094399 () Bool)

(assert (=> bs!487263 m!3094399))

(assert (=> bs!487263 m!3093989))

(assert (=> bs!487263 m!3093961))

(assert (=> bs!487263 m!3093961))

(assert (=> bs!487263 m!3093963))

(assert (=> bs!487263 m!3093989))

(assert (=> bs!487263 m!3093997))

(assert (=> b!2704532 d!777100))

(declare-fun b!2704718 () Bool)

(declare-fun res!1135819 () Bool)

(declare-fun e!1705292 () Bool)

(assert (=> b!2704718 (=> (not res!1135819) (not e!1705292))))

(declare-fun lt!956458 () tuple2!30826)

(assert (=> b!2704718 (= res!1135819 (= (list!11769 (_1!18043 lt!956458)) (_1!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 (_2!18048 (v!32961 lt!956241)))))))))

(declare-fun b!2704719 () Bool)

(declare-fun e!1705291 () Bool)

(assert (=> b!2704719 (= e!1705291 (= (list!11768 (_2!18043 lt!956458)) (list!11768 (_2!18048 (v!32961 lt!956241)))))))

(declare-fun d!777102 () Bool)

(assert (=> d!777102 e!1705292))

(declare-fun res!1135817 () Bool)

(assert (=> d!777102 (=> (not res!1135817) (not e!1705292))))

(assert (=> d!777102 (= res!1135817 e!1705291)))

(declare-fun c!436444 () Bool)

(assert (=> d!777102 (= c!436444 (> (size!24092 (_1!18043 lt!956458)) 0))))

(declare-fun e!1705293 () tuple2!30826)

(assert (=> d!777102 (= lt!956458 e!1705293)))

(declare-fun c!436443 () Bool)

(declare-fun lt!956457 () Option!6154)

(assert (=> d!777102 (= c!436443 ((_ is Some!6153) lt!956457))))

(assert (=> d!777102 (= lt!956457 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956241))))))

(assert (=> d!777102 (= (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956241))) lt!956458)))

(declare-fun b!2704720 () Bool)

(declare-fun e!1705290 () Bool)

(assert (=> b!2704720 (= e!1705291 e!1705290)))

(declare-fun res!1135818 () Bool)

(assert (=> b!2704720 (= res!1135818 (< (size!24093 (_2!18043 lt!956458)) (size!24093 (_2!18048 (v!32961 lt!956241)))))))

(assert (=> b!2704720 (=> (not res!1135818) (not e!1705290))))

(declare-fun b!2704721 () Bool)

(assert (=> b!2704721 (= e!1705293 (tuple2!30827 (BalanceConc!19111 Empty!9748) (_2!18048 (v!32961 lt!956241))))))

(declare-fun b!2704722 () Bool)

(assert (=> b!2704722 (= e!1705290 (not (isEmpty!17767 (_1!18043 lt!956458))))))

(declare-fun b!2704723 () Bool)

(assert (=> b!2704723 (= e!1705292 (= (list!11768 (_2!18043 lt!956458)) (_2!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 (_2!18048 (v!32961 lt!956241)))))))))

(declare-fun b!2704724 () Bool)

(declare-fun lt!956459 () tuple2!30826)

(assert (=> b!2704724 (= e!1705293 (tuple2!30827 (prepend!1092 (_1!18043 lt!956459) (_1!18048 (v!32961 lt!956457))) (_2!18043 lt!956459)))))

(assert (=> b!2704724 (= lt!956459 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956457))))))

(assert (= (and d!777102 c!436443) b!2704724))

(assert (= (and d!777102 (not c!436443)) b!2704721))

(assert (= (and d!777102 c!436444) b!2704720))

(assert (= (and d!777102 (not c!436444)) b!2704719))

(assert (= (and b!2704720 res!1135818) b!2704722))

(assert (= (and d!777102 res!1135817) b!2704718))

(assert (= (and b!2704718 res!1135819) b!2704723))

(declare-fun m!3094401 () Bool)

(assert (=> b!2704718 m!3094401))

(assert (=> b!2704718 m!3093995))

(assert (=> b!2704718 m!3093995))

(declare-fun m!3094403 () Bool)

(assert (=> b!2704718 m!3094403))

(declare-fun m!3094405 () Bool)

(assert (=> b!2704722 m!3094405))

(declare-fun m!3094407 () Bool)

(assert (=> b!2704723 m!3094407))

(assert (=> b!2704723 m!3093995))

(assert (=> b!2704723 m!3093995))

(assert (=> b!2704723 m!3094403))

(declare-fun m!3094409 () Bool)

(assert (=> b!2704724 m!3094409))

(declare-fun m!3094411 () Bool)

(assert (=> b!2704724 m!3094411))

(declare-fun m!3094413 () Bool)

(assert (=> b!2704720 m!3094413))

(declare-fun m!3094415 () Bool)

(assert (=> b!2704720 m!3094415))

(assert (=> b!2704719 m!3094407))

(assert (=> b!2704719 m!3093995))

(declare-fun m!3094417 () Bool)

(assert (=> d!777102 m!3094417))

(assert (=> d!777102 m!3094205))

(assert (=> b!2704532 d!777102))

(declare-fun d!777104 () Bool)

(declare-fun e!1705296 () Bool)

(assert (=> d!777104 e!1705296))

(declare-fun res!1135828 () Bool)

(assert (=> d!777104 (=> (not res!1135828) (not e!1705296))))

(declare-fun appendAssocInst!672 (Conc!9747 Conc!9747) Bool)

(assert (=> d!777104 (= res!1135828 (appendAssocInst!672 (c!436395 treated!26) (c!436395 lt!956251)))))

(declare-fun lt!956462 () BalanceConc!19108)

(declare-fun ++!7672 (Conc!9747 Conc!9747) Conc!9747)

(assert (=> d!777104 (= lt!956462 (BalanceConc!19109 (++!7672 (c!436395 treated!26) (c!436395 lt!956251))))))

(assert (=> d!777104 (= (++!7671 treated!26 lt!956251) lt!956462)))

(declare-fun b!2704736 () Bool)

(assert (=> b!2704736 (= e!1705296 (= (list!11768 lt!956462) (++!7668 (list!11768 treated!26) (list!11768 lt!956251))))))

(declare-fun b!2704735 () Bool)

(declare-fun res!1135830 () Bool)

(assert (=> b!2704735 (=> (not res!1135830) (not e!1705296))))

(declare-fun height!1433 (Conc!9747) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2704735 (= res!1135830 (>= (height!1433 (++!7672 (c!436395 treated!26) (c!436395 lt!956251))) (max!0 (height!1433 (c!436395 treated!26)) (height!1433 (c!436395 lt!956251)))))))

(declare-fun b!2704734 () Bool)

(declare-fun res!1135829 () Bool)

(assert (=> b!2704734 (=> (not res!1135829) (not e!1705296))))

(assert (=> b!2704734 (= res!1135829 (<= (height!1433 (++!7672 (c!436395 treated!26) (c!436395 lt!956251))) (+ (max!0 (height!1433 (c!436395 treated!26)) (height!1433 (c!436395 lt!956251))) 1)))))

(declare-fun b!2704733 () Bool)

(declare-fun res!1135831 () Bool)

(assert (=> b!2704733 (=> (not res!1135831) (not e!1705296))))

(declare-fun isBalanced!2952 (Conc!9747) Bool)

(assert (=> b!2704733 (= res!1135831 (isBalanced!2952 (++!7672 (c!436395 treated!26) (c!436395 lt!956251))))))

(assert (= (and d!777104 res!1135828) b!2704733))

(assert (= (and b!2704733 res!1135831) b!2704734))

(assert (= (and b!2704734 res!1135829) b!2704735))

(assert (= (and b!2704735 res!1135830) b!2704736))

(declare-fun m!3094419 () Bool)

(assert (=> b!2704734 m!3094419))

(assert (=> b!2704734 m!3094419))

(declare-fun m!3094421 () Bool)

(assert (=> b!2704734 m!3094421))

(declare-fun m!3094423 () Bool)

(assert (=> b!2704734 m!3094423))

(declare-fun m!3094425 () Bool)

(assert (=> b!2704734 m!3094425))

(assert (=> b!2704734 m!3094425))

(declare-fun m!3094427 () Bool)

(assert (=> b!2704734 m!3094427))

(assert (=> b!2704734 m!3094421))

(declare-fun m!3094429 () Bool)

(assert (=> d!777104 m!3094429))

(assert (=> d!777104 m!3094425))

(assert (=> b!2704735 m!3094419))

(assert (=> b!2704735 m!3094419))

(assert (=> b!2704735 m!3094421))

(assert (=> b!2704735 m!3094423))

(assert (=> b!2704735 m!3094425))

(assert (=> b!2704735 m!3094425))

(assert (=> b!2704735 m!3094427))

(assert (=> b!2704735 m!3094421))

(assert (=> b!2704733 m!3094425))

(assert (=> b!2704733 m!3094425))

(declare-fun m!3094431 () Bool)

(assert (=> b!2704733 m!3094431))

(declare-fun m!3094433 () Bool)

(assert (=> b!2704736 m!3094433))

(assert (=> b!2704736 m!3093935))

(assert (=> b!2704736 m!3094001))

(assert (=> b!2704736 m!3093935))

(assert (=> b!2704736 m!3094001))

(declare-fun m!3094435 () Bool)

(assert (=> b!2704736 m!3094435))

(assert (=> b!2704532 d!777104))

(declare-fun d!777106 () Bool)

(assert (=> d!777106 (= (list!11768 (_2!18043 lt!956244)) (list!11770 (c!436395 (_2!18043 lt!956244))))))

(declare-fun bs!487264 () Bool)

(assert (= bs!487264 d!777106))

(declare-fun m!3094437 () Bool)

(assert (=> bs!487264 m!3094437))

(assert (=> b!2704532 d!777106))

(declare-fun b!2704738 () Bool)

(declare-fun e!1705297 () List!31291)

(assert (=> b!2704738 (= e!1705297 (Cons!31191 (h!36611 lt!956255) (++!7670 (t!225725 lt!956255) lt!956232)))))

(declare-fun b!2704737 () Bool)

(assert (=> b!2704737 (= e!1705297 lt!956232)))

(declare-fun e!1705298 () Bool)

(declare-fun lt!956463 () List!31291)

(declare-fun b!2704740 () Bool)

(assert (=> b!2704740 (= e!1705298 (or (not (= lt!956232 Nil!31191)) (= lt!956463 lt!956255)))))

(declare-fun b!2704739 () Bool)

(declare-fun res!1135832 () Bool)

(assert (=> b!2704739 (=> (not res!1135832) (not e!1705298))))

(assert (=> b!2704739 (= res!1135832 (= (size!24095 lt!956463) (+ (size!24095 lt!956255) (size!24095 lt!956232))))))

(declare-fun d!777108 () Bool)

(assert (=> d!777108 e!1705298))

(declare-fun res!1135833 () Bool)

(assert (=> d!777108 (=> (not res!1135833) (not e!1705298))))

(assert (=> d!777108 (= res!1135833 (= (content!4417 lt!956463) ((_ map or) (content!4417 lt!956255) (content!4417 lt!956232))))))

(assert (=> d!777108 (= lt!956463 e!1705297)))

(declare-fun c!436448 () Bool)

(assert (=> d!777108 (= c!436448 ((_ is Nil!31191) lt!956255))))

(assert (=> d!777108 (= (++!7670 lt!956255 lt!956232) lt!956463)))

(assert (= (and d!777108 c!436448) b!2704737))

(assert (= (and d!777108 (not c!436448)) b!2704738))

(assert (= (and d!777108 res!1135833) b!2704739))

(assert (= (and b!2704739 res!1135832) b!2704740))

(declare-fun m!3094439 () Bool)

(assert (=> b!2704738 m!3094439))

(declare-fun m!3094441 () Bool)

(assert (=> b!2704739 m!3094441))

(assert (=> b!2704739 m!3094329))

(assert (=> b!2704739 m!3094281))

(declare-fun m!3094443 () Bool)

(assert (=> d!777108 m!3094443))

(assert (=> d!777108 m!3094335))

(assert (=> d!777108 m!3094287))

(assert (=> b!2704532 d!777108))

(declare-fun d!777110 () Bool)

(declare-fun lt!956466 () BalanceConc!19108)

(assert (=> d!777110 (= (list!11768 lt!956466) (originalCharacters!5523 (_1!18048 (v!32961 lt!956241))))))

(declare-fun dynLambda!13465 (Int TokenValue!4981) BalanceConc!19108)

(assert (=> d!777110 (= lt!956466 (dynLambda!13465 (toChars!6580 (transformation!4759 (rule!7181 (_1!18048 (v!32961 lt!956241))))) (value!153246 (_1!18048 (v!32961 lt!956241)))))))

(assert (=> d!777110 (= (charsOf!2998 (_1!18048 (v!32961 lt!956241))) lt!956466)))

(declare-fun b_lambda!82383 () Bool)

(assert (=> (not b_lambda!82383) (not d!777110)))

(declare-fun tb!151481 () Bool)

(declare-fun t!225731 () Bool)

(assert (=> (and b!2704546 (= (toChars!6580 (transformation!4759 (h!36612 rules!1381))) (toChars!6580 (transformation!4759 (rule!7181 (_1!18048 (v!32961 lt!956241)))))) t!225731) tb!151481))

(declare-fun b!2704745 () Bool)

(declare-fun e!1705301 () Bool)

(declare-fun tp!855344 () Bool)

(assert (=> b!2704745 (= e!1705301 (and (inv!42256 (c!436395 (dynLambda!13465 (toChars!6580 (transformation!4759 (rule!7181 (_1!18048 (v!32961 lt!956241))))) (value!153246 (_1!18048 (v!32961 lt!956241)))))) tp!855344))))

(declare-fun result!187092 () Bool)

(assert (=> tb!151481 (= result!187092 (and (inv!42257 (dynLambda!13465 (toChars!6580 (transformation!4759 (rule!7181 (_1!18048 (v!32961 lt!956241))))) (value!153246 (_1!18048 (v!32961 lt!956241))))) e!1705301))))

(assert (= tb!151481 b!2704745))

(declare-fun m!3094445 () Bool)

(assert (=> b!2704745 m!3094445))

(declare-fun m!3094447 () Bool)

(assert (=> tb!151481 m!3094447))

(assert (=> d!777110 t!225731))

(declare-fun b_and!199759 () Bool)

(assert (= b_and!199749 (and (=> t!225731 result!187092) b_and!199759)))

(declare-fun m!3094449 () Bool)

(assert (=> d!777110 m!3094449))

(declare-fun m!3094451 () Bool)

(assert (=> d!777110 m!3094451))

(assert (=> b!2704532 d!777110))

(declare-fun e!1705303 () Bool)

(declare-fun b!2704749 () Bool)

(declare-fun lt!956467 () List!31290)

(assert (=> b!2704749 (= e!1705303 (or (not (= lt!956243 Nil!31190)) (= lt!956467 lt!956253)))))

(declare-fun d!777112 () Bool)

(assert (=> d!777112 e!1705303))

(declare-fun res!1135834 () Bool)

(assert (=> d!777112 (=> (not res!1135834) (not e!1705303))))

(assert (=> d!777112 (= res!1135834 (= (content!4416 lt!956467) ((_ map or) (content!4416 lt!956253) (content!4416 lt!956243))))))

(declare-fun e!1705302 () List!31290)

(assert (=> d!777112 (= lt!956467 e!1705302)))

(declare-fun c!436449 () Bool)

(assert (=> d!777112 (= c!436449 ((_ is Nil!31190) lt!956253))))

(assert (=> d!777112 (= (++!7668 lt!956253 lt!956243) lt!956467)))

(declare-fun b!2704748 () Bool)

(declare-fun res!1135835 () Bool)

(assert (=> b!2704748 (=> (not res!1135835) (not e!1705303))))

(assert (=> b!2704748 (= res!1135835 (= (size!24094 lt!956467) (+ (size!24094 lt!956253) (size!24094 lt!956243))))))

(declare-fun b!2704746 () Bool)

(assert (=> b!2704746 (= e!1705302 lt!956243)))

(declare-fun b!2704747 () Bool)

(assert (=> b!2704747 (= e!1705302 (Cons!31190 (h!36610 lt!956253) (++!7668 (t!225724 lt!956253) lt!956243)))))

(assert (= (and d!777112 c!436449) b!2704746))

(assert (= (and d!777112 (not c!436449)) b!2704747))

(assert (= (and d!777112 res!1135834) b!2704748))

(assert (= (and b!2704748 res!1135835) b!2704749))

(declare-fun m!3094453 () Bool)

(assert (=> d!777112 m!3094453))

(assert (=> d!777112 m!3094391))

(assert (=> d!777112 m!3094381))

(declare-fun m!3094455 () Bool)

(assert (=> b!2704748 m!3094455))

(assert (=> b!2704748 m!3094395))

(assert (=> b!2704748 m!3094385))

(declare-fun m!3094457 () Bool)

(assert (=> b!2704747 m!3094457))

(assert (=> b!2704532 d!777112))

(declare-fun d!777114 () Bool)

(declare-fun c!436452 () Bool)

(assert (=> d!777114 (= c!436452 ((_ is Node!9748) (c!436396 acc!348)))))

(declare-fun e!1705308 () Bool)

(assert (=> d!777114 (= (inv!42261 (c!436396 acc!348)) e!1705308)))

(declare-fun b!2704756 () Bool)

(declare-fun inv!42262 (Conc!9748) Bool)

(assert (=> b!2704756 (= e!1705308 (inv!42262 (c!436396 acc!348)))))

(declare-fun b!2704757 () Bool)

(declare-fun e!1705309 () Bool)

(assert (=> b!2704757 (= e!1705308 e!1705309)))

(declare-fun res!1135838 () Bool)

(assert (=> b!2704757 (= res!1135838 (not ((_ is Leaf!14872) (c!436396 acc!348))))))

(assert (=> b!2704757 (=> res!1135838 e!1705309)))

(declare-fun b!2704758 () Bool)

(declare-fun inv!42263 (Conc!9748) Bool)

(assert (=> b!2704758 (= e!1705309 (inv!42263 (c!436396 acc!348)))))

(assert (= (and d!777114 c!436452) b!2704756))

(assert (= (and d!777114 (not c!436452)) b!2704757))

(assert (= (and b!2704757 (not res!1135838)) b!2704758))

(declare-fun m!3094459 () Bool)

(assert (=> b!2704756 m!3094459))

(declare-fun m!3094461 () Bool)

(assert (=> b!2704758 m!3094461))

(assert (=> b!2704552 d!777114))

(declare-fun d!777116 () Bool)

(assert (=> d!777116 (= (list!11769 acc!348) (list!11771 (c!436396 acc!348)))))

(declare-fun bs!487265 () Bool)

(assert (= bs!487265 d!777116))

(declare-fun m!3094463 () Bool)

(assert (=> bs!487265 m!3094463))

(assert (=> b!2704531 d!777116))

(declare-fun d!777118 () Bool)

(assert (=> d!777118 (= (list!11769 (_1!18043 lt!956254)) (list!11771 (c!436396 (_1!18043 lt!956254))))))

(declare-fun bs!487266 () Bool)

(assert (= bs!487266 d!777118))

(declare-fun m!3094465 () Bool)

(assert (=> bs!487266 m!3094465))

(assert (=> b!2704531 d!777118))

(declare-fun b!2704759 () Bool)

(declare-fun res!1135841 () Bool)

(declare-fun e!1705312 () Bool)

(assert (=> b!2704759 (=> (not res!1135841) (not e!1705312))))

(declare-fun lt!956469 () tuple2!30826)

(assert (=> b!2704759 (= res!1135841 (= (list!11769 (_1!18043 lt!956469)) (_1!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 treated!26)))))))

(declare-fun b!2704760 () Bool)

(declare-fun e!1705311 () Bool)

(assert (=> b!2704760 (= e!1705311 (= (list!11768 (_2!18043 lt!956469)) (list!11768 treated!26)))))

(declare-fun d!777120 () Bool)

(assert (=> d!777120 e!1705312))

(declare-fun res!1135839 () Bool)

(assert (=> d!777120 (=> (not res!1135839) (not e!1705312))))

(assert (=> d!777120 (= res!1135839 e!1705311)))

(declare-fun c!436454 () Bool)

(assert (=> d!777120 (= c!436454 (> (size!24092 (_1!18043 lt!956469)) 0))))

(declare-fun e!1705313 () tuple2!30826)

(assert (=> d!777120 (= lt!956469 e!1705313)))

(declare-fun c!436453 () Bool)

(declare-fun lt!956468 () Option!6154)

(assert (=> d!777120 (= c!436453 ((_ is Some!6153) lt!956468))))

(assert (=> d!777120 (= lt!956468 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 treated!26))))

(assert (=> d!777120 (= (lexRec!617 thiss!12257 rules!1381 treated!26) lt!956469)))

(declare-fun b!2704761 () Bool)

(declare-fun e!1705310 () Bool)

(assert (=> b!2704761 (= e!1705311 e!1705310)))

(declare-fun res!1135840 () Bool)

(assert (=> b!2704761 (= res!1135840 (< (size!24093 (_2!18043 lt!956469)) (size!24093 treated!26)))))

(assert (=> b!2704761 (=> (not res!1135840) (not e!1705310))))

(declare-fun b!2704762 () Bool)

(assert (=> b!2704762 (= e!1705313 (tuple2!30827 (BalanceConc!19111 Empty!9748) treated!26))))

(declare-fun b!2704763 () Bool)

(assert (=> b!2704763 (= e!1705310 (not (isEmpty!17767 (_1!18043 lt!956469))))))

(declare-fun b!2704764 () Bool)

(assert (=> b!2704764 (= e!1705312 (= (list!11768 (_2!18043 lt!956469)) (_2!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 treated!26)))))))

(declare-fun b!2704765 () Bool)

(declare-fun lt!956470 () tuple2!30826)

(assert (=> b!2704765 (= e!1705313 (tuple2!30827 (prepend!1092 (_1!18043 lt!956470) (_1!18048 (v!32961 lt!956468))) (_2!18043 lt!956470)))))

(assert (=> b!2704765 (= lt!956470 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956468))))))

(assert (= (and d!777120 c!436453) b!2704765))

(assert (= (and d!777120 (not c!436453)) b!2704762))

(assert (= (and d!777120 c!436454) b!2704761))

(assert (= (and d!777120 (not c!436454)) b!2704760))

(assert (= (and b!2704761 res!1135840) b!2704763))

(assert (= (and d!777120 res!1135839) b!2704759))

(assert (= (and b!2704759 res!1135841) b!2704764))

(declare-fun m!3094467 () Bool)

(assert (=> b!2704759 m!3094467))

(assert (=> b!2704759 m!3093935))

(assert (=> b!2704759 m!3093935))

(declare-fun m!3094469 () Bool)

(assert (=> b!2704759 m!3094469))

(declare-fun m!3094471 () Bool)

(assert (=> b!2704763 m!3094471))

(declare-fun m!3094473 () Bool)

(assert (=> b!2704764 m!3094473))

(assert (=> b!2704764 m!3093935))

(assert (=> b!2704764 m!3093935))

(assert (=> b!2704764 m!3094469))

(declare-fun m!3094475 () Bool)

(assert (=> b!2704765 m!3094475))

(declare-fun m!3094477 () Bool)

(assert (=> b!2704765 m!3094477))

(declare-fun m!3094479 () Bool)

(assert (=> b!2704761 m!3094479))

(declare-fun m!3094481 () Bool)

(assert (=> b!2704761 m!3094481))

(assert (=> b!2704760 m!3094473))

(assert (=> b!2704760 m!3093935))

(declare-fun m!3094483 () Bool)

(assert (=> d!777120 m!3094483))

(declare-fun m!3094485 () Bool)

(assert (=> d!777120 m!3094485))

(assert (=> b!2704531 d!777120))

(declare-fun d!777122 () Bool)

(assert (=> d!777122 (= (inv!42257 input!780) (isBalanced!2952 (c!436395 input!780)))))

(declare-fun bs!487267 () Bool)

(assert (= bs!487267 d!777122))

(declare-fun m!3094487 () Bool)

(assert (=> bs!487267 m!3094487))

(assert (=> start!262530 d!777122))

(declare-fun d!777124 () Bool)

(assert (=> d!777124 (= (inv!42257 treated!26) (isBalanced!2952 (c!436395 treated!26)))))

(declare-fun bs!487268 () Bool)

(assert (= bs!487268 d!777124))

(declare-fun m!3094489 () Bool)

(assert (=> bs!487268 m!3094489))

(assert (=> start!262530 d!777124))

(declare-fun d!777126 () Bool)

(declare-fun res!1135844 () Bool)

(declare-fun e!1705316 () Bool)

(assert (=> d!777126 (=> (not res!1135844) (not e!1705316))))

(assert (=> d!777126 (= res!1135844 ((_ is HashMap!3456) (cache!3599 cacheUp!486)))))

(assert (=> d!777126 (= (inv!42258 cacheUp!486) e!1705316)))

(declare-fun b!2704768 () Bool)

(declare-fun validCacheMapUp!329 (MutableMap!3456) Bool)

(assert (=> b!2704768 (= e!1705316 (validCacheMapUp!329 (cache!3599 cacheUp!486)))))

(assert (= (and d!777126 res!1135844) b!2704768))

(declare-fun m!3094491 () Bool)

(assert (=> b!2704768 m!3094491))

(assert (=> start!262530 d!777126))

(declare-fun d!777128 () Bool)

(declare-fun res!1135847 () Bool)

(declare-fun e!1705319 () Bool)

(assert (=> d!777128 (=> (not res!1135847) (not e!1705319))))

(assert (=> d!777128 (= res!1135847 ((_ is HashMap!3457) (cache!3600 cacheDown!499)))))

(assert (=> d!777128 (= (inv!42260 cacheDown!499) e!1705319)))

(declare-fun b!2704771 () Bool)

(declare-fun validCacheMapDown!360 (MutableMap!3457) Bool)

(assert (=> b!2704771 (= e!1705319 (validCacheMapDown!360 (cache!3600 cacheDown!499)))))

(assert (= (and d!777128 res!1135847) b!2704771))

(declare-fun m!3094493 () Bool)

(assert (=> b!2704771 m!3094493))

(assert (=> start!262530 d!777128))

(declare-fun d!777130 () Bool)

(assert (=> d!777130 (= (inv!42259 acc!348) (isBalanced!2951 (c!436396 acc!348)))))

(declare-fun bs!487269 () Bool)

(assert (= bs!487269 d!777130))

(declare-fun m!3094495 () Bool)

(assert (=> bs!487269 m!3094495))

(assert (=> start!262530 d!777130))

(declare-fun d!777132 () Bool)

(assert (=> d!777132 (= (inv!42257 totalInput!354) (isBalanced!2952 (c!436395 totalInput!354)))))

(declare-fun bs!487270 () Bool)

(assert (= bs!487270 d!777132))

(declare-fun m!3094497 () Bool)

(assert (=> bs!487270 m!3094497))

(assert (=> start!262530 d!777132))

(declare-fun d!777134 () Bool)

(declare-fun e!1705327 () Bool)

(assert (=> d!777134 e!1705327))

(declare-fun res!1135855 () Bool)

(assert (=> d!777134 (=> (not res!1135855) (not e!1705327))))

(declare-fun e!1705328 () Bool)

(assert (=> d!777134 (= res!1135855 e!1705328)))

(declare-fun c!436457 () Bool)

(declare-fun lt!956473 () tuple2!30826)

(assert (=> d!777134 (= c!436457 (> (size!24092 (_1!18043 lt!956473)) 0))))

(assert (=> d!777134 (= lt!956473 (lexTailRecV2!878 thiss!12257 rules!1381 input!780 (BalanceConc!19109 Empty!9747) input!780 (BalanceConc!19111 Empty!9748)))))

(assert (=> d!777134 (= (lex!1966 thiss!12257 rules!1381 input!780) lt!956473)))

(declare-fun b!2704782 () Bool)

(declare-fun e!1705326 () Bool)

(assert (=> b!2704782 (= e!1705328 e!1705326)))

(declare-fun res!1135856 () Bool)

(assert (=> b!2704782 (= res!1135856 (< (size!24093 (_2!18043 lt!956473)) (size!24093 input!780)))))

(assert (=> b!2704782 (=> (not res!1135856) (not e!1705326))))

(declare-fun b!2704783 () Bool)

(declare-fun res!1135854 () Bool)

(assert (=> b!2704783 (=> (not res!1135854) (not e!1705327))))

(assert (=> b!2704783 (= res!1135854 (= (list!11769 (_1!18043 lt!956473)) (_1!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 input!780)))))))

(declare-fun b!2704784 () Bool)

(assert (=> b!2704784 (= e!1705326 (not (isEmpty!17767 (_1!18043 lt!956473))))))

(declare-fun b!2704785 () Bool)

(assert (=> b!2704785 (= e!1705327 (= (list!11768 (_2!18043 lt!956473)) (_2!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 input!780)))))))

(declare-fun b!2704786 () Bool)

(assert (=> b!2704786 (= e!1705328 (= (_2!18043 lt!956473) input!780))))

(assert (= (and d!777134 c!436457) b!2704782))

(assert (= (and d!777134 (not c!436457)) b!2704786))

(assert (= (and b!2704782 res!1135856) b!2704784))

(assert (= (and d!777134 res!1135855) b!2704783))

(assert (= (and b!2704783 res!1135854) b!2704785))

(declare-fun m!3094499 () Bool)

(assert (=> b!2704784 m!3094499))

(declare-fun m!3094501 () Bool)

(assert (=> d!777134 m!3094501))

(assert (=> d!777134 m!3093893))

(declare-fun m!3094503 () Bool)

(assert (=> b!2704783 m!3094503))

(assert (=> b!2704783 m!3093933))

(assert (=> b!2704783 m!3093933))

(declare-fun m!3094505 () Bool)

(assert (=> b!2704783 m!3094505))

(declare-fun m!3094507 () Bool)

(assert (=> b!2704782 m!3094507))

(declare-fun m!3094509 () Bool)

(assert (=> b!2704782 m!3094509))

(declare-fun m!3094511 () Bool)

(assert (=> b!2704785 m!3094511))

(assert (=> b!2704785 m!3093933))

(assert (=> b!2704785 m!3093933))

(assert (=> b!2704785 m!3094505))

(assert (=> b!2704535 d!777134))

(declare-fun b!2704801 () Bool)

(declare-fun e!1705339 () tuple2!30826)

(assert (=> b!2704801 (= e!1705339 (tuple2!30827 (BalanceConc!19111 Empty!9748) input!780))))

(declare-fun lt!956562 () tuple2!30826)

(declare-fun b!2704802 () Bool)

(declare-fun lt!956575 () Option!6154)

(assert (=> b!2704802 (= lt!956562 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956575))))))

(declare-fun e!1705337 () tuple2!30826)

(assert (=> b!2704802 (= e!1705337 (tuple2!30827 (prepend!1092 (_1!18043 lt!956562) (_1!18048 (v!32961 lt!956575))) (_2!18043 lt!956562)))))

(declare-fun b!2704803 () Bool)

(declare-fun e!1705338 () tuple2!30826)

(declare-fun lt!956555 () BalanceConc!19108)

(assert (=> b!2704803 (= e!1705338 (tuple2!30827 (BalanceConc!19111 Empty!9748) lt!956555))))

(declare-fun d!777136 () Bool)

(declare-fun e!1705340 () Bool)

(assert (=> d!777136 e!1705340))

(declare-fun res!1135859 () Bool)

(assert (=> d!777136 (=> (not res!1135859) (not e!1705340))))

(declare-fun lt!956563 () tuple2!30826)

(assert (=> d!777136 (= res!1135859 (= (list!11769 (_1!18043 lt!956563)) (list!11769 (_1!18043 (lexRec!617 thiss!12257 rules!1381 input!780)))))))

(assert (=> d!777136 (= lt!956563 e!1705339)))

(declare-fun c!436465 () Bool)

(declare-fun lt!956566 () Option!6154)

(assert (=> d!777136 (= c!436465 ((_ is Some!6153) lt!956566))))

(declare-fun maxPrefixZipperSequenceV2!458 (LexerInterface!4355 List!31292 BalanceConc!19108 BalanceConc!19108) Option!6154)

(assert (=> d!777136 (= lt!956566 (maxPrefixZipperSequenceV2!458 thiss!12257 rules!1381 input!780 input!780))))

(declare-fun lt!956573 () Unit!45275)

(declare-fun lt!956556 () Unit!45275)

(assert (=> d!777136 (= lt!956573 lt!956556)))

(declare-fun lt!956552 () List!31290)

(declare-fun lt!956544 () List!31290)

(declare-fun isSuffix!833 (List!31290 List!31290) Bool)

(assert (=> d!777136 (isSuffix!833 lt!956552 (++!7668 lt!956544 lt!956552))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!518 (List!31290 List!31290) Unit!45275)

(assert (=> d!777136 (= lt!956556 (lemmaConcatTwoListThenFSndIsSuffix!518 lt!956544 lt!956552))))

(assert (=> d!777136 (= lt!956552 (list!11768 input!780))))

(assert (=> d!777136 (= lt!956544 (list!11768 (BalanceConc!19109 Empty!9747)))))

(assert (=> d!777136 (= (lexTailRecV2!878 thiss!12257 rules!1381 input!780 (BalanceConc!19109 Empty!9747) input!780 (BalanceConc!19111 Empty!9748)) lt!956563)))

(declare-fun lt!956543 () BalanceConc!19108)

(declare-fun b!2704804 () Bool)

(assert (=> b!2704804 (= e!1705339 (lexTailRecV2!878 thiss!12257 rules!1381 input!780 lt!956543 (_2!18048 (v!32961 lt!956566)) (append!785 (BalanceConc!19111 Empty!9748) (_1!18048 (v!32961 lt!956566)))))))

(declare-fun lt!956565 () tuple2!30826)

(assert (=> b!2704804 (= lt!956565 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956566))))))

(declare-fun lt!956547 () List!31290)

(assert (=> b!2704804 (= lt!956547 (list!11768 (BalanceConc!19109 Empty!9747)))))

(declare-fun lt!956564 () List!31290)

(assert (=> b!2704804 (= lt!956564 (list!11768 (charsOf!2998 (_1!18048 (v!32961 lt!956566)))))))

(declare-fun lt!956570 () List!31290)

(assert (=> b!2704804 (= lt!956570 (list!11768 (_2!18048 (v!32961 lt!956566))))))

(declare-fun lt!956571 () Unit!45275)

(assert (=> b!2704804 (= lt!956571 (lemmaConcatAssociativity!1569 lt!956547 lt!956564 lt!956570))))

(assert (=> b!2704804 (= (++!7668 (++!7668 lt!956547 lt!956564) lt!956570) (++!7668 lt!956547 (++!7668 lt!956564 lt!956570)))))

(declare-fun lt!956550 () Unit!45275)

(assert (=> b!2704804 (= lt!956550 lt!956571)))

(assert (=> b!2704804 (= lt!956575 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 input!780))))

(declare-fun c!436464 () Bool)

(assert (=> b!2704804 (= c!436464 ((_ is Some!6153) lt!956575))))

(assert (=> b!2704804 (= (lexRec!617 thiss!12257 rules!1381 input!780) e!1705337)))

(declare-fun lt!956557 () Unit!45275)

(declare-fun Unit!45281 () Unit!45275)

(assert (=> b!2704804 (= lt!956557 Unit!45281)))

(declare-fun lt!956560 () List!31291)

(assert (=> b!2704804 (= lt!956560 (list!11769 (BalanceConc!19111 Empty!9748)))))

(declare-fun lt!956567 () List!31291)

(assert (=> b!2704804 (= lt!956567 (Cons!31191 (_1!18048 (v!32961 lt!956566)) Nil!31191))))

(declare-fun lt!956546 () List!31291)

(assert (=> b!2704804 (= lt!956546 (list!11769 (_1!18043 lt!956565)))))

(declare-fun lt!956558 () Unit!45275)

(assert (=> b!2704804 (= lt!956558 (lemmaConcatAssociativity!1570 lt!956560 lt!956567 lt!956546))))

(assert (=> b!2704804 (= (++!7670 (++!7670 lt!956560 lt!956567) lt!956546) (++!7670 lt!956560 (++!7670 lt!956567 lt!956546)))))

(declare-fun lt!956554 () Unit!45275)

(assert (=> b!2704804 (= lt!956554 lt!956558)))

(declare-fun lt!956545 () List!31290)

(assert (=> b!2704804 (= lt!956545 (++!7668 (list!11768 (BalanceConc!19109 Empty!9747)) (list!11768 (charsOf!2998 (_1!18048 (v!32961 lt!956566))))))))

(declare-fun lt!956568 () List!31290)

(assert (=> b!2704804 (= lt!956568 (list!11768 (_2!18048 (v!32961 lt!956566))))))

(declare-fun lt!956549 () List!31291)

(assert (=> b!2704804 (= lt!956549 (list!11769 (append!785 (BalanceConc!19111 Empty!9748) (_1!18048 (v!32961 lt!956566)))))))

(declare-fun lt!956542 () Unit!45275)

(assert (=> b!2704804 (= lt!956542 (lemmaLexThenLexPrefix!414 thiss!12257 rules!1381 lt!956545 lt!956568 lt!956549 (list!11769 (_1!18043 lt!956565)) (list!11768 (_2!18043 lt!956565))))))

(assert (=> b!2704804 (= (lexList!1202 thiss!12257 rules!1381 lt!956545) (tuple2!30837 lt!956549 Nil!31190))))

(declare-fun lt!956551 () Unit!45275)

(assert (=> b!2704804 (= lt!956551 lt!956542)))

(assert (=> b!2704804 (= lt!956555 (++!7671 (BalanceConc!19109 Empty!9747) (charsOf!2998 (_1!18048 (v!32961 lt!956566)))))))

(declare-fun lt!956553 () Option!6154)

(assert (=> b!2704804 (= lt!956553 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 lt!956555))))

(declare-fun c!436466 () Bool)

(assert (=> b!2704804 (= c!436466 ((_ is Some!6153) lt!956553))))

(assert (=> b!2704804 (= (lexRec!617 thiss!12257 rules!1381 (++!7671 (BalanceConc!19109 Empty!9747) (charsOf!2998 (_1!18048 (v!32961 lt!956566))))) e!1705338)))

(declare-fun lt!956569 () Unit!45275)

(declare-fun Unit!45282 () Unit!45275)

(assert (=> b!2704804 (= lt!956569 Unit!45282)))

(assert (=> b!2704804 (= lt!956543 (++!7671 (BalanceConc!19109 Empty!9747) (charsOf!2998 (_1!18048 (v!32961 lt!956566)))))))

(declare-fun lt!956574 () List!31290)

(assert (=> b!2704804 (= lt!956574 (list!11768 lt!956543))))

(declare-fun lt!956559 () List!31290)

(assert (=> b!2704804 (= lt!956559 (list!11768 (_2!18048 (v!32961 lt!956566))))))

(declare-fun lt!956561 () Unit!45275)

(assert (=> b!2704804 (= lt!956561 (lemmaConcatTwoListThenFSndIsSuffix!518 lt!956574 lt!956559))))

(assert (=> b!2704804 (isSuffix!833 lt!956559 (++!7668 lt!956574 lt!956559))))

(declare-fun lt!956548 () Unit!45275)

(assert (=> b!2704804 (= lt!956548 lt!956561)))

(declare-fun b!2704805 () Bool)

(declare-fun lt!956572 () tuple2!30826)

(assert (=> b!2704805 (= lt!956572 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956553))))))

(assert (=> b!2704805 (= e!1705338 (tuple2!30827 (prepend!1092 (_1!18043 lt!956572) (_1!18048 (v!32961 lt!956553))) (_2!18043 lt!956572)))))

(declare-fun b!2704806 () Bool)

(assert (=> b!2704806 (= e!1705340 (= (list!11768 (_2!18043 lt!956563)) (list!11768 (_2!18043 (lexRec!617 thiss!12257 rules!1381 input!780)))))))

(declare-fun b!2704807 () Bool)

(assert (=> b!2704807 (= e!1705337 (tuple2!30827 (BalanceConc!19111 Empty!9748) input!780))))

(assert (= (and d!777136 c!436465) b!2704804))

(assert (= (and d!777136 (not c!436465)) b!2704801))

(assert (= (and b!2704804 c!436464) b!2704802))

(assert (= (and b!2704804 (not c!436464)) b!2704807))

(assert (= (and b!2704804 c!436466) b!2704805))

(assert (= (and b!2704804 (not c!436466)) b!2704803))

(assert (= (and d!777136 res!1135859) b!2704806))

(declare-fun m!3094513 () Bool)

(assert (=> b!2704802 m!3094513))

(declare-fun m!3094515 () Bool)

(assert (=> b!2704802 m!3094515))

(declare-fun m!3094517 () Bool)

(assert (=> b!2704804 m!3094517))

(declare-fun m!3094519 () Bool)

(assert (=> b!2704804 m!3094519))

(declare-fun m!3094521 () Bool)

(assert (=> b!2704804 m!3094521))

(declare-fun m!3094523 () Bool)

(assert (=> b!2704804 m!3094523))

(declare-fun m!3094525 () Bool)

(assert (=> b!2704804 m!3094525))

(declare-fun m!3094527 () Bool)

(assert (=> b!2704804 m!3094527))

(declare-fun m!3094529 () Bool)

(assert (=> b!2704804 m!3094529))

(declare-fun m!3094531 () Bool)

(assert (=> b!2704804 m!3094531))

(declare-fun m!3094533 () Bool)

(assert (=> b!2704804 m!3094533))

(assert (=> b!2704804 m!3094529))

(declare-fun m!3094535 () Bool)

(assert (=> b!2704804 m!3094535))

(declare-fun m!3094537 () Bool)

(assert (=> b!2704804 m!3094537))

(declare-fun m!3094539 () Bool)

(assert (=> b!2704804 m!3094539))

(assert (=> b!2704804 m!3094521))

(declare-fun m!3094541 () Bool)

(assert (=> b!2704804 m!3094541))

(declare-fun m!3094543 () Bool)

(assert (=> b!2704804 m!3094543))

(declare-fun m!3094545 () Bool)

(assert (=> b!2704804 m!3094545))

(declare-fun m!3094547 () Bool)

(assert (=> b!2704804 m!3094547))

(declare-fun m!3094549 () Bool)

(assert (=> b!2704804 m!3094549))

(declare-fun m!3094551 () Bool)

(assert (=> b!2704804 m!3094551))

(assert (=> b!2704804 m!3094525))

(declare-fun m!3094553 () Bool)

(assert (=> b!2704804 m!3094553))

(assert (=> b!2704804 m!3093953))

(assert (=> b!2704804 m!3094517))

(declare-fun m!3094555 () Bool)

(assert (=> b!2704804 m!3094555))

(declare-fun m!3094557 () Bool)

(assert (=> b!2704804 m!3094557))

(assert (=> b!2704804 m!3094527))

(declare-fun m!3094559 () Bool)

(assert (=> b!2704804 m!3094559))

(assert (=> b!2704804 m!3094521))

(declare-fun m!3094561 () Bool)

(assert (=> b!2704804 m!3094561))

(assert (=> b!2704804 m!3094555))

(assert (=> b!2704804 m!3094555))

(declare-fun m!3094563 () Bool)

(assert (=> b!2704804 m!3094563))

(assert (=> b!2704804 m!3093917))

(assert (=> b!2704804 m!3094561))

(declare-fun m!3094565 () Bool)

(assert (=> b!2704804 m!3094565))

(assert (=> b!2704804 m!3094547))

(assert (=> b!2704804 m!3094541))

(declare-fun m!3094567 () Bool)

(assert (=> b!2704804 m!3094567))

(declare-fun m!3094569 () Bool)

(assert (=> b!2704804 m!3094569))

(assert (=> b!2704804 m!3094533))

(declare-fun m!3094571 () Bool)

(assert (=> b!2704804 m!3094571))

(declare-fun m!3094573 () Bool)

(assert (=> b!2704804 m!3094573))

(assert (=> b!2704804 m!3094523))

(declare-fun m!3094575 () Bool)

(assert (=> b!2704804 m!3094575))

(assert (=> b!2704804 m!3094537))

(declare-fun m!3094577 () Bool)

(assert (=> b!2704804 m!3094577))

(declare-fun m!3094579 () Bool)

(assert (=> b!2704805 m!3094579))

(declare-fun m!3094581 () Bool)

(assert (=> b!2704805 m!3094581))

(declare-fun m!3094583 () Bool)

(assert (=> b!2704806 m!3094583))

(assert (=> b!2704806 m!3093953))

(declare-fun m!3094585 () Bool)

(assert (=> b!2704806 m!3094585))

(assert (=> d!777136 m!3093933))

(declare-fun m!3094587 () Bool)

(assert (=> d!777136 m!3094587))

(assert (=> d!777136 m!3094547))

(declare-fun m!3094589 () Bool)

(assert (=> d!777136 m!3094589))

(declare-fun m!3094591 () Bool)

(assert (=> d!777136 m!3094591))

(declare-fun m!3094593 () Bool)

(assert (=> d!777136 m!3094593))

(assert (=> d!777136 m!3094589))

(declare-fun m!3094595 () Bool)

(assert (=> d!777136 m!3094595))

(assert (=> d!777136 m!3093953))

(declare-fun m!3094597 () Bool)

(assert (=> d!777136 m!3094597))

(assert (=> b!2704535 d!777136))

(declare-fun d!777138 () Bool)

(assert (=> d!777138 (= (inv!42252 (tag!5263 (h!36612 rules!1381))) (= (mod (str.len (value!153245 (tag!5263 (h!36612 rules!1381)))) 2) 0))))

(assert (=> b!2704516 d!777138))

(declare-fun d!777140 () Bool)

(declare-fun res!1135862 () Bool)

(declare-fun e!1705343 () Bool)

(assert (=> d!777140 (=> (not res!1135862) (not e!1705343))))

(declare-fun semiInverseModEq!1966 (Int Int) Bool)

(assert (=> d!777140 (= res!1135862 (semiInverseModEq!1966 (toChars!6580 (transformation!4759 (h!36612 rules!1381))) (toValue!6721 (transformation!4759 (h!36612 rules!1381)))))))

(assert (=> d!777140 (= (inv!42255 (transformation!4759 (h!36612 rules!1381))) e!1705343)))

(declare-fun b!2704810 () Bool)

(declare-fun equivClasses!1867 (Int Int) Bool)

(assert (=> b!2704810 (= e!1705343 (equivClasses!1867 (toChars!6580 (transformation!4759 (h!36612 rules!1381))) (toValue!6721 (transformation!4759 (h!36612 rules!1381)))))))

(assert (= (and d!777140 res!1135862) b!2704810))

(declare-fun m!3094599 () Bool)

(assert (=> d!777140 m!3094599))

(declare-fun m!3094601 () Bool)

(assert (=> b!2704810 m!3094601))

(assert (=> b!2704516 d!777140))

(declare-fun d!777142 () Bool)

(assert (=> d!777142 (= (list!11769 (_1!18043 lt!956257)) (list!11771 (c!436396 (_1!18043 lt!956257))))))

(declare-fun bs!487271 () Bool)

(assert (= bs!487271 d!777142))

(declare-fun m!3094603 () Bool)

(assert (=> bs!487271 m!3094603))

(assert (=> b!2704533 d!777142))

(declare-fun d!777144 () Bool)

(declare-fun c!436469 () Bool)

(assert (=> d!777144 (= c!436469 ((_ is Node!9747) (c!436395 totalInput!354)))))

(declare-fun e!1705348 () Bool)

(assert (=> d!777144 (= (inv!42256 (c!436395 totalInput!354)) e!1705348)))

(declare-fun b!2704817 () Bool)

(declare-fun inv!42264 (Conc!9747) Bool)

(assert (=> b!2704817 (= e!1705348 (inv!42264 (c!436395 totalInput!354)))))

(declare-fun b!2704818 () Bool)

(declare-fun e!1705349 () Bool)

(assert (=> b!2704818 (= e!1705348 e!1705349)))

(declare-fun res!1135865 () Bool)

(assert (=> b!2704818 (= res!1135865 (not ((_ is Leaf!14871) (c!436395 totalInput!354))))))

(assert (=> b!2704818 (=> res!1135865 e!1705349)))

(declare-fun b!2704819 () Bool)

(declare-fun inv!42265 (Conc!9747) Bool)

(assert (=> b!2704819 (= e!1705349 (inv!42265 (c!436395 totalInput!354)))))

(assert (= (and d!777144 c!436469) b!2704817))

(assert (= (and d!777144 (not c!436469)) b!2704818))

(assert (= (and b!2704818 (not res!1135865)) b!2704819))

(declare-fun m!3094605 () Bool)

(assert (=> b!2704817 m!3094605))

(declare-fun m!3094607 () Bool)

(assert (=> b!2704819 m!3094607))

(assert (=> b!2704527 d!777144))

(declare-fun d!777146 () Bool)

(assert (=> d!777146 (= (valid!2759 cacheDown!499) (validCacheMapDown!360 (cache!3600 cacheDown!499)))))

(declare-fun bs!487272 () Bool)

(assert (= bs!487272 d!777146))

(assert (=> bs!487272 m!3094493))

(assert (=> b!2704548 d!777146))

(declare-fun d!777148 () Bool)

(declare-fun c!436470 () Bool)

(assert (=> d!777148 (= c!436470 ((_ is Node!9747) (c!436395 treated!26)))))

(declare-fun e!1705350 () Bool)

(assert (=> d!777148 (= (inv!42256 (c!436395 treated!26)) e!1705350)))

(declare-fun b!2704820 () Bool)

(assert (=> b!2704820 (= e!1705350 (inv!42264 (c!436395 treated!26)))))

(declare-fun b!2704821 () Bool)

(declare-fun e!1705351 () Bool)

(assert (=> b!2704821 (= e!1705350 e!1705351)))

(declare-fun res!1135866 () Bool)

(assert (=> b!2704821 (= res!1135866 (not ((_ is Leaf!14871) (c!436395 treated!26))))))

(assert (=> b!2704821 (=> res!1135866 e!1705351)))

(declare-fun b!2704822 () Bool)

(assert (=> b!2704822 (= e!1705351 (inv!42265 (c!436395 treated!26)))))

(assert (= (and d!777148 c!436470) b!2704820))

(assert (= (and d!777148 (not c!436470)) b!2704821))

(assert (= (and b!2704821 (not res!1135866)) b!2704822))

(declare-fun m!3094609 () Bool)

(assert (=> b!2704820 m!3094609))

(declare-fun m!3094611 () Bool)

(assert (=> b!2704822 m!3094611))

(assert (=> b!2704526 d!777148))

(declare-fun d!777150 () Bool)

(declare-fun c!436471 () Bool)

(assert (=> d!777150 (= c!436471 ((_ is Node!9747) (c!436395 input!780)))))

(declare-fun e!1705352 () Bool)

(assert (=> d!777150 (= (inv!42256 (c!436395 input!780)) e!1705352)))

(declare-fun b!2704823 () Bool)

(assert (=> b!2704823 (= e!1705352 (inv!42264 (c!436395 input!780)))))

(declare-fun b!2704824 () Bool)

(declare-fun e!1705353 () Bool)

(assert (=> b!2704824 (= e!1705352 e!1705353)))

(declare-fun res!1135867 () Bool)

(assert (=> b!2704824 (= res!1135867 (not ((_ is Leaf!14871) (c!436395 input!780))))))

(assert (=> b!2704824 (=> res!1135867 e!1705353)))

(declare-fun b!2704825 () Bool)

(assert (=> b!2704825 (= e!1705353 (inv!42265 (c!436395 input!780)))))

(assert (= (and d!777150 c!436471) b!2704823))

(assert (= (and d!777150 (not c!436471)) b!2704824))

(assert (= (and b!2704824 (not res!1135867)) b!2704825))

(declare-fun m!3094613 () Bool)

(assert (=> b!2704823 m!3094613))

(declare-fun m!3094615 () Bool)

(assert (=> b!2704825 m!3094615))

(assert (=> b!2704547 d!777150))

(declare-fun d!777152 () Bool)

(assert (=> d!777152 (= (valid!2758 cacheUp!486) (validCacheMapUp!329 (cache!3599 cacheUp!486)))))

(declare-fun bs!487273 () Bool)

(assert (= bs!487273 d!777152))

(assert (=> bs!487273 m!3094491))

(assert (=> b!2704530 d!777152))

(declare-fun d!777154 () Bool)

(assert (=> d!777154 (= (array_inv!4038 (_keys!3850 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))))) (bvsge (size!24089 (_keys!3850 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2704551 d!777154))

(declare-fun d!777156 () Bool)

(assert (=> d!777156 (= (array_inv!4040 (_values!3831 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))))) (bvsge (size!24090 (_values!3831 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2704551 d!777156))

(declare-fun d!777158 () Bool)

(declare-fun res!1135870 () Bool)

(declare-fun e!1705356 () Bool)

(assert (=> d!777158 (=> (not res!1135870) (not e!1705356))))

(declare-fun rulesValid!1772 (LexerInterface!4355 List!31292) Bool)

(assert (=> d!777158 (= res!1135870 (rulesValid!1772 thiss!12257 rules!1381))))

(assert (=> d!777158 (= (rulesInvariant!3840 thiss!12257 rules!1381) e!1705356)))

(declare-fun b!2704828 () Bool)

(declare-datatypes ((List!31296 0))(
  ( (Nil!31196) (Cons!31196 (h!36616 String!34805) (t!225734 List!31296)) )
))
(declare-fun noDuplicateTag!1768 (LexerInterface!4355 List!31292 List!31296) Bool)

(assert (=> b!2704828 (= e!1705356 (noDuplicateTag!1768 thiss!12257 rules!1381 Nil!31196))))

(assert (= (and d!777158 res!1135870) b!2704828))

(declare-fun m!3094617 () Bool)

(assert (=> d!777158 m!3094617))

(declare-fun m!3094619 () Bool)

(assert (=> b!2704828 m!3094619))

(assert (=> b!2704528 d!777158))

(declare-fun d!777160 () Bool)

(assert (=> d!777160 (= (list!11769 (_1!18043 lt!956247)) (list!11771 (c!436396 (_1!18043 lt!956247))))))

(declare-fun bs!487274 () Bool)

(assert (= bs!487274 d!777160))

(declare-fun m!3094621 () Bool)

(assert (=> bs!487274 m!3094621))

(assert (=> b!2704521 d!777160))

(declare-fun lt!956578 () BalanceConc!19110)

(declare-fun e!1705359 () Bool)

(declare-fun b!2704840 () Bool)

(assert (=> b!2704840 (= e!1705359 (= (list!11769 lt!956578) (++!7670 (list!11769 acc!348) (list!11769 (_1!18043 lt!956234)))))))

(declare-fun b!2704838 () Bool)

(declare-fun res!1135881 () Bool)

(assert (=> b!2704838 (=> (not res!1135881) (not e!1705359))))

(declare-fun height!1434 (Conc!9748) Int)

(declare-fun ++!7673 (Conc!9748 Conc!9748) Conc!9748)

(assert (=> b!2704838 (= res!1135881 (<= (height!1434 (++!7673 (c!436396 acc!348) (c!436396 (_1!18043 lt!956234)))) (+ (max!0 (height!1434 (c!436396 acc!348)) (height!1434 (c!436396 (_1!18043 lt!956234)))) 1)))))

(declare-fun b!2704837 () Bool)

(declare-fun res!1135879 () Bool)

(assert (=> b!2704837 (=> (not res!1135879) (not e!1705359))))

(assert (=> b!2704837 (= res!1135879 (isBalanced!2951 (++!7673 (c!436396 acc!348) (c!436396 (_1!18043 lt!956234)))))))

(declare-fun b!2704839 () Bool)

(declare-fun res!1135882 () Bool)

(assert (=> b!2704839 (=> (not res!1135882) (not e!1705359))))

(assert (=> b!2704839 (= res!1135882 (>= (height!1434 (++!7673 (c!436396 acc!348) (c!436396 (_1!18043 lt!956234)))) (max!0 (height!1434 (c!436396 acc!348)) (height!1434 (c!436396 (_1!18043 lt!956234))))))))

(declare-fun d!777162 () Bool)

(assert (=> d!777162 e!1705359))

(declare-fun res!1135880 () Bool)

(assert (=> d!777162 (=> (not res!1135880) (not e!1705359))))

(declare-fun appendAssocInst!673 (Conc!9748 Conc!9748) Bool)

(assert (=> d!777162 (= res!1135880 (appendAssocInst!673 (c!436396 acc!348) (c!436396 (_1!18043 lt!956234))))))

(assert (=> d!777162 (= lt!956578 (BalanceConc!19111 (++!7673 (c!436396 acc!348) (c!436396 (_1!18043 lt!956234)))))))

(assert (=> d!777162 (= (++!7669 acc!348 (_1!18043 lt!956234)) lt!956578)))

(assert (= (and d!777162 res!1135880) b!2704837))

(assert (= (and b!2704837 res!1135879) b!2704838))

(assert (= (and b!2704838 res!1135881) b!2704839))

(assert (= (and b!2704839 res!1135882) b!2704840))

(declare-fun m!3094623 () Bool)

(assert (=> b!2704840 m!3094623))

(assert (=> b!2704840 m!3094017))

(declare-fun m!3094625 () Bool)

(assert (=> b!2704840 m!3094625))

(assert (=> b!2704840 m!3094017))

(assert (=> b!2704840 m!3094625))

(declare-fun m!3094627 () Bool)

(assert (=> b!2704840 m!3094627))

(declare-fun m!3094629 () Bool)

(assert (=> b!2704837 m!3094629))

(assert (=> b!2704837 m!3094629))

(declare-fun m!3094631 () Bool)

(assert (=> b!2704837 m!3094631))

(declare-fun m!3094633 () Bool)

(assert (=> d!777162 m!3094633))

(assert (=> d!777162 m!3094629))

(declare-fun m!3094635 () Bool)

(assert (=> b!2704838 m!3094635))

(assert (=> b!2704838 m!3094629))

(declare-fun m!3094637 () Bool)

(assert (=> b!2704838 m!3094637))

(assert (=> b!2704838 m!3094635))

(declare-fun m!3094639 () Bool)

(assert (=> b!2704838 m!3094639))

(declare-fun m!3094641 () Bool)

(assert (=> b!2704838 m!3094641))

(assert (=> b!2704838 m!3094629))

(assert (=> b!2704838 m!3094639))

(assert (=> b!2704839 m!3094635))

(assert (=> b!2704839 m!3094629))

(assert (=> b!2704839 m!3094637))

(assert (=> b!2704839 m!3094635))

(assert (=> b!2704839 m!3094639))

(assert (=> b!2704839 m!3094641))

(assert (=> b!2704839 m!3094629))

(assert (=> b!2704839 m!3094639))

(assert (=> b!2704521 d!777162))

(declare-fun b!2704841 () Bool)

(declare-fun res!1135885 () Bool)

(declare-fun e!1705362 () Bool)

(assert (=> b!2704841 (=> (not res!1135885) (not e!1705362))))

(declare-fun lt!956580 () tuple2!30826)

(assert (=> b!2704841 (= res!1135885 (= (list!11769 (_1!18043 lt!956580)) (_1!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 input!780)))))))

(declare-fun b!2704842 () Bool)

(declare-fun e!1705361 () Bool)

(assert (=> b!2704842 (= e!1705361 (= (list!11768 (_2!18043 lt!956580)) (list!11768 input!780)))))

(declare-fun d!777164 () Bool)

(assert (=> d!777164 e!1705362))

(declare-fun res!1135883 () Bool)

(assert (=> d!777164 (=> (not res!1135883) (not e!1705362))))

(assert (=> d!777164 (= res!1135883 e!1705361)))

(declare-fun c!436476 () Bool)

(assert (=> d!777164 (= c!436476 (> (size!24092 (_1!18043 lt!956580)) 0))))

(declare-fun e!1705363 () tuple2!30826)

(assert (=> d!777164 (= lt!956580 e!1705363)))

(declare-fun c!436475 () Bool)

(declare-fun lt!956579 () Option!6154)

(assert (=> d!777164 (= c!436475 ((_ is Some!6153) lt!956579))))

(assert (=> d!777164 (= lt!956579 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 input!780))))

(assert (=> d!777164 (= (lexRec!617 thiss!12257 rules!1381 input!780) lt!956580)))

(declare-fun b!2704843 () Bool)

(declare-fun e!1705360 () Bool)

(assert (=> b!2704843 (= e!1705361 e!1705360)))

(declare-fun res!1135884 () Bool)

(assert (=> b!2704843 (= res!1135884 (< (size!24093 (_2!18043 lt!956580)) (size!24093 input!780)))))

(assert (=> b!2704843 (=> (not res!1135884) (not e!1705360))))

(declare-fun b!2704844 () Bool)

(assert (=> b!2704844 (= e!1705363 (tuple2!30827 (BalanceConc!19111 Empty!9748) input!780))))

(declare-fun b!2704845 () Bool)

(assert (=> b!2704845 (= e!1705360 (not (isEmpty!17767 (_1!18043 lt!956580))))))

(declare-fun b!2704846 () Bool)

(assert (=> b!2704846 (= e!1705362 (= (list!11768 (_2!18043 lt!956580)) (_2!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 input!780)))))))

(declare-fun b!2704847 () Bool)

(declare-fun lt!956581 () tuple2!30826)

(assert (=> b!2704847 (= e!1705363 (tuple2!30827 (prepend!1092 (_1!18043 lt!956581) (_1!18048 (v!32961 lt!956579))) (_2!18043 lt!956581)))))

(assert (=> b!2704847 (= lt!956581 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956579))))))

(assert (= (and d!777164 c!436475) b!2704847))

(assert (= (and d!777164 (not c!436475)) b!2704844))

(assert (= (and d!777164 c!436476) b!2704843))

(assert (= (and d!777164 (not c!436476)) b!2704842))

(assert (= (and b!2704843 res!1135884) b!2704845))

(assert (= (and d!777164 res!1135883) b!2704841))

(assert (= (and b!2704841 res!1135885) b!2704846))

(declare-fun m!3094643 () Bool)

(assert (=> b!2704841 m!3094643))

(assert (=> b!2704841 m!3093933))

(assert (=> b!2704841 m!3093933))

(assert (=> b!2704841 m!3094505))

(declare-fun m!3094645 () Bool)

(assert (=> b!2704845 m!3094645))

(declare-fun m!3094647 () Bool)

(assert (=> b!2704846 m!3094647))

(assert (=> b!2704846 m!3093933))

(assert (=> b!2704846 m!3093933))

(assert (=> b!2704846 m!3094505))

(declare-fun m!3094649 () Bool)

(assert (=> b!2704847 m!3094649))

(declare-fun m!3094651 () Bool)

(assert (=> b!2704847 m!3094651))

(declare-fun m!3094653 () Bool)

(assert (=> b!2704843 m!3094653))

(assert (=> b!2704843 m!3094509))

(assert (=> b!2704842 m!3094647))

(assert (=> b!2704842 m!3093933))

(declare-fun m!3094655 () Bool)

(assert (=> d!777164 m!3094655))

(assert (=> d!777164 m!3093917))

(assert (=> b!2704521 d!777164))

(declare-fun d!777166 () Bool)

(assert (=> d!777166 (= (list!11769 (++!7669 acc!348 (_1!18043 lt!956234))) (list!11771 (c!436396 (++!7669 acc!348 (_1!18043 lt!956234)))))))

(declare-fun bs!487275 () Bool)

(assert (= bs!487275 d!777166))

(declare-fun m!3094657 () Bool)

(assert (=> bs!487275 m!3094657))

(assert (=> b!2704521 d!777166))

(declare-fun b!2704848 () Bool)

(declare-fun res!1135888 () Bool)

(declare-fun e!1705366 () Bool)

(assert (=> b!2704848 (=> (not res!1135888) (not e!1705366))))

(declare-fun lt!956583 () tuple2!30826)

(assert (=> b!2704848 (= res!1135888 (= (list!11769 (_1!18043 lt!956583)) (_1!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 totalInput!354)))))))

(declare-fun b!2704849 () Bool)

(declare-fun e!1705365 () Bool)

(assert (=> b!2704849 (= e!1705365 (= (list!11768 (_2!18043 lt!956583)) (list!11768 totalInput!354)))))

(declare-fun d!777168 () Bool)

(assert (=> d!777168 e!1705366))

(declare-fun res!1135886 () Bool)

(assert (=> d!777168 (=> (not res!1135886) (not e!1705366))))

(assert (=> d!777168 (= res!1135886 e!1705365)))

(declare-fun c!436478 () Bool)

(assert (=> d!777168 (= c!436478 (> (size!24092 (_1!18043 lt!956583)) 0))))

(declare-fun e!1705367 () tuple2!30826)

(assert (=> d!777168 (= lt!956583 e!1705367)))

(declare-fun c!436477 () Bool)

(declare-fun lt!956582 () Option!6154)

(assert (=> d!777168 (= c!436477 ((_ is Some!6153) lt!956582))))

(assert (=> d!777168 (= lt!956582 (maxPrefixZipperSequence!1015 thiss!12257 rules!1381 totalInput!354))))

(assert (=> d!777168 (= (lexRec!617 thiss!12257 rules!1381 totalInput!354) lt!956583)))

(declare-fun b!2704850 () Bool)

(declare-fun e!1705364 () Bool)

(assert (=> b!2704850 (= e!1705365 e!1705364)))

(declare-fun res!1135887 () Bool)

(assert (=> b!2704850 (= res!1135887 (< (size!24093 (_2!18043 lt!956583)) (size!24093 totalInput!354)))))

(assert (=> b!2704850 (=> (not res!1135887) (not e!1705364))))

(declare-fun b!2704851 () Bool)

(assert (=> b!2704851 (= e!1705367 (tuple2!30827 (BalanceConc!19111 Empty!9748) totalInput!354))))

(declare-fun b!2704852 () Bool)

(assert (=> b!2704852 (= e!1705364 (not (isEmpty!17767 (_1!18043 lt!956583))))))

(declare-fun b!2704853 () Bool)

(assert (=> b!2704853 (= e!1705366 (= (list!11768 (_2!18043 lt!956583)) (_2!18049 (lexList!1202 thiss!12257 rules!1381 (list!11768 totalInput!354)))))))

(declare-fun b!2704854 () Bool)

(declare-fun lt!956584 () tuple2!30826)

(assert (=> b!2704854 (= e!1705367 (tuple2!30827 (prepend!1092 (_1!18043 lt!956584) (_1!18048 (v!32961 lt!956582))) (_2!18043 lt!956584)))))

(assert (=> b!2704854 (= lt!956584 (lexRec!617 thiss!12257 rules!1381 (_2!18048 (v!32961 lt!956582))))))

(assert (= (and d!777168 c!436477) b!2704854))

(assert (= (and d!777168 (not c!436477)) b!2704851))

(assert (= (and d!777168 c!436478) b!2704850))

(assert (= (and d!777168 (not c!436478)) b!2704849))

(assert (= (and b!2704850 res!1135887) b!2704852))

(assert (= (and d!777168 res!1135886) b!2704848))

(assert (= (and b!2704848 res!1135888) b!2704853))

(declare-fun m!3094659 () Bool)

(assert (=> b!2704848 m!3094659))

(assert (=> b!2704848 m!3093929))

(assert (=> b!2704848 m!3093929))

(declare-fun m!3094661 () Bool)

(assert (=> b!2704848 m!3094661))

(declare-fun m!3094663 () Bool)

(assert (=> b!2704852 m!3094663))

(declare-fun m!3094665 () Bool)

(assert (=> b!2704853 m!3094665))

(assert (=> b!2704853 m!3093929))

(assert (=> b!2704853 m!3093929))

(assert (=> b!2704853 m!3094661))

(declare-fun m!3094667 () Bool)

(assert (=> b!2704854 m!3094667))

(declare-fun m!3094669 () Bool)

(assert (=> b!2704854 m!3094669))

(declare-fun m!3094671 () Bool)

(assert (=> b!2704850 m!3094671))

(declare-fun m!3094673 () Bool)

(assert (=> b!2704850 m!3094673))

(assert (=> b!2704849 m!3094665))

(assert (=> b!2704849 m!3093929))

(declare-fun m!3094675 () Bool)

(assert (=> d!777168 m!3094675))

(declare-fun m!3094677 () Bool)

(assert (=> d!777168 m!3094677))

(assert (=> b!2704521 d!777168))

(declare-fun d!777170 () Bool)

(assert (=> d!777170 (= (array_inv!4038 (_keys!3851 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))))) (bvsge (size!24089 (_keys!3851 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2704542 d!777170))

(declare-fun d!777172 () Bool)

(assert (=> d!777172 (= (array_inv!4039 (_values!3832 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))))) (bvsge (size!24091 (_values!3832 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2704542 d!777172))

(declare-fun d!777174 () Bool)

(declare-fun e!1705368 () Bool)

(assert (=> d!777174 e!1705368))

(declare-fun res!1135889 () Bool)

(assert (=> d!777174 (=> (not res!1135889) (not e!1705368))))

(assert (=> d!777174 (= res!1135889 (isBalanced!2951 (prepend!1093 (c!436396 (_1!18043 lt!956244)) (_1!18048 (v!32961 lt!956241)))))))

(declare-fun lt!956585 () BalanceConc!19110)

(assert (=> d!777174 (= lt!956585 (BalanceConc!19111 (prepend!1093 (c!436396 (_1!18043 lt!956244)) (_1!18048 (v!32961 lt!956241)))))))

(assert (=> d!777174 (= (prepend!1092 (_1!18043 lt!956244) (_1!18048 (v!32961 lt!956241))) lt!956585)))

(declare-fun b!2704855 () Bool)

(assert (=> b!2704855 (= e!1705368 (= (list!11769 lt!956585) (Cons!31191 (_1!18048 (v!32961 lt!956241)) (list!11769 (_1!18043 lt!956244)))))))

(assert (= (and d!777174 res!1135889) b!2704855))

(declare-fun m!3094679 () Bool)

(assert (=> d!777174 m!3094679))

(assert (=> d!777174 m!3094679))

(declare-fun m!3094681 () Bool)

(assert (=> d!777174 m!3094681))

(declare-fun m!3094683 () Bool)

(assert (=> b!2704855 m!3094683))

(assert (=> b!2704855 m!3093985))

(assert (=> b!2704541 d!777174))

(declare-fun d!777176 () Bool)

(assert (=> d!777176 (= (list!11768 (_2!18043 lt!956257)) (list!11770 (c!436395 (_2!18043 lt!956257))))))

(declare-fun bs!487276 () Bool)

(assert (= bs!487276 d!777176))

(declare-fun m!3094685 () Bool)

(assert (=> bs!487276 m!3094685))

(assert (=> b!2704544 d!777176))

(declare-fun e!1705373 () Bool)

(declare-fun tp!855351 () Bool)

(declare-fun b!2704864 () Bool)

(declare-fun tp!855353 () Bool)

(assert (=> b!2704864 (= e!1705373 (and (inv!42256 (left!24000 (c!436395 totalInput!354))) tp!855353 (inv!42256 (right!24330 (c!436395 totalInput!354))) tp!855351))))

(declare-fun b!2704866 () Bool)

(declare-fun e!1705374 () Bool)

(declare-fun tp!855352 () Bool)

(assert (=> b!2704866 (= e!1705374 tp!855352)))

(declare-fun b!2704865 () Bool)

(declare-fun inv!42266 (IArray!19499) Bool)

(assert (=> b!2704865 (= e!1705373 (and (inv!42266 (xs!12795 (c!436395 totalInput!354))) e!1705374))))

(assert (=> b!2704527 (= tp!855330 (and (inv!42256 (c!436395 totalInput!354)) e!1705373))))

(assert (= (and b!2704527 ((_ is Node!9747) (c!436395 totalInput!354))) b!2704864))

(assert (= b!2704865 b!2704866))

(assert (= (and b!2704527 ((_ is Leaf!14871) (c!436395 totalInput!354))) b!2704865))

(declare-fun m!3094687 () Bool)

(assert (=> b!2704864 m!3094687))

(declare-fun m!3094689 () Bool)

(assert (=> b!2704864 m!3094689))

(declare-fun m!3094691 () Bool)

(assert (=> b!2704865 m!3094691))

(assert (=> b!2704527 m!3094025))

(declare-fun b!2704867 () Bool)

(declare-fun e!1705375 () Bool)

(declare-fun tp!855356 () Bool)

(declare-fun tp!855354 () Bool)

(assert (=> b!2704867 (= e!1705375 (and (inv!42256 (left!24000 (c!436395 treated!26))) tp!855356 (inv!42256 (right!24330 (c!436395 treated!26))) tp!855354))))

(declare-fun b!2704869 () Bool)

(declare-fun e!1705376 () Bool)

(declare-fun tp!855355 () Bool)

(assert (=> b!2704869 (= e!1705376 tp!855355)))

(declare-fun b!2704868 () Bool)

(assert (=> b!2704868 (= e!1705375 (and (inv!42266 (xs!12795 (c!436395 treated!26))) e!1705376))))

(assert (=> b!2704526 (= tp!855324 (and (inv!42256 (c!436395 treated!26)) e!1705375))))

(assert (= (and b!2704526 ((_ is Node!9747) (c!436395 treated!26))) b!2704867))

(assert (= b!2704868 b!2704869))

(assert (= (and b!2704526 ((_ is Leaf!14871) (c!436395 treated!26))) b!2704868))

(declare-fun m!3094693 () Bool)

(assert (=> b!2704867 m!3094693))

(declare-fun m!3094695 () Bool)

(assert (=> b!2704867 m!3094695))

(declare-fun m!3094697 () Bool)

(assert (=> b!2704868 m!3094697))

(assert (=> b!2704526 m!3093927))

(declare-fun tp!855357 () Bool)

(declare-fun b!2704870 () Bool)

(declare-fun e!1705377 () Bool)

(declare-fun tp!855359 () Bool)

(assert (=> b!2704870 (= e!1705377 (and (inv!42256 (left!24000 (c!436395 input!780))) tp!855359 (inv!42256 (right!24330 (c!436395 input!780))) tp!855357))))

(declare-fun b!2704872 () Bool)

(declare-fun e!1705378 () Bool)

(declare-fun tp!855358 () Bool)

(assert (=> b!2704872 (= e!1705378 tp!855358)))

(declare-fun b!2704871 () Bool)

(assert (=> b!2704871 (= e!1705377 (and (inv!42266 (xs!12795 (c!436395 input!780))) e!1705378))))

(assert (=> b!2704547 (= tp!855341 (and (inv!42256 (c!436395 input!780)) e!1705377))))

(assert (= (and b!2704547 ((_ is Node!9747) (c!436395 input!780))) b!2704870))

(assert (= b!2704871 b!2704872))

(assert (= (and b!2704547 ((_ is Leaf!14871) (c!436395 input!780))) b!2704871))

(declare-fun m!3094699 () Bool)

(assert (=> b!2704870 m!3094699))

(declare-fun m!3094701 () Bool)

(assert (=> b!2704870 m!3094701))

(declare-fun m!3094703 () Bool)

(assert (=> b!2704871 m!3094703))

(assert (=> b!2704547 m!3093919))

(declare-fun mapValue!16227 () List!31294)

(declare-fun b!2704887 () Bool)

(declare-fun e!1705391 () Bool)

(declare-fun tp_is_empty!13861 () Bool)

(declare-fun setRes!21431 () Bool)

(declare-fun tp!855383 () Bool)

(declare-fun e!1705392 () Bool)

(declare-fun inv!42267 (Context!4370) Bool)

(assert (=> b!2704887 (= e!1705391 (and (inv!42267 (_1!18044 (_1!18045 (h!36614 mapValue!16227)))) e!1705392 tp_is_empty!13861 setRes!21431 tp!855383))))

(declare-fun condSetEmpty!21432 () Bool)

(assert (=> b!2704887 (= condSetEmpty!21432 (= (_2!18045 (h!36614 mapValue!16227)) ((as const (Array Context!4370 Bool)) false)))))

(declare-fun mapIsEmpty!16227 () Bool)

(declare-fun mapRes!16227 () Bool)

(assert (=> mapIsEmpty!16227 mapRes!16227))

(declare-fun b!2704888 () Bool)

(declare-fun e!1705395 () Bool)

(declare-fun tp!855380 () Bool)

(assert (=> b!2704888 (= e!1705395 tp!855380)))

(declare-fun condMapEmpty!16227 () Bool)

(declare-fun mapDefault!16227 () List!31294)

(assert (=> mapNonEmpty!16223 (= condMapEmpty!16227 (= mapRest!16223 ((as const (Array (_ BitVec 32) List!31294)) mapDefault!16227)))))

(declare-fun e!1705393 () Bool)

(assert (=> mapNonEmpty!16223 (= tp!855334 (and e!1705393 mapRes!16227))))

(declare-fun tp!855385 () Bool)

(declare-fun setRes!21432 () Bool)

(declare-fun setElem!21431 () Context!4370)

(declare-fun e!1705394 () Bool)

(declare-fun setNonEmpty!21431 () Bool)

(assert (=> setNonEmpty!21431 (= setRes!21432 (and tp!855385 (inv!42267 setElem!21431) e!1705394))))

(declare-fun setRest!21431 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21431 (= (_2!18045 (h!36614 mapDefault!16227)) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21431 true) setRest!21431))))

(declare-fun b!2704889 () Bool)

(declare-fun tp!855381 () Bool)

(assert (=> b!2704889 (= e!1705394 tp!855381)))

(declare-fun setIsEmpty!21431 () Bool)

(assert (=> setIsEmpty!21431 setRes!21431))

(declare-fun setNonEmpty!21432 () Bool)

(declare-fun setElem!21432 () Context!4370)

(declare-fun e!1705396 () Bool)

(declare-fun tp!855379 () Bool)

(assert (=> setNonEmpty!21432 (= setRes!21431 (and tp!855379 (inv!42267 setElem!21432) e!1705396))))

(declare-fun setRest!21432 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21432 (= (_2!18045 (h!36614 mapValue!16227)) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21432 true) setRest!21432))))

(declare-fun setIsEmpty!21432 () Bool)

(assert (=> setIsEmpty!21432 setRes!21432))

(declare-fun mapNonEmpty!16227 () Bool)

(declare-fun tp!855384 () Bool)

(assert (=> mapNonEmpty!16227 (= mapRes!16227 (and tp!855384 e!1705391))))

(declare-fun mapKey!16227 () (_ BitVec 32))

(declare-fun mapRest!16227 () (Array (_ BitVec 32) List!31294))

(assert (=> mapNonEmpty!16227 (= mapRest!16223 (store mapRest!16227 mapKey!16227 mapValue!16227))))

(declare-fun b!2704890 () Bool)

(declare-fun tp!855378 () Bool)

(assert (=> b!2704890 (= e!1705396 tp!855378)))

(declare-fun b!2704891 () Bool)

(declare-fun tp!855386 () Bool)

(assert (=> b!2704891 (= e!1705392 tp!855386)))

(declare-fun b!2704892 () Bool)

(declare-fun tp!855382 () Bool)

(assert (=> b!2704892 (= e!1705393 (and (inv!42267 (_1!18044 (_1!18045 (h!36614 mapDefault!16227)))) e!1705395 tp_is_empty!13861 setRes!21432 tp!855382))))

(declare-fun condSetEmpty!21431 () Bool)

(assert (=> b!2704892 (= condSetEmpty!21431 (= (_2!18045 (h!36614 mapDefault!16227)) ((as const (Array Context!4370 Bool)) false)))))

(assert (= (and mapNonEmpty!16223 condMapEmpty!16227) mapIsEmpty!16227))

(assert (= (and mapNonEmpty!16223 (not condMapEmpty!16227)) mapNonEmpty!16227))

(assert (= b!2704887 b!2704891))

(assert (= (and b!2704887 condSetEmpty!21432) setIsEmpty!21431))

(assert (= (and b!2704887 (not condSetEmpty!21432)) setNonEmpty!21432))

(assert (= setNonEmpty!21432 b!2704890))

(assert (= (and mapNonEmpty!16227 ((_ is Cons!31194) mapValue!16227)) b!2704887))

(assert (= b!2704892 b!2704888))

(assert (= (and b!2704892 condSetEmpty!21431) setIsEmpty!21432))

(assert (= (and b!2704892 (not condSetEmpty!21431)) setNonEmpty!21431))

(assert (= setNonEmpty!21431 b!2704889))

(assert (= (and mapNonEmpty!16223 ((_ is Cons!31194) mapDefault!16227)) b!2704892))

(declare-fun m!3094705 () Bool)

(assert (=> b!2704892 m!3094705))

(declare-fun m!3094707 () Bool)

(assert (=> mapNonEmpty!16227 m!3094707))

(declare-fun m!3094709 () Bool)

(assert (=> setNonEmpty!21432 m!3094709))

(declare-fun m!3094711 () Bool)

(assert (=> b!2704887 m!3094711))

(declare-fun m!3094713 () Bool)

(assert (=> setNonEmpty!21431 m!3094713))

(declare-fun b!2704901 () Bool)

(declare-fun e!1705403 () Bool)

(declare-fun tp!855398 () Bool)

(assert (=> b!2704901 (= e!1705403 tp!855398)))

(declare-fun b!2704902 () Bool)

(declare-fun e!1705404 () Bool)

(declare-fun tp!855396 () Bool)

(assert (=> b!2704902 (= e!1705404 tp!855396)))

(declare-fun tp!855397 () Bool)

(declare-fun setRes!21435 () Bool)

(declare-fun b!2704903 () Bool)

(declare-fun e!1705405 () Bool)

(assert (=> b!2704903 (= e!1705405 (and (inv!42267 (_1!18044 (_1!18045 (h!36614 mapValue!16223)))) e!1705403 tp_is_empty!13861 setRes!21435 tp!855397))))

(declare-fun condSetEmpty!21435 () Bool)

(assert (=> b!2704903 (= condSetEmpty!21435 (= (_2!18045 (h!36614 mapValue!16223)) ((as const (Array Context!4370 Bool)) false)))))

(assert (=> mapNonEmpty!16223 (= tp!855328 e!1705405)))

(declare-fun setElem!21435 () Context!4370)

(declare-fun setNonEmpty!21435 () Bool)

(declare-fun tp!855395 () Bool)

(assert (=> setNonEmpty!21435 (= setRes!21435 (and tp!855395 (inv!42267 setElem!21435) e!1705404))))

(declare-fun setRest!21435 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21435 (= (_2!18045 (h!36614 mapValue!16223)) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21435 true) setRest!21435))))

(declare-fun setIsEmpty!21435 () Bool)

(assert (=> setIsEmpty!21435 setRes!21435))

(assert (= b!2704903 b!2704901))

(assert (= (and b!2704903 condSetEmpty!21435) setIsEmpty!21435))

(assert (= (and b!2704903 (not condSetEmpty!21435)) setNonEmpty!21435))

(assert (= setNonEmpty!21435 b!2704902))

(assert (= (and mapNonEmpty!16223 ((_ is Cons!31194) mapValue!16223)) b!2704903))

(declare-fun m!3094715 () Bool)

(assert (=> b!2704903 m!3094715))

(declare-fun m!3094717 () Bool)

(assert (=> setNonEmpty!21435 m!3094717))

(declare-fun b!2704904 () Bool)

(declare-fun e!1705406 () Bool)

(declare-fun tp!855402 () Bool)

(assert (=> b!2704904 (= e!1705406 tp!855402)))

(declare-fun b!2704905 () Bool)

(declare-fun e!1705407 () Bool)

(declare-fun tp!855400 () Bool)

(assert (=> b!2704905 (= e!1705407 tp!855400)))

(declare-fun tp!855401 () Bool)

(declare-fun e!1705408 () Bool)

(declare-fun b!2704906 () Bool)

(declare-fun setRes!21436 () Bool)

(assert (=> b!2704906 (= e!1705408 (and (inv!42267 (_1!18044 (_1!18045 (h!36614 (zeroValue!3809 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486)))))))))) e!1705406 tp_is_empty!13861 setRes!21436 tp!855401))))

(declare-fun condSetEmpty!21436 () Bool)

(assert (=> b!2704906 (= condSetEmpty!21436 (= (_2!18045 (h!36614 (zeroValue!3809 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486)))))))) ((as const (Array Context!4370 Bool)) false)))))

(assert (=> b!2704551 (= tp!855335 e!1705408)))

(declare-fun setElem!21436 () Context!4370)

(declare-fun setNonEmpty!21436 () Bool)

(declare-fun tp!855399 () Bool)

(assert (=> setNonEmpty!21436 (= setRes!21436 (and tp!855399 (inv!42267 setElem!21436) e!1705407))))

(declare-fun setRest!21436 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21436 (= (_2!18045 (h!36614 (zeroValue!3809 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21436 true) setRest!21436))))

(declare-fun setIsEmpty!21436 () Bool)

(assert (=> setIsEmpty!21436 setRes!21436))

(assert (= b!2704906 b!2704904))

(assert (= (and b!2704906 condSetEmpty!21436) setIsEmpty!21436))

(assert (= (and b!2704906 (not condSetEmpty!21436)) setNonEmpty!21436))

(assert (= setNonEmpty!21436 b!2704905))

(assert (= (and b!2704551 ((_ is Cons!31194) (zeroValue!3809 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486)))))))) b!2704906))

(declare-fun m!3094719 () Bool)

(assert (=> b!2704906 m!3094719))

(declare-fun m!3094721 () Bool)

(assert (=> setNonEmpty!21436 m!3094721))

(declare-fun b!2704907 () Bool)

(declare-fun e!1705409 () Bool)

(declare-fun tp!855406 () Bool)

(assert (=> b!2704907 (= e!1705409 tp!855406)))

(declare-fun b!2704908 () Bool)

(declare-fun e!1705410 () Bool)

(declare-fun tp!855404 () Bool)

(assert (=> b!2704908 (= e!1705410 tp!855404)))

(declare-fun b!2704909 () Bool)

(declare-fun tp!855405 () Bool)

(declare-fun setRes!21437 () Bool)

(declare-fun e!1705411 () Bool)

(assert (=> b!2704909 (= e!1705411 (and (inv!42267 (_1!18044 (_1!18045 (h!36614 (minValue!3809 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486)))))))))) e!1705409 tp_is_empty!13861 setRes!21437 tp!855405))))

(declare-fun condSetEmpty!21437 () Bool)

(assert (=> b!2704909 (= condSetEmpty!21437 (= (_2!18045 (h!36614 (minValue!3809 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486)))))))) ((as const (Array Context!4370 Bool)) false)))))

(assert (=> b!2704551 (= tp!855329 e!1705411)))

(declare-fun tp!855403 () Bool)

(declare-fun setElem!21437 () Context!4370)

(declare-fun setNonEmpty!21437 () Bool)

(assert (=> setNonEmpty!21437 (= setRes!21437 (and tp!855403 (inv!42267 setElem!21437) e!1705410))))

(declare-fun setRest!21437 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21437 (= (_2!18045 (h!36614 (minValue!3809 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21437 true) setRest!21437))))

(declare-fun setIsEmpty!21437 () Bool)

(assert (=> setIsEmpty!21437 setRes!21437))

(assert (= b!2704909 b!2704907))

(assert (= (and b!2704909 condSetEmpty!21437) setIsEmpty!21437))

(assert (= (and b!2704909 (not condSetEmpty!21437)) setNonEmpty!21437))

(assert (= setNonEmpty!21437 b!2704908))

(assert (= (and b!2704551 ((_ is Cons!31194) (minValue!3809 (v!32957 (underlying!7303 (v!32958 (underlying!7304 (cache!3599 cacheUp!486)))))))) b!2704909))

(declare-fun m!3094723 () Bool)

(assert (=> b!2704909 m!3094723))

(declare-fun m!3094725 () Bool)

(assert (=> setNonEmpty!21437 m!3094725))

(declare-fun setIsEmpty!21442 () Bool)

(declare-fun setRes!21442 () Bool)

(assert (=> setIsEmpty!21442 setRes!21442))

(declare-fun b!2704924 () Bool)

(declare-fun e!1705424 () Bool)

(declare-fun tp!855439 () Bool)

(assert (=> b!2704924 (= e!1705424 tp!855439)))

(declare-fun condMapEmpty!16230 () Bool)

(declare-fun mapDefault!16230 () List!31295)

(assert (=> mapNonEmpty!16224 (= condMapEmpty!16230 (= mapRest!16224 ((as const (Array (_ BitVec 32) List!31295)) mapDefault!16230)))))

(declare-fun e!1705428 () Bool)

(declare-fun mapRes!16230 () Bool)

(assert (=> mapNonEmpty!16224 (= tp!855320 (and e!1705428 mapRes!16230))))

(declare-fun b!2704925 () Bool)

(declare-fun e!1705429 () Bool)

(declare-fun tp!855437 () Bool)

(assert (=> b!2704925 (= e!1705429 tp!855437)))

(declare-fun e!1705425 () Bool)

(declare-fun b!2704926 () Bool)

(declare-fun tp!855432 () Bool)

(declare-fun tp!855438 () Bool)

(assert (=> b!2704926 (= e!1705428 (and tp!855438 (inv!42267 (_2!18046 (_1!18047 (h!36615 mapDefault!16230)))) e!1705425 tp_is_empty!13861 setRes!21442 tp!855432))))

(declare-fun condSetEmpty!21443 () Bool)

(assert (=> b!2704926 (= condSetEmpty!21443 (= (_2!18047 (h!36615 mapDefault!16230)) ((as const (Array Context!4370 Bool)) false)))))

(declare-fun tp!855431 () Bool)

(declare-fun setRes!21443 () Bool)

(declare-fun b!2704927 () Bool)

(declare-fun mapValue!16230 () List!31295)

(declare-fun tp!855433 () Bool)

(declare-fun e!1705427 () Bool)

(assert (=> b!2704927 (= e!1705427 (and tp!855431 (inv!42267 (_2!18046 (_1!18047 (h!36615 mapValue!16230)))) e!1705424 tp_is_empty!13861 setRes!21443 tp!855433))))

(declare-fun condSetEmpty!21442 () Bool)

(assert (=> b!2704927 (= condSetEmpty!21442 (= (_2!18047 (h!36615 mapValue!16230)) ((as const (Array Context!4370 Bool)) false)))))

(declare-fun mapIsEmpty!16230 () Bool)

(assert (=> mapIsEmpty!16230 mapRes!16230))

(declare-fun setNonEmpty!21442 () Bool)

(declare-fun setElem!21442 () Context!4370)

(declare-fun tp!855436 () Bool)

(assert (=> setNonEmpty!21442 (= setRes!21442 (and tp!855436 (inv!42267 setElem!21442) e!1705429))))

(declare-fun setRest!21442 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21442 (= (_2!18047 (h!36615 mapDefault!16230)) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21442 true) setRest!21442))))

(declare-fun b!2704928 () Bool)

(declare-fun e!1705426 () Bool)

(declare-fun tp!855429 () Bool)

(assert (=> b!2704928 (= e!1705426 tp!855429)))

(declare-fun b!2704929 () Bool)

(declare-fun tp!855434 () Bool)

(assert (=> b!2704929 (= e!1705425 tp!855434)))

(declare-fun setNonEmpty!21443 () Bool)

(declare-fun setElem!21443 () Context!4370)

(declare-fun tp!855435 () Bool)

(assert (=> setNonEmpty!21443 (= setRes!21443 (and tp!855435 (inv!42267 setElem!21443) e!1705426))))

(declare-fun setRest!21443 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21443 (= (_2!18047 (h!36615 mapValue!16230)) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21443 true) setRest!21443))))

(declare-fun setIsEmpty!21443 () Bool)

(assert (=> setIsEmpty!21443 setRes!21443))

(declare-fun mapNonEmpty!16230 () Bool)

(declare-fun tp!855430 () Bool)

(assert (=> mapNonEmpty!16230 (= mapRes!16230 (and tp!855430 e!1705427))))

(declare-fun mapRest!16230 () (Array (_ BitVec 32) List!31295))

(declare-fun mapKey!16230 () (_ BitVec 32))

(assert (=> mapNonEmpty!16230 (= mapRest!16224 (store mapRest!16230 mapKey!16230 mapValue!16230))))

(assert (= (and mapNonEmpty!16224 condMapEmpty!16230) mapIsEmpty!16230))

(assert (= (and mapNonEmpty!16224 (not condMapEmpty!16230)) mapNonEmpty!16230))

(assert (= b!2704927 b!2704924))

(assert (= (and b!2704927 condSetEmpty!21442) setIsEmpty!21443))

(assert (= (and b!2704927 (not condSetEmpty!21442)) setNonEmpty!21443))

(assert (= setNonEmpty!21443 b!2704928))

(assert (= (and mapNonEmpty!16230 ((_ is Cons!31195) mapValue!16230)) b!2704927))

(assert (= b!2704926 b!2704929))

(assert (= (and b!2704926 condSetEmpty!21443) setIsEmpty!21442))

(assert (= (and b!2704926 (not condSetEmpty!21443)) setNonEmpty!21442))

(assert (= setNonEmpty!21442 b!2704925))

(assert (= (and mapNonEmpty!16224 ((_ is Cons!31195) mapDefault!16230)) b!2704926))

(declare-fun m!3094727 () Bool)

(assert (=> setNonEmpty!21442 m!3094727))

(declare-fun m!3094729 () Bool)

(assert (=> b!2704926 m!3094729))

(declare-fun m!3094731 () Bool)

(assert (=> b!2704927 m!3094731))

(declare-fun m!3094733 () Bool)

(assert (=> mapNonEmpty!16230 m!3094733))

(declare-fun m!3094735 () Bool)

(assert (=> setNonEmpty!21443 m!3094735))

(declare-fun b!2704938 () Bool)

(declare-fun e!1705436 () Bool)

(declare-fun tp!855453 () Bool)

(assert (=> b!2704938 (= e!1705436 tp!855453)))

(declare-fun setRes!21446 () Bool)

(declare-fun setElem!21446 () Context!4370)

(declare-fun setNonEmpty!21446 () Bool)

(declare-fun tp!855450 () Bool)

(assert (=> setNonEmpty!21446 (= setRes!21446 (and tp!855450 (inv!42267 setElem!21446) e!1705436))))

(declare-fun setRest!21446 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21446 (= (_2!18047 (h!36615 mapValue!16224)) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21446 true) setRest!21446))))

(declare-fun e!1705438 () Bool)

(assert (=> mapNonEmpty!16224 (= tp!855333 e!1705438)))

(declare-fun tp!855454 () Bool)

(declare-fun b!2704939 () Bool)

(declare-fun e!1705437 () Bool)

(declare-fun tp!855452 () Bool)

(assert (=> b!2704939 (= e!1705438 (and tp!855454 (inv!42267 (_2!18046 (_1!18047 (h!36615 mapValue!16224)))) e!1705437 tp_is_empty!13861 setRes!21446 tp!855452))))

(declare-fun condSetEmpty!21446 () Bool)

(assert (=> b!2704939 (= condSetEmpty!21446 (= (_2!18047 (h!36615 mapValue!16224)) ((as const (Array Context!4370 Bool)) false)))))

(declare-fun b!2704940 () Bool)

(declare-fun tp!855451 () Bool)

(assert (=> b!2704940 (= e!1705437 tp!855451)))

(declare-fun setIsEmpty!21446 () Bool)

(assert (=> setIsEmpty!21446 setRes!21446))

(assert (= b!2704939 b!2704940))

(assert (= (and b!2704939 condSetEmpty!21446) setIsEmpty!21446))

(assert (= (and b!2704939 (not condSetEmpty!21446)) setNonEmpty!21446))

(assert (= setNonEmpty!21446 b!2704938))

(assert (= (and mapNonEmpty!16224 ((_ is Cons!31195) mapValue!16224)) b!2704939))

(declare-fun m!3094737 () Bool)

(assert (=> setNonEmpty!21446 m!3094737))

(declare-fun m!3094739 () Bool)

(assert (=> b!2704939 m!3094739))

(declare-fun e!1705443 () Bool)

(declare-fun b!2704949 () Bool)

(declare-fun tp!855463 () Bool)

(declare-fun tp!855461 () Bool)

(assert (=> b!2704949 (= e!1705443 (and (inv!42261 (left!24001 (c!436396 acc!348))) tp!855463 (inv!42261 (right!24331 (c!436396 acc!348))) tp!855461))))

(declare-fun b!2704951 () Bool)

(declare-fun e!1705444 () Bool)

(declare-fun tp!855462 () Bool)

(assert (=> b!2704951 (= e!1705444 tp!855462)))

(declare-fun b!2704950 () Bool)

(declare-fun inv!42268 (IArray!19501) Bool)

(assert (=> b!2704950 (= e!1705443 (and (inv!42268 (xs!12796 (c!436396 acc!348))) e!1705444))))

(assert (=> b!2704552 (= tp!855337 (and (inv!42261 (c!436396 acc!348)) e!1705443))))

(assert (= (and b!2704552 ((_ is Node!9748) (c!436396 acc!348))) b!2704949))

(assert (= b!2704950 b!2704951))

(assert (= (and b!2704552 ((_ is Leaf!14872) (c!436396 acc!348))) b!2704950))

(declare-fun m!3094741 () Bool)

(assert (=> b!2704949 m!3094741))

(declare-fun m!3094743 () Bool)

(assert (=> b!2704949 m!3094743))

(declare-fun m!3094745 () Bool)

(assert (=> b!2704950 m!3094745))

(assert (=> b!2704552 m!3093923))

(declare-fun b!2704952 () Bool)

(declare-fun e!1705445 () Bool)

(declare-fun tp!855467 () Bool)

(assert (=> b!2704952 (= e!1705445 tp!855467)))

(declare-fun tp!855464 () Bool)

(declare-fun setNonEmpty!21447 () Bool)

(declare-fun setElem!21447 () Context!4370)

(declare-fun setRes!21447 () Bool)

(assert (=> setNonEmpty!21447 (= setRes!21447 (and tp!855464 (inv!42267 setElem!21447) e!1705445))))

(declare-fun setRest!21447 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21447 (= (_2!18047 (h!36615 (zeroValue!3810 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21447 true) setRest!21447))))

(declare-fun e!1705447 () Bool)

(assert (=> b!2704542 (= tp!855338 e!1705447)))

(declare-fun tp!855466 () Bool)

(declare-fun tp!855468 () Bool)

(declare-fun b!2704953 () Bool)

(declare-fun e!1705446 () Bool)

(assert (=> b!2704953 (= e!1705447 (and tp!855468 (inv!42267 (_2!18046 (_1!18047 (h!36615 (zeroValue!3810 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499)))))))))) e!1705446 tp_is_empty!13861 setRes!21447 tp!855466))))

(declare-fun condSetEmpty!21447 () Bool)

(assert (=> b!2704953 (= condSetEmpty!21447 (= (_2!18047 (h!36615 (zeroValue!3810 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499)))))))) ((as const (Array Context!4370 Bool)) false)))))

(declare-fun b!2704954 () Bool)

(declare-fun tp!855465 () Bool)

(assert (=> b!2704954 (= e!1705446 tp!855465)))

(declare-fun setIsEmpty!21447 () Bool)

(assert (=> setIsEmpty!21447 setRes!21447))

(assert (= b!2704953 b!2704954))

(assert (= (and b!2704953 condSetEmpty!21447) setIsEmpty!21447))

(assert (= (and b!2704953 (not condSetEmpty!21447)) setNonEmpty!21447))

(assert (= setNonEmpty!21447 b!2704952))

(assert (= (and b!2704542 ((_ is Cons!31195) (zeroValue!3810 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499)))))))) b!2704953))

(declare-fun m!3094747 () Bool)

(assert (=> setNonEmpty!21447 m!3094747))

(declare-fun m!3094749 () Bool)

(assert (=> b!2704953 m!3094749))

(declare-fun b!2704955 () Bool)

(declare-fun e!1705448 () Bool)

(declare-fun tp!855472 () Bool)

(assert (=> b!2704955 (= e!1705448 tp!855472)))

(declare-fun setElem!21448 () Context!4370)

(declare-fun setRes!21448 () Bool)

(declare-fun setNonEmpty!21448 () Bool)

(declare-fun tp!855469 () Bool)

(assert (=> setNonEmpty!21448 (= setRes!21448 (and tp!855469 (inv!42267 setElem!21448) e!1705448))))

(declare-fun setRest!21448 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21448 (= (_2!18047 (h!36615 (minValue!3810 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21448 true) setRest!21448))))

(declare-fun e!1705450 () Bool)

(assert (=> b!2704542 (= tp!855336 e!1705450)))

(declare-fun b!2704956 () Bool)

(declare-fun e!1705449 () Bool)

(declare-fun tp!855471 () Bool)

(declare-fun tp!855473 () Bool)

(assert (=> b!2704956 (= e!1705450 (and tp!855473 (inv!42267 (_2!18046 (_1!18047 (h!36615 (minValue!3810 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499)))))))))) e!1705449 tp_is_empty!13861 setRes!21448 tp!855471))))

(declare-fun condSetEmpty!21448 () Bool)

(assert (=> b!2704956 (= condSetEmpty!21448 (= (_2!18047 (h!36615 (minValue!3810 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499)))))))) ((as const (Array Context!4370 Bool)) false)))))

(declare-fun b!2704957 () Bool)

(declare-fun tp!855470 () Bool)

(assert (=> b!2704957 (= e!1705449 tp!855470)))

(declare-fun setIsEmpty!21448 () Bool)

(assert (=> setIsEmpty!21448 setRes!21448))

(assert (= b!2704956 b!2704957))

(assert (= (and b!2704956 condSetEmpty!21448) setIsEmpty!21448))

(assert (= (and b!2704956 (not condSetEmpty!21448)) setNonEmpty!21448))

(assert (= setNonEmpty!21448 b!2704955))

(assert (= (and b!2704542 ((_ is Cons!31195) (minValue!3810 (v!32959 (underlying!7305 (v!32960 (underlying!7306 (cache!3600 cacheDown!499)))))))) b!2704956))

(declare-fun m!3094751 () Bool)

(assert (=> setNonEmpty!21448 m!3094751))

(declare-fun m!3094753 () Bool)

(assert (=> b!2704956 m!3094753))

(declare-fun b!2704958 () Bool)

(declare-fun e!1705451 () Bool)

(declare-fun tp!855477 () Bool)

(assert (=> b!2704958 (= e!1705451 tp!855477)))

(declare-fun b!2704959 () Bool)

(declare-fun e!1705452 () Bool)

(declare-fun tp!855475 () Bool)

(assert (=> b!2704959 (= e!1705452 tp!855475)))

(declare-fun tp!855476 () Bool)

(declare-fun b!2704960 () Bool)

(declare-fun e!1705453 () Bool)

(declare-fun setRes!21449 () Bool)

(assert (=> b!2704960 (= e!1705453 (and (inv!42267 (_1!18044 (_1!18045 (h!36614 mapDefault!16223)))) e!1705451 tp_is_empty!13861 setRes!21449 tp!855476))))

(declare-fun condSetEmpty!21449 () Bool)

(assert (=> b!2704960 (= condSetEmpty!21449 (= (_2!18045 (h!36614 mapDefault!16223)) ((as const (Array Context!4370 Bool)) false)))))

(assert (=> b!2704524 (= tp!855325 e!1705453)))

(declare-fun setNonEmpty!21449 () Bool)

(declare-fun setElem!21449 () Context!4370)

(declare-fun tp!855474 () Bool)

(assert (=> setNonEmpty!21449 (= setRes!21449 (and tp!855474 (inv!42267 setElem!21449) e!1705452))))

(declare-fun setRest!21449 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21449 (= (_2!18045 (h!36614 mapDefault!16223)) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21449 true) setRest!21449))))

(declare-fun setIsEmpty!21449 () Bool)

(assert (=> setIsEmpty!21449 setRes!21449))

(assert (= b!2704960 b!2704958))

(assert (= (and b!2704960 condSetEmpty!21449) setIsEmpty!21449))

(assert (= (and b!2704960 (not condSetEmpty!21449)) setNonEmpty!21449))

(assert (= setNonEmpty!21449 b!2704959))

(assert (= (and b!2704524 ((_ is Cons!31194) mapDefault!16223)) b!2704960))

(declare-fun m!3094755 () Bool)

(assert (=> b!2704960 m!3094755))

(declare-fun m!3094757 () Bool)

(assert (=> setNonEmpty!21449 m!3094757))

(declare-fun b!2704961 () Bool)

(declare-fun e!1705454 () Bool)

(declare-fun tp!855481 () Bool)

(assert (=> b!2704961 (= e!1705454 tp!855481)))

(declare-fun tp!855478 () Bool)

(declare-fun setNonEmpty!21450 () Bool)

(declare-fun setElem!21450 () Context!4370)

(declare-fun setRes!21450 () Bool)

(assert (=> setNonEmpty!21450 (= setRes!21450 (and tp!855478 (inv!42267 setElem!21450) e!1705454))))

(declare-fun setRest!21450 () (InoxSet Context!4370))

(assert (=> setNonEmpty!21450 (= (_2!18047 (h!36615 mapDefault!16224)) ((_ map or) (store ((as const (Array Context!4370 Bool)) false) setElem!21450 true) setRest!21450))))

(declare-fun e!1705456 () Bool)

(assert (=> b!2704545 (= tp!855323 e!1705456)))

(declare-fun e!1705455 () Bool)

(declare-fun tp!855482 () Bool)

(declare-fun tp!855480 () Bool)

(declare-fun b!2704962 () Bool)

(assert (=> b!2704962 (= e!1705456 (and tp!855482 (inv!42267 (_2!18046 (_1!18047 (h!36615 mapDefault!16224)))) e!1705455 tp_is_empty!13861 setRes!21450 tp!855480))))

(declare-fun condSetEmpty!21450 () Bool)

(assert (=> b!2704962 (= condSetEmpty!21450 (= (_2!18047 (h!36615 mapDefault!16224)) ((as const (Array Context!4370 Bool)) false)))))

(declare-fun b!2704963 () Bool)

(declare-fun tp!855479 () Bool)

(assert (=> b!2704963 (= e!1705455 tp!855479)))

(declare-fun setIsEmpty!21450 () Bool)

(assert (=> setIsEmpty!21450 setRes!21450))

(assert (= b!2704962 b!2704963))

(assert (= (and b!2704962 condSetEmpty!21450) setIsEmpty!21450))

(assert (= (and b!2704962 (not condSetEmpty!21450)) setNonEmpty!21450))

(assert (= setNonEmpty!21450 b!2704961))

(assert (= (and b!2704545 ((_ is Cons!31195) mapDefault!16224)) b!2704962))

(declare-fun m!3094759 () Bool)

(assert (=> setNonEmpty!21450 m!3094759))

(declare-fun m!3094761 () Bool)

(assert (=> b!2704962 m!3094761))

(declare-fun b!2704977 () Bool)

(declare-fun e!1705459 () Bool)

(declare-fun tp!855494 () Bool)

(declare-fun tp!855495 () Bool)

(assert (=> b!2704977 (= e!1705459 (and tp!855494 tp!855495))))

(declare-fun b!2704974 () Bool)

(assert (=> b!2704974 (= e!1705459 tp_is_empty!13861)))

(assert (=> b!2704516 (= tp!855339 e!1705459)))

(declare-fun b!2704975 () Bool)

(declare-fun tp!855496 () Bool)

(declare-fun tp!855497 () Bool)

(assert (=> b!2704975 (= e!1705459 (and tp!855496 tp!855497))))

(declare-fun b!2704976 () Bool)

(declare-fun tp!855493 () Bool)

(assert (=> b!2704976 (= e!1705459 tp!855493)))

(assert (= (and b!2704516 ((_ is ElementMatch!7911) (regex!4759 (h!36612 rules!1381)))) b!2704974))

(assert (= (and b!2704516 ((_ is Concat!12893) (regex!4759 (h!36612 rules!1381)))) b!2704975))

(assert (= (and b!2704516 ((_ is Star!7911) (regex!4759 (h!36612 rules!1381)))) b!2704976))

(assert (= (and b!2704516 ((_ is Union!7911) (regex!4759 (h!36612 rules!1381)))) b!2704977))

(declare-fun b!2704988 () Bool)

(declare-fun b_free!76329 () Bool)

(declare-fun b_next!77033 () Bool)

(assert (=> b!2704988 (= b_free!76329 (not b_next!77033))))

(declare-fun tp!855508 () Bool)

(declare-fun b_and!199761 () Bool)

(assert (=> b!2704988 (= tp!855508 b_and!199761)))

(declare-fun b_free!76331 () Bool)

(declare-fun b_next!77035 () Bool)

(assert (=> b!2704988 (= b_free!76331 (not b_next!77035))))

(declare-fun t!225733 () Bool)

(declare-fun tb!151483 () Bool)

(assert (=> (and b!2704988 (= (toChars!6580 (transformation!4759 (h!36612 (t!225726 rules!1381)))) (toChars!6580 (transformation!4759 (rule!7181 (_1!18048 (v!32961 lt!956241)))))) t!225733) tb!151483))

(declare-fun result!187112 () Bool)

(assert (= result!187112 result!187092))

(assert (=> d!777110 t!225733))

(declare-fun tp!855506 () Bool)

(declare-fun b_and!199763 () Bool)

(assert (=> b!2704988 (= tp!855506 (and (=> t!225733 result!187112) b_and!199763))))

(declare-fun e!1705469 () Bool)

(assert (=> b!2704988 (= e!1705469 (and tp!855508 tp!855506))))

(declare-fun tp!855507 () Bool)

(declare-fun b!2704987 () Bool)

(declare-fun e!1705470 () Bool)

(assert (=> b!2704987 (= e!1705470 (and tp!855507 (inv!42252 (tag!5263 (h!36612 (t!225726 rules!1381)))) (inv!42255 (transformation!4759 (h!36612 (t!225726 rules!1381)))) e!1705469))))

(declare-fun b!2704986 () Bool)

(declare-fun e!1705468 () Bool)

(declare-fun tp!855509 () Bool)

(assert (=> b!2704986 (= e!1705468 (and e!1705470 tp!855509))))

(assert (=> b!2704534 (= tp!855331 e!1705468)))

(assert (= b!2704987 b!2704988))

(assert (= b!2704986 b!2704987))

(assert (= (and b!2704534 ((_ is Cons!31192) (t!225726 rules!1381))) b!2704986))

(declare-fun m!3094763 () Bool)

(assert (=> b!2704987 m!3094763))

(declare-fun m!3094765 () Bool)

(assert (=> b!2704987 m!3094765))

(check-sat (not b!2704784) (not b!2704843) (not b!2704626) (not b_next!77025) (not d!777140) (not b!2704763) (not b!2704845) (not b!2704693) (not b!2704838) (not b!2704760) b_and!199751 (not d!777102) (not b!2704661) (not b!2704630) (not b!2704819) (not d!777086) (not b!2704708) (not setNonEmpty!21436) (not b!2704720) (not b!2704855) (not b!2704712) (not b!2704703) (not d!777160) (not setNonEmpty!21437) (not b!2704748) (not b!2704644) b_and!199761 (not b!2704854) (not b!2704842) (not b!2704804) (not setNonEmpty!21442) (not d!777064) (not b!2704906) (not b!2704949) (not b!2704908) (not b!2704604) (not b!2704853) (not d!777110) (not d!777118) (not b!2704887) (not b!2704840) (not b!2704805) (not b!2704904) (not b!2704825) (not b!2704927) (not b!2704963) (not b!2704667) (not b!2704633) tp_is_empty!13861 (not setNonEmpty!21443) (not b_next!77029) (not b!2704656) (not d!777058) (not d!777116) (not b!2704685) (not d!777088) (not b!2704864) (not b!2704657) (not b!2704697) (not b!2704768) (not d!777100) b_and!199759 (not b!2704660) (not setNonEmpty!21447) (not b!2704928) (not b!2704951) (not d!777132) (not b!2704868) (not d!777054) (not b!2704891) (not b!2704888) (not b!2704723) (not b!2704719) (not b_next!77033) (not d!777050) (not b!2704940) (not b!2704625) (not b!2704628) (not b!2704962) (not b!2704689) (not tb!151481) (not b!2704715) (not d!777046) (not b!2704839) (not d!777152) (not b!2704850) (not d!777164) (not d!777146) (not b!2704925) (not d!777096) (not d!777130) (not b!2704848) (not b!2704955) (not d!777122) (not d!777104) (not bm!174238) (not d!777124) (not b!2704561) (not d!777068) (not b!2704956) (not b!2704902) b_and!199755 (not d!777166) (not bm!174237) (not b!2704961) (not d!777090) (not b!2704606) (not b!2704722) (not b!2704745) (not d!777176) (not b_next!77031) (not b!2704581) (not b!2704907) (not b!2704701) (not b!2704866) (not b!2704926) (not b!2704580) (not b!2704700) (not d!777038) (not b!2704977) (not b!2704602) (not b!2704547) (not d!777056) (not setNonEmpty!21435) (not b!2704527) (not b!2704733) (not b!2704952) (not b!2704724) (not b!2704709) (not b!2704852) (not b!2704718) (not b!2704889) (not b!2704959) (not b!2704817) (not d!777108) (not setNonEmpty!21431) (not b!2704822) (not b!2704958) (not b!2704986) (not b!2704688) (not mapNonEmpty!16230) (not b!2704901) (not b!2704849) (not b!2704670) (not d!777092) (not b!2704975) (not setNonEmpty!21432) (not b!2704696) (not b!2704691) (not b!2704957) (not b!2704759) (not b!2704764) (not d!777078) (not b!2704929) (not d!777080) (not b!2704806) (not b!2704694) b_and!199763 (not d!777052) (not b!2704938) (not b!2704847) (not d!777066) (not d!777072) (not b!2704734) (not b!2704865) (not setNonEmpty!21448) (not b!2704802) (not b!2704711) (not b!2704684) (not b!2704735) (not b!2704846) (not b!2704771) (not b!2704562) (not b!2704629) (not b!2704608) (not setNonEmpty!21449) (not b!2704950) (not b!2704585) (not b_lambda!82383) (not b!2704828) (not b!2704960) (not d!777048) (not d!777168) (not d!777042) (not b!2704662) (not d!777040) (not b!2704603) (not d!777060) (not b!2704892) (not d!777082) (not b!2704663) (not b!2704756) (not d!777094) (not b!2704867) (not b!2704758) (not b!2704987) (not b!2704705) (not b!2704761) (not b!2704890) (not d!777106) (not b!2704954) (not d!777142) b_and!199747 (not b!2704609) (not b!2704939) (not b!2704552) (not b!2704579) (not b!2704736) (not b!2704765) (not b!2704872) (not b!2704871) (not d!777098) (not b!2704905) (not b!2704909) (not d!777158) (not b!2704687) (not d!777120) (not b_next!77035) (not b!2704782) (not b!2704820) (not b!2704870) (not b!2704841) (not b!2704704) (not d!777076) (not b!2704624) (not b!2704738) (not b!2704681) (not bm!174234) (not d!777074) (not b!2704903) (not b_next!77023) (not b!2704823) (not b!2704747) (not b_next!77021) (not d!777162) (not b!2704976) (not b!2704690) (not mapNonEmpty!16227) (not b!2704924) (not b!2704783) (not b!2704953) (not b!2704869) b_and!199753 (not d!777070) (not b!2704564) (not b_next!77027) (not b!2704739) (not d!777134) (not b!2704785) (not b!2704643) (not b!2704605) (not b!2704716) (not d!777174) (not b!2704707) (not b!2704680) (not b!2704810) b_and!199757 (not setNonEmpty!21446) (not setNonEmpty!21450) (not d!777084) (not d!777112) (not d!777136) (not b!2704837) (not b!2704526))
(check-sat (not b_next!77025) b_and!199751 b_and!199761 (not b_next!77029) b_and!199759 (not b_next!77033) b_and!199755 (not b_next!77031) b_and!199763 b_and!199747 (not b_next!77035) b_and!199757 (not b_next!77023) (not b_next!77021) b_and!199753 (not b_next!77027))
