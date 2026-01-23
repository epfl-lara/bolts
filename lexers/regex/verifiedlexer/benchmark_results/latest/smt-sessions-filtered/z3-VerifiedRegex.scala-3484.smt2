; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201256 () Bool)

(assert start!201256)

(declare-fun b!2042285 () Bool)

(declare-fun b_free!56957 () Bool)

(declare-fun b_next!57661 () Bool)

(assert (=> b!2042285 (= b_free!56957 (not b_next!57661))))

(declare-fun tp!606487 () Bool)

(declare-fun b_and!162897 () Bool)

(assert (=> b!2042285 (= tp!606487 b_and!162897)))

(declare-fun b!2042280 () Bool)

(declare-fun b_free!56959 () Bool)

(declare-fun b_next!57663 () Bool)

(assert (=> b!2042280 (= b_free!56959 (not b_next!57663))))

(declare-fun tp!606486 () Bool)

(declare-fun b_and!162899 () Bool)

(assert (=> b!2042280 (= tp!606486 b_and!162899)))

(declare-fun b!2042284 () Bool)

(declare-fun b_free!56961 () Bool)

(declare-fun b_next!57665 () Bool)

(assert (=> b!2042284 (= b_free!56961 (not b_next!57665))))

(declare-fun tp!606494 () Bool)

(declare-fun b_and!162901 () Bool)

(assert (=> b!2042284 (= tp!606494 b_and!162901)))

(declare-fun b!2042258 () Bool)

(declare-fun b_free!56963 () Bool)

(declare-fun b_next!57667 () Bool)

(assert (=> b!2042258 (= b_free!56963 (not b_next!57667))))

(declare-fun tp!606479 () Bool)

(declare-fun b_and!162903 () Bool)

(assert (=> b!2042258 (= tp!606479 b_and!162903)))

(declare-fun b_free!56965 () Bool)

(declare-fun b_next!57669 () Bool)

(assert (=> b!2042258 (= b_free!56965 (not b_next!57669))))

(declare-fun tp!606484 () Bool)

(declare-fun b_and!162905 () Bool)

(assert (=> b!2042258 (= tp!606484 b_and!162905)))

(declare-fun b!2042278 () Bool)

(declare-fun b_free!56967 () Bool)

(declare-fun b_next!57671 () Bool)

(assert (=> b!2042278 (= b_free!56967 (not b_next!57671))))

(declare-fun tp!606478 () Bool)

(declare-fun b_and!162907 () Bool)

(assert (=> b!2042278 (= tp!606478 b_and!162907)))

(declare-fun b!2042253 () Bool)

(declare-fun e!1289585 () Bool)

(declare-datatypes ((C!11016 0))(
  ( (C!11017 (val!6494 Int)) )
))
(declare-datatypes ((List!22427 0))(
  ( (Nil!22343) (Cons!22343 (h!27744 C!11016) (t!191541 List!22427)) )
))
(declare-datatypes ((IArray!14989 0))(
  ( (IArray!14990 (innerList!7552 List!22427)) )
))
(declare-datatypes ((Conc!7492 0))(
  ( (Node!7492 (left!17774 Conc!7492) (right!18104 Conc!7492) (csize!15214 Int) (cheight!7703 Int)) (Leaf!10977 (xs!10400 IArray!14989) (csize!15215 Int)) (Empty!7492) )
))
(declare-datatypes ((BalanceConc!14746 0))(
  ( (BalanceConc!14747 (c!330866 Conc!7492)) )
))
(declare-fun input!986 () BalanceConc!14746)

(declare-fun tp!606481 () Bool)

(declare-fun inv!29683 (Conc!7492) Bool)

(assert (=> b!2042253 (= e!1289585 (and (inv!29683 (c!330866 input!986)) tp!606481))))

(declare-fun b!2042254 () Bool)

(declare-fun e!1289577 () Bool)

(declare-fun e!1289598 () Bool)

(assert (=> b!2042254 (= e!1289577 e!1289598)))

(declare-fun b!2042255 () Bool)

(declare-fun e!1289579 () Bool)

(declare-fun e!1289591 () Bool)

(assert (=> b!2042255 (= e!1289579 e!1289591)))

(declare-fun res!895021 () Bool)

(assert (=> b!2042255 (=> (not res!895021) (not e!1289591))))

