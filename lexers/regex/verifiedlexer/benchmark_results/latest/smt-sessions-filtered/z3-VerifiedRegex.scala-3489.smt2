; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201376 () Bool)

(assert start!201376)

(declare-fun b!2043776 () Bool)

(declare-fun b_free!57085 () Bool)

(declare-fun b_next!57789 () Bool)

(assert (=> b!2043776 (= b_free!57085 (not b_next!57789))))

(declare-fun tp!607476 () Bool)

(declare-fun b_and!163025 () Bool)

(assert (=> b!2043776 (= tp!607476 b_and!163025)))

(declare-fun b_free!57087 () Bool)

(declare-fun b_next!57791 () Bool)

(assert (=> b!2043776 (= b_free!57087 (not b_next!57791))))

(declare-fun tp!607469 () Bool)

(declare-fun b_and!163027 () Bool)

(assert (=> b!2043776 (= tp!607469 b_and!163027)))

(declare-fun b!2043780 () Bool)

(declare-fun b_free!57089 () Bool)

(declare-fun b_next!57793 () Bool)

(assert (=> b!2043780 (= b_free!57089 (not b_next!57793))))

(declare-fun tp!607488 () Bool)

(declare-fun b_and!163029 () Bool)

(assert (=> b!2043780 (= tp!607488 b_and!163029)))

(declare-fun b!2043792 () Bool)

(declare-fun b_free!57091 () Bool)

(declare-fun b_next!57795 () Bool)

(assert (=> b!2043792 (= b_free!57091 (not b_next!57795))))

(declare-fun tp!607475 () Bool)

(declare-fun b_and!163031 () Bool)

(assert (=> b!2043792 (= tp!607475 b_and!163031)))

(declare-fun b!2043779 () Bool)

(declare-fun b_free!57093 () Bool)

(declare-fun b_next!57797 () Bool)

(assert (=> b!2043779 (= b_free!57093 (not b_next!57797))))

(declare-fun tp!607482 () Bool)

(declare-fun b_and!163033 () Bool)

(assert (=> b!2043779 (= tp!607482 b_and!163033)))

(declare-fun b!2043802 () Bool)

(declare-fun b_free!57095 () Bool)

(declare-fun b_next!57799 () Bool)

(assert (=> b!2043802 (= b_free!57095 (not b_next!57799))))

(declare-fun tp!607486 () Bool)

(declare-fun b_and!163035 () Bool)

(assert (=> b!2043802 (= tp!607486 b_and!163035)))

(declare-fun b!2043773 () Bool)

(declare-fun e!1290851 () Bool)

(declare-datatypes ((C!11036 0))(
  ( (C!11037 (val!6504 Int)) )
))
(declare-datatypes ((List!22493 0))(
  ( (Nil!22409) (Cons!22409 (h!27810 C!11036) (t!191607 List!22493)) )
))
(declare-datatypes ((IArray!15025 0))(
  ( (IArray!15026 (innerList!7570 List!22493)) )
))
(declare-datatypes ((Conc!7510 0))(
  ( (Node!7510 (left!17801 Conc!7510) (right!18131 Conc!7510) (csize!15250 Int) (cheight!7721 Int)) (Leaf!11000 (xs!10418 IArray!15025) (csize!15251 Int)) (Empty!7510) )
))
(declare-datatypes ((BalanceConc!14782 0))(
  ( (BalanceConc!14783 (c!330954 Conc!7510)) )
))
(declare-fun treated!60 () BalanceConc!14782)

(declare-fun tp!607480 () Bool)

(declare-fun inv!29758 (Conc!7510) Bool)

(assert (=> b!2043773 (= e!1290851 (and (inv!29758 (c!330954 treated!60)) tp!607480))))

(declare-fun mapIsEmpty!9252 () Bool)

(declare-fun mapRes!9252 () Bool)

(assert (=> mapIsEmpty!9252 mapRes!9252))

(declare-fun b!2043774 () Bool)

(declare-fun res!895532 () Bool)

(declare-fun e!1290876 () Bool)

(assert (=> b!2043774 (=> (not res!895532) (not e!1290876))))

(declare-datatypes ((Regex!5445 0))(
  ( (ElementMatch!5445 (c!330955 C!11036)) (Concat!9598 (regOne!11402 Regex!5445) (regTwo!11402 Regex!5445)) (EmptyExpr!5445) (Star!5445 (reg!5774 Regex!5445)) (EmptyLang!5445) (Union!5445 (regOne!11403 Regex!5445) (regTwo!11403 Regex!5445)) )
))
(declare-datatypes ((List!22494 0))(
  ( (Nil!22410) (Cons!22410 (h!27811 Regex!5445) (t!191608 List!22494)) )
))
(declare-datatypes ((Context!2030 0))(
  ( (Context!2031 (exprs!1515 List!22494)) )
))
(declare-datatypes ((tuple2!21104 0))(
  ( (tuple2!21105 (_1!12049 Context!2030) (_2!12049 C!11036)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21106 0))(
  ( (tuple2!21107 (_1!12050 tuple2!21104) (_2!12050 (InoxSet Context!2030))) )
))
(declare-datatypes ((List!22495 0))(
  ( (Nil!22411) (Cons!22411 (h!27812 tuple2!21106) (t!191609 List!22495)) )
))
(declare-datatypes ((array!6912 0))(
  ( (array!6913 (arr!3071 (Array (_ BitVec 32) List!22495)) (size!17523 (_ BitVec 32))) )
))
(declare-datatypes ((array!6914 0))(
  ( (array!6915 (arr!3072 (Array (_ BitVec 32) (_ BitVec 64))) (size!17524 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4010 0))(
  ( (LongMapFixedSize!4011 (defaultEntry!2370 Int) (mask!6043 (_ BitVec 32)) (extraKeys!2253 (_ BitVec 32)) (zeroValue!2263 List!22495) (minValue!2263 List!22495) (_size!4061 (_ BitVec 32)) (_keys!2302 array!6914) (_values!2285 array!6912) (_vacant!2066 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7845 0))(
  ( (Cell!7846 (v!27109 LongMapFixedSize!4010)) )
))
(declare-datatypes ((MutLongMap!2005 0))(
  ( (LongMap!2005 (underlying!4205 Cell!7845)) (MutLongMapExt!2004 (__x!13909 Int)) )
))
(declare-datatypes ((Hashable!1919 0))(
  ( (HashableExt!1918 (__x!13910 Int)) )
))
(declare-datatypes ((Cell!7847 0))(
  ( (Cell!7848 (v!27110 MutLongMap!2005)) )
))
(declare-datatypes ((MutableMap!1919 0))(
  ( (MutableMapExt!1918 (__x!13911 Int)) (HashMap!1919 (underlying!4206 Cell!7847) (hashF!3842 Hashable!1919) (_size!4062 (_ BitVec 32)) (defaultValue!2081 Int)) )
))
(declare-datatypes ((CacheUp!1214 0))(
  ( (CacheUp!1215 (cache!2300 MutableMap!1919)) )
))
(declare-fun cacheUp!562 () CacheUp!1214)

(declare-fun valid!1599 (CacheUp!1214) Bool)

(assert (=> b!2043774 (= res!895532 (valid!1599 cacheUp!562))))

(declare-fun b!2043775 () Bool)

(declare-fun res!895534 () Bool)

(declare-fun e!1290864 () Bool)

(assert (=> b!2043775 (=> (not res!895534) (not e!1290864))))

(declare-datatypes ((LexerInterface!3630 0))(
  ( (LexerInterfaceExt!3627 (__x!13912 Int)) (Lexer!3628) )
))
(declare-fun thiss!12889 () LexerInterface!3630)

(declare-datatypes ((List!22496 0))(
  ( (Nil!22412) (Cons!22412 (h!27813 (_ BitVec 16)) (t!191610 List!22496)) )
))
(declare-datatypes ((TokenValue!4153 0))(
  ( (FloatLiteralValue!8306 (text!29516 List!22496)) (TokenValueExt!4152 (__x!13913 Int)) (Broken!20765 (value!126112 List!22496)) (Object!4236) (End!4153) (Def!4153) (Underscore!4153) (Match!4153) (Else!4153) (Error!4153) (Case!4153) (If!4153) (Extends!4153) (Abstract!4153) (Class!4153) (Val!4153) (DelimiterValue!8306 (del!4213 List!22496)) (KeywordValue!4159 (value!126113 List!22496)) (CommentValue!8306 (value!126114 List!22496)) (WhitespaceValue!8306 (value!126115 List!22496)) (IndentationValue!4153 (value!126116 List!22496)) (String!25956) (Int32!4153) (Broken!20766 (value!126117 List!22496)) (Boolean!4154) (Unit!37026) (OperatorValue!4156 (op!4213 List!22496)) (IdentifierValue!8306 (value!126118 List!22496)) (IdentifierValue!8307 (value!126119 List!22496)) (WhitespaceValue!8307 (value!126120 List!22496)) (True!8306) (False!8306) (Broken!20767 (value!126121 List!22496)) (Broken!20768 (value!126122 List!22496)) (True!8307) (RightBrace!4153) (RightBracket!4153) (Colon!4153) (Null!4153) (Comma!4153) (LeftBracket!4153) (False!8307) (LeftBrace!4153) (ImaginaryLiteralValue!4153 (text!29517 List!22496)) (StringLiteralValue!12459 (value!126123 List!22496)) (EOFValue!4153 (value!126124 List!22496)) (IdentValue!4153 (value!126125 List!22496)) (DelimiterValue!8307 (value!126126 List!22496)) (DedentValue!4153 (value!126127 List!22496)) (NewLineValue!4153 (value!126128 List!22496)) (IntegerValue!12459 (value!126129 (_ BitVec 32)) (text!29518 List!22496)) (IntegerValue!12460 (value!126130 Int) (text!29519 List!22496)) (Times!4153) (Or!4153) (Equal!4153) (Minus!4153) (Broken!20769 (value!126131 List!22496)) (And!4153) (Div!4153) (LessEqual!4153) (Mod!4153) (Concat!9599) (Not!4153) (Plus!4153) (SpaceValue!4153 (value!126132 List!22496)) (IntegerValue!12461 (value!126133 Int) (text!29520 List!22496)) (StringLiteralValue!12460 (text!29521 List!22496)) (FloatLiteralValue!8307 (text!29522 List!22496)) (BytesLiteralValue!4153 (value!126134 List!22496)) (CommentValue!8307 (value!126135 List!22496)) (StringLiteralValue!12461 (value!126136 List!22496)) (ErrorTokenValue!4153 (msg!4214 List!22496)) )
))
(declare-datatypes ((String!25957 0))(
  ( (String!25958 (value!126137 String)) )
))
(declare-datatypes ((TokenValueInjection!7890 0))(
  ( (TokenValueInjection!7891 (toValue!5700 Int) (toChars!5559 Int)) )
))
(declare-datatypes ((Rule!7834 0))(
  ( (Rule!7835 (regex!4017 Regex!5445) (tag!4507 String!25957) (isSeparator!4017 Bool) (transformation!4017 TokenValueInjection!7890)) )
))
(declare-datatypes ((List!22497 0))(
  ( (Nil!22413) (Cons!22413 (h!27814 Rule!7834) (t!191611 List!22497)) )
))
(declare-fun rules!1563 () List!22497)

(declare-fun rulesInvariant!3231 (LexerInterface!3630 List!22497) Bool)

(assert (=> b!2043775 (= res!895534 (rulesInvariant!3231 thiss!12889 rules!1563))))

(declare-fun e!1290877 () Bool)

(assert (=> b!2043776 (= e!1290877 (and tp!607476 tp!607469))))

(declare-fun b!2043777 () Bool)

(declare-fun res!895535 () Bool)

(assert (=> b!2043777 (=> (not res!895535) (not e!1290864))))

(declare-fun isEmpty!13971 (List!22497) Bool)

(assert (=> b!2043777 (= res!895535 (not (isEmpty!13971 rules!1563)))))

(declare-fun b!2043778 () Bool)

(declare-fun e!1290866 () Bool)

(declare-fun e!1290857 () Bool)

(assert (=> b!2043778 (= e!1290866 e!1290857)))

(declare-fun e!1290874 () Bool)

(declare-fun e!1290850 () Bool)

(declare-datatypes ((Hashable!1920 0))(
  ( (HashableExt!1919 (__x!13914 Int)) )
))
(declare-datatypes ((tuple3!2066 0))(
  ( (tuple3!2067 (_1!12051 Regex!5445) (_2!12051 Context!2030) (_3!1497 C!11036)) )
))
(declare-datatypes ((tuple2!21108 0))(
  ( (tuple2!21109 (_1!12052 tuple3!2066) (_2!12052 (InoxSet Context!2030))) )
))
(declare-datatypes ((List!22498 0))(
  ( (Nil!22414) (Cons!22414 (h!27815 tuple2!21108) (t!191612 List!22498)) )
))
(declare-datatypes ((array!6916 0))(
  ( (array!6917 (arr!3073 (Array (_ BitVec 32) List!22498)) (size!17525 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4012 0))(
  ( (LongMapFixedSize!4013 (defaultEntry!2371 Int) (mask!6044 (_ BitVec 32)) (extraKeys!2254 (_ BitVec 32)) (zeroValue!2264 List!22498) (minValue!2264 List!22498) (_size!4063 (_ BitVec 32)) (_keys!2303 array!6914) (_values!2286 array!6916) (_vacant!2067 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7849 0))(
  ( (Cell!7850 (v!27111 LongMapFixedSize!4012)) )
))
(declare-datatypes ((MutLongMap!2006 0))(
  ( (LongMap!2006 (underlying!4207 Cell!7849)) (MutLongMapExt!2005 (__x!13915 Int)) )
))
(declare-datatypes ((Cell!7851 0))(
  ( (Cell!7852 (v!27112 MutLongMap!2006)) )
))
(declare-datatypes ((MutableMap!1920 0))(
  ( (MutableMapExt!1919 (__x!13916 Int)) (HashMap!1920 (underlying!4208 Cell!7851) (hashF!3843 Hashable!1920) (_size!4064 (_ BitVec 32)) (defaultValue!2082 Int)) )
))
(declare-datatypes ((CacheDown!1218 0))(
  ( (CacheDown!1219 (cache!2301 MutableMap!1920)) )
))
(declare-fun cacheDown!575 () CacheDown!1218)

(declare-fun tp!607489 () Bool)

(declare-fun tp!607487 () Bool)

(declare-fun array_inv!2206 (array!6914) Bool)

(declare-fun array_inv!2207 (array!6916) Bool)

(assert (=> b!2043780 (= e!1290874 (and tp!607488 tp!607487 tp!607489 (array_inv!2206 (_keys!2303 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))))) (array_inv!2207 (_values!2286 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))))) e!1290850))))

(declare-fun b!2043781 () Bool)

(declare-fun e!1290878 () Bool)

(assert (=> b!2043781 (= e!1290878 e!1290876)))

(declare-fun res!895531 () Bool)

(assert (=> b!2043781 (=> (not res!895531) (not e!1290876))))

(declare-datatypes ((Token!7584 0))(
  ( (Token!7585 (value!126138 TokenValue!4153) (rule!6253 Rule!7834) (size!17526 Int) (originalCharacters!4823 List!22493)) )
))
(declare-datatypes ((List!22499 0))(
  ( (Nil!22415) (Cons!22415 (h!27816 Token!7584) (t!191613 List!22499)) )
))
(declare-datatypes ((IArray!15027 0))(
  ( (IArray!15028 (innerList!7571 List!22499)) )
))
(declare-datatypes ((Conc!7511 0))(
  ( (Node!7511 (left!17802 Conc!7511) (right!18132 Conc!7511) (csize!15252 Int) (cheight!7722 Int)) (Leaf!11001 (xs!10419 IArray!15027) (csize!15253 Int)) (Empty!7511) )
))
(declare-datatypes ((BalanceConc!14784 0))(
  ( (BalanceConc!14785 (c!330956 Conc!7511)) )
))
(declare-datatypes ((tuple2!21110 0))(
  ( (tuple2!21111 (_1!12053 BalanceConc!14784) (_2!12053 BalanceConc!14782)) )
))
(declare-fun lt!766437 () tuple2!21110)

(declare-fun acc!382 () BalanceConc!14784)

(declare-fun lt!766432 () tuple2!21110)

(declare-fun list!9184 (BalanceConc!14784) List!22499)

(declare-fun ++!6086 (BalanceConc!14784 BalanceConc!14784) BalanceConc!14784)

(assert (=> b!2043781 (= res!895531 (= (list!9184 (_1!12053 lt!766437)) (list!9184 (++!6086 acc!382 (_1!12053 lt!766432)))))))

(declare-fun input!986 () BalanceConc!14782)

(declare-fun lexRec!435 (LexerInterface!3630 List!22497 BalanceConc!14782) tuple2!21110)

(assert (=> b!2043781 (= lt!766432 (lexRec!435 thiss!12889 rules!1563 input!986))))

(declare-fun totalInput!418 () BalanceConc!14782)

(assert (=> b!2043781 (= lt!766437 (lexRec!435 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2043782 () Bool)

(declare-fun tp!607472 () Bool)

(declare-fun mapRes!9253 () Bool)

(assert (=> b!2043782 (= e!1290850 (and tp!607472 mapRes!9253))))

(declare-fun condMapEmpty!9253 () Bool)

(declare-fun mapDefault!9252 () List!22498)

(assert (=> b!2043782 (= condMapEmpty!9253 (= (arr!3073 (_values!2286 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22498)) mapDefault!9252)))))

(declare-fun b!2043783 () Bool)

(declare-fun res!895537 () Bool)

(assert (=> b!2043783 (=> (not res!895537) (not e!1290876))))

(declare-fun valid!1600 (CacheDown!1218) Bool)

(assert (=> b!2043783 (= res!895537 (valid!1600 cacheDown!575))))

(declare-fun b!2043784 () Bool)

(declare-fun e!1290860 () Bool)

(declare-fun tp!607474 () Bool)

(declare-fun inv!29756 (String!25957) Bool)

(declare-fun inv!29759 (TokenValueInjection!7890) Bool)

(assert (=> b!2043784 (= e!1290860 (and tp!607474 (inv!29756 (tag!4507 (h!27814 rules!1563))) (inv!29759 (transformation!4017 (h!27814 rules!1563))) e!1290877))))

(declare-fun b!2043785 () Bool)

(declare-fun e!1290868 () Bool)

(declare-fun rulesValidInductive!1396 (LexerInterface!3630 List!22497) Bool)

(assert (=> b!2043785 (= e!1290868 (rulesValidInductive!1396 thiss!12889 rules!1563))))

(declare-datatypes ((tuple2!21112 0))(
  ( (tuple2!21113 (_1!12054 Token!7584) (_2!12054 BalanceConc!14782)) )
))
(declare-datatypes ((Option!4698 0))(
  ( (None!4697) (Some!4697 (v!27113 tuple2!21112)) )
))
(declare-datatypes ((tuple3!2068 0))(
  ( (tuple3!2069 (_1!12055 Option!4698) (_2!12055 CacheUp!1214) (_3!1498 CacheDown!1218)) )
))
(declare-fun lt!766428 () tuple3!2068)

(declare-fun lt!766427 () tuple3!2068)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!9 (LexerInterface!3630 List!22497 BalanceConc!14782 BalanceConc!14782 CacheUp!1214 CacheDown!1218) tuple3!2068)

(assert (=> b!2043785 (= lt!766427 (maxPrefixZipperSequenceV2MemOnlyDeriv!9 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12055 lt!766428) (_3!1498 lt!766428)))))

(declare-fun lt!766436 () tuple2!21110)

(assert (=> b!2043785 (= lt!766436 (lexRec!435 thiss!12889 rules!1563 (_2!12054 (v!27113 (_1!12055 lt!766428)))))))

(declare-fun b!2043786 () Bool)

(declare-fun e!1290859 () Bool)

(declare-fun tp!607483 () Bool)

(assert (=> b!2043786 (= e!1290859 (and (inv!29758 (c!330954 input!986)) tp!607483))))

(declare-fun b!2043787 () Bool)

(declare-fun e!1290863 () Bool)

(assert (=> b!2043787 (= e!1290876 (not e!1290863))))

(declare-fun res!895530 () Bool)

(assert (=> b!2043787 (=> res!895530 e!1290863)))

(declare-fun lt!766434 () List!22493)

(declare-fun lt!766435 () List!22493)

(declare-fun isSuffix!477 (List!22493 List!22493) Bool)

(assert (=> b!2043787 (= res!895530 (not (isSuffix!477 lt!766434 lt!766435)))))

(declare-fun lt!766433 () List!22493)

(assert (=> b!2043787 (isSuffix!477 lt!766434 lt!766433)))

(declare-datatypes ((Unit!37027 0))(
  ( (Unit!37028) )
))
(declare-fun lt!766429 () Unit!37027)

(declare-fun lt!766431 () List!22493)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!378 (List!22493 List!22493) Unit!37027)

(assert (=> b!2043787 (= lt!766429 (lemmaConcatTwoListThenFSndIsSuffix!378 lt!766431 lt!766434))))

(declare-fun b!2043788 () Bool)

(declare-fun res!895538 () Bool)

(assert (=> b!2043788 (=> (not res!895538) (not e!1290876))))

(declare-fun list!9185 (BalanceConc!14782) List!22493)

(assert (=> b!2043788 (= res!895538 (= (list!9185 (_2!12053 lt!766437)) (list!9185 (_2!12053 lt!766432))))))

(declare-fun b!2043789 () Bool)

(declare-fun e!1290871 () Bool)

(declare-fun tp!607478 () Bool)

(assert (=> b!2043789 (= e!1290871 (and tp!607478 mapRes!9252))))

(declare-fun condMapEmpty!9252 () Bool)

(declare-fun mapDefault!9253 () List!22495)

(assert (=> b!2043789 (= condMapEmpty!9252 (= (arr!3071 (_values!2285 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22495)) mapDefault!9253)))))

(declare-fun b!2043790 () Bool)

(declare-fun e!1290854 () Bool)

(declare-fun e!1290855 () Bool)

(declare-fun lt!766439 () MutLongMap!2005)

(get-info :version)

(assert (=> b!2043790 (= e!1290854 (and e!1290855 ((_ is LongMap!2005) lt!766439)))))

(assert (=> b!2043790 (= lt!766439 (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))))

(declare-fun b!2043791 () Bool)

(declare-fun e!1290853 () Bool)

(assert (=> b!2043791 (= e!1290855 e!1290853)))

(declare-fun mapIsEmpty!9253 () Bool)

(assert (=> mapIsEmpty!9253 mapRes!9253))

(declare-fun e!1290873 () Bool)

(declare-fun tp!607470 () Bool)

(declare-fun tp!607485 () Bool)

(declare-fun array_inv!2208 (array!6912) Bool)

(assert (=> b!2043792 (= e!1290873 (and tp!607475 tp!607470 tp!607485 (array_inv!2206 (_keys!2302 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))))) (array_inv!2208 (_values!2285 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))))) e!1290871))))

