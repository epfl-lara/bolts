; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265978 () Bool)

(assert start!265978)

(declare-fun b!2743974 () Bool)

(declare-fun b_free!77157 () Bool)

(declare-fun b_next!77861 () Bool)

(assert (=> b!2743974 (= b_free!77157 (not b_next!77861))))

(declare-fun tp!863260 () Bool)

(declare-fun b_and!201877 () Bool)

(assert (=> b!2743974 (= tp!863260 b_and!201877)))

(declare-fun b!2743977 () Bool)

(declare-fun b_free!77159 () Bool)

(declare-fun b_next!77863 () Bool)

(assert (=> b!2743977 (= b_free!77159 (not b_next!77863))))

(declare-fun tp!863245 () Bool)

(declare-fun b_and!201879 () Bool)

(assert (=> b!2743977 (= tp!863245 b_and!201879)))

(declare-fun b!2743975 () Bool)

(declare-fun b_free!77161 () Bool)

(declare-fun b_next!77865 () Bool)

(assert (=> b!2743975 (= b_free!77161 (not b_next!77865))))

(declare-fun tp!863254 () Bool)

(declare-fun b_and!201881 () Bool)

(assert (=> b!2743975 (= tp!863254 b_and!201881)))

(declare-fun b_free!77163 () Bool)

(declare-fun b_next!77867 () Bool)

(assert (=> b!2743975 (= b_free!77163 (not b_next!77867))))

(declare-fun tp!863253 () Bool)

(declare-fun b_and!201883 () Bool)

(assert (=> b!2743975 (= tp!863253 b_and!201883)))

(declare-fun b!2743981 () Bool)

(declare-fun b_free!77165 () Bool)

(declare-fun b_next!77869 () Bool)

(assert (=> b!2743981 (= b_free!77165 (not b_next!77869))))

(declare-fun tp!863252 () Bool)

(declare-fun b_and!201885 () Bool)

(assert (=> b!2743981 (= tp!863252 b_and!201885)))

(declare-fun b!2743979 () Bool)

(declare-fun b_free!77167 () Bool)

(declare-fun b_next!77871 () Bool)

(assert (=> b!2743979 (= b_free!77167 (not b_next!77871))))

(declare-fun tp!863250 () Bool)

(declare-fun b_and!201887 () Bool)

(assert (=> b!2743979 (= tp!863250 b_and!201887)))

(declare-fun b!2743962 () Bool)

(declare-fun e!1728248 () Bool)

(declare-fun e!1728233 () Bool)

(assert (=> b!2743962 (= e!1728248 e!1728233)))

(declare-fun b!2743963 () Bool)

(declare-fun e!1728237 () Bool)

(assert (=> b!2743963 (= e!1728233 e!1728237)))

(declare-fun b!2743964 () Bool)

(declare-fun e!1728231 () Bool)

