; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184696 () Bool)

(assert start!184696)

(declare-fun b!1850683 () Bool)

(declare-fun b_free!51715 () Bool)

(declare-fun b_next!52419 () Bool)

(assert (=> b!1850683 (= b_free!51715 (not b_next!52419))))

(declare-fun tp!523771 () Bool)

(declare-fun b_and!143945 () Bool)

(assert (=> b!1850683 (= tp!523771 b_and!143945)))

(declare-fun b!1850687 () Bool)

(declare-fun b_free!51717 () Bool)

(declare-fun b_next!52421 () Bool)

(assert (=> b!1850687 (= b_free!51717 (not b_next!52421))))

(declare-fun tp!523766 () Bool)

(declare-fun b_and!143947 () Bool)

(assert (=> b!1850687 (= tp!523766 b_and!143947)))

(declare-fun b!1850686 () Bool)

(declare-fun b_free!51719 () Bool)

(declare-fun b_next!52423 () Bool)

(assert (=> b!1850686 (= b_free!51719 (not b_next!52423))))

(declare-fun tp!523778 () Bool)

(declare-fun b_and!143949 () Bool)

(assert (=> b!1850686 (= tp!523778 b_and!143949)))

(declare-fun b_free!51721 () Bool)

(declare-fun b_next!52425 () Bool)

(assert (=> b!1850686 (= b_free!51721 (not b_next!52425))))

(declare-fun tp!523776 () Bool)

(declare-fun b_and!143951 () Bool)

(assert (=> b!1850686 (= tp!523776 b_and!143951)))

(declare-fun b!1850677 () Bool)

(declare-fun b_free!51723 () Bool)

(declare-fun b_next!52427 () Bool)

(assert (=> b!1850677 (= b_free!51723 (not b_next!52427))))

(declare-fun tp!523775 () Bool)

(declare-fun b_and!143953 () Bool)

(assert (=> b!1850677 (= tp!523775 b_and!143953)))

(declare-fun b!1850674 () Bool)

(declare-fun b_free!51725 () Bool)

(declare-fun b_next!52429 () Bool)

(assert (=> b!1850674 (= b_free!51725 (not b_next!52429))))

(declare-fun tp!523761 () Bool)

(declare-fun b_and!143955 () Bool)

(assert (=> b!1850674 (= tp!523761 b_and!143955)))

(declare-fun b!1850675 () Bool)

(declare-fun b_free!51727 () Bool)

(declare-fun b_next!52431 () Bool)

(assert (=> b!1850675 (= b_free!51727 (not b_next!52431))))

(declare-fun tp!523774 () Bool)

(declare-fun b_and!143957 () Bool)

(assert (=> b!1850675 (= tp!523774 b_and!143957)))

(declare-fun b_free!51729 () Bool)

(declare-fun b_next!52433 () Bool)

(assert (=> b!1850675 (= b_free!51729 (not b_next!52433))))

(declare-fun tp!523782 () Bool)

(declare-fun b_and!143959 () Bool)

(assert (=> b!1850675 (= tp!523782 b_and!143959)))

(declare-fun mapNonEmpty!8746 () Bool)

(declare-fun mapRes!8746 () Bool)

(declare-fun tp!523781 () Bool)

(declare-fun tp!523772 () Bool)

(assert (=> mapNonEmpty!8746 (= mapRes!8746 (and tp!523781 tp!523772))))

