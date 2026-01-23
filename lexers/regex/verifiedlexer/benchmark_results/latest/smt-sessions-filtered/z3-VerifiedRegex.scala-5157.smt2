; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265894 () Bool)

(assert start!265894)

(declare-fun b!2743067 () Bool)

(declare-fun b_free!77053 () Bool)

(declare-fun b_next!77757 () Bool)

(assert (=> b!2743067 (= b_free!77053 (not b_next!77757))))

(declare-fun tp!862488 () Bool)

(declare-fun b_and!201773 () Bool)

(assert (=> b!2743067 (= tp!862488 b_and!201773)))

(declare-fun b!2743066 () Bool)

(declare-fun b_free!77055 () Bool)

(declare-fun b_next!77759 () Bool)

(assert (=> b!2743066 (= b_free!77055 (not b_next!77759))))

(declare-fun tp!862489 () Bool)

(declare-fun b_and!201775 () Bool)

(assert (=> b!2743066 (= tp!862489 b_and!201775)))

(declare-fun b_free!77057 () Bool)

(declare-fun b_next!77761 () Bool)

(assert (=> b!2743066 (= b_free!77057 (not b_next!77761))))

(declare-fun tp!862496 () Bool)

(declare-fun b_and!201777 () Bool)

(assert (=> b!2743066 (= tp!862496 b_and!201777)))

(declare-fun b!2743062 () Bool)

(declare-fun b_free!77059 () Bool)

(declare-fun b_next!77763 () Bool)

(assert (=> b!2743062 (= b_free!77059 (not b_next!77763))))

(declare-fun tp!862492 () Bool)

(declare-fun b_and!201779 () Bool)

(assert (=> b!2743062 (= tp!862492 b_and!201779)))

(declare-fun b!2743065 () Bool)

(declare-fun b_free!77061 () Bool)

(declare-fun b_next!77765 () Bool)

(assert (=> b!2743065 (= b_free!77061 (not b_next!77765))))

(declare-fun tp!862493 () Bool)

(declare-fun b_and!201781 () Bool)

(assert (=> b!2743065 (= tp!862493 b_and!201781)))

(declare-fun b!2743052 () Bool)

(declare-fun b_free!77063 () Bool)

(declare-fun b_next!77767 () Bool)

(assert (=> b!2743052 (= b_free!77063 (not b_next!77767))))

(declare-fun tp!862499 () Bool)

(declare-fun b_and!201783 () Bool)

(assert (=> b!2743052 (= tp!862499 b_and!201783)))

(declare-fun mapIsEmpty!16307 () Bool)

(declare-fun mapRes!16307 () Bool)

(assert (=> mapIsEmpty!16307 mapRes!16307))

(declare-fun b!2743050 () Bool)

(declare-fun e!1727416 () Bool)

(declare-datatypes ((C!16116 0))(
  ( (C!16117 (val!9992 Int)) )
))
(declare-datatypes ((List!31607 0))(
  ( (Nil!31507) (Cons!31507 (h!36927 C!16116) (t!227695 List!31607)) )
))
(declare-datatypes ((IArray!19743 0))(
  ( (IArray!19744 (innerList!9929 List!31607)) )
))
(declare-datatypes ((Conc!9869 0))(
  ( (Node!9869 (left!24194 Conc!9869) (right!24524 Conc!9869) (csize!19968 Int) (cheight!10080 Int)) (Leaf!15027 (xs!12976 IArray!19743) (csize!19969 Int)) (Empty!9869) )
))
(declare-datatypes ((BalanceConc!19352 0))(
  ( (BalanceConc!19353 (c!444762 Conc!9869)) )
))
(declare-fun input!1326 () BalanceConc!19352)

(declare-fun tp!862497 () Bool)

(declare-fun inv!42849 (Conc!9869) Bool)

(assert (=> b!2743050 (= e!1727416 (and (inv!42849 (c!444762 input!1326)) tp!862497))))

(declare-fun b!2743051 () Bool)

(declare-fun res!1151568 () Bool)

(declare-fun e!1727417 () Bool)

(assert (=> b!2743051 (=> (not res!1151568) (not e!1727417))))

(declare-datatypes ((List!31608 0))(
  ( (Nil!31508) (Cons!31508 (h!36928 (_ BitVec 16)) (t!227696 List!31608)) )
))
(declare-datatypes ((TokenValue!5048 0))(
  ( (FloatLiteralValue!10096 (text!35781 List!31608)) (TokenValueExt!5047 (__x!20293 Int)) (Broken!25240 (value!155121 List!31608)) (Object!5147) (End!5048) (Def!5048) (Underscore!5048) (Match!5048) (Else!5048) (Error!5048) (Case!5048) (If!5048) (Extends!5048) (Abstract!5048) (Class!5048) (Val!5048) (DelimiterValue!10096 (del!5108 List!31608)) (KeywordValue!5054 (value!155122 List!31608)) (CommentValue!10096 (value!155123 List!31608)) (WhitespaceValue!10096 (value!155124 List!31608)) (IndentationValue!5048 (value!155125 List!31608)) (String!35141) (Int32!5048) (Broken!25241 (value!155126 List!31608)) (Boolean!5049) (Unit!45484) (OperatorValue!5051 (op!5108 List!31608)) (IdentifierValue!10096 (value!155127 List!31608)) (IdentifierValue!10097 (value!155128 List!31608)) (WhitespaceValue!10097 (value!155129 List!31608)) (True!10096) (False!10096) (Broken!25242 (value!155130 List!31608)) (Broken!25243 (value!155131 List!31608)) (True!10097) (RightBrace!5048) (RightBracket!5048) (Colon!5048) (Null!5048) (Comma!5048) (LeftBracket!5048) (False!10097) (LeftBrace!5048) (ImaginaryLiteralValue!5048 (text!35782 List!31608)) (StringLiteralValue!15144 (value!155132 List!31608)) (EOFValue!5048 (value!155133 List!31608)) (IdentValue!5048 (value!155134 List!31608)) (DelimiterValue!10097 (value!155135 List!31608)) (DedentValue!5048 (value!155136 List!31608)) (NewLineValue!5048 (value!155137 List!31608)) (IntegerValue!15144 (value!155138 (_ BitVec 32)) (text!35783 List!31608)) (IntegerValue!15145 (value!155139 Int) (text!35784 List!31608)) (Times!5048) (Or!5048) (Equal!5048) (Minus!5048) (Broken!25244 (value!155140 List!31608)) (And!5048) (Div!5048) (LessEqual!5048) (Mod!5048) (Concat!13027) (Not!5048) (Plus!5048) (SpaceValue!5048 (value!155141 List!31608)) (IntegerValue!15146 (value!155142 Int) (text!35785 List!31608)) (StringLiteralValue!15145 (text!35786 List!31608)) (FloatLiteralValue!10097 (text!35787 List!31608)) (BytesLiteralValue!5048 (value!155143 List!31608)) (CommentValue!10097 (value!155144 List!31608)) (StringLiteralValue!15146 (value!155145 List!31608)) (ErrorTokenValue!5048 (msg!5109 List!31608)) )
))
(declare-datatypes ((String!35142 0))(
  ( (String!35143 (value!155146 String)) )
))
(declare-datatypes ((TokenValueInjection!9536 0))(
  ( (TokenValueInjection!9537 (toValue!6824 Int) (toChars!6683 Int)) )
))
(declare-datatypes ((Regex!7979 0))(
  ( (ElementMatch!7979 (c!444763 C!16116)) (Concat!13028 (regOne!16470 Regex!7979) (regTwo!16470 Regex!7979)) (EmptyExpr!7979) (Star!7979 (reg!8308 Regex!7979)) (EmptyLang!7979) (Union!7979 (regOne!16471 Regex!7979) (regTwo!16471 Regex!7979)) )
))
(declare-datatypes ((Rule!9452 0))(
  ( (Rule!9453 (regex!4826 Regex!7979) (tag!5330 String!35142) (isSeparator!4826 Bool) (transformation!4826 TokenValueInjection!9536)) )
))
(declare-datatypes ((List!31609 0))(
  ( (Nil!31509) (Cons!31509 (h!36929 Rule!9452) (t!227697 List!31609)) )
))
(declare-fun rulesArg!249 () List!31609)

(declare-fun isEmpty!18014 (List!31609) Bool)

(assert (=> b!2743051 (= res!1151568 (not (isEmpty!18014 rulesArg!249)))))

(declare-fun e!1727411 () Bool)

(declare-fun e!1727419 () Bool)

(assert (=> b!2743052 (= e!1727411 (and e!1727419 tp!862499))))

(declare-fun b!2743053 () Bool)

(declare-fun e!1727426 () Bool)

(declare-fun e!1727430 () Bool)

