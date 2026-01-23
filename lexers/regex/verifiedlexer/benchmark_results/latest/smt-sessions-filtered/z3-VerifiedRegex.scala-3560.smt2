; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206200 () Bool)

(assert start!206200)

(declare-fun b!2108868 () Bool)

(declare-fun b_free!60781 () Bool)

(declare-fun b_next!61485 () Bool)

(assert (=> b!2108868 (= b_free!60781 (not b_next!61485))))

(declare-fun tp!640928 () Bool)

(declare-fun b_and!170347 () Bool)

(assert (=> b!2108868 (= tp!640928 b_and!170347)))

(declare-fun b!2108879 () Bool)

(declare-fun b_free!60783 () Bool)

(declare-fun b_next!61487 () Bool)

(assert (=> b!2108879 (= b_free!60783 (not b_next!61487))))

(declare-fun tp!640933 () Bool)

(declare-fun b_and!170349 () Bool)

(assert (=> b!2108879 (= tp!640933 b_and!170349)))

(declare-fun b!2108880 () Bool)

(declare-fun b_free!60785 () Bool)

(declare-fun b_next!61489 () Bool)

(assert (=> b!2108880 (= b_free!60785 (not b_next!61489))))

(declare-fun tp!640926 () Bool)

(declare-fun b_and!170351 () Bool)

(assert (=> b!2108880 (= tp!640926 b_and!170351)))

(declare-fun b_free!60787 () Bool)

(declare-fun b_next!61491 () Bool)

(assert (=> b!2108880 (= b_free!60787 (not b_next!61491))))

(declare-fun tp!640927 () Bool)

(declare-fun b_and!170353 () Bool)

(assert (=> b!2108880 (= tp!640927 b_and!170353)))

(declare-fun b!2108878 () Bool)

(declare-fun b_free!60789 () Bool)

(declare-fun b_next!61493 () Bool)

(assert (=> b!2108878 (= b_free!60789 (not b_next!61493))))

(declare-fun tp!640918 () Bool)

(declare-fun b_and!170355 () Bool)

(assert (=> b!2108878 (= tp!640918 b_and!170355)))

(declare-fun b!2108869 () Bool)

(declare-fun b_free!60791 () Bool)

(declare-fun b_next!61495 () Bool)

(assert (=> b!2108869 (= b_free!60791 (not b_next!61495))))

(declare-fun tp!640920 () Bool)

(declare-fun b_and!170357 () Bool)

(assert (=> b!2108869 (= tp!640920 b_and!170357)))

(declare-fun b!2108865 () Bool)

(declare-fun e!1340919 () Bool)

(declare-fun e!1340906 () Bool)

(declare-datatypes ((C!11320 0))(
  ( (C!11321 (val!6646 Int)) )
))
(declare-datatypes ((Regex!5587 0))(
  ( (ElementMatch!5587 (c!338993 C!11320)) (Concat!9876 (regOne!11686 Regex!5587) (regTwo!11686 Regex!5587)) (EmptyExpr!5587) (Star!5587 (reg!5916 Regex!5587)) (EmptyLang!5587) (Union!5587 (regOne!11687 Regex!5587) (regTwo!11687 Regex!5587)) )
))
(declare-datatypes ((List!23424 0))(
  ( (Nil!23340) (Cons!23340 (h!28741 Regex!5587) (t!195923 List!23424)) )
))
(declare-datatypes ((Context!2314 0))(
  ( (Context!2315 (exprs!1657 List!23424)) )
))
(declare-datatypes ((tuple3!2622 0))(
  ( (tuple3!2623 (_1!13099 Regex!5587) (_2!13099 Context!2314) (_3!1775 C!11320)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22648 0))(
  ( (tuple2!22649 (_1!13100 tuple3!2622) (_2!13100 (InoxSet Context!2314))) )
))
(declare-datatypes ((List!23425 0))(
  ( (Nil!23341) (Cons!23341 (h!28742 tuple2!22648) (t!195924 List!23425)) )
))
(declare-datatypes ((array!7871 0))(
  ( (array!7872 (arr!3486 (Array (_ BitVec 32) List!23425)) (size!18214 (_ BitVec 32))) )
))
(declare-datatypes ((array!7873 0))(
  ( (array!7874 (arr!3487 (Array (_ BitVec 32) (_ BitVec 64))) (size!18215 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4556 0))(
  ( (LongMapFixedSize!4557 (defaultEntry!2643 Int) (mask!6387 (_ BitVec 32)) (extraKeys!2526 (_ BitVec 32)) (zeroValue!2536 List!23425) (minValue!2536 List!23425) (_size!4607 (_ BitVec 32)) (_keys!2575 array!7873) (_values!2558 array!7871) (_vacant!2339 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8937 0))(
  ( (Cell!8938 (v!27880 LongMapFixedSize!4556)) )
))
(declare-datatypes ((MutLongMap!2278 0))(
  ( (LongMap!2278 (underlying!4751 Cell!8937)) (MutLongMapExt!2277 (__x!14985 Int)) )
))
(declare-fun lt!791833 () MutLongMap!2278)

(get-info :version)

(assert (=> b!2108865 (= e!1340919 (and e!1340906 ((_ is LongMap!2278) lt!791833)))))

(declare-datatypes ((Hashable!2192 0))(
  ( (HashableExt!2191 (__x!14986 Int)) )
))
(declare-datatypes ((Cell!8939 0))(
  ( (Cell!8940 (v!27881 MutLongMap!2278)) )
))
(declare-datatypes ((MutableMap!2192 0))(
  ( (MutableMapExt!2191 (__x!14987 Int)) (HashMap!2192 (underlying!4752 Cell!8939) (hashF!4115 Hashable!2192) (_size!4608 (_ BitVec 32)) (defaultValue!2354 Int)) )
))
(declare-datatypes ((CacheDown!1490 0))(
  ( (CacheDown!1491 (cache!2573 MutableMap!2192)) )
))
(declare-fun cacheDown!753 () CacheDown!1490)

(assert (=> b!2108865 (= lt!791833 (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))))

(declare-fun b!2108866 () Bool)

(declare-fun res!916316 () Bool)

(declare-fun e!1340922 () Bool)

(assert (=> b!2108866 (=> (not res!916316) (not e!1340922))))

(declare-fun valid!1803 (CacheDown!1490) Bool)

(assert (=> b!2108866 (= res!916316 (valid!1803 cacheDown!753))))

(declare-fun b!2108867 () Bool)

(declare-fun e!1340921 () Bool)

(declare-fun tp!640915 () Bool)

(declare-fun mapRes!11012 () Bool)

(assert (=> b!2108867 (= e!1340921 (and tp!640915 mapRes!11012))))

(declare-fun condMapEmpty!11012 () Bool)

(declare-fun mapDefault!11012 () List!23425)

(assert (=> b!2108867 (= condMapEmpty!11012 (= (arr!3486 (_values!2558 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))))) ((as const (Array (_ BitVec 32) List!23425)) mapDefault!11012)))))

(declare-fun e!1340920 () Bool)

(declare-fun e!1340910 () Bool)

(assert (=> b!2108868 (= e!1340920 (and e!1340910 tp!640928))))

(declare-fun e!1340913 () Bool)

(declare-fun tp!640924 () Bool)

(declare-fun tp!640923 () Bool)

(declare-fun array_inv!2509 (array!7873) Bool)

(declare-fun array_inv!2510 (array!7871) Bool)

(assert (=> b!2108869 (= e!1340913 (and tp!640920 tp!640923 tp!640924 (array_inv!2509 (_keys!2575 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))))) (array_inv!2510 (_values!2558 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))))) e!1340921))))

(declare-fun b!2108870 () Bool)

(declare-fun res!916312 () Bool)

(assert (=> b!2108870 (=> (not res!916312) (not e!1340922))))

