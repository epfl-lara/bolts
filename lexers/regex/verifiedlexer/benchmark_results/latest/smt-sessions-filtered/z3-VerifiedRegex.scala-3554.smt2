; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205994 () Bool)

(assert start!205994)

(declare-fun b!2106877 () Bool)

(declare-fun b_free!60597 () Bool)

(declare-fun b_next!61301 () Bool)

(assert (=> b!2106877 (= b_free!60597 (not b_next!61301))))

(declare-fun tp!639286 () Bool)

(declare-fun b_and!170159 () Bool)

(assert (=> b!2106877 (= tp!639286 b_and!170159)))

(declare-fun b!2106878 () Bool)

(declare-fun b_free!60599 () Bool)

(declare-fun b_next!61303 () Bool)

(assert (=> b!2106878 (= b_free!60599 (not b_next!61303))))

(declare-fun tp!639278 () Bool)

(declare-fun b_and!170161 () Bool)

(assert (=> b!2106878 (= tp!639278 b_and!170161)))

(declare-fun b!2106867 () Bool)

(declare-fun b_free!60601 () Bool)

(declare-fun b_next!61305 () Bool)

(assert (=> b!2106867 (= b_free!60601 (not b_next!61305))))

(declare-fun tp!639276 () Bool)

(declare-fun b_and!170163 () Bool)

(assert (=> b!2106867 (= tp!639276 b_and!170163)))

(declare-fun b!2106870 () Bool)

(declare-fun b_free!60603 () Bool)

(declare-fun b_next!61307 () Bool)

(assert (=> b!2106870 (= b_free!60603 (not b_next!61307))))

(declare-fun tp!639282 () Bool)

(declare-fun b_and!170165 () Bool)

(assert (=> b!2106870 (= tp!639282 b_and!170165)))

(declare-fun b!2106865 () Bool)

(declare-fun b_free!60605 () Bool)

(declare-fun b_next!61309 () Bool)

(assert (=> b!2106865 (= b_free!60605 (not b_next!61309))))

(declare-fun tp!639283 () Bool)

(declare-fun b_and!170167 () Bool)

(assert (=> b!2106865 (= tp!639283 b_and!170167)))

(declare-fun b_free!60607 () Bool)

(declare-fun b_next!61311 () Bool)

(assert (=> b!2106865 (= b_free!60607 (not b_next!61311))))

(declare-fun tp!639277 () Bool)

(declare-fun b_and!170169 () Bool)

(assert (=> b!2106865 (= tp!639277 b_and!170169)))

(declare-fun mapNonEmpty!10896 () Bool)

(declare-fun mapRes!10896 () Bool)

(declare-fun tp!639289 () Bool)

(declare-fun tp!639284 () Bool)

(assert (=> mapNonEmpty!10896 (= mapRes!10896 (and tp!639289 tp!639284))))

