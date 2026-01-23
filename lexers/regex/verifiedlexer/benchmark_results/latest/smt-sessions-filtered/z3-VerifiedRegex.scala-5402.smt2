; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274858 () Bool)

(assert start!274858)

(declare-fun b!2830346 () Bool)

(declare-fun b_free!81285 () Bool)

(declare-fun b_next!81989 () Bool)

(assert (=> b!2830346 (= b_free!81285 (not b_next!81989))))

(declare-fun tp!904244 () Bool)

(declare-fun b_and!206945 () Bool)

(assert (=> b!2830346 (= tp!904244 b_and!206945)))

(declare-fun b!2830339 () Bool)

(declare-fun b_free!81287 () Bool)

(declare-fun b_next!81991 () Bool)

(assert (=> b!2830339 (= b_free!81287 (not b_next!81991))))

(declare-fun tp!904250 () Bool)

(declare-fun b_and!206947 () Bool)

(assert (=> b!2830339 (= tp!904250 b_and!206947)))

(declare-fun b_free!81289 () Bool)

(declare-fun b_next!81993 () Bool)

(assert (=> b!2830339 (= b_free!81289 (not b_next!81993))))

(declare-fun tp!904238 () Bool)

(declare-fun b_and!206949 () Bool)

(assert (=> b!2830339 (= tp!904238 b_and!206949)))

(declare-fun b!2830356 () Bool)

(declare-fun b_free!81291 () Bool)

(declare-fun b_next!81995 () Bool)

(assert (=> b!2830356 (= b_free!81291 (not b_next!81995))))

(declare-fun tp!904246 () Bool)

(declare-fun b_and!206951 () Bool)

(assert (=> b!2830356 (= tp!904246 b_and!206951)))

(declare-fun b!2830353 () Bool)

(declare-fun b_free!81293 () Bool)

(declare-fun b_next!81997 () Bool)

(assert (=> b!2830353 (= b_free!81293 (not b_next!81997))))

(declare-fun tp!904237 () Bool)

(declare-fun b_and!206953 () Bool)

(assert (=> b!2830353 (= tp!904237 b_and!206953)))

(declare-fun b!2830350 () Bool)

(declare-fun b_free!81295 () Bool)

(declare-fun b_next!81999 () Bool)

(assert (=> b!2830350 (= b_free!81295 (not b_next!81999))))

(declare-fun tp!904241 () Bool)

(declare-fun b_and!206955 () Bool)

(assert (=> b!2830350 (= tp!904241 b_and!206955)))

(declare-fun b!2830336 () Bool)

(declare-fun e!1791802 () Bool)

(declare-fun e!1791794 () Bool)

(assert (=> b!2830336 (= e!1791802 e!1791794)))

(declare-fun b!2830337 () Bool)

(declare-fun e!1791796 () Bool)

(declare-fun e!1791803 () Bool)

(assert (=> b!2830337 (= e!1791796 (not e!1791803))))

(declare-fun res!1178224 () Bool)

(assert (=> b!2830337 (=> res!1178224 e!1791803)))

(declare-datatypes ((C!16944 0))(
  ( (C!16945 (val!10484 Int)) )
))
(declare-datatypes ((List!33441 0))(
  ( (Nil!33317) (Cons!33317 (h!38737 C!16944) (t!231300 List!33441)) )
))
(declare-datatypes ((IArray!20675 0))(
  ( (IArray!20676 (innerList!10395 List!33441)) )
))
(declare-datatypes ((Conc!10335 0))(
  ( (Node!10335 (left!25143 Conc!10335) (right!25473 Conc!10335) (csize!20900 Int) (cheight!10546 Int)) (Leaf!15738 (xs!13447 IArray!20675) (csize!20901 Int)) (Empty!10335) )
))
(declare-datatypes ((BalanceConc!20308 0))(
  ( (BalanceConc!20309 (c!457808 Conc!10335)) )
))
(declare-datatypes ((List!33442 0))(
  ( (Nil!33318) (Cons!33318 (h!38738 (_ BitVec 16)) (t!231301 List!33442)) )
))
(declare-datatypes ((TokenValue!5220 0))(
  ( (FloatLiteralValue!10440 (text!36985 List!33442)) (TokenValueExt!5219 (__x!22172 Int)) (Broken!26100 (value!160558 List!33442)) (Object!5343) (End!5220) (Def!5220) (Underscore!5220) (Match!5220) (Else!5220) (Error!5220) (Case!5220) (If!5220) (Extends!5220) (Abstract!5220) (Class!5220) (Val!5220) (DelimiterValue!10440 (del!5280 List!33442)) (KeywordValue!5226 (value!160559 List!33442)) (CommentValue!10440 (value!160560 List!33442)) (WhitespaceValue!10440 (value!160561 List!33442)) (IndentationValue!5220 (value!160562 List!33442)) (String!36621) (Int32!5220) (Broken!26101 (value!160563 List!33442)) (Boolean!5221) (Unit!47330) (OperatorValue!5223 (op!5280 List!33442)) (IdentifierValue!10440 (value!160564 List!33442)) (IdentifierValue!10441 (value!160565 List!33442)) (WhitespaceValue!10441 (value!160566 List!33442)) (True!10440) (False!10440) (Broken!26102 (value!160567 List!33442)) (Broken!26103 (value!160568 List!33442)) (True!10441) (RightBrace!5220) (RightBracket!5220) (Colon!5220) (Null!5220) (Comma!5220) (LeftBracket!5220) (False!10441) (LeftBrace!5220) (ImaginaryLiteralValue!5220 (text!36986 List!33442)) (StringLiteralValue!15660 (value!160569 List!33442)) (EOFValue!5220 (value!160570 List!33442)) (IdentValue!5220 (value!160571 List!33442)) (DelimiterValue!10441 (value!160572 List!33442)) (DedentValue!5220 (value!160573 List!33442)) (NewLineValue!5220 (value!160574 List!33442)) (IntegerValue!15660 (value!160575 (_ BitVec 32)) (text!36987 List!33442)) (IntegerValue!15661 (value!160576 Int) (text!36988 List!33442)) (Times!5220) (Or!5220) (Equal!5220) (Minus!5220) (Broken!26104 (value!160577 List!33442)) (And!5220) (Div!5220) (LessEqual!5220) (Mod!5220) (Concat!13601) (Not!5220) (Plus!5220) (SpaceValue!5220 (value!160578 List!33442)) (IntegerValue!15662 (value!160579 Int) (text!36989 List!33442)) (StringLiteralValue!15661 (text!36990 List!33442)) (FloatLiteralValue!10441 (text!36991 List!33442)) (BytesLiteralValue!5220 (value!160580 List!33442)) (CommentValue!10441 (value!160581 List!33442)) (StringLiteralValue!15662 (value!160582 List!33442)) (ErrorTokenValue!5220 (msg!5281 List!33442)) )
))
(declare-datatypes ((TokenValueInjection!9868 0))(
  ( (TokenValueInjection!9869 (toValue!7016 Int) (toChars!6875 Int)) )
))
(declare-datatypes ((Regex!8381 0))(
  ( (ElementMatch!8381 (c!457809 C!16944)) (Concat!13602 (regOne!17274 Regex!8381) (regTwo!17274 Regex!8381)) (EmptyExpr!8381) (Star!8381 (reg!8710 Regex!8381)) (EmptyLang!8381) (Union!8381 (regOne!17275 Regex!8381) (regTwo!17275 Regex!8381)) )
))
(declare-datatypes ((String!36622 0))(
  ( (String!36623 (value!160583 String)) )
))
(declare-datatypes ((Rule!9780 0))(
  ( (Rule!9781 (regex!4990 Regex!8381) (tag!5494 String!36622) (isSeparator!4990 Bool) (transformation!4990 TokenValueInjection!9868)) )
))
(declare-datatypes ((Token!9382 0))(
  ( (Token!9383 (value!160584 TokenValue!5220) (rule!7418 Rule!9780) (size!25939 Int) (originalCharacters!5722 List!33441)) )
))
(declare-datatypes ((List!33443 0))(
  ( (Nil!33319) (Cons!33319 (h!38739 Token!9382) (t!231302 List!33443)) )
))
(declare-datatypes ((IArray!20677 0))(
  ( (IArray!20678 (innerList!10396 List!33443)) )
))
(declare-datatypes ((Conc!10336 0))(
  ( (Node!10336 (left!25144 Conc!10336) (right!25474 Conc!10336) (csize!20902 Int) (cheight!10547 Int)) (Leaf!15739 (xs!13448 IArray!20677) (csize!20903 Int)) (Empty!10336) )
))
(declare-datatypes ((BalanceConc!20310 0))(
  ( (BalanceConc!20311 (c!457810 Conc!10336)) )
))
(declare-fun v!6247 () BalanceConc!20310)

(declare-fun lt!1009681 () Token!9382)

(declare-fun contains!6090 (BalanceConc!20310 Token!9382) Bool)

(assert (=> b!2830337 (= res!1178224 (not (contains!6090 v!6247 lt!1009681)))))

(declare-fun from!827 () Int)

(declare-fun apply!7782 (BalanceConc!20310 Int) Token!9382)

(assert (=> b!2830337 (= lt!1009681 (apply!7782 v!6247 from!827))))

(declare-fun lt!1009684 () List!33443)

(declare-fun lt!1009680 () List!33443)

(declare-fun tail!4468 (List!33443) List!33443)

(declare-fun drop!1792 (List!33443 Int) List!33443)

(assert (=> b!2830337 (= (tail!4468 lt!1009684) (drop!1792 lt!1009680 (+ 2 from!827)))))

(declare-datatypes ((Unit!47331 0))(
  ( (Unit!47332) )
))
(declare-fun lt!1009688 () Unit!47331)

(declare-fun lemmaDropTail!878 (List!33443 Int) Unit!47331)

(assert (=> b!2830337 (= lt!1009688 (lemmaDropTail!878 lt!1009680 (+ 1 from!827)))))

(declare-fun lt!1009677 () List!33443)

(assert (=> b!2830337 (= (tail!4468 lt!1009677) lt!1009684)))

(declare-fun lt!1009679 () Unit!47331)

(assert (=> b!2830337 (= lt!1009679 (lemmaDropTail!878 lt!1009680 from!827))))

(declare-fun head!6243 (List!33443) Token!9382)

(declare-fun apply!7783 (List!33443 Int) Token!9382)

(assert (=> b!2830337 (= (head!6243 lt!1009684) (apply!7783 lt!1009680 (+ 1 from!827)))))

(assert (=> b!2830337 (= lt!1009684 (drop!1792 lt!1009680 (+ 1 from!827)))))

(declare-fun lt!1009683 () Unit!47331)

(declare-fun lemmaDropApply!990 (List!33443 Int) Unit!47331)

(assert (=> b!2830337 (= lt!1009683 (lemmaDropApply!990 lt!1009680 (+ 1 from!827)))))

(assert (=> b!2830337 (= (head!6243 lt!1009677) (apply!7783 lt!1009680 from!827))))

(assert (=> b!2830337 (= lt!1009677 (drop!1792 lt!1009680 from!827))))

(declare-fun lt!1009676 () Unit!47331)

(assert (=> b!2830337 (= lt!1009676 (lemmaDropApply!990 lt!1009680 from!827))))

(declare-fun list!12466 (BalanceConc!20310) List!33443)

(assert (=> b!2830337 (= lt!1009680 (list!12466 v!6247))))

(declare-fun b!2830338 () Bool)

(declare-fun e!1791784 () Bool)

(declare-fun e!1791783 () Bool)

(assert (=> b!2830338 (= e!1791784 e!1791783)))

(declare-fun e!1791780 () Bool)

(assert (=> b!2830339 (= e!1791780 (and tp!904250 tp!904238))))

(declare-fun b!2830340 () Bool)

(declare-fun e!1791792 () Bool)

(declare-fun e!1791788 () Bool)

(assert (=> b!2830340 (= e!1791792 e!1791788)))

(declare-fun b!2830341 () Bool)

(declare-fun res!1178226 () Bool)

(assert (=> b!2830341 (=> (not res!1178226) (not e!1791796))))

(declare-datatypes ((List!33444 0))(
  ( (Nil!33320) (Cons!33320 (h!38740 Rule!9780) (t!231303 List!33444)) )
))
(declare-fun rules!1102 () List!33444)

(declare-datatypes ((LexerInterface!4580 0))(
  ( (LexerInterfaceExt!4577 (__x!22173 Int)) (Lexer!4578) )
))
(declare-fun thiss!11212 () LexerInterface!4580)

(declare-fun rulesProduceEachTokenIndividually!1098 (LexerInterface!4580 List!33444 BalanceConc!20310) Bool)

(assert (=> b!2830341 (= res!1178226 (rulesProduceEachTokenIndividually!1098 thiss!11212 rules!1102 v!6247))))

(declare-fun mapNonEmpty!18560 () Bool)

(declare-fun mapRes!18560 () Bool)

(declare-fun tp!904247 () Bool)

(declare-fun tp!904243 () Bool)

(assert (=> mapNonEmpty!18560 (= mapRes!18560 (and tp!904247 tp!904243))))

(declare-datatypes ((List!33445 0))(
  ( (Nil!33321) (Cons!33321 (h!38741 Regex!8381) (t!231304 List!33445)) )
))
(declare-datatypes ((Context!4970 0))(
  ( (Context!4971 (exprs!2985 List!33445)) )
))
(declare-datatypes ((tuple3!5280 0))(
  ( (tuple3!5281 (_1!19859 Regex!8381) (_2!19859 Context!4970) (_3!3110 C!16944)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33498 0))(
  ( (tuple2!33499 (_1!19860 tuple3!5280) (_2!19860 (InoxSet Context!4970))) )
))
(declare-datatypes ((List!33446 0))(
  ( (Nil!33322) (Cons!33322 (h!38742 tuple2!33498) (t!231305 List!33446)) )
))
(declare-fun mapValue!18560 () List!33446)

(declare-fun mapRest!18561 () (Array (_ BitVec 32) List!33446))

(declare-datatypes ((Hashable!4005 0))(
  ( (HashableExt!4004 (__x!22174 Int)) )
))
(declare-datatypes ((array!14534 0))(
  ( (array!14535 (arr!6477 (Array (_ BitVec 32) (_ BitVec 64))) (size!25940 (_ BitVec 32))) )
))
(declare-datatypes ((array!14536 0))(
  ( (array!14537 (arr!6478 (Array (_ BitVec 32) List!33446)) (size!25941 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8178 0))(
  ( (LongMapFixedSize!8179 (defaultEntry!4474 Int) (mask!10060 (_ BitVec 32)) (extraKeys!4338 (_ BitVec 32)) (zeroValue!4348 List!33446) (minValue!4348 List!33446) (_size!8221 (_ BitVec 32)) (_keys!4389 array!14534) (_values!4370 array!14536) (_vacant!4150 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16165 0))(
  ( (Cell!16166 (v!34339 LongMapFixedSize!8178)) )
))
(declare-datatypes ((MutLongMap!4089 0))(
  ( (LongMap!4089 (underlying!8407 Cell!16165)) (MutLongMapExt!4088 (__x!22175 Int)) )
))
(declare-datatypes ((Cell!16167 0))(
  ( (Cell!16168 (v!34340 MutLongMap!4089)) )
))
(declare-datatypes ((MutableMap!3995 0))(
  ( (MutableMapExt!3994 (__x!22176 Int)) (HashMap!3995 (underlying!8408 Cell!16167) (hashF!6037 Hashable!4005) (_size!8222 (_ BitVec 32)) (defaultValue!4166 Int)) )
))
(declare-datatypes ((CacheDown!2814 0))(
  ( (CacheDown!2815 (cache!4130 MutableMap!3995)) )
))
(declare-fun cacheDown!433 () CacheDown!2814)

(declare-fun mapKey!18560 () (_ BitVec 32))

(assert (=> mapNonEmpty!18560 (= (arr!6478 (_values!4370 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))))) (store mapRest!18561 mapKey!18560 mapValue!18560))))

(declare-fun b!2830342 () Bool)

(declare-fun e!1791798 () Bool)

(assert (=> b!2830342 (= e!1791798 e!1791784)))

(declare-fun mapNonEmpty!18561 () Bool)

(declare-fun mapRes!18561 () Bool)

(declare-fun tp!904254 () Bool)

(declare-fun tp!904242 () Bool)

(assert (=> mapNonEmpty!18561 (= mapRes!18561 (and tp!904254 tp!904242))))

(declare-datatypes ((tuple2!33500 0))(
  ( (tuple2!33501 (_1!19861 Context!4970) (_2!19861 C!16944)) )
))
(declare-datatypes ((tuple2!33502 0))(
  ( (tuple2!33503 (_1!19862 tuple2!33500) (_2!19862 (InoxSet Context!4970))) )
))
(declare-datatypes ((List!33447 0))(
  ( (Nil!33323) (Cons!33323 (h!38743 tuple2!33502) (t!231306 List!33447)) )
))
(declare-fun mapRest!18560 () (Array (_ BitVec 32) List!33447))

(declare-fun mapKey!18561 () (_ BitVec 32))

(declare-datatypes ((array!14538 0))(
  ( (array!14539 (arr!6479 (Array (_ BitVec 32) List!33447)) (size!25942 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8180 0))(
  ( (LongMapFixedSize!8181 (defaultEntry!4475 Int) (mask!10061 (_ BitVec 32)) (extraKeys!4339 (_ BitVec 32)) (zeroValue!4349 List!33447) (minValue!4349 List!33447) (_size!8223 (_ BitVec 32)) (_keys!4390 array!14534) (_values!4371 array!14538) (_vacant!4151 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4006 0))(
  ( (HashableExt!4005 (__x!22177 Int)) )
))
(declare-datatypes ((Cell!16169 0))(
  ( (Cell!16170 (v!34341 LongMapFixedSize!8180)) )
))
(declare-datatypes ((MutLongMap!4090 0))(
  ( (LongMap!4090 (underlying!8409 Cell!16169)) (MutLongMapExt!4089 (__x!22178 Int)) )
))
(declare-datatypes ((Cell!16171 0))(
  ( (Cell!16172 (v!34342 MutLongMap!4090)) )
))
(declare-datatypes ((MutableMap!3996 0))(
  ( (MutableMapExt!3995 (__x!22179 Int)) (HashMap!3996 (underlying!8410 Cell!16171) (hashF!6038 Hashable!4006) (_size!8224 (_ BitVec 32)) (defaultValue!4167 Int)) )
))
(declare-datatypes ((CacheUp!2692 0))(
  ( (CacheUp!2693 (cache!4131 MutableMap!3996)) )
))
(declare-fun cacheUp!420 () CacheUp!2692)

(declare-fun mapValue!18561 () List!33447)

(assert (=> mapNonEmpty!18561 (= (arr!6479 (_values!4371 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))))) (store mapRest!18560 mapKey!18561 mapValue!18561))))

(declare-fun b!2830343 () Bool)

(declare-fun e!1791804 () Bool)

(declare-fun e!1791781 () Bool)

(declare-fun lt!1009689 () MutLongMap!4089)

(get-info :version)

(assert (=> b!2830343 (= e!1791804 (and e!1791781 ((_ is LongMap!4089) lt!1009689)))))

(assert (=> b!2830343 (= lt!1009689 (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))))

(declare-fun e!1791791 () Bool)

(declare-fun b!2830344 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!159 (LexerInterface!4580 BalanceConc!20310 Int List!33444) Bool)

(assert (=> b!2830344 (= e!1791791 (not (tokensListTwoByTwoPredicateSeparable!159 thiss!11212 v!6247 from!827 rules!1102)))))

(declare-fun b!2830345 () Bool)

(declare-fun res!1178229 () Bool)

(assert (=> b!2830345 (=> (not res!1178229) (not e!1791796))))

(declare-fun lt!1009687 () Int)

(assert (=> b!2830345 (= res!1178229 (< from!827 (- lt!1009687 1)))))

(declare-fun e!1791785 () Bool)

(declare-fun tp!904253 () Bool)

(declare-fun tp!904249 () Bool)

(declare-fun array_inv!4641 (array!14534) Bool)

(declare-fun array_inv!4642 (array!14536) Bool)

(assert (=> b!2830346 (= e!1791788 (and tp!904244 tp!904253 tp!904249 (array_inv!4641 (_keys!4389 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))))) (array_inv!4642 (_values!4370 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))))) e!1791785))))

