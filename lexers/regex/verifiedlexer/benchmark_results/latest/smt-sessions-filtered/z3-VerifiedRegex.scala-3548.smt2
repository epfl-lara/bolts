; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205828 () Bool)

(assert start!205828)

(declare-fun b!2105194 () Bool)

(declare-fun b_free!60437 () Bool)

(declare-fun b_next!61141 () Bool)

(assert (=> b!2105194 (= b_free!60437 (not b_next!61141))))

(declare-fun tp!637958 () Bool)

(declare-fun b_and!169999 () Bool)

(assert (=> b!2105194 (= tp!637958 b_and!169999)))

(declare-fun b!2105179 () Bool)

(declare-fun b_free!60439 () Bool)

(declare-fun b_next!61143 () Bool)

(assert (=> b!2105179 (= b_free!60439 (not b_next!61143))))

(declare-fun tp!637944 () Bool)

(declare-fun b_and!170001 () Bool)

(assert (=> b!2105179 (= tp!637944 b_and!170001)))

(declare-fun b!2105199 () Bool)

(declare-fun b_free!60441 () Bool)

(declare-fun b_next!61145 () Bool)

(assert (=> b!2105199 (= b_free!60441 (not b_next!61145))))

(declare-fun tp!637948 () Bool)

(declare-fun b_and!170003 () Bool)

(assert (=> b!2105199 (= tp!637948 b_and!170003)))

(declare-fun b!2105175 () Bool)

(declare-fun b_free!60443 () Bool)

(declare-fun b_next!61147 () Bool)

(assert (=> b!2105175 (= b_free!60443 (not b_next!61147))))

(declare-fun tp!637951 () Bool)

(declare-fun b_and!170005 () Bool)

(assert (=> b!2105175 (= tp!637951 b_and!170005)))

(declare-fun b!2105190 () Bool)

(declare-fun b_free!60445 () Bool)

(declare-fun b_next!61149 () Bool)

(assert (=> b!2105190 (= b_free!60445 (not b_next!61149))))

(declare-fun tp!637960 () Bool)

(declare-fun b_and!170007 () Bool)

(assert (=> b!2105190 (= tp!637960 b_and!170007)))

(declare-fun b_free!60447 () Bool)

(declare-fun b_next!61151 () Bool)

(assert (=> b!2105190 (= b_free!60447 (not b_next!61151))))

(declare-fun tp!637961 () Bool)

(declare-fun b_and!170009 () Bool)

(assert (=> b!2105190 (= tp!637961 b_and!170009)))

(declare-fun mapNonEmpty!10800 () Bool)

(declare-fun mapRes!10800 () Bool)

(declare-fun tp!637950 () Bool)

(declare-fun tp!637962 () Bool)

(assert (=> mapNonEmpty!10800 (= mapRes!10800 (and tp!637950 tp!637962))))

(declare-fun mapKey!10801 () (_ BitVec 32))

(declare-datatypes ((C!11272 0))(
  ( (C!11273 (val!6622 Int)) )
))
(declare-datatypes ((Regex!5563 0))(
  ( (ElementMatch!5563 (c!338862 C!11272)) (Concat!9832 (regOne!11638 Regex!5563) (regTwo!11638 Regex!5563)) (EmptyExpr!5563) (Star!5563 (reg!5892 Regex!5563)) (EmptyLang!5563) (Union!5563 (regOne!11639 Regex!5563) (regTwo!11639 Regex!5563)) )
))
(declare-datatypes ((List!23299 0))(
  ( (Nil!23215) (Cons!23215 (h!28616 Regex!5563) (t!195792 List!23299)) )
))
(declare-datatypes ((Context!2266 0))(
  ( (Context!2267 (exprs!1633 List!23299)) )
))
(declare-datatypes ((tuple2!22470 0))(
  ( (tuple2!22471 (_1!12975 Context!2266) (_2!12975 C!11272)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22472 0))(
  ( (tuple2!22473 (_1!12976 tuple2!22470) (_2!12976 (InoxSet Context!2266))) )
))
(declare-datatypes ((List!23300 0))(
  ( (Nil!23216) (Cons!23216 (h!28617 tuple2!22472) (t!195793 List!23300)) )
))
(declare-fun mapRest!10800 () (Array (_ BitVec 32) List!23300))

(declare-datatypes ((array!7708 0))(
  ( (array!7709 (arr!3418 (Array (_ BitVec 32) (_ BitVec 64))) (size!18121 (_ BitVec 32))) )
))
(declare-datatypes ((array!7710 0))(
  ( (array!7711 (arr!3419 (Array (_ BitVec 32) List!23300)) (size!18122 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4468 0))(
  ( (LongMapFixedSize!4469 (defaultEntry!2599 Int) (mask!6331 (_ BitVec 32)) (extraKeys!2482 (_ BitVec 32)) (zeroValue!2492 List!23300) (minValue!2492 List!23300) (_size!4519 (_ BitVec 32)) (_keys!2531 array!7708) (_values!2514 array!7710) (_vacant!2295 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2148 0))(
  ( (HashableExt!2147 (__x!14815 Int)) )
))
(declare-datatypes ((Cell!8761 0))(
  ( (Cell!8762 (v!27780 LongMapFixedSize!4468)) )
))
(declare-datatypes ((MutLongMap!2234 0))(
  ( (LongMap!2234 (underlying!4663 Cell!8761)) (MutLongMapExt!2233 (__x!14816 Int)) )
))
(declare-datatypes ((Cell!8763 0))(
  ( (Cell!8764 (v!27781 MutLongMap!2234)) )
))
(declare-datatypes ((MutableMap!2148 0))(
  ( (MutableMapExt!2147 (__x!14817 Int)) (HashMap!2148 (underlying!4664 Cell!8763) (hashF!4071 Hashable!2148) (_size!4520 (_ BitVec 32)) (defaultValue!2310 Int)) )
))
(declare-datatypes ((CacheUp!1442 0))(
  ( (CacheUp!1443 (cache!2529 MutableMap!2148)) )
))
(declare-fun cacheUp!675 () CacheUp!1442)

(declare-fun mapValue!10800 () List!23300)

(assert (=> mapNonEmpty!10800 (= (arr!3419 (_values!2514 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))))) (store mapRest!10800 mapKey!10801 mapValue!10800))))

(declare-fun b!2105173 () Bool)

(declare-fun e!1337691 () Bool)

(declare-fun tp!637952 () Bool)

(assert (=> b!2105173 (= e!1337691 (and tp!637952 mapRes!10800))))

(declare-fun condMapEmpty!10801 () Bool)

(declare-fun mapDefault!10800 () List!23300)

(assert (=> b!2105173 (= condMapEmpty!10801 (= (arr!3419 (_values!2514 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23300)) mapDefault!10800)))))

(declare-fun b!2105174 () Bool)

(declare-fun e!1337681 () Bool)

(declare-fun e!1337671 () Bool)

(assert (=> b!2105174 (= e!1337681 e!1337671)))

(declare-fun tp!637959 () Bool)

(declare-fun tp!637956 () Bool)

(declare-fun e!1337689 () Bool)

(declare-fun array_inv!2456 (array!7708) Bool)

(declare-fun array_inv!2457 (array!7710) Bool)

(assert (=> b!2105175 (= e!1337689 (and tp!637951 tp!637956 tp!637959 (array_inv!2456 (_keys!2531 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))))) (array_inv!2457 (_values!2514 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))))) e!1337691))))

(declare-fun mapIsEmpty!10800 () Bool)

(assert (=> mapIsEmpty!10800 mapRes!10800))

(declare-fun mapNonEmpty!10801 () Bool)

(declare-fun mapRes!10801 () Bool)

(declare-fun tp!637946 () Bool)

(declare-fun tp!637957 () Bool)

(assert (=> mapNonEmpty!10801 (= mapRes!10801 (and tp!637946 tp!637957))))

(declare-datatypes ((tuple3!2552 0))(
  ( (tuple3!2553 (_1!12977 Regex!5563) (_2!12977 Context!2266) (_3!1740 C!11272)) )
))
(declare-datatypes ((tuple2!22474 0))(
  ( (tuple2!22475 (_1!12978 tuple3!2552) (_2!12978 (InoxSet Context!2266))) )
))
(declare-datatypes ((List!23301 0))(
  ( (Nil!23217) (Cons!23217 (h!28618 tuple2!22474) (t!195794 List!23301)) )
))
(declare-fun mapRest!10801 () (Array (_ BitVec 32) List!23301))

(declare-fun mapKey!10800 () (_ BitVec 32))

(declare-fun mapValue!10801 () List!23301)

