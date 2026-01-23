; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266386 () Bool)

(assert start!266386)

(declare-fun b!2747858 () Bool)

(declare-fun b_free!77529 () Bool)

(declare-fun b_next!78233 () Bool)

(assert (=> b!2747858 (= b_free!77529 (not b_next!78233))))

(declare-fun tp!866486 () Bool)

(declare-fun b_and!202253 () Bool)

(assert (=> b!2747858 (= tp!866486 b_and!202253)))

(declare-fun b!2747862 () Bool)

(declare-fun b_free!77531 () Bool)

(declare-fun b_next!78235 () Bool)

(assert (=> b!2747862 (= b_free!77531 (not b_next!78235))))

(declare-fun tp!866485 () Bool)

(declare-fun b_and!202255 () Bool)

(assert (=> b!2747862 (= tp!866485 b_and!202255)))

(declare-fun b!2747873 () Bool)

(declare-fun b_free!77533 () Bool)

(declare-fun b_next!78237 () Bool)

(assert (=> b!2747873 (= b_free!77533 (not b_next!78237))))

(declare-fun tp!866478 () Bool)

(declare-fun b_and!202257 () Bool)

(assert (=> b!2747873 (= tp!866478 b_and!202257)))

(declare-fun b!2747870 () Bool)

(declare-fun b_free!77535 () Bool)

(declare-fun b_next!78239 () Bool)

(assert (=> b!2747870 (= b_free!77535 (not b_next!78239))))

(declare-fun tp!866482 () Bool)

(declare-fun b_and!202259 () Bool)

(assert (=> b!2747870 (= tp!866482 b_and!202259)))

(declare-fun b!2747854 () Bool)

(declare-fun b_free!77537 () Bool)

(declare-fun b_next!78241 () Bool)

(assert (=> b!2747854 (= b_free!77537 (not b_next!78241))))

(declare-fun tp!866487 () Bool)

(declare-fun b_and!202261 () Bool)

(assert (=> b!2747854 (= tp!866487 b_and!202261)))

(declare-fun b_free!77539 () Bool)

(declare-fun b_next!78243 () Bool)

(assert (=> b!2747854 (= b_free!77539 (not b_next!78243))))

(declare-fun tp!866489 () Bool)

(declare-fun b_and!202263 () Bool)

(assert (=> b!2747854 (= tp!866489 b_and!202263)))

(declare-fun b!2747852 () Bool)

(declare-fun e!1731626 () Bool)

(declare-fun e!1731628 () Bool)

(assert (=> b!2747852 (= e!1731626 e!1731628)))

(declare-fun mapIsEmpty!16603 () Bool)

(declare-fun mapRes!16603 () Bool)

(assert (=> mapIsEmpty!16603 mapRes!16603))

(declare-fun b!2747853 () Bool)

(declare-fun e!1731632 () Bool)

(declare-fun e!1731638 () Bool)