(declare-fun b!2043793 () Bool)

(declare-fun e!1290861 () Bool)

(declare-fun tp!607471 () Bool)

(declare-fun inv!29760 (Conc!7511) Bool)

(assert (=> b!2043793 (= e!1290861 (and (inv!29760 (c!330956 acc!382)) tp!607471))))

(declare-fun b!2043794 () Bool)

(declare-fun e!1290869 () Bool)

(assert (=> b!2043794 (= e!1290869 e!1290874)))

(declare-fun b!2043795 () Bool)

(declare-fun e!1290867 () Bool)

(assert (=> b!2043795 (= e!1290867 e!1290878)))

(declare-fun res!895539 () Bool)

(assert (=> b!2043795 (=> (not res!895539) (not e!1290878))))

(declare-fun lt!766438 () tuple2!21110)

(assert (=> b!2043795 (= res!895539 (= (list!9184 (_1!12053 lt!766438)) (list!9184 acc!382)))))

(assert (=> b!2043795 (= lt!766438 (lexRec!435 thiss!12889 rules!1563 treated!60))))

(assert (=> b!2043779 (= e!1290857 (and e!1290854 tp!607482))))

(declare-fun res!895540 () Bool)

(assert (=> start!201376 (=> (not res!895540) (not e!1290864))))

(assert (=> start!201376 (= res!895540 ((_ is Lexer!3628) thiss!12889))))

(assert (=> start!201376 e!1290864))

(declare-fun e!1290865 () Bool)

(declare-fun inv!29761 (CacheDown!1218) Bool)

(assert (=> start!201376 (and (inv!29761 cacheDown!575) e!1290865)))

(assert (=> start!201376 true))

(declare-fun inv!29762 (CacheUp!1214) Bool)

(assert (=> start!201376 (and (inv!29762 cacheUp!562) e!1290866)))

(declare-fun e!1290872 () Bool)

(assert (=> start!201376 e!1290872))

(declare-fun e!1290856 () Bool)

(declare-fun inv!29763 (BalanceConc!14782) Bool)

(assert (=> start!201376 (and (inv!29763 totalInput!418) e!1290856)))

(assert (=> start!201376 (and (inv!29763 treated!60) e!1290851)))

(assert (=> start!201376 (and (inv!29763 input!986) e!1290859)))

(declare-fun inv!29764 (BalanceConc!14784) Bool)

(assert (=> start!201376 (and (inv!29764 acc!382) e!1290861)))

(declare-fun b!2043796 () Bool)

(declare-fun res!895541 () Bool)

(assert (=> b!2043796 (=> (not res!895541) (not e!1290878))))

(declare-fun isEmpty!13972 (List!22493) Bool)

(assert (=> b!2043796 (= res!895541 (isEmpty!13972 (list!9185 (_2!12053 lt!766438))))))

(declare-fun b!2043797 () Bool)

(declare-fun tp!607468 () Bool)

(assert (=> b!2043797 (= e!1290856 (and (inv!29758 (c!330954 totalInput!418)) tp!607468))))

(declare-fun b!2043798 () Bool)

(declare-fun tp!607484 () Bool)

(assert (=> b!2043798 (= e!1290872 (and e!1290860 tp!607484))))

(declare-fun mapNonEmpty!9252 () Bool)

(declare-fun tp!607473 () Bool)

(declare-fun tp!607479 () Bool)

(assert (=> mapNonEmpty!9252 (= mapRes!9252 (and tp!607473 tp!607479))))

(declare-fun mapKey!9252 () (_ BitVec 32))

(declare-fun mapValue!9253 () List!22495)

(declare-fun mapRest!9253 () (Array (_ BitVec 32) List!22495))

(assert (=> mapNonEmpty!9252 (= (arr!3071 (_values!2285 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))))) (store mapRest!9253 mapKey!9252 mapValue!9253))))

(declare-fun b!2043799 () Bool)

(declare-fun e!1290862 () Bool)

(assert (=> b!2043799 (= e!1290862 e!1290869)))

(declare-fun b!2043800 () Bool)

(assert (=> b!2043800 (= e!1290853 e!1290873)))

(declare-fun b!2043801 () Bool)

(declare-fun e!1290870 () Bool)

(declare-fun lt!766430 () MutLongMap!2006)

(assert (=> b!2043801 (= e!1290870 (and e!1290862 ((_ is LongMap!2006) lt!766430)))))

(assert (=> b!2043801 (= lt!766430 (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))))

(declare-fun e!1290875 () Bool)

(assert (=> b!2043802 (= e!1290875 (and e!1290870 tp!607486))))

(declare-fun mapNonEmpty!9253 () Bool)

(declare-fun tp!607477 () Bool)

(declare-fun tp!607481 () Bool)

(assert (=> mapNonEmpty!9253 (= mapRes!9253 (and tp!607477 tp!607481))))

(declare-fun mapRest!9252 () (Array (_ BitVec 32) List!22498))

(declare-fun mapValue!9252 () List!22498)

(declare-fun mapKey!9253 () (_ BitVec 32))

(assert (=> mapNonEmpty!9253 (= (arr!3073 (_values!2286 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))))) (store mapRest!9252 mapKey!9253 mapValue!9252))))

(declare-fun b!2043803 () Bool)

(assert (=> b!2043803 (= e!1290864 e!1290867)))

(declare-fun res!895536 () Bool)

(assert (=> b!2043803 (=> (not res!895536) (not e!1290867))))

(assert (=> b!2043803 (= res!895536 (= lt!766435 lt!766433))))

(declare-fun ++!6087 (List!22493 List!22493) List!22493)

(assert (=> b!2043803 (= lt!766433 (++!6087 lt!766431 lt!766434))))

(assert (=> b!2043803 (= lt!766435 (list!9185 totalInput!418))))

(assert (=> b!2043803 (= lt!766434 (list!9185 input!986))))

(assert (=> b!2043803 (= lt!766431 (list!9185 treated!60))))

(declare-fun b!2043804 () Bool)

(assert (=> b!2043804 (= e!1290865 e!1290875)))

(declare-fun b!2043805 () Bool)

(assert (=> b!2043805 (= e!1290863 e!1290868)))

(declare-fun res!895533 () Bool)

(assert (=> b!2043805 (=> res!895533 e!1290868)))

(assert (=> b!2043805 (= res!895533 (not ((_ is Some!4697) (_1!12055 lt!766428))))))

