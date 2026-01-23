; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274790 () Bool)

(assert start!274790)

(declare-fun b!2829711 () Bool)

(declare-fun b_free!81233 () Bool)

(declare-fun b_next!81937 () Bool)

(assert (=> b!2829711 (= b_free!81233 (not b_next!81937))))

(declare-fun tp!903869 () Bool)

(declare-fun b_and!206891 () Bool)

(assert (=> b!2829711 (= tp!903869 b_and!206891)))

(declare-fun b!2829703 () Bool)

(declare-fun b_free!81235 () Bool)

(declare-fun b_next!81939 () Bool)

(assert (=> b!2829703 (= b_free!81235 (not b_next!81939))))

(declare-fun tp!903867 () Bool)

(declare-fun b_and!206893 () Bool)

(assert (=> b!2829703 (= tp!903867 b_and!206893)))

(declare-fun b_free!81237 () Bool)

(declare-fun b_next!81941 () Bool)

(assert (=> b!2829703 (= b_free!81237 (not b_next!81941))))

(declare-fun tp!903871 () Bool)

(declare-fun b_and!206895 () Bool)

(assert (=> b!2829703 (= tp!903871 b_and!206895)))

(declare-fun b!2829706 () Bool)

(declare-fun b_free!81239 () Bool)

(declare-fun b_next!81943 () Bool)

(assert (=> b!2829706 (= b_free!81239 (not b_next!81943))))

(declare-fun tp!903856 () Bool)

(declare-fun b_and!206897 () Bool)

(assert (=> b!2829706 (= tp!903856 b_and!206897)))

(declare-fun b!2829702 () Bool)

(declare-fun b_free!81241 () Bool)

(declare-fun b_next!81945 () Bool)

(assert (=> b!2829702 (= b_free!81241 (not b_next!81945))))

(declare-fun tp!903864 () Bool)

(declare-fun b_and!206899 () Bool)

(assert (=> b!2829702 (= tp!903864 b_and!206899)))

(declare-fun b!2829695 () Bool)

(declare-fun b_free!81243 () Bool)

(declare-fun b_next!81947 () Bool)

(assert (=> b!2829695 (= b_free!81243 (not b_next!81947))))

(declare-fun tp!903872 () Bool)

(declare-fun b_and!206901 () Bool)

(assert (=> b!2829695 (= tp!903872 b_and!206901)))

(declare-fun b!2829690 () Bool)

(declare-fun e!1791260 () Bool)

(declare-fun e!1791263 () Bool)

(assert (=> b!2829690 (= e!1791260 e!1791263)))

(declare-fun b!2829692 () Bool)

(declare-fun res!1177994 () Bool)

(declare-fun e!1791251 () Bool)

(assert (=> b!2829692 (=> res!1177994 e!1791251)))