(declare-datatypes ((List!31610 0))(
  ( (Nil!31510) (Cons!31510 (h!36930 Regex!7979) (t!227698 List!31610)) )
))
(declare-datatypes ((Context!4394 0))(
  ( (Context!4395 (exprs!2697 List!31610)) )
))
(declare-datatypes ((tuple3!4350 0))(
  ( (tuple3!4351 (_1!18288 Regex!7979) (_2!18288 Context!4394) (_3!2645 C!16116)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31286 0))(
  ( (tuple2!31287 (_1!18289 tuple3!4350) (_2!18289 (InoxSet Context!4394))) )
))
(declare-datatypes ((List!31611 0))(
  ( (Nil!31511) (Cons!31511 (h!36931 tuple2!31286) (t!227699 List!31611)) )
))
(declare-datatypes ((array!12726 0))(
  ( (array!12727 (arr!5685 (Array (_ BitVec 32) List!31611)) (size!24332 (_ BitVec 32))) )
))
(declare-datatypes ((array!12728 0))(
  ( (array!12729 (arr!5686 (Array (_ BitVec 32) (_ BitVec 64))) (size!24333 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7146 0))(
  ( (LongMapFixedSize!7147 (defaultEntry!3958 Int) (mask!9299 (_ BitVec 32)) (extraKeys!3822 (_ BitVec 32)) (zeroValue!3832 List!31611) (minValue!3832 List!31611) (_size!7189 (_ BitVec 32)) (_keys!3873 array!12728) (_values!3854 array!12726) (_vacant!3634 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14101 0))(
  ( (Cell!14102 (v!33165 LongMapFixedSize!7146)) )
))
(declare-datatypes ((MutLongMap!3573 0))(
  ( (LongMap!3573 (underlying!7349 Cell!14101)) (MutLongMapExt!3572 (__x!20294 Int)) )
))
(declare-fun lt!971144 () MutLongMap!3573)

(get-info :version)

(assert (=> b!2743053 (= e!1727426 (and e!1727430 ((_ is LongMap!3573) lt!971144)))))

(declare-datatypes ((Cell!14103 0))(
  ( (Cell!14104 (v!33166 MutLongMap!3573)) )
))
(declare-datatypes ((Hashable!3489 0))(
  ( (HashableExt!3488 (__x!20295 Int)) )
))
(declare-datatypes ((MutableMap!3479 0))(
  ( (MutableMapExt!3478 (__x!20296 Int)) (HashMap!3479 (underlying!7350 Cell!14103) (hashF!5521 Hashable!3489) (_size!7190 (_ BitVec 32)) (defaultValue!3650 Int)) )
))
(declare-datatypes ((CacheDown!2302 0))(
  ( (CacheDown!2303 (cache!3622 MutableMap!3479)) )
))
(declare-fun cacheDown!646 () CacheDown!2302)

(assert (=> b!2743053 (= lt!971144 (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))))

(declare-fun b!2743054 () Bool)

(declare-fun res!1151566 () Bool)

(assert (=> b!2743054 (=> (not res!1151566) (not e!1727417))))

(declare-datatypes ((LexerInterface!4421 0))(
  ( (LexerInterfaceExt!4418 (__x!20297 Int)) (Lexer!4419) )
))
(declare-fun thiss!15207 () LexerInterface!4421)

(declare-fun rulesValidInductive!1692 (LexerInterface!4421 List!31609) Bool)

(assert (=> b!2743054 (= res!1151566 (rulesValidInductive!1692 thiss!15207 rulesArg!249))))

(declare-fun b!2743055 () Bool)

(declare-fun res!1151565 () Bool)

(assert (=> b!2743055 (=> (not res!1151565) (not e!1727417))))

(declare-datatypes ((tuple2!31288 0))(
  ( (tuple2!31289 (_1!18290 Context!4394) (_2!18290 C!16116)) )
))
(declare-datatypes ((tuple2!31290 0))(
  ( (tuple2!31291 (_1!18291 tuple2!31288) (_2!18291 (InoxSet Context!4394))) )
))
(declare-datatypes ((List!31612 0))(
  ( (Nil!31512) (Cons!31512 (h!36932 tuple2!31290) (t!227700 List!31612)) )
))
(declare-datatypes ((array!12730 0))(
  ( (array!12731 (arr!5687 (Array (_ BitVec 32) List!31612)) (size!24334 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7148 0))(
  ( (LongMapFixedSize!7149 (defaultEntry!3959 Int) (mask!9300 (_ BitVec 32)) (extraKeys!3823 (_ BitVec 32)) (zeroValue!3833 List!31612) (minValue!3833 List!31612) (_size!7191 (_ BitVec 32)) (_keys!3874 array!12728) (_values!3855 array!12730) (_vacant!3635 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14105 0))(
  ( (Cell!14106 (v!33167 LongMapFixedSize!7148)) )
))
(declare-datatypes ((MutLongMap!3574 0))(
  ( (LongMap!3574 (underlying!7351 Cell!14105)) (MutLongMapExt!3573 (__x!20298 Int)) )
))
(declare-datatypes ((Cell!14107 0))(
  ( (Cell!14108 (v!33168 MutLongMap!3574)) )
))
(declare-datatypes ((Hashable!3490 0))(
  ( (HashableExt!3489 (__x!20299 Int)) )
))
(declare-datatypes ((MutableMap!3480 0))(
  ( (MutableMapExt!3479 (__x!20300 Int)) (HashMap!3480 (underlying!7352 Cell!14107) (hashF!5522 Hashable!3490) (_size!7192 (_ BitVec 32)) (defaultValue!3651 Int)) )
))
(declare-datatypes ((CacheUp!2188 0))(
  ( (CacheUp!2189 (cache!3623 MutableMap!3480)) )
))
(declare-fun cacheUp!633 () CacheUp!2188)

(declare-fun valid!2773 (CacheUp!2188) Bool)

(assert (=> b!2743055 (= res!1151565 (valid!2773 cacheUp!633))))

(declare-fun res!1151567 () Bool)

(assert (=> start!265894 (=> (not res!1151567) (not e!1727417))))

(assert (=> start!265894 (= res!1151567 ((_ is Lexer!4419) thiss!15207))))

(assert (=> start!265894 e!1727417))

(declare-fun e!1727422 () Bool)

(declare-fun inv!42850 (CacheDown!2302) Bool)

(assert (=> start!265894 (and (inv!42850 cacheDown!646) e!1727422)))

(declare-fun inv!42851 (BalanceConc!19352) Bool)

(assert (=> start!265894 (and (inv!42851 input!1326) e!1727416)))

(declare-fun e!1727413 () Bool)

(assert (=> start!265894 e!1727413))

(declare-fun e!1727418 () Bool)

(declare-fun inv!42852 (CacheUp!2188) Bool)

(assert (=> start!265894 (and (inv!42852 cacheUp!633) e!1727418)))

(assert (=> start!265894 true))

(declare-fun b!2743056 () Bool)

(declare-fun e!1727423 () Bool)

(declare-fun tp!862504 () Bool)

(declare-fun mapRes!16308 () Bool)

(assert (=> b!2743056 (= e!1727423 (and tp!862504 mapRes!16308))))

(declare-fun condMapEmpty!16308 () Bool)

(declare-fun mapDefault!16308 () List!31611)

(assert (=> b!2743056 (= condMapEmpty!16308 (= (arr!5685 (_values!3854 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31611)) mapDefault!16308)))))

(declare-fun e!1727415 () Bool)

(declare-fun b!2743057 () Bool)

(declare-fun e!1727425 () Bool)

(declare-fun tp!862494 () Bool)

(declare-fun inv!42847 (String!35142) Bool)

(declare-fun inv!42853 (TokenValueInjection!9536) Bool)

(assert (=> b!2743057 (= e!1727425 (and tp!862494 (inv!42847 (tag!5330 (h!36929 rulesArg!249))) (inv!42853 (transformation!4826 (h!36929 rulesArg!249))) e!1727415))))

(declare-fun b!2743058 () Bool)

(declare-fun e!1727421 () Bool)

(declare-fun e!1727429 () Bool)

(assert (=> b!2743058 (= e!1727421 e!1727429)))

(declare-fun mapIsEmpty!16308 () Bool)

(assert (=> mapIsEmpty!16308 mapRes!16308))

(declare-fun b!2743059 () Bool)

(declare-fun tp!862502 () Bool)

(assert (=> b!2743059 (= e!1727413 (and e!1727425 tp!862502))))

(declare-fun b!2743060 () Bool)

(declare-fun lt!971147 () MutLongMap!3574)

(assert (=> b!2743060 (= e!1727419 (and e!1727421 ((_ is LongMap!3574) lt!971147)))))

(assert (=> b!2743060 (= lt!971147 (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))))

(declare-fun b!2743061 () Bool)

(assert (=> b!2743061 (= e!1727418 e!1727411)))

(declare-fun e!1727431 () Bool)

(assert (=> b!2743062 (= e!1727431 (and e!1727426 tp!862492))))

(declare-fun mapNonEmpty!16307 () Bool)

(declare-fun tp!862495 () Bool)

(declare-fun tp!862491 () Bool)

(assert (=> mapNonEmpty!16307 (= mapRes!16307 (and tp!862495 tp!862491))))

(declare-fun mapRest!16307 () (Array (_ BitVec 32) List!31612))

(declare-fun mapKey!16308 () (_ BitVec 32))

(declare-fun mapValue!16307 () List!31612)

(assert (=> mapNonEmpty!16307 (= (arr!5687 (_values!3855 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))))) (store mapRest!16307 mapKey!16308 mapValue!16307))))

(declare-fun b!2743063 () Bool)

(declare-fun e!1727428 () Bool)

(assert (=> b!2743063 (= e!1727430 e!1727428)))

(declare-fun b!2743064 () Bool)

(declare-fun e!1727433 () Bool)

(assert (=> b!2743064 (= e!1727429 e!1727433)))

(declare-fun tp!862487 () Bool)

(declare-fun e!1727420 () Bool)

(declare-fun tp!862500 () Bool)

(declare-fun array_inv!4060 (array!12728) Bool)

(declare-fun array_inv!4061 (array!12730) Bool)

(assert (=> b!2743065 (= e!1727433 (and tp!862493 tp!862500 tp!862487 (array_inv!4060 (_keys!3874 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))))) (array_inv!4061 (_values!3855 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))))) e!1727420))))

(assert (=> b!2743066 (= e!1727415 (and tp!862489 tp!862496))))

(declare-fun tp!862505 () Bool)

(declare-fun tp!862503 () Bool)

(declare-fun e!1727432 () Bool)

(declare-fun array_inv!4062 (array!12726) Bool)

(assert (=> b!2743067 (= e!1727432 (and tp!862488 tp!862505 tp!862503 (array_inv!4060 (_keys!3873 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))))) (array_inv!4062 (_values!3854 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))))) e!1727423))))

(declare-fun b!2743068 () Bool)

(assert (=> b!2743068 (= e!1727428 e!1727432)))

(declare-fun b!2743069 () Bool)

(declare-fun e!1727414 () Bool)

