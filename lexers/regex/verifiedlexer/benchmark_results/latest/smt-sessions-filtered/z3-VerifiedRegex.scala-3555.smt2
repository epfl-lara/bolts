; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206036 () Bool)

(assert start!206036)

(declare-fun b!2107217 () Bool)

(declare-fun b_free!60625 () Bool)

(declare-fun b_next!61329 () Bool)

(assert (=> b!2107217 (= b_free!60625 (not b_next!61329))))

(declare-fun tp!639557 () Bool)

(declare-fun b_and!170187 () Bool)

(assert (=> b!2107217 (= tp!639557 b_and!170187)))

(declare-fun b_free!60627 () Bool)

(declare-fun b_next!61331 () Bool)

(assert (=> b!2107217 (= b_free!60627 (not b_next!61331))))

(declare-fun tp!639559 () Bool)

(declare-fun b_and!170189 () Bool)

(assert (=> b!2107217 (= tp!639559 b_and!170189)))

(declare-fun b!2107219 () Bool)

(declare-fun b_free!60629 () Bool)

(declare-fun b_next!61333 () Bool)

(assert (=> b!2107219 (= b_free!60629 (not b_next!61333))))

(declare-fun tp!639563 () Bool)

(declare-fun b_and!170191 () Bool)

(assert (=> b!2107219 (= tp!639563 b_and!170191)))

(declare-fun b!2107208 () Bool)

(declare-fun b_free!60631 () Bool)

(declare-fun b_next!61335 () Bool)

(assert (=> b!2107208 (= b_free!60631 (not b_next!61335))))

(declare-fun tp!639561 () Bool)

(declare-fun b_and!170193 () Bool)

(assert (=> b!2107208 (= tp!639561 b_and!170193)))

(declare-fun b!2107224 () Bool)

(declare-fun b_free!60633 () Bool)

(declare-fun b_next!61337 () Bool)

(assert (=> b!2107224 (= b_free!60633 (not b_next!61337))))

(declare-fun tp!639564 () Bool)

(declare-fun b_and!170195 () Bool)

(assert (=> b!2107224 (= tp!639564 b_and!170195)))

(declare-fun b!2107210 () Bool)

(declare-fun b_free!60635 () Bool)

(declare-fun b_next!61339 () Bool)

(assert (=> b!2107210 (= b_free!60635 (not b_next!61339))))

(declare-fun tp!639560 () Bool)

(declare-fun b_and!170197 () Bool)

(assert (=> b!2107210 (= tp!639560 b_and!170197)))

(declare-fun b!2107205 () Bool)

(declare-fun e!1339454 () Bool)

(declare-fun e!1339442 () Bool)

(declare-datatypes ((C!11300 0))(
  ( (C!11301 (val!6636 Int)) )
))
(declare-datatypes ((Regex!5577 0))(
  ( (ElementMatch!5577 (c!338932 C!11300)) (Concat!9859 (regOne!11666 Regex!5577) (regTwo!11666 Regex!5577)) (EmptyExpr!5577) (Star!5577 (reg!5906 Regex!5577)) (EmptyLang!5577) (Union!5577 (regOne!11667 Regex!5577) (regTwo!11667 Regex!5577)) )
))
(declare-datatypes ((List!23378 0))(
  ( (Nil!23294) (Cons!23294 (h!28695 Regex!5577) (t!195871 List!23378)) )
))
(declare-datatypes ((Context!2294 0))(
  ( (Context!2295 (exprs!1647 List!23378)) )
))
(declare-datatypes ((tuple3!2600 0))(
  ( (tuple3!2601 (_1!13054 Regex!5577) (_2!13054 Context!2294) (_3!1764 C!11300)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22580 0))(
  ( (tuple2!22581 (_1!13055 tuple3!2600) (_2!13055 (InoxSet Context!2294))) )
))
(declare-datatypes ((List!23379 0))(
  ( (Nil!23295) (Cons!23295 (h!28696 tuple2!22580) (t!195872 List!23379)) )
))
(declare-datatypes ((array!7803 0))(
  ( (array!7804 (arr!3458 (Array (_ BitVec 32) (_ BitVec 64))) (size!18179 (_ BitVec 32))) )
))
(declare-datatypes ((array!7805 0))(
  ( (array!7806 (arr!3459 (Array (_ BitVec 32) List!23379)) (size!18180 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4520 0))(
  ( (LongMapFixedSize!4521 (defaultEntry!2625 Int) (mask!6364 (_ BitVec 32)) (extraKeys!2508 (_ BitVec 32)) (zeroValue!2518 List!23379) (minValue!2518 List!23379) (_size!4571 (_ BitVec 32)) (_keys!2557 array!7803) (_values!2540 array!7805) (_vacant!2321 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8865 0))(
  ( (Cell!8866 (v!27840 LongMapFixedSize!4520)) )
))
(declare-datatypes ((MutLongMap!2260 0))(
  ( (LongMap!2260 (underlying!4715 Cell!8865)) (MutLongMapExt!2259 (__x!14916 Int)) )
))
(declare-fun lt!791601 () MutLongMap!2260)

(get-info :version)

(assert (=> b!2107205 (= e!1339454 (and e!1339442 ((_ is LongMap!2260) lt!791601)))))

(declare-datatypes ((Cell!8867 0))(
  ( (Cell!8868 (v!27841 MutLongMap!2260)) )
))
(declare-datatypes ((Hashable!2174 0))(
  ( (HashableExt!2173 (__x!14917 Int)) )
))
(declare-datatypes ((MutableMap!2174 0))(
  ( (MutableMapExt!2173 (__x!14918 Int)) (HashMap!2174 (underlying!4716 Cell!8867) (hashF!4097 Hashable!2174) (_size!4572 (_ BitVec 32)) (defaultValue!2336 Int)) )
))
(declare-datatypes ((CacheDown!1474 0))(
  ( (CacheDown!1475 (cache!2555 MutableMap!2174)) )
))
(declare-fun cacheDown!688 () CacheDown!1474)

(assert (=> b!2107205 (= lt!791601 (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))))

(declare-fun b!2107206 () Bool)

(declare-fun res!915917 () Bool)

(declare-fun e!1339448 () Bool)

(assert (=> b!2107206 (=> (not res!915917) (not e!1339448))))

(declare-datatypes ((LexerInterface!3743 0))(
  ( (LexerInterfaceExt!3740 (__x!14919 Int)) (Lexer!3741) )
))
(declare-fun thiss!15689 () LexerInterface!3743)

(declare-datatypes ((List!23380 0))(
  ( (Nil!23296) (Cons!23296 (h!28697 (_ BitVec 16)) (t!195873 List!23380)) )
))
(declare-datatypes ((TokenValue!4282 0))(
  ( (FloatLiteralValue!8564 (text!30419 List!23380)) (TokenValueExt!4281 (__x!14920 Int)) (Broken!21410 (value!129774 List!23380)) (Object!4365) (End!4282) (Def!4282) (Underscore!4282) (Match!4282) (Else!4282) (Error!4282) (Case!4282) (If!4282) (Extends!4282) (Abstract!4282) (Class!4282) (Val!4282) (DelimiterValue!8564 (del!4342 List!23380)) (KeywordValue!4288 (value!129775 List!23380)) (CommentValue!8564 (value!129776 List!23380)) (WhitespaceValue!8564 (value!129777 List!23380)) (IndentationValue!4282 (value!129778 List!23380)) (String!26607) (Int32!4282) (Broken!21411 (value!129779 List!23380)) (Boolean!4283) (Unit!37478) (OperatorValue!4285 (op!4342 List!23380)) (IdentifierValue!8564 (value!129780 List!23380)) (IdentifierValue!8565 (value!129781 List!23380)) (WhitespaceValue!8565 (value!129782 List!23380)) (True!8564) (False!8564) (Broken!21412 (value!129783 List!23380)) (Broken!21413 (value!129784 List!23380)) (True!8565) (RightBrace!4282) (RightBracket!4282) (Colon!4282) (Null!4282) (Comma!4282) (LeftBracket!4282) (False!8565) (LeftBrace!4282) (ImaginaryLiteralValue!4282 (text!30420 List!23380)) (StringLiteralValue!12846 (value!129785 List!23380)) (EOFValue!4282 (value!129786 List!23380)) (IdentValue!4282 (value!129787 List!23380)) (DelimiterValue!8565 (value!129788 List!23380)) (DedentValue!4282 (value!129789 List!23380)) (NewLineValue!4282 (value!129790 List!23380)) (IntegerValue!12846 (value!129791 (_ BitVec 32)) (text!30421 List!23380)) (IntegerValue!12847 (value!129792 Int) (text!30422 List!23380)) (Times!4282) (Or!4282) (Equal!4282) (Minus!4282) (Broken!21414 (value!129793 List!23380)) (And!4282) (Div!4282) (LessEqual!4282) (Mod!4282) (Concat!9860) (Not!4282) (Plus!4282) (SpaceValue!4282 (value!129794 List!23380)) (IntegerValue!12848 (value!129795 Int) (text!30423 List!23380)) (StringLiteralValue!12847 (text!30424 List!23380)) (FloatLiteralValue!8565 (text!30425 List!23380)) (BytesLiteralValue!4282 (value!129796 List!23380)) (CommentValue!8565 (value!129797 List!23380)) (StringLiteralValue!12848 (value!129798 List!23380)) (ErrorTokenValue!4282 (msg!4343 List!23380)) )
))
(declare-datatypes ((List!23381 0))(
  ( (Nil!23297) (Cons!23297 (h!28698 C!11300) (t!195874 List!23381)) )
))
(declare-datatypes ((IArray!15457 0))(
  ( (IArray!15458 (innerList!7786 List!23381)) )
))
(declare-datatypes ((Conc!7726 0))(
  ( (Node!7726 (left!18159 Conc!7726) (right!18489 Conc!7726) (csize!15682 Int) (cheight!7937 Int)) (Leaf!11282 (xs!10668 IArray!15457) (csize!15683 Int)) (Empty!7726) )
))
(declare-datatypes ((BalanceConc!15214 0))(
  ( (BalanceConc!15215 (c!338933 Conc!7726)) )
))
(declare-datatypes ((String!26608 0))(
  ( (String!26609 (value!129799 String)) )
))
(declare-datatypes ((TokenValueInjection!8148 0))(
  ( (TokenValueInjection!8149 (toValue!5857 Int) (toChars!5716 Int)) )
))
(declare-datatypes ((Rule!8092 0))(
  ( (Rule!8093 (regex!4146 Regex!5577) (tag!4636 String!26608) (isSeparator!4146 Bool) (transformation!4146 TokenValueInjection!8148)) )
))
(declare-datatypes ((List!23382 0))(
  ( (Nil!23298) (Cons!23298 (h!28699 Rule!8092) (t!195875 List!23382)) )
))
(declare-fun rulesArg!349 () List!23382)

(declare-fun rulesValidInductive!1459 (LexerInterface!3743 List!23382) Bool)

(assert (=> b!2107206 (= res!915917 (rulesValidInductive!1459 thiss!15689 rulesArg!349))))

(declare-fun b!2107207 () Bool)

(declare-fun res!915918 () Bool)

(declare-fun e!1339443 () Bool)

(assert (=> b!2107207 (=> (not res!915918) (not e!1339443))))

(declare-datatypes ((tuple2!22582 0))(
  ( (tuple2!22583 (_1!13056 Context!2294) (_2!13056 C!11300)) )
))
(declare-datatypes ((tuple2!22584 0))(
  ( (tuple2!22585 (_1!13057 tuple2!22582) (_2!13057 (InoxSet Context!2294))) )
))
(declare-datatypes ((List!23383 0))(
  ( (Nil!23299) (Cons!23299 (h!28700 tuple2!22584) (t!195876 List!23383)) )
))
(declare-datatypes ((array!7807 0))(
  ( (array!7808 (arr!3460 (Array (_ BitVec 32) List!23383)) (size!18181 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4522 0))(
  ( (LongMapFixedSize!4523 (defaultEntry!2626 Int) (mask!6365 (_ BitVec 32)) (extraKeys!2509 (_ BitVec 32)) (zeroValue!2519 List!23383) (minValue!2519 List!23383) (_size!4573 (_ BitVec 32)) (_keys!2558 array!7803) (_values!2541 array!7807) (_vacant!2322 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2175 0))(
  ( (HashableExt!2174 (__x!14921 Int)) )
))
(declare-datatypes ((Cell!8869 0))(
  ( (Cell!8870 (v!27842 LongMapFixedSize!4522)) )
))
(declare-datatypes ((MutLongMap!2261 0))(
  ( (LongMap!2261 (underlying!4717 Cell!8869)) (MutLongMapExt!2260 (__x!14922 Int)) )
))
(declare-datatypes ((Cell!8871 0))(
  ( (Cell!8872 (v!27843 MutLongMap!2261)) )
))
(declare-datatypes ((MutableMap!2175 0))(
  ( (MutableMapExt!2174 (__x!14923 Int)) (HashMap!2175 (underlying!4718 Cell!8871) (hashF!4098 Hashable!2175) (_size!4574 (_ BitVec 32)) (defaultValue!2337 Int)) )
))
(declare-datatypes ((CacheUp!1468 0))(
  ( (CacheUp!1469 (cache!2556 MutableMap!2175)) )
))
(declare-fun cacheUp!675 () CacheUp!1468)

(declare-fun valid!1790 (CacheUp!1468) Bool)

(assert (=> b!2107207 (= res!915918 (valid!1790 cacheUp!675))))

(declare-fun e!1339452 () Bool)

(declare-fun e!1339459 () Bool)

(assert (=> b!2107208 (= e!1339452 (and e!1339459 tp!639561))))

(declare-fun b!2107209 () Bool)

(declare-fun res!915916 () Bool)

(declare-fun e!1339444 () Bool)

(assert (=> b!2107209 (=> (not res!915916) (not e!1339444))))

(declare-datatypes ((Token!7804 0))(
  ( (Token!7805 (value!129800 TokenValue!4282) (rule!6459 Rule!8092) (size!18182 Int) (originalCharacters!4933 List!23381)) )
))
(declare-datatypes ((tuple2!22586 0))(
  ( (tuple2!22587 (_1!13058 Token!7804) (_2!13058 BalanceConc!15214)) )
))
(declare-datatypes ((Option!4856 0))(
  ( (None!4855) (Some!4855 (v!27844 tuple2!22586)) )
))
(declare-datatypes ((tuple3!2602 0))(
  ( (tuple3!2603 (_1!13059 Option!4856) (_2!13059 CacheUp!1468) (_3!1765 CacheDown!1474)) )
))
(declare-fun lt!791599 () tuple3!2602)

(assert (=> b!2107209 (= res!915916 (valid!1790 (_2!13059 lt!791599)))))

(declare-fun e!1339445 () Bool)

(declare-fun tp!639554 () Bool)

(declare-fun e!1339434 () Bool)

(declare-fun tp!639558 () Bool)

(declare-fun array_inv!2486 (array!7803) Bool)

(declare-fun array_inv!2487 (array!7807) Bool)

(assert (=> b!2107210 (= e!1339434 (and tp!639560 tp!639558 tp!639554 (array_inv!2486 (_keys!2558 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))))) (array_inv!2487 (_values!2541 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))))) e!1339445))))

(declare-fun b!2107211 () Bool)

(declare-fun e!1339453 () Bool)

(declare-fun tp!639562 () Bool)

(declare-fun mapRes!10914 () Bool)

(assert (=> b!2107211 (= e!1339453 (and tp!639562 mapRes!10914))))

(declare-fun condMapEmpty!10914 () Bool)

(declare-fun mapDefault!10915 () List!23379)

(assert (=> b!2107211 (= condMapEmpty!10914 (= (arr!3459 (_values!2540 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23379)) mapDefault!10915)))))

(declare-fun b!2107213 () Bool)

(declare-fun valid!1791 (CacheDown!1474) Bool)

(assert (=> b!2107213 (= e!1339444 (valid!1791 (_3!1765 lt!791599)))))

(declare-fun b!2107214 () Bool)

(declare-fun e!1339436 () Bool)

(assert (=> b!2107214 (= e!1339436 e!1339434)))

(declare-fun b!2107215 () Bool)

(declare-fun e!1339455 () Bool)

(assert (=> b!2107215 (= e!1339455 e!1339444)))

(declare-fun res!915915 () Bool)

(assert (=> b!2107215 (=> (not res!915915) (not e!1339444))))

(declare-fun totalInput!482 () BalanceConc!15214)

(declare-fun input!1444 () BalanceConc!15214)

(declare-fun lt!791603 () tuple3!2602)

(declare-fun maxPrefixZipperSequenceV2!379 (LexerInterface!3743 List!23382 BalanceConc!15214 BalanceConc!15214) Option!4856)

(assert (=> b!2107215 (= res!915915 (= (ite (and ((_ is None!4855) (_1!13059 lt!791603)) ((_ is None!4855) (_1!13059 lt!791599))) None!4855 (ite ((_ is None!4855) (_1!13059 lt!791599)) (_1!13059 lt!791603) (ite ((_ is None!4855) (_1!13059 lt!791603)) (_1!13059 lt!791599) (ite (>= (size!18182 (_1!13058 (v!27844 (_1!13059 lt!791603)))) (size!18182 (_1!13058 (v!27844 (_1!13059 lt!791599))))) (_1!13059 lt!791603) (_1!13059 lt!791599))))) (maxPrefixZipperSequenceV2!379 thiss!15689 rulesArg!349 input!1444 totalInput!482)))))

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!81 (LexerInterface!3743 List!23382 BalanceConc!15214 BalanceConc!15214 CacheUp!1468 CacheDown!1474) tuple3!2602)

(assert (=> b!2107215 (= lt!791599 (maxPrefixZipperSequenceV2MemOnlyDeriv!81 thiss!15689 (t!195875 rulesArg!349) input!1444 totalInput!482 (_2!13059 lt!791603) (_3!1765 lt!791603)))))

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!72 (LexerInterface!3743 Rule!8092 BalanceConc!15214 BalanceConc!15214 CacheUp!1468 CacheDown!1474) tuple3!2602)