(declare-datatypes ((C!16132 0))(
  ( (C!16133 (val!10000 Int)) )
))
(declare-datatypes ((Regex!7987 0))(
  ( (ElementMatch!7987 (c!444787 C!16132)) (Concat!13043 (regOne!16486 Regex!7987) (regTwo!16486 Regex!7987)) (EmptyExpr!7987) (Star!7987 (reg!8316 Regex!7987)) (EmptyLang!7987) (Union!7987 (regOne!16487 Regex!7987) (regTwo!16487 Regex!7987)) )
))
(declare-datatypes ((List!31654 0))(
  ( (Nil!31554) (Cons!31554 (h!36974 Regex!7987) (t!227742 List!31654)) )
))
(declare-datatypes ((Context!4410 0))(
  ( (Context!4411 (exprs!2705 List!31654)) )
))
(declare-datatypes ((tuple3!4372 0))(
  ( (tuple3!4373 (_1!18325 Regex!7987) (_2!18325 Context!4410) (_3!2656 C!16132)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31338 0))(
  ( (tuple2!31339 (_1!18326 tuple3!4372) (_2!18326 (InoxSet Context!4410))) )
))
(declare-datatypes ((List!31655 0))(
  ( (Nil!31555) (Cons!31555 (h!36975 tuple2!31338) (t!227743 List!31655)) )
))
(declare-datatypes ((array!12778 0))(
  ( (array!12779 (arr!5708 (Array (_ BitVec 32) List!31655)) (size!24360 (_ BitVec 32))) )
))
(declare-datatypes ((array!12780 0))(
  ( (array!12781 (arr!5709 (Array (_ BitVec 32) (_ BitVec 64))) (size!24361 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7176 0))(
  ( (LongMapFixedSize!7177 (defaultEntry!3973 Int) (mask!9318 (_ BitVec 32)) (extraKeys!3837 (_ BitVec 32)) (zeroValue!3847 List!31655) (minValue!3847 List!31655) (_size!7219 (_ BitVec 32)) (_keys!3888 array!12780) (_values!3869 array!12778) (_vacant!3649 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14161 0))(
  ( (Cell!14162 (v!33197 LongMapFixedSize!7176)) )
))
(declare-datatypes ((MutLongMap!3588 0))(
  ( (LongMap!3588 (underlying!7379 Cell!14161)) (MutLongMapExt!3587 (__x!20353 Int)) )
))
(declare-fun lt!971300 () MutLongMap!3588)

(get-info :version)

(assert (=> b!2743964 (= e!1728231 (and e!1728248 ((_ is LongMap!3588) lt!971300)))))

(declare-datatypes ((Cell!14163 0))(
  ( (Cell!14164 (v!33198 MutLongMap!3588)) )
))
(declare-datatypes ((Hashable!3504 0))(
  ( (HashableExt!3503 (__x!20354 Int)) )
))
(declare-datatypes ((MutableMap!3494 0))(
  ( (MutableMapExt!3493 (__x!20355 Int)) (HashMap!3494 (underlying!7380 Cell!14163) (hashF!5536 Hashable!3504) (_size!7220 (_ BitVec 32)) (defaultValue!3665 Int)) )
))
(declare-datatypes ((CacheDown!2318 0))(
  ( (CacheDown!2319 (cache!3637 MutableMap!3494)) )
))
(declare-fun cacheDown!646 () CacheDown!2318)

(assert (=> b!2743964 (= lt!971300 (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))))

(declare-datatypes ((List!31656 0))(
  ( (Nil!31556) (Cons!31556 (h!36976 (_ BitVec 16)) (t!227744 List!31656)) )
))
(declare-datatypes ((TokenValue!5056 0))(
  ( (FloatLiteralValue!10112 (text!35837 List!31656)) (TokenValueExt!5055 (__x!20356 Int)) (Broken!25280 (value!155343 List!31656)) (Object!5155) (End!5056) (Def!5056) (Underscore!5056) (Match!5056) (Else!5056) (Error!5056) (Case!5056) (If!5056) (Extends!5056) (Abstract!5056) (Class!5056) (Val!5056) (DelimiterValue!10112 (del!5116 List!31656)) (KeywordValue!5062 (value!155344 List!31656)) (CommentValue!10112 (value!155345 List!31656)) (WhitespaceValue!10112 (value!155346 List!31656)) (IndentationValue!5056 (value!155347 List!31656)) (String!35181) (Int32!5056) (Broken!25281 (value!155348 List!31656)) (Boolean!5057) (Unit!45504) (OperatorValue!5059 (op!5116 List!31656)) (IdentifierValue!10112 (value!155349 List!31656)) (IdentifierValue!10113 (value!155350 List!31656)) (WhitespaceValue!10113 (value!155351 List!31656)) (True!10112) (False!10112) (Broken!25282 (value!155352 List!31656)) (Broken!25283 (value!155353 List!31656)) (True!10113) (RightBrace!5056) (RightBracket!5056) (Colon!5056) (Null!5056) (Comma!5056) (LeftBracket!5056) (False!10113) (LeftBrace!5056) (ImaginaryLiteralValue!5056 (text!35838 List!31656)) (StringLiteralValue!15168 (value!155354 List!31656)) (EOFValue!5056 (value!155355 List!31656)) (IdentValue!5056 (value!155356 List!31656)) (DelimiterValue!10113 (value!155357 List!31656)) (DedentValue!5056 (value!155358 List!31656)) (NewLineValue!5056 (value!155359 List!31656)) (IntegerValue!15168 (value!155360 (_ BitVec 32)) (text!35839 List!31656)) (IntegerValue!15169 (value!155361 Int) (text!35840 List!31656)) (Times!5056) (Or!5056) (Equal!5056) (Minus!5056) (Broken!25284 (value!155362 List!31656)) (And!5056) (Div!5056) (LessEqual!5056) (Mod!5056) (Concat!13044) (Not!5056) (Plus!5056) (SpaceValue!5056 (value!155363 List!31656)) (IntegerValue!15170 (value!155364 Int) (text!35841 List!31656)) (StringLiteralValue!15169 (text!35842 List!31656)) (FloatLiteralValue!10113 (text!35843 List!31656)) (BytesLiteralValue!5056 (value!155365 List!31656)) (CommentValue!10113 (value!155366 List!31656)) (StringLiteralValue!15170 (value!155367 List!31656)) (ErrorTokenValue!5056 (msg!5117 List!31656)) )
))
(declare-datatypes ((List!31657 0))(
  ( (Nil!31557) (Cons!31557 (h!36977 C!16132) (t!227745 List!31657)) )
))
(declare-datatypes ((IArray!19759 0))(
  ( (IArray!19760 (innerList!9937 List!31657)) )
))
(declare-datatypes ((Conc!9877 0))(
  ( (Node!9877 (left!24210 Conc!9877) (right!24540 Conc!9877) (csize!19984 Int) (cheight!10088 Int)) (Leaf!15039 (xs!12984 IArray!19759) (csize!19985 Int)) (Empty!9877) )
))
(declare-datatypes ((BalanceConc!19368 0))(
  ( (BalanceConc!19369 (c!444788 Conc!9877)) )
))
(declare-datatypes ((TokenValueInjection!9552 0))(
  ( (TokenValueInjection!9553 (toValue!6832 Int) (toChars!6691 Int)) )
))
(declare-datatypes ((String!35182 0))(
  ( (String!35183 (value!155368 String)) )
))
(declare-datatypes ((Rule!9468 0))(
  ( (Rule!9469 (regex!4834 Regex!7987) (tag!5338 String!35182) (isSeparator!4834 Bool) (transformation!4834 TokenValueInjection!9552)) )
))
(declare-datatypes ((List!31658 0))(
  ( (Nil!31558) (Cons!31558 (h!36978 Rule!9468) (t!227746 List!31658)) )
))
(declare-fun rulesArg!249 () List!31658)

(declare-fun e!1728242 () Bool)

(declare-fun b!2743965 () Bool)

(declare-fun e!1728236 () Bool)

(declare-fun tp!863257 () Bool)

(declare-fun inv!42897 (String!35182) Bool)

(declare-fun inv!42898 (TokenValueInjection!9552) Bool)

(assert (=> b!2743965 (= e!1728242 (and tp!863257 (inv!42897 (tag!5338 (h!36978 rulesArg!249))) (inv!42898 (transformation!4834 (h!36978 rulesArg!249))) e!1728236))))

(declare-fun b!2743966 () Bool)

(declare-fun e!1728232 () Bool)

(declare-fun e!1728234 () Bool)

(declare-datatypes ((tuple2!31340 0))(
  ( (tuple2!31341 (_1!18327 Context!4410) (_2!18327 C!16132)) )
))
(declare-datatypes ((tuple2!31342 0))(
  ( (tuple2!31343 (_1!18328 tuple2!31340) (_2!18328 (InoxSet Context!4410))) )
))
(declare-datatypes ((List!31659 0))(
  ( (Nil!31559) (Cons!31559 (h!36979 tuple2!31342) (t!227747 List!31659)) )
))
(declare-datatypes ((array!12782 0))(
  ( (array!12783 (arr!5710 (Array (_ BitVec 32) List!31659)) (size!24362 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7178 0))(
  ( (LongMapFixedSize!7179 (defaultEntry!3974 Int) (mask!9319 (_ BitVec 32)) (extraKeys!3838 (_ BitVec 32)) (zeroValue!3848 List!31659) (minValue!3848 List!31659) (_size!7221 (_ BitVec 32)) (_keys!3889 array!12780) (_values!3870 array!12782) (_vacant!3650 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14165 0))(
  ( (Cell!14166 (v!33199 LongMapFixedSize!7178)) )
))
(declare-datatypes ((MutLongMap!3589 0))(
  ( (LongMap!3589 (underlying!7381 Cell!14165)) (MutLongMapExt!3588 (__x!20357 Int)) )
))
(declare-fun lt!971302 () MutLongMap!3589)

(assert (=> b!2743966 (= e!1728232 (and e!1728234 ((_ is LongMap!3589) lt!971302)))))

(declare-datatypes ((Cell!14167 0))(
  ( (Cell!14168 (v!33200 MutLongMap!3589)) )
))
(declare-datatypes ((Hashable!3505 0))(
  ( (HashableExt!3504 (__x!20358 Int)) )
))
(declare-datatypes ((MutableMap!3495 0))(
  ( (MutableMapExt!3494 (__x!20359 Int)) (HashMap!3495 (underlying!7382 Cell!14167) (hashF!5537 Hashable!3505) (_size!7222 (_ BitVec 32)) (defaultValue!3666 Int)) )
))
(declare-datatypes ((CacheUp!2202 0))(
  ( (CacheUp!2203 (cache!3638 MutableMap!3495)) )
))
(declare-fun cacheUp!633 () CacheUp!2202)

(assert (=> b!2743966 (= lt!971302 (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))))

(declare-fun b!2743967 () Bool)

(declare-fun e!1728235 () Bool)

(declare-fun isEmpty!18023 (List!31658) Bool)

(assert (=> b!2743967 (= e!1728235 (not (isEmpty!18023 (t!227746 rulesArg!249))))))

(declare-fun b!2743968 () Bool)

(declare-fun e!1728245 () Bool)

(declare-fun e!1728251 () Bool)

(assert (=> b!2743968 (= e!1728245 e!1728251)))

(declare-fun b!2743969 () Bool)

(declare-fun e!1728229 () Bool)

(assert (=> b!2743969 (= e!1728229 e!1728235)))

(declare-fun res!1151801 () Bool)

(assert (=> b!2743969 (=> res!1151801 e!1728235)))

(declare-datatypes ((LexerInterface!4428 0))(
  ( (LexerInterfaceExt!4425 (__x!20360 Int)) (Lexer!4426) )
))
(declare-fun thiss!15207 () LexerInterface!4428)

(declare-fun rulesValidInductive!1698 (LexerInterface!4428 List!31658) Bool)

(assert (=> b!2743969 (= res!1151801 (not (rulesValidInductive!1698 thiss!15207 (t!227746 rulesArg!249))))))

(declare-fun input!1326 () BalanceConc!19368)

(declare-datatypes ((Token!9102 0))(
  ( (Token!9103 (value!155369 TokenValue!5056) (rule!7271 Rule!9468) (size!24363 Int) (originalCharacters!5582 List!31657)) )
))
(declare-datatypes ((tuple2!31344 0))(
  ( (tuple2!31345 (_1!18329 Token!9102) (_2!18329 BalanceConc!19368)) )
))
(declare-datatypes ((Option!6230 0))(
  ( (None!6229) (Some!6229 (v!33201 tuple2!31344)) )
))
(declare-datatypes ((tuple3!4374 0))(
  ( (tuple3!4375 (_1!18330 Option!6230) (_2!18330 CacheUp!2202) (_3!2657 CacheDown!2318)) )
))
(declare-fun lt!971303 () tuple3!4374)

(declare-fun maxPrefixOneRuleZipperSequenceMem!16 (LexerInterface!4428 Rule!9468 BalanceConc!19368 CacheUp!2202 CacheDown!2318) tuple3!4374)

(assert (=> b!2743969 (= lt!971303 (maxPrefixOneRuleZipperSequenceMem!16 thiss!15207 (h!36978 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun b!2743971 () Bool)

(declare-fun e!1728250 () Bool)

(declare-fun tp!863249 () Bool)

(assert (=> b!2743971 (= e!1728250 (and e!1728242 tp!863249))))

(declare-fun b!2743972 () Bool)

(declare-fun res!1151800 () Bool)

(declare-fun e!1728238 () Bool)

(assert (=> b!2743972 (=> (not res!1151800) (not e!1728238))))

(assert (=> b!2743972 (= res!1151800 (rulesValidInductive!1698 thiss!15207 rulesArg!249))))

(declare-fun b!2743973 () Bool)

(declare-fun res!1151799 () Bool)

(assert (=> b!2743973 (=> (not res!1151799) (not e!1728238))))

(declare-fun valid!2785 (CacheUp!2202) Bool)

(assert (=> b!2743973 (= res!1151799 (valid!2785 cacheUp!633))))

(declare-fun e!1728239 () Bool)

(declare-fun tp!863248 () Bool)

(declare-fun tp!863258 () Bool)

(declare-fun array_inv!4075 (array!12780) Bool)

(declare-fun array_inv!4076 (array!12778) Bool)

(assert (=> b!2743974 (= e!1728237 (and tp!863260 tp!863248 tp!863258 (array_inv!4075 (_keys!3888 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))))) (array_inv!4076 (_values!3869 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))))) e!1728239))))

(assert (=> b!2743975 (= e!1728236 (and tp!863254 tp!863253))))

(declare-fun b!2743976 () Bool)

(assert (=> b!2743976 (= e!1728238 (not e!1728229))))

(declare-fun res!1151802 () Bool)

(assert (=> b!2743976 (=> res!1151802 e!1728229)))

(assert (=> b!2743976 (= res!1151802 (or (and ((_ is Cons!31558) rulesArg!249) ((_ is Nil!31558) (t!227746 rulesArg!249))) (not ((_ is Cons!31558) rulesArg!249))))))

(declare-fun lt!971301 () List!31657)

(declare-fun isPrefix!2511 (List!31657 List!31657) Bool)

(assert (=> b!2743976 (isPrefix!2511 lt!971301 lt!971301)))

(declare-datatypes ((Unit!45505 0))(
  ( (Unit!45506) )
))
(declare-fun lt!971304 () Unit!45505)

(declare-fun lemmaIsPrefixRefl!1637 (List!31657 List!31657) Unit!45505)

(assert (=> b!2743976 (= lt!971304 (lemmaIsPrefixRefl!1637 lt!971301 lt!971301))))

(declare-fun list!11985 (BalanceConc!19368) List!31657)

(assert (=> b!2743976 (= lt!971301 (list!11985 input!1326))))

(declare-fun mapIsEmpty!16367 () Bool)

(declare-fun mapRes!16368 () Bool)

(assert (=> mapIsEmpty!16367 mapRes!16368))

(declare-fun e!1728246 () Bool)

(declare-fun e!1728243 () Bool)

(declare-fun tp!863259 () Bool)

(declare-fun tp!863243 () Bool)

(declare-fun array_inv!4077 (array!12782) Bool)

(assert (=> b!2743977 (= e!1728243 (and tp!863245 tp!863243 tp!863259 (array_inv!4075 (_keys!3889 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))))) (array_inv!4077 (_values!3870 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))))) e!1728246))))

(declare-fun b!2743978 () Bool)

(declare-fun e!1728240 () Bool)

(declare-fun e!1728249 () Bool)

(assert (=> b!2743978 (= e!1728240 e!1728249)))

(declare-fun mapNonEmpty!16367 () Bool)

(declare-fun mapRes!16367 () Bool)

(declare-fun tp!863251 () Bool)

(declare-fun tp!863255 () Bool)

(assert (=> mapNonEmpty!16367 (= mapRes!16367 (and tp!863251 tp!863255))))

(declare-fun mapKey!16368 () (_ BitVec 32))

(declare-fun mapValue!16368 () List!31659)

(declare-fun mapRest!16368 () (Array (_ BitVec 32) List!31659))

(assert (=> mapNonEmpty!16367 (= (arr!5710 (_values!3870 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))))) (store mapRest!16368 mapKey!16368 mapValue!16368))))

(assert (=> b!2743979 (= e!1728249 (and e!1728231 tp!863250))))

(declare-fun b!2743980 () Bool)

(declare-fun e!1728247 () Bool)

(declare-fun tp!863256 () Bool)

(declare-fun inv!42899 (Conc!9877) Bool)

(assert (=> b!2743980 (= e!1728247 (and (inv!42899 (c!444788 input!1326)) tp!863256))))

(assert (=> b!2743981 (= e!1728251 (and e!1728232 tp!863252))))

(declare-fun res!1151804 () Bool)

(assert (=> start!265978 (=> (not res!1151804) (not e!1728238))))

(assert (=> start!265978 (= res!1151804 ((_ is Lexer!4426) thiss!15207))))

(assert (=> start!265978 e!1728238))

(declare-fun inv!42900 (CacheDown!2318) Bool)

(assert (=> start!265978 (and (inv!42900 cacheDown!646) e!1728240)))

(declare-fun inv!42901 (BalanceConc!19368) Bool)

(assert (=> start!265978 (and (inv!42901 input!1326) e!1728247)))

(assert (=> start!265978 e!1728250))

(declare-fun inv!42902 (CacheUp!2202) Bool)

(assert (=> start!265978 (and (inv!42902 cacheUp!633) e!1728245)))

(assert (=> start!265978 true))

(declare-fun b!2743970 () Bool)

(declare-fun res!1151803 () Bool)

(assert (=> b!2743970 (=> (not res!1151803) (not e!1728238))))

(assert (=> b!2743970 (= res!1151803 (not (isEmpty!18023 rulesArg!249)))))

(declare-fun b!2743982 () Bool)

(declare-fun tp!863261 () Bool)

(assert (=> b!2743982 (= e!1728239 (and tp!863261 mapRes!16368))))

(declare-fun condMapEmpty!16368 () Bool)

(declare-fun mapDefault!16367 () List!31655)

(assert (=> b!2743982 (= condMapEmpty!16368 (= (arr!5708 (_values!3869 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31655)) mapDefault!16367)))))

(declare-fun b!2743983 () Bool)

(declare-fun e!1728241 () Bool)

(assert (=> b!2743983 (= e!1728234 e!1728241)))

(declare-fun mapNonEmpty!16368 () Bool)

(declare-fun tp!863246 () Bool)

(declare-fun tp!863244 () Bool)