(declare-datatypes ((array!7712 0))(
  ( (array!7713 (arr!3420 (Array (_ BitVec 32) List!23301)) (size!18123 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4470 0))(
  ( (LongMapFixedSize!4471 (defaultEntry!2600 Int) (mask!6332 (_ BitVec 32)) (extraKeys!2483 (_ BitVec 32)) (zeroValue!2493 List!23301) (minValue!2493 List!23301) (_size!4521 (_ BitVec 32)) (_keys!2532 array!7708) (_values!2515 array!7712) (_vacant!2296 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8765 0))(
  ( (Cell!8766 (v!27782 LongMapFixedSize!4470)) )
))
(declare-datatypes ((MutLongMap!2235 0))(
  ( (LongMap!2235 (underlying!4665 Cell!8765)) (MutLongMapExt!2234 (__x!14818 Int)) )
))
(declare-datatypes ((Cell!8767 0))(
  ( (Cell!8768 (v!27783 MutLongMap!2235)) )
))
(declare-datatypes ((Hashable!2149 0))(
  ( (HashableExt!2148 (__x!14819 Int)) )
))
(declare-datatypes ((MutableMap!2149 0))(
  ( (MutableMapExt!2148 (__x!14820 Int)) (HashMap!2149 (underlying!4666 Cell!8767) (hashF!4072 Hashable!2149) (_size!4522 (_ BitVec 32)) (defaultValue!2311 Int)) )
))
(declare-datatypes ((CacheDown!1448 0))(
  ( (CacheDown!1449 (cache!2530 MutableMap!2149)) )
))
(declare-fun cacheDown!688 () CacheDown!1448)

(assert (=> mapNonEmpty!10801 (= (arr!3420 (_values!2515 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))))) (store mapRest!10801 mapKey!10800 mapValue!10801))))

(declare-fun mapIsEmpty!10801 () Bool)

(assert (=> mapIsEmpty!10801 mapRes!10801))

(declare-fun b!2105176 () Bool)

(declare-fun e!1337686 () Bool)

(declare-datatypes ((List!23302 0))(
  ( (Nil!23218) (Cons!23218 (h!28619 (_ BitVec 16)) (t!195795 List!23302)) )
))
(declare-datatypes ((TokenValue!4269 0))(
  ( (FloatLiteralValue!8538 (text!30328 List!23302)) (TokenValueExt!4268 (__x!14821 Int)) (Broken!21345 (value!129408 List!23302)) (Object!4352) (End!4269) (Def!4269) (Underscore!4269) (Match!4269) (Else!4269) (Error!4269) (Case!4269) (If!4269) (Extends!4269) (Abstract!4269) (Class!4269) (Val!4269) (DelimiterValue!8538 (del!4329 List!23302)) (KeywordValue!4275 (value!129409 List!23302)) (CommentValue!8538 (value!129410 List!23302)) (WhitespaceValue!8538 (value!129411 List!23302)) (IndentationValue!4269 (value!129412 List!23302)) (String!26540) (Int32!4269) (Broken!21346 (value!129413 List!23302)) (Boolean!4270) (Unit!37449) (OperatorValue!4272 (op!4329 List!23302)) (IdentifierValue!8538 (value!129414 List!23302)) (IdentifierValue!8539 (value!129415 List!23302)) (WhitespaceValue!8539 (value!129416 List!23302)) (True!8538) (False!8538) (Broken!21347 (value!129417 List!23302)) (Broken!21348 (value!129418 List!23302)) (True!8539) (RightBrace!4269) (RightBracket!4269) (Colon!4269) (Null!4269) (Comma!4269) (LeftBracket!4269) (False!8539) (LeftBrace!4269) (ImaginaryLiteralValue!4269 (text!30329 List!23302)) (StringLiteralValue!12807 (value!129419 List!23302)) (EOFValue!4269 (value!129420 List!23302)) (IdentValue!4269 (value!129421 List!23302)) (DelimiterValue!8539 (value!129422 List!23302)) (DedentValue!4269 (value!129423 List!23302)) (NewLineValue!4269 (value!129424 List!23302)) (IntegerValue!12807 (value!129425 (_ BitVec 32)) (text!30330 List!23302)) (IntegerValue!12808 (value!129426 Int) (text!30331 List!23302)) (Times!4269) (Or!4269) (Equal!4269) (Minus!4269) (Broken!21349 (value!129427 List!23302)) (And!4269) (Div!4269) (LessEqual!4269) (Mod!4269) (Concat!9833) (Not!4269) (Plus!4269) (SpaceValue!4269 (value!129428 List!23302)) (IntegerValue!12809 (value!129429 Int) (text!30332 List!23302)) (StringLiteralValue!12808 (text!30333 List!23302)) (FloatLiteralValue!8539 (text!30334 List!23302)) (BytesLiteralValue!4269 (value!129430 List!23302)) (CommentValue!8539 (value!129431 List!23302)) (StringLiteralValue!12809 (value!129432 List!23302)) (ErrorTokenValue!4269 (msg!4330 List!23302)) )
))
(declare-datatypes ((List!23303 0))(
  ( (Nil!23219) (Cons!23219 (h!28620 C!11272) (t!195796 List!23303)) )
))
(declare-datatypes ((IArray!15431 0))(
  ( (IArray!15432 (innerList!7773 List!23303)) )
))
(declare-datatypes ((Conc!7713 0))(
  ( (Node!7713 (left!18129 Conc!7713) (right!18459 Conc!7713) (csize!15656 Int) (cheight!7924 Int)) (Leaf!11262 (xs!10655 IArray!15431) (csize!15657 Int)) (Empty!7713) )
))
(declare-datatypes ((BalanceConc!15188 0))(
  ( (BalanceConc!15189 (c!338863 Conc!7713)) )
))
(declare-datatypes ((String!26541 0))(
  ( (String!26542 (value!129433 String)) )
))
(declare-datatypes ((TokenValueInjection!8122 0))(
  ( (TokenValueInjection!8123 (toValue!5844 Int) (toChars!5703 Int)) )
))
(declare-datatypes ((Rule!8066 0))(
  ( (Rule!8067 (regex!4133 Regex!5563) (tag!4623 String!26541) (isSeparator!4133 Bool) (transformation!4133 TokenValueInjection!8122)) )
))
(declare-datatypes ((List!23304 0))(
  ( (Nil!23220) (Cons!23220 (h!28621 Rule!8066) (t!195797 List!23304)) )
))
(declare-fun rulesArg!349 () List!23304)

(declare-fun isEmpty!14268 (List!23304) Bool)

(assert (=> b!2105176 (= e!1337686 (not (isEmpty!14268 (t!195797 rulesArg!349))))))

(declare-fun b!2105177 () Bool)

(declare-fun e!1337670 () Bool)

(declare-fun e!1337673 () Bool)

(assert (=> b!2105177 (= e!1337670 (not e!1337673))))

(declare-fun res!915360 () Bool)

(assert (=> b!2105177 (=> res!915360 e!1337673)))

(get-info :version)

(assert (=> b!2105177 (= res!915360 (or (and ((_ is Cons!23220) rulesArg!349) ((_ is Nil!23220) (t!195797 rulesArg!349))) (not ((_ is Cons!23220) rulesArg!349))))))

(declare-fun lt!791234 () List!23303)

(declare-fun isPrefix!2068 (List!23303 List!23303) Bool)

(assert (=> b!2105177 (isPrefix!2068 lt!791234 lt!791234)))

(declare-datatypes ((Unit!37450 0))(
  ( (Unit!37451) )
))
(declare-fun lt!791237 () Unit!37450)

(declare-fun lemmaIsPrefixRefl!1386 (List!23303 List!23303) Unit!37450)

(assert (=> b!2105177 (= lt!791237 (lemmaIsPrefixRefl!1386 lt!791234 lt!791234))))

(declare-fun b!2105178 () Bool)

(declare-fun res!915363 () Bool)

(assert (=> b!2105178 (=> (not res!915363) (not e!1337670))))

(declare-fun valid!1772 (CacheUp!1442) Bool)

(assert (=> b!2105178 (= res!915363 (valid!1772 cacheUp!675))))

(declare-fun e!1337687 () Bool)

(declare-fun e!1337683 () Bool)

(assert (=> b!2105179 (= e!1337687 (and e!1337683 tp!637944))))

(declare-fun b!2105180 () Bool)

(declare-fun res!915357 () Bool)

(declare-fun e!1337685 () Bool)

(assert (=> b!2105180 (=> (not res!915357) (not e!1337685))))

(assert (=> b!2105180 (= res!915357 (not (isEmpty!14268 rulesArg!349)))))

(declare-fun b!2105181 () Bool)

(declare-fun e!1337690 () Bool)

(declare-fun e!1337679 () Bool)

(declare-fun lt!791238 () MutLongMap!2234)

(assert (=> b!2105181 (= e!1337690 (and e!1337679 ((_ is LongMap!2234) lt!791238)))))

(assert (=> b!2105181 (= lt!791238 (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))))

(declare-fun b!2105182 () Bool)

(declare-fun res!915358 () Bool)

(assert (=> b!2105182 (=> (not res!915358) (not e!1337685))))

(declare-datatypes ((LexerInterface!3733 0))(
  ( (LexerInterfaceExt!3730 (__x!14822 Int)) (Lexer!3731) )
))
(declare-fun thiss!15689 () LexerInterface!3733)

(declare-fun rulesValidInductive!1450 (LexerInterface!3733 List!23304) Bool)

(assert (=> b!2105182 (= res!915358 (rulesValidInductive!1450 thiss!15689 rulesArg!349))))

(declare-fun b!2105183 () Bool)

(declare-fun res!915362 () Bool)

(assert (=> b!2105183 (=> (not res!915362) (not e!1337670))))

(declare-fun valid!1773 (CacheDown!1448) Bool)

(assert (=> b!2105183 (= res!915362 (valid!1773 cacheDown!688))))

(declare-fun b!2105184 () Bool)

(declare-fun tp!637954 () Bool)

(declare-fun e!1337684 () Bool)

(declare-fun e!1337676 () Bool)

(declare-fun inv!30741 (String!26541) Bool)

(declare-fun inv!30742 (TokenValueInjection!8122) Bool)

(assert (=> b!2105184 (= e!1337676 (and tp!637954 (inv!30741 (tag!4623 (h!28621 rulesArg!349))) (inv!30742 (transformation!4133 (h!28621 rulesArg!349))) e!1337684))))

(declare-fun b!2105185 () Bool)

(declare-fun e!1337678 () Bool)

(declare-fun totalInput!482 () BalanceConc!15188)

(declare-fun tp!637955 () Bool)

(declare-fun inv!30743 (Conc!7713) Bool)

(assert (=> b!2105185 (= e!1337678 (and (inv!30743 (c!338863 totalInput!482)) tp!637955))))

(declare-fun b!2105186 () Bool)

(assert (=> b!2105186 (= e!1337673 e!1337686)))

(declare-fun res!915361 () Bool)

(assert (=> b!2105186 (=> res!915361 e!1337686)))

(assert (=> b!2105186 (= res!915361 (not (rulesValidInductive!1450 thiss!15689 (t!195797 rulesArg!349))))))

(declare-fun input!1444 () BalanceConc!15188)

(declare-datatypes ((Token!7790 0))(
  ( (Token!7791 (value!129434 TokenValue!4269) (rule!6448 Rule!8066) (size!18124 Int) (originalCharacters!4926 List!23303)) )
))
(declare-datatypes ((tuple2!22476 0))(
  ( (tuple2!22477 (_1!12979 Token!7790) (_2!12979 BalanceConc!15188)) )
))
(declare-datatypes ((Option!4848 0))(
  ( (None!4847) (Some!4847 (v!27784 tuple2!22476)) )
))
(declare-datatypes ((tuple3!2554 0))(
  ( (tuple3!2555 (_1!12980 Option!4848) (_2!12980 CacheUp!1442) (_3!1741 CacheDown!1448)) )
))
(declare-fun lt!791236 () tuple3!2554)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!65 (LexerInterface!3733 Rule!8066 BalanceConc!15188 BalanceConc!15188 CacheUp!1442 CacheDown!1448) tuple3!2554)

(assert (=> b!2105186 (= lt!791236 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!65 thiss!15689 (h!28621 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(declare-fun res!915359 () Bool)

(assert (=> start!205828 (=> (not res!915359) (not e!1337685))))

(assert (=> start!205828 (= res!915359 ((_ is Lexer!3731) thiss!15689))))

(assert (=> start!205828 e!1337685))

(declare-fun e!1337668 () Bool)

(assert (=> start!205828 e!1337668))

(declare-fun inv!30744 (BalanceConc!15188) Bool)

(assert (=> start!205828 (and (inv!30744 totalInput!482) e!1337678)))

(assert (=> start!205828 true))

(declare-fun e!1337677 () Bool)

(assert (=> start!205828 (and (inv!30744 input!1444) e!1337677)))

(declare-fun inv!30745 (CacheUp!1442) Bool)

(assert (=> start!205828 (and (inv!30745 cacheUp!675) e!1337681)))

(declare-fun e!1337672 () Bool)

(declare-fun inv!30746 (CacheDown!1448) Bool)

(assert (=> start!205828 (and (inv!30746 cacheDown!688) e!1337672)))

(declare-fun b!2105187 () Bool)

(assert (=> b!2105187 (= e!1337685 e!1337670)))

(declare-fun res!915356 () Bool)

(assert (=> b!2105187 (=> (not res!915356) (not e!1337670))))

(declare-fun isSuffix!553 (List!23303 List!23303) Bool)

(declare-fun list!9436 (BalanceConc!15188) List!23303)

(assert (=> b!2105187 (= res!915356 (isSuffix!553 lt!791234 (list!9436 totalInput!482)))))

(assert (=> b!2105187 (= lt!791234 (list!9436 input!1444))))

(declare-fun b!2105188 () Bool)

(declare-fun e!1337688 () Bool)

(declare-fun e!1337674 () Bool)

(assert (=> b!2105188 (= e!1337688 e!1337674)))

(declare-fun b!2105189 () Bool)

(declare-fun e!1337666 () Bool)

(assert (=> b!2105189 (= e!1337666 e!1337689)))

(assert (=> b!2105190 (= e!1337684 (and tp!637960 tp!637961))))

(declare-fun b!2105191 () Bool)

(assert (=> b!2105191 (= e!1337679 e!1337666)))

(declare-fun b!2105192 () Bool)

(assert (=> b!2105192 (= e!1337672 e!1337687)))

(declare-fun b!2105193 () Bool)

(declare-fun e!1337667 () Bool)

(assert (=> b!2105193 (= e!1337667 e!1337688)))

(declare-fun tp!637945 () Bool)

(declare-fun e!1337682 () Bool)

(declare-fun tp!637949 () Bool)

(declare-fun array_inv!2458 (array!7712) Bool)

(assert (=> b!2105194 (= e!1337674 (and tp!637958 tp!637945 tp!637949 (array_inv!2456 (_keys!2532 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))))) (array_inv!2458 (_values!2515 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))))) e!1337682))))

(declare-fun b!2105195 () Bool)

(declare-fun lt!791235 () MutLongMap!2235)

(assert (=> b!2105195 (= e!1337683 (and e!1337667 ((_ is LongMap!2235) lt!791235)))))

(assert (=> b!2105195 (= lt!791235 (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))))

(declare-fun b!2105196 () Bool)

(declare-fun tp!637953 () Bool)

(assert (=> b!2105196 (= e!1337668 (and e!1337676 tp!637953))))

(declare-fun b!2105197 () Bool)

(declare-fun tp!637943 () Bool)