(assert (=> b!2107215 (= lt!791603 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!72 thiss!15689 (h!28699 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun mapIsEmpty!10914 () Bool)

(assert (=> mapIsEmpty!10914 mapRes!10914))

(declare-fun b!2107216 () Bool)

(declare-fun e!1339456 () Bool)

(declare-fun tp!639548 () Bool)

(declare-fun e!1339441 () Bool)

(declare-fun inv!30822 (String!26608) Bool)

(declare-fun inv!30827 (TokenValueInjection!8148) Bool)

(assert (=> b!2107216 (= e!1339456 (and tp!639548 (inv!30822 (tag!4636 (h!28699 rulesArg!349))) (inv!30827 (transformation!4146 (h!28699 rulesArg!349))) e!1339441))))

(assert (=> b!2107217 (= e!1339441 (and tp!639557 tp!639559))))

(declare-fun mapIsEmpty!10915 () Bool)

(declare-fun mapRes!10915 () Bool)

(assert (=> mapIsEmpty!10915 mapRes!10915))

(declare-fun mapNonEmpty!10914 () Bool)

(declare-fun tp!639552 () Bool)

(declare-fun tp!639566 () Bool)

(assert (=> mapNonEmpty!10914 (= mapRes!10914 (and tp!639552 tp!639566))))

(declare-fun mapValue!10915 () List!23379)

(declare-fun mapKey!10914 () (_ BitVec 32))

(declare-fun mapRest!10914 () (Array (_ BitVec 32) List!23379))

(assert (=> mapNonEmpty!10914 (= (arr!3459 (_values!2540 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))))) (store mapRest!10914 mapKey!10914 mapValue!10915))))

(declare-fun mapNonEmpty!10915 () Bool)

(declare-fun tp!639550 () Bool)

(declare-fun tp!639549 () Bool)

(assert (=> mapNonEmpty!10915 (= mapRes!10915 (and tp!639550 tp!639549))))

(declare-fun mapValue!10914 () List!23383)

(declare-fun mapKey!10915 () (_ BitVec 32))

(declare-fun mapRest!10915 () (Array (_ BitVec 32) List!23383))

(assert (=> mapNonEmpty!10915 (= (arr!3460 (_values!2541 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))))) (store mapRest!10915 mapKey!10915 mapValue!10914))))

(declare-fun b!2107218 () Bool)

(declare-fun e!1339451 () Bool)

(assert (=> b!2107218 (= e!1339451 e!1339436)))

(declare-fun e!1339457 () Bool)

(assert (=> b!2107219 (= e!1339457 (and e!1339454 tp!639563))))

(declare-fun b!2107220 () Bool)

(declare-fun e!1339440 () Bool)

(assert (=> b!2107220 (= e!1339440 e!1339457)))

(declare-fun b!2107221 () Bool)

(declare-fun e!1339447 () Bool)

(assert (=> b!2107221 (= e!1339447 e!1339452)))

(declare-fun b!2107222 () Bool)

(declare-fun e!1339450 () Bool)

(assert (=> b!2107222 (= e!1339442 e!1339450)))

(declare-fun b!2107223 () Bool)

(declare-fun tp!639553 () Bool)

(assert (=> b!2107223 (= e!1339445 (and tp!639553 mapRes!10915))))

(declare-fun condMapEmpty!10915 () Bool)

(declare-fun mapDefault!10914 () List!23383)

(assert (=> b!2107223 (= condMapEmpty!10915 (= (arr!3460 (_values!2541 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23383)) mapDefault!10914)))))

(declare-fun tp!639555 () Bool)

(declare-fun tp!639567 () Bool)

(declare-fun e!1339439 () Bool)

(declare-fun array_inv!2488 (array!7805) Bool)

(assert (=> b!2107224 (= e!1339439 (and tp!639564 tp!639567 tp!639555 (array_inv!2486 (_keys!2557 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))))) (array_inv!2488 (_values!2540 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))))) e!1339453))))

(declare-fun b!2107225 () Bool)

(declare-fun e!1339435 () Bool)

(declare-fun tp!639556 () Bool)

(declare-fun inv!30828 (Conc!7726) Bool)

(assert (=> b!2107225 (= e!1339435 (and (inv!30828 (c!338933 input!1444)) tp!639556))))

(declare-fun b!2107226 () Bool)

(assert (=> b!2107226 (= e!1339448 e!1339443)))

(declare-fun res!915920 () Bool)

(assert (=> b!2107226 (=> (not res!915920) (not e!1339443))))

(declare-fun lt!791600 () List!23381)

(declare-fun isSuffix!562 (List!23381 List!23381) Bool)

(declare-fun list!9450 (BalanceConc!15214) List!23381)

(assert (=> b!2107226 (= res!915920 (isSuffix!562 lt!791600 (list!9450 totalInput!482)))))

(assert (=> b!2107226 (= lt!791600 (list!9450 input!1444))))

(declare-fun b!2107212 () Bool)

(declare-fun e!1339438 () Bool)

(declare-fun tp!639551 () Bool)

(assert (=> b!2107212 (= e!1339438 (and (inv!30828 (c!338933 totalInput!482)) tp!639551))))

(declare-fun res!915922 () Bool)

(assert (=> start!206036 (=> (not res!915922) (not e!1339448))))

(assert (=> start!206036 (= res!915922 ((_ is Lexer!3741) thiss!15689))))

(assert (=> start!206036 e!1339448))

(declare-fun e!1339446 () Bool)

(assert (=> start!206036 e!1339446))

(declare-fun inv!30829 (BalanceConc!15214) Bool)

(assert (=> start!206036 (and (inv!30829 totalInput!482) e!1339438)))

(assert (=> start!206036 true))

(assert (=> start!206036 (and (inv!30829 input!1444) e!1339435)))

(declare-fun inv!30830 (CacheUp!1468) Bool)

(assert (=> start!206036 (and (inv!30830 cacheUp!675) e!1339447)))

(declare-fun inv!30831 (CacheDown!1474) Bool)

(assert (=> start!206036 (and (inv!30831 cacheDown!688) e!1339440)))

(declare-fun b!2107227 () Bool)

(assert (=> b!2107227 (= e!1339443 (not e!1339455))))

(declare-fun res!915923 () Bool)

(assert (=> b!2107227 (=> res!915923 e!1339455)))

(assert (=> b!2107227 (= res!915923 (or (and ((_ is Cons!23298) rulesArg!349) ((_ is Nil!23298) (t!195875 rulesArg!349))) (not ((_ is Cons!23298) rulesArg!349))))))

(declare-fun isPrefix!2076 (List!23381 List!23381) Bool)

(assert (=> b!2107227 (isPrefix!2076 lt!791600 lt!791600)))

(declare-datatypes ((Unit!37479 0))(
  ( (Unit!37480) )
))
(declare-fun lt!791602 () Unit!37479)

(declare-fun lemmaIsPrefixRefl!1394 (List!23381 List!23381) Unit!37479)

(assert (=> b!2107227 (= lt!791602 (lemmaIsPrefixRefl!1394 lt!791600 lt!791600))))

(declare-fun b!2107228 () Bool)

(declare-fun tp!639565 () Bool)

(assert (=> b!2107228 (= e!1339446 (and e!1339456 tp!639565))))

(declare-fun b!2107229 () Bool)

(declare-fun res!915921 () Bool)

(assert (=> b!2107229 (=> (not res!915921) (not e!1339443))))

(assert (=> b!2107229 (= res!915921 (valid!1791 cacheDown!688))))

(declare-fun b!2107230 () Bool)

(declare-fun lt!791604 () MutLongMap!2261)

(assert (=> b!2107230 (= e!1339459 (and e!1339451 ((_ is LongMap!2261) lt!791604)))))

(assert (=> b!2107230 (= lt!791604 (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))))

(declare-fun b!2107231 () Bool)

(assert (=> b!2107231 (= e!1339450 e!1339439)))

(declare-fun b!2107232 () Bool)

(declare-fun res!915919 () Bool)

(assert (=> b!2107232 (=> (not res!915919) (not e!1339448))))

(declare-fun isEmpty!14286 (List!23382) Bool)

(assert (=> b!2107232 (= res!915919 (not (isEmpty!14286 rulesArg!349)))))

(assert (= (and start!206036 res!915922) b!2107206))

(assert (= (and b!2107206 res!915917) b!2107232))

(assert (= (and b!2107232 res!915919) b!2107226))

(assert (= (and b!2107226 res!915920) b!2107207))

(assert (= (and b!2107207 res!915918) b!2107229))

(assert (= (and b!2107229 res!915921) b!2107227))

(assert (= (and b!2107227 (not res!915923)) b!2107215))

(assert (= (and b!2107215 res!915915) b!2107209))

(assert (= (and b!2107209 res!915916) b!2107213))

(assert (= b!2107216 b!2107217))

(assert (= b!2107228 b!2107216))

(assert (= (and start!206036 ((_ is Cons!23298) rulesArg!349)) b!2107228))

(assert (= start!206036 b!2107212))

(assert (= start!206036 b!2107225))

(assert (= (and b!2107223 condMapEmpty!10915) mapIsEmpty!10915))

(assert (= (and b!2107223 (not condMapEmpty!10915)) mapNonEmpty!10915))

(assert (= b!2107210 b!2107223))

(assert (= b!2107214 b!2107210))

(assert (= b!2107218 b!2107214))

(assert (= (and b!2107230 ((_ is LongMap!2261) (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))) b!2107218))

(assert (= b!2107208 b!2107230))

(assert (= (and b!2107221 ((_ is HashMap!2175) (cache!2556 cacheUp!675))) b!2107208))

(assert (= start!206036 b!2107221))

