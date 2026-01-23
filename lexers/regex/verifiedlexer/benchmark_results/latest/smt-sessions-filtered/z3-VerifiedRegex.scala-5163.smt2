; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266054 () Bool)

(assert start!266054)

(declare-fun b!2744639 () Bool)

(declare-fun b_free!77213 () Bool)

(declare-fun b_next!77917 () Bool)

(assert (=> b!2744639 (= b_free!77213 (not b_next!77917))))

(declare-fun tp!863772 () Bool)

(declare-fun b_and!201933 () Bool)

(assert (=> b!2744639 (= tp!863772 b_and!201933)))

(declare-fun b!2744622 () Bool)

(declare-fun b_free!77215 () Bool)

(declare-fun b_next!77919 () Bool)

(assert (=> b!2744622 (= b_free!77215 (not b_next!77919))))

(declare-fun tp!863776 () Bool)

(declare-fun b_and!201935 () Bool)

(assert (=> b!2744622 (= tp!863776 b_and!201935)))

(declare-fun b!2744637 () Bool)

(declare-fun b_free!77217 () Bool)

(declare-fun b_next!77921 () Bool)

(assert (=> b!2744637 (= b_free!77217 (not b_next!77921))))

(declare-fun tp!863773 () Bool)

(declare-fun b_and!201937 () Bool)

(assert (=> b!2744637 (= tp!863773 b_and!201937)))

(declare-fun b!2744621 () Bool)

(declare-fun b_free!77219 () Bool)

(declare-fun b_next!77923 () Bool)

(assert (=> b!2744621 (= b_free!77219 (not b_next!77923))))

(declare-fun tp!863784 () Bool)

(declare-fun b_and!201939 () Bool)

(assert (=> b!2744621 (= tp!863784 b_and!201939)))

(declare-fun b!2744629 () Bool)

(declare-fun b_free!77221 () Bool)

(declare-fun b_next!77925 () Bool)

(assert (=> b!2744629 (= b_free!77221 (not b_next!77925))))

(declare-fun tp!863779 () Bool)

(declare-fun b_and!201941 () Bool)

(assert (=> b!2744629 (= tp!863779 b_and!201941)))

(declare-fun b_free!77223 () Bool)

(declare-fun b_next!77927 () Bool)

(assert (=> b!2744629 (= b_free!77223 (not b_next!77927))))

(declare-fun tp!863781 () Bool)

(declare-fun b_and!201943 () Bool)

(assert (=> b!2744629 (= tp!863781 b_and!201943)))

(declare-fun b!2744620 () Bool)

(declare-fun e!1728805 () Bool)

(declare-fun e!1728793 () Bool)

(assert (=> b!2744620 (= e!1728805 (not e!1728793))))

(declare-fun res!1151989 () Bool)

(assert (=> b!2744620 (=> res!1151989 e!1728793)))

(declare-datatypes ((List!31674 0))(
  ( (Nil!31574) (Cons!31574 (h!36994 (_ BitVec 16)) (t!227762 List!31674)) )
))
(declare-datatypes ((TokenValue!5059 0))(
  ( (FloatLiteralValue!10118 (text!35858 List!31674)) (TokenValueExt!5058 (__x!20380 Int)) (Broken!25295 (value!155430 List!31674)) (Object!5158) (End!5059) (Def!5059) (Underscore!5059) (Match!5059) (Else!5059) (Error!5059) (Case!5059) (If!5059) (Extends!5059) (Abstract!5059) (Class!5059) (Val!5059) (DelimiterValue!10118 (del!5119 List!31674)) (KeywordValue!5065 (value!155431 List!31674)) (CommentValue!10118 (value!155432 List!31674)) (WhitespaceValue!10118 (value!155433 List!31674)) (IndentationValue!5059 (value!155434 List!31674)) (String!35198) (Int32!5059) (Broken!25296 (value!155435 List!31674)) (Boolean!5060) (Unit!45511) (OperatorValue!5062 (op!5119 List!31674)) (IdentifierValue!10118 (value!155436 List!31674)) (IdentifierValue!10119 (value!155437 List!31674)) (WhitespaceValue!10119 (value!155438 List!31674)) (True!10118) (False!10118) (Broken!25297 (value!155439 List!31674)) (Broken!25298 (value!155440 List!31674)) (True!10119) (RightBrace!5059) (RightBracket!5059) (Colon!5059) (Null!5059) (Comma!5059) (LeftBracket!5059) (False!10119) (LeftBrace!5059) (ImaginaryLiteralValue!5059 (text!35859 List!31674)) (StringLiteralValue!15177 (value!155441 List!31674)) (EOFValue!5059 (value!155442 List!31674)) (IdentValue!5059 (value!155443 List!31674)) (DelimiterValue!10119 (value!155444 List!31674)) (DedentValue!5059 (value!155445 List!31674)) (NewLineValue!5059 (value!155446 List!31674)) (IntegerValue!15177 (value!155447 (_ BitVec 32)) (text!35860 List!31674)) (IntegerValue!15178 (value!155448 Int) (text!35861 List!31674)) (Times!5059) (Or!5059) (Equal!5059) (Minus!5059) (Broken!25299 (value!155449 List!31674)) (And!5059) (Div!5059) (LessEqual!5059) (Mod!5059) (Concat!13050) (Not!5059) (Plus!5059) (SpaceValue!5059 (value!155450 List!31674)) (IntegerValue!15179 (value!155451 Int) (text!35862 List!31674)) (StringLiteralValue!15178 (text!35863 List!31674)) (FloatLiteralValue!10119 (text!35864 List!31674)) (BytesLiteralValue!5059 (value!155452 List!31674)) (CommentValue!10119 (value!155453 List!31674)) (StringLiteralValue!15179 (value!155454 List!31674)) (ErrorTokenValue!5059 (msg!5120 List!31674)) )
))
(declare-datatypes ((C!16140 0))(
  ( (C!16141 (val!10004 Int)) )
))
(declare-datatypes ((List!31675 0))(
  ( (Nil!31575) (Cons!31575 (h!36995 C!16140) (t!227763 List!31675)) )
))
(declare-datatypes ((IArray!19765 0))(
  ( (IArray!19766 (innerList!9940 List!31675)) )
))
(declare-datatypes ((Conc!9880 0))(
  ( (Node!9880 (left!24219 Conc!9880) (right!24549 Conc!9880) (csize!19990 Int) (cheight!10091 Int)) (Leaf!15044 (xs!12987 IArray!19765) (csize!19991 Int)) (Empty!9880) )
))
(declare-datatypes ((BalanceConc!19374 0))(
  ( (BalanceConc!19375 (c!444806 Conc!9880)) )
))
(declare-datatypes ((TokenValueInjection!9558 0))(
  ( (TokenValueInjection!9559 (toValue!6835 Int) (toChars!6694 Int)) )
))
(declare-datatypes ((Regex!7991 0))(
  ( (ElementMatch!7991 (c!444807 C!16140)) (Concat!13051 (regOne!16494 Regex!7991) (regTwo!16494 Regex!7991)) (EmptyExpr!7991) (Star!7991 (reg!8320 Regex!7991)) (EmptyLang!7991) (Union!7991 (regOne!16495 Regex!7991) (regTwo!16495 Regex!7991)) )
))
(declare-datatypes ((String!35199 0))(
  ( (String!35200 (value!155455 String)) )
))
(declare-datatypes ((Rule!9474 0))(
  ( (Rule!9475 (regex!4837 Regex!7991) (tag!5341 String!35199) (isSeparator!4837 Bool) (transformation!4837 TokenValueInjection!9558)) )
))
(declare-datatypes ((List!31676 0))(
  ( (Nil!31576) (Cons!31576 (h!36996 Rule!9474) (t!227764 List!31676)) )
))
(declare-fun rulesArg!249 () List!31676)

(get-info :version)

(assert (=> b!2744620 (= res!1151989 (or (and ((_ is Cons!31576) rulesArg!249) ((_ is Nil!31576) (t!227764 rulesArg!249))) (not ((_ is Cons!31576) rulesArg!249))))))

(declare-fun lt!971418 () List!31675)

(declare-fun isPrefix!2513 (List!31675 List!31675) Bool)

(assert (=> b!2744620 (isPrefix!2513 lt!971418 lt!971418)))

(declare-datatypes ((Unit!45512 0))(
  ( (Unit!45513) )
))
(declare-fun lt!971417 () Unit!45512)

(declare-fun lemmaIsPrefixRefl!1639 (List!31675 List!31675) Unit!45512)

(assert (=> b!2744620 (= lt!971417 (lemmaIsPrefixRefl!1639 lt!971418 lt!971418))))

(declare-fun input!1326 () BalanceConc!19374)

(declare-fun list!11989 (BalanceConc!19374) List!31675)

(assert (=> b!2744620 (= lt!971418 (list!11989 input!1326))))

(declare-fun tp!863785 () Bool)

(declare-fun e!1728796 () Bool)

(declare-datatypes ((array!12806 0))(
  ( (array!12807 (arr!5719 (Array (_ BitVec 32) (_ BitVec 64))) (size!24378 (_ BitVec 32))) )
))
(declare-datatypes ((List!31677 0))(
  ( (Nil!31577) (Cons!31577 (h!36997 Regex!7991) (t!227765 List!31677)) )
))
(declare-datatypes ((Context!4418 0))(
  ( (Context!4419 (exprs!2709 List!31677)) )
))
(declare-datatypes ((tuple2!31372 0))(
  ( (tuple2!31373 (_1!18351 Context!4418) (_2!18351 C!16140)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31374 0))(
  ( (tuple2!31375 (_1!18352 tuple2!31372) (_2!18352 (InoxSet Context!4418))) )
))
(declare-datatypes ((List!31678 0))(
  ( (Nil!31578) (Cons!31578 (h!36998 tuple2!31374) (t!227766 List!31678)) )
))
(declare-datatypes ((array!12808 0))(
  ( (array!12809 (arr!5720 (Array (_ BitVec 32) List!31678)) (size!24379 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7190 0))(
  ( (LongMapFixedSize!7191 (defaultEntry!3980 Int) (mask!9327 (_ BitVec 32)) (extraKeys!3844 (_ BitVec 32)) (zeroValue!3854 List!31678) (minValue!3854 List!31678) (_size!7233 (_ BitVec 32)) (_keys!3895 array!12806) (_values!3876 array!12808) (_vacant!3656 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14189 0))(
  ( (Cell!14190 (v!33214 LongMapFixedSize!7190)) )
))
(declare-datatypes ((MutLongMap!3595 0))(
  ( (LongMap!3595 (underlying!7393 Cell!14189)) (MutLongMapExt!3594 (__x!20381 Int)) )
))
(declare-datatypes ((Cell!14191 0))(
  ( (Cell!14192 (v!33215 MutLongMap!3595)) )
))
(declare-datatypes ((Hashable!3511 0))(
  ( (HashableExt!3510 (__x!20382 Int)) )
))
(declare-datatypes ((MutableMap!3501 0))(
  ( (MutableMapExt!3500 (__x!20383 Int)) (HashMap!3501 (underlying!7394 Cell!14191) (hashF!5543 Hashable!3511) (_size!7234 (_ BitVec 32)) (defaultValue!3672 Int)) )
))
(declare-datatypes ((CacheUp!2208 0))(
  ( (CacheUp!2209 (cache!3644 MutableMap!3501)) )
))
(declare-fun cacheUp!633 () CacheUp!2208)

(declare-fun e!1728801 () Bool)

(declare-fun tp!863788 () Bool)

(declare-fun array_inv!4083 (array!12806) Bool)

(declare-fun array_inv!4084 (array!12808) Bool)

(assert (=> b!2744621 (= e!1728796 (and tp!863784 tp!863788 tp!863785 (array_inv!4083 (_keys!3895 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))))) (array_inv!4084 (_values!3876 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))))) e!1728801))))

