; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261210 () Bool)

(assert start!261210)

(declare-fun b!2682447 () Bool)

(declare-fun b_free!75853 () Bool)

(declare-fun b_next!76557 () Bool)

(assert (=> b!2682447 (= b_free!75853 (not b_next!76557))))

(declare-fun tp!848849 () Bool)

(declare-fun b_and!198651 () Bool)

(assert (=> b!2682447 (= tp!848849 b_and!198651)))

(declare-fun b!2682439 () Bool)

(declare-fun b_free!75855 () Bool)

(declare-fun b_next!76559 () Bool)

(assert (=> b!2682439 (= b_free!75855 (not b_next!76559))))

(declare-fun tp!848854 () Bool)

(declare-fun b_and!198653 () Bool)

(assert (=> b!2682439 (= tp!848854 b_and!198653)))

(declare-fun b!2682442 () Bool)

(declare-fun b_free!75857 () Bool)

(declare-fun b_next!76561 () Bool)

(assert (=> b!2682442 (= b_free!75857 (not b_next!76561))))

(declare-fun tp!848863 () Bool)

(declare-fun b_and!198655 () Bool)

(assert (=> b!2682442 (= tp!848863 b_and!198655)))

(declare-fun b_free!75859 () Bool)

(declare-fun b_next!76563 () Bool)

(assert (=> b!2682442 (= b_free!75859 (not b_next!76563))))

(declare-fun tp!848847 () Bool)

(declare-fun b_and!198657 () Bool)

(assert (=> b!2682442 (= tp!848847 b_and!198657)))

(declare-fun b!2682421 () Bool)

(declare-fun b_free!75861 () Bool)

(declare-fun b_next!76565 () Bool)

(assert (=> b!2682421 (= b_free!75861 (not b_next!76565))))

(declare-fun tp!848864 () Bool)

(declare-fun b_and!198659 () Bool)

(assert (=> b!2682421 (= tp!848864 b_and!198659)))

(declare-fun b!2682429 () Bool)

(declare-fun b_free!75863 () Bool)

(declare-fun b_next!76567 () Bool)

(assert (=> b!2682429 (= b_free!75863 (not b_next!76567))))

(declare-fun tp!848851 () Bool)

(declare-fun b_and!198661 () Bool)

(assert (=> b!2682429 (= tp!848851 b_and!198661)))

(declare-fun e!1691410 () Bool)

(declare-fun tp!848861 () Bool)

(declare-datatypes ((List!31065 0))(
  ( (Nil!30965) (Cons!30965 (h!36385 (_ BitVec 16)) (t!224570 List!31065)) )
))
(declare-datatypes ((TokenValue!4951 0))(
  ( (FloatLiteralValue!9902 (text!35102 List!31065)) (TokenValueExt!4950 (__x!19851 Int)) (Broken!24755 (value!152365 List!31065)) (Object!5050) (End!4951) (Def!4951) (Underscore!4951) (Match!4951) (Else!4951) (Error!4951) (Case!4951) (If!4951) (Extends!4951) (Abstract!4951) (Class!4951) (Val!4951) (DelimiterValue!9902 (del!5011 List!31065)) (KeywordValue!4957 (value!152366 List!31065)) (CommentValue!9902 (value!152367 List!31065)) (WhitespaceValue!9902 (value!152368 List!31065)) (IndentationValue!4951 (value!152369 List!31065)) (String!34654) (Int32!4951) (Broken!24756 (value!152370 List!31065)) (Boolean!4952) (Unit!45100) (OperatorValue!4954 (op!5011 List!31065)) (IdentifierValue!9902 (value!152371 List!31065)) (IdentifierValue!9903 (value!152372 List!31065)) (WhitespaceValue!9903 (value!152373 List!31065)) (True!9902) (False!9902) (Broken!24757 (value!152374 List!31065)) (Broken!24758 (value!152375 List!31065)) (True!9903) (RightBrace!4951) (RightBracket!4951) (Colon!4951) (Null!4951) (Comma!4951) (LeftBracket!4951) (False!9903) (LeftBrace!4951) (ImaginaryLiteralValue!4951 (text!35103 List!31065)) (StringLiteralValue!14853 (value!152376 List!31065)) (EOFValue!4951 (value!152377 List!31065)) (IdentValue!4951 (value!152378 List!31065)) (DelimiterValue!9903 (value!152379 List!31065)) (DedentValue!4951 (value!152380 List!31065)) (NewLineValue!4951 (value!152381 List!31065)) (IntegerValue!14853 (value!152382 (_ BitVec 32)) (text!35104 List!31065)) (IntegerValue!14854 (value!152383 Int) (text!35105 List!31065)) (Times!4951) (Or!4951) (Equal!4951) (Minus!4951) (Broken!24759 (value!152384 List!31065)) (And!4951) (Div!4951) (LessEqual!4951) (Mod!4951) (Concat!12832) (Not!4951) (Plus!4951) (SpaceValue!4951 (value!152385 List!31065)) (IntegerValue!14855 (value!152386 Int) (text!35106 List!31065)) (StringLiteralValue!14854 (text!35107 List!31065)) (FloatLiteralValue!9903 (text!35108 List!31065)) (BytesLiteralValue!4951 (value!152387 List!31065)) (CommentValue!9903 (value!152388 List!31065)) (StringLiteralValue!14855 (value!152389 List!31065)) (ErrorTokenValue!4951 (msg!5012 List!31065)) )
))
(declare-datatypes ((C!15920 0))(
  ( (C!15921 (val!9894 Int)) )
))
(declare-datatypes ((Regex!7881 0))(
  ( (ElementMatch!7881 (c!431995 C!15920)) (Concat!12833 (regOne!16274 Regex!7881) (regTwo!16274 Regex!7881)) (EmptyExpr!7881) (Star!7881 (reg!8210 Regex!7881)) (EmptyLang!7881) (Union!7881 (regOne!16275 Regex!7881) (regTwo!16275 Regex!7881)) )
))
(declare-datatypes ((List!31066 0))(
  ( (Nil!30966) (Cons!30966 (h!36386 C!15920) (t!224571 List!31066)) )
))
(declare-datatypes ((IArray!19379 0))(
  ( (IArray!19380 (innerList!9747 List!31066)) )
))
(declare-datatypes ((Conc!9687 0))(
  ( (Node!9687 (left!23917 Conc!9687) (right!24247 Conc!9687) (csize!19604 Int) (cheight!9898 Int)) (Leaf!14796 (xs!12717 IArray!19379) (csize!19605 Int)) (Empty!9687) )
))
(declare-datatypes ((BalanceConc!18988 0))(
  ( (BalanceConc!18989 (c!431996 Conc!9687)) )
))
(declare-datatypes ((TokenValueInjection!9342 0))(
  ( (TokenValueInjection!9343 (toValue!6683 Int) (toChars!6542 Int)) )
))
(declare-datatypes ((String!34655 0))(
  ( (String!34656 (value!152390 String)) )
))
(declare-datatypes ((Rule!9258 0))(
  ( (Rule!9259 (regex!4729 Regex!7881) (tag!5233 String!34655) (isSeparator!4729 Bool) (transformation!4729 TokenValueInjection!9342)) )
))
(declare-datatypes ((List!31067 0))(
  ( (Nil!30967) (Cons!30967 (h!36387 Rule!9258) (t!224572 List!31067)) )
))
(declare-fun rules!1381 () List!31067)