(assert (=> b!2105197 (= e!1337682 (and tp!637943 mapRes!10801))))

(declare-fun condMapEmpty!10800 () Bool)

(declare-fun mapDefault!10801 () List!23301)

(assert (=> b!2105197 (= condMapEmpty!10800 (= (arr!3420 (_values!2515 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23301)) mapDefault!10801)))))

(declare-fun b!2105198 () Bool)

(declare-fun tp!637947 () Bool)

(assert (=> b!2105198 (= e!1337677 (and (inv!30743 (c!338863 input!1444)) tp!637947))))

(assert (=> b!2105199 (= e!1337671 (and e!1337690 tp!637948))))

(assert (= (and start!205828 res!915359) b!2105182))

(assert (= (and b!2105182 res!915358) b!2105180))

(assert (= (and b!2105180 res!915357) b!2105187))

(assert (= (and b!2105187 res!915356) b!2105178))

(assert (= (and b!2105178 res!915363) b!2105183))

(assert (= (and b!2105183 res!915362) b!2105177))

(assert (= (and b!2105177 (not res!915360)) b!2105186))

(assert (= (and b!2105186 (not res!915361)) b!2105176))

(assert (= b!2105184 b!2105190))

(assert (= b!2105196 b!2105184))

(assert (= (and start!205828 ((_ is Cons!23220) rulesArg!349)) b!2105196))

(assert (= start!205828 b!2105185))

(assert (= start!205828 b!2105198))

(assert (= (and b!2105173 condMapEmpty!10801) mapIsEmpty!10800))

(assert (= (and b!2105173 (not condMapEmpty!10801)) mapNonEmpty!10800))

(assert (= b!2105175 b!2105173))

(assert (= b!2105189 b!2105175))

(assert (= b!2105191 b!2105189))

(assert (= (and b!2105181 ((_ is LongMap!2234) (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))) b!2105191))

(assert (= b!2105199 b!2105181))

(assert (= (and b!2105174 ((_ is HashMap!2148) (cache!2529 cacheUp!675))) b!2105199))

(assert (= start!205828 b!2105174))

(assert (= (and b!2105197 condMapEmpty!10800) mapIsEmpty!10801))

(assert (= (and b!2105197 (not condMapEmpty!10800)) mapNonEmpty!10801))

(assert (= b!2105194 b!2105197))

(assert (= b!2105188 b!2105194))

(assert (= b!2105193 b!2105188))

(assert (= (and b!2105195 ((_ is LongMap!2235) (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))) b!2105193))

(assert (= b!2105179 b!2105195))

(assert (= (and b!2105192 ((_ is HashMap!2149) (cache!2530 cacheDown!688))) b!2105179))

(assert (= start!205828 b!2105192))

(declare-fun m!2563803 () Bool)

(assert (=> b!2105178 m!2563803))

(declare-fun m!2563805 () Bool)

(assert (=> b!2105175 m!2563805))

(declare-fun m!2563807 () Bool)

(assert (=> b!2105175 m!2563807))

(declare-fun m!2563809 () Bool)

(assert (=> b!2105187 m!2563809))

(assert (=> b!2105187 m!2563809))

(declare-fun m!2563811 () Bool)

(assert (=> b!2105187 m!2563811))

(declare-fun m!2563813 () Bool)

(assert (=> b!2105187 m!2563813))

(declare-fun m!2563815 () Bool)

(assert (=> b!2105194 m!2563815))

(declare-fun m!2563817 () Bool)

(assert (=> b!2105194 m!2563817))

(declare-fun m!2563819 () Bool)

(assert (=> start!205828 m!2563819))

(declare-fun m!2563821 () Bool)

(assert (=> start!205828 m!2563821))

(declare-fun m!2563823 () Bool)

(assert (=> start!205828 m!2563823))

(declare-fun m!2563825 () Bool)

(assert (=> start!205828 m!2563825))

(declare-fun m!2563827 () Bool)

(assert (=> mapNonEmpty!10801 m!2563827))

(declare-fun m!2563829 () Bool)

(assert (=> b!2105184 m!2563829))

(declare-fun m!2563831 () Bool)

(assert (=> b!2105184 m!2563831))

(declare-fun m!2563833 () Bool)

(assert (=> b!2105185 m!2563833))

(declare-fun m!2563835 () Bool)

(assert (=> b!2105198 m!2563835))

(declare-fun m!2563837 () Bool)

(assert (=> b!2105182 m!2563837))

(declare-fun m!2563839 () Bool)

(assert (=> b!2105183 m!2563839))

(declare-fun m!2563841 () Bool)

(assert (=> b!2105180 m!2563841))

(declare-fun m!2563843 () Bool)

(assert (=> mapNonEmpty!10800 m!2563843))

(declare-fun m!2563845 () Bool)

(assert (=> b!2105176 m!2563845))

(declare-fun m!2563847 () Bool)

(assert (=> b!2105186 m!2563847))

(declare-fun m!2563849 () Bool)

(assert (=> b!2105186 m!2563849))

(declare-fun m!2563851 () Bool)

(assert (=> b!2105177 m!2563851))

(declare-fun m!2563853 () Bool)

(assert (=> b!2105177 m!2563853))

(check-sat (not b!2105178) (not b!2105173) (not b_next!61141) (not b!2105180) (not b!2105197) (not b!2105184) b_and!170005 b_and!170001 b_and!170009 b_and!170007 (not b!2105177) (not b_next!61151) (not b!2105175) (not b!2105176) (not mapNonEmpty!10800) (not b!2105183) (not b!2105185) (not b!2105182) b_and!170003 (not mapNonEmpty!10801) (not b_next!61149) (not b!2105186) (not b!2105194) (not b_next!61145) (not b!2105187) (not b!2105198) (not b!2105196) (not b_next!61143) (not b_next!61147) b_and!169999 (not start!205828))
(check-sat (not b_next!61151) (not b_next!61141) b_and!170005 b_and!170001 b_and!170009 b_and!170007 (not b_next!61145) b_and!169999 b_and!170003 (not b_next!61149) (not b_next!61143) (not b_next!61147))
(get-model)

(declare-fun d!641641 () Bool)

(declare-fun validCacheMapUp!221 (MutableMap!2148) Bool)

(assert (=> d!641641 (= (valid!1772 cacheUp!675) (validCacheMapUp!221 (cache!2529 cacheUp!675)))))

(declare-fun bs!440918 () Bool)

(assert (= bs!440918 d!641641))

(declare-fun m!2563855 () Bool)

(assert (=> bs!440918 m!2563855))

(assert (=> b!2105178 d!641641))

(declare-fun d!641643 () Bool)

(declare-fun e!1337698 () Bool)

(assert (=> d!641643 e!1337698))

(declare-fun res!915376 () Bool)

(assert (=> d!641643 (=> res!915376 e!1337698)))

(declare-fun lt!791241 () Bool)

(assert (=> d!641643 (= res!915376 (not lt!791241))))

(declare-fun e!1337700 () Bool)

(assert (=> d!641643 (= lt!791241 e!1337700)))

(declare-fun res!915379 () Bool)

(assert (=> d!641643 (=> res!915379 e!1337700)))

(assert (=> d!641643 (= res!915379 ((_ is Nil!23219) lt!791234))))

(assert (=> d!641643 (= (isPrefix!2068 lt!791234 lt!791234) lt!791241)))

(declare-fun b!2105208 () Bool)

(declare-fun e!1337699 () Bool)

(assert (=> b!2105208 (= e!1337700 e!1337699)))

(declare-fun res!915378 () Bool)

(assert (=> b!2105208 (=> (not res!915378) (not e!1337699))))

(assert (=> b!2105208 (= res!915378 (not ((_ is Nil!23219) lt!791234)))))

(declare-fun b!2105210 () Bool)

(declare-fun tail!3097 (List!23303) List!23303)

(assert (=> b!2105210 (= e!1337699 (isPrefix!2068 (tail!3097 lt!791234) (tail!3097 lt!791234)))))

(declare-fun b!2105211 () Bool)

(declare-fun size!18125 (List!23303) Int)

(assert (=> b!2105211 (= e!1337698 (>= (size!18125 lt!791234) (size!18125 lt!791234)))))

(declare-fun b!2105209 () Bool)

(declare-fun res!915377 () Bool)

(assert (=> b!2105209 (=> (not res!915377) (not e!1337699))))

(declare-fun head!4625 (List!23303) C!11272)

(assert (=> b!2105209 (= res!915377 (= (head!4625 lt!791234) (head!4625 lt!791234)))))

(assert (= (and d!641643 (not res!915379)) b!2105208))

(assert (= (and b!2105208 res!915378) b!2105209))

(assert (= (and b!2105209 res!915377) b!2105210))

(assert (= (and d!641643 (not res!915376)) b!2105211))

(declare-fun m!2563857 () Bool)

(assert (=> b!2105210 m!2563857))

(assert (=> b!2105210 m!2563857))

(assert (=> b!2105210 m!2563857))

(assert (=> b!2105210 m!2563857))

(declare-fun m!2563859 () Bool)

(assert (=> b!2105210 m!2563859))

(declare-fun m!2563861 () Bool)

(assert (=> b!2105211 m!2563861))

(assert (=> b!2105211 m!2563861))

(declare-fun m!2563863 () Bool)

(assert (=> b!2105209 m!2563863))

(assert (=> b!2105209 m!2563863))

(assert (=> b!2105177 d!641643))

(declare-fun d!641645 () Bool)

(assert (=> d!641645 (isPrefix!2068 lt!791234 lt!791234)))

(declare-fun lt!791244 () Unit!37450)

(declare-fun choose!12627 (List!23303 List!23303) Unit!37450)

(assert (=> d!641645 (= lt!791244 (choose!12627 lt!791234 lt!791234))))

(assert (=> d!641645 (= (lemmaIsPrefixRefl!1386 lt!791234 lt!791234) lt!791244)))

(declare-fun bs!440919 () Bool)

(assert (= bs!440919 d!641645))

(assert (=> bs!440919 m!2563851))

(declare-fun m!2563865 () Bool)

(assert (=> bs!440919 m!2563865))

(assert (=> b!2105177 d!641645))

(declare-fun d!641647 () Bool)

(declare-fun c!338866 () Bool)

(assert (=> d!641647 (= c!338866 ((_ is Node!7713) (c!338863 input!1444)))))

(declare-fun e!1337705 () Bool)

(assert (=> d!641647 (= (inv!30743 (c!338863 input!1444)) e!1337705)))

(declare-fun b!2105218 () Bool)

(declare-fun inv!30747 (Conc!7713) Bool)

(assert (=> b!2105218 (= e!1337705 (inv!30747 (c!338863 input!1444)))))

(declare-fun b!2105219 () Bool)

(declare-fun e!1337706 () Bool)

(assert (=> b!2105219 (= e!1337705 e!1337706)))

(declare-fun res!915382 () Bool)

(assert (=> b!2105219 (= res!915382 (not ((_ is Leaf!11262) (c!338863 input!1444))))))

(assert (=> b!2105219 (=> res!915382 e!1337706)))

(declare-fun b!2105220 () Bool)

(declare-fun inv!30748 (Conc!7713) Bool)

(assert (=> b!2105220 (= e!1337706 (inv!30748 (c!338863 input!1444)))))

(assert (= (and d!641647 c!338866) b!2105218))

(assert (= (and d!641647 (not c!338866)) b!2105219))

(assert (= (and b!2105219 (not res!915382)) b!2105220))

(declare-fun m!2563867 () Bool)

(assert (=> b!2105218 m!2563867))

(declare-fun m!2563869 () Bool)

(assert (=> b!2105220 m!2563869))

(assert (=> b!2105198 d!641647))

(declare-fun d!641649 () Bool)

(declare-fun e!1337709 () Bool)

(assert (=> d!641649 e!1337709))

(declare-fun res!915385 () Bool)

(assert (=> d!641649 (=> res!915385 e!1337709)))

(declare-fun lt!791247 () Bool)

(assert (=> d!641649 (= res!915385 (not lt!791247))))

(declare-fun drop!1160 (List!23303 Int) List!23303)