(declare-datatypes ((C!11296 0))(
  ( (C!11297 (val!6634 Int)) )
))
(declare-datatypes ((Regex!5575 0))(
  ( (ElementMatch!5575 (c!338917 C!11296)) (Concat!9855 (regOne!11662 Regex!5575) (regTwo!11662 Regex!5575)) (EmptyExpr!5575) (Star!5575 (reg!5904 Regex!5575)) (EmptyLang!5575) (Union!5575 (regOne!11663 Regex!5575) (regTwo!11663 Regex!5575)) )
))
(declare-datatypes ((List!23366 0))(
  ( (Nil!23282) (Cons!23282 (h!28683 Regex!5575) (t!195859 List!23366)) )
))
(declare-datatypes ((Context!2290 0))(
  ( (Context!2291 (exprs!1645 List!23366)) )
))
(declare-datatypes ((tuple3!2590 0))(
  ( (tuple3!2591 (_1!13039 Regex!5575) (_2!13039 Context!2290) (_3!1759 C!11296)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22560 0))(
  ( (tuple2!22561 (_1!13040 tuple3!2590) (_2!13040 (InoxSet Context!2290))) )
))
(declare-datatypes ((List!23367 0))(
  ( (Nil!23283) (Cons!23283 (h!28684 tuple2!22560) (t!195860 List!23367)) )
))
(declare-fun mapRest!10897 () (Array (_ BitVec 32) List!23367))

(declare-fun mapKey!10897 () (_ BitVec 32))

(declare-datatypes ((array!7788 0))(
  ( (array!7789 (arr!3452 (Array (_ BitVec 32) (_ BitVec 64))) (size!18168 (_ BitVec 32))) )
))
(declare-datatypes ((array!7790 0))(
  ( (array!7791 (arr!3453 (Array (_ BitVec 32) List!23367)) (size!18169 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4512 0))(
  ( (LongMapFixedSize!4513 (defaultEntry!2621 Int) (mask!6359 (_ BitVec 32)) (extraKeys!2504 (_ BitVec 32)) (zeroValue!2514 List!23367) (minValue!2514 List!23367) (_size!4563 (_ BitVec 32)) (_keys!2553 array!7788) (_values!2536 array!7790) (_vacant!2317 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8849 0))(
  ( (Cell!8850 (v!27830 LongMapFixedSize!4512)) )
))
(declare-datatypes ((MutLongMap!2256 0))(
  ( (LongMap!2256 (underlying!4707 Cell!8849)) (MutLongMapExt!2255 (__x!14900 Int)) )
))
(declare-datatypes ((Cell!8851 0))(
  ( (Cell!8852 (v!27831 MutLongMap!2256)) )
))
(declare-datatypes ((Hashable!2170 0))(
  ( (HashableExt!2169 (__x!14901 Int)) )
))
(declare-datatypes ((MutableMap!2170 0))(
  ( (MutableMapExt!2169 (__x!14902 Int)) (HashMap!2170 (underlying!4708 Cell!8851) (hashF!4093 Hashable!2170) (_size!4564 (_ BitVec 32)) (defaultValue!2332 Int)) )
))
(declare-datatypes ((CacheDown!1470 0))(
  ( (CacheDown!1471 (cache!2551 MutableMap!2170)) )
))
(declare-fun cacheDown!688 () CacheDown!1470)

(declare-fun mapValue!10896 () List!23367)

(assert (=> mapNonEmpty!10896 (= (arr!3453 (_values!2536 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))))) (store mapRest!10897 mapKey!10897 mapValue!10896))))

(declare-fun b!2106853 () Bool)

(declare-fun e!1339147 () Bool)

(declare-fun e!1339143 () Bool)

(assert (=> b!2106853 (= e!1339147 e!1339143)))

(declare-fun b!2106854 () Bool)

(declare-fun res!915820 () Bool)

(declare-fun e!1339150 () Bool)

(assert (=> b!2106854 (=> (not res!915820) (not e!1339150))))

(declare-datatypes ((List!23368 0))(
  ( (Nil!23284) (Cons!23284 (h!28685 C!11296) (t!195861 List!23368)) )
))
(declare-datatypes ((IArray!15453 0))(
  ( (IArray!15454 (innerList!7784 List!23368)) )
))
(declare-datatypes ((Conc!7724 0))(
  ( (Node!7724 (left!18154 Conc!7724) (right!18484 Conc!7724) (csize!15678 Int) (cheight!7935 Int)) (Leaf!11279 (xs!10666 IArray!15453) (csize!15679 Int)) (Empty!7724) )
))
(declare-datatypes ((BalanceConc!15210 0))(
  ( (BalanceConc!15211 (c!338918 Conc!7724)) )
))
(declare-datatypes ((List!23369 0))(
  ( (Nil!23285) (Cons!23285 (h!28686 (_ BitVec 16)) (t!195862 List!23369)) )
))
(declare-datatypes ((TokenValue!4280 0))(
  ( (FloatLiteralValue!8560 (text!30405 List!23369)) (TokenValueExt!4279 (__x!14903 Int)) (Broken!21400 (value!129717 List!23369)) (Object!4363) (End!4280) (Def!4280) (Underscore!4280) (Match!4280) (Else!4280) (Error!4280) (Case!4280) (If!4280) (Extends!4280) (Abstract!4280) (Class!4280) (Val!4280) (DelimiterValue!8560 (del!4340 List!23369)) (KeywordValue!4286 (value!129718 List!23369)) (CommentValue!8560 (value!129719 List!23369)) (WhitespaceValue!8560 (value!129720 List!23369)) (IndentationValue!4280 (value!129721 List!23369)) (String!26597) (Int32!4280) (Broken!21401 (value!129722 List!23369)) (Boolean!4281) (Unit!37474) (OperatorValue!4283 (op!4340 List!23369)) (IdentifierValue!8560 (value!129723 List!23369)) (IdentifierValue!8561 (value!129724 List!23369)) (WhitespaceValue!8561 (value!129725 List!23369)) (True!8560) (False!8560) (Broken!21402 (value!129726 List!23369)) (Broken!21403 (value!129727 List!23369)) (True!8561) (RightBrace!4280) (RightBracket!4280) (Colon!4280) (Null!4280) (Comma!4280) (LeftBracket!4280) (False!8561) (LeftBrace!4280) (ImaginaryLiteralValue!4280 (text!30406 List!23369)) (StringLiteralValue!12840 (value!129728 List!23369)) (EOFValue!4280 (value!129729 List!23369)) (IdentValue!4280 (value!129730 List!23369)) (DelimiterValue!8561 (value!129731 List!23369)) (DedentValue!4280 (value!129732 List!23369)) (NewLineValue!4280 (value!129733 List!23369)) (IntegerValue!12840 (value!129734 (_ BitVec 32)) (text!30407 List!23369)) (IntegerValue!12841 (value!129735 Int) (text!30408 List!23369)) (Times!4280) (Or!4280) (Equal!4280) (Minus!4280) (Broken!21404 (value!129736 List!23369)) (And!4280) (Div!4280) (LessEqual!4280) (Mod!4280) (Concat!9856) (Not!4280) (Plus!4280) (SpaceValue!4280 (value!129737 List!23369)) (IntegerValue!12842 (value!129738 Int) (text!30409 List!23369)) (StringLiteralValue!12841 (text!30410 List!23369)) (FloatLiteralValue!8561 (text!30411 List!23369)) (BytesLiteralValue!4280 (value!129739 List!23369)) (CommentValue!8561 (value!129740 List!23369)) (StringLiteralValue!12842 (value!129741 List!23369)) (ErrorTokenValue!4280 (msg!4341 List!23369)) )
))
(declare-datatypes ((String!26598 0))(
  ( (String!26599 (value!129742 String)) )
))
(declare-datatypes ((TokenValueInjection!8144 0))(
  ( (TokenValueInjection!8145 (toValue!5855 Int) (toChars!5714 Int)) )
))
(declare-datatypes ((Rule!8088 0))(
  ( (Rule!8089 (regex!4144 Regex!5575) (tag!4634 String!26598) (isSeparator!4144 Bool) (transformation!4144 TokenValueInjection!8144)) )
))
(declare-datatypes ((List!23370 0))(
  ( (Nil!23286) (Cons!23286 (h!28687 Rule!8088) (t!195863 List!23370)) )
))
(declare-fun rulesArg!349 () List!23370)

(declare-fun isEmpty!14283 (List!23370) Bool)

(assert (=> b!2106854 (= res!915820 (not (isEmpty!14283 rulesArg!349)))))

(declare-fun b!2106855 () Bool)

(declare-fun e!1339140 () Bool)

(declare-fun e!1339145 () Bool)

(assert (=> b!2106855 (= e!1339140 e!1339145)))

(declare-fun b!2106856 () Bool)

(declare-fun e!1339155 () Bool)

(declare-fun e!1339142 () Bool)

(assert (=> b!2106856 (= e!1339155 (not e!1339142))))

(declare-fun res!915816 () Bool)

(assert (=> b!2106856 (=> res!915816 e!1339142)))

(get-info :version)

(assert (=> b!2106856 (= res!915816 (or (and ((_ is Cons!23286) rulesArg!349) ((_ is Nil!23286) (t!195863 rulesArg!349))) (not ((_ is Cons!23286) rulesArg!349))))))

(declare-fun lt!791534 () List!23368)

(declare-fun isPrefix!2075 (List!23368 List!23368) Bool)

(assert (=> b!2106856 (isPrefix!2075 lt!791534 lt!791534)))

(declare-datatypes ((Unit!37475 0))(
  ( (Unit!37476) )
))
(declare-fun lt!791533 () Unit!37475)

(declare-fun lemmaIsPrefixRefl!1393 (List!23368 List!23368) Unit!37475)

(assert (=> b!2106856 (= lt!791533 (lemmaIsPrefixRefl!1393 lt!791534 lt!791534))))

(declare-fun mapNonEmpty!10897 () Bool)

(declare-fun mapRes!10897 () Bool)

(declare-fun tp!639280 () Bool)

(declare-fun tp!639285 () Bool)

(assert (=> mapNonEmpty!10897 (= mapRes!10897 (and tp!639280 tp!639285))))

(declare-datatypes ((tuple2!22562 0))(
  ( (tuple2!22563 (_1!13041 Context!2290) (_2!13041 C!11296)) )
))
(declare-datatypes ((tuple2!22564 0))(
  ( (tuple2!22565 (_1!13042 tuple2!22562) (_2!13042 (InoxSet Context!2290))) )
))
(declare-datatypes ((List!23371 0))(
  ( (Nil!23287) (Cons!23287 (h!28688 tuple2!22564) (t!195864 List!23371)) )
))
(declare-fun mapValue!10897 () List!23371)

(declare-fun mapKey!10896 () (_ BitVec 32))

(declare-datatypes ((array!7792 0))(
  ( (array!7793 (arr!3454 (Array (_ BitVec 32) List!23371)) (size!18170 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4514 0))(
  ( (LongMapFixedSize!4515 (defaultEntry!2622 Int) (mask!6360 (_ BitVec 32)) (extraKeys!2505 (_ BitVec 32)) (zeroValue!2515 List!23371) (minValue!2515 List!23371) (_size!4565 (_ BitVec 32)) (_keys!2554 array!7788) (_values!2537 array!7792) (_vacant!2318 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2171 0))(
  ( (HashableExt!2170 (__x!14904 Int)) )
))
(declare-datatypes ((Cell!8853 0))(
  ( (Cell!8854 (v!27832 LongMapFixedSize!4514)) )
))
(declare-datatypes ((MutLongMap!2257 0))(
  ( (LongMap!2257 (underlying!4709 Cell!8853)) (MutLongMapExt!2256 (__x!14905 Int)) )
))
(declare-datatypes ((Cell!8855 0))(
  ( (Cell!8856 (v!27833 MutLongMap!2257)) )
))
(declare-datatypes ((MutableMap!2171 0))(
  ( (MutableMapExt!2170 (__x!14906 Int)) (HashMap!2171 (underlying!4710 Cell!8855) (hashF!4094 Hashable!2171) (_size!4566 (_ BitVec 32)) (defaultValue!2333 Int)) )
))
(declare-datatypes ((CacheUp!1464 0))(
  ( (CacheUp!1465 (cache!2552 MutableMap!2171)) )
))
(declare-fun cacheUp!675 () CacheUp!1464)

(declare-fun mapRest!10896 () (Array (_ BitVec 32) List!23371))

(assert (=> mapNonEmpty!10897 (= (arr!3454 (_values!2537 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))))) (store mapRest!10896 mapKey!10896 mapValue!10897))))

(declare-fun b!2106857 () Bool)

(declare-fun e!1339144 () Bool)

(declare-fun e!1339141 () Bool)

(assert (=> b!2106857 (= e!1339144 e!1339141)))

(declare-fun mapIsEmpty!10896 () Bool)

(assert (=> mapIsEmpty!10896 mapRes!10896))

(declare-fun b!2106858 () Bool)

(declare-fun res!915817 () Bool)

(assert (=> b!2106858 (=> (not res!915817) (not e!1339150))))

(declare-datatypes ((LexerInterface!3741 0))(
  ( (LexerInterfaceExt!3738 (__x!14907 Int)) (Lexer!3739) )
))
(declare-fun thiss!15689 () LexerInterface!3741)

(declare-fun rulesValidInductive!1458 (LexerInterface!3741 List!23370) Bool)

(assert (=> b!2106858 (= res!915817 (rulesValidInductive!1458 thiss!15689 rulesArg!349))))

(declare-fun b!2106859 () Bool)

(declare-fun e!1339154 () Bool)

(assert (=> b!2106859 (= e!1339154 e!1339144)))

(declare-fun b!2106860 () Bool)

(declare-fun e!1339160 () Bool)

(declare-fun tp!639288 () Bool)

(assert (=> b!2106860 (= e!1339160 (and tp!639288 mapRes!10897))))

(declare-fun condMapEmpty!10896 () Bool)

(declare-fun mapDefault!10896 () List!23371)

(assert (=> b!2106860 (= condMapEmpty!10896 (= (arr!3454 (_values!2537 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23371)) mapDefault!10896)))))

(declare-fun b!2106861 () Bool)

(declare-fun e!1339159 () Bool)

(declare-fun totalInput!482 () BalanceConc!15210)

(declare-fun tp!639293 () Bool)

(declare-fun inv!30811 (Conc!7724) Bool)

(assert (=> b!2106861 (= e!1339159 (and (inv!30811 (c!338918 totalInput!482)) tp!639293))))

(declare-fun b!2106862 () Bool)

(declare-fun e!1339158 () Bool)

(declare-fun e!1339137 () Bool)

(declare-fun lt!791530 () MutLongMap!2257)

(assert (=> b!2106862 (= e!1339158 (and e!1339137 ((_ is LongMap!2257) lt!791530)))))

(assert (=> b!2106862 (= lt!791530 (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))))

(declare-fun e!1339151 () Bool)

(declare-fun b!2106863 () Bool)

(declare-fun tp!639292 () Bool)

(declare-fun e!1339156 () Bool)

(declare-fun inv!30809 (String!26598) Bool)

(declare-fun inv!30812 (TokenValueInjection!8144) Bool)

(assert (=> b!2106863 (= e!1339151 (and tp!639292 (inv!30809 (tag!4634 (h!28687 rulesArg!349))) (inv!30812 (transformation!4144 (h!28687 rulesArg!349))) e!1339156))))

(declare-fun b!2106864 () Bool)

(declare-fun res!915818 () Bool)

(assert (=> b!2106864 (=> (not res!915818) (not e!1339155))))

(declare-fun valid!1788 (CacheUp!1464) Bool)

(assert (=> b!2106864 (= res!915818 (valid!1788 cacheUp!675))))

(assert (=> b!2106865 (= e!1339156 (and tp!639283 tp!639277))))

(declare-fun b!2106866 () Bool)

(declare-fun e!1339139 () Bool)

(declare-fun input!1444 () BalanceConc!15210)

(declare-fun tp!639290 () Bool)

(assert (=> b!2106866 (= e!1339139 (and (inv!30811 (c!338918 input!1444)) tp!639290))))

(declare-fun e!1339152 () Bool)

(assert (=> b!2106867 (= e!1339145 (and e!1339152 tp!639276))))

(declare-fun res!915821 () Bool)

(assert (=> start!205994 (=> (not res!915821) (not e!1339150))))

(assert (=> start!205994 (= res!915821 ((_ is Lexer!3739) thiss!15689))))

(assert (=> start!205994 e!1339150))

(declare-fun e!1339136 () Bool)

(assert (=> start!205994 e!1339136))

(declare-fun inv!30813 (BalanceConc!15210) Bool)

(assert (=> start!205994 (and (inv!30813 totalInput!482) e!1339159)))

(assert (=> start!205994 true))

(assert (=> start!205994 (and (inv!30813 input!1444) e!1339139)))

(declare-fun inv!30814 (CacheUp!1464) Bool)

(assert (=> start!205994 (and (inv!30814 cacheUp!675) e!1339147)))

(declare-fun inv!30815 (CacheDown!1470) Bool)

(assert (=> start!205994 (and (inv!30815 cacheDown!688) e!1339140)))

(declare-fun b!2106868 () Bool)

(declare-fun res!915822 () Bool)

(assert (=> b!2106868 (=> (not res!915822) (not e!1339155))))

(declare-fun valid!1789 (CacheDown!1470) Bool)

(assert (=> b!2106868 (= res!915822 (valid!1789 cacheDown!688))))

(declare-fun b!2106869 () Bool)

(declare-fun e!1339153 () Bool)

(declare-fun tp!639279 () Bool)

(assert (=> b!2106869 (= e!1339153 (and tp!639279 mapRes!10896))))

(declare-fun condMapEmpty!10897 () Bool)

(declare-fun mapDefault!10897 () List!23367)

(assert (=> b!2106869 (= condMapEmpty!10897 (= (arr!3453 (_values!2536 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23367)) mapDefault!10897)))))

(declare-fun tp!639275 () Bool)

(declare-fun tp!639281 () Bool)

(declare-fun array_inv!2483 (array!7788) Bool)

(declare-fun array_inv!2484 (array!7790) Bool)

(assert (=> b!2106870 (= e!1339141 (and tp!639282 tp!639275 tp!639281 (array_inv!2483 (_keys!2553 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))))) (array_inv!2484 (_values!2536 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))))) e!1339153))))

(declare-fun b!2106871 () Bool)

(declare-fun e!1339157 () Bool)

(declare-fun e!1339148 () Bool)

(assert (=> b!2106871 (= e!1339157 e!1339148)))

(declare-fun b!2106872 () Bool)

(assert (=> b!2106872 (= e!1339150 e!1339155)))

(declare-fun res!915819 () Bool)

(assert (=> b!2106872 (=> (not res!915819) (not e!1339155))))

(declare-fun isSuffix!561 (List!23368 List!23368) Bool)

(declare-fun list!9448 (BalanceConc!15210) List!23368)

(assert (=> b!2106872 (= res!915819 (isSuffix!561 lt!791534 (list!9448 totalInput!482)))))

(assert (=> b!2106872 (= lt!791534 (list!9448 input!1444))))

(declare-fun mapIsEmpty!10897 () Bool)

(assert (=> mapIsEmpty!10897 mapRes!10897))

(declare-fun b!2106873 () Bool)

(assert (=> b!2106873 (= e!1339137 e!1339157)))

(declare-fun b!2106874 () Bool)

(declare-fun size!18171 (List!23370) Int)

(assert (=> b!2106874 (= e!1339142 (< (size!18171 (t!195863 rulesArg!349)) (size!18171 rulesArg!349)))))

(declare-datatypes ((Token!7800 0))(
  ( (Token!7801 (value!129743 TokenValue!4280) (rule!6456 Rule!8088) (size!18172 Int) (originalCharacters!4931 List!23368)) )
))
(declare-datatypes ((tuple2!22566 0))(
  ( (tuple2!22567 (_1!13043 Token!7800) (_2!13043 BalanceConc!15210)) )
))
(declare-datatypes ((Option!4854 0))(
  ( (None!4853) (Some!4853 (v!27834 tuple2!22566)) )
))
(declare-datatypes ((tuple3!2592 0))(
  ( (tuple3!2593 (_1!13044 Option!4854) (_2!13044 CacheUp!1464) (_3!1760 CacheDown!1470)) )
))
(declare-fun lt!791532 () tuple3!2592)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!70 (LexerInterface!3741 Rule!8088 BalanceConc!15210 BalanceConc!15210 CacheUp!1464 CacheDown!1470) tuple3!2592)

