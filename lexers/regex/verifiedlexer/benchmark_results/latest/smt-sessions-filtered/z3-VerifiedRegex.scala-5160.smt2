; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265940 () Bool)

(assert start!265940)

(declare-fun b!2743656 () Bool)

(declare-fun b_free!77129 () Bool)

(declare-fun b_next!77833 () Bool)

(assert (=> b!2743656 (= b_free!77129 (not b_next!77833))))

(declare-fun tp!862995 () Bool)

(declare-fun b_and!201849 () Bool)

(assert (=> b!2743656 (= tp!862995 b_and!201849)))

(declare-fun b_free!77131 () Bool)

(declare-fun b_next!77835 () Bool)

(assert (=> b!2743656 (= b_free!77131 (not b_next!77835))))

(declare-fun tp!862986 () Bool)

(declare-fun b_and!201851 () Bool)

(assert (=> b!2743656 (= tp!862986 b_and!201851)))

(declare-fun b!2743646 () Bool)

(declare-fun b_free!77133 () Bool)

(declare-fun b_next!77837 () Bool)

(assert (=> b!2743646 (= b_free!77133 (not b_next!77837))))

(declare-fun tp!862979 () Bool)

(declare-fun b_and!201853 () Bool)

(assert (=> b!2743646 (= tp!862979 b_and!201853)))

(declare-fun b!2743642 () Bool)

(declare-fun b_free!77135 () Bool)

(declare-fun b_next!77839 () Bool)

(assert (=> b!2743642 (= b_free!77135 (not b_next!77839))))

(declare-fun tp!862981 () Bool)

(declare-fun b_and!201855 () Bool)

(assert (=> b!2743642 (= tp!862981 b_and!201855)))

(declare-fun b!2743650 () Bool)

(declare-fun b_free!77137 () Bool)

(declare-fun b_next!77841 () Bool)

(assert (=> b!2743650 (= b_free!77137 (not b_next!77841))))

(declare-fun tp!862982 () Bool)

(declare-fun b_and!201857 () Bool)

(assert (=> b!2743650 (= tp!862982 b_and!201857)))

(declare-fun b!2743649 () Bool)

(declare-fun b_free!77139 () Bool)

(declare-fun b_next!77843 () Bool)

(assert (=> b!2743649 (= b_free!77139 (not b_next!77843))))

(declare-fun tp!862989 () Bool)

(declare-fun b_and!201859 () Bool)

(assert (=> b!2743649 (= tp!862989 b_and!201859)))

(declare-fun e!1727970 () Bool)

(declare-fun e!1727973 () Bool)

(assert (=> b!2743642 (= e!1727970 (and e!1727973 tp!862981))))

(declare-fun b!2743643 () Bool)

(declare-fun e!1727960 () Bool)

(declare-fun e!1727959 () Bool)

(assert (=> b!2743643 (= e!1727960 e!1727959)))

(declare-fun b!2743644 () Bool)

(declare-fun e!1727971 () Bool)

(declare-fun tp!862980 () Bool)

(declare-fun mapRes!16349 () Bool)

(assert (=> b!2743644 (= e!1727971 (and tp!862980 mapRes!16349))))

(declare-fun condMapEmpty!16350 () Bool)

(declare-datatypes ((array!12763 0))(
  ( (array!12764 (arr!5702 (Array (_ BitVec 32) (_ BitVec 64))) (size!24351 (_ BitVec 32))) )
))
(declare-datatypes ((C!16128 0))(
  ( (C!16129 (val!9998 Int)) )
))
(declare-datatypes ((Regex!7985 0))(
  ( (ElementMatch!7985 (c!444777 C!16128)) (Concat!13039 (regOne!16482 Regex!7985) (regTwo!16482 Regex!7985)) (EmptyExpr!7985) (Star!7985 (reg!8314 Regex!7985)) (EmptyLang!7985) (Union!7985 (regOne!16483 Regex!7985) (regTwo!16483 Regex!7985)) )
))
(declare-datatypes ((List!31642 0))(
  ( (Nil!31542) (Cons!31542 (h!36962 Regex!7985) (t!227730 List!31642)) )
))
(declare-datatypes ((Context!4406 0))(
  ( (Context!4407 (exprs!2703 List!31642)) )
))
(declare-datatypes ((tuple2!31320 0))(
  ( (tuple2!31321 (_1!18312 Context!4406) (_2!18312 C!16128)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31322 0))(
  ( (tuple2!31323 (_1!18313 tuple2!31320) (_2!18313 (InoxSet Context!4406))) )
))
(declare-datatypes ((List!31643 0))(
  ( (Nil!31543) (Cons!31543 (h!36963 tuple2!31322) (t!227731 List!31643)) )
))
(declare-datatypes ((array!12765 0))(
  ( (array!12766 (arr!5703 (Array (_ BitVec 32) List!31643)) (size!24352 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7168 0))(
  ( (LongMapFixedSize!7169 (defaultEntry!3969 Int) (mask!9313 (_ BitVec 32)) (extraKeys!3833 (_ BitVec 32)) (zeroValue!3843 List!31643) (minValue!3843 List!31643) (_size!7211 (_ BitVec 32)) (_keys!3884 array!12763) (_values!3865 array!12765) (_vacant!3645 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14145 0))(
  ( (Cell!14146 (v!33188 LongMapFixedSize!7168)) )
))
(declare-datatypes ((MutLongMap!3584 0))(
  ( (LongMap!3584 (underlying!7371 Cell!14145)) (MutLongMapExt!3583 (__x!20338 Int)) )
))
(declare-datatypes ((Cell!14147 0))(
  ( (Cell!14148 (v!33189 MutLongMap!3584)) )
))
(declare-datatypes ((Hashable!3500 0))(
  ( (HashableExt!3499 (__x!20339 Int)) )
))
(declare-datatypes ((MutableMap!3490 0))(
  ( (MutableMapExt!3489 (__x!20340 Int)) (HashMap!3490 (underlying!7372 Cell!14147) (hashF!5532 Hashable!3500) (_size!7212 (_ BitVec 32)) (defaultValue!3661 Int)) )
))
(declare-datatypes ((CacheUp!2198 0))(
  ( (CacheUp!2199 (cache!3633 MutableMap!3490)) )
))
(declare-fun cacheUp!633 () CacheUp!2198)

(declare-fun mapDefault!16350 () List!31643)

(assert (=> b!2743644 (= condMapEmpty!16350 (= (arr!5703 (_values!3865 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31643)) mapDefault!16350)))))

(declare-fun b!2743645 () Bool)

(declare-fun e!1727967 () Bool)

(declare-fun e!1727968 () Bool)

(declare-fun tp!862993 () Bool)

(assert (=> b!2743645 (= e!1727967 (and e!1727968 tp!862993))))

(declare-fun e!1727958 () Bool)

(declare-fun tp!862987 () Bool)

(declare-fun tp!862994 () Bool)

(declare-fun array_inv!4072 (array!12763) Bool)

(declare-fun array_inv!4073 (array!12765) Bool)

(assert (=> b!2743646 (= e!1727958 (and tp!862979 tp!862987 tp!862994 (array_inv!4072 (_keys!3884 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))))) (array_inv!4073 (_values!3865 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))))) e!1727971))))

(declare-fun b!2743647 () Bool)

(declare-fun e!1727956 () Bool)

(assert (=> b!2743647 (= e!1727956 e!1727970)))

(declare-fun b!2743648 () Bool)

(declare-fun res!1151713 () Bool)

(declare-fun e!1727962 () Bool)

(assert (=> b!2743648 (=> (not res!1151713) (not e!1727962))))

(declare-datatypes ((List!31644 0))(
  ( (Nil!31544) (Cons!31544 (h!36964 (_ BitVec 16)) (t!227732 List!31644)) )
))
(declare-datatypes ((TokenValue!5054 0))(
  ( (FloatLiteralValue!10108 (text!35823 List!31644)) (TokenValueExt!5053 (__x!20341 Int)) (Broken!25270 (value!155287 List!31644)) (Object!5153) (End!5054) (Def!5054) (Underscore!5054) (Match!5054) (Else!5054) (Error!5054) (Case!5054) (If!5054) (Extends!5054) (Abstract!5054) (Class!5054) (Val!5054) (DelimiterValue!10108 (del!5114 List!31644)) (KeywordValue!5060 (value!155288 List!31644)) (CommentValue!10108 (value!155289 List!31644)) (WhitespaceValue!10108 (value!155290 List!31644)) (IndentationValue!5054 (value!155291 List!31644)) (String!35171) (Int32!5054) (Broken!25271 (value!155292 List!31644)) (Boolean!5055) (Unit!45500) (OperatorValue!5057 (op!5114 List!31644)) (IdentifierValue!10108 (value!155293 List!31644)) (IdentifierValue!10109 (value!155294 List!31644)) (WhitespaceValue!10109 (value!155295 List!31644)) (True!10108) (False!10108) (Broken!25272 (value!155296 List!31644)) (Broken!25273 (value!155297 List!31644)) (True!10109) (RightBrace!5054) (RightBracket!5054) (Colon!5054) (Null!5054) (Comma!5054) (LeftBracket!5054) (False!10109) (LeftBrace!5054) (ImaginaryLiteralValue!5054 (text!35824 List!31644)) (StringLiteralValue!15162 (value!155298 List!31644)) (EOFValue!5054 (value!155299 List!31644)) (IdentValue!5054 (value!155300 List!31644)) (DelimiterValue!10109 (value!155301 List!31644)) (DedentValue!5054 (value!155302 List!31644)) (NewLineValue!5054 (value!155303 List!31644)) (IntegerValue!15162 (value!155304 (_ BitVec 32)) (text!35825 List!31644)) (IntegerValue!15163 (value!155305 Int) (text!35826 List!31644)) (Times!5054) (Or!5054) (Equal!5054) (Minus!5054) (Broken!25274 (value!155306 List!31644)) (And!5054) (Div!5054) (LessEqual!5054) (Mod!5054) (Concat!13040) (Not!5054) (Plus!5054) (SpaceValue!5054 (value!155307 List!31644)) (IntegerValue!15164 (value!155308 Int) (text!35827 List!31644)) (StringLiteralValue!15163 (text!35828 List!31644)) (FloatLiteralValue!10109 (text!35829 List!31644)) (BytesLiteralValue!5054 (value!155309 List!31644)) (CommentValue!10109 (value!155310 List!31644)) (StringLiteralValue!15164 (value!155311 List!31644)) (ErrorTokenValue!5054 (msg!5115 List!31644)) )
))
(declare-datatypes ((List!31645 0))(
  ( (Nil!31545) (Cons!31545 (h!36965 C!16128) (t!227733 List!31645)) )
))
(declare-datatypes ((IArray!19755 0))(
  ( (IArray!19756 (innerList!9935 List!31645)) )
))
(declare-datatypes ((Conc!9875 0))(
  ( (Node!9875 (left!24205 Conc!9875) (right!24535 Conc!9875) (csize!19980 Int) (cheight!10086 Int)) (Leaf!15036 (xs!12982 IArray!19755) (csize!19981 Int)) (Empty!9875) )
))
(declare-datatypes ((BalanceConc!19364 0))(
  ( (BalanceConc!19365 (c!444778 Conc!9875)) )
))
(declare-datatypes ((TokenValueInjection!9548 0))(
  ( (TokenValueInjection!9549 (toValue!6830 Int) (toChars!6689 Int)) )
))
(declare-datatypes ((String!35172 0))(
  ( (String!35173 (value!155312 String)) )
))
(declare-datatypes ((Rule!9464 0))(
  ( (Rule!9465 (regex!4832 Regex!7985) (tag!5336 String!35172) (isSeparator!4832 Bool) (transformation!4832 TokenValueInjection!9548)) )
))
(declare-datatypes ((List!31646 0))(
  ( (Nil!31546) (Cons!31546 (h!36966 Rule!9464) (t!227734 List!31646)) )
))
(declare-fun rulesArg!249 () List!31646)