(assert (=> d!641649 (= lt!791247 (= lt!791234 (drop!1160 (list!9436 totalInput!482) (- (size!18125 (list!9436 totalInput!482)) (size!18125 lt!791234)))))))

(assert (=> d!641649 (= (isSuffix!553 lt!791234 (list!9436 totalInput!482)) lt!791247)))

(declare-fun b!2105223 () Bool)

(assert (=> b!2105223 (= e!1337709 (>= (size!18125 (list!9436 totalInput!482)) (size!18125 lt!791234)))))

(assert (= (and d!641649 (not res!915385)) b!2105223))

(assert (=> d!641649 m!2563809))

(declare-fun m!2563871 () Bool)

(assert (=> d!641649 m!2563871))

(assert (=> d!641649 m!2563861))

(assert (=> d!641649 m!2563809))

(declare-fun m!2563873 () Bool)

(assert (=> d!641649 m!2563873))

(assert (=> b!2105223 m!2563809))

(assert (=> b!2105223 m!2563871))

(assert (=> b!2105223 m!2563861))

(assert (=> b!2105187 d!641649))

(declare-fun d!641651 () Bool)

(declare-fun list!9437 (Conc!7713) List!23303)

(assert (=> d!641651 (= (list!9436 totalInput!482) (list!9437 (c!338863 totalInput!482)))))

(declare-fun bs!440920 () Bool)

(assert (= bs!440920 d!641651))

(declare-fun m!2563875 () Bool)

(assert (=> bs!440920 m!2563875))

(assert (=> b!2105187 d!641651))

(declare-fun d!641653 () Bool)

(assert (=> d!641653 (= (list!9436 input!1444) (list!9437 (c!338863 input!1444)))))

(declare-fun bs!440921 () Bool)

(assert (= bs!440921 d!641653))

(declare-fun m!2563877 () Bool)

(assert (=> bs!440921 m!2563877))

(assert (=> b!2105187 d!641653))

(declare-fun d!641655 () Bool)

(assert (=> d!641655 (= (isEmpty!14268 (t!195797 rulesArg!349)) ((_ is Nil!23220) (t!195797 rulesArg!349)))))

(assert (=> b!2105176 d!641655))

(declare-fun d!641657 () Bool)

(assert (=> d!641657 true))

(declare-fun lt!791250 () Bool)

(declare-fun lambda!78143 () Int)

(declare-fun forall!4833 (List!23304 Int) Bool)

(assert (=> d!641657 (= lt!791250 (forall!4833 (t!195797 rulesArg!349) lambda!78143))))

(declare-fun e!1337714 () Bool)

(assert (=> d!641657 (= lt!791250 e!1337714)))

(declare-fun res!915391 () Bool)

(assert (=> d!641657 (=> res!915391 e!1337714)))

(assert (=> d!641657 (= res!915391 (not ((_ is Cons!23220) (t!195797 rulesArg!349))))))

(assert (=> d!641657 (= (rulesValidInductive!1450 thiss!15689 (t!195797 rulesArg!349)) lt!791250)))

(declare-fun b!2105228 () Bool)

(declare-fun e!1337715 () Bool)

(assert (=> b!2105228 (= e!1337714 e!1337715)))

(declare-fun res!915390 () Bool)

(assert (=> b!2105228 (=> (not res!915390) (not e!1337715))))

(declare-fun ruleValid!1264 (LexerInterface!3733 Rule!8066) Bool)

(assert (=> b!2105228 (= res!915390 (ruleValid!1264 thiss!15689 (h!28621 (t!195797 rulesArg!349))))))

(declare-fun b!2105229 () Bool)

(assert (=> b!2105229 (= e!1337715 (rulesValidInductive!1450 thiss!15689 (t!195797 (t!195797 rulesArg!349))))))

(assert (= (and d!641657 (not res!915391)) b!2105228))

(assert (= (and b!2105228 res!915390) b!2105229))

(declare-fun m!2563879 () Bool)

(assert (=> d!641657 m!2563879))

(declare-fun m!2563881 () Bool)

(assert (=> b!2105228 m!2563881))

(declare-fun m!2563883 () Bool)

(assert (=> b!2105229 m!2563883))

(assert (=> b!2105186 d!641657))

(declare-fun b!2105242 () Bool)

(declare-fun res!915398 () Bool)

(declare-fun e!1337724 () Bool)

(assert (=> b!2105242 (=> (not res!915398) (not e!1337724))))

(declare-fun lt!791263 () tuple3!2554)

(assert (=> b!2105242 (= res!915398 (valid!1772 (_2!12980 lt!791263)))))

(declare-fun b!2105243 () Bool)

(assert (=> b!2105243 (= e!1337724 (valid!1773 (_3!1741 lt!791263)))))

(declare-fun b!2105244 () Bool)

(declare-fun e!1337723 () Option!4848)

(assert (=> b!2105244 (= e!1337723 None!4847)))

(declare-fun b!2105245 () Bool)

(declare-fun e!1337722 () Bool)

(declare-fun lt!791265 () List!23303)

(declare-fun matchR!2720 (Regex!5563 List!23303) Bool)

(declare-datatypes ((tuple2!22478 0))(
  ( (tuple2!22479 (_1!12981 List!23303) (_2!12981 List!23303)) )
))
(declare-fun findLongestMatchInner!586 (Regex!5563 List!23303 Int List!23303 List!23303 Int) tuple2!22478)

(assert (=> b!2105245 (= e!1337722 (matchR!2720 (regex!4133 (h!28621 rulesArg!349)) (_1!12981 (findLongestMatchInner!586 (regex!4133 (h!28621 rulesArg!349)) Nil!23219 (size!18125 Nil!23219) lt!791265 lt!791265 (size!18125 lt!791265)))))))

(declare-fun d!641659 () Bool)

(assert (=> d!641659 e!1337724))

(declare-fun res!915400 () Bool)

(assert (=> d!641659 (=> (not res!915400) (not e!1337724))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!172 (LexerInterface!3733 Rule!8066 BalanceConc!15188 BalanceConc!15188) Option!4848)

(assert (=> d!641659 (= res!915400 (= (_1!12980 lt!791263) (maxPrefixOneRuleZipperSequenceV2!172 thiss!15689 (h!28621 rulesArg!349) input!1444 totalInput!482)))))

(declare-datatypes ((tuple2!22480 0))(
  ( (tuple2!22481 (_1!12982 BalanceConc!15188) (_2!12982 BalanceConc!15188)) )
))
(declare-datatypes ((tuple3!2556 0))(
  ( (tuple3!2557 (_1!12983 tuple2!22480) (_2!12983 CacheUp!1442) (_3!1742 CacheDown!1448)) )
))
(declare-fun lt!791268 () tuple3!2556)

(assert (=> d!641659 (= lt!791263 (tuple3!2555 e!1337723 (_2!12983 lt!791268) (_3!1742 lt!791268)))))

(declare-fun c!338869 () Bool)

(declare-fun isEmpty!14269 (BalanceConc!15188) Bool)

(assert (=> d!641659 (= c!338869 (isEmpty!14269 (_1!12982 (_1!12983 lt!791268))))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!29 (Regex!5563 BalanceConc!15188 BalanceConc!15188 CacheUp!1442 CacheDown!1448) tuple3!2556)

(assert (=> d!641659 (= lt!791268 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!29 (regex!4133 (h!28621 rulesArg!349)) input!1444 totalInput!482 cacheUp!675 cacheDown!688))))

(assert (=> d!641659 (ruleValid!1264 thiss!15689 (h!28621 rulesArg!349))))

(assert (=> d!641659 (= (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!65 thiss!15689 (h!28621 rulesArg!349) input!1444 totalInput!482 cacheUp!675 cacheDown!688) lt!791263)))

(declare-fun b!2105246 () Bool)

(declare-fun apply!5894 (TokenValueInjection!8122 BalanceConc!15188) TokenValue!4269)

(declare-fun size!18126 (BalanceConc!15188) Int)

(assert (=> b!2105246 (= e!1337723 (Some!4847 (tuple2!22477 (Token!7791 (apply!5894 (transformation!4133 (h!28621 rulesArg!349)) (_1!12982 (_1!12983 lt!791268))) (h!28621 rulesArg!349) (size!18126 (_1!12982 (_1!12983 lt!791268))) (list!9436 (_1!12982 (_1!12983 lt!791268)))) (_2!12982 (_1!12983 lt!791268)))))))

(assert (=> b!2105246 (= lt!791265 (list!9436 input!1444))))

(declare-fun lt!791267 () Unit!37450)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!570 (Regex!5563 List!23303) Unit!37450)

(assert (=> b!2105246 (= lt!791267 (longestMatchIsAcceptedByMatchOrIsEmpty!570 (regex!4133 (h!28621 rulesArg!349)) lt!791265))))

(declare-fun res!915399 () Bool)

(declare-fun isEmpty!14270 (List!23303) Bool)

(assert (=> b!2105246 (= res!915399 (isEmpty!14270 (_1!12981 (findLongestMatchInner!586 (regex!4133 (h!28621 rulesArg!349)) Nil!23219 (size!18125 Nil!23219) lt!791265 lt!791265 (size!18125 lt!791265)))))))

(assert (=> b!2105246 (=> res!915399 e!1337722)))

(assert (=> b!2105246 e!1337722))

(declare-fun lt!791264 () Unit!37450)

(assert (=> b!2105246 (= lt!791264 lt!791267)))

(declare-fun lt!791266 () Unit!37450)

(declare-fun lemmaSemiInverse!984 (TokenValueInjection!8122 BalanceConc!15188) Unit!37450)

(assert (=> b!2105246 (= lt!791266 (lemmaSemiInverse!984 (transformation!4133 (h!28621 rulesArg!349)) (_1!12982 (_1!12983 lt!791268))))))

(assert (= (and d!641659 c!338869) b!2105244))

(assert (= (and d!641659 (not c!338869)) b!2105246))

(assert (= (and b!2105246 (not res!915399)) b!2105245))

(assert (= (and d!641659 res!915400) b!2105242))

(assert (= (and b!2105242 res!915398) b!2105243))

(declare-fun m!2563885 () Bool)

(assert (=> b!2105246 m!2563885))

(declare-fun m!2563887 () Bool)

(assert (=> b!2105246 m!2563887))

(declare-fun m!2563889 () Bool)

(assert (=> b!2105246 m!2563889))

(assert (=> b!2105246 m!2563813))

(declare-fun m!2563891 () Bool)

(assert (=> b!2105246 m!2563891))

(declare-fun m!2563893 () Bool)

(assert (=> b!2105246 m!2563893))

(declare-fun m!2563895 () Bool)

(assert (=> b!2105246 m!2563895))

(declare-fun m!2563897 () Bool)

(assert (=> b!2105246 m!2563897))

(declare-fun m!2563899 () Bool)

(assert (=> b!2105246 m!2563899))

(assert (=> b!2105246 m!2563891))

(assert (=> b!2105246 m!2563887))

(declare-fun m!2563901 () Bool)

(assert (=> b!2105246 m!2563901))

(declare-fun m!2563903 () Bool)

(assert (=> b!2105242 m!2563903))

(declare-fun m!2563905 () Bool)

(assert (=> b!2105243 m!2563905))

(declare-fun m!2563907 () Bool)

(assert (=> d!641659 m!2563907))

(declare-fun m!2563909 () Bool)

(assert (=> d!641659 m!2563909))

(declare-fun m!2563911 () Bool)

(assert (=> d!641659 m!2563911))

(declare-fun m!2563913 () Bool)

(assert (=> d!641659 m!2563913))

(assert (=> b!2105245 m!2563891))

(assert (=> b!2105245 m!2563887))

(assert (=> b!2105245 m!2563891))

(assert (=> b!2105245 m!2563887))

(assert (=> b!2105245 m!2563901))

(declare-fun m!2563915 () Bool)

(assert (=> b!2105245 m!2563915))

(assert (=> b!2105186 d!641659))

(declare-fun d!641661 () Bool)

(declare-fun c!338870 () Bool)

(assert (=> d!641661 (= c!338870 ((_ is Node!7713) (c!338863 totalInput!482)))))