(assert (=> b!2043805 (= lt!766428 (maxPrefixZipperSequenceV2MemOnlyDeriv!9 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(assert (= (and start!201376 res!895540) b!2043777))

(assert (= (and b!2043777 res!895535) b!2043775))

(assert (= (and b!2043775 res!895534) b!2043803))

(assert (= (and b!2043803 res!895536) b!2043795))

(assert (= (and b!2043795 res!895539) b!2043796))

(assert (= (and b!2043796 res!895541) b!2043781))

(assert (= (and b!2043781 res!895531) b!2043788))

(assert (= (and b!2043788 res!895538) b!2043774))

(assert (= (and b!2043774 res!895532) b!2043783))

(assert (= (and b!2043783 res!895537) b!2043787))

(assert (= (and b!2043787 (not res!895530)) b!2043805))

(assert (= (and b!2043805 (not res!895533)) b!2043785))

(assert (= (and b!2043782 condMapEmpty!9253) mapIsEmpty!9253))

(assert (= (and b!2043782 (not condMapEmpty!9253)) mapNonEmpty!9253))

(assert (= b!2043780 b!2043782))

(assert (= b!2043794 b!2043780))

(assert (= b!2043799 b!2043794))

(assert (= (and b!2043801 ((_ is LongMap!2006) (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))) b!2043799))

(assert (= b!2043802 b!2043801))

(assert (= (and b!2043804 ((_ is HashMap!1920) (cache!2301 cacheDown!575))) b!2043802))

(assert (= start!201376 b!2043804))

(assert (= (and b!2043789 condMapEmpty!9252) mapIsEmpty!9252))

(assert (= (and b!2043789 (not condMapEmpty!9252)) mapNonEmpty!9252))

(assert (= b!2043792 b!2043789))

(assert (= b!2043800 b!2043792))

(assert (= b!2043791 b!2043800))

(assert (= (and b!2043790 ((_ is LongMap!2005) (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))) b!2043791))

(assert (= b!2043779 b!2043790))

(assert (= (and b!2043778 ((_ is HashMap!1919) (cache!2300 cacheUp!562))) b!2043779))

(assert (= start!201376 b!2043778))

(assert (= b!2043784 b!2043776))

(assert (= b!2043798 b!2043784))

(assert (= (and start!201376 ((_ is Cons!22413) rules!1563)) b!2043798))

(assert (= start!201376 b!2043797))

(assert (= start!201376 b!2043773))

(assert (= start!201376 b!2043786))

(assert (= start!201376 b!2043793))

(declare-fun m!2487729 () Bool)

(assert (=> b!2043786 m!2487729))

(declare-fun m!2487731 () Bool)

(assert (=> b!2043775 m!2487731))

(declare-fun m!2487733 () Bool)

(assert (=> b!2043774 m!2487733))

(declare-fun m!2487735 () Bool)

(assert (=> b!2043787 m!2487735))

(declare-fun m!2487737 () Bool)

(assert (=> b!2043787 m!2487737))

(declare-fun m!2487739 () Bool)

(assert (=> b!2043787 m!2487739))

(declare-fun m!2487741 () Bool)

(assert (=> b!2043773 m!2487741))

(declare-fun m!2487743 () Bool)

(assert (=> mapNonEmpty!9253 m!2487743))

(declare-fun m!2487745 () Bool)

(assert (=> b!2043788 m!2487745))

(declare-fun m!2487747 () Bool)

(assert (=> b!2043788 m!2487747))

(declare-fun m!2487749 () Bool)

(assert (=> b!2043781 m!2487749))

(declare-fun m!2487751 () Bool)

(assert (=> b!2043781 m!2487751))

(declare-fun m!2487753 () Bool)

(assert (=> b!2043781 m!2487753))

(assert (=> b!2043781 m!2487753))

(declare-fun m!2487755 () Bool)

(assert (=> b!2043781 m!2487755))

(declare-fun m!2487757 () Bool)

(assert (=> b!2043781 m!2487757))

(declare-fun m!2487759 () Bool)

(assert (=> b!2043780 m!2487759))

(declare-fun m!2487761 () Bool)

(assert (=> b!2043780 m!2487761))

(declare-fun m!2487763 () Bool)

(assert (=> b!2043793 m!2487763))

(declare-fun m!2487765 () Bool)

(assert (=> start!201376 m!2487765))

(declare-fun m!2487767 () Bool)

(assert (=> start!201376 m!2487767))

(declare-fun m!2487769 () Bool)

(assert (=> start!201376 m!2487769))

(declare-fun m!2487771 () Bool)

(assert (=> start!201376 m!2487771))

(declare-fun m!2487773 () Bool)

(assert (=> start!201376 m!2487773))

(declare-fun m!2487775 () Bool)

(assert (=> start!201376 m!2487775))

(declare-fun m!2487777 () Bool)

(assert (=> b!2043796 m!2487777))

(assert (=> b!2043796 m!2487777))

(declare-fun m!2487779 () Bool)

(assert (=> b!2043796 m!2487779))

(declare-fun m!2487781 () Bool)

(assert (=> b!2043805 m!2487781))

(declare-fun m!2487783 () Bool)

(assert (=> b!2043792 m!2487783))

(declare-fun m!2487785 () Bool)

(assert (=> b!2043792 m!2487785))

(declare-fun m!2487787 () Bool)

(assert (=> b!2043803 m!2487787))

(declare-fun m!2487789 () Bool)

(assert (=> b!2043803 m!2487789))

(declare-fun m!2487791 () Bool)

(assert (=> b!2043803 m!2487791))

(declare-fun m!2487793 () Bool)

(assert (=> b!2043803 m!2487793))

(declare-fun m!2487795 () Bool)

(assert (=> b!2043784 m!2487795))

(declare-fun m!2487797 () Bool)

(assert (=> b!2043784 m!2487797))

(declare-fun m!2487799 () Bool)

(assert (=> b!2043795 m!2487799))

(declare-fun m!2487801 () Bool)

(assert (=> b!2043795 m!2487801))

(declare-fun m!2487803 () Bool)

(assert (=> b!2043795 m!2487803))

(declare-fun m!2487805 () Bool)

(assert (=> b!2043785 m!2487805))

(declare-fun m!2487807 () Bool)

(assert (=> b!2043785 m!2487807))

(declare-fun m!2487809 () Bool)

(assert (=> b!2043785 m!2487809))

(declare-fun m!2487811 () Bool)

(assert (=> mapNonEmpty!9252 m!2487811))

(declare-fun m!2487813 () Bool)

(assert (=> b!2043783 m!2487813))

(declare-fun m!2487815 () Bool)

(assert (=> b!2043777 m!2487815))

(declare-fun m!2487817 () Bool)

(assert (=> b!2043797 m!2487817))

(check-sat (not b!2043788) b_and!163025 (not b!2043787) (not b!2043773) (not b!2043774) (not b!2043780) (not b!2043782) b_and!163033 (not b_next!57799) (not b!2043797) (not b!2043781) (not b!2043789) (not start!201376) (not b_next!57793) (not b!2043785) (not b!2043793) b_and!163031 (not b_next!57789) (not mapNonEmpty!9252) b_and!163035 b_and!163029 (not mapNonEmpty!9253) (not b!2043784) (not b!2043777) b_and!163027 (not b_next!57795) (not b!2043798) (not b!2043803) (not b_next!57797) (not b!2043786) (not b!2043775) (not b!2043783) (not b!2043792) (not b!2043795) (not b!2043796) (not b!2043805) (not b_next!57791))
(check-sat (not b_next!57793) b_and!163031 (not b_next!57789) b_and!163025 b_and!163027 (not b_next!57795) (not b_next!57797) (not b_next!57791) b_and!163033 (not b_next!57799) b_and!163035 b_and!163029)
(get-model)

(declare-fun b!2043814 () Bool)

(declare-fun res!895553 () Bool)

(declare-fun e!1290881 () Bool)

(assert (=> b!2043814 (=> (not res!895553) (not e!1290881))))

(declare-fun isBalanced!2360 (Conc!7511) Bool)

(declare-fun ++!6088 (Conc!7511 Conc!7511) Conc!7511)

(assert (=> b!2043814 (= res!895553 (isBalanced!2360 (++!6088 (c!330956 acc!382) (c!330956 (_1!12053 lt!766432)))))))

(declare-fun b!2043817 () Bool)

(declare-fun lt!766442 () BalanceConc!14784)

(declare-fun ++!6089 (List!22499 List!22499) List!22499)

(assert (=> b!2043817 (= e!1290881 (= (list!9184 lt!766442) (++!6089 (list!9184 acc!382) (list!9184 (_1!12053 lt!766432)))))))

(declare-fun b!2043815 () Bool)

(declare-fun res!895554 () Bool)

(assert (=> b!2043815 (=> (not res!895554) (not e!1290881))))

(declare-fun height!1178 (Conc!7511) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2043815 (= res!895554 (<= (height!1178 (++!6088 (c!330956 acc!382) (c!330956 (_1!12053 lt!766432)))) (+ (max!0 (height!1178 (c!330956 acc!382)) (height!1178 (c!330956 (_1!12053 lt!766432)))) 1)))))

(declare-fun b!2043816 () Bool)

(declare-fun res!895555 () Bool)

(assert (=> b!2043816 (=> (not res!895555) (not e!1290881))))

(assert (=> b!2043816 (= res!895555 (>= (height!1178 (++!6088 (c!330956 acc!382) (c!330956 (_1!12053 lt!766432)))) (max!0 (height!1178 (c!330956 acc!382)) (height!1178 (c!330956 (_1!12053 lt!766432))))))))

(declare-fun d!625484 () Bool)

(assert (=> d!625484 e!1290881))

(declare-fun res!895552 () Bool)

(assert (=> d!625484 (=> (not res!895552) (not e!1290881))))

(declare-fun appendAssocInst!550 (Conc!7511 Conc!7511) Bool)

(assert (=> d!625484 (= res!895552 (appendAssocInst!550 (c!330956 acc!382) (c!330956 (_1!12053 lt!766432))))))

(assert (=> d!625484 (= lt!766442 (BalanceConc!14785 (++!6088 (c!330956 acc!382) (c!330956 (_1!12053 lt!766432)))))))

(assert (=> d!625484 (= (++!6086 acc!382 (_1!12053 lt!766432)) lt!766442)))

(assert (= (and d!625484 res!895552) b!2043814))

(assert (= (and b!2043814 res!895553) b!2043815))

(assert (= (and b!2043815 res!895554) b!2043816))

(assert (= (and b!2043816 res!895555) b!2043817))

(declare-fun m!2487819 () Bool)

(assert (=> b!2043815 m!2487819))

(declare-fun m!2487821 () Bool)

(assert (=> b!2043815 m!2487821))

(declare-fun m!2487823 () Bool)

(assert (=> b!2043815 m!2487823))

(assert (=> b!2043815 m!2487821))

(declare-fun m!2487825 () Bool)

(assert (=> b!2043815 m!2487825))

(assert (=> b!2043815 m!2487825))

(declare-fun m!2487827 () Bool)

(assert (=> b!2043815 m!2487827))

(assert (=> b!2043815 m!2487819))

(assert (=> b!2043816 m!2487819))

(assert (=> b!2043816 m!2487821))

(assert (=> b!2043816 m!2487823))

(assert (=> b!2043816 m!2487821))

(assert (=> b!2043816 m!2487825))

(assert (=> b!2043816 m!2487825))

(assert (=> b!2043816 m!2487827))

(assert (=> b!2043816 m!2487819))

(assert (=> b!2043814 m!2487825))

(assert (=> b!2043814 m!2487825))

(declare-fun m!2487829 () Bool)

(assert (=> b!2043814 m!2487829))

(declare-fun m!2487831 () Bool)

(assert (=> d!625484 m!2487831))

(assert (=> d!625484 m!2487825))

(declare-fun m!2487833 () Bool)

(assert (=> b!2043817 m!2487833))

(assert (=> b!2043817 m!2487801))

(declare-fun m!2487835 () Bool)

(assert (=> b!2043817 m!2487835))

(assert (=> b!2043817 m!2487801))

(assert (=> b!2043817 m!2487835))

(declare-fun m!2487837 () Bool)

(assert (=> b!2043817 m!2487837))

(assert (=> b!2043781 d!625484))

(declare-fun b!2043832 () Bool)

(declare-fun e!1290890 () Bool)

(declare-fun lt!766449 () tuple2!21110)

(assert (=> b!2043832 (= e!1290890 (= (list!9185 (_2!12053 lt!766449)) (list!9185 totalInput!418)))))

(declare-fun d!625486 () Bool)

(declare-fun e!1290893 () Bool)

(assert (=> d!625486 e!1290893))

(declare-fun res!895563 () Bool)

(assert (=> d!625486 (=> (not res!895563) (not e!1290893))))

(assert (=> d!625486 (= res!895563 e!1290890)))

(declare-fun c!330966 () Bool)

(declare-fun size!17527 (BalanceConc!14784) Int)

(assert (=> d!625486 (= c!330966 (> (size!17527 (_1!12053 lt!766449)) 0))))

(declare-fun e!1290891 () tuple2!21110)

(assert (=> d!625486 (= lt!766449 e!1290891)))

(declare-fun c!330965 () Bool)

(declare-fun lt!766451 () Option!4698)

(assert (=> d!625486 (= c!330965 ((_ is Some!4697) lt!766451))))

(declare-fun maxPrefixZipperSequence!789 (LexerInterface!3630 List!22497 BalanceConc!14782) Option!4698)

(assert (=> d!625486 (= lt!766451 (maxPrefixZipperSequence!789 thiss!12889 rules!1563 totalInput!418))))

(assert (=> d!625486 (= (lexRec!435 thiss!12889 rules!1563 totalInput!418) lt!766449)))

(declare-fun b!2043833 () Bool)

(declare-fun e!1290892 () Bool)

(assert (=> b!2043833 (= e!1290890 e!1290892)))

(declare-fun res!895564 () Bool)

(declare-fun size!17528 (BalanceConc!14782) Int)

(assert (=> b!2043833 (= res!895564 (< (size!17528 (_2!12053 lt!766449)) (size!17528 totalInput!418)))))

(assert (=> b!2043833 (=> (not res!895564) (not e!1290892))))

(declare-fun b!2043834 () Bool)

(declare-fun isEmpty!13973 (BalanceConc!14784) Bool)

(assert (=> b!2043834 (= e!1290892 (not (isEmpty!13973 (_1!12053 lt!766449))))))

(declare-fun b!2043835 () Bool)

(declare-fun res!895562 () Bool)

(assert (=> b!2043835 (=> (not res!895562) (not e!1290893))))

(declare-datatypes ((tuple2!21114 0))(
  ( (tuple2!21115 (_1!12056 List!22499) (_2!12056 List!22493)) )
))
(declare-fun lexList!989 (LexerInterface!3630 List!22497 List!22493) tuple2!21114)

(assert (=> b!2043835 (= res!895562 (= (list!9184 (_1!12053 lt!766449)) (_1!12056 (lexList!989 thiss!12889 rules!1563 (list!9185 totalInput!418)))))))

(declare-fun b!2043836 () Bool)

(assert (=> b!2043836 (= e!1290891 (tuple2!21111 (BalanceConc!14785 Empty!7511) totalInput!418))))

(declare-fun b!2043837 () Bool)

(declare-fun lt!766450 () tuple2!21110)

(declare-fun prepend!911 (BalanceConc!14784 Token!7584) BalanceConc!14784)

(assert (=> b!2043837 (= e!1290891 (tuple2!21111 (prepend!911 (_1!12053 lt!766450) (_1!12054 (v!27113 lt!766451))) (_2!12053 lt!766450)))))

(assert (=> b!2043837 (= lt!766450 (lexRec!435 thiss!12889 rules!1563 (_2!12054 (v!27113 lt!766451))))))

(declare-fun b!2043838 () Bool)

(assert (=> b!2043838 (= e!1290893 (= (list!9185 (_2!12053 lt!766449)) (_2!12056 (lexList!989 thiss!12889 rules!1563 (list!9185 totalInput!418)))))))

(assert (= (and d!625486 c!330965) b!2043837))

(assert (= (and d!625486 (not c!330965)) b!2043836))

(assert (= (and d!625486 c!330966) b!2043833))

(assert (= (and d!625486 (not c!330966)) b!2043832))

(assert (= (and b!2043833 res!895564) b!2043834))

(assert (= (and d!625486 res!895563) b!2043835))

(assert (= (and b!2043835 res!895562) b!2043838))

(declare-fun m!2487839 () Bool)

(assert (=> d!625486 m!2487839))

(declare-fun m!2487841 () Bool)

(assert (=> d!625486 m!2487841))

(declare-fun m!2487843 () Bool)

(assert (=> b!2043832 m!2487843))

(assert (=> b!2043832 m!2487789))

(declare-fun m!2487845 () Bool)

(assert (=> b!2043833 m!2487845))

(declare-fun m!2487847 () Bool)

(assert (=> b!2043833 m!2487847))

(declare-fun m!2487849 () Bool)

(assert (=> b!2043834 m!2487849))

(declare-fun m!2487851 () Bool)

(assert (=> b!2043837 m!2487851))

(declare-fun m!2487853 () Bool)

(assert (=> b!2043837 m!2487853))

(assert (=> b!2043838 m!2487843))

(assert (=> b!2043838 m!2487789))

(assert (=> b!2043838 m!2487789))

(declare-fun m!2487855 () Bool)

(assert (=> b!2043838 m!2487855))

(declare-fun m!2487857 () Bool)

(assert (=> b!2043835 m!2487857))

(assert (=> b!2043835 m!2487789))

(assert (=> b!2043835 m!2487789))

(assert (=> b!2043835 m!2487855))

(assert (=> b!2043781 d!625486))

(declare-fun d!625488 () Bool)

(declare-fun list!9186 (Conc!7511) List!22499)

(assert (=> d!625488 (= (list!9184 (++!6086 acc!382 (_1!12053 lt!766432))) (list!9186 (c!330956 (++!6086 acc!382 (_1!12053 lt!766432)))))))

(declare-fun bs!421914 () Bool)

(assert (= bs!421914 d!625488))

(declare-fun m!2487859 () Bool)

(assert (=> bs!421914 m!2487859))

(assert (=> b!2043781 d!625488))

(declare-fun b!2043839 () Bool)

(declare-fun e!1290894 () Bool)

(declare-fun lt!766452 () tuple2!21110)

(assert (=> b!2043839 (= e!1290894 (= (list!9185 (_2!12053 lt!766452)) (list!9185 input!986)))))

(declare-fun d!625490 () Bool)

(declare-fun e!1290897 () Bool)

(assert (=> d!625490 e!1290897))

(declare-fun res!895566 () Bool)

(assert (=> d!625490 (=> (not res!895566) (not e!1290897))))

(assert (=> d!625490 (= res!895566 e!1290894)))

(declare-fun c!330968 () Bool)

(assert (=> d!625490 (= c!330968 (> (size!17527 (_1!12053 lt!766452)) 0))))

(declare-fun e!1290895 () tuple2!21110)

(assert (=> d!625490 (= lt!766452 e!1290895)))

(declare-fun c!330967 () Bool)

(declare-fun lt!766454 () Option!4698)

(assert (=> d!625490 (= c!330967 ((_ is Some!4697) lt!766454))))

(assert (=> d!625490 (= lt!766454 (maxPrefixZipperSequence!789 thiss!12889 rules!1563 input!986))))

(assert (=> d!625490 (= (lexRec!435 thiss!12889 rules!1563 input!986) lt!766452)))

(declare-fun b!2043840 () Bool)

(declare-fun e!1290896 () Bool)

(assert (=> b!2043840 (= e!1290894 e!1290896)))

(declare-fun res!895567 () Bool)

(assert (=> b!2043840 (= res!895567 (< (size!17528 (_2!12053 lt!766452)) (size!17528 input!986)))))

(assert (=> b!2043840 (=> (not res!895567) (not e!1290896))))

(declare-fun b!2043841 () Bool)

(assert (=> b!2043841 (= e!1290896 (not (isEmpty!13973 (_1!12053 lt!766452))))))

(declare-fun b!2043842 () Bool)

(declare-fun res!895565 () Bool)

(assert (=> b!2043842 (=> (not res!895565) (not e!1290897))))

(assert (=> b!2043842 (= res!895565 (= (list!9184 (_1!12053 lt!766452)) (_1!12056 (lexList!989 thiss!12889 rules!1563 (list!9185 input!986)))))))

(declare-fun b!2043843 () Bool)

(assert (=> b!2043843 (= e!1290895 (tuple2!21111 (BalanceConc!14785 Empty!7511) input!986))))

(declare-fun b!2043844 () Bool)

(declare-fun lt!766453 () tuple2!21110)

(assert (=> b!2043844 (= e!1290895 (tuple2!21111 (prepend!911 (_1!12053 lt!766453) (_1!12054 (v!27113 lt!766454))) (_2!12053 lt!766453)))))

(assert (=> b!2043844 (= lt!766453 (lexRec!435 thiss!12889 rules!1563 (_2!12054 (v!27113 lt!766454))))))

(declare-fun b!2043845 () Bool)

(assert (=> b!2043845 (= e!1290897 (= (list!9185 (_2!12053 lt!766452)) (_2!12056 (lexList!989 thiss!12889 rules!1563 (list!9185 input!986)))))))

(assert (= (and d!625490 c!330967) b!2043844))

(assert (= (and d!625490 (not c!330967)) b!2043843))

(assert (= (and d!625490 c!330968) b!2043840))

(assert (= (and d!625490 (not c!330968)) b!2043839))

(assert (= (and b!2043840 res!895567) b!2043841))

(assert (= (and d!625490 res!895566) b!2043842))

(assert (= (and b!2043842 res!895565) b!2043845))

(declare-fun m!2487861 () Bool)

(assert (=> d!625490 m!2487861))

(declare-fun m!2487863 () Bool)

(assert (=> d!625490 m!2487863))

(declare-fun m!2487865 () Bool)

(assert (=> b!2043839 m!2487865))

(assert (=> b!2043839 m!2487791))

(declare-fun m!2487867 () Bool)

(assert (=> b!2043840 m!2487867))

(declare-fun m!2487869 () Bool)

(assert (=> b!2043840 m!2487869))

(declare-fun m!2487871 () Bool)

(assert (=> b!2043841 m!2487871))

(declare-fun m!2487873 () Bool)

(assert (=> b!2043844 m!2487873))

(declare-fun m!2487875 () Bool)

(assert (=> b!2043844 m!2487875))

(assert (=> b!2043845 m!2487865))

(assert (=> b!2043845 m!2487791))

(assert (=> b!2043845 m!2487791))

(declare-fun m!2487877 () Bool)

(assert (=> b!2043845 m!2487877))

(declare-fun m!2487879 () Bool)

(assert (=> b!2043842 m!2487879))

(assert (=> b!2043842 m!2487791))

(assert (=> b!2043842 m!2487791))

(assert (=> b!2043842 m!2487877))

(assert (=> b!2043781 d!625490))

(declare-fun d!625492 () Bool)

(assert (=> d!625492 (= (list!9184 (_1!12053 lt!766437)) (list!9186 (c!330956 (_1!12053 lt!766437))))))

(declare-fun bs!421915 () Bool)

(assert (= bs!421915 d!625492))

(declare-fun m!2487881 () Bool)

(assert (=> bs!421915 m!2487881))

(assert (=> b!2043781 d!625492))

(declare-fun d!625494 () Bool)

(assert (=> d!625494 (= (array_inv!2206 (_keys!2303 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))))) (bvsge (size!17524 (_keys!2303 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2043780 d!625494))

(declare-fun d!625496 () Bool)

(assert (=> d!625496 (= (array_inv!2207 (_values!2286 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))))) (bvsge (size!17525 (_values!2286 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2043780 d!625496))

(declare-fun d!625498 () Bool)

(declare-fun isBalanced!2361 (Conc!7510) Bool)

(assert (=> d!625498 (= (inv!29763 input!986) (isBalanced!2361 (c!330954 input!986)))))

(declare-fun bs!421916 () Bool)

(assert (= bs!421916 d!625498))

(declare-fun m!2487883 () Bool)

(assert (=> bs!421916 m!2487883))

(assert (=> start!201376 d!625498))

(declare-fun d!625500 () Bool)

(declare-fun res!895570 () Bool)

(declare-fun e!1290900 () Bool)

(assert (=> d!625500 (=> (not res!895570) (not e!1290900))))

(assert (=> d!625500 (= res!895570 ((_ is HashMap!1919) (cache!2300 cacheUp!562)))))

(assert (=> d!625500 (= (inv!29762 cacheUp!562) e!1290900)))

(declare-fun b!2043848 () Bool)

(declare-fun validCacheMapUp!187 (MutableMap!1919) Bool)

(assert (=> b!2043848 (= e!1290900 (validCacheMapUp!187 (cache!2300 cacheUp!562)))))

(assert (= (and d!625500 res!895570) b!2043848))

(declare-fun m!2487885 () Bool)

(assert (=> b!2043848 m!2487885))

(assert (=> start!201376 d!625500))

(declare-fun d!625502 () Bool)

(assert (=> d!625502 (= (inv!29764 acc!382) (isBalanced!2360 (c!330956 acc!382)))))

(declare-fun bs!421917 () Bool)

(assert (= bs!421917 d!625502))

(declare-fun m!2487887 () Bool)

(assert (=> bs!421917 m!2487887))

(assert (=> start!201376 d!625502))

(declare-fun d!625504 () Bool)

(declare-fun res!895573 () Bool)

(declare-fun e!1290903 () Bool)

(assert (=> d!625504 (=> (not res!895573) (not e!1290903))))

(assert (=> d!625504 (= res!895573 ((_ is HashMap!1920) (cache!2301 cacheDown!575)))))

(assert (=> d!625504 (= (inv!29761 cacheDown!575) e!1290903)))

(declare-fun b!2043851 () Bool)

(declare-fun validCacheMapDown!185 (MutableMap!1920) Bool)

(assert (=> b!2043851 (= e!1290903 (validCacheMapDown!185 (cache!2301 cacheDown!575)))))

(assert (= (and d!625504 res!895573) b!2043851))

(declare-fun m!2487889 () Bool)

(assert (=> b!2043851 m!2487889))

(assert (=> start!201376 d!625504))

(declare-fun d!625506 () Bool)

(assert (=> d!625506 (= (inv!29763 totalInput!418) (isBalanced!2361 (c!330954 totalInput!418)))))

(declare-fun bs!421918 () Bool)

(assert (= bs!421918 d!625506))

(declare-fun m!2487891 () Bool)

(assert (=> bs!421918 m!2487891))

(assert (=> start!201376 d!625506))

(declare-fun d!625508 () Bool)

(assert (=> d!625508 (= (inv!29763 treated!60) (isBalanced!2361 (c!330954 treated!60)))))

(declare-fun bs!421919 () Bool)

(assert (= bs!421919 d!625508))

(declare-fun m!2487893 () Bool)

(assert (=> bs!421919 m!2487893))

(assert (=> start!201376 d!625508))

(declare-fun d!625510 () Bool)

(assert (=> d!625510 (= (array_inv!2206 (_keys!2302 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))))) (bvsge (size!17524 (_keys!2302 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2043792 d!625510))

(declare-fun d!625512 () Bool)

(assert (=> d!625512 (= (array_inv!2208 (_values!2285 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))))) (bvsge (size!17523 (_values!2285 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2043792 d!625512))

(declare-fun d!625514 () Bool)

(declare-fun list!9187 (Conc!7510) List!22493)

(assert (=> d!625514 (= (list!9185 (_2!12053 lt!766437)) (list!9187 (c!330954 (_2!12053 lt!766437))))))

(declare-fun bs!421920 () Bool)

(assert (= bs!421920 d!625514))

(declare-fun m!2487895 () Bool)

(assert (=> bs!421920 m!2487895))

(assert (=> b!2043788 d!625514))

(declare-fun d!625516 () Bool)

(assert (=> d!625516 (= (list!9185 (_2!12053 lt!766432)) (list!9187 (c!330954 (_2!12053 lt!766432))))))

(declare-fun bs!421921 () Bool)

(assert (= bs!421921 d!625516))

(declare-fun m!2487897 () Bool)

(assert (=> bs!421921 m!2487897))

(assert (=> b!2043788 d!625516))

(declare-fun d!625518 () Bool)

(declare-fun c!330971 () Bool)

(assert (=> d!625518 (= c!330971 ((_ is Node!7510) (c!330954 input!986)))))

(declare-fun e!1290908 () Bool)

(assert (=> d!625518 (= (inv!29758 (c!330954 input!986)) e!1290908)))

(declare-fun b!2043858 () Bool)

(declare-fun inv!29765 (Conc!7510) Bool)

(assert (=> b!2043858 (= e!1290908 (inv!29765 (c!330954 input!986)))))

(declare-fun b!2043859 () Bool)

(declare-fun e!1290909 () Bool)

(assert (=> b!2043859 (= e!1290908 e!1290909)))

(declare-fun res!895576 () Bool)

(assert (=> b!2043859 (= res!895576 (not ((_ is Leaf!11000) (c!330954 input!986))))))

(assert (=> b!2043859 (=> res!895576 e!1290909)))

(declare-fun b!2043860 () Bool)

(declare-fun inv!29766 (Conc!7510) Bool)

(assert (=> b!2043860 (= e!1290909 (inv!29766 (c!330954 input!986)))))

(assert (= (and d!625518 c!330971) b!2043858))

(assert (= (and d!625518 (not c!330971)) b!2043859))

(assert (= (and b!2043859 (not res!895576)) b!2043860))

(declare-fun m!2487899 () Bool)

(assert (=> b!2043858 m!2487899))

(declare-fun m!2487901 () Bool)

(assert (=> b!2043860 m!2487901))

(assert (=> b!2043786 d!625518))

(declare-fun d!625520 () Bool)

(assert (=> d!625520 (= (isEmpty!13972 (list!9185 (_2!12053 lt!766438))) ((_ is Nil!22409) (list!9185 (_2!12053 lt!766438))))))

(assert (=> b!2043796 d!625520))

(declare-fun d!625522 () Bool)

(assert (=> d!625522 (= (list!9185 (_2!12053 lt!766438)) (list!9187 (c!330954 (_2!12053 lt!766438))))))

(declare-fun bs!421922 () Bool)

(assert (= bs!421922 d!625522))

(declare-fun m!2487903 () Bool)

(assert (=> bs!421922 m!2487903))

(assert (=> b!2043796 d!625522))

(declare-fun d!625524 () Bool)

(assert (=> d!625524 (= (list!9184 (_1!12053 lt!766438)) (list!9186 (c!330956 (_1!12053 lt!766438))))))

(declare-fun bs!421923 () Bool)

(assert (= bs!421923 d!625524))

(declare-fun m!2487905 () Bool)

(assert (=> bs!421923 m!2487905))

(assert (=> b!2043795 d!625524))

(declare-fun d!625526 () Bool)

(assert (=> d!625526 (= (list!9184 acc!382) (list!9186 (c!330956 acc!382)))))

(declare-fun bs!421924 () Bool)

(assert (= bs!421924 d!625526))

(declare-fun m!2487907 () Bool)

(assert (=> bs!421924 m!2487907))

(assert (=> b!2043795 d!625526))

(declare-fun b!2043861 () Bool)

(declare-fun e!1290910 () Bool)

(declare-fun lt!766455 () tuple2!21110)

(assert (=> b!2043861 (= e!1290910 (= (list!9185 (_2!12053 lt!766455)) (list!9185 treated!60)))))

(declare-fun d!625528 () Bool)

(declare-fun e!1290913 () Bool)

(assert (=> d!625528 e!1290913))

(declare-fun res!895578 () Bool)

(assert (=> d!625528 (=> (not res!895578) (not e!1290913))))

(assert (=> d!625528 (= res!895578 e!1290910)))

(declare-fun c!330973 () Bool)

(assert (=> d!625528 (= c!330973 (> (size!17527 (_1!12053 lt!766455)) 0))))

(declare-fun e!1290911 () tuple2!21110)

(assert (=> d!625528 (= lt!766455 e!1290911)))

(declare-fun c!330972 () Bool)

(declare-fun lt!766457 () Option!4698)

(assert (=> d!625528 (= c!330972 ((_ is Some!4697) lt!766457))))

(assert (=> d!625528 (= lt!766457 (maxPrefixZipperSequence!789 thiss!12889 rules!1563 treated!60))))

(assert (=> d!625528 (= (lexRec!435 thiss!12889 rules!1563 treated!60) lt!766455)))

(declare-fun b!2043862 () Bool)

(declare-fun e!1290912 () Bool)

(assert (=> b!2043862 (= e!1290910 e!1290912)))

(declare-fun res!895579 () Bool)

(assert (=> b!2043862 (= res!895579 (< (size!17528 (_2!12053 lt!766455)) (size!17528 treated!60)))))

(assert (=> b!2043862 (=> (not res!895579) (not e!1290912))))

(declare-fun b!2043863 () Bool)

(assert (=> b!2043863 (= e!1290912 (not (isEmpty!13973 (_1!12053 lt!766455))))))

(declare-fun b!2043864 () Bool)

(declare-fun res!895577 () Bool)

(assert (=> b!2043864 (=> (not res!895577) (not e!1290913))))

(assert (=> b!2043864 (= res!895577 (= (list!9184 (_1!12053 lt!766455)) (_1!12056 (lexList!989 thiss!12889 rules!1563 (list!9185 treated!60)))))))

(declare-fun b!2043865 () Bool)

(assert (=> b!2043865 (= e!1290911 (tuple2!21111 (BalanceConc!14785 Empty!7511) treated!60))))

(declare-fun b!2043866 () Bool)

(declare-fun lt!766456 () tuple2!21110)

(assert (=> b!2043866 (= e!1290911 (tuple2!21111 (prepend!911 (_1!12053 lt!766456) (_1!12054 (v!27113 lt!766457))) (_2!12053 lt!766456)))))

(assert (=> b!2043866 (= lt!766456 (lexRec!435 thiss!12889 rules!1563 (_2!12054 (v!27113 lt!766457))))))

(declare-fun b!2043867 () Bool)

(assert (=> b!2043867 (= e!1290913 (= (list!9185 (_2!12053 lt!766455)) (_2!12056 (lexList!989 thiss!12889 rules!1563 (list!9185 treated!60)))))))

(assert (= (and d!625528 c!330972) b!2043866))

(assert (= (and d!625528 (not c!330972)) b!2043865))

(assert (= (and d!625528 c!330973) b!2043862))

(assert (= (and d!625528 (not c!330973)) b!2043861))

(assert (= (and b!2043862 res!895579) b!2043863))

(assert (= (and d!625528 res!895578) b!2043864))

(assert (= (and b!2043864 res!895577) b!2043867))

(declare-fun m!2487909 () Bool)

(assert (=> d!625528 m!2487909))

(declare-fun m!2487911 () Bool)

(assert (=> d!625528 m!2487911))

(declare-fun m!2487913 () Bool)

(assert (=> b!2043861 m!2487913))

(assert (=> b!2043861 m!2487793))

(declare-fun m!2487915 () Bool)

(assert (=> b!2043862 m!2487915))

(declare-fun m!2487917 () Bool)

(assert (=> b!2043862 m!2487917))

(declare-fun m!2487919 () Bool)

(assert (=> b!2043863 m!2487919))

(declare-fun m!2487921 () Bool)

(assert (=> b!2043866 m!2487921))

(declare-fun m!2487923 () Bool)

(assert (=> b!2043866 m!2487923))

(assert (=> b!2043867 m!2487913))

(assert (=> b!2043867 m!2487793))

(assert (=> b!2043867 m!2487793))

(declare-fun m!2487925 () Bool)

(assert (=> b!2043867 m!2487925))

(declare-fun m!2487927 () Bool)

(assert (=> b!2043864 m!2487927))

(assert (=> b!2043864 m!2487793))

(assert (=> b!2043864 m!2487793))

(assert (=> b!2043864 m!2487925))

(assert (=> b!2043795 d!625528))

(declare-fun d!625530 () Bool)

(declare-fun res!895582 () Bool)

(declare-fun e!1290916 () Bool)

(assert (=> d!625530 (=> (not res!895582) (not e!1290916))))

(declare-fun rulesValid!1504 (LexerInterface!3630 List!22497) Bool)

(assert (=> d!625530 (= res!895582 (rulesValid!1504 thiss!12889 rules!1563))))

(assert (=> d!625530 (= (rulesInvariant!3231 thiss!12889 rules!1563) e!1290916)))

(declare-fun b!2043870 () Bool)

(declare-datatypes ((List!22500 0))(
  ( (Nil!22416) (Cons!22416 (h!27817 String!25957) (t!191614 List!22500)) )
))
(declare-fun noDuplicateTag!1502 (LexerInterface!3630 List!22497 List!22500) Bool)

(assert (=> b!2043870 (= e!1290916 (noDuplicateTag!1502 thiss!12889 rules!1563 Nil!22416))))

(assert (= (and d!625530 res!895582) b!2043870))

(declare-fun m!2487929 () Bool)

(assert (=> d!625530 m!2487929))

(declare-fun m!2487931 () Bool)

(assert (=> b!2043870 m!2487931))

(assert (=> b!2043775 d!625530))

(declare-fun d!625532 () Bool)

(declare-fun c!330974 () Bool)

(assert (=> d!625532 (= c!330974 ((_ is Node!7510) (c!330954 totalInput!418)))))

(declare-fun e!1290917 () Bool)

(assert (=> d!625532 (= (inv!29758 (c!330954 totalInput!418)) e!1290917)))

(declare-fun b!2043871 () Bool)

(assert (=> b!2043871 (= e!1290917 (inv!29765 (c!330954 totalInput!418)))))

(declare-fun b!2043872 () Bool)

(declare-fun e!1290918 () Bool)

(assert (=> b!2043872 (= e!1290917 e!1290918)))

(declare-fun res!895583 () Bool)

(assert (=> b!2043872 (= res!895583 (not ((_ is Leaf!11000) (c!330954 totalInput!418))))))

(assert (=> b!2043872 (=> res!895583 e!1290918)))

(declare-fun b!2043873 () Bool)

(assert (=> b!2043873 (= e!1290918 (inv!29766 (c!330954 totalInput!418)))))

(assert (= (and d!625532 c!330974) b!2043871))

(assert (= (and d!625532 (not c!330974)) b!2043872))

(assert (= (and b!2043872 (not res!895583)) b!2043873))

(declare-fun m!2487933 () Bool)

(assert (=> b!2043871 m!2487933))

(declare-fun m!2487935 () Bool)

(assert (=> b!2043873 m!2487935))

(assert (=> b!2043797 d!625532))

(declare-fun d!625534 () Bool)

(assert (=> d!625534 (= (isEmpty!13971 rules!1563) ((_ is Nil!22413) rules!1563))))

(assert (=> b!2043777 d!625534))

(declare-fun b!2043882 () Bool)

(declare-fun e!1290924 () tuple3!2068)

(declare-fun lt!766479 () tuple3!2068)

(assert (=> b!2043882 (= e!1290924 (tuple3!2069 (_1!12055 lt!766479) (_2!12055 lt!766479) (_3!1498 lt!766479)))))

(declare-fun call!125294 () tuple3!2068)

(assert (=> b!2043882 (= lt!766479 call!125294)))

(declare-fun b!2043883 () Bool)

(declare-fun res!895588 () Bool)

(declare-fun e!1290923 () Bool)

(assert (=> b!2043883 (=> (not res!895588) (not e!1290923))))

(declare-fun lt!766477 () tuple3!2068)

(assert (=> b!2043883 (= res!895588 (valid!1599 (_2!12055 lt!766477)))))

(declare-fun bm!125289 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!4 (LexerInterface!3630 Rule!7834 BalanceConc!14782 BalanceConc!14782 CacheUp!1214 CacheDown!1218) tuple3!2068)

(assert (=> bm!125289 (= call!125294 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!4 thiss!12889 (h!27814 rules!1563) input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun d!625536 () Bool)

(assert (=> d!625536 e!1290923))

(declare-fun res!895589 () Bool)

(assert (=> d!625536 (=> (not res!895589) (not e!1290923))))

(declare-fun maxPrefixZipperSequenceV2!316 (LexerInterface!3630 List!22497 BalanceConc!14782 BalanceConc!14782) Option!4698)

(assert (=> d!625536 (= res!895589 (= (_1!12055 lt!766477) (maxPrefixZipperSequenceV2!316 thiss!12889 rules!1563 input!986 totalInput!418)))))

(assert (=> d!625536 (= lt!766477 e!1290924)))

(declare-fun c!330977 () Bool)

(assert (=> d!625536 (= c!330977 (and ((_ is Cons!22413) rules!1563) ((_ is Nil!22413) (t!191611 rules!1563))))))

(declare-fun lt!766474 () Unit!37027)

(declare-fun lt!766480 () Unit!37027)

(assert (=> d!625536 (= lt!766474 lt!766480)))

(declare-fun lt!766475 () List!22493)

(declare-fun lt!766476 () List!22493)

(declare-fun isPrefix!1993 (List!22493 List!22493) Bool)

(assert (=> d!625536 (isPrefix!1993 lt!766475 lt!766476)))

(declare-fun lemmaIsPrefixRefl!1311 (List!22493 List!22493) Unit!37027)

(assert (=> d!625536 (= lt!766480 (lemmaIsPrefixRefl!1311 lt!766475 lt!766476))))

(assert (=> d!625536 (= lt!766476 (list!9185 input!986))))

(assert (=> d!625536 (= lt!766475 (list!9185 input!986))))

(assert (=> d!625536 (rulesValidInductive!1396 thiss!12889 rules!1563)))

(assert (=> d!625536 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!9 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575) lt!766477)))

(declare-fun b!2043884 () Bool)

(assert (=> b!2043884 (= e!1290923 (valid!1600 (_3!1498 lt!766477)))))

(declare-fun b!2043885 () Bool)

(declare-fun lt!766478 () tuple3!2068)

(declare-fun lt!766481 () tuple3!2068)

(assert (=> b!2043885 (= e!1290924 (tuple3!2069 (ite (and ((_ is None!4697) (_1!12055 lt!766478)) ((_ is None!4697) (_1!12055 lt!766481))) None!4697 (ite ((_ is None!4697) (_1!12055 lt!766481)) (_1!12055 lt!766478) (ite ((_ is None!4697) (_1!12055 lt!766478)) (_1!12055 lt!766481) (ite (>= (size!17526 (_1!12054 (v!27113 (_1!12055 lt!766478)))) (size!17526 (_1!12054 (v!27113 (_1!12055 lt!766481))))) (_1!12055 lt!766478) (_1!12055 lt!766481))))) (_2!12055 lt!766481) (_3!1498 lt!766481)))))

(assert (=> b!2043885 (= lt!766478 call!125294)))

(assert (=> b!2043885 (= lt!766481 (maxPrefixZipperSequenceV2MemOnlyDeriv!9 thiss!12889 (t!191611 rules!1563) input!986 totalInput!418 (_2!12055 lt!766478) (_3!1498 lt!766478)))))

(assert (= (and d!625536 c!330977) b!2043882))

(assert (= (and d!625536 (not c!330977)) b!2043885))

(assert (= (or b!2043882 b!2043885) bm!125289))

(assert (= (and d!625536 res!895589) b!2043883))

(assert (= (and b!2043883 res!895588) b!2043884))

(declare-fun m!2487937 () Bool)

(assert (=> bm!125289 m!2487937))

(declare-fun m!2487939 () Bool)

(assert (=> b!2043885 m!2487939))

(declare-fun m!2487941 () Bool)

(assert (=> b!2043884 m!2487941))

(declare-fun m!2487943 () Bool)

(assert (=> d!625536 m!2487943))

(declare-fun m!2487945 () Bool)

(assert (=> d!625536 m!2487945))

(declare-fun m!2487947 () Bool)

(assert (=> d!625536 m!2487947))

(assert (=> d!625536 m!2487791))

(assert (=> d!625536 m!2487805))

(declare-fun m!2487949 () Bool)

(assert (=> b!2043883 m!2487949))

(assert (=> b!2043805 d!625536))

(declare-fun d!625538 () Bool)

(declare-fun e!1290927 () Bool)

(assert (=> d!625538 e!1290927))

(declare-fun res!895592 () Bool)

(assert (=> d!625538 (=> res!895592 e!1290927)))

(declare-fun lt!766484 () Bool)

(assert (=> d!625538 (= res!895592 (not lt!766484))))

(declare-fun drop!1127 (List!22493 Int) List!22493)

(declare-fun size!17529 (List!22493) Int)

(assert (=> d!625538 (= lt!766484 (= lt!766434 (drop!1127 lt!766435 (- (size!17529 lt!766435) (size!17529 lt!766434)))))))

(assert (=> d!625538 (= (isSuffix!477 lt!766434 lt!766435) lt!766484)))

(declare-fun b!2043888 () Bool)

(assert (=> b!2043888 (= e!1290927 (>= (size!17529 lt!766435) (size!17529 lt!766434)))))

(assert (= (and d!625538 (not res!895592)) b!2043888))

(declare-fun m!2487951 () Bool)

(assert (=> d!625538 m!2487951))

(declare-fun m!2487953 () Bool)

(assert (=> d!625538 m!2487953))

(declare-fun m!2487955 () Bool)

(assert (=> d!625538 m!2487955))

(assert (=> b!2043888 m!2487951))

(assert (=> b!2043888 m!2487953))

(assert (=> b!2043787 d!625538))

(declare-fun d!625540 () Bool)

(declare-fun e!1290928 () Bool)

(assert (=> d!625540 e!1290928))

(declare-fun res!895593 () Bool)

(assert (=> d!625540 (=> res!895593 e!1290928)))

(declare-fun lt!766485 () Bool)

(assert (=> d!625540 (= res!895593 (not lt!766485))))

(assert (=> d!625540 (= lt!766485 (= lt!766434 (drop!1127 lt!766433 (- (size!17529 lt!766433) (size!17529 lt!766434)))))))

(assert (=> d!625540 (= (isSuffix!477 lt!766434 lt!766433) lt!766485)))

(declare-fun b!2043889 () Bool)

(assert (=> b!2043889 (= e!1290928 (>= (size!17529 lt!766433) (size!17529 lt!766434)))))

(assert (= (and d!625540 (not res!895593)) b!2043889))

(declare-fun m!2487957 () Bool)

(assert (=> d!625540 m!2487957))

(assert (=> d!625540 m!2487953))

(declare-fun m!2487959 () Bool)

(assert (=> d!625540 m!2487959))

(assert (=> b!2043889 m!2487957))

(assert (=> b!2043889 m!2487953))

(assert (=> b!2043787 d!625540))

(declare-fun d!625542 () Bool)

(assert (=> d!625542 (isSuffix!477 lt!766434 (++!6087 lt!766431 lt!766434))))

(declare-fun lt!766488 () Unit!37027)

(declare-fun choose!12462 (List!22493 List!22493) Unit!37027)

(assert (=> d!625542 (= lt!766488 (choose!12462 lt!766431 lt!766434))))

(assert (=> d!625542 (= (lemmaConcatTwoListThenFSndIsSuffix!378 lt!766431 lt!766434) lt!766488)))

(declare-fun bs!421925 () Bool)

(assert (= bs!421925 d!625542))

(assert (=> bs!421925 m!2487787))

(assert (=> bs!421925 m!2487787))

(declare-fun m!2487961 () Bool)

(assert (=> bs!421925 m!2487961))

(declare-fun m!2487963 () Bool)

(assert (=> bs!421925 m!2487963))

(assert (=> b!2043787 d!625542))

(declare-fun d!625544 () Bool)

(declare-fun c!330980 () Bool)

(assert (=> d!625544 (= c!330980 ((_ is Node!7511) (c!330956 acc!382)))))

(declare-fun e!1290933 () Bool)

(assert (=> d!625544 (= (inv!29760 (c!330956 acc!382)) e!1290933)))

(declare-fun b!2043896 () Bool)

(declare-fun inv!29767 (Conc!7511) Bool)

(assert (=> b!2043896 (= e!1290933 (inv!29767 (c!330956 acc!382)))))

(declare-fun b!2043897 () Bool)

(declare-fun e!1290934 () Bool)

(assert (=> b!2043897 (= e!1290933 e!1290934)))

(declare-fun res!895596 () Bool)

(assert (=> b!2043897 (= res!895596 (not ((_ is Leaf!11001) (c!330956 acc!382))))))

(assert (=> b!2043897 (=> res!895596 e!1290934)))

(declare-fun b!2043898 () Bool)

(declare-fun inv!29768 (Conc!7511) Bool)

(assert (=> b!2043898 (= e!1290934 (inv!29768 (c!330956 acc!382)))))

(assert (= (and d!625544 c!330980) b!2043896))

(assert (= (and d!625544 (not c!330980)) b!2043897))

(assert (= (and b!2043897 (not res!895596)) b!2043898))

(declare-fun m!2487965 () Bool)

(assert (=> b!2043896 m!2487965))

(declare-fun m!2487967 () Bool)

(assert (=> b!2043898 m!2487967))

(assert (=> b!2043793 d!625544))

(declare-fun d!625546 () Bool)

(declare-fun c!330981 () Bool)

(assert (=> d!625546 (= c!330981 ((_ is Node!7510) (c!330954 treated!60)))))

(declare-fun e!1290935 () Bool)

(assert (=> d!625546 (= (inv!29758 (c!330954 treated!60)) e!1290935)))

(declare-fun b!2043899 () Bool)

(assert (=> b!2043899 (= e!1290935 (inv!29765 (c!330954 treated!60)))))

(declare-fun b!2043900 () Bool)

(declare-fun e!1290936 () Bool)

(assert (=> b!2043900 (= e!1290935 e!1290936)))

(declare-fun res!895597 () Bool)

(assert (=> b!2043900 (= res!895597 (not ((_ is Leaf!11000) (c!330954 treated!60))))))

(assert (=> b!2043900 (=> res!895597 e!1290936)))

(declare-fun b!2043901 () Bool)

(assert (=> b!2043901 (= e!1290936 (inv!29766 (c!330954 treated!60)))))

(assert (= (and d!625546 c!330981) b!2043899))

(assert (= (and d!625546 (not c!330981)) b!2043900))

(assert (= (and b!2043900 (not res!895597)) b!2043901))

(declare-fun m!2487969 () Bool)

(assert (=> b!2043899 m!2487969))

(declare-fun m!2487971 () Bool)

(assert (=> b!2043901 m!2487971))

(assert (=> b!2043773 d!625546))

(declare-fun d!625548 () Bool)

(assert (=> d!625548 (= (valid!1600 cacheDown!575) (validCacheMapDown!185 (cache!2301 cacheDown!575)))))

(declare-fun bs!421926 () Bool)

(assert (= bs!421926 d!625548))

(assert (=> bs!421926 m!2487889))

(assert (=> b!2043783 d!625548))

(declare-fun d!625550 () Bool)

(declare-fun e!1290941 () Bool)

(assert (=> d!625550 e!1290941))

(declare-fun res!895602 () Bool)

(assert (=> d!625550 (=> (not res!895602) (not e!1290941))))

(declare-fun lt!766491 () List!22493)

(declare-fun content!3318 (List!22493) (InoxSet C!11036))

(assert (=> d!625550 (= res!895602 (= (content!3318 lt!766491) ((_ map or) (content!3318 lt!766431) (content!3318 lt!766434))))))

(declare-fun e!1290942 () List!22493)

(assert (=> d!625550 (= lt!766491 e!1290942)))

(declare-fun c!330984 () Bool)

(assert (=> d!625550 (= c!330984 ((_ is Nil!22409) lt!766431))))

(assert (=> d!625550 (= (++!6087 lt!766431 lt!766434) lt!766491)))

(declare-fun b!2043911 () Bool)

(assert (=> b!2043911 (= e!1290942 (Cons!22409 (h!27810 lt!766431) (++!6087 (t!191607 lt!766431) lt!766434)))))

(declare-fun b!2043910 () Bool)

(assert (=> b!2043910 (= e!1290942 lt!766434)))

(declare-fun b!2043913 () Bool)

(assert (=> b!2043913 (= e!1290941 (or (not (= lt!766434 Nil!22409)) (= lt!766491 lt!766431)))))

(declare-fun b!2043912 () Bool)

(declare-fun res!895603 () Bool)

(assert (=> b!2043912 (=> (not res!895603) (not e!1290941))))

(assert (=> b!2043912 (= res!895603 (= (size!17529 lt!766491) (+ (size!17529 lt!766431) (size!17529 lt!766434))))))

(assert (= (and d!625550 c!330984) b!2043910))

(assert (= (and d!625550 (not c!330984)) b!2043911))

(assert (= (and d!625550 res!895602) b!2043912))

(assert (= (and b!2043912 res!895603) b!2043913))

(declare-fun m!2487973 () Bool)

(assert (=> d!625550 m!2487973))

(declare-fun m!2487975 () Bool)

(assert (=> d!625550 m!2487975))

(declare-fun m!2487977 () Bool)

(assert (=> d!625550 m!2487977))

(declare-fun m!2487979 () Bool)

(assert (=> b!2043911 m!2487979))

(declare-fun m!2487981 () Bool)

(assert (=> b!2043912 m!2487981))

(declare-fun m!2487983 () Bool)

(assert (=> b!2043912 m!2487983))

(assert (=> b!2043912 m!2487953))

(assert (=> b!2043803 d!625550))

(declare-fun d!625552 () Bool)

(assert (=> d!625552 (= (list!9185 totalInput!418) (list!9187 (c!330954 totalInput!418)))))

(declare-fun bs!421927 () Bool)

(assert (= bs!421927 d!625552))

(declare-fun m!2487985 () Bool)

(assert (=> bs!421927 m!2487985))

(assert (=> b!2043803 d!625552))

(declare-fun d!625554 () Bool)

(assert (=> d!625554 (= (list!9185 input!986) (list!9187 (c!330954 input!986)))))

(declare-fun bs!421928 () Bool)

(assert (= bs!421928 d!625554))

(declare-fun m!2487987 () Bool)

(assert (=> bs!421928 m!2487987))

(assert (=> b!2043803 d!625554))

(declare-fun d!625556 () Bool)

(assert (=> d!625556 (= (list!9185 treated!60) (list!9187 (c!330954 treated!60)))))

(declare-fun bs!421929 () Bool)

(assert (= bs!421929 d!625556))

(declare-fun m!2487989 () Bool)

(assert (=> bs!421929 m!2487989))

(assert (=> b!2043803 d!625556))

(declare-fun d!625558 () Bool)

(assert (=> d!625558 (= (valid!1599 cacheUp!562) (validCacheMapUp!187 (cache!2300 cacheUp!562)))))

(declare-fun bs!421930 () Bool)

(assert (= bs!421930 d!625558))

(assert (=> bs!421930 m!2487885))

(assert (=> b!2043774 d!625558))

(declare-fun d!625560 () Bool)

(assert (=> d!625560 true))

(declare-fun lt!766494 () Bool)

(declare-fun lambda!76695 () Int)

(declare-fun forall!4767 (List!22497 Int) Bool)

(assert (=> d!625560 (= lt!766494 (forall!4767 rules!1563 lambda!76695))))

(declare-fun e!1290947 () Bool)

(assert (=> d!625560 (= lt!766494 e!1290947)))

(declare-fun res!895609 () Bool)

(assert (=> d!625560 (=> res!895609 e!1290947)))

(assert (=> d!625560 (= res!895609 (not ((_ is Cons!22413) rules!1563)))))

(assert (=> d!625560 (= (rulesValidInductive!1396 thiss!12889 rules!1563) lt!766494)))

(declare-fun b!2043918 () Bool)

(declare-fun e!1290948 () Bool)

(assert (=> b!2043918 (= e!1290947 e!1290948)))

(declare-fun res!895608 () Bool)

(assert (=> b!2043918 (=> (not res!895608) (not e!1290948))))

(declare-fun ruleValid!1229 (LexerInterface!3630 Rule!7834) Bool)

(assert (=> b!2043918 (= res!895608 (ruleValid!1229 thiss!12889 (h!27814 rules!1563)))))

(declare-fun b!2043919 () Bool)

(assert (=> b!2043919 (= e!1290948 (rulesValidInductive!1396 thiss!12889 (t!191611 rules!1563)))))

(assert (= (and d!625560 (not res!895609)) b!2043918))

(assert (= (and b!2043918 res!895608) b!2043919))

(declare-fun m!2487991 () Bool)

(assert (=> d!625560 m!2487991))

(declare-fun m!2487993 () Bool)

(assert (=> b!2043918 m!2487993))

(declare-fun m!2487995 () Bool)

(assert (=> b!2043919 m!2487995))

(assert (=> b!2043785 d!625560))

(declare-fun b!2043922 () Bool)

(declare-fun e!1290950 () tuple3!2068)

(declare-fun lt!766500 () tuple3!2068)

(assert (=> b!2043922 (= e!1290950 (tuple3!2069 (_1!12055 lt!766500) (_2!12055 lt!766500) (_3!1498 lt!766500)))))

(declare-fun call!125295 () tuple3!2068)

(assert (=> b!2043922 (= lt!766500 call!125295)))

(declare-fun b!2043923 () Bool)

(declare-fun res!895610 () Bool)

(declare-fun e!1290949 () Bool)

(assert (=> b!2043923 (=> (not res!895610) (not e!1290949))))

(declare-fun lt!766498 () tuple3!2068)

(assert (=> b!2043923 (= res!895610 (valid!1599 (_2!12055 lt!766498)))))

(declare-fun bm!125290 () Bool)

(assert (=> bm!125290 (= call!125295 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!4 thiss!12889 (h!27814 rules!1563) input!986 totalInput!418 (_2!12055 lt!766428) (_3!1498 lt!766428)))))

(declare-fun d!625562 () Bool)

(assert (=> d!625562 e!1290949))

(declare-fun res!895611 () Bool)

(assert (=> d!625562 (=> (not res!895611) (not e!1290949))))

(assert (=> d!625562 (= res!895611 (= (_1!12055 lt!766498) (maxPrefixZipperSequenceV2!316 thiss!12889 rules!1563 input!986 totalInput!418)))))

(assert (=> d!625562 (= lt!766498 e!1290950)))

(declare-fun c!330985 () Bool)

(assert (=> d!625562 (= c!330985 (and ((_ is Cons!22413) rules!1563) ((_ is Nil!22413) (t!191611 rules!1563))))))

(declare-fun lt!766495 () Unit!37027)

(declare-fun lt!766501 () Unit!37027)

(assert (=> d!625562 (= lt!766495 lt!766501)))

(declare-fun lt!766496 () List!22493)

(declare-fun lt!766497 () List!22493)

(assert (=> d!625562 (isPrefix!1993 lt!766496 lt!766497)))

(assert (=> d!625562 (= lt!766501 (lemmaIsPrefixRefl!1311 lt!766496 lt!766497))))

(assert (=> d!625562 (= lt!766497 (list!9185 input!986))))

(assert (=> d!625562 (= lt!766496 (list!9185 input!986))))

(assert (=> d!625562 (rulesValidInductive!1396 thiss!12889 rules!1563)))

(assert (=> d!625562 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!9 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12055 lt!766428) (_3!1498 lt!766428)) lt!766498)))

(declare-fun b!2043924 () Bool)

(assert (=> b!2043924 (= e!1290949 (valid!1600 (_3!1498 lt!766498)))))

(declare-fun b!2043925 () Bool)

(declare-fun lt!766499 () tuple3!2068)

(declare-fun lt!766502 () tuple3!2068)

(assert (=> b!2043925 (= e!1290950 (tuple3!2069 (ite (and ((_ is None!4697) (_1!12055 lt!766499)) ((_ is None!4697) (_1!12055 lt!766502))) None!4697 (ite ((_ is None!4697) (_1!12055 lt!766502)) (_1!12055 lt!766499) (ite ((_ is None!4697) (_1!12055 lt!766499)) (_1!12055 lt!766502) (ite (>= (size!17526 (_1!12054 (v!27113 (_1!12055 lt!766499)))) (size!17526 (_1!12054 (v!27113 (_1!12055 lt!766502))))) (_1!12055 lt!766499) (_1!12055 lt!766502))))) (_2!12055 lt!766502) (_3!1498 lt!766502)))))

(assert (=> b!2043925 (= lt!766499 call!125295)))

(assert (=> b!2043925 (= lt!766502 (maxPrefixZipperSequenceV2MemOnlyDeriv!9 thiss!12889 (t!191611 rules!1563) input!986 totalInput!418 (_2!12055 lt!766499) (_3!1498 lt!766499)))))

(assert (= (and d!625562 c!330985) b!2043922))

(assert (= (and d!625562 (not c!330985)) b!2043925))

(assert (= (or b!2043922 b!2043925) bm!125290))

(assert (= (and d!625562 res!895611) b!2043923))

(assert (= (and b!2043923 res!895610) b!2043924))

(declare-fun m!2487997 () Bool)

(assert (=> bm!125290 m!2487997))

(declare-fun m!2487999 () Bool)

(assert (=> b!2043925 m!2487999))

(declare-fun m!2488001 () Bool)

(assert (=> b!2043924 m!2488001))

(declare-fun m!2488003 () Bool)

(assert (=> d!625562 m!2488003))

(declare-fun m!2488005 () Bool)

(assert (=> d!625562 m!2488005))

(assert (=> d!625562 m!2487947))

(assert (=> d!625562 m!2487791))

(assert (=> d!625562 m!2487805))

(declare-fun m!2488007 () Bool)

(assert (=> b!2043923 m!2488007))

(assert (=> b!2043785 d!625562))

(declare-fun b!2043926 () Bool)

(declare-fun e!1290951 () Bool)

(declare-fun lt!766503 () tuple2!21110)

(assert (=> b!2043926 (= e!1290951 (= (list!9185 (_2!12053 lt!766503)) (list!9185 (_2!12054 (v!27113 (_1!12055 lt!766428))))))))

(declare-fun d!625564 () Bool)

(declare-fun e!1290954 () Bool)

(assert (=> d!625564 e!1290954))

(declare-fun res!895613 () Bool)

(assert (=> d!625564 (=> (not res!895613) (not e!1290954))))

(assert (=> d!625564 (= res!895613 e!1290951)))

(declare-fun c!330987 () Bool)

(assert (=> d!625564 (= c!330987 (> (size!17527 (_1!12053 lt!766503)) 0))))

(declare-fun e!1290952 () tuple2!21110)

(assert (=> d!625564 (= lt!766503 e!1290952)))

(declare-fun c!330986 () Bool)

(declare-fun lt!766505 () Option!4698)

(assert (=> d!625564 (= c!330986 ((_ is Some!4697) lt!766505))))

(assert (=> d!625564 (= lt!766505 (maxPrefixZipperSequence!789 thiss!12889 rules!1563 (_2!12054 (v!27113 (_1!12055 lt!766428)))))))

(assert (=> d!625564 (= (lexRec!435 thiss!12889 rules!1563 (_2!12054 (v!27113 (_1!12055 lt!766428)))) lt!766503)))

(declare-fun b!2043927 () Bool)

(declare-fun e!1290953 () Bool)

(assert (=> b!2043927 (= e!1290951 e!1290953)))

(declare-fun res!895614 () Bool)

(assert (=> b!2043927 (= res!895614 (< (size!17528 (_2!12053 lt!766503)) (size!17528 (_2!12054 (v!27113 (_1!12055 lt!766428))))))))

(assert (=> b!2043927 (=> (not res!895614) (not e!1290953))))

(declare-fun b!2043928 () Bool)

(assert (=> b!2043928 (= e!1290953 (not (isEmpty!13973 (_1!12053 lt!766503))))))

(declare-fun b!2043929 () Bool)

(declare-fun res!895612 () Bool)

(assert (=> b!2043929 (=> (not res!895612) (not e!1290954))))

(assert (=> b!2043929 (= res!895612 (= (list!9184 (_1!12053 lt!766503)) (_1!12056 (lexList!989 thiss!12889 rules!1563 (list!9185 (_2!12054 (v!27113 (_1!12055 lt!766428))))))))))

(declare-fun b!2043930 () Bool)

(assert (=> b!2043930 (= e!1290952 (tuple2!21111 (BalanceConc!14785 Empty!7511) (_2!12054 (v!27113 (_1!12055 lt!766428)))))))

(declare-fun b!2043931 () Bool)

(declare-fun lt!766504 () tuple2!21110)

(assert (=> b!2043931 (= e!1290952 (tuple2!21111 (prepend!911 (_1!12053 lt!766504) (_1!12054 (v!27113 lt!766505))) (_2!12053 lt!766504)))))

(assert (=> b!2043931 (= lt!766504 (lexRec!435 thiss!12889 rules!1563 (_2!12054 (v!27113 lt!766505))))))

(declare-fun b!2043932 () Bool)

(assert (=> b!2043932 (= e!1290954 (= (list!9185 (_2!12053 lt!766503)) (_2!12056 (lexList!989 thiss!12889 rules!1563 (list!9185 (_2!12054 (v!27113 (_1!12055 lt!766428))))))))))

(assert (= (and d!625564 c!330986) b!2043931))

(assert (= (and d!625564 (not c!330986)) b!2043930))

(assert (= (and d!625564 c!330987) b!2043927))

(assert (= (and d!625564 (not c!330987)) b!2043926))

(assert (= (and b!2043927 res!895614) b!2043928))

(assert (= (and d!625564 res!895613) b!2043929))

(assert (= (and b!2043929 res!895612) b!2043932))

(declare-fun m!2488009 () Bool)

(assert (=> d!625564 m!2488009))

(declare-fun m!2488011 () Bool)

(assert (=> d!625564 m!2488011))

(declare-fun m!2488013 () Bool)

(assert (=> b!2043926 m!2488013))

(declare-fun m!2488015 () Bool)

(assert (=> b!2043926 m!2488015))

(declare-fun m!2488017 () Bool)

(assert (=> b!2043927 m!2488017))

(declare-fun m!2488019 () Bool)

(assert (=> b!2043927 m!2488019))

(declare-fun m!2488021 () Bool)

(assert (=> b!2043928 m!2488021))

(declare-fun m!2488023 () Bool)

(assert (=> b!2043931 m!2488023))

(declare-fun m!2488025 () Bool)

(assert (=> b!2043931 m!2488025))

(assert (=> b!2043932 m!2488013))

(assert (=> b!2043932 m!2488015))

(assert (=> b!2043932 m!2488015))

(declare-fun m!2488027 () Bool)

(assert (=> b!2043932 m!2488027))

(declare-fun m!2488029 () Bool)

(assert (=> b!2043929 m!2488029))

(assert (=> b!2043929 m!2488015))

(assert (=> b!2043929 m!2488015))

(assert (=> b!2043929 m!2488027))

(assert (=> b!2043785 d!625564))

(declare-fun d!625566 () Bool)

(assert (=> d!625566 (= (inv!29756 (tag!4507 (h!27814 rules!1563))) (= (mod (str.len (value!126137 (tag!4507 (h!27814 rules!1563)))) 2) 0))))

(assert (=> b!2043784 d!625566))

(declare-fun d!625568 () Bool)

(declare-fun res!895617 () Bool)

(declare-fun e!1290957 () Bool)

(assert (=> d!625568 (=> (not res!895617) (not e!1290957))))

(declare-fun semiInverseModEq!1617 (Int Int) Bool)

(assert (=> d!625568 (= res!895617 (semiInverseModEq!1617 (toChars!5559 (transformation!4017 (h!27814 rules!1563))) (toValue!5700 (transformation!4017 (h!27814 rules!1563)))))))

(assert (=> d!625568 (= (inv!29759 (transformation!4017 (h!27814 rules!1563))) e!1290957)))

(declare-fun b!2043935 () Bool)

(declare-fun equivClasses!1544 (Int Int) Bool)

(assert (=> b!2043935 (= e!1290957 (equivClasses!1544 (toChars!5559 (transformation!4017 (h!27814 rules!1563))) (toValue!5700 (transformation!4017 (h!27814 rules!1563)))))))

(assert (= (and d!625568 res!895617) b!2043935))

(declare-fun m!2488031 () Bool)

(assert (=> d!625568 m!2488031))

(declare-fun m!2488033 () Bool)

(assert (=> b!2043935 m!2488033))

(assert (=> b!2043784 d!625568))

(declare-fun setIsEmpty!11836 () Bool)

(declare-fun setRes!11836 () Bool)

(assert (=> setIsEmpty!11836 setRes!11836))

(declare-fun b!2043944 () Bool)

(declare-fun e!1290966 () Bool)

(declare-fun tp!607500 () Bool)

(assert (=> b!2043944 (= e!1290966 tp!607500)))

(declare-fun b!2043945 () Bool)

(declare-fun e!1290964 () Bool)

(declare-fun tp!607504 () Bool)

(assert (=> b!2043945 (= e!1290964 tp!607504)))

(declare-fun e!1290965 () Bool)

(assert (=> b!2043780 (= tp!607487 e!1290965)))

(declare-fun b!2043946 () Bool)

(declare-fun tp!607502 () Bool)

(declare-fun tp!607501 () Bool)

(declare-fun tp_is_empty!9297 () Bool)

(declare-fun inv!29769 (Context!2030) Bool)

(assert (=> b!2043946 (= e!1290965 (and tp!607501 (inv!29769 (_2!12051 (_1!12052 (h!27815 (zeroValue!2264 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575)))))))))) e!1290964 tp_is_empty!9297 setRes!11836 tp!607502))))

