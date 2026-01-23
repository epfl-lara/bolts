; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184802 () Bool)

(assert start!184802)

(declare-fun b!1851778 () Bool)

(declare-fun b_free!51839 () Bool)

(declare-fun b_next!52543 () Bool)

(assert (=> b!1851778 (= b_free!51839 (not b_next!52543))))

(declare-fun tp!524661 () Bool)

(declare-fun b_and!144073 () Bool)

(assert (=> b!1851778 (= tp!524661 b_and!144073)))

(declare-fun b!1851787 () Bool)

(declare-fun b_free!51841 () Bool)

(declare-fun b_next!52545 () Bool)

(assert (=> b!1851787 (= b_free!51841 (not b_next!52545))))

(declare-fun tp!524666 () Bool)

(declare-fun b_and!144075 () Bool)

(assert (=> b!1851787 (= tp!524666 b_and!144075)))

(declare-fun b_free!51843 () Bool)

(declare-fun b_next!52547 () Bool)

(assert (=> b!1851787 (= b_free!51843 (not b_next!52547))))

(declare-fun tp!524670 () Bool)

(declare-fun b_and!144077 () Bool)

(assert (=> b!1851787 (= tp!524670 b_and!144077)))

(declare-fun b!1851789 () Bool)

(declare-fun b_free!51845 () Bool)

(declare-fun b_next!52549 () Bool)

(assert (=> b!1851789 (= b_free!51845 (not b_next!52549))))

(declare-fun tp!524669 () Bool)

(declare-fun b_and!144079 () Bool)

(assert (=> b!1851789 (= tp!524669 b_and!144079)))

(declare-fun b!1851775 () Bool)

(declare-fun b_free!51847 () Bool)

(declare-fun b_next!52551 () Bool)

(assert (=> b!1851775 (= b_free!51847 (not b_next!52551))))

(declare-fun tp!524673 () Bool)

(declare-fun b_and!144081 () Bool)

(assert (=> b!1851775 (= tp!524673 b_and!144081)))

(declare-fun b!1851791 () Bool)

(declare-fun b_free!51849 () Bool)

(declare-fun b_next!52553 () Bool)

(assert (=> b!1851791 (= b_free!51849 (not b_next!52553))))

(declare-fun tp!524665 () Bool)

(declare-fun b_and!144083 () Bool)

(assert (=> b!1851791 (= tp!524665 b_and!144083)))

(declare-fun b!1851772 () Bool)

(declare-fun e!1183548 () Bool)

(declare-fun e!1183556 () Bool)

(assert (=> b!1851772 (= e!1183548 e!1183556)))

(declare-fun mapIsEmpty!8802 () Bool)

(declare-fun mapRes!8803 () Bool)

(assert (=> mapIsEmpty!8802 mapRes!8803))

(declare-fun res!830996 () Bool)

(declare-fun e!1183546 () Bool)

(assert (=> start!184802 (=> (not res!830996) (not e!1183546))))

(declare-datatypes ((LexerInterface!3298 0))(
  ( (LexerInterfaceExt!3295 (__x!12928 Int)) (Lexer!3296) )
))
(declare-fun thiss!12117 () LexerInterface!3298)

(get-info :version)

(assert (=> start!184802 (= res!830996 ((_ is Lexer!3296) thiss!12117))))

(assert (=> start!184802 e!1183546))