(declare-datatypes ((String!36601 0))(
  ( (String!36602 (value!160444 String)) )
))
(declare-datatypes ((C!16936 0))(
  ( (C!16937 (val!10480 Int)) )
))
(declare-datatypes ((List!33412 0))(
  ( (Nil!33288) (Cons!33288 (h!38708 C!16936) (t!231261 List!33412)) )
))
(declare-datatypes ((IArray!20659 0))(
  ( (IArray!20660 (innerList!10387 List!33412)) )
))
(declare-datatypes ((Conc!10327 0))(
  ( (Node!10327 (left!25131 Conc!10327) (right!25461 Conc!10327) (csize!20884 Int) (cheight!10538 Int)) (Leaf!15728 (xs!13439 IArray!20659) (csize!20885 Int)) (Empty!10327) )
))
(declare-datatypes ((BalanceConc!20292 0))(
  ( (BalanceConc!20293 (c!457763 Conc!10327)) )
))
(declare-datatypes ((List!33413 0))(
  ( (Nil!33289) (Cons!33289 (h!38709 (_ BitVec 16)) (t!231262 List!33413)) )
))
(declare-datatypes ((TokenValue!5216 0))(
  ( (FloatLiteralValue!10432 (text!36957 List!33413)) (TokenValueExt!5215 (__x!22140 Int)) (Broken!26080 (value!160445 List!33413)) (Object!5339) (End!5216) (Def!5216) (Underscore!5216) (Match!5216) (Else!5216) (Error!5216) (Case!5216) (If!5216) (Extends!5216) (Abstract!5216) (Class!5216) (Val!5216) (DelimiterValue!10432 (del!5276 List!33413)) (KeywordValue!5222 (value!160446 List!33413)) (CommentValue!10432 (value!160447 List!33413)) (WhitespaceValue!10432 (value!160448 List!33413)) (IndentationValue!5216 (value!160449 List!33413)) (String!36603) (Int32!5216) (Broken!26081 (value!160450 List!33413)) (Boolean!5217) (Unit!47312) (OperatorValue!5219 (op!5276 List!33413)) (IdentifierValue!10432 (value!160451 List!33413)) (IdentifierValue!10433 (value!160452 List!33413)) (WhitespaceValue!10433 (value!160453 List!33413)) (True!10432) (False!10432) (Broken!26082 (value!160454 List!33413)) (Broken!26083 (value!160455 List!33413)) (True!10433) (RightBrace!5216) (RightBracket!5216) (Colon!5216) (Null!5216) (Comma!5216) (LeftBracket!5216) (False!10433) (LeftBrace!5216) (ImaginaryLiteralValue!5216 (text!36958 List!33413)) (StringLiteralValue!15648 (value!160456 List!33413)) (EOFValue!5216 (value!160457 List!33413)) (IdentValue!5216 (value!160458 List!33413)) (DelimiterValue!10433 (value!160459 List!33413)) (DedentValue!5216 (value!160460 List!33413)) (NewLineValue!5216 (value!160461 List!33413)) (IntegerValue!15648 (value!160462 (_ BitVec 32)) (text!36959 List!33413)) (IntegerValue!15649 (value!160463 Int) (text!36960 List!33413)) (Times!5216) (Or!5216) (Equal!5216) (Minus!5216) (Broken!26084 (value!160464 List!33413)) (And!5216) (Div!5216) (LessEqual!5216) (Mod!5216) (Concat!13593) (Not!5216) (Plus!5216) (SpaceValue!5216 (value!160465 List!33413)) (IntegerValue!15650 (value!160466 Int) (text!36961 List!33413)) (StringLiteralValue!15649 (text!36962 List!33413)) (FloatLiteralValue!10433 (text!36963 List!33413)) (BytesLiteralValue!5216 (value!160467 List!33413)) (CommentValue!10433 (value!160468 List!33413)) (StringLiteralValue!15650 (value!160469 List!33413)) (ErrorTokenValue!5216 (msg!5277 List!33413)) )
))
(declare-datatypes ((TokenValueInjection!9860 0))(
  ( (TokenValueInjection!9861 (toValue!7012 Int) (toChars!6871 Int)) )
))
(declare-datatypes ((Regex!8377 0))(
  ( (ElementMatch!8377 (c!457764 C!16936)) (Concat!13594 (regOne!17266 Regex!8377) (regTwo!17266 Regex!8377)) (EmptyExpr!8377) (Star!8377 (reg!8706 Regex!8377)) (EmptyLang!8377) (Union!8377 (regOne!17267 Regex!8377) (regTwo!17267 Regex!8377)) )
))
(declare-datatypes ((Rule!9772 0))(
  ( (Rule!9773 (regex!4986 Regex!8377) (tag!5490 String!36601) (isSeparator!4986 Bool) (transformation!4986 TokenValueInjection!9860)) )
))
(declare-datatypes ((Token!9374 0))(
  ( (Token!9375 (value!160470 TokenValue!5216) (rule!7414 Rule!9772) (size!25913 Int) (originalCharacters!5718 List!33412)) )
))
(declare-datatypes ((List!33414 0))(
  ( (Nil!33290) (Cons!33290 (h!38710 Token!9374) (t!231263 List!33414)) )
))
(declare-fun lt!1009262 () List!33414)

(declare-fun lt!1009263 () Token!9374)

(declare-fun contains!6081 (List!33414 Token!9374) Bool)

(assert (=> b!2829692 (= res!1177994 (not (contains!6081 lt!1009262 lt!1009263)))))

(declare-fun b!2829693 () Bool)

(declare-fun e!1791255 () Bool)

(assert (=> b!2829693 (= e!1791255 e!1791251)))

(declare-fun res!1177989 () Bool)

(assert (=> b!2829693 (=> res!1177989 e!1791251)))

(declare-datatypes ((IArray!20661 0))(
  ( (IArray!20662 (innerList!10388 List!33414)) )
))
(declare-datatypes ((Conc!10328 0))(
  ( (Node!10328 (left!25132 Conc!10328) (right!25462 Conc!10328) (csize!20886 Int) (cheight!10539 Int)) (Leaf!15729 (xs!13440 IArray!20661) (csize!20887 Int)) (Empty!10328) )
))
(declare-datatypes ((BalanceConc!20294 0))(
  ( (BalanceConc!20295 (c!457765 Conc!10328)) )
))
(declare-fun v!6247 () BalanceConc!20294)

(declare-fun contains!6082 (BalanceConc!20294 Token!9374) Bool)

(assert (=> b!2829693 (= res!1177989 (not (contains!6082 v!6247 lt!1009263)))))

(declare-fun from!827 () Int)

(declare-fun apply!7772 (BalanceConc!20294 Int) Token!9374)

