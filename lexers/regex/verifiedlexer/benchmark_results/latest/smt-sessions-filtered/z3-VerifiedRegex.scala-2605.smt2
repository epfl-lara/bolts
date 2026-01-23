; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139538 () Bool)

(assert start!139538)

(declare-fun b!1484869 () Bool)

(declare-fun b_free!38503 () Bool)

(declare-fun b_next!39207 () Bool)

(assert (=> b!1484869 (= b_free!38503 (not b_next!39207))))

(declare-fun tp!422013 () Bool)

(declare-fun b_and!103221 () Bool)

(assert (=> b!1484869 (= tp!422013 b_and!103221)))

(declare-fun b!1484846 () Bool)

(declare-fun b_free!38505 () Bool)

(declare-fun b_next!39209 () Bool)

(assert (=> b!1484846 (= b_free!38505 (not b_next!39209))))

(declare-fun tp!422025 () Bool)

(declare-fun b_and!103223 () Bool)

(assert (=> b!1484846 (= tp!422025 b_and!103223)))

(declare-fun b_free!38507 () Bool)

(declare-fun b_next!39211 () Bool)

(assert (=> b!1484846 (= b_free!38507 (not b_next!39211))))

(declare-fun tp!422007 () Bool)

(declare-fun b_and!103225 () Bool)

(assert (=> b!1484846 (= tp!422007 b_and!103225)))

(declare-fun b!1484870 () Bool)

(declare-fun b_free!38509 () Bool)

(declare-fun b_next!39213 () Bool)

(assert (=> b!1484870 (= b_free!38509 (not b_next!39213))))

(declare-fun tp!422006 () Bool)

(declare-fun b_and!103227 () Bool)

(assert (=> b!1484870 (= tp!422006 b_and!103227)))

(declare-fun b!1484856 () Bool)

(declare-fun b_free!38511 () Bool)

(declare-fun b_next!39215 () Bool)

(assert (=> b!1484856 (= b_free!38511 (not b_next!39215))))

(declare-fun tp!422000 () Bool)

(declare-fun b_and!103229 () Bool)

(assert (=> b!1484856 (= tp!422000 b_and!103229)))

(declare-fun b!1484874 () Bool)

(declare-fun b_free!38513 () Bool)

(declare-fun b_next!39217 () Bool)

(assert (=> b!1484874 (= b_free!38513 (not b_next!39217))))

(declare-fun tp!422015 () Bool)

(declare-fun b_and!103231 () Bool)

(assert (=> b!1484874 (= tp!422015 b_and!103231)))

(declare-fun b!1484878 () Bool)

(declare-fun b_free!38515 () Bool)

(declare-fun b_next!39219 () Bool)

(assert (=> b!1484878 (= b_free!38515 (not b_next!39219))))

(declare-fun tp!422001 () Bool)

(declare-fun b_and!103233 () Bool)

(assert (=> b!1484878 (= tp!422001 b_and!103233)))

(declare-fun b!1484848 () Bool)

(declare-fun b_free!38517 () Bool)

(declare-fun b_next!39221 () Bool)

(assert (=> b!1484848 (= b_free!38517 (not b_next!39221))))

(declare-fun tp!422012 () Bool)

(declare-fun b_and!103235 () Bool)

(assert (=> b!1484848 (= tp!422012 b_and!103235)))

(declare-fun b!1484844 () Bool)

(declare-fun e!949721 () Bool)

(declare-fun e!949715 () Bool)

(assert (=> b!1484844 (= e!949721 e!949715)))

(declare-fun mapIsEmpty!6546 () Bool)

(declare-fun mapRes!6548 () Bool)

(assert (=> mapIsEmpty!6546 mapRes!6548))

(declare-fun b!1484845 () Bool)

(declare-fun e!949710 () Bool)

(declare-fun e!949719 () Bool)

(assert (=> b!1484845 (= e!949710 e!949719)))

(declare-fun e!949728 () Bool)

(assert (=> b!1484846 (= e!949728 (and tp!422025 tp!422007))))

(declare-fun b!1484847 () Bool)

(declare-fun e!949731 () Bool)

(declare-fun e!949723 () Bool)

(assert (=> b!1484847 (= e!949731 (not e!949723))))

(declare-fun res!670563 () Bool)

(assert (=> b!1484847 (=> res!670563 e!949723)))

(declare-datatypes ((C!8420 0))(
  ( (C!8421 (val!4782 Int)) )
))
(declare-datatypes ((List!15827 0))(
  ( (Nil!15759) (Cons!15759 (h!21160 C!8420) (t!137749 List!15827)) )
))
(declare-fun lt!515644 () List!15827)

(declare-fun lt!515639 () List!15827)

(declare-fun isSuffix!277 (List!15827 List!15827) Bool)

(assert (=> b!1484847 (= res!670563 (not (isSuffix!277 lt!515644 lt!515639)))))

(declare-fun lt!515645 () List!15827)

(assert (=> b!1484847 (isSuffix!277 lt!515644 lt!515645)))

(declare-datatypes ((Unit!25617 0))(
  ( (Unit!25618) )
))
(declare-fun lt!515641 () Unit!25617)

(declare-fun lt!515640 () List!15827)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!255 (List!15827 List!15827) Unit!25617)

(assert (=> b!1484847 (= lt!515641 (lemmaConcatTwoListThenFSndIsSuffix!255 lt!515640 lt!515644))))

(declare-fun e!949697 () Bool)