(assert (=> b!2106874 (= lt!791532 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!70 thiss!15689 (h!28687 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun b!2106875 () Bool)

(declare-fun tp!639287 () Bool)

(assert (=> b!2106875 (= e!1339136 (and e!1339151 tp!639287))))

(declare-fun b!2106876 () Bool)

(declare-fun lt!791531 () MutLongMap!2256)

(assert (=> b!2106876 (= e!1339152 (and e!1339154 ((_ is LongMap!2256) lt!791531)))))

(assert (=> b!2106876 (= lt!791531 (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))))

(assert (=> b!2106877 (= e!1339143 (and e!1339158 tp!639286))))

(declare-fun tp!639291 () Bool)

(declare-fun tp!639294 () Bool)

(declare-fun array_inv!2485 (array!7792) Bool)

(assert (=> b!2106878 (= e!1339148 (and tp!639278 tp!639294 tp!639291 (array_inv!2483 (_keys!2554 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))))) (array_inv!2485 (_values!2537 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))))) e!1339160))))

(assert (= (and start!205994 res!915821) b!2106858))

(assert (= (and b!2106858 res!915817) b!2106854))

(assert (= (and b!2106854 res!915820) b!2106872))

(assert (= (and b!2106872 res!915819) b!2106864))

(assert (= (and b!2106864 res!915818) b!2106868))

(assert (= (and b!2106868 res!915822) b!2106856))

(assert (= (and b!2106856 (not res!915816)) b!2106874))

(assert (= b!2106863 b!2106865))

(assert (= b!2106875 b!2106863))

(assert (= (and start!205994 ((_ is Cons!23286) rulesArg!349)) b!2106875))

(assert (= start!205994 b!2106861))

(assert (= start!205994 b!2106866))

(assert (= (and b!2106860 condMapEmpty!10896) mapIsEmpty!10897))

(assert (= (and b!2106860 (not condMapEmpty!10896)) mapNonEmpty!10897))

(assert (= b!2106878 b!2106860))

(assert (= b!2106871 b!2106878))

(assert (= b!2106873 b!2106871))

(assert (= (and b!2106862 ((_ is LongMap!2257) (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))) b!2106873))

(assert (= b!2106877 b!2106862))

(assert (= (and b!2106853 ((_ is HashMap!2171) (cache!2552 cacheUp!675))) b!2106877))

(assert (= start!205994 b!2106853))

(assert (= (and b!2106869 condMapEmpty!10897) mapIsEmpty!10896))

(assert (= (and b!2106869 (not condMapEmpty!10897)) mapNonEmpty!10896))

(assert (= b!2106870 b!2106869))

(assert (= b!2106857 b!2106870))

(assert (= b!2106859 b!2106857))

(assert (= (and b!2106876 ((_ is LongMap!2256) (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))) b!2106859))

(assert (= b!2106867 b!2106876))

(assert (= (and b!2106855 ((_ is HashMap!2170) (cache!2551 cacheDown!688))) b!2106867))

(assert (= start!205994 b!2106855))

(declare-fun m!2564985 () Bool)

(assert (=> b!2106866 m!2564985))

(declare-fun m!2564987 () Bool)

(assert (=> mapNonEmpty!10896 m!2564987))

(declare-fun m!2564989 () Bool)

(assert (=> b!2106878 m!2564989))

(declare-fun m!2564991 () Bool)

(assert (=> b!2106878 m!2564991))

(declare-fun m!2564993 () Bool)

(assert (=> b!2106856 m!2564993))

(declare-fun m!2564995 () Bool)

(assert (=> b!2106856 m!2564995))

(declare-fun m!2564997 () Bool)

(assert (=> b!2106858 m!2564997))

(declare-fun m!2564999 () Bool)

(assert (=> b!2106872 m!2564999))

(assert (=> b!2106872 m!2564999))

(declare-fun m!2565001 () Bool)

(assert (=> b!2106872 m!2565001))

(declare-fun m!2565003 () Bool)

(assert (=> b!2106872 m!2565003))

(declare-fun m!2565005 () Bool)

(assert (=> b!2106864 m!2565005))

(declare-fun m!2565007 () Bool)

(assert (=> b!2106874 m!2565007))

(declare-fun m!2565009 () Bool)

(assert (=> b!2106874 m!2565009))

(declare-fun m!2565011 () Bool)

(assert (=> b!2106874 m!2565011))

(declare-fun m!2565013 () Bool)

(assert (=> b!2106863 m!2565013))

(declare-fun m!2565015 () Bool)

(assert (=> b!2106863 m!2565015))

(declare-fun m!2565017 () Bool)

(assert (=> start!205994 m!2565017))

(declare-fun m!2565019 () Bool)

(assert (=> start!205994 m!2565019))

(declare-fun m!2565021 () Bool)

(assert (=> start!205994 m!2565021))

(declare-fun m!2565023 () Bool)

(assert (=> start!205994 m!2565023))

(declare-fun m!2565025 () Bool)

(assert (=> b!2106868 m!2565025))

(declare-fun m!2565027 () Bool)

(assert (=> b!2106870 m!2565027))

(declare-fun m!2565029 () Bool)

(assert (=> b!2106870 m!2565029))

(declare-fun m!2565031 () Bool)

(assert (=> b!2106861 m!2565031))

(declare-fun m!2565033 () Bool)

(assert (=> b!2106854 m!2565033))

(declare-fun m!2565035 () Bool)

(assert (=> mapNonEmpty!10897 m!2565035))

(check-sat (not b_next!61301) (not b!2106868) b_and!170169 (not b!2106858) (not b!2106860) b_and!170167 (not b!2106875) (not b!2106863) (not b_next!61307) (not b!2106861) (not b!2106864) (not b!2106866) (not start!205994) (not b!2106878) (not b!2106870) (not b_next!61311) b_and!170161 (not b_next!61309) (not mapNonEmpty!10897) (not mapNonEmpty!10896) (not b!2106874) (not b!2106856) b_and!170159 (not b!2106872) (not b!2106869) b_and!170163 (not b_next!61305) (not b_next!61303) b_and!170165 (not b!2106854))
(check-sat (not b_next!61301) b_and!170169 b_and!170167 (not b_next!61307) b_and!170159 b_and!170165 (not b_next!61311) b_and!170161 (not b_next!61309) b_and!170163 (not b_next!61305) (not b_next!61303))
(get-model)

(declare-fun d!641837 () Bool)

(assert (=> d!641837 true))

(declare-fun lt!791537 () Bool)

(declare-fun lambda!78157 () Int)

(declare-fun forall!4837 (List!23370 Int) Bool)

(assert (=> d!641837 (= lt!791537 (forall!4837 rulesArg!349 lambda!78157))))

(declare-fun e!1339165 () Bool)

(assert (=> d!641837 (= lt!791537 e!1339165)))

(declare-fun res!915832 () Bool)

(assert (=> d!641837 (=> res!915832 e!1339165)))

(assert (=> d!641837 (= res!915832 (not ((_ is Cons!23286) rulesArg!349)))))

(assert (=> d!641837 (= (rulesValidInductive!1458 thiss!15689 rulesArg!349) lt!791537)))

(declare-fun b!2106883 () Bool)

(declare-fun e!1339166 () Bool)

(assert (=> b!2106883 (= e!1339165 e!1339166)))

(declare-fun res!915831 () Bool)

(assert (=> b!2106883 (=> (not res!915831) (not e!1339166))))

(declare-fun ruleValid!1268 (LexerInterface!3741 Rule!8088) Bool)

(assert (=> b!2106883 (= res!915831 (ruleValid!1268 thiss!15689 (h!28687 rulesArg!349)))))

(declare-fun b!2106884 () Bool)

(assert (=> b!2106884 (= e!1339166 (rulesValidInductive!1458 thiss!15689 (t!195863 rulesArg!349)))))

(assert (= (and d!641837 (not res!915832)) b!2106883))

(assert (= (and b!2106883 res!915831) b!2106884))

(declare-fun m!2565037 () Bool)

(assert (=> d!641837 m!2565037))

(declare-fun m!2565039 () Bool)

(assert (=> b!2106883 m!2565039))

(declare-fun m!2565041 () Bool)

(assert (=> b!2106884 m!2565041))

(assert (=> b!2106858 d!641837))

(declare-fun d!641839 () Bool)

(declare-fun isBalanced!2429 (Conc!7724) Bool)

(assert (=> d!641839 (= (inv!30813 totalInput!482) (isBalanced!2429 (c!338918 totalInput!482)))))

(declare-fun bs!440963 () Bool)

(assert (= bs!440963 d!641839))

(declare-fun m!2565043 () Bool)

(assert (=> bs!440963 m!2565043))

(assert (=> start!205994 d!641839))

(declare-fun d!641841 () Bool)

(assert (=> d!641841 (= (inv!30813 input!1444) (isBalanced!2429 (c!338918 input!1444)))))

(declare-fun bs!440964 () Bool)

(assert (= bs!440964 d!641841))

(declare-fun m!2565045 () Bool)

(assert (=> bs!440964 m!2565045))

(assert (=> start!205994 d!641841))

(declare-fun d!641843 () Bool)

(declare-fun res!915835 () Bool)

(declare-fun e!1339169 () Bool)

(assert (=> d!641843 (=> (not res!915835) (not e!1339169))))

(assert (=> d!641843 (= res!915835 ((_ is HashMap!2171) (cache!2552 cacheUp!675)))))

(assert (=> d!641843 (= (inv!30814 cacheUp!675) e!1339169)))

(declare-fun b!2106889 () Bool)

(declare-fun validCacheMapUp!225 (MutableMap!2171) Bool)

(assert (=> b!2106889 (= e!1339169 (validCacheMapUp!225 (cache!2552 cacheUp!675)))))

(assert (= (and d!641843 res!915835) b!2106889))

(declare-fun m!2565047 () Bool)

(assert (=> b!2106889 m!2565047))

(assert (=> start!205994 d!641843))

(declare-fun d!641845 () Bool)

(declare-fun res!915838 () Bool)

(declare-fun e!1339172 () Bool)

(assert (=> d!641845 (=> (not res!915838) (not e!1339172))))

(assert (=> d!641845 (= res!915838 ((_ is HashMap!2170) (cache!2551 cacheDown!688)))))

(assert (=> d!641845 (= (inv!30815 cacheDown!688) e!1339172)))

(declare-fun b!2106892 () Bool)

(declare-fun validCacheMapDown!223 (MutableMap!2170) Bool)

(assert (=> b!2106892 (= e!1339172 (validCacheMapDown!223 (cache!2551 cacheDown!688)))))

(assert (= (and d!641845 res!915838) b!2106892))

(declare-fun m!2565049 () Bool)

(assert (=> b!2106892 m!2565049))

(assert (=> start!205994 d!641845))

(declare-fun d!641847 () Bool)