(declare-fun condSetEmpty!11836 () Bool)

(assert (=> b!2043946 (= condSetEmpty!11836 (= (_2!12052 (h!27815 (zeroValue!2264 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575)))))))) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun tp!607503 () Bool)

(declare-fun setNonEmpty!11836 () Bool)

(declare-fun setElem!11836 () Context!2030)

(assert (=> setNonEmpty!11836 (= setRes!11836 (and tp!607503 (inv!29769 setElem!11836) e!1290966))))

(declare-fun setRest!11836 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11836 (= (_2!12052 (h!27815 (zeroValue!2264 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11836 true) setRest!11836))))

(assert (= b!2043946 b!2043945))

(assert (= (and b!2043946 condSetEmpty!11836) setIsEmpty!11836))

(assert (= (and b!2043946 (not condSetEmpty!11836)) setNonEmpty!11836))

(assert (= setNonEmpty!11836 b!2043944))

(assert (= (and b!2043780 ((_ is Cons!22414) (zeroValue!2264 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575)))))))) b!2043946))

(declare-fun m!2488035 () Bool)

(assert (=> b!2043946 m!2488035))

(declare-fun m!2488037 () Bool)

(assert (=> setNonEmpty!11836 m!2488037))

(declare-fun setIsEmpty!11837 () Bool)