(declare-fun isEmpty!18019 (List!31646) Bool)

(assert (=> b!2743648 (= res!1151713 (not (isEmpty!18019 rulesArg!249)))))

(declare-fun mapIsEmpty!16349 () Bool)

(assert (=> mapIsEmpty!16349 mapRes!16349))

(declare-fun e!1727957 () Bool)

(declare-fun e!1727955 () Bool)

(assert (=> b!2743649 (= e!1727957 (and e!1727955 tp!862989))))

(declare-datatypes ((tuple3!4364 0))(
  ( (tuple3!4365 (_1!18314 Regex!7985) (_2!18314 Context!4406) (_3!2652 C!16128)) )
))
(declare-datatypes ((tuple2!31324 0))(
  ( (tuple2!31325 (_1!18315 tuple3!4364) (_2!18315 (InoxSet Context!4406))) )
))
(declare-datatypes ((List!31647 0))(
  ( (Nil!31547) (Cons!31547 (h!36967 tuple2!31324) (t!227735 List!31647)) )
))
(declare-datatypes ((array!12767 0))(
  ( (array!12768 (arr!5704 (Array (_ BitVec 32) List!31647)) (size!24353 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7170 0))(
  ( (LongMapFixedSize!7171 (defaultEntry!3970 Int) (mask!9314 (_ BitVec 32)) (extraKeys!3834 (_ BitVec 32)) (zeroValue!3844 List!31647) (minValue!3844 List!31647) (_size!7213 (_ BitVec 32)) (_keys!3885 array!12763) (_values!3866 array!12767) (_vacant!3646 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14149 0))(
  ( (Cell!14150 (v!33190 LongMapFixedSize!7170)) )
))
(declare-datatypes ((MutLongMap!3585 0))(
  ( (LongMap!3585 (underlying!7373 Cell!14149)) (MutLongMapExt!3584 (__x!20342 Int)) )
))
(declare-datatypes ((Cell!14151 0))(
  ( (Cell!14152 (v!33191 MutLongMap!3585)) )
))
(declare-datatypes ((Hashable!3501 0))(
  ( (HashableExt!3500 (__x!20343 Int)) )
))
(declare-datatypes ((MutableMap!3491 0))(
  ( (MutableMapExt!3490 (__x!20344 Int)) (HashMap!3491 (underlying!7374 Cell!14151) (hashF!5533 Hashable!3501) (_size!7214 (_ BitVec 32)) (defaultValue!3662 Int)) )
))
(declare-datatypes ((CacheDown!2314 0))(
  ( (CacheDown!2315 (cache!3634 MutableMap!3491)) )
))
(declare-fun cacheDown!646 () CacheDown!2314)

(declare-fun tp!862983 () Bool)

(declare-fun tp!862985 () Bool)

(declare-fun e!1727961 () Bool)

(declare-fun e!1727972 () Bool)

(declare-fun array_inv!4074 (array!12767) Bool)

(assert (=> b!2743650 (= e!1727961 (and tp!862982 tp!862983 tp!862985 (array_inv!4072 (_keys!3885 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))))) (array_inv!4074 (_values!3866 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))))) e!1727972))))

(declare-fun b!2743651 () Bool)

(declare-fun e!1727963 () Bool)

(assert (=> b!2743651 (= e!1727963 e!1727957)))

(declare-fun e!1727965 () Bool)

(declare-fun b!2743652 () Bool)

(declare-fun tp!862991 () Bool)

(declare-fun inv!42882 (String!35172) Bool)

(declare-fun inv!42886 (TokenValueInjection!9548) Bool)

(assert (=> b!2743652 (= e!1727968 (and tp!862991 (inv!42882 (tag!5336 (h!36966 rulesArg!249))) (inv!42886 (transformation!4832 (h!36966 rulesArg!249))) e!1727965))))

(declare-fun b!2743653 () Bool)

(declare-fun e!1727953 () Bool)

(assert (=> b!2743653 (= e!1727953 e!1727958)))

(declare-fun mapNonEmpty!16349 () Bool)

(declare-fun tp!862997 () Bool)

(declare-fun tp!862988 () Bool)

(assert (=> mapNonEmpty!16349 (= mapRes!16349 (and tp!862997 tp!862988))))

(declare-fun mapKey!16350 () (_ BitVec 32))

(declare-fun mapRest!16350 () (Array (_ BitVec 32) List!31643))

(declare-fun mapValue!16350 () List!31643)

(assert (=> mapNonEmpty!16349 (= (arr!5703 (_values!3865 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))))) (store mapRest!16350 mapKey!16350 mapValue!16350))))

(declare-fun b!2743654 () Bool)

(assert (=> b!2743654 (= e!1727959 e!1727961)))

(declare-fun mapIsEmpty!16350 () Bool)

(declare-fun mapRes!16350 () Bool)

(assert (=> mapIsEmpty!16350 mapRes!16350))

(declare-fun b!2743655 () Bool)

(declare-fun res!1151714 () Bool)

(assert (=> b!2743655 (=> (not res!1151714) (not e!1727962))))

(declare-fun valid!2783 (CacheDown!2314) Bool)

(assert (=> b!2743655 (= res!1151714 (valid!2783 cacheDown!646))))

(assert (=> b!2743656 (= e!1727965 (and tp!862995 tp!862986))))

(declare-fun b!2743657 () Bool)

(declare-fun e!1727952 () Bool)

(assert (=> b!2743657 (= e!1727962 (not e!1727952))))

(declare-fun res!1151712 () Bool)

(assert (=> b!2743657 (=> res!1151712 e!1727952)))

(get-info :version)

(assert (=> b!2743657 (= res!1151712 (or (and ((_ is Cons!31546) rulesArg!249) ((_ is Nil!31546) (t!227734 rulesArg!249))) (not ((_ is Cons!31546) rulesArg!249))))))

(declare-fun lt!971245 () List!31645)

(declare-fun isPrefix!2510 (List!31645 List!31645) Bool)

(assert (=> b!2743657 (isPrefix!2510 lt!971245 lt!971245)))

(declare-datatypes ((Unit!45501 0))(
  ( (Unit!45502) )
))
(declare-fun lt!971244 () Unit!45501)

(declare-fun lemmaIsPrefixRefl!1636 (List!31645 List!31645) Unit!45501)

(assert (=> b!2743657 (= lt!971244 (lemmaIsPrefixRefl!1636 lt!971245 lt!971245))))

(declare-fun input!1326 () BalanceConc!19364)

(declare-fun list!11983 (BalanceConc!19364) List!31645)

(assert (=> b!2743657 (= lt!971245 (list!11983 input!1326))))

(declare-fun b!2743658 () Bool)

(declare-fun lt!971242 () MutLongMap!3585)

(assert (=> b!2743658 (= e!1727973 (and e!1727960 ((_ is LongMap!3585) lt!971242)))))

(assert (=> b!2743658 (= lt!971242 (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))))

(declare-fun b!2743659 () Bool)

(declare-fun tp!862990 () Bool)

(assert (=> b!2743659 (= e!1727972 (and tp!862990 mapRes!16350))))

(declare-fun condMapEmpty!16349 () Bool)

(declare-fun mapDefault!16349 () List!31647)

(assert (=> b!2743659 (= condMapEmpty!16349 (= (arr!5704 (_values!3866 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31647)) mapDefault!16349)))))

(declare-fun b!2743660 () Bool)

(declare-fun res!1151715 () Bool)

(assert (=> b!2743660 (=> (not res!1151715) (not e!1727962))))

(declare-fun valid!2784 (CacheUp!2198) Bool)

(assert (=> b!2743660 (= res!1151715 (valid!2784 cacheUp!633))))

(declare-fun b!2743661 () Bool)

(declare-fun e!1727969 () Bool)

(assert (=> b!2743661 (= e!1727969 e!1727953)))

(declare-fun b!2743662 () Bool)

(declare-fun e!1727964 () Bool)

(declare-fun tp!862996 () Bool)

(declare-fun inv!42887 (Conc!9875) Bool)

(assert (=> b!2743662 (= e!1727964 (and (inv!42887 (c!444778 input!1326)) tp!862996))))

(declare-fun b!2743663 () Bool)

(declare-fun res!1151717 () Bool)

(assert (=> b!2743663 (=> (not res!1151717) (not e!1727962))))

(declare-datatypes ((LexerInterface!4427 0))(
  ( (LexerInterfaceExt!4424 (__x!20345 Int)) (Lexer!4425) )
))
(declare-fun thiss!15207 () LexerInterface!4427)

(declare-fun rulesValidInductive!1697 (LexerInterface!4427 List!31646) Bool)

(assert (=> b!2743663 (= res!1151717 (rulesValidInductive!1697 thiss!15207 rulesArg!249))))

(declare-fun mapNonEmpty!16350 () Bool)

(declare-fun tp!862984 () Bool)

(declare-fun tp!862992 () Bool)

(assert (=> mapNonEmpty!16350 (= mapRes!16350 (and tp!862984 tp!862992))))

(declare-fun mapValue!16349 () List!31647)

(declare-fun mapKey!16349 () (_ BitVec 32))

(declare-fun mapRest!16349 () (Array (_ BitVec 32) List!31647))

(assert (=> mapNonEmpty!16350 (= (arr!5704 (_values!3866 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))))) (store mapRest!16349 mapKey!16349 mapValue!16349))))

(declare-fun b!2743664 () Bool)

(declare-fun lt!971246 () MutLongMap!3584)

(assert (=> b!2743664 (= e!1727955 (and e!1727969 ((_ is LongMap!3584) lt!971246)))))

(assert (=> b!2743664 (= lt!971246 (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))))

(declare-fun b!2743665 () Bool)

(assert (=> b!2743665 (= e!1727952 (rulesValidInductive!1697 thiss!15207 (t!227734 rulesArg!249)))))

(declare-datatypes ((Token!9100 0))(
  ( (Token!9101 (value!155313 TokenValue!5054) (rule!7269 Rule!9464) (size!24354 Int) (originalCharacters!5581 List!31645)) )
))
(declare-datatypes ((tuple2!31326 0))(
  ( (tuple2!31327 (_1!18316 Token!9100) (_2!18316 BalanceConc!19364)) )
))
(declare-datatypes ((Option!6229 0))(
  ( (None!6228) (Some!6228 (v!33192 tuple2!31326)) )
))
(declare-datatypes ((tuple3!4366 0))(
  ( (tuple3!4367 (_1!18317 Option!6229) (_2!18317 CacheUp!2198) (_3!2653 CacheDown!2314)) )
))
(declare-fun lt!971243 () tuple3!4366)

