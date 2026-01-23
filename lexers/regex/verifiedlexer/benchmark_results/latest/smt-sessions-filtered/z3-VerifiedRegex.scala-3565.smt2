; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206284 () Bool)

(assert start!206284)

(declare-fun b!2109926 () Bool)

(declare-fun b_free!60901 () Bool)

(declare-fun b_next!61605 () Bool)

(assert (=> b!2109926 (= b_free!60901 (not b_next!61605))))

(declare-fun tp!641782 () Bool)

(declare-fun b_and!170467 () Bool)

(assert (=> b!2109926 (= tp!641782 b_and!170467)))

(declare-fun b!2109935 () Bool)

(declare-fun b_free!60903 () Bool)

(declare-fun b_next!61607 () Bool)

(assert (=> b!2109935 (= b_free!60903 (not b_next!61607))))

(declare-fun tp!641776 () Bool)

(declare-fun b_and!170469 () Bool)

(assert (=> b!2109935 (= tp!641776 b_and!170469)))

(declare-fun b!2109928 () Bool)

(declare-fun b_free!60905 () Bool)

(declare-fun b_next!61609 () Bool)

(assert (=> b!2109928 (= b_free!60905 (not b_next!61609))))

(declare-fun tp!641780 () Bool)

(declare-fun b_and!170471 () Bool)

(assert (=> b!2109928 (= tp!641780 b_and!170471)))

(declare-fun b_free!60907 () Bool)

(declare-fun b_next!61611 () Bool)

(assert (=> b!2109928 (= b_free!60907 (not b_next!61611))))

(declare-fun tp!641767 () Bool)

(declare-fun b_and!170473 () Bool)

(assert (=> b!2109928 (= tp!641767 b_and!170473)))

(declare-fun b!2109916 () Bool)

(declare-fun b_free!60909 () Bool)

(declare-fun b_next!61613 () Bool)

(assert (=> b!2109916 (= b_free!60909 (not b_next!61613))))

(declare-fun tp!641772 () Bool)

(declare-fun b_and!170475 () Bool)

(assert (=> b!2109916 (= tp!641772 b_and!170475)))

(declare-fun b!2109921 () Bool)

(declare-fun b_free!60911 () Bool)

(declare-fun b_next!61615 () Bool)

(assert (=> b!2109921 (= b_free!60911 (not b_next!61615))))

(declare-fun tp!641773 () Bool)

(declare-fun b_and!170477 () Bool)

(assert (=> b!2109921 (= tp!641773 b_and!170477)))

(declare-fun e!1341841 () Bool)

(declare-fun e!1341847 () Bool)

(assert (=> b!2109916 (= e!1341841 (and e!1341847 tp!641772))))

(declare-fun b!2109917 () Bool)

(declare-fun res!916574 () Bool)

(declare-fun e!1341838 () Bool)

(assert (=> b!2109917 (=> (not res!916574) (not e!1341838))))

(declare-datatypes ((LexerInterface!3759 0))(
  ( (LexerInterfaceExt!3756 (__x!15055 Int)) (Lexer!3757) )
))
(declare-fun thiss!16399 () LexerInterface!3759)

(declare-datatypes ((List!23468 0))(
  ( (Nil!23384) (Cons!23384 (h!28785 (_ BitVec 16)) (t!195967 List!23468)) )
))
(declare-datatypes ((TokenValue!4297 0))(
  ( (FloatLiteralValue!8594 (text!30524 List!23468)) (TokenValueExt!4296 (__x!15056 Int)) (Broken!21485 (value!130197 List!23468)) (Object!4380) (End!4297) (Def!4297) (Underscore!4297) (Match!4297) (Else!4297) (Error!4297) (Case!4297) (If!4297) (Extends!4297) (Abstract!4297) (Class!4297) (Val!4297) (DelimiterValue!8594 (del!4357 List!23468)) (KeywordValue!4303 (value!130198 List!23468)) (CommentValue!8594 (value!130199 List!23468)) (WhitespaceValue!8594 (value!130200 List!23468)) (IndentationValue!4297 (value!130201 List!23468)) (String!26692) (Int32!4297) (Broken!21486 (value!130202 List!23468)) (Boolean!4298) (Unit!37501) (OperatorValue!4300 (op!4357 List!23468)) (IdentifierValue!8594 (value!130203 List!23468)) (IdentifierValue!8595 (value!130204 List!23468)) (WhitespaceValue!8595 (value!130205 List!23468)) (True!8594) (False!8594) (Broken!21487 (value!130206 List!23468)) (Broken!21488 (value!130207 List!23468)) (True!8595) (RightBrace!4297) (RightBracket!4297) (Colon!4297) (Null!4297) (Comma!4297) (LeftBracket!4297) (False!8595) (LeftBrace!4297) (ImaginaryLiteralValue!4297 (text!30525 List!23468)) (StringLiteralValue!12891 (value!130208 List!23468)) (EOFValue!4297 (value!130209 List!23468)) (IdentValue!4297 (value!130210 List!23468)) (DelimiterValue!8595 (value!130211 List!23468)) (DedentValue!4297 (value!130212 List!23468)) (NewLineValue!4297 (value!130213 List!23468)) (IntegerValue!12891 (value!130214 (_ BitVec 32)) (text!30526 List!23468)) (IntegerValue!12892 (value!130215 Int) (text!30527 List!23468)) (Times!4297) (Or!4297) (Equal!4297) (Minus!4297) (Broken!21489 (value!130216 List!23468)) (And!4297) (Div!4297) (LessEqual!4297) (Mod!4297) (Concat!9894) (Not!4297) (Plus!4297) (SpaceValue!4297 (value!130217 List!23468)) (IntegerValue!12893 (value!130218 Int) (text!30528 List!23468)) (StringLiteralValue!12892 (text!30529 List!23468)) (FloatLiteralValue!8595 (text!30530 List!23468)) (BytesLiteralValue!4297 (value!130219 List!23468)) (CommentValue!8595 (value!130220 List!23468)) (StringLiteralValue!12893 (value!130221 List!23468)) (ErrorTokenValue!4297 (msg!4358 List!23468)) )
))
(declare-datatypes ((C!11340 0))(
  ( (C!11341 (val!6656 Int)) )
))
(declare-datatypes ((List!23469 0))(
  ( (Nil!23385) (Cons!23385 (h!28786 C!11340) (t!195968 List!23469)) )
))
(declare-datatypes ((IArray!15489 0))(
  ( (IArray!15490 (innerList!7802 List!23469)) )
))
(declare-datatypes ((Conc!7742 0))(
  ( (Node!7742 (left!18191 Conc!7742) (right!18521 Conc!7742) (csize!15714 Int) (cheight!7953 Int)) (Leaf!11308 (xs!10684 IArray!15489) (csize!15715 Int)) (Empty!7742) )
))
(declare-datatypes ((BalanceConc!15246 0))(
  ( (BalanceConc!15247 (c!339031 Conc!7742)) )
))
(declare-datatypes ((Regex!5597 0))(
  ( (ElementMatch!5597 (c!339032 C!11340)) (Concat!9895 (regOne!11706 Regex!5597) (regTwo!11706 Regex!5597)) (EmptyExpr!5597) (Star!5597 (reg!5926 Regex!5597)) (EmptyLang!5597) (Union!5597 (regOne!11707 Regex!5597) (regTwo!11707 Regex!5597)) )
))
(declare-datatypes ((String!26693 0))(
  ( (String!26694 (value!130222 String)) )
))
(declare-datatypes ((TokenValueInjection!8178 0))(
  ( (TokenValueInjection!8179 (toValue!5872 Int) (toChars!5731 Int)) )
))
(declare-datatypes ((Rule!8122 0))(
  ( (Rule!8123 (regex!4161 Regex!5597) (tag!4651 String!26693) (isSeparator!4161 Bool) (transformation!4161 TokenValueInjection!8178)) )
))
(declare-fun rule!236 () Rule!8122)

(declare-fun ruleValid!1284 (LexerInterface!3759 Rule!8122) Bool)

(assert (=> b!2109917 (= res!916574 (ruleValid!1284 thiss!16399 rule!236))))

(declare-fun b!2109918 () Bool)

(declare-fun e!1341840 () Bool)

(declare-fun e!1341853 () Bool)

(assert (=> b!2109918 (= e!1341840 e!1341853)))

(declare-fun b!2109919 () Bool)

(declare-fun e!1341857 () Bool)

