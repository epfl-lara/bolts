; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205630 () Bool)

(assert start!205630)

(declare-fun b!2102853 () Bool)

(declare-fun b_free!60181 () Bool)

(declare-fun b_next!60885 () Bool)

(assert (=> b!2102853 (= b_free!60181 (not b_next!60885))))

(declare-fun tp!636125 () Bool)

(declare-fun b_and!169743 () Bool)

(assert (=> b!2102853 (= tp!636125 b_and!169743)))

(declare-fun b_free!60183 () Bool)

(declare-fun b_next!60887 () Bool)

(assert (=> b!2102853 (= b_free!60183 (not b_next!60887))))

(declare-fun tp!636118 () Bool)

(declare-fun b_and!169745 () Bool)

(assert (=> b!2102853 (= tp!636118 b_and!169745)))

(declare-fun b!2102863 () Bool)

(declare-fun b_free!60185 () Bool)

(declare-fun b_next!60889 () Bool)

(assert (=> b!2102863 (= b_free!60185 (not b_next!60889))))

(declare-fun tp!636130 () Bool)

(declare-fun b_and!169747 () Bool)

(assert (=> b!2102863 (= tp!636130 b_and!169747)))

(declare-fun b!2102848 () Bool)

(declare-fun b_free!60187 () Bool)

(declare-fun b_next!60891 () Bool)

(assert (=> b!2102848 (= b_free!60187 (not b_next!60891))))

(declare-fun tp!636126 () Bool)

(declare-fun b_and!169749 () Bool)

(assert (=> b!2102848 (= tp!636126 b_and!169749)))

(declare-fun b!2102858 () Bool)

(declare-fun b_free!60189 () Bool)

(declare-fun b_next!60893 () Bool)

(assert (=> b!2102858 (= b_free!60189 (not b_next!60893))))

(declare-fun tp!636119 () Bool)

(declare-fun b_and!169751 () Bool)

(assert (=> b!2102858 (= tp!636119 b_and!169751)))

(declare-fun b!2102852 () Bool)

(declare-fun b_free!60191 () Bool)

(declare-fun b_next!60895 () Bool)

(assert (=> b!2102852 (= b_free!60191 (not b_next!60895))))

(declare-fun tp!636128 () Bool)

(declare-fun b_and!169753 () Bool)

(assert (=> b!2102852 (= tp!636128 b_and!169753)))

(declare-fun b!2102834 () Bool)

(declare-fun res!914743 () Bool)

(declare-fun e!1335599 () Bool)

(assert (=> b!2102834 (=> (not res!914743) (not e!1335599))))

(declare-datatypes ((C!11232 0))(
  ( (C!11233 (val!6602 Int)) )
))
(declare-datatypes ((Regex!5543 0))(
  ( (ElementMatch!5543 (c!338771 C!11232)) (Concat!9794 (regOne!11598 Regex!5543) (regTwo!11598 Regex!5543)) (EmptyExpr!5543) (Star!5543 (reg!5872 Regex!5543)) (EmptyLang!5543) (Union!5543 (regOne!11599 Regex!5543) (regTwo!11599 Regex!5543)) )
))
(declare-datatypes ((List!23187 0))(
  ( (Nil!23103) (Cons!23103 (h!28504 Regex!5543) (t!195680 List!23187)) )
))
(declare-datatypes ((Context!2226 0))(
  ( (Context!2227 (exprs!1613 List!23187)) )
))
(declare-datatypes ((Hashable!2112 0))(
  ( (HashableExt!2111 (__x!14673 Int)) )
))
(declare-datatypes ((tuple3!2502 0))(
  ( (tuple3!2503 (_1!12886 Regex!5543) (_2!12886 Context!2226) (_3!1715 C!11232)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22342 0))(
  ( (tuple2!22343 (_1!12887 tuple3!2502) (_2!12887 (InoxSet Context!2226))) )
))
(declare-datatypes ((List!23188 0))(
  ( (Nil!23104) (Cons!23104 (h!28505 tuple2!22342) (t!195681 List!23188)) )
))
(declare-datatypes ((array!7584 0))(
  ( (array!7585 (arr!3362 (Array (_ BitVec 32) (_ BitVec 64))) (size!18052 (_ BitVec 32))) )
))
(declare-datatypes ((array!7586 0))(
  ( (array!7587 (arr!3363 (Array (_ BitVec 32) List!23188)) (size!18053 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4396 0))(
  ( (LongMapFixedSize!4397 (defaultEntry!2563 Int) (mask!6285 (_ BitVec 32)) (extraKeys!2446 (_ BitVec 32)) (zeroValue!2456 List!23188) (minValue!2456 List!23188) (_size!4447 (_ BitVec 32)) (_keys!2495 array!7584) (_values!2478 array!7586) (_vacant!2259 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8617 0))(
  ( (Cell!8618 (v!27702 LongMapFixedSize!4396)) )
))
(declare-datatypes ((MutLongMap!2198 0))(
  ( (LongMap!2198 (underlying!4591 Cell!8617)) (MutLongMapExt!2197 (__x!14674 Int)) )
))
(declare-datatypes ((Cell!8619 0))(
  ( (Cell!8620 (v!27703 MutLongMap!2198)) )
))
(declare-datatypes ((MutableMap!2112 0))(
  ( (MutableMapExt!2111 (__x!14675 Int)) (HashMap!2112 (underlying!4592 Cell!8619) (hashF!4035 Hashable!2112) (_size!4448 (_ BitVec 32)) (defaultValue!2274 Int)) )
))
(declare-datatypes ((CacheDown!1412 0))(
  ( (CacheDown!1413 (cache!2493 MutableMap!2112)) )
))
(declare-fun cacheDown!575 () CacheDown!1412)

(declare-fun valid!1746 (CacheDown!1412) Bool)

(assert (=> b!2102834 (= res!914743 (valid!1746 cacheDown!575))))

(declare-fun b!2102835 () Bool)

(declare-fun e!1335608 () Bool)

(declare-fun e!1335610 () Bool)

(assert (=> b!2102835 (= e!1335608 e!1335610)))

(declare-fun b!2102836 () Bool)

(declare-fun e!1335586 () Bool)

(declare-fun e!1335607 () Bool)

(assert (=> b!2102836 (= e!1335586 e!1335607)))

(declare-fun b!2102837 () Bool)

(declare-fun e!1335590 () Bool)

(declare-fun e!1335595 () Bool)

(assert (=> b!2102837 (= e!1335590 e!1335595)))

(declare-fun res!914753 () Bool)

(assert (=> b!2102837 (=> res!914753 e!1335595)))

(declare-datatypes ((List!23189 0))(
  ( (Nil!23105) (Cons!23105 (h!28506 (_ BitVec 16)) (t!195682 List!23189)) )
))
(declare-datatypes ((TokenValue!4251 0))(
  ( (FloatLiteralValue!8502 (text!30202 List!23189)) (TokenValueExt!4250 (__x!14676 Int)) (Broken!21255 (value!128904 List!23189)) (Object!4334) (End!4251) (Def!4251) (Underscore!4251) (Match!4251) (Else!4251) (Error!4251) (Case!4251) (If!4251) (Extends!4251) (Abstract!4251) (Class!4251) (Val!4251) (DelimiterValue!8502 (del!4311 List!23189)) (KeywordValue!4257 (value!128905 List!23189)) (CommentValue!8502 (value!128906 List!23189)) (WhitespaceValue!8502 (value!128907 List!23189)) (IndentationValue!4251 (value!128908 List!23189)) (String!26446) (Int32!4251) (Broken!21256 (value!128909 List!23189)) (Boolean!4252) (Unit!37401) (OperatorValue!4254 (op!4311 List!23189)) (IdentifierValue!8502 (value!128910 List!23189)) (IdentifierValue!8503 (value!128911 List!23189)) (WhitespaceValue!8503 (value!128912 List!23189)) (True!8502) (False!8502) (Broken!21257 (value!128913 List!23189)) (Broken!21258 (value!128914 List!23189)) (True!8503) (RightBrace!4251) (RightBracket!4251) (Colon!4251) (Null!4251) (Comma!4251) (LeftBracket!4251) (False!8503) (LeftBrace!4251) (ImaginaryLiteralValue!4251 (text!30203 List!23189)) (StringLiteralValue!12753 (value!128915 List!23189)) (EOFValue!4251 (value!128916 List!23189)) (IdentValue!4251 (value!128917 List!23189)) (DelimiterValue!8503 (value!128918 List!23189)) (DedentValue!4251 (value!128919 List!23189)) (NewLineValue!4251 (value!128920 List!23189)) (IntegerValue!12753 (value!128921 (_ BitVec 32)) (text!30204 List!23189)) (IntegerValue!12754 (value!128922 Int) (text!30205 List!23189)) (Times!4251) (Or!4251) (Equal!4251) (Minus!4251) (Broken!21259 (value!128923 List!23189)) (And!4251) (Div!4251) (LessEqual!4251) (Mod!4251) (Concat!9795) (Not!4251) (Plus!4251) (SpaceValue!4251 (value!128924 List!23189)) (IntegerValue!12755 (value!128925 Int) (text!30206 List!23189)) (StringLiteralValue!12754 (text!30207 List!23189)) (FloatLiteralValue!8503 (text!30208 List!23189)) (BytesLiteralValue!4251 (value!128926 List!23189)) (CommentValue!8503 (value!128927 List!23189)) (StringLiteralValue!12755 (value!128928 List!23189)) (ErrorTokenValue!4251 (msg!4312 List!23189)) )
))
(declare-datatypes ((tuple2!22344 0))(
  ( (tuple2!22345 (_1!12888 Context!2226) (_2!12888 C!11232)) )
))
(declare-datatypes ((tuple2!22346 0))(
  ( (tuple2!22347 (_1!12889 tuple2!22344) (_2!12889 (InoxSet Context!2226))) )
))
(declare-datatypes ((List!23190 0))(
  ( (Nil!23106) (Cons!23106 (h!28507 tuple2!22346) (t!195683 List!23190)) )
))
(declare-datatypes ((array!7588 0))(
  ( (array!7589 (arr!3364 (Array (_ BitVec 32) List!23190)) (size!18054 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4398 0))(
  ( (LongMapFixedSize!4399 (defaultEntry!2564 Int) (mask!6286 (_ BitVec 32)) (extraKeys!2447 (_ BitVec 32)) (zeroValue!2457 List!23190) (minValue!2457 List!23190) (_size!4449 (_ BitVec 32)) (_keys!2496 array!7584) (_values!2479 array!7588) (_vacant!2260 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8621 0))(
  ( (Cell!8622 (v!27704 LongMapFixedSize!4398)) )
))
(declare-datatypes ((MutLongMap!2199 0))(
  ( (LongMap!2199 (underlying!4593 Cell!8621)) (MutLongMapExt!2198 (__x!14677 Int)) )
))
(declare-datatypes ((List!23191 0))(
  ( (Nil!23107) (Cons!23107 (h!28508 C!11232) (t!195684 List!23191)) )
))
(declare-datatypes ((IArray!15393 0))(
  ( (IArray!15394 (innerList!7754 List!23191)) )
))
(declare-datatypes ((Conc!7694 0))(
  ( (Node!7694 (left!18094 Conc!7694) (right!18424 Conc!7694) (csize!15618 Int) (cheight!7905 Int)) (Leaf!11233 (xs!10636 IArray!15393) (csize!15619 Int)) (Empty!7694) )
))
(declare-datatypes ((BalanceConc!15150 0))(
  ( (BalanceConc!15151 (c!338772 Conc!7694)) )
))
(declare-datatypes ((String!26447 0))(
  ( (String!26448 (value!128929 String)) )
))
(declare-datatypes ((TokenValueInjection!8086 0))(
  ( (TokenValueInjection!8087 (toValue!5826 Int) (toChars!5685 Int)) )
))
(declare-datatypes ((Hashable!2113 0))(
  ( (HashableExt!2112 (__x!14678 Int)) )
))
(declare-datatypes ((Cell!8623 0))(
  ( (Cell!8624 (v!27705 MutLongMap!2199)) )
))
(declare-datatypes ((MutableMap!2113 0))(
  ( (MutableMapExt!2112 (__x!14679 Int)) (HashMap!2113 (underlying!4594 Cell!8623) (hashF!4036 Hashable!2113) (_size!4450 (_ BitVec 32)) (defaultValue!2275 Int)) )
))
(declare-datatypes ((CacheUp!1406 0))(
  ( (CacheUp!1407 (cache!2494 MutableMap!2113)) )
))
(declare-datatypes ((Rule!8030 0))(
  ( (Rule!8031 (regex!4115 Regex!5543) (tag!4605 String!26447) (isSeparator!4115 Bool) (transformation!4115 TokenValueInjection!8086)) )
))
(declare-datatypes ((Token!7778 0))(
  ( (Token!7779 (value!128930 TokenValue!4251) (rule!6441 Rule!8030) (size!18055 Int) (originalCharacters!4920 List!23191)) )
))
(declare-datatypes ((tuple2!22348 0))(
  ( (tuple2!22349 (_1!12890 Token!7778) (_2!12890 BalanceConc!15150)) )
))
(declare-datatypes ((Option!4842 0))(
  ( (None!4841) (Some!4841 (v!27706 tuple2!22348)) )
))
(declare-datatypes ((tuple3!2504 0))(
  ( (tuple3!2505 (_1!12891 Option!4842) (_2!12891 CacheUp!1406) (_3!1716 CacheDown!1412)) )
))
(declare-fun lt!790758 () tuple3!2504)

(get-info :version)

(assert (=> b!2102837 (= res!914753 ((_ is Some!4841) (_1!12891 lt!790758)))))

(declare-datatypes ((LexerInterface!3717 0))(
  ( (LexerInterfaceExt!3714 (__x!14680 Int)) (Lexer!3715) )
))
(declare-fun thiss!12889 () LexerInterface!3717)

(declare-fun cacheUp!562 () CacheUp!1406)

(declare-datatypes ((List!23192 0))(
  ( (Nil!23108) (Cons!23108 (h!28509 Rule!8030) (t!195685 List!23192)) )
))
(declare-fun rules!1563 () List!23192)

(declare-fun totalInput!418 () BalanceConc!15150)

(declare-fun input!986 () BalanceConc!15150)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!78 (LexerInterface!3717 List!23192 BalanceConc!15150 BalanceConc!15150 CacheUp!1406 CacheDown!1412) tuple3!2504)

(assert (=> b!2102837 (= lt!790758 (maxPrefixZipperSequenceV2MemOnlyDeriv!78 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2102838 () Bool)

(declare-fun e!1335598 () Bool)

(declare-fun treated!60 () BalanceConc!15150)

(declare-fun tp!636129 () Bool)

(declare-fun inv!30630 (Conc!7694) Bool)

(assert (=> b!2102838 (= e!1335598 (and (inv!30630 (c!338772 treated!60)) tp!636129))))

(declare-fun e!1335591 () Bool)

(declare-fun tp!636138 () Bool)

(declare-fun b!2102839 () Bool)

(declare-fun e!1335605 () Bool)

(declare-fun inv!30629 (String!26447) Bool)

(declare-fun inv!30631 (TokenValueInjection!8086) Bool)

(assert (=> b!2102839 (= e!1335605 (and tp!636138 (inv!30629 (tag!4605 (h!28509 rules!1563))) (inv!30631 (transformation!4115 (h!28509 rules!1563))) e!1335591))))

(declare-fun b!2102840 () Bool)

(declare-fun res!914742 () Bool)

(assert (=> b!2102840 (=> (not res!914742) (not e!1335599))))

(declare-fun valid!1747 (CacheUp!1406) Bool)

(assert (=> b!2102840 (= res!914742 (valid!1747 cacheUp!562))))

(declare-fun b!2102841 () Bool)

(declare-fun e!1335589 () Bool)

(declare-datatypes ((List!23193 0))(
  ( (Nil!23109) (Cons!23109 (h!28510 Token!7778) (t!195686 List!23193)) )
))
(declare-datatypes ((IArray!15395 0))(
  ( (IArray!15396 (innerList!7755 List!23193)) )
))
(declare-datatypes ((Conc!7695 0))(
  ( (Node!7695 (left!18095 Conc!7695) (right!18425 Conc!7695) (csize!15620 Int) (cheight!7906 Int)) (Leaf!11234 (xs!10637 IArray!15395) (csize!15621 Int)) (Empty!7695) )
))
(declare-datatypes ((BalanceConc!15152 0))(
  ( (BalanceConc!15153 (c!338773 Conc!7695)) )
))
(declare-fun acc!382 () BalanceConc!15152)

(declare-fun tp!636121 () Bool)

(declare-fun inv!30632 (Conc!7695) Bool)

(assert (=> b!2102841 (= e!1335589 (and (inv!30632 (c!338773 acc!382)) tp!636121))))

(declare-fun b!2102842 () Bool)

(declare-fun e!1335592 () Bool)

(assert (=> b!2102842 (= e!1335607 e!1335592)))

(declare-fun b!2102843 () Bool)

(declare-fun e!1335584 () Bool)

(declare-fun tp!636131 () Bool)

(declare-fun mapRes!10656 () Bool)

(assert (=> b!2102843 (= e!1335584 (and tp!636131 mapRes!10656))))

(declare-fun condMapEmpty!10656 () Bool)

(declare-fun mapDefault!10656 () List!23188)

(assert (=> b!2102843 (= condMapEmpty!10656 (= (arr!3363 (_values!2478 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!23188)) mapDefault!10656)))))

(declare-fun b!2102844 () Bool)

(declare-fun e!1335604 () Bool)

(declare-fun tp!636127 () Bool)

(declare-fun mapRes!10657 () Bool)

(assert (=> b!2102844 (= e!1335604 (and tp!636127 mapRes!10657))))

(declare-fun condMapEmpty!10657 () Bool)

(declare-fun mapDefault!10657 () List!23190)

(assert (=> b!2102844 (= condMapEmpty!10657 (= (arr!3364 (_values!2479 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!23190)) mapDefault!10657)))))

(declare-fun b!2102845 () Bool)

(declare-fun e!1335611 () Bool)

(declare-fun lt!790752 () MutLongMap!2199)

(assert (=> b!2102845 (= e!1335611 (and e!1335586 ((_ is LongMap!2199) lt!790752)))))

(assert (=> b!2102845 (= lt!790752 (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))))

(declare-fun b!2102846 () Bool)

(declare-fun e!1335602 () Bool)

(declare-fun e!1335600 () Bool)

(assert (=> b!2102846 (= e!1335602 e!1335600)))

(declare-fun res!914754 () Bool)

(assert (=> b!2102846 (=> (not res!914754) (not e!1335600))))

(declare-datatypes ((tuple2!22350 0))(
  ( (tuple2!22351 (_1!12892 BalanceConc!15152) (_2!12892 BalanceConc!15150)) )
))
(declare-fun lt!790759 () tuple2!22350)

(declare-fun list!9416 (BalanceConc!15152) List!23193)

(assert (=> b!2102846 (= res!914754 (= (list!9416 (_1!12892 lt!790759)) (list!9416 acc!382)))))

(declare-fun lexRec!510 (LexerInterface!3717 List!23192 BalanceConc!15150) tuple2!22350)

(assert (=> b!2102846 (= lt!790759 (lexRec!510 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2102847 () Bool)

(declare-fun res!914744 () Bool)

(declare-fun e!1335612 () Bool)

(assert (=> b!2102847 (=> (not res!914744) (not e!1335612))))

(declare-fun rulesInvariant!3286 (LexerInterface!3717 List!23192) Bool)

(assert (=> b!2102847 (= res!914744 (rulesInvariant!3286 thiss!12889 rules!1563))))

(declare-fun tp!636132 () Bool)

(declare-fun tp!636124 () Bool)

(declare-fun e!1335614 () Bool)

(declare-fun array_inv!2418 (array!7584) Bool)

(declare-fun array_inv!2419 (array!7586) Bool)

(assert (=> b!2102848 (= e!1335614 (and tp!636126 tp!636132 tp!636124 (array_inv!2418 (_keys!2495 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))))) (array_inv!2419 (_values!2478 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))))) e!1335584))))

(declare-fun b!2102849 () Bool)

(declare-fun e!1335597 () Bool)

(declare-fun e!1335588 () Bool)

(declare-fun lt!790749 () MutLongMap!2198)

(assert (=> b!2102849 (= e!1335597 (and e!1335588 ((_ is LongMap!2198) lt!790749)))))

(assert (=> b!2102849 (= lt!790749 (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))))

(declare-fun mapIsEmpty!10656 () Bool)

(assert (=> mapIsEmpty!10656 mapRes!10656))

(declare-fun b!2102850 () Bool)

(declare-fun e!1335593 () Bool)

(assert (=> b!2102850 (= e!1335593 (valid!1746 (_3!1716 lt!790758)))))

(declare-fun b!2102851 () Bool)

(assert (=> b!2102851 (= e!1335599 (not e!1335590))))

(declare-fun res!914748 () Bool)

(assert (=> b!2102851 (=> res!914748 e!1335590)))

(declare-fun lt!790754 () List!23191)

(declare-fun lt!790756 () List!23191)

(declare-fun isSuffix!539 (List!23191 List!23191) Bool)

(assert (=> b!2102851 (= res!914748 (not (isSuffix!539 lt!790754 lt!790756)))))

(declare-fun lt!790750 () List!23191)

(assert (=> b!2102851 (isSuffix!539 lt!790754 lt!790750)))

(declare-datatypes ((Unit!37402 0))(
  ( (Unit!37403) )
))
(declare-fun lt!790757 () Unit!37402)

(declare-fun lt!790753 () List!23191)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!440 (List!23191 List!23191) Unit!37402)

(assert (=> b!2102851 (= lt!790757 (lemmaConcatTwoListThenFSndIsSuffix!440 lt!790753 lt!790754))))

(assert (=> b!2102852 (= e!1335610 (and e!1335611 tp!636128))))

(assert (=> b!2102853 (= e!1335591 (and tp!636125 tp!636118))))

(declare-fun b!2102854 () Bool)

(declare-fun e!1335587 () Bool)

(declare-fun tp!636123 () Bool)

(assert (=> b!2102854 (= e!1335587 (and e!1335605 tp!636123))))

(declare-fun b!2102855 () Bool)

(declare-fun e!1335613 () Bool)

(assert (=> b!2102855 (= e!1335613 e!1335614)))

(declare-fun b!2102856 () Bool)

(declare-fun res!914750 () Bool)

(assert (=> b!2102856 (=> (not res!914750) (not e!1335593))))

(assert (=> b!2102856 (= res!914750 (valid!1747 (_2!12891 lt!790758)))))

(declare-fun b!2102857 () Bool)

(assert (=> b!2102857 (= e!1335612 e!1335602)))

(declare-fun res!914741 () Bool)

(assert (=> b!2102857 (=> (not res!914741) (not e!1335602))))

(assert (=> b!2102857 (= res!914741 (= lt!790756 lt!790750))))

(declare-fun ++!6304 (List!23191 List!23191) List!23191)

(assert (=> b!2102857 (= lt!790750 (++!6304 lt!790753 lt!790754))))

(declare-fun list!9417 (BalanceConc!15150) List!23191)

(assert (=> b!2102857 (= lt!790756 (list!9417 totalInput!418))))

(assert (=> b!2102857 (= lt!790754 (list!9417 input!986))))

(assert (=> b!2102857 (= lt!790753 (list!9417 treated!60))))

(declare-fun tp!636133 () Bool)

(declare-fun tp!636135 () Bool)

(declare-fun array_inv!2420 (array!7588) Bool)

(assert (=> b!2102858 (= e!1335592 (and tp!636119 tp!636133 tp!636135 (array_inv!2418 (_keys!2496 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))))) (array_inv!2420 (_values!2479 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))))) e!1335604))))

