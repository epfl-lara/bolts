; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201248 () Bool)

(assert start!201248)

(declare-fun b!2041895 () Bool)

(declare-fun b_free!56909 () Bool)

(declare-fun b_next!57613 () Bool)

(assert (=> b!2041895 (= b_free!56909 (not b_next!57613))))

(declare-fun tp!606232 () Bool)

(declare-fun b_and!162849 () Bool)

(assert (=> b!2041895 (= tp!606232 b_and!162849)))

(declare-fun b!2041894 () Bool)

(declare-fun b_free!56911 () Bool)

(declare-fun b_next!57615 () Bool)

(assert (=> b!2041894 (= b_free!56911 (not b_next!57615))))

(declare-fun tp!606219 () Bool)

(declare-fun b_and!162851 () Bool)

(assert (=> b!2041894 (= tp!606219 b_and!162851)))

(declare-fun b_free!56913 () Bool)

(declare-fun b_next!57617 () Bool)

(assert (=> b!2041894 (= b_free!56913 (not b_next!57617))))

(declare-fun tp!606225 () Bool)

(declare-fun b_and!162853 () Bool)

(assert (=> b!2041894 (= tp!606225 b_and!162853)))

(declare-fun b!2041880 () Bool)

(declare-fun b_free!56915 () Bool)

(declare-fun b_next!57619 () Bool)

(assert (=> b!2041880 (= b_free!56915 (not b_next!57619))))

(declare-fun tp!606229 () Bool)

(declare-fun b_and!162855 () Bool)

(assert (=> b!2041880 (= tp!606229 b_and!162855)))

(declare-fun b!2041867 () Bool)

(declare-fun b_free!56917 () Bool)

(declare-fun b_next!57621 () Bool)

(assert (=> b!2041867 (= b_free!56917 (not b_next!57621))))

(declare-fun tp!606223 () Bool)

(declare-fun b_and!162857 () Bool)

(assert (=> b!2041867 (= tp!606223 b_and!162857)))

(declare-fun b!2041876 () Bool)

(declare-fun b_free!56919 () Bool)

(declare-fun b_next!57623 () Bool)

(assert (=> b!2041876 (= b_free!56919 (not b_next!57623))))

(declare-fun tp!606227 () Bool)

(declare-fun b_and!162859 () Bool)

(assert (=> b!2041876 (= tp!606227 b_and!162859)))

(declare-fun b!2041864 () Bool)

(declare-fun res!894877 () Bool)

(declare-fun e!1289249 () Bool)

(assert (=> b!2041864 (=> (not res!894877) (not e!1289249))))

(declare-datatypes ((LexerInterface!3618 0))(
  ( (LexerInterfaceExt!3615 (__x!13807 Int)) (Lexer!3616) )
))
(declare-fun thiss!12889 () LexerInterface!3618)