(declare-datatypes ((List!23470 0))(
  ( (Nil!23386) (Cons!23386 (h!28787 Regex!5597) (t!195969 List!23470)) )
))
(declare-datatypes ((Context!2334 0))(
  ( (Context!2335 (exprs!1667 List!23470)) )
))
(declare-datatypes ((tuple3!2654 0))(
  ( (tuple3!2655 (_1!13152 Regex!5597) (_2!13152 Context!2334) (_3!1791 C!11340)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22722 0))(
  ( (tuple2!22723 (_1!13153 tuple3!2654) (_2!13153 (InoxSet Context!2334))) )
))
(declare-datatypes ((List!23471 0))(
  ( (Nil!23387) (Cons!23387 (h!28788 tuple2!22722) (t!195970 List!23471)) )
))
(declare-datatypes ((array!7933 0))(
  ( (array!7934 (arr!3514 (Array (_ BitVec 32) List!23471)) (size!18247 (_ BitVec 32))) )
))
(declare-datatypes ((array!7935 0))(
  ( (array!7936 (arr!3515 (Array (_ BitVec 32) (_ BitVec 64))) (size!18248 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4592 0))(
  ( (LongMapFixedSize!4593 (defaultEntry!2661 Int) (mask!6410 (_ BitVec 32)) (extraKeys!2544 (_ BitVec 32)) (zeroValue!2554 List!23471) (minValue!2554 List!23471) (_size!4643 (_ BitVec 32)) (_keys!2593 array!7935) (_values!2576 array!7933) (_vacant!2357 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9009 0))(
  ( (Cell!9010 (v!27917 LongMapFixedSize!4592)) )
))
(declare-datatypes ((MutLongMap!2296 0))(
  ( (LongMap!2296 (underlying!4787 Cell!9009)) (MutLongMapExt!2295 (__x!15057 Int)) )
))
(declare-fun lt!791964 () MutLongMap!2296)

(get-info :version)

(assert (=> b!2109919 (= e!1341857 (and e!1341840 ((_ is LongMap!2296) lt!791964)))))

(declare-datatypes ((Hashable!2210 0))(
  ( (HashableExt!2209 (__x!15058 Int)) )
))
(declare-datatypes ((Cell!9011 0))(
  ( (Cell!9012 (v!27918 MutLongMap!2296)) )
))
(declare-datatypes ((MutableMap!2210 0))(
  ( (MutableMapExt!2209 (__x!15059 Int)) (HashMap!2210 (underlying!4788 Cell!9011) (hashF!4133 Hashable!2210) (_size!4644 (_ BitVec 32)) (defaultValue!2372 Int)) )
))
(declare-datatypes ((CacheDown!1508 0))(
  ( (CacheDown!1509 (cache!2591 MutableMap!2210)) )
))
(declare-fun cacheDown!753 () CacheDown!1508)

(assert (=> b!2109919 (= lt!791964 (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))))

(declare-fun b!2109920 () Bool)

(declare-fun e!1341854 () Bool)

(assert (=> b!2109920 (= e!1341838 e!1341854)))

(declare-fun res!916575 () Bool)

(assert (=> b!2109920 (=> (not res!916575) (not e!1341854))))

(declare-datatypes ((tuple2!22724 0))(
  ( (tuple2!22725 (_1!13154 Context!2334) (_2!13154 C!11340)) )
))
(declare-datatypes ((tuple2!22726 0))(
  ( (tuple2!22727 (_1!13155 tuple2!22724) (_2!13155 (InoxSet Context!2334))) )
))
(declare-datatypes ((List!23472 0))(
  ( (Nil!23388) (Cons!23388 (h!28789 tuple2!22726) (t!195971 List!23472)) )
))
(declare-datatypes ((array!7937 0))(
  ( (array!7938 (arr!3516 (Array (_ BitVec 32) List!23472)) (size!18249 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4594 0))(
  ( (LongMapFixedSize!4595 (defaultEntry!2662 Int) (mask!6411 (_ BitVec 32)) (extraKeys!2545 (_ BitVec 32)) (zeroValue!2555 List!23472) (minValue!2555 List!23472) (_size!4645 (_ BitVec 32)) (_keys!2594 array!7935) (_values!2577 array!7937) (_vacant!2358 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9013 0))(
  ( (Cell!9014 (v!27919 LongMapFixedSize!4594)) )
))
(declare-datatypes ((MutLongMap!2297 0))(
  ( (LongMap!2297 (underlying!4789 Cell!9013)) (MutLongMapExt!2296 (__x!15060 Int)) )
))
(declare-datatypes ((Cell!9015 0))(
  ( (Cell!9016 (v!27920 MutLongMap!2297)) )
))
(declare-datatypes ((Hashable!2211 0))(
  ( (HashableExt!2210 (__x!15061 Int)) )
))
(declare-datatypes ((MutableMap!2211 0))(
  ( (MutableMapExt!2210 (__x!15062 Int)) (HashMap!2211 (underlying!4790 Cell!9015) (hashF!4134 Hashable!2211) (_size!4646 (_ BitVec 32)) (defaultValue!2373 Int)) )
))
(declare-datatypes ((CacheUp!1506 0))(
  ( (CacheUp!1507 (cache!2592 MutableMap!2211)) )
))
(declare-datatypes ((tuple2!22728 0))(
  ( (tuple2!22729 (_1!13156 BalanceConc!15246) (_2!13156 BalanceConc!15246)) )
))
(declare-datatypes ((tuple3!2656 0))(
  ( (tuple3!2657 (_1!13157 tuple2!22728) (_2!13157 CacheUp!1506) (_3!1792 CacheDown!1508)) )
))
(declare-fun lt!791962 () tuple3!2656)

(declare-fun totalInput!548 () BalanceConc!15246)

(declare-fun input!1654 () BalanceConc!15246)

(declare-fun findLongestMatchWithZipperSequenceV2!67 (Regex!5597 BalanceConc!15246 BalanceConc!15246) tuple2!22728)

(assert (=> b!2109920 (= res!916575 (= (_1!13157 lt!791962) (findLongestMatchWithZipperSequenceV2!67 (regex!4161 rule!236) input!1654 totalInput!548)))))

(declare-fun cacheUp!740 () CacheUp!1506)

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!41 (Regex!5597 BalanceConc!15246 BalanceConc!15246 CacheUp!1506 CacheDown!1508) tuple3!2656)

(assert (=> b!2109920 (= lt!791962 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!41 (regex!4161 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(declare-fun tp!641778 () Bool)

(declare-fun tp!641770 () Bool)

(declare-fun e!1341848 () Bool)

(declare-fun e!1341856 () Bool)

(declare-fun array_inv!2528 (array!7935) Bool)

(declare-fun array_inv!2529 (array!7937) Bool)

(assert (=> b!2109921 (= e!1341856 (and tp!641773 tp!641770 tp!641778 (array_inv!2528 (_keys!2594 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))))) (array_inv!2529 (_values!2577 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))))) e!1341848))))

(declare-fun b!2109922 () Bool)

(declare-fun e!1341858 () Bool)

(declare-fun lt!791963 () MutLongMap!2297)

(assert (=> b!2109922 (= e!1341847 (and e!1341858 ((_ is LongMap!2297) lt!791963)))))

(assert (=> b!2109922 (= lt!791963 (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))))

(declare-fun b!2109923 () Bool)

(declare-fun res!916576 () Bool)

(assert (=> b!2109923 (=> (not res!916576) (not e!1341838))))

(declare-fun valid!1813 (CacheUp!1506) Bool)

(assert (=> b!2109923 (= res!916576 (valid!1813 cacheUp!740))))

(declare-fun mapIsEmpty!11084 () Bool)

(declare-fun mapRes!11085 () Bool)

(assert (=> mapIsEmpty!11084 mapRes!11085))

(declare-fun e!1341846 () Bool)

(declare-fun e!1341836 () Bool)

(declare-fun b!2109924 () Bool)

(declare-fun tp!641779 () Bool)

(declare-fun inv!30941 (String!26693) Bool)

(declare-fun inv!30942 (TokenValueInjection!8178) Bool)

(assert (=> b!2109924 (= e!1341836 (and tp!641779 (inv!30941 (tag!4651 rule!236)) (inv!30942 (transformation!4161 rule!236)) e!1341846))))

(declare-fun b!2109925 () Bool)

(declare-fun e!1341849 () Bool)

(assert (=> b!2109925 (= e!1341849 e!1341856)))

(declare-fun e!1341851 () Bool)

(declare-fun e!1341844 () Bool)

(declare-fun tp!641774 () Bool)

(declare-fun tp!641771 () Bool)

(declare-fun array_inv!2530 (array!7933) Bool)

(assert (=> b!2109926 (= e!1341851 (and tp!641782 tp!641771 tp!641774 (array_inv!2528 (_keys!2593 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))))) (array_inv!2530 (_values!2576 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))))) e!1341844))))

(declare-fun b!2109927 () Bool)

(declare-fun tp!641769 () Bool)

(declare-fun mapRes!11084 () Bool)

(assert (=> b!2109927 (= e!1341844 (and tp!641769 mapRes!11084))))

(declare-fun condMapEmpty!11084 () Bool)

(declare-fun mapDefault!11085 () List!23471)

(assert (=> b!2109927 (= condMapEmpty!11084 (= (arr!3514 (_values!2576 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))))) ((as const (Array (_ BitVec 32) List!23471)) mapDefault!11085)))))

(declare-fun res!916573 () Bool)

(assert (=> start!206284 (=> (not res!916573) (not e!1341838))))

(assert (=> start!206284 (= res!916573 ((_ is Lexer!3757) thiss!16399))))

(assert (=> start!206284 e!1341838))

(assert (=> start!206284 true))

(assert (=> start!206284 e!1341836))

(declare-fun e!1341855 () Bool)

(declare-fun inv!30943 (CacheDown!1508) Bool)

(assert (=> start!206284 (and (inv!30943 cacheDown!753) e!1341855)))

(declare-fun e!1341839 () Bool)

(declare-fun inv!30944 (BalanceConc!15246) Bool)

(assert (=> start!206284 (and (inv!30944 input!1654) e!1341839)))

(declare-fun e!1341850 () Bool)

(assert (=> start!206284 (and (inv!30944 totalInput!548) e!1341850)))

(declare-fun e!1341837 () Bool)

(declare-fun inv!30945 (CacheUp!1506) Bool)

(assert (=> start!206284 (and (inv!30945 cacheUp!740) e!1341837)))

(assert (=> b!2109928 (= e!1341846 (and tp!641780 tp!641767))))

(declare-fun b!2109929 () Bool)

(assert (=> b!2109929 (= e!1341853 e!1341851)))

(declare-fun b!2109930 () Bool)

(assert (=> b!2109930 (= e!1341858 e!1341849)))

(declare-fun mapNonEmpty!11084 () Bool)

(declare-fun tp!641775 () Bool)

(declare-fun tp!641768 () Bool)

(assert (=> mapNonEmpty!11084 (= mapRes!11085 (and tp!641775 tp!641768))))

(declare-fun mapRest!11084 () (Array (_ BitVec 32) List!23472))

(declare-fun mapKey!11084 () (_ BitVec 32))

(declare-fun mapValue!11085 () List!23472)

(assert (=> mapNonEmpty!11084 (= (arr!3516 (_values!2577 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))))) (store mapRest!11084 mapKey!11084 mapValue!11085))))

(declare-fun b!2109931 () Bool)

(declare-fun res!916571 () Bool)

(assert (=> b!2109931 (=> (not res!916571) (not e!1341854))))

(declare-fun isEmpty!14295 (BalanceConc!15246) Bool)

(assert (=> b!2109931 (= res!916571 (not (isEmpty!14295 (_1!13156 (_1!13157 lt!791962)))))))

(declare-fun mapNonEmpty!11085 () Bool)

(declare-fun tp!641785 () Bool)

(declare-fun tp!641784 () Bool)

(assert (=> mapNonEmpty!11085 (= mapRes!11084 (and tp!641785 tp!641784))))

(declare-fun mapRest!11085 () (Array (_ BitVec 32) List!23471))

(declare-fun mapValue!11084 () List!23471)

(declare-fun mapKey!11085 () (_ BitVec 32))

(assert (=> mapNonEmpty!11085 (= (arr!3514 (_values!2576 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))))) (store mapRest!11085 mapKey!11085 mapValue!11084))))

(declare-fun b!2109932 () Bool)

(declare-fun res!916577 () Bool)

(assert (=> b!2109932 (=> (not res!916577) (not e!1341838))))

(declare-fun isSuffix!575 (List!23469 List!23469) Bool)

(declare-fun list!9469 (BalanceConc!15246) List!23469)

(assert (=> b!2109932 (= res!916577 (isSuffix!575 (list!9469 input!1654) (list!9469 totalInput!548)))))

(declare-fun b!2109933 () Bool)

(declare-fun tp!641783 () Bool)

(declare-fun inv!30946 (Conc!7742) Bool)

(assert (=> b!2109933 (= e!1341839 (and (inv!30946 (c!339031 input!1654)) tp!641783))))

(declare-fun b!2109934 () Bool)

(declare-fun e!1341843 () Bool)

(assert (=> b!2109934 (= e!1341855 e!1341843)))

(assert (=> b!2109935 (= e!1341843 (and e!1341857 tp!641776))))

(declare-fun b!2109936 () Bool)

(declare-fun tp!641781 () Bool)