(assert (= (and b!2107211 condMapEmpty!10914) mapIsEmpty!10914))

(assert (= (and b!2107211 (not condMapEmpty!10914)) mapNonEmpty!10914))

(assert (= b!2107224 b!2107211))

(assert (= b!2107231 b!2107224))

(assert (= b!2107222 b!2107231))

(assert (= (and b!2107205 ((_ is LongMap!2260) (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))) b!2107222))

(assert (= b!2107219 b!2107205))

(assert (= (and b!2107220 ((_ is HashMap!2174) (cache!2555 cacheDown!688))) b!2107219))

(assert (= start!206036 b!2107220))

(declare-fun m!2565237 () Bool)

(assert (=> b!2107213 m!2565237))

(declare-fun m!2565239 () Bool)

(assert (=> mapNonEmpty!10914 m!2565239))

(declare-fun m!2565241 () Bool)

(assert (=> mapNonEmpty!10915 m!2565241))

(declare-fun m!2565243 () Bool)

(assert (=> b!2107216 m!2565243))

(declare-fun m!2565245 () Bool)

(assert (=> b!2107216 m!2565245))

(declare-fun m!2565247 () Bool)

(assert (=> b!2107225 m!2565247))

(declare-fun m!2565249 () Bool)

(assert (=> b!2107227 m!2565249))

(declare-fun m!2565251 () Bool)

(assert (=> b!2107227 m!2565251))

(declare-fun m!2565253 () Bool)

(assert (=> b!2107207 m!2565253))

(declare-fun m!2565255 () Bool)

(assert (=> b!2107206 m!2565255))

(declare-fun m!2565257 () Bool)

(assert (=> b!2107232 m!2565257))

(declare-fun m!2565259 () Bool)

(assert (=> b!2107229 m!2565259))

(declare-fun m!2565261 () Bool)

(assert (=> b!2107210 m!2565261))

(declare-fun m!2565263 () Bool)

(assert (=> b!2107210 m!2565263))

(declare-fun m!2565265 () Bool)

(assert (=> b!2107226 m!2565265))

(assert (=> b!2107226 m!2565265))

(declare-fun m!2565267 () Bool)

(assert (=> b!2107226 m!2565267))

(declare-fun m!2565269 () Bool)

(assert (=> b!2107226 m!2565269))

(declare-fun m!2565271 () Bool)

(assert (=> b!2107212 m!2565271))

(declare-fun m!2565273 () Bool)

(assert (=> b!2107224 m!2565273))

(declare-fun m!2565275 () Bool)

(assert (=> b!2107224 m!2565275))

(declare-fun m!2565277 () Bool)

(assert (=> b!2107209 m!2565277))

(declare-fun m!2565279 () Bool)

(assert (=> b!2107215 m!2565279))

(declare-fun m!2565281 () Bool)

(assert (=> b!2107215 m!2565281))

(declare-fun m!2565283 () Bool)

(assert (=> b!2107215 m!2565283))

(declare-fun m!2565285 () Bool)

(assert (=> start!206036 m!2565285))

(declare-fun m!2565287 () Bool)

(assert (=> start!206036 m!2565287))

(declare-fun m!2565289 () Bool)

(assert (=> start!206036 m!2565289))

(declare-fun m!2565291 () Bool)

(assert (=> start!206036 m!2565291))

(check-sat (not b!2107210) (not b_next!61339) (not b!2107213) (not b!2107227) (not b_next!61335) (not b!2107216) b_and!170195 (not b!2107232) (not b!2107212) (not b_next!61329) (not b_next!61333) (not b_next!61337) (not b!2107226) (not b!2107228) (not b!2107223) (not start!206036) (not b!2107224) (not b!2107215) (not b!2107207) (not b!2107229) (not b_next!61331) (not b!2107211) b_and!170187 (not b!2107206) b_and!170197 (not b!2107225) b_and!170189 (not mapNonEmpty!10914) (not mapNonEmpty!10915) b_and!170191 b_and!170193 (not b!2107209))
(check-sat (not b_next!61339) (not b_next!61335) (not b_next!61331) b_and!170189 b_and!170195 b_and!170191 b_and!170193 (not b_next!61329) (not b_next!61333) (not b_next!61337) b_and!170197 b_and!170187)
(get-model)

(declare-fun d!641886 () Bool)

(declare-fun c!338936 () Bool)

(assert (=> d!641886 (= c!338936 ((_ is Node!7726) (c!338933 totalInput!482)))))

(declare-fun e!1339464 () Bool)

(assert (=> d!641886 (= (inv!30828 (c!338933 totalInput!482)) e!1339464)))

(declare-fun b!2107239 () Bool)

(declare-fun inv!30832 (Conc!7726) Bool)

(assert (=> b!2107239 (= e!1339464 (inv!30832 (c!338933 totalInput!482)))))

(declare-fun b!2107240 () Bool)

(declare-fun e!1339465 () Bool)

(assert (=> b!2107240 (= e!1339464 e!1339465)))

(declare-fun res!915934 () Bool)

(assert (=> b!2107240 (= res!915934 (not ((_ is Leaf!11282) (c!338933 totalInput!482))))))

(assert (=> b!2107240 (=> res!915934 e!1339465)))

(declare-fun b!2107241 () Bool)

(declare-fun inv!30833 (Conc!7726) Bool)

(assert (=> b!2107241 (= e!1339465 (inv!30833 (c!338933 totalInput!482)))))

(assert (= (and d!641886 c!338936) b!2107239))

(assert (= (and d!641886 (not c!338936)) b!2107240))

(assert (= (and b!2107240 (not res!915934)) b!2107241))

(declare-fun m!2565293 () Bool)

(assert (=> b!2107239 m!2565293))

(declare-fun m!2565295 () Bool)

(assert (=> b!2107241 m!2565295))

(assert (=> b!2107212 d!641886))

(declare-fun d!641888 () Bool)

(declare-fun validCacheMapDown!224 (MutableMap!2174) Bool)

(assert (=> d!641888 (= (valid!1791 (_3!1765 lt!791599)) (validCacheMapDown!224 (cache!2555 (_3!1765 lt!791599))))))

(declare-fun bs!440972 () Bool)

(assert (= bs!440972 d!641888))

(declare-fun m!2565297 () Bool)

(assert (=> bs!440972 m!2565297))

(assert (=> b!2107213 d!641888))

(declare-fun d!641890 () Bool)

(assert (=> d!641890 (= (isEmpty!14286 rulesArg!349) ((_ is Nil!23298) rulesArg!349))))

(assert (=> b!2107232 d!641890))

(declare-fun lt!791622 () Option!4856)

(declare-fun b!2107258 () Bool)

(declare-fun e!1339479 () Bool)

(declare-fun get!7255 (Option!4856) tuple2!22586)

(declare-datatypes ((tuple2!22588 0))(
  ( (tuple2!22589 (_1!13060 Token!7804) (_2!13060 List!23381)) )
))
(declare-datatypes ((Option!4857 0))(
  ( (None!4856) (Some!4856 (v!27845 tuple2!22588)) )
))
(declare-fun get!7256 (Option!4857) tuple2!22588)

(declare-fun maxPrefixZipper!419 (LexerInterface!3743 List!23382 List!23381) Option!4857)

(assert (=> b!2107258 (= e!1339479 (= (list!9450 (_2!13058 (get!7255 lt!791622))) (_2!13060 (get!7256 (maxPrefixZipper!419 thiss!15689 rulesArg!349 (list!9450 input!1444))))))))

(declare-fun b!2107259 () Bool)

(declare-fun e!1339482 () Bool)

(declare-fun maxPrefix!2101 (LexerInterface!3743 List!23382 List!23381) Option!4857)

(assert (=> b!2107259 (= e!1339482 (= (list!9450 (_2!13058 (get!7255 lt!791622))) (_2!13060 (get!7256 (maxPrefix!2101 thiss!15689 rulesArg!349 (list!9450 input!1444))))))))

(declare-fun b!2107260 () Bool)

(declare-fun res!915951 () Bool)

(declare-fun e!1339480 () Bool)

(assert (=> b!2107260 (=> (not res!915951) (not e!1339480))))

(declare-fun e!1339478 () Bool)

(assert (=> b!2107260 (= res!915951 e!1339478)))

(declare-fun res!915948 () Bool)

(assert (=> b!2107260 (=> res!915948 e!1339478)))

(declare-fun isDefined!4071 (Option!4856) Bool)

(assert (=> b!2107260 (= res!915948 (not (isDefined!4071 lt!791622)))))

(declare-fun b!2107261 () Bool)

(declare-fun e!1339483 () Option!4856)

(declare-fun call!128395 () Option!4856)

(assert (=> b!2107261 (= e!1339483 call!128395)))

(declare-fun b!2107262 () Bool)

(assert (=> b!2107262 (= e!1339478 e!1339479)))

(declare-fun res!915947 () Bool)

(assert (=> b!2107262 (=> (not res!915947) (not e!1339479))))

(assert (=> b!2107262 (= res!915947 (= (_1!13058 (get!7255 lt!791622)) (_1!13060 (get!7256 (maxPrefixZipper!419 thiss!15689 rulesArg!349 (list!9450 input!1444))))))))

(declare-fun d!641892 () Bool)

(assert (=> d!641892 e!1339480))

(declare-fun res!915950 () Bool)

(assert (=> d!641892 (=> (not res!915950) (not e!1339480))))

(declare-fun isDefined!4072 (Option!4857) Bool)

(assert (=> d!641892 (= res!915950 (= (isDefined!4071 lt!791622) (isDefined!4072 (maxPrefixZipper!419 thiss!15689 rulesArg!349 (list!9450 input!1444)))))))

(assert (=> d!641892 (= lt!791622 e!1339483)))

(declare-fun c!338940 () Bool)

(assert (=> d!641892 (= c!338940 (and ((_ is Cons!23298) rulesArg!349) ((_ is Nil!23298) (t!195875 rulesArg!349))))))

(declare-fun lt!791625 () Unit!37479)

(declare-fun lt!791621 () Unit!37479)

(assert (=> d!641892 (= lt!791625 lt!791621)))

(declare-fun lt!791620 () List!23381)

(declare-fun lt!791619 () List!23381)

(assert (=> d!641892 (isPrefix!2076 lt!791620 lt!791619)))

(assert (=> d!641892 (= lt!791621 (lemmaIsPrefixRefl!1394 lt!791620 lt!791619))))

(assert (=> d!641892 (= lt!791619 (list!9450 input!1444))))

(assert (=> d!641892 (= lt!791620 (list!9450 input!1444))))

(assert (=> d!641892 (rulesValidInductive!1459 thiss!15689 rulesArg!349)))

(assert (=> d!641892 (= (maxPrefixZipperSequenceV2!379 thiss!15689 rulesArg!349 input!1444 totalInput!482) lt!791622)))

(declare-fun b!2107263 () Bool)

(declare-fun e!1339481 () Bool)

(assert (=> b!2107263 (= e!1339480 e!1339481)))

(declare-fun res!915949 () Bool)

(assert (=> b!2107263 (=> res!915949 e!1339481)))

(assert (=> b!2107263 (= res!915949 (not (isDefined!4071 lt!791622)))))

(declare-fun b!2107264 () Bool)

(assert (=> b!2107264 (= e!1339481 e!1339482)))

(declare-fun res!915952 () Bool)

(assert (=> b!2107264 (=> (not res!915952) (not e!1339482))))

(assert (=> b!2107264 (= res!915952 (= (_1!13058 (get!7255 lt!791622)) (_1!13060 (get!7256 (maxPrefix!2101 thiss!15689 rulesArg!349 (list!9450 input!1444))))))))

(declare-fun b!2107265 () Bool)

(declare-fun lt!791623 () Option!4856)

(declare-fun lt!791624 () Option!4856)

(assert (=> b!2107265 (= e!1339483 (ite (and ((_ is None!4855) lt!791623) ((_ is None!4855) lt!791624)) None!4855 (ite ((_ is None!4855) lt!791624) lt!791623 (ite ((_ is None!4855) lt!791623) lt!791624 (ite (>= (size!18182 (_1!13058 (v!27844 lt!791623))) (size!18182 (_1!13058 (v!27844 lt!791624)))) lt!791623 lt!791624)))))))

(assert (=> b!2107265 (= lt!791623 call!128395)))

(assert (=> b!2107265 (= lt!791624 (maxPrefixZipperSequenceV2!379 thiss!15689 (t!195875 rulesArg!349) input!1444 totalInput!482))))

(declare-fun bm!128390 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!176 (LexerInterface!3743 Rule!8092 BalanceConc!15214 BalanceConc!15214) Option!4856)

(assert (=> bm!128390 (= call!128395 (maxPrefixOneRuleZipperSequenceV2!176 thiss!15689 (h!28699 rulesArg!349) input!1444 totalInput!482))))

(assert (= (and d!641892 c!338940) b!2107261))

(assert (= (and d!641892 (not c!338940)) b!2107265))

(assert (= (or b!2107261 b!2107265) bm!128390))

(assert (= (and d!641892 res!915950) b!2107260))

(assert (= (and b!2107260 (not res!915948)) b!2107262))

(assert (= (and b!2107262 res!915947) b!2107258))

(assert (= (and b!2107260 res!915951) b!2107263))

(assert (= (and b!2107263 (not res!915949)) b!2107264))

(assert (= (and b!2107264 res!915952) b!2107259))

(declare-fun m!2565299 () Bool)

(assert (=> b!2107263 m!2565299))

(declare-fun m!2565301 () Bool)

(assert (=> b!2107258 m!2565301))

(declare-fun m!2565303 () Bool)

(assert (=> b!2107258 m!2565303))

(declare-fun m!2565305 () Bool)

(assert (=> b!2107258 m!2565305))

(assert (=> b!2107258 m!2565269))

(declare-fun m!2565307 () Bool)

(assert (=> b!2107258 m!2565307))

(assert (=> b!2107258 m!2565269))