(assert (=> mapNonEmpty!16368 (= mapRes!16368 (and tp!863246 tp!863244))))

(declare-fun mapKey!16367 () (_ BitVec 32))

(declare-fun mapRest!16367 () (Array (_ BitVec 32) List!31655))

(declare-fun mapValue!16367 () List!31655)

(assert (=> mapNonEmpty!16368 (= (arr!5708 (_values!3869 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))))) (store mapRest!16367 mapKey!16367 mapValue!16367))))

(declare-fun b!2743984 () Bool)

(declare-fun tp!863247 () Bool)

(assert (=> b!2743984 (= e!1728246 (and tp!863247 mapRes!16367))))

(declare-fun condMapEmpty!16367 () Bool)

(declare-fun mapDefault!16368 () List!31659)

(assert (=> b!2743984 (= condMapEmpty!16367 (= (arr!5710 (_values!3870 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31659)) mapDefault!16368)))))

(declare-fun b!2743985 () Bool)

(declare-fun res!1151798 () Bool)

(assert (=> b!2743985 (=> (not res!1151798) (not e!1728238))))

(declare-fun valid!2786 (CacheDown!2318) Bool)

(assert (=> b!2743985 (= res!1151798 (valid!2786 cacheDown!646))))

(declare-fun mapIsEmpty!16368 () Bool)

(assert (=> mapIsEmpty!16368 mapRes!16367))

(declare-fun b!2743986 () Bool)

(assert (=> b!2743986 (= e!1728241 e!1728243)))

(assert (= (and start!265978 res!1151804) b!2743972))

(assert (= (and b!2743972 res!1151800) b!2743970))

(assert (= (and b!2743970 res!1151803) b!2743973))

(assert (= (and b!2743973 res!1151799) b!2743985))

(assert (= (and b!2743985 res!1151798) b!2743976))

(assert (= (and b!2743976 (not res!1151802)) b!2743969))

(assert (= (and b!2743969 (not res!1151801)) b!2743967))

(assert (= (and b!2743982 condMapEmpty!16368) mapIsEmpty!16367))

(assert (= (and b!2743982 (not condMapEmpty!16368)) mapNonEmpty!16368))

(assert (= b!2743974 b!2743982))

(assert (= b!2743963 b!2743974))

(assert (= b!2743962 b!2743963))

(assert (= (and b!2743964 ((_ is LongMap!3588) (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))) b!2743962))

(assert (= b!2743979 b!2743964))

(assert (= (and b!2743978 ((_ is HashMap!3494) (cache!3637 cacheDown!646))) b!2743979))

(assert (= start!265978 b!2743978))

(assert (= start!265978 b!2743980))

(assert (= b!2743965 b!2743975))

(assert (= b!2743971 b!2743965))

(assert (= (and start!265978 ((_ is Cons!31558) rulesArg!249)) b!2743971))

(assert (= (and b!2743984 condMapEmpty!16367) mapIsEmpty!16368))

(assert (= (and b!2743984 (not condMapEmpty!16367)) mapNonEmpty!16367))

(assert (= b!2743977 b!2743984))

(assert (= b!2743986 b!2743977))

(assert (= b!2743983 b!2743986))

(assert (= (and b!2743966 ((_ is LongMap!3589) (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))) b!2743983))

(assert (= b!2743981 b!2743966))

(assert (= (and b!2743968 ((_ is HashMap!3495) (cache!3638 cacheUp!633))) b!2743981))

(assert (= start!265978 b!2743968))

(declare-fun m!3161279 () Bool)

(assert (=> b!2743965 m!3161279))

(declare-fun m!3161281 () Bool)

(assert (=> b!2743965 m!3161281))

(declare-fun m!3161283 () Bool)

(assert (=> b!2743977 m!3161283))

(declare-fun m!3161285 () Bool)

(assert (=> b!2743977 m!3161285))

(declare-fun m!3161287 () Bool)

(assert (=> b!2743973 m!3161287))

(declare-fun m!3161289 () Bool)

(assert (=> start!265978 m!3161289))

(declare-fun m!3161291 () Bool)

(assert (=> start!265978 m!3161291))

(declare-fun m!3161293 () Bool)

(assert (=> start!265978 m!3161293))

(declare-fun m!3161295 () Bool)

(assert (=> mapNonEmpty!16367 m!3161295))

(declare-fun m!3161297 () Bool)

(assert (=> b!2743980 m!3161297))

(declare-fun m!3161299 () Bool)

(assert (=> b!2743967 m!3161299))

(declare-fun m!3161301 () Bool)

(assert (=> b!2743974 m!3161301))

(declare-fun m!3161303 () Bool)

(assert (=> b!2743974 m!3161303))

(declare-fun m!3161305 () Bool)

(assert (=> b!2743972 m!3161305))

(declare-fun m!3161307 () Bool)

(assert (=> b!2743970 m!3161307))

(declare-fun m!3161309 () Bool)

(assert (=> mapNonEmpty!16368 m!3161309))

(declare-fun m!3161311 () Bool)

(assert (=> b!2743969 m!3161311))

(declare-fun m!3161313 () Bool)

(assert (=> b!2743969 m!3161313))

(declare-fun m!3161315 () Bool)

(assert (=> b!2743985 m!3161315))

(declare-fun m!3161317 () Bool)

(assert (=> b!2743976 m!3161317))

(declare-fun m!3161319 () Bool)

(assert (=> b!2743976 m!3161319))

(declare-fun m!3161321 () Bool)

(assert (=> b!2743976 m!3161321))

(check-sat (not b!2743970) (not b!2743967) (not b!2743974) (not b_next!77865) (not b!2743973) (not b!2743965) b_and!201879 (not start!265978) (not b!2743985) (not b_next!77869) b_and!201887 (not b!2743982) b_and!201885 b_and!201883 (not mapNonEmpty!16367) (not b!2743971) (not mapNonEmpty!16368) (not b!2743976) (not b!2743980) (not b!2743969) (not b_next!77867) (not b_next!77861) (not b!2743977) b_and!201881 b_and!201877 (not b_next!77863) (not b!2743984) (not b_next!77871) (not b!2743972))
(check-sat b_and!201887 (not b_next!77865) b_and!201879 (not b_next!77867) (not b_next!77861) (not b_next!77863) (not b_next!77871) (not b_next!77869) b_and!201885 b_and!201883 b_and!201881 b_and!201877)
(get-model)

(declare-fun d!795786 () Bool)