(declare-datatypes ((tuple2!22650 0))(
  ( (tuple2!22651 (_1!13101 Context!2314) (_2!13101 C!11320)) )
))
(declare-datatypes ((tuple2!22652 0))(
  ( (tuple2!22653 (_1!13102 tuple2!22650) (_2!13102 (InoxSet Context!2314))) )
))
(declare-datatypes ((List!23426 0))(
  ( (Nil!23342) (Cons!23342 (h!28743 tuple2!22652) (t!195925 List!23426)) )
))
(declare-datatypes ((array!7875 0))(
  ( (array!7876 (arr!3488 (Array (_ BitVec 32) List!23426)) (size!18216 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4558 0))(
  ( (LongMapFixedSize!4559 (defaultEntry!2644 Int) (mask!6388 (_ BitVec 32)) (extraKeys!2527 (_ BitVec 32)) (zeroValue!2537 List!23426) (minValue!2537 List!23426) (_size!4609 (_ BitVec 32)) (_keys!2576 array!7873) (_values!2559 array!7875) (_vacant!2340 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8941 0))(
  ( (Cell!8942 (v!27882 LongMapFixedSize!4558)) )
))
(declare-datatypes ((MutLongMap!2279 0))(
  ( (LongMap!2279 (underlying!4753 Cell!8941)) (MutLongMapExt!2278 (__x!14988 Int)) )
))
(declare-datatypes ((Cell!8943 0))(
  ( (Cell!8944 (v!27883 MutLongMap!2279)) )
))
(declare-datatypes ((Hashable!2193 0))(
  ( (HashableExt!2192 (__x!14989 Int)) )
))
(declare-datatypes ((MutableMap!2193 0))(
  ( (MutableMapExt!2192 (__x!14990 Int)) (HashMap!2193 (underlying!4754 Cell!8943) (hashF!4116 Hashable!2193) (_size!4610 (_ BitVec 32)) (defaultValue!2355 Int)) )
))
(declare-datatypes ((CacheUp!1488 0))(
  ( (CacheUp!1489 (cache!2574 MutableMap!2193)) )
))
(declare-fun cacheUp!740 () CacheUp!1488)

(declare-fun valid!1804 (CacheUp!1488) Bool)

(assert (=> b!2108870 (= res!916312 (valid!1804 cacheUp!740))))

(declare-fun b!2108871 () Bool)

(declare-fun e!1340903 () Bool)

(declare-fun e!1340909 () Bool)

(assert (=> b!2108871 (= e!1340903 e!1340909)))

(declare-fun b!2108872 () Bool)

(declare-fun res!916313 () Bool)

(assert (=> b!2108872 (=> (not res!916313) (not e!1340922))))

(declare-datatypes ((LexerInterface!3751 0))(
  ( (LexerInterfaceExt!3748 (__x!14991 Int)) (Lexer!3749) )
))
(declare-fun thiss!16399 () LexerInterface!3751)

(declare-datatypes ((List!23427 0))(
  ( (Nil!23343) (Cons!23343 (h!28744 (_ BitVec 16)) (t!195926 List!23427)) )
))
(declare-datatypes ((TokenValue!4289 0))(
  ( (FloatLiteralValue!8578 (text!30468 List!23427)) (TokenValueExt!4288 (__x!14992 Int)) (Broken!21445 (value!129973 List!23427)) (Object!4372) (End!4289) (Def!4289) (Underscore!4289) (Match!4289) (Else!4289) (Error!4289) (Case!4289) (If!4289) (Extends!4289) (Abstract!4289) (Class!4289) (Val!4289) (DelimiterValue!8578 (del!4349 List!23427)) (KeywordValue!4295 (value!129974 List!23427)) (CommentValue!8578 (value!129975 List!23427)) (WhitespaceValue!8578 (value!129976 List!23427)) (IndentationValue!4289 (value!129977 List!23427)) (String!26648) (Int32!4289) (Broken!21446 (value!129978 List!23427)) (Boolean!4290) (Unit!37491) (OperatorValue!4292 (op!4349 List!23427)) (IdentifierValue!8578 (value!129979 List!23427)) (IdentifierValue!8579 (value!129980 List!23427)) (WhitespaceValue!8579 (value!129981 List!23427)) (True!8578) (False!8578) (Broken!21447 (value!129982 List!23427)) (Broken!21448 (value!129983 List!23427)) (True!8579) (RightBrace!4289) (RightBracket!4289) (Colon!4289) (Null!4289) (Comma!4289) (LeftBracket!4289) (False!8579) (LeftBrace!4289) (ImaginaryLiteralValue!4289 (text!30469 List!23427)) (StringLiteralValue!12867 (value!129984 List!23427)) (EOFValue!4289 (value!129985 List!23427)) (IdentValue!4289 (value!129986 List!23427)) (DelimiterValue!8579 (value!129987 List!23427)) (DedentValue!4289 (value!129988 List!23427)) (NewLineValue!4289 (value!129989 List!23427)) (IntegerValue!12867 (value!129990 (_ BitVec 32)) (text!30470 List!23427)) (IntegerValue!12868 (value!129991 Int) (text!30471 List!23427)) (Times!4289) (Or!4289) (Equal!4289) (Minus!4289) (Broken!21449 (value!129992 List!23427)) (And!4289) (Div!4289) (LessEqual!4289) (Mod!4289) (Concat!9877) (Not!4289) (Plus!4289) (SpaceValue!4289 (value!129993 List!23427)) (IntegerValue!12869 (value!129994 Int) (text!30472 List!23427)) (StringLiteralValue!12868 (text!30473 List!23427)) (FloatLiteralValue!8579 (text!30474 List!23427)) (BytesLiteralValue!4289 (value!129995 List!23427)) (CommentValue!8579 (value!129996 List!23427)) (StringLiteralValue!12869 (value!129997 List!23427)) (ErrorTokenValue!4289 (msg!4350 List!23427)) )
))
(declare-datatypes ((List!23428 0))(
  ( (Nil!23344) (Cons!23344 (h!28745 C!11320) (t!195927 List!23428)) )
))
(declare-datatypes ((IArray!15473 0))(
  ( (IArray!15474 (innerList!7794 List!23428)) )
))
(declare-datatypes ((Conc!7734 0))(
  ( (Node!7734 (left!18178 Conc!7734) (right!18508 Conc!7734) (csize!15698 Int) (cheight!7945 Int)) (Leaf!11295 (xs!10676 IArray!15473) (csize!15699 Int)) (Empty!7734) )
))
(declare-datatypes ((BalanceConc!15230 0))(
  ( (BalanceConc!15231 (c!338994 Conc!7734)) )
))
(declare-datatypes ((String!26649 0))(
  ( (String!26650 (value!129998 String)) )
))
(declare-datatypes ((TokenValueInjection!8162 0))(
  ( (TokenValueInjection!8163 (toValue!5864 Int) (toChars!5723 Int)) )
))
(declare-datatypes ((Rule!8106 0))(
  ( (Rule!8107 (regex!4153 Regex!5587) (tag!4643 String!26649) (isSeparator!4153 Bool) (transformation!4153 TokenValueInjection!8162)) )
))
(declare-fun rule!236 () Rule!8106)

(declare-fun ruleValid!1276 (LexerInterface!3751 Rule!8106) Bool)

(assert (=> b!2108872 (= res!916313 (ruleValid!1276 thiss!16399 rule!236))))

(declare-fun b!2108873 () Bool)

(declare-fun e!1340908 () Bool)

(declare-fun totalInput!548 () BalanceConc!15230)

(declare-fun tp!640929 () Bool)

(declare-fun inv!30892 (Conc!7734) Bool)

(assert (=> b!2108873 (= e!1340908 (and (inv!30892 (c!338994 totalInput!548)) tp!640929))))

(declare-fun e!1340915 () Bool)

(declare-fun tp!640931 () Bool)

(declare-fun e!1340916 () Bool)

(declare-fun b!2108874 () Bool)

(declare-fun inv!30891 (String!26649) Bool)

(declare-fun inv!30893 (TokenValueInjection!8162) Bool)

(assert (=> b!2108874 (= e!1340916 (and tp!640931 (inv!30891 (tag!4643 rule!236)) (inv!30893 (transformation!4153 rule!236)) e!1340915))))

(declare-fun b!2108875 () Bool)

(declare-fun validRegex!2200 (Regex!5587) Bool)

(assert (=> b!2108875 (= e!1340922 (not (validRegex!2200 (regex!4153 rule!236))))))

(declare-datatypes ((tuple2!22654 0))(
  ( (tuple2!22655 (_1!13103 BalanceConc!15230) (_2!13103 BalanceConc!15230)) )
))
(declare-datatypes ((tuple3!2624 0))(
  ( (tuple3!2625 (_1!13104 tuple2!22654) (_2!13104 CacheUp!1488) (_3!1776 CacheDown!1490)) )
))
(declare-fun lt!791834 () tuple3!2624)

(declare-fun input!1654 () BalanceConc!15230)

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!34 (Regex!5587 BalanceConc!15230 BalanceConc!15230 CacheUp!1488 CacheDown!1490) tuple3!2624)

(assert (=> b!2108875 (= lt!791834 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!34 (regex!4153 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(declare-fun b!2108876 () Bool)

(declare-fun e!1340912 () Bool)

(declare-fun lt!791835 () MutLongMap!2279)

(assert (=> b!2108876 (= e!1340910 (and e!1340912 ((_ is LongMap!2279) lt!791835)))))

(assert (=> b!2108876 (= lt!791835 (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))))

(declare-fun b!2108877 () Bool)

(declare-fun e!1340914 () Bool)

(declare-fun e!1340907 () Bool)

(assert (=> b!2108877 (= e!1340914 e!1340907)))

(declare-fun mapNonEmpty!11012 () Bool)

(declare-fun mapRes!11013 () Bool)

(declare-fun tp!640919 () Bool)

(declare-fun tp!640921 () Bool)

(assert (=> mapNonEmpty!11012 (= mapRes!11013 (and tp!640919 tp!640921))))

(declare-fun mapKey!11013 () (_ BitVec 32))

(declare-fun mapRest!11013 () (Array (_ BitVec 32) List!23426))

(declare-fun mapValue!11012 () List!23426)

(assert (=> mapNonEmpty!11012 (= (arr!3488 (_values!2559 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))))) (store mapRest!11013 mapKey!11013 mapValue!11012))))

(assert (=> b!2108878 (= e!1340909 (and e!1340919 tp!640918))))

(declare-fun mapIsEmpty!11012 () Bool)

(assert (=> mapIsEmpty!11012 mapRes!11013))

(declare-fun mapIsEmpty!11013 () Bool)

(assert (=> mapIsEmpty!11013 mapRes!11012))

(declare-fun tp!640930 () Bool)

(declare-fun e!1340902 () Bool)

(declare-fun tp!640917 () Bool)

(declare-fun array_inv!2511 (array!7875) Bool)

(assert (=> b!2108879 (= e!1340907 (and tp!640933 tp!640930 tp!640917 (array_inv!2509 (_keys!2576 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))))) (array_inv!2511 (_values!2559 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))))) e!1340902))))

(assert (=> b!2108880 (= e!1340915 (and tp!640926 tp!640927))))

(declare-fun mapNonEmpty!11013 () Bool)

(declare-fun tp!640932 () Bool)

(declare-fun tp!640922 () Bool)

(assert (=> mapNonEmpty!11013 (= mapRes!11012 (and tp!640932 tp!640922))))

(declare-fun mapValue!11013 () List!23425)

(declare-fun mapRest!11012 () (Array (_ BitVec 32) List!23425))

(declare-fun mapKey!11012 () (_ BitVec 32))

(assert (=> mapNonEmpty!11013 (= (arr!3486 (_values!2558 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))))) (store mapRest!11012 mapKey!11012 mapValue!11013))))

(declare-fun b!2108881 () Bool)

(declare-fun res!916314 () Bool)

(assert (=> b!2108881 (=> (not res!916314) (not e!1340922))))

(declare-fun isSuffix!568 (List!23428 List!23428) Bool)

(declare-fun list!9460 (BalanceConc!15230) List!23428)

(assert (=> b!2108881 (= res!916314 (isSuffix!568 (list!9460 input!1654) (list!9460 totalInput!548)))))

(declare-fun b!2108882 () Bool)

(declare-fun e!1340905 () Bool)

(assert (=> b!2108882 (= e!1340905 e!1340913)))

(declare-fun res!916315 () Bool)

(assert (=> start!206200 (=> (not res!916315) (not e!1340922))))

(assert (=> start!206200 (= res!916315 ((_ is Lexer!3749) thiss!16399))))

(assert (=> start!206200 e!1340922))

(assert (=> start!206200 true))

(assert (=> start!206200 e!1340916))

(declare-fun inv!30894 (CacheDown!1490) Bool)

(assert (=> start!206200 (and (inv!30894 cacheDown!753) e!1340903)))

(declare-fun e!1340923 () Bool)

(declare-fun inv!30895 (BalanceConc!15230) Bool)

(assert (=> start!206200 (and (inv!30895 input!1654) e!1340923)))

(assert (=> start!206200 (and (inv!30895 totalInput!548) e!1340908)))

(declare-fun e!1340917 () Bool)

(declare-fun inv!30896 (CacheUp!1488) Bool)