(declare-fun mapNonEmpty!10656 () Bool)

(declare-fun tp!636134 () Bool)

(declare-fun tp!636136 () Bool)

(assert (=> mapNonEmpty!10656 (= mapRes!10657 (and tp!636134 tp!636136))))

(declare-fun mapKey!10657 () (_ BitVec 32))

(declare-fun mapRest!10656 () (Array (_ BitVec 32) List!23190))

(declare-fun mapValue!10656 () List!23190)

(assert (=> mapNonEmpty!10656 (= (arr!3364 (_values!2479 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))))) (store mapRest!10656 mapKey!10657 mapValue!10656))))

(declare-fun b!2102859 () Bool)

(declare-fun res!914747 () Bool)

(assert (=> b!2102859 (=> (not res!914747) (not e!1335612))))

(declare-fun isEmpty!14249 (List!23192) Bool)

(assert (=> b!2102859 (= res!914747 (not (isEmpty!14249 rules!1563)))))

(declare-fun b!2102860 () Bool)

(assert (=> b!2102860 (= e!1335595 e!1335593)))

(declare-fun res!914751 () Bool)

(assert (=> b!2102860 (=> (not res!914751) (not e!1335593))))

(declare-fun lexTailRecV2!710 (LexerInterface!3717 List!23192 BalanceConc!15150 BalanceConc!15150 BalanceConc!15150 BalanceConc!15152) tuple2!22350)

(assert (=> b!2102860 (= res!914751 (= (tuple2!22351 acc!382 input!986) (lexTailRecV2!710 thiss!12889 rules!1563 totalInput!418 treated!60 input!986 acc!382)))))

(declare-fun res!914749 () Bool)

(assert (=> start!205630 (=> (not res!914749) (not e!1335612))))

(assert (=> start!205630 (= res!914749 ((_ is Lexer!3715) thiss!12889))))

(assert (=> start!205630 e!1335612))

(declare-fun e!1335601 () Bool)

(declare-fun inv!30633 (CacheDown!1412) Bool)

(assert (=> start!205630 (and (inv!30633 cacheDown!575) e!1335601)))

(assert (=> start!205630 true))

(declare-fun inv!30634 (CacheUp!1406) Bool)

(assert (=> start!205630 (and (inv!30634 cacheUp!562) e!1335608)))

(assert (=> start!205630 e!1335587))

(declare-fun e!1335594 () Bool)

(declare-fun inv!30635 (BalanceConc!15150) Bool)

(assert (=> start!205630 (and (inv!30635 totalInput!418) e!1335594)))

(assert (=> start!205630 (and (inv!30635 treated!60) e!1335598)))

(declare-fun e!1335609 () Bool)

(assert (=> start!205630 (and (inv!30635 input!986) e!1335609)))

(declare-fun inv!30636 (BalanceConc!15152) Bool)

(assert (=> start!205630 (and (inv!30636 acc!382) e!1335589)))

(declare-fun b!2102861 () Bool)

(declare-fun e!1335606 () Bool)

(assert (=> b!2102861 (= e!1335601 e!1335606)))

(declare-fun mapNonEmpty!10657 () Bool)

(declare-fun tp!636122 () Bool)

(declare-fun tp!636137 () Bool)

(assert (=> mapNonEmpty!10657 (= mapRes!10656 (and tp!636122 tp!636137))))

(declare-fun mapValue!10657 () List!23188)

(declare-fun mapRest!10657 () (Array (_ BitVec 32) List!23188))

(declare-fun mapKey!10656 () (_ BitVec 32))

(assert (=> mapNonEmpty!10657 (= (arr!3363 (_values!2478 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))))) (store mapRest!10657 mapKey!10656 mapValue!10657))))

(declare-fun b!2102862 () Bool)

(assert (=> b!2102862 (= e!1335600 e!1335599)))

(declare-fun res!914752 () Bool)

(assert (=> b!2102862 (=> (not res!914752) (not e!1335599))))

(declare-fun lt!790751 () tuple2!22350)

(declare-fun lt!790755 () tuple2!22350)

(declare-fun ++!6305 (BalanceConc!15152 BalanceConc!15152) BalanceConc!15152)

(assert (=> b!2102862 (= res!914752 (= (list!9416 (_1!12892 lt!790755)) (list!9416 (++!6305 acc!382 (_1!12892 lt!790751)))))))

(assert (=> b!2102862 (= lt!790751 (lexRec!510 thiss!12889 rules!1563 input!986))))

(assert (=> b!2102862 (= lt!790755 (lexRec!510 thiss!12889 rules!1563 totalInput!418))))

(assert (=> b!2102863 (= e!1335606 (and e!1335597 tp!636130))))

(declare-fun b!2102864 () Bool)

(declare-fun tp!636120 () Bool)

(assert (=> b!2102864 (= e!1335594 (and (inv!30630 (c!338772 totalInput!418)) tp!636120))))

(declare-fun b!2102865 () Bool)

(assert (=> b!2102865 (= e!1335588 e!1335613)))

(declare-fun b!2102866 () Bool)

(declare-fun tp!636117 () Bool)

(assert (=> b!2102866 (= e!1335609 (and (inv!30630 (c!338772 input!986)) tp!636117))))

(declare-fun b!2102867 () Bool)

(declare-fun res!914746 () Bool)

(assert (=> b!2102867 (=> (not res!914746) (not e!1335599))))

(assert (=> b!2102867 (= res!914746 (= (list!9417 (_2!12892 lt!790755)) (list!9417 (_2!12892 lt!790751))))))

(declare-fun b!2102868 () Bool)

(declare-fun res!914745 () Bool)

(assert (=> b!2102868 (=> (not res!914745) (not e!1335600))))

(declare-fun isEmpty!14250 (List!23191) Bool)

(assert (=> b!2102868 (= res!914745 (isEmpty!14250 (list!9417 (_2!12892 lt!790759))))))

(declare-fun mapIsEmpty!10657 () Bool)

(assert (=> mapIsEmpty!10657 mapRes!10657))

(assert (= (and start!205630 res!914749) b!2102859))

(assert (= (and b!2102859 res!914747) b!2102847))

(assert (= (and b!2102847 res!914744) b!2102857))

(assert (= (and b!2102857 res!914741) b!2102846))

(assert (= (and b!2102846 res!914754) b!2102868))

(assert (= (and b!2102868 res!914745) b!2102862))

(assert (= (and b!2102862 res!914752) b!2102867))

(assert (= (and b!2102867 res!914746) b!2102840))

(assert (= (and b!2102840 res!914742) b!2102834))

(assert (= (and b!2102834 res!914743) b!2102851))

(assert (= (and b!2102851 (not res!914748)) b!2102837))

(assert (= (and b!2102837 (not res!914753)) b!2102860))

(assert (= (and b!2102860 res!914751) b!2102856))

(assert (= (and b!2102856 res!914750) b!2102850))

(assert (= (and b!2102843 condMapEmpty!10656) mapIsEmpty!10656))

(assert (= (and b!2102843 (not condMapEmpty!10656)) mapNonEmpty!10657))

(assert (= b!2102848 b!2102843))

(assert (= b!2102855 b!2102848))

(assert (= b!2102865 b!2102855))

(assert (= (and b!2102849 ((_ is LongMap!2198) (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))) b!2102865))

(assert (= b!2102863 b!2102849))

(assert (= (and b!2102861 ((_ is HashMap!2112) (cache!2493 cacheDown!575))) b!2102863))

(assert (= start!205630 b!2102861))

(assert (= (and b!2102844 condMapEmpty!10657) mapIsEmpty!10657))

(assert (= (and b!2102844 (not condMapEmpty!10657)) mapNonEmpty!10656))

(assert (= b!2102858 b!2102844))

(assert (= b!2102842 b!2102858))

(assert (= b!2102836 b!2102842))

(assert (= (and b!2102845 ((_ is LongMap!2199) (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))) b!2102836))

(assert (= b!2102852 b!2102845))

(assert (= (and b!2102835 ((_ is HashMap!2113) (cache!2494 cacheUp!562))) b!2102852))

(assert (= start!205630 b!2102835))

(assert (= b!2102839 b!2102853))

(assert (= b!2102854 b!2102839))

(assert (= (and start!205630 ((_ is Cons!23108) rules!1563)) b!2102854))

(assert (= start!205630 b!2102864))

(assert (= start!205630 b!2102838))

(assert (= start!205630 b!2102866))

(assert (= start!205630 b!2102841))

(declare-fun m!2562093 () Bool)

(assert (=> b!2102867 m!2562093))

(declare-fun m!2562095 () Bool)

(assert (=> b!2102867 m!2562095))

(declare-fun m!2562097 () Bool)

(assert (=> b!2102866 m!2562097))

(declare-fun m!2562099 () Bool)

(assert (=> b!2102868 m!2562099))

(assert (=> b!2102868 m!2562099))

(declare-fun m!2562101 () Bool)

(assert (=> b!2102868 m!2562101))

(declare-fun m!2562103 () Bool)

(assert (=> b!2102864 m!2562103))

(declare-fun m!2562105 () Bool)

(assert (=> b!2102837 m!2562105))

(declare-fun m!2562107 () Bool)

(assert (=> b!2102859 m!2562107))

(declare-fun m!2562109 () Bool)

(assert (=> mapNonEmpty!10657 m!2562109))

(declare-fun m!2562111 () Bool)

(assert (=> b!2102858 m!2562111))

(declare-fun m!2562113 () Bool)

(assert (=> b!2102858 m!2562113))

(declare-fun m!2562115 () Bool)

(assert (=> b!2102850 m!2562115))

(declare-fun m!2562117 () Bool)

(assert (=> b!2102848 m!2562117))

(declare-fun m!2562119 () Bool)

(assert (=> b!2102848 m!2562119))

(declare-fun m!2562121 () Bool)

(assert (=> b!2102856 m!2562121))

(declare-fun m!2562123 () Bool)

(assert (=> b!2102851 m!2562123))

(declare-fun m!2562125 () Bool)

(assert (=> b!2102851 m!2562125))

(declare-fun m!2562127 () Bool)

(assert (=> b!2102851 m!2562127))

(declare-fun m!2562129 () Bool)

(assert (=> start!205630 m!2562129))

(declare-fun m!2562131 () Bool)

(assert (=> start!205630 m!2562131))

(declare-fun m!2562133 () Bool)

(assert (=> start!205630 m!2562133))

(declare-fun m!2562135 () Bool)

(assert (=> start!205630 m!2562135))

(declare-fun m!2562137 () Bool)

(assert (=> start!205630 m!2562137))

(declare-fun m!2562139 () Bool)

(assert (=> start!205630 m!2562139))

(declare-fun m!2562141 () Bool)

(assert (=> b!2102846 m!2562141))

(declare-fun m!2562143 () Bool)

(assert (=> b!2102846 m!2562143))

(declare-fun m!2562145 () Bool)

(assert (=> b!2102846 m!2562145))

(declare-fun m!2562147 () Bool)

(assert (=> b!2102840 m!2562147))

(declare-fun m!2562149 () Bool)

(assert (=> b!2102838 m!2562149))

(declare-fun m!2562151 () Bool)

(assert (=> b!2102847 m!2562151))

(declare-fun m!2562153 () Bool)

(assert (=> b!2102860 m!2562153))

(declare-fun m!2562155 () Bool)

(assert (=> b!2102857 m!2562155))

(declare-fun m!2562157 () Bool)

(assert (=> b!2102857 m!2562157))

(declare-fun m!2562159 () Bool)

(assert (=> b!2102857 m!2562159))

(declare-fun m!2562161 () Bool)

(assert (=> b!2102857 m!2562161))

(declare-fun m!2562163 () Bool)

(assert (=> b!2102839 m!2562163))

(declare-fun m!2562165 () Bool)

(assert (=> b!2102839 m!2562165))

(declare-fun m!2562167 () Bool)

(assert (=> mapNonEmpty!10656 m!2562167))

(declare-fun m!2562169 () Bool)

(assert (=> b!2102841 m!2562169))

(declare-fun m!2562171 () Bool)

(assert (=> b!2102862 m!2562171))

(declare-fun m!2562173 () Bool)

(assert (=> b!2102862 m!2562173))

(declare-fun m!2562175 () Bool)

(assert (=> b!2102862 m!2562175))

(assert (=> b!2102862 m!2562171))

(declare-fun m!2562177 () Bool)

(assert (=> b!2102862 m!2562177))

(declare-fun m!2562179 () Bool)

(assert (=> b!2102862 m!2562179))

(declare-fun m!2562181 () Bool)

(assert (=> b!2102834 m!2562181))