(assert (=> d!795786 (= (array_inv!4075 (_keys!3888 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))))) (bvsge (size!24361 (_keys!3888 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743974 d!795786))

(declare-fun d!795788 () Bool)

(assert (=> d!795788 (= (array_inv!4076 (_values!3869 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))))) (bvsge (size!24360 (_values!3869 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743974 d!795788))

(declare-fun b!2743996 () Bool)

(declare-fun res!1151817 () Bool)

(declare-fun e!1728259 () Bool)

(assert (=> b!2743996 (=> (not res!1151817) (not e!1728259))))

(declare-fun head!6110 (List!31657) C!16132)

(assert (=> b!2743996 (= res!1151817 (= (head!6110 lt!971301) (head!6110 lt!971301)))))

(declare-fun b!2743995 () Bool)

(declare-fun e!1728260 () Bool)

(assert (=> b!2743995 (= e!1728260 e!1728259)))

(declare-fun res!1151820 () Bool)

(assert (=> b!2743995 (=> (not res!1151820) (not e!1728259))))

(assert (=> b!2743995 (= res!1151820 (not ((_ is Nil!31557) lt!971301)))))

(declare-fun b!2743998 () Bool)

(declare-fun e!1728258 () Bool)

(declare-fun size!24364 (List!31657) Int)

(assert (=> b!2743998 (= e!1728258 (>= (size!24364 lt!971301) (size!24364 lt!971301)))))

(declare-fun d!795790 () Bool)

(assert (=> d!795790 e!1728258))

(declare-fun res!1151819 () Bool)

(assert (=> d!795790 (=> res!1151819 e!1728258)))

(declare-fun lt!971307 () Bool)

(assert (=> d!795790 (= res!1151819 (not lt!971307))))

(assert (=> d!795790 (= lt!971307 e!1728260)))

(declare-fun res!1151818 () Bool)

(assert (=> d!795790 (=> res!1151818 e!1728260)))

(assert (=> d!795790 (= res!1151818 ((_ is Nil!31557) lt!971301))))

(assert (=> d!795790 (= (isPrefix!2511 lt!971301 lt!971301) lt!971307)))

(declare-fun b!2743997 () Bool)

(declare-fun tail!4348 (List!31657) List!31657)

(assert (=> b!2743997 (= e!1728259 (isPrefix!2511 (tail!4348 lt!971301) (tail!4348 lt!971301)))))

(assert (= (and d!795790 (not res!1151818)) b!2743995))

(assert (= (and b!2743995 res!1151820) b!2743996))

(assert (= (and b!2743996 res!1151817) b!2743997))

(assert (= (and d!795790 (not res!1151819)) b!2743998))

(declare-fun m!3161323 () Bool)

(assert (=> b!2743996 m!3161323))

(assert (=> b!2743996 m!3161323))

(declare-fun m!3161325 () Bool)

(assert (=> b!2743998 m!3161325))

(assert (=> b!2743998 m!3161325))

(declare-fun m!3161327 () Bool)

(assert (=> b!2743997 m!3161327))

(assert (=> b!2743997 m!3161327))

(assert (=> b!2743997 m!3161327))

(assert (=> b!2743997 m!3161327))

(declare-fun m!3161329 () Bool)

(assert (=> b!2743997 m!3161329))

(assert (=> b!2743976 d!795790))

(declare-fun d!795792 () Bool)

(assert (=> d!795792 (isPrefix!2511 lt!971301 lt!971301)))

(declare-fun lt!971310 () Unit!45505)

(declare-fun choose!16063 (List!31657 List!31657) Unit!45505)

(assert (=> d!795792 (= lt!971310 (choose!16063 lt!971301 lt!971301))))

(assert (=> d!795792 (= (lemmaIsPrefixRefl!1637 lt!971301 lt!971301) lt!971310)))

(declare-fun bs!490232 () Bool)

(assert (= bs!490232 d!795792))

(assert (=> bs!490232 m!3161317))

(declare-fun m!3161331 () Bool)

(assert (=> bs!490232 m!3161331))

(assert (=> b!2743976 d!795792))

(declare-fun d!795794 () Bool)

(declare-fun list!11986 (Conc!9877) List!31657)

(assert (=> d!795794 (= (list!11985 input!1326) (list!11986 (c!444788 input!1326)))))

(declare-fun bs!490233 () Bool)

(assert (= bs!490233 d!795794))

(declare-fun m!3161333 () Bool)

(assert (=> bs!490233 m!3161333))

(assert (=> b!2743976 d!795794))

(declare-fun d!795796 () Bool)

(assert (=> d!795796 (= (inv!42897 (tag!5338 (h!36978 rulesArg!249))) (= (mod (str.len (value!155368 (tag!5338 (h!36978 rulesArg!249)))) 2) 0))))

(assert (=> b!2743965 d!795796))

(declare-fun d!795798 () Bool)

(declare-fun res!1151823 () Bool)

(declare-fun e!1728263 () Bool)

(assert (=> d!795798 (=> (not res!1151823) (not e!1728263))))

(declare-fun semiInverseModEq!1995 (Int Int) Bool)

(assert (=> d!795798 (= res!1151823 (semiInverseModEq!1995 (toChars!6691 (transformation!4834 (h!36978 rulesArg!249))) (toValue!6832 (transformation!4834 (h!36978 rulesArg!249)))))))

(assert (=> d!795798 (= (inv!42898 (transformation!4834 (h!36978 rulesArg!249))) e!1728263)))

(declare-fun b!2744001 () Bool)

(declare-fun equivClasses!1896 (Int Int) Bool)

(assert (=> b!2744001 (= e!1728263 (equivClasses!1896 (toChars!6691 (transformation!4834 (h!36978 rulesArg!249))) (toValue!6832 (transformation!4834 (h!36978 rulesArg!249)))))))

(assert (= (and d!795798 res!1151823) b!2744001))

(declare-fun m!3161335 () Bool)

(assert (=> d!795798 m!3161335))

(declare-fun m!3161337 () Bool)

(assert (=> b!2744001 m!3161337))

(assert (=> b!2743965 d!795798))

(declare-fun d!795800 () Bool)

(declare-fun validCacheMapDown!364 (MutableMap!3494) Bool)

(assert (=> d!795800 (= (valid!2786 cacheDown!646) (validCacheMapDown!364 (cache!3637 cacheDown!646)))))

(declare-fun bs!490234 () Bool)

(assert (= bs!490234 d!795800))

(declare-fun m!3161339 () Bool)

(assert (=> bs!490234 m!3161339))

(assert (=> b!2743985 d!795800))

(declare-fun d!795802 () Bool)

(assert (=> d!795802 (= (array_inv!4075 (_keys!3889 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))))) (bvsge (size!24361 (_keys!3889 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743977 d!795802))

(declare-fun d!795804 () Bool)

(assert (=> d!795804 (= (array_inv!4077 (_values!3870 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))))) (bvsge (size!24362 (_values!3870 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743977 d!795804))

(declare-fun d!795806 () Bool)

(assert (=> d!795806 (= (isEmpty!18023 (t!227746 rulesArg!249)) ((_ is Nil!31558) (t!227746 rulesArg!249)))))

(assert (=> b!2743967 d!795806))

(declare-fun d!795808 () Bool)

(assert (=> d!795808 true))

(declare-fun lt!971313 () Bool)

(declare-fun lambda!100840 () Int)

(declare-fun forall!6575 (List!31658 Int) Bool)

(assert (=> d!795808 (= lt!971313 (forall!6575 (t!227746 rulesArg!249) lambda!100840))))

(declare-fun e!1728269 () Bool)

(assert (=> d!795808 (= lt!971313 e!1728269)))

(declare-fun res!1151828 () Bool)

(assert (=> d!795808 (=> res!1151828 e!1728269)))

(assert (=> d!795808 (= res!1151828 (not ((_ is Cons!31558) (t!227746 rulesArg!249))))))

(assert (=> d!795808 (= (rulesValidInductive!1698 thiss!15207 (t!227746 rulesArg!249)) lt!971313)))

(declare-fun b!2744006 () Bool)

(declare-fun e!1728268 () Bool)

(assert (=> b!2744006 (= e!1728269 e!1728268)))

(declare-fun res!1151829 () Bool)

(assert (=> b!2744006 (=> (not res!1151829) (not e!1728268))))

(declare-fun ruleValid!1583 (LexerInterface!4428 Rule!9468) Bool)

(assert (=> b!2744006 (= res!1151829 (ruleValid!1583 thiss!15207 (h!36978 (t!227746 rulesArg!249))))))

(declare-fun b!2744007 () Bool)

(assert (=> b!2744007 (= e!1728268 (rulesValidInductive!1698 thiss!15207 (t!227746 (t!227746 rulesArg!249))))))

(assert (= (and d!795808 (not res!1151828)) b!2744006))

(assert (= (and b!2744006 res!1151829) b!2744007))

(declare-fun m!3161341 () Bool)

(assert (=> d!795808 m!3161341))

(declare-fun m!3161343 () Bool)

(assert (=> b!2744006 m!3161343))

(declare-fun m!3161345 () Bool)

(assert (=> b!2744007 m!3161345))

(assert (=> b!2743969 d!795808))

(declare-fun d!795810 () Bool)

(declare-fun e!1728277 () Bool)

(assert (=> d!795810 e!1728277))

(declare-fun res!1151836 () Bool)

(assert (=> d!795810 (=> (not res!1151836) (not e!1728277))))

(declare-fun lt!971329 () tuple3!4374)

(declare-fun maxPrefixOneRuleZipperSequence!497 (LexerInterface!4428 Rule!9468 BalanceConc!19368) Option!6230)

(assert (=> d!795810 (= res!1151836 (= (_1!18330 lt!971329) (maxPrefixOneRuleZipperSequence!497 thiss!15207 (h!36978 rulesArg!249) input!1326)))))

(declare-fun e!1728276 () Option!6230)

(declare-datatypes ((tuple2!31346 0))(
  ( (tuple2!31347 (_1!18331 BalanceConc!19368) (_2!18331 BalanceConc!19368)) )
))
(declare-datatypes ((tuple3!4376 0))(
  ( (tuple3!4377 (_1!18332 tuple2!31346) (_2!18332 CacheUp!2202) (_3!2658 CacheDown!2318)) )
))
(declare-fun lt!971331 () tuple3!4376)

(assert (=> d!795810 (= lt!971329 (tuple3!4375 e!1728276 (_2!18332 lt!971331) (_3!2658 lt!971331)))))

(declare-fun c!444791 () Bool)

(declare-fun isEmpty!18024 (BalanceConc!19368) Bool)

(assert (=> d!795810 (= c!444791 (isEmpty!18024 (_1!18331 (_1!18332 lt!971331))))))

(declare-fun findLongestMatchWithZipperSequenceMem!5 (Regex!7987 BalanceConc!19368 CacheUp!2202 CacheDown!2318) tuple3!4376)

(assert (=> d!795810 (= lt!971331 (findLongestMatchWithZipperSequenceMem!5 (regex!4834 (h!36978 rulesArg!249)) input!1326 cacheUp!633 cacheDown!646))))

(assert (=> d!795810 (ruleValid!1583 thiss!15207 (h!36978 rulesArg!249))))

(assert (=> d!795810 (= (maxPrefixOneRuleZipperSequenceMem!16 thiss!15207 (h!36978 rulesArg!249) input!1326 cacheUp!633 cacheDown!646) lt!971329)))

(declare-fun b!2744020 () Bool)

(assert (=> b!2744020 (= e!1728276 None!6229)))

(declare-fun b!2744021 () Bool)

(declare-fun res!1151838 () Bool)

(assert (=> b!2744021 (=> (not res!1151838) (not e!1728277))))

(assert (=> b!2744021 (= res!1151838 (valid!2785 (_2!18330 lt!971329)))))

(declare-fun b!2744022 () Bool)

(assert (=> b!2744022 (= e!1728277 (valid!2786 (_3!2657 lt!971329)))))

(declare-fun b!2744023 () Bool)

(declare-fun e!1728278 () Bool)

(declare-fun lt!971326 () List!31657)

(declare-fun matchR!3651 (Regex!7987 List!31657) Bool)

(declare-datatypes ((tuple2!31348 0))(
  ( (tuple2!31349 (_1!18333 List!31657) (_2!18333 List!31657)) )
))
(declare-fun findLongestMatchInner!798 (Regex!7987 List!31657 Int List!31657 List!31657 Int) tuple2!31348)

(assert (=> b!2744023 (= e!1728278 (matchR!3651 (regex!4834 (h!36978 rulesArg!249)) (_1!18333 (findLongestMatchInner!798 (regex!4834 (h!36978 rulesArg!249)) Nil!31557 (size!24364 Nil!31557) lt!971326 lt!971326 (size!24364 lt!971326)))))))

(declare-fun b!2744024 () Bool)

(declare-fun apply!7423 (TokenValueInjection!9552 BalanceConc!19368) TokenValue!5056)

(declare-fun size!24365 (BalanceConc!19368) Int)

(assert (=> b!2744024 (= e!1728276 (Some!6229 (tuple2!31345 (Token!9103 (apply!7423 (transformation!4834 (h!36978 rulesArg!249)) (_1!18331 (_1!18332 lt!971331))) (h!36978 rulesArg!249) (size!24365 (_1!18331 (_1!18332 lt!971331))) (list!11985 (_1!18331 (_1!18332 lt!971331)))) (_2!18331 (_1!18332 lt!971331)))))))

(assert (=> b!2744024 (= lt!971326 (list!11985 input!1326))))

(declare-fun lt!971327 () Unit!45505)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!771 (Regex!7987 List!31657) Unit!45505)

(assert (=> b!2744024 (= lt!971327 (longestMatchIsAcceptedByMatchOrIsEmpty!771 (regex!4834 (h!36978 rulesArg!249)) lt!971326))))

(declare-fun res!1151837 () Bool)

(declare-fun isEmpty!18025 (List!31657) Bool)

(assert (=> b!2744024 (= res!1151837 (isEmpty!18025 (_1!18333 (findLongestMatchInner!798 (regex!4834 (h!36978 rulesArg!249)) Nil!31557 (size!24364 Nil!31557) lt!971326 lt!971326 (size!24364 lt!971326)))))))

(assert (=> b!2744024 (=> res!1151837 e!1728278)))

(assert (=> b!2744024 e!1728278))

(declare-fun lt!971330 () Unit!45505)

(assert (=> b!2744024 (= lt!971330 lt!971327)))

(declare-fun lt!971328 () Unit!45505)

(declare-fun lemmaSemiInverse!1138 (TokenValueInjection!9552 BalanceConc!19368) Unit!45505)

(assert (=> b!2744024 (= lt!971328 (lemmaSemiInverse!1138 (transformation!4834 (h!36978 rulesArg!249)) (_1!18331 (_1!18332 lt!971331))))))

(assert (= (and d!795810 c!444791) b!2744020))

(assert (= (and d!795810 (not c!444791)) b!2744024))

(assert (= (and b!2744024 (not res!1151837)) b!2744023))

(assert (= (and d!795810 res!1151836) b!2744021))

(assert (= (and b!2744021 res!1151838) b!2744022))

(declare-fun m!3161347 () Bool)

(assert (=> b!2744021 m!3161347))

(declare-fun m!3161349 () Bool)

(assert (=> b!2744022 m!3161349))

(declare-fun m!3161351 () Bool)

(assert (=> b!2744024 m!3161351))

(declare-fun m!3161353 () Bool)

(assert (=> b!2744024 m!3161353))

(assert (=> b!2744024 m!3161321))

(declare-fun m!3161355 () Bool)

(assert (=> b!2744024 m!3161355))

(declare-fun m!3161357 () Bool)

(assert (=> b!2744024 m!3161357))

(declare-fun m!3161359 () Bool)

(assert (=> b!2744024 m!3161359))

(declare-fun m!3161361 () Bool)

(assert (=> b!2744024 m!3161361))

(declare-fun m!3161363 () Bool)

(assert (=> b!2744024 m!3161363))

(declare-fun m!3161365 () Bool)

(assert (=> b!2744024 m!3161365))

(assert (=> b!2744024 m!3161365))

(assert (=> b!2744024 m!3161357))

(declare-fun m!3161367 () Bool)

(assert (=> b!2744024 m!3161367))

(declare-fun m!3161369 () Bool)

(assert (=> d!795810 m!3161369))

(declare-fun m!3161371 () Bool)

(assert (=> d!795810 m!3161371))

(declare-fun m!3161373 () Bool)

(assert (=> d!795810 m!3161373))

(declare-fun m!3161375 () Bool)

(assert (=> d!795810 m!3161375))

(assert (=> b!2744023 m!3161365))

(assert (=> b!2744023 m!3161357))

(assert (=> b!2744023 m!3161365))

(assert (=> b!2744023 m!3161357))

(assert (=> b!2744023 m!3161367))

(declare-fun m!3161377 () Bool)

(assert (=> b!2744023 m!3161377))

(assert (=> b!2743969 d!795810))

(declare-fun d!795812 () Bool)

(declare-fun res!1151841 () Bool)

(declare-fun e!1728281 () Bool)

(assert (=> d!795812 (=> (not res!1151841) (not e!1728281))))

(assert (=> d!795812 (= res!1151841 ((_ is HashMap!3494) (cache!3637 cacheDown!646)))))

(assert (=> d!795812 (= (inv!42900 cacheDown!646) e!1728281)))

(declare-fun b!2744027 () Bool)

(assert (=> b!2744027 (= e!1728281 (validCacheMapDown!364 (cache!3637 cacheDown!646)))))

(assert (= (and d!795812 res!1151841) b!2744027))

(assert (=> b!2744027 m!3161339))

(assert (=> start!265978 d!795812))

(declare-fun d!795814 () Bool)

(declare-fun isBalanced!3008 (Conc!9877) Bool)

(assert (=> d!795814 (= (inv!42901 input!1326) (isBalanced!3008 (c!444788 input!1326)))))

(declare-fun bs!490235 () Bool)

(assert (= bs!490235 d!795814))

(declare-fun m!3161379 () Bool)

(assert (=> bs!490235 m!3161379))

(assert (=> start!265978 d!795814))

(declare-fun d!795816 () Bool)

(declare-fun res!1151844 () Bool)

(declare-fun e!1728284 () Bool)

(assert (=> d!795816 (=> (not res!1151844) (not e!1728284))))

(assert (=> d!795816 (= res!1151844 ((_ is HashMap!3495) (cache!3638 cacheUp!633)))))

(assert (=> d!795816 (= (inv!42902 cacheUp!633) e!1728284)))

(declare-fun b!2744030 () Bool)

(declare-fun validCacheMapUp!333 (MutableMap!3495) Bool)

(assert (=> b!2744030 (= e!1728284 (validCacheMapUp!333 (cache!3638 cacheUp!633)))))

(assert (= (and d!795816 res!1151844) b!2744030))

(declare-fun m!3161381 () Bool)

(assert (=> b!2744030 m!3161381))

(assert (=> start!265978 d!795816))

(declare-fun d!795818 () Bool)

(assert (=> d!795818 (= (isEmpty!18023 rulesArg!249) ((_ is Nil!31558) rulesArg!249))))

(assert (=> b!2743970 d!795818))

(declare-fun bs!490236 () Bool)

(declare-fun d!795820 () Bool)

(assert (= bs!490236 (and d!795820 d!795808)))

(declare-fun lambda!100841 () Int)

(assert (=> bs!490236 (= lambda!100841 lambda!100840)))

(assert (=> d!795820 true))

(declare-fun lt!971332 () Bool)

(assert (=> d!795820 (= lt!971332 (forall!6575 rulesArg!249 lambda!100841))))

(declare-fun e!1728286 () Bool)

(assert (=> d!795820 (= lt!971332 e!1728286)))

(declare-fun res!1151845 () Bool)

(assert (=> d!795820 (=> res!1151845 e!1728286)))

(assert (=> d!795820 (= res!1151845 (not ((_ is Cons!31558) rulesArg!249)))))

(assert (=> d!795820 (= (rulesValidInductive!1698 thiss!15207 rulesArg!249) lt!971332)))

(declare-fun b!2744031 () Bool)

(declare-fun e!1728285 () Bool)

(assert (=> b!2744031 (= e!1728286 e!1728285)))

(declare-fun res!1151846 () Bool)

(assert (=> b!2744031 (=> (not res!1151846) (not e!1728285))))

(assert (=> b!2744031 (= res!1151846 (ruleValid!1583 thiss!15207 (h!36978 rulesArg!249)))))

(declare-fun b!2744032 () Bool)

(assert (=> b!2744032 (= e!1728285 (rulesValidInductive!1698 thiss!15207 (t!227746 rulesArg!249)))))

(assert (= (and d!795820 (not res!1151845)) b!2744031))

(assert (= (and b!2744031 res!1151846) b!2744032))

(declare-fun m!3161383 () Bool)

(assert (=> d!795820 m!3161383))

(assert (=> b!2744031 m!3161375))

(assert (=> b!2744032 m!3161311))

(assert (=> b!2743972 d!795820))

(declare-fun d!795822 () Bool)

(declare-fun c!444794 () Bool)

(assert (=> d!795822 (= c!444794 ((_ is Node!9877) (c!444788 input!1326)))))

(declare-fun e!1728291 () Bool)

(assert (=> d!795822 (= (inv!42899 (c!444788 input!1326)) e!1728291)))

(declare-fun b!2744039 () Bool)

(declare-fun inv!42903 (Conc!9877) Bool)

(assert (=> b!2744039 (= e!1728291 (inv!42903 (c!444788 input!1326)))))

(declare-fun b!2744040 () Bool)

(declare-fun e!1728292 () Bool)

(assert (=> b!2744040 (= e!1728291 e!1728292)))

(declare-fun res!1151849 () Bool)

(assert (=> b!2744040 (= res!1151849 (not ((_ is Leaf!15039) (c!444788 input!1326))))))

(assert (=> b!2744040 (=> res!1151849 e!1728292)))

(declare-fun b!2744041 () Bool)

(declare-fun inv!42904 (Conc!9877) Bool)

(assert (=> b!2744041 (= e!1728292 (inv!42904 (c!444788 input!1326)))))

(assert (= (and d!795822 c!444794) b!2744039))

(assert (= (and d!795822 (not c!444794)) b!2744040))

(assert (= (and b!2744040 (not res!1151849)) b!2744041))

(declare-fun m!3161385 () Bool)

(assert (=> b!2744039 m!3161385))

(declare-fun m!3161387 () Bool)

(assert (=> b!2744041 m!3161387))

(assert (=> b!2743980 d!795822))

(declare-fun d!795824 () Bool)

(assert (=> d!795824 (= (valid!2785 cacheUp!633) (validCacheMapUp!333 (cache!3638 cacheUp!633)))))

(declare-fun bs!490237 () Bool)

(assert (= bs!490237 d!795824))

(assert (=> bs!490237 m!3161381))

(assert (=> b!2743973 d!795824))

(declare-fun e!1728305 () Bool)

(declare-fun setElem!21528 () Context!4410)

(declare-fun tp!863285 () Bool)

(declare-fun setNonEmpty!21527 () Bool)

(declare-fun setRes!21527 () Bool)

(declare-fun inv!42905 (Context!4410) Bool)

(assert (=> setNonEmpty!21527 (= setRes!21527 (and tp!863285 (inv!42905 setElem!21528) e!1728305))))

(declare-fun mapDefault!16371 () List!31659)

(declare-fun setRest!21528 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21527 (= (_2!18328 (h!36979 mapDefault!16371)) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21528 true) setRest!21528))))