(declare-datatypes ((C!16184 0))(
  ( (C!16185 (val!10026 Int)) )
))
(declare-datatypes ((Regex!8013 0))(
  ( (ElementMatch!8013 (c!444923 C!16184)) (Concat!13091 (regOne!16538 Regex!8013) (regTwo!16538 Regex!8013)) (EmptyExpr!8013) (Star!8013 (reg!8342 Regex!8013)) (EmptyLang!8013) (Union!8013 (regOne!16539 Regex!8013) (regTwo!16539 Regex!8013)) )
))
(declare-datatypes ((List!31794 0))(
  ( (Nil!31694) (Cons!31694 (h!37114 Regex!8013) (t!227888 List!31794)) )
))
(declare-datatypes ((Context!4462 0))(
  ( (Context!4463 (exprs!2731 List!31794)) )
))
(declare-datatypes ((tuple3!4464 0))(
  ( (tuple3!4465 (_1!18476 Regex!8013) (_2!18476 Context!4462) (_3!2702 C!16184)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31548 0))(
  ( (tuple2!31549 (_1!18477 tuple3!4464) (_2!18477 (InoxSet Context!4462))) )
))
(declare-datatypes ((List!31795 0))(
  ( (Nil!31695) (Cons!31695 (h!37115 tuple2!31548) (t!227889 List!31795)) )
))
(declare-datatypes ((array!12965 0))(
  ( (array!12966 (arr!5785 (Array (_ BitVec 32) (_ BitVec 64))) (size!24466 (_ BitVec 32))) )
))
(declare-datatypes ((array!12967 0))(
  ( (array!12968 (arr!5786 (Array (_ BitVec 32) List!31795)) (size!24467 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7278 0))(
  ( (LongMapFixedSize!7279 (defaultEntry!4024 Int) (mask!9382 (_ BitVec 32)) (extraKeys!3888 (_ BitVec 32)) (zeroValue!3898 List!31795) (minValue!3898 List!31795) (_size!7321 (_ BitVec 32)) (_keys!3939 array!12965) (_values!3920 array!12967) (_vacant!3700 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14365 0))(
  ( (Cell!14366 (v!33314 LongMapFixedSize!7278)) )
))
(declare-datatypes ((MutLongMap!3639 0))(
  ( (LongMap!3639 (underlying!7481 Cell!14365)) (MutLongMapExt!3638 (__x!20549 Int)) )
))
(declare-fun lt!971921 () MutLongMap!3639)

(get-info :version)

(assert (=> b!2747853 (= e!1731632 (and e!1731638 ((_ is LongMap!3639) lt!971921)))))

(declare-datatypes ((Cell!14367 0))(
  ( (Cell!14368 (v!33315 MutLongMap!3639)) )
))
(declare-datatypes ((Hashable!3555 0))(
  ( (HashableExt!3554 (__x!20550 Int)) )
))
(declare-datatypes ((MutableMap!3545 0))(
  ( (MutableMapExt!3544 (__x!20551 Int)) (HashMap!3545 (underlying!7482 Cell!14367) (hashF!5587 Hashable!3555) (_size!7322 (_ BitVec 32)) (defaultValue!3716 Int)) )
))
(declare-datatypes ((CacheDown!2370 0))(
  ( (CacheDown!2371 (cache!3688 MutableMap!3545)) )
))
(declare-fun cacheDown!730 () CacheDown!2370)

(assert (=> b!2747853 (= lt!971921 (v!33315 (underlying!7482 (cache!3688 cacheDown!730))))))

(declare-fun e!1731630 () Bool)

(assert (=> b!2747854 (= e!1731630 (and tp!866487 tp!866489))))

(declare-fun b!2747855 () Bool)

(declare-fun res!1152772 () Bool)

(declare-fun e!1731646 () Bool)

(assert (=> b!2747855 (=> (not res!1152772) (not e!1731646))))

(declare-datatypes ((tuple2!31550 0))(
  ( (tuple2!31551 (_1!18478 Context!4462) (_2!18478 C!16184)) )
))
(declare-datatypes ((tuple2!31552 0))(
  ( (tuple2!31553 (_1!18479 tuple2!31550) (_2!18479 (InoxSet Context!4462))) )
))
(declare-datatypes ((List!31796 0))(
  ( (Nil!31696) (Cons!31696 (h!37116 tuple2!31552) (t!227890 List!31796)) )
))
(declare-datatypes ((array!12969 0))(
  ( (array!12970 (arr!5787 (Array (_ BitVec 32) List!31796)) (size!24468 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7280 0))(
  ( (LongMapFixedSize!7281 (defaultEntry!4025 Int) (mask!9383 (_ BitVec 32)) (extraKeys!3889 (_ BitVec 32)) (zeroValue!3899 List!31796) (minValue!3899 List!31796) (_size!7323 (_ BitVec 32)) (_keys!3940 array!12965) (_values!3921 array!12969) (_vacant!3701 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14369 0))(
  ( (Cell!14370 (v!33316 LongMapFixedSize!7280)) )
))
(declare-datatypes ((Hashable!3556 0))(
  ( (HashableExt!3555 (__x!20552 Int)) )
))
(declare-datatypes ((List!31797 0))(
  ( (Nil!31697) (Cons!31697 (h!37117 C!16184) (t!227891 List!31797)) )
))
(declare-datatypes ((IArray!19807 0))(
  ( (IArray!19808 (innerList!9961 List!31797)) )
))
(declare-datatypes ((Conc!9901 0))(
  ( (Node!9901 (left!24265 Conc!9901) (right!24595 Conc!9901) (csize!20032 Int) (cheight!10112 Int)) (Leaf!15076 (xs!13008 IArray!19807) (csize!20033 Int)) (Empty!9901) )
))
(declare-datatypes ((BalanceConc!19416 0))(
  ( (BalanceConc!19417 (c!444924 Conc!9901)) )
))
(declare-datatypes ((MutLongMap!3640 0))(
  ( (LongMap!3640 (underlying!7483 Cell!14369)) (MutLongMapExt!3639 (__x!20553 Int)) )
))
(declare-datatypes ((Cell!14371 0))(
  ( (Cell!14372 (v!33317 MutLongMap!3640)) )
))
(declare-datatypes ((tuple2!31554 0))(
  ( (tuple2!31555 (_1!18480 BalanceConc!19416) (_2!18480 BalanceConc!19416)) )
))
(declare-datatypes ((MutableMap!3546 0))(
  ( (MutableMapExt!3545 (__x!20554 Int)) (HashMap!3546 (underlying!7484 Cell!14371) (hashF!5588 Hashable!3556) (_size!7324 (_ BitVec 32)) (defaultValue!3717 Int)) )
))
(declare-datatypes ((CacheUp!2252 0))(
  ( (CacheUp!2253 (cache!3689 MutableMap!3546)) )
))
(declare-datatypes ((tuple3!4466 0))(
  ( (tuple3!4467 (_1!18481 tuple2!31554) (_2!18481 CacheUp!2252) (_3!2703 CacheDown!2370)) )
))
(declare-fun lt!971920 () tuple3!4466)

(declare-fun isEmpty!18049 (BalanceConc!19416) Bool)

(assert (=> b!2747855 (= res!1152772 (not (isEmpty!18049 (_1!18480 (_1!18481 lt!971920)))))))

(declare-fun tp!866492 () Bool)

(declare-fun e!1731642 () Bool)

(declare-datatypes ((List!31798 0))(
  ( (Nil!31698) (Cons!31698 (h!37118 (_ BitVec 16)) (t!227892 List!31798)) )
))
(declare-datatypes ((TokenValue!5078 0))(
  ( (FloatLiteralValue!10156 (text!35991 List!31798)) (TokenValueExt!5077 (__x!20555 Int)) (Broken!25390 (value!155966 List!31798)) (Object!5177) (End!5078) (Def!5078) (Underscore!5078) (Match!5078) (Else!5078) (Error!5078) (Case!5078) (If!5078) (Extends!5078) (Abstract!5078) (Class!5078) (Val!5078) (DelimiterValue!10156 (del!5138 List!31798)) (KeywordValue!5084 (value!155967 List!31798)) (CommentValue!10156 (value!155968 List!31798)) (WhitespaceValue!10156 (value!155969 List!31798)) (IndentationValue!5078 (value!155970 List!31798)) (String!35299) (Int32!5078) (Broken!25391 (value!155971 List!31798)) (Boolean!5079) (Unit!45548) (OperatorValue!5081 (op!5138 List!31798)) (IdentifierValue!10156 (value!155972 List!31798)) (IdentifierValue!10157 (value!155973 List!31798)) (WhitespaceValue!10157 (value!155974 List!31798)) (True!10156) (False!10156) (Broken!25392 (value!155975 List!31798)) (Broken!25393 (value!155976 List!31798)) (True!10157) (RightBrace!5078) (RightBracket!5078) (Colon!5078) (Null!5078) (Comma!5078) (LeftBracket!5078) (False!10157) (LeftBrace!5078) (ImaginaryLiteralValue!5078 (text!35992 List!31798)) (StringLiteralValue!15234 (value!155977 List!31798)) (EOFValue!5078 (value!155978 List!31798)) (IdentValue!5078 (value!155979 List!31798)) (DelimiterValue!10157 (value!155980 List!31798)) (DedentValue!5078 (value!155981 List!31798)) (NewLineValue!5078 (value!155982 List!31798)) (IntegerValue!15234 (value!155983 (_ BitVec 32)) (text!35993 List!31798)) (IntegerValue!15235 (value!155984 Int) (text!35994 List!31798)) (Times!5078) (Or!5078) (Equal!5078) (Minus!5078) (Broken!25394 (value!155985 List!31798)) (And!5078) (Div!5078) (LessEqual!5078) (Mod!5078) (Concat!13092) (Not!5078) (Plus!5078) (SpaceValue!5078 (value!155986 List!31798)) (IntegerValue!15236 (value!155987 Int) (text!35995 List!31798)) (StringLiteralValue!15235 (text!35996 List!31798)) (FloatLiteralValue!10157 (text!35997 List!31798)) (BytesLiteralValue!5078 (value!155988 List!31798)) (CommentValue!10157 (value!155989 List!31798)) (StringLiteralValue!15236 (value!155990 List!31798)) (ErrorTokenValue!5078 (msg!5139 List!31798)) )
))
(declare-datatypes ((TokenValueInjection!9596 0))(
  ( (TokenValueInjection!9597 (toValue!6854 Int) (toChars!6713 Int)) )
))
(declare-datatypes ((String!35300 0))(
  ( (String!35301 (value!155991 String)) )
))
(declare-datatypes ((Rule!9512 0))(
  ( (Rule!9513 (regex!4856 Regex!8013) (tag!5360 String!35300) (isSeparator!4856 Bool) (transformation!4856 TokenValueInjection!9596)) )
))
(declare-fun rule!196 () Rule!9512)

(declare-fun b!2747856 () Bool)

(declare-fun inv!43052 (String!35300) Bool)

(declare-fun inv!43054 (TokenValueInjection!9596) Bool)

(assert (=> b!2747856 (= e!1731642 (and tp!866492 (inv!43052 (tag!5360 rule!196)) (inv!43054 (transformation!4856 rule!196)) e!1731630))))

(declare-fun b!2747857 () Bool)

(declare-fun e!1731641 () Bool)

(declare-fun e!1731644 () Bool)

(declare-fun lt!971922 () MutLongMap!3640)

(assert (=> b!2747857 (= e!1731641 (and e!1731644 ((_ is LongMap!3640) lt!971922)))))

(declare-fun cacheUp!717 () CacheUp!2252)

(assert (=> b!2747857 (= lt!971922 (v!33317 (underlying!7484 (cache!3689 cacheUp!717))))))

(declare-fun e!1731633 () Bool)

(assert (=> b!2747858 (= e!1731633 (and e!1731632 tp!866486))))

(declare-fun b!2747859 () Bool)

(declare-fun e!1731640 () Bool)

(declare-fun e!1731643 () Bool)

(assert (=> b!2747859 (= e!1731640 e!1731643)))

(declare-fun b!2747860 () Bool)

(declare-fun e!1731636 () Bool)

(assert (=> b!2747860 (= e!1731638 e!1731636)))

(declare-fun b!2747861 () Bool)

(declare-fun e!1731647 () Bool)

(declare-fun input!1561 () BalanceConc!19416)

(declare-fun tp!866481 () Bool)

(declare-fun inv!43055 (Conc!9901) Bool)

(assert (=> b!2747861 (= e!1731647 (and (inv!43055 (c!444924 input!1561)) tp!866481))))

(assert (=> b!2747862 (= e!1731628 (and e!1731641 tp!866485))))

(declare-fun b!2747863 () Bool)

(declare-fun e!1731627 () Bool)

(declare-fun tp!866493 () Bool)

(declare-fun mapRes!16604 () Bool)

(assert (=> b!2747863 (= e!1731627 (and tp!866493 mapRes!16604))))

(declare-fun condMapEmpty!16604 () Bool)

(declare-fun mapDefault!16604 () List!31796)

(assert (=> b!2747863 (= condMapEmpty!16604 (= (arr!5787 (_values!3921 (v!33316 (underlying!7483 (v!33317 (underlying!7484 (cache!3689 cacheUp!717))))))) ((as const (Array (_ BitVec 32) List!31796)) mapDefault!16604)))))

(declare-fun b!2747864 () Bool)

(declare-fun e!1731645 () Bool)

(declare-fun tp!866477 () Bool)

(assert (=> b!2747864 (= e!1731645 (and tp!866477 mapRes!16603))))

(declare-fun condMapEmpty!16603 () Bool)

(declare-fun mapDefault!16603 () List!31795)

(assert (=> b!2747864 (= condMapEmpty!16603 (= (arr!5786 (_values!3920 (v!33314 (underlying!7481 (v!33315 (underlying!7482 (cache!3688 cacheDown!730))))))) ((as const (Array (_ BitVec 32) List!31795)) mapDefault!16603)))))

(declare-fun b!2747865 () Bool)

(declare-fun res!1152777 () Bool)

(declare-fun e!1731634 () Bool)

(assert (=> b!2747865 (=> (not res!1152777) (not e!1731634))))

(declare-fun valid!2822 (CacheUp!2252) Bool)

(assert (=> b!2747865 (= res!1152777 (valid!2822 cacheUp!717))))

(declare-fun b!2747866 () Bool)

(assert (=> b!2747866 (= e!1731634 e!1731646)))

(declare-fun res!1152775 () Bool)

(assert (=> b!2747866 (=> (not res!1152775) (not e!1731646))))

(declare-fun findLongestMatchWithZipperSequence!191 (Regex!8013 BalanceConc!19416) tuple2!31554)

(assert (=> b!2747866 (= res!1152775 (= (_1!18481 lt!971920) (findLongestMatchWithZipperSequence!191 (regex!4856 rule!196) input!1561)))))

(declare-fun findLongestMatchWithZipperSequenceMem!12 (Regex!8013 BalanceConc!19416 CacheUp!2252 CacheDown!2370) tuple3!4466)

(assert (=> b!2747866 (= lt!971920 (findLongestMatchWithZipperSequenceMem!12 (regex!4856 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(declare-fun b!2747867 () Bool)

(declare-fun res!1152773 () Bool)

(assert (=> b!2747867 (=> (not res!1152773) (not e!1731634))))

(declare-fun valid!2823 (CacheDown!2370) Bool)

(assert (=> b!2747867 (= res!1152773 (valid!2823 cacheDown!730))))

(declare-fun mapIsEmpty!16604 () Bool)

(assert (=> mapIsEmpty!16604 mapRes!16604))

(declare-fun b!2747868 () Bool)

(declare-fun e!1731637 () Bool)

(assert (=> b!2747868 (= e!1731637 e!1731633)))

(declare-fun b!2747869 () Bool)

(declare-fun res!1152776 () Bool)

(assert (=> b!2747869 (=> (not res!1152776) (not e!1731634))))

(declare-datatypes ((LexerInterface!4449 0))(
  ( (LexerInterfaceExt!4446 (__x!20556 Int)) (Lexer!4447) )
))
(declare-fun thiss!16130 () LexerInterface!4449)

(declare-fun ruleValid!1596 (LexerInterface!4449 Rule!9512) Bool)

(assert (=> b!2747869 (= res!1152776 (ruleValid!1596 thiss!16130 rule!196))))

(declare-fun tp!866491 () Bool)

(declare-fun tp!866483 () Bool)

(declare-fun array_inv!4136 (array!12965) Bool)

(declare-fun array_inv!4137 (array!12969) Bool)

(assert (=> b!2747870 (= e!1731643 (and tp!866482 tp!866491 tp!866483 (array_inv!4136 (_keys!3940 (v!33316 (underlying!7483 (v!33317 (underlying!7484 (cache!3689 cacheUp!717))))))) (array_inv!4137 (_values!3921 (v!33316 (underlying!7483 (v!33317 (underlying!7484 (cache!3689 cacheUp!717))))))) e!1731627))))

(declare-fun mapNonEmpty!16603 () Bool)

(declare-fun tp!866490 () Bool)

(declare-fun tp!866484 () Bool)

(assert (=> mapNonEmpty!16603 (= mapRes!16604 (and tp!866490 tp!866484))))

(declare-fun mapValue!16603 () List!31796)

(declare-fun mapKey!16604 () (_ BitVec 32))

(declare-fun mapRest!16603 () (Array (_ BitVec 32) List!31796))

(assert (=> mapNonEmpty!16603 (= (arr!5787 (_values!3921 (v!33316 (underlying!7483 (v!33317 (underlying!7484 (cache!3689 cacheUp!717))))))) (store mapRest!16603 mapKey!16604 mapValue!16603))))

(declare-fun res!1152774 () Bool)

(assert (=> start!266386 (=> (not res!1152774) (not e!1731634))))

(assert (=> start!266386 (= res!1152774 ((_ is Lexer!4447) thiss!16130))))

(assert (=> start!266386 e!1731634))

(declare-fun inv!43056 (BalanceConc!19416) Bool)

(assert (=> start!266386 (and (inv!43056 input!1561) e!1731647)))

(declare-fun inv!43057 (CacheUp!2252) Bool)

(assert (=> start!266386 (and (inv!43057 cacheUp!717) e!1731626)))

(assert (=> start!266386 true))

(declare-fun inv!43058 (CacheDown!2370) Bool)

(assert (=> start!266386 (and (inv!43058 cacheDown!730) e!1731637)))

(assert (=> start!266386 e!1731642))

(declare-fun b!2747871 () Bool)

(assert (=> b!2747871 (= e!1731646 false)))

(declare-fun lt!971923 () List!31797)

(declare-fun list!12004 (BalanceConc!19416) List!31797)

(assert (=> b!2747871 (= lt!971923 (list!12004 input!1561))))

(declare-fun mapNonEmpty!16604 () Bool)

(declare-fun tp!866480 () Bool)

(declare-fun tp!866479 () Bool)

(assert (=> mapNonEmpty!16604 (= mapRes!16603 (and tp!866480 tp!866479))))

(declare-fun mapRest!16604 () (Array (_ BitVec 32) List!31795))

(declare-fun mapValue!16604 () List!31795)

(declare-fun mapKey!16603 () (_ BitVec 32))

(assert (=> mapNonEmpty!16604 (= (arr!5786 (_values!3920 (v!33314 (underlying!7481 (v!33315 (underlying!7482 (cache!3688 cacheDown!730))))))) (store mapRest!16604 mapKey!16603 mapValue!16604))))

(declare-fun b!2747872 () Bool)

(assert (=> b!2747872 (= e!1731644 e!1731640)))

(declare-fun tp!866488 () Bool)

(declare-fun e!1731635 () Bool)

(declare-fun tp!866476 () Bool)

(declare-fun array_inv!4138 (array!12967) Bool)

(assert (=> b!2747873 (= e!1731635 (and tp!866478 tp!866476 tp!866488 (array_inv!4136 (_keys!3939 (v!33314 (underlying!7481 (v!33315 (underlying!7482 (cache!3688 cacheDown!730))))))) (array_inv!4138 (_values!3920 (v!33314 (underlying!7481 (v!33315 (underlying!7482 (cache!3688 cacheDown!730))))))) e!1731645))))

(declare-fun b!2747874 () Bool)

(assert (=> b!2747874 (= e!1731636 e!1731635)))

(assert (= (and start!266386 res!1152774) b!2747869))

(assert (= (and b!2747869 res!1152776) b!2747865))

(assert (= (and b!2747865 res!1152777) b!2747867))

(assert (= (and b!2747867 res!1152773) b!2747866))

(assert (= (and b!2747866 res!1152775) b!2747855))

(assert (= (and b!2747855 res!1152772) b!2747871))

(assert (= start!266386 b!2747861))

(assert (= (and b!2747863 condMapEmpty!16604) mapIsEmpty!16604))

(assert (= (and b!2747863 (not condMapEmpty!16604)) mapNonEmpty!16603))

(assert (= b!2747870 b!2747863))

(assert (= b!2747859 b!2747870))

(assert (= b!2747872 b!2747859))

(assert (= (and b!2747857 ((_ is LongMap!3640) (v!33317 (underlying!7484 (cache!3689 cacheUp!717))))) b!2747872))

(assert (= b!2747862 b!2747857))

(assert (= (and b!2747852 ((_ is HashMap!3546) (cache!3689 cacheUp!717))) b!2747862))

(assert (= start!266386 b!2747852))

(assert (= (and b!2747864 condMapEmpty!16603) mapIsEmpty!16603))

(assert (= (and b!2747864 (not condMapEmpty!16603)) mapNonEmpty!16604))

(assert (= b!2747873 b!2747864))

(assert (= b!2747874 b!2747873))

(assert (= b!2747860 b!2747874))

(assert (= (and b!2747853 ((_ is LongMap!3639) (v!33315 (underlying!7482 (cache!3688 cacheDown!730))))) b!2747860))

(assert (= b!2747858 b!2747853))

(assert (= (and b!2747868 ((_ is HashMap!3545) (cache!3688 cacheDown!730))) b!2747858))

(assert (= start!266386 b!2747868))

(assert (= b!2747856 b!2747854))

(assert (= start!266386 b!2747856))

(declare-fun m!3163727 () Bool)

(assert (=> b!2747873 m!3163727))

(declare-fun m!3163729 () Bool)

(assert (=> b!2747873 m!3163729))

(declare-fun m!3163731 () Bool)

(assert (=> b!2747870 m!3163731))

(declare-fun m!3163733 () Bool)

(assert (=> b!2747870 m!3163733))

(declare-fun m!3163735 () Bool)

(assert (=> b!2747861 m!3163735))

(declare-fun m!3163737 () Bool)

(assert (=> mapNonEmpty!16604 m!3163737))

(declare-fun m!3163739 () Bool)

(assert (=> start!266386 m!3163739))

(declare-fun m!3163741 () Bool)

(assert (=> start!266386 m!3163741))

(declare-fun m!3163743 () Bool)

(assert (=> start!266386 m!3163743))

(declare-fun m!3163745 () Bool)

(assert (=> b!2747869 m!3163745))

(declare-fun m!3163747 () Bool)

(assert (=> b!2747865 m!3163747))

(declare-fun m!3163749 () Bool)

(assert (=> b!2747855 m!3163749))

(declare-fun m!3163751 () Bool)

(assert (=> mapNonEmpty!16603 m!3163751))

(declare-fun m!3163753 () Bool)

(assert (=> b!2747856 m!3163753))

(declare-fun m!3163755 () Bool)

(assert (=> b!2747856 m!3163755))

(declare-fun m!3163757 () Bool)

(assert (=> b!2747867 m!3163757))

(declare-fun m!3163759 () Bool)

(assert (=> b!2747866 m!3163759))

(declare-fun m!3163761 () Bool)

(assert (=> b!2747866 m!3163761))

(declare-fun m!3163763 () Bool)

(assert (=> b!2747871 m!3163763))

(check-sat (not b_next!78235) (not b!2747865) (not b!2747871) (not mapNonEmpty!16603) (not b!2747869) b_and!202261 b_and!202253 (not b!2747855) b_and!202259 (not b_next!78237) b_and!202257 (not start!266386) (not b!2747873) (not b!2747867) (not b!2747870) (not b!2747866) (not mapNonEmpty!16604) (not b!2747861) (not b!2747864) (not b!2747863) b_and!202263 (not b_next!78243) (not b_next!78239) (not b_next!78241) (not b!2747856) b_and!202255 (not b_next!78233))
(check-sat (not b_next!78235) b_and!202261 b_and!202253 b_and!202259 (not b_next!78237) b_and!202257 b_and!202263 (not b_next!78241) (not b_next!78243) (not b_next!78239) b_and!202255 (not b_next!78233))