(assert (=> b!2829693 (= lt!1009263 (apply!7772 v!6247 (+ 1 from!827)))))

(declare-fun e!1791262 () Bool)

(declare-datatypes ((List!33415 0))(
  ( (Nil!33291) (Cons!33291 (h!38711 Rule!9772) (t!231264 List!33415)) )
))
(declare-fun rules!1102 () List!33415)

(declare-fun b!2829694 () Bool)

(declare-fun tp!903859 () Bool)

(declare-fun e!1791253 () Bool)

(declare-fun inv!45239 (String!36601) Bool)

(declare-fun inv!45241 (TokenValueInjection!9860) Bool)

(assert (=> b!2829694 (= e!1791262 (and tp!903859 (inv!45239 (tag!5490 (h!38711 rules!1102))) (inv!45241 (transformation!4986 (h!38711 rules!1102))) e!1791253))))

(declare-fun res!1177995 () Bool)

(declare-fun e!1791258 () Bool)

(assert (=> start!274790 (=> (not res!1177995) (not e!1791258))))

(declare-datatypes ((LexerInterface!4576 0))(
  ( (LexerInterfaceExt!4573 (__x!22141 Int)) (Lexer!4574) )
))
(declare-fun thiss!11212 () LexerInterface!4576)

(get-info :version)

(assert (=> start!274790 (= res!1177995 (and ((_ is Lexer!4574) thiss!11212) (>= from!827 0)))))

(assert (=> start!274790 e!1791258))

(declare-fun e!1791266 () Bool)

(assert (=> start!274790 e!1791266))

(declare-fun e!1791247 () Bool)

(declare-fun inv!45242 (BalanceConc!20294) Bool)

(assert (=> start!274790 (and (inv!45242 v!6247) e!1791247)))

(assert (=> start!274790 true))