(declare-fun setRes!11837 () Bool)

(assert (=> setIsEmpty!11837 setRes!11837))

(declare-fun b!2043947 () Bool)

(declare-fun e!1290969 () Bool)

(declare-fun tp!607505 () Bool)

(assert (=> b!2043947 (= e!1290969 tp!607505)))

(declare-fun b!2043948 () Bool)

(declare-fun e!1290967 () Bool)

(declare-fun tp!607509 () Bool)

(assert (=> b!2043948 (= e!1290967 tp!607509)))

(declare-fun e!1290968 () Bool)

(assert (=> b!2043780 (= tp!607489 e!1290968)))

(declare-fun b!2043949 () Bool)

(declare-fun tp!607506 () Bool)

(declare-fun tp!607507 () Bool)

(assert (=> b!2043949 (= e!1290968 (and tp!607506 (inv!29769 (_2!12051 (_1!12052 (h!27815 (minValue!2264 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575)))))))))) e!1290967 tp_is_empty!9297 setRes!11837 tp!607507))))

(declare-fun condSetEmpty!11837 () Bool)

(assert (=> b!2043949 (= condSetEmpty!11837 (= (_2!12052 (h!27815 (minValue!2264 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575)))))))) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun tp!607508 () Bool)

(declare-fun setElem!11837 () Context!2030)