(assert (=> d!641847 (= (array_inv!2483 (_keys!2553 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))))) (bvsge (size!18168 (_keys!2553 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106870 d!641847))

(declare-fun d!641849 () Bool)

(assert (=> d!641849 (= (array_inv!2484 (_values!2536 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))))) (bvsge (size!18169 (_values!2536 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106870 d!641849))

(declare-fun d!641851 () Bool)

(declare-fun e!1339175 () Bool)

(assert (=> d!641851 e!1339175))

(declare-fun res!915841 () Bool)

(assert (=> d!641851 (=> res!915841 e!1339175)))

(declare-fun lt!791540 () Bool)

(assert (=> d!641851 (= res!915841 (not lt!791540))))

(declare-fun drop!1164 (List!23368 Int) List!23368)

(declare-fun size!18173 (List!23368) Int)

(assert (=> d!641851 (= lt!791540 (= lt!791534 (drop!1164 (list!9448 totalInput!482) (- (size!18173 (list!9448 totalInput!482)) (size!18173 lt!791534)))))))

(assert (=> d!641851 (= (isSuffix!561 lt!791534 (list!9448 totalInput!482)) lt!791540)))

(declare-fun b!2106895 () Bool)

(assert (=> b!2106895 (= e!1339175 (>= (size!18173 (list!9448 totalInput!482)) (size!18173 lt!791534)))))

(assert (= (and d!641851 (not res!915841)) b!2106895))

(assert (=> d!641851 m!2564999))

(declare-fun m!2565051 () Bool)

(assert (=> d!641851 m!2565051))

(declare-fun m!2565053 () Bool)

(assert (=> d!641851 m!2565053))

(assert (=> d!641851 m!2564999))

(declare-fun m!2565055 () Bool)

(assert (=> d!641851 m!2565055))

(assert (=> b!2106895 m!2564999))

(assert (=> b!2106895 m!2565051))

(assert (=> b!2106895 m!2565053))

(assert (=> b!2106872 d!641851))

(declare-fun d!641853 () Bool)

(declare-fun list!9449 (Conc!7724) List!23368)

(assert (=> d!641853 (= (list!9448 totalInput!482) (list!9449 (c!338918 totalInput!482)))))

(declare-fun bs!440965 () Bool)

(assert (= bs!440965 d!641853))

(declare-fun m!2565057 () Bool)

(assert (=> bs!440965 m!2565057))

(assert (=> b!2106872 d!641853))

(declare-fun d!641855 () Bool)

(assert (=> d!641855 (= (list!9448 input!1444) (list!9449 (c!338918 input!1444)))))

(declare-fun bs!440966 () Bool)

(assert (= bs!440966 d!641855))

(declare-fun m!2565059 () Bool)

(assert (=> bs!440966 m!2565059))

(assert (=> b!2106872 d!641855))

(declare-fun d!641857 () Bool)

(declare-fun c!338921 () Bool)

(assert (=> d!641857 (= c!338921 ((_ is Node!7724) (c!338918 totalInput!482)))))

(declare-fun e!1339180 () Bool)

(assert (=> d!641857 (= (inv!30811 (c!338918 totalInput!482)) e!1339180)))

(declare-fun b!2106902 () Bool)

(declare-fun inv!30816 (Conc!7724) Bool)

(assert (=> b!2106902 (= e!1339180 (inv!30816 (c!338918 totalInput!482)))))

(declare-fun b!2106903 () Bool)

(declare-fun e!1339181 () Bool)

(assert (=> b!2106903 (= e!1339180 e!1339181)))

(declare-fun res!915844 () Bool)

(assert (=> b!2106903 (= res!915844 (not ((_ is Leaf!11279) (c!338918 totalInput!482))))))

(assert (=> b!2106903 (=> res!915844 e!1339181)))

(declare-fun b!2106904 () Bool)

(declare-fun inv!30817 (Conc!7724) Bool)

(assert (=> b!2106904 (= e!1339181 (inv!30817 (c!338918 totalInput!482)))))

(assert (= (and d!641857 c!338921) b!2106902))

(assert (= (and d!641857 (not c!338921)) b!2106903))

(assert (= (and b!2106903 (not res!915844)) b!2106904))

(declare-fun m!2565061 () Bool)

(assert (=> b!2106902 m!2565061))

(declare-fun m!2565063 () Bool)

(assert (=> b!2106904 m!2565063))

(assert (=> b!2106861 d!641857))

(declare-fun d!641859 () Bool)

(assert (=> d!641859 (= (inv!30809 (tag!4634 (h!28687 rulesArg!349))) (= (mod (str.len (value!129742 (tag!4634 (h!28687 rulesArg!349)))) 2) 0))))

(assert (=> b!2106863 d!641859))

(declare-fun d!641861 () Bool)

(declare-fun res!915847 () Bool)

(declare-fun e!1339184 () Bool)

(assert (=> d!641861 (=> (not res!915847) (not e!1339184))))

(declare-fun semiInverseModEq!1655 (Int Int) Bool)

(assert (=> d!641861 (= res!915847 (semiInverseModEq!1655 (toChars!5714 (transformation!4144 (h!28687 rulesArg!349))) (toValue!5855 (transformation!4144 (h!28687 rulesArg!349)))))))

(assert (=> d!641861 (= (inv!30812 (transformation!4144 (h!28687 rulesArg!349))) e!1339184)))

(declare-fun b!2106907 () Bool)

(declare-fun equivClasses!1582 (Int Int) Bool)

(assert (=> b!2106907 (= e!1339184 (equivClasses!1582 (toChars!5714 (transformation!4144 (h!28687 rulesArg!349))) (toValue!5855 (transformation!4144 (h!28687 rulesArg!349)))))))

(assert (= (and d!641861 res!915847) b!2106907))

(declare-fun m!2565065 () Bool)

(assert (=> d!641861 m!2565065))

(declare-fun m!2565067 () Bool)

(assert (=> b!2106907 m!2565067))

(assert (=> b!2106863 d!641861))

(declare-fun d!641863 () Bool)

(assert (=> d!641863 (= (isEmpty!14283 rulesArg!349) ((_ is Nil!23286) rulesArg!349))))

(assert (=> b!2106854 d!641863))

(declare-fun d!641865 () Bool)

(declare-fun lt!791543 () Int)

(assert (=> d!641865 (>= lt!791543 0)))

(declare-fun e!1339187 () Int)

(assert (=> d!641865 (= lt!791543 e!1339187)))

(declare-fun c!338924 () Bool)

(assert (=> d!641865 (= c!338924 ((_ is Nil!23286) (t!195863 rulesArg!349)))))

(assert (=> d!641865 (= (size!18171 (t!195863 rulesArg!349)) lt!791543)))

(declare-fun b!2106912 () Bool)

(assert (=> b!2106912 (= e!1339187 0)))

(declare-fun b!2106913 () Bool)

(assert (=> b!2106913 (= e!1339187 (+ 1 (size!18171 (t!195863 (t!195863 rulesArg!349)))))))

(assert (= (and d!641865 c!338924) b!2106912))

(assert (= (and d!641865 (not c!338924)) b!2106913))

(declare-fun m!2565069 () Bool)

(assert (=> b!2106913 m!2565069))

(assert (=> b!2106874 d!641865))

(declare-fun d!641867 () Bool)

(declare-fun lt!791544 () Int)

(assert (=> d!641867 (>= lt!791544 0)))

(declare-fun e!1339188 () Int)

(assert (=> d!641867 (= lt!791544 e!1339188)))

(declare-fun c!338925 () Bool)

(assert (=> d!641867 (= c!338925 ((_ is Nil!23286) rulesArg!349))))

(assert (=> d!641867 (= (size!18171 rulesArg!349) lt!791544)))

(declare-fun b!2106914 () Bool)

(assert (=> b!2106914 (= e!1339188 0)))

(declare-fun b!2106915 () Bool)

(assert (=> b!2106915 (= e!1339188 (+ 1 (size!18171 (t!195863 rulesArg!349))))))

(assert (= (and d!641867 c!338925) b!2106914))

(assert (= (and d!641867 (not c!338925)) b!2106915))

(assert (=> b!2106915 m!2565007))

(assert (=> b!2106874 d!641867))

(declare-fun b!2106926 () Bool)

(declare-fun e!1339196 () Option!4854)

(declare-datatypes ((tuple2!22568 0))(
  ( (tuple2!22569 (_1!13045 BalanceConc!15210) (_2!13045 BalanceConc!15210)) )
))
(declare-datatypes ((tuple3!2594 0))(
  ( (tuple3!2595 (_1!13046 tuple2!22568) (_2!13046 CacheUp!1464) (_3!1761 CacheDown!1470)) )
))
(declare-fun lt!791557 () tuple3!2594)

(declare-fun apply!5897 (TokenValueInjection!8144 BalanceConc!15210) TokenValue!4280)

(declare-fun size!18174 (BalanceConc!15210) Int)

(assert (=> b!2106926 (= e!1339196 (Some!4853 (tuple2!22567 (Token!7801 (apply!5897 (transformation!4144 (h!28687 rulesArg!349)) (_1!13045 (_1!13046 lt!791557))) (h!28687 rulesArg!349) (size!18174 (_1!13045 (_1!13046 lt!791557))) (list!9448 (_1!13045 (_1!13046 lt!791557)))) (_2!13045 (_1!13046 lt!791557)))))))

(declare-fun lt!791562 () List!23368)

(assert (=> b!2106926 (= lt!791562 (list!9448 input!1444))))

(declare-fun lt!791560 () Unit!37475)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!573 (Regex!5575 List!23368) Unit!37475)

(assert (=> b!2106926 (= lt!791560 (longestMatchIsAcceptedByMatchOrIsEmpty!573 (regex!4144 (h!28687 rulesArg!349)) lt!791562))))

(declare-fun res!915854 () Bool)

(declare-fun isEmpty!14284 (List!23368) Bool)

(declare-datatypes ((tuple2!22570 0))(
  ( (tuple2!22571 (_1!13047 List!23368) (_2!13047 List!23368)) )
))
(declare-fun findLongestMatchInner!589 (Regex!5575 List!23368 Int List!23368 List!23368 Int) tuple2!22570)

(assert (=> b!2106926 (= res!915854 (isEmpty!14284 (_1!13047 (findLongestMatchInner!589 (regex!4144 (h!28687 rulesArg!349)) Nil!23284 (size!18173 Nil!23284) lt!791562 lt!791562 (size!18173 lt!791562)))))))

(declare-fun e!1339195 () Bool)

(assert (=> b!2106926 (=> res!915854 e!1339195)))

(assert (=> b!2106926 e!1339195))

(declare-fun lt!791561 () Unit!37475)

(assert (=> b!2106926 (= lt!791561 lt!791560)))

(declare-fun lt!791559 () Unit!37475)

(declare-fun lemmaSemiInverse!987 (TokenValueInjection!8144 BalanceConc!15210) Unit!37475)

(assert (=> b!2106926 (= lt!791559 (lemmaSemiInverse!987 (transformation!4144 (h!28687 rulesArg!349)) (_1!13045 (_1!13046 lt!791557))))))

(declare-fun d!641869 () Bool)

(declare-fun e!1339197 () Bool)

(assert (=> d!641869 e!1339197))

(declare-fun res!915856 () Bool)

(assert (=> d!641869 (=> (not res!915856) (not e!1339197))))

(declare-fun lt!791558 () tuple3!2592)

(declare-fun maxPrefixOneRuleZipperSequenceV2!175 (LexerInterface!3741 Rule!8088 BalanceConc!15210 BalanceConc!15210) Option!4854)

(assert (=> d!641869 (= res!915856 (= (_1!13044 lt!791558) (maxPrefixOneRuleZipperSequenceV2!175 thiss!15689 (h!28687 rulesArg!349) input!1444 totalInput!482)))))

(assert (=> d!641869 (= lt!791558 (tuple3!2593 e!1339196 (_2!13046 lt!791557) (_3!1761 lt!791557)))))

(declare-fun c!338928 () Bool)

(declare-fun isEmpty!14285 (BalanceConc!15210) Bool)

(assert (=> d!641869 (= c!338928 (isEmpty!14285 (_1!13045 (_1!13046 lt!791557))))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!32 (Regex!5575 BalanceConc!15210 BalanceConc!15210 CacheUp!1464 CacheDown!1470) tuple3!2594)

(assert (=> d!641869 (= lt!791557 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!32 (regex!4144 (h!28687 rulesArg!349)) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(assert (=> d!641869 (ruleValid!1268 thiss!15689 (h!28687 rulesArg!349))))

(assert (=> d!641869 (= (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!70 thiss!15689 (h!28687 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688) lt!791558)))

(declare-fun b!2106927 () Bool)

(assert (=> b!2106927 (= e!1339196 None!4853)))

(declare-fun b!2106928 () Bool)

(declare-fun res!915855 () Bool)

(assert (=> b!2106928 (=> (not res!915855) (not e!1339197))))

(assert (=> b!2106928 (= res!915855 (valid!1788 (_2!13044 lt!791558)))))

(declare-fun b!2106929 () Bool)

(assert (=> b!2106929 (= e!1339197 (valid!1789 (_3!1760 lt!791558)))))

(declare-fun b!2106930 () Bool)

(declare-fun matchR!2723 (Regex!5575 List!23368) Bool)

(assert (=> b!2106930 (= e!1339195 (matchR!2723 (regex!4144 (h!28687 rulesArg!349)) (_1!13047 (findLongestMatchInner!589 (regex!4144 (h!28687 rulesArg!349)) Nil!23284 (size!18173 Nil!23284) lt!791562 lt!791562 (size!18173 lt!791562)))))))

(assert (= (and d!641869 c!338928) b!2106927))

(assert (= (and d!641869 (not c!338928)) b!2106926))

(assert (= (and b!2106926 (not res!915854)) b!2106930))

(assert (= (and d!641869 res!915856) b!2106928))

(assert (= (and b!2106928 res!915855) b!2106929))

(declare-fun m!2565071 () Bool)

(assert (=> b!2106929 m!2565071))

(declare-fun m!2565073 () Bool)

(assert (=> d!641869 m!2565073))

(declare-fun m!2565075 () Bool)

(assert (=> d!641869 m!2565075))

(declare-fun m!2565077 () Bool)

(assert (=> d!641869 m!2565077))

(assert (=> d!641869 m!2565039))

(declare-fun m!2565079 () Bool)

(assert (=> b!2106926 m!2565079))

(declare-fun m!2565081 () Bool)

(assert (=> b!2106926 m!2565081))

(assert (=> b!2106926 m!2565003))

(assert (=> b!2106926 m!2565079))

(declare-fun m!2565083 () Bool)

(assert (=> b!2106926 m!2565083))

(declare-fun m!2565085 () Bool)

(assert (=> b!2106926 m!2565085))

(assert (=> b!2106926 m!2565083))

(declare-fun m!2565087 () Bool)

(assert (=> b!2106926 m!2565087))

(declare-fun m!2565089 () Bool)

(assert (=> b!2106926 m!2565089))

(declare-fun m!2565091 () Bool)

(assert (=> b!2106926 m!2565091))

(declare-fun m!2565093 () Bool)

(assert (=> b!2106926 m!2565093))

(declare-fun m!2565095 () Bool)

(assert (=> b!2106926 m!2565095))

(declare-fun m!2565097 () Bool)

(assert (=> b!2106928 m!2565097))

(assert (=> b!2106930 m!2565079))

(assert (=> b!2106930 m!2565083))

(assert (=> b!2106930 m!2565079))

(assert (=> b!2106930 m!2565083))

(assert (=> b!2106930 m!2565085))

(declare-fun m!2565099 () Bool)

(assert (=> b!2106930 m!2565099))

(assert (=> b!2106874 d!641869))

(declare-fun d!641871 () Bool)

(assert (=> d!641871 (= (valid!1788 cacheUp!675) (validCacheMapUp!225 (cache!2552 cacheUp!675)))))

(declare-fun bs!440967 () Bool)

(assert (= bs!440967 d!641871))

(assert (=> bs!440967 m!2565047))

(assert (=> b!2106864 d!641871))

(declare-fun d!641873 () Bool)

(declare-fun e!1339205 () Bool)

(assert (=> d!641873 e!1339205))

(declare-fun res!915868 () Bool)

(assert (=> d!641873 (=> res!915868 e!1339205)))

(declare-fun lt!791565 () Bool)

(assert (=> d!641873 (= res!915868 (not lt!791565))))

(declare-fun e!1339204 () Bool)

(assert (=> d!641873 (= lt!791565 e!1339204)))

(declare-fun res!915867 () Bool)

(assert (=> d!641873 (=> res!915867 e!1339204)))

(assert (=> d!641873 (= res!915867 ((_ is Nil!23284) lt!791534))))

(assert (=> d!641873 (= (isPrefix!2075 lt!791534 lt!791534) lt!791565)))

(declare-fun b!2106941 () Bool)

(declare-fun e!1339206 () Bool)

(declare-fun tail!3100 (List!23368) List!23368)

(assert (=> b!2106941 (= e!1339206 (isPrefix!2075 (tail!3100 lt!791534) (tail!3100 lt!791534)))))

(declare-fun b!2106940 () Bool)

(declare-fun res!915865 () Bool)

(assert (=> b!2106940 (=> (not res!915865) (not e!1339206))))

(declare-fun head!4628 (List!23368) C!11296)

(assert (=> b!2106940 (= res!915865 (= (head!4628 lt!791534) (head!4628 lt!791534)))))

(declare-fun b!2106939 () Bool)

(assert (=> b!2106939 (= e!1339204 e!1339206)))

(declare-fun res!915866 () Bool)

(assert (=> b!2106939 (=> (not res!915866) (not e!1339206))))

(assert (=> b!2106939 (= res!915866 (not ((_ is Nil!23284) lt!791534)))))

(declare-fun b!2106942 () Bool)

(assert (=> b!2106942 (= e!1339205 (>= (size!18173 lt!791534) (size!18173 lt!791534)))))

(assert (= (and d!641873 (not res!915867)) b!2106939))

(assert (= (and b!2106939 res!915866) b!2106940))

(assert (= (and b!2106940 res!915865) b!2106941))

(assert (= (and d!641873 (not res!915868)) b!2106942))

(declare-fun m!2565101 () Bool)

(assert (=> b!2106941 m!2565101))

(assert (=> b!2106941 m!2565101))

(assert (=> b!2106941 m!2565101))

(assert (=> b!2106941 m!2565101))

(declare-fun m!2565103 () Bool)

(assert (=> b!2106941 m!2565103))

(declare-fun m!2565105 () Bool)

(assert (=> b!2106940 m!2565105))

(assert (=> b!2106940 m!2565105))

(assert (=> b!2106942 m!2565053))

(assert (=> b!2106942 m!2565053))

(assert (=> b!2106856 d!641873))

(declare-fun d!641875 () Bool)

(assert (=> d!641875 (isPrefix!2075 lt!791534 lt!791534)))

(declare-fun lt!791568 () Unit!37475)

(declare-fun choose!12630 (List!23368 List!23368) Unit!37475)

(assert (=> d!641875 (= lt!791568 (choose!12630 lt!791534 lt!791534))))

(assert (=> d!641875 (= (lemmaIsPrefixRefl!1393 lt!791534 lt!791534) lt!791568)))

(declare-fun bs!440968 () Bool)

(assert (= bs!440968 d!641875))

(assert (=> bs!440968 m!2564993))

(declare-fun m!2565107 () Bool)

(assert (=> bs!440968 m!2565107))

(assert (=> b!2106856 d!641875))

(declare-fun d!641877 () Bool)

(declare-fun c!338929 () Bool)

(assert (=> d!641877 (= c!338929 ((_ is Node!7724) (c!338918 input!1444)))))

(declare-fun e!1339207 () Bool)

(assert (=> d!641877 (= (inv!30811 (c!338918 input!1444)) e!1339207)))

(declare-fun b!2106943 () Bool)

(assert (=> b!2106943 (= e!1339207 (inv!30816 (c!338918 input!1444)))))

(declare-fun b!2106944 () Bool)

(declare-fun e!1339208 () Bool)

(assert (=> b!2106944 (= e!1339207 e!1339208)))

(declare-fun res!915869 () Bool)

(assert (=> b!2106944 (= res!915869 (not ((_ is Leaf!11279) (c!338918 input!1444))))))

(assert (=> b!2106944 (=> res!915869 e!1339208)))

(declare-fun b!2106945 () Bool)

(assert (=> b!2106945 (= e!1339208 (inv!30817 (c!338918 input!1444)))))

(assert (= (and d!641877 c!338929) b!2106943))

(assert (= (and d!641877 (not c!338929)) b!2106944))

(assert (= (and b!2106944 (not res!915869)) b!2106945))

(declare-fun m!2565109 () Bool)

(assert (=> b!2106943 m!2565109))

(declare-fun m!2565111 () Bool)

(assert (=> b!2106945 m!2565111))

(assert (=> b!2106866 d!641877))

(declare-fun d!641879 () Bool)

(assert (=> d!641879 (= (array_inv!2483 (_keys!2554 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))))) (bvsge (size!18168 (_keys!2554 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106878 d!641879))

(declare-fun d!641881 () Bool)

(assert (=> d!641881 (= (array_inv!2485 (_values!2537 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))))) (bvsge (size!18170 (_values!2537 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2106878 d!641881))

(declare-fun d!641883 () Bool)

(assert (=> d!641883 (= (valid!1789 cacheDown!688) (validCacheMapDown!223 (cache!2551 cacheDown!688)))))

(declare-fun bs!440969 () Bool)

(assert (= bs!440969 d!641883))

(assert (=> bs!440969 m!2565049))

(assert (=> b!2106868 d!641883))

(declare-fun e!1339215 () Bool)

(assert (=> b!2106869 (= tp!639279 e!1339215)))

(declare-fun setIsEmpty!13856 () Bool)

(declare-fun setRes!13856 () Bool)

(assert (=> setIsEmpty!13856 setRes!13856))

(declare-fun b!2106954 () Bool)

(declare-fun e!1339216 () Bool)

(declare-fun tp!639307 () Bool)

(assert (=> b!2106954 (= e!1339216 tp!639307)))

(declare-fun b!2106955 () Bool)

(declare-fun e!1339217 () Bool)

(declare-fun tp!639306 () Bool)

(assert (=> b!2106955 (= e!1339217 tp!639306)))

(declare-fun tp!639309 () Bool)

(declare-fun tp!639305 () Bool)

(declare-fun b!2106956 () Bool)

(declare-fun tp_is_empty!9373 () Bool)

(declare-fun inv!30818 (Context!2290) Bool)

(assert (=> b!2106956 (= e!1339215 (and tp!639305 (inv!30818 (_2!13039 (_1!13040 (h!28684 mapDefault!10897)))) e!1339216 tp_is_empty!9373 setRes!13856 tp!639309))))

(declare-fun condSetEmpty!13856 () Bool)

(assert (=> b!2106956 (= condSetEmpty!13856 (= (_2!13040 (h!28684 mapDefault!10897)) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun setNonEmpty!13856 () Bool)

(declare-fun tp!639308 () Bool)

(declare-fun setElem!13856 () Context!2290)

(assert (=> setNonEmpty!13856 (= setRes!13856 (and tp!639308 (inv!30818 setElem!13856) e!1339217))))

(declare-fun setRest!13856 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13856 (= (_2!13040 (h!28684 mapDefault!10897)) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13856 true) setRest!13856))))

(assert (= b!2106956 b!2106954))

(assert (= (and b!2106956 condSetEmpty!13856) setIsEmpty!13856))

(assert (= (and b!2106956 (not condSetEmpty!13856)) setNonEmpty!13856))

(assert (= setNonEmpty!13856 b!2106955))

(assert (= (and b!2106869 ((_ is Cons!23283) mapDefault!10897)) b!2106956))

(declare-fun m!2565113 () Bool)

(assert (=> b!2106956 m!2565113))

(declare-fun m!2565115 () Bool)

(assert (=> setNonEmpty!13856 m!2565115))

(declare-fun b!2106971 () Bool)

(declare-fun e!1339232 () Bool)

(declare-fun tp!639336 () Bool)

(assert (=> b!2106971 (= e!1339232 tp!639336)))

(declare-fun mapIsEmpty!10900 () Bool)

(declare-fun mapRes!10900 () Bool)

(assert (=> mapIsEmpty!10900 mapRes!10900))

(declare-fun setIsEmpty!13861 () Bool)

(declare-fun setRes!13861 () Bool)

(assert (=> setIsEmpty!13861 setRes!13861))

(declare-fun mapNonEmpty!10900 () Bool)

(declare-fun tp!639333 () Bool)

(declare-fun e!1339231 () Bool)

(assert (=> mapNonEmpty!10900 (= mapRes!10900 (and tp!639333 e!1339231))))

(declare-fun mapKey!10900 () (_ BitVec 32))

(declare-fun mapValue!10900 () List!23371)

(declare-fun mapRest!10900 () (Array (_ BitVec 32) List!23371))

(assert (=> mapNonEmpty!10900 (= mapRest!10896 (store mapRest!10900 mapKey!10900 mapValue!10900))))

(declare-fun b!2106972 () Bool)

(declare-fun e!1339234 () Bool)

(declare-fun tp!639331 () Bool)

(assert (=> b!2106972 (= e!1339234 tp!639331)))

(declare-fun b!2106973 () Bool)

(declare-fun e!1339230 () Bool)

(declare-fun tp!639329 () Bool)

(assert (=> b!2106973 (= e!1339230 tp!639329)))

(declare-fun setElem!13862 () Context!2290)

(declare-fun setRes!13862 () Bool)

(declare-fun setNonEmpty!13861 () Bool)

(declare-fun tp!639334 () Bool)

(assert (=> setNonEmpty!13861 (= setRes!13862 (and tp!639334 (inv!30818 setElem!13862) e!1339230))))

(declare-fun setRest!13862 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13861 (= (_2!13042 (h!28688 mapValue!10900)) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13862 true) setRest!13862))))

(declare-fun setNonEmpty!13862 () Bool)

(declare-fun setElem!13861 () Context!2290)

(declare-fun tp!639328 () Bool)

(assert (=> setNonEmpty!13862 (= setRes!13861 (and tp!639328 (inv!30818 setElem!13861) e!1339232))))

(declare-fun mapDefault!10900 () List!23371)

(declare-fun setRest!13861 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13862 (= (_2!13042 (h!28688 mapDefault!10900)) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13861 true) setRest!13861))))

(declare-fun tp!639335 () Bool)

(declare-fun e!1339235 () Bool)

(declare-fun e!1339233 () Bool)

(declare-fun b!2106974 () Bool)

(assert (=> b!2106974 (= e!1339233 (and (inv!30818 (_1!13041 (_1!13042 (h!28688 mapDefault!10900)))) e!1339235 tp_is_empty!9373 setRes!13861 tp!639335))))

(declare-fun condSetEmpty!13862 () Bool)

(assert (=> b!2106974 (= condSetEmpty!13862 (= (_2!13042 (h!28688 mapDefault!10900)) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun b!2106975 () Bool)

(declare-fun tp!639332 () Bool)

(assert (=> b!2106975 (= e!1339235 tp!639332)))

(declare-fun condMapEmpty!10900 () Bool)

(assert (=> mapNonEmpty!10897 (= condMapEmpty!10900 (= mapRest!10896 ((as const (Array (_ BitVec 32) List!23371)) mapDefault!10900)))))

(assert (=> mapNonEmpty!10897 (= tp!639280 (and e!1339233 mapRes!10900))))

(declare-fun tp!639330 () Bool)

(declare-fun b!2106976 () Bool)

(assert (=> b!2106976 (= e!1339231 (and (inv!30818 (_1!13041 (_1!13042 (h!28688 mapValue!10900)))) e!1339234 tp_is_empty!9373 setRes!13862 tp!639330))))

(declare-fun condSetEmpty!13861 () Bool)

(assert (=> b!2106976 (= condSetEmpty!13861 (= (_2!13042 (h!28688 mapValue!10900)) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun setIsEmpty!13862 () Bool)

(assert (=> setIsEmpty!13862 setRes!13862))

(assert (= (and mapNonEmpty!10897 condMapEmpty!10900) mapIsEmpty!10900))

(assert (= (and mapNonEmpty!10897 (not condMapEmpty!10900)) mapNonEmpty!10900))

(assert (= b!2106976 b!2106972))

(assert (= (and b!2106976 condSetEmpty!13861) setIsEmpty!13862))

(assert (= (and b!2106976 (not condSetEmpty!13861)) setNonEmpty!13861))

(assert (= setNonEmpty!13861 b!2106973))

(assert (= (and mapNonEmpty!10900 ((_ is Cons!23287) mapValue!10900)) b!2106976))

(assert (= b!2106974 b!2106975))

(assert (= (and b!2106974 condSetEmpty!13862) setIsEmpty!13861))

(assert (= (and b!2106974 (not condSetEmpty!13862)) setNonEmpty!13862))

(assert (= setNonEmpty!13862 b!2106971))

(assert (= (and mapNonEmpty!10897 ((_ is Cons!23287) mapDefault!10900)) b!2106974))

(declare-fun m!2565117 () Bool)

(assert (=> setNonEmpty!13862 m!2565117))

(declare-fun m!2565119 () Bool)

(assert (=> mapNonEmpty!10900 m!2565119))

(declare-fun m!2565121 () Bool)

(assert (=> setNonEmpty!13861 m!2565121))

(declare-fun m!2565123 () Bool)

(assert (=> b!2106974 m!2565123))

(declare-fun m!2565125 () Bool)

(assert (=> b!2106976 m!2565125))

(declare-fun e!1339243 () Bool)

(assert (=> mapNonEmpty!10897 (= tp!639285 e!1339243)))

(declare-fun b!2106985 () Bool)

(declare-fun e!1339242 () Bool)

(declare-fun tp!639348 () Bool)

(assert (=> b!2106985 (= e!1339242 tp!639348)))

(declare-fun setElem!13865 () Context!2290)

(declare-fun tp!639346 () Bool)

(declare-fun setRes!13865 () Bool)

(declare-fun e!1339244 () Bool)

(declare-fun setNonEmpty!13865 () Bool)

(assert (=> setNonEmpty!13865 (= setRes!13865 (and tp!639346 (inv!30818 setElem!13865) e!1339244))))

(declare-fun setRest!13865 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13865 (= (_2!13042 (h!28688 mapValue!10897)) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13865 true) setRest!13865))))

(declare-fun b!2106986 () Bool)

(declare-fun tp!639345 () Bool)

(assert (=> b!2106986 (= e!1339243 (and (inv!30818 (_1!13041 (_1!13042 (h!28688 mapValue!10897)))) e!1339242 tp_is_empty!9373 setRes!13865 tp!639345))))

(declare-fun condSetEmpty!13865 () Bool)

(assert (=> b!2106986 (= condSetEmpty!13865 (= (_2!13042 (h!28688 mapValue!10897)) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun b!2106987 () Bool)

(declare-fun tp!639347 () Bool)

(assert (=> b!2106987 (= e!1339244 tp!639347)))

(declare-fun setIsEmpty!13865 () Bool)

(assert (=> setIsEmpty!13865 setRes!13865))

(assert (= b!2106986 b!2106985))

(assert (= (and b!2106986 condSetEmpty!13865) setIsEmpty!13865))

(assert (= (and b!2106986 (not condSetEmpty!13865)) setNonEmpty!13865))

(assert (= setNonEmpty!13865 b!2106987))

(assert (= (and mapNonEmpty!10897 ((_ is Cons!23287) mapValue!10897)) b!2106986))

(declare-fun m!2565127 () Bool)

(assert (=> setNonEmpty!13865 m!2565127))

(declare-fun m!2565129 () Bool)

(assert (=> b!2106986 m!2565129))

(declare-fun b!2106998 () Bool)

(declare-fun b_free!60609 () Bool)

(declare-fun b_next!61313 () Bool)

(assert (=> b!2106998 (= b_free!60609 (not b_next!61313))))

(declare-fun tp!639358 () Bool)

(declare-fun b_and!170171 () Bool)

(assert (=> b!2106998 (= tp!639358 b_and!170171)))

(declare-fun b_free!60611 () Bool)

(declare-fun b_next!61315 () Bool)

(assert (=> b!2106998 (= b_free!60611 (not b_next!61315))))

(declare-fun tp!639360 () Bool)

(declare-fun b_and!170173 () Bool)

(assert (=> b!2106998 (= tp!639360 b_and!170173)))

(declare-fun e!1339256 () Bool)

(assert (=> b!2106998 (= e!1339256 (and tp!639358 tp!639360))))

(declare-fun e!1339255 () Bool)

(declare-fun b!2106997 () Bool)

(declare-fun tp!639359 () Bool)

(assert (=> b!2106997 (= e!1339255 (and tp!639359 (inv!30809 (tag!4634 (h!28687 (t!195863 rulesArg!349)))) (inv!30812 (transformation!4144 (h!28687 (t!195863 rulesArg!349)))) e!1339256))))

(declare-fun b!2106996 () Bool)

(declare-fun e!1339254 () Bool)

(declare-fun tp!639357 () Bool)

(assert (=> b!2106996 (= e!1339254 (and e!1339255 tp!639357))))

(assert (=> b!2106875 (= tp!639287 e!1339254)))

(assert (= b!2106997 b!2106998))

(assert (= b!2106996 b!2106997))

(assert (= (and b!2106875 ((_ is Cons!23286) (t!195863 rulesArg!349))) b!2106996))

(declare-fun m!2565131 () Bool)

(assert (=> b!2106997 m!2565131))

(declare-fun m!2565133 () Bool)

(assert (=> b!2106997 m!2565133))

(declare-fun e!1339258 () Bool)

(assert (=> b!2106860 (= tp!639288 e!1339258)))

(declare-fun b!2106999 () Bool)

(declare-fun e!1339257 () Bool)

(declare-fun tp!639364 () Bool)

(assert (=> b!2106999 (= e!1339257 tp!639364)))

(declare-fun setNonEmpty!13866 () Bool)

(declare-fun setRes!13866 () Bool)

(declare-fun tp!639362 () Bool)

(declare-fun setElem!13866 () Context!2290)

(declare-fun e!1339259 () Bool)

(assert (=> setNonEmpty!13866 (= setRes!13866 (and tp!639362 (inv!30818 setElem!13866) e!1339259))))

(declare-fun setRest!13866 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13866 (= (_2!13042 (h!28688 mapDefault!10896)) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13866 true) setRest!13866))))

(declare-fun b!2107000 () Bool)

(declare-fun tp!639361 () Bool)

(assert (=> b!2107000 (= e!1339258 (and (inv!30818 (_1!13041 (_1!13042 (h!28688 mapDefault!10896)))) e!1339257 tp_is_empty!9373 setRes!13866 tp!639361))))

(declare-fun condSetEmpty!13866 () Bool)

(assert (=> b!2107000 (= condSetEmpty!13866 (= (_2!13042 (h!28688 mapDefault!10896)) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun b!2107001 () Bool)

(declare-fun tp!639363 () Bool)

(assert (=> b!2107001 (= e!1339259 tp!639363)))

(declare-fun setIsEmpty!13866 () Bool)

(assert (=> setIsEmpty!13866 setRes!13866))

(assert (= b!2107000 b!2106999))

(assert (= (and b!2107000 condSetEmpty!13866) setIsEmpty!13866))

(assert (= (and b!2107000 (not condSetEmpty!13866)) setNonEmpty!13866))

(assert (= setNonEmpty!13866 b!2107001))

(assert (= (and b!2106860 ((_ is Cons!23287) mapDefault!10896)) b!2107000))

(declare-fun m!2565135 () Bool)

(assert (=> setNonEmpty!13866 m!2565135))

(declare-fun m!2565137 () Bool)

(assert (=> b!2107000 m!2565137))

(declare-fun e!1339260 () Bool)

(assert (=> b!2106870 (= tp!639275 e!1339260)))

(declare-fun setIsEmpty!13867 () Bool)

(declare-fun setRes!13867 () Bool)

(assert (=> setIsEmpty!13867 setRes!13867))

(declare-fun b!2107002 () Bool)

(declare-fun e!1339261 () Bool)

(declare-fun tp!639367 () Bool)

(assert (=> b!2107002 (= e!1339261 tp!639367)))

(declare-fun b!2107003 () Bool)

(declare-fun e!1339262 () Bool)

(declare-fun tp!639366 () Bool)

(assert (=> b!2107003 (= e!1339262 tp!639366)))

(declare-fun tp!639369 () Bool)

(declare-fun tp!639365 () Bool)

(declare-fun b!2107004 () Bool)

(assert (=> b!2107004 (= e!1339260 (and tp!639365 (inv!30818 (_2!13039 (_1!13040 (h!28684 (zeroValue!2514 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688)))))))))) e!1339261 tp_is_empty!9373 setRes!13867 tp!639369))))

(declare-fun condSetEmpty!13867 () Bool)

(assert (=> b!2107004 (= condSetEmpty!13867 (= (_2!13040 (h!28684 (zeroValue!2514 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688)))))))) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun tp!639368 () Bool)

(declare-fun setNonEmpty!13867 () Bool)

(declare-fun setElem!13867 () Context!2290)

(assert (=> setNonEmpty!13867 (= setRes!13867 (and tp!639368 (inv!30818 setElem!13867) e!1339262))))

(declare-fun setRest!13867 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13867 (= (_2!13040 (h!28684 (zeroValue!2514 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13867 true) setRest!13867))))

(assert (= b!2107004 b!2107002))

(assert (= (and b!2107004 condSetEmpty!13867) setIsEmpty!13867))

(assert (= (and b!2107004 (not condSetEmpty!13867)) setNonEmpty!13867))

(assert (= setNonEmpty!13867 b!2107003))

(assert (= (and b!2106870 ((_ is Cons!23283) (zeroValue!2514 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688)))))))) b!2107004))