(declare-datatypes ((List!33416 0))(
  ( (Nil!33292) (Cons!33292 (h!38712 Regex!8377) (t!231265 List!33416)) )
))
(declare-datatypes ((Context!4962 0))(
  ( (Context!4963 (exprs!2981 List!33416)) )
))
(declare-datatypes ((tuple3!5264 0))(
  ( (tuple3!5265 (_1!19838 Regex!8377) (_2!19838 Context!4962) (_3!3102 C!16936)) )
))
(declare-datatypes ((Hashable!3997 0))(
  ( (HashableExt!3996 (__x!22142 Int)) )
))
(declare-datatypes ((array!14507 0))(
  ( (array!14508 (arr!6465 (Array (_ BitVec 32) (_ BitVec 64))) (size!25914 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33472 0))(
  ( (tuple2!33473 (_1!19839 tuple3!5264) (_2!19839 (InoxSet Context!4962))) )
))
(declare-datatypes ((List!33417 0))(
  ( (Nil!33293) (Cons!33293 (h!38713 tuple2!33472) (t!231266 List!33417)) )
))
(declare-datatypes ((array!14509 0))(
  ( (array!14510 (arr!6466 (Array (_ BitVec 32) List!33417)) (size!25915 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8162 0))(
  ( (LongMapFixedSize!8163 (defaultEntry!4466 Int) (mask!10050 (_ BitVec 32)) (extraKeys!4330 (_ BitVec 32)) (zeroValue!4340 List!33417) (minValue!4340 List!33417) (_size!8205 (_ BitVec 32)) (_keys!4381 array!14507) (_values!4362 array!14509) (_vacant!4142 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16133 0))(
  ( (Cell!16134 (v!34319 LongMapFixedSize!8162)) )
))
(declare-datatypes ((MutLongMap!4081 0))(
  ( (LongMap!4081 (underlying!8391 Cell!16133)) (MutLongMapExt!4080 (__x!22143 Int)) )
))
(declare-datatypes ((Cell!16135 0))(
  ( (Cell!16136 (v!34320 MutLongMap!4081)) )
))
(declare-datatypes ((MutableMap!3987 0))(
  ( (MutableMapExt!3986 (__x!22144 Int)) (HashMap!3987 (underlying!8392 Cell!16135) (hashF!6029 Hashable!3997) (_size!8206 (_ BitVec 32)) (defaultValue!4158 Int)) )
))
(declare-datatypes ((CacheDown!2806 0))(
  ( (CacheDown!2807 (cache!4122 MutableMap!3987)) )
))
(declare-fun cacheDown!433 () CacheDown!2806)

(declare-fun e!1791264 () Bool)

(declare-fun inv!45243 (CacheDown!2806) Bool)

(assert (=> start!274790 (and (inv!45243 cacheDown!433) e!1791264)))

(declare-datatypes ((tuple2!33474 0))(
  ( (tuple2!33475 (_1!19840 Context!4962) (_2!19840 C!16936)) )
))
(declare-datatypes ((tuple2!33476 0))(
  ( (tuple2!33477 (_1!19841 tuple2!33474) (_2!19841 (InoxSet Context!4962))) )
))
(declare-datatypes ((List!33418 0))(
  ( (Nil!33294) (Cons!33294 (h!38714 tuple2!33476) (t!231267 List!33418)) )
))
(declare-datatypes ((array!14511 0))(
  ( (array!14512 (arr!6467 (Array (_ BitVec 32) List!33418)) (size!25916 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8164 0))(
  ( (LongMapFixedSize!8165 (defaultEntry!4467 Int) (mask!10051 (_ BitVec 32)) (extraKeys!4331 (_ BitVec 32)) (zeroValue!4341 List!33418) (minValue!4341 List!33418) (_size!8207 (_ BitVec 32)) (_keys!4382 array!14507) (_values!4363 array!14511) (_vacant!4143 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3998 0))(
  ( (HashableExt!3997 (__x!22145 Int)) )
))
(declare-datatypes ((Cell!16137 0))(
  ( (Cell!16138 (v!34321 LongMapFixedSize!8164)) )
))
(declare-datatypes ((MutLongMap!4082 0))(
  ( (LongMap!4082 (underlying!8393 Cell!16137)) (MutLongMapExt!4081 (__x!22146 Int)) )
))
(declare-datatypes ((Cell!16139 0))(
  ( (Cell!16140 (v!34322 MutLongMap!4082)) )
))
(declare-datatypes ((MutableMap!3988 0))(
  ( (MutableMapExt!3987 (__x!22147 Int)) (HashMap!3988 (underlying!8394 Cell!16139) (hashF!6030 Hashable!3998) (_size!8208 (_ BitVec 32)) (defaultValue!4159 Int)) )
))
(declare-datatypes ((CacheUp!2684 0))(
  ( (CacheUp!2685 (cache!4123 MutableMap!3988)) )
))
(declare-fun cacheUp!420 () CacheUp!2684)

(declare-fun e!1791267 () Bool)

(declare-fun inv!45244 (CacheUp!2684) Bool)

(assert (=> start!274790 (and (inv!45244 cacheUp!420) e!1791267)))

(declare-fun b!2829691 () Bool)

(declare-fun e!1791248 () Bool)

(declare-fun e!1791249 () Bool)

(assert (=> b!2829691 (= e!1791248 e!1791249)))

(declare-fun mapNonEmpty!18530 () Bool)

(declare-fun mapRes!18531 () Bool)

(declare-fun tp!903866 () Bool)

(declare-fun tp!903862 () Bool)

(assert (=> mapNonEmpty!18530 (= mapRes!18531 (and tp!903866 tp!903862))))

(declare-fun mapValue!18531 () List!33417)

(declare-fun mapKey!18531 () (_ BitVec 32))

(declare-fun mapRest!18530 () (Array (_ BitVec 32) List!33417))

(assert (=> mapNonEmpty!18530 (= (arr!6466 (_values!4362 (v!34319 (underlying!8391 (v!34320 (underlying!8392 (cache!4122 cacheDown!433))))))) (store mapRest!18530 mapKey!18531 mapValue!18531))))

(declare-fun e!1791261 () Bool)

(declare-fun e!1791269 () Bool)

(assert (=> b!2829695 (= e!1791261 (and e!1791269 tp!903872))))

(declare-fun b!2829696 () Bool)

(declare-fun e!1791244 () Bool)

(assert (=> b!2829696 (= e!1791264 e!1791244)))

(declare-fun b!2829697 () Bool)

(declare-fun e!1791259 () Bool)

(declare-fun e!1791245 () Bool)

(declare-fun lt!1009261 () MutLongMap!4081)

(assert (=> b!2829697 (= e!1791259 (and e!1791245 ((_ is LongMap!4081) lt!1009261)))))

(assert (=> b!2829697 (= lt!1009261 (v!34320 (underlying!8392 (cache!4122 cacheDown!433))))))

(declare-fun b!2829698 () Bool)

(declare-fun e!1791257 () Bool)

(assert (=> b!2829698 (= e!1791251 e!1791257)))

(declare-fun res!1177992 () Bool)

(assert (=> b!2829698 (=> res!1177992 e!1791257)))

(declare-fun lt!1009264 () Token!9374)

(declare-datatypes ((tuple3!5266 0))(
  ( (tuple3!5267 (_1!19842 Bool) (_2!19842 CacheUp!2684) (_3!3103 CacheDown!2806)) )
))
(declare-fun separableTokensPredicateMem!6 (LexerInterface!4576 Token!9374 Token!9374 List!33415 CacheUp!2684 CacheDown!2806) tuple3!5266)

(assert (=> b!2829698 (= res!1177992 (not (_1!19842 (separableTokensPredicateMem!6 thiss!11212 lt!1009264 lt!1009263 rules!1102 cacheUp!420 cacheDown!433))))))

(declare-fun e!1791252 () Bool)

(assert (=> b!2829698 e!1791252))

(declare-fun res!1177996 () Bool)

(assert (=> b!2829698 (=> (not res!1177996) (not e!1791252))))

(declare-fun rulesProduceIndividualToken!2113 (LexerInterface!4576 List!33415 Token!9374) Bool)

(assert (=> b!2829698 (= res!1177996 (rulesProduceIndividualToken!2113 thiss!11212 rules!1102 lt!1009263))))

(declare-datatypes ((Unit!47313 0))(
  ( (Unit!47314) )
))
(declare-fun lt!1009266 () Unit!47313)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!731 (LexerInterface!4576 List!33415 List!33414 Token!9374) Unit!47313)

(assert (=> b!2829698 (= lt!1009266 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!731 thiss!11212 rules!1102 lt!1009262 lt!1009263))))

(assert (=> b!2829698 (rulesProduceIndividualToken!2113 thiss!11212 rules!1102 lt!1009264)))

(declare-fun lt!1009271 () Unit!47313)

(assert (=> b!2829698 (= lt!1009271 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!731 thiss!11212 rules!1102 lt!1009262 lt!1009264))))

(declare-fun b!2829699 () Bool)

(assert (=> b!2829699 (= e!1791245 e!1791260)))

(declare-fun mapIsEmpty!18530 () Bool)

(declare-fun mapRes!18530 () Bool)

(assert (=> mapIsEmpty!18530 mapRes!18530))

(declare-fun b!2829700 () Bool)

(declare-fun e!1791265 () Bool)

(declare-fun lt!1009268 () MutLongMap!4082)

(assert (=> b!2829700 (= e!1791269 (and e!1791265 ((_ is LongMap!4082) lt!1009268)))))

(assert (=> b!2829700 (= lt!1009268 (v!34322 (underlying!8394 (cache!4123 cacheUp!420))))))

(declare-fun b!2829701 () Bool)

(declare-fun size!25917 (BalanceConc!20292) Int)

(declare-fun charsOf!3091 (Token!9374) BalanceConc!20292)

(assert (=> b!2829701 (= e!1791252 (> (size!25917 (charsOf!3091 lt!1009263)) 0))))

(declare-fun e!1791268 () Bool)

(declare-fun tp!903874 () Bool)

(declare-fun tp!903860 () Bool)

(declare-fun array_inv!4629 (array!14507) Bool)

(declare-fun array_inv!4630 (array!14511) Bool)

(assert (=> b!2829702 (= e!1791249 (and tp!903864 tp!903860 tp!903874 (array_inv!4629 (_keys!4382 (v!34321 (underlying!8393 (v!34322 (underlying!8394 (cache!4123 cacheUp!420))))))) (array_inv!4630 (_values!4363 (v!34321 (underlying!8393 (v!34322 (underlying!8394 (cache!4123 cacheUp!420))))))) e!1791268))))

(assert (=> b!2829703 (= e!1791253 (and tp!903867 tp!903871))))

(declare-fun b!2829704 () Bool)

(declare-fun tp!903861 () Bool)

(assert (=> b!2829704 (= e!1791266 (and e!1791262 tp!903861))))

(declare-fun b!2829705 () Bool)

(assert (=> b!2829705 (= e!1791265 e!1791248)))

(declare-fun e!1791254 () Bool)

(declare-fun tp!903873 () Bool)

(declare-fun tp!903868 () Bool)

(declare-fun array_inv!4631 (array!14509) Bool)

(assert (=> b!2829706 (= e!1791263 (and tp!903856 tp!903868 tp!903873 (array_inv!4629 (_keys!4381 (v!34319 (underlying!8391 (v!34320 (underlying!8392 (cache!4122 cacheDown!433))))))) (array_inv!4631 (_values!4362 (v!34319 (underlying!8391 (v!34320 (underlying!8392 (cache!4122 cacheDown!433))))))) e!1791254))))

(declare-fun b!2829707 () Bool)

(declare-fun tp!903865 () Bool)

(declare-fun inv!45245 (Conc!10328) Bool)

(assert (=> b!2829707 (= e!1791247 (and (inv!45245 (c!457765 v!6247)) tp!903865))))

(declare-fun b!2829708 () Bool)

(declare-fun res!1178000 () Bool)

(assert (=> b!2829708 (=> res!1178000 e!1791255)))

(assert (=> b!2829708 (= res!1178000 (not (contains!6081 lt!1009262 lt!1009264)))))

(declare-fun b!2829709 () Bool)

(declare-fun res!1177991 () Bool)

(declare-fun e!1791270 () Bool)

(assert (=> b!2829709 (=> (not res!1177991) (not e!1791270))))

(declare-fun rulesInvariant!3993 (LexerInterface!4576 List!33415) Bool)

(assert (=> b!2829709 (= res!1177991 (rulesInvariant!3993 thiss!11212 rules!1102))))

(declare-fun b!2829710 () Bool)

(declare-fun res!1177993 () Bool)

(assert (=> b!2829710 (=> (not res!1177993) (not e!1791270))))

(declare-fun rulesProduceEachTokenIndividually!1096 (LexerInterface!4576 List!33415 BalanceConc!20294) Bool)

(assert (=> b!2829710 (= res!1177993 (rulesProduceEachTokenIndividually!1096 thiss!11212 rules!1102 v!6247))))

(assert (=> b!2829711 (= e!1791244 (and e!1791259 tp!903869))))

(declare-fun b!2829712 () Bool)

(assert (=> b!2829712 (= e!1791270 (not e!1791255))))

(declare-fun res!1177998 () Bool)

(assert (=> b!2829712 (=> res!1177998 e!1791255)))

(assert (=> b!2829712 (= res!1177998 (not (contains!6082 v!6247 lt!1009264)))))

(assert (=> b!2829712 (= lt!1009264 (apply!7772 v!6247 from!827))))

(declare-fun lt!1009267 () List!33414)

(declare-fun tail!4464 (List!33414) List!33414)

(declare-fun drop!1788 (List!33414 Int) List!33414)

(assert (=> b!2829712 (= (tail!4464 lt!1009267) (drop!1788 lt!1009262 (+ 2 from!827)))))

(declare-fun lt!1009270 () Unit!47313)

(declare-fun lemmaDropTail!874 (List!33414 Int) Unit!47313)

(assert (=> b!2829712 (= lt!1009270 (lemmaDropTail!874 lt!1009262 (+ 1 from!827)))))

(declare-fun lt!1009272 () List!33414)

(assert (=> b!2829712 (= (tail!4464 lt!1009272) lt!1009267)))

(declare-fun lt!1009265 () Unit!47313)

(assert (=> b!2829712 (= lt!1009265 (lemmaDropTail!874 lt!1009262 from!827))))

(declare-fun head!6239 (List!33414) Token!9374)

(declare-fun apply!7773 (List!33414 Int) Token!9374)

(assert (=> b!2829712 (= (head!6239 lt!1009267) (apply!7773 lt!1009262 (+ 1 from!827)))))

(assert (=> b!2829712 (= lt!1009267 (drop!1788 lt!1009262 (+ 1 from!827)))))

(declare-fun lt!1009269 () Unit!47313)

(declare-fun lemmaDropApply!986 (List!33414 Int) Unit!47313)

(assert (=> b!2829712 (= lt!1009269 (lemmaDropApply!986 lt!1009262 (+ 1 from!827)))))

(assert (=> b!2829712 (= (head!6239 lt!1009272) (apply!7773 lt!1009262 from!827))))

(assert (=> b!2829712 (= lt!1009272 (drop!1788 lt!1009262 from!827))))

(declare-fun lt!1009273 () Unit!47313)

(assert (=> b!2829712 (= lt!1009273 (lemmaDropApply!986 lt!1009262 from!827))))

(declare-fun list!12460 (BalanceConc!20294) List!33414)

(assert (=> b!2829712 (= lt!1009262 (list!12460 v!6247))))

(declare-fun b!2829713 () Bool)

(declare-fun tp!903858 () Bool)

(assert (=> b!2829713 (= e!1791254 (and tp!903858 mapRes!18531))))

(declare-fun condMapEmpty!18530 () Bool)

(declare-fun mapDefault!18531 () List!33417)

(assert (=> b!2829713 (= condMapEmpty!18530 (= (arr!6466 (_values!4362 (v!34319 (underlying!8391 (v!34320 (underlying!8392 (cache!4122 cacheDown!433))))))) ((as const (Array (_ BitVec 32) List!33417)) mapDefault!18531)))))

(declare-fun b!2829714 () Bool)

(declare-fun res!1177997 () Bool)

(assert (=> b!2829714 (=> (not res!1177997) (not e!1791270))))

(declare-fun lt!1009260 () Int)

(assert (=> b!2829714 (= res!1177997 (< from!827 (- lt!1009260 1)))))

(declare-fun b!2829715 () Bool)

(assert (=> b!2829715 (= e!1791257 (< (- lt!1009260 (+ 1 from!827)) (- lt!1009260 from!827)))))

(declare-fun b!2829716 () Bool)

(assert (=> b!2829716 (= e!1791267 e!1791261)))

(declare-fun mapIsEmpty!18531 () Bool)

(assert (=> mapIsEmpty!18531 mapRes!18531))

(declare-fun mapNonEmpty!18531 () Bool)

(declare-fun tp!903870 () Bool)

(declare-fun tp!903863 () Bool)

(assert (=> mapNonEmpty!18531 (= mapRes!18530 (and tp!903870 tp!903863))))

(declare-fun mapKey!18530 () (_ BitVec 32))

(declare-fun mapValue!18530 () List!33418)

(declare-fun mapRest!18531 () (Array (_ BitVec 32) List!33418))

(assert (=> mapNonEmpty!18531 (= (arr!6467 (_values!4363 (v!34321 (underlying!8393 (v!34322 (underlying!8394 (cache!4123 cacheUp!420))))))) (store mapRest!18531 mapKey!18530 mapValue!18530))))

(declare-fun b!2829717 () Bool)

(declare-fun tp!903857 () Bool)

(assert (=> b!2829717 (= e!1791268 (and tp!903857 mapRes!18530))))

(declare-fun condMapEmpty!18531 () Bool)

(declare-fun mapDefault!18530 () List!33418)

(assert (=> b!2829717 (= condMapEmpty!18531 (= (arr!6467 (_values!4363 (v!34321 (underlying!8393 (v!34322 (underlying!8394 (cache!4123 cacheUp!420))))))) ((as const (Array (_ BitVec 32) List!33418)) mapDefault!18530)))))

(declare-fun b!2829718 () Bool)

(declare-fun res!1177999 () Bool)

(assert (=> b!2829718 (=> (not res!1177999) (not e!1791270))))

(declare-fun isEmpty!18383 (List!33415) Bool)

(assert (=> b!2829718 (= res!1177999 (not (isEmpty!18383 rules!1102)))))

(declare-fun b!2829719 () Bool)

(assert (=> b!2829719 (= e!1791258 e!1791270)))

(declare-fun res!1177990 () Bool)

(assert (=> b!2829719 (=> (not res!1177990) (not e!1791270))))

(assert (=> b!2829719 (= res!1177990 (<= from!827 lt!1009260))))

(declare-fun size!25918 (BalanceConc!20294) Int)

(assert (=> b!2829719 (= lt!1009260 (size!25918 v!6247))))

(assert (= (and start!274790 res!1177995) b!2829719))

(assert (= (and b!2829719 res!1177990) b!2829718))

(assert (= (and b!2829718 res!1177999) b!2829709))

(assert (= (and b!2829709 res!1177991) b!2829710))

(assert (= (and b!2829710 res!1177993) b!2829714))

(assert (= (and b!2829714 res!1177997) b!2829712))

(assert (= (and b!2829712 (not res!1177998)) b!2829708))

(assert (= (and b!2829708 (not res!1178000)) b!2829693))

(assert (= (and b!2829693 (not res!1177989)) b!2829692))

(assert (= (and b!2829692 (not res!1177994)) b!2829698))

(assert (= (and b!2829698 res!1177996) b!2829701))

(assert (= (and b!2829698 (not res!1177992)) b!2829715))

(assert (= b!2829694 b!2829703))

(assert (= b!2829704 b!2829694))

(assert (= (and start!274790 ((_ is Cons!33291) rules!1102)) b!2829704))

(assert (= start!274790 b!2829707))

(assert (= (and b!2829713 condMapEmpty!18530) mapIsEmpty!18531))

(assert (= (and b!2829713 (not condMapEmpty!18530)) mapNonEmpty!18530))

(assert (= b!2829706 b!2829713))

(assert (= b!2829690 b!2829706))

(assert (= b!2829699 b!2829690))

(assert (= (and b!2829697 ((_ is LongMap!4081) (v!34320 (underlying!8392 (cache!4122 cacheDown!433))))) b!2829699))

(assert (= b!2829711 b!2829697))

(assert (= (and b!2829696 ((_ is HashMap!3987) (cache!4122 cacheDown!433))) b!2829711))

(assert (= start!274790 b!2829696))

(assert (= (and b!2829717 condMapEmpty!18531) mapIsEmpty!18530))

(assert (= (and b!2829717 (not condMapEmpty!18531)) mapNonEmpty!18531))

(assert (= b!2829702 b!2829717))

(assert (= b!2829691 b!2829702))

(assert (= b!2829705 b!2829691))

(assert (= (and b!2829700 ((_ is LongMap!4082) (v!34322 (underlying!8394 (cache!4123 cacheUp!420))))) b!2829705))

(assert (= b!2829695 b!2829700))

(assert (= (and b!2829716 ((_ is HashMap!3988) (cache!4123 cacheUp!420))) b!2829695))

(assert (= start!274790 b!2829716))

(declare-fun m!3259177 () Bool)

(assert (=> b!2829707 m!3259177))

(declare-fun m!3259179 () Bool)

(assert (=> b!2829709 m!3259179))

(declare-fun m!3259181 () Bool)

(assert (=> b!2829694 m!3259181))

(declare-fun m!3259183 () Bool)

(assert (=> b!2829694 m!3259183))

(declare-fun m!3259185 () Bool)

(assert (=> b!2829706 m!3259185))

(declare-fun m!3259187 () Bool)

(assert (=> b!2829706 m!3259187))

(declare-fun m!3259189 () Bool)

(assert (=> b!2829692 m!3259189))

(declare-fun m!3259191 () Bool)

(assert (=> b!2829712 m!3259191))

(declare-fun m!3259193 () Bool)

(assert (=> b!2829712 m!3259193))

(declare-fun m!3259195 () Bool)

(assert (=> b!2829712 m!3259195))

(declare-fun m!3259197 () Bool)

(assert (=> b!2829712 m!3259197))

(declare-fun m!3259199 () Bool)

(assert (=> b!2829712 m!3259199))

(declare-fun m!3259201 () Bool)

(assert (=> b!2829712 m!3259201))

(declare-fun m!3259203 () Bool)

(assert (=> b!2829712 m!3259203))

(declare-fun m!3259205 () Bool)

(assert (=> b!2829712 m!3259205))

(declare-fun m!3259207 () Bool)

(assert (=> b!2829712 m!3259207))

(declare-fun m!3259209 () Bool)

(assert (=> b!2829712 m!3259209))

(declare-fun m!3259211 () Bool)

(assert (=> b!2829712 m!3259211))

(declare-fun m!3259213 () Bool)

(assert (=> b!2829712 m!3259213))

(declare-fun m!3259215 () Bool)

(assert (=> b!2829712 m!3259215))

(declare-fun m!3259217 () Bool)

(assert (=> b!2829712 m!3259217))

(declare-fun m!3259219 () Bool)

(assert (=> b!2829712 m!3259219))

(declare-fun m!3259221 () Bool)

(assert (=> b!2829712 m!3259221))

(declare-fun m!3259223 () Bool)

(assert (=> b!2829718 m!3259223))

(declare-fun m!3259225 () Bool)

(assert (=> mapNonEmpty!18530 m!3259225))

(declare-fun m!3259227 () Bool)

(assert (=> b!2829693 m!3259227))

(declare-fun m!3259229 () Bool)

(assert (=> b!2829693 m!3259229))

(declare-fun m!3259231 () Bool)

(assert (=> b!2829719 m!3259231))

(declare-fun m!3259233 () Bool)

(assert (=> b!2829702 m!3259233))

(declare-fun m!3259235 () Bool)

(assert (=> b!2829702 m!3259235))

(declare-fun m!3259237 () Bool)

(assert (=> b!2829710 m!3259237))

(declare-fun m!3259239 () Bool)

(assert (=> b!2829708 m!3259239))

(declare-fun m!3259241 () Bool)

(assert (=> start!274790 m!3259241))

(declare-fun m!3259243 () Bool)

(assert (=> start!274790 m!3259243))

(declare-fun m!3259245 () Bool)

(assert (=> start!274790 m!3259245))

(declare-fun m!3259247 () Bool)

(assert (=> mapNonEmpty!18531 m!3259247))

(declare-fun m!3259249 () Bool)

(assert (=> b!2829698 m!3259249))

(declare-fun m!3259251 () Bool)

(assert (=> b!2829698 m!3259251))

(declare-fun m!3259253 () Bool)

(assert (=> b!2829698 m!3259253))

(declare-fun m!3259255 () Bool)

(assert (=> b!2829698 m!3259255))

(declare-fun m!3259257 () Bool)

(assert (=> b!2829698 m!3259257))

(declare-fun m!3259259 () Bool)

(assert (=> b!2829701 m!3259259))

(assert (=> b!2829701 m!3259259))

(declare-fun m!3259261 () Bool)

(assert (=> b!2829701 m!3259261))

(check-sat b_and!206897 b_and!206895 (not mapNonEmpty!18531) (not b!2829718) (not b_next!81945) (not b!2829712) (not b!2829693) (not b!2829713) (not b!2829708) (not b!2829692) (not b_next!81939) (not b!2829717) (not b!2829719) (not b!2829709) (not b!2829701) b_and!206899 (not b_next!81943) (not mapNonEmpty!18530) b_and!206893 b_and!206901 (not b!2829702) b_and!206891 (not b!2829694) (not b!2829704) (not start!274790) (not b_next!81947) (not b!2829710) (not b!2829707) (not b!2829698) (not b_next!81941) (not b!2829706) (not b_next!81937))
(check-sat (not b_next!81939) b_and!206893 b_and!206901 b_and!206891 b_and!206897 b_and!206895 (not b_next!81945) (not b_next!81947) (not b_next!81941) (not b_next!81937) b_and!206899 (not b_next!81943))