(declare-fun b!2830347 () Bool)

(declare-fun e!1791805 () Bool)

(assert (=> b!2830347 (= e!1791805 e!1791791)))

(declare-fun res!1178227 () Bool)

(assert (=> b!2830347 (=> res!1178227 e!1791791)))

(declare-fun lt!1009678 () Token!9382)

(declare-datatypes ((tuple3!5282 0))(
  ( (tuple3!5283 (_1!19863 Bool) (_2!19863 CacheUp!2692) (_3!3111 CacheDown!2814)) )
))
(declare-fun separableTokensPredicateMem!10 (LexerInterface!4580 Token!9382 Token!9382 List!33444 CacheUp!2692 CacheDown!2814) tuple3!5282)

(assert (=> b!2830347 (= res!1178227 (_1!19863 (separableTokensPredicateMem!10 thiss!11212 lt!1009681 lt!1009678 rules!1102 cacheUp!420 cacheDown!433)))))

(declare-fun e!1791782 () Bool)

(assert (=> b!2830347 e!1791782))

(declare-fun res!1178222 () Bool)

(assert (=> b!2830347 (=> (not res!1178222) (not e!1791782))))

(declare-fun rulesProduceIndividualToken!2117 (LexerInterface!4580 List!33444 Token!9382) Bool)

(assert (=> b!2830347 (= res!1178222 (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 lt!1009678))))

(declare-fun lt!1009686 () Unit!47331)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!735 (LexerInterface!4580 List!33444 List!33443 Token!9382) Unit!47331)

(assert (=> b!2830347 (= lt!1009686 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!735 thiss!11212 rules!1102 lt!1009680 lt!1009678))))

(assert (=> b!2830347 (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 lt!1009681)))

(declare-fun lt!1009682 () Unit!47331)

(assert (=> b!2830347 (= lt!1009682 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!735 thiss!11212 rules!1102 lt!1009680 lt!1009681))))

(declare-fun b!2830348 () Bool)

(declare-fun res!1178223 () Bool)

(assert (=> b!2830348 (=> (not res!1178223) (not e!1791796))))

(declare-fun isEmpty!18386 (List!33444) Bool)

(assert (=> b!2830348 (= res!1178223 (not (isEmpty!18386 rules!1102)))))

(declare-fun tp!904239 () Bool)

(declare-fun b!2830349 () Bool)

(declare-fun e!1791797 () Bool)

(declare-fun inv!45263 (String!36622) Bool)

(declare-fun inv!45266 (TokenValueInjection!9868) Bool)

(assert (=> b!2830349 (= e!1791797 (and tp!904239 (inv!45263 (tag!5494 (h!38740 rules!1102))) (inv!45266 (transformation!4990 (h!38740 rules!1102))) e!1791780))))

(declare-fun e!1791795 () Bool)

(declare-fun e!1791801 () Bool)

(assert (=> b!2830350 (= e!1791795 (and e!1791801 tp!904241))))

(declare-fun b!2830351 () Bool)

(declare-fun e!1791787 () Bool)

(declare-fun tp!904245 () Bool)

(assert (=> b!2830351 (= e!1791787 (and tp!904245 mapRes!18561))))

(declare-fun condMapEmpty!18560 () Bool)

(declare-fun mapDefault!18560 () List!33447)

(assert (=> b!2830351 (= condMapEmpty!18560 (= (arr!6479 (_values!4371 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))))) ((as const (Array (_ BitVec 32) List!33447)) mapDefault!18560)))))

(declare-fun b!2830352 () Bool)

(declare-fun size!25943 (BalanceConc!20308) Int)

(declare-fun charsOf!3095 (Token!9382) BalanceConc!20308)

(assert (=> b!2830352 (= e!1791782 (> (size!25943 (charsOf!3095 lt!1009678)) 0))))

(assert (=> b!2830353 (= e!1791794 (and e!1791804 tp!904237))))

(declare-fun b!2830354 () Bool)

(assert (=> b!2830354 (= e!1791803 e!1791805)))

(declare-fun res!1178221 () Bool)

(assert (=> b!2830354 (=> res!1178221 e!1791805)))

(assert (=> b!2830354 (= res!1178221 (not (contains!6090 v!6247 lt!1009678)))))

(assert (=> b!2830354 (= lt!1009678 (apply!7782 v!6247 (+ 1 from!827)))))

(declare-fun mapIsEmpty!18561 () Bool)

(assert (=> mapIsEmpty!18561 mapRes!18561))

(declare-fun b!2830355 () Bool)

(declare-fun res!1178232 () Bool)

(assert (=> b!2830355 (=> res!1178232 e!1791805)))

(declare-fun contains!6091 (List!33443 Token!9382) Bool)

(assert (=> b!2830355 (= res!1178232 (not (contains!6091 lt!1009680 lt!1009678)))))

(declare-fun tp!904251 () Bool)

(declare-fun tp!904255 () Bool)

(declare-fun array_inv!4643 (array!14538) Bool)

(assert (=> b!2830356 (= e!1791783 (and tp!904246 tp!904255 tp!904251 (array_inv!4641 (_keys!4390 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))))) (array_inv!4643 (_values!4371 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))))) e!1791787))))

(declare-fun b!2830357 () Bool)

(declare-fun e!1791789 () Bool)

(assert (=> b!2830357 (= e!1791789 e!1791796)))

(declare-fun res!1178230 () Bool)

(assert (=> b!2830357 (=> (not res!1178230) (not e!1791796))))

(assert (=> b!2830357 (= res!1178230 (<= from!827 lt!1009687))))

(declare-fun size!25944 (BalanceConc!20310) Int)

(assert (=> b!2830357 (= lt!1009687 (size!25944 v!6247))))

(declare-fun b!2830358 () Bool)

(declare-fun res!1178225 () Bool)

(assert (=> b!2830358 (=> (not res!1178225) (not e!1791796))))

(declare-fun rulesInvariant!3996 (LexerInterface!4580 List!33444) Bool)

(assert (=> b!2830358 (= res!1178225 (rulesInvariant!3996 thiss!11212 rules!1102))))

(declare-fun b!2830359 () Bool)

(declare-fun e!1791800 () Bool)

(assert (=> b!2830359 (= e!1791800 e!1791795)))

(declare-fun b!2830360 () Bool)

(declare-fun tp!904252 () Bool)

(assert (=> b!2830360 (= e!1791785 (and tp!904252 mapRes!18560))))

(declare-fun condMapEmpty!18561 () Bool)

(declare-fun mapDefault!18561 () List!33446)

(assert (=> b!2830360 (= condMapEmpty!18561 (= (arr!6478 (_values!4370 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))))) ((as const (Array (_ BitVec 32) List!33446)) mapDefault!18561)))))

(declare-fun b!2830361 () Bool)

(declare-fun res!1178231 () Bool)

(assert (=> b!2830361 (=> res!1178231 e!1791803)))

(assert (=> b!2830361 (= res!1178231 (not (contains!6091 lt!1009680 lt!1009681)))))

(declare-fun b!2830362 () Bool)

(declare-fun e!1791790 () Bool)

(declare-fun tp!904240 () Bool)

(assert (=> b!2830362 (= e!1791790 (and e!1791797 tp!904240))))

(declare-fun b!2830363 () Bool)

(declare-fun e!1791786 () Bool)

(declare-fun tp!904248 () Bool)

(declare-fun inv!45267 (Conc!10336) Bool)

(assert (=> b!2830363 (= e!1791786 (and (inv!45267 (c!457810 v!6247)) tp!904248))))

(declare-fun b!2830364 () Bool)

(assert (=> b!2830364 (= e!1791781 e!1791792)))

(declare-fun b!2830365 () Bool)

(declare-fun lt!1009685 () MutLongMap!4090)

(assert (=> b!2830365 (= e!1791801 (and e!1791798 ((_ is LongMap!4090) lt!1009685)))))

(assert (=> b!2830365 (= lt!1009685 (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))))

(declare-fun res!1178228 () Bool)

(assert (=> start!274858 (=> (not res!1178228) (not e!1791789))))

(assert (=> start!274858 (= res!1178228 (and ((_ is Lexer!4578) thiss!11212) (>= from!827 0)))))

(assert (=> start!274858 e!1791789))

(assert (=> start!274858 e!1791790))

(declare-fun inv!45268 (BalanceConc!20310) Bool)

(assert (=> start!274858 (and (inv!45268 v!6247) e!1791786)))

(assert (=> start!274858 true))

(declare-fun inv!45269 (CacheDown!2814) Bool)

(assert (=> start!274858 (and (inv!45269 cacheDown!433) e!1791802)))

(declare-fun inv!45270 (CacheUp!2692) Bool)

(assert (=> start!274858 (and (inv!45270 cacheUp!420) e!1791800)))

(declare-fun mapIsEmpty!18560 () Bool)

(assert (=> mapIsEmpty!18560 mapRes!18560))

(assert (= (and start!274858 res!1178228) b!2830357))

(assert (= (and b!2830357 res!1178230) b!2830348))

(assert (= (and b!2830348 res!1178223) b!2830358))

(assert (= (and b!2830358 res!1178225) b!2830341))

(assert (= (and b!2830341 res!1178226) b!2830345))

(assert (= (and b!2830345 res!1178229) b!2830337))

(assert (= (and b!2830337 (not res!1178224)) b!2830361))

(assert (= (and b!2830361 (not res!1178231)) b!2830354))

(assert (= (and b!2830354 (not res!1178221)) b!2830355))

(assert (= (and b!2830355 (not res!1178232)) b!2830347))

(assert (= (and b!2830347 res!1178222) b!2830352))

(assert (= (and b!2830347 (not res!1178227)) b!2830344))

(assert (= b!2830349 b!2830339))

(assert (= b!2830362 b!2830349))

(assert (= (and start!274858 ((_ is Cons!33320) rules!1102)) b!2830362))

(assert (= start!274858 b!2830363))

(assert (= (and b!2830360 condMapEmpty!18561) mapIsEmpty!18560))

(assert (= (and b!2830360 (not condMapEmpty!18561)) mapNonEmpty!18560))

(assert (= b!2830346 b!2830360))

(assert (= b!2830340 b!2830346))

(assert (= b!2830364 b!2830340))

(assert (= (and b!2830343 ((_ is LongMap!4089) (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))) b!2830364))

(assert (= b!2830353 b!2830343))

(assert (= (and b!2830336 ((_ is HashMap!3995) (cache!4130 cacheDown!433))) b!2830353))

(assert (= start!274858 b!2830336))

(assert (= (and b!2830351 condMapEmpty!18560) mapIsEmpty!18561))

(assert (= (and b!2830351 (not condMapEmpty!18560)) mapNonEmpty!18561))

(assert (= b!2830356 b!2830351))

(assert (= b!2830338 b!2830356))

(assert (= b!2830342 b!2830338))

(assert (= (and b!2830365 ((_ is LongMap!4090) (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))) b!2830342))

(assert (= b!2830350 b!2830365))

(assert (= (and b!2830359 ((_ is HashMap!3996) (cache!4131 cacheUp!420))) b!2830350))

(assert (= start!274858 b!2830359))

(declare-fun m!3259899 () Bool)

(assert (=> b!2830358 m!3259899))

(declare-fun m!3259901 () Bool)

(assert (=> b!2830355 m!3259901))

(declare-fun m!3259903 () Bool)

(assert (=> b!2830347 m!3259903))

(declare-fun m!3259905 () Bool)

(assert (=> b!2830347 m!3259905))

(declare-fun m!3259907 () Bool)

(assert (=> b!2830347 m!3259907))

(declare-fun m!3259909 () Bool)

(assert (=> b!2830347 m!3259909))

(declare-fun m!3259911 () Bool)

(assert (=> b!2830347 m!3259911))

(declare-fun m!3259913 () Bool)

(assert (=> b!2830363 m!3259913))

(declare-fun m!3259915 () Bool)

(assert (=> b!2830349 m!3259915))

(declare-fun m!3259917 () Bool)

(assert (=> b!2830349 m!3259917))

(declare-fun m!3259919 () Bool)

(assert (=> b!2830352 m!3259919))

(assert (=> b!2830352 m!3259919))

(declare-fun m!3259921 () Bool)

(assert (=> b!2830352 m!3259921))

(declare-fun m!3259923 () Bool)

(assert (=> b!2830341 m!3259923))

(declare-fun m!3259925 () Bool)

(assert (=> b!2830348 m!3259925))

(declare-fun m!3259927 () Bool)

(assert (=> start!274858 m!3259927))

(declare-fun m!3259929 () Bool)

(assert (=> start!274858 m!3259929))

(declare-fun m!3259931 () Bool)

(assert (=> start!274858 m!3259931))

(declare-fun m!3259933 () Bool)

(assert (=> b!2830361 m!3259933))

(declare-fun m!3259935 () Bool)

(assert (=> b!2830354 m!3259935))

(declare-fun m!3259937 () Bool)

(assert (=> b!2830354 m!3259937))

(declare-fun m!3259939 () Bool)

(assert (=> b!2830337 m!3259939))

(declare-fun m!3259941 () Bool)

(assert (=> b!2830337 m!3259941))

(declare-fun m!3259943 () Bool)

(assert (=> b!2830337 m!3259943))

(declare-fun m!3259945 () Bool)

(assert (=> b!2830337 m!3259945))

(declare-fun m!3259947 () Bool)

(assert (=> b!2830337 m!3259947))

(declare-fun m!3259949 () Bool)

(assert (=> b!2830337 m!3259949))

(declare-fun m!3259951 () Bool)

(assert (=> b!2830337 m!3259951))

(declare-fun m!3259953 () Bool)

(assert (=> b!2830337 m!3259953))

(declare-fun m!3259955 () Bool)

(assert (=> b!2830337 m!3259955))

(declare-fun m!3259957 () Bool)

(assert (=> b!2830337 m!3259957))

(declare-fun m!3259959 () Bool)

(assert (=> b!2830337 m!3259959))

(declare-fun m!3259961 () Bool)

(assert (=> b!2830337 m!3259961))

(declare-fun m!3259963 () Bool)

(assert (=> b!2830337 m!3259963))

(declare-fun m!3259965 () Bool)

(assert (=> b!2830337 m!3259965))

(declare-fun m!3259967 () Bool)

(assert (=> b!2830337 m!3259967))

(declare-fun m!3259969 () Bool)

(assert (=> b!2830337 m!3259969))

(declare-fun m!3259971 () Bool)

(assert (=> b!2830356 m!3259971))

(declare-fun m!3259973 () Bool)

(assert (=> b!2830356 m!3259973))

(declare-fun m!3259975 () Bool)

(assert (=> b!2830346 m!3259975))

(declare-fun m!3259977 () Bool)

(assert (=> b!2830346 m!3259977))

(declare-fun m!3259979 () Bool)

(assert (=> b!2830357 m!3259979))

(declare-fun m!3259981 () Bool)

(assert (=> mapNonEmpty!18561 m!3259981))

(declare-fun m!3259983 () Bool)

(assert (=> b!2830344 m!3259983))

(declare-fun m!3259985 () Bool)

(assert (=> mapNonEmpty!18560 m!3259985))

(check-sat b_and!206953 (not start!274858) (not b!2830346) (not b!2830351) (not b!2830356) (not b_next!81995) (not b!2830348) (not b!2830341) b_and!206955 (not b!2830344) b_and!206951 b_and!206949 (not b!2830357) (not b!2830358) (not b_next!81989) (not b_next!81997) (not b!2830337) (not b!2830362) (not b_next!81991) (not b!2830355) (not b_next!81993) (not b!2830347) (not mapNonEmpty!18561) (not b!2830349) (not b_next!81999) b_and!206945 (not b!2830361) (not mapNonEmpty!18560) b_and!206947 (not b!2830363) (not b!2830354) (not b!2830360) (not b!2830352))
(check-sat b_and!206953 (not b_next!81995) (not b_next!81991) (not b_next!81993) b_and!206955 b_and!206951 b_and!206947 b_and!206949 (not b_next!81989) (not b_next!81997) (not b_next!81999) b_and!206945)
(get-model)

(declare-fun d!821213 () Bool)

(declare-fun lt!1009692 () Bool)

(assert (=> d!821213 (= lt!1009692 (contains!6091 (list!12466 v!6247) lt!1009678))))

(declare-fun contains!6092 (Conc!10336 Token!9382) Bool)

(assert (=> d!821213 (= lt!1009692 (contains!6092 (c!457810 v!6247) lt!1009678))))

(assert (=> d!821213 (= (contains!6090 v!6247 lt!1009678) lt!1009692)))

(declare-fun bs!518219 () Bool)

(assert (= bs!518219 d!821213))