(declare-fun setNonEmpty!11837 () Bool)

(assert (=> setNonEmpty!11837 (= setRes!11837 (and tp!607508 (inv!29769 setElem!11837) e!1290969))))

(declare-fun setRest!11837 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11837 (= (_2!12052 (h!27815 (minValue!2264 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11837 true) setRest!11837))))

(assert (= b!2043949 b!2043948))

(assert (= (and b!2043949 condSetEmpty!11837) setIsEmpty!11837))

(assert (= (and b!2043949 (not condSetEmpty!11837)) setNonEmpty!11837))

(assert (= setNonEmpty!11837 b!2043947))

(assert (= (and b!2043780 ((_ is Cons!22414) (minValue!2264 (v!27111 (underlying!4207 (v!27112 (underlying!4208 (cache!2301 cacheDown!575)))))))) b!2043949))

(declare-fun m!2488039 () Bool)

(assert (=> b!2043949 m!2488039))

(declare-fun m!2488041 () Bool)

(assert (=> setNonEmpty!11837 m!2488041))

(declare-fun setIsEmpty!11838 () Bool)

(declare-fun setRes!11838 () Bool)

(assert (=> setIsEmpty!11838 setRes!11838))

(declare-fun b!2043950 () Bool)

(declare-fun e!1290972 () Bool)

(declare-fun tp!607510 () Bool)

(assert (=> b!2043950 (= e!1290972 tp!607510)))

(declare-fun b!2043951 () Bool)

(declare-fun e!1290970 () Bool)

(declare-fun tp!607514 () Bool)

(assert (=> b!2043951 (= e!1290970 tp!607514)))

(declare-fun e!1290971 () Bool)

(assert (=> b!2043782 (= tp!607472 e!1290971)))

(declare-fun tp!607512 () Bool)

(declare-fun b!2043952 () Bool)

(declare-fun tp!607511 () Bool)

(assert (=> b!2043952 (= e!1290971 (and tp!607511 (inv!29769 (_2!12051 (_1!12052 (h!27815 mapDefault!9252)))) e!1290970 tp_is_empty!9297 setRes!11838 tp!607512))))

(declare-fun condSetEmpty!11838 () Bool)

(assert (=> b!2043952 (= condSetEmpty!11838 (= (_2!12052 (h!27815 mapDefault!9252)) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun tp!607513 () Bool)

(declare-fun setNonEmpty!11838 () Bool)

(declare-fun setElem!11838 () Context!2030)

(assert (=> setNonEmpty!11838 (= setRes!11838 (and tp!607513 (inv!29769 setElem!11838) e!1290972))))

(declare-fun setRest!11838 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11838 (= (_2!12052 (h!27815 mapDefault!9252)) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11838 true) setRest!11838))))

(assert (= b!2043952 b!2043951))

(assert (= (and b!2043952 condSetEmpty!11838) setIsEmpty!11838))

(assert (= (and b!2043952 (not condSetEmpty!11838)) setNonEmpty!11838))

(assert (= setNonEmpty!11838 b!2043950))

(assert (= (and b!2043782 ((_ is Cons!22414) mapDefault!9252)) b!2043952))

(declare-fun m!2488043 () Bool)

(assert (=> b!2043952 m!2488043))

(declare-fun m!2488045 () Bool)

(assert (=> setNonEmpty!11838 m!2488045))

(declare-fun b!2043961 () Bool)

(declare-fun e!1290979 () Bool)

(declare-fun tp!607524 () Bool)

(assert (=> b!2043961 (= e!1290979 tp!607524)))

(declare-fun e!1290981 () Bool)

(assert (=> b!2043792 (= tp!607470 e!1290981)))

(declare-fun setRes!11841 () Bool)

(declare-fun tp!607523 () Bool)

(declare-fun b!2043962 () Bool)

