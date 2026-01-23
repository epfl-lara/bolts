; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266464 () Bool)

(assert start!266464)

(declare-fun b!2748709 () Bool)

(declare-fun b_free!77625 () Bool)

(declare-fun b_next!78329 () Bool)

(assert (=> b!2748709 (= b_free!77625 (not b_next!78329))))

(declare-fun tp!867201 () Bool)

(declare-fun b_and!202349 () Bool)

(assert (=> b!2748709 (= tp!867201 b_and!202349)))

(declare-fun b!2748714 () Bool)

(declare-fun b_free!77627 () Bool)

(declare-fun b_next!78331 () Bool)

(assert (=> b!2748714 (= b_free!77627 (not b_next!78331))))

(declare-fun tp!867195 () Bool)

(declare-fun b_and!202351 () Bool)

(assert (=> b!2748714 (= tp!867195 b_and!202351)))

(declare-fun b!2748724 () Bool)

(declare-fun b_free!77629 () Bool)

(declare-fun b_next!78333 () Bool)

(assert (=> b!2748724 (= b_free!77629 (not b_next!78333))))

(declare-fun tp!867191 () Bool)

(declare-fun b_and!202353 () Bool)

(assert (=> b!2748724 (= tp!867191 b_and!202353)))

(declare-fun b!2748723 () Bool)

(declare-fun b_free!77631 () Bool)

(declare-fun b_next!78335 () Bool)

(assert (=> b!2748723 (= b_free!77631 (not b_next!78335))))

(declare-fun tp!867196 () Bool)

(declare-fun b_and!202355 () Bool)

(assert (=> b!2748723 (= tp!867196 b_and!202355)))

(declare-fun b!2748719 () Bool)

(declare-fun b_free!77633 () Bool)

(declare-fun b_next!78337 () Bool)

(assert (=> b!2748719 (= b_free!77633 (not b_next!78337))))

(declare-fun tp!867187 () Bool)

(declare-fun b_and!202357 () Bool)

(assert (=> b!2748719 (= tp!867187 b_and!202357)))

(declare-fun b_free!77635 () Bool)

(declare-fun b_next!78339 () Bool)

(assert (=> b!2748719 (= b_free!77635 (not b_next!78339))))

(declare-fun tp!867190 () Bool)

(declare-fun b_and!202359 () Bool)

(assert (=> b!2748719 (= tp!867190 b_and!202359)))

(declare-fun b!2748706 () Bool)

(declare-fun e!1732398 () Bool)

(declare-fun e!1732409 () Bool)

(assert (=> b!2748706 (= e!1732398 e!1732409)))

(declare-fun b!2748707 () Bool)

(declare-fun e!1732406 () Bool)

(declare-datatypes ((C!16200 0))(
  ( (C!16201 (val!10034 Int)) )
))
(declare-datatypes ((List!31832 0))(
  ( (Nil!31732) (Cons!31732 (h!37152 C!16200) (t!227926 List!31832)) )
))
(declare-datatypes ((IArray!19823 0))(
  ( (IArray!19824 (innerList!9969 List!31832)) )
))
(declare-datatypes ((Conc!9909 0))(
  ( (Node!9909 (left!24277 Conc!9909) (right!24607 Conc!9909) (csize!20048 Int) (cheight!10120 Int)) (Leaf!15088 (xs!13016 IArray!19823) (csize!20049 Int)) (Empty!9909) )
))
(declare-datatypes ((BalanceConc!19432 0))(
  ( (BalanceConc!19433 (c!444957 Conc!9909)) )
))
(declare-datatypes ((List!31833 0))(
  ( (Nil!31733) (Cons!31733 (h!37153 (_ BitVec 16)) (t!227927 List!31833)) )
))
(declare-datatypes ((TokenValue!5085 0))(
  ( (FloatLiteralValue!10170 (text!36040 List!31833)) (TokenValueExt!5084 (__x!20606 Int)) (Broken!25425 (value!156162 List!31833)) (Object!5184) (End!5085) (Def!5085) (Underscore!5085) (Match!5085) (Else!5085) (Error!5085) (Case!5085) (If!5085) (Extends!5085) (Abstract!5085) (Class!5085) (Val!5085) (DelimiterValue!10170 (del!5145 List!31833)) (KeywordValue!5091 (value!156163 List!31833)) (CommentValue!10170 (value!156164 List!31833)) (WhitespaceValue!10170 (value!156165 List!31833)) (IndentationValue!5085 (value!156166 List!31833)) (String!35336) (Int32!5085) (Broken!25426 (value!156167 List!31833)) (Boolean!5086) (Unit!45559) (OperatorValue!5088 (op!5145 List!31833)) (IdentifierValue!10170 (value!156168 List!31833)) (IdentifierValue!10171 (value!156169 List!31833)) (WhitespaceValue!10171 (value!156170 List!31833)) (True!10170) (False!10170) (Broken!25427 (value!156171 List!31833)) (Broken!25428 (value!156172 List!31833)) (True!10171) (RightBrace!5085) (RightBracket!5085) (Colon!5085) (Null!5085) (Comma!5085) (LeftBracket!5085) (False!10171) (LeftBrace!5085) (ImaginaryLiteralValue!5085 (text!36041 List!31833)) (StringLiteralValue!15255 (value!156173 List!31833)) (EOFValue!5085 (value!156174 List!31833)) (IdentValue!5085 (value!156175 List!31833)) (DelimiterValue!10171 (value!156176 List!31833)) (DedentValue!5085 (value!156177 List!31833)) (NewLineValue!5085 (value!156178 List!31833)) (IntegerValue!15255 (value!156179 (_ BitVec 32)) (text!36042 List!31833)) (IntegerValue!15256 (value!156180 Int) (text!36043 List!31833)) (Times!5085) (Or!5085) (Equal!5085) (Minus!5085) (Broken!25429 (value!156181 List!31833)) (And!5085) (Div!5085) (LessEqual!5085) (Mod!5085) (Concat!13106) (Not!5085) (Plus!5085) (SpaceValue!5085 (value!156182 List!31833)) (IntegerValue!15257 (value!156183 Int) (text!36044 List!31833)) (StringLiteralValue!15256 (text!36045 List!31833)) (FloatLiteralValue!10171 (text!36046 List!31833)) (BytesLiteralValue!5085 (value!156184 List!31833)) (CommentValue!10171 (value!156185 List!31833)) (StringLiteralValue!15257 (value!156186 List!31833)) (ErrorTokenValue!5085 (msg!5146 List!31833)) )
))
(declare-datatypes ((TokenValueInjection!9610 0))(
  ( (TokenValueInjection!9611 (toValue!6861 Int) (toChars!6720 Int)) )
))
(declare-datatypes ((Regex!8021 0))(
  ( (ElementMatch!8021 (c!444958 C!16200)) (Concat!13107 (regOne!16554 Regex!8021) (regTwo!16554 Regex!8021)) (EmptyExpr!8021) (Star!8021 (reg!8350 Regex!8021)) (EmptyLang!8021) (Union!8021 (regOne!16555 Regex!8021) (regTwo!16555 Regex!8021)) )
))
(declare-datatypes ((String!35337 0))(
  ( (String!35338 (value!156187 String)) )
))
(declare-datatypes ((Rule!9526 0))(
  ( (Rule!9527 (regex!4863 Regex!8021) (tag!5367 String!35337) (isSeparator!4863 Bool) (transformation!4863 TokenValueInjection!9610)) )
))
(declare-fun rule!196 () Rule!9526)

(declare-datatypes ((List!31834 0))(
  ( (Nil!31734) (Cons!31734 (h!37154 Regex!8021) (t!227928 List!31834)) )
))
(declare-datatypes ((Context!4478 0))(
  ( (Context!4479 (exprs!2739 List!31834)) )
))
(declare-datatypes ((tuple3!4494 0))(
  ( (tuple3!4495 (_1!18525 Regex!8021) (_2!18525 Context!4478) (_3!2717 C!16200)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31616 0))(
  ( (tuple2!31617 (_1!18526 tuple3!4494) (_2!18526 (InoxSet Context!4478))) )
))
(declare-datatypes ((tuple2!31618 0))(
  ( (tuple2!31619 (_1!18527 Context!4478) (_2!18527 C!16200)) )
))
(declare-datatypes ((tuple2!31620 0))(
  ( (tuple2!31621 (_1!18528 tuple2!31618) (_2!18528 (InoxSet Context!4478))) )
))
(declare-datatypes ((List!31835 0))(
  ( (Nil!31735) (Cons!31735 (h!37155 tuple2!31620) (t!227929 List!31835)) )
))
(declare-datatypes ((array!13017 0))(
  ( (array!13018 (arr!5808 (Array (_ BitVec 32) List!31835)) (size!24495 (_ BitVec 32))) )
))
(declare-datatypes ((array!13019 0))(
  ( (array!13020 (arr!5809 (Array (_ BitVec 32) (_ BitVec 64))) (size!24496 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7308 0))(
  ( (LongMapFixedSize!7309 (defaultEntry!4039 Int) (mask!9401 (_ BitVec 32)) (extraKeys!3903 (_ BitVec 32)) (zeroValue!3913 List!31835) (minValue!3913 List!31835) (_size!7351 (_ BitVec 32)) (_keys!3954 array!13019) (_values!3935 array!13017) (_vacant!3715 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14425 0))(
  ( (Cell!14426 (v!33345 LongMapFixedSize!7308)) )
))
(declare-datatypes ((Hashable!3570 0))(
  ( (HashableExt!3569 (__x!20607 Int)) )
))
(declare-datatypes ((List!31836 0))(
  ( (Nil!31736) (Cons!31736 (h!37156 tuple2!31616) (t!227930 List!31836)) )
))
(declare-datatypes ((array!13021 0))(
  ( (array!13022 (arr!5810 (Array (_ BitVec 32) List!31836)) (size!24497 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7310 0))(
  ( (LongMapFixedSize!7311 (defaultEntry!4040 Int) (mask!9402 (_ BitVec 32)) (extraKeys!3904 (_ BitVec 32)) (zeroValue!3914 List!31836) (minValue!3914 List!31836) (_size!7352 (_ BitVec 32)) (_keys!3955 array!13019) (_values!3936 array!13021) (_vacant!3716 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14427 0))(
  ( (Cell!14428 (v!33346 LongMapFixedSize!7310)) )
))
(declare-datatypes ((MutLongMap!3654 0))(
  ( (LongMap!3654 (underlying!7511 Cell!14427)) (MutLongMapExt!3653 (__x!20608 Int)) )
))
(declare-datatypes ((Cell!14429 0))(
  ( (Cell!14430 (v!33347 MutLongMap!3654)) )
))
(declare-datatypes ((Hashable!3571 0))(
  ( (HashableExt!3570 (__x!20609 Int)) )
))
(declare-datatypes ((MutableMap!3560 0))(
  ( (MutableMapExt!3559 (__x!20610 Int)) (HashMap!3560 (underlying!7512 Cell!14429) (hashF!5602 Hashable!3571) (_size!7353 (_ BitVec 32)) (defaultValue!3731 Int)) )
))
(declare-datatypes ((CacheDown!2386 0))(
  ( (CacheDown!2387 (cache!3703 MutableMap!3560)) )
))
(declare-datatypes ((MutLongMap!3655 0))(
  ( (LongMap!3655 (underlying!7513 Cell!14425)) (MutLongMapExt!3654 (__x!20611 Int)) )
))
(declare-datatypes ((Cell!14431 0))(
  ( (Cell!14432 (v!33348 MutLongMap!3655)) )
))
(declare-datatypes ((tuple2!31622 0))(
  ( (tuple2!31623 (_1!18529 BalanceConc!19432) (_2!18529 BalanceConc!19432)) )
))
(declare-datatypes ((MutableMap!3561 0))(
  ( (MutableMapExt!3560 (__x!20612 Int)) (HashMap!3561 (underlying!7514 Cell!14431) (hashF!5603 Hashable!3570) (_size!7354 (_ BitVec 32)) (defaultValue!3732 Int)) )
))
(declare-datatypes ((CacheUp!2266 0))(
  ( (CacheUp!2267 (cache!3704 MutableMap!3561)) )
))
(declare-datatypes ((tuple3!4496 0))(
  ( (tuple3!4497 (_1!18530 tuple2!31622) (_2!18530 CacheUp!2266) (_3!2718 CacheDown!2386)) )
))
(declare-fun lt!972063 () tuple3!4496)

(declare-datatypes ((Token!9130 0))(
  ( (Token!9131 (value!156188 TokenValue!5085) (rule!7291 Rule!9526) (size!24498 Int) (originalCharacters!5596 List!31832)) )
))
(declare-fun inv!43101 (Token!9130) Bool)

(declare-fun apply!7431 (TokenValueInjection!9610 BalanceConc!19432) TokenValue!5085)

(declare-fun size!24499 (BalanceConc!19432) Int)

(declare-fun list!12011 (BalanceConc!19432) List!31832)

(assert (=> b!2748707 (= e!1732406 (not (inv!43101 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063)))))))))

(declare-datatypes ((Unit!45560 0))(
  ( (Unit!45561) )
))
(declare-fun lt!972061 () Unit!45560)

(declare-fun lemmaSemiInverse!1146 (TokenValueInjection!9610 BalanceConc!19432) Unit!45560)

(assert (=> b!2748707 (= lt!972061 (lemmaSemiInverse!1146 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))))))

(declare-fun e!1732391 () Bool)

(assert (=> b!2748707 e!1732391))

(declare-fun res!1152978 () Bool)

(assert (=> b!2748707 (=> res!1152978 e!1732391)))

(declare-datatypes ((tuple2!31624 0))(
  ( (tuple2!31625 (_1!18531 List!31832) (_2!18531 List!31832)) )
))
(declare-fun lt!972060 () tuple2!31624)

(declare-fun isEmpty!18057 (List!31832) Bool)

(assert (=> b!2748707 (= res!1152978 (isEmpty!18057 (_1!18531 lt!972060)))))

(declare-fun lt!972059 () List!31832)

(declare-fun findLongestMatchInner!806 (Regex!8021 List!31832 Int List!31832 List!31832 Int) tuple2!31624)

(declare-fun size!24500 (List!31832) Int)

(assert (=> b!2748707 (= lt!972060 (findLongestMatchInner!806 (regex!4863 rule!196) Nil!31732 (size!24500 Nil!31732) lt!972059 lt!972059 (size!24500 lt!972059)))))

(declare-fun lt!972062 () Unit!45560)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!779 (Regex!8021 List!31832) Unit!45560)

(assert (=> b!2748707 (= lt!972062 (longestMatchIsAcceptedByMatchOrIsEmpty!779 (regex!4863 rule!196) lt!972059))))

(declare-fun input!1561 () BalanceConc!19432)

(assert (=> b!2748707 (= lt!972059 (list!12011 input!1561))))

(declare-fun b!2748708 () Bool)

(declare-fun e!1732390 () Bool)

(declare-fun e!1732407 () Bool)

(assert (=> b!2748708 (= e!1732390 e!1732407)))

(declare-fun res!1152980 () Bool)

(declare-fun e!1732399 () Bool)

(assert (=> start!266464 (=> (not res!1152980) (not e!1732399))))

(declare-datatypes ((LexerInterface!4454 0))(
  ( (LexerInterfaceExt!4451 (__x!20613 Int)) (Lexer!4452) )
))
(declare-fun thiss!16130 () LexerInterface!4454)

(get-info :version)

(assert (=> start!266464 (= res!1152980 ((_ is Lexer!4452) thiss!16130))))

(assert (=> start!266464 e!1732399))

(declare-fun e!1732397 () Bool)

(declare-fun inv!43102 (BalanceConc!19432) Bool)

(assert (=> start!266464 (and (inv!43102 input!1561) e!1732397)))

(declare-fun cacheUp!717 () CacheUp!2266)

(declare-fun e!1732396 () Bool)

(declare-fun inv!43103 (CacheUp!2266) Bool)

(assert (=> start!266464 (and (inv!43103 cacheUp!717) e!1732396)))

(assert (=> start!266464 true))

(declare-fun cacheDown!730 () CacheDown!2386)

(declare-fun inv!43104 (CacheDown!2386) Bool)

(assert (=> start!266464 (and (inv!43104 cacheDown!730) e!1732398)))

(declare-fun e!1732402 () Bool)

(assert (=> start!266464 e!1732402))

(declare-fun tp!867192 () Bool)

(declare-fun e!1732395 () Bool)

(declare-fun tp!867185 () Bool)

(declare-fun array_inv!4152 (array!13019) Bool)

(declare-fun array_inv!4153 (array!13021) Bool)

(assert (=> b!2748709 (= e!1732407 (and tp!867201 tp!867192 tp!867185 (array_inv!4152 (_keys!3955 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))))) (array_inv!4153 (_values!3936 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))))) e!1732395))))

