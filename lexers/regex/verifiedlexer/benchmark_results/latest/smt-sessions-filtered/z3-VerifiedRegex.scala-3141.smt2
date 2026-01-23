; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184704 () Bool)

(assert start!184704)

(declare-fun b!1850977 () Bool)

(declare-fun b_free!51779 () Bool)

(declare-fun b_next!52483 () Bool)

(assert (=> b!1850977 (= b_free!51779 (not b_next!52483))))

(declare-fun tp!524030 () Bool)

(declare-fun b_and!144009 () Bool)

(assert (=> b!1850977 (= tp!524030 b_and!144009)))

(declare-fun b!1850976 () Bool)

(declare-fun b_free!51781 () Bool)

(declare-fun b_next!52485 () Bool)

(assert (=> b!1850976 (= b_free!51781 (not b_next!52485))))

(declare-fun tp!524031 () Bool)

(declare-fun b_and!144011 () Bool)

(assert (=> b!1850976 (= tp!524031 b_and!144011)))

(declare-fun b_free!51783 () Bool)

(declare-fun b_next!52487 () Bool)

(assert (=> b!1850976 (= b_free!51783 (not b_next!52487))))

(declare-fun tp!524027 () Bool)

(declare-fun b_and!144013 () Bool)

(assert (=> b!1850976 (= tp!524027 b_and!144013)))

(declare-fun b!1850972 () Bool)

(declare-fun b_free!51785 () Bool)

(declare-fun b_next!52489 () Bool)

(assert (=> b!1850972 (= b_free!51785 (not b_next!52489))))

(declare-fun tp!524040 () Bool)

(declare-fun b_and!144015 () Bool)

(assert (=> b!1850972 (= tp!524040 b_and!144015)))

(declare-fun b!1850971 () Bool)

(declare-fun b_free!51787 () Bool)

(declare-fun b_next!52491 () Bool)

(assert (=> b!1850971 (= b_free!51787 (not b_next!52491))))

(declare-fun tp!524044 () Bool)

(declare-fun b_and!144017 () Bool)

(assert (=> b!1850971 (= tp!524044 b_and!144017)))

(declare-fun b!1850989 () Bool)

(declare-fun b_free!51789 () Bool)

(declare-fun b_next!52493 () Bool)

(assert (=> b!1850989 (= b_free!51789 (not b_next!52493))))

(declare-fun tp!524028 () Bool)

(declare-fun b_and!144019 () Bool)

(assert (=> b!1850989 (= tp!524028 b_and!144019)))

(declare-fun b!1850978 () Bool)

(declare-fun b_free!51791 () Bool)

(declare-fun b_next!52495 () Bool)

(assert (=> b!1850978 (= b_free!51791 (not b_next!52495))))

(declare-fun tp!524042 () Bool)

(declare-fun b_and!144021 () Bool)

(assert (=> b!1850978 (= tp!524042 b_and!144021)))

(declare-fun b_free!51793 () Bool)

(declare-fun b_next!52497 () Bool)

(assert (=> b!1850978 (= b_free!51793 (not b_next!52497))))

(declare-fun tp!524035 () Bool)

(declare-fun b_and!144023 () Bool)

(assert (=> b!1850978 (= tp!524035 b_and!144023)))

(declare-fun b!1850967 () Bool)

(declare-fun e!1182922 () Bool)

(declare-fun e!1182933 () Bool)

(declare-fun tp!524046 () Bool)

(assert (=> b!1850967 (= e!1182922 (and e!1182933 tp!524046))))

(declare-fun b!1850968 () Bool)

(declare-fun e!1182934 () Bool)

(declare-fun tp!524041 () Bool)

(declare-fun mapRes!8770 () Bool)

(assert (=> b!1850968 (= e!1182934 (and tp!524041 mapRes!8770))))

(declare-fun condMapEmpty!8771 () Bool)

(declare-datatypes ((array!6455 0))(
  ( (array!6456 (arr!2867 (Array (_ BitVec 32) (_ BitVec 64))) (size!16186 (_ BitVec 32))) )
))
(declare-datatypes ((C!10220 0))(
  ( (C!10221 (val!5836 Int)) )
))
(declare-datatypes ((Regex!5035 0))(
  ( (ElementMatch!5035 (c!302024 C!10220)) (Concat!8823 (regOne!10582 Regex!5035) (regTwo!10582 Regex!5035)) (EmptyExpr!5035) (Star!5035 (reg!5364 Regex!5035)) (EmptyLang!5035) (Union!5035 (regOne!10583 Regex!5035) (regTwo!10583 Regex!5035)) )
))
(declare-datatypes ((List!20568 0))(
  ( (Nil!20496) (Cons!20496 (h!25897 Regex!5035) (t!172355 List!20568)) )
))
(declare-datatypes ((Context!1890 0))(
  ( (Context!1891 (exprs!1445 List!20568)) )
))
(declare-datatypes ((tuple3!1896 0))(
  ( (tuple3!1897 (_1!11292 Regex!5035) (_2!11292 Context!1890) (_3!1412 C!10220)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19760 0))(
  ( (tuple2!19761 (_1!11293 tuple3!1896) (_2!11293 (InoxSet Context!1890))) )
))
(declare-datatypes ((List!20569 0))(
  ( (Nil!20497) (Cons!20497 (h!25898 tuple2!19760) (t!172356 List!20569)) )
))
(declare-datatypes ((array!6457 0))(
  ( (array!6458 (arr!2868 (Array (_ BitVec 32) List!20569)) (size!16187 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3762 0))(
  ( (LongMapFixedSize!3763 (defaultEntry!2241 Int) (mask!5566 (_ BitVec 32)) (extraKeys!2128 (_ BitVec 32)) (zeroValue!2138 List!20569) (minValue!2138 List!20569) (_size!3843 (_ BitVec 32)) (_keys!2175 array!6455) (_values!2160 array!6457) (_vacant!1942 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7409 0))(
  ( (Cell!7410 (v!25994 LongMapFixedSize!3762)) )
))
(declare-datatypes ((MutLongMap!1881 0))(
  ( (LongMap!1881 (underlying!3975 Cell!7409)) (MutLongMapExt!1880 (__x!12896 Int)) )
))
(declare-datatypes ((Cell!7411 0))(
  ( (Cell!7412 (v!25995 MutLongMap!1881)) )
))
(declare-datatypes ((Hashable!1825 0))(
  ( (HashableExt!1824 (__x!12897 Int)) )
))
(declare-datatypes ((MutableMap!1825 0))(
  ( (MutableMapExt!1824 (__x!12898 Int)) (HashMap!1825 (underlying!3976 Cell!7411) (hashF!3744 Hashable!1825) (_size!3844 (_ BitVec 32)) (defaultValue!1985 Int)) )
))
(declare-datatypes ((CacheDown!1122 0))(
  ( (CacheDown!1123 (cache!2206 MutableMap!1825)) )
))
(declare-fun cacheDown!404 () CacheDown!1122)

(declare-fun mapDefault!8771 () List!20569)

(assert (=> b!1850968 (= condMapEmpty!8771 (= (arr!2868 (_values!2160 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))) ((as const (Array (_ BitVec 32) List!20569)) mapDefault!8771)))))

(declare-fun b!1850969 () Bool)

(declare-fun res!830818 () Bool)

(declare-fun e!1182921 () Bool)

(assert (=> b!1850969 (=> (not res!830818) (not e!1182921))))

(declare-datatypes ((List!20570 0))(
  ( (Nil!20498) (Cons!20498 (h!25899 (_ BitVec 16)) (t!172357 List!20570)) )
))
(declare-datatypes ((TokenValue!3788 0))(
  ( (FloatLiteralValue!7576 (text!26961 List!20570)) (TokenValueExt!3787 (__x!12899 Int)) (Broken!18940 (value!115207 List!20570)) (Object!3859) (End!3788) (Def!3788) (Underscore!3788) (Match!3788) (Else!3788) (Error!3788) (Case!3788) (If!3788) (Extends!3788) (Abstract!3788) (Class!3788) (Val!3788) (DelimiterValue!7576 (del!3848 List!20570)) (KeywordValue!3794 (value!115208 List!20570)) (CommentValue!7576 (value!115209 List!20570)) (WhitespaceValue!7576 (value!115210 List!20570)) (IndentationValue!3788 (value!115211 List!20570)) (String!23509) (Int32!3788) (Broken!18941 (value!115212 List!20570)) (Boolean!3789) (Unit!35129) (OperatorValue!3791 (op!3848 List!20570)) (IdentifierValue!7576 (value!115213 List!20570)) (IdentifierValue!7577 (value!115214 List!20570)) (WhitespaceValue!7577 (value!115215 List!20570)) (True!7576) (False!7576) (Broken!18942 (value!115216 List!20570)) (Broken!18943 (value!115217 List!20570)) (True!7577) (RightBrace!3788) (RightBracket!3788) (Colon!3788) (Null!3788) (Comma!3788) (LeftBracket!3788) (False!7577) (LeftBrace!3788) (ImaginaryLiteralValue!3788 (text!26962 List!20570)) (StringLiteralValue!11364 (value!115218 List!20570)) (EOFValue!3788 (value!115219 List!20570)) (IdentValue!3788 (value!115220 List!20570)) (DelimiterValue!7577 (value!115221 List!20570)) (DedentValue!3788 (value!115222 List!20570)) (NewLineValue!3788 (value!115223 List!20570)) (IntegerValue!11364 (value!115224 (_ BitVec 32)) (text!26963 List!20570)) (IntegerValue!11365 (value!115225 Int) (text!26964 List!20570)) (Times!3788) (Or!3788) (Equal!3788) (Minus!3788) (Broken!18944 (value!115226 List!20570)) (And!3788) (Div!3788) (LessEqual!3788) (Mod!3788) (Concat!8824) (Not!3788) (Plus!3788) (SpaceValue!3788 (value!115227 List!20570)) (IntegerValue!11366 (value!115228 Int) (text!26965 List!20570)) (StringLiteralValue!11365 (text!26966 List!20570)) (FloatLiteralValue!7577 (text!26967 List!20570)) (BytesLiteralValue!3788 (value!115229 List!20570)) (CommentValue!7577 (value!115230 List!20570)) (StringLiteralValue!11366 (value!115231 List!20570)) (ErrorTokenValue!3788 (msg!3849 List!20570)) )
))
(declare-datatypes ((List!20571 0))(
  ( (Nil!20499) (Cons!20499 (h!25900 C!10220) (t!172358 List!20571)) )
))
(declare-datatypes ((IArray!13569 0))(
  ( (IArray!13570 (innerList!6842 List!20571)) )
))
(declare-datatypes ((Conc!6782 0))(
  ( (Node!6782 (left!16461 Conc!6782) (right!16791 Conc!6782) (csize!13794 Int) (cheight!6993 Int)) (Leaf!9924 (xs!9658 IArray!13569) (csize!13795 Int)) (Empty!6782) )
))
(declare-datatypes ((BalanceConc!13486 0))(
  ( (BalanceConc!13487 (c!302025 Conc!6782)) )
))
(declare-datatypes ((String!23510 0))(
  ( (String!23511 (value!115232 String)) )
))
(declare-datatypes ((TokenValueInjection!7192 0))(
  ( (TokenValueInjection!7193 (toValue!5243 Int) (toChars!5102 Int)) )
))
(declare-datatypes ((Rule!7144 0))(
  ( (Rule!7145 (regex!3672 Regex!5035) (tag!4086 String!23510) (isSeparator!3672 Bool) (transformation!3672 TokenValueInjection!7192)) )
))
(declare-datatypes ((List!20572 0))(
  ( (Nil!20500) (Cons!20500 (h!25901 Rule!7144) (t!172359 List!20572)) )
))
(declare-fun rs!164 () List!20572)

(declare-fun isEmpty!12793 (List!20572) Bool)

(assert (=> b!1850969 (= res!830818 (not (isEmpty!12793 rs!164)))))

(declare-fun b!1850970 () Bool)

(declare-fun e!1182924 () Bool)

(declare-fun e!1182916 () Bool)

(assert (=> b!1850970 (= e!1182924 e!1182916)))

(declare-fun e!1182930 () Bool)

(declare-fun tp!524043 () Bool)

(declare-fun e!1182932 () Bool)

(declare-fun tp!524036 () Bool)

(declare-datatypes ((Hashable!1826 0))(
  ( (HashableExt!1825 (__x!12900 Int)) )
))
(declare-datatypes ((tuple2!19762 0))(
  ( (tuple2!19763 (_1!11294 Context!1890) (_2!11294 C!10220)) )
))
(declare-datatypes ((tuple2!19764 0))(
  ( (tuple2!19765 (_1!11295 tuple2!19762) (_2!11295 (InoxSet Context!1890))) )
))
(declare-datatypes ((List!20573 0))(
  ( (Nil!20501) (Cons!20501 (h!25902 tuple2!19764) (t!172360 List!20573)) )
))
(declare-datatypes ((array!6459 0))(
  ( (array!6460 (arr!2869 (Array (_ BitVec 32) List!20573)) (size!16188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3764 0))(
  ( (LongMapFixedSize!3765 (defaultEntry!2242 Int) (mask!5567 (_ BitVec 32)) (extraKeys!2129 (_ BitVec 32)) (zeroValue!2139 List!20573) (minValue!2139 List!20573) (_size!3845 (_ BitVec 32)) (_keys!2176 array!6455) (_values!2161 array!6459) (_vacant!1943 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7413 0))(
  ( (Cell!7414 (v!25996 LongMapFixedSize!3764)) )
))
(declare-datatypes ((MutLongMap!1882 0))(
  ( (LongMap!1882 (underlying!3977 Cell!7413)) (MutLongMapExt!1881 (__x!12901 Int)) )
))
(declare-datatypes ((Cell!7415 0))(
  ( (Cell!7416 (v!25997 MutLongMap!1882)) )
))
(declare-datatypes ((MutableMap!1826 0))(
  ( (MutableMapExt!1825 (__x!12902 Int)) (HashMap!1826 (underlying!3978 Cell!7415) (hashF!3745 Hashable!1826) (_size!3846 (_ BitVec 32)) (defaultValue!1986 Int)) )
))
(declare-datatypes ((CacheUp!1126 0))(
  ( (CacheUp!1127 (cache!2207 MutableMap!1826)) )
))
(declare-fun cacheUp!391 () CacheUp!1126)

(declare-fun array_inv!2063 (array!6455) Bool)

(declare-fun array_inv!2064 (array!6459) Bool)

(assert (=> b!1850971 (= e!1182932 (and tp!524044 tp!524043 tp!524036 (array_inv!2063 (_keys!2176 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))) (array_inv!2064 (_values!2161 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))) e!1182930))))

(declare-fun tp!524039 () Bool)

(declare-fun e!1182908 () Bool)

(declare-fun tp!524033 () Bool)

(declare-fun array_inv!2065 (array!6457) Bool)

(assert (=> b!1850972 (= e!1182908 (and tp!524040 tp!524033 tp!524039 (array_inv!2063 (_keys!2175 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))) (array_inv!2065 (_values!2160 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))) e!1182934))))

(declare-fun tp!524029 () Bool)

(declare-fun e!1182927 () Bool)

(declare-fun b!1850973 () Bool)

(declare-fun inv!26878 (String!23510) Bool)

(declare-fun inv!26879 (TokenValueInjection!7192) Bool)

(assert (=> b!1850973 (= e!1182933 (and tp!524029 (inv!26878 (tag!4086 (h!25901 rs!164))) (inv!26879 (transformation!3672 (h!25901 rs!164))) e!1182927))))

(declare-fun b!1850974 () Bool)

(declare-fun e!1182911 () Bool)

(assert (=> b!1850974 (= e!1182911 e!1182932)))

(declare-fun b!1850975 () Bool)

(declare-fun e!1182909 () Bool)

(declare-fun e!1182928 () Bool)

(assert (=> b!1850975 (= e!1182909 e!1182928)))

(declare-fun e!1182917 () Bool)

(assert (=> b!1850976 (= e!1182917 (and tp!524031 tp!524027))))

(declare-fun mapNonEmpty!8770 () Bool)

(declare-fun tp!524026 () Bool)

(declare-fun tp!524038 () Bool)

(assert (=> mapNonEmpty!8770 (= mapRes!8770 (and tp!524026 tp!524038))))

(declare-fun mapValue!8770 () List!20569)

(declare-fun mapRest!8770 () (Array (_ BitVec 32) List!20569))

(declare-fun mapKey!8771 () (_ BitVec 32))

(assert (=> mapNonEmpty!8770 (= (arr!2868 (_values!2160 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))) (store mapRest!8770 mapKey!8771 mapValue!8770))))

(declare-fun e!1182914 () Bool)

(declare-fun e!1182925 () Bool)

(assert (=> b!1850977 (= e!1182914 (and e!1182925 tp!524030))))

(assert (=> b!1850978 (= e!1182927 (and tp!524042 tp!524035))))

(declare-fun res!830817 () Bool)

(assert (=> start!184704 (=> (not res!830817) (not e!1182921))))

(declare-datatypes ((LexerInterface!3294 0))(
  ( (LexerInterfaceExt!3291 (__x!12903 Int)) (Lexer!3292) )
))
(declare-fun thiss!10908 () LexerInterface!3294)

(get-info :version)

(assert (=> start!184704 (= res!830817 ((_ is Lexer!3292) thiss!10908))))

(assert (=> start!184704 e!1182921))

(assert (=> start!184704 e!1182922))

(declare-datatypes ((Token!6898 0))(
  ( (Token!6899 (value!115233 TokenValue!3788) (rule!5866 Rule!7144) (size!16189 Int) (originalCharacters!4480 List!20571)) )
))
(declare-fun t!6207 () Token!6898)

(declare-fun e!1182913 () Bool)

(declare-fun inv!26880 (Token!6898) Bool)

(assert (=> start!184704 (and (inv!26880 t!6207) e!1182913)))

(assert (=> start!184704 true))

(declare-fun e!1182931 () Bool)

(declare-fun inv!26881 (CacheDown!1122) Bool)

(assert (=> start!184704 (and (inv!26881 cacheDown!404) e!1182931)))

(declare-fun inv!26882 (CacheUp!1126) Bool)

(assert (=> start!184704 (and (inv!26882 cacheUp!391) e!1182924)))

(declare-fun b!1850979 () Bool)

(assert (=> b!1850979 (= e!1182931 e!1182914)))

(declare-fun b!1850980 () Bool)

(assert (=> b!1850980 (= e!1182928 e!1182908)))

(declare-fun b!1850981 () Bool)

(declare-fun res!830819 () Bool)

(declare-fun e!1182929 () Bool)

(assert (=> b!1850981 (=> (not res!830819) (not e!1182929))))

(declare-datatypes ((List!20574 0))(
  ( (Nil!20502) (Cons!20502 (h!25903 Token!6898) (t!172361 List!20574)) )
))
(declare-datatypes ((IArray!13571 0))(
  ( (IArray!13572 (innerList!6843 List!20574)) )
))
(declare-datatypes ((Conc!6783 0))(
  ( (Node!6783 (left!16462 Conc!6783) (right!16792 Conc!6783) (csize!13796 Int) (cheight!6994 Int)) (Leaf!9925 (xs!9659 IArray!13571) (csize!13797 Int)) (Empty!6783) )
))
(declare-datatypes ((BalanceConc!13488 0))(
  ( (BalanceConc!13489 (c!302026 Conc!6783)) )
))
(declare-datatypes ((tuple2!19766 0))(
  ( (tuple2!19767 (_1!11296 BalanceConc!13488) (_2!11296 BalanceConc!13486)) )
))
(declare-datatypes ((tuple3!1898 0))(
  ( (tuple3!1899 (_1!11297 tuple2!19766) (_2!11297 CacheUp!1126) (_3!1413 CacheDown!1122)) )
))
(declare-fun lt!715538 () tuple3!1898)

(declare-fun apply!5451 (BalanceConc!13488 Int) Token!6898)

(assert (=> b!1850981 (= res!830819 (= (apply!5451 (_1!11296 (_1!11297 lt!715538)) 0) t!6207))))

(declare-fun b!1850982 () Bool)

(declare-fun e!1182910 () Bool)

(assert (=> b!1850982 (= e!1182910 e!1182911)))

(declare-fun mapNonEmpty!8771 () Bool)

(declare-fun mapRes!8771 () Bool)

(declare-fun tp!524045 () Bool)

(declare-fun tp!524034 () Bool)

(assert (=> mapNonEmpty!8771 (= mapRes!8771 (and tp!524045 tp!524034))))

(declare-fun mapValue!8771 () List!20573)

(declare-fun mapRest!8771 () (Array (_ BitVec 32) List!20573))

(declare-fun mapKey!8770 () (_ BitVec 32))

(assert (=> mapNonEmpty!8771 (= (arr!2869 (_values!2161 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))) (store mapRest!8771 mapKey!8770 mapValue!8771))))

(declare-fun e!1182923 () Bool)

(declare-fun tp!524025 () Bool)

(declare-fun b!1850983 () Bool)

(declare-fun inv!21 (TokenValue!3788) Bool)

(assert (=> b!1850983 (= e!1182913 (and (inv!21 (value!115233 t!6207)) e!1182923 tp!524025))))

(declare-fun mapIsEmpty!8770 () Bool)

(assert (=> mapIsEmpty!8770 mapRes!8771))

(declare-fun b!1850984 () Bool)

(declare-fun lt!715540 () MutLongMap!1881)

(assert (=> b!1850984 (= e!1182925 (and e!1182909 ((_ is LongMap!1881) lt!715540)))))

(assert (=> b!1850984 (= lt!715540 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))

(declare-fun tp!524037 () Bool)

(declare-fun b!1850985 () Bool)

(assert (=> b!1850985 (= e!1182923 (and tp!524037 (inv!26878 (tag!4086 (rule!5866 t!6207))) (inv!26879 (transformation!3672 (rule!5866 t!6207))) e!1182917))))

(declare-fun mapIsEmpty!8771 () Bool)

(assert (=> mapIsEmpty!8771 mapRes!8770))

(declare-fun b!1850986 () Bool)

(declare-fun rulesProduceIndividualToken!1539 (LexerInterface!3294 List!20572 Token!6898) Bool)

(assert (=> b!1850986 (= e!1182921 (not (= e!1182929 (rulesProduceIndividualToken!1539 thiss!10908 rs!164 t!6207))))))

(declare-fun res!830821 () Bool)

(assert (=> b!1850986 (=> (not res!830821) (not e!1182929))))

(declare-fun size!16190 (BalanceConc!13488) Int)

(assert (=> b!1850986 (= res!830821 (= (size!16190 (_1!11296 (_1!11297 lt!715538))) 1))))

(declare-fun lexV1Mem!9 (LexerInterface!3294 List!20572 BalanceConc!13486 CacheUp!1126 CacheDown!1122) tuple3!1898)

(declare-fun print!1429 (LexerInterface!3294 BalanceConc!13488) BalanceConc!13486)

(declare-fun singletonSeq!1801 (Token!6898) BalanceConc!13488)

(assert (=> b!1850986 (= lt!715538 (lexV1Mem!9 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) cacheUp!391 cacheDown!404))))

(declare-fun b!1850987 () Bool)

(declare-fun isEmpty!12794 (BalanceConc!13486) Bool)

(assert (=> b!1850987 (= e!1182929 (isEmpty!12794 (_2!11296 (_1!11297 lt!715538))))))

(declare-fun b!1850988 () Bool)

(declare-fun e!1182918 () Bool)

(declare-fun lt!715539 () MutLongMap!1882)

(assert (=> b!1850988 (= e!1182918 (and e!1182910 ((_ is LongMap!1882) lt!715539)))))

(assert (=> b!1850988 (= lt!715539 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))

(assert (=> b!1850989 (= e!1182916 (and e!1182918 tp!524028))))

(declare-fun b!1850990 () Bool)

(declare-fun res!830820 () Bool)

(assert (=> b!1850990 (=> (not res!830820) (not e!1182921))))

(declare-fun rulesInvariant!2962 (LexerInterface!3294 List!20572) Bool)

(assert (=> b!1850990 (= res!830820 (rulesInvariant!2962 thiss!10908 rs!164))))

(declare-fun b!1850991 () Bool)

(declare-fun tp!524032 () Bool)

(assert (=> b!1850991 (= e!1182930 (and tp!524032 mapRes!8771))))

(declare-fun condMapEmpty!8770 () Bool)

(declare-fun mapDefault!8770 () List!20573)

(assert (=> b!1850991 (= condMapEmpty!8770 (= (arr!2869 (_values!2161 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))) ((as const (Array (_ BitVec 32) List!20573)) mapDefault!8770)))))

(assert (= (and start!184704 res!830817) b!1850969))

(assert (= (and b!1850969 res!830818) b!1850990))

(assert (= (and b!1850990 res!830820) b!1850986))

(assert (= (and b!1850986 res!830821) b!1850981))

(assert (= (and b!1850981 res!830819) b!1850987))

(assert (= b!1850973 b!1850978))

(assert (= b!1850967 b!1850973))

(assert (= (and start!184704 ((_ is Cons!20500) rs!164)) b!1850967))

(assert (= b!1850985 b!1850976))

(assert (= b!1850983 b!1850985))

(assert (= start!184704 b!1850983))

(assert (= (and b!1850968 condMapEmpty!8771) mapIsEmpty!8771))

(assert (= (and b!1850968 (not condMapEmpty!8771)) mapNonEmpty!8770))

(assert (= b!1850972 b!1850968))

(assert (= b!1850980 b!1850972))

(assert (= b!1850975 b!1850980))

(assert (= (and b!1850984 ((_ is LongMap!1881) (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))) b!1850975))

(assert (= b!1850977 b!1850984))

(assert (= (and b!1850979 ((_ is HashMap!1825) (cache!2206 cacheDown!404))) b!1850977))

(assert (= start!184704 b!1850979))

(assert (= (and b!1850991 condMapEmpty!8770) mapIsEmpty!8770))

(assert (= (and b!1850991 (not condMapEmpty!8770)) mapNonEmpty!8771))

(assert (= b!1850971 b!1850991))

(assert (= b!1850974 b!1850971))

(assert (= b!1850982 b!1850974))

(assert (= (and b!1850988 ((_ is LongMap!1882) (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))) b!1850982))

(assert (= b!1850989 b!1850988))

(assert (= (and b!1850970 ((_ is HashMap!1826) (cache!2207 cacheUp!391))) b!1850989))

(assert (= start!184704 b!1850970))

(declare-fun m!2277479 () Bool)

(assert (=> b!1850971 m!2277479))

(declare-fun m!2277481 () Bool)

(assert (=> b!1850971 m!2277481))

(declare-fun m!2277483 () Bool)

(assert (=> b!1850986 m!2277483))

(declare-fun m!2277485 () Bool)

(assert (=> b!1850986 m!2277485))

(declare-fun m!2277487 () Bool)

(assert (=> b!1850986 m!2277487))

(declare-fun m!2277489 () Bool)

(assert (=> b!1850986 m!2277489))

(assert (=> b!1850986 m!2277485))

(declare-fun m!2277491 () Bool)

(assert (=> b!1850986 m!2277491))

(assert (=> b!1850986 m!2277489))

(declare-fun m!2277493 () Bool)

(assert (=> b!1850981 m!2277493))

(declare-fun m!2277495 () Bool)

(assert (=> b!1850972 m!2277495))

(declare-fun m!2277497 () Bool)

(assert (=> b!1850972 m!2277497))

(declare-fun m!2277499 () Bool)

(assert (=> b!1850969 m!2277499))

(declare-fun m!2277501 () Bool)

(assert (=> b!1850990 m!2277501))

(declare-fun m!2277503 () Bool)

(assert (=> b!1850985 m!2277503))

(declare-fun m!2277505 () Bool)

(assert (=> b!1850985 m!2277505))

(declare-fun m!2277507 () Bool)

(assert (=> mapNonEmpty!8770 m!2277507))

(declare-fun m!2277509 () Bool)

(assert (=> b!1850983 m!2277509))

(declare-fun m!2277511 () Bool)

(assert (=> b!1850973 m!2277511))

(declare-fun m!2277513 () Bool)

(assert (=> b!1850973 m!2277513))

(declare-fun m!2277515 () Bool)

(assert (=> mapNonEmpty!8771 m!2277515))

(declare-fun m!2277517 () Bool)

(assert (=> b!1850987 m!2277517))

(declare-fun m!2277519 () Bool)

(assert (=> start!184704 m!2277519))

(declare-fun m!2277521 () Bool)

(assert (=> start!184704 m!2277521))

(declare-fun m!2277523 () Bool)

(assert (=> start!184704 m!2277523))

(check-sat b_and!144015 (not b!1850967) b_and!144019 b_and!144009 (not b!1850991) (not b_next!52495) (not b!1850986) (not b!1850981) b_and!144023 (not b_next!52485) (not start!184704) (not b!1850985) (not b!1850968) b_and!144011 (not b_next!52487) (not b_next!52493) b_and!144017 b_and!144013 (not b!1850973) b_and!144021 (not mapNonEmpty!8771) (not b!1850972) (not b!1850983) (not b!1850969) (not mapNonEmpty!8770) (not b!1850990) (not b_next!52489) (not b_next!52483) (not b_next!52491) (not b!1850987) (not b_next!52497) (not b!1850971))
(check-sat b_and!144015 b_and!144019 b_and!144009 b_and!144021 (not b_next!52495) b_and!144023 (not b_next!52485) (not b_next!52491) (not b_next!52497) b_and!144011 (not b_next!52487) (not b_next!52493) b_and!144017 b_and!144013 (not b_next!52489) (not b_next!52483))
(get-model)

(declare-fun d!565770 () Bool)

(assert (=> d!565770 (= (inv!26878 (tag!4086 (rule!5866 t!6207))) (= (mod (str.len (value!115232 (tag!4086 (rule!5866 t!6207)))) 2) 0))))

(assert (=> b!1850985 d!565770))

(declare-fun d!565772 () Bool)

(declare-fun res!830826 () Bool)

(declare-fun e!1182937 () Bool)

(assert (=> d!565772 (=> (not res!830826) (not e!1182937))))

(declare-fun semiInverseModEq!1491 (Int Int) Bool)

(assert (=> d!565772 (= res!830826 (semiInverseModEq!1491 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (toValue!5243 (transformation!3672 (rule!5866 t!6207)))))))

(assert (=> d!565772 (= (inv!26879 (transformation!3672 (rule!5866 t!6207))) e!1182937)))

(declare-fun b!1850994 () Bool)

(declare-fun equivClasses!1424 (Int Int) Bool)

(assert (=> b!1850994 (= e!1182937 (equivClasses!1424 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (toValue!5243 (transformation!3672 (rule!5866 t!6207)))))))

(assert (= (and d!565772 res!830826) b!1850994))

(declare-fun m!2277525 () Bool)

(assert (=> d!565772 m!2277525))

(declare-fun m!2277527 () Bool)

(assert (=> b!1850994 m!2277527))

(assert (=> b!1850985 d!565772))

(declare-fun d!565774 () Bool)

(assert (=> d!565774 (= (array_inv!2063 (_keys!2175 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))) (bvsge (size!16186 (_keys!2175 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850972 d!565774))

(declare-fun d!565776 () Bool)

(assert (=> d!565776 (= (array_inv!2065 (_values!2160 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))) (bvsge (size!16187 (_values!2160 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850972 d!565776))

(declare-fun d!565778 () Bool)

(declare-fun res!830829 () Bool)

(declare-fun e!1182940 () Bool)

(assert (=> d!565778 (=> (not res!830829) (not e!1182940))))

(declare-fun rulesValid!1401 (LexerInterface!3294 List!20572) Bool)

(assert (=> d!565778 (= res!830829 (rulesValid!1401 thiss!10908 rs!164))))

(assert (=> d!565778 (= (rulesInvariant!2962 thiss!10908 rs!164) e!1182940)))

(declare-fun b!1850997 () Bool)

(declare-datatypes ((List!20575 0))(
  ( (Nil!20503) (Cons!20503 (h!25904 String!23510) (t!172370 List!20575)) )
))
(declare-fun noDuplicateTag!1399 (LexerInterface!3294 List!20572 List!20575) Bool)

(assert (=> b!1850997 (= e!1182940 (noDuplicateTag!1399 thiss!10908 rs!164 Nil!20503))))

(assert (= (and d!565778 res!830829) b!1850997))

(declare-fun m!2277529 () Bool)

(assert (=> d!565778 m!2277529))

(declare-fun m!2277531 () Bool)

(assert (=> b!1850997 m!2277531))

(assert (=> b!1850990 d!565778))

(declare-fun d!565780 () Bool)

(declare-fun res!830834 () Bool)

(declare-fun e!1182943 () Bool)

(assert (=> d!565780 (=> (not res!830834) (not e!1182943))))

(declare-fun isEmpty!12795 (List!20571) Bool)

(assert (=> d!565780 (= res!830834 (not (isEmpty!12795 (originalCharacters!4480 t!6207))))))

(assert (=> d!565780 (= (inv!26880 t!6207) e!1182943)))

(declare-fun b!1851002 () Bool)

(declare-fun res!830835 () Bool)

(assert (=> b!1851002 (=> (not res!830835) (not e!1182943))))

(declare-fun list!8312 (BalanceConc!13486) List!20571)

(declare-fun dynLambda!10161 (Int TokenValue!3788) BalanceConc!13486)

(assert (=> b!1851002 (= res!830835 (= (originalCharacters!4480 t!6207) (list!8312 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207)))))))

(declare-fun b!1851003 () Bool)

(declare-fun size!16191 (List!20571) Int)

(assert (=> b!1851003 (= e!1182943 (= (size!16189 t!6207) (size!16191 (originalCharacters!4480 t!6207))))))

(assert (= (and d!565780 res!830834) b!1851002))

(assert (= (and b!1851002 res!830835) b!1851003))

(declare-fun b_lambda!61429 () Bool)

(assert (=> (not b_lambda!61429) (not b!1851002)))

(declare-fun t!172363 () Bool)

(declare-fun tb!112889 () Bool)

(assert (=> (and b!1850976 (= (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (toChars!5102 (transformation!3672 (rule!5866 t!6207)))) t!172363) tb!112889))

(declare-fun b!1851008 () Bool)

(declare-fun e!1182946 () Bool)

(declare-fun tp!524049 () Bool)

(declare-fun inv!26883 (Conc!6782) Bool)

(assert (=> b!1851008 (= e!1182946 (and (inv!26883 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207)))) tp!524049))))

(declare-fun result!136088 () Bool)

(declare-fun inv!26884 (BalanceConc!13486) Bool)

(assert (=> tb!112889 (= result!136088 (and (inv!26884 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207))) e!1182946))))

(assert (= tb!112889 b!1851008))

(declare-fun m!2277533 () Bool)

(assert (=> b!1851008 m!2277533))

(declare-fun m!2277535 () Bool)

(assert (=> tb!112889 m!2277535))

(assert (=> b!1851002 t!172363))

(declare-fun b_and!144025 () Bool)

(assert (= b_and!144013 (and (=> t!172363 result!136088) b_and!144025)))

(declare-fun t!172365 () Bool)

(declare-fun tb!112891 () Bool)

(assert (=> (and b!1850978 (= (toChars!5102 (transformation!3672 (h!25901 rs!164))) (toChars!5102 (transformation!3672 (rule!5866 t!6207)))) t!172365) tb!112891))

(declare-fun result!136092 () Bool)

(assert (= result!136092 result!136088))

(assert (=> b!1851002 t!172365))

(declare-fun b_and!144027 () Bool)

(assert (= b_and!144023 (and (=> t!172365 result!136092) b_and!144027)))

(declare-fun m!2277537 () Bool)

(assert (=> d!565780 m!2277537))

(declare-fun m!2277539 () Bool)

(assert (=> b!1851002 m!2277539))

(assert (=> b!1851002 m!2277539))

(declare-fun m!2277541 () Bool)

(assert (=> b!1851002 m!2277541))

(declare-fun m!2277543 () Bool)

(assert (=> b!1851003 m!2277543))

(assert (=> start!184704 d!565780))

(declare-fun d!565782 () Bool)

(declare-fun res!830838 () Bool)

(declare-fun e!1182949 () Bool)

(assert (=> d!565782 (=> (not res!830838) (not e!1182949))))

(assert (=> d!565782 (= res!830838 ((_ is HashMap!1825) (cache!2206 cacheDown!404)))))

(assert (=> d!565782 (= (inv!26881 cacheDown!404) e!1182949)))

(declare-fun b!1851011 () Bool)

(declare-fun validCacheMapDown!174 (MutableMap!1825) Bool)

(assert (=> b!1851011 (= e!1182949 (validCacheMapDown!174 (cache!2206 cacheDown!404)))))

(assert (= (and d!565782 res!830838) b!1851011))

(declare-fun m!2277545 () Bool)

(assert (=> b!1851011 m!2277545))

(assert (=> start!184704 d!565782))

(declare-fun d!565784 () Bool)

(declare-fun res!830841 () Bool)

(declare-fun e!1182952 () Bool)

(assert (=> d!565784 (=> (not res!830841) (not e!1182952))))

(assert (=> d!565784 (= res!830841 ((_ is HashMap!1826) (cache!2207 cacheUp!391)))))

(assert (=> d!565784 (= (inv!26882 cacheUp!391) e!1182952)))

(declare-fun b!1851014 () Bool)

(declare-fun validCacheMapUp!176 (MutableMap!1826) Bool)

(assert (=> b!1851014 (= e!1182952 (validCacheMapUp!176 (cache!2207 cacheUp!391)))))

(assert (= (and d!565784 res!830841) b!1851014))

(declare-fun m!2277547 () Bool)

(assert (=> b!1851014 m!2277547))

(assert (=> start!184704 d!565784))

(declare-fun d!565786 () Bool)

(assert (=> d!565786 (= (inv!26878 (tag!4086 (h!25901 rs!164))) (= (mod (str.len (value!115232 (tag!4086 (h!25901 rs!164)))) 2) 0))))

(assert (=> b!1850973 d!565786))

(declare-fun d!565788 () Bool)

(declare-fun res!830842 () Bool)

(declare-fun e!1182953 () Bool)

(assert (=> d!565788 (=> (not res!830842) (not e!1182953))))

(assert (=> d!565788 (= res!830842 (semiInverseModEq!1491 (toChars!5102 (transformation!3672 (h!25901 rs!164))) (toValue!5243 (transformation!3672 (h!25901 rs!164)))))))

(assert (=> d!565788 (= (inv!26879 (transformation!3672 (h!25901 rs!164))) e!1182953)))

(declare-fun b!1851015 () Bool)

(assert (=> b!1851015 (= e!1182953 (equivClasses!1424 (toChars!5102 (transformation!3672 (h!25901 rs!164))) (toValue!5243 (transformation!3672 (h!25901 rs!164)))))))

(assert (= (and d!565788 res!830842) b!1851015))

(declare-fun m!2277549 () Bool)

(assert (=> d!565788 m!2277549))

(declare-fun m!2277551 () Bool)

(assert (=> b!1851015 m!2277551))

(assert (=> b!1850973 d!565788))

(declare-fun d!565790 () Bool)

(declare-fun lt!715543 () Int)

(declare-fun size!16192 (List!20574) Int)

(declare-fun list!8313 (BalanceConc!13488) List!20574)

(assert (=> d!565790 (= lt!715543 (size!16192 (list!8313 (_1!11296 (_1!11297 lt!715538)))))))

(declare-fun size!16193 (Conc!6783) Int)

(assert (=> d!565790 (= lt!715543 (size!16193 (c!302026 (_1!11296 (_1!11297 lt!715538)))))))

(assert (=> d!565790 (= (size!16190 (_1!11296 (_1!11297 lt!715538))) lt!715543)))

(declare-fun bs!409805 () Bool)

(assert (= bs!409805 d!565790))

(declare-fun m!2277553 () Bool)

(assert (=> bs!409805 m!2277553))

(assert (=> bs!409805 m!2277553))

(declare-fun m!2277555 () Bool)

(assert (=> bs!409805 m!2277555))

(declare-fun m!2277557 () Bool)

(assert (=> bs!409805 m!2277557))

(assert (=> b!1850986 d!565790))

(declare-fun d!565792 () Bool)

(declare-fun lt!715546 () BalanceConc!13486)

(declare-fun printList!1006 (LexerInterface!3294 List!20574) List!20571)

(assert (=> d!565792 (= (list!8312 lt!715546) (printList!1006 thiss!10908 (list!8313 (singletonSeq!1801 t!6207))))))

(declare-fun printTailRec!944 (LexerInterface!3294 BalanceConc!13488 Int BalanceConc!13486) BalanceConc!13486)

(assert (=> d!565792 (= lt!715546 (printTailRec!944 thiss!10908 (singletonSeq!1801 t!6207) 0 (BalanceConc!13487 Empty!6782)))))

(assert (=> d!565792 (= (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) lt!715546)))

(declare-fun bs!409806 () Bool)

(assert (= bs!409806 d!565792))

(declare-fun m!2277559 () Bool)

(assert (=> bs!409806 m!2277559))

(assert (=> bs!409806 m!2277489))

(declare-fun m!2277561 () Bool)

(assert (=> bs!409806 m!2277561))

(assert (=> bs!409806 m!2277561))

(declare-fun m!2277563 () Bool)

(assert (=> bs!409806 m!2277563))

(assert (=> bs!409806 m!2277489))

(declare-fun m!2277565 () Bool)

(assert (=> bs!409806 m!2277565))

(assert (=> b!1850986 d!565792))

(declare-fun d!565794 () Bool)

(declare-fun lt!715551 () Bool)

(declare-fun e!1182958 () Bool)

(assert (=> d!565794 (= lt!715551 e!1182958)))

(declare-fun res!830849 () Bool)

(assert (=> d!565794 (=> (not res!830849) (not e!1182958))))

(declare-fun lex!1497 (LexerInterface!3294 List!20572 BalanceConc!13486) tuple2!19766)

(assert (=> d!565794 (= res!830849 (= (list!8313 (_1!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))) (list!8313 (singletonSeq!1801 t!6207))))))

(declare-fun e!1182959 () Bool)

(assert (=> d!565794 (= lt!715551 e!1182959)))

(declare-fun res!830851 () Bool)

(assert (=> d!565794 (=> (not res!830851) (not e!1182959))))

(declare-fun lt!715552 () tuple2!19766)

(assert (=> d!565794 (= res!830851 (= (size!16190 (_1!11296 lt!715552)) 1))))

(assert (=> d!565794 (= lt!715552 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))))

(assert (=> d!565794 (not (isEmpty!12793 rs!164))))

(assert (=> d!565794 (= (rulesProduceIndividualToken!1539 thiss!10908 rs!164 t!6207) lt!715551)))

(declare-fun b!1851022 () Bool)

(declare-fun res!830850 () Bool)

(assert (=> b!1851022 (=> (not res!830850) (not e!1182959))))

(assert (=> b!1851022 (= res!830850 (= (apply!5451 (_1!11296 lt!715552) 0) t!6207))))

(declare-fun b!1851023 () Bool)

(assert (=> b!1851023 (= e!1182959 (isEmpty!12794 (_2!11296 lt!715552)))))

(declare-fun b!1851024 () Bool)

(assert (=> b!1851024 (= e!1182958 (isEmpty!12794 (_2!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))))))

(assert (= (and d!565794 res!830851) b!1851022))

(assert (= (and b!1851022 res!830850) b!1851023))

(assert (= (and d!565794 res!830849) b!1851024))

(assert (=> d!565794 m!2277489))

(declare-fun m!2277567 () Bool)

(assert (=> d!565794 m!2277567))

(assert (=> d!565794 m!2277489))

(assert (=> d!565794 m!2277485))

(assert (=> d!565794 m!2277485))

(declare-fun m!2277569 () Bool)

(assert (=> d!565794 m!2277569))

(assert (=> d!565794 m!2277489))

(assert (=> d!565794 m!2277561))

(declare-fun m!2277571 () Bool)

(assert (=> d!565794 m!2277571))

(assert (=> d!565794 m!2277499))

(declare-fun m!2277573 () Bool)

(assert (=> b!1851022 m!2277573))

(declare-fun m!2277575 () Bool)

(assert (=> b!1851023 m!2277575))

(assert (=> b!1851024 m!2277489))

(assert (=> b!1851024 m!2277489))

(assert (=> b!1851024 m!2277485))

(assert (=> b!1851024 m!2277485))

(assert (=> b!1851024 m!2277569))

(declare-fun m!2277577 () Bool)

(assert (=> b!1851024 m!2277577))

(assert (=> b!1850986 d!565794))

(declare-fun d!565796 () Bool)

(declare-fun e!1182962 () Bool)

(assert (=> d!565796 e!1182962))

(declare-fun res!830854 () Bool)

(assert (=> d!565796 (=> (not res!830854) (not e!1182962))))

(declare-fun lt!715557 () tuple3!1898)

(assert (=> d!565796 (= res!830854 (= (list!8313 (_1!11296 (_1!11297 lt!715557))) (list!8313 (_1!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)))))))))

(declare-fun lt!715558 () tuple3!1898)

(assert (=> d!565796 (= lt!715557 (tuple3!1899 (_1!11297 lt!715558) (_2!11297 lt!715558) (_3!1413 lt!715558)))))

(declare-fun lexTailRecMem!3 (LexerInterface!3294 List!20572 BalanceConc!13486 BalanceConc!13486 BalanceConc!13486 BalanceConc!13488 CacheUp!1126 CacheDown!1122) tuple3!1898)

(assert (=> d!565796 (= lt!715558 (lexTailRecMem!3 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13487 Empty!6782) (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13489 Empty!6783) cacheUp!391 cacheDown!404))))

(assert (=> d!565796 (not (isEmpty!12793 rs!164))))

(assert (=> d!565796 (= (lexV1Mem!9 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) cacheUp!391 cacheDown!404) lt!715557)))

(declare-fun b!1851027 () Bool)

(assert (=> b!1851027 (= e!1182962 (= (list!8312 (_2!11296 (_1!11297 lt!715557))) (list!8312 (_2!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)))))))))

(assert (= (and d!565796 res!830854) b!1851027))

(assert (=> d!565796 m!2277571))

(assert (=> d!565796 m!2277485))

(assert (=> d!565796 m!2277485))

(declare-fun m!2277579 () Bool)

(assert (=> d!565796 m!2277579))

(declare-fun m!2277581 () Bool)

(assert (=> d!565796 m!2277581))

(assert (=> d!565796 m!2277499))

(assert (=> d!565796 m!2277485))

(assert (=> d!565796 m!2277569))

(declare-fun m!2277583 () Bool)

(assert (=> b!1851027 m!2277583))

(assert (=> b!1851027 m!2277485))

(assert (=> b!1851027 m!2277569))

(declare-fun m!2277585 () Bool)

(assert (=> b!1851027 m!2277585))

(assert (=> b!1850986 d!565796))

(declare-fun d!565798 () Bool)

(declare-fun e!1182965 () Bool)

(assert (=> d!565798 e!1182965))

(declare-fun res!830857 () Bool)

(assert (=> d!565798 (=> (not res!830857) (not e!1182965))))

(declare-fun lt!715561 () BalanceConc!13488)

(assert (=> d!565798 (= res!830857 (= (list!8313 lt!715561) (Cons!20502 t!6207 Nil!20502)))))

(declare-fun singleton!818 (Token!6898) BalanceConc!13488)

(assert (=> d!565798 (= lt!715561 (singleton!818 t!6207))))

(assert (=> d!565798 (= (singletonSeq!1801 t!6207) lt!715561)))

(declare-fun b!1851030 () Bool)

(declare-fun isBalanced!2114 (Conc!6783) Bool)

(assert (=> b!1851030 (= e!1182965 (isBalanced!2114 (c!302026 lt!715561)))))

(assert (= (and d!565798 res!830857) b!1851030))

(declare-fun m!2277587 () Bool)

(assert (=> d!565798 m!2277587))

(declare-fun m!2277589 () Bool)

(assert (=> d!565798 m!2277589))

(declare-fun m!2277591 () Bool)

(assert (=> b!1851030 m!2277591))

(assert (=> b!1850986 d!565798))

(declare-fun b!1851041 () Bool)

(declare-fun res!830860 () Bool)

(declare-fun e!1182972 () Bool)

(assert (=> b!1851041 (=> res!830860 e!1182972)))

(assert (=> b!1851041 (= res!830860 (not ((_ is IntegerValue!11366) (value!115233 t!6207))))))

(declare-fun e!1182974 () Bool)

(assert (=> b!1851041 (= e!1182974 e!1182972)))

(declare-fun b!1851042 () Bool)

(declare-fun e!1182973 () Bool)

(declare-fun inv!16 (TokenValue!3788) Bool)

(assert (=> b!1851042 (= e!1182973 (inv!16 (value!115233 t!6207)))))

(declare-fun b!1851044 () Bool)

(assert (=> b!1851044 (= e!1182973 e!1182974)))

(declare-fun c!302031 () Bool)

(assert (=> b!1851044 (= c!302031 ((_ is IntegerValue!11365) (value!115233 t!6207)))))

(declare-fun b!1851045 () Bool)

(declare-fun inv!17 (TokenValue!3788) Bool)

(assert (=> b!1851045 (= e!1182974 (inv!17 (value!115233 t!6207)))))

(declare-fun d!565800 () Bool)

(declare-fun c!302032 () Bool)

(assert (=> d!565800 (= c!302032 ((_ is IntegerValue!11364) (value!115233 t!6207)))))

(assert (=> d!565800 (= (inv!21 (value!115233 t!6207)) e!1182973)))

(declare-fun b!1851043 () Bool)

(declare-fun inv!15 (TokenValue!3788) Bool)

(assert (=> b!1851043 (= e!1182972 (inv!15 (value!115233 t!6207)))))

(assert (= (and d!565800 c!302032) b!1851042))

(assert (= (and d!565800 (not c!302032)) b!1851044))

(assert (= (and b!1851044 c!302031) b!1851045))

(assert (= (and b!1851044 (not c!302031)) b!1851041))

(assert (= (and b!1851041 (not res!830860)) b!1851043))

(declare-fun m!2277593 () Bool)

(assert (=> b!1851042 m!2277593))

(declare-fun m!2277595 () Bool)

(assert (=> b!1851045 m!2277595))

(declare-fun m!2277597 () Bool)

(assert (=> b!1851043 m!2277597))

(assert (=> b!1850983 d!565800))

(declare-fun d!565802 () Bool)

(assert (=> d!565802 (= (isEmpty!12793 rs!164) ((_ is Nil!20500) rs!164))))

(assert (=> b!1850969 d!565802))

(declare-fun d!565804 () Bool)

(declare-fun lt!715564 () Bool)

(assert (=> d!565804 (= lt!715564 (isEmpty!12795 (list!8312 (_2!11296 (_1!11297 lt!715538)))))))

(declare-fun isEmpty!12796 (Conc!6782) Bool)

(assert (=> d!565804 (= lt!715564 (isEmpty!12796 (c!302025 (_2!11296 (_1!11297 lt!715538)))))))

(assert (=> d!565804 (= (isEmpty!12794 (_2!11296 (_1!11297 lt!715538))) lt!715564)))

(declare-fun bs!409807 () Bool)

(assert (= bs!409807 d!565804))

(declare-fun m!2277599 () Bool)

(assert (=> bs!409807 m!2277599))

(assert (=> bs!409807 m!2277599))

(declare-fun m!2277601 () Bool)

(assert (=> bs!409807 m!2277601))

(declare-fun m!2277603 () Bool)

(assert (=> bs!409807 m!2277603))

(assert (=> b!1850987 d!565804))

(declare-fun d!565806 () Bool)

(assert (=> d!565806 (= (array_inv!2063 (_keys!2176 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))) (bvsge (size!16186 (_keys!2176 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850971 d!565806))

(declare-fun d!565808 () Bool)

(assert (=> d!565808 (= (array_inv!2064 (_values!2161 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))) (bvsge (size!16188 (_values!2161 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850971 d!565808))

(declare-fun d!565810 () Bool)

(declare-fun lt!715567 () Token!6898)

(declare-fun apply!5452 (List!20574 Int) Token!6898)

(assert (=> d!565810 (= lt!715567 (apply!5452 (list!8313 (_1!11296 (_1!11297 lt!715538))) 0))))

(declare-fun apply!5453 (Conc!6783 Int) Token!6898)

(assert (=> d!565810 (= lt!715567 (apply!5453 (c!302026 (_1!11296 (_1!11297 lt!715538))) 0))))

(declare-fun e!1182977 () Bool)

(assert (=> d!565810 e!1182977))

(declare-fun res!830863 () Bool)

(assert (=> d!565810 (=> (not res!830863) (not e!1182977))))

(assert (=> d!565810 (= res!830863 (<= 0 0))))

(assert (=> d!565810 (= (apply!5451 (_1!11296 (_1!11297 lt!715538)) 0) lt!715567)))

(declare-fun b!1851048 () Bool)

(assert (=> b!1851048 (= e!1182977 (< 0 (size!16190 (_1!11296 (_1!11297 lt!715538)))))))

(assert (= (and d!565810 res!830863) b!1851048))

(assert (=> d!565810 m!2277553))

(assert (=> d!565810 m!2277553))

(declare-fun m!2277605 () Bool)

(assert (=> d!565810 m!2277605))

(declare-fun m!2277607 () Bool)

(assert (=> d!565810 m!2277607))

(assert (=> b!1851048 m!2277483))

(assert (=> b!1850981 d!565810))

(declare-fun tp!524063 () Bool)

(declare-fun b!1851057 () Bool)

(declare-fun tp_is_empty!8497 () Bool)

(declare-fun setRes!11368 () Bool)

(declare-fun e!1182986 () Bool)

(declare-fun tp!524060 () Bool)

(declare-fun e!1182985 () Bool)

(declare-fun inv!26885 (Context!1890) Bool)

(assert (=> b!1851057 (= e!1182986 (and tp!524060 (inv!26885 (_2!11292 (_1!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))))) e!1182985 tp_is_empty!8497 setRes!11368 tp!524063))))

(declare-fun condSetEmpty!11368 () Bool)

(assert (=> b!1851057 (= condSetEmpty!11368 (= (_2!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> b!1850972 (= tp!524033 e!1182986)))

(declare-fun setNonEmpty!11368 () Bool)

(declare-fun e!1182984 () Bool)

(declare-fun setElem!11368 () Context!1890)

(declare-fun tp!524064 () Bool)

(assert (=> setNonEmpty!11368 (= setRes!11368 (and tp!524064 (inv!26885 setElem!11368) e!1182984))))

(declare-fun setRest!11368 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11368 (= (_2!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11368 true) setRest!11368))))

(declare-fun b!1851058 () Bool)

(declare-fun tp!524061 () Bool)

(assert (=> b!1851058 (= e!1182984 tp!524061)))

(declare-fun b!1851059 () Bool)

(declare-fun tp!524062 () Bool)

(assert (=> b!1851059 (= e!1182985 tp!524062)))

(declare-fun setIsEmpty!11368 () Bool)

(assert (=> setIsEmpty!11368 setRes!11368))

(assert (= b!1851057 b!1851059))

(assert (= (and b!1851057 condSetEmpty!11368) setIsEmpty!11368))

(assert (= (and b!1851057 (not condSetEmpty!11368)) setNonEmpty!11368))

(assert (= setNonEmpty!11368 b!1851058))

(assert (= (and b!1850972 ((_ is Cons!20497) (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))) b!1851057))

(declare-fun m!2277609 () Bool)

(assert (=> b!1851057 m!2277609))

(declare-fun m!2277611 () Bool)

(assert (=> setNonEmpty!11368 m!2277611))

(declare-fun setRes!11369 () Bool)

(declare-fun e!1182988 () Bool)

(declare-fun tp!524068 () Bool)

(declare-fun tp!524065 () Bool)

(declare-fun e!1182989 () Bool)

(declare-fun b!1851060 () Bool)

(assert (=> b!1851060 (= e!1182989 (and tp!524065 (inv!26885 (_2!11292 (_1!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))))) e!1182988 tp_is_empty!8497 setRes!11369 tp!524068))))

(declare-fun condSetEmpty!11369 () Bool)

(assert (=> b!1851060 (= condSetEmpty!11369 (= (_2!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> b!1850972 (= tp!524039 e!1182989)))

(declare-fun setElem!11369 () Context!1890)

(declare-fun tp!524069 () Bool)

(declare-fun setNonEmpty!11369 () Bool)

(declare-fun e!1182987 () Bool)

(assert (=> setNonEmpty!11369 (= setRes!11369 (and tp!524069 (inv!26885 setElem!11369) e!1182987))))

(declare-fun setRest!11369 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11369 (= (_2!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11369 true) setRest!11369))))

(declare-fun b!1851061 () Bool)

(declare-fun tp!524066 () Bool)

(assert (=> b!1851061 (= e!1182987 tp!524066)))

(declare-fun b!1851062 () Bool)

(declare-fun tp!524067 () Bool)

(assert (=> b!1851062 (= e!1182988 tp!524067)))

(declare-fun setIsEmpty!11369 () Bool)

(assert (=> setIsEmpty!11369 setRes!11369))

(assert (= b!1851060 b!1851062))

(assert (= (and b!1851060 condSetEmpty!11369) setIsEmpty!11369))

(assert (= (and b!1851060 (not condSetEmpty!11369)) setNonEmpty!11369))

(assert (= setNonEmpty!11369 b!1851061))

(assert (= (and b!1850972 ((_ is Cons!20497) (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))) b!1851060))

(declare-fun m!2277613 () Bool)

(assert (=> b!1851060 m!2277613))

(declare-fun m!2277615 () Bool)

(assert (=> setNonEmpty!11369 m!2277615))

(declare-fun b!1851076 () Bool)

(declare-fun e!1182992 () Bool)

(declare-fun tp!524083 () Bool)

(declare-fun tp!524081 () Bool)

(assert (=> b!1851076 (= e!1182992 (and tp!524083 tp!524081))))

(declare-fun b!1851075 () Bool)

(declare-fun tp!524084 () Bool)

(assert (=> b!1851075 (= e!1182992 tp!524084)))

(declare-fun b!1851074 () Bool)

(declare-fun tp!524080 () Bool)

(declare-fun tp!524082 () Bool)

(assert (=> b!1851074 (= e!1182992 (and tp!524080 tp!524082))))

(declare-fun b!1851073 () Bool)

(assert (=> b!1851073 (= e!1182992 tp_is_empty!8497)))

(assert (=> b!1850973 (= tp!524029 e!1182992)))

(assert (= (and b!1850973 ((_ is ElementMatch!5035) (regex!3672 (h!25901 rs!164)))) b!1851073))

(assert (= (and b!1850973 ((_ is Concat!8823) (regex!3672 (h!25901 rs!164)))) b!1851074))

(assert (= (and b!1850973 ((_ is Star!5035) (regex!3672 (h!25901 rs!164)))) b!1851075))

(assert (= (and b!1850973 ((_ is Union!5035) (regex!3672 (h!25901 rs!164)))) b!1851076))

(declare-fun mapNonEmpty!8774 () Bool)

(declare-fun mapRes!8774 () Bool)

(declare-fun tp!524110 () Bool)

(declare-fun e!1183009 () Bool)

(assert (=> mapNonEmpty!8774 (= mapRes!8774 (and tp!524110 e!1183009))))

(declare-fun mapValue!8774 () List!20573)

(declare-fun mapRest!8774 () (Array (_ BitVec 32) List!20573))

(declare-fun mapKey!8774 () (_ BitVec 32))

(assert (=> mapNonEmpty!8774 (= mapRest!8771 (store mapRest!8774 mapKey!8774 mapValue!8774))))

(declare-fun b!1851091 () Bool)

(declare-fun e!1183005 () Bool)

(declare-fun tp!524104 () Bool)

(assert (=> b!1851091 (= e!1183005 tp!524104)))

(declare-fun e!1183006 () Bool)

(declare-fun setRes!11374 () Bool)

(declare-fun tp!524103 () Bool)

(declare-fun setElem!11374 () Context!1890)

(declare-fun setNonEmpty!11374 () Bool)

(assert (=> setNonEmpty!11374 (= setRes!11374 (and tp!524103 (inv!26885 setElem!11374) e!1183006))))

(declare-fun mapDefault!8774 () List!20573)

(declare-fun setRest!11375 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11374 (= (_2!11295 (h!25902 mapDefault!8774)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11374 true) setRest!11375))))

(declare-fun mapIsEmpty!8774 () Bool)

(assert (=> mapIsEmpty!8774 mapRes!8774))

(declare-fun e!1183010 () Bool)

(declare-fun e!1183007 () Bool)

(declare-fun tp!524105 () Bool)

(declare-fun b!1851092 () Bool)

(assert (=> b!1851092 (= e!1183010 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 mapDefault!8774)))) e!1183007 tp_is_empty!8497 setRes!11374 tp!524105))))

(declare-fun condSetEmpty!11374 () Bool)

(assert (=> b!1851092 (= condSetEmpty!11374 (= (_2!11295 (h!25902 mapDefault!8774)) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851093 () Bool)

(declare-fun e!1183008 () Bool)

(declare-fun tp!524106 () Bool)

(assert (=> b!1851093 (= e!1183008 tp!524106)))

(declare-fun setIsEmpty!11375 () Bool)

(assert (=> setIsEmpty!11375 setRes!11374))

(declare-fun condMapEmpty!8774 () Bool)

(assert (=> mapNonEmpty!8771 (= condMapEmpty!8774 (= mapRest!8771 ((as const (Array (_ BitVec 32) List!20573)) mapDefault!8774)))))

(assert (=> mapNonEmpty!8771 (= tp!524045 (and e!1183010 mapRes!8774))))

(declare-fun setIsEmpty!11374 () Bool)

(declare-fun setRes!11375 () Bool)

(assert (=> setIsEmpty!11374 setRes!11375))

(declare-fun b!1851094 () Bool)

(declare-fun tp!524108 () Bool)

(assert (=> b!1851094 (= e!1183006 tp!524108)))

(declare-fun b!1851095 () Bool)

(declare-fun tp!524111 () Bool)

(assert (=> b!1851095 (= e!1183009 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 mapValue!8774)))) e!1183008 tp_is_empty!8497 setRes!11375 tp!524111))))

(declare-fun condSetEmpty!11375 () Bool)

(assert (=> b!1851095 (= condSetEmpty!11375 (= (_2!11295 (h!25902 mapValue!8774)) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851096 () Bool)

(declare-fun tp!524107 () Bool)

(assert (=> b!1851096 (= e!1183007 tp!524107)))

(declare-fun setElem!11375 () Context!1890)

(declare-fun setNonEmpty!11375 () Bool)

(declare-fun tp!524109 () Bool)

(assert (=> setNonEmpty!11375 (= setRes!11375 (and tp!524109 (inv!26885 setElem!11375) e!1183005))))

(declare-fun setRest!11374 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11375 (= (_2!11295 (h!25902 mapValue!8774)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11375 true) setRest!11374))))

(assert (= (and mapNonEmpty!8771 condMapEmpty!8774) mapIsEmpty!8774))

(assert (= (and mapNonEmpty!8771 (not condMapEmpty!8774)) mapNonEmpty!8774))

(assert (= b!1851095 b!1851093))

(assert (= (and b!1851095 condSetEmpty!11375) setIsEmpty!11374))

(assert (= (and b!1851095 (not condSetEmpty!11375)) setNonEmpty!11375))

(assert (= setNonEmpty!11375 b!1851091))

(assert (= (and mapNonEmpty!8774 ((_ is Cons!20501) mapValue!8774)) b!1851095))

(assert (= b!1851092 b!1851096))

(assert (= (and b!1851092 condSetEmpty!11374) setIsEmpty!11375))

(assert (= (and b!1851092 (not condSetEmpty!11374)) setNonEmpty!11374))

(assert (= setNonEmpty!11374 b!1851094))

(assert (= (and mapNonEmpty!8771 ((_ is Cons!20501) mapDefault!8774)) b!1851092))

(declare-fun m!2277617 () Bool)

(assert (=> setNonEmpty!11375 m!2277617))

(declare-fun m!2277619 () Bool)

(assert (=> setNonEmpty!11374 m!2277619))

(declare-fun m!2277621 () Bool)

(assert (=> b!1851092 m!2277621))

(declare-fun m!2277623 () Bool)

(assert (=> b!1851095 m!2277623))

(declare-fun m!2277625 () Bool)

(assert (=> mapNonEmpty!8774 m!2277625))

(declare-fun b!1851105 () Bool)

(declare-fun e!1183019 () Bool)

(declare-fun tp!524123 () Bool)

(assert (=> b!1851105 (= e!1183019 tp!524123)))

(declare-fun setRes!11378 () Bool)

(declare-fun e!1183017 () Bool)

(declare-fun tp!524121 () Bool)

(declare-fun b!1851106 () Bool)

(assert (=> b!1851106 (= e!1183017 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 mapValue!8771)))) e!1183019 tp_is_empty!8497 setRes!11378 tp!524121))))

(declare-fun condSetEmpty!11378 () Bool)

(assert (=> b!1851106 (= condSetEmpty!11378 (= (_2!11295 (h!25902 mapValue!8771)) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851107 () Bool)

(declare-fun e!1183018 () Bool)

(declare-fun tp!524120 () Bool)

(assert (=> b!1851107 (= e!1183018 tp!524120)))

(declare-fun setElem!11378 () Context!1890)

(declare-fun setNonEmpty!11378 () Bool)

(declare-fun tp!524122 () Bool)

(assert (=> setNonEmpty!11378 (= setRes!11378 (and tp!524122 (inv!26885 setElem!11378) e!1183018))))

(declare-fun setRest!11378 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11378 (= (_2!11295 (h!25902 mapValue!8771)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11378 true) setRest!11378))))

(declare-fun setIsEmpty!11378 () Bool)

(assert (=> setIsEmpty!11378 setRes!11378))

(assert (=> mapNonEmpty!8771 (= tp!524034 e!1183017)))

(assert (= b!1851106 b!1851105))

(assert (= (and b!1851106 condSetEmpty!11378) setIsEmpty!11378))

(assert (= (and b!1851106 (not condSetEmpty!11378)) setNonEmpty!11378))

(assert (= setNonEmpty!11378 b!1851107))

(assert (= (and mapNonEmpty!8771 ((_ is Cons!20501) mapValue!8771)) b!1851106))

(declare-fun m!2277627 () Bool)

(assert (=> b!1851106 m!2277627))

(declare-fun m!2277629 () Bool)

(assert (=> setNonEmpty!11378 m!2277629))

(declare-fun b!1851108 () Bool)

(declare-fun e!1183022 () Bool)

(declare-fun tp!524127 () Bool)

(assert (=> b!1851108 (= e!1183022 tp!524127)))

(declare-fun setRes!11379 () Bool)

(declare-fun tp!524125 () Bool)

(declare-fun b!1851109 () Bool)

(declare-fun e!1183020 () Bool)

(assert (=> b!1851109 (= e!1183020 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 mapDefault!8770)))) e!1183022 tp_is_empty!8497 setRes!11379 tp!524125))))

(declare-fun condSetEmpty!11379 () Bool)

(assert (=> b!1851109 (= condSetEmpty!11379 (= (_2!11295 (h!25902 mapDefault!8770)) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851110 () Bool)

(declare-fun e!1183021 () Bool)

(declare-fun tp!524124 () Bool)

(assert (=> b!1851110 (= e!1183021 tp!524124)))

(declare-fun tp!524126 () Bool)

(declare-fun setNonEmpty!11379 () Bool)

(declare-fun setElem!11379 () Context!1890)

(assert (=> setNonEmpty!11379 (= setRes!11379 (and tp!524126 (inv!26885 setElem!11379) e!1183021))))

(declare-fun setRest!11379 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11379 (= (_2!11295 (h!25902 mapDefault!8770)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11379 true) setRest!11379))))

(declare-fun setIsEmpty!11379 () Bool)

(assert (=> setIsEmpty!11379 setRes!11379))

(assert (=> b!1850991 (= tp!524032 e!1183020)))

(assert (= b!1851109 b!1851108))

(assert (= (and b!1851109 condSetEmpty!11379) setIsEmpty!11379))

(assert (= (and b!1851109 (not condSetEmpty!11379)) setNonEmpty!11379))

(assert (= setNonEmpty!11379 b!1851110))

(assert (= (and b!1850991 ((_ is Cons!20501) mapDefault!8770)) b!1851109))

(declare-fun m!2277631 () Bool)

(assert (=> b!1851109 m!2277631))

(declare-fun m!2277633 () Bool)

(assert (=> setNonEmpty!11379 m!2277633))

(declare-fun b!1851115 () Bool)

(declare-fun e!1183025 () Bool)

(declare-fun tp!524130 () Bool)

(assert (=> b!1851115 (= e!1183025 (and tp_is_empty!8497 tp!524130))))

(assert (=> b!1850983 (= tp!524025 e!1183025)))

(assert (= (and b!1850983 ((_ is Cons!20499) (originalCharacters!4480 t!6207))) b!1851115))

(declare-fun condMapEmpty!8777 () Bool)

(declare-fun mapDefault!8777 () List!20569)

(assert (=> mapNonEmpty!8770 (= condMapEmpty!8777 (= mapRest!8770 ((as const (Array (_ BitVec 32) List!20569)) mapDefault!8777)))))

(declare-fun e!1183041 () Bool)

(declare-fun mapRes!8777 () Bool)

(assert (=> mapNonEmpty!8770 (= tp!524026 (and e!1183041 mapRes!8777))))

(declare-fun b!1851130 () Bool)

(declare-fun e!1183043 () Bool)

(declare-fun tp!524163 () Bool)

(assert (=> b!1851130 (= e!1183043 tp!524163)))

(declare-fun setIsEmpty!11384 () Bool)

(declare-fun setRes!11384 () Bool)

(assert (=> setIsEmpty!11384 setRes!11384))

(declare-fun mapIsEmpty!8777 () Bool)

(assert (=> mapIsEmpty!8777 mapRes!8777))

(declare-fun b!1851131 () Bool)

(declare-fun e!1183039 () Bool)

(declare-fun tp!524161 () Bool)

(assert (=> b!1851131 (= e!1183039 tp!524161)))

(declare-fun setRes!11385 () Bool)

(declare-fun setElem!11385 () Context!1890)

(declare-fun tp!524159 () Bool)

(declare-fun setNonEmpty!11384 () Bool)

(assert (=> setNonEmpty!11384 (= setRes!11385 (and tp!524159 (inv!26885 setElem!11385) e!1183039))))

(declare-fun mapValue!8777 () List!20569)

(declare-fun setRest!11385 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11384 (= (_2!11293 (h!25898 mapValue!8777)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11385 true) setRest!11385))))

(declare-fun mapNonEmpty!8777 () Bool)

(declare-fun tp!524155 () Bool)

(declare-fun e!1183042 () Bool)

(assert (=> mapNonEmpty!8777 (= mapRes!8777 (and tp!524155 e!1183042))))

(declare-fun mapKey!8777 () (_ BitVec 32))

(declare-fun mapRest!8777 () (Array (_ BitVec 32) List!20569))

(assert (=> mapNonEmpty!8777 (= mapRest!8770 (store mapRest!8777 mapKey!8777 mapValue!8777))))

(declare-fun tp!524162 () Bool)

(declare-fun setNonEmpty!11385 () Bool)

(declare-fun e!1183040 () Bool)

(declare-fun setElem!11384 () Context!1890)

(assert (=> setNonEmpty!11385 (= setRes!11384 (and tp!524162 (inv!26885 setElem!11384) e!1183040))))

(declare-fun setRest!11384 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11385 (= (_2!11293 (h!25898 mapDefault!8777)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11384 true) setRest!11384))))

(declare-fun b!1851132 () Bool)

(declare-fun e!1183038 () Bool)

(declare-fun tp!524158 () Bool)

(assert (=> b!1851132 (= e!1183038 tp!524158)))

(declare-fun setIsEmpty!11385 () Bool)

(assert (=> setIsEmpty!11385 setRes!11385))

(declare-fun tp!524157 () Bool)

(declare-fun b!1851133 () Bool)

(declare-fun tp!524154 () Bool)

(assert (=> b!1851133 (= e!1183041 (and tp!524157 (inv!26885 (_2!11292 (_1!11293 (h!25898 mapDefault!8777)))) e!1183038 tp_is_empty!8497 setRes!11384 tp!524154))))

(declare-fun condSetEmpty!11385 () Bool)

(assert (=> b!1851133 (= condSetEmpty!11385 (= (_2!11293 (h!25898 mapDefault!8777)) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851134 () Bool)

(declare-fun tp!524156 () Bool)

(assert (=> b!1851134 (= e!1183040 tp!524156)))

(declare-fun tp!524153 () Bool)

(declare-fun b!1851135 () Bool)

(declare-fun tp!524160 () Bool)

(assert (=> b!1851135 (= e!1183042 (and tp!524160 (inv!26885 (_2!11292 (_1!11293 (h!25898 mapValue!8777)))) e!1183043 tp_is_empty!8497 setRes!11385 tp!524153))))

(declare-fun condSetEmpty!11384 () Bool)

(assert (=> b!1851135 (= condSetEmpty!11384 (= (_2!11293 (h!25898 mapValue!8777)) ((as const (Array Context!1890 Bool)) false)))))

(assert (= (and mapNonEmpty!8770 condMapEmpty!8777) mapIsEmpty!8777))

(assert (= (and mapNonEmpty!8770 (not condMapEmpty!8777)) mapNonEmpty!8777))

(assert (= b!1851135 b!1851130))

(assert (= (and b!1851135 condSetEmpty!11384) setIsEmpty!11385))

(assert (= (and b!1851135 (not condSetEmpty!11384)) setNonEmpty!11384))

(assert (= setNonEmpty!11384 b!1851131))

(assert (= (and mapNonEmpty!8777 ((_ is Cons!20497) mapValue!8777)) b!1851135))

(assert (= b!1851133 b!1851132))

(assert (= (and b!1851133 condSetEmpty!11385) setIsEmpty!11384))

(assert (= (and b!1851133 (not condSetEmpty!11385)) setNonEmpty!11385))

(assert (= setNonEmpty!11385 b!1851134))

(assert (= (and mapNonEmpty!8770 ((_ is Cons!20497) mapDefault!8777)) b!1851133))

(declare-fun m!2277635 () Bool)

(assert (=> setNonEmpty!11385 m!2277635))

(declare-fun m!2277637 () Bool)

(assert (=> b!1851135 m!2277637))

(declare-fun m!2277639 () Bool)

(assert (=> b!1851133 m!2277639))

(declare-fun m!2277641 () Bool)

(assert (=> setNonEmpty!11384 m!2277641))

(declare-fun m!2277643 () Bool)

(assert (=> mapNonEmpty!8777 m!2277643))

(declare-fun e!1183046 () Bool)

(declare-fun setRes!11386 () Bool)

(declare-fun b!1851136 () Bool)

(declare-fun tp!524164 () Bool)

(declare-fun tp!524167 () Bool)

(declare-fun e!1183045 () Bool)

(assert (=> b!1851136 (= e!1183046 (and tp!524164 (inv!26885 (_2!11292 (_1!11293 (h!25898 mapValue!8770)))) e!1183045 tp_is_empty!8497 setRes!11386 tp!524167))))

(declare-fun condSetEmpty!11386 () Bool)

(assert (=> b!1851136 (= condSetEmpty!11386 (= (_2!11293 (h!25898 mapValue!8770)) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> mapNonEmpty!8770 (= tp!524038 e!1183046)))

(declare-fun setElem!11386 () Context!1890)

(declare-fun tp!524168 () Bool)

(declare-fun setNonEmpty!11386 () Bool)

(declare-fun e!1183044 () Bool)

(assert (=> setNonEmpty!11386 (= setRes!11386 (and tp!524168 (inv!26885 setElem!11386) e!1183044))))

(declare-fun setRest!11386 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11386 (= (_2!11293 (h!25898 mapValue!8770)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11386 true) setRest!11386))))

(declare-fun b!1851137 () Bool)

(declare-fun tp!524165 () Bool)

(assert (=> b!1851137 (= e!1183044 tp!524165)))

(declare-fun b!1851138 () Bool)

(declare-fun tp!524166 () Bool)

(assert (=> b!1851138 (= e!1183045 tp!524166)))

(declare-fun setIsEmpty!11386 () Bool)

(assert (=> setIsEmpty!11386 setRes!11386))

(assert (= b!1851136 b!1851138))

(assert (= (and b!1851136 condSetEmpty!11386) setIsEmpty!11386))

(assert (= (and b!1851136 (not condSetEmpty!11386)) setNonEmpty!11386))

(assert (= setNonEmpty!11386 b!1851137))

(assert (= (and mapNonEmpty!8770 ((_ is Cons!20497) mapValue!8770)) b!1851136))

(declare-fun m!2277645 () Bool)

(assert (=> b!1851136 m!2277645))

(declare-fun m!2277647 () Bool)

(assert (=> setNonEmpty!11386 m!2277647))

(declare-fun b!1851142 () Bool)

(declare-fun e!1183047 () Bool)

(declare-fun tp!524172 () Bool)

(declare-fun tp!524170 () Bool)

(assert (=> b!1851142 (= e!1183047 (and tp!524172 tp!524170))))

(declare-fun b!1851141 () Bool)

(declare-fun tp!524173 () Bool)

(assert (=> b!1851141 (= e!1183047 tp!524173)))

(declare-fun b!1851140 () Bool)

(declare-fun tp!524169 () Bool)

(declare-fun tp!524171 () Bool)

(assert (=> b!1851140 (= e!1183047 (and tp!524169 tp!524171))))

(declare-fun b!1851139 () Bool)

(assert (=> b!1851139 (= e!1183047 tp_is_empty!8497)))

(assert (=> b!1850985 (= tp!524037 e!1183047)))

(assert (= (and b!1850985 ((_ is ElementMatch!5035) (regex!3672 (rule!5866 t!6207)))) b!1851139))

(assert (= (and b!1850985 ((_ is Concat!8823) (regex!3672 (rule!5866 t!6207)))) b!1851140))

(assert (= (and b!1850985 ((_ is Star!5035) (regex!3672 (rule!5866 t!6207)))) b!1851141))

(assert (= (and b!1850985 ((_ is Union!5035) (regex!3672 (rule!5866 t!6207)))) b!1851142))

(declare-fun b!1851153 () Bool)

(declare-fun b_free!51795 () Bool)

(declare-fun b_next!52499 () Bool)

(assert (=> b!1851153 (= b_free!51795 (not b_next!52499))))

(declare-fun tp!524184 () Bool)

(declare-fun b_and!144029 () Bool)

(assert (=> b!1851153 (= tp!524184 b_and!144029)))

(declare-fun b_free!51797 () Bool)

(declare-fun b_next!52501 () Bool)

(assert (=> b!1851153 (= b_free!51797 (not b_next!52501))))

(declare-fun t!172369 () Bool)

(declare-fun tb!112893 () Bool)

(assert (=> (and b!1851153 (= (toChars!5102 (transformation!3672 (h!25901 (t!172359 rs!164)))) (toChars!5102 (transformation!3672 (rule!5866 t!6207)))) t!172369) tb!112893))

(declare-fun result!136108 () Bool)

(assert (= result!136108 result!136088))

(assert (=> b!1851002 t!172369))

(declare-fun b_and!144031 () Bool)

(declare-fun tp!524185 () Bool)

(assert (=> b!1851153 (= tp!524185 (and (=> t!172369 result!136108) b_and!144031))))

(declare-fun e!1183058 () Bool)

(assert (=> b!1851153 (= e!1183058 (and tp!524184 tp!524185))))

(declare-fun b!1851152 () Bool)

(declare-fun e!1183056 () Bool)

(declare-fun tp!524183 () Bool)

(assert (=> b!1851152 (= e!1183056 (and tp!524183 (inv!26878 (tag!4086 (h!25901 (t!172359 rs!164)))) (inv!26879 (transformation!3672 (h!25901 (t!172359 rs!164)))) e!1183058))))

(declare-fun b!1851151 () Bool)

(declare-fun e!1183057 () Bool)

(declare-fun tp!524182 () Bool)

(assert (=> b!1851151 (= e!1183057 (and e!1183056 tp!524182))))

(assert (=> b!1850967 (= tp!524046 e!1183057)))

(assert (= b!1851152 b!1851153))

(assert (= b!1851151 b!1851152))

(assert (= (and b!1850967 ((_ is Cons!20500) (t!172359 rs!164))) b!1851151))

(declare-fun m!2277649 () Bool)

(assert (=> b!1851152 m!2277649))

(declare-fun m!2277651 () Bool)

(assert (=> b!1851152 m!2277651))

(declare-fun e!1183062 () Bool)

(declare-fun tp!524189 () Bool)

(declare-fun setRes!11387 () Bool)

(declare-fun tp!524186 () Bool)

(declare-fun e!1183061 () Bool)

(declare-fun b!1851154 () Bool)

(assert (=> b!1851154 (= e!1183062 (and tp!524186 (inv!26885 (_2!11292 (_1!11293 (h!25898 mapDefault!8771)))) e!1183061 tp_is_empty!8497 setRes!11387 tp!524189))))

(declare-fun condSetEmpty!11387 () Bool)

(assert (=> b!1851154 (= condSetEmpty!11387 (= (_2!11293 (h!25898 mapDefault!8771)) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> b!1850968 (= tp!524041 e!1183062)))

(declare-fun setNonEmpty!11387 () Bool)

(declare-fun e!1183060 () Bool)

(declare-fun setElem!11387 () Context!1890)

(declare-fun tp!524190 () Bool)

(assert (=> setNonEmpty!11387 (= setRes!11387 (and tp!524190 (inv!26885 setElem!11387) e!1183060))))

(declare-fun setRest!11387 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11387 (= (_2!11293 (h!25898 mapDefault!8771)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11387 true) setRest!11387))))

(declare-fun b!1851155 () Bool)

(declare-fun tp!524187 () Bool)

(assert (=> b!1851155 (= e!1183060 tp!524187)))

(declare-fun b!1851156 () Bool)

(declare-fun tp!524188 () Bool)

(assert (=> b!1851156 (= e!1183061 tp!524188)))

(declare-fun setIsEmpty!11387 () Bool)

(assert (=> setIsEmpty!11387 setRes!11387))

(assert (= b!1851154 b!1851156))

(assert (= (and b!1851154 condSetEmpty!11387) setIsEmpty!11387))

(assert (= (and b!1851154 (not condSetEmpty!11387)) setNonEmpty!11387))

(assert (= setNonEmpty!11387 b!1851155))

(assert (= (and b!1850968 ((_ is Cons!20497) mapDefault!8771)) b!1851154))

(declare-fun m!2277653 () Bool)

(assert (=> b!1851154 m!2277653))

(declare-fun m!2277655 () Bool)

(assert (=> setNonEmpty!11387 m!2277655))

(declare-fun b!1851157 () Bool)

(declare-fun e!1183065 () Bool)

(declare-fun tp!524194 () Bool)

(assert (=> b!1851157 (= e!1183065 tp!524194)))

(declare-fun tp!524192 () Bool)

(declare-fun b!1851158 () Bool)

(declare-fun setRes!11388 () Bool)

(declare-fun e!1183063 () Bool)

(assert (=> b!1851158 (= e!1183063 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))))) e!1183065 tp_is_empty!8497 setRes!11388 tp!524192))))

(declare-fun condSetEmpty!11388 () Bool)

(assert (=> b!1851158 (= condSetEmpty!11388 (= (_2!11295 (h!25902 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851159 () Bool)

(declare-fun e!1183064 () Bool)

(declare-fun tp!524191 () Bool)

(assert (=> b!1851159 (= e!1183064 tp!524191)))

(declare-fun setNonEmpty!11388 () Bool)

(declare-fun setElem!11388 () Context!1890)

(declare-fun tp!524193 () Bool)

(assert (=> setNonEmpty!11388 (= setRes!11388 (and tp!524193 (inv!26885 setElem!11388) e!1183064))))

(declare-fun setRest!11388 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11388 (= (_2!11295 (h!25902 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11388 true) setRest!11388))))

(declare-fun setIsEmpty!11388 () Bool)

(assert (=> setIsEmpty!11388 setRes!11388))

(assert (=> b!1850971 (= tp!524043 e!1183063)))

(assert (= b!1851158 b!1851157))

(assert (= (and b!1851158 condSetEmpty!11388) setIsEmpty!11388))

(assert (= (and b!1851158 (not condSetEmpty!11388)) setNonEmpty!11388))

(assert (= setNonEmpty!11388 b!1851159))

(assert (= (and b!1850971 ((_ is Cons!20501) (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))) b!1851158))

(declare-fun m!2277657 () Bool)

(assert (=> b!1851158 m!2277657))

(declare-fun m!2277659 () Bool)

(assert (=> setNonEmpty!11388 m!2277659))

(declare-fun b!1851160 () Bool)

(declare-fun e!1183068 () Bool)

(declare-fun tp!524198 () Bool)

(assert (=> b!1851160 (= e!1183068 tp!524198)))

(declare-fun tp!524196 () Bool)

(declare-fun b!1851161 () Bool)

(declare-fun e!1183066 () Bool)

(declare-fun setRes!11389 () Bool)

(assert (=> b!1851161 (= e!1183066 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))))) e!1183068 tp_is_empty!8497 setRes!11389 tp!524196))))

(declare-fun condSetEmpty!11389 () Bool)

(assert (=> b!1851161 (= condSetEmpty!11389 (= (_2!11295 (h!25902 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851162 () Bool)

(declare-fun e!1183067 () Bool)

(declare-fun tp!524195 () Bool)

(assert (=> b!1851162 (= e!1183067 tp!524195)))

(declare-fun setNonEmpty!11389 () Bool)

(declare-fun tp!524197 () Bool)

(declare-fun setElem!11389 () Context!1890)

(assert (=> setNonEmpty!11389 (= setRes!11389 (and tp!524197 (inv!26885 setElem!11389) e!1183067))))

(declare-fun setRest!11389 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11389 (= (_2!11295 (h!25902 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11389 true) setRest!11389))))

(declare-fun setIsEmpty!11389 () Bool)

(assert (=> setIsEmpty!11389 setRes!11389))

(assert (=> b!1850971 (= tp!524036 e!1183066)))

(assert (= b!1851161 b!1851160))

(assert (= (and b!1851161 condSetEmpty!11389) setIsEmpty!11389))

(assert (= (and b!1851161 (not condSetEmpty!11389)) setNonEmpty!11389))

(assert (= setNonEmpty!11389 b!1851162))

(assert (= (and b!1850971 ((_ is Cons!20501) (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))) b!1851161))

(declare-fun m!2277661 () Bool)

(assert (=> b!1851161 m!2277661))

(declare-fun m!2277663 () Bool)

(assert (=> setNonEmpty!11389 m!2277663))

(declare-fun b_lambda!61431 () Bool)

(assert (= b_lambda!61429 (or (and b!1850976 b_free!51783) (and b!1850978 b_free!51793 (= (toChars!5102 (transformation!3672 (h!25901 rs!164))) (toChars!5102 (transformation!3672 (rule!5866 t!6207))))) (and b!1851153 b_free!51797 (= (toChars!5102 (transformation!3672 (h!25901 (t!172359 rs!164)))) (toChars!5102 (transformation!3672 (rule!5866 t!6207))))) b_lambda!61431)))

(check-sat (not b!1851151) (not b!1851154) (not b_next!52485) (not d!565804) (not b!1851136) (not b!1851157) (not b_next!52487) (not d!565810) (not b_next!52493) (not d!565796) (not b!1851110) (not b!1851161) (not mapNonEmpty!8774) b_and!144015 (not b!1851011) (not d!565780) (not b!1851094) (not b!1851091) (not setNonEmpty!11388) (not b!1851105) b_and!144019 (not setNonEmpty!11368) (not b!1851130) (not setNonEmpty!11374) (not b!1851075) (not d!565792) (not b!1851109) (not b!1851133) b_and!144009 b_and!144031 (not b!1851015) (not tb!112889) b_and!144017 (not b!1851115) (not setNonEmpty!11389) (not b!1851062) (not b!1851002) (not setNonEmpty!11386) (not b!1851135) (not b_lambda!61431) (not b!1851092) (not b!1851142) (not b!1851043) (not b!1851027) b_and!144029 (not b!1851059) b_and!144021 (not b!1851057) (not b!1850994) (not b!1851156) (not b!1851022) (not b!1851014) (not b!1850997) (not mapNonEmpty!8777) (not b_next!52495) (not b!1851076) (not b!1851134) (not d!565798) (not b!1851138) (not b!1851045) (not setNonEmpty!11387) (not setNonEmpty!11375) tp_is_empty!8497 b_and!144027 (not b!1851160) (not b!1851030) (not b!1851107) (not b!1851042) (not setNonEmpty!11369) (not b!1851155) (not b_next!52489) (not b_next!52483) (not b!1851158) (not b!1851003) (not b!1851140) (not b!1851074) (not d!565790) (not b_next!52491) (not b!1851096) (not setNonEmpty!11379) (not d!565794) (not b!1851023) (not b_next!52501) (not b!1851060) (not d!565778) (not b!1851106) (not b_next!52497) b_and!144025 (not b!1851132) (not b!1851048) (not b!1851162) (not b_next!52499) (not b!1851131) (not d!565788) (not b!1851095) (not b!1851093) (not setNonEmpty!11385) (not b!1851061) (not setNonEmpty!11384) (not setNonEmpty!11378) (not b!1851008) (not b!1851058) (not b!1851024) (not b!1851159) (not b!1851152) (not b!1851108) (not d!565772) (not b!1851141) (not b!1851137) b_and!144011)
(check-sat b_and!144015 b_and!144019 b_and!144017 b_and!144029 b_and!144021 (not b_next!52495) b_and!144027 (not b_next!52485) (not b_next!52491) (not b_next!52499) b_and!144011 (not b_next!52487) (not b_next!52493) b_and!144009 b_and!144031 (not b_next!52489) (not b_next!52483) (not b_next!52501) (not b_next!52497) b_and!144025)
(get-model)

(declare-fun d!565812 () Bool)

(declare-fun lambda!73165 () Int)

(declare-fun forall!4386 (List!20568 Int) Bool)

(assert (=> d!565812 (= (inv!26885 (_2!11292 (_1!11293 (h!25898 mapValue!8770)))) (forall!4386 (exprs!1445 (_2!11292 (_1!11293 (h!25898 mapValue!8770)))) lambda!73165))))

(declare-fun bs!409808 () Bool)

(assert (= bs!409808 d!565812))

(declare-fun m!2277665 () Bool)

(assert (=> bs!409808 m!2277665))

(assert (=> b!1851136 d!565812))

(declare-fun d!565814 () Bool)

(declare-fun lt!715568 () Bool)

(assert (=> d!565814 (= lt!715568 (isEmpty!12795 (list!8312 (_2!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)))))))))

(assert (=> d!565814 (= lt!715568 (isEmpty!12796 (c!302025 (_2!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)))))))))

(assert (=> d!565814 (= (isEmpty!12794 (_2!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))) lt!715568)))

(declare-fun bs!409809 () Bool)

(assert (= bs!409809 d!565814))

(assert (=> bs!409809 m!2277585))

(assert (=> bs!409809 m!2277585))

(declare-fun m!2277667 () Bool)

(assert (=> bs!409809 m!2277667))

(declare-fun m!2277669 () Bool)

(assert (=> bs!409809 m!2277669))

(assert (=> b!1851024 d!565814))

(declare-fun b!1851173 () Bool)

(declare-fun e!1183077 () Bool)

(declare-fun lt!715571 () tuple2!19766)

(declare-fun isEmpty!12797 (BalanceConc!13488) Bool)

(assert (=> b!1851173 (= e!1183077 (not (isEmpty!12797 (_1!11296 lt!715571))))))

(declare-fun b!1851174 () Bool)

(declare-fun e!1183075 () Bool)

(assert (=> b!1851174 (= e!1183075 e!1183077)))

(declare-fun res!830874 () Bool)

(declare-fun size!16194 (BalanceConc!13486) Int)

(assert (=> b!1851174 (= res!830874 (< (size!16194 (_2!11296 lt!715571)) (size!16194 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)))))))

(assert (=> b!1851174 (=> (not res!830874) (not e!1183077))))

(declare-fun b!1851175 () Bool)

(assert (=> b!1851175 (= e!1183075 (= (_2!11296 lt!715571) (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))))

(declare-fun d!565816 () Bool)

(declare-fun e!1183076 () Bool)

(assert (=> d!565816 e!1183076))

(declare-fun res!830876 () Bool)

(assert (=> d!565816 (=> (not res!830876) (not e!1183076))))

(assert (=> d!565816 (= res!830876 e!1183075)))

(declare-fun c!302036 () Bool)

(assert (=> d!565816 (= c!302036 (> (size!16190 (_1!11296 lt!715571)) 0))))

(declare-fun lexTailRecV2!653 (LexerInterface!3294 List!20572 BalanceConc!13486 BalanceConc!13486 BalanceConc!13486 BalanceConc!13488) tuple2!19766)

(assert (=> d!565816 (= lt!715571 (lexTailRecV2!653 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13487 Empty!6782) (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13489 Empty!6783)))))

(assert (=> d!565816 (= (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))) lt!715571)))

(declare-fun b!1851176 () Bool)

(declare-datatypes ((tuple2!19768 0))(
  ( (tuple2!19769 (_1!11298 List!20574) (_2!11298 List!20571)) )
))
(declare-fun lexList!930 (LexerInterface!3294 List!20572 List!20571) tuple2!19768)

(assert (=> b!1851176 (= e!1183076 (= (list!8312 (_2!11296 lt!715571)) (_2!11298 (lexList!930 thiss!10908 rs!164 (list!8312 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)))))))))

(declare-fun b!1851177 () Bool)

(declare-fun res!830875 () Bool)

(assert (=> b!1851177 (=> (not res!830875) (not e!1183076))))

(assert (=> b!1851177 (= res!830875 (= (list!8313 (_1!11296 lt!715571)) (_1!11298 (lexList!930 thiss!10908 rs!164 (list!8312 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)))))))))

(assert (= (and d!565816 c!302036) b!1851174))

(assert (= (and d!565816 (not c!302036)) b!1851175))

(assert (= (and b!1851174 res!830874) b!1851173))

(assert (= (and d!565816 res!830876) b!1851177))

(assert (= (and b!1851177 res!830875) b!1851176))

(declare-fun m!2277671 () Bool)

(assert (=> b!1851174 m!2277671))

(assert (=> b!1851174 m!2277485))

(declare-fun m!2277673 () Bool)

(assert (=> b!1851174 m!2277673))

(declare-fun m!2277675 () Bool)

(assert (=> d!565816 m!2277675))

(assert (=> d!565816 m!2277485))

(assert (=> d!565816 m!2277485))

(declare-fun m!2277677 () Bool)

(assert (=> d!565816 m!2277677))

(declare-fun m!2277679 () Bool)

(assert (=> b!1851173 m!2277679))

(declare-fun m!2277681 () Bool)

(assert (=> b!1851177 m!2277681))

(assert (=> b!1851177 m!2277485))

(declare-fun m!2277683 () Bool)

(assert (=> b!1851177 m!2277683))

(assert (=> b!1851177 m!2277683))

(declare-fun m!2277685 () Bool)

(assert (=> b!1851177 m!2277685))

(declare-fun m!2277687 () Bool)

(assert (=> b!1851176 m!2277687))

(assert (=> b!1851176 m!2277485))

(assert (=> b!1851176 m!2277683))

(assert (=> b!1851176 m!2277683))

(assert (=> b!1851176 m!2277685))

(assert (=> b!1851024 d!565816))

(assert (=> b!1851024 d!565792))

(assert (=> b!1851024 d!565798))

(declare-fun bs!409810 () Bool)

(declare-fun d!565818 () Bool)

(assert (= bs!409810 (and d!565818 d!565812)))

(declare-fun lambda!73166 () Int)

(assert (=> bs!409810 (= lambda!73166 lambda!73165)))

(assert (=> d!565818 (= (inv!26885 (_2!11292 (_1!11293 (h!25898 mapValue!8777)))) (forall!4386 (exprs!1445 (_2!11292 (_1!11293 (h!25898 mapValue!8777)))) lambda!73166))))

(declare-fun bs!409811 () Bool)

(assert (= bs!409811 d!565818))

(declare-fun m!2277689 () Bool)

(assert (=> bs!409811 m!2277689))

(assert (=> b!1851135 d!565818))

(assert (=> b!1851048 d!565790))

(declare-fun d!565820 () Bool)

(declare-fun lt!715572 () Token!6898)

(assert (=> d!565820 (= lt!715572 (apply!5452 (list!8313 (_1!11296 lt!715552)) 0))))

(assert (=> d!565820 (= lt!715572 (apply!5453 (c!302026 (_1!11296 lt!715552)) 0))))

(declare-fun e!1183078 () Bool)

(assert (=> d!565820 e!1183078))

(declare-fun res!830877 () Bool)

(assert (=> d!565820 (=> (not res!830877) (not e!1183078))))

(assert (=> d!565820 (= res!830877 (<= 0 0))))

(assert (=> d!565820 (= (apply!5451 (_1!11296 lt!715552) 0) lt!715572)))

(declare-fun b!1851178 () Bool)

(assert (=> b!1851178 (= e!1183078 (< 0 (size!16190 (_1!11296 lt!715552))))))

(assert (= (and d!565820 res!830877) b!1851178))

(declare-fun m!2277691 () Bool)

(assert (=> d!565820 m!2277691))

(assert (=> d!565820 m!2277691))

(declare-fun m!2277693 () Bool)

(assert (=> d!565820 m!2277693))

(declare-fun m!2277695 () Bool)

(assert (=> d!565820 m!2277695))

(assert (=> b!1851178 m!2277567))

(assert (=> b!1851022 d!565820))

(declare-fun bs!409812 () Bool)

(declare-fun d!565822 () Bool)

(assert (= bs!409812 (and d!565822 d!565812)))

(declare-fun lambda!73167 () Int)

(assert (=> bs!409812 (= lambda!73167 lambda!73165)))

(declare-fun bs!409813 () Bool)

(assert (= bs!409813 (and d!565822 d!565818)))

(assert (=> bs!409813 (= lambda!73167 lambda!73166)))

(assert (=> d!565822 (= (inv!26885 (_2!11292 (_1!11293 (h!25898 mapDefault!8777)))) (forall!4386 (exprs!1445 (_2!11292 (_1!11293 (h!25898 mapDefault!8777)))) lambda!73167))))

(declare-fun bs!409814 () Bool)

(assert (= bs!409814 d!565822))

(declare-fun m!2277697 () Bool)

(assert (=> bs!409814 m!2277697))

(assert (=> b!1851133 d!565822))

(declare-fun d!565824 () Bool)

(assert (=> d!565824 true))

(declare-fun lt!715575 () Bool)

(declare-fun rulesValidInductive!1265 (LexerInterface!3294 List!20572) Bool)

(assert (=> d!565824 (= lt!715575 (rulesValidInductive!1265 thiss!10908 rs!164))))

(declare-fun lambda!73170 () Int)

(declare-fun forall!4387 (List!20572 Int) Bool)

(assert (=> d!565824 (= lt!715575 (forall!4387 rs!164 lambda!73170))))

(assert (=> d!565824 (= (rulesValid!1401 thiss!10908 rs!164) lt!715575)))

(declare-fun bs!409815 () Bool)

(assert (= bs!409815 d!565824))

(declare-fun m!2277699 () Bool)

(assert (=> bs!409815 m!2277699))

(declare-fun m!2277701 () Bool)

(assert (=> bs!409815 m!2277701))

(assert (=> d!565778 d!565824))

(declare-fun bs!409816 () Bool)

(declare-fun d!565826 () Bool)

(assert (= bs!409816 (and d!565826 d!565812)))

(declare-fun lambda!73171 () Int)

(assert (=> bs!409816 (= lambda!73171 lambda!73165)))

(declare-fun bs!409817 () Bool)

(assert (= bs!409817 (and d!565826 d!565818)))

(assert (=> bs!409817 (= lambda!73171 lambda!73166)))

(declare-fun bs!409818 () Bool)

(assert (= bs!409818 (and d!565826 d!565822)))

(assert (=> bs!409818 (= lambda!73171 lambda!73167)))

(assert (=> d!565826 (= (inv!26885 (_2!11292 (_1!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))))) (forall!4386 (exprs!1445 (_2!11292 (_1!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))))) lambda!73171))))

(declare-fun bs!409819 () Bool)

(assert (= bs!409819 d!565826))

(declare-fun m!2277703 () Bool)

(assert (=> bs!409819 m!2277703))

(assert (=> b!1851057 d!565826))

(declare-fun bs!409820 () Bool)

(declare-fun d!565828 () Bool)

(assert (= bs!409820 (and d!565828 d!565812)))

(declare-fun lambda!73172 () Int)

(assert (=> bs!409820 (= lambda!73172 lambda!73165)))

(declare-fun bs!409821 () Bool)

(assert (= bs!409821 (and d!565828 d!565818)))

(assert (=> bs!409821 (= lambda!73172 lambda!73166)))

(declare-fun bs!409822 () Bool)

(assert (= bs!409822 (and d!565828 d!565822)))

(assert (=> bs!409822 (= lambda!73172 lambda!73167)))

(declare-fun bs!409823 () Bool)

(assert (= bs!409823 (and d!565828 d!565826)))

(assert (=> bs!409823 (= lambda!73172 lambda!73171)))

(assert (=> d!565828 (= (inv!26885 (_2!11292 (_1!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))))) (forall!4386 (exprs!1445 (_2!11292 (_1!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))))) lambda!73172))))

(declare-fun bs!409824 () Bool)

(assert (= bs!409824 d!565828))

(declare-fun m!2277705 () Bool)

(assert (=> bs!409824 m!2277705))

(assert (=> b!1851060 d!565828))

(declare-fun bs!409825 () Bool)

(declare-fun d!565830 () Bool)

(assert (= bs!409825 (and d!565830 d!565826)))

(declare-fun lambda!73173 () Int)

(assert (=> bs!409825 (= lambda!73173 lambda!73171)))

(declare-fun bs!409826 () Bool)

(assert (= bs!409826 (and d!565830 d!565822)))

(assert (=> bs!409826 (= lambda!73173 lambda!73167)))

(declare-fun bs!409827 () Bool)

(assert (= bs!409827 (and d!565830 d!565812)))

(assert (=> bs!409827 (= lambda!73173 lambda!73165)))

(declare-fun bs!409828 () Bool)

(assert (= bs!409828 (and d!565830 d!565818)))

(assert (=> bs!409828 (= lambda!73173 lambda!73166)))

(declare-fun bs!409829 () Bool)

(assert (= bs!409829 (and d!565830 d!565828)))

(assert (=> bs!409829 (= lambda!73173 lambda!73172)))

(assert (=> d!565830 (= (inv!26885 setElem!11379) (forall!4386 (exprs!1445 setElem!11379) lambda!73173))))

(declare-fun bs!409830 () Bool)

(assert (= bs!409830 d!565830))

(declare-fun m!2277707 () Bool)

(assert (=> bs!409830 m!2277707))

(assert (=> setNonEmpty!11379 d!565830))

(declare-fun d!565832 () Bool)

(assert (=> d!565832 true))

(declare-fun order!13187 () Int)

(declare-fun order!13185 () Int)

(declare-fun lambda!73176 () Int)

(declare-fun dynLambda!10162 (Int Int) Int)

(declare-fun dynLambda!10163 (Int Int) Int)

(assert (=> d!565832 (< (dynLambda!10162 order!13185 (toChars!5102 (transformation!3672 (rule!5866 t!6207)))) (dynLambda!10163 order!13187 lambda!73176))))

(assert (=> d!565832 true))

(declare-fun order!13189 () Int)

(declare-fun dynLambda!10164 (Int Int) Int)

(assert (=> d!565832 (< (dynLambda!10164 order!13189 (toValue!5243 (transformation!3672 (rule!5866 t!6207)))) (dynLambda!10163 order!13187 lambda!73176))))

(declare-fun Forall!959 (Int) Bool)

(assert (=> d!565832 (= (semiInverseModEq!1491 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (toValue!5243 (transformation!3672 (rule!5866 t!6207)))) (Forall!959 lambda!73176))))

(declare-fun bs!409831 () Bool)

(assert (= bs!409831 d!565832))

(declare-fun m!2277709 () Bool)

(assert (=> bs!409831 m!2277709))

(assert (=> d!565772 d!565832))

(declare-fun d!565834 () Bool)

(assert (=> d!565834 (= (isEmpty!12795 (originalCharacters!4480 t!6207)) ((_ is Nil!20499) (originalCharacters!4480 t!6207)))))

(assert (=> d!565780 d!565834))

(declare-fun bs!409832 () Bool)

(declare-fun d!565836 () Bool)

(assert (= bs!409832 (and d!565836 d!565826)))

(declare-fun lambda!73177 () Int)

(assert (=> bs!409832 (= lambda!73177 lambda!73171)))

(declare-fun bs!409833 () Bool)

(assert (= bs!409833 (and d!565836 d!565822)))

(assert (=> bs!409833 (= lambda!73177 lambda!73167)))

(declare-fun bs!409834 () Bool)

(assert (= bs!409834 (and d!565836 d!565812)))

(assert (=> bs!409834 (= lambda!73177 lambda!73165)))

(declare-fun bs!409835 () Bool)

(assert (= bs!409835 (and d!565836 d!565818)))

(assert (=> bs!409835 (= lambda!73177 lambda!73166)))

(declare-fun bs!409836 () Bool)

(assert (= bs!409836 (and d!565836 d!565828)))

(assert (=> bs!409836 (= lambda!73177 lambda!73172)))

(declare-fun bs!409837 () Bool)

(assert (= bs!409837 (and d!565836 d!565830)))

(assert (=> bs!409837 (= lambda!73177 lambda!73173)))

(assert (=> d!565836 (= (inv!26885 (_1!11294 (_1!11295 (h!25902 mapDefault!8770)))) (forall!4386 (exprs!1445 (_1!11294 (_1!11295 (h!25902 mapDefault!8770)))) lambda!73177))))

(declare-fun bs!409838 () Bool)

(assert (= bs!409838 d!565836))

(declare-fun m!2277711 () Bool)

(assert (=> bs!409838 m!2277711))

(assert (=> b!1851109 d!565836))

(declare-fun d!565838 () Bool)

(declare-fun list!8314 (Conc!6782) List!20571)

(assert (=> d!565838 (= (list!8312 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207))) (list!8314 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207)))))))

(declare-fun bs!409839 () Bool)

(assert (= bs!409839 d!565838))

(declare-fun m!2277713 () Bool)

(assert (=> bs!409839 m!2277713))

(assert (=> b!1851002 d!565838))

(declare-fun d!565840 () Bool)

(declare-fun charsToInt!0 (List!20570) (_ BitVec 32))

(assert (=> d!565840 (= (inv!16 (value!115233 t!6207)) (= (charsToInt!0 (text!26963 (value!115233 t!6207))) (value!115224 (value!115233 t!6207))))))

(declare-fun bs!409840 () Bool)

(assert (= bs!409840 d!565840))

(declare-fun m!2277715 () Bool)

(assert (=> bs!409840 m!2277715))

(assert (=> b!1851042 d!565840))

(declare-fun bs!409841 () Bool)

(declare-fun d!565842 () Bool)

(assert (= bs!409841 (and d!565842 d!565826)))

(declare-fun lambda!73178 () Int)

(assert (=> bs!409841 (= lambda!73178 lambda!73171)))

(declare-fun bs!409842 () Bool)

(assert (= bs!409842 (and d!565842 d!565822)))

(assert (=> bs!409842 (= lambda!73178 lambda!73167)))

(declare-fun bs!409843 () Bool)

(assert (= bs!409843 (and d!565842 d!565836)))

(assert (=> bs!409843 (= lambda!73178 lambda!73177)))

(declare-fun bs!409844 () Bool)

(assert (= bs!409844 (and d!565842 d!565812)))

(assert (=> bs!409844 (= lambda!73178 lambda!73165)))

(declare-fun bs!409845 () Bool)

(assert (= bs!409845 (and d!565842 d!565818)))

(assert (=> bs!409845 (= lambda!73178 lambda!73166)))

(declare-fun bs!409846 () Bool)

(assert (= bs!409846 (and d!565842 d!565828)))

(assert (=> bs!409846 (= lambda!73178 lambda!73172)))

(declare-fun bs!409847 () Bool)

(assert (= bs!409847 (and d!565842 d!565830)))

(assert (=> bs!409847 (= lambda!73178 lambda!73173)))

(assert (=> d!565842 (= (inv!26885 setElem!11387) (forall!4386 (exprs!1445 setElem!11387) lambda!73178))))

(declare-fun bs!409848 () Bool)

(assert (= bs!409848 d!565842))

(declare-fun m!2277717 () Bool)

(assert (=> bs!409848 m!2277717))

(assert (=> setNonEmpty!11387 d!565842))

(declare-fun bs!409849 () Bool)

(declare-fun d!565844 () Bool)

(assert (= bs!409849 (and d!565844 d!565826)))

(declare-fun lambda!73179 () Int)

(assert (=> bs!409849 (= lambda!73179 lambda!73171)))

(declare-fun bs!409850 () Bool)

(assert (= bs!409850 (and d!565844 d!565822)))

(assert (=> bs!409850 (= lambda!73179 lambda!73167)))

(declare-fun bs!409851 () Bool)

(assert (= bs!409851 (and d!565844 d!565812)))

(assert (=> bs!409851 (= lambda!73179 lambda!73165)))

(declare-fun bs!409852 () Bool)

(assert (= bs!409852 (and d!565844 d!565818)))

(assert (=> bs!409852 (= lambda!73179 lambda!73166)))

(declare-fun bs!409853 () Bool)

(assert (= bs!409853 (and d!565844 d!565828)))

(assert (=> bs!409853 (= lambda!73179 lambda!73172)))

(declare-fun bs!409854 () Bool)

(assert (= bs!409854 (and d!565844 d!565830)))

(assert (=> bs!409854 (= lambda!73179 lambda!73173)))

(declare-fun bs!409855 () Bool)

(assert (= bs!409855 (and d!565844 d!565842)))

(assert (=> bs!409855 (= lambda!73179 lambda!73178)))

(declare-fun bs!409856 () Bool)

(assert (= bs!409856 (and d!565844 d!565836)))

(assert (=> bs!409856 (= lambda!73179 lambda!73177)))

(assert (=> d!565844 (= (inv!26885 setElem!11389) (forall!4386 (exprs!1445 setElem!11389) lambda!73179))))

(declare-fun bs!409857 () Bool)

(assert (= bs!409857 d!565844))

(declare-fun m!2277719 () Bool)

(assert (=> bs!409857 m!2277719))

(assert (=> setNonEmpty!11389 d!565844))

(declare-fun d!565846 () Bool)

(declare-fun res!830882 () Bool)

(declare-fun e!1183083 () Bool)

(assert (=> d!565846 (=> res!830882 e!1183083)))

(assert (=> d!565846 (= res!830882 ((_ is Nil!20500) rs!164))))

(assert (=> d!565846 (= (noDuplicateTag!1399 thiss!10908 rs!164 Nil!20503) e!1183083)))

(declare-fun b!1851189 () Bool)

(declare-fun e!1183084 () Bool)

(assert (=> b!1851189 (= e!1183083 e!1183084)))

(declare-fun res!830883 () Bool)

(assert (=> b!1851189 (=> (not res!830883) (not e!1183084))))

(declare-fun contains!3787 (List!20575 String!23510) Bool)

(assert (=> b!1851189 (= res!830883 (not (contains!3787 Nil!20503 (tag!4086 (h!25901 rs!164)))))))

(declare-fun b!1851190 () Bool)

(assert (=> b!1851190 (= e!1183084 (noDuplicateTag!1399 thiss!10908 (t!172359 rs!164) (Cons!20503 (tag!4086 (h!25901 rs!164)) Nil!20503)))))

(assert (= (and d!565846 (not res!830882)) b!1851189))

(assert (= (and b!1851189 res!830883) b!1851190))

(declare-fun m!2277721 () Bool)

(assert (=> b!1851189 m!2277721))

(declare-fun m!2277723 () Bool)

(assert (=> b!1851190 m!2277723))

(assert (=> b!1850997 d!565846))

(declare-fun d!565848 () Bool)

(declare-fun lt!715576 () Int)

(assert (=> d!565848 (= lt!715576 (size!16192 (list!8313 (_1!11296 lt!715552))))))

(assert (=> d!565848 (= lt!715576 (size!16193 (c!302026 (_1!11296 lt!715552))))))

(assert (=> d!565848 (= (size!16190 (_1!11296 lt!715552)) lt!715576)))

(declare-fun bs!409858 () Bool)

(assert (= bs!409858 d!565848))

(assert (=> bs!409858 m!2277691))

(assert (=> bs!409858 m!2277691))

(declare-fun m!2277725 () Bool)

(assert (=> bs!409858 m!2277725))

(declare-fun m!2277727 () Bool)

(assert (=> bs!409858 m!2277727))

(assert (=> d!565794 d!565848))

(assert (=> d!565794 d!565792))

(declare-fun d!565850 () Bool)

(declare-fun list!8315 (Conc!6783) List!20574)

(assert (=> d!565850 (= (list!8313 (singletonSeq!1801 t!6207)) (list!8315 (c!302026 (singletonSeq!1801 t!6207))))))

(declare-fun bs!409859 () Bool)

(assert (= bs!409859 d!565850))

(declare-fun m!2277729 () Bool)

(assert (=> bs!409859 m!2277729))

(assert (=> d!565794 d!565850))

(declare-fun d!565852 () Bool)

(assert (=> d!565852 (= (list!8313 (_1!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))) (list!8315 (c!302026 (_1!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)))))))))

(declare-fun bs!409860 () Bool)

(assert (= bs!409860 d!565852))

(declare-fun m!2277731 () Bool)

(assert (=> bs!409860 m!2277731))

(assert (=> d!565794 d!565852))

(assert (=> d!565794 d!565816))

(assert (=> d!565794 d!565798))

(assert (=> d!565794 d!565802))

(declare-fun bs!409861 () Bool)

(declare-fun d!565854 () Bool)

(assert (= bs!409861 (and d!565854 d!565832)))

(declare-fun lambda!73180 () Int)

(assert (=> bs!409861 (= (and (= (toChars!5102 (transformation!3672 (h!25901 rs!164))) (toChars!5102 (transformation!3672 (rule!5866 t!6207)))) (= (toValue!5243 (transformation!3672 (h!25901 rs!164))) (toValue!5243 (transformation!3672 (rule!5866 t!6207))))) (= lambda!73180 lambda!73176))))

(assert (=> d!565854 true))

(assert (=> d!565854 (< (dynLambda!10162 order!13185 (toChars!5102 (transformation!3672 (h!25901 rs!164)))) (dynLambda!10163 order!13187 lambda!73180))))

(assert (=> d!565854 true))

(assert (=> d!565854 (< (dynLambda!10164 order!13189 (toValue!5243 (transformation!3672 (h!25901 rs!164)))) (dynLambda!10163 order!13187 lambda!73180))))

(assert (=> d!565854 (= (semiInverseModEq!1491 (toChars!5102 (transformation!3672 (h!25901 rs!164))) (toValue!5243 (transformation!3672 (h!25901 rs!164)))) (Forall!959 lambda!73180))))

(declare-fun bs!409862 () Bool)

(assert (= bs!409862 d!565854))

(declare-fun m!2277733 () Bool)

(assert (=> bs!409862 m!2277733))

(assert (=> d!565788 d!565854))

(declare-fun bs!409863 () Bool)

(declare-fun d!565856 () Bool)

(assert (= bs!409863 (and d!565856 d!565826)))

(declare-fun lambda!73181 () Int)

(assert (=> bs!409863 (= lambda!73181 lambda!73171)))

(declare-fun bs!409864 () Bool)

(assert (= bs!409864 (and d!565856 d!565844)))

(assert (=> bs!409864 (= lambda!73181 lambda!73179)))

(declare-fun bs!409865 () Bool)

(assert (= bs!409865 (and d!565856 d!565822)))

(assert (=> bs!409865 (= lambda!73181 lambda!73167)))

(declare-fun bs!409866 () Bool)

(assert (= bs!409866 (and d!565856 d!565812)))

(assert (=> bs!409866 (= lambda!73181 lambda!73165)))

(declare-fun bs!409867 () Bool)

(assert (= bs!409867 (and d!565856 d!565818)))

(assert (=> bs!409867 (= lambda!73181 lambda!73166)))

(declare-fun bs!409868 () Bool)

(assert (= bs!409868 (and d!565856 d!565828)))

(assert (=> bs!409868 (= lambda!73181 lambda!73172)))

(declare-fun bs!409869 () Bool)

(assert (= bs!409869 (and d!565856 d!565830)))

(assert (=> bs!409869 (= lambda!73181 lambda!73173)))

(declare-fun bs!409870 () Bool)

(assert (= bs!409870 (and d!565856 d!565842)))

(assert (=> bs!409870 (= lambda!73181 lambda!73178)))

(declare-fun bs!409871 () Bool)

(assert (= bs!409871 (and d!565856 d!565836)))

(assert (=> bs!409871 (= lambda!73181 lambda!73177)))

(assert (=> d!565856 (= (inv!26885 (_1!11294 (_1!11295 (h!25902 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))))) (forall!4386 (exprs!1445 (_1!11294 (_1!11295 (h!25902 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))))) lambda!73181))))

(declare-fun bs!409872 () Bool)

(assert (= bs!409872 d!565856))

(declare-fun m!2277735 () Bool)

(assert (=> bs!409872 m!2277735))

(assert (=> b!1851161 d!565856))

(declare-fun d!565858 () Bool)

(declare-fun lt!715579 () Token!6898)

(declare-fun contains!3788 (List!20574 Token!6898) Bool)

(assert (=> d!565858 (contains!3788 (list!8313 (_1!11296 (_1!11297 lt!715538))) lt!715579)))

(declare-fun e!1183090 () Token!6898)

(assert (=> d!565858 (= lt!715579 e!1183090)))

(declare-fun c!302039 () Bool)

(assert (=> d!565858 (= c!302039 (= 0 0))))

(declare-fun e!1183089 () Bool)

(assert (=> d!565858 e!1183089))

(declare-fun res!830886 () Bool)

(assert (=> d!565858 (=> (not res!830886) (not e!1183089))))

(assert (=> d!565858 (= res!830886 (<= 0 0))))

(assert (=> d!565858 (= (apply!5452 (list!8313 (_1!11296 (_1!11297 lt!715538))) 0) lt!715579)))

(declare-fun b!1851197 () Bool)

(assert (=> b!1851197 (= e!1183089 (< 0 (size!16192 (list!8313 (_1!11296 (_1!11297 lt!715538))))))))

(declare-fun b!1851198 () Bool)

(declare-fun head!4332 (List!20574) Token!6898)

(assert (=> b!1851198 (= e!1183090 (head!4332 (list!8313 (_1!11296 (_1!11297 lt!715538)))))))

(declare-fun b!1851199 () Bool)

(declare-fun tail!2795 (List!20574) List!20574)

(assert (=> b!1851199 (= e!1183090 (apply!5452 (tail!2795 (list!8313 (_1!11296 (_1!11297 lt!715538)))) (- 0 1)))))

(assert (= (and d!565858 res!830886) b!1851197))

(assert (= (and d!565858 c!302039) b!1851198))

(assert (= (and d!565858 (not c!302039)) b!1851199))

(assert (=> d!565858 m!2277553))

(declare-fun m!2277737 () Bool)

(assert (=> d!565858 m!2277737))

(assert (=> b!1851197 m!2277553))

(assert (=> b!1851197 m!2277555))

(assert (=> b!1851198 m!2277553))

(declare-fun m!2277739 () Bool)

(assert (=> b!1851198 m!2277739))

(assert (=> b!1851199 m!2277553))

(declare-fun m!2277741 () Bool)

(assert (=> b!1851199 m!2277741))

(assert (=> b!1851199 m!2277741))

(declare-fun m!2277743 () Bool)

(assert (=> b!1851199 m!2277743))

(assert (=> d!565810 d!565858))

(declare-fun d!565860 () Bool)

(assert (=> d!565860 (= (list!8313 (_1!11296 (_1!11297 lt!715538))) (list!8315 (c!302026 (_1!11296 (_1!11297 lt!715538)))))))

(declare-fun bs!409873 () Bool)

(assert (= bs!409873 d!565860))

(declare-fun m!2277745 () Bool)

(assert (=> bs!409873 m!2277745))

(assert (=> d!565810 d!565860))

(declare-fun b!1851214 () Bool)

(declare-fun e!1183099 () Int)

(assert (=> b!1851214 (= e!1183099 (- 0 (size!16193 (left!16462 (c!302026 (_1!11296 (_1!11297 lt!715538)))))))))

(declare-fun b!1851215 () Bool)

(declare-fun e!1183101 () Token!6898)

(declare-fun call!115373 () Token!6898)

(assert (=> b!1851215 (= e!1183101 call!115373)))

(declare-fun b!1851216 () Bool)

(declare-fun e!1183100 () Bool)

(assert (=> b!1851216 (= e!1183100 (< 0 (size!16193 (c!302026 (_1!11296 (_1!11297 lt!715538))))))))

(declare-fun b!1851217 () Bool)

(assert (=> b!1851217 (= e!1183101 call!115373)))

(declare-fun b!1851218 () Bool)

(declare-fun e!1183102 () Token!6898)

(assert (=> b!1851218 (= e!1183102 e!1183101)))

(declare-fun lt!715584 () Bool)

(declare-fun appendIndex!232 (List!20574 List!20574 Int) Bool)

(assert (=> b!1851218 (= lt!715584 (appendIndex!232 (list!8315 (left!16462 (c!302026 (_1!11296 (_1!11297 lt!715538))))) (list!8315 (right!16792 (c!302026 (_1!11296 (_1!11297 lt!715538))))) 0))))

(declare-fun c!302046 () Bool)

(assert (=> b!1851218 (= c!302046 (< 0 (size!16193 (left!16462 (c!302026 (_1!11296 (_1!11297 lt!715538)))))))))

(declare-fun bm!115368 () Bool)

(declare-fun c!302048 () Bool)

(assert (=> bm!115368 (= c!302048 c!302046)))

(assert (=> bm!115368 (= call!115373 (apply!5453 (ite c!302046 (left!16462 (c!302026 (_1!11296 (_1!11297 lt!715538)))) (right!16792 (c!302026 (_1!11296 (_1!11297 lt!715538))))) e!1183099))))

(declare-fun d!565862 () Bool)

(declare-fun lt!715585 () Token!6898)

(assert (=> d!565862 (= lt!715585 (apply!5452 (list!8315 (c!302026 (_1!11296 (_1!11297 lt!715538)))) 0))))

(assert (=> d!565862 (= lt!715585 e!1183102)))

(declare-fun c!302047 () Bool)

(assert (=> d!565862 (= c!302047 ((_ is Leaf!9925) (c!302026 (_1!11296 (_1!11297 lt!715538)))))))

(assert (=> d!565862 e!1183100))

(declare-fun res!830889 () Bool)

(assert (=> d!565862 (=> (not res!830889) (not e!1183100))))

(assert (=> d!565862 (= res!830889 (<= 0 0))))

(assert (=> d!565862 (= (apply!5453 (c!302026 (_1!11296 (_1!11297 lt!715538))) 0) lt!715585)))

(declare-fun b!1851219 () Bool)

(assert (=> b!1851219 (= e!1183099 0)))

(declare-fun b!1851220 () Bool)

(declare-fun apply!5454 (IArray!13571 Int) Token!6898)

(assert (=> b!1851220 (= e!1183102 (apply!5454 (xs!9659 (c!302026 (_1!11296 (_1!11297 lt!715538)))) 0))))

(assert (= (and d!565862 res!830889) b!1851216))

(assert (= (and d!565862 c!302047) b!1851220))

(assert (= (and d!565862 (not c!302047)) b!1851218))

(assert (= (and b!1851218 c!302046) b!1851217))

(assert (= (and b!1851218 (not c!302046)) b!1851215))

(assert (= (or b!1851217 b!1851215) bm!115368))

(assert (= (and bm!115368 c!302048) b!1851219))

(assert (= (and bm!115368 (not c!302048)) b!1851214))

(declare-fun m!2277747 () Bool)

(assert (=> b!1851214 m!2277747))

(declare-fun m!2277749 () Bool)

(assert (=> b!1851220 m!2277749))

(declare-fun m!2277751 () Bool)

(assert (=> b!1851218 m!2277751))

(declare-fun m!2277753 () Bool)

(assert (=> b!1851218 m!2277753))

(assert (=> b!1851218 m!2277751))

(assert (=> b!1851218 m!2277753))

(declare-fun m!2277755 () Bool)

(assert (=> b!1851218 m!2277755))

(assert (=> b!1851218 m!2277747))

(declare-fun m!2277757 () Bool)

(assert (=> bm!115368 m!2277757))

(assert (=> d!565862 m!2277745))

(assert (=> d!565862 m!2277745))

(declare-fun m!2277759 () Bool)

(assert (=> d!565862 m!2277759))

(assert (=> b!1851216 m!2277557))

(assert (=> d!565810 d!565862))

(declare-fun bs!409874 () Bool)

(declare-fun d!565864 () Bool)

(assert (= bs!409874 (and d!565864 d!565826)))

(declare-fun lambda!73182 () Int)

(assert (=> bs!409874 (= lambda!73182 lambda!73171)))

(declare-fun bs!409875 () Bool)

(assert (= bs!409875 (and d!565864 d!565844)))

(assert (=> bs!409875 (= lambda!73182 lambda!73179)))

(declare-fun bs!409876 () Bool)

(assert (= bs!409876 (and d!565864 d!565822)))

(assert (=> bs!409876 (= lambda!73182 lambda!73167)))

(declare-fun bs!409877 () Bool)

(assert (= bs!409877 (and d!565864 d!565812)))

(assert (=> bs!409877 (= lambda!73182 lambda!73165)))

(declare-fun bs!409878 () Bool)

(assert (= bs!409878 (and d!565864 d!565828)))

(assert (=> bs!409878 (= lambda!73182 lambda!73172)))

(declare-fun bs!409879 () Bool)

(assert (= bs!409879 (and d!565864 d!565830)))

(assert (=> bs!409879 (= lambda!73182 lambda!73173)))

(declare-fun bs!409880 () Bool)

(assert (= bs!409880 (and d!565864 d!565842)))

(assert (=> bs!409880 (= lambda!73182 lambda!73178)))

(declare-fun bs!409881 () Bool)

(assert (= bs!409881 (and d!565864 d!565836)))

(assert (=> bs!409881 (= lambda!73182 lambda!73177)))

(declare-fun bs!409882 () Bool)

(assert (= bs!409882 (and d!565864 d!565818)))

(assert (=> bs!409882 (= lambda!73182 lambda!73166)))

(declare-fun bs!409883 () Bool)

(assert (= bs!409883 (and d!565864 d!565856)))

(assert (=> bs!409883 (= lambda!73182 lambda!73181)))

(assert (=> d!565864 (= (inv!26885 setElem!11386) (forall!4386 (exprs!1445 setElem!11386) lambda!73182))))

(declare-fun bs!409884 () Bool)

(assert (= bs!409884 d!565864))

(declare-fun m!2277761 () Bool)

(assert (=> bs!409884 m!2277761))

(assert (=> setNonEmpty!11386 d!565864))

(declare-fun d!565866 () Bool)

(declare-fun res!830894 () Bool)

(declare-fun e!1183105 () Bool)

(assert (=> d!565866 (=> (not res!830894) (not e!1183105))))

(declare-fun valid!1500 (MutableMap!1826) Bool)

(assert (=> d!565866 (= res!830894 (valid!1500 (cache!2207 cacheUp!391)))))

(assert (=> d!565866 (= (validCacheMapUp!176 (cache!2207 cacheUp!391)) e!1183105)))

(declare-fun b!1851225 () Bool)

(declare-fun res!830895 () Bool)

(assert (=> b!1851225 (=> (not res!830895) (not e!1183105))))

(declare-fun invariantList!255 (List!20573) Bool)

(declare-datatypes ((ListMap!559 0))(
  ( (ListMap!560 (toList!980 List!20573)) )
))
(declare-fun map!4318 (MutableMap!1826) ListMap!559)

(assert (=> b!1851225 (= res!830895 (invariantList!255 (toList!980 (map!4318 (cache!2207 cacheUp!391)))))))

(declare-fun b!1851226 () Bool)

(declare-fun lambda!73185 () Int)

(declare-fun forall!4388 (List!20573 Int) Bool)

(assert (=> b!1851226 (= e!1183105 (forall!4388 (toList!980 (map!4318 (cache!2207 cacheUp!391))) lambda!73185))))

(assert (= (and d!565866 res!830894) b!1851225))

(assert (= (and b!1851225 res!830895) b!1851226))

(declare-fun m!2277764 () Bool)

(assert (=> d!565866 m!2277764))

(declare-fun m!2277766 () Bool)

(assert (=> b!1851225 m!2277766))

(declare-fun m!2277768 () Bool)

(assert (=> b!1851225 m!2277768))

(assert (=> b!1851226 m!2277766))

(declare-fun m!2277770 () Bool)

(assert (=> b!1851226 m!2277770))

(assert (=> b!1851014 d!565866))

(declare-fun d!565868 () Bool)

(assert (=> d!565868 true))

(declare-fun order!13191 () Int)

(declare-fun lambda!73188 () Int)

(declare-fun dynLambda!10165 (Int Int) Int)

(assert (=> d!565868 (< (dynLambda!10164 order!13189 (toValue!5243 (transformation!3672 (rule!5866 t!6207)))) (dynLambda!10165 order!13191 lambda!73188))))

(declare-fun Forall2!590 (Int) Bool)

(assert (=> d!565868 (= (equivClasses!1424 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (toValue!5243 (transformation!3672 (rule!5866 t!6207)))) (Forall2!590 lambda!73188))))

(declare-fun bs!409885 () Bool)

(assert (= bs!409885 d!565868))

(declare-fun m!2277772 () Bool)

(assert (=> bs!409885 m!2277772))

(assert (=> b!1850994 d!565868))

(declare-fun d!565870 () Bool)

(declare-fun lt!715586 () Bool)

(assert (=> d!565870 (= lt!715586 (isEmpty!12795 (list!8312 (_2!11296 lt!715552))))))

(assert (=> d!565870 (= lt!715586 (isEmpty!12796 (c!302025 (_2!11296 lt!715552))))))

(assert (=> d!565870 (= (isEmpty!12794 (_2!11296 lt!715552)) lt!715586)))

(declare-fun bs!409886 () Bool)

(assert (= bs!409886 d!565870))

(declare-fun m!2277774 () Bool)

(assert (=> bs!409886 m!2277774))

(assert (=> bs!409886 m!2277774))

(declare-fun m!2277776 () Bool)

(assert (=> bs!409886 m!2277776))

(declare-fun m!2277778 () Bool)

(assert (=> bs!409886 m!2277778))

(assert (=> b!1851023 d!565870))

(declare-fun bs!409887 () Bool)

(declare-fun d!565872 () Bool)

(assert (= bs!409887 (and d!565872 d!565826)))

(declare-fun lambda!73189 () Int)

(assert (=> bs!409887 (= lambda!73189 lambda!73171)))

(declare-fun bs!409888 () Bool)

(assert (= bs!409888 (and d!565872 d!565844)))

(assert (=> bs!409888 (= lambda!73189 lambda!73179)))

(declare-fun bs!409889 () Bool)

(assert (= bs!409889 (and d!565872 d!565822)))

(assert (=> bs!409889 (= lambda!73189 lambda!73167)))

(declare-fun bs!409890 () Bool)

(assert (= bs!409890 (and d!565872 d!565812)))

(assert (=> bs!409890 (= lambda!73189 lambda!73165)))

(declare-fun bs!409891 () Bool)

(assert (= bs!409891 (and d!565872 d!565828)))

(assert (=> bs!409891 (= lambda!73189 lambda!73172)))

(declare-fun bs!409892 () Bool)

(assert (= bs!409892 (and d!565872 d!565864)))

(assert (=> bs!409892 (= lambda!73189 lambda!73182)))

(declare-fun bs!409893 () Bool)

(assert (= bs!409893 (and d!565872 d!565830)))

(assert (=> bs!409893 (= lambda!73189 lambda!73173)))

(declare-fun bs!409894 () Bool)

(assert (= bs!409894 (and d!565872 d!565842)))

(assert (=> bs!409894 (= lambda!73189 lambda!73178)))

(declare-fun bs!409895 () Bool)

(assert (= bs!409895 (and d!565872 d!565836)))

(assert (=> bs!409895 (= lambda!73189 lambda!73177)))

(declare-fun bs!409896 () Bool)

(assert (= bs!409896 (and d!565872 d!565818)))

(assert (=> bs!409896 (= lambda!73189 lambda!73166)))

(declare-fun bs!409897 () Bool)

(assert (= bs!409897 (and d!565872 d!565856)))

(assert (=> bs!409897 (= lambda!73189 lambda!73181)))

(assert (=> d!565872 (= (inv!26885 setElem!11375) (forall!4386 (exprs!1445 setElem!11375) lambda!73189))))

(declare-fun bs!409898 () Bool)

(assert (= bs!409898 d!565872))

(declare-fun m!2277780 () Bool)

(assert (=> bs!409898 m!2277780))

(assert (=> setNonEmpty!11375 d!565872))

(declare-fun d!565874 () Bool)

(assert (=> d!565874 (= (list!8313 lt!715561) (list!8315 (c!302026 lt!715561)))))

(declare-fun bs!409899 () Bool)

(assert (= bs!409899 d!565874))

(declare-fun m!2277782 () Bool)

(assert (=> bs!409899 m!2277782))

(assert (=> d!565798 d!565874))

(declare-fun d!565876 () Bool)

(declare-fun e!1183110 () Bool)

(assert (=> d!565876 e!1183110))

(declare-fun res!830900 () Bool)

(assert (=> d!565876 (=> (not res!830900) (not e!1183110))))

(declare-fun lt!715589 () BalanceConc!13488)

(assert (=> d!565876 (= res!830900 (= (list!8313 lt!715589) (Cons!20502 t!6207 Nil!20502)))))

(declare-fun choose!11647 (Token!6898) BalanceConc!13488)

(assert (=> d!565876 (= lt!715589 (choose!11647 t!6207))))

(assert (=> d!565876 (= (singleton!818 t!6207) lt!715589)))

(declare-fun b!1851233 () Bool)

(assert (=> b!1851233 (= e!1183110 (isBalanced!2114 (c!302026 lt!715589)))))

(assert (= (and d!565876 res!830900) b!1851233))

(declare-fun m!2277784 () Bool)

(assert (=> d!565876 m!2277784))

(declare-fun m!2277786 () Bool)

(assert (=> d!565876 m!2277786))

(declare-fun m!2277788 () Bool)

(assert (=> b!1851233 m!2277788))

(assert (=> d!565798 d!565876))

(declare-fun d!565878 () Bool)

(declare-fun isBalanced!2115 (Conc!6782) Bool)

(assert (=> d!565878 (= (inv!26884 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207))) (isBalanced!2115 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207)))))))

(declare-fun bs!409900 () Bool)

(assert (= bs!409900 d!565878))

(declare-fun m!2277790 () Bool)

(assert (=> bs!409900 m!2277790))

(assert (=> tb!112889 d!565878))

(declare-fun bs!409901 () Bool)

(declare-fun d!565880 () Bool)

(assert (= bs!409901 (and d!565880 d!565826)))

(declare-fun lambda!73190 () Int)

(assert (=> bs!409901 (= lambda!73190 lambda!73171)))

(declare-fun bs!409902 () Bool)

(assert (= bs!409902 (and d!565880 d!565844)))

(assert (=> bs!409902 (= lambda!73190 lambda!73179)))

(declare-fun bs!409903 () Bool)

(assert (= bs!409903 (and d!565880 d!565822)))

(assert (=> bs!409903 (= lambda!73190 lambda!73167)))

(declare-fun bs!409904 () Bool)

(assert (= bs!409904 (and d!565880 d!565812)))

(assert (=> bs!409904 (= lambda!73190 lambda!73165)))

(declare-fun bs!409905 () Bool)

(assert (= bs!409905 (and d!565880 d!565872)))

(assert (=> bs!409905 (= lambda!73190 lambda!73189)))

(declare-fun bs!409906 () Bool)

(assert (= bs!409906 (and d!565880 d!565828)))

(assert (=> bs!409906 (= lambda!73190 lambda!73172)))

(declare-fun bs!409907 () Bool)

(assert (= bs!409907 (and d!565880 d!565864)))

(assert (=> bs!409907 (= lambda!73190 lambda!73182)))

(declare-fun bs!409908 () Bool)

(assert (= bs!409908 (and d!565880 d!565830)))

(assert (=> bs!409908 (= lambda!73190 lambda!73173)))

(declare-fun bs!409909 () Bool)

(assert (= bs!409909 (and d!565880 d!565842)))

(assert (=> bs!409909 (= lambda!73190 lambda!73178)))

(declare-fun bs!409910 () Bool)

(assert (= bs!409910 (and d!565880 d!565836)))

(assert (=> bs!409910 (= lambda!73190 lambda!73177)))

(declare-fun bs!409911 () Bool)

(assert (= bs!409911 (and d!565880 d!565818)))

(assert (=> bs!409911 (= lambda!73190 lambda!73166)))

(declare-fun bs!409912 () Bool)

(assert (= bs!409912 (and d!565880 d!565856)))

(assert (=> bs!409912 (= lambda!73190 lambda!73181)))

(assert (=> d!565880 (= (inv!26885 setElem!11368) (forall!4386 (exprs!1445 setElem!11368) lambda!73190))))

(declare-fun bs!409913 () Bool)

(assert (= bs!409913 d!565880))

(declare-fun m!2277792 () Bool)

(assert (=> bs!409913 m!2277792))

(assert (=> setNonEmpty!11368 d!565880))

(declare-fun bs!409914 () Bool)

(declare-fun d!565882 () Bool)

(assert (= bs!409914 (and d!565882 d!565826)))

(declare-fun lambda!73191 () Int)

(assert (=> bs!409914 (= lambda!73191 lambda!73171)))

(declare-fun bs!409915 () Bool)

(assert (= bs!409915 (and d!565882 d!565844)))

(assert (=> bs!409915 (= lambda!73191 lambda!73179)))

(declare-fun bs!409916 () Bool)

(assert (= bs!409916 (and d!565882 d!565822)))

(assert (=> bs!409916 (= lambda!73191 lambda!73167)))

(declare-fun bs!409917 () Bool)

(assert (= bs!409917 (and d!565882 d!565872)))

(assert (=> bs!409917 (= lambda!73191 lambda!73189)))

(declare-fun bs!409918 () Bool)

(assert (= bs!409918 (and d!565882 d!565828)))

(assert (=> bs!409918 (= lambda!73191 lambda!73172)))

(declare-fun bs!409919 () Bool)

(assert (= bs!409919 (and d!565882 d!565864)))

(assert (=> bs!409919 (= lambda!73191 lambda!73182)))

(declare-fun bs!409920 () Bool)

(assert (= bs!409920 (and d!565882 d!565830)))

(assert (=> bs!409920 (= lambda!73191 lambda!73173)))

(declare-fun bs!409921 () Bool)

(assert (= bs!409921 (and d!565882 d!565842)))

(assert (=> bs!409921 (= lambda!73191 lambda!73178)))

(declare-fun bs!409922 () Bool)

(assert (= bs!409922 (and d!565882 d!565836)))

(assert (=> bs!409922 (= lambda!73191 lambda!73177)))

(declare-fun bs!409923 () Bool)

(assert (= bs!409923 (and d!565882 d!565812)))

(assert (=> bs!409923 (= lambda!73191 lambda!73165)))

(declare-fun bs!409924 () Bool)

(assert (= bs!409924 (and d!565882 d!565880)))

(assert (=> bs!409924 (= lambda!73191 lambda!73190)))

(declare-fun bs!409925 () Bool)

(assert (= bs!409925 (and d!565882 d!565818)))

(assert (=> bs!409925 (= lambda!73191 lambda!73166)))

(declare-fun bs!409926 () Bool)

(assert (= bs!409926 (and d!565882 d!565856)))

(assert (=> bs!409926 (= lambda!73191 lambda!73181)))

(assert (=> d!565882 (= (inv!26885 setElem!11378) (forall!4386 (exprs!1445 setElem!11378) lambda!73191))))

(declare-fun bs!409927 () Bool)

(assert (= bs!409927 d!565882))

(declare-fun m!2277794 () Bool)

(assert (=> bs!409927 m!2277794))

(assert (=> setNonEmpty!11378 d!565882))

(declare-fun bs!409928 () Bool)

(declare-fun d!565884 () Bool)

(assert (= bs!409928 (and d!565884 d!565826)))

(declare-fun lambda!73192 () Int)

(assert (=> bs!409928 (= lambda!73192 lambda!73171)))

(declare-fun bs!409929 () Bool)

(assert (= bs!409929 (and d!565884 d!565844)))

(assert (=> bs!409929 (= lambda!73192 lambda!73179)))

(declare-fun bs!409930 () Bool)

(assert (= bs!409930 (and d!565884 d!565822)))

(assert (=> bs!409930 (= lambda!73192 lambda!73167)))

(declare-fun bs!409931 () Bool)

(assert (= bs!409931 (and d!565884 d!565872)))

(assert (=> bs!409931 (= lambda!73192 lambda!73189)))

(declare-fun bs!409932 () Bool)

(assert (= bs!409932 (and d!565884 d!565828)))

(assert (=> bs!409932 (= lambda!73192 lambda!73172)))

(declare-fun bs!409933 () Bool)

(assert (= bs!409933 (and d!565884 d!565830)))

(assert (=> bs!409933 (= lambda!73192 lambda!73173)))

(declare-fun bs!409934 () Bool)

(assert (= bs!409934 (and d!565884 d!565842)))

(assert (=> bs!409934 (= lambda!73192 lambda!73178)))

(declare-fun bs!409935 () Bool)

(assert (= bs!409935 (and d!565884 d!565836)))

(assert (=> bs!409935 (= lambda!73192 lambda!73177)))

(declare-fun bs!409936 () Bool)

(assert (= bs!409936 (and d!565884 d!565812)))

(assert (=> bs!409936 (= lambda!73192 lambda!73165)))

(declare-fun bs!409937 () Bool)

(assert (= bs!409937 (and d!565884 d!565880)))

(assert (=> bs!409937 (= lambda!73192 lambda!73190)))

(declare-fun bs!409938 () Bool)

(assert (= bs!409938 (and d!565884 d!565818)))

(assert (=> bs!409938 (= lambda!73192 lambda!73166)))

(declare-fun bs!409939 () Bool)

(assert (= bs!409939 (and d!565884 d!565856)))

(assert (=> bs!409939 (= lambda!73192 lambda!73181)))

(declare-fun bs!409940 () Bool)

(assert (= bs!409940 (and d!565884 d!565864)))

(assert (=> bs!409940 (= lambda!73192 lambda!73182)))

(declare-fun bs!409941 () Bool)

(assert (= bs!409941 (and d!565884 d!565882)))

(assert (=> bs!409941 (= lambda!73192 lambda!73191)))

(assert (=> d!565884 (= (inv!26885 setElem!11369) (forall!4386 (exprs!1445 setElem!11369) lambda!73192))))

(declare-fun bs!409942 () Bool)

(assert (= bs!409942 d!565884))

(declare-fun m!2277796 () Bool)

(assert (=> bs!409942 m!2277796))

(assert (=> setNonEmpty!11369 d!565884))

(declare-fun bs!409943 () Bool)

(declare-fun d!565886 () Bool)

(assert (= bs!409943 (and d!565886 d!565826)))

(declare-fun lambda!73193 () Int)

(assert (=> bs!409943 (= lambda!73193 lambda!73171)))

(declare-fun bs!409944 () Bool)

(assert (= bs!409944 (and d!565886 d!565844)))

(assert (=> bs!409944 (= lambda!73193 lambda!73179)))

(declare-fun bs!409945 () Bool)

(assert (= bs!409945 (and d!565886 d!565822)))

(assert (=> bs!409945 (= lambda!73193 lambda!73167)))

(declare-fun bs!409946 () Bool)

(assert (= bs!409946 (and d!565886 d!565872)))

(assert (=> bs!409946 (= lambda!73193 lambda!73189)))

(declare-fun bs!409947 () Bool)

(assert (= bs!409947 (and d!565886 d!565830)))

(assert (=> bs!409947 (= lambda!73193 lambda!73173)))

(declare-fun bs!409948 () Bool)

(assert (= bs!409948 (and d!565886 d!565842)))

(assert (=> bs!409948 (= lambda!73193 lambda!73178)))

(declare-fun bs!409949 () Bool)

(assert (= bs!409949 (and d!565886 d!565836)))

(assert (=> bs!409949 (= lambda!73193 lambda!73177)))

(declare-fun bs!409950 () Bool)

(assert (= bs!409950 (and d!565886 d!565812)))

(assert (=> bs!409950 (= lambda!73193 lambda!73165)))

(declare-fun bs!409951 () Bool)

(assert (= bs!409951 (and d!565886 d!565880)))

(assert (=> bs!409951 (= lambda!73193 lambda!73190)))

(declare-fun bs!409952 () Bool)

(assert (= bs!409952 (and d!565886 d!565818)))

(assert (=> bs!409952 (= lambda!73193 lambda!73166)))

(declare-fun bs!409953 () Bool)

(assert (= bs!409953 (and d!565886 d!565856)))

(assert (=> bs!409953 (= lambda!73193 lambda!73181)))

(declare-fun bs!409954 () Bool)

(assert (= bs!409954 (and d!565886 d!565828)))

(assert (=> bs!409954 (= lambda!73193 lambda!73172)))

(declare-fun bs!409955 () Bool)

(assert (= bs!409955 (and d!565886 d!565884)))

(assert (=> bs!409955 (= lambda!73193 lambda!73192)))

(declare-fun bs!409956 () Bool)

(assert (= bs!409956 (and d!565886 d!565864)))

(assert (=> bs!409956 (= lambda!73193 lambda!73182)))

(declare-fun bs!409957 () Bool)

(assert (= bs!409957 (and d!565886 d!565882)))

(assert (=> bs!409957 (= lambda!73193 lambda!73191)))

(assert (=> d!565886 (= (inv!26885 setElem!11384) (forall!4386 (exprs!1445 setElem!11384) lambda!73193))))

(declare-fun bs!409958 () Bool)

(assert (= bs!409958 d!565886))

(declare-fun m!2277798 () Bool)

(assert (=> bs!409958 m!2277798))

(assert (=> setNonEmpty!11385 d!565886))

(declare-fun bs!409959 () Bool)

(declare-fun d!565888 () Bool)

(assert (= bs!409959 (and d!565888 d!565826)))

(declare-fun lambda!73194 () Int)

(assert (=> bs!409959 (= lambda!73194 lambda!73171)))

(declare-fun bs!409960 () Bool)

(assert (= bs!409960 (and d!565888 d!565844)))

(assert (=> bs!409960 (= lambda!73194 lambda!73179)))

(declare-fun bs!409961 () Bool)

(assert (= bs!409961 (and d!565888 d!565822)))

(assert (=> bs!409961 (= lambda!73194 lambda!73167)))

(declare-fun bs!409962 () Bool)

(assert (= bs!409962 (and d!565888 d!565872)))

(assert (=> bs!409962 (= lambda!73194 lambda!73189)))

(declare-fun bs!409963 () Bool)

(assert (= bs!409963 (and d!565888 d!565830)))

(assert (=> bs!409963 (= lambda!73194 lambda!73173)))

(declare-fun bs!409964 () Bool)

(assert (= bs!409964 (and d!565888 d!565886)))

(assert (=> bs!409964 (= lambda!73194 lambda!73193)))

(declare-fun bs!409965 () Bool)

(assert (= bs!409965 (and d!565888 d!565842)))

(assert (=> bs!409965 (= lambda!73194 lambda!73178)))

(declare-fun bs!409966 () Bool)

(assert (= bs!409966 (and d!565888 d!565836)))

(assert (=> bs!409966 (= lambda!73194 lambda!73177)))

(declare-fun bs!409967 () Bool)

(assert (= bs!409967 (and d!565888 d!565812)))

(assert (=> bs!409967 (= lambda!73194 lambda!73165)))

(declare-fun bs!409968 () Bool)

(assert (= bs!409968 (and d!565888 d!565880)))

(assert (=> bs!409968 (= lambda!73194 lambda!73190)))

(declare-fun bs!409969 () Bool)

(assert (= bs!409969 (and d!565888 d!565818)))

(assert (=> bs!409969 (= lambda!73194 lambda!73166)))

(declare-fun bs!409970 () Bool)

(assert (= bs!409970 (and d!565888 d!565856)))

(assert (=> bs!409970 (= lambda!73194 lambda!73181)))

(declare-fun bs!409971 () Bool)

(assert (= bs!409971 (and d!565888 d!565828)))

(assert (=> bs!409971 (= lambda!73194 lambda!73172)))

(declare-fun bs!409972 () Bool)

(assert (= bs!409972 (and d!565888 d!565884)))

(assert (=> bs!409972 (= lambda!73194 lambda!73192)))

(declare-fun bs!409973 () Bool)

(assert (= bs!409973 (and d!565888 d!565864)))

(assert (=> bs!409973 (= lambda!73194 lambda!73182)))

(declare-fun bs!409974 () Bool)

(assert (= bs!409974 (and d!565888 d!565882)))

(assert (=> bs!409974 (= lambda!73194 lambda!73191)))

(assert (=> d!565888 (= (inv!26885 (_1!11294 (_1!11295 (h!25902 mapValue!8774)))) (forall!4386 (exprs!1445 (_1!11294 (_1!11295 (h!25902 mapValue!8774)))) lambda!73194))))

(declare-fun bs!409975 () Bool)

(assert (= bs!409975 d!565888))

(declare-fun m!2277800 () Bool)

(assert (=> bs!409975 m!2277800))

(assert (=> b!1851095 d!565888))

(declare-fun d!565890 () Bool)

(declare-fun lt!715592 () Int)

(assert (=> d!565890 (>= lt!715592 0)))

(declare-fun e!1183113 () Int)

(assert (=> d!565890 (= lt!715592 e!1183113)))

(declare-fun c!302051 () Bool)

(assert (=> d!565890 (= c!302051 ((_ is Nil!20502) (list!8313 (_1!11296 (_1!11297 lt!715538)))))))

(assert (=> d!565890 (= (size!16192 (list!8313 (_1!11296 (_1!11297 lt!715538)))) lt!715592)))

(declare-fun b!1851238 () Bool)

(assert (=> b!1851238 (= e!1183113 0)))

(declare-fun b!1851239 () Bool)

(assert (=> b!1851239 (= e!1183113 (+ 1 (size!16192 (t!172361 (list!8313 (_1!11296 (_1!11297 lt!715538)))))))))

(assert (= (and d!565890 c!302051) b!1851238))

(assert (= (and d!565890 (not c!302051)) b!1851239))

(declare-fun m!2277802 () Bool)

(assert (=> b!1851239 m!2277802))

(assert (=> d!565790 d!565890))

(assert (=> d!565790 d!565860))

(declare-fun d!565892 () Bool)

(declare-fun lt!715595 () Int)

(assert (=> d!565892 (= lt!715595 (size!16192 (list!8315 (c!302026 (_1!11296 (_1!11297 lt!715538))))))))

(assert (=> d!565892 (= lt!715595 (ite ((_ is Empty!6783) (c!302026 (_1!11296 (_1!11297 lt!715538)))) 0 (ite ((_ is Leaf!9925) (c!302026 (_1!11296 (_1!11297 lt!715538)))) (csize!13797 (c!302026 (_1!11296 (_1!11297 lt!715538)))) (csize!13796 (c!302026 (_1!11296 (_1!11297 lt!715538)))))))))

(assert (=> d!565892 (= (size!16193 (c!302026 (_1!11296 (_1!11297 lt!715538)))) lt!715595)))

(declare-fun bs!409976 () Bool)

(assert (= bs!409976 d!565892))

(assert (=> bs!409976 m!2277745))

(assert (=> bs!409976 m!2277745))

(declare-fun m!2277804 () Bool)

(assert (=> bs!409976 m!2277804))

(assert (=> d!565790 d!565892))

(declare-fun bs!409977 () Bool)

(declare-fun d!565894 () Bool)

(assert (= bs!409977 (and d!565894 d!565826)))

(declare-fun lambda!73195 () Int)

(assert (=> bs!409977 (= lambda!73195 lambda!73171)))

(declare-fun bs!409978 () Bool)

(assert (= bs!409978 (and d!565894 d!565844)))

(assert (=> bs!409978 (= lambda!73195 lambda!73179)))

(declare-fun bs!409979 () Bool)

(assert (= bs!409979 (and d!565894 d!565822)))

(assert (=> bs!409979 (= lambda!73195 lambda!73167)))

(declare-fun bs!409980 () Bool)

(assert (= bs!409980 (and d!565894 d!565872)))

(assert (=> bs!409980 (= lambda!73195 lambda!73189)))

(declare-fun bs!409981 () Bool)

(assert (= bs!409981 (and d!565894 d!565888)))

(assert (=> bs!409981 (= lambda!73195 lambda!73194)))

(declare-fun bs!409982 () Bool)

(assert (= bs!409982 (and d!565894 d!565830)))

(assert (=> bs!409982 (= lambda!73195 lambda!73173)))

(declare-fun bs!409983 () Bool)

(assert (= bs!409983 (and d!565894 d!565886)))

(assert (=> bs!409983 (= lambda!73195 lambda!73193)))

(declare-fun bs!409984 () Bool)

(assert (= bs!409984 (and d!565894 d!565842)))

(assert (=> bs!409984 (= lambda!73195 lambda!73178)))

(declare-fun bs!409985 () Bool)

(assert (= bs!409985 (and d!565894 d!565836)))

(assert (=> bs!409985 (= lambda!73195 lambda!73177)))

(declare-fun bs!409986 () Bool)

(assert (= bs!409986 (and d!565894 d!565812)))

(assert (=> bs!409986 (= lambda!73195 lambda!73165)))

(declare-fun bs!409987 () Bool)

(assert (= bs!409987 (and d!565894 d!565880)))

(assert (=> bs!409987 (= lambda!73195 lambda!73190)))

(declare-fun bs!409988 () Bool)

(assert (= bs!409988 (and d!565894 d!565818)))

(assert (=> bs!409988 (= lambda!73195 lambda!73166)))

(declare-fun bs!409989 () Bool)

(assert (= bs!409989 (and d!565894 d!565856)))

(assert (=> bs!409989 (= lambda!73195 lambda!73181)))

(declare-fun bs!409990 () Bool)

(assert (= bs!409990 (and d!565894 d!565828)))

(assert (=> bs!409990 (= lambda!73195 lambda!73172)))

(declare-fun bs!409991 () Bool)

(assert (= bs!409991 (and d!565894 d!565884)))

(assert (=> bs!409991 (= lambda!73195 lambda!73192)))

(declare-fun bs!409992 () Bool)

(assert (= bs!409992 (and d!565894 d!565864)))

(assert (=> bs!409992 (= lambda!73195 lambda!73182)))

(declare-fun bs!409993 () Bool)

(assert (= bs!409993 (and d!565894 d!565882)))

(assert (=> bs!409993 (= lambda!73195 lambda!73191)))

(assert (=> d!565894 (= (inv!26885 (_1!11294 (_1!11295 (h!25902 mapValue!8771)))) (forall!4386 (exprs!1445 (_1!11294 (_1!11295 (h!25902 mapValue!8771)))) lambda!73195))))

(declare-fun bs!409994 () Bool)

(assert (= bs!409994 d!565894))

(declare-fun m!2277806 () Bool)

(assert (=> bs!409994 m!2277806))

(assert (=> b!1851106 d!565894))

(declare-fun d!565896 () Bool)

(assert (=> d!565896 (= (inv!26878 (tag!4086 (h!25901 (t!172359 rs!164)))) (= (mod (str.len (value!115232 (tag!4086 (h!25901 (t!172359 rs!164))))) 2) 0))))

(assert (=> b!1851152 d!565896))

(declare-fun d!565898 () Bool)

(declare-fun res!830901 () Bool)

(declare-fun e!1183114 () Bool)

(assert (=> d!565898 (=> (not res!830901) (not e!1183114))))

(assert (=> d!565898 (= res!830901 (semiInverseModEq!1491 (toChars!5102 (transformation!3672 (h!25901 (t!172359 rs!164)))) (toValue!5243 (transformation!3672 (h!25901 (t!172359 rs!164))))))))

(assert (=> d!565898 (= (inv!26879 (transformation!3672 (h!25901 (t!172359 rs!164)))) e!1183114)))

(declare-fun b!1851240 () Bool)

(assert (=> b!1851240 (= e!1183114 (equivClasses!1424 (toChars!5102 (transformation!3672 (h!25901 (t!172359 rs!164)))) (toValue!5243 (transformation!3672 (h!25901 (t!172359 rs!164))))))))

(assert (= (and d!565898 res!830901) b!1851240))

(declare-fun m!2277808 () Bool)

(assert (=> d!565898 m!2277808))

(declare-fun m!2277810 () Bool)

(assert (=> b!1851240 m!2277810))

(assert (=> b!1851152 d!565898))

(declare-fun b!1851259 () Bool)

(declare-fun e!1183129 () tuple2!19766)

(declare-fun lt!715655 () BalanceConc!13486)

(assert (=> b!1851259 (= e!1183129 (tuple2!19767 (BalanceConc!13489 Empty!6783) lt!715655))))

(declare-fun b!1851260 () Bool)

(declare-fun e!1183125 () tuple3!1898)

(declare-fun lt!715673 () tuple3!1898)

(assert (=> b!1851260 (= e!1183125 (tuple3!1899 (_1!11297 lt!715673) (_2!11297 lt!715673) (_3!1413 lt!715673)))))

(declare-datatypes ((tuple2!19770 0))(
  ( (tuple2!19771 (_1!11299 Token!6898) (_2!11299 BalanceConc!13486)) )
))
(declare-datatypes ((Option!4230 0))(
  ( (None!4229) (Some!4229 (v!26000 tuple2!19770)) )
))
(declare-datatypes ((tuple3!1900 0))(
  ( (tuple3!1901 (_1!11300 Option!4230) (_2!11300 CacheUp!1126) (_3!1414 CacheDown!1122)) )
))
(declare-fun lt!715656 () tuple3!1900)

(declare-fun ++!5547 (BalanceConc!13486 BalanceConc!13486) BalanceConc!13486)

(declare-fun charsOf!2293 (Token!6898) BalanceConc!13486)

(declare-fun append!593 (BalanceConc!13488 Token!6898) BalanceConc!13488)

(assert (=> b!1851260 (= lt!715673 (lexTailRecMem!3 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (++!5547 (BalanceConc!13487 Empty!6782) (charsOf!2293 (_1!11299 (v!26000 (_1!11300 lt!715656))))) (_2!11299 (v!26000 (_1!11300 lt!715656))) (append!593 (BalanceConc!13489 Empty!6783) (_1!11299 (v!26000 (_1!11300 lt!715656)))) (_2!11300 lt!715656) (_3!1414 lt!715656)))))

(declare-fun b!1851262 () Bool)

(declare-fun e!1183127 () tuple2!19766)

(assert (=> b!1851262 (= e!1183127 (tuple2!19767 (BalanceConc!13489 Empty!6783) (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))))

(declare-fun lt!715658 () Option!4230)

(declare-fun lt!715677 () tuple2!19766)

(declare-fun b!1851263 () Bool)

(declare-fun lexRec!400 (LexerInterface!3294 List!20572 BalanceConc!13486) tuple2!19766)

(assert (=> b!1851263 (= lt!715677 (lexRec!400 thiss!10908 rs!164 (_2!11299 (v!26000 lt!715658))))))

(declare-fun prepend!874 (BalanceConc!13488 Token!6898) BalanceConc!13488)

(assert (=> b!1851263 (= e!1183127 (tuple2!19767 (prepend!874 (_1!11296 lt!715677) (_1!11299 (v!26000 lt!715658))) (_2!11296 lt!715677)))))

(declare-fun b!1851264 () Bool)

(declare-fun lt!715661 () Option!4230)

(declare-fun lt!715674 () tuple2!19766)

(assert (=> b!1851264 (= lt!715674 (lexRec!400 thiss!10908 rs!164 (_2!11299 (v!26000 lt!715661))))))

(assert (=> b!1851264 (= e!1183129 (tuple2!19767 (prepend!874 (_1!11296 lt!715674) (_1!11299 (v!26000 lt!715661))) (_2!11296 lt!715674)))))

(declare-fun b!1851265 () Bool)

(assert (=> b!1851265 (= e!1183125 (tuple3!1899 (tuple2!19767 (BalanceConc!13489 Empty!6783) (print!1429 thiss!10908 (singletonSeq!1801 t!6207))) (_2!11300 lt!715656) (_3!1414 lt!715656)))))

(declare-fun b!1851266 () Bool)

(declare-fun lt!715682 () tuple3!1898)

(declare-fun e!1183128 () Bool)

(declare-fun lexTailRec!7 (LexerInterface!3294 List!20572 BalanceConc!13486 BalanceConc!13486 BalanceConc!13486 BalanceConc!13488) tuple2!19766)

(assert (=> b!1851266 (= e!1183128 (= (list!8312 (_2!11296 (_1!11297 lt!715682))) (list!8312 (_2!11296 (lexTailRec!7 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13487 Empty!6782) (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13489 Empty!6783))))))))

(declare-fun b!1851267 () Bool)

(declare-fun e!1183126 () tuple2!19766)

(assert (=> b!1851267 (= e!1183126 (tuple2!19767 (BalanceConc!13489 Empty!6783) (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))))

(declare-fun d!565900 () Bool)

(assert (=> d!565900 e!1183128))

(declare-fun res!830904 () Bool)

(assert (=> d!565900 (=> (not res!830904) (not e!1183128))))

(assert (=> d!565900 (= res!830904 (= (list!8313 (_1!11296 (_1!11297 lt!715682))) (list!8313 (_1!11296 (lexTailRec!7 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13487 Empty!6782) (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13489 Empty!6783))))))))

(assert (=> d!565900 (= lt!715682 e!1183125)))

(declare-fun c!302061 () Bool)

(assert (=> d!565900 (= c!302061 ((_ is Some!4229) (_1!11300 lt!715656)))))

(declare-fun maxPrefixZipperSequenceMem!1 (LexerInterface!3294 List!20572 BalanceConc!13486 CacheUp!1126 CacheDown!1122) tuple3!1900)

(assert (=> d!565900 (= lt!715656 (maxPrefixZipperSequenceMem!1 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) cacheUp!391 cacheDown!404))))

(declare-datatypes ((Unit!35130 0))(
  ( (Unit!35131) )
))
(declare-fun lt!715679 () Unit!35130)

(declare-fun Unit!35132 () Unit!35130)

(assert (=> d!565900 (= lt!715679 Unit!35132)))

(assert (=> d!565900 (= (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))) (lexTailRecV2!653 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13487 Empty!6782) (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13489 Empty!6783)))))

(declare-fun lt!715669 () Unit!35130)

(declare-fun Unit!35133 () Unit!35130)

(assert (=> d!565900 (= lt!715669 Unit!35133)))

(assert (=> d!565900 (= (lexTailRec!7 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13487 Empty!6782) (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13489 Empty!6783)) e!1183126)))

(declare-fun c!302062 () Bool)

(declare-fun lt!715676 () Option!4230)

(assert (=> d!565900 (= c!302062 ((_ is Some!4229) lt!715676))))

(declare-fun maxPrefixZipperSequence!766 (LexerInterface!3294 List!20572 BalanceConc!13486) Option!4230)

(assert (=> d!565900 (= lt!715676 (maxPrefixZipperSequence!766 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))))

(assert (=> d!565900 (= (lexTailRecMem!3 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13487 Empty!6782) (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (BalanceConc!13489 Empty!6783) cacheUp!391 cacheDown!404) lt!715682)))

(declare-fun b!1851261 () Bool)

(assert (=> b!1851261 (= e!1183126 (lexTailRec!7 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) (++!5547 (BalanceConc!13487 Empty!6782) (charsOf!2293 (_1!11299 (v!26000 lt!715676)))) (_2!11299 (v!26000 lt!715676)) (append!593 (BalanceConc!13489 Empty!6783) (_1!11299 (v!26000 lt!715676)))))))

(declare-fun lt!715654 () tuple2!19766)

(assert (=> b!1851261 (= lt!715654 (lexRec!400 thiss!10908 rs!164 (_2!11299 (v!26000 lt!715676))))))

(declare-fun lt!715670 () List!20571)

(assert (=> b!1851261 (= lt!715670 (list!8312 (BalanceConc!13487 Empty!6782)))))

(declare-fun lt!715668 () List!20571)

(assert (=> b!1851261 (= lt!715668 (list!8312 (charsOf!2293 (_1!11299 (v!26000 lt!715676)))))))

(declare-fun lt!715665 () List!20571)

(assert (=> b!1851261 (= lt!715665 (list!8312 (_2!11299 (v!26000 lt!715676))))))

(declare-fun lt!715659 () Unit!35130)

(declare-fun lemmaConcatAssociativity!1091 (List!20571 List!20571 List!20571) Unit!35130)

(assert (=> b!1851261 (= lt!715659 (lemmaConcatAssociativity!1091 lt!715670 lt!715668 lt!715665))))

(declare-fun ++!5548 (List!20571 List!20571) List!20571)

(assert (=> b!1851261 (= (++!5548 (++!5548 lt!715670 lt!715668) lt!715665) (++!5548 lt!715670 (++!5548 lt!715668 lt!715665)))))

(declare-fun lt!715664 () Unit!35130)

(assert (=> b!1851261 (= lt!715664 lt!715659)))

(assert (=> b!1851261 (= lt!715658 (maxPrefixZipperSequence!766 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))))

(declare-fun c!302063 () Bool)

(assert (=> b!1851261 (= c!302063 ((_ is Some!4229) lt!715658))))

(assert (=> b!1851261 (= (lexRec!400 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))) e!1183127)))

(declare-fun lt!715663 () Unit!35130)

(declare-fun Unit!35134 () Unit!35130)

(assert (=> b!1851261 (= lt!715663 Unit!35134)))

(declare-fun lt!715667 () List!20574)

(assert (=> b!1851261 (= lt!715667 (list!8313 (BalanceConc!13489 Empty!6783)))))

(declare-fun lt!715675 () List!20574)

(assert (=> b!1851261 (= lt!715675 (Cons!20502 (_1!11299 (v!26000 lt!715676)) Nil!20502))))

(declare-fun lt!715671 () List!20574)

(assert (=> b!1851261 (= lt!715671 (list!8313 (_1!11296 lt!715654)))))

(declare-fun lt!715672 () Unit!35130)

(declare-fun lemmaConcatAssociativity!1092 (List!20574 List!20574 List!20574) Unit!35130)

(assert (=> b!1851261 (= lt!715672 (lemmaConcatAssociativity!1092 lt!715667 lt!715675 lt!715671))))

(declare-fun ++!5549 (List!20574 List!20574) List!20574)

(assert (=> b!1851261 (= (++!5549 (++!5549 lt!715667 lt!715675) lt!715671) (++!5549 lt!715667 (++!5549 lt!715675 lt!715671)))))

(declare-fun lt!715657 () Unit!35130)

(assert (=> b!1851261 (= lt!715657 lt!715672)))

(declare-fun lt!715678 () List!20571)

(assert (=> b!1851261 (= lt!715678 (++!5548 (list!8312 (BalanceConc!13487 Empty!6782)) (list!8312 (charsOf!2293 (_1!11299 (v!26000 lt!715676))))))))

(declare-fun lt!715666 () List!20571)

(assert (=> b!1851261 (= lt!715666 (list!8312 (_2!11299 (v!26000 lt!715676))))))

(declare-fun lt!715681 () List!20574)

(assert (=> b!1851261 (= lt!715681 (list!8313 (append!593 (BalanceConc!13489 Empty!6783) (_1!11299 (v!26000 lt!715676)))))))

(declare-fun lt!715660 () Unit!35130)

(declare-fun lemmaLexThenLexPrefix!288 (LexerInterface!3294 List!20572 List!20571 List!20571 List!20574 List!20574 List!20571) Unit!35130)

(assert (=> b!1851261 (= lt!715660 (lemmaLexThenLexPrefix!288 thiss!10908 rs!164 lt!715678 lt!715666 lt!715681 (list!8313 (_1!11296 lt!715654)) (list!8312 (_2!11296 lt!715654))))))

(assert (=> b!1851261 (= (lexList!930 thiss!10908 rs!164 lt!715678) (tuple2!19769 lt!715681 Nil!20499))))

(declare-fun lt!715680 () Unit!35130)

(assert (=> b!1851261 (= lt!715680 lt!715660)))

(assert (=> b!1851261 (= lt!715655 (++!5547 (BalanceConc!13487 Empty!6782) (charsOf!2293 (_1!11299 (v!26000 lt!715676)))))))

(assert (=> b!1851261 (= lt!715661 (maxPrefixZipperSequence!766 thiss!10908 rs!164 lt!715655))))

(declare-fun c!302060 () Bool)

(assert (=> b!1851261 (= c!302060 ((_ is Some!4229) lt!715661))))

(assert (=> b!1851261 (= (lexRec!400 thiss!10908 rs!164 (++!5547 (BalanceConc!13487 Empty!6782) (charsOf!2293 (_1!11299 (v!26000 lt!715676))))) e!1183129)))

(declare-fun lt!715662 () Unit!35130)

(declare-fun Unit!35135 () Unit!35130)

(assert (=> b!1851261 (= lt!715662 Unit!35135)))

(assert (= (and d!565900 c!302062) b!1851261))

(assert (= (and d!565900 (not c!302062)) b!1851267))

(assert (= (and b!1851261 c!302063) b!1851263))

(assert (= (and b!1851261 (not c!302063)) b!1851262))

(assert (= (and b!1851261 c!302060) b!1851264))

(assert (= (and b!1851261 (not c!302060)) b!1851259))

(assert (= (and d!565900 c!302061) b!1851260))

(assert (= (and d!565900 (not c!302061)) b!1851265))

(assert (= (and d!565900 res!830904) b!1851266))

(declare-fun m!2277812 () Bool)

(assert (=> b!1851261 m!2277812))

(declare-fun m!2277814 () Bool)

(assert (=> b!1851261 m!2277814))

(declare-fun m!2277816 () Bool)

(assert (=> b!1851261 m!2277816))

(declare-fun m!2277818 () Bool)

(assert (=> b!1851261 m!2277818))

(declare-fun m!2277820 () Bool)

(assert (=> b!1851261 m!2277820))

(declare-fun m!2277822 () Bool)

(assert (=> b!1851261 m!2277822))

(declare-fun m!2277824 () Bool)

(assert (=> b!1851261 m!2277824))

(declare-fun m!2277826 () Bool)

(assert (=> b!1851261 m!2277826))

(declare-fun m!2277828 () Bool)

(assert (=> b!1851261 m!2277828))

(declare-fun m!2277830 () Bool)

(assert (=> b!1851261 m!2277830))

(declare-fun m!2277832 () Bool)

(assert (=> b!1851261 m!2277832))

(assert (=> b!1851261 m!2277816))

(declare-fun m!2277834 () Bool)

(assert (=> b!1851261 m!2277834))

(declare-fun m!2277836 () Bool)

(assert (=> b!1851261 m!2277836))

(declare-fun m!2277838 () Bool)

(assert (=> b!1851261 m!2277838))

(assert (=> b!1851261 m!2277820))

(assert (=> b!1851261 m!2277485))

(declare-fun m!2277840 () Bool)

(assert (=> b!1851261 m!2277840))

(assert (=> b!1851261 m!2277824))

(declare-fun m!2277842 () Bool)

(assert (=> b!1851261 m!2277842))

(declare-fun m!2277844 () Bool)

(assert (=> b!1851261 m!2277844))

(declare-fun m!2277846 () Bool)

(assert (=> b!1851261 m!2277846))

(assert (=> b!1851261 m!2277844))

(assert (=> b!1851261 m!2277834))

(assert (=> b!1851261 m!2277812))

(assert (=> b!1851261 m!2277485))

(declare-fun m!2277848 () Bool)

(assert (=> b!1851261 m!2277848))

(declare-fun m!2277850 () Bool)

(assert (=> b!1851261 m!2277850))

(assert (=> b!1851261 m!2277485))

(assert (=> b!1851261 m!2277846))

(assert (=> b!1851261 m!2277824))

(declare-fun m!2277852 () Bool)

(assert (=> b!1851261 m!2277852))

(declare-fun m!2277854 () Bool)

(assert (=> b!1851261 m!2277854))

(declare-fun m!2277856 () Bool)

(assert (=> b!1851261 m!2277856))

(declare-fun m!2277858 () Bool)

(assert (=> b!1851261 m!2277858))

(assert (=> b!1851261 m!2277844))

(assert (=> b!1851261 m!2277846))

(declare-fun m!2277860 () Bool)

(assert (=> b!1851261 m!2277860))

(declare-fun m!2277862 () Bool)

(assert (=> b!1851261 m!2277862))

(assert (=> b!1851261 m!2277818))

(assert (=> b!1851261 m!2277830))

(declare-fun m!2277864 () Bool)

(assert (=> b!1851261 m!2277864))

(assert (=> b!1851261 m!2277826))

(declare-fun m!2277866 () Bool)

(assert (=> b!1851261 m!2277866))

(assert (=> b!1851261 m!2277828))

(declare-fun m!2277868 () Bool)

(assert (=> b!1851261 m!2277868))

(declare-fun m!2277870 () Bool)

(assert (=> b!1851260 m!2277870))

(assert (=> b!1851260 m!2277870))

(declare-fun m!2277872 () Bool)

(assert (=> b!1851260 m!2277872))

(declare-fun m!2277874 () Bool)

(assert (=> b!1851260 m!2277874))

(assert (=> b!1851260 m!2277485))

(assert (=> b!1851260 m!2277872))

(assert (=> b!1851260 m!2277874))

(declare-fun m!2277876 () Bool)

(assert (=> b!1851260 m!2277876))

(declare-fun m!2277878 () Bool)

(assert (=> b!1851263 m!2277878))

(declare-fun m!2277880 () Bool)

(assert (=> b!1851263 m!2277880))

(declare-fun m!2277882 () Bool)

(assert (=> b!1851266 m!2277882))

(assert (=> b!1851266 m!2277485))

(assert (=> b!1851266 m!2277485))

(declare-fun m!2277884 () Bool)

(assert (=> b!1851266 m!2277884))

(declare-fun m!2277886 () Bool)

(assert (=> b!1851266 m!2277886))

(declare-fun m!2277888 () Bool)

(assert (=> b!1851264 m!2277888))

(declare-fun m!2277890 () Bool)

(assert (=> b!1851264 m!2277890))

(assert (=> d!565900 m!2277485))

(assert (=> d!565900 m!2277569))

(declare-fun m!2277892 () Bool)

(assert (=> d!565900 m!2277892))

(assert (=> d!565900 m!2277485))

(assert (=> d!565900 m!2277485))

(assert (=> d!565900 m!2277677))

(assert (=> d!565900 m!2277485))

(assert (=> d!565900 m!2277485))

(assert (=> d!565900 m!2277884))

(assert (=> d!565900 m!2277485))

(declare-fun m!2277894 () Bool)

(assert (=> d!565900 m!2277894))

(declare-fun m!2277896 () Bool)

(assert (=> d!565900 m!2277896))

(assert (=> d!565900 m!2277485))

(assert (=> d!565900 m!2277840))

(assert (=> d!565796 d!565900))

(assert (=> d!565796 d!565852))

(assert (=> d!565796 d!565816))

(assert (=> d!565796 d!565802))

(declare-fun d!565902 () Bool)

(assert (=> d!565902 (= (list!8313 (_1!11296 (_1!11297 lt!715557))) (list!8315 (c!302026 (_1!11296 (_1!11297 lt!715557)))))))

(declare-fun bs!409995 () Bool)

(assert (= bs!409995 d!565902))

(declare-fun m!2277898 () Bool)

(assert (=> bs!409995 m!2277898))

(assert (=> d!565796 d!565902))

(declare-fun bs!409996 () Bool)

(declare-fun d!565904 () Bool)

(assert (= bs!409996 (and d!565904 d!565826)))

(declare-fun lambda!73196 () Int)

(assert (=> bs!409996 (= lambda!73196 lambda!73171)))

(declare-fun bs!409997 () Bool)

(assert (= bs!409997 (and d!565904 d!565844)))

(assert (=> bs!409997 (= lambda!73196 lambda!73179)))

(declare-fun bs!409998 () Bool)

(assert (= bs!409998 (and d!565904 d!565822)))

(assert (=> bs!409998 (= lambda!73196 lambda!73167)))

(declare-fun bs!409999 () Bool)

(assert (= bs!409999 (and d!565904 d!565894)))

(assert (=> bs!409999 (= lambda!73196 lambda!73195)))

(declare-fun bs!410000 () Bool)

(assert (= bs!410000 (and d!565904 d!565872)))

(assert (=> bs!410000 (= lambda!73196 lambda!73189)))

(declare-fun bs!410001 () Bool)

(assert (= bs!410001 (and d!565904 d!565888)))

(assert (=> bs!410001 (= lambda!73196 lambda!73194)))

(declare-fun bs!410002 () Bool)

(assert (= bs!410002 (and d!565904 d!565830)))

(assert (=> bs!410002 (= lambda!73196 lambda!73173)))

(declare-fun bs!410003 () Bool)

(assert (= bs!410003 (and d!565904 d!565886)))

(assert (=> bs!410003 (= lambda!73196 lambda!73193)))

(declare-fun bs!410004 () Bool)

(assert (= bs!410004 (and d!565904 d!565842)))

(assert (=> bs!410004 (= lambda!73196 lambda!73178)))

(declare-fun bs!410005 () Bool)

(assert (= bs!410005 (and d!565904 d!565836)))

(assert (=> bs!410005 (= lambda!73196 lambda!73177)))

(declare-fun bs!410006 () Bool)

(assert (= bs!410006 (and d!565904 d!565812)))

(assert (=> bs!410006 (= lambda!73196 lambda!73165)))

(declare-fun bs!410007 () Bool)

(assert (= bs!410007 (and d!565904 d!565880)))

(assert (=> bs!410007 (= lambda!73196 lambda!73190)))

(declare-fun bs!410008 () Bool)

(assert (= bs!410008 (and d!565904 d!565818)))

(assert (=> bs!410008 (= lambda!73196 lambda!73166)))

(declare-fun bs!410009 () Bool)

(assert (= bs!410009 (and d!565904 d!565856)))

(assert (=> bs!410009 (= lambda!73196 lambda!73181)))

(declare-fun bs!410010 () Bool)

(assert (= bs!410010 (and d!565904 d!565828)))

(assert (=> bs!410010 (= lambda!73196 lambda!73172)))

(declare-fun bs!410011 () Bool)

(assert (= bs!410011 (and d!565904 d!565884)))

(assert (=> bs!410011 (= lambda!73196 lambda!73192)))

(declare-fun bs!410012 () Bool)

(assert (= bs!410012 (and d!565904 d!565864)))

(assert (=> bs!410012 (= lambda!73196 lambda!73182)))

(declare-fun bs!410013 () Bool)

(assert (= bs!410013 (and d!565904 d!565882)))

(assert (=> bs!410013 (= lambda!73196 lambda!73191)))

(assert (=> d!565904 (= (inv!26885 setElem!11385) (forall!4386 (exprs!1445 setElem!11385) lambda!73196))))

(declare-fun bs!410014 () Bool)

(assert (= bs!410014 d!565904))

(declare-fun m!2277900 () Bool)

(assert (=> bs!410014 m!2277900))

(assert (=> setNonEmpty!11384 d!565904))

(declare-fun d!565906 () Bool)

(declare-fun c!302066 () Bool)

(assert (=> d!565906 (= c!302066 ((_ is Node!6782) (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207)))))))

(declare-fun e!1183134 () Bool)

(assert (=> d!565906 (= (inv!26883 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207)))) e!1183134)))

(declare-fun b!1851274 () Bool)

(declare-fun inv!26886 (Conc!6782) Bool)

(assert (=> b!1851274 (= e!1183134 (inv!26886 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207)))))))

(declare-fun b!1851275 () Bool)

(declare-fun e!1183135 () Bool)

(assert (=> b!1851275 (= e!1183134 e!1183135)))

(declare-fun res!830907 () Bool)

(assert (=> b!1851275 (= res!830907 (not ((_ is Leaf!9924) (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207))))))))

(assert (=> b!1851275 (=> res!830907 e!1183135)))

(declare-fun b!1851276 () Bool)

(declare-fun inv!26887 (Conc!6782) Bool)

(assert (=> b!1851276 (= e!1183135 (inv!26887 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207)))))))

(assert (= (and d!565906 c!302066) b!1851274))

(assert (= (and d!565906 (not c!302066)) b!1851275))

(assert (= (and b!1851275 (not res!830907)) b!1851276))

(declare-fun m!2277902 () Bool)

(assert (=> b!1851274 m!2277902))

(declare-fun m!2277904 () Bool)

(assert (=> b!1851276 m!2277904))

(assert (=> b!1851008 d!565906))

(declare-fun d!565908 () Bool)

(declare-fun charsToBigInt!1 (List!20570) Int)

(assert (=> d!565908 (= (inv!17 (value!115233 t!6207)) (= (charsToBigInt!1 (text!26964 (value!115233 t!6207))) (value!115225 (value!115233 t!6207))))))

(declare-fun bs!410015 () Bool)

(assert (= bs!410015 d!565908))

(declare-fun m!2277906 () Bool)

(assert (=> bs!410015 m!2277906))

(assert (=> b!1851045 d!565908))

(declare-fun bs!410016 () Bool)

(declare-fun d!565910 () Bool)

(assert (= bs!410016 (and d!565910 d!565826)))

(declare-fun lambda!73197 () Int)

(assert (=> bs!410016 (= lambda!73197 lambda!73171)))

(declare-fun bs!410017 () Bool)

(assert (= bs!410017 (and d!565910 d!565844)))

(assert (=> bs!410017 (= lambda!73197 lambda!73179)))

(declare-fun bs!410018 () Bool)

(assert (= bs!410018 (and d!565910 d!565822)))

(assert (=> bs!410018 (= lambda!73197 lambda!73167)))

(declare-fun bs!410019 () Bool)

(assert (= bs!410019 (and d!565910 d!565894)))

(assert (=> bs!410019 (= lambda!73197 lambda!73195)))

(declare-fun bs!410020 () Bool)

(assert (= bs!410020 (and d!565910 d!565904)))

(assert (=> bs!410020 (= lambda!73197 lambda!73196)))

(declare-fun bs!410021 () Bool)

(assert (= bs!410021 (and d!565910 d!565872)))

(assert (=> bs!410021 (= lambda!73197 lambda!73189)))

(declare-fun bs!410022 () Bool)

(assert (= bs!410022 (and d!565910 d!565888)))

(assert (=> bs!410022 (= lambda!73197 lambda!73194)))

(declare-fun bs!410023 () Bool)

(assert (= bs!410023 (and d!565910 d!565830)))

(assert (=> bs!410023 (= lambda!73197 lambda!73173)))

(declare-fun bs!410024 () Bool)

(assert (= bs!410024 (and d!565910 d!565886)))

(assert (=> bs!410024 (= lambda!73197 lambda!73193)))

(declare-fun bs!410025 () Bool)

(assert (= bs!410025 (and d!565910 d!565842)))

(assert (=> bs!410025 (= lambda!73197 lambda!73178)))

(declare-fun bs!410026 () Bool)

(assert (= bs!410026 (and d!565910 d!565836)))

(assert (=> bs!410026 (= lambda!73197 lambda!73177)))

(declare-fun bs!410027 () Bool)

(assert (= bs!410027 (and d!565910 d!565812)))

(assert (=> bs!410027 (= lambda!73197 lambda!73165)))

(declare-fun bs!410028 () Bool)

(assert (= bs!410028 (and d!565910 d!565880)))

(assert (=> bs!410028 (= lambda!73197 lambda!73190)))

(declare-fun bs!410029 () Bool)

(assert (= bs!410029 (and d!565910 d!565818)))

(assert (=> bs!410029 (= lambda!73197 lambda!73166)))

(declare-fun bs!410030 () Bool)

(assert (= bs!410030 (and d!565910 d!565856)))

(assert (=> bs!410030 (= lambda!73197 lambda!73181)))

(declare-fun bs!410031 () Bool)

(assert (= bs!410031 (and d!565910 d!565828)))

(assert (=> bs!410031 (= lambda!73197 lambda!73172)))

(declare-fun bs!410032 () Bool)

(assert (= bs!410032 (and d!565910 d!565884)))

(assert (=> bs!410032 (= lambda!73197 lambda!73192)))

(declare-fun bs!410033 () Bool)

(assert (= bs!410033 (and d!565910 d!565864)))

(assert (=> bs!410033 (= lambda!73197 lambda!73182)))

(declare-fun bs!410034 () Bool)

(assert (= bs!410034 (and d!565910 d!565882)))

(assert (=> bs!410034 (= lambda!73197 lambda!73191)))

(assert (=> d!565910 (= (inv!26885 (_1!11294 (_1!11295 (h!25902 mapDefault!8774)))) (forall!4386 (exprs!1445 (_1!11294 (_1!11295 (h!25902 mapDefault!8774)))) lambda!73197))))

(declare-fun bs!410035 () Bool)

(assert (= bs!410035 d!565910))

(declare-fun m!2277908 () Bool)

(assert (=> bs!410035 m!2277908))

(assert (=> b!1851092 d!565910))

(declare-fun b!1851289 () Bool)

(declare-fun res!830925 () Bool)

(declare-fun e!1183140 () Bool)

(assert (=> b!1851289 (=> (not res!830925) (not e!1183140))))

(declare-fun isEmpty!12798 (Conc!6783) Bool)

(assert (=> b!1851289 (= res!830925 (not (isEmpty!12798 (left!16462 (c!302026 lt!715561)))))))

(declare-fun b!1851290 () Bool)

(declare-fun res!830923 () Bool)

(assert (=> b!1851290 (=> (not res!830923) (not e!1183140))))

(assert (=> b!1851290 (= res!830923 (isBalanced!2114 (right!16792 (c!302026 lt!715561))))))

(declare-fun d!565912 () Bool)

(declare-fun res!830920 () Bool)

(declare-fun e!1183141 () Bool)

(assert (=> d!565912 (=> res!830920 e!1183141)))

(assert (=> d!565912 (= res!830920 (not ((_ is Node!6783) (c!302026 lt!715561))))))

(assert (=> d!565912 (= (isBalanced!2114 (c!302026 lt!715561)) e!1183141)))

(declare-fun b!1851291 () Bool)

(declare-fun res!830921 () Bool)

(assert (=> b!1851291 (=> (not res!830921) (not e!1183140))))

(declare-fun height!1028 (Conc!6783) Int)

(assert (=> b!1851291 (= res!830921 (<= (- (height!1028 (left!16462 (c!302026 lt!715561))) (height!1028 (right!16792 (c!302026 lt!715561)))) 1))))

(declare-fun b!1851292 () Bool)

(assert (=> b!1851292 (= e!1183141 e!1183140)))

(declare-fun res!830922 () Bool)

(assert (=> b!1851292 (=> (not res!830922) (not e!1183140))))

(assert (=> b!1851292 (= res!830922 (<= (- 1) (- (height!1028 (left!16462 (c!302026 lt!715561))) (height!1028 (right!16792 (c!302026 lt!715561))))))))

(declare-fun b!1851293 () Bool)

(declare-fun res!830924 () Bool)

(assert (=> b!1851293 (=> (not res!830924) (not e!1183140))))

(assert (=> b!1851293 (= res!830924 (isBalanced!2114 (left!16462 (c!302026 lt!715561))))))

(declare-fun b!1851294 () Bool)

(assert (=> b!1851294 (= e!1183140 (not (isEmpty!12798 (right!16792 (c!302026 lt!715561)))))))

(assert (= (and d!565912 (not res!830920)) b!1851292))

(assert (= (and b!1851292 res!830922) b!1851291))

(assert (= (and b!1851291 res!830921) b!1851293))

(assert (= (and b!1851293 res!830924) b!1851290))

(assert (= (and b!1851290 res!830923) b!1851289))

(assert (= (and b!1851289 res!830925) b!1851294))

(declare-fun m!2277910 () Bool)

(assert (=> b!1851292 m!2277910))

(declare-fun m!2277912 () Bool)

(assert (=> b!1851292 m!2277912))

(declare-fun m!2277914 () Bool)

(assert (=> b!1851290 m!2277914))

(declare-fun m!2277916 () Bool)

(assert (=> b!1851289 m!2277916))

(assert (=> b!1851291 m!2277910))

(assert (=> b!1851291 m!2277912))

(declare-fun m!2277918 () Bool)

(assert (=> b!1851294 m!2277918))

(declare-fun m!2277920 () Bool)

(assert (=> b!1851293 m!2277920))

(assert (=> b!1851030 d!565912))

(declare-fun d!565914 () Bool)

(declare-fun lt!715685 () Int)

(assert (=> d!565914 (>= lt!715685 0)))

(declare-fun e!1183144 () Int)

(assert (=> d!565914 (= lt!715685 e!1183144)))

(declare-fun c!302069 () Bool)

(assert (=> d!565914 (= c!302069 ((_ is Nil!20499) (originalCharacters!4480 t!6207)))))

(assert (=> d!565914 (= (size!16191 (originalCharacters!4480 t!6207)) lt!715685)))

(declare-fun b!1851299 () Bool)

(assert (=> b!1851299 (= e!1183144 0)))

(declare-fun b!1851300 () Bool)

(assert (=> b!1851300 (= e!1183144 (+ 1 (size!16191 (t!172358 (originalCharacters!4480 t!6207)))))))

(assert (= (and d!565914 c!302069) b!1851299))

(assert (= (and d!565914 (not c!302069)) b!1851300))

(declare-fun m!2277922 () Bool)

(assert (=> b!1851300 m!2277922))

(assert (=> b!1851003 d!565914))

(declare-fun d!565916 () Bool)

(declare-fun charsToBigInt!0 (List!20570 Int) Int)

(assert (=> d!565916 (= (inv!15 (value!115233 t!6207)) (= (charsToBigInt!0 (text!26965 (value!115233 t!6207)) 0) (value!115228 (value!115233 t!6207))))))

(declare-fun bs!410036 () Bool)

(assert (= bs!410036 d!565916))

(declare-fun m!2277924 () Bool)

(assert (=> bs!410036 m!2277924))

(assert (=> b!1851043 d!565916))

(declare-fun bs!410037 () Bool)

(declare-fun d!565918 () Bool)

(assert (= bs!410037 (and d!565918 d!565826)))

(declare-fun lambda!73198 () Int)

(assert (=> bs!410037 (= lambda!73198 lambda!73171)))

(declare-fun bs!410038 () Bool)

(assert (= bs!410038 (and d!565918 d!565844)))

(assert (=> bs!410038 (= lambda!73198 lambda!73179)))

(declare-fun bs!410039 () Bool)

(assert (= bs!410039 (and d!565918 d!565822)))

(assert (=> bs!410039 (= lambda!73198 lambda!73167)))

(declare-fun bs!410040 () Bool)

(assert (= bs!410040 (and d!565918 d!565894)))

(assert (=> bs!410040 (= lambda!73198 lambda!73195)))

(declare-fun bs!410041 () Bool)

(assert (= bs!410041 (and d!565918 d!565910)))

(assert (=> bs!410041 (= lambda!73198 lambda!73197)))

(declare-fun bs!410042 () Bool)

(assert (= bs!410042 (and d!565918 d!565904)))

(assert (=> bs!410042 (= lambda!73198 lambda!73196)))

(declare-fun bs!410043 () Bool)

(assert (= bs!410043 (and d!565918 d!565872)))

(assert (=> bs!410043 (= lambda!73198 lambda!73189)))

(declare-fun bs!410044 () Bool)

(assert (= bs!410044 (and d!565918 d!565888)))

(assert (=> bs!410044 (= lambda!73198 lambda!73194)))

(declare-fun bs!410045 () Bool)

(assert (= bs!410045 (and d!565918 d!565830)))

(assert (=> bs!410045 (= lambda!73198 lambda!73173)))

(declare-fun bs!410046 () Bool)

(assert (= bs!410046 (and d!565918 d!565886)))

(assert (=> bs!410046 (= lambda!73198 lambda!73193)))

(declare-fun bs!410047 () Bool)

(assert (= bs!410047 (and d!565918 d!565842)))

(assert (=> bs!410047 (= lambda!73198 lambda!73178)))

(declare-fun bs!410048 () Bool)

(assert (= bs!410048 (and d!565918 d!565836)))

(assert (=> bs!410048 (= lambda!73198 lambda!73177)))

(declare-fun bs!410049 () Bool)

(assert (= bs!410049 (and d!565918 d!565812)))

(assert (=> bs!410049 (= lambda!73198 lambda!73165)))

(declare-fun bs!410050 () Bool)

(assert (= bs!410050 (and d!565918 d!565880)))

(assert (=> bs!410050 (= lambda!73198 lambda!73190)))

(declare-fun bs!410051 () Bool)

(assert (= bs!410051 (and d!565918 d!565818)))

(assert (=> bs!410051 (= lambda!73198 lambda!73166)))

(declare-fun bs!410052 () Bool)

(assert (= bs!410052 (and d!565918 d!565856)))

(assert (=> bs!410052 (= lambda!73198 lambda!73181)))

(declare-fun bs!410053 () Bool)

(assert (= bs!410053 (and d!565918 d!565828)))

(assert (=> bs!410053 (= lambda!73198 lambda!73172)))

(declare-fun bs!410054 () Bool)

(assert (= bs!410054 (and d!565918 d!565884)))

(assert (=> bs!410054 (= lambda!73198 lambda!73192)))

(declare-fun bs!410055 () Bool)

(assert (= bs!410055 (and d!565918 d!565864)))

(assert (=> bs!410055 (= lambda!73198 lambda!73182)))

(declare-fun bs!410056 () Bool)

(assert (= bs!410056 (and d!565918 d!565882)))

(assert (=> bs!410056 (= lambda!73198 lambda!73191)))

(assert (=> d!565918 (= (inv!26885 setElem!11374) (forall!4386 (exprs!1445 setElem!11374) lambda!73198))))

(declare-fun bs!410057 () Bool)

(assert (= bs!410057 d!565918))

(declare-fun m!2277926 () Bool)

(assert (=> bs!410057 m!2277926))

(assert (=> setNonEmpty!11374 d!565918))

(declare-fun bs!410058 () Bool)

(declare-fun d!565920 () Bool)

(assert (= bs!410058 (and d!565920 d!565826)))

(declare-fun lambda!73199 () Int)

(assert (=> bs!410058 (= lambda!73199 lambda!73171)))

(declare-fun bs!410059 () Bool)

(assert (= bs!410059 (and d!565920 d!565844)))

(assert (=> bs!410059 (= lambda!73199 lambda!73179)))

(declare-fun bs!410060 () Bool)

(assert (= bs!410060 (and d!565920 d!565822)))

(assert (=> bs!410060 (= lambda!73199 lambda!73167)))

(declare-fun bs!410061 () Bool)

(assert (= bs!410061 (and d!565920 d!565894)))

(assert (=> bs!410061 (= lambda!73199 lambda!73195)))

(declare-fun bs!410062 () Bool)

(assert (= bs!410062 (and d!565920 d!565918)))

(assert (=> bs!410062 (= lambda!73199 lambda!73198)))

(declare-fun bs!410063 () Bool)

(assert (= bs!410063 (and d!565920 d!565910)))

(assert (=> bs!410063 (= lambda!73199 lambda!73197)))

(declare-fun bs!410064 () Bool)

(assert (= bs!410064 (and d!565920 d!565904)))

(assert (=> bs!410064 (= lambda!73199 lambda!73196)))

(declare-fun bs!410065 () Bool)

(assert (= bs!410065 (and d!565920 d!565872)))

(assert (=> bs!410065 (= lambda!73199 lambda!73189)))

(declare-fun bs!410066 () Bool)

(assert (= bs!410066 (and d!565920 d!565888)))

(assert (=> bs!410066 (= lambda!73199 lambda!73194)))

(declare-fun bs!410067 () Bool)

(assert (= bs!410067 (and d!565920 d!565830)))

(assert (=> bs!410067 (= lambda!73199 lambda!73173)))

(declare-fun bs!410068 () Bool)

(assert (= bs!410068 (and d!565920 d!565886)))

(assert (=> bs!410068 (= lambda!73199 lambda!73193)))

(declare-fun bs!410069 () Bool)

(assert (= bs!410069 (and d!565920 d!565842)))

(assert (=> bs!410069 (= lambda!73199 lambda!73178)))

(declare-fun bs!410070 () Bool)

(assert (= bs!410070 (and d!565920 d!565836)))

(assert (=> bs!410070 (= lambda!73199 lambda!73177)))

(declare-fun bs!410071 () Bool)

(assert (= bs!410071 (and d!565920 d!565812)))

(assert (=> bs!410071 (= lambda!73199 lambda!73165)))

(declare-fun bs!410072 () Bool)

(assert (= bs!410072 (and d!565920 d!565880)))

(assert (=> bs!410072 (= lambda!73199 lambda!73190)))

(declare-fun bs!410073 () Bool)

(assert (= bs!410073 (and d!565920 d!565818)))

(assert (=> bs!410073 (= lambda!73199 lambda!73166)))

(declare-fun bs!410074 () Bool)

(assert (= bs!410074 (and d!565920 d!565856)))

(assert (=> bs!410074 (= lambda!73199 lambda!73181)))

(declare-fun bs!410075 () Bool)

(assert (= bs!410075 (and d!565920 d!565828)))

(assert (=> bs!410075 (= lambda!73199 lambda!73172)))

(declare-fun bs!410076 () Bool)

(assert (= bs!410076 (and d!565920 d!565884)))

(assert (=> bs!410076 (= lambda!73199 lambda!73192)))

(declare-fun bs!410077 () Bool)

(assert (= bs!410077 (and d!565920 d!565864)))

(assert (=> bs!410077 (= lambda!73199 lambda!73182)))

(declare-fun bs!410078 () Bool)

(assert (= bs!410078 (and d!565920 d!565882)))

(assert (=> bs!410078 (= lambda!73199 lambda!73191)))

(assert (=> d!565920 (= (inv!26885 setElem!11388) (forall!4386 (exprs!1445 setElem!11388) lambda!73199))))

(declare-fun bs!410079 () Bool)

(assert (= bs!410079 d!565920))

(declare-fun m!2277928 () Bool)

(assert (=> bs!410079 m!2277928))

(assert (=> setNonEmpty!11388 d!565920))

(declare-fun bs!410080 () Bool)

(declare-fun d!565922 () Bool)

(assert (= bs!410080 (and d!565922 d!565868)))

(declare-fun lambda!73200 () Int)

(assert (=> bs!410080 (= (= (toValue!5243 (transformation!3672 (h!25901 rs!164))) (toValue!5243 (transformation!3672 (rule!5866 t!6207)))) (= lambda!73200 lambda!73188))))

(assert (=> d!565922 true))

(assert (=> d!565922 (< (dynLambda!10164 order!13189 (toValue!5243 (transformation!3672 (h!25901 rs!164)))) (dynLambda!10165 order!13191 lambda!73200))))

(assert (=> d!565922 (= (equivClasses!1424 (toChars!5102 (transformation!3672 (h!25901 rs!164))) (toValue!5243 (transformation!3672 (h!25901 rs!164)))) (Forall2!590 lambda!73200))))

(declare-fun bs!410081 () Bool)

(assert (= bs!410081 d!565922))

(declare-fun m!2277930 () Bool)

(assert (=> bs!410081 m!2277930))

(assert (=> b!1851015 d!565922))

(declare-fun d!565924 () Bool)

(assert (=> d!565924 (= (list!8312 lt!715546) (list!8314 (c!302025 lt!715546)))))

(declare-fun bs!410082 () Bool)

(assert (= bs!410082 d!565924))

(declare-fun m!2277932 () Bool)

(assert (=> bs!410082 m!2277932))

(assert (=> d!565792 d!565924))

(declare-fun d!565926 () Bool)

(declare-fun c!302072 () Bool)

(assert (=> d!565926 (= c!302072 ((_ is Cons!20502) (list!8313 (singletonSeq!1801 t!6207))))))

(declare-fun e!1183147 () List!20571)

(assert (=> d!565926 (= (printList!1006 thiss!10908 (list!8313 (singletonSeq!1801 t!6207))) e!1183147)))

(declare-fun b!1851305 () Bool)

(assert (=> b!1851305 (= e!1183147 (++!5548 (list!8312 (charsOf!2293 (h!25903 (list!8313 (singletonSeq!1801 t!6207))))) (printList!1006 thiss!10908 (t!172361 (list!8313 (singletonSeq!1801 t!6207))))))))

(declare-fun b!1851306 () Bool)

(assert (=> b!1851306 (= e!1183147 Nil!20499)))

(assert (= (and d!565926 c!302072) b!1851305))

(assert (= (and d!565926 (not c!302072)) b!1851306))

(declare-fun m!2277934 () Bool)

(assert (=> b!1851305 m!2277934))

(assert (=> b!1851305 m!2277934))

(declare-fun m!2277936 () Bool)

(assert (=> b!1851305 m!2277936))

(declare-fun m!2277938 () Bool)

(assert (=> b!1851305 m!2277938))

(assert (=> b!1851305 m!2277936))

(assert (=> b!1851305 m!2277938))

(declare-fun m!2277940 () Bool)

(assert (=> b!1851305 m!2277940))

(assert (=> d!565792 d!565926))

(assert (=> d!565792 d!565850))

(declare-fun d!565928 () Bool)

(declare-fun lt!715702 () BalanceConc!13486)

(declare-fun printListTailRec!433 (LexerInterface!3294 List!20574 List!20571) List!20571)

(declare-fun dropList!752 (BalanceConc!13488 Int) List!20574)

(assert (=> d!565928 (= (list!8312 lt!715702) (printListTailRec!433 thiss!10908 (dropList!752 (singletonSeq!1801 t!6207) 0) (list!8312 (BalanceConc!13487 Empty!6782))))))

(declare-fun e!1183153 () BalanceConc!13486)

(assert (=> d!565928 (= lt!715702 e!1183153)))

(declare-fun c!302075 () Bool)

(assert (=> d!565928 (= c!302075 (>= 0 (size!16190 (singletonSeq!1801 t!6207))))))

(declare-fun e!1183152 () Bool)

(assert (=> d!565928 e!1183152))

(declare-fun res!830928 () Bool)

(assert (=> d!565928 (=> (not res!830928) (not e!1183152))))

(assert (=> d!565928 (= res!830928 (>= 0 0))))

(assert (=> d!565928 (= (printTailRec!944 thiss!10908 (singletonSeq!1801 t!6207) 0 (BalanceConc!13487 Empty!6782)) lt!715702)))

(declare-fun b!1851313 () Bool)

(assert (=> b!1851313 (= e!1183152 (<= 0 (size!16190 (singletonSeq!1801 t!6207))))))

(declare-fun b!1851314 () Bool)

(assert (=> b!1851314 (= e!1183153 (BalanceConc!13487 Empty!6782))))

(declare-fun b!1851315 () Bool)

(assert (=> b!1851315 (= e!1183153 (printTailRec!944 thiss!10908 (singletonSeq!1801 t!6207) (+ 0 1) (++!5547 (BalanceConc!13487 Empty!6782) (charsOf!2293 (apply!5451 (singletonSeq!1801 t!6207) 0)))))))

(declare-fun lt!715704 () List!20574)

(assert (=> b!1851315 (= lt!715704 (list!8313 (singletonSeq!1801 t!6207)))))

(declare-fun lt!715703 () Unit!35130)

(declare-fun lemmaDropApply!640 (List!20574 Int) Unit!35130)

(assert (=> b!1851315 (= lt!715703 (lemmaDropApply!640 lt!715704 0))))

(declare-fun drop!980 (List!20574 Int) List!20574)

(assert (=> b!1851315 (= (head!4332 (drop!980 lt!715704 0)) (apply!5452 lt!715704 0))))

(declare-fun lt!715706 () Unit!35130)

(assert (=> b!1851315 (= lt!715706 lt!715703)))

(declare-fun lt!715705 () List!20574)

(assert (=> b!1851315 (= lt!715705 (list!8313 (singletonSeq!1801 t!6207)))))

(declare-fun lt!715701 () Unit!35130)

(declare-fun lemmaDropTail!620 (List!20574 Int) Unit!35130)

(assert (=> b!1851315 (= lt!715701 (lemmaDropTail!620 lt!715705 0))))

(assert (=> b!1851315 (= (tail!2795 (drop!980 lt!715705 0)) (drop!980 lt!715705 (+ 0 1)))))

(declare-fun lt!715700 () Unit!35130)

(assert (=> b!1851315 (= lt!715700 lt!715701)))

(assert (= (and d!565928 res!830928) b!1851313))

(assert (= (and d!565928 c!302075) b!1851314))

(assert (= (and d!565928 (not c!302075)) b!1851315))

(assert (=> d!565928 m!2277816))

(declare-fun m!2277942 () Bool)

(assert (=> d!565928 m!2277942))

(assert (=> d!565928 m!2277816))

(declare-fun m!2277944 () Bool)

(assert (=> d!565928 m!2277944))

(assert (=> d!565928 m!2277489))

(declare-fun m!2277946 () Bool)

(assert (=> d!565928 m!2277946))

(assert (=> d!565928 m!2277489))

(assert (=> d!565928 m!2277942))

(declare-fun m!2277948 () Bool)

(assert (=> d!565928 m!2277948))

(assert (=> b!1851313 m!2277489))

(assert (=> b!1851313 m!2277946))

(declare-fun m!2277950 () Bool)

(assert (=> b!1851315 m!2277950))

(assert (=> b!1851315 m!2277489))

(declare-fun m!2277952 () Bool)

(assert (=> b!1851315 m!2277952))

(declare-fun m!2277954 () Bool)

(assert (=> b!1851315 m!2277954))

(assert (=> b!1851315 m!2277489))

(assert (=> b!1851315 m!2277561))

(declare-fun m!2277956 () Bool)

(assert (=> b!1851315 m!2277956))

(declare-fun m!2277958 () Bool)

(assert (=> b!1851315 m!2277958))

(declare-fun m!2277960 () Bool)

(assert (=> b!1851315 m!2277960))

(declare-fun m!2277962 () Bool)

(assert (=> b!1851315 m!2277962))

(assert (=> b!1851315 m!2277960))

(assert (=> b!1851315 m!2277952))

(declare-fun m!2277964 () Bool)

(assert (=> b!1851315 m!2277964))

(declare-fun m!2277966 () Bool)

(assert (=> b!1851315 m!2277966))

(declare-fun m!2277968 () Bool)

(assert (=> b!1851315 m!2277968))

(assert (=> b!1851315 m!2277968))

(declare-fun m!2277970 () Bool)

(assert (=> b!1851315 m!2277970))

(declare-fun m!2277972 () Bool)

(assert (=> b!1851315 m!2277972))

(assert (=> b!1851315 m!2277964))

(assert (=> b!1851315 m!2277489))

(assert (=> b!1851315 m!2277958))

(assert (=> d!565792 d!565928))

(declare-fun bs!410083 () Bool)

(declare-fun d!565930 () Bool)

(assert (= bs!410083 (and d!565930 d!565826)))

(declare-fun lambda!73201 () Int)

(assert (=> bs!410083 (= lambda!73201 lambda!73171)))

(declare-fun bs!410084 () Bool)

(assert (= bs!410084 (and d!565930 d!565844)))

(assert (=> bs!410084 (= lambda!73201 lambda!73179)))

(declare-fun bs!410085 () Bool)

(assert (= bs!410085 (and d!565930 d!565822)))

(assert (=> bs!410085 (= lambda!73201 lambda!73167)))

(declare-fun bs!410086 () Bool)

(assert (= bs!410086 (and d!565930 d!565894)))

(assert (=> bs!410086 (= lambda!73201 lambda!73195)))

(declare-fun bs!410087 () Bool)

(assert (= bs!410087 (and d!565930 d!565918)))

(assert (=> bs!410087 (= lambda!73201 lambda!73198)))

(declare-fun bs!410088 () Bool)

(assert (= bs!410088 (and d!565930 d!565904)))

(assert (=> bs!410088 (= lambda!73201 lambda!73196)))

(declare-fun bs!410089 () Bool)

(assert (= bs!410089 (and d!565930 d!565872)))

(assert (=> bs!410089 (= lambda!73201 lambda!73189)))

(declare-fun bs!410090 () Bool)

(assert (= bs!410090 (and d!565930 d!565888)))

(assert (=> bs!410090 (= lambda!73201 lambda!73194)))

(declare-fun bs!410091 () Bool)

(assert (= bs!410091 (and d!565930 d!565830)))

(assert (=> bs!410091 (= lambda!73201 lambda!73173)))

(declare-fun bs!410092 () Bool)

(assert (= bs!410092 (and d!565930 d!565886)))

(assert (=> bs!410092 (= lambda!73201 lambda!73193)))

(declare-fun bs!410093 () Bool)

(assert (= bs!410093 (and d!565930 d!565842)))

(assert (=> bs!410093 (= lambda!73201 lambda!73178)))

(declare-fun bs!410094 () Bool)

(assert (= bs!410094 (and d!565930 d!565836)))

(assert (=> bs!410094 (= lambda!73201 lambda!73177)))

(declare-fun bs!410095 () Bool)

(assert (= bs!410095 (and d!565930 d!565812)))

(assert (=> bs!410095 (= lambda!73201 lambda!73165)))

(declare-fun bs!410096 () Bool)

(assert (= bs!410096 (and d!565930 d!565880)))

(assert (=> bs!410096 (= lambda!73201 lambda!73190)))

(declare-fun bs!410097 () Bool)

(assert (= bs!410097 (and d!565930 d!565920)))

(assert (=> bs!410097 (= lambda!73201 lambda!73199)))

(declare-fun bs!410098 () Bool)

(assert (= bs!410098 (and d!565930 d!565910)))

(assert (=> bs!410098 (= lambda!73201 lambda!73197)))

(declare-fun bs!410099 () Bool)

(assert (= bs!410099 (and d!565930 d!565818)))

(assert (=> bs!410099 (= lambda!73201 lambda!73166)))

(declare-fun bs!410100 () Bool)

(assert (= bs!410100 (and d!565930 d!565856)))

(assert (=> bs!410100 (= lambda!73201 lambda!73181)))

(declare-fun bs!410101 () Bool)

(assert (= bs!410101 (and d!565930 d!565828)))

(assert (=> bs!410101 (= lambda!73201 lambda!73172)))

(declare-fun bs!410102 () Bool)

(assert (= bs!410102 (and d!565930 d!565884)))

(assert (=> bs!410102 (= lambda!73201 lambda!73192)))

(declare-fun bs!410103 () Bool)

(assert (= bs!410103 (and d!565930 d!565864)))

(assert (=> bs!410103 (= lambda!73201 lambda!73182)))

(declare-fun bs!410104 () Bool)

(assert (= bs!410104 (and d!565930 d!565882)))

(assert (=> bs!410104 (= lambda!73201 lambda!73191)))

(assert (=> d!565930 (= (inv!26885 (_2!11292 (_1!11293 (h!25898 mapDefault!8771)))) (forall!4386 (exprs!1445 (_2!11292 (_1!11293 (h!25898 mapDefault!8771)))) lambda!73201))))

(declare-fun bs!410105 () Bool)

(assert (= bs!410105 d!565930))

(declare-fun m!2277974 () Bool)

(assert (=> bs!410105 m!2277974))

(assert (=> b!1851154 d!565930))

(declare-fun bs!410106 () Bool)

(declare-fun d!565932 () Bool)

(assert (= bs!410106 (and d!565932 d!565826)))

(declare-fun lambda!73202 () Int)

(assert (=> bs!410106 (= lambda!73202 lambda!73171)))

(declare-fun bs!410107 () Bool)

(assert (= bs!410107 (and d!565932 d!565844)))

(assert (=> bs!410107 (= lambda!73202 lambda!73179)))

(declare-fun bs!410108 () Bool)

(assert (= bs!410108 (and d!565932 d!565822)))

(assert (=> bs!410108 (= lambda!73202 lambda!73167)))

(declare-fun bs!410109 () Bool)

(assert (= bs!410109 (and d!565932 d!565894)))

(assert (=> bs!410109 (= lambda!73202 lambda!73195)))

(declare-fun bs!410110 () Bool)

(assert (= bs!410110 (and d!565932 d!565918)))

(assert (=> bs!410110 (= lambda!73202 lambda!73198)))

(declare-fun bs!410111 () Bool)

(assert (= bs!410111 (and d!565932 d!565904)))

(assert (=> bs!410111 (= lambda!73202 lambda!73196)))

(declare-fun bs!410112 () Bool)

(assert (= bs!410112 (and d!565932 d!565872)))

(assert (=> bs!410112 (= lambda!73202 lambda!73189)))

(declare-fun bs!410113 () Bool)

(assert (= bs!410113 (and d!565932 d!565888)))

(assert (=> bs!410113 (= lambda!73202 lambda!73194)))

(declare-fun bs!410114 () Bool)

(assert (= bs!410114 (and d!565932 d!565830)))

(assert (=> bs!410114 (= lambda!73202 lambda!73173)))

(declare-fun bs!410115 () Bool)

(assert (= bs!410115 (and d!565932 d!565886)))

(assert (=> bs!410115 (= lambda!73202 lambda!73193)))

(declare-fun bs!410116 () Bool)

(assert (= bs!410116 (and d!565932 d!565836)))

(assert (=> bs!410116 (= lambda!73202 lambda!73177)))

(declare-fun bs!410117 () Bool)

(assert (= bs!410117 (and d!565932 d!565842)))

(assert (=> bs!410117 (= lambda!73202 lambda!73178)))

(declare-fun bs!410118 () Bool)

(assert (= bs!410118 (and d!565932 d!565930)))

(assert (=> bs!410118 (= lambda!73202 lambda!73201)))

(declare-fun bs!410119 () Bool)

(assert (= bs!410119 (and d!565932 d!565812)))

(assert (=> bs!410119 (= lambda!73202 lambda!73165)))

(declare-fun bs!410120 () Bool)

(assert (= bs!410120 (and d!565932 d!565880)))

(assert (=> bs!410120 (= lambda!73202 lambda!73190)))

(declare-fun bs!410121 () Bool)

(assert (= bs!410121 (and d!565932 d!565920)))

(assert (=> bs!410121 (= lambda!73202 lambda!73199)))

(declare-fun bs!410122 () Bool)

(assert (= bs!410122 (and d!565932 d!565910)))

(assert (=> bs!410122 (= lambda!73202 lambda!73197)))

(declare-fun bs!410123 () Bool)

(assert (= bs!410123 (and d!565932 d!565818)))

(assert (=> bs!410123 (= lambda!73202 lambda!73166)))

(declare-fun bs!410124 () Bool)

(assert (= bs!410124 (and d!565932 d!565856)))

(assert (=> bs!410124 (= lambda!73202 lambda!73181)))

(declare-fun bs!410125 () Bool)

(assert (= bs!410125 (and d!565932 d!565828)))

(assert (=> bs!410125 (= lambda!73202 lambda!73172)))

(declare-fun bs!410126 () Bool)

(assert (= bs!410126 (and d!565932 d!565884)))

(assert (=> bs!410126 (= lambda!73202 lambda!73192)))

(declare-fun bs!410127 () Bool)

(assert (= bs!410127 (and d!565932 d!565864)))

(assert (=> bs!410127 (= lambda!73202 lambda!73182)))

(declare-fun bs!410128 () Bool)

(assert (= bs!410128 (and d!565932 d!565882)))

(assert (=> bs!410128 (= lambda!73202 lambda!73191)))

(assert (=> d!565932 (= (inv!26885 (_1!11294 (_1!11295 (h!25902 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))))) (forall!4386 (exprs!1445 (_1!11294 (_1!11295 (h!25902 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))))) lambda!73202))))

(declare-fun bs!410129 () Bool)

(assert (= bs!410129 d!565932))

(declare-fun m!2277976 () Bool)

(assert (=> bs!410129 m!2277976))

(assert (=> b!1851158 d!565932))

(declare-fun d!565934 () Bool)

(assert (=> d!565934 (= (list!8312 (_2!11296 (_1!11297 lt!715557))) (list!8314 (c!302025 (_2!11296 (_1!11297 lt!715557)))))))

(declare-fun bs!410130 () Bool)

(assert (= bs!410130 d!565934))

(declare-fun m!2277978 () Bool)

(assert (=> bs!410130 m!2277978))

(assert (=> b!1851027 d!565934))

(declare-fun d!565936 () Bool)

(assert (=> d!565936 (= (list!8312 (_2!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207))))) (list!8314 (c!302025 (_2!11296 (lex!1497 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)))))))))

(declare-fun bs!410131 () Bool)

(assert (= bs!410131 d!565936))

(declare-fun m!2277980 () Bool)

(assert (=> bs!410131 m!2277980))

(assert (=> b!1851027 d!565936))

(assert (=> b!1851027 d!565816))

(declare-fun d!565938 () Bool)

(declare-fun res!830935 () Bool)

(declare-fun e!1183158 () Bool)

(assert (=> d!565938 (=> (not res!830935) (not e!1183158))))

(declare-fun valid!1501 (MutableMap!1825) Bool)

(assert (=> d!565938 (= res!830935 (valid!1501 (cache!2206 cacheDown!404)))))

(assert (=> d!565938 (= (validCacheMapDown!174 (cache!2206 cacheDown!404)) e!1183158)))

(declare-fun b!1851322 () Bool)

(declare-fun res!830936 () Bool)

(assert (=> b!1851322 (=> (not res!830936) (not e!1183158))))

(declare-fun invariantList!256 (List!20569) Bool)

(declare-datatypes ((ListMap!561 0))(
  ( (ListMap!562 (toList!981 List!20569)) )
))
(declare-fun map!4319 (MutableMap!1825) ListMap!561)

(assert (=> b!1851322 (= res!830936 (invariantList!256 (toList!981 (map!4319 (cache!2206 cacheDown!404)))))))

(declare-fun b!1851323 () Bool)

(declare-fun lambda!73205 () Int)

(declare-fun forall!4389 (List!20569 Int) Bool)

(assert (=> b!1851323 (= e!1183158 (forall!4389 (toList!981 (map!4319 (cache!2206 cacheDown!404))) lambda!73205))))

(assert (= (and d!565938 res!830935) b!1851322))

(assert (= (and b!1851322 res!830936) b!1851323))

(declare-fun m!2277983 () Bool)

(assert (=> d!565938 m!2277983))

(declare-fun m!2277985 () Bool)

(assert (=> b!1851322 m!2277985))

(declare-fun m!2277987 () Bool)

(assert (=> b!1851322 m!2277987))

(assert (=> b!1851323 m!2277985))

(declare-fun m!2277989 () Bool)

(assert (=> b!1851323 m!2277989))

(assert (=> b!1851011 d!565938))

(declare-fun d!565940 () Bool)

(assert (=> d!565940 (= (isEmpty!12795 (list!8312 (_2!11296 (_1!11297 lt!715538)))) ((_ is Nil!20499) (list!8312 (_2!11296 (_1!11297 lt!715538)))))))

(assert (=> d!565804 d!565940))

(declare-fun d!565942 () Bool)

(assert (=> d!565942 (= (list!8312 (_2!11296 (_1!11297 lt!715538))) (list!8314 (c!302025 (_2!11296 (_1!11297 lt!715538)))))))

(declare-fun bs!410132 () Bool)

(assert (= bs!410132 d!565942))

(declare-fun m!2277991 () Bool)

(assert (=> bs!410132 m!2277991))

(assert (=> d!565804 d!565942))

(declare-fun d!565944 () Bool)

(declare-fun lt!715709 () Bool)

(assert (=> d!565944 (= lt!715709 (isEmpty!12795 (list!8314 (c!302025 (_2!11296 (_1!11297 lt!715538))))))))

(declare-fun size!16195 (Conc!6782) Int)

(assert (=> d!565944 (= lt!715709 (= (size!16195 (c!302025 (_2!11296 (_1!11297 lt!715538)))) 0))))

(assert (=> d!565944 (= (isEmpty!12796 (c!302025 (_2!11296 (_1!11297 lt!715538)))) lt!715709)))

(declare-fun bs!410133 () Bool)

(assert (= bs!410133 d!565944))

(assert (=> bs!410133 m!2277991))

(assert (=> bs!410133 m!2277991))

(declare-fun m!2277993 () Bool)

(assert (=> bs!410133 m!2277993))

(declare-fun m!2277995 () Bool)

(assert (=> bs!410133 m!2277995))

(assert (=> d!565804 d!565944))

(declare-fun b!1851327 () Bool)

(declare-fun e!1183159 () Bool)

(declare-fun tp!524202 () Bool)

(declare-fun tp!524200 () Bool)

(assert (=> b!1851327 (= e!1183159 (and tp!524202 tp!524200))))

(declare-fun b!1851326 () Bool)

(declare-fun tp!524203 () Bool)

(assert (=> b!1851326 (= e!1183159 tp!524203)))

(declare-fun b!1851325 () Bool)

(declare-fun tp!524199 () Bool)

(declare-fun tp!524201 () Bool)

(assert (=> b!1851325 (= e!1183159 (and tp!524199 tp!524201))))

(declare-fun b!1851324 () Bool)

(assert (=> b!1851324 (= e!1183159 tp_is_empty!8497)))

(assert (=> b!1851136 (= tp!524164 e!1183159)))

(assert (= (and b!1851136 ((_ is ElementMatch!5035) (_1!11292 (_1!11293 (h!25898 mapValue!8770))))) b!1851324))

(assert (= (and b!1851136 ((_ is Concat!8823) (_1!11292 (_1!11293 (h!25898 mapValue!8770))))) b!1851325))

(assert (= (and b!1851136 ((_ is Star!5035) (_1!11292 (_1!11293 (h!25898 mapValue!8770))))) b!1851326))

(assert (= (and b!1851136 ((_ is Union!5035) (_1!11292 (_1!11293 (h!25898 mapValue!8770))))) b!1851327))

(declare-fun setRes!11390 () Bool)

(declare-fun tp!524204 () Bool)

(declare-fun e!1183162 () Bool)

(declare-fun tp!524207 () Bool)

(declare-fun b!1851328 () Bool)

(declare-fun e!1183161 () Bool)

(assert (=> b!1851328 (= e!1183162 (and tp!524204 (inv!26885 (_2!11292 (_1!11293 (h!25898 (t!172356 mapValue!8770))))) e!1183161 tp_is_empty!8497 setRes!11390 tp!524207))))

(declare-fun condSetEmpty!11390 () Bool)

(assert (=> b!1851328 (= condSetEmpty!11390 (= (_2!11293 (h!25898 (t!172356 mapValue!8770))) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> b!1851136 (= tp!524167 e!1183162)))

(declare-fun tp!524208 () Bool)

(declare-fun e!1183160 () Bool)

(declare-fun setElem!11390 () Context!1890)

(declare-fun setNonEmpty!11390 () Bool)

(assert (=> setNonEmpty!11390 (= setRes!11390 (and tp!524208 (inv!26885 setElem!11390) e!1183160))))

(declare-fun setRest!11390 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11390 (= (_2!11293 (h!25898 (t!172356 mapValue!8770))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11390 true) setRest!11390))))

(declare-fun b!1851329 () Bool)

(declare-fun tp!524205 () Bool)

(assert (=> b!1851329 (= e!1183160 tp!524205)))

(declare-fun b!1851330 () Bool)

(declare-fun tp!524206 () Bool)

(assert (=> b!1851330 (= e!1183161 tp!524206)))

(declare-fun setIsEmpty!11390 () Bool)

(assert (=> setIsEmpty!11390 setRes!11390))

(assert (= b!1851328 b!1851330))

(assert (= (and b!1851328 condSetEmpty!11390) setIsEmpty!11390))

(assert (= (and b!1851328 (not condSetEmpty!11390)) setNonEmpty!11390))

(assert (= setNonEmpty!11390 b!1851329))

(assert (= (and b!1851136 ((_ is Cons!20497) (t!172356 mapValue!8770))) b!1851328))

(declare-fun m!2277997 () Bool)

(assert (=> b!1851328 m!2277997))

(declare-fun m!2277999 () Bool)

(assert (=> setNonEmpty!11390 m!2277999))

(declare-fun b!1851334 () Bool)

(declare-fun e!1183163 () Bool)

(declare-fun tp!524212 () Bool)

(declare-fun tp!524210 () Bool)

(assert (=> b!1851334 (= e!1183163 (and tp!524212 tp!524210))))

(declare-fun b!1851333 () Bool)

(declare-fun tp!524213 () Bool)

(assert (=> b!1851333 (= e!1183163 tp!524213)))

(declare-fun b!1851332 () Bool)

(declare-fun tp!524209 () Bool)

(declare-fun tp!524211 () Bool)

(assert (=> b!1851332 (= e!1183163 (and tp!524209 tp!524211))))

(declare-fun b!1851331 () Bool)

(assert (=> b!1851331 (= e!1183163 tp_is_empty!8497)))

(assert (=> b!1851135 (= tp!524160 e!1183163)))

(assert (= (and b!1851135 ((_ is ElementMatch!5035) (_1!11292 (_1!11293 (h!25898 mapValue!8777))))) b!1851331))

(assert (= (and b!1851135 ((_ is Concat!8823) (_1!11292 (_1!11293 (h!25898 mapValue!8777))))) b!1851332))

(assert (= (and b!1851135 ((_ is Star!5035) (_1!11292 (_1!11293 (h!25898 mapValue!8777))))) b!1851333))

(assert (= (and b!1851135 ((_ is Union!5035) (_1!11292 (_1!11293 (h!25898 mapValue!8777))))) b!1851334))

(declare-fun e!1183165 () Bool)

(declare-fun tp!524217 () Bool)

(declare-fun b!1851335 () Bool)

(declare-fun setRes!11391 () Bool)

(declare-fun e!1183166 () Bool)

(declare-fun tp!524214 () Bool)

(assert (=> b!1851335 (= e!1183166 (and tp!524214 (inv!26885 (_2!11292 (_1!11293 (h!25898 (t!172356 mapValue!8777))))) e!1183165 tp_is_empty!8497 setRes!11391 tp!524217))))

(declare-fun condSetEmpty!11391 () Bool)

(assert (=> b!1851335 (= condSetEmpty!11391 (= (_2!11293 (h!25898 (t!172356 mapValue!8777))) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> b!1851135 (= tp!524153 e!1183166)))

(declare-fun setNonEmpty!11391 () Bool)

(declare-fun setElem!11391 () Context!1890)

(declare-fun e!1183164 () Bool)

(declare-fun tp!524218 () Bool)

(assert (=> setNonEmpty!11391 (= setRes!11391 (and tp!524218 (inv!26885 setElem!11391) e!1183164))))

(declare-fun setRest!11391 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11391 (= (_2!11293 (h!25898 (t!172356 mapValue!8777))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11391 true) setRest!11391))))

(declare-fun b!1851336 () Bool)

(declare-fun tp!524215 () Bool)

(assert (=> b!1851336 (= e!1183164 tp!524215)))

(declare-fun b!1851337 () Bool)

(declare-fun tp!524216 () Bool)

(assert (=> b!1851337 (= e!1183165 tp!524216)))

(declare-fun setIsEmpty!11391 () Bool)

(assert (=> setIsEmpty!11391 setRes!11391))

(assert (= b!1851335 b!1851337))

(assert (= (and b!1851335 condSetEmpty!11391) setIsEmpty!11391))

(assert (= (and b!1851335 (not condSetEmpty!11391)) setNonEmpty!11391))

(assert (= setNonEmpty!11391 b!1851336))

(assert (= (and b!1851135 ((_ is Cons!20497) (t!172356 mapValue!8777))) b!1851335))

(declare-fun m!2278001 () Bool)

(assert (=> b!1851335 m!2278001))

(declare-fun m!2278003 () Bool)

(assert (=> setNonEmpty!11391 m!2278003))

(declare-fun b!1851341 () Bool)

(declare-fun e!1183167 () Bool)

(declare-fun tp!524222 () Bool)

(declare-fun tp!524220 () Bool)

(assert (=> b!1851341 (= e!1183167 (and tp!524222 tp!524220))))

(declare-fun b!1851340 () Bool)

(declare-fun tp!524223 () Bool)

(assert (=> b!1851340 (= e!1183167 tp!524223)))

(declare-fun b!1851339 () Bool)

(declare-fun tp!524219 () Bool)

(declare-fun tp!524221 () Bool)

(assert (=> b!1851339 (= e!1183167 (and tp!524219 tp!524221))))

(declare-fun b!1851338 () Bool)

(assert (=> b!1851338 (= e!1183167 tp_is_empty!8497)))

(assert (=> b!1851133 (= tp!524157 e!1183167)))

(assert (= (and b!1851133 ((_ is ElementMatch!5035) (_1!11292 (_1!11293 (h!25898 mapDefault!8777))))) b!1851338))

(assert (= (and b!1851133 ((_ is Concat!8823) (_1!11292 (_1!11293 (h!25898 mapDefault!8777))))) b!1851339))

(assert (= (and b!1851133 ((_ is Star!5035) (_1!11292 (_1!11293 (h!25898 mapDefault!8777))))) b!1851340))

(assert (= (and b!1851133 ((_ is Union!5035) (_1!11292 (_1!11293 (h!25898 mapDefault!8777))))) b!1851341))

(declare-fun e!1183169 () Bool)

(declare-fun e!1183170 () Bool)

(declare-fun b!1851342 () Bool)

(declare-fun tp!524224 () Bool)

(declare-fun tp!524227 () Bool)

(declare-fun setRes!11392 () Bool)

(assert (=> b!1851342 (= e!1183170 (and tp!524224 (inv!26885 (_2!11292 (_1!11293 (h!25898 (t!172356 mapDefault!8777))))) e!1183169 tp_is_empty!8497 setRes!11392 tp!524227))))

(declare-fun condSetEmpty!11392 () Bool)

(assert (=> b!1851342 (= condSetEmpty!11392 (= (_2!11293 (h!25898 (t!172356 mapDefault!8777))) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> b!1851133 (= tp!524154 e!1183170)))

(declare-fun tp!524228 () Bool)

(declare-fun setNonEmpty!11392 () Bool)

(declare-fun e!1183168 () Bool)

(declare-fun setElem!11392 () Context!1890)

(assert (=> setNonEmpty!11392 (= setRes!11392 (and tp!524228 (inv!26885 setElem!11392) e!1183168))))

(declare-fun setRest!11392 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11392 (= (_2!11293 (h!25898 (t!172356 mapDefault!8777))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11392 true) setRest!11392))))

(declare-fun b!1851343 () Bool)

(declare-fun tp!524225 () Bool)

(assert (=> b!1851343 (= e!1183168 tp!524225)))

(declare-fun b!1851344 () Bool)

(declare-fun tp!524226 () Bool)

(assert (=> b!1851344 (= e!1183169 tp!524226)))

(declare-fun setIsEmpty!11392 () Bool)

(assert (=> setIsEmpty!11392 setRes!11392))

(assert (= b!1851342 b!1851344))

(assert (= (and b!1851342 condSetEmpty!11392) setIsEmpty!11392))

(assert (= (and b!1851342 (not condSetEmpty!11392)) setNonEmpty!11392))

(assert (= setNonEmpty!11392 b!1851343))

(assert (= (and b!1851133 ((_ is Cons!20497) (t!172356 mapDefault!8777))) b!1851342))

(declare-fun m!2278005 () Bool)

(assert (=> b!1851342 m!2278005))

(declare-fun m!2278007 () Bool)

(assert (=> setNonEmpty!11392 m!2278007))

(declare-fun b!1851348 () Bool)

(declare-fun e!1183171 () Bool)

(declare-fun tp!524232 () Bool)

(declare-fun tp!524230 () Bool)

(assert (=> b!1851348 (= e!1183171 (and tp!524232 tp!524230))))

(declare-fun b!1851347 () Bool)

(declare-fun tp!524233 () Bool)

(assert (=> b!1851347 (= e!1183171 tp!524233)))

(declare-fun b!1851346 () Bool)

(declare-fun tp!524229 () Bool)

(declare-fun tp!524231 () Bool)

(assert (=> b!1851346 (= e!1183171 (and tp!524229 tp!524231))))

(declare-fun b!1851345 () Bool)

(assert (=> b!1851345 (= e!1183171 tp_is_empty!8497)))

(assert (=> b!1851141 (= tp!524173 e!1183171)))

(assert (= (and b!1851141 ((_ is ElementMatch!5035) (reg!5364 (regex!3672 (rule!5866 t!6207))))) b!1851345))

(assert (= (and b!1851141 ((_ is Concat!8823) (reg!5364 (regex!3672 (rule!5866 t!6207))))) b!1851346))

(assert (= (and b!1851141 ((_ is Star!5035) (reg!5364 (regex!3672 (rule!5866 t!6207))))) b!1851347))

(assert (= (and b!1851141 ((_ is Union!5035) (reg!5364 (regex!3672 (rule!5866 t!6207))))) b!1851348))

(declare-fun b!1851353 () Bool)

(declare-fun e!1183174 () Bool)

(declare-fun tp!524238 () Bool)

(declare-fun tp!524239 () Bool)

(assert (=> b!1851353 (= e!1183174 (and tp!524238 tp!524239))))

(assert (=> b!1851058 (= tp!524061 e!1183174)))

(assert (= (and b!1851058 ((_ is Cons!20496) (exprs!1445 setElem!11368))) b!1851353))

(declare-fun b!1851354 () Bool)

(declare-fun e!1183175 () Bool)

(declare-fun tp!524240 () Bool)

(declare-fun tp!524241 () Bool)

(assert (=> b!1851354 (= e!1183175 (and tp!524240 tp!524241))))

(assert (=> b!1851061 (= tp!524066 e!1183175)))

(assert (= (and b!1851061 ((_ is Cons!20496) (exprs!1445 setElem!11369))) b!1851354))

(declare-fun b!1851355 () Bool)

(declare-fun e!1183176 () Bool)

(declare-fun tp!524242 () Bool)

(declare-fun tp!524243 () Bool)

(assert (=> b!1851355 (= e!1183176 (and tp!524242 tp!524243))))

(assert (=> b!1851132 (= tp!524158 e!1183176)))

(assert (= (and b!1851132 ((_ is Cons!20496) (exprs!1445 (_2!11292 (_1!11293 (h!25898 mapDefault!8777)))))) b!1851355))

(declare-fun b!1851359 () Bool)

(declare-fun e!1183177 () Bool)

(declare-fun tp!524247 () Bool)

(declare-fun tp!524245 () Bool)

(assert (=> b!1851359 (= e!1183177 (and tp!524247 tp!524245))))

(declare-fun b!1851358 () Bool)

(declare-fun tp!524248 () Bool)

(assert (=> b!1851358 (= e!1183177 tp!524248)))

(declare-fun b!1851357 () Bool)

(declare-fun tp!524244 () Bool)

(declare-fun tp!524246 () Bool)

(assert (=> b!1851357 (= e!1183177 (and tp!524244 tp!524246))))

(declare-fun b!1851356 () Bool)

(assert (=> b!1851356 (= e!1183177 tp_is_empty!8497)))

(assert (=> b!1851076 (= tp!524083 e!1183177)))

(assert (= (and b!1851076 ((_ is ElementMatch!5035) (regOne!10583 (regex!3672 (h!25901 rs!164))))) b!1851356))

(assert (= (and b!1851076 ((_ is Concat!8823) (regOne!10583 (regex!3672 (h!25901 rs!164))))) b!1851357))

(assert (= (and b!1851076 ((_ is Star!5035) (regOne!10583 (regex!3672 (h!25901 rs!164))))) b!1851358))

(assert (= (and b!1851076 ((_ is Union!5035) (regOne!10583 (regex!3672 (h!25901 rs!164))))) b!1851359))

(declare-fun b!1851363 () Bool)

(declare-fun e!1183178 () Bool)

(declare-fun tp!524252 () Bool)

(declare-fun tp!524250 () Bool)

(assert (=> b!1851363 (= e!1183178 (and tp!524252 tp!524250))))

(declare-fun b!1851362 () Bool)

(declare-fun tp!524253 () Bool)

(assert (=> b!1851362 (= e!1183178 tp!524253)))

(declare-fun b!1851361 () Bool)

(declare-fun tp!524249 () Bool)

(declare-fun tp!524251 () Bool)

(assert (=> b!1851361 (= e!1183178 (and tp!524249 tp!524251))))

(declare-fun b!1851360 () Bool)

(assert (=> b!1851360 (= e!1183178 tp_is_empty!8497)))

(assert (=> b!1851076 (= tp!524081 e!1183178)))

(assert (= (and b!1851076 ((_ is ElementMatch!5035) (regTwo!10583 (regex!3672 (h!25901 rs!164))))) b!1851360))

(assert (= (and b!1851076 ((_ is Concat!8823) (regTwo!10583 (regex!3672 (h!25901 rs!164))))) b!1851361))

(assert (= (and b!1851076 ((_ is Star!5035) (regTwo!10583 (regex!3672 (h!25901 rs!164))))) b!1851362))

(assert (= (and b!1851076 ((_ is Union!5035) (regTwo!10583 (regex!3672 (h!25901 rs!164))))) b!1851363))

(declare-fun b!1851364 () Bool)

(declare-fun e!1183179 () Bool)

(declare-fun tp!524254 () Bool)

(declare-fun tp!524255 () Bool)

(assert (=> b!1851364 (= e!1183179 (and tp!524254 tp!524255))))

(assert (=> b!1851096 (= tp!524107 e!1183179)))

(assert (= (and b!1851096 ((_ is Cons!20496) (exprs!1445 (_1!11294 (_1!11295 (h!25902 mapDefault!8774)))))) b!1851364))

(declare-fun b!1851368 () Bool)

(declare-fun e!1183180 () Bool)

(declare-fun tp!524259 () Bool)

(declare-fun tp!524257 () Bool)

(assert (=> b!1851368 (= e!1183180 (and tp!524259 tp!524257))))

(declare-fun b!1851367 () Bool)

(declare-fun tp!524260 () Bool)

(assert (=> b!1851367 (= e!1183180 tp!524260)))

(declare-fun b!1851366 () Bool)

(declare-fun tp!524256 () Bool)

(declare-fun tp!524258 () Bool)

(assert (=> b!1851366 (= e!1183180 (and tp!524256 tp!524258))))

(declare-fun b!1851365 () Bool)

(assert (=> b!1851365 (= e!1183180 tp_is_empty!8497)))

(assert (=> b!1851057 (= tp!524060 e!1183180)))

(assert (= (and b!1851057 ((_ is ElementMatch!5035) (_1!11292 (_1!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) b!1851365))

(assert (= (and b!1851057 ((_ is Concat!8823) (_1!11292 (_1!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) b!1851366))

(assert (= (and b!1851057 ((_ is Star!5035) (_1!11292 (_1!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) b!1851367))

(assert (= (and b!1851057 ((_ is Union!5035) (_1!11292 (_1!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) b!1851368))

(declare-fun b!1851369 () Bool)

(declare-fun e!1183183 () Bool)

(declare-fun e!1183182 () Bool)

(declare-fun setRes!11393 () Bool)

(declare-fun tp!524264 () Bool)

(declare-fun tp!524261 () Bool)

(assert (=> b!1851369 (= e!1183183 (and tp!524261 (inv!26885 (_2!11292 (_1!11293 (h!25898 (t!172356 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) e!1183182 tp_is_empty!8497 setRes!11393 tp!524264))))

(declare-fun condSetEmpty!11393 () Bool)

(assert (=> b!1851369 (= condSetEmpty!11393 (= (_2!11293 (h!25898 (t!172356 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> b!1851057 (= tp!524063 e!1183183)))

(declare-fun tp!524265 () Bool)

(declare-fun setElem!11393 () Context!1890)

(declare-fun e!1183181 () Bool)

(declare-fun setNonEmpty!11393 () Bool)

(assert (=> setNonEmpty!11393 (= setRes!11393 (and tp!524265 (inv!26885 setElem!11393) e!1183181))))

(declare-fun setRest!11393 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11393 (= (_2!11293 (h!25898 (t!172356 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11393 true) setRest!11393))))

(declare-fun b!1851370 () Bool)

(declare-fun tp!524262 () Bool)

(assert (=> b!1851370 (= e!1183181 tp!524262)))

(declare-fun b!1851371 () Bool)

(declare-fun tp!524263 () Bool)

(assert (=> b!1851371 (= e!1183182 tp!524263)))

(declare-fun setIsEmpty!11393 () Bool)

(assert (=> setIsEmpty!11393 setRes!11393))

(assert (= b!1851369 b!1851371))

(assert (= (and b!1851369 condSetEmpty!11393) setIsEmpty!11393))

(assert (= (and b!1851369 (not condSetEmpty!11393)) setNonEmpty!11393))

(assert (= setNonEmpty!11393 b!1851370))

(assert (= (and b!1851057 ((_ is Cons!20497) (t!172356 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))) b!1851369))

(declare-fun m!2278009 () Bool)

(assert (=> b!1851369 m!2278009))

(declare-fun m!2278011 () Bool)

(assert (=> setNonEmpty!11393 m!2278011))

(declare-fun b!1851372 () Bool)

(declare-fun e!1183184 () Bool)

(declare-fun tp!524266 () Bool)

(declare-fun tp!524267 () Bool)

(assert (=> b!1851372 (= e!1183184 (and tp!524266 tp!524267))))

(assert (=> b!1851107 (= tp!524120 e!1183184)))

(assert (= (and b!1851107 ((_ is Cons!20496) (exprs!1445 setElem!11378))) b!1851372))

(declare-fun b!1851376 () Bool)

(declare-fun e!1183185 () Bool)

(declare-fun tp!524271 () Bool)

(declare-fun tp!524269 () Bool)

(assert (=> b!1851376 (= e!1183185 (and tp!524271 tp!524269))))

(declare-fun b!1851375 () Bool)

(declare-fun tp!524272 () Bool)

(assert (=> b!1851375 (= e!1183185 tp!524272)))

(declare-fun b!1851374 () Bool)

(declare-fun tp!524268 () Bool)

(declare-fun tp!524270 () Bool)

(assert (=> b!1851374 (= e!1183185 (and tp!524268 tp!524270))))

(declare-fun b!1851373 () Bool)

(assert (=> b!1851373 (= e!1183185 tp_is_empty!8497)))

(assert (=> b!1851060 (= tp!524065 e!1183185)))

(assert (= (and b!1851060 ((_ is ElementMatch!5035) (_1!11292 (_1!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) b!1851373))

(assert (= (and b!1851060 ((_ is Concat!8823) (_1!11292 (_1!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) b!1851374))

(assert (= (and b!1851060 ((_ is Star!5035) (_1!11292 (_1!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) b!1851375))

(assert (= (and b!1851060 ((_ is Union!5035) (_1!11292 (_1!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) b!1851376))

(declare-fun tp!524273 () Bool)

(declare-fun tp!524276 () Bool)

(declare-fun b!1851377 () Bool)

(declare-fun setRes!11394 () Bool)

(declare-fun e!1183188 () Bool)

(declare-fun e!1183187 () Bool)

(assert (=> b!1851377 (= e!1183188 (and tp!524273 (inv!26885 (_2!11292 (_1!11293 (h!25898 (t!172356 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))))) e!1183187 tp_is_empty!8497 setRes!11394 tp!524276))))

(declare-fun condSetEmpty!11394 () Bool)

(assert (=> b!1851377 (= condSetEmpty!11394 (= (_2!11293 (h!25898 (t!172356 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> b!1851060 (= tp!524068 e!1183188)))

(declare-fun setNonEmpty!11394 () Bool)

(declare-fun e!1183186 () Bool)

(declare-fun tp!524277 () Bool)

(declare-fun setElem!11394 () Context!1890)

(assert (=> setNonEmpty!11394 (= setRes!11394 (and tp!524277 (inv!26885 setElem!11394) e!1183186))))

(declare-fun setRest!11394 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11394 (= (_2!11293 (h!25898 (t!172356 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11394 true) setRest!11394))))

(declare-fun b!1851378 () Bool)

(declare-fun tp!524274 () Bool)

(assert (=> b!1851378 (= e!1183186 tp!524274)))

(declare-fun b!1851379 () Bool)

(declare-fun tp!524275 () Bool)

(assert (=> b!1851379 (= e!1183187 tp!524275)))

(declare-fun setIsEmpty!11394 () Bool)

(assert (=> setIsEmpty!11394 setRes!11394))

(assert (= b!1851377 b!1851379))

(assert (= (and b!1851377 condSetEmpty!11394) setIsEmpty!11394))

(assert (= (and b!1851377 (not condSetEmpty!11394)) setNonEmpty!11394))

(assert (= setNonEmpty!11394 b!1851378))

(assert (= (and b!1851060 ((_ is Cons!20497) (t!172356 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404))))))))) b!1851377))

(declare-fun m!2278013 () Bool)

(assert (=> b!1851377 m!2278013))

(declare-fun m!2278015 () Bool)

(assert (=> setNonEmpty!11394 m!2278015))

(declare-fun condSetEmpty!11397 () Bool)

(assert (=> setNonEmpty!11379 (= condSetEmpty!11397 (= setRest!11379 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11397 () Bool)

(assert (=> setNonEmpty!11379 (= tp!524126 setRes!11397)))

(declare-fun setIsEmpty!11397 () Bool)

(assert (=> setIsEmpty!11397 setRes!11397))

(declare-fun e!1183191 () Bool)

(declare-fun tp!524283 () Bool)

(declare-fun setNonEmpty!11397 () Bool)

(declare-fun setElem!11397 () Context!1890)

(assert (=> setNonEmpty!11397 (= setRes!11397 (and tp!524283 (inv!26885 setElem!11397) e!1183191))))

(declare-fun setRest!11397 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11397 (= setRest!11379 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11397 true) setRest!11397))))

(declare-fun b!1851384 () Bool)

(declare-fun tp!524282 () Bool)

(assert (=> b!1851384 (= e!1183191 tp!524282)))

(assert (= (and setNonEmpty!11379 condSetEmpty!11397) setIsEmpty!11397))

(assert (= (and setNonEmpty!11379 (not condSetEmpty!11397)) setNonEmpty!11397))

(assert (= setNonEmpty!11397 b!1851384))

(declare-fun m!2278017 () Bool)

(assert (=> setNonEmpty!11397 m!2278017))

(declare-fun condMapEmpty!8778 () Bool)

(declare-fun mapDefault!8778 () List!20569)

(assert (=> mapNonEmpty!8777 (= condMapEmpty!8778 (= mapRest!8777 ((as const (Array (_ BitVec 32) List!20569)) mapDefault!8778)))))

(declare-fun e!1183195 () Bool)

(declare-fun mapRes!8778 () Bool)

(assert (=> mapNonEmpty!8777 (= tp!524155 (and e!1183195 mapRes!8778))))

(declare-fun b!1851385 () Bool)

(declare-fun e!1183197 () Bool)

(declare-fun tp!524294 () Bool)

(assert (=> b!1851385 (= e!1183197 tp!524294)))

(declare-fun setIsEmpty!11398 () Bool)

(declare-fun setRes!11398 () Bool)

(assert (=> setIsEmpty!11398 setRes!11398))

(declare-fun mapIsEmpty!8778 () Bool)

(assert (=> mapIsEmpty!8778 mapRes!8778))

(declare-fun b!1851386 () Bool)

(declare-fun e!1183193 () Bool)

(declare-fun tp!524292 () Bool)

(assert (=> b!1851386 (= e!1183193 tp!524292)))

(declare-fun setNonEmpty!11398 () Bool)

(declare-fun setElem!11399 () Context!1890)

(declare-fun tp!524290 () Bool)

(declare-fun setRes!11399 () Bool)

(assert (=> setNonEmpty!11398 (= setRes!11399 (and tp!524290 (inv!26885 setElem!11399) e!1183193))))

(declare-fun mapValue!8778 () List!20569)

(declare-fun setRest!11399 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11398 (= (_2!11293 (h!25898 mapValue!8778)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11399 true) setRest!11399))))

(declare-fun mapNonEmpty!8778 () Bool)

(declare-fun tp!524286 () Bool)

(declare-fun e!1183196 () Bool)

(assert (=> mapNonEmpty!8778 (= mapRes!8778 (and tp!524286 e!1183196))))

(declare-fun mapRest!8778 () (Array (_ BitVec 32) List!20569))

(declare-fun mapKey!8778 () (_ BitVec 32))

(assert (=> mapNonEmpty!8778 (= mapRest!8777 (store mapRest!8778 mapKey!8778 mapValue!8778))))

(declare-fun setNonEmpty!11399 () Bool)

(declare-fun e!1183194 () Bool)

(declare-fun setElem!11398 () Context!1890)

(declare-fun tp!524293 () Bool)

(assert (=> setNonEmpty!11399 (= setRes!11398 (and tp!524293 (inv!26885 setElem!11398) e!1183194))))

(declare-fun setRest!11398 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11399 (= (_2!11293 (h!25898 mapDefault!8778)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11398 true) setRest!11398))))

(declare-fun b!1851387 () Bool)

(declare-fun e!1183192 () Bool)

(declare-fun tp!524289 () Bool)

(assert (=> b!1851387 (= e!1183192 tp!524289)))

(declare-fun setIsEmpty!11399 () Bool)

(assert (=> setIsEmpty!11399 setRes!11399))

(declare-fun b!1851388 () Bool)

(declare-fun tp!524288 () Bool)

(declare-fun tp!524285 () Bool)

(assert (=> b!1851388 (= e!1183195 (and tp!524288 (inv!26885 (_2!11292 (_1!11293 (h!25898 mapDefault!8778)))) e!1183192 tp_is_empty!8497 setRes!11398 tp!524285))))

(declare-fun condSetEmpty!11399 () Bool)

(assert (=> b!1851388 (= condSetEmpty!11399 (= (_2!11293 (h!25898 mapDefault!8778)) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851389 () Bool)

(declare-fun tp!524287 () Bool)

(assert (=> b!1851389 (= e!1183194 tp!524287)))

(declare-fun b!1851390 () Bool)

(declare-fun tp!524291 () Bool)

(declare-fun tp!524284 () Bool)

(assert (=> b!1851390 (= e!1183196 (and tp!524291 (inv!26885 (_2!11292 (_1!11293 (h!25898 mapValue!8778)))) e!1183197 tp_is_empty!8497 setRes!11399 tp!524284))))

(declare-fun condSetEmpty!11398 () Bool)

(assert (=> b!1851390 (= condSetEmpty!11398 (= (_2!11293 (h!25898 mapValue!8778)) ((as const (Array Context!1890 Bool)) false)))))

(assert (= (and mapNonEmpty!8777 condMapEmpty!8778) mapIsEmpty!8778))

(assert (= (and mapNonEmpty!8777 (not condMapEmpty!8778)) mapNonEmpty!8778))

(assert (= b!1851390 b!1851385))

(assert (= (and b!1851390 condSetEmpty!11398) setIsEmpty!11399))

(assert (= (and b!1851390 (not condSetEmpty!11398)) setNonEmpty!11398))

(assert (= setNonEmpty!11398 b!1851386))

(assert (= (and mapNonEmpty!8778 ((_ is Cons!20497) mapValue!8778)) b!1851390))

(assert (= b!1851388 b!1851387))

(assert (= (and b!1851388 condSetEmpty!11399) setIsEmpty!11398))

(assert (= (and b!1851388 (not condSetEmpty!11399)) setNonEmpty!11399))

(assert (= setNonEmpty!11399 b!1851389))

(assert (= (and mapNonEmpty!8777 ((_ is Cons!20497) mapDefault!8778)) b!1851388))

(declare-fun m!2278019 () Bool)

(assert (=> setNonEmpty!11399 m!2278019))

(declare-fun m!2278021 () Bool)

(assert (=> b!1851390 m!2278021))

(declare-fun m!2278023 () Bool)

(assert (=> b!1851388 m!2278023))

(declare-fun m!2278025 () Bool)

(assert (=> setNonEmpty!11398 m!2278025))

(declare-fun m!2278027 () Bool)

(assert (=> mapNonEmpty!8778 m!2278027))

(declare-fun b!1851394 () Bool)

(declare-fun e!1183198 () Bool)

(declare-fun tp!524298 () Bool)

(declare-fun tp!524296 () Bool)

(assert (=> b!1851394 (= e!1183198 (and tp!524298 tp!524296))))

(declare-fun b!1851393 () Bool)

(declare-fun tp!524299 () Bool)

(assert (=> b!1851393 (= e!1183198 tp!524299)))

(declare-fun b!1851392 () Bool)

(declare-fun tp!524295 () Bool)

(declare-fun tp!524297 () Bool)

(assert (=> b!1851392 (= e!1183198 (and tp!524295 tp!524297))))

(declare-fun b!1851391 () Bool)

(assert (=> b!1851391 (= e!1183198 tp_is_empty!8497)))

(assert (=> b!1851074 (= tp!524080 e!1183198)))

(assert (= (and b!1851074 ((_ is ElementMatch!5035) (regOne!10582 (regex!3672 (h!25901 rs!164))))) b!1851391))

(assert (= (and b!1851074 ((_ is Concat!8823) (regOne!10582 (regex!3672 (h!25901 rs!164))))) b!1851392))

(assert (= (and b!1851074 ((_ is Star!5035) (regOne!10582 (regex!3672 (h!25901 rs!164))))) b!1851393))

(assert (= (and b!1851074 ((_ is Union!5035) (regOne!10582 (regex!3672 (h!25901 rs!164))))) b!1851394))

(declare-fun b!1851398 () Bool)

(declare-fun e!1183199 () Bool)

(declare-fun tp!524303 () Bool)

(declare-fun tp!524301 () Bool)

(assert (=> b!1851398 (= e!1183199 (and tp!524303 tp!524301))))

(declare-fun b!1851397 () Bool)

(declare-fun tp!524304 () Bool)

(assert (=> b!1851397 (= e!1183199 tp!524304)))

(declare-fun b!1851396 () Bool)

(declare-fun tp!524300 () Bool)

(declare-fun tp!524302 () Bool)

(assert (=> b!1851396 (= e!1183199 (and tp!524300 tp!524302))))

(declare-fun b!1851395 () Bool)

(assert (=> b!1851395 (= e!1183199 tp_is_empty!8497)))

(assert (=> b!1851074 (= tp!524082 e!1183199)))

(assert (= (and b!1851074 ((_ is ElementMatch!5035) (regTwo!10582 (regex!3672 (h!25901 rs!164))))) b!1851395))

(assert (= (and b!1851074 ((_ is Concat!8823) (regTwo!10582 (regex!3672 (h!25901 rs!164))))) b!1851396))

(assert (= (and b!1851074 ((_ is Star!5035) (regTwo!10582 (regex!3672 (h!25901 rs!164))))) b!1851397))

(assert (= (and b!1851074 ((_ is Union!5035) (regTwo!10582 (regex!3672 (h!25901 rs!164))))) b!1851398))

(declare-fun b!1851399 () Bool)

(declare-fun e!1183200 () Bool)

(declare-fun tp!524305 () Bool)

(declare-fun tp!524306 () Bool)

(assert (=> b!1851399 (= e!1183200 (and tp!524305 tp!524306))))

(assert (=> b!1851094 (= tp!524108 e!1183200)))

(assert (= (and b!1851094 ((_ is Cons!20496) (exprs!1445 setElem!11374))) b!1851399))

(declare-fun b!1851400 () Bool)

(declare-fun e!1183201 () Bool)

(declare-fun tp!524307 () Bool)

(declare-fun tp!524308 () Bool)

(assert (=> b!1851400 (= e!1183201 (and tp!524307 tp!524308))))

(assert (=> b!1851105 (= tp!524123 e!1183201)))

(assert (= (and b!1851105 ((_ is Cons!20496) (exprs!1445 (_1!11294 (_1!11295 (h!25902 mapValue!8771)))))) b!1851400))

(declare-fun b!1851403 () Bool)

(declare-fun b_free!51799 () Bool)

(declare-fun b_next!52503 () Bool)

(assert (=> b!1851403 (= b_free!51799 (not b_next!52503))))

(declare-fun tp!524311 () Bool)

(declare-fun b_and!144033 () Bool)

(assert (=> b!1851403 (= tp!524311 b_and!144033)))

(declare-fun b_free!51801 () Bool)

(declare-fun b_next!52505 () Bool)

(assert (=> b!1851403 (= b_free!51801 (not b_next!52505))))

(declare-fun tb!112895 () Bool)

(declare-fun t!172377 () Bool)

(assert (=> (and b!1851403 (= (toChars!5102 (transformation!3672 (h!25901 (t!172359 (t!172359 rs!164))))) (toChars!5102 (transformation!3672 (rule!5866 t!6207)))) t!172377) tb!112895))

(declare-fun result!136114 () Bool)

(assert (= result!136114 result!136088))

(assert (=> b!1851002 t!172377))

(declare-fun tp!524312 () Bool)

(declare-fun b_and!144035 () Bool)

(assert (=> b!1851403 (= tp!524312 (and (=> t!172377 result!136114) b_and!144035))))

(declare-fun e!1183204 () Bool)

(assert (=> b!1851403 (= e!1183204 (and tp!524311 tp!524312))))

(declare-fun tp!524310 () Bool)

(declare-fun b!1851402 () Bool)

(declare-fun e!1183202 () Bool)

(assert (=> b!1851402 (= e!1183202 (and tp!524310 (inv!26878 (tag!4086 (h!25901 (t!172359 (t!172359 rs!164))))) (inv!26879 (transformation!3672 (h!25901 (t!172359 (t!172359 rs!164))))) e!1183204))))

(declare-fun b!1851401 () Bool)

(declare-fun e!1183203 () Bool)

(declare-fun tp!524309 () Bool)

(assert (=> b!1851401 (= e!1183203 (and e!1183202 tp!524309))))

(assert (=> b!1851151 (= tp!524182 e!1183203)))

(assert (= b!1851402 b!1851403))

(assert (= b!1851401 b!1851402))

(assert (= (and b!1851151 ((_ is Cons!20500) (t!172359 (t!172359 rs!164)))) b!1851401))

(declare-fun m!2278029 () Bool)

(assert (=> b!1851402 m!2278029))

(declare-fun m!2278031 () Bool)

(assert (=> b!1851402 m!2278031))

(declare-fun b!1851404 () Bool)

(declare-fun e!1183208 () Bool)

(declare-fun tp!524316 () Bool)

(assert (=> b!1851404 (= e!1183208 tp!524316)))

(declare-fun tp!524314 () Bool)

(declare-fun b!1851405 () Bool)

(declare-fun setRes!11400 () Bool)

(declare-fun e!1183206 () Bool)

(assert (=> b!1851405 (= e!1183206 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 (t!172360 mapDefault!8770))))) e!1183208 tp_is_empty!8497 setRes!11400 tp!524314))))

(declare-fun condSetEmpty!11400 () Bool)

(assert (=> b!1851405 (= condSetEmpty!11400 (= (_2!11295 (h!25902 (t!172360 mapDefault!8770))) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851406 () Bool)

(declare-fun e!1183207 () Bool)

(declare-fun tp!524313 () Bool)

(assert (=> b!1851406 (= e!1183207 tp!524313)))

(declare-fun setNonEmpty!11400 () Bool)

(declare-fun tp!524315 () Bool)

(declare-fun setElem!11400 () Context!1890)

(assert (=> setNonEmpty!11400 (= setRes!11400 (and tp!524315 (inv!26885 setElem!11400) e!1183207))))

(declare-fun setRest!11400 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11400 (= (_2!11295 (h!25902 (t!172360 mapDefault!8770))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11400 true) setRest!11400))))

(declare-fun setIsEmpty!11400 () Bool)

(assert (=> setIsEmpty!11400 setRes!11400))

(assert (=> b!1851109 (= tp!524125 e!1183206)))

(assert (= b!1851405 b!1851404))

(assert (= (and b!1851405 condSetEmpty!11400) setIsEmpty!11400))

(assert (= (and b!1851405 (not condSetEmpty!11400)) setNonEmpty!11400))

(assert (= setNonEmpty!11400 b!1851406))

(assert (= (and b!1851109 ((_ is Cons!20501) (t!172360 mapDefault!8770))) b!1851405))

(declare-fun m!2278033 () Bool)

(assert (=> b!1851405 m!2278033))

(declare-fun m!2278035 () Bool)

(assert (=> setNonEmpty!11400 m!2278035))

(declare-fun b!1851407 () Bool)

(declare-fun e!1183209 () Bool)

(declare-fun tp!524317 () Bool)

(declare-fun tp!524318 () Bool)

(assert (=> b!1851407 (= e!1183209 (and tp!524317 tp!524318))))

(assert (=> b!1851131 (= tp!524161 e!1183209)))

(assert (= (and b!1851131 ((_ is Cons!20496) (exprs!1445 setElem!11385))) b!1851407))

(declare-fun b!1851408 () Bool)

(declare-fun e!1183210 () Bool)

(declare-fun tp!524319 () Bool)

(declare-fun tp!524320 () Bool)

(assert (=> b!1851408 (= e!1183210 (and tp!524319 tp!524320))))

(assert (=> b!1851093 (= tp!524106 e!1183210)))

(assert (= (and b!1851093 ((_ is Cons!20496) (exprs!1445 (_1!11294 (_1!11295 (h!25902 mapValue!8774)))))) b!1851408))

(declare-fun b!1851409 () Bool)

(declare-fun e!1183211 () Bool)

(declare-fun tp!524321 () Bool)

(declare-fun tp!524322 () Bool)

(assert (=> b!1851409 (= e!1183211 (and tp!524321 tp!524322))))

(assert (=> b!1851156 (= tp!524188 e!1183211)))

(assert (= (and b!1851156 ((_ is Cons!20496) (exprs!1445 (_2!11292 (_1!11293 (h!25898 mapDefault!8771)))))) b!1851409))

(declare-fun condSetEmpty!11401 () Bool)

(assert (=> setNonEmpty!11387 (= condSetEmpty!11401 (= setRest!11387 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11401 () Bool)

(assert (=> setNonEmpty!11387 (= tp!524190 setRes!11401)))

(declare-fun setIsEmpty!11401 () Bool)

(assert (=> setIsEmpty!11401 setRes!11401))

(declare-fun tp!524324 () Bool)

(declare-fun setElem!11401 () Context!1890)

(declare-fun e!1183212 () Bool)

(declare-fun setNonEmpty!11401 () Bool)

(assert (=> setNonEmpty!11401 (= setRes!11401 (and tp!524324 (inv!26885 setElem!11401) e!1183212))))

(declare-fun setRest!11401 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11401 (= setRest!11387 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11401 true) setRest!11401))))

(declare-fun b!1851410 () Bool)

(declare-fun tp!524323 () Bool)

(assert (=> b!1851410 (= e!1183212 tp!524323)))

(assert (= (and setNonEmpty!11387 condSetEmpty!11401) setIsEmpty!11401))

(assert (= (and setNonEmpty!11387 (not condSetEmpty!11401)) setNonEmpty!11401))

(assert (= setNonEmpty!11401 b!1851410))

(declare-fun m!2278037 () Bool)

(assert (=> setNonEmpty!11401 m!2278037))

(declare-fun b!1851411 () Bool)

(declare-fun e!1183213 () Bool)

(declare-fun tp!524325 () Bool)

(declare-fun tp!524326 () Bool)

(assert (=> b!1851411 (= e!1183213 (and tp!524325 tp!524326))))

(assert (=> b!1851091 (= tp!524104 e!1183213)))

(assert (= (and b!1851091 ((_ is Cons!20496) (exprs!1445 setElem!11375))) b!1851411))

(declare-fun b!1851412 () Bool)

(declare-fun e!1183214 () Bool)

(declare-fun tp!524327 () Bool)

(declare-fun tp!524328 () Bool)

(assert (=> b!1851412 (= e!1183214 (and tp!524327 tp!524328))))

(assert (=> b!1851159 (= tp!524191 e!1183214)))

(assert (= (and b!1851159 ((_ is Cons!20496) (exprs!1445 setElem!11388))) b!1851412))

(declare-fun condSetEmpty!11402 () Bool)

(assert (=> setNonEmpty!11389 (= condSetEmpty!11402 (= setRest!11389 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11402 () Bool)

(assert (=> setNonEmpty!11389 (= tp!524197 setRes!11402)))

(declare-fun setIsEmpty!11402 () Bool)

(assert (=> setIsEmpty!11402 setRes!11402))

(declare-fun e!1183215 () Bool)

(declare-fun setElem!11402 () Context!1890)

(declare-fun tp!524330 () Bool)

(declare-fun setNonEmpty!11402 () Bool)

(assert (=> setNonEmpty!11402 (= setRes!11402 (and tp!524330 (inv!26885 setElem!11402) e!1183215))))

(declare-fun setRest!11402 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11402 (= setRest!11389 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11402 true) setRest!11402))))

(declare-fun b!1851413 () Bool)

(declare-fun tp!524329 () Bool)

(assert (=> b!1851413 (= e!1183215 tp!524329)))

(assert (= (and setNonEmpty!11389 condSetEmpty!11402) setIsEmpty!11402))

(assert (= (and setNonEmpty!11389 (not condSetEmpty!11402)) setNonEmpty!11402))

(assert (= setNonEmpty!11402 b!1851413))

(declare-fun m!2278039 () Bool)

(assert (=> setNonEmpty!11402 m!2278039))

(declare-fun b!1851414 () Bool)

(declare-fun e!1183216 () Bool)

(declare-fun tp!524331 () Bool)

(declare-fun tp!524332 () Bool)

(assert (=> b!1851414 (= e!1183216 (and tp!524331 tp!524332))))

(assert (=> b!1851157 (= tp!524194 e!1183216)))

(assert (= (and b!1851157 ((_ is Cons!20496) (exprs!1445 (_1!11294 (_1!11295 (h!25902 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))))))) b!1851414))

(declare-fun b!1851415 () Bool)

(declare-fun e!1183219 () Bool)

(declare-fun tp!524336 () Bool)

(assert (=> b!1851415 (= e!1183219 tp!524336)))

(declare-fun e!1183217 () Bool)

(declare-fun b!1851416 () Bool)

(declare-fun tp!524334 () Bool)

(declare-fun setRes!11403 () Bool)

(assert (=> b!1851416 (= e!1183217 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 (t!172360 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))))))) e!1183219 tp_is_empty!8497 setRes!11403 tp!524334))))

(declare-fun condSetEmpty!11403 () Bool)

(assert (=> b!1851416 (= condSetEmpty!11403 (= (_2!11295 (h!25902 (t!172360 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))))) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851417 () Bool)

(declare-fun e!1183218 () Bool)

(declare-fun tp!524333 () Bool)

(assert (=> b!1851417 (= e!1183218 tp!524333)))

(declare-fun setNonEmpty!11403 () Bool)

(declare-fun tp!524335 () Bool)

(declare-fun setElem!11403 () Context!1890)

(assert (=> setNonEmpty!11403 (= setRes!11403 (and tp!524335 (inv!26885 setElem!11403) e!1183218))))

(declare-fun setRest!11403 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11403 (= (_2!11295 (h!25902 (t!172360 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11403 true) setRest!11403))))

(declare-fun setIsEmpty!11403 () Bool)

(assert (=> setIsEmpty!11403 setRes!11403))

(assert (=> b!1851161 (= tp!524196 e!1183217)))

(assert (= b!1851416 b!1851415))

(assert (= (and b!1851416 condSetEmpty!11403) setIsEmpty!11403))

(assert (= (and b!1851416 (not condSetEmpty!11403)) setNonEmpty!11403))

(assert (= setNonEmpty!11403 b!1851417))

(assert (= (and b!1851161 ((_ is Cons!20501) (t!172360 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))))) b!1851416))

(declare-fun m!2278041 () Bool)

(assert (=> b!1851416 m!2278041))

(declare-fun m!2278043 () Bool)

(assert (=> setNonEmpty!11403 m!2278043))

(declare-fun b!1851418 () Bool)

(declare-fun e!1183220 () Bool)

(declare-fun tp!524337 () Bool)

(declare-fun tp!524338 () Bool)

(assert (=> b!1851418 (= e!1183220 (and tp!524337 tp!524338))))

(assert (=> b!1851138 (= tp!524166 e!1183220)))

(assert (= (and b!1851138 ((_ is Cons!20496) (exprs!1445 (_2!11292 (_1!11293 (h!25898 mapValue!8770)))))) b!1851418))

(declare-fun condSetEmpty!11404 () Bool)

(assert (=> setNonEmpty!11386 (= condSetEmpty!11404 (= setRest!11386 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11404 () Bool)

(assert (=> setNonEmpty!11386 (= tp!524168 setRes!11404)))

(declare-fun setIsEmpty!11404 () Bool)

(assert (=> setIsEmpty!11404 setRes!11404))

(declare-fun setNonEmpty!11404 () Bool)

(declare-fun setElem!11404 () Context!1890)

(declare-fun e!1183221 () Bool)

(declare-fun tp!524340 () Bool)

(assert (=> setNonEmpty!11404 (= setRes!11404 (and tp!524340 (inv!26885 setElem!11404) e!1183221))))

(declare-fun setRest!11404 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11404 (= setRest!11386 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11404 true) setRest!11404))))

(declare-fun b!1851419 () Bool)

(declare-fun tp!524339 () Bool)

(assert (=> b!1851419 (= e!1183221 tp!524339)))

(assert (= (and setNonEmpty!11386 condSetEmpty!11404) setIsEmpty!11404))

(assert (= (and setNonEmpty!11386 (not condSetEmpty!11404)) setNonEmpty!11404))

(assert (= setNonEmpty!11404 b!1851419))

(declare-fun m!2278045 () Bool)

(assert (=> setNonEmpty!11404 m!2278045))

(declare-fun b!1851420 () Bool)

(declare-fun e!1183222 () Bool)

(declare-fun tp!524341 () Bool)

(declare-fun tp!524342 () Bool)

(assert (=> b!1851420 (= e!1183222 (and tp!524341 tp!524342))))

(assert (=> b!1851134 (= tp!524156 e!1183222)))

(assert (= (and b!1851134 ((_ is Cons!20496) (exprs!1445 setElem!11384))) b!1851420))

(declare-fun b!1851424 () Bool)

(declare-fun e!1183223 () Bool)

(declare-fun tp!524346 () Bool)

(declare-fun tp!524344 () Bool)

(assert (=> b!1851424 (= e!1183223 (and tp!524346 tp!524344))))

(declare-fun b!1851423 () Bool)

(declare-fun tp!524347 () Bool)

(assert (=> b!1851423 (= e!1183223 tp!524347)))

(declare-fun b!1851422 () Bool)

(declare-fun tp!524343 () Bool)

(declare-fun tp!524345 () Bool)

(assert (=> b!1851422 (= e!1183223 (and tp!524343 tp!524345))))

(declare-fun b!1851421 () Bool)

(assert (=> b!1851421 (= e!1183223 tp_is_empty!8497)))

(assert (=> b!1851142 (= tp!524172 e!1183223)))

(assert (= (and b!1851142 ((_ is ElementMatch!5035) (regOne!10583 (regex!3672 (rule!5866 t!6207))))) b!1851421))

(assert (= (and b!1851142 ((_ is Concat!8823) (regOne!10583 (regex!3672 (rule!5866 t!6207))))) b!1851422))

(assert (= (and b!1851142 ((_ is Star!5035) (regOne!10583 (regex!3672 (rule!5866 t!6207))))) b!1851423))

(assert (= (and b!1851142 ((_ is Union!5035) (regOne!10583 (regex!3672 (rule!5866 t!6207))))) b!1851424))

(declare-fun b!1851428 () Bool)

(declare-fun e!1183224 () Bool)

(declare-fun tp!524351 () Bool)

(declare-fun tp!524349 () Bool)

(assert (=> b!1851428 (= e!1183224 (and tp!524351 tp!524349))))

(declare-fun b!1851427 () Bool)

(declare-fun tp!524352 () Bool)

(assert (=> b!1851427 (= e!1183224 tp!524352)))

(declare-fun b!1851426 () Bool)

(declare-fun tp!524348 () Bool)

(declare-fun tp!524350 () Bool)

(assert (=> b!1851426 (= e!1183224 (and tp!524348 tp!524350))))

(declare-fun b!1851425 () Bool)

(assert (=> b!1851425 (= e!1183224 tp_is_empty!8497)))

(assert (=> b!1851142 (= tp!524170 e!1183224)))

(assert (= (and b!1851142 ((_ is ElementMatch!5035) (regTwo!10583 (regex!3672 (rule!5866 t!6207))))) b!1851425))

(assert (= (and b!1851142 ((_ is Concat!8823) (regTwo!10583 (regex!3672 (rule!5866 t!6207))))) b!1851426))

(assert (= (and b!1851142 ((_ is Star!5035) (regTwo!10583 (regex!3672 (rule!5866 t!6207))))) b!1851427))

(assert (= (and b!1851142 ((_ is Union!5035) (regTwo!10583 (regex!3672 (rule!5866 t!6207))))) b!1851428))

(declare-fun b!1851429 () Bool)

(declare-fun e!1183225 () Bool)

(declare-fun tp!524353 () Bool)

(declare-fun tp!524354 () Bool)

(assert (=> b!1851429 (= e!1183225 (and tp!524353 tp!524354))))

(assert (=> b!1851059 (= tp!524062 e!1183225)))

(assert (= (and b!1851059 ((_ is Cons!20496) (exprs!1445 (_2!11292 (_1!11293 (h!25898 (zeroValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))))))) b!1851429))

(declare-fun b!1851430 () Bool)

(declare-fun e!1183226 () Bool)

(declare-fun tp!524355 () Bool)

(declare-fun tp!524356 () Bool)

(assert (=> b!1851430 (= e!1183226 (and tp!524355 tp!524356))))

(assert (=> b!1851062 (= tp!524067 e!1183226)))

(assert (= (and b!1851062 ((_ is Cons!20496) (exprs!1445 (_2!11292 (_1!11293 (h!25898 (minValue!2138 (v!25994 (underlying!3975 (v!25995 (underlying!3976 (cache!2206 cacheDown!404)))))))))))) b!1851430))

(declare-fun condSetEmpty!11405 () Bool)

(assert (=> setNonEmpty!11375 (= condSetEmpty!11405 (= setRest!11374 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11405 () Bool)

(assert (=> setNonEmpty!11375 (= tp!524109 setRes!11405)))

(declare-fun setIsEmpty!11405 () Bool)

(assert (=> setIsEmpty!11405 setRes!11405))

(declare-fun tp!524358 () Bool)

(declare-fun setNonEmpty!11405 () Bool)

(declare-fun setElem!11405 () Context!1890)

(declare-fun e!1183227 () Bool)

(assert (=> setNonEmpty!11405 (= setRes!11405 (and tp!524358 (inv!26885 setElem!11405) e!1183227))))

(declare-fun setRest!11405 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11405 (= setRest!11374 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11405 true) setRest!11405))))

(declare-fun b!1851431 () Bool)

(declare-fun tp!524357 () Bool)

(assert (=> b!1851431 (= e!1183227 tp!524357)))

(assert (= (and setNonEmpty!11375 condSetEmpty!11405) setIsEmpty!11405))

(assert (= (and setNonEmpty!11375 (not condSetEmpty!11405)) setNonEmpty!11405))

(assert (= setNonEmpty!11405 b!1851431))

(declare-fun m!2278047 () Bool)

(assert (=> setNonEmpty!11405 m!2278047))

(declare-fun b!1851435 () Bool)

(declare-fun e!1183228 () Bool)

(declare-fun tp!524362 () Bool)

(declare-fun tp!524360 () Bool)

(assert (=> b!1851435 (= e!1183228 (and tp!524362 tp!524360))))

(declare-fun b!1851434 () Bool)

(declare-fun tp!524363 () Bool)

(assert (=> b!1851434 (= e!1183228 tp!524363)))

(declare-fun b!1851433 () Bool)

(declare-fun tp!524359 () Bool)

(declare-fun tp!524361 () Bool)

(assert (=> b!1851433 (= e!1183228 (and tp!524359 tp!524361))))

(declare-fun b!1851432 () Bool)

(assert (=> b!1851432 (= e!1183228 tp_is_empty!8497)))

(assert (=> b!1851140 (= tp!524169 e!1183228)))

(assert (= (and b!1851140 ((_ is ElementMatch!5035) (regOne!10582 (regex!3672 (rule!5866 t!6207))))) b!1851432))

(assert (= (and b!1851140 ((_ is Concat!8823) (regOne!10582 (regex!3672 (rule!5866 t!6207))))) b!1851433))

(assert (= (and b!1851140 ((_ is Star!5035) (regOne!10582 (regex!3672 (rule!5866 t!6207))))) b!1851434))

(assert (= (and b!1851140 ((_ is Union!5035) (regOne!10582 (regex!3672 (rule!5866 t!6207))))) b!1851435))

(declare-fun b!1851439 () Bool)

(declare-fun e!1183229 () Bool)

(declare-fun tp!524367 () Bool)

(declare-fun tp!524365 () Bool)

(assert (=> b!1851439 (= e!1183229 (and tp!524367 tp!524365))))

(declare-fun b!1851438 () Bool)

(declare-fun tp!524368 () Bool)

(assert (=> b!1851438 (= e!1183229 tp!524368)))

(declare-fun b!1851437 () Bool)

(declare-fun tp!524364 () Bool)

(declare-fun tp!524366 () Bool)

(assert (=> b!1851437 (= e!1183229 (and tp!524364 tp!524366))))

(declare-fun b!1851436 () Bool)

(assert (=> b!1851436 (= e!1183229 tp_is_empty!8497)))

(assert (=> b!1851140 (= tp!524171 e!1183229)))

(assert (= (and b!1851140 ((_ is ElementMatch!5035) (regTwo!10582 (regex!3672 (rule!5866 t!6207))))) b!1851436))

(assert (= (and b!1851140 ((_ is Concat!8823) (regTwo!10582 (regex!3672 (rule!5866 t!6207))))) b!1851437))

(assert (= (and b!1851140 ((_ is Star!5035) (regTwo!10582 (regex!3672 (rule!5866 t!6207))))) b!1851438))

(assert (= (and b!1851140 ((_ is Union!5035) (regTwo!10582 (regex!3672 (rule!5866 t!6207))))) b!1851439))

(declare-fun condSetEmpty!11406 () Bool)

(assert (=> setNonEmpty!11368 (= condSetEmpty!11406 (= setRest!11368 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11406 () Bool)

(assert (=> setNonEmpty!11368 (= tp!524064 setRes!11406)))

(declare-fun setIsEmpty!11406 () Bool)

(assert (=> setIsEmpty!11406 setRes!11406))

(declare-fun setNonEmpty!11406 () Bool)

(declare-fun setElem!11406 () Context!1890)

(declare-fun tp!524370 () Bool)

(declare-fun e!1183230 () Bool)

(assert (=> setNonEmpty!11406 (= setRes!11406 (and tp!524370 (inv!26885 setElem!11406) e!1183230))))

(declare-fun setRest!11406 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11406 (= setRest!11368 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11406 true) setRest!11406))))

(declare-fun b!1851440 () Bool)

(declare-fun tp!524369 () Bool)

(assert (=> b!1851440 (= e!1183230 tp!524369)))

(assert (= (and setNonEmpty!11368 condSetEmpty!11406) setIsEmpty!11406))

(assert (= (and setNonEmpty!11368 (not condSetEmpty!11406)) setNonEmpty!11406))

(assert (= setNonEmpty!11406 b!1851440))

(declare-fun m!2278049 () Bool)

(assert (=> setNonEmpty!11406 m!2278049))

(declare-fun condSetEmpty!11407 () Bool)

(assert (=> setNonEmpty!11378 (= condSetEmpty!11407 (= setRest!11378 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11407 () Bool)

(assert (=> setNonEmpty!11378 (= tp!524122 setRes!11407)))

(declare-fun setIsEmpty!11407 () Bool)

(assert (=> setIsEmpty!11407 setRes!11407))

(declare-fun tp!524372 () Bool)

(declare-fun setNonEmpty!11407 () Bool)

(declare-fun setElem!11407 () Context!1890)

(declare-fun e!1183231 () Bool)

(assert (=> setNonEmpty!11407 (= setRes!11407 (and tp!524372 (inv!26885 setElem!11407) e!1183231))))

(declare-fun setRest!11407 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11407 (= setRest!11378 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11407 true) setRest!11407))))

(declare-fun b!1851441 () Bool)

(declare-fun tp!524371 () Bool)

(assert (=> b!1851441 (= e!1183231 tp!524371)))

(assert (= (and setNonEmpty!11378 condSetEmpty!11407) setIsEmpty!11407))

(assert (= (and setNonEmpty!11378 (not condSetEmpty!11407)) setNonEmpty!11407))

(assert (= setNonEmpty!11407 b!1851441))

(declare-fun m!2278051 () Bool)

(assert (=> setNonEmpty!11407 m!2278051))

(declare-fun condSetEmpty!11408 () Bool)

(assert (=> setNonEmpty!11369 (= condSetEmpty!11408 (= setRest!11369 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11408 () Bool)

(assert (=> setNonEmpty!11369 (= tp!524069 setRes!11408)))

(declare-fun setIsEmpty!11408 () Bool)

(assert (=> setIsEmpty!11408 setRes!11408))

(declare-fun e!1183232 () Bool)

(declare-fun tp!524374 () Bool)

(declare-fun setNonEmpty!11408 () Bool)

(declare-fun setElem!11408 () Context!1890)

(assert (=> setNonEmpty!11408 (= setRes!11408 (and tp!524374 (inv!26885 setElem!11408) e!1183232))))

(declare-fun setRest!11408 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11408 (= setRest!11369 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11408 true) setRest!11408))))

(declare-fun b!1851442 () Bool)

(declare-fun tp!524373 () Bool)

(assert (=> b!1851442 (= e!1183232 tp!524373)))

(assert (= (and setNonEmpty!11369 condSetEmpty!11408) setIsEmpty!11408))

(assert (= (and setNonEmpty!11369 (not condSetEmpty!11408)) setNonEmpty!11408))

(assert (= setNonEmpty!11408 b!1851442))

(declare-fun m!2278053 () Bool)

(assert (=> setNonEmpty!11408 m!2278053))

(declare-fun condSetEmpty!11409 () Bool)

(assert (=> setNonEmpty!11385 (= condSetEmpty!11409 (= setRest!11384 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11409 () Bool)

(assert (=> setNonEmpty!11385 (= tp!524162 setRes!11409)))

(declare-fun setIsEmpty!11409 () Bool)

(assert (=> setIsEmpty!11409 setRes!11409))

(declare-fun setElem!11409 () Context!1890)

(declare-fun tp!524376 () Bool)

(declare-fun setNonEmpty!11409 () Bool)

(declare-fun e!1183233 () Bool)

(assert (=> setNonEmpty!11409 (= setRes!11409 (and tp!524376 (inv!26885 setElem!11409) e!1183233))))

(declare-fun setRest!11409 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11409 (= setRest!11384 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11409 true) setRest!11409))))

(declare-fun b!1851443 () Bool)

(declare-fun tp!524375 () Bool)

(assert (=> b!1851443 (= e!1183233 tp!524375)))

(assert (= (and setNonEmpty!11385 condSetEmpty!11409) setIsEmpty!11409))

(assert (= (and setNonEmpty!11385 (not condSetEmpty!11409)) setNonEmpty!11409))

(assert (= setNonEmpty!11409 b!1851443))

(declare-fun m!2278055 () Bool)

(assert (=> setNonEmpty!11409 m!2278055))

(declare-fun b!1851447 () Bool)

(declare-fun e!1183234 () Bool)

(declare-fun tp!524380 () Bool)

(declare-fun tp!524378 () Bool)

(assert (=> b!1851447 (= e!1183234 (and tp!524380 tp!524378))))

(declare-fun b!1851446 () Bool)

(declare-fun tp!524381 () Bool)

(assert (=> b!1851446 (= e!1183234 tp!524381)))

(declare-fun b!1851445 () Bool)

(declare-fun tp!524377 () Bool)

(declare-fun tp!524379 () Bool)

(assert (=> b!1851445 (= e!1183234 (and tp!524377 tp!524379))))

(declare-fun b!1851444 () Bool)

(assert (=> b!1851444 (= e!1183234 tp_is_empty!8497)))

(assert (=> b!1851075 (= tp!524084 e!1183234)))

(assert (= (and b!1851075 ((_ is ElementMatch!5035) (reg!5364 (regex!3672 (h!25901 rs!164))))) b!1851444))

(assert (= (and b!1851075 ((_ is Concat!8823) (reg!5364 (regex!3672 (h!25901 rs!164))))) b!1851445))

(assert (= (and b!1851075 ((_ is Star!5035) (reg!5364 (regex!3672 (h!25901 rs!164))))) b!1851446))

(assert (= (and b!1851075 ((_ is Union!5035) (reg!5364 (regex!3672 (h!25901 rs!164))))) b!1851447))

(declare-fun b!1851448 () Bool)

(declare-fun e!1183237 () Bool)

(declare-fun tp!524385 () Bool)

(assert (=> b!1851448 (= e!1183237 tp!524385)))

(declare-fun e!1183235 () Bool)

(declare-fun b!1851449 () Bool)

(declare-fun tp!524383 () Bool)

(declare-fun setRes!11410 () Bool)

(assert (=> b!1851449 (= e!1183235 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 (t!172360 mapValue!8774))))) e!1183237 tp_is_empty!8497 setRes!11410 tp!524383))))

(declare-fun condSetEmpty!11410 () Bool)

(assert (=> b!1851449 (= condSetEmpty!11410 (= (_2!11295 (h!25902 (t!172360 mapValue!8774))) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851450 () Bool)

(declare-fun e!1183236 () Bool)

(declare-fun tp!524382 () Bool)

(assert (=> b!1851450 (= e!1183236 tp!524382)))

(declare-fun setNonEmpty!11410 () Bool)

(declare-fun setElem!11410 () Context!1890)

(declare-fun tp!524384 () Bool)

(assert (=> setNonEmpty!11410 (= setRes!11410 (and tp!524384 (inv!26885 setElem!11410) e!1183236))))

(declare-fun setRest!11410 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11410 (= (_2!11295 (h!25902 (t!172360 mapValue!8774))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11410 true) setRest!11410))))

(declare-fun setIsEmpty!11410 () Bool)

(assert (=> setIsEmpty!11410 setRes!11410))

(assert (=> b!1851095 (= tp!524111 e!1183235)))

(assert (= b!1851449 b!1851448))

(assert (= (and b!1851449 condSetEmpty!11410) setIsEmpty!11410))

(assert (= (and b!1851449 (not condSetEmpty!11410)) setNonEmpty!11410))

(assert (= setNonEmpty!11410 b!1851450))

(assert (= (and b!1851095 ((_ is Cons!20501) (t!172360 mapValue!8774))) b!1851449))

(declare-fun m!2278057 () Bool)

(assert (=> b!1851449 m!2278057))

(declare-fun m!2278059 () Bool)

(assert (=> setNonEmpty!11410 m!2278059))

(declare-fun b!1851451 () Bool)

(declare-fun e!1183240 () Bool)

(declare-fun tp!524389 () Bool)

(assert (=> b!1851451 (= e!1183240 tp!524389)))

(declare-fun tp!524387 () Bool)

(declare-fun setRes!11411 () Bool)

(declare-fun e!1183238 () Bool)

(declare-fun b!1851452 () Bool)

(assert (=> b!1851452 (= e!1183238 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 (t!172360 mapValue!8771))))) e!1183240 tp_is_empty!8497 setRes!11411 tp!524387))))

(declare-fun condSetEmpty!11411 () Bool)

(assert (=> b!1851452 (= condSetEmpty!11411 (= (_2!11295 (h!25902 (t!172360 mapValue!8771))) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851453 () Bool)

(declare-fun e!1183239 () Bool)

(declare-fun tp!524386 () Bool)

(assert (=> b!1851453 (= e!1183239 tp!524386)))

(declare-fun setElem!11411 () Context!1890)

(declare-fun tp!524388 () Bool)

(declare-fun setNonEmpty!11411 () Bool)

(assert (=> setNonEmpty!11411 (= setRes!11411 (and tp!524388 (inv!26885 setElem!11411) e!1183239))))

(declare-fun setRest!11411 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11411 (= (_2!11295 (h!25902 (t!172360 mapValue!8771))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11411 true) setRest!11411))))

(declare-fun setIsEmpty!11411 () Bool)

(assert (=> setIsEmpty!11411 setRes!11411))

(assert (=> b!1851106 (= tp!524121 e!1183238)))

(assert (= b!1851452 b!1851451))

(assert (= (and b!1851452 condSetEmpty!11411) setIsEmpty!11411))

(assert (= (and b!1851452 (not condSetEmpty!11411)) setNonEmpty!11411))

(assert (= setNonEmpty!11411 b!1851453))

(assert (= (and b!1851106 ((_ is Cons!20501) (t!172360 mapValue!8771))) b!1851452))

(declare-fun m!2278061 () Bool)

(assert (=> b!1851452 m!2278061))

(declare-fun m!2278063 () Bool)

(assert (=> setNonEmpty!11411 m!2278063))

(declare-fun b!1851457 () Bool)

(declare-fun e!1183241 () Bool)

(declare-fun tp!524393 () Bool)

(declare-fun tp!524391 () Bool)

(assert (=> b!1851457 (= e!1183241 (and tp!524393 tp!524391))))

(declare-fun b!1851456 () Bool)

(declare-fun tp!524394 () Bool)

(assert (=> b!1851456 (= e!1183241 tp!524394)))

(declare-fun b!1851455 () Bool)

(declare-fun tp!524390 () Bool)

(declare-fun tp!524392 () Bool)

(assert (=> b!1851455 (= e!1183241 (and tp!524390 tp!524392))))

(declare-fun b!1851454 () Bool)

(assert (=> b!1851454 (= e!1183241 tp_is_empty!8497)))

(assert (=> b!1851152 (= tp!524183 e!1183241)))

(assert (= (and b!1851152 ((_ is ElementMatch!5035) (regex!3672 (h!25901 (t!172359 rs!164))))) b!1851454))

(assert (= (and b!1851152 ((_ is Concat!8823) (regex!3672 (h!25901 (t!172359 rs!164))))) b!1851455))

(assert (= (and b!1851152 ((_ is Star!5035) (regex!3672 (h!25901 (t!172359 rs!164))))) b!1851456))

(assert (= (and b!1851152 ((_ is Union!5035) (regex!3672 (h!25901 (t!172359 rs!164))))) b!1851457))

(declare-fun b!1851458 () Bool)

(declare-fun e!1183242 () Bool)

(declare-fun tp!524395 () Bool)

(declare-fun tp!524396 () Bool)

(assert (=> b!1851458 (= e!1183242 (and tp!524395 tp!524396))))

(assert (=> b!1851110 (= tp!524124 e!1183242)))

(assert (= (and b!1851110 ((_ is Cons!20496) (exprs!1445 setElem!11379))) b!1851458))

(declare-fun b!1851473 () Bool)

(declare-fun e!1183255 () Bool)

(declare-fun e!1183260 () Bool)

(assert (=> b!1851473 (= e!1183255 e!1183260)))

(declare-fun b!1851474 () Bool)

(declare-fun e!1183259 () Bool)

(declare-fun lt!715714 () MutLongMap!1881)

(assert (=> b!1851474 (= e!1183259 ((_ is LongMap!1881) lt!715714))))

(assert (=> b!1851474 (= lt!715714 (v!25995 (underlying!3976 (cache!2206 (_3!1413 (lexV1Mem!9 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) cacheUp!391 cacheDown!404))))))))

(declare-fun e!1183256 () Bool)

(assert (=> d!565796 (= true (and e!1183255 e!1183256))))

(declare-fun b!1851475 () Bool)

(declare-fun e!1183258 () Bool)

(assert (=> b!1851475 (= e!1183260 e!1183258)))

(declare-fun b!1851476 () Bool)

(declare-fun lt!715715 () MutLongMap!1882)

(assert (=> b!1851476 (= e!1183258 ((_ is LongMap!1882) lt!715715))))

(assert (=> b!1851476 (= lt!715715 (v!25997 (underlying!3978 (cache!2207 (_2!11297 (lexV1Mem!9 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) cacheUp!391 cacheDown!404))))))))

(declare-fun b!1851477 () Bool)

(declare-fun e!1183257 () Bool)

(assert (=> b!1851477 (= e!1183256 e!1183257)))

(declare-fun b!1851478 () Bool)

(assert (=> b!1851478 (= e!1183257 e!1183259)))

(assert (= b!1851475 b!1851476))

(assert (= (and b!1851473 ((_ is HashMap!1826) (cache!2207 (_2!11297 (lexV1Mem!9 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) cacheUp!391 cacheDown!404))))) b!1851475))

(assert (= d!565796 b!1851473))

(assert (= b!1851478 b!1851474))

(assert (= (and b!1851477 ((_ is HashMap!1825) (cache!2206 (_3!1413 (lexV1Mem!9 thiss!10908 rs!164 (print!1429 thiss!10908 (singletonSeq!1801 t!6207)) cacheUp!391 cacheDown!404))))) b!1851478))

(assert (= d!565796 b!1851477))

(declare-fun b!1851479 () Bool)

(declare-fun e!1183261 () Bool)

(declare-fun tp!524397 () Bool)

(assert (=> b!1851479 (= e!1183261 (and tp_is_empty!8497 tp!524397))))

(assert (=> b!1851115 (= tp!524130 e!1183261)))

(assert (= (and b!1851115 ((_ is Cons!20499) (t!172358 (originalCharacters!4480 t!6207)))) b!1851479))

(declare-fun condSetEmpty!11412 () Bool)

(assert (=> setNonEmpty!11384 (= condSetEmpty!11412 (= setRest!11385 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11412 () Bool)

(assert (=> setNonEmpty!11384 (= tp!524159 setRes!11412)))

(declare-fun setIsEmpty!11412 () Bool)

(assert (=> setIsEmpty!11412 setRes!11412))

(declare-fun e!1183262 () Bool)

(declare-fun setNonEmpty!11412 () Bool)

(declare-fun setElem!11412 () Context!1890)

(declare-fun tp!524399 () Bool)

(assert (=> setNonEmpty!11412 (= setRes!11412 (and tp!524399 (inv!26885 setElem!11412) e!1183262))))

(declare-fun setRest!11412 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11412 (= setRest!11385 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11412 true) setRest!11412))))

(declare-fun b!1851480 () Bool)

(declare-fun tp!524398 () Bool)

(assert (=> b!1851480 (= e!1183262 tp!524398)))

(assert (= (and setNonEmpty!11384 condSetEmpty!11412) setIsEmpty!11412))

(assert (= (and setNonEmpty!11384 (not condSetEmpty!11412)) setNonEmpty!11412))

(assert (= setNonEmpty!11412 b!1851480))

(declare-fun m!2278065 () Bool)

(assert (=> setNonEmpty!11412 m!2278065))

(declare-fun tp!524406 () Bool)

(declare-fun b!1851489 () Bool)

(declare-fun e!1183267 () Bool)

(declare-fun tp!524407 () Bool)

(assert (=> b!1851489 (= e!1183267 (and (inv!26883 (left!16461 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207))))) tp!524407 (inv!26883 (right!16791 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207))))) tp!524406))))

(declare-fun b!1851491 () Bool)

(declare-fun e!1183268 () Bool)

(declare-fun tp!524408 () Bool)

(assert (=> b!1851491 (= e!1183268 tp!524408)))

(declare-fun b!1851490 () Bool)

(declare-fun inv!26888 (IArray!13569) Bool)

(assert (=> b!1851490 (= e!1183267 (and (inv!26888 (xs!9658 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207))))) e!1183268))))

(assert (=> b!1851008 (= tp!524049 (and (inv!26883 (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207)))) e!1183267))))

(assert (= (and b!1851008 ((_ is Node!6782) (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207))))) b!1851489))

(assert (= b!1851490 b!1851491))

(assert (= (and b!1851008 ((_ is Leaf!9924) (c!302025 (dynLambda!10161 (toChars!5102 (transformation!3672 (rule!5866 t!6207))) (value!115233 t!6207))))) b!1851490))

(declare-fun m!2278067 () Bool)

(assert (=> b!1851489 m!2278067))

(declare-fun m!2278069 () Bool)

(assert (=> b!1851489 m!2278069))

(declare-fun m!2278071 () Bool)

(assert (=> b!1851490 m!2278071))

(assert (=> b!1851008 m!2277533))

(declare-fun b!1851492 () Bool)

(declare-fun e!1183269 () Bool)

(declare-fun tp!524409 () Bool)

(declare-fun tp!524410 () Bool)

(assert (=> b!1851492 (= e!1183269 (and tp!524409 tp!524410))))

(assert (=> b!1851108 (= tp!524127 e!1183269)))

(assert (= (and b!1851108 ((_ is Cons!20496) (exprs!1445 (_1!11294 (_1!11295 (h!25902 mapDefault!8770)))))) b!1851492))

(declare-fun b!1851493 () Bool)

(declare-fun e!1183272 () Bool)

(declare-fun tp!524414 () Bool)

(assert (=> b!1851493 (= e!1183272 tp!524414)))

(declare-fun tp!524412 () Bool)

(declare-fun e!1183270 () Bool)

(declare-fun b!1851494 () Bool)

(declare-fun setRes!11413 () Bool)

(assert (=> b!1851494 (= e!1183270 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 (t!172360 mapDefault!8774))))) e!1183272 tp_is_empty!8497 setRes!11413 tp!524412))))

(declare-fun condSetEmpty!11413 () Bool)

(assert (=> b!1851494 (= condSetEmpty!11413 (= (_2!11295 (h!25902 (t!172360 mapDefault!8774))) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851495 () Bool)

(declare-fun e!1183271 () Bool)

(declare-fun tp!524411 () Bool)

(assert (=> b!1851495 (= e!1183271 tp!524411)))

(declare-fun tp!524413 () Bool)

(declare-fun setElem!11413 () Context!1890)

(declare-fun setNonEmpty!11413 () Bool)

(assert (=> setNonEmpty!11413 (= setRes!11413 (and tp!524413 (inv!26885 setElem!11413) e!1183271))))

(declare-fun setRest!11413 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11413 (= (_2!11295 (h!25902 (t!172360 mapDefault!8774))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11413 true) setRest!11413))))

(declare-fun setIsEmpty!11413 () Bool)

(assert (=> setIsEmpty!11413 setRes!11413))

(assert (=> b!1851092 (= tp!524105 e!1183270)))

(assert (= b!1851494 b!1851493))

(assert (= (and b!1851494 condSetEmpty!11413) setIsEmpty!11413))

(assert (= (and b!1851494 (not condSetEmpty!11413)) setNonEmpty!11413))

(assert (= setNonEmpty!11413 b!1851495))

(assert (= (and b!1851092 ((_ is Cons!20501) (t!172360 mapDefault!8774))) b!1851494))

(declare-fun m!2278073 () Bool)

(assert (=> b!1851494 m!2278073))

(declare-fun m!2278075 () Bool)

(assert (=> setNonEmpty!11413 m!2278075))

(declare-fun b!1851496 () Bool)

(declare-fun e!1183273 () Bool)

(declare-fun tp!524415 () Bool)

(declare-fun tp!524416 () Bool)

(assert (=> b!1851496 (= e!1183273 (and tp!524415 tp!524416))))

(assert (=> b!1851130 (= tp!524163 e!1183273)))

(assert (= (and b!1851130 ((_ is Cons!20496) (exprs!1445 (_2!11292 (_1!11293 (h!25898 mapValue!8777)))))) b!1851496))

(declare-fun b!1851497 () Bool)

(declare-fun e!1183274 () Bool)

(declare-fun tp!524417 () Bool)

(declare-fun tp!524418 () Bool)

(assert (=> b!1851497 (= e!1183274 (and tp!524417 tp!524418))))

(assert (=> b!1851155 (= tp!524187 e!1183274)))

(assert (= (and b!1851155 ((_ is Cons!20496) (exprs!1445 setElem!11387))) b!1851497))

(declare-fun condSetEmpty!11414 () Bool)

(assert (=> setNonEmpty!11374 (= condSetEmpty!11414 (= setRest!11375 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11414 () Bool)

(assert (=> setNonEmpty!11374 (= tp!524103 setRes!11414)))

(declare-fun setIsEmpty!11414 () Bool)

(assert (=> setIsEmpty!11414 setRes!11414))

(declare-fun setElem!11414 () Context!1890)

(declare-fun e!1183275 () Bool)

(declare-fun setNonEmpty!11414 () Bool)

(declare-fun tp!524420 () Bool)

(assert (=> setNonEmpty!11414 (= setRes!11414 (and tp!524420 (inv!26885 setElem!11414) e!1183275))))

(declare-fun setRest!11414 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11414 (= setRest!11375 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11414 true) setRest!11414))))

(declare-fun b!1851498 () Bool)

(declare-fun tp!524419 () Bool)

(assert (=> b!1851498 (= e!1183275 tp!524419)))

(assert (= (and setNonEmpty!11374 condSetEmpty!11414) setIsEmpty!11414))

(assert (= (and setNonEmpty!11374 (not condSetEmpty!11414)) setNonEmpty!11414))

(assert (= setNonEmpty!11414 b!1851498))

(declare-fun m!2278077 () Bool)

(assert (=> setNonEmpty!11414 m!2278077))

(declare-fun condSetEmpty!11415 () Bool)

(assert (=> setNonEmpty!11388 (= condSetEmpty!11415 (= setRest!11388 ((as const (Array Context!1890 Bool)) false)))))

(declare-fun setRes!11415 () Bool)

(assert (=> setNonEmpty!11388 (= tp!524193 setRes!11415)))

(declare-fun setIsEmpty!11415 () Bool)

(assert (=> setIsEmpty!11415 setRes!11415))

(declare-fun e!1183276 () Bool)

(declare-fun setNonEmpty!11415 () Bool)

(declare-fun setElem!11415 () Context!1890)

(declare-fun tp!524422 () Bool)

(assert (=> setNonEmpty!11415 (= setRes!11415 (and tp!524422 (inv!26885 setElem!11415) e!1183276))))

(declare-fun setRest!11415 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11415 (= setRest!11388 ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11415 true) setRest!11415))))

(declare-fun b!1851499 () Bool)

(declare-fun tp!524421 () Bool)

(assert (=> b!1851499 (= e!1183276 tp!524421)))

(assert (= (and setNonEmpty!11388 condSetEmpty!11415) setIsEmpty!11415))

(assert (= (and setNonEmpty!11388 (not condSetEmpty!11415)) setNonEmpty!11415))

(assert (= setNonEmpty!11415 b!1851499))

(declare-fun m!2278079 () Bool)

(assert (=> setNonEmpty!11415 m!2278079))

(declare-fun b!1851503 () Bool)

(declare-fun e!1183277 () Bool)

(declare-fun tp!524426 () Bool)

(declare-fun tp!524424 () Bool)

(assert (=> b!1851503 (= e!1183277 (and tp!524426 tp!524424))))

(declare-fun b!1851502 () Bool)

(declare-fun tp!524427 () Bool)

(assert (=> b!1851502 (= e!1183277 tp!524427)))

(declare-fun b!1851501 () Bool)

(declare-fun tp!524423 () Bool)

(declare-fun tp!524425 () Bool)

(assert (=> b!1851501 (= e!1183277 (and tp!524423 tp!524425))))

(declare-fun b!1851500 () Bool)

(assert (=> b!1851500 (= e!1183277 tp_is_empty!8497)))

(assert (=> b!1851154 (= tp!524186 e!1183277)))

(assert (= (and b!1851154 ((_ is ElementMatch!5035) (_1!11292 (_1!11293 (h!25898 mapDefault!8771))))) b!1851500))

(assert (= (and b!1851154 ((_ is Concat!8823) (_1!11292 (_1!11293 (h!25898 mapDefault!8771))))) b!1851501))

(assert (= (and b!1851154 ((_ is Star!5035) (_1!11292 (_1!11293 (h!25898 mapDefault!8771))))) b!1851502))

(assert (= (and b!1851154 ((_ is Union!5035) (_1!11292 (_1!11293 (h!25898 mapDefault!8771))))) b!1851503))

(declare-fun e!1183280 () Bool)

(declare-fun tp!524428 () Bool)

(declare-fun e!1183279 () Bool)

(declare-fun tp!524431 () Bool)

(declare-fun setRes!11416 () Bool)

(declare-fun b!1851504 () Bool)

(assert (=> b!1851504 (= e!1183280 (and tp!524428 (inv!26885 (_2!11292 (_1!11293 (h!25898 (t!172356 mapDefault!8771))))) e!1183279 tp_is_empty!8497 setRes!11416 tp!524431))))

(declare-fun condSetEmpty!11416 () Bool)

(assert (=> b!1851504 (= condSetEmpty!11416 (= (_2!11293 (h!25898 (t!172356 mapDefault!8771))) ((as const (Array Context!1890 Bool)) false)))))

(assert (=> b!1851154 (= tp!524189 e!1183280)))

(declare-fun setElem!11416 () Context!1890)

(declare-fun e!1183278 () Bool)

(declare-fun setNonEmpty!11416 () Bool)

(declare-fun tp!524432 () Bool)

(assert (=> setNonEmpty!11416 (= setRes!11416 (and tp!524432 (inv!26885 setElem!11416) e!1183278))))

(declare-fun setRest!11416 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11416 (= (_2!11293 (h!25898 (t!172356 mapDefault!8771))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11416 true) setRest!11416))))

(declare-fun b!1851505 () Bool)

(declare-fun tp!524429 () Bool)

(assert (=> b!1851505 (= e!1183278 tp!524429)))

(declare-fun b!1851506 () Bool)

(declare-fun tp!524430 () Bool)

(assert (=> b!1851506 (= e!1183279 tp!524430)))

(declare-fun setIsEmpty!11416 () Bool)

(assert (=> setIsEmpty!11416 setRes!11416))

(assert (= b!1851504 b!1851506))

(assert (= (and b!1851504 condSetEmpty!11416) setIsEmpty!11416))

(assert (= (and b!1851504 (not condSetEmpty!11416)) setNonEmpty!11416))

(assert (= setNonEmpty!11416 b!1851505))

(assert (= (and b!1851154 ((_ is Cons!20497) (t!172356 mapDefault!8771))) b!1851504))

(declare-fun m!2278081 () Bool)

(assert (=> b!1851504 m!2278081))

(declare-fun m!2278083 () Bool)

(assert (=> setNonEmpty!11416 m!2278083))

(declare-fun mapNonEmpty!8779 () Bool)

(declare-fun mapRes!8779 () Bool)

(declare-fun tp!524440 () Bool)

(declare-fun e!1183285 () Bool)

(assert (=> mapNonEmpty!8779 (= mapRes!8779 (and tp!524440 e!1183285))))

(declare-fun mapKey!8779 () (_ BitVec 32))

(declare-fun mapValue!8779 () List!20573)

(declare-fun mapRest!8779 () (Array (_ BitVec 32) List!20573))

(assert (=> mapNonEmpty!8779 (= mapRest!8774 (store mapRest!8779 mapKey!8779 mapValue!8779))))

(declare-fun b!1851507 () Bool)

(declare-fun e!1183281 () Bool)

(declare-fun tp!524434 () Bool)

(assert (=> b!1851507 (= e!1183281 tp!524434)))

(declare-fun setNonEmpty!11417 () Bool)

(declare-fun tp!524433 () Bool)

(declare-fun setRes!11417 () Bool)

(declare-fun e!1183282 () Bool)

(declare-fun setElem!11417 () Context!1890)

(assert (=> setNonEmpty!11417 (= setRes!11417 (and tp!524433 (inv!26885 setElem!11417) e!1183282))))

(declare-fun mapDefault!8779 () List!20573)

(declare-fun setRest!11418 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11417 (= (_2!11295 (h!25902 mapDefault!8779)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11417 true) setRest!11418))))

(declare-fun mapIsEmpty!8779 () Bool)

(assert (=> mapIsEmpty!8779 mapRes!8779))

(declare-fun e!1183286 () Bool)

(declare-fun b!1851508 () Bool)

(declare-fun tp!524435 () Bool)

(declare-fun e!1183283 () Bool)

(assert (=> b!1851508 (= e!1183286 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 mapDefault!8779)))) e!1183283 tp_is_empty!8497 setRes!11417 tp!524435))))

(declare-fun condSetEmpty!11417 () Bool)

(assert (=> b!1851508 (= condSetEmpty!11417 (= (_2!11295 (h!25902 mapDefault!8779)) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851509 () Bool)

(declare-fun e!1183284 () Bool)

(declare-fun tp!524436 () Bool)

(assert (=> b!1851509 (= e!1183284 tp!524436)))

(declare-fun setIsEmpty!11418 () Bool)

(assert (=> setIsEmpty!11418 setRes!11417))

(declare-fun condMapEmpty!8779 () Bool)

(assert (=> mapNonEmpty!8774 (= condMapEmpty!8779 (= mapRest!8774 ((as const (Array (_ BitVec 32) List!20573)) mapDefault!8779)))))

(assert (=> mapNonEmpty!8774 (= tp!524110 (and e!1183286 mapRes!8779))))

(declare-fun setIsEmpty!11417 () Bool)

(declare-fun setRes!11418 () Bool)

(assert (=> setIsEmpty!11417 setRes!11418))

(declare-fun b!1851510 () Bool)

(declare-fun tp!524438 () Bool)

(assert (=> b!1851510 (= e!1183282 tp!524438)))

(declare-fun b!1851511 () Bool)

(declare-fun tp!524441 () Bool)

(assert (=> b!1851511 (= e!1183285 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 mapValue!8779)))) e!1183284 tp_is_empty!8497 setRes!11418 tp!524441))))

(declare-fun condSetEmpty!11418 () Bool)

(assert (=> b!1851511 (= condSetEmpty!11418 (= (_2!11295 (h!25902 mapValue!8779)) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851512 () Bool)

(declare-fun tp!524437 () Bool)

(assert (=> b!1851512 (= e!1183283 tp!524437)))

(declare-fun setElem!11418 () Context!1890)

(declare-fun tp!524439 () Bool)

(declare-fun setNonEmpty!11418 () Bool)

(assert (=> setNonEmpty!11418 (= setRes!11418 (and tp!524439 (inv!26885 setElem!11418) e!1183281))))

(declare-fun setRest!11417 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11418 (= (_2!11295 (h!25902 mapValue!8779)) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11418 true) setRest!11417))))

(assert (= (and mapNonEmpty!8774 condMapEmpty!8779) mapIsEmpty!8779))

(assert (= (and mapNonEmpty!8774 (not condMapEmpty!8779)) mapNonEmpty!8779))

(assert (= b!1851511 b!1851509))

(assert (= (and b!1851511 condSetEmpty!11418) setIsEmpty!11417))

(assert (= (and b!1851511 (not condSetEmpty!11418)) setNonEmpty!11418))

(assert (= setNonEmpty!11418 b!1851507))

(assert (= (and mapNonEmpty!8779 ((_ is Cons!20501) mapValue!8779)) b!1851511))

(assert (= b!1851508 b!1851512))

(assert (= (and b!1851508 condSetEmpty!11417) setIsEmpty!11418))

(assert (= (and b!1851508 (not condSetEmpty!11417)) setNonEmpty!11417))

(assert (= setNonEmpty!11417 b!1851510))

(assert (= (and mapNonEmpty!8774 ((_ is Cons!20501) mapDefault!8779)) b!1851508))

(declare-fun m!2278085 () Bool)

(assert (=> setNonEmpty!11418 m!2278085))

(declare-fun m!2278087 () Bool)

(assert (=> setNonEmpty!11417 m!2278087))

(declare-fun m!2278089 () Bool)

(assert (=> b!1851508 m!2278089))

(declare-fun m!2278091 () Bool)

(assert (=> b!1851511 m!2278091))

(declare-fun m!2278093 () Bool)

(assert (=> mapNonEmpty!8779 m!2278093))

(declare-fun b!1851513 () Bool)

(declare-fun e!1183289 () Bool)

(declare-fun tp!524445 () Bool)

(assert (=> b!1851513 (= e!1183289 tp!524445)))

(declare-fun b!1851514 () Bool)

(declare-fun setRes!11419 () Bool)

(declare-fun e!1183287 () Bool)

(declare-fun tp!524443 () Bool)

(assert (=> b!1851514 (= e!1183287 (and (inv!26885 (_1!11294 (_1!11295 (h!25902 (t!172360 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))))))) e!1183289 tp_is_empty!8497 setRes!11419 tp!524443))))

(declare-fun condSetEmpty!11419 () Bool)

(assert (=> b!1851514 (= condSetEmpty!11419 (= (_2!11295 (h!25902 (t!172360 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))))) ((as const (Array Context!1890 Bool)) false)))))

(declare-fun b!1851515 () Bool)

(declare-fun e!1183288 () Bool)

(declare-fun tp!524442 () Bool)

(assert (=> b!1851515 (= e!1183288 tp!524442)))

(declare-fun setNonEmpty!11419 () Bool)

(declare-fun setElem!11419 () Context!1890)

(declare-fun tp!524444 () Bool)

(assert (=> setNonEmpty!11419 (= setRes!11419 (and tp!524444 (inv!26885 setElem!11419) e!1183288))))

(declare-fun setRest!11419 () (InoxSet Context!1890))

(assert (=> setNonEmpty!11419 (= (_2!11295 (h!25902 (t!172360 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))))) ((_ map or) (store ((as const (Array Context!1890 Bool)) false) setElem!11419 true) setRest!11419))))

(declare-fun setIsEmpty!11419 () Bool)

(assert (=> setIsEmpty!11419 setRes!11419))

(assert (=> b!1851158 (= tp!524192 e!1183287)))

(assert (= b!1851514 b!1851513))

(assert (= (and b!1851514 condSetEmpty!11419) setIsEmpty!11419))

(assert (= (and b!1851514 (not condSetEmpty!11419)) setNonEmpty!11419))

(assert (= setNonEmpty!11419 b!1851515))

(assert (= (and b!1851158 ((_ is Cons!20501) (t!172360 (zeroValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391))))))))) b!1851514))

(declare-fun m!2278095 () Bool)

(assert (=> b!1851514 m!2278095))

(declare-fun m!2278097 () Bool)

(assert (=> setNonEmpty!11419 m!2278097))

(declare-fun b!1851516 () Bool)

(declare-fun e!1183290 () Bool)

(declare-fun tp!524446 () Bool)

(declare-fun tp!524447 () Bool)

(assert (=> b!1851516 (= e!1183290 (and tp!524446 tp!524447))))

(assert (=> b!1851162 (= tp!524195 e!1183290)))

(assert (= (and b!1851162 ((_ is Cons!20496) (exprs!1445 setElem!11389))) b!1851516))

(declare-fun b!1851517 () Bool)

(declare-fun e!1183291 () Bool)

(declare-fun tp!524448 () Bool)

(declare-fun tp!524449 () Bool)

(assert (=> b!1851517 (= e!1183291 (and tp!524448 tp!524449))))

(assert (=> b!1851160 (= tp!524198 e!1183291)))

(assert (= (and b!1851160 ((_ is Cons!20496) (exprs!1445 (_1!11294 (_1!11295 (h!25902 (minValue!2139 (v!25996 (underlying!3977 (v!25997 (underlying!3978 (cache!2207 cacheUp!391)))))))))))) b!1851517))

(declare-fun b!1851518 () Bool)

(declare-fun e!1183292 () Bool)

(declare-fun tp!524450 () Bool)

(declare-fun tp!524451 () Bool)

(assert (=> b!1851518 (= e!1183292 (and tp!524450 tp!524451))))

(assert (=> b!1851137 (= tp!524165 e!1183292)))

(assert (= (and b!1851137 ((_ is Cons!20496) (exprs!1445 setElem!11386))) b!1851518))

(check-sat (not b!1851315) (not b!1851220) (not b!1851328) (not b_next!52487) (not setNonEmpty!11403) (not b_next!52493) (not b!1851198) (not setNonEmpty!11408) (not b!1851448) (not b!1851334) (not b!1851501) (not b!1851361) (not b!1851341) (not d!565934) (not setNonEmpty!11405) (not b!1851407) (not b!1851339) (not b!1851260) (not setNonEmpty!11390) (not mapNonEmpty!8778) (not b!1851387) (not setNonEmpty!11401) (not b!1851413) (not b!1851442) (not d!565932) (not b!1851327) b_and!144015 (not b!1851455) (not d!565848) (not b!1851394) (not b!1851377) (not b!1851406) (not b!1851290) (not b!1851366) (not b!1851507) (not setNonEmpty!11400) (not b!1851417) (not b!1851176) (not b_next!52503) (not b!1851508) (not b!1851435) (not setNonEmpty!11399) (not b!1851305) (not b!1851400) (not b!1851263) (not b!1851337) b_and!144019 (not setNonEmpty!11409) (not setNonEmpty!11397) (not b!1851173) (not b!1851493) (not b!1851332) (not d!565872) (not b!1851514) (not b!1851411) (not b!1851512) (not d!565918) (not b!1851266) (not b!1851225) (not b!1851418) (not d!565888) (not b!1851294) (not b!1851424) (not d!565892) (not b!1851369) (not b!1851433) (not b!1851379) (not d!565852) (not setNonEmpty!11415) (not setNonEmpty!11410) b_and!144009 (not b!1851340) (not b!1851440) b_and!144031 b_and!144017 (not b!1851506) (not b!1851427) (not b!1851422) (not setNonEmpty!11411) (not mapNonEmpty!8779) (not d!565928) (not b!1851409) (not d!565830) (not d!565908) (not setNonEmpty!11419) (not b!1851292) (not b!1851428) (not b!1851437) (not b!1851378) (not b_lambda!61431) (not b!1851429) (not b!1851390) (not d!565942) (not b!1851322) (not b!1851399) (not b!1851513) (not b_next!52505) (not b!1851430) (not b!1851516) (not b!1851355) (not d!565818) b_and!144029 (not d!565812) (not b!1851434) (not b!1851490) (not b!1851497) b_and!144021 (not d!565862) (not b!1851509) (not b!1851363) b_and!144033 (not setNonEmpty!11413) (not bm!115368) (not b!1851368) (not b!1851426) (not b!1851347) (not b_next!52495) (not b!1851446) (not b!1851423) (not b!1851386) (not b!1851214) (not setNonEmpty!11418) (not b!1851431) (not b!1851342) (not setNonEmpty!11412) (not b!1851494) (not b!1851343) (not b!1851264) (not b!1851456) (not d!565904) (not b!1851511) (not b!1851240) (not b!1851401) (not b!1851353) (not setNonEmpty!11392) (not b!1851384) (not d!565814) (not d!565840) (not b!1851276) (not setNonEmpty!11404) (not b!1851499) (not b!1851348) (not b!1851354) (not d!565860) (not b!1851261) (not b!1851216) (not b!1851375) (not b!1851517) (not b!1851396) (not setNonEmpty!11391) (not b!1851405) (not d!565902) (not d!565882) tp_is_empty!8497 (not d!565922) (not b!1851397) (not d!565916) (not b!1851239) (not b!1851190) (not b!1851233) (not b!1851313) (not b!1851408) (not b!1851505) b_and!144027 (not b!1851504) (not b!1851518) (not b!1851410) (not b!1851389) (not b!1851197) (not d!565854) (not b!1851371) (not d!565874) (not b!1851489) (not d!565868) (not b!1851358) (not d!565930) (not b!1851492) (not d!565822) (not b!1851174) b_and!144035 (not b!1851479) (not b!1851199) (not b!1851412) (not setNonEmpty!11393) (not b_next!52485) (not b!1851420) (not d!565938) (not b!1851335) (not d!565828) (not d!565836) (not b_next!52483) (not b!1851453) (not b!1851291) (not b!1851329) (not b!1851439) (not d!565884) (not b_next!52489) (not b!1851372) (not b!1851402) (not setNonEmpty!11417) (not b_next!52491) (not d!565820) (not b!1851274) (not b!1851495) (not b!1851346) (not d!565838) (not b!1851404) (not d!565900) (not d!565864) (not b_next!52501) (not b!1851510) (not b!1851438) (not b!1851515) (not b!1851364) (not b!1851357) (not b_next!52497) (not b!1851289) b_and!144025 (not b!1851300) (not d!565850) (not d!565844) (not d!565876) (not b!1851447) (not d!565880) (not b_next!52499) (not b!1851336) (not b!1851503) (not b!1851498) (not d!565920) (not d!565898) (not b!1851218) (not b!1851226) (not b!1851376) (not d!565832) (not d!565858) (not setNonEmpty!11414) (not b!1851323) (not b!1851330) (not b!1851367) (not d!565856) (not b!1851393) (not b!1851496) (not b!1851392) (not b!1851189) (not b!1851362) (not d!565944) (not b!1851441) (not b!1851445) (not d!565894) (not b!1851452) (not b!1851419) (not d!565886) (not setNonEmpty!11394) (not b!1851293) (not d!565866) (not b!1851416) (not b!1851480) (not d!565816) (not d!565910) (not b!1851333) (not d!565870) (not b!1851008) (not b!1851325) (not setNonEmpty!11406) (not b!1851449) (not b!1851458) (not b!1851451) (not setNonEmpty!11402) (not b!1851398) (not b!1851359) (not b!1851385) (not b!1851457) (not b!1851415) (not b!1851177) (not setNonEmpty!11398) (not b!1851502) (not setNonEmpty!11416) (not d!565936) (not setNonEmpty!11407) (not b!1851450) (not b!1851443) (not b!1851178) (not d!565842) (not b!1851326) (not b!1851388) (not b!1851414) (not d!565924) (not d!565826) (not b!1851491) (not b!1851370) (not b!1851374) (not b!1851344) (not d!565878) b_and!144011 (not d!565824))
(check-sat b_and!144015 b_and!144017 b_and!144021 b_and!144033 (not b_next!52495) b_and!144027 b_and!144035 (not b_next!52485) (not b_next!52491) (not b_next!52499) b_and!144011 (not b_next!52487) (not b_next!52493) b_and!144019 (not b_next!52503) b_and!144009 b_and!144031 (not b_next!52505) b_and!144029 (not b_next!52489) (not b_next!52483) (not b_next!52501) (not b_next!52497) b_and!144025)