(declare-datatypes ((List!22428 0))(
  ( (Nil!22344) (Cons!22344 (h!27745 (_ BitVec 16)) (t!191542 List!22428)) )
))
(declare-datatypes ((TokenValue!4144 0))(
  ( (FloatLiteralValue!8288 (text!29453 List!22428)) (TokenValueExt!4143 (__x!13837 Int)) (Broken!20720 (value!125854 List!22428)) (Object!4227) (End!4144) (Def!4144) (Underscore!4144) (Match!4144) (Else!4144) (Error!4144) (Case!4144) (If!4144) (Extends!4144) (Abstract!4144) (Class!4144) (Val!4144) (DelimiterValue!8288 (del!4204 List!22428)) (KeywordValue!4150 (value!125855 List!22428)) (CommentValue!8288 (value!125856 List!22428)) (WhitespaceValue!8288 (value!125857 List!22428)) (IndentationValue!4144 (value!125858 List!22428)) (String!25909) (Int32!4144) (Broken!20721 (value!125859 List!22428)) (Boolean!4145) (Unit!37001) (OperatorValue!4147 (op!4204 List!22428)) (IdentifierValue!8288 (value!125860 List!22428)) (IdentifierValue!8289 (value!125861 List!22428)) (WhitespaceValue!8289 (value!125862 List!22428)) (True!8288) (False!8288) (Broken!20722 (value!125863 List!22428)) (Broken!20723 (value!125864 List!22428)) (True!8289) (RightBrace!4144) (RightBracket!4144) (Colon!4144) (Null!4144) (Comma!4144) (LeftBracket!4144) (False!8289) (LeftBrace!4144) (ImaginaryLiteralValue!4144 (text!29454 List!22428)) (StringLiteralValue!12432 (value!125865 List!22428)) (EOFValue!4144 (value!125866 List!22428)) (IdentValue!4144 (value!125867 List!22428)) (DelimiterValue!8289 (value!125868 List!22428)) (DedentValue!4144 (value!125869 List!22428)) (NewLineValue!4144 (value!125870 List!22428)) (IntegerValue!12432 (value!125871 (_ BitVec 32)) (text!29455 List!22428)) (IntegerValue!12433 (value!125872 Int) (text!29456 List!22428)) (Times!4144) (Or!4144) (Equal!4144) (Minus!4144) (Broken!20724 (value!125873 List!22428)) (And!4144) (Div!4144) (LessEqual!4144) (Mod!4144) (Concat!9579) (Not!4144) (Plus!4144) (SpaceValue!4144 (value!125874 List!22428)) (IntegerValue!12434 (value!125875 Int) (text!29457 List!22428)) (StringLiteralValue!12433 (text!29458 List!22428)) (FloatLiteralValue!8289 (text!29459 List!22428)) (BytesLiteralValue!4144 (value!125876 List!22428)) (CommentValue!8289 (value!125877 List!22428)) (StringLiteralValue!12434 (value!125878 List!22428)) (ErrorTokenValue!4144 (msg!4205 List!22428)) )
))
(declare-datatypes ((Regex!5435 0))(
  ( (ElementMatch!5435 (c!330867 C!11016)) (Concat!9580 (regOne!11382 Regex!5435) (regTwo!11382 Regex!5435)) (EmptyExpr!5435) (Star!5435 (reg!5764 Regex!5435)) (EmptyLang!5435) (Union!5435 (regOne!11383 Regex!5435) (regTwo!11383 Regex!5435)) )
))
(declare-datatypes ((String!25910 0))(
  ( (String!25911 (value!125879 String)) )
))
(declare-datatypes ((TokenValueInjection!7872 0))(
  ( (TokenValueInjection!7873 (toValue!5691 Int) (toChars!5550 Int)) )
))
(declare-datatypes ((Rule!7816 0))(
  ( (Rule!7817 (regex!4008 Regex!5435) (tag!4498 String!25910) (isSeparator!4008 Bool) (transformation!4008 TokenValueInjection!7872)) )
))
(declare-datatypes ((Token!7566 0))(
  ( (Token!7567 (value!125880 TokenValue!4144) (rule!6244 Rule!7816) (size!17480 Int) (originalCharacters!4814 List!22427)) )
))
(declare-datatypes ((List!22429 0))(
  ( (Nil!22345) (Cons!22345 (h!27746 Token!7566) (t!191543 List!22429)) )
))
(declare-datatypes ((IArray!14991 0))(
  ( (IArray!14992 (innerList!7553 List!22429)) )
))
(declare-datatypes ((Conc!7493 0))(
  ( (Node!7493 (left!17775 Conc!7493) (right!18105 Conc!7493) (csize!15216 Int) (cheight!7704 Int)) (Leaf!10978 (xs!10401 IArray!14991) (csize!15217 Int)) (Empty!7493) )
))
(declare-datatypes ((BalanceConc!14748 0))(
  ( (BalanceConc!14749 (c!330868 Conc!7493)) )
))
(declare-datatypes ((tuple2!21016 0))(
  ( (tuple2!21017 (_1!11988 BalanceConc!14748) (_2!11988 BalanceConc!14746)) )
))
(declare-fun lt!765943 () tuple2!21016)

(declare-fun acc!382 () BalanceConc!14748)

(declare-fun lt!765934 () tuple2!21016)