(assert (=> bs!518219 m!3259961))

(assert (=> bs!518219 m!3259961))

(declare-fun m!3259987 () Bool)

(assert (=> bs!518219 m!3259987))

(declare-fun m!3259989 () Bool)

(assert (=> bs!518219 m!3259989))

(assert (=> b!2830354 d!821213))

(declare-fun d!821215 () Bool)

(declare-fun lt!1009695 () Token!9382)

(assert (=> d!821215 (= lt!1009695 (apply!7783 (list!12466 v!6247) (+ 1 from!827)))))

(declare-fun apply!7784 (Conc!10336 Int) Token!9382)

(assert (=> d!821215 (= lt!1009695 (apply!7784 (c!457810 v!6247) (+ 1 from!827)))))

(declare-fun e!1791808 () Bool)

(assert (=> d!821215 e!1791808))

(declare-fun res!1178237 () Bool)

(assert (=> d!821215 (=> (not res!1178237) (not e!1791808))))

(assert (=> d!821215 (= res!1178237 (<= 0 (+ 1 from!827)))))

(assert (=> d!821215 (= (apply!7782 v!6247 (+ 1 from!827)) lt!1009695)))

(declare-fun b!2830368 () Bool)

(assert (=> b!2830368 (= e!1791808 (< (+ 1 from!827) (size!25944 v!6247)))))

(assert (= (and d!821215 res!1178237) b!2830368))

(assert (=> d!821215 m!3259961))

(assert (=> d!821215 m!3259961))

(declare-fun m!3259991 () Bool)

(assert (=> d!821215 m!3259991))

(declare-fun m!3259993 () Bool)

(assert (=> d!821215 m!3259993))

(assert (=> b!2830368 m!3259979))

(assert (=> b!2830354 d!821215))

(declare-fun b!2830385 () Bool)

(declare-fun e!1791823 () Bool)

(declare-fun lt!1009789 () List!33443)

(declare-fun size!25945 (List!33443) Int)

(assert (=> b!2830385 (= e!1791823 (<= from!827 (size!25945 lt!1009789)))))

(declare-fun b!2830386 () Bool)

(declare-fun e!1791820 () Bool)

(declare-fun e!1791822 () Bool)

(assert (=> b!2830386 (= e!1791820 e!1791822)))

(declare-fun res!1178259 () Bool)

(assert (=> b!2830386 (=> (not res!1178259) (not e!1791822))))

(declare-fun separableTokensPredicate!912 (LexerInterface!4580 Token!9382 Token!9382 List!33444) Bool)

(assert (=> b!2830386 (= res!1178259 (separableTokensPredicate!912 thiss!11212 (apply!7782 v!6247 from!827) (apply!7782 v!6247 (+ from!827 1)) rules!1102))))

(declare-fun lt!1009770 () Unit!47331)

(declare-fun Unit!47333 () Unit!47331)

(assert (=> b!2830386 (= lt!1009770 Unit!47333)))

(assert (=> b!2830386 (> (size!25943 (charsOf!3095 (apply!7782 v!6247 (+ from!827 1)))) 0)))

(declare-fun lt!1009769 () Unit!47331)

(declare-fun Unit!47334 () Unit!47331)

(assert (=> b!2830386 (= lt!1009769 Unit!47334)))

(assert (=> b!2830386 (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 (apply!7782 v!6247 (+ from!827 1)))))

(declare-fun lt!1009775 () Unit!47331)

(declare-fun Unit!47335 () Unit!47331)

(assert (=> b!2830386 (= lt!1009775 Unit!47335)))

(assert (=> b!2830386 (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 (apply!7782 v!6247 from!827))))

(declare-fun lt!1009764 () Unit!47331)

(declare-fun lt!1009776 () Unit!47331)

(assert (=> b!2830386 (= lt!1009764 lt!1009776)))

(declare-fun lt!1009785 () Token!9382)

(assert (=> b!2830386 (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 lt!1009785)))

(declare-fun lt!1009767 () List!33443)

(assert (=> b!2830386 (= lt!1009776 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!735 thiss!11212 rules!1102 lt!1009767 lt!1009785))))

(assert (=> b!2830386 (= lt!1009785 (apply!7782 v!6247 (+ from!827 1)))))

(assert (=> b!2830386 (= lt!1009767 (list!12466 v!6247))))

(declare-fun lt!1009778 () Unit!47331)

(declare-fun lt!1009786 () Unit!47331)

(assert (=> b!2830386 (= lt!1009778 lt!1009786)))

(declare-fun lt!1009774 () Token!9382)

(assert (=> b!2830386 (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 lt!1009774)))

(declare-fun lt!1009792 () List!33443)

(assert (=> b!2830386 (= lt!1009786 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!735 thiss!11212 rules!1102 lt!1009792 lt!1009774))))

(assert (=> b!2830386 (= lt!1009774 (apply!7782 v!6247 from!827))))

(assert (=> b!2830386 (= lt!1009792 (list!12466 v!6247))))

(declare-fun lt!1009779 () Unit!47331)

(declare-fun lt!1009787 () Unit!47331)

(assert (=> b!2830386 (= lt!1009779 lt!1009787)))

(declare-fun lt!1009762 () List!33443)

(declare-fun lt!1009771 () Int)

(assert (=> b!2830386 (= (tail!4468 (drop!1792 lt!1009762 lt!1009771)) (drop!1792 lt!1009762 (+ lt!1009771 1)))))

(assert (=> b!2830386 (= lt!1009787 (lemmaDropTail!878 lt!1009762 lt!1009771))))

(assert (=> b!2830386 (= lt!1009771 (+ from!827 1))))

(assert (=> b!2830386 (= lt!1009762 (list!12466 v!6247))))

(declare-fun lt!1009781 () Unit!47331)

(declare-fun lt!1009768 () Unit!47331)

(assert (=> b!2830386 (= lt!1009781 lt!1009768)))

(declare-fun lt!1009788 () List!33443)

(assert (=> b!2830386 (= (tail!4468 (drop!1792 lt!1009788 from!827)) (drop!1792 lt!1009788 (+ from!827 1)))))

(assert (=> b!2830386 (= lt!1009768 (lemmaDropTail!878 lt!1009788 from!827))))

(assert (=> b!2830386 (= lt!1009788 (list!12466 v!6247))))

(declare-fun lt!1009772 () Unit!47331)

(declare-fun lt!1009794 () Unit!47331)

(assert (=> b!2830386 (= lt!1009772 lt!1009794)))

(declare-fun lt!1009765 () List!33443)

(declare-fun lt!1009777 () Int)

(assert (=> b!2830386 (= (head!6243 (drop!1792 lt!1009765 lt!1009777)) (apply!7783 lt!1009765 lt!1009777))))

(assert (=> b!2830386 (= lt!1009794 (lemmaDropApply!990 lt!1009765 lt!1009777))))

(assert (=> b!2830386 (= lt!1009777 (+ from!827 1))))

(assert (=> b!2830386 (= lt!1009765 (list!12466 v!6247))))

(declare-fun lt!1009763 () Unit!47331)

(declare-fun lt!1009766 () Unit!47331)

(assert (=> b!2830386 (= lt!1009763 lt!1009766)))

(declare-fun lt!1009773 () List!33443)

(assert (=> b!2830386 (= (head!6243 (drop!1792 lt!1009773 from!827)) (apply!7783 lt!1009773 from!827))))

(assert (=> b!2830386 (= lt!1009766 (lemmaDropApply!990 lt!1009773 from!827))))

(assert (=> b!2830386 (= lt!1009773 (list!12466 v!6247))))

(declare-fun e!1791821 () Bool)

(declare-fun b!2830387 () Bool)

(declare-fun lt!1009790 () List!33443)

(declare-fun rulesProduceEachTokenIndividuallyList!1624 (LexerInterface!4580 List!33444 List!33443) Bool)

(assert (=> b!2830387 (= e!1791821 (rulesProduceEachTokenIndividuallyList!1624 thiss!11212 rules!1102 lt!1009790))))

(declare-fun b!2830388 () Bool)

(declare-fun e!1791819 () Bool)

(assert (=> b!2830388 (= e!1791819 (<= from!827 (size!25944 v!6247)))))

(declare-fun b!2830389 () Bool)

(declare-fun res!1178255 () Bool)

(assert (=> b!2830389 (=> (not res!1178255) (not e!1791821))))

(assert (=> b!2830389 (= res!1178255 (not (isEmpty!18386 rules!1102)))))

(declare-fun d!821217 () Bool)

(declare-fun lt!1009784 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!707 (LexerInterface!4580 List!33443 List!33444) Bool)

(declare-fun dropList!1004 (BalanceConc!20310 Int) List!33443)

(assert (=> d!821217 (= lt!1009784 (tokensListTwoByTwoPredicateSeparableList!707 thiss!11212 (dropList!1004 v!6247 from!827) rules!1102))))

(declare-fun lt!1009791 () Unit!47331)

(declare-fun lt!1009782 () Unit!47331)

(assert (=> d!821217 (= lt!1009791 lt!1009782)))

(declare-fun lt!1009780 () List!33443)

(assert (=> d!821217 (rulesProduceEachTokenIndividuallyList!1624 thiss!11212 rules!1102 lt!1009780)))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!76 (LexerInterface!4580 List!33444 List!33443 List!33443) Unit!47331)

(assert (=> d!821217 (= lt!1009782 (lemmaRulesProduceEachTokenIndividuallyThenForSubSeq!76 thiss!11212 rules!1102 lt!1009790 lt!1009780))))

(assert (=> d!821217 e!1791821))

(declare-fun res!1178261 () Bool)

(assert (=> d!821217 (=> (not res!1178261) (not e!1791821))))

(assert (=> d!821217 (= res!1178261 ((_ is Lexer!4578) thiss!11212))))

(assert (=> d!821217 (= lt!1009780 (dropList!1004 v!6247 from!827))))

(assert (=> d!821217 (= lt!1009790 (list!12466 v!6247))))

(declare-fun lt!1009783 () Unit!47331)

(declare-fun lt!1009793 () Unit!47331)

(assert (=> d!821217 (= lt!1009783 lt!1009793)))

(declare-fun subseq!491 (List!33443 List!33443) Bool)

(assert (=> d!821217 (subseq!491 (drop!1792 lt!1009789 from!827) lt!1009789)))

(declare-fun lemmaDropSubSeq!76 (List!33443 Int) Unit!47331)

(assert (=> d!821217 (= lt!1009793 (lemmaDropSubSeq!76 lt!1009789 from!827))))

(assert (=> d!821217 e!1791823))

(declare-fun res!1178260 () Bool)

(assert (=> d!821217 (=> (not res!1178260) (not e!1791823))))

(assert (=> d!821217 (= res!1178260 (>= from!827 0))))

(assert (=> d!821217 (= lt!1009789 (list!12466 v!6247))))

(assert (=> d!821217 (= lt!1009784 e!1791820)))

(declare-fun res!1178258 () Bool)

(assert (=> d!821217 (=> res!1178258 e!1791820)))

(assert (=> d!821217 (= res!1178258 (not (< from!827 (- (size!25944 v!6247) 1))))))

(assert (=> d!821217 e!1791819))

(declare-fun res!1178256 () Bool)

(assert (=> d!821217 (=> (not res!1178256) (not e!1791819))))

(assert (=> d!821217 (= res!1178256 (>= from!827 0))))

(assert (=> d!821217 (= (tokensListTwoByTwoPredicateSeparable!159 thiss!11212 v!6247 from!827 rules!1102) lt!1009784)))

(declare-fun b!2830390 () Bool)

(assert (=> b!2830390 (= e!1791822 (tokensListTwoByTwoPredicateSeparable!159 thiss!11212 v!6247 (+ from!827 1) rules!1102))))

(declare-fun b!2830391 () Bool)

(declare-fun res!1178254 () Bool)

(assert (=> b!2830391 (=> (not res!1178254) (not e!1791821))))

(assert (=> b!2830391 (= res!1178254 (rulesInvariant!3996 thiss!11212 rules!1102))))

(declare-fun b!2830392 () Bool)

(declare-fun res!1178257 () Bool)

(assert (=> b!2830392 (=> (not res!1178257) (not e!1791821))))

(assert (=> b!2830392 (= res!1178257 (subseq!491 lt!1009780 lt!1009790))))

(assert (= (and d!821217 res!1178256) b!2830388))

(assert (= (and d!821217 (not res!1178258)) b!2830386))

(assert (= (and b!2830386 res!1178259) b!2830390))

(assert (= (and d!821217 res!1178260) b!2830385))

(assert (= (and d!821217 res!1178261) b!2830389))

(assert (= (and b!2830389 res!1178255) b!2830391))

(assert (= (and b!2830391 res!1178254) b!2830392))

(assert (= (and b!2830392 res!1178257) b!2830387))

(declare-fun m!3259995 () Bool)

(assert (=> b!2830385 m!3259995))

(declare-fun m!3259997 () Bool)

(assert (=> b!2830387 m!3259997))

(declare-fun m!3259999 () Bool)

(assert (=> d!821217 m!3259999))

(declare-fun m!3260001 () Bool)

(assert (=> d!821217 m!3260001))

(assert (=> d!821217 m!3259999))

(declare-fun m!3260003 () Bool)

(assert (=> d!821217 m!3260003))

(declare-fun m!3260005 () Bool)

(assert (=> d!821217 m!3260005))

(assert (=> d!821217 m!3259961))

(assert (=> d!821217 m!3259979))

(declare-fun m!3260007 () Bool)

(assert (=> d!821217 m!3260007))

(declare-fun m!3260009 () Bool)

(assert (=> d!821217 m!3260009))

(declare-fun m!3260011 () Bool)

(assert (=> d!821217 m!3260011))

(assert (=> d!821217 m!3260009))

(assert (=> b!2830388 m!3259979))

(declare-fun m!3260013 () Bool)

(assert (=> b!2830386 m!3260013))

(declare-fun m!3260015 () Bool)

(assert (=> b!2830386 m!3260015))

(assert (=> b!2830386 m!3260015))

(declare-fun m!3260017 () Bool)

(assert (=> b!2830386 m!3260017))

(assert (=> b!2830386 m!3259969))

(declare-fun m!3260019 () Bool)

(assert (=> b!2830386 m!3260019))

(declare-fun m!3260021 () Bool)

(assert (=> b!2830386 m!3260021))

(declare-fun m!3260023 () Bool)

(assert (=> b!2830386 m!3260023))

(declare-fun m!3260025 () Bool)

(assert (=> b!2830386 m!3260025))

(declare-fun m!3260027 () Bool)

(assert (=> b!2830386 m!3260027))

(assert (=> b!2830386 m!3259969))

(declare-fun m!3260029 () Bool)

(assert (=> b!2830386 m!3260029))

(declare-fun m!3260031 () Bool)

(assert (=> b!2830386 m!3260031))

(assert (=> b!2830386 m!3259969))

(assert (=> b!2830386 m!3259961))

(assert (=> b!2830386 m!3260019))

(declare-fun m!3260033 () Bool)

(assert (=> b!2830386 m!3260033))

(declare-fun m!3260035 () Bool)

(assert (=> b!2830386 m!3260035))

(declare-fun m!3260037 () Bool)

(assert (=> b!2830386 m!3260037))

(declare-fun m!3260039 () Bool)

(assert (=> b!2830386 m!3260039))

(declare-fun m!3260041 () Bool)

(assert (=> b!2830386 m!3260041))

(declare-fun m!3260043 () Bool)

(assert (=> b!2830386 m!3260043))

(declare-fun m!3260045 () Bool)

(assert (=> b!2830386 m!3260045))

(assert (=> b!2830386 m!3260019))

(declare-fun m!3260047 () Bool)

(assert (=> b!2830386 m!3260047))

(assert (=> b!2830386 m!3260033))

(declare-fun m!3260049 () Bool)

(assert (=> b!2830386 m!3260049))

(declare-fun m!3260051 () Bool)

(assert (=> b!2830386 m!3260051))

(assert (=> b!2830386 m!3260037))

(declare-fun m!3260053 () Bool)

(assert (=> b!2830386 m!3260053))

(declare-fun m!3260055 () Bool)

(assert (=> b!2830386 m!3260055))

(assert (=> b!2830386 m!3260019))

(declare-fun m!3260057 () Bool)

(assert (=> b!2830386 m!3260057))

(assert (=> b!2830386 m!3260047))

(declare-fun m!3260059 () Bool)

(assert (=> b!2830386 m!3260059))

(declare-fun m!3260061 () Bool)

(assert (=> b!2830386 m!3260061))

(assert (=> b!2830386 m!3260035))

(declare-fun m!3260063 () Bool)

(assert (=> b!2830386 m!3260063))

(declare-fun m!3260065 () Bool)

(assert (=> b!2830390 m!3260065))

(declare-fun m!3260067 () Bool)

(assert (=> b!2830392 m!3260067))

(assert (=> b!2830389 m!3259925))

(assert (=> b!2830391 m!3259899))

(assert (=> b!2830344 d!821217))

(declare-fun d!821219 () Bool)

(declare-fun isBalanced!3123 (Conc!10336) Bool)

(assert (=> d!821219 (= (inv!45268 v!6247) (isBalanced!3123 (c!457810 v!6247)))))

(declare-fun bs!518220 () Bool)

(assert (= bs!518220 d!821219))

(declare-fun m!3260069 () Bool)

(assert (=> bs!518220 m!3260069))

(assert (=> start!274858 d!821219))

(declare-fun d!821221 () Bool)

(declare-fun res!1178264 () Bool)

(declare-fun e!1791826 () Bool)

(assert (=> d!821221 (=> (not res!1178264) (not e!1791826))))

(assert (=> d!821221 (= res!1178264 ((_ is HashMap!3995) (cache!4130 cacheDown!433)))))

(assert (=> d!821221 (= (inv!45269 cacheDown!433) e!1791826)))

(declare-fun b!2830395 () Bool)

(declare-fun validCacheMapDown!436 (MutableMap!3995) Bool)

(assert (=> b!2830395 (= e!1791826 (validCacheMapDown!436 (cache!4130 cacheDown!433)))))

(assert (= (and d!821221 res!1178264) b!2830395))

(declare-fun m!3260071 () Bool)

(assert (=> b!2830395 m!3260071))

(assert (=> start!274858 d!821221))

(declare-fun d!821223 () Bool)

(declare-fun res!1178267 () Bool)

(declare-fun e!1791829 () Bool)

(assert (=> d!821223 (=> (not res!1178267) (not e!1791829))))

