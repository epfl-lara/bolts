; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266092 () Bool)

(assert start!266092)

(declare-fun b!2744952 () Bool)

(declare-fun b_free!77241 () Bool)

(declare-fun b_next!77945 () Bool)

(assert (=> b!2744952 (= b_free!77241 (not b_next!77945))))

(declare-fun tp!864052 () Bool)

(declare-fun b_and!201961 () Bool)

(assert (=> b!2744952 (= tp!864052 b_and!201961)))

(declare-fun b!2744957 () Bool)

(declare-fun b_free!77243 () Bool)

(declare-fun b_next!77947 () Bool)

(assert (=> b!2744957 (= b_free!77243 (not b_next!77947))))

(declare-fun tp!864047 () Bool)

(declare-fun b_and!201963 () Bool)

(assert (=> b!2744957 (= tp!864047 b_and!201963)))

(declare-fun b!2744944 () Bool)

(declare-fun b_free!77245 () Bool)

(declare-fun b_next!77949 () Bool)

(assert (=> b!2744944 (= b_free!77245 (not b_next!77949))))

(declare-fun tp!864038 () Bool)

(declare-fun b_and!201965 () Bool)

(assert (=> b!2744944 (= tp!864038 b_and!201965)))

(declare-fun b!2744945 () Bool)

(declare-fun b_free!77247 () Bool)

(declare-fun b_next!77951 () Bool)

(assert (=> b!2744945 (= b_free!77247 (not b_next!77951))))

(declare-fun tp!864043 () Bool)

(declare-fun b_and!201967 () Bool)

(assert (=> b!2744945 (= tp!864043 b_and!201967)))

(declare-fun b_free!77249 () Bool)

(declare-fun b_next!77953 () Bool)

(assert (=> b!2744945 (= b_free!77249 (not b_next!77953))))

(declare-fun tp!864041 () Bool)

(declare-fun b_and!201969 () Bool)

(assert (=> b!2744945 (= tp!864041 b_and!201969)))

(declare-fun b!2744959 () Bool)

(declare-fun b_free!77251 () Bool)

(declare-fun b_next!77955 () Bool)

(assert (=> b!2744959 (= b_free!77251 (not b_next!77955))))

(declare-fun tp!864046 () Bool)

(declare-fun b_and!201971 () Bool)

(assert (=> b!2744959 (= tp!864046 b_and!201971)))

(declare-fun b!2744938 () Bool)

(declare-fun e!1729071 () Bool)

(declare-datatypes ((C!16144 0))(
  ( (C!16145 (val!10006 Int)) )
))
(declare-datatypes ((List!31683 0))(
  ( (Nil!31583) (Cons!31583 (h!37003 C!16144) (t!227771 List!31683)) )
))
(declare-datatypes ((IArray!19767 0))(
  ( (IArray!19768 (innerList!9941 List!31683)) )
))
(declare-datatypes ((Conc!9881 0))(
  ( (Node!9881 (left!24223 Conc!9881) (right!24553 Conc!9881) (csize!19992 Int) (cheight!10092 Int)) (Leaf!15046 (xs!12988 IArray!19767) (csize!19993 Int)) (Empty!9881) )
))
(declare-datatypes ((BalanceConc!19376 0))(
  ( (BalanceConc!19377 (c!444815 Conc!9881)) )
))
(declare-fun input!1326 () BalanceConc!19376)

(declare-fun tp!864053 () Bool)

(declare-fun inv!42938 (Conc!9881) Bool)

(assert (=> b!2744938 (= e!1729071 (and (inv!42938 (c!444815 input!1326)) tp!864053))))

(declare-fun b!2744939 () Bool)

(declare-fun e!1729067 () Bool)

(declare-fun e!1729074 () Bool)

(assert (=> b!2744939 (= e!1729067 e!1729074)))

(declare-fun mapNonEmpty!16421 () Bool)

(declare-fun mapRes!16421 () Bool)

(declare-fun tp!864049 () Bool)

(declare-fun tp!864039 () Bool)

(assert (=> mapNonEmpty!16421 (= mapRes!16421 (and tp!864049 tp!864039))))

(declare-fun mapKey!16421 () (_ BitVec 32))