(declare-datatypes ((C!10212 0))(
  ( (C!10213 (val!5832 Int)) )
))
(declare-datatypes ((Regex!5031 0))(
  ( (ElementMatch!5031 (c!302014 C!10212)) (Concat!8816 (regOne!10574 Regex!5031) (regTwo!10574 Regex!5031)) (EmptyExpr!5031) (Star!5031 (reg!5360 Regex!5031)) (EmptyLang!5031) (Union!5031 (regOne!10575 Regex!5031) (regTwo!10575 Regex!5031)) )
))
(declare-datatypes ((List!20546 0))(
  ( (Nil!20474) (Cons!20474 (h!25875 Regex!5031) (t!172333 List!20546)) )
))
(declare-datatypes ((Context!1882 0))(
  ( (Context!1883 (exprs!1441 List!20546)) )
))
(declare-datatypes ((tuple2!19732 0))(
  ( (tuple2!19733 (_1!11272 Context!1882) (_2!11272 C!10212)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19734 0))(
  ( (tuple2!19735 (_1!11273 tuple2!19732) (_2!11273 (InoxSet Context!1882))) )
))
(declare-datatypes ((List!20547 0))(
  ( (Nil!20475) (Cons!20475 (h!25876 tuple2!19734) (t!172334 List!20547)) )
))
(declare-fun mapValue!8747 () List!20547)

(declare-fun mapKey!8747 () (_ BitVec 32))

(declare-datatypes ((Hashable!1818 0))(
  ( (HashableExt!1817 (__x!12870 Int)) )
))
(declare-datatypes ((array!6433 0))(
  ( (array!6434 (arr!2856 (Array (_ BitVec 32) (_ BitVec 64))) (size!16170 (_ BitVec 32))) )
))
(declare-datatypes ((array!6435 0))(
  ( (array!6436 (arr!2857 (Array (_ BitVec 32) List!20547)) (size!16171 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3748 0))(
  ( (LongMapFixedSize!3749 (defaultEntry!2234 Int) (mask!5557 (_ BitVec 32)) (extraKeys!2121 (_ BitVec 32)) (zeroValue!2131 List!20547) (minValue!2131 List!20547) (_size!3829 (_ BitVec 32)) (_keys!2168 array!6433) (_values!2153 array!6435) (_vacant!1935 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7381 0))(
  ( (Cell!7382 (v!25980 LongMapFixedSize!3748)) )
))
(declare-datatypes ((MutLongMap!1874 0))(
  ( (LongMap!1874 (underlying!3961 Cell!7381)) (MutLongMapExt!1873 (__x!12871 Int)) )
))
(declare-datatypes ((Cell!7383 0))(
  ( (Cell!7384 (v!25981 MutLongMap!1874)) )
))
(declare-datatypes ((MutableMap!1818 0))(
  ( (MutableMapExt!1817 (__x!12872 Int)) (HashMap!1818 (underlying!3962 Cell!7383) (hashF!3737 Hashable!1818) (_size!3830 (_ BitVec 32)) (defaultValue!1978 Int)) )
))
(declare-datatypes ((CacheUp!1118 0))(
  ( (CacheUp!1119 (cache!2199 MutableMap!1818)) )
))
(declare-fun cacheUp!391 () CacheUp!1118)

(declare-fun mapRest!8746 () (Array (_ BitVec 32) List!20547))

(assert (=> mapNonEmpty!8746 (= (arr!2857 (_values!2153 (v!25980 (underlying!3961 (v!25981 (underlying!3962 (cache!2199 cacheUp!391))))))) (store mapRest!8746 mapKey!8747 mapValue!8747))))

(declare-fun b!1850669 () Bool)

(declare-fun res!830761 () Bool)

(declare-fun e!1182600 () Bool)

(assert (=> b!1850669 (=> (not res!830761) (not e!1182600))))

(declare-datatypes ((String!23492 0))(
  ( (String!23493 (value!115120 String)) )
))
(declare-datatypes ((List!20548 0))(
  ( (Nil!20476) (Cons!20476 (h!25877 (_ BitVec 16)) (t!172335 List!20548)) )
))
(declare-datatypes ((TokenValue!3785 0))(
  ( (FloatLiteralValue!7570 (text!26940 List!20548)) (TokenValueExt!3784 (__x!12873 Int)) (Broken!18925 (value!115121 List!20548)) (Object!3856) (End!3785) (Def!3785) (Underscore!3785) (Match!3785) (Else!3785) (Error!3785) (Case!3785) (If!3785) (Extends!3785) (Abstract!3785) (Class!3785) (Val!3785) (DelimiterValue!7570 (del!3845 List!20548)) (KeywordValue!3791 (value!115122 List!20548)) (CommentValue!7570 (value!115123 List!20548)) (WhitespaceValue!7570 (value!115124 List!20548)) (IndentationValue!3785 (value!115125 List!20548)) (String!23494) (Int32!3785) (Broken!18926 (value!115126 List!20548)) (Boolean!3786) (Unit!35126) (OperatorValue!3788 (op!3845 List!20548)) (IdentifierValue!7570 (value!115127 List!20548)) (IdentifierValue!7571 (value!115128 List!20548)) (WhitespaceValue!7571 (value!115129 List!20548)) (True!7570) (False!7570) (Broken!18927 (value!115130 List!20548)) (Broken!18928 (value!115131 List!20548)) (True!7571) (RightBrace!3785) (RightBracket!3785) (Colon!3785) (Null!3785) (Comma!3785) (LeftBracket!3785) (False!7571) (LeftBrace!3785) (ImaginaryLiteralValue!3785 (text!26941 List!20548)) (StringLiteralValue!11355 (value!115132 List!20548)) (EOFValue!3785 (value!115133 List!20548)) (IdentValue!3785 (value!115134 List!20548)) (DelimiterValue!7571 (value!115135 List!20548)) (DedentValue!3785 (value!115136 List!20548)) (NewLineValue!3785 (value!115137 List!20548)) (IntegerValue!11355 (value!115138 (_ BitVec 32)) (text!26942 List!20548)) (IntegerValue!11356 (value!115139 Int) (text!26943 List!20548)) (Times!3785) (Or!3785) (Equal!3785) (Minus!3785) (Broken!18929 (value!115140 List!20548)) (And!3785) (Div!3785) (LessEqual!3785) (Mod!3785) (Concat!8817) (Not!3785) (Plus!3785) (SpaceValue!3785 (value!115141 List!20548)) (IntegerValue!11357 (value!115142 Int) (text!26944 List!20548)) (StringLiteralValue!11356 (text!26945 List!20548)) (FloatLiteralValue!7571 (text!26946 List!20548)) (BytesLiteralValue!3785 (value!115143 List!20548)) (CommentValue!7571 (value!115144 List!20548)) (StringLiteralValue!11357 (value!115145 List!20548)) (ErrorTokenValue!3785 (msg!3846 List!20548)) )
))
(declare-datatypes ((List!20549 0))(
  ( (Nil!20477) (Cons!20477 (h!25878 C!10212) (t!172336 List!20549)) )
))
(declare-datatypes ((IArray!13557 0))(
  ( (IArray!13558 (innerList!6836 List!20549)) )
))
(declare-datatypes ((Conc!6776 0))(
  ( (Node!6776 (left!16453 Conc!6776) (right!16783 Conc!6776) (csize!13782 Int) (cheight!6987 Int)) (Leaf!9916 (xs!9652 IArray!13557) (csize!13783 Int)) (Empty!6776) )
))
(declare-datatypes ((BalanceConc!13474 0))(
  ( (BalanceConc!13475 (c!302015 Conc!6776)) )
))
(declare-datatypes ((TokenValueInjection!7186 0))(
  ( (TokenValueInjection!7187 (toValue!5240 Int) (toChars!5099 Int)) )
))
(declare-datatypes ((Rule!7138 0))(
  ( (Rule!7139 (regex!3669 Regex!5031) (tag!4083 String!23492) (isSeparator!3669 Bool) (transformation!3669 TokenValueInjection!7186)) )
))
(declare-datatypes ((List!20550 0))(
  ( (Nil!20478) (Cons!20478 (h!25879 Rule!7138) (t!172337 List!20550)) )
))
(declare-fun rs!164 () List!20550)

(declare-fun isEmpty!12789 (List!20550) Bool)

(assert (=> b!1850669 (= res!830761 (not (isEmpty!12789 rs!164)))))

(declare-fun b!1850670 () Bool)

(declare-fun e!1182609 () Bool)

(declare-fun e!1182599 () Bool)

(assert (=> b!1850670 (= e!1182609 e!1182599)))

(declare-fun b!1850671 () Bool)

(declare-fun e!1182587 () Bool)

(declare-fun e!1182597 () Bool)

(assert (=> b!1850671 (= e!1182587 e!1182597)))

(declare-fun b!1850672 () Bool)

(declare-fun e!1182607 () Bool)

(declare-fun e!1182592 () Bool)

(declare-fun tp!523779 () Bool)

(assert (=> b!1850672 (= e!1182607 (and e!1182592 tp!523779))))

(declare-fun b!1850673 () Bool)

(declare-fun res!830759 () Bool)

(assert (=> b!1850673 (=> (not res!830759) (not e!1182600))))

(declare-datatypes ((LexerInterface!3292 0))(
  ( (LexerInterfaceExt!3289 (__x!12874 Int)) (Lexer!3290) )
))
(declare-fun thiss!10908 () LexerInterface!3292)

(declare-fun rulesInvariant!2960 (LexerInterface!3292 List!20550) Bool)

(assert (=> b!1850673 (= res!830759 (rulesInvariant!2960 thiss!10908 rs!164))))

(declare-fun e!1182601 () Bool)

(declare-fun tp!523773 () Bool)

(declare-fun e!1182594 () Bool)

(declare-fun tp!523768 () Bool)

(declare-fun array_inv!2057 (array!6433) Bool)

(declare-fun array_inv!2058 (array!6435) Bool)

(assert (=> b!1850674 (= e!1182601 (and tp!523761 tp!523773 tp!523768 (array_inv!2057 (_keys!2168 (v!25980 (underlying!3961 (v!25981 (underlying!3962 (cache!2199 cacheUp!391))))))) (array_inv!2058 (_values!2153 (v!25980 (underlying!3961 (v!25981 (underlying!3962 (cache!2199 cacheUp!391))))))) e!1182594))))

(declare-fun e!1182605 () Bool)

(assert (=> b!1850675 (= e!1182605 (and tp!523774 tp!523782))))

(declare-fun res!830760 () Bool)

(assert (=> start!184696 (=> (not res!830760) (not e!1182600))))

(get-info :version)

(assert (=> start!184696 (= res!830760 ((_ is Lexer!3290) thiss!10908))))

(assert (=> start!184696 e!1182600))

(assert (=> start!184696 e!1182607))

(declare-datatypes ((Token!6892 0))(
  ( (Token!6893 (value!115146 TokenValue!3785) (rule!5863 Rule!7138) (size!16172 Int) (originalCharacters!4477 List!20549)) )
))
(declare-fun t!6207 () Token!6892)

(declare-fun e!1182585 () Bool)

(declare-fun inv!26865 (Token!6892) Bool)

(assert (=> start!184696 (and (inv!26865 t!6207) e!1182585)))

(assert (=> start!184696 true))

(declare-datatypes ((tuple3!1884 0))(
  ( (tuple3!1885 (_1!11274 Regex!5031) (_2!11274 Context!1882) (_3!1406 C!10212)) )
))
(declare-datatypes ((tuple2!19736 0))(
  ( (tuple2!19737 (_1!11275 tuple3!1884) (_2!11275 (InoxSet Context!1882))) )
))
(declare-datatypes ((List!20551 0))(
  ( (Nil!20479) (Cons!20479 (h!25880 tuple2!19736) (t!172338 List!20551)) )
))
(declare-datatypes ((array!6437 0))(
  ( (array!6438 (arr!2858 (Array (_ BitVec 32) List!20551)) (size!16173 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3750 0))(
  ( (LongMapFixedSize!3751 (defaultEntry!2235 Int) (mask!5558 (_ BitVec 32)) (extraKeys!2122 (_ BitVec 32)) (zeroValue!2132 List!20551) (minValue!2132 List!20551) (_size!3831 (_ BitVec 32)) (_keys!2169 array!6433) (_values!2154 array!6437) (_vacant!1936 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7385 0))(
  ( (Cell!7386 (v!25982 LongMapFixedSize!3750)) )
))
(declare-datatypes ((MutLongMap!1875 0))(
  ( (LongMap!1875 (underlying!3963 Cell!7385)) (MutLongMapExt!1874 (__x!12875 Int)) )
))
(declare-datatypes ((Cell!7387 0))(
  ( (Cell!7388 (v!25983 MutLongMap!1875)) )
))
(declare-datatypes ((Hashable!1819 0))(
  ( (HashableExt!1818 (__x!12876 Int)) )
))
(declare-datatypes ((MutableMap!1819 0))(
  ( (MutableMapExt!1818 (__x!12877 Int)) (HashMap!1819 (underlying!3964 Cell!7387) (hashF!3738 Hashable!1819) (_size!3832 (_ BitVec 32)) (defaultValue!1979 Int)) )
))
(declare-datatypes ((CacheDown!1116 0))(
  ( (CacheDown!1117 (cache!2200 MutableMap!1819)) )
))
(declare-fun cacheDown!404 () CacheDown!1116)

(declare-fun inv!26866 (CacheDown!1116) Bool)

(assert (=> start!184696 (and (inv!26866 cacheDown!404) e!1182609)))

(declare-fun inv!26867 (CacheUp!1118) Bool)

(assert (=> start!184696 (and (inv!26867 cacheUp!391) e!1182587)))

(declare-fun b!1850676 () Bool)

(declare-fun tp!523762 () Bool)

(assert (=> b!1850676 (= e!1182594 (and tp!523762 mapRes!8746))))

(declare-fun condMapEmpty!8747 () Bool)

(declare-fun mapDefault!8747 () List!20547)

(assert (=> b!1850676 (= condMapEmpty!8747 (= (arr!2857 (_values!2153 (v!25980 (underlying!3961 (v!25981 (underlying!3962 (cache!2199 cacheUp!391))))))) ((as const (Array (_ BitVec 32) List!20547)) mapDefault!8747)))))

(declare-fun tp!523780 () Bool)

(declare-fun e!1182593 () Bool)

(declare-fun tp!523763 () Bool)

(declare-fun e!1182608 () Bool)

(declare-fun array_inv!2059 (array!6437) Bool)

(assert (=> b!1850677 (= e!1182593 (and tp!523775 tp!523763 tp!523780 (array_inv!2057 (_keys!2169 (v!25982 (underlying!3963 (v!25983 (underlying!3964 (cache!2200 cacheDown!404))))))) (array_inv!2059 (_values!2154 (v!25982 (underlying!3963 (v!25983 (underlying!3964 (cache!2200 cacheDown!404))))))) e!1182608))))

(declare-fun mapNonEmpty!8747 () Bool)

(declare-fun mapRes!8747 () Bool)

(declare-fun tp!523769 () Bool)

(declare-fun tp!523767 () Bool)

(assert (=> mapNonEmpty!8747 (= mapRes!8747 (and tp!523769 tp!523767))))

(declare-fun mapKey!8746 () (_ BitVec 32))

(declare-fun mapValue!8746 () List!20551)

(declare-fun mapRest!8747 () (Array (_ BitVec 32) List!20551))

(assert (=> mapNonEmpty!8747 (= (arr!2858 (_values!2154 (v!25982 (underlying!3963 (v!25983 (underlying!3964 (cache!2200 cacheDown!404))))))) (store mapRest!8747 mapKey!8746 mapValue!8746))))

(declare-fun b!1850678 () Bool)

(declare-fun e!1182598 () Bool)

(declare-fun e!1182602 () Bool)

(assert (=> b!1850678 (= e!1182598 e!1182602)))

(declare-fun b!1850679 () Bool)

(assert (=> b!1850679 (= e!1182602 e!1182593)))

(declare-fun e!1182586 () Bool)

(declare-fun b!1850680 () Bool)

(declare-fun e!1182610 () Bool)

(declare-fun tp!523764 () Bool)

(declare-fun inv!26861 (String!23492) Bool)

(declare-fun inv!26868 (TokenValueInjection!7186) Bool)

(assert (=> b!1850680 (= e!1182610 (and tp!523764 (inv!26861 (tag!4083 (rule!5863 t!6207))) (inv!26868 (transformation!3669 (rule!5863 t!6207))) e!1182586))))

(declare-fun b!1850681 () Bool)

(declare-fun e!1182589 () Bool)

(declare-fun e!1182603 () Bool)

(assert (=> b!1850681 (= e!1182589 e!1182603)))

(declare-fun b!1850682 () Bool)

(assert (=> b!1850682 (= e!1182603 e!1182601)))

(declare-fun e!1182591 () Bool)

(assert (=> b!1850683 (= e!1182599 (and e!1182591 tp!523771))))

(declare-fun tp!523765 () Bool)

(declare-fun b!1850684 () Bool)

(declare-fun inv!21 (TokenValue!3785) Bool)

(assert (=> b!1850684 (= e!1182585 (and (inv!21 (value!115146 t!6207)) e!1182610 tp!523765))))

(declare-fun b!1850685 () Bool)

(declare-fun lt!715496 () MutLongMap!1875)

(assert (=> b!1850685 (= e!1182591 (and e!1182598 ((_ is LongMap!1875) lt!715496)))))

(assert (=> b!1850685 (= lt!715496 (v!25983 (underlying!3964 (cache!2200 cacheDown!404))))))

(assert (=> b!1850686 (= e!1182586 (and tp!523778 tp!523776))))

(declare-fun e!1182596 () Bool)

(assert (=> b!1850687 (= e!1182597 (and e!1182596 tp!523766))))

(declare-fun mapIsEmpty!8746 () Bool)

(assert (=> mapIsEmpty!8746 mapRes!8747))

(declare-fun b!1850688 () Bool)

(declare-fun tp!523777 () Bool)

(assert (=> b!1850688 (= e!1182608 (and tp!523777 mapRes!8747))))

(declare-fun condMapEmpty!8746 () Bool)

(declare-fun mapDefault!8746 () List!20551)

(assert (=> b!1850688 (= condMapEmpty!8746 (= (arr!2858 (_values!2154 (v!25982 (underlying!3963 (v!25983 (underlying!3964 (cache!2200 cacheDown!404))))))) ((as const (Array (_ BitVec 32) List!20551)) mapDefault!8746)))))

(declare-fun b!1850689 () Bool)

(declare-fun lt!715497 () MutLongMap!1874)

(assert (=> b!1850689 (= e!1182596 (and e!1182589 ((_ is LongMap!1874) lt!715497)))))

(assert (=> b!1850689 (= lt!715497 (v!25981 (underlying!3962 (cache!2199 cacheUp!391))))))

(declare-fun b!1850690 () Bool)

(declare-fun lt!715498 () Int)

(assert (=> b!1850690 (= e!1182600 (and (= lt!715498 1) (>= 0 lt!715498)))))

(declare-datatypes ((List!20552 0))(
  ( (Nil!20480) (Cons!20480 (h!25881 Token!6892) (t!172339 List!20552)) )
))
(declare-datatypes ((IArray!13559 0))(
  ( (IArray!13560 (innerList!6837 List!20552)) )
))
(declare-datatypes ((Conc!6777 0))(
  ( (Node!6777 (left!16454 Conc!6777) (right!16784 Conc!6777) (csize!13784 Int) (cheight!6988 Int)) (Leaf!9917 (xs!9653 IArray!13559) (csize!13785 Int)) (Empty!6777) )
))
(declare-datatypes ((BalanceConc!13476 0))(
  ( (BalanceConc!13477 (c!302016 Conc!6777)) )
))
(declare-fun size!16174 (BalanceConc!13476) Int)

(declare-datatypes ((tuple2!19738 0))(
  ( (tuple2!19739 (_1!11276 BalanceConc!13476) (_2!11276 BalanceConc!13474)) )
))
(declare-datatypes ((tuple3!1886 0))(
  ( (tuple3!1887 (_1!11277 tuple2!19738) (_2!11277 CacheUp!1118) (_3!1407 CacheDown!1116)) )
))
(declare-fun lexV1Mem!7 (LexerInterface!3292 List!20550 BalanceConc!13474 CacheUp!1118 CacheDown!1116) tuple3!1886)

(declare-fun print!1427 (LexerInterface!3292 BalanceConc!13476) BalanceConc!13474)

(declare-fun singletonSeq!1799 (Token!6892) BalanceConc!13476)

(assert (=> b!1850690 (= lt!715498 (size!16174 (_1!11276 (_1!11277 (lexV1Mem!7 thiss!10908 rs!164 (print!1427 thiss!10908 (singletonSeq!1799 t!6207)) cacheUp!391 cacheDown!404)))))))

(declare-fun b!1850691 () Bool)

(declare-fun tp!523770 () Bool)

(assert (=> b!1850691 (= e!1182592 (and tp!523770 (inv!26861 (tag!4083 (h!25879 rs!164))) (inv!26868 (transformation!3669 (h!25879 rs!164))) e!1182605))))

(declare-fun mapIsEmpty!8747 () Bool)

(assert (=> mapIsEmpty!8747 mapRes!8746))

(assert (= (and start!184696 res!830760) b!1850669))

(assert (= (and b!1850669 res!830761) b!1850673))

(assert (= (and b!1850673 res!830759) b!1850690))

(assert (= b!1850691 b!1850675))

(assert (= b!1850672 b!1850691))

(assert (= (and start!184696 ((_ is Cons!20478) rs!164)) b!1850672))

(assert (= b!1850680 b!1850686))

(assert (= b!1850684 b!1850680))

(assert (= start!184696 b!1850684))

(assert (= (and b!1850688 condMapEmpty!8746) mapIsEmpty!8746))

(assert (= (and b!1850688 (not condMapEmpty!8746)) mapNonEmpty!8747))

(assert (= b!1850677 b!1850688))

(assert (= b!1850679 b!1850677))

(assert (= b!1850678 b!1850679))

(assert (= (and b!1850685 ((_ is LongMap!1875) (v!25983 (underlying!3964 (cache!2200 cacheDown!404))))) b!1850678))

(assert (= b!1850683 b!1850685))

(assert (= (and b!1850670 ((_ is HashMap!1819) (cache!2200 cacheDown!404))) b!1850683))

(assert (= start!184696 b!1850670))

(assert (= (and b!1850676 condMapEmpty!8747) mapIsEmpty!8747))

(assert (= (and b!1850676 (not condMapEmpty!8747)) mapNonEmpty!8746))

(assert (= b!1850674 b!1850676))

(assert (= b!1850682 b!1850674))

(assert (= b!1850681 b!1850682))

(assert (= (and b!1850689 ((_ is LongMap!1874) (v!25981 (underlying!3962 (cache!2199 cacheUp!391))))) b!1850681))

(assert (= b!1850687 b!1850689))

(assert (= (and b!1850671 ((_ is HashMap!1818) (cache!2199 cacheUp!391))) b!1850687))

(assert (= start!184696 b!1850671))

(declare-fun m!2277305 () Bool)

(assert (=> b!1850690 m!2277305))

(assert (=> b!1850690 m!2277305))

(declare-fun m!2277307 () Bool)

(assert (=> b!1850690 m!2277307))

(assert (=> b!1850690 m!2277307))

(declare-fun m!2277309 () Bool)

(assert (=> b!1850690 m!2277309))

(declare-fun m!2277311 () Bool)

(assert (=> b!1850690 m!2277311))

(declare-fun m!2277313 () Bool)

(assert (=> b!1850674 m!2277313))

(declare-fun m!2277315 () Bool)

(assert (=> b!1850674 m!2277315))

(declare-fun m!2277317 () Bool)

(assert (=> b!1850680 m!2277317))

(declare-fun m!2277319 () Bool)

(assert (=> b!1850680 m!2277319))

(declare-fun m!2277321 () Bool)

(assert (=> b!1850684 m!2277321))

(declare-fun m!2277323 () Bool)

(assert (=> mapNonEmpty!8746 m!2277323))

(declare-fun m!2277325 () Bool)

(assert (=> b!1850669 m!2277325))

(declare-fun m!2277327 () Bool)

(assert (=> mapNonEmpty!8747 m!2277327))

(declare-fun m!2277329 () Bool)

(assert (=> b!1850691 m!2277329))

(declare-fun m!2277331 () Bool)

(assert (=> b!1850691 m!2277331))

(declare-fun m!2277333 () Bool)

(assert (=> b!1850673 m!2277333))

(declare-fun m!2277335 () Bool)

(assert (=> b!1850677 m!2277335))

(declare-fun m!2277337 () Bool)

(assert (=> b!1850677 m!2277337))

(declare-fun m!2277339 () Bool)

(assert (=> start!184696 m!2277339))

(declare-fun m!2277341 () Bool)

(assert (=> start!184696 m!2277341))

(declare-fun m!2277343 () Bool)

(assert (=> start!184696 m!2277343))

(check-sat (not b!1850674) (not b!1850672) b_and!143959 b_and!143947 (not b!1850680) (not b_next!52429) (not b_next!52427) (not b_next!52425) b_and!143949 (not b!1850673) b_and!143957 (not b!1850690) b_and!143945 (not b_next!52431) (not b_next!52433) (not start!184696) (not b_next!52423) (not b!1850684) (not b!1850691) (not b!1850677) (not b!1850669) (not mapNonEmpty!8747) (not b_next!52421) (not b!1850676) (not b!1850688) (not mapNonEmpty!8746) b_and!143953 (not b_next!52419) b_and!143955 b_and!143951)
(check-sat b_and!143959 b_and!143947 (not b_next!52423) (not b_next!52429) (not b_next!52427) (not b_next!52425) b_and!143949 b_and!143957 (not b_next!52421) b_and!143945 (not b_next!52431) (not b_next!52433) b_and!143953 (not b_next!52419) b_and!143955 b_and!143951)