(check-sat (not b!2102867) b_and!169747 (not b!2102847) (not b!2102859) b_and!169743 (not mapNonEmpty!10656) (not b!2102856) (not b!2102843) (not b!2102840) (not b!2102848) (not mapNonEmpty!10657) (not b!2102841) (not b!2102844) (not b_next!60885) (not b!2102837) (not b_next!60893) (not b!2102868) (not b_next!60895) (not b!2102850) b_and!169749 (not b!2102851) (not b!2102857) (not b!2102839) (not b_next!60887) (not b!2102862) (not b!2102846) (not b_next!60891) (not b!2102866) b_and!169753 (not b!2102864) (not start!205630) (not b!2102860) b_and!169751 (not b!2102838) (not b!2102854) (not b!2102858) b_and!169745 (not b!2102834) (not b_next!60889))
(check-sat (not b_next!60885) b_and!169747 b_and!169749 (not b_next!60887) b_and!169743 (not b_next!60891) b_and!169753 b_and!169751 b_and!169745 (not b_next!60889) (not b_next!60893) (not b_next!60895))
(get-model)

(declare-fun d!641411 () Bool)

(declare-fun validCacheMapDown!215 (MutableMap!2112) Bool)

(assert (=> d!641411 (= (valid!1746 cacheDown!575) (validCacheMapDown!215 (cache!2493 cacheDown!575)))))

(declare-fun bs!440857 () Bool)

(assert (= bs!440857 d!641411))

(declare-fun m!2562183 () Bool)

(assert (=> bs!440857 m!2562183))

(assert (=> b!2102834 d!641411))

(declare-fun d!641413 () Bool)

(declare-fun c!338776 () Bool)

(assert (=> d!641413 (= c!338776 ((_ is Node!7694) (c!338772 totalInput!418)))))

(declare-fun e!1335619 () Bool)

(assert (=> d!641413 (= (inv!30630 (c!338772 totalInput!418)) e!1335619)))

(declare-fun b!2102875 () Bool)

(declare-fun inv!30637 (Conc!7694) Bool)

(assert (=> b!2102875 (= e!1335619 (inv!30637 (c!338772 totalInput!418)))))

(declare-fun b!2102876 () Bool)

(declare-fun e!1335620 () Bool)

(assert (=> b!2102876 (= e!1335619 e!1335620)))

(declare-fun res!914757 () Bool)

(assert (=> b!2102876 (= res!914757 (not ((_ is Leaf!11233) (c!338772 totalInput!418))))))

(assert (=> b!2102876 (=> res!914757 e!1335620)))

(declare-fun b!2102877 () Bool)

(declare-fun inv!30638 (Conc!7694) Bool)

(assert (=> b!2102877 (= e!1335620 (inv!30638 (c!338772 totalInput!418)))))

(assert (= (and d!641413 c!338776) b!2102875))

(assert (= (and d!641413 (not c!338776)) b!2102876))

(assert (= (and b!2102876 (not res!914757)) b!2102877))

(declare-fun m!2562185 () Bool)

(assert (=> b!2102875 m!2562185))

(declare-fun m!2562187 () Bool)

(assert (=> b!2102877 m!2562187))

(assert (=> b!2102864 d!641413))

(declare-fun d!641415 () Bool)

(declare-fun validCacheMapUp!217 (MutableMap!2113) Bool)

(assert (=> d!641415 (= (valid!1747 (_2!12891 lt!790758)) (validCacheMapUp!217 (cache!2494 (_2!12891 lt!790758))))))

(declare-fun bs!440858 () Bool)

(assert (= bs!440858 d!641415))

(declare-fun m!2562189 () Bool)

(assert (=> bs!440858 m!2562189))

(assert (=> b!2102856 d!641415))

(declare-fun d!641417 () Bool)

(declare-fun list!9418 (Conc!7695) List!23193)

(assert (=> d!641417 (= (list!9416 (_1!12892 lt!790759)) (list!9418 (c!338773 (_1!12892 lt!790759))))))

(declare-fun bs!440859 () Bool)

(assert (= bs!440859 d!641417))

(declare-fun m!2562191 () Bool)

(assert (=> bs!440859 m!2562191))

(assert (=> b!2102846 d!641417))

(declare-fun d!641419 () Bool)

(assert (=> d!641419 (= (list!9416 acc!382) (list!9418 (c!338773 acc!382)))))

(declare-fun bs!440860 () Bool)

(assert (= bs!440860 d!641419))

(declare-fun m!2562193 () Bool)

(assert (=> bs!440860 m!2562193))

(assert (=> b!2102846 d!641419))

(declare-fun b!2102892 () Bool)

(declare-fun e!1335632 () Bool)

(declare-fun lt!790766 () tuple2!22350)

(assert (=> b!2102892 (= e!1335632 (= (list!9417 (_2!12892 lt!790766)) (list!9417 treated!60)))))

(declare-fun b!2102893 () Bool)

(declare-fun e!1335630 () tuple2!22350)

(assert (=> b!2102893 (= e!1335630 (tuple2!22351 (BalanceConc!15153 Empty!7695) treated!60))))

(declare-fun b!2102894 () Bool)

(declare-fun e!1335631 () Bool)

(declare-fun isEmpty!14251 (BalanceConc!15152) Bool)

(assert (=> b!2102894 (= e!1335631 (not (isEmpty!14251 (_1!12892 lt!790766))))))

(declare-fun b!2102896 () Bool)

(assert (=> b!2102896 (= e!1335632 e!1335631)))

(declare-fun res!914765 () Bool)

(declare-fun size!18056 (BalanceConc!15150) Int)

(assert (=> b!2102896 (= res!914765 (< (size!18056 (_2!12892 lt!790766)) (size!18056 treated!60)))))

(assert (=> b!2102896 (=> (not res!914765) (not e!1335631))))

(declare-fun b!2102897 () Bool)

(declare-fun lt!790768 () tuple2!22350)

(declare-fun lt!790767 () Option!4842)

(declare-fun prepend!980 (BalanceConc!15152 Token!7778) BalanceConc!15152)

(assert (=> b!2102897 (= e!1335630 (tuple2!22351 (prepend!980 (_1!12892 lt!790768) (_1!12890 (v!27706 lt!790767))) (_2!12892 lt!790768)))))

(assert (=> b!2102897 (= lt!790768 (lexRec!510 thiss!12889 rules!1563 (_2!12890 (v!27706 lt!790767))))))

(declare-fun b!2102898 () Bool)

(declare-fun res!914766 () Bool)

(declare-fun e!1335629 () Bool)

(assert (=> b!2102898 (=> (not res!914766) (not e!1335629))))

(declare-datatypes ((tuple2!22352 0))(
  ( (tuple2!22353 (_1!12893 List!23193) (_2!12893 List!23191)) )
))
(declare-fun lexList!1035 (LexerInterface!3717 List!23192 List!23191) tuple2!22352)

(assert (=> b!2102898 (= res!914766 (= (list!9416 (_1!12892 lt!790766)) (_1!12893 (lexList!1035 thiss!12889 rules!1563 (list!9417 treated!60)))))))

(declare-fun b!2102895 () Bool)

(assert (=> b!2102895 (= e!1335629 (= (list!9417 (_2!12892 lt!790766)) (_2!12893 (lexList!1035 thiss!12889 rules!1563 (list!9417 treated!60)))))))

(declare-fun d!641421 () Bool)

(assert (=> d!641421 e!1335629))

(declare-fun res!914764 () Bool)

(assert (=> d!641421 (=> (not res!914764) (not e!1335629))))

(assert (=> d!641421 (= res!914764 e!1335632)))

(declare-fun c!338783 () Bool)

(declare-fun size!18057 (BalanceConc!15152) Int)

(assert (=> d!641421 (= c!338783 (> (size!18057 (_1!12892 lt!790766)) 0))))

(assert (=> d!641421 (= lt!790766 e!1335630)))

(declare-fun c!338782 () Bool)

(assert (=> d!641421 (= c!338782 ((_ is Some!4841) lt!790767))))

(declare-fun maxPrefixZipperSequence!845 (LexerInterface!3717 List!23192 BalanceConc!15150) Option!4842)

(assert (=> d!641421 (= lt!790767 (maxPrefixZipperSequence!845 thiss!12889 rules!1563 treated!60))))

(assert (=> d!641421 (= (lexRec!510 thiss!12889 rules!1563 treated!60) lt!790766)))

(assert (= (and d!641421 c!338782) b!2102897))

(assert (= (and d!641421 (not c!338782)) b!2102893))

(assert (= (and d!641421 c!338783) b!2102896))

(assert (= (and d!641421 (not c!338783)) b!2102892))

(assert (= (and b!2102896 res!914765) b!2102894))

(assert (= (and d!641421 res!914764) b!2102898))

(assert (= (and b!2102898 res!914766) b!2102895))

(declare-fun m!2562195 () Bool)

(assert (=> b!2102897 m!2562195))

(declare-fun m!2562197 () Bool)

(assert (=> b!2102897 m!2562197))

(declare-fun m!2562199 () Bool)

(assert (=> b!2102895 m!2562199))

(assert (=> b!2102895 m!2562161))

(assert (=> b!2102895 m!2562161))

(declare-fun m!2562201 () Bool)

(assert (=> b!2102895 m!2562201))

(assert (=> b!2102892 m!2562199))

(assert (=> b!2102892 m!2562161))

(declare-fun m!2562203 () Bool)

(assert (=> b!2102896 m!2562203))

(declare-fun m!2562205 () Bool)

(assert (=> b!2102896 m!2562205))

(declare-fun m!2562207 () Bool)

(assert (=> d!641421 m!2562207))

(declare-fun m!2562209 () Bool)

(assert (=> d!641421 m!2562209))

(declare-fun m!2562211 () Bool)

(assert (=> b!2102894 m!2562211))

(declare-fun m!2562213 () Bool)

(assert (=> b!2102898 m!2562213))

(assert (=> b!2102898 m!2562161))

(assert (=> b!2102898 m!2562161))

(assert (=> b!2102898 m!2562201))

(assert (=> b!2102846 d!641421))

(declare-fun d!641423 () Bool)

(declare-fun res!914769 () Bool)

(declare-fun e!1335635 () Bool)

(assert (=> d!641423 (=> (not res!914769) (not e!1335635))))

(declare-fun rulesValid!1534 (LexerInterface!3717 List!23192) Bool)

(assert (=> d!641423 (= res!914769 (rulesValid!1534 thiss!12889 rules!1563))))

(assert (=> d!641423 (= (rulesInvariant!3286 thiss!12889 rules!1563) e!1335635)))

(declare-fun b!2102901 () Bool)

(declare-datatypes ((List!23194 0))(
  ( (Nil!23110) (Cons!23110 (h!28511 String!26447) (t!195687 List!23194)) )
))
(declare-fun noDuplicateTag!1532 (LexerInterface!3717 List!23192 List!23194) Bool)

(assert (=> b!2102901 (= e!1335635 (noDuplicateTag!1532 thiss!12889 rules!1563 Nil!23110))))

(assert (= (and d!641423 res!914769) b!2102901))

(declare-fun m!2562215 () Bool)

(assert (=> d!641423 m!2562215))

(declare-fun m!2562217 () Bool)

(assert (=> b!2102901 m!2562217))

(assert (=> b!2102847 d!641423))

(declare-fun d!641425 () Bool)

(declare-fun isBalanced!2420 (Conc!7694) Bool)

(assert (=> d!641425 (= (inv!30635 input!986) (isBalanced!2420 (c!338772 input!986)))))

(declare-fun bs!440861 () Bool)

(assert (= bs!440861 d!641425))

(declare-fun m!2562219 () Bool)

(assert (=> bs!440861 m!2562219))

(assert (=> start!205630 d!641425))

(declare-fun d!641427 () Bool)

(declare-fun res!914772 () Bool)

(declare-fun e!1335638 () Bool)

(assert (=> d!641427 (=> (not res!914772) (not e!1335638))))

(assert (=> d!641427 (= res!914772 ((_ is HashMap!2113) (cache!2494 cacheUp!562)))))

(assert (=> d!641427 (= (inv!30634 cacheUp!562) e!1335638)))

(declare-fun b!2102904 () Bool)

(assert (=> b!2102904 (= e!1335638 (validCacheMapUp!217 (cache!2494 cacheUp!562)))))

(assert (= (and d!641427 res!914772) b!2102904))

(declare-fun m!2562221 () Bool)

(assert (=> b!2102904 m!2562221))

(assert (=> start!205630 d!641427))

(declare-fun d!641429 () Bool)

(declare-fun isBalanced!2421 (Conc!7695) Bool)

(assert (=> d!641429 (= (inv!30636 acc!382) (isBalanced!2421 (c!338773 acc!382)))))

(declare-fun bs!440862 () Bool)

(assert (= bs!440862 d!641429))

(declare-fun m!2562223 () Bool)

(assert (=> bs!440862 m!2562223))

(assert (=> start!205630 d!641429))

(declare-fun d!641431 () Bool)

(declare-fun res!914775 () Bool)

(declare-fun e!1335641 () Bool)

(assert (=> d!641431 (=> (not res!914775) (not e!1335641))))

(assert (=> d!641431 (= res!914775 ((_ is HashMap!2112) (cache!2493 cacheDown!575)))))

(assert (=> d!641431 (= (inv!30633 cacheDown!575) e!1335641)))

(declare-fun b!2102907 () Bool)

(assert (=> b!2102907 (= e!1335641 (validCacheMapDown!215 (cache!2493 cacheDown!575)))))

(assert (= (and d!641431 res!914775) b!2102907))

(assert (=> b!2102907 m!2562183))

(assert (=> start!205630 d!641431))

(declare-fun d!641433 () Bool)

(assert (=> d!641433 (= (inv!30635 totalInput!418) (isBalanced!2420 (c!338772 totalInput!418)))))

(declare-fun bs!440863 () Bool)

(assert (= bs!440863 d!641433))

(declare-fun m!2562225 () Bool)

(assert (=> bs!440863 m!2562225))

(assert (=> start!205630 d!641433))

(declare-fun d!641435 () Bool)

(assert (=> d!641435 (= (inv!30635 treated!60) (isBalanced!2420 (c!338772 treated!60)))))

(declare-fun bs!440864 () Bool)

(assert (= bs!440864 d!641435))

(declare-fun m!2562227 () Bool)

(assert (=> bs!440864 m!2562227))

(assert (=> start!205630 d!641435))

(declare-fun d!641437 () Bool)

(declare-fun c!338784 () Bool)

(assert (=> d!641437 (= c!338784 ((_ is Node!7694) (c!338772 input!986)))))

(declare-fun e!1335642 () Bool)

(assert (=> d!641437 (= (inv!30630 (c!338772 input!986)) e!1335642)))

(declare-fun b!2102908 () Bool)

(assert (=> b!2102908 (= e!1335642 (inv!30637 (c!338772 input!986)))))

(declare-fun b!2102909 () Bool)

(declare-fun e!1335643 () Bool)

(assert (=> b!2102909 (= e!1335642 e!1335643)))

(declare-fun res!914776 () Bool)

(assert (=> b!2102909 (= res!914776 (not ((_ is Leaf!11233) (c!338772 input!986))))))

(assert (=> b!2102909 (=> res!914776 e!1335643)))

(declare-fun b!2102910 () Bool)

(assert (=> b!2102910 (= e!1335643 (inv!30638 (c!338772 input!986)))))

(assert (= (and d!641437 c!338784) b!2102908))

(assert (= (and d!641437 (not c!338784)) b!2102909))

(assert (= (and b!2102909 (not res!914776)) b!2102910))

(declare-fun m!2562229 () Bool)

(assert (=> b!2102908 m!2562229))

(declare-fun m!2562231 () Bool)

(assert (=> b!2102910 m!2562231))

(assert (=> b!2102866 d!641437))

(declare-fun b!2102919 () Bool)

(declare-fun res!914781 () Bool)

(declare-fun e!1335648 () Bool)

(assert (=> b!2102919 (=> (not res!914781) (not e!1335648))))

(declare-fun lt!790790 () tuple3!2504)

(assert (=> b!2102919 (= res!914781 (valid!1747 (_2!12891 lt!790790)))))

(declare-fun b!2102920 () Bool)

(declare-fun e!1335649 () tuple3!2504)

(declare-fun lt!790786 () tuple3!2504)

(assert (=> b!2102920 (= e!1335649 (tuple3!2505 (_1!12891 lt!790786) (_2!12891 lt!790786) (_3!1716 lt!790786)))))

(declare-fun call!128389 () tuple3!2504)

(assert (=> b!2102920 (= lt!790786 call!128389)))

(declare-fun bm!128384 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!59 (LexerInterface!3717 Rule!8030 BalanceConc!15150 BalanceConc!15150 CacheUp!1406 CacheDown!1412) tuple3!2504)

(assert (=> bm!128384 (= call!128389 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!59 thiss!12889 (h!28509 rules!1563) input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2102921 () Bool)

(declare-fun lt!790785 () tuple3!2504)

(declare-fun lt!790792 () tuple3!2504)

(assert (=> b!2102921 (= e!1335649 (tuple3!2505 (ite (and ((_ is None!4841) (_1!12891 lt!790785)) ((_ is None!4841) (_1!12891 lt!790792))) None!4841 (ite ((_ is None!4841) (_1!12891 lt!790792)) (_1!12891 lt!790785) (ite ((_ is None!4841) (_1!12891 lt!790785)) (_1!12891 lt!790792) (ite (>= (size!18055 (_1!12890 (v!27706 (_1!12891 lt!790785)))) (size!18055 (_1!12890 (v!27706 (_1!12891 lt!790792))))) (_1!12891 lt!790785) (_1!12891 lt!790792))))) (_2!12891 lt!790792) (_3!1716 lt!790792)))))

(assert (=> b!2102921 (= lt!790785 call!128389)))

(assert (=> b!2102921 (= lt!790792 (maxPrefixZipperSequenceV2MemOnlyDeriv!78 thiss!12889 (t!195685 rules!1563) input!986 totalInput!418 (_2!12891 lt!790785) (_3!1716 lt!790785)))))

(declare-fun d!641439 () Bool)

(assert (=> d!641439 e!1335648))

(declare-fun res!914782 () Bool)

(assert (=> d!641439 (=> (not res!914782) (not e!1335648))))

(declare-fun maxPrefixZipperSequenceV2!376 (LexerInterface!3717 List!23192 BalanceConc!15150 BalanceConc!15150) Option!4842)

(assert (=> d!641439 (= res!914782 (= (_1!12891 lt!790790) (maxPrefixZipperSequenceV2!376 thiss!12889 rules!1563 input!986 totalInput!418)))))

(assert (=> d!641439 (= lt!790790 e!1335649)))

(declare-fun c!338787 () Bool)

(assert (=> d!641439 (= c!338787 (and ((_ is Cons!23108) rules!1563) ((_ is Nil!23108) (t!195685 rules!1563))))))

(declare-fun lt!790788 () Unit!37402)

(declare-fun lt!790787 () Unit!37402)

(assert (=> d!641439 (= lt!790788 lt!790787)))

(declare-fun lt!790791 () List!23191)

(declare-fun lt!790789 () List!23191)

(declare-fun isPrefix!2054 (List!23191 List!23191) Bool)

(assert (=> d!641439 (isPrefix!2054 lt!790791 lt!790789)))

(declare-fun lemmaIsPrefixRefl!1372 (List!23191 List!23191) Unit!37402)

(assert (=> d!641439 (= lt!790787 (lemmaIsPrefixRefl!1372 lt!790791 lt!790789))))

(assert (=> d!641439 (= lt!790789 (list!9417 input!986))))

(assert (=> d!641439 (= lt!790791 (list!9417 input!986))))

(declare-fun rulesValidInductive!1437 (LexerInterface!3717 List!23192) Bool)

(assert (=> d!641439 (rulesValidInductive!1437 thiss!12889 rules!1563)))

(assert (=> d!641439 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!78 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575) lt!790790)))