(declare-fun maxPrefixOneRuleZipperSequenceMem!15 (LexerInterface!4427 Rule!9464 BalanceConc!19364 CacheUp!2198 CacheDown!2314) tuple3!4366)

(assert (=> b!2743665 (= lt!971243 (maxPrefixOneRuleZipperSequenceMem!15 thiss!15207 (h!36966 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun res!1151716 () Bool)

(assert (=> start!265940 (=> (not res!1151716) (not e!1727962))))

(assert (=> start!265940 (= res!1151716 ((_ is Lexer!4425) thiss!15207))))

(assert (=> start!265940 e!1727962))

(declare-fun inv!42888 (CacheDown!2314) Bool)

(assert (=> start!265940 (and (inv!42888 cacheDown!646) e!1727956)))

(declare-fun inv!42889 (BalanceConc!19364) Bool)

(assert (=> start!265940 (and (inv!42889 input!1326) e!1727964)))

(assert (=> start!265940 e!1727967))

(declare-fun inv!42890 (CacheUp!2198) Bool)

(assert (=> start!265940 (and (inv!42890 cacheUp!633) e!1727963)))

(assert (=> start!265940 true))

(assert (= (and start!265940 res!1151716) b!2743663))

(assert (= (and b!2743663 res!1151717) b!2743648))

(assert (= (and b!2743648 res!1151713) b!2743660))

(assert (= (and b!2743660 res!1151715) b!2743655))

(assert (= (and b!2743655 res!1151714) b!2743657))

(assert (= (and b!2743657 (not res!1151712)) b!2743665))

(assert (= (and b!2743659 condMapEmpty!16349) mapIsEmpty!16350))

(assert (= (and b!2743659 (not condMapEmpty!16349)) mapNonEmpty!16350))

(assert (= b!2743650 b!2743659))

(assert (= b!2743654 b!2743650))

(assert (= b!2743643 b!2743654))

(assert (= (and b!2743658 ((_ is LongMap!3585) (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))) b!2743643))

(assert (= b!2743642 b!2743658))

(assert (= (and b!2743647 ((_ is HashMap!3491) (cache!3634 cacheDown!646))) b!2743642))

(assert (= start!265940 b!2743647))

(assert (= start!265940 b!2743662))

(assert (= b!2743652 b!2743656))

(assert (= b!2743645 b!2743652))

(assert (= (and start!265940 ((_ is Cons!31546) rulesArg!249)) b!2743645))

(assert (= (and b!2743644 condMapEmpty!16350) mapIsEmpty!16349))

(assert (= (and b!2743644 (not condMapEmpty!16350)) mapNonEmpty!16349))

(assert (= b!2743646 b!2743644))

(assert (= b!2743653 b!2743646))

(assert (= b!2743661 b!2743653))

(assert (= (and b!2743664 ((_ is LongMap!3584) (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))) b!2743661))

(assert (= b!2743649 b!2743664))

(assert (= (and b!2743651 ((_ is HashMap!3490) (cache!3633 cacheUp!633))) b!2743649))

(assert (= start!265940 b!2743651))

(declare-fun m!3161065 () Bool)

(assert (=> b!2743646 m!3161065))

(declare-fun m!3161067 () Bool)

(assert (=> b!2743646 m!3161067))

(declare-fun m!3161069 () Bool)

(assert (=> b!2743655 m!3161069))

(declare-fun m!3161071 () Bool)

(assert (=> mapNonEmpty!16349 m!3161071))

(declare-fun m!3161073 () Bool)

(assert (=> b!2743660 m!3161073))

(declare-fun m!3161075 () Bool)

(assert (=> b!2743663 m!3161075))

(declare-fun m!3161077 () Bool)

(assert (=> mapNonEmpty!16350 m!3161077))

(declare-fun m!3161079 () Bool)

(assert (=> b!2743650 m!3161079))

(declare-fun m!3161081 () Bool)

(assert (=> b!2743650 m!3161081))

(declare-fun m!3161083 () Bool)

(assert (=> start!265940 m!3161083))

(declare-fun m!3161085 () Bool)

(assert (=> start!265940 m!3161085))

(declare-fun m!3161087 () Bool)

(assert (=> start!265940 m!3161087))

(declare-fun m!3161089 () Bool)

(assert (=> b!2743648 m!3161089))

(declare-fun m!3161091 () Bool)

(assert (=> b!2743657 m!3161091))

(declare-fun m!3161093 () Bool)

(assert (=> b!2743657 m!3161093))

(declare-fun m!3161095 () Bool)

(assert (=> b!2743657 m!3161095))

(declare-fun m!3161097 () Bool)

(assert (=> b!2743665 m!3161097))

(declare-fun m!3161099 () Bool)

(assert (=> b!2743665 m!3161099))

(declare-fun m!3161101 () Bool)

(assert (=> b!2743652 m!3161101))

(declare-fun m!3161103 () Bool)

(assert (=> b!2743652 m!3161103))

(declare-fun m!3161105 () Bool)

(assert (=> b!2743662 m!3161105))

(check-sat b_and!201849 b_and!201855 (not b!2743665) (not b_next!77841) (not b!2743648) b_and!201857 (not b!2743646) (not mapNonEmpty!16349) (not b!2743650) (not b_next!77843) b_and!201853 (not b_next!77839) b_and!201859 (not b!2743657) (not b!2743663) (not b_next!77833) (not b!2743652) (not b!2743655) (not b!2743662) (not b_next!77837) (not b!2743645) (not b!2743659) (not b!2743644) (not b!2743660) (not b_next!77835) b_and!201851 (not mapNonEmpty!16350) (not start!265940))
(check-sat b_and!201859 b_and!201849 b_and!201855 (not b_next!77841) b_and!201857 (not b_next!77833) (not b_next!77837) (not b_next!77835) (not b_next!77843) b_and!201853 (not b_next!77839) b_and!201851)
(get-model)

(declare-fun b!2743677 () Bool)

(declare-fun e!1727981 () Bool)

(declare-fun size!24355 (List!31645) Int)

(assert (=> b!2743677 (= e!1727981 (>= (size!24355 lt!971245) (size!24355 lt!971245)))))

(declare-fun d!795747 () Bool)

(assert (=> d!795747 e!1727981))

(declare-fun res!1151733 () Bool)

(assert (=> d!795747 (=> res!1151733 e!1727981)))

(declare-fun lt!971249 () Bool)

(assert (=> d!795747 (= res!1151733 (not lt!971249))))

(declare-fun e!1727982 () Bool)

(assert (=> d!795747 (= lt!971249 e!1727982)))

(declare-fun res!1151731 () Bool)

(assert (=> d!795747 (=> res!1151731 e!1727982)))

(assert (=> d!795747 (= res!1151731 ((_ is Nil!31545) lt!971245))))

(assert (=> d!795747 (= (isPrefix!2510 lt!971245 lt!971245) lt!971249)))

(declare-fun b!2743676 () Bool)

(declare-fun e!1727980 () Bool)

(declare-fun tail!4347 (List!31645) List!31645)

(assert (=> b!2743676 (= e!1727980 (isPrefix!2510 (tail!4347 lt!971245) (tail!4347 lt!971245)))))

(declare-fun b!2743674 () Bool)

(assert (=> b!2743674 (= e!1727982 e!1727980)))

(declare-fun res!1151730 () Bool)

(assert (=> b!2743674 (=> (not res!1151730) (not e!1727980))))

(assert (=> b!2743674 (= res!1151730 (not ((_ is Nil!31545) lt!971245)))))

(declare-fun b!2743675 () Bool)

(declare-fun res!1151732 () Bool)

(assert (=> b!2743675 (=> (not res!1151732) (not e!1727980))))

(declare-fun head!6109 (List!31645) C!16128)

(assert (=> b!2743675 (= res!1151732 (= (head!6109 lt!971245) (head!6109 lt!971245)))))

(assert (= (and d!795747 (not res!1151731)) b!2743674))

(assert (= (and b!2743674 res!1151730) b!2743675))

(assert (= (and b!2743675 res!1151732) b!2743676))

(assert (= (and d!795747 (not res!1151733)) b!2743677))

(declare-fun m!3161107 () Bool)

(assert (=> b!2743677 m!3161107))

(assert (=> b!2743677 m!3161107))

(declare-fun m!3161109 () Bool)

(assert (=> b!2743676 m!3161109))

(assert (=> b!2743676 m!3161109))

(assert (=> b!2743676 m!3161109))

(assert (=> b!2743676 m!3161109))

(declare-fun m!3161111 () Bool)

(assert (=> b!2743676 m!3161111))

(declare-fun m!3161113 () Bool)

(assert (=> b!2743675 m!3161113))

(assert (=> b!2743675 m!3161113))

(assert (=> b!2743657 d!795747))

(declare-fun d!795749 () Bool)

(assert (=> d!795749 (isPrefix!2510 lt!971245 lt!971245)))

(declare-fun lt!971252 () Unit!45501)

(declare-fun choose!16062 (List!31645 List!31645) Unit!45501)

(assert (=> d!795749 (= lt!971252 (choose!16062 lt!971245 lt!971245))))

(assert (=> d!795749 (= (lemmaIsPrefixRefl!1636 lt!971245 lt!971245) lt!971252)))

(declare-fun bs!490224 () Bool)

(assert (= bs!490224 d!795749))

(assert (=> bs!490224 m!3161091))

(declare-fun m!3161115 () Bool)

(assert (=> bs!490224 m!3161115))

(assert (=> b!2743657 d!795749))

(declare-fun d!795751 () Bool)

(declare-fun list!11984 (Conc!9875) List!31645)

(assert (=> d!795751 (= (list!11983 input!1326) (list!11984 (c!444778 input!1326)))))

(declare-fun bs!490225 () Bool)

(assert (= bs!490225 d!795751))

(declare-fun m!3161117 () Bool)

(assert (=> bs!490225 m!3161117))

(assert (=> b!2743657 d!795751))

(declare-fun d!795753 () Bool)

(declare-fun c!444781 () Bool)

(assert (=> d!795753 (= c!444781 ((_ is Node!9875) (c!444778 input!1326)))))

(declare-fun e!1727987 () Bool)

(assert (=> d!795753 (= (inv!42887 (c!444778 input!1326)) e!1727987)))

(declare-fun b!2743684 () Bool)

(declare-fun inv!42891 (Conc!9875) Bool)

(assert (=> b!2743684 (= e!1727987 (inv!42891 (c!444778 input!1326)))))

(declare-fun b!2743685 () Bool)

(declare-fun e!1727988 () Bool)

(assert (=> b!2743685 (= e!1727987 e!1727988)))

(declare-fun res!1151736 () Bool)

(assert (=> b!2743685 (= res!1151736 (not ((_ is Leaf!15036) (c!444778 input!1326))))))

(assert (=> b!2743685 (=> res!1151736 e!1727988)))

(declare-fun b!2743686 () Bool)

(declare-fun inv!42892 (Conc!9875) Bool)

(assert (=> b!2743686 (= e!1727988 (inv!42892 (c!444778 input!1326)))))

(assert (= (and d!795753 c!444781) b!2743684))

(assert (= (and d!795753 (not c!444781)) b!2743685))

(assert (= (and b!2743685 (not res!1151736)) b!2743686))

(declare-fun m!3161119 () Bool)

(assert (=> b!2743684 m!3161119))

(declare-fun m!3161121 () Bool)

(assert (=> b!2743686 m!3161121))

(assert (=> b!2743662 d!795753))

(declare-fun d!795755 () Bool)

(declare-fun validCacheMapDown!363 (MutableMap!3491) Bool)

(assert (=> d!795755 (= (valid!2783 cacheDown!646) (validCacheMapDown!363 (cache!3634 cacheDown!646)))))

(declare-fun bs!490226 () Bool)

(assert (= bs!490226 d!795755))

(declare-fun m!3161123 () Bool)

(assert (=> bs!490226 m!3161123))

(assert (=> b!2743655 d!795755))

(declare-fun d!795757 () Bool)

(declare-fun validCacheMapUp!332 (MutableMap!3490) Bool)

(assert (=> d!795757 (= (valid!2784 cacheUp!633) (validCacheMapUp!332 (cache!3633 cacheUp!633)))))

(declare-fun bs!490227 () Bool)

(assert (= bs!490227 d!795757))

(declare-fun m!3161125 () Bool)

(assert (=> bs!490227 m!3161125))

(assert (=> b!2743660 d!795757))

(declare-fun d!795759 () Bool)

(assert (=> d!795759 (= (isEmpty!18019 rulesArg!249) ((_ is Nil!31546) rulesArg!249))))

(assert (=> b!2743648 d!795759))

(declare-fun d!795761 () Bool)

(assert (=> d!795761 true))

(declare-fun lt!971255 () Bool)

(declare-fun lambda!100836 () Int)

(declare-fun forall!6574 (List!31646 Int) Bool)

(assert (=> d!795761 (= lt!971255 (forall!6574 (t!227734 rulesArg!249) lambda!100836))))

(declare-fun e!1727993 () Bool)

(assert (=> d!795761 (= lt!971255 e!1727993)))

(declare-fun res!1151742 () Bool)

(assert (=> d!795761 (=> res!1151742 e!1727993)))

(assert (=> d!795761 (= res!1151742 (not ((_ is Cons!31546) (t!227734 rulesArg!249))))))

(assert (=> d!795761 (= (rulesValidInductive!1697 thiss!15207 (t!227734 rulesArg!249)) lt!971255)))

(declare-fun b!2743691 () Bool)

(declare-fun e!1727994 () Bool)

(assert (=> b!2743691 (= e!1727993 e!1727994)))

(declare-fun res!1151741 () Bool)

(assert (=> b!2743691 (=> (not res!1151741) (not e!1727994))))

(declare-fun ruleValid!1582 (LexerInterface!4427 Rule!9464) Bool)

(assert (=> b!2743691 (= res!1151741 (ruleValid!1582 thiss!15207 (h!36966 (t!227734 rulesArg!249))))))

(declare-fun b!2743692 () Bool)

(assert (=> b!2743692 (= e!1727994 (rulesValidInductive!1697 thiss!15207 (t!227734 (t!227734 rulesArg!249))))))

(assert (= (and d!795761 (not res!1151742)) b!2743691))

(assert (= (and b!2743691 res!1151741) b!2743692))

(declare-fun m!3161127 () Bool)

(assert (=> d!795761 m!3161127))

(declare-fun m!3161129 () Bool)

(assert (=> b!2743691 m!3161129))

(declare-fun m!3161131 () Bool)

(assert (=> b!2743692 m!3161131))

(assert (=> b!2743665 d!795761))

(declare-fun b!2743705 () Bool)

(declare-fun e!1728001 () Option!6229)

(declare-datatypes ((tuple2!31328 0))(
  ( (tuple2!31329 (_1!18318 BalanceConc!19364) (_2!18318 BalanceConc!19364)) )
))
(declare-datatypes ((tuple3!4368 0))(
  ( (tuple3!4369 (_1!18319 tuple2!31328) (_2!18319 CacheUp!2198) (_3!2654 CacheDown!2314)) )
))
(declare-fun lt!971270 () tuple3!4368)

(declare-fun apply!7422 (TokenValueInjection!9548 BalanceConc!19364) TokenValue!5054)

(declare-fun size!24356 (BalanceConc!19364) Int)

(assert (=> b!2743705 (= e!1728001 (Some!6228 (tuple2!31327 (Token!9101 (apply!7422 (transformation!4832 (h!36966 rulesArg!249)) (_1!18318 (_1!18319 lt!971270))) (h!36966 rulesArg!249) (size!24356 (_1!18318 (_1!18319 lt!971270))) (list!11983 (_1!18318 (_1!18319 lt!971270)))) (_2!18318 (_1!18319 lt!971270)))))))

(declare-fun lt!971268 () List!31645)

(assert (=> b!2743705 (= lt!971268 (list!11983 input!1326))))

(declare-fun lt!971273 () Unit!45501)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!770 (Regex!7985 List!31645) Unit!45501)

(assert (=> b!2743705 (= lt!971273 (longestMatchIsAcceptedByMatchOrIsEmpty!770 (regex!4832 (h!36966 rulesArg!249)) lt!971268))))

(declare-fun res!1151750 () Bool)

(declare-fun isEmpty!18020 (List!31645) Bool)

(declare-datatypes ((tuple2!31330 0))(
  ( (tuple2!31331 (_1!18320 List!31645) (_2!18320 List!31645)) )
))
(declare-fun findLongestMatchInner!797 (Regex!7985 List!31645 Int List!31645 List!31645 Int) tuple2!31330)

(assert (=> b!2743705 (= res!1151750 (isEmpty!18020 (_1!18320 (findLongestMatchInner!797 (regex!4832 (h!36966 rulesArg!249)) Nil!31545 (size!24355 Nil!31545) lt!971268 lt!971268 (size!24355 lt!971268)))))))

(declare-fun e!1728003 () Bool)

(assert (=> b!2743705 (=> res!1151750 e!1728003)))

(assert (=> b!2743705 e!1728003))

(declare-fun lt!971272 () Unit!45501)

(assert (=> b!2743705 (= lt!971272 lt!971273)))

(declare-fun lt!971271 () Unit!45501)

(declare-fun lemmaSemiInverse!1137 (TokenValueInjection!9548 BalanceConc!19364) Unit!45501)

(assert (=> b!2743705 (= lt!971271 (lemmaSemiInverse!1137 (transformation!4832 (h!36966 rulesArg!249)) (_1!18318 (_1!18319 lt!971270))))))

(declare-fun b!2743706 () Bool)

(declare-fun res!1151751 () Bool)

(declare-fun e!1728002 () Bool)

(assert (=> b!2743706 (=> (not res!1151751) (not e!1728002))))

(declare-fun lt!971269 () tuple3!4366)

(assert (=> b!2743706 (= res!1151751 (valid!2784 (_2!18317 lt!971269)))))

(declare-fun b!2743707 () Bool)

(assert (=> b!2743707 (= e!1728001 None!6228)))

(declare-fun d!795763 () Bool)

(assert (=> d!795763 e!1728002))

(declare-fun res!1151749 () Bool)

(assert (=> d!795763 (=> (not res!1151749) (not e!1728002))))

(declare-fun maxPrefixOneRuleZipperSequence!496 (LexerInterface!4427 Rule!9464 BalanceConc!19364) Option!6229)

(assert (=> d!795763 (= res!1151749 (= (_1!18317 lt!971269) (maxPrefixOneRuleZipperSequence!496 thiss!15207 (h!36966 rulesArg!249) input!1326)))))

(assert (=> d!795763 (= lt!971269 (tuple3!4367 e!1728001 (_2!18319 lt!971270) (_3!2654 lt!971270)))))

(declare-fun c!444784 () Bool)

(declare-fun isEmpty!18021 (BalanceConc!19364) Bool)

(assert (=> d!795763 (= c!444784 (isEmpty!18021 (_1!18318 (_1!18319 lt!971270))))))

(declare-fun findLongestMatchWithZipperSequenceMem!4 (Regex!7985 BalanceConc!19364 CacheUp!2198 CacheDown!2314) tuple3!4368)

(assert (=> d!795763 (= lt!971270 (findLongestMatchWithZipperSequenceMem!4 (regex!4832 (h!36966 rulesArg!249)) input!1326 cacheUp!633 cacheDown!646))))

(assert (=> d!795763 (ruleValid!1582 thiss!15207 (h!36966 rulesArg!249))))

(assert (=> d!795763 (= (maxPrefixOneRuleZipperSequenceMem!15 thiss!15207 (h!36966 rulesArg!249) input!1326 cacheUp!633 cacheDown!646) lt!971269)))

(declare-fun b!2743708 () Bool)

(declare-fun matchR!3650 (Regex!7985 List!31645) Bool)

(assert (=> b!2743708 (= e!1728003 (matchR!3650 (regex!4832 (h!36966 rulesArg!249)) (_1!18320 (findLongestMatchInner!797 (regex!4832 (h!36966 rulesArg!249)) Nil!31545 (size!24355 Nil!31545) lt!971268 lt!971268 (size!24355 lt!971268)))))))

(declare-fun b!2743709 () Bool)

(assert (=> b!2743709 (= e!1728002 (valid!2783 (_3!2653 lt!971269)))))

(assert (= (and d!795763 c!444784) b!2743707))

(assert (= (and d!795763 (not c!444784)) b!2743705))

(assert (= (and b!2743705 (not res!1151750)) b!2743708))

(assert (= (and d!795763 res!1151749) b!2743706))

(assert (= (and b!2743706 res!1151751) b!2743709))

(declare-fun m!3161133 () Bool)

(assert (=> d!795763 m!3161133))

(declare-fun m!3161135 () Bool)

(assert (=> d!795763 m!3161135))

(declare-fun m!3161137 () Bool)

(assert (=> d!795763 m!3161137))

(declare-fun m!3161139 () Bool)

(assert (=> d!795763 m!3161139))

(declare-fun m!3161141 () Bool)

(assert (=> b!2743709 m!3161141))

(declare-fun m!3161143 () Bool)

(assert (=> b!2743708 m!3161143))

(declare-fun m!3161145 () Bool)

(assert (=> b!2743708 m!3161145))

(assert (=> b!2743708 m!3161143))

(assert (=> b!2743708 m!3161145))

(declare-fun m!3161147 () Bool)

(assert (=> b!2743708 m!3161147))

(declare-fun m!3161149 () Bool)

(assert (=> b!2743708 m!3161149))

(declare-fun m!3161151 () Bool)

(assert (=> b!2743705 m!3161151))

(declare-fun m!3161153 () Bool)

(assert (=> b!2743705 m!3161153))

(assert (=> b!2743705 m!3161143))

(declare-fun m!3161155 () Bool)

(assert (=> b!2743705 m!3161155))

(declare-fun m!3161157 () Bool)

(assert (=> b!2743705 m!3161157))

(declare-fun m!3161159 () Bool)

(assert (=> b!2743705 m!3161159))

(assert (=> b!2743705 m!3161145))

(declare-fun m!3161161 () Bool)

(assert (=> b!2743705 m!3161161))

(assert (=> b!2743705 m!3161143))

(assert (=> b!2743705 m!3161145))

(assert (=> b!2743705 m!3161147))

(assert (=> b!2743705 m!3161095))

(declare-fun m!3161163 () Bool)

(assert (=> b!2743706 m!3161163))

(assert (=> b!2743665 d!795763))

(declare-fun d!795765 () Bool)

(assert (=> d!795765 (= (inv!42882 (tag!5336 (h!36966 rulesArg!249))) (= (mod (str.len (value!155312 (tag!5336 (h!36966 rulesArg!249)))) 2) 0))))

(assert (=> b!2743652 d!795765))

(declare-fun d!795767 () Bool)

(declare-fun res!1151754 () Bool)

(declare-fun e!1728006 () Bool)

(assert (=> d!795767 (=> (not res!1151754) (not e!1728006))))

(declare-fun semiInverseModEq!1994 (Int Int) Bool)

(assert (=> d!795767 (= res!1151754 (semiInverseModEq!1994 (toChars!6689 (transformation!4832 (h!36966 rulesArg!249))) (toValue!6830 (transformation!4832 (h!36966 rulesArg!249)))))))

(assert (=> d!795767 (= (inv!42886 (transformation!4832 (h!36966 rulesArg!249))) e!1728006)))

(declare-fun b!2743712 () Bool)

(declare-fun equivClasses!1895 (Int Int) Bool)

(assert (=> b!2743712 (= e!1728006 (equivClasses!1895 (toChars!6689 (transformation!4832 (h!36966 rulesArg!249))) (toValue!6830 (transformation!4832 (h!36966 rulesArg!249)))))))

(assert (= (and d!795767 res!1151754) b!2743712))

(declare-fun m!3161165 () Bool)

(assert (=> d!795767 m!3161165))

(declare-fun m!3161167 () Bool)

(assert (=> b!2743712 m!3161167))

(assert (=> b!2743652 d!795767))

(declare-fun d!795769 () Bool)

(declare-fun res!1151757 () Bool)

(declare-fun e!1728009 () Bool)

(assert (=> d!795769 (=> (not res!1151757) (not e!1728009))))

(assert (=> d!795769 (= res!1151757 ((_ is HashMap!3491) (cache!3634 cacheDown!646)))))

(assert (=> d!795769 (= (inv!42888 cacheDown!646) e!1728009)))

(declare-fun b!2743715 () Bool)

(assert (=> b!2743715 (= e!1728009 (validCacheMapDown!363 (cache!3634 cacheDown!646)))))

(assert (= (and d!795769 res!1151757) b!2743715))

(assert (=> b!2743715 m!3161123))

(assert (=> start!265940 d!795769))

(declare-fun d!795771 () Bool)

(declare-fun isBalanced!3007 (Conc!9875) Bool)

(assert (=> d!795771 (= (inv!42889 input!1326) (isBalanced!3007 (c!444778 input!1326)))))

(declare-fun bs!490228 () Bool)

(assert (= bs!490228 d!795771))

(declare-fun m!3161169 () Bool)

(assert (=> bs!490228 m!3161169))

(assert (=> start!265940 d!795771))

(declare-fun d!795773 () Bool)

(declare-fun res!1151760 () Bool)

(declare-fun e!1728012 () Bool)

(assert (=> d!795773 (=> (not res!1151760) (not e!1728012))))

(assert (=> d!795773 (= res!1151760 ((_ is HashMap!3490) (cache!3633 cacheUp!633)))))

(assert (=> d!795773 (= (inv!42890 cacheUp!633) e!1728012)))

(declare-fun b!2743718 () Bool)

(assert (=> b!2743718 (= e!1728012 (validCacheMapUp!332 (cache!3633 cacheUp!633)))))

(assert (= (and d!795773 res!1151760) b!2743718))

(assert (=> b!2743718 m!3161125))

(assert (=> start!265940 d!795773))

(declare-fun d!795775 () Bool)

(assert (=> d!795775 (= (array_inv!4072 (_keys!3884 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))))) (bvsge (size!24351 (_keys!3884 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743646 d!795775))

(declare-fun d!795777 () Bool)

(assert (=> d!795777 (= (array_inv!4073 (_values!3865 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))))) (bvsge (size!24352 (_values!3865 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743646 d!795777))

(declare-fun d!795779 () Bool)

(assert (=> d!795779 (= (array_inv!4072 (_keys!3885 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))))) (bvsge (size!24351 (_keys!3885 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743650 d!795779))

(declare-fun d!795781 () Bool)

(assert (=> d!795781 (= (array_inv!4074 (_values!3866 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))))) (bvsge (size!24353 (_values!3866 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743650 d!795781))

(declare-fun bs!490229 () Bool)

(declare-fun d!795783 () Bool)

(assert (= bs!490229 (and d!795783 d!795761)))

(declare-fun lambda!100837 () Int)

(assert (=> bs!490229 (= lambda!100837 lambda!100836)))

(assert (=> d!795783 true))

(declare-fun lt!971274 () Bool)

(assert (=> d!795783 (= lt!971274 (forall!6574 rulesArg!249 lambda!100837))))

(declare-fun e!1728013 () Bool)

(assert (=> d!795783 (= lt!971274 e!1728013)))

(declare-fun res!1151762 () Bool)

(assert (=> d!795783 (=> res!1151762 e!1728013)))

(assert (=> d!795783 (= res!1151762 (not ((_ is Cons!31546) rulesArg!249)))))

(assert (=> d!795783 (= (rulesValidInductive!1697 thiss!15207 rulesArg!249) lt!971274)))

(declare-fun b!2743719 () Bool)

(declare-fun e!1728014 () Bool)

(assert (=> b!2743719 (= e!1728013 e!1728014)))

(declare-fun res!1151761 () Bool)

(assert (=> b!2743719 (=> (not res!1151761) (not e!1728014))))

(assert (=> b!2743719 (= res!1151761 (ruleValid!1582 thiss!15207 (h!36966 rulesArg!249)))))

(declare-fun b!2743720 () Bool)

(assert (=> b!2743720 (= e!1728014 (rulesValidInductive!1697 thiss!15207 (t!227734 rulesArg!249)))))

(assert (= (and d!795783 (not res!1151762)) b!2743719))

(assert (= (and b!2743719 res!1151761) b!2743720))

(declare-fun m!3161171 () Bool)

(assert (=> d!795783 m!3161171))

(assert (=> b!2743719 m!3161139))

(assert (=> b!2743720 m!3161097))

(assert (=> b!2743663 d!795783))

(declare-fun setRes!21501 () Bool)

(declare-fun setElem!21501 () Context!4406)

(declare-fun e!1728022 () Bool)

(declare-fun setNonEmpty!21501 () Bool)

(declare-fun tp!863007 () Bool)

(declare-fun inv!42893 (Context!4406) Bool)

(assert (=> setNonEmpty!21501 (= setRes!21501 (and tp!863007 (inv!42893 setElem!21501) e!1728022))))

(declare-fun setRest!21501 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21501 (= (_2!18313 (h!36963 mapDefault!16350)) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21501 true) setRest!21501))))

(declare-fun b!2743729 () Bool)

(declare-fun e!1728023 () Bool)

(declare-fun tp!863006 () Bool)

(assert (=> b!2743729 (= e!1728023 tp!863006)))

(declare-fun e!1728021 () Bool)

(assert (=> b!2743644 (= tp!862980 e!1728021)))

(declare-fun setIsEmpty!21501 () Bool)

(assert (=> setIsEmpty!21501 setRes!21501))

(declare-fun b!2743730 () Bool)

(declare-fun tp_is_empty!13919 () Bool)

(declare-fun tp!863008 () Bool)

(assert (=> b!2743730 (= e!1728021 (and (inv!42893 (_1!18312 (_1!18313 (h!36963 mapDefault!16350)))) e!1728023 tp_is_empty!13919 setRes!21501 tp!863008))))

(declare-fun condSetEmpty!21501 () Bool)

(assert (=> b!2743730 (= condSetEmpty!21501 (= (_2!18313 (h!36963 mapDefault!16350)) ((as const (Array Context!4406 Bool)) false)))))

(declare-fun b!2743731 () Bool)

(declare-fun tp!863009 () Bool)

(assert (=> b!2743731 (= e!1728022 tp!863009)))

(assert (= b!2743730 b!2743729))

(assert (= (and b!2743730 condSetEmpty!21501) setIsEmpty!21501))

(assert (= (and b!2743730 (not condSetEmpty!21501)) setNonEmpty!21501))

(assert (= setNonEmpty!21501 b!2743731))

(assert (= (and b!2743644 ((_ is Cons!31543) mapDefault!16350)) b!2743730))

(declare-fun m!3161173 () Bool)

(assert (=> setNonEmpty!21501 m!3161173))

(declare-fun m!3161175 () Bool)

(assert (=> b!2743730 m!3161175))

(declare-fun e!1728029 () Bool)

(declare-fun b!2743740 () Bool)

(declare-fun tp!863016 () Bool)

(declare-fun tp!863018 () Bool)

(assert (=> b!2743740 (= e!1728029 (and (inv!42887 (left!24205 (c!444778 input!1326))) tp!863016 (inv!42887 (right!24535 (c!444778 input!1326))) tp!863018))))

(declare-fun b!2743742 () Bool)

(declare-fun e!1728028 () Bool)

(declare-fun tp!863017 () Bool)

(assert (=> b!2743742 (= e!1728028 tp!863017)))

(declare-fun b!2743741 () Bool)

(declare-fun inv!42894 (IArray!19755) Bool)

(assert (=> b!2743741 (= e!1728029 (and (inv!42894 (xs!12982 (c!444778 input!1326))) e!1728028))))

(assert (=> b!2743662 (= tp!862996 (and (inv!42887 (c!444778 input!1326)) e!1728029))))

(assert (= (and b!2743662 ((_ is Node!9875) (c!444778 input!1326))) b!2743740))

(assert (= b!2743741 b!2743742))

(assert (= (and b!2743662 ((_ is Leaf!15036) (c!444778 input!1326))) b!2743741))

(declare-fun m!3161177 () Bool)

(assert (=> b!2743740 m!3161177))

(declare-fun m!3161179 () Bool)

(assert (=> b!2743740 m!3161179))

(declare-fun m!3161181 () Bool)

(assert (=> b!2743741 m!3161181))

(assert (=> b!2743662 m!3161105))

(declare-fun e!1728032 () Bool)

(assert (=> b!2743652 (= tp!862991 e!1728032)))

(declare-fun b!2743756 () Bool)

(declare-fun tp!863031 () Bool)

(declare-fun tp!863033 () Bool)

(assert (=> b!2743756 (= e!1728032 (and tp!863031 tp!863033))))

(declare-fun b!2743753 () Bool)

(assert (=> b!2743753 (= e!1728032 tp_is_empty!13919)))

(declare-fun b!2743754 () Bool)

(declare-fun tp!863030 () Bool)

(declare-fun tp!863032 () Bool)

(assert (=> b!2743754 (= e!1728032 (and tp!863030 tp!863032))))

(declare-fun b!2743755 () Bool)

(declare-fun tp!863029 () Bool)

(assert (=> b!2743755 (= e!1728032 tp!863029)))

(assert (= (and b!2743652 ((_ is ElementMatch!7985) (regex!4832 (h!36966 rulesArg!249)))) b!2743753))

(assert (= (and b!2743652 ((_ is Concat!13039) (regex!4832 (h!36966 rulesArg!249)))) b!2743754))

(assert (= (and b!2743652 ((_ is Star!7985) (regex!4832 (h!36966 rulesArg!249)))) b!2743755))

(assert (= (and b!2743652 ((_ is Union!7985) (regex!4832 (h!36966 rulesArg!249)))) b!2743756))

(declare-fun setNonEmpty!21502 () Bool)

(declare-fun e!1728034 () Bool)

(declare-fun setRes!21502 () Bool)

(declare-fun setElem!21502 () Context!4406)

(declare-fun tp!863035 () Bool)

(assert (=> setNonEmpty!21502 (= setRes!21502 (and tp!863035 (inv!42893 setElem!21502) e!1728034))))

(declare-fun setRest!21502 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21502 (= (_2!18313 (h!36963 (zeroValue!3843 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21502 true) setRest!21502))))

(declare-fun b!2743757 () Bool)

(declare-fun e!1728035 () Bool)

(declare-fun tp!863034 () Bool)

(assert (=> b!2743757 (= e!1728035 tp!863034)))

(declare-fun e!1728033 () Bool)

(assert (=> b!2743646 (= tp!862987 e!1728033)))

(declare-fun setIsEmpty!21502 () Bool)

(assert (=> setIsEmpty!21502 setRes!21502))

(declare-fun b!2743758 () Bool)

(declare-fun tp!863036 () Bool)

(assert (=> b!2743758 (= e!1728033 (and (inv!42893 (_1!18312 (_1!18313 (h!36963 (zeroValue!3843 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633)))))))))) e!1728035 tp_is_empty!13919 setRes!21502 tp!863036))))