(declare-fun b!2748710 () Bool)

(declare-fun res!1152979 () Bool)

(assert (=> b!2748710 (=> (not res!1152979) (not e!1732399))))

(declare-fun valid!2833 (CacheDown!2386) Bool)

(assert (=> b!2748710 (= res!1152979 (valid!2833 cacheDown!730))))

(declare-fun b!2748711 () Bool)

(declare-fun tp!867199 () Bool)

(declare-fun mapRes!16663 () Bool)

(assert (=> b!2748711 (= e!1732395 (and tp!867199 mapRes!16663))))

(declare-fun condMapEmpty!16663 () Bool)

(declare-fun mapDefault!16664 () List!31836)

(assert (=> b!2748711 (= condMapEmpty!16663 (= (arr!5810 (_values!3936 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))))) ((as const (Array (_ BitVec 32) List!31836)) mapDefault!16664)))))

(declare-fun e!1732410 () Bool)

(declare-fun tp!867188 () Bool)

(declare-fun b!2748712 () Bool)

(declare-fun inv!43097 (String!35337) Bool)

(declare-fun inv!43105 (TokenValueInjection!9610) Bool)

(assert (=> b!2748712 (= e!1732402 (and tp!867188 (inv!43097 (tag!5367 rule!196)) (inv!43105 (transformation!4863 rule!196)) e!1732410))))

(declare-fun b!2748713 () Bool)

(declare-fun res!1152976 () Bool)

(assert (=> b!2748713 (=> (not res!1152976) (not e!1732399))))

(declare-fun ruleValid!1600 (LexerInterface!4454 Rule!9526) Bool)

(assert (=> b!2748713 (= res!1152976 (ruleValid!1600 thiss!16130 rule!196))))

(declare-fun e!1732408 () Bool)

(assert (=> b!2748714 (= e!1732409 (and e!1732408 tp!867195))))

(declare-fun b!2748715 () Bool)

(assert (=> b!2748715 (= e!1732399 e!1732406)))

(declare-fun res!1152977 () Bool)

(assert (=> b!2748715 (=> (not res!1152977) (not e!1732406))))

(declare-fun findLongestMatchWithZipperSequence!197 (Regex!8021 BalanceConc!19432) tuple2!31622)

(assert (=> b!2748715 (= res!1152977 (= (_1!18530 lt!972063) (findLongestMatchWithZipperSequence!197 (regex!4863 rule!196) input!1561)))))

(declare-fun findLongestMatchWithZipperSequenceMem!18 (Regex!8021 BalanceConc!19432 CacheUp!2266 CacheDown!2386) tuple3!4496)

(assert (=> b!2748715 (= lt!972063 (findLongestMatchWithZipperSequenceMem!18 (regex!4863 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(declare-fun b!2748716 () Bool)

(declare-fun e!1732400 () Bool)

(declare-fun tp!867189 () Bool)

(declare-fun mapRes!16664 () Bool)

(assert (=> b!2748716 (= e!1732400 (and tp!867189 mapRes!16664))))

(declare-fun condMapEmpty!16664 () Bool)

(declare-fun mapDefault!16663 () List!31835)

(assert (=> b!2748716 (= condMapEmpty!16664 (= (arr!5808 (_values!3935 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))))) ((as const (Array (_ BitVec 32) List!31835)) mapDefault!16663)))))

(declare-fun b!2748717 () Bool)

(declare-fun res!1152981 () Bool)

(assert (=> b!2748717 (=> (not res!1152981) (not e!1732399))))

(declare-fun valid!2834 (CacheUp!2266) Bool)

(assert (=> b!2748717 (= res!1152981 (valid!2834 cacheUp!717))))

(declare-fun mapNonEmpty!16663 () Bool)

(declare-fun tp!867193 () Bool)

(declare-fun tp!867184 () Bool)

(assert (=> mapNonEmpty!16663 (= mapRes!16663 (and tp!867193 tp!867184))))

(declare-fun mapKey!16663 () (_ BitVec 32))

(declare-fun mapValue!16664 () List!31836)

(declare-fun mapRest!16664 () (Array (_ BitVec 32) List!31836))

(assert (=> mapNonEmpty!16663 (= (arr!5810 (_values!3936 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))))) (store mapRest!16664 mapKey!16663 mapValue!16664))))

(declare-fun b!2748718 () Bool)

(declare-fun e!1732392 () Bool)

(declare-fun e!1732412 () Bool)

(assert (=> b!2748718 (= e!1732392 e!1732412)))

(assert (=> b!2748719 (= e!1732410 (and tp!867187 tp!867190))))

(declare-fun b!2748720 () Bool)

(declare-fun e!1732394 () Bool)

(assert (=> b!2748720 (= e!1732396 e!1732394)))

(declare-fun b!2748721 () Bool)

(declare-fun e!1732403 () Bool)

(assert (=> b!2748721 (= e!1732403 e!1732390)))

(declare-fun mapNonEmpty!16664 () Bool)

(declare-fun tp!867197 () Bool)

(declare-fun tp!867186 () Bool)

(assert (=> mapNonEmpty!16664 (= mapRes!16664 (and tp!867197 tp!867186))))

(declare-fun mapKey!16664 () (_ BitVec 32))

(declare-fun mapValue!16663 () List!31835)

(declare-fun mapRest!16663 () (Array (_ BitVec 32) List!31835))

(assert (=> mapNonEmpty!16664 (= (arr!5808 (_values!3935 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))))) (store mapRest!16663 mapKey!16664 mapValue!16663))))

(declare-fun b!2748722 () Bool)

(declare-fun res!1152982 () Bool)

(assert (=> b!2748722 (=> (not res!1152982) (not e!1732406))))

(declare-fun isEmpty!18058 (BalanceConc!19432) Bool)

(assert (=> b!2748722 (= res!1152982 (not (isEmpty!18058 (_1!18529 (_1!18530 lt!972063)))))))

(declare-fun e!1732393 () Bool)

(assert (=> b!2748723 (= e!1732394 (and e!1732393 tp!867196))))

(declare-fun tp!867200 () Bool)

(declare-fun tp!867194 () Bool)

(declare-fun array_inv!4154 (array!13017) Bool)

(assert (=> b!2748724 (= e!1732412 (and tp!867191 tp!867194 tp!867200 (array_inv!4152 (_keys!3954 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))))) (array_inv!4154 (_values!3935 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))))) e!1732400))))

(declare-fun b!2748725 () Bool)

(declare-fun e!1732411 () Bool)

(assert (=> b!2748725 (= e!1732411 e!1732392)))

(declare-fun mapIsEmpty!16663 () Bool)

(assert (=> mapIsEmpty!16663 mapRes!16664))

(declare-fun b!2748726 () Bool)

(declare-fun matchR!3658 (Regex!8021 List!31832) Bool)

(assert (=> b!2748726 (= e!1732391 (matchR!3658 (regex!4863 rule!196) (_1!18531 lt!972060)))))

(declare-fun b!2748727 () Bool)

(declare-fun lt!972058 () MutLongMap!3654)

(assert (=> b!2748727 (= e!1732408 (and e!1732403 ((_ is LongMap!3654) lt!972058)))))

(assert (=> b!2748727 (= lt!972058 (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))))

(declare-fun b!2748728 () Bool)

(declare-fun tp!867198 () Bool)

(declare-fun inv!43106 (Conc!9909) Bool)

(assert (=> b!2748728 (= e!1732397 (and (inv!43106 (c!444957 input!1561)) tp!867198))))

(declare-fun mapIsEmpty!16664 () Bool)

(assert (=> mapIsEmpty!16664 mapRes!16663))

(declare-fun b!2748729 () Bool)

(declare-fun lt!972064 () MutLongMap!3655)

(assert (=> b!2748729 (= e!1732393 (and e!1732411 ((_ is LongMap!3655) lt!972064)))))

(assert (=> b!2748729 (= lt!972064 (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))))

(assert (= (and start!266464 res!1152980) b!2748713))

(assert (= (and b!2748713 res!1152976) b!2748717))

(assert (= (and b!2748717 res!1152981) b!2748710))

(assert (= (and b!2748710 res!1152979) b!2748715))

(assert (= (and b!2748715 res!1152977) b!2748722))

(assert (= (and b!2748722 res!1152982) b!2748707))

(assert (= (and b!2748707 (not res!1152978)) b!2748726))

(assert (= start!266464 b!2748728))

(assert (= (and b!2748716 condMapEmpty!16664) mapIsEmpty!16663))

(assert (= (and b!2748716 (not condMapEmpty!16664)) mapNonEmpty!16664))

(assert (= b!2748724 b!2748716))

(assert (= b!2748718 b!2748724))

(assert (= b!2748725 b!2748718))

(assert (= (and b!2748729 ((_ is LongMap!3655) (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))) b!2748725))

(assert (= b!2748723 b!2748729))

(assert (= (and b!2748720 ((_ is HashMap!3561) (cache!3704 cacheUp!717))) b!2748723))

(assert (= start!266464 b!2748720))

(assert (= (and b!2748711 condMapEmpty!16663) mapIsEmpty!16664))

(assert (= (and b!2748711 (not condMapEmpty!16663)) mapNonEmpty!16663))

(assert (= b!2748709 b!2748711))

(assert (= b!2748708 b!2748709))

(assert (= b!2748721 b!2748708))

(assert (= (and b!2748727 ((_ is LongMap!3654) (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))) b!2748721))

(assert (= b!2748714 b!2748727))

(assert (= (and b!2748706 ((_ is HashMap!3560) (cache!3703 cacheDown!730))) b!2748714))

(assert (= start!266464 b!2748706))

(assert (= b!2748712 b!2748719))

(assert (= start!266464 b!2748712))

(declare-fun m!3164283 () Bool)

(assert (=> b!2748726 m!3164283))

(declare-fun m!3164285 () Bool)

(assert (=> mapNonEmpty!16664 m!3164285))

(declare-fun m!3164287 () Bool)

(assert (=> b!2748713 m!3164287))

(declare-fun m!3164289 () Bool)

(assert (=> mapNonEmpty!16663 m!3164289))

(declare-fun m!3164291 () Bool)

(assert (=> b!2748717 m!3164291))

(declare-fun m!3164293 () Bool)

(assert (=> start!266464 m!3164293))

(declare-fun m!3164295 () Bool)

(assert (=> start!266464 m!3164295))

(declare-fun m!3164297 () Bool)

(assert (=> start!266464 m!3164297))

(declare-fun m!3164299 () Bool)

(assert (=> b!2748707 m!3164299))

(declare-fun m!3164301 () Bool)

(assert (=> b!2748707 m!3164301))

(declare-fun m!3164303 () Bool)

(assert (=> b!2748707 m!3164303))

(declare-fun m!3164305 () Bool)

(assert (=> b!2748707 m!3164305))

(declare-fun m!3164307 () Bool)

(assert (=> b!2748707 m!3164307))

(declare-fun m!3164309 () Bool)

(assert (=> b!2748707 m!3164309))

(declare-fun m!3164311 () Bool)

(assert (=> b!2748707 m!3164311))

(declare-fun m!3164313 () Bool)

(assert (=> b!2748707 m!3164313))

(declare-fun m!3164315 () Bool)

(assert (=> b!2748707 m!3164315))

(assert (=> b!2748707 m!3164301))

(assert (=> b!2748707 m!3164309))

(declare-fun m!3164317 () Bool)

(assert (=> b!2748707 m!3164317))

(declare-fun m!3164319 () Bool)

(assert (=> b!2748707 m!3164319))

(declare-fun m!3164321 () Bool)

(assert (=> b!2748722 m!3164321))

(declare-fun m!3164323 () Bool)

(assert (=> b!2748715 m!3164323))

(declare-fun m!3164325 () Bool)

(assert (=> b!2748715 m!3164325))

(declare-fun m!3164327 () Bool)

(assert (=> b!2748728 m!3164327))

(declare-fun m!3164329 () Bool)

(assert (=> b!2748712 m!3164329))

(declare-fun m!3164331 () Bool)

(assert (=> b!2748712 m!3164331))

(declare-fun m!3164333 () Bool)

(assert (=> b!2748710 m!3164333))

(declare-fun m!3164335 () Bool)

(assert (=> b!2748724 m!3164335))

(declare-fun m!3164337 () Bool)

(assert (=> b!2748724 m!3164337))

(declare-fun m!3164339 () Bool)

(assert (=> b!2748709 m!3164339))

(declare-fun m!3164341 () Bool)

(assert (=> b!2748709 m!3164341))