(assert (=> b!2109936 (= e!1341848 (and tp!641781 mapRes!11085))))

(declare-fun condMapEmpty!11085 () Bool)

(declare-fun mapDefault!11084 () List!23472)

(assert (=> b!2109936 (= condMapEmpty!11085 (= (arr!3516 (_values!2577 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))))) ((as const (Array (_ BitVec 32) List!23472)) mapDefault!11084)))))

(declare-fun mapIsEmpty!11085 () Bool)

(assert (=> mapIsEmpty!11085 mapRes!11084))

(declare-fun b!2109937 () Bool)

(declare-fun res!916572 () Bool)

(assert (=> b!2109937 (=> (not res!916572) (not e!1341838))))

(declare-fun valid!1814 (CacheDown!1508) Bool)

(assert (=> b!2109937 (= res!916572 (valid!1814 cacheDown!753))))

(declare-fun b!2109938 () Bool)

(declare-fun tp!641777 () Bool)

(assert (=> b!2109938 (= e!1341850 (and (inv!30946 (c!339031 totalInput!548)) tp!641777))))

(declare-fun b!2109939 () Bool)

(assert (=> b!2109939 (= e!1341837 e!1341841)))

(declare-fun b!2109940 () Bool)

(declare-fun validRegex!2202 (Regex!5597) Bool)

(assert (=> b!2109940 (= e!1341854 (not (validRegex!2202 (regex!4161 rule!236))))))

(assert (= (and start!206284 res!916573) b!2109917))

(assert (= (and b!2109917 res!916574) b!2109923))

(assert (= (and b!2109923 res!916576) b!2109937))

(assert (= (and b!2109937 res!916572) b!2109932))

(assert (= (and b!2109932 res!916577) b!2109920))

(assert (= (and b!2109920 res!916575) b!2109931))

(assert (= (and b!2109931 res!916571) b!2109940))

(assert (= b!2109924 b!2109928))

(assert (= start!206284 b!2109924))

(assert (= (and b!2109927 condMapEmpty!11084) mapIsEmpty!11085))

(assert (= (and b!2109927 (not condMapEmpty!11084)) mapNonEmpty!11085))

(assert (= b!2109926 b!2109927))

(assert (= b!2109929 b!2109926))

(assert (= b!2109918 b!2109929))

(assert (= (and b!2109919 ((_ is LongMap!2296) (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))) b!2109918))

(assert (= b!2109935 b!2109919))

(assert (= (and b!2109934 ((_ is HashMap!2210) (cache!2591 cacheDown!753))) b!2109935))

(assert (= start!206284 b!2109934))

(assert (= start!206284 b!2109933))

(assert (= start!206284 b!2109938))

(assert (= (and b!2109936 condMapEmpty!11085) mapIsEmpty!11084))

(assert (= (and b!2109936 (not condMapEmpty!11085)) mapNonEmpty!11084))

(assert (= b!2109921 b!2109936))

(assert (= b!2109925 b!2109921))

(assert (= b!2109930 b!2109925))

(assert (= (and b!2109922 ((_ is LongMap!2297) (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))) b!2109930))

(assert (= b!2109916 b!2109922))

(assert (= (and b!2109939 ((_ is HashMap!2211) (cache!2592 cacheUp!740))) b!2109916))

(assert (= start!206284 b!2109939))

(declare-fun m!2567087 () Bool)

(assert (=> b!2109924 m!2567087))

(declare-fun m!2567089 () Bool)

(assert (=> b!2109924 m!2567089))

(declare-fun m!2567091 () Bool)

(assert (=> b!2109932 m!2567091))

(declare-fun m!2567093 () Bool)

(assert (=> b!2109932 m!2567093))

(assert (=> b!2109932 m!2567091))

(assert (=> b!2109932 m!2567093))

(declare-fun m!2567095 () Bool)

(assert (=> b!2109932 m!2567095))

(declare-fun m!2567097 () Bool)

(assert (=> b!2109938 m!2567097))

(declare-fun m!2567099 () Bool)

(assert (=> mapNonEmpty!11084 m!2567099))

(declare-fun m!2567101 () Bool)

(assert (=> b!2109940 m!2567101))

(declare-fun m!2567103 () Bool)

(assert (=> mapNonEmpty!11085 m!2567103))

(declare-fun m!2567105 () Bool)

(assert (=> b!2109933 m!2567105))

(declare-fun m!2567107 () Bool)

(assert (=> b!2109921 m!2567107))

(declare-fun m!2567109 () Bool)

(assert (=> b!2109921 m!2567109))

(declare-fun m!2567111 () Bool)

(assert (=> start!206284 m!2567111))

(declare-fun m!2567113 () Bool)

(assert (=> start!206284 m!2567113))

(declare-fun m!2567115 () Bool)

(assert (=> start!206284 m!2567115))

(declare-fun m!2567117 () Bool)

(assert (=> start!206284 m!2567117))

(declare-fun m!2567119 () Bool)

(assert (=> b!2109917 m!2567119))

(declare-fun m!2567121 () Bool)

(assert (=> b!2109931 m!2567121))

(declare-fun m!2567123 () Bool)

(assert (=> b!2109926 m!2567123))

(declare-fun m!2567125 () Bool)

(assert (=> b!2109926 m!2567125))

(declare-fun m!2567127 () Bool)

(assert (=> b!2109937 m!2567127))

(declare-fun m!2567129 () Bool)

(assert (=> b!2109923 m!2567129))

(declare-fun m!2567131 () Bool)

(assert (=> b!2109920 m!2567131))

(declare-fun m!2567133 () Bool)

(assert (=> b!2109920 m!2567133))

(check-sat (not b!2109921) (not b!2109936) b_and!170469 b_and!170473 (not b!2109940) (not b_next!61613) (not b!2109937) b_and!170475 (not b!2109933) (not b!2109926) (not b_next!61611) (not b_next!61607) (not b!2109920) b_and!170477 (not b!2109931) (not mapNonEmpty!11085) b_and!170471 (not b!2109917) (not b_next!61609) (not b!2109932) b_and!170467 (not b!2109923) (not b!2109927) (not b!2109924) (not mapNonEmpty!11084) (not b_next!61605) (not b!2109938) (not b_next!61615) (not start!206284))
(check-sat b_and!170469 b_and!170471 b_and!170473 (not b_next!61609) (not b_next!61613) b_and!170475 b_and!170467 (not b_next!61611) (not b_next!61605) (not b_next!61607) (not b_next!61615) b_and!170477)
(get-model)

(declare-fun d!642180 () Bool)

(declare-fun c!339035 () Bool)

(assert (=> d!642180 (= c!339035 ((_ is Node!7742) (c!339031 totalInput!548)))))

(declare-fun e!1341863 () Bool)

(assert (=> d!642180 (= (inv!30946 (c!339031 totalInput!548)) e!1341863)))

(declare-fun b!2109947 () Bool)

(declare-fun inv!30947 (Conc!7742) Bool)

(assert (=> b!2109947 (= e!1341863 (inv!30947 (c!339031 totalInput!548)))))

(declare-fun b!2109948 () Bool)

(declare-fun e!1341864 () Bool)

(assert (=> b!2109948 (= e!1341863 e!1341864)))

(declare-fun res!916582 () Bool)

(assert (=> b!2109948 (= res!916582 (not ((_ is Leaf!11308) (c!339031 totalInput!548))))))

(assert (=> b!2109948 (=> res!916582 e!1341864)))

(declare-fun b!2109949 () Bool)

(declare-fun inv!30948 (Conc!7742) Bool)

(assert (=> b!2109949 (= e!1341864 (inv!30948 (c!339031 totalInput!548)))))

(assert (= (and d!642180 c!339035) b!2109947))

(assert (= (and d!642180 (not c!339035)) b!2109948))

(assert (= (and b!2109948 (not res!916582)) b!2109949))

(declare-fun m!2567135 () Bool)

(assert (=> b!2109947 m!2567135))

(declare-fun m!2567137 () Bool)

(assert (=> b!2109949 m!2567137))

(assert (=> b!2109938 d!642180))

(declare-fun d!642182 () Bool)

(declare-fun res!916585 () Bool)

(declare-fun e!1341867 () Bool)

(assert (=> d!642182 (=> (not res!916585) (not e!1341867))))

(assert (=> d!642182 (= res!916585 ((_ is HashMap!2210) (cache!2591 cacheDown!753)))))

(assert (=> d!642182 (= (inv!30943 cacheDown!753) e!1341867)))

(declare-fun b!2109952 () Bool)

(declare-fun validCacheMapDown!230 (MutableMap!2210) Bool)

(assert (=> b!2109952 (= e!1341867 (validCacheMapDown!230 (cache!2591 cacheDown!753)))))

(assert (= (and d!642182 res!916585) b!2109952))

(declare-fun m!2567139 () Bool)

(assert (=> b!2109952 m!2567139))

(assert (=> start!206284 d!642182))

(declare-fun d!642184 () Bool)

(declare-fun isBalanced!2436 (Conc!7742) Bool)

(assert (=> d!642184 (= (inv!30944 input!1654) (isBalanced!2436 (c!339031 input!1654)))))

(declare-fun bs!441037 () Bool)

(assert (= bs!441037 d!642184))

(declare-fun m!2567141 () Bool)

(assert (=> bs!441037 m!2567141))

(assert (=> start!206284 d!642184))

(declare-fun d!642186 () Bool)

(assert (=> d!642186 (= (inv!30944 totalInput!548) (isBalanced!2436 (c!339031 totalInput!548)))))

(declare-fun bs!441038 () Bool)

(assert (= bs!441038 d!642186))

(declare-fun m!2567143 () Bool)

(assert (=> bs!441038 m!2567143))

(assert (=> start!206284 d!642186))

(declare-fun d!642188 () Bool)

(declare-fun res!916588 () Bool)

(declare-fun e!1341870 () Bool)

(assert (=> d!642188 (=> (not res!916588) (not e!1341870))))

(assert (=> d!642188 (= res!916588 ((_ is HashMap!2211) (cache!2592 cacheUp!740)))))

(assert (=> d!642188 (= (inv!30945 cacheUp!740) e!1341870)))

(declare-fun b!2109955 () Bool)

(declare-fun validCacheMapUp!232 (MutableMap!2211) Bool)

(assert (=> b!2109955 (= e!1341870 (validCacheMapUp!232 (cache!2592 cacheUp!740)))))

(assert (= (and d!642188 res!916588) b!2109955))

(declare-fun m!2567145 () Bool)

(assert (=> b!2109955 m!2567145))

(assert (=> start!206284 d!642188))

(declare-fun d!642190 () Bool)