(declare-fun m!2565139 () Bool)

(assert (=> b!2107004 m!2565139))

(declare-fun m!2565141 () Bool)

(assert (=> setNonEmpty!13867 m!2565141))

(declare-fun e!1339263 () Bool)

(assert (=> b!2106870 (= tp!639281 e!1339263)))

(declare-fun setIsEmpty!13868 () Bool)

(declare-fun setRes!13868 () Bool)

(assert (=> setIsEmpty!13868 setRes!13868))

(declare-fun b!2107005 () Bool)

(declare-fun e!1339264 () Bool)

(declare-fun tp!639372 () Bool)

(assert (=> b!2107005 (= e!1339264 tp!639372)))

(declare-fun b!2107006 () Bool)

(declare-fun e!1339265 () Bool)

(declare-fun tp!639371 () Bool)

(assert (=> b!2107006 (= e!1339265 tp!639371)))

(declare-fun tp!639374 () Bool)

(declare-fun tp!639370 () Bool)

(declare-fun b!2107007 () Bool)

(assert (=> b!2107007 (= e!1339263 (and tp!639370 (inv!30818 (_2!13039 (_1!13040 (h!28684 (minValue!2514 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688)))))))))) e!1339264 tp_is_empty!9373 setRes!13868 tp!639374))))