(check-sat (not b_next!78331) b_and!202353 (not b!2748715) (not b_next!78337) (not b!2748710) (not b!2748711) (not b!2748716) (not mapNonEmpty!16663) (not b_next!78335) (not start!266464) (not b!2748709) (not b!2748728) b_and!202359 b_and!202355 (not b_next!78333) (not b!2748707) (not b!2748726) (not b!2748713) (not mapNonEmpty!16664) b_and!202349 (not b!2748724) (not b!2748712) b_and!202351 (not b!2748717) (not b_next!78329) (not b!2748722) b_and!202357 (not b_next!78339))
(check-sat (not b_next!78331) b_and!202353 (not b_next!78333) (not b_next!78337) (not b_next!78335) b_and!202349 b_and!202351 (not b_next!78329) b_and!202359 b_and!202355 b_and!202357 (not b_next!78339))
(get-model)

(declare-fun d!796299 () Bool)

(assert (=> d!796299 (= (array_inv!4152 (_keys!3955 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))))) (bvsge (size!24496 (_keys!3955 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748709 d!796299))

(declare-fun d!796301 () Bool)

(assert (=> d!796301 (= (array_inv!4153 (_values!3936 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))))) (bvsge (size!24497 (_values!3936 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748709 d!796301))

(declare-fun d!796303 () Bool)

(declare-fun c!444961 () Bool)

(assert (=> d!796303 (= c!444961 ((_ is Node!9909) (c!444957 input!1561)))))

(declare-fun e!1732417 () Bool)

(assert (=> d!796303 (= (inv!43106 (c!444957 input!1561)) e!1732417)))

(declare-fun b!2748736 () Bool)

(declare-fun inv!43107 (Conc!9909) Bool)

(assert (=> b!2748736 (= e!1732417 (inv!43107 (c!444957 input!1561)))))

(declare-fun b!2748737 () Bool)

(declare-fun e!1732418 () Bool)

(assert (=> b!2748737 (= e!1732417 e!1732418)))

(declare-fun res!1152987 () Bool)

(assert (=> b!2748737 (= res!1152987 (not ((_ is Leaf!15088) (c!444957 input!1561))))))

(assert (=> b!2748737 (=> res!1152987 e!1732418)))

(declare-fun b!2748738 () Bool)

(declare-fun inv!43108 (Conc!9909) Bool)

(assert (=> b!2748738 (= e!1732418 (inv!43108 (c!444957 input!1561)))))

(assert (= (and d!796303 c!444961) b!2748736))

(assert (= (and d!796303 (not c!444961)) b!2748737))

(assert (= (and b!2748737 (not res!1152987)) b!2748738))

(declare-fun m!3164343 () Bool)

(assert (=> b!2748736 m!3164343))

(declare-fun m!3164345 () Bool)

(assert (=> b!2748738 m!3164345))

(assert (=> b!2748728 d!796303))

(declare-fun d!796305 () Bool)

(declare-fun validCacheMapDown!377 (MutableMap!3560) Bool)

(assert (=> d!796305 (= (valid!2833 cacheDown!730) (validCacheMapDown!377 (cache!3703 cacheDown!730)))))

(declare-fun bs!490336 () Bool)

(assert (= bs!490336 d!796305))

(declare-fun m!3164347 () Bool)

(assert (=> bs!490336 m!3164347))

(assert (=> b!2748710 d!796305))

(declare-fun d!796307 () Bool)

(assert (=> d!796307 (= (inv!43097 (tag!5367 rule!196)) (= (mod (str.len (value!156187 (tag!5367 rule!196))) 2) 0))))

(assert (=> b!2748712 d!796307))

(declare-fun d!796309 () Bool)

(declare-fun res!1152990 () Bool)

(declare-fun e!1732421 () Bool)

(assert (=> d!796309 (=> (not res!1152990) (not e!1732421))))

(declare-fun semiInverseModEq!2008 (Int Int) Bool)

(assert (=> d!796309 (= res!1152990 (semiInverseModEq!2008 (toChars!6720 (transformation!4863 rule!196)) (toValue!6861 (transformation!4863 rule!196))))))

(assert (=> d!796309 (= (inv!43105 (transformation!4863 rule!196)) e!1732421)))

(declare-fun b!2748741 () Bool)

(declare-fun equivClasses!1909 (Int Int) Bool)

(assert (=> b!2748741 (= e!1732421 (equivClasses!1909 (toChars!6720 (transformation!4863 rule!196)) (toValue!6861 (transformation!4863 rule!196))))))

(assert (= (and d!796309 res!1152990) b!2748741))

(declare-fun m!3164349 () Bool)

(assert (=> d!796309 m!3164349))

(declare-fun m!3164351 () Bool)

(assert (=> b!2748741 m!3164351))

(assert (=> b!2748712 d!796309))

(declare-fun d!796311 () Bool)

(declare-fun res!1152995 () Bool)

(declare-fun e!1732424 () Bool)

(assert (=> d!796311 (=> (not res!1152995) (not e!1732424))))

(declare-fun validRegex!3322 (Regex!8021) Bool)

(assert (=> d!796311 (= res!1152995 (validRegex!3322 (regex!4863 rule!196)))))

(assert (=> d!796311 (= (ruleValid!1600 thiss!16130 rule!196) e!1732424)))

(declare-fun b!2748746 () Bool)

(declare-fun res!1152996 () Bool)

(assert (=> b!2748746 (=> (not res!1152996) (not e!1732424))))

(declare-fun nullable!2612 (Regex!8021) Bool)

(assert (=> b!2748746 (= res!1152996 (not (nullable!2612 (regex!4863 rule!196))))))

(declare-fun b!2748747 () Bool)

(assert (=> b!2748747 (= e!1732424 (not (= (tag!5367 rule!196) (String!35338 ""))))))

(assert (= (and d!796311 res!1152995) b!2748746))

(assert (= (and b!2748746 res!1152996) b!2748747))

(declare-fun m!3164353 () Bool)

(assert (=> d!796311 m!3164353))

(declare-fun m!3164355 () Bool)

(assert (=> b!2748746 m!3164355))

(assert (=> b!2748713 d!796311))

(declare-fun d!796313 () Bool)

(declare-fun lt!972067 () Bool)

(assert (=> d!796313 (= lt!972067 (isEmpty!18057 (list!12011 (_1!18529 (_1!18530 lt!972063)))))))

(declare-fun isEmpty!18059 (Conc!9909) Bool)

(assert (=> d!796313 (= lt!972067 (isEmpty!18059 (c!444957 (_1!18529 (_1!18530 lt!972063)))))))

(assert (=> d!796313 (= (isEmpty!18058 (_1!18529 (_1!18530 lt!972063))) lt!972067)))

(declare-fun bs!490337 () Bool)

(assert (= bs!490337 d!796313))

(assert (=> bs!490337 m!3164303))

(assert (=> bs!490337 m!3164303))

(declare-fun m!3164357 () Bool)

(assert (=> bs!490337 m!3164357))

(declare-fun m!3164359 () Bool)

(assert (=> bs!490337 m!3164359))

(assert (=> b!2748722 d!796313))

(declare-fun d!796315 () Bool)

(declare-fun isBalanced!3019 (Conc!9909) Bool)

(assert (=> d!796315 (= (inv!43102 input!1561) (isBalanced!3019 (c!444957 input!1561)))))

(declare-fun bs!490338 () Bool)

(assert (= bs!490338 d!796315))

(declare-fun m!3164361 () Bool)

(assert (=> bs!490338 m!3164361))

(assert (=> start!266464 d!796315))

(declare-fun d!796317 () Bool)

(declare-fun res!1152999 () Bool)

(declare-fun e!1732427 () Bool)

(assert (=> d!796317 (=> (not res!1152999) (not e!1732427))))

(assert (=> d!796317 (= res!1152999 ((_ is HashMap!3561) (cache!3704 cacheUp!717)))))

(assert (=> d!796317 (= (inv!43103 cacheUp!717) e!1732427)))

(declare-fun b!2748750 () Bool)

(declare-fun validCacheMapUp!346 (MutableMap!3561) Bool)

(assert (=> b!2748750 (= e!1732427 (validCacheMapUp!346 (cache!3704 cacheUp!717)))))

(assert (= (and d!796317 res!1152999) b!2748750))

(declare-fun m!3164363 () Bool)

(assert (=> b!2748750 m!3164363))

(assert (=> start!266464 d!796317))

(declare-fun d!796319 () Bool)

(declare-fun res!1153002 () Bool)

(declare-fun e!1732430 () Bool)

(assert (=> d!796319 (=> (not res!1153002) (not e!1732430))))

(assert (=> d!796319 (= res!1153002 ((_ is HashMap!3560) (cache!3703 cacheDown!730)))))

(assert (=> d!796319 (= (inv!43104 cacheDown!730) e!1732430)))

(declare-fun b!2748753 () Bool)

(assert (=> b!2748753 (= e!1732430 (validCacheMapDown!377 (cache!3703 cacheDown!730)))))

(assert (= (and d!796319 res!1153002) b!2748753))

(assert (=> b!2748753 m!3164347))

(assert (=> start!266464 d!796319))

(declare-fun d!796321 () Bool)

(declare-fun lt!972070 () tuple2!31622)

(declare-fun findLongestMatch!716 (Regex!8021 List!31832) tuple2!31624)

(assert (=> d!796321 (= (tuple2!31625 (list!12011 (_1!18529 lt!972070)) (list!12011 (_2!18529 lt!972070))) (findLongestMatch!716 (regex!4863 rule!196) (list!12011 input!1561)))))

(declare-fun choose!16076 (Regex!8021 BalanceConc!19432) tuple2!31622)

(assert (=> d!796321 (= lt!972070 (choose!16076 (regex!4863 rule!196) input!1561))))

(assert (=> d!796321 (validRegex!3322 (regex!4863 rule!196))))

(assert (=> d!796321 (= (findLongestMatchWithZipperSequence!197 (regex!4863 rule!196) input!1561) lt!972070)))

(declare-fun bs!490339 () Bool)

(assert (= bs!490339 d!796321))

(declare-fun m!3164365 () Bool)

(assert (=> bs!490339 m!3164365))

(assert (=> bs!490339 m!3164305))

(assert (=> bs!490339 m!3164353))

(declare-fun m!3164367 () Bool)

(assert (=> bs!490339 m!3164367))

(assert (=> bs!490339 m!3164305))

(declare-fun m!3164369 () Bool)

(assert (=> bs!490339 m!3164369))

(declare-fun m!3164371 () Bool)

(assert (=> bs!490339 m!3164371))

(assert (=> b!2748715 d!796321))

(declare-fun d!796323 () Bool)

(declare-fun e!1732433 () Bool)

(assert (=> d!796323 e!1732433))

(declare-fun res!1153007 () Bool)

(assert (=> d!796323 (=> (not res!1153007) (not e!1732433))))

(declare-fun lt!972073 () tuple3!4496)

(assert (=> d!796323 (= res!1153007 (= (_1!18530 lt!972073) (findLongestMatchWithZipperSequence!197 (regex!4863 rule!196) input!1561)))))

(declare-fun choose!16077 (Regex!8021 BalanceConc!19432 CacheUp!2266 CacheDown!2386) tuple3!4496)

(assert (=> d!796323 (= lt!972073 (choose!16077 (regex!4863 rule!196) input!1561 cacheUp!717 cacheDown!730))))

(assert (=> d!796323 (validRegex!3322 (regex!4863 rule!196))))

(assert (=> d!796323 (= (findLongestMatchWithZipperSequenceMem!18 (regex!4863 rule!196) input!1561 cacheUp!717 cacheDown!730) lt!972073)))

(declare-fun b!2748758 () Bool)

(declare-fun res!1153008 () Bool)

(assert (=> b!2748758 (=> (not res!1153008) (not e!1732433))))

(assert (=> b!2748758 (= res!1153008 (valid!2833 (_3!2718 lt!972073)))))

(declare-fun b!2748759 () Bool)

(assert (=> b!2748759 (= e!1732433 (valid!2834 (_2!18530 lt!972073)))))

(assert (= (and d!796323 res!1153007) b!2748758))

(assert (= (and b!2748758 res!1153008) b!2748759))

(assert (=> d!796323 m!3164323))

(declare-fun m!3164373 () Bool)

(assert (=> d!796323 m!3164373))

(assert (=> d!796323 m!3164353))

(declare-fun m!3164375 () Bool)

(assert (=> b!2748758 m!3164375))

(declare-fun m!3164377 () Bool)

(assert (=> b!2748759 m!3164377))

(assert (=> b!2748715 d!796323))

(declare-fun d!796325 () Bool)

(assert (=> d!796325 (= (array_inv!4152 (_keys!3954 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))))) (bvsge (size!24496 (_keys!3954 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748724 d!796325))

(declare-fun d!796327 () Bool)

(assert (=> d!796327 (= (array_inv!4154 (_values!3935 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))))) (bvsge (size!24495 (_values!3935 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717))))))) #b00000000000000000000000000000000))))

(assert (=> b!2748724 d!796327))

(declare-fun d!796329 () Bool)

(assert (=> d!796329 (= (valid!2834 cacheUp!717) (validCacheMapUp!346 (cache!3704 cacheUp!717)))))

(declare-fun bs!490340 () Bool)

(assert (= bs!490340 d!796329))

(assert (=> bs!490340 m!3164363))

(assert (=> b!2748717 d!796329))

(declare-fun d!796331 () Bool)

(declare-fun lt!972076 () Int)

(assert (=> d!796331 (>= lt!972076 0)))

(declare-fun e!1732436 () Int)

(assert (=> d!796331 (= lt!972076 e!1732436)))

(declare-fun c!444964 () Bool)

(assert (=> d!796331 (= c!444964 ((_ is Nil!31732) Nil!31732))))

(assert (=> d!796331 (= (size!24500 Nil!31732) lt!972076)))

(declare-fun b!2748764 () Bool)

(assert (=> b!2748764 (= e!1732436 0)))

(declare-fun b!2748765 () Bool)

(assert (=> b!2748765 (= e!1732436 (+ 1 (size!24500 (t!227926 Nil!31732))))))

(assert (= (and d!796331 c!444964) b!2748764))

(assert (= (and d!796331 (not c!444964)) b!2748765))

(declare-fun m!3164379 () Bool)

(assert (=> b!2748765 m!3164379))

(assert (=> b!2748707 d!796331))

(declare-fun d!796333 () Bool)

(declare-fun lt!972077 () Int)

(assert (=> d!796333 (>= lt!972077 0)))

(declare-fun e!1732437 () Int)

(assert (=> d!796333 (= lt!972077 e!1732437)))

(declare-fun c!444965 () Bool)

(assert (=> d!796333 (= c!444965 ((_ is Nil!31732) lt!972059))))

(assert (=> d!796333 (= (size!24500 lt!972059) lt!972077)))

(declare-fun b!2748766 () Bool)