(declare-fun b!2102922 () Bool)

(assert (=> b!2102922 (= e!1335648 (valid!1746 (_3!1716 lt!790790)))))

(assert (= (and d!641439 c!338787) b!2102920))

(assert (= (and d!641439 (not c!338787)) b!2102921))

(assert (= (or b!2102920 b!2102921) bm!128384))

(assert (= (and d!641439 res!914782) b!2102919))

(assert (= (and b!2102919 res!914781) b!2102922))

(declare-fun m!2562233 () Bool)

(assert (=> bm!128384 m!2562233))

(declare-fun m!2562235 () Bool)

(assert (=> b!2102921 m!2562235))

(declare-fun m!2562237 () Bool)

(assert (=> b!2102919 m!2562237))

(declare-fun m!2562239 () Bool)

(assert (=> d!641439 m!2562239))

(declare-fun m!2562241 () Bool)

(assert (=> d!641439 m!2562241))

(declare-fun m!2562243 () Bool)

(assert (=> d!641439 m!2562243))

(declare-fun m!2562245 () Bool)

(assert (=> d!641439 m!2562245))

(assert (=> d!641439 m!2562159))

(declare-fun m!2562247 () Bool)

(assert (=> b!2102922 m!2562247))

(assert (=> b!2102837 d!641439))

(declare-fun e!1335655 () Bool)

(declare-fun lt!790795 () List!23191)

(declare-fun b!2102934 () Bool)

(assert (=> b!2102934 (= e!1335655 (or (not (= lt!790754 Nil!23107)) (= lt!790795 lt!790753)))))

(declare-fun b!2102932 () Bool)

(declare-fun e!1335654 () List!23191)

(assert (=> b!2102932 (= e!1335654 (Cons!23107 (h!28508 lt!790753) (++!6304 (t!195684 lt!790753) lt!790754)))))

(declare-fun d!641441 () Bool)

(assert (=> d!641441 e!1335655))

(declare-fun res!914788 () Bool)

(assert (=> d!641441 (=> (not res!914788) (not e!1335655))))

(declare-fun content!3384 (List!23191) (InoxSet C!11232))

(assert (=> d!641441 (= res!914788 (= (content!3384 lt!790795) ((_ map or) (content!3384 lt!790753) (content!3384 lt!790754))))))

(assert (=> d!641441 (= lt!790795 e!1335654)))

(declare-fun c!338790 () Bool)

(assert (=> d!641441 (= c!338790 ((_ is Nil!23107) lt!790753))))

(assert (=> d!641441 (= (++!6304 lt!790753 lt!790754) lt!790795)))

(declare-fun b!2102933 () Bool)

(declare-fun res!914787 () Bool)

(assert (=> b!2102933 (=> (not res!914787) (not e!1335655))))

(declare-fun size!18058 (List!23191) Int)

(assert (=> b!2102933 (= res!914787 (= (size!18058 lt!790795) (+ (size!18058 lt!790753) (size!18058 lt!790754))))))

(declare-fun b!2102931 () Bool)

(assert (=> b!2102931 (= e!1335654 lt!790754)))

(assert (= (and d!641441 c!338790) b!2102931))

(assert (= (and d!641441 (not c!338790)) b!2102932))

(assert (= (and d!641441 res!914788) b!2102933))

(assert (= (and b!2102933 res!914787) b!2102934))

(declare-fun m!2562249 () Bool)

(assert (=> b!2102932 m!2562249))

(declare-fun m!2562251 () Bool)

(assert (=> d!641441 m!2562251))

(declare-fun m!2562253 () Bool)

(assert (=> d!641441 m!2562253))

(declare-fun m!2562255 () Bool)

(assert (=> d!641441 m!2562255))

(declare-fun m!2562257 () Bool)

(assert (=> b!2102933 m!2562257))

(declare-fun m!2562259 () Bool)

(assert (=> b!2102933 m!2562259))

(declare-fun m!2562261 () Bool)

(assert (=> b!2102933 m!2562261))

(assert (=> b!2102857 d!641441))

(declare-fun d!641443 () Bool)

(declare-fun list!9419 (Conc!7694) List!23191)

(assert (=> d!641443 (= (list!9417 totalInput!418) (list!9419 (c!338772 totalInput!418)))))

(declare-fun bs!440865 () Bool)

(assert (= bs!440865 d!641443))

(declare-fun m!2562263 () Bool)

(assert (=> bs!440865 m!2562263))

(assert (=> b!2102857 d!641443))

(declare-fun d!641445 () Bool)

(assert (=> d!641445 (= (list!9417 input!986) (list!9419 (c!338772 input!986)))))

(declare-fun bs!440866 () Bool)

(assert (= bs!440866 d!641445))

(declare-fun m!2562265 () Bool)

(assert (=> bs!440866 m!2562265))

(assert (=> b!2102857 d!641445))

(declare-fun d!641447 () Bool)

(assert (=> d!641447 (= (list!9417 treated!60) (list!9419 (c!338772 treated!60)))))

(declare-fun bs!440867 () Bool)

(assert (= bs!440867 d!641447))

(declare-fun m!2562267 () Bool)

(assert (=> bs!440867 m!2562267))

(assert (=> b!2102857 d!641447))

(declare-fun d!641449 () Bool)