(declare-fun condSetEmpty!21502 () Bool)

(assert (=> b!2743758 (= condSetEmpty!21502 (= (_2!18313 (h!36963 (zeroValue!3843 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633)))))))) ((as const (Array Context!4406 Bool)) false)))))

(declare-fun b!2743759 () Bool)

(declare-fun tp!863037 () Bool)

(assert (=> b!2743759 (= e!1728034 tp!863037)))

(assert (= b!2743758 b!2743757))

(assert (= (and b!2743758 condSetEmpty!21502) setIsEmpty!21502))

(assert (= (and b!2743758 (not condSetEmpty!21502)) setNonEmpty!21502))

(assert (= setNonEmpty!21502 b!2743759))

(assert (= (and b!2743646 ((_ is Cons!31543) (zeroValue!3843 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633)))))))) b!2743758))

(declare-fun m!3161183 () Bool)

(assert (=> setNonEmpty!21502 m!3161183))

(declare-fun m!3161185 () Bool)

(assert (=> b!2743758 m!3161185))

(declare-fun e!1728037 () Bool)

(declare-fun setElem!21503 () Context!4406)

(declare-fun tp!863039 () Bool)

(declare-fun setRes!21503 () Bool)

(declare-fun setNonEmpty!21503 () Bool)

(assert (=> setNonEmpty!21503 (= setRes!21503 (and tp!863039 (inv!42893 setElem!21503) e!1728037))))