(assert (=> b!2748766 (= e!1732437 0)))

(declare-fun b!2748767 () Bool)

(assert (=> b!2748767 (= e!1732437 (+ 1 (size!24500 (t!227926 lt!972059))))))

(assert (= (and d!796333 c!444965) b!2748766))

(assert (= (and d!796333 (not c!444965)) b!2748767))

(declare-fun m!3164381 () Bool)

(assert (=> b!2748767 m!3164381))

(assert (=> b!2748707 d!796333))

(declare-fun d!796335 () Bool)

(declare-fun e!1732440 () Bool)

(assert (=> d!796335 e!1732440))

(declare-fun res!1153011 () Bool)

(assert (=> d!796335 (=> res!1153011 e!1732440)))

(assert (=> d!796335 (= res!1153011 (isEmpty!18057 (_1!18531 (findLongestMatchInner!806 (regex!4863 rule!196) Nil!31732 (size!24500 Nil!31732) lt!972059 lt!972059 (size!24500 lt!972059)))))))

(declare-fun lt!972080 () Unit!45560)

(declare-fun choose!16078 (Regex!8021 List!31832) Unit!45560)

(assert (=> d!796335 (= lt!972080 (choose!16078 (regex!4863 rule!196) lt!972059))))

(assert (=> d!796335 (validRegex!3322 (regex!4863 rule!196))))

(assert (=> d!796335 (= (longestMatchIsAcceptedByMatchOrIsEmpty!779 (regex!4863 rule!196) lt!972059) lt!972080)))

(declare-fun b!2748770 () Bool)

(assert (=> b!2748770 (= e!1732440 (matchR!3658 (regex!4863 rule!196) (_1!18531 (findLongestMatchInner!806 (regex!4863 rule!196) Nil!31732 (size!24500 Nil!31732) lt!972059 lt!972059 (size!24500 lt!972059)))))))

(assert (= (and d!796335 (not res!1153011)) b!2748770))

(assert (=> d!796335 m!3164353))

(assert (=> d!796335 m!3164301))

(declare-fun m!3164383 () Bool)

(assert (=> d!796335 m!3164383))

(assert (=> d!796335 m!3164309))

(declare-fun m!3164385 () Bool)

(assert (=> d!796335 m!3164385))

(assert (=> d!796335 m!3164301))

(assert (=> d!796335 m!3164309))

(assert (=> d!796335 m!3164317))

(assert (=> b!2748770 m!3164301))

(assert (=> b!2748770 m!3164309))

(assert (=> b!2748770 m!3164301))

(assert (=> b!2748770 m!3164309))

(assert (=> b!2748770 m!3164317))

(declare-fun m!3164387 () Bool)

(assert (=> b!2748770 m!3164387))

(assert (=> b!2748707 d!796335))

(declare-fun b!2748799 () Bool)

(declare-fun e!1732459 () tuple2!31624)

(declare-fun call!177475 () tuple2!31624)

(assert (=> b!2748799 (= e!1732459 call!177475)))

(declare-fun b!2748800 () Bool)

(declare-fun e!1732458 () tuple2!31624)

(declare-fun e!1732463 () tuple2!31624)

(assert (=> b!2748800 (= e!1732458 e!1732463)))

(declare-fun c!444979 () Bool)

(assert (=> b!2748800 (= c!444979 (= (size!24500 Nil!31732) (size!24500 lt!972059)))))

(declare-fun b!2748801 () Bool)

(assert (=> b!2748801 (= e!1732458 (tuple2!31625 Nil!31732 lt!972059))))

(declare-fun b!2748802 () Bool)

(declare-fun e!1732462 () Unit!45560)

(declare-fun Unit!45562 () Unit!45560)

(assert (=> b!2748802 (= e!1732462 Unit!45562)))

(declare-fun b!2748803 () Bool)

(declare-fun e!1732464 () tuple2!31624)

(assert (=> b!2748803 (= e!1732464 (tuple2!31625 Nil!31732 Nil!31732))))

(declare-fun b!2748804 () Bool)

(declare-fun e!1732460 () Bool)

(declare-fun lt!972146 () tuple2!31624)

(assert (=> b!2748804 (= e!1732460 (>= (size!24500 (_1!18531 lt!972146)) (size!24500 Nil!31732)))))

(declare-fun bm!177464 () Bool)

(declare-fun call!177472 () Bool)

(declare-fun isPrefix!2522 (List!31832 List!31832) Bool)

(assert (=> bm!177464 (= call!177472 (isPrefix!2522 lt!972059 lt!972059))))

(declare-fun b!2748805 () Bool)

(declare-fun e!1732461 () tuple2!31624)

(declare-fun lt!972160 () tuple2!31624)

(assert (=> b!2748805 (= e!1732461 lt!972160)))

(declare-fun bm!177465 () Bool)

(declare-fun call!177470 () Regex!8021)

(declare-fun call!177471 () List!31832)

(declare-fun lt!972143 () List!31832)

(assert (=> bm!177465 (= call!177475 (findLongestMatchInner!806 call!177470 lt!972143 (+ (size!24500 Nil!31732) 1) call!177471 lt!972059 (size!24500 lt!972059)))))

(declare-fun b!2748806 () Bool)

(declare-fun e!1732457 () Bool)

(assert (=> b!2748806 (= e!1732457 e!1732460)))

(declare-fun res!1153017 () Bool)

(assert (=> b!2748806 (=> res!1153017 e!1732460)))

(assert (=> b!2748806 (= res!1153017 (isEmpty!18057 (_1!18531 lt!972146)))))

(declare-fun b!2748807 () Bool)

(declare-fun Unit!45563 () Unit!45560)

(assert (=> b!2748807 (= e!1732462 Unit!45563)))

(declare-fun lt!972137 () Unit!45560)

(declare-fun call!177469 () Unit!45560)

(assert (=> b!2748807 (= lt!972137 call!177469)))

(assert (=> b!2748807 call!177472))

(declare-fun lt!972154 () Unit!45560)

(assert (=> b!2748807 (= lt!972154 lt!972137)))

(declare-fun lt!972163 () Unit!45560)

(declare-fun call!177473 () Unit!45560)

(assert (=> b!2748807 (= lt!972163 call!177473)))

(assert (=> b!2748807 (= lt!972059 Nil!31732)))

(declare-fun lt!972157 () Unit!45560)

(assert (=> b!2748807 (= lt!972157 lt!972163)))

(assert (=> b!2748807 false))

(declare-fun b!2748808 () Bool)

(declare-fun c!444980 () Bool)

(declare-fun call!177474 () Bool)

(assert (=> b!2748808 (= c!444980 call!177474)))

(declare-fun lt!972151 () Unit!45560)

(declare-fun lt!972161 () Unit!45560)

(assert (=> b!2748808 (= lt!972151 lt!972161)))

(declare-fun lt!972153 () C!16200)

(declare-fun lt!972158 () List!31832)

(declare-fun ++!7878 (List!31832 List!31832) List!31832)