(assert (=> d!642190 (= (array_inv!2528 (_keys!2594 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))))) (bvsge (size!18248 (_keys!2594 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2109921 d!642190))

(declare-fun d!642192 () Bool)

(assert (=> d!642192 (= (array_inv!2529 (_values!2577 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))))) (bvsge (size!18249 (_values!2577 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2109921 d!642192))

(declare-fun d!642194 () Bool)

(declare-fun lt!791967 () tuple2!22728)

(declare-datatypes ((tuple2!22730 0))(
  ( (tuple2!22731 (_1!13158 List!23469) (_2!13158 List!23469)) )
))
(declare-fun findLongestMatch!499 (Regex!5597 List!23469) tuple2!22730)

(assert (=> d!642194 (= (tuple2!22731 (list!9469 (_1!13156 lt!791967)) (list!9469 (_2!13156 lt!791967))) (findLongestMatch!499 (regex!4161 rule!236) (list!9469 input!1654)))))

(declare-fun choose!12637 (Regex!5597 BalanceConc!15246 BalanceConc!15246) tuple2!22728)

(assert (=> d!642194 (= lt!791967 (choose!12637 (regex!4161 rule!236) input!1654 totalInput!548))))

(assert (=> d!642194 (validRegex!2202 (regex!4161 rule!236))))

(assert (=> d!642194 (= (findLongestMatchWithZipperSequenceV2!67 (regex!4161 rule!236) input!1654 totalInput!548) lt!791967)))

(declare-fun bs!441039 () Bool)

(assert (= bs!441039 d!642194))

(assert (=> bs!441039 m!2567101))

(declare-fun m!2567147 () Bool)

(assert (=> bs!441039 m!2567147))

(declare-fun m!2567149 () Bool)

(assert (=> bs!441039 m!2567149))

(assert (=> bs!441039 m!2567091))

(declare-fun m!2567151 () Bool)

(assert (=> bs!441039 m!2567151))

(assert (=> bs!441039 m!2567091))

(declare-fun m!2567153 () Bool)

(assert (=> bs!441039 m!2567153))

(assert (=> b!2109920 d!642194))

(declare-fun d!642196 () Bool)

(declare-fun e!1341873 () Bool)

(assert (=> d!642196 e!1341873))

(declare-fun res!916593 () Bool)

(assert (=> d!642196 (=> (not res!916593) (not e!1341873))))

(declare-fun lt!791970 () tuple3!2656)

(assert (=> d!642196 (= res!916593 (= (_1!13157 lt!791970) (findLongestMatchWithZipperSequenceV2!67 (regex!4161 rule!236) input!1654 totalInput!548)))))

(declare-fun choose!12638 (Regex!5597 BalanceConc!15246 BalanceConc!15246 CacheUp!1506 CacheDown!1508) tuple3!2656)

(assert (=> d!642196 (= lt!791970 (choose!12638 (regex!4161 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(assert (=> d!642196 (validRegex!2202 (regex!4161 rule!236))))

(assert (=> d!642196 (= (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!41 (regex!4161 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753) lt!791970)))

(declare-fun b!2109960 () Bool)

(declare-fun res!916594 () Bool)

(assert (=> b!2109960 (=> (not res!916594) (not e!1341873))))

(assert (=> b!2109960 (= res!916594 (valid!1814 (_3!1792 lt!791970)))))

(declare-fun b!2109961 () Bool)

(assert (=> b!2109961 (= e!1341873 (valid!1813 (_2!13157 lt!791970)))))

(assert (= (and d!642196 res!916593) b!2109960))

(assert (= (and b!2109960 res!916594) b!2109961))

(assert (=> d!642196 m!2567131))

(declare-fun m!2567155 () Bool)

(assert (=> d!642196 m!2567155))

(assert (=> d!642196 m!2567101))

(declare-fun m!2567157 () Bool)

(assert (=> b!2109960 m!2567157))

(declare-fun m!2567159 () Bool)

(assert (=> b!2109961 m!2567159))

(assert (=> b!2109920 d!642196))

(declare-fun d!642198 () Bool)

(assert (=> d!642198 (= (valid!1814 cacheDown!753) (validCacheMapDown!230 (cache!2591 cacheDown!753)))))

(declare-fun bs!441040 () Bool)

(assert (= bs!441040 d!642198))

(assert (=> bs!441040 m!2567139))

(assert (=> b!2109937 d!642198))

(declare-fun d!642200 () Bool)

(assert (=> d!642200 (= (array_inv!2528 (_keys!2593 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))))) (bvsge (size!18248 (_keys!2593 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2109926 d!642200))

(declare-fun d!642202 () Bool)

(assert (=> d!642202 (= (array_inv!2530 (_values!2576 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))))) (bvsge (size!18247 (_values!2576 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2109926 d!642202))

(declare-fun d!642204 () Bool)

(declare-fun res!916599 () Bool)

(declare-fun e!1341876 () Bool)

(assert (=> d!642204 (=> (not res!916599) (not e!1341876))))

(assert (=> d!642204 (= res!916599 (validRegex!2202 (regex!4161 rule!236)))))

(assert (=> d!642204 (= (ruleValid!1284 thiss!16399 rule!236) e!1341876)))

(declare-fun b!2109966 () Bool)

(declare-fun res!916600 () Bool)

(assert (=> b!2109966 (=> (not res!916600) (not e!1341876))))

(declare-fun nullable!1675 (Regex!5597) Bool)

(assert (=> b!2109966 (= res!916600 (not (nullable!1675 (regex!4161 rule!236))))))

(declare-fun b!2109967 () Bool)

(assert (=> b!2109967 (= e!1341876 (not (= (tag!4651 rule!236) (String!26694 ""))))))

(assert (= (and d!642204 res!916599) b!2109966))

(assert (= (and b!2109966 res!916600) b!2109967))

(assert (=> d!642204 m!2567101))

(declare-fun m!2567161 () Bool)

(assert (=> b!2109966 m!2567161))

(assert (=> b!2109917 d!642204))

(declare-fun d!642206 () Bool)

(declare-fun e!1341879 () Bool)

(assert (=> d!642206 e!1341879))

(declare-fun res!916603 () Bool)

(assert (=> d!642206 (=> res!916603 e!1341879)))

(declare-fun lt!791973 () Bool)

(assert (=> d!642206 (= res!916603 (not lt!791973))))

(declare-fun drop!1171 (List!23469 Int) List!23469)

(declare-fun size!18250 (List!23469) Int)

(assert (=> d!642206 (= lt!791973 (= (list!9469 input!1654) (drop!1171 (list!9469 totalInput!548) (- (size!18250 (list!9469 totalInput!548)) (size!18250 (list!9469 input!1654))))))))

(assert (=> d!642206 (= (isSuffix!575 (list!9469 input!1654) (list!9469 totalInput!548)) lt!791973)))

(declare-fun b!2109970 () Bool)

(assert (=> b!2109970 (= e!1341879 (>= (size!18250 (list!9469 totalInput!548)) (size!18250 (list!9469 input!1654))))))

(assert (= (and d!642206 (not res!916603)) b!2109970))

(assert (=> d!642206 m!2567093))

(declare-fun m!2567163 () Bool)

(assert (=> d!642206 m!2567163))

(assert (=> d!642206 m!2567091))

(declare-fun m!2567165 () Bool)

(assert (=> d!642206 m!2567165))

(assert (=> d!642206 m!2567093))

(declare-fun m!2567167 () Bool)

(assert (=> d!642206 m!2567167))

(assert (=> b!2109970 m!2567093))

(assert (=> b!2109970 m!2567163))

(assert (=> b!2109970 m!2567091))

(assert (=> b!2109970 m!2567165))

(assert (=> b!2109932 d!642206))

(declare-fun d!642208 () Bool)

(declare-fun list!9470 (Conc!7742) List!23469)

(assert (=> d!642208 (= (list!9469 input!1654) (list!9470 (c!339031 input!1654)))))

(declare-fun bs!441041 () Bool)

(assert (= bs!441041 d!642208))

(declare-fun m!2567169 () Bool)

(assert (=> bs!441041 m!2567169))

(assert (=> b!2109932 d!642208))

(declare-fun d!642210 () Bool)

(assert (=> d!642210 (= (list!9469 totalInput!548) (list!9470 (c!339031 totalInput!548)))))

(declare-fun bs!441042 () Bool)

(assert (= bs!441042 d!642210))

(declare-fun m!2567171 () Bool)

(assert (=> bs!441042 m!2567171))

(assert (=> b!2109932 d!642210))

(declare-fun d!642212 () Bool)

(declare-fun c!339036 () Bool)

(assert (=> d!642212 (= c!339036 ((_ is Node!7742) (c!339031 input!1654)))))

(declare-fun e!1341880 () Bool)

(assert (=> d!642212 (= (inv!30946 (c!339031 input!1654)) e!1341880)))

(declare-fun b!2109971 () Bool)

(assert (=> b!2109971 (= e!1341880 (inv!30947 (c!339031 input!1654)))))

(declare-fun b!2109972 () Bool)

(declare-fun e!1341881 () Bool)

(assert (=> b!2109972 (= e!1341880 e!1341881)))

(declare-fun res!916604 () Bool)

(assert (=> b!2109972 (= res!916604 (not ((_ is Leaf!11308) (c!339031 input!1654))))))

(assert (=> b!2109972 (=> res!916604 e!1341881)))

(declare-fun b!2109973 () Bool)

(assert (=> b!2109973 (= e!1341881 (inv!30948 (c!339031 input!1654)))))

(assert (= (and d!642212 c!339036) b!2109971))

(assert (= (and d!642212 (not c!339036)) b!2109972))

(assert (= (and b!2109972 (not res!916604)) b!2109973))

(declare-fun m!2567173 () Bool)

(assert (=> b!2109971 m!2567173))

(declare-fun m!2567175 () Bool)

(assert (=> b!2109973 m!2567175))

(assert (=> b!2109933 d!642212))

(declare-fun d!642214 () Bool)

(assert (=> d!642214 (= (inv!30941 (tag!4651 rule!236)) (= (mod (str.len (value!130222 (tag!4651 rule!236))) 2) 0))))

(assert (=> b!2109924 d!642214))

(declare-fun d!642216 () Bool)

(declare-fun res!916607 () Bool)

(declare-fun e!1341884 () Bool)

(assert (=> d!642216 (=> (not res!916607) (not e!1341884))))

(declare-fun semiInverseModEq!1662 (Int Int) Bool)

(assert (=> d!642216 (= res!916607 (semiInverseModEq!1662 (toChars!5731 (transformation!4161 rule!236)) (toValue!5872 (transformation!4161 rule!236))))))

(assert (=> d!642216 (= (inv!30942 (transformation!4161 rule!236)) e!1341884)))

(declare-fun b!2109976 () Bool)

(declare-fun equivClasses!1589 (Int Int) Bool)

(assert (=> b!2109976 (= e!1341884 (equivClasses!1589 (toChars!5731 (transformation!4161 rule!236)) (toValue!5872 (transformation!4161 rule!236))))))

(assert (= (and d!642216 res!916607) b!2109976))

(declare-fun m!2567177 () Bool)

(assert (=> d!642216 m!2567177))

(declare-fun m!2567179 () Bool)

(assert (=> b!2109976 m!2567179))

(assert (=> b!2109924 d!642216))

(declare-fun d!642218 () Bool)

(assert (=> d!642218 (= (valid!1813 cacheUp!740) (validCacheMapUp!232 (cache!2592 cacheUp!740)))))

(declare-fun bs!441043 () Bool)

(assert (= bs!441043 d!642218))

(assert (=> bs!441043 m!2567145))

(assert (=> b!2109923 d!642218))

(declare-fun c!339042 () Bool)

(declare-fun bm!128421 () Bool)

(declare-fun c!339041 () Bool)

(declare-fun call!128427 () Bool)

(assert (=> bm!128421 (= call!128427 (validRegex!2202 (ite c!339042 (reg!5926 (regex!4161 rule!236)) (ite c!339041 (regOne!11707 (regex!4161 rule!236)) (regOne!11706 (regex!4161 rule!236))))))))

(declare-fun b!2109995 () Bool)

(declare-fun e!1341903 () Bool)

(declare-fun call!128428 () Bool)

(assert (=> b!2109995 (= e!1341903 call!128428)))

(declare-fun b!2109996 () Bool)

(declare-fun e!1341900 () Bool)

(assert (=> b!2109996 (= e!1341900 call!128428)))

(declare-fun b!2109997 () Bool)

(declare-fun res!916619 () Bool)

(assert (=> b!2109997 (=> (not res!916619) (not e!1341903))))

(declare-fun call!128426 () Bool)

(assert (=> b!2109997 (= res!916619 call!128426)))

(declare-fun e!1341899 () Bool)

(assert (=> b!2109997 (= e!1341899 e!1341903)))

(declare-fun bm!128422 () Bool)

(assert (=> bm!128422 (= call!128428 (validRegex!2202 (ite c!339041 (regTwo!11707 (regex!4161 rule!236)) (regTwo!11706 (regex!4161 rule!236)))))))

(declare-fun b!2109998 () Bool)

(declare-fun e!1341904 () Bool)

(assert (=> b!2109998 (= e!1341904 call!128427)))

(declare-fun b!2109999 () Bool)

(declare-fun e!1341905 () Bool)

(declare-fun e!1341902 () Bool)

(assert (=> b!2109999 (= e!1341905 e!1341902)))

(assert (=> b!2109999 (= c!339042 ((_ is Star!5597) (regex!4161 rule!236)))))

(declare-fun d!642220 () Bool)

(declare-fun res!916621 () Bool)

(assert (=> d!642220 (=> res!916621 e!1341905)))

(assert (=> d!642220 (= res!916621 ((_ is ElementMatch!5597) (regex!4161 rule!236)))))

(assert (=> d!642220 (= (validRegex!2202 (regex!4161 rule!236)) e!1341905)))

(declare-fun bm!128423 () Bool)

(assert (=> bm!128423 (= call!128426 call!128427)))

(declare-fun b!2110000 () Bool)

(assert (=> b!2110000 (= e!1341902 e!1341904)))

(declare-fun res!916620 () Bool)

(assert (=> b!2110000 (= res!916620 (not (nullable!1675 (reg!5926 (regex!4161 rule!236)))))))

(assert (=> b!2110000 (=> (not res!916620) (not e!1341904))))

(declare-fun b!2110001 () Bool)

(declare-fun e!1341901 () Bool)

(assert (=> b!2110001 (= e!1341901 e!1341900)))

(declare-fun res!916622 () Bool)

(assert (=> b!2110001 (=> (not res!916622) (not e!1341900))))

(assert (=> b!2110001 (= res!916622 call!128426)))

(declare-fun b!2110002 () Bool)

(declare-fun res!916618 () Bool)

(assert (=> b!2110002 (=> res!916618 e!1341901)))

(assert (=> b!2110002 (= res!916618 (not ((_ is Concat!9895) (regex!4161 rule!236))))))

(assert (=> b!2110002 (= e!1341899 e!1341901)))

(declare-fun b!2110003 () Bool)

(assert (=> b!2110003 (= e!1341902 e!1341899)))

(assert (=> b!2110003 (= c!339041 ((_ is Union!5597) (regex!4161 rule!236)))))

(assert (= (and d!642220 (not res!916621)) b!2109999))

(assert (= (and b!2109999 c!339042) b!2110000))

(assert (= (and b!2109999 (not c!339042)) b!2110003))

(assert (= (and b!2110000 res!916620) b!2109998))

(assert (= (and b!2110003 c!339041) b!2109997))

(assert (= (and b!2110003 (not c!339041)) b!2110002))

(assert (= (and b!2109997 res!916619) b!2109995))

(assert (= (and b!2110002 (not res!916618)) b!2110001))

(assert (= (and b!2110001 res!916622) b!2109996))

(assert (= (or b!2109997 b!2110001) bm!128423))

(assert (= (or b!2109995 b!2109996) bm!128422))

(assert (= (or b!2109998 bm!128423) bm!128421))

(declare-fun m!2567181 () Bool)

(assert (=> bm!128421 m!2567181))

(declare-fun m!2567183 () Bool)

(assert (=> bm!128422 m!2567183))

(declare-fun m!2567185 () Bool)

(assert (=> b!2110000 m!2567185))

(assert (=> b!2109940 d!642220))

(declare-fun d!642222 () Bool)

(declare-fun lt!791976 () Bool)

(declare-fun isEmpty!14296 (List!23469) Bool)

(assert (=> d!642222 (= lt!791976 (isEmpty!14296 (list!9469 (_1!13156 (_1!13157 lt!791962)))))))

(declare-fun isEmpty!14297 (Conc!7742) Bool)

(assert (=> d!642222 (= lt!791976 (isEmpty!14297 (c!339031 (_1!13156 (_1!13157 lt!791962)))))))

(assert (=> d!642222 (= (isEmpty!14295 (_1!13156 (_1!13157 lt!791962))) lt!791976)))

(declare-fun bs!441044 () Bool)

(assert (= bs!441044 d!642222))

(declare-fun m!2567187 () Bool)

(assert (=> bs!441044 m!2567187))

(assert (=> bs!441044 m!2567187))

(declare-fun m!2567189 () Bool)

(assert (=> bs!441044 m!2567189))

(declare-fun m!2567191 () Bool)

(assert (=> bs!441044 m!2567191))

(assert (=> b!2109931 d!642222))

(declare-fun e!1341911 () Bool)

(declare-fun b!2110012 () Bool)

(declare-fun tp!641793 () Bool)

(declare-fun tp!641794 () Bool)

(assert (=> b!2110012 (= e!1341911 (and (inv!30946 (left!18191 (c!339031 totalInput!548))) tp!641793 (inv!30946 (right!18521 (c!339031 totalInput!548))) tp!641794))))

(declare-fun b!2110014 () Bool)

(declare-fun e!1341910 () Bool)

(declare-fun tp!641792 () Bool)

(assert (=> b!2110014 (= e!1341910 tp!641792)))

(declare-fun b!2110013 () Bool)

(declare-fun inv!30949 (IArray!15489) Bool)

(assert (=> b!2110013 (= e!1341911 (and (inv!30949 (xs!10684 (c!339031 totalInput!548))) e!1341910))))

(assert (=> b!2109938 (= tp!641777 (and (inv!30946 (c!339031 totalInput!548)) e!1341911))))

(assert (= (and b!2109938 ((_ is Node!7742) (c!339031 totalInput!548))) b!2110012))

(assert (= b!2110013 b!2110014))

(assert (= (and b!2109938 ((_ is Leaf!11308) (c!339031 totalInput!548))) b!2110013))

(declare-fun m!2567193 () Bool)

(assert (=> b!2110012 m!2567193))

(declare-fun m!2567195 () Bool)

(assert (=> b!2110012 m!2567195))

(declare-fun m!2567197 () Bool)

(assert (=> b!2110013 m!2567197))

(assert (=> b!2109938 m!2567097))

(declare-fun b!2110029 () Bool)

(declare-fun e!1341929 () Bool)

(declare-fun tp!641820 () Bool)

(assert (=> b!2110029 (= e!1341929 tp!641820)))

(declare-fun setIsEmpty!14038 () Bool)

(declare-fun setRes!14039 () Bool)

(assert (=> setIsEmpty!14038 setRes!14039))

(declare-fun tp!641815 () Bool)

(declare-fun setNonEmpty!14038 () Bool)

(declare-fun setElem!14039 () Context!2334)

(declare-fun e!1341925 () Bool)

(declare-fun inv!30950 (Context!2334) Bool)

(assert (=> setNonEmpty!14038 (= setRes!14039 (and tp!641815 (inv!30950 setElem!14039) e!1341925))))

(declare-fun mapDefault!11088 () List!23472)

(declare-fun setRest!14039 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14038 (= (_2!13155 (h!28789 mapDefault!11088)) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14039 true) setRest!14039))))

(declare-fun condMapEmpty!11088 () Bool)

(assert (=> mapNonEmpty!11084 (= condMapEmpty!11088 (= mapRest!11084 ((as const (Array (_ BitVec 32) List!23472)) mapDefault!11088)))))

(declare-fun e!1341927 () Bool)

(declare-fun mapRes!11088 () Bool)

(assert (=> mapNonEmpty!11084 (= tp!641775 (and e!1341927 mapRes!11088))))

(declare-fun b!2110030 () Bool)

(declare-fun e!1341928 () Bool)

(declare-fun tp!641817 () Bool)

(assert (=> b!2110030 (= e!1341928 tp!641817)))

(declare-fun tp_is_empty!9387 () Bool)

(declare-fun mapValue!11088 () List!23472)

(declare-fun setRes!14038 () Bool)

(declare-fun e!1341924 () Bool)

(declare-fun e!1341926 () Bool)

(declare-fun tp!641818 () Bool)

(declare-fun b!2110031 () Bool)

(assert (=> b!2110031 (= e!1341926 (and (inv!30950 (_1!13154 (_1!13155 (h!28789 mapValue!11088)))) e!1341924 tp_is_empty!9387 setRes!14038 tp!641818))))

(declare-fun condSetEmpty!14038 () Bool)

(assert (=> b!2110031 (= condSetEmpty!14038 (= (_2!13155 (h!28789 mapValue!11088)) ((as const (Array Context!2334 Bool)) false)))))

(declare-fun tp!641819 () Bool)

(declare-fun setNonEmpty!14039 () Bool)

(declare-fun setElem!14038 () Context!2334)

(assert (=> setNonEmpty!14039 (= setRes!14038 (and tp!641819 (inv!30950 setElem!14038) e!1341929))))

(declare-fun setRest!14038 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14039 (= (_2!13155 (h!28789 mapValue!11088)) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14038 true) setRest!14038))))

(declare-fun tp!641813 () Bool)

(declare-fun b!2110032 () Bool)

(assert (=> b!2110032 (= e!1341927 (and (inv!30950 (_1!13154 (_1!13155 (h!28789 mapDefault!11088)))) e!1341928 tp_is_empty!9387 setRes!14039 tp!641813))))

(declare-fun condSetEmpty!14039 () Bool)

(assert (=> b!2110032 (= condSetEmpty!14039 (= (_2!13155 (h!28789 mapDefault!11088)) ((as const (Array Context!2334 Bool)) false)))))

(declare-fun b!2110033 () Bool)

(declare-fun tp!641816 () Bool)

(assert (=> b!2110033 (= e!1341924 tp!641816)))

(declare-fun mapNonEmpty!11088 () Bool)

(declare-fun tp!641814 () Bool)

(assert (=> mapNonEmpty!11088 (= mapRes!11088 (and tp!641814 e!1341926))))

(declare-fun mapRest!11088 () (Array (_ BitVec 32) List!23472))

(declare-fun mapKey!11088 () (_ BitVec 32))

(assert (=> mapNonEmpty!11088 (= mapRest!11084 (store mapRest!11088 mapKey!11088 mapValue!11088))))

(declare-fun setIsEmpty!14039 () Bool)

(assert (=> setIsEmpty!14039 setRes!14038))

(declare-fun b!2110034 () Bool)

(declare-fun tp!641821 () Bool)

(assert (=> b!2110034 (= e!1341925 tp!641821)))

(declare-fun mapIsEmpty!11088 () Bool)

(assert (=> mapIsEmpty!11088 mapRes!11088))

(assert (= (and mapNonEmpty!11084 condMapEmpty!11088) mapIsEmpty!11088))

(assert (= (and mapNonEmpty!11084 (not condMapEmpty!11088)) mapNonEmpty!11088))

(assert (= b!2110031 b!2110033))

(assert (= (and b!2110031 condSetEmpty!14038) setIsEmpty!14039))

(assert (= (and b!2110031 (not condSetEmpty!14038)) setNonEmpty!14039))

(assert (= setNonEmpty!14039 b!2110029))

(assert (= (and mapNonEmpty!11088 ((_ is Cons!23388) mapValue!11088)) b!2110031))

(assert (= b!2110032 b!2110030))

(assert (= (and b!2110032 condSetEmpty!14039) setIsEmpty!14038))

(assert (= (and b!2110032 (not condSetEmpty!14039)) setNonEmpty!14038))

(assert (= setNonEmpty!14038 b!2110034))

(assert (= (and mapNonEmpty!11084 ((_ is Cons!23388) mapDefault!11088)) b!2110032))

(declare-fun m!2567199 () Bool)

(assert (=> mapNonEmpty!11088 m!2567199))

(declare-fun m!2567201 () Bool)

(assert (=> b!2110031 m!2567201))

(declare-fun m!2567203 () Bool)

(assert (=> b!2110032 m!2567203))

(declare-fun m!2567205 () Bool)

(assert (=> setNonEmpty!14039 m!2567205))

(declare-fun m!2567207 () Bool)

(assert (=> setNonEmpty!14038 m!2567207))

(declare-fun e!1341936 () Bool)

(assert (=> mapNonEmpty!11084 (= tp!641768 e!1341936)))

(declare-fun b!2110043 () Bool)

(declare-fun tp!641833 () Bool)

(declare-fun e!1341937 () Bool)

(declare-fun setRes!14042 () Bool)

(assert (=> b!2110043 (= e!1341936 (and (inv!30950 (_1!13154 (_1!13155 (h!28789 mapValue!11085)))) e!1341937 tp_is_empty!9387 setRes!14042 tp!641833))))

(declare-fun condSetEmpty!14042 () Bool)

(assert (=> b!2110043 (= condSetEmpty!14042 (= (_2!13155 (h!28789 mapValue!11085)) ((as const (Array Context!2334 Bool)) false)))))

(declare-fun b!2110044 () Bool)

(declare-fun e!1341938 () Bool)

(declare-fun tp!641831 () Bool)

(assert (=> b!2110044 (= e!1341938 tp!641831)))

(declare-fun b!2110045 () Bool)

(declare-fun tp!641832 () Bool)

(assert (=> b!2110045 (= e!1341937 tp!641832)))

(declare-fun setIsEmpty!14042 () Bool)

(assert (=> setIsEmpty!14042 setRes!14042))

(declare-fun setElem!14042 () Context!2334)

(declare-fun setNonEmpty!14042 () Bool)

(declare-fun tp!641830 () Bool)

(assert (=> setNonEmpty!14042 (= setRes!14042 (and tp!641830 (inv!30950 setElem!14042) e!1341938))))

(declare-fun setRest!14042 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14042 (= (_2!13155 (h!28789 mapValue!11085)) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14042 true) setRest!14042))))

(assert (= b!2110043 b!2110045))

(assert (= (and b!2110043 condSetEmpty!14042) setIsEmpty!14042))

(assert (= (and b!2110043 (not condSetEmpty!14042)) setNonEmpty!14042))

(assert (= setNonEmpty!14042 b!2110044))

(assert (= (and mapNonEmpty!11084 ((_ is Cons!23388) mapValue!11085)) b!2110043))

(declare-fun m!2567209 () Bool)

(assert (=> b!2110043 m!2567209))

(declare-fun m!2567211 () Bool)

(assert (=> setNonEmpty!14042 m!2567211))

(declare-fun e!1341939 () Bool)

(assert (=> b!2109921 (= tp!641770 e!1341939)))

(declare-fun b!2110046 () Bool)

(declare-fun setRes!14043 () Bool)

(declare-fun tp!641837 () Bool)

(declare-fun e!1341940 () Bool)

(assert (=> b!2110046 (= e!1341939 (and (inv!30950 (_1!13154 (_1!13155 (h!28789 (zeroValue!2555 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740)))))))))) e!1341940 tp_is_empty!9387 setRes!14043 tp!641837))))