(declare-fun setRest!21503 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21503 (= (_2!18313 (h!36963 (minValue!3843 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21503 true) setRest!21503))))

(declare-fun b!2743760 () Bool)

(declare-fun e!1728038 () Bool)

(declare-fun tp!863038 () Bool)

(assert (=> b!2743760 (= e!1728038 tp!863038)))

(declare-fun e!1728036 () Bool)

(assert (=> b!2743646 (= tp!862994 e!1728036)))

(declare-fun setIsEmpty!21503 () Bool)

(assert (=> setIsEmpty!21503 setRes!21503))

(declare-fun tp!863040 () Bool)

(declare-fun b!2743761 () Bool)

(assert (=> b!2743761 (= e!1728036 (and (inv!42893 (_1!18312 (_1!18313 (h!36963 (minValue!3843 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633)))))))))) e!1728038 tp_is_empty!13919 setRes!21503 tp!863040))))

(declare-fun condSetEmpty!21503 () Bool)

(assert (=> b!2743761 (= condSetEmpty!21503 (= (_2!18313 (h!36963 (minValue!3843 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633)))))))) ((as const (Array Context!4406 Bool)) false)))))

(declare-fun b!2743762 () Bool)

(declare-fun tp!863041 () Bool)

(assert (=> b!2743762 (= e!1728037 tp!863041)))