(assert (=> d!641449 (= (array_inv!2418 (_keys!2496 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))))) (bvsge (size!18052 (_keys!2496 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2102858 d!641449))

(declare-fun d!641451 () Bool)

(assert (=> d!641451 (= (array_inv!2420 (_values!2479 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))))) (bvsge (size!18054 (_values!2479 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2102858 d!641451))

(declare-fun d!641453 () Bool)

(assert (=> d!641453 (= (array_inv!2418 (_keys!2495 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))))) (bvsge (size!18052 (_keys!2495 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2102848 d!641453))

(declare-fun d!641455 () Bool)

(assert (=> d!641455 (= (array_inv!2419 (_values!2478 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))))) (bvsge (size!18053 (_values!2478 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2102848 d!641455))

(declare-fun d!641457 () Bool)

(assert (=> d!641457 (= (list!9417 (_2!12892 lt!790755)) (list!9419 (c!338772 (_2!12892 lt!790755))))))

(declare-fun bs!440868 () Bool)

(assert (= bs!440868 d!641457))

(declare-fun m!2562269 () Bool)

(assert (=> bs!440868 m!2562269))

(assert (=> b!2102867 d!641457))

(declare-fun d!641459 () Bool)

(assert (=> d!641459 (= (list!9417 (_2!12892 lt!790751)) (list!9419 (c!338772 (_2!12892 lt!790751))))))

(declare-fun bs!440869 () Bool)

(assert (= bs!440869 d!641459))

(declare-fun m!2562271 () Bool)

(assert (=> bs!440869 m!2562271))

(assert (=> b!2102867 d!641459))

(declare-fun d!641461 () Bool)

(declare-fun c!338791 () Bool)

(assert (=> d!641461 (= c!338791 ((_ is Node!7694) (c!338772 treated!60)))))

(declare-fun e!1335656 () Bool)

(assert (=> d!641461 (= (inv!30630 (c!338772 treated!60)) e!1335656)))

(declare-fun b!2102935 () Bool)

(assert (=> b!2102935 (= e!1335656 (inv!30637 (c!338772 treated!60)))))

(declare-fun b!2102936 () Bool)

(declare-fun e!1335657 () Bool)

(assert (=> b!2102936 (= e!1335656 e!1335657)))

(declare-fun res!914789 () Bool)

(assert (=> b!2102936 (= res!914789 (not ((_ is Leaf!11233) (c!338772 treated!60))))))

(assert (=> b!2102936 (=> res!914789 e!1335657)))

(declare-fun b!2102937 () Bool)

(assert (=> b!2102937 (= e!1335657 (inv!30638 (c!338772 treated!60)))))

(assert (= (and d!641461 c!338791) b!2102935))

(assert (= (and d!641461 (not c!338791)) b!2102936))

(assert (= (and b!2102936 (not res!914789)) b!2102937))

(declare-fun m!2562273 () Bool)

(assert (=> b!2102935 m!2562273))

(declare-fun m!2562275 () Bool)

(assert (=> b!2102937 m!2562275))

(assert (=> b!2102838 d!641461))

(declare-fun d!641463 () Bool)

(assert (=> d!641463 (= (isEmpty!14250 (list!9417 (_2!12892 lt!790759))) ((_ is Nil!23107) (list!9417 (_2!12892 lt!790759))))))

(assert (=> b!2102868 d!641463))

(declare-fun d!641465 () Bool)

(assert (=> d!641465 (= (list!9417 (_2!12892 lt!790759)) (list!9419 (c!338772 (_2!12892 lt!790759))))))

(declare-fun bs!440870 () Bool)

(assert (= bs!440870 d!641465))

(declare-fun m!2562277 () Bool)

(assert (=> bs!440870 m!2562277))

(assert (=> b!2102868 d!641465))

(declare-fun d!641467 () Bool)

(assert (=> d!641467 (= (inv!30629 (tag!4605 (h!28509 rules!1563))) (= (mod (str.len (value!128929 (tag!4605 (h!28509 rules!1563)))) 2) 0))))

(assert (=> b!2102839 d!641467))

(declare-fun d!641469 () Bool)

(declare-fun res!914792 () Bool)

(declare-fun e!1335660 () Bool)

(assert (=> d!641469 (=> (not res!914792) (not e!1335660))))

(declare-fun semiInverseModEq!1647 (Int Int) Bool)

(assert (=> d!641469 (= res!914792 (semiInverseModEq!1647 (toChars!5685 (transformation!4115 (h!28509 rules!1563))) (toValue!5826 (transformation!4115 (h!28509 rules!1563)))))))

(assert (=> d!641469 (= (inv!30631 (transformation!4115 (h!28509 rules!1563))) e!1335660)))

(declare-fun b!2102940 () Bool)

(declare-fun equivClasses!1574 (Int Int) Bool)

(assert (=> b!2102940 (= e!1335660 (equivClasses!1574 (toChars!5685 (transformation!4115 (h!28509 rules!1563))) (toValue!5826 (transformation!4115 (h!28509 rules!1563)))))))

(assert (= (and d!641469 res!914792) b!2102940))

(declare-fun m!2562279 () Bool)

(assert (=> d!641469 m!2562279))

(declare-fun m!2562281 () Bool)

(assert (=> b!2102940 m!2562281))

(assert (=> b!2102839 d!641469))

(declare-fun d!641471 () Bool)

(assert (=> d!641471 (= (isEmpty!14249 rules!1563) ((_ is Nil!23108) rules!1563))))

(assert (=> b!2102859 d!641471))

(declare-fun d!641473 () Bool)

(assert (=> d!641473 (= (valid!1746 (_3!1716 lt!790758)) (validCacheMapDown!215 (cache!2493 (_3!1716 lt!790758))))))

(declare-fun bs!440871 () Bool)

(assert (= bs!440871 d!641473))

(declare-fun m!2562283 () Bool)

(assert (=> bs!440871 m!2562283))

(assert (=> b!2102850 d!641473))

(declare-fun d!641475 () Bool)

(assert (=> d!641475 (= (valid!1747 cacheUp!562) (validCacheMapUp!217 (cache!2494 cacheUp!562)))))

(declare-fun bs!440872 () Bool)

(assert (= bs!440872 d!641475))

(assert (=> bs!440872 m!2562221))

(assert (=> b!2102840 d!641475))

(declare-fun d!641477 () Bool)

(declare-fun c!338794 () Bool)

(assert (=> d!641477 (= c!338794 ((_ is Node!7695) (c!338773 acc!382)))))

(declare-fun e!1335665 () Bool)

(assert (=> d!641477 (= (inv!30632 (c!338773 acc!382)) e!1335665)))

(declare-fun b!2102947 () Bool)

(declare-fun inv!30639 (Conc!7695) Bool)

(assert (=> b!2102947 (= e!1335665 (inv!30639 (c!338773 acc!382)))))

(declare-fun b!2102948 () Bool)

(declare-fun e!1335666 () Bool)

(assert (=> b!2102948 (= e!1335665 e!1335666)))

(declare-fun res!914795 () Bool)

(assert (=> b!2102948 (= res!914795 (not ((_ is Leaf!11234) (c!338773 acc!382))))))

(assert (=> b!2102948 (=> res!914795 e!1335666)))

(declare-fun b!2102949 () Bool)

(declare-fun inv!30640 (Conc!7695) Bool)

(assert (=> b!2102949 (= e!1335666 (inv!30640 (c!338773 acc!382)))))

(assert (= (and d!641477 c!338794) b!2102947))

(assert (= (and d!641477 (not c!338794)) b!2102948))

(assert (= (and b!2102948 (not res!914795)) b!2102949))

(declare-fun m!2562285 () Bool)

(assert (=> b!2102947 m!2562285))

(declare-fun m!2562287 () Bool)

(assert (=> b!2102949 m!2562287))

(assert (=> b!2102841 d!641477))

(declare-fun lt!790871 () tuple2!22350)

(declare-fun lt!790891 () Option!4842)

(declare-fun b!2102964 () Bool)

(assert (=> b!2102964 (= lt!790871 (lexRec!510 thiss!12889 rules!1563 (_2!12890 (v!27706 lt!790891))))))

(declare-fun e!1335678 () tuple2!22350)

(assert (=> b!2102964 (= e!1335678 (tuple2!22351 (prepend!980 (_1!12892 lt!790871) (_1!12890 (v!27706 lt!790891))) (_2!12892 lt!790871)))))

(declare-fun b!2102965 () Bool)

(declare-fun e!1335677 () tuple2!22350)

(assert (=> b!2102965 (= e!1335677 (tuple2!22351 (BalanceConc!15153 Empty!7695) input!986))))

(declare-fun lt!790885 () tuple2!22350)

(declare-fun b!2102966 () Bool)

(declare-fun lt!790880 () Option!4842)

(assert (=> b!2102966 (= lt!790885 (lexRec!510 thiss!12889 rules!1563 (_2!12890 (v!27706 lt!790880))))))

(assert (=> b!2102966 (= e!1335677 (tuple2!22351 (prepend!980 (_1!12892 lt!790885) (_1!12890 (v!27706 lt!790880))) (_2!12892 lt!790885)))))

(declare-fun e!1335676 () Bool)

(declare-fun b!2102967 () Bool)

(declare-fun lt!790873 () tuple2!22350)

(assert (=> b!2102967 (= e!1335676 (= (list!9417 (_2!12892 lt!790873)) (list!9417 (_2!12892 (lexRec!510 thiss!12889 rules!1563 totalInput!418)))))))

(declare-fun lt!790869 () Option!4842)

(declare-fun lt!790876 () BalanceConc!15150)

(declare-fun b!2102968 () Bool)

(declare-fun e!1335675 () tuple2!22350)

(declare-fun append!673 (BalanceConc!15152 Token!7778) BalanceConc!15152)

(assert (=> b!2102968 (= e!1335675 (lexTailRecV2!710 thiss!12889 rules!1563 totalInput!418 lt!790876 (_2!12890 (v!27706 lt!790869)) (append!673 acc!382 (_1!12890 (v!27706 lt!790869)))))))

(declare-fun lt!790874 () tuple2!22350)

(assert (=> b!2102968 (= lt!790874 (lexRec!510 thiss!12889 rules!1563 (_2!12890 (v!27706 lt!790869))))))

(declare-fun lt!790889 () List!23191)

(assert (=> b!2102968 (= lt!790889 (list!9417 treated!60))))

(declare-fun lt!790888 () List!23191)

(declare-fun charsOf!2579 (Token!7778) BalanceConc!15150)

(assert (=> b!2102968 (= lt!790888 (list!9417 (charsOf!2579 (_1!12890 (v!27706 lt!790869)))))))

(declare-fun lt!790882 () List!23191)

(assert (=> b!2102968 (= lt!790882 (list!9417 (_2!12890 (v!27706 lt!790869))))))

(declare-fun lt!790867 () Unit!37402)

(declare-fun lemmaConcatAssociativity!1325 (List!23191 List!23191 List!23191) Unit!37402)

(assert (=> b!2102968 (= lt!790867 (lemmaConcatAssociativity!1325 lt!790889 lt!790888 lt!790882))))

(assert (=> b!2102968 (= (++!6304 (++!6304 lt!790889 lt!790888) lt!790882) (++!6304 lt!790889 (++!6304 lt!790888 lt!790882)))))

(declare-fun lt!790879 () Unit!37402)

(assert (=> b!2102968 (= lt!790879 lt!790867)))

(assert (=> b!2102968 (= lt!790880 (maxPrefixZipperSequence!845 thiss!12889 rules!1563 input!986))))

(declare-fun c!338803 () Bool)

(assert (=> b!2102968 (= c!338803 ((_ is Some!4841) lt!790880))))

(assert (=> b!2102968 (= (lexRec!510 thiss!12889 rules!1563 input!986) e!1335677)))

(declare-fun lt!790881 () Unit!37402)

(declare-fun Unit!37404 () Unit!37402)

(assert (=> b!2102968 (= lt!790881 Unit!37404)))

(declare-fun lt!790883 () List!23193)

(assert (=> b!2102968 (= lt!790883 (list!9416 acc!382))))

(declare-fun lt!790870 () List!23193)

(assert (=> b!2102968 (= lt!790870 (Cons!23109 (_1!12890 (v!27706 lt!790869)) Nil!23109))))

(declare-fun lt!790878 () List!23193)

(assert (=> b!2102968 (= lt!790878 (list!9416 (_1!12892 lt!790874)))))

(declare-fun lt!790865 () Unit!37402)

(declare-fun lemmaConcatAssociativity!1326 (List!23193 List!23193 List!23193) Unit!37402)

(assert (=> b!2102968 (= lt!790865 (lemmaConcatAssociativity!1326 lt!790883 lt!790870 lt!790878))))

(declare-fun ++!6306 (List!23193 List!23193) List!23193)

(assert (=> b!2102968 (= (++!6306 (++!6306 lt!790883 lt!790870) lt!790878) (++!6306 lt!790883 (++!6306 lt!790870 lt!790878)))))

(declare-fun lt!790864 () Unit!37402)

(assert (=> b!2102968 (= lt!790864 lt!790865)))

(declare-fun lt!790894 () List!23191)

(assert (=> b!2102968 (= lt!790894 (++!6304 (list!9417 treated!60) (list!9417 (charsOf!2579 (_1!12890 (v!27706 lt!790869))))))))

(declare-fun lt!790877 () List!23191)

(assert (=> b!2102968 (= lt!790877 (list!9417 (_2!12890 (v!27706 lt!790869))))))

(declare-fun lt!790896 () List!23193)

(assert (=> b!2102968 (= lt!790896 (list!9416 (append!673 acc!382 (_1!12890 (v!27706 lt!790869)))))))

(declare-fun lt!790886 () Unit!37402)

(declare-fun lemmaLexThenLexPrefix!324 (LexerInterface!3717 List!23192 List!23191 List!23191 List!23193 List!23193 List!23191) Unit!37402)

(assert (=> b!2102968 (= lt!790886 (lemmaLexThenLexPrefix!324 thiss!12889 rules!1563 lt!790894 lt!790877 lt!790896 (list!9416 (_1!12892 lt!790874)) (list!9417 (_2!12892 lt!790874))))))

(assert (=> b!2102968 (= (lexList!1035 thiss!12889 rules!1563 lt!790894) (tuple2!22353 lt!790896 Nil!23107))))

(declare-fun lt!790866 () Unit!37402)

(assert (=> b!2102968 (= lt!790866 lt!790886)))

(declare-fun lt!790892 () BalanceConc!15150)

(declare-fun ++!6307 (BalanceConc!15150 BalanceConc!15150) BalanceConc!15150)

(assert (=> b!2102968 (= lt!790892 (++!6307 treated!60 (charsOf!2579 (_1!12890 (v!27706 lt!790869)))))))

(assert (=> b!2102968 (= lt!790891 (maxPrefixZipperSequence!845 thiss!12889 rules!1563 lt!790892))))

(declare-fun c!338802 () Bool)

(assert (=> b!2102968 (= c!338802 ((_ is Some!4841) lt!790891))))

(assert (=> b!2102968 (= (lexRec!510 thiss!12889 rules!1563 (++!6307 treated!60 (charsOf!2579 (_1!12890 (v!27706 lt!790869))))) e!1335678)))

(declare-fun lt!790890 () Unit!37402)

(declare-fun Unit!37405 () Unit!37402)

(assert (=> b!2102968 (= lt!790890 Unit!37405)))

(assert (=> b!2102968 (= lt!790876 (++!6307 treated!60 (charsOf!2579 (_1!12890 (v!27706 lt!790869)))))))

(declare-fun lt!790895 () List!23191)

(assert (=> b!2102968 (= lt!790895 (list!9417 lt!790876))))

(declare-fun lt!790868 () List!23191)

(assert (=> b!2102968 (= lt!790868 (list!9417 (_2!12890 (v!27706 lt!790869))))))

(declare-fun lt!790875 () Unit!37402)

(assert (=> b!2102968 (= lt!790875 (lemmaConcatTwoListThenFSndIsSuffix!440 lt!790895 lt!790868))))

(assert (=> b!2102968 (isSuffix!539 lt!790868 (++!6304 lt!790895 lt!790868))))

(declare-fun lt!790872 () Unit!37402)

(assert (=> b!2102968 (= lt!790872 lt!790875)))

(declare-fun b!2102969 () Bool)

(assert (=> b!2102969 (= e!1335678 (tuple2!22351 (BalanceConc!15153 Empty!7695) lt!790892))))

(declare-fun d!641479 () Bool)

(assert (=> d!641479 e!1335676))

(declare-fun res!914798 () Bool)

(assert (=> d!641479 (=> (not res!914798) (not e!1335676))))

(assert (=> d!641479 (= res!914798 (= (list!9416 (_1!12892 lt!790873)) (list!9416 (_1!12892 (lexRec!510 thiss!12889 rules!1563 totalInput!418)))))))

(assert (=> d!641479 (= lt!790873 e!1335675)))

(declare-fun c!338801 () Bool)

(assert (=> d!641479 (= c!338801 ((_ is Some!4841) lt!790869))))

(assert (=> d!641479 (= lt!790869 (maxPrefixZipperSequenceV2!376 thiss!12889 rules!1563 input!986 totalInput!418))))

(declare-fun lt!790897 () Unit!37402)

(declare-fun lt!790887 () Unit!37402)

(assert (=> d!641479 (= lt!790897 lt!790887)))

(declare-fun lt!790884 () List!23191)

(declare-fun lt!790893 () List!23191)

(assert (=> d!641479 (isSuffix!539 lt!790884 (++!6304 lt!790893 lt!790884))))

(assert (=> d!641479 (= lt!790887 (lemmaConcatTwoListThenFSndIsSuffix!440 lt!790893 lt!790884))))

(assert (=> d!641479 (= lt!790884 (list!9417 input!986))))

(assert (=> d!641479 (= lt!790893 (list!9417 treated!60))))

(assert (=> d!641479 (= (lexTailRecV2!710 thiss!12889 rules!1563 totalInput!418 treated!60 input!986 acc!382) lt!790873)))

(declare-fun b!2102970 () Bool)

(assert (=> b!2102970 (= e!1335675 (tuple2!22351 acc!382 input!986))))

(assert (= (and d!641479 c!338801) b!2102968))

(assert (= (and d!641479 (not c!338801)) b!2102970))

(assert (= (and b!2102968 c!338803) b!2102966))

(assert (= (and b!2102968 (not c!338803)) b!2102965))

(assert (= (and b!2102968 c!338802) b!2102964))

(assert (= (and b!2102968 (not c!338802)) b!2102969))

(assert (= (and d!641479 res!914798) b!2102967))

(declare-fun m!2562289 () Bool)

(assert (=> b!2102967 m!2562289))

(assert (=> b!2102967 m!2562173))

(declare-fun m!2562291 () Bool)

(assert (=> b!2102967 m!2562291))

(declare-fun m!2562293 () Bool)

(assert (=> d!641479 m!2562293))

(declare-fun m!2562295 () Bool)

(assert (=> d!641479 m!2562295))

(assert (=> d!641479 m!2562161))

(assert (=> d!641479 m!2562173))

(assert (=> d!641479 m!2562159))

(declare-fun m!2562297 () Bool)

(assert (=> d!641479 m!2562297))

(assert (=> d!641479 m!2562293))

(declare-fun m!2562299 () Bool)

(assert (=> d!641479 m!2562299))

(assert (=> d!641479 m!2562239))

(declare-fun m!2562301 () Bool)

(assert (=> d!641479 m!2562301))

(declare-fun m!2562303 () Bool)

(assert (=> b!2102966 m!2562303))

(declare-fun m!2562305 () Bool)

(assert (=> b!2102966 m!2562305))

(declare-fun m!2562307 () Bool)

(assert (=> b!2102968 m!2562307))

(declare-fun m!2562309 () Bool)

(assert (=> b!2102968 m!2562309))

(declare-fun m!2562311 () Bool)

(assert (=> b!2102968 m!2562311))

(declare-fun m!2562313 () Bool)

(assert (=> b!2102968 m!2562313))

(declare-fun m!2562315 () Bool)

(assert (=> b!2102968 m!2562315))

(assert (=> b!2102968 m!2562161))

(declare-fun m!2562317 () Bool)

(assert (=> b!2102968 m!2562317))

(declare-fun m!2562319 () Bool)

(assert (=> b!2102968 m!2562319))

(assert (=> b!2102968 m!2562309))

(declare-fun m!2562321 () Bool)

(assert (=> b!2102968 m!2562321))

(declare-fun m!2562323 () Bool)

(assert (=> b!2102968 m!2562323))

(assert (=> b!2102968 m!2562309))

(declare-fun m!2562325 () Bool)

(assert (=> b!2102968 m!2562325))

(declare-fun m!2562327 () Bool)

(assert (=> b!2102968 m!2562327))

(assert (=> b!2102968 m!2562175))

(declare-fun m!2562329 () Bool)

(assert (=> b!2102968 m!2562329))

(declare-fun m!2562331 () Bool)

(assert (=> b!2102968 m!2562331))

(declare-fun m!2562333 () Bool)

(assert (=> b!2102968 m!2562333))

(declare-fun m!2562335 () Bool)

(assert (=> b!2102968 m!2562335))

(declare-fun m!2562337 () Bool)

(assert (=> b!2102968 m!2562337))

(declare-fun m!2562339 () Bool)

(assert (=> b!2102968 m!2562339))

(declare-fun m!2562341 () Bool)

(assert (=> b!2102968 m!2562341))

(declare-fun m!2562343 () Bool)

(assert (=> b!2102968 m!2562343))

(assert (=> b!2102968 m!2562317))

(assert (=> b!2102968 m!2562343))

(declare-fun m!2562345 () Bool)

(assert (=> b!2102968 m!2562345))

(assert (=> b!2102968 m!2562333))

(declare-fun m!2562347 () Bool)

(assert (=> b!2102968 m!2562347))

(assert (=> b!2102968 m!2562161))

(assert (=> b!2102968 m!2562315))

(declare-fun m!2562349 () Bool)

(assert (=> b!2102968 m!2562349))

(declare-fun m!2562351 () Bool)

(assert (=> b!2102968 m!2562351))

(assert (=> b!2102968 m!2562343))

(assert (=> b!2102968 m!2562337))

(assert (=> b!2102968 m!2562327))

(assert (=> b!2102968 m!2562329))

(declare-fun m!2562353 () Bool)

(assert (=> b!2102968 m!2562353))

(assert (=> b!2102968 m!2562143))

(assert (=> b!2102968 m!2562341))

(declare-fun m!2562355 () Bool)

(assert (=> b!2102968 m!2562355))

(declare-fun m!2562357 () Bool)

(assert (=> b!2102968 m!2562357))

(declare-fun m!2562359 () Bool)

(assert (=> b!2102968 m!2562359))

(assert (=> b!2102968 m!2562331))

(declare-fun m!2562361 () Bool)

(assert (=> b!2102968 m!2562361))

(assert (=> b!2102968 m!2562307))

(declare-fun m!2562363 () Bool)

(assert (=> b!2102968 m!2562363))

(declare-fun m!2562365 () Bool)

(assert (=> b!2102968 m!2562365))

(declare-fun m!2562367 () Bool)

(assert (=> b!2102964 m!2562367))

(declare-fun m!2562369 () Bool)

(assert (=> b!2102964 m!2562369))

(assert (=> b!2102860 d!641479))

(declare-fun d!641481 () Bool)

(declare-fun e!1335681 () Bool)

(assert (=> d!641481 e!1335681))

(declare-fun res!914801 () Bool)

(assert (=> d!641481 (=> res!914801 e!1335681)))

(declare-fun lt!790900 () Bool)

(assert (=> d!641481 (= res!914801 (not lt!790900))))

(declare-fun drop!1156 (List!23191 Int) List!23191)

(assert (=> d!641481 (= lt!790900 (= lt!790754 (drop!1156 lt!790756 (- (size!18058 lt!790756) (size!18058 lt!790754)))))))

(assert (=> d!641481 (= (isSuffix!539 lt!790754 lt!790756) lt!790900)))

(declare-fun b!2102973 () Bool)

(assert (=> b!2102973 (= e!1335681 (>= (size!18058 lt!790756) (size!18058 lt!790754)))))

(assert (= (and d!641481 (not res!914801)) b!2102973))

(declare-fun m!2562371 () Bool)

(assert (=> d!641481 m!2562371))

(assert (=> d!641481 m!2562261))

(declare-fun m!2562373 () Bool)

(assert (=> d!641481 m!2562373))

(assert (=> b!2102973 m!2562371))

(assert (=> b!2102973 m!2562261))

(assert (=> b!2102851 d!641481))

(declare-fun d!641483 () Bool)

(declare-fun e!1335682 () Bool)

(assert (=> d!641483 e!1335682))

(declare-fun res!914802 () Bool)

(assert (=> d!641483 (=> res!914802 e!1335682)))

(declare-fun lt!790901 () Bool)

(assert (=> d!641483 (= res!914802 (not lt!790901))))

(assert (=> d!641483 (= lt!790901 (= lt!790754 (drop!1156 lt!790750 (- (size!18058 lt!790750) (size!18058 lt!790754)))))))

(assert (=> d!641483 (= (isSuffix!539 lt!790754 lt!790750) lt!790901)))

(declare-fun b!2102974 () Bool)

(assert (=> b!2102974 (= e!1335682 (>= (size!18058 lt!790750) (size!18058 lt!790754)))))

(assert (= (and d!641483 (not res!914802)) b!2102974))

(declare-fun m!2562375 () Bool)

(assert (=> d!641483 m!2562375))

(assert (=> d!641483 m!2562261))

(declare-fun m!2562377 () Bool)

(assert (=> d!641483 m!2562377))

(assert (=> b!2102974 m!2562375))

(assert (=> b!2102974 m!2562261))

(assert (=> b!2102851 d!641483))

(declare-fun d!641485 () Bool)

(assert (=> d!641485 (isSuffix!539 lt!790754 (++!6304 lt!790753 lt!790754))))

(declare-fun lt!790904 () Unit!37402)

(declare-fun choose!12623 (List!23191 List!23191) Unit!37402)

(assert (=> d!641485 (= lt!790904 (choose!12623 lt!790753 lt!790754))))

(assert (=> d!641485 (= (lemmaConcatTwoListThenFSndIsSuffix!440 lt!790753 lt!790754) lt!790904)))

(declare-fun bs!440873 () Bool)

(assert (= bs!440873 d!641485))

(assert (=> bs!440873 m!2562155))

(assert (=> bs!440873 m!2562155))

(declare-fun m!2562379 () Bool)

(assert (=> bs!440873 m!2562379))

(declare-fun m!2562381 () Bool)

(assert (=> bs!440873 m!2562381))

(assert (=> b!2102851 d!641485))

(declare-fun d!641487 () Bool)

(assert (=> d!641487 (= (list!9416 (++!6305 acc!382 (_1!12892 lt!790751))) (list!9418 (c!338773 (++!6305 acc!382 (_1!12892 lt!790751)))))))

(declare-fun bs!440874 () Bool)

(assert (= bs!440874 d!641487))

(declare-fun m!2562383 () Bool)

(assert (=> bs!440874 m!2562383))

(assert (=> b!2102862 d!641487))

(declare-fun d!641489 () Bool)

(assert (=> d!641489 (= (list!9416 (_1!12892 lt!790755)) (list!9418 (c!338773 (_1!12892 lt!790755))))))

(declare-fun bs!440875 () Bool)

(assert (= bs!440875 d!641489))

(declare-fun m!2562385 () Bool)

(assert (=> bs!440875 m!2562385))

(assert (=> b!2102862 d!641489))

(declare-fun b!2102975 () Bool)

(declare-fun e!1335686 () Bool)

(declare-fun lt!790905 () tuple2!22350)

(assert (=> b!2102975 (= e!1335686 (= (list!9417 (_2!12892 lt!790905)) (list!9417 totalInput!418)))))

(declare-fun b!2102976 () Bool)

(declare-fun e!1335684 () tuple2!22350)

(assert (=> b!2102976 (= e!1335684 (tuple2!22351 (BalanceConc!15153 Empty!7695) totalInput!418))))

(declare-fun b!2102977 () Bool)

(declare-fun e!1335685 () Bool)

(assert (=> b!2102977 (= e!1335685 (not (isEmpty!14251 (_1!12892 lt!790905))))))

(declare-fun b!2102979 () Bool)

(assert (=> b!2102979 (= e!1335686 e!1335685)))

(declare-fun res!914804 () Bool)

(assert (=> b!2102979 (= res!914804 (< (size!18056 (_2!12892 lt!790905)) (size!18056 totalInput!418)))))

(assert (=> b!2102979 (=> (not res!914804) (not e!1335685))))

(declare-fun b!2102980 () Bool)

(declare-fun lt!790907 () tuple2!22350)

(declare-fun lt!790906 () Option!4842)

(assert (=> b!2102980 (= e!1335684 (tuple2!22351 (prepend!980 (_1!12892 lt!790907) (_1!12890 (v!27706 lt!790906))) (_2!12892 lt!790907)))))

(assert (=> b!2102980 (= lt!790907 (lexRec!510 thiss!12889 rules!1563 (_2!12890 (v!27706 lt!790906))))))

(declare-fun b!2102981 () Bool)

(declare-fun res!914805 () Bool)

(declare-fun e!1335683 () Bool)

(assert (=> b!2102981 (=> (not res!914805) (not e!1335683))))

(assert (=> b!2102981 (= res!914805 (= (list!9416 (_1!12892 lt!790905)) (_1!12893 (lexList!1035 thiss!12889 rules!1563 (list!9417 totalInput!418)))))))

(declare-fun b!2102978 () Bool)

(assert (=> b!2102978 (= e!1335683 (= (list!9417 (_2!12892 lt!790905)) (_2!12893 (lexList!1035 thiss!12889 rules!1563 (list!9417 totalInput!418)))))))

(declare-fun d!641491 () Bool)

(assert (=> d!641491 e!1335683))

(declare-fun res!914803 () Bool)

(assert (=> d!641491 (=> (not res!914803) (not e!1335683))))

(assert (=> d!641491 (= res!914803 e!1335686)))

(declare-fun c!338805 () Bool)

(assert (=> d!641491 (= c!338805 (> (size!18057 (_1!12892 lt!790905)) 0))))

(assert (=> d!641491 (= lt!790905 e!1335684)))

(declare-fun c!338804 () Bool)

(assert (=> d!641491 (= c!338804 ((_ is Some!4841) lt!790906))))

(assert (=> d!641491 (= lt!790906 (maxPrefixZipperSequence!845 thiss!12889 rules!1563 totalInput!418))))

(assert (=> d!641491 (= (lexRec!510 thiss!12889 rules!1563 totalInput!418) lt!790905)))

(assert (= (and d!641491 c!338804) b!2102980))

(assert (= (and d!641491 (not c!338804)) b!2102976))

(assert (= (and d!641491 c!338805) b!2102979))

(assert (= (and d!641491 (not c!338805)) b!2102975))

(assert (= (and b!2102979 res!914804) b!2102977))

(assert (= (and d!641491 res!914803) b!2102981))

(assert (= (and b!2102981 res!914805) b!2102978))

(declare-fun m!2562387 () Bool)

(assert (=> b!2102980 m!2562387))

(declare-fun m!2562389 () Bool)

(assert (=> b!2102980 m!2562389))

(declare-fun m!2562391 () Bool)

(assert (=> b!2102978 m!2562391))

(assert (=> b!2102978 m!2562157))

(assert (=> b!2102978 m!2562157))

(declare-fun m!2562393 () Bool)

(assert (=> b!2102978 m!2562393))

(assert (=> b!2102975 m!2562391))

(assert (=> b!2102975 m!2562157))

(declare-fun m!2562395 () Bool)

(assert (=> b!2102979 m!2562395))

(declare-fun m!2562397 () Bool)

(assert (=> b!2102979 m!2562397))

(declare-fun m!2562399 () Bool)

(assert (=> d!641491 m!2562399))

(declare-fun m!2562401 () Bool)

(assert (=> d!641491 m!2562401))

(declare-fun m!2562403 () Bool)

(assert (=> b!2102977 m!2562403))

(declare-fun m!2562405 () Bool)

(assert (=> b!2102981 m!2562405))

(assert (=> b!2102981 m!2562157))

(assert (=> b!2102981 m!2562157))

(assert (=> b!2102981 m!2562393))

(assert (=> b!2102862 d!641491))

(declare-fun b!2102982 () Bool)

(declare-fun e!1335690 () Bool)

(declare-fun lt!790908 () tuple2!22350)

(assert (=> b!2102982 (= e!1335690 (= (list!9417 (_2!12892 lt!790908)) (list!9417 input!986)))))

(declare-fun b!2102983 () Bool)

(declare-fun e!1335688 () tuple2!22350)

(assert (=> b!2102983 (= e!1335688 (tuple2!22351 (BalanceConc!15153 Empty!7695) input!986))))

(declare-fun b!2102984 () Bool)

(declare-fun e!1335689 () Bool)

(assert (=> b!2102984 (= e!1335689 (not (isEmpty!14251 (_1!12892 lt!790908))))))

(declare-fun b!2102986 () Bool)

(assert (=> b!2102986 (= e!1335690 e!1335689)))

(declare-fun res!914807 () Bool)

(assert (=> b!2102986 (= res!914807 (< (size!18056 (_2!12892 lt!790908)) (size!18056 input!986)))))

(assert (=> b!2102986 (=> (not res!914807) (not e!1335689))))

(declare-fun b!2102987 () Bool)

(declare-fun lt!790910 () tuple2!22350)

(declare-fun lt!790909 () Option!4842)

(assert (=> b!2102987 (= e!1335688 (tuple2!22351 (prepend!980 (_1!12892 lt!790910) (_1!12890 (v!27706 lt!790909))) (_2!12892 lt!790910)))))

(assert (=> b!2102987 (= lt!790910 (lexRec!510 thiss!12889 rules!1563 (_2!12890 (v!27706 lt!790909))))))

(declare-fun b!2102988 () Bool)

(declare-fun res!914808 () Bool)

(declare-fun e!1335687 () Bool)

(assert (=> b!2102988 (=> (not res!914808) (not e!1335687))))

(assert (=> b!2102988 (= res!914808 (= (list!9416 (_1!12892 lt!790908)) (_1!12893 (lexList!1035 thiss!12889 rules!1563 (list!9417 input!986)))))))

(declare-fun b!2102985 () Bool)

(assert (=> b!2102985 (= e!1335687 (= (list!9417 (_2!12892 lt!790908)) (_2!12893 (lexList!1035 thiss!12889 rules!1563 (list!9417 input!986)))))))

(declare-fun d!641493 () Bool)

(assert (=> d!641493 e!1335687))

(declare-fun res!914806 () Bool)

(assert (=> d!641493 (=> (not res!914806) (not e!1335687))))

(assert (=> d!641493 (= res!914806 e!1335690)))

(declare-fun c!338807 () Bool)

(assert (=> d!641493 (= c!338807 (> (size!18057 (_1!12892 lt!790908)) 0))))

(assert (=> d!641493 (= lt!790908 e!1335688)))

(declare-fun c!338806 () Bool)

(assert (=> d!641493 (= c!338806 ((_ is Some!4841) lt!790909))))

(assert (=> d!641493 (= lt!790909 (maxPrefixZipperSequence!845 thiss!12889 rules!1563 input!986))))

(assert (=> d!641493 (= (lexRec!510 thiss!12889 rules!1563 input!986) lt!790908)))

(assert (= (and d!641493 c!338806) b!2102987))

(assert (= (and d!641493 (not c!338806)) b!2102983))

(assert (= (and d!641493 c!338807) b!2102986))

(assert (= (and d!641493 (not c!338807)) b!2102982))

(assert (= (and b!2102986 res!914807) b!2102984))

(assert (= (and d!641493 res!914806) b!2102988))

(assert (= (and b!2102988 res!914808) b!2102985))

(declare-fun m!2562407 () Bool)

(assert (=> b!2102987 m!2562407))

(declare-fun m!2562409 () Bool)

(assert (=> b!2102987 m!2562409))

(declare-fun m!2562411 () Bool)

(assert (=> b!2102985 m!2562411))

(assert (=> b!2102985 m!2562159))

(assert (=> b!2102985 m!2562159))

(declare-fun m!2562413 () Bool)

(assert (=> b!2102985 m!2562413))

(assert (=> b!2102982 m!2562411))

(assert (=> b!2102982 m!2562159))

(declare-fun m!2562415 () Bool)

(assert (=> b!2102986 m!2562415))

(declare-fun m!2562417 () Bool)

(assert (=> b!2102986 m!2562417))

(declare-fun m!2562419 () Bool)

(assert (=> d!641493 m!2562419))

(assert (=> d!641493 m!2562313))

(declare-fun m!2562421 () Bool)

(assert (=> b!2102984 m!2562421))

(declare-fun m!2562423 () Bool)

(assert (=> b!2102988 m!2562423))

(assert (=> b!2102988 m!2562159))

(assert (=> b!2102988 m!2562159))

(assert (=> b!2102988 m!2562413))

(assert (=> b!2102862 d!641493))

(declare-fun b!2103000 () Bool)

(declare-fun lt!790913 () BalanceConc!15152)

(declare-fun e!1335693 () Bool)

(assert (=> b!2103000 (= e!1335693 (= (list!9416 lt!790913) (++!6306 (list!9416 acc!382) (list!9416 (_1!12892 lt!790751)))))))

(declare-fun b!2102997 () Bool)

(declare-fun res!914818 () Bool)

(assert (=> b!2102997 (=> (not res!914818) (not e!1335693))))

(declare-fun ++!6308 (Conc!7695 Conc!7695) Conc!7695)

(assert (=> b!2102997 (= res!914818 (isBalanced!2421 (++!6308 (c!338773 acc!382) (c!338773 (_1!12892 lt!790751)))))))

(declare-fun b!2102999 () Bool)

(declare-fun res!914820 () Bool)

(assert (=> b!2102999 (=> (not res!914820) (not e!1335693))))

(declare-fun height!1229 (Conc!7695) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2102999 (= res!914820 (>= (height!1229 (++!6308 (c!338773 acc!382) (c!338773 (_1!12892 lt!790751)))) (max!0 (height!1229 (c!338773 acc!382)) (height!1229 (c!338773 (_1!12892 lt!790751))))))))

(declare-fun d!641495 () Bool)

(assert (=> d!641495 e!1335693))

(declare-fun res!914819 () Bool)

(assert (=> d!641495 (=> (not res!914819) (not e!1335693))))

(declare-fun appendAssocInst!590 (Conc!7695 Conc!7695) Bool)

(assert (=> d!641495 (= res!914819 (appendAssocInst!590 (c!338773 acc!382) (c!338773 (_1!12892 lt!790751))))))

(assert (=> d!641495 (= lt!790913 (BalanceConc!15153 (++!6308 (c!338773 acc!382) (c!338773 (_1!12892 lt!790751)))))))

(assert (=> d!641495 (= (++!6305 acc!382 (_1!12892 lt!790751)) lt!790913)))

(declare-fun b!2102998 () Bool)

(declare-fun res!914817 () Bool)

(assert (=> b!2102998 (=> (not res!914817) (not e!1335693))))

(assert (=> b!2102998 (= res!914817 (<= (height!1229 (++!6308 (c!338773 acc!382) (c!338773 (_1!12892 lt!790751)))) (+ (max!0 (height!1229 (c!338773 acc!382)) (height!1229 (c!338773 (_1!12892 lt!790751)))) 1)))))

(assert (= (and d!641495 res!914819) b!2102997))

(assert (= (and b!2102997 res!914818) b!2102998))

(assert (= (and b!2102998 res!914817) b!2102999))

(assert (= (and b!2102999 res!914820) b!2103000))

(declare-fun m!2562425 () Bool)

(assert (=> d!641495 m!2562425))

(declare-fun m!2562427 () Bool)

(assert (=> d!641495 m!2562427))

(assert (=> b!2102997 m!2562427))

(assert (=> b!2102997 m!2562427))

(declare-fun m!2562429 () Bool)

(assert (=> b!2102997 m!2562429))

(assert (=> b!2102998 m!2562427))

(declare-fun m!2562431 () Bool)

(assert (=> b!2102998 m!2562431))

(declare-fun m!2562433 () Bool)

(assert (=> b!2102998 m!2562433))

(assert (=> b!2102998 m!2562431))

(declare-fun m!2562435 () Bool)

(assert (=> b!2102998 m!2562435))

(assert (=> b!2102998 m!2562427))

(declare-fun m!2562437 () Bool)

(assert (=> b!2102998 m!2562437))

(assert (=> b!2102998 m!2562433))

(assert (=> b!2102999 m!2562427))

(assert (=> b!2102999 m!2562431))

(assert (=> b!2102999 m!2562433))

(assert (=> b!2102999 m!2562431))

(assert (=> b!2102999 m!2562435))

(assert (=> b!2102999 m!2562427))

(assert (=> b!2102999 m!2562437))

(assert (=> b!2102999 m!2562433))

(declare-fun m!2562439 () Bool)

(assert (=> b!2103000 m!2562439))

(assert (=> b!2103000 m!2562143))

(declare-fun m!2562441 () Bool)

(assert (=> b!2103000 m!2562441))

(assert (=> b!2103000 m!2562143))

(assert (=> b!2103000 m!2562441))

(declare-fun m!2562443 () Bool)

(assert (=> b!2103000 m!2562443))

(assert (=> b!2102862 d!641495))

(declare-fun b!2103011 () Bool)

(declare-fun b_free!60193 () Bool)

(declare-fun b_next!60897 () Bool)

(assert (=> b!2103011 (= b_free!60193 (not b_next!60897))))

(declare-fun tp!636147 () Bool)

(declare-fun b_and!169755 () Bool)

(assert (=> b!2103011 (= tp!636147 b_and!169755)))

(declare-fun b_free!60195 () Bool)

(declare-fun b_next!60899 () Bool)

(assert (=> b!2103011 (= b_free!60195 (not b_next!60899))))

(declare-fun tp!636150 () Bool)

(declare-fun b_and!169757 () Bool)

(assert (=> b!2103011 (= tp!636150 b_and!169757)))

(declare-fun e!1335702 () Bool)

(assert (=> b!2103011 (= e!1335702 (and tp!636147 tp!636150))))

(declare-fun b!2103010 () Bool)

(declare-fun tp!636149 () Bool)

(declare-fun e!1335705 () Bool)

(assert (=> b!2103010 (= e!1335705 (and tp!636149 (inv!30629 (tag!4605 (h!28509 (t!195685 rules!1563)))) (inv!30631 (transformation!4115 (h!28509 (t!195685 rules!1563)))) e!1335702))))

(declare-fun b!2103009 () Bool)

(declare-fun e!1335703 () Bool)

(declare-fun tp!636148 () Bool)

(assert (=> b!2103009 (= e!1335703 (and e!1335705 tp!636148))))

(assert (=> b!2102854 (= tp!636123 e!1335703)))

(assert (= b!2103010 b!2103011))

(assert (= b!2103009 b!2103010))

(assert (= (and b!2102854 ((_ is Cons!23108) (t!195685 rules!1563))) b!2103009))

(declare-fun m!2562445 () Bool)

(assert (=> b!2103010 m!2562445))

(declare-fun m!2562447 () Bool)

(assert (=> b!2103010 m!2562447))

(declare-fun e!1335714 () Bool)

(assert (=> b!2102844 (= tp!636127 e!1335714)))

(declare-fun b!2103020 () Bool)

(declare-fun e!1335713 () Bool)

(declare-fun tp!636160 () Bool)

(assert (=> b!2103020 (= e!1335713 tp!636160)))

(declare-fun setIsEmpty!13664 () Bool)

(declare-fun setRes!13664 () Bool)

(assert (=> setIsEmpty!13664 setRes!13664))

(declare-fun setElem!13664 () Context!2226)

(declare-fun setNonEmpty!13664 () Bool)

(declare-fun e!1335712 () Bool)

(declare-fun tp!636161 () Bool)

(declare-fun inv!30641 (Context!2226) Bool)

(assert (=> setNonEmpty!13664 (= setRes!13664 (and tp!636161 (inv!30641 setElem!13664) e!1335712))))

(declare-fun setRest!13664 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13664 (= (_2!12889 (h!28507 mapDefault!10657)) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13664 true) setRest!13664))))