(declare-fun e!1691394 () Bool)

(declare-fun b!2682411 () Bool)

(declare-fun inv!41985 (String!34655) Bool)

(declare-fun inv!41986 (TokenValueInjection!9342) Bool)

(assert (=> b!2682411 (= e!1691410 (and tp!848861 (inv!41985 (tag!5233 (h!36387 rules!1381))) (inv!41986 (transformation!4729 (h!36387 rules!1381))) e!1691394))))

(declare-fun mapIsEmpty!15971 () Bool)

(declare-fun mapRes!15971 () Bool)

(assert (=> mapIsEmpty!15971 mapRes!15971))

(declare-fun b!2682412 () Bool)

(declare-fun e!1691408 () Bool)

(declare-fun e!1691402 () Bool)

(assert (=> b!2682412 (= e!1691408 e!1691402)))

(declare-fun b!2682413 () Bool)

(declare-fun e!1691412 () Bool)

(declare-fun e!1691401 () Bool)

(assert (=> b!2682413 (= e!1691412 e!1691401)))

(declare-fun res!1127399 () Bool)

(assert (=> b!2682413 (=> (not res!1127399) (not e!1691401))))

(declare-fun totalInput!354 () BalanceConc!18988)

(declare-fun lt!945256 () List!31066)

(declare-fun input!780 () BalanceConc!18988)

(declare-fun list!11686 (BalanceConc!18988) List!31066)

(declare-fun ++!7564 (List!31066 List!31066) List!31066)

(assert (=> b!2682413 (= res!1127399 (= (list!11686 totalInput!354) (++!7564 lt!945256 (list!11686 input!780))))))

(declare-fun treated!26 () BalanceConc!18988)

(assert (=> b!2682413 (= lt!945256 (list!11686 treated!26))))

(declare-fun b!2682414 () Bool)

(declare-fun e!1691405 () Bool)

(declare-fun tp!848855 () Bool)

(declare-fun inv!41987 (Conc!9687) Bool)

(assert (=> b!2682414 (= e!1691405 (and (inv!41987 (c!431996 treated!26)) tp!848855))))

(declare-fun b!2682415 () Bool)

(declare-fun e!1691407 () Bool)

(declare-fun e!1691385 () Bool)

(assert (=> b!2682415 (= e!1691407 e!1691385)))

(declare-fun b!2682416 () Bool)

(declare-fun e!1691398 () Bool)

(declare-fun e!1691382 () Bool)

(assert (=> b!2682416 (= e!1691398 (not e!1691382))))

(declare-fun res!1127404 () Bool)

(assert (=> b!2682416 (=> res!1127404 e!1691382)))