(declare-fun ruleValid!1580 (LexerInterface!4421 Rule!9452) Bool)

(assert (=> b!2743069 (= e!1727414 (ruleValid!1580 thiss!15207 (h!36929 rulesArg!249)))))

(declare-fun b!2743070 () Bool)

(assert (=> b!2743070 (= e!1727422 e!1727431)))

(declare-fun b!2743071 () Bool)

(declare-fun res!1151564 () Bool)

(assert (=> b!2743071 (=> (not res!1151564) (not e!1727417))))

(declare-fun valid!2774 (CacheDown!2302) Bool)

(assert (=> b!2743071 (= res!1151564 (valid!2774 cacheDown!646))))

(declare-fun b!2743072 () Bool)

(declare-fun tp!862490 () Bool)

(assert (=> b!2743072 (= e!1727420 (and tp!862490 mapRes!16307))))

(declare-fun condMapEmpty!16307 () Bool)

(declare-fun mapDefault!16307 () List!31612)

(assert (=> b!2743072 (= condMapEmpty!16307 (= (arr!5687 (_values!3855 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31612)) mapDefault!16307)))))

(declare-fun b!2743073 () Bool)

(assert (=> b!2743073 (= e!1727417 (not e!1727414))))

(declare-fun res!1151569 () Bool)

(assert (=> b!2743073 (=> res!1151569 e!1727414)))

(assert (=> b!2743073 (= res!1151569 (or (and ((_ is Cons!31509) rulesArg!249) ((_ is Nil!31509) (t!227697 rulesArg!249))) (not ((_ is Cons!31509) rulesArg!249))))))

(declare-fun lt!971146 () List!31607)

(declare-fun isPrefix!2505 (List!31607 List!31607) Bool)

(assert (=> b!2743073 (isPrefix!2505 lt!971146 lt!971146)))

(declare-datatypes ((Unit!45485 0))(
  ( (Unit!45486) )
))
(declare-fun lt!971145 () Unit!45485)

(declare-fun lemmaIsPrefixRefl!1631 (List!31607 List!31607) Unit!45485)

(assert (=> b!2743073 (= lt!971145 (lemmaIsPrefixRefl!1631 lt!971146 lt!971146))))

(declare-fun list!11977 (BalanceConc!19352) List!31607)

(assert (=> b!2743073 (= lt!971146 (list!11977 input!1326))))

(declare-fun mapNonEmpty!16308 () Bool)

(declare-fun tp!862498 () Bool)

(declare-fun tp!862501 () Bool)

(assert (=> mapNonEmpty!16308 (= mapRes!16308 (and tp!862498 tp!862501))))

(declare-fun mapRest!16308 () (Array (_ BitVec 32) List!31611))

(declare-fun mapKey!16307 () (_ BitVec 32))

(declare-fun mapValue!16308 () List!31611)

(assert (=> mapNonEmpty!16308 (= (arr!5685 (_values!3854 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))))) (store mapRest!16308 mapKey!16307 mapValue!16308))))

(assert (= (and start!265894 res!1151567) b!2743054))

(assert (= (and b!2743054 res!1151566) b!2743051))

(assert (= (and b!2743051 res!1151568) b!2743055))

(assert (= (and b!2743055 res!1151565) b!2743071))

(assert (= (and b!2743071 res!1151564) b!2743073))

(assert (= (and b!2743073 (not res!1151569)) b!2743069))

(assert (= (and b!2743056 condMapEmpty!16308) mapIsEmpty!16308))

(assert (= (and b!2743056 (not condMapEmpty!16308)) mapNonEmpty!16308))

(assert (= b!2743067 b!2743056))

(assert (= b!2743068 b!2743067))

(assert (= b!2743063 b!2743068))

(assert (= (and b!2743053 ((_ is LongMap!3573) (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))) b!2743063))

(assert (= b!2743062 b!2743053))

(assert (= (and b!2743070 ((_ is HashMap!3479) (cache!3622 cacheDown!646))) b!2743062))

(assert (= start!265894 b!2743070))

(assert (= start!265894 b!2743050))

(assert (= b!2743057 b!2743066))

(assert (= b!2743059 b!2743057))

(assert (= (and start!265894 ((_ is Cons!31509) rulesArg!249)) b!2743059))

(assert (= (and b!2743072 condMapEmpty!16307) mapIsEmpty!16307))

(assert (= (and b!2743072 (not condMapEmpty!16307)) mapNonEmpty!16307))

(assert (= b!2743065 b!2743072))

(assert (= b!2743064 b!2743065))

(assert (= b!2743058 b!2743064))

(assert (= (and b!2743060 ((_ is LongMap!3574) (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))) b!2743058))

(assert (= b!2743052 b!2743060))

(assert (= (and b!2743061 ((_ is HashMap!3480) (cache!3623 cacheUp!633))) b!2743052))

(assert (= start!265894 b!2743061))

(declare-fun m!3160727 () Bool)

(assert (=> b!2743065 m!3160727))

(declare-fun m!3160729 () Bool)

(assert (=> b!2743065 m!3160729))

(declare-fun m!3160731 () Bool)

(assert (=> mapNonEmpty!16307 m!3160731))

(declare-fun m!3160733 () Bool)

(assert (=> start!265894 m!3160733))

(declare-fun m!3160735 () Bool)

(assert (=> start!265894 m!3160735))

(declare-fun m!3160737 () Bool)

(assert (=> start!265894 m!3160737))

(declare-fun m!3160739 () Bool)

(assert (=> b!2743057 m!3160739))

(declare-fun m!3160741 () Bool)

(assert (=> b!2743057 m!3160741))

(declare-fun m!3160743 () Bool)

(assert (=> b!2743055 m!3160743))

(declare-fun m!3160745 () Bool)

(assert (=> b!2743050 m!3160745))

(declare-fun m!3160747 () Bool)

(assert (=> b!2743051 m!3160747))

(declare-fun m!3160749 () Bool)

(assert (=> mapNonEmpty!16308 m!3160749))

(declare-fun m!3160751 () Bool)

(assert (=> b!2743069 m!3160751))

(declare-fun m!3160753 () Bool)

(assert (=> b!2743073 m!3160753))

(declare-fun m!3160755 () Bool)

(assert (=> b!2743073 m!3160755))

(declare-fun m!3160757 () Bool)

(assert (=> b!2743073 m!3160757))

(declare-fun m!3160759 () Bool)

(assert (=> b!2743054 m!3160759))

(declare-fun m!3160761 () Bool)

(assert (=> b!2743071 m!3160761))

(declare-fun m!3160763 () Bool)

(assert (=> b!2743067 m!3160763))

(declare-fun m!3160765 () Bool)

(assert (=> b!2743067 m!3160765))

(check-sat (not b!2743050) b_and!201777 (not b!2743055) b_and!201783 b_and!201773 (not b!2743059) (not b!2743073) (not b!2743069) (not b_next!77765) (not start!265894) b_and!201781 (not b!2743072) (not b!2743071) (not b!2743054) (not b!2743051) (not b_next!77759) b_and!201779 (not mapNonEmpty!16307) (not b!2743065) (not b_next!77761) (not b!2743057) (not b!2743056) b_and!201775 (not b_next!77763) (not mapNonEmpty!16308) (not b!2743067) (not b_next!77757) (not b_next!77767))
(check-sat b_and!201777 b_and!201781 b_and!201783 b_and!201773 (not b_next!77761) b_and!201775 (not b_next!77763) (not b_next!77765) (not b_next!77759) b_and!201779 (not b_next!77757) (not b_next!77767))
(get-model)

(declare-fun d!795708 () Bool)

(declare-fun e!1727440 () Bool)

(assert (=> d!795708 e!1727440))

(declare-fun res!1151584 () Bool)

(assert (=> d!795708 (=> res!1151584 e!1727440)))

(declare-fun lt!971150 () Bool)

(assert (=> d!795708 (= res!1151584 (not lt!971150))))

(declare-fun e!1727441 () Bool)

(assert (=> d!795708 (= lt!971150 e!1727441)))

(declare-fun res!1151583 () Bool)

(assert (=> d!795708 (=> res!1151583 e!1727441)))

(assert (=> d!795708 (= res!1151583 ((_ is Nil!31507) lt!971146))))

(assert (=> d!795708 (= (isPrefix!2505 lt!971146 lt!971146) lt!971150)))

(declare-fun b!2743082 () Bool)

(declare-fun e!1727442 () Bool)

(assert (=> b!2743082 (= e!1727441 e!1727442)))

(declare-fun res!1151585 () Bool)

(assert (=> b!2743082 (=> (not res!1151585) (not e!1727442))))

(assert (=> b!2743082 (= res!1151585 (not ((_ is Nil!31507) lt!971146)))))

(declare-fun b!2743085 () Bool)

(declare-fun size!24335 (List!31607) Int)

(assert (=> b!2743085 (= e!1727440 (>= (size!24335 lt!971146) (size!24335 lt!971146)))))

(declare-fun b!2743084 () Bool)

(declare-fun tail!4346 (List!31607) List!31607)

(assert (=> b!2743084 (= e!1727442 (isPrefix!2505 (tail!4346 lt!971146) (tail!4346 lt!971146)))))

(declare-fun b!2743083 () Bool)

(declare-fun res!1151582 () Bool)

(assert (=> b!2743083 (=> (not res!1151582) (not e!1727442))))

(declare-fun head!6108 (List!31607) C!16116)

(assert (=> b!2743083 (= res!1151582 (= (head!6108 lt!971146) (head!6108 lt!971146)))))

(assert (= (and d!795708 (not res!1151583)) b!2743082))

(assert (= (and b!2743082 res!1151585) b!2743083))

(assert (= (and b!2743083 res!1151582) b!2743084))

(assert (= (and d!795708 (not res!1151584)) b!2743085))

(declare-fun m!3160767 () Bool)

(assert (=> b!2743085 m!3160767))

