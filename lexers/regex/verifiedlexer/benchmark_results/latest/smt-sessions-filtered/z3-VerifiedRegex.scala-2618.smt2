; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!140664 () Bool)

(assert start!140664)

(declare-fun b!1505149 () Bool)

(declare-fun b_free!39015 () Bool)

(declare-fun b_next!39719 () Bool)

(assert (=> b!1505149 (= b_free!39015 (not b_next!39719))))

(declare-fun tp!429541 () Bool)

(declare-fun b_and!104705 () Bool)

(assert (=> b!1505149 (= tp!429541 b_and!104705)))

(declare-fun b!1505161 () Bool)

(declare-fun b_free!39017 () Bool)

(declare-fun b_next!39721 () Bool)

(assert (=> b!1505161 (= b_free!39017 (not b_next!39721))))

(declare-fun tp!429542 () Bool)

(declare-fun b_and!104707 () Bool)

(assert (=> b!1505161 (= tp!429542 b_and!104707)))

(declare-fun b!1505168 () Bool)

(declare-fun b_free!39019 () Bool)

(declare-fun b_next!39723 () Bool)

(assert (=> b!1505168 (= b_free!39019 (not b_next!39723))))

(declare-fun tp!429548 () Bool)

(declare-fun b_and!104709 () Bool)

(assert (=> b!1505168 (= tp!429548 b_and!104709)))

(declare-fun b!1505141 () Bool)

(declare-fun b_free!39021 () Bool)

(declare-fun b_next!39725 () Bool)

(assert (=> b!1505141 (= b_free!39021 (not b_next!39725))))

(declare-fun tp!429563 () Bool)

(declare-fun b_and!104711 () Bool)

(assert (=> b!1505141 (= tp!429563 b_and!104711)))

(declare-fun b!1505172 () Bool)

(declare-fun b_free!39023 () Bool)

(declare-fun b_next!39727 () Bool)

(assert (=> b!1505172 (= b_free!39023 (not b_next!39727))))

(declare-fun tp!429568 () Bool)

(declare-fun b_and!104713 () Bool)

(assert (=> b!1505172 (= tp!429568 b_and!104713)))

(declare-fun b!1505142 () Bool)

(declare-fun b_free!39025 () Bool)

(declare-fun b_next!39729 () Bool)

(assert (=> b!1505142 (= b_free!39025 (not b_next!39729))))

(declare-fun tp!429551 () Bool)

(declare-fun b_and!104715 () Bool)

(assert (=> b!1505142 (= tp!429551 b_and!104715)))

(declare-fun b_free!39027 () Bool)

(declare-fun b_next!39731 () Bool)

(assert (=> b!1505142 (= b_free!39027 (not b_next!39731))))

(declare-fun tp!429555 () Bool)

(declare-fun b_and!104717 () Bool)

(assert (=> b!1505142 (= tp!429555 b_and!104717)))

(declare-fun b!1505156 () Bool)

(declare-fun b_free!39029 () Bool)

(declare-fun b_next!39733 () Bool)

(assert (=> b!1505156 (= b_free!39029 (not b_next!39733))))

(declare-fun tp!429567 () Bool)

(declare-fun b_and!104719 () Bool)

(assert (=> b!1505156 (= tp!429567 b_and!104719)))

(declare-fun b!1505134 () Bool)

(declare-fun e!962449 () Bool)

(declare-fun e!962459 () Bool)

(assert (=> b!1505134 (= e!962449 e!962459)))

(declare-fun res!677993 () Bool)

(assert (=> b!1505134 (=> (not res!677993) (not e!962459))))

(declare-datatypes ((List!16037 0))(
  ( (Nil!15969) (Cons!15969 (h!21370 (_ BitVec 16)) (t!138970 List!16037)) )
))
(declare-datatypes ((TokenValue!2922 0))(
  ( (FloatLiteralValue!5844 (text!20899 List!16037)) (TokenValueExt!2921 (__x!9904 Int)) (Broken!14610 (value!90346 List!16037)) (Object!2989) (End!2922) (Def!2922) (Underscore!2922) (Match!2922) (Else!2922) (Error!2922) (Case!2922) (If!2922) (Extends!2922) (Abstract!2922) (Class!2922) (Val!2922) (DelimiterValue!5844 (del!2982 List!16037)) (KeywordValue!2928 (value!90347 List!16037)) (CommentValue!5844 (value!90348 List!16037)) (WhitespaceValue!5844 (value!90349 List!16037)) (IndentationValue!2922 (value!90350 List!16037)) (String!18871) (Int32!2922) (Broken!14611 (value!90351 List!16037)) (Boolean!2923) (Unit!25704) (OperatorValue!2925 (op!2982 List!16037)) (IdentifierValue!5844 (value!90352 List!16037)) (IdentifierValue!5845 (value!90353 List!16037)) (WhitespaceValue!5845 (value!90354 List!16037)) (True!5844) (False!5844) (Broken!14612 (value!90355 List!16037)) (Broken!14613 (value!90356 List!16037)) (True!5845) (RightBrace!2922) (RightBracket!2922) (Colon!2922) (Null!2922) (Comma!2922) (LeftBracket!2922) (False!5845) (LeftBrace!2922) (ImaginaryLiteralValue!2922 (text!20900 List!16037)) (StringLiteralValue!8766 (value!90357 List!16037)) (EOFValue!2922 (value!90358 List!16037)) (IdentValue!2922 (value!90359 List!16037)) (DelimiterValue!5845 (value!90360 List!16037)) (DedentValue!2922 (value!90361 List!16037)) (NewLineValue!2922 (value!90362 List!16037)) (IntegerValue!8766 (value!90363 (_ BitVec 32)) (text!20901 List!16037)) (IntegerValue!8767 (value!90364 Int) (text!20902 List!16037)) (Times!2922) (Or!2922) (Equal!2922) (Minus!2922) (Broken!14614 (value!90365 List!16037)) (And!2922) (Div!2922) (LessEqual!2922) (Mod!2922) (Concat!7069) (Not!2922) (Plus!2922) (SpaceValue!2922 (value!90366 List!16037)) (IntegerValue!8768 (value!90367 Int) (text!20903 List!16037)) (StringLiteralValue!8767 (text!20904 List!16037)) (FloatLiteralValue!5845 (text!20905 List!16037)) (BytesLiteralValue!2922 (value!90368 List!16037)) (CommentValue!5845 (value!90369 List!16037)) (StringLiteralValue!8768 (value!90370 List!16037)) (ErrorTokenValue!2922 (msg!2983 List!16037)) )
))
(declare-datatypes ((C!8472 0))(
  ( (C!8473 (val!4808 Int)) )
))
(declare-datatypes ((List!16038 0))(
  ( (Nil!15970) (Cons!15970 (h!21371 C!8472) (t!138971 List!16038)) )
))
(declare-datatypes ((IArray!10835 0))(
  ( (IArray!10836 (innerList!5475 List!16038)) )
))
(declare-datatypes ((Conc!5415 0))(
  ( (Node!5415 (left!13331 Conc!5415) (right!13661 Conc!5415) (csize!11060 Int) (cheight!5626 Int)) (Leaf!8034 (xs!8190 IArray!10835) (csize!11061 Int)) (Empty!5415) )
))
(declare-datatypes ((BalanceConc!10772 0))(
  ( (BalanceConc!10773 (c!246734 Conc!5415)) )
))
(declare-datatypes ((Regex!4147 0))(
  ( (ElementMatch!4147 (c!246735 C!8472)) (Concat!7070 (regOne!8806 Regex!4147) (regTwo!8806 Regex!4147)) (EmptyExpr!4147) (Star!4147 (reg!4476 Regex!4147)) (EmptyLang!4147) (Union!4147 (regOne!8807 Regex!4147) (regTwo!8807 Regex!4147)) )
))
(declare-datatypes ((String!18872 0))(
  ( (String!18873 (value!90371 String)) )
))
(declare-datatypes ((TokenValueInjection!5504 0))(
  ( (TokenValueInjection!5505 (toValue!4179 Int) (toChars!4038 Int)) )
))
(declare-datatypes ((Rule!5464 0))(
  ( (Rule!5465 (regex!2832 Regex!4147) (tag!3096 String!18872) (isSeparator!2832 Bool) (transformation!2832 TokenValueInjection!5504)) )
))
(declare-datatypes ((Token!5326 0))(
  ( (Token!5327 (value!90372 TokenValue!2922) (rule!4621 Rule!5464) (size!12915 Int) (originalCharacters!3694 List!16038)) )
))
(declare-datatypes ((List!16039 0))(
  ( (Nil!15971) (Cons!15971 (h!21372 Token!5326) (t!138972 List!16039)) )
))
(declare-datatypes ((IArray!10837 0))(
  ( (IArray!10838 (innerList!5476 List!16039)) )
))
(declare-datatypes ((Conc!5416 0))(
  ( (Node!5416 (left!13332 Conc!5416) (right!13662 Conc!5416) (csize!11062 Int) (cheight!5627 Int)) (Leaf!8035 (xs!8191 IArray!10837) (csize!11063 Int)) (Empty!5416) )
))
(declare-datatypes ((BalanceConc!10774 0))(
  ( (BalanceConc!10775 (c!246736 Conc!5416)) )
))
(declare-fun acc!392 () BalanceConc!10774)