(declare-fun b!2103021 () Bool)

(declare-fun tp!636159 () Bool)

(assert (=> b!2103021 (= e!1335712 tp!636159)))

(declare-fun tp!636162 () Bool)

(declare-fun tp_is_empty!9357 () Bool)

(declare-fun b!2103022 () Bool)

(assert (=> b!2103022 (= e!1335714 (and (inv!30641 (_1!12888 (_1!12889 (h!28507 mapDefault!10657)))) e!1335713 tp_is_empty!9357 setRes!13664 tp!636162))))

(declare-fun condSetEmpty!13664 () Bool)

(assert (=> b!2103022 (= condSetEmpty!13664 (= (_2!12889 (h!28507 mapDefault!10657)) ((as const (Array Context!2226 Bool)) false)))))

(assert (= b!2103022 b!2103020))

(assert (= (and b!2103022 condSetEmpty!13664) setIsEmpty!13664))

(assert (= (and b!2103022 (not condSetEmpty!13664)) setNonEmpty!13664))

(assert (= setNonEmpty!13664 b!2103021))

(assert (= (and b!2102844 ((_ is Cons!23106) mapDefault!10657)) b!2103022))

(declare-fun m!2562449 () Bool)

(assert (=> setNonEmpty!13664 m!2562449))

(declare-fun m!2562451 () Bool)

(assert (=> b!2103022 m!2562451))

(declare-fun b!2103031 () Bool)

(declare-fun tp!636171 () Bool)

(declare-fun e!1335719 () Bool)

(declare-fun tp!636169 () Bool)

(assert (=> b!2103031 (= e!1335719 (and (inv!30630 (left!18094 (c!338772 totalInput!418))) tp!636171 (inv!30630 (right!18424 (c!338772 totalInput!418))) tp!636169))))

(declare-fun b!2103033 () Bool)

(declare-fun e!1335720 () Bool)

(declare-fun tp!636170 () Bool)

(assert (=> b!2103033 (= e!1335720 tp!636170)))

(declare-fun b!2103032 () Bool)

(declare-fun inv!30642 (IArray!15393) Bool)

(assert (=> b!2103032 (= e!1335719 (and (inv!30642 (xs!10636 (c!338772 totalInput!418))) e!1335720))))

(assert (=> b!2102864 (= tp!636120 (and (inv!30630 (c!338772 totalInput!418)) e!1335719))))

(assert (= (and b!2102864 ((_ is Node!7694) (c!338772 totalInput!418))) b!2103031))

(assert (= b!2103032 b!2103033))

(assert (= (and b!2102864 ((_ is Leaf!11233) (c!338772 totalInput!418))) b!2103032))

(declare-fun m!2562453 () Bool)

(assert (=> b!2103031 m!2562453))

(declare-fun m!2562455 () Bool)

(assert (=> b!2103031 m!2562455))

(declare-fun m!2562457 () Bool)

(assert (=> b!2103032 m!2562457))

(assert (=> b!2102864 m!2562103))

(declare-fun b!2103034 () Bool)

(declare-fun tp!636172 () Bool)

(declare-fun e!1335721 () Bool)

(declare-fun tp!636174 () Bool)

(assert (=> b!2103034 (= e!1335721 (and (inv!30630 (left!18094 (c!338772 input!986))) tp!636174 (inv!30630 (right!18424 (c!338772 input!986))) tp!636172))))

(declare-fun b!2103036 () Bool)

(declare-fun e!1335722 () Bool)

(declare-fun tp!636173 () Bool)

(assert (=> b!2103036 (= e!1335722 tp!636173)))

(declare-fun b!2103035 () Bool)

(assert (=> b!2103035 (= e!1335721 (and (inv!30642 (xs!10636 (c!338772 input!986))) e!1335722))))

(assert (=> b!2102866 (= tp!636117 (and (inv!30630 (c!338772 input!986)) e!1335721))))

(assert (= (and b!2102866 ((_ is Node!7694) (c!338772 input!986))) b!2103034))