(assert (=> d!821223 (= res!1178267 ((_ is HashMap!3996) (cache!4131 cacheUp!420)))))

(assert (=> d!821223 (= (inv!45270 cacheUp!420) e!1791829)))

(declare-fun b!2830398 () Bool)

(declare-fun validCacheMapUp!405 (MutableMap!3996) Bool)

(assert (=> b!2830398 (= e!1791829 (validCacheMapUp!405 (cache!4131 cacheUp!420)))))

(assert (= (and d!821223 res!1178267) b!2830398))

(declare-fun m!3260073 () Bool)

(assert (=> b!2830398 m!3260073))

(assert (=> start!274858 d!821223))

(declare-fun d!821225 () Bool)

(declare-fun c!457813 () Bool)

(assert (=> d!821225 (= c!457813 ((_ is Node!10336) (c!457810 v!6247)))))

(declare-fun e!1791834 () Bool)

(assert (=> d!821225 (= (inv!45267 (c!457810 v!6247)) e!1791834)))

(declare-fun b!2830405 () Bool)

(declare-fun inv!45271 (Conc!10336) Bool)

(assert (=> b!2830405 (= e!1791834 (inv!45271 (c!457810 v!6247)))))

(declare-fun b!2830406 () Bool)

(declare-fun e!1791835 () Bool)

(assert (=> b!2830406 (= e!1791834 e!1791835)))

(declare-fun res!1178270 () Bool)

(assert (=> b!2830406 (= res!1178270 (not ((_ is Leaf!15739) (c!457810 v!6247))))))

(assert (=> b!2830406 (=> res!1178270 e!1791835)))

(declare-fun b!2830407 () Bool)

(declare-fun inv!45272 (Conc!10336) Bool)

(assert (=> b!2830407 (= e!1791835 (inv!45272 (c!457810 v!6247)))))

(assert (= (and d!821225 c!457813) b!2830405))

(assert (= (and d!821225 (not c!457813)) b!2830406))

(assert (= (and b!2830406 (not res!1178270)) b!2830407))

(declare-fun m!3260075 () Bool)

(assert (=> b!2830405 m!3260075))

(declare-fun m!3260077 () Bool)

(assert (=> b!2830407 m!3260077))

(assert (=> b!2830363 d!821225))

(declare-fun d!821227 () Bool)

(assert (=> d!821227 (= (array_inv!4641 (_keys!4389 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))))) (bvsge (size!25940 (_keys!4389 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))))) #b00000000000000000000000000000000))))

(assert (=> b!2830346 d!821227))

(declare-fun d!821229 () Bool)

(assert (=> d!821229 (= (array_inv!4642 (_values!4370 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))))) (bvsge (size!25941 (_values!4370 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433))))))) #b00000000000000000000000000000000))))

(assert (=> b!2830346 d!821229))

(declare-fun d!821231 () Bool)

(assert (=> d!821231 (= (array_inv!4641 (_keys!4390 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))))) (bvsge (size!25940 (_keys!4390 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))))) #b00000000000000000000000000000000))))

(assert (=> b!2830356 d!821231))

(declare-fun d!821233 () Bool)

(assert (=> d!821233 (= (array_inv!4643 (_values!4371 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))))) (bvsge (size!25942 (_values!4371 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420))))))) #b00000000000000000000000000000000))))

(assert (=> b!2830356 d!821233))

(declare-fun d!821235 () Bool)

(assert (=> d!821235 (= (tail!4468 lt!1009677) (t!231302 lt!1009677))))

(assert (=> b!2830337 d!821235))

(declare-fun d!821237 () Bool)

(declare-fun e!1791849 () Bool)

(assert (=> d!821237 e!1791849))

(declare-fun res!1178273 () Bool)

(assert (=> d!821237 (=> (not res!1178273) (not e!1791849))))

(declare-fun lt!1009797 () List!33443)

(declare-fun content!4634 (List!33443) (InoxSet Token!9382))

(assert (=> d!821237 (= res!1178273 (= ((_ map implies) (content!4634 lt!1009797) (content!4634 lt!1009680)) ((as const (InoxSet Token!9382)) true)))))

(declare-fun e!1791850 () List!33443)

(assert (=> d!821237 (= lt!1009797 e!1791850)))

(declare-fun c!457822 () Bool)

(assert (=> d!821237 (= c!457822 ((_ is Nil!33319) lt!1009680))))

(assert (=> d!821237 (= (drop!1792 lt!1009680 from!827) lt!1009797)))

(declare-fun b!2830426 () Bool)

(declare-fun e!1791847 () Int)

(assert (=> b!2830426 (= e!1791849 (= (size!25945 lt!1009797) e!1791847))))

(declare-fun c!457825 () Bool)

(assert (=> b!2830426 (= c!457825 (<= from!827 0))))

(declare-fun b!2830427 () Bool)

(declare-fun e!1791848 () List!33443)

(assert (=> b!2830427 (= e!1791850 e!1791848)))

(declare-fun c!457823 () Bool)

(assert (=> b!2830427 (= c!457823 (<= from!827 0))))

(declare-fun b!2830428 () Bool)

(declare-fun e!1791846 () Int)

(assert (=> b!2830428 (= e!1791846 0)))

(declare-fun b!2830429 () Bool)

(declare-fun call!183282 () Int)

(assert (=> b!2830429 (= e!1791847 call!183282)))

(declare-fun bm!183277 () Bool)

(assert (=> bm!183277 (= call!183282 (size!25945 lt!1009680))))

(declare-fun b!2830430 () Bool)

(assert (=> b!2830430 (= e!1791846 (- call!183282 from!827))))

(declare-fun b!2830431 () Bool)

(assert (=> b!2830431 (= e!1791848 lt!1009680)))

(declare-fun b!2830432 () Bool)

(assert (=> b!2830432 (= e!1791848 (drop!1792 (t!231302 lt!1009680) (- from!827 1)))))

(declare-fun b!2830433 () Bool)

(assert (=> b!2830433 (= e!1791850 Nil!33319)))

(declare-fun b!2830434 () Bool)

(assert (=> b!2830434 (= e!1791847 e!1791846)))

(declare-fun c!457824 () Bool)

(assert (=> b!2830434 (= c!457824 (>= from!827 call!183282))))

(assert (= (and d!821237 c!457822) b!2830433))

(assert (= (and d!821237 (not c!457822)) b!2830427))

(assert (= (and b!2830427 c!457823) b!2830431))

(assert (= (and b!2830427 (not c!457823)) b!2830432))

(assert (= (and d!821237 res!1178273) b!2830426))

(assert (= (and b!2830426 c!457825) b!2830429))

(assert (= (and b!2830426 (not c!457825)) b!2830434))

(assert (= (and b!2830434 c!457824) b!2830428))

(assert (= (and b!2830434 (not c!457824)) b!2830430))

(assert (= (or b!2830429 b!2830434 b!2830430) bm!183277))

(declare-fun m!3260079 () Bool)

(assert (=> d!821237 m!3260079))

(declare-fun m!3260081 () Bool)

(assert (=> d!821237 m!3260081))

(declare-fun m!3260083 () Bool)

(assert (=> b!2830426 m!3260083))

(declare-fun m!3260085 () Bool)

(assert (=> bm!183277 m!3260085))

(declare-fun m!3260087 () Bool)

(assert (=> b!2830432 m!3260087))

(assert (=> b!2830337 d!821237))

(declare-fun d!821239 () Bool)

(assert (=> d!821239 (= (tail!4468 (drop!1792 lt!1009680 (+ 1 from!827))) (drop!1792 lt!1009680 (+ 1 from!827 1)))))

(declare-fun lt!1009800 () Unit!47331)

(declare-fun choose!16716 (List!33443 Int) Unit!47331)

(assert (=> d!821239 (= lt!1009800 (choose!16716 lt!1009680 (+ 1 from!827)))))

(declare-fun e!1791853 () Bool)

(assert (=> d!821239 e!1791853))

(declare-fun res!1178276 () Bool)

(assert (=> d!821239 (=> (not res!1178276) (not e!1791853))))

(assert (=> d!821239 (= res!1178276 (>= (+ 1 from!827) 0))))

(assert (=> d!821239 (= (lemmaDropTail!878 lt!1009680 (+ 1 from!827)) lt!1009800)))

(declare-fun b!2830437 () Bool)

(assert (=> b!2830437 (= e!1791853 (< (+ 1 from!827) (size!25945 lt!1009680)))))

(assert (= (and d!821239 res!1178276) b!2830437))

(assert (=> d!821239 m!3259943))

(assert (=> d!821239 m!3259943))

(declare-fun m!3260089 () Bool)

(assert (=> d!821239 m!3260089))

(declare-fun m!3260091 () Bool)

(assert (=> d!821239 m!3260091))

(declare-fun m!3260093 () Bool)

(assert (=> d!821239 m!3260093))

(assert (=> b!2830437 m!3260085))

(assert (=> b!2830337 d!821239))

(declare-fun d!821241 () Bool)

(declare-fun e!1791857 () Bool)

(assert (=> d!821241 e!1791857))

(declare-fun res!1178277 () Bool)

(assert (=> d!821241 (=> (not res!1178277) (not e!1791857))))

(declare-fun lt!1009801 () List!33443)

(assert (=> d!821241 (= res!1178277 (= ((_ map implies) (content!4634 lt!1009801) (content!4634 lt!1009680)) ((as const (InoxSet Token!9382)) true)))))

(declare-fun e!1791858 () List!33443)

(assert (=> d!821241 (= lt!1009801 e!1791858)))

(declare-fun c!457826 () Bool)

(assert (=> d!821241 (= c!457826 ((_ is Nil!33319) lt!1009680))))

(assert (=> d!821241 (= (drop!1792 lt!1009680 (+ 1 from!827)) lt!1009801)))

(declare-fun b!2830438 () Bool)

(declare-fun e!1791855 () Int)

(assert (=> b!2830438 (= e!1791857 (= (size!25945 lt!1009801) e!1791855))))

(declare-fun c!457829 () Bool)

(assert (=> b!2830438 (= c!457829 (<= (+ 1 from!827) 0))))

(declare-fun b!2830439 () Bool)

(declare-fun e!1791856 () List!33443)

(assert (=> b!2830439 (= e!1791858 e!1791856)))

(declare-fun c!457827 () Bool)

(assert (=> b!2830439 (= c!457827 (<= (+ 1 from!827) 0))))

(declare-fun b!2830440 () Bool)

(declare-fun e!1791854 () Int)

(assert (=> b!2830440 (= e!1791854 0)))

(declare-fun b!2830441 () Bool)

(declare-fun call!183283 () Int)

(assert (=> b!2830441 (= e!1791855 call!183283)))

(declare-fun bm!183278 () Bool)

(assert (=> bm!183278 (= call!183283 (size!25945 lt!1009680))))

(declare-fun b!2830442 () Bool)

(assert (=> b!2830442 (= e!1791854 (- call!183283 (+ 1 from!827)))))

(declare-fun b!2830443 () Bool)

(assert (=> b!2830443 (= e!1791856 lt!1009680)))

(declare-fun b!2830444 () Bool)

(assert (=> b!2830444 (= e!1791856 (drop!1792 (t!231302 lt!1009680) (- (+ 1 from!827) 1)))))

(declare-fun b!2830445 () Bool)

(assert (=> b!2830445 (= e!1791858 Nil!33319)))

(declare-fun b!2830446 () Bool)

(assert (=> b!2830446 (= e!1791855 e!1791854)))

(declare-fun c!457828 () Bool)

(assert (=> b!2830446 (= c!457828 (>= (+ 1 from!827) call!183283))))

(assert (= (and d!821241 c!457826) b!2830445))

(assert (= (and d!821241 (not c!457826)) b!2830439))

(assert (= (and b!2830439 c!457827) b!2830443))

(assert (= (and b!2830439 (not c!457827)) b!2830444))

(assert (= (and d!821241 res!1178277) b!2830438))

(assert (= (and b!2830438 c!457829) b!2830441))

(assert (= (and b!2830438 (not c!457829)) b!2830446))

(assert (= (and b!2830446 c!457828) b!2830440))

(assert (= (and b!2830446 (not c!457828)) b!2830442))

(assert (= (or b!2830441 b!2830446 b!2830442) bm!183278))

(declare-fun m!3260095 () Bool)

(assert (=> d!821241 m!3260095))

(assert (=> d!821241 m!3260081))

(declare-fun m!3260097 () Bool)

(assert (=> b!2830438 m!3260097))

(assert (=> bm!183278 m!3260085))

(declare-fun m!3260099 () Bool)

(assert (=> b!2830444 m!3260099))

(assert (=> b!2830337 d!821241))

(declare-fun d!821243 () Bool)

(declare-fun e!1791862 () Bool)

(assert (=> d!821243 e!1791862))

(declare-fun res!1178278 () Bool)

(assert (=> d!821243 (=> (not res!1178278) (not e!1791862))))

(declare-fun lt!1009802 () List!33443)

(assert (=> d!821243 (= res!1178278 (= ((_ map implies) (content!4634 lt!1009802) (content!4634 lt!1009680)) ((as const (InoxSet Token!9382)) true)))))

(declare-fun e!1791863 () List!33443)

(assert (=> d!821243 (= lt!1009802 e!1791863)))

(declare-fun c!457830 () Bool)

(assert (=> d!821243 (= c!457830 ((_ is Nil!33319) lt!1009680))))

(assert (=> d!821243 (= (drop!1792 lt!1009680 (+ 2 from!827)) lt!1009802)))

(declare-fun b!2830447 () Bool)

(declare-fun e!1791860 () Int)

(assert (=> b!2830447 (= e!1791862 (= (size!25945 lt!1009802) e!1791860))))

(declare-fun c!457833 () Bool)

(assert (=> b!2830447 (= c!457833 (<= (+ 2 from!827) 0))))

(declare-fun b!2830448 () Bool)

(declare-fun e!1791861 () List!33443)

(assert (=> b!2830448 (= e!1791863 e!1791861)))

(declare-fun c!457831 () Bool)

(assert (=> b!2830448 (= c!457831 (<= (+ 2 from!827) 0))))

(declare-fun b!2830449 () Bool)

(declare-fun e!1791859 () Int)

(assert (=> b!2830449 (= e!1791859 0)))

(declare-fun b!2830450 () Bool)

(declare-fun call!183284 () Int)

(assert (=> b!2830450 (= e!1791860 call!183284)))

(declare-fun bm!183279 () Bool)

(assert (=> bm!183279 (= call!183284 (size!25945 lt!1009680))))

(declare-fun b!2830451 () Bool)

(assert (=> b!2830451 (= e!1791859 (- call!183284 (+ 2 from!827)))))

(declare-fun b!2830452 () Bool)

(assert (=> b!2830452 (= e!1791861 lt!1009680)))

(declare-fun b!2830453 () Bool)

(assert (=> b!2830453 (= e!1791861 (drop!1792 (t!231302 lt!1009680) (- (+ 2 from!827) 1)))))

(declare-fun b!2830454 () Bool)

(assert (=> b!2830454 (= e!1791863 Nil!33319)))

(declare-fun b!2830455 () Bool)

(assert (=> b!2830455 (= e!1791860 e!1791859)))

(declare-fun c!457832 () Bool)

(assert (=> b!2830455 (= c!457832 (>= (+ 2 from!827) call!183284))))

(assert (= (and d!821243 c!457830) b!2830454))

(assert (= (and d!821243 (not c!457830)) b!2830448))

(assert (= (and b!2830448 c!457831) b!2830452))

(assert (= (and b!2830448 (not c!457831)) b!2830453))

(assert (= (and d!821243 res!1178278) b!2830447))

(assert (= (and b!2830447 c!457833) b!2830450))

(assert (= (and b!2830447 (not c!457833)) b!2830455))

(assert (= (and b!2830455 c!457832) b!2830449))

(assert (= (and b!2830455 (not c!457832)) b!2830451))

(assert (= (or b!2830450 b!2830455 b!2830451) bm!183279))

(declare-fun m!3260101 () Bool)

(assert (=> d!821243 m!3260101))

(assert (=> d!821243 m!3260081))

(declare-fun m!3260103 () Bool)

(assert (=> b!2830447 m!3260103))

(assert (=> bm!183279 m!3260085))

(declare-fun m!3260105 () Bool)

(assert (=> b!2830453 m!3260105))

(assert (=> b!2830337 d!821243))

(declare-fun d!821245 () Bool)

(declare-fun lt!1009803 () Bool)

(assert (=> d!821245 (= lt!1009803 (contains!6091 (list!12466 v!6247) lt!1009681))))

(assert (=> d!821245 (= lt!1009803 (contains!6092 (c!457810 v!6247) lt!1009681))))

(assert (=> d!821245 (= (contains!6090 v!6247 lt!1009681) lt!1009803)))

(declare-fun bs!518221 () Bool)

(assert (= bs!518221 d!821245))

(assert (=> bs!518221 m!3259961))

(assert (=> bs!518221 m!3259961))

(declare-fun m!3260107 () Bool)

(assert (=> bs!518221 m!3260107))

(declare-fun m!3260109 () Bool)

(assert (=> bs!518221 m!3260109))

(assert (=> b!2830337 d!821245))

(declare-fun d!821247 () Bool)

(declare-fun list!12467 (Conc!10336) List!33443)

(assert (=> d!821247 (= (list!12466 v!6247) (list!12467 (c!457810 v!6247)))))

(declare-fun bs!518222 () Bool)

(assert (= bs!518222 d!821247))

(declare-fun m!3260111 () Bool)

(assert (=> bs!518222 m!3260111))

(assert (=> b!2830337 d!821247))

(declare-fun d!821249 () Bool)

(assert (=> d!821249 (= (head!6243 (drop!1792 lt!1009680 (+ 1 from!827))) (apply!7783 lt!1009680 (+ 1 from!827)))))

(declare-fun lt!1009806 () Unit!47331)

(declare-fun choose!16717 (List!33443 Int) Unit!47331)

(assert (=> d!821249 (= lt!1009806 (choose!16717 lt!1009680 (+ 1 from!827)))))

(declare-fun e!1791866 () Bool)

(assert (=> d!821249 e!1791866))

(declare-fun res!1178281 () Bool)

(assert (=> d!821249 (=> (not res!1178281) (not e!1791866))))

(assert (=> d!821249 (= res!1178281 (>= (+ 1 from!827) 0))))

(assert (=> d!821249 (= (lemmaDropApply!990 lt!1009680 (+ 1 from!827)) lt!1009806)))

(declare-fun b!2830458 () Bool)