(declare-fun condSetEmpty!14043 () Bool)

(assert (=> b!2110046 (= condSetEmpty!14043 (= (_2!13155 (h!28789 (zeroValue!2555 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740)))))))) ((as const (Array Context!2334 Bool)) false)))))

(declare-fun b!2110047 () Bool)

(declare-fun e!1341941 () Bool)

(declare-fun tp!641835 () Bool)

(assert (=> b!2110047 (= e!1341941 tp!641835)))

(declare-fun b!2110048 () Bool)

(declare-fun tp!641836 () Bool)

(assert (=> b!2110048 (= e!1341940 tp!641836)))

(declare-fun setIsEmpty!14043 () Bool)

(assert (=> setIsEmpty!14043 setRes!14043))

(declare-fun setNonEmpty!14043 () Bool)

(declare-fun setElem!14043 () Context!2334)

(declare-fun tp!641834 () Bool)

(assert (=> setNonEmpty!14043 (= setRes!14043 (and tp!641834 (inv!30950 setElem!14043) e!1341941))))

(declare-fun setRest!14043 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14043 (= (_2!13155 (h!28789 (zeroValue!2555 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14043 true) setRest!14043))))

(assert (= b!2110046 b!2110048))

(assert (= (and b!2110046 condSetEmpty!14043) setIsEmpty!14043))