(assert (=> b!2743085 m!3160767))

(declare-fun m!3160769 () Bool)

(assert (=> b!2743084 m!3160769))

(assert (=> b!2743084 m!3160769))

(assert (=> b!2743084 m!3160769))

(assert (=> b!2743084 m!3160769))

(declare-fun m!3160771 () Bool)

(assert (=> b!2743084 m!3160771))

(declare-fun m!3160773 () Bool)

(assert (=> b!2743083 m!3160773))

(assert (=> b!2743083 m!3160773))

(assert (=> b!2743073 d!795708))

(declare-fun d!795710 () Bool)

(assert (=> d!795710 (isPrefix!2505 lt!971146 lt!971146)))

(declare-fun lt!971153 () Unit!45485)

(declare-fun choose!16061 (List!31607 List!31607) Unit!45485)

(assert (=> d!795710 (= lt!971153 (choose!16061 lt!971146 lt!971146))))

(assert (=> d!795710 (= (lemmaIsPrefixRefl!1631 lt!971146 lt!971146) lt!971153)))

(declare-fun bs!490213 () Bool)

(assert (= bs!490213 d!795710))

(assert (=> bs!490213 m!3160753))

(declare-fun m!3160775 () Bool)

(assert (=> bs!490213 m!3160775))

(assert (=> b!2743073 d!795710))

(declare-fun d!795712 () Bool)

(declare-fun list!11978 (Conc!9869) List!31607)

(assert (=> d!795712 (= (list!11977 input!1326) (list!11978 (c!444762 input!1326)))))

(declare-fun bs!490214 () Bool)

(assert (= bs!490214 d!795712))

(declare-fun m!3160777 () Bool)

(assert (=> bs!490214 m!3160777))

(assert (=> b!2743073 d!795712))

(declare-fun d!795714 () Bool)

(assert (=> d!795714 true))

(declare-fun lt!971156 () Bool)

(declare-fun lambda!100833 () Int)

(declare-fun forall!6573 (List!31609 Int) Bool)

(assert (=> d!795714 (= lt!971156 (forall!6573 rulesArg!249 lambda!100833))))

(declare-fun e!1727448 () Bool)

(assert (=> d!795714 (= lt!971156 e!1727448)))

(declare-fun res!1151590 () Bool)

(assert (=> d!795714 (=> res!1151590 e!1727448)))

(assert (=> d!795714 (= res!1151590 (not ((_ is Cons!31509) rulesArg!249)))))

(assert (=> d!795714 (= (rulesValidInductive!1692 thiss!15207 rulesArg!249) lt!971156)))

(declare-fun b!2743090 () Bool)

(declare-fun e!1727447 () Bool)

(assert (=> b!2743090 (= e!1727448 e!1727447)))

(declare-fun res!1151591 () Bool)

(assert (=> b!2743090 (=> (not res!1151591) (not e!1727447))))

(assert (=> b!2743090 (= res!1151591 (ruleValid!1580 thiss!15207 (h!36929 rulesArg!249)))))

(declare-fun b!2743091 () Bool)

(assert (=> b!2743091 (= e!1727447 (rulesValidInductive!1692 thiss!15207 (t!227697 rulesArg!249)))))

(assert (= (and d!795714 (not res!1151590)) b!2743090))

(assert (= (and b!2743090 res!1151591) b!2743091))

(declare-fun m!3160779 () Bool)

(assert (=> d!795714 m!3160779))

(assert (=> b!2743090 m!3160751))

(declare-fun m!3160781 () Bool)

(assert (=> b!2743091 m!3160781))

(assert (=> b!2743054 d!795714))

(declare-fun d!795716 () Bool)

(assert (=> d!795716 (= (array_inv!4060 (_keys!3873 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))))) (bvsge (size!24333 (_keys!3873 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743067 d!795716))

(declare-fun d!795718 () Bool)

(assert (=> d!795718 (= (array_inv!4062 (_values!3854 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))))) (bvsge (size!24332 (_values!3854 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743067 d!795718))

(declare-fun d!795720 () Bool)

(declare-fun validCacheMapUp!331 (MutableMap!3480) Bool)

(assert (=> d!795720 (= (valid!2773 cacheUp!633) (validCacheMapUp!331 (cache!3623 cacheUp!633)))))

(declare-fun bs!490215 () Bool)

(assert (= bs!490215 d!795720))

(declare-fun m!3160783 () Bool)

(assert (=> bs!490215 m!3160783))

(assert (=> b!2743055 d!795720))

(declare-fun d!795722 () Bool)

(declare-fun res!1151596 () Bool)

(declare-fun e!1727451 () Bool)

(assert (=> d!795722 (=> (not res!1151596) (not e!1727451))))

(declare-fun validRegex!3316 (Regex!7979) Bool)

(assert (=> d!795722 (= res!1151596 (validRegex!3316 (regex!4826 (h!36929 rulesArg!249))))))

(assert (=> d!795722 (= (ruleValid!1580 thiss!15207 (h!36929 rulesArg!249)) e!1727451)))

(declare-fun b!2743098 () Bool)

(declare-fun res!1151597 () Bool)

(assert (=> b!2743098 (=> (not res!1151597) (not e!1727451))))

(declare-fun nullable!2607 (Regex!7979) Bool)

(assert (=> b!2743098 (= res!1151597 (not (nullable!2607 (regex!4826 (h!36929 rulesArg!249)))))))

(declare-fun b!2743099 () Bool)

(assert (=> b!2743099 (= e!1727451 (not (= (tag!5330 (h!36929 rulesArg!249)) (String!35143 ""))))))

(assert (= (and d!795722 res!1151596) b!2743098))

(assert (= (and b!2743098 res!1151597) b!2743099))

(declare-fun m!3160785 () Bool)

(assert (=> d!795722 m!3160785))

(declare-fun m!3160787 () Bool)

(assert (=> b!2743098 m!3160787))

(assert (=> b!2743069 d!795722))

(declare-fun d!795724 () Bool)

(declare-fun c!444766 () Bool)

(assert (=> d!795724 (= c!444766 ((_ is Node!9869) (c!444762 input!1326)))))

(declare-fun e!1727456 () Bool)

(assert (=> d!795724 (= (inv!42849 (c!444762 input!1326)) e!1727456)))

(declare-fun b!2743106 () Bool)

(declare-fun inv!42854 (Conc!9869) Bool)

(assert (=> b!2743106 (= e!1727456 (inv!42854 (c!444762 input!1326)))))

(declare-fun b!2743107 () Bool)

(declare-fun e!1727457 () Bool)

(assert (=> b!2743107 (= e!1727456 e!1727457)))

(declare-fun res!1151600 () Bool)

(assert (=> b!2743107 (= res!1151600 (not ((_ is Leaf!15027) (c!444762 input!1326))))))

(assert (=> b!2743107 (=> res!1151600 e!1727457)))

(declare-fun b!2743108 () Bool)

(declare-fun inv!42855 (Conc!9869) Bool)

(assert (=> b!2743108 (= e!1727457 (inv!42855 (c!444762 input!1326)))))

(assert (= (and d!795724 c!444766) b!2743106))

(assert (= (and d!795724 (not c!444766)) b!2743107))

(assert (= (and b!2743107 (not res!1151600)) b!2743108))

(declare-fun m!3160789 () Bool)

(assert (=> b!2743106 m!3160789))

(declare-fun m!3160791 () Bool)

(assert (=> b!2743108 m!3160791))

(assert (=> b!2743050 d!795724))

(declare-fun d!795726 () Bool)

(assert (=> d!795726 (= (isEmpty!18014 rulesArg!249) ((_ is Nil!31509) rulesArg!249))))

(assert (=> b!2743051 d!795726))

(declare-fun d!795728 () Bool)

(assert (=> d!795728 (= (array_inv!4060 (_keys!3874 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))))) (bvsge (size!24333 (_keys!3874 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743065 d!795728))

(declare-fun d!795730 () Bool)

(assert (=> d!795730 (= (array_inv!4061 (_values!3855 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))))) (bvsge (size!24334 (_values!3855 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2743065 d!795730))

(declare-fun d!795732 () Bool)

(declare-fun res!1151603 () Bool)

(declare-fun e!1727460 () Bool)

(assert (=> d!795732 (=> (not res!1151603) (not e!1727460))))

(assert (=> d!795732 (= res!1151603 ((_ is HashMap!3479) (cache!3622 cacheDown!646)))))

(assert (=> d!795732 (= (inv!42850 cacheDown!646) e!1727460)))

(declare-fun b!2743111 () Bool)

(declare-fun validCacheMapDown!362 (MutableMap!3479) Bool)

(assert (=> b!2743111 (= e!1727460 (validCacheMapDown!362 (cache!3622 cacheDown!646)))))

(assert (= (and d!795732 res!1151603) b!2743111))

(declare-fun m!3160793 () Bool)

(assert (=> b!2743111 m!3160793))

(assert (=> start!265894 d!795732))

(declare-fun d!795734 () Bool)

(declare-fun isBalanced!3006 (Conc!9869) Bool)

(assert (=> d!795734 (= (inv!42851 input!1326) (isBalanced!3006 (c!444762 input!1326)))))

(declare-fun bs!490216 () Bool)

(assert (= bs!490216 d!795734))

(declare-fun m!3160795 () Bool)

(assert (=> bs!490216 m!3160795))

(assert (=> start!265894 d!795734))

(declare-fun d!795736 () Bool)

(declare-fun res!1151606 () Bool)

(declare-fun e!1727463 () Bool)

(assert (=> d!795736 (=> (not res!1151606) (not e!1727463))))

(assert (=> d!795736 (= res!1151606 ((_ is HashMap!3480) (cache!3623 cacheUp!633)))))

(assert (=> d!795736 (= (inv!42852 cacheUp!633) e!1727463)))

(declare-fun b!2743114 () Bool)

(assert (=> b!2743114 (= e!1727463 (validCacheMapUp!331 (cache!3623 cacheUp!633)))))

(assert (= (and d!795736 res!1151606) b!2743114))

(assert (=> b!2743114 m!3160783))

(assert (=> start!265894 d!795736))

(declare-fun d!795738 () Bool)

(assert (=> d!795738 (= (inv!42847 (tag!5330 (h!36929 rulesArg!249))) (= (mod (str.len (value!155146 (tag!5330 (h!36929 rulesArg!249)))) 2) 0))))

(assert (=> b!2743057 d!795738))

(declare-fun d!795740 () Bool)

(declare-fun res!1151609 () Bool)

(declare-fun e!1727466 () Bool)

(assert (=> d!795740 (=> (not res!1151609) (not e!1727466))))

(declare-fun semiInverseModEq!1993 (Int Int) Bool)

(assert (=> d!795740 (= res!1151609 (semiInverseModEq!1993 (toChars!6683 (transformation!4826 (h!36929 rulesArg!249))) (toValue!6824 (transformation!4826 (h!36929 rulesArg!249)))))))

(assert (=> d!795740 (= (inv!42853 (transformation!4826 (h!36929 rulesArg!249))) e!1727466)))

(declare-fun b!2743117 () Bool)

(declare-fun equivClasses!1894 (Int Int) Bool)

(assert (=> b!2743117 (= e!1727466 (equivClasses!1894 (toChars!6683 (transformation!4826 (h!36929 rulesArg!249))) (toValue!6824 (transformation!4826 (h!36929 rulesArg!249)))))))

(assert (= (and d!795740 res!1151609) b!2743117))

(declare-fun m!3160797 () Bool)

(assert (=> d!795740 m!3160797))

(declare-fun m!3160799 () Bool)

(assert (=> b!2743117 m!3160799))

(assert (=> b!2743057 d!795740))

(declare-fun d!795742 () Bool)

(assert (=> d!795742 (= (valid!2774 cacheDown!646) (validCacheMapDown!362 (cache!3622 cacheDown!646)))))

(declare-fun bs!490217 () Bool)

(assert (= bs!490217 d!795742))

(assert (=> bs!490217 m!3160793))

(assert (=> b!2743071 d!795742))

(declare-fun setNonEmpty!21477 () Bool)

(declare-fun setElem!21477 () Context!4394)

(declare-fun e!1727475 () Bool)

(declare-fun tp!862519 () Bool)

(declare-fun setRes!21477 () Bool)

(declare-fun inv!42856 (Context!4394) Bool)

(assert (=> setNonEmpty!21477 (= setRes!21477 (and tp!862519 (inv!42856 setElem!21477) e!1727475))))

(declare-fun setRest!21477 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21477 (= (_2!18289 (h!36931 (zeroValue!3832 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21477 true) setRest!21477))))

(declare-fun b!2743126 () Bool)

(declare-fun tp!862518 () Bool)

(assert (=> b!2743126 (= e!1727475 tp!862518)))

(declare-fun b!2743127 () Bool)

(declare-fun e!1727473 () Bool)

(declare-fun tp!862520 () Bool)

(assert (=> b!2743127 (= e!1727473 tp!862520)))

(declare-fun e!1727474 () Bool)

(assert (=> b!2743067 (= tp!862505 e!1727474)))

(declare-fun b!2743128 () Bool)

(declare-fun tp_is_empty!13917 () Bool)

(declare-fun tp!862517 () Bool)

(declare-fun tp!862516 () Bool)

(assert (=> b!2743128 (= e!1727474 (and tp!862517 (inv!42856 (_2!18288 (_1!18289 (h!36931 (zeroValue!3832 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646)))))))))) e!1727473 tp_is_empty!13917 setRes!21477 tp!862516))))

