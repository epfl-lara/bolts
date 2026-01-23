; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184798 () Bool)

(assert start!184798)

(declare-fun b!1851653 () Bool)

(declare-fun b_free!51815 () Bool)

(declare-fun b_next!52519 () Bool)

(assert (=> b!1851653 (= b_free!51815 (not b_next!52519))))

(declare-fun tp!524549 () Bool)

(declare-fun b_and!144049 () Bool)

(assert (=> b!1851653 (= tp!524549 b_and!144049)))

(declare-fun b!1851635 () Bool)

(declare-fun b_free!51817 () Bool)

(declare-fun b_next!52521 () Bool)

(assert (=> b!1851635 (= b_free!51817 (not b_next!52521))))

(declare-fun tp!524559 () Bool)

(declare-fun b_and!144051 () Bool)

(assert (=> b!1851635 (= tp!524559 b_and!144051)))

(declare-fun b!1851640 () Bool)

(declare-fun b_free!51819 () Bool)

(declare-fun b_next!52523 () Bool)

(assert (=> b!1851640 (= b_free!51819 (not b_next!52523))))

(declare-fun tp!524561 () Bool)

(declare-fun b_and!144053 () Bool)

(assert (=> b!1851640 (= tp!524561 b_and!144053)))

(declare-fun b_free!51821 () Bool)

(declare-fun b_next!52525 () Bool)

(assert (=> b!1851640 (= b_free!51821 (not b_next!52525))))

(declare-fun tp!524552 () Bool)

(declare-fun b_and!144055 () Bool)

(assert (=> b!1851640 (= tp!524552 b_and!144055)))

(declare-fun b!1851639 () Bool)

(declare-fun b_free!51823 () Bool)

(declare-fun b_next!52527 () Bool)

(assert (=> b!1851639 (= b_free!51823 (not b_next!52527))))

(declare-fun tp!524565 () Bool)

(declare-fun b_and!144057 () Bool)

(assert (=> b!1851639 (= tp!524565 b_and!144057)))

(declare-fun b!1851645 () Bool)

(declare-fun b_free!51825 () Bool)

(declare-fun b_next!52529 () Bool)

(assert (=> b!1851645 (= b_free!51825 (not b_next!52529))))

(declare-fun tp!524550 () Bool)

(declare-fun b_and!144059 () Bool)

(assert (=> b!1851645 (= tp!524550 b_and!144059)))

(declare-fun b!1851634 () Bool)

(declare-fun e!1183421 () Bool)

(declare-fun e!1183412 () Bool)

(assert (=> b!1851634 (= e!1183421 e!1183412)))

(declare-fun e!1183416 () Bool)

(declare-fun e!1183417 () Bool)

(assert (=> b!1851635 (= e!1183416 (and e!1183417 tp!524559))))

(declare-fun b!1851636 () Bool)

(declare-fun e!1183414 () Bool)

(assert (=> b!1851636 (= e!1183414 e!1183421)))

(declare-fun b!1851637 () Bool)

(declare-fun res!830966 () Bool)

(declare-fun e!1183415 () Bool)

(assert (=> b!1851637 (=> (not res!830966) (not e!1183415))))