(declare-fun e!1728792 () Bool)

(declare-fun e!1728791 () Bool)

(assert (=> b!2744622 (= e!1728792 (and e!1728791 tp!863776))))

(declare-fun e!1728795 () Bool)

(declare-fun tp!863774 () Bool)

(declare-fun e!1728785 () Bool)

(declare-fun b!2744623 () Bool)

(declare-fun inv!42925 (String!35199) Bool)

(declare-fun inv!42926 (TokenValueInjection!9558) Bool)

(assert (=> b!2744623 (= e!1728795 (and tp!863774 (inv!42925 (tag!5341 (h!36996 rulesArg!249))) (inv!42926 (transformation!4837 (h!36996 rulesArg!249))) e!1728785))))

(declare-fun b!2744624 () Bool)

(declare-fun e!1728788 () Bool)

(declare-datatypes ((tuple3!4390 0))(
  ( (tuple3!4391 (_1!18353 Regex!7991) (_2!18353 Context!4418) (_3!2665 C!16140)) )
))
(declare-datatypes ((tuple2!31376 0))(
  ( (tuple2!31377 (_1!18354 tuple3!4390) (_2!18354 (InoxSet Context!4418))) )
))
(declare-datatypes ((List!31679 0))(
  ( (Nil!31579) (Cons!31579 (h!36999 tuple2!31376) (t!227767 List!31679)) )
))
(declare-datatypes ((array!12810 0))(
  ( (array!12811 (arr!5721 (Array (_ BitVec 32) List!31679)) (size!24380 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7192 0))(
  ( (LongMapFixedSize!7193 (defaultEntry!3981 Int) (mask!9328 (_ BitVec 32)) (extraKeys!3845 (_ BitVec 32)) (zeroValue!3855 List!31679) (minValue!3855 List!31679) (_size!7235 (_ BitVec 32)) (_keys!3896 array!12806) (_values!3877 array!12810) (_vacant!3657 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14193 0))(
  ( (Cell!14194 (v!33216 LongMapFixedSize!7192)) )
))
(declare-datatypes ((MutLongMap!3596 0))(
  ( (LongMap!3596 (underlying!7395 Cell!14193)) (MutLongMapExt!3595 (__x!20384 Int)) )
))
(declare-fun lt!971420 () MutLongMap!3596)

(assert (=> b!2744624 (= e!1728791 (and e!1728788 ((_ is LongMap!3596) lt!971420)))))

(declare-datatypes ((Cell!14195 0))(
  ( (Cell!14196 (v!33217 MutLongMap!3596)) )
))
(declare-datatypes ((Hashable!3512 0))(
  ( (HashableExt!3511 (__x!20385 Int)) )
))
(declare-datatypes ((MutableMap!3502 0))(
  ( (MutableMapExt!3501 (__x!20386 Int)) (HashMap!3502 (underlying!7396 Cell!14195) (hashF!5544 Hashable!3512) (_size!7236 (_ BitVec 32)) (defaultValue!3673 Int)) )
))
(declare-datatypes ((CacheDown!2326 0))(
  ( (CacheDown!2327 (cache!3645 MutableMap!3502)) )
))
(declare-fun cacheDown!646 () CacheDown!2326)

(assert (=> b!2744624 (= lt!971420 (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))))

(declare-fun mapIsEmpty!16403 () Bool)

(declare-fun mapRes!16403 () Bool)

(assert (=> mapIsEmpty!16403 mapRes!16403))

(declare-fun b!2744625 () Bool)

(declare-fun e!1728800 () Bool)

(assert (=> b!2744625 (= e!1728800 e!1728792)))

(declare-fun b!2744626 () Bool)

(declare-fun e!1728799 () Bool)

(declare-datatypes ((Token!9108 0))(
  ( (Token!9109 (value!155456 TokenValue!5059) (rule!7276 Rule!9474) (size!24381 Int) (originalCharacters!5585 List!31675)) )
))
(declare-datatypes ((tuple2!31378 0))(
  ( (tuple2!31379 (_1!18355 Token!9108) (_2!18355 BalanceConc!19374)) )
))
(declare-datatypes ((Option!6233 0))(
  ( (None!6232) (Some!6232 (v!33218 tuple2!31378)) )
))
(declare-datatypes ((tuple3!4392 0))(
  ( (tuple3!4393 (_1!18356 Option!6233) (_2!18356 CacheUp!2208) (_3!2666 CacheDown!2326)) )
))
(declare-fun lt!971416 () tuple3!4392)

(declare-fun valid!2790 (CacheDown!2326) Bool)

(assert (=> b!2744626 (= e!1728799 (valid!2790 (_3!2666 lt!971416)))))

(declare-fun b!2744628 () Bool)

(declare-fun res!1151991 () Bool)

(assert (=> b!2744628 (=> res!1151991 e!1728799)))

(declare-fun valid!2791 (CacheUp!2208) Bool)

(assert (=> b!2744628 (= res!1151991 (not (valid!2791 (_2!18356 lt!971416))))))

(assert (=> b!2744629 (= e!1728785 (and tp!863779 tp!863781))))

(declare-fun b!2744630 () Bool)

(declare-fun e!1728806 () Bool)

(declare-fun tp!863777 () Bool)

(declare-fun inv!42927 (Conc!9880) Bool)

(assert (=> b!2744630 (= e!1728806 (and (inv!42927 (c!444806 input!1326)) tp!863777))))

(declare-fun b!2744631 () Bool)

(declare-fun e!1728802 () Bool)

(declare-fun e!1728804 () Bool)

(assert (=> b!2744631 (= e!1728802 e!1728804)))

(declare-fun b!2744632 () Bool)

(declare-fun e!1728794 () Bool)

(declare-fun e!1728790 () Bool)

(declare-fun lt!971419 () MutLongMap!3595)

(assert (=> b!2744632 (= e!1728794 (and e!1728790 ((_ is LongMap!3595) lt!971419)))))

(assert (=> b!2744632 (= lt!971419 (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))))

(declare-fun b!2744633 () Bool)

(assert (=> b!2744633 (= e!1728793 e!1728799)))

(declare-fun res!1151994 () Bool)

(assert (=> b!2744633 (=> res!1151994 e!1728799)))

(declare-datatypes ((LexerInterface!4431 0))(
  ( (LexerInterfaceExt!4428 (__x!20387 Int)) (Lexer!4429) )
))
(declare-fun thiss!15207 () LexerInterface!4431)

(declare-fun rulesValidInductive!1701 (LexerInterface!4431 List!31676) Bool)

(assert (=> b!2744633 (= res!1151994 (not (rulesValidInductive!1701 thiss!15207 (t!227764 rulesArg!249))))))

(declare-fun maxPrefixOneRuleZipperSequenceMem!19 (LexerInterface!4431 Rule!9474 BalanceConc!19374 CacheUp!2208 CacheDown!2326) tuple3!4392)

(assert (=> b!2744633 (= lt!971416 (maxPrefixOneRuleZipperSequenceMem!19 thiss!15207 (h!36996 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun b!2744634 () Bool)

(declare-fun e!1728798 () Bool)

(declare-fun tp!863782 () Bool)

(declare-fun mapRes!16404 () Bool)

(assert (=> b!2744634 (= e!1728798 (and tp!863782 mapRes!16404))))

(declare-fun condMapEmpty!16403 () Bool)

(declare-fun mapDefault!16404 () List!31679)

(assert (=> b!2744634 (= condMapEmpty!16403 (= (arr!5721 (_values!3877 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31679)) mapDefault!16404)))))

(declare-fun b!2744635 () Bool)

(declare-fun res!1151993 () Bool)

(assert (=> b!2744635 (=> (not res!1151993) (not e!1728805))))

(assert (=> b!2744635 (= res!1151993 (valid!2791 cacheUp!633))))

(declare-fun b!2744636 () Bool)

(declare-fun e!1728789 () Bool)

(declare-fun e!1728784 () Bool)

(assert (=> b!2744636 (= e!1728789 e!1728784)))

(declare-fun tp!863775 () Bool)

(declare-fun tp!863783 () Bool)

(declare-fun array_inv!4085 (array!12810) Bool)

(assert (=> b!2744637 (= e!1728784 (and tp!863773 tp!863775 tp!863783 (array_inv!4083 (_keys!3896 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))))) (array_inv!4085 (_values!3877 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))))) e!1728798))))

(declare-fun b!2744638 () Bool)

(assert (=> b!2744638 (= e!1728788 e!1728789)))

(assert (=> b!2744639 (= e!1728804 (and e!1728794 tp!863772))))

(declare-fun b!2744640 () Bool)

(declare-fun e!1728786 () Bool)

(declare-fun tp!863786 () Bool)

(assert (=> b!2744640 (= e!1728786 (and e!1728795 tp!863786))))

(declare-fun b!2744641 () Bool)

(declare-fun res!1151988 () Bool)

(assert (=> b!2744641 (=> res!1151988 e!1728799)))

(declare-fun isEmpty!18030 (List!31676) Bool)

(assert (=> b!2744641 (= res!1151988 (isEmpty!18030 (t!227764 rulesArg!249)))))

(declare-fun b!2744642 () Bool)

(declare-fun e!1728787 () Bool)

(assert (=> b!2744642 (= e!1728790 e!1728787)))

(declare-fun b!2744627 () Bool)

(declare-fun res!1151990 () Bool)

(assert (=> b!2744627 (=> (not res!1151990) (not e!1728805))))

(assert (=> b!2744627 (= res!1151990 (valid!2790 cacheDown!646))))

(declare-fun res!1151996 () Bool)

(assert (=> start!266054 (=> (not res!1151996) (not e!1728805))))

(assert (=> start!266054 (= res!1151996 ((_ is Lexer!4429) thiss!15207))))

(assert (=> start!266054 e!1728805))

(declare-fun inv!42928 (CacheDown!2326) Bool)

(assert (=> start!266054 (and (inv!42928 cacheDown!646) e!1728800)))

(declare-fun inv!42929 (BalanceConc!19374) Bool)

(assert (=> start!266054 (and (inv!42929 input!1326) e!1728806)))

(assert (=> start!266054 e!1728786))

(declare-fun inv!42930 (CacheUp!2208) Bool)

(assert (=> start!266054 (and (inv!42930 cacheUp!633) e!1728802)))

(assert (=> start!266054 true))

(declare-fun b!2744643 () Bool)

(assert (=> b!2744643 (= e!1728787 e!1728796)))

(declare-fun b!2744644 () Bool)

(declare-fun res!1151992 () Bool)

(assert (=> b!2744644 (=> (not res!1151992) (not e!1728805))))

(assert (=> b!2744644 (= res!1151992 (rulesValidInductive!1701 thiss!15207 rulesArg!249))))

(declare-fun b!2744645 () Bool)

(declare-fun tp!863778 () Bool)

(assert (=> b!2744645 (= e!1728801 (and tp!863778 mapRes!16403))))

(declare-fun condMapEmpty!16404 () Bool)

(declare-fun mapDefault!16403 () List!31678)

(assert (=> b!2744645 (= condMapEmpty!16404 (= (arr!5720 (_values!3876 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31678)) mapDefault!16403)))))