(declare-datatypes ((tuple2!14770 0))(
  ( (tuple2!14771 (_1!8365 BalanceConc!10774) (_2!8365 BalanceConc!10772)) )
))
(declare-fun lt!523286 () tuple2!14770)

(declare-fun lt!523291 () tuple2!14770)

(declare-fun list!6317 (BalanceConc!10774) List!16039)

(declare-fun ++!4317 (BalanceConc!10774 BalanceConc!10774) BalanceConc!10774)

(assert (=> b!1505134 (= res!677993 (= (list!6317 (_1!8365 lt!523286)) (list!6317 (++!4317 acc!392 (_1!8365 lt!523291)))))))

(declare-fun input!1102 () BalanceConc!10772)

(declare-datatypes ((LexerInterface!2485 0))(
  ( (LexerInterfaceExt!2482 (__x!9905 Int)) (Lexer!2483) )
))
(declare-fun thiss!13241 () LexerInterface!2485)

(declare-datatypes ((List!16040 0))(
  ( (Nil!15972) (Cons!15972 (h!21373 Rule!5464) (t!138973 List!16040)) )
))
(declare-fun rules!1640 () List!16040)

(declare-fun lexRec!321 (LexerInterface!2485 List!16040 BalanceConc!10772) tuple2!14770)

(assert (=> b!1505134 (= lt!523291 (lexRec!321 thiss!13241 rules!1640 input!1102))))

(declare-fun totalInput!458 () BalanceConc!10772)