(declare-fun condSetEmpty!21477 () Bool)

(assert (=> b!2743128 (= condSetEmpty!21477 (= (_2!18289 (h!36931 (zeroValue!3832 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646)))))))) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun setIsEmpty!21477 () Bool)

(assert (=> setIsEmpty!21477 setRes!21477))

(assert (= b!2743128 b!2743127))

(assert (= (and b!2743128 condSetEmpty!21477) setIsEmpty!21477))

(assert (= (and b!2743128 (not condSetEmpty!21477)) setNonEmpty!21477))

(assert (= setNonEmpty!21477 b!2743126))

(assert (= (and b!2743067 ((_ is Cons!31511) (zeroValue!3832 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646)))))))) b!2743128))

(declare-fun m!3160801 () Bool)

(assert (=> setNonEmpty!21477 m!3160801))

(declare-fun m!3160803 () Bool)

(assert (=> b!2743128 m!3160803))

(declare-fun e!1727478 () Bool)

(declare-fun setElem!21478 () Context!4394)

(declare-fun setNonEmpty!21478 () Bool)

(declare-fun setRes!21478 () Bool)

(declare-fun tp!862524 () Bool)

(assert (=> setNonEmpty!21478 (= setRes!21478 (and tp!862524 (inv!42856 setElem!21478) e!1727478))))

(declare-fun setRest!21478 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21478 (= (_2!18289 (h!36931 (minValue!3832 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21478 true) setRest!21478))))

(declare-fun b!2743129 () Bool)

(declare-fun tp!862523 () Bool)

(assert (=> b!2743129 (= e!1727478 tp!862523)))

(declare-fun b!2743130 () Bool)

(declare-fun e!1727476 () Bool)

(declare-fun tp!862525 () Bool)

(assert (=> b!2743130 (= e!1727476 tp!862525)))

(declare-fun e!1727477 () Bool)

(assert (=> b!2743067 (= tp!862503 e!1727477)))

(declare-fun tp!862522 () Bool)

(declare-fun tp!862521 () Bool)

(declare-fun b!2743131 () Bool)

(assert (=> b!2743131 (= e!1727477 (and tp!862522 (inv!42856 (_2!18288 (_1!18289 (h!36931 (minValue!3832 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646)))))))))) e!1727476 tp_is_empty!13917 setRes!21478 tp!862521))))

(declare-fun condSetEmpty!21478 () Bool)

(assert (=> b!2743131 (= condSetEmpty!21478 (= (_2!18289 (h!36931 (minValue!3832 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646)))))))) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun setIsEmpty!21478 () Bool)

(assert (=> setIsEmpty!21478 setRes!21478))

(assert (= b!2743131 b!2743130))

(assert (= (and b!2743131 condSetEmpty!21478) setIsEmpty!21478))

(assert (= (and b!2743131 (not condSetEmpty!21478)) setNonEmpty!21478))

(assert (= setNonEmpty!21478 b!2743129))

(assert (= (and b!2743067 ((_ is Cons!31511) (minValue!3832 (v!33165 (underlying!7349 (v!33166 (underlying!7350 (cache!3622 cacheDown!646)))))))) b!2743131))

(declare-fun m!3160805 () Bool)

(assert (=> setNonEmpty!21478 m!3160805))

(declare-fun m!3160807 () Bool)

(assert (=> b!2743131 m!3160807))

(declare-fun mapIsEmpty!16311 () Bool)

(declare-fun mapRes!16311 () Bool)

(assert (=> mapIsEmpty!16311 mapRes!16311))

(declare-fun e!1727495 () Bool)

(declare-fun e!1727496 () Bool)

(declare-fun b!2743146 () Bool)

(declare-fun setRes!21484 () Bool)

(declare-fun tp!862552 () Bool)

(declare-fun mapDefault!16311 () List!31612)

(assert (=> b!2743146 (= e!1727496 (and (inv!42856 (_1!18290 (_1!18291 (h!36932 mapDefault!16311)))) e!1727495 tp_is_empty!13917 setRes!21484 tp!862552))))

(declare-fun condSetEmpty!21484 () Bool)

(assert (=> b!2743146 (= condSetEmpty!21484 (= (_2!18291 (h!36932 mapDefault!16311)) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun b!2743147 () Bool)

(declare-fun tp!862549 () Bool)

(assert (=> b!2743147 (= e!1727495 tp!862549)))

(declare-fun setIsEmpty!21483 () Bool)

(declare-fun setRes!21483 () Bool)

(assert (=> setIsEmpty!21483 setRes!21483))

(declare-fun b!2743148 () Bool)

(declare-fun e!1727493 () Bool)

(declare-fun tp!862551 () Bool)

(assert (=> b!2743148 (= e!1727493 tp!862551)))

(declare-fun b!2743149 () Bool)

(declare-fun e!1727494 () Bool)

(declare-fun tp!862547 () Bool)

(assert (=> b!2743149 (= e!1727494 tp!862547)))

(declare-fun condMapEmpty!16311 () Bool)

(assert (=> mapNonEmpty!16307 (= condMapEmpty!16311 (= mapRest!16307 ((as const (Array (_ BitVec 32) List!31612)) mapDefault!16311)))))

(assert (=> mapNonEmpty!16307 (= tp!862495 (and e!1727496 mapRes!16311))))

(declare-fun setElem!21484 () Context!4394)

(declare-fun tp!862548 () Bool)

(declare-fun setNonEmpty!21483 () Bool)

(declare-fun e!1727491 () Bool)

(assert (=> setNonEmpty!21483 (= setRes!21483 (and tp!862548 (inv!42856 setElem!21484) e!1727491))))

(declare-fun mapValue!16311 () List!31612)

(declare-fun setRest!21484 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21483 (= (_2!18291 (h!36932 mapValue!16311)) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21484 true) setRest!21484))))

(declare-fun setNonEmpty!21484 () Bool)

(declare-fun setElem!21483 () Context!4394)

(declare-fun tp!862544 () Bool)

(assert (=> setNonEmpty!21484 (= setRes!21484 (and tp!862544 (inv!42856 setElem!21483) e!1727494))))

(declare-fun setRest!21483 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21484 (= (_2!18291 (h!36932 mapDefault!16311)) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21483 true) setRest!21483))))