(declare-fun mapIsEmpty!16404 () Bool)

(assert (=> mapIsEmpty!16404 mapRes!16404))

(declare-fun mapNonEmpty!16403 () Bool)

(declare-fun tp!863771 () Bool)

(declare-fun tp!863787 () Bool)

(assert (=> mapNonEmpty!16403 (= mapRes!16403 (and tp!863771 tp!863787))))

(declare-fun mapKey!16403 () (_ BitVec 32))

(declare-fun mapRest!16403 () (Array (_ BitVec 32) List!31678))

(declare-fun mapValue!16403 () List!31678)

(assert (=> mapNonEmpty!16403 (= (arr!5720 (_values!3876 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))))) (store mapRest!16403 mapKey!16403 mapValue!16403))))

(declare-fun mapNonEmpty!16404 () Bool)

(declare-fun tp!863789 () Bool)

(declare-fun tp!863780 () Bool)

(assert (=> mapNonEmpty!16404 (= mapRes!16404 (and tp!863789 tp!863780))))

(declare-fun mapKey!16404 () (_ BitVec 32))

(declare-fun mapRest!16404 () (Array (_ BitVec 32) List!31679))

(declare-fun mapValue!16404 () List!31679)

(assert (=> mapNonEmpty!16404 (= (arr!5721 (_values!3877 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))))) (store mapRest!16404 mapKey!16404 mapValue!16404))))

(declare-fun b!2744646 () Bool)

(declare-fun res!1151995 () Bool)

(assert (=> b!2744646 (=> (not res!1151995) (not e!1728805))))

(assert (=> b!2744646 (= res!1151995 (not (isEmpty!18030 rulesArg!249)))))

(assert (= (and start!266054 res!1151996) b!2744644))

(assert (= (and b!2744644 res!1151992) b!2744646))

(assert (= (and b!2744646 res!1151995) b!2744635))

(assert (= (and b!2744635 res!1151993) b!2744627))

(assert (= (and b!2744627 res!1151990) b!2744620))

(assert (= (and b!2744620 (not res!1151989)) b!2744633))

(assert (= (and b!2744633 (not res!1151994)) b!2744641))

(assert (= (and b!2744641 (not res!1151988)) b!2744628))

(assert (= (and b!2744628 (not res!1151991)) b!2744626))

(assert (= (and b!2744634 condMapEmpty!16403) mapIsEmpty!16404))

(assert (= (and b!2744634 (not condMapEmpty!16403)) mapNonEmpty!16404))

(assert (= b!2744637 b!2744634))

(assert (= b!2744636 b!2744637))

(assert (= b!2744638 b!2744636))

(assert (= (and b!2744624 ((_ is LongMap!3596) (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))) b!2744638))

(assert (= b!2744622 b!2744624))

(assert (= (and b!2744625 ((_ is HashMap!3502) (cache!3645 cacheDown!646))) b!2744622))

(assert (= start!266054 b!2744625))

(assert (= start!266054 b!2744630))

(assert (= b!2744623 b!2744629))

(assert (= b!2744640 b!2744623))

(assert (= (and start!266054 ((_ is Cons!31576) rulesArg!249)) b!2744640))

(assert (= (and b!2744645 condMapEmpty!16404) mapIsEmpty!16403))

(assert (= (and b!2744645 (not condMapEmpty!16404)) mapNonEmpty!16403))

(assert (= b!2744621 b!2744645))

(assert (= b!2744643 b!2744621))

(assert (= b!2744642 b!2744643))

(assert (= (and b!2744632 ((_ is LongMap!3595) (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))) b!2744642))

(assert (= b!2744639 b!2744632))

(assert (= (and b!2744631 ((_ is HashMap!3501) (cache!3644 cacheUp!633))) b!2744639))

(assert (= start!266054 b!2744631))

(declare-fun m!3161721 () Bool)

(assert (=> mapNonEmpty!16404 m!3161721))

(declare-fun m!3161723 () Bool)

(assert (=> b!2744641 m!3161723))

(declare-fun m!3161725 () Bool)

(assert (=> b!2744621 m!3161725))

(declare-fun m!3161727 () Bool)

(assert (=> b!2744621 m!3161727))

(declare-fun m!3161729 () Bool)

(assert (=> b!2744646 m!3161729))

(declare-fun m!3161731 () Bool)

(assert (=> b!2744620 m!3161731))

(declare-fun m!3161733 () Bool)

(assert (=> b!2744620 m!3161733))

(declare-fun m!3161735 () Bool)

(assert (=> b!2744620 m!3161735))

(declare-fun m!3161737 () Bool)

(assert (=> b!2744627 m!3161737))

(declare-fun m!3161739 () Bool)

(assert (=> b!2744623 m!3161739))

(declare-fun m!3161741 () Bool)

(assert (=> b!2744623 m!3161741))

(declare-fun m!3161743 () Bool)

(assert (=> start!266054 m!3161743))

(declare-fun m!3161745 () Bool)

(assert (=> start!266054 m!3161745))

(declare-fun m!3161747 () Bool)

(assert (=> start!266054 m!3161747))

(declare-fun m!3161749 () Bool)

(assert (=> b!2744628 m!3161749))

(declare-fun m!3161751 () Bool)

(assert (=> b!2744644 m!3161751))

(declare-fun m!3161753 () Bool)

(assert (=> mapNonEmpty!16403 m!3161753))

(declare-fun m!3161755 () Bool)

(assert (=> b!2744637 m!3161755))

(declare-fun m!3161757 () Bool)

(assert (=> b!2744637 m!3161757))

(declare-fun m!3161759 () Bool)

(assert (=> b!2744630 m!3161759))

(declare-fun m!3161761 () Bool)

(assert (=> b!2744626 m!3161761))

(declare-fun m!3161763 () Bool)

(assert (=> b!2744633 m!3161763))

(declare-fun m!3161765 () Bool)

(assert (=> b!2744633 m!3161765))

(declare-fun m!3161767 () Bool)

(assert (=> b!2744635 m!3161767))

(check-sat (not b_next!77925) (not b_next!77921) (not b!2744634) (not b!2744620) (not b!2744641) (not b!2744646) b_and!201933 (not b!2744645) (not b!2744635) (not mapNonEmpty!16404) (not start!266054) b_and!201939 b_and!201937 (not b!2744627) (not b_next!77919) b_and!201943 b_and!201941 (not b_next!77927) (not b!2744623) (not b_next!77917) (not b!2744633) (not mapNonEmpty!16403) (not b!2744644) (not b!2744626) b_and!201935 (not b_next!77923) (not b!2744637) (not b!2744628) (not b!2744630) (not b!2744640) (not b!2744621))
(check-sat (not b_next!77925) (not b_next!77919) (not b_next!77921) b_and!201933 (not b_next!77927) (not b_next!77917) b_and!201939 b_and!201937 b_and!201943 b_and!201941 b_and!201935 (not b_next!77923))
(get-model)

(declare-fun d!795870 () Bool)

(assert (=> d!795870 true))

(declare-fun lt!971423 () Bool)

(declare-fun lambda!100848 () Int)

(declare-fun forall!6577 (List!31676 Int) Bool)

(assert (=> d!795870 (= lt!971423 (forall!6577 rulesArg!249 lambda!100848))))

(declare-fun e!1728813 () Bool)

(assert (=> d!795870 (= lt!971423 e!1728813)))

(declare-fun res!1152005 () Bool)

(assert (=> d!795870 (=> res!1152005 e!1728813)))

(assert (=> d!795870 (= res!1152005 (not ((_ is Cons!31576) rulesArg!249)))))

(assert (=> d!795870 (= (rulesValidInductive!1701 thiss!15207 rulesArg!249) lt!971423)))

(declare-fun b!2744651 () Bool)

(declare-fun e!1728812 () Bool)

(assert (=> b!2744651 (= e!1728813 e!1728812)))

(declare-fun res!1152006 () Bool)

(assert (=> b!2744651 (=> (not res!1152006) (not e!1728812))))

(declare-fun ruleValid!1585 (LexerInterface!4431 Rule!9474) Bool)

(assert (=> b!2744651 (= res!1152006 (ruleValid!1585 thiss!15207 (h!36996 rulesArg!249)))))

(declare-fun b!2744652 () Bool)

(assert (=> b!2744652 (= e!1728812 (rulesValidInductive!1701 thiss!15207 (t!227764 rulesArg!249)))))

(assert (= (and d!795870 (not res!1152005)) b!2744651))

(assert (= (and b!2744651 res!1152006) b!2744652))

(declare-fun m!3161769 () Bool)

(assert (=> d!795870 m!3161769))

(declare-fun m!3161771 () Bool)

(assert (=> b!2744651 m!3161771))

(assert (=> b!2744652 m!3161763))

(assert (=> b!2744644 d!795870))

(declare-fun d!795872 () Bool)

(assert (=> d!795872 (= (inv!42925 (tag!5341 (h!36996 rulesArg!249))) (= (mod (str.len (value!155455 (tag!5341 (h!36996 rulesArg!249)))) 2) 0))))

(assert (=> b!2744623 d!795872))

(declare-fun d!795874 () Bool)

(declare-fun res!1152009 () Bool)

(declare-fun e!1728816 () Bool)

(assert (=> d!795874 (=> (not res!1152009) (not e!1728816))))

(declare-fun semiInverseModEq!1997 (Int Int) Bool)

(assert (=> d!795874 (= res!1152009 (semiInverseModEq!1997 (toChars!6694 (transformation!4837 (h!36996 rulesArg!249))) (toValue!6835 (transformation!4837 (h!36996 rulesArg!249)))))))

(assert (=> d!795874 (= (inv!42926 (transformation!4837 (h!36996 rulesArg!249))) e!1728816)))

(declare-fun b!2744657 () Bool)

(declare-fun equivClasses!1898 (Int Int) Bool)

(assert (=> b!2744657 (= e!1728816 (equivClasses!1898 (toChars!6694 (transformation!4837 (h!36996 rulesArg!249))) (toValue!6835 (transformation!4837 (h!36996 rulesArg!249)))))))

(assert (= (and d!795874 res!1152009) b!2744657))

(declare-fun m!3161773 () Bool)

(assert (=> d!795874 m!3161773))

(declare-fun m!3161775 () Bool)

(assert (=> b!2744657 m!3161775))

(assert (=> b!2744623 d!795874))

(declare-fun bs!490249 () Bool)

(declare-fun d!795876 () Bool)

(assert (= bs!490249 (and d!795876 d!795870)))

(declare-fun lambda!100849 () Int)

(assert (=> bs!490249 (= lambda!100849 lambda!100848)))

(assert (=> d!795876 true))

(declare-fun lt!971424 () Bool)

(assert (=> d!795876 (= lt!971424 (forall!6577 (t!227764 rulesArg!249) lambda!100849))))

(declare-fun e!1728818 () Bool)

(assert (=> d!795876 (= lt!971424 e!1728818)))

(declare-fun res!1152010 () Bool)

(assert (=> d!795876 (=> res!1152010 e!1728818)))

(assert (=> d!795876 (= res!1152010 (not ((_ is Cons!31576) (t!227764 rulesArg!249))))))

(assert (=> d!795876 (= (rulesValidInductive!1701 thiss!15207 (t!227764 rulesArg!249)) lt!971424)))