(assert (=> start!206200 (and (inv!30896 cacheUp!740) e!1340917)))

(declare-fun b!2108883 () Bool)

(assert (=> b!2108883 (= e!1340906 e!1340905)))

(declare-fun b!2108884 () Bool)

(assert (=> b!2108884 (= e!1340917 e!1340920)))

(declare-fun b!2108885 () Bool)

(assert (=> b!2108885 (= e!1340912 e!1340914)))

(declare-fun b!2108886 () Bool)

(declare-fun tp!640916 () Bool)

(assert (=> b!2108886 (= e!1340923 (and (inv!30892 (c!338994 input!1654)) tp!640916))))

(declare-fun b!2108887 () Bool)

(declare-fun tp!640925 () Bool)

(assert (=> b!2108887 (= e!1340902 (and tp!640925 mapRes!11013))))

(declare-fun condMapEmpty!11013 () Bool)

(declare-fun mapDefault!11013 () List!23426)

(assert (=> b!2108887 (= condMapEmpty!11013 (= (arr!3488 (_values!2559 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))))) ((as const (Array (_ BitVec 32) List!23426)) mapDefault!11013)))))

(assert (= (and start!206200 res!916315) b!2108872))

(assert (= (and b!2108872 res!916313) b!2108870))

(assert (= (and b!2108870 res!916312) b!2108866))

(assert (= (and b!2108866 res!916316) b!2108881))

(assert (= (and b!2108881 res!916314) b!2108875))

(assert (= b!2108874 b!2108880))

(assert (= start!206200 b!2108874))

(assert (= (and b!2108867 condMapEmpty!11012) mapIsEmpty!11013))

(assert (= (and b!2108867 (not condMapEmpty!11012)) mapNonEmpty!11013))

(assert (= b!2108869 b!2108867))

(assert (= b!2108882 b!2108869))

(assert (= b!2108883 b!2108882))

(assert (= (and b!2108865 ((_ is LongMap!2278) (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))) b!2108883))

(assert (= b!2108878 b!2108865))

(assert (= (and b!2108871 ((_ is HashMap!2192) (cache!2573 cacheDown!753))) b!2108878))

(assert (= start!206200 b!2108871))

(assert (= start!206200 b!2108886))

(assert (= start!206200 b!2108873))

(assert (= (and b!2108887 condMapEmpty!11013) mapIsEmpty!11012))

(assert (= (and b!2108887 (not condMapEmpty!11013)) mapNonEmpty!11012))

(assert (= b!2108879 b!2108887))

(assert (= b!2108877 b!2108879))

(assert (= b!2108885 b!2108877))

(assert (= (and b!2108876 ((_ is LongMap!2279) (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))) b!2108885))

(assert (= b!2108868 b!2108876))

(assert (= (and b!2108884 ((_ is HashMap!2193) (cache!2574 cacheUp!740))) b!2108868))

(assert (= start!206200 b!2108884))

(declare-fun m!2566377 () Bool)

(assert (=> b!2108874 m!2566377))

(declare-fun m!2566379 () Bool)

(assert (=> b!2108874 m!2566379))

(declare-fun m!2566381 () Bool)

(assert (=> mapNonEmpty!11012 m!2566381))

(declare-fun m!2566383 () Bool)

(assert (=> mapNonEmpty!11013 m!2566383))

(declare-fun m!2566385 () Bool)

(assert (=> b!2108866 m!2566385))

(declare-fun m!2566387 () Bool)

(assert (=> b!2108879 m!2566387))

(declare-fun m!2566389 () Bool)

(assert (=> b!2108879 m!2566389))

(declare-fun m!2566391 () Bool)

(assert (=> start!206200 m!2566391))

(declare-fun m!2566393 () Bool)

(assert (=> start!206200 m!2566393))

(declare-fun m!2566395 () Bool)

(assert (=> start!206200 m!2566395))

(declare-fun m!2566397 () Bool)

(assert (=> start!206200 m!2566397))

(declare-fun m!2566399 () Bool)

(assert (=> b!2108886 m!2566399))

(declare-fun m!2566401 () Bool)

(assert (=> b!2108873 m!2566401))

(declare-fun m!2566403 () Bool)

(assert (=> b!2108872 m!2566403))

(declare-fun m!2566405 () Bool)

(assert (=> b!2108881 m!2566405))

(declare-fun m!2566407 () Bool)

(assert (=> b!2108881 m!2566407))

(assert (=> b!2108881 m!2566405))

(assert (=> b!2108881 m!2566407))

(declare-fun m!2566409 () Bool)

(assert (=> b!2108881 m!2566409))

(declare-fun m!2566411 () Bool)

(assert (=> b!2108870 m!2566411))

(declare-fun m!2566413 () Bool)

(assert (=> b!2108875 m!2566413))

(declare-fun m!2566415 () Bool)

(assert (=> b!2108875 m!2566415))

(declare-fun m!2566417 () Bool)

(assert (=> b!2108869 m!2566417))

(declare-fun m!2566419 () Bool)

(assert (=> b!2108869 m!2566419))

(check-sat (not b_next!61495) (not start!206200) (not b!2108879) (not b_next!61493) (not b!2108873) (not b_next!61485) (not b!2108872) (not mapNonEmpty!11013) (not b_next!61489) (not b!2108870) (not b!2108886) (not mapNonEmpty!11012) (not b!2108875) (not b_next!61491) (not b_next!61487) b_and!170351 (not b!2108887) b_and!170349 (not b!2108869) b_and!170353 (not b!2108867) b_and!170357 b_and!170355 (not b!2108881) (not b!2108866) b_and!170347 (not b!2108874))
(check-sat (not b_next!61495) (not b_next!61491) b_and!170349 (not b_next!61493) (not b_next!61485) b_and!170353 (not b_next!61489) b_and!170347 (not b_next!61487) b_and!170351 b_and!170357 b_and!170355)
(get-model)

(declare-fun d!642095 () Bool)