(assert (=> b!2748808 (= (++!7878 (++!7878 Nil!31732 (Cons!31732 lt!972153 Nil!31732)) lt!972158) lt!972059)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!839 (List!31832 C!16200 List!31832 List!31832) Unit!45560)

(assert (=> b!2748808 (= lt!972161 (lemmaMoveElementToOtherListKeepsConcatEq!839 Nil!31732 lt!972153 lt!972158 lt!972059))))

(declare-fun tail!4356 (List!31832) List!31832)

(assert (=> b!2748808 (= lt!972158 (tail!4356 lt!972059))))

(declare-fun head!6118 (List!31832) C!16200)

(assert (=> b!2748808 (= lt!972153 (head!6118 lt!972059))))

(declare-fun lt!972152 () Unit!45560)

(declare-fun lt!972145 () Unit!45560)

(assert (=> b!2748808 (= lt!972152 lt!972145)))

(declare-fun getSuffix!1208 (List!31832 List!31832) List!31832)

(assert (=> b!2748808 (isPrefix!2522 (++!7878 Nil!31732 (Cons!31732 (head!6118 (getSuffix!1208 lt!972059 Nil!31732)) Nil!31732)) lt!972059)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!427 (List!31832 List!31832) Unit!45560)

(assert (=> b!2748808 (= lt!972145 (lemmaAddHeadSuffixToPrefixStillPrefix!427 Nil!31732 lt!972059))))

(declare-fun lt!972142 () Unit!45560)

(declare-fun lt!972159 () Unit!45560)

(assert (=> b!2748808 (= lt!972142 lt!972159)))

(assert (=> b!2748808 (= lt!972159 (lemmaAddHeadSuffixToPrefixStillPrefix!427 Nil!31732 lt!972059))))

(assert (=> b!2748808 (= lt!972143 (++!7878 Nil!31732 (Cons!31732 (head!6118 lt!972059) Nil!31732)))))

(declare-fun lt!972138 () Unit!45560)

(assert (=> b!2748808 (= lt!972138 e!1732462)))

(declare-fun c!444983 () Bool)

(assert (=> b!2748808 (= c!444983 (= (size!24500 Nil!31732) (size!24500 lt!972059)))))

(declare-fun lt!972139 () Unit!45560)

(declare-fun lt!972141 () Unit!45560)

(assert (=> b!2748808 (= lt!972139 lt!972141)))

(assert (=> b!2748808 (<= (size!24500 Nil!31732) (size!24500 lt!972059))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!230 (List!31832 List!31832) Unit!45560)

(assert (=> b!2748808 (= lt!972141 (lemmaIsPrefixThenSmallerEqSize!230 Nil!31732 lt!972059))))

(assert (=> b!2748808 (= e!1732463 e!1732459)))

(declare-fun b!2748809 () Bool)

(assert (=> b!2748809 (= e!1732461 (tuple2!31625 Nil!31732 lt!972059))))

(declare-fun bm!177466 () Bool)

(declare-fun call!177468 () C!16200)

(declare-fun derivativeStep!2250 (Regex!8021 C!16200) Regex!8021)

(assert (=> bm!177466 (= call!177470 (derivativeStep!2250 (regex!4863 rule!196) call!177468))))

(declare-fun bm!177467 () Bool)

(assert (=> bm!177467 (= call!177471 (tail!4356 lt!972059))))

(declare-fun bm!177463 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!429 (List!31832 List!31832 List!31832) Unit!45560)

(assert (=> bm!177463 (= call!177473 (lemmaIsPrefixSameLengthThenSameList!429 lt!972059 Nil!31732 lt!972059))))

(declare-fun d!796337 () Bool)

(assert (=> d!796337 e!1732457))

(declare-fun res!1153016 () Bool)

(assert (=> d!796337 (=> (not res!1153016) (not e!1732457))))

(assert (=> d!796337 (= res!1153016 (= (++!7878 (_1!18531 lt!972146) (_2!18531 lt!972146)) lt!972059))))

(assert (=> d!796337 (= lt!972146 e!1732458)))

(declare-fun c!444982 () Bool)

(declare-fun lostCause!720 (Regex!8021) Bool)

(assert (=> d!796337 (= c!444982 (lostCause!720 (regex!4863 rule!196)))))

(declare-fun lt!972155 () Unit!45560)

(declare-fun Unit!45564 () Unit!45560)

(assert (=> d!796337 (= lt!972155 Unit!45564)))

(assert (=> d!796337 (= (getSuffix!1208 lt!972059 Nil!31732) lt!972059)))

(declare-fun lt!972162 () Unit!45560)

(declare-fun lt!972156 () Unit!45560)

(assert (=> d!796337 (= lt!972162 lt!972156)))

(declare-fun lt!972150 () List!31832)

(assert (=> d!796337 (= lt!972059 lt!972150)))

(declare-fun lemmaSamePrefixThenSameSuffix!1110 (List!31832 List!31832 List!31832 List!31832 List!31832) Unit!45560)

(assert (=> d!796337 (= lt!972156 (lemmaSamePrefixThenSameSuffix!1110 Nil!31732 lt!972059 Nil!31732 lt!972150 lt!972059))))

(assert (=> d!796337 (= lt!972150 (getSuffix!1208 lt!972059 Nil!31732))))

(declare-fun lt!972147 () Unit!45560)

(declare-fun lt!972149 () Unit!45560)

(assert (=> d!796337 (= lt!972147 lt!972149)))

(assert (=> d!796337 (isPrefix!2522 Nil!31732 (++!7878 Nil!31732 lt!972059))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1636 (List!31832 List!31832) Unit!45560)

(assert (=> d!796337 (= lt!972149 (lemmaConcatTwoListThenFirstIsPrefix!1636 Nil!31732 lt!972059))))

(assert (=> d!796337 (validRegex!3322 (regex!4863 rule!196))))

(assert (=> d!796337 (= (findLongestMatchInner!806 (regex!4863 rule!196) Nil!31732 (size!24500 Nil!31732) lt!972059 lt!972059 (size!24500 lt!972059)) lt!972146)))

(declare-fun bm!177468 () Bool)

(assert (=> bm!177468 (= call!177474 (nullable!2612 (regex!4863 rule!196)))))

(declare-fun bm!177469 () Bool)

(assert (=> bm!177469 (= call!177468 (head!6118 lt!972059))))

(declare-fun b!2748810 () Bool)

(assert (=> b!2748810 (= e!1732464 (tuple2!31625 Nil!31732 lt!972059))))

(declare-fun b!2748811 () Bool)

(declare-fun c!444978 () Bool)

(assert (=> b!2748811 (= c!444978 call!177474)))

(declare-fun lt!972144 () Unit!45560)

(declare-fun lt!972140 () Unit!45560)

(assert (=> b!2748811 (= lt!972144 lt!972140)))

(assert (=> b!2748811 (= lt!972059 Nil!31732)))

(assert (=> b!2748811 (= lt!972140 call!177473)))

(declare-fun lt!972148 () Unit!45560)

(declare-fun lt!972164 () Unit!45560)

(assert (=> b!2748811 (= lt!972148 lt!972164)))

(assert (=> b!2748811 call!177472))

(assert (=> b!2748811 (= lt!972164 call!177469)))

(assert (=> b!2748811 (= e!1732463 e!1732464)))

(declare-fun b!2748812 () Bool)

(assert (=> b!2748812 (= e!1732459 e!1732461)))

(assert (=> b!2748812 (= lt!972160 call!177475)))

(declare-fun c!444981 () Bool)

(assert (=> b!2748812 (= c!444981 (isEmpty!18057 (_1!18531 lt!972160)))))

(declare-fun bm!177470 () Bool)

(declare-fun lemmaIsPrefixRefl!1648 (List!31832 List!31832) Unit!45560)

(assert (=> bm!177470 (= call!177469 (lemmaIsPrefixRefl!1648 lt!972059 lt!972059))))

(assert (= (and d!796337 c!444982) b!2748801))

(assert (= (and d!796337 (not c!444982)) b!2748800))

(assert (= (and b!2748800 c!444979) b!2748811))

(assert (= (and b!2748800 (not c!444979)) b!2748808))

(assert (= (and b!2748811 c!444978) b!2748803))

(assert (= (and b!2748811 (not c!444978)) b!2748810))

(assert (= (and b!2748808 c!444983) b!2748807))

(assert (= (and b!2748808 (not c!444983)) b!2748802))

(assert (= (and b!2748808 c!444980) b!2748812))

(assert (= (and b!2748808 (not c!444980)) b!2748799))

(assert (= (and b!2748812 c!444981) b!2748809))

(assert (= (and b!2748812 (not c!444981)) b!2748805))

(assert (= (or b!2748812 b!2748799) bm!177469))

(assert (= (or b!2748812 b!2748799) bm!177467))

(assert (= (or b!2748812 b!2748799) bm!177466))

(assert (= (or b!2748812 b!2748799) bm!177465))

(assert (= (or b!2748811 b!2748807) bm!177464))

(assert (= (or b!2748811 b!2748808) bm!177468))

(assert (= (or b!2748811 b!2748807) bm!177463))

(assert (= (or b!2748811 b!2748807) bm!177470))

(assert (= (and d!796337 res!1153016) b!2748806))

(assert (= (and b!2748806 (not res!1153017)) b!2748804))

(declare-fun m!3164389 () Bool)

(assert (=> bm!177463 m!3164389))

(declare-fun m!3164391 () Bool)

(assert (=> bm!177467 m!3164391))

(assert (=> bm!177468 m!3164355))

(declare-fun m!3164393 () Bool)

(assert (=> d!796337 m!3164393))

(declare-fun m!3164395 () Bool)

(assert (=> d!796337 m!3164395))

(declare-fun m!3164397 () Bool)

(assert (=> d!796337 m!3164397))

(declare-fun m!3164399 () Bool)

(assert (=> d!796337 m!3164399))

(declare-fun m!3164401 () Bool)

(assert (=> d!796337 m!3164401))

(assert (=> d!796337 m!3164399))

(assert (=> d!796337 m!3164353))

(declare-fun m!3164403 () Bool)

(assert (=> d!796337 m!3164403))

(declare-fun m!3164405 () Bool)

(assert (=> d!796337 m!3164405))

(declare-fun m!3164407 () Bool)

(assert (=> b!2748808 m!3164407))

(declare-fun m!3164409 () Bool)

(assert (=> b!2748808 m!3164409))

(assert (=> b!2748808 m!3164301))

(assert (=> b!2748808 m!3164403))

(assert (=> b!2748808 m!3164309))

(declare-fun m!3164411 () Bool)

(assert (=> b!2748808 m!3164411))

(declare-fun m!3164413 () Bool)

(assert (=> b!2748808 m!3164413))

(declare-fun m!3164415 () Bool)

(assert (=> b!2748808 m!3164415))

(declare-fun m!3164417 () Bool)

(assert (=> b!2748808 m!3164417))

(assert (=> b!2748808 m!3164417))

(declare-fun m!3164419 () Bool)

(assert (=> b!2748808 m!3164419))

(declare-fun m!3164421 () Bool)

(assert (=> b!2748808 m!3164421))

(assert (=> b!2748808 m!3164403))

(declare-fun m!3164423 () Bool)

(assert (=> b!2748808 m!3164423))

(assert (=> b!2748808 m!3164409))

(declare-fun m!3164425 () Bool)

(assert (=> b!2748808 m!3164425))

(assert (=> b!2748808 m!3164391))

(assert (=> bm!177465 m!3164309))

(declare-fun m!3164427 () Bool)

(assert (=> bm!177465 m!3164427))

(declare-fun m!3164429 () Bool)

(assert (=> b!2748804 m!3164429))

(assert (=> b!2748804 m!3164301))

(declare-fun m!3164431 () Bool)

(assert (=> bm!177464 m!3164431))

(declare-fun m!3164433 () Bool)

(assert (=> bm!177470 m!3164433))

(declare-fun m!3164435 () Bool)

(assert (=> b!2748812 m!3164435))

(declare-fun m!3164437 () Bool)

(assert (=> b!2748806 m!3164437))

(assert (=> bm!177469 m!3164421))

(declare-fun m!3164439 () Bool)

(assert (=> bm!177466 m!3164439))

(assert (=> b!2748707 d!796337))

(declare-fun b!2748817 () Bool)

(declare-fun e!1732467 () Bool)

(assert (=> b!2748817 (= e!1732467 true)))

(declare-fun d!796339 () Bool)

(assert (=> d!796339 e!1732467))

(assert (= d!796339 b!2748817))

(declare-fun order!17223 () Int)

(declare-fun order!17221 () Int)

(declare-fun lambda!100870 () Int)

(declare-fun dynLambda!13582 (Int Int) Int)

(declare-fun dynLambda!13583 (Int Int) Int)

(assert (=> b!2748817 (< (dynLambda!13582 order!17221 (toValue!6861 (transformation!4863 rule!196))) (dynLambda!13583 order!17223 lambda!100870))))

(declare-fun order!17225 () Int)

(declare-fun dynLambda!13584 (Int Int) Int)

(assert (=> b!2748817 (< (dynLambda!13584 order!17225 (toChars!6720 (transformation!4863 rule!196))) (dynLambda!13583 order!17223 lambda!100870))))

(declare-fun dynLambda!13585 (Int TokenValue!5085) BalanceConc!19432)

(declare-fun dynLambda!13586 (Int BalanceConc!19432) TokenValue!5085)

(assert (=> d!796339 (= (list!12011 (dynLambda!13585 (toChars!6720 (transformation!4863 rule!196)) (dynLambda!13586 (toValue!6861 (transformation!4863 rule!196)) (_1!18529 (_1!18530 lt!972063))))) (list!12011 (_1!18529 (_1!18530 lt!972063))))))

(declare-fun lt!972167 () Unit!45560)

(declare-fun ForallOf!541 (Int BalanceConc!19432) Unit!45560)

(assert (=> d!796339 (= lt!972167 (ForallOf!541 lambda!100870 (_1!18529 (_1!18530 lt!972063))))))

(assert (=> d!796339 (= (lemmaSemiInverse!1146 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) lt!972167)))

(declare-fun b_lambda!82923 () Bool)

(assert (=> (not b_lambda!82923) (not d!796339)))

(declare-fun t!227932 () Bool)

(declare-fun tb!152971 () Bool)

(assert (=> (and b!2748719 (= (toChars!6720 (transformation!4863 rule!196)) (toChars!6720 (transformation!4863 rule!196))) t!227932) tb!152971))

(declare-fun b!2748822 () Bool)

(declare-fun e!1732470 () Bool)

(declare-fun tp!867204 () Bool)

(assert (=> b!2748822 (= e!1732470 (and (inv!43106 (c!444957 (dynLambda!13585 (toChars!6720 (transformation!4863 rule!196)) (dynLambda!13586 (toValue!6861 (transformation!4863 rule!196)) (_1!18529 (_1!18530 lt!972063)))))) tp!867204))))

(declare-fun result!189152 () Bool)

(assert (=> tb!152971 (= result!189152 (and (inv!43102 (dynLambda!13585 (toChars!6720 (transformation!4863 rule!196)) (dynLambda!13586 (toValue!6861 (transformation!4863 rule!196)) (_1!18529 (_1!18530 lt!972063))))) e!1732470))))

(assert (= tb!152971 b!2748822))

(declare-fun m!3164441 () Bool)

(assert (=> b!2748822 m!3164441))

(declare-fun m!3164443 () Bool)

(assert (=> tb!152971 m!3164443))

(assert (=> d!796339 t!227932))

(declare-fun b_and!202361 () Bool)

(assert (= b_and!202359 (and (=> t!227932 result!189152) b_and!202361)))

(declare-fun b_lambda!82925 () Bool)

(assert (=> (not b_lambda!82925) (not d!796339)))

(declare-fun t!227934 () Bool)

(declare-fun tb!152973 () Bool)

(assert (=> (and b!2748719 (= (toValue!6861 (transformation!4863 rule!196)) (toValue!6861 (transformation!4863 rule!196))) t!227934) tb!152973))

(declare-fun result!189156 () Bool)

(declare-fun inv!21 (TokenValue!5085) Bool)

(assert (=> tb!152973 (= result!189156 (inv!21 (dynLambda!13586 (toValue!6861 (transformation!4863 rule!196)) (_1!18529 (_1!18530 lt!972063)))))))

(declare-fun m!3164445 () Bool)

(assert (=> tb!152973 m!3164445))

(assert (=> d!796339 t!227934))

(declare-fun b_and!202363 () Bool)

(assert (= b_and!202357 (and (=> t!227934 result!189156) b_and!202363)))

(assert (=> d!796339 m!3164303))

(declare-fun m!3164447 () Bool)

(assert (=> d!796339 m!3164447))

(declare-fun m!3164449 () Bool)

(assert (=> d!796339 m!3164449))

(assert (=> d!796339 m!3164449))

(declare-fun m!3164451 () Bool)

(assert (=> d!796339 m!3164451))

(assert (=> d!796339 m!3164451))

(declare-fun m!3164453 () Bool)

(assert (=> d!796339 m!3164453))

(assert (=> b!2748707 d!796339))

(declare-fun d!796341 () Bool)

(declare-fun res!1153022 () Bool)

(declare-fun e!1732476 () Bool)

(assert (=> d!796341 (=> (not res!1153022) (not e!1732476))))

(assert (=> d!796341 (= res!1153022 (not (isEmpty!18057 (originalCharacters!5596 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063))))))))))

(assert (=> d!796341 (= (inv!43101 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063))))) e!1732476)))

(declare-fun b!2748829 () Bool)

(declare-fun res!1153023 () Bool)

(assert (=> b!2748829 (=> (not res!1153023) (not e!1732476))))

(assert (=> b!2748829 (= res!1153023 (= (originalCharacters!5596 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063))))) (list!12011 (dynLambda!13585 (toChars!6720 (transformation!4863 (rule!7291 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063))))))) (value!156188 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063)))))))))))

(declare-fun b!2748830 () Bool)

(assert (=> b!2748830 (= e!1732476 (= (size!24498 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063))))) (size!24500 (originalCharacters!5596 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063))))))))))

(assert (= (and d!796341 res!1153022) b!2748829))

(assert (= (and b!2748829 res!1153023) b!2748830))

(declare-fun b_lambda!82927 () Bool)

(assert (=> (not b_lambda!82927) (not b!2748829)))

(declare-fun tb!152975 () Bool)

(declare-fun t!227936 () Bool)

(assert (=> (and b!2748719 (= (toChars!6720 (transformation!4863 rule!196)) (toChars!6720 (transformation!4863 (rule!7291 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063)))))))) t!227936) tb!152975))

(declare-fun tp!867205 () Bool)

(declare-fun b!2748831 () Bool)

(declare-fun e!1732477 () Bool)

(assert (=> b!2748831 (= e!1732477 (and (inv!43106 (c!444957 (dynLambda!13585 (toChars!6720 (transformation!4863 (rule!7291 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063))))))) (value!156188 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063)))))))) tp!867205))))

(declare-fun result!189160 () Bool)

(assert (=> tb!152975 (= result!189160 (and (inv!43102 (dynLambda!13585 (toChars!6720 (transformation!4863 (rule!7291 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063))))))) (value!156188 (Token!9131 (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) rule!196 (size!24499 (_1!18529 (_1!18530 lt!972063))) (list!12011 (_1!18529 (_1!18530 lt!972063))))))) e!1732477))))

(assert (= tb!152975 b!2748831))

(declare-fun m!3164455 () Bool)

(assert (=> b!2748831 m!3164455))

(declare-fun m!3164457 () Bool)

(assert (=> tb!152975 m!3164457))

(assert (=> b!2748829 t!227936))

(declare-fun b_and!202365 () Bool)

(assert (= b_and!202361 (and (=> t!227936 result!189160) b_and!202365)))

(declare-fun m!3164459 () Bool)

(assert (=> d!796341 m!3164459))

(declare-fun m!3164461 () Bool)

(assert (=> b!2748829 m!3164461))

(assert (=> b!2748829 m!3164461))

(declare-fun m!3164463 () Bool)

(assert (=> b!2748829 m!3164463))

(declare-fun m!3164465 () Bool)

(assert (=> b!2748830 m!3164465))

(assert (=> b!2748707 d!796341))

(declare-fun d!796343 () Bool)

(declare-fun lt!972170 () Int)

(assert (=> d!796343 (= lt!972170 (size!24500 (list!12011 (_1!18529 (_1!18530 lt!972063)))))))

(declare-fun size!24501 (Conc!9909) Int)

(assert (=> d!796343 (= lt!972170 (size!24501 (c!444957 (_1!18529 (_1!18530 lt!972063)))))))

(assert (=> d!796343 (= (size!24499 (_1!18529 (_1!18530 lt!972063))) lt!972170)))

(declare-fun bs!490341 () Bool)

(assert (= bs!490341 d!796343))

(assert (=> bs!490341 m!3164303))

(assert (=> bs!490341 m!3164303))

(declare-fun m!3164467 () Bool)

(assert (=> bs!490341 m!3164467))

(declare-fun m!3164469 () Bool)

(assert (=> bs!490341 m!3164469))

(assert (=> b!2748707 d!796343))

(declare-fun d!796345 () Bool)

(declare-fun list!12012 (Conc!9909) List!31832)

(assert (=> d!796345 (= (list!12011 input!1561) (list!12012 (c!444957 input!1561)))))

(declare-fun bs!490342 () Bool)

(assert (= bs!490342 d!796345))

(declare-fun m!3164471 () Bool)

(assert (=> bs!490342 m!3164471))

(assert (=> b!2748707 d!796345))

(declare-fun d!796347 () Bool)

(assert (=> d!796347 (= (list!12011 (_1!18529 (_1!18530 lt!972063))) (list!12012 (c!444957 (_1!18529 (_1!18530 lt!972063)))))))

(declare-fun bs!490343 () Bool)

(assert (= bs!490343 d!796347))

(declare-fun m!3164473 () Bool)

(assert (=> bs!490343 m!3164473))

(assert (=> b!2748707 d!796347))

(declare-fun d!796349 () Bool)

(assert (=> d!796349 (= (apply!7431 (transformation!4863 rule!196) (_1!18529 (_1!18530 lt!972063))) (dynLambda!13586 (toValue!6861 (transformation!4863 rule!196)) (_1!18529 (_1!18530 lt!972063))))))

(declare-fun b_lambda!82929 () Bool)

(assert (=> (not b_lambda!82929) (not d!796349)))

(assert (=> d!796349 t!227934))