(declare-datatypes ((array!12821 0))(
  ( (array!12822 (arr!5725 (Array (_ BitVec 32) (_ BitVec 64))) (size!24387 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!7993 0))(
  ( (ElementMatch!7993 (c!444816 C!16144)) (Concat!13053 (regOne!16498 Regex!7993) (regTwo!16498 Regex!7993)) (EmptyExpr!7993) (Star!7993 (reg!8322 Regex!7993)) (EmptyLang!7993) (Union!7993 (regOne!16499 Regex!7993) (regTwo!16499 Regex!7993)) )
))
(declare-datatypes ((List!31684 0))(
  ( (Nil!31584) (Cons!31584 (h!37004 Regex!7993) (t!227772 List!31684)) )
))
(declare-datatypes ((Context!4422 0))(
  ( (Context!4423 (exprs!2711 List!31684)) )
))
(declare-datatypes ((tuple2!31390 0))(
  ( (tuple2!31391 (_1!18364 Context!4422) (_2!18364 C!16144)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31392 0))(
  ( (tuple2!31393 (_1!18365 tuple2!31390) (_2!18365 (InoxSet Context!4422))) )
))
(declare-datatypes ((List!31685 0))(
  ( (Nil!31585) (Cons!31585 (h!37005 tuple2!31392) (t!227773 List!31685)) )
))
(declare-datatypes ((array!12823 0))(
  ( (array!12824 (arr!5726 (Array (_ BitVec 32) List!31685)) (size!24388 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7198 0))(
  ( (LongMapFixedSize!7199 (defaultEntry!3984 Int) (mask!9332 (_ BitVec 32)) (extraKeys!3848 (_ BitVec 32)) (zeroValue!3858 List!31685) (minValue!3858 List!31685) (_size!7241 (_ BitVec 32)) (_keys!3899 array!12821) (_values!3880 array!12823) (_vacant!3660 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14205 0))(
  ( (Cell!14206 (v!33223 LongMapFixedSize!7198)) )
))
(declare-datatypes ((MutLongMap!3599 0))(
  ( (LongMap!3599 (underlying!7401 Cell!14205)) (MutLongMapExt!3598 (__x!20394 Int)) )
))
(declare-datatypes ((Cell!14207 0))(
  ( (Cell!14208 (v!33224 MutLongMap!3599)) )
))
(declare-datatypes ((Hashable!3515 0))(
  ( (HashableExt!3514 (__x!20395 Int)) )
))
(declare-datatypes ((MutableMap!3505 0))(
  ( (MutableMapExt!3504 (__x!20396 Int)) (HashMap!3505 (underlying!7402 Cell!14207) (hashF!5547 Hashable!3515) (_size!7242 (_ BitVec 32)) (defaultValue!3676 Int)) )
))
(declare-datatypes ((CacheUp!2212 0))(
  ( (CacheUp!2213 (cache!3648 MutableMap!3505)) )
))
(declare-fun cacheUp!633 () CacheUp!2212)

(declare-fun mapRest!16421 () (Array (_ BitVec 32) List!31685))

(declare-fun mapValue!16421 () List!31685)

(assert (=> mapNonEmpty!16421 (= (arr!5726 (_values!3880 (v!33223 (underlying!7401 (v!33224 (underlying!7402 (cache!3648 cacheUp!633))))))) (store mapRest!16421 mapKey!16421 mapValue!16421))))

(declare-fun b!2744940 () Bool)

(declare-fun e!1729066 () Bool)

(assert (=> b!2744940 (= e!1729066 e!1729067)))

(declare-fun b!2744941 () Bool)

(declare-fun e!1729058 () Bool)

(declare-fun e!1729062 () Bool)

(assert (=> b!2744941 (= e!1729058 e!1729062)))

(declare-fun mapNonEmpty!16422 () Bool)

(declare-fun mapRes!16422 () Bool)

(declare-fun tp!864045 () Bool)

(declare-fun tp!864042 () Bool)

(assert (=> mapNonEmpty!16422 (= mapRes!16422 (and tp!864045 tp!864042))))

(declare-datatypes ((tuple3!4398 0))(
  ( (tuple3!4399 (_1!18366 Regex!7993) (_2!18366 Context!4422) (_3!2669 C!16144)) )
))
(declare-datatypes ((tuple2!31394 0))(
  ( (tuple2!31395 (_1!18367 tuple3!4398) (_2!18367 (InoxSet Context!4422))) )
))
(declare-datatypes ((List!31686 0))(
  ( (Nil!31586) (Cons!31586 (h!37006 tuple2!31394) (t!227774 List!31686)) )
))
(declare-datatypes ((array!12825 0))(
  ( (array!12826 (arr!5727 (Array (_ BitVec 32) List!31686)) (size!24389 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7200 0))(
  ( (LongMapFixedSize!7201 (defaultEntry!3985 Int) (mask!9333 (_ BitVec 32)) (extraKeys!3849 (_ BitVec 32)) (zeroValue!3859 List!31686) (minValue!3859 List!31686) (_size!7243 (_ BitVec 32)) (_keys!3900 array!12821) (_values!3881 array!12825) (_vacant!3661 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14209 0))(
  ( (Cell!14210 (v!33225 LongMapFixedSize!7200)) )
))
(declare-datatypes ((MutLongMap!3600 0))(
  ( (LongMap!3600 (underlying!7403 Cell!14209)) (MutLongMapExt!3599 (__x!20397 Int)) )
))
(declare-datatypes ((Cell!14211 0))(
  ( (Cell!14212 (v!33226 MutLongMap!3600)) )
))
(declare-datatypes ((Hashable!3516 0))(
  ( (HashableExt!3515 (__x!20398 Int)) )
))
(declare-datatypes ((MutableMap!3506 0))(
  ( (MutableMapExt!3505 (__x!20399 Int)) (HashMap!3506 (underlying!7404 Cell!14211) (hashF!5548 Hashable!3516) (_size!7244 (_ BitVec 32)) (defaultValue!3677 Int)) )
))
(declare-datatypes ((CacheDown!2330 0))(
  ( (CacheDown!2331 (cache!3649 MutableMap!3506)) )
))
(declare-fun cacheDown!646 () CacheDown!2330)

(declare-fun mapValue!16422 () List!31686)

(declare-fun mapRest!16422 () (Array (_ BitVec 32) List!31686))

(declare-fun mapKey!16422 () (_ BitVec 32))

(assert (=> mapNonEmpty!16422 (= (arr!5727 (_values!3881 (v!33225 (underlying!7403 (v!33226 (underlying!7404 (cache!3649 cacheDown!646))))))) (store mapRest!16422 mapKey!16422 mapValue!16422))))

(declare-fun b!2744942 () Bool)

(declare-fun res!1152076 () Bool)

(declare-fun e!1729069 () Bool)

(assert (=> b!2744942 (=> (not res!1152076) (not e!1729069))))

(declare-fun valid!2792 (CacheUp!2212) Bool)

(assert (=> b!2744942 (= res!1152076 (valid!2792 cacheUp!633))))

(declare-fun b!2744943 () Bool)

(declare-fun e!1729079 () Bool)

(declare-fun e!1729076 () Bool)

(assert (=> b!2744943 (= e!1729079 e!1729076)))

(declare-fun tp!864050 () Bool)

(declare-fun e!1729064 () Bool)

(declare-fun tp!864044 () Bool)

(declare-fun array_inv!4088 (array!12821) Bool)

(declare-fun array_inv!4089 (array!12823) Bool)

(assert (=> b!2744944 (= e!1729074 (and tp!864038 tp!864050 tp!864044 (array_inv!4088 (_keys!3899 (v!33223 (underlying!7401 (v!33224 (underlying!7402 (cache!3648 cacheUp!633))))))) (array_inv!4089 (_values!3880 (v!33223 (underlying!7401 (v!33224 (underlying!7402 (cache!3648 cacheUp!633))))))) e!1729064))))

(declare-fun e!1729077 () Bool)

(assert (=> b!2744945 (= e!1729077 (and tp!864043 tp!864041))))

(declare-fun b!2744946 () Bool)

(declare-fun e!1729063 () Bool)

(assert (=> b!2744946 (= e!1729069 (not e!1729063))))

(declare-fun res!1152074 () Bool)

(assert (=> b!2744946 (=> res!1152074 e!1729063)))

(declare-datatypes ((List!31687 0))(
  ( (Nil!31587) (Cons!31587 (h!37007 (_ BitVec 16)) (t!227775 List!31687)) )
))
(declare-datatypes ((TokenValue!5060 0))(
  ( (FloatLiteralValue!10120 (text!35865 List!31687)) (TokenValueExt!5059 (__x!20400 Int)) (Broken!25300 (value!155460 List!31687)) (Object!5159) (End!5060) (Def!5060) (Underscore!5060) (Match!5060) (Else!5060) (Error!5060) (Case!5060) (If!5060) (Extends!5060) (Abstract!5060) (Class!5060) (Val!5060) (DelimiterValue!10120 (del!5120 List!31687)) (KeywordValue!5066 (value!155461 List!31687)) (CommentValue!10120 (value!155462 List!31687)) (WhitespaceValue!10120 (value!155463 List!31687)) (IndentationValue!5060 (value!155464 List!31687)) (String!35205) (Int32!5060) (Broken!25301 (value!155465 List!31687)) (Boolean!5061) (Unit!45514) (OperatorValue!5063 (op!5120 List!31687)) (IdentifierValue!10120 (value!155466 List!31687)) (IdentifierValue!10121 (value!155467 List!31687)) (WhitespaceValue!10121 (value!155468 List!31687)) (True!10120) (False!10120) (Broken!25302 (value!155469 List!31687)) (Broken!25303 (value!155470 List!31687)) (True!10121) (RightBrace!5060) (RightBracket!5060) (Colon!5060) (Null!5060) (Comma!5060) (LeftBracket!5060) (False!10121) (LeftBrace!5060) (ImaginaryLiteralValue!5060 (text!35866 List!31687)) (StringLiteralValue!15180 (value!155471 List!31687)) (EOFValue!5060 (value!155472 List!31687)) (IdentValue!5060 (value!155473 List!31687)) (DelimiterValue!10121 (value!155474 List!31687)) (DedentValue!5060 (value!155475 List!31687)) (NewLineValue!5060 (value!155476 List!31687)) (IntegerValue!15180 (value!155477 (_ BitVec 32)) (text!35867 List!31687)) (IntegerValue!15181 (value!155478 Int) (text!35868 List!31687)) (Times!5060) (Or!5060) (Equal!5060) (Minus!5060) (Broken!25304 (value!155479 List!31687)) (And!5060) (Div!5060) (LessEqual!5060) (Mod!5060) (Concat!13054) (Not!5060) (Plus!5060) (SpaceValue!5060 (value!155480 List!31687)) (IntegerValue!15182 (value!155481 Int) (text!35869 List!31687)) (StringLiteralValue!15181 (text!35870 List!31687)) (FloatLiteralValue!10121 (text!35871 List!31687)) (BytesLiteralValue!5060 (value!155482 List!31687)) (CommentValue!10121 (value!155483 List!31687)) (StringLiteralValue!15182 (value!155484 List!31687)) (ErrorTokenValue!5060 (msg!5121 List!31687)) )
))
(declare-datatypes ((TokenValueInjection!9560 0))(
  ( (TokenValueInjection!9561 (toValue!6836 Int) (toChars!6695 Int)) )
))
(declare-datatypes ((String!35206 0))(
  ( (String!35207 (value!155485 String)) )
))
(declare-datatypes ((Rule!9476 0))(
  ( (Rule!9477 (regex!4838 Regex!7993) (tag!5342 String!35206) (isSeparator!4838 Bool) (transformation!4838 TokenValueInjection!9560)) )
))
(declare-datatypes ((List!31688 0))(
  ( (Nil!31588) (Cons!31588 (h!37008 Rule!9476) (t!227776 List!31688)) )
))
(declare-fun rulesArg!249 () List!31688)

(get-info :version)

(assert (=> b!2744946 (= res!1152074 (or (and ((_ is Cons!31588) rulesArg!249) ((_ is Nil!31588) (t!227776 rulesArg!249))) (not ((_ is Cons!31588) rulesArg!249))))))

(declare-fun lt!971479 () List!31683)

(declare-fun isPrefix!2514 (List!31683 List!31683) Bool)

(assert (=> b!2744946 (isPrefix!2514 lt!971479 lt!971479)))

(declare-datatypes ((Unit!45515 0))(
  ( (Unit!45516) )
))
(declare-fun lt!971484 () Unit!45515)

(declare-fun lemmaIsPrefixRefl!1640 (List!31683 List!31683) Unit!45515)

(assert (=> b!2744946 (= lt!971484 (lemmaIsPrefixRefl!1640 lt!971479 lt!971479))))

(declare-fun list!11991 (BalanceConc!19376) List!31683)

(assert (=> b!2744946 (= lt!971479 (list!11991 input!1326))))

(declare-fun b!2744947 () Bool)

(declare-fun e!1729065 () Bool)

(declare-fun e!1729075 () Bool)

(assert (=> b!2744947 (= e!1729065 e!1729075)))

(declare-fun e!1729061 () Bool)

(declare-fun b!2744948 () Bool)

(declare-fun tp!864035 () Bool)

(declare-fun inv!42937 (String!35206) Bool)

(declare-fun inv!42939 (TokenValueInjection!9560) Bool)

(assert (=> b!2744948 (= e!1729061 (and tp!864035 (inv!42937 (tag!5342 (h!37008 rulesArg!249))) (inv!42939 (transformation!4838 (h!37008 rulesArg!249))) e!1729077))))

(declare-fun b!2744949 () Bool)

(declare-fun res!1152073 () Bool)

(assert (=> b!2744949 (=> (not res!1152073) (not e!1729069))))

(declare-datatypes ((LexerInterface!4432 0))(
  ( (LexerInterfaceExt!4429 (__x!20401 Int)) (Lexer!4430) )
))
(declare-fun thiss!15207 () LexerInterface!4432)

(declare-fun rulesValidInductive!1702 (LexerInterface!4432 List!31688) Bool)

(assert (=> b!2744949 (= res!1152073 (rulesValidInductive!1702 thiss!15207 rulesArg!249))))

(declare-fun mapIsEmpty!16421 () Bool)

(assert (=> mapIsEmpty!16421 mapRes!16422))

(declare-fun b!2744950 () Bool)

(declare-fun res!1152075 () Bool)

(assert (=> b!2744950 (=> (not res!1152075) (not e!1729069))))

(declare-fun valid!2793 (CacheDown!2330) Bool)

(assert (=> b!2744950 (= res!1152075 (valid!2793 cacheDown!646))))

(declare-fun b!2744951 () Bool)

(assert (=> b!2744951 (= e!1729063 true)))

(declare-datatypes ((Token!9110 0))(
  ( (Token!9111 (value!155486 TokenValue!5060) (rule!7278 Rule!9476) (size!24390 Int) (originalCharacters!5586 List!31683)) )
))
(declare-datatypes ((tuple2!31396 0))(
  ( (tuple2!31397 (_1!18368 Token!9110) (_2!18368 BalanceConc!19376)) )
))
(declare-datatypes ((Option!6234 0))(
  ( (None!6233) (Some!6233 (v!33227 tuple2!31396)) )
))
(declare-datatypes ((tuple3!4400 0))(
  ( (tuple3!4401 (_1!18369 Option!6234) (_2!18369 CacheUp!2212) (_3!2670 CacheDown!2330)) )
))
(declare-fun lt!971483 () tuple3!4400)

(declare-fun lt!971480 () tuple3!4400)

(declare-fun maxPrefixZipperSequenceMem!26 (LexerInterface!4432 List!31688 BalanceConc!19376 CacheUp!2212 CacheDown!2330) tuple3!4400)

(assert (=> b!2744951 (= lt!971480 (maxPrefixZipperSequenceMem!26 thiss!15207 (t!227776 rulesArg!249) input!1326 (_2!18369 lt!971483) (_3!2670 lt!971483)))))

(declare-fun maxPrefixOneRuleZipperSequenceMem!20 (LexerInterface!4432 Rule!9476 BalanceConc!19376 CacheUp!2212 CacheDown!2330) tuple3!4400)

(assert (=> b!2744951 (= lt!971483 (maxPrefixOneRuleZipperSequenceMem!20 thiss!15207 (h!37008 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun e!1729078 () Bool)

(assert (=> b!2744952 (= e!1729076 (and e!1729078 tp!864052))))

(declare-fun b!2744953 () Bool)

(declare-fun e!1729072 () Bool)

(declare-fun tp!864036 () Bool)

(assert (=> b!2744953 (= e!1729072 (and tp!864036 mapRes!16422))))

(declare-fun condMapEmpty!16422 () Bool)

(declare-fun mapDefault!16422 () List!31686)

(assert (=> b!2744953 (= condMapEmpty!16422 (= (arr!5727 (_values!3881 (v!33225 (underlying!7403 (v!33226 (underlying!7404 (cache!3649 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31686)) mapDefault!16422)))))

(declare-fun b!2744954 () Bool)

(declare-fun e!1729073 () Bool)

(declare-fun lt!971482 () MutLongMap!3599)

(assert (=> b!2744954 (= e!1729073 (and e!1729066 ((_ is LongMap!3599) lt!971482)))))

(assert (=> b!2744954 (= lt!971482 (v!33224 (underlying!7402 (cache!3648 cacheUp!633))))))

(declare-fun b!2744955 () Bool)

(declare-fun e!1729057 () Bool)

(declare-fun tp!864040 () Bool)

(assert (=> b!2744955 (= e!1729057 (and e!1729061 tp!864040))))

(declare-fun b!2744956 () Bool)

(declare-fun tp!864051 () Bool)

(assert (=> b!2744956 (= e!1729064 (and tp!864051 mapRes!16421))))

(declare-fun condMapEmpty!16421 () Bool)

(declare-fun mapDefault!16421 () List!31685)

(assert (=> b!2744956 (= condMapEmpty!16421 (= (arr!5726 (_values!3880 (v!33223 (underlying!7401 (v!33224 (underlying!7402 (cache!3648 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31685)) mapDefault!16421)))))

(declare-fun tp!864037 () Bool)

(declare-fun tp!864048 () Bool)

(declare-fun array_inv!4090 (array!12825) Bool)

(assert (=> b!2744957 (= e!1729062 (and tp!864047 tp!864048 tp!864037 (array_inv!4088 (_keys!3900 (v!33225 (underlying!7403 (v!33226 (underlying!7404 (cache!3649 cacheDown!646))))))) (array_inv!4090 (_values!3881 (v!33225 (underlying!7403 (v!33226 (underlying!7404 (cache!3649 cacheDown!646))))))) e!1729072))))

(declare-fun mapIsEmpty!16422 () Bool)

(assert (=> mapIsEmpty!16422 mapRes!16421))

(declare-fun res!1152077 () Bool)

(assert (=> start!266092 (=> (not res!1152077) (not e!1729069))))

(assert (=> start!266092 (= res!1152077 ((_ is Lexer!4430) thiss!15207))))

(assert (=> start!266092 e!1729069))

(declare-fun inv!42940 (CacheDown!2330) Bool)

(assert (=> start!266092 (and (inv!42940 cacheDown!646) e!1729079)))

(declare-fun inv!42941 (BalanceConc!19376) Bool)

(assert (=> start!266092 (and (inv!42941 input!1326) e!1729071)))

(assert (=> start!266092 e!1729057))

(declare-fun inv!42942 (CacheUp!2212) Bool)

(assert (=> start!266092 (and (inv!42942 cacheUp!633) e!1729065)))

(assert (=> start!266092 true))

(declare-fun b!2744958 () Bool)

(declare-fun e!1729060 () Bool)

(assert (=> b!2744958 (= e!1729060 e!1729058)))

(assert (=> b!2744959 (= e!1729075 (and e!1729073 tp!864046))))

(declare-fun b!2744960 () Bool)

(declare-fun res!1152072 () Bool)

(assert (=> b!2744960 (=> (not res!1152072) (not e!1729069))))

(declare-fun isEmpty!18033 (List!31688) Bool)

(assert (=> b!2744960 (= res!1152072 (not (isEmpty!18033 rulesArg!249)))))

(declare-fun b!2744961 () Bool)

(declare-fun lt!971481 () MutLongMap!3600)

(assert (=> b!2744961 (= e!1729078 (and e!1729060 ((_ is LongMap!3600) lt!971481)))))

(assert (=> b!2744961 (= lt!971481 (v!33226 (underlying!7404 (cache!3649 cacheDown!646))))))

(assert (= (and start!266092 res!1152077) b!2744949))

(assert (= (and b!2744949 res!1152073) b!2744960))

(assert (= (and b!2744960 res!1152072) b!2744942))

(assert (= (and b!2744942 res!1152076) b!2744950))

(assert (= (and b!2744950 res!1152075) b!2744946))

(assert (= (and b!2744946 (not res!1152074)) b!2744951))

(assert (= (and b!2744953 condMapEmpty!16422) mapIsEmpty!16421))

(assert (= (and b!2744953 (not condMapEmpty!16422)) mapNonEmpty!16422))

(assert (= b!2744957 b!2744953))

(assert (= b!2744941 b!2744957))

(assert (= b!2744958 b!2744941))

(assert (= (and b!2744961 ((_ is LongMap!3600) (v!33226 (underlying!7404 (cache!3649 cacheDown!646))))) b!2744958))

(assert (= b!2744952 b!2744961))

(assert (= (and b!2744943 ((_ is HashMap!3506) (cache!3649 cacheDown!646))) b!2744952))

(assert (= start!266092 b!2744943))

(assert (= start!266092 b!2744938))

(assert (= b!2744948 b!2744945))

(assert (= b!2744955 b!2744948))

(assert (= (and start!266092 ((_ is Cons!31588) rulesArg!249)) b!2744955))

(assert (= (and b!2744956 condMapEmpty!16421) mapIsEmpty!16422))

(assert (= (and b!2744956 (not condMapEmpty!16421)) mapNonEmpty!16421))

(assert (= b!2744944 b!2744956))

(assert (= b!2744939 b!2744944))

(assert (= b!2744940 b!2744939))

(assert (= (and b!2744954 ((_ is LongMap!3599) (v!33224 (underlying!7402 (cache!3648 cacheUp!633))))) b!2744940))

(assert (= b!2744959 b!2744954))

(assert (= (and b!2744947 ((_ is HashMap!3505) (cache!3648 cacheUp!633))) b!2744959))

(assert (= start!266092 b!2744947))

(declare-fun m!3161943 () Bool)

(assert (=> b!2744960 m!3161943))

(declare-fun m!3161945 () Bool)

(assert (=> b!2744946 m!3161945))

(declare-fun m!3161947 () Bool)

(assert (=> b!2744946 m!3161947))

(declare-fun m!3161949 () Bool)

(assert (=> b!2744946 m!3161949))

(declare-fun m!3161951 () Bool)

(assert (=> b!2744944 m!3161951))

(declare-fun m!3161953 () Bool)

(assert (=> b!2744944 m!3161953))

(declare-fun m!3161955 () Bool)

(assert (=> start!266092 m!3161955))

(declare-fun m!3161957 () Bool)

(assert (=> start!266092 m!3161957))

(declare-fun m!3161959 () Bool)

(assert (=> start!266092 m!3161959))

(declare-fun m!3161961 () Bool)

(assert (=> mapNonEmpty!16421 m!3161961))

(declare-fun m!3161963 () Bool)

(assert (=> b!2744951 m!3161963))

(declare-fun m!3161965 () Bool)

(assert (=> b!2744951 m!3161965))

(declare-fun m!3161967 () Bool)

(assert (=> mapNonEmpty!16422 m!3161967))

(declare-fun m!3161969 () Bool)

(assert (=> b!2744950 m!3161969))

(declare-fun m!3161971 () Bool)

(assert (=> b!2744942 m!3161971))

(declare-fun m!3161973 () Bool)

(assert (=> b!2744949 m!3161973))

(declare-fun m!3161975 () Bool)

(assert (=> b!2744938 m!3161975))

(declare-fun m!3161977 () Bool)

(assert (=> b!2744948 m!3161977))

(declare-fun m!3161979 () Bool)

(assert (=> b!2744948 m!3161979))

(declare-fun m!3161981 () Bool)

(assert (=> b!2744957 m!3161981))

(declare-fun m!3161983 () Bool)

(assert (=> b!2744957 m!3161983))

(check-sat (not b!2744960) (not b!2744942) (not b!2744944) b_and!201965 (not b!2744948) (not b_next!77951) (not mapNonEmpty!16421) (not b!2744956) (not start!266092) (not b!2744938) (not b!2744949) b_and!201971 (not b_next!77955) (not b_next!77949) (not b_next!77945) (not mapNonEmpty!16422) (not b!2744953) (not b!2744950) (not b!2744955) b_and!201967 (not b!2744946) b_and!201961 (not b!2744957) b_and!201969 b_and!201963 (not b_next!77947) (not b_next!77953) (not b!2744951))
(check-sat (not b_next!77945) b_and!201967 b_and!201961 b_and!201969 b_and!201965 (not b_next!77951) b_and!201971 (not b_next!77955) (not b_next!77949) (not b_next!77953) b_and!201963 (not b_next!77947))