(assert (=> d!642095 (= (array_inv!2509 (_keys!2575 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))))) (bvsge (size!18215 (_keys!2575 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108869 d!642095))

(declare-fun d!642097 () Bool)

(assert (=> d!642097 (= (array_inv!2510 (_values!2558 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))))) (bvsge (size!18214 (_values!2558 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108869 d!642097))

(declare-fun d!642099 () Bool)

(declare-fun c!338997 () Bool)

(assert (=> d!642099 (= c!338997 ((_ is Node!7734) (c!338994 input!1654)))))

(declare-fun e!1340928 () Bool)

(assert (=> d!642099 (= (inv!30892 (c!338994 input!1654)) e!1340928)))

(declare-fun b!2108894 () Bool)

(declare-fun inv!30897 (Conc!7734) Bool)

(assert (=> b!2108894 (= e!1340928 (inv!30897 (c!338994 input!1654)))))

(declare-fun b!2108895 () Bool)

(declare-fun e!1340929 () Bool)

(assert (=> b!2108895 (= e!1340928 e!1340929)))

(declare-fun res!916321 () Bool)

(assert (=> b!2108895 (= res!916321 (not ((_ is Leaf!11295) (c!338994 input!1654))))))

(assert (=> b!2108895 (=> res!916321 e!1340929)))

(declare-fun b!2108896 () Bool)

(declare-fun inv!30898 (Conc!7734) Bool)

(assert (=> b!2108896 (= e!1340929 (inv!30898 (c!338994 input!1654)))))

(assert (= (and d!642099 c!338997) b!2108894))

(assert (= (and d!642099 (not c!338997)) b!2108895))

(assert (= (and b!2108895 (not res!916321)) b!2108896))

(declare-fun m!2566421 () Bool)

(assert (=> b!2108894 m!2566421))

(declare-fun m!2566423 () Bool)

(assert (=> b!2108896 m!2566423))

(assert (=> b!2108886 d!642099))

(declare-fun d!642101 () Bool)

(assert (=> d!642101 (= (array_inv!2509 (_keys!2576 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))))) (bvsge (size!18215 (_keys!2576 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108879 d!642101))

(declare-fun d!642103 () Bool)

(assert (=> d!642103 (= (array_inv!2511 (_values!2559 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))))) (bvsge (size!18216 (_values!2559 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2108879 d!642103))

(declare-fun d!642105 () Bool)

(declare-fun res!916324 () Bool)

(declare-fun e!1340932 () Bool)

(assert (=> d!642105 (=> (not res!916324) (not e!1340932))))

(assert (=> d!642105 (= res!916324 ((_ is HashMap!2192) (cache!2573 cacheDown!753)))))

(assert (=> d!642105 (= (inv!30894 cacheDown!753) e!1340932)))

(declare-fun b!2108899 () Bool)

(declare-fun validCacheMapDown!228 (MutableMap!2192) Bool)

(assert (=> b!2108899 (= e!1340932 (validCacheMapDown!228 (cache!2573 cacheDown!753)))))

(assert (= (and d!642105 res!916324) b!2108899))

(declare-fun m!2566425 () Bool)

(assert (=> b!2108899 m!2566425))

(assert (=> start!206200 d!642105))

(declare-fun d!642107 () Bool)

(declare-fun isBalanced!2434 (Conc!7734) Bool)

(assert (=> d!642107 (= (inv!30895 input!1654) (isBalanced!2434 (c!338994 input!1654)))))

(declare-fun bs!441014 () Bool)

(assert (= bs!441014 d!642107))

(declare-fun m!2566427 () Bool)

(assert (=> bs!441014 m!2566427))

(assert (=> start!206200 d!642107))

(declare-fun d!642109 () Bool)

(assert (=> d!642109 (= (inv!30895 totalInput!548) (isBalanced!2434 (c!338994 totalInput!548)))))

(declare-fun bs!441015 () Bool)

(assert (= bs!441015 d!642109))

(declare-fun m!2566429 () Bool)

(assert (=> bs!441015 m!2566429))

(assert (=> start!206200 d!642109))

(declare-fun d!642111 () Bool)

(declare-fun res!916327 () Bool)

(declare-fun e!1340935 () Bool)

(assert (=> d!642111 (=> (not res!916327) (not e!1340935))))

(assert (=> d!642111 (= res!916327 ((_ is HashMap!2193) (cache!2574 cacheUp!740)))))

(assert (=> d!642111 (= (inv!30896 cacheUp!740) e!1340935)))

(declare-fun b!2108902 () Bool)

(declare-fun validCacheMapUp!230 (MutableMap!2193) Bool)

(assert (=> b!2108902 (= e!1340935 (validCacheMapUp!230 (cache!2574 cacheUp!740)))))

(assert (= (and d!642111 res!916327) b!2108902))

(declare-fun m!2566431 () Bool)

(assert (=> b!2108902 m!2566431))

(assert (=> start!206200 d!642111))

(declare-fun d!642113 () Bool)

(declare-fun res!916332 () Bool)

(declare-fun e!1340938 () Bool)

(assert (=> d!642113 (=> (not res!916332) (not e!1340938))))

(assert (=> d!642113 (= res!916332 (validRegex!2200 (regex!4153 rule!236)))))

(assert (=> d!642113 (= (ruleValid!1276 thiss!16399 rule!236) e!1340938)))

(declare-fun b!2108907 () Bool)

(declare-fun res!916333 () Bool)

(assert (=> b!2108907 (=> (not res!916333) (not e!1340938))))

(declare-fun nullable!1673 (Regex!5587) Bool)

(assert (=> b!2108907 (= res!916333 (not (nullable!1673 (regex!4153 rule!236))))))

(declare-fun b!2108908 () Bool)

(assert (=> b!2108908 (= e!1340938 (not (= (tag!4643 rule!236) (String!26650 ""))))))

(assert (= (and d!642113 res!916332) b!2108907))

(assert (= (and b!2108907 res!916333) b!2108908))

(assert (=> d!642113 m!2566413))

(declare-fun m!2566433 () Bool)

(assert (=> b!2108907 m!2566433))

(assert (=> b!2108872 d!642113))

(declare-fun d!642115 () Bool)

(assert (=> d!642115 (= (valid!1804 cacheUp!740) (validCacheMapUp!230 (cache!2574 cacheUp!740)))))

(declare-fun bs!441016 () Bool)

(assert (= bs!441016 d!642115))

(assert (=> bs!441016 m!2566431))

(assert (=> b!2108870 d!642115))

(declare-fun d!642117 () Bool)

(declare-fun e!1340941 () Bool)

(assert (=> d!642117 e!1340941))

(declare-fun res!916336 () Bool)

(assert (=> d!642117 (=> res!916336 e!1340941)))

(declare-fun lt!791838 () Bool)

(assert (=> d!642117 (= res!916336 (not lt!791838))))

(declare-fun drop!1169 (List!23428 Int) List!23428)

(declare-fun size!18217 (List!23428) Int)

(assert (=> d!642117 (= lt!791838 (= (list!9460 input!1654) (drop!1169 (list!9460 totalInput!548) (- (size!18217 (list!9460 totalInput!548)) (size!18217 (list!9460 input!1654))))))))

(assert (=> d!642117 (= (isSuffix!568 (list!9460 input!1654) (list!9460 totalInput!548)) lt!791838)))

(declare-fun b!2108911 () Bool)

(assert (=> b!2108911 (= e!1340941 (>= (size!18217 (list!9460 totalInput!548)) (size!18217 (list!9460 input!1654))))))

(assert (= (and d!642117 (not res!916336)) b!2108911))

(assert (=> d!642117 m!2566407))

(declare-fun m!2566435 () Bool)

(assert (=> d!642117 m!2566435))

(assert (=> d!642117 m!2566405))

(declare-fun m!2566437 () Bool)

(assert (=> d!642117 m!2566437))

(assert (=> d!642117 m!2566407))

(declare-fun m!2566439 () Bool)

(assert (=> d!642117 m!2566439))

(assert (=> b!2108911 m!2566407))

(assert (=> b!2108911 m!2566435))

(assert (=> b!2108911 m!2566405))

(assert (=> b!2108911 m!2566437))

(assert (=> b!2108881 d!642117))

(declare-fun d!642119 () Bool)

(declare-fun list!9461 (Conc!7734) List!23428)

(assert (=> d!642119 (= (list!9460 input!1654) (list!9461 (c!338994 input!1654)))))

(declare-fun bs!441017 () Bool)

(assert (= bs!441017 d!642119))

(declare-fun m!2566441 () Bool)

(assert (=> bs!441017 m!2566441))

(assert (=> b!2108881 d!642119))

(declare-fun d!642121 () Bool)

(assert (=> d!642121 (= (list!9460 totalInput!548) (list!9461 (c!338994 totalInput!548)))))

(declare-fun bs!441018 () Bool)

(assert (= bs!441018 d!642121))

(declare-fun m!2566443 () Bool)

(assert (=> bs!441018 m!2566443))

(assert (=> b!2108881 d!642121))

(declare-fun d!642123 () Bool)

(assert (=> d!642123 (= (inv!30891 (tag!4643 rule!236)) (= (mod (str.len (value!129998 (tag!4643 rule!236))) 2) 0))))

(assert (=> b!2108874 d!642123))

(declare-fun d!642125 () Bool)

(declare-fun res!916339 () Bool)

(declare-fun e!1340944 () Bool)

(assert (=> d!642125 (=> (not res!916339) (not e!1340944))))

(declare-fun semiInverseModEq!1660 (Int Int) Bool)

(assert (=> d!642125 (= res!916339 (semiInverseModEq!1660 (toChars!5723 (transformation!4153 rule!236)) (toValue!5864 (transformation!4153 rule!236))))))

(assert (=> d!642125 (= (inv!30893 (transformation!4153 rule!236)) e!1340944)))

(declare-fun b!2108914 () Bool)

(declare-fun equivClasses!1587 (Int Int) Bool)

(assert (=> b!2108914 (= e!1340944 (equivClasses!1587 (toChars!5723 (transformation!4153 rule!236)) (toValue!5864 (transformation!4153 rule!236))))))

(assert (= (and d!642125 res!916339) b!2108914))

(declare-fun m!2566445 () Bool)

(assert (=> d!642125 m!2566445))

(declare-fun m!2566447 () Bool)

(assert (=> b!2108914 m!2566447))

(assert (=> b!2108874 d!642125))

(declare-fun b!2108933 () Bool)

(declare-fun e!1340961 () Bool)

(declare-fun e!1340959 () Bool)

(assert (=> b!2108933 (= e!1340961 e!1340959)))

(declare-fun c!339002 () Bool)

(assert (=> b!2108933 (= c!339002 ((_ is Star!5587) (regex!4153 rule!236)))))

(declare-fun b!2108934 () Bool)

(declare-fun e!1340963 () Bool)

(declare-fun call!128418 () Bool)

(assert (=> b!2108934 (= e!1340963 call!128418)))

(declare-fun b!2108935 () Bool)

(declare-fun e!1340964 () Bool)

(declare-fun e!1340962 () Bool)

(assert (=> b!2108935 (= e!1340964 e!1340962)))

(declare-fun res!916354 () Bool)

(assert (=> b!2108935 (=> (not res!916354) (not e!1340962))))

(declare-fun call!128419 () Bool)

(assert (=> b!2108935 (= res!916354 call!128419)))

(declare-fun d!642127 () Bool)

(declare-fun res!916353 () Bool)

(assert (=> d!642127 (=> res!916353 e!1340961)))

(assert (=> d!642127 (= res!916353 ((_ is ElementMatch!5587) (regex!4153 rule!236)))))

(assert (=> d!642127 (= (validRegex!2200 (regex!4153 rule!236)) e!1340961)))

(declare-fun b!2108936 () Bool)

(declare-fun e!1340965 () Bool)

(declare-fun call!128417 () Bool)

(assert (=> b!2108936 (= e!1340965 call!128417)))

(declare-fun b!2108937 () Bool)

(declare-fun res!916351 () Bool)

(assert (=> b!2108937 (=> res!916351 e!1340964)))

(assert (=> b!2108937 (= res!916351 (not ((_ is Concat!9876) (regex!4153 rule!236))))))

(declare-fun e!1340960 () Bool)

(assert (=> b!2108937 (= e!1340960 e!1340964)))

(declare-fun b!2108938 () Bool)

(assert (=> b!2108938 (= e!1340959 e!1340960)))

(declare-fun c!339003 () Bool)

(assert (=> b!2108938 (= c!339003 ((_ is Union!5587) (regex!4153 rule!236)))))

(declare-fun b!2108939 () Bool)

(declare-fun res!916350 () Bool)

(assert (=> b!2108939 (=> (not res!916350) (not e!1340963))))

(assert (=> b!2108939 (= res!916350 call!128419)))

(assert (=> b!2108939 (= e!1340960 e!1340963)))

(declare-fun bm!128412 () Bool)

(assert (=> bm!128412 (= call!128417 (validRegex!2200 (ite c!339002 (reg!5916 (regex!4153 rule!236)) (ite c!339003 (regTwo!11687 (regex!4153 rule!236)) (regTwo!11686 (regex!4153 rule!236))))))))

(declare-fun bm!128413 () Bool)

(assert (=> bm!128413 (= call!128418 call!128417)))

(declare-fun b!2108940 () Bool)

(assert (=> b!2108940 (= e!1340962 call!128418)))

(declare-fun b!2108941 () Bool)

(assert (=> b!2108941 (= e!1340959 e!1340965)))

(declare-fun res!916352 () Bool)

(assert (=> b!2108941 (= res!916352 (not (nullable!1673 (reg!5916 (regex!4153 rule!236)))))))

(assert (=> b!2108941 (=> (not res!916352) (not e!1340965))))

(declare-fun bm!128414 () Bool)

(assert (=> bm!128414 (= call!128419 (validRegex!2200 (ite c!339003 (regOne!11687 (regex!4153 rule!236)) (regOne!11686 (regex!4153 rule!236)))))))

(assert (= (and d!642127 (not res!916353)) b!2108933))

(assert (= (and b!2108933 c!339002) b!2108941))

(assert (= (and b!2108933 (not c!339002)) b!2108938))

(assert (= (and b!2108941 res!916352) b!2108936))

(assert (= (and b!2108938 c!339003) b!2108939))

(assert (= (and b!2108938 (not c!339003)) b!2108937))

(assert (= (and b!2108939 res!916350) b!2108934))

(assert (= (and b!2108937 (not res!916351)) b!2108935))

(assert (= (and b!2108935 res!916354) b!2108940))

(assert (= (or b!2108939 b!2108935) bm!128414))

(assert (= (or b!2108934 b!2108940) bm!128413))

(assert (= (or b!2108936 bm!128413) bm!128412))

(declare-fun m!2566449 () Bool)

(assert (=> bm!128412 m!2566449))

(declare-fun m!2566451 () Bool)

(assert (=> b!2108941 m!2566451))

(declare-fun m!2566453 () Bool)

(assert (=> bm!128414 m!2566453))

(assert (=> b!2108875 d!642127))

(declare-fun d!642129 () Bool)

(declare-fun e!1340968 () Bool)

(assert (=> d!642129 e!1340968))

(declare-fun res!916359 () Bool)

(assert (=> d!642129 (=> (not res!916359) (not e!1340968))))

(declare-fun lt!791841 () tuple3!2624)

(declare-fun findLongestMatchWithZipperSequenceV2!61 (Regex!5587 BalanceConc!15230 BalanceConc!15230) tuple2!22654)

(assert (=> d!642129 (= res!916359 (= (_1!13104 lt!791841) (findLongestMatchWithZipperSequenceV2!61 (regex!4153 rule!236) input!1654 totalInput!548)))))

(declare-fun choose!12634 (Regex!5587 BalanceConc!15230 BalanceConc!15230 CacheUp!1488 CacheDown!1490) tuple3!2624)

(assert (=> d!642129 (= lt!791841 (choose!12634 (regex!4153 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(assert (=> d!642129 (validRegex!2200 (regex!4153 rule!236))))

(assert (=> d!642129 (= (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!34 (regex!4153 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753) lt!791841)))

(declare-fun b!2108946 () Bool)

(declare-fun res!916360 () Bool)

(assert (=> b!2108946 (=> (not res!916360) (not e!1340968))))

(assert (=> b!2108946 (= res!916360 (valid!1803 (_3!1776 lt!791841)))))

(declare-fun b!2108947 () Bool)

(assert (=> b!2108947 (= e!1340968 (valid!1804 (_2!13104 lt!791841)))))

(assert (= (and d!642129 res!916359) b!2108946))

(assert (= (and b!2108946 res!916360) b!2108947))

(declare-fun m!2566455 () Bool)

(assert (=> d!642129 m!2566455))

(declare-fun m!2566457 () Bool)

(assert (=> d!642129 m!2566457))

(assert (=> d!642129 m!2566413))

(declare-fun m!2566459 () Bool)

(assert (=> b!2108946 m!2566459))

(declare-fun m!2566461 () Bool)

(assert (=> b!2108947 m!2566461))

(assert (=> b!2108875 d!642129))

(declare-fun d!642131 () Bool)

(declare-fun c!339004 () Bool)

(assert (=> d!642131 (= c!339004 ((_ is Node!7734) (c!338994 totalInput!548)))))

(declare-fun e!1340969 () Bool)

(assert (=> d!642131 (= (inv!30892 (c!338994 totalInput!548)) e!1340969)))

(declare-fun b!2108948 () Bool)

(assert (=> b!2108948 (= e!1340969 (inv!30897 (c!338994 totalInput!548)))))

(declare-fun b!2108949 () Bool)

(declare-fun e!1340970 () Bool)

(assert (=> b!2108949 (= e!1340969 e!1340970)))

(declare-fun res!916361 () Bool)

(assert (=> b!2108949 (= res!916361 (not ((_ is Leaf!11295) (c!338994 totalInput!548))))))

(assert (=> b!2108949 (=> res!916361 e!1340970)))

(declare-fun b!2108950 () Bool)

(assert (=> b!2108950 (= e!1340970 (inv!30898 (c!338994 totalInput!548)))))

(assert (= (and d!642131 c!339004) b!2108948))

(assert (= (and d!642131 (not c!339004)) b!2108949))

(assert (= (and b!2108949 (not res!916361)) b!2108950))

(declare-fun m!2566463 () Bool)

(assert (=> b!2108948 m!2566463))

(declare-fun m!2566465 () Bool)

(assert (=> b!2108950 m!2566465))

(assert (=> b!2108873 d!642131))

(declare-fun d!642133 () Bool)

(assert (=> d!642133 (= (valid!1803 cacheDown!753) (validCacheMapDown!228 (cache!2573 cacheDown!753)))))

(declare-fun bs!441019 () Bool)

(assert (= bs!441019 d!642133))

(assert (=> bs!441019 m!2566425))

(assert (=> b!2108866 d!642133))

(declare-fun b!2108959 () Bool)

(declare-fun e!1340978 () Bool)

(declare-fun tp!640946 () Bool)

(assert (=> b!2108959 (= e!1340978 tp!640946)))

(declare-fun e!1340979 () Bool)

(declare-fun setRes!13988 () Bool)

(declare-fun tp!640944 () Bool)

(declare-fun setElem!13988 () Context!2314)

(declare-fun setNonEmpty!13988 () Bool)

(declare-fun inv!30899 (Context!2314) Bool)

(assert (=> setNonEmpty!13988 (= setRes!13988 (and tp!640944 (inv!30899 setElem!13988) e!1340979))))

(declare-fun setRest!13988 () (InoxSet Context!2314))

(assert (=> setNonEmpty!13988 (= (_2!13100 (h!28742 (zeroValue!2536 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!13988 true) setRest!13988))))

(declare-fun b!2108960 () Bool)

(declare-fun tp!640947 () Bool)

(assert (=> b!2108960 (= e!1340979 tp!640947)))

(declare-fun e!1340977 () Bool)

(assert (=> b!2108869 (= tp!640923 e!1340977)))

(declare-fun setIsEmpty!13988 () Bool)

(assert (=> setIsEmpty!13988 setRes!13988))

(declare-fun tp!640948 () Bool)

(declare-fun b!2108961 () Bool)

(declare-fun tp_is_empty!9383 () Bool)

(declare-fun tp!640945 () Bool)

(assert (=> b!2108961 (= e!1340977 (and tp!640945 (inv!30899 (_2!13099 (_1!13100 (h!28742 (zeroValue!2536 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753)))))))))) e!1340978 tp_is_empty!9383 setRes!13988 tp!640948))))

(declare-fun condSetEmpty!13988 () Bool)

(assert (=> b!2108961 (= condSetEmpty!13988 (= (_2!13100 (h!28742 (zeroValue!2536 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753)))))))) ((as const (Array Context!2314 Bool)) false)))))

(assert (= b!2108961 b!2108959))

(assert (= (and b!2108961 condSetEmpty!13988) setIsEmpty!13988))

(assert (= (and b!2108961 (not condSetEmpty!13988)) setNonEmpty!13988))

(assert (= setNonEmpty!13988 b!2108960))

(assert (= (and b!2108869 ((_ is Cons!23341) (zeroValue!2536 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753)))))))) b!2108961))