(assert (=> b!2107258 m!2565303))

(assert (=> d!641892 m!2565303))

(declare-fun m!2565309 () Bool)

(assert (=> d!641892 m!2565309))

(declare-fun m!2565311 () Bool)

(assert (=> d!641892 m!2565311))

(assert (=> d!641892 m!2565255))

(assert (=> d!641892 m!2565269))

(assert (=> d!641892 m!2565269))

(assert (=> d!641892 m!2565303))

(declare-fun m!2565313 () Bool)

(assert (=> d!641892 m!2565313))

(assert (=> d!641892 m!2565299))

(declare-fun m!2565315 () Bool)

(assert (=> bm!128390 m!2565315))

(assert (=> b!2107262 m!2565301))

(assert (=> b!2107262 m!2565269))

(assert (=> b!2107262 m!2565269))

(assert (=> b!2107262 m!2565303))

(assert (=> b!2107262 m!2565303))

(assert (=> b!2107262 m!2565305))

(assert (=> b!2107259 m!2565301))

(assert (=> b!2107259 m!2565269))

(declare-fun m!2565317 () Bool)

(assert (=> b!2107259 m!2565317))

(assert (=> b!2107259 m!2565317))

(declare-fun m!2565319 () Bool)

(assert (=> b!2107259 m!2565319))

(assert (=> b!2107259 m!2565269))

(assert (=> b!2107259 m!2565307))

(declare-fun m!2565321 () Bool)

(assert (=> b!2107265 m!2565321))

(assert (=> b!2107260 m!2565299))

(assert (=> b!2107264 m!2565301))

(assert (=> b!2107264 m!2565269))

(assert (=> b!2107264 m!2565269))

(assert (=> b!2107264 m!2565317))

(assert (=> b!2107264 m!2565317))

(assert (=> b!2107264 m!2565319))

(assert (=> b!2107215 d!641892))

(declare-fun b!2107274 () Bool)

(declare-fun e!1339489 () tuple3!2602)

(declare-fun lt!791648 () tuple3!2602)

(declare-fun lt!791643 () tuple3!2602)

(assert (=> b!2107274 (= e!1339489 (tuple3!2603 (ite (and ((_ is None!4855) (_1!13059 lt!791648)) ((_ is None!4855) (_1!13059 lt!791643))) None!4855 (ite ((_ is None!4855) (_1!13059 lt!791643)) (_1!13059 lt!791648) (ite ((_ is None!4855) (_1!13059 lt!791648)) (_1!13059 lt!791643) (ite (>= (size!18182 (_1!13058 (v!27844 (_1!13059 lt!791648)))) (size!18182 (_1!13058 (v!27844 (_1!13059 lt!791643))))) (_1!13059 lt!791648) (_1!13059 lt!791643))))) (_2!13059 lt!791643) (_3!1765 lt!791643)))))

(declare-fun call!128398 () tuple3!2602)

(assert (=> b!2107274 (= lt!791648 call!128398)))

(assert (=> b!2107274 (= lt!791643 (maxPrefixZipperSequenceV2MemOnlyDeriv!81 thiss!15689 (t!195875 (t!195875 rulesArg!349)) input!1444 totalInput!482 (_2!13059 lt!791648) (_3!1765 lt!791648)))))

(declare-fun b!2107275 () Bool)

(declare-fun e!1339488 () Bool)

(declare-fun lt!791645 () tuple3!2602)

(assert (=> b!2107275 (= e!1339488 (valid!1791 (_3!1765 lt!791645)))))

(declare-fun bm!128393 () Bool)

(assert (=> bm!128393 (= call!128398 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!72 thiss!15689 (h!28699 (t!195875 rulesArg!349)) input!1444 totalInput!482 (_2!13059 lt!791603) (_3!1765 lt!791603)))))

(declare-fun d!641894 () Bool)

(assert (=> d!641894 e!1339488))

(declare-fun res!915958 () Bool)

(assert (=> d!641894 (=> (not res!915958) (not e!1339488))))

(assert (=> d!641894 (= res!915958 (= (_1!13059 lt!791645) (maxPrefixZipperSequenceV2!379 thiss!15689 (t!195875 rulesArg!349) input!1444 totalInput!482)))))

(assert (=> d!641894 (= lt!791645 e!1339489)))

(declare-fun c!338943 () Bool)

(assert (=> d!641894 (= c!338943 (and ((_ is Cons!23298) (t!195875 rulesArg!349)) ((_ is Nil!23298) (t!195875 (t!195875 rulesArg!349)))))))

(declare-fun lt!791644 () Unit!37479)

(declare-fun lt!791642 () Unit!37479)

(assert (=> d!641894 (= lt!791644 lt!791642)))

(declare-fun lt!791647 () List!23381)

(declare-fun lt!791649 () List!23381)

(assert (=> d!641894 (isPrefix!2076 lt!791647 lt!791649)))

(assert (=> d!641894 (= lt!791642 (lemmaIsPrefixRefl!1394 lt!791647 lt!791649))))

(assert (=> d!641894 (= lt!791649 (list!9450 input!1444))))

(assert (=> d!641894 (= lt!791647 (list!9450 input!1444))))

(assert (=> d!641894 (rulesValidInductive!1459 thiss!15689 (t!195875 rulesArg!349))))

(assert (=> d!641894 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!81 thiss!15689 (t!195875 rulesArg!349) input!1444 totalInput!482 (_2!13059 lt!791603) (_3!1765 lt!791603)) lt!791645)))

(declare-fun b!2107276 () Bool)

(declare-fun res!915957 () Bool)

(assert (=> b!2107276 (=> (not res!915957) (not e!1339488))))

(assert (=> b!2107276 (= res!915957 (valid!1790 (_2!13059 lt!791645)))))

(declare-fun b!2107277 () Bool)

(declare-fun lt!791646 () tuple3!2602)

(assert (=> b!2107277 (= e!1339489 (tuple3!2603 (_1!13059 lt!791646) (_2!13059 lt!791646) (_3!1765 lt!791646)))))

(assert (=> b!2107277 (= lt!791646 call!128398)))

(assert (= (and d!641894 c!338943) b!2107277))

(assert (= (and d!641894 (not c!338943)) b!2107274))

(assert (= (or b!2107277 b!2107274) bm!128393))

(assert (= (and d!641894 res!915958) b!2107276))

(assert (= (and b!2107276 res!915957) b!2107275))

(declare-fun m!2565323 () Bool)

(assert (=> d!641894 m!2565323))

(assert (=> d!641894 m!2565321))

(declare-fun m!2565325 () Bool)

(assert (=> d!641894 m!2565325))

(declare-fun m!2565327 () Bool)

(assert (=> d!641894 m!2565327))

(assert (=> d!641894 m!2565269))

(declare-fun m!2565329 () Bool)

(assert (=> b!2107275 m!2565329))

(declare-fun m!2565331 () Bool)

(assert (=> b!2107276 m!2565331))

(declare-fun m!2565333 () Bool)

(assert (=> b!2107274 m!2565333))

(declare-fun m!2565335 () Bool)

(assert (=> bm!128393 m!2565335))

(assert (=> b!2107215 d!641894))

(declare-fun b!2107288 () Bool)

(declare-fun e!1339497 () Option!4856)

(declare-datatypes ((tuple2!22590 0))(
  ( (tuple2!22591 (_1!13061 BalanceConc!15214) (_2!13061 BalanceConc!15214)) )
))
(declare-datatypes ((tuple3!2604 0))(
  ( (tuple3!2605 (_1!13062 tuple2!22590) (_2!13062 CacheUp!1468) (_3!1766 CacheDown!1474)) )
))
(declare-fun lt!791663 () tuple3!2604)

(declare-fun apply!5898 (TokenValueInjection!8148 BalanceConc!15214) TokenValue!4282)

(declare-fun size!18183 (BalanceConc!15214) Int)

(assert (=> b!2107288 (= e!1339497 (Some!4855 (tuple2!22587 (Token!7805 (apply!5898 (transformation!4146 (h!28699 rulesArg!349)) (_1!13061 (_1!13062 lt!791663))) (h!28699 rulesArg!349) (size!18183 (_1!13061 (_1!13062 lt!791663))) (list!9450 (_1!13061 (_1!13062 lt!791663)))) (_2!13061 (_1!13062 lt!791663)))))))

(declare-fun lt!791665 () List!23381)

(assert (=> b!2107288 (= lt!791665 (list!9450 input!1444))))

(declare-fun lt!791662 () Unit!37479)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!574 (Regex!5577 List!23381) Unit!37479)

(assert (=> b!2107288 (= lt!791662 (longestMatchIsAcceptedByMatchOrIsEmpty!574 (regex!4146 (h!28699 rulesArg!349)) lt!791665))))

(declare-fun res!915967 () Bool)

(declare-fun isEmpty!14287 (List!23381) Bool)

(declare-datatypes ((tuple2!22592 0))(
  ( (tuple2!22593 (_1!13063 List!23381) (_2!13063 List!23381)) )
))
(declare-fun findLongestMatchInner!590 (Regex!5577 List!23381 Int List!23381 List!23381 Int) tuple2!22592)

(declare-fun size!18184 (List!23381) Int)

(assert (=> b!2107288 (= res!915967 (isEmpty!14287 (_1!13063 (findLongestMatchInner!590 (regex!4146 (h!28699 rulesArg!349)) Nil!23297 (size!18184 Nil!23297) lt!791665 lt!791665 (size!18184 lt!791665)))))))

(declare-fun e!1339498 () Bool)

(assert (=> b!2107288 (=> res!915967 e!1339498)))

(assert (=> b!2107288 e!1339498))

(declare-fun lt!791666 () Unit!37479)

(assert (=> b!2107288 (= lt!791666 lt!791662)))

(declare-fun lt!791664 () Unit!37479)

(declare-fun lemmaSemiInverse!988 (TokenValueInjection!8148 BalanceConc!15214) Unit!37479)

(assert (=> b!2107288 (= lt!791664 (lemmaSemiInverse!988 (transformation!4146 (h!28699 rulesArg!349)) (_1!13061 (_1!13062 lt!791663))))))

(declare-fun b!2107289 () Bool)

(assert (=> b!2107289 (= e!1339497 None!4855)))

(declare-fun b!2107290 () Bool)

(declare-fun res!915965 () Bool)

(declare-fun e!1339496 () Bool)

(assert (=> b!2107290 (=> (not res!915965) (not e!1339496))))

(declare-fun lt!791667 () tuple3!2602)

(assert (=> b!2107290 (= res!915965 (valid!1790 (_2!13059 lt!791667)))))

(declare-fun d!641896 () Bool)

(assert (=> d!641896 e!1339496))

(declare-fun res!915966 () Bool)

(assert (=> d!641896 (=> (not res!915966) (not e!1339496))))

(assert (=> d!641896 (= res!915966 (= (_1!13059 lt!791667) (maxPrefixOneRuleZipperSequenceV2!176 thiss!15689 (h!28699 rulesArg!349) input!1444 totalInput!482)))))

(assert (=> d!641896 (= lt!791667 (tuple3!2603 e!1339497 (_2!13062 lt!791663) (_3!1766 lt!791663)))))

(declare-fun c!338946 () Bool)

(declare-fun isEmpty!14288 (BalanceConc!15214) Bool)