(assert (=> b!2043962 (= e!1290981 (and (inv!29769 (_1!12049 (_1!12050 (h!27812 (zeroValue!2263 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562)))))))))) e!1290979 tp_is_empty!9297 setRes!11841 tp!607523))))

(declare-fun condSetEmpty!11841 () Bool)

(assert (=> b!2043962 (= condSetEmpty!11841 (= (_2!12050 (h!27812 (zeroValue!2263 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562)))))))) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun setIsEmpty!11841 () Bool)

(assert (=> setIsEmpty!11841 setRes!11841))

(declare-fun b!2043963 () Bool)

(declare-fun e!1290980 () Bool)

(declare-fun tp!607526 () Bool)

(assert (=> b!2043963 (= e!1290980 tp!607526)))

(declare-fun tp!607525 () Bool)

(declare-fun setElem!11841 () Context!2030)

(declare-fun setNonEmpty!11841 () Bool)

(assert (=> setNonEmpty!11841 (= setRes!11841 (and tp!607525 (inv!29769 setElem!11841) e!1290980))))

(declare-fun setRest!11841 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11841 (= (_2!12050 (h!27812 (zeroValue!2263 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11841 true) setRest!11841))))

(assert (= b!2043962 b!2043961))

(assert (= (and b!2043962 condSetEmpty!11841) setIsEmpty!11841))

(assert (= (and b!2043962 (not condSetEmpty!11841)) setNonEmpty!11841))

(assert (= setNonEmpty!11841 b!2043963))

(assert (= (and b!2043792 ((_ is Cons!22411) (zeroValue!2263 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562)))))))) b!2043962))

(declare-fun m!2488047 () Bool)

(assert (=> b!2043962 m!2488047))

(declare-fun m!2488049 () Bool)

(assert (=> setNonEmpty!11841 m!2488049))

(declare-fun b!2043964 () Bool)

(declare-fun e!1290982 () Bool)

(declare-fun tp!607528 () Bool)

(assert (=> b!2043964 (= e!1290982 tp!607528)))

(declare-fun e!1290984 () Bool)

(assert (=> b!2043792 (= tp!607485 e!1290984)))

(declare-fun setRes!11842 () Bool)

(declare-fun b!2043965 () Bool)

(declare-fun tp!607527 () Bool)

(assert (=> b!2043965 (= e!1290984 (and (inv!29769 (_1!12049 (_1!12050 (h!27812 (minValue!2263 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562)))))))))) e!1290982 tp_is_empty!9297 setRes!11842 tp!607527))))

(declare-fun condSetEmpty!11842 () Bool)

(assert (=> b!2043965 (= condSetEmpty!11842 (= (_2!12050 (h!27812 (minValue!2263 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562)))))))) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun setIsEmpty!11842 () Bool)

(assert (=> setIsEmpty!11842 setRes!11842))

(declare-fun b!2043966 () Bool)

(declare-fun e!1290983 () Bool)

(declare-fun tp!607530 () Bool)

(assert (=> b!2043966 (= e!1290983 tp!607530)))

(declare-fun tp!607529 () Bool)

(declare-fun setElem!11842 () Context!2030)

(declare-fun setNonEmpty!11842 () Bool)

(assert (=> setNonEmpty!11842 (= setRes!11842 (and tp!607529 (inv!29769 setElem!11842) e!1290983))))

(declare-fun setRest!11842 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11842 (= (_2!12050 (h!27812 (minValue!2263 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11842 true) setRest!11842))))

(assert (= b!2043965 b!2043964))

(assert (= (and b!2043965 condSetEmpty!11842) setIsEmpty!11842))

(assert (= (and b!2043965 (not condSetEmpty!11842)) setNonEmpty!11842))

(assert (= setNonEmpty!11842 b!2043966))

(assert (= (and b!2043792 ((_ is Cons!22411) (minValue!2263 (v!27109 (underlying!4205 (v!27110 (underlying!4206 (cache!2300 cacheUp!562)))))))) b!2043965))

(declare-fun m!2488051 () Bool)

(assert (=> b!2043965 m!2488051))

(declare-fun m!2488053 () Bool)

(assert (=> setNonEmpty!11842 m!2488053))

(declare-fun b!2043967 () Bool)

(declare-fun e!1290985 () Bool)

(declare-fun tp!607532 () Bool)

(assert (=> b!2043967 (= e!1290985 tp!607532)))

(declare-fun e!1290987 () Bool)

(assert (=> b!2043789 (= tp!607478 e!1290987)))

(declare-fun b!2043968 () Bool)

(declare-fun tp!607531 () Bool)

(declare-fun setRes!11843 () Bool)

(assert (=> b!2043968 (= e!1290987 (and (inv!29769 (_1!12049 (_1!12050 (h!27812 mapDefault!9253)))) e!1290985 tp_is_empty!9297 setRes!11843 tp!607531))))

(declare-fun condSetEmpty!11843 () Bool)

(assert (=> b!2043968 (= condSetEmpty!11843 (= (_2!12050 (h!27812 mapDefault!9253)) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun setIsEmpty!11843 () Bool)

(assert (=> setIsEmpty!11843 setRes!11843))

(declare-fun b!2043969 () Bool)

(declare-fun e!1290986 () Bool)

(declare-fun tp!607534 () Bool)

(assert (=> b!2043969 (= e!1290986 tp!607534)))

(declare-fun setElem!11843 () Context!2030)

(declare-fun setNonEmpty!11843 () Bool)

(declare-fun tp!607533 () Bool)

(assert (=> setNonEmpty!11843 (= setRes!11843 (and tp!607533 (inv!29769 setElem!11843) e!1290986))))

(declare-fun setRest!11843 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11843 (= (_2!12050 (h!27812 mapDefault!9253)) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11843 true) setRest!11843))))

(assert (= b!2043968 b!2043967))

(assert (= (and b!2043968 condSetEmpty!11843) setIsEmpty!11843))

(assert (= (and b!2043968 (not condSetEmpty!11843)) setNonEmpty!11843))

(assert (= setNonEmpty!11843 b!2043969))

(assert (= (and b!2043789 ((_ is Cons!22411) mapDefault!9253)) b!2043968))

(declare-fun m!2488055 () Bool)

(assert (=> b!2043968 m!2488055))

(declare-fun m!2488057 () Bool)

(assert (=> setNonEmpty!11843 m!2488057))

(declare-fun b!2043980 () Bool)

(declare-fun b_free!57097 () Bool)

(declare-fun b_next!57801 () Bool)

(assert (=> b!2043980 (= b_free!57097 (not b_next!57801))))

(declare-fun tp!607545 () Bool)

(declare-fun b_and!163037 () Bool)

(assert (=> b!2043980 (= tp!607545 b_and!163037)))

(declare-fun b_free!57099 () Bool)

(declare-fun b_next!57803 () Bool)

(assert (=> b!2043980 (= b_free!57099 (not b_next!57803))))

(declare-fun tp!607546 () Bool)

(declare-fun b_and!163039 () Bool)

(assert (=> b!2043980 (= tp!607546 b_and!163039)))

(declare-fun e!1290997 () Bool)

(assert (=> b!2043980 (= e!1290997 (and tp!607545 tp!607546))))

(declare-fun b!2043979 () Bool)

(declare-fun e!1290999 () Bool)

(declare-fun tp!607544 () Bool)

(assert (=> b!2043979 (= e!1290999 (and tp!607544 (inv!29756 (tag!4507 (h!27814 (t!191611 rules!1563)))) (inv!29759 (transformation!4017 (h!27814 (t!191611 rules!1563)))) e!1290997))))

(declare-fun b!2043978 () Bool)

(declare-fun e!1290996 () Bool)

(declare-fun tp!607543 () Bool)

(assert (=> b!2043978 (= e!1290996 (and e!1290999 tp!607543))))

(assert (=> b!2043798 (= tp!607484 e!1290996)))

(assert (= b!2043979 b!2043980))

(assert (= b!2043978 b!2043979))

(assert (= (and b!2043798 ((_ is Cons!22413) (t!191611 rules!1563))) b!2043978))

(declare-fun m!2488059 () Bool)

(assert (=> b!2043979 m!2488059))

(declare-fun m!2488061 () Bool)

(assert (=> b!2043979 m!2488061))

(declare-fun b!2043995 () Bool)

(declare-fun e!1291012 () Bool)

(declare-fun tp!607565 () Bool)

(assert (=> b!2043995 (= e!1291012 tp!607565)))

(declare-fun e!1291015 () Bool)

(declare-fun b!2043996 () Bool)

(declare-fun setRes!11849 () Bool)

(declare-fun mapValue!9256 () List!22495)

(declare-fun tp!607567 () Bool)

(assert (=> b!2043996 (= e!1291015 (and (inv!29769 (_1!12049 (_1!12050 (h!27812 mapValue!9256)))) e!1291012 tp_is_empty!9297 setRes!11849 tp!607567))))

(declare-fun condSetEmpty!11849 () Bool)

(assert (=> b!2043996 (= condSetEmpty!11849 (= (_2!12050 (h!27812 mapValue!9256)) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun tp!607568 () Bool)

(declare-fun setNonEmpty!11848 () Bool)

(declare-fun e!1291016 () Bool)

(declare-fun setElem!11849 () Context!2030)

(assert (=> setNonEmpty!11848 (= setRes!11849 (and tp!607568 (inv!29769 setElem!11849) e!1291016))))

(declare-fun setRest!11848 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11848 (= (_2!12050 (h!27812 mapValue!9256)) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11849 true) setRest!11848))))

(declare-fun b!2043997 () Bool)

(declare-fun e!1291014 () Bool)

(declare-fun tp!607571 () Bool)

(assert (=> b!2043997 (= e!1291014 tp!607571)))

(declare-fun b!2043998 () Bool)

(declare-fun tp!607566 () Bool)

(assert (=> b!2043998 (= e!1291016 tp!607566)))

(declare-fun e!1291013 () Bool)

(declare-fun tp!607572 () Bool)

(declare-fun b!2043999 () Bool)

(declare-fun mapDefault!9256 () List!22495)

(declare-fun setRes!11848 () Bool)

(assert (=> b!2043999 (= e!1291013 (and (inv!29769 (_1!12049 (_1!12050 (h!27812 mapDefault!9256)))) e!1291014 tp_is_empty!9297 setRes!11848 tp!607572))))

(declare-fun condSetEmpty!11848 () Bool)

(assert (=> b!2043999 (= condSetEmpty!11848 (= (_2!12050 (h!27812 mapDefault!9256)) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun b!2044000 () Bool)

(declare-fun e!1291017 () Bool)

(declare-fun tp!607569 () Bool)

(assert (=> b!2044000 (= e!1291017 tp!607569)))

(declare-fun setIsEmpty!11848 () Bool)

(assert (=> setIsEmpty!11848 setRes!11849))

(declare-fun setIsEmpty!11849 () Bool)

(assert (=> setIsEmpty!11849 setRes!11848))

(declare-fun mapNonEmpty!9256 () Bool)

(declare-fun mapRes!9256 () Bool)

(declare-fun tp!607573 () Bool)

(assert (=> mapNonEmpty!9256 (= mapRes!9256 (and tp!607573 e!1291015))))

(declare-fun mapKey!9256 () (_ BitVec 32))

(declare-fun mapRest!9256 () (Array (_ BitVec 32) List!22495))

(assert (=> mapNonEmpty!9256 (= mapRest!9253 (store mapRest!9256 mapKey!9256 mapValue!9256))))

(declare-fun mapIsEmpty!9256 () Bool)

(assert (=> mapIsEmpty!9256 mapRes!9256))

(declare-fun setNonEmpty!11849 () Bool)

(declare-fun setElem!11848 () Context!2030)

(declare-fun tp!607570 () Bool)

(assert (=> setNonEmpty!11849 (= setRes!11848 (and tp!607570 (inv!29769 setElem!11848) e!1291017))))

(declare-fun setRest!11849 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11849 (= (_2!12050 (h!27812 mapDefault!9256)) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11848 true) setRest!11849))))

(declare-fun condMapEmpty!9256 () Bool)

(assert (=> mapNonEmpty!9252 (= condMapEmpty!9256 (= mapRest!9253 ((as const (Array (_ BitVec 32) List!22495)) mapDefault!9256)))))

(assert (=> mapNonEmpty!9252 (= tp!607473 (and e!1291013 mapRes!9256))))

(assert (= (and mapNonEmpty!9252 condMapEmpty!9256) mapIsEmpty!9256))

(assert (= (and mapNonEmpty!9252 (not condMapEmpty!9256)) mapNonEmpty!9256))

(assert (= b!2043996 b!2043995))

(assert (= (and b!2043996 condSetEmpty!11849) setIsEmpty!11848))

(assert (= (and b!2043996 (not condSetEmpty!11849)) setNonEmpty!11848))

(assert (= setNonEmpty!11848 b!2043998))

(assert (= (and mapNonEmpty!9256 ((_ is Cons!22411) mapValue!9256)) b!2043996))

(assert (= b!2043999 b!2043997))

(assert (= (and b!2043999 condSetEmpty!11848) setIsEmpty!11849))

(assert (= (and b!2043999 (not condSetEmpty!11848)) setNonEmpty!11849))

(assert (= setNonEmpty!11849 b!2044000))

(assert (= (and mapNonEmpty!9252 ((_ is Cons!22411) mapDefault!9256)) b!2043999))

(declare-fun m!2488063 () Bool)

(assert (=> setNonEmpty!11849 m!2488063))

(declare-fun m!2488065 () Bool)

(assert (=> b!2043999 m!2488065))

(declare-fun m!2488067 () Bool)

(assert (=> mapNonEmpty!9256 m!2488067))

(declare-fun m!2488069 () Bool)

(assert (=> b!2043996 m!2488069))

(declare-fun m!2488071 () Bool)

(assert (=> setNonEmpty!11848 m!2488071))

(declare-fun b!2044001 () Bool)

(declare-fun e!1291018 () Bool)

(declare-fun tp!607575 () Bool)

(assert (=> b!2044001 (= e!1291018 tp!607575)))

(declare-fun e!1291020 () Bool)

(assert (=> mapNonEmpty!9252 (= tp!607479 e!1291020)))

(declare-fun setRes!11850 () Bool)

(declare-fun b!2044002 () Bool)

(declare-fun tp!607574 () Bool)

(assert (=> b!2044002 (= e!1291020 (and (inv!29769 (_1!12049 (_1!12050 (h!27812 mapValue!9253)))) e!1291018 tp_is_empty!9297 setRes!11850 tp!607574))))

(declare-fun condSetEmpty!11850 () Bool)

(assert (=> b!2044002 (= condSetEmpty!11850 (= (_2!12050 (h!27812 mapValue!9253)) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun setIsEmpty!11850 () Bool)

(assert (=> setIsEmpty!11850 setRes!11850))

(declare-fun b!2044003 () Bool)

(declare-fun e!1291019 () Bool)

(declare-fun tp!607577 () Bool)

(assert (=> b!2044003 (= e!1291019 tp!607577)))

(declare-fun setElem!11850 () Context!2030)

(declare-fun tp!607576 () Bool)

(declare-fun setNonEmpty!11850 () Bool)

(assert (=> setNonEmpty!11850 (= setRes!11850 (and tp!607576 (inv!29769 setElem!11850) e!1291019))))

(declare-fun setRest!11850 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11850 (= (_2!12050 (h!27812 mapValue!9253)) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11850 true) setRest!11850))))

(assert (= b!2044002 b!2044001))

(assert (= (and b!2044002 condSetEmpty!11850) setIsEmpty!11850))

(assert (= (and b!2044002 (not condSetEmpty!11850)) setNonEmpty!11850))

(assert (= setNonEmpty!11850 b!2044003))

(assert (= (and mapNonEmpty!9252 ((_ is Cons!22411) mapValue!9253)) b!2044002))

(declare-fun m!2488073 () Bool)

(assert (=> b!2044002 m!2488073))

(declare-fun m!2488075 () Bool)

(assert (=> setNonEmpty!11850 m!2488075))

(declare-fun tp!607586 () Bool)

(declare-fun tp!607584 () Bool)

(declare-fun e!1291025 () Bool)

(declare-fun b!2044012 () Bool)

(assert (=> b!2044012 (= e!1291025 (and (inv!29758 (left!17801 (c!330954 input!986))) tp!607586 (inv!29758 (right!18131 (c!330954 input!986))) tp!607584))))

(declare-fun b!2044014 () Bool)

(declare-fun e!1291026 () Bool)

(declare-fun tp!607585 () Bool)

(assert (=> b!2044014 (= e!1291026 tp!607585)))

(declare-fun b!2044013 () Bool)

(declare-fun inv!29770 (IArray!15025) Bool)

(assert (=> b!2044013 (= e!1291025 (and (inv!29770 (xs!10418 (c!330954 input!986))) e!1291026))))

(assert (=> b!2043786 (= tp!607483 (and (inv!29758 (c!330954 input!986)) e!1291025))))

(assert (= (and b!2043786 ((_ is Node!7510) (c!330954 input!986))) b!2044012))

(assert (= b!2044013 b!2044014))

(assert (= (and b!2043786 ((_ is Leaf!11000) (c!330954 input!986))) b!2044013))

(declare-fun m!2488077 () Bool)

(assert (=> b!2044012 m!2488077))

(declare-fun m!2488079 () Bool)

(assert (=> b!2044012 m!2488079))

(declare-fun m!2488081 () Bool)

(assert (=> b!2044013 m!2488081))

(assert (=> b!2043786 m!2487729))

(declare-fun b!2044015 () Bool)

(declare-fun tp!607589 () Bool)

(declare-fun e!1291027 () Bool)

(declare-fun tp!607587 () Bool)