(declare-fun m!2566467 () Bool)

(assert (=> setNonEmpty!13988 m!2566467))

(declare-fun m!2566469 () Bool)

(assert (=> b!2108961 m!2566469))

(declare-fun b!2108962 () Bool)

(declare-fun e!1340981 () Bool)

(declare-fun tp!640951 () Bool)

(assert (=> b!2108962 (= e!1340981 tp!640951)))

(declare-fun setNonEmpty!13989 () Bool)

(declare-fun setRes!13989 () Bool)

(declare-fun tp!640949 () Bool)

(declare-fun e!1340982 () Bool)

(declare-fun setElem!13989 () Context!2314)

(assert (=> setNonEmpty!13989 (= setRes!13989 (and tp!640949 (inv!30899 setElem!13989) e!1340982))))

(declare-fun setRest!13989 () (InoxSet Context!2314))

(assert (=> setNonEmpty!13989 (= (_2!13100 (h!28742 (minValue!2536 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!13989 true) setRest!13989))))

(declare-fun b!2108963 () Bool)

(declare-fun tp!640952 () Bool)

(assert (=> b!2108963 (= e!1340982 tp!640952)))

(declare-fun e!1340980 () Bool)

(assert (=> b!2108869 (= tp!640924 e!1340980)))

(declare-fun setIsEmpty!13989 () Bool)

(assert (=> setIsEmpty!13989 setRes!13989))

(declare-fun b!2108964 () Bool)

(declare-fun tp!640953 () Bool)

(declare-fun tp!640950 () Bool)

(assert (=> b!2108964 (= e!1340980 (and tp!640950 (inv!30899 (_2!13099 (_1!13100 (h!28742 (minValue!2536 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753)))))))))) e!1340981 tp_is_empty!9383 setRes!13989 tp!640953))))

(declare-fun condSetEmpty!13989 () Bool)

(assert (=> b!2108964 (= condSetEmpty!13989 (= (_2!13100 (h!28742 (minValue!2536 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753)))))))) ((as const (Array Context!2314 Bool)) false)))))

(assert (= b!2108964 b!2108962))

(assert (= (and b!2108964 condSetEmpty!13989) setIsEmpty!13989))

(assert (= (and b!2108964 (not condSetEmpty!13989)) setNonEmpty!13989))

(assert (= setNonEmpty!13989 b!2108963))

(assert (= (and b!2108869 ((_ is Cons!23341) (minValue!2536 (v!27880 (underlying!4751 (v!27881 (underlying!4752 (cache!2573 cacheDown!753)))))))) b!2108964))

(declare-fun m!2566471 () Bool)

(assert (=> setNonEmpty!13989 m!2566471))

(declare-fun m!2566473 () Bool)

(assert (=> b!2108964 m!2566473))

(declare-fun e!1340988 () Bool)

(declare-fun tp!640961 () Bool)

(declare-fun tp!640962 () Bool)

(declare-fun b!2108973 () Bool)

(assert (=> b!2108973 (= e!1340988 (and (inv!30892 (left!18178 (c!338994 input!1654))) tp!640962 (inv!30892 (right!18508 (c!338994 input!1654))) tp!640961))))

(declare-fun b!2108975 () Bool)

(declare-fun e!1340987 () Bool)

(declare-fun tp!640960 () Bool)

(assert (=> b!2108975 (= e!1340987 tp!640960)))

(declare-fun b!2108974 () Bool)

(declare-fun inv!30900 (IArray!15473) Bool)

(assert (=> b!2108974 (= e!1340988 (and (inv!30900 (xs!10676 (c!338994 input!1654))) e!1340987))))

(assert (=> b!2108886 (= tp!640916 (and (inv!30892 (c!338994 input!1654)) e!1340988))))

(assert (= (and b!2108886 ((_ is Node!7734) (c!338994 input!1654))) b!2108973))

(assert (= b!2108974 b!2108975))

(assert (= (and b!2108886 ((_ is Leaf!11295) (c!338994 input!1654))) b!2108974))

(declare-fun m!2566475 () Bool)

(assert (=> b!2108973 m!2566475))

(declare-fun m!2566477 () Bool)

(assert (=> b!2108973 m!2566477))

(declare-fun m!2566479 () Bool)

(assert (=> b!2108974 m!2566479))

(assert (=> b!2108886 m!2566399))

(declare-fun b!2108987 () Bool)

