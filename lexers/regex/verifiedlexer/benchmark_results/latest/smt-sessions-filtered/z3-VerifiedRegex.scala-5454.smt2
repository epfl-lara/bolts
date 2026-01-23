; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276892 () Bool)

(assert start!276892)

(declare-fun b!2844653 () Bool)

(declare-fun b_free!82633 () Bool)

(declare-fun b_next!83337 () Bool)

(assert (=> b!2844653 (= b_free!82633 (not b_next!83337))))

(declare-fun tp!911792 () Bool)

(declare-fun b_and!208851 () Bool)

(assert (=> b!2844653 (= tp!911792 b_and!208851)))

(declare-fun b!2844674 () Bool)

(declare-fun b_free!82635 () Bool)

(declare-fun b_next!83339 () Bool)

(assert (=> b!2844674 (= b_free!82635 (not b_next!83339))))

(declare-fun tp!911806 () Bool)

(declare-fun b_and!208853 () Bool)

(assert (=> b!2844674 (= tp!911806 b_and!208853)))

(declare-fun b!2844650 () Bool)

(declare-fun b_free!82637 () Bool)

(declare-fun b_next!83341 () Bool)

(assert (=> b!2844650 (= b_free!82637 (not b_next!83341))))

(declare-fun tp!911787 () Bool)

(declare-fun b_and!208855 () Bool)

(assert (=> b!2844650 (= tp!911787 b_and!208855)))

(declare-fun b!2844676 () Bool)

(declare-fun b_free!82639 () Bool)

(declare-fun b_next!83343 () Bool)

(assert (=> b!2844676 (= b_free!82639 (not b_next!83343))))

(declare-fun tp!911785 () Bool)

(declare-fun b_and!208857 () Bool)

(assert (=> b!2844676 (= tp!911785 b_and!208857)))

(declare-fun b_free!82641 () Bool)

(declare-fun b_next!83345 () Bool)

(assert (=> b!2844676 (= b_free!82641 (not b_next!83345))))

(declare-fun tp!911802 () Bool)

(declare-fun b_and!208859 () Bool)

(assert (=> b!2844676 (= tp!911802 b_and!208859)))

(declare-fun b!2844671 () Bool)

(declare-fun b_free!82643 () Bool)

(declare-fun b_next!83347 () Bool)

(assert (=> b!2844671 (= b_free!82643 (not b_next!83347))))

(declare-fun tp!911796 () Bool)

(declare-fun b_and!208861 () Bool)

(assert (=> b!2844671 (= tp!911796 b_and!208861)))

(declare-fun b!2844661 () Bool)

(declare-fun b_free!82645 () Bool)

(declare-fun b_next!83349 () Bool)

(assert (=> b!2844661 (= b_free!82645 (not b_next!83349))))

(declare-fun tp!911784 () Bool)

(declare-fun b_and!208863 () Bool)

(assert (=> b!2844661 (= tp!911784 b_and!208863)))

(declare-fun b_free!82647 () Bool)

(declare-fun b_next!83351 () Bool)

(assert (=> b!2844661 (= b_free!82647 (not b_next!83351))))

(declare-fun tp!911805 () Bool)

(declare-fun b_and!208865 () Bool)

(assert (=> b!2844661 (= tp!911805 b_and!208865)))

(declare-fun b!2844669 () Bool)

(declare-fun b_free!82649 () Bool)

(declare-fun b_next!83353 () Bool)

(assert (=> b!2844669 (= b_free!82649 (not b_next!83353))))

(declare-fun tp!911797 () Bool)

(declare-fun b_and!208867 () Bool)

(assert (=> b!2844669 (= tp!911797 b_and!208867)))

(declare-fun b_free!82651 () Bool)

(declare-fun b_next!83355 () Bool)

(assert (=> b!2844669 (= b_free!82651 (not b_next!83355))))

(declare-fun tp!911800 () Bool)

(declare-fun b_and!208869 () Bool)

(assert (=> b!2844669 (= tp!911800 b_and!208869)))

(declare-fun b!2844648 () Bool)

(declare-fun e!1802351 () Bool)

(declare-fun e!1802346 () Bool)

(declare-datatypes ((C!17108 0))(
  ( (C!17109 (val!10588 Int)) )
))
(declare-datatypes ((Regex!8463 0))(
  ( (ElementMatch!8463 (c!459092 C!17108)) (Concat!13765 (regOne!17438 Regex!8463) (regTwo!17438 Regex!8463)) (EmptyExpr!8463) (Star!8463 (reg!8792 Regex!8463)) (EmptyLang!8463) (Union!8463 (regOne!17439 Regex!8463) (regTwo!17439 Regex!8463)) )
))
(declare-datatypes ((List!33844 0))(
  ( (Nil!33720) (Cons!33720 (h!39140 Regex!8463) (t!232839 List!33844)) )
))
(declare-datatypes ((Context!4982 0))(
  ( (Context!4983 (exprs!2991 List!33844)) )
))
(declare-datatypes ((tuple3!5290 0))(
  ( (tuple3!5291 (_1!19912 Regex!8463) (_2!19912 Context!4982) (_3!3115 C!17108)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33594 0))(
  ( (tuple2!33595 (_1!19913 tuple3!5290) (_2!19913 (InoxSet Context!4982))) )
))
(declare-datatypes ((List!33845 0))(
  ( (Nil!33721) (Cons!33721 (h!39141 tuple2!33594) (t!232840 List!33845)) )
))
(declare-datatypes ((array!14559 0))(
  ( (array!14560 (arr!6488 (Array (_ BitVec 32) (_ BitVec 64))) (size!26195 (_ BitVec 32))) )
))
(declare-datatypes ((array!14561 0))(
  ( (array!14562 (arr!6489 (Array (_ BitVec 32) List!33845)) (size!26196 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8192 0))(
  ( (LongMapFixedSize!8193 (defaultEntry!4481 Int) (mask!10119 (_ BitVec 32)) (extraKeys!4345 (_ BitVec 32)) (zeroValue!4355 List!33845) (minValue!4355 List!33845) (_size!8235 (_ BitVec 32)) (_keys!4396 array!14559) (_values!4377 array!14561) (_vacant!4157 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16193 0))(
  ( (Cell!16194 (v!34388 LongMapFixedSize!8192)) )
))
(declare-datatypes ((MutLongMap!4096 0))(
  ( (LongMap!4096 (underlying!8421 Cell!16193)) (MutLongMapExt!4095 (__x!22356 Int)) )
))
(declare-fun lt!1012245 () MutLongMap!4096)

(get-info :version)

(assert (=> b!2844648 (= e!1802351 (and e!1802346 ((_ is LongMap!4096) lt!1012245)))))

(declare-datatypes ((Cell!16195 0))(
  ( (Cell!16196 (v!34389 MutLongMap!4096)) )
))
(declare-datatypes ((Hashable!4012 0))(
  ( (HashableExt!4011 (__x!22357 Int)) )
))
(declare-datatypes ((MutableMap!4002 0))(
  ( (MutableMapExt!4001 (__x!22358 Int)) (HashMap!4002 (underlying!8422 Cell!16195) (hashF!6044 Hashable!4012) (_size!8236 (_ BitVec 32)) (defaultValue!4173 Int)) )
))
(declare-datatypes ((CacheDown!2820 0))(
  ( (CacheDown!2821 (cache!4137 MutableMap!4002)) )
))
(declare-fun cacheDown!447 () CacheDown!2820)

(assert (=> b!2844648 (= lt!1012245 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))

(declare-fun b!2844649 () Bool)

(declare-fun e!1802341 () Bool)

(assert (=> b!2844649 (= e!1802346 e!1802341)))

(declare-fun e!1802343 () Bool)

(declare-fun e!1802324 () Bool)

(assert (=> b!2844650 (= e!1802343 (and e!1802324 tp!911787))))

(declare-fun b!2844651 () Bool)

(declare-fun e!1802329 () Bool)

(assert (=> b!2844651 (= e!1802329 e!1802343)))

(declare-fun mapNonEmpty!18590 () Bool)

(declare-fun mapRes!18591 () Bool)

(declare-fun tp!911795 () Bool)

(declare-fun tp!911790 () Bool)

(assert (=> mapNonEmpty!18590 (= mapRes!18591 (and tp!911795 tp!911790))))

(declare-datatypes ((tuple2!33596 0))(
  ( (tuple2!33597 (_1!19914 Context!4982) (_2!19914 C!17108)) )
))
(declare-datatypes ((tuple2!33598 0))(
  ( (tuple2!33599 (_1!19915 tuple2!33596) (_2!19915 (InoxSet Context!4982))) )
))
(declare-datatypes ((List!33846 0))(
  ( (Nil!33722) (Cons!33722 (h!39142 tuple2!33598) (t!232841 List!33846)) )
))
(declare-fun mapRest!18590 () (Array (_ BitVec 32) List!33846))

(declare-fun mapValue!18591 () List!33846)

(declare-fun mapKey!18591 () (_ BitVec 32))

(declare-datatypes ((array!14563 0))(
  ( (array!14564 (arr!6490 (Array (_ BitVec 32) List!33846)) (size!26197 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8194 0))(
  ( (LongMapFixedSize!8195 (defaultEntry!4482 Int) (mask!10120 (_ BitVec 32)) (extraKeys!4346 (_ BitVec 32)) (zeroValue!4356 List!33846) (minValue!4356 List!33846) (_size!8237 (_ BitVec 32)) (_keys!4397 array!14559) (_values!4378 array!14563) (_vacant!4158 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16197 0))(
  ( (Cell!16198 (v!34390 LongMapFixedSize!8194)) )
))
(declare-datatypes ((MutLongMap!4097 0))(
  ( (LongMap!4097 (underlying!8423 Cell!16197)) (MutLongMapExt!4096 (__x!22359 Int)) )
))
(declare-datatypes ((Cell!16199 0))(
  ( (Cell!16200 (v!34391 MutLongMap!4097)) )
))
(declare-datatypes ((Hashable!4013 0))(
  ( (HashableExt!4012 (__x!22360 Int)) )
))
(declare-datatypes ((MutableMap!4003 0))(
  ( (MutableMapExt!4002 (__x!22361 Int)) (HashMap!4003 (underlying!8424 Cell!16199) (hashF!6045 Hashable!4013) (_size!8238 (_ BitVec 32)) (defaultValue!4174 Int)) )
))
(declare-datatypes ((CacheUp!2700 0))(
  ( (CacheUp!2701 (cache!4138 MutableMap!4003)) )
))
(declare-fun cacheUp!434 () CacheUp!2700)

(assert (=> mapNonEmpty!18590 (= (arr!6490 (_values!4378 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))) (store mapRest!18590 mapKey!18591 mapValue!18591))))

(declare-fun e!1802328 () Bool)

(declare-fun b!2844652 () Bool)

(declare-fun e!1802326 () Bool)

(declare-datatypes ((List!33847 0))(
  ( (Nil!33723) (Cons!33723 (h!39143 (_ BitVec 16)) (t!232842 List!33847)) )
))
(declare-datatypes ((TokenValue!5302 0))(
  ( (FloatLiteralValue!10604 (text!37559 List!33847)) (TokenValueExt!5301 (__x!22362 Int)) (Broken!26510 (value!162928 List!33847)) (Object!5425) (End!5302) (Def!5302) (Underscore!5302) (Match!5302) (Else!5302) (Error!5302) (Case!5302) (If!5302) (Extends!5302) (Abstract!5302) (Class!5302) (Val!5302) (DelimiterValue!10604 (del!5362 List!33847)) (KeywordValue!5308 (value!162929 List!33847)) (CommentValue!10604 (value!162930 List!33847)) (WhitespaceValue!10604 (value!162931 List!33847)) (IndentationValue!5302 (value!162932 List!33847)) (String!37075) (Int32!5302) (Broken!26511 (value!162933 List!33847)) (Boolean!5303) (Unit!47518) (OperatorValue!5305 (op!5362 List!33847)) (IdentifierValue!10604 (value!162934 List!33847)) (IdentifierValue!10605 (value!162935 List!33847)) (WhitespaceValue!10605 (value!162936 List!33847)) (True!10604) (False!10604) (Broken!26512 (value!162937 List!33847)) (Broken!26513 (value!162938 List!33847)) (True!10605) (RightBrace!5302) (RightBracket!5302) (Colon!5302) (Null!5302) (Comma!5302) (LeftBracket!5302) (False!10605) (LeftBrace!5302) (ImaginaryLiteralValue!5302 (text!37560 List!33847)) (StringLiteralValue!15906 (value!162939 List!33847)) (EOFValue!5302 (value!162940 List!33847)) (IdentValue!5302 (value!162941 List!33847)) (DelimiterValue!10605 (value!162942 List!33847)) (DedentValue!5302 (value!162943 List!33847)) (NewLineValue!5302 (value!162944 List!33847)) (IntegerValue!15906 (value!162945 (_ BitVec 32)) (text!37561 List!33847)) (IntegerValue!15907 (value!162946 Int) (text!37562 List!33847)) (Times!5302) (Or!5302) (Equal!5302) (Minus!5302) (Broken!26514 (value!162947 List!33847)) (And!5302) (Div!5302) (LessEqual!5302) (Mod!5302) (Concat!13766) (Not!5302) (Plus!5302) (SpaceValue!5302 (value!162948 List!33847)) (IntegerValue!15908 (value!162949 Int) (text!37563 List!33847)) (StringLiteralValue!15907 (text!37564 List!33847)) (FloatLiteralValue!10605 (text!37565 List!33847)) (BytesLiteralValue!5302 (value!162950 List!33847)) (CommentValue!10605 (value!162951 List!33847)) (StringLiteralValue!15908 (value!162952 List!33847)) (ErrorTokenValue!5302 (msg!5363 List!33847)) )
))
(declare-datatypes ((List!33848 0))(
  ( (Nil!33724) (Cons!33724 (h!39144 C!17108) (t!232843 List!33848)) )
))
(declare-datatypes ((IArray!20921 0))(
  ( (IArray!20922 (innerList!10518 List!33848)) )
))
(declare-datatypes ((Conc!10458 0))(
  ( (Node!10458 (left!25404 Conc!10458) (right!25734 Conc!10458) (csize!21146 Int) (cheight!10669 Int)) (Leaf!15913 (xs!13574 IArray!20921) (csize!21147 Int)) (Empty!10458) )
))
(declare-datatypes ((BalanceConc!20554 0))(
  ( (BalanceConc!20555 (c!459093 Conc!10458)) )
))
(declare-datatypes ((String!37076 0))(
  ( (String!37077 (value!162953 String)) )
))
(declare-datatypes ((TokenValueInjection!10032 0))(
  ( (TokenValueInjection!10033 (toValue!7126 Int) (toChars!6985 Int)) )
))
(declare-datatypes ((Rule!9944 0))(
  ( (Rule!9945 (regex!5072 Regex!8463) (tag!5576 String!37076) (isSeparator!5072 Bool) (transformation!5072 TokenValueInjection!10032)) )
))
(declare-datatypes ((Token!9546 0))(
  ( (Token!9547 (value!162954 TokenValue!5302) (rule!7500 Rule!9944) (size!26198 Int) (originalCharacters!5804 List!33848)) )
))
(declare-fun t1!27 () Token!9546)

(declare-fun tp!911793 () Bool)

(declare-fun inv!45721 (String!37076) Bool)

(declare-fun inv!45722 (TokenValueInjection!10032) Bool)

(assert (=> b!2844652 (= e!1802328 (and tp!911793 (inv!45721 (tag!5576 (rule!7500 t1!27))) (inv!45722 (transformation!5072 (rule!7500 t1!27))) e!1802326))))

(declare-fun b!2844654 () Bool)

(declare-fun e!1802320 () Bool)

(declare-fun lt!1012243 () MutLongMap!4097)

(assert (=> b!2844654 (= e!1802324 (and e!1802320 ((_ is LongMap!4097) lt!1012243)))))

(assert (=> b!2844654 (= lt!1012243 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))

(declare-fun b!2844655 () Bool)

(declare-fun t2!27 () Token!9546)

(declare-fun e!1802327 () Bool)

(declare-fun tp!911801 () Bool)

(declare-fun e!1802342 () Bool)

(declare-fun inv!21 (TokenValue!5302) Bool)

(assert (=> b!2844655 (= e!1802342 (and (inv!21 (value!162954 t2!27)) e!1802327 tp!911801))))

(declare-fun tp!911808 () Bool)

(declare-fun b!2844656 () Bool)

(declare-fun e!1802325 () Bool)

(assert (=> b!2844656 (= e!1802325 (and (inv!21 (value!162954 t1!27)) e!1802328 tp!911808))))

(declare-fun b!2844657 () Bool)

(declare-fun res!1183250 () Bool)

(declare-fun e!1802333 () Bool)

(assert (=> b!2844657 (=> (not res!1183250) (not e!1802333))))

(declare-datatypes ((LexerInterface!4661 0))(
  ( (LexerInterfaceExt!4658 (__x!22363 Int)) (Lexer!4659) )
))
(declare-fun thiss!11361 () LexerInterface!4661)

(declare-datatypes ((List!33849 0))(
  ( (Nil!33725) (Cons!33725 (h!39145 Rule!9944) (t!232844 List!33849)) )
))
(declare-fun rules!1139 () List!33849)

(declare-fun rulesProduceIndividualToken!2171 (LexerInterface!4661 List!33849 Token!9546) Bool)

(assert (=> b!2844657 (= res!1183250 (rulesProduceIndividualToken!2171 thiss!11361 rules!1139 t2!27))))

(declare-fun b!2844658 () Bool)

(declare-fun e!1802322 () Bool)

(declare-fun tp!911803 () Bool)

(assert (=> b!2844658 (= e!1802322 (and tp!911803 mapRes!18591))))

(declare-fun condMapEmpty!18591 () Bool)

(declare-fun mapDefault!18591 () List!33846)

(assert (=> b!2844658 (= condMapEmpty!18591 (= (arr!6490 (_values!4378 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))) ((as const (Array (_ BitVec 32) List!33846)) mapDefault!18591)))))

(declare-fun mapNonEmpty!18591 () Bool)

(declare-fun mapRes!18590 () Bool)

(declare-fun tp!911799 () Bool)

(declare-fun tp!911807 () Bool)

(assert (=> mapNonEmpty!18591 (= mapRes!18590 (and tp!911799 tp!911807))))

(declare-fun mapRest!18591 () (Array (_ BitVec 32) List!33845))

(declare-fun mapValue!18590 () List!33845)

(declare-fun mapKey!18590 () (_ BitVec 32))

(assert (=> mapNonEmpty!18591 (= (arr!6489 (_values!4377 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))) (store mapRest!18591 mapKey!18590 mapValue!18590))))

(declare-fun b!2844659 () Bool)

(declare-fun e!1802321 () Bool)

(declare-fun e!1802338 () Bool)

(assert (=> b!2844659 (= e!1802321 e!1802338)))

(declare-fun b!2844660 () Bool)

(declare-fun e!1802347 () Bool)

(declare-fun e!1802345 () Bool)

(assert (=> b!2844660 (= e!1802347 e!1802345)))

(assert (=> b!2844661 (= e!1802326 (and tp!911784 tp!911805))))

(declare-fun mapIsEmpty!18590 () Bool)

(assert (=> mapIsEmpty!18590 mapRes!18590))

(declare-fun lt!1012244 () BalanceConc!20554)

(declare-fun b!2844662 () Bool)

(declare-fun e!1802348 () Bool)

(declare-datatypes ((tuple3!5292 0))(
  ( (tuple3!5293 (_1!19916 Bool) (_2!19916 CacheUp!2700) (_3!3116 CacheDown!2820)) )
))
(declare-fun prefixMatchZipperSequenceMem!5 (Regex!8463 BalanceConc!20554 CacheUp!2700 CacheDown!2820) tuple3!5292)

(declare-fun rulesRegex!1006 (LexerInterface!4661 List!33849) Regex!8463)

(declare-fun ++!8122 (BalanceConc!20554 BalanceConc!20554) BalanceConc!20554)

(declare-fun charsOf!3120 (Token!9546) BalanceConc!20554)

(declare-fun singletonSeq!2187 (C!17108) BalanceConc!20554)

(declare-fun apply!7855 (BalanceConc!20554 Int) C!17108)

(declare-fun separableTokensPredicate!922 (LexerInterface!4661 Token!9546 Token!9546 List!33849) Bool)

(assert (=> b!2844662 (= e!1802348 (not (= (not (_1!19916 (prefixMatchZipperSequenceMem!5 (rulesRegex!1006 thiss!11361 rules!1139) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) cacheUp!434 cacheDown!447))) (separableTokensPredicate!922 thiss!11361 t1!27 t2!27 rules!1139))))))

(declare-fun b!2844663 () Bool)

(declare-fun res!1183245 () Bool)

(assert (=> b!2844663 (=> (not res!1183245) (not e!1802333))))

(declare-fun isEmpty!18564 (List!33849) Bool)

(assert (=> b!2844663 (= res!1183245 (not (isEmpty!18564 rules!1139)))))

(declare-fun b!2844664 () Bool)

(declare-fun res!1183248 () Bool)

(assert (=> b!2844664 (=> (not res!1183248) (not e!1802333))))

(declare-fun rulesInvariant!4076 (LexerInterface!4661 List!33849) Bool)

(assert (=> b!2844664 (= res!1183248 (rulesInvariant!4076 thiss!11361 rules!1139))))

(declare-fun e!1802332 () Bool)

(declare-fun tp!911783 () Bool)

(declare-fun e!1802334 () Bool)

(declare-fun b!2844665 () Bool)

(assert (=> b!2844665 (= e!1802332 (and tp!911783 (inv!45721 (tag!5576 (h!39145 rules!1139))) (inv!45722 (transformation!5072 (h!39145 rules!1139))) e!1802334))))

(declare-fun res!1183247 () Bool)

(assert (=> start!276892 (=> (not res!1183247) (not e!1802333))))

(assert (=> start!276892 (= res!1183247 ((_ is Lexer!4659) thiss!11361))))

(assert (=> start!276892 e!1802333))

(assert (=> start!276892 true))

(declare-fun inv!45723 (CacheUp!2700) Bool)

(assert (=> start!276892 (and (inv!45723 cacheUp!434) e!1802329)))

(declare-fun e!1802340 () Bool)

(assert (=> start!276892 e!1802340))

(declare-fun inv!45724 (CacheDown!2820) Bool)

(assert (=> start!276892 (and (inv!45724 cacheDown!447) e!1802321)))

(declare-fun inv!45725 (Token!9546) Bool)

(assert (=> start!276892 (and (inv!45725 t2!27) e!1802342)))

(assert (=> start!276892 (and (inv!45725 t1!27) e!1802325)))

(declare-fun tp!911798 () Bool)

(declare-fun tp!911789 () Bool)

(declare-fun e!1802335 () Bool)

(declare-fun e!1802344 () Bool)

(declare-fun array_inv!4647 (array!14559) Bool)

(declare-fun array_inv!4648 (array!14561) Bool)

(assert (=> b!2844653 (= e!1802344 (and tp!911792 tp!911789 tp!911798 (array_inv!4647 (_keys!4396 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))) (array_inv!4648 (_values!4377 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))) e!1802335))))

(declare-fun b!2844666 () Bool)

(assert (=> b!2844666 (= e!1802341 e!1802344)))

(declare-fun b!2844667 () Bool)

(assert (=> b!2844667 (= e!1802333 e!1802348)))

(declare-fun res!1183249 () Bool)

(assert (=> b!2844667 (=> (not res!1183249) (not e!1802348))))

(declare-fun isEmpty!18565 (BalanceConc!20554) Bool)

(assert (=> b!2844667 (= res!1183249 (not (isEmpty!18565 lt!1012244)))))

(assert (=> b!2844667 (= lt!1012244 (charsOf!3120 t2!27))))

(declare-fun b!2844668 () Bool)

(declare-fun res!1183246 () Bool)

(assert (=> b!2844668 (=> (not res!1183246) (not e!1802333))))

(assert (=> b!2844668 (= res!1183246 (rulesProduceIndividualToken!2171 thiss!11361 rules!1139 t1!27))))

(declare-fun e!1802337 () Bool)

(assert (=> b!2844669 (= e!1802337 (and tp!911797 tp!911800))))

(declare-fun b!2844670 () Bool)

(assert (=> b!2844670 (= e!1802320 e!1802347)))

(assert (=> b!2844671 (= e!1802338 (and e!1802351 tp!911796))))

(declare-fun b!2844672 () Bool)

(declare-fun tp!911788 () Bool)

(assert (=> b!2844672 (= e!1802335 (and tp!911788 mapRes!18590))))

(declare-fun condMapEmpty!18590 () Bool)

(declare-fun mapDefault!18590 () List!33845)

(assert (=> b!2844672 (= condMapEmpty!18590 (= (arr!6489 (_values!4377 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))) ((as const (Array (_ BitVec 32) List!33845)) mapDefault!18590)))))

(declare-fun b!2844673 () Bool)

(declare-fun tp!911786 () Bool)

(assert (=> b!2844673 (= e!1802327 (and tp!911786 (inv!45721 (tag!5576 (rule!7500 t2!27))) (inv!45722 (transformation!5072 (rule!7500 t2!27))) e!1802337))))

(declare-fun tp!911794 () Bool)

(declare-fun tp!911804 () Bool)

(declare-fun array_inv!4649 (array!14563) Bool)

(assert (=> b!2844674 (= e!1802345 (and tp!911806 tp!911804 tp!911794 (array_inv!4647 (_keys!4397 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))) (array_inv!4649 (_values!4378 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))) e!1802322))))

(declare-fun mapIsEmpty!18591 () Bool)

(assert (=> mapIsEmpty!18591 mapRes!18591))

(declare-fun b!2844675 () Bool)

(declare-fun tp!911791 () Bool)

(assert (=> b!2844675 (= e!1802340 (and e!1802332 tp!911791))))

(assert (=> b!2844676 (= e!1802334 (and tp!911785 tp!911802))))

(assert (= (and start!276892 res!1183247) b!2844663))

(assert (= (and b!2844663 res!1183245) b!2844664))

(assert (= (and b!2844664 res!1183248) b!2844668))

(assert (= (and b!2844668 res!1183246) b!2844657))

(assert (= (and b!2844657 res!1183250) b!2844667))

(assert (= (and b!2844667 res!1183249) b!2844662))

(assert (= (and b!2844658 condMapEmpty!18591) mapIsEmpty!18591))

(assert (= (and b!2844658 (not condMapEmpty!18591)) mapNonEmpty!18590))

(assert (= b!2844674 b!2844658))

(assert (= b!2844660 b!2844674))

(assert (= b!2844670 b!2844660))

(assert (= (and b!2844654 ((_ is LongMap!4097) (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))) b!2844670))

(assert (= b!2844650 b!2844654))

(assert (= (and b!2844651 ((_ is HashMap!4003) (cache!4138 cacheUp!434))) b!2844650))

(assert (= start!276892 b!2844651))

(assert (= b!2844665 b!2844676))

(assert (= b!2844675 b!2844665))

(assert (= (and start!276892 ((_ is Cons!33725) rules!1139)) b!2844675))

(assert (= (and b!2844672 condMapEmpty!18590) mapIsEmpty!18590))

(assert (= (and b!2844672 (not condMapEmpty!18590)) mapNonEmpty!18591))

(assert (= b!2844653 b!2844672))

(assert (= b!2844666 b!2844653))

(assert (= b!2844649 b!2844666))

(assert (= (and b!2844648 ((_ is LongMap!4096) (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))) b!2844649))

(assert (= b!2844671 b!2844648))

(assert (= (and b!2844659 ((_ is HashMap!4002) (cache!4137 cacheDown!447))) b!2844671))

(assert (= start!276892 b!2844659))

(assert (= b!2844673 b!2844669))

(assert (= b!2844655 b!2844673))

(assert (= start!276892 b!2844655))

(assert (= b!2844652 b!2844661))

(assert (= b!2844656 b!2844652))

(assert (= start!276892 b!2844656))

(declare-fun m!3272433 () Bool)

(assert (=> b!2844652 m!3272433))

(declare-fun m!3272435 () Bool)

(assert (=> b!2844652 m!3272435))

(declare-fun m!3272437 () Bool)

(assert (=> b!2844674 m!3272437))

(declare-fun m!3272439 () Bool)

(assert (=> b!2844674 m!3272439))

(declare-fun m!3272441 () Bool)

(assert (=> b!2844665 m!3272441))

(declare-fun m!3272443 () Bool)

(assert (=> b!2844665 m!3272443))

(declare-fun m!3272445 () Bool)

(assert (=> b!2844664 m!3272445))

(declare-fun m!3272447 () Bool)

(assert (=> b!2844653 m!3272447))

(declare-fun m!3272449 () Bool)

(assert (=> b!2844653 m!3272449))

(declare-fun m!3272451 () Bool)

(assert (=> start!276892 m!3272451))

(declare-fun m!3272453 () Bool)

(assert (=> start!276892 m!3272453))

(declare-fun m!3272455 () Bool)

(assert (=> start!276892 m!3272455))

(declare-fun m!3272457 () Bool)

(assert (=> start!276892 m!3272457))

(declare-fun m!3272459 () Bool)

(assert (=> b!2844656 m!3272459))

(declare-fun m!3272461 () Bool)

(assert (=> b!2844667 m!3272461))

(declare-fun m!3272463 () Bool)

(assert (=> b!2844667 m!3272463))

(declare-fun m!3272465 () Bool)

(assert (=> b!2844662 m!3272465))

(declare-fun m!3272467 () Bool)

(assert (=> b!2844662 m!3272467))

(assert (=> b!2844662 m!3272465))

(declare-fun m!3272469 () Bool)

(assert (=> b!2844662 m!3272469))

(declare-fun m!3272471 () Bool)

(assert (=> b!2844662 m!3272471))

(declare-fun m!3272473 () Bool)

(assert (=> b!2844662 m!3272473))

(declare-fun m!3272475 () Bool)

(assert (=> b!2844662 m!3272475))

(assert (=> b!2844662 m!3272467))

(assert (=> b!2844662 m!3272471))

(declare-fun m!3272477 () Bool)

(assert (=> b!2844662 m!3272477))

(assert (=> b!2844662 m!3272475))

(assert (=> b!2844662 m!3272469))

(declare-fun m!3272479 () Bool)

(assert (=> b!2844668 m!3272479))

(declare-fun m!3272481 () Bool)

(assert (=> b!2844663 m!3272481))

(declare-fun m!3272483 () Bool)

(assert (=> b!2844657 m!3272483))

(declare-fun m!3272485 () Bool)

(assert (=> b!2844673 m!3272485))

(declare-fun m!3272487 () Bool)

(assert (=> b!2844673 m!3272487))

(declare-fun m!3272489 () Bool)

(assert (=> b!2844655 m!3272489))

(declare-fun m!3272491 () Bool)

(assert (=> mapNonEmpty!18591 m!3272491))

(declare-fun m!3272493 () Bool)

(assert (=> mapNonEmpty!18590 m!3272493))

(check-sat b_and!208861 (not b_next!83337) (not mapNonEmpty!18591) (not start!276892) (not b!2844664) (not b_next!83349) (not b!2844656) (not b!2844665) (not b!2844652) b_and!208867 (not b!2844653) (not b!2844674) (not b!2844655) b_and!208865 (not b!2844662) b_and!208857 (not b_next!83353) (not b_next!83341) (not b_next!83355) b_and!208853 (not b_next!83339) (not b!2844672) (not b!2844668) (not b!2844663) (not b_next!83345) (not mapNonEmpty!18590) (not b_next!83347) (not b!2844658) (not b_next!83351) (not b!2844657) b_and!208859 b_and!208863 (not b!2844673) (not b!2844675) b_and!208869 (not b_next!83343) b_and!208851 (not b!2844667) b_and!208855)
(check-sat b_and!208867 b_and!208865 b_and!208861 (not b_next!83337) (not b_next!83351) b_and!208859 (not b_next!83349) b_and!208863 b_and!208855 b_and!208857 (not b_next!83353) (not b_next!83341) (not b_next!83355) b_and!208853 (not b_next!83339) (not b_next!83345) (not b_next!83347) b_and!208869 (not b_next!83343) b_and!208851)
(get-model)

(declare-fun b!2844687 () Bool)

(declare-fun e!1802359 () Bool)

(declare-fun e!1802358 () Bool)

(assert (=> b!2844687 (= e!1802359 e!1802358)))

(declare-fun c!459098 () Bool)

(assert (=> b!2844687 (= c!459098 ((_ is IntegerValue!15907) (value!162954 t2!27)))))

(declare-fun b!2844688 () Bool)

(declare-fun e!1802360 () Bool)

(declare-fun inv!15 (TokenValue!5302) Bool)

(assert (=> b!2844688 (= e!1802360 (inv!15 (value!162954 t2!27)))))

(declare-fun d!824897 () Bool)

(declare-fun c!459099 () Bool)

(assert (=> d!824897 (= c!459099 ((_ is IntegerValue!15906) (value!162954 t2!27)))))

(assert (=> d!824897 (= (inv!21 (value!162954 t2!27)) e!1802359)))

(declare-fun b!2844689 () Bool)

(declare-fun res!1183257 () Bool)

(assert (=> b!2844689 (=> res!1183257 e!1802360)))

(assert (=> b!2844689 (= res!1183257 (not ((_ is IntegerValue!15908) (value!162954 t2!27))))))

(assert (=> b!2844689 (= e!1802358 e!1802360)))

(declare-fun b!2844690 () Bool)

(declare-fun inv!16 (TokenValue!5302) Bool)

(assert (=> b!2844690 (= e!1802359 (inv!16 (value!162954 t2!27)))))

(declare-fun b!2844691 () Bool)

(declare-fun inv!17 (TokenValue!5302) Bool)

(assert (=> b!2844691 (= e!1802358 (inv!17 (value!162954 t2!27)))))

(assert (= (and d!824897 c!459099) b!2844690))

(assert (= (and d!824897 (not c!459099)) b!2844687))

(assert (= (and b!2844687 c!459098) b!2844691))

(assert (= (and b!2844687 (not c!459098)) b!2844689))

(assert (= (and b!2844689 (not res!1183257)) b!2844688))

(declare-fun m!3272495 () Bool)

(assert (=> b!2844688 m!3272495))

(declare-fun m!3272497 () Bool)

(assert (=> b!2844690 m!3272497))

(declare-fun m!3272499 () Bool)

(assert (=> b!2844691 m!3272499))

(assert (=> b!2844655 d!824897))

(declare-fun d!824899 () Bool)

(declare-fun res!1183260 () Bool)

(declare-fun e!1802363 () Bool)

(assert (=> d!824899 (=> (not res!1183260) (not e!1802363))))

(declare-fun rulesValid!1885 (LexerInterface!4661 List!33849) Bool)

(assert (=> d!824899 (= res!1183260 (rulesValid!1885 thiss!11361 rules!1139))))

(assert (=> d!824899 (= (rulesInvariant!4076 thiss!11361 rules!1139) e!1802363)))

(declare-fun b!2844694 () Bool)

(declare-datatypes ((List!33850 0))(
  ( (Nil!33726) (Cons!33726 (h!39146 String!37076) (t!232863 List!33850)) )
))
(declare-fun noDuplicateTag!1881 (LexerInterface!4661 List!33849 List!33850) Bool)

(assert (=> b!2844694 (= e!1802363 (noDuplicateTag!1881 thiss!11361 rules!1139 Nil!33726))))

(assert (= (and d!824899 res!1183260) b!2844694))

(declare-fun m!3272501 () Bool)

(assert (=> d!824899 m!3272501))

(declare-fun m!3272503 () Bool)

(assert (=> b!2844694 m!3272503))

(assert (=> b!2844664 d!824899))

(declare-fun b!2844695 () Bool)

(declare-fun e!1802365 () Bool)

(declare-fun e!1802364 () Bool)

(assert (=> b!2844695 (= e!1802365 e!1802364)))

(declare-fun c!459100 () Bool)

(assert (=> b!2844695 (= c!459100 ((_ is IntegerValue!15907) (value!162954 t1!27)))))

(declare-fun b!2844696 () Bool)

(declare-fun e!1802366 () Bool)

(assert (=> b!2844696 (= e!1802366 (inv!15 (value!162954 t1!27)))))

(declare-fun d!824901 () Bool)

(declare-fun c!459101 () Bool)

(assert (=> d!824901 (= c!459101 ((_ is IntegerValue!15906) (value!162954 t1!27)))))

(assert (=> d!824901 (= (inv!21 (value!162954 t1!27)) e!1802365)))

(declare-fun b!2844697 () Bool)

(declare-fun res!1183261 () Bool)

(assert (=> b!2844697 (=> res!1183261 e!1802366)))

(assert (=> b!2844697 (= res!1183261 (not ((_ is IntegerValue!15908) (value!162954 t1!27))))))

(assert (=> b!2844697 (= e!1802364 e!1802366)))

(declare-fun b!2844698 () Bool)

(assert (=> b!2844698 (= e!1802365 (inv!16 (value!162954 t1!27)))))

(declare-fun b!2844699 () Bool)

(assert (=> b!2844699 (= e!1802364 (inv!17 (value!162954 t1!27)))))

(assert (= (and d!824901 c!459101) b!2844698))

(assert (= (and d!824901 (not c!459101)) b!2844695))

(assert (= (and b!2844695 c!459100) b!2844699))

(assert (= (and b!2844695 (not c!459100)) b!2844697))

(assert (= (and b!2844697 (not res!1183261)) b!2844696))

(declare-fun m!3272505 () Bool)

(assert (=> b!2844696 m!3272505))

(declare-fun m!3272507 () Bool)

(assert (=> b!2844698 m!3272507))

(declare-fun m!3272509 () Bool)

(assert (=> b!2844699 m!3272509))

(assert (=> b!2844656 d!824901))

(declare-fun d!824903 () Bool)

(assert (=> d!824903 (= (inv!45721 (tag!5576 (h!39145 rules!1139))) (= (mod (str.len (value!162953 (tag!5576 (h!39145 rules!1139)))) 2) 0))))

(assert (=> b!2844665 d!824903))

(declare-fun d!824905 () Bool)

(declare-fun res!1183264 () Bool)

(declare-fun e!1802369 () Bool)

(assert (=> d!824905 (=> (not res!1183264) (not e!1802369))))

(declare-fun semiInverseModEq!2116 (Int Int) Bool)

(assert (=> d!824905 (= res!1183264 (semiInverseModEq!2116 (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toValue!7126 (transformation!5072 (h!39145 rules!1139)))))))

(assert (=> d!824905 (= (inv!45722 (transformation!5072 (h!39145 rules!1139))) e!1802369)))

(declare-fun b!2844702 () Bool)

(declare-fun equivClasses!2015 (Int Int) Bool)

(assert (=> b!2844702 (= e!1802369 (equivClasses!2015 (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toValue!7126 (transformation!5072 (h!39145 rules!1139)))))))

(assert (= (and d!824905 res!1183264) b!2844702))

(declare-fun m!3272511 () Bool)

(assert (=> d!824905 m!3272511))

(declare-fun m!3272513 () Bool)

(assert (=> b!2844702 m!3272513))

(assert (=> b!2844665 d!824905))

(declare-fun d!824907 () Bool)

(declare-fun lt!1012250 () Bool)

(declare-fun e!1802375 () Bool)

(assert (=> d!824907 (= lt!1012250 e!1802375)))

(declare-fun res!1183271 () Bool)

(assert (=> d!824907 (=> (not res!1183271) (not e!1802375))))

(declare-datatypes ((List!33851 0))(
  ( (Nil!33727) (Cons!33727 (h!39147 Token!9546) (t!232864 List!33851)) )
))
(declare-datatypes ((IArray!20923 0))(
  ( (IArray!20924 (innerList!10519 List!33851)) )
))
(declare-datatypes ((Conc!10459 0))(
  ( (Node!10459 (left!25405 Conc!10459) (right!25735 Conc!10459) (csize!21148 Int) (cheight!10670 Int)) (Leaf!15914 (xs!13575 IArray!20923) (csize!21149 Int)) (Empty!10459) )
))
(declare-datatypes ((BalanceConc!20556 0))(
  ( (BalanceConc!20557 (c!459105 Conc!10459)) )
))
(declare-fun list!12563 (BalanceConc!20556) List!33851)

(declare-datatypes ((tuple2!33600 0))(
  ( (tuple2!33601 (_1!19917 BalanceConc!20556) (_2!19917 BalanceConc!20554)) )
))
(declare-fun lex!2031 (LexerInterface!4661 List!33849 BalanceConc!20554) tuple2!33600)

(declare-fun print!1750 (LexerInterface!4661 BalanceConc!20556) BalanceConc!20554)

(declare-fun singletonSeq!2188 (Token!9546) BalanceConc!20556)

(assert (=> d!824907 (= res!1183271 (= (list!12563 (_1!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27))))) (list!12563 (singletonSeq!2188 t2!27))))))

(declare-fun e!1802374 () Bool)

(assert (=> d!824907 (= lt!1012250 e!1802374)))

(declare-fun res!1183273 () Bool)

(assert (=> d!824907 (=> (not res!1183273) (not e!1802374))))

(declare-fun lt!1012251 () tuple2!33600)

(declare-fun size!26199 (BalanceConc!20556) Int)

(assert (=> d!824907 (= res!1183273 (= (size!26199 (_1!19917 lt!1012251)) 1))))

(assert (=> d!824907 (= lt!1012251 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27))))))

(assert (=> d!824907 (not (isEmpty!18564 rules!1139))))

(assert (=> d!824907 (= (rulesProduceIndividualToken!2171 thiss!11361 rules!1139 t2!27) lt!1012250)))

(declare-fun b!2844709 () Bool)

(declare-fun res!1183272 () Bool)

(assert (=> b!2844709 (=> (not res!1183272) (not e!1802374))))

(declare-fun apply!7856 (BalanceConc!20556 Int) Token!9546)

(assert (=> b!2844709 (= res!1183272 (= (apply!7856 (_1!19917 lt!1012251) 0) t2!27))))

(declare-fun b!2844710 () Bool)

(assert (=> b!2844710 (= e!1802374 (isEmpty!18565 (_2!19917 lt!1012251)))))

(declare-fun b!2844711 () Bool)

(assert (=> b!2844711 (= e!1802375 (isEmpty!18565 (_2!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27))))))))

(assert (= (and d!824907 res!1183273) b!2844709))

(assert (= (and b!2844709 res!1183272) b!2844710))

(assert (= (and d!824907 res!1183271) b!2844711))

(declare-fun m!3272515 () Bool)

(assert (=> d!824907 m!3272515))

(declare-fun m!3272517 () Bool)

(assert (=> d!824907 m!3272517))

(assert (=> d!824907 m!3272481))

(declare-fun m!3272519 () Bool)

(assert (=> d!824907 m!3272519))

(assert (=> d!824907 m!3272515))

(assert (=> d!824907 m!3272515))

(declare-fun m!3272521 () Bool)

(assert (=> d!824907 m!3272521))

(assert (=> d!824907 m!3272517))

(declare-fun m!3272523 () Bool)

(assert (=> d!824907 m!3272523))

(declare-fun m!3272525 () Bool)

(assert (=> d!824907 m!3272525))

(declare-fun m!3272527 () Bool)

(assert (=> b!2844709 m!3272527))

(declare-fun m!3272529 () Bool)

(assert (=> b!2844710 m!3272529))

(assert (=> b!2844711 m!3272515))

(assert (=> b!2844711 m!3272515))

(assert (=> b!2844711 m!3272517))

(assert (=> b!2844711 m!3272517))

(assert (=> b!2844711 m!3272523))

(declare-fun m!3272531 () Bool)

(assert (=> b!2844711 m!3272531))

(assert (=> b!2844657 d!824907))

(declare-fun d!824909 () Bool)

(declare-fun res!1183276 () Bool)

(declare-fun e!1802378 () Bool)

(assert (=> d!824909 (=> (not res!1183276) (not e!1802378))))

(assert (=> d!824909 (= res!1183276 ((_ is HashMap!4003) (cache!4138 cacheUp!434)))))

(assert (=> d!824909 (= (inv!45723 cacheUp!434) e!1802378)))

(declare-fun b!2844714 () Bool)

(declare-fun validCacheMapUp!406 (MutableMap!4003) Bool)

(assert (=> b!2844714 (= e!1802378 (validCacheMapUp!406 (cache!4138 cacheUp!434)))))

(assert (= (and d!824909 res!1183276) b!2844714))

(declare-fun m!3272533 () Bool)

(assert (=> b!2844714 m!3272533))

(assert (=> start!276892 d!824909))

(declare-fun d!824911 () Bool)

(declare-fun res!1183279 () Bool)

(declare-fun e!1802381 () Bool)

(assert (=> d!824911 (=> (not res!1183279) (not e!1802381))))

(assert (=> d!824911 (= res!1183279 ((_ is HashMap!4002) (cache!4137 cacheDown!447)))))

(assert (=> d!824911 (= (inv!45724 cacheDown!447) e!1802381)))

(declare-fun b!2844717 () Bool)

(declare-fun validCacheMapDown!437 (MutableMap!4002) Bool)

(assert (=> b!2844717 (= e!1802381 (validCacheMapDown!437 (cache!4137 cacheDown!447)))))

(assert (= (and d!824911 res!1183279) b!2844717))

(declare-fun m!3272535 () Bool)

(assert (=> b!2844717 m!3272535))

(assert (=> start!276892 d!824911))

(declare-fun d!824913 () Bool)

(declare-fun res!1183284 () Bool)

(declare-fun e!1802384 () Bool)

(assert (=> d!824913 (=> (not res!1183284) (not e!1802384))))

(declare-fun isEmpty!18566 (List!33848) Bool)

(assert (=> d!824913 (= res!1183284 (not (isEmpty!18566 (originalCharacters!5804 t2!27))))))

(assert (=> d!824913 (= (inv!45725 t2!27) e!1802384)))

(declare-fun b!2844722 () Bool)

(declare-fun res!1183285 () Bool)

(assert (=> b!2844722 (=> (not res!1183285) (not e!1802384))))

(declare-fun list!12564 (BalanceConc!20554) List!33848)

(declare-fun dynLambda!14196 (Int TokenValue!5302) BalanceConc!20554)

(assert (=> b!2844722 (= res!1183285 (= (originalCharacters!5804 t2!27) (list!12564 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))))))

(declare-fun b!2844723 () Bool)

(declare-fun size!26200 (List!33848) Int)

(assert (=> b!2844723 (= e!1802384 (= (size!26198 t2!27) (size!26200 (originalCharacters!5804 t2!27))))))

(assert (= (and d!824913 res!1183284) b!2844722))

(assert (= (and b!2844722 res!1183285) b!2844723))

(declare-fun b_lambda!85535 () Bool)

(assert (=> (not b_lambda!85535) (not b!2844722)))

(declare-fun t!232847 () Bool)

(declare-fun tb!155069 () Bool)

(assert (=> (and b!2844676 (= (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toChars!6985 (transformation!5072 (rule!7500 t2!27)))) t!232847) tb!155069))

(declare-fun b!2844728 () Bool)

(declare-fun e!1802387 () Bool)

(declare-fun tp!911811 () Bool)

(declare-fun inv!45726 (Conc!10458) Bool)

(assert (=> b!2844728 (= e!1802387 (and (inv!45726 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))) tp!911811))))

(declare-fun result!193518 () Bool)

(declare-fun inv!45727 (BalanceConc!20554) Bool)

(assert (=> tb!155069 (= result!193518 (and (inv!45727 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27))) e!1802387))))

(assert (= tb!155069 b!2844728))

(declare-fun m!3272537 () Bool)

(assert (=> b!2844728 m!3272537))

(declare-fun m!3272539 () Bool)

(assert (=> tb!155069 m!3272539))

(assert (=> b!2844722 t!232847))

(declare-fun b_and!208871 () Bool)

(assert (= b_and!208859 (and (=> t!232847 result!193518) b_and!208871)))

(declare-fun tb!155071 () Bool)

(declare-fun t!232849 () Bool)

(assert (=> (and b!2844661 (= (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (toChars!6985 (transformation!5072 (rule!7500 t2!27)))) t!232849) tb!155071))

(declare-fun result!193522 () Bool)

(assert (= result!193522 result!193518))

(assert (=> b!2844722 t!232849))

(declare-fun b_and!208873 () Bool)

(assert (= b_and!208865 (and (=> t!232849 result!193522) b_and!208873)))

(declare-fun t!232851 () Bool)

(declare-fun tb!155073 () Bool)

(assert (=> (and b!2844669 (= (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toChars!6985 (transformation!5072 (rule!7500 t2!27)))) t!232851) tb!155073))

(declare-fun result!193524 () Bool)

(assert (= result!193524 result!193518))

(assert (=> b!2844722 t!232851))

(declare-fun b_and!208875 () Bool)

(assert (= b_and!208869 (and (=> t!232851 result!193524) b_and!208875)))

(declare-fun m!3272541 () Bool)

(assert (=> d!824913 m!3272541))

(declare-fun m!3272543 () Bool)

(assert (=> b!2844722 m!3272543))

(assert (=> b!2844722 m!3272543))

(declare-fun m!3272545 () Bool)

(assert (=> b!2844722 m!3272545))

(declare-fun m!3272547 () Bool)

(assert (=> b!2844723 m!3272547))

(assert (=> start!276892 d!824913))

(declare-fun d!824915 () Bool)

(declare-fun res!1183286 () Bool)

(declare-fun e!1802388 () Bool)

(assert (=> d!824915 (=> (not res!1183286) (not e!1802388))))

(assert (=> d!824915 (= res!1183286 (not (isEmpty!18566 (originalCharacters!5804 t1!27))))))

(assert (=> d!824915 (= (inv!45725 t1!27) e!1802388)))

(declare-fun b!2844729 () Bool)

(declare-fun res!1183287 () Bool)

(assert (=> b!2844729 (=> (not res!1183287) (not e!1802388))))

(assert (=> b!2844729 (= res!1183287 (= (originalCharacters!5804 t1!27) (list!12564 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))))))

(declare-fun b!2844730 () Bool)

(assert (=> b!2844730 (= e!1802388 (= (size!26198 t1!27) (size!26200 (originalCharacters!5804 t1!27))))))

(assert (= (and d!824915 res!1183286) b!2844729))

(assert (= (and b!2844729 res!1183287) b!2844730))

(declare-fun b_lambda!85537 () Bool)

(assert (=> (not b_lambda!85537) (not b!2844729)))

(declare-fun tb!155075 () Bool)

(declare-fun t!232853 () Bool)

(assert (=> (and b!2844676 (= (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toChars!6985 (transformation!5072 (rule!7500 t1!27)))) t!232853) tb!155075))

(declare-fun b!2844731 () Bool)

(declare-fun e!1802389 () Bool)

(declare-fun tp!911812 () Bool)

(assert (=> b!2844731 (= e!1802389 (and (inv!45726 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))) tp!911812))))

(declare-fun result!193526 () Bool)

(assert (=> tb!155075 (= result!193526 (and (inv!45727 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27))) e!1802389))))

(assert (= tb!155075 b!2844731))

(declare-fun m!3272549 () Bool)

(assert (=> b!2844731 m!3272549))

(declare-fun m!3272551 () Bool)

(assert (=> tb!155075 m!3272551))

(assert (=> b!2844729 t!232853))

(declare-fun b_and!208877 () Bool)

(assert (= b_and!208871 (and (=> t!232853 result!193526) b_and!208877)))

(declare-fun t!232855 () Bool)

(declare-fun tb!155077 () Bool)

(assert (=> (and b!2844661 (= (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (toChars!6985 (transformation!5072 (rule!7500 t1!27)))) t!232855) tb!155077))

(declare-fun result!193528 () Bool)

(assert (= result!193528 result!193526))

(assert (=> b!2844729 t!232855))

(declare-fun b_and!208879 () Bool)

(assert (= b_and!208873 (and (=> t!232855 result!193528) b_and!208879)))

(declare-fun t!232857 () Bool)

(declare-fun tb!155079 () Bool)

(assert (=> (and b!2844669 (= (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toChars!6985 (transformation!5072 (rule!7500 t1!27)))) t!232857) tb!155079))

(declare-fun result!193530 () Bool)

(assert (= result!193530 result!193526))

(assert (=> b!2844729 t!232857))

(declare-fun b_and!208881 () Bool)

(assert (= b_and!208875 (and (=> t!232857 result!193530) b_and!208881)))

(declare-fun m!3272553 () Bool)

(assert (=> d!824915 m!3272553))

(declare-fun m!3272555 () Bool)

(assert (=> b!2844729 m!3272555))

(assert (=> b!2844729 m!3272555))

(declare-fun m!3272557 () Bool)

(assert (=> b!2844729 m!3272557))

(declare-fun m!3272559 () Bool)

(assert (=> b!2844730 m!3272559))

(assert (=> start!276892 d!824915))

(declare-fun d!824917 () Bool)

(assert (=> d!824917 (= (array_inv!4647 (_keys!4396 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))) (bvsge (size!26195 (_keys!4396 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))) #b00000000000000000000000000000000))))

(assert (=> b!2844653 d!824917))

(declare-fun d!824919 () Bool)

(assert (=> d!824919 (= (array_inv!4648 (_values!4377 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))) (bvsge (size!26196 (_values!4377 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))) #b00000000000000000000000000000000))))

(assert (=> b!2844653 d!824919))

(declare-fun d!824921 () Bool)

(declare-fun e!1802392 () Bool)

(assert (=> d!824921 e!1802392))

(declare-fun res!1183297 () Bool)

(assert (=> d!824921 (=> (not res!1183297) (not e!1802392))))

(declare-fun appendAssocInst!719 (Conc!10458 Conc!10458) Bool)

(assert (=> d!824921 (= res!1183297 (appendAssocInst!719 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))

(declare-fun lt!1012254 () BalanceConc!20554)

(declare-fun ++!8123 (Conc!10458 Conc!10458) Conc!10458)

(assert (=> d!824921 (= lt!1012254 (BalanceConc!20555 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(assert (=> d!824921 (= (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012254)))

(declare-fun b!2844741 () Bool)

(declare-fun res!1183298 () Bool)

(assert (=> b!2844741 (=> (not res!1183298) (not e!1802392))))

(declare-fun height!1515 (Conc!10458) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2844741 (= res!1183298 (<= (height!1515 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) (+ (max!0 (height!1515 (c!459093 (charsOf!3120 t1!27))) (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) 1)))))

(declare-fun b!2844740 () Bool)

(declare-fun res!1183299 () Bool)

(assert (=> b!2844740 (=> (not res!1183299) (not e!1802392))))

(declare-fun isBalanced!3153 (Conc!10458) Bool)

(assert (=> b!2844740 (= res!1183299 (isBalanced!3153 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun b!2844743 () Bool)

(declare-fun ++!8124 (List!33848 List!33848) List!33848)

(assert (=> b!2844743 (= e!1802392 (= (list!12564 lt!1012254) (++!8124 (list!12564 (charsOf!3120 t1!27)) (list!12564 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun b!2844742 () Bool)

(declare-fun res!1183296 () Bool)

(assert (=> b!2844742 (=> (not res!1183296) (not e!1802392))))

(assert (=> b!2844742 (= res!1183296 (>= (height!1515 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) (max!0 (height!1515 (c!459093 (charsOf!3120 t1!27))) (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(assert (= (and d!824921 res!1183297) b!2844740))

(assert (= (and b!2844740 res!1183299) b!2844741))

(assert (= (and b!2844741 res!1183298) b!2844742))

(assert (= (and b!2844742 res!1183296) b!2844743))

(declare-fun m!3272561 () Bool)

(assert (=> b!2844743 m!3272561))

(assert (=> b!2844743 m!3272475))

(declare-fun m!3272563 () Bool)

(assert (=> b!2844743 m!3272563))

(assert (=> b!2844743 m!3272467))

(declare-fun m!3272565 () Bool)

(assert (=> b!2844743 m!3272565))

(assert (=> b!2844743 m!3272563))

(assert (=> b!2844743 m!3272565))

(declare-fun m!3272567 () Bool)

(assert (=> b!2844743 m!3272567))

(declare-fun m!3272569 () Bool)

(assert (=> d!824921 m!3272569))

(declare-fun m!3272571 () Bool)

(assert (=> d!824921 m!3272571))

(assert (=> b!2844740 m!3272571))

(assert (=> b!2844740 m!3272571))

(declare-fun m!3272573 () Bool)

(assert (=> b!2844740 m!3272573))

(assert (=> b!2844741 m!3272571))

(declare-fun m!3272575 () Bool)

(assert (=> b!2844741 m!3272575))

(declare-fun m!3272577 () Bool)

(assert (=> b!2844741 m!3272577))

(assert (=> b!2844741 m!3272571))

(declare-fun m!3272579 () Bool)

(assert (=> b!2844741 m!3272579))

(assert (=> b!2844741 m!3272577))

(assert (=> b!2844741 m!3272579))

(declare-fun m!3272581 () Bool)

(assert (=> b!2844741 m!3272581))

(assert (=> b!2844742 m!3272571))

(assert (=> b!2844742 m!3272575))

(assert (=> b!2844742 m!3272577))

(assert (=> b!2844742 m!3272571))

(assert (=> b!2844742 m!3272579))

(assert (=> b!2844742 m!3272577))

(assert (=> b!2844742 m!3272579))

(assert (=> b!2844742 m!3272581))

(assert (=> b!2844662 d!824921))

(declare-fun d!824923 () Bool)

(declare-fun lt!1012257 () BalanceConc!20554)

(assert (=> d!824923 (= (list!12564 lt!1012257) (originalCharacters!5804 t1!27))))

(assert (=> d!824923 (= lt!1012257 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))))

(assert (=> d!824923 (= (charsOf!3120 t1!27) lt!1012257)))

(declare-fun b_lambda!85539 () Bool)

(assert (=> (not b_lambda!85539) (not d!824923)))

(assert (=> d!824923 t!232853))

(declare-fun b_and!208883 () Bool)

(assert (= b_and!208877 (and (=> t!232853 result!193526) b_and!208883)))

(assert (=> d!824923 t!232855))

(declare-fun b_and!208885 () Bool)

(assert (= b_and!208879 (and (=> t!232855 result!193528) b_and!208885)))

(assert (=> d!824923 t!232857))

(declare-fun b_and!208887 () Bool)

(assert (= b_and!208881 (and (=> t!232857 result!193530) b_and!208887)))

(declare-fun m!3272583 () Bool)

(assert (=> d!824923 m!3272583))

(assert (=> d!824923 m!3272555))

(assert (=> b!2844662 d!824923))

(declare-fun d!824925 () Bool)

(declare-fun prefixMatchZipperSequence!745 (Regex!8463 BalanceConc!20554) Bool)

(assert (=> d!824925 (= (separableTokensPredicate!922 thiss!11361 t1!27 t2!27 rules!1139) (not (prefixMatchZipperSequence!745 (rulesRegex!1006 thiss!11361 rules!1139) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))))))))

(declare-fun bs!519194 () Bool)

(assert (= bs!519194 d!824925))

(assert (=> bs!519194 m!3272469))

(assert (=> bs!519194 m!3272463))

(assert (=> bs!519194 m!3272463))

(declare-fun m!3272585 () Bool)

(assert (=> bs!519194 m!3272585))

(assert (=> bs!519194 m!3272585))

(declare-fun m!3272587 () Bool)

(assert (=> bs!519194 m!3272587))

(assert (=> bs!519194 m!3272469))

(declare-fun m!3272589 () Bool)

(assert (=> bs!519194 m!3272589))

(declare-fun m!3272591 () Bool)

(assert (=> bs!519194 m!3272591))

(assert (=> bs!519194 m!3272475))

(assert (=> bs!519194 m!3272475))

(assert (=> bs!519194 m!3272587))

(assert (=> bs!519194 m!3272589))

(assert (=> b!2844662 d!824925))

(declare-fun lt!1012280 () tuple3!5292)

(declare-fun d!824927 () Bool)

(declare-fun prefixMatch!809 (Regex!8463 List!33848) Bool)

(assert (=> d!824927 (= (_1!19916 lt!1012280) (prefixMatch!809 (rulesRegex!1006 thiss!11361 rules!1139) (list!12564 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun lt!1012289 () tuple3!5292)

(assert (=> d!824927 (= lt!1012280 (tuple3!5293 (_1!19916 lt!1012289) (_2!19916 lt!1012289) (_3!3116 lt!1012289)))))

(declare-fun prefixMatchZipperSequenceMem!6 ((InoxSet Context!4982) BalanceConc!20554 Int CacheUp!2700 CacheDown!2820) tuple3!5292)

(declare-fun focus!295 (Regex!8463) (InoxSet Context!4982))

(assert (=> d!824927 (= lt!1012289 (prefixMatchZipperSequenceMem!6 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) 0 cacheUp!434 cacheDown!447))))

(declare-datatypes ((Unit!47519 0))(
  ( (Unit!47520) )
))
(declare-fun lt!1012281 () Unit!47519)

(declare-fun lt!1012288 () Unit!47519)

(assert (=> d!824927 (= lt!1012281 lt!1012288)))

(declare-fun lt!1012285 () List!33848)

(declare-fun lt!1012284 () (InoxSet Context!4982))

(declare-fun prefixMatchZipper!225 ((InoxSet Context!4982) List!33848) Bool)

(assert (=> d!824927 (= (prefixMatch!809 (rulesRegex!1006 thiss!11361 rules!1139) lt!1012285) (prefixMatchZipper!225 lt!1012284 lt!1012285))))

(declare-datatypes ((List!33852 0))(
  ( (Nil!33728) (Cons!33728 (h!39148 Context!4982) (t!232865 List!33852)) )
))
(declare-fun lt!1012290 () List!33852)

(declare-fun prefixMatchZipperRegexEquiv!225 ((InoxSet Context!4982) List!33852 Regex!8463 List!33848) Unit!47519)

(assert (=> d!824927 (= lt!1012288 (prefixMatchZipperRegexEquiv!225 lt!1012284 lt!1012290 (rulesRegex!1006 thiss!11361 rules!1139) lt!1012285))))

(assert (=> d!824927 (= lt!1012285 (list!12564 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))

(declare-fun toList!1900 ((InoxSet Context!4982)) List!33852)

(assert (=> d!824927 (= lt!1012290 (toList!1900 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139))))))

(assert (=> d!824927 (= lt!1012284 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)))))

(declare-fun lt!1012282 () Unit!47519)

(declare-fun lt!1012283 () Unit!47519)

(assert (=> d!824927 (= lt!1012282 lt!1012283)))

(declare-fun lt!1012287 () Int)

(declare-fun lt!1012286 () (InoxSet Context!4982))

(declare-fun dropList!1010 (BalanceConc!20554 Int) List!33848)

(declare-fun prefixMatchZipperSequence!746 ((InoxSet Context!4982) BalanceConc!20554 Int) Bool)

(assert (=> d!824927 (= (prefixMatchZipper!225 lt!1012286 (dropList!1010 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287)) (prefixMatchZipperSequence!746 lt!1012286 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!225 ((InoxSet Context!4982) BalanceConc!20554 Int) Unit!47519)

(assert (=> d!824927 (= lt!1012283 (lemmaprefixMatchZipperSequenceEquivalent!225 lt!1012286 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287))))

(assert (=> d!824927 (= lt!1012287 0)))

(assert (=> d!824927 (= lt!1012286 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)))))

(declare-fun validRegex!3356 (Regex!8463) Bool)

(assert (=> d!824927 (validRegex!3356 (rulesRegex!1006 thiss!11361 rules!1139))))

(assert (=> d!824927 (= (prefixMatchZipperSequenceMem!5 (rulesRegex!1006 thiss!11361 rules!1139) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) cacheUp!434 cacheDown!447) lt!1012280)))

(declare-fun bs!519195 () Bool)

(assert (= bs!519195 d!824927))

(assert (=> bs!519195 m!3272469))

(declare-fun m!3272593 () Bool)

(assert (=> bs!519195 m!3272593))

(declare-fun m!3272595 () Bool)

(assert (=> bs!519195 m!3272595))

(assert (=> bs!519195 m!3272471))

(declare-fun m!3272597 () Bool)

(assert (=> bs!519195 m!3272597))

(assert (=> bs!519195 m!3272471))

(assert (=> bs!519195 m!3272593))

(assert (=> bs!519195 m!3272471))

(declare-fun m!3272599 () Bool)

(assert (=> bs!519195 m!3272599))

(assert (=> bs!519195 m!3272469))

(declare-fun m!3272601 () Bool)

(assert (=> bs!519195 m!3272601))

(assert (=> bs!519195 m!3272469))

(declare-fun m!3272603 () Bool)

(assert (=> bs!519195 m!3272603))

(assert (=> bs!519195 m!3272471))

(declare-fun m!3272605 () Bool)

(assert (=> bs!519195 m!3272605))

(assert (=> bs!519195 m!3272469))

(declare-fun m!3272607 () Bool)

(assert (=> bs!519195 m!3272607))

(assert (=> bs!519195 m!3272603))

(declare-fun m!3272609 () Bool)

(assert (=> bs!519195 m!3272609))

(assert (=> bs!519195 m!3272469))

(declare-fun m!3272611 () Bool)

(assert (=> bs!519195 m!3272611))

(assert (=> bs!519195 m!3272605))

(declare-fun m!3272613 () Bool)

(assert (=> bs!519195 m!3272613))

(assert (=> bs!519195 m!3272603))

(assert (=> bs!519195 m!3272471))

(declare-fun m!3272615 () Bool)

(assert (=> bs!519195 m!3272615))

(declare-fun m!3272617 () Bool)

(assert (=> bs!519195 m!3272617))

(assert (=> b!2844662 d!824927))

(declare-fun d!824929 () Bool)

(declare-fun lt!1012293 () Unit!47519)

(declare-fun lemma!567 (List!33849 LexerInterface!4661 List!33849) Unit!47519)

(assert (=> d!824929 (= lt!1012293 (lemma!567 rules!1139 thiss!11361 rules!1139))))

(declare-fun lambda!104382 () Int)

(declare-fun generalisedUnion!543 (List!33844) Regex!8463)

(declare-fun map!7237 (List!33849 Int) List!33844)

(assert (=> d!824929 (= (rulesRegex!1006 thiss!11361 rules!1139) (generalisedUnion!543 (map!7237 rules!1139 lambda!104382)))))

(declare-fun bs!519196 () Bool)

(assert (= bs!519196 d!824929))

(declare-fun m!3272619 () Bool)

(assert (=> bs!519196 m!3272619))

(declare-fun m!3272621 () Bool)

(assert (=> bs!519196 m!3272621))

(assert (=> bs!519196 m!3272621))

(declare-fun m!3272623 () Bool)

(assert (=> bs!519196 m!3272623))

(assert (=> b!2844662 d!824929))

(declare-fun d!824931 () Bool)

(declare-fun e!1802395 () Bool)

(assert (=> d!824931 e!1802395))

(declare-fun res!1183302 () Bool)

(assert (=> d!824931 (=> (not res!1183302) (not e!1802395))))

(declare-fun lt!1012296 () BalanceConc!20554)

(assert (=> d!824931 (= res!1183302 (= (list!12564 lt!1012296) (Cons!33724 (apply!7855 lt!1012244 0) Nil!33724)))))

(declare-fun singleton!963 (C!17108) BalanceConc!20554)

(assert (=> d!824931 (= lt!1012296 (singleton!963 (apply!7855 lt!1012244 0)))))

(assert (=> d!824931 (= (singletonSeq!2187 (apply!7855 lt!1012244 0)) lt!1012296)))

(declare-fun b!2844746 () Bool)

(assert (=> b!2844746 (= e!1802395 (isBalanced!3153 (c!459093 lt!1012296)))))

(assert (= (and d!824931 res!1183302) b!2844746))

(declare-fun m!3272625 () Bool)

(assert (=> d!824931 m!3272625))

(assert (=> d!824931 m!3272465))

(declare-fun m!3272627 () Bool)

(assert (=> d!824931 m!3272627))

(declare-fun m!3272629 () Bool)

(assert (=> b!2844746 m!3272629))

(assert (=> b!2844662 d!824931))

(declare-fun d!824933 () Bool)

(declare-fun lt!1012299 () C!17108)

(declare-fun apply!7857 (List!33848 Int) C!17108)

(assert (=> d!824933 (= lt!1012299 (apply!7857 (list!12564 lt!1012244) 0))))

(declare-fun apply!7858 (Conc!10458 Int) C!17108)

(assert (=> d!824933 (= lt!1012299 (apply!7858 (c!459093 lt!1012244) 0))))

(declare-fun e!1802398 () Bool)

(assert (=> d!824933 e!1802398))

(declare-fun res!1183305 () Bool)

(assert (=> d!824933 (=> (not res!1183305) (not e!1802398))))

(assert (=> d!824933 (= res!1183305 (<= 0 0))))

(assert (=> d!824933 (= (apply!7855 lt!1012244 0) lt!1012299)))

(declare-fun b!2844749 () Bool)

(declare-fun size!26201 (BalanceConc!20554) Int)

(assert (=> b!2844749 (= e!1802398 (< 0 (size!26201 lt!1012244)))))

(assert (= (and d!824933 res!1183305) b!2844749))

(declare-fun m!3272631 () Bool)

(assert (=> d!824933 m!3272631))

(assert (=> d!824933 m!3272631))

(declare-fun m!3272633 () Bool)

(assert (=> d!824933 m!3272633))

(declare-fun m!3272635 () Bool)

(assert (=> d!824933 m!3272635))

(declare-fun m!3272637 () Bool)

(assert (=> b!2844749 m!3272637))

(assert (=> b!2844662 d!824933))

(declare-fun d!824935 () Bool)

(assert (=> d!824935 (= (inv!45721 (tag!5576 (rule!7500 t2!27))) (= (mod (str.len (value!162953 (tag!5576 (rule!7500 t2!27)))) 2) 0))))

(assert (=> b!2844673 d!824935))

(declare-fun d!824937 () Bool)

(declare-fun res!1183306 () Bool)

(declare-fun e!1802399 () Bool)

(assert (=> d!824937 (=> (not res!1183306) (not e!1802399))))

(assert (=> d!824937 (= res!1183306 (semiInverseModEq!2116 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toValue!7126 (transformation!5072 (rule!7500 t2!27)))))))

(assert (=> d!824937 (= (inv!45722 (transformation!5072 (rule!7500 t2!27))) e!1802399)))

(declare-fun b!2844750 () Bool)

(assert (=> b!2844750 (= e!1802399 (equivClasses!2015 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toValue!7126 (transformation!5072 (rule!7500 t2!27)))))))

(assert (= (and d!824937 res!1183306) b!2844750))

(declare-fun m!3272639 () Bool)

(assert (=> d!824937 m!3272639))

(declare-fun m!3272641 () Bool)

(assert (=> b!2844750 m!3272641))

(assert (=> b!2844673 d!824937))

(declare-fun d!824939 () Bool)

(assert (=> d!824939 (= (isEmpty!18564 rules!1139) ((_ is Nil!33725) rules!1139))))

(assert (=> b!2844663 d!824939))

(declare-fun d!824941 () Bool)

(assert (=> d!824941 (= (array_inv!4647 (_keys!4397 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))) (bvsge (size!26195 (_keys!4397 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))) #b00000000000000000000000000000000))))

(assert (=> b!2844674 d!824941))

(declare-fun d!824943 () Bool)

(assert (=> d!824943 (= (array_inv!4649 (_values!4378 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))) (bvsge (size!26197 (_values!4378 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))) #b00000000000000000000000000000000))))

(assert (=> b!2844674 d!824943))

(declare-fun d!824945 () Bool)

(assert (=> d!824945 (= (inv!45721 (tag!5576 (rule!7500 t1!27))) (= (mod (str.len (value!162953 (tag!5576 (rule!7500 t1!27)))) 2) 0))))

(assert (=> b!2844652 d!824945))

(declare-fun d!824947 () Bool)

(declare-fun res!1183307 () Bool)

(declare-fun e!1802400 () Bool)

(assert (=> d!824947 (=> (not res!1183307) (not e!1802400))))

(assert (=> d!824947 (= res!1183307 (semiInverseModEq!2116 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (toValue!7126 (transformation!5072 (rule!7500 t1!27)))))))

(assert (=> d!824947 (= (inv!45722 (transformation!5072 (rule!7500 t1!27))) e!1802400)))

(declare-fun b!2844751 () Bool)

(assert (=> b!2844751 (= e!1802400 (equivClasses!2015 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (toValue!7126 (transformation!5072 (rule!7500 t1!27)))))))

(assert (= (and d!824947 res!1183307) b!2844751))

(declare-fun m!3272643 () Bool)

(assert (=> d!824947 m!3272643))

(declare-fun m!3272645 () Bool)

(assert (=> b!2844751 m!3272645))

(assert (=> b!2844652 d!824947))

(declare-fun d!824949 () Bool)

(declare-fun lt!1012302 () Bool)

(assert (=> d!824949 (= lt!1012302 (isEmpty!18566 (list!12564 lt!1012244)))))

(declare-fun isEmpty!18567 (Conc!10458) Bool)

(assert (=> d!824949 (= lt!1012302 (isEmpty!18567 (c!459093 lt!1012244)))))

(assert (=> d!824949 (= (isEmpty!18565 lt!1012244) lt!1012302)))

(declare-fun bs!519197 () Bool)

(assert (= bs!519197 d!824949))

(assert (=> bs!519197 m!3272631))

(assert (=> bs!519197 m!3272631))

(declare-fun m!3272647 () Bool)

(assert (=> bs!519197 m!3272647))

(declare-fun m!3272649 () Bool)

(assert (=> bs!519197 m!3272649))

(assert (=> b!2844667 d!824949))

(declare-fun d!824951 () Bool)

(declare-fun lt!1012303 () BalanceConc!20554)

(assert (=> d!824951 (= (list!12564 lt!1012303) (originalCharacters!5804 t2!27))))

(assert (=> d!824951 (= lt!1012303 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))))

(assert (=> d!824951 (= (charsOf!3120 t2!27) lt!1012303)))

(declare-fun b_lambda!85541 () Bool)

(assert (=> (not b_lambda!85541) (not d!824951)))

(assert (=> d!824951 t!232847))

(declare-fun b_and!208889 () Bool)

(assert (= b_and!208883 (and (=> t!232847 result!193518) b_and!208889)))

(assert (=> d!824951 t!232849))

(declare-fun b_and!208891 () Bool)

(assert (= b_and!208885 (and (=> t!232849 result!193522) b_and!208891)))

(assert (=> d!824951 t!232851))

(declare-fun b_and!208893 () Bool)

(assert (= b_and!208887 (and (=> t!232851 result!193524) b_and!208893)))

(declare-fun m!3272651 () Bool)

(assert (=> d!824951 m!3272651))

(assert (=> d!824951 m!3272543))

(assert (=> b!2844667 d!824951))

(declare-fun d!824953 () Bool)

(declare-fun lt!1012304 () Bool)

(declare-fun e!1802402 () Bool)

(assert (=> d!824953 (= lt!1012304 e!1802402)))

(declare-fun res!1183308 () Bool)

(assert (=> d!824953 (=> (not res!1183308) (not e!1802402))))

(assert (=> d!824953 (= res!1183308 (= (list!12563 (_1!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27))))) (list!12563 (singletonSeq!2188 t1!27))))))

(declare-fun e!1802401 () Bool)

(assert (=> d!824953 (= lt!1012304 e!1802401)))

(declare-fun res!1183310 () Bool)

(assert (=> d!824953 (=> (not res!1183310) (not e!1802401))))

(declare-fun lt!1012305 () tuple2!33600)

(assert (=> d!824953 (= res!1183310 (= (size!26199 (_1!19917 lt!1012305)) 1))))

(assert (=> d!824953 (= lt!1012305 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27))))))

(assert (=> d!824953 (not (isEmpty!18564 rules!1139))))

(assert (=> d!824953 (= (rulesProduceIndividualToken!2171 thiss!11361 rules!1139 t1!27) lt!1012304)))

(declare-fun b!2844752 () Bool)

(declare-fun res!1183309 () Bool)

(assert (=> b!2844752 (=> (not res!1183309) (not e!1802401))))

(assert (=> b!2844752 (= res!1183309 (= (apply!7856 (_1!19917 lt!1012305) 0) t1!27))))

(declare-fun b!2844753 () Bool)

(assert (=> b!2844753 (= e!1802401 (isEmpty!18565 (_2!19917 lt!1012305)))))

(declare-fun b!2844754 () Bool)

(assert (=> b!2844754 (= e!1802402 (isEmpty!18565 (_2!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27))))))))

(assert (= (and d!824953 res!1183310) b!2844752))

(assert (= (and b!2844752 res!1183309) b!2844753))

(assert (= (and d!824953 res!1183308) b!2844754))

(declare-fun m!3272653 () Bool)

(assert (=> d!824953 m!3272653))

(declare-fun m!3272655 () Bool)

(assert (=> d!824953 m!3272655))

(assert (=> d!824953 m!3272481))

(declare-fun m!3272657 () Bool)

(assert (=> d!824953 m!3272657))

(assert (=> d!824953 m!3272653))

(assert (=> d!824953 m!3272653))

(declare-fun m!3272659 () Bool)

(assert (=> d!824953 m!3272659))

(assert (=> d!824953 m!3272655))

(declare-fun m!3272661 () Bool)

(assert (=> d!824953 m!3272661))

(declare-fun m!3272663 () Bool)

(assert (=> d!824953 m!3272663))

(declare-fun m!3272665 () Bool)

(assert (=> b!2844752 m!3272665))

(declare-fun m!3272667 () Bool)

(assert (=> b!2844753 m!3272667))

(assert (=> b!2844754 m!3272653))

(assert (=> b!2844754 m!3272653))

(assert (=> b!2844754 m!3272655))

(assert (=> b!2844754 m!3272655))

(assert (=> b!2844754 m!3272661))

(declare-fun m!3272669 () Bool)

(assert (=> b!2844754 m!3272669))

(assert (=> b!2844668 d!824953))

(declare-fun b!2844759 () Bool)

(declare-fun e!1802405 () Bool)

(declare-fun tp_is_empty!14689 () Bool)

(declare-fun tp!911815 () Bool)

(assert (=> b!2844759 (= e!1802405 (and tp_is_empty!14689 tp!911815))))

(assert (=> b!2844655 (= tp!911801 e!1802405)))

(assert (= (and b!2844655 ((_ is Cons!33724) (originalCharacters!5804 t2!27))) b!2844759))

(declare-fun b!2844760 () Bool)

(declare-fun e!1802406 () Bool)

(declare-fun tp!911816 () Bool)

(assert (=> b!2844760 (= e!1802406 (and tp_is_empty!14689 tp!911816))))

(assert (=> b!2844656 (= tp!911808 e!1802406)))

(assert (= (and b!2844656 ((_ is Cons!33724) (originalCharacters!5804 t1!27))) b!2844760))

(declare-fun b!2844773 () Bool)

(declare-fun e!1802409 () Bool)

(declare-fun tp!911828 () Bool)

(assert (=> b!2844773 (= e!1802409 tp!911828)))

(declare-fun b!2844774 () Bool)

(declare-fun tp!911829 () Bool)

(declare-fun tp!911830 () Bool)

(assert (=> b!2844774 (= e!1802409 (and tp!911829 tp!911830))))

(assert (=> b!2844665 (= tp!911783 e!1802409)))

(declare-fun b!2844772 () Bool)

(declare-fun tp!911831 () Bool)

(declare-fun tp!911827 () Bool)

(assert (=> b!2844772 (= e!1802409 (and tp!911831 tp!911827))))

(declare-fun b!2844771 () Bool)

(assert (=> b!2844771 (= e!1802409 tp_is_empty!14689)))

(assert (= (and b!2844665 ((_ is ElementMatch!8463) (regex!5072 (h!39145 rules!1139)))) b!2844771))

(assert (= (and b!2844665 ((_ is Concat!13765) (regex!5072 (h!39145 rules!1139)))) b!2844772))

(assert (= (and b!2844665 ((_ is Star!8463) (regex!5072 (h!39145 rules!1139)))) b!2844773))

(assert (= (and b!2844665 ((_ is Union!8463) (regex!5072 (h!39145 rules!1139)))) b!2844774))

(declare-fun b!2844785 () Bool)

(declare-fun b_free!82653 () Bool)

(declare-fun b_next!83357 () Bool)

(assert (=> b!2844785 (= b_free!82653 (not b_next!83357))))

(declare-fun tp!911842 () Bool)

(declare-fun b_and!208895 () Bool)

(assert (=> b!2844785 (= tp!911842 b_and!208895)))

(declare-fun b_free!82655 () Bool)

(declare-fun b_next!83359 () Bool)

(assert (=> b!2844785 (= b_free!82655 (not b_next!83359))))

(declare-fun t!232860 () Bool)

(declare-fun tb!155081 () Bool)

(assert (=> (and b!2844785 (= (toChars!6985 (transformation!5072 (h!39145 (t!232844 rules!1139)))) (toChars!6985 (transformation!5072 (rule!7500 t2!27)))) t!232860) tb!155081))

(declare-fun result!193538 () Bool)

(assert (= result!193538 result!193518))

(assert (=> b!2844722 t!232860))

(declare-fun tb!155083 () Bool)

(declare-fun t!232862 () Bool)

(assert (=> (and b!2844785 (= (toChars!6985 (transformation!5072 (h!39145 (t!232844 rules!1139)))) (toChars!6985 (transformation!5072 (rule!7500 t1!27)))) t!232862) tb!155083))

(declare-fun result!193540 () Bool)

(assert (= result!193540 result!193526))

(assert (=> b!2844729 t!232862))

(assert (=> d!824923 t!232862))

(assert (=> d!824951 t!232860))

(declare-fun tp!911843 () Bool)

(declare-fun b_and!208897 () Bool)

(assert (=> b!2844785 (= tp!911843 (and (=> t!232860 result!193538) (=> t!232862 result!193540) b_and!208897))))

(declare-fun e!1802421 () Bool)

(assert (=> b!2844785 (= e!1802421 (and tp!911842 tp!911843))))

(declare-fun e!1802419 () Bool)

(declare-fun tp!911841 () Bool)

(declare-fun b!2844784 () Bool)

(assert (=> b!2844784 (= e!1802419 (and tp!911841 (inv!45721 (tag!5576 (h!39145 (t!232844 rules!1139)))) (inv!45722 (transformation!5072 (h!39145 (t!232844 rules!1139)))) e!1802421))))

(declare-fun b!2844783 () Bool)

(declare-fun e!1802420 () Bool)

(declare-fun tp!911840 () Bool)

(assert (=> b!2844783 (= e!1802420 (and e!1802419 tp!911840))))

(assert (=> b!2844675 (= tp!911791 e!1802420)))

(assert (= b!2844784 b!2844785))

(assert (= b!2844783 b!2844784))

(assert (= (and b!2844675 ((_ is Cons!33725) (t!232844 rules!1139))) b!2844783))

(declare-fun m!3272671 () Bool)

(assert (=> b!2844784 m!3272671))

(declare-fun m!3272673 () Bool)

(assert (=> b!2844784 m!3272673))

(declare-fun b!2844794 () Bool)

(declare-fun e!1802430 () Bool)

(declare-fun tp!911857 () Bool)

(assert (=> b!2844794 (= e!1802430 tp!911857)))

(declare-fun e!1802429 () Bool)

(assert (=> b!2844672 (= tp!911788 e!1802429)))

(declare-fun tp!911858 () Bool)

(declare-fun b!2844795 () Bool)

(declare-fun tp!911855 () Bool)

(declare-fun setRes!24838 () Bool)

(declare-fun inv!45728 (Context!4982) Bool)

(assert (=> b!2844795 (= e!1802429 (and tp!911858 (inv!45728 (_2!19912 (_1!19913 (h!39141 mapDefault!18590)))) e!1802430 tp_is_empty!14689 setRes!24838 tp!911855))))

(declare-fun condSetEmpty!24838 () Bool)

(assert (=> b!2844795 (= condSetEmpty!24838 (= (_2!19913 (h!39141 mapDefault!18590)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24838 () Bool)

(assert (=> setIsEmpty!24838 setRes!24838))

(declare-fun b!2844796 () Bool)

(declare-fun e!1802428 () Bool)

(declare-fun tp!911856 () Bool)

(assert (=> b!2844796 (= e!1802428 tp!911856)))

(declare-fun tp!911854 () Bool)

(declare-fun setElem!24838 () Context!4982)

(declare-fun setNonEmpty!24838 () Bool)

(assert (=> setNonEmpty!24838 (= setRes!24838 (and tp!911854 (inv!45728 setElem!24838) e!1802428))))

(declare-fun setRest!24838 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24838 (= (_2!19913 (h!39141 mapDefault!18590)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24838 true) setRest!24838))))

(assert (= b!2844795 b!2844794))

(assert (= (and b!2844795 condSetEmpty!24838) setIsEmpty!24838))

(assert (= (and b!2844795 (not condSetEmpty!24838)) setNonEmpty!24838))

(assert (= setNonEmpty!24838 b!2844796))

(assert (= (and b!2844672 ((_ is Cons!33721) mapDefault!18590)) b!2844795))

(declare-fun m!3272675 () Bool)

(assert (=> b!2844795 m!3272675))

(declare-fun m!3272677 () Bool)

(assert (=> setNonEmpty!24838 m!3272677))

(declare-fun b!2844797 () Bool)

(declare-fun e!1802433 () Bool)

(declare-fun tp!911862 () Bool)

(assert (=> b!2844797 (= e!1802433 tp!911862)))

(declare-fun e!1802432 () Bool)

(assert (=> b!2844653 (= tp!911789 e!1802432)))

(declare-fun tp!911863 () Bool)

(declare-fun tp!911860 () Bool)

(declare-fun setRes!24839 () Bool)

(declare-fun b!2844798 () Bool)

(assert (=> b!2844798 (= e!1802432 (and tp!911863 (inv!45728 (_2!19912 (_1!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))))) e!1802433 tp_is_empty!14689 setRes!24839 tp!911860))))

(declare-fun condSetEmpty!24839 () Bool)

(assert (=> b!2844798 (= condSetEmpty!24839 (= (_2!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24839 () Bool)

(assert (=> setIsEmpty!24839 setRes!24839))

(declare-fun b!2844799 () Bool)

(declare-fun e!1802431 () Bool)

(declare-fun tp!911861 () Bool)

(assert (=> b!2844799 (= e!1802431 tp!911861)))

(declare-fun tp!911859 () Bool)

(declare-fun setNonEmpty!24839 () Bool)

(declare-fun setElem!24839 () Context!4982)

(assert (=> setNonEmpty!24839 (= setRes!24839 (and tp!911859 (inv!45728 setElem!24839) e!1802431))))

(declare-fun setRest!24839 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24839 (= (_2!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24839 true) setRest!24839))))

(assert (= b!2844798 b!2844797))

(assert (= (and b!2844798 condSetEmpty!24839) setIsEmpty!24839))

(assert (= (and b!2844798 (not condSetEmpty!24839)) setNonEmpty!24839))

(assert (= setNonEmpty!24839 b!2844799))

(assert (= (and b!2844653 ((_ is Cons!33721) (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))) b!2844798))

(declare-fun m!3272679 () Bool)

(assert (=> b!2844798 m!3272679))

(declare-fun m!3272681 () Bool)

(assert (=> setNonEmpty!24839 m!3272681))

(declare-fun b!2844800 () Bool)

(declare-fun e!1802436 () Bool)

(declare-fun tp!911867 () Bool)

(assert (=> b!2844800 (= e!1802436 tp!911867)))

(declare-fun e!1802435 () Bool)

(assert (=> b!2844653 (= tp!911798 e!1802435)))

(declare-fun b!2844801 () Bool)

(declare-fun setRes!24840 () Bool)

(declare-fun tp!911865 () Bool)

(declare-fun tp!911868 () Bool)

(assert (=> b!2844801 (= e!1802435 (and tp!911868 (inv!45728 (_2!19912 (_1!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))))) e!1802436 tp_is_empty!14689 setRes!24840 tp!911865))))

(declare-fun condSetEmpty!24840 () Bool)

(assert (=> b!2844801 (= condSetEmpty!24840 (= (_2!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24840 () Bool)

(assert (=> setIsEmpty!24840 setRes!24840))

(declare-fun b!2844802 () Bool)

(declare-fun e!1802434 () Bool)

(declare-fun tp!911866 () Bool)

(assert (=> b!2844802 (= e!1802434 tp!911866)))

(declare-fun tp!911864 () Bool)

(declare-fun setElem!24840 () Context!4982)

(declare-fun setNonEmpty!24840 () Bool)

(assert (=> setNonEmpty!24840 (= setRes!24840 (and tp!911864 (inv!45728 setElem!24840) e!1802434))))

(declare-fun setRest!24840 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24840 (= (_2!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24840 true) setRest!24840))))

(assert (= b!2844801 b!2844800))

(assert (= (and b!2844801 condSetEmpty!24840) setIsEmpty!24840))

(assert (= (and b!2844801 (not condSetEmpty!24840)) setNonEmpty!24840))

(assert (= setNonEmpty!24840 b!2844802))

(assert (= (and b!2844653 ((_ is Cons!33721) (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))) b!2844801))

(declare-fun m!3272683 () Bool)

(assert (=> b!2844801 m!3272683))

(declare-fun m!3272685 () Bool)

(assert (=> setNonEmpty!24840 m!3272685))

(declare-fun b!2844805 () Bool)

(declare-fun e!1802437 () Bool)

(declare-fun tp!911870 () Bool)

(assert (=> b!2844805 (= e!1802437 tp!911870)))

(declare-fun b!2844806 () Bool)

(declare-fun tp!911871 () Bool)

(declare-fun tp!911872 () Bool)

(assert (=> b!2844806 (= e!1802437 (and tp!911871 tp!911872))))

(assert (=> b!2844673 (= tp!911786 e!1802437)))

(declare-fun b!2844804 () Bool)

(declare-fun tp!911873 () Bool)

(declare-fun tp!911869 () Bool)

(assert (=> b!2844804 (= e!1802437 (and tp!911873 tp!911869))))

(declare-fun b!2844803 () Bool)

(assert (=> b!2844803 (= e!1802437 tp_is_empty!14689)))

(assert (= (and b!2844673 ((_ is ElementMatch!8463) (regex!5072 (rule!7500 t2!27)))) b!2844803))

(assert (= (and b!2844673 ((_ is Concat!13765) (regex!5072 (rule!7500 t2!27)))) b!2844804))

(assert (= (and b!2844673 ((_ is Star!8463) (regex!5072 (rule!7500 t2!27)))) b!2844805))

(assert (= (and b!2844673 ((_ is Union!8463) (regex!5072 (rule!7500 t2!27)))) b!2844806))

(declare-fun e!1802445 () Bool)

(declare-fun b!2844815 () Bool)

(declare-fun e!1802446 () Bool)

(declare-fun tp!911885 () Bool)

(declare-fun setRes!24843 () Bool)

(assert (=> b!2844815 (= e!1802446 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))))) e!1802445 tp_is_empty!14689 setRes!24843 tp!911885))))

(declare-fun condSetEmpty!24843 () Bool)

(assert (=> b!2844815 (= condSetEmpty!24843 (= (_2!19915 (h!39142 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setElem!24843 () Context!4982)

(declare-fun setNonEmpty!24843 () Bool)

(declare-fun tp!911882 () Bool)

(declare-fun e!1802444 () Bool)

(assert (=> setNonEmpty!24843 (= setRes!24843 (and tp!911882 (inv!45728 setElem!24843) e!1802444))))

(declare-fun setRest!24843 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24843 (= (_2!19915 (h!39142 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24843 true) setRest!24843))))

(declare-fun b!2844816 () Bool)

(declare-fun tp!911884 () Bool)

(assert (=> b!2844816 (= e!1802445 tp!911884)))

(declare-fun b!2844817 () Bool)

(declare-fun tp!911883 () Bool)

(assert (=> b!2844817 (= e!1802444 tp!911883)))

(assert (=> b!2844674 (= tp!911804 e!1802446)))

(declare-fun setIsEmpty!24843 () Bool)

(assert (=> setIsEmpty!24843 setRes!24843))

(assert (= b!2844815 b!2844816))

(assert (= (and b!2844815 condSetEmpty!24843) setIsEmpty!24843))

(assert (= (and b!2844815 (not condSetEmpty!24843)) setNonEmpty!24843))

(assert (= setNonEmpty!24843 b!2844817))

(assert (= (and b!2844674 ((_ is Cons!33722) (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))) b!2844815))

(declare-fun m!3272687 () Bool)

(assert (=> b!2844815 m!3272687))

(declare-fun m!3272689 () Bool)

(assert (=> setNonEmpty!24843 m!3272689))

(declare-fun b!2844818 () Bool)

(declare-fun e!1802449 () Bool)

(declare-fun tp!911889 () Bool)

(declare-fun e!1802448 () Bool)

(declare-fun setRes!24844 () Bool)

(assert (=> b!2844818 (= e!1802449 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))))) e!1802448 tp_is_empty!14689 setRes!24844 tp!911889))))

(declare-fun condSetEmpty!24844 () Bool)

(assert (=> b!2844818 (= condSetEmpty!24844 (= (_2!19915 (h!39142 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setElem!24844 () Context!4982)

(declare-fun tp!911886 () Bool)

(declare-fun setNonEmpty!24844 () Bool)

(declare-fun e!1802447 () Bool)

(assert (=> setNonEmpty!24844 (= setRes!24844 (and tp!911886 (inv!45728 setElem!24844) e!1802447))))

(declare-fun setRest!24844 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24844 (= (_2!19915 (h!39142 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24844 true) setRest!24844))))

(declare-fun b!2844819 () Bool)

(declare-fun tp!911888 () Bool)

(assert (=> b!2844819 (= e!1802448 tp!911888)))

(declare-fun b!2844820 () Bool)

(declare-fun tp!911887 () Bool)

(assert (=> b!2844820 (= e!1802447 tp!911887)))

(assert (=> b!2844674 (= tp!911794 e!1802449)))

(declare-fun setIsEmpty!24844 () Bool)

(assert (=> setIsEmpty!24844 setRes!24844))

(assert (= b!2844818 b!2844819))

(assert (= (and b!2844818 condSetEmpty!24844) setIsEmpty!24844))

(assert (= (and b!2844818 (not condSetEmpty!24844)) setNonEmpty!24844))

(assert (= setNonEmpty!24844 b!2844820))

(assert (= (and b!2844674 ((_ is Cons!33722) (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))) b!2844818))

(declare-fun m!3272691 () Bool)

(assert (=> b!2844818 m!3272691))

(declare-fun m!3272693 () Bool)

(assert (=> setNonEmpty!24844 m!3272693))

(declare-fun setIsEmpty!24849 () Bool)

(declare-fun setRes!24850 () Bool)

(assert (=> setIsEmpty!24849 setRes!24850))

(declare-fun condMapEmpty!18594 () Bool)

(declare-fun mapDefault!18594 () List!33846)

(assert (=> mapNonEmpty!18590 (= condMapEmpty!18594 (= mapRest!18590 ((as const (Array (_ BitVec 32) List!33846)) mapDefault!18594)))))

(declare-fun e!1802464 () Bool)

(declare-fun mapRes!18594 () Bool)

(assert (=> mapNonEmpty!18590 (= tp!911795 (and e!1802464 mapRes!18594))))

(declare-fun b!2844835 () Bool)

(declare-fun e!1802462 () Bool)

(declare-fun tp!911913 () Bool)

(assert (=> b!2844835 (= e!1802462 tp!911913)))

(declare-fun e!1802465 () Bool)

(declare-fun tp!911915 () Bool)

(declare-fun b!2844836 () Bool)

(declare-fun setRes!24849 () Bool)

(assert (=> b!2844836 (= e!1802464 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 mapDefault!18594)))) e!1802465 tp_is_empty!14689 setRes!24849 tp!911915))))

(declare-fun condSetEmpty!24850 () Bool)

(assert (=> b!2844836 (= condSetEmpty!24850 (= (_2!19915 (h!39142 mapDefault!18594)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun e!1802466 () Bool)

(declare-fun setNonEmpty!24849 () Bool)

(declare-fun setElem!24849 () Context!4982)

(declare-fun tp!911909 () Bool)

(assert (=> setNonEmpty!24849 (= setRes!24849 (and tp!911909 (inv!45728 setElem!24849) e!1802466))))

(declare-fun setRest!24849 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24849 (= (_2!19915 (h!39142 mapDefault!18594)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24849 true) setRest!24849))))

(declare-fun b!2844837 () Bool)

(declare-fun e!1802467 () Bool)

(declare-fun tp!911908 () Bool)

(assert (=> b!2844837 (= e!1802467 tp!911908)))

(declare-fun mapNonEmpty!18594 () Bool)

(declare-fun tp!911916 () Bool)

(declare-fun e!1802463 () Bool)

(assert (=> mapNonEmpty!18594 (= mapRes!18594 (and tp!911916 e!1802463))))

(declare-fun mapKey!18594 () (_ BitVec 32))

(declare-fun mapRest!18594 () (Array (_ BitVec 32) List!33846))

(declare-fun mapValue!18594 () List!33846)

(assert (=> mapNonEmpty!18594 (= mapRest!18590 (store mapRest!18594 mapKey!18594 mapValue!18594))))

(declare-fun tp!911911 () Bool)

(declare-fun setNonEmpty!24850 () Bool)

(declare-fun setElem!24850 () Context!4982)

(assert (=> setNonEmpty!24850 (= setRes!24850 (and tp!911911 (inv!45728 setElem!24850) e!1802467))))

(declare-fun setRest!24850 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24850 (= (_2!19915 (h!39142 mapValue!18594)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24850 true) setRest!24850))))

(declare-fun b!2844838 () Bool)

(declare-fun tp!911912 () Bool)

(assert (=> b!2844838 (= e!1802465 tp!911912)))

(declare-fun b!2844839 () Bool)

(declare-fun tp!911914 () Bool)

(assert (=> b!2844839 (= e!1802463 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 mapValue!18594)))) e!1802462 tp_is_empty!14689 setRes!24850 tp!911914))))

(declare-fun condSetEmpty!24849 () Bool)

(assert (=> b!2844839 (= condSetEmpty!24849 (= (_2!19915 (h!39142 mapValue!18594)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun b!2844840 () Bool)

(declare-fun tp!911910 () Bool)

(assert (=> b!2844840 (= e!1802466 tp!911910)))

(declare-fun mapIsEmpty!18594 () Bool)

(assert (=> mapIsEmpty!18594 mapRes!18594))

(declare-fun setIsEmpty!24850 () Bool)

(assert (=> setIsEmpty!24850 setRes!24849))

(assert (= (and mapNonEmpty!18590 condMapEmpty!18594) mapIsEmpty!18594))

(assert (= (and mapNonEmpty!18590 (not condMapEmpty!18594)) mapNonEmpty!18594))

(assert (= b!2844839 b!2844835))

(assert (= (and b!2844839 condSetEmpty!24849) setIsEmpty!24849))

(assert (= (and b!2844839 (not condSetEmpty!24849)) setNonEmpty!24850))

(assert (= setNonEmpty!24850 b!2844837))

(assert (= (and mapNonEmpty!18594 ((_ is Cons!33722) mapValue!18594)) b!2844839))

(assert (= b!2844836 b!2844838))

(assert (= (and b!2844836 condSetEmpty!24850) setIsEmpty!24850))

(assert (= (and b!2844836 (not condSetEmpty!24850)) setNonEmpty!24849))

(assert (= setNonEmpty!24849 b!2844840))

(assert (= (and mapNonEmpty!18590 ((_ is Cons!33722) mapDefault!18594)) b!2844836))

(declare-fun m!3272695 () Bool)

(assert (=> b!2844839 m!3272695))

(declare-fun m!3272697 () Bool)

(assert (=> setNonEmpty!24849 m!3272697))

(declare-fun m!3272699 () Bool)

(assert (=> mapNonEmpty!18594 m!3272699))

(declare-fun m!3272701 () Bool)

(assert (=> setNonEmpty!24850 m!3272701))

(declare-fun m!3272703 () Bool)

(assert (=> b!2844836 m!3272703))

(declare-fun e!1802470 () Bool)

(declare-fun e!1802469 () Bool)

(declare-fun tp!911920 () Bool)

(declare-fun setRes!24851 () Bool)

(declare-fun b!2844841 () Bool)

(assert (=> b!2844841 (= e!1802470 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 mapValue!18591)))) e!1802469 tp_is_empty!14689 setRes!24851 tp!911920))))

(declare-fun condSetEmpty!24851 () Bool)

(assert (=> b!2844841 (= condSetEmpty!24851 (= (_2!19915 (h!39142 mapValue!18591)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setElem!24851 () Context!4982)

(declare-fun e!1802468 () Bool)

(declare-fun tp!911917 () Bool)

(declare-fun setNonEmpty!24851 () Bool)

(assert (=> setNonEmpty!24851 (= setRes!24851 (and tp!911917 (inv!45728 setElem!24851) e!1802468))))

(declare-fun setRest!24851 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24851 (= (_2!19915 (h!39142 mapValue!18591)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24851 true) setRest!24851))))

(declare-fun b!2844842 () Bool)

(declare-fun tp!911919 () Bool)

(assert (=> b!2844842 (= e!1802469 tp!911919)))

(declare-fun b!2844843 () Bool)

(declare-fun tp!911918 () Bool)

(assert (=> b!2844843 (= e!1802468 tp!911918)))

(assert (=> mapNonEmpty!18590 (= tp!911790 e!1802470)))

(declare-fun setIsEmpty!24851 () Bool)

(assert (=> setIsEmpty!24851 setRes!24851))

(assert (= b!2844841 b!2844842))

(assert (= (and b!2844841 condSetEmpty!24851) setIsEmpty!24851))

(assert (= (and b!2844841 (not condSetEmpty!24851)) setNonEmpty!24851))

(assert (= setNonEmpty!24851 b!2844843))

(assert (= (and mapNonEmpty!18590 ((_ is Cons!33722) mapValue!18591)) b!2844841))

(declare-fun m!3272705 () Bool)

(assert (=> b!2844841 m!3272705))

(declare-fun m!3272707 () Bool)

(assert (=> setNonEmpty!24851 m!3272707))

(declare-fun b!2844846 () Bool)

(declare-fun e!1802471 () Bool)

(declare-fun tp!911922 () Bool)

(assert (=> b!2844846 (= e!1802471 tp!911922)))

(declare-fun b!2844847 () Bool)

(declare-fun tp!911923 () Bool)

(declare-fun tp!911924 () Bool)

(assert (=> b!2844847 (= e!1802471 (and tp!911923 tp!911924))))

(assert (=> b!2844652 (= tp!911793 e!1802471)))

(declare-fun b!2844845 () Bool)

(declare-fun tp!911925 () Bool)

(declare-fun tp!911921 () Bool)

(assert (=> b!2844845 (= e!1802471 (and tp!911925 tp!911921))))

(declare-fun b!2844844 () Bool)

(assert (=> b!2844844 (= e!1802471 tp_is_empty!14689)))

(assert (= (and b!2844652 ((_ is ElementMatch!8463) (regex!5072 (rule!7500 t1!27)))) b!2844844))

(assert (= (and b!2844652 ((_ is Concat!13765) (regex!5072 (rule!7500 t1!27)))) b!2844845))

(assert (= (and b!2844652 ((_ is Star!8463) (regex!5072 (rule!7500 t1!27)))) b!2844846))

(assert (= (and b!2844652 ((_ is Union!8463) (regex!5072 (rule!7500 t1!27)))) b!2844847))

(declare-fun e!1802474 () Bool)

(declare-fun e!1802473 () Bool)

(declare-fun tp!911929 () Bool)

(declare-fun b!2844848 () Bool)

(declare-fun setRes!24852 () Bool)

(assert (=> b!2844848 (= e!1802474 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 mapDefault!18591)))) e!1802473 tp_is_empty!14689 setRes!24852 tp!911929))))

(declare-fun condSetEmpty!24852 () Bool)

(assert (=> b!2844848 (= condSetEmpty!24852 (= (_2!19915 (h!39142 mapDefault!18591)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun tp!911926 () Bool)

(declare-fun setNonEmpty!24852 () Bool)

(declare-fun e!1802472 () Bool)

(declare-fun setElem!24852 () Context!4982)

(assert (=> setNonEmpty!24852 (= setRes!24852 (and tp!911926 (inv!45728 setElem!24852) e!1802472))))

(declare-fun setRest!24852 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24852 (= (_2!19915 (h!39142 mapDefault!18591)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24852 true) setRest!24852))))

(declare-fun b!2844849 () Bool)

(declare-fun tp!911928 () Bool)

(assert (=> b!2844849 (= e!1802473 tp!911928)))

(declare-fun b!2844850 () Bool)

(declare-fun tp!911927 () Bool)

(assert (=> b!2844850 (= e!1802472 tp!911927)))

(assert (=> b!2844658 (= tp!911803 e!1802474)))

(declare-fun setIsEmpty!24852 () Bool)

(assert (=> setIsEmpty!24852 setRes!24852))

(assert (= b!2844848 b!2844849))

(assert (= (and b!2844848 condSetEmpty!24852) setIsEmpty!24852))

(assert (= (and b!2844848 (not condSetEmpty!24852)) setNonEmpty!24852))

(assert (= setNonEmpty!24852 b!2844850))

(assert (= (and b!2844658 ((_ is Cons!33722) mapDefault!18591)) b!2844848))

(declare-fun m!3272709 () Bool)

(assert (=> b!2844848 m!3272709))

(declare-fun m!3272711 () Bool)

(assert (=> setNonEmpty!24852 m!3272711))

(declare-fun b!2844865 () Bool)

(declare-fun e!1802490 () Bool)

(declare-fun tp!911960 () Bool)

(assert (=> b!2844865 (= e!1802490 tp!911960)))

(declare-fun b!2844866 () Bool)

(declare-fun e!1802488 () Bool)

(declare-fun tp!911962 () Bool)

(assert (=> b!2844866 (= e!1802488 tp!911962)))

(declare-fun tp!911959 () Bool)

(declare-fun mapValue!18597 () List!33845)

(declare-fun setRes!24857 () Bool)

(declare-fun e!1802491 () Bool)

(declare-fun b!2844867 () Bool)

(declare-fun tp!911957 () Bool)

(assert (=> b!2844867 (= e!1802491 (and tp!911957 (inv!45728 (_2!19912 (_1!19913 (h!39141 mapValue!18597)))) e!1802488 tp_is_empty!14689 setRes!24857 tp!911959))))

(declare-fun condSetEmpty!24858 () Bool)

(assert (=> b!2844867 (= condSetEmpty!24858 (= (_2!19913 (h!39141 mapValue!18597)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun mapIsEmpty!18597 () Bool)

(declare-fun mapRes!18597 () Bool)

(assert (=> mapIsEmpty!18597 mapRes!18597))

(declare-fun b!2844868 () Bool)

(declare-fun e!1802492 () Bool)

(declare-fun tp!911952 () Bool)

(assert (=> b!2844868 (= e!1802492 tp!911952)))

(declare-fun setIsEmpty!24857 () Bool)

(declare-fun setRes!24858 () Bool)

(assert (=> setIsEmpty!24857 setRes!24858))

(declare-fun tp!911954 () Bool)

(declare-fun setElem!24857 () Context!4982)

(declare-fun setNonEmpty!24857 () Bool)

(assert (=> setNonEmpty!24857 (= setRes!24858 (and tp!911954 (inv!45728 setElem!24857) e!1802492))))

(declare-fun mapDefault!18597 () List!33845)

(declare-fun setRest!24857 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24857 (= (_2!19913 (h!39141 mapDefault!18597)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24857 true) setRest!24857))))

(declare-fun mapNonEmpty!18597 () Bool)

(declare-fun tp!911955 () Bool)

(assert (=> mapNonEmpty!18597 (= mapRes!18597 (and tp!911955 e!1802491))))

(declare-fun mapKey!18597 () (_ BitVec 32))

(declare-fun mapRest!18597 () (Array (_ BitVec 32) List!33845))

(assert (=> mapNonEmpty!18597 (= mapRest!18591 (store mapRest!18597 mapKey!18597 mapValue!18597))))

(declare-fun tp!911958 () Bool)

(declare-fun e!1802489 () Bool)

(declare-fun tp!911961 () Bool)

(declare-fun b!2844869 () Bool)

(assert (=> b!2844869 (= e!1802489 (and tp!911958 (inv!45728 (_2!19912 (_1!19913 (h!39141 mapDefault!18597)))) e!1802490 tp_is_empty!14689 setRes!24858 tp!911961))))

(declare-fun condSetEmpty!24857 () Bool)

(assert (=> b!2844869 (= condSetEmpty!24857 (= (_2!19913 (h!39141 mapDefault!18597)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun condMapEmpty!18597 () Bool)

(assert (=> mapNonEmpty!18591 (= condMapEmpty!18597 (= mapRest!18591 ((as const (Array (_ BitVec 32) List!33845)) mapDefault!18597)))))

(assert (=> mapNonEmpty!18591 (= tp!911799 (and e!1802489 mapRes!18597))))

(declare-fun setIsEmpty!24858 () Bool)

(assert (=> setIsEmpty!24858 setRes!24857))

(declare-fun e!1802487 () Bool)

(declare-fun setNonEmpty!24858 () Bool)

(declare-fun tp!911953 () Bool)

(declare-fun setElem!24858 () Context!4982)

(assert (=> setNonEmpty!24858 (= setRes!24857 (and tp!911953 (inv!45728 setElem!24858) e!1802487))))

(declare-fun setRest!24858 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24858 (= (_2!19913 (h!39141 mapValue!18597)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24858 true) setRest!24858))))

(declare-fun b!2844870 () Bool)

(declare-fun tp!911956 () Bool)

(assert (=> b!2844870 (= e!1802487 tp!911956)))

(assert (= (and mapNonEmpty!18591 condMapEmpty!18597) mapIsEmpty!18597))

(assert (= (and mapNonEmpty!18591 (not condMapEmpty!18597)) mapNonEmpty!18597))

(assert (= b!2844867 b!2844866))

(assert (= (and b!2844867 condSetEmpty!24858) setIsEmpty!24858))

(assert (= (and b!2844867 (not condSetEmpty!24858)) setNonEmpty!24858))

(assert (= setNonEmpty!24858 b!2844870))

(assert (= (and mapNonEmpty!18597 ((_ is Cons!33721) mapValue!18597)) b!2844867))

(assert (= b!2844869 b!2844865))

(assert (= (and b!2844869 condSetEmpty!24857) setIsEmpty!24857))

(assert (= (and b!2844869 (not condSetEmpty!24857)) setNonEmpty!24857))

(assert (= setNonEmpty!24857 b!2844868))

(assert (= (and mapNonEmpty!18591 ((_ is Cons!33721) mapDefault!18597)) b!2844869))

(declare-fun m!3272713 () Bool)

(assert (=> mapNonEmpty!18597 m!3272713))

(declare-fun m!3272715 () Bool)

(assert (=> b!2844867 m!3272715))

(declare-fun m!3272717 () Bool)

(assert (=> b!2844869 m!3272717))

(declare-fun m!3272719 () Bool)

(assert (=> setNonEmpty!24858 m!3272719))

(declare-fun m!3272721 () Bool)

(assert (=> setNonEmpty!24857 m!3272721))

(declare-fun b!2844871 () Bool)

(declare-fun e!1802495 () Bool)

(declare-fun tp!911966 () Bool)

(assert (=> b!2844871 (= e!1802495 tp!911966)))

(declare-fun e!1802494 () Bool)

(assert (=> mapNonEmpty!18591 (= tp!911807 e!1802494)))

(declare-fun tp!911967 () Bool)

(declare-fun setRes!24859 () Bool)

(declare-fun b!2844872 () Bool)

(declare-fun tp!911964 () Bool)

(assert (=> b!2844872 (= e!1802494 (and tp!911967 (inv!45728 (_2!19912 (_1!19913 (h!39141 mapValue!18590)))) e!1802495 tp_is_empty!14689 setRes!24859 tp!911964))))

(declare-fun condSetEmpty!24859 () Bool)

(assert (=> b!2844872 (= condSetEmpty!24859 (= (_2!19913 (h!39141 mapValue!18590)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24859 () Bool)

(assert (=> setIsEmpty!24859 setRes!24859))

(declare-fun b!2844873 () Bool)

(declare-fun e!1802493 () Bool)

(declare-fun tp!911965 () Bool)

(assert (=> b!2844873 (= e!1802493 tp!911965)))

(declare-fun setNonEmpty!24859 () Bool)

(declare-fun tp!911963 () Bool)

(declare-fun setElem!24859 () Context!4982)

(assert (=> setNonEmpty!24859 (= setRes!24859 (and tp!911963 (inv!45728 setElem!24859) e!1802493))))

(declare-fun setRest!24859 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24859 (= (_2!19913 (h!39141 mapValue!18590)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24859 true) setRest!24859))))

(assert (= b!2844872 b!2844871))

(assert (= (and b!2844872 condSetEmpty!24859) setIsEmpty!24859))

(assert (= (and b!2844872 (not condSetEmpty!24859)) setNonEmpty!24859))

(assert (= setNonEmpty!24859 b!2844873))

(assert (= (and mapNonEmpty!18591 ((_ is Cons!33721) mapValue!18590)) b!2844872))

(declare-fun m!3272723 () Bool)

(assert (=> b!2844872 m!3272723))

(declare-fun m!3272725 () Bool)

(assert (=> setNonEmpty!24859 m!3272725))

(declare-fun b_lambda!85543 () Bool)

(assert (= b_lambda!85541 (or (and b!2844676 b_free!82641 (= (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toChars!6985 (transformation!5072 (rule!7500 t2!27))))) (and b!2844661 b_free!82647 (= (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (toChars!6985 (transformation!5072 (rule!7500 t2!27))))) (and b!2844669 b_free!82651) (and b!2844785 b_free!82655 (= (toChars!6985 (transformation!5072 (h!39145 (t!232844 rules!1139)))) (toChars!6985 (transformation!5072 (rule!7500 t2!27))))) b_lambda!85543)))

(declare-fun b_lambda!85545 () Bool)

(assert (= b_lambda!85539 (or (and b!2844676 b_free!82641 (= (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toChars!6985 (transformation!5072 (rule!7500 t1!27))))) (and b!2844661 b_free!82647) (and b!2844669 b_free!82651 (= (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toChars!6985 (transformation!5072 (rule!7500 t1!27))))) (and b!2844785 b_free!82655 (= (toChars!6985 (transformation!5072 (h!39145 (t!232844 rules!1139)))) (toChars!6985 (transformation!5072 (rule!7500 t1!27))))) b_lambda!85545)))

(declare-fun b_lambda!85547 () Bool)

(assert (= b_lambda!85537 (or (and b!2844676 b_free!82641 (= (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toChars!6985 (transformation!5072 (rule!7500 t1!27))))) (and b!2844661 b_free!82647) (and b!2844669 b_free!82651 (= (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toChars!6985 (transformation!5072 (rule!7500 t1!27))))) (and b!2844785 b_free!82655 (= (toChars!6985 (transformation!5072 (h!39145 (t!232844 rules!1139)))) (toChars!6985 (transformation!5072 (rule!7500 t1!27))))) b_lambda!85547)))

(declare-fun b_lambda!85549 () Bool)

(assert (= b_lambda!85535 (or (and b!2844676 b_free!82641 (= (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toChars!6985 (transformation!5072 (rule!7500 t2!27))))) (and b!2844661 b_free!82647 (= (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (toChars!6985 (transformation!5072 (rule!7500 t2!27))))) (and b!2844669 b_free!82651) (and b!2844785 b_free!82655 (= (toChars!6985 (transformation!5072 (h!39145 (t!232844 rules!1139)))) (toChars!6985 (transformation!5072 (rule!7500 t2!27))))) b_lambda!85549)))

(check-sat (not b!2844743) (not b!2844774) (not b!2844818) (not b!2844820) (not b!2844759) (not b!2844794) b_and!208867 (not d!824931) (not setNonEmpty!24858) (not setNonEmpty!24857) (not d!824907) (not d!824953) (not setNonEmpty!24851) (not b!2844868) (not b!2844840) (not b!2844867) (not d!824913) (not b!2844837) (not b!2844698) (not b!2844795) b_and!208895 (not b!2844751) (not b!2844760) (not b!2844873) (not b!2844799) (not setNonEmpty!24859) (not b!2844710) b_and!208889 (not b_lambda!85543) (not b!2844838) (not d!824923) (not setNonEmpty!24840) (not b!2844796) (not b!2844801) (not setNonEmpty!24849) (not b!2844740) b_and!208891 (not b!2844754) (not b!2844723) (not d!824899) (not b!2844702) b_and!208857 (not b_next!83353) (not b!2844691) (not b!2844815) (not d!824915) (not b!2844742) (not setNonEmpty!24839) (not tb!155075) (not b!2844688) (not b!2844847) (not b_next!83341) (not b!2844714) (not b_next!83355) (not b!2844805) (not b!2844871) b_and!208861 (not b!2844869) (not tb!155069) (not d!824925) (not mapNonEmpty!18594) (not b!2844866) (not b!2844800) (not b_next!83337) (not setNonEmpty!24844) (not b!2844711) (not d!824905) (not b!2844841) (not b_lambda!85549) (not b!2844846) (not b!2844845) (not setNonEmpty!24850) (not d!824951) (not b!2844870) (not b!2844709) b_and!208897 (not b!2844843) b_and!208853 (not b_next!83339) (not b!2844784) (not b!2844848) (not b!2844729) (not b!2844783) (not b!2844746) (not b_next!83345) (not b_next!83357) (not setNonEmpty!24852) (not b_next!83347) (not b!2844741) (not b!2844750) (not b!2844836) (not b!2844772) (not b_next!83351) (not b!2844722) (not b!2844865) (not setNonEmpty!24838) (not b!2844804) (not b!2844728) (not b!2844835) (not b!2844699) (not b!2844839) (not d!824927) (not b!2844731) (not b_next!83349) (not b!2844752) b_and!208863 (not b_lambda!85547) (not mapNonEmpty!18597) (not b!2844850) (not b!2844749) (not b_next!83343) b_and!208851 (not b!2844872) (not b!2844730) (not b_lambda!85545) b_and!208893 (not b!2844798) (not d!824929) (not b!2844753) (not b_next!83359) (not setNonEmpty!24843) (not b!2844696) (not b!2844816) tp_is_empty!14689 (not b!2844819) (not b!2844802) (not b!2844773) (not b!2844817) (not d!824921) (not b!2844690) (not b!2844842) (not d!824947) (not d!824937) b_and!208855 (not b!2844797) (not d!824949) (not d!824933) (not b!2844849) (not b!2844694) (not b!2844806) (not b!2844717))
(check-sat b_and!208867 b_and!208895 b_and!208889 b_and!208891 b_and!208861 (not b_next!83337) b_and!208897 (not b_next!83351) (not b_next!83349) b_and!208863 b_and!208893 (not b_next!83359) b_and!208855 b_and!208857 (not b_next!83353) (not b_next!83341) (not b_next!83355) b_and!208853 (not b_next!83339) (not b_next!83345) (not b_next!83357) (not b_next!83347) (not b_next!83343) b_and!208851)
(get-model)

(declare-fun d!824955 () Bool)

(declare-fun lambda!104385 () Int)

(declare-fun forall!6925 (List!33844 Int) Bool)

(assert (=> d!824955 (= (inv!45728 (_2!19912 (_1!19913 (h!39141 mapDefault!18590)))) (forall!6925 (exprs!2991 (_2!19912 (_1!19913 (h!39141 mapDefault!18590)))) lambda!104385))))

(declare-fun bs!519198 () Bool)

(assert (= bs!519198 d!824955))

(declare-fun m!3272727 () Bool)

(assert (=> bs!519198 m!3272727))

(assert (=> b!2844795 d!824955))

(declare-fun d!824957 () Bool)

(assert (=> d!824957 true))

(declare-fun lambda!104388 () Int)

(declare-fun order!18049 () Int)

(declare-fun order!18051 () Int)

(declare-fun dynLambda!14197 (Int Int) Int)

(declare-fun dynLambda!14198 (Int Int) Int)

(assert (=> d!824957 (< (dynLambda!14197 order!18049 (toChars!6985 (transformation!5072 (h!39145 rules!1139)))) (dynLambda!14198 order!18051 lambda!104388))))

(assert (=> d!824957 true))

(declare-fun order!18053 () Int)

(declare-fun dynLambda!14199 (Int Int) Int)

(assert (=> d!824957 (< (dynLambda!14199 order!18053 (toValue!7126 (transformation!5072 (h!39145 rules!1139)))) (dynLambda!14198 order!18051 lambda!104388))))

(declare-fun Forall!1251 (Int) Bool)

(assert (=> d!824957 (= (semiInverseModEq!2116 (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toValue!7126 (transformation!5072 (h!39145 rules!1139)))) (Forall!1251 lambda!104388))))

(declare-fun bs!519199 () Bool)

(assert (= bs!519199 d!824957))

(declare-fun m!3272729 () Bool)

(assert (=> bs!519199 m!3272729))

(assert (=> d!824905 d!824957))

(declare-fun bs!519200 () Bool)

(declare-fun d!824959 () Bool)

(assert (= bs!519200 (and d!824959 d!824955)))

(declare-fun lambda!104389 () Int)

(assert (=> bs!519200 (= lambda!104389 lambda!104385)))

(assert (=> d!824959 (= (inv!45728 (_2!19912 (_1!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))))) (forall!6925 (exprs!2991 (_2!19912 (_1!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))))) lambda!104389))))

(declare-fun bs!519201 () Bool)

(assert (= bs!519201 d!824959))

(declare-fun m!3272731 () Bool)

(assert (=> bs!519201 m!3272731))

(assert (=> b!2844798 d!824959))

(declare-fun bs!519202 () Bool)

(declare-fun d!824961 () Bool)

(assert (= bs!519202 (and d!824961 d!824955)))

(declare-fun lambda!104390 () Int)

(assert (=> bs!519202 (= lambda!104390 lambda!104385)))

(declare-fun bs!519203 () Bool)

(assert (= bs!519203 (and d!824961 d!824959)))

(assert (=> bs!519203 (= lambda!104390 lambda!104389)))

(assert (=> d!824961 (= (inv!45728 (_2!19912 (_1!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))))) (forall!6925 (exprs!2991 (_2!19912 (_1!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))))) lambda!104390))))

(declare-fun bs!519204 () Bool)

(assert (= bs!519204 d!824961))

(declare-fun m!3272733 () Bool)

(assert (=> bs!519204 m!3272733))

(assert (=> b!2844801 d!824961))

(declare-fun bs!519205 () Bool)

(declare-fun d!824963 () Bool)

(assert (= bs!519205 (and d!824963 d!824955)))

(declare-fun lambda!104391 () Int)

(assert (=> bs!519205 (= lambda!104391 lambda!104385)))

(declare-fun bs!519206 () Bool)

(assert (= bs!519206 (and d!824963 d!824959)))

(assert (=> bs!519206 (= lambda!104391 lambda!104389)))

(declare-fun bs!519207 () Bool)

(assert (= bs!519207 (and d!824963 d!824961)))

(assert (=> bs!519207 (= lambda!104391 lambda!104390)))

(assert (=> d!824963 (= (inv!45728 setElem!24852) (forall!6925 (exprs!2991 setElem!24852) lambda!104391))))

(declare-fun bs!519208 () Bool)

(assert (= bs!519208 d!824963))

(declare-fun m!3272735 () Bool)

(assert (=> bs!519208 m!3272735))

(assert (=> setNonEmpty!24852 d!824963))

(declare-fun bs!519209 () Bool)

(declare-fun d!824965 () Bool)

(assert (= bs!519209 (and d!824965 d!824955)))

(declare-fun lambda!104392 () Int)

(assert (=> bs!519209 (= lambda!104392 lambda!104385)))

(declare-fun bs!519210 () Bool)

(assert (= bs!519210 (and d!824965 d!824959)))

(assert (=> bs!519210 (= lambda!104392 lambda!104389)))

(declare-fun bs!519211 () Bool)

(assert (= bs!519211 (and d!824965 d!824961)))

(assert (=> bs!519211 (= lambda!104392 lambda!104390)))

(declare-fun bs!519212 () Bool)

(assert (= bs!519212 (and d!824965 d!824963)))

(assert (=> bs!519212 (= lambda!104392 lambda!104391)))

(assert (=> d!824965 (= (inv!45728 (_1!19914 (_1!19915 (h!39142 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))))) (forall!6925 (exprs!2991 (_1!19914 (_1!19915 (h!39142 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))))) lambda!104392))))

(declare-fun bs!519213 () Bool)

(assert (= bs!519213 d!824965))

(declare-fun m!3272737 () Bool)

(assert (=> bs!519213 m!3272737))

(assert (=> b!2844815 d!824965))

(declare-fun d!824967 () Bool)

(declare-fun lt!1012308 () Int)

(assert (=> d!824967 (= lt!1012308 (size!26200 (list!12564 lt!1012244)))))

(declare-fun size!26202 (Conc!10458) Int)

(assert (=> d!824967 (= lt!1012308 (size!26202 (c!459093 lt!1012244)))))

(assert (=> d!824967 (= (size!26201 lt!1012244) lt!1012308)))

(declare-fun bs!519214 () Bool)

(assert (= bs!519214 d!824967))

(assert (=> bs!519214 m!3272631))

(assert (=> bs!519214 m!3272631))

(declare-fun m!3272739 () Bool)

(assert (=> bs!519214 m!3272739))

(declare-fun m!3272741 () Bool)

(assert (=> bs!519214 m!3272741))

(assert (=> b!2844749 d!824967))

(declare-fun bs!519215 () Bool)

(declare-fun d!824969 () Bool)

(assert (= bs!519215 (and d!824969 d!824963)))

(declare-fun lambda!104393 () Int)

(assert (=> bs!519215 (= lambda!104393 lambda!104391)))

(declare-fun bs!519216 () Bool)

(assert (= bs!519216 (and d!824969 d!824965)))

(assert (=> bs!519216 (= lambda!104393 lambda!104392)))

(declare-fun bs!519217 () Bool)

(assert (= bs!519217 (and d!824969 d!824961)))

(assert (=> bs!519217 (= lambda!104393 lambda!104390)))

(declare-fun bs!519218 () Bool)

(assert (= bs!519218 (and d!824969 d!824959)))

(assert (=> bs!519218 (= lambda!104393 lambda!104389)))

(declare-fun bs!519219 () Bool)

(assert (= bs!519219 (and d!824969 d!824955)))

(assert (=> bs!519219 (= lambda!104393 lambda!104385)))

(assert (=> d!824969 (= (inv!45728 setElem!24849) (forall!6925 (exprs!2991 setElem!24849) lambda!104393))))

(declare-fun bs!519220 () Bool)

(assert (= bs!519220 d!824969))

(declare-fun m!3272743 () Bool)

(assert (=> bs!519220 m!3272743))

(assert (=> setNonEmpty!24849 d!824969))

(declare-fun bs!519221 () Bool)

(declare-fun d!824971 () Bool)

(assert (= bs!519221 (and d!824971 d!824963)))

(declare-fun lambda!104394 () Int)

(assert (=> bs!519221 (= lambda!104394 lambda!104391)))

(declare-fun bs!519222 () Bool)

(assert (= bs!519222 (and d!824971 d!824965)))

(assert (=> bs!519222 (= lambda!104394 lambda!104392)))

(declare-fun bs!519223 () Bool)

(assert (= bs!519223 (and d!824971 d!824961)))

(assert (=> bs!519223 (= lambda!104394 lambda!104390)))

(declare-fun bs!519224 () Bool)

(assert (= bs!519224 (and d!824971 d!824959)))

(assert (=> bs!519224 (= lambda!104394 lambda!104389)))

(declare-fun bs!519225 () Bool)

(assert (= bs!519225 (and d!824971 d!824969)))

(assert (=> bs!519225 (= lambda!104394 lambda!104393)))

(declare-fun bs!519226 () Bool)

(assert (= bs!519226 (and d!824971 d!824955)))

(assert (=> bs!519226 (= lambda!104394 lambda!104385)))

(assert (=> d!824971 (= (inv!45728 setElem!24844) (forall!6925 (exprs!2991 setElem!24844) lambda!104394))))

(declare-fun bs!519227 () Bool)

(assert (= bs!519227 d!824971))

(declare-fun m!3272745 () Bool)

(assert (=> bs!519227 m!3272745))

(assert (=> setNonEmpty!24844 d!824971))

(declare-fun d!824973 () Bool)

(declare-fun list!12565 (Conc!10458) List!33848)

(assert (=> d!824973 (= (list!12564 lt!1012303) (list!12565 (c!459093 lt!1012303)))))

(declare-fun bs!519228 () Bool)

(assert (= bs!519228 d!824973))

(declare-fun m!3272747 () Bool)

(assert (=> bs!519228 m!3272747))

(assert (=> d!824951 d!824973))

(declare-fun d!824975 () Bool)

(assert (=> d!824975 (= (list!12564 lt!1012254) (list!12565 (c!459093 lt!1012254)))))

(declare-fun bs!519229 () Bool)

(assert (= bs!519229 d!824975))

(declare-fun m!3272749 () Bool)

(assert (=> bs!519229 m!3272749))

(assert (=> b!2844743 d!824975))

(declare-fun b!2844887 () Bool)

(declare-fun e!1802501 () List!33848)

(assert (=> b!2844887 (= e!1802501 (Cons!33724 (h!39144 (list!12564 (charsOf!3120 t1!27))) (++!8124 (t!232843 (list!12564 (charsOf!3120 t1!27))) (list!12564 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun b!2844888 () Bool)

(declare-fun res!1183318 () Bool)

(declare-fun e!1802500 () Bool)

(assert (=> b!2844888 (=> (not res!1183318) (not e!1802500))))

(declare-fun lt!1012311 () List!33848)

(assert (=> b!2844888 (= res!1183318 (= (size!26200 lt!1012311) (+ (size!26200 (list!12564 (charsOf!3120 t1!27))) (size!26200 (list!12564 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun b!2844889 () Bool)

(assert (=> b!2844889 (= e!1802500 (or (not (= (list!12564 (singletonSeq!2187 (apply!7855 lt!1012244 0))) Nil!33724)) (= lt!1012311 (list!12564 (charsOf!3120 t1!27)))))))

(declare-fun d!824977 () Bool)

(assert (=> d!824977 e!1802500))

(declare-fun res!1183319 () Bool)

(assert (=> d!824977 (=> (not res!1183319) (not e!1802500))))

(declare-fun content!4648 (List!33848) (InoxSet C!17108))

(assert (=> d!824977 (= res!1183319 (= (content!4648 lt!1012311) ((_ map or) (content!4648 (list!12564 (charsOf!3120 t1!27))) (content!4648 (list!12564 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(assert (=> d!824977 (= lt!1012311 e!1802501)))

(declare-fun c!459108 () Bool)

(assert (=> d!824977 (= c!459108 ((_ is Nil!33724) (list!12564 (charsOf!3120 t1!27))))))

(assert (=> d!824977 (= (++!8124 (list!12564 (charsOf!3120 t1!27)) (list!12564 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) lt!1012311)))

(declare-fun b!2844886 () Bool)

(assert (=> b!2844886 (= e!1802501 (list!12564 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))

(assert (= (and d!824977 c!459108) b!2844886))

(assert (= (and d!824977 (not c!459108)) b!2844887))

(assert (= (and d!824977 res!1183319) b!2844888))

(assert (= (and b!2844888 res!1183318) b!2844889))

(assert (=> b!2844887 m!3272565))

(declare-fun m!3272751 () Bool)

(assert (=> b!2844887 m!3272751))

(declare-fun m!3272753 () Bool)

(assert (=> b!2844888 m!3272753))

(assert (=> b!2844888 m!3272563))

(declare-fun m!3272755 () Bool)

(assert (=> b!2844888 m!3272755))

(assert (=> b!2844888 m!3272565))

(declare-fun m!3272757 () Bool)

(assert (=> b!2844888 m!3272757))

(declare-fun m!3272759 () Bool)

(assert (=> d!824977 m!3272759))

(assert (=> d!824977 m!3272563))

(declare-fun m!3272761 () Bool)

(assert (=> d!824977 m!3272761))

(assert (=> d!824977 m!3272565))

(declare-fun m!3272763 () Bool)

(assert (=> d!824977 m!3272763))

(assert (=> b!2844743 d!824977))

(declare-fun d!824979 () Bool)

(assert (=> d!824979 (= (list!12564 (charsOf!3120 t1!27)) (list!12565 (c!459093 (charsOf!3120 t1!27))))))

(declare-fun bs!519230 () Bool)

(assert (= bs!519230 d!824979))

(declare-fun m!3272765 () Bool)

(assert (=> bs!519230 m!3272765))

(assert (=> b!2844743 d!824979))

(declare-fun d!824981 () Bool)

(assert (=> d!824981 (= (list!12564 (singletonSeq!2187 (apply!7855 lt!1012244 0))) (list!12565 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))

(declare-fun bs!519231 () Bool)

(assert (= bs!519231 d!824981))

(declare-fun m!3272767 () Bool)

(assert (=> bs!519231 m!3272767))

(assert (=> b!2844743 d!824981))

(declare-fun d!824983 () Bool)

(declare-fun lt!1012314 () Token!9546)

(declare-fun apply!7859 (List!33851 Int) Token!9546)

(assert (=> d!824983 (= lt!1012314 (apply!7859 (list!12563 (_1!19917 lt!1012305)) 0))))

(declare-fun apply!7860 (Conc!10459 Int) Token!9546)

(assert (=> d!824983 (= lt!1012314 (apply!7860 (c!459105 (_1!19917 lt!1012305)) 0))))

(declare-fun e!1802504 () Bool)

(assert (=> d!824983 e!1802504))

(declare-fun res!1183322 () Bool)

(assert (=> d!824983 (=> (not res!1183322) (not e!1802504))))

(assert (=> d!824983 (= res!1183322 (<= 0 0))))

(assert (=> d!824983 (= (apply!7856 (_1!19917 lt!1012305) 0) lt!1012314)))

(declare-fun b!2844892 () Bool)

(assert (=> b!2844892 (= e!1802504 (< 0 (size!26199 (_1!19917 lt!1012305))))))

(assert (= (and d!824983 res!1183322) b!2844892))

(declare-fun m!3272769 () Bool)

(assert (=> d!824983 m!3272769))

(assert (=> d!824983 m!3272769))

(declare-fun m!3272771 () Bool)

(assert (=> d!824983 m!3272771))

(declare-fun m!3272773 () Bool)

(assert (=> d!824983 m!3272773))

(assert (=> b!2844892 m!3272657))

(assert (=> b!2844752 d!824983))

(assert (=> d!824925 d!824951))

(declare-fun d!824985 () Bool)

(declare-fun e!1802505 () Bool)

(assert (=> d!824985 e!1802505))

(declare-fun res!1183323 () Bool)

(assert (=> d!824985 (=> (not res!1183323) (not e!1802505))))

(declare-fun lt!1012315 () BalanceConc!20554)

(assert (=> d!824985 (= res!1183323 (= (list!12564 lt!1012315) (Cons!33724 (apply!7855 (charsOf!3120 t2!27) 0) Nil!33724)))))

(assert (=> d!824985 (= lt!1012315 (singleton!963 (apply!7855 (charsOf!3120 t2!27) 0)))))

(assert (=> d!824985 (= (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0)) lt!1012315)))

(declare-fun b!2844893 () Bool)

(assert (=> b!2844893 (= e!1802505 (isBalanced!3153 (c!459093 lt!1012315)))))

(assert (= (and d!824985 res!1183323) b!2844893))

(declare-fun m!3272775 () Bool)

(assert (=> d!824985 m!3272775))

(assert (=> d!824985 m!3272585))

(declare-fun m!3272777 () Bool)

(assert (=> d!824985 m!3272777))

(declare-fun m!3272779 () Bool)

(assert (=> b!2844893 m!3272779))

(assert (=> d!824925 d!824985))

(assert (=> d!824925 d!824923))

(declare-fun d!824987 () Bool)

(declare-fun lt!1012316 () C!17108)

(assert (=> d!824987 (= lt!1012316 (apply!7857 (list!12564 (charsOf!3120 t2!27)) 0))))

(assert (=> d!824987 (= lt!1012316 (apply!7858 (c!459093 (charsOf!3120 t2!27)) 0))))

(declare-fun e!1802506 () Bool)

(assert (=> d!824987 e!1802506))

(declare-fun res!1183324 () Bool)

(assert (=> d!824987 (=> (not res!1183324) (not e!1802506))))

(assert (=> d!824987 (= res!1183324 (<= 0 0))))

(assert (=> d!824987 (= (apply!7855 (charsOf!3120 t2!27) 0) lt!1012316)))

(declare-fun b!2844894 () Bool)

(assert (=> b!2844894 (= e!1802506 (< 0 (size!26201 (charsOf!3120 t2!27))))))

(assert (= (and d!824987 res!1183324) b!2844894))

(assert (=> d!824987 m!3272463))

(declare-fun m!3272781 () Bool)

(assert (=> d!824987 m!3272781))

(assert (=> d!824987 m!3272781))

(declare-fun m!3272783 () Bool)

(assert (=> d!824987 m!3272783))

(declare-fun m!3272785 () Bool)

(assert (=> d!824987 m!3272785))

(assert (=> b!2844894 m!3272463))

(declare-fun m!3272787 () Bool)

(assert (=> b!2844894 m!3272787))

(assert (=> d!824925 d!824987))

(declare-fun lt!1012337 () Bool)

(declare-fun d!824989 () Bool)

(assert (=> d!824989 (= lt!1012337 (prefixMatch!809 (rulesRegex!1006 thiss!11361 rules!1139) (list!12564 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))))))))

(assert (=> d!824989 (= lt!1012337 (prefixMatchZipperSequence!746 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))) 0))))

(declare-fun lt!1012341 () Unit!47519)

(declare-fun lt!1012340 () Unit!47519)

(assert (=> d!824989 (= lt!1012341 lt!1012340)))

(declare-fun lt!1012345 () List!33848)

(declare-fun lt!1012343 () (InoxSet Context!4982))

(assert (=> d!824989 (= (prefixMatch!809 (rulesRegex!1006 thiss!11361 rules!1139) lt!1012345) (prefixMatchZipper!225 lt!1012343 lt!1012345))))

(declare-fun lt!1012344 () List!33852)

(assert (=> d!824989 (= lt!1012340 (prefixMatchZipperRegexEquiv!225 lt!1012343 lt!1012344 (rulesRegex!1006 thiss!11361 rules!1139) lt!1012345))))

(assert (=> d!824989 (= lt!1012345 (list!12564 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0)))))))

(assert (=> d!824989 (= lt!1012344 (toList!1900 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139))))))

(assert (=> d!824989 (= lt!1012343 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)))))

(declare-fun lt!1012338 () Unit!47519)

(declare-fun lt!1012346 () Unit!47519)

(assert (=> d!824989 (= lt!1012338 lt!1012346)))

(declare-fun lt!1012339 () (InoxSet Context!4982))

(declare-fun lt!1012342 () Int)

(assert (=> d!824989 (= (prefixMatchZipper!225 lt!1012339 (dropList!1010 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))) lt!1012342)) (prefixMatchZipperSequence!746 lt!1012339 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))) lt!1012342))))

(assert (=> d!824989 (= lt!1012346 (lemmaprefixMatchZipperSequenceEquivalent!225 lt!1012339 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))) lt!1012342))))

(assert (=> d!824989 (= lt!1012342 0)))

(assert (=> d!824989 (= lt!1012339 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)))))

(assert (=> d!824989 (validRegex!3356 (rulesRegex!1006 thiss!11361 rules!1139))))

(assert (=> d!824989 (= (prefixMatchZipperSequence!745 (rulesRegex!1006 thiss!11361 rules!1139) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0)))) lt!1012337)))

(declare-fun bs!519232 () Bool)

(assert (= bs!519232 d!824989))

(assert (=> bs!519232 m!3272589))

(declare-fun m!3272789 () Bool)

(assert (=> bs!519232 m!3272789))

(assert (=> bs!519232 m!3272589))

(declare-fun m!3272791 () Bool)

(assert (=> bs!519232 m!3272791))

(declare-fun m!3272793 () Bool)

(assert (=> bs!519232 m!3272793))

(assert (=> bs!519232 m!3272589))

(declare-fun m!3272795 () Bool)

(assert (=> bs!519232 m!3272795))

(assert (=> bs!519232 m!3272603))

(assert (=> bs!519232 m!3272609))

(assert (=> bs!519232 m!3272589))

(declare-fun m!3272797 () Bool)

(assert (=> bs!519232 m!3272797))

(assert (=> bs!519232 m!3272603))

(assert (=> bs!519232 m!3272589))

(declare-fun m!3272799 () Bool)

(assert (=> bs!519232 m!3272799))

(assert (=> bs!519232 m!3272469))

(declare-fun m!3272801 () Bool)

(assert (=> bs!519232 m!3272801))

(assert (=> bs!519232 m!3272469))

(assert (=> bs!519232 m!3272603))

(assert (=> bs!519232 m!3272469))

(declare-fun m!3272803 () Bool)

(assert (=> bs!519232 m!3272803))

(assert (=> bs!519232 m!3272469))

(assert (=> bs!519232 m!3272601))

(assert (=> bs!519232 m!3272795))

(declare-fun m!3272805 () Bool)

(assert (=> bs!519232 m!3272805))

(assert (=> bs!519232 m!3272469))

(assert (=> bs!519232 m!3272791))

(declare-fun m!3272807 () Bool)

(assert (=> bs!519232 m!3272807))

(assert (=> d!824925 d!824989))

(declare-fun d!824991 () Bool)

(declare-fun e!1802507 () Bool)

(assert (=> d!824991 e!1802507))

(declare-fun res!1183326 () Bool)

(assert (=> d!824991 (=> (not res!1183326) (not e!1802507))))

(assert (=> d!824991 (= res!1183326 (appendAssocInst!719 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0)))))))

(declare-fun lt!1012347 () BalanceConc!20554)

(assert (=> d!824991 (= lt!1012347 (BalanceConc!20555 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))))))))

(assert (=> d!824991 (= (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))) lt!1012347)))

(declare-fun b!2844896 () Bool)

(declare-fun res!1183327 () Bool)

(assert (=> b!2844896 (=> (not res!1183327) (not e!1802507))))

(assert (=> b!2844896 (= res!1183327 (<= (height!1515 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))))) (+ (max!0 (height!1515 (c!459093 (charsOf!3120 t1!27))) (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))))) 1)))))

(declare-fun b!2844895 () Bool)

(declare-fun res!1183328 () Bool)

(assert (=> b!2844895 (=> (not res!1183328) (not e!1802507))))

(assert (=> b!2844895 (= res!1183328 (isBalanced!3153 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))))))))

(declare-fun b!2844898 () Bool)

(assert (=> b!2844898 (= e!1802507 (= (list!12564 lt!1012347) (++!8124 (list!12564 (charsOf!3120 t1!27)) (list!12564 (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))))))))

(declare-fun b!2844897 () Bool)

(declare-fun res!1183325 () Bool)

(assert (=> b!2844897 (=> (not res!1183325) (not e!1802507))))

(assert (=> b!2844897 (= res!1183325 (>= (height!1515 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0))))) (max!0 (height!1515 (c!459093 (charsOf!3120 t1!27))) (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 (charsOf!3120 t2!27) 0)))))))))

(assert (= (and d!824991 res!1183326) b!2844895))

(assert (= (and b!2844895 res!1183328) b!2844896))

(assert (= (and b!2844896 res!1183327) b!2844897))

(assert (= (and b!2844897 res!1183325) b!2844898))

(declare-fun m!3272809 () Bool)

(assert (=> b!2844898 m!3272809))

(assert (=> b!2844898 m!3272475))

(assert (=> b!2844898 m!3272563))

(assert (=> b!2844898 m!3272587))

(declare-fun m!3272811 () Bool)

(assert (=> b!2844898 m!3272811))

(assert (=> b!2844898 m!3272563))

(assert (=> b!2844898 m!3272811))

(declare-fun m!3272813 () Bool)

(assert (=> b!2844898 m!3272813))

(declare-fun m!3272815 () Bool)

(assert (=> d!824991 m!3272815))

(declare-fun m!3272817 () Bool)

(assert (=> d!824991 m!3272817))

(assert (=> b!2844895 m!3272817))

(assert (=> b!2844895 m!3272817))

(declare-fun m!3272819 () Bool)

(assert (=> b!2844895 m!3272819))

(assert (=> b!2844896 m!3272817))

(declare-fun m!3272821 () Bool)

(assert (=> b!2844896 m!3272821))

(assert (=> b!2844896 m!3272577))

(assert (=> b!2844896 m!3272817))

(declare-fun m!3272823 () Bool)

(assert (=> b!2844896 m!3272823))

(assert (=> b!2844896 m!3272577))

(assert (=> b!2844896 m!3272823))

(declare-fun m!3272825 () Bool)

(assert (=> b!2844896 m!3272825))

(assert (=> b!2844897 m!3272817))

(assert (=> b!2844897 m!3272821))

(assert (=> b!2844897 m!3272577))

(assert (=> b!2844897 m!3272817))

(assert (=> b!2844897 m!3272823))

(assert (=> b!2844897 m!3272577))

(assert (=> b!2844897 m!3272823))

(assert (=> b!2844897 m!3272825))

(assert (=> d!824925 d!824991))

(assert (=> d!824925 d!824929))

(declare-fun bs!519233 () Bool)

(declare-fun d!824993 () Bool)

(assert (= bs!519233 (and d!824993 d!824963)))

(declare-fun lambda!104395 () Int)

(assert (=> bs!519233 (= lambda!104395 lambda!104391)))

(declare-fun bs!519234 () Bool)

(assert (= bs!519234 (and d!824993 d!824971)))

(assert (=> bs!519234 (= lambda!104395 lambda!104394)))

(declare-fun bs!519235 () Bool)

(assert (= bs!519235 (and d!824993 d!824965)))

(assert (=> bs!519235 (= lambda!104395 lambda!104392)))

(declare-fun bs!519236 () Bool)

(assert (= bs!519236 (and d!824993 d!824961)))

(assert (=> bs!519236 (= lambda!104395 lambda!104390)))

(declare-fun bs!519237 () Bool)

(assert (= bs!519237 (and d!824993 d!824959)))

(assert (=> bs!519237 (= lambda!104395 lambda!104389)))

(declare-fun bs!519238 () Bool)

(assert (= bs!519238 (and d!824993 d!824969)))

(assert (=> bs!519238 (= lambda!104395 lambda!104393)))

(declare-fun bs!519239 () Bool)

(assert (= bs!519239 (and d!824993 d!824955)))

(assert (=> bs!519239 (= lambda!104395 lambda!104385)))

(assert (=> d!824993 (= (inv!45728 (_2!19912 (_1!19913 (h!39141 mapValue!18590)))) (forall!6925 (exprs!2991 (_2!19912 (_1!19913 (h!39141 mapValue!18590)))) lambda!104395))))

(declare-fun bs!519240 () Bool)

(assert (= bs!519240 d!824993))

(declare-fun m!3272827 () Bool)

(assert (=> bs!519240 m!3272827))

(assert (=> b!2844872 d!824993))

(declare-fun d!824995 () Bool)

(declare-fun res!1183335 () Bool)

(declare-fun e!1802512 () Bool)

(assert (=> d!824995 (=> (not res!1183335) (not e!1802512))))

(declare-fun valid!3190 (MutableMap!4002) Bool)

(assert (=> d!824995 (= res!1183335 (valid!3190 (cache!4137 cacheDown!447)))))

(assert (=> d!824995 (= (validCacheMapDown!437 (cache!4137 cacheDown!447)) e!1802512)))

(declare-fun b!2844905 () Bool)

(declare-fun res!1183336 () Bool)

(assert (=> b!2844905 (=> (not res!1183336) (not e!1802512))))

(declare-fun invariantList!469 (List!33845) Bool)

(declare-datatypes ((ListMap!1279 0))(
  ( (ListMap!1280 (toList!1901 List!33845)) )
))
(declare-fun map!7238 (MutableMap!4002) ListMap!1279)

(assert (=> b!2844905 (= res!1183336 (invariantList!469 (toList!1901 (map!7238 (cache!4137 cacheDown!447)))))))

(declare-fun b!2844906 () Bool)

(declare-fun lambda!104398 () Int)

(declare-fun forall!6926 (List!33845 Int) Bool)

(assert (=> b!2844906 (= e!1802512 (forall!6926 (toList!1901 (map!7238 (cache!4137 cacheDown!447))) lambda!104398))))

(assert (= (and d!824995 res!1183335) b!2844905))

(assert (= (and b!2844905 res!1183336) b!2844906))

(declare-fun m!3272830 () Bool)

(assert (=> d!824995 m!3272830))

(declare-fun m!3272832 () Bool)

(assert (=> b!2844905 m!3272832))

(declare-fun m!3272834 () Bool)

(assert (=> b!2844905 m!3272834))

(assert (=> b!2844906 m!3272832))

(declare-fun m!3272836 () Bool)

(assert (=> b!2844906 m!3272836))

(assert (=> b!2844717 d!824995))

(declare-fun d!824997 () Bool)

(assert (=> d!824997 (= (list!12564 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27))) (list!12565 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))))))

(declare-fun bs!519241 () Bool)

(assert (= bs!519241 d!824997))

(declare-fun m!3272838 () Bool)

(assert (=> bs!519241 m!3272838))

(assert (=> b!2844722 d!824997))

(declare-fun d!824999 () Bool)

(assert (=> d!824999 (= (height!1515 (c!459093 (charsOf!3120 t1!27))) (ite ((_ is Empty!10458) (c!459093 (charsOf!3120 t1!27))) 0 (ite ((_ is Leaf!15913) (c!459093 (charsOf!3120 t1!27))) 1 (cheight!10669 (c!459093 (charsOf!3120 t1!27))))))))

(assert (=> b!2844741 d!824999))

(declare-fun bm!183472 () Bool)

(declare-fun call!183485 () Conc!10458)

(declare-fun call!183487 () Conc!10458)

(assert (=> bm!183472 (= call!183485 call!183487)))

(declare-fun bm!183473 () Bool)

(declare-fun call!183480 () Conc!10458)

(declare-fun call!183488 () Conc!10458)

(assert (=> bm!183473 (= call!183480 call!183488)))

(declare-fun b!2844949 () Bool)

(declare-fun res!1183348 () Bool)

(declare-fun e!1802540 () Bool)

(assert (=> b!2844949 (=> (not res!1183348) (not e!1802540))))

(declare-fun lt!1012356 () Conc!10458)

(assert (=> b!2844949 (= res!1183348 (<= (height!1515 lt!1012356) (+ (max!0 (height!1515 (c!459093 (charsOf!3120 t1!27))) (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) 1)))))

(declare-fun b!2844950 () Bool)

(declare-fun e!1802541 () Conc!10458)

(declare-fun call!183482 () Conc!10458)

(assert (=> b!2844950 (= e!1802541 call!183482)))

(declare-fun bm!183474 () Bool)

(assert (=> bm!183474 (= call!183488 call!183487)))

(declare-fun call!183483 () Int)

(declare-fun c!459127 () Bool)

(declare-fun bm!183475 () Bool)

(assert (=> bm!183475 (= call!183483 (height!1515 (ite c!459127 (c!459093 (charsOf!3120 t1!27)) (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun lt!1012358 () Conc!10458)

(declare-fun bm!183476 () Bool)

(declare-fun call!183484 () Int)

(assert (=> bm!183476 (= call!183484 (height!1515 (ite c!459127 (right!25734 (c!459093 (charsOf!3120 t1!27))) lt!1012358)))))

(declare-fun b!2844951 () Bool)

(declare-fun e!1802534 () Conc!10458)

(assert (=> b!2844951 (= e!1802534 e!1802541)))

(declare-fun call!183489 () Conc!10458)

(assert (=> b!2844951 (= lt!1012358 call!183489)))

(declare-fun c!459126 () Bool)

(declare-fun call!183481 () Int)

(assert (=> b!2844951 (= c!459126 (= call!183484 (- call!183481 3)))))

(declare-fun b!2844952 () Bool)

(declare-fun e!1802533 () Conc!10458)

(assert (=> b!2844952 (= e!1802533 (c!459093 (charsOf!3120 t1!27)))))

(declare-fun b!2844953 () Bool)

(declare-fun e!1802538 () Conc!10458)

(declare-fun call!183492 () Conc!10458)

(assert (=> b!2844953 (= e!1802538 call!183492)))

(declare-fun b!2844954 () Bool)

(assert (=> b!2844954 (= e!1802534 call!183488)))

(declare-fun bm!183478 () Bool)

(assert (=> bm!183478 (= call!183492 call!183485)))

(declare-fun bm!183479 () Bool)

(declare-fun call!183479 () Conc!10458)

(assert (=> bm!183479 (= call!183482 call!183479)))

(declare-fun bm!183480 () Bool)

(declare-fun call!183478 () Conc!10458)

(declare-fun call!183477 () Conc!10458)

(assert (=> bm!183480 (= call!183478 call!183477)))

(declare-fun b!2844955 () Bool)

(declare-fun e!1802536 () Conc!10458)

(declare-fun e!1802535 () Conc!10458)

(assert (=> b!2844955 (= e!1802536 e!1802535)))

(declare-fun lt!1012359 () Int)

(assert (=> b!2844955 (= c!459127 (< lt!1012359 (- 1)))))

(declare-fun b!2844956 () Bool)

(declare-fun e!1802539 () Conc!10458)

(assert (=> b!2844956 (= e!1802539 call!183485)))

(declare-fun b!2844957 () Bool)

(assert (=> b!2844957 (= e!1802540 (= (list!12565 lt!1012356) (++!8124 (list!12565 (c!459093 (charsOf!3120 t1!27))) (list!12565 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun c!459125 () Bool)

(declare-fun c!459132 () Bool)

(declare-fun c!459131 () Bool)

(declare-fun bm!183481 () Bool)

(declare-fun c!459128 () Bool)

(declare-fun lt!1012357 () Conc!10458)

(declare-fun call!183490 () Conc!10458)

(declare-fun call!183491 () Conc!10458)

(declare-fun <>!277 (Conc!10458 Conc!10458) Conc!10458)

(assert (=> bm!183481 (= call!183490 (<>!277 (ite c!459132 (c!459093 (charsOf!3120 t1!27)) (ite c!459127 (ite (or c!459128 c!459125) (left!25404 (c!459093 (charsOf!3120 t1!27))) call!183491) (ite c!459131 call!183489 (ite c!459126 lt!1012358 (right!25734 (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))) (ite c!459132 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))) (ite c!459127 (ite c!459128 call!183478 (ite c!459125 call!183491 lt!1012357)) (ite c!459131 (right!25734 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) (ite c!459126 (right!25734 (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) (right!25734 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))))))

(declare-fun bm!183482 () Bool)

(assert (=> bm!183482 (= call!183477 (++!8123 (ite c!459127 (ite c!459128 (right!25734 (c!459093 (charsOf!3120 t1!27))) (right!25734 (right!25734 (c!459093 (charsOf!3120 t1!27))))) (c!459093 (charsOf!3120 t1!27))) (ite c!459127 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))) (ite c!459131 (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) (left!25404 (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))))

(declare-fun b!2844958 () Bool)

(assert (=> b!2844958 (= e!1802536 call!183490)))

(declare-fun b!2844959 () Bool)

(declare-fun res!1183349 () Bool)

(assert (=> b!2844959 (=> (not res!1183349) (not e!1802540))))

(assert (=> b!2844959 (= res!1183349 (>= (height!1515 lt!1012356) (max!0 (height!1515 (c!459093 (charsOf!3120 t1!27))) (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun bm!183483 () Bool)

(assert (=> bm!183483 (= call!183489 call!183477)))

(declare-fun b!2844960 () Bool)

(declare-fun e!1802537 () Conc!10458)

(assert (=> b!2844960 (= e!1802537 e!1802533)))

(declare-fun c!459129 () Bool)

(assert (=> b!2844960 (= c!459129 (= (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))) Empty!10458))))

(declare-fun b!2844961 () Bool)

(declare-fun call!183486 () Int)

(assert (=> b!2844961 (= c!459131 (>= call!183486 call!183483))))

(assert (=> b!2844961 (= e!1802535 e!1802534)))

(declare-fun b!2844962 () Bool)

(declare-fun res!1183351 () Bool)

(assert (=> b!2844962 (=> (not res!1183351) (not e!1802540))))

(assert (=> b!2844962 (= res!1183351 (isBalanced!3153 lt!1012356))))

(declare-fun b!2844963 () Bool)

(assert (=> b!2844963 (= c!459128 (>= call!183481 call!183484))))

(assert (=> b!2844963 (= e!1802535 e!1802539)))

(declare-fun bm!183484 () Bool)

(assert (=> bm!183484 (= call!183479 (<>!277 (ite c!459127 (ite c!459125 (left!25404 (right!25734 (c!459093 (charsOf!3120 t1!27)))) (left!25404 (c!459093 (charsOf!3120 t1!27)))) (ite c!459126 call!183480 lt!1012358)) (ite c!459127 (ite c!459125 lt!1012357 (left!25404 (right!25734 (c!459093 (charsOf!3120 t1!27))))) (ite c!459126 (right!25734 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) call!183480))))))

(declare-fun bm!183485 () Bool)

(assert (=> bm!183485 (= call!183481 (height!1515 (ite c!459127 (left!25404 (c!459093 (charsOf!3120 t1!27))) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun bm!183486 () Bool)

(assert (=> bm!183486 (= call!183486 (height!1515 (ite c!459127 lt!1012357 (right!25734 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun b!2844964 () Bool)

(declare-fun e!1802542 () Bool)

(assert (=> b!2844964 (= e!1802542 (isBalanced!3153 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))

(declare-fun b!2844965 () Bool)

(assert (=> b!2844965 (= e!1802539 e!1802538)))

(assert (=> b!2844965 (= lt!1012357 call!183478)))

(assert (=> b!2844965 (= c!459125 (= call!183486 (- call!183483 3)))))

(declare-fun b!2844966 () Bool)

(assert (=> b!2844966 (= e!1802537 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))

(declare-fun b!2844967 () Bool)

(assert (=> b!2844967 (= e!1802538 call!183492)))

(declare-fun b!2844968 () Bool)

(assert (=> b!2844968 (= e!1802541 call!183482)))

(declare-fun bm!183477 () Bool)

(assert (=> bm!183477 (= call!183491 call!183479)))

(declare-fun d!825001 () Bool)

(assert (=> d!825001 e!1802540))

(declare-fun res!1183350 () Bool)

(assert (=> d!825001 (=> (not res!1183350) (not e!1802540))))

(assert (=> d!825001 (= res!1183350 (appendAssocInst!719 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))

(assert (=> d!825001 (= lt!1012356 e!1802537)))

(declare-fun c!459130 () Bool)

(assert (=> d!825001 (= c!459130 (= (c!459093 (charsOf!3120 t1!27)) Empty!10458))))

(assert (=> d!825001 e!1802542))

(declare-fun res!1183347 () Bool)

(assert (=> d!825001 (=> (not res!1183347) (not e!1802542))))

(assert (=> d!825001 (= res!1183347 (isBalanced!3153 (c!459093 (charsOf!3120 t1!27))))))

(assert (=> d!825001 (= (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) lt!1012356)))

(declare-fun bm!183487 () Bool)

(assert (=> bm!183487 (= call!183487 call!183490)))

(declare-fun b!2844969 () Bool)

(assert (=> b!2844969 (= c!459132 (and (<= (- 1) lt!1012359) (<= lt!1012359 1)))))

(assert (=> b!2844969 (= lt!1012359 (- (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) (height!1515 (c!459093 (charsOf!3120 t1!27)))))))

(assert (=> b!2844969 (= e!1802533 e!1802536)))

(assert (= (and d!825001 res!1183347) b!2844964))

(assert (= (and d!825001 c!459130) b!2844966))

(assert (= (and d!825001 (not c!459130)) b!2844960))

(assert (= (and b!2844960 c!459129) b!2844952))

(assert (= (and b!2844960 (not c!459129)) b!2844969))

(assert (= (and b!2844969 c!459132) b!2844958))

(assert (= (and b!2844969 (not c!459132)) b!2844955))

(assert (= (and b!2844955 c!459127) b!2844963))

(assert (= (and b!2844955 (not c!459127)) b!2844961))

(assert (= (and b!2844963 c!459128) b!2844956))

(assert (= (and b!2844963 (not c!459128)) b!2844965))

(assert (= (and b!2844965 c!459125) b!2844953))

(assert (= (and b!2844965 (not c!459125)) b!2844967))

(assert (= (or b!2844953 b!2844967) bm!183477))

(assert (= (or b!2844953 b!2844967) bm!183478))

(assert (= (or b!2844956 b!2844965) bm!183480))

(assert (= (or b!2844956 bm!183478) bm!183472))

(assert (= (and b!2844961 c!459131) b!2844954))

(assert (= (and b!2844961 (not c!459131)) b!2844951))

(assert (= (and b!2844951 c!459126) b!2844950))

(assert (= (and b!2844951 (not c!459126)) b!2844968))

(assert (= (or b!2844950 b!2844968) bm!183473))

(assert (= (or b!2844950 b!2844968) bm!183479))

(assert (= (or b!2844954 b!2844951) bm!183483))

(assert (= (or b!2844954 bm!183473) bm!183474))

(assert (= (or bm!183477 bm!183479) bm!183484))

(assert (= (or bm!183472 bm!183474) bm!183487))

(assert (= (or b!2844963 b!2844951) bm!183476))

(assert (= (or b!2844965 b!2844961) bm!183475))

(assert (= (or bm!183480 bm!183483) bm!183482))

(assert (= (or b!2844963 b!2844951) bm!183485))

(assert (= (or b!2844965 b!2844961) bm!183486))

(assert (= (or b!2844958 bm!183487) bm!183481))

(assert (= (and d!825001 res!1183350) b!2844962))

(assert (= (and b!2844962 res!1183351) b!2844949))

(assert (= (and b!2844949 res!1183348) b!2844959))

(assert (= (and b!2844959 res!1183349) b!2844957))

(assert (=> d!825001 m!3272569))

(declare-fun m!3272840 () Bool)

(assert (=> d!825001 m!3272840))

(declare-fun m!3272842 () Bool)

(assert (=> b!2844959 m!3272842))

(assert (=> b!2844959 m!3272577))

(assert (=> b!2844959 m!3272579))

(assert (=> b!2844959 m!3272577))

(assert (=> b!2844959 m!3272579))

(assert (=> b!2844959 m!3272581))

(declare-fun m!3272844 () Bool)

(assert (=> bm!183475 m!3272844))

(declare-fun m!3272846 () Bool)

(assert (=> bm!183484 m!3272846))

(declare-fun m!3272848 () Bool)

(assert (=> bm!183482 m!3272848))

(declare-fun m!3272850 () Bool)

(assert (=> bm!183476 m!3272850))

(declare-fun m!3272852 () Bool)

(assert (=> b!2844957 m!3272852))

(assert (=> b!2844957 m!3272765))

(assert (=> b!2844957 m!3272767))

(assert (=> b!2844957 m!3272765))

(assert (=> b!2844957 m!3272767))

(declare-fun m!3272854 () Bool)

(assert (=> b!2844957 m!3272854))

(declare-fun m!3272856 () Bool)

(assert (=> bm!183486 m!3272856))

(declare-fun m!3272858 () Bool)

(assert (=> bm!183481 m!3272858))

(assert (=> b!2844969 m!3272579))

(assert (=> b!2844969 m!3272577))

(declare-fun m!3272860 () Bool)

(assert (=> bm!183485 m!3272860))

(declare-fun m!3272862 () Bool)

(assert (=> b!2844962 m!3272862))

(assert (=> b!2844949 m!3272842))

(assert (=> b!2844949 m!3272577))

(assert (=> b!2844949 m!3272579))

(assert (=> b!2844949 m!3272577))

(assert (=> b!2844949 m!3272579))

(assert (=> b!2844949 m!3272581))

(declare-fun m!3272864 () Bool)

(assert (=> b!2844964 m!3272864))

(assert (=> b!2844741 d!825001))

(declare-fun d!825003 () Bool)

(assert (=> d!825003 (= (height!1515 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) (ite ((_ is Empty!10458) (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) 0 (ite ((_ is Leaf!15913) (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) 1 (cheight!10669 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))))

(assert (=> b!2844741 d!825003))

(declare-fun d!825005 () Bool)

(assert (=> d!825005 (= (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) (ite ((_ is Empty!10458) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) 0 (ite ((_ is Leaf!15913) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) 1 (cheight!10669 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(assert (=> b!2844741 d!825005))

(declare-fun d!825007 () Bool)

(assert (=> d!825007 (= (max!0 (height!1515 (c!459093 (charsOf!3120 t1!27))) (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) (ite (< (height!1515 (c!459093 (charsOf!3120 t1!27))) (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) (height!1515 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) (height!1515 (c!459093 (charsOf!3120 t1!27)))))))

(assert (=> b!2844741 d!825007))

(declare-fun d!825009 () Bool)

(assert (=> d!825009 (= (isEmpty!18566 (originalCharacters!5804 t2!27)) ((_ is Nil!33724) (originalCharacters!5804 t2!27)))))

(assert (=> d!824913 d!825009))

(declare-fun d!825011 () Bool)

(assert (=> d!825011 true))

(declare-fun lambda!104401 () Int)

(declare-fun order!18055 () Int)

(declare-fun dynLambda!14200 (Int Int) Int)

(assert (=> d!825011 (< (dynLambda!14199 order!18053 (toValue!7126 (transformation!5072 (rule!7500 t1!27)))) (dynLambda!14200 order!18055 lambda!104401))))

(declare-fun Forall2!848 (Int) Bool)

(assert (=> d!825011 (= (equivClasses!2015 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (toValue!7126 (transformation!5072 (rule!7500 t1!27)))) (Forall2!848 lambda!104401))))

(declare-fun bs!519242 () Bool)

(assert (= bs!519242 d!825011))

(declare-fun m!3272866 () Bool)

(assert (=> bs!519242 m!3272866))

(assert (=> b!2844751 d!825011))

(declare-fun d!825013 () Bool)

(declare-fun lt!1012360 () Bool)

(assert (=> d!825013 (= lt!1012360 (isEmpty!18566 (list!12564 (_2!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27)))))))))

(assert (=> d!825013 (= lt!1012360 (isEmpty!18567 (c!459093 (_2!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27)))))))))

(assert (=> d!825013 (= (isEmpty!18565 (_2!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27))))) lt!1012360)))

(declare-fun bs!519243 () Bool)

(assert (= bs!519243 d!825013))

(declare-fun m!3272868 () Bool)

(assert (=> bs!519243 m!3272868))

(assert (=> bs!519243 m!3272868))

(declare-fun m!3272870 () Bool)

(assert (=> bs!519243 m!3272870))

(declare-fun m!3272872 () Bool)

(assert (=> bs!519243 m!3272872))

(assert (=> b!2844754 d!825013))

(declare-fun e!1802553 () Bool)

(declare-fun lt!1012363 () tuple2!33600)

(declare-fun b!2844984 () Bool)

(declare-datatypes ((tuple2!33602 0))(
  ( (tuple2!33603 (_1!19918 List!33851) (_2!19918 List!33848)) )
))
(declare-fun lexList!1265 (LexerInterface!4661 List!33849 List!33848) tuple2!33602)

(assert (=> b!2844984 (= e!1802553 (= (list!12564 (_2!19917 lt!1012363)) (_2!19918 (lexList!1265 thiss!11361 rules!1139 (list!12564 (print!1750 thiss!11361 (singletonSeq!2188 t1!27)))))))))

(declare-fun b!2844985 () Bool)

(declare-fun e!1802551 () Bool)

(assert (=> b!2844985 (= e!1802551 (= (_2!19917 lt!1012363) (print!1750 thiss!11361 (singletonSeq!2188 t1!27))))))

(declare-fun b!2844986 () Bool)

(declare-fun e!1802552 () Bool)

(declare-fun isEmpty!18568 (BalanceConc!20556) Bool)

(assert (=> b!2844986 (= e!1802552 (not (isEmpty!18568 (_1!19917 lt!1012363))))))

(declare-fun b!2844987 () Bool)

(declare-fun res!1183360 () Bool)

(assert (=> b!2844987 (=> (not res!1183360) (not e!1802553))))

(assert (=> b!2844987 (= res!1183360 (= (list!12563 (_1!19917 lt!1012363)) (_1!19918 (lexList!1265 thiss!11361 rules!1139 (list!12564 (print!1750 thiss!11361 (singletonSeq!2188 t1!27)))))))))

(declare-fun d!825015 () Bool)

(assert (=> d!825015 e!1802553))

(declare-fun res!1183362 () Bool)

(assert (=> d!825015 (=> (not res!1183362) (not e!1802553))))

(assert (=> d!825015 (= res!1183362 e!1802551)))

(declare-fun c!459136 () Bool)

(assert (=> d!825015 (= c!459136 (> (size!26199 (_1!19917 lt!1012363)) 0))))

(declare-fun lexTailRecV2!903 (LexerInterface!4661 List!33849 BalanceConc!20554 BalanceConc!20554 BalanceConc!20554 BalanceConc!20556) tuple2!33600)

(assert (=> d!825015 (= lt!1012363 (lexTailRecV2!903 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27)) (BalanceConc!20555 Empty!10458) (print!1750 thiss!11361 (singletonSeq!2188 t1!27)) (BalanceConc!20557 Empty!10459)))))

(assert (=> d!825015 (= (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27))) lt!1012363)))

(declare-fun b!2844988 () Bool)

(assert (=> b!2844988 (= e!1802551 e!1802552)))

(declare-fun res!1183361 () Bool)

(assert (=> b!2844988 (= res!1183361 (< (size!26201 (_2!19917 lt!1012363)) (size!26201 (print!1750 thiss!11361 (singletonSeq!2188 t1!27)))))))

(assert (=> b!2844988 (=> (not res!1183361) (not e!1802552))))

(assert (= (and d!825015 c!459136) b!2844988))

(assert (= (and d!825015 (not c!459136)) b!2844985))

(assert (= (and b!2844988 res!1183361) b!2844986))

(assert (= (and d!825015 res!1183362) b!2844987))

(assert (= (and b!2844987 res!1183360) b!2844984))

(declare-fun m!3272874 () Bool)

(assert (=> b!2844988 m!3272874))

(assert (=> b!2844988 m!3272655))

(declare-fun m!3272876 () Bool)

(assert (=> b!2844988 m!3272876))

(declare-fun m!3272878 () Bool)

(assert (=> d!825015 m!3272878))

(assert (=> d!825015 m!3272655))

(assert (=> d!825015 m!3272655))

(declare-fun m!3272880 () Bool)

(assert (=> d!825015 m!3272880))

(declare-fun m!3272882 () Bool)

(assert (=> b!2844986 m!3272882))

(declare-fun m!3272884 () Bool)

(assert (=> b!2844987 m!3272884))

(assert (=> b!2844987 m!3272655))

(declare-fun m!3272886 () Bool)

(assert (=> b!2844987 m!3272886))

(assert (=> b!2844987 m!3272886))

(declare-fun m!3272888 () Bool)

(assert (=> b!2844987 m!3272888))

(declare-fun m!3272890 () Bool)

(assert (=> b!2844984 m!3272890))

(assert (=> b!2844984 m!3272655))

(assert (=> b!2844984 m!3272886))

(assert (=> b!2844984 m!3272886))

(assert (=> b!2844984 m!3272888))

(assert (=> b!2844754 d!825015))

(declare-fun d!825017 () Bool)

(declare-fun lt!1012366 () BalanceConc!20554)

(declare-fun printList!1239 (LexerInterface!4661 List!33851) List!33848)

(assert (=> d!825017 (= (list!12564 lt!1012366) (printList!1239 thiss!11361 (list!12563 (singletonSeq!2188 t1!27))))))

(declare-fun printTailRec!1182 (LexerInterface!4661 BalanceConc!20556 Int BalanceConc!20554) BalanceConc!20554)

(assert (=> d!825017 (= lt!1012366 (printTailRec!1182 thiss!11361 (singletonSeq!2188 t1!27) 0 (BalanceConc!20555 Empty!10458)))))

(assert (=> d!825017 (= (print!1750 thiss!11361 (singletonSeq!2188 t1!27)) lt!1012366)))

(declare-fun bs!519244 () Bool)

(assert (= bs!519244 d!825017))

(declare-fun m!3272892 () Bool)

(assert (=> bs!519244 m!3272892))

(assert (=> bs!519244 m!3272653))

(assert (=> bs!519244 m!3272659))

(assert (=> bs!519244 m!3272659))

(declare-fun m!3272894 () Bool)

(assert (=> bs!519244 m!3272894))

(assert (=> bs!519244 m!3272653))

(declare-fun m!3272896 () Bool)

(assert (=> bs!519244 m!3272896))

(assert (=> b!2844754 d!825017))

(declare-fun d!825019 () Bool)

(declare-fun e!1802556 () Bool)

(assert (=> d!825019 e!1802556))

(declare-fun res!1183365 () Bool)

(assert (=> d!825019 (=> (not res!1183365) (not e!1802556))))

(declare-fun lt!1012369 () BalanceConc!20556)

(assert (=> d!825019 (= res!1183365 (= (list!12563 lt!1012369) (Cons!33727 t1!27 Nil!33727)))))

(declare-fun singleton!964 (Token!9546) BalanceConc!20556)

(assert (=> d!825019 (= lt!1012369 (singleton!964 t1!27))))

(assert (=> d!825019 (= (singletonSeq!2188 t1!27) lt!1012369)))

(declare-fun b!2844991 () Bool)

(declare-fun isBalanced!3154 (Conc!10459) Bool)

(assert (=> b!2844991 (= e!1802556 (isBalanced!3154 (c!459105 lt!1012369)))))

(assert (= (and d!825019 res!1183365) b!2844991))

(declare-fun m!3272898 () Bool)

(assert (=> d!825019 m!3272898))

(declare-fun m!3272900 () Bool)

(assert (=> d!825019 m!3272900))

(declare-fun m!3272902 () Bool)

(assert (=> b!2844991 m!3272902))

(assert (=> b!2844754 d!825019))

(declare-fun d!825021 () Bool)

(assert (=> d!825021 (= (inv!45727 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27))) (isBalanced!3153 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))))))

(declare-fun bs!519245 () Bool)

(assert (= bs!519245 d!825021))

(declare-fun m!3272904 () Bool)

(assert (=> bs!519245 m!3272904))

(assert (=> tb!155075 d!825021))

(declare-fun bs!519246 () Bool)

(declare-fun d!825023 () Bool)

(assert (= bs!519246 (and d!825023 d!825011)))

(declare-fun lambda!104402 () Int)

(assert (=> bs!519246 (= (= (toValue!7126 (transformation!5072 (rule!7500 t2!27))) (toValue!7126 (transformation!5072 (rule!7500 t1!27)))) (= lambda!104402 lambda!104401))))

(assert (=> d!825023 true))

(assert (=> d!825023 (< (dynLambda!14199 order!18053 (toValue!7126 (transformation!5072 (rule!7500 t2!27)))) (dynLambda!14200 order!18055 lambda!104402))))

(assert (=> d!825023 (= (equivClasses!2015 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toValue!7126 (transformation!5072 (rule!7500 t2!27)))) (Forall2!848 lambda!104402))))

(declare-fun bs!519247 () Bool)

(assert (= bs!519247 d!825023))

(declare-fun m!3272906 () Bool)

(assert (=> bs!519247 m!3272906))

(assert (=> b!2844750 d!825023))

(declare-fun d!825025 () Bool)

(assert (=> d!825025 (= (list!12564 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27))) (list!12565 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))))))

(declare-fun bs!519248 () Bool)

(assert (= bs!519248 d!825025))

(declare-fun m!3272908 () Bool)

(assert (=> bs!519248 m!3272908))

(assert (=> b!2844729 d!825025))

(declare-fun d!825027 () Bool)

(declare-fun lt!1012370 () Bool)

(assert (=> d!825027 (= lt!1012370 (isEmpty!18566 (list!12564 (_2!19917 lt!1012251))))))

(assert (=> d!825027 (= lt!1012370 (isEmpty!18567 (c!459093 (_2!19917 lt!1012251))))))

(assert (=> d!825027 (= (isEmpty!18565 (_2!19917 lt!1012251)) lt!1012370)))

(declare-fun bs!519249 () Bool)

(assert (= bs!519249 d!825027))

(declare-fun m!3272910 () Bool)

(assert (=> bs!519249 m!3272910))

(assert (=> bs!519249 m!3272910))

(declare-fun m!3272912 () Bool)

(assert (=> bs!519249 m!3272912))

(declare-fun m!3272914 () Bool)

(assert (=> bs!519249 m!3272914))

(assert (=> b!2844710 d!825027))

(declare-fun b!2845004 () Bool)

(declare-fun res!1183378 () Bool)

(declare-fun e!1802562 () Bool)

(assert (=> b!2845004 (=> (not res!1183378) (not e!1802562))))

(assert (=> b!2845004 (= res!1183378 (not (isEmpty!18567 (left!25404 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))))

(declare-fun b!2845005 () Bool)

(declare-fun res!1183383 () Bool)

(assert (=> b!2845005 (=> (not res!1183383) (not e!1802562))))

(assert (=> b!2845005 (= res!1183383 (isBalanced!3153 (left!25404 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun b!2845006 () Bool)

(declare-fun res!1183379 () Bool)

(assert (=> b!2845006 (=> (not res!1183379) (not e!1802562))))

(assert (=> b!2845006 (= res!1183379 (isBalanced!3153 (right!25734 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun b!2845007 () Bool)

(declare-fun e!1802561 () Bool)

(assert (=> b!2845007 (= e!1802561 e!1802562)))

(declare-fun res!1183381 () Bool)

(assert (=> b!2845007 (=> (not res!1183381) (not e!1802562))))

(assert (=> b!2845007 (= res!1183381 (<= (- 1) (- (height!1515 (left!25404 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))) (height!1515 (right!25734 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))))

(declare-fun d!825029 () Bool)

(declare-fun res!1183382 () Bool)

(assert (=> d!825029 (=> res!1183382 e!1802561)))

(assert (=> d!825029 (= res!1183382 (not ((_ is Node!10458) (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(assert (=> d!825029 (= (isBalanced!3153 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) e!1802561)))

(declare-fun b!2845008 () Bool)

(declare-fun res!1183380 () Bool)

(assert (=> b!2845008 (=> (not res!1183380) (not e!1802562))))

(assert (=> b!2845008 (= res!1183380 (<= (- (height!1515 (left!25404 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))) (height!1515 (right!25734 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))) 1))))

(declare-fun b!2845009 () Bool)

(assert (=> b!2845009 (= e!1802562 (not (isEmpty!18567 (right!25734 (++!8123 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))))

(assert (= (and d!825029 (not res!1183382)) b!2845007))

(assert (= (and b!2845007 res!1183381) b!2845008))

(assert (= (and b!2845008 res!1183380) b!2845005))

(assert (= (and b!2845005 res!1183383) b!2845006))

(assert (= (and b!2845006 res!1183379) b!2845004))

(assert (= (and b!2845004 res!1183378) b!2845009))

(declare-fun m!3272916 () Bool)

(assert (=> b!2845004 m!3272916))

(declare-fun m!3272918 () Bool)

(assert (=> b!2845008 m!3272918))

(declare-fun m!3272920 () Bool)

(assert (=> b!2845008 m!3272920))

(declare-fun m!3272922 () Bool)

(assert (=> b!2845005 m!3272922))

(assert (=> b!2845007 m!3272918))

(assert (=> b!2845007 m!3272920))

(declare-fun m!3272924 () Bool)

(assert (=> b!2845006 m!3272924))

(declare-fun m!3272926 () Bool)

(assert (=> b!2845009 m!3272926))

(assert (=> b!2844740 d!825029))

(assert (=> b!2844740 d!825001))

(declare-fun d!825031 () Bool)

(declare-fun charsToBigInt!1 (List!33847) Int)

(assert (=> d!825031 (= (inv!17 (value!162954 t2!27)) (= (charsToBigInt!1 (text!37562 (value!162954 t2!27))) (value!162946 (value!162954 t2!27))))))

(declare-fun bs!519250 () Bool)

(assert (= bs!519250 d!825031))

(declare-fun m!3272928 () Bool)

(assert (=> bs!519250 m!3272928))

(assert (=> b!2844691 d!825031))

(declare-fun d!825033 () Bool)

(declare-fun res!1183388 () Bool)

(declare-fun e!1802567 () Bool)

(assert (=> d!825033 (=> res!1183388 e!1802567)))

(assert (=> d!825033 (= res!1183388 ((_ is Nil!33725) rules!1139))))

(assert (=> d!825033 (= (noDuplicateTag!1881 thiss!11361 rules!1139 Nil!33726) e!1802567)))

(declare-fun b!2845014 () Bool)

(declare-fun e!1802568 () Bool)

(assert (=> b!2845014 (= e!1802567 e!1802568)))

(declare-fun res!1183389 () Bool)

(assert (=> b!2845014 (=> (not res!1183389) (not e!1802568))))

(declare-fun contains!6119 (List!33850 String!37076) Bool)

(assert (=> b!2845014 (= res!1183389 (not (contains!6119 Nil!33726 (tag!5576 (h!39145 rules!1139)))))))

(declare-fun b!2845015 () Bool)

(assert (=> b!2845015 (= e!1802568 (noDuplicateTag!1881 thiss!11361 (t!232844 rules!1139) (Cons!33726 (tag!5576 (h!39145 rules!1139)) Nil!33726)))))

(assert (= (and d!825033 (not res!1183388)) b!2845014))

(assert (= (and b!2845014 res!1183389) b!2845015))

(declare-fun m!3272930 () Bool)

(assert (=> b!2845014 m!3272930))

(declare-fun m!3272932 () Bool)

(assert (=> b!2845015 m!3272932))

(assert (=> b!2844694 d!825033))

(declare-fun bs!519251 () Bool)

(declare-fun d!825035 () Bool)

(assert (= bs!519251 (and d!825035 d!824963)))

(declare-fun lambda!104403 () Int)

(assert (=> bs!519251 (= lambda!104403 lambda!104391)))

(declare-fun bs!519252 () Bool)

(assert (= bs!519252 (and d!825035 d!824971)))

(assert (=> bs!519252 (= lambda!104403 lambda!104394)))

(declare-fun bs!519253 () Bool)

(assert (= bs!519253 (and d!825035 d!824965)))

(assert (=> bs!519253 (= lambda!104403 lambda!104392)))

(declare-fun bs!519254 () Bool)

(assert (= bs!519254 (and d!825035 d!824993)))

(assert (=> bs!519254 (= lambda!104403 lambda!104395)))

(declare-fun bs!519255 () Bool)

(assert (= bs!519255 (and d!825035 d!824961)))

(assert (=> bs!519255 (= lambda!104403 lambda!104390)))

(declare-fun bs!519256 () Bool)

(assert (= bs!519256 (and d!825035 d!824959)))

(assert (=> bs!519256 (= lambda!104403 lambda!104389)))

(declare-fun bs!519257 () Bool)

(assert (= bs!519257 (and d!825035 d!824969)))

(assert (=> bs!519257 (= lambda!104403 lambda!104393)))

(declare-fun bs!519258 () Bool)

(assert (= bs!519258 (and d!825035 d!824955)))

(assert (=> bs!519258 (= lambda!104403 lambda!104385)))

(assert (=> d!825035 (= (inv!45728 setElem!24851) (forall!6925 (exprs!2991 setElem!24851) lambda!104403))))

(declare-fun bs!519259 () Bool)

(assert (= bs!519259 d!825035))

(declare-fun m!3272934 () Bool)

(assert (=> bs!519259 m!3272934))

(assert (=> setNonEmpty!24851 d!825035))

(declare-fun bs!519260 () Bool)

(declare-fun d!825037 () Bool)

(assert (= bs!519260 (and d!825037 d!825011)))

(declare-fun lambda!104404 () Int)

(assert (=> bs!519260 (= (= (toValue!7126 (transformation!5072 (h!39145 rules!1139))) (toValue!7126 (transformation!5072 (rule!7500 t1!27)))) (= lambda!104404 lambda!104401))))

(declare-fun bs!519261 () Bool)

(assert (= bs!519261 (and d!825037 d!825023)))

(assert (=> bs!519261 (= (= (toValue!7126 (transformation!5072 (h!39145 rules!1139))) (toValue!7126 (transformation!5072 (rule!7500 t2!27)))) (= lambda!104404 lambda!104402))))

(assert (=> d!825037 true))

(assert (=> d!825037 (< (dynLambda!14199 order!18053 (toValue!7126 (transformation!5072 (h!39145 rules!1139)))) (dynLambda!14200 order!18055 lambda!104404))))

(assert (=> d!825037 (= (equivClasses!2015 (toChars!6985 (transformation!5072 (h!39145 rules!1139))) (toValue!7126 (transformation!5072 (h!39145 rules!1139)))) (Forall2!848 lambda!104404))))

(declare-fun bs!519262 () Bool)

(assert (= bs!519262 d!825037))

(declare-fun m!3272936 () Bool)

(assert (=> bs!519262 m!3272936))

(assert (=> b!2844702 d!825037))

(declare-fun d!825039 () Bool)

(assert (=> d!825039 (= (isEmpty!18566 (list!12564 lt!1012244)) ((_ is Nil!33724) (list!12564 lt!1012244)))))

(assert (=> d!824949 d!825039))

(declare-fun d!825041 () Bool)

(assert (=> d!825041 (= (list!12564 lt!1012244) (list!12565 (c!459093 lt!1012244)))))

(declare-fun bs!519263 () Bool)

(assert (= bs!519263 d!825041))

(declare-fun m!3272938 () Bool)

(assert (=> bs!519263 m!3272938))

(assert (=> d!824949 d!825041))

(declare-fun d!825043 () Bool)

(declare-fun lt!1012373 () Bool)

(assert (=> d!825043 (= lt!1012373 (isEmpty!18566 (list!12565 (c!459093 lt!1012244))))))

(assert (=> d!825043 (= lt!1012373 (= (size!26202 (c!459093 lt!1012244)) 0))))

(assert (=> d!825043 (= (isEmpty!18567 (c!459093 lt!1012244)) lt!1012373)))

(declare-fun bs!519264 () Bool)

(assert (= bs!519264 d!825043))

(assert (=> bs!519264 m!3272938))

(assert (=> bs!519264 m!3272938))

(declare-fun m!3272940 () Bool)

(assert (=> bs!519264 m!3272940))

(assert (=> bs!519264 m!3272741))

(assert (=> d!824949 d!825043))

(declare-fun d!825045 () Bool)

(assert (=> d!825045 (= (inv!17 (value!162954 t1!27)) (= (charsToBigInt!1 (text!37562 (value!162954 t1!27))) (value!162946 (value!162954 t1!27))))))

(declare-fun bs!519265 () Bool)

(assert (= bs!519265 d!825045))

(declare-fun m!3272942 () Bool)

(assert (=> bs!519265 m!3272942))

(assert (=> b!2844699 d!825045))

(declare-fun d!825047 () Bool)

(assert (=> d!825047 (= (isEmpty!18566 (originalCharacters!5804 t1!27)) ((_ is Nil!33724) (originalCharacters!5804 t1!27)))))

(assert (=> d!824915 d!825047))

(declare-fun d!825049 () Bool)

(assert (=> d!825049 (= (inv!45727 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27))) (isBalanced!3153 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))))))

(declare-fun bs!519266 () Bool)

(assert (= bs!519266 d!825049))

(declare-fun m!3272944 () Bool)

(assert (=> bs!519266 m!3272944))

(assert (=> tb!155069 d!825049))

(declare-fun b!2845016 () Bool)

(declare-fun res!1183390 () Bool)

(declare-fun e!1802570 () Bool)

(assert (=> b!2845016 (=> (not res!1183390) (not e!1802570))))

(assert (=> b!2845016 (= res!1183390 (not (isEmpty!18567 (left!25404 (c!459093 lt!1012296)))))))

(declare-fun b!2845017 () Bool)

(declare-fun res!1183395 () Bool)

(assert (=> b!2845017 (=> (not res!1183395) (not e!1802570))))

(assert (=> b!2845017 (= res!1183395 (isBalanced!3153 (left!25404 (c!459093 lt!1012296))))))

(declare-fun b!2845018 () Bool)

(declare-fun res!1183391 () Bool)

(assert (=> b!2845018 (=> (not res!1183391) (not e!1802570))))

(assert (=> b!2845018 (= res!1183391 (isBalanced!3153 (right!25734 (c!459093 lt!1012296))))))

(declare-fun b!2845019 () Bool)

(declare-fun e!1802569 () Bool)

(assert (=> b!2845019 (= e!1802569 e!1802570)))

(declare-fun res!1183393 () Bool)

(assert (=> b!2845019 (=> (not res!1183393) (not e!1802570))))

(assert (=> b!2845019 (= res!1183393 (<= (- 1) (- (height!1515 (left!25404 (c!459093 lt!1012296))) (height!1515 (right!25734 (c!459093 lt!1012296))))))))

(declare-fun d!825051 () Bool)

(declare-fun res!1183394 () Bool)

(assert (=> d!825051 (=> res!1183394 e!1802569)))

(assert (=> d!825051 (= res!1183394 (not ((_ is Node!10458) (c!459093 lt!1012296))))))

(assert (=> d!825051 (= (isBalanced!3153 (c!459093 lt!1012296)) e!1802569)))

(declare-fun b!2845020 () Bool)

(declare-fun res!1183392 () Bool)

(assert (=> b!2845020 (=> (not res!1183392) (not e!1802570))))

(assert (=> b!2845020 (= res!1183392 (<= (- (height!1515 (left!25404 (c!459093 lt!1012296))) (height!1515 (right!25734 (c!459093 lt!1012296)))) 1))))

(declare-fun b!2845021 () Bool)

(assert (=> b!2845021 (= e!1802570 (not (isEmpty!18567 (right!25734 (c!459093 lt!1012296)))))))

(assert (= (and d!825051 (not res!1183394)) b!2845019))

(assert (= (and b!2845019 res!1183393) b!2845020))

(assert (= (and b!2845020 res!1183392) b!2845017))

(assert (= (and b!2845017 res!1183395) b!2845018))

(assert (= (and b!2845018 res!1183391) b!2845016))

(assert (= (and b!2845016 res!1183390) b!2845021))

(declare-fun m!3272946 () Bool)

(assert (=> b!2845016 m!3272946))

(declare-fun m!3272948 () Bool)

(assert (=> b!2845020 m!3272948))

(declare-fun m!3272950 () Bool)

(assert (=> b!2845020 m!3272950))

(declare-fun m!3272952 () Bool)

(assert (=> b!2845017 m!3272952))

(assert (=> b!2845019 m!3272948))

(assert (=> b!2845019 m!3272950))

(declare-fun m!3272954 () Bool)

(assert (=> b!2845018 m!3272954))

(declare-fun m!3272956 () Bool)

(assert (=> b!2845021 m!3272956))

(assert (=> b!2844746 d!825051))

(declare-fun d!825053 () Bool)

(assert (=> d!825053 true))

(declare-fun lt!1012376 () Bool)

(declare-fun rulesValidInductive!1737 (LexerInterface!4661 List!33849) Bool)

(assert (=> d!825053 (= lt!1012376 (rulesValidInductive!1737 thiss!11361 rules!1139))))

(declare-fun lambda!104407 () Int)

(declare-fun forall!6927 (List!33849 Int) Bool)

(assert (=> d!825053 (= lt!1012376 (forall!6927 rules!1139 lambda!104407))))

(assert (=> d!825053 (= (rulesValid!1885 thiss!11361 rules!1139) lt!1012376)))

(declare-fun bs!519267 () Bool)

(assert (= bs!519267 d!825053))

(declare-fun m!3272958 () Bool)

(assert (=> bs!519267 m!3272958))

(declare-fun m!3272960 () Bool)

(assert (=> bs!519267 m!3272960))

(assert (=> d!824899 d!825053))

(declare-fun d!825055 () Bool)

(declare-fun res!1183400 () Bool)

(declare-fun e!1802573 () Bool)

(assert (=> d!825055 (=> (not res!1183400) (not e!1802573))))

(declare-fun valid!3191 (MutableMap!4003) Bool)

(assert (=> d!825055 (= res!1183400 (valid!3191 (cache!4138 cacheUp!434)))))

(assert (=> d!825055 (= (validCacheMapUp!406 (cache!4138 cacheUp!434)) e!1802573)))

(declare-fun b!2845028 () Bool)

(declare-fun res!1183401 () Bool)

(assert (=> b!2845028 (=> (not res!1183401) (not e!1802573))))

(declare-fun invariantList!470 (List!33846) Bool)

(declare-datatypes ((ListMap!1281 0))(
  ( (ListMap!1282 (toList!1902 List!33846)) )
))
(declare-fun map!7239 (MutableMap!4003) ListMap!1281)

(assert (=> b!2845028 (= res!1183401 (invariantList!470 (toList!1902 (map!7239 (cache!4138 cacheUp!434)))))))

(declare-fun b!2845029 () Bool)

(declare-fun lambda!104410 () Int)

(declare-fun forall!6928 (List!33846 Int) Bool)

(assert (=> b!2845029 (= e!1802573 (forall!6928 (toList!1902 (map!7239 (cache!4138 cacheUp!434))) lambda!104410))))

(assert (= (and d!825055 res!1183400) b!2845028))

(assert (= (and b!2845028 res!1183401) b!2845029))

(declare-fun m!3272963 () Bool)

(assert (=> d!825055 m!3272963))

(declare-fun m!3272965 () Bool)

(assert (=> b!2845028 m!3272965))

(declare-fun m!3272967 () Bool)

(assert (=> b!2845028 m!3272967))

(assert (=> b!2845029 m!3272965))

(declare-fun m!3272969 () Bool)

(assert (=> b!2845029 m!3272969))

(assert (=> b!2844714 d!825055))

(declare-fun bs!519268 () Bool)

(declare-fun d!825057 () Bool)

(assert (= bs!519268 (and d!825057 d!824963)))

(declare-fun lambda!104411 () Int)

(assert (=> bs!519268 (= lambda!104411 lambda!104391)))

(declare-fun bs!519269 () Bool)

(assert (= bs!519269 (and d!825057 d!825035)))

(assert (=> bs!519269 (= lambda!104411 lambda!104403)))

(declare-fun bs!519270 () Bool)

(assert (= bs!519270 (and d!825057 d!824971)))

(assert (=> bs!519270 (= lambda!104411 lambda!104394)))

(declare-fun bs!519271 () Bool)

(assert (= bs!519271 (and d!825057 d!824965)))

(assert (=> bs!519271 (= lambda!104411 lambda!104392)))

(declare-fun bs!519272 () Bool)

(assert (= bs!519272 (and d!825057 d!824993)))

(assert (=> bs!519272 (= lambda!104411 lambda!104395)))

(declare-fun bs!519273 () Bool)

(assert (= bs!519273 (and d!825057 d!824961)))

(assert (=> bs!519273 (= lambda!104411 lambda!104390)))

(declare-fun bs!519274 () Bool)

(assert (= bs!519274 (and d!825057 d!824959)))

(assert (=> bs!519274 (= lambda!104411 lambda!104389)))

(declare-fun bs!519275 () Bool)

(assert (= bs!519275 (and d!825057 d!824969)))

(assert (=> bs!519275 (= lambda!104411 lambda!104393)))

(declare-fun bs!519276 () Bool)

(assert (= bs!519276 (and d!825057 d!824955)))

(assert (=> bs!519276 (= lambda!104411 lambda!104385)))

(assert (=> d!825057 (= (inv!45728 setElem!24838) (forall!6925 (exprs!2991 setElem!24838) lambda!104411))))

(declare-fun bs!519277 () Bool)

(assert (= bs!519277 d!825057))

(declare-fun m!3272971 () Bool)

(assert (=> bs!519277 m!3272971))

(assert (=> setNonEmpty!24838 d!825057))

(declare-fun bs!519278 () Bool)

(declare-fun d!825059 () Bool)

(assert (= bs!519278 (and d!825059 d!825057)))

(declare-fun lambda!104412 () Int)

(assert (=> bs!519278 (= lambda!104412 lambda!104411)))

(declare-fun bs!519279 () Bool)

(assert (= bs!519279 (and d!825059 d!824963)))

(assert (=> bs!519279 (= lambda!104412 lambda!104391)))

(declare-fun bs!519280 () Bool)

(assert (= bs!519280 (and d!825059 d!825035)))

(assert (=> bs!519280 (= lambda!104412 lambda!104403)))

(declare-fun bs!519281 () Bool)

(assert (= bs!519281 (and d!825059 d!824971)))

(assert (=> bs!519281 (= lambda!104412 lambda!104394)))

(declare-fun bs!519282 () Bool)

(assert (= bs!519282 (and d!825059 d!824965)))

(assert (=> bs!519282 (= lambda!104412 lambda!104392)))

(declare-fun bs!519283 () Bool)

(assert (= bs!519283 (and d!825059 d!824993)))

(assert (=> bs!519283 (= lambda!104412 lambda!104395)))

(declare-fun bs!519284 () Bool)

(assert (= bs!519284 (and d!825059 d!824961)))

(assert (=> bs!519284 (= lambda!104412 lambda!104390)))

(declare-fun bs!519285 () Bool)

(assert (= bs!519285 (and d!825059 d!824959)))

(assert (=> bs!519285 (= lambda!104412 lambda!104389)))

(declare-fun bs!519286 () Bool)

(assert (= bs!519286 (and d!825059 d!824969)))

(assert (=> bs!519286 (= lambda!104412 lambda!104393)))

(declare-fun bs!519287 () Bool)

(assert (= bs!519287 (and d!825059 d!824955)))

(assert (=> bs!519287 (= lambda!104412 lambda!104385)))

(assert (=> d!825059 (= (inv!45728 setElem!24843) (forall!6925 (exprs!2991 setElem!24843) lambda!104412))))

(declare-fun bs!519288 () Bool)

(assert (= bs!519288 d!825059))

(declare-fun m!3272973 () Bool)

(assert (=> bs!519288 m!3272973))

(assert (=> setNonEmpty!24843 d!825059))

(declare-fun bs!519289 () Bool)

(declare-fun d!825061 () Bool)

(assert (= bs!519289 (and d!825061 d!825057)))

(declare-fun lambda!104413 () Int)

(assert (=> bs!519289 (= lambda!104413 lambda!104411)))

(declare-fun bs!519290 () Bool)

(assert (= bs!519290 (and d!825061 d!824963)))

(assert (=> bs!519290 (= lambda!104413 lambda!104391)))

(declare-fun bs!519291 () Bool)

(assert (= bs!519291 (and d!825061 d!825035)))

(assert (=> bs!519291 (= lambda!104413 lambda!104403)))

(declare-fun bs!519292 () Bool)

(assert (= bs!519292 (and d!825061 d!824971)))

(assert (=> bs!519292 (= lambda!104413 lambda!104394)))

(declare-fun bs!519293 () Bool)

(assert (= bs!519293 (and d!825061 d!824965)))

(assert (=> bs!519293 (= lambda!104413 lambda!104392)))

(declare-fun bs!519294 () Bool)

(assert (= bs!519294 (and d!825061 d!824993)))

(assert (=> bs!519294 (= lambda!104413 lambda!104395)))

(declare-fun bs!519295 () Bool)

(assert (= bs!519295 (and d!825061 d!825059)))

(assert (=> bs!519295 (= lambda!104413 lambda!104412)))

(declare-fun bs!519296 () Bool)

(assert (= bs!519296 (and d!825061 d!824961)))

(assert (=> bs!519296 (= lambda!104413 lambda!104390)))

(declare-fun bs!519297 () Bool)

(assert (= bs!519297 (and d!825061 d!824959)))

(assert (=> bs!519297 (= lambda!104413 lambda!104389)))

(declare-fun bs!519298 () Bool)

(assert (= bs!519298 (and d!825061 d!824969)))

(assert (=> bs!519298 (= lambda!104413 lambda!104393)))

(declare-fun bs!519299 () Bool)

(assert (= bs!519299 (and d!825061 d!824955)))

(assert (=> bs!519299 (= lambda!104413 lambda!104385)))

(assert (=> d!825061 (= (inv!45728 setElem!24839) (forall!6925 (exprs!2991 setElem!24839) lambda!104413))))

(declare-fun bs!519300 () Bool)

(assert (= bs!519300 d!825061))

(declare-fun m!3272975 () Bool)

(assert (=> bs!519300 m!3272975))

(assert (=> setNonEmpty!24839 d!825061))

(declare-fun bs!519301 () Bool)

(declare-fun d!825063 () Bool)

(assert (= bs!519301 (and d!825063 d!824929)))

(declare-fun lambda!104418 () Int)

(assert (=> bs!519301 (= lambda!104418 lambda!104382)))

(declare-fun bs!519302 () Bool)

(assert (= bs!519302 (and d!825063 d!825057)))

(declare-fun lambda!104419 () Int)

(assert (=> bs!519302 (= lambda!104419 lambda!104411)))

(declare-fun bs!519303 () Bool)

(assert (= bs!519303 (and d!825063 d!824963)))

(assert (=> bs!519303 (= lambda!104419 lambda!104391)))

(declare-fun bs!519304 () Bool)

(assert (= bs!519304 (and d!825063 d!825035)))

(assert (=> bs!519304 (= lambda!104419 lambda!104403)))

(declare-fun bs!519305 () Bool)

(assert (= bs!519305 (and d!825063 d!824971)))

(assert (=> bs!519305 (= lambda!104419 lambda!104394)))

(declare-fun bs!519306 () Bool)

(assert (= bs!519306 (and d!825063 d!824965)))

(assert (=> bs!519306 (= lambda!104419 lambda!104392)))

(declare-fun bs!519307 () Bool)

(assert (= bs!519307 (and d!825063 d!824993)))

(assert (=> bs!519307 (= lambda!104419 lambda!104395)))

(declare-fun bs!519308 () Bool)

(assert (= bs!519308 (and d!825063 d!825059)))

(assert (=> bs!519308 (= lambda!104419 lambda!104412)))

(declare-fun bs!519309 () Bool)

(assert (= bs!519309 (and d!825063 d!824961)))

(assert (=> bs!519309 (= lambda!104419 lambda!104390)))

(declare-fun bs!519310 () Bool)

(assert (= bs!519310 (and d!825063 d!824959)))

(assert (=> bs!519310 (= lambda!104419 lambda!104389)))

(declare-fun bs!519311 () Bool)

(assert (= bs!519311 (and d!825063 d!824969)))

(assert (=> bs!519311 (= lambda!104419 lambda!104393)))

(declare-fun bs!519312 () Bool)

(assert (= bs!519312 (and d!825063 d!824955)))

(assert (=> bs!519312 (= lambda!104419 lambda!104385)))

(declare-fun bs!519313 () Bool)

(assert (= bs!519313 (and d!825063 d!825061)))

(assert (=> bs!519313 (= lambda!104419 lambda!104413)))

(assert (=> d!825063 (forall!6925 (map!7237 rules!1139 lambda!104418) lambda!104419)))

(declare-fun lt!1012381 () Unit!47519)

(declare-fun e!1802576 () Unit!47519)

(assert (=> d!825063 (= lt!1012381 e!1802576)))

(declare-fun c!459139 () Bool)

(assert (=> d!825063 (= c!459139 ((_ is Nil!33725) rules!1139))))

(assert (=> d!825063 (rulesValidInductive!1737 thiss!11361 rules!1139)))

(assert (=> d!825063 (= (lemma!567 rules!1139 thiss!11361 rules!1139) lt!1012381)))

(declare-fun b!2845034 () Bool)

(declare-fun Unit!47521 () Unit!47519)

(assert (=> b!2845034 (= e!1802576 Unit!47521)))

(declare-fun b!2845035 () Bool)

(declare-fun Unit!47522 () Unit!47519)

(assert (=> b!2845035 (= e!1802576 Unit!47522)))

(declare-fun lt!1012382 () Unit!47519)

(assert (=> b!2845035 (= lt!1012382 (lemma!567 rules!1139 thiss!11361 (t!232844 rules!1139)))))

(assert (= (and d!825063 c!459139) b!2845034))

(assert (= (and d!825063 (not c!459139)) b!2845035))

(declare-fun m!3272977 () Bool)

(assert (=> d!825063 m!3272977))

(assert (=> d!825063 m!3272977))

(declare-fun m!3272979 () Bool)

(assert (=> d!825063 m!3272979))

(assert (=> d!825063 m!3272958))

(declare-fun m!3272981 () Bool)

(assert (=> b!2845035 m!3272981))

(assert (=> d!824929 d!825063))

(declare-fun bs!519314 () Bool)

(declare-fun d!825065 () Bool)

(assert (= bs!519314 (and d!825065 d!825057)))

(declare-fun lambda!104422 () Int)

(assert (=> bs!519314 (= lambda!104422 lambda!104411)))

(declare-fun bs!519315 () Bool)

(assert (= bs!519315 (and d!825065 d!824963)))

(assert (=> bs!519315 (= lambda!104422 lambda!104391)))

(declare-fun bs!519316 () Bool)

(assert (= bs!519316 (and d!825065 d!825035)))

(assert (=> bs!519316 (= lambda!104422 lambda!104403)))

(declare-fun bs!519317 () Bool)

(assert (= bs!519317 (and d!825065 d!824971)))

(assert (=> bs!519317 (= lambda!104422 lambda!104394)))

(declare-fun bs!519318 () Bool)

(assert (= bs!519318 (and d!825065 d!824965)))

(assert (=> bs!519318 (= lambda!104422 lambda!104392)))

(declare-fun bs!519319 () Bool)

(assert (= bs!519319 (and d!825065 d!824993)))

(assert (=> bs!519319 (= lambda!104422 lambda!104395)))

(declare-fun bs!519320 () Bool)

(assert (= bs!519320 (and d!825065 d!825059)))

(assert (=> bs!519320 (= lambda!104422 lambda!104412)))

(declare-fun bs!519321 () Bool)

(assert (= bs!519321 (and d!825065 d!824961)))

(assert (=> bs!519321 (= lambda!104422 lambda!104390)))

(declare-fun bs!519322 () Bool)

(assert (= bs!519322 (and d!825065 d!824959)))

(assert (=> bs!519322 (= lambda!104422 lambda!104389)))

(declare-fun bs!519323 () Bool)

(assert (= bs!519323 (and d!825065 d!824969)))

(assert (=> bs!519323 (= lambda!104422 lambda!104393)))

(declare-fun bs!519324 () Bool)

(assert (= bs!519324 (and d!825065 d!824955)))

(assert (=> bs!519324 (= lambda!104422 lambda!104385)))

(declare-fun bs!519325 () Bool)

(assert (= bs!519325 (and d!825065 d!825061)))

(assert (=> bs!519325 (= lambda!104422 lambda!104413)))

(declare-fun bs!519326 () Bool)

(assert (= bs!519326 (and d!825065 d!825063)))

(assert (=> bs!519326 (= lambda!104422 lambda!104419)))

(declare-fun b!2845056 () Bool)

(declare-fun e!1802594 () Regex!8463)

(assert (=> b!2845056 (= e!1802594 EmptyLang!8463)))

(declare-fun b!2845057 () Bool)

(declare-fun e!1802590 () Bool)

(declare-fun isEmpty!18569 (List!33844) Bool)

(assert (=> b!2845057 (= e!1802590 (isEmpty!18569 (t!232839 (map!7237 rules!1139 lambda!104382))))))

(declare-fun b!2845058 () Bool)

(declare-fun e!1802592 () Regex!8463)

(assert (=> b!2845058 (= e!1802592 e!1802594)))

(declare-fun c!459150 () Bool)

(assert (=> b!2845058 (= c!459150 ((_ is Cons!33720) (map!7237 rules!1139 lambda!104382)))))

(declare-fun b!2845059 () Bool)

(declare-fun e!1802591 () Bool)

(declare-fun lt!1012385 () Regex!8463)

(declare-fun isEmptyLang!152 (Regex!8463) Bool)

(assert (=> b!2845059 (= e!1802591 (isEmptyLang!152 lt!1012385))))

(declare-fun e!1802589 () Bool)

(assert (=> d!825065 e!1802589))

(declare-fun res!1183407 () Bool)

(assert (=> d!825065 (=> (not res!1183407) (not e!1802589))))

(assert (=> d!825065 (= res!1183407 (validRegex!3356 lt!1012385))))

(assert (=> d!825065 (= lt!1012385 e!1802592)))

(declare-fun c!459148 () Bool)

(assert (=> d!825065 (= c!459148 e!1802590)))

(declare-fun res!1183406 () Bool)

(assert (=> d!825065 (=> (not res!1183406) (not e!1802590))))

(assert (=> d!825065 (= res!1183406 ((_ is Cons!33720) (map!7237 rules!1139 lambda!104382)))))

(assert (=> d!825065 (forall!6925 (map!7237 rules!1139 lambda!104382) lambda!104422)))

(assert (=> d!825065 (= (generalisedUnion!543 (map!7237 rules!1139 lambda!104382)) lt!1012385)))

(declare-fun b!2845060 () Bool)

(declare-fun e!1802593 () Bool)

(assert (=> b!2845060 (= e!1802591 e!1802593)))

(declare-fun c!459149 () Bool)

(declare-fun tail!4478 (List!33844) List!33844)

(assert (=> b!2845060 (= c!459149 (isEmpty!18569 (tail!4478 (map!7237 rules!1139 lambda!104382))))))

(declare-fun b!2845061 () Bool)

(assert (=> b!2845061 (= e!1802594 (Union!8463 (h!39140 (map!7237 rules!1139 lambda!104382)) (generalisedUnion!543 (t!232839 (map!7237 rules!1139 lambda!104382)))))))

(declare-fun b!2845062 () Bool)

(assert (=> b!2845062 (= e!1802592 (h!39140 (map!7237 rules!1139 lambda!104382)))))

(declare-fun b!2845063 () Bool)

(declare-fun isUnion!152 (Regex!8463) Bool)

(assert (=> b!2845063 (= e!1802593 (isUnion!152 lt!1012385))))

(declare-fun b!2845064 () Bool)

(assert (=> b!2845064 (= e!1802589 e!1802591)))

(declare-fun c!459151 () Bool)

(assert (=> b!2845064 (= c!459151 (isEmpty!18569 (map!7237 rules!1139 lambda!104382)))))

(declare-fun b!2845065 () Bool)

(declare-fun head!6253 (List!33844) Regex!8463)

(assert (=> b!2845065 (= e!1802593 (= lt!1012385 (head!6253 (map!7237 rules!1139 lambda!104382))))))

(assert (= (and d!825065 res!1183406) b!2845057))

(assert (= (and d!825065 c!459148) b!2845062))

(assert (= (and d!825065 (not c!459148)) b!2845058))

(assert (= (and b!2845058 c!459150) b!2845061))

(assert (= (and b!2845058 (not c!459150)) b!2845056))

(assert (= (and d!825065 res!1183407) b!2845064))

(assert (= (and b!2845064 c!459151) b!2845059))

(assert (= (and b!2845064 (not c!459151)) b!2845060))

(assert (= (and b!2845060 c!459149) b!2845065))

(assert (= (and b!2845060 (not c!459149)) b!2845063))

(declare-fun m!3272983 () Bool)

(assert (=> b!2845061 m!3272983))

(declare-fun m!3272985 () Bool)

(assert (=> b!2845057 m!3272985))

(declare-fun m!3272987 () Bool)

(assert (=> d!825065 m!3272987))

(assert (=> d!825065 m!3272621))

(declare-fun m!3272989 () Bool)

(assert (=> d!825065 m!3272989))

(assert (=> b!2845065 m!3272621))

(declare-fun m!3272991 () Bool)

(assert (=> b!2845065 m!3272991))

(assert (=> b!2845064 m!3272621))

(declare-fun m!3272993 () Bool)

(assert (=> b!2845064 m!3272993))

(declare-fun m!3272995 () Bool)

(assert (=> b!2845059 m!3272995))

(declare-fun m!3272997 () Bool)

(assert (=> b!2845063 m!3272997))

(assert (=> b!2845060 m!3272621))

(declare-fun m!3272999 () Bool)

(assert (=> b!2845060 m!3272999))

(assert (=> b!2845060 m!3272999))

(declare-fun m!3273001 () Bool)

(assert (=> b!2845060 m!3273001))

(assert (=> d!824929 d!825065))

(declare-fun d!825067 () Bool)

(declare-fun lt!1012388 () List!33844)

(declare-fun size!26203 (List!33844) Int)

(declare-fun size!26204 (List!33849) Int)

(assert (=> d!825067 (= (size!26203 lt!1012388) (size!26204 rules!1139))))

(declare-fun e!1802597 () List!33844)

(assert (=> d!825067 (= lt!1012388 e!1802597)))

(declare-fun c!459154 () Bool)

(assert (=> d!825067 (= c!459154 ((_ is Nil!33725) rules!1139))))

(assert (=> d!825067 (= (map!7237 rules!1139 lambda!104382) lt!1012388)))

(declare-fun b!2845070 () Bool)

(assert (=> b!2845070 (= e!1802597 Nil!33720)))

(declare-fun b!2845071 () Bool)

(declare-fun $colon$colon!583 (List!33844 Regex!8463) List!33844)

(declare-fun dynLambda!14201 (Int Rule!9944) Regex!8463)

(assert (=> b!2845071 (= e!1802597 ($colon$colon!583 (map!7237 (t!232844 rules!1139) lambda!104382) (dynLambda!14201 lambda!104382 (h!39145 rules!1139))))))

(assert (= (and d!825067 c!459154) b!2845070))

(assert (= (and d!825067 (not c!459154)) b!2845071))

(declare-fun b_lambda!85551 () Bool)

(assert (=> (not b_lambda!85551) (not b!2845071)))

(declare-fun m!3273003 () Bool)

(assert (=> d!825067 m!3273003))

(declare-fun m!3273005 () Bool)

(assert (=> d!825067 m!3273005))

(declare-fun m!3273007 () Bool)

(assert (=> b!2845071 m!3273007))

(declare-fun m!3273009 () Bool)

(assert (=> b!2845071 m!3273009))

(assert (=> b!2845071 m!3273007))

(assert (=> b!2845071 m!3273009))

(declare-fun m!3273011 () Bool)

(assert (=> b!2845071 m!3273011))

(assert (=> d!824929 d!825067))

(declare-fun bs!519327 () Bool)

(declare-fun d!825069 () Bool)

(assert (= bs!519327 (and d!825069 d!825057)))

(declare-fun lambda!104423 () Int)

(assert (=> bs!519327 (= lambda!104423 lambda!104411)))

(declare-fun bs!519328 () Bool)

(assert (= bs!519328 (and d!825069 d!824963)))

(assert (=> bs!519328 (= lambda!104423 lambda!104391)))

(declare-fun bs!519329 () Bool)

(assert (= bs!519329 (and d!825069 d!825035)))

(assert (=> bs!519329 (= lambda!104423 lambda!104403)))

(declare-fun bs!519330 () Bool)

(assert (= bs!519330 (and d!825069 d!824971)))

(assert (=> bs!519330 (= lambda!104423 lambda!104394)))

(declare-fun bs!519331 () Bool)

(assert (= bs!519331 (and d!825069 d!824965)))

(assert (=> bs!519331 (= lambda!104423 lambda!104392)))

(declare-fun bs!519332 () Bool)

(assert (= bs!519332 (and d!825069 d!824993)))

(assert (=> bs!519332 (= lambda!104423 lambda!104395)))

(declare-fun bs!519333 () Bool)

(assert (= bs!519333 (and d!825069 d!825059)))

(assert (=> bs!519333 (= lambda!104423 lambda!104412)))

(declare-fun bs!519334 () Bool)

(assert (= bs!519334 (and d!825069 d!825065)))

(assert (=> bs!519334 (= lambda!104423 lambda!104422)))

(declare-fun bs!519335 () Bool)

(assert (= bs!519335 (and d!825069 d!824961)))

(assert (=> bs!519335 (= lambda!104423 lambda!104390)))

(declare-fun bs!519336 () Bool)

(assert (= bs!519336 (and d!825069 d!824959)))

(assert (=> bs!519336 (= lambda!104423 lambda!104389)))

(declare-fun bs!519337 () Bool)

(assert (= bs!519337 (and d!825069 d!824969)))

(assert (=> bs!519337 (= lambda!104423 lambda!104393)))

(declare-fun bs!519338 () Bool)

(assert (= bs!519338 (and d!825069 d!824955)))

(assert (=> bs!519338 (= lambda!104423 lambda!104385)))

(declare-fun bs!519339 () Bool)

(assert (= bs!519339 (and d!825069 d!825061)))

(assert (=> bs!519339 (= lambda!104423 lambda!104413)))

(declare-fun bs!519340 () Bool)

(assert (= bs!519340 (and d!825069 d!825063)))

(assert (=> bs!519340 (= lambda!104423 lambda!104419)))

(assert (=> d!825069 (= (inv!45728 setElem!24840) (forall!6925 (exprs!2991 setElem!24840) lambda!104423))))

(declare-fun bs!519341 () Bool)

(assert (= bs!519341 d!825069))

(declare-fun m!3273013 () Bool)

(assert (=> bs!519341 m!3273013))

(assert (=> setNonEmpty!24840 d!825069))

(declare-fun d!825071 () Bool)

(assert (=> d!825071 (= (inv!45721 (tag!5576 (h!39145 (t!232844 rules!1139)))) (= (mod (str.len (value!162953 (tag!5576 (h!39145 (t!232844 rules!1139))))) 2) 0))))

(assert (=> b!2844784 d!825071))

(declare-fun d!825073 () Bool)

(declare-fun res!1183408 () Bool)

(declare-fun e!1802598 () Bool)

(assert (=> d!825073 (=> (not res!1183408) (not e!1802598))))

(assert (=> d!825073 (= res!1183408 (semiInverseModEq!2116 (toChars!6985 (transformation!5072 (h!39145 (t!232844 rules!1139)))) (toValue!7126 (transformation!5072 (h!39145 (t!232844 rules!1139))))))))

(assert (=> d!825073 (= (inv!45722 (transformation!5072 (h!39145 (t!232844 rules!1139)))) e!1802598)))

(declare-fun b!2845072 () Bool)

(assert (=> b!2845072 (= e!1802598 (equivClasses!2015 (toChars!6985 (transformation!5072 (h!39145 (t!232844 rules!1139)))) (toValue!7126 (transformation!5072 (h!39145 (t!232844 rules!1139))))))))

(assert (= (and d!825073 res!1183408) b!2845072))

(declare-fun m!3273015 () Bool)

(assert (=> d!825073 m!3273015))

(declare-fun m!3273017 () Bool)

(assert (=> b!2845072 m!3273017))

(assert (=> b!2844784 d!825073))

(declare-fun d!825075 () Bool)

(declare-fun c!459157 () Bool)

(assert (=> d!825075 (= c!459157 ((_ is Node!10458) (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))))))

(declare-fun e!1802603 () Bool)

(assert (=> d!825075 (= (inv!45726 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))) e!1802603)))

(declare-fun b!2845079 () Bool)

(declare-fun inv!45729 (Conc!10458) Bool)

(assert (=> b!2845079 (= e!1802603 (inv!45729 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))))))

(declare-fun b!2845080 () Bool)

(declare-fun e!1802604 () Bool)

(assert (=> b!2845080 (= e!1802603 e!1802604)))

(declare-fun res!1183411 () Bool)

(assert (=> b!2845080 (= res!1183411 (not ((_ is Leaf!15913) (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27))))))))

(assert (=> b!2845080 (=> res!1183411 e!1802604)))

(declare-fun b!2845081 () Bool)

(declare-fun inv!45730 (Conc!10458) Bool)

(assert (=> b!2845081 (= e!1802604 (inv!45730 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))))))

(assert (= (and d!825075 c!459157) b!2845079))

(assert (= (and d!825075 (not c!459157)) b!2845080))

(assert (= (and b!2845080 (not res!1183411)) b!2845081))

(declare-fun m!3273019 () Bool)

(assert (=> b!2845079 m!3273019))

(declare-fun m!3273021 () Bool)

(assert (=> b!2845081 m!3273021))

(assert (=> b!2844731 d!825075))

(declare-fun bs!519342 () Bool)

(declare-fun d!825077 () Bool)

(assert (= bs!519342 (and d!825077 d!825057)))

(declare-fun lambda!104424 () Int)

(assert (=> bs!519342 (= lambda!104424 lambda!104411)))

(declare-fun bs!519343 () Bool)

(assert (= bs!519343 (and d!825077 d!824963)))

(assert (=> bs!519343 (= lambda!104424 lambda!104391)))

(declare-fun bs!519344 () Bool)

(assert (= bs!519344 (and d!825077 d!824971)))

(assert (=> bs!519344 (= lambda!104424 lambda!104394)))

(declare-fun bs!519345 () Bool)

(assert (= bs!519345 (and d!825077 d!824965)))

(assert (=> bs!519345 (= lambda!104424 lambda!104392)))

(declare-fun bs!519346 () Bool)

(assert (= bs!519346 (and d!825077 d!824993)))

(assert (=> bs!519346 (= lambda!104424 lambda!104395)))

(declare-fun bs!519347 () Bool)

(assert (= bs!519347 (and d!825077 d!825059)))

(assert (=> bs!519347 (= lambda!104424 lambda!104412)))

(declare-fun bs!519348 () Bool)

(assert (= bs!519348 (and d!825077 d!825065)))

(assert (=> bs!519348 (= lambda!104424 lambda!104422)))

(declare-fun bs!519349 () Bool)

(assert (= bs!519349 (and d!825077 d!824961)))

(assert (=> bs!519349 (= lambda!104424 lambda!104390)))

(declare-fun bs!519350 () Bool)

(assert (= bs!519350 (and d!825077 d!824959)))

(assert (=> bs!519350 (= lambda!104424 lambda!104389)))

(declare-fun bs!519351 () Bool)

(assert (= bs!519351 (and d!825077 d!824969)))

(assert (=> bs!519351 (= lambda!104424 lambda!104393)))

(declare-fun bs!519352 () Bool)

(assert (= bs!519352 (and d!825077 d!824955)))

(assert (=> bs!519352 (= lambda!104424 lambda!104385)))

(declare-fun bs!519353 () Bool)

(assert (= bs!519353 (and d!825077 d!825035)))

(assert (=> bs!519353 (= lambda!104424 lambda!104403)))

(declare-fun bs!519354 () Bool)

(assert (= bs!519354 (and d!825077 d!825069)))

(assert (=> bs!519354 (= lambda!104424 lambda!104423)))

(declare-fun bs!519355 () Bool)

(assert (= bs!519355 (and d!825077 d!825061)))

(assert (=> bs!519355 (= lambda!104424 lambda!104413)))

(declare-fun bs!519356 () Bool)

(assert (= bs!519356 (and d!825077 d!825063)))

(assert (=> bs!519356 (= lambda!104424 lambda!104419)))

(assert (=> d!825077 (= (inv!45728 (_1!19914 (_1!19915 (h!39142 mapDefault!18594)))) (forall!6925 (exprs!2991 (_1!19914 (_1!19915 (h!39142 mapDefault!18594)))) lambda!104424))))

(declare-fun bs!519357 () Bool)

(assert (= bs!519357 d!825077))

(declare-fun m!3273023 () Bool)

(assert (=> bs!519357 m!3273023))

(assert (=> b!2844836 d!825077))

(declare-fun bs!519358 () Bool)

(declare-fun d!825079 () Bool)

(assert (= bs!519358 (and d!825079 d!825057)))

(declare-fun lambda!104425 () Int)

(assert (=> bs!519358 (= lambda!104425 lambda!104411)))

(declare-fun bs!519359 () Bool)

(assert (= bs!519359 (and d!825079 d!824963)))

(assert (=> bs!519359 (= lambda!104425 lambda!104391)))

(declare-fun bs!519360 () Bool)

(assert (= bs!519360 (and d!825079 d!824971)))

(assert (=> bs!519360 (= lambda!104425 lambda!104394)))

(declare-fun bs!519361 () Bool)

(assert (= bs!519361 (and d!825079 d!824965)))

(assert (=> bs!519361 (= lambda!104425 lambda!104392)))

(declare-fun bs!519362 () Bool)

(assert (= bs!519362 (and d!825079 d!824993)))

(assert (=> bs!519362 (= lambda!104425 lambda!104395)))

(declare-fun bs!519363 () Bool)

(assert (= bs!519363 (and d!825079 d!825059)))

(assert (=> bs!519363 (= lambda!104425 lambda!104412)))

(declare-fun bs!519364 () Bool)

(assert (= bs!519364 (and d!825079 d!825065)))

(assert (=> bs!519364 (= lambda!104425 lambda!104422)))

(declare-fun bs!519365 () Bool)

(assert (= bs!519365 (and d!825079 d!824961)))

(assert (=> bs!519365 (= lambda!104425 lambda!104390)))

(declare-fun bs!519366 () Bool)

(assert (= bs!519366 (and d!825079 d!824959)))

(assert (=> bs!519366 (= lambda!104425 lambda!104389)))

(declare-fun bs!519367 () Bool)

(assert (= bs!519367 (and d!825079 d!824969)))

(assert (=> bs!519367 (= lambda!104425 lambda!104393)))

(declare-fun bs!519368 () Bool)

(assert (= bs!519368 (and d!825079 d!825077)))

(assert (=> bs!519368 (= lambda!104425 lambda!104424)))

(declare-fun bs!519369 () Bool)

(assert (= bs!519369 (and d!825079 d!824955)))

(assert (=> bs!519369 (= lambda!104425 lambda!104385)))

(declare-fun bs!519370 () Bool)

(assert (= bs!519370 (and d!825079 d!825035)))

(assert (=> bs!519370 (= lambda!104425 lambda!104403)))

(declare-fun bs!519371 () Bool)

(assert (= bs!519371 (and d!825079 d!825069)))

(assert (=> bs!519371 (= lambda!104425 lambda!104423)))

(declare-fun bs!519372 () Bool)

(assert (= bs!519372 (and d!825079 d!825061)))

(assert (=> bs!519372 (= lambda!104425 lambda!104413)))

(declare-fun bs!519373 () Bool)

(assert (= bs!519373 (and d!825079 d!825063)))

(assert (=> bs!519373 (= lambda!104425 lambda!104419)))

(assert (=> d!825079 (= (inv!45728 (_1!19914 (_1!19915 (h!39142 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))))) (forall!6925 (exprs!2991 (_1!19914 (_1!19915 (h!39142 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))))) lambda!104425))))

(declare-fun bs!519374 () Bool)

(assert (= bs!519374 d!825079))

(declare-fun m!3273025 () Bool)

(assert (=> bs!519374 m!3273025))

(assert (=> b!2844818 d!825079))

(declare-fun d!825081 () Bool)

(declare-fun e!1802631 () Bool)

(assert (=> d!825081 e!1802631))

(declare-fun res!1183438 () Bool)

(assert (=> d!825081 (=> (not res!1183438) (not e!1802631))))

(declare-fun e!1802623 () Bool)

(assert (=> d!825081 (= res!1183438 e!1802623)))

(declare-fun res!1183431 () Bool)

(assert (=> d!825081 (=> res!1183431 e!1802623)))

(assert (=> d!825081 (= res!1183431 (not ((_ is Node!10458) (c!459093 (charsOf!3120 t1!27)))))))

(assert (=> d!825081 (= (appendAssocInst!719 (c!459093 (charsOf!3120 t1!27)) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))) true)))

(declare-fun b!2845100 () Bool)

(declare-fun e!1802626 () Bool)

(declare-fun e!1802624 () Bool)

(assert (=> b!2845100 (= e!1802626 e!1802624)))

(declare-fun res!1183433 () Bool)

(assert (=> b!2845100 (=> (not res!1183433) (not e!1802624))))

(declare-fun appendAssoc!214 (List!33848 List!33848 List!33848) Bool)

(assert (=> b!2845100 (= res!1183433 (appendAssoc!214 (list!12565 (c!459093 (charsOf!3120 t1!27))) (list!12565 (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))) (list!12565 (right!25734 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun b!2845101 () Bool)

(declare-fun e!1802630 () Bool)

(assert (=> b!2845101 (= e!1802630 (appendAssoc!214 (++!8124 (list!12565 (c!459093 (charsOf!3120 t1!27))) (list!12565 (left!25404 (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))) (list!12565 (right!25734 (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))) (list!12565 (right!25734 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun b!2845102 () Bool)

(assert (=> b!2845102 (= e!1802631 e!1802626)))

(declare-fun res!1183430 () Bool)

(assert (=> b!2845102 (=> res!1183430 e!1802626)))

(assert (=> b!2845102 (= res!1183430 (not ((_ is Node!10458) (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun b!2845103 () Bool)

(declare-fun e!1802625 () Bool)

(declare-fun e!1802629 () Bool)

(assert (=> b!2845103 (= e!1802625 e!1802629)))

(declare-fun res!1183432 () Bool)

(assert (=> b!2845103 (=> (not res!1183432) (not e!1802629))))

(assert (=> b!2845103 (= res!1183432 (appendAssoc!214 (list!12565 (left!25404 (right!25734 (c!459093 (charsOf!3120 t1!27))))) (list!12565 (right!25734 (right!25734 (c!459093 (charsOf!3120 t1!27))))) (list!12565 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun b!2845104 () Bool)

(declare-fun e!1802627 () Bool)

(assert (=> b!2845104 (= e!1802624 e!1802627)))

(declare-fun res!1183437 () Bool)

(assert (=> b!2845104 (=> res!1183437 e!1802627)))

(assert (=> b!2845104 (= res!1183437 (not ((_ is Node!10458) (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun b!2845105 () Bool)

(assert (=> b!2845105 (= e!1802629 (appendAssoc!214 (list!12565 (left!25404 (c!459093 (charsOf!3120 t1!27)))) (list!12565 (left!25404 (right!25734 (c!459093 (charsOf!3120 t1!27))))) (++!8124 (list!12565 (right!25734 (right!25734 (c!459093 (charsOf!3120 t1!27))))) (list!12565 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(declare-fun b!2845106 () Bool)

(declare-fun e!1802628 () Bool)

(assert (=> b!2845106 (= e!1802628 e!1802625)))

(declare-fun res!1183435 () Bool)

(assert (=> b!2845106 (=> res!1183435 e!1802625)))

(assert (=> b!2845106 (= res!1183435 (not ((_ is Node!10458) (right!25734 (c!459093 (charsOf!3120 t1!27))))))))

(declare-fun b!2845107 () Bool)

(assert (=> b!2845107 (= e!1802623 e!1802628)))

(declare-fun res!1183434 () Bool)

(assert (=> b!2845107 (=> (not res!1183434) (not e!1802628))))

(assert (=> b!2845107 (= res!1183434 (appendAssoc!214 (list!12565 (left!25404 (c!459093 (charsOf!3120 t1!27)))) (list!12565 (right!25734 (c!459093 (charsOf!3120 t1!27)))) (list!12565 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun b!2845108 () Bool)

(assert (=> b!2845108 (= e!1802627 e!1802630)))

(declare-fun res!1183436 () Bool)

(assert (=> b!2845108 (=> (not res!1183436) (not e!1802630))))

(assert (=> b!2845108 (= res!1183436 (appendAssoc!214 (list!12565 (c!459093 (charsOf!3120 t1!27))) (list!12565 (left!25404 (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0)))))) (list!12565 (right!25734 (left!25404 (c!459093 (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))))

(assert (= (and d!825081 (not res!1183431)) b!2845107))

(assert (= (and b!2845107 res!1183434) b!2845106))

(assert (= (and b!2845106 (not res!1183435)) b!2845103))

(assert (= (and b!2845103 res!1183432) b!2845105))

(assert (= (and d!825081 res!1183438) b!2845102))

(assert (= (and b!2845102 (not res!1183430)) b!2845100))

(assert (= (and b!2845100 res!1183433) b!2845104))

(assert (= (and b!2845104 (not res!1183437)) b!2845108))

(assert (= (and b!2845108 res!1183436) b!2845101))

(assert (=> b!2845100 m!3272765))

(declare-fun m!3273027 () Bool)

(assert (=> b!2845100 m!3273027))

(declare-fun m!3273029 () Bool)

(assert (=> b!2845100 m!3273029))

(assert (=> b!2845100 m!3272765))

(assert (=> b!2845100 m!3273027))

(assert (=> b!2845100 m!3273029))

(declare-fun m!3273031 () Bool)

(assert (=> b!2845100 m!3273031))

(declare-fun m!3273033 () Bool)

(assert (=> b!2845103 m!3273033))

(declare-fun m!3273035 () Bool)

(assert (=> b!2845103 m!3273035))

(assert (=> b!2845103 m!3272767))

(assert (=> b!2845103 m!3273033))

(assert (=> b!2845103 m!3273035))

(assert (=> b!2845103 m!3272767))

(declare-fun m!3273037 () Bool)

(assert (=> b!2845103 m!3273037))

(declare-fun m!3273039 () Bool)

(assert (=> b!2845101 m!3273039))

(declare-fun m!3273041 () Bool)

(assert (=> b!2845101 m!3273041))

(assert (=> b!2845101 m!3273029))

(declare-fun m!3273043 () Bool)

(assert (=> b!2845101 m!3273043))

(assert (=> b!2845101 m!3273029))

(assert (=> b!2845101 m!3273041))

(declare-fun m!3273045 () Bool)

(assert (=> b!2845101 m!3273045))

(assert (=> b!2845101 m!3272765))

(assert (=> b!2845101 m!3273045))

(assert (=> b!2845101 m!3273039))

(assert (=> b!2845101 m!3272765))

(declare-fun m!3273047 () Bool)

(assert (=> b!2845107 m!3273047))

(declare-fun m!3273049 () Bool)

(assert (=> b!2845107 m!3273049))

(assert (=> b!2845107 m!3272767))

(assert (=> b!2845107 m!3273047))

(assert (=> b!2845107 m!3273049))

(assert (=> b!2845107 m!3272767))

(declare-fun m!3273051 () Bool)

(assert (=> b!2845107 m!3273051))

(assert (=> b!2845108 m!3272765))

(assert (=> b!2845108 m!3273045))

(assert (=> b!2845108 m!3273041))

(assert (=> b!2845108 m!3272765))

(assert (=> b!2845108 m!3273045))

(assert (=> b!2845108 m!3273041))

(declare-fun m!3273053 () Bool)

(assert (=> b!2845108 m!3273053))

(assert (=> b!2845105 m!3273047))

(assert (=> b!2845105 m!3273033))

(declare-fun m!3273055 () Bool)

(assert (=> b!2845105 m!3273055))

(declare-fun m!3273057 () Bool)

(assert (=> b!2845105 m!3273057))

(assert (=> b!2845105 m!3273033))

(assert (=> b!2845105 m!3273047))

(assert (=> b!2845105 m!3272767))

(assert (=> b!2845105 m!3273035))

(assert (=> b!2845105 m!3272767))

(assert (=> b!2845105 m!3273055))

(assert (=> b!2845105 m!3273035))

(assert (=> d!824921 d!825081))

(assert (=> d!824921 d!825001))

(declare-fun d!825083 () Bool)

(declare-fun lt!1012391 () Int)

(assert (=> d!825083 (>= lt!1012391 0)))

(declare-fun e!1802634 () Int)

(assert (=> d!825083 (= lt!1012391 e!1802634)))

(declare-fun c!459160 () Bool)

(assert (=> d!825083 (= c!459160 ((_ is Nil!33724) (originalCharacters!5804 t2!27)))))

(assert (=> d!825083 (= (size!26200 (originalCharacters!5804 t2!27)) lt!1012391)))

(declare-fun b!2845113 () Bool)

(assert (=> b!2845113 (= e!1802634 0)))

(declare-fun b!2845114 () Bool)

(assert (=> b!2845114 (= e!1802634 (+ 1 (size!26200 (t!232843 (originalCharacters!5804 t2!27)))))))

(assert (= (and d!825083 c!459160) b!2845113))

(assert (= (and d!825083 (not c!459160)) b!2845114))

(declare-fun m!3273059 () Bool)

(assert (=> b!2845114 m!3273059))

(assert (=> b!2844723 d!825083))

(declare-fun bs!519375 () Bool)

(declare-fun d!825085 () Bool)

(assert (= bs!519375 (and d!825085 d!824957)))

(declare-fun lambda!104426 () Int)

(assert (=> bs!519375 (= (and (= (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (toChars!6985 (transformation!5072 (h!39145 rules!1139)))) (= (toValue!7126 (transformation!5072 (rule!7500 t1!27))) (toValue!7126 (transformation!5072 (h!39145 rules!1139))))) (= lambda!104426 lambda!104388))))

(assert (=> d!825085 true))

(assert (=> d!825085 (< (dynLambda!14197 order!18049 (toChars!6985 (transformation!5072 (rule!7500 t1!27)))) (dynLambda!14198 order!18051 lambda!104426))))

(assert (=> d!825085 true))

(assert (=> d!825085 (< (dynLambda!14199 order!18053 (toValue!7126 (transformation!5072 (rule!7500 t1!27)))) (dynLambda!14198 order!18051 lambda!104426))))

(assert (=> d!825085 (= (semiInverseModEq!2116 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (toValue!7126 (transformation!5072 (rule!7500 t1!27)))) (Forall!1251 lambda!104426))))

(declare-fun bs!519376 () Bool)

(assert (= bs!519376 d!825085))

(declare-fun m!3273061 () Bool)

(assert (=> bs!519376 m!3273061))

(assert (=> d!824947 d!825085))

(assert (=> b!2844742 d!824999))

(assert (=> b!2844742 d!825001))

(assert (=> b!2844742 d!825003))

(assert (=> b!2844742 d!825005))

(assert (=> b!2844742 d!825007))

(declare-fun bs!519377 () Bool)

(declare-fun d!825087 () Bool)

(assert (= bs!519377 (and d!825087 d!824957)))

(declare-fun lambda!104427 () Int)

(assert (=> bs!519377 (= (and (= (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toChars!6985 (transformation!5072 (h!39145 rules!1139)))) (= (toValue!7126 (transformation!5072 (rule!7500 t2!27))) (toValue!7126 (transformation!5072 (h!39145 rules!1139))))) (= lambda!104427 lambda!104388))))

(declare-fun bs!519378 () Bool)

(assert (= bs!519378 (and d!825087 d!825085)))

(assert (=> bs!519378 (= (and (= (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toChars!6985 (transformation!5072 (rule!7500 t1!27)))) (= (toValue!7126 (transformation!5072 (rule!7500 t2!27))) (toValue!7126 (transformation!5072 (rule!7500 t1!27))))) (= lambda!104427 lambda!104426))))

(assert (=> d!825087 true))

(assert (=> d!825087 (< (dynLambda!14197 order!18049 (toChars!6985 (transformation!5072 (rule!7500 t2!27)))) (dynLambda!14198 order!18051 lambda!104427))))

(assert (=> d!825087 true))

(assert (=> d!825087 (< (dynLambda!14199 order!18053 (toValue!7126 (transformation!5072 (rule!7500 t2!27)))) (dynLambda!14198 order!18051 lambda!104427))))

(assert (=> d!825087 (= (semiInverseModEq!2116 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (toValue!7126 (transformation!5072 (rule!7500 t2!27)))) (Forall!1251 lambda!104427))))

(declare-fun bs!519379 () Bool)

(assert (= bs!519379 d!825087))

(declare-fun m!3273063 () Bool)

(assert (=> bs!519379 m!3273063))

(assert (=> d!824937 d!825087))

(declare-fun d!825089 () Bool)

(assert (=> d!825089 (= (list!12564 lt!1012257) (list!12565 (c!459093 lt!1012257)))))

(declare-fun bs!519380 () Bool)

(assert (= bs!519380 d!825089))

(declare-fun m!3273065 () Bool)

(assert (=> bs!519380 m!3273065))

(assert (=> d!824923 d!825089))

(declare-fun bs!519381 () Bool)

(declare-fun d!825091 () Bool)

(assert (= bs!519381 (and d!825091 d!825057)))

(declare-fun lambda!104428 () Int)

(assert (=> bs!519381 (= lambda!104428 lambda!104411)))

(declare-fun bs!519382 () Bool)

(assert (= bs!519382 (and d!825091 d!824963)))

(assert (=> bs!519382 (= lambda!104428 lambda!104391)))

(declare-fun bs!519383 () Bool)

(assert (= bs!519383 (and d!825091 d!824971)))

(assert (=> bs!519383 (= lambda!104428 lambda!104394)))

(declare-fun bs!519384 () Bool)

(assert (= bs!519384 (and d!825091 d!824965)))

(assert (=> bs!519384 (= lambda!104428 lambda!104392)))

(declare-fun bs!519385 () Bool)

(assert (= bs!519385 (and d!825091 d!824993)))

(assert (=> bs!519385 (= lambda!104428 lambda!104395)))

(declare-fun bs!519386 () Bool)

(assert (= bs!519386 (and d!825091 d!825059)))

(assert (=> bs!519386 (= lambda!104428 lambda!104412)))

(declare-fun bs!519387 () Bool)

(assert (= bs!519387 (and d!825091 d!825065)))

(assert (=> bs!519387 (= lambda!104428 lambda!104422)))

(declare-fun bs!519388 () Bool)

(assert (= bs!519388 (and d!825091 d!824961)))

(assert (=> bs!519388 (= lambda!104428 lambda!104390)))

(declare-fun bs!519389 () Bool)

(assert (= bs!519389 (and d!825091 d!824959)))

(assert (=> bs!519389 (= lambda!104428 lambda!104389)))

(declare-fun bs!519390 () Bool)

(assert (= bs!519390 (and d!825091 d!824969)))

(assert (=> bs!519390 (= lambda!104428 lambda!104393)))

(declare-fun bs!519391 () Bool)

(assert (= bs!519391 (and d!825091 d!825077)))

(assert (=> bs!519391 (= lambda!104428 lambda!104424)))

(declare-fun bs!519392 () Bool)

(assert (= bs!519392 (and d!825091 d!824955)))

(assert (=> bs!519392 (= lambda!104428 lambda!104385)))

(declare-fun bs!519393 () Bool)

(assert (= bs!519393 (and d!825091 d!825079)))

(assert (=> bs!519393 (= lambda!104428 lambda!104425)))

(declare-fun bs!519394 () Bool)

(assert (= bs!519394 (and d!825091 d!825035)))

(assert (=> bs!519394 (= lambda!104428 lambda!104403)))

(declare-fun bs!519395 () Bool)

(assert (= bs!519395 (and d!825091 d!825069)))

(assert (=> bs!519395 (= lambda!104428 lambda!104423)))

(declare-fun bs!519396 () Bool)

(assert (= bs!519396 (and d!825091 d!825061)))

(assert (=> bs!519396 (= lambda!104428 lambda!104413)))

(declare-fun bs!519397 () Bool)

(assert (= bs!519397 (and d!825091 d!825063)))

(assert (=> bs!519397 (= lambda!104428 lambda!104419)))

(assert (=> d!825091 (= (inv!45728 (_1!19914 (_1!19915 (h!39142 mapDefault!18591)))) (forall!6925 (exprs!2991 (_1!19914 (_1!19915 (h!39142 mapDefault!18591)))) lambda!104428))))

(declare-fun bs!519398 () Bool)

(assert (= bs!519398 d!825091))

(declare-fun m!3273067 () Bool)

(assert (=> bs!519398 m!3273067))

(assert (=> b!2844848 d!825091))

(declare-fun bs!519399 () Bool)

(declare-fun d!825093 () Bool)

(assert (= bs!519399 (and d!825093 d!825057)))

(declare-fun lambda!104429 () Int)

(assert (=> bs!519399 (= lambda!104429 lambda!104411)))

(declare-fun bs!519400 () Bool)

(assert (= bs!519400 (and d!825093 d!824963)))

(assert (=> bs!519400 (= lambda!104429 lambda!104391)))

(declare-fun bs!519401 () Bool)

(assert (= bs!519401 (and d!825093 d!825091)))

(assert (=> bs!519401 (= lambda!104429 lambda!104428)))

(declare-fun bs!519402 () Bool)

(assert (= bs!519402 (and d!825093 d!824971)))

(assert (=> bs!519402 (= lambda!104429 lambda!104394)))

(declare-fun bs!519403 () Bool)

(assert (= bs!519403 (and d!825093 d!824965)))

(assert (=> bs!519403 (= lambda!104429 lambda!104392)))

(declare-fun bs!519404 () Bool)

(assert (= bs!519404 (and d!825093 d!824993)))

(assert (=> bs!519404 (= lambda!104429 lambda!104395)))

(declare-fun bs!519405 () Bool)

(assert (= bs!519405 (and d!825093 d!825059)))

(assert (=> bs!519405 (= lambda!104429 lambda!104412)))

(declare-fun bs!519406 () Bool)

(assert (= bs!519406 (and d!825093 d!825065)))

(assert (=> bs!519406 (= lambda!104429 lambda!104422)))

(declare-fun bs!519407 () Bool)

(assert (= bs!519407 (and d!825093 d!824961)))

(assert (=> bs!519407 (= lambda!104429 lambda!104390)))

(declare-fun bs!519408 () Bool)

(assert (= bs!519408 (and d!825093 d!824959)))

(assert (=> bs!519408 (= lambda!104429 lambda!104389)))

(declare-fun bs!519409 () Bool)

(assert (= bs!519409 (and d!825093 d!824969)))

(assert (=> bs!519409 (= lambda!104429 lambda!104393)))

(declare-fun bs!519410 () Bool)

(assert (= bs!519410 (and d!825093 d!825077)))

(assert (=> bs!519410 (= lambda!104429 lambda!104424)))

(declare-fun bs!519411 () Bool)

(assert (= bs!519411 (and d!825093 d!824955)))

(assert (=> bs!519411 (= lambda!104429 lambda!104385)))

(declare-fun bs!519412 () Bool)

(assert (= bs!519412 (and d!825093 d!825079)))

(assert (=> bs!519412 (= lambda!104429 lambda!104425)))

(declare-fun bs!519413 () Bool)

(assert (= bs!519413 (and d!825093 d!825035)))

(assert (=> bs!519413 (= lambda!104429 lambda!104403)))

(declare-fun bs!519414 () Bool)

(assert (= bs!519414 (and d!825093 d!825069)))

(assert (=> bs!519414 (= lambda!104429 lambda!104423)))

(declare-fun bs!519415 () Bool)

(assert (= bs!519415 (and d!825093 d!825061)))

(assert (=> bs!519415 (= lambda!104429 lambda!104413)))

(declare-fun bs!519416 () Bool)

(assert (= bs!519416 (and d!825093 d!825063)))

(assert (=> bs!519416 (= lambda!104429 lambda!104419)))

(assert (=> d!825093 (= (inv!45728 setElem!24859) (forall!6925 (exprs!2991 setElem!24859) lambda!104429))))

(declare-fun bs!519417 () Bool)

(assert (= bs!519417 d!825093))

(declare-fun m!3273069 () Bool)

(assert (=> bs!519417 m!3273069))

(assert (=> setNonEmpty!24859 d!825093))

(declare-fun d!825095 () Bool)

(declare-fun c!459161 () Bool)

(assert (=> d!825095 (= c!459161 ((_ is Node!10458) (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))))))

(declare-fun e!1802635 () Bool)

(assert (=> d!825095 (= (inv!45726 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))) e!1802635)))

(declare-fun b!2845115 () Bool)

(assert (=> b!2845115 (= e!1802635 (inv!45729 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))))))

(declare-fun b!2845116 () Bool)

(declare-fun e!1802636 () Bool)

(assert (=> b!2845116 (= e!1802635 e!1802636)))

(declare-fun res!1183439 () Bool)

(assert (=> b!2845116 (= res!1183439 (not ((_ is Leaf!15913) (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27))))))))

(assert (=> b!2845116 (=> res!1183439 e!1802636)))

(declare-fun b!2845117 () Bool)

(assert (=> b!2845117 (= e!1802636 (inv!45730 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))))))

(assert (= (and d!825095 c!459161) b!2845115))

(assert (= (and d!825095 (not c!459161)) b!2845116))

(assert (= (and b!2845116 (not res!1183439)) b!2845117))

(declare-fun m!3273071 () Bool)

(assert (=> b!2845115 m!3273071))

(declare-fun m!3273073 () Bool)

(assert (=> b!2845117 m!3273073))

(assert (=> b!2844728 d!825095))

(assert (=> d!824907 d!824939))

(declare-fun d!825097 () Bool)

(declare-fun list!12566 (Conc!10459) List!33851)

(assert (=> d!825097 (= (list!12563 (_1!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27))))) (list!12566 (c!459105 (_1!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27)))))))))

(declare-fun bs!519418 () Bool)

(assert (= bs!519418 d!825097))

(declare-fun m!3273075 () Bool)

(assert (=> bs!519418 m!3273075))

(assert (=> d!824907 d!825097))

(declare-fun d!825099 () Bool)

(assert (=> d!825099 (= (list!12563 (singletonSeq!2188 t2!27)) (list!12566 (c!459105 (singletonSeq!2188 t2!27))))))

(declare-fun bs!519419 () Bool)

(assert (= bs!519419 d!825099))

(declare-fun m!3273077 () Bool)

(assert (=> bs!519419 m!3273077))

(assert (=> d!824907 d!825099))

(declare-fun e!1802639 () Bool)

(declare-fun b!2845118 () Bool)

(declare-fun lt!1012392 () tuple2!33600)

(assert (=> b!2845118 (= e!1802639 (= (list!12564 (_2!19917 lt!1012392)) (_2!19918 (lexList!1265 thiss!11361 rules!1139 (list!12564 (print!1750 thiss!11361 (singletonSeq!2188 t2!27)))))))))

(declare-fun e!1802637 () Bool)

(declare-fun b!2845119 () Bool)

(assert (=> b!2845119 (= e!1802637 (= (_2!19917 lt!1012392) (print!1750 thiss!11361 (singletonSeq!2188 t2!27))))))

(declare-fun b!2845120 () Bool)

(declare-fun e!1802638 () Bool)

(assert (=> b!2845120 (= e!1802638 (not (isEmpty!18568 (_1!19917 lt!1012392))))))

(declare-fun b!2845121 () Bool)

(declare-fun res!1183440 () Bool)

(assert (=> b!2845121 (=> (not res!1183440) (not e!1802639))))

(assert (=> b!2845121 (= res!1183440 (= (list!12563 (_1!19917 lt!1012392)) (_1!19918 (lexList!1265 thiss!11361 rules!1139 (list!12564 (print!1750 thiss!11361 (singletonSeq!2188 t2!27)))))))))

(declare-fun d!825101 () Bool)

(assert (=> d!825101 e!1802639))

(declare-fun res!1183442 () Bool)

(assert (=> d!825101 (=> (not res!1183442) (not e!1802639))))

(assert (=> d!825101 (= res!1183442 e!1802637)))

(declare-fun c!459162 () Bool)

(assert (=> d!825101 (= c!459162 (> (size!26199 (_1!19917 lt!1012392)) 0))))

(assert (=> d!825101 (= lt!1012392 (lexTailRecV2!903 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27)) (BalanceConc!20555 Empty!10458) (print!1750 thiss!11361 (singletonSeq!2188 t2!27)) (BalanceConc!20557 Empty!10459)))))

(assert (=> d!825101 (= (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27))) lt!1012392)))

(declare-fun b!2845122 () Bool)

(assert (=> b!2845122 (= e!1802637 e!1802638)))

(declare-fun res!1183441 () Bool)

(assert (=> b!2845122 (= res!1183441 (< (size!26201 (_2!19917 lt!1012392)) (size!26201 (print!1750 thiss!11361 (singletonSeq!2188 t2!27)))))))

(assert (=> b!2845122 (=> (not res!1183441) (not e!1802638))))

(assert (= (and d!825101 c!459162) b!2845122))

(assert (= (and d!825101 (not c!459162)) b!2845119))

(assert (= (and b!2845122 res!1183441) b!2845120))

(assert (= (and d!825101 res!1183442) b!2845121))

(assert (= (and b!2845121 res!1183440) b!2845118))

(declare-fun m!3273079 () Bool)

(assert (=> b!2845122 m!3273079))

(assert (=> b!2845122 m!3272517))

(declare-fun m!3273081 () Bool)

(assert (=> b!2845122 m!3273081))

(declare-fun m!3273083 () Bool)

(assert (=> d!825101 m!3273083))

(assert (=> d!825101 m!3272517))

(assert (=> d!825101 m!3272517))

(declare-fun m!3273085 () Bool)

(assert (=> d!825101 m!3273085))

(declare-fun m!3273087 () Bool)

(assert (=> b!2845120 m!3273087))

(declare-fun m!3273089 () Bool)

(assert (=> b!2845121 m!3273089))

(assert (=> b!2845121 m!3272517))

(declare-fun m!3273091 () Bool)

(assert (=> b!2845121 m!3273091))

(assert (=> b!2845121 m!3273091))

(declare-fun m!3273093 () Bool)

(assert (=> b!2845121 m!3273093))

(declare-fun m!3273095 () Bool)

(assert (=> b!2845118 m!3273095))

(assert (=> b!2845118 m!3272517))

(assert (=> b!2845118 m!3273091))

(assert (=> b!2845118 m!3273091))

(assert (=> b!2845118 m!3273093))

(assert (=> d!824907 d!825101))

(declare-fun d!825103 () Bool)

(declare-fun lt!1012395 () Int)

(declare-fun size!26205 (List!33851) Int)

(assert (=> d!825103 (= lt!1012395 (size!26205 (list!12563 (_1!19917 lt!1012251))))))

(declare-fun size!26206 (Conc!10459) Int)

(assert (=> d!825103 (= lt!1012395 (size!26206 (c!459105 (_1!19917 lt!1012251))))))

(assert (=> d!825103 (= (size!26199 (_1!19917 lt!1012251)) lt!1012395)))

(declare-fun bs!519420 () Bool)

(assert (= bs!519420 d!825103))

(declare-fun m!3273097 () Bool)

(assert (=> bs!519420 m!3273097))

(assert (=> bs!519420 m!3273097))

(declare-fun m!3273099 () Bool)

(assert (=> bs!519420 m!3273099))

(declare-fun m!3273101 () Bool)

(assert (=> bs!519420 m!3273101))

(assert (=> d!824907 d!825103))

(declare-fun d!825105 () Bool)

(declare-fun e!1802640 () Bool)

(assert (=> d!825105 e!1802640))

(declare-fun res!1183443 () Bool)

(assert (=> d!825105 (=> (not res!1183443) (not e!1802640))))

(declare-fun lt!1012396 () BalanceConc!20556)

(assert (=> d!825105 (= res!1183443 (= (list!12563 lt!1012396) (Cons!33727 t2!27 Nil!33727)))))

(assert (=> d!825105 (= lt!1012396 (singleton!964 t2!27))))

(assert (=> d!825105 (= (singletonSeq!2188 t2!27) lt!1012396)))

(declare-fun b!2845123 () Bool)

(assert (=> b!2845123 (= e!1802640 (isBalanced!3154 (c!459105 lt!1012396)))))

(assert (= (and d!825105 res!1183443) b!2845123))

(declare-fun m!3273103 () Bool)

(assert (=> d!825105 m!3273103))

(declare-fun m!3273105 () Bool)

(assert (=> d!825105 m!3273105))

(declare-fun m!3273107 () Bool)

(assert (=> b!2845123 m!3273107))

(assert (=> d!824907 d!825105))

(declare-fun d!825107 () Bool)

(declare-fun lt!1012397 () BalanceConc!20554)

(assert (=> d!825107 (= (list!12564 lt!1012397) (printList!1239 thiss!11361 (list!12563 (singletonSeq!2188 t2!27))))))

(assert (=> d!825107 (= lt!1012397 (printTailRec!1182 thiss!11361 (singletonSeq!2188 t2!27) 0 (BalanceConc!20555 Empty!10458)))))

(assert (=> d!825107 (= (print!1750 thiss!11361 (singletonSeq!2188 t2!27)) lt!1012397)))

(declare-fun bs!519421 () Bool)

(assert (= bs!519421 d!825107))

(declare-fun m!3273109 () Bool)

(assert (=> bs!519421 m!3273109))

(assert (=> bs!519421 m!3272515))

(assert (=> bs!519421 m!3272521))

(assert (=> bs!519421 m!3272521))

(declare-fun m!3273111 () Bool)

(assert (=> bs!519421 m!3273111))

(assert (=> bs!519421 m!3272515))

(declare-fun m!3273113 () Bool)

(assert (=> bs!519421 m!3273113))

(assert (=> d!824907 d!825107))

(declare-fun d!825109 () Bool)

(declare-fun lt!1012398 () Bool)

(assert (=> d!825109 (= lt!1012398 (isEmpty!18566 (list!12564 (_2!19917 lt!1012305))))))

(assert (=> d!825109 (= lt!1012398 (isEmpty!18567 (c!459093 (_2!19917 lt!1012305))))))

(assert (=> d!825109 (= (isEmpty!18565 (_2!19917 lt!1012305)) lt!1012398)))

(declare-fun bs!519422 () Bool)

(assert (= bs!519422 d!825109))

(declare-fun m!3273115 () Bool)

(assert (=> bs!519422 m!3273115))

(assert (=> bs!519422 m!3273115))

(declare-fun m!3273117 () Bool)

(assert (=> bs!519422 m!3273117))

(declare-fun m!3273119 () Bool)

(assert (=> bs!519422 m!3273119))

(assert (=> b!2844753 d!825109))

(declare-fun bs!519423 () Bool)

(declare-fun d!825111 () Bool)

(assert (= bs!519423 (and d!825111 d!825057)))

(declare-fun lambda!104430 () Int)

(assert (=> bs!519423 (= lambda!104430 lambda!104411)))

(declare-fun bs!519424 () Bool)

(assert (= bs!519424 (and d!825111 d!824963)))

(assert (=> bs!519424 (= lambda!104430 lambda!104391)))

(declare-fun bs!519425 () Bool)

(assert (= bs!519425 (and d!825111 d!825091)))

(assert (=> bs!519425 (= lambda!104430 lambda!104428)))

(declare-fun bs!519426 () Bool)

(assert (= bs!519426 (and d!825111 d!824971)))

(assert (=> bs!519426 (= lambda!104430 lambda!104394)))

(declare-fun bs!519427 () Bool)

(assert (= bs!519427 (and d!825111 d!824965)))

(assert (=> bs!519427 (= lambda!104430 lambda!104392)))

(declare-fun bs!519428 () Bool)

(assert (= bs!519428 (and d!825111 d!825059)))

(assert (=> bs!519428 (= lambda!104430 lambda!104412)))

(declare-fun bs!519429 () Bool)

(assert (= bs!519429 (and d!825111 d!825065)))

(assert (=> bs!519429 (= lambda!104430 lambda!104422)))

(declare-fun bs!519430 () Bool)

(assert (= bs!519430 (and d!825111 d!824961)))

(assert (=> bs!519430 (= lambda!104430 lambda!104390)))

(declare-fun bs!519431 () Bool)

(assert (= bs!519431 (and d!825111 d!824959)))

(assert (=> bs!519431 (= lambda!104430 lambda!104389)))

(declare-fun bs!519432 () Bool)

(assert (= bs!519432 (and d!825111 d!824969)))

(assert (=> bs!519432 (= lambda!104430 lambda!104393)))

(declare-fun bs!519433 () Bool)

(assert (= bs!519433 (and d!825111 d!825077)))

(assert (=> bs!519433 (= lambda!104430 lambda!104424)))

(declare-fun bs!519434 () Bool)

(assert (= bs!519434 (and d!825111 d!824955)))

(assert (=> bs!519434 (= lambda!104430 lambda!104385)))

(declare-fun bs!519435 () Bool)

(assert (= bs!519435 (and d!825111 d!825079)))

(assert (=> bs!519435 (= lambda!104430 lambda!104425)))

(declare-fun bs!519436 () Bool)

(assert (= bs!519436 (and d!825111 d!825035)))

(assert (=> bs!519436 (= lambda!104430 lambda!104403)))

(declare-fun bs!519437 () Bool)

(assert (= bs!519437 (and d!825111 d!825069)))

(assert (=> bs!519437 (= lambda!104430 lambda!104423)))

(declare-fun bs!519438 () Bool)

(assert (= bs!519438 (and d!825111 d!825093)))

(assert (=> bs!519438 (= lambda!104430 lambda!104429)))

(declare-fun bs!519439 () Bool)

(assert (= bs!519439 (and d!825111 d!824993)))

(assert (=> bs!519439 (= lambda!104430 lambda!104395)))

(declare-fun bs!519440 () Bool)

(assert (= bs!519440 (and d!825111 d!825061)))

(assert (=> bs!519440 (= lambda!104430 lambda!104413)))

(declare-fun bs!519441 () Bool)

(assert (= bs!519441 (and d!825111 d!825063)))

(assert (=> bs!519441 (= lambda!104430 lambda!104419)))

(assert (=> d!825111 (= (inv!45728 (_1!19914 (_1!19915 (h!39142 mapValue!18591)))) (forall!6925 (exprs!2991 (_1!19914 (_1!19915 (h!39142 mapValue!18591)))) lambda!104430))))

(declare-fun bs!519442 () Bool)

(assert (= bs!519442 d!825111))

(declare-fun m!3273121 () Bool)

(assert (=> bs!519442 m!3273121))

(assert (=> b!2844841 d!825111))

(declare-fun d!825113 () Bool)

(declare-fun lt!1012399 () Bool)

(assert (=> d!825113 (= lt!1012399 (isEmpty!18566 (list!12564 (_2!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27)))))))))

(assert (=> d!825113 (= lt!1012399 (isEmpty!18567 (c!459093 (_2!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27)))))))))

(assert (=> d!825113 (= (isEmpty!18565 (_2!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t2!27))))) lt!1012399)))

(declare-fun bs!519443 () Bool)

(assert (= bs!519443 d!825113))

(declare-fun m!3273123 () Bool)

(assert (=> bs!519443 m!3273123))

(assert (=> bs!519443 m!3273123))

(declare-fun m!3273125 () Bool)

(assert (=> bs!519443 m!3273125))

(declare-fun m!3273127 () Bool)

(assert (=> bs!519443 m!3273127))

(assert (=> b!2844711 d!825113))

(assert (=> b!2844711 d!825101))

(assert (=> b!2844711 d!825107))

(assert (=> b!2844711 d!825105))

(declare-fun d!825115 () Bool)

(declare-fun charsToBigInt!0 (List!33847 Int) Int)

(assert (=> d!825115 (= (inv!15 (value!162954 t2!27)) (= (charsToBigInt!0 (text!37563 (value!162954 t2!27)) 0) (value!162949 (value!162954 t2!27))))))

(declare-fun bs!519444 () Bool)

(assert (= bs!519444 d!825115))

(declare-fun m!3273129 () Bool)

(assert (=> bs!519444 m!3273129))

(assert (=> b!2844688 d!825115))

(declare-fun bs!519445 () Bool)

(declare-fun d!825117 () Bool)

(assert (= bs!519445 (and d!825117 d!825111)))

(declare-fun lambda!104431 () Int)

(assert (=> bs!519445 (= lambda!104431 lambda!104430)))

(declare-fun bs!519446 () Bool)

(assert (= bs!519446 (and d!825117 d!825057)))

(assert (=> bs!519446 (= lambda!104431 lambda!104411)))

(declare-fun bs!519447 () Bool)

(assert (= bs!519447 (and d!825117 d!824963)))

(assert (=> bs!519447 (= lambda!104431 lambda!104391)))

(declare-fun bs!519448 () Bool)

(assert (= bs!519448 (and d!825117 d!825091)))

(assert (=> bs!519448 (= lambda!104431 lambda!104428)))

(declare-fun bs!519449 () Bool)

(assert (= bs!519449 (and d!825117 d!824971)))

(assert (=> bs!519449 (= lambda!104431 lambda!104394)))

(declare-fun bs!519450 () Bool)

(assert (= bs!519450 (and d!825117 d!824965)))

(assert (=> bs!519450 (= lambda!104431 lambda!104392)))

(declare-fun bs!519451 () Bool)

(assert (= bs!519451 (and d!825117 d!825059)))

(assert (=> bs!519451 (= lambda!104431 lambda!104412)))

(declare-fun bs!519452 () Bool)

(assert (= bs!519452 (and d!825117 d!825065)))

(assert (=> bs!519452 (= lambda!104431 lambda!104422)))

(declare-fun bs!519453 () Bool)

(assert (= bs!519453 (and d!825117 d!824961)))

(assert (=> bs!519453 (= lambda!104431 lambda!104390)))

(declare-fun bs!519454 () Bool)

(assert (= bs!519454 (and d!825117 d!824959)))

(assert (=> bs!519454 (= lambda!104431 lambda!104389)))

(declare-fun bs!519455 () Bool)

(assert (= bs!519455 (and d!825117 d!824969)))

(assert (=> bs!519455 (= lambda!104431 lambda!104393)))

(declare-fun bs!519456 () Bool)

(assert (= bs!519456 (and d!825117 d!825077)))

(assert (=> bs!519456 (= lambda!104431 lambda!104424)))

(declare-fun bs!519457 () Bool)

(assert (= bs!519457 (and d!825117 d!824955)))

(assert (=> bs!519457 (= lambda!104431 lambda!104385)))

(declare-fun bs!519458 () Bool)

(assert (= bs!519458 (and d!825117 d!825079)))

(assert (=> bs!519458 (= lambda!104431 lambda!104425)))

(declare-fun bs!519459 () Bool)

(assert (= bs!519459 (and d!825117 d!825035)))

(assert (=> bs!519459 (= lambda!104431 lambda!104403)))

(declare-fun bs!519460 () Bool)

(assert (= bs!519460 (and d!825117 d!825069)))

(assert (=> bs!519460 (= lambda!104431 lambda!104423)))

(declare-fun bs!519461 () Bool)

(assert (= bs!519461 (and d!825117 d!825093)))

(assert (=> bs!519461 (= lambda!104431 lambda!104429)))

(declare-fun bs!519462 () Bool)

(assert (= bs!519462 (and d!825117 d!824993)))

(assert (=> bs!519462 (= lambda!104431 lambda!104395)))

(declare-fun bs!519463 () Bool)

(assert (= bs!519463 (and d!825117 d!825061)))

(assert (=> bs!519463 (= lambda!104431 lambda!104413)))

(declare-fun bs!519464 () Bool)

(assert (= bs!519464 (and d!825117 d!825063)))

(assert (=> bs!519464 (= lambda!104431 lambda!104419)))

(assert (=> d!825117 (= (inv!45728 (_2!19912 (_1!19913 (h!39141 mapDefault!18597)))) (forall!6925 (exprs!2991 (_2!19912 (_1!19913 (h!39141 mapDefault!18597)))) lambda!104431))))

(declare-fun bs!519465 () Bool)

(assert (= bs!519465 d!825117))

(declare-fun m!3273131 () Bool)

(assert (=> bs!519465 m!3273131))

(assert (=> b!2844869 d!825117))

(declare-fun d!825119 () Bool)

(declare-fun lt!1012400 () Int)

(assert (=> d!825119 (>= lt!1012400 0)))

(declare-fun e!1802641 () Int)

(assert (=> d!825119 (= lt!1012400 e!1802641)))

(declare-fun c!459163 () Bool)

(assert (=> d!825119 (= c!459163 ((_ is Nil!33724) (originalCharacters!5804 t1!27)))))

(assert (=> d!825119 (= (size!26200 (originalCharacters!5804 t1!27)) lt!1012400)))

(declare-fun b!2845124 () Bool)

(assert (=> b!2845124 (= e!1802641 0)))

(declare-fun b!2845125 () Bool)

(assert (=> b!2845125 (= e!1802641 (+ 1 (size!26200 (t!232843 (originalCharacters!5804 t1!27)))))))

(assert (= (and d!825119 c!459163) b!2845124))

(assert (= (and d!825119 (not c!459163)) b!2845125))

(declare-fun m!3273133 () Bool)

(assert (=> b!2845125 m!3273133))

(assert (=> b!2844730 d!825119))

(declare-fun d!825121 () Bool)

(declare-fun charsToInt!0 (List!33847) (_ BitVec 32))

(assert (=> d!825121 (= (inv!16 (value!162954 t2!27)) (= (charsToInt!0 (text!37561 (value!162954 t2!27))) (value!162945 (value!162954 t2!27))))))

(declare-fun bs!519466 () Bool)

(assert (= bs!519466 d!825121))

(declare-fun m!3273135 () Bool)

(assert (=> bs!519466 m!3273135))

(assert (=> b!2844690 d!825121))

(declare-fun d!825123 () Bool)

(declare-fun c!459166 () Bool)

(assert (=> d!825123 (= c!459166 (isEmpty!18566 (list!12564 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun e!1802644 () Bool)

(assert (=> d!825123 (= (prefixMatch!809 (rulesRegex!1006 thiss!11361 rules!1139) (list!12564 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))))) e!1802644)))

(declare-fun b!2845130 () Bool)

(declare-fun lostCause!727 (Regex!8463) Bool)

(assert (=> b!2845130 (= e!1802644 (not (lostCause!727 (rulesRegex!1006 thiss!11361 rules!1139))))))

(declare-fun b!2845131 () Bool)

(declare-fun derivativeStep!2252 (Regex!8463 C!17108) Regex!8463)

(declare-fun head!6254 (List!33848) C!17108)

(declare-fun tail!4479 (List!33848) List!33848)

(assert (=> b!2845131 (= e!1802644 (prefixMatch!809 (derivativeStep!2252 (rulesRegex!1006 thiss!11361 rules!1139) (head!6254 (list!12564 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0)))))) (tail!4479 (list!12564 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0)))))))))

(assert (= (and d!825123 c!459166) b!2845130))

(assert (= (and d!825123 (not c!459166)) b!2845131))

(assert (=> d!825123 m!3272593))

(declare-fun m!3273137 () Bool)

(assert (=> d!825123 m!3273137))

(assert (=> b!2845130 m!3272469))

(declare-fun m!3273139 () Bool)

(assert (=> b!2845130 m!3273139))

(assert (=> b!2845131 m!3272593))

(declare-fun m!3273141 () Bool)

(assert (=> b!2845131 m!3273141))

(assert (=> b!2845131 m!3272469))

(assert (=> b!2845131 m!3273141))

(declare-fun m!3273143 () Bool)

(assert (=> b!2845131 m!3273143))

(assert (=> b!2845131 m!3272593))

(declare-fun m!3273145 () Bool)

(assert (=> b!2845131 m!3273145))

(assert (=> b!2845131 m!3273143))

(assert (=> b!2845131 m!3273145))

(declare-fun m!3273147 () Bool)

(assert (=> b!2845131 m!3273147))

(assert (=> d!824927 d!825123))

(declare-fun d!825125 () Bool)

(declare-fun c!459169 () Bool)

(assert (=> d!825125 (= c!459169 (= lt!1012287 (size!26201 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun e!1802647 () Bool)

(assert (=> d!825125 (= (prefixMatchZipperSequence!746 lt!1012286 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287) e!1802647)))

(declare-fun b!2845136 () Bool)

(declare-fun lostCauseZipper!518 ((InoxSet Context!4982)) Bool)

(assert (=> b!2845136 (= e!1802647 (not (lostCauseZipper!518 lt!1012286)))))

(declare-fun b!2845137 () Bool)

(declare-fun derivationStepZipper!404 ((InoxSet Context!4982) C!17108) (InoxSet Context!4982))

(assert (=> b!2845137 (= e!1802647 (prefixMatchZipperSequence!746 (derivationStepZipper!404 lt!1012286 (apply!7855 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287)) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) (+ lt!1012287 1)))))

(assert (= (and d!825125 c!459169) b!2845136))

(assert (= (and d!825125 (not c!459169)) b!2845137))

(assert (=> d!825125 m!3272471))

(declare-fun m!3273149 () Bool)

(assert (=> d!825125 m!3273149))

(declare-fun m!3273151 () Bool)

(assert (=> b!2845136 m!3273151))

(assert (=> b!2845137 m!3272471))

(declare-fun m!3273153 () Bool)

(assert (=> b!2845137 m!3273153))

(assert (=> b!2845137 m!3273153))

(declare-fun m!3273155 () Bool)

(assert (=> b!2845137 m!3273155))

(assert (=> b!2845137 m!3273155))

(assert (=> b!2845137 m!3272471))

(declare-fun m!3273157 () Bool)

(assert (=> b!2845137 m!3273157))

(assert (=> d!824927 d!825125))

(declare-fun d!825127 () Bool)

(assert (=> d!825127 (= (list!12564 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0)))) (list!12565 (c!459093 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun bs!519467 () Bool)

(assert (= bs!519467 d!825127))

(declare-fun m!3273159 () Bool)

(assert (=> bs!519467 m!3273159))

(assert (=> d!824927 d!825127))

(declare-fun d!825129 () Bool)

(declare-fun e!1802650 () Bool)

(assert (=> d!825129 e!1802650))

(declare-fun res!1183447 () Bool)

(assert (=> d!825129 (=> (not res!1183447) (not e!1802650))))

(assert (=> d!825129 (= res!1183447 (validRegex!3356 (rulesRegex!1006 thiss!11361 rules!1139)))))

(assert (=> d!825129 (= (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)) (store ((as const (Array Context!4982 Bool)) false) (Context!4983 (Cons!33720 (rulesRegex!1006 thiss!11361 rules!1139) Nil!33720)) true))))

(declare-fun b!2845140 () Bool)

(declare-fun unfocusZipper!172 (List!33852) Regex!8463)

(assert (=> b!2845140 (= e!1802650 (= (unfocusZipper!172 (toList!1900 (store ((as const (Array Context!4982 Bool)) false) (Context!4983 (Cons!33720 (rulesRegex!1006 thiss!11361 rules!1139) Nil!33720)) true))) (rulesRegex!1006 thiss!11361 rules!1139)))))

(assert (= (and d!825129 res!1183447) b!2845140))

(assert (=> d!825129 m!3272469))

(assert (=> d!825129 m!3272601))

(declare-fun m!3273161 () Bool)

(assert (=> d!825129 m!3273161))

(assert (=> b!2845140 m!3273161))

(assert (=> b!2845140 m!3273161))

(declare-fun m!3273163 () Bool)

(assert (=> b!2845140 m!3273163))

(assert (=> b!2845140 m!3273163))

(declare-fun m!3273165 () Bool)

(assert (=> b!2845140 m!3273165))

(assert (=> d!824927 d!825129))

(declare-fun call!183499 () Bool)

(declare-fun bm!183494 () Bool)

(declare-fun c!459175 () Bool)

(declare-fun c!459174 () Bool)

(assert (=> bm!183494 (= call!183499 (validRegex!3356 (ite c!459175 (reg!8792 (rulesRegex!1006 thiss!11361 rules!1139)) (ite c!459174 (regOne!17439 (rulesRegex!1006 thiss!11361 rules!1139)) (regOne!17438 (rulesRegex!1006 thiss!11361 rules!1139))))))))

(declare-fun b!2845159 () Bool)

(declare-fun e!1802669 () Bool)

(declare-fun e!1802671 () Bool)

(assert (=> b!2845159 (= e!1802669 e!1802671)))

(declare-fun res!1183460 () Bool)

(assert (=> b!2845159 (=> (not res!1183460) (not e!1802671))))

(declare-fun call!183500 () Bool)

(assert (=> b!2845159 (= res!1183460 call!183500)))

(declare-fun b!2845161 () Bool)

(declare-fun e!1802670 () Bool)

(declare-fun call!183501 () Bool)

(assert (=> b!2845161 (= e!1802670 call!183501)))

(declare-fun b!2845162 () Bool)

(declare-fun res!1183459 () Bool)

(assert (=> b!2845162 (=> res!1183459 e!1802669)))

(assert (=> b!2845162 (= res!1183459 (not ((_ is Concat!13765) (rulesRegex!1006 thiss!11361 rules!1139))))))

(declare-fun e!1802665 () Bool)

(assert (=> b!2845162 (= e!1802665 e!1802669)))

(declare-fun b!2845163 () Bool)

(declare-fun e!1802667 () Bool)

(assert (=> b!2845163 (= e!1802667 e!1802665)))

(assert (=> b!2845163 (= c!459174 ((_ is Union!8463) (rulesRegex!1006 thiss!11361 rules!1139)))))

(declare-fun b!2845164 () Bool)

(declare-fun e!1802666 () Bool)

(assert (=> b!2845164 (= e!1802666 e!1802667)))

(assert (=> b!2845164 (= c!459175 ((_ is Star!8463) (rulesRegex!1006 thiss!11361 rules!1139)))))

(declare-fun bm!183495 () Bool)

(assert (=> bm!183495 (= call!183501 (validRegex!3356 (ite c!459174 (regTwo!17439 (rulesRegex!1006 thiss!11361 rules!1139)) (regTwo!17438 (rulesRegex!1006 thiss!11361 rules!1139)))))))

(declare-fun b!2845165 () Bool)

(assert (=> b!2845165 (= e!1802671 call!183501)))

(declare-fun b!2845166 () Bool)

(declare-fun e!1802668 () Bool)

(assert (=> b!2845166 (= e!1802667 e!1802668)))

(declare-fun res!1183462 () Bool)

(declare-fun nullable!2624 (Regex!8463) Bool)

(assert (=> b!2845166 (= res!1183462 (not (nullable!2624 (reg!8792 (rulesRegex!1006 thiss!11361 rules!1139)))))))

(assert (=> b!2845166 (=> (not res!1183462) (not e!1802668))))

(declare-fun d!825131 () Bool)

(declare-fun res!1183461 () Bool)

(assert (=> d!825131 (=> res!1183461 e!1802666)))

(assert (=> d!825131 (= res!1183461 ((_ is ElementMatch!8463) (rulesRegex!1006 thiss!11361 rules!1139)))))

(assert (=> d!825131 (= (validRegex!3356 (rulesRegex!1006 thiss!11361 rules!1139)) e!1802666)))

(declare-fun b!2845160 () Bool)

(declare-fun res!1183458 () Bool)

(assert (=> b!2845160 (=> (not res!1183458) (not e!1802670))))

(assert (=> b!2845160 (= res!1183458 call!183500)))

(assert (=> b!2845160 (= e!1802665 e!1802670)))

(declare-fun b!2845167 () Bool)

(assert (=> b!2845167 (= e!1802668 call!183499)))

(declare-fun bm!183496 () Bool)

(assert (=> bm!183496 (= call!183500 call!183499)))

(assert (= (and d!825131 (not res!1183461)) b!2845164))

(assert (= (and b!2845164 c!459175) b!2845166))

(assert (= (and b!2845164 (not c!459175)) b!2845163))

(assert (= (and b!2845166 res!1183462) b!2845167))

(assert (= (and b!2845163 c!459174) b!2845160))

(assert (= (and b!2845163 (not c!459174)) b!2845162))

(assert (= (and b!2845160 res!1183458) b!2845161))

(assert (= (and b!2845162 (not res!1183459)) b!2845159))

(assert (= (and b!2845159 res!1183460) b!2845165))

(assert (= (or b!2845160 b!2845159) bm!183496))

(assert (= (or b!2845161 b!2845165) bm!183495))

(assert (= (or b!2845167 bm!183496) bm!183494))

(declare-fun m!3273167 () Bool)

(assert (=> bm!183494 m!3273167))

(declare-fun m!3273169 () Bool)

(assert (=> bm!183495 m!3273169))

(declare-fun m!3273171 () Bool)

(assert (=> b!2845166 m!3273171))

(assert (=> d!824927 d!825131))

(declare-fun d!825133 () Bool)

(declare-fun e!1802674 () Bool)

(assert (=> d!825133 e!1802674))

(declare-fun res!1183465 () Bool)

(assert (=> d!825133 (=> (not res!1183465) (not e!1802674))))

(declare-fun lt!1012403 () List!33852)

(declare-fun noDuplicate!552 (List!33852) Bool)

(assert (=> d!825133 (= res!1183465 (noDuplicate!552 lt!1012403))))

(declare-fun choose!16745 ((InoxSet Context!4982)) List!33852)

(assert (=> d!825133 (= lt!1012403 (choose!16745 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139))))))

(assert (=> d!825133 (= (toList!1900 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139))) lt!1012403)))

(declare-fun b!2845170 () Bool)

(declare-fun content!4649 (List!33852) (InoxSet Context!4982))

(assert (=> b!2845170 (= e!1802674 (= (content!4649 lt!1012403) (focus!295 (rulesRegex!1006 thiss!11361 rules!1139))))))

(assert (= (and d!825133 res!1183465) b!2845170))

(declare-fun m!3273173 () Bool)

(assert (=> d!825133 m!3273173))

(assert (=> d!825133 m!3272603))

(declare-fun m!3273175 () Bool)

(assert (=> d!825133 m!3273175))

(declare-fun m!3273177 () Bool)

(assert (=> b!2845170 m!3273177))

(assert (=> d!824927 d!825133))

(declare-fun d!825135 () Bool)

(declare-fun drop!1808 (List!33848 Int) List!33848)

(assert (=> d!825135 (= (dropList!1010 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287) (drop!1808 (list!12565 (c!459093 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))))) lt!1012287))))

(declare-fun bs!519468 () Bool)

(assert (= bs!519468 d!825135))

(assert (=> bs!519468 m!3273159))

(assert (=> bs!519468 m!3273159))

(declare-fun m!3273179 () Bool)

(assert (=> bs!519468 m!3273179))

(assert (=> d!824927 d!825135))

(declare-fun d!825137 () Bool)

(declare-fun c!459178 () Bool)

(assert (=> d!825137 (= c!459178 (isEmpty!18566 lt!1012285))))

(declare-fun e!1802677 () Bool)

(assert (=> d!825137 (= (prefixMatchZipper!225 lt!1012284 lt!1012285) e!1802677)))

(declare-fun b!2845175 () Bool)

(assert (=> b!2845175 (= e!1802677 (not (lostCauseZipper!518 lt!1012284)))))

(declare-fun b!2845176 () Bool)

(assert (=> b!2845176 (= e!1802677 (prefixMatchZipper!225 (derivationStepZipper!404 lt!1012284 (head!6254 lt!1012285)) (tail!4479 lt!1012285)))))

(assert (= (and d!825137 c!459178) b!2845175))

(assert (= (and d!825137 (not c!459178)) b!2845176))

(declare-fun m!3273181 () Bool)

(assert (=> d!825137 m!3273181))

(declare-fun m!3273183 () Bool)

(assert (=> b!2845175 m!3273183))

(declare-fun m!3273185 () Bool)

(assert (=> b!2845176 m!3273185))

(assert (=> b!2845176 m!3273185))

(declare-fun m!3273187 () Bool)

(assert (=> b!2845176 m!3273187))

(declare-fun m!3273189 () Bool)

(assert (=> b!2845176 m!3273189))

(assert (=> b!2845176 m!3273187))

(assert (=> b!2845176 m!3273189))

(declare-fun m!3273191 () Bool)

(assert (=> b!2845176 m!3273191))

(assert (=> d!824927 d!825137))

(declare-fun d!825139 () Bool)

(assert (=> d!825139 (= (prefixMatch!809 (rulesRegex!1006 thiss!11361 rules!1139) lt!1012285) (prefixMatchZipper!225 lt!1012284 lt!1012285))))

(declare-fun lt!1012406 () Unit!47519)

(declare-fun choose!16746 ((InoxSet Context!4982) List!33852 Regex!8463 List!33848) Unit!47519)

(assert (=> d!825139 (= lt!1012406 (choose!16746 lt!1012284 lt!1012290 (rulesRegex!1006 thiss!11361 rules!1139) lt!1012285))))

(assert (=> d!825139 (validRegex!3356 (rulesRegex!1006 thiss!11361 rules!1139))))

(assert (=> d!825139 (= (prefixMatchZipperRegexEquiv!225 lt!1012284 lt!1012290 (rulesRegex!1006 thiss!11361 rules!1139) lt!1012285) lt!1012406)))

(declare-fun bs!519469 () Bool)

(assert (= bs!519469 d!825139))

(assert (=> bs!519469 m!3272469))

(assert (=> bs!519469 m!3272607))

(assert (=> bs!519469 m!3272617))

(assert (=> bs!519469 m!3272469))

(declare-fun m!3273193 () Bool)

(assert (=> bs!519469 m!3273193))

(assert (=> bs!519469 m!3272469))

(assert (=> bs!519469 m!3272601))

(assert (=> d!824927 d!825139))

(declare-fun c!459179 () Bool)

(declare-fun d!825141 () Bool)

(assert (=> d!825141 (= c!459179 (isEmpty!18566 (dropList!1010 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287)))))

(declare-fun e!1802678 () Bool)

(assert (=> d!825141 (= (prefixMatchZipper!225 lt!1012286 (dropList!1010 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287)) e!1802678)))

(declare-fun b!2845177 () Bool)

(assert (=> b!2845177 (= e!1802678 (not (lostCauseZipper!518 lt!1012286)))))

(declare-fun b!2845178 () Bool)

(assert (=> b!2845178 (= e!1802678 (prefixMatchZipper!225 (derivationStepZipper!404 lt!1012286 (head!6254 (dropList!1010 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287))) (tail!4479 (dropList!1010 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287))))))

(assert (= (and d!825141 c!459179) b!2845177))

(assert (= (and d!825141 (not c!459179)) b!2845178))

(assert (=> d!825141 m!3272605))

(declare-fun m!3273195 () Bool)

(assert (=> d!825141 m!3273195))

(assert (=> b!2845177 m!3273151))

(assert (=> b!2845178 m!3272605))

(declare-fun m!3273197 () Bool)

(assert (=> b!2845178 m!3273197))

(assert (=> b!2845178 m!3273197))

(declare-fun m!3273199 () Bool)

(assert (=> b!2845178 m!3273199))

(assert (=> b!2845178 m!3272605))

(declare-fun m!3273201 () Bool)

(assert (=> b!2845178 m!3273201))

(assert (=> b!2845178 m!3273199))

(assert (=> b!2845178 m!3273201))

(declare-fun m!3273203 () Bool)

(assert (=> b!2845178 m!3273203))

(assert (=> d!824927 d!825141))

(declare-fun d!825143 () Bool)

(assert (=> d!825143 (= (prefixMatchZipper!225 lt!1012286 (dropList!1010 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287)) (prefixMatchZipperSequence!746 lt!1012286 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287))))

(declare-fun lt!1012409 () Unit!47519)

(declare-fun choose!16747 ((InoxSet Context!4982) BalanceConc!20554 Int) Unit!47519)

(assert (=> d!825143 (= lt!1012409 (choose!16747 lt!1012286 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287))))

(declare-fun e!1802681 () Bool)

(assert (=> d!825143 e!1802681))

(declare-fun res!1183468 () Bool)

(assert (=> d!825143 (=> (not res!1183468) (not e!1802681))))

(assert (=> d!825143 (= res!1183468 (>= lt!1012287 0))))

(assert (=> d!825143 (= (lemmaprefixMatchZipperSequenceEquivalent!225 lt!1012286 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) lt!1012287) lt!1012409)))

(declare-fun b!2845181 () Bool)

(assert (=> b!2845181 (= e!1802681 (<= lt!1012287 (size!26201 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(assert (= (and d!825143 res!1183468) b!2845181))

(assert (=> d!825143 m!3272471))

(assert (=> d!825143 m!3272605))

(assert (=> d!825143 m!3272605))

(assert (=> d!825143 m!3272613))

(assert (=> d!825143 m!3272471))

(assert (=> d!825143 m!3272597))

(assert (=> d!825143 m!3272471))

(declare-fun m!3273205 () Bool)

(assert (=> d!825143 m!3273205))

(assert (=> b!2845181 m!3272471))

(assert (=> b!2845181 m!3273149))

(assert (=> d!824927 d!825143))

(declare-fun d!825145 () Bool)

(declare-fun lt!1012418 () tuple3!5292)

(assert (=> d!825145 (= (_1!19916 lt!1012418) (prefixMatchZipperSequence!746 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) 0))))

(declare-fun e!1802686 () tuple3!5292)

(assert (=> d!825145 (= lt!1012418 e!1802686)))

(declare-fun c!459182 () Bool)

(assert (=> d!825145 (= c!459182 (= 0 (size!26201 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun e!1802687 () Bool)

(assert (=> d!825145 e!1802687))

(declare-fun res!1183471 () Bool)

(assert (=> d!825145 (=> (not res!1183471) (not e!1802687))))

(assert (=> d!825145 (= res!1183471 (>= 0 0))))

(assert (=> d!825145 (= (prefixMatchZipperSequenceMem!6 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) 0 cacheUp!434 cacheDown!447) lt!1012418)))

(declare-fun b!2845188 () Bool)

(assert (=> b!2845188 (= e!1802687 (<= 0 (size!26201 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))))))))

(declare-fun b!2845189 () Bool)

(assert (=> b!2845189 (= e!1802686 (tuple3!5293 (not (lostCauseZipper!518 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)))) cacheUp!434 cacheDown!447))))

(declare-fun b!2845190 () Bool)

(declare-fun lt!1012417 () tuple3!5292)

(assert (=> b!2845190 (= e!1802686 (tuple3!5293 (_1!19916 lt!1012417) (_2!19916 lt!1012417) (_3!3116 lt!1012417)))))

(declare-datatypes ((tuple3!5294 0))(
  ( (tuple3!5295 (_1!19919 (InoxSet Context!4982)) (_2!19919 CacheUp!2700) (_3!3117 CacheDown!2820)) )
))
(declare-fun lt!1012416 () tuple3!5294)

(declare-fun derivationStepZipperMem!123 ((InoxSet Context!4982) C!17108 CacheUp!2700 CacheDown!2820) tuple3!5294)

(assert (=> b!2845190 (= lt!1012416 (derivationStepZipperMem!123 (focus!295 (rulesRegex!1006 thiss!11361 rules!1139)) (apply!7855 (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) 0) cacheUp!434 cacheDown!447))))

(assert (=> b!2845190 (= lt!1012417 (prefixMatchZipperSequenceMem!6 (_1!19919 lt!1012416) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) (+ 0 1) (_2!19919 lt!1012416) (_3!3117 lt!1012416)))))

(assert (= (and d!825145 res!1183471) b!2845188))

(assert (= (and d!825145 c!459182) b!2845189))

(assert (= (and d!825145 (not c!459182)) b!2845190))

(assert (=> d!825145 m!3272603))

(assert (=> d!825145 m!3272471))

(declare-fun m!3273207 () Bool)

(assert (=> d!825145 m!3273207))

(assert (=> d!825145 m!3272471))

(assert (=> d!825145 m!3273149))

(assert (=> b!2845188 m!3272471))

(assert (=> b!2845188 m!3273149))

(assert (=> b!2845189 m!3272603))

(declare-fun m!3273209 () Bool)

(assert (=> b!2845189 m!3273209))

(assert (=> b!2845190 m!3272471))

(declare-fun m!3273211 () Bool)

(assert (=> b!2845190 m!3273211))

(assert (=> b!2845190 m!3272603))

(assert (=> b!2845190 m!3273211))

(declare-fun m!3273213 () Bool)

(assert (=> b!2845190 m!3273213))

(assert (=> b!2845190 m!3272471))

(declare-fun m!3273215 () Bool)

(assert (=> b!2845190 m!3273215))

(assert (=> d!824927 d!825145))

(declare-fun d!825147 () Bool)

(declare-fun c!459183 () Bool)

(assert (=> d!825147 (= c!459183 (isEmpty!18566 lt!1012285))))

(declare-fun e!1802688 () Bool)

(assert (=> d!825147 (= (prefixMatch!809 (rulesRegex!1006 thiss!11361 rules!1139) lt!1012285) e!1802688)))

(declare-fun b!2845191 () Bool)

(assert (=> b!2845191 (= e!1802688 (not (lostCause!727 (rulesRegex!1006 thiss!11361 rules!1139))))))

(declare-fun b!2845192 () Bool)

(assert (=> b!2845192 (= e!1802688 (prefixMatch!809 (derivativeStep!2252 (rulesRegex!1006 thiss!11361 rules!1139) (head!6254 lt!1012285)) (tail!4479 lt!1012285)))))

(assert (= (and d!825147 c!459183) b!2845191))

(assert (= (and d!825147 (not c!459183)) b!2845192))

(assert (=> d!825147 m!3273181))

(assert (=> b!2845191 m!3272469))

(assert (=> b!2845191 m!3273139))

(assert (=> b!2845192 m!3273185))

(assert (=> b!2845192 m!3272469))

(assert (=> b!2845192 m!3273185))

(declare-fun m!3273217 () Bool)

(assert (=> b!2845192 m!3273217))

(assert (=> b!2845192 m!3273189))

(assert (=> b!2845192 m!3273217))

(assert (=> b!2845192 m!3273189))

(declare-fun m!3273219 () Bool)

(assert (=> b!2845192 m!3273219))

(assert (=> d!824927 d!825147))

(declare-fun bs!519470 () Bool)

(declare-fun d!825149 () Bool)

(assert (= bs!519470 (and d!825149 d!825111)))

(declare-fun lambda!104432 () Int)

(assert (=> bs!519470 (= lambda!104432 lambda!104430)))

(declare-fun bs!519471 () Bool)

(assert (= bs!519471 (and d!825149 d!825057)))

(assert (=> bs!519471 (= lambda!104432 lambda!104411)))

(declare-fun bs!519472 () Bool)

(assert (= bs!519472 (and d!825149 d!824963)))

(assert (=> bs!519472 (= lambda!104432 lambda!104391)))

(declare-fun bs!519473 () Bool)

(assert (= bs!519473 (and d!825149 d!825091)))

(assert (=> bs!519473 (= lambda!104432 lambda!104428)))

(declare-fun bs!519474 () Bool)

(assert (= bs!519474 (and d!825149 d!825117)))

(assert (=> bs!519474 (= lambda!104432 lambda!104431)))

(declare-fun bs!519475 () Bool)

(assert (= bs!519475 (and d!825149 d!824971)))

(assert (=> bs!519475 (= lambda!104432 lambda!104394)))

(declare-fun bs!519476 () Bool)

(assert (= bs!519476 (and d!825149 d!824965)))

(assert (=> bs!519476 (= lambda!104432 lambda!104392)))

(declare-fun bs!519477 () Bool)

(assert (= bs!519477 (and d!825149 d!825059)))

(assert (=> bs!519477 (= lambda!104432 lambda!104412)))

(declare-fun bs!519478 () Bool)

(assert (= bs!519478 (and d!825149 d!825065)))

(assert (=> bs!519478 (= lambda!104432 lambda!104422)))

(declare-fun bs!519479 () Bool)

(assert (= bs!519479 (and d!825149 d!824961)))

(assert (=> bs!519479 (= lambda!104432 lambda!104390)))

(declare-fun bs!519480 () Bool)

(assert (= bs!519480 (and d!825149 d!824959)))

(assert (=> bs!519480 (= lambda!104432 lambda!104389)))

(declare-fun bs!519481 () Bool)

(assert (= bs!519481 (and d!825149 d!824969)))

(assert (=> bs!519481 (= lambda!104432 lambda!104393)))

(declare-fun bs!519482 () Bool)

(assert (= bs!519482 (and d!825149 d!825077)))

(assert (=> bs!519482 (= lambda!104432 lambda!104424)))

(declare-fun bs!519483 () Bool)

(assert (= bs!519483 (and d!825149 d!824955)))

(assert (=> bs!519483 (= lambda!104432 lambda!104385)))

(declare-fun bs!519484 () Bool)

(assert (= bs!519484 (and d!825149 d!825079)))

(assert (=> bs!519484 (= lambda!104432 lambda!104425)))

(declare-fun bs!519485 () Bool)

(assert (= bs!519485 (and d!825149 d!825035)))

(assert (=> bs!519485 (= lambda!104432 lambda!104403)))

(declare-fun bs!519486 () Bool)

(assert (= bs!519486 (and d!825149 d!825069)))

(assert (=> bs!519486 (= lambda!104432 lambda!104423)))

(declare-fun bs!519487 () Bool)

(assert (= bs!519487 (and d!825149 d!825093)))

(assert (=> bs!519487 (= lambda!104432 lambda!104429)))

(declare-fun bs!519488 () Bool)

(assert (= bs!519488 (and d!825149 d!824993)))

(assert (=> bs!519488 (= lambda!104432 lambda!104395)))

(declare-fun bs!519489 () Bool)

(assert (= bs!519489 (and d!825149 d!825061)))

(assert (=> bs!519489 (= lambda!104432 lambda!104413)))

(declare-fun bs!519490 () Bool)

(assert (= bs!519490 (and d!825149 d!825063)))

(assert (=> bs!519490 (= lambda!104432 lambda!104419)))

(assert (=> d!825149 (= (inv!45728 setElem!24858) (forall!6925 (exprs!2991 setElem!24858) lambda!104432))))

(declare-fun bs!519491 () Bool)

(assert (= bs!519491 d!825149))

(declare-fun m!3273221 () Bool)

(assert (=> bs!519491 m!3273221))

(assert (=> setNonEmpty!24858 d!825149))

(declare-fun d!825151 () Bool)

(assert (=> d!825151 (= (list!12564 lt!1012296) (list!12565 (c!459093 lt!1012296)))))

(declare-fun bs!519492 () Bool)

(assert (= bs!519492 d!825151))

(declare-fun m!3273223 () Bool)

(assert (=> bs!519492 m!3273223))

(assert (=> d!824931 d!825151))

(declare-fun d!825153 () Bool)

(declare-fun e!1802691 () Bool)

(assert (=> d!825153 e!1802691))

(declare-fun res!1183474 () Bool)

(assert (=> d!825153 (=> (not res!1183474) (not e!1802691))))

(declare-fun lt!1012421 () BalanceConc!20554)

(assert (=> d!825153 (= res!1183474 (= (list!12564 lt!1012421) (Cons!33724 (apply!7855 lt!1012244 0) Nil!33724)))))

(declare-fun choose!16748 (C!17108) BalanceConc!20554)

(assert (=> d!825153 (= lt!1012421 (choose!16748 (apply!7855 lt!1012244 0)))))

(assert (=> d!825153 (= (singleton!963 (apply!7855 lt!1012244 0)) lt!1012421)))

(declare-fun b!2845195 () Bool)

(assert (=> b!2845195 (= e!1802691 (isBalanced!3153 (c!459093 lt!1012421)))))

(assert (= (and d!825153 res!1183474) b!2845195))

(declare-fun m!3273225 () Bool)

(assert (=> d!825153 m!3273225))

(assert (=> d!825153 m!3272465))

(declare-fun m!3273227 () Bool)

(assert (=> d!825153 m!3273227))

(declare-fun m!3273229 () Bool)

(assert (=> b!2845195 m!3273229))

(assert (=> d!824931 d!825153))

(declare-fun bs!519493 () Bool)

(declare-fun d!825155 () Bool)

(assert (= bs!519493 (and d!825155 d!825111)))

(declare-fun lambda!104433 () Int)

(assert (=> bs!519493 (= lambda!104433 lambda!104430)))

(declare-fun bs!519494 () Bool)

(assert (= bs!519494 (and d!825155 d!825057)))

(assert (=> bs!519494 (= lambda!104433 lambda!104411)))

(declare-fun bs!519495 () Bool)

(assert (= bs!519495 (and d!825155 d!824963)))

(assert (=> bs!519495 (= lambda!104433 lambda!104391)))

(declare-fun bs!519496 () Bool)

(assert (= bs!519496 (and d!825155 d!825091)))

(assert (=> bs!519496 (= lambda!104433 lambda!104428)))

(declare-fun bs!519497 () Bool)

(assert (= bs!519497 (and d!825155 d!825117)))

(assert (=> bs!519497 (= lambda!104433 lambda!104431)))

(declare-fun bs!519498 () Bool)

(assert (= bs!519498 (and d!825155 d!824971)))

(assert (=> bs!519498 (= lambda!104433 lambda!104394)))

(declare-fun bs!519499 () Bool)

(assert (= bs!519499 (and d!825155 d!824965)))

(assert (=> bs!519499 (= lambda!104433 lambda!104392)))

(declare-fun bs!519500 () Bool)

(assert (= bs!519500 (and d!825155 d!825059)))

(assert (=> bs!519500 (= lambda!104433 lambda!104412)))

(declare-fun bs!519501 () Bool)

(assert (= bs!519501 (and d!825155 d!825065)))

(assert (=> bs!519501 (= lambda!104433 lambda!104422)))

(declare-fun bs!519502 () Bool)

(assert (= bs!519502 (and d!825155 d!824961)))

(assert (=> bs!519502 (= lambda!104433 lambda!104390)))

(declare-fun bs!519503 () Bool)

(assert (= bs!519503 (and d!825155 d!824959)))

(assert (=> bs!519503 (= lambda!104433 lambda!104389)))

(declare-fun bs!519504 () Bool)

(assert (= bs!519504 (and d!825155 d!824969)))

(assert (=> bs!519504 (= lambda!104433 lambda!104393)))

(declare-fun bs!519505 () Bool)

(assert (= bs!519505 (and d!825155 d!825077)))

(assert (=> bs!519505 (= lambda!104433 lambda!104424)))

(declare-fun bs!519506 () Bool)

(assert (= bs!519506 (and d!825155 d!824955)))

(assert (=> bs!519506 (= lambda!104433 lambda!104385)))

(declare-fun bs!519507 () Bool)

(assert (= bs!519507 (and d!825155 d!825079)))

(assert (=> bs!519507 (= lambda!104433 lambda!104425)))

(declare-fun bs!519508 () Bool)

(assert (= bs!519508 (and d!825155 d!825149)))

(assert (=> bs!519508 (= lambda!104433 lambda!104432)))

(declare-fun bs!519509 () Bool)

(assert (= bs!519509 (and d!825155 d!825035)))

(assert (=> bs!519509 (= lambda!104433 lambda!104403)))

(declare-fun bs!519510 () Bool)

(assert (= bs!519510 (and d!825155 d!825069)))

(assert (=> bs!519510 (= lambda!104433 lambda!104423)))

(declare-fun bs!519511 () Bool)

(assert (= bs!519511 (and d!825155 d!825093)))

(assert (=> bs!519511 (= lambda!104433 lambda!104429)))

(declare-fun bs!519512 () Bool)

(assert (= bs!519512 (and d!825155 d!824993)))

(assert (=> bs!519512 (= lambda!104433 lambda!104395)))

(declare-fun bs!519513 () Bool)

(assert (= bs!519513 (and d!825155 d!825061)))

(assert (=> bs!519513 (= lambda!104433 lambda!104413)))

(declare-fun bs!519514 () Bool)

(assert (= bs!519514 (and d!825155 d!825063)))

(assert (=> bs!519514 (= lambda!104433 lambda!104419)))

(assert (=> d!825155 (= (inv!45728 setElem!24850) (forall!6925 (exprs!2991 setElem!24850) lambda!104433))))

(declare-fun bs!519515 () Bool)

(assert (= bs!519515 d!825155))

(declare-fun m!3273231 () Bool)

(assert (=> bs!519515 m!3273231))

(assert (=> setNonEmpty!24850 d!825155))

(declare-fun d!825157 () Bool)

(assert (=> d!825157 (= (inv!15 (value!162954 t1!27)) (= (charsToBigInt!0 (text!37563 (value!162954 t1!27)) 0) (value!162949 (value!162954 t1!27))))))

(declare-fun bs!519516 () Bool)

(assert (= bs!519516 d!825157))

(declare-fun m!3273233 () Bool)

(assert (=> bs!519516 m!3273233))

(assert (=> b!2844696 d!825157))

(declare-fun bs!519517 () Bool)

(declare-fun d!825159 () Bool)

(assert (= bs!519517 (and d!825159 d!825057)))

(declare-fun lambda!104434 () Int)

(assert (=> bs!519517 (= lambda!104434 lambda!104411)))

(declare-fun bs!519518 () Bool)

(assert (= bs!519518 (and d!825159 d!824963)))

(assert (=> bs!519518 (= lambda!104434 lambda!104391)))

(declare-fun bs!519519 () Bool)

(assert (= bs!519519 (and d!825159 d!825091)))

(assert (=> bs!519519 (= lambda!104434 lambda!104428)))

(declare-fun bs!519520 () Bool)

(assert (= bs!519520 (and d!825159 d!825117)))

(assert (=> bs!519520 (= lambda!104434 lambda!104431)))

(declare-fun bs!519521 () Bool)

(assert (= bs!519521 (and d!825159 d!824971)))

(assert (=> bs!519521 (= lambda!104434 lambda!104394)))

(declare-fun bs!519522 () Bool)

(assert (= bs!519522 (and d!825159 d!824965)))

(assert (=> bs!519522 (= lambda!104434 lambda!104392)))

(declare-fun bs!519523 () Bool)

(assert (= bs!519523 (and d!825159 d!825059)))

(assert (=> bs!519523 (= lambda!104434 lambda!104412)))

(declare-fun bs!519524 () Bool)

(assert (= bs!519524 (and d!825159 d!825065)))

(assert (=> bs!519524 (= lambda!104434 lambda!104422)))

(declare-fun bs!519525 () Bool)

(assert (= bs!519525 (and d!825159 d!824961)))

(assert (=> bs!519525 (= lambda!104434 lambda!104390)))

(declare-fun bs!519526 () Bool)

(assert (= bs!519526 (and d!825159 d!824959)))

(assert (=> bs!519526 (= lambda!104434 lambda!104389)))

(declare-fun bs!519527 () Bool)

(assert (= bs!519527 (and d!825159 d!824969)))

(assert (=> bs!519527 (= lambda!104434 lambda!104393)))

(declare-fun bs!519528 () Bool)

(assert (= bs!519528 (and d!825159 d!825077)))

(assert (=> bs!519528 (= lambda!104434 lambda!104424)))

(declare-fun bs!519529 () Bool)

(assert (= bs!519529 (and d!825159 d!824955)))

(assert (=> bs!519529 (= lambda!104434 lambda!104385)))

(declare-fun bs!519530 () Bool)

(assert (= bs!519530 (and d!825159 d!825079)))

(assert (=> bs!519530 (= lambda!104434 lambda!104425)))

(declare-fun bs!519531 () Bool)

(assert (= bs!519531 (and d!825159 d!825149)))

(assert (=> bs!519531 (= lambda!104434 lambda!104432)))

(declare-fun bs!519532 () Bool)

(assert (= bs!519532 (and d!825159 d!825155)))

(assert (=> bs!519532 (= lambda!104434 lambda!104433)))

(declare-fun bs!519533 () Bool)

(assert (= bs!519533 (and d!825159 d!825111)))

(assert (=> bs!519533 (= lambda!104434 lambda!104430)))

(declare-fun bs!519534 () Bool)

(assert (= bs!519534 (and d!825159 d!825035)))

(assert (=> bs!519534 (= lambda!104434 lambda!104403)))

(declare-fun bs!519535 () Bool)

(assert (= bs!519535 (and d!825159 d!825069)))

(assert (=> bs!519535 (= lambda!104434 lambda!104423)))

(declare-fun bs!519536 () Bool)

(assert (= bs!519536 (and d!825159 d!825093)))

(assert (=> bs!519536 (= lambda!104434 lambda!104429)))

(declare-fun bs!519537 () Bool)

(assert (= bs!519537 (and d!825159 d!824993)))

(assert (=> bs!519537 (= lambda!104434 lambda!104395)))

(declare-fun bs!519538 () Bool)

(assert (= bs!519538 (and d!825159 d!825061)))

(assert (=> bs!519538 (= lambda!104434 lambda!104413)))

(declare-fun bs!519539 () Bool)

(assert (= bs!519539 (and d!825159 d!825063)))

(assert (=> bs!519539 (= lambda!104434 lambda!104419)))

(assert (=> d!825159 (= (inv!45728 (_2!19912 (_1!19913 (h!39141 mapValue!18597)))) (forall!6925 (exprs!2991 (_2!19912 (_1!19913 (h!39141 mapValue!18597)))) lambda!104434))))

(declare-fun bs!519540 () Bool)

(assert (= bs!519540 d!825159))

(declare-fun m!3273235 () Bool)

(assert (=> bs!519540 m!3273235))

(assert (=> b!2844867 d!825159))

(assert (=> d!824953 d!824939))

(assert (=> d!824953 d!825015))

(declare-fun d!825161 () Bool)

(assert (=> d!825161 (= (list!12563 (_1!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27))))) (list!12566 (c!459105 (_1!19917 (lex!2031 thiss!11361 rules!1139 (print!1750 thiss!11361 (singletonSeq!2188 t1!27)))))))))

(declare-fun bs!519541 () Bool)

(assert (= bs!519541 d!825161))

(declare-fun m!3273237 () Bool)

(assert (=> bs!519541 m!3273237))

(assert (=> d!824953 d!825161))

(declare-fun d!825163 () Bool)

(declare-fun lt!1012422 () Int)

(assert (=> d!825163 (= lt!1012422 (size!26205 (list!12563 (_1!19917 lt!1012305))))))

(assert (=> d!825163 (= lt!1012422 (size!26206 (c!459105 (_1!19917 lt!1012305))))))

(assert (=> d!825163 (= (size!26199 (_1!19917 lt!1012305)) lt!1012422)))

(declare-fun bs!519542 () Bool)

(assert (= bs!519542 d!825163))

(assert (=> bs!519542 m!3272769))

(assert (=> bs!519542 m!3272769))

(declare-fun m!3273239 () Bool)

(assert (=> bs!519542 m!3273239))

(declare-fun m!3273241 () Bool)

(assert (=> bs!519542 m!3273241))

(assert (=> d!824953 d!825163))

(assert (=> d!824953 d!825017))

(declare-fun d!825165 () Bool)

(assert (=> d!825165 (= (list!12563 (singletonSeq!2188 t1!27)) (list!12566 (c!459105 (singletonSeq!2188 t1!27))))))

(declare-fun bs!519543 () Bool)

(assert (= bs!519543 d!825165))

(declare-fun m!3273243 () Bool)

(assert (=> bs!519543 m!3273243))

(assert (=> d!824953 d!825165))

(assert (=> d!824953 d!825019))

(declare-fun d!825167 () Bool)

(declare-fun lt!1012423 () Token!9546)

(assert (=> d!825167 (= lt!1012423 (apply!7859 (list!12563 (_1!19917 lt!1012251)) 0))))

(assert (=> d!825167 (= lt!1012423 (apply!7860 (c!459105 (_1!19917 lt!1012251)) 0))))

(declare-fun e!1802692 () Bool)

(assert (=> d!825167 e!1802692))

(declare-fun res!1183475 () Bool)

(assert (=> d!825167 (=> (not res!1183475) (not e!1802692))))

(assert (=> d!825167 (= res!1183475 (<= 0 0))))

(assert (=> d!825167 (= (apply!7856 (_1!19917 lt!1012251) 0) lt!1012423)))

(declare-fun b!2845196 () Bool)

(assert (=> b!2845196 (= e!1802692 (< 0 (size!26199 (_1!19917 lt!1012251))))))

(assert (= (and d!825167 res!1183475) b!2845196))

(assert (=> d!825167 m!3273097))

(assert (=> d!825167 m!3273097))

(declare-fun m!3273245 () Bool)

(assert (=> d!825167 m!3273245))

(declare-fun m!3273247 () Bool)

(assert (=> d!825167 m!3273247))

(assert (=> b!2845196 m!3272519))

(assert (=> b!2844709 d!825167))

(declare-fun d!825169 () Bool)

(declare-fun lt!1012426 () C!17108)

(declare-fun contains!6120 (List!33848 C!17108) Bool)

(assert (=> d!825169 (contains!6120 (list!12564 lt!1012244) lt!1012426)))

(declare-fun e!1802697 () C!17108)

(assert (=> d!825169 (= lt!1012426 e!1802697)))

(declare-fun c!459186 () Bool)

(assert (=> d!825169 (= c!459186 (= 0 0))))

(declare-fun e!1802698 () Bool)

(assert (=> d!825169 e!1802698))

(declare-fun res!1183478 () Bool)

(assert (=> d!825169 (=> (not res!1183478) (not e!1802698))))

(assert (=> d!825169 (= res!1183478 (<= 0 0))))

(assert (=> d!825169 (= (apply!7857 (list!12564 lt!1012244) 0) lt!1012426)))

(declare-fun b!2845203 () Bool)

(assert (=> b!2845203 (= e!1802698 (< 0 (size!26200 (list!12564 lt!1012244))))))

(declare-fun b!2845204 () Bool)

(assert (=> b!2845204 (= e!1802697 (head!6254 (list!12564 lt!1012244)))))

(declare-fun b!2845205 () Bool)

(assert (=> b!2845205 (= e!1802697 (apply!7857 (tail!4479 (list!12564 lt!1012244)) (- 0 1)))))

(assert (= (and d!825169 res!1183478) b!2845203))

(assert (= (and d!825169 c!459186) b!2845204))

(assert (= (and d!825169 (not c!459186)) b!2845205))

(assert (=> d!825169 m!3272631))

(declare-fun m!3273249 () Bool)

(assert (=> d!825169 m!3273249))

(assert (=> b!2845203 m!3272631))

(assert (=> b!2845203 m!3272739))

(assert (=> b!2845204 m!3272631))

(declare-fun m!3273251 () Bool)

(assert (=> b!2845204 m!3273251))

(assert (=> b!2845205 m!3272631))

(declare-fun m!3273253 () Bool)

(assert (=> b!2845205 m!3273253))

(assert (=> b!2845205 m!3273253))

(declare-fun m!3273255 () Bool)

(assert (=> b!2845205 m!3273255))

(assert (=> d!824933 d!825169))

(assert (=> d!824933 d!825041))

(declare-fun bm!183499 () Bool)

(declare-fun c!459195 () Bool)

(declare-fun c!459194 () Bool)

(assert (=> bm!183499 (= c!459195 c!459194)))

(declare-fun call!183504 () C!17108)

(declare-fun e!1802707 () Int)

(assert (=> bm!183499 (= call!183504 (apply!7858 (ite c!459194 (left!25404 (c!459093 lt!1012244)) (right!25734 (c!459093 lt!1012244))) e!1802707))))

(declare-fun b!2845220 () Bool)

(declare-fun e!1802709 () C!17108)

(declare-fun apply!7861 (IArray!20921 Int) C!17108)

(assert (=> b!2845220 (= e!1802709 (apply!7861 (xs!13574 (c!459093 lt!1012244)) 0))))

(declare-fun b!2845222 () Bool)

(declare-fun e!1802708 () Bool)

(assert (=> b!2845222 (= e!1802708 (< 0 (size!26202 (c!459093 lt!1012244))))))

(declare-fun b!2845223 () Bool)

(declare-fun e!1802710 () C!17108)

(assert (=> b!2845223 (= e!1802709 e!1802710)))

(declare-fun lt!1012432 () Bool)

(declare-fun appendIndex!298 (List!33848 List!33848 Int) Bool)

(assert (=> b!2845223 (= lt!1012432 (appendIndex!298 (list!12565 (left!25404 (c!459093 lt!1012244))) (list!12565 (right!25734 (c!459093 lt!1012244))) 0))))

(assert (=> b!2845223 (= c!459194 (< 0 (size!26202 (left!25404 (c!459093 lt!1012244)))))))

(declare-fun b!2845224 () Bool)

(assert (=> b!2845224 (= e!1802710 call!183504)))

(declare-fun b!2845221 () Bool)

(assert (=> b!2845221 (= e!1802707 0)))

(declare-fun d!825171 () Bool)

(declare-fun lt!1012431 () C!17108)

(assert (=> d!825171 (= lt!1012431 (apply!7857 (list!12565 (c!459093 lt!1012244)) 0))))

(assert (=> d!825171 (= lt!1012431 e!1802709)))

(declare-fun c!459193 () Bool)

(assert (=> d!825171 (= c!459193 ((_ is Leaf!15913) (c!459093 lt!1012244)))))

(assert (=> d!825171 e!1802708))

(declare-fun res!1183481 () Bool)

(assert (=> d!825171 (=> (not res!1183481) (not e!1802708))))

(assert (=> d!825171 (= res!1183481 (<= 0 0))))

(assert (=> d!825171 (= (apply!7858 (c!459093 lt!1012244) 0) lt!1012431)))

(declare-fun b!2845225 () Bool)

(assert (=> b!2845225 (= e!1802710 call!183504)))

(declare-fun b!2845226 () Bool)

(assert (=> b!2845226 (= e!1802707 (- 0 (size!26202 (left!25404 (c!459093 lt!1012244)))))))

(assert (= (and d!825171 res!1183481) b!2845222))

(assert (= (and d!825171 c!459193) b!2845220))

(assert (= (and d!825171 (not c!459193)) b!2845223))

(assert (= (and b!2845223 c!459194) b!2845224))

(assert (= (and b!2845223 (not c!459194)) b!2845225))

(assert (= (or b!2845224 b!2845225) bm!183499))

(assert (= (and bm!183499 c!459195) b!2845221))

(assert (= (and bm!183499 (not c!459195)) b!2845226))

(assert (=> b!2845222 m!3272741))

(declare-fun m!3273257 () Bool)

(assert (=> b!2845220 m!3273257))

(declare-fun m!3273259 () Bool)

(assert (=> b!2845226 m!3273259))

(declare-fun m!3273261 () Bool)

(assert (=> bm!183499 m!3273261))

(assert (=> d!825171 m!3272938))

(assert (=> d!825171 m!3272938))

(declare-fun m!3273263 () Bool)

(assert (=> d!825171 m!3273263))

(declare-fun m!3273265 () Bool)

(assert (=> b!2845223 m!3273265))

(declare-fun m!3273267 () Bool)

(assert (=> b!2845223 m!3273267))

(assert (=> b!2845223 m!3273265))

(assert (=> b!2845223 m!3273267))

(declare-fun m!3273269 () Bool)

(assert (=> b!2845223 m!3273269))

(assert (=> b!2845223 m!3273259))

(assert (=> d!824933 d!825171))

(declare-fun bs!519544 () Bool)

(declare-fun d!825173 () Bool)

(assert (= bs!519544 (and d!825173 d!825057)))

(declare-fun lambda!104435 () Int)

(assert (=> bs!519544 (= lambda!104435 lambda!104411)))

(declare-fun bs!519545 () Bool)

(assert (= bs!519545 (and d!825173 d!824963)))

(assert (=> bs!519545 (= lambda!104435 lambda!104391)))

(declare-fun bs!519546 () Bool)

(assert (= bs!519546 (and d!825173 d!825091)))

(assert (=> bs!519546 (= lambda!104435 lambda!104428)))

(declare-fun bs!519547 () Bool)

(assert (= bs!519547 (and d!825173 d!825117)))

(assert (=> bs!519547 (= lambda!104435 lambda!104431)))

(declare-fun bs!519548 () Bool)

(assert (= bs!519548 (and d!825173 d!824971)))

(assert (=> bs!519548 (= lambda!104435 lambda!104394)))

(declare-fun bs!519549 () Bool)

(assert (= bs!519549 (and d!825173 d!824965)))

(assert (=> bs!519549 (= lambda!104435 lambda!104392)))

(declare-fun bs!519550 () Bool)

(assert (= bs!519550 (and d!825173 d!825059)))

(assert (=> bs!519550 (= lambda!104435 lambda!104412)))

(declare-fun bs!519551 () Bool)

(assert (= bs!519551 (and d!825173 d!825065)))

(assert (=> bs!519551 (= lambda!104435 lambda!104422)))

(declare-fun bs!519552 () Bool)

(assert (= bs!519552 (and d!825173 d!824961)))

(assert (=> bs!519552 (= lambda!104435 lambda!104390)))

(declare-fun bs!519553 () Bool)

(assert (= bs!519553 (and d!825173 d!824959)))

(assert (=> bs!519553 (= lambda!104435 lambda!104389)))

(declare-fun bs!519554 () Bool)

(assert (= bs!519554 (and d!825173 d!824969)))

(assert (=> bs!519554 (= lambda!104435 lambda!104393)))

(declare-fun bs!519555 () Bool)

(assert (= bs!519555 (and d!825173 d!825159)))

(assert (=> bs!519555 (= lambda!104435 lambda!104434)))

(declare-fun bs!519556 () Bool)

(assert (= bs!519556 (and d!825173 d!825077)))

(assert (=> bs!519556 (= lambda!104435 lambda!104424)))

(declare-fun bs!519557 () Bool)

(assert (= bs!519557 (and d!825173 d!824955)))

(assert (=> bs!519557 (= lambda!104435 lambda!104385)))

(declare-fun bs!519558 () Bool)

(assert (= bs!519558 (and d!825173 d!825079)))

(assert (=> bs!519558 (= lambda!104435 lambda!104425)))

(declare-fun bs!519559 () Bool)

(assert (= bs!519559 (and d!825173 d!825149)))

(assert (=> bs!519559 (= lambda!104435 lambda!104432)))

(declare-fun bs!519560 () Bool)

(assert (= bs!519560 (and d!825173 d!825155)))

(assert (=> bs!519560 (= lambda!104435 lambda!104433)))

(declare-fun bs!519561 () Bool)

(assert (= bs!519561 (and d!825173 d!825111)))

(assert (=> bs!519561 (= lambda!104435 lambda!104430)))

(declare-fun bs!519562 () Bool)

(assert (= bs!519562 (and d!825173 d!825035)))

(assert (=> bs!519562 (= lambda!104435 lambda!104403)))

(declare-fun bs!519563 () Bool)

(assert (= bs!519563 (and d!825173 d!825069)))

(assert (=> bs!519563 (= lambda!104435 lambda!104423)))

(declare-fun bs!519564 () Bool)

(assert (= bs!519564 (and d!825173 d!825093)))

(assert (=> bs!519564 (= lambda!104435 lambda!104429)))

(declare-fun bs!519565 () Bool)

(assert (= bs!519565 (and d!825173 d!824993)))

(assert (=> bs!519565 (= lambda!104435 lambda!104395)))

(declare-fun bs!519566 () Bool)

(assert (= bs!519566 (and d!825173 d!825061)))

(assert (=> bs!519566 (= lambda!104435 lambda!104413)))

(declare-fun bs!519567 () Bool)

(assert (= bs!519567 (and d!825173 d!825063)))

(assert (=> bs!519567 (= lambda!104435 lambda!104419)))

(assert (=> d!825173 (= (inv!45728 setElem!24857) (forall!6925 (exprs!2991 setElem!24857) lambda!104435))))

(declare-fun bs!519568 () Bool)

(assert (= bs!519568 d!825173))

(declare-fun m!3273271 () Bool)

(assert (=> bs!519568 m!3273271))

(assert (=> setNonEmpty!24857 d!825173))

(declare-fun bs!519569 () Bool)

(declare-fun d!825175 () Bool)

(assert (= bs!519569 (and d!825175 d!825057)))

(declare-fun lambda!104436 () Int)

(assert (=> bs!519569 (= lambda!104436 lambda!104411)))

(declare-fun bs!519570 () Bool)

(assert (= bs!519570 (and d!825175 d!824963)))

(assert (=> bs!519570 (= lambda!104436 lambda!104391)))

(declare-fun bs!519571 () Bool)

(assert (= bs!519571 (and d!825175 d!825091)))

(assert (=> bs!519571 (= lambda!104436 lambda!104428)))

(declare-fun bs!519572 () Bool)

(assert (= bs!519572 (and d!825175 d!825117)))

(assert (=> bs!519572 (= lambda!104436 lambda!104431)))

(declare-fun bs!519573 () Bool)

(assert (= bs!519573 (and d!825175 d!824971)))

(assert (=> bs!519573 (= lambda!104436 lambda!104394)))

(declare-fun bs!519574 () Bool)

(assert (= bs!519574 (and d!825175 d!824965)))

(assert (=> bs!519574 (= lambda!104436 lambda!104392)))

(declare-fun bs!519575 () Bool)

(assert (= bs!519575 (and d!825175 d!825059)))

(assert (=> bs!519575 (= lambda!104436 lambda!104412)))

(declare-fun bs!519576 () Bool)

(assert (= bs!519576 (and d!825175 d!825065)))

(assert (=> bs!519576 (= lambda!104436 lambda!104422)))

(declare-fun bs!519577 () Bool)

(assert (= bs!519577 (and d!825175 d!824961)))

(assert (=> bs!519577 (= lambda!104436 lambda!104390)))

(declare-fun bs!519578 () Bool)

(assert (= bs!519578 (and d!825175 d!824959)))

(assert (=> bs!519578 (= lambda!104436 lambda!104389)))

(declare-fun bs!519579 () Bool)

(assert (= bs!519579 (and d!825175 d!824969)))

(assert (=> bs!519579 (= lambda!104436 lambda!104393)))

(declare-fun bs!519580 () Bool)

(assert (= bs!519580 (and d!825175 d!825077)))

(assert (=> bs!519580 (= lambda!104436 lambda!104424)))

(declare-fun bs!519581 () Bool)

(assert (= bs!519581 (and d!825175 d!824955)))

(assert (=> bs!519581 (= lambda!104436 lambda!104385)))

(declare-fun bs!519582 () Bool)

(assert (= bs!519582 (and d!825175 d!825079)))

(assert (=> bs!519582 (= lambda!104436 lambda!104425)))

(declare-fun bs!519583 () Bool)

(assert (= bs!519583 (and d!825175 d!825149)))

(assert (=> bs!519583 (= lambda!104436 lambda!104432)))

(declare-fun bs!519584 () Bool)

(assert (= bs!519584 (and d!825175 d!825155)))

(assert (=> bs!519584 (= lambda!104436 lambda!104433)))

(declare-fun bs!519585 () Bool)

(assert (= bs!519585 (and d!825175 d!825111)))

(assert (=> bs!519585 (= lambda!104436 lambda!104430)))

(declare-fun bs!519586 () Bool)

(assert (= bs!519586 (and d!825175 d!825035)))

(assert (=> bs!519586 (= lambda!104436 lambda!104403)))

(declare-fun bs!519587 () Bool)

(assert (= bs!519587 (and d!825175 d!825069)))

(assert (=> bs!519587 (= lambda!104436 lambda!104423)))

(declare-fun bs!519588 () Bool)

(assert (= bs!519588 (and d!825175 d!825093)))

(assert (=> bs!519588 (= lambda!104436 lambda!104429)))

(declare-fun bs!519589 () Bool)

(assert (= bs!519589 (and d!825175 d!824993)))

(assert (=> bs!519589 (= lambda!104436 lambda!104395)))

(declare-fun bs!519590 () Bool)

(assert (= bs!519590 (and d!825175 d!825173)))

(assert (=> bs!519590 (= lambda!104436 lambda!104435)))

(declare-fun bs!519591 () Bool)

(assert (= bs!519591 (and d!825175 d!825159)))

(assert (=> bs!519591 (= lambda!104436 lambda!104434)))

(declare-fun bs!519592 () Bool)

(assert (= bs!519592 (and d!825175 d!825061)))

(assert (=> bs!519592 (= lambda!104436 lambda!104413)))

(declare-fun bs!519593 () Bool)

(assert (= bs!519593 (and d!825175 d!825063)))

(assert (=> bs!519593 (= lambda!104436 lambda!104419)))

(assert (=> d!825175 (= (inv!45728 (_1!19914 (_1!19915 (h!39142 mapValue!18594)))) (forall!6925 (exprs!2991 (_1!19914 (_1!19915 (h!39142 mapValue!18594)))) lambda!104436))))

(declare-fun bs!519594 () Bool)

(assert (= bs!519594 d!825175))

(declare-fun m!3273273 () Bool)

(assert (=> bs!519594 m!3273273))

(assert (=> b!2844839 d!825175))

(declare-fun d!825177 () Bool)

(assert (=> d!825177 (= (inv!16 (value!162954 t1!27)) (= (charsToInt!0 (text!37561 (value!162954 t1!27))) (value!162945 (value!162954 t1!27))))))

(declare-fun bs!519595 () Bool)

(assert (= bs!519595 d!825177))

(declare-fun m!3273275 () Bool)

(assert (=> bs!519595 m!3273275))

(assert (=> b!2844698 d!825177))

(declare-fun b!2845229 () Bool)

(declare-fun e!1802711 () Bool)

(declare-fun tp!911969 () Bool)

(assert (=> b!2845229 (= e!1802711 tp!911969)))

(declare-fun b!2845230 () Bool)

(declare-fun tp!911970 () Bool)

(declare-fun tp!911971 () Bool)

(assert (=> b!2845230 (= e!1802711 (and tp!911970 tp!911971))))

(assert (=> b!2844795 (= tp!911858 e!1802711)))

(declare-fun b!2845228 () Bool)

(declare-fun tp!911972 () Bool)

(declare-fun tp!911968 () Bool)

(assert (=> b!2845228 (= e!1802711 (and tp!911972 tp!911968))))

(declare-fun b!2845227 () Bool)

(assert (=> b!2845227 (= e!1802711 tp_is_empty!14689)))

(assert (= (and b!2844795 ((_ is ElementMatch!8463) (_1!19912 (_1!19913 (h!39141 mapDefault!18590))))) b!2845227))

(assert (= (and b!2844795 ((_ is Concat!13765) (_1!19912 (_1!19913 (h!39141 mapDefault!18590))))) b!2845228))

(assert (= (and b!2844795 ((_ is Star!8463) (_1!19912 (_1!19913 (h!39141 mapDefault!18590))))) b!2845229))

(assert (= (and b!2844795 ((_ is Union!8463) (_1!19912 (_1!19913 (h!39141 mapDefault!18590))))) b!2845230))

(declare-fun b!2845231 () Bool)

(declare-fun e!1802714 () Bool)

(declare-fun tp!911976 () Bool)

(assert (=> b!2845231 (= e!1802714 tp!911976)))

(declare-fun e!1802713 () Bool)

(assert (=> b!2844795 (= tp!911855 e!1802713)))

(declare-fun b!2845232 () Bool)

(declare-fun setRes!24860 () Bool)

(declare-fun tp!911974 () Bool)

(declare-fun tp!911977 () Bool)

(assert (=> b!2845232 (= e!1802713 (and tp!911977 (inv!45728 (_2!19912 (_1!19913 (h!39141 (t!232840 mapDefault!18590))))) e!1802714 tp_is_empty!14689 setRes!24860 tp!911974))))

(declare-fun condSetEmpty!24860 () Bool)

(assert (=> b!2845232 (= condSetEmpty!24860 (= (_2!19913 (h!39141 (t!232840 mapDefault!18590))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24860 () Bool)

(assert (=> setIsEmpty!24860 setRes!24860))

(declare-fun b!2845233 () Bool)

(declare-fun e!1802712 () Bool)

(declare-fun tp!911975 () Bool)

(assert (=> b!2845233 (= e!1802712 tp!911975)))

(declare-fun tp!911973 () Bool)

(declare-fun setNonEmpty!24860 () Bool)

(declare-fun setElem!24860 () Context!4982)

(assert (=> setNonEmpty!24860 (= setRes!24860 (and tp!911973 (inv!45728 setElem!24860) e!1802712))))

(declare-fun setRest!24860 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24860 (= (_2!19913 (h!39141 (t!232840 mapDefault!18590))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24860 true) setRest!24860))))

(assert (= b!2845232 b!2845231))

(assert (= (and b!2845232 condSetEmpty!24860) setIsEmpty!24860))

(assert (= (and b!2845232 (not condSetEmpty!24860)) setNonEmpty!24860))

(assert (= setNonEmpty!24860 b!2845233))

(assert (= (and b!2844795 ((_ is Cons!33721) (t!232840 mapDefault!18590))) b!2845232))

(declare-fun m!3273277 () Bool)

(assert (=> b!2845232 m!3273277))

(declare-fun m!3273279 () Bool)

(assert (=> setNonEmpty!24860 m!3273279))

(declare-fun b!2845236 () Bool)

(declare-fun e!1802715 () Bool)

(declare-fun tp!911979 () Bool)

(assert (=> b!2845236 (= e!1802715 tp!911979)))

(declare-fun b!2845237 () Bool)

(declare-fun tp!911980 () Bool)

(declare-fun tp!911981 () Bool)

(assert (=> b!2845237 (= e!1802715 (and tp!911980 tp!911981))))

(assert (=> b!2844798 (= tp!911863 e!1802715)))

(declare-fun b!2845235 () Bool)

(declare-fun tp!911982 () Bool)

(declare-fun tp!911978 () Bool)

(assert (=> b!2845235 (= e!1802715 (and tp!911982 tp!911978))))

(declare-fun b!2845234 () Bool)

(assert (=> b!2845234 (= e!1802715 tp_is_empty!14689)))

(assert (= (and b!2844798 ((_ is ElementMatch!8463) (_1!19912 (_1!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) b!2845234))

(assert (= (and b!2844798 ((_ is Concat!13765) (_1!19912 (_1!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) b!2845235))

(assert (= (and b!2844798 ((_ is Star!8463) (_1!19912 (_1!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) b!2845236))

(assert (= (and b!2844798 ((_ is Union!8463) (_1!19912 (_1!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) b!2845237))

(declare-fun b!2845238 () Bool)

(declare-fun e!1802718 () Bool)

(declare-fun tp!911986 () Bool)

(assert (=> b!2845238 (= e!1802718 tp!911986)))

(declare-fun e!1802717 () Bool)

(assert (=> b!2844798 (= tp!911860 e!1802717)))

(declare-fun tp!911984 () Bool)

(declare-fun tp!911987 () Bool)

(declare-fun b!2845239 () Bool)

(declare-fun setRes!24861 () Bool)

(assert (=> b!2845239 (= e!1802717 (and tp!911987 (inv!45728 (_2!19912 (_1!19913 (h!39141 (t!232840 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) e!1802718 tp_is_empty!14689 setRes!24861 tp!911984))))

(declare-fun condSetEmpty!24861 () Bool)

(assert (=> b!2845239 (= condSetEmpty!24861 (= (_2!19913 (h!39141 (t!232840 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24861 () Bool)

(assert (=> setIsEmpty!24861 setRes!24861))

(declare-fun b!2845240 () Bool)

(declare-fun e!1802716 () Bool)

(declare-fun tp!911985 () Bool)

(assert (=> b!2845240 (= e!1802716 tp!911985)))

(declare-fun tp!911983 () Bool)

(declare-fun setElem!24861 () Context!4982)

(declare-fun setNonEmpty!24861 () Bool)

(assert (=> setNonEmpty!24861 (= setRes!24861 (and tp!911983 (inv!45728 setElem!24861) e!1802716))))

(declare-fun setRest!24861 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24861 (= (_2!19913 (h!39141 (t!232840 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24861 true) setRest!24861))))

(assert (= b!2845239 b!2845238))

(assert (= (and b!2845239 condSetEmpty!24861) setIsEmpty!24861))

(assert (= (and b!2845239 (not condSetEmpty!24861)) setNonEmpty!24861))

(assert (= setNonEmpty!24861 b!2845240))

(assert (= (and b!2844798 ((_ is Cons!33721) (t!232840 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))) b!2845239))

(declare-fun m!3273281 () Bool)

(assert (=> b!2845239 m!3273281))

(declare-fun m!3273283 () Bool)

(assert (=> setNonEmpty!24861 m!3273283))

(declare-fun b!2845245 () Bool)

(declare-fun e!1802721 () Bool)

(declare-fun tp!911992 () Bool)

(declare-fun tp!911993 () Bool)

(assert (=> b!2845245 (= e!1802721 (and tp!911992 tp!911993))))

(assert (=> b!2844835 (= tp!911913 e!1802721)))

(assert (= (and b!2844835 ((_ is Cons!33720) (exprs!2991 (_1!19914 (_1!19915 (h!39142 mapValue!18594)))))) b!2845245))

(declare-fun b!2845248 () Bool)

(declare-fun e!1802722 () Bool)

(declare-fun tp!911995 () Bool)

(assert (=> b!2845248 (= e!1802722 tp!911995)))

(declare-fun b!2845249 () Bool)

(declare-fun tp!911996 () Bool)

(declare-fun tp!911997 () Bool)

(assert (=> b!2845249 (= e!1802722 (and tp!911996 tp!911997))))

(assert (=> b!2844801 (= tp!911868 e!1802722)))

(declare-fun b!2845247 () Bool)

(declare-fun tp!911998 () Bool)

(declare-fun tp!911994 () Bool)

(assert (=> b!2845247 (= e!1802722 (and tp!911998 tp!911994))))

(declare-fun b!2845246 () Bool)

(assert (=> b!2845246 (= e!1802722 tp_is_empty!14689)))

(assert (= (and b!2844801 ((_ is ElementMatch!8463) (_1!19912 (_1!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) b!2845246))

(assert (= (and b!2844801 ((_ is Concat!13765) (_1!19912 (_1!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) b!2845247))

(assert (= (and b!2844801 ((_ is Star!8463) (_1!19912 (_1!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) b!2845248))

(assert (= (and b!2844801 ((_ is Union!8463) (_1!19912 (_1!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) b!2845249))

(declare-fun b!2845250 () Bool)

(declare-fun e!1802725 () Bool)

(declare-fun tp!912002 () Bool)

(assert (=> b!2845250 (= e!1802725 tp!912002)))

(declare-fun e!1802724 () Bool)

(assert (=> b!2844801 (= tp!911865 e!1802724)))

(declare-fun setRes!24862 () Bool)

(declare-fun tp!912000 () Bool)

(declare-fun b!2845251 () Bool)

(declare-fun tp!912003 () Bool)

(assert (=> b!2845251 (= e!1802724 (and tp!912003 (inv!45728 (_2!19912 (_1!19913 (h!39141 (t!232840 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))))) e!1802725 tp_is_empty!14689 setRes!24862 tp!912000))))

(declare-fun condSetEmpty!24862 () Bool)

(assert (=> b!2845251 (= condSetEmpty!24862 (= (_2!19913 (h!39141 (t!232840 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24862 () Bool)

(assert (=> setIsEmpty!24862 setRes!24862))

(declare-fun b!2845252 () Bool)

(declare-fun e!1802723 () Bool)

(declare-fun tp!912001 () Bool)

(assert (=> b!2845252 (= e!1802723 tp!912001)))

(declare-fun tp!911999 () Bool)

(declare-fun setElem!24862 () Context!4982)

(declare-fun setNonEmpty!24862 () Bool)

(assert (=> setNonEmpty!24862 (= setRes!24862 (and tp!911999 (inv!45728 setElem!24862) e!1802723))))

(declare-fun setRest!24862 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24862 (= (_2!19913 (h!39141 (t!232840 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24862 true) setRest!24862))))

(assert (= b!2845251 b!2845250))

(assert (= (and b!2845251 condSetEmpty!24862) setIsEmpty!24862))

(assert (= (and b!2845251 (not condSetEmpty!24862)) setNonEmpty!24862))

(assert (= setNonEmpty!24862 b!2845252))

(assert (= (and b!2844801 ((_ is Cons!33721) (t!232840 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447))))))))) b!2845251))

(declare-fun m!3273285 () Bool)

(assert (=> b!2845251 m!3273285))

(declare-fun m!3273287 () Bool)

(assert (=> setNonEmpty!24862 m!3273287))

(declare-fun condSetEmpty!24865 () Bool)

(assert (=> setNonEmpty!24852 (= condSetEmpty!24865 (= setRest!24852 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24865 () Bool)

(assert (=> setNonEmpty!24852 (= tp!911926 setRes!24865)))

(declare-fun setIsEmpty!24865 () Bool)

(assert (=> setIsEmpty!24865 setRes!24865))

(declare-fun tp!912008 () Bool)

(declare-fun e!1802728 () Bool)

(declare-fun setNonEmpty!24865 () Bool)

(declare-fun setElem!24865 () Context!4982)

(assert (=> setNonEmpty!24865 (= setRes!24865 (and tp!912008 (inv!45728 setElem!24865) e!1802728))))

(declare-fun setRest!24865 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24865 (= setRest!24852 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24865 true) setRest!24865))))

(declare-fun b!2845257 () Bool)

(declare-fun tp!912009 () Bool)

(assert (=> b!2845257 (= e!1802728 tp!912009)))

(assert (= (and setNonEmpty!24852 condSetEmpty!24865) setIsEmpty!24865))

(assert (= (and setNonEmpty!24852 (not condSetEmpty!24865)) setNonEmpty!24865))

(assert (= setNonEmpty!24865 b!2845257))

(declare-fun m!3273289 () Bool)

(assert (=> setNonEmpty!24865 m!3273289))

(declare-fun b!2845258 () Bool)

(declare-fun e!1802729 () Bool)

(declare-fun tp!912010 () Bool)

(declare-fun tp!912011 () Bool)

(assert (=> b!2845258 (= e!1802729 (and tp!912010 tp!912011))))

(assert (=> b!2844866 (= tp!911962 e!1802729)))

(assert (= (and b!2844866 ((_ is Cons!33720) (exprs!2991 (_2!19912 (_1!19913 (h!39141 mapValue!18597)))))) b!2845258))

(declare-fun b!2845259 () Bool)

(declare-fun e!1802732 () Bool)

(declare-fun tp!912015 () Bool)

(declare-fun setRes!24866 () Bool)

(declare-fun e!1802731 () Bool)

(assert (=> b!2845259 (= e!1802732 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 (t!232841 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))))))) e!1802731 tp_is_empty!14689 setRes!24866 tp!912015))))

(declare-fun condSetEmpty!24866 () Bool)

(assert (=> b!2845259 (= condSetEmpty!24866 (= (_2!19915 (h!39142 (t!232841 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun tp!912012 () Bool)

(declare-fun setElem!24866 () Context!4982)

(declare-fun setNonEmpty!24866 () Bool)

(declare-fun e!1802730 () Bool)

(assert (=> setNonEmpty!24866 (= setRes!24866 (and tp!912012 (inv!45728 setElem!24866) e!1802730))))

(declare-fun setRest!24866 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24866 (= (_2!19915 (h!39142 (t!232841 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24866 true) setRest!24866))))

(declare-fun b!2845260 () Bool)

(declare-fun tp!912014 () Bool)

(assert (=> b!2845260 (= e!1802731 tp!912014)))

(declare-fun b!2845261 () Bool)

(declare-fun tp!912013 () Bool)

(assert (=> b!2845261 (= e!1802730 tp!912013)))

(assert (=> b!2844815 (= tp!911885 e!1802732)))

(declare-fun setIsEmpty!24866 () Bool)

(assert (=> setIsEmpty!24866 setRes!24866))

(assert (= b!2845259 b!2845260))

(assert (= (and b!2845259 condSetEmpty!24866) setIsEmpty!24866))

(assert (= (and b!2845259 (not condSetEmpty!24866)) setNonEmpty!24866))

(assert (= setNonEmpty!24866 b!2845261))

(assert (= (and b!2844815 ((_ is Cons!33722) (t!232841 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))))) b!2845259))

(declare-fun m!3273291 () Bool)

(assert (=> b!2845259 m!3273291))

(declare-fun m!3273293 () Bool)

(assert (=> setNonEmpty!24866 m!3273293))

(declare-fun b!2845262 () Bool)

(declare-fun e!1802733 () Bool)

(declare-fun tp!912016 () Bool)

(declare-fun tp!912017 () Bool)

(assert (=> b!2845262 (= e!1802733 (and tp!912016 tp!912017))))

(assert (=> b!2844796 (= tp!911856 e!1802733)))

(assert (= (and b!2844796 ((_ is Cons!33720) (exprs!2991 setElem!24838))) b!2845262))

(declare-fun b!2845263 () Bool)

(declare-fun e!1802734 () Bool)

(declare-fun tp!912018 () Bool)

(declare-fun tp!912019 () Bool)

(assert (=> b!2845263 (= e!1802734 (and tp!912018 tp!912019))))

(assert (=> b!2844799 (= tp!911861 e!1802734)))

(assert (= (and b!2844799 ((_ is Cons!33720) (exprs!2991 setElem!24839))) b!2845263))

(declare-fun condSetEmpty!24867 () Bool)

(assert (=> setNonEmpty!24849 (= condSetEmpty!24867 (= setRest!24849 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24867 () Bool)

(assert (=> setNonEmpty!24849 (= tp!911909 setRes!24867)))

(declare-fun setIsEmpty!24867 () Bool)

(assert (=> setIsEmpty!24867 setRes!24867))

(declare-fun e!1802735 () Bool)

(declare-fun setNonEmpty!24867 () Bool)

(declare-fun setElem!24867 () Context!4982)

(declare-fun tp!912020 () Bool)

(assert (=> setNonEmpty!24867 (= setRes!24867 (and tp!912020 (inv!45728 setElem!24867) e!1802735))))

(declare-fun setRest!24867 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24867 (= setRest!24849 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24867 true) setRest!24867))))

(declare-fun b!2845264 () Bool)

(declare-fun tp!912021 () Bool)

(assert (=> b!2845264 (= e!1802735 tp!912021)))

(assert (= (and setNonEmpty!24849 condSetEmpty!24867) setIsEmpty!24867))

(assert (= (and setNonEmpty!24849 (not condSetEmpty!24867)) setNonEmpty!24867))

(assert (= setNonEmpty!24867 b!2845264))

(declare-fun m!3273295 () Bool)

(assert (=> setNonEmpty!24867 m!3273295))

(declare-fun condSetEmpty!24868 () Bool)

(assert (=> setNonEmpty!24844 (= condSetEmpty!24868 (= setRest!24844 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24868 () Bool)

(assert (=> setNonEmpty!24844 (= tp!911886 setRes!24868)))

(declare-fun setIsEmpty!24868 () Bool)

(assert (=> setIsEmpty!24868 setRes!24868))

(declare-fun tp!912022 () Bool)

(declare-fun setNonEmpty!24868 () Bool)

(declare-fun setElem!24868 () Context!4982)

(declare-fun e!1802736 () Bool)

(assert (=> setNonEmpty!24868 (= setRes!24868 (and tp!912022 (inv!45728 setElem!24868) e!1802736))))

(declare-fun setRest!24868 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24868 (= setRest!24844 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24868 true) setRest!24868))))

(declare-fun b!2845265 () Bool)

(declare-fun tp!912023 () Bool)

(assert (=> b!2845265 (= e!1802736 tp!912023)))

(assert (= (and setNonEmpty!24844 condSetEmpty!24868) setIsEmpty!24868))

(assert (= (and setNonEmpty!24844 (not condSetEmpty!24868)) setNonEmpty!24868))

(assert (= setNonEmpty!24868 b!2845265))

(declare-fun m!3273297 () Bool)

(assert (=> setNonEmpty!24868 m!3273297))

(declare-fun b!2845266 () Bool)

(declare-fun e!1802737 () Bool)

(declare-fun tp!912024 () Bool)

(declare-fun tp!912025 () Bool)

(assert (=> b!2845266 (= e!1802737 (and tp!912024 tp!912025))))

(assert (=> b!2844802 (= tp!911866 e!1802737)))

(assert (= (and b!2844802 ((_ is Cons!33720) (exprs!2991 setElem!24840))) b!2845266))

(declare-fun b!2845269 () Bool)

(declare-fun b_free!82657 () Bool)

(declare-fun b_next!83361 () Bool)

(assert (=> b!2845269 (= b_free!82657 (not b_next!83361))))

(declare-fun tp!912028 () Bool)

(declare-fun b_and!208899 () Bool)

(assert (=> b!2845269 (= tp!912028 b_and!208899)))

(declare-fun b_free!82659 () Bool)

(declare-fun b_next!83363 () Bool)

(assert (=> b!2845269 (= b_free!82659 (not b_next!83363))))

(declare-fun t!232873 () Bool)

(declare-fun tb!155085 () Bool)

(assert (=> (and b!2845269 (= (toChars!6985 (transformation!5072 (h!39145 (t!232844 (t!232844 rules!1139))))) (toChars!6985 (transformation!5072 (rule!7500 t2!27)))) t!232873) tb!155085))

(declare-fun result!193554 () Bool)

(assert (= result!193554 result!193518))

(assert (=> b!2844722 t!232873))

(declare-fun tb!155087 () Bool)

(declare-fun t!232875 () Bool)

(assert (=> (and b!2845269 (= (toChars!6985 (transformation!5072 (h!39145 (t!232844 (t!232844 rules!1139))))) (toChars!6985 (transformation!5072 (rule!7500 t1!27)))) t!232875) tb!155087))

(declare-fun result!193556 () Bool)

(assert (= result!193556 result!193526))

(assert (=> b!2844729 t!232875))

(assert (=> d!824923 t!232875))

(assert (=> d!824951 t!232873))

(declare-fun tp!912029 () Bool)

(declare-fun b_and!208901 () Bool)

(assert (=> b!2845269 (= tp!912029 (and (=> t!232873 result!193554) (=> t!232875 result!193556) b_and!208901))))

(declare-fun e!1802741 () Bool)

(assert (=> b!2845269 (= e!1802741 (and tp!912028 tp!912029))))

(declare-fun b!2845268 () Bool)

(declare-fun tp!912027 () Bool)

(declare-fun e!1802739 () Bool)

(assert (=> b!2845268 (= e!1802739 (and tp!912027 (inv!45721 (tag!5576 (h!39145 (t!232844 (t!232844 rules!1139))))) (inv!45722 (transformation!5072 (h!39145 (t!232844 (t!232844 rules!1139))))) e!1802741))))

(declare-fun b!2845267 () Bool)

(declare-fun e!1802740 () Bool)

(declare-fun tp!912026 () Bool)

(assert (=> b!2845267 (= e!1802740 (and e!1802739 tp!912026))))

(assert (=> b!2844783 (= tp!911840 e!1802740)))

(assert (= b!2845268 b!2845269))

(assert (= b!2845267 b!2845268))

(assert (= (and b!2844783 ((_ is Cons!33725) (t!232844 (t!232844 rules!1139)))) b!2845267))

(declare-fun m!3273299 () Bool)

(assert (=> b!2845268 m!3273299))

(declare-fun m!3273301 () Bool)

(assert (=> b!2845268 m!3273301))

(declare-fun b!2845270 () Bool)

(declare-fun e!1802742 () Bool)

(declare-fun tp!912030 () Bool)

(declare-fun tp!912031 () Bool)

(assert (=> b!2845270 (= e!1802742 (and tp!912030 tp!912031))))

(assert (=> b!2844850 (= tp!911927 e!1802742)))

(assert (= (and b!2844850 ((_ is Cons!33720) (exprs!2991 setElem!24852))) b!2845270))

(declare-fun b!2845273 () Bool)

(declare-fun e!1802743 () Bool)

(declare-fun tp!912033 () Bool)

(assert (=> b!2845273 (= e!1802743 tp!912033)))

(declare-fun b!2845274 () Bool)

(declare-fun tp!912034 () Bool)

(declare-fun tp!912035 () Bool)

(assert (=> b!2845274 (= e!1802743 (and tp!912034 tp!912035))))

(assert (=> b!2844806 (= tp!911871 e!1802743)))

(declare-fun b!2845272 () Bool)

(declare-fun tp!912036 () Bool)

(declare-fun tp!912032 () Bool)

(assert (=> b!2845272 (= e!1802743 (and tp!912036 tp!912032))))

(declare-fun b!2845271 () Bool)

(assert (=> b!2845271 (= e!1802743 tp_is_empty!14689)))

(assert (= (and b!2844806 ((_ is ElementMatch!8463) (regOne!17439 (regex!5072 (rule!7500 t2!27))))) b!2845271))

(assert (= (and b!2844806 ((_ is Concat!13765) (regOne!17439 (regex!5072 (rule!7500 t2!27))))) b!2845272))

(assert (= (and b!2844806 ((_ is Star!8463) (regOne!17439 (regex!5072 (rule!7500 t2!27))))) b!2845273))

(assert (= (and b!2844806 ((_ is Union!8463) (regOne!17439 (regex!5072 (rule!7500 t2!27))))) b!2845274))

(declare-fun b!2845277 () Bool)

(declare-fun e!1802744 () Bool)

(declare-fun tp!912038 () Bool)

(assert (=> b!2845277 (= e!1802744 tp!912038)))

(declare-fun b!2845278 () Bool)

(declare-fun tp!912039 () Bool)

(declare-fun tp!912040 () Bool)

(assert (=> b!2845278 (= e!1802744 (and tp!912039 tp!912040))))

(assert (=> b!2844806 (= tp!911872 e!1802744)))

(declare-fun b!2845276 () Bool)

(declare-fun tp!912041 () Bool)

(declare-fun tp!912037 () Bool)

(assert (=> b!2845276 (= e!1802744 (and tp!912041 tp!912037))))

(declare-fun b!2845275 () Bool)

(assert (=> b!2845275 (= e!1802744 tp_is_empty!14689)))

(assert (= (and b!2844806 ((_ is ElementMatch!8463) (regTwo!17439 (regex!5072 (rule!7500 t2!27))))) b!2845275))

(assert (= (and b!2844806 ((_ is Concat!13765) (regTwo!17439 (regex!5072 (rule!7500 t2!27))))) b!2845276))

(assert (= (and b!2844806 ((_ is Star!8463) (regTwo!17439 (regex!5072 (rule!7500 t2!27))))) b!2845277))

(assert (= (and b!2844806 ((_ is Union!8463) (regTwo!17439 (regex!5072 (rule!7500 t2!27))))) b!2845278))

(declare-fun b!2845281 () Bool)

(declare-fun e!1802745 () Bool)

(declare-fun tp!912043 () Bool)

(assert (=> b!2845281 (= e!1802745 tp!912043)))

(declare-fun b!2845282 () Bool)

(declare-fun tp!912044 () Bool)

(declare-fun tp!912045 () Bool)

(assert (=> b!2845282 (= e!1802745 (and tp!912044 tp!912045))))

(assert (=> b!2844872 (= tp!911967 e!1802745)))

(declare-fun b!2845280 () Bool)

(declare-fun tp!912046 () Bool)

(declare-fun tp!912042 () Bool)

(assert (=> b!2845280 (= e!1802745 (and tp!912046 tp!912042))))

(declare-fun b!2845279 () Bool)

(assert (=> b!2845279 (= e!1802745 tp_is_empty!14689)))

(assert (= (and b!2844872 ((_ is ElementMatch!8463) (_1!19912 (_1!19913 (h!39141 mapValue!18590))))) b!2845279))

(assert (= (and b!2844872 ((_ is Concat!13765) (_1!19912 (_1!19913 (h!39141 mapValue!18590))))) b!2845280))

(assert (= (and b!2844872 ((_ is Star!8463) (_1!19912 (_1!19913 (h!39141 mapValue!18590))))) b!2845281))

(assert (= (and b!2844872 ((_ is Union!8463) (_1!19912 (_1!19913 (h!39141 mapValue!18590))))) b!2845282))

(declare-fun b!2845283 () Bool)

(declare-fun e!1802748 () Bool)

(declare-fun tp!912050 () Bool)

(assert (=> b!2845283 (= e!1802748 tp!912050)))

(declare-fun e!1802747 () Bool)

(assert (=> b!2844872 (= tp!911964 e!1802747)))

(declare-fun setRes!24869 () Bool)

(declare-fun tp!912048 () Bool)

(declare-fun tp!912051 () Bool)

(declare-fun b!2845284 () Bool)

(assert (=> b!2845284 (= e!1802747 (and tp!912051 (inv!45728 (_2!19912 (_1!19913 (h!39141 (t!232840 mapValue!18590))))) e!1802748 tp_is_empty!14689 setRes!24869 tp!912048))))

(declare-fun condSetEmpty!24869 () Bool)

(assert (=> b!2845284 (= condSetEmpty!24869 (= (_2!19913 (h!39141 (t!232840 mapValue!18590))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24869 () Bool)

(assert (=> setIsEmpty!24869 setRes!24869))

(declare-fun b!2845285 () Bool)

(declare-fun e!1802746 () Bool)

(declare-fun tp!912049 () Bool)

(assert (=> b!2845285 (= e!1802746 tp!912049)))

(declare-fun setNonEmpty!24869 () Bool)

(declare-fun tp!912047 () Bool)

(declare-fun setElem!24869 () Context!4982)

(assert (=> setNonEmpty!24869 (= setRes!24869 (and tp!912047 (inv!45728 setElem!24869) e!1802746))))

(declare-fun setRest!24869 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24869 (= (_2!19913 (h!39141 (t!232840 mapValue!18590))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24869 true) setRest!24869))))

(assert (= b!2845284 b!2845283))

(assert (= (and b!2845284 condSetEmpty!24869) setIsEmpty!24869))

(assert (= (and b!2845284 (not condSetEmpty!24869)) setNonEmpty!24869))

(assert (= setNonEmpty!24869 b!2845285))

(assert (= (and b!2844872 ((_ is Cons!33721) (t!232840 mapValue!18590))) b!2845284))

(declare-fun m!3273303 () Bool)

(assert (=> b!2845284 m!3273303))

(declare-fun m!3273305 () Bool)

(assert (=> setNonEmpty!24869 m!3273305))

(declare-fun b!2845288 () Bool)

(declare-fun e!1802749 () Bool)

(declare-fun tp!912053 () Bool)

(assert (=> b!2845288 (= e!1802749 tp!912053)))

(declare-fun b!2845289 () Bool)

(declare-fun tp!912054 () Bool)

(declare-fun tp!912055 () Bool)

(assert (=> b!2845289 (= e!1802749 (and tp!912054 tp!912055))))

(assert (=> b!2844804 (= tp!911873 e!1802749)))

(declare-fun b!2845287 () Bool)

(declare-fun tp!912056 () Bool)

(declare-fun tp!912052 () Bool)

(assert (=> b!2845287 (= e!1802749 (and tp!912056 tp!912052))))

(declare-fun b!2845286 () Bool)

(assert (=> b!2845286 (= e!1802749 tp_is_empty!14689)))

(assert (= (and b!2844804 ((_ is ElementMatch!8463) (regOne!17438 (regex!5072 (rule!7500 t2!27))))) b!2845286))

(assert (= (and b!2844804 ((_ is Concat!13765) (regOne!17438 (regex!5072 (rule!7500 t2!27))))) b!2845287))

(assert (= (and b!2844804 ((_ is Star!8463) (regOne!17438 (regex!5072 (rule!7500 t2!27))))) b!2845288))

(assert (= (and b!2844804 ((_ is Union!8463) (regOne!17438 (regex!5072 (rule!7500 t2!27))))) b!2845289))

(declare-fun b!2845292 () Bool)

(declare-fun e!1802750 () Bool)

(declare-fun tp!912058 () Bool)

(assert (=> b!2845292 (= e!1802750 tp!912058)))

(declare-fun b!2845293 () Bool)

(declare-fun tp!912059 () Bool)

(declare-fun tp!912060 () Bool)

(assert (=> b!2845293 (= e!1802750 (and tp!912059 tp!912060))))

(assert (=> b!2844804 (= tp!911869 e!1802750)))

(declare-fun b!2845291 () Bool)

(declare-fun tp!912061 () Bool)

(declare-fun tp!912057 () Bool)

(assert (=> b!2845291 (= e!1802750 (and tp!912061 tp!912057))))

(declare-fun b!2845290 () Bool)

(assert (=> b!2845290 (= e!1802750 tp_is_empty!14689)))

(assert (= (and b!2844804 ((_ is ElementMatch!8463) (regTwo!17438 (regex!5072 (rule!7500 t2!27))))) b!2845290))

(assert (= (and b!2844804 ((_ is Concat!13765) (regTwo!17438 (regex!5072 (rule!7500 t2!27))))) b!2845291))

(assert (= (and b!2844804 ((_ is Star!8463) (regTwo!17438 (regex!5072 (rule!7500 t2!27))))) b!2845292))

(assert (= (and b!2844804 ((_ is Union!8463) (regTwo!17438 (regex!5072 (rule!7500 t2!27))))) b!2845293))

(declare-fun b!2845294 () Bool)

(declare-fun e!1802751 () Bool)

(declare-fun tp!912062 () Bool)

(declare-fun tp!912063 () Bool)

(assert (=> b!2845294 (= e!1802751 (and tp!912062 tp!912063))))

(assert (=> b!2844873 (= tp!911965 e!1802751)))

(assert (= (and b!2844873 ((_ is Cons!33720) (exprs!2991 setElem!24859))) b!2845294))

(declare-fun b!2845295 () Bool)

(declare-fun e!1802752 () Bool)

(declare-fun tp!912064 () Bool)

(assert (=> b!2845295 (= e!1802752 (and tp_is_empty!14689 tp!912064))))

(assert (=> b!2844759 (= tp!911815 e!1802752)))

(assert (= (and b!2844759 ((_ is Cons!33724) (t!232843 (originalCharacters!5804 t2!27)))) b!2845295))

(declare-fun b!2845296 () Bool)

(declare-fun e!1802756 () Bool)

(declare-fun tp!912073 () Bool)

(assert (=> b!2845296 (= e!1802756 tp!912073)))

(declare-fun b!2845297 () Bool)

(declare-fun e!1802754 () Bool)

(declare-fun tp!912075 () Bool)

(assert (=> b!2845297 (= e!1802754 tp!912075)))

(declare-fun tp!912072 () Bool)

(declare-fun tp!912070 () Bool)

(declare-fun b!2845298 () Bool)

(declare-fun setRes!24870 () Bool)

(declare-fun e!1802757 () Bool)

(declare-fun mapValue!18598 () List!33845)

(assert (=> b!2845298 (= e!1802757 (and tp!912070 (inv!45728 (_2!19912 (_1!19913 (h!39141 mapValue!18598)))) e!1802754 tp_is_empty!14689 setRes!24870 tp!912072))))

(declare-fun condSetEmpty!24871 () Bool)

(assert (=> b!2845298 (= condSetEmpty!24871 (= (_2!19913 (h!39141 mapValue!18598)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun mapIsEmpty!18598 () Bool)

(declare-fun mapRes!18598 () Bool)

(assert (=> mapIsEmpty!18598 mapRes!18598))

(declare-fun b!2845299 () Bool)

(declare-fun e!1802758 () Bool)

(declare-fun tp!912065 () Bool)

(assert (=> b!2845299 (= e!1802758 tp!912065)))

(declare-fun setIsEmpty!24870 () Bool)

(declare-fun setRes!24871 () Bool)

(assert (=> setIsEmpty!24870 setRes!24871))

(declare-fun setNonEmpty!24870 () Bool)

(declare-fun tp!912067 () Bool)

(declare-fun setElem!24870 () Context!4982)

(assert (=> setNonEmpty!24870 (= setRes!24871 (and tp!912067 (inv!45728 setElem!24870) e!1802758))))

(declare-fun mapDefault!18598 () List!33845)

(declare-fun setRest!24870 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24870 (= (_2!19913 (h!39141 mapDefault!18598)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24870 true) setRest!24870))))

(declare-fun mapNonEmpty!18598 () Bool)

(declare-fun tp!912068 () Bool)

(assert (=> mapNonEmpty!18598 (= mapRes!18598 (and tp!912068 e!1802757))))

(declare-fun mapKey!18598 () (_ BitVec 32))

(declare-fun mapRest!18598 () (Array (_ BitVec 32) List!33845))

(assert (=> mapNonEmpty!18598 (= mapRest!18597 (store mapRest!18598 mapKey!18598 mapValue!18598))))

(declare-fun b!2845300 () Bool)

(declare-fun tp!912074 () Bool)

(declare-fun e!1802755 () Bool)

(declare-fun tp!912071 () Bool)

(assert (=> b!2845300 (= e!1802755 (and tp!912071 (inv!45728 (_2!19912 (_1!19913 (h!39141 mapDefault!18598)))) e!1802756 tp_is_empty!14689 setRes!24871 tp!912074))))

(declare-fun condSetEmpty!24870 () Bool)

(assert (=> b!2845300 (= condSetEmpty!24870 (= (_2!19913 (h!39141 mapDefault!18598)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun condMapEmpty!18598 () Bool)

(assert (=> mapNonEmpty!18597 (= condMapEmpty!18598 (= mapRest!18597 ((as const (Array (_ BitVec 32) List!33845)) mapDefault!18598)))))

(assert (=> mapNonEmpty!18597 (= tp!911955 (and e!1802755 mapRes!18598))))

(declare-fun setIsEmpty!24871 () Bool)

(assert (=> setIsEmpty!24871 setRes!24870))

(declare-fun tp!912066 () Bool)

(declare-fun setElem!24871 () Context!4982)

(declare-fun e!1802753 () Bool)

(declare-fun setNonEmpty!24871 () Bool)

(assert (=> setNonEmpty!24871 (= setRes!24870 (and tp!912066 (inv!45728 setElem!24871) e!1802753))))

(declare-fun setRest!24871 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24871 (= (_2!19913 (h!39141 mapValue!18598)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24871 true) setRest!24871))))

(declare-fun b!2845301 () Bool)

(declare-fun tp!912069 () Bool)

(assert (=> b!2845301 (= e!1802753 tp!912069)))

(assert (= (and mapNonEmpty!18597 condMapEmpty!18598) mapIsEmpty!18598))

(assert (= (and mapNonEmpty!18597 (not condMapEmpty!18598)) mapNonEmpty!18598))

(assert (= b!2845298 b!2845297))

(assert (= (and b!2845298 condSetEmpty!24871) setIsEmpty!24871))

(assert (= (and b!2845298 (not condSetEmpty!24871)) setNonEmpty!24871))

(assert (= setNonEmpty!24871 b!2845301))

(assert (= (and mapNonEmpty!18598 ((_ is Cons!33721) mapValue!18598)) b!2845298))

(assert (= b!2845300 b!2845296))

(assert (= (and b!2845300 condSetEmpty!24870) setIsEmpty!24870))

(assert (= (and b!2845300 (not condSetEmpty!24870)) setNonEmpty!24870))

(assert (= setNonEmpty!24870 b!2845299))

(assert (= (and mapNonEmpty!18597 ((_ is Cons!33721) mapDefault!18598)) b!2845300))

(declare-fun m!3273307 () Bool)

(assert (=> mapNonEmpty!18598 m!3273307))

(declare-fun m!3273309 () Bool)

(assert (=> b!2845298 m!3273309))

(declare-fun m!3273311 () Bool)

(assert (=> b!2845300 m!3273311))

(declare-fun m!3273313 () Bool)

(assert (=> setNonEmpty!24871 m!3273313))

(declare-fun m!3273315 () Bool)

(assert (=> setNonEmpty!24870 m!3273315))

(declare-fun b!2845302 () Bool)

(declare-fun e!1802759 () Bool)

(declare-fun tp!912076 () Bool)

(declare-fun tp!912077 () Bool)

(assert (=> b!2845302 (= e!1802759 (and tp!912076 tp!912077))))

(assert (=> b!2844843 (= tp!911918 e!1802759)))

(assert (= (and b!2844843 ((_ is Cons!33720) (exprs!2991 setElem!24851))) b!2845302))

(declare-fun b!2845303 () Bool)

(declare-fun e!1802760 () Bool)

(declare-fun tp!912078 () Bool)

(declare-fun tp!912079 () Bool)

(assert (=> b!2845303 (= e!1802760 (and tp!912078 tp!912079))))

(assert (=> b!2844870 (= tp!911956 e!1802760)))

(assert (= (and b!2844870 ((_ is Cons!33720) (exprs!2991 setElem!24858))) b!2845303))

(declare-fun condSetEmpty!24872 () Bool)

(assert (=> setNonEmpty!24851 (= condSetEmpty!24872 (= setRest!24851 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24872 () Bool)

(assert (=> setNonEmpty!24851 (= tp!911917 setRes!24872)))

(declare-fun setIsEmpty!24872 () Bool)

(assert (=> setIsEmpty!24872 setRes!24872))

(declare-fun e!1802761 () Bool)

(declare-fun setNonEmpty!24872 () Bool)

(declare-fun setElem!24872 () Context!4982)

(declare-fun tp!912080 () Bool)

(assert (=> setNonEmpty!24872 (= setRes!24872 (and tp!912080 (inv!45728 setElem!24872) e!1802761))))

(declare-fun setRest!24872 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24872 (= setRest!24851 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24872 true) setRest!24872))))

(declare-fun b!2845304 () Bool)

(declare-fun tp!912081 () Bool)

(assert (=> b!2845304 (= e!1802761 tp!912081)))

(assert (= (and setNonEmpty!24851 condSetEmpty!24872) setIsEmpty!24872))

(assert (= (and setNonEmpty!24851 (not condSetEmpty!24872)) setNonEmpty!24872))

(assert (= setNonEmpty!24872 b!2845304))

(declare-fun m!3273317 () Bool)

(assert (=> setNonEmpty!24872 m!3273317))

(declare-fun b!2845307 () Bool)

(declare-fun e!1802762 () Bool)

(declare-fun tp!912083 () Bool)

(assert (=> b!2845307 (= e!1802762 tp!912083)))

(declare-fun b!2845308 () Bool)

(declare-fun tp!912084 () Bool)

(declare-fun tp!912085 () Bool)

(assert (=> b!2845308 (= e!1802762 (and tp!912084 tp!912085))))

(assert (=> b!2844773 (= tp!911828 e!1802762)))

(declare-fun b!2845306 () Bool)

(declare-fun tp!912086 () Bool)

(declare-fun tp!912082 () Bool)

(assert (=> b!2845306 (= e!1802762 (and tp!912086 tp!912082))))

(declare-fun b!2845305 () Bool)

(assert (=> b!2845305 (= e!1802762 tp_is_empty!14689)))

(assert (= (and b!2844773 ((_ is ElementMatch!8463) (reg!8792 (regex!5072 (h!39145 rules!1139))))) b!2845305))

(assert (= (and b!2844773 ((_ is Concat!13765) (reg!8792 (regex!5072 (h!39145 rules!1139))))) b!2845306))

(assert (= (and b!2844773 ((_ is Star!8463) (reg!8792 (regex!5072 (h!39145 rules!1139))))) b!2845307))

(assert (= (and b!2844773 ((_ is Union!8463) (reg!8792 (regex!5072 (h!39145 rules!1139))))) b!2845308))

(declare-fun b!2845309 () Bool)

(declare-fun e!1802763 () Bool)

(declare-fun tp!912087 () Bool)

(declare-fun tp!912088 () Bool)

(assert (=> b!2845309 (= e!1802763 (and tp!912087 tp!912088))))

(assert (=> b!2844838 (= tp!911912 e!1802763)))

(assert (= (and b!2844838 ((_ is Cons!33720) (exprs!2991 (_1!19914 (_1!19915 (h!39142 mapDefault!18594)))))) b!2845309))

(declare-fun b!2845312 () Bool)

(declare-fun e!1802764 () Bool)

(declare-fun tp!912090 () Bool)

(assert (=> b!2845312 (= e!1802764 tp!912090)))

(declare-fun b!2845313 () Bool)

(declare-fun tp!912091 () Bool)

(declare-fun tp!912092 () Bool)

(assert (=> b!2845313 (= e!1802764 (and tp!912091 tp!912092))))

(assert (=> b!2844845 (= tp!911925 e!1802764)))

(declare-fun b!2845311 () Bool)

(declare-fun tp!912093 () Bool)

(declare-fun tp!912089 () Bool)

(assert (=> b!2845311 (= e!1802764 (and tp!912093 tp!912089))))

(declare-fun b!2845310 () Bool)

(assert (=> b!2845310 (= e!1802764 tp_is_empty!14689)))

(assert (= (and b!2844845 ((_ is ElementMatch!8463) (regOne!17438 (regex!5072 (rule!7500 t1!27))))) b!2845310))

(assert (= (and b!2844845 ((_ is Concat!13765) (regOne!17438 (regex!5072 (rule!7500 t1!27))))) b!2845311))

(assert (= (and b!2844845 ((_ is Star!8463) (regOne!17438 (regex!5072 (rule!7500 t1!27))))) b!2845312))

(assert (= (and b!2844845 ((_ is Union!8463) (regOne!17438 (regex!5072 (rule!7500 t1!27))))) b!2845313))

(declare-fun b!2845316 () Bool)

(declare-fun e!1802765 () Bool)

(declare-fun tp!912095 () Bool)

(assert (=> b!2845316 (= e!1802765 tp!912095)))

(declare-fun b!2845317 () Bool)

(declare-fun tp!912096 () Bool)

(declare-fun tp!912097 () Bool)

(assert (=> b!2845317 (= e!1802765 (and tp!912096 tp!912097))))

(assert (=> b!2844845 (= tp!911921 e!1802765)))

(declare-fun b!2845315 () Bool)

(declare-fun tp!912098 () Bool)

(declare-fun tp!912094 () Bool)

(assert (=> b!2845315 (= e!1802765 (and tp!912098 tp!912094))))

(declare-fun b!2845314 () Bool)

(assert (=> b!2845314 (= e!1802765 tp_is_empty!14689)))

(assert (= (and b!2844845 ((_ is ElementMatch!8463) (regTwo!17438 (regex!5072 (rule!7500 t1!27))))) b!2845314))

(assert (= (and b!2844845 ((_ is Concat!13765) (regTwo!17438 (regex!5072 (rule!7500 t1!27))))) b!2845315))

(assert (= (and b!2844845 ((_ is Star!8463) (regTwo!17438 (regex!5072 (rule!7500 t1!27))))) b!2845316))

(assert (= (and b!2844845 ((_ is Union!8463) (regTwo!17438 (regex!5072 (rule!7500 t1!27))))) b!2845317))

(declare-fun b!2845318 () Bool)

(declare-fun e!1802766 () Bool)

(declare-fun tp!912099 () Bool)

(declare-fun tp!912100 () Bool)

(assert (=> b!2845318 (= e!1802766 (and tp!912099 tp!912100))))

(assert (=> b!2844816 (= tp!911884 e!1802766)))

(assert (= (and b!2844816 ((_ is Cons!33720) (exprs!2991 (_1!19914 (_1!19915 (h!39142 (zeroValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))))))) b!2845318))

(declare-fun setIsEmpty!24873 () Bool)

(declare-fun setRes!24874 () Bool)

(assert (=> setIsEmpty!24873 setRes!24874))

(declare-fun condMapEmpty!18599 () Bool)

(declare-fun mapDefault!18599 () List!33846)

(assert (=> mapNonEmpty!18594 (= condMapEmpty!18599 (= mapRest!18594 ((as const (Array (_ BitVec 32) List!33846)) mapDefault!18599)))))

(declare-fun e!1802769 () Bool)

(declare-fun mapRes!18599 () Bool)

(assert (=> mapNonEmpty!18594 (= tp!911916 (and e!1802769 mapRes!18599))))

(declare-fun b!2845319 () Bool)

(declare-fun e!1802767 () Bool)

(declare-fun tp!912106 () Bool)

(assert (=> b!2845319 (= e!1802767 tp!912106)))

(declare-fun tp!912108 () Bool)

(declare-fun b!2845320 () Bool)

(declare-fun e!1802770 () Bool)

(declare-fun setRes!24873 () Bool)

(assert (=> b!2845320 (= e!1802769 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 mapDefault!18599)))) e!1802770 tp_is_empty!14689 setRes!24873 tp!912108))))

(declare-fun condSetEmpty!24874 () Bool)

(assert (=> b!2845320 (= condSetEmpty!24874 (= (_2!19915 (h!39142 mapDefault!18599)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setElem!24873 () Context!4982)

(declare-fun setNonEmpty!24873 () Bool)

(declare-fun tp!912102 () Bool)

(declare-fun e!1802771 () Bool)

(assert (=> setNonEmpty!24873 (= setRes!24873 (and tp!912102 (inv!45728 setElem!24873) e!1802771))))

(declare-fun setRest!24873 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24873 (= (_2!19915 (h!39142 mapDefault!18599)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24873 true) setRest!24873))))

(declare-fun b!2845321 () Bool)

(declare-fun e!1802772 () Bool)

(declare-fun tp!912101 () Bool)

(assert (=> b!2845321 (= e!1802772 tp!912101)))

(declare-fun mapNonEmpty!18599 () Bool)

(declare-fun tp!912109 () Bool)

(declare-fun e!1802768 () Bool)

(assert (=> mapNonEmpty!18599 (= mapRes!18599 (and tp!912109 e!1802768))))

(declare-fun mapKey!18599 () (_ BitVec 32))

(declare-fun mapRest!18599 () (Array (_ BitVec 32) List!33846))

(declare-fun mapValue!18599 () List!33846)

(assert (=> mapNonEmpty!18599 (= mapRest!18594 (store mapRest!18599 mapKey!18599 mapValue!18599))))

(declare-fun tp!912104 () Bool)

(declare-fun setNonEmpty!24874 () Bool)

(declare-fun setElem!24874 () Context!4982)

(assert (=> setNonEmpty!24874 (= setRes!24874 (and tp!912104 (inv!45728 setElem!24874) e!1802772))))

(declare-fun setRest!24874 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24874 (= (_2!19915 (h!39142 mapValue!18599)) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24874 true) setRest!24874))))

(declare-fun b!2845322 () Bool)

(declare-fun tp!912105 () Bool)

(assert (=> b!2845322 (= e!1802770 tp!912105)))

(declare-fun b!2845323 () Bool)

(declare-fun tp!912107 () Bool)

(assert (=> b!2845323 (= e!1802768 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 mapValue!18599)))) e!1802767 tp_is_empty!14689 setRes!24874 tp!912107))))

(declare-fun condSetEmpty!24873 () Bool)

(assert (=> b!2845323 (= condSetEmpty!24873 (= (_2!19915 (h!39142 mapValue!18599)) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun b!2845324 () Bool)

(declare-fun tp!912103 () Bool)

(assert (=> b!2845324 (= e!1802771 tp!912103)))

(declare-fun mapIsEmpty!18599 () Bool)

(assert (=> mapIsEmpty!18599 mapRes!18599))

(declare-fun setIsEmpty!24874 () Bool)

(assert (=> setIsEmpty!24874 setRes!24873))

(assert (= (and mapNonEmpty!18594 condMapEmpty!18599) mapIsEmpty!18599))

(assert (= (and mapNonEmpty!18594 (not condMapEmpty!18599)) mapNonEmpty!18599))

(assert (= b!2845323 b!2845319))

(assert (= (and b!2845323 condSetEmpty!24873) setIsEmpty!24873))

(assert (= (and b!2845323 (not condSetEmpty!24873)) setNonEmpty!24874))

(assert (= setNonEmpty!24874 b!2845321))

(assert (= (and mapNonEmpty!18599 ((_ is Cons!33722) mapValue!18599)) b!2845323))

(assert (= b!2845320 b!2845322))

(assert (= (and b!2845320 condSetEmpty!24874) setIsEmpty!24874))

(assert (= (and b!2845320 (not condSetEmpty!24874)) setNonEmpty!24873))

(assert (= setNonEmpty!24873 b!2845324))

(assert (= (and mapNonEmpty!18594 ((_ is Cons!33722) mapDefault!18599)) b!2845320))

(declare-fun m!3273319 () Bool)

(assert (=> b!2845323 m!3273319))

(declare-fun m!3273321 () Bool)

(assert (=> setNonEmpty!24873 m!3273321))

(declare-fun m!3273323 () Bool)

(assert (=> mapNonEmpty!18599 m!3273323))

(declare-fun m!3273325 () Bool)

(assert (=> setNonEmpty!24874 m!3273325))

(declare-fun m!3273327 () Bool)

(assert (=> b!2845320 m!3273327))

(declare-fun b!2845325 () Bool)

(declare-fun e!1802773 () Bool)

(declare-fun tp!912110 () Bool)

(declare-fun tp!912111 () Bool)

(assert (=> b!2845325 (= e!1802773 (and tp!912110 tp!912111))))

(assert (=> b!2844820 (= tp!911887 e!1802773)))

(assert (= (and b!2844820 ((_ is Cons!33720) (exprs!2991 setElem!24844))) b!2845325))

(declare-fun b!2845326 () Bool)

(declare-fun e!1802774 () Bool)

(declare-fun tp!912112 () Bool)

(declare-fun tp!912113 () Bool)

(assert (=> b!2845326 (= e!1802774 (and tp!912112 tp!912113))))

(assert (=> b!2844840 (= tp!911910 e!1802774)))

(assert (= (and b!2844840 ((_ is Cons!33720) (exprs!2991 setElem!24849))) b!2845326))

(declare-fun b!2845329 () Bool)

(declare-fun e!1802775 () Bool)

(declare-fun tp!912115 () Bool)

(assert (=> b!2845329 (= e!1802775 tp!912115)))

(declare-fun b!2845330 () Bool)

(declare-fun tp!912116 () Bool)

(declare-fun tp!912117 () Bool)

(assert (=> b!2845330 (= e!1802775 (and tp!912116 tp!912117))))

(assert (=> b!2844847 (= tp!911923 e!1802775)))

(declare-fun b!2845328 () Bool)

(declare-fun tp!912118 () Bool)

(declare-fun tp!912114 () Bool)

(assert (=> b!2845328 (= e!1802775 (and tp!912118 tp!912114))))

(declare-fun b!2845327 () Bool)

(assert (=> b!2845327 (= e!1802775 tp_is_empty!14689)))

(assert (= (and b!2844847 ((_ is ElementMatch!8463) (regOne!17439 (regex!5072 (rule!7500 t1!27))))) b!2845327))

(assert (= (and b!2844847 ((_ is Concat!13765) (regOne!17439 (regex!5072 (rule!7500 t1!27))))) b!2845328))

(assert (= (and b!2844847 ((_ is Star!8463) (regOne!17439 (regex!5072 (rule!7500 t1!27))))) b!2845329))

(assert (= (and b!2844847 ((_ is Union!8463) (regOne!17439 (regex!5072 (rule!7500 t1!27))))) b!2845330))

(declare-fun b!2845333 () Bool)

(declare-fun e!1802776 () Bool)

(declare-fun tp!912120 () Bool)

(assert (=> b!2845333 (= e!1802776 tp!912120)))

(declare-fun b!2845334 () Bool)

(declare-fun tp!912121 () Bool)

(declare-fun tp!912122 () Bool)

(assert (=> b!2845334 (= e!1802776 (and tp!912121 tp!912122))))

(assert (=> b!2844847 (= tp!911924 e!1802776)))

(declare-fun b!2845332 () Bool)

(declare-fun tp!912123 () Bool)

(declare-fun tp!912119 () Bool)

(assert (=> b!2845332 (= e!1802776 (and tp!912123 tp!912119))))

(declare-fun b!2845331 () Bool)

(assert (=> b!2845331 (= e!1802776 tp_is_empty!14689)))

(assert (= (and b!2844847 ((_ is ElementMatch!8463) (regTwo!17439 (regex!5072 (rule!7500 t1!27))))) b!2845331))

(assert (= (and b!2844847 ((_ is Concat!13765) (regTwo!17439 (regex!5072 (rule!7500 t1!27))))) b!2845332))

(assert (= (and b!2844847 ((_ is Star!8463) (regTwo!17439 (regex!5072 (rule!7500 t1!27))))) b!2845333))

(assert (= (and b!2844847 ((_ is Union!8463) (regTwo!17439 (regex!5072 (rule!7500 t1!27))))) b!2845334))

(declare-fun b!2845335 () Bool)

(declare-fun e!1802777 () Bool)

(declare-fun tp!912124 () Bool)

(declare-fun tp!912125 () Bool)

(assert (=> b!2845335 (= e!1802777 (and tp!912124 tp!912125))))

(assert (=> b!2844849 (= tp!911928 e!1802777)))

(assert (= (and b!2844849 ((_ is Cons!33720) (exprs!2991 (_1!19914 (_1!19915 (h!39142 mapDefault!18591)))))) b!2845335))

(declare-fun b!2845336 () Bool)

(declare-fun e!1802778 () Bool)

(declare-fun tp!912126 () Bool)

(declare-fun tp!912127 () Bool)

(assert (=> b!2845336 (= e!1802778 (and tp!912126 tp!912127))))

(assert (=> b!2844794 (= tp!911857 e!1802778)))

(assert (= (and b!2844794 ((_ is Cons!33720) (exprs!2991 (_2!19912 (_1!19913 (h!39141 mapDefault!18590)))))) b!2845336))

(declare-fun b!2845337 () Bool)

(declare-fun e!1802779 () Bool)

(declare-fun tp!912128 () Bool)

(declare-fun tp!912129 () Bool)

(assert (=> b!2845337 (= e!1802779 (and tp!912128 tp!912129))))

(assert (=> b!2844797 (= tp!911862 e!1802779)))

(assert (= (and b!2844797 ((_ is Cons!33720) (exprs!2991 (_2!19912 (_1!19913 (h!39141 (zeroValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))))))) b!2845337))

(declare-fun b!2845338 () Bool)

(declare-fun e!1802780 () Bool)

(declare-fun tp!912130 () Bool)

(declare-fun tp!912131 () Bool)

(assert (=> b!2845338 (= e!1802780 (and tp!912130 tp!912131))))

(assert (=> b!2844800 (= tp!911867 e!1802780)))

(assert (= (and b!2844800 ((_ is Cons!33720) (exprs!2991 (_2!19912 (_1!19913 (h!39141 (minValue!4355 (v!34388 (underlying!8421 (v!34389 (underlying!8422 (cache!4137 cacheDown!447)))))))))))) b!2845338))

(declare-fun b!2845339 () Bool)

(declare-fun e!1802781 () Bool)

(declare-fun tp!912132 () Bool)

(declare-fun tp!912133 () Bool)

(assert (=> b!2845339 (= e!1802781 (and tp!912132 tp!912133))))

(assert (=> b!2844837 (= tp!911908 e!1802781)))

(assert (= (and b!2844837 ((_ is Cons!33720) (exprs!2991 setElem!24850))) b!2845339))

(declare-fun b!2845340 () Bool)

(declare-fun e!1802782 () Bool)

(declare-fun tp!912134 () Bool)

(declare-fun tp!912135 () Bool)

(assert (=> b!2845340 (= e!1802782 (and tp!912134 tp!912135))))

(assert (=> b!2844819 (= tp!911888 e!1802782)))

(assert (= (and b!2844819 ((_ is Cons!33720) (exprs!2991 (_1!19914 (_1!19915 (h!39142 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434)))))))))))) b!2845340))

(declare-fun condSetEmpty!24875 () Bool)

(assert (=> setNonEmpty!24838 (= condSetEmpty!24875 (= setRest!24838 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24875 () Bool)

(assert (=> setNonEmpty!24838 (= tp!911854 setRes!24875)))

(declare-fun setIsEmpty!24875 () Bool)

(assert (=> setIsEmpty!24875 setRes!24875))

(declare-fun e!1802783 () Bool)

(declare-fun setElem!24875 () Context!4982)

(declare-fun setNonEmpty!24875 () Bool)

(declare-fun tp!912136 () Bool)

(assert (=> setNonEmpty!24875 (= setRes!24875 (and tp!912136 (inv!45728 setElem!24875) e!1802783))))

(declare-fun setRest!24875 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24875 (= setRest!24838 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24875 true) setRest!24875))))

(declare-fun b!2845341 () Bool)

(declare-fun tp!912137 () Bool)

(assert (=> b!2845341 (= e!1802783 tp!912137)))

(assert (= (and setNonEmpty!24838 condSetEmpty!24875) setIsEmpty!24875))

(assert (= (and setNonEmpty!24838 (not condSetEmpty!24875)) setNonEmpty!24875))

(assert (= setNonEmpty!24875 b!2845341))

(declare-fun m!3273329 () Bool)

(assert (=> setNonEmpty!24875 m!3273329))

(declare-fun condSetEmpty!24876 () Bool)

(assert (=> setNonEmpty!24843 (= condSetEmpty!24876 (= setRest!24843 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24876 () Bool)

(assert (=> setNonEmpty!24843 (= tp!911882 setRes!24876)))

(declare-fun setIsEmpty!24876 () Bool)

(assert (=> setIsEmpty!24876 setRes!24876))

(declare-fun tp!912138 () Bool)

(declare-fun setNonEmpty!24876 () Bool)

(declare-fun setElem!24876 () Context!4982)

(declare-fun e!1802784 () Bool)

(assert (=> setNonEmpty!24876 (= setRes!24876 (and tp!912138 (inv!45728 setElem!24876) e!1802784))))

(declare-fun setRest!24876 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24876 (= setRest!24843 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24876 true) setRest!24876))))

(declare-fun b!2845342 () Bool)

(declare-fun tp!912139 () Bool)

(assert (=> b!2845342 (= e!1802784 tp!912139)))

(assert (= (and setNonEmpty!24843 condSetEmpty!24876) setIsEmpty!24876))

(assert (= (and setNonEmpty!24843 (not condSetEmpty!24876)) setNonEmpty!24876))

(assert (= setNonEmpty!24876 b!2845342))

(declare-fun m!3273331 () Bool)

(assert (=> setNonEmpty!24876 m!3273331))

(declare-fun condSetEmpty!24877 () Bool)

(assert (=> setNonEmpty!24839 (= condSetEmpty!24877 (= setRest!24839 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24877 () Bool)

(assert (=> setNonEmpty!24839 (= tp!911859 setRes!24877)))

(declare-fun setIsEmpty!24877 () Bool)

(assert (=> setIsEmpty!24877 setRes!24877))

(declare-fun tp!912140 () Bool)

(declare-fun setElem!24877 () Context!4982)

(declare-fun setNonEmpty!24877 () Bool)

(declare-fun e!1802785 () Bool)

(assert (=> setNonEmpty!24877 (= setRes!24877 (and tp!912140 (inv!45728 setElem!24877) e!1802785))))

(declare-fun setRest!24877 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24877 (= setRest!24839 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24877 true) setRest!24877))))

(declare-fun b!2845343 () Bool)

(declare-fun tp!912141 () Bool)

(assert (=> b!2845343 (= e!1802785 tp!912141)))

(assert (= (and setNonEmpty!24839 condSetEmpty!24877) setIsEmpty!24877))

(assert (= (and setNonEmpty!24839 (not condSetEmpty!24877)) setNonEmpty!24877))

(assert (= setNonEmpty!24877 b!2845343))

(declare-fun m!3273333 () Bool)

(assert (=> setNonEmpty!24877 m!3273333))

(declare-fun condSetEmpty!24878 () Bool)

(assert (=> setNonEmpty!24840 (= condSetEmpty!24878 (= setRest!24840 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24878 () Bool)

(assert (=> setNonEmpty!24840 (= tp!911864 setRes!24878)))

(declare-fun setIsEmpty!24878 () Bool)

(assert (=> setIsEmpty!24878 setRes!24878))

(declare-fun tp!912142 () Bool)

(declare-fun setElem!24878 () Context!4982)

(declare-fun setNonEmpty!24878 () Bool)

(declare-fun e!1802786 () Bool)

(assert (=> setNonEmpty!24878 (= setRes!24878 (and tp!912142 (inv!45728 setElem!24878) e!1802786))))

(declare-fun setRest!24878 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24878 (= setRest!24840 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24878 true) setRest!24878))))

(declare-fun b!2845344 () Bool)

(declare-fun tp!912143 () Bool)

(assert (=> b!2845344 (= e!1802786 tp!912143)))

(assert (= (and setNonEmpty!24840 condSetEmpty!24878) setIsEmpty!24878))

(assert (= (and setNonEmpty!24840 (not condSetEmpty!24878)) setNonEmpty!24878))

(assert (= setNonEmpty!24878 b!2845344))

(declare-fun m!3273335 () Bool)

(assert (=> setNonEmpty!24878 m!3273335))

(declare-fun b!2845347 () Bool)

(declare-fun e!1802787 () Bool)

(declare-fun tp!912145 () Bool)

(assert (=> b!2845347 (= e!1802787 tp!912145)))

(declare-fun b!2845348 () Bool)

(declare-fun tp!912146 () Bool)

(declare-fun tp!912147 () Bool)

(assert (=> b!2845348 (= e!1802787 (and tp!912146 tp!912147))))

(assert (=> b!2844784 (= tp!911841 e!1802787)))

(declare-fun b!2845346 () Bool)

(declare-fun tp!912148 () Bool)

(declare-fun tp!912144 () Bool)

(assert (=> b!2845346 (= e!1802787 (and tp!912148 tp!912144))))

(declare-fun b!2845345 () Bool)

(assert (=> b!2845345 (= e!1802787 tp_is_empty!14689)))

(assert (= (and b!2844784 ((_ is ElementMatch!8463) (regex!5072 (h!39145 (t!232844 rules!1139))))) b!2845345))

(assert (= (and b!2844784 ((_ is Concat!13765) (regex!5072 (h!39145 (t!232844 rules!1139))))) b!2845346))

(assert (= (and b!2844784 ((_ is Star!8463) (regex!5072 (h!39145 (t!232844 rules!1139))))) b!2845347))

(assert (= (and b!2844784 ((_ is Union!8463) (regex!5072 (h!39145 (t!232844 rules!1139))))) b!2845348))

(declare-fun b!2845357 () Bool)

(declare-fun tp!912155 () Bool)

(declare-fun tp!912157 () Bool)

(declare-fun e!1802793 () Bool)

(assert (=> b!2845357 (= e!1802793 (and (inv!45726 (left!25404 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27))))) tp!912157 (inv!45726 (right!25734 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27))))) tp!912155))))

(declare-fun b!2845359 () Bool)

(declare-fun e!1802792 () Bool)

(declare-fun tp!912156 () Bool)

(assert (=> b!2845359 (= e!1802792 tp!912156)))

(declare-fun b!2845358 () Bool)

(declare-fun inv!45731 (IArray!20921) Bool)

(assert (=> b!2845358 (= e!1802793 (and (inv!45731 (xs!13574 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27))))) e!1802792))))

(assert (=> b!2844731 (= tp!911812 (and (inv!45726 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27)))) e!1802793))))

(assert (= (and b!2844731 ((_ is Node!10458) (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27))))) b!2845357))

(assert (= b!2845358 b!2845359))

(assert (= (and b!2844731 ((_ is Leaf!15913) (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t1!27))) (value!162954 t1!27))))) b!2845358))

(declare-fun m!3273337 () Bool)

(assert (=> b!2845357 m!3273337))

(declare-fun m!3273339 () Bool)

(assert (=> b!2845357 m!3273339))

(declare-fun m!3273341 () Bool)

(assert (=> b!2845358 m!3273341))

(assert (=> b!2844731 m!3272549))

(declare-fun b!2845360 () Bool)

(declare-fun e!1802794 () Bool)

(declare-fun tp!912158 () Bool)

(declare-fun tp!912159 () Bool)

(assert (=> b!2845360 (= e!1802794 (and tp!912158 tp!912159))))

(assert (=> b!2844865 (= tp!911960 e!1802794)))

(assert (= (and b!2844865 ((_ is Cons!33720) (exprs!2991 (_2!19912 (_1!19913 (h!39141 mapDefault!18597)))))) b!2845360))

(declare-fun e!1802796 () Bool)

(declare-fun e!1802797 () Bool)

(declare-fun tp!912163 () Bool)

(declare-fun b!2845361 () Bool)

(declare-fun setRes!24879 () Bool)

(assert (=> b!2845361 (= e!1802797 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 (t!232841 mapDefault!18594))))) e!1802796 tp_is_empty!14689 setRes!24879 tp!912163))))

(declare-fun condSetEmpty!24879 () Bool)

(assert (=> b!2845361 (= condSetEmpty!24879 (= (_2!19915 (h!39142 (t!232841 mapDefault!18594))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setNonEmpty!24879 () Bool)

(declare-fun tp!912160 () Bool)

(declare-fun setElem!24879 () Context!4982)

(declare-fun e!1802795 () Bool)

(assert (=> setNonEmpty!24879 (= setRes!24879 (and tp!912160 (inv!45728 setElem!24879) e!1802795))))

(declare-fun setRest!24879 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24879 (= (_2!19915 (h!39142 (t!232841 mapDefault!18594))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24879 true) setRest!24879))))

(declare-fun b!2845362 () Bool)

(declare-fun tp!912162 () Bool)

(assert (=> b!2845362 (= e!1802796 tp!912162)))

(declare-fun b!2845363 () Bool)

(declare-fun tp!912161 () Bool)

(assert (=> b!2845363 (= e!1802795 tp!912161)))

(assert (=> b!2844836 (= tp!911915 e!1802797)))

(declare-fun setIsEmpty!24879 () Bool)

(assert (=> setIsEmpty!24879 setRes!24879))

(assert (= b!2845361 b!2845362))

(assert (= (and b!2845361 condSetEmpty!24879) setIsEmpty!24879))

(assert (= (and b!2845361 (not condSetEmpty!24879)) setNonEmpty!24879))

(assert (= setNonEmpty!24879 b!2845363))

(assert (= (and b!2844836 ((_ is Cons!33722) (t!232841 mapDefault!18594))) b!2845361))

(declare-fun m!3273343 () Bool)

(assert (=> b!2845361 m!3273343))

(declare-fun m!3273345 () Bool)

(assert (=> setNonEmpty!24879 m!3273345))

(declare-fun setRes!24880 () Bool)

(declare-fun b!2845364 () Bool)

(declare-fun e!1802799 () Bool)

(declare-fun e!1802800 () Bool)

(declare-fun tp!912167 () Bool)

(assert (=> b!2845364 (= e!1802800 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 (t!232841 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))))))) e!1802799 tp_is_empty!14689 setRes!24880 tp!912167))))

(declare-fun condSetEmpty!24880 () Bool)

(assert (=> b!2845364 (= condSetEmpty!24880 (= (_2!19915 (h!39142 (t!232841 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun e!1802798 () Bool)

(declare-fun setElem!24880 () Context!4982)

(declare-fun setNonEmpty!24880 () Bool)

(declare-fun tp!912164 () Bool)

(assert (=> setNonEmpty!24880 (= setRes!24880 (and tp!912164 (inv!45728 setElem!24880) e!1802798))))

(declare-fun setRest!24880 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24880 (= (_2!19915 (h!39142 (t!232841 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24880 true) setRest!24880))))

(declare-fun b!2845365 () Bool)

(declare-fun tp!912166 () Bool)

(assert (=> b!2845365 (= e!1802799 tp!912166)))

(declare-fun b!2845366 () Bool)

(declare-fun tp!912165 () Bool)

(assert (=> b!2845366 (= e!1802798 tp!912165)))

(assert (=> b!2844818 (= tp!911889 e!1802800)))

(declare-fun setIsEmpty!24880 () Bool)

(assert (=> setIsEmpty!24880 setRes!24880))

(assert (= b!2845364 b!2845365))

(assert (= (and b!2845364 condSetEmpty!24880) setIsEmpty!24880))

(assert (= (and b!2845364 (not condSetEmpty!24880)) setNonEmpty!24880))

(assert (= setNonEmpty!24880 b!2845366))

(assert (= (and b!2844818 ((_ is Cons!33722) (t!232841 (minValue!4356 (v!34390 (underlying!8423 (v!34391 (underlying!8424 (cache!4138 cacheUp!434))))))))) b!2845364))

(declare-fun m!3273347 () Bool)

(assert (=> b!2845364 m!3273347))

(declare-fun m!3273349 () Bool)

(assert (=> setNonEmpty!24880 m!3273349))

(declare-fun b!2845369 () Bool)

(declare-fun e!1802801 () Bool)

(declare-fun tp!912169 () Bool)

(assert (=> b!2845369 (= e!1802801 tp!912169)))

(declare-fun b!2845370 () Bool)

(declare-fun tp!912170 () Bool)

(declare-fun tp!912171 () Bool)

(assert (=> b!2845370 (= e!1802801 (and tp!912170 tp!912171))))

(assert (=> b!2844805 (= tp!911870 e!1802801)))

(declare-fun b!2845368 () Bool)

(declare-fun tp!912172 () Bool)

(declare-fun tp!912168 () Bool)

(assert (=> b!2845368 (= e!1802801 (and tp!912172 tp!912168))))

(declare-fun b!2845367 () Bool)

(assert (=> b!2845367 (= e!1802801 tp_is_empty!14689)))

(assert (= (and b!2844805 ((_ is ElementMatch!8463) (reg!8792 (regex!5072 (rule!7500 t2!27))))) b!2845367))

(assert (= (and b!2844805 ((_ is Concat!13765) (reg!8792 (regex!5072 (rule!7500 t2!27))))) b!2845368))

(assert (= (and b!2844805 ((_ is Star!8463) (reg!8792 (regex!5072 (rule!7500 t2!27))))) b!2845369))

(assert (= (and b!2844805 ((_ is Union!8463) (reg!8792 (regex!5072 (rule!7500 t2!27))))) b!2845370))

(declare-fun b!2845371 () Bool)

(declare-fun e!1802802 () Bool)

(declare-fun tp!912173 () Bool)

(declare-fun tp!912174 () Bool)

(assert (=> b!2845371 (= e!1802802 (and tp!912173 tp!912174))))

(assert (=> b!2844871 (= tp!911966 e!1802802)))

(assert (= (and b!2844871 ((_ is Cons!33720) (exprs!2991 (_2!19912 (_1!19913 (h!39141 mapValue!18590)))))) b!2845371))

(declare-fun setRes!24881 () Bool)

(declare-fun tp!912178 () Bool)

(declare-fun e!1802805 () Bool)

(declare-fun b!2845372 () Bool)

(declare-fun e!1802804 () Bool)

(assert (=> b!2845372 (= e!1802805 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 (t!232841 mapDefault!18591))))) e!1802804 tp_is_empty!14689 setRes!24881 tp!912178))))

(declare-fun condSetEmpty!24881 () Bool)

(assert (=> b!2845372 (= condSetEmpty!24881 (= (_2!19915 (h!39142 (t!232841 mapDefault!18591))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun e!1802803 () Bool)

(declare-fun tp!912175 () Bool)

(declare-fun setElem!24881 () Context!4982)

(declare-fun setNonEmpty!24881 () Bool)

(assert (=> setNonEmpty!24881 (= setRes!24881 (and tp!912175 (inv!45728 setElem!24881) e!1802803))))

(declare-fun setRest!24881 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24881 (= (_2!19915 (h!39142 (t!232841 mapDefault!18591))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24881 true) setRest!24881))))

(declare-fun b!2845373 () Bool)

(declare-fun tp!912177 () Bool)

(assert (=> b!2845373 (= e!1802804 tp!912177)))

(declare-fun b!2845374 () Bool)

(declare-fun tp!912176 () Bool)

(assert (=> b!2845374 (= e!1802803 tp!912176)))

(assert (=> b!2844848 (= tp!911929 e!1802805)))

(declare-fun setIsEmpty!24881 () Bool)

(assert (=> setIsEmpty!24881 setRes!24881))

(assert (= b!2845372 b!2845373))

(assert (= (and b!2845372 condSetEmpty!24881) setIsEmpty!24881))

(assert (= (and b!2845372 (not condSetEmpty!24881)) setNonEmpty!24881))

(assert (= setNonEmpty!24881 b!2845374))

(assert (= (and b!2844848 ((_ is Cons!33722) (t!232841 mapDefault!18591))) b!2845372))

(declare-fun m!3273351 () Bool)

(assert (=> b!2845372 m!3273351))

(declare-fun m!3273353 () Bool)

(assert (=> setNonEmpty!24881 m!3273353))

(declare-fun condSetEmpty!24882 () Bool)

(assert (=> setNonEmpty!24859 (= condSetEmpty!24882 (= setRest!24859 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24882 () Bool)

(assert (=> setNonEmpty!24859 (= tp!911963 setRes!24882)))

(declare-fun setIsEmpty!24882 () Bool)

(assert (=> setIsEmpty!24882 setRes!24882))

(declare-fun setElem!24882 () Context!4982)

(declare-fun e!1802806 () Bool)

(declare-fun tp!912179 () Bool)

(declare-fun setNonEmpty!24882 () Bool)

(assert (=> setNonEmpty!24882 (= setRes!24882 (and tp!912179 (inv!45728 setElem!24882) e!1802806))))

(declare-fun setRest!24882 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24882 (= setRest!24859 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24882 true) setRest!24882))))

(declare-fun b!2845375 () Bool)

(declare-fun tp!912180 () Bool)

(assert (=> b!2845375 (= e!1802806 tp!912180)))

(assert (= (and setNonEmpty!24859 condSetEmpty!24882) setIsEmpty!24882))

(assert (= (and setNonEmpty!24859 (not condSetEmpty!24882)) setNonEmpty!24882))

(assert (= setNonEmpty!24882 b!2845375))

(declare-fun m!3273355 () Bool)

(assert (=> setNonEmpty!24882 m!3273355))

(declare-fun tp!912183 () Bool)

(declare-fun e!1802808 () Bool)

(declare-fun tp!912181 () Bool)

(declare-fun b!2845376 () Bool)

(assert (=> b!2845376 (= e!1802808 (and (inv!45726 (left!25404 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27))))) tp!912183 (inv!45726 (right!25734 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27))))) tp!912181))))

(declare-fun b!2845378 () Bool)

(declare-fun e!1802807 () Bool)

(declare-fun tp!912182 () Bool)

(assert (=> b!2845378 (= e!1802807 tp!912182)))

(declare-fun b!2845377 () Bool)

(assert (=> b!2845377 (= e!1802808 (and (inv!45731 (xs!13574 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27))))) e!1802807))))

(assert (=> b!2844728 (= tp!911811 (and (inv!45726 (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27)))) e!1802808))))

(assert (= (and b!2844728 ((_ is Node!10458) (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27))))) b!2845376))

(assert (= b!2845377 b!2845378))

(assert (= (and b!2844728 ((_ is Leaf!15913) (c!459093 (dynLambda!14196 (toChars!6985 (transformation!5072 (rule!7500 t2!27))) (value!162954 t2!27))))) b!2845377))

(declare-fun m!3273357 () Bool)

(assert (=> b!2845376 m!3273357))

(declare-fun m!3273359 () Bool)

(assert (=> b!2845376 m!3273359))

(declare-fun m!3273361 () Bool)

(assert (=> b!2845377 m!3273361))

(assert (=> b!2844728 m!3272537))

(declare-fun setRes!24883 () Bool)

(declare-fun b!2845379 () Bool)

(declare-fun e!1802811 () Bool)

(declare-fun e!1802810 () Bool)

(declare-fun tp!912187 () Bool)

(assert (=> b!2845379 (= e!1802811 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 (t!232841 mapValue!18591))))) e!1802810 tp_is_empty!14689 setRes!24883 tp!912187))))

(declare-fun condSetEmpty!24883 () Bool)

(assert (=> b!2845379 (= condSetEmpty!24883 (= (_2!19915 (h!39142 (t!232841 mapValue!18591))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun e!1802809 () Bool)

(declare-fun tp!912184 () Bool)

(declare-fun setElem!24883 () Context!4982)

(declare-fun setNonEmpty!24883 () Bool)

(assert (=> setNonEmpty!24883 (= setRes!24883 (and tp!912184 (inv!45728 setElem!24883) e!1802809))))

(declare-fun setRest!24883 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24883 (= (_2!19915 (h!39142 (t!232841 mapValue!18591))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24883 true) setRest!24883))))

(declare-fun b!2845380 () Bool)

(declare-fun tp!912186 () Bool)

(assert (=> b!2845380 (= e!1802810 tp!912186)))

(declare-fun b!2845381 () Bool)

(declare-fun tp!912185 () Bool)

(assert (=> b!2845381 (= e!1802809 tp!912185)))

(assert (=> b!2844841 (= tp!911920 e!1802811)))

(declare-fun setIsEmpty!24883 () Bool)

(assert (=> setIsEmpty!24883 setRes!24883))

(assert (= b!2845379 b!2845380))

(assert (= (and b!2845379 condSetEmpty!24883) setIsEmpty!24883))

(assert (= (and b!2845379 (not condSetEmpty!24883)) setNonEmpty!24883))

(assert (= setNonEmpty!24883 b!2845381))

(assert (= (and b!2844841 ((_ is Cons!33722) (t!232841 mapValue!18591))) b!2845379))

(declare-fun m!3273363 () Bool)

(assert (=> b!2845379 m!3273363))

(declare-fun m!3273365 () Bool)

(assert (=> setNonEmpty!24883 m!3273365))

(declare-fun b!2845384 () Bool)

(declare-fun e!1802812 () Bool)

(declare-fun tp!912189 () Bool)

(assert (=> b!2845384 (= e!1802812 tp!912189)))

(declare-fun b!2845385 () Bool)

(declare-fun tp!912190 () Bool)

(declare-fun tp!912191 () Bool)

(assert (=> b!2845385 (= e!1802812 (and tp!912190 tp!912191))))

(assert (=> b!2844869 (= tp!911958 e!1802812)))

(declare-fun b!2845383 () Bool)

(declare-fun tp!912192 () Bool)

(declare-fun tp!912188 () Bool)

(assert (=> b!2845383 (= e!1802812 (and tp!912192 tp!912188))))

(declare-fun b!2845382 () Bool)

(assert (=> b!2845382 (= e!1802812 tp_is_empty!14689)))

(assert (= (and b!2844869 ((_ is ElementMatch!8463) (_1!19912 (_1!19913 (h!39141 mapDefault!18597))))) b!2845382))

(assert (= (and b!2844869 ((_ is Concat!13765) (_1!19912 (_1!19913 (h!39141 mapDefault!18597))))) b!2845383))

(assert (= (and b!2844869 ((_ is Star!8463) (_1!19912 (_1!19913 (h!39141 mapDefault!18597))))) b!2845384))

(assert (= (and b!2844869 ((_ is Union!8463) (_1!19912 (_1!19913 (h!39141 mapDefault!18597))))) b!2845385))

(declare-fun b!2845386 () Bool)

(declare-fun e!1802815 () Bool)

(declare-fun tp!912196 () Bool)

(assert (=> b!2845386 (= e!1802815 tp!912196)))

(declare-fun e!1802814 () Bool)

(assert (=> b!2844869 (= tp!911961 e!1802814)))

(declare-fun tp!912197 () Bool)

(declare-fun tp!912194 () Bool)

(declare-fun setRes!24884 () Bool)

(declare-fun b!2845387 () Bool)

(assert (=> b!2845387 (= e!1802814 (and tp!912197 (inv!45728 (_2!19912 (_1!19913 (h!39141 (t!232840 mapDefault!18597))))) e!1802815 tp_is_empty!14689 setRes!24884 tp!912194))))

(declare-fun condSetEmpty!24884 () Bool)

(assert (=> b!2845387 (= condSetEmpty!24884 (= (_2!19913 (h!39141 (t!232840 mapDefault!18597))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24884 () Bool)

(assert (=> setIsEmpty!24884 setRes!24884))

(declare-fun b!2845388 () Bool)

(declare-fun e!1802813 () Bool)

(declare-fun tp!912195 () Bool)

(assert (=> b!2845388 (= e!1802813 tp!912195)))

(declare-fun setElem!24884 () Context!4982)

(declare-fun tp!912193 () Bool)

(declare-fun setNonEmpty!24884 () Bool)

(assert (=> setNonEmpty!24884 (= setRes!24884 (and tp!912193 (inv!45728 setElem!24884) e!1802813))))

(declare-fun setRest!24884 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24884 (= (_2!19913 (h!39141 (t!232840 mapDefault!18597))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24884 true) setRest!24884))))

(assert (= b!2845387 b!2845386))

(assert (= (and b!2845387 condSetEmpty!24884) setIsEmpty!24884))

(assert (= (and b!2845387 (not condSetEmpty!24884)) setNonEmpty!24884))

(assert (= setNonEmpty!24884 b!2845388))

(assert (= (and b!2844869 ((_ is Cons!33721) (t!232840 mapDefault!18597))) b!2845387))

(declare-fun m!3273367 () Bool)

(assert (=> b!2845387 m!3273367))

(declare-fun m!3273369 () Bool)

(assert (=> setNonEmpty!24884 m!3273369))

(declare-fun b!2845389 () Bool)

(declare-fun e!1802816 () Bool)

(declare-fun tp!912198 () Bool)

(assert (=> b!2845389 (= e!1802816 (and tp_is_empty!14689 tp!912198))))

(assert (=> b!2844760 (= tp!911816 e!1802816)))

(assert (= (and b!2844760 ((_ is Cons!33724) (t!232843 (originalCharacters!5804 t1!27)))) b!2845389))

(declare-fun b!2845390 () Bool)

(declare-fun e!1802817 () Bool)

(declare-fun tp!912199 () Bool)

(declare-fun tp!912200 () Bool)

(assert (=> b!2845390 (= e!1802817 (and tp!912199 tp!912200))))

(assert (=> b!2844842 (= tp!911919 e!1802817)))

(assert (= (and b!2844842 ((_ is Cons!33720) (exprs!2991 (_1!19914 (_1!19915 (h!39142 mapValue!18591)))))) b!2845390))

(declare-fun b!2845405 () Bool)

(declare-fun e!1802833 () Bool)

(declare-fun lt!1012438 () MutLongMap!4097)

(assert (=> b!2845405 (= e!1802833 ((_ is LongMap!4097) lt!1012438))))

(assert (=> b!2845405 (= lt!1012438 (v!34391 (underlying!8424 (cache!4138 (_2!19916 (prefixMatchZipperSequenceMem!5 (rulesRegex!1006 thiss!11361 rules!1139) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) cacheUp!434 cacheDown!447))))))))

(declare-fun b!2845406 () Bool)

(declare-fun e!1802834 () Bool)

(declare-fun e!1802831 () Bool)

(assert (=> b!2845406 (= e!1802834 e!1802831)))

(declare-fun b!2845407 () Bool)

(declare-fun e!1802832 () Bool)

(declare-fun e!1802830 () Bool)

(assert (=> b!2845407 (= e!1802832 e!1802830)))

(declare-fun e!1802835 () Bool)

(assert (=> d!824927 (= true (and e!1802834 e!1802835))))

(declare-fun b!2845408 () Bool)

(assert (=> b!2845408 (= e!1802831 e!1802833)))

(declare-fun b!2845409 () Bool)

(assert (=> b!2845409 (= e!1802835 e!1802832)))

(declare-fun b!2845410 () Bool)

(declare-fun lt!1012437 () MutLongMap!4096)

(assert (=> b!2845410 (= e!1802830 ((_ is LongMap!4096) lt!1012437))))

(assert (=> b!2845410 (= lt!1012437 (v!34389 (underlying!8422 (cache!4137 (_3!3116 (prefixMatchZipperSequenceMem!5 (rulesRegex!1006 thiss!11361 rules!1139) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) cacheUp!434 cacheDown!447))))))))

(assert (= b!2845408 b!2845405))

(assert (= (and b!2845406 ((_ is HashMap!4003) (cache!4138 (_2!19916 (prefixMatchZipperSequenceMem!5 (rulesRegex!1006 thiss!11361 rules!1139) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) cacheUp!434 cacheDown!447))))) b!2845408))

(assert (= d!824927 b!2845406))

(assert (= b!2845407 b!2845410))

(assert (= (and b!2845409 ((_ is HashMap!4002) (cache!4137 (_3!3116 (prefixMatchZipperSequenceMem!5 (rulesRegex!1006 thiss!11361 rules!1139) (++!8122 (charsOf!3120 t1!27) (singletonSeq!2187 (apply!7855 lt!1012244 0))) cacheUp!434 cacheDown!447))))) b!2845407))

(assert (= d!824927 b!2845409))

(declare-fun condSetEmpty!24885 () Bool)

(assert (=> setNonEmpty!24858 (= condSetEmpty!24885 (= setRest!24858 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24885 () Bool)

(assert (=> setNonEmpty!24858 (= tp!911953 setRes!24885)))

(declare-fun setIsEmpty!24885 () Bool)

(assert (=> setIsEmpty!24885 setRes!24885))

(declare-fun tp!912201 () Bool)

(declare-fun setElem!24885 () Context!4982)

(declare-fun e!1802836 () Bool)

(declare-fun setNonEmpty!24885 () Bool)

(assert (=> setNonEmpty!24885 (= setRes!24885 (and tp!912201 (inv!45728 setElem!24885) e!1802836))))

(declare-fun setRest!24885 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24885 (= setRest!24858 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24885 true) setRest!24885))))

(declare-fun b!2845411 () Bool)

(declare-fun tp!912202 () Bool)

(assert (=> b!2845411 (= e!1802836 tp!912202)))

(assert (= (and setNonEmpty!24858 condSetEmpty!24885) setIsEmpty!24885))

(assert (= (and setNonEmpty!24858 (not condSetEmpty!24885)) setNonEmpty!24885))

(assert (= setNonEmpty!24885 b!2845411))

(declare-fun m!3273371 () Bool)

(assert (=> setNonEmpty!24885 m!3273371))

(declare-fun b!2845412 () Bool)

(declare-fun e!1802837 () Bool)

(declare-fun tp!912203 () Bool)

(declare-fun tp!912204 () Bool)

(assert (=> b!2845412 (= e!1802837 (and tp!912203 tp!912204))))

(assert (=> b!2844868 (= tp!911952 e!1802837)))

(assert (= (and b!2844868 ((_ is Cons!33720) (exprs!2991 setElem!24857))) b!2845412))

(declare-fun condSetEmpty!24886 () Bool)

(assert (=> setNonEmpty!24850 (= condSetEmpty!24886 (= setRest!24850 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24886 () Bool)

(assert (=> setNonEmpty!24850 (= tp!911911 setRes!24886)))

(declare-fun setIsEmpty!24886 () Bool)

(assert (=> setIsEmpty!24886 setRes!24886))

(declare-fun e!1802838 () Bool)

(declare-fun setElem!24886 () Context!4982)

(declare-fun tp!912205 () Bool)

(declare-fun setNonEmpty!24886 () Bool)

(assert (=> setNonEmpty!24886 (= setRes!24886 (and tp!912205 (inv!45728 setElem!24886) e!1802838))))

(declare-fun setRest!24886 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24886 (= setRest!24850 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24886 true) setRest!24886))))

(declare-fun b!2845413 () Bool)

(declare-fun tp!912206 () Bool)

(assert (=> b!2845413 (= e!1802838 tp!912206)))

(assert (= (and setNonEmpty!24850 condSetEmpty!24886) setIsEmpty!24886))

(assert (= (and setNonEmpty!24850 (not condSetEmpty!24886)) setNonEmpty!24886))

(assert (= setNonEmpty!24886 b!2845413))

(declare-fun m!3273373 () Bool)

(assert (=> setNonEmpty!24886 m!3273373))

(declare-fun b!2845416 () Bool)

(declare-fun e!1802839 () Bool)

(declare-fun tp!912208 () Bool)

(assert (=> b!2845416 (= e!1802839 tp!912208)))

(declare-fun b!2845417 () Bool)

(declare-fun tp!912209 () Bool)

(declare-fun tp!912210 () Bool)

(assert (=> b!2845417 (= e!1802839 (and tp!912209 tp!912210))))

(assert (=> b!2844772 (= tp!911831 e!1802839)))

(declare-fun b!2845415 () Bool)

(declare-fun tp!912211 () Bool)

(declare-fun tp!912207 () Bool)

(assert (=> b!2845415 (= e!1802839 (and tp!912211 tp!912207))))

(declare-fun b!2845414 () Bool)

(assert (=> b!2845414 (= e!1802839 tp_is_empty!14689)))

(assert (= (and b!2844772 ((_ is ElementMatch!8463) (regOne!17438 (regex!5072 (h!39145 rules!1139))))) b!2845414))

(assert (= (and b!2844772 ((_ is Concat!13765) (regOne!17438 (regex!5072 (h!39145 rules!1139))))) b!2845415))

(assert (= (and b!2844772 ((_ is Star!8463) (regOne!17438 (regex!5072 (h!39145 rules!1139))))) b!2845416))

(assert (= (and b!2844772 ((_ is Union!8463) (regOne!17438 (regex!5072 (h!39145 rules!1139))))) b!2845417))

(declare-fun b!2845420 () Bool)

(declare-fun e!1802840 () Bool)

(declare-fun tp!912213 () Bool)

(assert (=> b!2845420 (= e!1802840 tp!912213)))

(declare-fun b!2845421 () Bool)

(declare-fun tp!912214 () Bool)

(declare-fun tp!912215 () Bool)

(assert (=> b!2845421 (= e!1802840 (and tp!912214 tp!912215))))

(assert (=> b!2844772 (= tp!911827 e!1802840)))

(declare-fun b!2845419 () Bool)

(declare-fun tp!912216 () Bool)

(declare-fun tp!912212 () Bool)

(assert (=> b!2845419 (= e!1802840 (and tp!912216 tp!912212))))

(declare-fun b!2845418 () Bool)

(assert (=> b!2845418 (= e!1802840 tp_is_empty!14689)))

(assert (= (and b!2844772 ((_ is ElementMatch!8463) (regTwo!17438 (regex!5072 (h!39145 rules!1139))))) b!2845418))

(assert (= (and b!2844772 ((_ is Concat!13765) (regTwo!17438 (regex!5072 (h!39145 rules!1139))))) b!2845419))

(assert (= (and b!2844772 ((_ is Star!8463) (regTwo!17438 (regex!5072 (h!39145 rules!1139))))) b!2845420))

(assert (= (and b!2844772 ((_ is Union!8463) (regTwo!17438 (regex!5072 (h!39145 rules!1139))))) b!2845421))

(declare-fun b!2845422 () Bool)

(declare-fun e!1802841 () Bool)

(declare-fun tp!912217 () Bool)

(declare-fun tp!912218 () Bool)

(assert (=> b!2845422 (= e!1802841 (and tp!912217 tp!912218))))

(assert (=> b!2844817 (= tp!911883 e!1802841)))

(assert (= (and b!2844817 ((_ is Cons!33720) (exprs!2991 setElem!24843))) b!2845422))

(declare-fun b!2845425 () Bool)

(declare-fun e!1802842 () Bool)

(declare-fun tp!912220 () Bool)

(assert (=> b!2845425 (= e!1802842 tp!912220)))

(declare-fun b!2845426 () Bool)

(declare-fun tp!912221 () Bool)

(declare-fun tp!912222 () Bool)

(assert (=> b!2845426 (= e!1802842 (and tp!912221 tp!912222))))

(assert (=> b!2844867 (= tp!911957 e!1802842)))

(declare-fun b!2845424 () Bool)

(declare-fun tp!912223 () Bool)

(declare-fun tp!912219 () Bool)

(assert (=> b!2845424 (= e!1802842 (and tp!912223 tp!912219))))

(declare-fun b!2845423 () Bool)

(assert (=> b!2845423 (= e!1802842 tp_is_empty!14689)))

(assert (= (and b!2844867 ((_ is ElementMatch!8463) (_1!19912 (_1!19913 (h!39141 mapValue!18597))))) b!2845423))

(assert (= (and b!2844867 ((_ is Concat!13765) (_1!19912 (_1!19913 (h!39141 mapValue!18597))))) b!2845424))

(assert (= (and b!2844867 ((_ is Star!8463) (_1!19912 (_1!19913 (h!39141 mapValue!18597))))) b!2845425))

(assert (= (and b!2844867 ((_ is Union!8463) (_1!19912 (_1!19913 (h!39141 mapValue!18597))))) b!2845426))

(declare-fun b!2845427 () Bool)

(declare-fun e!1802845 () Bool)

(declare-fun tp!912227 () Bool)

(assert (=> b!2845427 (= e!1802845 tp!912227)))

(declare-fun e!1802844 () Bool)

(assert (=> b!2844867 (= tp!911959 e!1802844)))

(declare-fun b!2845428 () Bool)

(declare-fun setRes!24887 () Bool)

(declare-fun tp!912225 () Bool)

(declare-fun tp!912228 () Bool)

(assert (=> b!2845428 (= e!1802844 (and tp!912228 (inv!45728 (_2!19912 (_1!19913 (h!39141 (t!232840 mapValue!18597))))) e!1802845 tp_is_empty!14689 setRes!24887 tp!912225))))

(declare-fun condSetEmpty!24887 () Bool)

(assert (=> b!2845428 (= condSetEmpty!24887 (= (_2!19913 (h!39141 (t!232840 mapValue!18597))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setIsEmpty!24887 () Bool)

(assert (=> setIsEmpty!24887 setRes!24887))

(declare-fun b!2845429 () Bool)

(declare-fun e!1802843 () Bool)

(declare-fun tp!912226 () Bool)

(assert (=> b!2845429 (= e!1802843 tp!912226)))

(declare-fun tp!912224 () Bool)

(declare-fun setNonEmpty!24887 () Bool)

(declare-fun setElem!24887 () Context!4982)

(assert (=> setNonEmpty!24887 (= setRes!24887 (and tp!912224 (inv!45728 setElem!24887) e!1802843))))

(declare-fun setRest!24887 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24887 (= (_2!19913 (h!39141 (t!232840 mapValue!18597))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24887 true) setRest!24887))))

(assert (= b!2845428 b!2845427))

(assert (= (and b!2845428 condSetEmpty!24887) setIsEmpty!24887))

(assert (= (and b!2845428 (not condSetEmpty!24887)) setNonEmpty!24887))

(assert (= setNonEmpty!24887 b!2845429))

(assert (= (and b!2844867 ((_ is Cons!33721) (t!232840 mapValue!18597))) b!2845428))

(declare-fun m!3273375 () Bool)

(assert (=> b!2845428 m!3273375))

(declare-fun m!3273377 () Bool)

(assert (=> setNonEmpty!24887 m!3273377))

(declare-fun condSetEmpty!24888 () Bool)

(assert (=> setNonEmpty!24857 (= condSetEmpty!24888 (= setRest!24857 ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setRes!24888 () Bool)

(assert (=> setNonEmpty!24857 (= tp!911954 setRes!24888)))

(declare-fun setIsEmpty!24888 () Bool)

(assert (=> setIsEmpty!24888 setRes!24888))

(declare-fun setElem!24888 () Context!4982)

(declare-fun e!1802846 () Bool)

(declare-fun tp!912229 () Bool)

(declare-fun setNonEmpty!24888 () Bool)

(assert (=> setNonEmpty!24888 (= setRes!24888 (and tp!912229 (inv!45728 setElem!24888) e!1802846))))

(declare-fun setRest!24888 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24888 (= setRest!24857 ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24888 true) setRest!24888))))

(declare-fun b!2845430 () Bool)

(declare-fun tp!912230 () Bool)

(assert (=> b!2845430 (= e!1802846 tp!912230)))

(assert (= (and setNonEmpty!24857 condSetEmpty!24888) setIsEmpty!24888))

(assert (= (and setNonEmpty!24857 (not condSetEmpty!24888)) setNonEmpty!24888))

(assert (= setNonEmpty!24888 b!2845430))

(declare-fun m!3273379 () Bool)

(assert (=> setNonEmpty!24888 m!3273379))

(declare-fun e!1802849 () Bool)

(declare-fun setRes!24889 () Bool)

(declare-fun b!2845431 () Bool)

(declare-fun tp!912234 () Bool)

(declare-fun e!1802848 () Bool)

(assert (=> b!2845431 (= e!1802849 (and (inv!45728 (_1!19914 (_1!19915 (h!39142 (t!232841 mapValue!18594))))) e!1802848 tp_is_empty!14689 setRes!24889 tp!912234))))

(declare-fun condSetEmpty!24889 () Bool)

(assert (=> b!2845431 (= condSetEmpty!24889 (= (_2!19915 (h!39142 (t!232841 mapValue!18594))) ((as const (Array Context!4982 Bool)) false)))))

(declare-fun setNonEmpty!24889 () Bool)

(declare-fun tp!912231 () Bool)

(declare-fun setElem!24889 () Context!4982)

(declare-fun e!1802847 () Bool)

(assert (=> setNonEmpty!24889 (= setRes!24889 (and tp!912231 (inv!45728 setElem!24889) e!1802847))))

(declare-fun setRest!24889 () (InoxSet Context!4982))

(assert (=> setNonEmpty!24889 (= (_2!19915 (h!39142 (t!232841 mapValue!18594))) ((_ map or) (store ((as const (Array Context!4982 Bool)) false) setElem!24889 true) setRest!24889))))

(declare-fun b!2845432 () Bool)

(declare-fun tp!912233 () Bool)

(assert (=> b!2845432 (= e!1802848 tp!912233)))

(declare-fun b!2845433 () Bool)

(declare-fun tp!912232 () Bool)

(assert (=> b!2845433 (= e!1802847 tp!912232)))

(assert (=> b!2844839 (= tp!911914 e!1802849)))

(declare-fun setIsEmpty!24889 () Bool)

(assert (=> setIsEmpty!24889 setRes!24889))

(assert (= b!2845431 b!2845432))

(assert (= (and b!2845431 condSetEmpty!24889) setIsEmpty!24889))

(assert (= (and b!2845431 (not condSetEmpty!24889)) setNonEmpty!24889))

(assert (= setNonEmpty!24889 b!2845433))

(assert (= (and b!2844839 ((_ is Cons!33722) (t!232841 mapValue!18594))) b!2845431))

(declare-fun m!3273381 () Bool)

(assert (=> b!2845431 m!3273381))

(declare-fun m!3273383 () Bool)

(assert (=> setNonEmpty!24889 m!3273383))

(declare-fun b!2845436 () Bool)

(declare-fun e!1802850 () Bool)

(declare-fun tp!912236 () Bool)

(assert (=> b!2845436 (= e!1802850 tp!912236)))

(declare-fun b!2845437 () Bool)

(declare-fun tp!912237 () Bool)

(declare-fun tp!912238 () Bool)

(assert (=> b!2845437 (= e!1802850 (and tp!912237 tp!912238))))

(assert (=> b!2844774 (= tp!911829 e!1802850)))

(declare-fun b!2845435 () Bool)

(declare-fun tp!912239 () Bool)

(declare-fun tp!912235 () Bool)

(assert (=> b!2845435 (= e!1802850 (and tp!912239 tp!912235))))

(declare-fun b!2845434 () Bool)

(assert (=> b!2845434 (= e!1802850 tp_is_empty!14689)))

(assert (= (and b!2844774 ((_ is ElementMatch!8463) (regOne!17439 (regex!5072 (h!39145 rules!1139))))) b!2845434))

(assert (= (and b!2844774 ((_ is Concat!13765) (regOne!17439 (regex!5072 (h!39145 rules!1139))))) b!2845435))

(assert (= (and b!2844774 ((_ is Star!8463) (regOne!17439 (regex!5072 (h!39145 rules!1139))))) b!2845436))

(assert (= (and b!2844774 ((_ is Union!8463) (regOne!17439 (regex!5072 (h!39145 rules!1139))))) b!2845437))

(declare-fun b!2845440 () Bool)

(declare-fun e!1802851 () Bool)

(declare-fun tp!912241 () Bool)

(assert (=> b!2845440 (= e!1802851 tp!912241)))

(declare-fun b!2845441 () Bool)

(declare-fun tp!912242 () Bool)

(declare-fun tp!912243 () Bool)

(assert (=> b!2845441 (= e!1802851 (and tp!912242 tp!912243))))

(assert (=> b!2844774 (= tp!911830 e!1802851)))

(declare-fun b!2845439 () Bool)

(declare-fun tp!912244 () Bool)

(declare-fun tp!912240 () Bool)

(assert (=> b!2845439 (= e!1802851 (and tp!912244 tp!912240))))

(declare-fun b!2845438 () Bool)

(assert (=> b!2845438 (= e!1802851 tp_is_empty!14689)))

(assert (= (and b!2844774 ((_ is ElementMatch!8463) (regTwo!17439 (regex!5072 (h!39145 rules!1139))))) b!2845438))

(assert (= (and b!2844774 ((_ is Concat!13765) (regTwo!17439 (regex!5072 (h!39145 rules!1139))))) b!2845439))

(assert (= (and b!2844774 ((_ is Star!8463) (regTwo!17439 (regex!5072 (h!39145 rules!1139))))) b!2845440))

(assert (= (and b!2844774 ((_ is Union!8463) (regTwo!17439 (regex!5072 (h!39145 rules!1139))))) b!2845441))

(declare-fun b!2845444 () Bool)

(declare-fun e!1802852 () Bool)

(declare-fun tp!912246 () Bool)

(assert (=> b!2845444 (= e!1802852 tp!912246)))

(declare-fun b!2845445 () Bool)

(declare-fun tp!912247 () Bool)

(declare-fun tp!912248 () Bool)

(assert (=> b!2845445 (= e!1802852 (and tp!912247 tp!912248))))

(assert (=> b!2844846 (= tp!911922 e!1802852)))

(declare-fun b!2845443 () Bool)

(declare-fun tp!912249 () Bool)

(declare-fun tp!912245 () Bool)

(assert (=> b!2845443 (= e!1802852 (and tp!912249 tp!912245))))

(declare-fun b!2845442 () Bool)

(assert (=> b!2845442 (= e!1802852 tp_is_empty!14689)))

(assert (= (and b!2844846 ((_ is ElementMatch!8463) (reg!8792 (regex!5072 (rule!7500 t1!27))))) b!2845442))

(assert (= (and b!2844846 ((_ is Concat!13765) (reg!8792 (regex!5072 (rule!7500 t1!27))))) b!2845443))

(assert (= (and b!2844846 ((_ is Star!8463) (reg!8792 (regex!5072 (rule!7500 t1!27))))) b!2845444))

(assert (= (and b!2844846 ((_ is Union!8463) (reg!8792 (regex!5072 (rule!7500 t1!27))))) b!2845445))

(declare-fun b_lambda!85553 () Bool)

(assert (= b_lambda!85551 (or d!824929 b_lambda!85553)))

(declare-fun bs!519596 () Bool)

(declare-fun d!825179 () Bool)

(assert (= bs!519596 (and d!825179 d!824929)))

(assert (=> bs!519596 (= (dynLambda!14201 lambda!104382 (h!39145 rules!1139)) (regex!5072 (h!39145 rules!1139)))))

(assert (=> b!2845071 d!825179))

(check-sat (not b!2845220) (not b!2845375) (not setNonEmpty!24885) (not b!2845248) (not d!825025) (not d!825165) (not setNonEmpty!24880) (not b!2844969) (not b!2845301) b_and!208867 (not b!2845191) (not b!2845236) (not b!2845380) (not bm!183481) (not b!2845114) (not b!2845388) (not b!2845309) (not b!2845379) (not b!2845312) (not d!825017) (not d!825041) (not b!2845302) (not setNonEmpty!24879) (not b!2845348) (not b!2844897) (not b!2845420) (not d!825153) (not b!2845337) (not d!825065) (not b!2845140) (not b!2845281) b_and!208895 (not b!2845340) (not d!825061) (not d!824971) (not d!824989) (not d!825149) (not setNonEmpty!24865) (not b!2844988) (not b!2845343) (not d!825011) (not d!824995) (not d!825159) (not b!2845387) (not b!2845257) (not b!2845311) (not b_next!83361) (not d!824983) (not d!825049) (not d!824987) (not b!2845307) (not b!2845336) b_and!208889 (not b!2845178) (not b!2844887) (not bm!183476) (not setNonEmpty!24873) (not b_next!83363) (not b!2845370) b_and!208899 (not b_lambda!85543) (not b!2845245) (not d!825115) (not b!2845065) (not b!2845251) (not b!2845300) b_and!208891 (not d!825101) (not d!825063) (not b!2845426) (not d!824991) (not b!2845237) (not b!2845019) (not b!2845270) (not setNonEmpty!24869) (not b!2845319) (not setNonEmpty!24881) (not b!2845385) (not b!2845072) (not b!2845291) (not d!824963) (not d!824961) (not b!2845131) (not b!2845189) (not setNonEmpty!24868) (not b!2844888) (not b!2845278) (not b!2845419) (not b!2845280) b_and!208857 (not d!825105) (not b!2845136) (not b_next!83353) (not b!2844893) (not b!2845231) (not b!2845424) (not b!2845304) (not b!2845004) (not d!825151) (not d!824955) (not b!2845444) (not b!2845259) (not b!2845425) (not d!825121) (not d!825023) (not b_next!83341) (not d!825067) (not b_next!83355) (not d!825057) (not b!2845247) (not b!2845316) (not d!824959) (not b!2845063) (not b!2845267) (not d!825133) (not b!2844906) (not d!825107) (not b!2845137) (not b_lambda!85553) (not d!825155) (not b!2845330) (not b!2845274) (not b!2845318) b_and!208861 (not d!825019) (not d!825013) (not b!2845346) (not b!2845441) (not b!2845422) (not b!2845103) (not b!2845360) (not b!2845203) (not d!825091) (not b!2845328) (not setNonEmpty!24860) (not b!2845433) (not b_next!83337) (not b!2845228) (not b!2845292) (not b!2845057) (not b!2845284) (not b!2845263) (not b!2845341) (not d!825135) (not b!2845105) (not b!2845232) (not b!2845338) (not b!2845239) (not b!2845007) (not b!2844949) (not b!2845061) (not bm!183486) (not d!824993) (not b!2845412) (not d!824967) (not d!824997) (not setNonEmpty!24871) (not b!2845273) (not b!2845369) (not b_lambda!85549) (not b!2845021) (not setNonEmpty!24877) (not b!2845384) (not b!2845130) (not setNonEmpty!24886) (not bm!183494) (not b!2844905) (not b!2845016) (not b!2845374) (not d!825085) (not b!2845015) (not b!2845177) (not setNonEmpty!24872) (not b!2845266) (not b!2845431) (not d!825069) (not b!2845299) (not bm!183484) b_and!208897 (not b!2845107) (not b!2845333) (not d!825053) b_and!208853 (not d!824981) (not d!825055) (not d!825093) (not d!825099) (not b!2845445) (not b!2845265) (not b!2845303) (not b!2845005) (not b!2845437) (not b_next!83339) (not b!2845229) (not b!2845443) (not b!2845306) (not b!2845376) (not d!825113) (not b!2845322) (not b!2845252) (not b!2845170) (not b!2845435) (not d!824965) (not b!2845358) (not d!825021) (not d!825073) (not b!2845362) (not b!2845389) (not b!2845294) (not b_next!83345) (not b!2845277) (not b_next!83357) (not b!2845325) (not b!2845334) (not b!2845357) (not b_next!83347) (not d!824969) (not b!2845262) (not b!2845298) (not b!2845326) (not b!2845329) (not b!2845260) (not b!2845223) (not d!824973) (not bm!183485) (not b!2845181) (not d!825109) (not setNonEmpty!24875) (not b!2845079) (not b!2845276) (not d!825139) (not setNonEmpty!24866) (not setNonEmpty!24874) (not bm!183482) (not b_next!83351) (not setNonEmpty!24882) (not d!824957) (not b!2845121) (not setNonEmpty!24861) (not b!2845320) (not b!2845020) (not b!2845175) (not b!2845258) (not b!2845240) (not d!824977) (not b!2845430) (not b!2845226) (not d!825177) (not d!825127) (not b!2845293) (not mapNonEmpty!18598) (not mapNonEmpty!18599) (not setNonEmpty!24862) (not b!2845008) (not b!2844986) (not b!2845342) (not b!2845361) (not b!2845339) (not b!2844728) (not d!825027) (not b!2844991) (not b!2845439) (not d!825111) (not b!2845235) (not b!2845028) (not b!2845272) (not b!2845029) (not b!2844895) (not b!2845268) (not d!825043) (not b!2845366) (not b!2845363) (not d!825141) (not d!825125) (not d!825059) (not b!2845264) (not b!2845359) (not setNonEmpty!24889) (not d!825045) (not b!2845332) (not b!2845377) (not b!2845176) (not d!825117) (not d!825087) (not d!824985) (not b!2845122) (not b!2845100) (not b!2845297) (not b!2845108) (not b!2845125) (not b!2845101) (not b!2845365) (not b!2845421) (not b_next!83349) (not b!2844731) (not d!825163) (not b!2845118) (not b!2845415) b_and!208863 (not b_lambda!85547) (not b!2845381) (not b!2845059) (not d!825143) (not b!2845335) (not d!825077) (not b!2845295) (not b!2845249) (not b!2845285) (not b!2845115) (not b!2845188) (not d!825175) (not b!2845386) (not b_next!83343) (not b!2845064) (not b!2845192) (not b!2845378) (not d!825031) (not d!825169) (not b!2844957) (not b!2845035) b_and!208851 (not b!2845009) (not b!2845390) (not b!2845282) (not b!2845347) (not b!2845317) (not bm!183495) (not b!2845222) (not b!2845373) (not b!2845195) (not d!824975) b_and!208893 (not b!2845261) (not b!2844962) (not b!2844894) (not b!2845204) (not d!825001) (not b_lambda!85545) (not b!2845117) (not setNonEmpty!24887) (not d!825037) (not d!825137) (not b!2845417) (not b!2845123) (not bm!183499) (not b!2845313) (not b!2845120) (not d!825171) (not b!2845416) (not b!2845166) (not d!824979) (not b!2845440) (not b!2845014) (not setNonEmpty!24878) (not b!2844984) (not b_next!83359) (not b!2845190) (not d!825173) (not setNonEmpty!24870) (not setNonEmpty!24867) (not b!2845205) (not b!2845315) (not b!2845006) (not b!2845288) (not b!2845081) (not b!2845411) (not b!2844964) (not d!825123) (not d!825167) (not b!2845321) (not setNonEmpty!24876) (not b!2845432) tp_is_empty!14689 (not b!2845250) (not b!2845238) (not b!2845371) (not d!825129) (not d!825035) (not d!825089) (not d!825097) (not bm!183475) b_and!208901 (not b!2845308) (not b!2845017) (not b!2845383) (not d!825161) (not b!2845372) (not b!2845428) (not b!2845429) (not b!2845324) (not d!825079) (not d!825157) (not setNonEmpty!24883) (not b!2844959) (not b!2845427) (not b!2845413) (not setNonEmpty!24884) (not b!2845071) (not b!2845018) (not b!2844987) (not b!2845289) (not b!2844898) (not setNonEmpty!24888) (not b!2845364) (not b!2845368) b_and!208855 (not d!825145) (not d!825147) (not b!2845283) (not d!825103) (not b!2845344) (not b!2844892) (not b!2845323) (not d!825015) (not b!2845436) (not b!2844896) (not b!2845296) (not b!2845060) (not b!2845196) (not b!2845233) (not b!2845287) (not b!2845230))
(check-sat b_and!208867 b_and!208895 (not b_next!83361) b_and!208891 b_and!208861 (not b_next!83337) b_and!208897 (not b_next!83351) (not b_next!83349) b_and!208863 b_and!208893 (not b_next!83359) b_and!208901 b_and!208855 (not b_next!83363) b_and!208899 b_and!208889 b_and!208857 (not b_next!83353) (not b_next!83341) (not b_next!83355) b_and!208853 (not b_next!83339) (not b_next!83345) (not b_next!83357) (not b_next!83347) (not b_next!83343) b_and!208851)