(assert (= (and b!2110046 (not condSetEmpty!14043)) setNonEmpty!14043))

(assert (= setNonEmpty!14043 b!2110047))

(assert (= (and b!2109921 ((_ is Cons!23388) (zeroValue!2555 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740)))))))) b!2110046))

(declare-fun m!2567213 () Bool)

(assert (=> b!2110046 m!2567213))

(declare-fun m!2567215 () Bool)

(assert (=> setNonEmpty!14043 m!2567215))

(declare-fun e!1341942 () Bool)

(assert (=> b!2109921 (= tp!641778 e!1341942)))

(declare-fun b!2110049 () Bool)

(declare-fun tp!641841 () Bool)

(declare-fun setRes!14044 () Bool)

(declare-fun e!1341943 () Bool)

(assert (=> b!2110049 (= e!1341942 (and (inv!30950 (_1!13154 (_1!13155 (h!28789 (minValue!2555 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740)))))))))) e!1341943 tp_is_empty!9387 setRes!14044 tp!641841))))

(declare-fun condSetEmpty!14044 () Bool)

(assert (=> b!2110049 (= condSetEmpty!14044 (= (_2!13155 (h!28789 (minValue!2555 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740)))))))) ((as const (Array Context!2334 Bool)) false)))))

(declare-fun b!2110050 () Bool)

(declare-fun e!1341944 () Bool)

(declare-fun tp!641839 () Bool)

(assert (=> b!2110050 (= e!1341944 tp!641839)))

(declare-fun b!2110051 () Bool)

(declare-fun tp!641840 () Bool)

(assert (=> b!2110051 (= e!1341943 tp!641840)))

(declare-fun setIsEmpty!14044 () Bool)

(assert (=> setIsEmpty!14044 setRes!14044))

(declare-fun setNonEmpty!14044 () Bool)

(declare-fun setElem!14044 () Context!2334)

(declare-fun tp!641838 () Bool)

(assert (=> setNonEmpty!14044 (= setRes!14044 (and tp!641838 (inv!30950 setElem!14044) e!1341944))))

(declare-fun setRest!14044 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14044 (= (_2!13155 (h!28789 (minValue!2555 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14044 true) setRest!14044))))

(assert (= b!2110049 b!2110051))

(assert (= (and b!2110049 condSetEmpty!14044) setIsEmpty!14044))

(assert (= (and b!2110049 (not condSetEmpty!14044)) setNonEmpty!14044))

(assert (= setNonEmpty!14044 b!2110050))

(assert (= (and b!2109921 ((_ is Cons!23388) (minValue!2555 (v!27919 (underlying!4789 (v!27920 (underlying!4790 (cache!2592 cacheUp!740)))))))) b!2110049))

(declare-fun m!2567217 () Bool)

(assert (=> b!2110049 m!2567217))

(declare-fun m!2567219 () Bool)

(assert (=> setNonEmpty!14044 m!2567219))

(declare-fun b!2110052 () Bool)

(declare-fun e!1341946 () Bool)

(declare-fun tp!641844 () Bool)

(declare-fun tp!641843 () Bool)

(assert (=> b!2110052 (= e!1341946 (and (inv!30946 (left!18191 (c!339031 input!1654))) tp!641843 (inv!30946 (right!18521 (c!339031 input!1654))) tp!641844))))

(declare-fun b!2110054 () Bool)

(declare-fun e!1341945 () Bool)

(declare-fun tp!641842 () Bool)

(assert (=> b!2110054 (= e!1341945 tp!641842)))

(declare-fun b!2110053 () Bool)

(assert (=> b!2110053 (= e!1341946 (and (inv!30949 (xs!10684 (c!339031 input!1654))) e!1341945))))

(assert (=> b!2109933 (= tp!641783 (and (inv!30946 (c!339031 input!1654)) e!1341946))))

(assert (= (and b!2109933 ((_ is Node!7742) (c!339031 input!1654))) b!2110052))

(assert (= b!2110053 b!2110054))

(assert (= (and b!2109933 ((_ is Leaf!11308) (c!339031 input!1654))) b!2110053))