(assert (=> b!2830458 (= e!1791866 (< (+ 1 from!827) (size!25945 lt!1009680)))))

(assert (= (and d!821249 res!1178281) b!2830458))

(assert (=> d!821249 m!3259943))

(assert (=> d!821249 m!3259943))

(declare-fun m!3260113 () Bool)

(assert (=> d!821249 m!3260113))

(assert (=> d!821249 m!3259947))

(declare-fun m!3260115 () Bool)

(assert (=> d!821249 m!3260115))

(assert (=> b!2830458 m!3260085))

(assert (=> b!2830337 d!821249))

(declare-fun d!821251 () Bool)

(declare-fun lt!1009809 () Token!9382)

(assert (=> d!821251 (contains!6091 lt!1009680 lt!1009809)))

(declare-fun e!1791872 () Token!9382)

(assert (=> d!821251 (= lt!1009809 e!1791872)))

(declare-fun c!457836 () Bool)

(assert (=> d!821251 (= c!457836 (= from!827 0))))

(declare-fun e!1791871 () Bool)

(assert (=> d!821251 e!1791871))

(declare-fun res!1178284 () Bool)

(assert (=> d!821251 (=> (not res!1178284) (not e!1791871))))

(assert (=> d!821251 (= res!1178284 (<= 0 from!827))))

(assert (=> d!821251 (= (apply!7783 lt!1009680 from!827) lt!1009809)))

(declare-fun b!2830465 () Bool)

(assert (=> b!2830465 (= e!1791871 (< from!827 (size!25945 lt!1009680)))))

(declare-fun b!2830466 () Bool)

(assert (=> b!2830466 (= e!1791872 (head!6243 lt!1009680))))

(declare-fun b!2830467 () Bool)

(assert (=> b!2830467 (= e!1791872 (apply!7783 (tail!4468 lt!1009680) (- from!827 1)))))

(assert (= (and d!821251 res!1178284) b!2830465))

(assert (= (and d!821251 c!457836) b!2830466))

(assert (= (and d!821251 (not c!457836)) b!2830467))

(declare-fun m!3260117 () Bool)

(assert (=> d!821251 m!3260117))

(assert (=> b!2830465 m!3260085))

(declare-fun m!3260119 () Bool)

(assert (=> b!2830466 m!3260119))

(declare-fun m!3260121 () Bool)

(assert (=> b!2830467 m!3260121))

(assert (=> b!2830467 m!3260121))

(declare-fun m!3260123 () Bool)

(assert (=> b!2830467 m!3260123))

(assert (=> b!2830337 d!821251))

(declare-fun d!821253 () Bool)

(assert (=> d!821253 (= (head!6243 lt!1009684) (h!38739 lt!1009684))))

(assert (=> b!2830337 d!821253))

(declare-fun d!821255 () Bool)

(declare-fun lt!1009810 () Token!9382)

(assert (=> d!821255 (contains!6091 lt!1009680 lt!1009810)))

(declare-fun e!1791874 () Token!9382)

(assert (=> d!821255 (= lt!1009810 e!1791874)))

(declare-fun c!457837 () Bool)

(assert (=> d!821255 (= c!457837 (= (+ 1 from!827) 0))))

(declare-fun e!1791873 () Bool)

(assert (=> d!821255 e!1791873))

(declare-fun res!1178285 () Bool)

(assert (=> d!821255 (=> (not res!1178285) (not e!1791873))))

(assert (=> d!821255 (= res!1178285 (<= 0 (+ 1 from!827)))))

(assert (=> d!821255 (= (apply!7783 lt!1009680 (+ 1 from!827)) lt!1009810)))

(declare-fun b!2830468 () Bool)

(assert (=> b!2830468 (= e!1791873 (< (+ 1 from!827) (size!25945 lt!1009680)))))

(declare-fun b!2830469 () Bool)

(assert (=> b!2830469 (= e!1791874 (head!6243 lt!1009680))))

(declare-fun b!2830470 () Bool)

(assert (=> b!2830470 (= e!1791874 (apply!7783 (tail!4468 lt!1009680) (- (+ 1 from!827) 1)))))

(assert (= (and d!821255 res!1178285) b!2830468))

(assert (= (and d!821255 c!457837) b!2830469))

(assert (= (and d!821255 (not c!457837)) b!2830470))

(declare-fun m!3260125 () Bool)

(assert (=> d!821255 m!3260125))

(assert (=> b!2830468 m!3260085))

(assert (=> b!2830469 m!3260119))

(assert (=> b!2830470 m!3260121))

(assert (=> b!2830470 m!3260121))

(declare-fun m!3260127 () Bool)

(assert (=> b!2830470 m!3260127))

(assert (=> b!2830337 d!821255))

(declare-fun d!821257 () Bool)

(assert (=> d!821257 (= (tail!4468 lt!1009684) (t!231302 lt!1009684))))

(assert (=> b!2830337 d!821257))

(declare-fun d!821259 () Bool)

(assert (=> d!821259 (= (head!6243 lt!1009677) (h!38739 lt!1009677))))

(assert (=> b!2830337 d!821259))

(declare-fun d!821261 () Bool)

(assert (=> d!821261 (= (head!6243 (drop!1792 lt!1009680 from!827)) (apply!7783 lt!1009680 from!827))))

(declare-fun lt!1009811 () Unit!47331)

(assert (=> d!821261 (= lt!1009811 (choose!16717 lt!1009680 from!827))))

(declare-fun e!1791875 () Bool)

(assert (=> d!821261 e!1791875))

(declare-fun res!1178286 () Bool)

(assert (=> d!821261 (=> (not res!1178286) (not e!1791875))))

(assert (=> d!821261 (= res!1178286 (>= from!827 0))))

(assert (=> d!821261 (= (lemmaDropApply!990 lt!1009680 from!827) lt!1009811)))

(declare-fun b!2830471 () Bool)

(assert (=> b!2830471 (= e!1791875 (< from!827 (size!25945 lt!1009680)))))

(assert (= (and d!821261 res!1178286) b!2830471))

(assert (=> d!821261 m!3259959))

(assert (=> d!821261 m!3259959))

(declare-fun m!3260129 () Bool)

(assert (=> d!821261 m!3260129))

(assert (=> d!821261 m!3259965))

(declare-fun m!3260131 () Bool)

(assert (=> d!821261 m!3260131))

(assert (=> b!2830471 m!3260085))

(assert (=> b!2830337 d!821261))

(declare-fun d!821263 () Bool)

(declare-fun lt!1009812 () Token!9382)

(assert (=> d!821263 (= lt!1009812 (apply!7783 (list!12466 v!6247) from!827))))

(assert (=> d!821263 (= lt!1009812 (apply!7784 (c!457810 v!6247) from!827))))

(declare-fun e!1791876 () Bool)

(assert (=> d!821263 e!1791876))

(declare-fun res!1178287 () Bool)

(assert (=> d!821263 (=> (not res!1178287) (not e!1791876))))

(assert (=> d!821263 (= res!1178287 (<= 0 from!827))))

(assert (=> d!821263 (= (apply!7782 v!6247 from!827) lt!1009812)))

(declare-fun b!2830472 () Bool)

(assert (=> b!2830472 (= e!1791876 (< from!827 (size!25944 v!6247)))))

(assert (= (and d!821263 res!1178287) b!2830472))

(assert (=> d!821263 m!3259961))

(assert (=> d!821263 m!3259961))

(declare-fun m!3260133 () Bool)

(assert (=> d!821263 m!3260133))

(declare-fun m!3260135 () Bool)

(assert (=> d!821263 m!3260135))

(assert (=> b!2830472 m!3259979))

(assert (=> b!2830337 d!821263))

(declare-fun d!821265 () Bool)

(assert (=> d!821265 (= (tail!4468 (drop!1792 lt!1009680 from!827)) (drop!1792 lt!1009680 (+ from!827 1)))))

(declare-fun lt!1009813 () Unit!47331)

(assert (=> d!821265 (= lt!1009813 (choose!16716 lt!1009680 from!827))))

(declare-fun e!1791877 () Bool)

(assert (=> d!821265 e!1791877))

(declare-fun res!1178288 () Bool)

(assert (=> d!821265 (=> (not res!1178288) (not e!1791877))))

(assert (=> d!821265 (= res!1178288 (>= from!827 0))))

(assert (=> d!821265 (= (lemmaDropTail!878 lt!1009680 from!827) lt!1009813)))

(declare-fun b!2830473 () Bool)

(assert (=> b!2830473 (= e!1791877 (< from!827 (size!25945 lt!1009680)))))

(assert (= (and d!821265 res!1178288) b!2830473))

(assert (=> d!821265 m!3259959))

(assert (=> d!821265 m!3259959))

(declare-fun m!3260137 () Bool)

(assert (=> d!821265 m!3260137))

(declare-fun m!3260139 () Bool)

(assert (=> d!821265 m!3260139))

(declare-fun m!3260141 () Bool)

(assert (=> d!821265 m!3260141))

(assert (=> b!2830473 m!3260085))

(assert (=> b!2830337 d!821265))

(declare-fun d!821267 () Bool)

(declare-fun lt!1009816 () Bool)

(assert (=> d!821267 (= lt!1009816 (select (content!4634 lt!1009680) lt!1009678))))

(declare-fun e!1791882 () Bool)

(assert (=> d!821267 (= lt!1009816 e!1791882)))

(declare-fun res!1178294 () Bool)

(assert (=> d!821267 (=> (not res!1178294) (not e!1791882))))

(assert (=> d!821267 (= res!1178294 ((_ is Cons!33319) lt!1009680))))

(assert (=> d!821267 (= (contains!6091 lt!1009680 lt!1009678) lt!1009816)))

(declare-fun b!2830478 () Bool)

(declare-fun e!1791883 () Bool)

(assert (=> b!2830478 (= e!1791882 e!1791883)))

(declare-fun res!1178293 () Bool)

(assert (=> b!2830478 (=> res!1178293 e!1791883)))

(assert (=> b!2830478 (= res!1178293 (= (h!38739 lt!1009680) lt!1009678))))

(declare-fun b!2830479 () Bool)

(assert (=> b!2830479 (= e!1791883 (contains!6091 (t!231302 lt!1009680) lt!1009678))))

(assert (= (and d!821267 res!1178294) b!2830478))

(assert (= (and b!2830478 (not res!1178293)) b!2830479))

(assert (=> d!821267 m!3260081))

(declare-fun m!3260143 () Bool)

(assert (=> d!821267 m!3260143))

(declare-fun m!3260145 () Bool)

(assert (=> b!2830479 m!3260145))

(assert (=> b!2830355 d!821267))

(declare-fun d!821269 () Bool)

(declare-fun res!1178297 () Bool)

(declare-fun e!1791886 () Bool)

(assert (=> d!821269 (=> (not res!1178297) (not e!1791886))))

(declare-fun rulesValid!1844 (LexerInterface!4580 List!33444) Bool)

(assert (=> d!821269 (= res!1178297 (rulesValid!1844 thiss!11212 rules!1102))))

(assert (=> d!821269 (= (rulesInvariant!3996 thiss!11212 rules!1102) e!1791886)))

(declare-fun b!2830482 () Bool)

(declare-datatypes ((List!33448 0))(
  ( (Nil!33324) (Cons!33324 (h!38744 String!36622) (t!231317 List!33448)) )
))
(declare-fun noDuplicateTag!1840 (LexerInterface!4580 List!33444 List!33448) Bool)

(assert (=> b!2830482 (= e!1791886 (noDuplicateTag!1840 thiss!11212 rules!1102 Nil!33324))))

(assert (= (and d!821269 res!1178297) b!2830482))

(declare-fun m!3260147 () Bool)

(assert (=> d!821269 m!3260147))

(declare-fun m!3260149 () Bool)

(assert (=> b!2830482 m!3260149))

(assert (=> b!2830358 d!821269))

(declare-fun b!2830496 () Bool)

(declare-fun e!1791898 () Bool)

(assert (=> b!2830496 (= e!1791898 true)))

(declare-fun b!2830495 () Bool)

(declare-fun e!1791897 () Bool)

(assert (=> b!2830495 (= e!1791897 e!1791898)))

(declare-fun b!2830494 () Bool)

(declare-fun e!1791896 () Bool)

(assert (=> b!2830494 (= e!1791896 e!1791897)))

(declare-fun d!821271 () Bool)

(assert (=> d!821271 e!1791896))

(assert (= b!2830495 b!2830496))

(assert (= b!2830494 b!2830495))

(assert (= (and d!821271 ((_ is Cons!33320) rules!1102)) b!2830494))

(declare-fun lambda!103901 () Int)

(declare-fun order!17747 () Int)

(declare-fun order!17749 () Int)

(declare-fun dynLambda!13995 (Int Int) Int)

(declare-fun dynLambda!13996 (Int Int) Int)

(assert (=> b!2830496 (< (dynLambda!13995 order!17747 (toValue!7016 (transformation!4990 (h!38740 rules!1102)))) (dynLambda!13996 order!17749 lambda!103901))))

(declare-fun order!17751 () Int)

(declare-fun dynLambda!13997 (Int Int) Int)

(assert (=> b!2830496 (< (dynLambda!13997 order!17751 (toChars!6875 (transformation!4990 (h!38740 rules!1102)))) (dynLambda!13996 order!17749 lambda!103901))))

(assert (=> d!821271 true))

(declare-fun e!1791889 () Bool)

(assert (=> d!821271 e!1791889))

(declare-fun res!1178300 () Bool)

(assert (=> d!821271 (=> (not res!1178300) (not e!1791889))))

(declare-fun lt!1009819 () Bool)

(declare-fun forall!6845 (List!33443 Int) Bool)

(assert (=> d!821271 (= res!1178300 (= lt!1009819 (forall!6845 (list!12466 v!6247) lambda!103901)))))

(declare-fun forall!6846 (BalanceConc!20310 Int) Bool)

(assert (=> d!821271 (= lt!1009819 (forall!6846 v!6247 lambda!103901))))

(assert (=> d!821271 (not (isEmpty!18386 rules!1102))))

(assert (=> d!821271 (= (rulesProduceEachTokenIndividually!1098 thiss!11212 rules!1102 v!6247) lt!1009819)))

(declare-fun b!2830485 () Bool)

(assert (=> b!2830485 (= e!1791889 (= lt!1009819 (rulesProduceEachTokenIndividuallyList!1624 thiss!11212 rules!1102 (list!12466 v!6247))))))

(assert (= (and d!821271 res!1178300) b!2830485))

(assert (=> d!821271 m!3259961))

(assert (=> d!821271 m!3259961))

(declare-fun m!3260151 () Bool)

(assert (=> d!821271 m!3260151))

(declare-fun m!3260153 () Bool)

(assert (=> d!821271 m!3260153))

(assert (=> d!821271 m!3259925))

(assert (=> b!2830485 m!3259961))

(assert (=> b!2830485 m!3259961))

(declare-fun m!3260155 () Bool)

(assert (=> b!2830485 m!3260155))

(assert (=> b!2830341 d!821271))

(declare-fun d!821273 () Bool)

(assert (=> d!821273 (= (inv!45263 (tag!5494 (h!38740 rules!1102))) (= (mod (str.len (value!160583 (tag!5494 (h!38740 rules!1102)))) 2) 0))))

(assert (=> b!2830349 d!821273))

(declare-fun d!821275 () Bool)

(declare-fun res!1178303 () Bool)

(declare-fun e!1791901 () Bool)

(assert (=> d!821275 (=> (not res!1178303) (not e!1791901))))

(declare-fun semiInverseModEq!2074 (Int Int) Bool)

(assert (=> d!821275 (= res!1178303 (semiInverseModEq!2074 (toChars!6875 (transformation!4990 (h!38740 rules!1102))) (toValue!7016 (transformation!4990 (h!38740 rules!1102)))))))

(assert (=> d!821275 (= (inv!45266 (transformation!4990 (h!38740 rules!1102))) e!1791901)))

(declare-fun b!2830501 () Bool)

(declare-fun equivClasses!1973 (Int Int) Bool)

(assert (=> b!2830501 (= e!1791901 (equivClasses!1973 (toChars!6875 (transformation!4990 (h!38740 rules!1102))) (toValue!7016 (transformation!4990 (h!38740 rules!1102)))))))

(assert (= (and d!821275 res!1178303) b!2830501))

(declare-fun m!3260157 () Bool)

(assert (=> d!821275 m!3260157))

(declare-fun m!3260159 () Bool)

(assert (=> b!2830501 m!3260159))

(assert (=> b!2830349 d!821275))

(declare-fun lt!1009824 () tuple3!5282)

(declare-fun d!821277 () Bool)

(assert (=> d!821277 (= (_1!19863 lt!1009824) (separableTokensPredicate!912 thiss!11212 lt!1009681 lt!1009678 rules!1102))))

(declare-fun lt!1009825 () tuple3!5282)

(assert (=> d!821277 (= lt!1009824 (tuple3!5283 (not (_1!19863 lt!1009825)) (_2!19863 lt!1009825) (_3!3111 lt!1009825)))))

(declare-fun prefixMatchZipperSequenceMem!3 (Regex!8381 BalanceConc!20308 CacheUp!2692 CacheDown!2814) tuple3!5282)

(declare-fun rulesRegex!994 (LexerInterface!4580 List!33444) Regex!8381)

(declare-fun ++!8098 (BalanceConc!20308 BalanceConc!20308) BalanceConc!20308)

(declare-fun singletonSeq!2158 (C!16944) BalanceConc!20308)

(declare-fun apply!7785 (BalanceConc!20308 Int) C!16944)

(assert (=> d!821277 (= lt!1009825 (prefixMatchZipperSequenceMem!3 (rulesRegex!994 thiss!11212 rules!1102) (++!8098 (charsOf!3095 lt!1009681) (singletonSeq!2158 (apply!7785 (charsOf!3095 lt!1009678) 0))) cacheUp!420 cacheDown!433))))

(assert (=> d!821277 (not (isEmpty!18386 rules!1102))))

(assert (=> d!821277 (= (separableTokensPredicateMem!10 thiss!11212 lt!1009681 lt!1009678 rules!1102 cacheUp!420 cacheDown!433) lt!1009824)))

(declare-fun bs!518223 () Bool)

(assert (= bs!518223 d!821277))

(assert (=> bs!518223 m!3259919))

(declare-fun m!3260161 () Bool)

(assert (=> bs!518223 m!3260161))

(declare-fun m!3260163 () Bool)

(assert (=> bs!518223 m!3260163))

(assert (=> bs!518223 m!3260161))