(declare-fun e!1337725 () Bool)

(assert (=> d!641661 (= (inv!30743 (c!338863 totalInput!482)) e!1337725)))

(declare-fun b!2105247 () Bool)

(assert (=> b!2105247 (= e!1337725 (inv!30747 (c!338863 totalInput!482)))))

(declare-fun b!2105248 () Bool)

(declare-fun e!1337726 () Bool)

(assert (=> b!2105248 (= e!1337725 e!1337726)))

(declare-fun res!915401 () Bool)

(assert (=> b!2105248 (= res!915401 (not ((_ is Leaf!11262) (c!338863 totalInput!482))))))

(assert (=> b!2105248 (=> res!915401 e!1337726)))

(declare-fun b!2105249 () Bool)

(assert (=> b!2105249 (= e!1337726 (inv!30748 (c!338863 totalInput!482)))))

(assert (= (and d!641661 c!338870) b!2105247))

(assert (= (and d!641661 (not c!338870)) b!2105248))

(assert (= (and b!2105248 (not res!915401)) b!2105249))

(declare-fun m!2563917 () Bool)

(assert (=> b!2105247 m!2563917))

(declare-fun m!2563919 () Bool)

(assert (=> b!2105249 m!2563919))

(assert (=> b!2105185 d!641661))

(declare-fun d!641663 () Bool)

(assert (=> d!641663 (= (inv!30741 (tag!4623 (h!28621 rulesArg!349))) (= (mod (str.len (value!129433 (tag!4623 (h!28621 rulesArg!349)))) 2) 0))))

(assert (=> b!2105184 d!641663))

(declare-fun d!641665 () Bool)

(declare-fun res!915404 () Bool)

(declare-fun e!1337729 () Bool)

(assert (=> d!641665 (=> (not res!915404) (not e!1337729))))

(declare-fun semiInverseModEq!1651 (Int Int) Bool)

(assert (=> d!641665 (= res!915404 (semiInverseModEq!1651 (toChars!5703 (transformation!4133 (h!28621 rulesArg!349))) (toValue!5844 (transformation!4133 (h!28621 rulesArg!349)))))))

(assert (=> d!641665 (= (inv!30742 (transformation!4133 (h!28621 rulesArg!349))) e!1337729)))

(declare-fun b!2105252 () Bool)

(declare-fun equivClasses!1578 (Int Int) Bool)

(assert (=> b!2105252 (= e!1337729 (equivClasses!1578 (toChars!5703 (transformation!4133 (h!28621 rulesArg!349))) (toValue!5844 (transformation!4133 (h!28621 rulesArg!349)))))))

(assert (= (and d!641665 res!915404) b!2105252))

(declare-fun m!2563921 () Bool)

(assert (=> d!641665 m!2563921))

(declare-fun m!2563923 () Bool)

(assert (=> b!2105252 m!2563923))

(assert (=> b!2105184 d!641665))

(declare-fun d!641667 () Bool)

(assert (=> d!641667 (= (array_inv!2456 (_keys!2532 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))))) (bvsge (size!18121 (_keys!2532 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2105194 d!641667))

(declare-fun d!641669 () Bool)

(assert (=> d!641669 (= (array_inv!2458 (_values!2515 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))))) (bvsge (size!18123 (_values!2515 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688))))))) #b00000000000000000000000000000000))))

(assert (=> b!2105194 d!641669))

(declare-fun d!641671 () Bool)

(declare-fun validCacheMapDown!219 (MutableMap!2149) Bool)

(assert (=> d!641671 (= (valid!1773 cacheDown!688) (validCacheMapDown!219 (cache!2530 cacheDown!688)))))

(declare-fun bs!440922 () Bool)

(assert (= bs!440922 d!641671))

(declare-fun m!2563925 () Bool)

(assert (=> bs!440922 m!2563925))

(assert (=> b!2105183 d!641671))

(declare-fun d!641673 () Bool)

(assert (=> d!641673 (= (array_inv!2456 (_keys!2531 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))))) (bvsge (size!18121 (_keys!2531 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2105175 d!641673))

(declare-fun d!641675 () Bool)

(assert (=> d!641675 (= (array_inv!2457 (_values!2514 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))))) (bvsge (size!18122 (_values!2514 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675))))))) #b00000000000000000000000000000000))))

(assert (=> b!2105175 d!641675))

(declare-fun bs!440923 () Bool)

(declare-fun d!641677 () Bool)

(assert (= bs!440923 (and d!641677 d!641657)))

(declare-fun lambda!78144 () Int)

(assert (=> bs!440923 (= lambda!78144 lambda!78143)))

(assert (=> d!641677 true))

(declare-fun lt!791269 () Bool)

(assert (=> d!641677 (= lt!791269 (forall!4833 rulesArg!349 lambda!78144))))

(declare-fun e!1337730 () Bool)

(assert (=> d!641677 (= lt!791269 e!1337730)))

(declare-fun res!915406 () Bool)

(assert (=> d!641677 (=> res!915406 e!1337730)))

(assert (=> d!641677 (= res!915406 (not ((_ is Cons!23220) rulesArg!349)))))

(assert (=> d!641677 (= (rulesValidInductive!1450 thiss!15689 rulesArg!349) lt!791269)))

(declare-fun b!2105253 () Bool)

(declare-fun e!1337731 () Bool)

(assert (=> b!2105253 (= e!1337730 e!1337731)))

(declare-fun res!915405 () Bool)

(assert (=> b!2105253 (=> (not res!915405) (not e!1337731))))

(assert (=> b!2105253 (= res!915405 (ruleValid!1264 thiss!15689 (h!28621 rulesArg!349)))))

(declare-fun b!2105254 () Bool)

(assert (=> b!2105254 (= e!1337731 (rulesValidInductive!1450 thiss!15689 (t!195797 rulesArg!349)))))

(assert (= (and d!641677 (not res!915406)) b!2105253))

(assert (= (and b!2105253 res!915405) b!2105254))

(declare-fun m!2563927 () Bool)

(assert (=> d!641677 m!2563927))

(assert (=> b!2105253 m!2563913))

(assert (=> b!2105254 m!2563847))

(assert (=> b!2105182 d!641677))

(declare-fun d!641679 () Bool)

(declare-fun isBalanced!2425 (Conc!7713) Bool)

(assert (=> d!641679 (= (inv!30744 totalInput!482) (isBalanced!2425 (c!338863 totalInput!482)))))

(declare-fun bs!440924 () Bool)

(assert (= bs!440924 d!641679))

(declare-fun m!2563929 () Bool)

(assert (=> bs!440924 m!2563929))

(assert (=> start!205828 d!641679))

(declare-fun d!641681 () Bool)

(assert (=> d!641681 (= (inv!30744 input!1444) (isBalanced!2425 (c!338863 input!1444)))))

(declare-fun bs!440925 () Bool)

(assert (= bs!440925 d!641681))

(declare-fun m!2563931 () Bool)

(assert (=> bs!440925 m!2563931))

(assert (=> start!205828 d!641681))

(declare-fun d!641683 () Bool)

(declare-fun res!915409 () Bool)

(declare-fun e!1337734 () Bool)

(assert (=> d!641683 (=> (not res!915409) (not e!1337734))))

(assert (=> d!641683 (= res!915409 ((_ is HashMap!2148) (cache!2529 cacheUp!675)))))

(assert (=> d!641683 (= (inv!30745 cacheUp!675) e!1337734)))

(declare-fun b!2105257 () Bool)

(assert (=> b!2105257 (= e!1337734 (validCacheMapUp!221 (cache!2529 cacheUp!675)))))

(assert (= (and d!641683 res!915409) b!2105257))

(assert (=> b!2105257 m!2563855))

(assert (=> start!205828 d!641683))

(declare-fun d!641685 () Bool)

(declare-fun res!915412 () Bool)

(declare-fun e!1337737 () Bool)

(assert (=> d!641685 (=> (not res!915412) (not e!1337737))))

(assert (=> d!641685 (= res!915412 ((_ is HashMap!2149) (cache!2530 cacheDown!688)))))

(assert (=> d!641685 (= (inv!30746 cacheDown!688) e!1337737)))

(declare-fun b!2105260 () Bool)

(assert (=> b!2105260 (= e!1337737 (validCacheMapDown!219 (cache!2530 cacheDown!688)))))

(assert (= (and d!641685 res!915412) b!2105260))

(assert (=> b!2105260 m!2563925))

(assert (=> start!205828 d!641685))

(declare-fun d!641687 () Bool)

(assert (=> d!641687 (= (isEmpty!14268 rulesArg!349) ((_ is Nil!23220) rulesArg!349))))

(assert (=> b!2105180 d!641687))

(declare-fun b!2105269 () Bool)

(declare-fun e!1337745 () Bool)

(declare-fun tp!637975 () Bool)

(assert (=> b!2105269 (= e!1337745 tp!637975)))

(declare-fun e!1337746 () Bool)

(assert (=> b!2105194 (= tp!637945 e!1337746)))

(declare-fun setIsEmpty!13760 () Bool)

(declare-fun setRes!13760 () Bool)

(assert (=> setIsEmpty!13760 setRes!13760))

(declare-fun tp!637974 () Bool)

(declare-fun b!2105270 () Bool)

(declare-fun tp!637976 () Bool)

(declare-fun e!1337744 () Bool)

(declare-fun tp_is_empty!9365 () Bool)

(declare-fun inv!30749 (Context!2266) Bool)

(assert (=> b!2105270 (= e!1337746 (and tp!637976 (inv!30749 (_2!12977 (_1!12978 (h!28618 (zeroValue!2493 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688)))))))))) e!1337744 tp_is_empty!9365 setRes!13760 tp!637974))))

(declare-fun condSetEmpty!13760 () Bool)

(assert (=> b!2105270 (= condSetEmpty!13760 (= (_2!12978 (h!28618 (zeroValue!2493 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688)))))))) ((as const (Array Context!2266 Bool)) false)))))

(declare-fun setNonEmpty!13760 () Bool)

(declare-fun setElem!13760 () Context!2266)

(declare-fun tp!637973 () Bool)

(assert (=> setNonEmpty!13760 (= setRes!13760 (and tp!637973 (inv!30749 setElem!13760) e!1337745))))

(declare-fun setRest!13760 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13760 (= (_2!12978 (h!28618 (zeroValue!2493 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13760 true) setRest!13760))))

(declare-fun b!2105271 () Bool)

(declare-fun tp!637977 () Bool)

(assert (=> b!2105271 (= e!1337744 tp!637977)))

(assert (= b!2105270 b!2105271))

(assert (= (and b!2105270 condSetEmpty!13760) setIsEmpty!13760))

(assert (= (and b!2105270 (not condSetEmpty!13760)) setNonEmpty!13760))

(assert (= setNonEmpty!13760 b!2105269))

(assert (= (and b!2105194 ((_ is Cons!23217) (zeroValue!2493 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688)))))))) b!2105270))

(declare-fun m!2563933 () Bool)

(assert (=> b!2105270 m!2563933))

(declare-fun m!2563935 () Bool)

(assert (=> setNonEmpty!13760 m!2563935))

(declare-fun b!2105272 () Bool)

(declare-fun e!1337748 () Bool)

(declare-fun tp!637980 () Bool)

(assert (=> b!2105272 (= e!1337748 tp!637980)))

(declare-fun e!1337749 () Bool)

(assert (=> b!2105194 (= tp!637949 e!1337749)))

(declare-fun setIsEmpty!13761 () Bool)

(declare-fun setRes!13761 () Bool)

(assert (=> setIsEmpty!13761 setRes!13761))

(declare-fun e!1337747 () Bool)

(declare-fun tp!637981 () Bool)

(declare-fun tp!637979 () Bool)

(declare-fun b!2105273 () Bool)

(assert (=> b!2105273 (= e!1337749 (and tp!637981 (inv!30749 (_2!12977 (_1!12978 (h!28618 (minValue!2493 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688)))))))))) e!1337747 tp_is_empty!9365 setRes!13761 tp!637979))))

(declare-fun condSetEmpty!13761 () Bool)