(declare-fun m!2567221 () Bool)

(assert (=> b!2110052 m!2567221))

(declare-fun m!2567223 () Bool)

(assert (=> b!2110052 m!2567223))

(declare-fun m!2567225 () Bool)

(assert (=> b!2110053 m!2567225))

(assert (=> b!2109933 m!2567105))

(declare-fun b!2110066 () Bool)

(declare-fun e!1341949 () Bool)

(declare-fun tp!641857 () Bool)

(declare-fun tp!641859 () Bool)

(assert (=> b!2110066 (= e!1341949 (and tp!641857 tp!641859))))

(declare-fun b!2110068 () Bool)

(declare-fun tp!641855 () Bool)

(declare-fun tp!641856 () Bool)

(assert (=> b!2110068 (= e!1341949 (and tp!641855 tp!641856))))

(declare-fun b!2110065 () Bool)

(assert (=> b!2110065 (= e!1341949 tp_is_empty!9387)))

(declare-fun b!2110067 () Bool)

(declare-fun tp!641858 () Bool)

(assert (=> b!2110067 (= e!1341949 tp!641858)))

(assert (=> b!2109924 (= tp!641779 e!1341949)))

(assert (= (and b!2109924 ((_ is ElementMatch!5597) (regex!4161 rule!236))) b!2110065))

(assert (= (and b!2109924 ((_ is Concat!9895) (regex!4161 rule!236))) b!2110066))

(assert (= (and b!2109924 ((_ is Star!5597) (regex!4161 rule!236))) b!2110067))

(assert (= (and b!2109924 ((_ is Union!5597) (regex!4161 rule!236))) b!2110068))

(declare-fun b!2110083 () Bool)

(declare-fun e!1341966 () Bool)

(declare-fun tp!641882 () Bool)

(assert (=> b!2110083 (= e!1341966 tp!641882)))

(declare-fun setIsEmpty!14049 () Bool)

(declare-fun setRes!14049 () Bool)

(assert (=> setIsEmpty!14049 setRes!14049))

(declare-fun tp!641883 () Bool)

(declare-fun setNonEmpty!14049 () Bool)

(declare-fun setElem!14049 () Context!2334)

(assert (=> setNonEmpty!14049 (= setRes!14049 (and tp!641883 (inv!30950 setElem!14049) e!1341966))))

(declare-fun mapDefault!11091 () List!23471)

(declare-fun setRest!14050 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14049 (= (_2!13153 (h!28788 mapDefault!11091)) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14049 true) setRest!14050))))

(declare-fun condMapEmpty!11091 () Bool)

(assert (=> mapNonEmpty!11085 (= condMapEmpty!11091 (= mapRest!11085 ((as const (Array (_ BitVec 32) List!23471)) mapDefault!11091)))))

(declare-fun e!1341964 () Bool)

(declare-fun mapRes!11091 () Bool)

(assert (=> mapNonEmpty!11085 (= tp!641785 (and e!1341964 mapRes!11091))))

(declare-fun setIsEmpty!14050 () Bool)

(declare-fun setRes!14050 () Bool)

(assert (=> setIsEmpty!14050 setRes!14050))

(declare-fun e!1341967 () Bool)

(declare-fun mapValue!11091 () List!23471)

(declare-fun tp!641887 () Bool)

(declare-fun tp!641891 () Bool)

(declare-fun e!1341965 () Bool)

(declare-fun b!2110084 () Bool)

(assert (=> b!2110084 (= e!1341967 (and tp!641887 (inv!30950 (_2!13152 (_1!13153 (h!28788 mapValue!11091)))) e!1341965 tp_is_empty!9387 setRes!14050 tp!641891))))

(declare-fun condSetEmpty!14050 () Bool)

(assert (=> b!2110084 (= condSetEmpty!14050 (= (_2!13153 (h!28788 mapValue!11091)) ((as const (Array Context!2334 Bool)) false)))))

(declare-fun mapIsEmpty!11091 () Bool)

(assert (=> mapIsEmpty!11091 mapRes!11091))

(declare-fun b!2110085 () Bool)

(declare-fun e!1341962 () Bool)

(declare-fun tp!641892 () Bool)

(assert (=> b!2110085 (= e!1341962 tp!641892)))

(declare-fun b!2110086 () Bool)

(declare-fun tp!641884 () Bool)

(declare-fun e!1341963 () Bool)

(declare-fun tp!641886 () Bool)

(assert (=> b!2110086 (= e!1341964 (and tp!641884 (inv!30950 (_2!13152 (_1!13153 (h!28788 mapDefault!11091)))) e!1341963 tp_is_empty!9387 setRes!14049 tp!641886))))

(declare-fun condSetEmpty!14049 () Bool)

(assert (=> b!2110086 (= condSetEmpty!14049 (= (_2!13153 (h!28788 mapDefault!11091)) ((as const (Array Context!2334 Bool)) false)))))

(declare-fun b!2110087 () Bool)

(declare-fun tp!641885 () Bool)

(assert (=> b!2110087 (= e!1341963 tp!641885)))

(declare-fun mapNonEmpty!11091 () Bool)

(declare-fun tp!641889 () Bool)

(assert (=> mapNonEmpty!11091 (= mapRes!11091 (and tp!641889 e!1341967))))

(declare-fun mapKey!11091 () (_ BitVec 32))

(declare-fun mapRest!11091 () (Array (_ BitVec 32) List!23471))

(assert (=> mapNonEmpty!11091 (= mapRest!11085 (store mapRest!11091 mapKey!11091 mapValue!11091))))

(declare-fun b!2110088 () Bool)

(declare-fun tp!641890 () Bool)

(assert (=> b!2110088 (= e!1341965 tp!641890)))

(declare-fun tp!641888 () Bool)

(declare-fun setElem!14050 () Context!2334)

(declare-fun setNonEmpty!14050 () Bool)

(assert (=> setNonEmpty!14050 (= setRes!14050 (and tp!641888 (inv!30950 setElem!14050) e!1341962))))

(declare-fun setRest!14049 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14050 (= (_2!13153 (h!28788 mapValue!11091)) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14050 true) setRest!14049))))

(assert (= (and mapNonEmpty!11085 condMapEmpty!11091) mapIsEmpty!11091))

(assert (= (and mapNonEmpty!11085 (not condMapEmpty!11091)) mapNonEmpty!11091))

(assert (= b!2110084 b!2110088))

(assert (= (and b!2110084 condSetEmpty!14050) setIsEmpty!14050))

(assert (= (and b!2110084 (not condSetEmpty!14050)) setNonEmpty!14050))

(assert (= setNonEmpty!14050 b!2110085))

(assert (= (and mapNonEmpty!11091 ((_ is Cons!23387) mapValue!11091)) b!2110084))

(assert (= b!2110086 b!2110087))

(assert (= (and b!2110086 condSetEmpty!14049) setIsEmpty!14049))

(assert (= (and b!2110086 (not condSetEmpty!14049)) setNonEmpty!14049))

(assert (= setNonEmpty!14049 b!2110083))

(assert (= (and mapNonEmpty!11085 ((_ is Cons!23387) mapDefault!11091)) b!2110086))

(declare-fun m!2567227 () Bool)

(assert (=> setNonEmpty!14050 m!2567227))

(declare-fun m!2567229 () Bool)

(assert (=> setNonEmpty!14049 m!2567229))

(declare-fun m!2567231 () Bool)

(assert (=> b!2110086 m!2567231))

(declare-fun m!2567233 () Bool)

(assert (=> mapNonEmpty!11091 m!2567233))

(declare-fun m!2567235 () Bool)

(assert (=> b!2110084 m!2567235))

(declare-fun setIsEmpty!14053 () Bool)

(declare-fun setRes!14053 () Bool)

(assert (=> setIsEmpty!14053 setRes!14053))

(declare-fun b!2110097 () Bool)

(declare-fun e!1341976 () Bool)

(declare-fun tp!641905 () Bool)

(assert (=> b!2110097 (= e!1341976 tp!641905)))

(declare-fun e!1341974 () Bool)

(declare-fun tp!641904 () Bool)

(declare-fun e!1341975 () Bool)

(declare-fun b!2110098 () Bool)

(declare-fun tp!641903 () Bool)

(assert (=> b!2110098 (= e!1341974 (and tp!641904 (inv!30950 (_2!13152 (_1!13153 (h!28788 mapValue!11084)))) e!1341975 tp_is_empty!9387 setRes!14053 tp!641903))))

(declare-fun condSetEmpty!14053 () Bool)

(assert (=> b!2110098 (= condSetEmpty!14053 (= (_2!13153 (h!28788 mapValue!11084)) ((as const (Array Context!2334 Bool)) false)))))

(assert (=> mapNonEmpty!11085 (= tp!641784 e!1341974)))

(declare-fun b!2110099 () Bool)

(declare-fun tp!641906 () Bool)

(assert (=> b!2110099 (= e!1341975 tp!641906)))

(declare-fun setNonEmpty!14053 () Bool)

(declare-fun setElem!14053 () Context!2334)

(declare-fun tp!641907 () Bool)

(assert (=> setNonEmpty!14053 (= setRes!14053 (and tp!641907 (inv!30950 setElem!14053) e!1341976))))

(declare-fun setRest!14053 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14053 (= (_2!13153 (h!28788 mapValue!11084)) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14053 true) setRest!14053))))

(assert (= b!2110098 b!2110099))

(assert (= (and b!2110098 condSetEmpty!14053) setIsEmpty!14053))

(assert (= (and b!2110098 (not condSetEmpty!14053)) setNonEmpty!14053))

(assert (= setNonEmpty!14053 b!2110097))

(assert (= (and mapNonEmpty!11085 ((_ is Cons!23387) mapValue!11084)) b!2110098))

(declare-fun m!2567237 () Bool)

(assert (=> b!2110098 m!2567237))

(declare-fun m!2567239 () Bool)

(assert (=> setNonEmpty!14053 m!2567239))

(declare-fun e!1341977 () Bool)

(assert (=> b!2109936 (= tp!641781 e!1341977)))

(declare-fun setRes!14054 () Bool)

(declare-fun e!1341978 () Bool)

(declare-fun b!2110100 () Bool)

(declare-fun tp!641911 () Bool)

(assert (=> b!2110100 (= e!1341977 (and (inv!30950 (_1!13154 (_1!13155 (h!28789 mapDefault!11084)))) e!1341978 tp_is_empty!9387 setRes!14054 tp!641911))))

(declare-fun condSetEmpty!14054 () Bool)

(assert (=> b!2110100 (= condSetEmpty!14054 (= (_2!13155 (h!28789 mapDefault!11084)) ((as const (Array Context!2334 Bool)) false)))))

(declare-fun b!2110101 () Bool)

(declare-fun e!1341979 () Bool)

(declare-fun tp!641909 () Bool)

(assert (=> b!2110101 (= e!1341979 tp!641909)))

(declare-fun b!2110102 () Bool)