(declare-fun list!9163 (BalanceConc!14748) List!22429)

(declare-fun ++!6069 (BalanceConc!14748 BalanceConc!14748) BalanceConc!14748)

(assert (=> b!2042255 (= res!895021 (= (list!9163 (_1!11988 lt!765934)) (list!9163 (++!6069 acc!382 (_1!11988 lt!765943)))))))

(declare-datatypes ((LexerInterface!3621 0))(
  ( (LexerInterfaceExt!3618 (__x!13838 Int)) (Lexer!3619) )
))
(declare-fun thiss!12889 () LexerInterface!3621)

(declare-datatypes ((List!22430 0))(
  ( (Nil!22346) (Cons!22346 (h!27747 Rule!7816) (t!191544 List!22430)) )
))
(declare-fun rules!1563 () List!22430)

(declare-fun lexRec!426 (LexerInterface!3621 List!22430 BalanceConc!14746) tuple2!21016)

(assert (=> b!2042255 (= lt!765943 (lexRec!426 thiss!12889 rules!1563 input!986))))

(declare-fun totalInput!418 () BalanceConc!14746)

(assert (=> b!2042255 (= lt!765934 (lexRec!426 thiss!12889 rules!1563 totalInput!418))))

(declare-fun mapNonEmpty!9180 () Bool)

(declare-fun mapRes!9181 () Bool)

(declare-fun tp!606480 () Bool)

(declare-fun tp!606497 () Bool)

(assert (=> mapNonEmpty!9180 (= mapRes!9181 (and tp!606480 tp!606497))))

(declare-fun mapKey!9181 () (_ BitVec 32))