(declare-fun e!1340991 () Bool)

(declare-fun tp!640975 () Bool)

(declare-fun tp!640977 () Bool)

(assert (=> b!2108987 (= e!1340991 (and tp!640975 tp!640977))))

(declare-fun b!2108988 () Bool)

(declare-fun tp!640974 () Bool)

(assert (=> b!2108988 (= e!1340991 tp!640974)))

(assert (=> b!2108874 (= tp!640931 e!1340991)))

(declare-fun b!2108989 () Bool)

(declare-fun tp!640976 () Bool)

(declare-fun tp!640973 () Bool)

(assert (=> b!2108989 (= e!1340991 (and tp!640976 tp!640973))))

(declare-fun b!2108986 () Bool)

(assert (=> b!2108986 (= e!1340991 tp_is_empty!9383)))

(assert (= (and b!2108874 ((_ is ElementMatch!5587) (regex!4153 rule!236))) b!2108986))

(assert (= (and b!2108874 ((_ is Concat!9876) (regex!4153 rule!236))) b!2108987))

(assert (= (and b!2108874 ((_ is Star!5587) (regex!4153 rule!236))) b!2108988))

(assert (= (and b!2108874 ((_ is Union!5587) (regex!4153 rule!236))) b!2108989))

(declare-fun b!2108998 () Bool)

(declare-fun e!1340998 () Bool)

(declare-fun tp!640989 () Bool)

(assert (=> b!2108998 (= e!1340998 tp!640989)))

(declare-fun e!1341000 () Bool)

(assert (=> b!2108887 (= tp!640925 e!1341000)))

(declare-fun setIsEmpty!13992 () Bool)

(declare-fun setRes!13992 () Bool)

(assert (=> setIsEmpty!13992 setRes!13992))

(declare-fun setElem!13992 () Context!2314)

(declare-fun e!1340999 () Bool)

(declare-fun setNonEmpty!13992 () Bool)

(declare-fun tp!640988 () Bool)

(assert (=> setNonEmpty!13992 (= setRes!13992 (and tp!640988 (inv!30899 setElem!13992) e!1340999))))

(declare-fun setRest!13992 () (InoxSet Context!2314))

(assert (=> setNonEmpty!13992 (= (_2!13102 (h!28743 mapDefault!11013)) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!13992 true) setRest!13992))))

(declare-fun b!2108999 () Bool)

(declare-fun tp!640986 () Bool)

(assert (=> b!2108999 (= e!1340999 tp!640986)))

(declare-fun b!2109000 () Bool)

(declare-fun tp!640987 () Bool)

(assert (=> b!2109000 (= e!1341000 (and (inv!30899 (_1!13101 (_1!13102 (h!28743 mapDefault!11013)))) e!1340998 tp_is_empty!9383 setRes!13992 tp!640987))))

(declare-fun condSetEmpty!13992 () Bool)

(assert (=> b!2109000 (= condSetEmpty!13992 (= (_2!13102 (h!28743 mapDefault!11013)) ((as const (Array Context!2314 Bool)) false)))))

(assert (= b!2109000 b!2108998))

(assert (= (and b!2109000 condSetEmpty!13992) setIsEmpty!13992))

(assert (= (and b!2109000 (not condSetEmpty!13992)) setNonEmpty!13992))

(assert (= setNonEmpty!13992 b!2108999))

(assert (= (and b!2108887 ((_ is Cons!23342) mapDefault!11013)) b!2109000))

(declare-fun m!2566481 () Bool)

(assert (=> setNonEmpty!13992 m!2566481))

(declare-fun m!2566483 () Bool)

(assert (=> b!2109000 m!2566483))

(declare-fun tp!640991 () Bool)

(declare-fun b!2109001 () Bool)

(declare-fun tp!640992 () Bool)

(declare-fun e!1341002 () Bool)

(assert (=> b!2109001 (= e!1341002 (and (inv!30892 (left!18178 (c!338994 totalInput!548))) tp!640992 (inv!30892 (right!18508 (c!338994 totalInput!548))) tp!640991))))

(declare-fun b!2109003 () Bool)

(declare-fun e!1341001 () Bool)

(declare-fun tp!640990 () Bool)

(assert (=> b!2109003 (= e!1341001 tp!640990)))

(declare-fun b!2109002 () Bool)

(assert (=> b!2109002 (= e!1341002 (and (inv!30900 (xs!10676 (c!338994 totalInput!548))) e!1341001))))

(assert (=> b!2108873 (= tp!640929 (and (inv!30892 (c!338994 totalInput!548)) e!1341002))))

(assert (= (and b!2108873 ((_ is Node!7734) (c!338994 totalInput!548))) b!2109001))

(assert (= b!2109002 b!2109003))

(assert (= (and b!2108873 ((_ is Leaf!11295) (c!338994 totalInput!548))) b!2109002))

(declare-fun m!2566485 () Bool)

(assert (=> b!2109001 m!2566485))

(declare-fun m!2566487 () Bool)

(assert (=> b!2109001 m!2566487))

(declare-fun m!2566489 () Bool)

(assert (=> b!2109002 m!2566489))

(assert (=> b!2108873 m!2566401))

(declare-fun setElem!13998 () Context!2314)

(declare-fun setNonEmpty!13997 () Bool)

(declare-fun e!1341018 () Bool)

(declare-fun tp!641011 () Bool)

(declare-fun setRes!13997 () Bool)

(assert (=> setNonEmpty!13997 (= setRes!13997 (and tp!641011 (inv!30899 setElem!13998) e!1341018))))

(declare-fun mapDefault!11016 () List!23426)

(declare-fun setRest!13998 () (InoxSet Context!2314))

(assert (=> setNonEmpty!13997 (= (_2!13102 (h!28743 mapDefault!11016)) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!13998 true) setRest!13998))))

(declare-fun e!1341016 () Bool)

(declare-fun e!1341017 () Bool)

(declare-fun setRes!13998 () Bool)

(declare-fun mapValue!11016 () List!23426)

(declare-fun b!2109018 () Bool)

(declare-fun tp!641017 () Bool)

(assert (=> b!2109018 (= e!1341016 (and (inv!30899 (_1!13101 (_1!13102 (h!28743 mapValue!11016)))) e!1341017 tp_is_empty!9383 setRes!13998 tp!641017))))

(declare-fun condSetEmpty!13997 () Bool)

(assert (=> b!2109018 (= condSetEmpty!13997 (= (_2!13102 (h!28743 mapValue!11016)) ((as const (Array Context!2314 Bool)) false)))))

(declare-fun setElem!13997 () Context!2314)

(declare-fun setNonEmpty!13998 () Bool)

(declare-fun e!1341019 () Bool)

(declare-fun tp!641018 () Bool)

(assert (=> setNonEmpty!13998 (= setRes!13998 (and tp!641018 (inv!30899 setElem!13997) e!1341019))))

(declare-fun setRest!13997 () (InoxSet Context!2314))

(assert (=> setNonEmpty!13998 (= (_2!13102 (h!28743 mapValue!11016)) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!13997 true) setRest!13997))))

(declare-fun condMapEmpty!11016 () Bool)

(assert (=> mapNonEmpty!11012 (= condMapEmpty!11016 (= mapRest!11013 ((as const (Array (_ BitVec 32) List!23426)) mapDefault!11016)))))

(declare-fun e!1341015 () Bool)

(declare-fun mapRes!11016 () Bool)

(assert (=> mapNonEmpty!11012 (= tp!640919 (and e!1341015 mapRes!11016))))

(declare-fun e!1341020 () Bool)

(declare-fun tp!641012 () Bool)

(declare-fun b!2109019 () Bool)

(assert (=> b!2109019 (= e!1341015 (and (inv!30899 (_1!13101 (_1!13102 (h!28743 mapDefault!11016)))) e!1341020 tp_is_empty!9383 setRes!13997 tp!641012))))

(declare-fun condSetEmpty!13998 () Bool)

(assert (=> b!2109019 (= condSetEmpty!13998 (= (_2!13102 (h!28743 mapDefault!11016)) ((as const (Array Context!2314 Bool)) false)))))

(declare-fun mapIsEmpty!11016 () Bool)

(assert (=> mapIsEmpty!11016 mapRes!11016))

(declare-fun b!2109020 () Bool)

(declare-fun tp!641014 () Bool)

(assert (=> b!2109020 (= e!1341019 tp!641014)))

(declare-fun setIsEmpty!13997 () Bool)

(assert (=> setIsEmpty!13997 setRes!13998))

(declare-fun setIsEmpty!13998 () Bool)

(assert (=> setIsEmpty!13998 setRes!13997))

(declare-fun b!2109021 () Bool)

(declare-fun tp!641019 () Bool)

(assert (=> b!2109021 (= e!1341017 tp!641019)))

(declare-fun mapNonEmpty!11016 () Bool)

(declare-fun tp!641016 () Bool)

(assert (=> mapNonEmpty!11016 (= mapRes!11016 (and tp!641016 e!1341016))))

(declare-fun mapKey!11016 () (_ BitVec 32))

(declare-fun mapRest!11016 () (Array (_ BitVec 32) List!23426))

(assert (=> mapNonEmpty!11016 (= mapRest!11013 (store mapRest!11016 mapKey!11016 mapValue!11016))))

(declare-fun b!2109022 () Bool)

(declare-fun tp!641013 () Bool)

(assert (=> b!2109022 (= e!1341020 tp!641013)))

(declare-fun b!2109023 () Bool)

(declare-fun tp!641015 () Bool)

(assert (=> b!2109023 (= e!1341018 tp!641015)))

(assert (= (and mapNonEmpty!11012 condMapEmpty!11016) mapIsEmpty!11016))

(assert (= (and mapNonEmpty!11012 (not condMapEmpty!11016)) mapNonEmpty!11016))

(assert (= b!2109018 b!2109021))

(assert (= (and b!2109018 condSetEmpty!13997) setIsEmpty!13997))

(assert (= (and b!2109018 (not condSetEmpty!13997)) setNonEmpty!13998))

(assert (= setNonEmpty!13998 b!2109020))

(assert (= (and mapNonEmpty!11016 ((_ is Cons!23342) mapValue!11016)) b!2109018))

(assert (= b!2109019 b!2109022))

(assert (= (and b!2109019 condSetEmpty!13998) setIsEmpty!13998))

(assert (= (and b!2109019 (not condSetEmpty!13998)) setNonEmpty!13997))

(assert (= setNonEmpty!13997 b!2109023))

(assert (= (and mapNonEmpty!11012 ((_ is Cons!23342) mapDefault!11016)) b!2109019))