(assert (=> b!2105273 (= condSetEmpty!13761 (= (_2!12978 (h!28618 (minValue!2493 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688)))))))) ((as const (Array Context!2266 Bool)) false)))))

(declare-fun setElem!13761 () Context!2266)

(declare-fun tp!637978 () Bool)

(declare-fun setNonEmpty!13761 () Bool)

(assert (=> setNonEmpty!13761 (= setRes!13761 (and tp!637978 (inv!30749 setElem!13761) e!1337748))))

(declare-fun setRest!13761 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13761 (= (_2!12978 (h!28618 (minValue!2493 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688)))))))) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13761 true) setRest!13761))))

(declare-fun b!2105274 () Bool)

(declare-fun tp!637982 () Bool)

(assert (=> b!2105274 (= e!1337747 tp!637982)))

(assert (= b!2105273 b!2105274))

(assert (= (and b!2105273 condSetEmpty!13761) setIsEmpty!13761))

(assert (= (and b!2105273 (not condSetEmpty!13761)) setNonEmpty!13761))

(assert (= setNonEmpty!13761 b!2105272))

(assert (= (and b!2105194 ((_ is Cons!23217) (minValue!2493 (v!27782 (underlying!4665 (v!27783 (underlying!4666 (cache!2530 cacheDown!688)))))))) b!2105273))

(declare-fun m!2563937 () Bool)

(assert (=> b!2105273 m!2563937))

(declare-fun m!2563939 () Bool)

(assert (=> setNonEmpty!13761 m!2563939))

(declare-fun setElem!13764 () Context!2266)

(declare-fun setRes!13764 () Bool)

(declare-fun tp!637991 () Bool)

(declare-fun setNonEmpty!13764 () Bool)

(declare-fun e!1337756 () Bool)

(assert (=> setNonEmpty!13764 (= setRes!13764 (and tp!637991 (inv!30749 setElem!13764) e!1337756))))

(declare-fun setRest!13764 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13764 (= (_2!12976 (h!28617 (zeroValue!2492 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13764 true) setRest!13764))))

(declare-fun setIsEmpty!13764 () Bool)

(assert (=> setIsEmpty!13764 setRes!13764))

(declare-fun b!2105283 () Bool)

(declare-fun tp!637994 () Bool)

(assert (=> b!2105283 (= e!1337756 tp!637994)))

(declare-fun e!1337758 () Bool)

(assert (=> b!2105175 (= tp!637956 e!1337758)))

(declare-fun b!2105284 () Bool)

(declare-fun e!1337757 () Bool)

(declare-fun tp!637993 () Bool)

(assert (=> b!2105284 (= e!1337757 tp!637993)))

(declare-fun b!2105285 () Bool)

(declare-fun tp!637992 () Bool)

(assert (=> b!2105285 (= e!1337758 (and (inv!30749 (_1!12975 (_1!12976 (h!28617 (zeroValue!2492 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675)))))))))) e!1337757 tp_is_empty!9365 setRes!13764 tp!637992))))

(declare-fun condSetEmpty!13764 () Bool)

(assert (=> b!2105285 (= condSetEmpty!13764 (= (_2!12976 (h!28617 (zeroValue!2492 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675)))))))) ((as const (Array Context!2266 Bool)) false)))))

(assert (= b!2105285 b!2105284))

(assert (= (and b!2105285 condSetEmpty!13764) setIsEmpty!13764))

(assert (= (and b!2105285 (not condSetEmpty!13764)) setNonEmpty!13764))

(assert (= setNonEmpty!13764 b!2105283))

(assert (= (and b!2105175 ((_ is Cons!23216) (zeroValue!2492 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675)))))))) b!2105285))

(declare-fun m!2563941 () Bool)

(assert (=> setNonEmpty!13764 m!2563941))

(declare-fun m!2563943 () Bool)

(assert (=> b!2105285 m!2563943))

(declare-fun tp!637995 () Bool)

(declare-fun e!1337759 () Bool)

(declare-fun setRes!13765 () Bool)

(declare-fun setNonEmpty!13765 () Bool)

(declare-fun setElem!13765 () Context!2266)

(assert (=> setNonEmpty!13765 (= setRes!13765 (and tp!637995 (inv!30749 setElem!13765) e!1337759))))

(declare-fun setRest!13765 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13765 (= (_2!12976 (h!28617 (minValue!2492 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675)))))))) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13765 true) setRest!13765))))

(declare-fun setIsEmpty!13765 () Bool)

(assert (=> setIsEmpty!13765 setRes!13765))

(declare-fun b!2105286 () Bool)

(declare-fun tp!637998 () Bool)

(assert (=> b!2105286 (= e!1337759 tp!637998)))

(declare-fun e!1337761 () Bool)

(assert (=> b!2105175 (= tp!637959 e!1337761)))

(declare-fun b!2105287 () Bool)

(declare-fun e!1337760 () Bool)

(declare-fun tp!637997 () Bool)

(assert (=> b!2105287 (= e!1337760 tp!637997)))

(declare-fun b!2105288 () Bool)

(declare-fun tp!637996 () Bool)

(assert (=> b!2105288 (= e!1337761 (and (inv!30749 (_1!12975 (_1!12976 (h!28617 (minValue!2492 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675)))))))))) e!1337760 tp_is_empty!9365 setRes!13765 tp!637996))))

(declare-fun condSetEmpty!13765 () Bool)

(assert (=> b!2105288 (= condSetEmpty!13765 (= (_2!12976 (h!28617 (minValue!2492 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675)))))))) ((as const (Array Context!2266 Bool)) false)))))

(assert (= b!2105288 b!2105287))

(assert (= (and b!2105288 condSetEmpty!13765) setIsEmpty!13765))

(assert (= (and b!2105288 (not condSetEmpty!13765)) setNonEmpty!13765))

(assert (= setNonEmpty!13765 b!2105286))

(assert (= (and b!2105175 ((_ is Cons!23216) (minValue!2492 (v!27780 (underlying!4663 (v!27781 (underlying!4664 (cache!2529 cacheUp!675)))))))) b!2105288))

(declare-fun m!2563945 () Bool)

(assert (=> setNonEmpty!13765 m!2563945))

(declare-fun m!2563947 () Bool)

(assert (=> b!2105288 m!2563947))

(declare-fun b!2105297 () Bool)

(declare-fun e!1337767 () Bool)

(declare-fun tp!638006 () Bool)

(declare-fun tp!638007 () Bool)

(assert (=> b!2105297 (= e!1337767 (and (inv!30743 (left!18129 (c!338863 input!1444))) tp!638007 (inv!30743 (right!18459 (c!338863 input!1444))) tp!638006))))

(declare-fun b!2105299 () Bool)

(declare-fun e!1337766 () Bool)

(declare-fun tp!638005 () Bool)

(assert (=> b!2105299 (= e!1337766 tp!638005)))

(declare-fun b!2105298 () Bool)

(declare-fun inv!30750 (IArray!15431) Bool)

(assert (=> b!2105298 (= e!1337767 (and (inv!30750 (xs!10655 (c!338863 input!1444))) e!1337766))))

(assert (=> b!2105198 (= tp!637947 (and (inv!30743 (c!338863 input!1444)) e!1337767))))

(assert (= (and b!2105198 ((_ is Node!7713) (c!338863 input!1444))) b!2105297))

(assert (= b!2105298 b!2105299))

(assert (= (and b!2105198 ((_ is Leaf!11262) (c!338863 input!1444))) b!2105298))

(declare-fun m!2563949 () Bool)

(assert (=> b!2105297 m!2563949))

(declare-fun m!2563951 () Bool)

(assert (=> b!2105297 m!2563951))

(declare-fun m!2563953 () Bool)

(assert (=> b!2105298 m!2563953))

(assert (=> b!2105198 m!2563835))

(declare-fun b!2105300 () Bool)

(declare-fun e!1337769 () Bool)

(declare-fun tp!638010 () Bool)

(assert (=> b!2105300 (= e!1337769 tp!638010)))

(declare-fun e!1337770 () Bool)

(assert (=> b!2105197 (= tp!637943 e!1337770)))

(declare-fun setIsEmpty!13766 () Bool)

(declare-fun setRes!13766 () Bool)

(assert (=> setIsEmpty!13766 setRes!13766))

(declare-fun e!1337768 () Bool)

(declare-fun b!2105301 () Bool)

(declare-fun tp!638009 () Bool)

(declare-fun tp!638011 () Bool)

(assert (=> b!2105301 (= e!1337770 (and tp!638011 (inv!30749 (_2!12977 (_1!12978 (h!28618 mapDefault!10801)))) e!1337768 tp_is_empty!9365 setRes!13766 tp!638009))))

(declare-fun condSetEmpty!13766 () Bool)

(assert (=> b!2105301 (= condSetEmpty!13766 (= (_2!12978 (h!28618 mapDefault!10801)) ((as const (Array Context!2266 Bool)) false)))))

(declare-fun tp!638008 () Bool)

(declare-fun setNonEmpty!13766 () Bool)

(declare-fun setElem!13766 () Context!2266)

(assert (=> setNonEmpty!13766 (= setRes!13766 (and tp!638008 (inv!30749 setElem!13766) e!1337769))))

(declare-fun setRest!13766 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13766 (= (_2!12978 (h!28618 mapDefault!10801)) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13766 true) setRest!13766))))

(declare-fun b!2105302 () Bool)

(declare-fun tp!638012 () Bool)

(assert (=> b!2105302 (= e!1337768 tp!638012)))

(assert (= b!2105301 b!2105302))

(assert (= (and b!2105301 condSetEmpty!13766) setIsEmpty!13766))

(assert (= (and b!2105301 (not condSetEmpty!13766)) setNonEmpty!13766))

(assert (= setNonEmpty!13766 b!2105300))

(assert (= (and b!2105197 ((_ is Cons!23217) mapDefault!10801)) b!2105301))

(declare-fun m!2563955 () Bool)

(assert (=> b!2105301 m!2563955))

(declare-fun m!2563957 () Bool)

(assert (=> setNonEmpty!13766 m!2563957))

(declare-fun tp!638013 () Bool)

(declare-fun setNonEmpty!13767 () Bool)

(declare-fun setRes!13767 () Bool)

(declare-fun setElem!13767 () Context!2266)

(declare-fun e!1337771 () Bool)

(assert (=> setNonEmpty!13767 (= setRes!13767 (and tp!638013 (inv!30749 setElem!13767) e!1337771))))

(declare-fun setRest!13767 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13767 (= (_2!12976 (h!28617 mapDefault!10800)) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13767 true) setRest!13767))))

(declare-fun setIsEmpty!13767 () Bool)

(assert (=> setIsEmpty!13767 setRes!13767))

(declare-fun b!2105303 () Bool)

(declare-fun tp!638016 () Bool)

(assert (=> b!2105303 (= e!1337771 tp!638016)))

(declare-fun e!1337773 () Bool)

(assert (=> b!2105173 (= tp!637952 e!1337773)))

(declare-fun b!2105304 () Bool)

(declare-fun e!1337772 () Bool)

(declare-fun tp!638015 () Bool)

(assert (=> b!2105304 (= e!1337772 tp!638015)))

(declare-fun tp!638014 () Bool)

(declare-fun b!2105305 () Bool)

(assert (=> b!2105305 (= e!1337773 (and (inv!30749 (_1!12975 (_1!12976 (h!28617 mapDefault!10800)))) e!1337772 tp_is_empty!9365 setRes!13767 tp!638014))))

(declare-fun condSetEmpty!13767 () Bool)

(assert (=> b!2105305 (= condSetEmpty!13767 (= (_2!12976 (h!28617 mapDefault!10800)) ((as const (Array Context!2266 Bool)) false)))))

(assert (= b!2105305 b!2105304))

(assert (= (and b!2105305 condSetEmpty!13767) setIsEmpty!13767))

(assert (= (and b!2105305 (not condSetEmpty!13767)) setNonEmpty!13767))

(assert (= setNonEmpty!13767 b!2105303))

(assert (= (and b!2105173 ((_ is Cons!23216) mapDefault!10800)) b!2105305))

(declare-fun m!2563959 () Bool)

