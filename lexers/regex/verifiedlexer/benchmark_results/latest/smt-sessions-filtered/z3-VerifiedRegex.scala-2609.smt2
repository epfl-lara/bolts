; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139554 () Bool)

(assert start!139554)

(declare-fun b!1485954 () Bool)

(declare-fun b_free!38631 () Bool)

(declare-fun b_next!39335 () Bool)

(assert (=> b!1485954 (= b_free!38631 (not b_next!39335))))

(declare-fun tp!422725 () Bool)

(declare-fun b_and!103349 () Bool)

(assert (=> b!1485954 (= tp!422725 b_and!103349)))

(declare-fun b!1485995 () Bool)

(declare-fun b_free!38633 () Bool)

(declare-fun b_next!39337 () Bool)

(assert (=> b!1485995 (= b_free!38633 (not b_next!39337))))

(declare-fun tp!422737 () Bool)

(declare-fun b_and!103351 () Bool)

(assert (=> b!1485995 (= tp!422737 b_and!103351)))

(declare-fun b!1485989 () Bool)

(declare-fun b_free!38635 () Bool)

(declare-fun b_next!39339 () Bool)

(assert (=> b!1485989 (= b_free!38635 (not b_next!39339))))

(declare-fun tp!422748 () Bool)

(declare-fun b_and!103353 () Bool)

(assert (=> b!1485989 (= tp!422748 b_and!103353)))

(declare-fun b!1485976 () Bool)

(declare-fun b_free!38637 () Bool)

(declare-fun b_next!39341 () Bool)

(assert (=> b!1485976 (= b_free!38637 (not b_next!39341))))

(declare-fun tp!422747 () Bool)

(declare-fun b_and!103355 () Bool)

(assert (=> b!1485976 (= tp!422747 b_and!103355)))

(declare-fun b!1485957 () Bool)

(declare-fun b_free!38639 () Bool)

(declare-fun b_next!39343 () Bool)

(assert (=> b!1485957 (= b_free!38639 (not b_next!39343))))

(declare-fun tp!422734 () Bool)

(declare-fun b_and!103357 () Bool)

(assert (=> b!1485957 (= tp!422734 b_and!103357)))

(declare-fun b!1485987 () Bool)

(declare-fun b_free!38641 () Bool)

(declare-fun b_next!39345 () Bool)

(assert (=> b!1485987 (= b_free!38641 (not b_next!39345))))

(declare-fun tp!422736 () Bool)

(declare-fun b_and!103359 () Bool)

(assert (=> b!1485987 (= tp!422736 b_and!103359)))

(declare-fun b!1486000 () Bool)

(declare-fun b_free!38643 () Bool)

(declare-fun b_next!39347 () Bool)

(assert (=> b!1486000 (= b_free!38643 (not b_next!39347))))

(declare-fun tp!422739 () Bool)

(declare-fun b_and!103361 () Bool)

(assert (=> b!1486000 (= tp!422739 b_and!103361)))

(declare-fun b_free!38645 () Bool)

(declare-fun b_next!39349 () Bool)

(assert (=> b!1486000 (= b_free!38645 (not b_next!39349))))

(declare-fun tp!422733 () Bool)

(declare-fun b_and!103363 () Bool)

(assert (=> b!1486000 (= tp!422733 b_and!103363)))

(declare-fun b!1485952 () Bool)

(declare-fun res!670941 () Bool)

(declare-fun e!950678 () Bool)

(assert (=> b!1485952 (=> (not res!670941) (not e!950678))))