(declare-fun b!2743150 () Bool)

(declare-fun tp!862550 () Bool)

(assert (=> b!2743150 (= e!1727491 tp!862550)))

(declare-fun setIsEmpty!21484 () Bool)

(assert (=> setIsEmpty!21484 setRes!21484))

(declare-fun mapNonEmpty!16311 () Bool)

(declare-fun tp!862546 () Bool)

(declare-fun e!1727492 () Bool)

(assert (=> mapNonEmpty!16311 (= mapRes!16311 (and tp!862546 e!1727492))))

(declare-fun mapKey!16311 () (_ BitVec 32))

(declare-fun mapRest!16311 () (Array (_ BitVec 32) List!31612))

(assert (=> mapNonEmpty!16311 (= mapRest!16307 (store mapRest!16311 mapKey!16311 mapValue!16311))))

(declare-fun tp!862545 () Bool)

(declare-fun b!2743151 () Bool)

(assert (=> b!2743151 (= e!1727492 (and (inv!42856 (_1!18290 (_1!18291 (h!36932 mapValue!16311)))) e!1727493 tp_is_empty!13917 setRes!21483 tp!862545))))

(declare-fun condSetEmpty!21483 () Bool)

(assert (=> b!2743151 (= condSetEmpty!21483 (= (_2!18291 (h!36932 mapValue!16311)) ((as const (Array Context!4394 Bool)) false)))))

(assert (= (and mapNonEmpty!16307 condMapEmpty!16311) mapIsEmpty!16311))

(assert (= (and mapNonEmpty!16307 (not condMapEmpty!16311)) mapNonEmpty!16311))

(assert (= b!2743151 b!2743148))

(assert (= (and b!2743151 condSetEmpty!21483) setIsEmpty!21483))

(assert (= (and b!2743151 (not condSetEmpty!21483)) setNonEmpty!21483))

(assert (= setNonEmpty!21483 b!2743150))

(assert (= (and mapNonEmpty!16311 ((_ is Cons!31512) mapValue!16311)) b!2743151))

(assert (= b!2743146 b!2743147))

(assert (= (and b!2743146 condSetEmpty!21484) setIsEmpty!21484))

(assert (= (and b!2743146 (not condSetEmpty!21484)) setNonEmpty!21484))

(assert (= setNonEmpty!21484 b!2743149))

(assert (= (and mapNonEmpty!16307 ((_ is Cons!31512) mapDefault!16311)) b!2743146))

(declare-fun m!3160809 () Bool)

(assert (=> b!2743151 m!3160809))

(declare-fun m!3160811 () Bool)

(assert (=> mapNonEmpty!16311 m!3160811))

(declare-fun m!3160813 () Bool)

(assert (=> setNonEmpty!21484 m!3160813))

(declare-fun m!3160815 () Bool)

(assert (=> setNonEmpty!21483 m!3160815))

(declare-fun m!3160817 () Bool)

(assert (=> b!2743146 m!3160817))

(declare-fun e!1727504 () Bool)

(declare-fun tp!862564 () Bool)

(declare-fun setNonEmpty!21487 () Bool)

(declare-fun setRes!21487 () Bool)

(declare-fun setElem!21487 () Context!4394)

(assert (=> setNonEmpty!21487 (= setRes!21487 (and tp!862564 (inv!42856 setElem!21487) e!1727504))))

(declare-fun setRest!21487 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21487 (= (_2!18291 (h!36932 mapValue!16307)) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21487 true) setRest!21487))))

(declare-fun e!1727503 () Bool)

(declare-fun e!1727505 () Bool)

(declare-fun tp!862562 () Bool)

(declare-fun b!2743160 () Bool)

(assert (=> b!2743160 (= e!1727503 (and (inv!42856 (_1!18290 (_1!18291 (h!36932 mapValue!16307)))) e!1727505 tp_is_empty!13917 setRes!21487 tp!862562))))

(declare-fun condSetEmpty!21487 () Bool)

(assert (=> b!2743160 (= condSetEmpty!21487 (= (_2!18291 (h!36932 mapValue!16307)) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun b!2743161 () Bool)

(declare-fun tp!862563 () Bool)

(assert (=> b!2743161 (= e!1727505 tp!862563)))

(declare-fun setIsEmpty!21487 () Bool)

(assert (=> setIsEmpty!21487 setRes!21487))

(assert (=> mapNonEmpty!16307 (= tp!862491 e!1727503)))

(declare-fun b!2743162 () Bool)

(declare-fun tp!862561 () Bool)

(assert (=> b!2743162 (= e!1727504 tp!862561)))

(assert (= b!2743160 b!2743161))

(assert (= (and b!2743160 condSetEmpty!21487) setIsEmpty!21487))

(assert (= (and b!2743160 (not condSetEmpty!21487)) setNonEmpty!21487))

(assert (= setNonEmpty!21487 b!2743162))

(assert (= (and mapNonEmpty!16307 ((_ is Cons!31512) mapValue!16307)) b!2743160))

(declare-fun m!3160819 () Bool)

(assert (=> setNonEmpty!21487 m!3160819))

(declare-fun m!3160821 () Bool)

(assert (=> b!2743160 m!3160821))

(declare-fun tp!862571 () Bool)

(declare-fun b!2743171 () Bool)

(declare-fun tp!862572 () Bool)

(declare-fun e!1727510 () Bool)

(assert (=> b!2743171 (= e!1727510 (and (inv!42849 (left!24194 (c!444762 input!1326))) tp!862572 (inv!42849 (right!24524 (c!444762 input!1326))) tp!862571))))

(declare-fun b!2743173 () Bool)

(declare-fun e!1727511 () Bool)

(declare-fun tp!862573 () Bool)

(assert (=> b!2743173 (= e!1727511 tp!862573)))

(declare-fun b!2743172 () Bool)

(declare-fun inv!42857 (IArray!19743) Bool)

(assert (=> b!2743172 (= e!1727510 (and (inv!42857 (xs!12976 (c!444762 input!1326))) e!1727511))))

(assert (=> b!2743050 (= tp!862497 (and (inv!42849 (c!444762 input!1326)) e!1727510))))

(assert (= (and b!2743050 ((_ is Node!9869) (c!444762 input!1326))) b!2743171))

(assert (= b!2743172 b!2743173))

(assert (= (and b!2743050 ((_ is Leaf!15027) (c!444762 input!1326))) b!2743172))

(declare-fun m!3160823 () Bool)

(assert (=> b!2743171 m!3160823))

(declare-fun m!3160825 () Bool)

(assert (=> b!2743171 m!3160825))

(declare-fun m!3160827 () Bool)

(assert (=> b!2743172 m!3160827))

(assert (=> b!2743050 m!3160745))

(declare-fun b!2743184 () Bool)

(declare-fun b_free!77065 () Bool)

(declare-fun b_next!77769 () Bool)

(assert (=> b!2743184 (= b_free!77065 (not b_next!77769))))

(declare-fun tp!862585 () Bool)

(declare-fun b_and!201785 () Bool)

(assert (=> b!2743184 (= tp!862585 b_and!201785)))

(declare-fun b_free!77067 () Bool)

(declare-fun b_next!77771 () Bool)

(assert (=> b!2743184 (= b_free!77067 (not b_next!77771))))

(declare-fun tp!862584 () Bool)

(declare-fun b_and!201787 () Bool)

(assert (=> b!2743184 (= tp!862584 b_and!201787)))

(declare-fun e!1727523 () Bool)

(assert (=> b!2743184 (= e!1727523 (and tp!862585 tp!862584))))

(declare-fun e!1727521 () Bool)

(declare-fun b!2743183 () Bool)

(declare-fun tp!862582 () Bool)

(assert (=> b!2743183 (= e!1727521 (and tp!862582 (inv!42847 (tag!5330 (h!36929 (t!227697 rulesArg!249)))) (inv!42853 (transformation!4826 (h!36929 (t!227697 rulesArg!249)))) e!1727523))))

(declare-fun b!2743182 () Bool)

(declare-fun e!1727522 () Bool)

(declare-fun tp!862583 () Bool)

(assert (=> b!2743182 (= e!1727522 (and e!1727521 tp!862583))))

(assert (=> b!2743059 (= tp!862502 e!1727522)))

(assert (= b!2743183 b!2743184))

(assert (= b!2743182 b!2743183))

(assert (= (and b!2743059 ((_ is Cons!31509) (t!227697 rulesArg!249))) b!2743182))

(declare-fun m!3160829 () Bool)

(assert (=> b!2743183 m!3160829))

(declare-fun m!3160831 () Bool)

(assert (=> b!2743183 m!3160831))

(declare-fun tp!862608 () Bool)

(declare-fun e!1727538 () Bool)

(declare-fun setNonEmpty!21492 () Bool)

(declare-fun setElem!21492 () Context!4394)

(declare-fun setRes!21493 () Bool)

(assert (=> setNonEmpty!21492 (= setRes!21493 (and tp!862608 (inv!42856 setElem!21492) e!1727538))))

(declare-fun mapValue!16314 () List!31611)

(declare-fun setRest!21492 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21492 (= (_2!18289 (h!36931 mapValue!16314)) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21492 true) setRest!21492))))

(declare-fun b!2743199 () Bool)

(declare-fun e!1727541 () Bool)

(declare-fun tp!862612 () Bool)

(assert (=> b!2743199 (= e!1727541 tp!862612)))

(declare-fun setIsEmpty!21492 () Bool)

(assert (=> setIsEmpty!21492 setRes!21493))

(declare-fun tp!862618 () Bool)

(declare-fun setNonEmpty!21493 () Bool)

(declare-fun setElem!21493 () Context!4394)

(declare-fun e!1727540 () Bool)

(declare-fun setRes!21492 () Bool)

(assert (=> setNonEmpty!21493 (= setRes!21492 (and tp!862618 (inv!42856 setElem!21493) e!1727540))))

(declare-fun mapDefault!16314 () List!31611)