(declare-fun tp!641910 () Bool)

(assert (=> b!2110102 (= e!1341978 tp!641910)))

(declare-fun setIsEmpty!14054 () Bool)

(assert (=> setIsEmpty!14054 setRes!14054))

(declare-fun tp!641908 () Bool)

(declare-fun setElem!14054 () Context!2334)

(declare-fun setNonEmpty!14054 () Bool)

(assert (=> setNonEmpty!14054 (= setRes!14054 (and tp!641908 (inv!30950 setElem!14054) e!1341979))))

(declare-fun setRest!14054 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14054 (= (_2!13155 (h!28789 mapDefault!11084)) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14054 true) setRest!14054))))

(assert (= b!2110100 b!2110102))

(assert (= (and b!2110100 condSetEmpty!14054) setIsEmpty!14054))

(assert (= (and b!2110100 (not condSetEmpty!14054)) setNonEmpty!14054))

(assert (= setNonEmpty!14054 b!2110101))

(assert (= (and b!2109936 ((_ is Cons!23388) mapDefault!11084)) b!2110100))

(declare-fun m!2567241 () Bool)

(assert (=> b!2110100 m!2567241))

(declare-fun m!2567243 () Bool)

(assert (=> setNonEmpty!14054 m!2567243))

(declare-fun setIsEmpty!14055 () Bool)

(declare-fun setRes!14055 () Bool)

(assert (=> setIsEmpty!14055 setRes!14055))

(declare-fun b!2110103 () Bool)

(declare-fun e!1341982 () Bool)

(declare-fun tp!641914 () Bool)

(assert (=> b!2110103 (= e!1341982 tp!641914)))

(declare-fun e!1341981 () Bool)

(declare-fun tp!641912 () Bool)

(declare-fun b!2110104 () Bool)

(declare-fun e!1341980 () Bool)

(declare-fun tp!641913 () Bool)

(assert (=> b!2110104 (= e!1341980 (and tp!641913 (inv!30950 (_2!13152 (_1!13153 (h!28788 (zeroValue!2554 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753)))))))))) e!1341981 tp_is_empty!9387 setRes!14055 tp!641912))))

(declare-fun condSetEmpty!14055 () Bool)

(assert (=> b!2110104 (= condSetEmpty!14055 (= (_2!13153 (h!28788 (zeroValue!2554 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753)))))))) ((as const (Array Context!2334 Bool)) false)))))

(assert (=> b!2109926 (= tp!641771 e!1341980)))

(declare-fun b!2110105 () Bool)

(declare-fun tp!641915 () Bool)

(assert (=> b!2110105 (= e!1341981 tp!641915)))

(declare-fun setNonEmpty!14055 () Bool)

(declare-fun tp!641916 () Bool)

(declare-fun setElem!14055 () Context!2334)

(assert (=> setNonEmpty!14055 (= setRes!14055 (and tp!641916 (inv!30950 setElem!14055) e!1341982))))

(declare-fun setRest!14055 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14055 (= (_2!13153 (h!28788 (zeroValue!2554 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14055 true) setRest!14055))))

(assert (= b!2110104 b!2110105))

(assert (= (and b!2110104 condSetEmpty!14055) setIsEmpty!14055))

(assert (= (and b!2110104 (not condSetEmpty!14055)) setNonEmpty!14055))

(assert (= setNonEmpty!14055 b!2110103))

(assert (= (and b!2109926 ((_ is Cons!23387) (zeroValue!2554 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753)))))))) b!2110104))

(declare-fun m!2567245 () Bool)

(assert (=> b!2110104 m!2567245))

(declare-fun m!2567247 () Bool)

(assert (=> setNonEmpty!14055 m!2567247))

(declare-fun setIsEmpty!14056 () Bool)

(declare-fun setRes!14056 () Bool)

(assert (=> setIsEmpty!14056 setRes!14056))

(declare-fun b!2110106 () Bool)

(declare-fun e!1341985 () Bool)

(declare-fun tp!641919 () Bool)

(assert (=> b!2110106 (= e!1341985 tp!641919)))

(declare-fun tp!641918 () Bool)

(declare-fun e!1341983 () Bool)

(declare-fun e!1341984 () Bool)

(declare-fun b!2110107 () Bool)

(declare-fun tp!641917 () Bool)

(assert (=> b!2110107 (= e!1341983 (and tp!641918 (inv!30950 (_2!13152 (_1!13153 (h!28788 (minValue!2554 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753)))))))))) e!1341984 tp_is_empty!9387 setRes!14056 tp!641917))))

(declare-fun condSetEmpty!14056 () Bool)

(assert (=> b!2110107 (= condSetEmpty!14056 (= (_2!13153 (h!28788 (minValue!2554 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753)))))))) ((as const (Array Context!2334 Bool)) false)))))

(assert (=> b!2109926 (= tp!641774 e!1341983)))

(declare-fun b!2110108 () Bool)

(declare-fun tp!641920 () Bool)

(assert (=> b!2110108 (= e!1341984 tp!641920)))

(declare-fun tp!641921 () Bool)

(declare-fun setElem!14056 () Context!2334)

(declare-fun setNonEmpty!14056 () Bool)

(assert (=> setNonEmpty!14056 (= setRes!14056 (and tp!641921 (inv!30950 setElem!14056) e!1341985))))

(declare-fun setRest!14056 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14056 (= (_2!13153 (h!28788 (minValue!2554 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14056 true) setRest!14056))))

(assert (= b!2110107 b!2110108))

(assert (= (and b!2110107 condSetEmpty!14056) setIsEmpty!14056))

(assert (= (and b!2110107 (not condSetEmpty!14056)) setNonEmpty!14056))

(assert (= setNonEmpty!14056 b!2110106))

(assert (= (and b!2109926 ((_ is Cons!23387) (minValue!2554 (v!27917 (underlying!4787 (v!27918 (underlying!4788 (cache!2591 cacheDown!753)))))))) b!2110107))

(declare-fun m!2567249 () Bool)

(assert (=> b!2110107 m!2567249))

(declare-fun m!2567251 () Bool)

(assert (=> setNonEmpty!14056 m!2567251))

(declare-fun setIsEmpty!14057 () Bool)

(declare-fun setRes!14057 () Bool)

(assert (=> setIsEmpty!14057 setRes!14057))

(declare-fun b!2110109 () Bool)

(declare-fun e!1341988 () Bool)

(declare-fun tp!641924 () Bool)

(assert (=> b!2110109 (= e!1341988 tp!641924)))

(declare-fun b!2110110 () Bool)

(declare-fun e!1341987 () Bool)

(declare-fun e!1341986 () Bool)

(declare-fun tp!641922 () Bool)

(declare-fun tp!641923 () Bool)

(assert (=> b!2110110 (= e!1341986 (and tp!641923 (inv!30950 (_2!13152 (_1!13153 (h!28788 mapDefault!11085)))) e!1341987 tp_is_empty!9387 setRes!14057 tp!641922))))

(declare-fun condSetEmpty!14057 () Bool)

(assert (=> b!2110110 (= condSetEmpty!14057 (= (_2!13153 (h!28788 mapDefault!11085)) ((as const (Array Context!2334 Bool)) false)))))

(assert (=> b!2109927 (= tp!641769 e!1341986)))

(declare-fun b!2110111 () Bool)

(declare-fun tp!641925 () Bool)

(assert (=> b!2110111 (= e!1341987 tp!641925)))

(declare-fun setElem!14057 () Context!2334)

(declare-fun tp!641926 () Bool)

(declare-fun setNonEmpty!14057 () Bool)

(assert (=> setNonEmpty!14057 (= setRes!14057 (and tp!641926 (inv!30950 setElem!14057) e!1341988))))

(declare-fun setRest!14057 () (InoxSet Context!2334))

(assert (=> setNonEmpty!14057 (= (_2!13153 (h!28788 mapDefault!11085)) ((_ map or) (store ((as const (Array Context!2334 Bool)) false) setElem!14057 true) setRest!14057))))

(assert (= b!2110110 b!2110111))

(assert (= (and b!2110110 condSetEmpty!14057) setIsEmpty!14057))

(assert (= (and b!2110110 (not condSetEmpty!14057)) setNonEmpty!14057))

(assert (= setNonEmpty!14057 b!2110109))

(assert (= (and b!2109927 ((_ is Cons!23387) mapDefault!11085)) b!2110110))

(declare-fun m!2567253 () Bool)

(assert (=> b!2110110 m!2567253))

(declare-fun m!2567255 () Bool)

(assert (=> setNonEmpty!14057 m!2567255))

(check-sat (not setNonEmpty!14055) (not b!2110086) (not b_next!61611) (not b!2109961) (not b!2110105) (not b!2109966) (not d!642208) (not b!2110100) (not b!2110098) tp_is_empty!9387 (not d!642196) (not b!2110107) (not d!642210) (not setNonEmpty!14043) (not b!2110099) (not b!2109960) b_and!170469 (not b!2110000) (not d!642186) (not b!2110068) (not b!2110030) (not setNonEmpty!14049) (not b!2109971) (not b!2110101) b_and!170471 (not d!642194) (not b!2110085) (not b!2110102) (not mapNonEmpty!11091) (not setNonEmpty!14053) (not b!2110029) (not b!2110067) (not d!642218) (not b!2110084) (not setNonEmpty!14044) (not b!2110103) b_and!170473 (not b!2109973) (not b!2110054) (not b_next!61609) (not d!642184) (not b!2110046) (not b!2109947) (not b!2110104) (not b_next!61613) (not d!642198) (not b!2110106) (not b!2110108) (not b!2110052) (not mapNonEmpty!11088) (not b!2110083) (not b!2109952) (not b!2110047) (not b!2110109) (not b!2110034) (not b!2110032) (not d!642204) b_and!170475 (not b!2110031) (not b!2110033) (not b!2109933) (not setNonEmpty!14042) (not b!2110013) (not d!642206) (not b!2110051) (not b!2110014) (not setNonEmpty!14050) (not b!2109970) (not b!2110045) (not b!2110110) b_and!170467 (not b!2109949) (not setNonEmpty!14039) (not setNonEmpty!14056) (not b!2110087) (not setNonEmpty!14038) (not d!642222) (not b!2110043) (not b_next!61605) (not b!2110049) (not b!2110111) (not setNonEmpty!14054) (not b_next!61607) (not d!642216) (not b!2110066) (not bm!128421) (not setNonEmpty!14057) (not bm!128422) (not b!2109976) (not b!2110048) (not b!2110050) (not b!2109938) (not b_next!61615) (not b!2110044) (not b!2110053) (not b!2110097) (not b!2110012) b_and!170477 (not b!2109955) (not b!2110088))
(check-sat b_and!170469 b_and!170471 b_and!170473 (not b_next!61609) (not b_next!61613) b_and!170475 b_and!170467 (not b_next!61611) (not b_next!61605) (not b_next!61607) (not b_next!61615) b_and!170477)