(declare-fun b!2744658 () Bool)

(declare-fun e!1728817 () Bool)

(assert (=> b!2744658 (= e!1728818 e!1728817)))

(declare-fun res!1152011 () Bool)

(assert (=> b!2744658 (=> (not res!1152011) (not e!1728817))))

(assert (=> b!2744658 (= res!1152011 (ruleValid!1585 thiss!15207 (h!36996 (t!227764 rulesArg!249))))))

(declare-fun b!2744659 () Bool)

(assert (=> b!2744659 (= e!1728817 (rulesValidInductive!1701 thiss!15207 (t!227764 (t!227764 rulesArg!249))))))

(assert (= (and d!795876 (not res!1152010)) b!2744658))

(assert (= (and b!2744658 res!1152011) b!2744659))

(declare-fun m!3161777 () Bool)

(assert (=> d!795876 m!3161777))

(declare-fun m!3161779 () Bool)

(assert (=> b!2744658 m!3161779))

(declare-fun m!3161781 () Bool)

(assert (=> b!2744659 m!3161781))

(assert (=> b!2744633 d!795876))

(declare-fun b!2744670 () Bool)

(declare-fun e!1728825 () Bool)

(declare-fun lt!971438 () List!31675)

(declare-fun matchR!3653 (Regex!7991 List!31675) Bool)

(declare-datatypes ((tuple2!31380 0))(
  ( (tuple2!31381 (_1!18357 List!31675) (_2!18357 List!31675)) )
))
(declare-fun findLongestMatchInner!800 (Regex!7991 List!31675 Int List!31675 List!31675 Int) tuple2!31380)

(declare-fun size!24382 (List!31675) Int)

(assert (=> b!2744670 (= e!1728825 (matchR!3653 (regex!4837 (h!36996 rulesArg!249)) (_1!18357 (findLongestMatchInner!800 (regex!4837 (h!36996 rulesArg!249)) Nil!31575 (size!24382 Nil!31575) lt!971438 lt!971438 (size!24382 lt!971438)))))))

(declare-fun b!2744671 () Bool)

(declare-fun e!1728826 () Option!6233)

(declare-datatypes ((tuple2!31382 0))(
  ( (tuple2!31383 (_1!18358 BalanceConc!19374) (_2!18358 BalanceConc!19374)) )
))
(declare-datatypes ((tuple3!4394 0))(
  ( (tuple3!4395 (_1!18359 tuple2!31382) (_2!18359 CacheUp!2208) (_3!2667 CacheDown!2326)) )
))
(declare-fun lt!971441 () tuple3!4394)

(declare-fun apply!7425 (TokenValueInjection!9558 BalanceConc!19374) TokenValue!5059)

(declare-fun size!24383 (BalanceConc!19374) Int)

(assert (=> b!2744671 (= e!1728826 (Some!6232 (tuple2!31379 (Token!9109 (apply!7425 (transformation!4837 (h!36996 rulesArg!249)) (_1!18358 (_1!18359 lt!971441))) (h!36996 rulesArg!249) (size!24383 (_1!18358 (_1!18359 lt!971441))) (list!11989 (_1!18358 (_1!18359 lt!971441)))) (_2!18358 (_1!18359 lt!971441)))))))

(assert (=> b!2744671 (= lt!971438 (list!11989 input!1326))))

(declare-fun lt!971440 () Unit!45512)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!773 (Regex!7991 List!31675) Unit!45512)

(assert (=> b!2744671 (= lt!971440 (longestMatchIsAcceptedByMatchOrIsEmpty!773 (regex!4837 (h!36996 rulesArg!249)) lt!971438))))

(declare-fun res!1152020 () Bool)

(declare-fun isEmpty!18031 (List!31675) Bool)

(assert (=> b!2744671 (= res!1152020 (isEmpty!18031 (_1!18357 (findLongestMatchInner!800 (regex!4837 (h!36996 rulesArg!249)) Nil!31575 (size!24382 Nil!31575) lt!971438 lt!971438 (size!24382 lt!971438)))))))

(assert (=> b!2744671 (=> res!1152020 e!1728825)))

(assert (=> b!2744671 e!1728825))

(declare-fun lt!971442 () Unit!45512)

(assert (=> b!2744671 (= lt!971442 lt!971440)))

(declare-fun lt!971439 () Unit!45512)

(declare-fun lemmaSemiInverse!1140 (TokenValueInjection!9558 BalanceConc!19374) Unit!45512)

(assert (=> b!2744671 (= lt!971439 (lemmaSemiInverse!1140 (transformation!4837 (h!36996 rulesArg!249)) (_1!18358 (_1!18359 lt!971441))))))

(declare-fun b!2744672 () Bool)

(declare-fun e!1728827 () Bool)

(declare-fun lt!971437 () tuple3!4392)

(assert (=> b!2744672 (= e!1728827 (valid!2790 (_3!2666 lt!971437)))))

(declare-fun d!795878 () Bool)

(assert (=> d!795878 e!1728827))

(declare-fun res!1152018 () Bool)

(assert (=> d!795878 (=> (not res!1152018) (not e!1728827))))

(declare-fun maxPrefixOneRuleZipperSequence!499 (LexerInterface!4431 Rule!9474 BalanceConc!19374) Option!6233)

(assert (=> d!795878 (= res!1152018 (= (_1!18356 lt!971437) (maxPrefixOneRuleZipperSequence!499 thiss!15207 (h!36996 rulesArg!249) input!1326)))))

(assert (=> d!795878 (= lt!971437 (tuple3!4393 e!1728826 (_2!18359 lt!971441) (_3!2667 lt!971441)))))

(declare-fun c!444810 () Bool)

(declare-fun isEmpty!18032 (BalanceConc!19374) Bool)

(assert (=> d!795878 (= c!444810 (isEmpty!18032 (_1!18358 (_1!18359 lt!971441))))))

(declare-fun findLongestMatchWithZipperSequenceMem!7 (Regex!7991 BalanceConc!19374 CacheUp!2208 CacheDown!2326) tuple3!4394)

(assert (=> d!795878 (= lt!971441 (findLongestMatchWithZipperSequenceMem!7 (regex!4837 (h!36996 rulesArg!249)) input!1326 cacheUp!633 cacheDown!646))))

(assert (=> d!795878 (ruleValid!1585 thiss!15207 (h!36996 rulesArg!249))))

(assert (=> d!795878 (= (maxPrefixOneRuleZipperSequenceMem!19 thiss!15207 (h!36996 rulesArg!249) input!1326 cacheUp!633 cacheDown!646) lt!971437)))

(declare-fun b!2744673 () Bool)

(declare-fun res!1152019 () Bool)

(assert (=> b!2744673 (=> (not res!1152019) (not e!1728827))))

(assert (=> b!2744673 (= res!1152019 (valid!2791 (_2!18356 lt!971437)))))

(declare-fun b!2744674 () Bool)

(assert (=> b!2744674 (= e!1728826 None!6232)))

(assert (= (and d!795878 c!444810) b!2744674))

(assert (= (and d!795878 (not c!444810)) b!2744671))

(assert (= (and b!2744671 (not res!1152020)) b!2744670))

(assert (= (and d!795878 res!1152018) b!2744673))

(assert (= (and b!2744673 res!1152019) b!2744672))

(declare-fun m!3161783 () Bool)

(assert (=> b!2744670 m!3161783))

(declare-fun m!3161785 () Bool)

(assert (=> b!2744670 m!3161785))

(assert (=> b!2744670 m!3161783))

(assert (=> b!2744670 m!3161785))

(declare-fun m!3161787 () Bool)

(assert (=> b!2744670 m!3161787))

(declare-fun m!3161789 () Bool)

(assert (=> b!2744670 m!3161789))

(declare-fun m!3161791 () Bool)

(assert (=> b!2744673 m!3161791))

(assert (=> b!2744671 m!3161735))

(declare-fun m!3161793 () Bool)

(assert (=> b!2744671 m!3161793))

(declare-fun m!3161795 () Bool)

(assert (=> b!2744671 m!3161795))

(assert (=> b!2744671 m!3161783))

(declare-fun m!3161797 () Bool)

(assert (=> b!2744671 m!3161797))

(assert (=> b!2744671 m!3161785))

(declare-fun m!3161799 () Bool)

(assert (=> b!2744671 m!3161799))

(declare-fun m!3161801 () Bool)

(assert (=> b!2744671 m!3161801))

(declare-fun m!3161803 () Bool)

(assert (=> b!2744671 m!3161803))

(assert (=> b!2744671 m!3161783))

(assert (=> b!2744671 m!3161785))

(assert (=> b!2744671 m!3161787))

(declare-fun m!3161805 () Bool)

(assert (=> b!2744672 m!3161805))

(declare-fun m!3161807 () Bool)

(assert (=> d!795878 m!3161807))

(declare-fun m!3161809 () Bool)

(assert (=> d!795878 m!3161809))

(declare-fun m!3161811 () Bool)

(assert (=> d!795878 m!3161811))

(assert (=> d!795878 m!3161771))

(assert (=> b!2744633 d!795878))

(declare-fun d!795880 () Bool)