(assert (=> setNonEmpty!13767 m!2563959))

(declare-fun m!2563961 () Bool)

(assert (=> b!2105305 m!2563961))

(declare-fun b!2105316 () Bool)

(declare-fun b_free!60449 () Bool)

(declare-fun b_next!61153 () Bool)

(assert (=> b!2105316 (= b_free!60449 (not b_next!61153))))

(declare-fun tp!638025 () Bool)

(declare-fun b_and!170011 () Bool)

(assert (=> b!2105316 (= tp!638025 b_and!170011)))

(declare-fun b_free!60451 () Bool)

(declare-fun b_next!61155 () Bool)

(assert (=> b!2105316 (= b_free!60451 (not b_next!61155))))

(declare-fun tp!638026 () Bool)

(declare-fun b_and!170013 () Bool)

(assert (=> b!2105316 (= tp!638026 b_and!170013)))

(declare-fun e!1337785 () Bool)

(assert (=> b!2105316 (= e!1337785 (and tp!638025 tp!638026))))

(declare-fun b!2105315 () Bool)

(declare-fun e!1337784 () Bool)

(declare-fun tp!638027 () Bool)

(assert (=> b!2105315 (= e!1337784 (and tp!638027 (inv!30741 (tag!4623 (h!28621 (t!195797 rulesArg!349)))) (inv!30742 (transformation!4133 (h!28621 (t!195797 rulesArg!349)))) e!1337785))))

(declare-fun b!2105314 () Bool)

(declare-fun e!1337782 () Bool)

(declare-fun tp!638028 () Bool)

(assert (=> b!2105314 (= e!1337782 (and e!1337784 tp!638028))))

(assert (=> b!2105196 (= tp!637953 e!1337782)))

(assert (= b!2105315 b!2105316))

(assert (= b!2105314 b!2105315))

(assert (= (and b!2105196 ((_ is Cons!23220) (t!195797 rulesArg!349))) b!2105314))

(declare-fun m!2563963 () Bool)

(assert (=> b!2105315 m!2563963))

(declare-fun m!2563965 () Bool)

(assert (=> b!2105315 m!2563965))

(declare-fun tp!638031 () Bool)

(declare-fun b!2105317 () Bool)

(declare-fun e!1337787 () Bool)

(declare-fun tp!638030 () Bool)

(assert (=> b!2105317 (= e!1337787 (and (inv!30743 (left!18129 (c!338863 totalInput!482))) tp!638031 (inv!30743 (right!18459 (c!338863 totalInput!482))) tp!638030))))

(declare-fun b!2105319 () Bool)

(declare-fun e!1337786 () Bool)

(declare-fun tp!638029 () Bool)

(assert (=> b!2105319 (= e!1337786 tp!638029)))

(declare-fun b!2105318 () Bool)

(assert (=> b!2105318 (= e!1337787 (and (inv!30750 (xs!10655 (c!338863 totalInput!482))) e!1337786))))

(assert (=> b!2105185 (= tp!637955 (and (inv!30743 (c!338863 totalInput!482)) e!1337787))))

(assert (= (and b!2105185 ((_ is Node!7713) (c!338863 totalInput!482))) b!2105317))

(assert (= b!2105318 b!2105319))

(assert (= (and b!2105185 ((_ is Leaf!11262) (c!338863 totalInput!482))) b!2105318))

(declare-fun m!2563967 () Bool)

(assert (=> b!2105317 m!2563967))

(declare-fun m!2563969 () Bool)

(assert (=> b!2105317 m!2563969))

(declare-fun m!2563971 () Bool)

(assert (=> b!2105318 m!2563971))

(assert (=> b!2105185 m!2563833))

(declare-fun mapIsEmpty!10804 () Bool)

(declare-fun mapRes!10804 () Bool)

(assert (=> mapIsEmpty!10804 mapRes!10804))

(declare-fun b!2105334 () Bool)

(declare-fun e!1337800 () Bool)

(declare-fun tp!638050 () Bool)

(assert (=> b!2105334 (= e!1337800 tp!638050)))

(declare-fun setRes!13773 () Bool)

(declare-fun e!1337805 () Bool)

(declare-fun tp!638054 () Bool)

(declare-fun mapDefault!10804 () List!23300)

(declare-fun b!2105335 () Bool)

(declare-fun e!1337802 () Bool)

(assert (=> b!2105335 (= e!1337805 (and (inv!30749 (_1!12975 (_1!12976 (h!28617 mapDefault!10804)))) e!1337802 tp_is_empty!9365 setRes!13773 tp!638054))))

(declare-fun condSetEmpty!13773 () Bool)

(assert (=> b!2105335 (= condSetEmpty!13773 (= (_2!12976 (h!28617 mapDefault!10804)) ((as const (Array Context!2266 Bool)) false)))))

(declare-fun setNonEmpty!13772 () Bool)

(declare-fun setElem!13773 () Context!2266)

(declare-fun e!1337803 () Bool)

(declare-fun tp!638053 () Bool)

(assert (=> setNonEmpty!13772 (= setRes!13773 (and tp!638053 (inv!30749 setElem!13773) e!1337803))))

(declare-fun setRest!13772 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13772 (= (_2!12976 (h!28617 mapDefault!10804)) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13773 true) setRest!13772))))

(declare-fun b!2105336 () Bool)

(declare-fun tp!638057 () Bool)

(assert (=> b!2105336 (= e!1337803 tp!638057)))

(declare-fun b!2105337 () Bool)

(declare-fun e!1337804 () Bool)

(declare-fun tp!638055 () Bool)

(assert (=> b!2105337 (= e!1337804 tp!638055)))

(declare-fun tp!638056 () Bool)

(declare-fun mapValue!10804 () List!23300)

(declare-fun setRes!13772 () Bool)

(declare-fun e!1337801 () Bool)

(declare-fun b!2105338 () Bool)

(assert (=> b!2105338 (= e!1337801 (and (inv!30749 (_1!12975 (_1!12976 (h!28617 mapValue!10804)))) e!1337800 tp_is_empty!9365 setRes!13772 tp!638056))))

(declare-fun condSetEmpty!13772 () Bool)

(assert (=> b!2105338 (= condSetEmpty!13772 (= (_2!12976 (h!28617 mapValue!10804)) ((as const (Array Context!2266 Bool)) false)))))

(declare-fun setIsEmpty!13772 () Bool)

(assert (=> setIsEmpty!13772 setRes!13772))

(declare-fun tp!638058 () Bool)

(declare-fun setElem!13772 () Context!2266)

(declare-fun setNonEmpty!13773 () Bool)

(assert (=> setNonEmpty!13773 (= setRes!13772 (and tp!638058 (inv!30749 setElem!13772) e!1337804))))

(declare-fun setRest!13773 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13773 (= (_2!12976 (h!28617 mapValue!10804)) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13772 true) setRest!13773))))

(declare-fun mapNonEmpty!10804 () Bool)

(declare-fun tp!638052 () Bool)

(assert (=> mapNonEmpty!10804 (= mapRes!10804 (and tp!638052 e!1337801))))

(declare-fun mapRest!10804 () (Array (_ BitVec 32) List!23300))

(declare-fun mapKey!10804 () (_ BitVec 32))

(assert (=> mapNonEmpty!10804 (= mapRest!10800 (store mapRest!10804 mapKey!10804 mapValue!10804))))

(declare-fun b!2105339 () Bool)

(declare-fun tp!638051 () Bool)

(assert (=> b!2105339 (= e!1337802 tp!638051)))

(declare-fun setIsEmpty!13773 () Bool)

(assert (=> setIsEmpty!13773 setRes!13773))

(declare-fun condMapEmpty!10804 () Bool)

(assert (=> mapNonEmpty!10800 (= condMapEmpty!10804 (= mapRest!10800 ((as const (Array (_ BitVec 32) List!23300)) mapDefault!10804)))))

(assert (=> mapNonEmpty!10800 (= tp!637950 (and e!1337805 mapRes!10804))))

(assert (= (and mapNonEmpty!10800 condMapEmpty!10804) mapIsEmpty!10804))

(assert (= (and mapNonEmpty!10800 (not condMapEmpty!10804)) mapNonEmpty!10804))

(assert (= b!2105338 b!2105334))

(assert (= (and b!2105338 condSetEmpty!13772) setIsEmpty!13772))

(assert (= (and b!2105338 (not condSetEmpty!13772)) setNonEmpty!13773))

(assert (= setNonEmpty!13773 b!2105337))

(assert (= (and mapNonEmpty!10804 ((_ is Cons!23216) mapValue!10804)) b!2105338))

(assert (= b!2105335 b!2105339))

(assert (= (and b!2105335 condSetEmpty!13773) setIsEmpty!13773))

(assert (= (and b!2105335 (not condSetEmpty!13773)) setNonEmpty!13772))

(assert (= setNonEmpty!13772 b!2105336))

(assert (= (and mapNonEmpty!10800 ((_ is Cons!23216) mapDefault!10804)) b!2105335))

(declare-fun m!2563973 () Bool)

(assert (=> mapNonEmpty!10804 m!2563973))

(declare-fun m!2563975 () Bool)

(assert (=> b!2105335 m!2563975))

(declare-fun m!2563977 () Bool)

(assert (=> setNonEmpty!13772 m!2563977))

(declare-fun m!2563979 () Bool)

(assert (=> b!2105338 m!2563979))

(declare-fun m!2563981 () Bool)

(assert (=> setNonEmpty!13773 m!2563981))

(declare-fun setNonEmpty!13774 () Bool)

(declare-fun setRes!13774 () Bool)

(declare-fun tp!638059 () Bool)

(declare-fun e!1337806 () Bool)

(declare-fun setElem!13774 () Context!2266)

(assert (=> setNonEmpty!13774 (= setRes!13774 (and tp!638059 (inv!30749 setElem!13774) e!1337806))))

(declare-fun setRest!13774 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13774 (= (_2!12976 (h!28617 mapValue!10800)) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13774 true) setRest!13774))))

(declare-fun setIsEmpty!13774 () Bool)

(assert (=> setIsEmpty!13774 setRes!13774))

(declare-fun b!2105340 () Bool)

(declare-fun tp!638062 () Bool)

(assert (=> b!2105340 (= e!1337806 tp!638062)))

(declare-fun e!1337808 () Bool)

(assert (=> mapNonEmpty!10800 (= tp!637962 e!1337808)))

(declare-fun b!2105341 () Bool)

(declare-fun e!1337807 () Bool)

(declare-fun tp!638061 () Bool)

(assert (=> b!2105341 (= e!1337807 tp!638061)))

(declare-fun tp!638060 () Bool)

(declare-fun b!2105342 () Bool)

(assert (=> b!2105342 (= e!1337808 (and (inv!30749 (_1!12975 (_1!12976 (h!28617 mapValue!10800)))) e!1337807 tp_is_empty!9365 setRes!13774 tp!638060))))

(declare-fun condSetEmpty!13774 () Bool)

(assert (=> b!2105342 (= condSetEmpty!13774 (= (_2!12976 (h!28617 mapValue!10800)) ((as const (Array Context!2266 Bool)) false)))))

(assert (= b!2105342 b!2105341))

(assert (= (and b!2105342 condSetEmpty!13774) setIsEmpty!13774))

(assert (= (and b!2105342 (not condSetEmpty!13774)) setNonEmpty!13774))

(assert (= setNonEmpty!13774 b!2105340))

(assert (= (and mapNonEmpty!10800 ((_ is Cons!23216) mapValue!10800)) b!2105342))

(declare-fun m!2563983 () Bool)

(assert (=> setNonEmpty!13774 m!2563983))

(declare-fun m!2563985 () Bool)

(assert (=> b!2105342 m!2563985))

(declare-fun b!2105357 () Bool)

(declare-fun e!1337823 () Bool)

(declare-fun tp!638094 () Bool)

(assert (=> b!2105357 (= e!1337823 tp!638094)))

(declare-fun setRes!13779 () Bool)

(declare-fun mapDefault!10807 () List!23301)

(declare-fun e!1337825 () Bool)

(declare-fun tp!638093 () Bool)