(declare-fun condSetEmpty!13868 () Bool)

(assert (=> b!2107007 (= condSetEmpty!13868 (= (_2!13040 (h!28684 (minValue!2514 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688)))))))) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun setNonEmpty!13868 () Bool)

(declare-fun setElem!13868 () Context!2290)

(declare-fun tp!639373 () Bool)

(assert (=> setNonEmpty!13868 (= setRes!13868 (and tp!639373 (inv!30818 setElem!13868) e!1339265))))

(declare-fun setRest!13868 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13868 (= (_2!13040 (h!28684 (minValue!2514 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13868 true) setRest!13868))))

(assert (= b!2107007 b!2107005))

(assert (= (and b!2107007 condSetEmpty!13868) setIsEmpty!13868))

(assert (= (and b!2107007 (not condSetEmpty!13868)) setNonEmpty!13868))

(assert (= setNonEmpty!13868 b!2107006))

(assert (= (and b!2106870 ((_ is Cons!23283) (minValue!2514 (v!27830 (underlying!4707 (v!27831 (underlying!4708 (cache!2551 cacheDown!688)))))))) b!2107007))

(declare-fun m!2565143 () Bool)

(assert (=> b!2107007 m!2565143))

(declare-fun m!2565145 () Bool)

(assert (=> setNonEmpty!13868 m!2565145))