(declare-fun setRest!21493 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21493 (= (_2!18289 (h!36931 mapDefault!16314)) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21493 true) setRest!21493))))

(declare-fun b!2743200 () Bool)

(declare-fun tp!862615 () Bool)

(assert (=> b!2743200 (= e!1727540 tp!862615)))

(declare-fun condMapEmpty!16314 () Bool)

(assert (=> mapNonEmpty!16308 (= condMapEmpty!16314 (= mapRest!16308 ((as const (Array (_ BitVec 32) List!31611)) mapDefault!16314)))))

(declare-fun e!1727536 () Bool)

(declare-fun mapRes!16314 () Bool)

(assert (=> mapNonEmpty!16308 (= tp!862498 (and e!1727536 mapRes!16314))))

(declare-fun mapIsEmpty!16314 () Bool)

(assert (=> mapIsEmpty!16314 mapRes!16314))

(declare-fun b!2743201 () Bool)

(declare-fun e!1727539 () Bool)

(declare-fun tp!862610 () Bool)

(assert (=> b!2743201 (= e!1727539 tp!862610)))

(declare-fun mapNonEmpty!16314 () Bool)

(declare-fun tp!862617 () Bool)

(declare-fun e!1727537 () Bool)

(assert (=> mapNonEmpty!16314 (= mapRes!16314 (and tp!862617 e!1727537))))

(declare-fun mapRest!16314 () (Array (_ BitVec 32) List!31611))

(declare-fun mapKey!16314 () (_ BitVec 32))

(assert (=> mapNonEmpty!16314 (= mapRest!16308 (store mapRest!16314 mapKey!16314 mapValue!16314))))

(declare-fun b!2743202 () Bool)

(declare-fun tp!862609 () Bool)

(declare-fun tp!862613 () Bool)

(assert (=> b!2743202 (= e!1727536 (and tp!862609 (inv!42856 (_2!18288 (_1!18289 (h!36931 mapDefault!16314)))) e!1727539 tp_is_empty!13917 setRes!21492 tp!862613))))

(declare-fun condSetEmpty!21493 () Bool)

(assert (=> b!2743202 (= condSetEmpty!21493 (= (_2!18289 (h!36931 mapDefault!16314)) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun tp!862611 () Bool)

(declare-fun b!2743203 () Bool)

(declare-fun tp!862614 () Bool)

(assert (=> b!2743203 (= e!1727537 (and tp!862611 (inv!42856 (_2!18288 (_1!18289 (h!36931 mapValue!16314)))) e!1727541 tp_is_empty!13917 setRes!21493 tp!862614))))

(declare-fun condSetEmpty!21492 () Bool)

(assert (=> b!2743203 (= condSetEmpty!21492 (= (_2!18289 (h!36931 mapValue!16314)) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun b!2743204 () Bool)

(declare-fun tp!862616 () Bool)

(assert (=> b!2743204 (= e!1727538 tp!862616)))

(declare-fun setIsEmpty!21493 () Bool)

(assert (=> setIsEmpty!21493 setRes!21492))

(assert (= (and mapNonEmpty!16308 condMapEmpty!16314) mapIsEmpty!16314))

(assert (= (and mapNonEmpty!16308 (not condMapEmpty!16314)) mapNonEmpty!16314))

(assert (= b!2743203 b!2743199))

(assert (= (and b!2743203 condSetEmpty!21492) setIsEmpty!21492))

(assert (= (and b!2743203 (not condSetEmpty!21492)) setNonEmpty!21492))

(assert (= setNonEmpty!21492 b!2743204))

(assert (= (and mapNonEmpty!16314 ((_ is Cons!31511) mapValue!16314)) b!2743203))

(assert (= b!2743202 b!2743201))

(assert (= (and b!2743202 condSetEmpty!21493) setIsEmpty!21493))

(assert (= (and b!2743202 (not condSetEmpty!21493)) setNonEmpty!21493))

(assert (= setNonEmpty!21493 b!2743200))

(assert (= (and mapNonEmpty!16308 ((_ is Cons!31511) mapDefault!16314)) b!2743202))

(declare-fun m!3160833 () Bool)

(assert (=> b!2743203 m!3160833))

(declare-fun m!3160835 () Bool)

(assert (=> setNonEmpty!21493 m!3160835))

(declare-fun m!3160837 () Bool)

(assert (=> b!2743202 m!3160837))

(declare-fun m!3160839 () Bool)

(assert (=> setNonEmpty!21492 m!3160839))

(declare-fun m!3160841 () Bool)

(assert (=> mapNonEmpty!16314 m!3160841))

(declare-fun setNonEmpty!21494 () Bool)

(declare-fun setRes!21494 () Bool)

(declare-fun setElem!21494 () Context!4394)

(declare-fun e!1727544 () Bool)

(declare-fun tp!862622 () Bool)

(assert (=> setNonEmpty!21494 (= setRes!21494 (and tp!862622 (inv!42856 setElem!21494) e!1727544))))

(declare-fun setRest!21494 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21494 (= (_2!18289 (h!36931 mapValue!16308)) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21494 true) setRest!21494))))

(declare-fun b!2743205 () Bool)

(declare-fun tp!862621 () Bool)

(assert (=> b!2743205 (= e!1727544 tp!862621)))

(declare-fun b!2743206 () Bool)

(declare-fun e!1727542 () Bool)

(declare-fun tp!862623 () Bool)

(assert (=> b!2743206 (= e!1727542 tp!862623)))

(declare-fun e!1727543 () Bool)

(assert (=> mapNonEmpty!16308 (= tp!862501 e!1727543)))

(declare-fun tp!862619 () Bool)

(declare-fun b!2743207 () Bool)

(declare-fun tp!862620 () Bool)

(assert (=> b!2743207 (= e!1727543 (and tp!862620 (inv!42856 (_2!18288 (_1!18289 (h!36931 mapValue!16308)))) e!1727542 tp_is_empty!13917 setRes!21494 tp!862619))))

(declare-fun condSetEmpty!21494 () Bool)

(assert (=> b!2743207 (= condSetEmpty!21494 (= (_2!18289 (h!36931 mapValue!16308)) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun setIsEmpty!21494 () Bool)

(assert (=> setIsEmpty!21494 setRes!21494))

(assert (= b!2743207 b!2743206))

(assert (= (and b!2743207 condSetEmpty!21494) setIsEmpty!21494))

(assert (= (and b!2743207 (not condSetEmpty!21494)) setNonEmpty!21494))

(assert (= setNonEmpty!21494 b!2743205))

(assert (= (and mapNonEmpty!16308 ((_ is Cons!31511) mapValue!16308)) b!2743207))

(declare-fun m!3160843 () Bool)

(assert (=> setNonEmpty!21494 m!3160843))

(declare-fun m!3160845 () Bool)

(assert (=> b!2743207 m!3160845))

(declare-fun setNonEmpty!21495 () Bool)

(declare-fun e!1727546 () Bool)

(declare-fun setRes!21495 () Bool)

(declare-fun tp!862627 () Bool)

(declare-fun setElem!21495 () Context!4394)

(assert (=> setNonEmpty!21495 (= setRes!21495 (and tp!862627 (inv!42856 setElem!21495) e!1727546))))

(declare-fun setRest!21495 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21495 (= (_2!18291 (h!36932 (zeroValue!3833 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21495 true) setRest!21495))))

(declare-fun e!1727545 () Bool)

(declare-fun b!2743208 () Bool)

(declare-fun e!1727547 () Bool)

(declare-fun tp!862625 () Bool)

(assert (=> b!2743208 (= e!1727545 (and (inv!42856 (_1!18290 (_1!18291 (h!36932 (zeroValue!3833 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633)))))))))) e!1727547 tp_is_empty!13917 setRes!21495 tp!862625))))

(declare-fun condSetEmpty!21495 () Bool)

(assert (=> b!2743208 (= condSetEmpty!21495 (= (_2!18291 (h!36932 (zeroValue!3833 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633)))))))) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun b!2743209 () Bool)

(declare-fun tp!862626 () Bool)

(assert (=> b!2743209 (= e!1727547 tp!862626)))

(declare-fun setIsEmpty!21495 () Bool)

(assert (=> setIsEmpty!21495 setRes!21495))

(assert (=> b!2743065 (= tp!862500 e!1727545)))

(declare-fun b!2743210 () Bool)

(declare-fun tp!862624 () Bool)

(assert (=> b!2743210 (= e!1727546 tp!862624)))

(assert (= b!2743208 b!2743209))

(assert (= (and b!2743208 condSetEmpty!21495) setIsEmpty!21495))

(assert (= (and b!2743208 (not condSetEmpty!21495)) setNonEmpty!21495))

(assert (= setNonEmpty!21495 b!2743210))

(assert (= (and b!2743065 ((_ is Cons!31512) (zeroValue!3833 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633)))))))) b!2743208))

(declare-fun m!3160847 () Bool)

(assert (=> setNonEmpty!21495 m!3160847))

(declare-fun m!3160849 () Bool)

(assert (=> b!2743208 m!3160849))

(declare-fun e!1727549 () Bool)

(declare-fun setRes!21496 () Bool)

(declare-fun setElem!21496 () Context!4394)

(declare-fun setNonEmpty!21496 () Bool)

(declare-fun tp!862631 () Bool)

(assert (=> setNonEmpty!21496 (= setRes!21496 (and tp!862631 (inv!42856 setElem!21496) e!1727549))))

(declare-fun setRest!21496 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21496 (= (_2!18291 (h!36932 (minValue!3833 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21496 true) setRest!21496))))

(declare-fun e!1727550 () Bool)

(declare-fun b!2743211 () Bool)

(declare-fun e!1727548 () Bool)

(declare-fun tp!862629 () Bool)

(assert (=> b!2743211 (= e!1727548 (and (inv!42856 (_1!18290 (_1!18291 (h!36932 (minValue!3833 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633)))))))))) e!1727550 tp_is_empty!13917 setRes!21496 tp!862629))))