(declare-fun b!2105358 () Bool)

(declare-fun tp!638092 () Bool)

(declare-fun e!1337822 () Bool)

(assert (=> b!2105358 (= e!1337825 (and tp!638092 (inv!30749 (_2!12977 (_1!12978 (h!28618 mapDefault!10807)))) e!1337822 tp_is_empty!9365 setRes!13779 tp!638093))))

(declare-fun condSetEmpty!13780 () Bool)

(assert (=> b!2105358 (= condSetEmpty!13780 (= (_2!12978 (h!28618 mapDefault!10807)) ((as const (Array Context!2266 Bool)) false)))))

(declare-fun setIsEmpty!13779 () Bool)

(assert (=> setIsEmpty!13779 setRes!13779))

(declare-fun b!2105359 () Bool)

(declare-fun tp!638086 () Bool)

(assert (=> b!2105359 (= e!1337822 tp!638086)))

(declare-fun condMapEmpty!10807 () Bool)

(assert (=> mapNonEmpty!10801 (= condMapEmpty!10807 (= mapRest!10801 ((as const (Array (_ BitVec 32) List!23301)) mapDefault!10807)))))

(declare-fun mapRes!10807 () Bool)

(assert (=> mapNonEmpty!10801 (= tp!637946 (and e!1337825 mapRes!10807))))

(declare-fun mapIsEmpty!10807 () Bool)

(assert (=> mapIsEmpty!10807 mapRes!10807))

(declare-fun setIsEmpty!13780 () Bool)

(declare-fun setRes!13780 () Bool)

(assert (=> setIsEmpty!13780 setRes!13780))

(declare-fun tp!638090 () Bool)

(declare-fun setElem!13779 () Context!2266)

(declare-fun setNonEmpty!13779 () Bool)

(assert (=> setNonEmpty!13779 (= setRes!13780 (and tp!638090 (inv!30749 setElem!13779) e!1337823))))

(declare-fun mapValue!10807 () List!23301)

(declare-fun setRest!13779 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13779 (= (_2!12978 (h!28618 mapValue!10807)) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13779 true) setRest!13779))))

(declare-fun tp!638091 () Bool)

(declare-fun e!1337821 () Bool)

(declare-fun setElem!13780 () Context!2266)

(declare-fun setNonEmpty!13780 () Bool)

(assert (=> setNonEmpty!13780 (= setRes!13779 (and tp!638091 (inv!30749 setElem!13780) e!1337821))))

(declare-fun setRest!13780 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13780 (= (_2!12978 (h!28618 mapDefault!10807)) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13780 true) setRest!13780))))

(declare-fun b!2105360 () Bool)

(declare-fun tp!638095 () Bool)

(assert (=> b!2105360 (= e!1337821 tp!638095)))

(declare-fun tp!638087 () Bool)

(declare-fun e!1337824 () Bool)

(declare-fun b!2105361 () Bool)

(declare-fun e!1337826 () Bool)

(declare-fun tp!638088 () Bool)

(assert (=> b!2105361 (= e!1337826 (and tp!638087 (inv!30749 (_2!12977 (_1!12978 (h!28618 mapValue!10807)))) e!1337824 tp_is_empty!9365 setRes!13780 tp!638088))))

(declare-fun condSetEmpty!13779 () Bool)

(assert (=> b!2105361 (= condSetEmpty!13779 (= (_2!12978 (h!28618 mapValue!10807)) ((as const (Array Context!2266 Bool)) false)))))

(declare-fun b!2105362 () Bool)

(declare-fun tp!638085 () Bool)

(assert (=> b!2105362 (= e!1337824 tp!638085)))

(declare-fun mapNonEmpty!10807 () Bool)

(declare-fun tp!638089 () Bool)

(assert (=> mapNonEmpty!10807 (= mapRes!10807 (and tp!638089 e!1337826))))

(declare-fun mapKey!10807 () (_ BitVec 32))

(declare-fun mapRest!10807 () (Array (_ BitVec 32) List!23301))

(assert (=> mapNonEmpty!10807 (= mapRest!10801 (store mapRest!10807 mapKey!10807 mapValue!10807))))

(assert (= (and mapNonEmpty!10801 condMapEmpty!10807) mapIsEmpty!10807))

(assert (= (and mapNonEmpty!10801 (not condMapEmpty!10807)) mapNonEmpty!10807))

(assert (= b!2105361 b!2105362))

(assert (= (and b!2105361 condSetEmpty!13779) setIsEmpty!13780))

(assert (= (and b!2105361 (not condSetEmpty!13779)) setNonEmpty!13779))

(assert (= setNonEmpty!13779 b!2105357))

(assert (= (and mapNonEmpty!10807 ((_ is Cons!23217) mapValue!10807)) b!2105361))

(assert (= b!2105358 b!2105359))

(assert (= (and b!2105358 condSetEmpty!13780) setIsEmpty!13779))

(assert (= (and b!2105358 (not condSetEmpty!13780)) setNonEmpty!13780))

(assert (= setNonEmpty!13780 b!2105360))

(assert (= (and mapNonEmpty!10801 ((_ is Cons!23217) mapDefault!10807)) b!2105358))

(declare-fun m!2563987 () Bool)

(assert (=> b!2105358 m!2563987))

(declare-fun m!2563989 () Bool)

(assert (=> setNonEmpty!13780 m!2563989))

(declare-fun m!2563991 () Bool)

(assert (=> mapNonEmpty!10807 m!2563991))

(declare-fun m!2563993 () Bool)

(assert (=> b!2105361 m!2563993))

(declare-fun m!2563995 () Bool)

(assert (=> setNonEmpty!13779 m!2563995))

(declare-fun b!2105363 () Bool)

(declare-fun e!1337828 () Bool)

(declare-fun tp!638098 () Bool)

(assert (=> b!2105363 (= e!1337828 tp!638098)))

(declare-fun e!1337829 () Bool)

(assert (=> mapNonEmpty!10801 (= tp!637957 e!1337829)))

(declare-fun setIsEmpty!13781 () Bool)

(declare-fun setRes!13781 () Bool)

(assert (=> setIsEmpty!13781 setRes!13781))

(declare-fun e!1337827 () Bool)

(declare-fun b!2105364 () Bool)

(declare-fun tp!638097 () Bool)

(declare-fun tp!638099 () Bool)

(assert (=> b!2105364 (= e!1337829 (and tp!638099 (inv!30749 (_2!12977 (_1!12978 (h!28618 mapValue!10801)))) e!1337827 tp_is_empty!9365 setRes!13781 tp!638097))))

(declare-fun condSetEmpty!13781 () Bool)

(assert (=> b!2105364 (= condSetEmpty!13781 (= (_2!12978 (h!28618 mapValue!10801)) ((as const (Array Context!2266 Bool)) false)))))

(declare-fun setNonEmpty!13781 () Bool)

(declare-fun setElem!13781 () Context!2266)

(declare-fun tp!638096 () Bool)

(assert (=> setNonEmpty!13781 (= setRes!13781 (and tp!638096 (inv!30749 setElem!13781) e!1337828))))

(declare-fun setRest!13781 () (InoxSet Context!2266))

(assert (=> setNonEmpty!13781 (= (_2!12978 (h!28618 mapValue!10801)) ((_ map or) (store ((as const (Array Context!2266 Bool)) false) setElem!13781 true) setRest!13781))))

(declare-fun b!2105365 () Bool)

(declare-fun tp!638100 () Bool)

(assert (=> b!2105365 (= e!1337827 tp!638100)))

(assert (= b!2105364 b!2105365))

(assert (= (and b!2105364 condSetEmpty!13781) setIsEmpty!13781))

(assert (= (and b!2105364 (not condSetEmpty!13781)) setNonEmpty!13781))

(assert (= setNonEmpty!13781 b!2105363))

(assert (= (and mapNonEmpty!10801 ((_ is Cons!23217) mapValue!10801)) b!2105364))

(declare-fun m!2563997 () Bool)

(assert (=> b!2105364 m!2563997))

(declare-fun m!2563999 () Bool)

(assert (=> setNonEmpty!13781 m!2563999))

(declare-fun b!2105377 () Bool)

(declare-fun e!1337832 () Bool)

(declare-fun tp!638111 () Bool)

(declare-fun tp!638115 () Bool)

(assert (=> b!2105377 (= e!1337832 (and tp!638111 tp!638115))))

(declare-fun b!2105379 () Bool)

(declare-fun tp!638113 () Bool)

(declare-fun tp!638114 () Bool)

(assert (=> b!2105379 (= e!1337832 (and tp!638113 tp!638114))))

(declare-fun b!2105376 () Bool)

(assert (=> b!2105376 (= e!1337832 tp_is_empty!9365)))

(assert (=> b!2105184 (= tp!637954 e!1337832)))

(declare-fun b!2105378 () Bool)

(declare-fun tp!638112 () Bool)

(assert (=> b!2105378 (= e!1337832 tp!638112)))

(assert (= (and b!2105184 ((_ is ElementMatch!5563) (regex!4133 (h!28621 rulesArg!349)))) b!2105376))

(assert (= (and b!2105184 ((_ is Concat!9832) (regex!4133 (h!28621 rulesArg!349)))) b!2105377))

(assert (= (and b!2105184 ((_ is Star!5563) (regex!4133 (h!28621 rulesArg!349)))) b!2105378))

(assert (= (and b!2105184 ((_ is Union!5563) (regex!4133 (h!28621 rulesArg!349)))) b!2105379))

(check-sat (not b!2105342) b_and!170011 (not b!2105297) (not b_next!61151) (not b!2105305) b_and!170013 (not b!2105272) (not d!641657) (not setNonEmpty!13774) (not b!2105288) (not b!2105211) (not b!2105317) (not b_next!61155) (not b!2105253) (not b!2105283) (not setNonEmpty!13765) (not b!2105334) (not b!2105365) (not b!2105254) (not b!2105218) (not d!641653) (not b!2105210) (not b!2105245) (not b!2105359) (not b_next!61141) (not setNonEmpty!13781) (not b!2105257) (not b!2105247) (not b!2105314) (not b!2105303) (not setNonEmpty!13760) (not b!2105319) (not d!641659) (not b!2105271) (not b!2105285) (not b!2105220) (not d!641651) (not b!2105185) (not d!641679) (not b!2105362) (not b!2105242) (not b!2105302) (not b!2105301) (not b!2105337) b_and!170003 (not b!2105270) (not b!2105260) (not b!2105361) (not b!2105379) (not b_next!61149) (not b!2105335) (not b!2105341) (not b!2105274) (not b!2105339) tp_is_empty!9365 (not b!2105252) (not d!641671) (not d!641641) (not d!641665) (not setNonEmpty!13761) (not b!2105318) (not setNonEmpty!13780) (not b!2105223) (not b!2105284) b_and!170005 (not b!2105377) (not setNonEmpty!13766) b_and!170001 (not b!2105269) (not b!2105228) (not setNonEmpty!13773) (not d!641681) b_and!170009 (not setNonEmpty!13779) (not b!2105340) (not b!2105243) (not b!2105299) b_and!170007 (not b!2105249) (not b!2105304) (not b_next!61153) (not b_next!61145) (not b!2105198) (not b!2105298) (not setNonEmpty!13764) (not setNonEmpty!13767) (not b!2105209) (not d!641649) (not d!641645) (not b!2105300) (not b!2105363) (not b!2105315) (not d!641677) (not setNonEmpty!13772) (not b!2105287) (not b_next!61143) (not b_next!61147) (not b!2105286) (not b!2105378) (not b!2105273) (not b!2105357) (not b!2105360) (not b!2105246) (not b!2105229) b_and!169999 (not mapNonEmpty!10804) (not b!2105364) (not b!2105358) (not b!2105336) (not mapNonEmpty!10807) (not b!2105338))
(check-sat (not b_next!61151) b_and!170013 (not b_next!61155) (not b_next!61141) b_and!170011 b_and!170005 b_and!170001 b_and!170009 b_and!170007 (not b_next!61153) (not b_next!61145) b_and!169999 b_and!170003 (not b_next!61149) (not b_next!61143) (not b_next!61147))