(assert (= b!2103035 b!2103036))

(assert (= (and b!2102866 ((_ is Leaf!11233) (c!338772 input!986))) b!2103035))

(declare-fun m!2562459 () Bool)

(assert (=> b!2103034 m!2562459))

(declare-fun m!2562461 () Bool)

(assert (=> b!2103034 m!2562461))

(declare-fun m!2562463 () Bool)

(assert (=> b!2103035 m!2562463))

(assert (=> b!2102866 m!2562097))

(declare-fun e!1335725 () Bool)

(assert (=> b!2102858 (= tp!636133 e!1335725)))

(declare-fun b!2103037 () Bool)

(declare-fun e!1335724 () Bool)

(declare-fun tp!636176 () Bool)

(assert (=> b!2103037 (= e!1335724 tp!636176)))

(declare-fun setIsEmpty!13665 () Bool)

(declare-fun setRes!13665 () Bool)

(assert (=> setIsEmpty!13665 setRes!13665))

(declare-fun e!1335723 () Bool)

(declare-fun setNonEmpty!13665 () Bool)

(declare-fun setElem!13665 () Context!2226)

(declare-fun tp!636177 () Bool)

(assert (=> setNonEmpty!13665 (= setRes!13665 (and tp!636177 (inv!30641 setElem!13665) e!1335723))))

(declare-fun setRest!13665 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13665 (= (_2!12889 (h!28507 (zeroValue!2457 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13665 true) setRest!13665))))

(declare-fun b!2103038 () Bool)

(declare-fun tp!636175 () Bool)

(assert (=> b!2103038 (= e!1335723 tp!636175)))

(declare-fun b!2103039 () Bool)

(declare-fun tp!636178 () Bool)

(assert (=> b!2103039 (= e!1335725 (and (inv!30641 (_1!12888 (_1!12889 (h!28507 (zeroValue!2457 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562)))))))))) e!1335724 tp_is_empty!9357 setRes!13665 tp!636178))))

(declare-fun condSetEmpty!13665 () Bool)

(assert (=> b!2103039 (= condSetEmpty!13665 (= (_2!12889 (h!28507 (zeroValue!2457 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562)))))))) ((as const (Array Context!2226 Bool)) false)))))

(assert (= b!2103039 b!2103037))

(assert (= (and b!2103039 condSetEmpty!13665) setIsEmpty!13665))

(assert (= (and b!2103039 (not condSetEmpty!13665)) setNonEmpty!13665))

(assert (= setNonEmpty!13665 b!2103038))

(assert (= (and b!2102858 ((_ is Cons!23106) (zeroValue!2457 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562)))))))) b!2103039))

(declare-fun m!2562465 () Bool)

(assert (=> setNonEmpty!13665 m!2562465))

(declare-fun m!2562467 () Bool)

(assert (=> b!2103039 m!2562467))

(declare-fun e!1335728 () Bool)

(assert (=> b!2102858 (= tp!636135 e!1335728)))

(declare-fun b!2103040 () Bool)

(declare-fun e!1335727 () Bool)

(declare-fun tp!636180 () Bool)

(assert (=> b!2103040 (= e!1335727 tp!636180)))

(declare-fun setIsEmpty!13666 () Bool)

(declare-fun setRes!13666 () Bool)

(assert (=> setIsEmpty!13666 setRes!13666))

(declare-fun e!1335726 () Bool)

(declare-fun setElem!13666 () Context!2226)

(declare-fun setNonEmpty!13666 () Bool)

(declare-fun tp!636181 () Bool)

(assert (=> setNonEmpty!13666 (= setRes!13666 (and tp!636181 (inv!30641 setElem!13666) e!1335726))))

(declare-fun setRest!13666 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13666 (= (_2!12889 (h!28507 (minValue!2457 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13666 true) setRest!13666))))

(declare-fun b!2103041 () Bool)

(declare-fun tp!636179 () Bool)

(assert (=> b!2103041 (= e!1335726 tp!636179)))

(declare-fun b!2103042 () Bool)

(declare-fun tp!636182 () Bool)

(assert (=> b!2103042 (= e!1335728 (and (inv!30641 (_1!12888 (_1!12889 (h!28507 (minValue!2457 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562)))))))))) e!1335727 tp_is_empty!9357 setRes!13666 tp!636182))))

(declare-fun condSetEmpty!13666 () Bool)

(assert (=> b!2103042 (= condSetEmpty!13666 (= (_2!12889 (h!28507 (minValue!2457 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562)))))))) ((as const (Array Context!2226 Bool)) false)))))

(assert (= b!2103042 b!2103040))

(assert (= (and b!2103042 condSetEmpty!13666) setIsEmpty!13666))

(assert (= (and b!2103042 (not condSetEmpty!13666)) setNonEmpty!13666))

(assert (= setNonEmpty!13666 b!2103041))

(assert (= (and b!2102858 ((_ is Cons!23106) (minValue!2457 (v!27704 (underlying!4593 (v!27705 (underlying!4594 (cache!2494 cacheUp!562)))))))) b!2103042))

(declare-fun m!2562469 () Bool)

(assert (=> setNonEmpty!13666 m!2562469))

(declare-fun m!2562471 () Bool)

(assert (=> b!2103042 m!2562471))

(declare-fun e!1335735 () Bool)

(assert (=> b!2102848 (= tp!636132 e!1335735)))

(declare-fun setIsEmpty!13669 () Bool)

(declare-fun setRes!13669 () Bool)

(assert (=> setIsEmpty!13669 setRes!13669))

(declare-fun tp!636196 () Bool)

(declare-fun setNonEmpty!13669 () Bool)

(declare-fun e!1335736 () Bool)

(declare-fun setElem!13669 () Context!2226)

(assert (=> setNonEmpty!13669 (= setRes!13669 (and tp!636196 (inv!30641 setElem!13669) e!1335736))))

(declare-fun setRest!13669 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13669 (= (_2!12887 (h!28505 (zeroValue!2456 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13669 true) setRest!13669))))

(declare-fun b!2103051 () Bool)

(declare-fun tp!636195 () Bool)

(assert (=> b!2103051 (= e!1335736 tp!636195)))

(declare-fun b!2103052 () Bool)

(declare-fun e!1335737 () Bool)

(declare-fun tp!636194 () Bool)

(assert (=> b!2103052 (= e!1335737 tp!636194)))

(declare-fun b!2103053 () Bool)

(declare-fun tp!636197 () Bool)

(declare-fun tp!636193 () Bool)

(assert (=> b!2103053 (= e!1335735 (and tp!636197 (inv!30641 (_2!12886 (_1!12887 (h!28505 (zeroValue!2456 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575)))))))))) e!1335737 tp_is_empty!9357 setRes!13669 tp!636193))))

(declare-fun condSetEmpty!13669 () Bool)

(assert (=> b!2103053 (= condSetEmpty!13669 (= (_2!12887 (h!28505 (zeroValue!2456 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575)))))))) ((as const (Array Context!2226 Bool)) false)))))

(assert (= b!2103053 b!2103052))

(assert (= (and b!2103053 condSetEmpty!13669) setIsEmpty!13669))

(assert (= (and b!2103053 (not condSetEmpty!13669)) setNonEmpty!13669))

(assert (= setNonEmpty!13669 b!2103051))

(assert (= (and b!2102848 ((_ is Cons!23104) (zeroValue!2456 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575)))))))) b!2103053))

(declare-fun m!2562473 () Bool)

(assert (=> setNonEmpty!13669 m!2562473))

(declare-fun m!2562475 () Bool)

(assert (=> b!2103053 m!2562475))

(declare-fun e!1335738 () Bool)

(assert (=> b!2102848 (= tp!636124 e!1335738)))

(declare-fun setIsEmpty!13670 () Bool)

(declare-fun setRes!13670 () Bool)

(assert (=> setIsEmpty!13670 setRes!13670))

(declare-fun tp!636201 () Bool)

(declare-fun setElem!13670 () Context!2226)

(declare-fun e!1335739 () Bool)

(declare-fun setNonEmpty!13670 () Bool)

(assert (=> setNonEmpty!13670 (= setRes!13670 (and tp!636201 (inv!30641 setElem!13670) e!1335739))))

(declare-fun setRest!13670 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13670 (= (_2!12887 (h!28505 (minValue!2456 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13670 true) setRest!13670))))

(declare-fun b!2103054 () Bool)

(declare-fun tp!636200 () Bool)

(assert (=> b!2103054 (= e!1335739 tp!636200)))

(declare-fun b!2103055 () Bool)

(declare-fun e!1335740 () Bool)

(declare-fun tp!636199 () Bool)

(assert (=> b!2103055 (= e!1335740 tp!636199)))

(declare-fun tp!636202 () Bool)

(declare-fun b!2103056 () Bool)

(declare-fun tp!636198 () Bool)

(assert (=> b!2103056 (= e!1335738 (and tp!636202 (inv!30641 (_2!12886 (_1!12887 (h!28505 (minValue!2456 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575)))))))))) e!1335740 tp_is_empty!9357 setRes!13670 tp!636198))))

(declare-fun condSetEmpty!13670 () Bool)

(assert (=> b!2103056 (= condSetEmpty!13670 (= (_2!12887 (h!28505 (minValue!2456 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575)))))))) ((as const (Array Context!2226 Bool)) false)))))

(assert (= b!2103056 b!2103055))

(assert (= (and b!2103056 condSetEmpty!13670) setIsEmpty!13670))

(assert (= (and b!2103056 (not condSetEmpty!13670)) setNonEmpty!13670))

(assert (= setNonEmpty!13670 b!2103054))

(assert (= (and b!2102848 ((_ is Cons!23104) (minValue!2456 (v!27702 (underlying!4591 (v!27703 (underlying!4592 (cache!2493 cacheDown!575)))))))) b!2103056))

(declare-fun m!2562477 () Bool)

(assert (=> setNonEmpty!13670 m!2562477))

(declare-fun m!2562479 () Bool)

(assert (=> b!2103056 m!2562479))

(declare-fun e!1335741 () Bool)

(declare-fun b!2103057 () Bool)

(declare-fun tp!636203 () Bool)

(declare-fun tp!636205 () Bool)

(assert (=> b!2103057 (= e!1335741 (and (inv!30630 (left!18094 (c!338772 treated!60))) tp!636205 (inv!30630 (right!18424 (c!338772 treated!60))) tp!636203))))

(declare-fun b!2103059 () Bool)

(declare-fun e!1335742 () Bool)

(declare-fun tp!636204 () Bool)

(assert (=> b!2103059 (= e!1335742 tp!636204)))

(declare-fun b!2103058 () Bool)

(assert (=> b!2103058 (= e!1335741 (and (inv!30642 (xs!10636 (c!338772 treated!60))) e!1335742))))

(assert (=> b!2102838 (= tp!636129 (and (inv!30630 (c!338772 treated!60)) e!1335741))))

(assert (= (and b!2102838 ((_ is Node!7694) (c!338772 treated!60))) b!2103057))

(assert (= b!2103058 b!2103059))

(assert (= (and b!2102838 ((_ is Leaf!11233) (c!338772 treated!60))) b!2103058))

(declare-fun m!2562481 () Bool)

(assert (=> b!2103057 m!2562481))

(declare-fun m!2562483 () Bool)

(assert (=> b!2103057 m!2562483))

(declare-fun m!2562485 () Bool)

(assert (=> b!2103058 m!2562485))

(assert (=> b!2102838 m!2562149))

(declare-fun b!2103073 () Bool)

(declare-fun e!1335745 () Bool)

(declare-fun tp!636218 () Bool)

(declare-fun tp!636220 () Bool)

(assert (=> b!2103073 (= e!1335745 (and tp!636218 tp!636220))))

(assert (=> b!2102839 (= tp!636138 e!1335745)))

(declare-fun b!2103070 () Bool)

(assert (=> b!2103070 (= e!1335745 tp_is_empty!9357)))

(declare-fun b!2103071 () Bool)

(declare-fun tp!636217 () Bool)

(declare-fun tp!636216 () Bool)

(assert (=> b!2103071 (= e!1335745 (and tp!636217 tp!636216))))

(declare-fun b!2103072 () Bool)

(declare-fun tp!636219 () Bool)

(assert (=> b!2103072 (= e!1335745 tp!636219)))

(assert (= (and b!2102839 ((_ is ElementMatch!5543) (regex!4115 (h!28509 rules!1563)))) b!2103070))

(assert (= (and b!2102839 ((_ is Concat!9794) (regex!4115 (h!28509 rules!1563)))) b!2103071))

(assert (= (and b!2102839 ((_ is Star!5543) (regex!4115 (h!28509 rules!1563)))) b!2103072))

(assert (= (and b!2102839 ((_ is Union!5543) (regex!4115 (h!28509 rules!1563)))) b!2103073))

(declare-fun mapNonEmpty!10660 () Bool)

(declare-fun mapRes!10660 () Bool)

(declare-fun tp!636246 () Bool)

(declare-fun e!1335763 () Bool)

(assert (=> mapNonEmpty!10660 (= mapRes!10660 (and tp!636246 e!1335763))))

(declare-fun mapValue!10660 () List!23190)

(declare-fun mapRest!10660 () (Array (_ BitVec 32) List!23190))

(declare-fun mapKey!10660 () (_ BitVec 32))

(assert (=> mapNonEmpty!10660 (= mapRest!10656 (store mapRest!10660 mapKey!10660 mapValue!10660))))

(declare-fun condMapEmpty!10660 () Bool)

(declare-fun mapDefault!10660 () List!23190)

(assert (=> mapNonEmpty!10656 (= condMapEmpty!10660 (= mapRest!10656 ((as const (Array (_ BitVec 32) List!23190)) mapDefault!10660)))))

(declare-fun e!1335762 () Bool)

(assert (=> mapNonEmpty!10656 (= tp!636134 (and e!1335762 mapRes!10660))))

(declare-fun b!2103088 () Bool)

(declare-fun e!1335758 () Bool)

(declare-fun tp!636243 () Bool)

(assert (=> b!2103088 (= e!1335758 tp!636243)))

(declare-fun e!1335761 () Bool)

(declare-fun setRes!13676 () Bool)

(declare-fun setNonEmpty!13675 () Bool)

(declare-fun setElem!13675 () Context!2226)

(declare-fun tp!636240 () Bool)

(assert (=> setNonEmpty!13675 (= setRes!13676 (and tp!636240 (inv!30641 setElem!13675) e!1335761))))

(declare-fun setRest!13675 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13675 (= (_2!12889 (h!28507 mapDefault!10660)) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13675 true) setRest!13675))))

(declare-fun b!2103089 () Bool)

(declare-fun tp!636242 () Bool)

(assert (=> b!2103089 (= e!1335761 tp!636242)))

(declare-fun b!2103090 () Bool)

(declare-fun e!1335759 () Bool)

(declare-fun tp!636245 () Bool)

(assert (=> b!2103090 (= e!1335759 tp!636245)))

(declare-fun mapIsEmpty!10660 () Bool)

(assert (=> mapIsEmpty!10660 mapRes!10660))

(declare-fun setIsEmpty!13675 () Bool)

(declare-fun setRes!13675 () Bool)

(assert (=> setIsEmpty!13675 setRes!13675))

(declare-fun b!2103091 () Bool)

(declare-fun e!1335760 () Bool)

(declare-fun tp!636247 () Bool)

(assert (=> b!2103091 (= e!1335760 tp!636247)))

(declare-fun setIsEmpty!13676 () Bool)

(assert (=> setIsEmpty!13676 setRes!13676))

(declare-fun setElem!13676 () Context!2226)

(declare-fun setNonEmpty!13676 () Bool)

(declare-fun tp!636244 () Bool)

(assert (=> setNonEmpty!13676 (= setRes!13675 (and tp!636244 (inv!30641 setElem!13676) e!1335759))))

(declare-fun setRest!13676 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13676 (= (_2!12889 (h!28507 mapValue!10660)) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13676 true) setRest!13676))))

(declare-fun tp!636239 () Bool)

(declare-fun b!2103092 () Bool)

(assert (=> b!2103092 (= e!1335762 (and (inv!30641 (_1!12888 (_1!12889 (h!28507 mapDefault!10660)))) e!1335760 tp_is_empty!9357 setRes!13676 tp!636239))))

(declare-fun condSetEmpty!13676 () Bool)

(assert (=> b!2103092 (= condSetEmpty!13676 (= (_2!12889 (h!28507 mapDefault!10660)) ((as const (Array Context!2226 Bool)) false)))))

(declare-fun tp!636241 () Bool)

(declare-fun b!2103093 () Bool)

(assert (=> b!2103093 (= e!1335763 (and (inv!30641 (_1!12888 (_1!12889 (h!28507 mapValue!10660)))) e!1335758 tp_is_empty!9357 setRes!13675 tp!636241))))

(declare-fun condSetEmpty!13675 () Bool)

(assert (=> b!2103093 (= condSetEmpty!13675 (= (_2!12889 (h!28507 mapValue!10660)) ((as const (Array Context!2226 Bool)) false)))))

(assert (= (and mapNonEmpty!10656 condMapEmpty!10660) mapIsEmpty!10660))

(assert (= (and mapNonEmpty!10656 (not condMapEmpty!10660)) mapNonEmpty!10660))

(assert (= b!2103093 b!2103088))

(assert (= (and b!2103093 condSetEmpty!13675) setIsEmpty!13675))

(assert (= (and b!2103093 (not condSetEmpty!13675)) setNonEmpty!13676))

(assert (= setNonEmpty!13676 b!2103090))

(assert (= (and mapNonEmpty!10660 ((_ is Cons!23106) mapValue!10660)) b!2103093))

(assert (= b!2103092 b!2103091))

(assert (= (and b!2103092 condSetEmpty!13676) setIsEmpty!13676))

(assert (= (and b!2103092 (not condSetEmpty!13676)) setNonEmpty!13675))

(assert (= setNonEmpty!13675 b!2103089))

(assert (= (and mapNonEmpty!10656 ((_ is Cons!23106) mapDefault!10660)) b!2103092))

(declare-fun m!2562487 () Bool)

(assert (=> b!2103092 m!2562487))

(declare-fun m!2562489 () Bool)

(assert (=> setNonEmpty!13676 m!2562489))

(declare-fun m!2562491 () Bool)

