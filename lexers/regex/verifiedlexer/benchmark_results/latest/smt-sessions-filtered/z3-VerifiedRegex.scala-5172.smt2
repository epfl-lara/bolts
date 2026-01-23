; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266350 () Bool)

(assert start!266350)

(declare-fun b!2747442 () Bool)

(declare-fun b_free!77481 () Bool)

(declare-fun b_next!78185 () Bool)

(assert (=> b!2747442 (= b_free!77481 (not b_next!78185))))

(declare-fun tp!866136 () Bool)

(declare-fun b_and!202205 () Bool)

(assert (=> b!2747442 (= tp!866136 b_and!202205)))

(declare-fun b!2747433 () Bool)

(declare-fun b_free!77483 () Bool)

(declare-fun b_next!78187 () Bool)

(assert (=> b!2747433 (= b_free!77483 (not b_next!78187))))

(declare-fun tp!866129 () Bool)

(declare-fun b_and!202207 () Bool)

(assert (=> b!2747433 (= tp!866129 b_and!202207)))

(declare-fun b!2747437 () Bool)

(declare-fun b_free!77485 () Bool)

(declare-fun b_next!78189 () Bool)

(assert (=> b!2747437 (= b_free!77485 (not b_next!78189))))

(declare-fun tp!866135 () Bool)

(declare-fun b_and!202209 () Bool)

(assert (=> b!2747437 (= tp!866135 b_and!202209)))

(declare-fun b!2747439 () Bool)

(declare-fun b_free!77487 () Bool)

(declare-fun b_next!78191 () Bool)

(assert (=> b!2747439 (= b_free!77487 (not b_next!78191))))

(declare-fun tp!866138 () Bool)

(declare-fun b_and!202211 () Bool)

(assert (=> b!2747439 (= tp!866138 b_and!202211)))

(declare-fun b!2747443 () Bool)

(declare-fun b_free!77489 () Bool)

(declare-fun b_next!78193 () Bool)

(assert (=> b!2747443 (= b_free!77489 (not b_next!78193))))

(declare-fun tp!866139 () Bool)

(declare-fun b_and!202213 () Bool)

(assert (=> b!2747443 (= tp!866139 b_and!202213)))

(declare-fun b_free!77491 () Bool)

(declare-fun b_next!78195 () Bool)

(assert (=> b!2747443 (= b_free!77491 (not b_next!78195))))

(declare-fun tp!866124 () Bool)

(declare-fun b_and!202215 () Bool)

(assert (=> b!2747443 (= tp!866124 b_and!202215)))

(declare-fun b!2747429 () Bool)

(declare-fun e!1731260 () Bool)

(declare-fun e!1731249 () Bool)

(assert (=> b!2747429 (= e!1731260 e!1731249)))

(declare-fun b!2747430 () Bool)

(declare-fun e!1731253 () Bool)

(declare-fun e!1731252 () Bool)

(assert (=> b!2747430 (= e!1731253 e!1731252)))

(declare-fun b!2747431 () Bool)

(declare-fun res!1152675 () Bool)

(declare-fun e!1731247 () Bool)

(assert (=> b!2747431 (=> (not res!1152675) (not e!1731247))))