(assert (=> d!641896 (= c!338946 (isEmpty!14288 (_1!13061 (_1!13062 lt!791663))))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!33 (Regex!5577 BalanceConc!15214 BalanceConc!15214 CacheUp!1468 CacheDown!1474) tuple3!2604)

(assert (=> d!641896 (= lt!791663 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!33 (regex!4146 (h!28699 rulesArg!349)) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun ruleValid!1269 (LexerInterface!3743 Rule!8092) Bool)

(assert (=> d!641896 (ruleValid!1269 thiss!15689 (h!28699 rulesArg!349))))

(assert (=> d!641896 (= (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!72 thiss!15689 (h!28699 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688) lt!791667)))

(declare-fun b!2107291 () Bool)

(declare-fun matchR!2724 (Regex!5577 List!23381) Bool)

(assert (=> b!2107291 (= e!1339498 (matchR!2724 (regex!4146 (h!28699 rulesArg!349)) (_1!13063 (findLongestMatchInner!590 (regex!4146 (h!28699 rulesArg!349)) Nil!23297 (size!18184 Nil!23297) lt!791665 lt!791665 (size!18184 lt!791665)))))))

(declare-fun b!2107292 () Bool)

(assert (=> b!2107292 (= e!1339496 (valid!1791 (_3!1765 lt!791667)))))

(assert (= (and d!641896 c!338946) b!2107289))

(assert (= (and d!641896 (not c!338946)) b!2107288))

(assert (= (and b!2107288 (not res!915967)) b!2107291))

(assert (= (and d!641896 res!915966) b!2107290))

(assert (= (and b!2107290 res!915965) b!2107292))

(assert (=> d!641896 m!2565315))

(declare-fun m!2565337 () Bool)

(assert (=> d!641896 m!2565337))

(declare-fun m!2565339 () Bool)

(assert (=> d!641896 m!2565339))

(declare-fun m!2565341 () Bool)

(assert (=> d!641896 m!2565341))

(declare-fun m!2565343 () Bool)

(assert (=> b!2107290 m!2565343))

(declare-fun m!2565345 () Bool)

(assert (=> b!2107292 m!2565345))

(declare-fun m!2565347 () Bool)

(assert (=> b!2107291 m!2565347))

(declare-fun m!2565349 () Bool)

(assert (=> b!2107291 m!2565349))

(assert (=> b!2107291 m!2565347))

(assert (=> b!2107291 m!2565349))

(declare-fun m!2565351 () Bool)

(assert (=> b!2107291 m!2565351))

(declare-fun m!2565353 () Bool)

(assert (=> b!2107291 m!2565353))

(assert (=> b!2107288 m!2565347))

(assert (=> b!2107288 m!2565269))

(declare-fun m!2565355 () Bool)

(assert (=> b!2107288 m!2565355))

(declare-fun m!2565357 () Bool)

(assert (=> b!2107288 m!2565357))

(declare-fun m!2565359 () Bool)

(assert (=> b!2107288 m!2565359))

(declare-fun m!2565361 () Bool)

(assert (=> b!2107288 m!2565361))

(declare-fun m!2565363 () Bool)

(assert (=> b!2107288 m!2565363))

(declare-fun m!2565365 () Bool)

(assert (=> b!2107288 m!2565365))

(assert (=> b!2107288 m!2565349))

(assert (=> b!2107288 m!2565347))

(assert (=> b!2107288 m!2565349))

(assert (=> b!2107288 m!2565351))

(assert (=> b!2107215 d!641896))

(declare-fun d!641898 () Bool)

(assert (=> d!641898 true))

(declare-fun lt!791670 () Bool)

(declare-fun lambda!78160 () Int)

(declare-fun forall!4838 (List!23382 Int) Bool)

(assert (=> d!641898 (= lt!791670 (forall!4838 rulesArg!349 lambda!78160))))

(declare-fun e!1339503 () Bool)

(assert (=> d!641898 (= lt!791670 e!1339503)))

(declare-fun res!915972 () Bool)

(assert (=> d!641898 (=> res!915972 e!1339503)))

(assert (=> d!641898 (= res!915972 (not ((_ is Cons!23298) rulesArg!349)))))

(assert (=> d!641898 (= (rulesValidInductive!1459 thiss!15689 rulesArg!349) lt!791670)))

(declare-fun b!2107297 () Bool)

(declare-fun e!1339504 () Bool)

(assert (=> b!2107297 (= e!1339503 e!1339504)))

(declare-fun res!915973 () Bool)

(assert (=> b!2107297 (=> (not res!915973) (not e!1339504))))

(assert (=> b!2107297 (= res!915973 (ruleValid!1269 thiss!15689 (h!28699 rulesArg!349)))))

(declare-fun b!2107298 () Bool)

(assert (=> b!2107298 (= e!1339504 (rulesValidInductive!1459 thiss!15689 (t!195875 rulesArg!349)))))

(assert (= (and d!641898 (not res!915972)) b!2107297))

(assert (= (and b!2107297 res!915973) b!2107298))

(declare-fun m!2565367 () Bool)

(assert (=> d!641898 m!2565367))

(assert (=> b!2107297 m!2565341))

(assert (=> b!2107298 m!2565323))

(assert (=> b!2107206 d!641898))

(declare-fun d!641900 () Bool)

(assert (=> d!641900 (= (inv!30822 (tag!4636 (h!28699 rulesArg!349))) (= (mod (str.len (value!129799 (tag!4636 (h!28699 rulesArg!349)))) 2) 0))))

(assert (=> b!2107216 d!641900))

(declare-fun d!641902 () Bool)

(declare-fun res!915976 () Bool)

(declare-fun e!1339507 () Bool)

(assert (=> d!641902 (=> (not res!915976) (not e!1339507))))

(declare-fun semiInverseModEq!1656 (Int Int) Bool)

(assert (=> d!641902 (= res!915976 (semiInverseModEq!1656 (toChars!5716 (transformation!4146 (h!28699 rulesArg!349))) (toValue!5857 (transformation!4146 (h!28699 rulesArg!349)))))))

(assert (=> d!641902 (= (inv!30827 (transformation!4146 (h!28699 rulesArg!349))) e!1339507)))

(declare-fun b!2107303 () Bool)

(declare-fun equivClasses!1583 (Int Int) Bool)

(assert (=> b!2107303 (= e!1339507 (equivClasses!1583 (toChars!5716 (transformation!4146 (h!28699 rulesArg!349))) (toValue!5857 (transformation!4146 (h!28699 rulesArg!349)))))))

(assert (= (and d!641902 res!915976) b!2107303))

(declare-fun m!2565369 () Bool)

(assert (=> d!641902 m!2565369))

(declare-fun m!2565371 () Bool)

(assert (=> b!2107303 m!2565371))

(assert (=> b!2107216 d!641902))

(declare-fun d!641904 () Bool)

(assert (=> d!641904 (= (array_inv!2486 (_keys!2557 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))))) (bvsge (size!18179 (_keys!2557 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107224 d!641904))

(declare-fun d!641906 () Bool)

(assert (=> d!641906 (= (array_inv!2488 (_values!2540 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))))) (bvsge (size!18180 (_values!2540 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107224 d!641906))

(declare-fun d!641908 () Bool)

(declare-fun validCacheMapUp!226 (MutableMap!2175) Bool)

(assert (=> d!641908 (= (valid!1790 cacheUp!675) (validCacheMapUp!226 (cache!2556 cacheUp!675)))))

(declare-fun bs!440973 () Bool)

(assert (= bs!440973 d!641908))

(declare-fun m!2565373 () Bool)

(assert (=> bs!440973 m!2565373))

(assert (=> b!2107207 d!641908))

(declare-fun d!641910 () Bool)

(declare-fun c!338947 () Bool)

(assert (=> d!641910 (= c!338947 ((_ is Node!7726) (c!338933 input!1444)))))

(declare-fun e!1339508 () Bool)

(assert (=> d!641910 (= (inv!30828 (c!338933 input!1444)) e!1339508)))

(declare-fun b!2107304 () Bool)

(assert (=> b!2107304 (= e!1339508 (inv!30832 (c!338933 input!1444)))))

(declare-fun b!2107305 () Bool)

(declare-fun e!1339509 () Bool)

(assert (=> b!2107305 (= e!1339508 e!1339509)))

(declare-fun res!915977 () Bool)

(assert (=> b!2107305 (= res!915977 (not ((_ is Leaf!11282) (c!338933 input!1444))))))

(assert (=> b!2107305 (=> res!915977 e!1339509)))

(declare-fun b!2107306 () Bool)

(assert (=> b!2107306 (= e!1339509 (inv!30833 (c!338933 input!1444)))))

(assert (= (and d!641910 c!338947) b!2107304))

(assert (= (and d!641910 (not c!338947)) b!2107305))

(assert (= (and b!2107305 (not res!915977)) b!2107306))

(declare-fun m!2565375 () Bool)

(assert (=> b!2107304 m!2565375))

(declare-fun m!2565377 () Bool)

(assert (=> b!2107306 m!2565377))

(assert (=> b!2107225 d!641910))

(declare-fun d!641912 () Bool)

(declare-fun isBalanced!2430 (Conc!7726) Bool)

(assert (=> d!641912 (= (inv!30829 totalInput!482) (isBalanced!2430 (c!338933 totalInput!482)))))

(declare-fun bs!440974 () Bool)

(assert (= bs!440974 d!641912))

(declare-fun m!2565379 () Bool)

(assert (=> bs!440974 m!2565379))

(assert (=> start!206036 d!641912))

(declare-fun d!641914 () Bool)

(assert (=> d!641914 (= (inv!30829 input!1444) (isBalanced!2430 (c!338933 input!1444)))))

(declare-fun bs!440975 () Bool)

(assert (= bs!440975 d!641914))

(declare-fun m!2565381 () Bool)

(assert (=> bs!440975 m!2565381))

(assert (=> start!206036 d!641914))

(declare-fun d!641916 () Bool)

(declare-fun res!915980 () Bool)

(declare-fun e!1339512 () Bool)

(assert (=> d!641916 (=> (not res!915980) (not e!1339512))))

(assert (=> d!641916 (= res!915980 ((_ is HashMap!2175) (cache!2556 cacheUp!675)))))

(assert (=> d!641916 (= (inv!30830 cacheUp!675) e!1339512)))

(declare-fun b!2107309 () Bool)

(assert (=> b!2107309 (= e!1339512 (validCacheMapUp!226 (cache!2556 cacheUp!675)))))

(assert (= (and d!641916 res!915980) b!2107309))

(assert (=> b!2107309 m!2565373))

(assert (=> start!206036 d!641916))

(declare-fun d!641918 () Bool)

(declare-fun res!915983 () Bool)

(declare-fun e!1339515 () Bool)

(assert (=> d!641918 (=> (not res!915983) (not e!1339515))))

(assert (=> d!641918 (= res!915983 ((_ is HashMap!2174) (cache!2555 cacheDown!688)))))

(assert (=> d!641918 (= (inv!30831 cacheDown!688) e!1339515)))

(declare-fun b!2107312 () Bool)

(assert (=> b!2107312 (= e!1339515 (validCacheMapDown!224 (cache!2555 cacheDown!688)))))

(assert (= (and d!641918 res!915983) b!2107312))

(declare-fun m!2565383 () Bool)

(assert (=> b!2107312 m!2565383))

(assert (=> start!206036 d!641918))

(declare-fun d!641920 () Bool)

(declare-fun e!1339518 () Bool)

(assert (=> d!641920 e!1339518))

(declare-fun res!915986 () Bool)

(assert (=> d!641920 (=> res!915986 e!1339518)))

(declare-fun lt!791673 () Bool)

(assert (=> d!641920 (= res!915986 (not lt!791673))))

(declare-fun drop!1165 (List!23381 Int) List!23381)

(assert (=> d!641920 (= lt!791673 (= lt!791600 (drop!1165 (list!9450 totalInput!482) (- (size!18184 (list!9450 totalInput!482)) (size!18184 lt!791600)))))))

(assert (=> d!641920 (= (isSuffix!562 lt!791600 (list!9450 totalInput!482)) lt!791673)))

(declare-fun b!2107315 () Bool)

(assert (=> b!2107315 (= e!1339518 (>= (size!18184 (list!9450 totalInput!482)) (size!18184 lt!791600)))))

(assert (= (and d!641920 (not res!915986)) b!2107315))

(assert (=> d!641920 m!2565265))

(declare-fun m!2565385 () Bool)

(assert (=> d!641920 m!2565385))

(declare-fun m!2565387 () Bool)

(assert (=> d!641920 m!2565387))

(assert (=> d!641920 m!2565265))

(declare-fun m!2565389 () Bool)

(assert (=> d!641920 m!2565389))

(assert (=> b!2107315 m!2565265))

(assert (=> b!2107315 m!2565385))

(assert (=> b!2107315 m!2565387))

(assert (=> b!2107226 d!641920))

(declare-fun d!641922 () Bool)

(declare-fun list!9451 (Conc!7726) List!23381)

(assert (=> d!641922 (= (list!9450 totalInput!482) (list!9451 (c!338933 totalInput!482)))))

(declare-fun bs!440976 () Bool)

(assert (= bs!440976 d!641922))

(declare-fun m!2565391 () Bool)

(assert (=> bs!440976 m!2565391))

(assert (=> b!2107226 d!641922))

(declare-fun d!641924 () Bool)

(assert (=> d!641924 (= (list!9450 input!1444) (list!9451 (c!338933 input!1444)))))

(declare-fun bs!440977 () Bool)

(assert (= bs!440977 d!641924))

(declare-fun m!2565393 () Bool)

(assert (=> bs!440977 m!2565393))

(assert (=> b!2107226 d!641924))

(declare-fun d!641926 () Bool)

(assert (=> d!641926 (= (valid!1790 (_2!13059 lt!791599)) (validCacheMapUp!226 (cache!2556 (_2!13059 lt!791599))))))

(declare-fun bs!440978 () Bool)

(assert (= bs!440978 d!641926))

(declare-fun m!2565395 () Bool)

(assert (=> bs!440978 m!2565395))

(assert (=> b!2107209 d!641926))

(declare-fun b!2107325 () Bool)

(declare-fun res!915996 () Bool)

(declare-fun e!1339526 () Bool)

(assert (=> b!2107325 (=> (not res!915996) (not e!1339526))))

(declare-fun head!4629 (List!23381) C!11300)

(assert (=> b!2107325 (= res!915996 (= (head!4629 lt!791600) (head!4629 lt!791600)))))

(declare-fun d!641928 () Bool)

(declare-fun e!1339525 () Bool)

(assert (=> d!641928 e!1339525))

(declare-fun res!915995 () Bool)

(assert (=> d!641928 (=> res!915995 e!1339525)))

(declare-fun lt!791676 () Bool)

(assert (=> d!641928 (= res!915995 (not lt!791676))))

(declare-fun e!1339527 () Bool)

(assert (=> d!641928 (= lt!791676 e!1339527)))

(declare-fun res!915997 () Bool)

(assert (=> d!641928 (=> res!915997 e!1339527)))

(assert (=> d!641928 (= res!915997 ((_ is Nil!23297) lt!791600))))

(assert (=> d!641928 (= (isPrefix!2076 lt!791600 lt!791600) lt!791676)))

(declare-fun b!2107327 () Bool)

(assert (=> b!2107327 (= e!1339525 (>= (size!18184 lt!791600) (size!18184 lt!791600)))))

(declare-fun b!2107326 () Bool)

(declare-fun tail!3101 (List!23381) List!23381)

(assert (=> b!2107326 (= e!1339526 (isPrefix!2076 (tail!3101 lt!791600) (tail!3101 lt!791600)))))

(declare-fun b!2107324 () Bool)

(assert (=> b!2107324 (= e!1339527 e!1339526)))

(declare-fun res!915998 () Bool)

(assert (=> b!2107324 (=> (not res!915998) (not e!1339526))))

(assert (=> b!2107324 (= res!915998 (not ((_ is Nil!23297) lt!791600)))))

(assert (= (and d!641928 (not res!915997)) b!2107324))

(assert (= (and b!2107324 res!915998) b!2107325))

(assert (= (and b!2107325 res!915996) b!2107326))

(assert (= (and d!641928 (not res!915995)) b!2107327))

(declare-fun m!2565397 () Bool)

(assert (=> b!2107325 m!2565397))

(assert (=> b!2107325 m!2565397))

(assert (=> b!2107327 m!2565387))

(assert (=> b!2107327 m!2565387))

(declare-fun m!2565399 () Bool)

(assert (=> b!2107326 m!2565399))

(assert (=> b!2107326 m!2565399))

(assert (=> b!2107326 m!2565399))

(assert (=> b!2107326 m!2565399))

(declare-fun m!2565401 () Bool)

(assert (=> b!2107326 m!2565401))

(assert (=> b!2107227 d!641928))

(declare-fun d!641930 () Bool)

(assert (=> d!641930 (isPrefix!2076 lt!791600 lt!791600)))

(declare-fun lt!791679 () Unit!37479)

(declare-fun choose!12631 (List!23381 List!23381) Unit!37479)

(assert (=> d!641930 (= lt!791679 (choose!12631 lt!791600 lt!791600))))

(assert (=> d!641930 (= (lemmaIsPrefixRefl!1394 lt!791600 lt!791600) lt!791679)))

(declare-fun bs!440979 () Bool)

(assert (= bs!440979 d!641930))

(assert (=> bs!440979 m!2565249))

(declare-fun m!2565403 () Bool)

(assert (=> bs!440979 m!2565403))

(assert (=> b!2107227 d!641930))

(declare-fun d!641932 () Bool)

(assert (=> d!641932 (= (array_inv!2486 (_keys!2558 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))))) (bvsge (size!18179 (_keys!2558 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107210 d!641932))

(declare-fun d!641934 () Bool)

(assert (=> d!641934 (= (array_inv!2487 (_values!2541 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))))) (bvsge (size!18181 (_values!2541 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2107210 d!641934))

(declare-fun d!641936 () Bool)

(assert (=> d!641936 (= (valid!1791 cacheDown!688) (validCacheMapDown!224 (cache!2555 cacheDown!688)))))

(declare-fun bs!440980 () Bool)

(assert (= bs!440980 d!641936))

(assert (=> bs!440980 m!2565383))

(assert (=> b!2107229 d!641936))

(declare-fun tp!639574 () Bool)

(declare-fun b!2107336 () Bool)

(declare-fun e!1339532 () Bool)

(declare-fun tp!639575 () Bool)

(assert (=> b!2107336 (= e!1339532 (and (inv!30828 (left!18159 (c!338933 totalInput!482))) tp!639574 (inv!30828 (right!18489 (c!338933 totalInput!482))) tp!639575))))

(declare-fun b!2107338 () Bool)

(declare-fun e!1339533 () Bool)

(declare-fun tp!639576 () Bool)

(assert (=> b!2107338 (= e!1339533 tp!639576)))

(declare-fun b!2107337 () Bool)

(declare-fun inv!30834 (IArray!15457) Bool)

(assert (=> b!2107337 (= e!1339532 (and (inv!30834 (xs!10668 (c!338933 totalInput!482))) e!1339533))))

(assert (=> b!2107212 (= tp!639551 (and (inv!30828 (c!338933 totalInput!482)) e!1339532))))

(assert (= (and b!2107212 ((_ is Node!7726) (c!338933 totalInput!482))) b!2107336))

(assert (= b!2107337 b!2107338))

(assert (= (and b!2107212 ((_ is Leaf!11282) (c!338933 totalInput!482))) b!2107337))

(declare-fun m!2565405 () Bool)

(assert (=> b!2107336 m!2565405))

(declare-fun m!2565407 () Bool)

(assert (=> b!2107336 m!2565407))

(declare-fun m!2565409 () Bool)

(assert (=> b!2107337 m!2565409))

(assert (=> b!2107212 m!2565271))

(declare-fun e!1339540 () Bool)

(declare-fun setRes!13880 () Bool)

(declare-fun b!2107347 () Bool)

(declare-fun tp_is_empty!9375 () Bool)

(declare-fun tp!639586 () Bool)

(declare-fun e!1339541 () Bool)

(declare-fun inv!30835 (Context!2294) Bool)

(assert (=> b!2107347 (= e!1339541 (and (inv!30835 (_1!13056 (_1!13057 (h!28700 mapDefault!10914)))) e!1339540 tp_is_empty!9375 setRes!13880 tp!639586))))

(declare-fun condSetEmpty!13880 () Bool)

(assert (=> b!2107347 (= condSetEmpty!13880 (= (_2!13057 (h!28700 mapDefault!10914)) ((as const (Array Context!2294 Bool)) false)))))

(assert (=> b!2107223 (= tp!639553 e!1339541)))

(declare-fun setNonEmpty!13880 () Bool)

(declare-fun e!1339542 () Bool)

(declare-fun tp!639588 () Bool)

(declare-fun setElem!13880 () Context!2294)

(assert (=> setNonEmpty!13880 (= setRes!13880 (and tp!639588 (inv!30835 setElem!13880) e!1339542))))

(declare-fun setRest!13880 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13880 (= (_2!13057 (h!28700 mapDefault!10914)) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13880 true) setRest!13880))))

(declare-fun b!2107348 () Bool)

(declare-fun tp!639587 () Bool)

(assert (=> b!2107348 (= e!1339540 tp!639587)))

(declare-fun setIsEmpty!13880 () Bool)

(assert (=> setIsEmpty!13880 setRes!13880))

(declare-fun b!2107349 () Bool)

(declare-fun tp!639585 () Bool)

(assert (=> b!2107349 (= e!1339542 tp!639585)))

(assert (= b!2107347 b!2107348))

(assert (= (and b!2107347 condSetEmpty!13880) setIsEmpty!13880))

(assert (= (and b!2107347 (not condSetEmpty!13880)) setNonEmpty!13880))

(assert (= setNonEmpty!13880 b!2107349))

(assert (= (and b!2107223 ((_ is Cons!23299) mapDefault!10914)) b!2107347))

(declare-fun m!2565411 () Bool)

(assert (=> b!2107347 m!2565411))

(declare-fun m!2565413 () Bool)

(assert (=> setNonEmpty!13880 m!2565413))

(declare-fun b!2107361 () Bool)

(declare-fun e!1339545 () Bool)

(declare-fun tp!639601 () Bool)

(declare-fun tp!639603 () Bool)

(assert (=> b!2107361 (= e!1339545 (and tp!639601 tp!639603))))

(declare-fun b!2107363 () Bool)

(declare-fun tp!639599 () Bool)

(declare-fun tp!639602 () Bool)

(assert (=> b!2107363 (= e!1339545 (and tp!639599 tp!639602))))

(declare-fun b!2107362 () Bool)

(declare-fun tp!639600 () Bool)

(assert (=> b!2107362 (= e!1339545 tp!639600)))

(assert (=> b!2107216 (= tp!639548 e!1339545)))

(declare-fun b!2107360 () Bool)

(assert (=> b!2107360 (= e!1339545 tp_is_empty!9375)))

(assert (= (and b!2107216 ((_ is ElementMatch!5577) (regex!4146 (h!28699 rulesArg!349)))) b!2107360))

(assert (= (and b!2107216 ((_ is Concat!9859) (regex!4146 (h!28699 rulesArg!349)))) b!2107361))

(assert (= (and b!2107216 ((_ is Star!5577) (regex!4146 (h!28699 rulesArg!349)))) b!2107362))

(assert (= (and b!2107216 ((_ is Union!5577) (regex!4146 (h!28699 rulesArg!349)))) b!2107363))

(declare-fun e!1339554 () Bool)

(declare-fun tp!639616 () Bool)

(declare-fun e!1339552 () Bool)

(declare-fun b!2107372 () Bool)

(declare-fun setRes!13883 () Bool)

(declare-fun tp!639614 () Bool)

(assert (=> b!2107372 (= e!1339554 (and tp!639616 (inv!30835 (_2!13054 (_1!13055 (h!28696 (zeroValue!2518 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688)))))))))) e!1339552 tp_is_empty!9375 setRes!13883 tp!639614))))