(declare-fun m!3260165 () Bool)

(assert (=> bs!518223 m!3260165))

(declare-fun m!3260167 () Bool)

(assert (=> bs!518223 m!3260167))

(declare-fun m!3260169 () Bool)

(assert (=> bs!518223 m!3260169))

(assert (=> bs!518223 m!3259925))

(assert (=> bs!518223 m!3260167))

(declare-fun m!3260171 () Bool)

(assert (=> bs!518223 m!3260171))

(declare-fun m!3260173 () Bool)

(assert (=> bs!518223 m!3260173))

(assert (=> bs!518223 m!3259919))

(assert (=> bs!518223 m!3260169))

(assert (=> bs!518223 m!3260165))

(assert (=> bs!518223 m!3260171))

(assert (=> b!2830347 d!821277))

(declare-fun d!821279 () Bool)

(declare-fun lt!1009831 () Bool)

(declare-fun e!1791906 () Bool)

(assert (=> d!821279 (= lt!1009831 e!1791906)))

(declare-fun res!1178311 () Bool)

(assert (=> d!821279 (=> (not res!1178311) (not e!1791906))))

(declare-datatypes ((tuple2!33504 0))(
  ( (tuple2!33505 (_1!19864 BalanceConc!20310) (_2!19864 BalanceConc!20308)) )
))
(declare-fun lex!2012 (LexerInterface!4580 List!33444 BalanceConc!20308) tuple2!33504)

(declare-fun print!1731 (LexerInterface!4580 BalanceConc!20310) BalanceConc!20308)

(declare-fun singletonSeq!2159 (Token!9382) BalanceConc!20310)

(assert (=> d!821279 (= res!1178311 (= (list!12466 (_1!19864 (lex!2012 thiss!11212 rules!1102 (print!1731 thiss!11212 (singletonSeq!2159 lt!1009678))))) (list!12466 (singletonSeq!2159 lt!1009678))))))

(declare-fun e!1791907 () Bool)

(assert (=> d!821279 (= lt!1009831 e!1791907)))

(declare-fun res!1178312 () Bool)

(assert (=> d!821279 (=> (not res!1178312) (not e!1791907))))

(declare-fun lt!1009830 () tuple2!33504)

(assert (=> d!821279 (= res!1178312 (= (size!25944 (_1!19864 lt!1009830)) 1))))

(assert (=> d!821279 (= lt!1009830 (lex!2012 thiss!11212 rules!1102 (print!1731 thiss!11212 (singletonSeq!2159 lt!1009678))))))

(assert (=> d!821279 (not (isEmpty!18386 rules!1102))))

(assert (=> d!821279 (= (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 lt!1009678) lt!1009831)))

(declare-fun b!2830508 () Bool)

(declare-fun res!1178310 () Bool)

(assert (=> b!2830508 (=> (not res!1178310) (not e!1791907))))

(assert (=> b!2830508 (= res!1178310 (= (apply!7782 (_1!19864 lt!1009830) 0) lt!1009678))))

(declare-fun b!2830509 () Bool)

(declare-fun isEmpty!18387 (BalanceConc!20308) Bool)

(assert (=> b!2830509 (= e!1791907 (isEmpty!18387 (_2!19864 lt!1009830)))))

(declare-fun b!2830510 () Bool)

(assert (=> b!2830510 (= e!1791906 (isEmpty!18387 (_2!19864 (lex!2012 thiss!11212 rules!1102 (print!1731 thiss!11212 (singletonSeq!2159 lt!1009678))))))))

(assert (= (and d!821279 res!1178312) b!2830508))

(assert (= (and b!2830508 res!1178310) b!2830509))

(assert (= (and d!821279 res!1178311) b!2830510))

(declare-fun m!3260175 () Bool)

(assert (=> d!821279 m!3260175))

(declare-fun m!3260177 () Bool)

(assert (=> d!821279 m!3260177))

(assert (=> d!821279 m!3259925))

(declare-fun m!3260179 () Bool)

(assert (=> d!821279 m!3260179))

(declare-fun m!3260181 () Bool)

(assert (=> d!821279 m!3260181))

(assert (=> d!821279 m!3260175))

(assert (=> d!821279 m!3260181))

(declare-fun m!3260183 () Bool)

(assert (=> d!821279 m!3260183))

(assert (=> d!821279 m!3260181))

(declare-fun m!3260185 () Bool)

(assert (=> d!821279 m!3260185))

(declare-fun m!3260187 () Bool)

(assert (=> b!2830508 m!3260187))

(declare-fun m!3260189 () Bool)

(assert (=> b!2830509 m!3260189))

(assert (=> b!2830510 m!3260181))

(assert (=> b!2830510 m!3260181))

(assert (=> b!2830510 m!3260175))

(assert (=> b!2830510 m!3260175))

(assert (=> b!2830510 m!3260177))

(declare-fun m!3260191 () Bool)

(assert (=> b!2830510 m!3260191))

(assert (=> b!2830347 d!821279))

(declare-fun d!821281 () Bool)

(assert (=> d!821281 (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 lt!1009678)))

(declare-fun lt!1009834 () Unit!47331)

(declare-fun choose!16718 (LexerInterface!4580 List!33444 List!33443 Token!9382) Unit!47331)

(assert (=> d!821281 (= lt!1009834 (choose!16718 thiss!11212 rules!1102 lt!1009680 lt!1009678))))

(assert (=> d!821281 (not (isEmpty!18386 rules!1102))))

(assert (=> d!821281 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!735 thiss!11212 rules!1102 lt!1009680 lt!1009678) lt!1009834)))

(declare-fun bs!518224 () Bool)

(assert (= bs!518224 d!821281))

(assert (=> bs!518224 m!3259909))

(declare-fun m!3260193 () Bool)

(assert (=> bs!518224 m!3260193))

(assert (=> bs!518224 m!3259925))

(assert (=> b!2830347 d!821281))

(declare-fun d!821283 () Bool)

(declare-fun lt!1009836 () Bool)

(declare-fun e!1791908 () Bool)

(assert (=> d!821283 (= lt!1009836 e!1791908)))

(declare-fun res!1178314 () Bool)

(assert (=> d!821283 (=> (not res!1178314) (not e!1791908))))

(assert (=> d!821283 (= res!1178314 (= (list!12466 (_1!19864 (lex!2012 thiss!11212 rules!1102 (print!1731 thiss!11212 (singletonSeq!2159 lt!1009681))))) (list!12466 (singletonSeq!2159 lt!1009681))))))

(declare-fun e!1791909 () Bool)

(assert (=> d!821283 (= lt!1009836 e!1791909)))

(declare-fun res!1178315 () Bool)

(assert (=> d!821283 (=> (not res!1178315) (not e!1791909))))

(declare-fun lt!1009835 () tuple2!33504)

(assert (=> d!821283 (= res!1178315 (= (size!25944 (_1!19864 lt!1009835)) 1))))

(assert (=> d!821283 (= lt!1009835 (lex!2012 thiss!11212 rules!1102 (print!1731 thiss!11212 (singletonSeq!2159 lt!1009681))))))

(assert (=> d!821283 (not (isEmpty!18386 rules!1102))))

(assert (=> d!821283 (= (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 lt!1009681) lt!1009836)))

(declare-fun b!2830511 () Bool)

(declare-fun res!1178313 () Bool)

(assert (=> b!2830511 (=> (not res!1178313) (not e!1791909))))

(assert (=> b!2830511 (= res!1178313 (= (apply!7782 (_1!19864 lt!1009835) 0) lt!1009681))))

(declare-fun b!2830512 () Bool)

(assert (=> b!2830512 (= e!1791909 (isEmpty!18387 (_2!19864 lt!1009835)))))

(declare-fun b!2830513 () Bool)

(assert (=> b!2830513 (= e!1791908 (isEmpty!18387 (_2!19864 (lex!2012 thiss!11212 rules!1102 (print!1731 thiss!11212 (singletonSeq!2159 lt!1009681))))))))

(assert (= (and d!821283 res!1178315) b!2830511))

(assert (= (and b!2830511 res!1178313) b!2830512))

(assert (= (and d!821283 res!1178314) b!2830513))

(declare-fun m!3260195 () Bool)

(assert (=> d!821283 m!3260195))

(declare-fun m!3260197 () Bool)

(assert (=> d!821283 m!3260197))

(assert (=> d!821283 m!3259925))

(declare-fun m!3260199 () Bool)

(assert (=> d!821283 m!3260199))

(declare-fun m!3260201 () Bool)

(assert (=> d!821283 m!3260201))

(assert (=> d!821283 m!3260195))

(assert (=> d!821283 m!3260201))

(declare-fun m!3260203 () Bool)

(assert (=> d!821283 m!3260203))

(assert (=> d!821283 m!3260201))

(declare-fun m!3260205 () Bool)

(assert (=> d!821283 m!3260205))

(declare-fun m!3260207 () Bool)

(assert (=> b!2830511 m!3260207))

(declare-fun m!3260209 () Bool)

(assert (=> b!2830512 m!3260209))

(assert (=> b!2830513 m!3260201))

(assert (=> b!2830513 m!3260201))

(assert (=> b!2830513 m!3260195))

(assert (=> b!2830513 m!3260195))

(assert (=> b!2830513 m!3260197))

(declare-fun m!3260211 () Bool)

(assert (=> b!2830513 m!3260211))

(assert (=> b!2830347 d!821283))

(declare-fun d!821285 () Bool)

(assert (=> d!821285 (rulesProduceIndividualToken!2117 thiss!11212 rules!1102 lt!1009681)))

(declare-fun lt!1009837 () Unit!47331)

(assert (=> d!821285 (= lt!1009837 (choose!16718 thiss!11212 rules!1102 lt!1009680 lt!1009681))))

(assert (=> d!821285 (not (isEmpty!18386 rules!1102))))

(assert (=> d!821285 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!735 thiss!11212 rules!1102 lt!1009680 lt!1009681) lt!1009837)))

(declare-fun bs!518225 () Bool)

(assert (= bs!518225 d!821285))

(assert (=> bs!518225 m!3259911))

(declare-fun m!3260213 () Bool)

(assert (=> bs!518225 m!3260213))

(assert (=> bs!518225 m!3259925))

(assert (=> b!2830347 d!821285))

(declare-fun d!821287 () Bool)

(declare-fun lt!1009840 () Int)

(assert (=> d!821287 (= lt!1009840 (size!25945 (list!12466 v!6247)))))

(declare-fun size!25946 (Conc!10336) Int)

(assert (=> d!821287 (= lt!1009840 (size!25946 (c!457810 v!6247)))))

(assert (=> d!821287 (= (size!25944 v!6247) lt!1009840)))

(declare-fun bs!518226 () Bool)

(assert (= bs!518226 d!821287))

(assert (=> bs!518226 m!3259961))

(assert (=> bs!518226 m!3259961))

(declare-fun m!3260215 () Bool)

(assert (=> bs!518226 m!3260215))

(declare-fun m!3260217 () Bool)

(assert (=> bs!518226 m!3260217))

(assert (=> b!2830357 d!821287))

(declare-fun d!821289 () Bool)

(assert (=> d!821289 (= (isEmpty!18386 rules!1102) ((_ is Nil!33320) rules!1102))))

(assert (=> b!2830348 d!821289))

(declare-fun d!821291 () Bool)

(declare-fun lt!1009841 () Bool)

(assert (=> d!821291 (= lt!1009841 (select (content!4634 lt!1009680) lt!1009681))))

(declare-fun e!1791910 () Bool)

(assert (=> d!821291 (= lt!1009841 e!1791910)))

(declare-fun res!1178317 () Bool)

(assert (=> d!821291 (=> (not res!1178317) (not e!1791910))))

(assert (=> d!821291 (= res!1178317 ((_ is Cons!33319) lt!1009680))))

(assert (=> d!821291 (= (contains!6091 lt!1009680 lt!1009681) lt!1009841)))

(declare-fun b!2830514 () Bool)

(declare-fun e!1791911 () Bool)

(assert (=> b!2830514 (= e!1791910 e!1791911)))

(declare-fun res!1178316 () Bool)

(assert (=> b!2830514 (=> res!1178316 e!1791911)))

(assert (=> b!2830514 (= res!1178316 (= (h!38739 lt!1009680) lt!1009681))))

(declare-fun b!2830515 () Bool)

(assert (=> b!2830515 (= e!1791911 (contains!6091 (t!231302 lt!1009680) lt!1009681))))

(assert (= (and d!821291 res!1178317) b!2830514))

(assert (= (and b!2830514 (not res!1178316)) b!2830515))

(assert (=> d!821291 m!3260081))

(declare-fun m!3260219 () Bool)

(assert (=> d!821291 m!3260219))

(declare-fun m!3260221 () Bool)

(assert (=> b!2830515 m!3260221))

(assert (=> b!2830361 d!821291))

(declare-fun d!821293 () Bool)

(declare-fun lt!1009844 () Int)

(declare-fun size!25947 (List!33441) Int)

(declare-fun list!12468 (BalanceConc!20308) List!33441)

(assert (=> d!821293 (= lt!1009844 (size!25947 (list!12468 (charsOf!3095 lt!1009678))))))

(declare-fun size!25948 (Conc!10335) Int)

(assert (=> d!821293 (= lt!1009844 (size!25948 (c!457808 (charsOf!3095 lt!1009678))))))

(assert (=> d!821293 (= (size!25943 (charsOf!3095 lt!1009678)) lt!1009844)))

(declare-fun bs!518227 () Bool)

(assert (= bs!518227 d!821293))

(assert (=> bs!518227 m!3259919))

(declare-fun m!3260223 () Bool)

(assert (=> bs!518227 m!3260223))

(assert (=> bs!518227 m!3260223))

(declare-fun m!3260225 () Bool)

(assert (=> bs!518227 m!3260225))

(declare-fun m!3260227 () Bool)

(assert (=> bs!518227 m!3260227))

(assert (=> b!2830352 d!821293))

(declare-fun d!821295 () Bool)

(declare-fun lt!1009847 () BalanceConc!20308)

(assert (=> d!821295 (= (list!12468 lt!1009847) (originalCharacters!5722 lt!1009678))))

(declare-fun dynLambda!13998 (Int TokenValue!5220) BalanceConc!20308)

(assert (=> d!821295 (= lt!1009847 (dynLambda!13998 (toChars!6875 (transformation!4990 (rule!7418 lt!1009678))) (value!160584 lt!1009678)))))

(assert (=> d!821295 (= (charsOf!3095 lt!1009678) lt!1009847)))

(declare-fun b_lambda!84997 () Bool)

(assert (=> (not b_lambda!84997) (not d!821295)))

(declare-fun tb!154177 () Bool)

(declare-fun t!231314 () Bool)

(assert (=> (and b!2830339 (= (toChars!6875 (transformation!4990 (h!38740 rules!1102))) (toChars!6875 (transformation!4990 (rule!7418 lt!1009678)))) t!231314) tb!154177))

(declare-fun b!2830520 () Bool)

(declare-fun e!1791914 () Bool)

(declare-fun tp!904258 () Bool)

(declare-fun inv!45273 (Conc!10335) Bool)

(assert (=> b!2830520 (= e!1791914 (and (inv!45273 (c!457808 (dynLambda!13998 (toChars!6875 (transformation!4990 (rule!7418 lt!1009678))) (value!160584 lt!1009678)))) tp!904258))))

(declare-fun result!192158 () Bool)

(declare-fun inv!45274 (BalanceConc!20308) Bool)

(assert (=> tb!154177 (= result!192158 (and (inv!45274 (dynLambda!13998 (toChars!6875 (transformation!4990 (rule!7418 lt!1009678))) (value!160584 lt!1009678))) e!1791914))))

(assert (= tb!154177 b!2830520))

(declare-fun m!3260229 () Bool)

(assert (=> b!2830520 m!3260229))

(declare-fun m!3260231 () Bool)

(assert (=> tb!154177 m!3260231))

(assert (=> d!821295 t!231314))

(declare-fun b_and!206957 () Bool)

(assert (= b_and!206949 (and (=> t!231314 result!192158) b_and!206957)))

(declare-fun m!3260233 () Bool)

(assert (=> d!821295 m!3260233))

(declare-fun m!3260235 () Bool)

(assert (=> d!821295 m!3260235))

(assert (=> b!2830352 d!821295))

(declare-fun b!2830531 () Bool)

(declare-fun b_free!81297 () Bool)

(declare-fun b_next!82001 () Bool)

(assert (=> b!2830531 (= b_free!81297 (not b_next!82001))))

(declare-fun tp!904267 () Bool)

(declare-fun b_and!206959 () Bool)

(assert (=> b!2830531 (= tp!904267 b_and!206959)))

(declare-fun b_free!81299 () Bool)

(declare-fun b_next!82003 () Bool)

(assert (=> b!2830531 (= b_free!81299 (not b_next!82003))))

(declare-fun tb!154179 () Bool)

(declare-fun t!231316 () Bool)

(assert (=> (and b!2830531 (= (toChars!6875 (transformation!4990 (h!38740 (t!231303 rules!1102)))) (toChars!6875 (transformation!4990 (rule!7418 lt!1009678)))) t!231316) tb!154179))

(declare-fun result!192164 () Bool)

(assert (= result!192164 result!192158))

(assert (=> d!821295 t!231316))

(declare-fun tp!904268 () Bool)

(declare-fun b_and!206961 () Bool)

(assert (=> b!2830531 (= tp!904268 (and (=> t!231316 result!192164) b_and!206961))))

(declare-fun e!1791924 () Bool)

(assert (=> b!2830531 (= e!1791924 (and tp!904267 tp!904268))))

(declare-fun tp!904269 () Bool)

(declare-fun e!1791926 () Bool)

(declare-fun b!2830530 () Bool)

(assert (=> b!2830530 (= e!1791926 (and tp!904269 (inv!45263 (tag!5494 (h!38740 (t!231303 rules!1102)))) (inv!45266 (transformation!4990 (h!38740 (t!231303 rules!1102)))) e!1791924))))

(declare-fun b!2830529 () Bool)

(declare-fun e!1791923 () Bool)

(declare-fun tp!904270 () Bool)

(assert (=> b!2830529 (= e!1791923 (and e!1791926 tp!904270))))

(assert (=> b!2830362 (= tp!904240 e!1791923)))

(assert (= b!2830530 b!2830531))

(assert (= b!2830529 b!2830530))

(assert (= (and b!2830362 ((_ is Cons!33320) (t!231303 rules!1102))) b!2830529))

(declare-fun m!3260237 () Bool)