(assert (=> d!795880 (= (array_inv!4083 (_keys!3895 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))))) (bvsge (size!24378 (_keys!3895 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2744621 d!795880))

(declare-fun d!795882 () Bool)

(assert (=> d!795882 (= (array_inv!4084 (_values!3876 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))))) (bvsge (size!24379 (_values!3876 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2744621 d!795882))

(declare-fun d!795884 () Bool)

(declare-fun c!444813 () Bool)

(assert (=> d!795884 (= c!444813 ((_ is Node!9880) (c!444806 input!1326)))))

(declare-fun e!1728832 () Bool)

(assert (=> d!795884 (= (inv!42927 (c!444806 input!1326)) e!1728832)))

(declare-fun b!2744681 () Bool)

(declare-fun inv!42931 (Conc!9880) Bool)

(assert (=> b!2744681 (= e!1728832 (inv!42931 (c!444806 input!1326)))))

(declare-fun b!2744682 () Bool)

(declare-fun e!1728833 () Bool)

(assert (=> b!2744682 (= e!1728832 e!1728833)))

(declare-fun res!1152023 () Bool)

(assert (=> b!2744682 (= res!1152023 (not ((_ is Leaf!15044) (c!444806 input!1326))))))

(assert (=> b!2744682 (=> res!1152023 e!1728833)))

(declare-fun b!2744683 () Bool)

(declare-fun inv!42932 (Conc!9880) Bool)

(assert (=> b!2744683 (= e!1728833 (inv!42932 (c!444806 input!1326)))))

(assert (= (and d!795884 c!444813) b!2744681))

(assert (= (and d!795884 (not c!444813)) b!2744682))

(assert (= (and b!2744682 (not res!1152023)) b!2744683))

(declare-fun m!3161813 () Bool)

(assert (=> b!2744681 m!3161813))

(declare-fun m!3161815 () Bool)

(assert (=> b!2744683 m!3161815))

(assert (=> b!2744630 d!795884))

(declare-fun d!795886 () Bool)

(assert (=> d!795886 (= (isEmpty!18030 (t!227764 rulesArg!249)) ((_ is Nil!31576) (t!227764 rulesArg!249)))))

(assert (=> b!2744641 d!795886))

(declare-fun b!2744692 () Bool)

(declare-fun e!1728842 () Bool)

(declare-fun e!1728841 () Bool)

(assert (=> b!2744692 (= e!1728842 e!1728841)))

(declare-fun res!1152034 () Bool)

(assert (=> b!2744692 (=> (not res!1152034) (not e!1728841))))

(assert (=> b!2744692 (= res!1152034 (not ((_ is Nil!31575) lt!971418)))))

(declare-fun b!2744694 () Bool)

(declare-fun tail!4350 (List!31675) List!31675)

(assert (=> b!2744694 (= e!1728841 (isPrefix!2513 (tail!4350 lt!971418) (tail!4350 lt!971418)))))

(declare-fun d!795888 () Bool)

(declare-fun e!1728840 () Bool)

(assert (=> d!795888 e!1728840))

(declare-fun res!1152035 () Bool)

(assert (=> d!795888 (=> res!1152035 e!1728840)))

(declare-fun lt!971445 () Bool)

(assert (=> d!795888 (= res!1152035 (not lt!971445))))

(assert (=> d!795888 (= lt!971445 e!1728842)))

(declare-fun res!1152032 () Bool)

(assert (=> d!795888 (=> res!1152032 e!1728842)))

(assert (=> d!795888 (= res!1152032 ((_ is Nil!31575) lt!971418))))

(assert (=> d!795888 (= (isPrefix!2513 lt!971418 lt!971418) lt!971445)))

(declare-fun b!2744693 () Bool)

(declare-fun res!1152033 () Bool)

(assert (=> b!2744693 (=> (not res!1152033) (not e!1728841))))

(declare-fun head!6112 (List!31675) C!16140)

(assert (=> b!2744693 (= res!1152033 (= (head!6112 lt!971418) (head!6112 lt!971418)))))

(declare-fun b!2744695 () Bool)

(assert (=> b!2744695 (= e!1728840 (>= (size!24382 lt!971418) (size!24382 lt!971418)))))

(assert (= (and d!795888 (not res!1152032)) b!2744692))

(assert (= (and b!2744692 res!1152034) b!2744693))

(assert (= (and b!2744693 res!1152033) b!2744694))

(assert (= (and d!795888 (not res!1152035)) b!2744695))

(declare-fun m!3161817 () Bool)

(assert (=> b!2744694 m!3161817))

(assert (=> b!2744694 m!3161817))

(assert (=> b!2744694 m!3161817))

(assert (=> b!2744694 m!3161817))

(declare-fun m!3161819 () Bool)

(assert (=> b!2744694 m!3161819))

(declare-fun m!3161821 () Bool)

(assert (=> b!2744693 m!3161821))

(assert (=> b!2744693 m!3161821))

(declare-fun m!3161823 () Bool)

(assert (=> b!2744695 m!3161823))

(assert (=> b!2744695 m!3161823))

(assert (=> b!2744620 d!795888))

(declare-fun d!795890 () Bool)

(assert (=> d!795890 (isPrefix!2513 lt!971418 lt!971418)))

(declare-fun lt!971448 () Unit!45512)

(declare-fun choose!16065 (List!31675 List!31675) Unit!45512)

(assert (=> d!795890 (= lt!971448 (choose!16065 lt!971418 lt!971418))))

(assert (=> d!795890 (= (lemmaIsPrefixRefl!1639 lt!971418 lt!971418) lt!971448)))

(declare-fun bs!490250 () Bool)

(assert (= bs!490250 d!795890))

(assert (=> bs!490250 m!3161731))

(declare-fun m!3161825 () Bool)

(assert (=> bs!490250 m!3161825))

(assert (=> b!2744620 d!795890))

(declare-fun d!795892 () Bool)

(declare-fun list!11990 (Conc!9880) List!31675)

(assert (=> d!795892 (= (list!11989 input!1326) (list!11990 (c!444806 input!1326)))))

(declare-fun bs!490251 () Bool)

(assert (= bs!490251 d!795892))

(declare-fun m!3161827 () Bool)

(assert (=> bs!490251 m!3161827))

(assert (=> b!2744620 d!795892))

(declare-fun d!795894 () Bool)

(declare-fun validCacheMapUp!335 (MutableMap!3501) Bool)

(assert (=> d!795894 (= (valid!2791 (_2!18356 lt!971416)) (validCacheMapUp!335 (cache!3644 (_2!18356 lt!971416))))))

(declare-fun bs!490252 () Bool)

(assert (= bs!490252 d!795894))

(declare-fun m!3161829 () Bool)

(assert (=> bs!490252 m!3161829))

(assert (=> b!2744628 d!795894))

(declare-fun d!795896 () Bool)

(assert (=> d!795896 (= (isEmpty!18030 rulesArg!249) ((_ is Nil!31576) rulesArg!249))))

(assert (=> b!2744646 d!795896))

(declare-fun d!795898 () Bool)

(declare-fun validCacheMapDown!366 (MutableMap!3502) Bool)

(assert (=> d!795898 (= (valid!2790 cacheDown!646) (validCacheMapDown!366 (cache!3645 cacheDown!646)))))

(declare-fun bs!490253 () Bool)

(assert (= bs!490253 d!795898))

(declare-fun m!3161831 () Bool)

(assert (=> bs!490253 m!3161831))

(assert (=> b!2744627 d!795898))

(declare-fun d!795900 () Bool)

(assert (=> d!795900 (= (valid!2790 (_3!2666 lt!971416)) (validCacheMapDown!366 (cache!3645 (_3!2666 lt!971416))))))

(declare-fun bs!490254 () Bool)

(assert (= bs!490254 d!795900))

(declare-fun m!3161833 () Bool)

(assert (=> bs!490254 m!3161833))

(assert (=> b!2744626 d!795900))

(declare-fun d!795902 () Bool)

(declare-fun res!1152038 () Bool)

(declare-fun e!1728845 () Bool)

(assert (=> d!795902 (=> (not res!1152038) (not e!1728845))))

(assert (=> d!795902 (= res!1152038 ((_ is HashMap!3502) (cache!3645 cacheDown!646)))))

(assert (=> d!795902 (= (inv!42928 cacheDown!646) e!1728845)))

(declare-fun b!2744698 () Bool)

(assert (=> b!2744698 (= e!1728845 (validCacheMapDown!366 (cache!3645 cacheDown!646)))))

(assert (= (and d!795902 res!1152038) b!2744698))

(assert (=> b!2744698 m!3161831))

(assert (=> start!266054 d!795902))

(declare-fun d!795904 () Bool)

(declare-fun isBalanced!3010 (Conc!9880) Bool)

(assert (=> d!795904 (= (inv!42929 input!1326) (isBalanced!3010 (c!444806 input!1326)))))

(declare-fun bs!490255 () Bool)

(assert (= bs!490255 d!795904))

(declare-fun m!3161835 () Bool)

(assert (=> bs!490255 m!3161835))

(assert (=> start!266054 d!795904))

(declare-fun d!795906 () Bool)

(declare-fun res!1152041 () Bool)

(declare-fun e!1728848 () Bool)

(assert (=> d!795906 (=> (not res!1152041) (not e!1728848))))

(assert (=> d!795906 (= res!1152041 ((_ is HashMap!3501) (cache!3644 cacheUp!633)))))

(assert (=> d!795906 (= (inv!42930 cacheUp!633) e!1728848)))

(declare-fun b!2744701 () Bool)

(assert (=> b!2744701 (= e!1728848 (validCacheMapUp!335 (cache!3644 cacheUp!633)))))

(assert (= (and d!795906 res!1152041) b!2744701))

(declare-fun m!3161837 () Bool)

(assert (=> b!2744701 m!3161837))

(assert (=> start!266054 d!795906))

(declare-fun d!795908 () Bool)

(assert (=> d!795908 (= (array_inv!4083 (_keys!3896 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))))) (bvsge (size!24378 (_keys!3896 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2744637 d!795908))

(declare-fun d!795910 () Bool)

(assert (=> d!795910 (= (array_inv!4085 (_values!3877 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))))) (bvsge (size!24380 (_values!3877 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2744637 d!795910))

(declare-fun d!795912 () Bool)

(assert (=> d!795912 (= (valid!2791 cacheUp!633) (validCacheMapUp!335 (cache!3644 cacheUp!633)))))

(declare-fun bs!490256 () Bool)

(assert (= bs!490256 d!795912))

(assert (=> bs!490256 m!3161837))

(assert (=> b!2744635 d!795912))

(declare-fun b!2744715 () Bool)

(declare-fun e!1728851 () Bool)

(declare-fun tp!863801 () Bool)

(declare-fun tp!863802 () Bool)

(assert (=> b!2744715 (= e!1728851 (and tp!863801 tp!863802))))

(declare-fun b!2744712 () Bool)

(declare-fun tp_is_empty!13925 () Bool)

(assert (=> b!2744712 (= e!1728851 tp_is_empty!13925)))

(declare-fun b!2744714 () Bool)

(declare-fun tp!863803 () Bool)

(assert (=> b!2744714 (= e!1728851 tp!863803)))

(declare-fun b!2744713 () Bool)

(declare-fun tp!863800 () Bool)

(declare-fun tp!863804 () Bool)

(assert (=> b!2744713 (= e!1728851 (and tp!863800 tp!863804))))

(assert (=> b!2744623 (= tp!863774 e!1728851)))

(assert (= (and b!2744623 ((_ is ElementMatch!7991) (regex!4837 (h!36996 rulesArg!249)))) b!2744712))

(assert (= (and b!2744623 ((_ is Concat!13051) (regex!4837 (h!36996 rulesArg!249)))) b!2744713))

(assert (= (and b!2744623 ((_ is Star!7991) (regex!4837 (h!36996 rulesArg!249)))) b!2744714))

(assert (= (and b!2744623 ((_ is Union!7991) (regex!4837 (h!36996 rulesArg!249)))) b!2744715))

(declare-fun setIsEmpty!21575 () Bool)

(declare-fun setRes!21576 () Bool)

(assert (=> setIsEmpty!21575 setRes!21576))

(declare-fun b!2744730 () Bool)

(declare-fun e!1728868 () Bool)

(declare-fun tp!863832 () Bool)

(assert (=> b!2744730 (= e!1728868 tp!863832)))

(declare-fun condMapEmpty!16407 () Bool)

(declare-fun mapDefault!16407 () List!31679)

(assert (=> mapNonEmpty!16404 (= condMapEmpty!16407 (= mapRest!16404 ((as const (Array (_ BitVec 32) List!31679)) mapDefault!16407)))))

(declare-fun e!1728864 () Bool)

(declare-fun mapRes!16407 () Bool)

(assert (=> mapNonEmpty!16404 (= tp!863789 (and e!1728864 mapRes!16407))))

(declare-fun tp!863834 () Bool)

(declare-fun e!1728867 () Bool)

(declare-fun b!2744731 () Bool)

(declare-fun e!1728865 () Bool)

(declare-fun tp!863830 () Bool)

(declare-fun mapValue!16407 () List!31679)

(declare-fun inv!42933 (Context!4418) Bool)

(assert (=> b!2744731 (= e!1728867 (and tp!863830 (inv!42933 (_2!18353 (_1!18354 (h!36999 mapValue!16407)))) e!1728865 tp_is_empty!13925 setRes!21576 tp!863834))))

(declare-fun condSetEmpty!21575 () Bool)

(assert (=> b!2744731 (= condSetEmpty!21575 (= (_2!18354 (h!36999 mapValue!16407)) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun setIsEmpty!21576 () Bool)

(declare-fun setRes!21575 () Bool)

(assert (=> setIsEmpty!21576 setRes!21575))

(declare-fun setNonEmpty!21575 () Bool)

(declare-fun tp!863831 () Bool)

(declare-fun setElem!21575 () Context!4418)

(declare-fun e!1728866 () Bool)

(assert (=> setNonEmpty!21575 (= setRes!21575 (and tp!863831 (inv!42933 setElem!21575) e!1728866))))

(declare-fun setRest!21576 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21575 (= (_2!18354 (h!36999 mapDefault!16407)) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21575 true) setRest!21576))))

(declare-fun mapNonEmpty!16407 () Bool)

(declare-fun tp!863836 () Bool)

(assert (=> mapNonEmpty!16407 (= mapRes!16407 (and tp!863836 e!1728867))))

(declare-fun mapKey!16407 () (_ BitVec 32))

(declare-fun mapRest!16407 () (Array (_ BitVec 32) List!31679))

(assert (=> mapNonEmpty!16407 (= mapRest!16404 (store mapRest!16407 mapKey!16407 mapValue!16407))))

(declare-fun mapIsEmpty!16407 () Bool)

(assert (=> mapIsEmpty!16407 mapRes!16407))

(declare-fun tp!863827 () Bool)

(declare-fun tp!863828 () Bool)

(declare-fun b!2744732 () Bool)

(assert (=> b!2744732 (= e!1728864 (and tp!863828 (inv!42933 (_2!18353 (_1!18354 (h!36999 mapDefault!16407)))) e!1728868 tp_is_empty!13925 setRes!21575 tp!863827))))

(declare-fun condSetEmpty!21576 () Bool)

(assert (=> b!2744732 (= condSetEmpty!21576 (= (_2!18354 (h!36999 mapDefault!16407)) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun b!2744733 () Bool)

(declare-fun tp!863835 () Bool)

(assert (=> b!2744733 (= e!1728866 tp!863835)))

(declare-fun setElem!21576 () Context!4418)

(declare-fun e!1728869 () Bool)

(declare-fun setNonEmpty!21576 () Bool)

(declare-fun tp!863837 () Bool)

(assert (=> setNonEmpty!21576 (= setRes!21576 (and tp!863837 (inv!42933 setElem!21576) e!1728869))))

(declare-fun setRest!21575 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21576 (= (_2!18354 (h!36999 mapValue!16407)) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21576 true) setRest!21575))))

(declare-fun b!2744734 () Bool)

(declare-fun tp!863833 () Bool)

(assert (=> b!2744734 (= e!1728869 tp!863833)))

(declare-fun b!2744735 () Bool)

(declare-fun tp!863829 () Bool)

(assert (=> b!2744735 (= e!1728865 tp!863829)))

(assert (= (and mapNonEmpty!16404 condMapEmpty!16407) mapIsEmpty!16407))

(assert (= (and mapNonEmpty!16404 (not condMapEmpty!16407)) mapNonEmpty!16407))

(assert (= b!2744731 b!2744735))

(assert (= (and b!2744731 condSetEmpty!21575) setIsEmpty!21575))

(assert (= (and b!2744731 (not condSetEmpty!21575)) setNonEmpty!21576))

(assert (= setNonEmpty!21576 b!2744734))

(assert (= (and mapNonEmpty!16407 ((_ is Cons!31579) mapValue!16407)) b!2744731))

(assert (= b!2744732 b!2744730))

(assert (= (and b!2744732 condSetEmpty!21576) setIsEmpty!21576))

(assert (= (and b!2744732 (not condSetEmpty!21576)) setNonEmpty!21575))

(assert (= setNonEmpty!21575 b!2744733))

(assert (= (and mapNonEmpty!16404 ((_ is Cons!31579) mapDefault!16407)) b!2744732))

(declare-fun m!3161839 () Bool)

(assert (=> b!2744732 m!3161839))

(declare-fun m!3161841 () Bool)

(assert (=> b!2744731 m!3161841))

(declare-fun m!3161843 () Bool)

(assert (=> setNonEmpty!21575 m!3161843))

(declare-fun m!3161845 () Bool)

(assert (=> mapNonEmpty!16407 m!3161845))

(declare-fun m!3161847 () Bool)

(assert (=> setNonEmpty!21576 m!3161847))

(declare-fun b!2744744 () Bool)

(declare-fun e!1728877 () Bool)

(declare-fun tp!863850 () Bool)

(declare-fun e!1728876 () Bool)

(declare-fun tp!863848 () Bool)

(declare-fun setRes!21579 () Bool)

(assert (=> b!2744744 (= e!1728876 (and tp!863850 (inv!42933 (_2!18353 (_1!18354 (h!36999 mapValue!16404)))) e!1728877 tp_is_empty!13925 setRes!21579 tp!863848))))

(declare-fun condSetEmpty!21579 () Bool)

(assert (=> b!2744744 (= condSetEmpty!21579 (= (_2!18354 (h!36999 mapValue!16404)) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun setNonEmpty!21579 () Bool)

(declare-fun e!1728878 () Bool)

(declare-fun tp!863851 () Bool)

(declare-fun setElem!21579 () Context!4418)

(assert (=> setNonEmpty!21579 (= setRes!21579 (and tp!863851 (inv!42933 setElem!21579) e!1728878))))

(declare-fun setRest!21579 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21579 (= (_2!18354 (h!36999 mapValue!16404)) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21579 true) setRest!21579))))

(declare-fun b!2744745 () Bool)

(declare-fun tp!863849 () Bool)

(assert (=> b!2744745 (= e!1728878 tp!863849)))

(declare-fun b!2744746 () Bool)

(declare-fun tp!863852 () Bool)

(assert (=> b!2744746 (= e!1728877 tp!863852)))

(declare-fun setIsEmpty!21579 () Bool)

(assert (=> setIsEmpty!21579 setRes!21579))

(assert (=> mapNonEmpty!16404 (= tp!863780 e!1728876)))

(assert (= b!2744744 b!2744746))

(assert (= (and b!2744744 condSetEmpty!21579) setIsEmpty!21579))

(assert (= (and b!2744744 (not condSetEmpty!21579)) setNonEmpty!21579))

(assert (= setNonEmpty!21579 b!2744745))

(assert (= (and mapNonEmpty!16404 ((_ is Cons!31579) mapValue!16404)) b!2744744))

(declare-fun m!3161849 () Bool)

(assert (=> b!2744744 m!3161849))

(declare-fun m!3161851 () Bool)

(assert (=> setNonEmpty!21579 m!3161851))

(declare-fun e!1728880 () Bool)

(declare-fun tp!863853 () Bool)

(declare-fun e!1728879 () Bool)

(declare-fun b!2744747 () Bool)

(declare-fun tp!863855 () Bool)

(declare-fun setRes!21580 () Bool)

(assert (=> b!2744747 (= e!1728879 (and tp!863855 (inv!42933 (_2!18353 (_1!18354 (h!36999 (zeroValue!3855 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646)))))))))) e!1728880 tp_is_empty!13925 setRes!21580 tp!863853))))