(declare-fun tp!863280 () Bool)

(declare-fun setElem!21527 () Context!4410)

(declare-fun e!1728306 () Bool)

(declare-fun setNonEmpty!21528 () Bool)

(declare-fun setRes!21528 () Bool)

(assert (=> setNonEmpty!21528 (= setRes!21528 (and tp!863280 (inv!42905 setElem!21527) e!1728306))))

(declare-fun mapValue!16371 () List!31659)

(declare-fun setRest!21527 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21528 (= (_2!18328 (h!36979 mapValue!16371)) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21527 true) setRest!21527))))

(declare-fun b!2744057 () Bool)

(declare-fun tp!863287 () Bool)

(assert (=> b!2744057 (= e!1728306 tp!863287)))

(declare-fun b!2744058 () Bool)

(declare-fun tp!863288 () Bool)

(assert (=> b!2744058 (= e!1728305 tp!863288)))

(declare-fun mapNonEmpty!16371 () Bool)

(declare-fun mapRes!16371 () Bool)

(declare-fun tp!863282 () Bool)

(declare-fun e!1728310 () Bool)

(assert (=> mapNonEmpty!16371 (= mapRes!16371 (and tp!863282 e!1728310))))

(declare-fun mapRest!16371 () (Array (_ BitVec 32) List!31659))

(declare-fun mapKey!16371 () (_ BitVec 32))

(assert (=> mapNonEmpty!16371 (= mapRest!16368 (store mapRest!16371 mapKey!16371 mapValue!16371))))

(declare-fun setIsEmpty!21527 () Bool)

(assert (=> setIsEmpty!21527 setRes!21528))

(declare-fun mapIsEmpty!16371 () Bool)

(assert (=> mapIsEmpty!16371 mapRes!16371))

(declare-fun b!2744059 () Bool)

(declare-fun e!1728307 () Bool)

(declare-fun tp!863286 () Bool)

(assert (=> b!2744059 (= e!1728307 tp!863286)))

(declare-fun setIsEmpty!21528 () Bool)

(assert (=> setIsEmpty!21528 setRes!21527))

(declare-fun b!2744056 () Bool)

(declare-fun e!1728308 () Bool)

(declare-fun tp!863283 () Bool)

(assert (=> b!2744056 (= e!1728308 tp!863283)))

(declare-fun condMapEmpty!16371 () Bool)

(assert (=> mapNonEmpty!16367 (= condMapEmpty!16371 (= mapRest!16368 ((as const (Array (_ BitVec 32) List!31659)) mapDefault!16371)))))

(declare-fun e!1728309 () Bool)

(assert (=> mapNonEmpty!16367 (= tp!863251 (and e!1728309 mapRes!16371))))

(declare-fun tp!863281 () Bool)

(declare-fun b!2744060 () Bool)

(declare-fun tp_is_empty!13921 () Bool)

(assert (=> b!2744060 (= e!1728309 (and (inv!42905 (_1!18327 (_1!18328 (h!36979 mapDefault!16371)))) e!1728307 tp_is_empty!13921 setRes!21527 tp!863281))))

(declare-fun condSetEmpty!21527 () Bool)

(assert (=> b!2744060 (= condSetEmpty!21527 (= (_2!18328 (h!36979 mapDefault!16371)) ((as const (Array Context!4410 Bool)) false)))))

(declare-fun b!2744061 () Bool)

(declare-fun tp!863284 () Bool)

(assert (=> b!2744061 (= e!1728310 (and (inv!42905 (_1!18327 (_1!18328 (h!36979 mapValue!16371)))) e!1728308 tp_is_empty!13921 setRes!21528 tp!863284))))

(declare-fun condSetEmpty!21528 () Bool)