(assert (= b!2743761 b!2743760))

(assert (= (and b!2743761 condSetEmpty!21503) setIsEmpty!21503))

(assert (= (and b!2743761 (not condSetEmpty!21503)) setNonEmpty!21503))

(assert (= setNonEmpty!21503 b!2743762))

(assert (= (and b!2743646 ((_ is Cons!31543) (minValue!3843 (v!33188 (underlying!7371 (v!33189 (underlying!7372 (cache!3633 cacheUp!633)))))))) b!2743761))

(declare-fun m!3161187 () Bool)

(assert (=> setNonEmpty!21503 m!3161187))

(declare-fun m!3161189 () Bool)

(assert (=> b!2743761 m!3161189))

(declare-fun b!2743771 () Bool)

(declare-fun e!1728047 () Bool)

(declare-fun tp!863055 () Bool)

(assert (=> b!2743771 (= e!1728047 tp!863055)))

(declare-fun tp!863056 () Bool)

(declare-fun setNonEmpty!21506 () Bool)

(declare-fun setRes!21506 () Bool)

(declare-fun setElem!21506 () Context!4406)

(assert (=> setNonEmpty!21506 (= setRes!21506 (and tp!863056 (inv!42893 setElem!21506) e!1728047))))

(declare-fun setRest!21506 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21506 (= (_2!18315 (h!36967 mapDefault!16349)) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21506 true) setRest!21506))))

(declare-fun b!2743772 () Bool)

(declare-fun e!1728045 () Bool)

(declare-fun tp!863053 () Bool)

(assert (=> b!2743772 (= e!1728045 tp!863053)))

(declare-fun setIsEmpty!21506 () Bool)

(assert (=> setIsEmpty!21506 setRes!21506))

(declare-fun e!1728046 () Bool)

(assert (=> b!2743659 (= tp!862990 e!1728046)))

(declare-fun tp!863052 () Bool)

(declare-fun tp!863054 () Bool)

(declare-fun b!2743773 () Bool)

(assert (=> b!2743773 (= e!1728046 (and tp!863054 (inv!42893 (_2!18314 (_1!18315 (h!36967 mapDefault!16349)))) e!1728045 tp_is_empty!13919 setRes!21506 tp!863052))))

(declare-fun condSetEmpty!21506 () Bool)

(assert (=> b!2743773 (= condSetEmpty!21506 (= (_2!18315 (h!36967 mapDefault!16349)) ((as const (Array Context!4406 Bool)) false)))))

(assert (= b!2743773 b!2743772))

(assert (= (and b!2743773 condSetEmpty!21506) setIsEmpty!21506))

(assert (= (and b!2743773 (not condSetEmpty!21506)) setNonEmpty!21506))

(assert (= setNonEmpty!21506 b!2743771))

(assert (= (and b!2743659 ((_ is Cons!31547) mapDefault!16349)) b!2743773))

(declare-fun m!3161191 () Bool)

(assert (=> setNonEmpty!21506 m!3161191))

(declare-fun m!3161193 () Bool)

(assert (=> b!2743773 m!3161193))

(declare-fun b!2743774 () Bool)

(declare-fun e!1728050 () Bool)

(declare-fun tp!863060 () Bool)

(assert (=> b!2743774 (= e!1728050 tp!863060)))

(declare-fun setRes!21507 () Bool)

(declare-fun setNonEmpty!21507 () Bool)

(declare-fun tp!863061 () Bool)

(declare-fun setElem!21507 () Context!4406)

(assert (=> setNonEmpty!21507 (= setRes!21507 (and tp!863061 (inv!42893 setElem!21507) e!1728050))))

(declare-fun setRest!21507 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21507 (= (_2!18315 (h!36967 (zeroValue!3844 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21507 true) setRest!21507))))

(declare-fun b!2743775 () Bool)

(declare-fun e!1728048 () Bool)

(declare-fun tp!863058 () Bool)

(assert (=> b!2743775 (= e!1728048 tp!863058)))

(declare-fun setIsEmpty!21507 () Bool)

(assert (=> setIsEmpty!21507 setRes!21507))

(declare-fun e!1728049 () Bool)

(assert (=> b!2743650 (= tp!862983 e!1728049)))

(declare-fun b!2743776 () Bool)

(declare-fun tp!863059 () Bool)

(declare-fun tp!863057 () Bool)

(assert (=> b!2743776 (= e!1728049 (and tp!863059 (inv!42893 (_2!18314 (_1!18315 (h!36967 (zeroValue!3844 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646)))))))))) e!1728048 tp_is_empty!13919 setRes!21507 tp!863057))))

(declare-fun condSetEmpty!21507 () Bool)

(assert (=> b!2743776 (= condSetEmpty!21507 (= (_2!18315 (h!36967 (zeroValue!3844 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646)))))))) ((as const (Array Context!4406 Bool)) false)))))

(assert (= b!2743776 b!2743775))

(assert (= (and b!2743776 condSetEmpty!21507) setIsEmpty!21507))

(assert (= (and b!2743776 (not condSetEmpty!21507)) setNonEmpty!21507))

(assert (= setNonEmpty!21507 b!2743774))

(assert (= (and b!2743650 ((_ is Cons!31547) (zeroValue!3844 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646)))))))) b!2743776))

(declare-fun m!3161195 () Bool)

(assert (=> setNonEmpty!21507 m!3161195))

(declare-fun m!3161197 () Bool)

(assert (=> b!2743776 m!3161197))

(declare-fun b!2743777 () Bool)

(declare-fun e!1728053 () Bool)

(declare-fun tp!863065 () Bool)

(assert (=> b!2743777 (= e!1728053 tp!863065)))

(declare-fun setElem!21508 () Context!4406)

(declare-fun tp!863066 () Bool)

(declare-fun setNonEmpty!21508 () Bool)

(declare-fun setRes!21508 () Bool)

(assert (=> setNonEmpty!21508 (= setRes!21508 (and tp!863066 (inv!42893 setElem!21508) e!1728053))))

(declare-fun setRest!21508 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21508 (= (_2!18315 (h!36967 (minValue!3844 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21508 true) setRest!21508))))

(declare-fun b!2743778 () Bool)

(declare-fun e!1728051 () Bool)

(declare-fun tp!863063 () Bool)

(assert (=> b!2743778 (= e!1728051 tp!863063)))

(declare-fun setIsEmpty!21508 () Bool)

(assert (=> setIsEmpty!21508 setRes!21508))

(declare-fun e!1728052 () Bool)