(declare-fun b_and!202367 () Bool)

(assert (= b_and!202363 (and (=> t!227934 result!189156) b_and!202367)))

(assert (=> d!796349 m!3164449))

(assert (=> b!2748707 d!796349))

(declare-fun d!796351 () Bool)

(assert (=> d!796351 (= (isEmpty!18057 (_1!18531 lt!972060)) ((_ is Nil!31732) (_1!18531 lt!972060)))))

(assert (=> b!2748707 d!796351))

(declare-fun b!2748860 () Bool)

(declare-fun res!1153044 () Bool)

(declare-fun e!1732497 () Bool)

(assert (=> b!2748860 (=> res!1153044 e!1732497)))

(assert (=> b!2748860 (= res!1153044 (not (isEmpty!18057 (tail!4356 (_1!18531 lt!972060)))))))

(declare-fun b!2748861 () Bool)

(declare-fun e!1732494 () Bool)

(assert (=> b!2748861 (= e!1732494 (= (head!6118 (_1!18531 lt!972060)) (c!444958 (regex!4863 rule!196))))))

(declare-fun b!2748862 () Bool)

(declare-fun e!1732492 () Bool)

(declare-fun e!1732498 () Bool)

(assert (=> b!2748862 (= e!1732492 e!1732498)))

(declare-fun res!1153042 () Bool)

(assert (=> b!2748862 (=> (not res!1153042) (not e!1732498))))

(declare-fun lt!972173 () Bool)

(assert (=> b!2748862 (= res!1153042 (not lt!972173))))

(declare-fun b!2748863 () Bool)

(assert (=> b!2748863 (= e!1732498 e!1732497)))

(declare-fun res!1153040 () Bool)

(assert (=> b!2748863 (=> res!1153040 e!1732497)))

(declare-fun call!177478 () Bool)

(assert (=> b!2748863 (= res!1153040 call!177478)))

(declare-fun b!2748864 () Bool)

(declare-fun e!1732495 () Bool)

(assert (=> b!2748864 (= e!1732495 (matchR!3658 (derivativeStep!2250 (regex!4863 rule!196) (head!6118 (_1!18531 lt!972060))) (tail!4356 (_1!18531 lt!972060))))))

(declare-fun b!2748866 () Bool)

(assert (=> b!2748866 (= e!1732497 (not (= (head!6118 (_1!18531 lt!972060)) (c!444958 (regex!4863 rule!196)))))))

(declare-fun b!2748867 () Bool)

(declare-fun e!1732493 () Bool)

(assert (=> b!2748867 (= e!1732493 (= lt!972173 call!177478))))

(declare-fun b!2748868 () Bool)

(declare-fun e!1732496 () Bool)

(assert (=> b!2748868 (= e!1732493 e!1732496)))

(declare-fun c!444992 () Bool)

(assert (=> b!2748868 (= c!444992 ((_ is EmptyLang!8021) (regex!4863 rule!196)))))

(declare-fun b!2748869 () Bool)

(declare-fun res!1153041 () Bool)

(assert (=> b!2748869 (=> (not res!1153041) (not e!1732494))))

(assert (=> b!2748869 (= res!1153041 (isEmpty!18057 (tail!4356 (_1!18531 lt!972060))))))

(declare-fun b!2748870 () Bool)

(assert (=> b!2748870 (= e!1732496 (not lt!972173))))

(declare-fun b!2748871 () Bool)

(assert (=> b!2748871 (= e!1732495 (nullable!2612 (regex!4863 rule!196)))))

(declare-fun b!2748872 () Bool)

(declare-fun res!1153047 () Bool)

(assert (=> b!2748872 (=> res!1153047 e!1732492)))

(assert (=> b!2748872 (= res!1153047 (not ((_ is ElementMatch!8021) (regex!4863 rule!196))))))

(assert (=> b!2748872 (= e!1732496 e!1732492)))

(declare-fun b!2748865 () Bool)

(declare-fun res!1153043 () Bool)

(assert (=> b!2748865 (=> res!1153043 e!1732492)))

(assert (=> b!2748865 (= res!1153043 e!1732494)))

(declare-fun res!1153045 () Bool)

(assert (=> b!2748865 (=> (not res!1153045) (not e!1732494))))

(assert (=> b!2748865 (= res!1153045 lt!972173)))

(declare-fun d!796353 () Bool)

(assert (=> d!796353 e!1732493))

(declare-fun c!444991 () Bool)

(assert (=> d!796353 (= c!444991 ((_ is EmptyExpr!8021) (regex!4863 rule!196)))))

(assert (=> d!796353 (= lt!972173 e!1732495)))

(declare-fun c!444993 () Bool)

(assert (=> d!796353 (= c!444993 (isEmpty!18057 (_1!18531 lt!972060)))))

(assert (=> d!796353 (validRegex!3322 (regex!4863 rule!196))))

(assert (=> d!796353 (= (matchR!3658 (regex!4863 rule!196) (_1!18531 lt!972060)) lt!972173)))

(declare-fun bm!177473 () Bool)

(assert (=> bm!177473 (= call!177478 (isEmpty!18057 (_1!18531 lt!972060)))))

(declare-fun b!2748873 () Bool)

(declare-fun res!1153046 () Bool)

(assert (=> b!2748873 (=> (not res!1153046) (not e!1732494))))

(assert (=> b!2748873 (= res!1153046 (not call!177478))))

(assert (= (and d!796353 c!444993) b!2748871))

(assert (= (and d!796353 (not c!444993)) b!2748864))

(assert (= (and d!796353 c!444991) b!2748867))

(assert (= (and d!796353 (not c!444991)) b!2748868))

(assert (= (and b!2748868 c!444992) b!2748870))

(assert (= (and b!2748868 (not c!444992)) b!2748872))

(assert (= (and b!2748872 (not res!1153047)) b!2748865))

(assert (= (and b!2748865 res!1153045) b!2748873))

(assert (= (and b!2748873 res!1153046) b!2748869))

(assert (= (and b!2748869 res!1153041) b!2748861))

(assert (= (and b!2748865 (not res!1153043)) b!2748862))

(assert (= (and b!2748862 res!1153042) b!2748863))

(assert (= (and b!2748863 (not res!1153040)) b!2748860))

(assert (= (and b!2748860 (not res!1153044)) b!2748866))

(assert (= (or b!2748867 b!2748863 b!2748873) bm!177473))

(assert (=> b!2748871 m!3164355))

(assert (=> bm!177473 m!3164319))

(declare-fun m!3164475 () Bool)

(assert (=> b!2748860 m!3164475))

(assert (=> b!2748860 m!3164475))

(declare-fun m!3164477 () Bool)

(assert (=> b!2748860 m!3164477))

(assert (=> b!2748869 m!3164475))

(assert (=> b!2748869 m!3164475))

(assert (=> b!2748869 m!3164477))

(declare-fun m!3164479 () Bool)

(assert (=> b!2748866 m!3164479))

(assert (=> d!796353 m!3164319))

(assert (=> d!796353 m!3164353))

(assert (=> b!2748861 m!3164479))

(assert (=> b!2748864 m!3164479))

(assert (=> b!2748864 m!3164479))

(declare-fun m!3164481 () Bool)

(assert (=> b!2748864 m!3164481))

(assert (=> b!2748864 m!3164475))

(assert (=> b!2748864 m!3164481))

(assert (=> b!2748864 m!3164475))

(declare-fun m!3164483 () Bool)

(assert (=> b!2748864 m!3164483))

(assert (=> b!2748726 d!796353))

(declare-fun setRes!21849 () Bool)

(declare-fun e!1732507 () Bool)

(declare-fun tp!867216 () Bool)

(declare-fun setElem!21849 () Context!4478)

(declare-fun setNonEmpty!21849 () Bool)

(declare-fun inv!43109 (Context!4478) Bool)

(assert (=> setNonEmpty!21849 (= setRes!21849 (and tp!867216 (inv!43109 setElem!21849) e!1732507))))

(declare-fun setRest!21849 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21849 (= (_2!18526 (h!37156 (zeroValue!3914 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21849 true) setRest!21849))))

(declare-fun b!2748882 () Bool)

(declare-fun tp!867218 () Bool)

(assert (=> b!2748882 (= e!1732507 tp!867218)))

(declare-fun b!2748883 () Bool)

(declare-fun e!1732506 () Bool)

(declare-fun tp!867220 () Bool)

(assert (=> b!2748883 (= e!1732506 tp!867220)))

(declare-fun setIsEmpty!21849 () Bool)

(assert (=> setIsEmpty!21849 setRes!21849))

(declare-fun tp!867219 () Bool)

(declare-fun tp_is_empty!13947 () Bool)

(declare-fun tp!867217 () Bool)

(declare-fun b!2748884 () Bool)

(declare-fun e!1732505 () Bool)

(assert (=> b!2748884 (= e!1732505 (and tp!867217 (inv!43109 (_2!18525 (_1!18526 (h!37156 (zeroValue!3914 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730)))))))))) e!1732506 tp_is_empty!13947 setRes!21849 tp!867219))))

(declare-fun condSetEmpty!21849 () Bool)

(assert (=> b!2748884 (= condSetEmpty!21849 (= (_2!18526 (h!37156 (zeroValue!3914 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730)))))))) ((as const (Array Context!4478 Bool)) false)))))

(assert (=> b!2748709 (= tp!867192 e!1732505)))

(assert (= b!2748884 b!2748883))

(assert (= (and b!2748884 condSetEmpty!21849) setIsEmpty!21849))

(assert (= (and b!2748884 (not condSetEmpty!21849)) setNonEmpty!21849))

(assert (= setNonEmpty!21849 b!2748882))

(assert (= (and b!2748709 ((_ is Cons!31736) (zeroValue!3914 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730)))))))) b!2748884))

(declare-fun m!3164485 () Bool)

(assert (=> setNonEmpty!21849 m!3164485))

(declare-fun m!3164487 () Bool)

(assert (=> b!2748884 m!3164487))

(declare-fun e!1732510 () Bool)

(declare-fun tp!867221 () Bool)

(declare-fun setNonEmpty!21850 () Bool)

(declare-fun setElem!21850 () Context!4478)

(declare-fun setRes!21850 () Bool)

(assert (=> setNonEmpty!21850 (= setRes!21850 (and tp!867221 (inv!43109 setElem!21850) e!1732510))))

(declare-fun setRest!21850 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21850 (= (_2!18526 (h!37156 (minValue!3914 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730)))))))) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21850 true) setRest!21850))))

(declare-fun b!2748885 () Bool)

(declare-fun tp!867223 () Bool)

(assert (=> b!2748885 (= e!1732510 tp!867223)))

(declare-fun b!2748886 () Bool)

(declare-fun e!1732509 () Bool)

(declare-fun tp!867225 () Bool)

(assert (=> b!2748886 (= e!1732509 tp!867225)))

(declare-fun setIsEmpty!21850 () Bool)

(assert (=> setIsEmpty!21850 setRes!21850))

(declare-fun e!1732508 () Bool)

(declare-fun b!2748887 () Bool)

(declare-fun tp!867222 () Bool)

(declare-fun tp!867224 () Bool)

(assert (=> b!2748887 (= e!1732508 (and tp!867222 (inv!43109 (_2!18525 (_1!18526 (h!37156 (minValue!3914 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730)))))))))) e!1732509 tp_is_empty!13947 setRes!21850 tp!867224))))

(declare-fun condSetEmpty!21850 () Bool)

(assert (=> b!2748887 (= condSetEmpty!21850 (= (_2!18526 (h!37156 (minValue!3914 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730)))))))) ((as const (Array Context!4478 Bool)) false)))))

(assert (=> b!2748709 (= tp!867185 e!1732508)))

(assert (= b!2748887 b!2748886))

(assert (= (and b!2748887 condSetEmpty!21850) setIsEmpty!21850))

(assert (= (and b!2748887 (not condSetEmpty!21850)) setNonEmpty!21850))

(assert (= setNonEmpty!21850 b!2748885))

(assert (= (and b!2748709 ((_ is Cons!31736) (minValue!3914 (v!33346 (underlying!7511 (v!33347 (underlying!7512 (cache!3703 cacheDown!730)))))))) b!2748887))

(declare-fun m!3164489 () Bool)

(assert (=> setNonEmpty!21850 m!3164489))

(declare-fun m!3164491 () Bool)

(assert (=> b!2748887 m!3164491))

(declare-fun tp!867232 () Bool)

(declare-fun b!2748896 () Bool)

(declare-fun tp!867233 () Bool)

(declare-fun e!1732515 () Bool)

(assert (=> b!2748896 (= e!1732515 (and (inv!43106 (left!24277 (c!444957 input!1561))) tp!867232 (inv!43106 (right!24607 (c!444957 input!1561))) tp!867233))))

(declare-fun b!2748898 () Bool)

(declare-fun e!1732516 () Bool)

(declare-fun tp!867234 () Bool)

(assert (=> b!2748898 (= e!1732516 tp!867234)))

(declare-fun b!2748897 () Bool)

(declare-fun inv!43110 (IArray!19823) Bool)

(assert (=> b!2748897 (= e!1732515 (and (inv!43110 (xs!13016 (c!444957 input!1561))) e!1732516))))

(assert (=> b!2748728 (= tp!867198 (and (inv!43106 (c!444957 input!1561)) e!1732515))))

(assert (= (and b!2748728 ((_ is Node!9909) (c!444957 input!1561))) b!2748896))

(assert (= b!2748897 b!2748898))

(assert (= (and b!2748728 ((_ is Leaf!15088) (c!444957 input!1561))) b!2748897))

(declare-fun m!3164493 () Bool)

(assert (=> b!2748896 m!3164493))

(declare-fun m!3164495 () Bool)

(assert (=> b!2748896 m!3164495))

(declare-fun m!3164497 () Bool)

(assert (=> b!2748897 m!3164497))

(assert (=> b!2748728 m!3164327))

(declare-fun setIsEmpty!21853 () Bool)

(declare-fun setRes!21853 () Bool)

(assert (=> setIsEmpty!21853 setRes!21853))

(declare-fun b!2748907 () Bool)

(declare-fun e!1732525 () Bool)

(declare-fun tp!867245 () Bool)

(assert (=> b!2748907 (= e!1732525 tp!867245)))

(declare-fun setElem!21853 () Context!4478)

(declare-fun tp!867243 () Bool)

(declare-fun setNonEmpty!21853 () Bool)

(assert (=> setNonEmpty!21853 (= setRes!21853 (and tp!867243 (inv!43109 setElem!21853) e!1732525))))

(declare-fun setRest!21853 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21853 (= (_2!18528 (h!37155 (zeroValue!3913 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21853 true) setRest!21853))))

(declare-fun b!2748908 () Bool)

(declare-fun e!1732523 () Bool)