(declare-fun condSetEmpty!21496 () Bool)

(assert (=> b!2743211 (= condSetEmpty!21496 (= (_2!18291 (h!36932 (minValue!3833 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633)))))))) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun b!2743212 () Bool)

(declare-fun tp!862630 () Bool)

(assert (=> b!2743212 (= e!1727550 tp!862630)))

(declare-fun setIsEmpty!21496 () Bool)

(assert (=> setIsEmpty!21496 setRes!21496))

(assert (=> b!2743065 (= tp!862487 e!1727548)))

(declare-fun b!2743213 () Bool)

(declare-fun tp!862628 () Bool)

(assert (=> b!2743213 (= e!1727549 tp!862628)))

(assert (= b!2743211 b!2743212))

(assert (= (and b!2743211 condSetEmpty!21496) setIsEmpty!21496))

(assert (= (and b!2743211 (not condSetEmpty!21496)) setNonEmpty!21496))

(assert (= setNonEmpty!21496 b!2743213))

(assert (= (and b!2743065 ((_ is Cons!31512) (minValue!3833 (v!33167 (underlying!7351 (v!33168 (underlying!7352 (cache!3623 cacheUp!633)))))))) b!2743211))

(declare-fun m!3160851 () Bool)

(assert (=> setNonEmpty!21496 m!3160851))

(declare-fun m!3160853 () Bool)

(assert (=> b!2743211 m!3160853))

(declare-fun tp!862635 () Bool)

(declare-fun setElem!21497 () Context!4394)

(declare-fun e!1727553 () Bool)

(declare-fun setNonEmpty!21497 () Bool)

(declare-fun setRes!21497 () Bool)

(assert (=> setNonEmpty!21497 (= setRes!21497 (and tp!862635 (inv!42856 setElem!21497) e!1727553))))

(declare-fun setRest!21497 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21497 (= (_2!18289 (h!36931 mapDefault!16308)) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21497 true) setRest!21497))))

(declare-fun b!2743214 () Bool)

(declare-fun tp!862634 () Bool)

(assert (=> b!2743214 (= e!1727553 tp!862634)))

(declare-fun b!2743215 () Bool)

(declare-fun e!1727551 () Bool)

(declare-fun tp!862636 () Bool)

(assert (=> b!2743215 (= e!1727551 tp!862636)))

(declare-fun e!1727552 () Bool)

(assert (=> b!2743056 (= tp!862504 e!1727552)))

(declare-fun b!2743216 () Bool)

(declare-fun tp!862632 () Bool)

(declare-fun tp!862633 () Bool)

(assert (=> b!2743216 (= e!1727552 (and tp!862633 (inv!42856 (_2!18288 (_1!18289 (h!36931 mapDefault!16308)))) e!1727551 tp_is_empty!13917 setRes!21497 tp!862632))))

(declare-fun condSetEmpty!21497 () Bool)

(assert (=> b!2743216 (= condSetEmpty!21497 (= (_2!18289 (h!36931 mapDefault!16308)) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun setIsEmpty!21497 () Bool)

(assert (=> setIsEmpty!21497 setRes!21497))

(assert (= b!2743216 b!2743215))

(assert (= (and b!2743216 condSetEmpty!21497) setIsEmpty!21497))

(assert (= (and b!2743216 (not condSetEmpty!21497)) setNonEmpty!21497))

(assert (= setNonEmpty!21497 b!2743214))

(assert (= (and b!2743056 ((_ is Cons!31511) mapDefault!16308)) b!2743216))

(declare-fun m!3160855 () Bool)

(assert (=> setNonEmpty!21497 m!3160855))

(declare-fun m!3160857 () Bool)

(assert (=> b!2743216 m!3160857))

(declare-fun tp!862640 () Bool)

(declare-fun setRes!21498 () Bool)

(declare-fun e!1727555 () Bool)

(declare-fun setNonEmpty!21498 () Bool)

(declare-fun setElem!21498 () Context!4394)

(assert (=> setNonEmpty!21498 (= setRes!21498 (and tp!862640 (inv!42856 setElem!21498) e!1727555))))

(declare-fun setRest!21498 () (InoxSet Context!4394))

(assert (=> setNonEmpty!21498 (= (_2!18291 (h!36932 mapDefault!16307)) ((_ map or) (store ((as const (Array Context!4394 Bool)) false) setElem!21498 true) setRest!21498))))

(declare-fun e!1727554 () Bool)

(declare-fun e!1727556 () Bool)

(declare-fun b!2743217 () Bool)

(declare-fun tp!862638 () Bool)

(assert (=> b!2743217 (= e!1727554 (and (inv!42856 (_1!18290 (_1!18291 (h!36932 mapDefault!16307)))) e!1727556 tp_is_empty!13917 setRes!21498 tp!862638))))

(declare-fun condSetEmpty!21498 () Bool)

(assert (=> b!2743217 (= condSetEmpty!21498 (= (_2!18291 (h!36932 mapDefault!16307)) ((as const (Array Context!4394 Bool)) false)))))

(declare-fun b!2743218 () Bool)

(declare-fun tp!862639 () Bool)

(assert (=> b!2743218 (= e!1727556 tp!862639)))

(declare-fun setIsEmpty!21498 () Bool)

(assert (=> setIsEmpty!21498 setRes!21498))

(assert (=> b!2743072 (= tp!862490 e!1727554)))

(declare-fun b!2743219 () Bool)

(declare-fun tp!862637 () Bool)

(assert (=> b!2743219 (= e!1727555 tp!862637)))

(assert (= b!2743217 b!2743218))

(assert (= (and b!2743217 condSetEmpty!21498) setIsEmpty!21498))

(assert (= (and b!2743217 (not condSetEmpty!21498)) setNonEmpty!21498))

(assert (= setNonEmpty!21498 b!2743219))

(assert (= (and b!2743072 ((_ is Cons!31512) mapDefault!16307)) b!2743217))

(declare-fun m!3160859 () Bool)

(assert (=> setNonEmpty!21498 m!3160859))

(declare-fun m!3160861 () Bool)

(assert (=> b!2743217 m!3160861))

(declare-fun b!2743232 () Bool)

(declare-fun e!1727559 () Bool)

(declare-fun tp!862655 () Bool)

(assert (=> b!2743232 (= e!1727559 tp!862655)))

(declare-fun b!2743233 () Bool)

(declare-fun tp!862654 () Bool)

(declare-fun tp!862653 () Bool)

(assert (=> b!2743233 (= e!1727559 (and tp!862654 tp!862653))))

(declare-fun b!2743230 () Bool)

(assert (=> b!2743230 (= e!1727559 tp_is_empty!13917)))

(assert (=> b!2743057 (= tp!862494 e!1727559)))

(declare-fun b!2743231 () Bool)

(declare-fun tp!862651 () Bool)

(declare-fun tp!862652 () Bool)

(assert (=> b!2743231 (= e!1727559 (and tp!862651 tp!862652))))

(assert (= (and b!2743057 ((_ is ElementMatch!7979) (regex!4826 (h!36929 rulesArg!249)))) b!2743230))

(assert (= (and b!2743057 ((_ is Concat!13028) (regex!4826 (h!36929 rulesArg!249)))) b!2743231))

(assert (= (and b!2743057 ((_ is Star!7979) (regex!4826 (h!36929 rulesArg!249)))) b!2743232))

(assert (= (and b!2743057 ((_ is Union!7979) (regex!4826 (h!36929 rulesArg!249)))) b!2743233))

(check-sat (not b!2743211) (not b!2743205) (not b!2743204) (not b!2743117) b_and!201775 (not b!2743171) (not b!2743212) (not setNonEmpty!21497) (not b!2743050) (not b!2743206) (not setNonEmpty!21493) b_and!201787 (not d!795722) (not setNonEmpty!21483) (not mapNonEmpty!16311) (not d!795710) (not setNonEmpty!21492) (not b!2743083) (not b!2743232) b_and!201777 (not b!2743203) (not mapNonEmpty!16314) (not b!2743161) (not b!2743215) (not b!2743090) (not b!2743085) (not b!2743114) b_and!201781 b_and!201783 (not b!2743160) (not setNonEmpty!21484) (not setNonEmpty!21496) (not b!2743231) (not b!2743130) (not b!2743151) (not d!795734) (not b!2743214) (not b!2743182) (not b!2743200) (not b!2743150) (not b!2743219) (not d!795740) (not b!2743173) (not setNonEmpty!21495) (not b_next!77769) (not b!2743084) b_and!201785 (not b!2743127) (not b!2743233) (not b!2743129) b_and!201773 (not b!2743106) (not b!2743183) (not b!2743207) (not b_next!77759) b_and!201779 tp_is_empty!13917 (not b!2743146) (not b!2743162) (not setNonEmpty!21494) (not b!2743131) (not setNonEmpty!21498) (not b!2743108) (not b!2743172) (not b_next!77761) (not d!795742) (not b!2743210) (not b!2743091) (not b!2743208) (not b!2743098) (not b!2743199) (not b!2743201) (not b!2743216) (not b!2743148) (not b!2743202) (not d!795714) (not b_next!77763) (not b!2743217) (not b!2743209) (not b!2743218) (not b_next!77757) (not setNonEmpty!21487) (not b_next!77767) (not setNonEmpty!21478) (not b!2743147) (not setNonEmpty!21477) (not b!2743111) (not b_next!77765) (not b!2743213) (not b_next!77771) (not b!2743149) (not b!2743126) (not b!2743128) (not d!795720) (not d!795712))
(check-sat b_and!201787 b_and!201777 b_and!201781 b_and!201783 (not b_next!77769) b_and!201785 b_and!201773 (not b_next!77761) b_and!201775 (not b_next!77763) (not b_next!77765) (not b_next!77771) (not b_next!77759) b_and!201779 (not b_next!77757) (not b_next!77767))