(declare-fun tp!639382 () Bool)

(declare-fun e!1339270 () Bool)

(declare-fun tp!639383 () Bool)

(declare-fun b!2107016 () Bool)

(assert (=> b!2107016 (= e!1339270 (and (inv!30811 (left!18154 (c!338918 totalInput!482))) tp!639383 (inv!30811 (right!18484 (c!338918 totalInput!482))) tp!639382))))

(declare-fun b!2107018 () Bool)

(declare-fun e!1339271 () Bool)

(declare-fun tp!639381 () Bool)

(assert (=> b!2107018 (= e!1339271 tp!639381)))

(declare-fun b!2107017 () Bool)

(declare-fun inv!30819 (IArray!15453) Bool)

(assert (=> b!2107017 (= e!1339270 (and (inv!30819 (xs!10666 (c!338918 totalInput!482))) e!1339271))))

(assert (=> b!2106861 (= tp!639293 (and (inv!30811 (c!338918 totalInput!482)) e!1339270))))

(assert (= (and b!2106861 ((_ is Node!7724) (c!338918 totalInput!482))) b!2107016))

(assert (= b!2107017 b!2107018))

(assert (= (and b!2106861 ((_ is Leaf!11279) (c!338918 totalInput!482))) b!2107017))

(declare-fun m!2565147 () Bool)

(assert (=> b!2107016 m!2565147))

(declare-fun m!2565149 () Bool)

(assert (=> b!2107016 m!2565149))

(declare-fun m!2565151 () Bool)

(assert (=> b!2107017 m!2565151))

(assert (=> b!2106861 m!2565031))

(declare-fun b!2107019 () Bool)

(declare-fun e!1339272 () Bool)

(declare-fun tp!639385 () Bool)

(declare-fun tp!639386 () Bool)

(assert (=> b!2107019 (= e!1339272 (and (inv!30811 (left!18154 (c!338918 input!1444))) tp!639386 (inv!30811 (right!18484 (c!338918 input!1444))) tp!639385))))

(declare-fun b!2107021 () Bool)

(declare-fun e!1339273 () Bool)

(declare-fun tp!639384 () Bool)

(assert (=> b!2107021 (= e!1339273 tp!639384)))

(declare-fun b!2107020 () Bool)

(assert (=> b!2107020 (= e!1339272 (and (inv!30819 (xs!10666 (c!338918 input!1444))) e!1339273))))

(assert (=> b!2106866 (= tp!639290 (and (inv!30811 (c!338918 input!1444)) e!1339272))))

(assert (= (and b!2106866 ((_ is Node!7724) (c!338918 input!1444))) b!2107019))

(assert (= b!2107020 b!2107021))

(assert (= (and b!2106866 ((_ is Leaf!11279) (c!338918 input!1444))) b!2107020))

(declare-fun m!2565153 () Bool)

(assert (=> b!2107019 m!2565153))

(declare-fun m!2565155 () Bool)

(assert (=> b!2107019 m!2565155))

(declare-fun m!2565157 () Bool)

(assert (=> b!2107020 m!2565157))

(assert (=> b!2106866 m!2564985))

(declare-fun b!2107036 () Bool)

(declare-fun e!1339288 () Bool)

(declare-fun tp!639415 () Bool)

(assert (=> b!2107036 (= e!1339288 tp!639415)))

(declare-fun e!1339290 () Bool)

(declare-fun mapValue!10903 () List!23367)

(declare-fun tp!639413 () Bool)

(declare-fun setRes!13874 () Bool)

(declare-fun e!1339286 () Bool)

(declare-fun b!2107037 () Bool)

(declare-fun tp!639417 () Bool)

(assert (=> b!2107037 (= e!1339286 (and tp!639413 (inv!30818 (_2!13039 (_1!13040 (h!28684 mapValue!10903)))) e!1339290 tp_is_empty!9373 setRes!13874 tp!639417))))

(declare-fun condSetEmpty!13874 () Bool)

(assert (=> b!2107037 (= condSetEmpty!13874 (= (_2!13040 (h!28684 mapValue!10903)) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun b!2107038 () Bool)

(declare-fun e!1339291 () Bool)

(declare-fun tp!639416 () Bool)

(assert (=> b!2107038 (= e!1339291 tp!639416)))

(declare-fun setIsEmpty!13873 () Bool)

(assert (=> setIsEmpty!13873 setRes!13874))

(declare-fun condMapEmpty!10903 () Bool)

(declare-fun mapDefault!10903 () List!23367)

(assert (=> mapNonEmpty!10896 (= condMapEmpty!10903 (= mapRest!10897 ((as const (Array (_ BitVec 32) List!23367)) mapDefault!10903)))))

(declare-fun e!1339289 () Bool)

(declare-fun mapRes!10903 () Bool)

(assert (=> mapNonEmpty!10896 (= tp!639289 (and e!1339289 mapRes!10903))))

(declare-fun b!2107039 () Bool)

(declare-fun e!1339287 () Bool)

(declare-fun tp!639410 () Bool)

(assert (=> b!2107039 (= e!1339287 tp!639410)))

(declare-fun b!2107040 () Bool)

(declare-fun tp!639414 () Bool)

(assert (=> b!2107040 (= e!1339290 tp!639414)))

(declare-fun setRes!13873 () Bool)

(declare-fun b!2107041 () Bool)

(declare-fun tp!639411 () Bool)

(declare-fun tp!639409 () Bool)

(assert (=> b!2107041 (= e!1339289 (and tp!639409 (inv!30818 (_2!13039 (_1!13040 (h!28684 mapDefault!10903)))) e!1339287 tp_is_empty!9373 setRes!13873 tp!639411))))

(declare-fun condSetEmpty!13873 () Bool)

(assert (=> b!2107041 (= condSetEmpty!13873 (= (_2!13040 (h!28684 mapDefault!10903)) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun mapIsEmpty!10903 () Bool)

(assert (=> mapIsEmpty!10903 mapRes!10903))

(declare-fun tp!639412 () Bool)

(declare-fun setNonEmpty!13873 () Bool)

(declare-fun setElem!13873 () Context!2290)

(assert (=> setNonEmpty!13873 (= setRes!13874 (and tp!639412 (inv!30818 setElem!13873) e!1339288))))

(declare-fun setRest!13873 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13873 (= (_2!13040 (h!28684 mapValue!10903)) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13873 true) setRest!13873))))

(declare-fun mapNonEmpty!10903 () Bool)

(declare-fun tp!639419 () Bool)

(assert (=> mapNonEmpty!10903 (= mapRes!10903 (and tp!639419 e!1339286))))

(declare-fun mapKey!10903 () (_ BitVec 32))

(declare-fun mapRest!10903 () (Array (_ BitVec 32) List!23367))

(assert (=> mapNonEmpty!10903 (= mapRest!10897 (store mapRest!10903 mapKey!10903 mapValue!10903))))

(declare-fun setIsEmpty!13874 () Bool)

(assert (=> setIsEmpty!13874 setRes!13873))

(declare-fun tp!639418 () Bool)

(declare-fun setNonEmpty!13874 () Bool)

(declare-fun setElem!13874 () Context!2290)

(assert (=> setNonEmpty!13874 (= setRes!13873 (and tp!639418 (inv!30818 setElem!13874) e!1339291))))

(declare-fun setRest!13874 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13874 (= (_2!13040 (h!28684 mapDefault!10903)) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13874 true) setRest!13874))))

(assert (= (and mapNonEmpty!10896 condMapEmpty!10903) mapIsEmpty!10903))

(assert (= (and mapNonEmpty!10896 (not condMapEmpty!10903)) mapNonEmpty!10903))

(assert (= b!2107037 b!2107040))

(assert (= (and b!2107037 condSetEmpty!13874) setIsEmpty!13873))

(assert (= (and b!2107037 (not condSetEmpty!13874)) setNonEmpty!13873))

(assert (= setNonEmpty!13873 b!2107036))

(assert (= (and mapNonEmpty!10903 ((_ is Cons!23283) mapValue!10903)) b!2107037))

(assert (= b!2107041 b!2107039))