(assert (=> b!2744061 (= condSetEmpty!21528 (= (_2!18328 (h!36979 mapValue!16371)) ((as const (Array Context!4410 Bool)) false)))))

(assert (= (and mapNonEmpty!16367 condMapEmpty!16371) mapIsEmpty!16371))

(assert (= (and mapNonEmpty!16367 (not condMapEmpty!16371)) mapNonEmpty!16371))

(assert (= b!2744061 b!2744056))

(assert (= (and b!2744061 condSetEmpty!21528) setIsEmpty!21527))

(assert (= (and b!2744061 (not condSetEmpty!21528)) setNonEmpty!21528))

(assert (= setNonEmpty!21528 b!2744057))

(assert (= (and mapNonEmpty!16371 ((_ is Cons!31559) mapValue!16371)) b!2744061))

(assert (= b!2744060 b!2744059))

(assert (= (and b!2744060 condSetEmpty!21527) setIsEmpty!21528))

(assert (= (and b!2744060 (not condSetEmpty!21527)) setNonEmpty!21527))

(assert (= setNonEmpty!21527 b!2744058))

(assert (= (and mapNonEmpty!16367 ((_ is Cons!31559) mapDefault!16371)) b!2744060))

(declare-fun m!3161389 () Bool)

(assert (=> b!2744060 m!3161389))

(declare-fun m!3161391 () Bool)

(assert (=> setNonEmpty!21528 m!3161391))

(declare-fun m!3161393 () Bool)

(assert (=> setNonEmpty!21527 m!3161393))

(declare-fun m!3161395 () Bool)

(assert (=> b!2744061 m!3161395))

(declare-fun m!3161397 () Bool)

(assert (=> mapNonEmpty!16371 m!3161397))

(declare-fun b!2744070 () Bool)

(declare-fun e!1728319 () Bool)

(declare-fun tp!863297 () Bool)

(assert (=> b!2744070 (= e!1728319 tp!863297)))

(declare-fun tp!863300 () Bool)

(declare-fun e!1728318 () Bool)

(declare-fun setNonEmpty!21531 () Bool)

(declare-fun setElem!21531 () Context!4410)

(declare-fun setRes!21531 () Bool)

(assert (=> setNonEmpty!21531 (= setRes!21531 (and tp!863300 (inv!42905 setElem!21531) e!1728318))))

(declare-fun setRest!21531 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21531 (= (_2!18328 (h!36979 mapValue!16368)) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21531 true) setRest!21531))))

(declare-fun e!1728317 () Bool)

(declare-fun b!2744071 () Bool)

(declare-fun tp!863298 () Bool)

(assert (=> b!2744071 (= e!1728317 (and (inv!42905 (_1!18327 (_1!18328 (h!36979 mapValue!16368)))) e!1728319 tp_is_empty!13921 setRes!21531 tp!863298))))

(declare-fun condSetEmpty!21531 () Bool)

(assert (=> b!2744071 (= condSetEmpty!21531 (= (_2!18328 (h!36979 mapValue!16368)) ((as const (Array Context!4410 Bool)) false)))))

(assert (=> mapNonEmpty!16367 (= tp!863255 e!1728317)))

(declare-fun b!2744072 () Bool)

(declare-fun tp!863299 () Bool)

(assert (=> b!2744072 (= e!1728318 tp!863299)))

(declare-fun setIsEmpty!21531 () Bool)

(assert (=> setIsEmpty!21531 setRes!21531))

(assert (= b!2744071 b!2744070))

(assert (= (and b!2744071 condSetEmpty!21531) setIsEmpty!21531))

(assert (= (and b!2744071 (not condSetEmpty!21531)) setNonEmpty!21531))

(assert (= setNonEmpty!21531 b!2744072))

(assert (= (and mapNonEmpty!16367 ((_ is Cons!31559) mapValue!16368)) b!2744071))

(declare-fun m!3161399 () Bool)

(assert (=> setNonEmpty!21531 m!3161399))

(declare-fun m!3161401 () Bool)

(assert (=> b!2744071 m!3161401))

(declare-fun setIsEmpty!21534 () Bool)

(declare-fun setRes!21534 () Bool)

(assert (=> setIsEmpty!21534 setRes!21534))

(declare-fun b!2744081 () Bool)

(declare-fun e!1728327 () Bool)

(declare-fun tp!863314 () Bool)

(assert (=> b!2744081 (= e!1728327 tp!863314)))

(declare-fun setElem!21534 () Context!4410)

(declare-fun tp!863315 () Bool)

(declare-fun setNonEmpty!21534 () Bool)

(assert (=> setNonEmpty!21534 (= setRes!21534 (and tp!863315 (inv!42905 setElem!21534) e!1728327))))

(declare-fun setRest!21534 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21534 (= (_2!18326 (h!36975 (zeroValue!3847 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21534 true) setRest!21534))))

(declare-fun b!2744082 () Bool)

(declare-fun e!1728328 () Bool)

(declare-fun tp!863312 () Bool)

(assert (=> b!2744082 (= e!1728328 tp!863312)))

(declare-fun e!1728326 () Bool)

(assert (=> b!2743974 (= tp!863248 e!1728326)))

(declare-fun tp!863313 () Bool)

(declare-fun b!2744083 () Bool)

(declare-fun tp!863311 () Bool)

(assert (=> b!2744083 (= e!1728326 (and tp!863313 (inv!42905 (_2!18325 (_1!18326 (h!36975 (zeroValue!3847 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646)))))))))) e!1728328 tp_is_empty!13921 setRes!21534 tp!863311))))

(declare-fun condSetEmpty!21534 () Bool)

(assert (=> b!2744083 (= condSetEmpty!21534 (= (_2!18326 (h!36975 (zeroValue!3847 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646)))))))) ((as const (Array Context!4410 Bool)) false)))))

(assert (= b!2744083 b!2744082))

(assert (= (and b!2744083 condSetEmpty!21534) setIsEmpty!21534))

(assert (= (and b!2744083 (not condSetEmpty!21534)) setNonEmpty!21534))

(assert (= setNonEmpty!21534 b!2744081))

(assert (= (and b!2743974 ((_ is Cons!31555) (zeroValue!3847 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646)))))))) b!2744083))

(declare-fun m!3161403 () Bool)

(assert (=> setNonEmpty!21534 m!3161403))

(declare-fun m!3161405 () Bool)

(assert (=> b!2744083 m!3161405))

(declare-fun setIsEmpty!21535 () Bool)

(declare-fun setRes!21535 () Bool)

(assert (=> setIsEmpty!21535 setRes!21535))

(declare-fun b!2744084 () Bool)

(declare-fun e!1728330 () Bool)

(declare-fun tp!863319 () Bool)

(assert (=> b!2744084 (= e!1728330 tp!863319)))

(declare-fun setNonEmpty!21535 () Bool)

(declare-fun tp!863320 () Bool)

(declare-fun setElem!21535 () Context!4410)

(assert (=> setNonEmpty!21535 (= setRes!21535 (and tp!863320 (inv!42905 setElem!21535) e!1728330))))

(declare-fun setRest!21535 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21535 (= (_2!18326 (h!36975 (minValue!3847 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21535 true) setRest!21535))))

(declare-fun b!2744085 () Bool)

(declare-fun e!1728331 () Bool)

(declare-fun tp!863317 () Bool)

(assert (=> b!2744085 (= e!1728331 tp!863317)))

(declare-fun e!1728329 () Bool)

(assert (=> b!2743974 (= tp!863258 e!1728329)))

(declare-fun b!2744086 () Bool)

(declare-fun tp!863318 () Bool)

(declare-fun tp!863316 () Bool)

(assert (=> b!2744086 (= e!1728329 (and tp!863318 (inv!42905 (_2!18325 (_1!18326 (h!36975 (minValue!3847 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646)))))))))) e!1728331 tp_is_empty!13921 setRes!21535 tp!863316))))

(declare-fun condSetEmpty!21535 () Bool)

(assert (=> b!2744086 (= condSetEmpty!21535 (= (_2!18326 (h!36975 (minValue!3847 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646)))))))) ((as const (Array Context!4410 Bool)) false)))))

(assert (= b!2744086 b!2744085))

(assert (= (and b!2744086 condSetEmpty!21535) setIsEmpty!21535))

(assert (= (and b!2744086 (not condSetEmpty!21535)) setNonEmpty!21535))

(assert (= setNonEmpty!21535 b!2744084))

(assert (= (and b!2743974 ((_ is Cons!31555) (minValue!3847 (v!33197 (underlying!7379 (v!33198 (underlying!7380 (cache!3637 cacheDown!646)))))))) b!2744086))

(declare-fun m!3161407 () Bool)

(assert (=> setNonEmpty!21535 m!3161407))

(declare-fun m!3161409 () Bool)

(assert (=> b!2744086 m!3161409))

(declare-fun b!2744099 () Bool)

(declare-fun e!1728334 () Bool)

(declare-fun tp!863331 () Bool)

(assert (=> b!2744099 (= e!1728334 tp!863331)))

(declare-fun b!2744100 () Bool)

(declare-fun tp!863335 () Bool)

(declare-fun tp!863332 () Bool)

(assert (=> b!2744100 (= e!1728334 (and tp!863335 tp!863332))))

(declare-fun b!2744098 () Bool)

(declare-fun tp!863334 () Bool)

(declare-fun tp!863333 () Bool)

(assert (=> b!2744098 (= e!1728334 (and tp!863334 tp!863333))))

(declare-fun b!2744097 () Bool)

(assert (=> b!2744097 (= e!1728334 tp_is_empty!13921)))

(assert (=> b!2743965 (= tp!863257 e!1728334)))

(assert (= (and b!2743965 ((_ is ElementMatch!7987) (regex!4834 (h!36978 rulesArg!249)))) b!2744097))

(assert (= (and b!2743965 ((_ is Concat!13043) (regex!4834 (h!36978 rulesArg!249)))) b!2744098))

(assert (= (and b!2743965 ((_ is Star!7987) (regex!4834 (h!36978 rulesArg!249)))) b!2744099))

(assert (= (and b!2743965 ((_ is Union!7987) (regex!4834 (h!36978 rulesArg!249)))) b!2744100))

(declare-fun e!1728352 () Bool)

(declare-fun b!2744115 () Bool)

(declare-fun tp!863366 () Bool)

(declare-fun tp!863361 () Bool)

(declare-fun setRes!21540 () Bool)

(declare-fun e!1728350 () Bool)

(declare-fun mapDefault!16374 () List!31655)

(assert (=> b!2744115 (= e!1728350 (and tp!863366 (inv!42905 (_2!18325 (_1!18326 (h!36975 mapDefault!16374)))) e!1728352 tp_is_empty!13921 setRes!21540 tp!863361))))

(declare-fun condSetEmpty!21541 () Bool)

(assert (=> b!2744115 (= condSetEmpty!21541 (= (_2!18326 (h!36975 mapDefault!16374)) ((as const (Array Context!4410 Bool)) false)))))

(declare-fun condMapEmpty!16374 () Bool)

(assert (=> mapNonEmpty!16368 (= condMapEmpty!16374 (= mapRest!16367 ((as const (Array (_ BitVec 32) List!31655)) mapDefault!16374)))))

(declare-fun mapRes!16374 () Bool)