(declare-fun condSetEmpty!13883 () Bool)

(assert (=> b!2107372 (= condSetEmpty!13883 (= (_2!13055 (h!28696 (zeroValue!2518 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688)))))))) ((as const (Array Context!2294 Bool)) false)))))

(assert (=> b!2107224 (= tp!639567 e!1339554)))

(declare-fun b!2107373 () Bool)

(declare-fun tp!639617 () Bool)

(assert (=> b!2107373 (= e!1339552 tp!639617)))

(declare-fun b!2107374 () Bool)

(declare-fun e!1339553 () Bool)

(declare-fun tp!639615 () Bool)

(assert (=> b!2107374 (= e!1339553 tp!639615)))

(declare-fun setNonEmpty!13883 () Bool)

(declare-fun tp!639618 () Bool)

(declare-fun setElem!13883 () Context!2294)

(assert (=> setNonEmpty!13883 (= setRes!13883 (and tp!639618 (inv!30835 setElem!13883) e!1339553))))

(declare-fun setRest!13883 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13883 (= (_2!13055 (h!28696 (zeroValue!2518 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13883 true) setRest!13883))))

(declare-fun setIsEmpty!13883 () Bool)

(assert (=> setIsEmpty!13883 setRes!13883))

(assert (= b!2107372 b!2107373))

(assert (= (and b!2107372 condSetEmpty!13883) setIsEmpty!13883))

(assert (= (and b!2107372 (not condSetEmpty!13883)) setNonEmpty!13883))

(assert (= setNonEmpty!13883 b!2107374))

(assert (= (and b!2107224 ((_ is Cons!23295) (zeroValue!2518 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688)))))))) b!2107372))

(declare-fun m!2565415 () Bool)

(assert (=> b!2107372 m!2565415))

(declare-fun m!2565417 () Bool)

(assert (=> setNonEmpty!13883 m!2565417))

(declare-fun tp!639619 () Bool)

(declare-fun e!1339555 () Bool)

(declare-fun e!1339557 () Bool)

(declare-fun b!2107375 () Bool)

(declare-fun tp!639621 () Bool)

(declare-fun setRes!13884 () Bool)

(assert (=> b!2107375 (= e!1339557 (and tp!639621 (inv!30835 (_2!13054 (_1!13055 (h!28696 (minValue!2518 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688)))))))))) e!1339555 tp_is_empty!9375 setRes!13884 tp!639619))))

(declare-fun condSetEmpty!13884 () Bool)

(assert (=> b!2107375 (= condSetEmpty!13884 (= (_2!13055 (h!28696 (minValue!2518 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688)))))))) ((as const (Array Context!2294 Bool)) false)))))

(assert (=> b!2107224 (= tp!639555 e!1339557)))

(declare-fun b!2107376 () Bool)

(declare-fun tp!639622 () Bool)

(assert (=> b!2107376 (= e!1339555 tp!639622)))

(declare-fun b!2107377 () Bool)

(declare-fun e!1339556 () Bool)

(declare-fun tp!639620 () Bool)

(assert (=> b!2107377 (= e!1339556 tp!639620)))

(declare-fun tp!639623 () Bool)

(declare-fun setNonEmpty!13884 () Bool)

(declare-fun setElem!13884 () Context!2294)

(assert (=> setNonEmpty!13884 (= setRes!13884 (and tp!639623 (inv!30835 setElem!13884) e!1339556))))

(declare-fun setRest!13884 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13884 (= (_2!13055 (h!28696 (minValue!2518 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13884 true) setRest!13884))))

(declare-fun setIsEmpty!13884 () Bool)

(assert (=> setIsEmpty!13884 setRes!13884))

(assert (= b!2107375 b!2107376))

(assert (= (and b!2107375 condSetEmpty!13884) setIsEmpty!13884))

(assert (= (and b!2107375 (not condSetEmpty!13884)) setNonEmpty!13884))

(assert (= setNonEmpty!13884 b!2107377))

(assert (= (and b!2107224 ((_ is Cons!23295) (minValue!2518 (v!27840 (underlying!4715 (v!27841 (underlying!4716 (cache!2555 cacheDown!688)))))))) b!2107375))

(declare-fun m!2565419 () Bool)

(assert (=> b!2107375 m!2565419))

(declare-fun m!2565421 () Bool)

(assert (=> setNonEmpty!13884 m!2565421))

(declare-fun tp!639625 () Bool)

(declare-fun tp!639624 () Bool)

(declare-fun e!1339558 () Bool)

(declare-fun b!2107378 () Bool)

(assert (=> b!2107378 (= e!1339558 (and (inv!30828 (left!18159 (c!338933 input!1444))) tp!639624 (inv!30828 (right!18489 (c!338933 input!1444))) tp!639625))))

(declare-fun b!2107380 () Bool)

(declare-fun e!1339559 () Bool)

(declare-fun tp!639626 () Bool)

(assert (=> b!2107380 (= e!1339559 tp!639626)))

(declare-fun b!2107379 () Bool)

(assert (=> b!2107379 (= e!1339558 (and (inv!30834 (xs!10668 (c!338933 input!1444))) e!1339559))))

(assert (=> b!2107225 (= tp!639556 (and (inv!30828 (c!338933 input!1444)) e!1339558))))

(assert (= (and b!2107225 ((_ is Node!7726) (c!338933 input!1444))) b!2107378))

(assert (= b!2107379 b!2107380))

(assert (= (and b!2107225 ((_ is Leaf!11282) (c!338933 input!1444))) b!2107379))

(declare-fun m!2565423 () Bool)

(assert (=> b!2107378 m!2565423))

(declare-fun m!2565425 () Bool)

(assert (=> b!2107378 m!2565425))

(declare-fun m!2565427 () Bool)

(assert (=> b!2107379 m!2565427))

(assert (=> b!2107225 m!2565247))

(declare-fun tp!639658 () Bool)

(declare-fun setRes!13890 () Bool)

(declare-fun b!2107395 () Bool)

(declare-fun e!1339573 () Bool)

(declare-fun mapDefault!10918 () List!23379)

(declare-fun e!1339575 () Bool)

(declare-fun tp!639659 () Bool)

(assert (=> b!2107395 (= e!1339575 (and tp!639659 (inv!30835 (_2!13054 (_1!13055 (h!28696 mapDefault!10918)))) e!1339573 tp_is_empty!9375 setRes!13890 tp!639658))))