(assert (=> setNonEmpty!13675 m!2562491))

(declare-fun m!2562493 () Bool)

(assert (=> b!2103093 m!2562493))

(declare-fun m!2562495 () Bool)

(assert (=> mapNonEmpty!10660 m!2562495))

(declare-fun e!1335766 () Bool)

(assert (=> mapNonEmpty!10656 (= tp!636136 e!1335766)))

(declare-fun b!2103094 () Bool)

(declare-fun e!1335765 () Bool)

(declare-fun tp!636249 () Bool)

(assert (=> b!2103094 (= e!1335765 tp!636249)))

(declare-fun setIsEmpty!13677 () Bool)

(declare-fun setRes!13677 () Bool)

(assert (=> setIsEmpty!13677 setRes!13677))

(declare-fun tp!636250 () Bool)

(declare-fun setNonEmpty!13677 () Bool)

(declare-fun setElem!13677 () Context!2226)

(declare-fun e!1335764 () Bool)

(assert (=> setNonEmpty!13677 (= setRes!13677 (and tp!636250 (inv!30641 setElem!13677) e!1335764))))

(declare-fun setRest!13677 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13677 (= (_2!12889 (h!28507 mapValue!10656)) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13677 true) setRest!13677))))

(declare-fun b!2103095 () Bool)

(declare-fun tp!636248 () Bool)

(assert (=> b!2103095 (= e!1335764 tp!636248)))

(declare-fun b!2103096 () Bool)

(declare-fun tp!636251 () Bool)

(assert (=> b!2103096 (= e!1335766 (and (inv!30641 (_1!12888 (_1!12889 (h!28507 mapValue!10656)))) e!1335765 tp_is_empty!9357 setRes!13677 tp!636251))))

(declare-fun condSetEmpty!13677 () Bool)

(assert (=> b!2103096 (= condSetEmpty!13677 (= (_2!12889 (h!28507 mapValue!10656)) ((as const (Array Context!2226 Bool)) false)))))

(assert (= b!2103096 b!2103094))

(assert (= (and b!2103096 condSetEmpty!13677) setIsEmpty!13677))

(assert (= (and b!2103096 (not condSetEmpty!13677)) setNonEmpty!13677))

(assert (= setNonEmpty!13677 b!2103095))

(assert (= (and mapNonEmpty!10656 ((_ is Cons!23106) mapValue!10656)) b!2103096))

(declare-fun m!2562497 () Bool)

(assert (=> setNonEmpty!13677 m!2562497))

(declare-fun m!2562499 () Bool)

(assert (=> b!2103096 m!2562499))

(declare-fun tp!636260 () Bool)

(declare-fun b!2103105 () Bool)

(declare-fun tp!636258 () Bool)

(declare-fun e!1335772 () Bool)

(assert (=> b!2103105 (= e!1335772 (and (inv!30632 (left!18095 (c!338773 acc!382))) tp!636260 (inv!30632 (right!18425 (c!338773 acc!382))) tp!636258))))

(declare-fun b!2103107 () Bool)

(declare-fun e!1335771 () Bool)

(declare-fun tp!636259 () Bool)

(assert (=> b!2103107 (= e!1335771 tp!636259)))

(declare-fun b!2103106 () Bool)

(declare-fun inv!30643 (IArray!15395) Bool)

(assert (=> b!2103106 (= e!1335772 (and (inv!30643 (xs!10637 (c!338773 acc!382))) e!1335771))))

(assert (=> b!2102841 (= tp!636121 (and (inv!30632 (c!338773 acc!382)) e!1335772))))

(assert (= (and b!2102841 ((_ is Node!7695) (c!338773 acc!382))) b!2103105))

(assert (= b!2103106 b!2103107))

(assert (= (and b!2102841 ((_ is Leaf!11234) (c!338773 acc!382))) b!2103106))

(declare-fun m!2562501 () Bool)

(assert (=> b!2103105 m!2562501))

(declare-fun m!2562503 () Bool)

(assert (=> b!2103105 m!2562503))

(declare-fun m!2562505 () Bool)

(assert (=> b!2103106 m!2562505))

(assert (=> b!2102841 m!2562169))

(declare-fun e!1335773 () Bool)

(assert (=> b!2102843 (= tp!636131 e!1335773)))

(declare-fun setIsEmpty!13678 () Bool)

(declare-fun setRes!13678 () Bool)

(assert (=> setIsEmpty!13678 setRes!13678))

(declare-fun setNonEmpty!13678 () Bool)

(declare-fun tp!636264 () Bool)

(declare-fun setElem!13678 () Context!2226)

(declare-fun e!1335774 () Bool)

(assert (=> setNonEmpty!13678 (= setRes!13678 (and tp!636264 (inv!30641 setElem!13678) e!1335774))))

(declare-fun setRest!13678 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13678 (= (_2!12887 (h!28505 mapDefault!10656)) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13678 true) setRest!13678))))

(declare-fun b!2103108 () Bool)

(declare-fun tp!636263 () Bool)

(assert (=> b!2103108 (= e!1335774 tp!636263)))

(declare-fun b!2103109 () Bool)

(declare-fun e!1335775 () Bool)

(declare-fun tp!636262 () Bool)

(assert (=> b!2103109 (= e!1335775 tp!636262)))

(declare-fun b!2103110 () Bool)

(declare-fun tp!636265 () Bool)

(declare-fun tp!636261 () Bool)

(assert (=> b!2103110 (= e!1335773 (and tp!636265 (inv!30641 (_2!12886 (_1!12887 (h!28505 mapDefault!10656)))) e!1335775 tp_is_empty!9357 setRes!13678 tp!636261))))

(declare-fun condSetEmpty!13678 () Bool)

(assert (=> b!2103110 (= condSetEmpty!13678 (= (_2!12887 (h!28505 mapDefault!10656)) ((as const (Array Context!2226 Bool)) false)))))

(assert (= b!2103110 b!2103109))

(assert (= (and b!2103110 condSetEmpty!13678) setIsEmpty!13678))

(assert (= (and b!2103110 (not condSetEmpty!13678)) setNonEmpty!13678))

(assert (= setNonEmpty!13678 b!2103108))

(assert (= (and b!2102843 ((_ is Cons!23104) mapDefault!10656)) b!2103110))

(declare-fun m!2562507 () Bool)

(assert (=> setNonEmpty!13678 m!2562507))

(declare-fun m!2562509 () Bool)

(assert (=> b!2103110 m!2562509))

(declare-fun b!2103125 () Bool)

(declare-fun e!1335791 () Bool)

(declare-fun tp!636291 () Bool)

(assert (=> b!2103125 (= e!1335791 tp!636291)))

(declare-fun mapIsEmpty!10663 () Bool)

(declare-fun mapRes!10663 () Bool)

(assert (=> mapIsEmpty!10663 mapRes!10663))

(declare-fun condMapEmpty!10663 () Bool)

(declare-fun mapDefault!10663 () List!23188)

(assert (=> mapNonEmpty!10657 (= condMapEmpty!10663 (= mapRest!10657 ((as const (Array (_ BitVec 32) List!23188)) mapDefault!10663)))))

(declare-fun e!1335788 () Bool)

(assert (=> mapNonEmpty!10657 (= tp!636122 (and e!1335788 mapRes!10663))))

(declare-fun b!2103126 () Bool)

(declare-fun e!1335792 () Bool)

(declare-fun tp!636290 () Bool)

(assert (=> b!2103126 (= e!1335792 tp!636290)))

(declare-fun b!2103127 () Bool)

(declare-fun e!1335790 () Bool)

(declare-fun tp!636289 () Bool)

(assert (=> b!2103127 (= e!1335790 tp!636289)))

(declare-fun setRes!13684 () Bool)

(declare-fun tp!636294 () Bool)

(declare-fun setNonEmpty!13683 () Bool)

(declare-fun setElem!13684 () Context!2226)

(declare-fun e!1335793 () Bool)

(assert (=> setNonEmpty!13683 (= setRes!13684 (and tp!636294 (inv!30641 setElem!13684) e!1335793))))

(declare-fun mapValue!10663 () List!23188)

(declare-fun setRest!13683 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13683 (= (_2!12887 (h!28505 mapValue!10663)) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13684 true) setRest!13683))))

(declare-fun tp!636293 () Bool)

(declare-fun setRes!13683 () Bool)

(declare-fun b!2103128 () Bool)

(declare-fun tp!636296 () Bool)

(assert (=> b!2103128 (= e!1335788 (and tp!636293 (inv!30641 (_2!12886 (_1!12887 (h!28505 mapDefault!10663)))) e!1335791 tp_is_empty!9357 setRes!13683 tp!636296))))

(declare-fun condSetEmpty!13684 () Bool)

(assert (=> b!2103128 (= condSetEmpty!13684 (= (_2!12887 (h!28505 mapDefault!10663)) ((as const (Array Context!2226 Bool)) false)))))

(declare-fun tp!636288 () Bool)

(declare-fun e!1335789 () Bool)

(declare-fun tp!636292 () Bool)

(declare-fun b!2103129 () Bool)

(assert (=> b!2103129 (= e!1335789 (and tp!636288 (inv!30641 (_2!12886 (_1!12887 (h!28505 mapValue!10663)))) e!1335792 tp_is_empty!9357 setRes!13684 tp!636292))))

(declare-fun condSetEmpty!13683 () Bool)

(assert (=> b!2103129 (= condSetEmpty!13683 (= (_2!12887 (h!28505 mapValue!10663)) ((as const (Array Context!2226 Bool)) false)))))

(declare-fun setIsEmpty!13683 () Bool)

(assert (=> setIsEmpty!13683 setRes!13683))

(declare-fun setIsEmpty!13684 () Bool)

(assert (=> setIsEmpty!13684 setRes!13684))

(declare-fun mapNonEmpty!10663 () Bool)

(declare-fun tp!636297 () Bool)

(assert (=> mapNonEmpty!10663 (= mapRes!10663 (and tp!636297 e!1335789))))

(declare-fun mapKey!10663 () (_ BitVec 32))

(declare-fun mapRest!10663 () (Array (_ BitVec 32) List!23188))

(assert (=> mapNonEmpty!10663 (= mapRest!10657 (store mapRest!10663 mapKey!10663 mapValue!10663))))

(declare-fun b!2103130 () Bool)

(declare-fun tp!636295 () Bool)

(assert (=> b!2103130 (= e!1335793 tp!636295)))

(declare-fun setElem!13683 () Context!2226)

(declare-fun setNonEmpty!13684 () Bool)

(declare-fun tp!636298 () Bool)

(assert (=> setNonEmpty!13684 (= setRes!13683 (and tp!636298 (inv!30641 setElem!13683) e!1335790))))

(declare-fun setRest!13684 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13684 (= (_2!12887 (h!28505 mapDefault!10663)) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13683 true) setRest!13684))))

(assert (= (and mapNonEmpty!10657 condMapEmpty!10663) mapIsEmpty!10663))

(assert (= (and mapNonEmpty!10657 (not condMapEmpty!10663)) mapNonEmpty!10663))

(assert (= b!2103129 b!2103126))

(assert (= (and b!2103129 condSetEmpty!13683) setIsEmpty!13684))

(assert (= (and b!2103129 (not condSetEmpty!13683)) setNonEmpty!13683))

(assert (= setNonEmpty!13683 b!2103130))

(assert (= (and mapNonEmpty!10663 ((_ is Cons!23104) mapValue!10663)) b!2103129))

(assert (= b!2103128 b!2103125))

(assert (= (and b!2103128 condSetEmpty!13684) setIsEmpty!13683))

(assert (= (and b!2103128 (not condSetEmpty!13684)) setNonEmpty!13684))

(assert (= setNonEmpty!13684 b!2103127))

(assert (= (and mapNonEmpty!10657 ((_ is Cons!23104) mapDefault!10663)) b!2103128))

(declare-fun m!2562511 () Bool)

(assert (=> setNonEmpty!13684 m!2562511))

(declare-fun m!2562513 () Bool)

(assert (=> b!2103129 m!2562513))

(declare-fun m!2562515 () Bool)

(assert (=> b!2103128 m!2562515))

(declare-fun m!2562517 () Bool)

(assert (=> mapNonEmpty!10663 m!2562517))

(declare-fun m!2562519 () Bool)

(assert (=> setNonEmpty!13683 m!2562519))

(declare-fun e!1335794 () Bool)

(assert (=> mapNonEmpty!10657 (= tp!636137 e!1335794)))

(declare-fun setIsEmpty!13685 () Bool)

(declare-fun setRes!13685 () Bool)

(assert (=> setIsEmpty!13685 setRes!13685))

(declare-fun e!1335795 () Bool)

(declare-fun setNonEmpty!13685 () Bool)

(declare-fun tp!636302 () Bool)

(declare-fun setElem!13685 () Context!2226)

(assert (=> setNonEmpty!13685 (= setRes!13685 (and tp!636302 (inv!30641 setElem!13685) e!1335795))))

(declare-fun setRest!13685 () (InoxSet Context!2226))

(assert (=> setNonEmpty!13685 (= (_2!12887 (h!28505 mapValue!10657)) ((_ map or) (store ((as const (Array Context!2226 Bool)) false) setElem!13685 true) setRest!13685))))

(declare-fun b!2103131 () Bool)

(declare-fun tp!636301 () Bool)

(assert (=> b!2103131 (= e!1335795 tp!636301)))

(declare-fun b!2103132 () Bool)

(declare-fun e!1335796 () Bool)

(declare-fun tp!636300 () Bool)

(assert (=> b!2103132 (= e!1335796 tp!636300)))

(declare-fun tp!636299 () Bool)

(declare-fun tp!636303 () Bool)

(declare-fun b!2103133 () Bool)

(assert (=> b!2103133 (= e!1335794 (and tp!636303 (inv!30641 (_2!12886 (_1!12887 (h!28505 mapValue!10657)))) e!1335796 tp_is_empty!9357 setRes!13685 tp!636299))))

(declare-fun condSetEmpty!13685 () Bool)

(assert (=> b!2103133 (= condSetEmpty!13685 (= (_2!12887 (h!28505 mapValue!10657)) ((as const (Array Context!2226 Bool)) false)))))

(assert (= b!2103133 b!2103132))

(assert (= (and b!2103133 condSetEmpty!13685) setIsEmpty!13685))

(assert (= (and b!2103133 (not condSetEmpty!13685)) setNonEmpty!13685))

(assert (= setNonEmpty!13685 b!2103131))

(assert (= (and mapNonEmpty!10657 ((_ is Cons!23104) mapValue!10657)) b!2103133))

(declare-fun m!2562521 () Bool)

(assert (=> setNonEmpty!13685 m!2562521))

(declare-fun m!2562523 () Bool)

(assert (=> b!2103133 m!2562523))

(check-sat (not b!2102975) (not b!2102978) (not b!2103108) (not b!2102935) (not b!2102982) (not b!2102968) (not b!2103133) (not setNonEmpty!13675) (not d!641485) (not b!2103022) (not b!2103132) (not b!2103110) (not b!2103035) (not b!2103039) (not b!2103056) (not b_next!60885) (not b!2103127) (not b!2103130) (not d!641465) (not b!2103051) (not b!2103042) b_and!169747 (not b!2102937) (not setNonEmpty!13683) (not b!2102877) (not b!2103109) (not d!641493) (not b!2103094) (not d!641447) (not mapNonEmpty!10663) (not setNonEmpty!13666) (not b!2102919) (not b!2103126) (not b!2102987) (not b!2103041) (not b!2103034) (not b!2102974) (not b_next!60897) (not b!2103072) (not b!2102910) (not b!2103088) (not b_next!60893) (not b!2103038) (not b!2103057) (not b!2103128) (not d!641435) (not b_next!60895) (not b!2102977) b_and!169749 (not setNonEmpty!13670) (not bm!128384) b_and!169757 (not b!2102949) (not b_next!60887) (not b!2102921) (not b!2102901) (not b!2103053) (not b!2102932) (not b!2103000) (not d!641425) (not b!2102896) (not b!2102997) (not b!2103010) (not d!641469) (not setNonEmpty!13669) (not mapNonEmpty!10660) (not b!2102947) (not d!641473) (not b!2103096) b_and!169743 (not b!2102985) (not b!2103107) (not b!2103052) (not b!2102981) (not b!2102875) (not b!2102908) b_and!169755 (not b!2103037) (not b!2103020) (not b!2103105) (not d!641483) (not setNonEmpty!13664) (not b_next!60891) (not b!2103054) (not b!2102894) (not d!641411) (not b!2102979) (not b!2103073) (not b!2102866) (not setNonEmpty!13684) (not b!2103032) (not b!2103040) b_and!169753 (not b!2103090) (not b!2102964) (not d!641457) (not b!2103129) (not b!2102999) (not b!2103125) (not b!2103058) (not d!641429) (not d!641481) (not b!2103036) (not b!2102864) (not b!2103091) (not b!2102998) (not b!2102904) (not b!2103031) (not b!2102922) (not b!2102980) (not b!2103033) (not d!641439) (not b!2103095) (not b!2102933) (not d!641421) (not b!2103059) (not d!641489) (not b!2103021) (not b!2102895) (not d!641475) (not b!2103106) (not d!641479) (not d!641495) (not b!2102973) (not d!641459) (not b!2102898) (not setNonEmpty!13677) (not b!2102986) b_and!169751 (not d!641417) tp_is_empty!9357 (not b!2103131) (not b!2102838) (not b_next!60899) (not b!2102897) (not b!2103089) (not b!2103092) (not setNonEmpty!13676) (not b!2103009) (not b!2103055) (not setNonEmpty!13665) (not b!2102940) (not setNonEmpty!13678) (not d!641441) (not d!641415) (not d!641423) (not d!641433) (not b!2103071) (not d!641487) (not d!641491) (not d!641445) b_and!169745 (not b!2102907) (not b!2102988) (not b!2103093) (not b!2102967) (not setNonEmpty!13685) (not b!2102984) (not d!641419) (not b_next!60889) (not d!641443) (not b!2102966) (not b!2102841) (not b!2102892))
(check-sat (not b_next!60885) b_and!169747 (not b_next!60897) (not b_next!60887) b_and!169743 b_and!169753 b_and!169751 (not b_next!60899) b_and!169745 (not b_next!60889) (not b_next!60893) (not b_next!60895) b_and!169749 b_and!169757 b_and!169755 (not b_next!60891))