(declare-fun m!2566491 () Bool)

(assert (=> mapNonEmpty!11016 m!2566491))

(declare-fun m!2566493 () Bool)

(assert (=> b!2109018 m!2566493))

(declare-fun m!2566495 () Bool)

(assert (=> setNonEmpty!13998 m!2566495))

(declare-fun m!2566497 () Bool)

(assert (=> b!2109019 m!2566497))

(declare-fun m!2566499 () Bool)

(assert (=> setNonEmpty!13997 m!2566499))

(declare-fun b!2109024 () Bool)

(declare-fun e!1341021 () Bool)

(declare-fun tp!641023 () Bool)

(assert (=> b!2109024 (= e!1341021 tp!641023)))

(declare-fun e!1341023 () Bool)

(assert (=> mapNonEmpty!11012 (= tp!640921 e!1341023)))

(declare-fun setIsEmpty!13999 () Bool)

(declare-fun setRes!13999 () Bool)

(assert (=> setIsEmpty!13999 setRes!13999))

(declare-fun e!1341022 () Bool)

(declare-fun tp!641022 () Bool)

(declare-fun setElem!13999 () Context!2314)

(declare-fun setNonEmpty!13999 () Bool)

(assert (=> setNonEmpty!13999 (= setRes!13999 (and tp!641022 (inv!30899 setElem!13999) e!1341022))))

(declare-fun setRest!13999 () (InoxSet Context!2314))

(assert (=> setNonEmpty!13999 (= (_2!13102 (h!28743 mapValue!11012)) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!13999 true) setRest!13999))))

(declare-fun b!2109025 () Bool)

(declare-fun tp!641020 () Bool)

(assert (=> b!2109025 (= e!1341022 tp!641020)))

(declare-fun tp!641021 () Bool)

(declare-fun b!2109026 () Bool)

(assert (=> b!2109026 (= e!1341023 (and (inv!30899 (_1!13101 (_1!13102 (h!28743 mapValue!11012)))) e!1341021 tp_is_empty!9383 setRes!13999 tp!641021))))

(declare-fun condSetEmpty!13999 () Bool)

(assert (=> b!2109026 (= condSetEmpty!13999 (= (_2!13102 (h!28743 mapValue!11012)) ((as const (Array Context!2314 Bool)) false)))))

(assert (= b!2109026 b!2109024))

(assert (= (and b!2109026 condSetEmpty!13999) setIsEmpty!13999))

(assert (= (and b!2109026 (not condSetEmpty!13999)) setNonEmpty!13999))

(assert (= setNonEmpty!13999 b!2109025))

(assert (= (and mapNonEmpty!11012 ((_ is Cons!23342) mapValue!11012)) b!2109026))

(declare-fun m!2566501 () Bool)

(assert (=> setNonEmpty!13999 m!2566501))

(declare-fun m!2566503 () Bool)

(assert (=> b!2109026 m!2566503))

(declare-fun setIsEmpty!14004 () Bool)

(declare-fun setRes!14004 () Bool)

(assert (=> setIsEmpty!14004 setRes!14004))

(declare-fun e!1341038 () Bool)

(declare-fun mapDefault!11019 () List!23425)

(declare-fun e!1341041 () Bool)

(declare-fun tp!641047 () Bool)

(declare-fun tp!641054 () Bool)

(declare-fun b!2109041 () Bool)

(assert (=> b!2109041 (= e!1341041 (and tp!641054 (inv!30899 (_2!13099 (_1!13100 (h!28742 mapDefault!11019)))) e!1341038 tp_is_empty!9383 setRes!14004 tp!641047))))

(declare-fun condSetEmpty!14004 () Bool)

(assert (=> b!2109041 (= condSetEmpty!14004 (= (_2!13100 (h!28742 mapDefault!11019)) ((as const (Array Context!2314 Bool)) false)))))

(declare-fun condMapEmpty!11019 () Bool)

(assert (=> mapNonEmpty!11013 (= condMapEmpty!11019 (= mapRest!11012 ((as const (Array (_ BitVec 32) List!23425)) mapDefault!11019)))))

(declare-fun mapRes!11019 () Bool)

(assert (=> mapNonEmpty!11013 (= tp!640932 (and e!1341041 mapRes!11019))))

(declare-fun setIsEmpty!14005 () Bool)

(declare-fun setRes!14005 () Bool)

(assert (=> setIsEmpty!14005 setRes!14005))

(declare-fun setNonEmpty!14004 () Bool)

(declare-fun tp!641053 () Bool)

(declare-fun setElem!14005 () Context!2314)

(declare-fun e!1341036 () Bool)

(assert (=> setNonEmpty!14004 (= setRes!14004 (and tp!641053 (inv!30899 setElem!14005) e!1341036))))

(declare-fun setRest!14004 () (InoxSet Context!2314))

(assert (=> setNonEmpty!14004 (= (_2!13100 (h!28742 mapDefault!11019)) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!14005 true) setRest!14004))))

(declare-fun mapIsEmpty!11019 () Bool)

(assert (=> mapIsEmpty!11019 mapRes!11019))

(declare-fun b!2109042 () Bool)

(declare-fun tp!641048 () Bool)

(assert (=> b!2109042 (= e!1341038 tp!641048)))

(declare-fun mapNonEmpty!11019 () Bool)

(declare-fun tp!641050 () Bool)

(declare-fun e!1341040 () Bool)

(assert (=> mapNonEmpty!11019 (= mapRes!11019 (and tp!641050 e!1341040))))

(declare-fun mapRest!11019 () (Array (_ BitVec 32) List!23425))

(declare-fun mapKey!11019 () (_ BitVec 32))

(declare-fun mapValue!11019 () List!23425)

(assert (=> mapNonEmpty!11019 (= mapRest!11012 (store mapRest!11019 mapKey!11019 mapValue!11019))))

(declare-fun b!2109043 () Bool)

(declare-fun e!1341039 () Bool)

(declare-fun tp!641049 () Bool)

(assert (=> b!2109043 (= e!1341039 tp!641049)))

(declare-fun b!2109044 () Bool)

(declare-fun tp!641052 () Bool)

(assert (=> b!2109044 (= e!1341036 tp!641052)))

(declare-fun tp!641056 () Bool)

(declare-fun tp!641055 () Bool)

(declare-fun b!2109045 () Bool)

(assert (=> b!2109045 (= e!1341040 (and tp!641056 (inv!30899 (_2!13099 (_1!13100 (h!28742 mapValue!11019)))) e!1341039 tp_is_empty!9383 setRes!14005 tp!641055))))

(declare-fun condSetEmpty!14005 () Bool)

(assert (=> b!2109045 (= condSetEmpty!14005 (= (_2!13100 (h!28742 mapValue!11019)) ((as const (Array Context!2314 Bool)) false)))))

(declare-fun b!2109046 () Bool)

(declare-fun e!1341037 () Bool)

(declare-fun tp!641046 () Bool)

(assert (=> b!2109046 (= e!1341037 tp!641046)))

(declare-fun setNonEmpty!14005 () Bool)

(declare-fun setElem!14004 () Context!2314)

(declare-fun tp!641051 () Bool)

(assert (=> setNonEmpty!14005 (= setRes!14005 (and tp!641051 (inv!30899 setElem!14004) e!1341037))))

(declare-fun setRest!14005 () (InoxSet Context!2314))

(assert (=> setNonEmpty!14005 (= (_2!13100 (h!28742 mapValue!11019)) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!14004 true) setRest!14005))))

(assert (= (and mapNonEmpty!11013 condMapEmpty!11019) mapIsEmpty!11019))

(assert (= (and mapNonEmpty!11013 (not condMapEmpty!11019)) mapNonEmpty!11019))

(assert (= b!2109045 b!2109043))

(assert (= (and b!2109045 condSetEmpty!14005) setIsEmpty!14005))

(assert (= (and b!2109045 (not condSetEmpty!14005)) setNonEmpty!14005))

(assert (= setNonEmpty!14005 b!2109046))

(assert (= (and mapNonEmpty!11019 ((_ is Cons!23341) mapValue!11019)) b!2109045))

(assert (= b!2109041 b!2109042))

(assert (= (and b!2109041 condSetEmpty!14004) setIsEmpty!14004))

(assert (= (and b!2109041 (not condSetEmpty!14004)) setNonEmpty!14004))

(assert (= setNonEmpty!14004 b!2109044))

(assert (= (and mapNonEmpty!11013 ((_ is Cons!23341) mapDefault!11019)) b!2109041))

(declare-fun m!2566505 () Bool)

(assert (=> setNonEmpty!14004 m!2566505))

(declare-fun m!2566507 () Bool)

(assert (=> b!2109045 m!2566507))

(declare-fun m!2566509 () Bool)

(assert (=> b!2109041 m!2566509))

(declare-fun m!2566511 () Bool)

(assert (=> mapNonEmpty!11019 m!2566511))

(declare-fun m!2566513 () Bool)

(assert (=> setNonEmpty!14005 m!2566513))

(declare-fun b!2109047 () Bool)

(declare-fun e!1341043 () Bool)

(declare-fun tp!641059 () Bool)

(assert (=> b!2109047 (= e!1341043 tp!641059)))

(declare-fun setNonEmpty!14006 () Bool)

(declare-fun e!1341044 () Bool)

(declare-fun tp!641057 () Bool)

(declare-fun setRes!14006 () Bool)

(declare-fun setElem!14006 () Context!2314)

(assert (=> setNonEmpty!14006 (= setRes!14006 (and tp!641057 (inv!30899 setElem!14006) e!1341044))))

(declare-fun setRest!14006 () (InoxSet Context!2314))

(assert (=> setNonEmpty!14006 (= (_2!13100 (h!28742 mapValue!11013)) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!14006 true) setRest!14006))))

(declare-fun b!2109048 () Bool)

(declare-fun tp!641060 () Bool)

(assert (=> b!2109048 (= e!1341044 tp!641060)))

(declare-fun e!1341042 () Bool)

(assert (=> mapNonEmpty!11013 (= tp!640922 e!1341042)))

(declare-fun setIsEmpty!14006 () Bool)

(assert (=> setIsEmpty!14006 setRes!14006))

(declare-fun tp!641058 () Bool)

(declare-fun tp!641061 () Bool)

(declare-fun b!2109049 () Bool)

(assert (=> b!2109049 (= e!1341042 (and tp!641058 (inv!30899 (_2!13099 (_1!13100 (h!28742 mapValue!11013)))) e!1341043 tp_is_empty!9383 setRes!14006 tp!641061))))