(assert (=> mapNonEmpty!16368 (= tp!863246 (and e!1728350 mapRes!16374))))

(declare-fun setIsEmpty!21540 () Bool)

(declare-fun setRes!21541 () Bool)

(assert (=> setIsEmpty!21540 setRes!21541))

(declare-fun mapNonEmpty!16374 () Bool)

(declare-fun tp!863359 () Bool)

(declare-fun e!1728349 () Bool)

(assert (=> mapNonEmpty!16374 (= mapRes!16374 (and tp!863359 e!1728349))))

(declare-fun mapValue!16374 () List!31655)

(declare-fun mapRest!16374 () (Array (_ BitVec 32) List!31655))

(declare-fun mapKey!16374 () (_ BitVec 32))

(assert (=> mapNonEmpty!16374 (= mapRest!16367 (store mapRest!16374 mapKey!16374 mapValue!16374))))

(declare-fun e!1728351 () Bool)

(declare-fun setElem!21541 () Context!4410)

(declare-fun setNonEmpty!21540 () Bool)

(declare-fun tp!863363 () Bool)

(assert (=> setNonEmpty!21540 (= setRes!21540 (and tp!863363 (inv!42905 setElem!21541) e!1728351))))

(declare-fun setRest!21541 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21540 (= (_2!18326 (h!36975 mapDefault!16374)) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21541 true) setRest!21541))))

(declare-fun setIsEmpty!21541 () Bool)

(assert (=> setIsEmpty!21541 setRes!21540))

(declare-fun tp!863367 () Bool)

(declare-fun b!2744116 () Bool)

(declare-fun e!1728348 () Bool)

(declare-fun tp!863358 () Bool)

(assert (=> b!2744116 (= e!1728349 (and tp!863367 (inv!42905 (_2!18325 (_1!18326 (h!36975 mapValue!16374)))) e!1728348 tp_is_empty!13921 setRes!21541 tp!863358))))

(declare-fun condSetEmpty!21540 () Bool)

(assert (=> b!2744116 (= condSetEmpty!21540 (= (_2!18326 (h!36975 mapValue!16374)) ((as const (Array Context!4410 Bool)) false)))))

(declare-fun setNonEmpty!21541 () Bool)

(declare-fun tp!863365 () Bool)

(declare-fun e!1728347 () Bool)

(declare-fun setElem!21540 () Context!4410)

(assert (=> setNonEmpty!21541 (= setRes!21541 (and tp!863365 (inv!42905 setElem!21540) e!1728347))))

(declare-fun setRest!21540 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21541 (= (_2!18326 (h!36975 mapValue!16374)) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21540 true) setRest!21540))))

(declare-fun b!2744117 () Bool)

(declare-fun tp!863368 () Bool)

(assert (=> b!2744117 (= e!1728347 tp!863368)))

(declare-fun b!2744118 () Bool)

(declare-fun tp!863364 () Bool)

(assert (=> b!2744118 (= e!1728348 tp!863364)))

(declare-fun mapIsEmpty!16374 () Bool)

(assert (=> mapIsEmpty!16374 mapRes!16374))

(declare-fun b!2744119 () Bool)

(declare-fun tp!863360 () Bool)

(assert (=> b!2744119 (= e!1728352 tp!863360)))

(declare-fun b!2744120 () Bool)

(declare-fun tp!863362 () Bool)

(assert (=> b!2744120 (= e!1728351 tp!863362)))

(assert (= (and mapNonEmpty!16368 condMapEmpty!16374) mapIsEmpty!16374))

(assert (= (and mapNonEmpty!16368 (not condMapEmpty!16374)) mapNonEmpty!16374))

(assert (= b!2744116 b!2744118))

(assert (= (and b!2744116 condSetEmpty!21540) setIsEmpty!21540))

(assert (= (and b!2744116 (not condSetEmpty!21540)) setNonEmpty!21541))

(assert (= setNonEmpty!21541 b!2744117))

(assert (= (and mapNonEmpty!16374 ((_ is Cons!31555) mapValue!16374)) b!2744116))

(assert (= b!2744115 b!2744119))

(assert (= (and b!2744115 condSetEmpty!21541) setIsEmpty!21541))

(assert (= (and b!2744115 (not condSetEmpty!21541)) setNonEmpty!21540))

(assert (= setNonEmpty!21540 b!2744120))

(assert (= (and mapNonEmpty!16368 ((_ is Cons!31555) mapDefault!16374)) b!2744115))

(declare-fun m!3161411 () Bool)

(assert (=> setNonEmpty!21540 m!3161411))

(declare-fun m!3161413 () Bool)

(assert (=> setNonEmpty!21541 m!3161413))

(declare-fun m!3161415 () Bool)

(assert (=> mapNonEmpty!16374 m!3161415))

(declare-fun m!3161417 () Bool)

(assert (=> b!2744116 m!3161417))

(declare-fun m!3161419 () Bool)

(assert (=> b!2744115 m!3161419))

(declare-fun setIsEmpty!21542 () Bool)

(declare-fun setRes!21542 () Bool)

(assert (=> setIsEmpty!21542 setRes!21542))

(declare-fun b!2744121 () Bool)

(declare-fun e!1728354 () Bool)

(declare-fun tp!863372 () Bool)

(assert (=> b!2744121 (= e!1728354 tp!863372)))

(declare-fun setElem!21542 () Context!4410)

(declare-fun setNonEmpty!21542 () Bool)

(declare-fun tp!863373 () Bool)

(assert (=> setNonEmpty!21542 (= setRes!21542 (and tp!863373 (inv!42905 setElem!21542) e!1728354))))

(declare-fun setRest!21542 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21542 (= (_2!18326 (h!36975 mapValue!16367)) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21542 true) setRest!21542))))

(declare-fun b!2744122 () Bool)

(declare-fun e!1728355 () Bool)

(declare-fun tp!863370 () Bool)

(assert (=> b!2744122 (= e!1728355 tp!863370)))

(declare-fun e!1728353 () Bool)

(assert (=> mapNonEmpty!16368 (= tp!863244 e!1728353)))

(declare-fun tp!863371 () Bool)

(declare-fun tp!863369 () Bool)

(declare-fun b!2744123 () Bool)

(assert (=> b!2744123 (= e!1728353 (and tp!863371 (inv!42905 (_2!18325 (_1!18326 (h!36975 mapValue!16367)))) e!1728355 tp_is_empty!13921 setRes!21542 tp!863369))))

(declare-fun condSetEmpty!21542 () Bool)

(assert (=> b!2744123 (= condSetEmpty!21542 (= (_2!18326 (h!36975 mapValue!16367)) ((as const (Array Context!4410 Bool)) false)))))

(assert (= b!2744123 b!2744122))

(assert (= (and b!2744123 condSetEmpty!21542) setIsEmpty!21542))

(assert (= (and b!2744123 (not condSetEmpty!21542)) setNonEmpty!21542))

(assert (= setNonEmpty!21542 b!2744121))

(assert (= (and mapNonEmpty!16368 ((_ is Cons!31555) mapValue!16367)) b!2744123))

(declare-fun m!3161421 () Bool)

(assert (=> setNonEmpty!21542 m!3161421))

(declare-fun m!3161423 () Bool)

(assert (=> b!2744123 m!3161423))

(declare-fun b!2744132 () Bool)

(declare-fun e!1728360 () Bool)

(declare-fun tp!863381 () Bool)

(declare-fun tp!863382 () Bool)

(assert (=> b!2744132 (= e!1728360 (and (inv!42899 (left!24210 (c!444788 input!1326))) tp!863382 (inv!42899 (right!24540 (c!444788 input!1326))) tp!863381))))

(declare-fun b!2744134 () Bool)

(declare-fun e!1728361 () Bool)

(declare-fun tp!863380 () Bool)

(assert (=> b!2744134 (= e!1728361 tp!863380)))

(declare-fun b!2744133 () Bool)

(declare-fun inv!42906 (IArray!19759) Bool)

(assert (=> b!2744133 (= e!1728360 (and (inv!42906 (xs!12984 (c!444788 input!1326))) e!1728361))))

(assert (=> b!2743980 (= tp!863256 (and (inv!42899 (c!444788 input!1326)) e!1728360))))

(assert (= (and b!2743980 ((_ is Node!9877) (c!444788 input!1326))) b!2744132))

(assert (= b!2744133 b!2744134))

(assert (= (and b!2743980 ((_ is Leaf!15039) (c!444788 input!1326))) b!2744133))

(declare-fun m!3161425 () Bool)

(assert (=> b!2744132 m!3161425))

(declare-fun m!3161427 () Bool)

(assert (=> b!2744132 m!3161427))

(declare-fun m!3161429 () Bool)

(assert (=> b!2744133 m!3161429))

(assert (=> b!2743980 m!3161297))

(declare-fun b!2744135 () Bool)

(declare-fun e!1728364 () Bool)

(declare-fun tp!863383 () Bool)

(assert (=> b!2744135 (= e!1728364 tp!863383)))

(declare-fun e!1728363 () Bool)

(declare-fun setNonEmpty!21543 () Bool)

(declare-fun tp!863386 () Bool)

(declare-fun setElem!21543 () Context!4410)

(declare-fun setRes!21543 () Bool)

(assert (=> setNonEmpty!21543 (= setRes!21543 (and tp!863386 (inv!42905 setElem!21543) e!1728363))))

(declare-fun setRest!21543 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21543 (= (_2!18328 (h!36979 mapDefault!16368)) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21543 true) setRest!21543))))

(declare-fun e!1728362 () Bool)

(declare-fun b!2744136 () Bool)

(declare-fun tp!863384 () Bool)

(assert (=> b!2744136 (= e!1728362 (and (inv!42905 (_1!18327 (_1!18328 (h!36979 mapDefault!16368)))) e!1728364 tp_is_empty!13921 setRes!21543 tp!863384))))

(declare-fun condSetEmpty!21543 () Bool)

(assert (=> b!2744136 (= condSetEmpty!21543 (= (_2!18328 (h!36979 mapDefault!16368)) ((as const (Array Context!4410 Bool)) false)))))

(assert (=> b!2743984 (= tp!863247 e!1728362)))

(declare-fun b!2744137 () Bool)

(declare-fun tp!863385 () Bool)

(assert (=> b!2744137 (= e!1728363 tp!863385)))

(declare-fun setIsEmpty!21543 () Bool)

(assert (=> setIsEmpty!21543 setRes!21543))

(assert (= b!2744136 b!2744135))

(assert (= (and b!2744136 condSetEmpty!21543) setIsEmpty!21543))

(assert (= (and b!2744136 (not condSetEmpty!21543)) setNonEmpty!21543))

(assert (= setNonEmpty!21543 b!2744137))

(assert (= (and b!2743984 ((_ is Cons!31559) mapDefault!16368)) b!2744136))

(declare-fun m!3161431 () Bool)

(assert (=> setNonEmpty!21543 m!3161431))

(declare-fun m!3161433 () Bool)

(assert (=> b!2744136 m!3161433))

(declare-fun b!2744148 () Bool)

(declare-fun b_free!77169 () Bool)

(declare-fun b_next!77873 () Bool)

(assert (=> b!2744148 (= b_free!77169 (not b_next!77873))))

(declare-fun tp!863395 () Bool)