(declare-datatypes ((List!22402 0))(
  ( (Nil!22318) (Cons!22318 (h!27719 (_ BitVec 16)) (t!191516 List!22402)) )
))
(declare-datatypes ((TokenValue!4141 0))(
  ( (FloatLiteralValue!8282 (text!29432 List!22402)) (TokenValueExt!4140 (__x!13808 Int)) (Broken!20705 (value!125767 List!22402)) (Object!4224) (End!4141) (Def!4141) (Underscore!4141) (Match!4141) (Else!4141) (Error!4141) (Case!4141) (If!4141) (Extends!4141) (Abstract!4141) (Class!4141) (Val!4141) (DelimiterValue!8282 (del!4201 List!22402)) (KeywordValue!4147 (value!125768 List!22402)) (CommentValue!8282 (value!125769 List!22402)) (WhitespaceValue!8282 (value!125770 List!22402)) (IndentationValue!4141 (value!125771 List!22402)) (String!25892) (Int32!4141) (Broken!20706 (value!125772 List!22402)) (Boolean!4142) (Unit!36994) (OperatorValue!4144 (op!4201 List!22402)) (IdentifierValue!8282 (value!125773 List!22402)) (IdentifierValue!8283 (value!125774 List!22402)) (WhitespaceValue!8283 (value!125775 List!22402)) (True!8282) (False!8282) (Broken!20707 (value!125776 List!22402)) (Broken!20708 (value!125777 List!22402)) (True!8283) (RightBrace!4141) (RightBracket!4141) (Colon!4141) (Null!4141) (Comma!4141) (LeftBracket!4141) (False!8283) (LeftBrace!4141) (ImaginaryLiteralValue!4141 (text!29433 List!22402)) (StringLiteralValue!12423 (value!125778 List!22402)) (EOFValue!4141 (value!125779 List!22402)) (IdentValue!4141 (value!125780 List!22402)) (DelimiterValue!8283 (value!125781 List!22402)) (DedentValue!4141 (value!125782 List!22402)) (NewLineValue!4141 (value!125783 List!22402)) (IntegerValue!12423 (value!125784 (_ BitVec 32)) (text!29434 List!22402)) (IntegerValue!12424 (value!125785 Int) (text!29435 List!22402)) (Times!4141) (Or!4141) (Equal!4141) (Minus!4141) (Broken!20709 (value!125786 List!22402)) (And!4141) (Div!4141) (LessEqual!4141) (Mod!4141) (Concat!9572) (Not!4141) (Plus!4141) (SpaceValue!4141 (value!125787 List!22402)) (IntegerValue!12425 (value!125788 Int) (text!29436 List!22402)) (StringLiteralValue!12424 (text!29437 List!22402)) (FloatLiteralValue!8283 (text!29438 List!22402)) (BytesLiteralValue!4141 (value!125789 List!22402)) (CommentValue!8283 (value!125790 List!22402)) (StringLiteralValue!12425 (value!125791 List!22402)) (ErrorTokenValue!4141 (msg!4202 List!22402)) )
))
(declare-datatypes ((C!11008 0))(
  ( (C!11009 (val!6490 Int)) )
))
(declare-datatypes ((List!22403 0))(
  ( (Nil!22319) (Cons!22319 (h!27720 C!11008) (t!191517 List!22403)) )
))
(declare-datatypes ((IArray!14975 0))(
  ( (IArray!14976 (innerList!7545 List!22403)) )
))
(declare-datatypes ((Conc!7485 0))(
  ( (Node!7485 (left!17765 Conc!7485) (right!18095 Conc!7485) (csize!15200 Int) (cheight!7696 Int)) (Leaf!10968 (xs!10393 IArray!14975) (csize!15201 Int)) (Empty!7485) )
))
(declare-datatypes ((BalanceConc!14732 0))(
  ( (BalanceConc!14733 (c!330855 Conc!7485)) )
))
(declare-datatypes ((Regex!5431 0))(
  ( (ElementMatch!5431 (c!330856 C!11008)) (Concat!9573 (regOne!11374 Regex!5431) (regTwo!11374 Regex!5431)) (EmptyExpr!5431) (Star!5431 (reg!5760 Regex!5431)) (EmptyLang!5431) (Union!5431 (regOne!11375 Regex!5431) (regTwo!11375 Regex!5431)) )
))
(declare-datatypes ((String!25893 0))(
  ( (String!25894 (value!125792 String)) )
))
(declare-datatypes ((TokenValueInjection!7866 0))(
  ( (TokenValueInjection!7867 (toValue!5688 Int) (toChars!5547 Int)) )
))
(declare-datatypes ((Rule!7810 0))(
  ( (Rule!7811 (regex!4005 Regex!5431) (tag!4495 String!25893) (isSeparator!4005 Bool) (transformation!4005 TokenValueInjection!7866)) )
))
(declare-datatypes ((List!22404 0))(
  ( (Nil!22320) (Cons!22320 (h!27721 Rule!7810) (t!191518 List!22404)) )
))
(declare-fun rules!1563 () List!22404)

(declare-fun rulesInvariant!3224 (LexerInterface!3618 List!22404) Bool)

(assert (=> b!2041864 (= res!894877 (rulesInvariant!3224 thiss!12889 rules!1563))))

(declare-fun tp!606235 () Bool)

(declare-fun e!1289239 () Bool)

(declare-fun b!2041865 () Bool)

(declare-fun e!1289252 () Bool)

(declare-fun inv!29654 (String!25893) Bool)

(declare-fun inv!29661 (TokenValueInjection!7866) Bool)

(assert (=> b!2041865 (= e!1289239 (and tp!606235 (inv!29654 (tag!4495 (h!27721 rules!1563))) (inv!29661 (transformation!4005 (h!27721 rules!1563))) e!1289252))))

(declare-fun b!2041866 () Bool)

(declare-fun e!1289226 () Bool)

(declare-fun tp!606221 () Bool)

(assert (=> b!2041866 (= e!1289226 (and e!1289239 tp!606221))))