(assert (=> b!2743650 (= tp!862985 e!1728052)))

(declare-fun tp!863064 () Bool)

(declare-fun b!2743779 () Bool)

(declare-fun tp!863062 () Bool)

(assert (=> b!2743779 (= e!1728052 (and tp!863064 (inv!42893 (_2!18314 (_1!18315 (h!36967 (minValue!3844 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646)))))))))) e!1728051 tp_is_empty!13919 setRes!21508 tp!863062))))

(declare-fun condSetEmpty!21508 () Bool)

(assert (=> b!2743779 (= condSetEmpty!21508 (= (_2!18315 (h!36967 (minValue!3844 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646)))))))) ((as const (Array Context!4406 Bool)) false)))))

(assert (= b!2743779 b!2743778))

(assert (= (and b!2743779 condSetEmpty!21508) setIsEmpty!21508))

(assert (= (and b!2743779 (not condSetEmpty!21508)) setNonEmpty!21508))

(assert (= setNonEmpty!21508 b!2743777))

(assert (= (and b!2743650 ((_ is Cons!31547) (minValue!3844 (v!33190 (underlying!7373 (v!33191 (underlying!7374 (cache!3634 cacheDown!646)))))))) b!2743779))

(declare-fun m!3161199 () Bool)

(assert (=> setNonEmpty!21508 m!3161199))

(declare-fun m!3161201 () Bool)

(assert (=> b!2743779 m!3161201))

(declare-fun setIsEmpty!21513 () Bool)

(declare-fun setRes!21514 () Bool)

(assert (=> setIsEmpty!21513 setRes!21514))

(declare-fun tp!863097 () Bool)

(declare-fun mapDefault!16353 () List!31647)

(declare-fun b!2743794 () Bool)

(declare-fun tp!863090 () Bool)

(declare-fun e!1728068 () Bool)

(declare-fun e!1728067 () Bool)

(assert (=> b!2743794 (= e!1728068 (and tp!863097 (inv!42893 (_2!18314 (_1!18315 (h!36967 mapDefault!16353)))) e!1728067 tp_is_empty!13919 setRes!21514 tp!863090))))

(declare-fun condSetEmpty!21514 () Bool)

(assert (=> b!2743794 (= condSetEmpty!21514 (= (_2!18315 (h!36967 mapDefault!16353)) ((as const (Array Context!4406 Bool)) false)))))

(declare-fun mapIsEmpty!16353 () Bool)

(declare-fun mapRes!16353 () Bool)

(assert (=> mapIsEmpty!16353 mapRes!16353))

(declare-fun b!2743795 () Bool)

(declare-fun e!1728070 () Bool)

(declare-fun tp!863089 () Bool)

(assert (=> b!2743795 (= e!1728070 tp!863089)))

(declare-fun b!2743796 () Bool)

(declare-fun tp!863099 () Bool)

(assert (=> b!2743796 (= e!1728067 tp!863099)))

(declare-fun setElem!21514 () Context!4406)

(declare-fun setNonEmpty!21513 () Bool)

(declare-fun tp!863096 () Bool)

(assert (=> setNonEmpty!21513 (= setRes!21514 (and tp!863096 (inv!42893 setElem!21514) e!1728070))))

(declare-fun setRest!21514 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21513 (= (_2!18315 (h!36967 mapDefault!16353)) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21514 true) setRest!21514))))

(declare-fun condMapEmpty!16353 () Bool)

(assert (=> mapNonEmpty!16350 (= condMapEmpty!16353 (= mapRest!16349 ((as const (Array (_ BitVec 32) List!31647)) mapDefault!16353)))))

(assert (=> mapNonEmpty!16350 (= tp!862984 (and e!1728068 mapRes!16353))))

(declare-fun b!2743797 () Bool)

(declare-fun e!1728066 () Bool)

(declare-fun tp!863094 () Bool)

(assert (=> b!2743797 (= e!1728066 tp!863094)))

(declare-fun setIsEmpty!21514 () Bool)

(declare-fun setRes!21513 () Bool)

(assert (=> setIsEmpty!21514 setRes!21513))

(declare-fun setNonEmpty!21514 () Bool)

(declare-fun tp!863091 () Bool)

(declare-fun setElem!21513 () Context!4406)

(declare-fun e!1728069 () Bool)

(assert (=> setNonEmpty!21514 (= setRes!21513 (and tp!863091 (inv!42893 setElem!21513) e!1728069))))

(declare-fun mapValue!16353 () List!31647)

(declare-fun setRest!21513 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21514 (= (_2!18315 (h!36967 mapValue!16353)) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21513 true) setRest!21513))))

(declare-fun b!2743798 () Bool)

(declare-fun tp!863098 () Bool)

(assert (=> b!2743798 (= e!1728069 tp!863098)))

(declare-fun mapNonEmpty!16353 () Bool)

(declare-fun tp!863093 () Bool)

(declare-fun e!1728071 () Bool)

(assert (=> mapNonEmpty!16353 (= mapRes!16353 (and tp!863093 e!1728071))))

(declare-fun mapRest!16353 () (Array (_ BitVec 32) List!31647))

(declare-fun mapKey!16353 () (_ BitVec 32))

(assert (=> mapNonEmpty!16353 (= mapRest!16349 (store mapRest!16353 mapKey!16353 mapValue!16353))))

(declare-fun b!2743799 () Bool)

(declare-fun tp!863095 () Bool)

(declare-fun tp!863092 () Bool)

(assert (=> b!2743799 (= e!1728071 (and tp!863092 (inv!42893 (_2!18314 (_1!18315 (h!36967 mapValue!16353)))) e!1728066 tp_is_empty!13919 setRes!21513 tp!863095))))

(declare-fun condSetEmpty!21513 () Bool)

(assert (=> b!2743799 (= condSetEmpty!21513 (= (_2!18315 (h!36967 mapValue!16353)) ((as const (Array Context!4406 Bool)) false)))))

(assert (= (and mapNonEmpty!16350 condMapEmpty!16353) mapIsEmpty!16353))

(assert (= (and mapNonEmpty!16350 (not condMapEmpty!16353)) mapNonEmpty!16353))

(assert (= b!2743799 b!2743797))

(assert (= (and b!2743799 condSetEmpty!21513) setIsEmpty!21514))

(assert (= (and b!2743799 (not condSetEmpty!21513)) setNonEmpty!21514))

(assert (= setNonEmpty!21514 b!2743798))

(assert (= (and mapNonEmpty!16353 ((_ is Cons!31547) mapValue!16353)) b!2743799))

(assert (= b!2743794 b!2743796))

(assert (= (and b!2743794 condSetEmpty!21514) setIsEmpty!21513))

(assert (= (and b!2743794 (not condSetEmpty!21514)) setNonEmpty!21513))

(assert (= setNonEmpty!21513 b!2743795))

(assert (= (and mapNonEmpty!16350 ((_ is Cons!31547) mapDefault!16353)) b!2743794))

(declare-fun m!3161203 () Bool)

(assert (=> mapNonEmpty!16353 m!3161203))

(declare-fun m!3161205 () Bool)

(assert (=> setNonEmpty!21514 m!3161205))

(declare-fun m!3161207 () Bool)

(assert (=> setNonEmpty!21513 m!3161207))

(declare-fun m!3161209 () Bool)

(assert (=> b!2743799 m!3161209))

(declare-fun m!3161211 () Bool)

(assert (=> b!2743794 m!3161211))

(declare-fun b!2743800 () Bool)

(declare-fun e!1728074 () Bool)

(declare-fun tp!863103 () Bool)

(assert (=> b!2743800 (= e!1728074 tp!863103)))

(declare-fun tp!863104 () Bool)

(declare-fun setElem!21515 () Context!4406)

(declare-fun setRes!21515 () Bool)

(declare-fun setNonEmpty!21515 () Bool)

(assert (=> setNonEmpty!21515 (= setRes!21515 (and tp!863104 (inv!42893 setElem!21515) e!1728074))))

(declare-fun setRest!21515 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21515 (= (_2!18315 (h!36967 mapValue!16349)) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21515 true) setRest!21515))))

(declare-fun b!2743801 () Bool)

(declare-fun e!1728072 () Bool)

(declare-fun tp!863101 () Bool)

(assert (=> b!2743801 (= e!1728072 tp!863101)))

(declare-fun setIsEmpty!21515 () Bool)

(assert (=> setIsEmpty!21515 setRes!21515))

(declare-fun e!1728073 () Bool)

(assert (=> mapNonEmpty!16350 (= tp!862992 e!1728073)))

(declare-fun tp!863100 () Bool)

(declare-fun b!2743802 () Bool)

(declare-fun tp!863102 () Bool)

(assert (=> b!2743802 (= e!1728073 (and tp!863102 (inv!42893 (_2!18314 (_1!18315 (h!36967 mapValue!16349)))) e!1728072 tp_is_empty!13919 setRes!21515 tp!863100))))

(declare-fun condSetEmpty!21515 () Bool)

(assert (=> b!2743802 (= condSetEmpty!21515 (= (_2!18315 (h!36967 mapValue!16349)) ((as const (Array Context!4406 Bool)) false)))))

(assert (= b!2743802 b!2743801))

(assert (= (and b!2743802 condSetEmpty!21515) setIsEmpty!21515))

(assert (= (and b!2743802 (not condSetEmpty!21515)) setNonEmpty!21515))

(assert (= setNonEmpty!21515 b!2743800))

(assert (= (and mapNonEmpty!16350 ((_ is Cons!31547) mapValue!16349)) b!2743802))

(declare-fun m!3161213 () Bool)

(assert (=> setNonEmpty!21515 m!3161213))

(declare-fun m!3161215 () Bool)

(assert (=> b!2743802 m!3161215))

(declare-fun setNonEmpty!21520 () Bool)

(declare-fun tp!863129 () Bool)

(declare-fun setRes!21521 () Bool)

(declare-fun e!1728088 () Bool)

(declare-fun setElem!21521 () Context!4406)

(assert (=> setNonEmpty!21520 (= setRes!21521 (and tp!863129 (inv!42893 setElem!21521) e!1728088))))

(declare-fun mapDefault!16356 () List!31643)

(declare-fun setRest!21521 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21520 (= (_2!18313 (h!36963 mapDefault!16356)) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21521 true) setRest!21521))))

(declare-fun mapIsEmpty!16356 () Bool)

(declare-fun mapRes!16356 () Bool)

(assert (=> mapIsEmpty!16356 mapRes!16356))

(declare-fun e!1728090 () Bool)

(declare-fun setRes!21520 () Bool)

(declare-fun mapValue!16356 () List!31643)

(declare-fun b!2743817 () Bool)

(declare-fun tp!863123 () Bool)

(declare-fun e!1728089 () Bool)

(assert (=> b!2743817 (= e!1728090 (and (inv!42893 (_1!18312 (_1!18313 (h!36963 mapValue!16356)))) e!1728089 tp_is_empty!13919 setRes!21520 tp!863123))))

(declare-fun condSetEmpty!21520 () Bool)

(assert (=> b!2743817 (= condSetEmpty!21520 (= (_2!18313 (h!36963 mapValue!16356)) ((as const (Array Context!4406 Bool)) false)))))

(declare-fun setIsEmpty!21520 () Bool)