(declare-datatypes ((C!10228 0))(
  ( (C!10229 (val!5840 Int)) )
))
(declare-datatypes ((Regex!5039 0))(
  ( (ElementMatch!5039 (c!302084 C!10228)) (Concat!8831 (regOne!10590 Regex!5039) (regTwo!10590 Regex!5039)) (EmptyExpr!5039) (Star!5039 (reg!5368 Regex!5039)) (EmptyLang!5039) (Union!5039 (regOne!10591 Regex!5039) (regTwo!10591 Regex!5039)) )
))
(declare-datatypes ((List!20596 0))(
  ( (Nil!20524) (Cons!20524 (h!25925 Regex!5039) (t!172398 List!20596)) )
))
(declare-datatypes ((Context!1898 0))(
  ( (Context!1899 (exprs!1449 List!20596)) )
))
(declare-datatypes ((tuple2!19794 0))(
  ( (tuple2!19795 (_1!11317 Context!1898) (_2!11317 C!10228)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19796 0))(
  ( (tuple2!19797 (_1!11318 tuple2!19794) (_2!11318 (InoxSet Context!1898))) )
))
(declare-datatypes ((List!20597 0))(
  ( (Nil!20525) (Cons!20525 (h!25926 tuple2!19796) (t!172399 List!20597)) )
))
(declare-datatypes ((array!6482 0))(
  ( (array!6483 (arr!2879 (Array (_ BitVec 32) List!20597)) (size!16207 (_ BitVec 32))) )
))
(declare-datatypes ((array!6484 0))(
  ( (array!6485 (arr!2880 (Array (_ BitVec 32) (_ BitVec 64))) (size!16208 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3778 0))(
  ( (LongMapFixedSize!3779 (defaultEntry!2249 Int) (mask!5576 (_ BitVec 32)) (extraKeys!2136 (_ BitVec 32)) (zeroValue!2146 List!20597) (minValue!2146 List!20597) (_size!3859 (_ BitVec 32)) (_keys!2183 array!6484) (_values!2168 array!6482) (_vacant!1950 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7441 0))(
  ( (Cell!7442 (v!26013 LongMapFixedSize!3778)) )
))
(declare-datatypes ((MutLongMap!1889 0))(
  ( (LongMap!1889 (underlying!3991 Cell!7441)) (MutLongMapExt!1888 (__x!12929 Int)) )
))
(declare-datatypes ((Hashable!1833 0))(
  ( (HashableExt!1832 (__x!12930 Int)) )
))
(declare-datatypes ((Cell!7443 0))(
  ( (Cell!7444 (v!26014 MutLongMap!1889)) )
))
(declare-datatypes ((MutableMap!1833 0))(
  ( (MutableMapExt!1832 (__x!12931 Int)) (HashMap!1833 (underlying!3992 Cell!7443) (hashF!3752 Hashable!1833) (_size!3860 (_ BitVec 32)) (defaultValue!1993 Int)) )
))
(declare-datatypes ((CacheUp!1134 0))(
  ( (CacheUp!1135 (cache!2214 MutableMap!1833)) )
))
(declare-fun cacheUp!441 () CacheUp!1134)

(declare-fun e!1183541 () Bool)

(declare-fun inv!26906 (CacheUp!1134) Bool)

(assert (=> start!184802 (and (inv!26906 cacheUp!441) e!1183541)))

(assert (=> start!184802 true))

(declare-datatypes ((List!20598 0))(
  ( (Nil!20526) (Cons!20526 (h!25927 C!10228) (t!172400 List!20598)) )
))
(declare-datatypes ((IArray!13583 0))(
  ( (IArray!13584 (innerList!6849 List!20598)) )
))
(declare-datatypes ((Conc!6789 0))(
  ( (Node!6789 (left!16472 Conc!6789) (right!16802 Conc!6789) (csize!13808 Int) (cheight!7000 Int)) (Leaf!9933 (xs!9665 IArray!13583) (csize!13809 Int)) (Empty!6789) )
))
(declare-datatypes ((BalanceConc!13500 0))(
  ( (BalanceConc!13501 (c!302085 Conc!6789)) )
))
(declare-fun input!736 () BalanceConc!13500)

(declare-fun e!1183549 () Bool)

(declare-fun inv!26907 (BalanceConc!13500) Bool)

(assert (=> start!184802 (and (inv!26907 input!736) e!1183549)))

(declare-datatypes ((tuple3!1912 0))(
  ( (tuple3!1913 (_1!11319 Regex!5039) (_2!11319 Context!1898) (_3!1420 C!10228)) )
))
(declare-datatypes ((tuple2!19798 0))(
  ( (tuple2!19799 (_1!11320 tuple3!1912) (_2!11320 (InoxSet Context!1898))) )
))
(declare-datatypes ((List!20599 0))(
  ( (Nil!20527) (Cons!20527 (h!25928 tuple2!19798) (t!172401 List!20599)) )
))
(declare-datatypes ((array!6486 0))(
  ( (array!6487 (arr!2881 (Array (_ BitVec 32) List!20599)) (size!16209 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3780 0))(
  ( (LongMapFixedSize!3781 (defaultEntry!2250 Int) (mask!5577 (_ BitVec 32)) (extraKeys!2137 (_ BitVec 32)) (zeroValue!2147 List!20599) (minValue!2147 List!20599) (_size!3861 (_ BitVec 32)) (_keys!2184 array!6484) (_values!2169 array!6486) (_vacant!1951 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7445 0))(
  ( (Cell!7446 (v!26015 LongMapFixedSize!3780)) )
))
(declare-datatypes ((Hashable!1834 0))(
  ( (HashableExt!1833 (__x!12932 Int)) )
))
(declare-datatypes ((MutLongMap!1890 0))(
  ( (LongMap!1890 (underlying!3993 Cell!7445)) (MutLongMapExt!1889 (__x!12933 Int)) )
))
(declare-datatypes ((Cell!7447 0))(
  ( (Cell!7448 (v!26016 MutLongMap!1890)) )
))
(declare-datatypes ((MutableMap!1834 0))(
  ( (MutableMapExt!1833 (__x!12934 Int)) (HashMap!1834 (underlying!3994 Cell!7447) (hashF!3753 Hashable!1834) (_size!3862 (_ BitVec 32)) (defaultValue!1994 Int)) )
))
(declare-datatypes ((CacheDown!1130 0))(
  ( (CacheDown!1131 (cache!2215 MutableMap!1834)) )
))
(declare-fun cacheDown!454 () CacheDown!1130)

(declare-fun inv!26908 (CacheDown!1130) Bool)

(assert (=> start!184802 (and (inv!26908 cacheDown!454) e!1183548)))

(declare-fun e!1183545 () Bool)

(assert (=> start!184802 e!1183545))

(declare-fun b!1851773 () Bool)

(declare-fun e!1183551 () Bool)

(declare-fun e!1183535 () Bool)

(assert (=> b!1851773 (= e!1183551 e!1183535)))

(declare-fun b!1851774 () Bool)

(declare-fun e!1183542 () Bool)

(declare-fun tp!524667 () Bool)

(assert (=> b!1851774 (= e!1183542 (and tp!524667 mapRes!8803))))

(declare-fun condMapEmpty!8802 () Bool)

(declare-fun mapDefault!8803 () List!20599)

(assert (=> b!1851774 (= condMapEmpty!8802 (= (arr!2881 (_values!2169 (v!26015 (underlying!3993 (v!26016 (underlying!3994 (cache!2215 cacheDown!454))))))) ((as const (Array (_ BitVec 32) List!20599)) mapDefault!8803)))))

(declare-fun e!1183539 () Bool)

(assert (=> b!1851775 (= e!1183556 (and e!1183539 tp!524673))))

(declare-fun b!1851776 () Bool)

(declare-fun e!1183540 () Bool)

(declare-fun e!1183547 () Bool)

(assert (=> b!1851776 (= e!1183540 e!1183547)))

(declare-fun mapNonEmpty!8802 () Bool)

(declare-fun tp!524671 () Bool)

(declare-fun tp!524663 () Bool)

(assert (=> mapNonEmpty!8802 (= mapRes!8803 (and tp!524671 tp!524663))))

(declare-fun mapKey!8802 () (_ BitVec 32))

(declare-fun mapValue!8802 () List!20599)

(declare-fun mapRest!8803 () (Array (_ BitVec 32) List!20599))

(assert (=> mapNonEmpty!8802 (= (arr!2881 (_values!2169 (v!26015 (underlying!3993 (v!26016 (underlying!3994 (cache!2215 cacheDown!454))))))) (store mapRest!8803 mapKey!8802 mapValue!8802))))

(declare-fun b!1851777 () Bool)

(declare-fun e!1183536 () Bool)

(declare-fun lt!715765 () MutLongMap!1890)

(assert (=> b!1851777 (= e!1183539 (and e!1183536 ((_ is LongMap!1890) lt!715765)))))

(assert (=> b!1851777 (= lt!715765 (v!26016 (underlying!3994 (cache!2215 cacheDown!454))))))

(declare-fun tp!524678 () Bool)

(declare-fun e!1183543 () Bool)

(declare-fun e!1183537 () Bool)

(declare-fun tp!524674 () Bool)

(declare-fun array_inv!2072 (array!6484) Bool)

(declare-fun array_inv!2073 (array!6482) Bool)

(assert (=> b!1851778 (= e!1183543 (and tp!524661 tp!524678 tp!524674 (array_inv!2072 (_keys!2183 (v!26013 (underlying!3991 (v!26014 (underlying!3992 (cache!2214 cacheUp!441))))))) (array_inv!2073 (_values!2168 (v!26013 (underlying!3991 (v!26014 (underlying!3992 (cache!2214 cacheUp!441))))))) e!1183537))))

(declare-fun b!1851779 () Bool)

(declare-fun tp!524676 () Bool)

(declare-fun mapRes!8802 () Bool)

(assert (=> b!1851779 (= e!1183537 (and tp!524676 mapRes!8802))))

(declare-fun condMapEmpty!8803 () Bool)

(declare-fun mapDefault!8802 () List!20597)

(assert (=> b!1851779 (= condMapEmpty!8803 (= (arr!2879 (_values!2168 (v!26013 (underlying!3991 (v!26014 (underlying!3992 (cache!2214 cacheUp!441))))))) ((as const (Array (_ BitVec 32) List!20597)) mapDefault!8802)))))

(declare-fun mapNonEmpty!8803 () Bool)

(declare-fun tp!524677 () Bool)

(declare-fun tp!524672 () Bool)

(assert (=> mapNonEmpty!8803 (= mapRes!8802 (and tp!524677 tp!524672))))

(declare-fun mapValue!8803 () List!20597)

(declare-fun mapRest!8802 () (Array (_ BitVec 32) List!20597))

(declare-fun mapKey!8803 () (_ BitVec 32))

(assert (=> mapNonEmpty!8803 (= (arr!2879 (_values!2168 (v!26013 (underlying!3991 (v!26014 (underlying!3992 (cache!2214 cacheUp!441))))))) (store mapRest!8802 mapKey!8803 mapValue!8803))))

(declare-fun b!1851780 () Bool)

(assert (=> b!1851780 (= e!1183546 false)))

(declare-datatypes ((List!20600 0))(
  ( (Nil!20528) (Cons!20528 (h!25929 (_ BitVec 16)) (t!172402 List!20600)) )
))
(declare-datatypes ((TokenValue!3792 0))(
  ( (FloatLiteralValue!7584 (text!26989 List!20600)) (TokenValueExt!3791 (__x!12935 Int)) (Broken!18960 (value!115320 List!20600)) (Object!3863) (End!3792) (Def!3792) (Underscore!3792) (Match!3792) (Else!3792) (Error!3792) (Case!3792) (If!3792) (Extends!3792) (Abstract!3792) (Class!3792) (Val!3792) (DelimiterValue!7584 (del!3852 List!20600)) (KeywordValue!3798 (value!115321 List!20600)) (CommentValue!7584 (value!115322 List!20600)) (WhitespaceValue!7584 (value!115323 List!20600)) (IndentationValue!3792 (value!115324 List!20600)) (String!23529) (Int32!3792) (Broken!18961 (value!115325 List!20600)) (Boolean!3793) (Unit!35139) (OperatorValue!3795 (op!3852 List!20600)) (IdentifierValue!7584 (value!115326 List!20600)) (IdentifierValue!7585 (value!115327 List!20600)) (WhitespaceValue!7585 (value!115328 List!20600)) (True!7584) (False!7584) (Broken!18962 (value!115329 List!20600)) (Broken!18963 (value!115330 List!20600)) (True!7585) (RightBrace!3792) (RightBracket!3792) (Colon!3792) (Null!3792) (Comma!3792) (LeftBracket!3792) (False!7585) (LeftBrace!3792) (ImaginaryLiteralValue!3792 (text!26990 List!20600)) (StringLiteralValue!11376 (value!115331 List!20600)) (EOFValue!3792 (value!115332 List!20600)) (IdentValue!3792 (value!115333 List!20600)) (DelimiterValue!7585 (value!115334 List!20600)) (DedentValue!3792 (value!115335 List!20600)) (NewLineValue!3792 (value!115336 List!20600)) (IntegerValue!11376 (value!115337 (_ BitVec 32)) (text!26991 List!20600)) (IntegerValue!11377 (value!115338 Int) (text!26992 List!20600)) (Times!3792) (Or!3792) (Equal!3792) (Minus!3792) (Broken!18964 (value!115339 List!20600)) (And!3792) (Div!3792) (LessEqual!3792) (Mod!3792) (Concat!8832) (Not!3792) (Plus!3792) (SpaceValue!3792 (value!115340 List!20600)) (IntegerValue!11378 (value!115341 Int) (text!26993 List!20600)) (StringLiteralValue!11377 (text!26994 List!20600)) (FloatLiteralValue!7585 (text!26995 List!20600)) (BytesLiteralValue!3792 (value!115342 List!20600)) (CommentValue!7585 (value!115343 List!20600)) (StringLiteralValue!11378 (value!115344 List!20600)) (ErrorTokenValue!3792 (msg!3853 List!20600)) )
))
(declare-datatypes ((TokenValueInjection!7200 0))(
  ( (TokenValueInjection!7201 (toValue!5249 Int) (toChars!5108 Int)) )
))
(declare-datatypes ((String!23530 0))(
  ( (String!23531 (value!115345 String)) )
))
(declare-datatypes ((Rule!7152 0))(
  ( (Rule!7153 (regex!3676 Regex!5039) (tag!4090 String!23530) (isSeparator!3676 Bool) (transformation!3676 TokenValueInjection!7200)) )
))
(declare-datatypes ((Token!6904 0))(
  ( (Token!6905 (value!115346 TokenValue!3792) (rule!5869 Rule!7152) (size!16210 Int) (originalCharacters!4483 List!20598)) )
))
(declare-datatypes ((List!20601 0))(
  ( (Nil!20529) (Cons!20529 (h!25930 Token!6904) (t!172403 List!20601)) )
))
(declare-fun lt!715768 () List!20601)

(declare-datatypes ((IArray!13585 0))(
  ( (IArray!13586 (innerList!6850 List!20601)) )
))
(declare-datatypes ((Conc!6790 0))(
  ( (Node!6790 (left!16473 Conc!6790) (right!16803 Conc!6790) (csize!13810 Int) (cheight!7001 Int)) (Leaf!9934 (xs!9666 IArray!13585) (csize!13811 Int)) (Empty!6790) )
))
(declare-datatypes ((BalanceConc!13502 0))(
  ( (BalanceConc!13503 (c!302086 Conc!6790)) )
))
(declare-datatypes ((tuple2!19800 0))(
  ( (tuple2!19801 (_1!11321 BalanceConc!13502) (_2!11321 BalanceConc!13500)) )
))
(declare-fun lt!715767 () tuple2!19800)

(declare-fun list!8316 (BalanceConc!13502) List!20601)

(assert (=> b!1851780 (= lt!715768 (list!8316 (_1!11321 lt!715767)))))

(declare-fun lt!715769 () List!20601)

(declare-datatypes ((tuple3!1914 0))(
  ( (tuple3!1915 (_1!11322 tuple2!19800) (_2!11322 CacheUp!1134) (_3!1421 CacheDown!1130)) )
))
(declare-fun lt!715764 () tuple3!1914)

(assert (=> b!1851780 (= lt!715769 (list!8316 (_1!11321 (_1!11322 lt!715764))))))

(declare-datatypes ((List!20602 0))(
  ( (Nil!20530) (Cons!20530 (h!25931 Rule!7152) (t!172404 List!20602)) )
))
(declare-fun rules!1331 () List!20602)

(declare-fun lex!1498 (LexerInterface!3298 List!20602 BalanceConc!13500) tuple2!19800)

(assert (=> b!1851780 (= lt!715767 (lex!1498 thiss!12117 rules!1331 input!736))))

(declare-fun lexTailRecMem!6 (LexerInterface!3298 List!20602 BalanceConc!13500 BalanceConc!13500 BalanceConc!13500 BalanceConc!13502 CacheUp!1134 CacheDown!1130) tuple3!1914)

(assert (=> b!1851780 (= lt!715764 (lexTailRecMem!6 thiss!12117 rules!1331 input!736 (BalanceConc!13501 Empty!6789) input!736 (BalanceConc!13503 Empty!6790) cacheUp!441 cacheDown!454))))

(declare-fun b!1851781 () Bool)

(declare-fun res!830993 () Bool)

(assert (=> b!1851781 (=> (not res!830993) (not e!1183546))))

(declare-fun rulesInvariant!2965 (LexerInterface!3298 List!20602) Bool)

(assert (=> b!1851781 (= res!830993 (rulesInvariant!2965 thiss!12117 rules!1331))))

(declare-fun b!1851782 () Bool)

(declare-fun res!830994 () Bool)

(assert (=> b!1851782 (=> (not res!830994) (not e!1183546))))

(declare-fun isEmpty!12801 (List!20602) Bool)

(assert (=> b!1851782 (= res!830994 (not (isEmpty!12801 rules!1331)))))

(declare-fun tp!524662 () Bool)

(declare-fun e!1183544 () Bool)

(declare-fun b!1851783 () Bool)

(declare-fun e!1183554 () Bool)

(declare-fun inv!26902 (String!23530) Bool)

(declare-fun inv!26909 (TokenValueInjection!7200) Bool)

(assert (=> b!1851783 (= e!1183544 (and tp!524662 (inv!26902 (tag!4090 (h!25931 rules!1331))) (inv!26909 (transformation!3676 (h!25931 rules!1331))) e!1183554))))

(declare-fun b!1851784 () Bool)

(declare-fun e!1183538 () Bool)

(declare-fun lt!715766 () MutLongMap!1889)

(assert (=> b!1851784 (= e!1183538 (and e!1183540 ((_ is LongMap!1889) lt!715766)))))

(assert (=> b!1851784 (= lt!715766 (v!26014 (underlying!3992 (cache!2214 cacheUp!441))))))

(declare-fun b!1851785 () Bool)

(declare-fun tp!524664 () Bool)

(assert (=> b!1851785 (= e!1183545 (and e!1183544 tp!524664))))

(declare-fun mapIsEmpty!8803 () Bool)

(assert (=> mapIsEmpty!8803 mapRes!8802))

(declare-fun b!1851786 () Bool)

(declare-fun e!1183553 () Bool)

(assert (=> b!1851786 (= e!1183541 e!1183553)))

(assert (=> b!1851787 (= e!1183554 (and tp!524666 tp!524670))))

(declare-fun b!1851788 () Bool)

(declare-fun tp!524668 () Bool)

(declare-fun inv!26910 (Conc!6789) Bool)

(assert (=> b!1851788 (= e!1183549 (and (inv!26910 (c!302085 input!736)) tp!524668))))

(declare-fun tp!524679 () Bool)

(declare-fun tp!524675 () Bool)

(declare-fun array_inv!2074 (array!6486) Bool)

(assert (=> b!1851789 (= e!1183535 (and tp!524669 tp!524675 tp!524679 (array_inv!2072 (_keys!2184 (v!26015 (underlying!3993 (v!26016 (underlying!3994 (cache!2215 cacheDown!454))))))) (array_inv!2074 (_values!2169 (v!26015 (underlying!3993 (v!26016 (underlying!3994 (cache!2215 cacheDown!454))))))) e!1183542))))

(declare-fun b!1851790 () Bool)

(declare-fun res!830992 () Bool)

(assert (=> b!1851790 (=> (not res!830992) (not e!1183546))))

(declare-fun valid!1507 (CacheDown!1130) Bool)

(assert (=> b!1851790 (= res!830992 (valid!1507 cacheDown!454))))

(assert (=> b!1851791 (= e!1183553 (and e!1183538 tp!524665))))

(declare-fun b!1851792 () Bool)

(declare-fun res!830995 () Bool)

(assert (=> b!1851792 (=> (not res!830995) (not e!1183546))))

(declare-fun valid!1508 (CacheUp!1134) Bool)

(assert (=> b!1851792 (= res!830995 (valid!1508 cacheUp!441))))

(declare-fun b!1851793 () Bool)

(assert (=> b!1851793 (= e!1183536 e!1183551)))

(declare-fun b!1851794 () Bool)

(assert (=> b!1851794 (= e!1183547 e!1183543)))

(assert (= (and start!184802 res!830996) b!1851782))

(assert (= (and b!1851782 res!830994) b!1851781))

(assert (= (and b!1851781 res!830993) b!1851792))

(assert (= (and b!1851792 res!830995) b!1851790))

(assert (= (and b!1851790 res!830992) b!1851780))

(assert (= (and b!1851779 condMapEmpty!8803) mapIsEmpty!8803))

(assert (= (and b!1851779 (not condMapEmpty!8803)) mapNonEmpty!8803))

(assert (= b!1851778 b!1851779))

(assert (= b!1851794 b!1851778))

(assert (= b!1851776 b!1851794))

(assert (= (and b!1851784 ((_ is LongMap!1889) (v!26014 (underlying!3992 (cache!2214 cacheUp!441))))) b!1851776))

(assert (= b!1851791 b!1851784))

(assert (= (and b!1851786 ((_ is HashMap!1833) (cache!2214 cacheUp!441))) b!1851791))

(assert (= start!184802 b!1851786))

(assert (= start!184802 b!1851788))

(assert (= (and b!1851774 condMapEmpty!8802) mapIsEmpty!8802))

(assert (= (and b!1851774 (not condMapEmpty!8802)) mapNonEmpty!8802))

(assert (= b!1851789 b!1851774))

(assert (= b!1851773 b!1851789))

(assert (= b!1851793 b!1851773))

(assert (= (and b!1851777 ((_ is LongMap!1890) (v!26016 (underlying!3994 (cache!2215 cacheDown!454))))) b!1851793))

(assert (= b!1851775 b!1851777))

(assert (= (and b!1851772 ((_ is HashMap!1834) (cache!2215 cacheDown!454))) b!1851775))

(assert (= start!184802 b!1851772))

(assert (= b!1851783 b!1851787))

(assert (= b!1851785 b!1851783))

(assert (= (and start!184802 ((_ is Cons!20530) rules!1331)) b!1851785))

(declare-fun m!2278207 () Bool)

(assert (=> b!1851780 m!2278207))

(declare-fun m!2278209 () Bool)

(assert (=> b!1851780 m!2278209))

(declare-fun m!2278211 () Bool)

(assert (=> b!1851780 m!2278211))

(declare-fun m!2278213 () Bool)

(assert (=> b!1851780 m!2278213))

(declare-fun m!2278215 () Bool)

(assert (=> b!1851788 m!2278215))

(declare-fun m!2278217 () Bool)

(assert (=> mapNonEmpty!8803 m!2278217))

(declare-fun m!2278219 () Bool)

(assert (=> b!1851783 m!2278219))

(declare-fun m!2278221 () Bool)

(assert (=> b!1851783 m!2278221))

(declare-fun m!2278223 () Bool)

(assert (=> b!1851790 m!2278223))

(declare-fun m!2278225 () Bool)

(assert (=> start!184802 m!2278225))

(declare-fun m!2278227 () Bool)

(assert (=> start!184802 m!2278227))

(declare-fun m!2278229 () Bool)

(assert (=> start!184802 m!2278229))

(declare-fun m!2278231 () Bool)

(assert (=> b!1851781 m!2278231))

(declare-fun m!2278233 () Bool)

(assert (=> b!1851792 m!2278233))

(declare-fun m!2278235 () Bool)

(assert (=> b!1851778 m!2278235))

(declare-fun m!2278237 () Bool)

(assert (=> b!1851778 m!2278237))

(declare-fun m!2278239 () Bool)

(assert (=> b!1851789 m!2278239))

(declare-fun m!2278241 () Bool)

(assert (=> b!1851789 m!2278241))

(declare-fun m!2278243 () Bool)

(assert (=> mapNonEmpty!8802 m!2278243))

(declare-fun m!2278245 () Bool)

(assert (=> b!1851782 m!2278245))

(check-sat (not b!1851774) (not b_next!52543) (not b!1851785) (not b!1851780) (not b_next!52553) (not b_next!52551) (not b_next!52549) (not start!184802) (not mapNonEmpty!8803) b_and!144077 (not b!1851792) (not b!1851789) b_and!144073 (not b!1851779) (not b!1851782) (not b!1851778) (not b!1851788) b_and!144079 b_and!144081 (not b_next!52547) (not b!1851790) (not b!1851781) b_and!144083 (not b!1851783) (not mapNonEmpty!8802) b_and!144075 (not b_next!52545))
(check-sat (not b_next!52543) b_and!144083 (not b_next!52553) (not b_next!52551) (not b_next!52549) b_and!144077 b_and!144073 b_and!144079 b_and!144081 (not b_next!52547) b_and!144075 (not b_next!52545))