(declare-fun tp!867246 () Bool)

(assert (=> b!2748908 (= e!1732523 tp!867246)))

(declare-fun b!2748909 () Bool)

(declare-fun e!1732524 () Bool)

(declare-fun tp!867244 () Bool)

(assert (=> b!2748909 (= e!1732524 (and (inv!43109 (_1!18527 (_1!18528 (h!37155 (zeroValue!3913 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717)))))))))) e!1732523 tp_is_empty!13947 setRes!21853 tp!867244))))

(declare-fun condSetEmpty!21853 () Bool)

(assert (=> b!2748909 (= condSetEmpty!21853 (= (_2!18528 (h!37155 (zeroValue!3913 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717)))))))) ((as const (Array Context!4478 Bool)) false)))))

(assert (=> b!2748724 (= tp!867194 e!1732524)))

(assert (= b!2748909 b!2748908))

(assert (= (and b!2748909 condSetEmpty!21853) setIsEmpty!21853))

(assert (= (and b!2748909 (not condSetEmpty!21853)) setNonEmpty!21853))

(assert (= setNonEmpty!21853 b!2748907))

(assert (= (and b!2748724 ((_ is Cons!31735) (zeroValue!3913 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717)))))))) b!2748909))

(declare-fun m!3164499 () Bool)

(assert (=> setNonEmpty!21853 m!3164499))

(declare-fun m!3164501 () Bool)

(assert (=> b!2748909 m!3164501))

(declare-fun setIsEmpty!21854 () Bool)

(declare-fun setRes!21854 () Bool)

(assert (=> setIsEmpty!21854 setRes!21854))

(declare-fun b!2748910 () Bool)

(declare-fun e!1732528 () Bool)

(declare-fun tp!867249 () Bool)

(assert (=> b!2748910 (= e!1732528 tp!867249)))

(declare-fun setElem!21854 () Context!4478)

(declare-fun setNonEmpty!21854 () Bool)

(declare-fun tp!867247 () Bool)

(assert (=> setNonEmpty!21854 (= setRes!21854 (and tp!867247 (inv!43109 setElem!21854) e!1732528))))

(declare-fun setRest!21854 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21854 (= (_2!18528 (h!37155 (minValue!3913 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717)))))))) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21854 true) setRest!21854))))

(declare-fun b!2748911 () Bool)

(declare-fun e!1732526 () Bool)

(declare-fun tp!867250 () Bool)

(assert (=> b!2748911 (= e!1732526 tp!867250)))

(declare-fun e!1732527 () Bool)

(declare-fun b!2748912 () Bool)

(declare-fun tp!867248 () Bool)

(assert (=> b!2748912 (= e!1732527 (and (inv!43109 (_1!18527 (_1!18528 (h!37155 (minValue!3913 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717)))))))))) e!1732526 tp_is_empty!13947 setRes!21854 tp!867248))))

(declare-fun condSetEmpty!21854 () Bool)

(assert (=> b!2748912 (= condSetEmpty!21854 (= (_2!18528 (h!37155 (minValue!3913 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717)))))))) ((as const (Array Context!4478 Bool)) false)))))

(assert (=> b!2748724 (= tp!867200 e!1732527)))

(assert (= b!2748912 b!2748911))

(assert (= (and b!2748912 condSetEmpty!21854) setIsEmpty!21854))

(assert (= (and b!2748912 (not condSetEmpty!21854)) setNonEmpty!21854))

(assert (= setNonEmpty!21854 b!2748910))

(assert (= (and b!2748724 ((_ is Cons!31735) (minValue!3913 (v!33345 (underlying!7513 (v!33348 (underlying!7514 (cache!3704 cacheUp!717)))))))) b!2748912))

(declare-fun m!3164503 () Bool)

(assert (=> setNonEmpty!21854 m!3164503))

(declare-fun m!3164505 () Bool)

(assert (=> b!2748912 m!3164505))

(declare-fun setIsEmpty!21855 () Bool)

(declare-fun setRes!21855 () Bool)

(assert (=> setIsEmpty!21855 setRes!21855))

(declare-fun b!2748913 () Bool)

(declare-fun e!1732531 () Bool)

(declare-fun tp!867253 () Bool)

(assert (=> b!2748913 (= e!1732531 tp!867253)))

(declare-fun tp!867251 () Bool)

(declare-fun setElem!21855 () Context!4478)

(declare-fun setNonEmpty!21855 () Bool)

(assert (=> setNonEmpty!21855 (= setRes!21855 (and tp!867251 (inv!43109 setElem!21855) e!1732531))))

(declare-fun setRest!21855 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21855 (= (_2!18528 (h!37155 mapDefault!16663)) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21855 true) setRest!21855))))

(declare-fun b!2748914 () Bool)

(declare-fun e!1732529 () Bool)

(declare-fun tp!867254 () Bool)

(assert (=> b!2748914 (= e!1732529 tp!867254)))

(declare-fun b!2748915 () Bool)

(declare-fun tp!867252 () Bool)

(declare-fun e!1732530 () Bool)

(assert (=> b!2748915 (= e!1732530 (and (inv!43109 (_1!18527 (_1!18528 (h!37155 mapDefault!16663)))) e!1732529 tp_is_empty!13947 setRes!21855 tp!867252))))

(declare-fun condSetEmpty!21855 () Bool)

(assert (=> b!2748915 (= condSetEmpty!21855 (= (_2!18528 (h!37155 mapDefault!16663)) ((as const (Array Context!4478 Bool)) false)))))

(assert (=> b!2748716 (= tp!867189 e!1732530)))

(assert (= b!2748915 b!2748914))

(assert (= (and b!2748915 condSetEmpty!21855) setIsEmpty!21855))

(assert (= (and b!2748915 (not condSetEmpty!21855)) setNonEmpty!21855))

(assert (= setNonEmpty!21855 b!2748913))

(assert (= (and b!2748716 ((_ is Cons!31735) mapDefault!16663)) b!2748915))

(declare-fun m!3164507 () Bool)

(assert (=> setNonEmpty!21855 m!3164507))

(declare-fun m!3164509 () Bool)

(assert (=> b!2748915 m!3164509))

(declare-fun setNonEmpty!21856 () Bool)

(declare-fun tp!867255 () Bool)

(declare-fun e!1732534 () Bool)

(declare-fun setElem!21856 () Context!4478)

(declare-fun setRes!21856 () Bool)

(assert (=> setNonEmpty!21856 (= setRes!21856 (and tp!867255 (inv!43109 setElem!21856) e!1732534))))

(declare-fun setRest!21856 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21856 (= (_2!18526 (h!37156 mapDefault!16664)) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21856 true) setRest!21856))))

(declare-fun b!2748916 () Bool)

(declare-fun tp!867257 () Bool)

(assert (=> b!2748916 (= e!1732534 tp!867257)))

(declare-fun b!2748917 () Bool)

(declare-fun e!1732533 () Bool)

(declare-fun tp!867259 () Bool)

(assert (=> b!2748917 (= e!1732533 tp!867259)))

(declare-fun setIsEmpty!21856 () Bool)

(assert (=> setIsEmpty!21856 setRes!21856))

(declare-fun e!1732532 () Bool)

(declare-fun b!2748918 () Bool)

(declare-fun tp!867256 () Bool)

(declare-fun tp!867258 () Bool)

(assert (=> b!2748918 (= e!1732532 (and tp!867256 (inv!43109 (_2!18525 (_1!18526 (h!37156 mapDefault!16664)))) e!1732533 tp_is_empty!13947 setRes!21856 tp!867258))))

(declare-fun condSetEmpty!21856 () Bool)

(assert (=> b!2748918 (= condSetEmpty!21856 (= (_2!18526 (h!37156 mapDefault!16664)) ((as const (Array Context!4478 Bool)) false)))))

(assert (=> b!2748711 (= tp!867199 e!1732532)))

(assert (= b!2748918 b!2748917))

(assert (= (and b!2748918 condSetEmpty!21856) setIsEmpty!21856))

(assert (= (and b!2748918 (not condSetEmpty!21856)) setNonEmpty!21856))

(assert (= setNonEmpty!21856 b!2748916))

(assert (= (and b!2748711 ((_ is Cons!31736) mapDefault!16664)) b!2748918))

(declare-fun m!3164511 () Bool)

(assert (=> setNonEmpty!21856 m!3164511))

(declare-fun m!3164513 () Bool)

(assert (=> b!2748918 m!3164513))

(declare-fun e!1732537 () Bool)

(assert (=> b!2748712 (= tp!867188 e!1732537)))

(declare-fun b!2748932 () Bool)

(declare-fun tp!867271 () Bool)

(declare-fun tp!867270 () Bool)

(assert (=> b!2748932 (= e!1732537 (and tp!867271 tp!867270))))

(declare-fun b!2748929 () Bool)

(assert (=> b!2748929 (= e!1732537 tp_is_empty!13947)))

(declare-fun b!2748931 () Bool)

(declare-fun tp!867273 () Bool)

(assert (=> b!2748931 (= e!1732537 tp!867273)))

(declare-fun b!2748930 () Bool)

(declare-fun tp!867274 () Bool)

(declare-fun tp!867272 () Bool)

(assert (=> b!2748930 (= e!1732537 (and tp!867274 tp!867272))))

(assert (= (and b!2748712 ((_ is ElementMatch!8021) (regex!4863 rule!196))) b!2748929))

(assert (= (and b!2748712 ((_ is Concat!13107) (regex!4863 rule!196))) b!2748930))

(assert (= (and b!2748712 ((_ is Star!8021) (regex!4863 rule!196))) b!2748931))

(assert (= (and b!2748712 ((_ is Union!8021) (regex!4863 rule!196))) b!2748932))

(declare-fun mapNonEmpty!16667 () Bool)

(declare-fun mapRes!16667 () Bool)

(declare-fun tp!867297 () Bool)

(declare-fun e!1732552 () Bool)

(assert (=> mapNonEmpty!16667 (= mapRes!16667 (and tp!867297 e!1732552))))

(declare-fun mapKey!16667 () (_ BitVec 32))

(declare-fun mapRest!16667 () (Array (_ BitVec 32) List!31835))

(declare-fun mapValue!16667 () List!31835)

(assert (=> mapNonEmpty!16667 (= mapRest!16663 (store mapRest!16667 mapKey!16667 mapValue!16667))))

(declare-fun b!2748947 () Bool)

(declare-fun e!1732550 () Bool)

(declare-fun tp!867299 () Bool)

(assert (=> b!2748947 (= e!1732550 tp!867299)))

(declare-fun setIsEmpty!21861 () Bool)

(declare-fun setRes!21861 () Bool)

(assert (=> setIsEmpty!21861 setRes!21861))

(declare-fun mapIsEmpty!16667 () Bool)

(assert (=> mapIsEmpty!16667 mapRes!16667))

(declare-fun setNonEmpty!21861 () Bool)

(declare-fun setRes!21862 () Bool)

(declare-fun e!1732551 () Bool)

(declare-fun setElem!21861 () Context!4478)

(declare-fun tp!867301 () Bool)

(assert (=> setNonEmpty!21861 (= setRes!21862 (and tp!867301 (inv!43109 setElem!21861) e!1732551))))

(declare-fun setRest!21862 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21861 (= (_2!18528 (h!37155 mapValue!16667)) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21861 true) setRest!21862))))

(declare-fun b!2748948 () Bool)

(declare-fun e!1732555 () Bool)

(declare-fun tp!867296 () Bool)

(assert (=> b!2748948 (= e!1732552 (and (inv!43109 (_1!18527 (_1!18528 (h!37155 mapValue!16667)))) e!1732555 tp_is_empty!13947 setRes!21862 tp!867296))))

(declare-fun condSetEmpty!21862 () Bool)

(assert (=> b!2748948 (= condSetEmpty!21862 (= (_2!18528 (h!37155 mapValue!16667)) ((as const (Array Context!4478 Bool)) false)))))

(declare-fun setIsEmpty!21862 () Bool)

(assert (=> setIsEmpty!21862 setRes!21862))

(declare-fun b!2748950 () Bool)

(declare-fun tp!867298 () Bool)

(assert (=> b!2748950 (= e!1732555 tp!867298)))

(declare-fun b!2748951 () Bool)

(declare-fun e!1732553 () Bool)

(declare-fun tp!867295 () Bool)

(declare-fun e!1732554 () Bool)

(declare-fun mapDefault!16667 () List!31835)

(assert (=> b!2748951 (= e!1732554 (and (inv!43109 (_1!18527 (_1!18528 (h!37155 mapDefault!16667)))) e!1732553 tp_is_empty!13947 setRes!21861 tp!867295))))

(declare-fun condSetEmpty!21861 () Bool)

(assert (=> b!2748951 (= condSetEmpty!21861 (= (_2!18528 (h!37155 mapDefault!16667)) ((as const (Array Context!4478 Bool)) false)))))

(declare-fun setNonEmpty!21862 () Bool)

(declare-fun setElem!21862 () Context!4478)

(declare-fun tp!867293 () Bool)

(assert (=> setNonEmpty!21862 (= setRes!21861 (and tp!867293 (inv!43109 setElem!21862) e!1732550))))

(declare-fun setRest!21861 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21862 (= (_2!18528 (h!37155 mapDefault!16667)) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21862 true) setRest!21861))))

(declare-fun b!2748952 () Bool)

(declare-fun tp!867294 () Bool)

(assert (=> b!2748952 (= e!1732553 tp!867294)))

(declare-fun condMapEmpty!16667 () Bool)

(assert (=> mapNonEmpty!16664 (= condMapEmpty!16667 (= mapRest!16663 ((as const (Array (_ BitVec 32) List!31835)) mapDefault!16667)))))

(assert (=> mapNonEmpty!16664 (= tp!867197 (and e!1732554 mapRes!16667))))

(declare-fun b!2748949 () Bool)

(declare-fun tp!867300 () Bool)

(assert (=> b!2748949 (= e!1732551 tp!867300)))

(assert (= (and mapNonEmpty!16664 condMapEmpty!16667) mapIsEmpty!16667))

(assert (= (and mapNonEmpty!16664 (not condMapEmpty!16667)) mapNonEmpty!16667))

(assert (= b!2748948 b!2748950))

(assert (= (and b!2748948 condSetEmpty!21862) setIsEmpty!21862))

(assert (= (and b!2748948 (not condSetEmpty!21862)) setNonEmpty!21861))

(assert (= setNonEmpty!21861 b!2748949))

(assert (= (and mapNonEmpty!16667 ((_ is Cons!31735) mapValue!16667)) b!2748948))

(assert (= b!2748951 b!2748952))

(assert (= (and b!2748951 condSetEmpty!21861) setIsEmpty!21861))

(assert (= (and b!2748951 (not condSetEmpty!21861)) setNonEmpty!21862))

