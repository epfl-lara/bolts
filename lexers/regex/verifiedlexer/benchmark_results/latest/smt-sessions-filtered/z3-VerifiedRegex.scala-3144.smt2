; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184806 () Bool)

(assert start!184806)

(declare-fun b!1851937 () Bool)

(declare-fun b_free!51863 () Bool)

(declare-fun b_next!52567 () Bool)

(assert (=> b!1851937 (= b_free!51863 (not b_next!52567))))

(declare-fun tp!524787 () Bool)

(declare-fun b_and!144097 () Bool)

(assert (=> b!1851937 (= tp!524787 b_and!144097)))

(declare-fun b!1851915 () Bool)

(declare-fun b_free!51865 () Bool)

(declare-fun b_next!52569 () Bool)

(assert (=> b!1851915 (= b_free!51865 (not b_next!52569))))

(declare-fun tp!524786 () Bool)

(declare-fun b_and!144099 () Bool)

(assert (=> b!1851915 (= tp!524786 b_and!144099)))

(declare-fun b!1851918 () Bool)

(declare-fun b_free!51867 () Bool)

(declare-fun b_next!52571 () Bool)

(assert (=> b!1851918 (= b_free!51867 (not b_next!52571))))

(declare-fun tp!524778 () Bool)

(declare-fun b_and!144101 () Bool)

(assert (=> b!1851918 (= tp!524778 b_and!144101)))

(declare-fun b_free!51869 () Bool)

(declare-fun b_next!52573 () Bool)

(assert (=> b!1851918 (= b_free!51869 (not b_next!52573))))

(declare-fun tp!524785 () Bool)

(declare-fun b_and!144103 () Bool)

(assert (=> b!1851918 (= tp!524785 b_and!144103)))

(declare-fun b!1851917 () Bool)

(declare-fun b_free!51871 () Bool)

(declare-fun b_next!52575 () Bool)

(assert (=> b!1851917 (= b_free!51871 (not b_next!52575))))

(declare-fun tp!524791 () Bool)

(declare-fun b_and!144105 () Bool)

(assert (=> b!1851917 (= tp!524791 b_and!144105)))

(declare-fun b!1851931 () Bool)

(declare-fun b_free!51873 () Bool)

(declare-fun b_next!52577 () Bool)

(assert (=> b!1851931 (= b_free!51873 (not b_next!52577))))

(declare-fun tp!524784 () Bool)

(declare-fun b_and!144107 () Bool)

(assert (=> b!1851931 (= tp!524784 b_and!144107)))

(declare-fun e!1183673 () Bool)

(declare-fun e!1183687 () Bool)

(assert (=> b!1851915 (= e!1183673 (and e!1183687 tp!524786))))

(declare-fun b!1851916 () Bool)

(declare-fun e!1183688 () Bool)

(declare-fun tp!524789 () Bool)

(declare-fun mapRes!8814 () Bool)

(assert (=> b!1851916 (= e!1183688 (and tp!524789 mapRes!8814))))

(declare-fun condMapEmpty!8814 () Bool)

(declare-datatypes ((C!10232 0))(
  ( (C!10233 (val!5842 Int)) )
))
(declare-datatypes ((Regex!5041 0))(
  ( (ElementMatch!5041 (c!302090 C!10232)) (Concat!8835 (regOne!10594 Regex!5041) (regTwo!10594 Regex!5041)) (EmptyExpr!5041) (Star!5041 (reg!5370 Regex!5041)) (EmptyLang!5041) (Union!5041 (regOne!10595 Regex!5041) (regTwo!10595 Regex!5041)) )
))
(declare-datatypes ((List!20610 0))(
  ( (Nil!20538) (Cons!20538 (h!25939 Regex!5041) (t!172412 List!20610)) )
))
(declare-datatypes ((Context!1902 0))(
  ( (Context!1903 (exprs!1451 List!20610)) )
))
(declare-datatypes ((tuple2!19810 0))(
  ( (tuple2!19811 (_1!11329 Context!1902) (_2!11329 C!10232)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19812 0))(
  ( (tuple2!19813 (_1!11330 tuple2!19810) (_2!11330 (InoxSet Context!1902))) )
))
(declare-datatypes ((List!20611 0))(
  ( (Nil!20539) (Cons!20539 (h!25940 tuple2!19812) (t!172413 List!20611)) )
))
(declare-datatypes ((array!6494 0))(
  ( (array!6495 (arr!2885 (Array (_ BitVec 32) List!20611)) (size!16215 (_ BitVec 32))) )
))
(declare-datatypes ((array!6496 0))(
  ( (array!6497 (arr!2886 (Array (_ BitVec 32) (_ BitVec 64))) (size!16216 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3786 0))(
  ( (LongMapFixedSize!3787 (defaultEntry!2253 Int) (mask!5581 (_ BitVec 32)) (extraKeys!2140 (_ BitVec 32)) (zeroValue!2150 List!20611) (minValue!2150 List!20611) (_size!3867 (_ BitVec 32)) (_keys!2187 array!6496) (_values!2172 array!6494) (_vacant!1954 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7457 0))(
  ( (Cell!7458 (v!26021 LongMapFixedSize!3786)) )
))
(declare-datatypes ((MutLongMap!1893 0))(
  ( (LongMap!1893 (underlying!3999 Cell!7457)) (MutLongMapExt!1892 (__x!12944 Int)) )
))
(declare-datatypes ((Hashable!1837 0))(
  ( (HashableExt!1836 (__x!12945 Int)) )
))
(declare-datatypes ((Cell!7459 0))(
  ( (Cell!7460 (v!26022 MutLongMap!1893)) )
))
(declare-datatypes ((MutableMap!1837 0))(
  ( (MutableMapExt!1836 (__x!12946 Int)) (HashMap!1837 (underlying!4000 Cell!7459) (hashF!3756 Hashable!1837) (_size!3868 (_ BitVec 32)) (defaultValue!1997 Int)) )
))
(declare-datatypes ((CacheUp!1138 0))(
  ( (CacheUp!1139 (cache!2218 MutableMap!1837)) )
))
(declare-fun cacheUp!441 () CacheUp!1138)

(declare-fun mapDefault!8815 () List!20611)

(assert (=> b!1851916 (= condMapEmpty!8814 (= (arr!2885 (_values!2172 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))) ((as const (Array (_ BitVec 32) List!20611)) mapDefault!8815)))))

(declare-fun tp!524776 () Bool)

(declare-fun e!1183692 () Bool)

(declare-datatypes ((tuple3!1920 0))(
  ( (tuple3!1921 (_1!11331 Regex!5041) (_2!11331 Context!1902) (_3!1424 C!10232)) )
))
(declare-datatypes ((tuple2!19814 0))(
  ( (tuple2!19815 (_1!11332 tuple3!1920) (_2!11332 (InoxSet Context!1902))) )
))
(declare-datatypes ((List!20612 0))(
  ( (Nil!20540) (Cons!20540 (h!25941 tuple2!19814) (t!172414 List!20612)) )
))
(declare-datatypes ((array!6498 0))(
  ( (array!6499 (arr!2887 (Array (_ BitVec 32) List!20612)) (size!16217 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3788 0))(
  ( (LongMapFixedSize!3789 (defaultEntry!2254 Int) (mask!5582 (_ BitVec 32)) (extraKeys!2141 (_ BitVec 32)) (zeroValue!2151 List!20612) (minValue!2151 List!20612) (_size!3869 (_ BitVec 32)) (_keys!2188 array!6496) (_values!2173 array!6498) (_vacant!1955 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7461 0))(
  ( (Cell!7462 (v!26023 LongMapFixedSize!3788)) )
))
(declare-datatypes ((Hashable!1838 0))(
  ( (HashableExt!1837 (__x!12947 Int)) )
))
(declare-datatypes ((MutLongMap!1894 0))(
  ( (LongMap!1894 (underlying!4001 Cell!7461)) (MutLongMapExt!1893 (__x!12948 Int)) )
))
(declare-datatypes ((Cell!7463 0))(
  ( (Cell!7464 (v!26024 MutLongMap!1894)) )
))
(declare-datatypes ((MutableMap!1838 0))(
  ( (MutableMapExt!1837 (__x!12949 Int)) (HashMap!1838 (underlying!4002 Cell!7463) (hashF!3757 Hashable!1838) (_size!3870 (_ BitVec 32)) (defaultValue!1998 Int)) )
))
(declare-datatypes ((CacheDown!1134 0))(
  ( (CacheDown!1135 (cache!2219 MutableMap!1838)) )
))
(declare-fun cacheDown!454 () CacheDown!1134)

(declare-fun tp!524775 () Bool)

(declare-fun e!1183693 () Bool)

(declare-fun array_inv!2078 (array!6496) Bool)

(declare-fun array_inv!2079 (array!6498) Bool)

(assert (=> b!1851917 (= e!1183692 (and tp!524791 tp!524775 tp!524776 (array_inv!2078 (_keys!2188 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))) (array_inv!2079 (_values!2173 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))) e!1183693))))

(declare-fun e!1183674 () Bool)

(assert (=> b!1851918 (= e!1183674 (and tp!524778 tp!524785))))

(declare-fun res!831029 () Bool)

(declare-fun e!1183681 () Bool)

(assert (=> start!184806 (=> (not res!831029) (not e!1183681))))

(declare-datatypes ((LexerInterface!3300 0))(
  ( (LexerInterfaceExt!3297 (__x!12950 Int)) (Lexer!3298) )
))
(declare-fun thiss!12117 () LexerInterface!3300)

(get-info :version)

(assert (=> start!184806 (= res!831029 ((_ is Lexer!3298) thiss!12117))))

(assert (=> start!184806 e!1183681))

(declare-fun e!1183677 () Bool)

(declare-fun inv!26919 (CacheUp!1138) Bool)

(assert (=> start!184806 (and (inv!26919 cacheUp!441) e!1183677)))

(assert (=> start!184806 true))

(declare-datatypes ((List!20613 0))(
  ( (Nil!20541) (Cons!20541 (h!25942 C!10232) (t!172415 List!20613)) )
))
(declare-datatypes ((IArray!13591 0))(
  ( (IArray!13592 (innerList!6853 List!20613)) )
))
(declare-datatypes ((Conc!6793 0))(
  ( (Node!6793 (left!16477 Conc!6793) (right!16807 Conc!6793) (csize!13816 Int) (cheight!7004 Int)) (Leaf!9938 (xs!9669 IArray!13591) (csize!13817 Int)) (Empty!6793) )
))
(declare-datatypes ((BalanceConc!13508 0))(
  ( (BalanceConc!13509 (c!302091 Conc!6793)) )
))
(declare-fun input!736 () BalanceConc!13508)

(declare-fun e!1183685 () Bool)

(declare-fun inv!26920 (BalanceConc!13508) Bool)

(assert (=> start!184806 (and (inv!26920 input!736) e!1183685)))

(declare-fun e!1183690 () Bool)

(declare-fun inv!26921 (CacheDown!1134) Bool)

(assert (=> start!184806 (and (inv!26921 cacheDown!454) e!1183690)))

(declare-fun e!1183672 () Bool)

(assert (=> start!184806 e!1183672))

(declare-fun b!1851919 () Bool)

(declare-fun res!831028 () Bool)

(assert (=> b!1851919 (=> (not res!831028) (not e!1183681))))

(declare-datatypes ((String!23539 0))(
  ( (String!23540 (value!115377 String)) )
))
(declare-datatypes ((List!20614 0))(
  ( (Nil!20542) (Cons!20542 (h!25943 (_ BitVec 16)) (t!172416 List!20614)) )
))
(declare-datatypes ((TokenValue!3794 0))(
  ( (FloatLiteralValue!7588 (text!27003 List!20614)) (TokenValueExt!3793 (__x!12951 Int)) (Broken!18970 (value!115378 List!20614)) (Object!3865) (End!3794) (Def!3794) (Underscore!3794) (Match!3794) (Else!3794) (Error!3794) (Case!3794) (If!3794) (Extends!3794) (Abstract!3794) (Class!3794) (Val!3794) (DelimiterValue!7588 (del!3854 List!20614)) (KeywordValue!3800 (value!115379 List!20614)) (CommentValue!7588 (value!115380 List!20614)) (WhitespaceValue!7588 (value!115381 List!20614)) (IndentationValue!3794 (value!115382 List!20614)) (String!23541) (Int32!3794) (Broken!18971 (value!115383 List!20614)) (Boolean!3795) (Unit!35141) (OperatorValue!3797 (op!3854 List!20614)) (IdentifierValue!7588 (value!115384 List!20614)) (IdentifierValue!7589 (value!115385 List!20614)) (WhitespaceValue!7589 (value!115386 List!20614)) (True!7588) (False!7588) (Broken!18972 (value!115387 List!20614)) (Broken!18973 (value!115388 List!20614)) (True!7589) (RightBrace!3794) (RightBracket!3794) (Colon!3794) (Null!3794) (Comma!3794) (LeftBracket!3794) (False!7589) (LeftBrace!3794) (ImaginaryLiteralValue!3794 (text!27004 List!20614)) (StringLiteralValue!11382 (value!115389 List!20614)) (EOFValue!3794 (value!115390 List!20614)) (IdentValue!3794 (value!115391 List!20614)) (DelimiterValue!7589 (value!115392 List!20614)) (DedentValue!3794 (value!115393 List!20614)) (NewLineValue!3794 (value!115394 List!20614)) (IntegerValue!11382 (value!115395 (_ BitVec 32)) (text!27005 List!20614)) (IntegerValue!11383 (value!115396 Int) (text!27006 List!20614)) (Times!3794) (Or!3794) (Equal!3794) (Minus!3794) (Broken!18974 (value!115397 List!20614)) (And!3794) (Div!3794) (LessEqual!3794) (Mod!3794) (Concat!8836) (Not!3794) (Plus!3794) (SpaceValue!3794 (value!115398 List!20614)) (IntegerValue!11384 (value!115399 Int) (text!27007 List!20614)) (StringLiteralValue!11383 (text!27008 List!20614)) (FloatLiteralValue!7589 (text!27009 List!20614)) (BytesLiteralValue!3794 (value!115400 List!20614)) (CommentValue!7589 (value!115401 List!20614)) (StringLiteralValue!11384 (value!115402 List!20614)) (ErrorTokenValue!3794 (msg!3855 List!20614)) )
))
(declare-datatypes ((TokenValueInjection!7204 0))(
  ( (TokenValueInjection!7205 (toValue!5251 Int) (toChars!5110 Int)) )
))
(declare-datatypes ((Rule!7156 0))(
  ( (Rule!7157 (regex!3678 Regex!5041) (tag!4092 String!23539) (isSeparator!3678 Bool) (transformation!3678 TokenValueInjection!7204)) )
))
(declare-datatypes ((List!20615 0))(
  ( (Nil!20543) (Cons!20543 (h!25944 Rule!7156) (t!172417 List!20615)) )
))
(declare-fun rules!1331 () List!20615)

(declare-fun rulesInvariant!2967 (LexerInterface!3300 List!20615) Bool)

(assert (=> b!1851919 (= res!831028 (rulesInvariant!2967 thiss!12117 rules!1331))))

(declare-fun b!1851920 () Bool)

(declare-fun e!1183689 () Bool)

(declare-fun e!1183684 () Bool)

(assert (=> b!1851920 (= e!1183689 e!1183684)))

(declare-fun b!1851921 () Bool)

(declare-fun tp!524793 () Bool)

(declare-fun mapRes!8815 () Bool)

(assert (=> b!1851921 (= e!1183693 (and tp!524793 mapRes!8815))))

(declare-fun condMapEmpty!8815 () Bool)

(declare-fun mapDefault!8814 () List!20612)

(assert (=> b!1851921 (= condMapEmpty!8815 (= (arr!2887 (_values!2173 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))) ((as const (Array (_ BitVec 32) List!20612)) mapDefault!8814)))))

(declare-fun mapIsEmpty!8814 () Bool)

(assert (=> mapIsEmpty!8814 mapRes!8815))

(declare-fun b!1851922 () Bool)

(declare-fun res!831031 () Bool)

(assert (=> b!1851922 (=> (not res!831031) (not e!1183681))))

(declare-fun valid!1511 (CacheUp!1138) Bool)

(assert (=> b!1851922 (= res!831031 (valid!1511 cacheUp!441))))

(declare-fun b!1851923 () Bool)

(declare-fun e!1183679 () Bool)

(declare-datatypes ((Token!6908 0))(
  ( (Token!6909 (value!115403 TokenValue!3794) (rule!5871 Rule!7156) (size!16218 Int) (originalCharacters!4485 List!20613)) )
))
(declare-datatypes ((List!20616 0))(
  ( (Nil!20544) (Cons!20544 (h!25945 Token!6908) (t!172418 List!20616)) )
))
(declare-datatypes ((IArray!13593 0))(
  ( (IArray!13594 (innerList!6854 List!20616)) )
))
(declare-datatypes ((Conc!6794 0))(
  ( (Node!6794 (left!16478 Conc!6794) (right!16808 Conc!6794) (csize!13818 Int) (cheight!7005 Int)) (Leaf!9939 (xs!9670 IArray!13593) (csize!13819 Int)) (Empty!6794) )
))
(declare-datatypes ((BalanceConc!13510 0))(
  ( (BalanceConc!13511 (c!302092 Conc!6794)) )
))
(declare-datatypes ((tuple2!19816 0))(
  ( (tuple2!19817 (_1!11333 BalanceConc!13510) (_2!11333 BalanceConc!13508)) )
))
(declare-datatypes ((tuple3!1922 0))(
  ( (tuple3!1923 (_1!11334 tuple2!19816) (_2!11334 CacheUp!1138) (_3!1425 CacheDown!1134)) )
))
(declare-fun lt!715793 () tuple3!1922)

(declare-fun lt!715790 () tuple2!19816)

(declare-fun list!8319 (BalanceConc!13508) List!20613)

(assert (=> b!1851923 (= e!1183679 (not (= (list!8319 (_2!11333 (_1!11334 lt!715793))) (list!8319 (_2!11333 lt!715790)))))))

(declare-fun b!1851924 () Bool)

(declare-fun res!831027 () Bool)

(assert (=> b!1851924 (=> (not res!831027) (not e!1183681))))

(declare-fun valid!1512 (CacheDown!1134) Bool)

(assert (=> b!1851924 (= res!831027 (valid!1512 cacheDown!454))))

(declare-fun b!1851925 () Bool)

(declare-fun e!1183682 () Bool)

(declare-fun tp!524790 () Bool)

(assert (=> b!1851925 (= e!1183672 (and e!1183682 tp!524790))))

(declare-fun b!1851926 () Bool)

(declare-fun e!1183691 () Bool)

(assert (=> b!1851926 (= e!1183690 e!1183691)))

(declare-fun mapIsEmpty!8815 () Bool)

(assert (=> mapIsEmpty!8815 mapRes!8814))

(declare-fun mapNonEmpty!8814 () Bool)

(declare-fun tp!524782 () Bool)

(declare-fun tp!524781 () Bool)

(assert (=> mapNonEmpty!8814 (= mapRes!8814 (and tp!524782 tp!524781))))

(declare-fun mapRest!8815 () (Array (_ BitVec 32) List!20611))

(declare-fun mapValue!8814 () List!20611)

(declare-fun mapKey!8815 () (_ BitVec 32))

(assert (=> mapNonEmpty!8814 (= (arr!2885 (_values!2172 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))) (store mapRest!8815 mapKey!8815 mapValue!8814))))

(declare-fun b!1851927 () Bool)

(declare-fun tp!524788 () Bool)

(declare-fun inv!26922 (Conc!6793) Bool)

(assert (=> b!1851927 (= e!1183685 (and (inv!26922 (c!302091 input!736)) tp!524788))))

(declare-fun b!1851928 () Bool)

(declare-fun tp!524780 () Bool)

(declare-fun inv!26913 (String!23539) Bool)

(declare-fun inv!26923 (TokenValueInjection!7204) Bool)

(assert (=> b!1851928 (= e!1183682 (and tp!524780 (inv!26913 (tag!4092 (h!25944 rules!1331))) (inv!26923 (transformation!3678 (h!25944 rules!1331))) e!1183674))))

(declare-fun b!1851929 () Bool)

(assert (=> b!1851929 (= e!1183677 e!1183673)))

(declare-fun b!1851930 () Bool)

(declare-fun res!831030 () Bool)

(assert (=> b!1851930 (=> (not res!831030) (not e!1183681))))

(declare-fun isEmpty!12803 (List!20615) Bool)

(assert (=> b!1851930 (= res!831030 (not (isEmpty!12803 rules!1331)))))

(declare-fun e!1183676 () Bool)

(assert (=> b!1851931 (= e!1183691 (and e!1183676 tp!524784))))

(declare-fun b!1851932 () Bool)

(declare-fun lt!715791 () MutLongMap!1893)

(assert (=> b!1851932 (= e!1183687 (and e!1183689 ((_ is LongMap!1893) lt!715791)))))

(assert (=> b!1851932 (= lt!715791 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))

(declare-fun b!1851933 () Bool)

(declare-fun e!1183678 () Bool)

(declare-fun lt!715792 () MutLongMap!1894)

(assert (=> b!1851933 (= e!1183676 (and e!1183678 ((_ is LongMap!1894) lt!715792)))))

(assert (=> b!1851933 (= lt!715792 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))

(declare-fun b!1851934 () Bool)

(assert (=> b!1851934 (= e!1183681 e!1183679)))

(declare-fun res!831032 () Bool)

(assert (=> b!1851934 (=> res!831032 e!1183679)))

(declare-fun list!8320 (BalanceConc!13510) List!20616)

(assert (=> b!1851934 (= res!831032 (not (= (list!8320 (_1!11333 (_1!11334 lt!715793))) (list!8320 (_1!11333 lt!715790)))))))

(declare-fun lex!1500 (LexerInterface!3300 List!20615 BalanceConc!13508) tuple2!19816)

(assert (=> b!1851934 (= lt!715790 (lex!1500 thiss!12117 rules!1331 input!736))))

(declare-fun lexTailRecMem!8 (LexerInterface!3300 List!20615 BalanceConc!13508 BalanceConc!13508 BalanceConc!13508 BalanceConc!13510 CacheUp!1138 CacheDown!1134) tuple3!1922)

(assert (=> b!1851934 (= lt!715793 (lexTailRecMem!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794) cacheUp!441 cacheDown!454))))

(declare-fun b!1851935 () Bool)

(declare-fun e!1183686 () Bool)

(assert (=> b!1851935 (= e!1183678 e!1183686)))

(declare-fun b!1851936 () Bool)

(declare-fun e!1183683 () Bool)

(assert (=> b!1851936 (= e!1183684 e!1183683)))

(declare-fun mapNonEmpty!8815 () Bool)

(declare-fun tp!524777 () Bool)

(declare-fun tp!524783 () Bool)

(assert (=> mapNonEmpty!8815 (= mapRes!8815 (and tp!524777 tp!524783))))

(declare-fun mapRest!8814 () (Array (_ BitVec 32) List!20612))

(declare-fun mapKey!8814 () (_ BitVec 32))

(declare-fun mapValue!8815 () List!20612)

(assert (=> mapNonEmpty!8815 (= (arr!2887 (_values!2173 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))) (store mapRest!8814 mapKey!8814 mapValue!8815))))

(declare-fun tp!524792 () Bool)

(declare-fun tp!524779 () Bool)

(declare-fun array_inv!2080 (array!6494) Bool)

(assert (=> b!1851937 (= e!1183683 (and tp!524787 tp!524779 tp!524792 (array_inv!2078 (_keys!2187 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))) (array_inv!2080 (_values!2172 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))) e!1183688))))

(declare-fun b!1851938 () Bool)

(assert (=> b!1851938 (= e!1183686 e!1183692)))

(assert (= (and start!184806 res!831029) b!1851930))

(assert (= (and b!1851930 res!831030) b!1851919))

(assert (= (and b!1851919 res!831028) b!1851922))

(assert (= (and b!1851922 res!831031) b!1851924))

(assert (= (and b!1851924 res!831027) b!1851934))

(assert (= (and b!1851934 (not res!831032)) b!1851923))

(assert (= (and b!1851916 condMapEmpty!8814) mapIsEmpty!8815))

(assert (= (and b!1851916 (not condMapEmpty!8814)) mapNonEmpty!8814))

(assert (= b!1851937 b!1851916))

(assert (= b!1851936 b!1851937))

(assert (= b!1851920 b!1851936))

(assert (= (and b!1851932 ((_ is LongMap!1893) (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))) b!1851920))

(assert (= b!1851915 b!1851932))

(assert (= (and b!1851929 ((_ is HashMap!1837) (cache!2218 cacheUp!441))) b!1851915))

(assert (= start!184806 b!1851929))

(assert (= start!184806 b!1851927))

(assert (= (and b!1851921 condMapEmpty!8815) mapIsEmpty!8814))

(assert (= (and b!1851921 (not condMapEmpty!8815)) mapNonEmpty!8815))

(assert (= b!1851917 b!1851921))

(assert (= b!1851938 b!1851917))

(assert (= b!1851935 b!1851938))

(assert (= (and b!1851933 ((_ is LongMap!1894) (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))) b!1851935))

(assert (= b!1851931 b!1851933))

(assert (= (and b!1851926 ((_ is HashMap!1838) (cache!2219 cacheDown!454))) b!1851931))

(assert (= start!184806 b!1851926))

(assert (= b!1851928 b!1851918))

(assert (= b!1851925 b!1851928))

(assert (= (and start!184806 ((_ is Cons!20543) rules!1331)) b!1851925))

(declare-fun m!2278291 () Bool)

(assert (=> mapNonEmpty!8815 m!2278291))

(declare-fun m!2278293 () Bool)

(assert (=> b!1851917 m!2278293))

(declare-fun m!2278295 () Bool)

(assert (=> b!1851917 m!2278295))

(declare-fun m!2278297 () Bool)

(assert (=> b!1851937 m!2278297))

(declare-fun m!2278299 () Bool)

(assert (=> b!1851937 m!2278299))

(declare-fun m!2278301 () Bool)

(assert (=> b!1851924 m!2278301))

(declare-fun m!2278303 () Bool)

(assert (=> b!1851919 m!2278303))

(declare-fun m!2278305 () Bool)

(assert (=> b!1851930 m!2278305))

(declare-fun m!2278307 () Bool)

(assert (=> start!184806 m!2278307))

(declare-fun m!2278309 () Bool)

(assert (=> start!184806 m!2278309))

(declare-fun m!2278311 () Bool)

(assert (=> start!184806 m!2278311))

(declare-fun m!2278313 () Bool)

(assert (=> b!1851927 m!2278313))

(declare-fun m!2278315 () Bool)

(assert (=> b!1851928 m!2278315))

(declare-fun m!2278317 () Bool)

(assert (=> b!1851928 m!2278317))

(declare-fun m!2278319 () Bool)

(assert (=> b!1851934 m!2278319))

(declare-fun m!2278321 () Bool)

(assert (=> b!1851934 m!2278321))

(declare-fun m!2278323 () Bool)

(assert (=> b!1851934 m!2278323))

(declare-fun m!2278325 () Bool)

(assert (=> b!1851934 m!2278325))

(declare-fun m!2278327 () Bool)

(assert (=> b!1851922 m!2278327))

(declare-fun m!2278329 () Bool)

(assert (=> b!1851923 m!2278329))

(declare-fun m!2278331 () Bool)

(assert (=> b!1851923 m!2278331))

(declare-fun m!2278333 () Bool)

(assert (=> mapNonEmpty!8814 m!2278333))

(check-sat (not b_next!52571) (not b!1851922) (not mapNonEmpty!8815) (not b_next!52569) b_and!144105 (not b!1851930) (not b!1851923) b_and!144107 (not b!1851934) (not b!1851924) (not mapNonEmpty!8814) (not b!1851921) (not b!1851919) b_and!144097 (not b!1851925) (not b!1851927) b_and!144101 (not start!184806) b_and!144103 (not b_next!52567) (not b!1851937) (not b_next!52575) (not b_next!52577) b_and!144099 (not b!1851916) (not b!1851928) (not b!1851917) (not b_next!52573))
(check-sat (not b_next!52571) (not b_next!52569) b_and!144105 b_and!144097 b_and!144101 b_and!144107 b_and!144099 (not b_next!52573) b_and!144103 (not b_next!52567) (not b_next!52575) (not b_next!52577))
(get-model)

(declare-fun d!565949 () Bool)

(declare-fun res!831035 () Bool)

(declare-fun e!1183697 () Bool)

(assert (=> d!565949 (=> (not res!831035) (not e!1183697))))

(declare-fun rulesValid!1402 (LexerInterface!3300 List!20615) Bool)

(assert (=> d!565949 (= res!831035 (rulesValid!1402 thiss!12117 rules!1331))))

(assert (=> d!565949 (= (rulesInvariant!2967 thiss!12117 rules!1331) e!1183697)))

(declare-fun b!1851941 () Bool)

(declare-datatypes ((List!20617 0))(
  ( (Nil!20545) (Cons!20545 (h!25946 String!23539) (t!172419 List!20617)) )
))
(declare-fun noDuplicateTag!1400 (LexerInterface!3300 List!20615 List!20617) Bool)

(assert (=> b!1851941 (= e!1183697 (noDuplicateTag!1400 thiss!12117 rules!1331 Nil!20545))))

(assert (= (and d!565949 res!831035) b!1851941))

(declare-fun m!2278335 () Bool)

(assert (=> d!565949 m!2278335))

(declare-fun m!2278337 () Bool)

(assert (=> b!1851941 m!2278337))

(assert (=> b!1851919 d!565949))

(declare-fun d!565951 () Bool)

(declare-fun c!302095 () Bool)

(assert (=> d!565951 (= c!302095 ((_ is Node!6793) (c!302091 input!736)))))

(declare-fun e!1183702 () Bool)

(assert (=> d!565951 (= (inv!26922 (c!302091 input!736)) e!1183702)))

(declare-fun b!1851948 () Bool)

(declare-fun inv!26924 (Conc!6793) Bool)

(assert (=> b!1851948 (= e!1183702 (inv!26924 (c!302091 input!736)))))

(declare-fun b!1851949 () Bool)

(declare-fun e!1183703 () Bool)

(assert (=> b!1851949 (= e!1183702 e!1183703)))

(declare-fun res!831038 () Bool)

(assert (=> b!1851949 (= res!831038 (not ((_ is Leaf!9938) (c!302091 input!736))))))

(assert (=> b!1851949 (=> res!831038 e!1183703)))

(declare-fun b!1851950 () Bool)

(declare-fun inv!26925 (Conc!6793) Bool)

(assert (=> b!1851950 (= e!1183703 (inv!26925 (c!302091 input!736)))))

(assert (= (and d!565951 c!302095) b!1851948))

(assert (= (and d!565951 (not c!302095)) b!1851949))

(assert (= (and b!1851949 (not res!831038)) b!1851950))

(declare-fun m!2278339 () Bool)

(assert (=> b!1851948 m!2278339))

(declare-fun m!2278341 () Bool)

(assert (=> b!1851950 m!2278341))

(assert (=> b!1851927 d!565951))

(declare-fun d!565953 () Bool)

(assert (=> d!565953 (= (array_inv!2078 (_keys!2187 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))) (bvsge (size!16216 (_keys!2187 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))) #b00000000000000000000000000000000))))

(assert (=> b!1851937 d!565953))

(declare-fun d!565955 () Bool)

(assert (=> d!565955 (= (array_inv!2080 (_values!2172 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))) (bvsge (size!16215 (_values!2172 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))) #b00000000000000000000000000000000))))

(assert (=> b!1851937 d!565955))

(declare-fun d!565957 () Bool)

(assert (=> d!565957 (= (inv!26913 (tag!4092 (h!25944 rules!1331))) (= (mod (str.len (value!115377 (tag!4092 (h!25944 rules!1331)))) 2) 0))))

(assert (=> b!1851928 d!565957))

(declare-fun d!565959 () Bool)

(declare-fun res!831041 () Bool)

(declare-fun e!1183706 () Bool)

(assert (=> d!565959 (=> (not res!831041) (not e!1183706))))

(declare-fun semiInverseModEq!1492 (Int Int) Bool)

(assert (=> d!565959 (= res!831041 (semiInverseModEq!1492 (toChars!5110 (transformation!3678 (h!25944 rules!1331))) (toValue!5251 (transformation!3678 (h!25944 rules!1331)))))))

(assert (=> d!565959 (= (inv!26923 (transformation!3678 (h!25944 rules!1331))) e!1183706)))

(declare-fun b!1851953 () Bool)

(declare-fun equivClasses!1425 (Int Int) Bool)

(assert (=> b!1851953 (= e!1183706 (equivClasses!1425 (toChars!5110 (transformation!3678 (h!25944 rules!1331))) (toValue!5251 (transformation!3678 (h!25944 rules!1331)))))))

(assert (= (and d!565959 res!831041) b!1851953))

(declare-fun m!2278343 () Bool)

(assert (=> d!565959 m!2278343))

(declare-fun m!2278345 () Bool)

(assert (=> b!1851953 m!2278345))

(assert (=> b!1851928 d!565959))

(declare-fun d!565961 () Bool)

(assert (=> d!565961 (= (array_inv!2078 (_keys!2188 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))) (bvsge (size!16216 (_keys!2188 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))) #b00000000000000000000000000000000))))

(assert (=> b!1851917 d!565961))

(declare-fun d!565963 () Bool)

(assert (=> d!565963 (= (array_inv!2079 (_values!2173 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))) (bvsge (size!16217 (_values!2173 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))) #b00000000000000000000000000000000))))

(assert (=> b!1851917 d!565963))

(declare-fun d!565965 () Bool)

(declare-fun res!831044 () Bool)

(declare-fun e!1183709 () Bool)

(assert (=> d!565965 (=> (not res!831044) (not e!1183709))))

(assert (=> d!565965 (= res!831044 ((_ is HashMap!1837) (cache!2218 cacheUp!441)))))

(assert (=> d!565965 (= (inv!26919 cacheUp!441) e!1183709)))

(declare-fun b!1851956 () Bool)

(declare-fun validCacheMapUp!177 (MutableMap!1837) Bool)

(assert (=> b!1851956 (= e!1183709 (validCacheMapUp!177 (cache!2218 cacheUp!441)))))

(assert (= (and d!565965 res!831044) b!1851956))

(declare-fun m!2278347 () Bool)

(assert (=> b!1851956 m!2278347))

(assert (=> start!184806 d!565965))

(declare-fun d!565967 () Bool)

(declare-fun isBalanced!2116 (Conc!6793) Bool)

(assert (=> d!565967 (= (inv!26920 input!736) (isBalanced!2116 (c!302091 input!736)))))

(declare-fun bs!410140 () Bool)

(assert (= bs!410140 d!565967))

(declare-fun m!2278349 () Bool)

(assert (=> bs!410140 m!2278349))

(assert (=> start!184806 d!565967))

(declare-fun d!565969 () Bool)

(declare-fun res!831047 () Bool)

(declare-fun e!1183712 () Bool)

(assert (=> d!565969 (=> (not res!831047) (not e!1183712))))

(assert (=> d!565969 (= res!831047 ((_ is HashMap!1838) (cache!2219 cacheDown!454)))))

(assert (=> d!565969 (= (inv!26921 cacheDown!454) e!1183712)))

(declare-fun b!1851959 () Bool)

(declare-fun validCacheMapDown!175 (MutableMap!1838) Bool)

(assert (=> b!1851959 (= e!1183712 (validCacheMapDown!175 (cache!2219 cacheDown!454)))))

(assert (= (and d!565969 res!831047) b!1851959))

(declare-fun m!2278351 () Bool)

(assert (=> b!1851959 m!2278351))

(assert (=> start!184806 d!565969))

(declare-fun d!565971 () Bool)

(declare-fun list!8321 (Conc!6793) List!20613)

(assert (=> d!565971 (= (list!8319 (_2!11333 (_1!11334 lt!715793))) (list!8321 (c!302091 (_2!11333 (_1!11334 lt!715793)))))))

(declare-fun bs!410141 () Bool)

(assert (= bs!410141 d!565971))

(declare-fun m!2278353 () Bool)

(assert (=> bs!410141 m!2278353))

(assert (=> b!1851923 d!565971))

(declare-fun d!565973 () Bool)

(assert (=> d!565973 (= (list!8319 (_2!11333 lt!715790)) (list!8321 (c!302091 (_2!11333 lt!715790))))))

(declare-fun bs!410142 () Bool)

(assert (= bs!410142 d!565973))

(declare-fun m!2278355 () Bool)

(assert (=> bs!410142 m!2278355))

(assert (=> b!1851923 d!565973))

(declare-fun d!565975 () Bool)

(assert (=> d!565975 (= (valid!1512 cacheDown!454) (validCacheMapDown!175 (cache!2219 cacheDown!454)))))

(declare-fun bs!410143 () Bool)

(assert (= bs!410143 d!565975))

(assert (=> bs!410143 m!2278351))

(assert (=> b!1851924 d!565975))

(declare-fun d!565977 () Bool)

(declare-fun list!8322 (Conc!6794) List!20616)

(assert (=> d!565977 (= (list!8320 (_1!11333 (_1!11334 lt!715793))) (list!8322 (c!302092 (_1!11333 (_1!11334 lt!715793)))))))

(declare-fun bs!410144 () Bool)

(assert (= bs!410144 d!565977))

(declare-fun m!2278357 () Bool)

(assert (=> bs!410144 m!2278357))

(assert (=> b!1851934 d!565977))

(declare-fun d!565979 () Bool)

(assert (=> d!565979 (= (list!8320 (_1!11333 lt!715790)) (list!8322 (c!302092 (_1!11333 lt!715790))))))

(declare-fun bs!410145 () Bool)

(assert (= bs!410145 d!565979))

(declare-fun m!2278359 () Bool)

(assert (=> bs!410145 m!2278359))

(assert (=> b!1851934 d!565979))

(declare-fun b!1851970 () Bool)

(declare-fun e!1183719 () Bool)

(declare-fun lt!715796 () tuple2!19816)

(assert (=> b!1851970 (= e!1183719 (= (_2!11333 lt!715796) input!736))))

(declare-fun d!565981 () Bool)

(declare-fun e!1183721 () Bool)

(assert (=> d!565981 e!1183721))

(declare-fun res!831056 () Bool)

(assert (=> d!565981 (=> (not res!831056) (not e!1183721))))

(assert (=> d!565981 (= res!831056 e!1183719)))

(declare-fun c!302099 () Bool)

(declare-fun size!16219 (BalanceConc!13510) Int)

(assert (=> d!565981 (= c!302099 (> (size!16219 (_1!11333 lt!715796)) 0))))

(declare-fun lexTailRecV2!654 (LexerInterface!3300 List!20615 BalanceConc!13508 BalanceConc!13508 BalanceConc!13508 BalanceConc!13510) tuple2!19816)

(assert (=> d!565981 (= lt!715796 (lexTailRecV2!654 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794)))))

(assert (=> d!565981 (= (lex!1500 thiss!12117 rules!1331 input!736) lt!715796)))

(declare-fun b!1851971 () Bool)

(declare-fun res!831055 () Bool)

(assert (=> b!1851971 (=> (not res!831055) (not e!1183721))))

(declare-datatypes ((tuple2!19818 0))(
  ( (tuple2!19819 (_1!11335 List!20616) (_2!11335 List!20613)) )
))
(declare-fun lexList!931 (LexerInterface!3300 List!20615 List!20613) tuple2!19818)

(assert (=> b!1851971 (= res!831055 (= (list!8320 (_1!11333 lt!715796)) (_1!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 input!736)))))))

(declare-fun b!1851972 () Bool)

(declare-fun e!1183720 () Bool)

(assert (=> b!1851972 (= e!1183719 e!1183720)))

(declare-fun res!831054 () Bool)

(declare-fun size!16220 (BalanceConc!13508) Int)

(assert (=> b!1851972 (= res!831054 (< (size!16220 (_2!11333 lt!715796)) (size!16220 input!736)))))

(assert (=> b!1851972 (=> (not res!831054) (not e!1183720))))

(declare-fun b!1851973 () Bool)

(declare-fun isEmpty!12804 (BalanceConc!13510) Bool)

(assert (=> b!1851973 (= e!1183720 (not (isEmpty!12804 (_1!11333 lt!715796))))))

(declare-fun b!1851974 () Bool)

(assert (=> b!1851974 (= e!1183721 (= (list!8319 (_2!11333 lt!715796)) (_2!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 input!736)))))))

(assert (= (and d!565981 c!302099) b!1851972))

(assert (= (and d!565981 (not c!302099)) b!1851970))

(assert (= (and b!1851972 res!831054) b!1851973))

(assert (= (and d!565981 res!831056) b!1851971))

(assert (= (and b!1851971 res!831055) b!1851974))

(declare-fun m!2278361 () Bool)

(assert (=> b!1851973 m!2278361))

(declare-fun m!2278363 () Bool)

(assert (=> d!565981 m!2278363))

(declare-fun m!2278365 () Bool)

(assert (=> d!565981 m!2278365))

(declare-fun m!2278367 () Bool)

(assert (=> b!1851972 m!2278367))

(declare-fun m!2278369 () Bool)

(assert (=> b!1851972 m!2278369))

(declare-fun m!2278371 () Bool)

(assert (=> b!1851971 m!2278371))

(declare-fun m!2278373 () Bool)

(assert (=> b!1851971 m!2278373))

(assert (=> b!1851971 m!2278373))

(declare-fun m!2278375 () Bool)

(assert (=> b!1851971 m!2278375))

(declare-fun m!2278377 () Bool)

(assert (=> b!1851974 m!2278377))

(assert (=> b!1851974 m!2278373))

(assert (=> b!1851974 m!2278373))

(assert (=> b!1851974 m!2278375))

(assert (=> b!1851934 d!565981))

(declare-fun e!1183736 () Bool)

(declare-fun lt!715883 () tuple3!1922)

(declare-fun b!1851993 () Bool)

(declare-fun lexTailRec!8 (LexerInterface!3300 List!20615 BalanceConc!13508 BalanceConc!13508 BalanceConc!13508 BalanceConc!13510) tuple2!19816)

(assert (=> b!1851993 (= e!1183736 (= (list!8319 (_2!11333 (_1!11334 lt!715883))) (list!8319 (_2!11333 (lexTailRec!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794))))))))

(declare-fun b!1851994 () Bool)

(declare-fun e!1183735 () tuple2!19816)

(assert (=> b!1851994 (= e!1183735 (tuple2!19817 (BalanceConc!13511 Empty!6794) input!736))))

(declare-fun d!565983 () Bool)

(assert (=> d!565983 e!1183736))

(declare-fun res!831059 () Bool)

(assert (=> d!565983 (=> (not res!831059) (not e!1183736))))

(assert (=> d!565983 (= res!831059 (= (list!8320 (_1!11333 (_1!11334 lt!715883))) (list!8320 (_1!11333 (lexTailRec!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794))))))))

(declare-fun e!1183732 () tuple3!1922)

(assert (=> d!565983 (= lt!715883 e!1183732)))

(declare-fun c!302111 () Bool)

(declare-datatypes ((tuple2!19820 0))(
  ( (tuple2!19821 (_1!11336 Token!6908) (_2!11336 BalanceConc!13508)) )
))
(declare-datatypes ((Option!4231 0))(
  ( (None!4230) (Some!4230 (v!26025 tuple2!19820)) )
))
(declare-datatypes ((tuple3!1924 0))(
  ( (tuple3!1925 (_1!11337 Option!4231) (_2!11337 CacheUp!1138) (_3!1426 CacheDown!1134)) )
))
(declare-fun lt!715881 () tuple3!1924)

(assert (=> d!565983 (= c!302111 ((_ is Some!4230) (_1!11337 lt!715881)))))

(declare-fun maxPrefixZipperSequenceMem!2 (LexerInterface!3300 List!20615 BalanceConc!13508 CacheUp!1138 CacheDown!1134) tuple3!1924)

(assert (=> d!565983 (= lt!715881 (maxPrefixZipperSequenceMem!2 thiss!12117 rules!1331 input!736 cacheUp!441 cacheDown!454))))

(declare-datatypes ((Unit!35142 0))(
  ( (Unit!35143) )
))
(declare-fun lt!715860 () Unit!35142)

(declare-fun Unit!35144 () Unit!35142)

(assert (=> d!565983 (= lt!715860 Unit!35144)))

(assert (=> d!565983 (= (lex!1500 thiss!12117 rules!1331 input!736) (lexTailRecV2!654 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794)))))

(declare-fun lt!715862 () Unit!35142)

(declare-fun Unit!35145 () Unit!35142)

(assert (=> d!565983 (= lt!715862 Unit!35145)))

(declare-fun e!1183733 () tuple2!19816)

(assert (=> d!565983 (= (lexTailRec!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794)) e!1183733)))

(declare-fun c!302110 () Bool)

(declare-fun lt!715877 () Option!4231)

(assert (=> d!565983 (= c!302110 ((_ is Some!4230) lt!715877))))

(declare-fun maxPrefixZipperSequence!767 (LexerInterface!3300 List!20615 BalanceConc!13508) Option!4231)

(assert (=> d!565983 (= lt!715877 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 input!736))))

(assert (=> d!565983 (= (lexTailRecMem!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794) cacheUp!441 cacheDown!454) lt!715883)))

(declare-fun b!1851995 () Bool)

(declare-fun lt!715861 () tuple3!1922)

(assert (=> b!1851995 (= e!1183732 (tuple3!1923 (_1!11334 lt!715861) (_2!11334 lt!715861) (_3!1425 lt!715861)))))

(declare-fun ++!5550 (BalanceConc!13508 BalanceConc!13508) BalanceConc!13508)

(declare-fun charsOf!2294 (Token!6908) BalanceConc!13508)

(declare-fun append!594 (BalanceConc!13510 Token!6908) BalanceConc!13510)

(assert (=> b!1851995 (= lt!715861 (lexTailRecMem!8 thiss!12117 rules!1331 input!736 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) (_2!11336 (v!26025 (_1!11337 lt!715881))) (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))) (_2!11337 lt!715881) (_3!1426 lt!715881)))))

(declare-fun b!1851996 () Bool)

(assert (=> b!1851996 (= e!1183732 (tuple3!1923 (tuple2!19817 (BalanceConc!13511 Empty!6794) input!736) (_2!11337 lt!715881) (_3!1426 lt!715881)))))

(declare-fun lt!715857 () tuple2!19816)

(declare-fun b!1851997 () Bool)

(declare-fun lt!715866 () Option!4231)

(declare-fun lexRec!401 (LexerInterface!3300 List!20615 BalanceConc!13508) tuple2!19816)

(assert (=> b!1851997 (= lt!715857 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715866))))))

(declare-fun prepend!875 (BalanceConc!13510 Token!6908) BalanceConc!13510)

(assert (=> b!1851997 (= e!1183735 (tuple2!19817 (prepend!875 (_1!11333 lt!715857) (_1!11336 (v!26025 lt!715866))) (_2!11333 lt!715857)))))

(declare-fun b!1851998 () Bool)

(assert (=> b!1851998 (= e!1183733 (lexTailRec!8 thiss!12117 rules!1331 input!736 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))) (_2!11336 (v!26025 lt!715877)) (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877)))))))

(declare-fun lt!715863 () tuple2!19816)

(assert (=> b!1851998 (= lt!715863 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715877))))))

(declare-fun lt!715859 () List!20613)

(assert (=> b!1851998 (= lt!715859 (list!8319 (BalanceConc!13509 Empty!6793)))))

(declare-fun lt!715864 () List!20613)

(assert (=> b!1851998 (= lt!715864 (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))

(declare-fun lt!715874 () List!20613)

(assert (=> b!1851998 (= lt!715874 (list!8319 (_2!11336 (v!26025 lt!715877))))))

(declare-fun lt!715858 () Unit!35142)

(declare-fun lemmaConcatAssociativity!1093 (List!20613 List!20613 List!20613) Unit!35142)

(assert (=> b!1851998 (= lt!715858 (lemmaConcatAssociativity!1093 lt!715859 lt!715864 lt!715874))))

(declare-fun ++!5551 (List!20613 List!20613) List!20613)

(assert (=> b!1851998 (= (++!5551 (++!5551 lt!715859 lt!715864) lt!715874) (++!5551 lt!715859 (++!5551 lt!715864 lt!715874)))))

(declare-fun lt!715878 () Unit!35142)

(assert (=> b!1851998 (= lt!715878 lt!715858)))

(assert (=> b!1851998 (= lt!715866 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 input!736))))

(declare-fun c!302109 () Bool)

(assert (=> b!1851998 (= c!302109 ((_ is Some!4230) lt!715866))))

(assert (=> b!1851998 (= (lexRec!401 thiss!12117 rules!1331 input!736) e!1183735)))

(declare-fun lt!715880 () Unit!35142)

(declare-fun Unit!35146 () Unit!35142)

(assert (=> b!1851998 (= lt!715880 Unit!35146)))

(declare-fun lt!715856 () List!20616)

(assert (=> b!1851998 (= lt!715856 (list!8320 (BalanceConc!13511 Empty!6794)))))

(declare-fun lt!715879 () List!20616)

(assert (=> b!1851998 (= lt!715879 (Cons!20544 (_1!11336 (v!26025 lt!715877)) Nil!20544))))

(declare-fun lt!715867 () List!20616)

(assert (=> b!1851998 (= lt!715867 (list!8320 (_1!11333 lt!715863)))))

(declare-fun lt!715870 () Unit!35142)

(declare-fun lemmaConcatAssociativity!1094 (List!20616 List!20616 List!20616) Unit!35142)

(assert (=> b!1851998 (= lt!715870 (lemmaConcatAssociativity!1094 lt!715856 lt!715879 lt!715867))))

(declare-fun ++!5552 (List!20616 List!20616) List!20616)

(assert (=> b!1851998 (= (++!5552 (++!5552 lt!715856 lt!715879) lt!715867) (++!5552 lt!715856 (++!5552 lt!715879 lt!715867)))))

(declare-fun lt!715882 () Unit!35142)

(assert (=> b!1851998 (= lt!715882 lt!715870)))

(declare-fun lt!715868 () List!20613)

(assert (=> b!1851998 (= lt!715868 (++!5551 (list!8319 (BalanceConc!13509 Empty!6793)) (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877))))))))

(declare-fun lt!715876 () List!20613)

(assert (=> b!1851998 (= lt!715876 (list!8319 (_2!11336 (v!26025 lt!715877))))))

(declare-fun lt!715875 () List!20616)

(assert (=> b!1851998 (= lt!715875 (list!8320 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877)))))))

(declare-fun lt!715872 () Unit!35142)

(declare-fun lemmaLexThenLexPrefix!289 (LexerInterface!3300 List!20615 List!20613 List!20613 List!20616 List!20616 List!20613) Unit!35142)

(assert (=> b!1851998 (= lt!715872 (lemmaLexThenLexPrefix!289 thiss!12117 rules!1331 lt!715868 lt!715876 lt!715875 (list!8320 (_1!11333 lt!715863)) (list!8319 (_2!11333 lt!715863))))))

(assert (=> b!1851998 (= (lexList!931 thiss!12117 rules!1331 lt!715868) (tuple2!19819 lt!715875 Nil!20541))))

(declare-fun lt!715865 () Unit!35142)

(assert (=> b!1851998 (= lt!715865 lt!715872)))

(declare-fun lt!715869 () BalanceConc!13508)

(assert (=> b!1851998 (= lt!715869 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))

(declare-fun lt!715855 () Option!4231)

(assert (=> b!1851998 (= lt!715855 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 lt!715869))))

(declare-fun c!302108 () Bool)

(assert (=> b!1851998 (= c!302108 ((_ is Some!4230) lt!715855))))

(declare-fun e!1183734 () tuple2!19816)

(assert (=> b!1851998 (= (lexRec!401 thiss!12117 rules!1331 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877))))) e!1183734)))

(declare-fun lt!715873 () Unit!35142)

(declare-fun Unit!35147 () Unit!35142)

(assert (=> b!1851998 (= lt!715873 Unit!35147)))

(declare-fun lt!715871 () tuple2!19816)

(declare-fun b!1851999 () Bool)

(assert (=> b!1851999 (= lt!715871 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715855))))))

(assert (=> b!1851999 (= e!1183734 (tuple2!19817 (prepend!875 (_1!11333 lt!715871) (_1!11336 (v!26025 lt!715855))) (_2!11333 lt!715871)))))

(declare-fun b!1852000 () Bool)

(assert (=> b!1852000 (= e!1183733 (tuple2!19817 (BalanceConc!13511 Empty!6794) input!736))))

(declare-fun b!1852001 () Bool)

(assert (=> b!1852001 (= e!1183734 (tuple2!19817 (BalanceConc!13511 Empty!6794) lt!715869))))

(assert (= (and d!565983 c!302110) b!1851998))

(assert (= (and d!565983 (not c!302110)) b!1852000))

(assert (= (and b!1851998 c!302109) b!1851997))

(assert (= (and b!1851998 (not c!302109)) b!1851994))

(assert (= (and b!1851998 c!302108) b!1851999))

(assert (= (and b!1851998 (not c!302108)) b!1852001))

(assert (= (and d!565983 c!302111) b!1851995))

(assert (= (and d!565983 (not c!302111)) b!1851996))

(assert (= (and d!565983 res!831059) b!1851993))

(declare-fun m!2278379 () Bool)

(assert (=> b!1851998 m!2278379))

(declare-fun m!2278381 () Bool)

(assert (=> b!1851998 m!2278381))

(declare-fun m!2278383 () Bool)

(assert (=> b!1851998 m!2278383))

(declare-fun m!2278385 () Bool)

(assert (=> b!1851998 m!2278385))

(declare-fun m!2278387 () Bool)

(assert (=> b!1851998 m!2278387))

(declare-fun m!2278389 () Bool)

(assert (=> b!1851998 m!2278389))

(declare-fun m!2278391 () Bool)

(assert (=> b!1851998 m!2278391))

(declare-fun m!2278393 () Bool)

(assert (=> b!1851998 m!2278393))

(assert (=> b!1851998 m!2278379))

(assert (=> b!1851998 m!2278391))

(assert (=> b!1851998 m!2278387))

(declare-fun m!2278395 () Bool)

(assert (=> b!1851998 m!2278395))

(declare-fun m!2278397 () Bool)

(assert (=> b!1851998 m!2278397))

(declare-fun m!2278399 () Bool)

(assert (=> b!1851998 m!2278399))

(assert (=> b!1851998 m!2278397))

(declare-fun m!2278401 () Bool)

(assert (=> b!1851998 m!2278401))

(declare-fun m!2278403 () Bool)

(assert (=> b!1851998 m!2278403))

(declare-fun m!2278405 () Bool)

(assert (=> b!1851998 m!2278405))

(assert (=> b!1851998 m!2278395))

(declare-fun m!2278407 () Bool)

(assert (=> b!1851998 m!2278407))

(declare-fun m!2278409 () Bool)

(assert (=> b!1851998 m!2278409))

(declare-fun m!2278411 () Bool)

(assert (=> b!1851998 m!2278411))

(declare-fun m!2278413 () Bool)

(assert (=> b!1851998 m!2278413))

(assert (=> b!1851998 m!2278407))

(assert (=> b!1851998 m!2278403))

(declare-fun m!2278415 () Bool)

(assert (=> b!1851998 m!2278415))

(declare-fun m!2278417 () Bool)

(assert (=> b!1851998 m!2278417))

(assert (=> b!1851998 m!2278387))

(assert (=> b!1851998 m!2278407))

(declare-fun m!2278419 () Bool)

(assert (=> b!1851998 m!2278419))

(assert (=> b!1851998 m!2278391))

(declare-fun m!2278421 () Bool)

(assert (=> b!1851998 m!2278421))

(assert (=> b!1851998 m!2278393))

(declare-fun m!2278423 () Bool)

(assert (=> b!1851998 m!2278423))

(assert (=> b!1851998 m!2278421))

(declare-fun m!2278425 () Bool)

(assert (=> b!1851998 m!2278425))

(declare-fun m!2278427 () Bool)

(assert (=> b!1851998 m!2278427))

(declare-fun m!2278429 () Bool)

(assert (=> b!1851998 m!2278429))

(assert (=> b!1851998 m!2278411))

(declare-fun m!2278431 () Bool)

(assert (=> b!1851998 m!2278431))

(assert (=> b!1851998 m!2278427))

(declare-fun m!2278433 () Bool)

(assert (=> b!1851998 m!2278433))

(declare-fun m!2278435 () Bool)

(assert (=> b!1851998 m!2278435))

(declare-fun m!2278437 () Bool)

(assert (=> b!1851993 m!2278437))

(declare-fun m!2278439 () Bool)

(assert (=> b!1851993 m!2278439))

(declare-fun m!2278441 () Bool)

(assert (=> b!1851993 m!2278441))

(declare-fun m!2278443 () Bool)

(assert (=> b!1851999 m!2278443))

(declare-fun m!2278445 () Bool)

(assert (=> b!1851999 m!2278445))

(declare-fun m!2278447 () Bool)

(assert (=> b!1851997 m!2278447))

(declare-fun m!2278449 () Bool)

(assert (=> b!1851997 m!2278449))

(assert (=> d!565983 m!2278323))

(declare-fun m!2278451 () Bool)

(assert (=> d!565983 m!2278451))

(assert (=> d!565983 m!2278439))

(declare-fun m!2278453 () Bool)

(assert (=> d!565983 m!2278453))

(assert (=> d!565983 m!2278435))

(assert (=> d!565983 m!2278365))

(declare-fun m!2278455 () Bool)

(assert (=> d!565983 m!2278455))

(declare-fun m!2278457 () Bool)

(assert (=> b!1851995 m!2278457))

(assert (=> b!1851995 m!2278457))

(declare-fun m!2278459 () Bool)

(assert (=> b!1851995 m!2278459))

(declare-fun m!2278461 () Bool)

(assert (=> b!1851995 m!2278461))

(assert (=> b!1851995 m!2278459))

(assert (=> b!1851995 m!2278461))

(declare-fun m!2278463 () Bool)

(assert (=> b!1851995 m!2278463))

(assert (=> b!1851934 d!565983))

(declare-fun d!565985 () Bool)

(assert (=> d!565985 (= (isEmpty!12803 rules!1331) ((_ is Nil!20543) rules!1331))))

(assert (=> b!1851930 d!565985))

(declare-fun d!565987 () Bool)

(assert (=> d!565987 (= (valid!1511 cacheUp!441) (validCacheMapUp!177 (cache!2218 cacheUp!441)))))

(declare-fun bs!410146 () Bool)

(assert (= bs!410146 d!565987))

(assert (=> bs!410146 m!2278347))

(assert (=> b!1851922 d!565987))

(declare-fun setRes!11425 () Bool)

(declare-fun setElem!11424 () Context!1902)

(declare-fun e!1183750 () Bool)

(declare-fun setNonEmpty!11424 () Bool)

(declare-fun tp!524825 () Bool)

(declare-fun inv!26926 (Context!1902) Bool)

(assert (=> setNonEmpty!11424 (= setRes!11425 (and tp!524825 (inv!26926 setElem!11424) e!1183750))))

(declare-fun mapValue!8818 () List!20612)

(declare-fun setRest!11424 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11424 (= (_2!11332 (h!25941 mapValue!8818)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11424 true) setRest!11424))))

(declare-fun b!1852016 () Bool)

(declare-fun tp!524824 () Bool)

(assert (=> b!1852016 (= e!1183750 tp!524824)))

(declare-fun b!1852017 () Bool)

(declare-fun e!1183749 () Bool)

(declare-fun tp!524819 () Bool)

(assert (=> b!1852017 (= e!1183749 tp!524819)))

(declare-fun setIsEmpty!11424 () Bool)

(assert (=> setIsEmpty!11424 setRes!11425))

(declare-fun setElem!11425 () Context!1902)

(declare-fun setRes!11424 () Bool)

(declare-fun setNonEmpty!11425 () Bool)

(declare-fun tp!524823 () Bool)

(assert (=> setNonEmpty!11425 (= setRes!11424 (and tp!524823 (inv!26926 setElem!11425) e!1183749))))

(declare-fun mapDefault!8818 () List!20612)

(declare-fun setRest!11425 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11425 (= (_2!11332 (h!25941 mapDefault!8818)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11425 true) setRest!11425))))

(declare-fun b!1852018 () Bool)

(declare-fun e!1183754 () Bool)

(declare-fun tp!524826 () Bool)

(assert (=> b!1852018 (= e!1183754 tp!524826)))

(declare-fun condMapEmpty!8818 () Bool)

(assert (=> mapNonEmpty!8815 (= condMapEmpty!8818 (= mapRest!8814 ((as const (Array (_ BitVec 32) List!20612)) mapDefault!8818)))))

(declare-fun e!1183751 () Bool)

(declare-fun mapRes!8818 () Bool)

(assert (=> mapNonEmpty!8815 (= tp!524777 (and e!1183751 mapRes!8818))))

(declare-fun b!1852019 () Bool)

(declare-fun e!1183753 () Bool)

(declare-fun tp!524817 () Bool)

(assert (=> b!1852019 (= e!1183753 tp!524817)))

(declare-fun mapIsEmpty!8818 () Bool)

(assert (=> mapIsEmpty!8818 mapRes!8818))

(declare-fun mapNonEmpty!8818 () Bool)

(declare-fun tp!524822 () Bool)

(declare-fun e!1183752 () Bool)

(assert (=> mapNonEmpty!8818 (= mapRes!8818 (and tp!524822 e!1183752))))

(declare-fun mapKey!8818 () (_ BitVec 32))

(declare-fun mapRest!8818 () (Array (_ BitVec 32) List!20612))

(assert (=> mapNonEmpty!8818 (= mapRest!8814 (store mapRest!8818 mapKey!8818 mapValue!8818))))

(declare-fun tp!524818 () Bool)

(declare-fun tp_is_empty!8499 () Bool)

(declare-fun b!1852020 () Bool)

(declare-fun tp!524820 () Bool)

(assert (=> b!1852020 (= e!1183751 (and tp!524818 (inv!26926 (_2!11331 (_1!11332 (h!25941 mapDefault!8818)))) e!1183753 tp_is_empty!8499 setRes!11424 tp!524820))))

(declare-fun condSetEmpty!11424 () Bool)

(assert (=> b!1852020 (= condSetEmpty!11424 (= (_2!11332 (h!25941 mapDefault!8818)) ((as const (Array Context!1902 Bool)) false)))))

(declare-fun tp!524816 () Bool)

(declare-fun tp!524821 () Bool)

(declare-fun b!1852021 () Bool)

(assert (=> b!1852021 (= e!1183752 (and tp!524816 (inv!26926 (_2!11331 (_1!11332 (h!25941 mapValue!8818)))) e!1183754 tp_is_empty!8499 setRes!11425 tp!524821))))

(declare-fun condSetEmpty!11425 () Bool)

(assert (=> b!1852021 (= condSetEmpty!11425 (= (_2!11332 (h!25941 mapValue!8818)) ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setIsEmpty!11425 () Bool)

(assert (=> setIsEmpty!11425 setRes!11424))

(assert (= (and mapNonEmpty!8815 condMapEmpty!8818) mapIsEmpty!8818))

(assert (= (and mapNonEmpty!8815 (not condMapEmpty!8818)) mapNonEmpty!8818))

(assert (= b!1852021 b!1852018))

(assert (= (and b!1852021 condSetEmpty!11425) setIsEmpty!11424))

(assert (= (and b!1852021 (not condSetEmpty!11425)) setNonEmpty!11424))

(assert (= setNonEmpty!11424 b!1852016))

(assert (= (and mapNonEmpty!8818 ((_ is Cons!20540) mapValue!8818)) b!1852021))

(assert (= b!1852020 b!1852019))

(assert (= (and b!1852020 condSetEmpty!11424) setIsEmpty!11425))

(assert (= (and b!1852020 (not condSetEmpty!11424)) setNonEmpty!11425))

(assert (= setNonEmpty!11425 b!1852017))

(assert (= (and mapNonEmpty!8815 ((_ is Cons!20540) mapDefault!8818)) b!1852020))

(declare-fun m!2278465 () Bool)

(assert (=> b!1852020 m!2278465))

(declare-fun m!2278467 () Bool)

(assert (=> setNonEmpty!11424 m!2278467))

(declare-fun m!2278469 () Bool)

(assert (=> b!1852021 m!2278469))

(declare-fun m!2278471 () Bool)

(assert (=> setNonEmpty!11425 m!2278471))

(declare-fun m!2278473 () Bool)

(assert (=> mapNonEmpty!8818 m!2278473))

(declare-fun setIsEmpty!11428 () Bool)

(declare-fun setRes!11428 () Bool)

(assert (=> setIsEmpty!11428 setRes!11428))

(declare-fun b!1852030 () Bool)

(declare-fun e!1183762 () Bool)

(declare-fun tp!524840 () Bool)

(assert (=> b!1852030 (= e!1183762 tp!524840)))

(declare-fun e!1183761 () Bool)

(assert (=> mapNonEmpty!8815 (= tp!524783 e!1183761)))

(declare-fun setNonEmpty!11428 () Bool)

(declare-fun setElem!11428 () Context!1902)

(declare-fun e!1183763 () Bool)

(declare-fun tp!524837 () Bool)

(assert (=> setNonEmpty!11428 (= setRes!11428 (and tp!524837 (inv!26926 setElem!11428) e!1183763))))

(declare-fun setRest!11428 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11428 (= (_2!11332 (h!25941 mapValue!8815)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11428 true) setRest!11428))))

(declare-fun b!1852031 () Bool)

(declare-fun tp!524839 () Bool)

(assert (=> b!1852031 (= e!1183763 tp!524839)))

(declare-fun b!1852032 () Bool)

(declare-fun tp!524841 () Bool)

(declare-fun tp!524838 () Bool)

(assert (=> b!1852032 (= e!1183761 (and tp!524841 (inv!26926 (_2!11331 (_1!11332 (h!25941 mapValue!8815)))) e!1183762 tp_is_empty!8499 setRes!11428 tp!524838))))

(declare-fun condSetEmpty!11428 () Bool)

(assert (=> b!1852032 (= condSetEmpty!11428 (= (_2!11332 (h!25941 mapValue!8815)) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852032 b!1852030))

(assert (= (and b!1852032 condSetEmpty!11428) setIsEmpty!11428))

(assert (= (and b!1852032 (not condSetEmpty!11428)) setNonEmpty!11428))

(assert (= setNonEmpty!11428 b!1852031))

(assert (= (and mapNonEmpty!8815 ((_ is Cons!20540) mapValue!8815)) b!1852032))

(declare-fun m!2278475 () Bool)

(assert (=> setNonEmpty!11428 m!2278475))

(declare-fun m!2278477 () Bool)

(assert (=> b!1852032 m!2278477))

(declare-fun e!1183769 () Bool)

(declare-fun tp!524850 () Bool)

(declare-fun tp!524848 () Bool)

(declare-fun b!1852041 () Bool)

(assert (=> b!1852041 (= e!1183769 (and (inv!26922 (left!16477 (c!302091 input!736))) tp!524848 (inv!26922 (right!16807 (c!302091 input!736))) tp!524850))))

(declare-fun b!1852043 () Bool)

(declare-fun e!1183768 () Bool)

(declare-fun tp!524849 () Bool)

(assert (=> b!1852043 (= e!1183768 tp!524849)))

(declare-fun b!1852042 () Bool)

(declare-fun inv!26927 (IArray!13591) Bool)

(assert (=> b!1852042 (= e!1183769 (and (inv!26927 (xs!9669 (c!302091 input!736))) e!1183768))))

(assert (=> b!1851927 (= tp!524788 (and (inv!26922 (c!302091 input!736)) e!1183769))))

(assert (= (and b!1851927 ((_ is Node!6793) (c!302091 input!736))) b!1852041))

(assert (= b!1852042 b!1852043))

(assert (= (and b!1851927 ((_ is Leaf!9938) (c!302091 input!736))) b!1852042))

(declare-fun m!2278479 () Bool)

(assert (=> b!1852041 m!2278479))

(declare-fun m!2278481 () Bool)

(assert (=> b!1852041 m!2278481))

(declare-fun m!2278483 () Bool)

(assert (=> b!1852042 m!2278483))

(assert (=> b!1851927 m!2278313))

(declare-fun b!1852052 () Bool)

(declare-fun e!1183776 () Bool)

(declare-fun tp!524859 () Bool)

(assert (=> b!1852052 (= e!1183776 tp!524859)))

(declare-fun setNonEmpty!11431 () Bool)

(declare-fun setRes!11431 () Bool)

(declare-fun setElem!11431 () Context!1902)

(declare-fun tp!524861 () Bool)

(assert (=> setNonEmpty!11431 (= setRes!11431 (and tp!524861 (inv!26926 setElem!11431) e!1183776))))

(declare-fun setRest!11431 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11431 (= (_2!11330 (h!25940 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11431 true) setRest!11431))))

(declare-fun setIsEmpty!11431 () Bool)

(assert (=> setIsEmpty!11431 setRes!11431))

(declare-fun tp!524862 () Bool)

(declare-fun e!1183778 () Bool)

(declare-fun b!1852053 () Bool)

(declare-fun e!1183777 () Bool)

(assert (=> b!1852053 (= e!1183777 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))))) e!1183778 tp_is_empty!8499 setRes!11431 tp!524862))))

(declare-fun condSetEmpty!11431 () Bool)

(assert (=> b!1852053 (= condSetEmpty!11431 (= (_2!11330 (h!25940 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> b!1851937 (= tp!524779 e!1183777)))

(declare-fun b!1852054 () Bool)

(declare-fun tp!524860 () Bool)

(assert (=> b!1852054 (= e!1183778 tp!524860)))

(assert (= b!1852053 b!1852054))

(assert (= (and b!1852053 condSetEmpty!11431) setIsEmpty!11431))

(assert (= (and b!1852053 (not condSetEmpty!11431)) setNonEmpty!11431))

(assert (= setNonEmpty!11431 b!1852052))

(assert (= (and b!1851937 ((_ is Cons!20539) (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))) b!1852053))

(declare-fun m!2278485 () Bool)

(assert (=> setNonEmpty!11431 m!2278485))

(declare-fun m!2278487 () Bool)

(assert (=> b!1852053 m!2278487))

(declare-fun b!1852055 () Bool)

(declare-fun e!1183779 () Bool)

(declare-fun tp!524863 () Bool)

(assert (=> b!1852055 (= e!1183779 tp!524863)))

(declare-fun tp!524865 () Bool)

(declare-fun setElem!11432 () Context!1902)

(declare-fun setNonEmpty!11432 () Bool)

(declare-fun setRes!11432 () Bool)

(assert (=> setNonEmpty!11432 (= setRes!11432 (and tp!524865 (inv!26926 setElem!11432) e!1183779))))

(declare-fun setRest!11432 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11432 (= (_2!11330 (h!25940 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11432 true) setRest!11432))))

(declare-fun setIsEmpty!11432 () Bool)

(assert (=> setIsEmpty!11432 setRes!11432))

(declare-fun tp!524866 () Bool)

(declare-fun b!1852056 () Bool)

(declare-fun e!1183781 () Bool)

(declare-fun e!1183780 () Bool)

(assert (=> b!1852056 (= e!1183780 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))))) e!1183781 tp_is_empty!8499 setRes!11432 tp!524866))))

(declare-fun condSetEmpty!11432 () Bool)

(assert (=> b!1852056 (= condSetEmpty!11432 (= (_2!11330 (h!25940 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> b!1851937 (= tp!524792 e!1183780)))

(declare-fun b!1852057 () Bool)

(declare-fun tp!524864 () Bool)

(assert (=> b!1852057 (= e!1183781 tp!524864)))

(assert (= b!1852056 b!1852057))

(assert (= (and b!1852056 condSetEmpty!11432) setIsEmpty!11432))

(assert (= (and b!1852056 (not condSetEmpty!11432)) setNonEmpty!11432))

(assert (= setNonEmpty!11432 b!1852055))

(assert (= (and b!1851937 ((_ is Cons!20539) (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))) b!1852056))

(declare-fun m!2278489 () Bool)

(assert (=> setNonEmpty!11432 m!2278489))

(declare-fun m!2278491 () Bool)

(assert (=> b!1852056 m!2278491))

(declare-fun b!1852069 () Bool)

(declare-fun e!1183784 () Bool)

(declare-fun tp!524879 () Bool)

(declare-fun tp!524878 () Bool)

(assert (=> b!1852069 (= e!1183784 (and tp!524879 tp!524878))))

(declare-fun b!1852071 () Bool)

(declare-fun tp!524877 () Bool)

(declare-fun tp!524881 () Bool)

(assert (=> b!1852071 (= e!1183784 (and tp!524877 tp!524881))))

(declare-fun b!1852068 () Bool)

(assert (=> b!1852068 (= e!1183784 tp_is_empty!8499)))

(declare-fun b!1852070 () Bool)

(declare-fun tp!524880 () Bool)

(assert (=> b!1852070 (= e!1183784 tp!524880)))

(assert (=> b!1851928 (= tp!524780 e!1183784)))

(assert (= (and b!1851928 ((_ is ElementMatch!5041) (regex!3678 (h!25944 rules!1331)))) b!1852068))

(assert (= (and b!1851928 ((_ is Concat!8835) (regex!3678 (h!25944 rules!1331)))) b!1852069))

(assert (= (and b!1851928 ((_ is Star!5041) (regex!3678 (h!25944 rules!1331)))) b!1852070))

(assert (= (and b!1851928 ((_ is Union!5041) (regex!3678 (h!25944 rules!1331)))) b!1852071))

(declare-fun b!1852082 () Bool)

(declare-fun b_free!51875 () Bool)

(declare-fun b_next!52579 () Bool)

(assert (=> b!1852082 (= b_free!51875 (not b_next!52579))))

(declare-fun tp!524892 () Bool)

(declare-fun b_and!144109 () Bool)

(assert (=> b!1852082 (= tp!524892 b_and!144109)))

(declare-fun b_free!51877 () Bool)

(declare-fun b_next!52581 () Bool)

(assert (=> b!1852082 (= b_free!51877 (not b_next!52581))))

(declare-fun tp!524893 () Bool)

(declare-fun b_and!144111 () Bool)

(assert (=> b!1852082 (= tp!524893 b_and!144111)))

(declare-fun e!1183793 () Bool)

(assert (=> b!1852082 (= e!1183793 (and tp!524892 tp!524893))))

(declare-fun b!1852081 () Bool)

(declare-fun e!1183796 () Bool)

(declare-fun tp!524891 () Bool)

(assert (=> b!1852081 (= e!1183796 (and tp!524891 (inv!26913 (tag!4092 (h!25944 (t!172417 rules!1331)))) (inv!26923 (transformation!3678 (h!25944 (t!172417 rules!1331)))) e!1183793))))

(declare-fun b!1852080 () Bool)

(declare-fun e!1183795 () Bool)

(declare-fun tp!524890 () Bool)

(assert (=> b!1852080 (= e!1183795 (and e!1183796 tp!524890))))

(assert (=> b!1851925 (= tp!524790 e!1183795)))

(assert (= b!1852081 b!1852082))

(assert (= b!1852080 b!1852081))

(assert (= (and b!1851925 ((_ is Cons!20543) (t!172417 rules!1331))) b!1852080))

(declare-fun m!2278493 () Bool)

(assert (=> b!1852081 m!2278493))

(declare-fun m!2278495 () Bool)

(assert (=> b!1852081 m!2278495))

(declare-fun setIsEmpty!11433 () Bool)

(declare-fun setRes!11433 () Bool)

(assert (=> setIsEmpty!11433 setRes!11433))

(declare-fun b!1852083 () Bool)

(declare-fun e!1183798 () Bool)

(declare-fun tp!524897 () Bool)

(assert (=> b!1852083 (= e!1183798 tp!524897)))

(declare-fun e!1183797 () Bool)

(assert (=> b!1851921 (= tp!524793 e!1183797)))

(declare-fun e!1183799 () Bool)

(declare-fun tp!524894 () Bool)

(declare-fun setNonEmpty!11433 () Bool)

(declare-fun setElem!11433 () Context!1902)

(assert (=> setNonEmpty!11433 (= setRes!11433 (and tp!524894 (inv!26926 setElem!11433) e!1183799))))

(declare-fun setRest!11433 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11433 (= (_2!11332 (h!25941 mapDefault!8814)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11433 true) setRest!11433))))

(declare-fun b!1852084 () Bool)

(declare-fun tp!524896 () Bool)

(assert (=> b!1852084 (= e!1183799 tp!524896)))

(declare-fun b!1852085 () Bool)

(declare-fun tp!524895 () Bool)

(declare-fun tp!524898 () Bool)

(assert (=> b!1852085 (= e!1183797 (and tp!524898 (inv!26926 (_2!11331 (_1!11332 (h!25941 mapDefault!8814)))) e!1183798 tp_is_empty!8499 setRes!11433 tp!524895))))

(declare-fun condSetEmpty!11433 () Bool)

(assert (=> b!1852085 (= condSetEmpty!11433 (= (_2!11332 (h!25941 mapDefault!8814)) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852085 b!1852083))

(assert (= (and b!1852085 condSetEmpty!11433) setIsEmpty!11433))

(assert (= (and b!1852085 (not condSetEmpty!11433)) setNonEmpty!11433))

(assert (= setNonEmpty!11433 b!1852084))

(assert (= (and b!1851921 ((_ is Cons!20540) mapDefault!8814)) b!1852085))

(declare-fun m!2278497 () Bool)

(assert (=> setNonEmpty!11433 m!2278497))

(declare-fun m!2278499 () Bool)

(assert (=> b!1852085 m!2278499))

(declare-fun b!1852086 () Bool)

(declare-fun e!1183800 () Bool)

(declare-fun tp!524899 () Bool)

(assert (=> b!1852086 (= e!1183800 tp!524899)))

(declare-fun tp!524901 () Bool)

(declare-fun setNonEmpty!11434 () Bool)

(declare-fun setRes!11434 () Bool)

(declare-fun setElem!11434 () Context!1902)

(assert (=> setNonEmpty!11434 (= setRes!11434 (and tp!524901 (inv!26926 setElem!11434) e!1183800))))

(declare-fun setRest!11434 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11434 (= (_2!11330 (h!25940 mapDefault!8815)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11434 true) setRest!11434))))

(declare-fun setIsEmpty!11434 () Bool)

(assert (=> setIsEmpty!11434 setRes!11434))

(declare-fun tp!524902 () Bool)

(declare-fun e!1183802 () Bool)

(declare-fun e!1183801 () Bool)

(declare-fun b!1852087 () Bool)

(assert (=> b!1852087 (= e!1183801 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 mapDefault!8815)))) e!1183802 tp_is_empty!8499 setRes!11434 tp!524902))))

(declare-fun condSetEmpty!11434 () Bool)

(assert (=> b!1852087 (= condSetEmpty!11434 (= (_2!11330 (h!25940 mapDefault!8815)) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> b!1851916 (= tp!524789 e!1183801)))

(declare-fun b!1852088 () Bool)

(declare-fun tp!524900 () Bool)

(assert (=> b!1852088 (= e!1183802 tp!524900)))

(assert (= b!1852087 b!1852088))

(assert (= (and b!1852087 condSetEmpty!11434) setIsEmpty!11434))

(assert (= (and b!1852087 (not condSetEmpty!11434)) setNonEmpty!11434))

(assert (= setNonEmpty!11434 b!1852086))

(assert (= (and b!1851916 ((_ is Cons!20539) mapDefault!8815)) b!1852087))

(declare-fun m!2278501 () Bool)

(assert (=> setNonEmpty!11434 m!2278501))

(declare-fun m!2278503 () Bool)

(assert (=> b!1852087 m!2278503))

(declare-fun setIsEmpty!11435 () Bool)

(declare-fun setRes!11435 () Bool)

(assert (=> setIsEmpty!11435 setRes!11435))

(declare-fun b!1852089 () Bool)

(declare-fun e!1183804 () Bool)

(declare-fun tp!524906 () Bool)

(assert (=> b!1852089 (= e!1183804 tp!524906)))

(declare-fun e!1183803 () Bool)

(assert (=> b!1851917 (= tp!524775 e!1183803)))

(declare-fun e!1183805 () Bool)

(declare-fun setNonEmpty!11435 () Bool)

(declare-fun tp!524903 () Bool)

(declare-fun setElem!11435 () Context!1902)

(assert (=> setNonEmpty!11435 (= setRes!11435 (and tp!524903 (inv!26926 setElem!11435) e!1183805))))

(declare-fun setRest!11435 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11435 (= (_2!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11435 true) setRest!11435))))

(declare-fun b!1852090 () Bool)

(declare-fun tp!524905 () Bool)

(assert (=> b!1852090 (= e!1183805 tp!524905)))

(declare-fun b!1852091 () Bool)

(declare-fun tp!524904 () Bool)

(declare-fun tp!524907 () Bool)

(assert (=> b!1852091 (= e!1183803 (and tp!524907 (inv!26926 (_2!11331 (_1!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))))) e!1183804 tp_is_empty!8499 setRes!11435 tp!524904))))

(declare-fun condSetEmpty!11435 () Bool)

(assert (=> b!1852091 (= condSetEmpty!11435 (= (_2!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852091 b!1852089))

(assert (= (and b!1852091 condSetEmpty!11435) setIsEmpty!11435))

(assert (= (and b!1852091 (not condSetEmpty!11435)) setNonEmpty!11435))

(assert (= setNonEmpty!11435 b!1852090))

(assert (= (and b!1851917 ((_ is Cons!20540) (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))) b!1852091))

(declare-fun m!2278505 () Bool)

(assert (=> setNonEmpty!11435 m!2278505))

(declare-fun m!2278507 () Bool)

(assert (=> b!1852091 m!2278507))

(declare-fun setIsEmpty!11436 () Bool)

(declare-fun setRes!11436 () Bool)

(assert (=> setIsEmpty!11436 setRes!11436))

(declare-fun b!1852092 () Bool)

(declare-fun e!1183807 () Bool)

(declare-fun tp!524911 () Bool)

(assert (=> b!1852092 (= e!1183807 tp!524911)))

(declare-fun e!1183806 () Bool)

(assert (=> b!1851917 (= tp!524776 e!1183806)))

(declare-fun tp!524908 () Bool)

(declare-fun setElem!11436 () Context!1902)

(declare-fun setNonEmpty!11436 () Bool)

(declare-fun e!1183808 () Bool)

(assert (=> setNonEmpty!11436 (= setRes!11436 (and tp!524908 (inv!26926 setElem!11436) e!1183808))))

(declare-fun setRest!11436 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11436 (= (_2!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11436 true) setRest!11436))))

(declare-fun b!1852093 () Bool)

(declare-fun tp!524910 () Bool)

(assert (=> b!1852093 (= e!1183808 tp!524910)))

(declare-fun tp!524912 () Bool)

(declare-fun b!1852094 () Bool)

(declare-fun tp!524909 () Bool)

(assert (=> b!1852094 (= e!1183806 (and tp!524912 (inv!26926 (_2!11331 (_1!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))))) e!1183807 tp_is_empty!8499 setRes!11436 tp!524909))))

(declare-fun condSetEmpty!11436 () Bool)

(assert (=> b!1852094 (= condSetEmpty!11436 (= (_2!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852094 b!1852092))

(assert (= (and b!1852094 condSetEmpty!11436) setIsEmpty!11436))

(assert (= (and b!1852094 (not condSetEmpty!11436)) setNonEmpty!11436))

(assert (= setNonEmpty!11436 b!1852093))

(assert (= (and b!1851917 ((_ is Cons!20540) (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))) b!1852094))

(declare-fun m!2278509 () Bool)

(assert (=> setNonEmpty!11436 m!2278509))

(declare-fun m!2278511 () Bool)

(assert (=> b!1852094 m!2278511))

(declare-fun setIsEmpty!11441 () Bool)

(declare-fun setRes!11442 () Bool)

(assert (=> setIsEmpty!11441 setRes!11442))

(declare-fun b!1852109 () Bool)

(declare-fun e!1183821 () Bool)

(declare-fun tp!524939 () Bool)

(assert (=> b!1852109 (= e!1183821 tp!524939)))

(declare-fun mapNonEmpty!8821 () Bool)

(declare-fun mapRes!8821 () Bool)

(declare-fun tp!524933 () Bool)

(declare-fun e!1183823 () Bool)

(assert (=> mapNonEmpty!8821 (= mapRes!8821 (and tp!524933 e!1183823))))

(declare-fun mapRest!8821 () (Array (_ BitVec 32) List!20611))

(declare-fun mapValue!8821 () List!20611)

(declare-fun mapKey!8821 () (_ BitVec 32))

(assert (=> mapNonEmpty!8821 (= mapRest!8815 (store mapRest!8821 mapKey!8821 mapValue!8821))))

(declare-fun setNonEmpty!11441 () Bool)

(declare-fun e!1183825 () Bool)

(declare-fun tp!524937 () Bool)

(declare-fun setElem!11441 () Context!1902)

(assert (=> setNonEmpty!11441 (= setRes!11442 (and tp!524937 (inv!26926 setElem!11441) e!1183825))))

(declare-fun setRest!11442 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11441 (= (_2!11330 (h!25940 mapValue!8821)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11441 true) setRest!11442))))

(declare-fun e!1183826 () Bool)

(declare-fun b!1852110 () Bool)

(declare-fun setRes!11441 () Bool)

(declare-fun mapDefault!8821 () List!20611)

(declare-fun e!1183822 () Bool)

(declare-fun tp!524931 () Bool)

(assert (=> b!1852110 (= e!1183826 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 mapDefault!8821)))) e!1183822 tp_is_empty!8499 setRes!11441 tp!524931))))

(declare-fun condSetEmpty!11441 () Bool)

(assert (=> b!1852110 (= condSetEmpty!11441 (= (_2!11330 (h!25940 mapDefault!8821)) ((as const (Array Context!1902 Bool)) false)))))

(declare-fun b!1852111 () Bool)

(declare-fun tp!524932 () Bool)

(assert (=> b!1852111 (= e!1183823 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 mapValue!8821)))) e!1183821 tp_is_empty!8499 setRes!11442 tp!524932))))

(declare-fun condSetEmpty!11442 () Bool)

(assert (=> b!1852111 (= condSetEmpty!11442 (= (_2!11330 (h!25940 mapValue!8821)) ((as const (Array Context!1902 Bool)) false)))))

(declare-fun mapIsEmpty!8821 () Bool)

(assert (=> mapIsEmpty!8821 mapRes!8821))

(declare-fun condMapEmpty!8821 () Bool)

(assert (=> mapNonEmpty!8814 (= condMapEmpty!8821 (= mapRest!8815 ((as const (Array (_ BitVec 32) List!20611)) mapDefault!8821)))))

(assert (=> mapNonEmpty!8814 (= tp!524782 (and e!1183826 mapRes!8821))))

(declare-fun setIsEmpty!11442 () Bool)

(assert (=> setIsEmpty!11442 setRes!11441))

(declare-fun b!1852112 () Bool)

(declare-fun tp!524936 () Bool)

(assert (=> b!1852112 (= e!1183825 tp!524936)))

(declare-fun b!1852113 () Bool)

(declare-fun tp!524935 () Bool)

(assert (=> b!1852113 (= e!1183822 tp!524935)))

(declare-fun setNonEmpty!11442 () Bool)

(declare-fun setElem!11442 () Context!1902)

(declare-fun e!1183824 () Bool)

(declare-fun tp!524938 () Bool)

(assert (=> setNonEmpty!11442 (= setRes!11441 (and tp!524938 (inv!26926 setElem!11442) e!1183824))))

(declare-fun setRest!11441 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11442 (= (_2!11330 (h!25940 mapDefault!8821)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11442 true) setRest!11441))))

(declare-fun b!1852114 () Bool)

(declare-fun tp!524934 () Bool)

(assert (=> b!1852114 (= e!1183824 tp!524934)))

(assert (= (and mapNonEmpty!8814 condMapEmpty!8821) mapIsEmpty!8821))

(assert (= (and mapNonEmpty!8814 (not condMapEmpty!8821)) mapNonEmpty!8821))

(assert (= b!1852111 b!1852109))

(assert (= (and b!1852111 condSetEmpty!11442) setIsEmpty!11441))

(assert (= (and b!1852111 (not condSetEmpty!11442)) setNonEmpty!11441))

(assert (= setNonEmpty!11441 b!1852112))

(assert (= (and mapNonEmpty!8821 ((_ is Cons!20539) mapValue!8821)) b!1852111))

(assert (= b!1852110 b!1852113))

(assert (= (and b!1852110 condSetEmpty!11441) setIsEmpty!11442))

(assert (= (and b!1852110 (not condSetEmpty!11441)) setNonEmpty!11442))

(assert (= setNonEmpty!11442 b!1852114))

(assert (= (and mapNonEmpty!8814 ((_ is Cons!20539) mapDefault!8821)) b!1852110))

(declare-fun m!2278513 () Bool)

(assert (=> setNonEmpty!11442 m!2278513))

(declare-fun m!2278515 () Bool)

(assert (=> setNonEmpty!11441 m!2278515))

(declare-fun m!2278517 () Bool)

(assert (=> b!1852111 m!2278517))

(declare-fun m!2278519 () Bool)

(assert (=> b!1852110 m!2278519))

(declare-fun m!2278521 () Bool)

(assert (=> mapNonEmpty!8821 m!2278521))

(declare-fun b!1852115 () Bool)

(declare-fun e!1183827 () Bool)

(declare-fun tp!524940 () Bool)

(assert (=> b!1852115 (= e!1183827 tp!524940)))

(declare-fun setNonEmpty!11443 () Bool)

(declare-fun setRes!11443 () Bool)

(declare-fun tp!524942 () Bool)

(declare-fun setElem!11443 () Context!1902)

(assert (=> setNonEmpty!11443 (= setRes!11443 (and tp!524942 (inv!26926 setElem!11443) e!1183827))))

(declare-fun setRest!11443 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11443 (= (_2!11330 (h!25940 mapValue!8814)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11443 true) setRest!11443))))

(declare-fun setIsEmpty!11443 () Bool)

(assert (=> setIsEmpty!11443 setRes!11443))

(declare-fun tp!524943 () Bool)

(declare-fun b!1852116 () Bool)

(declare-fun e!1183829 () Bool)

(declare-fun e!1183828 () Bool)

(assert (=> b!1852116 (= e!1183828 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 mapValue!8814)))) e!1183829 tp_is_empty!8499 setRes!11443 tp!524943))))

(declare-fun condSetEmpty!11443 () Bool)

(assert (=> b!1852116 (= condSetEmpty!11443 (= (_2!11330 (h!25940 mapValue!8814)) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> mapNonEmpty!8814 (= tp!524781 e!1183828)))

(declare-fun b!1852117 () Bool)

(declare-fun tp!524941 () Bool)

(assert (=> b!1852117 (= e!1183829 tp!524941)))

(assert (= b!1852116 b!1852117))

(assert (= (and b!1852116 condSetEmpty!11443) setIsEmpty!11443))

(assert (= (and b!1852116 (not condSetEmpty!11443)) setNonEmpty!11443))

(assert (= setNonEmpty!11443 b!1852115))

(assert (= (and mapNonEmpty!8814 ((_ is Cons!20539) mapValue!8814)) b!1852116))

(declare-fun m!2278523 () Bool)

(assert (=> setNonEmpty!11443 m!2278523))

(declare-fun m!2278525 () Bool)

(assert (=> b!1852116 m!2278525))

(check-sat (not b!1851993) b_and!144101 (not b!1851997) (not d!565979) (not b!1852111) (not b!1852088) (not b_next!52571) (not b!1851948) (not b!1852052) (not b!1852031) (not b!1852116) (not d!565975) (not setNonEmpty!11434) (not d!565971) (not b!1851973) (not b!1852080) (not b!1852089) (not d!565983) (not d!565967) b_and!144109 (not b!1852018) (not d!565973) (not b!1852016) (not b!1852043) (not b_next!52569) (not b!1851959) (not b!1852032) b_and!144105 (not setNonEmpty!11424) (not d!565981) (not setNonEmpty!11428) tp_is_empty!8499 (not b!1852020) (not b!1851999) (not b!1852090) (not b!1852070) (not setNonEmpty!11441) (not b!1852055) (not setNonEmpty!11436) (not b!1852087) (not b!1852094) (not b_next!52579) (not b!1852019) (not b!1852030) (not b!1852042) (not b!1852113) (not d!565977) (not b!1852091) (not b!1852084) (not b!1852110) (not b!1852069) (not b!1851995) (not b!1851950) (not b!1851956) (not b!1851941) b_and!144097 b_and!144111 (not b!1852109) (not b!1852017) (not b!1851953) (not mapNonEmpty!8821) (not setNonEmpty!11431) (not b!1852071) (not setNonEmpty!11425) (not b!1852053) (not setNonEmpty!11442) (not b!1852114) (not mapNonEmpty!8818) (not b!1852093) (not setNonEmpty!11435) (not b!1852054) (not b!1851998) (not setNonEmpty!11433) (not b!1851927) (not b_next!52581) (not b!1852092) (not d!565949) (not b!1852085) (not b!1852086) b_and!144107 b_and!144103 (not b!1852112) (not b_next!52567) (not b!1852056) (not b!1852041) (not b_next!52575) (not b!1852081) (not setNonEmpty!11443) (not b_next!52577) (not d!565959) (not b!1851972) b_and!144099 (not b!1852117) (not d!565987) (not setNonEmpty!11432) (not b!1852115) (not b_next!52573) (not b!1852057) (not b!1851974) (not b!1852021) (not b!1852083) (not b!1851971))
(check-sat (not b_next!52571) b_and!144109 (not b_next!52569) b_and!144105 (not b_next!52579) b_and!144097 b_and!144111 b_and!144101 (not b_next!52581) b_and!144107 b_and!144099 (not b_next!52573) b_and!144103 (not b_next!52567) (not b_next!52575) (not b_next!52577))
(get-model)

(declare-fun d!565989 () Bool)

(declare-fun c!302112 () Bool)

(assert (=> d!565989 (= c!302112 ((_ is Node!6793) (left!16477 (c!302091 input!736))))))

(declare-fun e!1183830 () Bool)

(assert (=> d!565989 (= (inv!26922 (left!16477 (c!302091 input!736))) e!1183830)))

(declare-fun b!1852118 () Bool)

(assert (=> b!1852118 (= e!1183830 (inv!26924 (left!16477 (c!302091 input!736))))))

(declare-fun b!1852119 () Bool)

(declare-fun e!1183831 () Bool)

(assert (=> b!1852119 (= e!1183830 e!1183831)))

(declare-fun res!831064 () Bool)

(assert (=> b!1852119 (= res!831064 (not ((_ is Leaf!9938) (left!16477 (c!302091 input!736)))))))

(assert (=> b!1852119 (=> res!831064 e!1183831)))

(declare-fun b!1852120 () Bool)

(assert (=> b!1852120 (= e!1183831 (inv!26925 (left!16477 (c!302091 input!736))))))

(assert (= (and d!565989 c!302112) b!1852118))

(assert (= (and d!565989 (not c!302112)) b!1852119))

(assert (= (and b!1852119 (not res!831064)) b!1852120))

(declare-fun m!2278527 () Bool)

(assert (=> b!1852118 m!2278527))

(declare-fun m!2278529 () Bool)

(assert (=> b!1852120 m!2278529))

(assert (=> b!1852041 d!565989))

(declare-fun d!565991 () Bool)

(declare-fun c!302113 () Bool)

(assert (=> d!565991 (= c!302113 ((_ is Node!6793) (right!16807 (c!302091 input!736))))))

(declare-fun e!1183832 () Bool)

(assert (=> d!565991 (= (inv!26922 (right!16807 (c!302091 input!736))) e!1183832)))

(declare-fun b!1852121 () Bool)

(assert (=> b!1852121 (= e!1183832 (inv!26924 (right!16807 (c!302091 input!736))))))

(declare-fun b!1852122 () Bool)

(declare-fun e!1183833 () Bool)

(assert (=> b!1852122 (= e!1183832 e!1183833)))

(declare-fun res!831065 () Bool)

(assert (=> b!1852122 (= res!831065 (not ((_ is Leaf!9938) (right!16807 (c!302091 input!736)))))))

(assert (=> b!1852122 (=> res!831065 e!1183833)))

(declare-fun b!1852123 () Bool)

(assert (=> b!1852123 (= e!1183833 (inv!26925 (right!16807 (c!302091 input!736))))))

(assert (= (and d!565991 c!302113) b!1852121))

(assert (= (and d!565991 (not c!302113)) b!1852122))

(assert (= (and b!1852122 (not res!831065)) b!1852123))

(declare-fun m!2278531 () Bool)

(assert (=> b!1852121 m!2278531))

(declare-fun m!2278533 () Bool)

(assert (=> b!1852123 m!2278533))

(assert (=> b!1852041 d!565991))

(declare-fun d!565993 () Bool)

(declare-fun lambda!73208 () Int)

(declare-fun forall!4390 (List!20610 Int) Bool)

(assert (=> d!565993 (= (inv!26926 (_2!11331 (_1!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))))) (forall!4390 (exprs!1451 (_2!11331 (_1!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))))) lambda!73208))))

(declare-fun bs!410147 () Bool)

(assert (= bs!410147 d!565993))

(declare-fun m!2278535 () Bool)

(assert (=> bs!410147 m!2278535))

(assert (=> b!1852094 d!565993))

(declare-fun d!565995 () Bool)

(assert (=> d!565995 true))

(declare-fun lt!715886 () Bool)

(declare-fun rulesValidInductive!1266 (LexerInterface!3300 List!20615) Bool)

(assert (=> d!565995 (= lt!715886 (rulesValidInductive!1266 thiss!12117 rules!1331))))

(declare-fun lambda!73211 () Int)

(declare-fun forall!4391 (List!20615 Int) Bool)

(assert (=> d!565995 (= lt!715886 (forall!4391 rules!1331 lambda!73211))))

(assert (=> d!565995 (= (rulesValid!1402 thiss!12117 rules!1331) lt!715886)))

(declare-fun bs!410148 () Bool)

(assert (= bs!410148 d!565995))

(declare-fun m!2278537 () Bool)

(assert (=> bs!410148 m!2278537))

(declare-fun m!2278539 () Bool)

(assert (=> bs!410148 m!2278539))

(assert (=> d!565949 d!565995))

(declare-fun bs!410149 () Bool)

(declare-fun d!565997 () Bool)

(assert (= bs!410149 (and d!565997 d!565993)))

(declare-fun lambda!73212 () Int)

(assert (=> bs!410149 (= lambda!73212 lambda!73208)))

(assert (=> d!565997 (= (inv!26926 (_1!11329 (_1!11330 (h!25940 mapDefault!8821)))) (forall!4390 (exprs!1451 (_1!11329 (_1!11330 (h!25940 mapDefault!8821)))) lambda!73212))))

(declare-fun bs!410150 () Bool)

(assert (= bs!410150 d!565997))

(declare-fun m!2278541 () Bool)

(assert (=> bs!410150 m!2278541))

(assert (=> b!1852110 d!565997))

(declare-fun d!565999 () Bool)

(assert (=> d!565999 (= (list!8319 (_2!11333 lt!715796)) (list!8321 (c!302091 (_2!11333 lt!715796))))))

(declare-fun bs!410151 () Bool)

(assert (= bs!410151 d!565999))

(declare-fun m!2278543 () Bool)

(assert (=> bs!410151 m!2278543))

(assert (=> b!1851974 d!565999))

(declare-fun b!1852136 () Bool)

(declare-fun e!1183841 () Bool)

(declare-fun lt!715894 () tuple2!19818)

(assert (=> b!1852136 (= e!1183841 (= (_2!11335 lt!715894) (list!8319 input!736)))))

(declare-fun b!1852137 () Bool)

(declare-fun e!1183842 () Bool)

(declare-fun isEmpty!12805 (List!20616) Bool)

(assert (=> b!1852137 (= e!1183842 (not (isEmpty!12805 (_1!11335 lt!715894))))))

(declare-fun b!1852139 () Bool)

(assert (=> b!1852139 (= e!1183841 e!1183842)))

(declare-fun res!831068 () Bool)

(declare-fun size!16221 (List!20613) Int)

(assert (=> b!1852139 (= res!831068 (< (size!16221 (_2!11335 lt!715894)) (size!16221 (list!8319 input!736))))))

(assert (=> b!1852139 (=> (not res!831068) (not e!1183842))))

(declare-fun b!1852140 () Bool)

(declare-fun e!1183840 () tuple2!19818)

(assert (=> b!1852140 (= e!1183840 (tuple2!19819 Nil!20544 (list!8319 input!736)))))

(declare-fun b!1852138 () Bool)

(declare-datatypes ((tuple2!19822 0))(
  ( (tuple2!19823 (_1!11338 Token!6908) (_2!11338 List!20613)) )
))
(declare-datatypes ((Option!4232 0))(
  ( (None!4231) (Some!4231 (v!26028 tuple2!19822)) )
))
(declare-fun lt!715893 () Option!4232)

(declare-fun lt!715895 () tuple2!19818)

(assert (=> b!1852138 (= e!1183840 (tuple2!19819 (Cons!20544 (_1!11338 (v!26028 lt!715893)) (_1!11335 lt!715895)) (_2!11335 lt!715895)))))

(assert (=> b!1852138 (= lt!715895 (lexList!931 thiss!12117 rules!1331 (_2!11338 (v!26028 lt!715893))))))

(declare-fun d!566001 () Bool)

(assert (=> d!566001 e!1183841))

(declare-fun c!302119 () Bool)

(declare-fun size!16222 (List!20616) Int)

(assert (=> d!566001 (= c!302119 (> (size!16222 (_1!11335 lt!715894)) 0))))

(assert (=> d!566001 (= lt!715894 e!1183840)))

(declare-fun c!302118 () Bool)

(assert (=> d!566001 (= c!302118 ((_ is Some!4231) lt!715893))))

(declare-fun maxPrefix!1827 (LexerInterface!3300 List!20615 List!20613) Option!4232)

(assert (=> d!566001 (= lt!715893 (maxPrefix!1827 thiss!12117 rules!1331 (list!8319 input!736)))))

(assert (=> d!566001 (= (lexList!931 thiss!12117 rules!1331 (list!8319 input!736)) lt!715894)))

(assert (= (and d!566001 c!302118) b!1852138))

(assert (= (and d!566001 (not c!302118)) b!1852140))

(assert (= (and d!566001 c!302119) b!1852139))

(assert (= (and d!566001 (not c!302119)) b!1852136))

(assert (= (and b!1852139 res!831068) b!1852137))

(declare-fun m!2278545 () Bool)

(assert (=> b!1852137 m!2278545))

(declare-fun m!2278547 () Bool)

(assert (=> b!1852139 m!2278547))

(assert (=> b!1852139 m!2278373))

(declare-fun m!2278549 () Bool)

(assert (=> b!1852139 m!2278549))

(declare-fun m!2278551 () Bool)

(assert (=> b!1852138 m!2278551))

(declare-fun m!2278553 () Bool)

(assert (=> d!566001 m!2278553))

(assert (=> d!566001 m!2278373))

(declare-fun m!2278555 () Bool)

(assert (=> d!566001 m!2278555))

(assert (=> b!1851974 d!566001))

(declare-fun d!566003 () Bool)

(assert (=> d!566003 (= (list!8319 input!736) (list!8321 (c!302091 input!736)))))

(declare-fun bs!410152 () Bool)

(assert (= bs!410152 d!566003))

(declare-fun m!2278557 () Bool)

(assert (=> bs!410152 m!2278557))

(assert (=> b!1851974 d!566003))

(declare-fun b!1852153 () Bool)

(declare-fun e!1183848 () Bool)

(declare-fun e!1183847 () Bool)

(assert (=> b!1852153 (= e!1183848 e!1183847)))

(declare-fun res!831083 () Bool)

(assert (=> b!1852153 (=> (not res!831083) (not e!1183847))))

(declare-fun height!1029 (Conc!6793) Int)

(assert (=> b!1852153 (= res!831083 (<= (- 1) (- (height!1029 (left!16477 (c!302091 input!736))) (height!1029 (right!16807 (c!302091 input!736))))))))

(declare-fun b!1852154 () Bool)

(declare-fun res!831085 () Bool)

(assert (=> b!1852154 (=> (not res!831085) (not e!1183847))))

(assert (=> b!1852154 (= res!831085 (isBalanced!2116 (left!16477 (c!302091 input!736))))))

(declare-fun d!566005 () Bool)

(declare-fun res!831082 () Bool)

(assert (=> d!566005 (=> res!831082 e!1183848)))

(assert (=> d!566005 (= res!831082 (not ((_ is Node!6793) (c!302091 input!736))))))

(assert (=> d!566005 (= (isBalanced!2116 (c!302091 input!736)) e!1183848)))

(declare-fun b!1852155 () Bool)

(declare-fun res!831086 () Bool)

(assert (=> b!1852155 (=> (not res!831086) (not e!1183847))))

(assert (=> b!1852155 (= res!831086 (isBalanced!2116 (right!16807 (c!302091 input!736))))))

(declare-fun b!1852156 () Bool)

(declare-fun res!831084 () Bool)

(assert (=> b!1852156 (=> (not res!831084) (not e!1183847))))

(assert (=> b!1852156 (= res!831084 (<= (- (height!1029 (left!16477 (c!302091 input!736))) (height!1029 (right!16807 (c!302091 input!736)))) 1))))

(declare-fun b!1852157 () Bool)

(declare-fun res!831081 () Bool)

(assert (=> b!1852157 (=> (not res!831081) (not e!1183847))))

(declare-fun isEmpty!12806 (Conc!6793) Bool)

(assert (=> b!1852157 (= res!831081 (not (isEmpty!12806 (left!16477 (c!302091 input!736)))))))

(declare-fun b!1852158 () Bool)

(assert (=> b!1852158 (= e!1183847 (not (isEmpty!12806 (right!16807 (c!302091 input!736)))))))

(assert (= (and d!566005 (not res!831082)) b!1852153))

(assert (= (and b!1852153 res!831083) b!1852156))

(assert (= (and b!1852156 res!831084) b!1852154))

(assert (= (and b!1852154 res!831085) b!1852155))

(assert (= (and b!1852155 res!831086) b!1852157))

(assert (= (and b!1852157 res!831081) b!1852158))

(declare-fun m!2278559 () Bool)

(assert (=> b!1852155 m!2278559))

(declare-fun m!2278561 () Bool)

(assert (=> b!1852157 m!2278561))

(declare-fun m!2278563 () Bool)

(assert (=> b!1852154 m!2278563))

(declare-fun m!2278565 () Bool)

(assert (=> b!1852153 m!2278565))

(declare-fun m!2278567 () Bool)

(assert (=> b!1852153 m!2278567))

(declare-fun m!2278569 () Bool)

(assert (=> b!1852158 m!2278569))

(assert (=> b!1852156 m!2278565))

(assert (=> b!1852156 m!2278567))

(assert (=> d!565967 d!566005))

(declare-fun bs!410153 () Bool)

(declare-fun d!566007 () Bool)

(assert (= bs!410153 (and d!566007 d!565993)))

(declare-fun lambda!73213 () Int)

(assert (=> bs!410153 (= lambda!73213 lambda!73208)))

(declare-fun bs!410154 () Bool)

(assert (= bs!410154 (and d!566007 d!565997)))

(assert (=> bs!410154 (= lambda!73213 lambda!73212)))

(assert (=> d!566007 (= (inv!26926 (_2!11331 (_1!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))))) (forall!4390 (exprs!1451 (_2!11331 (_1!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))))) lambda!73213))))

(declare-fun bs!410155 () Bool)

(assert (= bs!410155 d!566007))

(declare-fun m!2278571 () Bool)

(assert (=> bs!410155 m!2278571))

(assert (=> b!1852091 d!566007))

(declare-fun d!566009 () Bool)

(declare-fun res!831091 () Bool)

(declare-fun e!1183851 () Bool)

(assert (=> d!566009 (=> (not res!831091) (not e!1183851))))

(declare-fun valid!1513 (MutableMap!1837) Bool)

(assert (=> d!566009 (= res!831091 (valid!1513 (cache!2218 cacheUp!441)))))

(assert (=> d!566009 (= (validCacheMapUp!177 (cache!2218 cacheUp!441)) e!1183851)))

(declare-fun b!1852163 () Bool)

(declare-fun res!831092 () Bool)

(assert (=> b!1852163 (=> (not res!831092) (not e!1183851))))

(declare-fun invariantList!257 (List!20611) Bool)

(declare-datatypes ((ListMap!563 0))(
  ( (ListMap!564 (toList!982 List!20611)) )
))
(declare-fun map!4323 (MutableMap!1837) ListMap!563)

(assert (=> b!1852163 (= res!831092 (invariantList!257 (toList!982 (map!4323 (cache!2218 cacheUp!441)))))))

(declare-fun b!1852164 () Bool)

(declare-fun lambda!73216 () Int)

(declare-fun forall!4392 (List!20611 Int) Bool)

(assert (=> b!1852164 (= e!1183851 (forall!4392 (toList!982 (map!4323 (cache!2218 cacheUp!441))) lambda!73216))))

(assert (= (and d!566009 res!831091) b!1852163))

(assert (= (and b!1852163 res!831092) b!1852164))

(declare-fun m!2278574 () Bool)

(assert (=> d!566009 m!2278574))

(declare-fun m!2278576 () Bool)

(assert (=> b!1852163 m!2278576))

(declare-fun m!2278578 () Bool)

(assert (=> b!1852163 m!2278578))

(assert (=> b!1852164 m!2278576))

(declare-fun m!2278580 () Bool)

(assert (=> b!1852164 m!2278580))

(assert (=> b!1851956 d!566009))

(declare-fun d!566011 () Bool)

(declare-fun lt!715898 () Int)

(assert (=> d!566011 (= lt!715898 (size!16221 (list!8319 (_2!11333 lt!715796))))))

(declare-fun size!16223 (Conc!6793) Int)

(assert (=> d!566011 (= lt!715898 (size!16223 (c!302091 (_2!11333 lt!715796))))))

(assert (=> d!566011 (= (size!16220 (_2!11333 lt!715796)) lt!715898)))

(declare-fun bs!410156 () Bool)

(assert (= bs!410156 d!566011))

(assert (=> bs!410156 m!2278377))

(assert (=> bs!410156 m!2278377))

(declare-fun m!2278582 () Bool)

(assert (=> bs!410156 m!2278582))

(declare-fun m!2278584 () Bool)

(assert (=> bs!410156 m!2278584))

(assert (=> b!1851972 d!566011))

(declare-fun d!566013 () Bool)

(declare-fun lt!715899 () Int)

(assert (=> d!566013 (= lt!715899 (size!16221 (list!8319 input!736)))))

(assert (=> d!566013 (= lt!715899 (size!16223 (c!302091 input!736)))))

(assert (=> d!566013 (= (size!16220 input!736) lt!715899)))

(declare-fun bs!410157 () Bool)

(assert (= bs!410157 d!566013))

(assert (=> bs!410157 m!2278373))

(assert (=> bs!410157 m!2278373))

(assert (=> bs!410157 m!2278549))

(declare-fun m!2278586 () Bool)

(assert (=> bs!410157 m!2278586))

(assert (=> b!1851972 d!566013))

(declare-fun d!566015 () Bool)

(assert (=> d!566015 true))

(declare-fun lambda!73219 () Int)

(declare-fun order!13193 () Int)

(declare-fun order!13195 () Int)

(declare-fun dynLambda!10166 (Int Int) Int)

(declare-fun dynLambda!10167 (Int Int) Int)

(assert (=> d!566015 (< (dynLambda!10166 order!13193 (toValue!5251 (transformation!3678 (h!25944 rules!1331)))) (dynLambda!10167 order!13195 lambda!73219))))

(declare-fun Forall2!591 (Int) Bool)

(assert (=> d!566015 (= (equivClasses!1425 (toChars!5110 (transformation!3678 (h!25944 rules!1331))) (toValue!5251 (transformation!3678 (h!25944 rules!1331)))) (Forall2!591 lambda!73219))))

(declare-fun bs!410158 () Bool)

(assert (= bs!410158 d!566015))

(declare-fun m!2278588 () Bool)

(assert (=> bs!410158 m!2278588))

(assert (=> b!1851953 d!566015))

(declare-fun bs!410159 () Bool)

(declare-fun d!566017 () Bool)

(assert (= bs!410159 (and d!566017 d!565993)))

(declare-fun lambda!73220 () Int)

(assert (=> bs!410159 (= lambda!73220 lambda!73208)))

(declare-fun bs!410160 () Bool)

(assert (= bs!410160 (and d!566017 d!565997)))

(assert (=> bs!410160 (= lambda!73220 lambda!73212)))

(declare-fun bs!410161 () Bool)

(assert (= bs!410161 (and d!566017 d!566007)))

(assert (=> bs!410161 (= lambda!73220 lambda!73213)))

(assert (=> d!566017 (= (inv!26926 (_1!11329 (_1!11330 (h!25940 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))))) (forall!4390 (exprs!1451 (_1!11329 (_1!11330 (h!25940 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))))) lambda!73220))))

(declare-fun bs!410162 () Bool)

(assert (= bs!410162 d!566017))

(declare-fun m!2278590 () Bool)

(assert (=> bs!410162 m!2278590))

(assert (=> b!1852053 d!566017))

(declare-fun d!566019 () Bool)

(declare-fun res!831099 () Bool)

(declare-fun e!1183858 () Bool)

(assert (=> d!566019 (=> res!831099 e!1183858)))

(assert (=> d!566019 (= res!831099 ((_ is Nil!20543) rules!1331))))

(assert (=> d!566019 (= (noDuplicateTag!1400 thiss!12117 rules!1331 Nil!20545) e!1183858)))

(declare-fun b!1852173 () Bool)

(declare-fun e!1183859 () Bool)

(assert (=> b!1852173 (= e!1183858 e!1183859)))

(declare-fun res!831100 () Bool)

(assert (=> b!1852173 (=> (not res!831100) (not e!1183859))))

(declare-fun contains!3789 (List!20617 String!23539) Bool)

(assert (=> b!1852173 (= res!831100 (not (contains!3789 Nil!20545 (tag!4092 (h!25944 rules!1331)))))))

(declare-fun b!1852174 () Bool)

(assert (=> b!1852174 (= e!1183859 (noDuplicateTag!1400 thiss!12117 (t!172417 rules!1331) (Cons!20545 (tag!4092 (h!25944 rules!1331)) Nil!20545)))))

(assert (= (and d!566019 (not res!831099)) b!1852173))

(assert (= (and b!1852173 res!831100) b!1852174))

(declare-fun m!2278592 () Bool)

(assert (=> b!1852173 m!2278592))

(declare-fun m!2278594 () Bool)

(assert (=> b!1852174 m!2278594))

(assert (=> b!1851941 d!566019))

(declare-fun bs!410163 () Bool)

(declare-fun d!566021 () Bool)

(assert (= bs!410163 (and d!566021 d!565993)))

(declare-fun lambda!73221 () Int)

(assert (=> bs!410163 (= lambda!73221 lambda!73208)))

(declare-fun bs!410164 () Bool)

(assert (= bs!410164 (and d!566021 d!565997)))

(assert (=> bs!410164 (= lambda!73221 lambda!73212)))

(declare-fun bs!410165 () Bool)

(assert (= bs!410165 (and d!566021 d!566007)))

(assert (=> bs!410165 (= lambda!73221 lambda!73213)))

(declare-fun bs!410166 () Bool)

(assert (= bs!410166 (and d!566021 d!566017)))

(assert (=> bs!410166 (= lambda!73221 lambda!73220)))

(assert (=> d!566021 (= (inv!26926 setElem!11435) (forall!4390 (exprs!1451 setElem!11435) lambda!73221))))

(declare-fun bs!410167 () Bool)

(assert (= bs!410167 d!566021))

(declare-fun m!2278596 () Bool)

(assert (=> bs!410167 m!2278596))

(assert (=> setNonEmpty!11435 d!566021))

(declare-fun bs!410168 () Bool)

(declare-fun d!566023 () Bool)

(assert (= bs!410168 (and d!566023 d!565993)))

(declare-fun lambda!73222 () Int)

(assert (=> bs!410168 (= lambda!73222 lambda!73208)))

(declare-fun bs!410169 () Bool)

(assert (= bs!410169 (and d!566023 d!566021)))

(assert (=> bs!410169 (= lambda!73222 lambda!73221)))

(declare-fun bs!410170 () Bool)

(assert (= bs!410170 (and d!566023 d!566017)))

(assert (=> bs!410170 (= lambda!73222 lambda!73220)))

(declare-fun bs!410171 () Bool)

(assert (= bs!410171 (and d!566023 d!565997)))

(assert (=> bs!410171 (= lambda!73222 lambda!73212)))

(declare-fun bs!410172 () Bool)

(assert (= bs!410172 (and d!566023 d!566007)))

(assert (=> bs!410172 (= lambda!73222 lambda!73213)))

(assert (=> d!566023 (= (inv!26926 setElem!11436) (forall!4390 (exprs!1451 setElem!11436) lambda!73222))))

(declare-fun bs!410173 () Bool)

(assert (= bs!410173 d!566023))

(declare-fun m!2278598 () Bool)

(assert (=> bs!410173 m!2278598))

(assert (=> setNonEmpty!11436 d!566023))

(declare-fun bs!410174 () Bool)

(declare-fun d!566025 () Bool)

(assert (= bs!410174 (and d!566025 d!565993)))

(declare-fun lambda!73223 () Int)

(assert (=> bs!410174 (= lambda!73223 lambda!73208)))

(declare-fun bs!410175 () Bool)

(assert (= bs!410175 (and d!566025 d!566021)))

(assert (=> bs!410175 (= lambda!73223 lambda!73221)))

(declare-fun bs!410176 () Bool)

(assert (= bs!410176 (and d!566025 d!566023)))

(assert (=> bs!410176 (= lambda!73223 lambda!73222)))

(declare-fun bs!410177 () Bool)

(assert (= bs!410177 (and d!566025 d!566017)))

(assert (=> bs!410177 (= lambda!73223 lambda!73220)))

(declare-fun bs!410178 () Bool)

(assert (= bs!410178 (and d!566025 d!565997)))

(assert (=> bs!410178 (= lambda!73223 lambda!73212)))

(declare-fun bs!410179 () Bool)

(assert (= bs!410179 (and d!566025 d!566007)))

(assert (=> bs!410179 (= lambda!73223 lambda!73213)))

(assert (=> d!566025 (= (inv!26926 setElem!11431) (forall!4390 (exprs!1451 setElem!11431) lambda!73223))))

(declare-fun bs!410180 () Bool)

(assert (= bs!410180 d!566025))

(declare-fun m!2278600 () Bool)

(assert (=> bs!410180 m!2278600))

(assert (=> setNonEmpty!11431 d!566025))

(declare-fun d!566027 () Bool)

(assert (=> d!566027 (= (inv!26913 (tag!4092 (h!25944 (t!172417 rules!1331)))) (= (mod (str.len (value!115377 (tag!4092 (h!25944 (t!172417 rules!1331))))) 2) 0))))

(assert (=> b!1852081 d!566027))

(declare-fun d!566029 () Bool)

(declare-fun res!831101 () Bool)

(declare-fun e!1183860 () Bool)

(assert (=> d!566029 (=> (not res!831101) (not e!1183860))))

(assert (=> d!566029 (= res!831101 (semiInverseModEq!1492 (toChars!5110 (transformation!3678 (h!25944 (t!172417 rules!1331)))) (toValue!5251 (transformation!3678 (h!25944 (t!172417 rules!1331))))))))

(assert (=> d!566029 (= (inv!26923 (transformation!3678 (h!25944 (t!172417 rules!1331)))) e!1183860)))

(declare-fun b!1852175 () Bool)

(assert (=> b!1852175 (= e!1183860 (equivClasses!1425 (toChars!5110 (transformation!3678 (h!25944 (t!172417 rules!1331)))) (toValue!5251 (transformation!3678 (h!25944 (t!172417 rules!1331))))))))

(assert (= (and d!566029 res!831101) b!1852175))

(declare-fun m!2278602 () Bool)

(assert (=> d!566029 m!2278602))

(declare-fun m!2278604 () Bool)

(assert (=> b!1852175 m!2278604))

(assert (=> b!1852081 d!566029))

(assert (=> b!1851927 d!565951))

(declare-fun bs!410181 () Bool)

(declare-fun d!566031 () Bool)

(assert (= bs!410181 (and d!566031 d!566025)))

(declare-fun lambda!73224 () Int)

(assert (=> bs!410181 (= lambda!73224 lambda!73223)))

(declare-fun bs!410182 () Bool)

(assert (= bs!410182 (and d!566031 d!565993)))

(assert (=> bs!410182 (= lambda!73224 lambda!73208)))

(declare-fun bs!410183 () Bool)

(assert (= bs!410183 (and d!566031 d!566021)))

(assert (=> bs!410183 (= lambda!73224 lambda!73221)))

(declare-fun bs!410184 () Bool)

(assert (= bs!410184 (and d!566031 d!566023)))

(assert (=> bs!410184 (= lambda!73224 lambda!73222)))

(declare-fun bs!410185 () Bool)

(assert (= bs!410185 (and d!566031 d!566017)))

(assert (=> bs!410185 (= lambda!73224 lambda!73220)))

(declare-fun bs!410186 () Bool)

(assert (= bs!410186 (and d!566031 d!565997)))

(assert (=> bs!410186 (= lambda!73224 lambda!73212)))

(declare-fun bs!410187 () Bool)

(assert (= bs!410187 (and d!566031 d!566007)))

(assert (=> bs!410187 (= lambda!73224 lambda!73213)))

(assert (=> d!566031 (= (inv!26926 (_1!11329 (_1!11330 (h!25940 mapValue!8814)))) (forall!4390 (exprs!1451 (_1!11329 (_1!11330 (h!25940 mapValue!8814)))) lambda!73224))))

(declare-fun bs!410188 () Bool)

(assert (= bs!410188 d!566031))

(declare-fun m!2278606 () Bool)

(assert (=> bs!410188 m!2278606))

(assert (=> b!1852116 d!566031))

(declare-fun b!1852185 () Bool)

(declare-fun e!1183865 () List!20616)

(declare-fun e!1183866 () List!20616)

(assert (=> b!1852185 (= e!1183865 e!1183866)))

(declare-fun c!302125 () Bool)

(assert (=> b!1852185 (= c!302125 ((_ is Leaf!9939) (c!302092 (_1!11333 lt!715790))))))

(declare-fun b!1852184 () Bool)

(assert (=> b!1852184 (= e!1183865 Nil!20544)))

(declare-fun d!566033 () Bool)

(declare-fun c!302124 () Bool)

(assert (=> d!566033 (= c!302124 ((_ is Empty!6794) (c!302092 (_1!11333 lt!715790))))))

(assert (=> d!566033 (= (list!8322 (c!302092 (_1!11333 lt!715790))) e!1183865)))

(declare-fun b!1852186 () Bool)

(declare-fun list!8323 (IArray!13593) List!20616)

(assert (=> b!1852186 (= e!1183866 (list!8323 (xs!9670 (c!302092 (_1!11333 lt!715790)))))))

(declare-fun b!1852187 () Bool)

(assert (=> b!1852187 (= e!1183866 (++!5552 (list!8322 (left!16478 (c!302092 (_1!11333 lt!715790)))) (list!8322 (right!16808 (c!302092 (_1!11333 lt!715790))))))))

(assert (= (and d!566033 c!302124) b!1852184))

(assert (= (and d!566033 (not c!302124)) b!1852185))

(assert (= (and b!1852185 c!302125) b!1852186))

(assert (= (and b!1852185 (not c!302125)) b!1852187))

(declare-fun m!2278608 () Bool)

(assert (=> b!1852186 m!2278608))

(declare-fun m!2278610 () Bool)

(assert (=> b!1852187 m!2278610))

(declare-fun m!2278612 () Bool)

(assert (=> b!1852187 m!2278612))

(assert (=> b!1852187 m!2278610))

(assert (=> b!1852187 m!2278612))

(declare-fun m!2278614 () Bool)

(assert (=> b!1852187 m!2278614))

(assert (=> d!565979 d!566033))

(declare-fun b!1852199 () Bool)

(declare-fun e!1183872 () List!20613)

(assert (=> b!1852199 (= e!1183872 (++!5551 (list!8321 (left!16477 (c!302091 (_2!11333 lt!715790)))) (list!8321 (right!16807 (c!302091 (_2!11333 lt!715790))))))))

(declare-fun b!1852198 () Bool)

(declare-fun list!8324 (IArray!13591) List!20613)

(assert (=> b!1852198 (= e!1183872 (list!8324 (xs!9669 (c!302091 (_2!11333 lt!715790)))))))

(declare-fun b!1852196 () Bool)

(declare-fun e!1183871 () List!20613)

(assert (=> b!1852196 (= e!1183871 Nil!20541)))

(declare-fun b!1852197 () Bool)

(assert (=> b!1852197 (= e!1183871 e!1183872)))

(declare-fun c!302131 () Bool)

(assert (=> b!1852197 (= c!302131 ((_ is Leaf!9938) (c!302091 (_2!11333 lt!715790))))))

(declare-fun d!566035 () Bool)

(declare-fun c!302130 () Bool)

(assert (=> d!566035 (= c!302130 ((_ is Empty!6793) (c!302091 (_2!11333 lt!715790))))))

(assert (=> d!566035 (= (list!8321 (c!302091 (_2!11333 lt!715790))) e!1183871)))

(assert (= (and d!566035 c!302130) b!1852196))

(assert (= (and d!566035 (not c!302130)) b!1852197))

(assert (= (and b!1852197 c!302131) b!1852198))

(assert (= (and b!1852197 (not c!302131)) b!1852199))

(declare-fun m!2278616 () Bool)

(assert (=> b!1852199 m!2278616))

(declare-fun m!2278618 () Bool)

(assert (=> b!1852199 m!2278618))

(assert (=> b!1852199 m!2278616))

(assert (=> b!1852199 m!2278618))

(declare-fun m!2278620 () Bool)

(assert (=> b!1852199 m!2278620))

(declare-fun m!2278622 () Bool)

(assert (=> b!1852198 m!2278622))

(assert (=> d!565973 d!566035))

(declare-fun b!1852214 () Bool)

(declare-fun e!1183884 () Bool)

(declare-fun e!1183883 () Bool)

(assert (=> b!1852214 (= e!1183884 e!1183883)))

(declare-fun res!831109 () Bool)

(declare-fun lt!715906 () tuple2!19816)

(assert (=> b!1852214 (= res!831109 (< (size!16220 (_2!11333 lt!715906)) (size!16220 (_2!11336 (v!26025 lt!715855)))))))

(assert (=> b!1852214 (=> (not res!831109) (not e!1183883))))

(declare-fun b!1852215 () Bool)

(declare-fun e!1183881 () tuple2!19816)

(assert (=> b!1852215 (= e!1183881 (tuple2!19817 (BalanceConc!13511 Empty!6794) (_2!11336 (v!26025 lt!715855))))))

(declare-fun d!566037 () Bool)

(declare-fun e!1183882 () Bool)

(assert (=> d!566037 e!1183882))

(declare-fun res!831110 () Bool)

(assert (=> d!566037 (=> (not res!831110) (not e!1183882))))

(assert (=> d!566037 (= res!831110 e!1183884)))

(declare-fun c!302137 () Bool)

(assert (=> d!566037 (= c!302137 (> (size!16219 (_1!11333 lt!715906)) 0))))

(assert (=> d!566037 (= lt!715906 e!1183881)))

(declare-fun c!302136 () Bool)

(declare-fun lt!715908 () Option!4231)

(assert (=> d!566037 (= c!302136 ((_ is Some!4230) lt!715908))))

(assert (=> d!566037 (= lt!715908 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715855))))))

(assert (=> d!566037 (= (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715855))) lt!715906)))

(declare-fun b!1852216 () Bool)

(declare-fun res!831108 () Bool)

(assert (=> b!1852216 (=> (not res!831108) (not e!1183882))))

(assert (=> b!1852216 (= res!831108 (= (list!8320 (_1!11333 lt!715906)) (_1!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 (_2!11336 (v!26025 lt!715855)))))))))

(declare-fun b!1852217 () Bool)

(assert (=> b!1852217 (= e!1183882 (= (list!8319 (_2!11333 lt!715906)) (_2!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 (_2!11336 (v!26025 lt!715855)))))))))

(declare-fun b!1852218 () Bool)

(assert (=> b!1852218 (= e!1183883 (not (isEmpty!12804 (_1!11333 lt!715906))))))

(declare-fun b!1852219 () Bool)

(declare-fun lt!715907 () tuple2!19816)

(assert (=> b!1852219 (= e!1183881 (tuple2!19817 (prepend!875 (_1!11333 lt!715907) (_1!11336 (v!26025 lt!715908))) (_2!11333 lt!715907)))))

(assert (=> b!1852219 (= lt!715907 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715908))))))

(declare-fun b!1852220 () Bool)

(assert (=> b!1852220 (= e!1183884 (= (list!8319 (_2!11333 lt!715906)) (list!8319 (_2!11336 (v!26025 lt!715855)))))))

(assert (= (and d!566037 c!302136) b!1852219))

(assert (= (and d!566037 (not c!302136)) b!1852215))

(assert (= (and d!566037 c!302137) b!1852214))

(assert (= (and d!566037 (not c!302137)) b!1852220))

(assert (= (and b!1852214 res!831109) b!1852218))

(assert (= (and d!566037 res!831110) b!1852216))

(assert (= (and b!1852216 res!831108) b!1852217))

(declare-fun m!2278624 () Bool)

(assert (=> b!1852220 m!2278624))

(declare-fun m!2278626 () Bool)

(assert (=> b!1852220 m!2278626))

(declare-fun m!2278628 () Bool)

(assert (=> b!1852214 m!2278628))

(declare-fun m!2278630 () Bool)

(assert (=> b!1852214 m!2278630))

(declare-fun m!2278632 () Bool)

(assert (=> b!1852219 m!2278632))

(declare-fun m!2278634 () Bool)

(assert (=> b!1852219 m!2278634))

(declare-fun m!2278636 () Bool)

(assert (=> b!1852218 m!2278636))

(declare-fun m!2278638 () Bool)

(assert (=> b!1852216 m!2278638))

(assert (=> b!1852216 m!2278626))

(assert (=> b!1852216 m!2278626))

(declare-fun m!2278640 () Bool)

(assert (=> b!1852216 m!2278640))

(assert (=> b!1852217 m!2278624))

(assert (=> b!1852217 m!2278626))

(assert (=> b!1852217 m!2278626))

(assert (=> b!1852217 m!2278640))

(declare-fun m!2278642 () Bool)

(assert (=> d!566037 m!2278642))

(declare-fun m!2278644 () Bool)

(assert (=> d!566037 m!2278644))

(assert (=> b!1851999 d!566037))

(declare-fun d!566039 () Bool)

(declare-fun e!1183887 () Bool)

(assert (=> d!566039 e!1183887))

(declare-fun res!831113 () Bool)

(assert (=> d!566039 (=> (not res!831113) (not e!1183887))))

(declare-fun isBalanced!2117 (Conc!6794) Bool)

(declare-fun prepend!876 (Conc!6794 Token!6908) Conc!6794)

(assert (=> d!566039 (= res!831113 (isBalanced!2117 (prepend!876 (c!302092 (_1!11333 lt!715871)) (_1!11336 (v!26025 lt!715855)))))))

(declare-fun lt!715911 () BalanceConc!13510)

(assert (=> d!566039 (= lt!715911 (BalanceConc!13511 (prepend!876 (c!302092 (_1!11333 lt!715871)) (_1!11336 (v!26025 lt!715855)))))))

(assert (=> d!566039 (= (prepend!875 (_1!11333 lt!715871) (_1!11336 (v!26025 lt!715855))) lt!715911)))

(declare-fun b!1852223 () Bool)

(assert (=> b!1852223 (= e!1183887 (= (list!8320 lt!715911) (Cons!20544 (_1!11336 (v!26025 lt!715855)) (list!8320 (_1!11333 lt!715871)))))))

(assert (= (and d!566039 res!831113) b!1852223))

(declare-fun m!2278646 () Bool)

(assert (=> d!566039 m!2278646))

(assert (=> d!566039 m!2278646))

(declare-fun m!2278648 () Bool)

(assert (=> d!566039 m!2278648))

(declare-fun m!2278650 () Bool)

(assert (=> b!1852223 m!2278650))

(declare-fun m!2278652 () Bool)

(assert (=> b!1852223 m!2278652))

(assert (=> b!1851999 d!566039))

(declare-fun b!1852224 () Bool)

(declare-fun e!1183891 () Bool)

(declare-fun e!1183890 () Bool)

(assert (=> b!1852224 (= e!1183891 e!1183890)))

(declare-fun res!831115 () Bool)

(declare-fun lt!715912 () tuple2!19816)

(assert (=> b!1852224 (= res!831115 (< (size!16220 (_2!11333 lt!715912)) (size!16220 (_2!11336 (v!26025 lt!715866)))))))

(assert (=> b!1852224 (=> (not res!831115) (not e!1183890))))

(declare-fun b!1852225 () Bool)

(declare-fun e!1183888 () tuple2!19816)

(assert (=> b!1852225 (= e!1183888 (tuple2!19817 (BalanceConc!13511 Empty!6794) (_2!11336 (v!26025 lt!715866))))))

(declare-fun d!566041 () Bool)

(declare-fun e!1183889 () Bool)

(assert (=> d!566041 e!1183889))

(declare-fun res!831116 () Bool)

(assert (=> d!566041 (=> (not res!831116) (not e!1183889))))

(assert (=> d!566041 (= res!831116 e!1183891)))

(declare-fun c!302140 () Bool)

(assert (=> d!566041 (= c!302140 (> (size!16219 (_1!11333 lt!715912)) 0))))

(assert (=> d!566041 (= lt!715912 e!1183888)))

(declare-fun c!302139 () Bool)

(declare-fun lt!715914 () Option!4231)

(assert (=> d!566041 (= c!302139 ((_ is Some!4230) lt!715914))))

(assert (=> d!566041 (= lt!715914 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715866))))))

(assert (=> d!566041 (= (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715866))) lt!715912)))

(declare-fun b!1852226 () Bool)

(declare-fun res!831114 () Bool)

(assert (=> b!1852226 (=> (not res!831114) (not e!1183889))))

(assert (=> b!1852226 (= res!831114 (= (list!8320 (_1!11333 lt!715912)) (_1!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 (_2!11336 (v!26025 lt!715866)))))))))

(declare-fun b!1852227 () Bool)

(assert (=> b!1852227 (= e!1183889 (= (list!8319 (_2!11333 lt!715912)) (_2!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 (_2!11336 (v!26025 lt!715866)))))))))

(declare-fun b!1852228 () Bool)

(assert (=> b!1852228 (= e!1183890 (not (isEmpty!12804 (_1!11333 lt!715912))))))

(declare-fun b!1852229 () Bool)

(declare-fun lt!715913 () tuple2!19816)

(assert (=> b!1852229 (= e!1183888 (tuple2!19817 (prepend!875 (_1!11333 lt!715913) (_1!11336 (v!26025 lt!715914))) (_2!11333 lt!715913)))))

(assert (=> b!1852229 (= lt!715913 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715914))))))

(declare-fun b!1852230 () Bool)

(assert (=> b!1852230 (= e!1183891 (= (list!8319 (_2!11333 lt!715912)) (list!8319 (_2!11336 (v!26025 lt!715866)))))))

(assert (= (and d!566041 c!302139) b!1852229))

(assert (= (and d!566041 (not c!302139)) b!1852225))

(assert (= (and d!566041 c!302140) b!1852224))

(assert (= (and d!566041 (not c!302140)) b!1852230))

(assert (= (and b!1852224 res!831115) b!1852228))

(assert (= (and d!566041 res!831116) b!1852226))

(assert (= (and b!1852226 res!831114) b!1852227))

(declare-fun m!2278654 () Bool)

(assert (=> b!1852230 m!2278654))

(declare-fun m!2278656 () Bool)

(assert (=> b!1852230 m!2278656))

(declare-fun m!2278658 () Bool)

(assert (=> b!1852224 m!2278658))

(declare-fun m!2278660 () Bool)

(assert (=> b!1852224 m!2278660))

(declare-fun m!2278662 () Bool)

(assert (=> b!1852229 m!2278662))

(declare-fun m!2278664 () Bool)

(assert (=> b!1852229 m!2278664))

(declare-fun m!2278666 () Bool)

(assert (=> b!1852228 m!2278666))

(declare-fun m!2278668 () Bool)

(assert (=> b!1852226 m!2278668))

(assert (=> b!1852226 m!2278656))

(assert (=> b!1852226 m!2278656))

(declare-fun m!2278670 () Bool)

(assert (=> b!1852226 m!2278670))

(assert (=> b!1852227 m!2278654))

(assert (=> b!1852227 m!2278656))

(assert (=> b!1852227 m!2278656))

(assert (=> b!1852227 m!2278670))

(declare-fun m!2278672 () Bool)

(assert (=> d!566041 m!2278672))

(declare-fun m!2278674 () Bool)

(assert (=> d!566041 m!2278674))

(assert (=> b!1851997 d!566041))

(declare-fun d!566043 () Bool)

(declare-fun e!1183892 () Bool)

(assert (=> d!566043 e!1183892))

(declare-fun res!831117 () Bool)

(assert (=> d!566043 (=> (not res!831117) (not e!1183892))))

(assert (=> d!566043 (= res!831117 (isBalanced!2117 (prepend!876 (c!302092 (_1!11333 lt!715857)) (_1!11336 (v!26025 lt!715866)))))))

(declare-fun lt!715915 () BalanceConc!13510)

(assert (=> d!566043 (= lt!715915 (BalanceConc!13511 (prepend!876 (c!302092 (_1!11333 lt!715857)) (_1!11336 (v!26025 lt!715866)))))))

(assert (=> d!566043 (= (prepend!875 (_1!11333 lt!715857) (_1!11336 (v!26025 lt!715866))) lt!715915)))

(declare-fun b!1852231 () Bool)

(assert (=> b!1852231 (= e!1183892 (= (list!8320 lt!715915) (Cons!20544 (_1!11336 (v!26025 lt!715866)) (list!8320 (_1!11333 lt!715857)))))))

(assert (= (and d!566043 res!831117) b!1852231))

(declare-fun m!2278676 () Bool)

(assert (=> d!566043 m!2278676))

(assert (=> d!566043 m!2278676))

(declare-fun m!2278678 () Bool)

(assert (=> d!566043 m!2278678))

(declare-fun m!2278680 () Bool)

(assert (=> b!1852231 m!2278680))

(declare-fun m!2278682 () Bool)

(assert (=> b!1852231 m!2278682))

(assert (=> b!1851997 d!566043))

(declare-fun bs!410189 () Bool)

(declare-fun d!566045 () Bool)

(assert (= bs!410189 (and d!566045 d!566025)))

(declare-fun lambda!73225 () Int)

(assert (=> bs!410189 (= lambda!73225 lambda!73223)))

(declare-fun bs!410190 () Bool)

(assert (= bs!410190 (and d!566045 d!565993)))

(assert (=> bs!410190 (= lambda!73225 lambda!73208)))

(declare-fun bs!410191 () Bool)

(assert (= bs!410191 (and d!566045 d!566021)))

(assert (=> bs!410191 (= lambda!73225 lambda!73221)))

(declare-fun bs!410192 () Bool)

(assert (= bs!410192 (and d!566045 d!566023)))

(assert (=> bs!410192 (= lambda!73225 lambda!73222)))

(declare-fun bs!410193 () Bool)

(assert (= bs!410193 (and d!566045 d!566017)))

(assert (=> bs!410193 (= lambda!73225 lambda!73220)))

(declare-fun bs!410194 () Bool)

(assert (= bs!410194 (and d!566045 d!566031)))

(assert (=> bs!410194 (= lambda!73225 lambda!73224)))

(declare-fun bs!410195 () Bool)

(assert (= bs!410195 (and d!566045 d!565997)))

(assert (=> bs!410195 (= lambda!73225 lambda!73212)))

(declare-fun bs!410196 () Bool)

(assert (= bs!410196 (and d!566045 d!566007)))

(assert (=> bs!410196 (= lambda!73225 lambda!73213)))

(assert (=> d!566045 (= (inv!26926 (_2!11331 (_1!11332 (h!25941 mapValue!8818)))) (forall!4390 (exprs!1451 (_2!11331 (_1!11332 (h!25941 mapValue!8818)))) lambda!73225))))

(declare-fun bs!410197 () Bool)

(assert (= bs!410197 d!566045))

(declare-fun m!2278684 () Bool)

(assert (=> bs!410197 m!2278684))

(assert (=> b!1852021 d!566045))

(declare-fun bs!410198 () Bool)

(declare-fun d!566047 () Bool)

(assert (= bs!410198 (and d!566047 d!566025)))

(declare-fun lambda!73226 () Int)

(assert (=> bs!410198 (= lambda!73226 lambda!73223)))

(declare-fun bs!410199 () Bool)

(assert (= bs!410199 (and d!566047 d!565993)))

(assert (=> bs!410199 (= lambda!73226 lambda!73208)))

(declare-fun bs!410200 () Bool)

(assert (= bs!410200 (and d!566047 d!566023)))

(assert (=> bs!410200 (= lambda!73226 lambda!73222)))

(declare-fun bs!410201 () Bool)

(assert (= bs!410201 (and d!566047 d!566017)))

(assert (=> bs!410201 (= lambda!73226 lambda!73220)))

(declare-fun bs!410202 () Bool)

(assert (= bs!410202 (and d!566047 d!566031)))

(assert (=> bs!410202 (= lambda!73226 lambda!73224)))

(declare-fun bs!410203 () Bool)

(assert (= bs!410203 (and d!566047 d!566045)))

(assert (=> bs!410203 (= lambda!73226 lambda!73225)))

(declare-fun bs!410204 () Bool)

(assert (= bs!410204 (and d!566047 d!566021)))

(assert (=> bs!410204 (= lambda!73226 lambda!73221)))

(declare-fun bs!410205 () Bool)

(assert (= bs!410205 (and d!566047 d!565997)))

(assert (=> bs!410205 (= lambda!73226 lambda!73212)))

(declare-fun bs!410206 () Bool)

(assert (= bs!410206 (and d!566047 d!566007)))

(assert (=> bs!410206 (= lambda!73226 lambda!73213)))

(assert (=> d!566047 (= (inv!26926 setElem!11443) (forall!4390 (exprs!1451 setElem!11443) lambda!73226))))

(declare-fun bs!410207 () Bool)

(assert (= bs!410207 d!566047))

(declare-fun m!2278686 () Bool)

(assert (=> bs!410207 m!2278686))

(assert (=> setNonEmpty!11443 d!566047))

(declare-fun b!1852233 () Bool)

(declare-fun e!1183893 () List!20616)

(declare-fun e!1183894 () List!20616)

(assert (=> b!1852233 (= e!1183893 e!1183894)))

(declare-fun c!302142 () Bool)

(assert (=> b!1852233 (= c!302142 ((_ is Leaf!9939) (c!302092 (_1!11333 (_1!11334 lt!715793)))))))

(declare-fun b!1852232 () Bool)

(assert (=> b!1852232 (= e!1183893 Nil!20544)))

(declare-fun d!566049 () Bool)

(declare-fun c!302141 () Bool)

(assert (=> d!566049 (= c!302141 ((_ is Empty!6794) (c!302092 (_1!11333 (_1!11334 lt!715793)))))))

(assert (=> d!566049 (= (list!8322 (c!302092 (_1!11333 (_1!11334 lt!715793)))) e!1183893)))

(declare-fun b!1852234 () Bool)

(assert (=> b!1852234 (= e!1183894 (list!8323 (xs!9670 (c!302092 (_1!11333 (_1!11334 lt!715793))))))))

(declare-fun b!1852235 () Bool)

(assert (=> b!1852235 (= e!1183894 (++!5552 (list!8322 (left!16478 (c!302092 (_1!11333 (_1!11334 lt!715793))))) (list!8322 (right!16808 (c!302092 (_1!11333 (_1!11334 lt!715793)))))))))

(assert (= (and d!566049 c!302141) b!1852232))

(assert (= (and d!566049 (not c!302141)) b!1852233))

(assert (= (and b!1852233 c!302142) b!1852234))

(assert (= (and b!1852233 (not c!302142)) b!1852235))

(declare-fun m!2278688 () Bool)

(assert (=> b!1852234 m!2278688))

(declare-fun m!2278690 () Bool)

(assert (=> b!1852235 m!2278690))

(declare-fun m!2278692 () Bool)

(assert (=> b!1852235 m!2278692))

(assert (=> b!1852235 m!2278690))

(assert (=> b!1852235 m!2278692))

(declare-fun m!2278694 () Bool)

(assert (=> b!1852235 m!2278694))

(assert (=> d!565977 d!566049))

(declare-fun d!566051 () Bool)

(assert (=> d!566051 (= (list!8319 (_2!11333 (_1!11334 lt!715883))) (list!8321 (c!302091 (_2!11333 (_1!11334 lt!715883)))))))

(declare-fun bs!410208 () Bool)

(assert (= bs!410208 d!566051))

(declare-fun m!2278696 () Bool)

(assert (=> bs!410208 m!2278696))

(assert (=> b!1851993 d!566051))

(declare-fun d!566053 () Bool)

(assert (=> d!566053 (= (list!8319 (_2!11333 (lexTailRec!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794)))) (list!8321 (c!302091 (_2!11333 (lexTailRec!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794))))))))

(declare-fun bs!410209 () Bool)

(assert (= bs!410209 d!566053))

(declare-fun m!2278698 () Bool)

(assert (=> bs!410209 m!2278698))

(assert (=> b!1851993 d!566053))

(declare-fun b!1852250 () Bool)

(declare-fun lt!715977 () tuple2!19816)

(declare-fun lt!715971 () Option!4231)

(assert (=> b!1852250 (= lt!715977 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715971))))))

(declare-fun e!1183905 () tuple2!19816)

(assert (=> b!1852250 (= e!1183905 (tuple2!19817 (prepend!875 (_1!11333 lt!715977) (_1!11336 (v!26025 lt!715971))) (_2!11333 lt!715977)))))

(declare-fun b!1852251 () Bool)

(declare-fun e!1183906 () tuple2!19816)

(assert (=> b!1852251 (= e!1183906 (tuple2!19817 (BalanceConc!13511 Empty!6794) input!736))))

(declare-fun b!1852252 () Bool)

(declare-fun e!1183904 () tuple2!19816)

(declare-fun lt!715967 () BalanceConc!13508)

(assert (=> b!1852252 (= e!1183904 (tuple2!19817 (BalanceConc!13511 Empty!6794) lt!715967))))

(declare-fun d!566055 () Bool)

(declare-fun e!1183903 () Bool)

(assert (=> d!566055 e!1183903))

(declare-fun res!831120 () Bool)

(assert (=> d!566055 (=> (not res!831120) (not e!1183903))))

(declare-fun lt!715984 () tuple2!19816)

(assert (=> d!566055 (= res!831120 (= (list!8320 (_1!11333 lt!715984)) (list!8320 (_1!11333 (lexRec!401 thiss!12117 rules!1331 input!736)))))))

(assert (=> d!566055 (= lt!715984 e!1183906)))

(declare-fun c!302149 () Bool)

(declare-fun lt!715983 () Option!4231)

(assert (=> d!566055 (= c!302149 ((_ is Some!4230) lt!715983))))

(assert (=> d!566055 (= lt!715983 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 input!736))))

(assert (=> d!566055 (= (lexTailRec!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794)) lt!715984)))

(declare-fun b!1852253 () Bool)

(assert (=> b!1852253 (= e!1183903 (= (list!8319 (_2!11333 lt!715984)) (list!8319 (_2!11333 (lexRec!401 thiss!12117 rules!1331 input!736)))))))

(declare-fun b!1852254 () Bool)

(assert (=> b!1852254 (= e!1183906 (lexTailRec!8 thiss!12117 rules!1331 input!736 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715983)))) (_2!11336 (v!26025 lt!715983)) (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715983)))))))

(declare-fun lt!715969 () tuple2!19816)

(assert (=> b!1852254 (= lt!715969 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715983))))))

(declare-fun lt!715982 () List!20613)

(assert (=> b!1852254 (= lt!715982 (list!8319 (BalanceConc!13509 Empty!6793)))))

(declare-fun lt!715987 () List!20613)

(assert (=> b!1852254 (= lt!715987 (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715983)))))))

(declare-fun lt!715986 () List!20613)

(assert (=> b!1852254 (= lt!715986 (list!8319 (_2!11336 (v!26025 lt!715983))))))

(declare-fun lt!715970 () Unit!35142)

(assert (=> b!1852254 (= lt!715970 (lemmaConcatAssociativity!1093 lt!715982 lt!715987 lt!715986))))

(assert (=> b!1852254 (= (++!5551 (++!5551 lt!715982 lt!715987) lt!715986) (++!5551 lt!715982 (++!5551 lt!715987 lt!715986)))))

(declare-fun lt!715974 () Unit!35142)

(assert (=> b!1852254 (= lt!715974 lt!715970)))

(assert (=> b!1852254 (= lt!715971 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 input!736))))

(declare-fun c!302151 () Bool)

(assert (=> b!1852254 (= c!302151 ((_ is Some!4230) lt!715971))))

(assert (=> b!1852254 (= (lexRec!401 thiss!12117 rules!1331 input!736) e!1183905)))

(declare-fun lt!715968 () Unit!35142)

(declare-fun Unit!35148 () Unit!35142)

(assert (=> b!1852254 (= lt!715968 Unit!35148)))

(declare-fun lt!715989 () List!20616)

(assert (=> b!1852254 (= lt!715989 (list!8320 (BalanceConc!13511 Empty!6794)))))

(declare-fun lt!715985 () List!20616)

(assert (=> b!1852254 (= lt!715985 (Cons!20544 (_1!11336 (v!26025 lt!715983)) Nil!20544))))

(declare-fun lt!715972 () List!20616)

(assert (=> b!1852254 (= lt!715972 (list!8320 (_1!11333 lt!715969)))))

(declare-fun lt!715975 () Unit!35142)

(assert (=> b!1852254 (= lt!715975 (lemmaConcatAssociativity!1094 lt!715989 lt!715985 lt!715972))))

(assert (=> b!1852254 (= (++!5552 (++!5552 lt!715989 lt!715985) lt!715972) (++!5552 lt!715989 (++!5552 lt!715985 lt!715972)))))

(declare-fun lt!715978 () Unit!35142)

(assert (=> b!1852254 (= lt!715978 lt!715975)))

(declare-fun lt!715966 () List!20613)

(assert (=> b!1852254 (= lt!715966 (++!5551 (list!8319 (BalanceConc!13509 Empty!6793)) (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715983))))))))

(declare-fun lt!715973 () List!20613)

(assert (=> b!1852254 (= lt!715973 (list!8319 (_2!11336 (v!26025 lt!715983))))))

(declare-fun lt!715979 () List!20616)

(assert (=> b!1852254 (= lt!715979 (list!8320 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715983)))))))

(declare-fun lt!715980 () Unit!35142)

(assert (=> b!1852254 (= lt!715980 (lemmaLexThenLexPrefix!289 thiss!12117 rules!1331 lt!715966 lt!715973 lt!715979 (list!8320 (_1!11333 lt!715969)) (list!8319 (_2!11333 lt!715969))))))

(assert (=> b!1852254 (= (lexList!931 thiss!12117 rules!1331 lt!715966) (tuple2!19819 lt!715979 Nil!20541))))

(declare-fun lt!715981 () Unit!35142)

(assert (=> b!1852254 (= lt!715981 lt!715980)))

(assert (=> b!1852254 (= lt!715967 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715983)))))))

(declare-fun lt!715988 () Option!4231)

(assert (=> b!1852254 (= lt!715988 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 lt!715967))))

(declare-fun c!302150 () Bool)

(assert (=> b!1852254 (= c!302150 ((_ is Some!4230) lt!715988))))

(assert (=> b!1852254 (= (lexRec!401 thiss!12117 rules!1331 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715983))))) e!1183904)))

(declare-fun lt!715976 () Unit!35142)

(declare-fun Unit!35149 () Unit!35142)

(assert (=> b!1852254 (= lt!715976 Unit!35149)))

(declare-fun b!1852255 () Bool)

(assert (=> b!1852255 (= e!1183905 (tuple2!19817 (BalanceConc!13511 Empty!6794) input!736))))

(declare-fun b!1852256 () Bool)

(declare-fun lt!715990 () tuple2!19816)

(assert (=> b!1852256 (= lt!715990 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715988))))))

(assert (=> b!1852256 (= e!1183904 (tuple2!19817 (prepend!875 (_1!11333 lt!715990) (_1!11336 (v!26025 lt!715988))) (_2!11333 lt!715990)))))

(assert (= (and d!566055 c!302149) b!1852254))

(assert (= (and d!566055 (not c!302149)) b!1852251))

(assert (= (and b!1852254 c!302151) b!1852250))

(assert (= (and b!1852254 (not c!302151)) b!1852255))

(assert (= (and b!1852254 c!302150) b!1852256))

(assert (= (and b!1852254 (not c!302150)) b!1852252))

(assert (= (and d!566055 res!831120) b!1852253))

(declare-fun m!2278700 () Bool)

(assert (=> b!1852256 m!2278700))

(declare-fun m!2278702 () Bool)

(assert (=> b!1852256 m!2278702))

(declare-fun m!2278704 () Bool)

(assert (=> d!566055 m!2278704))

(assert (=> d!566055 m!2278417))

(declare-fun m!2278706 () Bool)

(assert (=> d!566055 m!2278706))

(assert (=> d!566055 m!2278435))

(declare-fun m!2278708 () Bool)

(assert (=> b!1852253 m!2278708))

(assert (=> b!1852253 m!2278417))

(declare-fun m!2278710 () Bool)

(assert (=> b!1852253 m!2278710))

(declare-fun m!2278712 () Bool)

(assert (=> b!1852254 m!2278712))

(declare-fun m!2278714 () Bool)

(assert (=> b!1852254 m!2278714))

(declare-fun m!2278716 () Bool)

(assert (=> b!1852254 m!2278716))

(declare-fun m!2278718 () Bool)

(assert (=> b!1852254 m!2278718))

(declare-fun m!2278720 () Bool)

(assert (=> b!1852254 m!2278720))

(declare-fun m!2278722 () Bool)

(assert (=> b!1852254 m!2278722))

(declare-fun m!2278724 () Bool)

(assert (=> b!1852254 m!2278724))

(declare-fun m!2278726 () Bool)

(assert (=> b!1852254 m!2278726))

(declare-fun m!2278728 () Bool)

(assert (=> b!1852254 m!2278728))

(assert (=> b!1852254 m!2278417))

(assert (=> b!1852254 m!2278724))

(declare-fun m!2278730 () Bool)

(assert (=> b!1852254 m!2278730))

(assert (=> b!1852254 m!2278728))

(declare-fun m!2278732 () Bool)

(assert (=> b!1852254 m!2278732))

(assert (=> b!1852254 m!2278726))

(declare-fun m!2278734 () Bool)

(assert (=> b!1852254 m!2278734))

(assert (=> b!1852254 m!2278716))

(declare-fun m!2278736 () Bool)

(assert (=> b!1852254 m!2278736))

(assert (=> b!1852254 m!2278728))

(declare-fun m!2278738 () Bool)

(assert (=> b!1852254 m!2278738))

(declare-fun m!2278740 () Bool)

(assert (=> b!1852254 m!2278740))

(declare-fun m!2278742 () Bool)

(assert (=> b!1852254 m!2278742))

(declare-fun m!2278744 () Bool)

(assert (=> b!1852254 m!2278744))

(declare-fun m!2278746 () Bool)

(assert (=> b!1852254 m!2278746))

(assert (=> b!1852254 m!2278421))

(assert (=> b!1852254 m!2278746))

(declare-fun m!2278748 () Bool)

(assert (=> b!1852254 m!2278748))

(declare-fun m!2278750 () Bool)

(assert (=> b!1852254 m!2278750))

(assert (=> b!1852254 m!2278421))

(assert (=> b!1852254 m!2278435))

(declare-fun m!2278752 () Bool)

(assert (=> b!1852254 m!2278752))

(assert (=> b!1852254 m!2278736))

(declare-fun m!2278754 () Bool)

(assert (=> b!1852254 m!2278754))

(assert (=> b!1852254 m!2278383))

(assert (=> b!1852254 m!2278742))

(assert (=> b!1852254 m!2278712))

(declare-fun m!2278756 () Bool)

(assert (=> b!1852254 m!2278756))

(assert (=> b!1852254 m!2278744))

(assert (=> b!1852254 m!2278736))

(declare-fun m!2278758 () Bool)

(assert (=> b!1852254 m!2278758))

(assert (=> b!1852254 m!2278752))

(declare-fun m!2278760 () Bool)

(assert (=> b!1852254 m!2278760))

(assert (=> b!1852254 m!2278744))

(declare-fun m!2278762 () Bool)

(assert (=> b!1852250 m!2278762))

(declare-fun m!2278764 () Bool)

(assert (=> b!1852250 m!2278764))

(assert (=> b!1851993 d!566055))

(declare-fun bs!410210 () Bool)

(declare-fun d!566057 () Bool)

(assert (= bs!410210 (and d!566057 d!566025)))

(declare-fun lambda!73227 () Int)

(assert (=> bs!410210 (= lambda!73227 lambda!73223)))

(declare-fun bs!410211 () Bool)

(assert (= bs!410211 (and d!566057 d!566023)))

(assert (=> bs!410211 (= lambda!73227 lambda!73222)))

(declare-fun bs!410212 () Bool)

(assert (= bs!410212 (and d!566057 d!566017)))

(assert (=> bs!410212 (= lambda!73227 lambda!73220)))

(declare-fun bs!410213 () Bool)

(assert (= bs!410213 (and d!566057 d!566031)))

(assert (=> bs!410213 (= lambda!73227 lambda!73224)))

(declare-fun bs!410214 () Bool)

(assert (= bs!410214 (and d!566057 d!566047)))

(assert (=> bs!410214 (= lambda!73227 lambda!73226)))

(declare-fun bs!410215 () Bool)

(assert (= bs!410215 (and d!566057 d!565993)))

(assert (=> bs!410215 (= lambda!73227 lambda!73208)))

(declare-fun bs!410216 () Bool)

(assert (= bs!410216 (and d!566057 d!566045)))

(assert (=> bs!410216 (= lambda!73227 lambda!73225)))

(declare-fun bs!410217 () Bool)

(assert (= bs!410217 (and d!566057 d!566021)))

(assert (=> bs!410217 (= lambda!73227 lambda!73221)))

(declare-fun bs!410218 () Bool)

(assert (= bs!410218 (and d!566057 d!565997)))

(assert (=> bs!410218 (= lambda!73227 lambda!73212)))

(declare-fun bs!410219 () Bool)

(assert (= bs!410219 (and d!566057 d!566007)))

(assert (=> bs!410219 (= lambda!73227 lambda!73213)))

(assert (=> d!566057 (= (inv!26926 (_1!11329 (_1!11330 (h!25940 mapDefault!8815)))) (forall!4390 (exprs!1451 (_1!11329 (_1!11330 (h!25940 mapDefault!8815)))) lambda!73227))))

(declare-fun bs!410220 () Bool)

(assert (= bs!410220 d!566057))

(declare-fun m!2278766 () Bool)

(assert (=> bs!410220 m!2278766))

(assert (=> b!1852087 d!566057))

(declare-fun bs!410221 () Bool)

(declare-fun d!566059 () Bool)

(assert (= bs!410221 (and d!566059 d!566025)))

(declare-fun lambda!73228 () Int)

(assert (=> bs!410221 (= lambda!73228 lambda!73223)))

(declare-fun bs!410222 () Bool)

(assert (= bs!410222 (and d!566059 d!566023)))

(assert (=> bs!410222 (= lambda!73228 lambda!73222)))

(declare-fun bs!410223 () Bool)

(assert (= bs!410223 (and d!566059 d!566031)))

(assert (=> bs!410223 (= lambda!73228 lambda!73224)))

(declare-fun bs!410224 () Bool)

(assert (= bs!410224 (and d!566059 d!566047)))

(assert (=> bs!410224 (= lambda!73228 lambda!73226)))

(declare-fun bs!410225 () Bool)

(assert (= bs!410225 (and d!566059 d!565993)))

(assert (=> bs!410225 (= lambda!73228 lambda!73208)))

(declare-fun bs!410226 () Bool)

(assert (= bs!410226 (and d!566059 d!566045)))

(assert (=> bs!410226 (= lambda!73228 lambda!73225)))

(declare-fun bs!410227 () Bool)

(assert (= bs!410227 (and d!566059 d!566021)))

(assert (=> bs!410227 (= lambda!73228 lambda!73221)))

(declare-fun bs!410228 () Bool)

(assert (= bs!410228 (and d!566059 d!565997)))

(assert (=> bs!410228 (= lambda!73228 lambda!73212)))

(declare-fun bs!410229 () Bool)

(assert (= bs!410229 (and d!566059 d!566007)))

(assert (=> bs!410229 (= lambda!73228 lambda!73213)))

(declare-fun bs!410230 () Bool)

(assert (= bs!410230 (and d!566059 d!566057)))

(assert (=> bs!410230 (= lambda!73228 lambda!73227)))

(declare-fun bs!410231 () Bool)

(assert (= bs!410231 (and d!566059 d!566017)))

(assert (=> bs!410231 (= lambda!73228 lambda!73220)))

(assert (=> d!566059 (= (inv!26926 (_1!11329 (_1!11330 (h!25940 mapValue!8821)))) (forall!4390 (exprs!1451 (_1!11329 (_1!11330 (h!25940 mapValue!8821)))) lambda!73228))))

(declare-fun bs!410232 () Bool)

(assert (= bs!410232 d!566059))

(declare-fun m!2278768 () Bool)

(assert (=> bs!410232 m!2278768))

(assert (=> b!1852111 d!566059))

(declare-fun d!566061 () Bool)

(assert (=> d!566061 true))

(declare-fun order!13199 () Int)

(declare-fun order!13197 () Int)

(declare-fun lambda!73231 () Int)

(declare-fun dynLambda!10168 (Int Int) Int)

(declare-fun dynLambda!10169 (Int Int) Int)

(assert (=> d!566061 (< (dynLambda!10168 order!13197 (toChars!5110 (transformation!3678 (h!25944 rules!1331)))) (dynLambda!10169 order!13199 lambda!73231))))

(assert (=> d!566061 true))

(assert (=> d!566061 (< (dynLambda!10166 order!13193 (toValue!5251 (transformation!3678 (h!25944 rules!1331)))) (dynLambda!10169 order!13199 lambda!73231))))

(declare-fun Forall!960 (Int) Bool)

(assert (=> d!566061 (= (semiInverseModEq!1492 (toChars!5110 (transformation!3678 (h!25944 rules!1331))) (toValue!5251 (transformation!3678 (h!25944 rules!1331)))) (Forall!960 lambda!73231))))

(declare-fun bs!410233 () Bool)

(assert (= bs!410233 d!566061))

(declare-fun m!2278770 () Bool)

(assert (=> bs!410233 m!2278770))

(assert (=> d!565959 d!566061))

(declare-fun d!566063 () Bool)

(declare-fun res!831125 () Bool)

(declare-fun e!1183909 () Bool)

(assert (=> d!566063 (=> (not res!831125) (not e!1183909))))

(assert (=> d!566063 (= res!831125 (<= (size!16221 (list!8324 (xs!9669 (c!302091 input!736)))) 512))))

(assert (=> d!566063 (= (inv!26925 (c!302091 input!736)) e!1183909)))

(declare-fun b!1852265 () Bool)

(declare-fun res!831126 () Bool)

(assert (=> b!1852265 (=> (not res!831126) (not e!1183909))))

(assert (=> b!1852265 (= res!831126 (= (csize!13817 (c!302091 input!736)) (size!16221 (list!8324 (xs!9669 (c!302091 input!736))))))))

(declare-fun b!1852266 () Bool)

(assert (=> b!1852266 (= e!1183909 (and (> (csize!13817 (c!302091 input!736)) 0) (<= (csize!13817 (c!302091 input!736)) 512)))))

(assert (= (and d!566063 res!831125) b!1852265))

(assert (= (and b!1852265 res!831126) b!1852266))

(declare-fun m!2278772 () Bool)

(assert (=> d!566063 m!2278772))

(assert (=> d!566063 m!2278772))

(declare-fun m!2278774 () Bool)

(assert (=> d!566063 m!2278774))

(assert (=> b!1852265 m!2278772))

(assert (=> b!1852265 m!2278772))

(assert (=> b!1852265 m!2278774))

(assert (=> b!1851950 d!566063))

(declare-fun lt!716019 () tuple3!1922)

(declare-fun b!1852267 () Bool)

(declare-fun e!1183914 () Bool)

(assert (=> b!1852267 (= e!1183914 (= (list!8319 (_2!11333 (_1!11334 lt!716019))) (list!8319 (_2!11333 (lexTailRec!8 thiss!12117 rules!1331 input!736 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) (_2!11336 (v!26025 (_1!11337 lt!715881))) (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))))))))))

(declare-fun b!1852268 () Bool)

(declare-fun e!1183913 () tuple2!19816)

(assert (=> b!1852268 (= e!1183913 (tuple2!19817 (BalanceConc!13511 Empty!6794) (_2!11336 (v!26025 (_1!11337 lt!715881)))))))

(declare-fun d!566065 () Bool)

(assert (=> d!566065 e!1183914))

(declare-fun res!831127 () Bool)

(assert (=> d!566065 (=> (not res!831127) (not e!1183914))))

(assert (=> d!566065 (= res!831127 (= (list!8320 (_1!11333 (_1!11334 lt!716019))) (list!8320 (_1!11333 (lexTailRec!8 thiss!12117 rules!1331 input!736 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) (_2!11336 (v!26025 (_1!11337 lt!715881))) (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))))))))))

(declare-fun e!1183910 () tuple3!1922)

(assert (=> d!566065 (= lt!716019 e!1183910)))

(declare-fun c!302155 () Bool)

(declare-fun lt!716017 () tuple3!1924)

(assert (=> d!566065 (= c!302155 ((_ is Some!4230) (_1!11337 lt!716017)))))

(assert (=> d!566065 (= lt!716017 (maxPrefixZipperSequenceMem!2 thiss!12117 rules!1331 (_2!11336 (v!26025 (_1!11337 lt!715881))) (_2!11337 lt!715881) (_3!1426 lt!715881)))))

(declare-fun lt!715996 () Unit!35142)

(declare-fun Unit!35150 () Unit!35142)

(assert (=> d!566065 (= lt!715996 Unit!35150)))

(assert (=> d!566065 (= (lex!1500 thiss!12117 rules!1331 (_2!11336 (v!26025 (_1!11337 lt!715881)))) (lexTailRecV2!654 thiss!12117 rules!1331 (_2!11336 (v!26025 (_1!11337 lt!715881))) (BalanceConc!13509 Empty!6793) (_2!11336 (v!26025 (_1!11337 lt!715881))) (BalanceConc!13511 Empty!6794)))))

(declare-fun lt!715998 () Unit!35142)

(declare-fun Unit!35151 () Unit!35142)

(assert (=> d!566065 (= lt!715998 Unit!35151)))

(declare-fun e!1183911 () tuple2!19816)

(assert (=> d!566065 (= (lexTailRec!8 thiss!12117 rules!1331 input!736 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) (_2!11336 (v!26025 (_1!11337 lt!715881))) (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881))))) e!1183911)))

(declare-fun c!302154 () Bool)

(declare-fun lt!716013 () Option!4231)

(assert (=> d!566065 (= c!302154 ((_ is Some!4230) lt!716013))))

(assert (=> d!566065 (= lt!716013 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 (_2!11336 (v!26025 (_1!11337 lt!715881)))))))

(assert (=> d!566065 (= (lexTailRecMem!8 thiss!12117 rules!1331 input!736 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) (_2!11336 (v!26025 (_1!11337 lt!715881))) (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))) (_2!11337 lt!715881) (_3!1426 lt!715881)) lt!716019)))

(declare-fun b!1852269 () Bool)

(declare-fun lt!715997 () tuple3!1922)

(assert (=> b!1852269 (= e!1183910 (tuple3!1923 (_1!11334 lt!715997) (_2!11334 lt!715997) (_3!1425 lt!715997)))))

(assert (=> b!1852269 (= lt!715997 (lexTailRecMem!8 thiss!12117 rules!1331 input!736 (++!5550 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!716017))))) (_2!11336 (v!26025 (_1!11337 lt!716017))) (append!594 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))) (_1!11336 (v!26025 (_1!11337 lt!716017)))) (_2!11337 lt!716017) (_3!1426 lt!716017)))))

(declare-fun b!1852270 () Bool)

(assert (=> b!1852270 (= e!1183910 (tuple3!1923 (tuple2!19817 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))) (_2!11336 (v!26025 (_1!11337 lt!715881)))) (_2!11337 lt!716017) (_3!1426 lt!716017)))))

(declare-fun b!1852271 () Bool)

(declare-fun lt!715993 () tuple2!19816)

(declare-fun lt!716002 () Option!4231)

(assert (=> b!1852271 (= lt!715993 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716002))))))

(assert (=> b!1852271 (= e!1183913 (tuple2!19817 (prepend!875 (_1!11333 lt!715993) (_1!11336 (v!26025 lt!716002))) (_2!11333 lt!715993)))))

(declare-fun b!1852272 () Bool)

(assert (=> b!1852272 (= e!1183911 (lexTailRec!8 thiss!12117 rules!1331 input!736 (++!5550 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) (charsOf!2294 (_1!11336 (v!26025 lt!716013)))) (_2!11336 (v!26025 lt!716013)) (append!594 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))) (_1!11336 (v!26025 lt!716013)))))))

(declare-fun lt!715999 () tuple2!19816)

(assert (=> b!1852272 (= lt!715999 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716013))))))

(declare-fun lt!715995 () List!20613)

(assert (=> b!1852272 (= lt!715995 (list!8319 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881)))))))))

(declare-fun lt!716000 () List!20613)

(assert (=> b!1852272 (= lt!716000 (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!716013)))))))

(declare-fun lt!716010 () List!20613)

(assert (=> b!1852272 (= lt!716010 (list!8319 (_2!11336 (v!26025 lt!716013))))))

(declare-fun lt!715994 () Unit!35142)

(assert (=> b!1852272 (= lt!715994 (lemmaConcatAssociativity!1093 lt!715995 lt!716000 lt!716010))))

(assert (=> b!1852272 (= (++!5551 (++!5551 lt!715995 lt!716000) lt!716010) (++!5551 lt!715995 (++!5551 lt!716000 lt!716010)))))

(declare-fun lt!716014 () Unit!35142)

(assert (=> b!1852272 (= lt!716014 lt!715994)))

(assert (=> b!1852272 (= lt!716002 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 (_2!11336 (v!26025 (_1!11337 lt!715881)))))))

(declare-fun c!302153 () Bool)

(assert (=> b!1852272 (= c!302153 ((_ is Some!4230) lt!716002))))

(assert (=> b!1852272 (= (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 (_1!11337 lt!715881)))) e!1183913)))

(declare-fun lt!716016 () Unit!35142)

(declare-fun Unit!35152 () Unit!35142)

(assert (=> b!1852272 (= lt!716016 Unit!35152)))

(declare-fun lt!715992 () List!20616)

(assert (=> b!1852272 (= lt!715992 (list!8320 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881))))))))

(declare-fun lt!716015 () List!20616)

(assert (=> b!1852272 (= lt!716015 (Cons!20544 (_1!11336 (v!26025 lt!716013)) Nil!20544))))

(declare-fun lt!716003 () List!20616)

(assert (=> b!1852272 (= lt!716003 (list!8320 (_1!11333 lt!715999)))))

(declare-fun lt!716006 () Unit!35142)

(assert (=> b!1852272 (= lt!716006 (lemmaConcatAssociativity!1094 lt!715992 lt!716015 lt!716003))))

(assert (=> b!1852272 (= (++!5552 (++!5552 lt!715992 lt!716015) lt!716003) (++!5552 lt!715992 (++!5552 lt!716015 lt!716003)))))

(declare-fun lt!716018 () Unit!35142)

(assert (=> b!1852272 (= lt!716018 lt!716006)))

(declare-fun lt!716004 () List!20613)

(assert (=> b!1852272 (= lt!716004 (++!5551 (list!8319 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881)))))) (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!716013))))))))

(declare-fun lt!716012 () List!20613)

(assert (=> b!1852272 (= lt!716012 (list!8319 (_2!11336 (v!26025 lt!716013))))))

(declare-fun lt!716011 () List!20616)

(assert (=> b!1852272 (= lt!716011 (list!8320 (append!594 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))) (_1!11336 (v!26025 lt!716013)))))))

(declare-fun lt!716008 () Unit!35142)

(assert (=> b!1852272 (= lt!716008 (lemmaLexThenLexPrefix!289 thiss!12117 rules!1331 lt!716004 lt!716012 lt!716011 (list!8320 (_1!11333 lt!715999)) (list!8319 (_2!11333 lt!715999))))))

(assert (=> b!1852272 (= (lexList!931 thiss!12117 rules!1331 lt!716004) (tuple2!19819 lt!716011 Nil!20541))))

(declare-fun lt!716001 () Unit!35142)

(assert (=> b!1852272 (= lt!716001 lt!716008)))

(declare-fun lt!716005 () BalanceConc!13508)

(assert (=> b!1852272 (= lt!716005 (++!5550 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) (charsOf!2294 (_1!11336 (v!26025 lt!716013)))))))

(declare-fun lt!715991 () Option!4231)

(assert (=> b!1852272 (= lt!715991 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 lt!716005))))

(declare-fun c!302152 () Bool)

(assert (=> b!1852272 (= c!302152 ((_ is Some!4230) lt!715991))))

(declare-fun e!1183912 () tuple2!19816)

(assert (=> b!1852272 (= (lexRec!401 thiss!12117 rules!1331 (++!5550 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) (charsOf!2294 (_1!11336 (v!26025 lt!716013))))) e!1183912)))

(declare-fun lt!716009 () Unit!35142)

(declare-fun Unit!35153 () Unit!35142)

(assert (=> b!1852272 (= lt!716009 Unit!35153)))

(declare-fun b!1852273 () Bool)

(declare-fun lt!716007 () tuple2!19816)

(assert (=> b!1852273 (= lt!716007 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715991))))))

(assert (=> b!1852273 (= e!1183912 (tuple2!19817 (prepend!875 (_1!11333 lt!716007) (_1!11336 (v!26025 lt!715991))) (_2!11333 lt!716007)))))

(declare-fun b!1852274 () Bool)

(assert (=> b!1852274 (= e!1183911 (tuple2!19817 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))) (_2!11336 (v!26025 (_1!11337 lt!715881)))))))

(declare-fun b!1852275 () Bool)

(assert (=> b!1852275 (= e!1183912 (tuple2!19817 (BalanceConc!13511 Empty!6794) lt!716005))))

(assert (= (and d!566065 c!302154) b!1852272))

(assert (= (and d!566065 (not c!302154)) b!1852274))

(assert (= (and b!1852272 c!302153) b!1852271))

(assert (= (and b!1852272 (not c!302153)) b!1852268))

(assert (= (and b!1852272 c!302152) b!1852273))

(assert (= (and b!1852272 (not c!302152)) b!1852275))

(assert (= (and d!566065 c!302155) b!1852269))

(assert (= (and d!566065 (not c!302155)) b!1852270))

(assert (= (and d!566065 res!831127) b!1852267))

(declare-fun m!2278776 () Bool)

(assert (=> b!1852272 m!2278776))

(declare-fun m!2278778 () Bool)

(assert (=> b!1852272 m!2278778))

(assert (=> b!1852272 m!2278461))

(declare-fun m!2278780 () Bool)

(assert (=> b!1852272 m!2278780))

(declare-fun m!2278782 () Bool)

(assert (=> b!1852272 m!2278782))

(declare-fun m!2278784 () Bool)

(assert (=> b!1852272 m!2278784))

(declare-fun m!2278786 () Bool)

(assert (=> b!1852272 m!2278786))

(declare-fun m!2278788 () Bool)

(assert (=> b!1852272 m!2278788))

(declare-fun m!2278790 () Bool)

(assert (=> b!1852272 m!2278790))

(assert (=> b!1852272 m!2278776))

(assert (=> b!1852272 m!2278459))

(assert (=> b!1852272 m!2278788))

(assert (=> b!1852272 m!2278784))

(declare-fun m!2278792 () Bool)

(assert (=> b!1852272 m!2278792))

(declare-fun m!2278794 () Bool)

(assert (=> b!1852272 m!2278794))

(declare-fun m!2278796 () Bool)

(assert (=> b!1852272 m!2278796))

(assert (=> b!1852272 m!2278794))

(declare-fun m!2278798 () Bool)

(assert (=> b!1852272 m!2278798))

(declare-fun m!2278800 () Bool)

(assert (=> b!1852272 m!2278800))

(declare-fun m!2278802 () Bool)

(assert (=> b!1852272 m!2278802))

(assert (=> b!1852272 m!2278792))

(declare-fun m!2278804 () Bool)

(assert (=> b!1852272 m!2278804))

(declare-fun m!2278806 () Bool)

(assert (=> b!1852272 m!2278806))

(declare-fun m!2278808 () Bool)

(assert (=> b!1852272 m!2278808))

(declare-fun m!2278810 () Bool)

(assert (=> b!1852272 m!2278810))

(assert (=> b!1852272 m!2278461))

(assert (=> b!1852272 m!2278804))

(assert (=> b!1852272 m!2278800))

(declare-fun m!2278812 () Bool)

(assert (=> b!1852272 m!2278812))

(declare-fun m!2278814 () Bool)

(assert (=> b!1852272 m!2278814))

(assert (=> b!1852272 m!2278784))

(assert (=> b!1852272 m!2278804))

(declare-fun m!2278816 () Bool)

(assert (=> b!1852272 m!2278816))

(assert (=> b!1852272 m!2278788))

(declare-fun m!2278818 () Bool)

(assert (=> b!1852272 m!2278818))

(assert (=> b!1852272 m!2278790))

(declare-fun m!2278820 () Bool)

(assert (=> b!1852272 m!2278820))

(assert (=> b!1852272 m!2278459))

(assert (=> b!1852272 m!2278818))

(declare-fun m!2278822 () Bool)

(assert (=> b!1852272 m!2278822))

(declare-fun m!2278824 () Bool)

(assert (=> b!1852272 m!2278824))

(declare-fun m!2278826 () Bool)

(assert (=> b!1852272 m!2278826))

(assert (=> b!1852272 m!2278808))

(declare-fun m!2278828 () Bool)

(assert (=> b!1852272 m!2278828))

(assert (=> b!1852272 m!2278824))

(declare-fun m!2278830 () Bool)

(assert (=> b!1852272 m!2278830))

(declare-fun m!2278832 () Bool)

(assert (=> b!1852272 m!2278832))

(declare-fun m!2278834 () Bool)

(assert (=> b!1852267 m!2278834))

(assert (=> b!1852267 m!2278459))

(assert (=> b!1852267 m!2278461))

(declare-fun m!2278836 () Bool)

(assert (=> b!1852267 m!2278836))

(declare-fun m!2278838 () Bool)

(assert (=> b!1852267 m!2278838))

(declare-fun m!2278840 () Bool)

(assert (=> b!1852273 m!2278840))

(declare-fun m!2278842 () Bool)

(assert (=> b!1852273 m!2278842))

(declare-fun m!2278844 () Bool)

(assert (=> b!1852271 m!2278844))

(declare-fun m!2278846 () Bool)

(assert (=> b!1852271 m!2278846))

(declare-fun m!2278848 () Bool)

(assert (=> d!566065 m!2278848))

(declare-fun m!2278850 () Bool)

(assert (=> d!566065 m!2278850))

(assert (=> d!566065 m!2278459))

(assert (=> d!566065 m!2278461))

(assert (=> d!566065 m!2278836))

(declare-fun m!2278852 () Bool)

(assert (=> d!566065 m!2278852))

(assert (=> d!566065 m!2278832))

(declare-fun m!2278854 () Bool)

(assert (=> d!566065 m!2278854))

(declare-fun m!2278856 () Bool)

(assert (=> d!566065 m!2278856))

(declare-fun m!2278858 () Bool)

(assert (=> b!1852269 m!2278858))

(assert (=> b!1852269 m!2278459))

(assert (=> b!1852269 m!2278858))

(declare-fun m!2278860 () Bool)

(assert (=> b!1852269 m!2278860))

(assert (=> b!1852269 m!2278461))

(declare-fun m!2278862 () Bool)

(assert (=> b!1852269 m!2278862))

(assert (=> b!1852269 m!2278860))

(assert (=> b!1852269 m!2278862))

(declare-fun m!2278864 () Bool)

(assert (=> b!1852269 m!2278864))

(assert (=> b!1851995 d!566065))

(declare-fun b!1852286 () Bool)

(declare-fun res!831139 () Bool)

(declare-fun e!1183917 () Bool)

(assert (=> b!1852286 (=> (not res!831139) (not e!1183917))))

(declare-fun ++!5553 (Conc!6793 Conc!6793) Conc!6793)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1852286 (= res!831139 (>= (height!1029 (++!5553 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))))) (max!0 (height!1029 (c!302091 (BalanceConc!13509 Empty!6793))) (height!1029 (c!302091 (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881)))))))))))

(declare-fun b!1852284 () Bool)

(declare-fun res!831137 () Bool)

(assert (=> b!1852284 (=> (not res!831137) (not e!1183917))))

(assert (=> b!1852284 (= res!831137 (isBalanced!2116 (++!5553 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))))))))

(declare-fun d!566067 () Bool)

(assert (=> d!566067 e!1183917))

(declare-fun res!831136 () Bool)

(assert (=> d!566067 (=> (not res!831136) (not e!1183917))))

(declare-fun appendAssocInst!508 (Conc!6793 Conc!6793) Bool)

(assert (=> d!566067 (= res!831136 (appendAssocInst!508 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881)))))))))

(declare-fun lt!716022 () BalanceConc!13508)

(assert (=> d!566067 (= lt!716022 (BalanceConc!13509 (++!5553 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))))))))

(assert (=> d!566067 (= (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))) lt!716022)))

(declare-fun b!1852285 () Bool)

(declare-fun res!831138 () Bool)

(assert (=> b!1852285 (=> (not res!831138) (not e!1183917))))

(assert (=> b!1852285 (= res!831138 (<= (height!1029 (++!5553 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))))) (+ (max!0 (height!1029 (c!302091 (BalanceConc!13509 Empty!6793))) (height!1029 (c!302091 (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))))) 1)))))

(declare-fun b!1852287 () Bool)

(assert (=> b!1852287 (= e!1183917 (= (list!8319 lt!716022) (++!5551 (list!8319 (BalanceConc!13509 Empty!6793)) (list!8319 (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881))))))))))

(assert (= (and d!566067 res!831136) b!1852284))

(assert (= (and b!1852284 res!831137) b!1852285))

(assert (= (and b!1852285 res!831138) b!1852286))

(assert (= (and b!1852286 res!831139) b!1852287))

(declare-fun m!2278866 () Bool)

(assert (=> b!1852284 m!2278866))

(assert (=> b!1852284 m!2278866))

(declare-fun m!2278868 () Bool)

(assert (=> b!1852284 m!2278868))

(declare-fun m!2278870 () Bool)

(assert (=> b!1852287 m!2278870))

(assert (=> b!1852287 m!2278421))

(assert (=> b!1852287 m!2278457))

(declare-fun m!2278872 () Bool)

(assert (=> b!1852287 m!2278872))

(assert (=> b!1852287 m!2278421))

(assert (=> b!1852287 m!2278872))

(declare-fun m!2278874 () Bool)

(assert (=> b!1852287 m!2278874))

(declare-fun m!2278876 () Bool)

(assert (=> d!566067 m!2278876))

(assert (=> d!566067 m!2278866))

(declare-fun m!2278878 () Bool)

(assert (=> b!1852285 m!2278878))

(assert (=> b!1852285 m!2278866))

(declare-fun m!2278880 () Bool)

(assert (=> b!1852285 m!2278880))

(declare-fun m!2278882 () Bool)

(assert (=> b!1852285 m!2278882))

(assert (=> b!1852285 m!2278882))

(assert (=> b!1852285 m!2278878))

(declare-fun m!2278884 () Bool)

(assert (=> b!1852285 m!2278884))

(assert (=> b!1852285 m!2278866))

(assert (=> b!1852286 m!2278878))

(assert (=> b!1852286 m!2278866))

(assert (=> b!1852286 m!2278880))

(assert (=> b!1852286 m!2278882))

(assert (=> b!1852286 m!2278882))

(assert (=> b!1852286 m!2278878))

(assert (=> b!1852286 m!2278884))

(assert (=> b!1852286 m!2278866))

(assert (=> b!1851995 d!566067))

(declare-fun d!566069 () Bool)

(declare-fun lt!716025 () BalanceConc!13508)

(assert (=> d!566069 (= (list!8319 lt!716025) (originalCharacters!4485 (_1!11336 (v!26025 (_1!11337 lt!715881)))))))

(declare-fun dynLambda!10170 (Int TokenValue!3794) BalanceConc!13508)

(assert (=> d!566069 (= lt!716025 (dynLambda!10170 (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 (_1!11337 lt!715881)))))) (value!115403 (_1!11336 (v!26025 (_1!11337 lt!715881))))))))

(assert (=> d!566069 (= (charsOf!2294 (_1!11336 (v!26025 (_1!11337 lt!715881)))) lt!716025)))

(declare-fun b_lambda!61433 () Bool)

(assert (=> (not b_lambda!61433) (not d!566069)))

(declare-fun t!172424 () Bool)

(declare-fun tb!112897 () Bool)

(assert (=> (and b!1851918 (= (toChars!5110 (transformation!3678 (h!25944 rules!1331))) (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 (_1!11337 lt!715881))))))) t!172424) tb!112897))

(declare-fun b!1852292 () Bool)

(declare-fun e!1183920 () Bool)

(declare-fun tp!524946 () Bool)

(assert (=> b!1852292 (= e!1183920 (and (inv!26922 (c!302091 (dynLambda!10170 (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 (_1!11337 lt!715881)))))) (value!115403 (_1!11336 (v!26025 (_1!11337 lt!715881))))))) tp!524946))))

(declare-fun result!136134 () Bool)

(assert (=> tb!112897 (= result!136134 (and (inv!26920 (dynLambda!10170 (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 (_1!11337 lt!715881)))))) (value!115403 (_1!11336 (v!26025 (_1!11337 lt!715881)))))) e!1183920))))

(assert (= tb!112897 b!1852292))

(declare-fun m!2278886 () Bool)

(assert (=> b!1852292 m!2278886))

(declare-fun m!2278888 () Bool)

(assert (=> tb!112897 m!2278888))

(assert (=> d!566069 t!172424))

(declare-fun b_and!144113 () Bool)

(assert (= b_and!144103 (and (=> t!172424 result!136134) b_and!144113)))

(declare-fun tb!112899 () Bool)

(declare-fun t!172426 () Bool)

(assert (=> (and b!1852082 (= (toChars!5110 (transformation!3678 (h!25944 (t!172417 rules!1331)))) (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 (_1!11337 lt!715881))))))) t!172426) tb!112899))

(declare-fun result!136138 () Bool)

(assert (= result!136138 result!136134))

(assert (=> d!566069 t!172426))

(declare-fun b_and!144115 () Bool)

(assert (= b_and!144111 (and (=> t!172426 result!136138) b_and!144115)))

(declare-fun m!2278890 () Bool)

(assert (=> d!566069 m!2278890))

(declare-fun m!2278892 () Bool)

(assert (=> d!566069 m!2278892))

(assert (=> b!1851995 d!566069))

(declare-fun d!566071 () Bool)

(declare-fun e!1183923 () Bool)

(assert (=> d!566071 e!1183923))

(declare-fun res!831142 () Bool)

(assert (=> d!566071 (=> (not res!831142) (not e!1183923))))

(declare-fun append!595 (Conc!6794 Token!6908) Conc!6794)

(assert (=> d!566071 (= res!831142 (isBalanced!2117 (append!595 (c!302092 (BalanceConc!13511 Empty!6794)) (_1!11336 (v!26025 (_1!11337 lt!715881))))))))

(declare-fun lt!716028 () BalanceConc!13510)

(assert (=> d!566071 (= lt!716028 (BalanceConc!13511 (append!595 (c!302092 (BalanceConc!13511 Empty!6794)) (_1!11336 (v!26025 (_1!11337 lt!715881))))))))

(assert (=> d!566071 (= (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 (_1!11337 lt!715881)))) lt!716028)))

(declare-fun b!1852295 () Bool)

(declare-fun $colon+!130 (List!20616 Token!6908) List!20616)

(assert (=> b!1852295 (= e!1183923 (= (list!8320 lt!716028) ($colon+!130 (list!8320 (BalanceConc!13511 Empty!6794)) (_1!11336 (v!26025 (_1!11337 lt!715881))))))))

(assert (= (and d!566071 res!831142) b!1852295))

(declare-fun m!2278894 () Bool)

(assert (=> d!566071 m!2278894))

(assert (=> d!566071 m!2278894))

(declare-fun m!2278896 () Bool)

(assert (=> d!566071 m!2278896))

(declare-fun m!2278898 () Bool)

(assert (=> b!1852295 m!2278898))

(assert (=> b!1852295 m!2278383))

(assert (=> b!1852295 m!2278383))

(declare-fun m!2278900 () Bool)

(assert (=> b!1852295 m!2278900))

(assert (=> b!1851995 d!566071))

(declare-fun bs!410234 () Bool)

(declare-fun d!566073 () Bool)

(assert (= bs!410234 (and d!566073 d!566025)))

(declare-fun lambda!73232 () Int)

(assert (=> bs!410234 (= lambda!73232 lambda!73223)))

(declare-fun bs!410235 () Bool)

(assert (= bs!410235 (and d!566073 d!566023)))

(assert (=> bs!410235 (= lambda!73232 lambda!73222)))

(declare-fun bs!410236 () Bool)

(assert (= bs!410236 (and d!566073 d!566059)))

(assert (=> bs!410236 (= lambda!73232 lambda!73228)))

(declare-fun bs!410237 () Bool)

(assert (= bs!410237 (and d!566073 d!566031)))

(assert (=> bs!410237 (= lambda!73232 lambda!73224)))

(declare-fun bs!410238 () Bool)

(assert (= bs!410238 (and d!566073 d!566047)))

(assert (=> bs!410238 (= lambda!73232 lambda!73226)))

(declare-fun bs!410239 () Bool)

(assert (= bs!410239 (and d!566073 d!565993)))

(assert (=> bs!410239 (= lambda!73232 lambda!73208)))

(declare-fun bs!410240 () Bool)

(assert (= bs!410240 (and d!566073 d!566045)))

(assert (=> bs!410240 (= lambda!73232 lambda!73225)))

(declare-fun bs!410241 () Bool)

(assert (= bs!410241 (and d!566073 d!566021)))

(assert (=> bs!410241 (= lambda!73232 lambda!73221)))

(declare-fun bs!410242 () Bool)

(assert (= bs!410242 (and d!566073 d!565997)))

(assert (=> bs!410242 (= lambda!73232 lambda!73212)))

(declare-fun bs!410243 () Bool)

(assert (= bs!410243 (and d!566073 d!566007)))

(assert (=> bs!410243 (= lambda!73232 lambda!73213)))

(declare-fun bs!410244 () Bool)

(assert (= bs!410244 (and d!566073 d!566057)))

(assert (=> bs!410244 (= lambda!73232 lambda!73227)))

(declare-fun bs!410245 () Bool)

(assert (= bs!410245 (and d!566073 d!566017)))

(assert (=> bs!410245 (= lambda!73232 lambda!73220)))

(assert (=> d!566073 (= (inv!26926 setElem!11433) (forall!4390 (exprs!1451 setElem!11433) lambda!73232))))

(declare-fun bs!410246 () Bool)

(assert (= bs!410246 d!566073))

(declare-fun m!2278902 () Bool)

(assert (=> bs!410246 m!2278902))

(assert (=> setNonEmpty!11433 d!566073))

(declare-fun b!1852299 () Bool)

(declare-fun e!1183925 () List!20613)

(assert (=> b!1852299 (= e!1183925 (++!5551 (list!8321 (left!16477 (c!302091 (_2!11333 (_1!11334 lt!715793))))) (list!8321 (right!16807 (c!302091 (_2!11333 (_1!11334 lt!715793)))))))))

(declare-fun b!1852298 () Bool)

(assert (=> b!1852298 (= e!1183925 (list!8324 (xs!9669 (c!302091 (_2!11333 (_1!11334 lt!715793))))))))

(declare-fun b!1852296 () Bool)

(declare-fun e!1183924 () List!20613)

(assert (=> b!1852296 (= e!1183924 Nil!20541)))

(declare-fun b!1852297 () Bool)

(assert (=> b!1852297 (= e!1183924 e!1183925)))

(declare-fun c!302161 () Bool)

(assert (=> b!1852297 (= c!302161 ((_ is Leaf!9938) (c!302091 (_2!11333 (_1!11334 lt!715793)))))))

(declare-fun d!566075 () Bool)

(declare-fun c!302160 () Bool)

(assert (=> d!566075 (= c!302160 ((_ is Empty!6793) (c!302091 (_2!11333 (_1!11334 lt!715793)))))))

(assert (=> d!566075 (= (list!8321 (c!302091 (_2!11333 (_1!11334 lt!715793)))) e!1183924)))

(assert (= (and d!566075 c!302160) b!1852296))

(assert (= (and d!566075 (not c!302160)) b!1852297))

(assert (= (and b!1852297 c!302161) b!1852298))

(assert (= (and b!1852297 (not c!302161)) b!1852299))

(declare-fun m!2278904 () Bool)

(assert (=> b!1852299 m!2278904))

(declare-fun m!2278906 () Bool)

(assert (=> b!1852299 m!2278906))

(assert (=> b!1852299 m!2278904))

(assert (=> b!1852299 m!2278906))

(declare-fun m!2278908 () Bool)

(assert (=> b!1852299 m!2278908))

(declare-fun m!2278910 () Bool)

(assert (=> b!1852298 m!2278910))

(assert (=> d!565971 d!566075))

(declare-fun bs!410247 () Bool)

(declare-fun d!566077 () Bool)

(assert (= bs!410247 (and d!566077 d!566025)))

(declare-fun lambda!73233 () Int)

(assert (=> bs!410247 (= lambda!73233 lambda!73223)))

(declare-fun bs!410248 () Bool)

(assert (= bs!410248 (and d!566077 d!566073)))

(assert (=> bs!410248 (= lambda!73233 lambda!73232)))

(declare-fun bs!410249 () Bool)

(assert (= bs!410249 (and d!566077 d!566023)))

(assert (=> bs!410249 (= lambda!73233 lambda!73222)))

(declare-fun bs!410250 () Bool)

(assert (= bs!410250 (and d!566077 d!566059)))

(assert (=> bs!410250 (= lambda!73233 lambda!73228)))

(declare-fun bs!410251 () Bool)

(assert (= bs!410251 (and d!566077 d!566031)))

(assert (=> bs!410251 (= lambda!73233 lambda!73224)))

(declare-fun bs!410252 () Bool)

(assert (= bs!410252 (and d!566077 d!566047)))

(assert (=> bs!410252 (= lambda!73233 lambda!73226)))

(declare-fun bs!410253 () Bool)

(assert (= bs!410253 (and d!566077 d!565993)))

(assert (=> bs!410253 (= lambda!73233 lambda!73208)))

(declare-fun bs!410254 () Bool)

(assert (= bs!410254 (and d!566077 d!566045)))

(assert (=> bs!410254 (= lambda!73233 lambda!73225)))

(declare-fun bs!410255 () Bool)

(assert (= bs!410255 (and d!566077 d!566021)))

(assert (=> bs!410255 (= lambda!73233 lambda!73221)))

(declare-fun bs!410256 () Bool)

(assert (= bs!410256 (and d!566077 d!565997)))

(assert (=> bs!410256 (= lambda!73233 lambda!73212)))

(declare-fun bs!410257 () Bool)

(assert (= bs!410257 (and d!566077 d!566007)))

(assert (=> bs!410257 (= lambda!73233 lambda!73213)))

(declare-fun bs!410258 () Bool)

(assert (= bs!410258 (and d!566077 d!566057)))

(assert (=> bs!410258 (= lambda!73233 lambda!73227)))

(declare-fun bs!410259 () Bool)

(assert (= bs!410259 (and d!566077 d!566017)))

(assert (=> bs!410259 (= lambda!73233 lambda!73220)))

(assert (=> d!566077 (= (inv!26926 setElem!11434) (forall!4390 (exprs!1451 setElem!11434) lambda!73233))))

(declare-fun bs!410260 () Bool)

(assert (= bs!410260 d!566077))

(declare-fun m!2278912 () Bool)

(assert (=> bs!410260 m!2278912))

(assert (=> setNonEmpty!11434 d!566077))

(declare-fun bs!410261 () Bool)

(declare-fun d!566079 () Bool)

(assert (= bs!410261 (and d!566079 d!566025)))

(declare-fun lambda!73234 () Int)

(assert (=> bs!410261 (= lambda!73234 lambda!73223)))

(declare-fun bs!410262 () Bool)

(assert (= bs!410262 (and d!566079 d!566073)))

(assert (=> bs!410262 (= lambda!73234 lambda!73232)))

(declare-fun bs!410263 () Bool)

(assert (= bs!410263 (and d!566079 d!566077)))

(assert (=> bs!410263 (= lambda!73234 lambda!73233)))

(declare-fun bs!410264 () Bool)

(assert (= bs!410264 (and d!566079 d!566023)))

(assert (=> bs!410264 (= lambda!73234 lambda!73222)))

(declare-fun bs!410265 () Bool)

(assert (= bs!410265 (and d!566079 d!566059)))

(assert (=> bs!410265 (= lambda!73234 lambda!73228)))

(declare-fun bs!410266 () Bool)

(assert (= bs!410266 (and d!566079 d!566031)))

(assert (=> bs!410266 (= lambda!73234 lambda!73224)))

(declare-fun bs!410267 () Bool)

(assert (= bs!410267 (and d!566079 d!566047)))

(assert (=> bs!410267 (= lambda!73234 lambda!73226)))

(declare-fun bs!410268 () Bool)

(assert (= bs!410268 (and d!566079 d!565993)))

(assert (=> bs!410268 (= lambda!73234 lambda!73208)))

(declare-fun bs!410269 () Bool)

(assert (= bs!410269 (and d!566079 d!566045)))

(assert (=> bs!410269 (= lambda!73234 lambda!73225)))

(declare-fun bs!410270 () Bool)

(assert (= bs!410270 (and d!566079 d!566021)))

(assert (=> bs!410270 (= lambda!73234 lambda!73221)))

(declare-fun bs!410271 () Bool)

(assert (= bs!410271 (and d!566079 d!565997)))

(assert (=> bs!410271 (= lambda!73234 lambda!73212)))

(declare-fun bs!410272 () Bool)

(assert (= bs!410272 (and d!566079 d!566007)))

(assert (=> bs!410272 (= lambda!73234 lambda!73213)))

(declare-fun bs!410273 () Bool)

(assert (= bs!410273 (and d!566079 d!566057)))

(assert (=> bs!410273 (= lambda!73234 lambda!73227)))

(declare-fun bs!410274 () Bool)

(assert (= bs!410274 (and d!566079 d!566017)))

(assert (=> bs!410274 (= lambda!73234 lambda!73220)))

(assert (=> d!566079 (= (inv!26926 (_2!11331 (_1!11332 (h!25941 mapDefault!8814)))) (forall!4390 (exprs!1451 (_2!11331 (_1!11332 (h!25941 mapDefault!8814)))) lambda!73234))))

(declare-fun bs!410275 () Bool)

(assert (= bs!410275 d!566079))

(declare-fun m!2278914 () Bool)

(assert (=> bs!410275 m!2278914))

(assert (=> b!1852085 d!566079))

(declare-fun d!566081 () Bool)

(declare-fun res!831149 () Bool)

(declare-fun e!1183930 () Bool)

(assert (=> d!566081 (=> (not res!831149) (not e!1183930))))

(declare-fun valid!1514 (MutableMap!1838) Bool)

(assert (=> d!566081 (= res!831149 (valid!1514 (cache!2219 cacheDown!454)))))

(assert (=> d!566081 (= (validCacheMapDown!175 (cache!2219 cacheDown!454)) e!1183930)))

(declare-fun b!1852306 () Bool)

(declare-fun res!831150 () Bool)

(assert (=> b!1852306 (=> (not res!831150) (not e!1183930))))

(declare-fun invariantList!258 (List!20612) Bool)

(declare-datatypes ((ListMap!565 0))(
  ( (ListMap!566 (toList!983 List!20612)) )
))
(declare-fun map!4324 (MutableMap!1838) ListMap!565)

(assert (=> b!1852306 (= res!831150 (invariantList!258 (toList!983 (map!4324 (cache!2219 cacheDown!454)))))))

(declare-fun b!1852307 () Bool)

(declare-fun lambda!73237 () Int)

(declare-fun forall!4393 (List!20612 Int) Bool)

(assert (=> b!1852307 (= e!1183930 (forall!4393 (toList!983 (map!4324 (cache!2219 cacheDown!454))) lambda!73237))))

(assert (= (and d!566081 res!831149) b!1852306))

(assert (= (and b!1852306 res!831150) b!1852307))

(declare-fun m!2278917 () Bool)

(assert (=> d!566081 m!2278917))

(declare-fun m!2278919 () Bool)

(assert (=> b!1852306 m!2278919))

(declare-fun m!2278921 () Bool)

(assert (=> b!1852306 m!2278921))

(assert (=> b!1852307 m!2278919))

(declare-fun m!2278923 () Bool)

(assert (=> b!1852307 m!2278923))

(assert (=> b!1851959 d!566081))

(declare-fun d!566083 () Bool)

(assert (=> d!566083 (= (inv!26927 (xs!9669 (c!302091 input!736))) (<= (size!16221 (innerList!6853 (xs!9669 (c!302091 input!736)))) 2147483647))))

(declare-fun bs!410276 () Bool)

(assert (= bs!410276 d!566083))

(declare-fun m!2278925 () Bool)

(assert (=> bs!410276 m!2278925))

(assert (=> b!1852042 d!566083))

(declare-fun bs!410277 () Bool)

(declare-fun d!566085 () Bool)

(assert (= bs!410277 (and d!566085 d!566025)))

(declare-fun lambda!73238 () Int)

(assert (=> bs!410277 (= lambda!73238 lambda!73223)))

(declare-fun bs!410278 () Bool)

(assert (= bs!410278 (and d!566085 d!566073)))

(assert (=> bs!410278 (= lambda!73238 lambda!73232)))

(declare-fun bs!410279 () Bool)

(assert (= bs!410279 (and d!566085 d!566079)))

(assert (=> bs!410279 (= lambda!73238 lambda!73234)))

(declare-fun bs!410280 () Bool)

(assert (= bs!410280 (and d!566085 d!566077)))

(assert (=> bs!410280 (= lambda!73238 lambda!73233)))

(declare-fun bs!410281 () Bool)

(assert (= bs!410281 (and d!566085 d!566023)))

(assert (=> bs!410281 (= lambda!73238 lambda!73222)))

(declare-fun bs!410282 () Bool)

(assert (= bs!410282 (and d!566085 d!566059)))

(assert (=> bs!410282 (= lambda!73238 lambda!73228)))

(declare-fun bs!410283 () Bool)

(assert (= bs!410283 (and d!566085 d!566031)))

(assert (=> bs!410283 (= lambda!73238 lambda!73224)))

(declare-fun bs!410284 () Bool)

(assert (= bs!410284 (and d!566085 d!566047)))

(assert (=> bs!410284 (= lambda!73238 lambda!73226)))

(declare-fun bs!410285 () Bool)

(assert (= bs!410285 (and d!566085 d!565993)))

(assert (=> bs!410285 (= lambda!73238 lambda!73208)))

(declare-fun bs!410286 () Bool)

(assert (= bs!410286 (and d!566085 d!566045)))

(assert (=> bs!410286 (= lambda!73238 lambda!73225)))

(declare-fun bs!410287 () Bool)

(assert (= bs!410287 (and d!566085 d!566021)))

(assert (=> bs!410287 (= lambda!73238 lambda!73221)))

(declare-fun bs!410288 () Bool)

(assert (= bs!410288 (and d!566085 d!565997)))

(assert (=> bs!410288 (= lambda!73238 lambda!73212)))

(declare-fun bs!410289 () Bool)

(assert (= bs!410289 (and d!566085 d!566007)))

(assert (=> bs!410289 (= lambda!73238 lambda!73213)))

(declare-fun bs!410290 () Bool)

(assert (= bs!410290 (and d!566085 d!566057)))

(assert (=> bs!410290 (= lambda!73238 lambda!73227)))

(declare-fun bs!410291 () Bool)

(assert (= bs!410291 (and d!566085 d!566017)))

(assert (=> bs!410291 (= lambda!73238 lambda!73220)))

(assert (=> d!566085 (= (inv!26926 setElem!11425) (forall!4390 (exprs!1451 setElem!11425) lambda!73238))))

(declare-fun bs!410292 () Bool)

(assert (= bs!410292 d!566085))

(declare-fun m!2278927 () Bool)

(assert (=> bs!410292 m!2278927))

(assert (=> setNonEmpty!11425 d!566085))

(declare-fun d!566087 () Bool)

(declare-fun res!831157 () Bool)

(declare-fun e!1183933 () Bool)

(assert (=> d!566087 (=> (not res!831157) (not e!1183933))))

(assert (=> d!566087 (= res!831157 (= (csize!13816 (c!302091 input!736)) (+ (size!16223 (left!16477 (c!302091 input!736))) (size!16223 (right!16807 (c!302091 input!736))))))))

(assert (=> d!566087 (= (inv!26924 (c!302091 input!736)) e!1183933)))

(declare-fun b!1852314 () Bool)

(declare-fun res!831158 () Bool)

(assert (=> b!1852314 (=> (not res!831158) (not e!1183933))))

(assert (=> b!1852314 (= res!831158 (and (not (= (left!16477 (c!302091 input!736)) Empty!6793)) (not (= (right!16807 (c!302091 input!736)) Empty!6793))))))

(declare-fun b!1852315 () Bool)

(declare-fun res!831159 () Bool)

(assert (=> b!1852315 (=> (not res!831159) (not e!1183933))))

(assert (=> b!1852315 (= res!831159 (= (cheight!7004 (c!302091 input!736)) (+ (max!0 (height!1029 (left!16477 (c!302091 input!736))) (height!1029 (right!16807 (c!302091 input!736)))) 1)))))

(declare-fun b!1852316 () Bool)

(assert (=> b!1852316 (= e!1183933 (<= 0 (cheight!7004 (c!302091 input!736))))))

(assert (= (and d!566087 res!831157) b!1852314))

(assert (= (and b!1852314 res!831158) b!1852315))

(assert (= (and b!1852315 res!831159) b!1852316))

(declare-fun m!2278929 () Bool)

(assert (=> d!566087 m!2278929))

(declare-fun m!2278931 () Bool)

(assert (=> d!566087 m!2278931))

(assert (=> b!1852315 m!2278565))

(assert (=> b!1852315 m!2278567))

(assert (=> b!1852315 m!2278565))

(assert (=> b!1852315 m!2278567))

(declare-fun m!2278933 () Bool)

(assert (=> b!1852315 m!2278933))

(assert (=> b!1851948 d!566087))

(assert (=> d!565987 d!566009))

(declare-fun d!566089 () Bool)

(assert (=> d!566089 (= (list!8320 (_1!11333 lt!715796)) (list!8322 (c!302092 (_1!11333 lt!715796))))))

(declare-fun bs!410293 () Bool)

(assert (= bs!410293 d!566089))

(declare-fun m!2278935 () Bool)

(assert (=> bs!410293 m!2278935))

(assert (=> b!1851971 d!566089))

(assert (=> b!1851971 d!566001))

(assert (=> b!1851971 d!566003))

(declare-fun bs!410294 () Bool)

(declare-fun d!566091 () Bool)

(assert (= bs!410294 (and d!566091 d!566025)))

(declare-fun lambda!73239 () Int)

(assert (=> bs!410294 (= lambda!73239 lambda!73223)))

(declare-fun bs!410295 () Bool)

(assert (= bs!410295 (and d!566091 d!566085)))

(assert (=> bs!410295 (= lambda!73239 lambda!73238)))

(declare-fun bs!410296 () Bool)

(assert (= bs!410296 (and d!566091 d!566073)))

(assert (=> bs!410296 (= lambda!73239 lambda!73232)))

(declare-fun bs!410297 () Bool)

(assert (= bs!410297 (and d!566091 d!566079)))

(assert (=> bs!410297 (= lambda!73239 lambda!73234)))

(declare-fun bs!410298 () Bool)

(assert (= bs!410298 (and d!566091 d!566077)))

(assert (=> bs!410298 (= lambda!73239 lambda!73233)))

(declare-fun bs!410299 () Bool)

(assert (= bs!410299 (and d!566091 d!566023)))

(assert (=> bs!410299 (= lambda!73239 lambda!73222)))

(declare-fun bs!410300 () Bool)

(assert (= bs!410300 (and d!566091 d!566059)))

(assert (=> bs!410300 (= lambda!73239 lambda!73228)))

(declare-fun bs!410301 () Bool)

(assert (= bs!410301 (and d!566091 d!566031)))

(assert (=> bs!410301 (= lambda!73239 lambda!73224)))

(declare-fun bs!410302 () Bool)

(assert (= bs!410302 (and d!566091 d!566047)))

(assert (=> bs!410302 (= lambda!73239 lambda!73226)))

(declare-fun bs!410303 () Bool)

(assert (= bs!410303 (and d!566091 d!565993)))

(assert (=> bs!410303 (= lambda!73239 lambda!73208)))

(declare-fun bs!410304 () Bool)

(assert (= bs!410304 (and d!566091 d!566045)))

(assert (=> bs!410304 (= lambda!73239 lambda!73225)))

(declare-fun bs!410305 () Bool)

(assert (= bs!410305 (and d!566091 d!566021)))

(assert (=> bs!410305 (= lambda!73239 lambda!73221)))

(declare-fun bs!410306 () Bool)

(assert (= bs!410306 (and d!566091 d!565997)))

(assert (=> bs!410306 (= lambda!73239 lambda!73212)))

(declare-fun bs!410307 () Bool)

(assert (= bs!410307 (and d!566091 d!566007)))

(assert (=> bs!410307 (= lambda!73239 lambda!73213)))

(declare-fun bs!410308 () Bool)

(assert (= bs!410308 (and d!566091 d!566057)))

(assert (=> bs!410308 (= lambda!73239 lambda!73227)))

(declare-fun bs!410309 () Bool)

(assert (= bs!410309 (and d!566091 d!566017)))

(assert (=> bs!410309 (= lambda!73239 lambda!73220)))

(assert (=> d!566091 (= (inv!26926 setElem!11432) (forall!4390 (exprs!1451 setElem!11432) lambda!73239))))

(declare-fun bs!410310 () Bool)

(assert (= bs!410310 d!566091))

(declare-fun m!2278937 () Bool)

(assert (=> bs!410310 m!2278937))

(assert (=> setNonEmpty!11432 d!566091))

(declare-fun lt!716102 () Option!4231)

(declare-fun b!1852331 () Bool)

(declare-fun lt!716119 () tuple2!19816)

(assert (=> b!1852331 (= lt!716119 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716102))))))

(declare-fun e!1183942 () tuple2!19816)

(assert (=> b!1852331 (= e!1183942 (tuple2!19817 (prepend!875 (_1!11333 lt!716119) (_1!11336 (v!26025 lt!716102))) (_2!11333 lt!716119)))))

(declare-fun lt!716115 () tuple2!19816)

(declare-fun b!1852332 () Bool)

(declare-fun e!1183943 () Bool)

(assert (=> b!1852332 (= e!1183943 (= (list!8319 (_2!11333 lt!716115)) (list!8319 (_2!11333 (lexRec!401 thiss!12117 rules!1331 input!736)))))))

(declare-fun b!1852333 () Bool)

(assert (=> b!1852333 (= e!1183942 (tuple2!19817 (BalanceConc!13511 Empty!6794) input!736))))

(declare-fun d!566093 () Bool)

(assert (=> d!566093 e!1183943))

(declare-fun res!831162 () Bool)

(assert (=> d!566093 (=> (not res!831162) (not e!1183943))))

(assert (=> d!566093 (= res!831162 (= (list!8320 (_1!11333 lt!716115)) (list!8320 (_1!11333 (lexRec!401 thiss!12117 rules!1331 input!736)))))))

(declare-fun e!1183944 () tuple2!19816)

(assert (=> d!566093 (= lt!716115 e!1183944)))

(declare-fun c!302170 () Bool)

(declare-fun lt!716097 () Option!4231)

(assert (=> d!566093 (= c!302170 ((_ is Some!4230) lt!716097))))

(declare-fun maxPrefixZipperSequenceV2!295 (LexerInterface!3300 List!20615 BalanceConc!13508 BalanceConc!13508) Option!4231)

(assert (=> d!566093 (= lt!716097 (maxPrefixZipperSequenceV2!295 thiss!12117 rules!1331 input!736 input!736))))

(declare-fun lt!716106 () Unit!35142)

(declare-fun lt!716104 () Unit!35142)

(assert (=> d!566093 (= lt!716106 lt!716104)))

(declare-fun lt!716128 () List!20613)

(declare-fun lt!716107 () List!20613)

(declare-fun isSuffix!446 (List!20613 List!20613) Bool)

(assert (=> d!566093 (isSuffix!446 lt!716128 (++!5551 lt!716107 lt!716128))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!347 (List!20613 List!20613) Unit!35142)

(assert (=> d!566093 (= lt!716104 (lemmaConcatTwoListThenFSndIsSuffix!347 lt!716107 lt!716128))))

(assert (=> d!566093 (= lt!716128 (list!8319 input!736))))

(assert (=> d!566093 (= lt!716107 (list!8319 (BalanceConc!13509 Empty!6793)))))

(assert (=> d!566093 (= (lexTailRecV2!654 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794)) lt!716115)))

(declare-fun lt!716117 () BalanceConc!13508)

(declare-fun b!1852334 () Bool)

(assert (=> b!1852334 (= e!1183944 (lexTailRecV2!654 thiss!12117 rules!1331 input!736 lt!716117 (_2!11336 (v!26025 lt!716097)) (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!716097)))))))

(declare-fun lt!716118 () tuple2!19816)

(assert (=> b!1852334 (= lt!716118 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716097))))))

(declare-fun lt!716114 () List!20613)

(assert (=> b!1852334 (= lt!716114 (list!8319 (BalanceConc!13509 Empty!6793)))))

(declare-fun lt!716109 () List!20613)

(assert (=> b!1852334 (= lt!716109 (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!716097)))))))

(declare-fun lt!716124 () List!20613)

(assert (=> b!1852334 (= lt!716124 (list!8319 (_2!11336 (v!26025 lt!716097))))))

(declare-fun lt!716099 () Unit!35142)

(assert (=> b!1852334 (= lt!716099 (lemmaConcatAssociativity!1093 lt!716114 lt!716109 lt!716124))))

(assert (=> b!1852334 (= (++!5551 (++!5551 lt!716114 lt!716109) lt!716124) (++!5551 lt!716114 (++!5551 lt!716109 lt!716124)))))

(declare-fun lt!716105 () Unit!35142)

(assert (=> b!1852334 (= lt!716105 lt!716099)))

(assert (=> b!1852334 (= lt!716102 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 input!736))))

(declare-fun c!302168 () Bool)

(assert (=> b!1852334 (= c!302168 ((_ is Some!4230) lt!716102))))

(assert (=> b!1852334 (= (lexRec!401 thiss!12117 rules!1331 input!736) e!1183942)))

(declare-fun lt!716098 () Unit!35142)

(declare-fun Unit!35154 () Unit!35142)

(assert (=> b!1852334 (= lt!716098 Unit!35154)))

(declare-fun lt!716121 () List!20616)

(assert (=> b!1852334 (= lt!716121 (list!8320 (BalanceConc!13511 Empty!6794)))))

(declare-fun lt!716113 () List!20616)

(assert (=> b!1852334 (= lt!716113 (Cons!20544 (_1!11336 (v!26025 lt!716097)) Nil!20544))))

(declare-fun lt!716125 () List!20616)

(assert (=> b!1852334 (= lt!716125 (list!8320 (_1!11333 lt!716118)))))

(declare-fun lt!716110 () Unit!35142)

(assert (=> b!1852334 (= lt!716110 (lemmaConcatAssociativity!1094 lt!716121 lt!716113 lt!716125))))

(assert (=> b!1852334 (= (++!5552 (++!5552 lt!716121 lt!716113) lt!716125) (++!5552 lt!716121 (++!5552 lt!716113 lt!716125)))))

(declare-fun lt!716100 () Unit!35142)

(assert (=> b!1852334 (= lt!716100 lt!716110)))

(declare-fun lt!716116 () List!20613)

(assert (=> b!1852334 (= lt!716116 (++!5551 (list!8319 (BalanceConc!13509 Empty!6793)) (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!716097))))))))

(declare-fun lt!716129 () List!20613)

(assert (=> b!1852334 (= lt!716129 (list!8319 (_2!11336 (v!26025 lt!716097))))))

(declare-fun lt!716103 () List!20616)

(assert (=> b!1852334 (= lt!716103 (list!8320 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!716097)))))))

(declare-fun lt!716130 () Unit!35142)

(assert (=> b!1852334 (= lt!716130 (lemmaLexThenLexPrefix!289 thiss!12117 rules!1331 lt!716116 lt!716129 lt!716103 (list!8320 (_1!11333 lt!716118)) (list!8319 (_2!11333 lt!716118))))))

(assert (=> b!1852334 (= (lexList!931 thiss!12117 rules!1331 lt!716116) (tuple2!19819 lt!716103 Nil!20541))))

(declare-fun lt!716127 () Unit!35142)

(assert (=> b!1852334 (= lt!716127 lt!716130)))

(declare-fun lt!716122 () BalanceConc!13508)

(assert (=> b!1852334 (= lt!716122 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!716097)))))))

(declare-fun lt!716112 () Option!4231)

(assert (=> b!1852334 (= lt!716112 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 lt!716122))))

(declare-fun c!302169 () Bool)

(assert (=> b!1852334 (= c!302169 ((_ is Some!4230) lt!716112))))

(declare-fun e!1183945 () tuple2!19816)

(assert (=> b!1852334 (= (lexRec!401 thiss!12117 rules!1331 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!716097))))) e!1183945)))

(declare-fun lt!716120 () Unit!35142)

(declare-fun Unit!35155 () Unit!35142)

(assert (=> b!1852334 (= lt!716120 Unit!35155)))

(assert (=> b!1852334 (= lt!716117 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!716097)))))))

(declare-fun lt!716126 () List!20613)

(assert (=> b!1852334 (= lt!716126 (list!8319 lt!716117))))

(declare-fun lt!716111 () List!20613)

(assert (=> b!1852334 (= lt!716111 (list!8319 (_2!11336 (v!26025 lt!716097))))))

(declare-fun lt!716108 () Unit!35142)

(assert (=> b!1852334 (= lt!716108 (lemmaConcatTwoListThenFSndIsSuffix!347 lt!716126 lt!716111))))

(assert (=> b!1852334 (isSuffix!446 lt!716111 (++!5551 lt!716126 lt!716111))))

(declare-fun lt!716123 () Unit!35142)

(assert (=> b!1852334 (= lt!716123 lt!716108)))

(declare-fun b!1852335 () Bool)

(assert (=> b!1852335 (= e!1183945 (tuple2!19817 (BalanceConc!13511 Empty!6794) lt!716122))))

(declare-fun lt!716101 () tuple2!19816)

(declare-fun b!1852336 () Bool)

(assert (=> b!1852336 (= lt!716101 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716112))))))

(assert (=> b!1852336 (= e!1183945 (tuple2!19817 (prepend!875 (_1!11333 lt!716101) (_1!11336 (v!26025 lt!716112))) (_2!11333 lt!716101)))))

(declare-fun b!1852337 () Bool)

(assert (=> b!1852337 (= e!1183944 (tuple2!19817 (BalanceConc!13511 Empty!6794) input!736))))

(assert (= (and d!566093 c!302170) b!1852334))

(assert (= (and d!566093 (not c!302170)) b!1852337))

(assert (= (and b!1852334 c!302168) b!1852331))

(assert (= (and b!1852334 (not c!302168)) b!1852333))

(assert (= (and b!1852334 c!302169) b!1852336))

(assert (= (and b!1852334 (not c!302169)) b!1852335))

(assert (= (and d!566093 res!831162) b!1852332))

(declare-fun m!2278939 () Bool)

(assert (=> b!1852332 m!2278939))

(assert (=> b!1852332 m!2278417))

(assert (=> b!1852332 m!2278710))

(declare-fun m!2278941 () Bool)

(assert (=> b!1852334 m!2278941))

(declare-fun m!2278943 () Bool)

(assert (=> b!1852334 m!2278943))

(declare-fun m!2278945 () Bool)

(assert (=> b!1852334 m!2278945))

(declare-fun m!2278947 () Bool)

(assert (=> b!1852334 m!2278947))

(declare-fun m!2278949 () Bool)

(assert (=> b!1852334 m!2278949))

(assert (=> b!1852334 m!2278945))

(declare-fun m!2278951 () Bool)

(assert (=> b!1852334 m!2278951))

(declare-fun m!2278953 () Bool)

(assert (=> b!1852334 m!2278953))

(declare-fun m!2278955 () Bool)

(assert (=> b!1852334 m!2278955))

(assert (=> b!1852334 m!2278383))

(declare-fun m!2278957 () Bool)

(assert (=> b!1852334 m!2278957))

(assert (=> b!1852334 m!2278435))

(declare-fun m!2278959 () Bool)

(assert (=> b!1852334 m!2278959))

(declare-fun m!2278961 () Bool)

(assert (=> b!1852334 m!2278961))

(declare-fun m!2278963 () Bool)

(assert (=> b!1852334 m!2278963))

(declare-fun m!2278965 () Bool)

(assert (=> b!1852334 m!2278965))

(assert (=> b!1852334 m!2278941))

(declare-fun m!2278967 () Bool)

(assert (=> b!1852334 m!2278967))

(assert (=> b!1852334 m!2278953))

(declare-fun m!2278969 () Bool)

(assert (=> b!1852334 m!2278969))

(declare-fun m!2278971 () Bool)

(assert (=> b!1852334 m!2278971))

(declare-fun m!2278973 () Bool)

(assert (=> b!1852334 m!2278973))

(declare-fun m!2278975 () Bool)

(assert (=> b!1852334 m!2278975))

(declare-fun m!2278977 () Bool)

(assert (=> b!1852334 m!2278977))

(declare-fun m!2278979 () Bool)

(assert (=> b!1852334 m!2278979))

(assert (=> b!1852334 m!2278421))

(declare-fun m!2278981 () Bool)

(assert (=> b!1852334 m!2278981))

(assert (=> b!1852334 m!2278421))

(assert (=> b!1852334 m!2278977))

(declare-fun m!2278983 () Bool)

(assert (=> b!1852334 m!2278983))

(assert (=> b!1852334 m!2278951))

(declare-fun m!2278985 () Bool)

(assert (=> b!1852334 m!2278985))

(assert (=> b!1852334 m!2278969))

(declare-fun m!2278987 () Bool)

(assert (=> b!1852334 m!2278987))

(assert (=> b!1852334 m!2278975))

(assert (=> b!1852334 m!2278973))

(declare-fun m!2278989 () Bool)

(assert (=> b!1852334 m!2278989))

(declare-fun m!2278991 () Bool)

(assert (=> b!1852334 m!2278991))

(assert (=> b!1852334 m!2278417))

(assert (=> b!1852334 m!2278969))

(declare-fun m!2278993 () Bool)

(assert (=> b!1852334 m!2278993))

(assert (=> b!1852334 m!2278991))

(declare-fun m!2278995 () Bool)

(assert (=> b!1852334 m!2278995))

(assert (=> b!1852334 m!2278947))

(assert (=> b!1852334 m!2278975))

(assert (=> b!1852334 m!2278959))

(declare-fun m!2278997 () Bool)

(assert (=> b!1852334 m!2278997))

(assert (=> d!566093 m!2278417))

(assert (=> d!566093 m!2278706))

(declare-fun m!2278999 () Bool)

(assert (=> d!566093 m!2278999))

(assert (=> d!566093 m!2278373))

(declare-fun m!2279001 () Bool)

(assert (=> d!566093 m!2279001))

(assert (=> d!566093 m!2278421))

(declare-fun m!2279003 () Bool)

(assert (=> d!566093 m!2279003))

(declare-fun m!2279005 () Bool)

(assert (=> d!566093 m!2279005))

(declare-fun m!2279007 () Bool)

(assert (=> d!566093 m!2279007))

(assert (=> d!566093 m!2279005))

(declare-fun m!2279009 () Bool)

(assert (=> b!1852331 m!2279009))

(declare-fun m!2279011 () Bool)

(assert (=> b!1852331 m!2279011))

(declare-fun m!2279013 () Bool)

(assert (=> b!1852336 m!2279013))

(declare-fun m!2279015 () Bool)

(assert (=> b!1852336 m!2279015))

(assert (=> d!565983 d!566093))

(assert (=> d!565983 d!566055))

(declare-fun d!566095 () Bool)

(assert (=> d!566095 (= (list!8320 (_1!11333 (lexTailRec!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794)))) (list!8322 (c!302092 (_1!11333 (lexTailRec!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794))))))))

(declare-fun bs!410311 () Bool)

(assert (= bs!410311 d!566095))

(declare-fun m!2279017 () Bool)

(assert (=> bs!410311 m!2279017))

(assert (=> d!565983 d!566095))

(declare-fun d!566097 () Bool)

(assert (=> d!566097 (= (list!8320 (_1!11333 (_1!11334 lt!715883))) (list!8322 (c!302092 (_1!11333 (_1!11334 lt!715883)))))))

(declare-fun bs!410312 () Bool)

(assert (= bs!410312 d!566097))

(declare-fun m!2279019 () Bool)

(assert (=> bs!410312 m!2279019))

(assert (=> d!565983 d!566097))

(declare-fun b!1852354 () Bool)

(declare-fun e!1183962 () Bool)

(declare-fun e!1183959 () Bool)

(assert (=> b!1852354 (= e!1183962 e!1183959)))

(declare-fun res!831179 () Bool)

(assert (=> b!1852354 (=> res!831179 e!1183959)))

(declare-fun lt!716148 () Option!4231)

(declare-fun isDefined!3533 (Option!4231) Bool)

(assert (=> b!1852354 (= res!831179 (not (isDefined!3533 lt!716148)))))

(declare-fun d!566099 () Bool)

(assert (=> d!566099 e!1183962))

(declare-fun res!831177 () Bool)

(assert (=> d!566099 (=> (not res!831177) (not e!1183962))))

(declare-fun isDefined!3534 (Option!4232) Bool)

(declare-fun maxPrefixZipper!379 (LexerInterface!3300 List!20615 List!20613) Option!4232)

(assert (=> d!566099 (= res!831177 (= (isDefined!3533 lt!716148) (isDefined!3534 (maxPrefixZipper!379 thiss!12117 rules!1331 (list!8319 input!736)))))))

(declare-fun e!1183958 () Option!4231)

(assert (=> d!566099 (= lt!716148 e!1183958)))

(declare-fun c!302173 () Bool)

(assert (=> d!566099 (= c!302173 (and ((_ is Cons!20543) rules!1331) ((_ is Nil!20543) (t!172417 rules!1331))))))

(declare-fun lt!716145 () Unit!35142)

(declare-fun lt!716150 () Unit!35142)

(assert (=> d!566099 (= lt!716145 lt!716150)))

(declare-fun lt!716151 () List!20613)

(declare-fun lt!716147 () List!20613)

(declare-fun isPrefix!1895 (List!20613 List!20613) Bool)

(assert (=> d!566099 (isPrefix!1895 lt!716151 lt!716147)))

(declare-fun lemmaIsPrefixRefl!1223 (List!20613 List!20613) Unit!35142)

(assert (=> d!566099 (= lt!716150 (lemmaIsPrefixRefl!1223 lt!716151 lt!716147))))

(assert (=> d!566099 (= lt!716147 (list!8319 input!736))))

(assert (=> d!566099 (= lt!716151 (list!8319 input!736))))

(assert (=> d!566099 (rulesValidInductive!1266 thiss!12117 rules!1331)))

(assert (=> d!566099 (= (maxPrefixZipperSequence!767 thiss!12117 rules!1331 input!736) lt!716148)))

(declare-fun b!1852355 () Bool)

(declare-fun res!831178 () Bool)

(assert (=> b!1852355 (=> (not res!831178) (not e!1183962))))

(declare-fun e!1183963 () Bool)

(assert (=> b!1852355 (= res!831178 e!1183963)))

(declare-fun res!831180 () Bool)

(assert (=> b!1852355 (=> res!831180 e!1183963)))

(assert (=> b!1852355 (= res!831180 (not (isDefined!3533 lt!716148)))))

(declare-fun b!1852356 () Bool)

(declare-fun e!1183961 () Bool)

(assert (=> b!1852356 (= e!1183963 e!1183961)))

(declare-fun res!831176 () Bool)

(assert (=> b!1852356 (=> (not res!831176) (not e!1183961))))

(declare-fun get!6332 (Option!4231) tuple2!19820)

(declare-fun get!6333 (Option!4232) tuple2!19822)

(assert (=> b!1852356 (= res!831176 (= (_1!11336 (get!6332 lt!716148)) (_1!11338 (get!6333 (maxPrefixZipper!379 thiss!12117 rules!1331 (list!8319 input!736))))))))

(declare-fun call!115376 () Option!4231)

(declare-fun bm!115371 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!371 (LexerInterface!3300 Rule!7156 BalanceConc!13508) Option!4231)

(assert (=> bm!115371 (= call!115376 (maxPrefixOneRuleZipperSequence!371 thiss!12117 (h!25944 rules!1331) input!736))))

(declare-fun b!1852357 () Bool)

(declare-fun e!1183960 () Bool)

(assert (=> b!1852357 (= e!1183959 e!1183960)))

(declare-fun res!831175 () Bool)

(assert (=> b!1852357 (=> (not res!831175) (not e!1183960))))

(assert (=> b!1852357 (= res!831175 (= (_1!11336 (get!6332 lt!716148)) (_1!11338 (get!6333 (maxPrefix!1827 thiss!12117 rules!1331 (list!8319 input!736))))))))

(declare-fun b!1852358 () Bool)

(assert (=> b!1852358 (= e!1183961 (= (list!8319 (_2!11336 (get!6332 lt!716148))) (_2!11338 (get!6333 (maxPrefixZipper!379 thiss!12117 rules!1331 (list!8319 input!736))))))))

(declare-fun b!1852359 () Bool)

(assert (=> b!1852359 (= e!1183958 call!115376)))

(declare-fun b!1852360 () Bool)

(declare-fun lt!716149 () Option!4231)

(declare-fun lt!716146 () Option!4231)

(assert (=> b!1852360 (= e!1183958 (ite (and ((_ is None!4230) lt!716149) ((_ is None!4230) lt!716146)) None!4230 (ite ((_ is None!4230) lt!716146) lt!716149 (ite ((_ is None!4230) lt!716149) lt!716146 (ite (>= (size!16218 (_1!11336 (v!26025 lt!716149))) (size!16218 (_1!11336 (v!26025 lt!716146)))) lt!716149 lt!716146)))))))

(assert (=> b!1852360 (= lt!716149 call!115376)))

(assert (=> b!1852360 (= lt!716146 (maxPrefixZipperSequence!767 thiss!12117 (t!172417 rules!1331) input!736))))

(declare-fun b!1852361 () Bool)

(assert (=> b!1852361 (= e!1183960 (= (list!8319 (_2!11336 (get!6332 lt!716148))) (_2!11338 (get!6333 (maxPrefix!1827 thiss!12117 rules!1331 (list!8319 input!736))))))))

(assert (= (and d!566099 c!302173) b!1852359))

(assert (= (and d!566099 (not c!302173)) b!1852360))

(assert (= (or b!1852359 b!1852360) bm!115371))

(assert (= (and d!566099 res!831177) b!1852355))

(assert (= (and b!1852355 (not res!831180)) b!1852356))

(assert (= (and b!1852356 res!831176) b!1852358))

(assert (= (and b!1852355 res!831178) b!1852354))

(assert (= (and b!1852354 (not res!831179)) b!1852357))

(assert (= (and b!1852357 res!831175) b!1852361))

(declare-fun m!2279021 () Bool)

(assert (=> d!566099 m!2279021))

(declare-fun m!2279023 () Bool)

(assert (=> d!566099 m!2279023))

(declare-fun m!2279025 () Bool)

(assert (=> d!566099 m!2279025))

(assert (=> d!566099 m!2278373))

(declare-fun m!2279027 () Bool)

(assert (=> d!566099 m!2279027))

(declare-fun m!2279029 () Bool)

(assert (=> d!566099 m!2279029))

(assert (=> d!566099 m!2278373))

(assert (=> d!566099 m!2279023))

(assert (=> d!566099 m!2278537))

(assert (=> b!1852354 m!2279027))

(assert (=> b!1852361 m!2278555))

(declare-fun m!2279031 () Bool)

(assert (=> b!1852361 m!2279031))

(declare-fun m!2279033 () Bool)

(assert (=> b!1852361 m!2279033))

(assert (=> b!1852361 m!2278373))

(assert (=> b!1852361 m!2278555))

(assert (=> b!1852361 m!2278373))

(declare-fun m!2279035 () Bool)

(assert (=> b!1852361 m!2279035))

(assert (=> b!1852355 m!2279027))

(assert (=> b!1852358 m!2279033))

(assert (=> b!1852358 m!2278373))

(assert (=> b!1852358 m!2279023))

(assert (=> b!1852358 m!2278373))

(assert (=> b!1852358 m!2279023))

(declare-fun m!2279037 () Bool)

(assert (=> b!1852358 m!2279037))

(assert (=> b!1852358 m!2279035))

(assert (=> b!1852356 m!2279035))

(assert (=> b!1852356 m!2278373))

(assert (=> b!1852356 m!2278373))

(assert (=> b!1852356 m!2279023))

(assert (=> b!1852356 m!2279023))

(assert (=> b!1852356 m!2279037))

(declare-fun m!2279039 () Bool)

(assert (=> b!1852360 m!2279039))

(assert (=> b!1852357 m!2279035))

(assert (=> b!1852357 m!2278373))

(assert (=> b!1852357 m!2278373))

(assert (=> b!1852357 m!2278555))

(assert (=> b!1852357 m!2278555))

(assert (=> b!1852357 m!2279031))

(declare-fun m!2279041 () Bool)

(assert (=> bm!115371 m!2279041))

(assert (=> d!565983 d!566099))

(assert (=> d!565983 d!565981))

(declare-fun d!566101 () Bool)

(declare-fun e!1183968 () Bool)

(assert (=> d!566101 e!1183968))

(declare-fun res!831186 () Bool)

(assert (=> d!566101 (=> (not res!831186) (not e!1183968))))

(declare-fun lt!716169 () tuple3!1924)

(assert (=> d!566101 (= res!831186 (= (_1!11337 lt!716169) (maxPrefixZipperSequence!767 thiss!12117 rules!1331 input!736)))))

(declare-fun e!1183969 () tuple3!1924)

(assert (=> d!566101 (= lt!716169 e!1183969)))

(declare-fun c!302176 () Bool)

(assert (=> d!566101 (= c!302176 (and ((_ is Cons!20543) rules!1331) ((_ is Nil!20543) (t!172417 rules!1331))))))

(declare-fun lt!716175 () Unit!35142)

(declare-fun lt!716170 () Unit!35142)

(assert (=> d!566101 (= lt!716175 lt!716170)))

(declare-fun lt!716172 () List!20613)

(declare-fun lt!716173 () List!20613)

(assert (=> d!566101 (isPrefix!1895 lt!716172 lt!716173)))

(assert (=> d!566101 (= lt!716170 (lemmaIsPrefixRefl!1223 lt!716172 lt!716173))))

(assert (=> d!566101 (= lt!716173 (list!8319 input!736))))

(assert (=> d!566101 (= lt!716172 (list!8319 input!736))))

(assert (=> d!566101 (rulesValidInductive!1266 thiss!12117 rules!1331)))

(assert (=> d!566101 (= (maxPrefixZipperSequenceMem!2 thiss!12117 rules!1331 input!736 cacheUp!441 cacheDown!454) lt!716169)))

(declare-fun call!115379 () tuple3!1924)

(declare-fun bm!115374 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceMem!1 (LexerInterface!3300 Rule!7156 BalanceConc!13508 CacheUp!1138 CacheDown!1134) tuple3!1924)

(assert (=> bm!115374 (= call!115379 (maxPrefixOneRuleZipperSequenceMem!1 thiss!12117 (h!25944 rules!1331) input!736 cacheUp!441 cacheDown!454))))

(declare-fun b!1852370 () Bool)

(assert (=> b!1852370 (= e!1183968 (valid!1512 (_3!1426 lt!716169)))))

(declare-fun b!1852371 () Bool)

(declare-fun lt!716174 () tuple3!1924)

(assert (=> b!1852371 (= e!1183969 (tuple3!1925 (_1!11337 lt!716174) (_2!11337 lt!716174) (_3!1426 lt!716174)))))

(assert (=> b!1852371 (= lt!716174 call!115379)))

(declare-fun b!1852372 () Bool)

(declare-fun res!831185 () Bool)

(assert (=> b!1852372 (=> (not res!831185) (not e!1183968))))

(assert (=> b!1852372 (= res!831185 (valid!1511 (_2!11337 lt!716169)))))

(declare-fun b!1852373 () Bool)

(declare-fun lt!716171 () tuple3!1924)

(declare-fun lt!716168 () tuple3!1924)

(assert (=> b!1852373 (= e!1183969 (tuple3!1925 (ite (and ((_ is None!4230) (_1!11337 lt!716171)) ((_ is None!4230) (_1!11337 lt!716168))) None!4230 (ite ((_ is None!4230) (_1!11337 lt!716168)) (_1!11337 lt!716171) (ite ((_ is None!4230) (_1!11337 lt!716171)) (_1!11337 lt!716168) (ite (>= (size!16218 (_1!11336 (v!26025 (_1!11337 lt!716171)))) (size!16218 (_1!11336 (v!26025 (_1!11337 lt!716168))))) (_1!11337 lt!716171) (_1!11337 lt!716168))))) (_2!11337 lt!716168) (_3!1426 lt!716168)))))

(assert (=> b!1852373 (= lt!716171 call!115379)))

(assert (=> b!1852373 (= lt!716168 (maxPrefixZipperSequenceMem!2 thiss!12117 (t!172417 rules!1331) input!736 (_2!11337 lt!716171) (_3!1426 lt!716171)))))

(assert (= (and d!566101 c!302176) b!1852371))

(assert (= (and d!566101 (not c!302176)) b!1852373))

(assert (= (or b!1852371 b!1852373) bm!115374))

(assert (= (and d!566101 res!831186) b!1852372))

(assert (= (and b!1852372 res!831185) b!1852370))

(declare-fun m!2279043 () Bool)

(assert (=> b!1852372 m!2279043))

(assert (=> d!566101 m!2278537))

(declare-fun m!2279045 () Bool)

(assert (=> d!566101 m!2279045))

(assert (=> d!566101 m!2278373))

(assert (=> d!566101 m!2278435))

(declare-fun m!2279047 () Bool)

(assert (=> d!566101 m!2279047))

(declare-fun m!2279049 () Bool)

(assert (=> bm!115374 m!2279049))

(declare-fun m!2279051 () Bool)

(assert (=> b!1852373 m!2279051))

(declare-fun m!2279053 () Bool)

(assert (=> b!1852370 m!2279053))

(assert (=> d!565983 d!566101))

(declare-fun d!566103 () Bool)

(declare-fun lt!716178 () Bool)

(assert (=> d!566103 (= lt!716178 (isEmpty!12805 (list!8320 (_1!11333 lt!715796))))))

(declare-fun isEmpty!12807 (Conc!6794) Bool)

(assert (=> d!566103 (= lt!716178 (isEmpty!12807 (c!302092 (_1!11333 lt!715796))))))

(assert (=> d!566103 (= (isEmpty!12804 (_1!11333 lt!715796)) lt!716178)))

(declare-fun bs!410313 () Bool)

(assert (= bs!410313 d!566103))

(assert (=> bs!410313 m!2278371))

(assert (=> bs!410313 m!2278371))

(declare-fun m!2279055 () Bool)

(assert (=> bs!410313 m!2279055))

(declare-fun m!2279057 () Bool)

(assert (=> bs!410313 m!2279057))

(assert (=> b!1851973 d!566103))

(declare-fun bs!410314 () Bool)

(declare-fun d!566105 () Bool)

(assert (= bs!410314 (and d!566105 d!566025)))

(declare-fun lambda!73240 () Int)

(assert (=> bs!410314 (= lambda!73240 lambda!73223)))

(declare-fun bs!410315 () Bool)

(assert (= bs!410315 (and d!566105 d!566085)))

(assert (=> bs!410315 (= lambda!73240 lambda!73238)))

(declare-fun bs!410316 () Bool)

(assert (= bs!410316 (and d!566105 d!566079)))

(assert (=> bs!410316 (= lambda!73240 lambda!73234)))

(declare-fun bs!410317 () Bool)

(assert (= bs!410317 (and d!566105 d!566077)))

(assert (=> bs!410317 (= lambda!73240 lambda!73233)))

(declare-fun bs!410318 () Bool)

(assert (= bs!410318 (and d!566105 d!566023)))

(assert (=> bs!410318 (= lambda!73240 lambda!73222)))

(declare-fun bs!410319 () Bool)

(assert (= bs!410319 (and d!566105 d!566059)))

(assert (=> bs!410319 (= lambda!73240 lambda!73228)))

(declare-fun bs!410320 () Bool)

(assert (= bs!410320 (and d!566105 d!566031)))

(assert (=> bs!410320 (= lambda!73240 lambda!73224)))

(declare-fun bs!410321 () Bool)

(assert (= bs!410321 (and d!566105 d!566047)))

(assert (=> bs!410321 (= lambda!73240 lambda!73226)))

(declare-fun bs!410322 () Bool)

(assert (= bs!410322 (and d!566105 d!565993)))

(assert (=> bs!410322 (= lambda!73240 lambda!73208)))

(declare-fun bs!410323 () Bool)

(assert (= bs!410323 (and d!566105 d!566073)))

(assert (=> bs!410323 (= lambda!73240 lambda!73232)))

(declare-fun bs!410324 () Bool)

(assert (= bs!410324 (and d!566105 d!566091)))

(assert (=> bs!410324 (= lambda!73240 lambda!73239)))

(declare-fun bs!410325 () Bool)

(assert (= bs!410325 (and d!566105 d!566045)))

(assert (=> bs!410325 (= lambda!73240 lambda!73225)))

(declare-fun bs!410326 () Bool)

(assert (= bs!410326 (and d!566105 d!566021)))

(assert (=> bs!410326 (= lambda!73240 lambda!73221)))

(declare-fun bs!410327 () Bool)

(assert (= bs!410327 (and d!566105 d!565997)))

(assert (=> bs!410327 (= lambda!73240 lambda!73212)))

(declare-fun bs!410328 () Bool)

(assert (= bs!410328 (and d!566105 d!566007)))

(assert (=> bs!410328 (= lambda!73240 lambda!73213)))

(declare-fun bs!410329 () Bool)

(assert (= bs!410329 (and d!566105 d!566057)))

(assert (=> bs!410329 (= lambda!73240 lambda!73227)))

(declare-fun bs!410330 () Bool)

(assert (= bs!410330 (and d!566105 d!566017)))

(assert (=> bs!410330 (= lambda!73240 lambda!73220)))

(assert (=> d!566105 (= (inv!26926 setElem!11441) (forall!4390 (exprs!1451 setElem!11441) lambda!73240))))

(declare-fun bs!410331 () Bool)

(assert (= bs!410331 d!566105))

(declare-fun m!2279059 () Bool)

(assert (=> bs!410331 m!2279059))

(assert (=> setNonEmpty!11441 d!566105))

(declare-fun bs!410332 () Bool)

(declare-fun d!566107 () Bool)

(assert (= bs!410332 (and d!566107 d!566025)))

(declare-fun lambda!73241 () Int)

(assert (=> bs!410332 (= lambda!73241 lambda!73223)))

(declare-fun bs!410333 () Bool)

(assert (= bs!410333 (and d!566107 d!566085)))

(assert (=> bs!410333 (= lambda!73241 lambda!73238)))

(declare-fun bs!410334 () Bool)

(assert (= bs!410334 (and d!566107 d!566079)))

(assert (=> bs!410334 (= lambda!73241 lambda!73234)))

(declare-fun bs!410335 () Bool)

(assert (= bs!410335 (and d!566107 d!566077)))

(assert (=> bs!410335 (= lambda!73241 lambda!73233)))

(declare-fun bs!410336 () Bool)

(assert (= bs!410336 (and d!566107 d!566023)))

(assert (=> bs!410336 (= lambda!73241 lambda!73222)))

(declare-fun bs!410337 () Bool)

(assert (= bs!410337 (and d!566107 d!566059)))

(assert (=> bs!410337 (= lambda!73241 lambda!73228)))

(declare-fun bs!410338 () Bool)

(assert (= bs!410338 (and d!566107 d!566031)))

(assert (=> bs!410338 (= lambda!73241 lambda!73224)))

(declare-fun bs!410339 () Bool)

(assert (= bs!410339 (and d!566107 d!566105)))

(assert (=> bs!410339 (= lambda!73241 lambda!73240)))

(declare-fun bs!410340 () Bool)

(assert (= bs!410340 (and d!566107 d!566047)))

(assert (=> bs!410340 (= lambda!73241 lambda!73226)))

(declare-fun bs!410341 () Bool)

(assert (= bs!410341 (and d!566107 d!565993)))

(assert (=> bs!410341 (= lambda!73241 lambda!73208)))

(declare-fun bs!410342 () Bool)

(assert (= bs!410342 (and d!566107 d!566073)))

(assert (=> bs!410342 (= lambda!73241 lambda!73232)))

(declare-fun bs!410343 () Bool)

(assert (= bs!410343 (and d!566107 d!566091)))

(assert (=> bs!410343 (= lambda!73241 lambda!73239)))

(declare-fun bs!410344 () Bool)

(assert (= bs!410344 (and d!566107 d!566045)))

(assert (=> bs!410344 (= lambda!73241 lambda!73225)))

(declare-fun bs!410345 () Bool)

(assert (= bs!410345 (and d!566107 d!566021)))

(assert (=> bs!410345 (= lambda!73241 lambda!73221)))

(declare-fun bs!410346 () Bool)

(assert (= bs!410346 (and d!566107 d!565997)))

(assert (=> bs!410346 (= lambda!73241 lambda!73212)))

(declare-fun bs!410347 () Bool)

(assert (= bs!410347 (and d!566107 d!566007)))

(assert (=> bs!410347 (= lambda!73241 lambda!73213)))

(declare-fun bs!410348 () Bool)

(assert (= bs!410348 (and d!566107 d!566057)))

(assert (=> bs!410348 (= lambda!73241 lambda!73227)))

(declare-fun bs!410349 () Bool)

(assert (= bs!410349 (and d!566107 d!566017)))

(assert (=> bs!410349 (= lambda!73241 lambda!73220)))

(assert (=> d!566107 (= (inv!26926 setElem!11424) (forall!4390 (exprs!1451 setElem!11424) lambda!73241))))

(declare-fun bs!410350 () Bool)

(assert (= bs!410350 d!566107))

(declare-fun m!2279061 () Bool)

(assert (=> bs!410350 m!2279061))

(assert (=> setNonEmpty!11424 d!566107))

(declare-fun bs!410351 () Bool)

(declare-fun d!566109 () Bool)

(assert (= bs!410351 (and d!566109 d!566025)))

(declare-fun lambda!73242 () Int)

(assert (=> bs!410351 (= lambda!73242 lambda!73223)))

(declare-fun bs!410352 () Bool)

(assert (= bs!410352 (and d!566109 d!566085)))

(assert (=> bs!410352 (= lambda!73242 lambda!73238)))

(declare-fun bs!410353 () Bool)

(assert (= bs!410353 (and d!566109 d!566079)))

(assert (=> bs!410353 (= lambda!73242 lambda!73234)))

(declare-fun bs!410354 () Bool)

(assert (= bs!410354 (and d!566109 d!566077)))

(assert (=> bs!410354 (= lambda!73242 lambda!73233)))

(declare-fun bs!410355 () Bool)

(assert (= bs!410355 (and d!566109 d!566023)))

(assert (=> bs!410355 (= lambda!73242 lambda!73222)))

(declare-fun bs!410356 () Bool)

(assert (= bs!410356 (and d!566109 d!566107)))

(assert (=> bs!410356 (= lambda!73242 lambda!73241)))

(declare-fun bs!410357 () Bool)

(assert (= bs!410357 (and d!566109 d!566059)))

(assert (=> bs!410357 (= lambda!73242 lambda!73228)))

(declare-fun bs!410358 () Bool)

(assert (= bs!410358 (and d!566109 d!566031)))

(assert (=> bs!410358 (= lambda!73242 lambda!73224)))

(declare-fun bs!410359 () Bool)

(assert (= bs!410359 (and d!566109 d!566105)))

(assert (=> bs!410359 (= lambda!73242 lambda!73240)))

(declare-fun bs!410360 () Bool)

(assert (= bs!410360 (and d!566109 d!566047)))

(assert (=> bs!410360 (= lambda!73242 lambda!73226)))

(declare-fun bs!410361 () Bool)

(assert (= bs!410361 (and d!566109 d!565993)))

(assert (=> bs!410361 (= lambda!73242 lambda!73208)))

(declare-fun bs!410362 () Bool)

(assert (= bs!410362 (and d!566109 d!566073)))

(assert (=> bs!410362 (= lambda!73242 lambda!73232)))

(declare-fun bs!410363 () Bool)

(assert (= bs!410363 (and d!566109 d!566091)))

(assert (=> bs!410363 (= lambda!73242 lambda!73239)))

(declare-fun bs!410364 () Bool)

(assert (= bs!410364 (and d!566109 d!566045)))

(assert (=> bs!410364 (= lambda!73242 lambda!73225)))

(declare-fun bs!410365 () Bool)

(assert (= bs!410365 (and d!566109 d!566021)))

(assert (=> bs!410365 (= lambda!73242 lambda!73221)))

(declare-fun bs!410366 () Bool)

(assert (= bs!410366 (and d!566109 d!565997)))

(assert (=> bs!410366 (= lambda!73242 lambda!73212)))

(declare-fun bs!410367 () Bool)

(assert (= bs!410367 (and d!566109 d!566007)))

(assert (=> bs!410367 (= lambda!73242 lambda!73213)))

(declare-fun bs!410368 () Bool)

(assert (= bs!410368 (and d!566109 d!566057)))

(assert (=> bs!410368 (= lambda!73242 lambda!73227)))

(declare-fun bs!410369 () Bool)

(assert (= bs!410369 (and d!566109 d!566017)))

(assert (=> bs!410369 (= lambda!73242 lambda!73220)))

(assert (=> d!566109 (= (inv!26926 (_1!11329 (_1!11330 (h!25940 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))))) (forall!4390 (exprs!1451 (_1!11329 (_1!11330 (h!25940 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))))) lambda!73242))))

(declare-fun bs!410370 () Bool)

(assert (= bs!410370 d!566109))

(declare-fun m!2279063 () Bool)

(assert (=> bs!410370 m!2279063))

(assert (=> b!1852056 d!566109))

(assert (=> d!565975 d!566081))

(declare-fun bs!410371 () Bool)

(declare-fun d!566111 () Bool)

(assert (= bs!410371 (and d!566111 d!566025)))

(declare-fun lambda!73243 () Int)

(assert (=> bs!410371 (= lambda!73243 lambda!73223)))

(declare-fun bs!410372 () Bool)

(assert (= bs!410372 (and d!566111 d!566085)))

(assert (=> bs!410372 (= lambda!73243 lambda!73238)))

(declare-fun bs!410373 () Bool)

(assert (= bs!410373 (and d!566111 d!566109)))

(assert (=> bs!410373 (= lambda!73243 lambda!73242)))

(declare-fun bs!410374 () Bool)

(assert (= bs!410374 (and d!566111 d!566079)))

(assert (=> bs!410374 (= lambda!73243 lambda!73234)))

(declare-fun bs!410375 () Bool)

(assert (= bs!410375 (and d!566111 d!566077)))

(assert (=> bs!410375 (= lambda!73243 lambda!73233)))

(declare-fun bs!410376 () Bool)

(assert (= bs!410376 (and d!566111 d!566023)))

(assert (=> bs!410376 (= lambda!73243 lambda!73222)))

(declare-fun bs!410377 () Bool)

(assert (= bs!410377 (and d!566111 d!566107)))

(assert (=> bs!410377 (= lambda!73243 lambda!73241)))

(declare-fun bs!410378 () Bool)

(assert (= bs!410378 (and d!566111 d!566059)))

(assert (=> bs!410378 (= lambda!73243 lambda!73228)))

(declare-fun bs!410379 () Bool)

(assert (= bs!410379 (and d!566111 d!566031)))

(assert (=> bs!410379 (= lambda!73243 lambda!73224)))

(declare-fun bs!410380 () Bool)

(assert (= bs!410380 (and d!566111 d!566105)))

(assert (=> bs!410380 (= lambda!73243 lambda!73240)))

(declare-fun bs!410381 () Bool)

(assert (= bs!410381 (and d!566111 d!566047)))

(assert (=> bs!410381 (= lambda!73243 lambda!73226)))

(declare-fun bs!410382 () Bool)

(assert (= bs!410382 (and d!566111 d!565993)))

(assert (=> bs!410382 (= lambda!73243 lambda!73208)))

(declare-fun bs!410383 () Bool)

(assert (= bs!410383 (and d!566111 d!566073)))

(assert (=> bs!410383 (= lambda!73243 lambda!73232)))

(declare-fun bs!410384 () Bool)

(assert (= bs!410384 (and d!566111 d!566091)))

(assert (=> bs!410384 (= lambda!73243 lambda!73239)))

(declare-fun bs!410385 () Bool)

(assert (= bs!410385 (and d!566111 d!566045)))

(assert (=> bs!410385 (= lambda!73243 lambda!73225)))

(declare-fun bs!410386 () Bool)

(assert (= bs!410386 (and d!566111 d!566021)))

(assert (=> bs!410386 (= lambda!73243 lambda!73221)))

(declare-fun bs!410387 () Bool)

(assert (= bs!410387 (and d!566111 d!565997)))

(assert (=> bs!410387 (= lambda!73243 lambda!73212)))

(declare-fun bs!410388 () Bool)

(assert (= bs!410388 (and d!566111 d!566007)))

(assert (=> bs!410388 (= lambda!73243 lambda!73213)))

(declare-fun bs!410389 () Bool)

(assert (= bs!410389 (and d!566111 d!566057)))

(assert (=> bs!410389 (= lambda!73243 lambda!73227)))

(declare-fun bs!410390 () Bool)

(assert (= bs!410390 (and d!566111 d!566017)))

(assert (=> bs!410390 (= lambda!73243 lambda!73220)))

(assert (=> d!566111 (= (inv!26926 (_2!11331 (_1!11332 (h!25941 mapValue!8815)))) (forall!4390 (exprs!1451 (_2!11331 (_1!11332 (h!25941 mapValue!8815)))) lambda!73243))))

(declare-fun bs!410391 () Bool)

(assert (= bs!410391 d!566111))

(declare-fun m!2279065 () Bool)

(assert (=> bs!410391 m!2279065))

(assert (=> b!1852032 d!566111))

(declare-fun d!566113 () Bool)

(declare-fun lt!716181 () Int)

(assert (=> d!566113 (= lt!716181 (size!16222 (list!8320 (_1!11333 lt!715796))))))

(declare-fun size!16224 (Conc!6794) Int)

(assert (=> d!566113 (= lt!716181 (size!16224 (c!302092 (_1!11333 lt!715796))))))

(assert (=> d!566113 (= (size!16219 (_1!11333 lt!715796)) lt!716181)))

(declare-fun bs!410392 () Bool)

(assert (= bs!410392 d!566113))

(assert (=> bs!410392 m!2278371))

(assert (=> bs!410392 m!2278371))

(declare-fun m!2279067 () Bool)

(assert (=> bs!410392 m!2279067))

(declare-fun m!2279069 () Bool)

(assert (=> bs!410392 m!2279069))

(assert (=> d!565981 d!566113))

(assert (=> d!565981 d!566093))

(declare-fun bs!410393 () Bool)

(declare-fun d!566115 () Bool)

(assert (= bs!410393 (and d!566115 d!566025)))

(declare-fun lambda!73244 () Int)

(assert (=> bs!410393 (= lambda!73244 lambda!73223)))

(declare-fun bs!410394 () Bool)

(assert (= bs!410394 (and d!566115 d!566085)))

(assert (=> bs!410394 (= lambda!73244 lambda!73238)))

(declare-fun bs!410395 () Bool)

(assert (= bs!410395 (and d!566115 d!566109)))

(assert (=> bs!410395 (= lambda!73244 lambda!73242)))

(declare-fun bs!410396 () Bool)

(assert (= bs!410396 (and d!566115 d!566079)))

(assert (=> bs!410396 (= lambda!73244 lambda!73234)))

(declare-fun bs!410397 () Bool)

(assert (= bs!410397 (and d!566115 d!566077)))

(assert (=> bs!410397 (= lambda!73244 lambda!73233)))

(declare-fun bs!410398 () Bool)

(assert (= bs!410398 (and d!566115 d!566023)))

(assert (=> bs!410398 (= lambda!73244 lambda!73222)))

(declare-fun bs!410399 () Bool)

(assert (= bs!410399 (and d!566115 d!566107)))

(assert (=> bs!410399 (= lambda!73244 lambda!73241)))

(declare-fun bs!410400 () Bool)

(assert (= bs!410400 (and d!566115 d!566059)))

(assert (=> bs!410400 (= lambda!73244 lambda!73228)))

(declare-fun bs!410401 () Bool)

(assert (= bs!410401 (and d!566115 d!566031)))

(assert (=> bs!410401 (= lambda!73244 lambda!73224)))

(declare-fun bs!410402 () Bool)

(assert (= bs!410402 (and d!566115 d!566111)))

(assert (=> bs!410402 (= lambda!73244 lambda!73243)))

(declare-fun bs!410403 () Bool)

(assert (= bs!410403 (and d!566115 d!566105)))

(assert (=> bs!410403 (= lambda!73244 lambda!73240)))

(declare-fun bs!410404 () Bool)

(assert (= bs!410404 (and d!566115 d!566047)))

(assert (=> bs!410404 (= lambda!73244 lambda!73226)))

(declare-fun bs!410405 () Bool)

(assert (= bs!410405 (and d!566115 d!565993)))

(assert (=> bs!410405 (= lambda!73244 lambda!73208)))

(declare-fun bs!410406 () Bool)

(assert (= bs!410406 (and d!566115 d!566073)))

(assert (=> bs!410406 (= lambda!73244 lambda!73232)))

(declare-fun bs!410407 () Bool)

(assert (= bs!410407 (and d!566115 d!566091)))

(assert (=> bs!410407 (= lambda!73244 lambda!73239)))

(declare-fun bs!410408 () Bool)

(assert (= bs!410408 (and d!566115 d!566045)))

(assert (=> bs!410408 (= lambda!73244 lambda!73225)))

(declare-fun bs!410409 () Bool)

(assert (= bs!410409 (and d!566115 d!566021)))

(assert (=> bs!410409 (= lambda!73244 lambda!73221)))

(declare-fun bs!410410 () Bool)

(assert (= bs!410410 (and d!566115 d!565997)))

(assert (=> bs!410410 (= lambda!73244 lambda!73212)))

(declare-fun bs!410411 () Bool)

(assert (= bs!410411 (and d!566115 d!566007)))

(assert (=> bs!410411 (= lambda!73244 lambda!73213)))

(declare-fun bs!410412 () Bool)

(assert (= bs!410412 (and d!566115 d!566057)))

(assert (=> bs!410412 (= lambda!73244 lambda!73227)))

(declare-fun bs!410413 () Bool)

(assert (= bs!410413 (and d!566115 d!566017)))

(assert (=> bs!410413 (= lambda!73244 lambda!73220)))

(assert (=> d!566115 (= (inv!26926 setElem!11442) (forall!4390 (exprs!1451 setElem!11442) lambda!73244))))

(declare-fun bs!410414 () Bool)

(assert (= bs!410414 d!566115))

(declare-fun m!2279071 () Bool)

(assert (=> bs!410414 m!2279071))

(assert (=> setNonEmpty!11442 d!566115))

(declare-fun bs!410415 () Bool)

(declare-fun d!566117 () Bool)

(assert (= bs!410415 (and d!566117 d!566025)))

(declare-fun lambda!73245 () Int)

(assert (=> bs!410415 (= lambda!73245 lambda!73223)))

(declare-fun bs!410416 () Bool)

(assert (= bs!410416 (and d!566117 d!566085)))

(assert (=> bs!410416 (= lambda!73245 lambda!73238)))

(declare-fun bs!410417 () Bool)

(assert (= bs!410417 (and d!566117 d!566109)))

(assert (=> bs!410417 (= lambda!73245 lambda!73242)))

(declare-fun bs!410418 () Bool)

(assert (= bs!410418 (and d!566117 d!566079)))

(assert (=> bs!410418 (= lambda!73245 lambda!73234)))

(declare-fun bs!410419 () Bool)

(assert (= bs!410419 (and d!566117 d!566077)))

(assert (=> bs!410419 (= lambda!73245 lambda!73233)))

(declare-fun bs!410420 () Bool)

(assert (= bs!410420 (and d!566117 d!566023)))

(assert (=> bs!410420 (= lambda!73245 lambda!73222)))

(declare-fun bs!410421 () Bool)

(assert (= bs!410421 (and d!566117 d!566059)))

(assert (=> bs!410421 (= lambda!73245 lambda!73228)))

(declare-fun bs!410422 () Bool)

(assert (= bs!410422 (and d!566117 d!566031)))

(assert (=> bs!410422 (= lambda!73245 lambda!73224)))

(declare-fun bs!410423 () Bool)

(assert (= bs!410423 (and d!566117 d!566111)))

(assert (=> bs!410423 (= lambda!73245 lambda!73243)))

(declare-fun bs!410424 () Bool)

(assert (= bs!410424 (and d!566117 d!566105)))

(assert (=> bs!410424 (= lambda!73245 lambda!73240)))

(declare-fun bs!410425 () Bool)

(assert (= bs!410425 (and d!566117 d!566047)))

(assert (=> bs!410425 (= lambda!73245 lambda!73226)))

(declare-fun bs!410426 () Bool)

(assert (= bs!410426 (and d!566117 d!565993)))

(assert (=> bs!410426 (= lambda!73245 lambda!73208)))

(declare-fun bs!410427 () Bool)

(assert (= bs!410427 (and d!566117 d!566073)))

(assert (=> bs!410427 (= lambda!73245 lambda!73232)))

(declare-fun bs!410428 () Bool)

(assert (= bs!410428 (and d!566117 d!566091)))

(assert (=> bs!410428 (= lambda!73245 lambda!73239)))

(declare-fun bs!410429 () Bool)

(assert (= bs!410429 (and d!566117 d!566045)))

(assert (=> bs!410429 (= lambda!73245 lambda!73225)))

(declare-fun bs!410430 () Bool)

(assert (= bs!410430 (and d!566117 d!566021)))

(assert (=> bs!410430 (= lambda!73245 lambda!73221)))

(declare-fun bs!410431 () Bool)

(assert (= bs!410431 (and d!566117 d!565997)))

(assert (=> bs!410431 (= lambda!73245 lambda!73212)))

(declare-fun bs!410432 () Bool)

(assert (= bs!410432 (and d!566117 d!566007)))

(assert (=> bs!410432 (= lambda!73245 lambda!73213)))

(declare-fun bs!410433 () Bool)

(assert (= bs!410433 (and d!566117 d!566057)))

(assert (=> bs!410433 (= lambda!73245 lambda!73227)))

(declare-fun bs!410434 () Bool)

(assert (= bs!410434 (and d!566117 d!566017)))

(assert (=> bs!410434 (= lambda!73245 lambda!73220)))

(declare-fun bs!410435 () Bool)

(assert (= bs!410435 (and d!566117 d!566107)))

(assert (=> bs!410435 (= lambda!73245 lambda!73241)))

(declare-fun bs!410436 () Bool)

(assert (= bs!410436 (and d!566117 d!566115)))

(assert (=> bs!410436 (= lambda!73245 lambda!73244)))

(assert (=> d!566117 (= (inv!26926 setElem!11428) (forall!4390 (exprs!1451 setElem!11428) lambda!73245))))

(declare-fun bs!410437 () Bool)

(assert (= bs!410437 d!566117))

(declare-fun m!2279073 () Bool)

(assert (=> bs!410437 m!2279073))

(assert (=> setNonEmpty!11428 d!566117))

(declare-fun b!1852376 () Bool)

(declare-fun res!831190 () Bool)

(declare-fun e!1183970 () Bool)

(assert (=> b!1852376 (=> (not res!831190) (not e!1183970))))

(assert (=> b!1852376 (= res!831190 (>= (height!1029 (++!5553 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))) (max!0 (height!1029 (c!302091 (BalanceConc!13509 Empty!6793))) (height!1029 (c!302091 (charsOf!2294 (_1!11336 (v!26025 lt!715877))))))))))

(declare-fun b!1852374 () Bool)

(declare-fun res!831188 () Bool)

(assert (=> b!1852374 (=> (not res!831188) (not e!1183970))))

(assert (=> b!1852374 (= res!831188 (isBalanced!2116 (++!5553 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))))

(declare-fun d!566119 () Bool)

(assert (=> d!566119 e!1183970))

(declare-fun res!831187 () Bool)

(assert (=> d!566119 (=> (not res!831187) (not e!1183970))))

(assert (=> d!566119 (= res!831187 (appendAssocInst!508 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 lt!715877))))))))

(declare-fun lt!716182 () BalanceConc!13508)

(assert (=> d!566119 (= lt!716182 (BalanceConc!13509 (++!5553 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))))

(assert (=> d!566119 (= (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))) lt!716182)))

(declare-fun b!1852375 () Bool)

(declare-fun res!831189 () Bool)

(assert (=> b!1852375 (=> (not res!831189) (not e!1183970))))

(assert (=> b!1852375 (= res!831189 (<= (height!1029 (++!5553 (c!302091 (BalanceConc!13509 Empty!6793)) (c!302091 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))) (+ (max!0 (height!1029 (c!302091 (BalanceConc!13509 Empty!6793))) (height!1029 (c!302091 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))) 1)))))

(declare-fun b!1852377 () Bool)

(assert (=> b!1852377 (= e!1183970 (= (list!8319 lt!716182) (++!5551 (list!8319 (BalanceConc!13509 Empty!6793)) (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))))

(assert (= (and d!566119 res!831187) b!1852374))

(assert (= (and b!1852374 res!831188) b!1852375))

(assert (= (and b!1852375 res!831189) b!1852376))

(assert (= (and b!1852376 res!831190) b!1852377))

(declare-fun m!2279075 () Bool)

(assert (=> b!1852374 m!2279075))

(assert (=> b!1852374 m!2279075))

(declare-fun m!2279077 () Bool)

(assert (=> b!1852374 m!2279077))

(declare-fun m!2279079 () Bool)

(assert (=> b!1852377 m!2279079))

(assert (=> b!1852377 m!2278421))

(assert (=> b!1852377 m!2278391))

(assert (=> b!1852377 m!2278393))

(assert (=> b!1852377 m!2278421))

(assert (=> b!1852377 m!2278393))

(assert (=> b!1852377 m!2278423))

(declare-fun m!2279081 () Bool)

(assert (=> d!566119 m!2279081))

(assert (=> d!566119 m!2279075))

(declare-fun m!2279083 () Bool)

(assert (=> b!1852375 m!2279083))

(assert (=> b!1852375 m!2279075))

(declare-fun m!2279085 () Bool)

(assert (=> b!1852375 m!2279085))

(assert (=> b!1852375 m!2278882))

(assert (=> b!1852375 m!2278882))

(assert (=> b!1852375 m!2279083))

(declare-fun m!2279087 () Bool)

(assert (=> b!1852375 m!2279087))

(assert (=> b!1852375 m!2279075))

(assert (=> b!1852376 m!2279083))

(assert (=> b!1852376 m!2279075))

(assert (=> b!1852376 m!2279085))

(assert (=> b!1852376 m!2278882))

(assert (=> b!1852376 m!2278882))

(assert (=> b!1852376 m!2279083))

(assert (=> b!1852376 m!2279087))

(assert (=> b!1852376 m!2279075))

(assert (=> b!1851998 d!566119))

(declare-fun b!1852389 () Bool)

(declare-fun e!1183976 () Bool)

(declare-fun lt!716185 () List!20616)

(assert (=> b!1852389 (= e!1183976 (or (not (= (++!5552 lt!715879 lt!715867) Nil!20544)) (= lt!716185 lt!715856)))))

(declare-fun e!1183975 () List!20616)

(declare-fun b!1852387 () Bool)

(assert (=> b!1852387 (= e!1183975 (Cons!20544 (h!25945 lt!715856) (++!5552 (t!172418 lt!715856) (++!5552 lt!715879 lt!715867))))))

(declare-fun d!566121 () Bool)

(assert (=> d!566121 e!1183976))

(declare-fun res!831195 () Bool)

(assert (=> d!566121 (=> (not res!831195) (not e!1183976))))

(declare-fun content!3050 (List!20616) (InoxSet Token!6908))

(assert (=> d!566121 (= res!831195 (= (content!3050 lt!716185) ((_ map or) (content!3050 lt!715856) (content!3050 (++!5552 lt!715879 lt!715867)))))))

(assert (=> d!566121 (= lt!716185 e!1183975)))

(declare-fun c!302179 () Bool)

(assert (=> d!566121 (= c!302179 ((_ is Nil!20544) lt!715856))))

(assert (=> d!566121 (= (++!5552 lt!715856 (++!5552 lt!715879 lt!715867)) lt!716185)))

(declare-fun b!1852388 () Bool)

(declare-fun res!831196 () Bool)

(assert (=> b!1852388 (=> (not res!831196) (not e!1183976))))

(assert (=> b!1852388 (= res!831196 (= (size!16222 lt!716185) (+ (size!16222 lt!715856) (size!16222 (++!5552 lt!715879 lt!715867)))))))

(declare-fun b!1852386 () Bool)

(assert (=> b!1852386 (= e!1183975 (++!5552 lt!715879 lt!715867))))

(assert (= (and d!566121 c!302179) b!1852386))

(assert (= (and d!566121 (not c!302179)) b!1852387))

(assert (= (and d!566121 res!831195) b!1852388))

(assert (= (and b!1852388 res!831196) b!1852389))

(assert (=> b!1852387 m!2278411))

(declare-fun m!2279089 () Bool)

(assert (=> b!1852387 m!2279089))

(declare-fun m!2279091 () Bool)

(assert (=> d!566121 m!2279091))

(declare-fun m!2279093 () Bool)

(assert (=> d!566121 m!2279093))

(assert (=> d!566121 m!2278411))

(declare-fun m!2279095 () Bool)

(assert (=> d!566121 m!2279095))

(declare-fun m!2279097 () Bool)

(assert (=> b!1852388 m!2279097))

(declare-fun m!2279099 () Bool)

(assert (=> b!1852388 m!2279099))

(assert (=> b!1852388 m!2278411))

(declare-fun m!2279101 () Bool)

(assert (=> b!1852388 m!2279101))

(assert (=> b!1851998 d!566121))

(declare-fun b!1852390 () Bool)

(declare-fun e!1183980 () Bool)

(declare-fun e!1183979 () Bool)

(assert (=> b!1852390 (= e!1183980 e!1183979)))

(declare-fun res!831198 () Bool)

(declare-fun lt!716186 () tuple2!19816)

(assert (=> b!1852390 (= res!831198 (< (size!16220 (_2!11333 lt!716186)) (size!16220 input!736)))))

(assert (=> b!1852390 (=> (not res!831198) (not e!1183979))))

(declare-fun b!1852391 () Bool)

(declare-fun e!1183977 () tuple2!19816)

(assert (=> b!1852391 (= e!1183977 (tuple2!19817 (BalanceConc!13511 Empty!6794) input!736))))

(declare-fun d!566123 () Bool)

(declare-fun e!1183978 () Bool)

(assert (=> d!566123 e!1183978))

(declare-fun res!831199 () Bool)

(assert (=> d!566123 (=> (not res!831199) (not e!1183978))))

(assert (=> d!566123 (= res!831199 e!1183980)))

(declare-fun c!302181 () Bool)

(assert (=> d!566123 (= c!302181 (> (size!16219 (_1!11333 lt!716186)) 0))))

(assert (=> d!566123 (= lt!716186 e!1183977)))

(declare-fun c!302180 () Bool)

(declare-fun lt!716188 () Option!4231)

(assert (=> d!566123 (= c!302180 ((_ is Some!4230) lt!716188))))

(assert (=> d!566123 (= lt!716188 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 input!736))))

(assert (=> d!566123 (= (lexRec!401 thiss!12117 rules!1331 input!736) lt!716186)))

(declare-fun b!1852392 () Bool)

(declare-fun res!831197 () Bool)

(assert (=> b!1852392 (=> (not res!831197) (not e!1183978))))

(assert (=> b!1852392 (= res!831197 (= (list!8320 (_1!11333 lt!716186)) (_1!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 input!736)))))))

(declare-fun b!1852393 () Bool)

(assert (=> b!1852393 (= e!1183978 (= (list!8319 (_2!11333 lt!716186)) (_2!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 input!736)))))))

(declare-fun b!1852394 () Bool)

(assert (=> b!1852394 (= e!1183979 (not (isEmpty!12804 (_1!11333 lt!716186))))))

(declare-fun b!1852395 () Bool)

(declare-fun lt!716187 () tuple2!19816)

(assert (=> b!1852395 (= e!1183977 (tuple2!19817 (prepend!875 (_1!11333 lt!716187) (_1!11336 (v!26025 lt!716188))) (_2!11333 lt!716187)))))

(assert (=> b!1852395 (= lt!716187 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716188))))))

(declare-fun b!1852396 () Bool)

(assert (=> b!1852396 (= e!1183980 (= (list!8319 (_2!11333 lt!716186)) (list!8319 input!736)))))

(assert (= (and d!566123 c!302180) b!1852395))

(assert (= (and d!566123 (not c!302180)) b!1852391))

(assert (= (and d!566123 c!302181) b!1852390))

(assert (= (and d!566123 (not c!302181)) b!1852396))

(assert (= (and b!1852390 res!831198) b!1852394))

(assert (= (and d!566123 res!831199) b!1852392))

(assert (= (and b!1852392 res!831197) b!1852393))

(declare-fun m!2279103 () Bool)

(assert (=> b!1852396 m!2279103))

(assert (=> b!1852396 m!2278373))

(declare-fun m!2279105 () Bool)

(assert (=> b!1852390 m!2279105))

(assert (=> b!1852390 m!2278369))

(declare-fun m!2279107 () Bool)

(assert (=> b!1852395 m!2279107))

(declare-fun m!2279109 () Bool)

(assert (=> b!1852395 m!2279109))

(declare-fun m!2279111 () Bool)

(assert (=> b!1852394 m!2279111))

(declare-fun m!2279113 () Bool)

(assert (=> b!1852392 m!2279113))

(assert (=> b!1852392 m!2278373))

(assert (=> b!1852392 m!2278373))

(assert (=> b!1852392 m!2278375))

(assert (=> b!1852393 m!2279103))

(assert (=> b!1852393 m!2278373))

(assert (=> b!1852393 m!2278373))

(assert (=> b!1852393 m!2278375))

(declare-fun m!2279115 () Bool)

(assert (=> d!566123 m!2279115))

(assert (=> d!566123 m!2278435))

(assert (=> b!1851998 d!566123))

(declare-fun d!566125 () Bool)

(declare-fun lt!716189 () BalanceConc!13508)

(assert (=> d!566125 (= (list!8319 lt!716189) (originalCharacters!4485 (_1!11336 (v!26025 lt!715877))))))

(assert (=> d!566125 (= lt!716189 (dynLambda!10170 (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 lt!715877))))) (value!115403 (_1!11336 (v!26025 lt!715877)))))))

(assert (=> d!566125 (= (charsOf!2294 (_1!11336 (v!26025 lt!715877))) lt!716189)))

(declare-fun b_lambda!61435 () Bool)

(assert (=> (not b_lambda!61435) (not d!566125)))

(declare-fun t!172428 () Bool)

(declare-fun tb!112901 () Bool)

(assert (=> (and b!1851918 (= (toChars!5110 (transformation!3678 (h!25944 rules!1331))) (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 lt!715877)))))) t!172428) tb!112901))

(declare-fun b!1852397 () Bool)

(declare-fun e!1183981 () Bool)

(declare-fun tp!524947 () Bool)

(assert (=> b!1852397 (= e!1183981 (and (inv!26922 (c!302091 (dynLambda!10170 (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 lt!715877))))) (value!115403 (_1!11336 (v!26025 lt!715877)))))) tp!524947))))

(declare-fun result!136140 () Bool)

(assert (=> tb!112901 (= result!136140 (and (inv!26920 (dynLambda!10170 (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 lt!715877))))) (value!115403 (_1!11336 (v!26025 lt!715877))))) e!1183981))))

(assert (= tb!112901 b!1852397))

(declare-fun m!2279117 () Bool)

(assert (=> b!1852397 m!2279117))

(declare-fun m!2279119 () Bool)

(assert (=> tb!112901 m!2279119))

(assert (=> d!566125 t!172428))

(declare-fun b_and!144117 () Bool)

(assert (= b_and!144113 (and (=> t!172428 result!136140) b_and!144117)))

(declare-fun tb!112903 () Bool)

(declare-fun t!172430 () Bool)

(assert (=> (and b!1852082 (= (toChars!5110 (transformation!3678 (h!25944 (t!172417 rules!1331)))) (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 lt!715877)))))) t!172430) tb!112903))

(declare-fun result!136142 () Bool)

(assert (= result!136142 result!136140))

(assert (=> d!566125 t!172430))

(declare-fun b_and!144119 () Bool)

(assert (= b_and!144115 (and (=> t!172430 result!136142) b_and!144119)))

(declare-fun m!2279121 () Bool)

(assert (=> d!566125 m!2279121))

(declare-fun m!2279123 () Bool)

(assert (=> d!566125 m!2279123))

(assert (=> b!1851998 d!566125))

(declare-fun b!1852398 () Bool)

(declare-fun lt!716195 () Option!4231)

(declare-fun lt!716201 () tuple2!19816)

(assert (=> b!1852398 (= lt!716201 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716195))))))

(declare-fun e!1183984 () tuple2!19816)

(assert (=> b!1852398 (= e!1183984 (tuple2!19817 (prepend!875 (_1!11333 lt!716201) (_1!11336 (v!26025 lt!716195))) (_2!11333 lt!716201)))))

(declare-fun b!1852399 () Bool)

(declare-fun e!1183985 () tuple2!19816)

(assert (=> b!1852399 (= e!1183985 (tuple2!19817 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877))) (_2!11336 (v!26025 lt!715877))))))

(declare-fun b!1852400 () Bool)

(declare-fun e!1183983 () tuple2!19816)

(declare-fun lt!716191 () BalanceConc!13508)

(assert (=> b!1852400 (= e!1183983 (tuple2!19817 (BalanceConc!13511 Empty!6794) lt!716191))))

(declare-fun d!566127 () Bool)

(declare-fun e!1183982 () Bool)

(assert (=> d!566127 e!1183982))

(declare-fun res!831200 () Bool)

(assert (=> d!566127 (=> (not res!831200) (not e!1183982))))

(declare-fun lt!716208 () tuple2!19816)

(assert (=> d!566127 (= res!831200 (= (list!8320 (_1!11333 lt!716208)) (list!8320 (_1!11333 (lexRec!401 thiss!12117 rules!1331 input!736)))))))

(assert (=> d!566127 (= lt!716208 e!1183985)))

(declare-fun c!302182 () Bool)

(declare-fun lt!716207 () Option!4231)

(assert (=> d!566127 (= c!302182 ((_ is Some!4230) lt!716207))))

(assert (=> d!566127 (= lt!716207 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715877))))))

(assert (=> d!566127 (= (lexTailRec!8 thiss!12117 rules!1331 input!736 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))) (_2!11336 (v!26025 lt!715877)) (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877)))) lt!716208)))

(declare-fun b!1852401 () Bool)

(assert (=> b!1852401 (= e!1183982 (= (list!8319 (_2!11333 lt!716208)) (list!8319 (_2!11333 (lexRec!401 thiss!12117 rules!1331 input!736)))))))

(declare-fun b!1852402 () Bool)

(assert (=> b!1852402 (= e!1183985 (lexTailRec!8 thiss!12117 rules!1331 input!736 (++!5550 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))) (charsOf!2294 (_1!11336 (v!26025 lt!716207)))) (_2!11336 (v!26025 lt!716207)) (append!594 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877))) (_1!11336 (v!26025 lt!716207)))))))

(declare-fun lt!716193 () tuple2!19816)

(assert (=> b!1852402 (= lt!716193 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716207))))))

(declare-fun lt!716206 () List!20613)

(assert (=> b!1852402 (= lt!716206 (list!8319 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877))))))))

(declare-fun lt!716211 () List!20613)

(assert (=> b!1852402 (= lt!716211 (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!716207)))))))

(declare-fun lt!716210 () List!20613)

(assert (=> b!1852402 (= lt!716210 (list!8319 (_2!11336 (v!26025 lt!716207))))))

(declare-fun lt!716194 () Unit!35142)

(assert (=> b!1852402 (= lt!716194 (lemmaConcatAssociativity!1093 lt!716206 lt!716211 lt!716210))))

(assert (=> b!1852402 (= (++!5551 (++!5551 lt!716206 lt!716211) lt!716210) (++!5551 lt!716206 (++!5551 lt!716211 lt!716210)))))

(declare-fun lt!716198 () Unit!35142)

(assert (=> b!1852402 (= lt!716198 lt!716194)))

(assert (=> b!1852402 (= lt!716195 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715877))))))

(declare-fun c!302184 () Bool)

(assert (=> b!1852402 (= c!302184 ((_ is Some!4230) lt!716195))))

(assert (=> b!1852402 (= (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715877))) e!1183984)))

(declare-fun lt!716192 () Unit!35142)

(declare-fun Unit!35156 () Unit!35142)

(assert (=> b!1852402 (= lt!716192 Unit!35156)))

(declare-fun lt!716213 () List!20616)

(assert (=> b!1852402 (= lt!716213 (list!8320 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877)))))))

(declare-fun lt!716209 () List!20616)

(assert (=> b!1852402 (= lt!716209 (Cons!20544 (_1!11336 (v!26025 lt!716207)) Nil!20544))))

(declare-fun lt!716196 () List!20616)

(assert (=> b!1852402 (= lt!716196 (list!8320 (_1!11333 lt!716193)))))

(declare-fun lt!716199 () Unit!35142)

(assert (=> b!1852402 (= lt!716199 (lemmaConcatAssociativity!1094 lt!716213 lt!716209 lt!716196))))

(assert (=> b!1852402 (= (++!5552 (++!5552 lt!716213 lt!716209) lt!716196) (++!5552 lt!716213 (++!5552 lt!716209 lt!716196)))))

(declare-fun lt!716202 () Unit!35142)

(assert (=> b!1852402 (= lt!716202 lt!716199)))

(declare-fun lt!716190 () List!20613)

(assert (=> b!1852402 (= lt!716190 (++!5551 (list!8319 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877))))) (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!716207))))))))

(declare-fun lt!716197 () List!20613)

(assert (=> b!1852402 (= lt!716197 (list!8319 (_2!11336 (v!26025 lt!716207))))))

(declare-fun lt!716203 () List!20616)

(assert (=> b!1852402 (= lt!716203 (list!8320 (append!594 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877))) (_1!11336 (v!26025 lt!716207)))))))

(declare-fun lt!716204 () Unit!35142)

(assert (=> b!1852402 (= lt!716204 (lemmaLexThenLexPrefix!289 thiss!12117 rules!1331 lt!716190 lt!716197 lt!716203 (list!8320 (_1!11333 lt!716193)) (list!8319 (_2!11333 lt!716193))))))

(assert (=> b!1852402 (= (lexList!931 thiss!12117 rules!1331 lt!716190) (tuple2!19819 lt!716203 Nil!20541))))

(declare-fun lt!716205 () Unit!35142)

(assert (=> b!1852402 (= lt!716205 lt!716204)))

(assert (=> b!1852402 (= lt!716191 (++!5550 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))) (charsOf!2294 (_1!11336 (v!26025 lt!716207)))))))

(declare-fun lt!716212 () Option!4231)

(assert (=> b!1852402 (= lt!716212 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 lt!716191))))

(declare-fun c!302183 () Bool)

(assert (=> b!1852402 (= c!302183 ((_ is Some!4230) lt!716212))))

(assert (=> b!1852402 (= (lexRec!401 thiss!12117 rules!1331 (++!5550 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))) (charsOf!2294 (_1!11336 (v!26025 lt!716207))))) e!1183983)))

(declare-fun lt!716200 () Unit!35142)

(declare-fun Unit!35157 () Unit!35142)

(assert (=> b!1852402 (= lt!716200 Unit!35157)))

(declare-fun b!1852403 () Bool)

(assert (=> b!1852403 (= e!1183984 (tuple2!19817 (BalanceConc!13511 Empty!6794) (_2!11336 (v!26025 lt!715877))))))

(declare-fun b!1852404 () Bool)

(declare-fun lt!716214 () tuple2!19816)

(assert (=> b!1852404 (= lt!716214 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716212))))))

(assert (=> b!1852404 (= e!1183983 (tuple2!19817 (prepend!875 (_1!11333 lt!716214) (_1!11336 (v!26025 lt!716212))) (_2!11333 lt!716214)))))

(assert (= (and d!566127 c!302182) b!1852402))

(assert (= (and d!566127 (not c!302182)) b!1852399))

(assert (= (and b!1852402 c!302184) b!1852398))

(assert (= (and b!1852402 (not c!302184)) b!1852403))

(assert (= (and b!1852402 c!302183) b!1852404))

(assert (= (and b!1852402 (not c!302183)) b!1852400))

(assert (= (and d!566127 res!831200) b!1852401))

(declare-fun m!2279125 () Bool)

(assert (=> b!1852404 m!2279125))

(declare-fun m!2279127 () Bool)

(assert (=> b!1852404 m!2279127))

(declare-fun m!2279129 () Bool)

(assert (=> d!566127 m!2279129))

(assert (=> d!566127 m!2278417))

(assert (=> d!566127 m!2278706))

(declare-fun m!2279131 () Bool)

(assert (=> d!566127 m!2279131))

(declare-fun m!2279133 () Bool)

(assert (=> b!1852401 m!2279133))

(assert (=> b!1852401 m!2278417))

(assert (=> b!1852401 m!2278710))

(declare-fun m!2279135 () Bool)

(assert (=> b!1852402 m!2279135))

(declare-fun m!2279137 () Bool)

(assert (=> b!1852402 m!2279137))

(declare-fun m!2279139 () Bool)

(assert (=> b!1852402 m!2279139))

(declare-fun m!2279141 () Bool)

(assert (=> b!1852402 m!2279141))

(declare-fun m!2279143 () Bool)

(assert (=> b!1852402 m!2279143))

(declare-fun m!2279145 () Bool)

(assert (=> b!1852402 m!2279145))

(declare-fun m!2279147 () Bool)

(assert (=> b!1852402 m!2279147))

(declare-fun m!2279149 () Bool)

(assert (=> b!1852402 m!2279149))

(assert (=> b!1852402 m!2278407))

(declare-fun m!2279151 () Bool)

(assert (=> b!1852402 m!2279151))

(assert (=> b!1852402 m!2278385))

(assert (=> b!1852402 m!2279147))

(declare-fun m!2279153 () Bool)

(assert (=> b!1852402 m!2279153))

(assert (=> b!1852402 m!2279151))

(declare-fun m!2279155 () Bool)

(assert (=> b!1852402 m!2279155))

(assert (=> b!1852402 m!2279149))

(declare-fun m!2279157 () Bool)

(assert (=> b!1852402 m!2279157))

(assert (=> b!1852402 m!2279139))

(declare-fun m!2279159 () Bool)

(assert (=> b!1852402 m!2279159))

(assert (=> b!1852402 m!2279151))

(declare-fun m!2279161 () Bool)

(assert (=> b!1852402 m!2279161))

(declare-fun m!2279163 () Bool)

(assert (=> b!1852402 m!2279163))

(declare-fun m!2279165 () Bool)

(assert (=> b!1852402 m!2279165))

(declare-fun m!2279167 () Bool)

(assert (=> b!1852402 m!2279167))

(declare-fun m!2279169 () Bool)

(assert (=> b!1852402 m!2279169))

(declare-fun m!2279171 () Bool)

(assert (=> b!1852402 m!2279171))

(assert (=> b!1852402 m!2279169))

(declare-fun m!2279173 () Bool)

(assert (=> b!1852402 m!2279173))

(declare-fun m!2279175 () Bool)

(assert (=> b!1852402 m!2279175))

(assert (=> b!1852402 m!2278387))

(assert (=> b!1852402 m!2279171))

(assert (=> b!1852402 m!2279131))

(declare-fun m!2279177 () Bool)

(assert (=> b!1852402 m!2279177))

(assert (=> b!1852402 m!2279159))

(declare-fun m!2279179 () Bool)

(assert (=> b!1852402 m!2279179))

(assert (=> b!1852402 m!2278407))

(assert (=> b!1852402 m!2278409))

(assert (=> b!1852402 m!2279165))

(assert (=> b!1852402 m!2279135))

(declare-fun m!2279181 () Bool)

(assert (=> b!1852402 m!2279181))

(assert (=> b!1852402 m!2278387))

(assert (=> b!1852402 m!2279167))

(assert (=> b!1852402 m!2279159))

(declare-fun m!2279183 () Bool)

(assert (=> b!1852402 m!2279183))

(assert (=> b!1852402 m!2279177))

(declare-fun m!2279185 () Bool)

(assert (=> b!1852402 m!2279185))

(assert (=> b!1852402 m!2279167))

(declare-fun m!2279187 () Bool)

(assert (=> b!1852398 m!2279187))

(declare-fun m!2279189 () Bool)

(assert (=> b!1852398 m!2279189))

(assert (=> b!1851998 d!566127))

(declare-fun d!566129 () Bool)

(assert (=> d!566129 (= (list!8319 (BalanceConc!13509 Empty!6793)) (list!8321 (c!302091 (BalanceConc!13509 Empty!6793))))))

(declare-fun bs!410438 () Bool)

(assert (= bs!410438 d!566129))

(declare-fun m!2279191 () Bool)

(assert (=> bs!410438 m!2279191))

(assert (=> b!1851998 d!566129))

(declare-fun d!566131 () Bool)

(assert (=> d!566131 (= (++!5551 (++!5551 lt!715859 lt!715864) lt!715874) (++!5551 lt!715859 (++!5551 lt!715864 lt!715874)))))

(declare-fun lt!716217 () Unit!35142)

(declare-fun choose!11648 (List!20613 List!20613 List!20613) Unit!35142)

(assert (=> d!566131 (= lt!716217 (choose!11648 lt!715859 lt!715864 lt!715874))))

(assert (=> d!566131 (= (lemmaConcatAssociativity!1093 lt!715859 lt!715864 lt!715874) lt!716217)))

(declare-fun bs!410439 () Bool)

(assert (= bs!410439 d!566131))

(assert (=> bs!410439 m!2278427))

(assert (=> bs!410439 m!2278427))

(assert (=> bs!410439 m!2278433))

(declare-fun m!2279193 () Bool)

(assert (=> bs!410439 m!2279193))

(assert (=> bs!410439 m!2278403))

(assert (=> bs!410439 m!2278403))

(assert (=> bs!410439 m!2278415))

(assert (=> b!1851998 d!566131))

(declare-fun b!1852408 () Bool)

(declare-fun lt!716218 () List!20616)

(declare-fun e!1183987 () Bool)

(assert (=> b!1852408 (= e!1183987 (or (not (= lt!715867 Nil!20544)) (= lt!716218 (++!5552 lt!715856 lt!715879))))))

(declare-fun e!1183986 () List!20616)

(declare-fun b!1852406 () Bool)

(assert (=> b!1852406 (= e!1183986 (Cons!20544 (h!25945 (++!5552 lt!715856 lt!715879)) (++!5552 (t!172418 (++!5552 lt!715856 lt!715879)) lt!715867)))))

(declare-fun d!566133 () Bool)

(assert (=> d!566133 e!1183987))

(declare-fun res!831201 () Bool)

(assert (=> d!566133 (=> (not res!831201) (not e!1183987))))

(assert (=> d!566133 (= res!831201 (= (content!3050 lt!716218) ((_ map or) (content!3050 (++!5552 lt!715856 lt!715879)) (content!3050 lt!715867))))))

(assert (=> d!566133 (= lt!716218 e!1183986)))

(declare-fun c!302185 () Bool)

(assert (=> d!566133 (= c!302185 ((_ is Nil!20544) (++!5552 lt!715856 lt!715879)))))

(assert (=> d!566133 (= (++!5552 (++!5552 lt!715856 lt!715879) lt!715867) lt!716218)))

(declare-fun b!1852407 () Bool)

(declare-fun res!831202 () Bool)

(assert (=> b!1852407 (=> (not res!831202) (not e!1183987))))

(assert (=> b!1852407 (= res!831202 (= (size!16222 lt!716218) (+ (size!16222 (++!5552 lt!715856 lt!715879)) (size!16222 lt!715867))))))

(declare-fun b!1852405 () Bool)

(assert (=> b!1852405 (= e!1183986 lt!715867)))

(assert (= (and d!566133 c!302185) b!1852405))

(assert (= (and d!566133 (not c!302185)) b!1852406))

(assert (= (and d!566133 res!831201) b!1852407))

(assert (= (and b!1852407 res!831202) b!1852408))

(declare-fun m!2279195 () Bool)

(assert (=> b!1852406 m!2279195))

(declare-fun m!2279197 () Bool)

(assert (=> d!566133 m!2279197))

(assert (=> d!566133 m!2278379))

(declare-fun m!2279199 () Bool)

(assert (=> d!566133 m!2279199))

(declare-fun m!2279201 () Bool)

(assert (=> d!566133 m!2279201))

(declare-fun m!2279203 () Bool)

(assert (=> b!1852407 m!2279203))

(assert (=> b!1852407 m!2278379))

(declare-fun m!2279205 () Bool)

(assert (=> b!1852407 m!2279205))

(declare-fun m!2279207 () Bool)

(assert (=> b!1852407 m!2279207))

(assert (=> b!1851998 d!566133))

(declare-fun b!1852409 () Bool)

(declare-fun e!1183991 () Bool)

(declare-fun e!1183990 () Bool)

(assert (=> b!1852409 (= e!1183991 e!1183990)))

(declare-fun res!831204 () Bool)

(declare-fun lt!716219 () tuple2!19816)

(assert (=> b!1852409 (= res!831204 (< (size!16220 (_2!11333 lt!716219)) (size!16220 (_2!11336 (v!26025 lt!715877)))))))

(assert (=> b!1852409 (=> (not res!831204) (not e!1183990))))

(declare-fun b!1852410 () Bool)

(declare-fun e!1183988 () tuple2!19816)

(assert (=> b!1852410 (= e!1183988 (tuple2!19817 (BalanceConc!13511 Empty!6794) (_2!11336 (v!26025 lt!715877))))))

(declare-fun d!566135 () Bool)

(declare-fun e!1183989 () Bool)

(assert (=> d!566135 e!1183989))

(declare-fun res!831205 () Bool)

(assert (=> d!566135 (=> (not res!831205) (not e!1183989))))

(assert (=> d!566135 (= res!831205 e!1183991)))

(declare-fun c!302187 () Bool)

(assert (=> d!566135 (= c!302187 (> (size!16219 (_1!11333 lt!716219)) 0))))

(assert (=> d!566135 (= lt!716219 e!1183988)))

(declare-fun c!302186 () Bool)

(declare-fun lt!716221 () Option!4231)

(assert (=> d!566135 (= c!302186 ((_ is Some!4230) lt!716221))))

(assert (=> d!566135 (= lt!716221 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715877))))))

(assert (=> d!566135 (= (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!715877))) lt!716219)))

(declare-fun b!1852411 () Bool)

(declare-fun res!831203 () Bool)

(assert (=> b!1852411 (=> (not res!831203) (not e!1183989))))

(assert (=> b!1852411 (= res!831203 (= (list!8320 (_1!11333 lt!716219)) (_1!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 (_2!11336 (v!26025 lt!715877)))))))))

(declare-fun b!1852412 () Bool)

(assert (=> b!1852412 (= e!1183989 (= (list!8319 (_2!11333 lt!716219)) (_2!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 (_2!11336 (v!26025 lt!715877)))))))))

(declare-fun b!1852413 () Bool)

(assert (=> b!1852413 (= e!1183990 (not (isEmpty!12804 (_1!11333 lt!716219))))))

(declare-fun b!1852414 () Bool)

(declare-fun lt!716220 () tuple2!19816)

(assert (=> b!1852414 (= e!1183988 (tuple2!19817 (prepend!875 (_1!11333 lt!716220) (_1!11336 (v!26025 lt!716221))) (_2!11333 lt!716220)))))

(assert (=> b!1852414 (= lt!716220 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716221))))))

(declare-fun b!1852415 () Bool)

(assert (=> b!1852415 (= e!1183991 (= (list!8319 (_2!11333 lt!716219)) (list!8319 (_2!11336 (v!26025 lt!715877)))))))

(assert (= (and d!566135 c!302186) b!1852414))

(assert (= (and d!566135 (not c!302186)) b!1852410))

(assert (= (and d!566135 c!302187) b!1852409))

(assert (= (and d!566135 (not c!302187)) b!1852415))

(assert (= (and b!1852409 res!831204) b!1852413))

(assert (= (and d!566135 res!831205) b!1852411))

(assert (= (and b!1852411 res!831203) b!1852412))

(declare-fun m!2279209 () Bool)

(assert (=> b!1852415 m!2279209))

(assert (=> b!1852415 m!2278413))

(declare-fun m!2279211 () Bool)

(assert (=> b!1852409 m!2279211))

(declare-fun m!2279213 () Bool)

(assert (=> b!1852409 m!2279213))

(declare-fun m!2279215 () Bool)

(assert (=> b!1852414 m!2279215))

(declare-fun m!2279217 () Bool)

(assert (=> b!1852414 m!2279217))

(declare-fun m!2279219 () Bool)

(assert (=> b!1852413 m!2279219))

(declare-fun m!2279221 () Bool)

(assert (=> b!1852411 m!2279221))

(assert (=> b!1852411 m!2278413))

(assert (=> b!1852411 m!2278413))

(declare-fun m!2279223 () Bool)

(assert (=> b!1852411 m!2279223))

(assert (=> b!1852412 m!2279209))

(assert (=> b!1852412 m!2278413))

(assert (=> b!1852412 m!2278413))

(assert (=> b!1852412 m!2279223))

(declare-fun m!2279225 () Bool)

(assert (=> d!566135 m!2279225))

(assert (=> d!566135 m!2279131))

(assert (=> b!1851998 d!566135))

(declare-fun d!566137 () Bool)

(declare-fun e!1183997 () Bool)

(assert (=> d!566137 e!1183997))

(declare-fun res!831211 () Bool)

(assert (=> d!566137 (=> (not res!831211) (not e!1183997))))

(declare-fun lt!716224 () List!20613)

(declare-fun content!3051 (List!20613) (InoxSet C!10232))

(assert (=> d!566137 (= res!831211 (= (content!3051 lt!716224) ((_ map or) (content!3051 (++!5551 lt!715859 lt!715864)) (content!3051 lt!715874))))))

(declare-fun e!1183996 () List!20613)

(assert (=> d!566137 (= lt!716224 e!1183996)))

(declare-fun c!302190 () Bool)

(assert (=> d!566137 (= c!302190 ((_ is Nil!20541) (++!5551 lt!715859 lt!715864)))))

(assert (=> d!566137 (= (++!5551 (++!5551 lt!715859 lt!715864) lt!715874) lt!716224)))

(declare-fun b!1852427 () Bool)

(assert (=> b!1852427 (= e!1183997 (or (not (= lt!715874 Nil!20541)) (= lt!716224 (++!5551 lt!715859 lt!715864))))))

(declare-fun b!1852426 () Bool)

(declare-fun res!831210 () Bool)

(assert (=> b!1852426 (=> (not res!831210) (not e!1183997))))

(assert (=> b!1852426 (= res!831210 (= (size!16221 lt!716224) (+ (size!16221 (++!5551 lt!715859 lt!715864)) (size!16221 lt!715874))))))

(declare-fun b!1852424 () Bool)

(assert (=> b!1852424 (= e!1183996 lt!715874)))

(declare-fun b!1852425 () Bool)

(assert (=> b!1852425 (= e!1183996 (Cons!20541 (h!25942 (++!5551 lt!715859 lt!715864)) (++!5551 (t!172415 (++!5551 lt!715859 lt!715864)) lt!715874)))))

(assert (= (and d!566137 c!302190) b!1852424))

(assert (= (and d!566137 (not c!302190)) b!1852425))

(assert (= (and d!566137 res!831211) b!1852426))

(assert (= (and b!1852426 res!831210) b!1852427))

(declare-fun m!2279227 () Bool)

(assert (=> d!566137 m!2279227))

(assert (=> d!566137 m!2278403))

(declare-fun m!2279229 () Bool)

(assert (=> d!566137 m!2279229))

(declare-fun m!2279231 () Bool)

(assert (=> d!566137 m!2279231))

(declare-fun m!2279233 () Bool)

(assert (=> b!1852426 m!2279233))

(assert (=> b!1852426 m!2278403))

(declare-fun m!2279235 () Bool)

(assert (=> b!1852426 m!2279235))

(declare-fun m!2279237 () Bool)

(assert (=> b!1852426 m!2279237))

(declare-fun m!2279239 () Bool)

(assert (=> b!1852425 m!2279239))

(assert (=> b!1851998 d!566137))

(declare-fun lt!716225 () List!20616)

(declare-fun b!1852431 () Bool)

(declare-fun e!1183999 () Bool)

(assert (=> b!1852431 (= e!1183999 (or (not (= lt!715879 Nil!20544)) (= lt!716225 lt!715856)))))

(declare-fun b!1852429 () Bool)

(declare-fun e!1183998 () List!20616)

(assert (=> b!1852429 (= e!1183998 (Cons!20544 (h!25945 lt!715856) (++!5552 (t!172418 lt!715856) lt!715879)))))

(declare-fun d!566139 () Bool)

(assert (=> d!566139 e!1183999))

(declare-fun res!831212 () Bool)

(assert (=> d!566139 (=> (not res!831212) (not e!1183999))))

(assert (=> d!566139 (= res!831212 (= (content!3050 lt!716225) ((_ map or) (content!3050 lt!715856) (content!3050 lt!715879))))))

(assert (=> d!566139 (= lt!716225 e!1183998)))

(declare-fun c!302191 () Bool)

(assert (=> d!566139 (= c!302191 ((_ is Nil!20544) lt!715856))))

(assert (=> d!566139 (= (++!5552 lt!715856 lt!715879) lt!716225)))

(declare-fun b!1852430 () Bool)

(declare-fun res!831213 () Bool)

(assert (=> b!1852430 (=> (not res!831213) (not e!1183999))))

(assert (=> b!1852430 (= res!831213 (= (size!16222 lt!716225) (+ (size!16222 lt!715856) (size!16222 lt!715879))))))

(declare-fun b!1852428 () Bool)

(assert (=> b!1852428 (= e!1183998 lt!715879)))

(assert (= (and d!566139 c!302191) b!1852428))

(assert (= (and d!566139 (not c!302191)) b!1852429))

(assert (= (and d!566139 res!831212) b!1852430))

(assert (= (and b!1852430 res!831213) b!1852431))

(declare-fun m!2279241 () Bool)

(assert (=> b!1852429 m!2279241))

(declare-fun m!2279243 () Bool)

(assert (=> d!566139 m!2279243))

(assert (=> d!566139 m!2279093))

(declare-fun m!2279245 () Bool)

(assert (=> d!566139 m!2279245))

(declare-fun m!2279247 () Bool)

(assert (=> b!1852430 m!2279247))

(assert (=> b!1852430 m!2279099))

(declare-fun m!2279249 () Bool)

(assert (=> b!1852430 m!2279249))

(assert (=> b!1851998 d!566139))

(declare-fun d!566141 () Bool)

(assert (=> d!566141 (= (list!8320 (_1!11333 lt!715863)) (list!8322 (c!302092 (_1!11333 lt!715863))))))

(declare-fun bs!410440 () Bool)

(assert (= bs!410440 d!566141))

(declare-fun m!2279251 () Bool)

(assert (=> bs!410440 m!2279251))

(assert (=> b!1851998 d!566141))

(declare-fun d!566143 () Bool)

(assert (=> d!566143 (= (lexList!931 thiss!12117 rules!1331 lt!715868) (tuple2!19819 lt!715875 Nil!20541))))

(declare-fun lt!716228 () Unit!35142)

(declare-fun choose!11649 (LexerInterface!3300 List!20615 List!20613 List!20613 List!20616 List!20616 List!20613) Unit!35142)

(assert (=> d!566143 (= lt!716228 (choose!11649 thiss!12117 rules!1331 lt!715868 lt!715876 lt!715875 (list!8320 (_1!11333 lt!715863)) (list!8319 (_2!11333 lt!715863))))))

(assert (=> d!566143 (not (isEmpty!12803 rules!1331))))

(assert (=> d!566143 (= (lemmaLexThenLexPrefix!289 thiss!12117 rules!1331 lt!715868 lt!715876 lt!715875 (list!8320 (_1!11333 lt!715863)) (list!8319 (_2!11333 lt!715863))) lt!716228)))

(declare-fun bs!410441 () Bool)

(assert (= bs!410441 d!566143))

(assert (=> bs!410441 m!2278429))

(assert (=> bs!410441 m!2278395))

(assert (=> bs!410441 m!2278397))

(declare-fun m!2279253 () Bool)

(assert (=> bs!410441 m!2279253))

(assert (=> bs!410441 m!2278305))

(assert (=> b!1851998 d!566143))

(declare-fun b!1852435 () Bool)

(declare-fun lt!716229 () List!20616)

(declare-fun e!1184001 () Bool)

(assert (=> b!1852435 (= e!1184001 (or (not (= lt!715867 Nil!20544)) (= lt!716229 lt!715879)))))

(declare-fun b!1852433 () Bool)

(declare-fun e!1184000 () List!20616)

(assert (=> b!1852433 (= e!1184000 (Cons!20544 (h!25945 lt!715879) (++!5552 (t!172418 lt!715879) lt!715867)))))

(declare-fun d!566145 () Bool)

(assert (=> d!566145 e!1184001))

(declare-fun res!831214 () Bool)

(assert (=> d!566145 (=> (not res!831214) (not e!1184001))))

(assert (=> d!566145 (= res!831214 (= (content!3050 lt!716229) ((_ map or) (content!3050 lt!715879) (content!3050 lt!715867))))))

(assert (=> d!566145 (= lt!716229 e!1184000)))

(declare-fun c!302192 () Bool)

(assert (=> d!566145 (= c!302192 ((_ is Nil!20544) lt!715879))))

(assert (=> d!566145 (= (++!5552 lt!715879 lt!715867) lt!716229)))

(declare-fun b!1852434 () Bool)

(declare-fun res!831215 () Bool)

(assert (=> b!1852434 (=> (not res!831215) (not e!1184001))))

(assert (=> b!1852434 (= res!831215 (= (size!16222 lt!716229) (+ (size!16222 lt!715879) (size!16222 lt!715867))))))

(declare-fun b!1852432 () Bool)

(assert (=> b!1852432 (= e!1184000 lt!715867)))

(assert (= (and d!566145 c!302192) b!1852432))

(assert (= (and d!566145 (not c!302192)) b!1852433))

(assert (= (and d!566145 res!831214) b!1852434))

(assert (= (and b!1852434 res!831215) b!1852435))

(declare-fun m!2279255 () Bool)

(assert (=> b!1852433 m!2279255))

(declare-fun m!2279257 () Bool)

(assert (=> d!566145 m!2279257))

(assert (=> d!566145 m!2279245))

(assert (=> d!566145 m!2279201))

(declare-fun m!2279259 () Bool)

(assert (=> b!1852434 m!2279259))

(assert (=> b!1852434 m!2279249))

(assert (=> b!1852434 m!2279207))

(assert (=> b!1851998 d!566145))

(declare-fun d!566147 () Bool)

(assert (=> d!566147 (= (list!8320 (BalanceConc!13511 Empty!6794)) (list!8322 (c!302092 (BalanceConc!13511 Empty!6794))))))

(declare-fun bs!410442 () Bool)

(assert (= bs!410442 d!566147))

(declare-fun m!2279261 () Bool)

(assert (=> bs!410442 m!2279261))

(assert (=> b!1851998 d!566147))

(declare-fun d!566149 () Bool)

(declare-fun e!1184003 () Bool)

(assert (=> d!566149 e!1184003))

(declare-fun res!831217 () Bool)

(assert (=> d!566149 (=> (not res!831217) (not e!1184003))))

(declare-fun lt!716230 () List!20613)

(assert (=> d!566149 (= res!831217 (= (content!3051 lt!716230) ((_ map or) (content!3051 (list!8319 (BalanceConc!13509 Empty!6793))) (content!3051 (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877))))))))))

(declare-fun e!1184002 () List!20613)

(assert (=> d!566149 (= lt!716230 e!1184002)))

(declare-fun c!302193 () Bool)

(assert (=> d!566149 (= c!302193 ((_ is Nil!20541) (list!8319 (BalanceConc!13509 Empty!6793))))))

(assert (=> d!566149 (= (++!5551 (list!8319 (BalanceConc!13509 Empty!6793)) (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877))))) lt!716230)))

(declare-fun b!1852439 () Bool)

(assert (=> b!1852439 (= e!1184003 (or (not (= (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))) Nil!20541)) (= lt!716230 (list!8319 (BalanceConc!13509 Empty!6793)))))))

(declare-fun b!1852438 () Bool)

(declare-fun res!831216 () Bool)

(assert (=> b!1852438 (=> (not res!831216) (not e!1184003))))

(assert (=> b!1852438 (= res!831216 (= (size!16221 lt!716230) (+ (size!16221 (list!8319 (BalanceConc!13509 Empty!6793))) (size!16221 (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877))))))))))

(declare-fun b!1852436 () Bool)

(assert (=> b!1852436 (= e!1184002 (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))

(declare-fun b!1852437 () Bool)

(assert (=> b!1852437 (= e!1184002 (Cons!20541 (h!25942 (list!8319 (BalanceConc!13509 Empty!6793))) (++!5551 (t!172415 (list!8319 (BalanceConc!13509 Empty!6793))) (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))))

(assert (= (and d!566149 c!302193) b!1852436))

(assert (= (and d!566149 (not c!302193)) b!1852437))

(assert (= (and d!566149 res!831217) b!1852438))

(assert (= (and b!1852438 res!831216) b!1852439))

(declare-fun m!2279263 () Bool)

(assert (=> d!566149 m!2279263))

(assert (=> d!566149 m!2278421))

(declare-fun m!2279265 () Bool)

(assert (=> d!566149 m!2279265))

(assert (=> d!566149 m!2278393))

(declare-fun m!2279267 () Bool)

(assert (=> d!566149 m!2279267))

(declare-fun m!2279269 () Bool)

(assert (=> b!1852438 m!2279269))

(assert (=> b!1852438 m!2278421))

(declare-fun m!2279271 () Bool)

(assert (=> b!1852438 m!2279271))

(assert (=> b!1852438 m!2278393))

(declare-fun m!2279273 () Bool)

(assert (=> b!1852438 m!2279273))

(assert (=> b!1852437 m!2278393))

(declare-fun m!2279275 () Bool)

(assert (=> b!1852437 m!2279275))

(assert (=> b!1851998 d!566149))

(declare-fun d!566151 () Bool)

(declare-fun e!1184005 () Bool)

(assert (=> d!566151 e!1184005))

(declare-fun res!831219 () Bool)

(assert (=> d!566151 (=> (not res!831219) (not e!1184005))))

(declare-fun lt!716231 () List!20613)

(assert (=> d!566151 (= res!831219 (= (content!3051 lt!716231) ((_ map or) (content!3051 lt!715859) (content!3051 lt!715864))))))

(declare-fun e!1184004 () List!20613)

(assert (=> d!566151 (= lt!716231 e!1184004)))

(declare-fun c!302194 () Bool)

(assert (=> d!566151 (= c!302194 ((_ is Nil!20541) lt!715859))))

(assert (=> d!566151 (= (++!5551 lt!715859 lt!715864) lt!716231)))

(declare-fun b!1852443 () Bool)

(assert (=> b!1852443 (= e!1184005 (or (not (= lt!715864 Nil!20541)) (= lt!716231 lt!715859)))))

(declare-fun b!1852442 () Bool)

(declare-fun res!831218 () Bool)

(assert (=> b!1852442 (=> (not res!831218) (not e!1184005))))

(assert (=> b!1852442 (= res!831218 (= (size!16221 lt!716231) (+ (size!16221 lt!715859) (size!16221 lt!715864))))))

(declare-fun b!1852440 () Bool)

(assert (=> b!1852440 (= e!1184004 lt!715864)))

(declare-fun b!1852441 () Bool)

(assert (=> b!1852441 (= e!1184004 (Cons!20541 (h!25942 lt!715859) (++!5551 (t!172415 lt!715859) lt!715864)))))

(assert (= (and d!566151 c!302194) b!1852440))

(assert (= (and d!566151 (not c!302194)) b!1852441))

(assert (= (and d!566151 res!831219) b!1852442))

(assert (= (and b!1852442 res!831218) b!1852443))

(declare-fun m!2279277 () Bool)

(assert (=> d!566151 m!2279277))

(declare-fun m!2279279 () Bool)

(assert (=> d!566151 m!2279279))

(declare-fun m!2279281 () Bool)

(assert (=> d!566151 m!2279281))

(declare-fun m!2279283 () Bool)

(assert (=> b!1852442 m!2279283))

(declare-fun m!2279285 () Bool)

(assert (=> b!1852442 m!2279285))

(declare-fun m!2279287 () Bool)

(assert (=> b!1852442 m!2279287))

(declare-fun m!2279289 () Bool)

(assert (=> b!1852441 m!2279289))

(assert (=> b!1851998 d!566151))

(declare-fun d!566153 () Bool)

(declare-fun e!1184006 () Bool)

(assert (=> d!566153 e!1184006))

(declare-fun res!831220 () Bool)

(assert (=> d!566153 (=> (not res!831220) (not e!1184006))))

(assert (=> d!566153 (= res!831220 (isBalanced!2117 (append!595 (c!302092 (BalanceConc!13511 Empty!6794)) (_1!11336 (v!26025 lt!715877)))))))

(declare-fun lt!716232 () BalanceConc!13510)

(assert (=> d!566153 (= lt!716232 (BalanceConc!13511 (append!595 (c!302092 (BalanceConc!13511 Empty!6794)) (_1!11336 (v!26025 lt!715877)))))))

(assert (=> d!566153 (= (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877))) lt!716232)))

(declare-fun b!1852444 () Bool)

(assert (=> b!1852444 (= e!1184006 (= (list!8320 lt!716232) ($colon+!130 (list!8320 (BalanceConc!13511 Empty!6794)) (_1!11336 (v!26025 lt!715877)))))))

(assert (= (and d!566153 res!831220) b!1852444))

(declare-fun m!2279291 () Bool)

(assert (=> d!566153 m!2279291))

(assert (=> d!566153 m!2279291))

(declare-fun m!2279293 () Bool)

(assert (=> d!566153 m!2279293))

(declare-fun m!2279295 () Bool)

(assert (=> b!1852444 m!2279295))

(assert (=> b!1852444 m!2278383))

(assert (=> b!1852444 m!2278383))

(declare-fun m!2279297 () Bool)

(assert (=> b!1852444 m!2279297))

(assert (=> b!1851998 d!566153))

(declare-fun d!566155 () Bool)

(assert (=> d!566155 (= (list!8319 (_2!11333 lt!715863)) (list!8321 (c!302091 (_2!11333 lt!715863))))))

(declare-fun bs!410443 () Bool)

(assert (= bs!410443 d!566155))

(declare-fun m!2279299 () Bool)

(assert (=> bs!410443 m!2279299))

(assert (=> b!1851998 d!566155))

(declare-fun d!566157 () Bool)

(assert (=> d!566157 (= (list!8319 (charsOf!2294 (_1!11336 (v!26025 lt!715877)))) (list!8321 (c!302091 (charsOf!2294 (_1!11336 (v!26025 lt!715877))))))))

(declare-fun bs!410444 () Bool)

(assert (= bs!410444 d!566157))

(declare-fun m!2279301 () Bool)

(assert (=> bs!410444 m!2279301))

(assert (=> b!1851998 d!566157))

(declare-fun d!566159 () Bool)

(declare-fun e!1184008 () Bool)

(assert (=> d!566159 e!1184008))

(declare-fun res!831222 () Bool)

(assert (=> d!566159 (=> (not res!831222) (not e!1184008))))

(declare-fun lt!716233 () List!20613)

(assert (=> d!566159 (= res!831222 (= (content!3051 lt!716233) ((_ map or) (content!3051 lt!715859) (content!3051 (++!5551 lt!715864 lt!715874)))))))

(declare-fun e!1184007 () List!20613)

(assert (=> d!566159 (= lt!716233 e!1184007)))

(declare-fun c!302195 () Bool)

(assert (=> d!566159 (= c!302195 ((_ is Nil!20541) lt!715859))))

(assert (=> d!566159 (= (++!5551 lt!715859 (++!5551 lt!715864 lt!715874)) lt!716233)))

(declare-fun b!1852448 () Bool)

(assert (=> b!1852448 (= e!1184008 (or (not (= (++!5551 lt!715864 lt!715874) Nil!20541)) (= lt!716233 lt!715859)))))

(declare-fun b!1852447 () Bool)

(declare-fun res!831221 () Bool)

(assert (=> b!1852447 (=> (not res!831221) (not e!1184008))))

(assert (=> b!1852447 (= res!831221 (= (size!16221 lt!716233) (+ (size!16221 lt!715859) (size!16221 (++!5551 lt!715864 lt!715874)))))))

(declare-fun b!1852445 () Bool)

(assert (=> b!1852445 (= e!1184007 (++!5551 lt!715864 lt!715874))))

(declare-fun b!1852446 () Bool)

(assert (=> b!1852446 (= e!1184007 (Cons!20541 (h!25942 lt!715859) (++!5551 (t!172415 lt!715859) (++!5551 lt!715864 lt!715874))))))

(assert (= (and d!566159 c!302195) b!1852445))

(assert (= (and d!566159 (not c!302195)) b!1852446))

(assert (= (and d!566159 res!831222) b!1852447))

(assert (= (and b!1852447 res!831221) b!1852448))

(declare-fun m!2279303 () Bool)

(assert (=> d!566159 m!2279303))

(assert (=> d!566159 m!2279279))

(assert (=> d!566159 m!2278427))

(declare-fun m!2279305 () Bool)

(assert (=> d!566159 m!2279305))

(declare-fun m!2279307 () Bool)

(assert (=> b!1852447 m!2279307))

(assert (=> b!1852447 m!2279285))

(assert (=> b!1852447 m!2278427))

(declare-fun m!2279309 () Bool)

(assert (=> b!1852447 m!2279309))

(assert (=> b!1852446 m!2278427))

(declare-fun m!2279311 () Bool)

(assert (=> b!1852446 m!2279311))

(assert (=> b!1851998 d!566159))

(declare-fun d!566161 () Bool)

(assert (=> d!566161 (= (list!8319 (_2!11336 (v!26025 lt!715877))) (list!8321 (c!302091 (_2!11336 (v!26025 lt!715877)))))))

(declare-fun bs!410445 () Bool)

(assert (= bs!410445 d!566161))

(declare-fun m!2279313 () Bool)

(assert (=> bs!410445 m!2279313))

(assert (=> b!1851998 d!566161))

(declare-fun b!1852449 () Bool)

(declare-fun e!1184010 () Bool)

(declare-fun lt!716235 () tuple2!19818)

(assert (=> b!1852449 (= e!1184010 (= (_2!11335 lt!716235) lt!715868))))

(declare-fun b!1852450 () Bool)

(declare-fun e!1184011 () Bool)

(assert (=> b!1852450 (= e!1184011 (not (isEmpty!12805 (_1!11335 lt!716235))))))

(declare-fun b!1852452 () Bool)

(assert (=> b!1852452 (= e!1184010 e!1184011)))

(declare-fun res!831223 () Bool)

(assert (=> b!1852452 (= res!831223 (< (size!16221 (_2!11335 lt!716235)) (size!16221 lt!715868)))))

(assert (=> b!1852452 (=> (not res!831223) (not e!1184011))))

(declare-fun b!1852453 () Bool)

(declare-fun e!1184009 () tuple2!19818)

(assert (=> b!1852453 (= e!1184009 (tuple2!19819 Nil!20544 lt!715868))))

(declare-fun b!1852451 () Bool)

(declare-fun lt!716234 () Option!4232)

(declare-fun lt!716236 () tuple2!19818)

(assert (=> b!1852451 (= e!1184009 (tuple2!19819 (Cons!20544 (_1!11338 (v!26028 lt!716234)) (_1!11335 lt!716236)) (_2!11335 lt!716236)))))

(assert (=> b!1852451 (= lt!716236 (lexList!931 thiss!12117 rules!1331 (_2!11338 (v!26028 lt!716234))))))

(declare-fun d!566163 () Bool)

(assert (=> d!566163 e!1184010))

(declare-fun c!302197 () Bool)

(assert (=> d!566163 (= c!302197 (> (size!16222 (_1!11335 lt!716235)) 0))))

(assert (=> d!566163 (= lt!716235 e!1184009)))

(declare-fun c!302196 () Bool)

(assert (=> d!566163 (= c!302196 ((_ is Some!4231) lt!716234))))

(assert (=> d!566163 (= lt!716234 (maxPrefix!1827 thiss!12117 rules!1331 lt!715868))))

(assert (=> d!566163 (= (lexList!931 thiss!12117 rules!1331 lt!715868) lt!716235)))

(assert (= (and d!566163 c!302196) b!1852451))

(assert (= (and d!566163 (not c!302196)) b!1852453))

(assert (= (and d!566163 c!302197) b!1852452))

(assert (= (and d!566163 (not c!302197)) b!1852449))

(assert (= (and b!1852452 res!831223) b!1852450))

(declare-fun m!2279315 () Bool)

(assert (=> b!1852450 m!2279315))

(declare-fun m!2279317 () Bool)

(assert (=> b!1852452 m!2279317))

(declare-fun m!2279319 () Bool)

(assert (=> b!1852452 m!2279319))

(declare-fun m!2279321 () Bool)

(assert (=> b!1852451 m!2279321))

(declare-fun m!2279323 () Bool)

(assert (=> d!566163 m!2279323))

(declare-fun m!2279325 () Bool)

(assert (=> d!566163 m!2279325))

(assert (=> b!1851998 d!566163))

(declare-fun b!1852454 () Bool)

(declare-fun e!1184016 () Bool)

(declare-fun e!1184013 () Bool)

(assert (=> b!1852454 (= e!1184016 e!1184013)))

(declare-fun res!831228 () Bool)

(assert (=> b!1852454 (=> res!831228 e!1184013)))

(declare-fun lt!716240 () Option!4231)

(assert (=> b!1852454 (= res!831228 (not (isDefined!3533 lt!716240)))))

(declare-fun d!566165 () Bool)

(assert (=> d!566165 e!1184016))

(declare-fun res!831226 () Bool)

(assert (=> d!566165 (=> (not res!831226) (not e!1184016))))

(assert (=> d!566165 (= res!831226 (= (isDefined!3533 lt!716240) (isDefined!3534 (maxPrefixZipper!379 thiss!12117 rules!1331 (list!8319 lt!715869)))))))

(declare-fun e!1184012 () Option!4231)

(assert (=> d!566165 (= lt!716240 e!1184012)))

(declare-fun c!302198 () Bool)

(assert (=> d!566165 (= c!302198 (and ((_ is Cons!20543) rules!1331) ((_ is Nil!20543) (t!172417 rules!1331))))))

(declare-fun lt!716237 () Unit!35142)

(declare-fun lt!716242 () Unit!35142)

(assert (=> d!566165 (= lt!716237 lt!716242)))

(declare-fun lt!716243 () List!20613)

(declare-fun lt!716239 () List!20613)

(assert (=> d!566165 (isPrefix!1895 lt!716243 lt!716239)))

(assert (=> d!566165 (= lt!716242 (lemmaIsPrefixRefl!1223 lt!716243 lt!716239))))

(assert (=> d!566165 (= lt!716239 (list!8319 lt!715869))))

(assert (=> d!566165 (= lt!716243 (list!8319 lt!715869))))

(assert (=> d!566165 (rulesValidInductive!1266 thiss!12117 rules!1331)))

(assert (=> d!566165 (= (maxPrefixZipperSequence!767 thiss!12117 rules!1331 lt!715869) lt!716240)))

(declare-fun b!1852455 () Bool)

(declare-fun res!831227 () Bool)

(assert (=> b!1852455 (=> (not res!831227) (not e!1184016))))

(declare-fun e!1184017 () Bool)

(assert (=> b!1852455 (= res!831227 e!1184017)))

(declare-fun res!831229 () Bool)

(assert (=> b!1852455 (=> res!831229 e!1184017)))

(assert (=> b!1852455 (= res!831229 (not (isDefined!3533 lt!716240)))))

(declare-fun b!1852456 () Bool)

(declare-fun e!1184015 () Bool)

(assert (=> b!1852456 (= e!1184017 e!1184015)))

(declare-fun res!831225 () Bool)

(assert (=> b!1852456 (=> (not res!831225) (not e!1184015))))

(assert (=> b!1852456 (= res!831225 (= (_1!11336 (get!6332 lt!716240)) (_1!11338 (get!6333 (maxPrefixZipper!379 thiss!12117 rules!1331 (list!8319 lt!715869))))))))

(declare-fun bm!115375 () Bool)

(declare-fun call!115380 () Option!4231)

(assert (=> bm!115375 (= call!115380 (maxPrefixOneRuleZipperSequence!371 thiss!12117 (h!25944 rules!1331) lt!715869))))

(declare-fun b!1852457 () Bool)

(declare-fun e!1184014 () Bool)

(assert (=> b!1852457 (= e!1184013 e!1184014)))

(declare-fun res!831224 () Bool)

(assert (=> b!1852457 (=> (not res!831224) (not e!1184014))))

(assert (=> b!1852457 (= res!831224 (= (_1!11336 (get!6332 lt!716240)) (_1!11338 (get!6333 (maxPrefix!1827 thiss!12117 rules!1331 (list!8319 lt!715869))))))))

(declare-fun b!1852458 () Bool)

(assert (=> b!1852458 (= e!1184015 (= (list!8319 (_2!11336 (get!6332 lt!716240))) (_2!11338 (get!6333 (maxPrefixZipper!379 thiss!12117 rules!1331 (list!8319 lt!715869))))))))

(declare-fun b!1852459 () Bool)

(assert (=> b!1852459 (= e!1184012 call!115380)))

(declare-fun b!1852460 () Bool)

(declare-fun lt!716241 () Option!4231)

(declare-fun lt!716238 () Option!4231)

(assert (=> b!1852460 (= e!1184012 (ite (and ((_ is None!4230) lt!716241) ((_ is None!4230) lt!716238)) None!4230 (ite ((_ is None!4230) lt!716238) lt!716241 (ite ((_ is None!4230) lt!716241) lt!716238 (ite (>= (size!16218 (_1!11336 (v!26025 lt!716241))) (size!16218 (_1!11336 (v!26025 lt!716238)))) lt!716241 lt!716238)))))))

(assert (=> b!1852460 (= lt!716241 call!115380)))

(assert (=> b!1852460 (= lt!716238 (maxPrefixZipperSequence!767 thiss!12117 (t!172417 rules!1331) lt!715869))))

(declare-fun b!1852461 () Bool)

(assert (=> b!1852461 (= e!1184014 (= (list!8319 (_2!11336 (get!6332 lt!716240))) (_2!11338 (get!6333 (maxPrefix!1827 thiss!12117 rules!1331 (list!8319 lt!715869))))))))

(assert (= (and d!566165 c!302198) b!1852459))

(assert (= (and d!566165 (not c!302198)) b!1852460))

(assert (= (or b!1852459 b!1852460) bm!115375))

(assert (= (and d!566165 res!831226) b!1852455))

(assert (= (and b!1852455 (not res!831229)) b!1852456))

(assert (= (and b!1852456 res!831225) b!1852458))

(assert (= (and b!1852455 res!831227) b!1852454))

(assert (= (and b!1852454 (not res!831228)) b!1852457))

(assert (= (and b!1852457 res!831224) b!1852461))

(declare-fun m!2279327 () Bool)

(assert (=> d!566165 m!2279327))

(declare-fun m!2279329 () Bool)

(assert (=> d!566165 m!2279329))

(declare-fun m!2279331 () Bool)

(assert (=> d!566165 m!2279331))

(declare-fun m!2279333 () Bool)

(assert (=> d!566165 m!2279333))

(declare-fun m!2279335 () Bool)

(assert (=> d!566165 m!2279335))

(declare-fun m!2279337 () Bool)

(assert (=> d!566165 m!2279337))

(assert (=> d!566165 m!2279333))

(assert (=> d!566165 m!2279329))

(assert (=> d!566165 m!2278537))

(assert (=> b!1852454 m!2279335))

(declare-fun m!2279339 () Bool)

(assert (=> b!1852461 m!2279339))

(declare-fun m!2279341 () Bool)

(assert (=> b!1852461 m!2279341))

(declare-fun m!2279343 () Bool)

(assert (=> b!1852461 m!2279343))

(assert (=> b!1852461 m!2279333))

(assert (=> b!1852461 m!2279339))

(assert (=> b!1852461 m!2279333))

(declare-fun m!2279345 () Bool)

(assert (=> b!1852461 m!2279345))

(assert (=> b!1852455 m!2279335))

(assert (=> b!1852458 m!2279343))

(assert (=> b!1852458 m!2279333))

(assert (=> b!1852458 m!2279329))

(assert (=> b!1852458 m!2279333))

(assert (=> b!1852458 m!2279329))

(declare-fun m!2279347 () Bool)

(assert (=> b!1852458 m!2279347))

(assert (=> b!1852458 m!2279345))

(assert (=> b!1852456 m!2279345))

(assert (=> b!1852456 m!2279333))

(assert (=> b!1852456 m!2279333))

(assert (=> b!1852456 m!2279329))

(assert (=> b!1852456 m!2279329))

(assert (=> b!1852456 m!2279347))

(declare-fun m!2279349 () Bool)

(assert (=> b!1852460 m!2279349))

(assert (=> b!1852457 m!2279345))

(assert (=> b!1852457 m!2279333))

(assert (=> b!1852457 m!2279333))

(assert (=> b!1852457 m!2279339))

(assert (=> b!1852457 m!2279339))

(assert (=> b!1852457 m!2279341))

(declare-fun m!2279351 () Bool)

(assert (=> bm!115375 m!2279351))

(assert (=> b!1851998 d!566165))

(declare-fun d!566167 () Bool)

(assert (=> d!566167 (= (++!5552 (++!5552 lt!715856 lt!715879) lt!715867) (++!5552 lt!715856 (++!5552 lt!715879 lt!715867)))))

(declare-fun lt!716246 () Unit!35142)

(declare-fun choose!11650 (List!20616 List!20616 List!20616) Unit!35142)

(assert (=> d!566167 (= lt!716246 (choose!11650 lt!715856 lt!715879 lt!715867))))

(assert (=> d!566167 (= (lemmaConcatAssociativity!1094 lt!715856 lt!715879 lt!715867) lt!716246)))

(declare-fun bs!410446 () Bool)

(assert (= bs!410446 d!566167))

(assert (=> bs!410446 m!2278411))

(assert (=> bs!410446 m!2278431))

(assert (=> bs!410446 m!2278379))

(declare-fun m!2279353 () Bool)

(assert (=> bs!410446 m!2279353))

(assert (=> bs!410446 m!2278379))

(assert (=> bs!410446 m!2278381))

(assert (=> bs!410446 m!2278411))

(assert (=> b!1851998 d!566167))

(declare-fun d!566169 () Bool)

(declare-fun e!1184019 () Bool)

(assert (=> d!566169 e!1184019))

(declare-fun res!831231 () Bool)

(assert (=> d!566169 (=> (not res!831231) (not e!1184019))))

(declare-fun lt!716247 () List!20613)

(assert (=> d!566169 (= res!831231 (= (content!3051 lt!716247) ((_ map or) (content!3051 lt!715864) (content!3051 lt!715874))))))

(declare-fun e!1184018 () List!20613)

(assert (=> d!566169 (= lt!716247 e!1184018)))

(declare-fun c!302199 () Bool)

(assert (=> d!566169 (= c!302199 ((_ is Nil!20541) lt!715864))))

(assert (=> d!566169 (= (++!5551 lt!715864 lt!715874) lt!716247)))

(declare-fun b!1852465 () Bool)

(assert (=> b!1852465 (= e!1184019 (or (not (= lt!715874 Nil!20541)) (= lt!716247 lt!715864)))))

(declare-fun b!1852464 () Bool)

(declare-fun res!831230 () Bool)

(assert (=> b!1852464 (=> (not res!831230) (not e!1184019))))

(assert (=> b!1852464 (= res!831230 (= (size!16221 lt!716247) (+ (size!16221 lt!715864) (size!16221 lt!715874))))))

(declare-fun b!1852462 () Bool)

(assert (=> b!1852462 (= e!1184018 lt!715874)))

(declare-fun b!1852463 () Bool)

(assert (=> b!1852463 (= e!1184018 (Cons!20541 (h!25942 lt!715864) (++!5551 (t!172415 lt!715864) lt!715874)))))

(assert (= (and d!566169 c!302199) b!1852462))

(assert (= (and d!566169 (not c!302199)) b!1852463))

(assert (= (and d!566169 res!831231) b!1852464))

(assert (= (and b!1852464 res!831230) b!1852465))

(declare-fun m!2279355 () Bool)

(assert (=> d!566169 m!2279355))

(assert (=> d!566169 m!2279281))

(assert (=> d!566169 m!2279231))

(declare-fun m!2279357 () Bool)

(assert (=> b!1852464 m!2279357))

(assert (=> b!1852464 m!2279287))

(assert (=> b!1852464 m!2279237))

(declare-fun m!2279359 () Bool)

(assert (=> b!1852463 m!2279359))

(assert (=> b!1851998 d!566169))

(assert (=> b!1851998 d!566099))

(declare-fun b!1852466 () Bool)

(declare-fun e!1184023 () Bool)

(declare-fun e!1184022 () Bool)

(assert (=> b!1852466 (= e!1184023 e!1184022)))

(declare-fun res!831233 () Bool)

(declare-fun lt!716248 () tuple2!19816)

(assert (=> b!1852466 (= res!831233 (< (size!16220 (_2!11333 lt!716248)) (size!16220 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))))

(assert (=> b!1852466 (=> (not res!831233) (not e!1184022))))

(declare-fun b!1852467 () Bool)

(declare-fun e!1184020 () tuple2!19816)

(assert (=> b!1852467 (= e!1184020 (tuple2!19817 (BalanceConc!13511 Empty!6794) (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877))))))))

(declare-fun d!566171 () Bool)

(declare-fun e!1184021 () Bool)

(assert (=> d!566171 e!1184021))

(declare-fun res!831234 () Bool)

(assert (=> d!566171 (=> (not res!831234) (not e!1184021))))

(assert (=> d!566171 (= res!831234 e!1184023)))

(declare-fun c!302201 () Bool)

(assert (=> d!566171 (= c!302201 (> (size!16219 (_1!11333 lt!716248)) 0))))

(assert (=> d!566171 (= lt!716248 e!1184020)))

(declare-fun c!302200 () Bool)

(declare-fun lt!716250 () Option!4231)

(assert (=> d!566171 (= c!302200 ((_ is Some!4230) lt!716250))))

(assert (=> d!566171 (= lt!716250 (maxPrefixZipperSequence!767 thiss!12117 rules!1331 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877))))))))

(assert (=> d!566171 (= (lexRec!401 thiss!12117 rules!1331 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877))))) lt!716248)))

(declare-fun b!1852468 () Bool)

(declare-fun res!831232 () Bool)

(assert (=> b!1852468 (=> (not res!831232) (not e!1184021))))

(assert (=> b!1852468 (= res!831232 (= (list!8320 (_1!11333 lt!716248)) (_1!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))))))

(declare-fun b!1852469 () Bool)

(assert (=> b!1852469 (= e!1184021 (= (list!8319 (_2!11333 lt!716248)) (_2!11335 (lexList!931 thiss!12117 rules!1331 (list!8319 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))))))

(declare-fun b!1852470 () Bool)

(assert (=> b!1852470 (= e!1184022 (not (isEmpty!12804 (_1!11333 lt!716248))))))

(declare-fun b!1852471 () Bool)

(declare-fun lt!716249 () tuple2!19816)

(assert (=> b!1852471 (= e!1184020 (tuple2!19817 (prepend!875 (_1!11333 lt!716249) (_1!11336 (v!26025 lt!716250))) (_2!11333 lt!716249)))))

(assert (=> b!1852471 (= lt!716249 (lexRec!401 thiss!12117 rules!1331 (_2!11336 (v!26025 lt!716250))))))

(declare-fun b!1852472 () Bool)

(assert (=> b!1852472 (= e!1184023 (= (list!8319 (_2!11333 lt!716248)) (list!8319 (++!5550 (BalanceConc!13509 Empty!6793) (charsOf!2294 (_1!11336 (v!26025 lt!715877)))))))))

(assert (= (and d!566171 c!302200) b!1852471))

(assert (= (and d!566171 (not c!302200)) b!1852467))

(assert (= (and d!566171 c!302201) b!1852466))

(assert (= (and d!566171 (not c!302201)) b!1852472))

(assert (= (and b!1852466 res!831233) b!1852470))

(assert (= (and d!566171 res!831234) b!1852468))

(assert (= (and b!1852468 res!831232) b!1852469))

(declare-fun m!2279361 () Bool)

(assert (=> b!1852472 m!2279361))

(assert (=> b!1852472 m!2278387))

(assert (=> b!1852472 m!2279171))

(declare-fun m!2279363 () Bool)

(assert (=> b!1852466 m!2279363))

(assert (=> b!1852466 m!2278387))

(declare-fun m!2279365 () Bool)

(assert (=> b!1852466 m!2279365))

(declare-fun m!2279367 () Bool)

(assert (=> b!1852471 m!2279367))

(declare-fun m!2279369 () Bool)

(assert (=> b!1852471 m!2279369))

(declare-fun m!2279371 () Bool)

(assert (=> b!1852470 m!2279371))

(declare-fun m!2279373 () Bool)

(assert (=> b!1852468 m!2279373))

(assert (=> b!1852468 m!2278387))

(assert (=> b!1852468 m!2279171))

(assert (=> b!1852468 m!2279171))

(declare-fun m!2279375 () Bool)

(assert (=> b!1852468 m!2279375))

(assert (=> b!1852469 m!2279361))

(assert (=> b!1852469 m!2278387))

(assert (=> b!1852469 m!2279171))

(assert (=> b!1852469 m!2279171))

(assert (=> b!1852469 m!2279375))

(declare-fun m!2279377 () Bool)

(assert (=> d!566171 m!2279377))

(assert (=> d!566171 m!2278387))

(declare-fun m!2279379 () Bool)

(assert (=> d!566171 m!2279379))

(assert (=> b!1851998 d!566171))

(declare-fun d!566173 () Bool)

(assert (=> d!566173 (= (list!8320 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877)))) (list!8322 (c!302092 (append!594 (BalanceConc!13511 Empty!6794) (_1!11336 (v!26025 lt!715877))))))))

(declare-fun bs!410447 () Bool)

(assert (= bs!410447 d!566173))

(declare-fun m!2279381 () Bool)

(assert (=> bs!410447 m!2279381))

(assert (=> b!1851998 d!566173))

(declare-fun bs!410448 () Bool)

(declare-fun d!566175 () Bool)

(assert (= bs!410448 (and d!566175 d!566025)))

(declare-fun lambda!73246 () Int)

(assert (=> bs!410448 (= lambda!73246 lambda!73223)))

(declare-fun bs!410449 () Bool)

(assert (= bs!410449 (and d!566175 d!566085)))

(assert (=> bs!410449 (= lambda!73246 lambda!73238)))

(declare-fun bs!410450 () Bool)

(assert (= bs!410450 (and d!566175 d!566109)))

(assert (=> bs!410450 (= lambda!73246 lambda!73242)))

(declare-fun bs!410451 () Bool)

(assert (= bs!410451 (and d!566175 d!566079)))

(assert (=> bs!410451 (= lambda!73246 lambda!73234)))

(declare-fun bs!410452 () Bool)

(assert (= bs!410452 (and d!566175 d!566077)))

(assert (=> bs!410452 (= lambda!73246 lambda!73233)))

(declare-fun bs!410453 () Bool)

(assert (= bs!410453 (and d!566175 d!566023)))

(assert (=> bs!410453 (= lambda!73246 lambda!73222)))

(declare-fun bs!410454 () Bool)

(assert (= bs!410454 (and d!566175 d!566059)))

(assert (=> bs!410454 (= lambda!73246 lambda!73228)))

(declare-fun bs!410455 () Bool)

(assert (= bs!410455 (and d!566175 d!566031)))

(assert (=> bs!410455 (= lambda!73246 lambda!73224)))

(declare-fun bs!410456 () Bool)

(assert (= bs!410456 (and d!566175 d!566117)))

(assert (=> bs!410456 (= lambda!73246 lambda!73245)))

(declare-fun bs!410457 () Bool)

(assert (= bs!410457 (and d!566175 d!566111)))

(assert (=> bs!410457 (= lambda!73246 lambda!73243)))

(declare-fun bs!410458 () Bool)

(assert (= bs!410458 (and d!566175 d!566105)))

(assert (=> bs!410458 (= lambda!73246 lambda!73240)))

(declare-fun bs!410459 () Bool)

(assert (= bs!410459 (and d!566175 d!566047)))

(assert (=> bs!410459 (= lambda!73246 lambda!73226)))

(declare-fun bs!410460 () Bool)

(assert (= bs!410460 (and d!566175 d!565993)))

(assert (=> bs!410460 (= lambda!73246 lambda!73208)))

(declare-fun bs!410461 () Bool)

(assert (= bs!410461 (and d!566175 d!566073)))

(assert (=> bs!410461 (= lambda!73246 lambda!73232)))

(declare-fun bs!410462 () Bool)

(assert (= bs!410462 (and d!566175 d!566091)))

(assert (=> bs!410462 (= lambda!73246 lambda!73239)))

(declare-fun bs!410463 () Bool)

(assert (= bs!410463 (and d!566175 d!566045)))

(assert (=> bs!410463 (= lambda!73246 lambda!73225)))

(declare-fun bs!410464 () Bool)

(assert (= bs!410464 (and d!566175 d!566021)))

(assert (=> bs!410464 (= lambda!73246 lambda!73221)))

(declare-fun bs!410465 () Bool)

(assert (= bs!410465 (and d!566175 d!565997)))

(assert (=> bs!410465 (= lambda!73246 lambda!73212)))

(declare-fun bs!410466 () Bool)

(assert (= bs!410466 (and d!566175 d!566007)))

(assert (=> bs!410466 (= lambda!73246 lambda!73213)))

(declare-fun bs!410467 () Bool)

(assert (= bs!410467 (and d!566175 d!566057)))

(assert (=> bs!410467 (= lambda!73246 lambda!73227)))

(declare-fun bs!410468 () Bool)

(assert (= bs!410468 (and d!566175 d!566017)))

(assert (=> bs!410468 (= lambda!73246 lambda!73220)))

(declare-fun bs!410469 () Bool)

(assert (= bs!410469 (and d!566175 d!566107)))

(assert (=> bs!410469 (= lambda!73246 lambda!73241)))

(declare-fun bs!410470 () Bool)

(assert (= bs!410470 (and d!566175 d!566115)))

(assert (=> bs!410470 (= lambda!73246 lambda!73244)))

(assert (=> d!566175 (= (inv!26926 (_2!11331 (_1!11332 (h!25941 mapDefault!8818)))) (forall!4390 (exprs!1451 (_2!11331 (_1!11332 (h!25941 mapDefault!8818)))) lambda!73246))))

(declare-fun bs!410471 () Bool)

(assert (= bs!410471 d!566175))

(declare-fun m!2279383 () Bool)

(assert (=> bs!410471 m!2279383))

(assert (=> b!1852020 d!566175))

(declare-fun e!1184025 () Bool)

(declare-fun b!1852473 () Bool)

(declare-fun tp!524950 () Bool)

(declare-fun tp!524948 () Bool)

(assert (=> b!1852473 (= e!1184025 (and (inv!26922 (left!16477 (left!16477 (c!302091 input!736)))) tp!524948 (inv!26922 (right!16807 (left!16477 (c!302091 input!736)))) tp!524950))))

(declare-fun b!1852475 () Bool)

(declare-fun e!1184024 () Bool)

(declare-fun tp!524949 () Bool)

(assert (=> b!1852475 (= e!1184024 tp!524949)))

(declare-fun b!1852474 () Bool)

(assert (=> b!1852474 (= e!1184025 (and (inv!26927 (xs!9669 (left!16477 (c!302091 input!736)))) e!1184024))))

(assert (=> b!1852041 (= tp!524848 (and (inv!26922 (left!16477 (c!302091 input!736))) e!1184025))))

(assert (= (and b!1852041 ((_ is Node!6793) (left!16477 (c!302091 input!736)))) b!1852473))

(assert (= b!1852474 b!1852475))

(assert (= (and b!1852041 ((_ is Leaf!9938) (left!16477 (c!302091 input!736)))) b!1852474))

(declare-fun m!2279385 () Bool)

(assert (=> b!1852473 m!2279385))

(declare-fun m!2279387 () Bool)

(assert (=> b!1852473 m!2279387))

(declare-fun m!2279389 () Bool)

(assert (=> b!1852474 m!2279389))

(assert (=> b!1852041 m!2278479))

(declare-fun b!1852476 () Bool)

(declare-fun e!1184027 () Bool)

(declare-fun tp!524953 () Bool)

(declare-fun tp!524951 () Bool)

(assert (=> b!1852476 (= e!1184027 (and (inv!26922 (left!16477 (right!16807 (c!302091 input!736)))) tp!524951 (inv!26922 (right!16807 (right!16807 (c!302091 input!736)))) tp!524953))))

(declare-fun b!1852478 () Bool)

(declare-fun e!1184026 () Bool)

(declare-fun tp!524952 () Bool)

(assert (=> b!1852478 (= e!1184026 tp!524952)))

(declare-fun b!1852477 () Bool)

(assert (=> b!1852477 (= e!1184027 (and (inv!26927 (xs!9669 (right!16807 (c!302091 input!736)))) e!1184026))))

(assert (=> b!1852041 (= tp!524850 (and (inv!26922 (right!16807 (c!302091 input!736))) e!1184027))))

(assert (= (and b!1852041 ((_ is Node!6793) (right!16807 (c!302091 input!736)))) b!1852476))

(assert (= b!1852477 b!1852478))

(assert (= (and b!1852041 ((_ is Leaf!9938) (right!16807 (c!302091 input!736)))) b!1852477))

(declare-fun m!2279391 () Bool)

(assert (=> b!1852476 m!2279391))

(declare-fun m!2279393 () Bool)

(assert (=> b!1852476 m!2279393))

(declare-fun m!2279395 () Bool)

(assert (=> b!1852477 m!2279395))

(assert (=> b!1852041 m!2278481))

(declare-fun b!1852480 () Bool)

(declare-fun e!1184028 () Bool)

(declare-fun tp!524956 () Bool)

(declare-fun tp!524955 () Bool)

(assert (=> b!1852480 (= e!1184028 (and tp!524956 tp!524955))))

(declare-fun b!1852482 () Bool)

(declare-fun tp!524954 () Bool)

(declare-fun tp!524958 () Bool)

(assert (=> b!1852482 (= e!1184028 (and tp!524954 tp!524958))))

(declare-fun b!1852479 () Bool)

(assert (=> b!1852479 (= e!1184028 tp_is_empty!8499)))

(declare-fun b!1852481 () Bool)

(declare-fun tp!524957 () Bool)

(assert (=> b!1852481 (= e!1184028 tp!524957)))

(assert (=> b!1852094 (= tp!524912 e!1184028)))

(assert (= (and b!1852094 ((_ is ElementMatch!5041) (_1!11331 (_1!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) b!1852479))

(assert (= (and b!1852094 ((_ is Concat!8835) (_1!11331 (_1!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) b!1852480))

(assert (= (and b!1852094 ((_ is Star!5041) (_1!11331 (_1!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) b!1852481))

(assert (= (and b!1852094 ((_ is Union!5041) (_1!11331 (_1!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) b!1852482))

(declare-fun setIsEmpty!11444 () Bool)

(declare-fun setRes!11444 () Bool)

(assert (=> setIsEmpty!11444 setRes!11444))

(declare-fun b!1852483 () Bool)

(declare-fun e!1184030 () Bool)

(declare-fun tp!524962 () Bool)

(assert (=> b!1852483 (= e!1184030 tp!524962)))

(declare-fun e!1184029 () Bool)

(assert (=> b!1852094 (= tp!524909 e!1184029)))

(declare-fun setElem!11444 () Context!1902)

(declare-fun tp!524959 () Bool)

(declare-fun setNonEmpty!11444 () Bool)

(declare-fun e!1184031 () Bool)

(assert (=> setNonEmpty!11444 (= setRes!11444 (and tp!524959 (inv!26926 setElem!11444) e!1184031))))

(declare-fun setRest!11444 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11444 (= (_2!11332 (h!25941 (t!172414 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11444 true) setRest!11444))))

(declare-fun b!1852484 () Bool)

(declare-fun tp!524961 () Bool)

(assert (=> b!1852484 (= e!1184031 tp!524961)))

(declare-fun tp!524963 () Bool)

(declare-fun b!1852485 () Bool)

(declare-fun tp!524960 () Bool)

(assert (=> b!1852485 (= e!1184029 (and tp!524963 (inv!26926 (_2!11331 (_1!11332 (h!25941 (t!172414 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) e!1184030 tp_is_empty!8499 setRes!11444 tp!524960))))

(declare-fun condSetEmpty!11444 () Bool)

(assert (=> b!1852485 (= condSetEmpty!11444 (= (_2!11332 (h!25941 (t!172414 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852485 b!1852483))

(assert (= (and b!1852485 condSetEmpty!11444) setIsEmpty!11444))

(assert (= (and b!1852485 (not condSetEmpty!11444)) setNonEmpty!11444))

(assert (= setNonEmpty!11444 b!1852484))

(assert (= (and b!1852094 ((_ is Cons!20540) (t!172414 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))) b!1852485))

(declare-fun m!2279397 () Bool)

(assert (=> setNonEmpty!11444 m!2279397))

(declare-fun m!2279399 () Bool)

(assert (=> b!1852485 m!2279399))

(declare-fun b!1852490 () Bool)

(declare-fun e!1184034 () Bool)

(declare-fun tp!524968 () Bool)

(declare-fun tp!524969 () Bool)

(assert (=> b!1852490 (= e!1184034 (and tp!524968 tp!524969))))

(assert (=> b!1852089 (= tp!524906 e!1184034)))

(assert (= (and b!1852089 ((_ is Cons!20538) (exprs!1451 (_2!11331 (_1!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))))))) b!1852490))

(declare-fun b!1852491 () Bool)

(declare-fun e!1184035 () Bool)

(declare-fun tp!524970 () Bool)

(declare-fun tp!524971 () Bool)

(assert (=> b!1852491 (= e!1184035 (and tp!524970 tp!524971))))

(assert (=> b!1852092 (= tp!524911 e!1184035)))

(assert (= (and b!1852092 ((_ is Cons!20538) (exprs!1451 (_2!11331 (_1!11332 (h!25941 (minValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454)))))))))))) b!1852491))

(declare-fun b!1852492 () Bool)

(declare-fun e!1184036 () Bool)

(declare-fun tp!524972 () Bool)

(assert (=> b!1852492 (= e!1184036 tp!524972)))

(declare-fun setNonEmpty!11445 () Bool)

(declare-fun tp!524974 () Bool)

(declare-fun setElem!11445 () Context!1902)

(declare-fun setRes!11445 () Bool)

(assert (=> setNonEmpty!11445 (= setRes!11445 (and tp!524974 (inv!26926 setElem!11445) e!1184036))))

(declare-fun setRest!11445 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11445 (= (_2!11330 (h!25940 (t!172413 mapDefault!8821))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11445 true) setRest!11445))))

(declare-fun setIsEmpty!11445 () Bool)

(assert (=> setIsEmpty!11445 setRes!11445))

(declare-fun b!1852493 () Bool)

(declare-fun e!1184037 () Bool)

(declare-fun tp!524975 () Bool)

(declare-fun e!1184038 () Bool)

(assert (=> b!1852493 (= e!1184037 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 (t!172413 mapDefault!8821))))) e!1184038 tp_is_empty!8499 setRes!11445 tp!524975))))

(declare-fun condSetEmpty!11445 () Bool)

(assert (=> b!1852493 (= condSetEmpty!11445 (= (_2!11330 (h!25940 (t!172413 mapDefault!8821))) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> b!1852110 (= tp!524931 e!1184037)))

(declare-fun b!1852494 () Bool)

(declare-fun tp!524973 () Bool)

(assert (=> b!1852494 (= e!1184038 tp!524973)))

(assert (= b!1852493 b!1852494))

(assert (= (and b!1852493 condSetEmpty!11445) setIsEmpty!11445))

(assert (= (and b!1852493 (not condSetEmpty!11445)) setNonEmpty!11445))

(assert (= setNonEmpty!11445 b!1852492))

(assert (= (and b!1852110 ((_ is Cons!20539) (t!172413 mapDefault!8821))) b!1852493))

(declare-fun m!2279401 () Bool)

(assert (=> setNonEmpty!11445 m!2279401))

(declare-fun m!2279403 () Bool)

(assert (=> b!1852493 m!2279403))

(declare-fun b!1852495 () Bool)

(declare-fun e!1184039 () Bool)

(declare-fun tp!524976 () Bool)

(declare-fun tp!524977 () Bool)

(assert (=> b!1852495 (= e!1184039 (and tp!524976 tp!524977))))

(assert (=> b!1852016 (= tp!524824 e!1184039)))

(assert (= (and b!1852016 ((_ is Cons!20538) (exprs!1451 setElem!11424))) b!1852495))

(declare-fun b!1852500 () Bool)

(declare-fun e!1184042 () Bool)

(declare-fun tp!524980 () Bool)

(assert (=> b!1852500 (= e!1184042 (and tp_is_empty!8499 tp!524980))))

(assert (=> b!1852043 (= tp!524849 e!1184042)))

(assert (= (and b!1852043 ((_ is Cons!20541) (innerList!6853 (xs!9669 (c!302091 input!736))))) b!1852500))

(declare-fun b!1852501 () Bool)

(declare-fun e!1184043 () Bool)

(declare-fun tp!524981 () Bool)

(declare-fun tp!524982 () Bool)

(assert (=> b!1852501 (= e!1184043 (and tp!524981 tp!524982))))

(assert (=> b!1852112 (= tp!524936 e!1184043)))

(assert (= (and b!1852112 ((_ is Cons!20538) (exprs!1451 setElem!11441))) b!1852501))

(declare-fun b!1852502 () Bool)

(declare-fun e!1184044 () Bool)

(declare-fun tp!524983 () Bool)

(declare-fun tp!524984 () Bool)

(assert (=> b!1852502 (= e!1184044 (and tp!524983 tp!524984))))

(assert (=> b!1852018 (= tp!524826 e!1184044)))

(assert (= (and b!1852018 ((_ is Cons!20538) (exprs!1451 (_2!11331 (_1!11332 (h!25941 mapValue!8818)))))) b!1852502))

(declare-fun b!1852503 () Bool)

(declare-fun e!1184045 () Bool)

(declare-fun tp!524985 () Bool)

(declare-fun tp!524986 () Bool)

(assert (=> b!1852503 (= e!1184045 (and tp!524985 tp!524986))))

(assert (=> b!1852084 (= tp!524896 e!1184045)))

(assert (= (and b!1852084 ((_ is Cons!20538) (exprs!1451 setElem!11433))) b!1852503))

(declare-fun b!1852504 () Bool)

(declare-fun e!1184046 () Bool)

(declare-fun tp!524987 () Bool)

(declare-fun tp!524988 () Bool)

(assert (=> b!1852504 (= e!1184046 (and tp!524987 tp!524988))))

(assert (=> b!1852088 (= tp!524900 e!1184046)))

(assert (= (and b!1852088 ((_ is Cons!20538) (exprs!1451 (_1!11329 (_1!11330 (h!25940 mapDefault!8815)))))) b!1852504))

(declare-fun b!1852506 () Bool)

(declare-fun e!1184047 () Bool)

(declare-fun tp!524991 () Bool)

(declare-fun tp!524990 () Bool)

(assert (=> b!1852506 (= e!1184047 (and tp!524991 tp!524990))))

(declare-fun b!1852508 () Bool)

(declare-fun tp!524989 () Bool)

(declare-fun tp!524993 () Bool)

(assert (=> b!1852508 (= e!1184047 (and tp!524989 tp!524993))))

(declare-fun b!1852505 () Bool)

(assert (=> b!1852505 (= e!1184047 tp_is_empty!8499)))

(declare-fun b!1852507 () Bool)

(declare-fun tp!524992 () Bool)

(assert (=> b!1852507 (= e!1184047 tp!524992)))

(assert (=> b!1852091 (= tp!524907 e!1184047)))

(assert (= (and b!1852091 ((_ is ElementMatch!5041) (_1!11331 (_1!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) b!1852505))

(assert (= (and b!1852091 ((_ is Concat!8835) (_1!11331 (_1!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) b!1852506))

(assert (= (and b!1852091 ((_ is Star!5041) (_1!11331 (_1!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) b!1852507))

(assert (= (and b!1852091 ((_ is Union!5041) (_1!11331 (_1!11332 (h!25941 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) b!1852508))

(declare-fun setIsEmpty!11446 () Bool)

(declare-fun setRes!11446 () Bool)

(assert (=> setIsEmpty!11446 setRes!11446))

(declare-fun b!1852509 () Bool)

(declare-fun e!1184049 () Bool)

(declare-fun tp!524997 () Bool)

(assert (=> b!1852509 (= e!1184049 tp!524997)))

(declare-fun e!1184048 () Bool)

(assert (=> b!1852091 (= tp!524904 e!1184048)))

(declare-fun setElem!11446 () Context!1902)

(declare-fun e!1184050 () Bool)

(declare-fun tp!524994 () Bool)

(declare-fun setNonEmpty!11446 () Bool)

(assert (=> setNonEmpty!11446 (= setRes!11446 (and tp!524994 (inv!26926 setElem!11446) e!1184050))))

(declare-fun setRest!11446 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11446 (= (_2!11332 (h!25941 (t!172414 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11446 true) setRest!11446))))

(declare-fun b!1852510 () Bool)

(declare-fun tp!524996 () Bool)

(assert (=> b!1852510 (= e!1184050 tp!524996)))

(declare-fun tp!524995 () Bool)

(declare-fun b!1852511 () Bool)

(declare-fun tp!524998 () Bool)

(assert (=> b!1852511 (= e!1184048 (and tp!524998 (inv!26926 (_2!11331 (_1!11332 (h!25941 (t!172414 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))))) e!1184049 tp_is_empty!8499 setRes!11446 tp!524995))))

(declare-fun condSetEmpty!11446 () Bool)

(assert (=> b!1852511 (= condSetEmpty!11446 (= (_2!11332 (h!25941 (t!172414 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852511 b!1852509))

(assert (= (and b!1852511 condSetEmpty!11446) setIsEmpty!11446))

(assert (= (and b!1852511 (not condSetEmpty!11446)) setNonEmpty!11446))

(assert (= setNonEmpty!11446 b!1852510))

(assert (= (and b!1852091 ((_ is Cons!20540) (t!172414 (zeroValue!2151 (v!26023 (underlying!4001 (v!26024 (underlying!4002 (cache!2219 cacheDown!454))))))))) b!1852511))

(declare-fun m!2279405 () Bool)

(assert (=> setNonEmpty!11446 m!2279405))

(declare-fun m!2279407 () Bool)

(assert (=> b!1852511 m!2279407))

(declare-fun b!1852513 () Bool)

(declare-fun e!1184051 () Bool)

(declare-fun tp!525001 () Bool)

(declare-fun tp!525000 () Bool)

(assert (=> b!1852513 (= e!1184051 (and tp!525001 tp!525000))))

(declare-fun b!1852515 () Bool)

(declare-fun tp!524999 () Bool)

(declare-fun tp!525003 () Bool)

(assert (=> b!1852515 (= e!1184051 (and tp!524999 tp!525003))))

(declare-fun b!1852512 () Bool)

(assert (=> b!1852512 (= e!1184051 tp_is_empty!8499)))

(declare-fun b!1852514 () Bool)

(declare-fun tp!525002 () Bool)

(assert (=> b!1852514 (= e!1184051 tp!525002)))

(assert (=> b!1852071 (= tp!524877 e!1184051)))

(assert (= (and b!1852071 ((_ is ElementMatch!5041) (regOne!10595 (regex!3678 (h!25944 rules!1331))))) b!1852512))

(assert (= (and b!1852071 ((_ is Concat!8835) (regOne!10595 (regex!3678 (h!25944 rules!1331))))) b!1852513))

(assert (= (and b!1852071 ((_ is Star!5041) (regOne!10595 (regex!3678 (h!25944 rules!1331))))) b!1852514))

(assert (= (and b!1852071 ((_ is Union!5041) (regOne!10595 (regex!3678 (h!25944 rules!1331))))) b!1852515))

(declare-fun b!1852517 () Bool)

(declare-fun e!1184052 () Bool)

(declare-fun tp!525006 () Bool)

(declare-fun tp!525005 () Bool)

(assert (=> b!1852517 (= e!1184052 (and tp!525006 tp!525005))))

(declare-fun b!1852519 () Bool)

(declare-fun tp!525004 () Bool)

(declare-fun tp!525008 () Bool)

(assert (=> b!1852519 (= e!1184052 (and tp!525004 tp!525008))))

(declare-fun b!1852516 () Bool)

(assert (=> b!1852516 (= e!1184052 tp_is_empty!8499)))

(declare-fun b!1852518 () Bool)

(declare-fun tp!525007 () Bool)

(assert (=> b!1852518 (= e!1184052 tp!525007)))

(assert (=> b!1852071 (= tp!524881 e!1184052)))

(assert (= (and b!1852071 ((_ is ElementMatch!5041) (regTwo!10595 (regex!3678 (h!25944 rules!1331))))) b!1852516))

(assert (= (and b!1852071 ((_ is Concat!8835) (regTwo!10595 (regex!3678 (h!25944 rules!1331))))) b!1852517))

(assert (= (and b!1852071 ((_ is Star!5041) (regTwo!10595 (regex!3678 (h!25944 rules!1331))))) b!1852518))

(assert (= (and b!1852071 ((_ is Union!5041) (regTwo!10595 (regex!3678 (h!25944 rules!1331))))) b!1852519))

(declare-fun b!1852520 () Bool)

(declare-fun e!1184053 () Bool)

(declare-fun tp!525009 () Bool)

(declare-fun tp!525010 () Bool)

(assert (=> b!1852520 (= e!1184053 (and tp!525009 tp!525010))))

(assert (=> b!1852055 (= tp!524863 e!1184053)))

(assert (= (and b!1852055 ((_ is Cons!20538) (exprs!1451 setElem!11432))) b!1852520))

(declare-fun b!1852521 () Bool)

(declare-fun e!1184054 () Bool)

(declare-fun tp!525011 () Bool)

(assert (=> b!1852521 (= e!1184054 tp!525011)))

(declare-fun setNonEmpty!11447 () Bool)

(declare-fun tp!525013 () Bool)

(declare-fun setElem!11447 () Context!1902)

(declare-fun setRes!11447 () Bool)

(assert (=> setNonEmpty!11447 (= setRes!11447 (and tp!525013 (inv!26926 setElem!11447) e!1184054))))

(declare-fun setRest!11447 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11447 (= (_2!11330 (h!25940 (t!172413 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11447 true) setRest!11447))))

(declare-fun setIsEmpty!11447 () Bool)

(assert (=> setIsEmpty!11447 setRes!11447))

(declare-fun e!1184056 () Bool)

(declare-fun e!1184055 () Bool)

(declare-fun b!1852522 () Bool)

(declare-fun tp!525014 () Bool)

(assert (=> b!1852522 (= e!1184055 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 (t!172413 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))))))) e!1184056 tp_is_empty!8499 setRes!11447 tp!525014))))

(declare-fun condSetEmpty!11447 () Bool)

(assert (=> b!1852522 (= condSetEmpty!11447 (= (_2!11330 (h!25940 (t!172413 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))))) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> b!1852053 (= tp!524862 e!1184055)))

(declare-fun b!1852523 () Bool)

(declare-fun tp!525012 () Bool)

(assert (=> b!1852523 (= e!1184056 tp!525012)))

(assert (= b!1852522 b!1852523))

(assert (= (and b!1852522 condSetEmpty!11447) setIsEmpty!11447))

(assert (= (and b!1852522 (not condSetEmpty!11447)) setNonEmpty!11447))

(assert (= setNonEmpty!11447 b!1852521))

(assert (= (and b!1852053 ((_ is Cons!20539) (t!172413 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))))) b!1852522))

(declare-fun m!2279409 () Bool)

(assert (=> setNonEmpty!11447 m!2279409))

(declare-fun m!2279411 () Bool)

(assert (=> b!1852522 m!2279411))

(declare-fun b!1852524 () Bool)

(declare-fun e!1184057 () Bool)

(declare-fun tp!525015 () Bool)

(declare-fun tp!525016 () Bool)

(assert (=> b!1852524 (= e!1184057 (and tp!525015 tp!525016))))

(assert (=> b!1852057 (= tp!524864 e!1184057)))

(assert (= (and b!1852057 ((_ is Cons!20538) (exprs!1451 (_1!11329 (_1!11330 (h!25940 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))))))) b!1852524))

(declare-fun b!1852525 () Bool)

(declare-fun e!1184058 () Bool)

(declare-fun tp!525017 () Bool)

(declare-fun tp!525018 () Bool)

(assert (=> b!1852525 (= e!1184058 (and tp!525017 tp!525018))))

(assert (=> b!1852086 (= tp!524899 e!1184058)))

(assert (= (and b!1852086 ((_ is Cons!20538) (exprs!1451 setElem!11434))) b!1852525))

(declare-fun condSetEmpty!11450 () Bool)

(assert (=> setNonEmpty!11435 (= condSetEmpty!11450 (= setRest!11435 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11450 () Bool)

(assert (=> setNonEmpty!11435 (= tp!524903 setRes!11450)))

(declare-fun setIsEmpty!11450 () Bool)

(assert (=> setIsEmpty!11450 setRes!11450))

(declare-fun e!1184061 () Bool)

(declare-fun setElem!11450 () Context!1902)

(declare-fun setNonEmpty!11450 () Bool)

(declare-fun tp!525023 () Bool)

(assert (=> setNonEmpty!11450 (= setRes!11450 (and tp!525023 (inv!26926 setElem!11450) e!1184061))))

(declare-fun setRest!11450 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11450 (= setRest!11435 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11450 true) setRest!11450))))

(declare-fun b!1852530 () Bool)

(declare-fun tp!525024 () Bool)

(assert (=> b!1852530 (= e!1184061 tp!525024)))

(assert (= (and setNonEmpty!11435 condSetEmpty!11450) setIsEmpty!11450))

(assert (= (and setNonEmpty!11435 (not condSetEmpty!11450)) setNonEmpty!11450))

(assert (= setNonEmpty!11450 b!1852530))

(declare-fun m!2279413 () Bool)

(assert (=> setNonEmpty!11450 m!2279413))

(declare-fun condSetEmpty!11451 () Bool)

(assert (=> setNonEmpty!11436 (= condSetEmpty!11451 (= setRest!11436 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11451 () Bool)

(assert (=> setNonEmpty!11436 (= tp!524908 setRes!11451)))

(declare-fun setIsEmpty!11451 () Bool)

(assert (=> setIsEmpty!11451 setRes!11451))

(declare-fun tp!525025 () Bool)

(declare-fun e!1184062 () Bool)

(declare-fun setNonEmpty!11451 () Bool)

(declare-fun setElem!11451 () Context!1902)

(assert (=> setNonEmpty!11451 (= setRes!11451 (and tp!525025 (inv!26926 setElem!11451) e!1184062))))

(declare-fun setRest!11451 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11451 (= setRest!11436 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11451 true) setRest!11451))))

(declare-fun b!1852531 () Bool)

(declare-fun tp!525026 () Bool)

(assert (=> b!1852531 (= e!1184062 tp!525026)))

(assert (= (and setNonEmpty!11436 condSetEmpty!11451) setIsEmpty!11451))

(assert (= (and setNonEmpty!11436 (not condSetEmpty!11451)) setNonEmpty!11451))

(assert (= setNonEmpty!11451 b!1852531))

(declare-fun m!2279415 () Bool)

(assert (=> setNonEmpty!11451 m!2279415))

(declare-fun setIsEmpty!11452 () Bool)

(declare-fun setRes!11453 () Bool)

(assert (=> setIsEmpty!11452 setRes!11453))

(declare-fun b!1852532 () Bool)

(declare-fun e!1184063 () Bool)

(declare-fun tp!525035 () Bool)

(assert (=> b!1852532 (= e!1184063 tp!525035)))

(declare-fun mapNonEmpty!8822 () Bool)

(declare-fun mapRes!8822 () Bool)

(declare-fun tp!525029 () Bool)

(declare-fun e!1184065 () Bool)

(assert (=> mapNonEmpty!8822 (= mapRes!8822 (and tp!525029 e!1184065))))

(declare-fun mapRest!8822 () (Array (_ BitVec 32) List!20611))

(declare-fun mapKey!8822 () (_ BitVec 32))

(declare-fun mapValue!8822 () List!20611)

(assert (=> mapNonEmpty!8822 (= mapRest!8821 (store mapRest!8822 mapKey!8822 mapValue!8822))))

(declare-fun e!1184067 () Bool)

(declare-fun tp!525033 () Bool)

(declare-fun setElem!11452 () Context!1902)

(declare-fun setNonEmpty!11452 () Bool)

(assert (=> setNonEmpty!11452 (= setRes!11453 (and tp!525033 (inv!26926 setElem!11452) e!1184067))))

(declare-fun setRest!11453 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11452 (= (_2!11330 (h!25940 mapValue!8822)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11452 true) setRest!11453))))

(declare-fun setRes!11452 () Bool)

(declare-fun mapDefault!8822 () List!20611)

(declare-fun e!1184068 () Bool)

(declare-fun b!1852533 () Bool)

(declare-fun e!1184064 () Bool)

(declare-fun tp!525027 () Bool)

(assert (=> b!1852533 (= e!1184068 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 mapDefault!8822)))) e!1184064 tp_is_empty!8499 setRes!11452 tp!525027))))

(declare-fun condSetEmpty!11452 () Bool)

(assert (=> b!1852533 (= condSetEmpty!11452 (= (_2!11330 (h!25940 mapDefault!8822)) ((as const (Array Context!1902 Bool)) false)))))

(declare-fun b!1852534 () Bool)

(declare-fun tp!525028 () Bool)

(assert (=> b!1852534 (= e!1184065 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 mapValue!8822)))) e!1184063 tp_is_empty!8499 setRes!11453 tp!525028))))

(declare-fun condSetEmpty!11453 () Bool)

(assert (=> b!1852534 (= condSetEmpty!11453 (= (_2!11330 (h!25940 mapValue!8822)) ((as const (Array Context!1902 Bool)) false)))))

(declare-fun mapIsEmpty!8822 () Bool)

(assert (=> mapIsEmpty!8822 mapRes!8822))

(declare-fun condMapEmpty!8822 () Bool)

(assert (=> mapNonEmpty!8821 (= condMapEmpty!8822 (= mapRest!8821 ((as const (Array (_ BitVec 32) List!20611)) mapDefault!8822)))))

(assert (=> mapNonEmpty!8821 (= tp!524933 (and e!1184068 mapRes!8822))))

(declare-fun setIsEmpty!11453 () Bool)

(assert (=> setIsEmpty!11453 setRes!11452))

(declare-fun b!1852535 () Bool)

(declare-fun tp!525032 () Bool)

(assert (=> b!1852535 (= e!1184067 tp!525032)))

(declare-fun b!1852536 () Bool)

(declare-fun tp!525031 () Bool)

(assert (=> b!1852536 (= e!1184064 tp!525031)))

(declare-fun tp!525034 () Bool)

(declare-fun setElem!11453 () Context!1902)

(declare-fun e!1184066 () Bool)

(declare-fun setNonEmpty!11453 () Bool)

(assert (=> setNonEmpty!11453 (= setRes!11452 (and tp!525034 (inv!26926 setElem!11453) e!1184066))))

(declare-fun setRest!11452 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11453 (= (_2!11330 (h!25940 mapDefault!8822)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11453 true) setRest!11452))))

(declare-fun b!1852537 () Bool)

(declare-fun tp!525030 () Bool)

(assert (=> b!1852537 (= e!1184066 tp!525030)))

(assert (= (and mapNonEmpty!8821 condMapEmpty!8822) mapIsEmpty!8822))

(assert (= (and mapNonEmpty!8821 (not condMapEmpty!8822)) mapNonEmpty!8822))

(assert (= b!1852534 b!1852532))

(assert (= (and b!1852534 condSetEmpty!11453) setIsEmpty!11452))

(assert (= (and b!1852534 (not condSetEmpty!11453)) setNonEmpty!11452))

(assert (= setNonEmpty!11452 b!1852535))

(assert (= (and mapNonEmpty!8822 ((_ is Cons!20539) mapValue!8822)) b!1852534))

(assert (= b!1852533 b!1852536))

(assert (= (and b!1852533 condSetEmpty!11452) setIsEmpty!11453))

(assert (= (and b!1852533 (not condSetEmpty!11452)) setNonEmpty!11453))

(assert (= setNonEmpty!11453 b!1852537))

(assert (= (and mapNonEmpty!8821 ((_ is Cons!20539) mapDefault!8822)) b!1852533))

(declare-fun m!2279417 () Bool)

(assert (=> setNonEmpty!11453 m!2279417))

(declare-fun m!2279419 () Bool)

(assert (=> setNonEmpty!11452 m!2279419))

(declare-fun m!2279421 () Bool)

(assert (=> b!1852534 m!2279421))

(declare-fun m!2279423 () Bool)

(assert (=> b!1852533 m!2279423))

(declare-fun m!2279425 () Bool)

(assert (=> mapNonEmpty!8822 m!2279425))

(declare-fun condSetEmpty!11454 () Bool)

(assert (=> setNonEmpty!11431 (= condSetEmpty!11454 (= setRest!11431 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11454 () Bool)

(assert (=> setNonEmpty!11431 (= tp!524861 setRes!11454)))

(declare-fun setIsEmpty!11454 () Bool)

(assert (=> setIsEmpty!11454 setRes!11454))

(declare-fun tp!525036 () Bool)

(declare-fun setElem!11454 () Context!1902)

(declare-fun setNonEmpty!11454 () Bool)

(declare-fun e!1184069 () Bool)

(assert (=> setNonEmpty!11454 (= setRes!11454 (and tp!525036 (inv!26926 setElem!11454) e!1184069))))

(declare-fun setRest!11454 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11454 (= setRest!11431 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11454 true) setRest!11454))))

(declare-fun b!1852538 () Bool)

(declare-fun tp!525037 () Bool)

(assert (=> b!1852538 (= e!1184069 tp!525037)))

(assert (= (and setNonEmpty!11431 condSetEmpty!11454) setIsEmpty!11454))

(assert (= (and setNonEmpty!11431 (not condSetEmpty!11454)) setNonEmpty!11454))

(assert (= setNonEmpty!11454 b!1852538))

(declare-fun m!2279427 () Bool)

(assert (=> setNonEmpty!11454 m!2279427))

(declare-fun b!1852540 () Bool)

(declare-fun e!1184070 () Bool)

(declare-fun tp!525040 () Bool)

(declare-fun tp!525039 () Bool)

(assert (=> b!1852540 (= e!1184070 (and tp!525040 tp!525039))))

(declare-fun b!1852542 () Bool)

(declare-fun tp!525038 () Bool)

(declare-fun tp!525042 () Bool)

(assert (=> b!1852542 (= e!1184070 (and tp!525038 tp!525042))))

(declare-fun b!1852539 () Bool)

(assert (=> b!1852539 (= e!1184070 tp_is_empty!8499)))

(declare-fun b!1852541 () Bool)

(declare-fun tp!525041 () Bool)

(assert (=> b!1852541 (= e!1184070 tp!525041)))

(assert (=> b!1852081 (= tp!524891 e!1184070)))

(assert (= (and b!1852081 ((_ is ElementMatch!5041) (regex!3678 (h!25944 (t!172417 rules!1331))))) b!1852539))

(assert (= (and b!1852081 ((_ is Concat!8835) (regex!3678 (h!25944 (t!172417 rules!1331))))) b!1852540))

(assert (= (and b!1852081 ((_ is Star!5041) (regex!3678 (h!25944 (t!172417 rules!1331))))) b!1852541))

(assert (= (and b!1852081 ((_ is Union!5041) (regex!3678 (h!25944 (t!172417 rules!1331))))) b!1852542))

(declare-fun b!1852543 () Bool)

(declare-fun e!1184071 () Bool)

(declare-fun tp!525043 () Bool)

(declare-fun tp!525044 () Bool)

(assert (=> b!1852543 (= e!1184071 (and tp!525043 tp!525044))))

(assert (=> b!1852031 (= tp!524839 e!1184071)))

(assert (= (and b!1852031 ((_ is Cons!20538) (exprs!1451 setElem!11428))) b!1852543))

(declare-fun b!1852544 () Bool)

(declare-fun e!1184072 () Bool)

(declare-fun tp!525045 () Bool)

(assert (=> b!1852544 (= e!1184072 tp!525045)))

(declare-fun setElem!11455 () Context!1902)

(declare-fun setNonEmpty!11455 () Bool)

(declare-fun tp!525047 () Bool)

(declare-fun setRes!11455 () Bool)

(assert (=> setNonEmpty!11455 (= setRes!11455 (and tp!525047 (inv!26926 setElem!11455) e!1184072))))

(declare-fun setRest!11455 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11455 (= (_2!11330 (h!25940 (t!172413 mapValue!8814))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11455 true) setRest!11455))))

(declare-fun setIsEmpty!11455 () Bool)

(assert (=> setIsEmpty!11455 setRes!11455))

(declare-fun e!1184074 () Bool)

(declare-fun b!1852545 () Bool)

(declare-fun tp!525048 () Bool)

(declare-fun e!1184073 () Bool)

(assert (=> b!1852545 (= e!1184073 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 (t!172413 mapValue!8814))))) e!1184074 tp_is_empty!8499 setRes!11455 tp!525048))))

(declare-fun condSetEmpty!11455 () Bool)

(assert (=> b!1852545 (= condSetEmpty!11455 (= (_2!11330 (h!25940 (t!172413 mapValue!8814))) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> b!1852116 (= tp!524943 e!1184073)))

(declare-fun b!1852546 () Bool)

(declare-fun tp!525046 () Bool)

(assert (=> b!1852546 (= e!1184074 tp!525046)))

(assert (= b!1852545 b!1852546))

(assert (= (and b!1852545 condSetEmpty!11455) setIsEmpty!11455))

(assert (= (and b!1852545 (not condSetEmpty!11455)) setNonEmpty!11455))

(assert (= setNonEmpty!11455 b!1852544))

(assert (= (and b!1852116 ((_ is Cons!20539) (t!172413 mapValue!8814))) b!1852545))

(declare-fun m!2279429 () Bool)

(assert (=> setNonEmpty!11455 m!2279429))

(declare-fun m!2279431 () Bool)

(assert (=> b!1852545 m!2279431))

(declare-fun b!1852548 () Bool)

(declare-fun e!1184075 () Bool)

(declare-fun tp!525051 () Bool)

(declare-fun tp!525050 () Bool)

(assert (=> b!1852548 (= e!1184075 (and tp!525051 tp!525050))))

(declare-fun b!1852550 () Bool)

(declare-fun tp!525049 () Bool)

(declare-fun tp!525053 () Bool)

(assert (=> b!1852550 (= e!1184075 (and tp!525049 tp!525053))))

(declare-fun b!1852547 () Bool)

(assert (=> b!1852547 (= e!1184075 tp_is_empty!8499)))

(declare-fun b!1852549 () Bool)

(declare-fun tp!525052 () Bool)

(assert (=> b!1852549 (= e!1184075 tp!525052)))

(assert (=> b!1852069 (= tp!524879 e!1184075)))

(assert (= (and b!1852069 ((_ is ElementMatch!5041) (regOne!10594 (regex!3678 (h!25944 rules!1331))))) b!1852547))

(assert (= (and b!1852069 ((_ is Concat!8835) (regOne!10594 (regex!3678 (h!25944 rules!1331))))) b!1852548))

(assert (= (and b!1852069 ((_ is Star!5041) (regOne!10594 (regex!3678 (h!25944 rules!1331))))) b!1852549))

(assert (= (and b!1852069 ((_ is Union!5041) (regOne!10594 (regex!3678 (h!25944 rules!1331))))) b!1852550))

(declare-fun b!1852552 () Bool)

(declare-fun e!1184076 () Bool)

(declare-fun tp!525056 () Bool)

(declare-fun tp!525055 () Bool)

(assert (=> b!1852552 (= e!1184076 (and tp!525056 tp!525055))))

(declare-fun b!1852554 () Bool)

(declare-fun tp!525054 () Bool)

(declare-fun tp!525058 () Bool)

(assert (=> b!1852554 (= e!1184076 (and tp!525054 tp!525058))))

(declare-fun b!1852551 () Bool)

(assert (=> b!1852551 (= e!1184076 tp_is_empty!8499)))

(declare-fun b!1852553 () Bool)

(declare-fun tp!525057 () Bool)

(assert (=> b!1852553 (= e!1184076 tp!525057)))

(assert (=> b!1852069 (= tp!524878 e!1184076)))

(assert (= (and b!1852069 ((_ is ElementMatch!5041) (regTwo!10594 (regex!3678 (h!25944 rules!1331))))) b!1852551))

(assert (= (and b!1852069 ((_ is Concat!8835) (regTwo!10594 (regex!3678 (h!25944 rules!1331))))) b!1852552))

(assert (= (and b!1852069 ((_ is Star!5041) (regTwo!10594 (regex!3678 (h!25944 rules!1331))))) b!1852553))

(assert (= (and b!1852069 ((_ is Union!5041) (regTwo!10594 (regex!3678 (h!25944 rules!1331))))) b!1852554))

(declare-fun b!1852555 () Bool)

(declare-fun e!1184077 () Bool)

(declare-fun tp!525059 () Bool)

(declare-fun tp!525060 () Bool)

(assert (=> b!1852555 (= e!1184077 (and tp!525059 tp!525060))))

(assert (=> b!1852114 (= tp!524934 e!1184077)))

(assert (= (and b!1852114 ((_ is Cons!20538) (exprs!1451 setElem!11442))) b!1852555))

(declare-fun e!1184079 () Bool)

(declare-fun tp!525070 () Bool)

(declare-fun setRes!11457 () Bool)

(declare-fun setElem!11456 () Context!1902)

(declare-fun setNonEmpty!11456 () Bool)

(assert (=> setNonEmpty!11456 (= setRes!11457 (and tp!525070 (inv!26926 setElem!11456) e!1184079))))

(declare-fun mapValue!8823 () List!20612)

(declare-fun setRest!11456 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11456 (= (_2!11332 (h!25941 mapValue!8823)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11456 true) setRest!11456))))

(declare-fun b!1852556 () Bool)

(declare-fun tp!525069 () Bool)

(assert (=> b!1852556 (= e!1184079 tp!525069)))

(declare-fun b!1852557 () Bool)

(declare-fun e!1184078 () Bool)

(declare-fun tp!525064 () Bool)

(assert (=> b!1852557 (= e!1184078 tp!525064)))

(declare-fun setIsEmpty!11456 () Bool)

(assert (=> setIsEmpty!11456 setRes!11457))

(declare-fun tp!525068 () Bool)

(declare-fun setRes!11456 () Bool)

(declare-fun setElem!11457 () Context!1902)

(declare-fun setNonEmpty!11457 () Bool)

(assert (=> setNonEmpty!11457 (= setRes!11456 (and tp!525068 (inv!26926 setElem!11457) e!1184078))))

(declare-fun mapDefault!8823 () List!20612)

(declare-fun setRest!11457 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11457 (= (_2!11332 (h!25941 mapDefault!8823)) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11457 true) setRest!11457))))

(declare-fun b!1852558 () Bool)

(declare-fun e!1184083 () Bool)

(declare-fun tp!525071 () Bool)

(assert (=> b!1852558 (= e!1184083 tp!525071)))

(declare-fun condMapEmpty!8823 () Bool)

(assert (=> mapNonEmpty!8818 (= condMapEmpty!8823 (= mapRest!8818 ((as const (Array (_ BitVec 32) List!20612)) mapDefault!8823)))))

(declare-fun e!1184080 () Bool)

(declare-fun mapRes!8823 () Bool)

(assert (=> mapNonEmpty!8818 (= tp!524822 (and e!1184080 mapRes!8823))))

(declare-fun b!1852559 () Bool)

(declare-fun e!1184082 () Bool)

(declare-fun tp!525062 () Bool)

(assert (=> b!1852559 (= e!1184082 tp!525062)))

(declare-fun mapIsEmpty!8823 () Bool)

(assert (=> mapIsEmpty!8823 mapRes!8823))

(declare-fun mapNonEmpty!8823 () Bool)

(declare-fun tp!525067 () Bool)

(declare-fun e!1184081 () Bool)

(assert (=> mapNonEmpty!8823 (= mapRes!8823 (and tp!525067 e!1184081))))

(declare-fun mapRest!8823 () (Array (_ BitVec 32) List!20612))

(declare-fun mapKey!8823 () (_ BitVec 32))

(assert (=> mapNonEmpty!8823 (= mapRest!8818 (store mapRest!8823 mapKey!8823 mapValue!8823))))

(declare-fun tp!525065 () Bool)

(declare-fun b!1852560 () Bool)

(declare-fun tp!525063 () Bool)

(assert (=> b!1852560 (= e!1184080 (and tp!525063 (inv!26926 (_2!11331 (_1!11332 (h!25941 mapDefault!8823)))) e!1184082 tp_is_empty!8499 setRes!11456 tp!525065))))

(declare-fun condSetEmpty!11456 () Bool)

(assert (=> b!1852560 (= condSetEmpty!11456 (= (_2!11332 (h!25941 mapDefault!8823)) ((as const (Array Context!1902 Bool)) false)))))

(declare-fun tp!525066 () Bool)

(declare-fun tp!525061 () Bool)

(declare-fun b!1852561 () Bool)

(assert (=> b!1852561 (= e!1184081 (and tp!525061 (inv!26926 (_2!11331 (_1!11332 (h!25941 mapValue!8823)))) e!1184083 tp_is_empty!8499 setRes!11457 tp!525066))))

(declare-fun condSetEmpty!11457 () Bool)

(assert (=> b!1852561 (= condSetEmpty!11457 (= (_2!11332 (h!25941 mapValue!8823)) ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setIsEmpty!11457 () Bool)

(assert (=> setIsEmpty!11457 setRes!11456))

(assert (= (and mapNonEmpty!8818 condMapEmpty!8823) mapIsEmpty!8823))

(assert (= (and mapNonEmpty!8818 (not condMapEmpty!8823)) mapNonEmpty!8823))

(assert (= b!1852561 b!1852558))

(assert (= (and b!1852561 condSetEmpty!11457) setIsEmpty!11456))

(assert (= (and b!1852561 (not condSetEmpty!11457)) setNonEmpty!11456))

(assert (= setNonEmpty!11456 b!1852556))

(assert (= (and mapNonEmpty!8823 ((_ is Cons!20540) mapValue!8823)) b!1852561))

(assert (= b!1852560 b!1852559))

(assert (= (and b!1852560 condSetEmpty!11456) setIsEmpty!11457))

(assert (= (and b!1852560 (not condSetEmpty!11456)) setNonEmpty!11457))

(assert (= setNonEmpty!11457 b!1852557))

(assert (= (and mapNonEmpty!8818 ((_ is Cons!20540) mapDefault!8823)) b!1852560))

(declare-fun m!2279433 () Bool)

(assert (=> b!1852560 m!2279433))

(declare-fun m!2279435 () Bool)

(assert (=> setNonEmpty!11456 m!2279435))

(declare-fun m!2279437 () Bool)

(assert (=> b!1852561 m!2279437))

(declare-fun m!2279439 () Bool)

(assert (=> setNonEmpty!11457 m!2279439))

(declare-fun m!2279441 () Bool)

(assert (=> mapNonEmpty!8823 m!2279441))

(declare-fun b!1852562 () Bool)

(declare-fun e!1184084 () Bool)

(declare-fun tp!525072 () Bool)

(declare-fun tp!525073 () Bool)

(assert (=> b!1852562 (= e!1184084 (and tp!525072 tp!525073))))

(assert (=> b!1852113 (= tp!524935 e!1184084)))

(assert (= (and b!1852113 ((_ is Cons!20538) (exprs!1451 (_1!11329 (_1!11330 (h!25940 mapDefault!8821)))))) b!1852562))

(declare-fun b!1852564 () Bool)

(declare-fun e!1184085 () Bool)

(declare-fun tp!525076 () Bool)

(declare-fun tp!525075 () Bool)

(assert (=> b!1852564 (= e!1184085 (and tp!525076 tp!525075))))

(declare-fun b!1852566 () Bool)

(declare-fun tp!525074 () Bool)

(declare-fun tp!525078 () Bool)

(assert (=> b!1852566 (= e!1184085 (and tp!525074 tp!525078))))

(declare-fun b!1852563 () Bool)

(assert (=> b!1852563 (= e!1184085 tp_is_empty!8499)))

(declare-fun b!1852565 () Bool)

(declare-fun tp!525077 () Bool)

(assert (=> b!1852565 (= e!1184085 tp!525077)))

(assert (=> b!1852021 (= tp!524816 e!1184085)))

(assert (= (and b!1852021 ((_ is ElementMatch!5041) (_1!11331 (_1!11332 (h!25941 mapValue!8818))))) b!1852563))

(assert (= (and b!1852021 ((_ is Concat!8835) (_1!11331 (_1!11332 (h!25941 mapValue!8818))))) b!1852564))

(assert (= (and b!1852021 ((_ is Star!5041) (_1!11331 (_1!11332 (h!25941 mapValue!8818))))) b!1852565))

(assert (= (and b!1852021 ((_ is Union!5041) (_1!11331 (_1!11332 (h!25941 mapValue!8818))))) b!1852566))

(declare-fun setIsEmpty!11458 () Bool)

(declare-fun setRes!11458 () Bool)

(assert (=> setIsEmpty!11458 setRes!11458))

(declare-fun b!1852567 () Bool)

(declare-fun e!1184087 () Bool)

(declare-fun tp!525082 () Bool)

(assert (=> b!1852567 (= e!1184087 tp!525082)))

(declare-fun e!1184086 () Bool)

(assert (=> b!1852021 (= tp!524821 e!1184086)))

(declare-fun tp!525079 () Bool)

(declare-fun setElem!11458 () Context!1902)

(declare-fun e!1184088 () Bool)

(declare-fun setNonEmpty!11458 () Bool)

(assert (=> setNonEmpty!11458 (= setRes!11458 (and tp!525079 (inv!26926 setElem!11458) e!1184088))))

(declare-fun setRest!11458 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11458 (= (_2!11332 (h!25941 (t!172414 mapValue!8818))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11458 true) setRest!11458))))

(declare-fun b!1852568 () Bool)

(declare-fun tp!525081 () Bool)

(assert (=> b!1852568 (= e!1184088 tp!525081)))

(declare-fun tp!525083 () Bool)

(declare-fun tp!525080 () Bool)

(declare-fun b!1852569 () Bool)

(assert (=> b!1852569 (= e!1184086 (and tp!525083 (inv!26926 (_2!11331 (_1!11332 (h!25941 (t!172414 mapValue!8818))))) e!1184087 tp_is_empty!8499 setRes!11458 tp!525080))))

(declare-fun condSetEmpty!11458 () Bool)

(assert (=> b!1852569 (= condSetEmpty!11458 (= (_2!11332 (h!25941 (t!172414 mapValue!8818))) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852569 b!1852567))

(assert (= (and b!1852569 condSetEmpty!11458) setIsEmpty!11458))

(assert (= (and b!1852569 (not condSetEmpty!11458)) setNonEmpty!11458))

(assert (= setNonEmpty!11458 b!1852568))

(assert (= (and b!1852021 ((_ is Cons!20540) (t!172414 mapValue!8818))) b!1852569))

(declare-fun m!2279443 () Bool)

(assert (=> setNonEmpty!11458 m!2279443))

(declare-fun m!2279445 () Bool)

(assert (=> b!1852569 m!2279445))

(declare-fun condSetEmpty!11459 () Bool)

(assert (=> setNonEmpty!11443 (= condSetEmpty!11459 (= setRest!11443 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11459 () Bool)

(assert (=> setNonEmpty!11443 (= tp!524942 setRes!11459)))

(declare-fun setIsEmpty!11459 () Bool)

(assert (=> setIsEmpty!11459 setRes!11459))

(declare-fun setNonEmpty!11459 () Bool)

(declare-fun e!1184089 () Bool)

(declare-fun tp!525084 () Bool)

(declare-fun setElem!11459 () Context!1902)

(assert (=> setNonEmpty!11459 (= setRes!11459 (and tp!525084 (inv!26926 setElem!11459) e!1184089))))

(declare-fun setRest!11459 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11459 (= setRest!11443 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11459 true) setRest!11459))))

(declare-fun b!1852570 () Bool)

(declare-fun tp!525085 () Bool)

(assert (=> b!1852570 (= e!1184089 tp!525085)))

(assert (= (and setNonEmpty!11443 condSetEmpty!11459) setIsEmpty!11459))

(assert (= (and setNonEmpty!11443 (not condSetEmpty!11459)) setNonEmpty!11459))

(assert (= setNonEmpty!11459 b!1852570))

(declare-fun m!2279447 () Bool)

(assert (=> setNonEmpty!11459 m!2279447))

(declare-fun b!1852571 () Bool)

(declare-fun e!1184090 () Bool)

(declare-fun tp!525086 () Bool)

(declare-fun tp!525087 () Bool)

(assert (=> b!1852571 (= e!1184090 (and tp!525086 tp!525087))))

(assert (=> b!1852083 (= tp!524897 e!1184090)))

(assert (= (and b!1852083 ((_ is Cons!20538) (exprs!1451 (_2!11331 (_1!11332 (h!25941 mapDefault!8814)))))) b!1852571))

(declare-fun b!1852572 () Bool)

(declare-fun e!1184091 () Bool)

(declare-fun tp!525088 () Bool)

(assert (=> b!1852572 (= e!1184091 tp!525088)))

(declare-fun tp!525090 () Bool)

(declare-fun setElem!11460 () Context!1902)

(declare-fun setNonEmpty!11460 () Bool)

(declare-fun setRes!11460 () Bool)

(assert (=> setNonEmpty!11460 (= setRes!11460 (and tp!525090 (inv!26926 setElem!11460) e!1184091))))

(declare-fun setRest!11460 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11460 (= (_2!11330 (h!25940 (t!172413 mapDefault!8815))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11460 true) setRest!11460))))

(declare-fun setIsEmpty!11460 () Bool)

(assert (=> setIsEmpty!11460 setRes!11460))

(declare-fun e!1184093 () Bool)

(declare-fun tp!525091 () Bool)

(declare-fun e!1184092 () Bool)

(declare-fun b!1852573 () Bool)

(assert (=> b!1852573 (= e!1184092 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 (t!172413 mapDefault!8815))))) e!1184093 tp_is_empty!8499 setRes!11460 tp!525091))))

(declare-fun condSetEmpty!11460 () Bool)

(assert (=> b!1852573 (= condSetEmpty!11460 (= (_2!11330 (h!25940 (t!172413 mapDefault!8815))) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> b!1852087 (= tp!524902 e!1184092)))

(declare-fun b!1852574 () Bool)

(declare-fun tp!525089 () Bool)

(assert (=> b!1852574 (= e!1184093 tp!525089)))

(assert (= b!1852573 b!1852574))

(assert (= (and b!1852573 condSetEmpty!11460) setIsEmpty!11460))

(assert (= (and b!1852573 (not condSetEmpty!11460)) setNonEmpty!11460))

(assert (= setNonEmpty!11460 b!1852572))

(assert (= (and b!1852087 ((_ is Cons!20539) (t!172413 mapDefault!8815))) b!1852573))

(declare-fun m!2279449 () Bool)

(assert (=> setNonEmpty!11460 m!2279449))

(declare-fun m!2279451 () Bool)

(assert (=> b!1852573 m!2279451))

(declare-fun b!1852575 () Bool)

(declare-fun e!1184094 () Bool)

(declare-fun tp!525092 () Bool)

(declare-fun tp!525093 () Bool)

(assert (=> b!1852575 (= e!1184094 (and tp!525092 tp!525093))))

(assert (=> b!1852090 (= tp!524905 e!1184094)))

(assert (= (and b!1852090 ((_ is Cons!20538) (exprs!1451 setElem!11435))) b!1852575))

(declare-fun b!1852576 () Bool)

(declare-fun e!1184095 () Bool)

(declare-fun tp!525094 () Bool)

(declare-fun tp!525095 () Bool)

(assert (=> b!1852576 (= e!1184095 (and tp!525094 tp!525095))))

(assert (=> b!1852093 (= tp!524910 e!1184095)))

(assert (= (and b!1852093 ((_ is Cons!20538) (exprs!1451 setElem!11436))) b!1852576))

(declare-fun b!1852577 () Bool)

(declare-fun e!1184096 () Bool)

(declare-fun tp!525096 () Bool)

(assert (=> b!1852577 (= e!1184096 tp!525096)))

(declare-fun setNonEmpty!11461 () Bool)

(declare-fun tp!525098 () Bool)

(declare-fun setElem!11461 () Context!1902)

(declare-fun setRes!11461 () Bool)

(assert (=> setNonEmpty!11461 (= setRes!11461 (and tp!525098 (inv!26926 setElem!11461) e!1184096))))

(declare-fun setRest!11461 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11461 (= (_2!11330 (h!25940 (t!172413 mapValue!8821))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11461 true) setRest!11461))))

(declare-fun setIsEmpty!11461 () Bool)

(assert (=> setIsEmpty!11461 setRes!11461))

(declare-fun e!1184097 () Bool)

(declare-fun tp!525099 () Bool)

(declare-fun b!1852578 () Bool)

(declare-fun e!1184098 () Bool)

(assert (=> b!1852578 (= e!1184097 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 (t!172413 mapValue!8821))))) e!1184098 tp_is_empty!8499 setRes!11461 tp!525099))))

(declare-fun condSetEmpty!11461 () Bool)

(assert (=> b!1852578 (= condSetEmpty!11461 (= (_2!11330 (h!25940 (t!172413 mapValue!8821))) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> b!1852111 (= tp!524932 e!1184097)))

(declare-fun b!1852579 () Bool)

(declare-fun tp!525097 () Bool)

(assert (=> b!1852579 (= e!1184098 tp!525097)))

(assert (= b!1852578 b!1852579))

(assert (= (and b!1852578 condSetEmpty!11461) setIsEmpty!11461))

(assert (= (and b!1852578 (not condSetEmpty!11461)) setNonEmpty!11461))

(assert (= setNonEmpty!11461 b!1852577))

(assert (= (and b!1852111 ((_ is Cons!20539) (t!172413 mapValue!8821))) b!1852578))

(declare-fun m!2279453 () Bool)

(assert (=> setNonEmpty!11461 m!2279453))

(declare-fun m!2279455 () Bool)

(assert (=> b!1852578 m!2279455))

(declare-fun b!1852580 () Bool)

(declare-fun e!1184099 () Bool)

(declare-fun tp!525100 () Bool)

(declare-fun tp!525101 () Bool)

(assert (=> b!1852580 (= e!1184099 (and tp!525100 tp!525101))))

(assert (=> b!1852017 (= tp!524819 e!1184099)))

(assert (= (and b!1852017 ((_ is Cons!20538) (exprs!1451 setElem!11425))) b!1852580))

(declare-fun b!1852581 () Bool)

(declare-fun e!1184100 () Bool)

(declare-fun tp!525102 () Bool)

(declare-fun tp!525103 () Bool)

(assert (=> b!1852581 (= e!1184100 (and tp!525102 tp!525103))))

(assert (=> b!1852054 (= tp!524860 e!1184100)))

(assert (= (and b!1852054 ((_ is Cons!20538) (exprs!1451 (_1!11329 (_1!11330 (h!25940 (zeroValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441)))))))))))) b!1852581))

(declare-fun condSetEmpty!11462 () Bool)

(assert (=> setNonEmpty!11433 (= condSetEmpty!11462 (= setRest!11433 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11462 () Bool)

(assert (=> setNonEmpty!11433 (= tp!524894 setRes!11462)))

(declare-fun setIsEmpty!11462 () Bool)

(assert (=> setIsEmpty!11462 setRes!11462))

(declare-fun tp!525104 () Bool)

(declare-fun e!1184101 () Bool)

(declare-fun setNonEmpty!11462 () Bool)

(declare-fun setElem!11462 () Context!1902)

(assert (=> setNonEmpty!11462 (= setRes!11462 (and tp!525104 (inv!26926 setElem!11462) e!1184101))))

(declare-fun setRest!11462 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11462 (= setRest!11433 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11462 true) setRest!11462))))

(declare-fun b!1852582 () Bool)

(declare-fun tp!525105 () Bool)

(assert (=> b!1852582 (= e!1184101 tp!525105)))

(assert (= (and setNonEmpty!11433 condSetEmpty!11462) setIsEmpty!11462))

(assert (= (and setNonEmpty!11433 (not condSetEmpty!11462)) setNonEmpty!11462))

(assert (= setNonEmpty!11462 b!1852582))

(declare-fun m!2279457 () Bool)

(assert (=> setNonEmpty!11462 m!2279457))

(declare-fun condSetEmpty!11463 () Bool)

(assert (=> setNonEmpty!11434 (= condSetEmpty!11463 (= setRest!11434 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11463 () Bool)

(assert (=> setNonEmpty!11434 (= tp!524901 setRes!11463)))

(declare-fun setIsEmpty!11463 () Bool)

(assert (=> setIsEmpty!11463 setRes!11463))

(declare-fun setElem!11463 () Context!1902)

(declare-fun setNonEmpty!11463 () Bool)

(declare-fun e!1184102 () Bool)

(declare-fun tp!525106 () Bool)

(assert (=> setNonEmpty!11463 (= setRes!11463 (and tp!525106 (inv!26926 setElem!11463) e!1184102))))

(declare-fun setRest!11463 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11463 (= setRest!11434 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11463 true) setRest!11463))))

(declare-fun b!1852583 () Bool)

(declare-fun tp!525107 () Bool)

(assert (=> b!1852583 (= e!1184102 tp!525107)))

(assert (= (and setNonEmpty!11434 condSetEmpty!11463) setIsEmpty!11463))

(assert (= (and setNonEmpty!11434 (not condSetEmpty!11463)) setNonEmpty!11463))

(assert (= setNonEmpty!11463 b!1852583))

(declare-fun m!2279459 () Bool)

(assert (=> setNonEmpty!11463 m!2279459))

(declare-fun b!1852584 () Bool)

(declare-fun e!1184103 () Bool)

(declare-fun tp!525108 () Bool)

(declare-fun tp!525109 () Bool)

(assert (=> b!1852584 (= e!1184103 (and tp!525108 tp!525109))))

(assert (=> b!1852019 (= tp!524817 e!1184103)))

(assert (= (and b!1852019 ((_ is Cons!20538) (exprs!1451 (_2!11331 (_1!11332 (h!25941 mapDefault!8818)))))) b!1852584))

(declare-fun b!1852586 () Bool)

(declare-fun e!1184104 () Bool)

(declare-fun tp!525112 () Bool)

(declare-fun tp!525111 () Bool)

(assert (=> b!1852586 (= e!1184104 (and tp!525112 tp!525111))))

(declare-fun b!1852588 () Bool)

(declare-fun tp!525110 () Bool)

(declare-fun tp!525114 () Bool)

(assert (=> b!1852588 (= e!1184104 (and tp!525110 tp!525114))))

(declare-fun b!1852585 () Bool)

(assert (=> b!1852585 (= e!1184104 tp_is_empty!8499)))

(declare-fun b!1852587 () Bool)

(declare-fun tp!525113 () Bool)

(assert (=> b!1852587 (= e!1184104 tp!525113)))

(assert (=> b!1852085 (= tp!524898 e!1184104)))

(assert (= (and b!1852085 ((_ is ElementMatch!5041) (_1!11331 (_1!11332 (h!25941 mapDefault!8814))))) b!1852585))

(assert (= (and b!1852085 ((_ is Concat!8835) (_1!11331 (_1!11332 (h!25941 mapDefault!8814))))) b!1852586))

(assert (= (and b!1852085 ((_ is Star!5041) (_1!11331 (_1!11332 (h!25941 mapDefault!8814))))) b!1852587))

(assert (= (and b!1852085 ((_ is Union!5041) (_1!11331 (_1!11332 (h!25941 mapDefault!8814))))) b!1852588))

(declare-fun setIsEmpty!11464 () Bool)

(declare-fun setRes!11464 () Bool)

(assert (=> setIsEmpty!11464 setRes!11464))

(declare-fun b!1852589 () Bool)

(declare-fun e!1184106 () Bool)

(declare-fun tp!525118 () Bool)

(assert (=> b!1852589 (= e!1184106 tp!525118)))

(declare-fun e!1184105 () Bool)

(assert (=> b!1852085 (= tp!524895 e!1184105)))

(declare-fun setElem!11464 () Context!1902)

(declare-fun tp!525115 () Bool)

(declare-fun e!1184107 () Bool)

(declare-fun setNonEmpty!11464 () Bool)

(assert (=> setNonEmpty!11464 (= setRes!11464 (and tp!525115 (inv!26926 setElem!11464) e!1184107))))

(declare-fun setRest!11464 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11464 (= (_2!11332 (h!25941 (t!172414 mapDefault!8814))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11464 true) setRest!11464))))

(declare-fun b!1852590 () Bool)

(declare-fun tp!525117 () Bool)

(assert (=> b!1852590 (= e!1184107 tp!525117)))

(declare-fun b!1852591 () Bool)

(declare-fun tp!525116 () Bool)

(declare-fun tp!525119 () Bool)

(assert (=> b!1852591 (= e!1184105 (and tp!525119 (inv!26926 (_2!11331 (_1!11332 (h!25941 (t!172414 mapDefault!8814))))) e!1184106 tp_is_empty!8499 setRes!11464 tp!525116))))

(declare-fun condSetEmpty!11464 () Bool)

(assert (=> b!1852591 (= condSetEmpty!11464 (= (_2!11332 (h!25941 (t!172414 mapDefault!8814))) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852591 b!1852589))

(assert (= (and b!1852591 condSetEmpty!11464) setIsEmpty!11464))

(assert (= (and b!1852591 (not condSetEmpty!11464)) setNonEmpty!11464))

(assert (= setNonEmpty!11464 b!1852590))

(assert (= (and b!1852085 ((_ is Cons!20540) (t!172414 mapDefault!8814))) b!1852591))

(declare-fun m!2279461 () Bool)

(assert (=> setNonEmpty!11464 m!2279461))

(declare-fun m!2279463 () Bool)

(assert (=> b!1852591 m!2279463))

(declare-fun condSetEmpty!11465 () Bool)

(assert (=> setNonEmpty!11425 (= condSetEmpty!11465 (= setRest!11425 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11465 () Bool)

(assert (=> setNonEmpty!11425 (= tp!524823 setRes!11465)))

(declare-fun setIsEmpty!11465 () Bool)

(assert (=> setIsEmpty!11465 setRes!11465))

(declare-fun e!1184108 () Bool)

(declare-fun setNonEmpty!11465 () Bool)

(declare-fun setElem!11465 () Context!1902)

(declare-fun tp!525120 () Bool)

(assert (=> setNonEmpty!11465 (= setRes!11465 (and tp!525120 (inv!26926 setElem!11465) e!1184108))))

(declare-fun setRest!11465 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11465 (= setRest!11425 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11465 true) setRest!11465))))

(declare-fun b!1852592 () Bool)

(declare-fun tp!525121 () Bool)

(assert (=> b!1852592 (= e!1184108 tp!525121)))

(assert (= (and setNonEmpty!11425 condSetEmpty!11465) setIsEmpty!11465))

(assert (= (and setNonEmpty!11425 (not condSetEmpty!11465)) setNonEmpty!11465))

(assert (= setNonEmpty!11465 b!1852592))

(declare-fun m!2279465 () Bool)

(assert (=> setNonEmpty!11465 m!2279465))

(declare-fun b!1852593 () Bool)

(declare-fun e!1184109 () Bool)

(declare-fun tp!525122 () Bool)

(declare-fun tp!525123 () Bool)

(assert (=> b!1852593 (= e!1184109 (and tp!525122 tp!525123))))

(assert (=> b!1852052 (= tp!524859 e!1184109)))

(assert (= (and b!1852052 ((_ is Cons!20538) (exprs!1451 setElem!11431))) b!1852593))

(declare-fun condSetEmpty!11466 () Bool)

(assert (=> setNonEmpty!11432 (= condSetEmpty!11466 (= setRest!11432 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11466 () Bool)

(assert (=> setNonEmpty!11432 (= tp!524865 setRes!11466)))

(declare-fun setIsEmpty!11466 () Bool)

(assert (=> setIsEmpty!11466 setRes!11466))

(declare-fun setNonEmpty!11466 () Bool)

(declare-fun tp!525124 () Bool)

(declare-fun setElem!11466 () Context!1902)

(declare-fun e!1184110 () Bool)

(assert (=> setNonEmpty!11466 (= setRes!11466 (and tp!525124 (inv!26926 setElem!11466) e!1184110))))

(declare-fun setRest!11466 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11466 (= setRest!11432 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11466 true) setRest!11466))))

(declare-fun b!1852594 () Bool)

(declare-fun tp!525125 () Bool)

(assert (=> b!1852594 (= e!1184110 tp!525125)))

(assert (= (and setNonEmpty!11432 condSetEmpty!11466) setIsEmpty!11466))

(assert (= (and setNonEmpty!11432 (not condSetEmpty!11466)) setNonEmpty!11466))

(assert (= setNonEmpty!11466 b!1852594))

(declare-fun m!2279467 () Bool)

(assert (=> setNonEmpty!11466 m!2279467))

(declare-fun b!1852596 () Bool)

(declare-fun e!1184111 () Bool)

(declare-fun tp!525128 () Bool)

(declare-fun tp!525127 () Bool)

(assert (=> b!1852596 (= e!1184111 (and tp!525128 tp!525127))))

(declare-fun b!1852598 () Bool)

(declare-fun tp!525126 () Bool)

(declare-fun tp!525130 () Bool)

(assert (=> b!1852598 (= e!1184111 (and tp!525126 tp!525130))))

(declare-fun b!1852595 () Bool)

(assert (=> b!1852595 (= e!1184111 tp_is_empty!8499)))

(declare-fun b!1852597 () Bool)

(declare-fun tp!525129 () Bool)

(assert (=> b!1852597 (= e!1184111 tp!525129)))

(assert (=> b!1852070 (= tp!524880 e!1184111)))

(assert (= (and b!1852070 ((_ is ElementMatch!5041) (reg!5370 (regex!3678 (h!25944 rules!1331))))) b!1852595))

(assert (= (and b!1852070 ((_ is Concat!8835) (reg!5370 (regex!3678 (h!25944 rules!1331))))) b!1852596))

(assert (= (and b!1852070 ((_ is Star!5041) (reg!5370 (regex!3678 (h!25944 rules!1331))))) b!1852597))

(assert (= (and b!1852070 ((_ is Union!5041) (reg!5370 (regex!3678 (h!25944 rules!1331))))) b!1852598))

(declare-fun b!1852613 () Bool)

(declare-fun e!1184129 () Bool)

(declare-fun e!1184128 () Bool)

(assert (=> b!1852613 (= e!1184129 e!1184128)))

(declare-fun b!1852614 () Bool)

(declare-fun e!1184124 () Bool)

(declare-fun e!1184127 () Bool)

(assert (=> b!1852614 (= e!1184124 e!1184127)))

(declare-fun b!1852615 () Bool)

(declare-fun lt!716256 () MutLongMap!1893)

(assert (=> b!1852615 (= e!1184128 ((_ is LongMap!1893) lt!716256))))

(assert (=> b!1852615 (= lt!716256 (v!26022 (underlying!4000 (cache!2218 (_2!11334 (lexTailRecMem!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794) cacheUp!441 cacheDown!454))))))))

(declare-fun b!1852617 () Bool)

(declare-fun e!1184125 () Bool)

(assert (=> b!1852617 (= e!1184125 e!1184124)))

(declare-fun b!1852618 () Bool)

(declare-fun lt!716255 () MutLongMap!1894)

(assert (=> b!1852618 (= e!1184127 ((_ is LongMap!1894) lt!716255))))

(assert (=> b!1852618 (= lt!716255 (v!26024 (underlying!4002 (cache!2219 (_3!1425 (lexTailRecMem!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794) cacheUp!441 cacheDown!454))))))))

(declare-fun b!1852616 () Bool)

(declare-fun e!1184126 () Bool)

(assert (=> b!1852616 (= e!1184126 e!1184129)))

(assert (=> d!565983 (= true (and e!1184126 e!1184125))))

(assert (= b!1852613 b!1852615))

(assert (= (and b!1852616 ((_ is HashMap!1837) (cache!2218 (_2!11334 (lexTailRecMem!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794) cacheUp!441 cacheDown!454))))) b!1852613))

(assert (= d!565983 b!1852616))

(assert (= b!1852614 b!1852618))

(assert (= (and b!1852617 ((_ is HashMap!1838) (cache!2219 (_3!1425 (lexTailRecMem!8 thiss!12117 rules!1331 input!736 (BalanceConc!13509 Empty!6793) input!736 (BalanceConc!13511 Empty!6794) cacheUp!441 cacheDown!454))))) b!1852614))

(assert (= d!565983 b!1852617))

(declare-fun condSetEmpty!11467 () Bool)

(assert (=> setNonEmpty!11441 (= condSetEmpty!11467 (= setRest!11442 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11467 () Bool)

(assert (=> setNonEmpty!11441 (= tp!524937 setRes!11467)))

(declare-fun setIsEmpty!11467 () Bool)

(assert (=> setIsEmpty!11467 setRes!11467))

(declare-fun e!1184130 () Bool)

(declare-fun tp!525131 () Bool)

(declare-fun setElem!11467 () Context!1902)

(declare-fun setNonEmpty!11467 () Bool)

(assert (=> setNonEmpty!11467 (= setRes!11467 (and tp!525131 (inv!26926 setElem!11467) e!1184130))))

(declare-fun setRest!11467 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11467 (= setRest!11442 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11467 true) setRest!11467))))

(declare-fun b!1852619 () Bool)

(declare-fun tp!525132 () Bool)

(assert (=> b!1852619 (= e!1184130 tp!525132)))

(assert (= (and setNonEmpty!11441 condSetEmpty!11467) setIsEmpty!11467))

(assert (= (and setNonEmpty!11441 (not condSetEmpty!11467)) setNonEmpty!11467))

(assert (= setNonEmpty!11467 b!1852619))

(declare-fun m!2279469 () Bool)

(assert (=> setNonEmpty!11467 m!2279469))

(declare-fun condSetEmpty!11468 () Bool)

(assert (=> setNonEmpty!11424 (= condSetEmpty!11468 (= setRest!11424 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11468 () Bool)

(assert (=> setNonEmpty!11424 (= tp!524825 setRes!11468)))

(declare-fun setIsEmpty!11468 () Bool)

(assert (=> setIsEmpty!11468 setRes!11468))

(declare-fun setElem!11468 () Context!1902)

(declare-fun e!1184131 () Bool)

(declare-fun tp!525133 () Bool)

(declare-fun setNonEmpty!11468 () Bool)

(assert (=> setNonEmpty!11468 (= setRes!11468 (and tp!525133 (inv!26926 setElem!11468) e!1184131))))

(declare-fun setRest!11468 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11468 (= setRest!11424 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11468 true) setRest!11468))))

(declare-fun b!1852620 () Bool)

(declare-fun tp!525134 () Bool)

(assert (=> b!1852620 (= e!1184131 tp!525134)))

(assert (= (and setNonEmpty!11424 condSetEmpty!11468) setIsEmpty!11468))

(assert (= (and setNonEmpty!11424 (not condSetEmpty!11468)) setNonEmpty!11468))

(assert (= setNonEmpty!11468 b!1852620))

(declare-fun m!2279471 () Bool)

(assert (=> setNonEmpty!11468 m!2279471))

(declare-fun b!1852621 () Bool)

(declare-fun e!1184132 () Bool)

(declare-fun tp!525135 () Bool)

(assert (=> b!1852621 (= e!1184132 tp!525135)))

(declare-fun tp!525137 () Bool)

(declare-fun setRes!11469 () Bool)

(declare-fun setNonEmpty!11469 () Bool)

(declare-fun setElem!11469 () Context!1902)

(assert (=> setNonEmpty!11469 (= setRes!11469 (and tp!525137 (inv!26926 setElem!11469) e!1184132))))

(declare-fun setRest!11469 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11469 (= (_2!11330 (h!25940 (t!172413 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11469 true) setRest!11469))))

(declare-fun setIsEmpty!11469 () Bool)

(assert (=> setIsEmpty!11469 setRes!11469))

(declare-fun b!1852622 () Bool)

(declare-fun e!1184133 () Bool)

(declare-fun tp!525138 () Bool)

(declare-fun e!1184134 () Bool)

(assert (=> b!1852622 (= e!1184133 (and (inv!26926 (_1!11329 (_1!11330 (h!25940 (t!172413 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))))))) e!1184134 tp_is_empty!8499 setRes!11469 tp!525138))))

(declare-fun condSetEmpty!11469 () Bool)

(assert (=> b!1852622 (= condSetEmpty!11469 (= (_2!11330 (h!25940 (t!172413 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))))) ((as const (Array Context!1902 Bool)) false)))))

(assert (=> b!1852056 (= tp!524866 e!1184133)))

(declare-fun b!1852623 () Bool)

(declare-fun tp!525136 () Bool)

(assert (=> b!1852623 (= e!1184134 tp!525136)))

(assert (= b!1852622 b!1852623))

(assert (= (and b!1852622 condSetEmpty!11469) setIsEmpty!11469))

(assert (= (and b!1852622 (not condSetEmpty!11469)) setNonEmpty!11469))

(assert (= setNonEmpty!11469 b!1852621))

(assert (= (and b!1852056 ((_ is Cons!20539) (t!172413 (minValue!2150 (v!26021 (underlying!3999 (v!26022 (underlying!4000 (cache!2218 cacheUp!441))))))))) b!1852622))

(declare-fun m!2279473 () Bool)

(assert (=> setNonEmpty!11469 m!2279473))

(declare-fun m!2279475 () Bool)

(assert (=> b!1852622 m!2279475))

(declare-fun b!1852624 () Bool)

(declare-fun e!1184135 () Bool)

(declare-fun tp!525139 () Bool)

(declare-fun tp!525140 () Bool)

(assert (=> b!1852624 (= e!1184135 (and tp!525139 tp!525140))))

(assert (=> b!1852109 (= tp!524939 e!1184135)))

(assert (= (and b!1852109 ((_ is Cons!20538) (exprs!1451 (_1!11329 (_1!11330 (h!25940 mapValue!8821)))))) b!1852624))

(declare-fun b!1852626 () Bool)

(declare-fun e!1184136 () Bool)

(declare-fun tp!525143 () Bool)

(declare-fun tp!525142 () Bool)

(assert (=> b!1852626 (= e!1184136 (and tp!525143 tp!525142))))

(declare-fun b!1852628 () Bool)

(declare-fun tp!525141 () Bool)

(declare-fun tp!525145 () Bool)

(assert (=> b!1852628 (= e!1184136 (and tp!525141 tp!525145))))

(declare-fun b!1852625 () Bool)

(assert (=> b!1852625 (= e!1184136 tp_is_empty!8499)))

(declare-fun b!1852627 () Bool)

(declare-fun tp!525144 () Bool)

(assert (=> b!1852627 (= e!1184136 tp!525144)))

(assert (=> b!1852032 (= tp!524841 e!1184136)))

(assert (= (and b!1852032 ((_ is ElementMatch!5041) (_1!11331 (_1!11332 (h!25941 mapValue!8815))))) b!1852625))

(assert (= (and b!1852032 ((_ is Concat!8835) (_1!11331 (_1!11332 (h!25941 mapValue!8815))))) b!1852626))

(assert (= (and b!1852032 ((_ is Star!5041) (_1!11331 (_1!11332 (h!25941 mapValue!8815))))) b!1852627))

(assert (= (and b!1852032 ((_ is Union!5041) (_1!11331 (_1!11332 (h!25941 mapValue!8815))))) b!1852628))

(declare-fun setIsEmpty!11470 () Bool)

(declare-fun setRes!11470 () Bool)

(assert (=> setIsEmpty!11470 setRes!11470))

(declare-fun b!1852629 () Bool)

(declare-fun e!1184138 () Bool)

(declare-fun tp!525149 () Bool)

(assert (=> b!1852629 (= e!1184138 tp!525149)))

(declare-fun e!1184137 () Bool)

(assert (=> b!1852032 (= tp!524838 e!1184137)))

(declare-fun setElem!11470 () Context!1902)

(declare-fun setNonEmpty!11470 () Bool)

(declare-fun tp!525146 () Bool)

(declare-fun e!1184139 () Bool)

(assert (=> setNonEmpty!11470 (= setRes!11470 (and tp!525146 (inv!26926 setElem!11470) e!1184139))))

(declare-fun setRest!11470 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11470 (= (_2!11332 (h!25941 (t!172414 mapValue!8815))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11470 true) setRest!11470))))

(declare-fun b!1852630 () Bool)

(declare-fun tp!525148 () Bool)

(assert (=> b!1852630 (= e!1184139 tp!525148)))

(declare-fun b!1852631 () Bool)

(declare-fun tp!525147 () Bool)

(declare-fun tp!525150 () Bool)

(assert (=> b!1852631 (= e!1184137 (and tp!525150 (inv!26926 (_2!11331 (_1!11332 (h!25941 (t!172414 mapValue!8815))))) e!1184138 tp_is_empty!8499 setRes!11470 tp!525147))))

(declare-fun condSetEmpty!11470 () Bool)

(assert (=> b!1852631 (= condSetEmpty!11470 (= (_2!11332 (h!25941 (t!172414 mapValue!8815))) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852631 b!1852629))

(assert (= (and b!1852631 condSetEmpty!11470) setIsEmpty!11470))

(assert (= (and b!1852631 (not condSetEmpty!11470)) setNonEmpty!11470))

(assert (= setNonEmpty!11470 b!1852630))

(assert (= (and b!1852032 ((_ is Cons!20540) (t!172414 mapValue!8815))) b!1852631))

(declare-fun m!2279477 () Bool)

(assert (=> setNonEmpty!11470 m!2279477))

(declare-fun m!2279479 () Bool)

(assert (=> b!1852631 m!2279479))

(declare-fun b!1852634 () Bool)

(declare-fun b_free!51879 () Bool)

(declare-fun b_next!52583 () Bool)

(assert (=> b!1852634 (= b_free!51879 (not b_next!52583))))

(declare-fun tp!525153 () Bool)

(declare-fun b_and!144121 () Bool)

(assert (=> b!1852634 (= tp!525153 b_and!144121)))

(declare-fun b_free!51881 () Bool)

(declare-fun b_next!52585 () Bool)

(assert (=> b!1852634 (= b_free!51881 (not b_next!52585))))

(declare-fun tb!112905 () Bool)

(declare-fun t!172432 () Bool)

(assert (=> (and b!1852634 (= (toChars!5110 (transformation!3678 (h!25944 (t!172417 (t!172417 rules!1331))))) (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 (_1!11337 lt!715881))))))) t!172432) tb!112905))

(declare-fun result!136152 () Bool)

(assert (= result!136152 result!136134))

(assert (=> d!566069 t!172432))

(declare-fun t!172434 () Bool)

(declare-fun tb!112907 () Bool)

(assert (=> (and b!1852634 (= (toChars!5110 (transformation!3678 (h!25944 (t!172417 (t!172417 rules!1331))))) (toChars!5110 (transformation!3678 (rule!5871 (_1!11336 (v!26025 lt!715877)))))) t!172434) tb!112907))

(declare-fun result!136154 () Bool)

(assert (= result!136154 result!136140))

(assert (=> d!566125 t!172434))

(declare-fun b_and!144123 () Bool)

(declare-fun tp!525154 () Bool)

(assert (=> b!1852634 (= tp!525154 (and (=> t!172432 result!136152) (=> t!172434 result!136154) b_and!144123))))

(declare-fun e!1184140 () Bool)

(assert (=> b!1852634 (= e!1184140 (and tp!525153 tp!525154))))

(declare-fun tp!525152 () Bool)

(declare-fun e!1184143 () Bool)

(declare-fun b!1852633 () Bool)

(assert (=> b!1852633 (= e!1184143 (and tp!525152 (inv!26913 (tag!4092 (h!25944 (t!172417 (t!172417 rules!1331))))) (inv!26923 (transformation!3678 (h!25944 (t!172417 (t!172417 rules!1331))))) e!1184140))))

(declare-fun b!1852632 () Bool)

(declare-fun e!1184142 () Bool)

(declare-fun tp!525151 () Bool)

(assert (=> b!1852632 (= e!1184142 (and e!1184143 tp!525151))))

(assert (=> b!1852080 (= tp!524890 e!1184142)))

(assert (= b!1852633 b!1852634))

(assert (= b!1852632 b!1852633))

(assert (= (and b!1852080 ((_ is Cons!20543) (t!172417 (t!172417 rules!1331)))) b!1852632))

(declare-fun m!2279481 () Bool)

(assert (=> b!1852633 m!2279481))

(declare-fun m!2279483 () Bool)

(assert (=> b!1852633 m!2279483))

(declare-fun b!1852635 () Bool)

(declare-fun e!1184144 () Bool)

(declare-fun tp!525155 () Bool)

(declare-fun tp!525156 () Bool)

(assert (=> b!1852635 (= e!1184144 (and tp!525155 tp!525156))))

(assert (=> b!1852117 (= tp!524941 e!1184144)))

(assert (= (and b!1852117 ((_ is Cons!20538) (exprs!1451 (_1!11329 (_1!11330 (h!25940 mapValue!8814)))))) b!1852635))

(declare-fun b!1852636 () Bool)

(declare-fun e!1184145 () Bool)

(declare-fun tp!525157 () Bool)

(declare-fun tp!525158 () Bool)

(assert (=> b!1852636 (= e!1184145 (and tp!525157 tp!525158))))

(assert (=> b!1852030 (= tp!524840 e!1184145)))

(assert (= (and b!1852030 ((_ is Cons!20538) (exprs!1451 (_2!11331 (_1!11332 (h!25941 mapValue!8815)))))) b!1852636))

(declare-fun condSetEmpty!11471 () Bool)

(assert (=> setNonEmpty!11442 (= condSetEmpty!11471 (= setRest!11441 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11471 () Bool)

(assert (=> setNonEmpty!11442 (= tp!524938 setRes!11471)))

(declare-fun setIsEmpty!11471 () Bool)

(assert (=> setIsEmpty!11471 setRes!11471))

(declare-fun e!1184146 () Bool)

(declare-fun setNonEmpty!11471 () Bool)

(declare-fun tp!525159 () Bool)

(declare-fun setElem!11471 () Context!1902)

(assert (=> setNonEmpty!11471 (= setRes!11471 (and tp!525159 (inv!26926 setElem!11471) e!1184146))))

(declare-fun setRest!11471 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11471 (= setRest!11441 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11471 true) setRest!11471))))

(declare-fun b!1852637 () Bool)

(declare-fun tp!525160 () Bool)

(assert (=> b!1852637 (= e!1184146 tp!525160)))

(assert (= (and setNonEmpty!11442 condSetEmpty!11471) setIsEmpty!11471))

(assert (= (and setNonEmpty!11442 (not condSetEmpty!11471)) setNonEmpty!11471))

(assert (= setNonEmpty!11471 b!1852637))

(declare-fun m!2279485 () Bool)

(assert (=> setNonEmpty!11471 m!2279485))

(declare-fun condSetEmpty!11472 () Bool)

(assert (=> setNonEmpty!11428 (= condSetEmpty!11472 (= setRest!11428 ((as const (Array Context!1902 Bool)) false)))))

(declare-fun setRes!11472 () Bool)

(assert (=> setNonEmpty!11428 (= tp!524837 setRes!11472)))

(declare-fun setIsEmpty!11472 () Bool)

(assert (=> setIsEmpty!11472 setRes!11472))

(declare-fun setNonEmpty!11472 () Bool)

(declare-fun tp!525161 () Bool)

(declare-fun e!1184147 () Bool)

(declare-fun setElem!11472 () Context!1902)

(assert (=> setNonEmpty!11472 (= setRes!11472 (and tp!525161 (inv!26926 setElem!11472) e!1184147))))

(declare-fun setRest!11472 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11472 (= setRest!11428 ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11472 true) setRest!11472))))

(declare-fun b!1852638 () Bool)

(declare-fun tp!525162 () Bool)

(assert (=> b!1852638 (= e!1184147 tp!525162)))

(assert (= (and setNonEmpty!11428 condSetEmpty!11472) setIsEmpty!11472))

(assert (= (and setNonEmpty!11428 (not condSetEmpty!11472)) setNonEmpty!11472))

(assert (= setNonEmpty!11472 b!1852638))

(declare-fun m!2279487 () Bool)

(assert (=> setNonEmpty!11472 m!2279487))

(declare-fun b!1852640 () Bool)

(declare-fun e!1184148 () Bool)

(declare-fun tp!525165 () Bool)

(declare-fun tp!525164 () Bool)

(assert (=> b!1852640 (= e!1184148 (and tp!525165 tp!525164))))

(declare-fun b!1852642 () Bool)

(declare-fun tp!525163 () Bool)

(declare-fun tp!525167 () Bool)

(assert (=> b!1852642 (= e!1184148 (and tp!525163 tp!525167))))

(declare-fun b!1852639 () Bool)

(assert (=> b!1852639 (= e!1184148 tp_is_empty!8499)))

(declare-fun b!1852641 () Bool)

(declare-fun tp!525166 () Bool)

(assert (=> b!1852641 (= e!1184148 tp!525166)))

(assert (=> b!1852020 (= tp!524818 e!1184148)))

(assert (= (and b!1852020 ((_ is ElementMatch!5041) (_1!11331 (_1!11332 (h!25941 mapDefault!8818))))) b!1852639))

(assert (= (and b!1852020 ((_ is Concat!8835) (_1!11331 (_1!11332 (h!25941 mapDefault!8818))))) b!1852640))

(assert (= (and b!1852020 ((_ is Star!5041) (_1!11331 (_1!11332 (h!25941 mapDefault!8818))))) b!1852641))

(assert (= (and b!1852020 ((_ is Union!5041) (_1!11331 (_1!11332 (h!25941 mapDefault!8818))))) b!1852642))

(declare-fun setIsEmpty!11473 () Bool)

(declare-fun setRes!11473 () Bool)

(assert (=> setIsEmpty!11473 setRes!11473))

(declare-fun b!1852643 () Bool)

(declare-fun e!1184150 () Bool)

(declare-fun tp!525171 () Bool)

(assert (=> b!1852643 (= e!1184150 tp!525171)))

(declare-fun e!1184149 () Bool)

(assert (=> b!1852020 (= tp!524820 e!1184149)))

(declare-fun setNonEmpty!11473 () Bool)

(declare-fun e!1184151 () Bool)

(declare-fun tp!525168 () Bool)

(declare-fun setElem!11473 () Context!1902)

(assert (=> setNonEmpty!11473 (= setRes!11473 (and tp!525168 (inv!26926 setElem!11473) e!1184151))))

(declare-fun setRest!11473 () (InoxSet Context!1902))

(assert (=> setNonEmpty!11473 (= (_2!11332 (h!25941 (t!172414 mapDefault!8818))) ((_ map or) (store ((as const (Array Context!1902 Bool)) false) setElem!11473 true) setRest!11473))))

(declare-fun b!1852644 () Bool)

(declare-fun tp!525170 () Bool)

(assert (=> b!1852644 (= e!1184151 tp!525170)))

(declare-fun tp!525169 () Bool)

(declare-fun tp!525172 () Bool)

(declare-fun b!1852645 () Bool)

(assert (=> b!1852645 (= e!1184149 (and tp!525172 (inv!26926 (_2!11331 (_1!11332 (h!25941 (t!172414 mapDefault!8818))))) e!1184150 tp_is_empty!8499 setRes!11473 tp!525169))))

(declare-fun condSetEmpty!11473 () Bool)

(assert (=> b!1852645 (= condSetEmpty!11473 (= (_2!11332 (h!25941 (t!172414 mapDefault!8818))) ((as const (Array Context!1902 Bool)) false)))))

(assert (= b!1852645 b!1852643))

(assert (= (and b!1852645 condSetEmpty!11473) setIsEmpty!11473))

(assert (= (and b!1852645 (not condSetEmpty!11473)) setNonEmpty!11473))

(assert (= setNonEmpty!11473 b!1852644))

(assert (= (and b!1852020 ((_ is Cons!20540) (t!172414 mapDefault!8818))) b!1852645))

(declare-fun m!2279489 () Bool)

(assert (=> setNonEmpty!11473 m!2279489))

(declare-fun m!2279491 () Bool)

(assert (=> b!1852645 m!2279491))

(declare-fun b!1852646 () Bool)

(declare-fun e!1184152 () Bool)

(declare-fun tp!525173 () Bool)

(declare-fun tp!525174 () Bool)

(assert (=> b!1852646 (= e!1184152 (and tp!525173 tp!525174))))

(assert (=> b!1852115 (= tp!524940 e!1184152)))

(assert (= (and b!1852115 ((_ is Cons!20538) (exprs!1451 setElem!11443))) b!1852646))

(check-sat (not b!1852524) (not b!1852298) (not b!1852509) (not b!1852412) (not b!1852557) (not b!1852644) (not b!1852223) (not b!1852573) (not d!566003) (not b!1852154) (not b!1852187) (not b!1852536) (not b!1852593) (not b!1852256) (not b!1852646) (not d!566157) (not b!1852575) (not b_next!52571) (not b!1852287) (not b!1852409) (not b!1852219) (not b!1852437) (not b!1852156) (not b!1852494) (not b!1852220) (not d!566145) (not d!566161) (not b!1852235) (not b!1852430) (not b!1852469) (not b!1852514) (not d!566013) (not b!1852272) (not d!566017) (not b!1852525) (not b!1852376) (not b!1852404) (not setNonEmpty!11462) (not b!1852361) (not d!566069) (not b!1852582) (not d!565999) (not b!1852594) (not b!1852484) (not b!1852120) (not d!566103) (not d!566037) (not d!566025) (not b!1852626) (not d!566053) (not d!566159) (not b!1852299) (not b!1852546) (not b!1852519) (not b!1852336) (not setNonEmpty!11460) (not b!1852535) (not b!1852580) (not b!1852407) b_and!144109 (not b!1852542) (not b!1852370) (not b!1852620) (not b!1852579) (not b!1852250) (not b!1852477) (not b!1852531) b_and!144117 (not b!1852500) (not d!566047) (not setNonEmpty!11461) (not b!1852581) (not b!1852513) b_and!144123 (not b!1852230) (not setNonEmpty!11470) (not b!1852138) (not b_next!52569) (not b!1852522) (not d!566127) (not setNonEmpty!11444) (not d!566155) (not b!1852217) (not b!1852518) (not d!566139) (not b!1852544) (not d!566045) (not mapNonEmpty!8823) (not d!566091) (not d!565997) (not b!1852540) (not b!1852549) b_and!144105 (not d!566063) (not b!1852476) (not b!1852643) (not b!1852532) (not b!1852456) tp_is_empty!8499 (not b!1852198) (not d!566043) (not b!1852627) (not d!566009) (not d!566123) (not b!1852174) (not b!1852357) (not d!566065) (not b!1852155) (not b!1852591) (not b!1852273) (not b!1852472) (not b!1852295) (not b!1852555) (not d!566073) (not b!1852596) (not b!1852253) (not b!1852493) (not d!566151) (not b!1852471) (not b!1852636) (not d!566055) (not b!1852523) (not b_next!52579) (not b!1852234) (not d!566137) (not b!1852589) (not b!1852271) (not b!1852398) (not b!1852566) (not d!566165) (not b!1852374) (not b!1852622) (not b!1852543) (not b!1852510) (not b!1852356) (not b!1852375) (not b!1852137) (not setNonEmpty!11473) (not setNonEmpty!11467) (not b!1852495) (not b!1852574) (not d!565993) (not d!566105) (not b!1852520) (not b!1852186) (not d!566111) (not b!1852517) (not b!1852388) (not b!1852490) (not d!566081) (not b!1852571) (not b!1852485) (not b!1852473) (not b!1852629) (not b!1852534) (not setNonEmpty!11466) (not b!1852503) (not d!566089) (not b!1852558) (not b!1852587) (not b!1852442) (not b!1852464) (not bm!115375) (not b!1852450) (not b!1852267) (not b!1852633) (not setNonEmpty!11471) (not d!566097) (not b!1852139) (not d!566031) (not setNonEmpty!11465) (not b!1852451) (not b!1852530) (not b!1852415) (not b!1852446) b_and!144097 (not d!566021) (not d!566001) (not b!1852468) (not b!1852269) (not b_lambda!61433) (not d!566107) (not d!566029) (not d!566167) (not b!1852466) (not d!566113) (not b!1852397) (not b!1852559) (not b!1852552) (not b!1852645) (not b!1852570) (not b!1852396) (not d!566131) (not b!1852447) (not b!1852491) (not d!566133) (not b!1852286) (not setNonEmpty!11456) (not b!1852315) (not setNonEmpty!11457) (not b!1852390) (not d!566099) (not b!1852628) (not b!1852481) (not d!566085) (not d!566109) (not b!1852562) (not b!1852598) (not d!566171) (not b!1852121) (not b!1852624) (not b!1852545) (not b!1852444) (not b!1852460) (not setNonEmpty!11472) (not b!1852157) (not b!1852433) (not b!1852492) (not d!566175) (not d!566079) (not b!1852224) (not b!1852163) (not d!566121) (not b!1852199) (not d!566007) (not d!566015) (not b!1852227) (not b!1852482) (not b!1852307) b_and!144119 (not b!1852426) (not d!566077) (not setNonEmpty!11469) (not d!565995) (not b!1852632) (not b!1852478) (not b!1852637) (not bm!115374) (not b!1852561) (not b!1852292) (not d!566095) (not d!566125) (not b!1852502) (not d!566059) (not b!1852511) (not b!1852231) (not d!566129) (not b!1852515) (not d!566173) (not b!1852538) (not d!566083) (not b!1852638) (not b!1852438) (not b_next!52583) (not b!1852642) (not b!1852164) (not setNonEmpty!11453) (not b!1852123) b_and!144101 (not b!1852504) (not b!1852413) (not b!1852501) (not d!566087) (not d!566023) (not tb!112897) (not b!1852158) (not b!1852265) (not b_next!52585) (not b!1852567) (not b!1852590) b_and!144121 (not d!566041) (not b!1852507) (not b!1852457) (not b_next!52581) (not d!566117) (not b!1852306) (not setNonEmpty!11447) (not b!1852597) (not b!1852554) (not b!1852402) (not b!1852572) (not b!1852533) (not b!1852254) (not b!1852452) (not d!566057) (not b!1852483) (not b!1852454) b_and!144107 (not b!1852537) (not b!1852118) (not b!1852548) (not d!566141) (not b!1852228) (not setNonEmpty!11451) (not b!1852401) (not b!1852392) (not b!1852373) (not b!1852285) (not mapNonEmpty!8822) (not b!1852553) (not d!566051) (not d!566115) (not b!1852414) (not b!1852041) (not d!566163) (not b_next!52567) (not d!566119) (not b_lambda!61435) (not b!1852226) (not b!1852578) (not b!1852565) (not b!1852429) (not b_next!52575) (not b!1852153) (not b!1852635) (not d!566153) (not d!566011) (not b_next!52577) (not d!566135) (not b!1852560) (not b!1852461) (not setNonEmpty!11454) (not d!566149) (not b!1852541) (not b!1852395) (not setNonEmpty!11450) (not b!1852588) (not bm!115371) (not d!566101) (not b!1852358) (not b!1852393) (not b!1852564) (not b!1852372) (not d!566143) (not b!1852475) (not b!1852630) (not setNonEmpty!11446) (not b!1852584) (not b!1852411) (not b!1852576) (not b!1852331) (not d!566061) (not b!1852640) (not d!566093) (not b!1852173) (not b!1852229) (not b!1852387) (not b!1852506) (not b!1852619) (not d!566039) (not b!1852214) (not b!1852631) (not b!1852641) (not setNonEmpty!11455) (not b!1852474) (not b!1852455) (not b!1852360) (not setNonEmpty!11458) (not b!1852458) (not b!1852577) (not setNonEmpty!11459) b_and!144099 (not d!566071) (not b!1852216) (not b!1852470) (not b!1852332) (not b!1852354) (not b!1852621) (not d!566169) (not b!1852568) (not b!1852463) (not b!1852425) (not d!566147) (not b!1852583) (not b_next!52573) (not b!1852441) (not b!1852623) (not b!1852508) (not b!1852355) (not b!1852556) (not b!1852586) (not setNonEmpty!11464) (not b!1852521) (not setNonEmpty!11445) (not setNonEmpty!11468) (not b!1852218) (not b!1852569) (not b!1852480) (not b!1852592) (not d!566067) (not b!1852550) (not b!1852334) (not b!1852377) (not b!1852434) (not setNonEmpty!11452) (not b!1852406) (not b!1852394) (not b!1852175) (not setNonEmpty!11463) (not b!1852284) (not tb!112901))
(check-sat (not b_next!52571) b_and!144105 (not b_next!52579) b_and!144097 b_and!144119 b_and!144107 (not b_next!52567) b_and!144099 (not b_next!52573) b_and!144109 b_and!144117 b_and!144123 (not b_next!52569) b_and!144101 (not b_next!52583) (not b_next!52581) (not b_next!52585) b_and!144121 (not b_next!52575) (not b_next!52577))