(declare-datatypes ((C!10224 0))(
  ( (C!10225 (val!5838 Int)) )
))
(declare-datatypes ((Regex!5037 0))(
  ( (ElementMatch!5037 (c!302079 C!10224)) (Concat!8827 (regOne!10586 Regex!5037) (regTwo!10586 Regex!5037)) (EmptyExpr!5037) (Star!5037 (reg!5366 Regex!5037)) (EmptyLang!5037) (Union!5037 (regOne!10587 Regex!5037) (regTwo!10587 Regex!5037)) )
))
(declare-datatypes ((List!20583 0))(
  ( (Nil!20511) (Cons!20511 (h!25912 Regex!5037) (t!172385 List!20583)) )
))
(declare-datatypes ((Context!1894 0))(
  ( (Context!1895 (exprs!1447 List!20583)) )
))
(declare-datatypes ((tuple3!1906 0))(
  ( (tuple3!1907 (_1!11307 Regex!5037) (_2!11307 Context!1894) (_3!1417 C!10224)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19780 0))(
  ( (tuple2!19781 (_1!11308 tuple3!1906) (_2!11308 (InoxSet Context!1894))) )
))
(declare-datatypes ((array!6470 0))(
  ( (array!6471 (arr!2873 (Array (_ BitVec 32) (_ BitVec 64))) (size!16200 (_ BitVec 32))) )
))
(declare-datatypes ((List!20584 0))(
  ( (Nil!20512) (Cons!20512 (h!25913 tuple2!19780) (t!172386 List!20584)) )
))
(declare-datatypes ((array!6472 0))(
  ( (array!6473 (arr!2874 (Array (_ BitVec 32) List!20584)) (size!16201 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3770 0))(
  ( (LongMapFixedSize!3771 (defaultEntry!2245 Int) (mask!5571 (_ BitVec 32)) (extraKeys!2132 (_ BitVec 32)) (zeroValue!2142 List!20584) (minValue!2142 List!20584) (_size!3851 (_ BitVec 32)) (_keys!2179 array!6470) (_values!2164 array!6472) (_vacant!1946 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7425 0))(
  ( (Cell!7426 (v!26005 LongMapFixedSize!3770)) )
))
(declare-datatypes ((Hashable!1829 0))(
  ( (HashableExt!1828 (__x!12912 Int)) )
))
(declare-datatypes ((MutLongMap!1885 0))(
  ( (LongMap!1885 (underlying!3983 Cell!7425)) (MutLongMapExt!1884 (__x!12913 Int)) )
))
(declare-datatypes ((Cell!7427 0))(
  ( (Cell!7428 (v!26006 MutLongMap!1885)) )
))
(declare-datatypes ((MutableMap!1829 0))(
  ( (MutableMapExt!1828 (__x!12914 Int)) (HashMap!1829 (underlying!3984 Cell!7427) (hashF!3748 Hashable!1829) (_size!3852 (_ BitVec 32)) (defaultValue!1989 Int)) )
))
(declare-datatypes ((CacheDown!1126 0))(
  ( (CacheDown!1127 (cache!2210 MutableMap!1829)) )
))
(declare-fun cacheDown!454 () CacheDown!1126)

(declare-fun valid!1503 (CacheDown!1126) Bool)

(assert (=> b!1851637 (= res!830966 (valid!1503 cacheDown!454))))

(declare-fun e!1183418 () Bool)

(declare-fun e!1183410 () Bool)

(assert (=> b!1851639 (= e!1183418 (and e!1183410 tp!524565))))

(declare-fun e!1183423 () Bool)

(assert (=> b!1851640 (= e!1183423 (and tp!524561 tp!524552))))

(declare-fun mapNonEmpty!8790 () Bool)

(declare-fun mapRes!8790 () Bool)

(declare-fun tp!524551 () Bool)

(declare-fun tp!524563 () Bool)

(assert (=> mapNonEmpty!8790 (= mapRes!8790 (and tp!524551 tp!524563))))

(declare-datatypes ((tuple2!19782 0))(
  ( (tuple2!19783 (_1!11309 Context!1894) (_2!11309 C!10224)) )
))
(declare-datatypes ((tuple2!19784 0))(
  ( (tuple2!19785 (_1!11310 tuple2!19782) (_2!11310 (InoxSet Context!1894))) )
))
(declare-datatypes ((List!20585 0))(
  ( (Nil!20513) (Cons!20513 (h!25914 tuple2!19784) (t!172387 List!20585)) )
))
(declare-fun mapValue!8790 () List!20585)

(declare-fun mapKey!8790 () (_ BitVec 32))

(declare-datatypes ((array!6474 0))(
  ( (array!6475 (arr!2875 (Array (_ BitVec 32) List!20585)) (size!16202 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3772 0))(
  ( (LongMapFixedSize!3773 (defaultEntry!2246 Int) (mask!5572 (_ BitVec 32)) (extraKeys!2133 (_ BitVec 32)) (zeroValue!2143 List!20585) (minValue!2143 List!20585) (_size!3853 (_ BitVec 32)) (_keys!2180 array!6470) (_values!2165 array!6474) (_vacant!1947 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7429 0))(
  ( (Cell!7430 (v!26007 LongMapFixedSize!3772)) )
))
(declare-datatypes ((MutLongMap!1886 0))(
  ( (LongMap!1886 (underlying!3985 Cell!7429)) (MutLongMapExt!1885 (__x!12915 Int)) )
))
(declare-datatypes ((Hashable!1830 0))(
  ( (HashableExt!1829 (__x!12916 Int)) )
))
(declare-datatypes ((Cell!7431 0))(
  ( (Cell!7432 (v!26008 MutLongMap!1886)) )
))
(declare-datatypes ((MutableMap!1830 0))(
  ( (MutableMapExt!1829 (__x!12917 Int)) (HashMap!1830 (underlying!3986 Cell!7431) (hashF!3749 Hashable!1830) (_size!3854 (_ BitVec 32)) (defaultValue!1990 Int)) )
))
(declare-datatypes ((CacheUp!1130 0))(
  ( (CacheUp!1131 (cache!2211 MutableMap!1830)) )
))
(declare-fun cacheUp!441 () CacheUp!1130)

(declare-fun mapRest!8791 () (Array (_ BitVec 32) List!20585))

(assert (=> mapNonEmpty!8790 (= (arr!2875 (_values!2165 (v!26007 (underlying!3985 (v!26008 (underlying!3986 (cache!2211 cacheUp!441))))))) (store mapRest!8791 mapKey!8790 mapValue!8790))))

(declare-fun b!1851641 () Bool)

(declare-fun res!830962 () Bool)

(assert (=> b!1851641 (=> (not res!830962) (not e!1183415))))

(declare-datatypes ((LexerInterface!3296 0))(
  ( (LexerInterfaceExt!3293 (__x!12918 Int)) (Lexer!3294) )
))
(declare-fun thiss!12117 () LexerInterface!3296)

(declare-datatypes ((List!20586 0))(
  ( (Nil!20514) (Cons!20514 (h!25915 (_ BitVec 16)) (t!172388 List!20586)) )
))
(declare-datatypes ((String!23519 0))(
  ( (String!23520 (value!115264 String)) )
))
(declare-datatypes ((TokenValue!3790 0))(
  ( (FloatLiteralValue!7580 (text!26975 List!20586)) (TokenValueExt!3789 (__x!12919 Int)) (Broken!18950 (value!115265 List!20586)) (Object!3861) (End!3790) (Def!3790) (Underscore!3790) (Match!3790) (Else!3790) (Error!3790) (Case!3790) (If!3790) (Extends!3790) (Abstract!3790) (Class!3790) (Val!3790) (DelimiterValue!7580 (del!3850 List!20586)) (KeywordValue!3796 (value!115266 List!20586)) (CommentValue!7580 (value!115267 List!20586)) (WhitespaceValue!7580 (value!115268 List!20586)) (IndentationValue!3790 (value!115269 List!20586)) (String!23521) (Int32!3790) (Broken!18951 (value!115270 List!20586)) (Boolean!3791) (Unit!35137) (OperatorValue!3793 (op!3850 List!20586)) (IdentifierValue!7580 (value!115271 List!20586)) (IdentifierValue!7581 (value!115272 List!20586)) (WhitespaceValue!7581 (value!115273 List!20586)) (True!7580) (False!7580) (Broken!18952 (value!115274 List!20586)) (Broken!18953 (value!115275 List!20586)) (True!7581) (RightBrace!3790) (RightBracket!3790) (Colon!3790) (Null!3790) (Comma!3790) (LeftBracket!3790) (False!7581) (LeftBrace!3790) (ImaginaryLiteralValue!3790 (text!26976 List!20586)) (StringLiteralValue!11370 (value!115276 List!20586)) (EOFValue!3790 (value!115277 List!20586)) (IdentValue!3790 (value!115278 List!20586)) (DelimiterValue!7581 (value!115279 List!20586)) (DedentValue!3790 (value!115280 List!20586)) (NewLineValue!3790 (value!115281 List!20586)) (IntegerValue!11370 (value!115282 (_ BitVec 32)) (text!26977 List!20586)) (IntegerValue!11371 (value!115283 Int) (text!26978 List!20586)) (Times!3790) (Or!3790) (Equal!3790) (Minus!3790) (Broken!18954 (value!115284 List!20586)) (And!3790) (Div!3790) (LessEqual!3790) (Mod!3790) (Concat!8828) (Not!3790) (Plus!3790) (SpaceValue!3790 (value!115285 List!20586)) (IntegerValue!11372 (value!115286 Int) (text!26979 List!20586)) (StringLiteralValue!11371 (text!26980 List!20586)) (FloatLiteralValue!7581 (text!26981 List!20586)) (BytesLiteralValue!3790 (value!115287 List!20586)) (CommentValue!7581 (value!115288 List!20586)) (StringLiteralValue!11372 (value!115289 List!20586)) (ErrorTokenValue!3790 (msg!3851 List!20586)) )
))
(declare-datatypes ((List!20587 0))(
  ( (Nil!20515) (Cons!20515 (h!25916 C!10224) (t!172389 List!20587)) )
))
(declare-datatypes ((IArray!13577 0))(
  ( (IArray!13578 (innerList!6846 List!20587)) )
))
(declare-datatypes ((Conc!6786 0))(
  ( (Node!6786 (left!16468 Conc!6786) (right!16798 Conc!6786) (csize!13802 Int) (cheight!6997 Int)) (Leaf!9929 (xs!9662 IArray!13577) (csize!13803 Int)) (Empty!6786) )
))
(declare-datatypes ((BalanceConc!13494 0))(
  ( (BalanceConc!13495 (c!302080 Conc!6786)) )
))
(declare-datatypes ((TokenValueInjection!7196 0))(
  ( (TokenValueInjection!7197 (toValue!5247 Int) (toChars!5106 Int)) )
))
(declare-datatypes ((Rule!7148 0))(
  ( (Rule!7149 (regex!3674 Regex!5037) (tag!4088 String!23519) (isSeparator!3674 Bool) (transformation!3674 TokenValueInjection!7196)) )
))
(declare-datatypes ((List!20588 0))(
  ( (Nil!20516) (Cons!20516 (h!25917 Rule!7148) (t!172390 List!20588)) )
))
(declare-fun rules!1331 () List!20588)

(declare-fun rulesInvariant!2963 (LexerInterface!3296 List!20588) Bool)

(assert (=> b!1851641 (= res!830962 (rulesInvariant!2963 thiss!12117 rules!1331))))

(declare-fun b!1851642 () Bool)

(declare-fun e!1183406 () Bool)

(assert (=> b!1851642 (= e!1183406 e!1183416)))

(declare-fun b!1851643 () Bool)

(declare-fun res!830964 () Bool)

(assert (=> b!1851643 (=> (not res!830964) (not e!1183415))))

(declare-fun valid!1504 (CacheUp!1130) Bool)

(assert (=> b!1851643 (= res!830964 (valid!1504 cacheUp!441))))

(declare-fun mapIsEmpty!8790 () Bool)

(declare-fun mapRes!8791 () Bool)

(assert (=> mapIsEmpty!8790 mapRes!8791))

(declare-fun b!1851644 () Bool)

(declare-fun e!1183422 () Bool)

(declare-fun e!1183404 () Bool)

(assert (=> b!1851644 (= e!1183422 e!1183404)))

(declare-fun tp!524554 () Bool)

(declare-fun tp!524558 () Bool)

(declare-fun e!1183403 () Bool)

(declare-fun array_inv!2066 (array!6470) Bool)

(declare-fun array_inv!2067 (array!6472) Bool)

(assert (=> b!1851645 (= e!1183412 (and tp!524550 tp!524554 tp!524558 (array_inv!2066 (_keys!2179 (v!26005 (underlying!3983 (v!26006 (underlying!3984 (cache!2210 cacheDown!454))))))) (array_inv!2067 (_values!2164 (v!26005 (underlying!3983 (v!26006 (underlying!3984 (cache!2210 cacheDown!454))))))) e!1183403))))

(declare-fun mapIsEmpty!8791 () Bool)

(assert (=> mapIsEmpty!8791 mapRes!8790))

(declare-fun b!1851638 () Bool)

(declare-fun tp!524548 () Bool)

(assert (=> b!1851638 (= e!1183403 (and tp!524548 mapRes!8791))))

(declare-fun condMapEmpty!8790 () Bool)

(declare-fun mapDefault!8790 () List!20584)

(assert (=> b!1851638 (= condMapEmpty!8790 (= (arr!2874 (_values!2164 (v!26005 (underlying!3983 (v!26006 (underlying!3984 (cache!2210 cacheDown!454))))))) ((as const (Array (_ BitVec 32) List!20584)) mapDefault!8790)))))

(declare-fun res!830963 () Bool)

(assert (=> start!184798 (=> (not res!830963) (not e!1183415))))

(get-info :version)

(assert (=> start!184798 (= res!830963 ((_ is Lexer!3294) thiss!12117))))

(assert (=> start!184798 e!1183415))

(declare-fun e!1183420 () Bool)

(declare-fun inv!26895 (CacheUp!1130) Bool)

(assert (=> start!184798 (and (inv!26895 cacheUp!441) e!1183420)))

(assert (=> start!184798 true))

(declare-fun input!736 () BalanceConc!13494)

(declare-fun e!1183407 () Bool)

(declare-fun inv!26896 (BalanceConc!13494) Bool)

(assert (=> start!184798 (and (inv!26896 input!736) e!1183407)))

(declare-fun inv!26897 (CacheDown!1126) Bool)

(assert (=> start!184798 (and (inv!26897 cacheDown!454) e!1183406)))

(declare-fun e!1183405 () Bool)

(assert (=> start!184798 e!1183405))

(declare-fun b!1851646 () Bool)

(declare-fun res!830965 () Bool)

(assert (=> b!1851646 (=> (not res!830965) (not e!1183415))))

(declare-fun isEmpty!12800 (List!20588) Bool)

(assert (=> b!1851646 (= res!830965 (not (isEmpty!12800 rules!1331)))))

(declare-fun b!1851647 () Bool)

(declare-fun e!1183424 () Bool)

(declare-fun tp!524560 () Bool)

(assert (=> b!1851647 (= e!1183405 (and e!1183424 tp!524560))))

(declare-fun b!1851648 () Bool)

(declare-fun e!1183408 () Bool)

(declare-fun lt!715731 () MutLongMap!1886)

(assert (=> b!1851648 (= e!1183410 (and e!1183408 ((_ is LongMap!1886) lt!715731)))))

(assert (=> b!1851648 (= lt!715731 (v!26008 (underlying!3986 (cache!2211 cacheUp!441))))))

(declare-fun b!1851649 () Bool)

(declare-fun e!1183411 () Bool)

(declare-fun tp!524556 () Bool)

(assert (=> b!1851649 (= e!1183411 (and tp!524556 mapRes!8790))))

(declare-fun condMapEmpty!8791 () Bool)

(declare-fun mapDefault!8791 () List!20585)

(assert (=> b!1851649 (= condMapEmpty!8791 (= (arr!2875 (_values!2165 (v!26007 (underlying!3985 (v!26008 (underlying!3986 (cache!2211 cacheUp!441))))))) ((as const (Array (_ BitVec 32) List!20585)) mapDefault!8791)))))

(declare-fun b!1851650 () Bool)

(assert (=> b!1851650 (= e!1183415 false)))

(declare-datatypes ((Token!6902 0))(
  ( (Token!6903 (value!115290 TokenValue!3790) (rule!5868 Rule!7148) (size!16203 Int) (originalCharacters!4482 List!20587)) )
))
(declare-datatypes ((List!20589 0))(
  ( (Nil!20517) (Cons!20517 (h!25918 Token!6902) (t!172391 List!20589)) )
))
(declare-datatypes ((IArray!13579 0))(
  ( (IArray!13580 (innerList!6847 List!20589)) )
))
(declare-datatypes ((Conc!6787 0))(
  ( (Node!6787 (left!16469 Conc!6787) (right!16799 Conc!6787) (csize!13804 Int) (cheight!6998 Int)) (Leaf!9930 (xs!9663 IArray!13579) (csize!13805 Int)) (Empty!6787) )
))
(declare-datatypes ((BalanceConc!13496 0))(
  ( (BalanceConc!13497 (c!302081 Conc!6787)) )
))
(declare-datatypes ((tuple2!19786 0))(
  ( (tuple2!19787 (_1!11311 BalanceConc!13496) (_2!11311 BalanceConc!13494)) )
))
(declare-datatypes ((tuple3!1908 0))(
  ( (tuple3!1909 (_1!11312 tuple2!19786) (_2!11312 CacheUp!1130) (_3!1418 CacheDown!1126)) )
))
(declare-fun lt!715732 () tuple3!1908)

(declare-fun lexTailRecMem!5 (LexerInterface!3296 List!20588 BalanceConc!13494 BalanceConc!13494 BalanceConc!13494 BalanceConc!13496 CacheUp!1130 CacheDown!1126) tuple3!1908)

(assert (=> b!1851650 (= lt!715732 (lexTailRecMem!5 thiss!12117 rules!1331 input!736 (BalanceConc!13495 Empty!6786) input!736 (BalanceConc!13497 Empty!6787) cacheUp!441 cacheDown!454))))

(declare-fun tp!524557 () Bool)

(declare-fun b!1851651 () Bool)

(declare-fun inv!26891 (String!23519) Bool)

(declare-fun inv!26898 (TokenValueInjection!7196) Bool)

(assert (=> b!1851651 (= e!1183424 (and tp!524557 (inv!26891 (tag!4088 (h!25917 rules!1331))) (inv!26898 (transformation!3674 (h!25917 rules!1331))) e!1183423))))

(declare-fun b!1851652 () Bool)

(assert (=> b!1851652 (= e!1183420 e!1183418)))

(declare-fun mapNonEmpty!8791 () Bool)

(declare-fun tp!524547 () Bool)

(declare-fun tp!524553 () Bool)

(assert (=> mapNonEmpty!8791 (= mapRes!8791 (and tp!524547 tp!524553))))

(declare-fun mapRest!8790 () (Array (_ BitVec 32) List!20584))

(declare-fun mapKey!8791 () (_ BitVec 32))

(declare-fun mapValue!8791 () List!20584)

(assert (=> mapNonEmpty!8791 (= (arr!2874 (_values!2164 (v!26005 (underlying!3983 (v!26006 (underlying!3984 (cache!2210 cacheDown!454))))))) (store mapRest!8790 mapKey!8791 mapValue!8791))))

(declare-fun tp!524555 () Bool)

(declare-fun tp!524562 () Bool)

(declare-fun array_inv!2068 (array!6474) Bool)

(assert (=> b!1851653 (= e!1183404 (and tp!524549 tp!524562 tp!524555 (array_inv!2066 (_keys!2180 (v!26007 (underlying!3985 (v!26008 (underlying!3986 (cache!2211 cacheUp!441))))))) (array_inv!2068 (_values!2165 (v!26007 (underlying!3985 (v!26008 (underlying!3986 (cache!2211 cacheUp!441))))))) e!1183411))))

(declare-fun b!1851654 () Bool)

(declare-fun tp!524564 () Bool)

(declare-fun inv!26899 (Conc!6786) Bool)

(assert (=> b!1851654 (= e!1183407 (and (inv!26899 (c!302080 input!736)) tp!524564))))

(declare-fun b!1851655 () Bool)

(assert (=> b!1851655 (= e!1183408 e!1183422)))

(declare-fun b!1851656 () Bool)

(declare-fun lt!715733 () MutLongMap!1885)

(assert (=> b!1851656 (= e!1183417 (and e!1183414 ((_ is LongMap!1885) lt!715733)))))

(assert (=> b!1851656 (= lt!715733 (v!26006 (underlying!3984 (cache!2210 cacheDown!454))))))

(assert (= (and start!184798 res!830963) b!1851646))

(assert (= (and b!1851646 res!830965) b!1851641))

(assert (= (and b!1851641 res!830962) b!1851643))

(assert (= (and b!1851643 res!830964) b!1851637))

(assert (= (and b!1851637 res!830966) b!1851650))

(assert (= (and b!1851649 condMapEmpty!8791) mapIsEmpty!8791))

(assert (= (and b!1851649 (not condMapEmpty!8791)) mapNonEmpty!8790))

(assert (= b!1851653 b!1851649))

(assert (= b!1851644 b!1851653))

(assert (= b!1851655 b!1851644))

(assert (= (and b!1851648 ((_ is LongMap!1886) (v!26008 (underlying!3986 (cache!2211 cacheUp!441))))) b!1851655))

(assert (= b!1851639 b!1851648))

(assert (= (and b!1851652 ((_ is HashMap!1830) (cache!2211 cacheUp!441))) b!1851639))

(assert (= start!184798 b!1851652))

(assert (= start!184798 b!1851654))

(assert (= (and b!1851638 condMapEmpty!8790) mapIsEmpty!8790))

(assert (= (and b!1851638 (not condMapEmpty!8790)) mapNonEmpty!8791))

(assert (= b!1851645 b!1851638))

(assert (= b!1851634 b!1851645))

(assert (= b!1851636 b!1851634))

(assert (= (and b!1851656 ((_ is LongMap!1885) (v!26006 (underlying!3984 (cache!2210 cacheDown!454))))) b!1851636))

(assert (= b!1851635 b!1851656))

(assert (= (and b!1851642 ((_ is HashMap!1829) (cache!2210 cacheDown!454))) b!1851635))

(assert (= start!184798 b!1851642))

(assert (= b!1851651 b!1851640))

(assert (= b!1851647 b!1851651))

(assert (= (and start!184798 ((_ is Cons!20516) rules!1331)) b!1851647))

(declare-fun m!2278133 () Bool)

(assert (=> b!1851641 m!2278133))

(declare-fun m!2278135 () Bool)

(assert (=> mapNonEmpty!8790 m!2278135))

(declare-fun m!2278137 () Bool)

(assert (=> b!1851637 m!2278137))

(declare-fun m!2278139 () Bool)

(assert (=> b!1851650 m!2278139))

(declare-fun m!2278141 () Bool)

(assert (=> mapNonEmpty!8791 m!2278141))

(declare-fun m!2278143 () Bool)

(assert (=> b!1851654 m!2278143))

(declare-fun m!2278145 () Bool)

(assert (=> b!1851643 m!2278145))

(declare-fun m!2278147 () Bool)

(assert (=> b!1851645 m!2278147))

(declare-fun m!2278149 () Bool)

(assert (=> b!1851645 m!2278149))

(declare-fun m!2278151 () Bool)

(assert (=> b!1851653 m!2278151))

(declare-fun m!2278153 () Bool)

(assert (=> b!1851653 m!2278153))

(declare-fun m!2278155 () Bool)

(assert (=> start!184798 m!2278155))

(declare-fun m!2278157 () Bool)

(assert (=> start!184798 m!2278157))

(declare-fun m!2278159 () Bool)

(assert (=> start!184798 m!2278159))

(declare-fun m!2278161 () Bool)

(assert (=> b!1851646 m!2278161))

(declare-fun m!2278163 () Bool)

(assert (=> b!1851651 m!2278163))

(declare-fun m!2278165 () Bool)

(assert (=> b!1851651 m!2278165))

(check-sat b_and!144055 (not b!1851641) b_and!144051 b_and!144049 (not b_next!52523) (not b!1851653) (not b!1851654) (not mapNonEmpty!8791) (not b!1851646) (not b!1851638) (not b_next!52521) (not start!184798) (not b!1851637) b_and!144057 b_and!144059 (not b!1851647) (not b_next!52519) (not b!1851650) (not b!1851651) (not b!1851645) (not mapNonEmpty!8790) (not b_next!52527) (not b_next!52525) (not b!1851649) (not b!1851643) b_and!144053 (not b_next!52529))
(check-sat b_and!144055 b_and!144051 b_and!144049 (not b_next!52523) (not b_next!52521) b_and!144057 b_and!144059 (not b_next!52519) (not b_next!52527) (not b_next!52525) b_and!144053 (not b_next!52529))