(declare-datatypes ((List!31068 0))(
  ( (Nil!30968) (Cons!30968 (h!36388 Regex!7881) (t!224573 List!31068)) )
))
(declare-datatypes ((Context!4310 0))(
  ( (Context!4311 (exprs!2655 List!31068)) )
))
(declare-datatypes ((tuple3!4196 0))(
  ( (tuple3!4197 (_1!17796 Regex!7881) (_2!17796 Context!4310) (_3!2568 C!15920)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30456 0))(
  ( (tuple2!30457 (_1!17797 tuple3!4196) (_2!17797 (InoxSet Context!4310))) )
))
(declare-datatypes ((List!31069 0))(
  ( (Nil!30969) (Cons!30969 (h!36389 tuple2!30456) (t!224574 List!31069)) )
))
(declare-datatypes ((array!12440 0))(
  ( (array!12441 (arr!5560 (Array (_ BitVec 32) (_ BitVec 64))) (size!23917 (_ BitVec 32))) )
))
(declare-datatypes ((array!12442 0))(
  ( (array!12443 (arr!5561 (Array (_ BitVec 32) List!31069)) (size!23918 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6980 0))(
  ( (LongMapFixedSize!6981 (defaultEntry!3875 Int) (mask!9167 (_ BitVec 32)) (extraKeys!3739 (_ BitVec 32)) (zeroValue!3749 List!31069) (minValue!3749 List!31069) (_size!7023 (_ BitVec 32)) (_keys!3790 array!12440) (_values!3771 array!12442) (_vacant!3551 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!30458 0))(
  ( (tuple2!30459 (_1!17798 Context!4310) (_2!17798 C!15920)) )
))
(declare-datatypes ((tuple2!30460 0))(
  ( (tuple2!30461 (_1!17799 tuple2!30458) (_2!17799 (InoxSet Context!4310))) )
))
(declare-datatypes ((List!31070 0))(
  ( (Nil!30970) (Cons!30970 (h!36390 tuple2!30460) (t!224575 List!31070)) )
))
(declare-datatypes ((array!12444 0))(
  ( (array!12445 (arr!5562 (Array (_ BitVec 32) List!31070)) (size!23919 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6982 0))(
  ( (LongMapFixedSize!6983 (defaultEntry!3876 Int) (mask!9168 (_ BitVec 32)) (extraKeys!3740 (_ BitVec 32)) (zeroValue!3750 List!31070) (minValue!3750 List!31070) (_size!7024 (_ BitVec 32)) (_keys!3791 array!12440) (_values!3772 array!12444) (_vacant!3552 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13769 0))(
  ( (Cell!13770 (v!32771 LongMapFixedSize!6982)) )
))
(declare-datatypes ((Token!8924 0))(
  ( (Token!8925 (value!152391 TokenValue!4951) (rule!7139 Rule!9258) (size!23920 Int) (originalCharacters!5493 List!31066)) )
))
(declare-datatypes ((tuple2!30462 0))(
  ( (tuple2!30463 (_1!17800 Token!8924) (_2!17800 BalanceConc!18988)) )
))
(declare-datatypes ((Option!6117 0))(
  ( (None!6116) (Some!6116 (v!32772 tuple2!30462)) )
))
(declare-datatypes ((Hashable!3406 0))(
  ( (HashableExt!3405 (__x!19852 Int)) )
))
(declare-datatypes ((MutLongMap!3490 0))(
  ( (LongMap!3490 (underlying!7183 Cell!13769)) (MutLongMapExt!3489 (__x!19853 Int)) )
))
(declare-datatypes ((Cell!13771 0))(
  ( (Cell!13772 (v!32773 MutLongMap!3490)) )
))
(declare-datatypes ((MutableMap!3396 0))(
  ( (MutableMapExt!3395 (__x!19854 Int)) (HashMap!3396 (underlying!7184 Cell!13771) (hashF!5438 Hashable!3406) (_size!7025 (_ BitVec 32)) (defaultValue!3567 Int)) )
))
(declare-datatypes ((CacheUp!2106 0))(
  ( (CacheUp!2107 (cache!3539 MutableMap!3396)) )
))
(declare-datatypes ((Cell!13773 0))(
  ( (Cell!13774 (v!32774 LongMapFixedSize!6980)) )
))
(declare-datatypes ((MutLongMap!3491 0))(
  ( (LongMap!3491 (underlying!7185 Cell!13773)) (MutLongMapExt!3490 (__x!19855 Int)) )
))
(declare-datatypes ((Cell!13775 0))(
  ( (Cell!13776 (v!32775 MutLongMap!3491)) )
))
(declare-datatypes ((Hashable!3407 0))(
  ( (HashableExt!3406 (__x!19856 Int)) )
))
(declare-datatypes ((MutableMap!3397 0))(
  ( (MutableMapExt!3396 (__x!19857 Int)) (HashMap!3397 (underlying!7186 Cell!13775) (hashF!5439 Hashable!3407) (_size!7026 (_ BitVec 32)) (defaultValue!3568 Int)) )
))
(declare-datatypes ((CacheDown!2218 0))(
  ( (CacheDown!2219 (cache!3540 MutableMap!3397)) )
))
(declare-datatypes ((tuple3!4198 0))(
  ( (tuple3!4199 (_1!17801 Option!6117) (_2!17801 CacheUp!2106) (_3!2569 CacheDown!2218)) )
))
(declare-fun lt!945261 () tuple3!4198)

(get-info :version)

(assert (=> b!2682416 (= res!1127404 (not ((_ is Some!6116) (_1!17801 lt!945261))))))

(declare-fun cacheUp!486 () CacheUp!2106)

(declare-datatypes ((LexerInterface!4325 0))(
  ( (LexerInterfaceExt!4322 (__x!19858 Int)) (Lexer!4323) )
))
(declare-fun thiss!12257 () LexerInterface!4325)

(declare-fun cacheDown!499 () CacheDown!2218)

(declare-fun maxPrefixZipperSequenceMem!4 (LexerInterface!4325 List!31067 BalanceConc!18988 CacheUp!2106 CacheDown!2218) tuple3!4198)

(assert (=> b!2682416 (= lt!945261 (maxPrefixZipperSequenceMem!4 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(declare-fun e!1691388 () Bool)

(assert (=> b!2682416 e!1691388))

(declare-fun res!1127408 () Bool)

(assert (=> b!2682416 (=> (not res!1127408) (not e!1691388))))

(declare-datatypes ((List!31071 0))(
  ( (Nil!30971) (Cons!30971 (h!36391 Token!8924) (t!224576 List!31071)) )
))
(declare-datatypes ((IArray!19381 0))(
  ( (IArray!19382 (innerList!9748 List!31071)) )
))
(declare-datatypes ((Conc!9688 0))(
  ( (Node!9688 (left!23918 Conc!9688) (right!24248 Conc!9688) (csize!19606 Int) (cheight!9899 Int)) (Leaf!14797 (xs!12718 IArray!19381) (csize!19607 Int)) (Empty!9688) )
))
(declare-datatypes ((BalanceConc!18990 0))(
  ( (BalanceConc!18991 (c!431997 Conc!9688)) )
))
(declare-datatypes ((tuple2!30464 0))(
  ( (tuple2!30465 (_1!17802 BalanceConc!18990) (_2!17802 BalanceConc!18988)) )
))
(declare-fun e!1691406 () tuple2!30464)

(declare-fun acc!348 () BalanceConc!18990)

(declare-fun lexTailRec!16 (LexerInterface!4325 List!31067 BalanceConc!18988 BalanceConc!18988 BalanceConc!18988 BalanceConc!18990) tuple2!30464)

(assert (=> b!2682416 (= res!1127408 (= (lexTailRec!16 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1691406))))

(declare-fun c!431994 () Bool)

(declare-fun lt!945260 () Option!6117)

(assert (=> b!2682416 (= c!431994 ((_ is Some!6116) lt!945260))))

(declare-fun maxPrefixZipperSequence!992 (LexerInterface!4325 List!31067 BalanceConc!18988) Option!6117)

(assert (=> b!2682416 (= lt!945260 (maxPrefixZipperSequence!992 thiss!12257 rules!1381 input!780))))

(declare-fun lt!945259 () tuple2!30464)

(declare-fun e!1691389 () Bool)

(declare-fun b!2682417 () Bool)

(declare-fun lt!945262 () tuple2!30464)

(declare-fun prepend!1060 (BalanceConc!18990 Token!8924) BalanceConc!18990)

(assert (=> b!2682417 (= e!1691389 (= lt!945262 (tuple2!30465 (prepend!1060 (_1!17802 lt!945259) (_1!17800 (v!32772 lt!945260))) (_2!17802 lt!945259))))))

(declare-fun b!2682418 () Bool)

(declare-fun res!1127397 () Bool)

(assert (=> b!2682418 (=> (not res!1127397) (not e!1691412))))

(declare-fun isEmpty!17683 (List!31067) Bool)

(assert (=> b!2682418 (= res!1127397 (not (isEmpty!17683 rules!1381)))))

(declare-fun b!2682419 () Bool)

(declare-fun res!1127401 () Bool)

(assert (=> b!2682419 (=> (not res!1127401) (not e!1691412))))

(declare-fun rulesInvariant!3819 (LexerInterface!4325 List!31067) Bool)

(assert (=> b!2682419 (= res!1127401 (rulesInvariant!3819 thiss!12257 rules!1381))))

(declare-fun lt!945279 () Option!6117)

(declare-fun lt!945271 () tuple2!30464)

(declare-fun b!2682420 () Bool)

(declare-fun lexRec!589 (LexerInterface!4325 List!31067 BalanceConc!18988) tuple2!30464)

(assert (=> b!2682420 (= lt!945271 (lexRec!589 thiss!12257 rules!1381 (_2!17800 (v!32772 lt!945279))))))

(declare-fun e!1691380 () tuple2!30464)

(assert (=> b!2682420 (= e!1691380 (tuple2!30465 (prepend!1060 (_1!17802 lt!945271) (_1!17800 (v!32772 lt!945279))) (_2!17802 lt!945271)))))

(declare-fun tp!848850 () Bool)

(declare-fun e!1691384 () Bool)

(declare-fun tp!848853 () Bool)

(declare-fun array_inv!3969 (array!12440) Bool)

(declare-fun array_inv!3970 (array!12442) Bool)

(assert (=> b!2682421 (= e!1691385 (and tp!848864 tp!848850 tp!848853 (array_inv!3969 (_keys!3790 (v!32774 (underlying!7185 (v!32775 (underlying!7186 (cache!3540 cacheDown!499))))))) (array_inv!3970 (_values!3771 (v!32774 (underlying!7185 (v!32775 (underlying!7186 (cache!3540 cacheDown!499))))))) e!1691384))))

(declare-fun b!2682422 () Bool)

(declare-fun e!1691393 () Bool)

(declare-fun e!1691396 () Bool)

(assert (=> b!2682422 (= e!1691393 e!1691396)))

(declare-fun b!2682423 () Bool)

(declare-fun e!1691409 () Bool)

(assert (=> b!2682423 (= e!1691409 e!1691407)))

(declare-fun mapIsEmpty!15972 () Bool)

(declare-fun mapRes!15972 () Bool)

(assert (=> mapIsEmpty!15972 mapRes!15972))

(declare-fun b!2682424 () Bool)

(declare-fun lt!945258 () BalanceConc!18988)

(assert (=> b!2682424 (= e!1691380 (tuple2!30465 (BalanceConc!18991 Empty!9688) lt!945258))))

(declare-fun b!2682425 () Bool)

(declare-fun res!1127402 () Bool)

(assert (=> b!2682425 (=> (not res!1127402) (not e!1691398))))

(declare-fun lt!945269 () tuple2!30464)

(assert (=> b!2682425 (= res!1127402 (= (list!11686 (_2!17802 lt!945269)) (list!11686 (_2!17802 lt!945262))))))

(declare-fun b!2682426 () Bool)

(declare-fun e!1691390 () Bool)

(declare-fun tp!848860 () Bool)

(assert (=> b!2682426 (= e!1691390 (and tp!848860 mapRes!15972))))

(declare-fun condMapEmpty!15972 () Bool)

(declare-fun mapDefault!15972 () List!31070)

(assert (=> b!2682426 (= condMapEmpty!15972 (= (arr!5562 (_values!3772 (v!32771 (underlying!7183 (v!32773 (underlying!7184 (cache!3539 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31070)) mapDefault!15972)))))

(declare-fun b!2682427 () Bool)

(assert (=> b!2682427 (= e!1691382 true)))

(declare-fun lt!945266 () BalanceConc!18990)

(declare-fun append!753 (BalanceConc!18990 Token!8924) BalanceConc!18990)

(assert (=> b!2682427 (= lt!945266 (append!753 acc!348 (_1!17800 (v!32772 (_1!17801 lt!945261)))))))

(declare-fun lt!945268 () BalanceConc!18988)

(declare-fun ++!7565 (BalanceConc!18988 BalanceConc!18988) BalanceConc!18988)

(declare-fun charsOf!2978 (Token!8924) BalanceConc!18988)

(assert (=> b!2682427 (= lt!945268 (++!7565 treated!26 (charsOf!2978 (_1!17800 (v!32772 (_1!17801 lt!945261))))))))

(declare-fun b!2682428 () Bool)

(declare-fun e!1691381 () Bool)

(declare-fun tp!848868 () Bool)

(assert (=> b!2682428 (= e!1691381 (and (inv!41987 (c!431996 input!780)) tp!848868))))

(declare-fun e!1691395 () Bool)

(declare-fun e!1691411 () Bool)

(assert (=> b!2682429 (= e!1691395 (and e!1691411 tp!848851))))

(declare-fun b!2682430 () Bool)

(declare-fun lex!1947 (LexerInterface!4325 List!31067 BalanceConc!18988) tuple2!30464)

(declare-fun lexTailRecV2!859 (LexerInterface!4325 List!31067 BalanceConc!18988 BalanceConc!18988 BalanceConc!18988 BalanceConc!18990) tuple2!30464)

(assert (=> b!2682430 (= e!1691388 (= (lex!1947 thiss!12257 rules!1381 input!780) (lexTailRecV2!859 thiss!12257 rules!1381 input!780 (BalanceConc!18989 Empty!9687) input!780 (BalanceConc!18991 Empty!9688))))))

(declare-fun b!2682431 () Bool)

(declare-fun e!1691387 () Bool)

(assert (=> b!2682431 (= e!1691402 e!1691387)))

(declare-fun b!2682432 () Bool)

(declare-fun res!1127403 () Bool)

(assert (=> b!2682432 (=> (not res!1127403) (not e!1691412))))

(declare-fun valid!2699 (CacheDown!2218) Bool)

(assert (=> b!2682432 (= res!1127403 (valid!2699 cacheDown!499))))

(declare-fun mapNonEmpty!15971 () Bool)

(declare-fun tp!848852 () Bool)

(declare-fun tp!848865 () Bool)

(assert (=> mapNonEmpty!15971 (= mapRes!15972 (and tp!848852 tp!848865))))

(declare-fun mapKey!15972 () (_ BitVec 32))

(declare-fun mapRest!15972 () (Array (_ BitVec 32) List!31070))

(declare-fun mapValue!15972 () List!31070)

(assert (=> mapNonEmpty!15971 (= (arr!5562 (_values!3772 (v!32771 (underlying!7183 (v!32773 (underlying!7184 (cache!3539 cacheUp!486))))))) (store mapRest!15972 mapKey!15972 mapValue!15972))))

(declare-fun b!2682433 () Bool)

(declare-fun res!1127407 () Bool)

(declare-fun e!1691403 () Bool)

(assert (=> b!2682433 (=> (not res!1127407) (not e!1691403))))

(declare-fun lt!945278 () tuple2!30464)

(declare-fun isEmpty!17684 (List!31066) Bool)

(assert (=> b!2682433 (= res!1127407 (isEmpty!17684 (list!11686 (_2!17802 lt!945278))))))

(declare-fun b!2682434 () Bool)

(declare-fun res!1127406 () Bool)

(assert (=> b!2682434 (=> (not res!1127406) (not e!1691412))))

(declare-fun valid!2700 (CacheUp!2106) Bool)

(assert (=> b!2682434 (= res!1127406 (valid!2700 cacheUp!486))))

(declare-fun b!2682435 () Bool)

(assert (=> b!2682435 (= e!1691406 (tuple2!30465 acc!348 input!780))))

(declare-fun b!2682436 () Bool)

(assert (=> b!2682436 (= e!1691403 e!1691398)))

(declare-fun res!1127400 () Bool)

(assert (=> b!2682436 (=> (not res!1127400) (not e!1691398))))

(declare-fun list!11687 (BalanceConc!18990) List!31071)

(declare-fun ++!7566 (BalanceConc!18990 BalanceConc!18990) BalanceConc!18990)

(assert (=> b!2682436 (= res!1127400 (= (list!11687 (_1!17802 lt!945269)) (list!11687 (++!7566 acc!348 (_1!17802 lt!945262)))))))

(assert (=> b!2682436 (= lt!945262 (lexRec!589 thiss!12257 rules!1381 input!780))))

(assert (=> b!2682436 (= lt!945269 (lexRec!589 thiss!12257 rules!1381 totalInput!354))))

(declare-fun mapNonEmpty!15972 () Bool)

(declare-fun tp!848866 () Bool)

(declare-fun tp!848862 () Bool)

(assert (=> mapNonEmpty!15972 (= mapRes!15971 (and tp!848866 tp!848862))))

(declare-fun mapRest!15971 () (Array (_ BitVec 32) List!31069))

(declare-fun mapKey!15971 () (_ BitVec 32))

(declare-fun mapValue!15971 () List!31069)

(assert (=> mapNonEmpty!15972 (= (arr!5561 (_values!3771 (v!32774 (underlying!7185 (v!32775 (underlying!7186 (cache!3540 cacheDown!499))))))) (store mapRest!15971 mapKey!15971 mapValue!15971))))

(declare-fun b!2682437 () Bool)

(declare-fun e!1691383 () Bool)

(declare-fun tp!848856 () Bool)

(assert (=> b!2682437 (= e!1691383 (and e!1691410 tp!848856))))

(declare-fun b!2682438 () Bool)

(declare-fun e!1691404 () Bool)

(declare-fun tp!848867 () Bool)

(declare-fun inv!41988 (Conc!9688) Bool)

(assert (=> b!2682438 (= e!1691404 (and (inv!41988 (c!431997 acc!348)) tp!848867))))

(declare-fun tp!848858 () Bool)

(declare-fun tp!848859 () Bool)

(declare-fun array_inv!3971 (array!12444) Bool)

(assert (=> b!2682439 (= e!1691387 (and tp!848854 tp!848858 tp!848859 (array_inv!3969 (_keys!3791 (v!32771 (underlying!7183 (v!32773 (underlying!7184 (cache!3539 cacheUp!486))))))) (array_inv!3971 (_values!3772 (v!32771 (underlying!7183 (v!32773 (underlying!7184 (cache!3539 cacheUp!486))))))) e!1691390))))

(declare-fun b!2682440 () Bool)

(declare-fun lt!945277 () BalanceConc!18990)

(assert (=> b!2682440 (= e!1691406 (lexTailRec!16 thiss!12257 rules!1381 totalInput!354 lt!945258 (_2!17800 (v!32772 lt!945260)) lt!945277))))

(assert (=> b!2682440 (= lt!945259 (lexRec!589 thiss!12257 rules!1381 (_2!17800 (v!32772 lt!945260))))))

(declare-fun lt!945255 () BalanceConc!18988)

(assert (=> b!2682440 (= lt!945255 (charsOf!2978 (_1!17800 (v!32772 lt!945260))))))

(declare-fun lt!945264 () List!31066)

(assert (=> b!2682440 (= lt!945264 (list!11686 lt!945255))))

(declare-fun lt!945276 () List!31066)

(assert (=> b!2682440 (= lt!945276 (list!11686 (_2!17800 (v!32772 lt!945260))))))

(declare-datatypes ((Unit!45101 0))(
  ( (Unit!45102) )
))
(declare-fun lt!945265 () Unit!45101)

(declare-fun lemmaConcatAssociativity!1532 (List!31066 List!31066 List!31066) Unit!45101)

(assert (=> b!2682440 (= lt!945265 (lemmaConcatAssociativity!1532 lt!945256 lt!945264 lt!945276))))

(declare-fun lt!945257 () List!31066)

(assert (=> b!2682440 (= lt!945257 (++!7564 lt!945256 lt!945264))))

(declare-fun res!1127409 () Bool)

(assert (=> b!2682440 (= res!1127409 (= (++!7564 lt!945257 lt!945276) (++!7564 lt!945256 (++!7564 lt!945264 lt!945276))))))

(assert (=> b!2682440 (=> (not res!1127409) (not e!1691389))))

(assert (=> b!2682440 e!1691389))

(declare-fun lt!945254 () List!31071)

(assert (=> b!2682440 (= lt!945254 (Cons!30971 (_1!17800 (v!32772 lt!945260)) Nil!30971))))

(declare-fun lt!945272 () List!31071)

(assert (=> b!2682440 (= lt!945272 (list!11687 (_1!17802 lt!945259)))))

(declare-fun lt!945273 () List!31071)

(declare-fun lt!945275 () Unit!45101)

(declare-fun lemmaConcatAssociativity!1533 (List!31071 List!31071 List!31071) Unit!45101)

(assert (=> b!2682440 (= lt!945275 (lemmaConcatAssociativity!1533 lt!945273 lt!945254 lt!945272))))

(declare-fun ++!7567 (List!31071 List!31071) List!31071)

(assert (=> b!2682440 (= (++!7567 (++!7567 lt!945273 lt!945254) lt!945272) (++!7567 lt!945273 (++!7567 lt!945254 lt!945272)))))

(assert (=> b!2682440 (= lt!945277 (append!753 acc!348 (_1!17800 (v!32772 lt!945260))))))

(declare-fun lt!945274 () List!31071)

(assert (=> b!2682440 (= lt!945274 (list!11687 lt!945277))))

(declare-fun lt!945270 () Unit!45101)

(declare-fun lemmaLexThenLexPrefix!397 (LexerInterface!4325 List!31067 List!31066 List!31066 List!31071 List!31071 List!31066) Unit!45101)

(assert (=> b!2682440 (= lt!945270 (lemmaLexThenLexPrefix!397 thiss!12257 rules!1381 lt!945257 lt!945276 lt!945274 lt!945272 (list!11686 (_2!17802 lt!945259))))))

(declare-datatypes ((tuple2!30466 0))(
  ( (tuple2!30467 (_1!17803 List!31071) (_2!17803 List!31066)) )
))
(declare-fun lexList!1184 (LexerInterface!4325 List!31067 List!31066) tuple2!30466)

(assert (=> b!2682440 (= (lexList!1184 thiss!12257 rules!1381 lt!945257) (tuple2!30467 lt!945274 Nil!30966))))

(assert (=> b!2682440 (= lt!945258 (++!7565 treated!26 lt!945255))))

(assert (=> b!2682440 (= lt!945279 (maxPrefixZipperSequence!992 thiss!12257 rules!1381 lt!945258))))

(declare-fun c!431993 () Bool)

(assert (=> b!2682440 (= c!431993 ((_ is Some!6116) lt!945279))))

(assert (=> b!2682440 (= (lexRec!589 thiss!12257 rules!1381 lt!945258) e!1691380)))

(declare-fun b!2682441 () Bool)

(declare-fun e!1691400 () Bool)

(declare-fun tp!848848 () Bool)

(assert (=> b!2682441 (= e!1691400 (and (inv!41987 (c!431996 totalInput!354)) tp!848848))))

(assert (=> b!2682442 (= e!1691394 (and tp!848863 tp!848847))))

(declare-fun b!2682443 () Bool)

(declare-fun tp!848857 () Bool)

(assert (=> b!2682443 (= e!1691384 (and tp!848857 mapRes!15971))))

(declare-fun condMapEmpty!15971 () Bool)

(declare-fun mapDefault!15971 () List!31069)

(assert (=> b!2682443 (= condMapEmpty!15971 (= (arr!5561 (_values!3771 (v!32774 (underlying!7185 (v!32775 (underlying!7186 (cache!3540 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31069)) mapDefault!15971)))))

(declare-fun b!2682444 () Bool)

(declare-fun e!1691386 () Bool)

(declare-fun lt!945253 () MutLongMap!3491)

(assert (=> b!2682444 (= e!1691386 (and e!1691409 ((_ is LongMap!3491) lt!945253)))))

(assert (=> b!2682444 (= lt!945253 (v!32775 (underlying!7186 (cache!3540 cacheDown!499))))))

(declare-fun b!2682445 () Bool)

(declare-fun lt!945263 () MutLongMap!3490)

(assert (=> b!2682445 (= e!1691411 (and e!1691408 ((_ is LongMap!3490) lt!945263)))))

(assert (=> b!2682445 (= lt!945263 (v!32773 (underlying!7184 (cache!3539 cacheUp!486))))))

(declare-fun b!2682446 () Bool)

(assert (=> b!2682446 (= e!1691401 e!1691403)))

(declare-fun res!1127398 () Bool)

(assert (=> b!2682446 (=> (not res!1127398) (not e!1691403))))

(declare-fun lt!945267 () List!31071)

(assert (=> b!2682446 (= res!1127398 (= lt!945267 lt!945273))))

(assert (=> b!2682446 (= lt!945273 (list!11687 acc!348))))

(assert (=> b!2682446 (= lt!945267 (list!11687 (_1!17802 lt!945278)))))

(assert (=> b!2682446 (= lt!945278 (lexRec!589 thiss!12257 rules!1381 treated!26))))

(assert (=> b!2682447 (= e!1691396 (and e!1691386 tp!848849))))

(declare-fun res!1127405 () Bool)

(assert (=> start!261210 (=> (not res!1127405) (not e!1691412))))

(assert (=> start!261210 (= res!1127405 ((_ is Lexer!4323) thiss!12257))))

(assert (=> start!261210 e!1691412))

(declare-fun inv!41989 (BalanceConc!18988) Bool)

(assert (=> start!261210 (and (inv!41989 totalInput!354) e!1691400)))

(declare-fun e!1691392 () Bool)

(declare-fun inv!41990 (CacheUp!2106) Bool)

(assert (=> start!261210 (and (inv!41990 cacheUp!486) e!1691392)))

(declare-fun inv!41991 (BalanceConc!18990) Bool)

(assert (=> start!261210 (and (inv!41991 acc!348) e!1691404)))

(assert (=> start!261210 (and (inv!41989 input!780) e!1691381)))

(assert (=> start!261210 (and (inv!41989 treated!26) e!1691405)))

(assert (=> start!261210 e!1691383))

(assert (=> start!261210 true))

(declare-fun inv!41992 (CacheDown!2218) Bool)

(assert (=> start!261210 (and (inv!41992 cacheDown!499) e!1691393)))

(declare-fun b!2682448 () Bool)

(assert (=> b!2682448 (= e!1691392 e!1691395)))

(assert (= (and start!261210 res!1127405) b!2682418))

(assert (= (and b!2682418 res!1127397) b!2682419))

(assert (= (and b!2682419 res!1127401) b!2682434))

(assert (= (and b!2682434 res!1127406) b!2682432))

(assert (= (and b!2682432 res!1127403) b!2682413))

(assert (= (and b!2682413 res!1127399) b!2682446))

(assert (= (and b!2682446 res!1127398) b!2682433))

(assert (= (and b!2682433 res!1127407) b!2682436))

(assert (= (and b!2682436 res!1127400) b!2682425))

(assert (= (and b!2682425 res!1127402) b!2682416))

(assert (= (and b!2682416 c!431994) b!2682440))

(assert (= (and b!2682416 (not c!431994)) b!2682435))

(assert (= (and b!2682440 res!1127409) b!2682417))

(assert (= (and b!2682440 c!431993) b!2682420))

(assert (= (and b!2682440 (not c!431993)) b!2682424))

(assert (= (and b!2682416 res!1127408) b!2682430))

(assert (= (and b!2682416 (not res!1127404)) b!2682427))

(assert (= start!261210 b!2682441))

(assert (= (and b!2682426 condMapEmpty!15972) mapIsEmpty!15972))

(assert (= (and b!2682426 (not condMapEmpty!15972)) mapNonEmpty!15971))

(assert (= b!2682439 b!2682426))

(assert (= b!2682431 b!2682439))

(assert (= b!2682412 b!2682431))

(assert (= (and b!2682445 ((_ is LongMap!3490) (v!32773 (underlying!7184 (cache!3539 cacheUp!486))))) b!2682412))

(assert (= b!2682429 b!2682445))

(assert (= (and b!2682448 ((_ is HashMap!3396) (cache!3539 cacheUp!486))) b!2682429))

(assert (= start!261210 b!2682448))

(assert (= start!261210 b!2682438))

(assert (= start!261210 b!2682428))

(assert (= start!261210 b!2682414))

(assert (= b!2682411 b!2682442))

(assert (= b!2682437 b!2682411))

(assert (= (and start!261210 ((_ is Cons!30967) rules!1381)) b!2682437))

(assert (= (and b!2682443 condMapEmpty!15971) mapIsEmpty!15971))

(assert (= (and b!2682443 (not condMapEmpty!15971)) mapNonEmpty!15972))

(assert (= b!2682421 b!2682443))

(assert (= b!2682415 b!2682421))

(assert (= b!2682423 b!2682415))

(assert (= (and b!2682444 ((_ is LongMap!3491) (v!32775 (underlying!7186 (cache!3540 cacheDown!499))))) b!2682423))

(assert (= b!2682447 b!2682444))

(assert (= (and b!2682422 ((_ is HashMap!3397) (cache!3540 cacheDown!499))) b!2682447))

(assert (= start!261210 b!2682422))

(declare-fun m!3051025 () Bool)

(assert (=> b!2682439 m!3051025))

(declare-fun m!3051027 () Bool)

(assert (=> b!2682439 m!3051027))

(declare-fun m!3051029 () Bool)

(assert (=> b!2682436 m!3051029))

(declare-fun m!3051031 () Bool)

(assert (=> b!2682436 m!3051031))

(declare-fun m!3051033 () Bool)

(assert (=> b!2682436 m!3051033))

(declare-fun m!3051035 () Bool)

(assert (=> b!2682436 m!3051035))

(declare-fun m!3051037 () Bool)

(assert (=> b!2682436 m!3051037))

(assert (=> b!2682436 m!3051029))

(declare-fun m!3051039 () Bool)

(assert (=> b!2682434 m!3051039))

(declare-fun m!3051041 () Bool)

(assert (=> start!261210 m!3051041))

(declare-fun m!3051043 () Bool)

(assert (=> start!261210 m!3051043))

(declare-fun m!3051045 () Bool)

(assert (=> start!261210 m!3051045))

(declare-fun m!3051047 () Bool)

(assert (=> start!261210 m!3051047))

(declare-fun m!3051049 () Bool)

(assert (=> start!261210 m!3051049))

(declare-fun m!3051051 () Bool)

(assert (=> start!261210 m!3051051))

(declare-fun m!3051053 () Bool)

(assert (=> b!2682411 m!3051053))

(declare-fun m!3051055 () Bool)

(assert (=> b!2682411 m!3051055))

(declare-fun m!3051057 () Bool)

(assert (=> b!2682421 m!3051057))

(declare-fun m!3051059 () Bool)

(assert (=> b!2682421 m!3051059))

(declare-fun m!3051061 () Bool)

(assert (=> b!2682420 m!3051061))

(declare-fun m!3051063 () Bool)

(assert (=> b!2682420 m!3051063))

(declare-fun m!3051065 () Bool)

(assert (=> b!2682440 m!3051065))

(declare-fun m!3051067 () Bool)

(assert (=> b!2682440 m!3051067))

(declare-fun m!3051069 () Bool)

(assert (=> b!2682440 m!3051069))

(declare-fun m!3051071 () Bool)

(assert (=> b!2682440 m!3051071))

(declare-fun m!3051073 () Bool)

(assert (=> b!2682440 m!3051073))

(assert (=> b!2682440 m!3051067))

(declare-fun m!3051075 () Bool)

(assert (=> b!2682440 m!3051075))

(declare-fun m!3051077 () Bool)

(assert (=> b!2682440 m!3051077))

(declare-fun m!3051079 () Bool)

(assert (=> b!2682440 m!3051079))

(declare-fun m!3051081 () Bool)

(assert (=> b!2682440 m!3051081))

(declare-fun m!3051083 () Bool)

(assert (=> b!2682440 m!3051083))

(declare-fun m!3051085 () Bool)

(assert (=> b!2682440 m!3051085))

(declare-fun m!3051087 () Bool)

(assert (=> b!2682440 m!3051087))

(declare-fun m!3051089 () Bool)

(assert (=> b!2682440 m!3051089))

(assert (=> b!2682440 m!3051069))

(declare-fun m!3051091 () Bool)

(assert (=> b!2682440 m!3051091))

(declare-fun m!3051093 () Bool)

(assert (=> b!2682440 m!3051093))

(declare-fun m!3051095 () Bool)

(assert (=> b!2682440 m!3051095))

(assert (=> b!2682440 m!3051077))

(declare-fun m!3051097 () Bool)

(assert (=> b!2682440 m!3051097))

(declare-fun m!3051099 () Bool)

(assert (=> b!2682440 m!3051099))

(declare-fun m!3051101 () Bool)

(assert (=> b!2682440 m!3051101))

(declare-fun m!3051103 () Bool)

(assert (=> b!2682440 m!3051103))

(declare-fun m!3051105 () Bool)

(assert (=> b!2682440 m!3051105))

(declare-fun m!3051107 () Bool)

(assert (=> b!2682440 m!3051107))

(declare-fun m!3051109 () Bool)

(assert (=> b!2682440 m!3051109))

(declare-fun m!3051111 () Bool)

(assert (=> b!2682440 m!3051111))

(assert (=> b!2682440 m!3051109))

(declare-fun m!3051113 () Bool)

(assert (=> b!2682446 m!3051113))

(declare-fun m!3051115 () Bool)

(assert (=> b!2682446 m!3051115))

(declare-fun m!3051117 () Bool)

(assert (=> b!2682446 m!3051117))

(declare-fun m!3051119 () Bool)

(assert (=> b!2682441 m!3051119))

(declare-fun m!3051121 () Bool)

(assert (=> b!2682425 m!3051121))

(declare-fun m!3051123 () Bool)

(assert (=> b!2682425 m!3051123))

(declare-fun m!3051125 () Bool)

(assert (=> b!2682419 m!3051125))

(declare-fun m!3051127 () Bool)

(assert (=> mapNonEmpty!15971 m!3051127))

(declare-fun m!3051129 () Bool)

(assert (=> mapNonEmpty!15972 m!3051129))

(declare-fun m!3051131 () Bool)

(assert (=> b!2682433 m!3051131))

(assert (=> b!2682433 m!3051131))

(declare-fun m!3051133 () Bool)

(assert (=> b!2682433 m!3051133))

(declare-fun m!3051135 () Bool)

(assert (=> b!2682416 m!3051135))

(declare-fun m!3051137 () Bool)

(assert (=> b!2682416 m!3051137))

(declare-fun m!3051139 () Bool)

(assert (=> b!2682416 m!3051139))

(declare-fun m!3051141 () Bool)

(assert (=> b!2682414 m!3051141))

(declare-fun m!3051143 () Bool)

(assert (=> b!2682432 m!3051143))

(declare-fun m!3051145 () Bool)

(assert (=> b!2682428 m!3051145))

(declare-fun m!3051147 () Bool)

(assert (=> b!2682430 m!3051147))

(declare-fun m!3051149 () Bool)

(assert (=> b!2682430 m!3051149))

(declare-fun m!3051151 () Bool)

(assert (=> b!2682418 m!3051151))

(declare-fun m!3051153 () Bool)

(assert (=> b!2682417 m!3051153))

(declare-fun m!3051155 () Bool)

(assert (=> b!2682438 m!3051155))

(declare-fun m!3051157 () Bool)

(assert (=> b!2682427 m!3051157))

(declare-fun m!3051159 () Bool)

(assert (=> b!2682427 m!3051159))

(assert (=> b!2682427 m!3051159))

(declare-fun m!3051161 () Bool)

(assert (=> b!2682427 m!3051161))

(declare-fun m!3051163 () Bool)

(assert (=> b!2682413 m!3051163))

(declare-fun m!3051165 () Bool)

(assert (=> b!2682413 m!3051165))

(assert (=> b!2682413 m!3051165))

(declare-fun m!3051167 () Bool)

(assert (=> b!2682413 m!3051167))

(declare-fun m!3051169 () Bool)

(assert (=> b!2682413 m!3051169))

(check-sat (not b_next!76561) (not b_next!76567) (not b!2682426) (not b!2682439) (not b!2682437) (not b!2682413) (not b_next!76565) (not b!2682436) (not b!2682428) (not b!2682420) (not b!2682441) (not start!261210) b_and!198651 (not b!2682427) (not b_next!76559) b_and!198657 (not b!2682430) (not b!2682418) (not b!2682425) (not mapNonEmpty!15971) (not b!2682440) (not b!2682443) (not b!2682419) b_and!198655 b_and!198661 (not b!2682417) b_and!198659 (not b_next!76563) (not b_next!76557) (not mapNonEmpty!15972) (not b!2682433) (not b!2682434) (not b!2682414) (not b!2682411) (not b!2682438) (not b!2682432) b_and!198653 (not b!2682421) (not b!2682446) (not b!2682416))
(check-sat (not b_next!76561) (not b_next!76567) (not b_next!76565) (not b_next!76557) b_and!198653 b_and!198651 (not b_next!76559) b_and!198657 b_and!198655 b_and!198661 b_and!198659 (not b_next!76563))