(declare-datatypes ((List!22405 0))(
  ( (Nil!22321) (Cons!22321 (h!27722 Regex!5431) (t!191519 List!22405)) )
))
(declare-datatypes ((Context!2002 0))(
  ( (Context!2003 (exprs!1501 List!22405)) )
))
(declare-datatypes ((tuple2!20982 0))(
  ( (tuple2!20983 (_1!11965 Context!2002) (_2!11965 C!11008)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!20984 0))(
  ( (tuple2!20985 (_1!11966 tuple2!20982) (_2!11966 (InoxSet Context!2002))) )
))
(declare-datatypes ((List!22406 0))(
  ( (Nil!22322) (Cons!22322 (h!27723 tuple2!20984) (t!191520 List!22406)) )
))
(declare-datatypes ((array!6826 0))(
  ( (array!6827 (arr!3031 (Array (_ BitVec 32) List!22406)) (size!17465 (_ BitVec 32))) )
))
(declare-datatypes ((array!6828 0))(
  ( (array!6829 (arr!3032 (Array (_ BitVec 32) (_ BitVec 64))) (size!17466 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3958 0))(
  ( (LongMapFixedSize!3959 (defaultEntry!2344 Int) (mask!6010 (_ BitVec 32)) (extraKeys!2227 (_ BitVec 32)) (zeroValue!2237 List!22406) (minValue!2237 List!22406) (_size!4009 (_ BitVec 32)) (_keys!2276 array!6828) (_values!2259 array!6826) (_vacant!2040 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7741 0))(
  ( (Cell!7742 (v!27048 LongMapFixedSize!3958)) )
))
(declare-datatypes ((MutLongMap!1979 0))(
  ( (LongMap!1979 (underlying!4153 Cell!7741)) (MutLongMapExt!1978 (__x!13809 Int)) )
))
(declare-datatypes ((Hashable!1893 0))(
  ( (HashableExt!1892 (__x!13810 Int)) )
))
(declare-datatypes ((Cell!7743 0))(
  ( (Cell!7744 (v!27049 MutLongMap!1979)) )
))
(declare-datatypes ((MutableMap!1893 0))(
  ( (MutableMapExt!1892 (__x!13811 Int)) (HashMap!1893 (underlying!4154 Cell!7743) (hashF!3816 Hashable!1893) (_size!4010 (_ BitVec 32)) (defaultValue!2055 Int)) )
))
(declare-datatypes ((CacheUp!1190 0))(
  ( (CacheUp!1191 (cache!2274 MutableMap!1893)) )
))
(declare-fun cacheUp!562 () CacheUp!1190)

(declare-fun e!1289251 () Bool)

(declare-fun e!1289250 () Bool)

(declare-fun tp!606234 () Bool)

(declare-fun tp!606228 () Bool)

(declare-fun array_inv!2174 (array!6828) Bool)

(declare-fun array_inv!2175 (array!6826) Bool)

(assert (=> b!2041867 (= e!1289251 (and tp!606223 tp!606234 tp!606228 (array_inv!2174 (_keys!2276 (v!27048 (underlying!4153 (v!27049 (underlying!4154 (cache!2274 cacheUp!562))))))) (array_inv!2175 (_values!2259 (v!27048 (underlying!4153 (v!27049 (underlying!4154 (cache!2274 cacheUp!562))))))) e!1289250))))

(declare-fun mapNonEmpty!9156 () Bool)

(declare-fun mapRes!9157 () Bool)

(declare-fun tp!606214 () Bool)

(declare-fun tp!606215 () Bool)

(assert (=> mapNonEmpty!9156 (= mapRes!9157 (and tp!606214 tp!606215))))

(declare-datatypes ((Hashable!1894 0))(
  ( (HashableExt!1893 (__x!13812 Int)) )
))
(declare-datatypes ((tuple3!2020 0))(
  ( (tuple3!2021 (_1!11967 Regex!5431) (_2!11967 Context!2002) (_3!1474 C!11008)) )
))
(declare-datatypes ((tuple2!20986 0))(
  ( (tuple2!20987 (_1!11968 tuple3!2020) (_2!11968 (InoxSet Context!2002))) )
))
(declare-datatypes ((List!22407 0))(
  ( (Nil!22323) (Cons!22323 (h!27724 tuple2!20986) (t!191521 List!22407)) )
))
(declare-datatypes ((array!6830 0))(
  ( (array!6831 (arr!3033 (Array (_ BitVec 32) List!22407)) (size!17467 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3960 0))(
  ( (LongMapFixedSize!3961 (defaultEntry!2345 Int) (mask!6011 (_ BitVec 32)) (extraKeys!2228 (_ BitVec 32)) (zeroValue!2238 List!22407) (minValue!2238 List!22407) (_size!4011 (_ BitVec 32)) (_keys!2277 array!6828) (_values!2260 array!6830) (_vacant!2041 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7745 0))(
  ( (Cell!7746 (v!27050 LongMapFixedSize!3960)) )
))
(declare-datatypes ((MutLongMap!1980 0))(
  ( (LongMap!1980 (underlying!4155 Cell!7745)) (MutLongMapExt!1979 (__x!13813 Int)) )
))
(declare-datatypes ((Cell!7747 0))(
  ( (Cell!7748 (v!27051 MutLongMap!1980)) )
))
(declare-datatypes ((MutableMap!1894 0))(
  ( (MutableMapExt!1893 (__x!13814 Int)) (HashMap!1894 (underlying!4156 Cell!7747) (hashF!3817 Hashable!1894) (_size!4012 (_ BitVec 32)) (defaultValue!2056 Int)) )
))
(declare-datatypes ((CacheDown!1190 0))(
  ( (CacheDown!1191 (cache!2275 MutableMap!1894)) )
))
(declare-fun cacheDown!575 () CacheDown!1190)

(declare-fun mapKey!9157 () (_ BitVec 32))

(declare-fun mapValue!9157 () List!22407)

(declare-fun mapRest!9157 () (Array (_ BitVec 32) List!22407))

(assert (=> mapNonEmpty!9156 (= (arr!3033 (_values!2260 (v!27050 (underlying!4155 (v!27051 (underlying!4156 (cache!2275 cacheDown!575))))))) (store mapRest!9157 mapKey!9157 mapValue!9157))))

(declare-fun b!2041868 () Bool)

(declare-fun e!1289243 () Bool)

(declare-fun e!1289231 () Bool)

(assert (=> b!2041868 (= e!1289243 e!1289231)))

(declare-fun b!2041869 () Bool)

(declare-fun e!1289230 () Bool)

(declare-fun e!1289236 () Bool)

(declare-fun lt!765801 () MutLongMap!1980)

(get-info :version)

(assert (=> b!2041869 (= e!1289230 (and e!1289236 ((_ is LongMap!1980) lt!765801)))))

(assert (=> b!2041869 (= lt!765801 (v!27051 (underlying!4156 (cache!2275 cacheDown!575))))))

(declare-fun b!2041871 () Bool)

(declare-fun e!1289246 () Bool)

(assert (=> b!2041871 (= e!1289246 true)))

(declare-fun lt!765802 () Bool)

(declare-fun rulesValidInductive!1391 (LexerInterface!3618 List!22404) Bool)

(assert (=> b!2041871 (= lt!765802 (rulesValidInductive!1391 thiss!12889 rules!1563))))

(declare-fun b!2041872 () Bool)

(declare-fun e!1289227 () Bool)

(declare-fun tp!606233 () Bool)

(assert (=> b!2041872 (= e!1289227 (and tp!606233 mapRes!9157))))

(declare-fun condMapEmpty!9157 () Bool)

(declare-fun mapDefault!9157 () List!22407)

(assert (=> b!2041872 (= condMapEmpty!9157 (= (arr!3033 (_values!2260 (v!27050 (underlying!4155 (v!27051 (underlying!4156 (cache!2275 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22407)) mapDefault!9157)))))

(declare-fun b!2041873 () Bool)

(declare-fun e!1289237 () Bool)

(declare-fun e!1289225 () Bool)

(assert (=> b!2041873 (= e!1289237 e!1289225)))

(declare-fun b!2041874 () Bool)

(declare-fun e!1289241 () Bool)

(declare-fun treated!60 () BalanceConc!14732)

(declare-fun tp!606216 () Bool)

(declare-fun inv!29662 (Conc!7485) Bool)

(assert (=> b!2041874 (= e!1289241 (and (inv!29662 (c!330855 treated!60)) tp!606216))))

(declare-fun b!2041875 () Bool)

(assert (=> b!2041875 (= e!1289236 e!1289243)))

(declare-fun tp!606230 () Bool)

(declare-fun tp!606217 () Bool)

(declare-fun array_inv!2176 (array!6830) Bool)

(assert (=> b!2041876 (= e!1289231 (and tp!606227 tp!606217 tp!606230 (array_inv!2174 (_keys!2277 (v!27050 (underlying!4155 (v!27051 (underlying!4156 (cache!2275 cacheDown!575))))))) (array_inv!2176 (_values!2260 (v!27050 (underlying!4155 (v!27051 (underlying!4156 (cache!2275 cacheDown!575))))))) e!1289227))))

(declare-fun b!2041877 () Bool)

(declare-fun e!1289233 () Bool)

(declare-fun e!1289240 () Bool)

(assert (=> b!2041877 (= e!1289233 e!1289240)))

(declare-fun res!894876 () Bool)

(assert (=> b!2041877 (=> (not res!894876) (not e!1289240))))

(declare-datatypes ((Token!7560 0))(
  ( (Token!7561 (value!125793 TokenValue!4141) (rule!6241 Rule!7810) (size!17468 Int) (originalCharacters!4811 List!22403)) )
))
(declare-datatypes ((List!22408 0))(
  ( (Nil!22324) (Cons!22324 (h!27725 Token!7560) (t!191522 List!22408)) )
))
(declare-datatypes ((IArray!14977 0))(
  ( (IArray!14978 (innerList!7546 List!22408)) )
))
(declare-datatypes ((Conc!7486 0))(
  ( (Node!7486 (left!17766 Conc!7486) (right!18096 Conc!7486) (csize!15202 Int) (cheight!7697 Int)) (Leaf!10969 (xs!10394 IArray!14977) (csize!15203 Int)) (Empty!7486) )
))
(declare-datatypes ((BalanceConc!14734 0))(
  ( (BalanceConc!14735 (c!330857 Conc!7486)) )
))
(declare-datatypes ((tuple2!20988 0))(
  ( (tuple2!20989 (_1!11969 BalanceConc!14734) (_2!11969 BalanceConc!14732)) )
))
(declare-fun lt!765803 () tuple2!20988)

(declare-fun acc!382 () BalanceConc!14734)

(declare-fun lt!765805 () tuple2!20988)

(declare-fun list!9158 (BalanceConc!14734) List!22408)

(declare-fun ++!6065 (BalanceConc!14734 BalanceConc!14734) BalanceConc!14734)

(assert (=> b!2041877 (= res!894876 (= (list!9158 (_1!11969 lt!765803)) (list!9158 (++!6065 acc!382 (_1!11969 lt!765805)))))))

(declare-fun input!986 () BalanceConc!14732)

(declare-fun lexRec!423 (LexerInterface!3618 List!22404 BalanceConc!14732) tuple2!20988)

(assert (=> b!2041877 (= lt!765805 (lexRec!423 thiss!12889 rules!1563 input!986))))

(declare-fun totalInput!418 () BalanceConc!14732)

(assert (=> b!2041877 (= lt!765803 (lexRec!423 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2041878 () Bool)

(declare-fun e!1289234 () Bool)

(declare-fun tp!606231 () Bool)

(assert (=> b!2041878 (= e!1289234 (and (inv!29662 (c!330855 totalInput!418)) tp!606231))))

(declare-fun b!2041879 () Bool)

(declare-fun res!894873 () Bool)

(assert (=> b!2041879 (=> (not res!894873) (not e!1289240))))

(declare-fun list!9159 (BalanceConc!14732) List!22403)

(assert (=> b!2041879 (= res!894873 (= (list!9159 (_2!11969 lt!765803)) (list!9159 (_2!11969 lt!765805))))))

(declare-fun e!1289245 () Bool)

(declare-fun e!1289235 () Bool)

(assert (=> b!2041880 (= e!1289245 (and e!1289235 tp!606229))))

(declare-fun b!2041881 () Bool)

(declare-fun res!894874 () Bool)

(assert (=> b!2041881 (=> (not res!894874) (not e!1289240))))

(declare-fun valid!1581 (CacheDown!1190) Bool)

(assert (=> b!2041881 (= res!894874 (valid!1581 cacheDown!575))))

(declare-fun b!2041882 () Bool)

(declare-fun res!894875 () Bool)

(assert (=> b!2041882 (=> (not res!894875) (not e!1289240))))

(declare-fun valid!1582 (CacheUp!1190) Bool)

(assert (=> b!2041882 (= res!894875 (valid!1582 cacheUp!562))))

(declare-fun b!2041883 () Bool)

(declare-fun e!1289248 () Bool)

(declare-fun tp!606220 () Bool)

(declare-fun inv!29663 (Conc!7486) Bool)

(assert (=> b!2041883 (= e!1289248 (and (inv!29663 (c!330857 acc!382)) tp!606220))))

(declare-fun b!2041884 () Bool)

(assert (=> b!2041884 (= e!1289240 (not e!1289246))))

(declare-fun res!894880 () Bool)

(assert (=> b!2041884 (=> res!894880 e!1289246)))

(declare-fun lt!765806 () List!22403)

(declare-fun lt!765800 () List!22403)

(declare-fun isSuffix!467 (List!22403 List!22403) Bool)

(assert (=> b!2041884 (= res!894880 (not (isSuffix!467 lt!765806 lt!765800)))))

(declare-fun lt!765804 () List!22403)

(assert (=> b!2041884 (isSuffix!467 lt!765806 lt!765804)))

(declare-datatypes ((Unit!36995 0))(
  ( (Unit!36996) )
))
(declare-fun lt!765807 () Unit!36995)

(declare-fun lt!765797 () List!22403)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!368 (List!22403 List!22403) Unit!36995)

(assert (=> b!2041884 (= lt!765807 (lemmaConcatTwoListThenFSndIsSuffix!368 lt!765797 lt!765806))))

(declare-fun b!2041885 () Bool)

(declare-fun e!1289232 () Bool)

(assert (=> b!2041885 (= e!1289232 e!1289245)))

(declare-fun b!2041886 () Bool)

(declare-fun e!1289224 () Bool)

(assert (=> b!2041886 (= e!1289249 e!1289224)))

(declare-fun res!894881 () Bool)

(assert (=> b!2041886 (=> (not res!894881) (not e!1289224))))

(assert (=> b!2041886 (= res!894881 (= lt!765800 lt!765804))))

(declare-fun ++!6066 (List!22403 List!22403) List!22403)

(assert (=> b!2041886 (= lt!765804 (++!6066 lt!765797 lt!765806))))

(assert (=> b!2041886 (= lt!765800 (list!9159 totalInput!418))))

(assert (=> b!2041886 (= lt!765806 (list!9159 input!986))))

(assert (=> b!2041886 (= lt!765797 (list!9159 treated!60))))

(declare-fun b!2041887 () Bool)

(declare-fun tp!606224 () Bool)

(declare-fun mapRes!9156 () Bool)

(assert (=> b!2041887 (= e!1289250 (and tp!606224 mapRes!9156))))

(declare-fun condMapEmpty!9156 () Bool)

(declare-fun mapDefault!9156 () List!22406)

(assert (=> b!2041887 (= condMapEmpty!9156 (= (arr!3031 (_values!2259 (v!27048 (underlying!4153 (v!27049 (underlying!4154 (cache!2274 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22406)) mapDefault!9156)))))

(declare-fun b!2041888 () Bool)

(declare-fun e!1289247 () Bool)

(assert (=> b!2041888 (= e!1289247 e!1289251)))

(declare-fun mapIsEmpty!9156 () Bool)

(assert (=> mapIsEmpty!9156 mapRes!9157))

(declare-fun b!2041889 () Bool)

(declare-fun e!1289242 () Bool)

(declare-fun tp!606218 () Bool)

(assert (=> b!2041889 (= e!1289242 (and (inv!29662 (c!330855 input!986)) tp!606218))))

(declare-fun mapIsEmpty!9157 () Bool)

(assert (=> mapIsEmpty!9157 mapRes!9156))

(declare-fun b!2041870 () Bool)

(declare-fun res!894883 () Bool)

(assert (=> b!2041870 (=> (not res!894883) (not e!1289233))))

(declare-fun lt!765798 () tuple2!20988)

(declare-fun isEmpty!13952 (List!22403) Bool)

(assert (=> b!2041870 (= res!894883 (isEmpty!13952 (list!9159 (_2!11969 lt!765798))))))

(declare-fun res!894878 () Bool)

(assert (=> start!201248 (=> (not res!894878) (not e!1289249))))

(assert (=> start!201248 (= res!894878 ((_ is Lexer!3616) thiss!12889))))

(assert (=> start!201248 e!1289249))

(declare-fun inv!29664 (CacheDown!1190) Bool)

(assert (=> start!201248 (and (inv!29664 cacheDown!575) e!1289237)))

(assert (=> start!201248 true))

(declare-fun inv!29665 (CacheUp!1190) Bool)

(assert (=> start!201248 (and (inv!29665 cacheUp!562) e!1289232)))

(assert (=> start!201248 e!1289226))

(declare-fun inv!29666 (BalanceConc!14732) Bool)

(assert (=> start!201248 (and (inv!29666 totalInput!418) e!1289234)))

(assert (=> start!201248 (and (inv!29666 treated!60) e!1289241)))

(assert (=> start!201248 (and (inv!29666 input!986) e!1289242)))

(declare-fun inv!29667 (BalanceConc!14734) Bool)

(assert (=> start!201248 (and (inv!29667 acc!382) e!1289248)))

(declare-fun mapNonEmpty!9157 () Bool)

(declare-fun tp!606226 () Bool)

(declare-fun tp!606222 () Bool)

(assert (=> mapNonEmpty!9157 (= mapRes!9156 (and tp!606226 tp!606222))))

(declare-fun mapRest!9156 () (Array (_ BitVec 32) List!22406))

(declare-fun mapValue!9156 () List!22406)

(declare-fun mapKey!9156 () (_ BitVec 32))

(assert (=> mapNonEmpty!9157 (= (arr!3031 (_values!2259 (v!27048 (underlying!4153 (v!27049 (underlying!4154 (cache!2274 cacheUp!562))))))) (store mapRest!9156 mapKey!9156 mapValue!9156))))

(declare-fun b!2041890 () Bool)

(declare-fun e!1289229 () Bool)

(assert (=> b!2041890 (= e!1289229 e!1289247)))

(declare-fun b!2041891 () Bool)

(declare-fun res!894879 () Bool)

(assert (=> b!2041891 (=> (not res!894879) (not e!1289249))))

(declare-fun isEmpty!13953 (List!22404) Bool)

(assert (=> b!2041891 (= res!894879 (not (isEmpty!13953 rules!1563)))))

(declare-fun b!2041892 () Bool)

(assert (=> b!2041892 (= e!1289224 e!1289233)))

(declare-fun res!894882 () Bool)

(assert (=> b!2041892 (=> (not res!894882) (not e!1289233))))

(assert (=> b!2041892 (= res!894882 (= (list!9158 (_1!11969 lt!765798)) (list!9158 acc!382)))))

(assert (=> b!2041892 (= lt!765798 (lexRec!423 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2041893 () Bool)

(declare-fun lt!765799 () MutLongMap!1979)

(assert (=> b!2041893 (= e!1289235 (and e!1289229 ((_ is LongMap!1979) lt!765799)))))

(assert (=> b!2041893 (= lt!765799 (v!27049 (underlying!4154 (cache!2274 cacheUp!562))))))

(assert (=> b!2041894 (= e!1289252 (and tp!606219 tp!606225))))

(assert (=> b!2041895 (= e!1289225 (and e!1289230 tp!606232))))

(assert (= (and start!201248 res!894878) b!2041891))

(assert (= (and b!2041891 res!894879) b!2041864))

(assert (= (and b!2041864 res!894877) b!2041886))

(assert (= (and b!2041886 res!894881) b!2041892))

(assert (= (and b!2041892 res!894882) b!2041870))

(assert (= (and b!2041870 res!894883) b!2041877))

(assert (= (and b!2041877 res!894876) b!2041879))

(assert (= (and b!2041879 res!894873) b!2041882))

(assert (= (and b!2041882 res!894875) b!2041881))

(assert (= (and b!2041881 res!894874) b!2041884))

(assert (= (and b!2041884 (not res!894880)) b!2041871))

(assert (= (and b!2041872 condMapEmpty!9157) mapIsEmpty!9156))

(assert (= (and b!2041872 (not condMapEmpty!9157)) mapNonEmpty!9156))

(assert (= b!2041876 b!2041872))

(assert (= b!2041868 b!2041876))

(assert (= b!2041875 b!2041868))

(assert (= (and b!2041869 ((_ is LongMap!1980) (v!27051 (underlying!4156 (cache!2275 cacheDown!575))))) b!2041875))

(assert (= b!2041895 b!2041869))

(assert (= (and b!2041873 ((_ is HashMap!1894) (cache!2275 cacheDown!575))) b!2041895))

(assert (= start!201248 b!2041873))

(assert (= (and b!2041887 condMapEmpty!9156) mapIsEmpty!9157))

(assert (= (and b!2041887 (not condMapEmpty!9156)) mapNonEmpty!9157))

(assert (= b!2041867 b!2041887))

(assert (= b!2041888 b!2041867))

(assert (= b!2041890 b!2041888))

(assert (= (and b!2041893 ((_ is LongMap!1979) (v!27049 (underlying!4154 (cache!2274 cacheUp!562))))) b!2041890))

(assert (= b!2041880 b!2041893))

(assert (= (and b!2041885 ((_ is HashMap!1893) (cache!2274 cacheUp!562))) b!2041880))

(assert (= start!201248 b!2041885))

(assert (= b!2041865 b!2041894))

(assert (= b!2041866 b!2041865))

(assert (= (and start!201248 ((_ is Cons!22320) rules!1563)) b!2041866))

(assert (= start!201248 b!2041878))

(assert (= start!201248 b!2041874))

(assert (= start!201248 b!2041889))

(assert (= start!201248 b!2041883))

(declare-fun m!2485931 () Bool)

(assert (=> b!2041864 m!2485931))

(declare-fun m!2485933 () Bool)

(assert (=> b!2041876 m!2485933))

(declare-fun m!2485935 () Bool)

(assert (=> b!2041876 m!2485935))

(declare-fun m!2485937 () Bool)

(assert (=> b!2041865 m!2485937))

(declare-fun m!2485939 () Bool)

(assert (=> b!2041865 m!2485939))

(declare-fun m!2485941 () Bool)

(assert (=> b!2041879 m!2485941))

(declare-fun m!2485943 () Bool)

(assert (=> b!2041879 m!2485943))

(declare-fun m!2485945 () Bool)

(assert (=> b!2041889 m!2485945))

(declare-fun m!2485947 () Bool)

(assert (=> b!2041867 m!2485947))

(declare-fun m!2485949 () Bool)

(assert (=> b!2041867 m!2485949))

(declare-fun m!2485951 () Bool)

(assert (=> b!2041871 m!2485951))

(declare-fun m!2485953 () Bool)

(assert (=> b!2041877 m!2485953))

(declare-fun m!2485955 () Bool)

(assert (=> b!2041877 m!2485955))

(declare-fun m!2485957 () Bool)

(assert (=> b!2041877 m!2485957))

(declare-fun m!2485959 () Bool)

(assert (=> b!2041877 m!2485959))

(assert (=> b!2041877 m!2485955))

(declare-fun m!2485961 () Bool)

(assert (=> b!2041877 m!2485961))

(declare-fun m!2485963 () Bool)

(assert (=> mapNonEmpty!9156 m!2485963))

(declare-fun m!2485965 () Bool)

(assert (=> b!2041892 m!2485965))

(declare-fun m!2485967 () Bool)

(assert (=> b!2041892 m!2485967))

(declare-fun m!2485969 () Bool)

(assert (=> b!2041892 m!2485969))

(declare-fun m!2485971 () Bool)

(assert (=> b!2041886 m!2485971))

(declare-fun m!2485973 () Bool)

(assert (=> b!2041886 m!2485973))

(declare-fun m!2485975 () Bool)

(assert (=> b!2041886 m!2485975))

(declare-fun m!2485977 () Bool)

(assert (=> b!2041886 m!2485977))

(declare-fun m!2485979 () Bool)

(assert (=> mapNonEmpty!9157 m!2485979))

(declare-fun m!2485981 () Bool)

(assert (=> b!2041870 m!2485981))

(assert (=> b!2041870 m!2485981))

(declare-fun m!2485983 () Bool)

(assert (=> b!2041870 m!2485983))

(declare-fun m!2485985 () Bool)

(assert (=> start!201248 m!2485985))

(declare-fun m!2485987 () Bool)

(assert (=> start!201248 m!2485987))

(declare-fun m!2485989 () Bool)

(assert (=> start!201248 m!2485989))

(declare-fun m!2485991 () Bool)

(assert (=> start!201248 m!2485991))

(declare-fun m!2485993 () Bool)

(assert (=> start!201248 m!2485993))

(declare-fun m!2485995 () Bool)

(assert (=> start!201248 m!2485995))

(declare-fun m!2485997 () Bool)

(assert (=> b!2041882 m!2485997))

(declare-fun m!2485999 () Bool)

(assert (=> b!2041891 m!2485999))

(declare-fun m!2486001 () Bool)

(assert (=> b!2041883 m!2486001))

(declare-fun m!2486003 () Bool)

(assert (=> b!2041884 m!2486003))

(declare-fun m!2486005 () Bool)

(assert (=> b!2041884 m!2486005))

(declare-fun m!2486007 () Bool)

(assert (=> b!2041884 m!2486007))

(declare-fun m!2486009 () Bool)

(assert (=> b!2041878 m!2486009))

(declare-fun m!2486011 () Bool)

(assert (=> b!2041874 m!2486011))

(declare-fun m!2486013 () Bool)

(assert (=> b!2041881 m!2486013))

(check-sat (not b_next!57621) (not b!2041891) (not b!2041884) (not b!2041886) b_and!162855 b_and!162859 (not b!2041881) (not b!2041883) (not b!2041879) (not b!2041887) (not mapNonEmpty!9157) b_and!162857 (not b!2041871) (not b_next!57623) (not b!2041876) (not b!2041878) (not b!2041870) (not b!2041877) (not b_next!57619) (not b!2041872) b_and!162851 b_and!162853 (not b!2041865) (not b!2041864) (not b!2041882) (not b_next!57617) (not mapNonEmpty!9156) (not b_next!57613) (not b!2041889) b_and!162849 (not start!201248) (not b!2041892) (not b!2041874) (not b!2041866) (not b!2041867) (not b_next!57615))
(check-sat (not b_next!57621) b_and!162855 b_and!162851 b_and!162859 b_and!162853 b_and!162857 b_and!162849 (not b_next!57623) (not b_next!57615) (not b_next!57619) (not b_next!57617) (not b_next!57613))