(declare-fun condSetEmpty!14006 () Bool)

(assert (=> b!2109049 (= condSetEmpty!14006 (= (_2!13100 (h!28742 mapValue!11013)) ((as const (Array Context!2314 Bool)) false)))))

(assert (= b!2109049 b!2109047))

(assert (= (and b!2109049 condSetEmpty!14006) setIsEmpty!14006))

(assert (= (and b!2109049 (not condSetEmpty!14006)) setNonEmpty!14006))

(assert (= setNonEmpty!14006 b!2109048))

(assert (= (and mapNonEmpty!11013 ((_ is Cons!23341) mapValue!11013)) b!2109049))

(declare-fun m!2566515 () Bool)

(assert (=> setNonEmpty!14006 m!2566515))

(declare-fun m!2566517 () Bool)

(assert (=> b!2109049 m!2566517))

(declare-fun b!2109050 () Bool)

(declare-fun e!1341045 () Bool)

(declare-fun tp!641065 () Bool)

(assert (=> b!2109050 (= e!1341045 tp!641065)))

(declare-fun e!1341047 () Bool)

(assert (=> b!2108879 (= tp!640930 e!1341047)))

(declare-fun setIsEmpty!14007 () Bool)

(declare-fun setRes!14007 () Bool)

(assert (=> setIsEmpty!14007 setRes!14007))

(declare-fun setNonEmpty!14007 () Bool)

(declare-fun setElem!14007 () Context!2314)

(declare-fun e!1341046 () Bool)

(declare-fun tp!641064 () Bool)

(assert (=> setNonEmpty!14007 (= setRes!14007 (and tp!641064 (inv!30899 setElem!14007) e!1341046))))

(declare-fun setRest!14007 () (InoxSet Context!2314))

(assert (=> setNonEmpty!14007 (= (_2!13102 (h!28743 (zeroValue!2537 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!14007 true) setRest!14007))))

(declare-fun b!2109051 () Bool)

(declare-fun tp!641062 () Bool)

(assert (=> b!2109051 (= e!1341046 tp!641062)))

(declare-fun b!2109052 () Bool)

(declare-fun tp!641063 () Bool)

(assert (=> b!2109052 (= e!1341047 (and (inv!30899 (_1!13101 (_1!13102 (h!28743 (zeroValue!2537 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740)))))))))) e!1341045 tp_is_empty!9383 setRes!14007 tp!641063))))

(declare-fun condSetEmpty!14007 () Bool)

(assert (=> b!2109052 (= condSetEmpty!14007 (= (_2!13102 (h!28743 (zeroValue!2537 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740)))))))) ((as const (Array Context!2314 Bool)) false)))))

(assert (= b!2109052 b!2109050))

(assert (= (and b!2109052 condSetEmpty!14007) setIsEmpty!14007))

(assert (= (and b!2109052 (not condSetEmpty!14007)) setNonEmpty!14007))

(assert (= setNonEmpty!14007 b!2109051))

(assert (= (and b!2108879 ((_ is Cons!23342) (zeroValue!2537 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740)))))))) b!2109052))

(declare-fun m!2566519 () Bool)

(assert (=> setNonEmpty!14007 m!2566519))

(declare-fun m!2566521 () Bool)

(assert (=> b!2109052 m!2566521))

(declare-fun b!2109053 () Bool)

(declare-fun e!1341048 () Bool)

(declare-fun tp!641069 () Bool)

(assert (=> b!2109053 (= e!1341048 tp!641069)))

(declare-fun e!1341050 () Bool)

(assert (=> b!2108879 (= tp!640917 e!1341050)))

(declare-fun setIsEmpty!14008 () Bool)

(declare-fun setRes!14008 () Bool)

(assert (=> setIsEmpty!14008 setRes!14008))

(declare-fun setElem!14008 () Context!2314)

(declare-fun tp!641068 () Bool)

(declare-fun e!1341049 () Bool)

(declare-fun setNonEmpty!14008 () Bool)

(assert (=> setNonEmpty!14008 (= setRes!14008 (and tp!641068 (inv!30899 setElem!14008) e!1341049))))

(declare-fun setRest!14008 () (InoxSet Context!2314))

(assert (=> setNonEmpty!14008 (= (_2!13102 (h!28743 (minValue!2537 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!14008 true) setRest!14008))))

(declare-fun b!2109054 () Bool)

(declare-fun tp!641066 () Bool)

(assert (=> b!2109054 (= e!1341049 tp!641066)))

(declare-fun tp!641067 () Bool)

(declare-fun b!2109055 () Bool)

(assert (=> b!2109055 (= e!1341050 (and (inv!30899 (_1!13101 (_1!13102 (h!28743 (minValue!2537 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740)))))))))) e!1341048 tp_is_empty!9383 setRes!14008 tp!641067))))

(declare-fun condSetEmpty!14008 () Bool)

(assert (=> b!2109055 (= condSetEmpty!14008 (= (_2!13102 (h!28743 (minValue!2537 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740)))))))) ((as const (Array Context!2314 Bool)) false)))))

(assert (= b!2109055 b!2109053))

(assert (= (and b!2109055 condSetEmpty!14008) setIsEmpty!14008))

(assert (= (and b!2109055 (not condSetEmpty!14008)) setNonEmpty!14008))

(assert (= setNonEmpty!14008 b!2109054))

(assert (= (and b!2108879 ((_ is Cons!23342) (minValue!2537 (v!27882 (underlying!4753 (v!27883 (underlying!4754 (cache!2574 cacheUp!740)))))))) b!2109055))

(declare-fun m!2566523 () Bool)

(assert (=> setNonEmpty!14008 m!2566523))

(declare-fun m!2566525 () Bool)

(assert (=> b!2109055 m!2566525))

(declare-fun b!2109056 () Bool)

(declare-fun e!1341052 () Bool)

(declare-fun tp!641072 () Bool)

(assert (=> b!2109056 (= e!1341052 tp!641072)))

(declare-fun setElem!14009 () Context!2314)

(declare-fun setRes!14009 () Bool)

(declare-fun e!1341053 () Bool)

(declare-fun setNonEmpty!14009 () Bool)

(declare-fun tp!641070 () Bool)

(assert (=> setNonEmpty!14009 (= setRes!14009 (and tp!641070 (inv!30899 setElem!14009) e!1341053))))

(declare-fun setRest!14009 () (InoxSet Context!2314))

(assert (=> setNonEmpty!14009 (= (_2!13100 (h!28742 mapDefault!11012)) ((_ map or) (store ((as const (Array Context!2314 Bool)) false) setElem!14009 true) setRest!14009))))

(declare-fun b!2109057 () Bool)

(declare-fun tp!641073 () Bool)

(assert (=> b!2109057 (= e!1341053 tp!641073)))

(declare-fun e!1341051 () Bool)

(assert (=> b!2108867 (= tp!640915 e!1341051)))

(declare-fun setIsEmpty!14009 () Bool)

(assert (=> setIsEmpty!14009 setRes!14009))

(declare-fun tp!641071 () Bool)

(declare-fun tp!641074 () Bool)

(declare-fun b!2109058 () Bool)

(assert (=> b!2109058 (= e!1341051 (and tp!641071 (inv!30899 (_2!13099 (_1!13100 (h!28742 mapDefault!11012)))) e!1341052 tp_is_empty!9383 setRes!14009 tp!641074))))

(declare-fun condSetEmpty!14009 () Bool)

(assert (=> b!2109058 (= condSetEmpty!14009 (= (_2!13100 (h!28742 mapDefault!11012)) ((as const (Array Context!2314 Bool)) false)))))

(assert (= b!2109058 b!2109056))

(assert (= (and b!2109058 condSetEmpty!14009) setIsEmpty!14009))

(assert (= (and b!2109058 (not condSetEmpty!14009)) setNonEmpty!14009))

(assert (= setNonEmpty!14009 b!2109057))

(assert (= (and b!2108867 ((_ is Cons!23341) mapDefault!11012)) b!2109058))

(declare-fun m!2566527 () Bool)

(assert (=> setNonEmpty!14009 m!2566527))

(declare-fun m!2566529 () Bool)

(assert (=> b!2109058 m!2566529))

(check-sat (not b!2109050) (not b_next!61493) (not b!2108902) (not b!2108894) (not b!2108896) (not b!2108999) (not b!2109022) (not setNonEmpty!13992) (not b!2109001) (not b!2108961) (not d!642133) (not b_next!61495) (not d!642117) (not setNonEmpty!13989) (not bm!128414) (not b!2108964) (not d!642113) (not b!2109054) (not b!2109058) (not setNonEmpty!14004) (not b!2109049) (not b!2109018) (not b!2108973) (not b!2109003) (not b!2108948) (not setNonEmpty!14007) (not b!2109042) (not setNonEmpty!14009) (not d!642107) (not b!2108962) (not b!2109019) (not b!2108886) (not b!2109026) (not b!2109041) (not b!2109053) (not d!642119) (not b!2108974) (not b!2109020) (not setNonEmpty!13997) (not b!2109047) (not b!2109057) (not b!2109023) (not b!2108960) (not setNonEmpty!13999) (not b!2108946) (not b_next!61491) (not d!642129) (not b!2109044) (not b!2108987) (not b!2108975) (not b_next!61487) (not d!642125) b_and!170351 (not b!2108963) (not b!2109000) (not b!2108947) (not mapNonEmpty!11019) (not setNonEmpty!13998) b_and!170349 (not b!2109025) (not b!2109024) (not b!2108873) (not setNonEmpty!14008) (not b_next!61485) (not b!2109055) (not b!2109051) (not b!2109043) (not b!2108989) (not b!2108907) (not b!2109046) (not b!2109002) (not b!2108911) (not b!2109021) (not b!2109048) (not mapNonEmpty!11016) (not b!2108941) b_and!170353 (not d!642121) (not setNonEmpty!14005) tp_is_empty!9383 (not b!2108998) (not b!2108950) (not setNonEmpty!14006) (not b!2108959) (not b!2109045) (not b!2108914) (not b!2109056) (not d!642115) b_and!170357 b_and!170355 (not b!2108899) (not bm!128412) (not b!2109052) (not b!2108988) (not b_next!61489) (not setNonEmpty!13988) (not d!642109) b_and!170347)
(check-sat (not b_next!61495) (not b_next!61491) b_and!170349 (not b_next!61493) (not b_next!61485) b_and!170353 (not b_next!61489) b_and!170347 (not b_next!61487) b_and!170351 b_and!170357 b_and!170355)