(declare-datatypes ((C!8436 0))(
  ( (C!8437 (val!4790 Int)) )
))
(declare-datatypes ((Regex!4129 0))(
  ( (ElementMatch!4129 (c!243309 C!8436)) (Concat!7033 (regOne!8770 Regex!4129) (regTwo!8770 Regex!4129)) (EmptyExpr!4129) (Star!4129 (reg!4458 Regex!4129)) (EmptyLang!4129) (Union!4129 (regOne!8771 Regex!4129) (regTwo!8771 Regex!4129)) )
))
(declare-datatypes ((List!15885 0))(
  ( (Nil!15817) (Cons!15817 (h!21218 Regex!4129) (t!137807 List!15885)) )
))
(declare-datatypes ((Context!1294 0))(
  ( (Context!1295 (exprs!1147 List!15885)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1246 0))(
  ( (tuple3!1247 (_1!8175 (InoxSet Context!1294)) (_2!8175 Int) (_3!920 Int)) )
))
(declare-datatypes ((tuple2!14510 0))(
  ( (tuple2!14511 (_1!8176 tuple3!1246) (_2!8176 Int)) )
))
(declare-datatypes ((List!15886 0))(
  ( (Nil!15818) (Cons!15818 (h!21219 tuple2!14510) (t!137808 List!15886)) )
))
(declare-datatypes ((array!4914 0))(
  ( (array!4915 (arr!2196 (Array (_ BitVec 32) List!15886)) (size!12796 (_ BitVec 32))) )
))
(declare-datatypes ((array!4916 0))(
  ( (array!4917 (arr!2197 (Array (_ BitVec 32) (_ BitVec 64))) (size!12797 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2784 0))(
  ( (LongMapFixedSize!2785 (defaultEntry!1752 Int) (mask!4545 (_ BitVec 32)) (extraKeys!1639 (_ BitVec 32)) (zeroValue!1649 List!15886) (minValue!1649 List!15886) (_size!2865 (_ BitVec 32)) (_keys!1686 array!4916) (_values!1671 array!4914) (_vacant!1453 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5453 0))(
  ( (Cell!5454 (v!22642 LongMapFixedSize!2784)) )
))
(declare-datatypes ((MutLongMap!1392 0))(
  ( (LongMap!1392 (underlying!2993 Cell!5453)) (MutLongMapExt!1391 (__x!9721 Int)) )
))
(declare-datatypes ((Cell!5455 0))(
  ( (Cell!5456 (v!22643 MutLongMap!1392)) )
))
(declare-datatypes ((Hashable!1336 0))(
  ( (HashableExt!1335 (__x!9722 Int)) )
))
(declare-datatypes ((MutableMap!1336 0))(
  ( (MutableMapExt!1335 (__x!9723 Int)) (HashMap!1336 (underlying!2994 Cell!5455) (hashF!3255 Hashable!1336) (_size!2866 (_ BitVec 32)) (defaultValue!1496 Int)) )
))
(declare-datatypes ((List!15887 0))(
  ( (Nil!15819) (Cons!15819 (h!21220 C!8436) (t!137809 List!15887)) )
))
(declare-datatypes ((IArray!10765 0))(
  ( (IArray!10766 (innerList!5440 List!15887)) )
))
(declare-datatypes ((Conc!5380 0))(
  ( (Node!5380 (left!13281 Conc!5380) (right!13611 Conc!5380) (csize!10990 Int) (cheight!5591 Int)) (Leaf!7990 (xs!8137 IArray!10765) (csize!10991 Int)) (Empty!5380) )
))
(declare-datatypes ((BalanceConc!10702 0))(
  ( (BalanceConc!10703 (c!243310 Conc!5380)) )
))
(declare-datatypes ((CacheFurthestNullable!216 0))(
  ( (CacheFurthestNullable!217 (cache!1717 MutableMap!1336) (totalInput!2243 BalanceConc!10702)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!216)

(declare-fun valid!1093 (CacheFurthestNullable!216) Bool)

(assert (=> b!1485952 (= res!670941 (valid!1093 cacheFurthestNullable!64))))

(declare-fun b!1485953 () Bool)

(declare-fun e!950671 () Bool)

(declare-datatypes ((List!15888 0))(
  ( (Nil!15820) (Cons!15820 (h!21221 (_ BitVec 16)) (t!137810 List!15888)) )
))
(declare-datatypes ((TokenValue!2904 0))(
  ( (FloatLiteralValue!5808 (text!20773 List!15888)) (TokenValueExt!2903 (__x!9724 Int)) (Broken!14520 (value!89833 List!15888)) (Object!2971) (End!2904) (Def!2904) (Underscore!2904) (Match!2904) (Else!2904) (Error!2904) (Case!2904) (If!2904) (Extends!2904) (Abstract!2904) (Class!2904) (Val!2904) (DelimiterValue!5808 (del!2964 List!15888)) (KeywordValue!2910 (value!89834 List!15888)) (CommentValue!5808 (value!89835 List!15888)) (WhitespaceValue!5808 (value!89836 List!15888)) (IndentationValue!2904 (value!89837 List!15888)) (String!18781) (Int32!2904) (Broken!14521 (value!89838 List!15888)) (Boolean!2905) (Unit!25634) (OperatorValue!2907 (op!2964 List!15888)) (IdentifierValue!5808 (value!89839 List!15888)) (IdentifierValue!5809 (value!89840 List!15888)) (WhitespaceValue!5809 (value!89841 List!15888)) (True!5808) (False!5808) (Broken!14522 (value!89842 List!15888)) (Broken!14523 (value!89843 List!15888)) (True!5809) (RightBrace!2904) (RightBracket!2904) (Colon!2904) (Null!2904) (Comma!2904) (LeftBracket!2904) (False!5809) (LeftBrace!2904) (ImaginaryLiteralValue!2904 (text!20774 List!15888)) (StringLiteralValue!8712 (value!89844 List!15888)) (EOFValue!2904 (value!89845 List!15888)) (IdentValue!2904 (value!89846 List!15888)) (DelimiterValue!5809 (value!89847 List!15888)) (DedentValue!2904 (value!89848 List!15888)) (NewLineValue!2904 (value!89849 List!15888)) (IntegerValue!8712 (value!89850 (_ BitVec 32)) (text!20775 List!15888)) (IntegerValue!8713 (value!89851 Int) (text!20776 List!15888)) (Times!2904) (Or!2904) (Equal!2904) (Minus!2904) (Broken!14524 (value!89852 List!15888)) (And!2904) (Div!2904) (LessEqual!2904) (Mod!2904) (Concat!7034) (Not!2904) (Plus!2904) (SpaceValue!2904 (value!89853 List!15888)) (IntegerValue!8714 (value!89854 Int) (text!20777 List!15888)) (StringLiteralValue!8713 (text!20778 List!15888)) (FloatLiteralValue!5809 (text!20779 List!15888)) (BytesLiteralValue!2904 (value!89855 List!15888)) (CommentValue!5809 (value!89856 List!15888)) (StringLiteralValue!8714 (value!89857 List!15888)) (ErrorTokenValue!2904 (msg!2965 List!15888)) )
))
(declare-datatypes ((String!18782 0))(
  ( (String!18783 (value!89858 String)) )
))
(declare-datatypes ((TokenValueInjection!5468 0))(
  ( (TokenValueInjection!5469 (toValue!4155 Int) (toChars!4014 Int)) )
))
(declare-datatypes ((Rule!5428 0))(
  ( (Rule!5429 (regex!2814 Regex!4129) (tag!3078 String!18782) (isSeparator!2814 Bool) (transformation!2814 TokenValueInjection!5468)) )
))
(declare-datatypes ((Token!5290 0))(
  ( (Token!5291 (value!89859 TokenValue!2904) (rule!4591 Rule!5428) (size!12798 Int) (originalCharacters!3676 List!15887)) )
))
(declare-datatypes ((List!15889 0))(
  ( (Nil!15821) (Cons!15821 (h!21222 Token!5290) (t!137811 List!15889)) )
))
(declare-datatypes ((IArray!10767 0))(
  ( (IArray!10768 (innerList!5441 List!15889)) )
))
(declare-datatypes ((Conc!5381 0))(
  ( (Node!5381 (left!13282 Conc!5381) (right!13612 Conc!5381) (csize!10992 Int) (cheight!5592 Int)) (Leaf!7991 (xs!8138 IArray!10767) (csize!10993 Int)) (Empty!5381) )
))
(declare-datatypes ((BalanceConc!10704 0))(
  ( (BalanceConc!10705 (c!243311 Conc!5381)) )
))
(declare-fun acc!392 () BalanceConc!10704)

(declare-fun tp!422741 () Bool)

(declare-fun inv!21030 (Conc!5381) Bool)

(assert (=> b!1485953 (= e!950671 (and (inv!21030 (c!243311 acc!392)) tp!422741))))

(declare-fun e!950663 () Bool)

(declare-datatypes ((tuple3!1248 0))(
  ( (tuple3!1249 (_1!8177 Regex!4129) (_2!8177 Context!1294) (_3!921 C!8436)) )
))
(declare-datatypes ((tuple2!14512 0))(
  ( (tuple2!14513 (_1!8178 tuple3!1248) (_2!8178 (InoxSet Context!1294))) )
))
(declare-datatypes ((List!15890 0))(
  ( (Nil!15822) (Cons!15822 (h!21223 tuple2!14512) (t!137812 List!15890)) )
))
(declare-datatypes ((array!4918 0))(
  ( (array!4919 (arr!2198 (Array (_ BitVec 32) List!15890)) (size!12799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2786 0))(
  ( (LongMapFixedSize!2787 (defaultEntry!1753 Int) (mask!4546 (_ BitVec 32)) (extraKeys!1640 (_ BitVec 32)) (zeroValue!1650 List!15890) (minValue!1650 List!15890) (_size!2867 (_ BitVec 32)) (_keys!1687 array!4916) (_values!1672 array!4918) (_vacant!1454 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5457 0))(
  ( (Cell!5458 (v!22644 LongMapFixedSize!2786)) )
))
(declare-datatypes ((MutLongMap!1393 0))(
  ( (LongMap!1393 (underlying!2995 Cell!5457)) (MutLongMapExt!1392 (__x!9725 Int)) )
))
(declare-datatypes ((Cell!5459 0))(
  ( (Cell!5460 (v!22645 MutLongMap!1393)) )
))
(declare-datatypes ((Hashable!1337 0))(
  ( (HashableExt!1336 (__x!9726 Int)) )
))
(declare-datatypes ((MutableMap!1337 0))(
  ( (MutableMapExt!1336 (__x!9727 Int)) (HashMap!1337 (underlying!2996 Cell!5459) (hashF!3256 Hashable!1337) (_size!2868 (_ BitVec 32)) (defaultValue!1497 Int)) )
))
(declare-datatypes ((CacheDown!794 0))(
  ( (CacheDown!795 (cache!1718 MutableMap!1337)) )
))
(declare-fun cacheDown!629 () CacheDown!794)

(declare-fun tp!422727 () Bool)

(declare-fun tp!422745 () Bool)

(declare-fun e!950668 () Bool)

(declare-fun array_inv!1595 (array!4916) Bool)

(declare-fun array_inv!1596 (array!4918) Bool)

(assert (=> b!1485954 (= e!950668 (and tp!422725 tp!422745 tp!422727 (array_inv!1595 (_keys!1687 (v!22644 (underlying!2995 (v!22645 (underlying!2996 (cache!1718 cacheDown!629))))))) (array_inv!1596 (_values!1672 (v!22644 (underlying!2995 (v!22645 (underlying!2996 (cache!1718 cacheDown!629))))))) e!950663))))

(declare-fun b!1485955 () Bool)

(declare-fun e!950665 () Bool)

(declare-fun e!950697 () Bool)

(declare-fun tp!422721 () Bool)

(assert (=> b!1485955 (= e!950665 (and e!950697 tp!422721))))

(declare-fun b!1485956 () Bool)

(declare-fun e!950703 () Bool)

(declare-fun totalInput!458 () BalanceConc!10702)

(declare-fun tp!422720 () Bool)

(declare-fun inv!21031 (Conc!5380) Bool)

(assert (=> b!1485956 (= e!950703 (and (inv!21031 (c!243310 totalInput!458)) tp!422720))))

(declare-fun mapIsEmpty!6618 () Bool)

(declare-fun mapRes!6620 () Bool)

(assert (=> mapIsEmpty!6618 mapRes!6620))

(declare-fun e!950688 () Bool)

(declare-fun e!950701 () Bool)

(assert (=> b!1485957 (= e!950688 (and e!950701 tp!422734))))

(declare-fun b!1485958 () Bool)

(declare-fun e!950698 () Bool)

(declare-fun tp!422749 () Bool)

(assert (=> b!1485958 (= e!950698 (and tp!422749 mapRes!6620))))

(declare-fun condMapEmpty!6618 () Bool)

(declare-fun mapDefault!6619 () List!15886)

(assert (=> b!1485958 (= condMapEmpty!6618 (= (arr!2196 (_values!1671 (v!22642 (underlying!2993 (v!22643 (underlying!2994 (cache!1717 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15886)) mapDefault!6619)))))

(declare-fun b!1485959 () Bool)

(declare-fun res!670933 () Bool)

(declare-fun e!950685 () Bool)

(assert (=> b!1485959 (=> (not res!670933) (not e!950685))))

(declare-datatypes ((tuple2!14514 0))(
  ( (tuple2!14515 (_1!8179 BalanceConc!10704) (_2!8179 BalanceConc!10702)) )
))
(declare-fun lt!516264 () tuple2!14514)

(declare-fun isEmpty!9851 (List!15887) Bool)

(declare-fun list!6272 (BalanceConc!10702) List!15887)

(assert (=> b!1485959 (= res!670933 (isEmpty!9851 (list!6272 (_2!8179 lt!516264))))))

(declare-fun b!1485960 () Bool)

(declare-fun res!670942 () Bool)

(assert (=> b!1485960 (=> (not res!670942) (not e!950678))))

(declare-fun valid!1094 (CacheDown!794) Bool)

(assert (=> b!1485960 (= res!670942 (valid!1094 cacheDown!629))))

(declare-fun b!1485961 () Bool)

(declare-fun e!950669 () tuple2!14514)

(declare-fun lt!516278 () tuple2!14514)

(declare-datatypes ((tuple2!14516 0))(
  ( (tuple2!14517 (_1!8180 Token!5290) (_2!8180 BalanceConc!10702)) )
))
(declare-datatypes ((Option!2896 0))(
  ( (None!2895) (Some!2895 (v!22646 tuple2!14516)) )
))
(declare-fun lt!516275 () Option!2896)

(declare-fun prepend!438 (BalanceConc!10704 Token!5290) BalanceConc!10704)

(assert (=> b!1485961 (= e!950669 (tuple2!14515 (prepend!438 (_1!8179 lt!516278) (_1!8180 (v!22646 lt!516275))) (_2!8179 lt!516278)))))

(declare-datatypes ((LexerInterface!2470 0))(
  ( (LexerInterfaceExt!2467 (__x!9728 Int)) (Lexer!2468) )
))
(declare-fun thiss!13241 () LexerInterface!2470)

(declare-datatypes ((List!15891 0))(
  ( (Nil!15823) (Cons!15823 (h!21224 Rule!5428) (t!137813 List!15891)) )
))
(declare-fun rules!1640 () List!15891)

(declare-fun lexRec!307 (LexerInterface!2470 List!15891 BalanceConc!10702) tuple2!14514)

(assert (=> b!1485961 (= lt!516278 (lexRec!307 thiss!13241 rules!1640 (_2!8180 (v!22646 lt!516275))))))

(declare-fun b!1485962 () Bool)

(declare-fun res!670939 () Bool)

(assert (=> b!1485962 (=> (not res!670939) (not e!950678))))

(declare-datatypes ((tuple2!14518 0))(
  ( (tuple2!14519 (_1!8181 Context!1294) (_2!8181 C!8436)) )
))
(declare-datatypes ((tuple2!14520 0))(
  ( (tuple2!14521 (_1!8182 tuple2!14518) (_2!8182 (InoxSet Context!1294))) )
))
(declare-datatypes ((List!15892 0))(
  ( (Nil!15824) (Cons!15824 (h!21225 tuple2!14520) (t!137814 List!15892)) )
))
(declare-datatypes ((array!4920 0))(
  ( (array!4921 (arr!2199 (Array (_ BitVec 32) List!15892)) (size!12800 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2788 0))(
  ( (LongMapFixedSize!2789 (defaultEntry!1754 Int) (mask!4547 (_ BitVec 32)) (extraKeys!1641 (_ BitVec 32)) (zeroValue!1651 List!15892) (minValue!1651 List!15892) (_size!2869 (_ BitVec 32)) (_keys!1688 array!4916) (_values!1673 array!4920) (_vacant!1455 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1338 0))(
  ( (HashableExt!1337 (__x!9729 Int)) )
))
(declare-datatypes ((Cell!5461 0))(
  ( (Cell!5462 (v!22647 LongMapFixedSize!2788)) )
))
(declare-datatypes ((MutLongMap!1394 0))(
  ( (LongMap!1394 (underlying!2997 Cell!5461)) (MutLongMapExt!1393 (__x!9730 Int)) )
))
(declare-datatypes ((Cell!5463 0))(
  ( (Cell!5464 (v!22648 MutLongMap!1394)) )
))
(declare-datatypes ((MutableMap!1338 0))(
  ( (MutableMapExt!1337 (__x!9731 Int)) (HashMap!1338 (underlying!2998 Cell!5463) (hashF!3257 Hashable!1338) (_size!2870 (_ BitVec 32)) (defaultValue!1498 Int)) )
))
(declare-datatypes ((CacheUp!790 0))(
  ( (CacheUp!791 (cache!1719 MutableMap!1338)) )
))
(declare-fun cacheUp!616 () CacheUp!790)

(declare-fun valid!1095 (CacheUp!790) Bool)

(assert (=> b!1485962 (= res!670939 (valid!1095 cacheUp!616))))

(declare-fun b!1485963 () Bool)

(declare-fun e!950670 () Bool)

(declare-fun e!950674 () Bool)

(assert (=> b!1485963 (= e!950670 e!950674)))

(declare-fun b!1485964 () Bool)

(declare-fun e!950681 () Bool)

(assert (=> b!1485964 (= e!950681 true)))

(declare-fun lt!516261 () Bool)

(declare-datatypes ((tuple4!594 0))(
  ( (tuple4!595 (_1!8183 Option!2896) (_2!8183 CacheUp!790) (_3!922 CacheDown!794) (_4!297 CacheFurthestNullable!216)) )
))
(declare-fun lt!516260 () tuple4!594)

(assert (=> b!1485964 (= lt!516261 (valid!1094 (_3!922 lt!516260)))))

(declare-fun b!1485965 () Bool)

(declare-fun res!670935 () Bool)

(assert (=> b!1485965 (=> (not res!670935) (not e!950678))))

(assert (=> b!1485965 (= res!670935 (= (totalInput!2243 cacheFurthestNullable!64) totalInput!458))))

(declare-fun mapNonEmpty!6618 () Bool)

(declare-fun mapRes!6619 () Bool)

(declare-fun tp!422746 () Bool)

(declare-fun tp!422743 () Bool)

(assert (=> mapNonEmpty!6618 (= mapRes!6619 (and tp!422746 tp!422743))))

(declare-fun mapKey!6619 () (_ BitVec 32))

(declare-fun mapValue!6618 () List!15890)

(declare-fun mapRest!6618 () (Array (_ BitVec 32) List!15890))

(assert (=> mapNonEmpty!6618 (= (arr!2198 (_values!1672 (v!22644 (underlying!2995 (v!22645 (underlying!2996 (cache!1718 cacheDown!629))))))) (store mapRest!6618 mapKey!6619 mapValue!6618))))

(declare-fun b!1485966 () Bool)

(declare-fun e!950695 () Bool)

(declare-fun e!950664 () Bool)

(assert (=> b!1485966 (= e!950695 e!950664)))

(declare-fun res!670929 () Bool)

(declare-fun e!950693 () Bool)

(assert (=> start!139554 (=> (not res!670929) (not e!950693))))

(get-info :version)

(assert (=> start!139554 (= res!670929 ((_ is Lexer!2468) thiss!13241))))

(assert (=> start!139554 e!950693))

(declare-fun inv!21032 (BalanceConc!10704) Bool)

(assert (=> start!139554 (and (inv!21032 acc!392) e!950671)))

(declare-fun e!950682 () Bool)

(declare-fun inv!21033 (CacheUp!790) Bool)

(assert (=> start!139554 (and (inv!21033 cacheUp!616) e!950682)))

(declare-fun inv!21034 (CacheDown!794) Bool)

(assert (=> start!139554 (and (inv!21034 cacheDown!629) e!950695)))

(declare-fun input!1102 () BalanceConc!10702)

(declare-fun e!950683 () Bool)

(declare-fun inv!21035 (BalanceConc!10702) Bool)

(assert (=> start!139554 (and (inv!21035 input!1102) e!950683)))

(declare-fun treated!70 () BalanceConc!10702)

(declare-fun e!950666 () Bool)

(assert (=> start!139554 (and (inv!21035 treated!70) e!950666)))

(assert (=> start!139554 true))

(assert (=> start!139554 e!950665))

(declare-fun e!950684 () Bool)

(declare-fun inv!21036 (CacheFurthestNullable!216) Bool)

(assert (=> start!139554 (and (inv!21036 cacheFurthestNullable!64) e!950684)))

(assert (=> start!139554 (and (inv!21035 totalInput!458) e!950703)))

(declare-fun b!1485967 () Bool)

(declare-fun e!950700 () Bool)

(declare-fun lt!516280 () MutLongMap!1392)

(assert (=> b!1485967 (= e!950701 (and e!950700 ((_ is LongMap!1392) lt!516280)))))

(assert (=> b!1485967 (= lt!516280 (v!22643 (underlying!2994 (cache!1717 cacheFurthestNullable!64))))))

(declare-fun b!1485968 () Bool)

(assert (=> b!1485968 (= e!950669 (tuple2!14515 (BalanceConc!10705 Empty!5381) input!1102))))

(declare-fun e!950691 () Bool)

(declare-fun tp!422730 () Bool)

(declare-fun b!1485969 () Bool)

(declare-fun inv!21021 (String!18782) Bool)

(declare-fun inv!21037 (TokenValueInjection!5468) Bool)

(assert (=> b!1485969 (= e!950697 (and tp!422730 (inv!21021 (tag!3078 (h!21224 rules!1640))) (inv!21037 (transformation!2814 (h!21224 rules!1640))) e!950691))))

(declare-fun b!1485970 () Bool)

(declare-fun e!950696 () Bool)

(declare-fun tp!422732 () Bool)

(assert (=> b!1485970 (= e!950696 (and (inv!21031 (c!243310 (totalInput!2243 cacheFurthestNullable!64))) tp!422732))))

(declare-fun b!1485971 () Bool)

(declare-fun e!950679 () Bool)

(assert (=> b!1485971 (= e!950679 e!950668)))

(declare-fun b!1485972 () Bool)

(declare-fun e!950692 () Bool)

(assert (=> b!1485972 (= e!950700 e!950692)))

(declare-fun b!1485973 () Bool)

(declare-fun e!950677 () Bool)

(assert (=> b!1485973 (= e!950678 (not e!950677))))

(declare-fun res!670928 () Bool)

(assert (=> b!1485973 (=> res!670928 e!950677)))

(declare-fun lt!516274 () List!15887)

(declare-fun lt!516287 () List!15887)

(declare-fun isSuffix!282 (List!15887 List!15887) Bool)

(assert (=> b!1485973 (= res!670928 (not (isSuffix!282 lt!516274 lt!516287)))))

(declare-fun lt!516273 () List!15887)

(assert (=> b!1485973 (isSuffix!282 lt!516274 lt!516273)))

(declare-datatypes ((Unit!25635 0))(
  ( (Unit!25636) )
))
(declare-fun lt!516276 () Unit!25635)

(declare-fun lt!516284 () List!15887)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!260 (List!15887 List!15887) Unit!25635)

(assert (=> b!1485973 (= lt!516276 (lemmaConcatTwoListThenFSndIsSuffix!260 lt!516284 lt!516274))))

(declare-fun b!1485974 () Bool)

(declare-fun e!950687 () Bool)

(assert (=> b!1485974 (= e!950687 e!950681)))

(declare-fun res!670930 () Bool)

(assert (=> b!1485974 (=> res!670930 e!950681)))

(declare-fun lt!516266 () List!15887)

(assert (=> b!1485974 (= res!670930 (not (isSuffix!282 lt!516266 lt!516287)))))

(declare-fun lt!516262 () List!15887)

(declare-fun ++!4262 (List!15887 List!15887) List!15887)

(assert (=> b!1485974 (isSuffix!282 lt!516266 (++!4262 lt!516262 lt!516266))))

(declare-fun lt!516270 () Unit!25635)

(assert (=> b!1485974 (= lt!516270 (lemmaConcatTwoListThenFSndIsSuffix!260 lt!516262 lt!516266))))

(declare-fun lt!516283 () BalanceConc!10702)

(assert (=> b!1485974 (= lt!516262 (list!6272 lt!516283))))

(declare-fun e!950690 () Bool)

(assert (=> b!1485974 e!950690))

(declare-fun c!243307 () Bool)

(declare-fun lt!516282 () Option!2896)

(assert (=> b!1485974 (= c!243307 ((_ is Some!2895) lt!516282))))

(declare-fun lt!516271 () tuple2!14514)

(assert (=> b!1485974 (= lt!516271 (lexRec!307 thiss!13241 rules!1640 lt!516283))))

(declare-fun maxPrefixZipperSequence!571 (LexerInterface!2470 List!15891 BalanceConc!10702) Option!2896)

(assert (=> b!1485974 (= lt!516282 (maxPrefixZipperSequence!571 thiss!13241 rules!1640 lt!516283))))

(declare-fun lt!516279 () BalanceConc!10702)

(declare-fun ++!4263 (BalanceConc!10702 BalanceConc!10702) BalanceConc!10702)

(assert (=> b!1485974 (= lt!516283 (++!4263 treated!70 lt!516279))))

(declare-fun lt!516263 () List!15889)

(declare-fun lt!516256 () List!15887)

(declare-datatypes ((tuple2!14522 0))(
  ( (tuple2!14523 (_1!8184 List!15889) (_2!8184 List!15887)) )
))
(declare-fun lexList!729 (LexerInterface!2470 List!15891 List!15887) tuple2!14522)

(assert (=> b!1485974 (= (lexList!729 thiss!13241 rules!1640 lt!516256) (tuple2!14523 lt!516263 Nil!15819))))

(declare-fun lt!516277 () List!15889)

(declare-fun lt!516272 () tuple2!14514)

(declare-fun lt!516259 () Unit!25635)

(declare-fun lemmaLexThenLexPrefix!211 (LexerInterface!2470 List!15891 List!15887 List!15887 List!15889 List!15889 List!15887) Unit!25635)

(assert (=> b!1485974 (= lt!516259 (lemmaLexThenLexPrefix!211 thiss!13241 rules!1640 lt!516256 lt!516266 lt!516263 lt!516277 (list!6272 (_2!8179 lt!516272))))))

(declare-fun list!6273 (BalanceConc!10704) List!15889)

(declare-fun append!470 (BalanceConc!10704 Token!5290) BalanceConc!10704)

(assert (=> b!1485974 (= lt!516263 (list!6273 (append!470 acc!392 (_1!8180 (v!22646 (_1!8183 lt!516260))))))))

(declare-fun lt!516281 () List!15889)

(declare-fun lt!516267 () List!15889)

(declare-fun ++!4264 (List!15889 List!15889) List!15889)

(assert (=> b!1485974 (= (++!4264 (++!4264 lt!516281 lt!516267) lt!516277) (++!4264 lt!516281 (++!4264 lt!516267 lt!516277)))))

(declare-fun lt!516288 () Unit!25635)

(declare-fun lemmaConcatAssociativity!902 (List!15889 List!15889 List!15889) Unit!25635)

(assert (=> b!1485974 (= lt!516288 (lemmaConcatAssociativity!902 lt!516281 lt!516267 lt!516277))))

(assert (=> b!1485974 (= lt!516277 (list!6273 (_1!8179 lt!516272)))))

(assert (=> b!1485974 (= lt!516267 (Cons!15821 (_1!8180 (v!22646 (_1!8183 lt!516260))) Nil!15821))))

(declare-fun lt!516258 () tuple2!14514)

(assert (=> b!1485974 (= lt!516258 e!950669)))

(declare-fun c!243308 () Bool)

(assert (=> b!1485974 (= c!243308 ((_ is Some!2895) lt!516275))))

(assert (=> b!1485974 (= lt!516275 (maxPrefixZipperSequence!571 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!516285 () List!15887)

(assert (=> b!1485974 (= (++!4262 lt!516256 lt!516266) (++!4262 lt!516284 (++!4262 lt!516285 lt!516266)))))

(assert (=> b!1485974 (= lt!516256 (++!4262 lt!516284 lt!516285))))

(declare-fun lt!516286 () Unit!25635)

(declare-fun lemmaConcatAssociativity!903 (List!15887 List!15887 List!15887) Unit!25635)

(assert (=> b!1485974 (= lt!516286 (lemmaConcatAssociativity!903 lt!516284 lt!516285 lt!516266))))

(assert (=> b!1485974 (= lt!516266 (list!6272 (_2!8180 (v!22646 (_1!8183 lt!516260)))))))

(assert (=> b!1485974 (= lt!516285 (list!6272 lt!516279))))

(declare-fun charsOf!1612 (Token!5290) BalanceConc!10702)

(assert (=> b!1485974 (= lt!516279 (charsOf!1612 (_1!8180 (v!22646 (_1!8183 lt!516260)))))))

(assert (=> b!1485974 (= lt!516272 (lexRec!307 thiss!13241 rules!1640 (_2!8180 (v!22646 (_1!8183 lt!516260)))))))

(declare-fun b!1485975 () Bool)

(declare-fun res!670931 () Bool)

(assert (=> b!1485975 (=> (not res!670931) (not e!950693))))

(declare-fun rulesInvariant!2253 (LexerInterface!2470 List!15891) Bool)

(assert (=> b!1485975 (= res!670931 (rulesInvariant!2253 thiss!13241 rules!1640))))

(declare-fun tp!422726 () Bool)

(declare-fun tp!422744 () Bool)

(declare-fun e!950699 () Bool)

(declare-fun array_inv!1597 (array!4920) Bool)

(assert (=> b!1485976 (= e!950674 (and tp!422747 tp!422726 tp!422744 (array_inv!1595 (_keys!1688 (v!22647 (underlying!2997 (v!22648 (underlying!2998 (cache!1719 cacheUp!616))))))) (array_inv!1597 (_values!1673 (v!22647 (underlying!2997 (v!22648 (underlying!2998 (cache!1719 cacheUp!616))))))) e!950699))))

(declare-fun b!1485977 () Bool)

(declare-fun tp!422740 () Bool)

(assert (=> b!1485977 (= e!950663 (and tp!422740 mapRes!6619))))

(declare-fun condMapEmpty!6620 () Bool)

(declare-fun mapDefault!6620 () List!15890)

(assert (=> b!1485977 (= condMapEmpty!6620 (= (arr!2198 (_values!1672 (v!22644 (underlying!2995 (v!22645 (underlying!2996 (cache!1718 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15890)) mapDefault!6620)))))

(declare-fun b!1485978 () Bool)

(assert (=> b!1485978 (= e!950685 e!950678)))

(declare-fun res!670932 () Bool)

(assert (=> b!1485978 (=> (not res!670932) (not e!950678))))

(declare-fun lt!516265 () tuple2!14514)

(declare-fun ++!4265 (BalanceConc!10704 BalanceConc!10704) BalanceConc!10704)

(assert (=> b!1485978 (= res!670932 (= (list!6273 (_1!8179 lt!516265)) (list!6273 (++!4265 acc!392 (_1!8179 lt!516258)))))))

(assert (=> b!1485978 (= lt!516258 (lexRec!307 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1485978 (= lt!516265 (lexRec!307 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1485979 () Bool)

(assert (=> b!1485979 (= e!950677 e!950687)))

(declare-fun res!670926 () Bool)

(assert (=> b!1485979 (=> res!670926 e!950687)))

(assert (=> b!1485979 (= res!670926 (not ((_ is Some!2895) (_1!8183 lt!516260))))))

(declare-fun maxPrefixZipperSequenceV3Mem!9 (LexerInterface!2470 List!15891 BalanceConc!10702 BalanceConc!10702 CacheUp!790 CacheDown!794 CacheFurthestNullable!216) tuple4!594)

(assert (=> b!1485979 (= lt!516260 (maxPrefixZipperSequenceV3Mem!9 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1485980 () Bool)

(declare-fun e!950686 () Bool)

(assert (=> b!1485980 (= e!950686 e!950670)))

(declare-fun b!1485981 () Bool)

(declare-fun e!950673 () Bool)

(assert (=> b!1485981 (= e!950673 e!950685)))

(declare-fun res!670936 () Bool)

(assert (=> b!1485981 (=> (not res!670936) (not e!950685))))

(declare-fun lt!516268 () List!15889)

(assert (=> b!1485981 (= res!670936 (= lt!516268 lt!516281))))

(assert (=> b!1485981 (= lt!516281 (list!6273 acc!392))))

(assert (=> b!1485981 (= lt!516268 (list!6273 (_1!8179 lt!516264)))))

(assert (=> b!1485981 (= lt!516264 (lexRec!307 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1485982 () Bool)

(assert (=> b!1485982 (= e!950693 e!950673)))

(declare-fun res!670938 () Bool)

(assert (=> b!1485982 (=> (not res!670938) (not e!950673))))

(assert (=> b!1485982 (= res!670938 (= lt!516287 lt!516273))))

(assert (=> b!1485982 (= lt!516273 (++!4262 lt!516284 lt!516274))))

(assert (=> b!1485982 (= lt!516287 (list!6272 totalInput!458))))

(assert (=> b!1485982 (= lt!516274 (list!6272 input!1102))))

(assert (=> b!1485982 (= lt!516284 (list!6272 treated!70))))

(declare-fun b!1485983 () Bool)

(declare-fun tp!422742 () Bool)

(assert (=> b!1485983 (= e!950683 (and (inv!21031 (c!243310 input!1102)) tp!422742))))

(declare-fun b!1485984 () Bool)

(declare-fun e!950689 () Bool)

(assert (=> b!1485984 (= e!950689 e!950679)))

(declare-fun b!1485985 () Bool)

(declare-fun e!950675 () Bool)

(declare-fun lt!516257 () MutLongMap!1394)

(assert (=> b!1485985 (= e!950675 (and e!950686 ((_ is LongMap!1394) lt!516257)))))

(assert (=> b!1485985 (= lt!516257 (v!22648 (underlying!2998 (cache!1719 cacheUp!616))))))

(declare-fun b!1485986 () Bool)

(declare-fun res!670934 () Bool)

(assert (=> b!1485986 (=> (not res!670934) (not e!950693))))

(declare-fun isEmpty!9852 (List!15891) Bool)

(assert (=> b!1485986 (= res!670934 (not (isEmpty!9852 rules!1640)))))

(declare-fun tp!422728 () Bool)

(declare-fun tp!422722 () Bool)

(declare-fun e!950702 () Bool)

(declare-fun array_inv!1598 (array!4914) Bool)

(assert (=> b!1485987 (= e!950702 (and tp!422736 tp!422728 tp!422722 (array_inv!1595 (_keys!1686 (v!22642 (underlying!2993 (v!22643 (underlying!2994 (cache!1717 cacheFurthestNullable!64))))))) (array_inv!1598 (_values!1671 (v!22642 (underlying!2993 (v!22643 (underlying!2994 (cache!1717 cacheFurthestNullable!64))))))) e!950698))))

(declare-fun mapNonEmpty!6619 () Bool)

(declare-fun mapRes!6618 () Bool)

(declare-fun tp!422738 () Bool)

(declare-fun tp!422723 () Bool)

(assert (=> mapNonEmpty!6619 (= mapRes!6618 (and tp!422738 tp!422723))))

(declare-fun mapValue!6619 () List!15892)

(declare-fun mapRest!6619 () (Array (_ BitVec 32) List!15892))

(declare-fun mapKey!6618 () (_ BitVec 32))

(assert (=> mapNonEmpty!6619 (= (arr!2199 (_values!1673 (v!22647 (underlying!2997 (v!22648 (underlying!2998 (cache!1719 cacheUp!616))))))) (store mapRest!6619 mapKey!6618 mapValue!6619))))

(declare-fun mapIsEmpty!6619 () Bool)

(assert (=> mapIsEmpty!6619 mapRes!6618))

(declare-fun b!1485988 () Bool)

(assert (=> b!1485988 (= e!950690 (= lt!516271 (tuple2!14515 (BalanceConc!10705 Empty!5381) lt!516283)))))

(declare-fun e!950704 () Bool)

(assert (=> b!1485989 (= e!950704 (and e!950675 tp!422748))))

(declare-fun b!1485990 () Bool)

(declare-fun lt!516255 () tuple2!14514)

(assert (=> b!1485990 (= e!950690 (= lt!516271 (tuple2!14515 (prepend!438 (_1!8179 lt!516255) (_1!8180 (v!22646 lt!516282))) (_2!8179 lt!516255))))))

(assert (=> b!1485990 (= lt!516255 (lexRec!307 thiss!13241 rules!1640 (_2!8180 (v!22646 lt!516282))))))

(declare-fun b!1485991 () Bool)

(assert (=> b!1485991 (= e!950692 e!950702)))

(declare-fun b!1485992 () Bool)

(assert (=> b!1485992 (= e!950684 (and e!950688 (inv!21035 (totalInput!2243 cacheFurthestNullable!64)) e!950696))))

(declare-fun mapIsEmpty!6620 () Bool)

(assert (=> mapIsEmpty!6620 mapRes!6619))

(declare-fun b!1485993 () Bool)

(declare-fun res!670927 () Bool)

(assert (=> b!1485993 (=> res!670927 e!950681)))

(assert (=> b!1485993 (= res!670927 (not (valid!1095 (_2!8183 lt!516260))))))

(declare-fun b!1485994 () Bool)

(declare-fun res!670940 () Bool)

(assert (=> b!1485994 (=> (not res!670940) (not e!950678))))

(assert (=> b!1485994 (= res!670940 (= (list!6272 (_2!8179 lt!516265)) (list!6272 (_2!8179 lt!516258))))))

(declare-fun e!950680 () Bool)

(assert (=> b!1485995 (= e!950664 (and e!950680 tp!422737))))

(declare-fun mapNonEmpty!6620 () Bool)

(declare-fun tp!422729 () Bool)

(declare-fun tp!422735 () Bool)

(assert (=> mapNonEmpty!6620 (= mapRes!6620 (and tp!422729 tp!422735))))

(declare-fun mapValue!6620 () List!15886)

(declare-fun mapRest!6620 () (Array (_ BitVec 32) List!15886))

(declare-fun mapKey!6620 () (_ BitVec 32))

(assert (=> mapNonEmpty!6620 (= (arr!2196 (_values!1671 (v!22642 (underlying!2993 (v!22643 (underlying!2994 (cache!1717 cacheFurthestNullable!64))))))) (store mapRest!6620 mapKey!6620 mapValue!6620))))

(declare-fun b!1485996 () Bool)

(declare-fun tp!422731 () Bool)

(assert (=> b!1485996 (= e!950699 (and tp!422731 mapRes!6618))))

(declare-fun condMapEmpty!6619 () Bool)

(declare-fun mapDefault!6618 () List!15892)

(assert (=> b!1485996 (= condMapEmpty!6619 (= (arr!2199 (_values!1673 (v!22647 (underlying!2997 (v!22648 (underlying!2998 (cache!1719 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15892)) mapDefault!6618)))))

(declare-fun b!1485997 () Bool)

(assert (=> b!1485997 (= e!950682 e!950704)))

(declare-fun b!1485998 () Bool)

(declare-fun lt!516269 () MutLongMap!1393)

(assert (=> b!1485998 (= e!950680 (and e!950689 ((_ is LongMap!1393) lt!516269)))))

(assert (=> b!1485998 (= lt!516269 (v!22645 (underlying!2996 (cache!1718 cacheDown!629))))))

(declare-fun b!1485999 () Bool)

(declare-fun res!670937 () Bool)

(assert (=> b!1485999 (=> res!670937 e!950681)))

(assert (=> b!1485999 (= res!670937 (not (valid!1093 (_4!297 lt!516260))))))

(assert (=> b!1486000 (= e!950691 (and tp!422739 tp!422733))))

(declare-fun b!1486001 () Bool)

(declare-fun tp!422724 () Bool)

(assert (=> b!1486001 (= e!950666 (and (inv!21031 (c!243310 treated!70)) tp!422724))))

(assert (= (and start!139554 res!670929) b!1485986))

(assert (= (and b!1485986 res!670934) b!1485975))

(assert (= (and b!1485975 res!670931) b!1485982))

(assert (= (and b!1485982 res!670938) b!1485981))

(assert (= (and b!1485981 res!670936) b!1485959))

(assert (= (and b!1485959 res!670933) b!1485978))

(assert (= (and b!1485978 res!670932) b!1485994))

(assert (= (and b!1485994 res!670940) b!1485962))

(assert (= (and b!1485962 res!670939) b!1485960))

(assert (= (and b!1485960 res!670942) b!1485952))

(assert (= (and b!1485952 res!670941) b!1485965))

(assert (= (and b!1485965 res!670935) b!1485973))

(assert (= (and b!1485973 (not res!670928)) b!1485979))

(assert (= (and b!1485979 (not res!670926)) b!1485974))

(assert (= (and b!1485974 c!243308) b!1485961))

(assert (= (and b!1485974 (not c!243308)) b!1485968))

(assert (= (and b!1485974 c!243307) b!1485990))

(assert (= (and b!1485974 (not c!243307)) b!1485988))

(assert (= (and b!1485974 (not res!670930)) b!1485999))

(assert (= (and b!1485999 (not res!670937)) b!1485993))

(assert (= (and b!1485993 (not res!670927)) b!1485964))

(assert (= start!139554 b!1485953))

(assert (= (and b!1485996 condMapEmpty!6619) mapIsEmpty!6619))

(assert (= (and b!1485996 (not condMapEmpty!6619)) mapNonEmpty!6619))

(assert (= b!1485976 b!1485996))

(assert (= b!1485963 b!1485976))

(assert (= b!1485980 b!1485963))

(assert (= (and b!1485985 ((_ is LongMap!1394) (v!22648 (underlying!2998 (cache!1719 cacheUp!616))))) b!1485980))

(assert (= b!1485989 b!1485985))

(assert (= (and b!1485997 ((_ is HashMap!1338) (cache!1719 cacheUp!616))) b!1485989))

(assert (= start!139554 b!1485997))

(assert (= (and b!1485977 condMapEmpty!6620) mapIsEmpty!6620))

(assert (= (and b!1485977 (not condMapEmpty!6620)) mapNonEmpty!6618))

(assert (= b!1485954 b!1485977))

(assert (= b!1485971 b!1485954))

(assert (= b!1485984 b!1485971))

(assert (= (and b!1485998 ((_ is LongMap!1393) (v!22645 (underlying!2996 (cache!1718 cacheDown!629))))) b!1485984))

(assert (= b!1485995 b!1485998))

(assert (= (and b!1485966 ((_ is HashMap!1337) (cache!1718 cacheDown!629))) b!1485995))

(assert (= start!139554 b!1485966))

(assert (= start!139554 b!1485983))

(assert (= start!139554 b!1486001))

(assert (= b!1485969 b!1486000))

(assert (= b!1485955 b!1485969))

(assert (= (and start!139554 ((_ is Cons!15823) rules!1640)) b!1485955))

(assert (= (and b!1485958 condMapEmpty!6618) mapIsEmpty!6618))

(assert (= (and b!1485958 (not condMapEmpty!6618)) mapNonEmpty!6620))

(assert (= b!1485987 b!1485958))

(assert (= b!1485991 b!1485987))

(assert (= b!1485972 b!1485991))

(assert (= (and b!1485967 ((_ is LongMap!1392) (v!22643 (underlying!2994 (cache!1717 cacheFurthestNullable!64))))) b!1485972))

(assert (= b!1485957 b!1485967))

(assert (= (and b!1485992 ((_ is HashMap!1336) (cache!1717 cacheFurthestNullable!64))) b!1485957))

(assert (= b!1485992 b!1485970))

(assert (= start!139554 b!1485992))

(assert (= start!139554 b!1485956))

(declare-fun m!1732456 () Bool)

(assert (=> b!1486001 m!1732456))

(declare-fun m!1732458 () Bool)

(assert (=> b!1485953 m!1732458))

(declare-fun m!1732460 () Bool)

(assert (=> b!1485987 m!1732460))

(declare-fun m!1732462 () Bool)

(assert (=> b!1485987 m!1732462))

(declare-fun m!1732464 () Bool)

(assert (=> b!1485974 m!1732464))

(declare-fun m!1732466 () Bool)

(assert (=> b!1485974 m!1732466))

(declare-fun m!1732468 () Bool)

(assert (=> b!1485974 m!1732468))

(declare-fun m!1732470 () Bool)

(assert (=> b!1485974 m!1732470))

(declare-fun m!1732472 () Bool)

(assert (=> b!1485974 m!1732472))

(declare-fun m!1732474 () Bool)

(assert (=> b!1485974 m!1732474))

(declare-fun m!1732476 () Bool)

(assert (=> b!1485974 m!1732476))

(declare-fun m!1732478 () Bool)

(assert (=> b!1485974 m!1732478))

(declare-fun m!1732480 () Bool)

(assert (=> b!1485974 m!1732480))

(declare-fun m!1732482 () Bool)

(assert (=> b!1485974 m!1732482))

(declare-fun m!1732484 () Bool)

(assert (=> b!1485974 m!1732484))

(declare-fun m!1732486 () Bool)

(assert (=> b!1485974 m!1732486))

(declare-fun m!1732488 () Bool)

(assert (=> b!1485974 m!1732488))

(declare-fun m!1732490 () Bool)

(assert (=> b!1485974 m!1732490))

(declare-fun m!1732492 () Bool)

(assert (=> b!1485974 m!1732492))

(declare-fun m!1732494 () Bool)

(assert (=> b!1485974 m!1732494))

(declare-fun m!1732496 () Bool)

(assert (=> b!1485974 m!1732496))

(declare-fun m!1732498 () Bool)

(assert (=> b!1485974 m!1732498))

(declare-fun m!1732500 () Bool)

(assert (=> b!1485974 m!1732500))

(assert (=> b!1485974 m!1732478))

(declare-fun m!1732502 () Bool)

(assert (=> b!1485974 m!1732502))

(declare-fun m!1732504 () Bool)

(assert (=> b!1485974 m!1732504))

(assert (=> b!1485974 m!1732480))

(declare-fun m!1732506 () Bool)

(assert (=> b!1485974 m!1732506))

(declare-fun m!1732508 () Bool)

(assert (=> b!1485974 m!1732508))

(declare-fun m!1732510 () Bool)

(assert (=> b!1485974 m!1732510))

(declare-fun m!1732512 () Bool)

(assert (=> b!1485974 m!1732512))

(assert (=> b!1485974 m!1732512))

(declare-fun m!1732514 () Bool)

(assert (=> b!1485974 m!1732514))

(declare-fun m!1732516 () Bool)

(assert (=> b!1485974 m!1732516))

(assert (=> b!1485974 m!1732496))

(declare-fun m!1732518 () Bool)

(assert (=> b!1485974 m!1732518))

(assert (=> b!1485974 m!1732508))

(assert (=> b!1485974 m!1732470))

(declare-fun m!1732520 () Bool)

(assert (=> b!1485974 m!1732520))

(declare-fun m!1732522 () Bool)

(assert (=> b!1485973 m!1732522))

(declare-fun m!1732524 () Bool)

(assert (=> b!1485973 m!1732524))

(declare-fun m!1732526 () Bool)

(assert (=> b!1485973 m!1732526))

(declare-fun m!1732528 () Bool)

(assert (=> b!1485978 m!1732528))

(declare-fun m!1732530 () Bool)

(assert (=> b!1485978 m!1732530))

(declare-fun m!1732532 () Bool)

(assert (=> b!1485978 m!1732532))

(assert (=> b!1485978 m!1732528))

(declare-fun m!1732534 () Bool)

(assert (=> b!1485978 m!1732534))

(declare-fun m!1732536 () Bool)

(assert (=> b!1485978 m!1732536))

(declare-fun m!1732538 () Bool)

(assert (=> b!1485994 m!1732538))

(declare-fun m!1732540 () Bool)

(assert (=> b!1485994 m!1732540))

(declare-fun m!1732542 () Bool)

(assert (=> b!1485982 m!1732542))

(declare-fun m!1732544 () Bool)

(assert (=> b!1485982 m!1732544))

(declare-fun m!1732546 () Bool)

(assert (=> b!1485982 m!1732546))

(declare-fun m!1732548 () Bool)

(assert (=> b!1485982 m!1732548))

(declare-fun m!1732550 () Bool)

(assert (=> b!1485992 m!1732550))

(declare-fun m!1732552 () Bool)

(assert (=> mapNonEmpty!6620 m!1732552))

(declare-fun m!1732554 () Bool)

(assert (=> b!1485999 m!1732554))

(declare-fun m!1732556 () Bool)

(assert (=> b!1485979 m!1732556))

(declare-fun m!1732558 () Bool)

(assert (=> b!1485976 m!1732558))

(declare-fun m!1732560 () Bool)

(assert (=> b!1485976 m!1732560))

(declare-fun m!1732562 () Bool)

(assert (=> b!1485960 m!1732562))

(declare-fun m!1732564 () Bool)

(assert (=> b!1485952 m!1732564))

(declare-fun m!1732566 () Bool)

(assert (=> b!1485962 m!1732566))

(declare-fun m!1732568 () Bool)

(assert (=> b!1485975 m!1732568))

(declare-fun m!1732570 () Bool)

(assert (=> mapNonEmpty!6619 m!1732570))

(declare-fun m!1732572 () Bool)

(assert (=> b!1485954 m!1732572))

(declare-fun m!1732574 () Bool)

(assert (=> b!1485954 m!1732574))

(declare-fun m!1732576 () Bool)

(assert (=> mapNonEmpty!6618 m!1732576))

(declare-fun m!1732578 () Bool)

(assert (=> b!1485970 m!1732578))

(declare-fun m!1732580 () Bool)

(assert (=> b!1485964 m!1732580))

(declare-fun m!1732582 () Bool)

(assert (=> start!139554 m!1732582))

(declare-fun m!1732584 () Bool)

(assert (=> start!139554 m!1732584))

(declare-fun m!1732586 () Bool)

(assert (=> start!139554 m!1732586))

(declare-fun m!1732588 () Bool)

(assert (=> start!139554 m!1732588))

(declare-fun m!1732590 () Bool)

(assert (=> start!139554 m!1732590))

(declare-fun m!1732592 () Bool)

(assert (=> start!139554 m!1732592))

(declare-fun m!1732594 () Bool)

(assert (=> start!139554 m!1732594))

(declare-fun m!1732596 () Bool)

(assert (=> b!1485961 m!1732596))

(declare-fun m!1732598 () Bool)

(assert (=> b!1485961 m!1732598))

(declare-fun m!1732600 () Bool)

(assert (=> b!1485983 m!1732600))

(declare-fun m!1732602 () Bool)

(assert (=> b!1485959 m!1732602))

(assert (=> b!1485959 m!1732602))

(declare-fun m!1732604 () Bool)

(assert (=> b!1485959 m!1732604))

(declare-fun m!1732606 () Bool)

(assert (=> b!1485993 m!1732606))

(declare-fun m!1732608 () Bool)

(assert (=> b!1485986 m!1732608))

(declare-fun m!1732610 () Bool)

(assert (=> b!1485969 m!1732610))

(declare-fun m!1732612 () Bool)

(assert (=> b!1485969 m!1732612))

(declare-fun m!1732614 () Bool)

(assert (=> b!1485981 m!1732614))

(declare-fun m!1732616 () Bool)

(assert (=> b!1485981 m!1732616))

(declare-fun m!1732618 () Bool)

(assert (=> b!1485981 m!1732618))

(declare-fun m!1732620 () Bool)

(assert (=> b!1485956 m!1732620))

(declare-fun m!1732622 () Bool)

(assert (=> b!1485990 m!1732622))

(declare-fun m!1732624 () Bool)

(assert (=> b!1485990 m!1732624))

(check-sat (not b_next!39339) (not b!1485974) (not b_next!39345) (not b!1485979) b_and!103361 (not b!1485990) (not mapNonEmpty!6619) (not b!1486001) (not mapNonEmpty!6620) b_and!103349 (not b_next!39341) b_and!103363 (not b!1485977) (not b!1485999) (not mapNonEmpty!6618) (not b!1485996) (not b!1485969) (not b!1485992) b_and!103353 (not b!1485978) (not b!1485970) (not b_next!39349) (not b_next!39347) (not b!1485975) (not b_next!39337) (not b_next!39335) (not b!1485955) (not b!1485961) (not b!1485993) (not b!1485954) (not b_next!39343) (not b!1485964) (not b!1485983) (not b!1485953) (not b!1485987) b_and!103355 (not b!1485986) b_and!103359 (not b!1485973) (not b!1485981) (not b!1485976) b_and!103357 (not b!1485959) (not b!1485960) b_and!103351 (not b!1485982) (not b!1485962) (not b!1485956) (not start!139554) (not b!1485994) (not b!1485952) (not b!1485958))
(check-sat (not b_next!39339) (not b_next!39345) b_and!103353 (not b_next!39349) b_and!103361 (not b_next!39335) (not b_next!39343) b_and!103355 b_and!103359 b_and!103357 b_and!103351 b_and!103349 (not b_next!39341) b_and!103363 (not b_next!39347) (not b_next!39337))