(declare-fun condSetEmpty!21580 () Bool)

(assert (=> b!2744747 (= condSetEmpty!21580 (= (_2!18354 (h!36999 (zeroValue!3855 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646)))))))) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun setElem!21580 () Context!4418)

(declare-fun tp!863856 () Bool)

(declare-fun setNonEmpty!21580 () Bool)

(declare-fun e!1728881 () Bool)

(assert (=> setNonEmpty!21580 (= setRes!21580 (and tp!863856 (inv!42933 setElem!21580) e!1728881))))

(declare-fun setRest!21580 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21580 (= (_2!18354 (h!36999 (zeroValue!3855 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21580 true) setRest!21580))))

(declare-fun b!2744748 () Bool)

(declare-fun tp!863854 () Bool)

(assert (=> b!2744748 (= e!1728881 tp!863854)))

(declare-fun b!2744749 () Bool)

(declare-fun tp!863857 () Bool)

(assert (=> b!2744749 (= e!1728880 tp!863857)))

(declare-fun setIsEmpty!21580 () Bool)

(assert (=> setIsEmpty!21580 setRes!21580))

(assert (=> b!2744637 (= tp!863775 e!1728879)))

(assert (= b!2744747 b!2744749))

(assert (= (and b!2744747 condSetEmpty!21580) setIsEmpty!21580))

(assert (= (and b!2744747 (not condSetEmpty!21580)) setNonEmpty!21580))

(assert (= setNonEmpty!21580 b!2744748))

(assert (= (and b!2744637 ((_ is Cons!31579) (zeroValue!3855 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646)))))))) b!2744747))

(declare-fun m!3161853 () Bool)

(assert (=> b!2744747 m!3161853))

(declare-fun m!3161855 () Bool)

(assert (=> setNonEmpty!21580 m!3161855))

(declare-fun tp!863860 () Bool)

(declare-fun b!2744750 () Bool)

(declare-fun setRes!21581 () Bool)

(declare-fun e!1728882 () Bool)

(declare-fun e!1728883 () Bool)

(declare-fun tp!863858 () Bool)

(assert (=> b!2744750 (= e!1728882 (and tp!863860 (inv!42933 (_2!18353 (_1!18354 (h!36999 (minValue!3855 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646)))))))))) e!1728883 tp_is_empty!13925 setRes!21581 tp!863858))))

(declare-fun condSetEmpty!21581 () Bool)

(assert (=> b!2744750 (= condSetEmpty!21581 (= (_2!18354 (h!36999 (minValue!3855 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646)))))))) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun e!1728884 () Bool)

(declare-fun tp!863861 () Bool)

(declare-fun setNonEmpty!21581 () Bool)

(declare-fun setElem!21581 () Context!4418)

(assert (=> setNonEmpty!21581 (= setRes!21581 (and tp!863861 (inv!42933 setElem!21581) e!1728884))))

(declare-fun setRest!21581 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21581 (= (_2!18354 (h!36999 (minValue!3855 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21581 true) setRest!21581))))

(declare-fun b!2744751 () Bool)

(declare-fun tp!863859 () Bool)

(assert (=> b!2744751 (= e!1728884 tp!863859)))

(declare-fun b!2744752 () Bool)

(declare-fun tp!863862 () Bool)

(assert (=> b!2744752 (= e!1728883 tp!863862)))

(declare-fun setIsEmpty!21581 () Bool)

(assert (=> setIsEmpty!21581 setRes!21581))

(assert (=> b!2744637 (= tp!863783 e!1728882)))

(assert (= b!2744750 b!2744752))

(assert (= (and b!2744750 condSetEmpty!21581) setIsEmpty!21581))

(assert (= (and b!2744750 (not condSetEmpty!21581)) setNonEmpty!21581))

(assert (= setNonEmpty!21581 b!2744751))

(assert (= (and b!2744637 ((_ is Cons!31579) (minValue!3855 (v!33216 (underlying!7395 (v!33217 (underlying!7396 (cache!3645 cacheDown!646)))))))) b!2744750))

(declare-fun m!3161857 () Bool)

(assert (=> b!2744750 m!3161857))

(declare-fun m!3161859 () Bool)

(assert (=> setNonEmpty!21581 m!3161859))

(declare-fun e!1728893 () Bool)

(assert (=> b!2744621 (= tp!863788 e!1728893)))

(declare-fun e!1728892 () Bool)

(declare-fun tp!863873 () Bool)

(declare-fun setRes!21584 () Bool)

(declare-fun b!2744761 () Bool)