(assert (=> b!2830530 m!3260237))

(declare-fun m!3260239 () Bool)

(assert (=> b!2830530 m!3260239))

(declare-fun b!2830540 () Bool)

(declare-fun tp!904278 () Bool)

(declare-fun tp!904277 () Bool)

(declare-fun e!1791931 () Bool)

(assert (=> b!2830540 (= e!1791931 (and (inv!45267 (left!25144 (c!457810 v!6247))) tp!904278 (inv!45267 (right!25474 (c!457810 v!6247))) tp!904277))))

(declare-fun b!2830542 () Bool)

(declare-fun e!1791932 () Bool)

(declare-fun tp!904279 () Bool)

(assert (=> b!2830542 (= e!1791932 tp!904279)))

(declare-fun b!2830541 () Bool)

(declare-fun inv!45275 (IArray!20677) Bool)

(assert (=> b!2830541 (= e!1791931 (and (inv!45275 (xs!13448 (c!457810 v!6247))) e!1791932))))

(assert (=> b!2830363 (= tp!904248 (and (inv!45267 (c!457810 v!6247)) e!1791931))))

(assert (= (and b!2830363 ((_ is Node!10336) (c!457810 v!6247))) b!2830540))

(assert (= b!2830541 b!2830542))

(assert (= (and b!2830363 ((_ is Leaf!15739) (c!457810 v!6247))) b!2830541))

(declare-fun m!3260241 () Bool)

(assert (=> b!2830540 m!3260241))

(declare-fun m!3260243 () Bool)

(assert (=> b!2830540 m!3260243))

(declare-fun m!3260245 () Bool)

(assert (=> b!2830541 m!3260245))

(assert (=> b!2830363 m!3259913))

(declare-fun tp!904294 () Bool)

(declare-fun setRes!24814 () Bool)

(declare-fun e!1791941 () Bool)

(declare-fun b!2830551 () Bool)

(declare-fun e!1791940 () Bool)

(declare-fun tp_is_empty!14559 () Bool)

(declare-fun tp!904290 () Bool)

(declare-fun inv!45276 (Context!4970) Bool)

(assert (=> b!2830551 (= e!1791940 (and tp!904294 (inv!45276 (_2!19859 (_1!19860 (h!38742 (zeroValue!4348 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433)))))))))) e!1791941 tp_is_empty!14559 setRes!24814 tp!904290))))

(declare-fun condSetEmpty!24814 () Bool)

(assert (=> b!2830551 (= condSetEmpty!24814 (= (_2!19860 (h!38742 (zeroValue!4348 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433)))))))) ((as const (Array Context!4970 Bool)) false)))))

(declare-fun b!2830552 () Bool)

(declare-fun tp!904292 () Bool)

(assert (=> b!2830552 (= e!1791941 tp!904292)))

(declare-fun b!2830553 () Bool)

(declare-fun e!1791939 () Bool)

(declare-fun tp!904291 () Bool)

(assert (=> b!2830553 (= e!1791939 tp!904291)))

(declare-fun tp!904293 () Bool)

(declare-fun setNonEmpty!24814 () Bool)

(declare-fun setElem!24814 () Context!4970)

(assert (=> setNonEmpty!24814 (= setRes!24814 (and tp!904293 (inv!45276 setElem!24814) e!1791939))))

(declare-fun setRest!24814 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24814 (= (_2!19860 (h!38742 (zeroValue!4348 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433)))))))) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24814 true) setRest!24814))))

(declare-fun setIsEmpty!24814 () Bool)

(assert (=> setIsEmpty!24814 setRes!24814))

(assert (=> b!2830346 (= tp!904253 e!1791940)))

(assert (= b!2830551 b!2830552))

(assert (= (and b!2830551 condSetEmpty!24814) setIsEmpty!24814))

(assert (= (and b!2830551 (not condSetEmpty!24814)) setNonEmpty!24814))

(assert (= setNonEmpty!24814 b!2830553))

(assert (= (and b!2830346 ((_ is Cons!33322) (zeroValue!4348 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433)))))))) b!2830551))

(declare-fun m!3260247 () Bool)

(assert (=> b!2830551 m!3260247))

(declare-fun m!3260249 () Bool)

(assert (=> setNonEmpty!24814 m!3260249))

(declare-fun b!2830554 () Bool)

(declare-fun tp!904299 () Bool)

(declare-fun e!1791943 () Bool)

(declare-fun tp!904295 () Bool)

(declare-fun e!1791944 () Bool)

(declare-fun setRes!24815 () Bool)

(assert (=> b!2830554 (= e!1791943 (and tp!904299 (inv!45276 (_2!19859 (_1!19860 (h!38742 (minValue!4348 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433)))))))))) e!1791944 tp_is_empty!14559 setRes!24815 tp!904295))))

(declare-fun condSetEmpty!24815 () Bool)

(assert (=> b!2830554 (= condSetEmpty!24815 (= (_2!19860 (h!38742 (minValue!4348 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433)))))))) ((as const (Array Context!4970 Bool)) false)))))

(declare-fun b!2830555 () Bool)

(declare-fun tp!904297 () Bool)

(assert (=> b!2830555 (= e!1791944 tp!904297)))

(declare-fun b!2830556 () Bool)

(declare-fun e!1791942 () Bool)

(declare-fun tp!904296 () Bool)

(assert (=> b!2830556 (= e!1791942 tp!904296)))

(declare-fun tp!904298 () Bool)

(declare-fun setElem!24815 () Context!4970)

(declare-fun setNonEmpty!24815 () Bool)

(assert (=> setNonEmpty!24815 (= setRes!24815 (and tp!904298 (inv!45276 setElem!24815) e!1791942))))

(declare-fun setRest!24815 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24815 (= (_2!19860 (h!38742 (minValue!4348 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433)))))))) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24815 true) setRest!24815))))

(declare-fun setIsEmpty!24815 () Bool)

(assert (=> setIsEmpty!24815 setRes!24815))

(assert (=> b!2830346 (= tp!904249 e!1791943)))

(assert (= b!2830554 b!2830555))

(assert (= (and b!2830554 condSetEmpty!24815) setIsEmpty!24815))

(assert (= (and b!2830554 (not condSetEmpty!24815)) setNonEmpty!24815))

(assert (= setNonEmpty!24815 b!2830556))

(assert (= (and b!2830346 ((_ is Cons!33322) (minValue!4348 (v!34339 (underlying!8407 (v!34340 (underlying!8408 (cache!4130 cacheDown!433)))))))) b!2830554))

(declare-fun m!3260251 () Bool)

(assert (=> b!2830554 m!3260251))

(declare-fun m!3260253 () Bool)

(assert (=> setNonEmpty!24815 m!3260253))

(declare-fun setRes!24818 () Bool)

(declare-fun setNonEmpty!24818 () Bool)

(declare-fun e!1791952 () Bool)

(declare-fun setElem!24818 () Context!4970)

(declare-fun tp!904311 () Bool)

(assert (=> setNonEmpty!24818 (= setRes!24818 (and tp!904311 (inv!45276 setElem!24818) e!1791952))))

(declare-fun setRest!24818 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24818 (= (_2!19862 (h!38743 (zeroValue!4349 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420)))))))) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24818 true) setRest!24818))))

(declare-fun setIsEmpty!24818 () Bool)

(assert (=> setIsEmpty!24818 setRes!24818))

(declare-fun e!1791951 () Bool)

(declare-fun e!1791953 () Bool)

(declare-fun b!2830565 () Bool)

(declare-fun tp!904309 () Bool)

(assert (=> b!2830565 (= e!1791953 (and (inv!45276 (_1!19861 (_1!19862 (h!38743 (zeroValue!4349 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420)))))))))) e!1791951 tp_is_empty!14559 setRes!24818 tp!904309))))

(declare-fun condSetEmpty!24818 () Bool)

(assert (=> b!2830565 (= condSetEmpty!24818 (= (_2!19862 (h!38743 (zeroValue!4349 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420)))))))) ((as const (Array Context!4970 Bool)) false)))))

(assert (=> b!2830356 (= tp!904255 e!1791953)))

(declare-fun b!2830566 () Bool)

(declare-fun tp!904310 () Bool)

(assert (=> b!2830566 (= e!1791952 tp!904310)))

(declare-fun b!2830567 () Bool)

(declare-fun tp!904308 () Bool)

(assert (=> b!2830567 (= e!1791951 tp!904308)))

(assert (= b!2830565 b!2830567))

(assert (= (and b!2830565 condSetEmpty!24818) setIsEmpty!24818))

(assert (= (and b!2830565 (not condSetEmpty!24818)) setNonEmpty!24818))

(assert (= setNonEmpty!24818 b!2830566))

(assert (= (and b!2830356 ((_ is Cons!33323) (zeroValue!4349 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420)))))))) b!2830565))

(declare-fun m!3260255 () Bool)

(assert (=> setNonEmpty!24818 m!3260255))

(declare-fun m!3260257 () Bool)

(assert (=> b!2830565 m!3260257))

(declare-fun setRes!24819 () Bool)

(declare-fun setElem!24819 () Context!4970)

(declare-fun tp!904315 () Bool)

(declare-fun e!1791955 () Bool)

(declare-fun setNonEmpty!24819 () Bool)

(assert (=> setNonEmpty!24819 (= setRes!24819 (and tp!904315 (inv!45276 setElem!24819) e!1791955))))

(declare-fun setRest!24819 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24819 (= (_2!19862 (h!38743 (minValue!4349 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420)))))))) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24819 true) setRest!24819))))

(declare-fun setIsEmpty!24819 () Bool)

(assert (=> setIsEmpty!24819 setRes!24819))

(declare-fun e!1791954 () Bool)

(declare-fun b!2830568 () Bool)

(declare-fun tp!904313 () Bool)

(declare-fun e!1791956 () Bool)

(assert (=> b!2830568 (= e!1791956 (and (inv!45276 (_1!19861 (_1!19862 (h!38743 (minValue!4349 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420)))))))))) e!1791954 tp_is_empty!14559 setRes!24819 tp!904313))))

(declare-fun condSetEmpty!24819 () Bool)

(assert (=> b!2830568 (= condSetEmpty!24819 (= (_2!19862 (h!38743 (minValue!4349 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420)))))))) ((as const (Array Context!4970 Bool)) false)))))

(assert (=> b!2830356 (= tp!904251 e!1791956)))

(declare-fun b!2830569 () Bool)

(declare-fun tp!904314 () Bool)

(assert (=> b!2830569 (= e!1791955 tp!904314)))

(declare-fun b!2830570 () Bool)

(declare-fun tp!904312 () Bool)

(assert (=> b!2830570 (= e!1791954 tp!904312)))

(assert (= b!2830568 b!2830570))

(assert (= (and b!2830568 condSetEmpty!24819) setIsEmpty!24819))

(assert (= (and b!2830568 (not condSetEmpty!24819)) setNonEmpty!24819))

(assert (= setNonEmpty!24819 b!2830569))

(assert (= (and b!2830356 ((_ is Cons!33323) (minValue!4349 (v!34341 (underlying!8409 (v!34342 (underlying!8410 (cache!4131 cacheUp!420)))))))) b!2830568))

(declare-fun m!3260259 () Bool)

(assert (=> setNonEmpty!24819 m!3260259))

(declare-fun m!3260261 () Bool)

(assert (=> b!2830568 m!3260261))

(declare-fun b!2830581 () Bool)

(declare-fun e!1791959 () Bool)

(assert (=> b!2830581 (= e!1791959 tp_is_empty!14559)))

(declare-fun b!2830583 () Bool)

(declare-fun tp!904327 () Bool)

(assert (=> b!2830583 (= e!1791959 tp!904327)))

(declare-fun b!2830582 () Bool)

(declare-fun tp!904329 () Bool)

(declare-fun tp!904330 () Bool)

(assert (=> b!2830582 (= e!1791959 (and tp!904329 tp!904330))))

(declare-fun b!2830584 () Bool)

(declare-fun tp!904328 () Bool)

(declare-fun tp!904326 () Bool)

(assert (=> b!2830584 (= e!1791959 (and tp!904328 tp!904326))))

(assert (=> b!2830349 (= tp!904239 e!1791959)))

(assert (= (and b!2830349 ((_ is ElementMatch!8381) (regex!4990 (h!38740 rules!1102)))) b!2830581))

(assert (= (and b!2830349 ((_ is Concat!13602) (regex!4990 (h!38740 rules!1102)))) b!2830582))

(assert (= (and b!2830349 ((_ is Star!8381) (regex!4990 (h!38740 rules!1102)))) b!2830583))

(assert (= (and b!2830349 ((_ is Union!8381) (regex!4990 (h!38740 rules!1102)))) b!2830584))

(declare-fun setNonEmpty!24820 () Bool)

(declare-fun tp!904334 () Bool)

(declare-fun e!1791961 () Bool)

(declare-fun setElem!24820 () Context!4970)

(declare-fun setRes!24820 () Bool)

(assert (=> setNonEmpty!24820 (= setRes!24820 (and tp!904334 (inv!45276 setElem!24820) e!1791961))))

(declare-fun setRest!24820 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24820 (= (_2!19862 (h!38743 mapDefault!18560)) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24820 true) setRest!24820))))

(declare-fun setIsEmpty!24820 () Bool)

(assert (=> setIsEmpty!24820 setRes!24820))

(declare-fun e!1791962 () Bool)

(declare-fun tp!904332 () Bool)

(declare-fun b!2830585 () Bool)

(declare-fun e!1791960 () Bool)

(assert (=> b!2830585 (= e!1791962 (and (inv!45276 (_1!19861 (_1!19862 (h!38743 mapDefault!18560)))) e!1791960 tp_is_empty!14559 setRes!24820 tp!904332))))

(declare-fun condSetEmpty!24820 () Bool)

(assert (=> b!2830585 (= condSetEmpty!24820 (= (_2!19862 (h!38743 mapDefault!18560)) ((as const (Array Context!4970 Bool)) false)))))

(assert (=> b!2830351 (= tp!904245 e!1791962)))

(declare-fun b!2830586 () Bool)

(declare-fun tp!904333 () Bool)

(assert (=> b!2830586 (= e!1791961 tp!904333)))

(declare-fun b!2830587 () Bool)

(declare-fun tp!904331 () Bool)

(assert (=> b!2830587 (= e!1791960 tp!904331)))

(assert (= b!2830585 b!2830587))

(assert (= (and b!2830585 condSetEmpty!24820) setIsEmpty!24820))

(assert (= (and b!2830585 (not condSetEmpty!24820)) setNonEmpty!24820))

(assert (= setNonEmpty!24820 b!2830586))

(assert (= (and b!2830351 ((_ is Cons!33323) mapDefault!18560)) b!2830585))

(declare-fun m!3260263 () Bool)

(assert (=> setNonEmpty!24820 m!3260263))

(declare-fun m!3260265 () Bool)

(assert (=> b!2830585 m!3260265))

(declare-fun e!1791980 () Bool)

(declare-fun setRes!24825 () Bool)

(declare-fun setElem!24825 () Context!4970)

(declare-fun setNonEmpty!24825 () Bool)

(declare-fun tp!904361 () Bool)

(assert (=> setNonEmpty!24825 (= setRes!24825 (and tp!904361 (inv!45276 setElem!24825) e!1791980))))

(declare-fun mapValue!18564 () List!33447)

(declare-fun setRest!24825 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24825 (= (_2!19862 (h!38743 mapValue!18564)) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24825 true) setRest!24825))))

(declare-fun b!2830602 () Bool)

(declare-fun e!1791979 () Bool)

(declare-fun tp!904359 () Bool)

(assert (=> b!2830602 (= e!1791979 tp!904359)))

(declare-fun mapIsEmpty!18564 () Bool)

(declare-fun mapRes!18564 () Bool)

(assert (=> mapIsEmpty!18564 mapRes!18564))

(declare-fun e!1791978 () Bool)

(declare-fun b!2830603 () Bool)

(declare-fun setRes!24826 () Bool)

(declare-fun e!1791977 () Bool)

(declare-fun mapDefault!18564 () List!33447)

(declare-fun tp!904355 () Bool)

(assert (=> b!2830603 (= e!1791977 (and (inv!45276 (_1!19861 (_1!19862 (h!38743 mapDefault!18564)))) e!1791978 tp_is_empty!14559 setRes!24826 tp!904355))))

(declare-fun condSetEmpty!24825 () Bool)

(assert (=> b!2830603 (= condSetEmpty!24825 (= (_2!19862 (h!38743 mapDefault!18564)) ((as const (Array Context!4970 Bool)) false)))))

(declare-fun mapNonEmpty!18564 () Bool)

(declare-fun tp!904354 () Bool)

(declare-fun e!1791975 () Bool)

(assert (=> mapNonEmpty!18564 (= mapRes!18564 (and tp!904354 e!1791975))))

(declare-fun mapRest!18564 () (Array (_ BitVec 32) List!33447))

(declare-fun mapKey!18564 () (_ BitVec 32))

(assert (=> mapNonEmpty!18564 (= mapRest!18560 (store mapRest!18564 mapKey!18564 mapValue!18564))))

(declare-fun condMapEmpty!18564 () Bool)

(assert (=> mapNonEmpty!18561 (= condMapEmpty!18564 (= mapRest!18560 ((as const (Array (_ BitVec 32) List!33447)) mapDefault!18564)))))

(assert (=> mapNonEmpty!18561 (= tp!904254 (and e!1791977 mapRes!18564))))

(declare-fun setIsEmpty!24825 () Bool)

(assert (=> setIsEmpty!24825 setRes!24826))

(declare-fun b!2830604 () Bool)

(declare-fun e!1791976 () Bool)

(declare-fun tp!904360 () Bool)

(assert (=> b!2830604 (= e!1791976 tp!904360)))

(declare-fun setElem!24826 () Context!4970)

(declare-fun setNonEmpty!24826 () Bool)

(declare-fun tp!904353 () Bool)

(assert (=> setNonEmpty!24826 (= setRes!24826 (and tp!904353 (inv!45276 setElem!24826) e!1791976))))

(declare-fun setRest!24826 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24826 (= (_2!19862 (h!38743 mapDefault!18564)) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24826 true) setRest!24826))))

(declare-fun b!2830605 () Bool)

(declare-fun tp!904358 () Bool)

(assert (=> b!2830605 (= e!1791975 (and (inv!45276 (_1!19861 (_1!19862 (h!38743 mapValue!18564)))) e!1791979 tp_is_empty!14559 setRes!24825 tp!904358))))

(declare-fun condSetEmpty!24826 () Bool)