(declare-datatypes ((List!22431 0))(
  ( (Nil!22347) (Cons!22347 (h!27748 Regex!5435) (t!191545 List!22431)) )
))
(declare-datatypes ((Context!2010 0))(
  ( (Context!2011 (exprs!1505 List!22431)) )
))
(declare-datatypes ((tuple2!21018 0))(
  ( (tuple2!21019 (_1!11989 Context!2010) (_2!11989 C!11016)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21020 0))(
  ( (tuple2!21021 (_1!11990 tuple2!21018) (_2!11990 (InoxSet Context!2010))) )
))
(declare-datatypes ((List!22432 0))(
  ( (Nil!22348) (Cons!22348 (h!27749 tuple2!21020) (t!191546 List!22432)) )
))
(declare-datatypes ((array!6850 0))(
  ( (array!6851 (arr!3043 (Array (_ BitVec 32) List!22432)) (size!17481 (_ BitVec 32))) )
))
(declare-datatypes ((array!6852 0))(
  ( (array!6853 (arr!3044 (Array (_ BitVec 32) (_ BitVec 64))) (size!17482 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3974 0))(
  ( (LongMapFixedSize!3975 (defaultEntry!2352 Int) (mask!6020 (_ BitVec 32)) (extraKeys!2235 (_ BitVec 32)) (zeroValue!2245 List!22432) (minValue!2245 List!22432) (_size!4025 (_ BitVec 32)) (_keys!2284 array!6852) (_values!2267 array!6850) (_vacant!2048 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7773 0))(
  ( (Cell!7774 (v!27066 LongMapFixedSize!3974)) )
))
(declare-datatypes ((MutLongMap!1987 0))(
  ( (LongMap!1987 (underlying!4169 Cell!7773)) (MutLongMapExt!1986 (__x!13839 Int)) )
))
(declare-datatypes ((Hashable!1901 0))(
  ( (HashableExt!1900 (__x!13840 Int)) )
))
(declare-datatypes ((Cell!7775 0))(
  ( (Cell!7776 (v!27067 MutLongMap!1987)) )
))
(declare-datatypes ((MutableMap!1901 0))(
  ( (MutableMapExt!1900 (__x!13841 Int)) (HashMap!1901 (underlying!4170 Cell!7775) (hashF!3824 Hashable!1901) (_size!4026 (_ BitVec 32)) (defaultValue!2063 Int)) )
))
(declare-datatypes ((CacheUp!1198 0))(
  ( (CacheUp!1199 (cache!2282 MutableMap!1901)) )
))
(declare-fun cacheUp!562 () CacheUp!1198)

(declare-fun mapValue!9180 () List!22432)

(declare-fun mapRest!9180 () (Array (_ BitVec 32) List!22432))

(assert (=> mapNonEmpty!9180 (= (arr!3043 (_values!2267 (v!27066 (underlying!4169 (v!27067 (underlying!4170 (cache!2282 cacheUp!562))))))) (store mapRest!9180 mapKey!9181 mapValue!9180))))

(declare-fun b!2042256 () Bool)

(declare-fun e!1289601 () Bool)

(declare-fun e!1289597 () Bool)

(assert (=> b!2042256 (= e!1289601 e!1289597)))

(declare-fun res!895014 () Bool)

(assert (=> b!2042256 (=> (not res!895014) (not e!1289597))))

(declare-fun lt!765938 () List!22427)

(declare-fun lt!765944 () List!22427)

(assert (=> b!2042256 (= res!895014 (= lt!765938 lt!765944))))

(declare-fun lt!765937 () List!22427)

(declare-fun lt!765936 () List!22427)

(declare-fun ++!6070 (List!22427 List!22427) List!22427)

(assert (=> b!2042256 (= lt!765944 (++!6070 lt!765937 lt!765936))))

(declare-fun list!9164 (BalanceConc!14746) List!22427)

(assert (=> b!2042256 (= lt!765938 (list!9164 totalInput!418))))

(assert (=> b!2042256 (= lt!765936 (list!9164 input!986))))

(declare-fun treated!60 () BalanceConc!14746)

(assert (=> b!2042256 (= lt!765937 (list!9164 treated!60))))

(declare-fun res!895010 () Bool)

(assert (=> start!201256 (=> (not res!895010) (not e!1289601))))

(get-info :version)

(assert (=> start!201256 (= res!895010 ((_ is Lexer!3619) thiss!12889))))

(assert (=> start!201256 e!1289601))

(declare-datatypes ((Hashable!1902 0))(
  ( (HashableExt!1901 (__x!13842 Int)) )
))
(declare-datatypes ((tuple3!2032 0))(
  ( (tuple3!2033 (_1!11991 Regex!5435) (_2!11991 Context!2010) (_3!1480 C!11016)) )
))
(declare-datatypes ((tuple2!21022 0))(
  ( (tuple2!21023 (_1!11992 tuple3!2032) (_2!11992 (InoxSet Context!2010))) )
))
(declare-datatypes ((List!22433 0))(
  ( (Nil!22349) (Cons!22349 (h!27750 tuple2!21022) (t!191547 List!22433)) )
))
(declare-datatypes ((array!6854 0))(
  ( (array!6855 (arr!3045 (Array (_ BitVec 32) List!22433)) (size!17483 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3976 0))(
  ( (LongMapFixedSize!3977 (defaultEntry!2353 Int) (mask!6021 (_ BitVec 32)) (extraKeys!2236 (_ BitVec 32)) (zeroValue!2246 List!22433) (minValue!2246 List!22433) (_size!4027 (_ BitVec 32)) (_keys!2285 array!6852) (_values!2268 array!6854) (_vacant!2049 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7777 0))(
  ( (Cell!7778 (v!27068 LongMapFixedSize!3976)) )
))
(declare-datatypes ((MutLongMap!1988 0))(
  ( (LongMap!1988 (underlying!4171 Cell!7777)) (MutLongMapExt!1987 (__x!13843 Int)) )
))
(declare-datatypes ((Cell!7779 0))(
  ( (Cell!7780 (v!27069 MutLongMap!1988)) )
))
(declare-datatypes ((MutableMap!1902 0))(
  ( (MutableMapExt!1901 (__x!13844 Int)) (HashMap!1902 (underlying!4172 Cell!7779) (hashF!3825 Hashable!1902) (_size!4028 (_ BitVec 32)) (defaultValue!2064 Int)) )
))
(declare-datatypes ((CacheDown!1198 0))(
  ( (CacheDown!1199 (cache!2283 MutableMap!1902)) )
))
(declare-fun cacheDown!575 () CacheDown!1198)

(declare-fun e!1289606 () Bool)

(declare-fun inv!29684 (CacheDown!1198) Bool)

(assert (=> start!201256 (and (inv!29684 cacheDown!575) e!1289606)))

(assert (=> start!201256 true))

(declare-fun inv!29685 (CacheUp!1198) Bool)

(assert (=> start!201256 (and (inv!29685 cacheUp!562) e!1289577)))

(declare-fun e!1289605 () Bool)

(assert (=> start!201256 e!1289605))

(declare-fun e!1289596 () Bool)

(declare-fun inv!29686 (BalanceConc!14746) Bool)

(assert (=> start!201256 (and (inv!29686 totalInput!418) e!1289596)))

(declare-fun e!1289582 () Bool)

(assert (=> start!201256 (and (inv!29686 treated!60) e!1289582)))

(assert (=> start!201256 (and (inv!29686 input!986) e!1289585)))

(declare-fun e!1289602 () Bool)

(declare-fun inv!29687 (BalanceConc!14748) Bool)

(assert (=> start!201256 (and (inv!29687 acc!382) e!1289602)))

(declare-fun b!2042257 () Bool)

(declare-fun res!895011 () Bool)

(assert (=> b!2042257 (=> (not res!895011) (not e!1289601))))

(declare-fun rulesInvariant!3226 (LexerInterface!3621 List!22430) Bool)

(assert (=> b!2042257 (= res!895011 (rulesInvariant!3226 thiss!12889 rules!1563))))

(declare-fun e!1289603 () Bool)

(assert (=> b!2042258 (= e!1289603 (and tp!606479 tp!606484))))

(declare-fun b!2042259 () Bool)

(declare-fun e!1289581 () Bool)

(declare-fun e!1289578 () Bool)

(declare-fun lt!765935 () MutLongMap!1988)

(assert (=> b!2042259 (= e!1289581 (and e!1289578 ((_ is LongMap!1988) lt!765935)))))

(assert (=> b!2042259 (= lt!765935 (v!27069 (underlying!4172 (cache!2283 cacheDown!575))))))

(declare-fun b!2042260 () Bool)

(declare-fun tp!606493 () Bool)

(declare-fun inv!29688 (Conc!7493) Bool)

(assert (=> b!2042260 (= e!1289602 (and (inv!29688 (c!330868 acc!382)) tp!606493))))

(declare-fun b!2042261 () Bool)

(declare-fun e!1289593 () Bool)

(assert (=> b!2042261 (= e!1289606 e!1289593)))

(declare-fun b!2042262 () Bool)

(declare-fun tp!606499 () Bool)

(assert (=> b!2042262 (= e!1289582 (and (inv!29683 (c!330866 treated!60)) tp!606499))))

(declare-fun mapIsEmpty!9180 () Bool)

(assert (=> mapIsEmpty!9180 mapRes!9181))

(declare-fun b!2042263 () Bool)

(declare-fun res!895015 () Bool)

(assert (=> b!2042263 (=> (not res!895015) (not e!1289579))))

(declare-fun lt!765942 () tuple2!21016)

(declare-fun isEmpty!13956 (List!22427) Bool)

(assert (=> b!2042263 (= res!895015 (isEmpty!13956 (list!9164 (_2!11988 lt!765942))))))

(declare-fun mapIsEmpty!9181 () Bool)

(declare-fun mapRes!9180 () Bool)

(assert (=> mapIsEmpty!9181 mapRes!9180))

(declare-fun b!2042264 () Bool)

(declare-fun res!895017 () Bool)

(assert (=> b!2042264 (=> (not res!895017) (not e!1289591))))

(declare-fun valid!1585 (CacheDown!1198) Bool)

(assert (=> b!2042264 (= res!895017 (valid!1585 cacheDown!575))))

(declare-fun b!2042265 () Bool)

(declare-fun e!1289600 () Bool)

(declare-fun e!1289584 () Bool)

(declare-fun lt!765941 () MutLongMap!1987)

(assert (=> b!2042265 (= e!1289600 (and e!1289584 ((_ is LongMap!1987) lt!765941)))))

(assert (=> b!2042265 (= lt!765941 (v!27067 (underlying!4170 (cache!2282 cacheUp!562))))))

(declare-fun b!2042266 () Bool)

(declare-fun res!895013 () Bool)

(assert (=> b!2042266 (=> (not res!895013) (not e!1289591))))

(assert (=> b!2042266 (= res!895013 (= (list!9164 (_2!11988 lt!765934)) (list!9164 (_2!11988 lt!765943))))))

(declare-fun b!2042267 () Bool)

(declare-fun e!1289588 () Bool)

(assert (=> b!2042267 (= e!1289578 e!1289588)))

(declare-fun b!2042268 () Bool)

(declare-fun e!1289580 () Bool)

(assert (=> b!2042268 (= e!1289591 (not e!1289580))))

(declare-fun res!895016 () Bool)

(assert (=> b!2042268 (=> res!895016 e!1289580)))

(declare-fun isSuffix!469 (List!22427 List!22427) Bool)

(assert (=> b!2042268 (= res!895016 (not (isSuffix!469 lt!765936 lt!765938)))))

(assert (=> b!2042268 (isSuffix!469 lt!765936 lt!765944)))

(declare-datatypes ((Unit!37002 0))(
  ( (Unit!37003) )
))
(declare-fun lt!765939 () Unit!37002)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!370 (List!22427 List!22427) Unit!37002)

(assert (=> b!2042268 (= lt!765939 (lemmaConcatTwoListThenFSndIsSuffix!370 lt!765937 lt!765936))))

(declare-fun b!2042269 () Bool)

(declare-fun tp!606483 () Bool)

(assert (=> b!2042269 (= e!1289596 (and (inv!29683 (c!330866 totalInput!418)) tp!606483))))

(declare-fun b!2042270 () Bool)

(declare-fun e!1289590 () Bool)

(assert (=> b!2042270 (= e!1289584 e!1289590)))

(declare-fun mapNonEmpty!9181 () Bool)

(declare-fun tp!606498 () Bool)

(declare-fun tp!606495 () Bool)

(assert (=> mapNonEmpty!9181 (= mapRes!9180 (and tp!606498 tp!606495))))

(declare-fun mapRest!9181 () (Array (_ BitVec 32) List!22433))

(declare-fun mapKey!9180 () (_ BitVec 32))

(declare-fun mapValue!9181 () List!22433)

(assert (=> mapNonEmpty!9181 (= (arr!3045 (_values!2268 (v!27068 (underlying!4171 (v!27069 (underlying!4172 (cache!2283 cacheDown!575))))))) (store mapRest!9181 mapKey!9180 mapValue!9181))))

(declare-fun b!2042271 () Bool)

(assert (=> b!2042271 (= e!1289597 e!1289579)))

(declare-fun res!895020 () Bool)

(assert (=> b!2042271 (=> (not res!895020) (not e!1289579))))

(assert (=> b!2042271 (= res!895020 (= (list!9163 (_1!11988 lt!765942)) (list!9163 acc!382)))))

(assert (=> b!2042271 (= lt!765942 (lexRec!426 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2042272 () Bool)

(declare-fun res!895019 () Bool)

(assert (=> b!2042272 (=> (not res!895019) (not e!1289601))))

(declare-fun isEmpty!13957 (List!22430) Bool)

(assert (=> b!2042272 (= res!895019 (not (isEmpty!13957 rules!1563)))))

(declare-fun b!2042273 () Bool)

(declare-fun e!1289595 () Bool)

(assert (=> b!2042273 (= e!1289588 e!1289595)))

(declare-fun b!2042274 () Bool)

(declare-fun e!1289592 () Bool)

(declare-fun tp!606489 () Bool)

(declare-fun inv!29681 (String!25910) Bool)

(declare-fun inv!29689 (TokenValueInjection!7872) Bool)

(assert (=> b!2042274 (= e!1289592 (and tp!606489 (inv!29681 (tag!4498 (h!27747 rules!1563))) (inv!29689 (transformation!4008 (h!27747 rules!1563))) e!1289603))))

(declare-fun b!2042275 () Bool)

(declare-fun e!1289583 () Bool)

(declare-fun tp!606491 () Bool)

(assert (=> b!2042275 (= e!1289583 (and tp!606491 mapRes!9181))))

(declare-fun condMapEmpty!9180 () Bool)

(declare-fun mapDefault!9180 () List!22432)

(assert (=> b!2042275 (= condMapEmpty!9180 (= (arr!3043 (_values!2267 (v!27066 (underlying!4169 (v!27067 (underlying!4170 (cache!2282 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22432)) mapDefault!9180)))))

(declare-fun b!2042276 () Bool)

(declare-fun e!1289589 () Bool)

(assert (=> b!2042276 (= e!1289590 e!1289589)))

(declare-fun b!2042277 () Bool)

(declare-fun e!1289599 () Bool)

(assert (=> b!2042277 (= e!1289599 true)))

(declare-datatypes ((tuple2!21024 0))(
  ( (tuple2!21025 (_1!11993 Token!7566) (_2!11993 BalanceConc!14746)) )
))
(declare-datatypes ((Option!4691 0))(
  ( (None!4690) (Some!4690 (v!27070 tuple2!21024)) )
))
(declare-datatypes ((tuple3!2034 0))(
  ( (tuple3!2035 (_1!11994 Option!4691) (_2!11994 CacheUp!1198) (_3!1481 CacheDown!1198)) )
))
(declare-fun lt!765945 () tuple3!2034)

(declare-fun lt!765940 () tuple2!21016)

(assert (=> b!2042277 (= lt!765940 (lexRec!426 thiss!12889 rules!1563 (_2!11993 (v!27070 (_1!11994 lt!765945)))))))

(assert (=> b!2042278 (= e!1289598 (and e!1289600 tp!606478))))

(declare-fun b!2042279 () Bool)

(declare-fun tp!606496 () Bool)

(assert (=> b!2042279 (= e!1289605 (and e!1289592 tp!606496))))

(assert (=> b!2042280 (= e!1289593 (and e!1289581 tp!606486))))

(declare-fun b!2042281 () Bool)

(assert (=> b!2042281 (= e!1289580 e!1289599)))

(declare-fun res!895018 () Bool)

(assert (=> b!2042281 (=> res!895018 e!1289599)))

(assert (=> b!2042281 (= res!895018 (not ((_ is Some!4690) (_1!11994 lt!765945))))))

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!3 (LexerInterface!3621 List!22430 BalanceConc!14746 BalanceConc!14746 CacheUp!1198 CacheDown!1198) tuple3!2034)

(assert (=> b!2042281 (= lt!765945 (maxPrefixZipperSequenceV2MemOnlyDeriv!3 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2042282 () Bool)

(declare-fun res!895012 () Bool)

(assert (=> b!2042282 (=> (not res!895012) (not e!1289591))))

(declare-fun valid!1586 (CacheUp!1198) Bool)

(assert (=> b!2042282 (= res!895012 (valid!1586 cacheUp!562))))

(declare-fun b!2042283 () Bool)

(declare-fun e!1289586 () Bool)

(declare-fun tp!606482 () Bool)

(assert (=> b!2042283 (= e!1289586 (and tp!606482 mapRes!9180))))

(declare-fun condMapEmpty!9181 () Bool)

(declare-fun mapDefault!9181 () List!22433)

(assert (=> b!2042283 (= condMapEmpty!9181 (= (arr!3045 (_values!2268 (v!27068 (underlying!4171 (v!27069 (underlying!4172 (cache!2283 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22433)) mapDefault!9181)))))

(declare-fun tp!606492 () Bool)

(declare-fun tp!606485 () Bool)

(declare-fun array_inv!2184 (array!6852) Bool)

(declare-fun array_inv!2185 (array!6850) Bool)

(assert (=> b!2042284 (= e!1289589 (and tp!606494 tp!606492 tp!606485 (array_inv!2184 (_keys!2284 (v!27066 (underlying!4169 (v!27067 (underlying!4170 (cache!2282 cacheUp!562))))))) (array_inv!2185 (_values!2267 (v!27066 (underlying!4169 (v!27067 (underlying!4170 (cache!2282 cacheUp!562))))))) e!1289583))))

(declare-fun tp!606490 () Bool)

(declare-fun tp!606488 () Bool)

(declare-fun array_inv!2186 (array!6854) Bool)

(assert (=> b!2042285 (= e!1289595 (and tp!606487 tp!606488 tp!606490 (array_inv!2184 (_keys!2285 (v!27068 (underlying!4171 (v!27069 (underlying!4172 (cache!2283 cacheDown!575))))))) (array_inv!2186 (_values!2268 (v!27068 (underlying!4171 (v!27069 (underlying!4172 (cache!2283 cacheDown!575))))))) e!1289586))))

(assert (= (and start!201256 res!895010) b!2042272))

(assert (= (and b!2042272 res!895019) b!2042257))

(assert (= (and b!2042257 res!895011) b!2042256))

(assert (= (and b!2042256 res!895014) b!2042271))

(assert (= (and b!2042271 res!895020) b!2042263))

(assert (= (and b!2042263 res!895015) b!2042255))

(assert (= (and b!2042255 res!895021) b!2042266))

(assert (= (and b!2042266 res!895013) b!2042282))

(assert (= (and b!2042282 res!895012) b!2042264))

(assert (= (and b!2042264 res!895017) b!2042268))

(assert (= (and b!2042268 (not res!895016)) b!2042281))

(assert (= (and b!2042281 (not res!895018)) b!2042277))

(assert (= (and b!2042283 condMapEmpty!9181) mapIsEmpty!9181))

(assert (= (and b!2042283 (not condMapEmpty!9181)) mapNonEmpty!9181))

(assert (= b!2042285 b!2042283))

(assert (= b!2042273 b!2042285))

(assert (= b!2042267 b!2042273))

(assert (= (and b!2042259 ((_ is LongMap!1988) (v!27069 (underlying!4172 (cache!2283 cacheDown!575))))) b!2042267))

(assert (= b!2042280 b!2042259))

(assert (= (and b!2042261 ((_ is HashMap!1902) (cache!2283 cacheDown!575))) b!2042280))

(assert (= start!201256 b!2042261))

(assert (= (and b!2042275 condMapEmpty!9180) mapIsEmpty!9180))

(assert (= (and b!2042275 (not condMapEmpty!9180)) mapNonEmpty!9180))

(assert (= b!2042284 b!2042275))

(assert (= b!2042276 b!2042284))

(assert (= b!2042270 b!2042276))

(assert (= (and b!2042265 ((_ is LongMap!1987) (v!27067 (underlying!4170 (cache!2282 cacheUp!562))))) b!2042270))

(assert (= b!2042278 b!2042265))

(assert (= (and b!2042254 ((_ is HashMap!1901) (cache!2282 cacheUp!562))) b!2042278))

(assert (= start!201256 b!2042254))

(assert (= b!2042274 b!2042258))

(assert (= b!2042279 b!2042274))

(assert (= (and start!201256 ((_ is Cons!22346) rules!1563)) b!2042279))

(assert (= start!201256 b!2042269))

(assert (= start!201256 b!2042262))

(assert (= start!201256 b!2042253))

(assert (= start!201256 b!2042260))

(declare-fun m!2486269 () Bool)

(assert (=> start!201256 m!2486269))

(declare-fun m!2486271 () Bool)

(assert (=> start!201256 m!2486271))

(declare-fun m!2486273 () Bool)

(assert (=> start!201256 m!2486273))

(declare-fun m!2486275 () Bool)

(assert (=> start!201256 m!2486275))

(declare-fun m!2486277 () Bool)

(assert (=> start!201256 m!2486277))

(declare-fun m!2486279 () Bool)

(assert (=> start!201256 m!2486279))

(declare-fun m!2486281 () Bool)

(assert (=> b!2042277 m!2486281))

(declare-fun m!2486283 () Bool)

(assert (=> mapNonEmpty!9181 m!2486283))

(declare-fun m!2486285 () Bool)

(assert (=> b!2042262 m!2486285))

(declare-fun m!2486287 () Bool)

(assert (=> b!2042269 m!2486287))

(declare-fun m!2486289 () Bool)

(assert (=> b!2042281 m!2486289))

(declare-fun m!2486291 () Bool)

(assert (=> b!2042255 m!2486291))

(declare-fun m!2486293 () Bool)

(assert (=> b!2042255 m!2486293))

(declare-fun m!2486295 () Bool)

(assert (=> b!2042255 m!2486295))

(assert (=> b!2042255 m!2486291))

(declare-fun m!2486297 () Bool)

(assert (=> b!2042255 m!2486297))

(declare-fun m!2486299 () Bool)

(assert (=> b!2042255 m!2486299))

(declare-fun m!2486301 () Bool)

(assert (=> b!2042264 m!2486301))

(declare-fun m!2486303 () Bool)

(assert (=> b!2042272 m!2486303))

(declare-fun m!2486305 () Bool)

(assert (=> b!2042256 m!2486305))

(declare-fun m!2486307 () Bool)

(assert (=> b!2042256 m!2486307))

(declare-fun m!2486309 () Bool)

(assert (=> b!2042256 m!2486309))

(declare-fun m!2486311 () Bool)

(assert (=> b!2042256 m!2486311))

(declare-fun m!2486313 () Bool)

(assert (=> b!2042253 m!2486313))

(declare-fun m!2486315 () Bool)

(assert (=> b!2042257 m!2486315))

(declare-fun m!2486317 () Bool)

(assert (=> b!2042268 m!2486317))

(declare-fun m!2486319 () Bool)

(assert (=> b!2042268 m!2486319))

(declare-fun m!2486321 () Bool)

(assert (=> b!2042268 m!2486321))

(declare-fun m!2486323 () Bool)

(assert (=> b!2042284 m!2486323))

(declare-fun m!2486325 () Bool)

(assert (=> b!2042284 m!2486325))

(declare-fun m!2486327 () Bool)

(assert (=> mapNonEmpty!9180 m!2486327))

(declare-fun m!2486329 () Bool)

(assert (=> b!2042271 m!2486329))

(declare-fun m!2486331 () Bool)

(assert (=> b!2042271 m!2486331))

(declare-fun m!2486333 () Bool)

(assert (=> b!2042271 m!2486333))

(declare-fun m!2486335 () Bool)

(assert (=> b!2042260 m!2486335))

(declare-fun m!2486337 () Bool)

(assert (=> b!2042266 m!2486337))

(declare-fun m!2486339 () Bool)

(assert (=> b!2042266 m!2486339))

(declare-fun m!2486341 () Bool)

(assert (=> b!2042274 m!2486341))

(declare-fun m!2486343 () Bool)

(assert (=> b!2042274 m!2486343))

(declare-fun m!2486345 () Bool)

(assert (=> b!2042285 m!2486345))

(declare-fun m!2486347 () Bool)

(assert (=> b!2042285 m!2486347))

(declare-fun m!2486349 () Bool)

(assert (=> b!2042263 m!2486349))

(assert (=> b!2042263 m!2486349))

(declare-fun m!2486351 () Bool)

(assert (=> b!2042263 m!2486351))

(declare-fun m!2486353 () Bool)

(assert (=> b!2042282 m!2486353))

(check-sat (not b!2042269) (not b!2042285) (not b!2042256) (not b_next!57671) (not b!2042266) (not b!2042260) (not b!2042257) (not b_next!57663) (not b!2042253) b_and!162905 (not b!2042255) (not b_next!57667) (not start!201256) (not mapNonEmpty!9180) (not b!2042264) b_and!162907 (not b!2042279) (not mapNonEmpty!9181) (not b!2042282) (not b!2042274) (not b!2042262) b_and!162903 (not b!2042271) (not b_next!57661) (not b_next!57669) (not b_next!57665) b_and!162901 (not b!2042284) (not b!2042275) (not b!2042281) b_and!162897 (not b!2042268) (not b!2042272) (not b!2042283) (not b!2042277) (not b!2042263) b_and!162899)
(check-sat b_and!162907 (not b_next!57671) b_and!162903 (not b_next!57663) (not b_next!57661) b_and!162905 b_and!162897 b_and!162899 (not b_next!57667) (not b_next!57669) (not b_next!57665) b_and!162901)