(assert (=> b!1505134 (= lt!523286 (lexRec!321 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1505135 () Bool)

(declare-fun res!677984 () Bool)

(assert (=> b!1505135 (=> (not res!677984) (not e!962459))))

(declare-fun list!6318 (BalanceConc!10772) List!16038)

(assert (=> b!1505135 (= res!677984 (= (list!6318 (_2!8365 lt!523286)) (list!6318 (_2!8365 lt!523291))))))

(declare-fun b!1505136 () Bool)

(declare-fun e!962441 () Bool)

(assert (=> b!1505136 (= e!962441 true)))

(declare-fun lt!523296 () List!16039)

(declare-fun lt!523279 () BalanceConc!10772)

(declare-fun lt!523311 () BalanceConc!10774)

(declare-datatypes ((List!16041 0))(
  ( (Nil!15973) (Cons!15973 (h!21374 Regex!4147) (t!138974 List!16041)) )
))
(declare-datatypes ((Context!1330 0))(
  ( (Context!1331 (exprs!1165 List!16041)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1312 0))(
  ( (tuple3!1313 (_1!8366 (InoxSet Context!1330)) (_2!8366 Int) (_3!980 Int)) )
))
(declare-datatypes ((tuple2!14772 0))(
  ( (tuple2!14773 (_1!8367 tuple3!1312) (_2!8367 Int)) )
))
(declare-datatypes ((List!16042 0))(
  ( (Nil!15974) (Cons!15974 (h!21375 tuple2!14772) (t!138975 List!16042)) )
))
(declare-datatypes ((array!5074 0))(
  ( (array!5075 (arr!2264 (Array (_ BitVec 32) List!16042)) (size!12916 (_ BitVec 32))) )
))
(declare-datatypes ((array!5076 0))(
  ( (array!5077 (arr!2265 (Array (_ BitVec 32) (_ BitVec 64))) (size!12917 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2884 0))(
  ( (LongMapFixedSize!2885 (defaultEntry!1802 Int) (mask!4604 (_ BitVec 32)) (extraKeys!1689 (_ BitVec 32)) (zeroValue!1699 List!16042) (minValue!1699 List!16042) (_size!2965 (_ BitVec 32)) (_keys!1736 array!5076) (_values!1721 array!5074) (_vacant!1503 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5653 0))(
  ( (Cell!5654 (v!22787 LongMapFixedSize!2884)) )
))
(declare-datatypes ((MutLongMap!1442 0))(
  ( (LongMap!1442 (underlying!3093 Cell!5653)) (MutLongMapExt!1441 (__x!9906 Int)) )
))
(declare-datatypes ((Cell!5655 0))(
  ( (Cell!5656 (v!22788 MutLongMap!1442)) )
))
(declare-datatypes ((Hashable!1386 0))(
  ( (HashableExt!1385 (__x!9907 Int)) )
))
(declare-datatypes ((MutableMap!1386 0))(
  ( (MutableMapExt!1385 (__x!9908 Int)) (HashMap!1386 (underlying!3094 Cell!5655) (hashF!3305 Hashable!1386) (_size!2966 (_ BitVec 32)) (defaultValue!1546 Int)) )
))
(declare-datatypes ((tuple3!1314 0))(
  ( (tuple3!1315 (_1!8368 Regex!4147) (_2!8368 Context!1330) (_3!981 C!8472)) )
))
(declare-datatypes ((tuple2!14774 0))(
  ( (tuple2!14775 (_1!8369 tuple3!1314) (_2!8369 (InoxSet Context!1330))) )
))
(declare-datatypes ((tuple2!14776 0))(
  ( (tuple2!14777 (_1!8370 Context!1330) (_2!8370 C!8472)) )
))
(declare-datatypes ((tuple2!14778 0))(
  ( (tuple2!14779 (_1!8371 tuple2!14776) (_2!8371 (InoxSet Context!1330))) )
))
(declare-datatypes ((List!16043 0))(
  ( (Nil!15975) (Cons!15975 (h!21376 tuple2!14778) (t!138976 List!16043)) )
))
(declare-datatypes ((array!5078 0))(
  ( (array!5079 (arr!2266 (Array (_ BitVec 32) List!16043)) (size!12918 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2886 0))(
  ( (LongMapFixedSize!2887 (defaultEntry!1803 Int) (mask!4605 (_ BitVec 32)) (extraKeys!1690 (_ BitVec 32)) (zeroValue!1700 List!16043) (minValue!1700 List!16043) (_size!2967 (_ BitVec 32)) (_keys!1737 array!5076) (_values!1722 array!5078) (_vacant!1504 (_ BitVec 32))) )
))
(declare-datatypes ((List!16044 0))(
  ( (Nil!15976) (Cons!15976 (h!21377 tuple2!14774) (t!138977 List!16044)) )
))
(declare-datatypes ((array!5080 0))(
  ( (array!5081 (arr!2267 (Array (_ BitVec 32) List!16044)) (size!12919 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2888 0))(
  ( (LongMapFixedSize!2889 (defaultEntry!1804 Int) (mask!4606 (_ BitVec 32)) (extraKeys!1691 (_ BitVec 32)) (zeroValue!1701 List!16044) (minValue!1701 List!16044) (_size!2968 (_ BitVec 32)) (_keys!1738 array!5076) (_values!1723 array!5080) (_vacant!1505 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5657 0))(
  ( (Cell!5658 (v!22789 LongMapFixedSize!2888)) )
))
(declare-datatypes ((MutLongMap!1443 0))(
  ( (LongMap!1443 (underlying!3095 Cell!5657)) (MutLongMapExt!1442 (__x!9909 Int)) )
))
(declare-datatypes ((Cell!5659 0))(
  ( (Cell!5660 (v!22790 MutLongMap!1443)) )
))
(declare-datatypes ((Hashable!1387 0))(
  ( (HashableExt!1386 (__x!9910 Int)) )
))
(declare-datatypes ((MutableMap!1387 0))(
  ( (MutableMapExt!1386 (__x!9911 Int)) (HashMap!1387 (underlying!3096 Cell!5659) (hashF!3306 Hashable!1387) (_size!2969 (_ BitVec 32)) (defaultValue!1547 Int)) )
))
(declare-datatypes ((CacheDown!828 0))(
  ( (CacheDown!829 (cache!1767 MutableMap!1387)) )
))
(declare-datatypes ((CacheFurthestNullable!248 0))(
  ( (CacheFurthestNullable!249 (cache!1768 MutableMap!1386) (totalInput!2277 BalanceConc!10772)) )
))
(declare-datatypes ((Cell!5661 0))(
  ( (Cell!5662 (v!22791 LongMapFixedSize!2886)) )
))
(declare-datatypes ((MutLongMap!1444 0))(
  ( (LongMap!1444 (underlying!3097 Cell!5661)) (MutLongMapExt!1443 (__x!9912 Int)) )
))
(declare-datatypes ((tuple2!14780 0))(
  ( (tuple2!14781 (_1!8372 Token!5326) (_2!8372 BalanceConc!10772)) )
))
(declare-datatypes ((Option!2917 0))(
  ( (None!2916) (Some!2916 (v!22792 tuple2!14780)) )
))
(declare-datatypes ((Hashable!1388 0))(
  ( (HashableExt!1387 (__x!9913 Int)) )
))
(declare-datatypes ((Cell!5663 0))(
  ( (Cell!5664 (v!22793 MutLongMap!1444)) )
))
(declare-datatypes ((MutableMap!1388 0))(
  ( (MutableMapExt!1387 (__x!9914 Int)) (HashMap!1388 (underlying!3098 Cell!5663) (hashF!3307 Hashable!1388) (_size!2970 (_ BitVec 32)) (defaultValue!1548 Int)) )
))
(declare-datatypes ((CacheUp!824 0))(
  ( (CacheUp!825 (cache!1769 MutableMap!1388)) )
))
(declare-datatypes ((tuple4!648 0))(
  ( (tuple4!649 (_1!8373 Option!2917) (_2!8373 CacheUp!824) (_3!982 CacheDown!828) (_4!324 CacheFurthestNullable!248)) )
))
(declare-fun lt!523281 () tuple4!648)

(declare-datatypes ((tuple4!650 0))(
  ( (tuple4!651 (_1!8374 tuple2!14770) (_2!8374 CacheUp!824) (_3!983 CacheDown!828) (_4!325 CacheFurthestNullable!248)) )
))
(declare-fun lexTailRecV3Mem!25 (LexerInterface!2485 List!16040 BalanceConc!10772 BalanceConc!10772 BalanceConc!10772 BalanceConc!10774 CacheUp!824 CacheDown!828 CacheFurthestNullable!248) tuple4!650)

(assert (=> b!1505136 (= lt!523296 (list!6317 (_1!8365 (_1!8374 (lexTailRecV3Mem!25 thiss!13241 rules!1640 totalInput!458 lt!523279 (_2!8372 (v!22792 (_1!8373 lt!523281))) lt!523311 (_2!8373 lt!523281) (_3!982 lt!523281) (_4!324 lt!523281))))))))

(declare-fun b!1505137 () Bool)

(declare-fun e!962440 () Bool)

(declare-fun e!962450 () Bool)

(assert (=> b!1505137 (= e!962440 e!962450)))

(declare-fun e!962455 () Bool)

(declare-fun e!962444 () Bool)

(declare-fun b!1505138 () Bool)

(declare-fun e!962443 () Bool)

(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!248)

(declare-fun inv!21190 (BalanceConc!10772) Bool)

(assert (=> b!1505138 (= e!962444 (and e!962455 (inv!21190 (totalInput!2277 cacheFurthestNullable!64)) e!962443))))

(declare-fun b!1505139 () Bool)

(declare-fun e!962452 () Bool)

(declare-fun tp!429557 () Bool)

(declare-fun mapRes!6852 () Bool)

(assert (=> b!1505139 (= e!962452 (and tp!429557 mapRes!6852))))

(declare-fun condMapEmpty!6854 () Bool)

(declare-fun cacheUp!616 () CacheUp!824)

(declare-fun mapDefault!6853 () List!16043)

(assert (=> b!1505139 (= condMapEmpty!6854 (= (arr!2266 (_values!1722 (v!22791 (underlying!3097 (v!22793 (underlying!3098 (cache!1769 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16043)) mapDefault!6853)))))

(declare-fun res!677983 () Bool)

(declare-fun e!962435 () Bool)

(assert (=> start!140664 (=> (not res!677983) (not e!962435))))

(get-info :version)

(assert (=> start!140664 (= res!677983 ((_ is Lexer!2483) thiss!13241))))

(assert (=> start!140664 e!962435))

(declare-fun e!962445 () Bool)

(declare-fun inv!21191 (BalanceConc!10774) Bool)

(assert (=> start!140664 (and (inv!21191 acc!392) e!962445)))

(declare-fun e!962434 () Bool)

(declare-fun inv!21192 (CacheUp!824) Bool)

(assert (=> start!140664 (and (inv!21192 cacheUp!616) e!962434)))

(declare-fun cacheDown!629 () CacheDown!828)

(declare-fun e!962437 () Bool)

(declare-fun inv!21193 (CacheDown!828) Bool)

(assert (=> start!140664 (and (inv!21193 cacheDown!629) e!962437)))

(declare-fun e!962463 () Bool)

(assert (=> start!140664 (and (inv!21190 input!1102) e!962463)))

(declare-fun treated!70 () BalanceConc!10772)

(declare-fun e!962424 () Bool)

(assert (=> start!140664 (and (inv!21190 treated!70) e!962424)))

(assert (=> start!140664 true))

(declare-fun e!962447 () Bool)

(assert (=> start!140664 e!962447))

(declare-fun inv!21194 (CacheFurthestNullable!248) Bool)

(assert (=> start!140664 (and (inv!21194 cacheFurthestNullable!64) e!962444)))

(declare-fun e!962460 () Bool)

(assert (=> start!140664 (and (inv!21190 totalInput!458) e!962460)))

(declare-fun mapIsEmpty!6852 () Bool)

(declare-fun mapRes!6853 () Bool)

(assert (=> mapIsEmpty!6852 mapRes!6853))

(declare-fun b!1505140 () Bool)

(declare-fun e!962431 () Bool)

(assert (=> b!1505140 (= e!962459 (not e!962431))))

(declare-fun res!677991 () Bool)

(assert (=> b!1505140 (=> res!677991 e!962431)))

(declare-fun lt!523282 () List!16038)

(declare-fun lt!523295 () List!16038)

(declare-fun isSuffix!293 (List!16038 List!16038) Bool)

(assert (=> b!1505140 (= res!677991 (not (isSuffix!293 lt!523282 lt!523295)))))

(declare-fun lt!523289 () List!16038)

(assert (=> b!1505140 (isSuffix!293 lt!523282 lt!523289)))

(declare-datatypes ((Unit!25705 0))(
  ( (Unit!25706) )
))
(declare-fun lt!523302 () Unit!25705)

(declare-fun lt!523280 () List!16038)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!271 (List!16038 List!16038) Unit!25705)

(assert (=> b!1505140 (= lt!523302 (lemmaConcatTwoListThenFSndIsSuffix!271 lt!523280 lt!523282))))

(declare-fun tp!429562 () Bool)

(declare-fun e!962458 () Bool)

(declare-fun tp!429545 () Bool)

(declare-fun e!962425 () Bool)

(declare-fun array_inv!1642 (array!5076) Bool)

(declare-fun array_inv!1643 (array!5080) Bool)

(assert (=> b!1505141 (= e!962458 (and tp!429563 tp!429562 tp!429545 (array_inv!1642 (_keys!1738 (v!22789 (underlying!3095 (v!22790 (underlying!3096 (cache!1767 cacheDown!629))))))) (array_inv!1643 (_values!1723 (v!22789 (underlying!3095 (v!22790 (underlying!3096 (cache!1767 cacheDown!629))))))) e!962425))))

(declare-fun e!962442 () Bool)

(assert (=> b!1505142 (= e!962442 (and tp!429551 tp!429555))))

(declare-fun b!1505143 () Bool)

(declare-fun res!677990 () Bool)

(assert (=> b!1505143 (=> res!677990 e!962441)))

(declare-fun valid!1149 (CacheFurthestNullable!248) Bool)

(assert (=> b!1505143 (= res!677990 (not (valid!1149 (_4!324 lt!523281))))))

(declare-fun b!1505144 () Bool)

(declare-fun tp!429540 () Bool)

(assert (=> b!1505144 (= e!962425 (and tp!429540 mapRes!6853))))

(declare-fun condMapEmpty!6853 () Bool)

(declare-fun mapDefault!6852 () List!16044)

(assert (=> b!1505144 (= condMapEmpty!6853 (= (arr!2267 (_values!1723 (v!22789 (underlying!3095 (v!22790 (underlying!3096 (cache!1767 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16044)) mapDefault!6852)))))

(declare-fun b!1505145 () Bool)

(declare-fun e!962454 () Bool)

(declare-fun e!962439 () Bool)

(assert (=> b!1505145 (= e!962454 e!962439)))

(declare-fun b!1505146 () Bool)

(declare-fun res!677989 () Bool)

(assert (=> b!1505146 (=> (not res!677989) (not e!962459))))

(declare-fun valid!1150 (CacheUp!824) Bool)

(assert (=> b!1505146 (= res!677989 (valid!1150 cacheUp!616))))

(declare-fun mapNonEmpty!6852 () Bool)

(declare-fun tp!429560 () Bool)

(declare-fun tp!429552 () Bool)

(assert (=> mapNonEmpty!6852 (= mapRes!6853 (and tp!429560 tp!429552))))

(declare-fun mapKey!6853 () (_ BitVec 32))

(declare-fun mapValue!6854 () List!16044)

(declare-fun mapRest!6854 () (Array (_ BitVec 32) List!16044))

(assert (=> mapNonEmpty!6852 (= (arr!2267 (_values!1723 (v!22789 (underlying!3095 (v!22790 (underlying!3096 (cache!1767 cacheDown!629))))))) (store mapRest!6854 mapKey!6853 mapValue!6854))))

(declare-fun b!1505147 () Bool)

(declare-fun e!962457 () Bool)

(assert (=> b!1505147 (= e!962435 e!962457)))

(declare-fun res!677988 () Bool)

(assert (=> b!1505147 (=> (not res!677988) (not e!962457))))

(assert (=> b!1505147 (= res!677988 (= lt!523295 lt!523289))))

(declare-fun ++!4318 (List!16038 List!16038) List!16038)

(assert (=> b!1505147 (= lt!523289 (++!4318 lt!523280 lt!523282))))

(assert (=> b!1505147 (= lt!523295 (list!6318 totalInput!458))))

(assert (=> b!1505147 (= lt!523282 (list!6318 input!1102))))

(assert (=> b!1505147 (= lt!523280 (list!6318 treated!70))))

(declare-fun b!1505148 () Bool)

(declare-fun res!677980 () Bool)

(assert (=> b!1505148 (=> (not res!677980) (not e!962449))))

(declare-fun lt!523301 () tuple2!14770)

(declare-fun isEmpty!9901 (List!16038) Bool)

(assert (=> b!1505148 (= res!677980 (isEmpty!9901 (list!6318 (_2!8365 lt!523301))))))

(declare-fun e!962462 () Bool)

(declare-fun e!962461 () Bool)

(assert (=> b!1505149 (= e!962462 (and e!962461 tp!429541))))

(declare-fun tp!429566 () Bool)

(declare-fun b!1505150 () Bool)

(declare-fun e!962426 () Bool)

(declare-fun inv!21187 (String!18872) Bool)

(declare-fun inv!21195 (TokenValueInjection!5504) Bool)

(assert (=> b!1505150 (= e!962426 (and tp!429566 (inv!21187 (tag!3096 (h!21373 rules!1640))) (inv!21195 (transformation!2832 (h!21373 rules!1640))) e!962442))))

(declare-fun mapIsEmpty!6853 () Bool)

(assert (=> mapIsEmpty!6853 mapRes!6852))

(declare-fun b!1505151 () Bool)

(declare-fun e!962456 () Bool)

(assert (=> b!1505151 (= e!962439 e!962456)))

(declare-fun b!1505152 () Bool)

(declare-fun e!962423 () tuple2!14770)

(assert (=> b!1505152 (= e!962423 (tuple2!14771 (BalanceConc!10775 Empty!5416) input!1102))))

(declare-fun b!1505153 () Bool)

(declare-fun res!677985 () Bool)

(assert (=> b!1505153 (=> res!677985 e!962441)))

(declare-fun valid!1151 (CacheDown!828) Bool)

(assert (=> b!1505153 (= res!677985 (not (valid!1151 (_3!982 lt!523281))))))

(declare-fun b!1505154 () Bool)

(declare-fun e!962451 () Bool)

(declare-fun e!962464 () Bool)

(declare-fun lt!523290 () MutLongMap!1442)

(assert (=> b!1505154 (= e!962451 (and e!962464 ((_ is LongMap!1442) lt!523290)))))

(assert (=> b!1505154 (= lt!523290 (v!22788 (underlying!3094 (cache!1768 cacheFurthestNullable!64))))))

(declare-fun b!1505155 () Bool)

(declare-fun res!677977 () Bool)

(assert (=> b!1505155 (=> (not res!677977) (not e!962435))))

(declare-fun isEmpty!9902 (List!16040) Bool)

(assert (=> b!1505155 (= res!677977 (not (isEmpty!9902 rules!1640)))))

(declare-fun e!962448 () Bool)

(declare-fun e!962446 () Bool)

(assert (=> b!1505156 (= e!962448 (and e!962446 tp!429567))))

(declare-fun b!1505157 () Bool)

(assert (=> b!1505157 (= e!962437 e!962448)))

(declare-fun b!1505158 () Bool)

(assert (=> b!1505158 (= e!962434 e!962462)))

(declare-fun b!1505159 () Bool)

(declare-fun e!962427 () Bool)

(assert (=> b!1505159 (= e!962427 e!962441)))

(declare-fun res!677979 () Bool)

(assert (=> b!1505159 (=> res!677979 e!962441)))

(declare-fun lt!523305 () List!16038)

(assert (=> b!1505159 (= res!677979 (not (isSuffix!293 lt!523305 lt!523295)))))

(declare-fun lt!523292 () List!16038)

(assert (=> b!1505159 (isSuffix!293 lt!523305 (++!4318 lt!523292 lt!523305))))

(declare-fun lt!523309 () Unit!25705)

(assert (=> b!1505159 (= lt!523309 (lemmaConcatTwoListThenFSndIsSuffix!271 lt!523292 lt!523305))))

(assert (=> b!1505159 (= lt!523292 (list!6318 lt!523279))))

(declare-fun e!962433 () Bool)

(assert (=> b!1505159 e!962433))

(declare-fun c!246733 () Bool)

(declare-fun lt!523303 () Option!2917)

(assert (=> b!1505159 (= c!246733 ((_ is Some!2916) lt!523303))))

(declare-fun lt!523293 () tuple2!14770)

(assert (=> b!1505159 (= lt!523293 (lexRec!321 thiss!13241 rules!1640 lt!523279))))

(declare-fun maxPrefixZipperSequence!581 (LexerInterface!2485 List!16040 BalanceConc!10772) Option!2917)

(assert (=> b!1505159 (= lt!523303 (maxPrefixZipperSequence!581 thiss!13241 rules!1640 lt!523279))))

(declare-fun lt!523298 () BalanceConc!10772)

(declare-fun ++!4319 (BalanceConc!10772 BalanceConc!10772) BalanceConc!10772)

(assert (=> b!1505159 (= lt!523279 (++!4319 treated!70 lt!523298))))

(declare-fun lt!523307 () List!16039)

(declare-fun lt!523300 () List!16038)

(declare-datatypes ((tuple2!14782 0))(
  ( (tuple2!14783 (_1!8375 List!16039) (_2!8375 List!16038)) )
))
(declare-fun lexList!739 (LexerInterface!2485 List!16040 List!16038) tuple2!14782)

(assert (=> b!1505159 (= (lexList!739 thiss!13241 rules!1640 lt!523300) (tuple2!14783 lt!523307 Nil!15970))))

(declare-fun lt!523278 () List!16039)

(declare-fun lt!523312 () Unit!25705)

(declare-fun lt!523283 () tuple2!14770)

(declare-fun lemmaLexThenLexPrefix!221 (LexerInterface!2485 List!16040 List!16038 List!16038 List!16039 List!16039 List!16038) Unit!25705)

(assert (=> b!1505159 (= lt!523312 (lemmaLexThenLexPrefix!221 thiss!13241 rules!1640 lt!523300 lt!523305 lt!523307 lt!523278 (list!6318 (_2!8365 lt!523283))))))

(assert (=> b!1505159 (= lt!523307 (list!6317 lt!523311))))

(declare-fun append!489 (BalanceConc!10774 Token!5326) BalanceConc!10774)

(assert (=> b!1505159 (= lt!523311 (append!489 acc!392 (_1!8372 (v!22792 (_1!8373 lt!523281)))))))

(declare-fun lt!523308 () List!16039)

(declare-fun lt!523285 () List!16039)

(declare-fun ++!4320 (List!16039 List!16039) List!16039)

(assert (=> b!1505159 (= (++!4320 (++!4320 lt!523308 lt!523285) lt!523278) (++!4320 lt!523308 (++!4320 lt!523285 lt!523278)))))

(declare-fun lt!523284 () Unit!25705)

(declare-fun lemmaConcatAssociativity!925 (List!16039 List!16039 List!16039) Unit!25705)

(assert (=> b!1505159 (= lt!523284 (lemmaConcatAssociativity!925 lt!523308 lt!523285 lt!523278))))

(assert (=> b!1505159 (= lt!523278 (list!6317 (_1!8365 lt!523283)))))

(assert (=> b!1505159 (= lt!523285 (Cons!15971 (_1!8372 (v!22792 (_1!8373 lt!523281))) Nil!15971))))

(assert (=> b!1505159 (= lt!523291 e!962423)))

(declare-fun c!246732 () Bool)

(declare-fun lt!523304 () Option!2917)

(assert (=> b!1505159 (= c!246732 ((_ is Some!2916) lt!523304))))

(assert (=> b!1505159 (= lt!523304 (maxPrefixZipperSequence!581 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!523287 () List!16038)

(assert (=> b!1505159 (= (++!4318 lt!523300 lt!523305) (++!4318 lt!523280 (++!4318 lt!523287 lt!523305)))))

(assert (=> b!1505159 (= lt!523300 (++!4318 lt!523280 lt!523287))))

(declare-fun lt!523297 () Unit!25705)

(declare-fun lemmaConcatAssociativity!926 (List!16038 List!16038 List!16038) Unit!25705)

(assert (=> b!1505159 (= lt!523297 (lemmaConcatAssociativity!926 lt!523280 lt!523287 lt!523305))))

(assert (=> b!1505159 (= lt!523305 (list!6318 (_2!8372 (v!22792 (_1!8373 lt!523281)))))))

(assert (=> b!1505159 (= lt!523287 (list!6318 lt!523298))))

(declare-fun charsOf!1622 (Token!5326) BalanceConc!10772)

(assert (=> b!1505159 (= lt!523298 (charsOf!1622 (_1!8372 (v!22792 (_1!8373 lt!523281)))))))

(assert (=> b!1505159 (= lt!523283 (lexRec!321 thiss!13241 rules!1640 (_2!8372 (v!22792 (_1!8373 lt!523281)))))))

(declare-fun b!1505160 () Bool)

(declare-fun res!677976 () Bool)

(assert (=> b!1505160 (=> (not res!677976) (not e!962459))))

(assert (=> b!1505160 (= res!677976 (= (totalInput!2277 cacheFurthestNullable!64) totalInput!458))))

(declare-fun tp!429550 () Bool)

(declare-fun tp!429543 () Bool)

(declare-fun array_inv!1644 (array!5078) Bool)

(assert (=> b!1505161 (= e!962456 (and tp!429542 tp!429543 tp!429550 (array_inv!1642 (_keys!1737 (v!22791 (underlying!3097 (v!22793 (underlying!3098 (cache!1769 cacheUp!616))))))) (array_inv!1644 (_values!1722 (v!22791 (underlying!3097 (v!22793 (underlying!3098 (cache!1769 cacheUp!616))))))) e!962452))))

(declare-fun b!1505162 () Bool)

(declare-fun tp!429565 () Bool)

(assert (=> b!1505162 (= e!962447 (and e!962426 tp!429565))))

(declare-fun mapNonEmpty!6853 () Bool)

(declare-fun tp!429559 () Bool)

(declare-fun tp!429546 () Bool)

(assert (=> mapNonEmpty!6853 (= mapRes!6852 (and tp!429559 tp!429546))))

(declare-fun mapValue!6852 () List!16043)

(declare-fun mapRest!6853 () (Array (_ BitVec 32) List!16043))

(declare-fun mapKey!6854 () (_ BitVec 32))

(assert (=> mapNonEmpty!6853 (= (arr!2266 (_values!1722 (v!22791 (underlying!3097 (v!22793 (underlying!3098 (cache!1769 cacheUp!616))))))) (store mapRest!6853 mapKey!6854 mapValue!6852))))

(declare-fun b!1505163 () Bool)

(declare-fun e!962429 () Bool)

(declare-fun lt!523299 () MutLongMap!1443)

(assert (=> b!1505163 (= e!962446 (and e!962429 ((_ is LongMap!1443) lt!523299)))))

(assert (=> b!1505163 (= lt!523299 (v!22790 (underlying!3096 (cache!1767 cacheDown!629))))))

(declare-fun b!1505164 () Bool)

(declare-fun tp!429554 () Bool)

(declare-fun inv!21196 (Conc!5415) Bool)

(assert (=> b!1505164 (= e!962460 (and (inv!21196 (c!246734 totalInput!458)) tp!429554))))

(declare-fun b!1505165 () Bool)

(declare-fun res!677978 () Bool)

(assert (=> b!1505165 (=> (not res!677978) (not e!962459))))

(assert (=> b!1505165 (= res!677978 (valid!1151 cacheDown!629))))

(declare-fun b!1505166 () Bool)

(declare-fun tp!429564 () Bool)

(assert (=> b!1505166 (= e!962443 (and (inv!21196 (c!246734 (totalInput!2277 cacheFurthestNullable!64))) tp!429564))))

(declare-fun b!1505167 () Bool)

(assert (=> b!1505167 (= e!962457 e!962449)))

(declare-fun res!677982 () Bool)

(assert (=> b!1505167 (=> (not res!677982) (not e!962449))))

(declare-fun lt!523306 () List!16039)

(assert (=> b!1505167 (= res!677982 (= lt!523306 lt!523308))))

(assert (=> b!1505167 (= lt!523308 (list!6317 acc!392))))

(assert (=> b!1505167 (= lt!523306 (list!6317 (_1!8365 lt!523301)))))

(assert (=> b!1505167 (= lt!523301 (lexRec!321 thiss!13241 rules!1640 treated!70))))

(declare-fun mapIsEmpty!6854 () Bool)

(declare-fun mapRes!6854 () Bool)

(assert (=> mapIsEmpty!6854 mapRes!6854))

(declare-fun e!962453 () Bool)

(declare-fun tp!429558 () Bool)

(declare-fun tp!429549 () Bool)

(declare-fun array_inv!1645 (array!5074) Bool)

(assert (=> b!1505168 (= e!962450 (and tp!429548 tp!429558 tp!429549 (array_inv!1642 (_keys!1736 (v!22787 (underlying!3093 (v!22788 (underlying!3094 (cache!1768 cacheFurthestNullable!64))))))) (array_inv!1645 (_values!1721 (v!22787 (underlying!3093 (v!22788 (underlying!3094 (cache!1768 cacheFurthestNullable!64))))))) e!962453))))

(declare-fun b!1505169 () Bool)

(declare-fun e!962430 () Bool)

(assert (=> b!1505169 (= e!962430 e!962458)))

(declare-fun b!1505170 () Bool)

(assert (=> b!1505170 (= e!962433 (= lt!523293 (tuple2!14771 (BalanceConc!10775 Empty!5416) lt!523279)))))

(declare-fun mapNonEmpty!6854 () Bool)

(declare-fun tp!429561 () Bool)

(declare-fun tp!429553 () Bool)

(assert (=> mapNonEmpty!6854 (= mapRes!6854 (and tp!429561 tp!429553))))

(declare-fun mapKey!6852 () (_ BitVec 32))

(declare-fun mapValue!6853 () List!16042)

(declare-fun mapRest!6852 () (Array (_ BitVec 32) List!16042))

(assert (=> mapNonEmpty!6854 (= (arr!2264 (_values!1721 (v!22787 (underlying!3093 (v!22788 (underlying!3094 (cache!1768 cacheFurthestNullable!64))))))) (store mapRest!6852 mapKey!6852 mapValue!6853))))

(declare-fun b!1505171 () Bool)

(declare-fun res!677986 () Bool)

(assert (=> b!1505171 (=> (not res!677986) (not e!962435))))

(declare-fun rulesInvariant!2263 (LexerInterface!2485 List!16040) Bool)

(assert (=> b!1505171 (= res!677986 (rulesInvariant!2263 thiss!13241 rules!1640))))

(assert (=> b!1505172 (= e!962455 (and e!962451 tp!429568))))

(declare-fun b!1505173 () Bool)

(declare-fun lt!523294 () tuple2!14770)

(declare-fun prepend!455 (BalanceConc!10774 Token!5326) BalanceConc!10774)

(assert (=> b!1505173 (= e!962423 (tuple2!14771 (prepend!455 (_1!8365 lt!523294) (_1!8372 (v!22792 lt!523304))) (_2!8365 lt!523294)))))

(assert (=> b!1505173 (= lt!523294 (lexRec!321 thiss!13241 rules!1640 (_2!8372 (v!22792 lt!523304))))))

(declare-fun b!1505174 () Bool)

(assert (=> b!1505174 (= e!962431 e!962427)))

(declare-fun res!677992 () Bool)

(assert (=> b!1505174 (=> res!677992 e!962427)))

(assert (=> b!1505174 (= res!677992 (not ((_ is Some!2916) (_1!8373 lt!523281))))))

(declare-fun maxPrefixZipperSequenceV3Mem!19 (LexerInterface!2485 List!16040 BalanceConc!10772 BalanceConc!10772 CacheUp!824 CacheDown!828 CacheFurthestNullable!248) tuple4!648)

(assert (=> b!1505174 (= lt!523281 (maxPrefixZipperSequenceV3Mem!19 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1505175 () Bool)

(assert (=> b!1505175 (= e!962429 e!962430)))

(declare-fun b!1505176 () Bool)

(assert (=> b!1505176 (= e!962464 e!962440)))

(declare-fun b!1505177 () Bool)

(declare-fun tp!429547 () Bool)

(assert (=> b!1505177 (= e!962424 (and (inv!21196 (c!246734 treated!70)) tp!429547))))

(declare-fun b!1505178 () Bool)

(declare-fun lt!523288 () tuple2!14770)

(assert (=> b!1505178 (= e!962433 (= lt!523293 (tuple2!14771 (prepend!455 (_1!8365 lt!523288) (_1!8372 (v!22792 lt!523303))) (_2!8365 lt!523288))))))

(assert (=> b!1505178 (= lt!523288 (lexRec!321 thiss!13241 rules!1640 (_2!8372 (v!22792 lt!523303))))))

(declare-fun b!1505179 () Bool)

(declare-fun res!677987 () Bool)

(assert (=> b!1505179 (=> (not res!677987) (not e!962459))))

(assert (=> b!1505179 (= res!677987 (valid!1149 cacheFurthestNullable!64))))

(declare-fun b!1505180 () Bool)

(declare-fun tp!429556 () Bool)

(declare-fun inv!21197 (Conc!5416) Bool)

(assert (=> b!1505180 (= e!962445 (and (inv!21197 (c!246736 acc!392)) tp!429556))))

(declare-fun b!1505181 () Bool)

(declare-fun res!677981 () Bool)

(assert (=> b!1505181 (=> res!677981 e!962441)))

(assert (=> b!1505181 (= res!677981 (not (valid!1150 (_2!8373 lt!523281))))))

(declare-fun b!1505182 () Bool)

(declare-fun tp!429539 () Bool)

(assert (=> b!1505182 (= e!962453 (and tp!429539 mapRes!6854))))

(declare-fun condMapEmpty!6852 () Bool)

(declare-fun mapDefault!6854 () List!16042)

(assert (=> b!1505182 (= condMapEmpty!6852 (= (arr!2264 (_values!1721 (v!22787 (underlying!3093 (v!22788 (underlying!3094 (cache!1768 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16042)) mapDefault!6854)))))

(declare-fun b!1505183 () Bool)

(declare-fun tp!429544 () Bool)

(assert (=> b!1505183 (= e!962463 (and (inv!21196 (c!246734 input!1102)) tp!429544))))

(declare-fun b!1505184 () Bool)

(declare-fun lt!523310 () MutLongMap!1444)

(assert (=> b!1505184 (= e!962461 (and e!962454 ((_ is LongMap!1444) lt!523310)))))

(assert (=> b!1505184 (= lt!523310 (v!22793 (underlying!3098 (cache!1769 cacheUp!616))))))

(assert (= (and start!140664 res!677983) b!1505155))

(assert (= (and b!1505155 res!677977) b!1505171))

(assert (= (and b!1505171 res!677986) b!1505147))

(assert (= (and b!1505147 res!677988) b!1505167))

(assert (= (and b!1505167 res!677982) b!1505148))

(assert (= (and b!1505148 res!677980) b!1505134))

(assert (= (and b!1505134 res!677993) b!1505135))

(assert (= (and b!1505135 res!677984) b!1505146))

(assert (= (and b!1505146 res!677989) b!1505165))

(assert (= (and b!1505165 res!677978) b!1505179))

(assert (= (and b!1505179 res!677987) b!1505160))

(assert (= (and b!1505160 res!677976) b!1505140))

(assert (= (and b!1505140 (not res!677991)) b!1505174))

(assert (= (and b!1505174 (not res!677992)) b!1505159))

(assert (= (and b!1505159 c!246732) b!1505173))

(assert (= (and b!1505159 (not c!246732)) b!1505152))

(assert (= (and b!1505159 c!246733) b!1505178))

(assert (= (and b!1505159 (not c!246733)) b!1505170))

(assert (= (and b!1505159 (not res!677979)) b!1505143))

(assert (= (and b!1505143 (not res!677990)) b!1505181))

(assert (= (and b!1505181 (not res!677981)) b!1505153))

(assert (= (and b!1505153 (not res!677985)) b!1505136))

(assert (= start!140664 b!1505180))

(assert (= (and b!1505139 condMapEmpty!6854) mapIsEmpty!6853))

(assert (= (and b!1505139 (not condMapEmpty!6854)) mapNonEmpty!6853))

(assert (= b!1505161 b!1505139))

(assert (= b!1505151 b!1505161))

(assert (= b!1505145 b!1505151))

(assert (= (and b!1505184 ((_ is LongMap!1444) (v!22793 (underlying!3098 (cache!1769 cacheUp!616))))) b!1505145))

(assert (= b!1505149 b!1505184))

(assert (= (and b!1505158 ((_ is HashMap!1388) (cache!1769 cacheUp!616))) b!1505149))

(assert (= start!140664 b!1505158))

(assert (= (and b!1505144 condMapEmpty!6853) mapIsEmpty!6852))

(assert (= (and b!1505144 (not condMapEmpty!6853)) mapNonEmpty!6852))

(assert (= b!1505141 b!1505144))

(assert (= b!1505169 b!1505141))

(assert (= b!1505175 b!1505169))

(assert (= (and b!1505163 ((_ is LongMap!1443) (v!22790 (underlying!3096 (cache!1767 cacheDown!629))))) b!1505175))

(assert (= b!1505156 b!1505163))

(assert (= (and b!1505157 ((_ is HashMap!1387) (cache!1767 cacheDown!629))) b!1505156))

(assert (= start!140664 b!1505157))

(assert (= start!140664 b!1505183))

(assert (= start!140664 b!1505177))

(assert (= b!1505150 b!1505142))

(assert (= b!1505162 b!1505150))

(assert (= (and start!140664 ((_ is Cons!15972) rules!1640)) b!1505162))

(assert (= (and b!1505182 condMapEmpty!6852) mapIsEmpty!6854))

(assert (= (and b!1505182 (not condMapEmpty!6852)) mapNonEmpty!6854))

(assert (= b!1505168 b!1505182))

(assert (= b!1505137 b!1505168))

(assert (= b!1505176 b!1505137))

(assert (= (and b!1505154 ((_ is LongMap!1442) (v!22788 (underlying!3094 (cache!1768 cacheFurthestNullable!64))))) b!1505176))

(assert (= b!1505172 b!1505154))

(assert (= (and b!1505138 ((_ is HashMap!1386) (cache!1768 cacheFurthestNullable!64))) b!1505172))

(assert (= b!1505138 b!1505166))

(assert (= start!140664 b!1505138))

(assert (= start!140664 b!1505164))

(declare-fun m!1764783 () Bool)

(assert (=> b!1505165 m!1764783))

(declare-fun m!1764785 () Bool)

(assert (=> b!1505155 m!1764785))

(declare-fun m!1764787 () Bool)

(assert (=> b!1505135 m!1764787))

(declare-fun m!1764789 () Bool)

(assert (=> b!1505135 m!1764789))

(declare-fun m!1764791 () Bool)

(assert (=> b!1505159 m!1764791))

(declare-fun m!1764793 () Bool)

(assert (=> b!1505159 m!1764793))

(declare-fun m!1764795 () Bool)

(assert (=> b!1505159 m!1764795))

(declare-fun m!1764797 () Bool)

(assert (=> b!1505159 m!1764797))

(assert (=> b!1505159 m!1764795))

(declare-fun m!1764799 () Bool)

(assert (=> b!1505159 m!1764799))

(declare-fun m!1764801 () Bool)

(assert (=> b!1505159 m!1764801))

(declare-fun m!1764803 () Bool)

(assert (=> b!1505159 m!1764803))

(declare-fun m!1764805 () Bool)

(assert (=> b!1505159 m!1764805))

(declare-fun m!1764807 () Bool)

(assert (=> b!1505159 m!1764807))

(declare-fun m!1764809 () Bool)

(assert (=> b!1505159 m!1764809))

(declare-fun m!1764811 () Bool)

(assert (=> b!1505159 m!1764811))

(declare-fun m!1764813 () Bool)

(assert (=> b!1505159 m!1764813))

(assert (=> b!1505159 m!1764801))

(declare-fun m!1764815 () Bool)

(assert (=> b!1505159 m!1764815))

(declare-fun m!1764817 () Bool)

(assert (=> b!1505159 m!1764817))

(assert (=> b!1505159 m!1764809))

(declare-fun m!1764819 () Bool)

(assert (=> b!1505159 m!1764819))

(declare-fun m!1764821 () Bool)

(assert (=> b!1505159 m!1764821))

(declare-fun m!1764823 () Bool)

(assert (=> b!1505159 m!1764823))

(declare-fun m!1764825 () Bool)

(assert (=> b!1505159 m!1764825))

(declare-fun m!1764827 () Bool)

(assert (=> b!1505159 m!1764827))

(declare-fun m!1764829 () Bool)

(assert (=> b!1505159 m!1764829))

(declare-fun m!1764831 () Bool)

(assert (=> b!1505159 m!1764831))

(declare-fun m!1764833 () Bool)

(assert (=> b!1505159 m!1764833))

(declare-fun m!1764835 () Bool)

(assert (=> b!1505159 m!1764835))

(declare-fun m!1764837 () Bool)

(assert (=> b!1505159 m!1764837))

(declare-fun m!1764839 () Bool)

(assert (=> b!1505159 m!1764839))

(assert (=> b!1505159 m!1764835))

(declare-fun m!1764841 () Bool)

(assert (=> b!1505159 m!1764841))

(assert (=> b!1505159 m!1764793))

(declare-fun m!1764843 () Bool)

(assert (=> b!1505159 m!1764843))

(declare-fun m!1764845 () Bool)

(assert (=> b!1505159 m!1764845))

(declare-fun m!1764847 () Bool)

(assert (=> b!1505159 m!1764847))

(declare-fun m!1764849 () Bool)

(assert (=> start!140664 m!1764849))

(declare-fun m!1764851 () Bool)

(assert (=> start!140664 m!1764851))

(declare-fun m!1764853 () Bool)

(assert (=> start!140664 m!1764853))

(declare-fun m!1764855 () Bool)

(assert (=> start!140664 m!1764855))

(declare-fun m!1764857 () Bool)

(assert (=> start!140664 m!1764857))

(declare-fun m!1764859 () Bool)

(assert (=> start!140664 m!1764859))

(declare-fun m!1764861 () Bool)

(assert (=> start!140664 m!1764861))

(declare-fun m!1764863 () Bool)

(assert (=> b!1505136 m!1764863))

(declare-fun m!1764865 () Bool)

(assert (=> b!1505136 m!1764865))

(declare-fun m!1764867 () Bool)

(assert (=> b!1505150 m!1764867))

(declare-fun m!1764869 () Bool)

(assert (=> b!1505150 m!1764869))

(declare-fun m!1764871 () Bool)

(assert (=> mapNonEmpty!6853 m!1764871))

(declare-fun m!1764873 () Bool)

(assert (=> b!1505134 m!1764873))

(declare-fun m!1764875 () Bool)

(assert (=> b!1505134 m!1764875))

(declare-fun m!1764877 () Bool)

(assert (=> b!1505134 m!1764877))

(declare-fun m!1764879 () Bool)

(assert (=> b!1505134 m!1764879))

(assert (=> b!1505134 m!1764873))

(declare-fun m!1764881 () Bool)

(assert (=> b!1505134 m!1764881))

(declare-fun m!1764883 () Bool)

(assert (=> b!1505171 m!1764883))

(declare-fun m!1764885 () Bool)

(assert (=> b!1505167 m!1764885))

(declare-fun m!1764887 () Bool)

(assert (=> b!1505167 m!1764887))

(declare-fun m!1764889 () Bool)

(assert (=> b!1505167 m!1764889))

(declare-fun m!1764891 () Bool)

(assert (=> b!1505166 m!1764891))

(declare-fun m!1764893 () Bool)

(assert (=> b!1505168 m!1764893))

(declare-fun m!1764895 () Bool)

(assert (=> b!1505168 m!1764895))

(declare-fun m!1764897 () Bool)

(assert (=> b!1505153 m!1764897))

(declare-fun m!1764899 () Bool)

(assert (=> b!1505178 m!1764899))

(declare-fun m!1764901 () Bool)

(assert (=> b!1505178 m!1764901))

(declare-fun m!1764903 () Bool)

(assert (=> b!1505138 m!1764903))

(declare-fun m!1764905 () Bool)

(assert (=> b!1505146 m!1764905))

(declare-fun m!1764907 () Bool)

(assert (=> b!1505181 m!1764907))

(declare-fun m!1764909 () Bool)

(assert (=> b!1505174 m!1764909))

(declare-fun m!1764911 () Bool)

(assert (=> b!1505180 m!1764911))

(declare-fun m!1764913 () Bool)

(assert (=> b!1505147 m!1764913))

(declare-fun m!1764915 () Bool)

(assert (=> b!1505147 m!1764915))

(declare-fun m!1764917 () Bool)

(assert (=> b!1505147 m!1764917))

(declare-fun m!1764919 () Bool)

(assert (=> b!1505147 m!1764919))

(declare-fun m!1764921 () Bool)

(assert (=> b!1505179 m!1764921))

(declare-fun m!1764923 () Bool)

(assert (=> mapNonEmpty!6854 m!1764923))

(declare-fun m!1764925 () Bool)

(assert (=> b!1505183 m!1764925))

(declare-fun m!1764927 () Bool)

(assert (=> b!1505140 m!1764927))

(declare-fun m!1764929 () Bool)

(assert (=> b!1505140 m!1764929))

(declare-fun m!1764931 () Bool)

(assert (=> b!1505140 m!1764931))

(declare-fun m!1764933 () Bool)

(assert (=> b!1505141 m!1764933))

(declare-fun m!1764935 () Bool)

(assert (=> b!1505141 m!1764935))

(declare-fun m!1764937 () Bool)

(assert (=> b!1505164 m!1764937))

(declare-fun m!1764939 () Bool)

(assert (=> b!1505148 m!1764939))

(assert (=> b!1505148 m!1764939))

(declare-fun m!1764941 () Bool)

(assert (=> b!1505148 m!1764941))

(declare-fun m!1764943 () Bool)

(assert (=> b!1505173 m!1764943))

(declare-fun m!1764945 () Bool)

(assert (=> b!1505173 m!1764945))

(declare-fun m!1764947 () Bool)

(assert (=> b!1505177 m!1764947))

(declare-fun m!1764949 () Bool)

(assert (=> b!1505143 m!1764949))

(declare-fun m!1764951 () Bool)

(assert (=> mapNonEmpty!6852 m!1764951))

(declare-fun m!1764953 () Bool)

(assert (=> b!1505161 m!1764953))

(declare-fun m!1764955 () Bool)

(assert (=> b!1505161 m!1764955))

(check-sat (not start!140664) (not b!1505178) (not b!1505155) (not b!1505164) (not b!1505177) (not b!1505150) (not mapNonEmpty!6852) (not b!1505141) (not b!1505144) (not b!1505168) b_and!104707 (not b!1505153) (not b!1505134) (not b!1505171) b_and!104715 b_and!104709 (not b!1505179) (not b_next!39731) (not b!1505162) (not b_next!39721) (not b!1505135) (not b!1505148) (not b!1505147) (not b!1505181) b_and!104719 (not b!1505138) (not b!1505140) (not b!1505183) (not b!1505139) (not mapNonEmpty!6854) (not b_next!39727) (not b!1505143) (not b!1505159) (not b_next!39725) (not b!1505173) (not b!1505146) (not b_next!39719) b_and!104705 b_and!104713 (not b!1505165) (not mapNonEmpty!6853) (not b!1505182) (not b!1505161) (not b_next!39723) (not b!1505174) (not b!1505136) (not b!1505166) b_and!104711 (not b!1505167) (not b!1505180) b_and!104717 (not b_next!39729) (not b_next!39733))
(check-sat b_and!104707 b_and!104715 b_and!104709 b_and!104719 (not b_next!39727) (not b_next!39725) b_and!104713 (not b_next!39723) b_and!104711 (not b_next!39731) (not b_next!39721) (not b_next!39719) b_and!104705 b_and!104717 (not b_next!39729) (not b_next!39733))