(declare-datatypes ((Regex!4121 0))(
  ( (ElementMatch!4121 (c!243256 C!8420)) (Concat!7018 (regOne!8754 Regex!4121) (regTwo!8754 Regex!4121)) (EmptyExpr!4121) (Star!4121 (reg!4450 Regex!4121)) (EmptyLang!4121) (Union!4121 (regOne!8755 Regex!4121) (regTwo!8755 Regex!4121)) )
))
(declare-datatypes ((List!15828 0))(
  ( (Nil!15760) (Cons!15760 (h!21161 Regex!4121) (t!137750 List!15828)) )
))
(declare-datatypes ((Context!1278 0))(
  ( (Context!1279 (exprs!1139 List!15828)) )
))
(declare-datatypes ((tuple3!1218 0))(
  ( (tuple3!1219 (_1!8113 Regex!4121) (_2!8113 Context!1278) (_3!901 C!8420)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14424 0))(
  ( (tuple2!14425 (_1!8114 tuple3!1218) (_2!8114 (InoxSet Context!1278))) )
))
(declare-datatypes ((List!15829 0))(
  ( (Nil!15761) (Cons!15761 (h!21162 tuple2!14424) (t!137751 List!15829)) )
))
(declare-datatypes ((array!4856 0))(
  ( (array!4857 (arr!2167 (Array (_ BitVec 32) List!15829)) (size!12760 (_ BitVec 32))) )
))
(declare-datatypes ((array!4858 0))(
  ( (array!4859 (arr!2168 (Array (_ BitVec 32) (_ BitVec 64))) (size!12761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2742 0))(
  ( (LongMapFixedSize!2743 (defaultEntry!1731 Int) (mask!4520 (_ BitVec 32)) (extraKeys!1618 (_ BitVec 32)) (zeroValue!1628 List!15829) (minValue!1628 List!15829) (_size!2823 (_ BitVec 32)) (_keys!1665 array!4858) (_values!1650 array!4856) (_vacant!1432 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5369 0))(
  ( (Cell!5370 (v!22595 LongMapFixedSize!2742)) )
))
(declare-datatypes ((MutLongMap!1371 0))(
  ( (LongMap!1371 (underlying!2951 Cell!5369)) (MutLongMapExt!1370 (__x!9644 Int)) )
))
(declare-datatypes ((Cell!5371 0))(
  ( (Cell!5372 (v!22596 MutLongMap!1371)) )
))
(declare-datatypes ((Hashable!1315 0))(
  ( (HashableExt!1314 (__x!9645 Int)) )
))
(declare-datatypes ((MutableMap!1315 0))(
  ( (MutableMapExt!1314 (__x!9646 Int)) (HashMap!1315 (underlying!2952 Cell!5371) (hashF!3234 Hashable!1315) (_size!2824 (_ BitVec 32)) (defaultValue!1475 Int)) )
))
(declare-datatypes ((CacheDown!782 0))(
  ( (CacheDown!783 (cache!1696 MutableMap!1315)) )
))
(declare-fun cacheDown!629 () CacheDown!782)

(declare-fun tp!422008 () Bool)

(declare-fun tp!422024 () Bool)

(declare-fun array_inv!1573 (array!4858) Bool)

(declare-fun array_inv!1574 (array!4856) Bool)

(assert (=> b!1484848 (= e!949719 (and tp!422012 tp!422008 tp!422024 (array_inv!1573 (_keys!1665 (v!22595 (underlying!2951 (v!22596 (underlying!2952 (cache!1696 cacheDown!629))))))) (array_inv!1574 (_values!1650 (v!22595 (underlying!2951 (v!22596 (underlying!2952 (cache!1696 cacheDown!629))))))) e!949697))))

(declare-fun b!1484849 () Bool)

(declare-fun e!949702 () Bool)

(assert (=> b!1484849 (= e!949702 e!949710)))

(declare-fun b!1484850 () Bool)

(declare-fun e!949699 () Bool)

(assert (=> b!1484850 (= e!949699 e!949731)))

(declare-fun res!670558 () Bool)

(assert (=> b!1484850 (=> (not res!670558) (not e!949731))))

(declare-datatypes ((List!15830 0))(
  ( (Nil!15762) (Cons!15762 (h!21163 (_ BitVec 16)) (t!137752 List!15830)) )
))
(declare-datatypes ((TokenValue!2897 0))(
  ( (FloatLiteralValue!5794 (text!20724 List!15830)) (TokenValueExt!2896 (__x!9647 Int)) (Broken!14485 (value!89632 List!15830)) (Object!2964) (End!2897) (Def!2897) (Underscore!2897) (Match!2897) (Else!2897) (Error!2897) (Case!2897) (If!2897) (Extends!2897) (Abstract!2897) (Class!2897) (Val!2897) (DelimiterValue!5794 (del!2957 List!15830)) (KeywordValue!2903 (value!89633 List!15830)) (CommentValue!5794 (value!89634 List!15830)) (WhitespaceValue!5794 (value!89635 List!15830)) (IndentationValue!2897 (value!89636 List!15830)) (String!18744) (Int32!2897) (Broken!14486 (value!89637 List!15830)) (Boolean!2898) (Unit!25619) (OperatorValue!2900 (op!2957 List!15830)) (IdentifierValue!5794 (value!89638 List!15830)) (IdentifierValue!5795 (value!89639 List!15830)) (WhitespaceValue!5795 (value!89640 List!15830)) (True!5794) (False!5794) (Broken!14487 (value!89641 List!15830)) (Broken!14488 (value!89642 List!15830)) (True!5795) (RightBrace!2897) (RightBracket!2897) (Colon!2897) (Null!2897) (Comma!2897) (LeftBracket!2897) (False!5795) (LeftBrace!2897) (ImaginaryLiteralValue!2897 (text!20725 List!15830)) (StringLiteralValue!8691 (value!89643 List!15830)) (EOFValue!2897 (value!89644 List!15830)) (IdentValue!2897 (value!89645 List!15830)) (DelimiterValue!5795 (value!89646 List!15830)) (DedentValue!2897 (value!89647 List!15830)) (NewLineValue!2897 (value!89648 List!15830)) (IntegerValue!8691 (value!89649 (_ BitVec 32)) (text!20726 List!15830)) (IntegerValue!8692 (value!89650 Int) (text!20727 List!15830)) (Times!2897) (Or!2897) (Equal!2897) (Minus!2897) (Broken!14489 (value!89651 List!15830)) (And!2897) (Div!2897) (LessEqual!2897) (Mod!2897) (Concat!7019) (Not!2897) (Plus!2897) (SpaceValue!2897 (value!89652 List!15830)) (IntegerValue!8693 (value!89653 Int) (text!20728 List!15830)) (StringLiteralValue!8692 (text!20729 List!15830)) (FloatLiteralValue!5795 (text!20730 List!15830)) (BytesLiteralValue!2897 (value!89654 List!15830)) (CommentValue!5795 (value!89655 List!15830)) (StringLiteralValue!8693 (value!89656 List!15830)) (ErrorTokenValue!2897 (msg!2958 List!15830)) )
))
(declare-datatypes ((IArray!10735 0))(
  ( (IArray!10736 (innerList!5425 List!15827)) )
))
(declare-datatypes ((Conc!5365 0))(
  ( (Node!5365 (left!13262 Conc!5365) (right!13592 Conc!5365) (csize!10960 Int) (cheight!5576 Int)) (Leaf!7971 (xs!8122 IArray!10735) (csize!10961 Int)) (Empty!5365) )
))
(declare-datatypes ((BalanceConc!10672 0))(
  ( (BalanceConc!10673 (c!243257 Conc!5365)) )
))
(declare-datatypes ((String!18745 0))(
  ( (String!18746 (value!89657 String)) )
))
(declare-datatypes ((TokenValueInjection!5454 0))(
  ( (TokenValueInjection!5455 (toValue!4148 Int) (toChars!4007 Int)) )
))
(declare-datatypes ((Rule!5414 0))(
  ( (Rule!5415 (regex!2807 Regex!4121) (tag!3071 String!18745) (isSeparator!2807 Bool) (transformation!2807 TokenValueInjection!5454)) )
))
(declare-datatypes ((Token!5276 0))(
  ( (Token!5277 (value!89658 TokenValue!2897) (rule!4584 Rule!5414) (size!12762 Int) (originalCharacters!3669 List!15827)) )
))
(declare-datatypes ((List!15831 0))(
  ( (Nil!15763) (Cons!15763 (h!21164 Token!5276) (t!137753 List!15831)) )
))
(declare-datatypes ((IArray!10737 0))(
  ( (IArray!10738 (innerList!5426 List!15831)) )
))
(declare-datatypes ((Conc!5366 0))(
  ( (Node!5366 (left!13263 Conc!5366) (right!13593 Conc!5366) (csize!10962 Int) (cheight!5577 Int)) (Leaf!7972 (xs!8123 IArray!10737) (csize!10963 Int)) (Empty!5366) )
))
(declare-datatypes ((BalanceConc!10674 0))(
  ( (BalanceConc!10675 (c!243258 Conc!5366)) )
))
(declare-datatypes ((tuple2!14426 0))(
  ( (tuple2!14427 (_1!8115 BalanceConc!10674) (_2!8115 BalanceConc!10672)) )
))
(declare-fun lt!515637 () tuple2!14426)

(declare-fun lt!515635 () tuple2!14426)

(declare-fun acc!392 () BalanceConc!10674)

(declare-fun list!6260 (BalanceConc!10674) List!15831)

(declare-fun ++!4247 (BalanceConc!10674 BalanceConc!10674) BalanceConc!10674)

(assert (=> b!1484850 (= res!670558 (= (list!6260 (_1!8115 lt!515635)) (list!6260 (++!4247 acc!392 (_1!8115 lt!515637)))))))

(declare-datatypes ((LexerInterface!2463 0))(
  ( (LexerInterfaceExt!2460 (__x!9648 Int)) (Lexer!2461) )
))
(declare-fun thiss!13241 () LexerInterface!2463)

(declare-datatypes ((List!15832 0))(
  ( (Nil!15764) (Cons!15764 (h!21165 Rule!5414) (t!137754 List!15832)) )
))
(declare-fun rules!1640 () List!15832)

(declare-fun input!1102 () BalanceConc!10672)

(declare-fun lexRec!300 (LexerInterface!2463 List!15832 BalanceConc!10672) tuple2!14426)

(assert (=> b!1484850 (= lt!515637 (lexRec!300 thiss!13241 rules!1640 input!1102))))

(declare-fun totalInput!458 () BalanceConc!10672)

(assert (=> b!1484850 (= lt!515635 (lexRec!300 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1484851 () Bool)

(declare-fun e!949696 () Bool)

(declare-fun e!949726 () Bool)

(assert (=> b!1484851 (= e!949696 e!949726)))

(declare-fun b!1484852 () Bool)

(declare-fun e!949713 () Bool)

(declare-datatypes ((tuple3!1220 0))(
  ( (tuple3!1221 (_1!8116 (InoxSet Context!1278)) (_2!8116 Int) (_3!902 Int)) )
))
(declare-datatypes ((tuple2!14428 0))(
  ( (tuple2!14429 (_1!8117 tuple3!1220) (_2!8117 Int)) )
))
(declare-datatypes ((List!15833 0))(
  ( (Nil!15765) (Cons!15765 (h!21166 tuple2!14428) (t!137755 List!15833)) )
))
(declare-datatypes ((array!4860 0))(
  ( (array!4861 (arr!2169 (Array (_ BitVec 32) List!15833)) (size!12763 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2744 0))(
  ( (LongMapFixedSize!2745 (defaultEntry!1732 Int) (mask!4521 (_ BitVec 32)) (extraKeys!1619 (_ BitVec 32)) (zeroValue!1629 List!15833) (minValue!1629 List!15833) (_size!2825 (_ BitVec 32)) (_keys!1666 array!4858) (_values!1651 array!4860) (_vacant!1433 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5373 0))(
  ( (Cell!5374 (v!22597 LongMapFixedSize!2744)) )
))
(declare-datatypes ((MutLongMap!1372 0))(
  ( (LongMap!1372 (underlying!2953 Cell!5373)) (MutLongMapExt!1371 (__x!9649 Int)) )
))
(declare-datatypes ((Cell!5375 0))(
  ( (Cell!5376 (v!22598 MutLongMap!1372)) )
))
(declare-datatypes ((Hashable!1316 0))(
  ( (HashableExt!1315 (__x!9650 Int)) )
))
(declare-datatypes ((MutableMap!1316 0))(
  ( (MutableMapExt!1315 (__x!9651 Int)) (HashMap!1316 (underlying!2954 Cell!5375) (hashF!3235 Hashable!1316) (_size!2826 (_ BitVec 32)) (defaultValue!1476 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!200 0))(
  ( (CacheFurthestNullable!201 (cache!1697 MutableMap!1316) (totalInput!2235 BalanceConc!10672)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!200)

(declare-fun tp!422010 () Bool)

(declare-fun inv!20977 (Conc!5365) Bool)

(assert (=> b!1484852 (= e!949713 (and (inv!20977 (c!243257 (totalInput!2235 cacheFurthestNullable!64))) tp!422010))))

(declare-fun b!1484853 () Bool)

(declare-fun e!949701 () Bool)

(declare-fun treated!70 () BalanceConc!10672)

(declare-fun tp!422022 () Bool)

(assert (=> b!1484853 (= e!949701 (and (inv!20977 (c!243257 treated!70)) tp!422022))))

(declare-fun b!1484854 () Bool)

(declare-fun res!670568 () Bool)

(assert (=> b!1484854 (=> (not res!670568) (not e!949699))))

(declare-fun lt!515643 () tuple2!14426)

(declare-fun isEmpty!9841 (List!15827) Bool)

(declare-fun list!6261 (BalanceConc!10672) List!15827)

(assert (=> b!1484854 (= res!670568 (isEmpty!9841 (list!6261 (_2!8115 lt!515643))))))

(declare-fun b!1484855 () Bool)

(declare-fun res!670566 () Bool)

(declare-fun e!949717 () Bool)

(assert (=> b!1484855 (=> (not res!670566) (not e!949717))))

(declare-fun isEmpty!9842 (List!15832) Bool)

(assert (=> b!1484855 (= res!670566 (not (isEmpty!9842 rules!1640)))))

(declare-fun e!949730 () Bool)

(declare-fun e!949706 () Bool)

(assert (=> b!1484856 (= e!949730 (and e!949706 tp!422000))))

(declare-fun b!1484857 () Bool)

(declare-fun e!949714 () Bool)

(declare-fun tp!422003 () Bool)

(declare-fun inv!20975 (String!18745) Bool)

(declare-fun inv!20978 (TokenValueInjection!5454) Bool)

(assert (=> b!1484857 (= e!949714 (and tp!422003 (inv!20975 (tag!3071 (h!21165 rules!1640))) (inv!20978 (transformation!2807 (h!21165 rules!1640))) e!949728))))

(declare-fun mapIsEmpty!6547 () Bool)

(declare-fun mapRes!6546 () Bool)

(assert (=> mapIsEmpty!6547 mapRes!6546))

(declare-fun b!1484858 () Bool)

(declare-fun res!670560 () Bool)

(assert (=> b!1484858 (=> (not res!670560) (not e!949731))))

(declare-datatypes ((tuple2!14430 0))(
  ( (tuple2!14431 (_1!8118 Context!1278) (_2!8118 C!8420)) )
))
(declare-datatypes ((tuple2!14432 0))(
  ( (tuple2!14433 (_1!8119 tuple2!14430) (_2!8119 (InoxSet Context!1278))) )
))
(declare-datatypes ((List!15834 0))(
  ( (Nil!15766) (Cons!15766 (h!21167 tuple2!14432) (t!137756 List!15834)) )
))
(declare-datatypes ((array!4862 0))(
  ( (array!4863 (arr!2170 (Array (_ BitVec 32) List!15834)) (size!12764 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2746 0))(
  ( (LongMapFixedSize!2747 (defaultEntry!1733 Int) (mask!4522 (_ BitVec 32)) (extraKeys!1620 (_ BitVec 32)) (zeroValue!1630 List!15834) (minValue!1630 List!15834) (_size!2827 (_ BitVec 32)) (_keys!1667 array!4858) (_values!1652 array!4862) (_vacant!1434 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1317 0))(
  ( (HashableExt!1316 (__x!9652 Int)) )
))
(declare-datatypes ((Cell!5377 0))(
  ( (Cell!5378 (v!22599 LongMapFixedSize!2746)) )
))
(declare-datatypes ((MutLongMap!1373 0))(
  ( (LongMap!1373 (underlying!2955 Cell!5377)) (MutLongMapExt!1372 (__x!9653 Int)) )
))
(declare-datatypes ((Cell!5379 0))(
  ( (Cell!5380 (v!22600 MutLongMap!1373)) )
))
(declare-datatypes ((MutableMap!1317 0))(
  ( (MutableMapExt!1316 (__x!9654 Int)) (HashMap!1317 (underlying!2956 Cell!5379) (hashF!3236 Hashable!1317) (_size!2828 (_ BitVec 32)) (defaultValue!1477 Int)) )
))
(declare-datatypes ((CacheUp!776 0))(
  ( (CacheUp!777 (cache!1698 MutableMap!1317)) )
))
(declare-fun cacheUp!616 () CacheUp!776)

(declare-fun valid!1078 (CacheUp!776) Bool)

(assert (=> b!1484858 (= res!670560 (valid!1078 cacheUp!616))))

(declare-fun b!1484859 () Bool)

(declare-fun e!949718 () Bool)

(declare-fun tp!422004 () Bool)

(assert (=> b!1484859 (= e!949718 (and e!949714 tp!422004))))

(declare-fun b!1484860 () Bool)

(declare-fun e!949707 () Bool)

(declare-fun tp!422017 () Bool)

(assert (=> b!1484860 (= e!949707 (and tp!422017 mapRes!6548))))

(declare-fun condMapEmpty!6546 () Bool)

(declare-fun mapDefault!6546 () List!15834)

(assert (=> b!1484860 (= condMapEmpty!6546 (= (arr!2170 (_values!1652 (v!22599 (underlying!2955 (v!22600 (underlying!2956 (cache!1698 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15834)) mapDefault!6546)))))

(declare-fun b!1484861 () Bool)

(declare-fun e!949729 () Bool)

(declare-fun e!949720 () Bool)

(assert (=> b!1484861 (= e!949729 e!949720)))

(declare-fun mapNonEmpty!6546 () Bool)

(declare-fun mapRes!6547 () Bool)

(declare-fun tp!422020 () Bool)

(declare-fun tp!422019 () Bool)

(assert (=> mapNonEmpty!6546 (= mapRes!6547 (and tp!422020 tp!422019))))

(declare-fun mapValue!6547 () List!15829)

(declare-fun mapKey!6546 () (_ BitVec 32))

(declare-fun mapRest!6547 () (Array (_ BitVec 32) List!15829))

(assert (=> mapNonEmpty!6546 (= (arr!2167 (_values!1650 (v!22595 (underlying!2951 (v!22596 (underlying!2952 (cache!1696 cacheDown!629))))))) (store mapRest!6547 mapKey!6546 mapValue!6547))))

(declare-fun b!1484862 () Bool)

(declare-fun res!670567 () Bool)

(assert (=> b!1484862 (=> (not res!670567) (not e!949717))))

(declare-fun rulesInvariant!2249 (LexerInterface!2463 List!15832) Bool)

(assert (=> b!1484862 (= res!670567 (rulesInvariant!2249 thiss!13241 rules!1640))))

(declare-fun b!1484863 () Bool)

(declare-fun e!949724 () Bool)

(declare-fun e!949703 () Bool)

(assert (=> b!1484863 (= e!949724 e!949703)))

(declare-fun b!1484864 () Bool)

(declare-fun e!949705 () Bool)

(declare-fun tp!422029 () Bool)

(assert (=> b!1484864 (= e!949705 (and (inv!20977 (c!243257 totalInput!458)) tp!422029))))

(declare-fun mapNonEmpty!6547 () Bool)

(declare-fun tp!422021 () Bool)

(declare-fun tp!422018 () Bool)

(assert (=> mapNonEmpty!6547 (= mapRes!6546 (and tp!422021 tp!422018))))

(declare-fun mapRest!6548 () (Array (_ BitVec 32) List!15833))

(declare-fun mapValue!6548 () List!15833)

(declare-fun mapKey!6547 () (_ BitVec 32))

(assert (=> mapNonEmpty!6547 (= (arr!2169 (_values!1651 (v!22597 (underlying!2953 (v!22598 (underlying!2954 (cache!1697 cacheFurthestNullable!64))))))) (store mapRest!6548 mapKey!6547 mapValue!6548))))

(declare-fun mapNonEmpty!6548 () Bool)

(declare-fun tp!422002 () Bool)

(declare-fun tp!422026 () Bool)

(assert (=> mapNonEmpty!6548 (= mapRes!6548 (and tp!422002 tp!422026))))

(declare-fun mapRest!6546 () (Array (_ BitVec 32) List!15834))

(declare-fun mapKey!6548 () (_ BitVec 32))

(declare-fun mapValue!6546 () List!15834)

(assert (=> mapNonEmpty!6548 (= (arr!2170 (_values!1652 (v!22599 (underlying!2955 (v!22600 (underlying!2956 (cache!1698 cacheUp!616))))))) (store mapRest!6546 mapKey!6548 mapValue!6546))))

(declare-fun b!1484865 () Bool)

(declare-fun e!949711 () Bool)

(declare-fun tp!422005 () Bool)

(assert (=> b!1484865 (= e!949711 (and tp!422005 mapRes!6546))))

(declare-fun condMapEmpty!6547 () Bool)

(declare-fun mapDefault!6547 () List!15833)

(assert (=> b!1484865 (= condMapEmpty!6547 (= (arr!2169 (_values!1651 (v!22597 (underlying!2953 (v!22598 (underlying!2954 (cache!1697 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15833)) mapDefault!6547)))))

(declare-fun b!1484866 () Bool)

(declare-fun res!670562 () Bool)

(assert (=> b!1484866 (=> (not res!670562) (not e!949731))))

(declare-fun valid!1079 (CacheDown!782) Bool)

(assert (=> b!1484866 (= res!670562 (valid!1079 cacheDown!629))))

(declare-fun e!949732 () Bool)

(declare-fun b!1484867 () Bool)

(declare-fun inv!20979 (BalanceConc!10672) Bool)

(assert (=> b!1484867 (= e!949732 (and e!949730 (inv!20979 (totalInput!2235 cacheFurthestNullable!64)) e!949713))))

(declare-fun b!1484868 () Bool)

(declare-fun e!949700 () Bool)

(assert (=> b!1484868 (= e!949700 e!949724)))

(declare-fun e!949712 () Bool)

(assert (=> b!1484869 (= e!949715 (and e!949712 tp!422013))))

(declare-fun e!949698 () Bool)

(assert (=> b!1484870 (= e!949726 (and e!949698 tp!422006))))

(declare-fun b!1484871 () Bool)

(declare-fun res!670569 () Bool)

(assert (=> b!1484871 (=> (not res!670569) (not e!949731))))

(assert (=> b!1484871 (= res!670569 (= (totalInput!2235 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1484872 () Bool)

(declare-fun res!670561 () Bool)

(assert (=> b!1484872 (=> (not res!670561) (not e!949731))))

(declare-fun valid!1080 (CacheFurthestNullable!200) Bool)

(assert (=> b!1484872 (= res!670561 (valid!1080 cacheFurthestNullable!64))))

(declare-fun b!1484873 () Bool)

(declare-fun e!949695 () Bool)

(assert (=> b!1484873 (= e!949717 e!949695)))

(declare-fun res!670564 () Bool)

(assert (=> b!1484873 (=> (not res!670564) (not e!949695))))

(assert (=> b!1484873 (= res!670564 (= lt!515639 lt!515645))))

(declare-fun ++!4248 (List!15827 List!15827) List!15827)

(assert (=> b!1484873 (= lt!515645 (++!4248 lt!515640 lt!515644))))

(assert (=> b!1484873 (= lt!515639 (list!6261 totalInput!458))))

(assert (=> b!1484873 (= lt!515644 (list!6261 input!1102))))

(assert (=> b!1484873 (= lt!515640 (list!6261 treated!70))))

(declare-fun e!949716 () Bool)

(declare-fun tp!422014 () Bool)

(declare-fun tp!422011 () Bool)

(declare-fun array_inv!1575 (array!4860) Bool)

(assert (=> b!1484874 (= e!949716 (and tp!422015 tp!422011 tp!422014 (array_inv!1573 (_keys!1666 (v!22597 (underlying!2953 (v!22598 (underlying!2954 (cache!1697 cacheFurthestNullable!64))))))) (array_inv!1575 (_values!1651 (v!22597 (underlying!2953 (v!22598 (underlying!2954 (cache!1697 cacheFurthestNullable!64))))))) e!949711))))

(declare-fun b!1484875 () Bool)

(declare-fun lt!515646 () MutLongMap!1372)

(get-info :version)

(assert (=> b!1484875 (= e!949706 (and e!949729 ((_ is LongMap!1372) lt!515646)))))

(assert (=> b!1484875 (= lt!515646 (v!22598 (underlying!2954 (cache!1697 cacheFurthestNullable!64))))))

(declare-fun b!1484876 () Bool)

(assert (=> b!1484876 (= e!949720 e!949716)))

(declare-fun b!1484877 () Bool)

(assert (=> b!1484877 (= e!949695 e!949699)))

(declare-fun res!670565 () Bool)

(assert (=> b!1484877 (=> (not res!670565) (not e!949699))))

(assert (=> b!1484877 (= res!670565 (= (list!6260 (_1!8115 lt!515643)) (list!6260 acc!392)))))

(assert (=> b!1484877 (= lt!515643 (lexRec!300 thiss!13241 rules!1640 treated!70))))

(declare-fun tp!422028 () Bool)

(declare-fun tp!422009 () Bool)

(declare-fun array_inv!1576 (array!4862) Bool)

(assert (=> b!1484878 (= e!949703 (and tp!422001 tp!422028 tp!422009 (array_inv!1573 (_keys!1667 (v!22599 (underlying!2955 (v!22600 (underlying!2956 (cache!1698 cacheUp!616))))))) (array_inv!1576 (_values!1652 (v!22599 (underlying!2955 (v!22600 (underlying!2956 (cache!1698 cacheUp!616))))))) e!949707))))

(declare-fun res!670570 () Bool)

(assert (=> start!139538 (=> (not res!670570) (not e!949717))))

(assert (=> start!139538 (= res!670570 ((_ is Lexer!2461) thiss!13241))))

(assert (=> start!139538 e!949717))

(declare-fun e!949708 () Bool)

(declare-fun inv!20980 (BalanceConc!10674) Bool)

(assert (=> start!139538 (and (inv!20980 acc!392) e!949708)))

(declare-fun inv!20981 (CacheUp!776) Bool)

(assert (=> start!139538 (and (inv!20981 cacheUp!616) e!949721)))

(declare-fun inv!20982 (CacheDown!782) Bool)

(assert (=> start!139538 (and (inv!20982 cacheDown!629) e!949696)))

(declare-fun e!949704 () Bool)

(assert (=> start!139538 (and (inv!20979 input!1102) e!949704)))

(assert (=> start!139538 (and (inv!20979 treated!70) e!949701)))

(assert (=> start!139538 true))

(assert (=> start!139538 e!949718))

(declare-fun inv!20983 (CacheFurthestNullable!200) Bool)

(assert (=> start!139538 (and (inv!20983 cacheFurthestNullable!64) e!949732)))

(assert (=> start!139538 (and (inv!20979 totalInput!458) e!949705)))

(declare-fun b!1484879 () Bool)

(declare-fun tp!422016 () Bool)

(assert (=> b!1484879 (= e!949697 (and tp!422016 mapRes!6547))))

(declare-fun condMapEmpty!6548 () Bool)

(declare-fun mapDefault!6548 () List!15829)

(assert (=> b!1484879 (= condMapEmpty!6548 (= (arr!2167 (_values!1650 (v!22595 (underlying!2951 (v!22596 (underlying!2952 (cache!1696 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15829)) mapDefault!6548)))))

(declare-fun b!1484880 () Bool)

(declare-fun tp!422023 () Bool)

(declare-fun inv!20984 (Conc!5366) Bool)

(assert (=> b!1484880 (= e!949708 (and (inv!20984 (c!243258 acc!392)) tp!422023))))

(declare-fun b!1484881 () Bool)

(declare-fun tp!422027 () Bool)

(assert (=> b!1484881 (= e!949704 (and (inv!20977 (c!243257 input!1102)) tp!422027))))

(declare-fun b!1484882 () Bool)

(assert (=> b!1484882 (= e!949723 true)))

(declare-datatypes ((tuple2!14434 0))(
  ( (tuple2!14435 (_1!8120 Token!5276) (_2!8120 BalanceConc!10672)) )
))
(declare-datatypes ((Option!2891 0))(
  ( (None!2890) (Some!2890 (v!22601 tuple2!14434)) )
))
(declare-datatypes ((tuple4!584 0))(
  ( (tuple4!585 (_1!8121 Option!2891) (_2!8121 CacheUp!776) (_3!903 CacheDown!782) (_4!292 CacheFurthestNullable!200)) )
))
(declare-fun lt!515638 () tuple4!584)

(declare-fun maxPrefixZipperSequenceV3Mem!5 (LexerInterface!2463 List!15832 BalanceConc!10672 BalanceConc!10672 CacheUp!776 CacheDown!782 CacheFurthestNullable!200) tuple4!584)

(assert (=> b!1484882 (= lt!515638 (maxPrefixZipperSequenceV3Mem!5 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun mapIsEmpty!6548 () Bool)

(assert (=> mapIsEmpty!6548 mapRes!6547))

(declare-fun b!1484883 () Bool)

(declare-fun res!670559 () Bool)

(assert (=> b!1484883 (=> (not res!670559) (not e!949731))))

(assert (=> b!1484883 (= res!670559 (= (list!6261 (_2!8115 lt!515635)) (list!6261 (_2!8115 lt!515637))))))

(declare-fun b!1484884 () Bool)

(declare-fun lt!515642 () MutLongMap!1373)

(assert (=> b!1484884 (= e!949712 (and e!949700 ((_ is LongMap!1373) lt!515642)))))

(assert (=> b!1484884 (= lt!515642 (v!22600 (underlying!2956 (cache!1698 cacheUp!616))))))

(declare-fun b!1484885 () Bool)

(declare-fun lt!515636 () MutLongMap!1371)

(assert (=> b!1484885 (= e!949698 (and e!949702 ((_ is LongMap!1371) lt!515636)))))

(assert (=> b!1484885 (= lt!515636 (v!22596 (underlying!2952 (cache!1696 cacheDown!629))))))

(assert (= (and start!139538 res!670570) b!1484855))

(assert (= (and b!1484855 res!670566) b!1484862))

(assert (= (and b!1484862 res!670567) b!1484873))

(assert (= (and b!1484873 res!670564) b!1484877))

(assert (= (and b!1484877 res!670565) b!1484854))

(assert (= (and b!1484854 res!670568) b!1484850))

(assert (= (and b!1484850 res!670558) b!1484883))

(assert (= (and b!1484883 res!670559) b!1484858))

(assert (= (and b!1484858 res!670560) b!1484866))

(assert (= (and b!1484866 res!670562) b!1484872))

(assert (= (and b!1484872 res!670561) b!1484871))

(assert (= (and b!1484871 res!670569) b!1484847))

(assert (= (and b!1484847 (not res!670563)) b!1484882))

(assert (= start!139538 b!1484880))

(assert (= (and b!1484860 condMapEmpty!6546) mapIsEmpty!6546))

(assert (= (and b!1484860 (not condMapEmpty!6546)) mapNonEmpty!6548))

(assert (= b!1484878 b!1484860))

(assert (= b!1484863 b!1484878))

(assert (= b!1484868 b!1484863))

(assert (= (and b!1484884 ((_ is LongMap!1373) (v!22600 (underlying!2956 (cache!1698 cacheUp!616))))) b!1484868))

(assert (= b!1484869 b!1484884))

(assert (= (and b!1484844 ((_ is HashMap!1317) (cache!1698 cacheUp!616))) b!1484869))

(assert (= start!139538 b!1484844))

(assert (= (and b!1484879 condMapEmpty!6548) mapIsEmpty!6548))

(assert (= (and b!1484879 (not condMapEmpty!6548)) mapNonEmpty!6546))

(assert (= b!1484848 b!1484879))

(assert (= b!1484845 b!1484848))

(assert (= b!1484849 b!1484845))

(assert (= (and b!1484885 ((_ is LongMap!1371) (v!22596 (underlying!2952 (cache!1696 cacheDown!629))))) b!1484849))

(assert (= b!1484870 b!1484885))

(assert (= (and b!1484851 ((_ is HashMap!1315) (cache!1696 cacheDown!629))) b!1484870))

(assert (= start!139538 b!1484851))

(assert (= start!139538 b!1484881))

(assert (= start!139538 b!1484853))

(assert (= b!1484857 b!1484846))

(assert (= b!1484859 b!1484857))

(assert (= (and start!139538 ((_ is Cons!15764) rules!1640)) b!1484859))

(assert (= (and b!1484865 condMapEmpty!6547) mapIsEmpty!6547))

(assert (= (and b!1484865 (not condMapEmpty!6547)) mapNonEmpty!6547))

(assert (= b!1484874 b!1484865))

(assert (= b!1484876 b!1484874))

(assert (= b!1484861 b!1484876))

(assert (= (and b!1484875 ((_ is LongMap!1372) (v!22598 (underlying!2954 (cache!1697 cacheFurthestNullable!64))))) b!1484861))

(assert (= b!1484856 b!1484875))

(assert (= (and b!1484867 ((_ is HashMap!1316) (cache!1697 cacheFurthestNullable!64))) b!1484856))

(assert (= b!1484867 b!1484852))

(assert (= start!139538 b!1484867))

(assert (= start!139538 b!1484864))

(declare-fun m!1731364 () Bool)

(assert (=> b!1484866 m!1731364))

(declare-fun m!1731366 () Bool)

(assert (=> b!1484857 m!1731366))

(declare-fun m!1731368 () Bool)

(assert (=> b!1484857 m!1731368))

(declare-fun m!1731370 () Bool)

(assert (=> b!1484862 m!1731370))

(declare-fun m!1731372 () Bool)

(assert (=> b!1484853 m!1731372))

(declare-fun m!1731374 () Bool)

(assert (=> mapNonEmpty!6546 m!1731374))

(declare-fun m!1731376 () Bool)

(assert (=> b!1484864 m!1731376))

(declare-fun m!1731378 () Bool)

(assert (=> b!1484867 m!1731378))

(declare-fun m!1731380 () Bool)

(assert (=> b!1484878 m!1731380))

(declare-fun m!1731382 () Bool)

(assert (=> b!1484878 m!1731382))

(declare-fun m!1731384 () Bool)

(assert (=> b!1484880 m!1731384))

(declare-fun m!1731386 () Bool)

(assert (=> b!1484877 m!1731386))

(declare-fun m!1731388 () Bool)

(assert (=> b!1484877 m!1731388))

(declare-fun m!1731390 () Bool)

(assert (=> b!1484877 m!1731390))

(declare-fun m!1731392 () Bool)

(assert (=> b!1484850 m!1731392))

(assert (=> b!1484850 m!1731392))

(declare-fun m!1731394 () Bool)

(assert (=> b!1484850 m!1731394))

(declare-fun m!1731396 () Bool)

(assert (=> b!1484850 m!1731396))

(declare-fun m!1731398 () Bool)

(assert (=> b!1484850 m!1731398))

(declare-fun m!1731400 () Bool)

(assert (=> b!1484850 m!1731400))

(declare-fun m!1731402 () Bool)

(assert (=> b!1484873 m!1731402))

(declare-fun m!1731404 () Bool)

(assert (=> b!1484873 m!1731404))

(declare-fun m!1731406 () Bool)

(assert (=> b!1484873 m!1731406))

(declare-fun m!1731408 () Bool)

(assert (=> b!1484873 m!1731408))

(declare-fun m!1731410 () Bool)

(assert (=> b!1484854 m!1731410))

(assert (=> b!1484854 m!1731410))

(declare-fun m!1731412 () Bool)

(assert (=> b!1484854 m!1731412))

(declare-fun m!1731414 () Bool)

(assert (=> b!1484874 m!1731414))

(declare-fun m!1731416 () Bool)

(assert (=> b!1484874 m!1731416))

(declare-fun m!1731418 () Bool)

(assert (=> b!1484882 m!1731418))

(declare-fun m!1731420 () Bool)

(assert (=> start!139538 m!1731420))

(declare-fun m!1731422 () Bool)

(assert (=> start!139538 m!1731422))

(declare-fun m!1731424 () Bool)

(assert (=> start!139538 m!1731424))

(declare-fun m!1731426 () Bool)

(assert (=> start!139538 m!1731426))

(declare-fun m!1731428 () Bool)

(assert (=> start!139538 m!1731428))

(declare-fun m!1731430 () Bool)

(assert (=> start!139538 m!1731430))

(declare-fun m!1731432 () Bool)

(assert (=> start!139538 m!1731432))

(declare-fun m!1731434 () Bool)

(assert (=> b!1484852 m!1731434))

(declare-fun m!1731436 () Bool)

(assert (=> mapNonEmpty!6547 m!1731436))

(declare-fun m!1731438 () Bool)

(assert (=> b!1484858 m!1731438))

(declare-fun m!1731440 () Bool)

(assert (=> mapNonEmpty!6548 m!1731440))

(declare-fun m!1731442 () Bool)

(assert (=> b!1484847 m!1731442))

(declare-fun m!1731444 () Bool)

(assert (=> b!1484847 m!1731444))

(declare-fun m!1731446 () Bool)

(assert (=> b!1484847 m!1731446))

(declare-fun m!1731448 () Bool)

(assert (=> b!1484881 m!1731448))

(declare-fun m!1731450 () Bool)

(assert (=> b!1484855 m!1731450))

(declare-fun m!1731452 () Bool)

(assert (=> b!1484883 m!1731452))

(declare-fun m!1731454 () Bool)

(assert (=> b!1484883 m!1731454))

(declare-fun m!1731456 () Bool)

(assert (=> b!1484848 m!1731456))

(declare-fun m!1731458 () Bool)

(assert (=> b!1484848 m!1731458))

(declare-fun m!1731460 () Bool)

(assert (=> b!1484872 m!1731460))

(check-sat (not b!1484850) b_and!103233 (not b!1484847) (not b!1484865) (not b!1484882) (not b!1484848) (not b_next!39221) (not b!1484860) (not b!1484881) (not b_next!39209) (not b!1484867) (not b!1484864) (not b!1484879) (not mapNonEmpty!6546) (not b_next!39213) (not b!1484873) (not start!139538) (not b!1484853) (not b!1484878) (not b!1484880) b_and!103229 (not b_next!39217) (not b!1484852) (not b!1484866) (not b!1484862) (not b!1484872) (not b!1484857) b_and!103221 b_and!103223 (not b!1484877) b_and!103235 b_and!103225 (not mapNonEmpty!6548) (not mapNonEmpty!6547) (not b!1484883) (not b_next!39215) (not b!1484854) (not b_next!39211) (not b!1484859) (not b_next!39219) (not b!1484858) (not b_next!39207) b_and!103227 (not b!1484855) (not b!1484874) b_and!103231)
(check-sat (not b_next!39209) (not b_next!39213) b_and!103233 (not b_next!39221) b_and!103225 (not b_next!39215) (not b_next!39211) (not b_next!39219) b_and!103231 b_and!103229 (not b_next!39217) b_and!103235 b_and!103221 b_and!103223 (not b_next!39207) b_and!103227)