(assert (= (and b!2107041 condSetEmpty!13873) setIsEmpty!13874))

(assert (= (and b!2107041 (not condSetEmpty!13873)) setNonEmpty!13874))

(assert (= setNonEmpty!13874 b!2107038))

(assert (= (and mapNonEmpty!10896 ((_ is Cons!23283) mapDefault!10903)) b!2107041))

(declare-fun m!2565159 () Bool)

(assert (=> b!2107041 m!2565159))

(declare-fun m!2565161 () Bool)

(assert (=> mapNonEmpty!10903 m!2565161))

(declare-fun m!2565163 () Bool)

(assert (=> setNonEmpty!13873 m!2565163))

(declare-fun m!2565165 () Bool)

(assert (=> setNonEmpty!13874 m!2565165))

(declare-fun m!2565167 () Bool)

(assert (=> b!2107037 m!2565167))

(declare-fun e!1339292 () Bool)

(assert (=> mapNonEmpty!10896 (= tp!639284 e!1339292)))

(declare-fun setIsEmpty!13875 () Bool)

(declare-fun setRes!13875 () Bool)

(assert (=> setIsEmpty!13875 setRes!13875))

(declare-fun b!2107042 () Bool)

(declare-fun e!1339293 () Bool)

(declare-fun tp!639422 () Bool)

(assert (=> b!2107042 (= e!1339293 tp!639422)))

(declare-fun b!2107043 () Bool)

(declare-fun e!1339294 () Bool)

(declare-fun tp!639421 () Bool)

(assert (=> b!2107043 (= e!1339294 tp!639421)))

(declare-fun tp!639424 () Bool)

(declare-fun b!2107044 () Bool)

(declare-fun tp!639420 () Bool)

(assert (=> b!2107044 (= e!1339292 (and tp!639420 (inv!30818 (_2!13039 (_1!13040 (h!28684 mapValue!10896)))) e!1339293 tp_is_empty!9373 setRes!13875 tp!639424))))

(declare-fun condSetEmpty!13875 () Bool)

(assert (=> b!2107044 (= condSetEmpty!13875 (= (_2!13040 (h!28684 mapValue!10896)) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun setElem!13875 () Context!2290)

(declare-fun setNonEmpty!13875 () Bool)

(declare-fun tp!639423 () Bool)

(assert (=> setNonEmpty!13875 (= setRes!13875 (and tp!639423 (inv!30818 setElem!13875) e!1339294))))

(declare-fun setRest!13875 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13875 (= (_2!13040 (h!28684 mapValue!10896)) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13875 true) setRest!13875))))

(assert (= b!2107044 b!2107042))

(assert (= (and b!2107044 condSetEmpty!13875) setIsEmpty!13875))

(assert (= (and b!2107044 (not condSetEmpty!13875)) setNonEmpty!13875))

(assert (= setNonEmpty!13875 b!2107043))

(assert (= (and mapNonEmpty!10896 ((_ is Cons!23283) mapValue!10896)) b!2107044))

(declare-fun m!2565169 () Bool)

(assert (=> b!2107044 m!2565169))

(declare-fun m!2565171 () Bool)

(assert (=> setNonEmpty!13875 m!2565171))

(declare-fun e!1339296 () Bool)

(assert (=> b!2106878 (= tp!639294 e!1339296)))

(declare-fun b!2107045 () Bool)

(declare-fun e!1339295 () Bool)

(declare-fun tp!639428 () Bool)

(assert (=> b!2107045 (= e!1339295 tp!639428)))

(declare-fun tp!639426 () Bool)

(declare-fun e!1339297 () Bool)

(declare-fun setRes!13876 () Bool)

(declare-fun setNonEmpty!13876 () Bool)

(declare-fun setElem!13876 () Context!2290)

(assert (=> setNonEmpty!13876 (= setRes!13876 (and tp!639426 (inv!30818 setElem!13876) e!1339297))))

(declare-fun setRest!13876 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13876 (= (_2!13042 (h!28688 (zeroValue!2515 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13876 true) setRest!13876))))

(declare-fun b!2107046 () Bool)

(declare-fun tp!639425 () Bool)

(assert (=> b!2107046 (= e!1339296 (and (inv!30818 (_1!13041 (_1!13042 (h!28688 (zeroValue!2515 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675)))))))))) e!1339295 tp_is_empty!9373 setRes!13876 tp!639425))))

(declare-fun condSetEmpty!13876 () Bool)

(assert (=> b!2107046 (= condSetEmpty!13876 (= (_2!13042 (h!28688 (zeroValue!2515 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675)))))))) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun b!2107047 () Bool)

(declare-fun tp!639427 () Bool)

(assert (=> b!2107047 (= e!1339297 tp!639427)))

(declare-fun setIsEmpty!13876 () Bool)

(assert (=> setIsEmpty!13876 setRes!13876))

(assert (= b!2107046 b!2107045))

(assert (= (and b!2107046 condSetEmpty!13876) setIsEmpty!13876))

(assert (= (and b!2107046 (not condSetEmpty!13876)) setNonEmpty!13876))

(assert (= setNonEmpty!13876 b!2107047))

(assert (= (and b!2106878 ((_ is Cons!23287) (zeroValue!2515 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675)))))))) b!2107046))

(declare-fun m!2565173 () Bool)

(assert (=> setNonEmpty!13876 m!2565173))

(declare-fun m!2565175 () Bool)

(assert (=> b!2107046 m!2565175))

(declare-fun e!1339299 () Bool)

(assert (=> b!2106878 (= tp!639291 e!1339299)))

(declare-fun b!2107048 () Bool)

(declare-fun e!1339298 () Bool)

(declare-fun tp!639432 () Bool)

(assert (=> b!2107048 (= e!1339298 tp!639432)))

(declare-fun setElem!13877 () Context!2290)

(declare-fun e!1339300 () Bool)

(declare-fun setNonEmpty!13877 () Bool)

(declare-fun setRes!13877 () Bool)

(declare-fun tp!639430 () Bool)

(assert (=> setNonEmpty!13877 (= setRes!13877 (and tp!639430 (inv!30818 setElem!13877) e!1339300))))

(declare-fun setRest!13877 () (InoxSet Context!2290))

(assert (=> setNonEmpty!13877 (= (_2!13042 (h!28688 (minValue!2515 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2290 Bool)) false) setElem!13877 true) setRest!13877))))

(declare-fun tp!639429 () Bool)

(declare-fun b!2107049 () Bool)

(assert (=> b!2107049 (= e!1339299 (and (inv!30818 (_1!13041 (_1!13042 (h!28688 (minValue!2515 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675)))))))))) e!1339298 tp_is_empty!9373 setRes!13877 tp!639429))))

(declare-fun condSetEmpty!13877 () Bool)

(assert (=> b!2107049 (= condSetEmpty!13877 (= (_2!13042 (h!28688 (minValue!2515 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675)))))))) ((as const (Array Context!2290 Bool)) false)))))

(declare-fun b!2107050 () Bool)

(declare-fun tp!639431 () Bool)

(assert (=> b!2107050 (= e!1339300 tp!639431)))

(declare-fun setIsEmpty!13877 () Bool)

(assert (=> setIsEmpty!13877 setRes!13877))

(assert (= b!2107049 b!2107048))

(assert (= (and b!2107049 condSetEmpty!13877) setIsEmpty!13877))

(assert (= (and b!2107049 (not condSetEmpty!13877)) setNonEmpty!13877))

(assert (= setNonEmpty!13877 b!2107050))

(assert (= (and b!2106878 ((_ is Cons!23287) (minValue!2515 (v!27832 (underlying!4709 (v!27833 (underlying!4710 (cache!2552 cacheUp!675)))))))) b!2107049))

(declare-fun m!2565177 () Bool)

(assert (=> setNonEmpty!13877 m!2565177))

(declare-fun m!2565179 () Bool)

(assert (=> b!2107049 m!2565179))

(declare-fun b!2107064 () Bool)

(declare-fun e!1339303 () Bool)

(declare-fun tp!639447 () Bool)

(declare-fun tp!639443 () Bool)

(assert (=> b!2107064 (= e!1339303 (and tp!639447 tp!639443))))

(declare-fun b!2107062 () Bool)

(declare-fun tp!639444 () Bool)

(declare-fun tp!639446 () Bool)

(assert (=> b!2107062 (= e!1339303 (and tp!639444 tp!639446))))

(assert (=> b!2106863 (= tp!639292 e!1339303)))

(declare-fun b!2107063 () Bool)

(declare-fun tp!639445 () Bool)

(assert (=> b!2107063 (= e!1339303 tp!639445)))

(declare-fun b!2107061 () Bool)

(assert (=> b!2107061 (= e!1339303 tp_is_empty!9373)))

(assert (= (and b!2106863 ((_ is ElementMatch!5575) (regex!4144 (h!28687 rulesArg!349)))) b!2107061))

(assert (= (and b!2106863 ((_ is Concat!9855) (regex!4144 (h!28687 rulesArg!349)))) b!2107062))

(assert (= (and b!2106863 ((_ is Star!5575) (regex!4144 (h!28687 rulesArg!349)))) b!2107063))

(assert (= (and b!2106863 ((_ is Union!5575) (regex!4144 (h!28687 rulesArg!349)))) b!2107064))

(check-sat (not d!641837) (not b!2106972) (not mapNonEmpty!10903) (not d!641883) (not b!2106971) (not b!2107019) (not b!2106929) (not b!2106902) (not b!2107064) (not b!2107047) (not b!2106987) (not setNonEmpty!13865) (not setNonEmpty!13867) (not d!641841) (not b!2106942) (not b!2106866) (not b!2107040) (not b!2106945) (not b_next!61301) (not setNonEmpty!13866) (not b!2107000) (not b!2107037) (not b!2107016) (not b!2107005) (not b!2106904) (not b!2107006) (not b!2107041) (not b!2106892) (not b!2106997) (not b!2107062) (not b!2106954) (not d!641855) (not b!2106973) (not setNonEmpty!13868) (not b!2106956) (not d!641853) (not b!2106943) (not b!2107038) (not setNonEmpty!13873) (not b!2107049) (not setNonEmpty!13875) (not b!2106940) (not b!2106975) (not b!2106915) b_and!170169 (not b!2107002) (not d!641869) (not b!2106996) (not b_next!61311) b_and!170161 (not b!2106930) (not b!2106913) (not b_next!61309) (not mapNonEmpty!10900) (not setNonEmpty!13877) (not b!2107044) b_and!170167 (not b!2106907) (not b!2107017) tp_is_empty!9373 (not b!2107042) (not b!2106928) b_and!170173 (not setNonEmpty!13861) (not b!2107007) (not b!2107021) (not b!2106986) (not d!641839) (not b!2106883) (not b_next!61313) (not b!2107001) (not b!2107020) (not b!2106895) (not b!2106955) (not b_next!61307) (not d!641861) b_and!170159 b_and!170163 (not b!2107050) (not b_next!61305) (not b_next!61303) (not d!641851) (not b!2106884) (not b!2107004) (not d!641875) (not setNonEmpty!13876) (not b!2106926) (not b!2106861) (not b!2107063) (not d!641871) b_and!170165 (not b!2107003) (not setNonEmpty!13874) (not b!2107046) (not b!2107043) (not b_next!61315) (not b!2106985) b_and!170171 (not setNonEmpty!13862) (not b!2106889) (not b!2106974) (not b!2107036) (not b!2107039) (not b!2107045) (not b!2107018) (not setNonEmpty!13856) (not b!2106941) (not b!2106976) (not b!2106999) (not b!2107048))
(check-sat (not b_next!61301) b_and!170169 b_and!170167 b_and!170173 (not b_next!61313) (not b_next!61307) b_and!170159 b_and!170165 (not b_next!61311) b_and!170161 (not b_next!61309) b_and!170163 (not b_next!61305) (not b_next!61303) (not b_next!61315) b_and!170171)