(declare-fun condSetEmpty!13889 () Bool)

(assert (=> b!2107395 (= condSetEmpty!13889 (= (_2!13055 (h!28696 mapDefault!10918)) ((as const (Array Context!2294 Bool)) false)))))

(declare-fun mapNonEmpty!10918 () Bool)

(declare-fun mapRes!10918 () Bool)

(declare-fun tp!639650 () Bool)

(declare-fun e!1339572 () Bool)

(assert (=> mapNonEmpty!10918 (= mapRes!10918 (and tp!639650 e!1339572))))

(declare-fun mapValue!10918 () List!23379)

(declare-fun mapRest!10918 () (Array (_ BitVec 32) List!23379))

(declare-fun mapKey!10918 () (_ BitVec 32))

(assert (=> mapNonEmpty!10918 (= mapRest!10914 (store mapRest!10918 mapKey!10918 mapValue!10918))))

(declare-fun b!2107396 () Bool)

(declare-fun tp!639652 () Bool)

(assert (=> b!2107396 (= e!1339573 tp!639652)))

(declare-fun setIsEmpty!13889 () Bool)

(assert (=> setIsEmpty!13889 setRes!13890))

(declare-fun setElem!13889 () Context!2294)

(declare-fun e!1339576 () Bool)

(declare-fun setRes!13889 () Bool)

(declare-fun tp!639656 () Bool)

(declare-fun setNonEmpty!13889 () Bool)

(assert (=> setNonEmpty!13889 (= setRes!13889 (and tp!639656 (inv!30835 setElem!13889) e!1339576))))

(declare-fun setRest!13889 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13889 (= (_2!13055 (h!28696 mapValue!10918)) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13889 true) setRest!13889))))

(declare-fun tp!639651 () Bool)

(declare-fun e!1339577 () Bool)

(declare-fun tp!639654 () Bool)

(declare-fun b!2107398 () Bool)

(assert (=> b!2107398 (= e!1339572 (and tp!639651 (inv!30835 (_2!13054 (_1!13055 (h!28696 mapValue!10918)))) e!1339577 tp_is_empty!9375 setRes!13889 tp!639654))))

(declare-fun condSetEmpty!13890 () Bool)

(assert (=> b!2107398 (= condSetEmpty!13890 (= (_2!13055 (h!28696 mapValue!10918)) ((as const (Array Context!2294 Bool)) false)))))

(declare-fun b!2107399 () Bool)

(declare-fun tp!639655 () Bool)

(assert (=> b!2107399 (= e!1339577 tp!639655)))

(declare-fun e!1339574 () Bool)

(declare-fun setNonEmpty!13890 () Bool)

(declare-fun setElem!13890 () Context!2294)

(declare-fun tp!639657 () Bool)

(assert (=> setNonEmpty!13890 (= setRes!13890 (and tp!639657 (inv!30835 setElem!13890) e!1339574))))

(declare-fun setRest!13890 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13890 (= (_2!13055 (h!28696 mapDefault!10918)) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13890 true) setRest!13890))))

(declare-fun mapIsEmpty!10918 () Bool)

(assert (=> mapIsEmpty!10918 mapRes!10918))

(declare-fun b!2107400 () Bool)

(declare-fun tp!639653 () Bool)

(assert (=> b!2107400 (= e!1339576 tp!639653)))

(declare-fun setIsEmpty!13890 () Bool)

(assert (=> setIsEmpty!13890 setRes!13889))

(declare-fun condMapEmpty!10918 () Bool)

(assert (=> mapNonEmpty!10914 (= condMapEmpty!10918 (= mapRest!10914 ((as const (Array (_ BitVec 32) List!23379)) mapDefault!10918)))))

(assert (=> mapNonEmpty!10914 (= tp!639552 (and e!1339575 mapRes!10918))))

(declare-fun b!2107397 () Bool)

(declare-fun tp!639649 () Bool)

(assert (=> b!2107397 (= e!1339574 tp!639649)))

(assert (= (and mapNonEmpty!10914 condMapEmpty!10918) mapIsEmpty!10918))

(assert (= (and mapNonEmpty!10914 (not condMapEmpty!10918)) mapNonEmpty!10918))

(assert (= b!2107398 b!2107399))

(assert (= (and b!2107398 condSetEmpty!13890) setIsEmpty!13890))

(assert (= (and b!2107398 (not condSetEmpty!13890)) setNonEmpty!13889))

(assert (= setNonEmpty!13889 b!2107400))

(assert (= (and mapNonEmpty!10918 ((_ is Cons!23295) mapValue!10918)) b!2107398))

(assert (= b!2107395 b!2107396))

(assert (= (and b!2107395 condSetEmpty!13889) setIsEmpty!13889))

(assert (= (and b!2107395 (not condSetEmpty!13889)) setNonEmpty!13890))

(assert (= setNonEmpty!13890 b!2107397))

(assert (= (and mapNonEmpty!10914 ((_ is Cons!23295) mapDefault!10918)) b!2107395))

(declare-fun m!2565429 () Bool)

(assert (=> mapNonEmpty!10918 m!2565429))

(declare-fun m!2565431 () Bool)

(assert (=> setNonEmpty!13889 m!2565431))

(declare-fun m!2565433 () Bool)

(assert (=> setNonEmpty!13890 m!2565433))

(declare-fun m!2565435 () Bool)

(assert (=> b!2107398 m!2565435))

(declare-fun m!2565437 () Bool)

(assert (=> b!2107395 m!2565437))

(declare-fun tp!639662 () Bool)

(declare-fun e!1339580 () Bool)

(declare-fun tp!639660 () Bool)

(declare-fun setRes!13891 () Bool)

(declare-fun e!1339578 () Bool)

(declare-fun b!2107401 () Bool)

(assert (=> b!2107401 (= e!1339580 (and tp!639662 (inv!30835 (_2!13054 (_1!13055 (h!28696 mapValue!10915)))) e!1339578 tp_is_empty!9375 setRes!13891 tp!639660))))

(declare-fun condSetEmpty!13891 () Bool)

(assert (=> b!2107401 (= condSetEmpty!13891 (= (_2!13055 (h!28696 mapValue!10915)) ((as const (Array Context!2294 Bool)) false)))))

(assert (=> mapNonEmpty!10914 (= tp!639566 e!1339580)))

(declare-fun b!2107402 () Bool)

(declare-fun tp!639663 () Bool)

(assert (=> b!2107402 (= e!1339578 tp!639663)))

(declare-fun b!2107403 () Bool)

(declare-fun e!1339579 () Bool)

(declare-fun tp!639661 () Bool)

(assert (=> b!2107403 (= e!1339579 tp!639661)))

(declare-fun setNonEmpty!13891 () Bool)

(declare-fun tp!639664 () Bool)

(declare-fun setElem!13891 () Context!2294)

(assert (=> setNonEmpty!13891 (= setRes!13891 (and tp!639664 (inv!30835 setElem!13891) e!1339579))))

(declare-fun setRest!13891 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13891 (= (_2!13055 (h!28696 mapValue!10915)) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13891 true) setRest!13891))))

(declare-fun setIsEmpty!13891 () Bool)

(assert (=> setIsEmpty!13891 setRes!13891))

(assert (= b!2107401 b!2107402))

(assert (= (and b!2107401 condSetEmpty!13891) setIsEmpty!13891))

(assert (= (and b!2107401 (not condSetEmpty!13891)) setNonEmpty!13891))

(assert (= setNonEmpty!13891 b!2107403))

(assert (= (and mapNonEmpty!10914 ((_ is Cons!23295) mapValue!10915)) b!2107401))

(declare-fun m!2565439 () Bool)

(assert (=> b!2107401 m!2565439))

(declare-fun m!2565441 () Bool)

(assert (=> setNonEmpty!13891 m!2565441))

(declare-fun tp!639666 () Bool)

(declare-fun e!1339581 () Bool)

(declare-fun setRes!13892 () Bool)

(declare-fun e!1339582 () Bool)

(declare-fun b!2107404 () Bool)

(assert (=> b!2107404 (= e!1339582 (and (inv!30835 (_1!13056 (_1!13057 (h!28700 (zeroValue!2519 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675)))))))))) e!1339581 tp_is_empty!9375 setRes!13892 tp!639666))))

(declare-fun condSetEmpty!13892 () Bool)

(assert (=> b!2107404 (= condSetEmpty!13892 (= (_2!13057 (h!28700 (zeroValue!2519 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675)))))))) ((as const (Array Context!2294 Bool)) false)))))

(assert (=> b!2107210 (= tp!639558 e!1339582)))

(declare-fun setElem!13892 () Context!2294)

(declare-fun e!1339583 () Bool)

(declare-fun tp!639668 () Bool)

(declare-fun setNonEmpty!13892 () Bool)

(assert (=> setNonEmpty!13892 (= setRes!13892 (and tp!639668 (inv!30835 setElem!13892) e!1339583))))

(declare-fun setRest!13892 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13892 (= (_2!13057 (h!28700 (zeroValue!2519 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13892 true) setRest!13892))))

(declare-fun b!2107405 () Bool)

(declare-fun tp!639667 () Bool)

(assert (=> b!2107405 (= e!1339581 tp!639667)))

(declare-fun setIsEmpty!13892 () Bool)

(assert (=> setIsEmpty!13892 setRes!13892))

(declare-fun b!2107406 () Bool)

(declare-fun tp!639665 () Bool)

(assert (=> b!2107406 (= e!1339583 tp!639665)))

(assert (= b!2107404 b!2107405))

(assert (= (and b!2107404 condSetEmpty!13892) setIsEmpty!13892))

(assert (= (and b!2107404 (not condSetEmpty!13892)) setNonEmpty!13892))

(assert (= setNonEmpty!13892 b!2107406))

(assert (= (and b!2107210 ((_ is Cons!23299) (zeroValue!2519 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675)))))))) b!2107404))

(declare-fun m!2565443 () Bool)

(assert (=> b!2107404 m!2565443))

(declare-fun m!2565445 () Bool)

(assert (=> setNonEmpty!13892 m!2565445))

(declare-fun e!1339585 () Bool)

(declare-fun tp!639670 () Bool)

(declare-fun e!1339584 () Bool)

(declare-fun setRes!13893 () Bool)

(declare-fun b!2107407 () Bool)

(assert (=> b!2107407 (= e!1339585 (and (inv!30835 (_1!13056 (_1!13057 (h!28700 (minValue!2519 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675)))))))))) e!1339584 tp_is_empty!9375 setRes!13893 tp!639670))))

(declare-fun condSetEmpty!13893 () Bool)

(assert (=> b!2107407 (= condSetEmpty!13893 (= (_2!13057 (h!28700 (minValue!2519 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675)))))))) ((as const (Array Context!2294 Bool)) false)))))

(assert (=> b!2107210 (= tp!639554 e!1339585)))

(declare-fun setNonEmpty!13893 () Bool)

(declare-fun setElem!13893 () Context!2294)

(declare-fun e!1339586 () Bool)

(declare-fun tp!639672 () Bool)

(assert (=> setNonEmpty!13893 (= setRes!13893 (and tp!639672 (inv!30835 setElem!13893) e!1339586))))

(declare-fun setRest!13893 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13893 (= (_2!13057 (h!28700 (minValue!2519 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13893 true) setRest!13893))))

(declare-fun b!2107408 () Bool)

(declare-fun tp!639671 () Bool)

(assert (=> b!2107408 (= e!1339584 tp!639671)))

(declare-fun setIsEmpty!13893 () Bool)

(assert (=> setIsEmpty!13893 setRes!13893))

(declare-fun b!2107409 () Bool)

(declare-fun tp!639669 () Bool)

(assert (=> b!2107409 (= e!1339586 tp!639669)))

(assert (= b!2107407 b!2107408))

(assert (= (and b!2107407 condSetEmpty!13893) setIsEmpty!13893))

(assert (= (and b!2107407 (not condSetEmpty!13893)) setNonEmpty!13893))

(assert (= setNonEmpty!13893 b!2107409))

(assert (= (and b!2107210 ((_ is Cons!23299) (minValue!2519 (v!27842 (underlying!4717 (v!27843 (underlying!4718 (cache!2556 cacheUp!675)))))))) b!2107407))

(declare-fun m!2565447 () Bool)

(assert (=> b!2107407 m!2565447))

(declare-fun m!2565449 () Bool)

(assert (=> setNonEmpty!13893 m!2565449))

(declare-fun setIsEmpty!13898 () Bool)

(declare-fun setRes!13899 () Bool)

(assert (=> setIsEmpty!13898 setRes!13899))

(declare-fun b!2107424 () Bool)

(declare-fun e!1339599 () Bool)

(declare-fun tp!639695 () Bool)

(assert (=> b!2107424 (= e!1339599 tp!639695)))

(declare-fun b!2107425 () Bool)

(declare-fun e!1339600 () Bool)

(declare-fun tp!639699 () Bool)

(assert (=> b!2107425 (= e!1339600 tp!639699)))

(declare-fun setElem!13898 () Context!2294)

(declare-fun tp!639698 () Bool)

(declare-fun setRes!13898 () Bool)

(declare-fun setNonEmpty!13898 () Bool)

(assert (=> setNonEmpty!13898 (= setRes!13898 (and tp!639698 (inv!30835 setElem!13898) e!1339599))))

(declare-fun mapValue!10921 () List!23383)

(declare-fun setRest!13899 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13898 (= (_2!13057 (h!28700 mapValue!10921)) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13898 true) setRest!13899))))

(declare-fun e!1339601 () Bool)

(declare-fun b!2107426 () Bool)

(declare-fun e!1339602 () Bool)

(declare-fun tp!639692 () Bool)

(assert (=> b!2107426 (= e!1339602 (and (inv!30835 (_1!13056 (_1!13057 (h!28700 mapValue!10921)))) e!1339601 tp_is_empty!9375 setRes!13898 tp!639692))))