(declare-fun b_and!201889 () Bool)

(assert (=> b!2744148 (= tp!863395 b_and!201889)))

(declare-fun b_free!77171 () Bool)

(declare-fun b_next!77875 () Bool)

(assert (=> b!2744148 (= b_free!77171 (not b_next!77875))))

(declare-fun tp!863398 () Bool)

(declare-fun b_and!201891 () Bool)

(assert (=> b!2744148 (= tp!863398 b_and!201891)))

(declare-fun e!1728376 () Bool)

(assert (=> b!2744148 (= e!1728376 (and tp!863395 tp!863398))))

(declare-fun tp!863396 () Bool)

(declare-fun b!2744147 () Bool)

(declare-fun e!1728375 () Bool)

(assert (=> b!2744147 (= e!1728375 (and tp!863396 (inv!42897 (tag!5338 (h!36978 (t!227746 rulesArg!249)))) (inv!42898 (transformation!4834 (h!36978 (t!227746 rulesArg!249)))) e!1728376))))

(declare-fun b!2744146 () Bool)

(declare-fun e!1728373 () Bool)

(declare-fun tp!863397 () Bool)

(assert (=> b!2744146 (= e!1728373 (and e!1728375 tp!863397))))

(assert (=> b!2743971 (= tp!863249 e!1728373)))

(assert (= b!2744147 b!2744148))

(assert (= b!2744146 b!2744147))

(assert (= (and b!2743971 ((_ is Cons!31558) (t!227746 rulesArg!249))) b!2744146))

(declare-fun m!3161435 () Bool)

(assert (=> b!2744147 m!3161435))

(declare-fun m!3161437 () Bool)

(assert (=> b!2744147 m!3161437))

(declare-fun setIsEmpty!21544 () Bool)

(declare-fun setRes!21544 () Bool)

(assert (=> setIsEmpty!21544 setRes!21544))

(declare-fun b!2744149 () Bool)

(declare-fun e!1728378 () Bool)

(declare-fun tp!863402 () Bool)

(assert (=> b!2744149 (= e!1728378 tp!863402)))

(declare-fun setElem!21544 () Context!4410)

(declare-fun tp!863403 () Bool)

(declare-fun setNonEmpty!21544 () Bool)

(assert (=> setNonEmpty!21544 (= setRes!21544 (and tp!863403 (inv!42905 setElem!21544) e!1728378))))

(declare-fun setRest!21544 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21544 (= (_2!18326 (h!36975 mapDefault!16367)) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21544 true) setRest!21544))))

(declare-fun b!2744150 () Bool)

(declare-fun e!1728379 () Bool)

(declare-fun tp!863400 () Bool)

(assert (=> b!2744150 (= e!1728379 tp!863400)))

(declare-fun e!1728377 () Bool)

(assert (=> b!2743982 (= tp!863261 e!1728377)))

(declare-fun tp!863399 () Bool)

(declare-fun tp!863401 () Bool)

(declare-fun b!2744151 () Bool)

(assert (=> b!2744151 (= e!1728377 (and tp!863401 (inv!42905 (_2!18325 (_1!18326 (h!36975 mapDefault!16367)))) e!1728379 tp_is_empty!13921 setRes!21544 tp!863399))))

(declare-fun condSetEmpty!21544 () Bool)

(assert (=> b!2744151 (= condSetEmpty!21544 (= (_2!18326 (h!36975 mapDefault!16367)) ((as const (Array Context!4410 Bool)) false)))))

(assert (= b!2744151 b!2744150))

(assert (= (and b!2744151 condSetEmpty!21544) setIsEmpty!21544))

(assert (= (and b!2744151 (not condSetEmpty!21544)) setNonEmpty!21544))

(assert (= setNonEmpty!21544 b!2744149))

(assert (= (and b!2743982 ((_ is Cons!31555) mapDefault!16367)) b!2744151))

(declare-fun m!3161439 () Bool)

(assert (=> setNonEmpty!21544 m!3161439))

(declare-fun m!3161441 () Bool)

(assert (=> b!2744151 m!3161441))

(declare-fun b!2744152 () Bool)

(declare-fun e!1728382 () Bool)

(declare-fun tp!863404 () Bool)

(assert (=> b!2744152 (= e!1728382 tp!863404)))

(declare-fun setRes!21545 () Bool)

(declare-fun e!1728381 () Bool)

(declare-fun setElem!21545 () Context!4410)

(declare-fun tp!863407 () Bool)

(declare-fun setNonEmpty!21545 () Bool)

(assert (=> setNonEmpty!21545 (= setRes!21545 (and tp!863407 (inv!42905 setElem!21545) e!1728381))))

(declare-fun setRest!21545 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21545 (= (_2!18328 (h!36979 (zeroValue!3848 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21545 true) setRest!21545))))

(declare-fun e!1728380 () Bool)

(declare-fun b!2744153 () Bool)

(declare-fun tp!863405 () Bool)

(assert (=> b!2744153 (= e!1728380 (and (inv!42905 (_1!18327 (_1!18328 (h!36979 (zeroValue!3848 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633)))))))))) e!1728382 tp_is_empty!13921 setRes!21545 tp!863405))))

(declare-fun condSetEmpty!21545 () Bool)

(assert (=> b!2744153 (= condSetEmpty!21545 (= (_2!18328 (h!36979 (zeroValue!3848 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633)))))))) ((as const (Array Context!4410 Bool)) false)))))

(assert (=> b!2743977 (= tp!863243 e!1728380)))

(declare-fun b!2744154 () Bool)

(declare-fun tp!863406 () Bool)

(assert (=> b!2744154 (= e!1728381 tp!863406)))

(declare-fun setIsEmpty!21545 () Bool)

(assert (=> setIsEmpty!21545 setRes!21545))

(assert (= b!2744153 b!2744152))

(assert (= (and b!2744153 condSetEmpty!21545) setIsEmpty!21545))

(assert (= (and b!2744153 (not condSetEmpty!21545)) setNonEmpty!21545))

(assert (= setNonEmpty!21545 b!2744154))

(assert (= (and b!2743977 ((_ is Cons!31559) (zeroValue!3848 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633)))))))) b!2744153))

(declare-fun m!3161443 () Bool)

(assert (=> setNonEmpty!21545 m!3161443))

(declare-fun m!3161445 () Bool)

(assert (=> b!2744153 m!3161445))

(declare-fun b!2744155 () Bool)

(declare-fun e!1728385 () Bool)

(declare-fun tp!863408 () Bool)

(assert (=> b!2744155 (= e!1728385 tp!863408)))

(declare-fun setNonEmpty!21546 () Bool)

(declare-fun tp!863411 () Bool)

(declare-fun setElem!21546 () Context!4410)

(declare-fun setRes!21546 () Bool)

(declare-fun e!1728384 () Bool)

(assert (=> setNonEmpty!21546 (= setRes!21546 (and tp!863411 (inv!42905 setElem!21546) e!1728384))))

(declare-fun setRest!21546 () (InoxSet Context!4410))

(assert (=> setNonEmpty!21546 (= (_2!18328 (h!36979 (minValue!3848 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4410 Bool)) false) setElem!21546 true) setRest!21546))))

(declare-fun tp!863409 () Bool)

(declare-fun e!1728383 () Bool)

(declare-fun b!2744156 () Bool)

(assert (=> b!2744156 (= e!1728383 (and (inv!42905 (_1!18327 (_1!18328 (h!36979 (minValue!3848 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633)))))))))) e!1728385 tp_is_empty!13921 setRes!21546 tp!863409))))

(declare-fun condSetEmpty!21546 () Bool)

(assert (=> b!2744156 (= condSetEmpty!21546 (= (_2!18328 (h!36979 (minValue!3848 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633)))))))) ((as const (Array Context!4410 Bool)) false)))))

(assert (=> b!2743977 (= tp!863259 e!1728383)))

(declare-fun b!2744157 () Bool)

(declare-fun tp!863410 () Bool)

(assert (=> b!2744157 (= e!1728384 tp!863410)))

(declare-fun setIsEmpty!21546 () Bool)

(assert (=> setIsEmpty!21546 setRes!21546))

(assert (= b!2744156 b!2744155))

(assert (= (and b!2744156 condSetEmpty!21546) setIsEmpty!21546))

(assert (= (and b!2744156 (not condSetEmpty!21546)) setNonEmpty!21546))

(assert (= setNonEmpty!21546 b!2744157))

(assert (= (and b!2743977 ((_ is Cons!31559) (minValue!3848 (v!33199 (underlying!7381 (v!33200 (underlying!7382 (cache!3638 cacheUp!633)))))))) b!2744156))

(declare-fun m!3161447 () Bool)

(assert (=> setNonEmpty!21546 m!3161447))

(declare-fun m!3161449 () Bool)

(assert (=> b!2744156 m!3161449))

(check-sat (not setNonEmpty!21544) (not d!795800) (not b!2744099) (not b!2744156) (not setNonEmpty!21546) (not b!2744058) (not b!2744032) (not b!2744083) (not mapNonEmpty!16371) (not b!2744151) (not b!2744023) (not setNonEmpty!21545) (not b!2744135) b_and!201891 (not d!795824) (not b!2744153) (not b!2744030) (not b!2744001) (not setNonEmpty!21534) b_and!201887 b_and!201885 (not b!2744006) b_and!201883 (not d!795808) (not b!2744039) (not b!2744070) (not b!2744137) (not b!2744136) (not b_next!77865) (not b!2744060) (not d!795794) (not b!2744098) (not b!2744071) (not b!2744116) b_and!201879 (not setNonEmpty!21527) (not setNonEmpty!21542) (not setNonEmpty!21535) (not b!2744085) (not b!2744082) (not b!2744154) (not setNonEmpty!21528) (not b!2744031) (not b!2744155) (not b!2744133) (not b_next!77873) (not b!2744120) (not b!2743980) (not b!2744084) (not b_next!77867) tp_is_empty!13921 (not b!2744117) (not b!2744021) (not d!795798) (not setNonEmpty!21543) (not b!2744086) b_and!201889 (not setNonEmpty!21531) (not b!2744022) (not b!2744152) (not b!2744072) (not b!2743998) (not b!2744041) (not b!2744118) (not b_next!77861) (not d!795810) (not setNonEmpty!21540) (not b!2744132) (not b!2744123) (not b!2743996) b_and!201881 b_and!201877 (not b!2744024) (not mapNonEmpty!16374) (not d!795820) (not b!2744157) (not b_next!77863) (not b!2744122) (not b!2744119) (not b!2744081) (not b!2744007) (not b!2744121) (not b!2744027) (not b!2744059) (not b!2744115) (not b!2744100) (not b!2744147) (not b_next!77871) (not setNonEmpty!21541) (not b!2744134) (not b!2744146) (not b!2744061) (not d!795814) (not b!2744056) (not b_next!77875) (not b!2744057) (not b!2743997) (not d!795792) (not b_next!77869) (not b!2744149) (not b!2744150))
(check-sat b_and!201891 b_and!201887 (not b_next!77865) b_and!201879 (not b_next!77873) (not b_next!77867) b_and!201889 (not b_next!77861) (not b_next!77863) (not b_next!77871) (not b_next!77875) (not b_next!77869) b_and!201885 b_and!201883 b_and!201881 b_and!201877)