(assert (=> b!2044015 (= e!1291027 (and (inv!29758 (left!17801 (c!330954 totalInput!418))) tp!607589 (inv!29758 (right!18131 (c!330954 totalInput!418))) tp!607587))))

(declare-fun b!2044017 () Bool)

(declare-fun e!1291028 () Bool)

(declare-fun tp!607588 () Bool)

(assert (=> b!2044017 (= e!1291028 tp!607588)))

(declare-fun b!2044016 () Bool)

(assert (=> b!2044016 (= e!1291027 (and (inv!29770 (xs!10418 (c!330954 totalInput!418))) e!1291028))))

(assert (=> b!2043797 (= tp!607468 (and (inv!29758 (c!330954 totalInput!418)) e!1291027))))

(assert (= (and b!2043797 ((_ is Node!7510) (c!330954 totalInput!418))) b!2044015))

(assert (= b!2044016 b!2044017))

(assert (= (and b!2043797 ((_ is Leaf!11000) (c!330954 totalInput!418))) b!2044016))

(declare-fun m!2488083 () Bool)

(assert (=> b!2044015 m!2488083))

(declare-fun m!2488085 () Bool)

(assert (=> b!2044015 m!2488085))

(declare-fun m!2488087 () Bool)

(assert (=> b!2044016 m!2488087))

(assert (=> b!2043797 m!2487817))

(declare-fun b!2044026 () Bool)

(declare-fun tp!607596 () Bool)

(declare-fun e!1291033 () Bool)

(declare-fun tp!607597 () Bool)

(assert (=> b!2044026 (= e!1291033 (and (inv!29760 (left!17802 (c!330956 acc!382))) tp!607596 (inv!29760 (right!18132 (c!330956 acc!382))) tp!607597))))

(declare-fun b!2044028 () Bool)

(declare-fun e!1291034 () Bool)

(declare-fun tp!607598 () Bool)

(assert (=> b!2044028 (= e!1291034 tp!607598)))

(declare-fun b!2044027 () Bool)

(declare-fun inv!29771 (IArray!15027) Bool)

(assert (=> b!2044027 (= e!1291033 (and (inv!29771 (xs!10419 (c!330956 acc!382))) e!1291034))))

(assert (=> b!2043793 (= tp!607471 (and (inv!29760 (c!330956 acc!382)) e!1291033))))

(assert (= (and b!2043793 ((_ is Node!7511) (c!330956 acc!382))) b!2044026))

(assert (= b!2044027 b!2044028))

(assert (= (and b!2043793 ((_ is Leaf!11001) (c!330956 acc!382))) b!2044027))

(declare-fun m!2488089 () Bool)

(assert (=> b!2044026 m!2488089))

(declare-fun m!2488091 () Bool)

(assert (=> b!2044026 m!2488091))

(declare-fun m!2488093 () Bool)

(assert (=> b!2044027 m!2488093))

(assert (=> b!2043793 m!2487763))

(declare-fun condMapEmpty!9259 () Bool)

(declare-fun mapDefault!9259 () List!22498)

(assert (=> mapNonEmpty!9253 (= condMapEmpty!9259 (= mapRest!9252 ((as const (Array (_ BitVec 32) List!22498)) mapDefault!9259)))))

(declare-fun e!1291052 () Bool)

(declare-fun mapRes!9259 () Bool)

(assert (=> mapNonEmpty!9253 (= tp!607477 (and e!1291052 mapRes!9259))))

(declare-fun setIsEmpty!11855 () Bool)

(declare-fun setRes!11855 () Bool)

(assert (=> setIsEmpty!11855 setRes!11855))

(declare-fun tp!607625 () Bool)

(declare-fun e!1291050 () Bool)

(declare-fun tp!607624 () Bool)

(declare-fun setRes!11856 () Bool)

(declare-fun b!2044043 () Bool)

(assert (=> b!2044043 (= e!1291052 (and tp!607625 (inv!29769 (_2!12051 (_1!12052 (h!27815 mapDefault!9259)))) e!1291050 tp_is_empty!9297 setRes!11856 tp!607624))))

(declare-fun condSetEmpty!11856 () Bool)

(assert (=> b!2044043 (= condSetEmpty!11856 (= (_2!12052 (h!27815 mapDefault!9259)) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun b!2044044 () Bool)

(declare-fun e!1291051 () Bool)

(declare-fun tp!607621 () Bool)

(assert (=> b!2044044 (= e!1291051 tp!607621)))

(declare-fun b!2044045 () Bool)

(declare-fun e!1291049 () Bool)

(declare-fun tp!607627 () Bool)

(assert (=> b!2044045 (= e!1291049 tp!607627)))

(declare-fun b!2044046 () Bool)

(declare-fun tp!607631 () Bool)

(assert (=> b!2044046 (= e!1291050 tp!607631)))

(declare-fun setElem!11856 () Context!2030)

(declare-fun tp!607622 () Bool)

(declare-fun setNonEmpty!11855 () Bool)

(assert (=> setNonEmpty!11855 (= setRes!11855 (and tp!607622 (inv!29769 setElem!11856) e!1291049))))

(declare-fun mapValue!9259 () List!22498)

(declare-fun setRest!11855 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11855 (= (_2!12052 (h!27815 mapValue!9259)) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11856 true) setRest!11855))))

(declare-fun setIsEmpty!11856 () Bool)

(assert (=> setIsEmpty!11856 setRes!11856))

(declare-fun tp!607626 () Bool)

(declare-fun e!1291048 () Bool)

(declare-fun b!2044047 () Bool)

(declare-fun e!1291047 () Bool)

(declare-fun tp!607623 () Bool)

(assert (=> b!2044047 (= e!1291048 (and tp!607623 (inv!29769 (_2!12051 (_1!12052 (h!27815 mapValue!9259)))) e!1291047 tp_is_empty!9297 setRes!11855 tp!607626))))

(declare-fun condSetEmpty!11855 () Bool)

(assert (=> b!2044047 (= condSetEmpty!11855 (= (_2!12052 (h!27815 mapValue!9259)) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun mapIsEmpty!9259 () Bool)

(assert (=> mapIsEmpty!9259 mapRes!9259))

(declare-fun mapNonEmpty!9259 () Bool)

(declare-fun tp!607630 () Bool)

(assert (=> mapNonEmpty!9259 (= mapRes!9259 (and tp!607630 e!1291048))))

(declare-fun mapKey!9259 () (_ BitVec 32))

(declare-fun mapRest!9259 () (Array (_ BitVec 32) List!22498))

(assert (=> mapNonEmpty!9259 (= mapRest!9252 (store mapRest!9259 mapKey!9259 mapValue!9259))))

(declare-fun b!2044048 () Bool)

(declare-fun tp!607628 () Bool)

(assert (=> b!2044048 (= e!1291047 tp!607628)))

(declare-fun setNonEmpty!11856 () Bool)

(declare-fun setElem!11855 () Context!2030)

(declare-fun tp!607629 () Bool)

(assert (=> setNonEmpty!11856 (= setRes!11856 (and tp!607629 (inv!29769 setElem!11855) e!1291051))))

(declare-fun setRest!11856 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11856 (= (_2!12052 (h!27815 mapDefault!9259)) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11855 true) setRest!11856))))

(assert (= (and mapNonEmpty!9253 condMapEmpty!9259) mapIsEmpty!9259))

(assert (= (and mapNonEmpty!9253 (not condMapEmpty!9259)) mapNonEmpty!9259))

(assert (= b!2044047 b!2044048))

(assert (= (and b!2044047 condSetEmpty!11855) setIsEmpty!11855))

(assert (= (and b!2044047 (not condSetEmpty!11855)) setNonEmpty!11855))

(assert (= setNonEmpty!11855 b!2044045))

(assert (= (and mapNonEmpty!9259 ((_ is Cons!22414) mapValue!9259)) b!2044047))

(assert (= b!2044043 b!2044046))

(assert (= (and b!2044043 condSetEmpty!11856) setIsEmpty!11856))

(assert (= (and b!2044043 (not condSetEmpty!11856)) setNonEmpty!11856))

(assert (= setNonEmpty!11856 b!2044044))

(assert (= (and mapNonEmpty!9253 ((_ is Cons!22414) mapDefault!9259)) b!2044043))

(declare-fun m!2488095 () Bool)

(assert (=> b!2044047 m!2488095))

(declare-fun m!2488097 () Bool)

(assert (=> setNonEmpty!11856 m!2488097))

(declare-fun m!2488099 () Bool)

(assert (=> mapNonEmpty!9259 m!2488099))

(declare-fun m!2488101 () Bool)

(assert (=> b!2044043 m!2488101))

(declare-fun m!2488103 () Bool)

(assert (=> setNonEmpty!11855 m!2488103))

(declare-fun setIsEmpty!11857 () Bool)

(declare-fun setRes!11857 () Bool)

(assert (=> setIsEmpty!11857 setRes!11857))

(declare-fun b!2044049 () Bool)

(declare-fun e!1291055 () Bool)

(declare-fun tp!607632 () Bool)

(assert (=> b!2044049 (= e!1291055 tp!607632)))

(declare-fun b!2044050 () Bool)

(declare-fun e!1291053 () Bool)

(declare-fun tp!607636 () Bool)

(assert (=> b!2044050 (= e!1291053 tp!607636)))

(declare-fun e!1291054 () Bool)

(assert (=> mapNonEmpty!9253 (= tp!607481 e!1291054)))

(declare-fun b!2044051 () Bool)

(declare-fun tp!607633 () Bool)

(declare-fun tp!607634 () Bool)

(assert (=> b!2044051 (= e!1291054 (and tp!607633 (inv!29769 (_2!12051 (_1!12052 (h!27815 mapValue!9252)))) e!1291053 tp_is_empty!9297 setRes!11857 tp!607634))))

(declare-fun condSetEmpty!11857 () Bool)

(assert (=> b!2044051 (= condSetEmpty!11857 (= (_2!12052 (h!27815 mapValue!9252)) ((as const (Array Context!2030 Bool)) false)))))

(declare-fun setNonEmpty!11857 () Bool)

(declare-fun setElem!11857 () Context!2030)

(declare-fun tp!607635 () Bool)

(assert (=> setNonEmpty!11857 (= setRes!11857 (and tp!607635 (inv!29769 setElem!11857) e!1291055))))

(declare-fun setRest!11857 () (InoxSet Context!2030))

(assert (=> setNonEmpty!11857 (= (_2!12052 (h!27815 mapValue!9252)) ((_ map or) (store ((as const (Array Context!2030 Bool)) false) setElem!11857 true) setRest!11857))))

(assert (= b!2044051 b!2044050))

(assert (= (and b!2044051 condSetEmpty!11857) setIsEmpty!11857))

(assert (= (and b!2044051 (not condSetEmpty!11857)) setNonEmpty!11857))

(assert (= setNonEmpty!11857 b!2044049))

(assert (= (and mapNonEmpty!9253 ((_ is Cons!22414) mapValue!9252)) b!2044051))

(declare-fun m!2488105 () Bool)

(assert (=> b!2044051 m!2488105))

(declare-fun m!2488107 () Bool)

(assert (=> setNonEmpty!11857 m!2488107))

(declare-fun tp!607639 () Bool)

(declare-fun b!2044052 () Bool)

(declare-fun e!1291056 () Bool)

(declare-fun tp!607637 () Bool)

(assert (=> b!2044052 (= e!1291056 (and (inv!29758 (left!17801 (c!330954 treated!60))) tp!607639 (inv!29758 (right!18131 (c!330954 treated!60))) tp!607637))))

(declare-fun b!2044054 () Bool)

(declare-fun e!1291057 () Bool)

(declare-fun tp!607638 () Bool)

(assert (=> b!2044054 (= e!1291057 tp!607638)))

(declare-fun b!2044053 () Bool)

(assert (=> b!2044053 (= e!1291056 (and (inv!29770 (xs!10418 (c!330954 treated!60))) e!1291057))))

(assert (=> b!2043773 (= tp!607480 (and (inv!29758 (c!330954 treated!60)) e!1291056))))

(assert (= (and b!2043773 ((_ is Node!7510) (c!330954 treated!60))) b!2044052))

(assert (= b!2044053 b!2044054))

(assert (= (and b!2043773 ((_ is Leaf!11000) (c!330954 treated!60))) b!2044053))

(declare-fun m!2488109 () Bool)

(assert (=> b!2044052 m!2488109))

(declare-fun m!2488111 () Bool)

(assert (=> b!2044052 m!2488111))

(declare-fun m!2488113 () Bool)

(assert (=> b!2044053 m!2488113))

(assert (=> b!2043773 m!2487741))

(declare-fun b!2044067 () Bool)

(declare-fun e!1291060 () Bool)

(declare-fun tp!607654 () Bool)

(assert (=> b!2044067 (= e!1291060 tp!607654)))

(declare-fun b!2044068 () Bool)

(declare-fun tp!607650 () Bool)

(declare-fun tp!607653 () Bool)

(assert (=> b!2044068 (= e!1291060 (and tp!607650 tp!607653))))

(declare-fun b!2044066 () Bool)

(declare-fun tp!607652 () Bool)

(declare-fun tp!607651 () Bool)

(assert (=> b!2044066 (= e!1291060 (and tp!607652 tp!607651))))

(declare-fun b!2044065 () Bool)

(assert (=> b!2044065 (= e!1291060 tp_is_empty!9297)))

(assert (=> b!2043784 (= tp!607474 e!1291060)))

(assert (= (and b!2043784 ((_ is ElementMatch!5445) (regex!4017 (h!27814 rules!1563)))) b!2044065))

(assert (= (and b!2043784 ((_ is Concat!9598) (regex!4017 (h!27814 rules!1563)))) b!2044066))

(assert (= (and b!2043784 ((_ is Star!5445) (regex!4017 (h!27814 rules!1563)))) b!2044067))

(assert (= (and b!2043784 ((_ is Union!5445) (regex!4017 (h!27814 rules!1563)))) b!2044068))

(check-sat (not b!2044068) (not b!2043814) (not b!2043896) (not b!2043923) (not b!2043858) (not d!625508) (not b!2043931) (not b!2043841) (not b!2043946) (not b!2043996) (not d!625564) (not b!2043962) b_and!163033 (not setNonEmpty!11850) (not b_next!57799) (not d!625506) (not setNonEmpty!11855) (not b!2043866) (not mapNonEmpty!9256) (not b!2043928) (not d!625526) (not d!625540) (not b!2043797) (not b!2043969) (not b!2043844) (not d!625560) (not b_next!57803) (not b!2044049) (not b!2043950) (not b_next!57793) (not b!2043964) (not b!2043968) (not b!2043978) (not b!2044045) (not d!625568) (not b!2044002) (not b!2043851) (not b!2043884) (not b!2043793) (not b!2044054) b_and!163031 (not d!625488) (not b!2043924) (not b!2044067) (not b!2043898) (not b!2043948) (not d!625556) (not b!2043860) (not b!2043862) b_and!163039 (not b!2043888) (not d!625558) (not b!2043998) (not b!2043871) (not b!2043999) (not b!2043945) (not setNonEmpty!11836) (not b!2044000) (not d!625548) (not b!2043861) (not b!2043832) (not b!2044046) (not b!2043816) (not b!2043927) (not b!2043935) (not b!2043834) (not b!2043864) (not d!625492) (not b!2043952) (not b!2043899) (not d!625516) (not b!2043863) (not b_next!57789) (not b!2043967) (not d!625486) (not d!625528) (not setNonEmpty!11856) b_and!163025 (not d!625530) b_and!163037 tp_is_empty!9297 (not b!2043815) (not b!2043840) (not d!625484) (not b!2043951) (not b!2043867) (not b!2043918) (not d!625490) (not b!2044050) (not b!2043965) (not setNonEmpty!11848) (not d!625536) (not b!2044003) (not b!2043929) (not b!2044001) b_and!163035 (not b!2043817) b_and!163029 (not b!2044026) (not b!2044012) (not b!2043966) (not b!2044043) (not b!2044027) (not b!2044066) (not b!2044047) (not setNonEmpty!11849) (not b!2043833) (not b!2044013) (not b!2043773) (not b!2043963) (not bm!125290) (not d!625552) (not b!2043873) (not b!2043911) (not b!2044028) (not b!2044044) (not b!2043838) (not b!2043839) (not b!2043997) (not b!2044052) (not b!2043837) b_and!163027 (not b!2043835) (not b!2043947) (not mapNonEmpty!9259) (not d!625498) (not b!2044014) (not b!2043901) (not d!625542) (not b_next!57801) (not b!2044048) (not b!2043961) (not setNonEmpty!11857) (not b!2043870) (not b!2043932) (not b!2043949) (not b_next!57795) (not d!625522) (not setNonEmpty!11843) (not b!2043883) (not b!2043944) (not b!2043885) (not setNonEmpty!11838) (not b!2043845) (not b!2044015) (not setNonEmpty!11842) (not b!2043912) (not b!2044017) (not b!2043925) (not b!2043919) (not setNonEmpty!11841) (not b!2043979) (not b_next!57797) (not b!2043786) (not b!2043995) (not b!2043848) (not setNonEmpty!11837) (not bm!125289) (not d!625538) (not b!2043889) (not d!625502) (not b!2043926) (not d!625514) (not b!2044016) (not d!625554) (not d!625550) (not d!625562) (not b!2044051) (not b!2043842) (not d!625524) (not b_next!57791) (not b!2044053))
(check-sat (not b_next!57803) (not b_next!57793) (not b_next!57789) b_and!163027 (not b_next!57801) (not b_next!57795) (not b_next!57797) (not b_next!57791) b_and!163033 (not b_next!57799) b_and!163039 b_and!163031 b_and!163025 b_and!163037 b_and!163035 b_and!163029)