(assert (=> b!2744761 (= e!1728893 (and (inv!42933 (_1!18351 (_1!18352 (h!36998 (zeroValue!3854 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633)))))))))) e!1728892 tp_is_empty!13925 setRes!21584 tp!863873))))

(declare-fun condSetEmpty!21584 () Bool)

(assert (=> b!2744761 (= condSetEmpty!21584 (= (_2!18352 (h!36998 (zeroValue!3854 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633)))))))) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun b!2744762 () Bool)

(declare-fun e!1728891 () Bool)

(declare-fun tp!863874 () Bool)

(assert (=> b!2744762 (= e!1728891 tp!863874)))

(declare-fun setNonEmpty!21584 () Bool)

(declare-fun tp!863871 () Bool)

(declare-fun setElem!21584 () Context!4418)

(assert (=> setNonEmpty!21584 (= setRes!21584 (and tp!863871 (inv!42933 setElem!21584) e!1728891))))

(declare-fun setRest!21584 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21584 (= (_2!18352 (h!36998 (zeroValue!3854 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21584 true) setRest!21584))))

(declare-fun b!2744763 () Bool)

(declare-fun tp!863872 () Bool)

(assert (=> b!2744763 (= e!1728892 tp!863872)))

(declare-fun setIsEmpty!21584 () Bool)

(assert (=> setIsEmpty!21584 setRes!21584))

(assert (= b!2744761 b!2744763))

(assert (= (and b!2744761 condSetEmpty!21584) setIsEmpty!21584))

(assert (= (and b!2744761 (not condSetEmpty!21584)) setNonEmpty!21584))

(assert (= setNonEmpty!21584 b!2744762))

(assert (= (and b!2744621 ((_ is Cons!31578) (zeroValue!3854 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633)))))))) b!2744761))

(declare-fun m!3161861 () Bool)

(assert (=> b!2744761 m!3161861))

(declare-fun m!3161863 () Bool)

(assert (=> setNonEmpty!21584 m!3161863))

(declare-fun e!1728896 () Bool)

(assert (=> b!2744621 (= tp!863785 e!1728896)))

(declare-fun e!1728895 () Bool)

(declare-fun b!2744764 () Bool)

(declare-fun tp!863877 () Bool)

(declare-fun setRes!21585 () Bool)

(assert (=> b!2744764 (= e!1728896 (and (inv!42933 (_1!18351 (_1!18352 (h!36998 (minValue!3854 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633)))))))))) e!1728895 tp_is_empty!13925 setRes!21585 tp!863877))))

(declare-fun condSetEmpty!21585 () Bool)

(assert (=> b!2744764 (= condSetEmpty!21585 (= (_2!18352 (h!36998 (minValue!3854 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633)))))))) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun b!2744765 () Bool)

(declare-fun e!1728894 () Bool)

(declare-fun tp!863878 () Bool)

(assert (=> b!2744765 (= e!1728894 tp!863878)))

(declare-fun setNonEmpty!21585 () Bool)

(declare-fun setElem!21585 () Context!4418)

(declare-fun tp!863875 () Bool)

(assert (=> setNonEmpty!21585 (= setRes!21585 (and tp!863875 (inv!42933 setElem!21585) e!1728894))))

(declare-fun setRest!21585 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21585 (= (_2!18352 (h!36998 (minValue!3854 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21585 true) setRest!21585))))

(declare-fun b!2744766 () Bool)

(declare-fun tp!863876 () Bool)

(assert (=> b!2744766 (= e!1728895 tp!863876)))

(declare-fun setIsEmpty!21585 () Bool)

(assert (=> setIsEmpty!21585 setRes!21585))

(assert (= b!2744764 b!2744766))

(assert (= (and b!2744764 condSetEmpty!21585) setIsEmpty!21585))

(assert (= (and b!2744764 (not condSetEmpty!21585)) setNonEmpty!21585))

(assert (= setNonEmpty!21585 b!2744765))

(assert (= (and b!2744621 ((_ is Cons!31578) (minValue!3854 (v!33214 (underlying!7393 (v!33215 (underlying!7394 (cache!3644 cacheUp!633)))))))) b!2744764))

(declare-fun m!3161865 () Bool)

(assert (=> b!2744764 m!3161865))

(declare-fun m!3161867 () Bool)

(assert (=> setNonEmpty!21585 m!3161867))

(declare-fun b!2744781 () Bool)

(declare-fun e!1728913 () Bool)

(declare-fun tp!863897 () Bool)

(assert (=> b!2744781 (= e!1728913 tp!863897)))

(declare-fun b!2744782 () Bool)

(declare-fun e!1728909 () Bool)

(declare-fun tp!863898 () Bool)

(assert (=> b!2744782 (= e!1728909 tp!863898)))

(declare-fun condMapEmpty!16410 () Bool)

(declare-fun mapDefault!16410 () List!31678)

(assert (=> mapNonEmpty!16403 (= condMapEmpty!16410 (= mapRest!16403 ((as const (Array (_ BitVec 32) List!31678)) mapDefault!16410)))))

(declare-fun e!1728910 () Bool)

(declare-fun mapRes!16410 () Bool)

(assert (=> mapNonEmpty!16403 (= tp!863771 (and e!1728910 mapRes!16410))))

(declare-fun setIsEmpty!21590 () Bool)

(declare-fun setRes!21591 () Bool)

(assert (=> setIsEmpty!21590 setRes!21591))

(declare-fun b!2744783 () Bool)

(declare-fun e!1728912 () Bool)

(declare-fun tp!863902 () Bool)

(assert (=> b!2744783 (= e!1728912 tp!863902)))

(declare-fun tp!863901 () Bool)

(declare-fun b!2744784 () Bool)

(assert (=> b!2744784 (= e!1728910 (and (inv!42933 (_1!18351 (_1!18352 (h!36998 mapDefault!16410)))) e!1728912 tp_is_empty!13925 setRes!21591 tp!863901))))

(declare-fun condSetEmpty!21590 () Bool)

(assert (=> b!2744784 (= condSetEmpty!21590 (= (_2!18352 (h!36998 mapDefault!16410)) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun setNonEmpty!21590 () Bool)

(declare-fun setElem!21590 () Context!4418)

(declare-fun tp!863905 () Bool)

(assert (=> setNonEmpty!21590 (= setRes!21591 (and tp!863905 (inv!42933 setElem!21590) e!1728913))))

(declare-fun setRest!21591 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21590 (= (_2!18352 (h!36998 mapDefault!16410)) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21590 true) setRest!21591))))

(declare-fun e!1728914 () Bool)

(declare-fun tp!863899 () Bool)

(declare-fun setRes!21590 () Bool)

(declare-fun setElem!21591 () Context!4418)

(declare-fun setNonEmpty!21591 () Bool)

(assert (=> setNonEmpty!21591 (= setRes!21590 (and tp!863899 (inv!42933 setElem!21591) e!1728914))))

(declare-fun mapValue!16410 () List!31678)

(declare-fun setRest!21590 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21591 (= (_2!18352 (h!36998 mapValue!16410)) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21591 true) setRest!21590))))

(declare-fun setIsEmpty!21591 () Bool)

(assert (=> setIsEmpty!21591 setRes!21590))

(declare-fun mapNonEmpty!16410 () Bool)

(declare-fun tp!863903 () Bool)

(declare-fun e!1728911 () Bool)

(assert (=> mapNonEmpty!16410 (= mapRes!16410 (and tp!863903 e!1728911))))

(declare-fun mapKey!16410 () (_ BitVec 32))

(declare-fun mapRest!16410 () (Array (_ BitVec 32) List!31678))

(assert (=> mapNonEmpty!16410 (= mapRest!16403 (store mapRest!16410 mapKey!16410 mapValue!16410))))

(declare-fun mapIsEmpty!16410 () Bool)

(assert (=> mapIsEmpty!16410 mapRes!16410))

(declare-fun b!2744785 () Bool)

(declare-fun tp!863904 () Bool)

(assert (=> b!2744785 (= e!1728914 tp!863904)))

(declare-fun b!2744786 () Bool)

(declare-fun tp!863900 () Bool)

(assert (=> b!2744786 (= e!1728911 (and (inv!42933 (_1!18351 (_1!18352 (h!36998 mapValue!16410)))) e!1728909 tp_is_empty!13925 setRes!21590 tp!863900))))

(declare-fun condSetEmpty!21591 () Bool)

(assert (=> b!2744786 (= condSetEmpty!21591 (= (_2!18352 (h!36998 mapValue!16410)) ((as const (Array Context!4418 Bool)) false)))))

(assert (= (and mapNonEmpty!16403 condMapEmpty!16410) mapIsEmpty!16410))

(assert (= (and mapNonEmpty!16403 (not condMapEmpty!16410)) mapNonEmpty!16410))

(assert (= b!2744786 b!2744782))

(assert (= (and b!2744786 condSetEmpty!21591) setIsEmpty!21591))

(assert (= (and b!2744786 (not condSetEmpty!21591)) setNonEmpty!21591))

(assert (= setNonEmpty!21591 b!2744785))

(assert (= (and mapNonEmpty!16410 ((_ is Cons!31578) mapValue!16410)) b!2744786))

(assert (= b!2744784 b!2744783))

(assert (= (and b!2744784 condSetEmpty!21590) setIsEmpty!21590))

(assert (= (and b!2744784 (not condSetEmpty!21590)) setNonEmpty!21590))

(assert (= setNonEmpty!21590 b!2744781))

(assert (= (and mapNonEmpty!16403 ((_ is Cons!31578) mapDefault!16410)) b!2744784))

(declare-fun m!3161869 () Bool)

(assert (=> setNonEmpty!21590 m!3161869))

(declare-fun m!3161871 () Bool)

(assert (=> setNonEmpty!21591 m!3161871))

(declare-fun m!3161873 () Bool)

(assert (=> b!2744784 m!3161873))

(declare-fun m!3161875 () Bool)

(assert (=> b!2744786 m!3161875))

(declare-fun m!3161877 () Bool)

(assert (=> mapNonEmpty!16410 m!3161877))

(declare-fun e!1728917 () Bool)

(assert (=> mapNonEmpty!16403 (= tp!863787 e!1728917)))

(declare-fun setRes!21592 () Bool)

(declare-fun e!1728916 () Bool)

(declare-fun b!2744787 () Bool)

(declare-fun tp!863908 () Bool)

(assert (=> b!2744787 (= e!1728917 (and (inv!42933 (_1!18351 (_1!18352 (h!36998 mapValue!16403)))) e!1728916 tp_is_empty!13925 setRes!21592 tp!863908))))

(declare-fun condSetEmpty!21592 () Bool)

(assert (=> b!2744787 (= condSetEmpty!21592 (= (_2!18352 (h!36998 mapValue!16403)) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun b!2744788 () Bool)

(declare-fun e!1728915 () Bool)

(declare-fun tp!863909 () Bool)

(assert (=> b!2744788 (= e!1728915 tp!863909)))

(declare-fun tp!863906 () Bool)

(declare-fun setNonEmpty!21592 () Bool)

(declare-fun setElem!21592 () Context!4418)

(assert (=> setNonEmpty!21592 (= setRes!21592 (and tp!863906 (inv!42933 setElem!21592) e!1728915))))

(declare-fun setRest!21592 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21592 (= (_2!18352 (h!36998 mapValue!16403)) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21592 true) setRest!21592))))

(declare-fun b!2744789 () Bool)

(declare-fun tp!863907 () Bool)