(declare-datatypes ((C!16176 0))(
  ( (C!16177 (val!10022 Int)) )
))
(declare-datatypes ((Regex!8009 0))(
  ( (ElementMatch!8009 (c!444906 C!16176)) (Concat!13085 (regOne!16530 Regex!8009) (regTwo!16530 Regex!8009)) (EmptyExpr!8009) (Star!8009 (reg!8338 Regex!8009)) (EmptyLang!8009) (Union!8009 (regOne!16531 Regex!8009) (regTwo!16531 Regex!8009)) )
))
(declare-datatypes ((List!31776 0))(
  ( (Nil!31676) (Cons!31676 (h!37096 Regex!8009) (t!227870 List!31776)) )
))
(declare-datatypes ((Context!4454 0))(
  ( (Context!4455 (exprs!2727 List!31776)) )
))
(declare-datatypes ((tuple2!31520 0))(
  ( (tuple2!31521 (_1!18456 Context!4454) (_2!18456 C!16176)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31522 0))(
  ( (tuple2!31523 (_1!18457 tuple2!31520) (_2!18457 (InoxSet Context!4454))) )
))
(declare-datatypes ((List!31777 0))(
  ( (Nil!31677) (Cons!31677 (h!37097 tuple2!31522) (t!227871 List!31777)) )
))
(declare-datatypes ((array!12938 0))(
  ( (array!12939 (arr!5773 (Array (_ BitVec 32) List!31777)) (size!24454 (_ BitVec 32))) )
))
(declare-datatypes ((array!12940 0))(
  ( (array!12941 (arr!5774 (Array (_ BitVec 32) (_ BitVec 64))) (size!24455 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7262 0))(
  ( (LongMapFixedSize!7263 (defaultEntry!4016 Int) (mask!9372 (_ BitVec 32)) (extraKeys!3880 (_ BitVec 32)) (zeroValue!3890 List!31777) (minValue!3890 List!31777) (_size!7305 (_ BitVec 32)) (_keys!3931 array!12940) (_values!3912 array!12938) (_vacant!3692 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14333 0))(
  ( (Cell!14334 (v!33298 LongMapFixedSize!7262)) )
))
(declare-datatypes ((MutLongMap!3631 0))(
  ( (LongMap!3631 (underlying!7465 Cell!14333)) (MutLongMapExt!3630 (__x!20521 Int)) )
))
(declare-datatypes ((Cell!14335 0))(
  ( (Cell!14336 (v!33299 MutLongMap!3631)) )
))
(declare-datatypes ((Hashable!3547 0))(
  ( (HashableExt!3546 (__x!20522 Int)) )
))
(declare-datatypes ((MutableMap!3537 0))(
  ( (MutableMapExt!3536 (__x!20523 Int)) (HashMap!3537 (underlying!7466 Cell!14335) (hashF!5579 Hashable!3547) (_size!7306 (_ BitVec 32)) (defaultValue!3708 Int)) )
))
(declare-datatypes ((CacheUp!2244 0))(
  ( (CacheUp!2245 (cache!3680 MutableMap!3537)) )
))
(declare-fun cacheUp!717 () CacheUp!2244)

(declare-fun valid!2816 (CacheUp!2244) Bool)

(assert (=> b!2747431 (= res!1152675 (valid!2816 cacheUp!717))))

(declare-fun b!2747432 () Bool)

(declare-fun res!1152676 () Bool)

(assert (=> b!2747432 (=> (not res!1152676) (not e!1731247))))

(declare-datatypes ((tuple3!4452 0))(
  ( (tuple3!4453 (_1!18458 Regex!8009) (_2!18458 Context!4454) (_3!2696 C!16176)) )
))
(declare-datatypes ((tuple2!31524 0))(
  ( (tuple2!31525 (_1!18459 tuple3!4452) (_2!18459 (InoxSet Context!4454))) )
))
(declare-datatypes ((List!31778 0))(
  ( (Nil!31678) (Cons!31678 (h!37098 tuple2!31524) (t!227872 List!31778)) )
))
(declare-datatypes ((array!12942 0))(
  ( (array!12943 (arr!5775 (Array (_ BitVec 32) List!31778)) (size!24456 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7264 0))(
  ( (LongMapFixedSize!7265 (defaultEntry!4017 Int) (mask!9373 (_ BitVec 32)) (extraKeys!3881 (_ BitVec 32)) (zeroValue!3891 List!31778) (minValue!3891 List!31778) (_size!7307 (_ BitVec 32)) (_keys!3932 array!12940) (_values!3913 array!12942) (_vacant!3693 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14337 0))(
  ( (Cell!14338 (v!33300 LongMapFixedSize!7264)) )
))
(declare-datatypes ((MutLongMap!3632 0))(
  ( (LongMap!3632 (underlying!7467 Cell!14337)) (MutLongMapExt!3631 (__x!20524 Int)) )
))
(declare-datatypes ((Cell!14339 0))(
  ( (Cell!14340 (v!33301 MutLongMap!3632)) )
))
(declare-datatypes ((Hashable!3548 0))(
  ( (HashableExt!3547 (__x!20525 Int)) )
))
(declare-datatypes ((MutableMap!3538 0))(
  ( (MutableMapExt!3537 (__x!20526 Int)) (HashMap!3538 (underlying!7468 Cell!14339) (hashF!5580 Hashable!3548) (_size!7308 (_ BitVec 32)) (defaultValue!3709 Int)) )
))
(declare-datatypes ((CacheDown!2362 0))(
  ( (CacheDown!2363 (cache!3681 MutableMap!3538)) )
))
(declare-fun cacheDown!730 () CacheDown!2362)

(declare-fun valid!2817 (CacheDown!2362) Bool)

(assert (=> b!2747432 (= res!1152676 (valid!2817 cacheDown!730))))

(declare-fun tp!866123 () Bool)

(declare-fun e!1731258 () Bool)

(declare-fun e!1731257 () Bool)

(declare-fun tp!866134 () Bool)

(declare-fun array_inv!4128 (array!12940) Bool)

(declare-fun array_inv!4129 (array!12942) Bool)

(assert (=> b!2747433 (= e!1731258 (and tp!866129 tp!866123 tp!866134 (array_inv!4128 (_keys!3932 (v!33300 (underlying!7467 (v!33301 (underlying!7468 (cache!3681 cacheDown!730))))))) (array_inv!4129 (_values!3913 (v!33300 (underlying!7467 (v!33301 (underlying!7468 (cache!3681 cacheDown!730))))))) e!1731257))))

(declare-fun b!2747434 () Bool)

(declare-fun e!1731263 () Bool)

(assert (=> b!2747434 (= e!1731263 e!1731258)))

(declare-fun e!1731255 () Bool)

(declare-fun b!2747435 () Bool)

(declare-fun tp!866137 () Bool)

(declare-datatypes ((List!31779 0))(
  ( (Nil!31679) (Cons!31679 (h!37099 C!16176) (t!227873 List!31779)) )
))
(declare-datatypes ((IArray!19799 0))(
  ( (IArray!19800 (innerList!9957 List!31779)) )
))
(declare-datatypes ((Conc!9897 0))(
  ( (Node!9897 (left!24259 Conc!9897) (right!24589 Conc!9897) (csize!20024 Int) (cheight!10108 Int)) (Leaf!15070 (xs!13004 IArray!19799) (csize!20025 Int)) (Empty!9897) )
))
(declare-datatypes ((BalanceConc!19408 0))(
  ( (BalanceConc!19409 (c!444907 Conc!9897)) )
))
(declare-datatypes ((List!31780 0))(
  ( (Nil!31680) (Cons!31680 (h!37100 (_ BitVec 16)) (t!227874 List!31780)) )
))
(declare-datatypes ((TokenValue!5076 0))(
  ( (FloatLiteralValue!10152 (text!35977 List!31780)) (TokenValueExt!5075 (__x!20527 Int)) (Broken!25380 (value!155908 List!31780)) (Object!5175) (End!5076) (Def!5076) (Underscore!5076) (Match!5076) (Else!5076) (Error!5076) (Case!5076) (If!5076) (Extends!5076) (Abstract!5076) (Class!5076) (Val!5076) (DelimiterValue!10152 (del!5136 List!31780)) (KeywordValue!5082 (value!155909 List!31780)) (CommentValue!10152 (value!155910 List!31780)) (WhitespaceValue!10152 (value!155911 List!31780)) (IndentationValue!5076 (value!155912 List!31780)) (String!35285) (Int32!5076) (Broken!25381 (value!155913 List!31780)) (Boolean!5077) (Unit!45546) (OperatorValue!5079 (op!5136 List!31780)) (IdentifierValue!10152 (value!155914 List!31780)) (IdentifierValue!10153 (value!155915 List!31780)) (WhitespaceValue!10153 (value!155916 List!31780)) (True!10152) (False!10152) (Broken!25382 (value!155917 List!31780)) (Broken!25383 (value!155918 List!31780)) (True!10153) (RightBrace!5076) (RightBracket!5076) (Colon!5076) (Null!5076) (Comma!5076) (LeftBracket!5076) (False!10153) (LeftBrace!5076) (ImaginaryLiteralValue!5076 (text!35978 List!31780)) (StringLiteralValue!15228 (value!155919 List!31780)) (EOFValue!5076 (value!155920 List!31780)) (IdentValue!5076 (value!155921 List!31780)) (DelimiterValue!10153 (value!155922 List!31780)) (DedentValue!5076 (value!155923 List!31780)) (NewLineValue!5076 (value!155924 List!31780)) (IntegerValue!15228 (value!155925 (_ BitVec 32)) (text!35979 List!31780)) (IntegerValue!15229 (value!155926 Int) (text!35980 List!31780)) (Times!5076) (Or!5076) (Equal!5076) (Minus!5076) (Broken!25384 (value!155927 List!31780)) (And!5076) (Div!5076) (LessEqual!5076) (Mod!5076) (Concat!13086) (Not!5076) (Plus!5076) (SpaceValue!5076 (value!155928 List!31780)) (IntegerValue!15230 (value!155929 Int) (text!35981 List!31780)) (StringLiteralValue!15229 (text!35982 List!31780)) (FloatLiteralValue!10153 (text!35983 List!31780)) (BytesLiteralValue!5076 (value!155930 List!31780)) (CommentValue!10153 (value!155931 List!31780)) (StringLiteralValue!15230 (value!155932 List!31780)) (ErrorTokenValue!5076 (msg!5137 List!31780)) )
))
(declare-datatypes ((TokenValueInjection!9592 0))(
  ( (TokenValueInjection!9593 (toValue!6852 Int) (toChars!6711 Int)) )
))
(declare-datatypes ((String!35286 0))(
  ( (String!35287 (value!155933 String)) )
))
(declare-datatypes ((Rule!9508 0))(
  ( (Rule!9509 (regex!4854 Regex!8009) (tag!5358 String!35286) (isSeparator!4854 Bool) (transformation!4854 TokenValueInjection!9592)) )
))
(declare-fun rule!196 () Rule!9508)

(declare-fun e!1731264 () Bool)

(declare-fun inv!43031 (String!35286) Bool)

(declare-fun inv!43034 (TokenValueInjection!9592) Bool)

(assert (=> b!2747435 (= e!1731255 (and tp!866137 (inv!43031 (tag!5358 rule!196)) (inv!43034 (transformation!4854 rule!196)) e!1731264))))

(declare-fun b!2747436 () Bool)

(declare-fun e!1731250 () Bool)

(assert (=> b!2747436 (= e!1731250 e!1731263)))

(declare-fun mapNonEmpty!16573 () Bool)

(declare-fun mapRes!16574 () Bool)

(declare-fun tp!866132 () Bool)

(declare-fun tp!866128 () Bool)

(assert (=> mapNonEmpty!16573 (= mapRes!16574 (and tp!866132 tp!866128))))

(declare-fun mapValue!16573 () List!31778)

(declare-fun mapKey!16573 () (_ BitVec 32))

(declare-fun mapRest!16573 () (Array (_ BitVec 32) List!31778))

(assert (=> mapNonEmpty!16573 (= (arr!5775 (_values!3913 (v!33300 (underlying!7467 (v!33301 (underlying!7468 (cache!3681 cacheDown!730))))))) (store mapRest!16573 mapKey!16573 mapValue!16573))))

(declare-fun b!2747438 () Bool)

(declare-fun e!1731251 () Bool)

(declare-fun e!1731266 () Bool)

(assert (=> b!2747438 (= e!1731251 e!1731266)))

(declare-fun mapIsEmpty!16573 () Bool)

(assert (=> mapIsEmpty!16573 mapRes!16574))

(declare-fun e!1731254 () Bool)

(assert (=> b!2747439 (= e!1731249 (and e!1731254 tp!866138))))

(declare-fun b!2747440 () Bool)

(declare-fun e!1731259 () Bool)

(declare-fun lt!971877 () MutLongMap!3631)

(get-info :version)

(assert (=> b!2747440 (= e!1731254 (and e!1731259 ((_ is LongMap!3631) lt!971877)))))

(assert (=> b!2747440 (= lt!971877 (v!33299 (underlying!7466 (cache!3680 cacheUp!717))))))

(declare-fun b!2747441 () Bool)

(declare-fun tp!866133 () Bool)

(assert (=> b!2747441 (= e!1731257 (and tp!866133 mapRes!16574))))

(declare-fun condMapEmpty!16574 () Bool)

(declare-fun mapDefault!16574 () List!31778)

(assert (=> b!2747441 (= condMapEmpty!16574 (= (arr!5775 (_values!3913 (v!33300 (underlying!7467 (v!33301 (underlying!7468 (cache!3681 cacheDown!730))))))) ((as const (Array (_ BitVec 32) List!31778)) mapDefault!16574)))))

(declare-fun tp!866127 () Bool)

(declare-fun tp!866125 () Bool)

(declare-fun e!1731261 () Bool)

(declare-fun array_inv!4130 (array!12938) Bool)

(assert (=> b!2747442 (= e!1731252 (and tp!866136 tp!866125 tp!866127 (array_inv!4128 (_keys!3931 (v!33298 (underlying!7465 (v!33299 (underlying!7466 (cache!3680 cacheUp!717))))))) (array_inv!4130 (_values!3912 (v!33298 (underlying!7465 (v!33299 (underlying!7466 (cache!3680 cacheUp!717))))))) e!1731261))))

(assert (=> b!2747443 (= e!1731264 (and tp!866139 tp!866124))))

(declare-fun b!2747444 () Bool)

(assert (=> b!2747444 (= e!1731259 e!1731253)))

(declare-fun b!2747445 () Bool)

(declare-fun e!1731262 () Bool)

(declare-fun lt!971878 () MutLongMap!3632)

(assert (=> b!2747445 (= e!1731262 (and e!1731250 ((_ is LongMap!3632) lt!971878)))))

(assert (=> b!2747445 (= lt!971878 (v!33301 (underlying!7468 (cache!3681 cacheDown!730))))))

(declare-fun b!2747446 () Bool)

(declare-fun tp!866126 () Bool)

(declare-fun mapRes!16573 () Bool)

(assert (=> b!2747446 (= e!1731261 (and tp!866126 mapRes!16573))))

(declare-fun condMapEmpty!16573 () Bool)

(declare-fun mapDefault!16573 () List!31777)

(assert (=> b!2747446 (= condMapEmpty!16573 (= (arr!5773 (_values!3912 (v!33298 (underlying!7465 (v!33299 (underlying!7466 (cache!3680 cacheUp!717))))))) ((as const (Array (_ BitVec 32) List!31777)) mapDefault!16573)))))

(declare-fun b!2747447 () Bool)

(declare-fun res!1152673 () Bool)

(assert (=> b!2747447 (=> (not res!1152673) (not e!1731247))))

(declare-datatypes ((LexerInterface!4447 0))(
  ( (LexerInterfaceExt!4444 (__x!20528 Int)) (Lexer!4445) )
))
(declare-fun thiss!16130 () LexerInterface!4447)

(declare-fun ruleValid!1594 (LexerInterface!4447 Rule!9508) Bool)

(assert (=> b!2747447 (= res!1152673 (ruleValid!1594 thiss!16130 rule!196))))

(declare-fun b!2747448 () Bool)

(assert (=> b!2747448 (= e!1731247 false)))

(declare-fun res!1152674 () Bool)

(assert (=> start!266350 (=> (not res!1152674) (not e!1731247))))

(assert (=> start!266350 (= res!1152674 ((_ is Lexer!4445) thiss!16130))))

(assert (=> start!266350 e!1731247))

(assert (=> start!266350 true))

(assert (=> start!266350 e!1731255))

(declare-fun inv!43035 (CacheUp!2244) Bool)

(assert (=> start!266350 (and (inv!43035 cacheUp!717) e!1731260)))

(declare-fun inv!43036 (CacheDown!2362) Bool)

(assert (=> start!266350 (and (inv!43036 cacheDown!730) e!1731251)))

(assert (=> b!2747437 (= e!1731266 (and e!1731262 tp!866135))))

(declare-fun mapNonEmpty!16574 () Bool)

(declare-fun tp!866131 () Bool)

(declare-fun tp!866130 () Bool)

(assert (=> mapNonEmpty!16574 (= mapRes!16573 (and tp!866131 tp!866130))))

(declare-fun mapKey!16574 () (_ BitVec 32))

(declare-fun mapValue!16574 () List!31777)

(declare-fun mapRest!16574 () (Array (_ BitVec 32) List!31777))

(assert (=> mapNonEmpty!16574 (= (arr!5773 (_values!3912 (v!33298 (underlying!7465 (v!33299 (underlying!7466 (cache!3680 cacheUp!717))))))) (store mapRest!16574 mapKey!16574 mapValue!16574))))

(declare-fun mapIsEmpty!16574 () Bool)

(assert (=> mapIsEmpty!16574 mapRes!16573))

(assert (= (and start!266350 res!1152674) b!2747447))

(assert (= (and b!2747447 res!1152673) b!2747431))

(assert (= (and b!2747431 res!1152675) b!2747432))

(assert (= (and b!2747432 res!1152676) b!2747448))

(assert (= b!2747435 b!2747443))

(assert (= start!266350 b!2747435))

(assert (= (and b!2747446 condMapEmpty!16573) mapIsEmpty!16574))

(assert (= (and b!2747446 (not condMapEmpty!16573)) mapNonEmpty!16574))

(assert (= b!2747442 b!2747446))

(assert (= b!2747430 b!2747442))

(assert (= b!2747444 b!2747430))

(assert (= (and b!2747440 ((_ is LongMap!3631) (v!33299 (underlying!7466 (cache!3680 cacheUp!717))))) b!2747444))

(assert (= b!2747439 b!2747440))

(assert (= (and b!2747429 ((_ is HashMap!3537) (cache!3680 cacheUp!717))) b!2747439))

(assert (= start!266350 b!2747429))

(assert (= (and b!2747441 condMapEmpty!16574) mapIsEmpty!16573))

(assert (= (and b!2747441 (not condMapEmpty!16574)) mapNonEmpty!16573))

(assert (= b!2747433 b!2747441))

(assert (= b!2747434 b!2747433))

(assert (= b!2747436 b!2747434))

(assert (= (and b!2747445 ((_ is LongMap!3632) (v!33301 (underlying!7468 (cache!3681 cacheDown!730))))) b!2747436))

(assert (= b!2747437 b!2747445))

(assert (= (and b!2747438 ((_ is HashMap!3538) (cache!3681 cacheDown!730))) b!2747437))

(assert (= start!266350 b!2747438))

(declare-fun m!3163507 () Bool)

(assert (=> mapNonEmpty!16574 m!3163507))

(declare-fun m!3163509 () Bool)

(assert (=> b!2747442 m!3163509))

(declare-fun m!3163511 () Bool)

(assert (=> b!2747442 m!3163511))

(declare-fun m!3163513 () Bool)

(assert (=> b!2747435 m!3163513))

(declare-fun m!3163515 () Bool)

(assert (=> b!2747435 m!3163515))

(declare-fun m!3163517 () Bool)

(assert (=> b!2747447 m!3163517))

(declare-fun m!3163519 () Bool)

(assert (=> b!2747432 m!3163519))

(declare-fun m!3163521 () Bool)

(assert (=> mapNonEmpty!16573 m!3163521))

(declare-fun m!3163523 () Bool)

(assert (=> start!266350 m!3163523))

(declare-fun m!3163525 () Bool)

(assert (=> start!266350 m!3163525))

(declare-fun m!3163527 () Bool)

(assert (=> b!2747433 m!3163527))

(declare-fun m!3163529 () Bool)

(assert (=> b!2747433 m!3163529))

(declare-fun m!3163531 () Bool)

(assert (=> b!2747431 m!3163531))

(check-sat (not b_next!78185) (not b_next!78193) (not b!2747432) (not b_next!78189) b_and!202205 (not b_next!78191) (not mapNonEmpty!16574) b_and!202213 b_and!202209 (not b!2747441) (not b_next!78195) (not mapNonEmpty!16573) (not b!2747447) (not b!2747433) b_and!202215 b_and!202207 b_and!202211 (not start!266350) (not b!2747446) (not b!2747442) (not b!2747435) (not b!2747431) (not b_next!78187))
(check-sat (not b_next!78185) b_and!202209 (not b_next!78195) (not b_next!78193) (not b_next!78189) b_and!202215 b_and!202205 (not b_next!78191) b_and!202213 (not b_next!78187) b_and!202207 b_and!202211)