(assert (=> b!2830605 (= condSetEmpty!24826 (= (_2!19862 (h!38743 mapValue!18564)) ((as const (Array Context!4970 Bool)) false)))))

(declare-fun b!2830606 () Bool)

(declare-fun tp!904356 () Bool)

(assert (=> b!2830606 (= e!1791978 tp!904356)))

(declare-fun setIsEmpty!24826 () Bool)

(assert (=> setIsEmpty!24826 setRes!24825))

(declare-fun b!2830607 () Bool)

(declare-fun tp!904357 () Bool)

(assert (=> b!2830607 (= e!1791980 tp!904357)))

(assert (= (and mapNonEmpty!18561 condMapEmpty!18564) mapIsEmpty!18564))

(assert (= (and mapNonEmpty!18561 (not condMapEmpty!18564)) mapNonEmpty!18564))

(assert (= b!2830605 b!2830602))

(assert (= (and b!2830605 condSetEmpty!24826) setIsEmpty!24826))

(assert (= (and b!2830605 (not condSetEmpty!24826)) setNonEmpty!24825))

(assert (= setNonEmpty!24825 b!2830607))

(assert (= (and mapNonEmpty!18564 ((_ is Cons!33323) mapValue!18564)) b!2830605))

(assert (= b!2830603 b!2830606))

(assert (= (and b!2830603 condSetEmpty!24825) setIsEmpty!24825))

(assert (= (and b!2830603 (not condSetEmpty!24825)) setNonEmpty!24826))

(assert (= setNonEmpty!24826 b!2830604))

(assert (= (and mapNonEmpty!18561 ((_ is Cons!33323) mapDefault!18564)) b!2830603))

(declare-fun m!3260267 () Bool)

(assert (=> setNonEmpty!24826 m!3260267))

(declare-fun m!3260269 () Bool)

(assert (=> b!2830605 m!3260269))

(declare-fun m!3260271 () Bool)

(assert (=> setNonEmpty!24825 m!3260271))

(declare-fun m!3260273 () Bool)

(assert (=> mapNonEmpty!18564 m!3260273))

(declare-fun m!3260275 () Bool)

(assert (=> b!2830603 m!3260275))

(declare-fun setElem!24827 () Context!4970)

(declare-fun setNonEmpty!24827 () Bool)

(declare-fun e!1791982 () Bool)

(declare-fun setRes!24827 () Bool)

(declare-fun tp!904365 () Bool)

(assert (=> setNonEmpty!24827 (= setRes!24827 (and tp!904365 (inv!45276 setElem!24827) e!1791982))))

(declare-fun setRest!24827 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24827 (= (_2!19862 (h!38743 mapValue!18561)) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24827 true) setRest!24827))))

(declare-fun setIsEmpty!24827 () Bool)

(assert (=> setIsEmpty!24827 setRes!24827))

(declare-fun e!1791981 () Bool)

(declare-fun tp!904363 () Bool)

(declare-fun b!2830608 () Bool)

(declare-fun e!1791983 () Bool)

(assert (=> b!2830608 (= e!1791983 (and (inv!45276 (_1!19861 (_1!19862 (h!38743 mapValue!18561)))) e!1791981 tp_is_empty!14559 setRes!24827 tp!904363))))

(declare-fun condSetEmpty!24827 () Bool)

(assert (=> b!2830608 (= condSetEmpty!24827 (= (_2!19862 (h!38743 mapValue!18561)) ((as const (Array Context!4970 Bool)) false)))))

(assert (=> mapNonEmpty!18561 (= tp!904242 e!1791983)))

(declare-fun b!2830609 () Bool)

(declare-fun tp!904364 () Bool)

(assert (=> b!2830609 (= e!1791982 tp!904364)))

(declare-fun b!2830610 () Bool)

(declare-fun tp!904362 () Bool)

(assert (=> b!2830610 (= e!1791981 tp!904362)))

(assert (= b!2830608 b!2830610))

(assert (= (and b!2830608 condSetEmpty!24827) setIsEmpty!24827))

(assert (= (and b!2830608 (not condSetEmpty!24827)) setNonEmpty!24827))

(assert (= setNonEmpty!24827 b!2830609))

(assert (= (and mapNonEmpty!18561 ((_ is Cons!33323) mapValue!18561)) b!2830608))

(declare-fun m!3260277 () Bool)

(assert (=> setNonEmpty!24827 m!3260277))

(declare-fun m!3260279 () Bool)

(assert (=> b!2830608 m!3260279))

(declare-fun mapNonEmpty!18567 () Bool)

(declare-fun mapRes!18567 () Bool)

(declare-fun tp!904392 () Bool)

(declare-fun e!1791999 () Bool)

(assert (=> mapNonEmpty!18567 (= mapRes!18567 (and tp!904392 e!1791999))))

(declare-fun mapRest!18567 () (Array (_ BitVec 32) List!33446))

(declare-fun mapValue!18567 () List!33446)

(declare-fun mapKey!18567 () (_ BitVec 32))

(assert (=> mapNonEmpty!18567 (= mapRest!18561 (store mapRest!18567 mapKey!18567 mapValue!18567))))

(declare-fun condMapEmpty!18567 () Bool)

(declare-fun mapDefault!18567 () List!33446)

(assert (=> mapNonEmpty!18560 (= condMapEmpty!18567 (= mapRest!18561 ((as const (Array (_ BitVec 32) List!33446)) mapDefault!18567)))))

(declare-fun e!1791996 () Bool)

(assert (=> mapNonEmpty!18560 (= tp!904247 (and e!1791996 mapRes!18567))))

(declare-fun tp!904391 () Bool)

(declare-fun b!2830625 () Bool)

(declare-fun setRes!24833 () Bool)

(declare-fun tp!904396 () Bool)

(declare-fun e!1791998 () Bool)

(assert (=> b!2830625 (= e!1791999 (and tp!904396 (inv!45276 (_2!19859 (_1!19860 (h!38742 mapValue!18567)))) e!1791998 tp_is_empty!14559 setRes!24833 tp!904391))))

(declare-fun condSetEmpty!24833 () Bool)

(assert (=> b!2830625 (= condSetEmpty!24833 (= (_2!19860 (h!38742 mapValue!18567)) ((as const (Array Context!4970 Bool)) false)))))

(declare-fun setNonEmpty!24832 () Bool)

(declare-fun e!1791997 () Bool)

(declare-fun tp!904394 () Bool)

(declare-fun setElem!24833 () Context!4970)

(assert (=> setNonEmpty!24832 (= setRes!24833 (and tp!904394 (inv!45276 setElem!24833) e!1791997))))

(declare-fun setRest!24833 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24832 (= (_2!19860 (h!38742 mapValue!18567)) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24833 true) setRest!24833))))

(declare-fun setIsEmpty!24832 () Bool)

(declare-fun setRes!24832 () Bool)

(assert (=> setIsEmpty!24832 setRes!24832))

(declare-fun setIsEmpty!24833 () Bool)

(assert (=> setIsEmpty!24833 setRes!24833))

(declare-fun tp!904398 () Bool)

(declare-fun e!1792000 () Bool)

(declare-fun setNonEmpty!24833 () Bool)

(declare-fun setElem!24832 () Context!4970)

(assert (=> setNonEmpty!24833 (= setRes!24832 (and tp!904398 (inv!45276 setElem!24832) e!1792000))))

(declare-fun setRest!24832 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24833 (= (_2!19860 (h!38742 mapDefault!18567)) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24832 true) setRest!24832))))

(declare-fun mapIsEmpty!18567 () Bool)

(assert (=> mapIsEmpty!18567 mapRes!18567))

(declare-fun b!2830626 () Bool)

(declare-fun e!1792001 () Bool)

(declare-fun tp!904388 () Bool)

(assert (=> b!2830626 (= e!1792001 tp!904388)))

(declare-fun b!2830627 () Bool)

(declare-fun tp!904389 () Bool)

(declare-fun tp!904397 () Bool)

(assert (=> b!2830627 (= e!1791996 (and tp!904389 (inv!45276 (_2!19859 (_1!19860 (h!38742 mapDefault!18567)))) e!1792001 tp_is_empty!14559 setRes!24832 tp!904397))))

(declare-fun condSetEmpty!24832 () Bool)

(assert (=> b!2830627 (= condSetEmpty!24832 (= (_2!19860 (h!38742 mapDefault!18567)) ((as const (Array Context!4970 Bool)) false)))))

(declare-fun b!2830628 () Bool)

(declare-fun tp!904395 () Bool)

(assert (=> b!2830628 (= e!1792000 tp!904395)))

(declare-fun b!2830629 () Bool)

(declare-fun tp!904390 () Bool)

(assert (=> b!2830629 (= e!1791997 tp!904390)))

(declare-fun b!2830630 () Bool)

(declare-fun tp!904393 () Bool)

(assert (=> b!2830630 (= e!1791998 tp!904393)))

(assert (= (and mapNonEmpty!18560 condMapEmpty!18567) mapIsEmpty!18567))

(assert (= (and mapNonEmpty!18560 (not condMapEmpty!18567)) mapNonEmpty!18567))

(assert (= b!2830625 b!2830630))

(assert (= (and b!2830625 condSetEmpty!24833) setIsEmpty!24833))

(assert (= (and b!2830625 (not condSetEmpty!24833)) setNonEmpty!24832))

(assert (= setNonEmpty!24832 b!2830629))

(assert (= (and mapNonEmpty!18567 ((_ is Cons!33322) mapValue!18567)) b!2830625))

(assert (= b!2830627 b!2830626))

(assert (= (and b!2830627 condSetEmpty!24832) setIsEmpty!24832))

(assert (= (and b!2830627 (not condSetEmpty!24832)) setNonEmpty!24833))

(assert (= setNonEmpty!24833 b!2830628))

(assert (= (and mapNonEmpty!18560 ((_ is Cons!33322) mapDefault!18567)) b!2830627))

(declare-fun m!3260281 () Bool)

(assert (=> setNonEmpty!24833 m!3260281))

(declare-fun m!3260283 () Bool)

(assert (=> b!2830627 m!3260283))

(declare-fun m!3260285 () Bool)

(assert (=> mapNonEmpty!18567 m!3260285))

(declare-fun m!3260287 () Bool)

(assert (=> setNonEmpty!24832 m!3260287))

(declare-fun m!3260289 () Bool)

(assert (=> b!2830625 m!3260289))

(declare-fun e!1792004 () Bool)

(declare-fun b!2830631 () Bool)

(declare-fun setRes!24834 () Bool)

(declare-fun e!1792003 () Bool)

(declare-fun tp!904403 () Bool)

(declare-fun tp!904399 () Bool)

(assert (=> b!2830631 (= e!1792003 (and tp!904403 (inv!45276 (_2!19859 (_1!19860 (h!38742 mapValue!18560)))) e!1792004 tp_is_empty!14559 setRes!24834 tp!904399))))

(declare-fun condSetEmpty!24834 () Bool)

(assert (=> b!2830631 (= condSetEmpty!24834 (= (_2!19860 (h!38742 mapValue!18560)) ((as const (Array Context!4970 Bool)) false)))))

(declare-fun b!2830632 () Bool)

(declare-fun tp!904401 () Bool)

(assert (=> b!2830632 (= e!1792004 tp!904401)))

(declare-fun b!2830633 () Bool)

(declare-fun e!1792002 () Bool)

(declare-fun tp!904400 () Bool)

(assert (=> b!2830633 (= e!1792002 tp!904400)))

(declare-fun tp!904402 () Bool)

(declare-fun setNonEmpty!24834 () Bool)

(declare-fun setElem!24834 () Context!4970)

(assert (=> setNonEmpty!24834 (= setRes!24834 (and tp!904402 (inv!45276 setElem!24834) e!1792002))))

(declare-fun setRest!24834 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24834 (= (_2!19860 (h!38742 mapValue!18560)) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24834 true) setRest!24834))))

(declare-fun setIsEmpty!24834 () Bool)

(assert (=> setIsEmpty!24834 setRes!24834))

(assert (=> mapNonEmpty!18560 (= tp!904243 e!1792003)))

(assert (= b!2830631 b!2830632))

(assert (= (and b!2830631 condSetEmpty!24834) setIsEmpty!24834))

(assert (= (and b!2830631 (not condSetEmpty!24834)) setNonEmpty!24834))

(assert (= setNonEmpty!24834 b!2830633))

(assert (= (and mapNonEmpty!18560 ((_ is Cons!33322) mapValue!18560)) b!2830631))

(declare-fun m!3260291 () Bool)

(assert (=> b!2830631 m!3260291))

(declare-fun m!3260293 () Bool)

(assert (=> setNonEmpty!24834 m!3260293))

(declare-fun b!2830634 () Bool)

(declare-fun tp!904404 () Bool)

(declare-fun e!1792006 () Bool)

(declare-fun e!1792007 () Bool)

(declare-fun setRes!24835 () Bool)

(declare-fun tp!904408 () Bool)

(assert (=> b!2830634 (= e!1792006 (and tp!904408 (inv!45276 (_2!19859 (_1!19860 (h!38742 mapDefault!18561)))) e!1792007 tp_is_empty!14559 setRes!24835 tp!904404))))

(declare-fun condSetEmpty!24835 () Bool)

(assert (=> b!2830634 (= condSetEmpty!24835 (= (_2!19860 (h!38742 mapDefault!18561)) ((as const (Array Context!4970 Bool)) false)))))

(declare-fun b!2830635 () Bool)

(declare-fun tp!904406 () Bool)

(assert (=> b!2830635 (= e!1792007 tp!904406)))

(declare-fun b!2830636 () Bool)

(declare-fun e!1792005 () Bool)

(declare-fun tp!904405 () Bool)

(assert (=> b!2830636 (= e!1792005 tp!904405)))

(declare-fun setElem!24835 () Context!4970)

(declare-fun tp!904407 () Bool)

(declare-fun setNonEmpty!24835 () Bool)

(assert (=> setNonEmpty!24835 (= setRes!24835 (and tp!904407 (inv!45276 setElem!24835) e!1792005))))

(declare-fun setRest!24835 () (InoxSet Context!4970))

(assert (=> setNonEmpty!24835 (= (_2!19860 (h!38742 mapDefault!18561)) ((_ map or) (store ((as const (Array Context!4970 Bool)) false) setElem!24835 true) setRest!24835))))

(declare-fun setIsEmpty!24835 () Bool)

(assert (=> setIsEmpty!24835 setRes!24835))

(assert (=> b!2830360 (= tp!904252 e!1792006)))

(assert (= b!2830634 b!2830635))

(assert (= (and b!2830634 condSetEmpty!24835) setIsEmpty!24835))

(assert (= (and b!2830634 (not condSetEmpty!24835)) setNonEmpty!24835))

(assert (= setNonEmpty!24835 b!2830636))

(assert (= (and b!2830360 ((_ is Cons!33322) mapDefault!18561)) b!2830634))

(declare-fun m!3260295 () Bool)

(assert (=> b!2830634 m!3260295))

(declare-fun m!3260297 () Bool)

(assert (=> setNonEmpty!24835 m!3260297))

(check-sat (not d!821213) (not b!2830569) b_and!206955 (not d!821271) b_and!206953 (not b!2830444) (not setNonEmpty!24825) (not setNonEmpty!24833) (not d!821245) (not d!821251) (not b_next!81989) (not d!821267) (not b_next!81997) (not b!2830485) (not b!2830405) (not bm!183279) (not b_next!82001) (not b!2830508) (not b!2830482) (not d!821243) (not mapNonEmpty!18564) (not b!2830447) (not b!2830605) (not b!2830602) (not tb!154177) (not d!821279) (not b!2830392) (not b!2830469) (not d!821295) (not b!2830395) (not setNonEmpty!24820) (not b!2830627) (not b!2830587) (not b!2830387) (not d!821241) (not bm!183278) (not b!2830437) (not b_next!81995) (not b!2830626) (not b!2830570) b_and!206961 (not d!821275) (not setNonEmpty!24815) (not b!2830479) (not d!821215) (not b!2830530) (not b_next!82003) (not b!2830391) (not b!2830515) (not b!2830438) (not b!2830467) (not b!2830509) (not b_lambda!84997) (not d!821255) (not b!2830606) (not d!821269) (not b!2830386) (not b_next!81991) (not b!2830568) (not b!2830388) (not b!2830636) (not b_next!81993) (not b!2830629) (not b!2830607) (not b!2830630) (not setNonEmpty!24818) (not d!821287) (not b!2830584) (not b!2830368) (not b!2830472) (not b!2830473) (not setNonEmpty!24832) (not b!2830529) b_and!206957 (not b!2830551) (not b!2830634) (not b!2830610) (not d!821219) (not b!2830566) (not b!2830453) (not b!2830389) (not b!2830398) (not b!2830582) (not b!2830555) (not b!2830432) (not b!2830583) (not b!2830466) (not d!821261) (not d!821285) (not setNonEmpty!24819) (not b!2830540) (not d!821237) (not b!2830567) (not b!2830407) (not b!2830609) (not d!821293) (not b!2830585) b_and!206951 (not d!821263) (not d!821277) (not b!2830603) (not b!2830586) (not b!2830458) (not b!2830604) (not mapNonEmpty!18567) (not b!2830520) (not d!821239) b_and!206945 (not b!2830631) (not b_next!81999) (not bm!183277) (not b!2830511) (not d!821249) b_and!206947 (not setNonEmpty!24814) (not d!821247) (not setNonEmpty!24826) (not setNonEmpty!24834) (not b!2830468) (not d!821291) (not b!2830628) (not d!821283) (not b!2830426) (not b!2830510) (not setNonEmpty!24827) (not b!2830465) (not b!2830633) (not b!2830632) (not b!2830542) (not b!2830363) (not b!2830608) (not b!2830635) (not setNonEmpty!24835) (not b!2830552) (not b!2830494) (not b!2830625) b_and!206959 (not b!2830556) (not b!2830513) (not b!2830565) (not b!2830470) (not d!821281) (not b!2830541) (not b!2830512) (not d!821265) (not b!2830385) (not b!2830501) (not d!821217) (not b!2830390) tp_is_empty!14559 (not b!2830554) (not b!2830471) (not b!2830553))
(check-sat b_and!206953 (not b_next!82001) (not b_next!81995) b_and!206961 (not b_next!82003) (not b_next!81991) (not b_next!81993) b_and!206957 b_and!206955 b_and!206951 b_and!206947 b_and!206959 (not b_next!81989) (not b_next!81997) (not b_next!81999) b_and!206945)