(assert (=> b!2744789 (= e!1728916 tp!863907)))

(declare-fun setIsEmpty!21592 () Bool)

(assert (=> setIsEmpty!21592 setRes!21592))

(assert (= b!2744787 b!2744789))

(assert (= (and b!2744787 condSetEmpty!21592) setIsEmpty!21592))

(assert (= (and b!2744787 (not condSetEmpty!21592)) setNonEmpty!21592))

(assert (= setNonEmpty!21592 b!2744788))

(assert (= (and mapNonEmpty!16403 ((_ is Cons!31578) mapValue!16403)) b!2744787))

(declare-fun m!3161879 () Bool)

(assert (=> b!2744787 m!3161879))

(declare-fun m!3161881 () Bool)

(assert (=> setNonEmpty!21592 m!3161881))

(declare-fun e!1728923 () Bool)

(declare-fun tp!863918 () Bool)

(declare-fun b!2744798 () Bool)

(declare-fun tp!863917 () Bool)

(assert (=> b!2744798 (= e!1728923 (and (inv!42927 (left!24219 (c!444806 input!1326))) tp!863917 (inv!42927 (right!24549 (c!444806 input!1326))) tp!863918))))

(declare-fun b!2744800 () Bool)

(declare-fun e!1728922 () Bool)

(declare-fun tp!863916 () Bool)

(assert (=> b!2744800 (= e!1728922 tp!863916)))

(declare-fun b!2744799 () Bool)

(declare-fun inv!42934 (IArray!19765) Bool)

(assert (=> b!2744799 (= e!1728923 (and (inv!42934 (xs!12987 (c!444806 input!1326))) e!1728922))))

(assert (=> b!2744630 (= tp!863777 (and (inv!42927 (c!444806 input!1326)) e!1728923))))

(assert (= (and b!2744630 ((_ is Node!9880) (c!444806 input!1326))) b!2744798))

(assert (= b!2744799 b!2744800))

(assert (= (and b!2744630 ((_ is Leaf!15044) (c!444806 input!1326))) b!2744799))

(declare-fun m!3161883 () Bool)

(assert (=> b!2744798 m!3161883))

(declare-fun m!3161885 () Bool)

(assert (=> b!2744798 m!3161885))

(declare-fun m!3161887 () Bool)

(assert (=> b!2744799 m!3161887))

(assert (=> b!2744630 m!3161759))

(declare-fun b!2744811 () Bool)

(declare-fun b_free!77225 () Bool)

(declare-fun b_next!77929 () Bool)

(assert (=> b!2744811 (= b_free!77225 (not b_next!77929))))

(declare-fun tp!863928 () Bool)

(declare-fun b_and!201945 () Bool)

(assert (=> b!2744811 (= tp!863928 b_and!201945)))

(declare-fun b_free!77227 () Bool)

(declare-fun b_next!77931 () Bool)

(assert (=> b!2744811 (= b_free!77227 (not b_next!77931))))

(declare-fun tp!863929 () Bool)

(declare-fun b_and!201947 () Bool)

(assert (=> b!2744811 (= tp!863929 b_and!201947)))

(declare-fun e!1728934 () Bool)

(assert (=> b!2744811 (= e!1728934 (and tp!863928 tp!863929))))

(declare-fun tp!863927 () Bool)

(declare-fun b!2744810 () Bool)

(declare-fun e!1728932 () Bool)

(assert (=> b!2744810 (= e!1728932 (and tp!863927 (inv!42925 (tag!5341 (h!36996 (t!227764 rulesArg!249)))) (inv!42926 (transformation!4837 (h!36996 (t!227764 rulesArg!249)))) e!1728934))))

(declare-fun b!2744809 () Bool)

(declare-fun e!1728935 () Bool)

(declare-fun tp!863930 () Bool)

(assert (=> b!2744809 (= e!1728935 (and e!1728932 tp!863930))))

(assert (=> b!2744640 (= tp!863786 e!1728935)))

(assert (= b!2744810 b!2744811))

(assert (= b!2744809 b!2744810))

(assert (= (and b!2744640 ((_ is Cons!31576) (t!227764 rulesArg!249))) b!2744809))

(declare-fun m!3161889 () Bool)

(assert (=> b!2744810 m!3161889))

(declare-fun m!3161891 () Bool)

(assert (=> b!2744810 m!3161891))

(declare-fun tp!863931 () Bool)

(declare-fun e!1728937 () Bool)

(declare-fun e!1728936 () Bool)

(declare-fun b!2744812 () Bool)

(declare-fun tp!863933 () Bool)

(declare-fun setRes!21593 () Bool)

(assert (=> b!2744812 (= e!1728936 (and tp!863933 (inv!42933 (_2!18353 (_1!18354 (h!36999 mapDefault!16404)))) e!1728937 tp_is_empty!13925 setRes!21593 tp!863931))))

(declare-fun condSetEmpty!21593 () Bool)

(assert (=> b!2744812 (= condSetEmpty!21593 (= (_2!18354 (h!36999 mapDefault!16404)) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun setNonEmpty!21593 () Bool)

(declare-fun e!1728938 () Bool)

(declare-fun tp!863934 () Bool)

(declare-fun setElem!21593 () Context!4418)

(assert (=> setNonEmpty!21593 (= setRes!21593 (and tp!863934 (inv!42933 setElem!21593) e!1728938))))

(declare-fun setRest!21593 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21593 (= (_2!18354 (h!36999 mapDefault!16404)) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21593 true) setRest!21593))))

(declare-fun b!2744813 () Bool)

(declare-fun tp!863932 () Bool)

(assert (=> b!2744813 (= e!1728938 tp!863932)))

(declare-fun b!2744814 () Bool)

(declare-fun tp!863935 () Bool)

(assert (=> b!2744814 (= e!1728937 tp!863935)))

(declare-fun setIsEmpty!21593 () Bool)

(assert (=> setIsEmpty!21593 setRes!21593))

(assert (=> b!2744634 (= tp!863782 e!1728936)))

(assert (= b!2744812 b!2744814))

(assert (= (and b!2744812 condSetEmpty!21593) setIsEmpty!21593))

(assert (= (and b!2744812 (not condSetEmpty!21593)) setNonEmpty!21593))

(assert (= setNonEmpty!21593 b!2744813))

(assert (= (and b!2744634 ((_ is Cons!31579) mapDefault!16404)) b!2744812))

(declare-fun m!3161893 () Bool)

(assert (=> b!2744812 m!3161893))

(declare-fun m!3161895 () Bool)

(assert (=> setNonEmpty!21593 m!3161895))

(declare-fun e!1728941 () Bool)

(assert (=> b!2744645 (= tp!863778 e!1728941)))

(declare-fun e!1728940 () Bool)

(declare-fun tp!863938 () Bool)

(declare-fun setRes!21594 () Bool)

(declare-fun b!2744815 () Bool)

(assert (=> b!2744815 (= e!1728941 (and (inv!42933 (_1!18351 (_1!18352 (h!36998 mapDefault!16403)))) e!1728940 tp_is_empty!13925 setRes!21594 tp!863938))))

(declare-fun condSetEmpty!21594 () Bool)

(assert (=> b!2744815 (= condSetEmpty!21594 (= (_2!18352 (h!36998 mapDefault!16403)) ((as const (Array Context!4418 Bool)) false)))))

(declare-fun b!2744816 () Bool)

(declare-fun e!1728939 () Bool)

(declare-fun tp!863939 () Bool)

(assert (=> b!2744816 (= e!1728939 tp!863939)))

(declare-fun tp!863936 () Bool)

(declare-fun setNonEmpty!21594 () Bool)

(declare-fun setElem!21594 () Context!4418)

(assert (=> setNonEmpty!21594 (= setRes!21594 (and tp!863936 (inv!42933 setElem!21594) e!1728939))))

(declare-fun setRest!21594 () (InoxSet Context!4418))

(assert (=> setNonEmpty!21594 (= (_2!18352 (h!36998 mapDefault!16403)) ((_ map or) (store ((as const (Array Context!4418 Bool)) false) setElem!21594 true) setRest!21594))))

(declare-fun b!2744817 () Bool)

(declare-fun tp!863937 () Bool)

(assert (=> b!2744817 (= e!1728940 tp!863937)))

(declare-fun setIsEmpty!21594 () Bool)

(assert (=> setIsEmpty!21594 setRes!21594))

(assert (= b!2744815 b!2744817))

(assert (= (and b!2744815 condSetEmpty!21594) setIsEmpty!21594))

(assert (= (and b!2744815 (not condSetEmpty!21594)) setNonEmpty!21594))

(assert (= setNonEmpty!21594 b!2744816))

(assert (= (and b!2744645 ((_ is Cons!31578) mapDefault!16403)) b!2744815))

(declare-fun m!3161897 () Bool)

(assert (=> b!2744815 m!3161897))

(declare-fun m!3161899 () Bool)

(assert (=> setNonEmpty!21594 m!3161899))

(check-sat (not d!795876) (not d!795892) (not d!795900) (not b!2744766) (not b!2744745) (not b_next!77917) b_and!201939 (not d!795904) (not b_next!77925) (not b!2744787) (not b!2744744) (not b!2744657) (not d!795912) (not b!2744810) (not b!2744815) (not b_next!77919) (not b!2744670) (not setNonEmpty!21575) (not b!2744698) (not b_next!77921) (not b!2744752) (not b!2744762) (not b!2744789) (not b!2744714) (not setNonEmpty!21579) (not b!2744694) tp_is_empty!13925 (not b!2744800) (not b_next!77929) (not b!2744788) (not d!795878) b_and!201943 (not setNonEmpty!21581) (not d!795894) b_and!201941 (not b!2744781) (not b!2744817) (not b!2744765) (not b!2744782) (not b!2744784) (not b!2744799) b_and!201945 b_and!201933 (not b!2744731) (not b_next!77927) (not b!2744813) (not b!2744658) (not b!2744798) (not b_next!77931) (not b!2744786) (not mapNonEmpty!16407) (not b!2744671) (not b!2744652) (not b!2744733) (not setNonEmpty!21580) (not mapNonEmpty!16410) (not b!2744659) (not b!2744734) (not setNonEmpty!21591) (not d!795898) b_and!201935 (not b_next!77923) b_and!201947 (not b!2744732) (not b!2744735) (not b!2744695) (not b!2744730) (not b!2744751) (not d!795874) (not b!2744750) (not b!2744683) (not setNonEmpty!21594) (not b!2744701) (not b!2744630) (not b!2744749) (not b!2744764) (not setNonEmpty!21593) (not b!2744814) (not b!2744713) (not setNonEmpty!21584) (not b!2744761) (not b!2744672) (not b!2744763) (not d!795890) (not b!2744651) (not b!2744748) (not b!2744693) (not setNonEmpty!21592) (not b!2744746) (not b!2744783) (not b!2744812) (not b!2744816) (not b!2744673) (not b!2744715) (not b!2744681) (not d!795870) (not setNonEmpty!21585) b_and!201937 (not b!2744809) (not b!2744785) (not setNonEmpty!21576) (not setNonEmpty!21590) (not b!2744747))
(check-sat (not b_next!77925) (not b_next!77919) (not b_next!77921) (not b_next!77929) (not b_next!77927) (not b_next!77931) (not b_next!77917) b_and!201939 b_and!201937 b_and!201943 b_and!201941 b_and!201945 b_and!201933 b_and!201935 (not b_next!77923) b_and!201947)