(declare-fun condSetEmpty!13898 () Bool)

(assert (=> b!2107426 (= condSetEmpty!13898 (= (_2!13057 (h!28700 mapValue!10921)) ((as const (Array Context!2294 Bool)) false)))))

(declare-fun tp!639696 () Bool)

(declare-fun e!1339603 () Bool)

(declare-fun mapDefault!10921 () List!23383)

(declare-fun b!2107427 () Bool)

(declare-fun e!1339604 () Bool)

(assert (=> b!2107427 (= e!1339603 (and (inv!30835 (_1!13056 (_1!13057 (h!28700 mapDefault!10921)))) e!1339604 tp_is_empty!9375 setRes!13899 tp!639696))))

(declare-fun condSetEmpty!13899 () Bool)

(assert (=> b!2107427 (= condSetEmpty!13899 (= (_2!13057 (h!28700 mapDefault!10921)) ((as const (Array Context!2294 Bool)) false)))))

(declare-fun setIsEmpty!13899 () Bool)

(assert (=> setIsEmpty!13899 setRes!13898))

(declare-fun mapIsEmpty!10921 () Bool)

(declare-fun mapRes!10921 () Bool)

(assert (=> mapIsEmpty!10921 mapRes!10921))

(declare-fun tp!639697 () Bool)

(declare-fun setNonEmpty!13899 () Bool)

(declare-fun setElem!13899 () Context!2294)

(assert (=> setNonEmpty!13899 (= setRes!13899 (and tp!639697 (inv!30835 setElem!13899) e!1339600))))

(declare-fun setRest!13898 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13899 (= (_2!13057 (h!28700 mapDefault!10921)) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13899 true) setRest!13898))))

(declare-fun condMapEmpty!10921 () Bool)

(assert (=> mapNonEmpty!10915 (= condMapEmpty!10921 (= mapRest!10915 ((as const (Array (_ BitVec 32) List!23383)) mapDefault!10921)))))

(assert (=> mapNonEmpty!10915 (= tp!639550 (and e!1339603 mapRes!10921))))

(declare-fun b!2107428 () Bool)

(declare-fun tp!639691 () Bool)

(assert (=> b!2107428 (= e!1339604 tp!639691)))

(declare-fun b!2107429 () Bool)

(declare-fun tp!639694 () Bool)

(assert (=> b!2107429 (= e!1339601 tp!639694)))

(declare-fun mapNonEmpty!10921 () Bool)

(declare-fun tp!639693 () Bool)

(assert (=> mapNonEmpty!10921 (= mapRes!10921 (and tp!639693 e!1339602))))

(declare-fun mapRest!10921 () (Array (_ BitVec 32) List!23383))

(declare-fun mapKey!10921 () (_ BitVec 32))

(assert (=> mapNonEmpty!10921 (= mapRest!10915 (store mapRest!10921 mapKey!10921 mapValue!10921))))

(assert (= (and mapNonEmpty!10915 condMapEmpty!10921) mapIsEmpty!10921))

(assert (= (and mapNonEmpty!10915 (not condMapEmpty!10921)) mapNonEmpty!10921))

(assert (= b!2107426 b!2107429))

(assert (= (and b!2107426 condSetEmpty!13898) setIsEmpty!13899))

(assert (= (and b!2107426 (not condSetEmpty!13898)) setNonEmpty!13898))

(assert (= setNonEmpty!13898 b!2107424))

(assert (= (and mapNonEmpty!10921 ((_ is Cons!23299) mapValue!10921)) b!2107426))

(assert (= b!2107427 b!2107428))

(assert (= (and b!2107427 condSetEmpty!13899) setIsEmpty!13898))

(assert (= (and b!2107427 (not condSetEmpty!13899)) setNonEmpty!13899))

(assert (= setNonEmpty!13899 b!2107425))

(assert (= (and mapNonEmpty!10915 ((_ is Cons!23299) mapDefault!10921)) b!2107427))

(declare-fun m!2565451 () Bool)

(assert (=> setNonEmpty!13898 m!2565451))

(declare-fun m!2565453 () Bool)

(assert (=> b!2107427 m!2565453))

(declare-fun m!2565455 () Bool)

(assert (=> setNonEmpty!13899 m!2565455))

(declare-fun m!2565457 () Bool)

(assert (=> b!2107426 m!2565457))

(declare-fun m!2565459 () Bool)

(assert (=> mapNonEmpty!10921 m!2565459))

(declare-fun e!1339606 () Bool)

(declare-fun setRes!13900 () Bool)

(declare-fun e!1339605 () Bool)

(declare-fun tp!639701 () Bool)

(declare-fun b!2107430 () Bool)

(assert (=> b!2107430 (= e!1339606 (and (inv!30835 (_1!13056 (_1!13057 (h!28700 mapValue!10914)))) e!1339605 tp_is_empty!9375 setRes!13900 tp!639701))))

(declare-fun condSetEmpty!13900 () Bool)

(assert (=> b!2107430 (= condSetEmpty!13900 (= (_2!13057 (h!28700 mapValue!10914)) ((as const (Array Context!2294 Bool)) false)))))

(assert (=> mapNonEmpty!10915 (= tp!639549 e!1339606)))

(declare-fun tp!639703 () Bool)

(declare-fun setElem!13900 () Context!2294)

(declare-fun setNonEmpty!13900 () Bool)

(declare-fun e!1339607 () Bool)

(assert (=> setNonEmpty!13900 (= setRes!13900 (and tp!639703 (inv!30835 setElem!13900) e!1339607))))

(declare-fun setRest!13900 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13900 (= (_2!13057 (h!28700 mapValue!10914)) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13900 true) setRest!13900))))

(declare-fun b!2107431 () Bool)

(declare-fun tp!639702 () Bool)

(assert (=> b!2107431 (= e!1339605 tp!639702)))

(declare-fun setIsEmpty!13900 () Bool)

(assert (=> setIsEmpty!13900 setRes!13900))

(declare-fun b!2107432 () Bool)

(declare-fun tp!639700 () Bool)

(assert (=> b!2107432 (= e!1339607 tp!639700)))

(assert (= b!2107430 b!2107431))

(assert (= (and b!2107430 condSetEmpty!13900) setIsEmpty!13900))

(assert (= (and b!2107430 (not condSetEmpty!13900)) setNonEmpty!13900))

(assert (= setNonEmpty!13900 b!2107432))

(assert (= (and mapNonEmpty!10915 ((_ is Cons!23299) mapValue!10914)) b!2107430))

(declare-fun m!2565461 () Bool)

(assert (=> b!2107430 m!2565461))

(declare-fun m!2565463 () Bool)

(assert (=> setNonEmpty!13900 m!2565463))

(declare-fun b!2107443 () Bool)

(declare-fun b_free!60637 () Bool)

(declare-fun b_next!61341 () Bool)

(assert (=> b!2107443 (= b_free!60637 (not b_next!61341))))

(declare-fun tp!639715 () Bool)

(declare-fun b_and!170199 () Bool)

(assert (=> b!2107443 (= tp!639715 b_and!170199)))

(declare-fun b_free!60639 () Bool)

(declare-fun b_next!61343 () Bool)

(assert (=> b!2107443 (= b_free!60639 (not b_next!61343))))

(declare-fun tp!639713 () Bool)

(declare-fun b_and!170201 () Bool)

(assert (=> b!2107443 (= tp!639713 b_and!170201)))

(declare-fun e!1339619 () Bool)

(assert (=> b!2107443 (= e!1339619 (and tp!639715 tp!639713))))

(declare-fun b!2107442 () Bool)

(declare-fun e!1339617 () Bool)

(declare-fun tp!639712 () Bool)

(assert (=> b!2107442 (= e!1339617 (and tp!639712 (inv!30822 (tag!4636 (h!28699 (t!195875 rulesArg!349)))) (inv!30827 (transformation!4146 (h!28699 (t!195875 rulesArg!349)))) e!1339619))))

(declare-fun b!2107441 () Bool)

(declare-fun e!1339616 () Bool)

(declare-fun tp!639714 () Bool)

(assert (=> b!2107441 (= e!1339616 (and e!1339617 tp!639714))))

(assert (=> b!2107228 (= tp!639565 e!1339616)))

(assert (= b!2107442 b!2107443))

(assert (= b!2107441 b!2107442))

(assert (= (and b!2107228 ((_ is Cons!23298) (t!195875 rulesArg!349))) b!2107441))

(declare-fun m!2565465 () Bool)

(assert (=> b!2107442 m!2565465))

(declare-fun m!2565467 () Bool)

(assert (=> b!2107442 m!2565467))

(declare-fun b!2107444 () Bool)

(declare-fun tp!639718 () Bool)

(declare-fun e!1339622 () Bool)

(declare-fun e!1339620 () Bool)

(declare-fun tp!639716 () Bool)

(declare-fun setRes!13901 () Bool)

(assert (=> b!2107444 (= e!1339622 (and tp!639718 (inv!30835 (_2!13054 (_1!13055 (h!28696 mapDefault!10915)))) e!1339620 tp_is_empty!9375 setRes!13901 tp!639716))))

(declare-fun condSetEmpty!13901 () Bool)

(assert (=> b!2107444 (= condSetEmpty!13901 (= (_2!13055 (h!28696 mapDefault!10915)) ((as const (Array Context!2294 Bool)) false)))))

(assert (=> b!2107211 (= tp!639562 e!1339622)))

(declare-fun b!2107445 () Bool)

(declare-fun tp!639719 () Bool)

(assert (=> b!2107445 (= e!1339620 tp!639719)))

(declare-fun b!2107446 () Bool)

(declare-fun e!1339621 () Bool)

(declare-fun tp!639717 () Bool)

(assert (=> b!2107446 (= e!1339621 tp!639717)))

(declare-fun tp!639720 () Bool)

(declare-fun setElem!13901 () Context!2294)

(declare-fun setNonEmpty!13901 () Bool)

(assert (=> setNonEmpty!13901 (= setRes!13901 (and tp!639720 (inv!30835 setElem!13901) e!1339621))))

(declare-fun setRest!13901 () (InoxSet Context!2294))

(assert (=> setNonEmpty!13901 (= (_2!13055 (h!28696 mapDefault!10915)) ((_ map or) (store ((as const (Array Context!2294 Bool)) false) setElem!13901 true) setRest!13901))))

(declare-fun setIsEmpty!13901 () Bool)

(assert (=> setIsEmpty!13901 setRes!13901))

(assert (= b!2107444 b!2107445))

(assert (= (and b!2107444 condSetEmpty!13901) setIsEmpty!13901))

(assert (= (and b!2107444 (not condSetEmpty!13901)) setNonEmpty!13901))

(assert (= setNonEmpty!13901 b!2107446))

(assert (= (and b!2107211 ((_ is Cons!23295) mapDefault!10915)) b!2107444))

(declare-fun m!2565469 () Bool)

(assert (=> b!2107444 m!2565469))

(declare-fun m!2565471 () Bool)

(assert (=> setNonEmpty!13901 m!2565471))

(check-sat (not b!2107374) (not b!2107403) (not mapNonEmpty!10921) (not setNonEmpty!13900) (not b!2107362) (not b!2107427) (not b!2107379) (not b!2107361) (not b!2107312) (not b!2107276) (not b!2107395) (not b!2107377) (not b!2107348) (not b!2107327) (not setNonEmpty!13899) (not b!2107337) (not b_next!61339) (not b!2107239) (not b!2107428) (not b!2107444) (not b_next!61333) (not b_next!61337) (not b_next!61341) (not setNonEmpty!13880) (not b!2107297) (not setNonEmpty!13883) (not setNonEmpty!13901) (not b!2107396) (not b!2107426) (not setNonEmpty!13890) (not b!2107431) (not mapNonEmpty!10918) (not b!2107262) (not b!2107303) (not b!2107291) (not d!641926) (not d!641898) (not setNonEmpty!13889) (not b!2107347) (not b!2107349) (not b!2107306) (not d!641892) (not b!2107375) (not b!2107260) (not bm!128390) (not b!2107441) (not b!2107264) (not b_next!61335) (not b!2107376) (not setNonEmpty!13892) (not b!2107290) (not b!2107408) (not b!2107325) (not b_next!61331) (not d!641930) (not d!641920) (not d!641896) (not b!2107298) b_and!170197 tp_is_empty!9375 b_and!170187 (not b!2107380) (not b!2107398) (not b!2107304) (not b!2107425) (not d!641912) (not b!2107430) (not b!2107424) (not b!2107429) (not b!2107241) (not setNonEmpty!13884) (not b!2107326) (not b!2107225) b_and!170189 (not b!2107400) b_and!170201 (not b!2107258) (not d!641894) (not setNonEmpty!13893) (not d!641922) (not b!2107274) (not b!2107263) (not b!2107446) (not b!2107406) b_and!170195 (not b!2107405) (not d!641924) (not b!2107399) (not b!2107397) (not b!2107445) (not b!2107409) (not b!2107401) (not b!2107336) (not d!641908) (not b!2107292) (not d!641914) (not b!2107442) (not b!2107309) (not d!641936) b_and!170191 (not b!2107373) (not d!641902) (not b!2107404) (not setNonEmpty!13898) (not b!2107363) (not b!2107407) (not b!2107212) (not setNonEmpty!13891) (not b!2107275) (not b!2107338) b_and!170193 (not bm!128393) (not d!641888) (not b!2107402) (not b!2107378) (not b!2107265) b_and!170199 (not b!2107372) (not b!2107432) (not b!2107315) (not b!2107288) (not b_next!61329) (not b!2107259) (not b_next!61343))
(check-sat (not b_next!61339) (not b_next!61335) (not b_next!61331) b_and!170189 b_and!170201 b_and!170195 b_and!170191 (not b_next!61329) (not b_next!61343) (not b_next!61333) (not b_next!61337) (not b_next!61341) b_and!170197 b_and!170187 b_and!170193 b_and!170199)