(assert (=> setIsEmpty!21520 setRes!21521))

(declare-fun mapNonEmpty!16356 () Bool)

(declare-fun tp!863131 () Bool)

(assert (=> mapNonEmpty!16356 (= mapRes!16356 (and tp!863131 e!1728090))))

(declare-fun mapRest!16356 () (Array (_ BitVec 32) List!31643))

(declare-fun mapKey!16356 () (_ BitVec 32))

(assert (=> mapNonEmpty!16356 (= mapRest!16350 (store mapRest!16356 mapKey!16356 mapValue!16356))))

(declare-fun setIsEmpty!21521 () Bool)

(assert (=> setIsEmpty!21521 setRes!21520))

(declare-fun b!2743818 () Bool)

(declare-fun tp!863126 () Bool)

(assert (=> b!2743818 (= e!1728088 tp!863126)))

(declare-fun condMapEmpty!16356 () Bool)

(assert (=> mapNonEmpty!16349 (= condMapEmpty!16356 (= mapRest!16350 ((as const (Array (_ BitVec 32) List!31643)) mapDefault!16356)))))

(declare-fun e!1728091 () Bool)

(assert (=> mapNonEmpty!16349 (= tp!862997 (and e!1728091 mapRes!16356))))

(declare-fun b!2743819 () Bool)

(declare-fun tp!863128 () Bool)

(assert (=> b!2743819 (= e!1728089 tp!863128)))

(declare-fun b!2743820 () Bool)

(declare-fun e!1728087 () Bool)

(declare-fun tp!863124 () Bool)

(assert (=> b!2743820 (= e!1728087 tp!863124)))

(declare-fun setElem!21520 () Context!4406)

(declare-fun tp!863125 () Bool)

(declare-fun e!1728092 () Bool)

(declare-fun setNonEmpty!21521 () Bool)

(assert (=> setNonEmpty!21521 (= setRes!21520 (and tp!863125 (inv!42893 setElem!21520) e!1728092))))

(declare-fun setRest!21520 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21521 (= (_2!18313 (h!36963 mapValue!16356)) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21520 true) setRest!21520))))

(declare-fun tp!863127 () Bool)

(declare-fun b!2743821 () Bool)

(assert (=> b!2743821 (= e!1728091 (and (inv!42893 (_1!18312 (_1!18313 (h!36963 mapDefault!16356)))) e!1728087 tp_is_empty!13919 setRes!21521 tp!863127))))

(declare-fun condSetEmpty!21521 () Bool)

(assert (=> b!2743821 (= condSetEmpty!21521 (= (_2!18313 (h!36963 mapDefault!16356)) ((as const (Array Context!4406 Bool)) false)))))

(declare-fun b!2743822 () Bool)

(declare-fun tp!863130 () Bool)

(assert (=> b!2743822 (= e!1728092 tp!863130)))

(assert (= (and mapNonEmpty!16349 condMapEmpty!16356) mapIsEmpty!16356))

(assert (= (and mapNonEmpty!16349 (not condMapEmpty!16356)) mapNonEmpty!16356))

(assert (= b!2743817 b!2743819))

(assert (= (and b!2743817 condSetEmpty!21520) setIsEmpty!21521))

(assert (= (and b!2743817 (not condSetEmpty!21520)) setNonEmpty!21521))

(assert (= setNonEmpty!21521 b!2743822))

(assert (= (and mapNonEmpty!16356 ((_ is Cons!31543) mapValue!16356)) b!2743817))

(assert (= b!2743821 b!2743820))

(assert (= (and b!2743821 condSetEmpty!21521) setIsEmpty!21520))

(assert (= (and b!2743821 (not condSetEmpty!21521)) setNonEmpty!21520))

(assert (= setNonEmpty!21520 b!2743818))

(assert (= (and mapNonEmpty!16349 ((_ is Cons!31543) mapDefault!16356)) b!2743821))

(declare-fun m!3161217 () Bool)

(assert (=> setNonEmpty!21521 m!3161217))

(declare-fun m!3161219 () Bool)

(assert (=> setNonEmpty!21520 m!3161219))

(declare-fun m!3161221 () Bool)

(assert (=> b!2743817 m!3161221))

(declare-fun m!3161223 () Bool)

(assert (=> mapNonEmpty!16356 m!3161223))

(declare-fun m!3161225 () Bool)

(assert (=> b!2743821 m!3161225))

(declare-fun setElem!21522 () Context!4406)

(declare-fun tp!863133 () Bool)

(declare-fun setRes!21522 () Bool)

(declare-fun e!1728094 () Bool)

(declare-fun setNonEmpty!21522 () Bool)

(assert (=> setNonEmpty!21522 (= setRes!21522 (and tp!863133 (inv!42893 setElem!21522) e!1728094))))

(declare-fun setRest!21522 () (InoxSet Context!4406))

(assert (=> setNonEmpty!21522 (= (_2!18313 (h!36963 mapValue!16350)) ((_ map or) (store ((as const (Array Context!4406 Bool)) false) setElem!21522 true) setRest!21522))))

(declare-fun b!2743823 () Bool)

(declare-fun e!1728095 () Bool)

(declare-fun tp!863132 () Bool)

(assert (=> b!2743823 (= e!1728095 tp!863132)))

(declare-fun e!1728093 () Bool)

(assert (=> mapNonEmpty!16349 (= tp!862988 e!1728093)))

(declare-fun setIsEmpty!21522 () Bool)

(assert (=> setIsEmpty!21522 setRes!21522))

(declare-fun b!2743824 () Bool)

(declare-fun tp!863134 () Bool)

(assert (=> b!2743824 (= e!1728093 (and (inv!42893 (_1!18312 (_1!18313 (h!36963 mapValue!16350)))) e!1728095 tp_is_empty!13919 setRes!21522 tp!863134))))

(declare-fun condSetEmpty!21522 () Bool)

(assert (=> b!2743824 (= condSetEmpty!21522 (= (_2!18313 (h!36963 mapValue!16350)) ((as const (Array Context!4406 Bool)) false)))))

(declare-fun b!2743825 () Bool)

(declare-fun tp!863135 () Bool)

(assert (=> b!2743825 (= e!1728094 tp!863135)))

(assert (= b!2743824 b!2743823))

(assert (= (and b!2743824 condSetEmpty!21522) setIsEmpty!21522))

(assert (= (and b!2743824 (not condSetEmpty!21522)) setNonEmpty!21522))

(assert (= setNonEmpty!21522 b!2743825))

(assert (= (and mapNonEmpty!16349 ((_ is Cons!31543) mapValue!16350)) b!2743824))

(declare-fun m!3161227 () Bool)

(assert (=> setNonEmpty!21522 m!3161227))

(declare-fun m!3161229 () Bool)

(assert (=> b!2743824 m!3161229))

(declare-fun b!2743836 () Bool)

(declare-fun b_free!77141 () Bool)

(declare-fun b_next!77845 () Bool)

(assert (=> b!2743836 (= b_free!77141 (not b_next!77845))))

(declare-fun tp!863147 () Bool)

(declare-fun b_and!201861 () Bool)

(assert (=> b!2743836 (= tp!863147 b_and!201861)))

(declare-fun b_free!77143 () Bool)

(declare-fun b_next!77847 () Bool)

(assert (=> b!2743836 (= b_free!77143 (not b_next!77847))))

(declare-fun tp!863145 () Bool)

(declare-fun b_and!201863 () Bool)

(assert (=> b!2743836 (= tp!863145 b_and!201863)))

(declare-fun e!1728107 () Bool)

(assert (=> b!2743836 (= e!1728107 (and tp!863147 tp!863145))))

(declare-fun e!1728104 () Bool)

(declare-fun tp!863146 () Bool)

(declare-fun b!2743835 () Bool)

(assert (=> b!2743835 (= e!1728104 (and tp!863146 (inv!42882 (tag!5336 (h!36966 (t!227734 rulesArg!249)))) (inv!42886 (transformation!4832 (h!36966 (t!227734 rulesArg!249)))) e!1728107))))

(declare-fun b!2743834 () Bool)

(declare-fun e!1728105 () Bool)

(declare-fun tp!863144 () Bool)

(assert (=> b!2743834 (= e!1728105 (and e!1728104 tp!863144))))

(assert (=> b!2743645 (= tp!862993 e!1728105)))

(assert (= b!2743835 b!2743836))

(assert (= b!2743834 b!2743835))

(assert (= (and b!2743645 ((_ is Cons!31546) (t!227734 rulesArg!249))) b!2743834))

(declare-fun m!3161231 () Bool)

(assert (=> b!2743835 m!3161231))

(declare-fun m!3161233 () Bool)

(assert (=> b!2743835 m!3161233))

(check-sat (not b!2743677) (not b!2743772) (not b!2743775) (not b!2743720) b_and!201859 (not setNonEmpty!21521) b_and!201849 (not b!2743821) (not b!2743800) (not b!2743776) (not d!795755) (not b!2743761) (not b!2743777) b_and!201861 b_and!201855 (not b!2743731) (not b!2743742) (not b!2743712) (not b!2743759) b_and!201863 (not b_next!77847) (not setNonEmpty!21513) (not b_next!77841) (not setNonEmpty!21502) (not b!2743675) (not b!2743774) (not setNonEmpty!21514) (not setNonEmpty!21508) (not setNonEmpty!21501) (not b!2743771) (not b!2743705) (not b!2743708) (not b!2743823) (not setNonEmpty!21520) (not b!2743802) (not b!2743796) (not b!2743798) b_and!201857 (not b!2743797) (not b!2743741) (not b!2743818) (not b!2743706) (not d!795757) (not b!2743686) (not d!795767) (not b!2743730) (not setNonEmpty!21506) (not d!795751) (not b!2743692) (not b!2743691) (not b_next!77833) (not setNonEmpty!21522) (not b!2743715) (not b!2743718) (not b!2743684) (not b!2743824) (not b!2743817) (not b!2743834) (not b!2743825) (not b!2743822) (not b!2743662) (not b_next!77837) (not b!2743754) (not b!2743819) (not mapNonEmpty!16356) (not setNonEmpty!21515) (not b!2743778) (not d!795771) (not b!2743709) (not b!2743758) (not b!2743762) tp_is_empty!13919 (not b_next!77845) (not b!2743757) (not d!795763) (not mapNonEmpty!16353) (not b!2743719) (not b!2743755) (not d!795749) (not b_next!77835) (not d!795783) (not b!2743794) (not b!2743756) (not b_next!77843) (not b!2743773) b_and!201853 (not d!795761) (not b!2743779) (not b!2743795) (not b!2743760) (not setNonEmpty!21507) (not b!2743835) (not setNonEmpty!21503) (not b_next!77839) (not b!2743729) (not b!2743820) b_and!201851 (not b!2743676) (not b!2743801) (not b!2743740) (not b!2743799))
(check-sat b_and!201859 b_and!201849 b_and!201861 b_and!201855 b_and!201857 (not b_next!77833) (not b_next!77837) (not b_next!77845) (not b_next!77835) (not b_next!77843) b_and!201853 (not b_next!77839) b_and!201851 b_and!201863 (not b_next!77847) (not b_next!77841))