(assert (= setNonEmpty!21862 b!2748947))

(assert (= (and mapNonEmpty!16664 ((_ is Cons!31735) mapDefault!16667)) b!2748951))

(declare-fun m!3164515 () Bool)

(assert (=> b!2748951 m!3164515))

(declare-fun m!3164517 () Bool)

(assert (=> b!2748948 m!3164517))

(declare-fun m!3164519 () Bool)

(assert (=> setNonEmpty!21861 m!3164519))

(declare-fun m!3164521 () Bool)

(assert (=> setNonEmpty!21862 m!3164521))

(declare-fun m!3164523 () Bool)

(assert (=> mapNonEmpty!16667 m!3164523))

(declare-fun setIsEmpty!21863 () Bool)

(declare-fun setRes!21863 () Bool)

(assert (=> setIsEmpty!21863 setRes!21863))

(declare-fun b!2748953 () Bool)

(declare-fun e!1732558 () Bool)

(declare-fun tp!867304 () Bool)

(assert (=> b!2748953 (= e!1732558 tp!867304)))

(declare-fun setNonEmpty!21863 () Bool)

(declare-fun tp!867302 () Bool)

(declare-fun setElem!21863 () Context!4478)

(assert (=> setNonEmpty!21863 (= setRes!21863 (and tp!867302 (inv!43109 setElem!21863) e!1732558))))

(declare-fun setRest!21863 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21863 (= (_2!18528 (h!37155 mapValue!16663)) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21863 true) setRest!21863))))

(declare-fun b!2748954 () Bool)

(declare-fun e!1732556 () Bool)

(declare-fun tp!867305 () Bool)

(assert (=> b!2748954 (= e!1732556 tp!867305)))

(declare-fun tp!867303 () Bool)

(declare-fun b!2748955 () Bool)

(declare-fun e!1732557 () Bool)

(assert (=> b!2748955 (= e!1732557 (and (inv!43109 (_1!18527 (_1!18528 (h!37155 mapValue!16663)))) e!1732556 tp_is_empty!13947 setRes!21863 tp!867303))))

(declare-fun condSetEmpty!21863 () Bool)

(assert (=> b!2748955 (= condSetEmpty!21863 (= (_2!18528 (h!37155 mapValue!16663)) ((as const (Array Context!4478 Bool)) false)))))

(assert (=> mapNonEmpty!16664 (= tp!867186 e!1732557)))

(assert (= b!2748955 b!2748954))

(assert (= (and b!2748955 condSetEmpty!21863) setIsEmpty!21863))

(assert (= (and b!2748955 (not condSetEmpty!21863)) setNonEmpty!21863))

(assert (= setNonEmpty!21863 b!2748953))

(assert (= (and mapNonEmpty!16664 ((_ is Cons!31735) mapValue!16663)) b!2748955))

(declare-fun m!3164525 () Bool)

(assert (=> setNonEmpty!21863 m!3164525))

(declare-fun m!3164527 () Bool)

(assert (=> b!2748955 m!3164527))

(declare-fun b!2748970 () Bool)

(declare-fun e!1732575 () Bool)

(declare-fun tp!867328 () Bool)

(assert (=> b!2748970 (= e!1732575 tp!867328)))

(declare-fun e!1732576 () Bool)

(declare-fun setRes!21868 () Bool)

(declare-fun b!2748971 () Bool)

(declare-fun mapValue!16670 () List!31836)

(declare-fun tp!867330 () Bool)

(declare-fun tp!867335 () Bool)

(assert (=> b!2748971 (= e!1732576 (and tp!867330 (inv!43109 (_2!18525 (_1!18526 (h!37156 mapValue!16670)))) e!1732575 tp_is_empty!13947 setRes!21868 tp!867335))))

(declare-fun condSetEmpty!21868 () Bool)

(assert (=> b!2748971 (= condSetEmpty!21868 (= (_2!18526 (h!37156 mapValue!16670)) ((as const (Array Context!4478 Bool)) false)))))

(declare-fun b!2748972 () Bool)

(declare-fun e!1732572 () Bool)

(declare-fun tp!867336 () Bool)

(assert (=> b!2748972 (= e!1732572 tp!867336)))

(declare-fun condMapEmpty!16670 () Bool)

(declare-fun mapDefault!16670 () List!31836)

(assert (=> mapNonEmpty!16663 (= condMapEmpty!16670 (= mapRest!16664 ((as const (Array (_ BitVec 32) List!31836)) mapDefault!16670)))))

(declare-fun e!1732573 () Bool)

(declare-fun mapRes!16670 () Bool)

(assert (=> mapNonEmpty!16663 (= tp!867193 (and e!1732573 mapRes!16670))))

(declare-fun setIsEmpty!21868 () Bool)

(declare-fun setRes!21869 () Bool)

(assert (=> setIsEmpty!21868 setRes!21869))

(declare-fun setIsEmpty!21869 () Bool)

(assert (=> setIsEmpty!21869 setRes!21868))

(declare-fun mapNonEmpty!16670 () Bool)

(declare-fun tp!867331 () Bool)

(assert (=> mapNonEmpty!16670 (= mapRes!16670 (and tp!867331 e!1732576))))

(declare-fun mapKey!16670 () (_ BitVec 32))

(declare-fun mapRest!16670 () (Array (_ BitVec 32) List!31836))

(assert (=> mapNonEmpty!16670 (= mapRest!16664 (store mapRest!16670 mapKey!16670 mapValue!16670))))

(declare-fun b!2748973 () Bool)

(declare-fun tp!867332 () Bool)

(declare-fun tp!867338 () Bool)

(assert (=> b!2748973 (= e!1732573 (and tp!867338 (inv!43109 (_2!18525 (_1!18526 (h!37156 mapDefault!16670)))) e!1732572 tp_is_empty!13947 setRes!21869 tp!867332))))

(declare-fun condSetEmpty!21869 () Bool)

(assert (=> b!2748973 (= condSetEmpty!21869 (= (_2!18526 (h!37156 mapDefault!16670)) ((as const (Array Context!4478 Bool)) false)))))

(declare-fun e!1732574 () Bool)

(declare-fun setNonEmpty!21868 () Bool)

(declare-fun setElem!21869 () Context!4478)

(declare-fun tp!867329 () Bool)

(assert (=> setNonEmpty!21868 (= setRes!21869 (and tp!867329 (inv!43109 setElem!21869) e!1732574))))

(declare-fun setRest!21869 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21868 (= (_2!18526 (h!37156 mapDefault!16670)) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21869 true) setRest!21869))))

(declare-fun b!2748974 () Bool)

(declare-fun e!1732571 () Bool)

(declare-fun tp!867334 () Bool)

(assert (=> b!2748974 (= e!1732571 tp!867334)))

(declare-fun setElem!21868 () Context!4478)

(declare-fun setNonEmpty!21869 () Bool)

(declare-fun tp!867333 () Bool)

(assert (=> setNonEmpty!21869 (= setRes!21868 (and tp!867333 (inv!43109 setElem!21868) e!1732571))))

(declare-fun setRest!21868 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21869 (= (_2!18526 (h!37156 mapValue!16670)) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21868 true) setRest!21868))))

(declare-fun mapIsEmpty!16670 () Bool)

(assert (=> mapIsEmpty!16670 mapRes!16670))

(declare-fun b!2748975 () Bool)

(declare-fun tp!867337 () Bool)

(assert (=> b!2748975 (= e!1732574 tp!867337)))

(assert (= (and mapNonEmpty!16663 condMapEmpty!16670) mapIsEmpty!16670))

(assert (= (and mapNonEmpty!16663 (not condMapEmpty!16670)) mapNonEmpty!16670))

(assert (= b!2748971 b!2748970))

(assert (= (and b!2748971 condSetEmpty!21868) setIsEmpty!21869))

(assert (= (and b!2748971 (not condSetEmpty!21868)) setNonEmpty!21869))

(assert (= setNonEmpty!21869 b!2748974))

(assert (= (and mapNonEmpty!16670 ((_ is Cons!31736) mapValue!16670)) b!2748971))

(assert (= b!2748973 b!2748972))

(assert (= (and b!2748973 condSetEmpty!21869) setIsEmpty!21868))

(assert (= (and b!2748973 (not condSetEmpty!21869)) setNonEmpty!21868))

(assert (= setNonEmpty!21868 b!2748975))

(assert (= (and mapNonEmpty!16663 ((_ is Cons!31736) mapDefault!16670)) b!2748973))

(declare-fun m!3164529 () Bool)

(assert (=> b!2748971 m!3164529))

(declare-fun m!3164531 () Bool)

(assert (=> b!2748973 m!3164531))

(declare-fun m!3164533 () Bool)

(assert (=> mapNonEmpty!16670 m!3164533))

(declare-fun m!3164535 () Bool)

(assert (=> setNonEmpty!21869 m!3164535))

(declare-fun m!3164537 () Bool)

(assert (=> setNonEmpty!21868 m!3164537))

(declare-fun setNonEmpty!21870 () Bool)

(declare-fun tp!867339 () Bool)

(declare-fun setElem!21870 () Context!4478)

(declare-fun setRes!21870 () Bool)

(declare-fun e!1732579 () Bool)

(assert (=> setNonEmpty!21870 (= setRes!21870 (and tp!867339 (inv!43109 setElem!21870) e!1732579))))

(declare-fun setRest!21870 () (InoxSet Context!4478))

(assert (=> setNonEmpty!21870 (= (_2!18526 (h!37156 mapValue!16664)) ((_ map or) (store ((as const (Array Context!4478 Bool)) false) setElem!21870 true) setRest!21870))))

(declare-fun b!2748976 () Bool)

(declare-fun tp!867341 () Bool)

(assert (=> b!2748976 (= e!1732579 tp!867341)))

(declare-fun b!2748977 () Bool)

(declare-fun e!1732578 () Bool)

(declare-fun tp!867343 () Bool)

(assert (=> b!2748977 (= e!1732578 tp!867343)))

(declare-fun setIsEmpty!21870 () Bool)

(assert (=> setIsEmpty!21870 setRes!21870))

(declare-fun b!2748978 () Bool)

(declare-fun tp!867342 () Bool)

(declare-fun e!1732577 () Bool)

(declare-fun tp!867340 () Bool)

(assert (=> b!2748978 (= e!1732577 (and tp!867340 (inv!43109 (_2!18525 (_1!18526 (h!37156 mapValue!16664)))) e!1732578 tp_is_empty!13947 setRes!21870 tp!867342))))

(declare-fun condSetEmpty!21870 () Bool)

(assert (=> b!2748978 (= condSetEmpty!21870 (= (_2!18526 (h!37156 mapValue!16664)) ((as const (Array Context!4478 Bool)) false)))))

(assert (=> mapNonEmpty!16663 (= tp!867184 e!1732577)))

(assert (= b!2748978 b!2748977))

(assert (= (and b!2748978 condSetEmpty!21870) setIsEmpty!21870))

(assert (= (and b!2748978 (not condSetEmpty!21870)) setNonEmpty!21870))

(assert (= setNonEmpty!21870 b!2748976))

(assert (= (and mapNonEmpty!16663 ((_ is Cons!31736) mapValue!16664)) b!2748978))

(declare-fun m!3164539 () Bool)

(assert (=> setNonEmpty!21870 m!3164539))

(declare-fun m!3164541 () Bool)

(assert (=> b!2748978 m!3164541))

(declare-fun b_lambda!82931 () Bool)

(assert (= b_lambda!82929 (or (and b!2748719 b_free!77633) b_lambda!82931)))

(declare-fun b_lambda!82933 () Bool)

(assert (= b_lambda!82923 (or (and b!2748719 b_free!77635) b_lambda!82933)))

(declare-fun b_lambda!82935 () Bool)

(assert (= b_lambda!82925 (or (and b!2748719 b_free!77633) b_lambda!82935)))

(check-sat (not b_next!78331) (not b!2748918) (not b!2748861) (not setNonEmpty!21869) (not b!2748952) (not b!2748869) (not b!2748830) b_and!202353 (not bm!177466) (not bm!177473) (not b!2748977) (not d!796329) (not b!2748954) (not b!2748911) (not b!2748871) (not b!2748916) (not d!796309) (not b!2748914) (not b!2748898) (not b!2748808) (not b!2748931) (not b!2748884) (not b!2748831) (not b!2748812) (not d!796345) (not b!2748753) (not setNonEmpty!21863) (not b_next!78333) (not b!2748949) (not b!2748948) (not d!796311) (not bm!177468) (not b!2748974) (not b!2748866) (not b_lambda!82927) (not b!2748741) (not b_next!78337) (not b!2748883) (not bm!177463) (not b!2748950) (not b!2748887) (not b!2748770) (not bm!177467) (not b!2748910) (not setNonEmpty!21868) (not d!796305) (not b!2748971) (not d!796343) (not setNonEmpty!21870) (not b!2748908) (not b!2748973) (not tb!152973) (not bm!177470) (not b!2748970) (not tb!152975) (not b!2748976) (not d!796337) (not b!2748978) (not bm!177464) (not setNonEmpty!21862) (not b!2748804) (not b_next!78335) tp_is_empty!13947 (not b!2748897) (not b!2748953) (not b!2748909) b_and!202349 (not b_lambda!82931) (not d!796341) (not b!2748767) b_and!202351 (not b!2748917) (not setNonEmpty!21854) (not b!2748907) (not b!2748955) (not b!2748746) (not b!2748913) (not d!796313) (not b!2748930) (not tb!152971) (not b!2748951) (not bm!177465) (not d!796321) b_and!202367 (not d!796315) (not b!2748822) (not d!796353) (not b!2748972) (not b!2748860) (not setNonEmpty!21849) (not b!2748736) (not b_next!78329) (not b!2748885) (not b!2748882) (not d!796339) (not b!2748759) b_and!202365 (not d!796347) (not b!2748912) (not b!2748829) (not b!2748738) (not setNonEmpty!21861) (not setNonEmpty!21856) (not b!2748806) (not setNonEmpty!21853) (not b!2748896) (not b_next!78339) (not b!2748975) (not setNonEmpty!21855) (not b!2748932) (not b!2748728) (not b!2748864) (not b_lambda!82935) (not d!796323) (not b_lambda!82933) (not b!2748750) (not bm!177469) (not b!2748765) (not setNonEmpty!21850) (not d!796335) (not b!2748947) (not b!2748915) (not b!2748886) (not b!2748758) b_and!202355 (not mapNonEmpty!16670) (not mapNonEmpty!16667))
(check-sat (not b_next!78331) b_and!202353 (not b_next!78333) (not b_next!78337) (not b_next!78335) b_and!202349 b_and!202351 b_and!202367 (not b_next!78329) b_and!202365 (not b_next!78339) b_and!202355)
