; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274778 () Bool)

(assert start!274778)

(declare-fun b!2829172 () Bool)

(declare-fun b_free!81161 () Bool)

(declare-fun b_next!81865 () Bool)

(assert (=> b!2829172 (= b_free!81161 (not b_next!81865))))

(declare-fun tp!903526 () Bool)

(declare-fun b_and!206819 () Bool)

(assert (=> b!2829172 (= tp!903526 b_and!206819)))

(declare-fun b!2829152 () Bool)

(declare-fun b_free!81163 () Bool)

(declare-fun b_next!81867 () Bool)

(assert (=> b!2829152 (= b_free!81163 (not b_next!81867))))

(declare-fun tp!903531 () Bool)

(declare-fun b_and!206821 () Bool)

(assert (=> b!2829152 (= tp!903531 b_and!206821)))

(declare-fun b!2829159 () Bool)

(declare-fun b_free!81165 () Bool)

(declare-fun b_next!81869 () Bool)

(assert (=> b!2829159 (= b_free!81165 (not b_next!81869))))

(declare-fun tp!903525 () Bool)

(declare-fun b_and!206823 () Bool)

(assert (=> b!2829159 (= tp!903525 b_and!206823)))

(declare-fun b_free!81167 () Bool)

(declare-fun b_next!81871 () Bool)

(assert (=> b!2829159 (= b_free!81167 (not b_next!81871))))

(declare-fun tp!903529 () Bool)

(declare-fun b_and!206825 () Bool)

(assert (=> b!2829159 (= tp!903529 b_and!206825)))

(declare-fun b!2829151 () Bool)

(declare-fun b_free!81169 () Bool)

(declare-fun b_next!81873 () Bool)

(assert (=> b!2829151 (= b_free!81169 (not b_next!81873))))

(declare-fun tp!903527 () Bool)

(declare-fun b_and!206827 () Bool)

(assert (=> b!2829151 (= tp!903527 b_and!206827)))

(declare-fun b!2829170 () Bool)

(declare-fun b_free!81171 () Bool)

(declare-fun b_next!81875 () Bool)

(assert (=> b!2829170 (= b_free!81171 (not b_next!81875))))

(declare-fun tp!903520 () Bool)

(declare-fun b_and!206829 () Bool)

(assert (=> b!2829170 (= tp!903520 b_and!206829)))

(declare-fun e!1790781 () Bool)

(declare-fun tp!903522 () Bool)

(declare-fun e!1790778 () Bool)

(declare-datatypes ((C!16924 0))(
  ( (C!16925 (val!10474 Int)) )
))
(declare-datatypes ((Regex!8371 0))(
  ( (ElementMatch!8371 (c!457747 C!16924)) (Concat!13582 (regOne!17254 Regex!8371) (regTwo!17254 Regex!8371)) (EmptyExpr!8371) (Star!8371 (reg!8700 Regex!8371)) (EmptyLang!8371) (Union!8371 (regOne!17255 Regex!8371) (regTwo!17255 Regex!8371)) )
))
(declare-datatypes ((List!33376 0))(
  ( (Nil!33252) (Cons!33252 (h!38672 Regex!8371) (t!231225 List!33376)) )
))
(declare-datatypes ((Context!4950 0))(
  ( (Context!4951 (exprs!2975 List!33376)) )
))
(declare-datatypes ((tuple2!33438 0))(
  ( (tuple2!33439 (_1!19812 Context!4950) (_2!19812 C!16924)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33440 0))(
  ( (tuple2!33441 (_1!19813 tuple2!33438) (_2!19813 (InoxSet Context!4950))) )
))
(declare-datatypes ((List!33377 0))(
  ( (Nil!33253) (Cons!33253 (h!38673 tuple2!33440) (t!231226 List!33377)) )
))
(declare-datatypes ((array!14473 0))(
  ( (array!14474 (arr!6448 (Array (_ BitVec 32) List!33377)) (size!25884 (_ BitVec 32))) )
))
(declare-datatypes ((array!14475 0))(
  ( (array!14476 (arr!6449 (Array (_ BitVec 32) (_ BitVec 64))) (size!25885 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8140 0))(
  ( (LongMapFixedSize!8141 (defaultEntry!4455 Int) (mask!10036 (_ BitVec 32)) (extraKeys!4319 (_ BitVec 32)) (zeroValue!4329 List!33377) (minValue!4329 List!33377) (_size!8183 (_ BitVec 32)) (_keys!4370 array!14475) (_values!4351 array!14473) (_vacant!4131 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3986 0))(
  ( (HashableExt!3985 (__x!22098 Int)) )
))
(declare-datatypes ((Cell!16089 0))(
  ( (Cell!16090 (v!34297 LongMapFixedSize!8140)) )
))
(declare-datatypes ((MutLongMap!4070 0))(
  ( (LongMap!4070 (underlying!8369 Cell!16089)) (MutLongMapExt!4069 (__x!22099 Int)) )
))
(declare-datatypes ((Cell!16091 0))(
  ( (Cell!16092 (v!34298 MutLongMap!4070)) )
))
(declare-datatypes ((MutableMap!3976 0))(
  ( (MutableMapExt!3975 (__x!22100 Int)) (HashMap!3976 (underlying!8370 Cell!16091) (hashF!6018 Hashable!3986) (_size!8184 (_ BitVec 32)) (defaultValue!4147 Int)) )
))
(declare-datatypes ((CacheUp!2672 0))(
  ( (CacheUp!2673 (cache!4111 MutableMap!3976)) )
))
(declare-fun cacheUp!420 () CacheUp!2672)

(declare-fun tp!903518 () Bool)

(declare-fun array_inv!4616 (array!14475) Bool)

(declare-fun array_inv!4617 (array!14473) Bool)

(assert (=> b!2829151 (= e!1790781 (and tp!903527 tp!903522 tp!903518 (array_inv!4616 (_keys!4370 (v!34297 (underlying!8369 (v!34298 (underlying!8370 (cache!4111 cacheUp!420))))))) (array_inv!4617 (_values!4351 (v!34297 (underlying!8369 (v!34298 (underlying!8370 (cache!4111 cacheUp!420))))))) e!1790778))))

(declare-datatypes ((tuple3!5246 0))(
  ( (tuple3!5247 (_1!19814 Regex!8371) (_2!19814 Context!4950) (_3!3093 C!16924)) )
))
(declare-datatypes ((Hashable!3987 0))(
  ( (HashableExt!3986 (__x!22101 Int)) )
))
(declare-datatypes ((tuple2!33442 0))(
  ( (tuple2!33443 (_1!19815 tuple3!5246) (_2!19815 (InoxSet Context!4950))) )
))
(declare-datatypes ((List!33378 0))(
  ( (Nil!33254) (Cons!33254 (h!38674 tuple2!33442) (t!231227 List!33378)) )
))
(declare-datatypes ((array!14477 0))(
  ( (array!14478 (arr!6450 (Array (_ BitVec 32) List!33378)) (size!25886 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8142 0))(
  ( (LongMapFixedSize!8143 (defaultEntry!4456 Int) (mask!10037 (_ BitVec 32)) (extraKeys!4320 (_ BitVec 32)) (zeroValue!4330 List!33378) (minValue!4330 List!33378) (_size!8185 (_ BitVec 32)) (_keys!4371 array!14475) (_values!4352 array!14477) (_vacant!4132 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16093 0))(
  ( (Cell!16094 (v!34299 LongMapFixedSize!8142)) )
))
(declare-datatypes ((MutLongMap!4071 0))(
  ( (LongMap!4071 (underlying!8371 Cell!16093)) (MutLongMapExt!4070 (__x!22102 Int)) )
))
(declare-datatypes ((Cell!16095 0))(
  ( (Cell!16096 (v!34300 MutLongMap!4071)) )
))
(declare-datatypes ((MutableMap!3977 0))(
  ( (MutableMapExt!3976 (__x!22103 Int)) (HashMap!3977 (underlying!8372 Cell!16095) (hashF!6019 Hashable!3987) (_size!8186 (_ BitVec 32)) (defaultValue!4148 Int)) )
))
(declare-datatypes ((CacheDown!2796 0))(
  ( (CacheDown!2797 (cache!4112 MutableMap!3977)) )
))
(declare-fun cacheDown!433 () CacheDown!2796)

(declare-fun e!1790773 () Bool)

(declare-fun tp!903514 () Bool)

(declare-fun e!1790784 () Bool)

(declare-fun tp!903524 () Bool)

(declare-fun array_inv!4618 (array!14477) Bool)

(assert (=> b!2829152 (= e!1790784 (and tp!903531 tp!903524 tp!903514 (array_inv!4616 (_keys!4371 (v!34299 (underlying!8371 (v!34300 (underlying!8372 (cache!4112 cacheDown!433))))))) (array_inv!4618 (_values!4352 (v!34299 (underlying!8371 (v!34300 (underlying!8372 (cache!4112 cacheDown!433))))))) e!1790773))))

(declare-fun b!2829153 () Bool)

(declare-fun e!1790770 () Bool)

(declare-fun e!1790766 () Bool)

(assert (=> b!2829153 (= e!1790770 e!1790766)))

(declare-fun res!1177779 () Bool)

(assert (=> b!2829153 (=> res!1177779 e!1790766)))

(declare-datatypes ((String!36574 0))(
  ( (String!36575 (value!160300 String)) )
))
(declare-datatypes ((List!33379 0))(
  ( (Nil!33255) (Cons!33255 (h!38675 C!16924) (t!231228 List!33379)) )
))
(declare-datatypes ((IArray!20639 0))(
  ( (IArray!20640 (innerList!10377 List!33379)) )
))
(declare-datatypes ((Conc!10317 0))(
  ( (Node!10317 (left!25118 Conc!10317) (right!25448 Conc!10317) (csize!20864 Int) (cheight!10528 Int)) (Leaf!15715 (xs!13429 IArray!20639) (csize!20865 Int)) (Empty!10317) )
))
(declare-datatypes ((BalanceConc!20272 0))(
  ( (BalanceConc!20273 (c!457748 Conc!10317)) )
))
(declare-datatypes ((List!33380 0))(
  ( (Nil!33256) (Cons!33256 (h!38676 (_ BitVec 16)) (t!231229 List!33380)) )
))
(declare-datatypes ((TokenValue!5211 0))(
  ( (FloatLiteralValue!10422 (text!36922 List!33380)) (TokenValueExt!5210 (__x!22104 Int)) (Broken!26055 (value!160301 List!33380)) (Object!5334) (End!5211) (Def!5211) (Underscore!5211) (Match!5211) (Else!5211) (Error!5211) (Case!5211) (If!5211) (Extends!5211) (Abstract!5211) (Class!5211) (Val!5211) (DelimiterValue!10422 (del!5271 List!33380)) (KeywordValue!5217 (value!160302 List!33380)) (CommentValue!10422 (value!160303 List!33380)) (WhitespaceValue!10422 (value!160304 List!33380)) (IndentationValue!5211 (value!160305 List!33380)) (String!36576) (Int32!5211) (Broken!26056 (value!160306 List!33380)) (Boolean!5212) (Unit!47297) (OperatorValue!5214 (op!5271 List!33380)) (IdentifierValue!10422 (value!160307 List!33380)) (IdentifierValue!10423 (value!160308 List!33380)) (WhitespaceValue!10423 (value!160309 List!33380)) (True!10422) (False!10422) (Broken!26057 (value!160310 List!33380)) (Broken!26058 (value!160311 List!33380)) (True!10423) (RightBrace!5211) (RightBracket!5211) (Colon!5211) (Null!5211) (Comma!5211) (LeftBracket!5211) (False!10423) (LeftBrace!5211) (ImaginaryLiteralValue!5211 (text!36923 List!33380)) (StringLiteralValue!15633 (value!160312 List!33380)) (EOFValue!5211 (value!160313 List!33380)) (IdentValue!5211 (value!160314 List!33380)) (DelimiterValue!10423 (value!160315 List!33380)) (DedentValue!5211 (value!160316 List!33380)) (NewLineValue!5211 (value!160317 List!33380)) (IntegerValue!15633 (value!160318 (_ BitVec 32)) (text!36924 List!33380)) (IntegerValue!15634 (value!160319 Int) (text!36925 List!33380)) (Times!5211) (Or!5211) (Equal!5211) (Minus!5211) (Broken!26059 (value!160320 List!33380)) (And!5211) (Div!5211) (LessEqual!5211) (Mod!5211) (Concat!13583) (Not!5211) (Plus!5211) (SpaceValue!5211 (value!160321 List!33380)) (IntegerValue!15635 (value!160322 Int) (text!36926 List!33380)) (StringLiteralValue!15634 (text!36927 List!33380)) (FloatLiteralValue!10423 (text!36928 List!33380)) (BytesLiteralValue!5211 (value!160323 List!33380)) (CommentValue!10423 (value!160324 List!33380)) (StringLiteralValue!15635 (value!160325 List!33380)) (ErrorTokenValue!5211 (msg!5272 List!33380)) )
))
(declare-datatypes ((TokenValueInjection!9850 0))(
  ( (TokenValueInjection!9851 (toValue!7007 Int) (toChars!6866 Int)) )
))
(declare-datatypes ((Rule!9762 0))(
  ( (Rule!9763 (regex!4981 Regex!8371) (tag!5485 String!36574) (isSeparator!4981 Bool) (transformation!4981 TokenValueInjection!9850)) )
))
(declare-datatypes ((Token!9364 0))(
  ( (Token!9365 (value!160326 TokenValue!5211) (rule!7409 Rule!9762) (size!25887 Int) (originalCharacters!5713 List!33379)) )
))
(declare-datatypes ((List!33381 0))(
  ( (Nil!33257) (Cons!33257 (h!38677 Token!9364) (t!231230 List!33381)) )
))
(declare-datatypes ((IArray!20641 0))(
  ( (IArray!20642 (innerList!10378 List!33381)) )
))
(declare-datatypes ((Conc!10318 0))(
  ( (Node!10318 (left!25119 Conc!10318) (right!25449 Conc!10318) (csize!20866 Int) (cheight!10529 Int)) (Leaf!15716 (xs!13430 IArray!20641) (csize!20867 Int)) (Empty!10318) )
))
(declare-datatypes ((BalanceConc!20274 0))(
  ( (BalanceConc!20275 (c!457749 Conc!10318)) )
))
(declare-fun v!6247 () BalanceConc!20274)

(declare-fun lt!1009003 () Token!9364)

(declare-fun contains!6072 (BalanceConc!20274 Token!9364) Bool)

(assert (=> b!2829153 (= res!1177779 (not (contains!6072 v!6247 lt!1009003)))))

(declare-fun from!827 () Int)

(declare-fun apply!7763 (BalanceConc!20274 Int) Token!9364)

(assert (=> b!2829153 (= lt!1009003 (apply!7763 v!6247 (+ 1 from!827)))))

(declare-fun mapIsEmpty!18494 () Bool)

(declare-fun mapRes!18495 () Bool)

(assert (=> mapIsEmpty!18494 mapRes!18495))

(declare-fun b!2829154 () Bool)

(declare-fun e!1790775 () Bool)

(declare-fun e!1790780 () Bool)

(assert (=> b!2829154 (= e!1790775 e!1790780)))

(declare-fun b!2829155 () Bool)

(declare-fun e!1790767 () Bool)

(declare-fun e!1790768 () Bool)

(declare-fun tp!903519 () Bool)

(assert (=> b!2829155 (= e!1790767 (and e!1790768 tp!903519))))

(declare-fun res!1177774 () Bool)

(declare-fun e!1790765 () Bool)

(assert (=> start!274778 (=> (not res!1177774) (not e!1790765))))

(declare-datatypes ((LexerInterface!4572 0))(
  ( (LexerInterfaceExt!4569 (__x!22105 Int)) (Lexer!4570) )
))
(declare-fun thiss!11212 () LexerInterface!4572)

(get-info :version)

(assert (=> start!274778 (= res!1177774 (and ((_ is Lexer!4570) thiss!11212) (>= from!827 0)))))

(assert (=> start!274778 e!1790765))

(assert (=> start!274778 e!1790767))

(declare-fun e!1790763 () Bool)

(declare-fun inv!45216 (BalanceConc!20274) Bool)

(assert (=> start!274778 (and (inv!45216 v!6247) e!1790763)))

(assert (=> start!274778 true))

(declare-fun e!1790769 () Bool)

(declare-fun inv!45217 (CacheDown!2796) Bool)

(assert (=> start!274778 (and (inv!45217 cacheDown!433) e!1790769)))

(declare-fun e!1790764 () Bool)

(declare-fun inv!45218 (CacheUp!2672) Bool)

(assert (=> start!274778 (and (inv!45218 cacheUp!420) e!1790764)))

(declare-fun b!2829156 () Bool)

(declare-fun e!1790783 () Bool)

(assert (=> b!2829156 (= e!1790764 e!1790783)))

(declare-fun b!2829157 () Bool)

(declare-fun res!1177778 () Bool)

(declare-fun e!1790777 () Bool)

(assert (=> b!2829157 (=> (not res!1177778) (not e!1790777))))

(declare-datatypes ((List!33382 0))(
  ( (Nil!33258) (Cons!33258 (h!38678 Rule!9762) (t!231231 List!33382)) )
))
(declare-fun rules!1102 () List!33382)

(declare-fun rulesProduceEachTokenIndividually!1092 (LexerInterface!4572 List!33382 BalanceConc!20274) Bool)

(assert (=> b!2829157 (= res!1177778 (rulesProduceEachTokenIndividually!1092 thiss!11212 rules!1102 v!6247))))

(declare-fun b!2829158 () Bool)

(declare-fun e!1790772 () Bool)

(declare-fun e!1790771 () Bool)

(declare-fun lt!1008999 () MutLongMap!4070)

(assert (=> b!2829158 (= e!1790772 (and e!1790771 ((_ is LongMap!4070) lt!1008999)))))

(assert (=> b!2829158 (= lt!1008999 (v!34298 (underlying!8370 (cache!4111 cacheUp!420))))))

(declare-fun e!1790759 () Bool)

(assert (=> b!2829159 (= e!1790759 (and tp!903525 tp!903529))))

(declare-fun b!2829160 () Bool)

(declare-fun res!1177782 () Bool)

(assert (=> b!2829160 (=> res!1177782 e!1790770)))

(declare-fun lt!1009007 () List!33381)

(declare-fun lt!1009009 () Token!9364)

(declare-fun contains!6073 (List!33381 Token!9364) Bool)

(assert (=> b!2829160 (= res!1177782 (not (contains!6073 lt!1009007 lt!1009009)))))

(declare-fun mapNonEmpty!18494 () Bool)

(declare-fun mapRes!18494 () Bool)

(declare-fun tp!903532 () Bool)

(declare-fun tp!903523 () Bool)

(assert (=> mapNonEmpty!18494 (= mapRes!18494 (and tp!903532 tp!903523))))

(declare-fun mapRest!18495 () (Array (_ BitVec 32) List!33377))

(declare-fun mapValue!18495 () List!33377)

(declare-fun mapKey!18495 () (_ BitVec 32))

(assert (=> mapNonEmpty!18494 (= (arr!6448 (_values!4351 (v!34297 (underlying!8369 (v!34298 (underlying!8370 (cache!4111 cacheUp!420))))))) (store mapRest!18495 mapKey!18495 mapValue!18495))))

(declare-fun b!2829161 () Bool)

(declare-fun tp!903530 () Bool)

(declare-fun inv!45219 (Conc!10318) Bool)

(assert (=> b!2829161 (= e!1790763 (and (inv!45219 (c!457749 v!6247)) tp!903530))))

(declare-fun b!2829162 () Bool)

(assert (=> b!2829162 (= e!1790766 true)))

(declare-datatypes ((tuple3!5248 0))(
  ( (tuple3!5249 (_1!19816 Bool) (_2!19816 CacheUp!2672) (_3!3094 CacheDown!2796)) )
))
(declare-fun lt!1008996 () tuple3!5248)

(declare-fun separableTokensPredicateMem!2 (LexerInterface!4572 Token!9364 Token!9364 List!33382 CacheUp!2672 CacheDown!2796) tuple3!5248)

(assert (=> b!2829162 (= lt!1008996 (separableTokensPredicateMem!2 thiss!11212 lt!1009009 lt!1009003 rules!1102 cacheUp!420 cacheDown!433))))

(declare-fun e!1790774 () Bool)

(assert (=> b!2829162 e!1790774))

(declare-fun res!1177784 () Bool)

(assert (=> b!2829162 (=> (not res!1177784) (not e!1790774))))

(declare-fun rulesProduceIndividualToken!2109 (LexerInterface!4572 List!33382 Token!9364) Bool)

(assert (=> b!2829162 (= res!1177784 (rulesProduceIndividualToken!2109 thiss!11212 rules!1102 lt!1009003))))

(declare-datatypes ((Unit!47298 0))(
  ( (Unit!47299) )
))
(declare-fun lt!1009001 () Unit!47298)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!727 (LexerInterface!4572 List!33382 List!33381 Token!9364) Unit!47298)

(assert (=> b!2829162 (= lt!1009001 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!727 thiss!11212 rules!1102 lt!1009007 lt!1009003))))

(assert (=> b!2829162 (rulesProduceIndividualToken!2109 thiss!11212 rules!1102 lt!1009009)))

(declare-fun lt!1009004 () Unit!47298)

(assert (=> b!2829162 (= lt!1009004 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!727 thiss!11212 rules!1102 lt!1009007 lt!1009009))))

(declare-fun b!2829163 () Bool)

(assert (=> b!2829163 (= e!1790765 e!1790777)))

(declare-fun res!1177781 () Bool)

(assert (=> b!2829163 (=> (not res!1177781) (not e!1790777))))

(declare-fun lt!1009002 () Int)

(assert (=> b!2829163 (= res!1177781 (<= from!827 lt!1009002))))

(declare-fun size!25888 (BalanceConc!20274) Int)

(assert (=> b!2829163 (= lt!1009002 (size!25888 v!6247))))

(declare-fun mapNonEmpty!18495 () Bool)

(declare-fun tp!903516 () Bool)

(declare-fun tp!903521 () Bool)

(assert (=> mapNonEmpty!18495 (= mapRes!18495 (and tp!903516 tp!903521))))

(declare-fun mapValue!18494 () List!33378)

(declare-fun mapRest!18494 () (Array (_ BitVec 32) List!33378))

(declare-fun mapKey!18494 () (_ BitVec 32))

(assert (=> mapNonEmpty!18495 (= (arr!6450 (_values!4352 (v!34299 (underlying!8371 (v!34300 (underlying!8372 (cache!4112 cacheDown!433))))))) (store mapRest!18494 mapKey!18494 mapValue!18494))))

(declare-fun b!2829164 () Bool)

(declare-fun e!1790760 () Bool)

(declare-fun lt!1009008 () MutLongMap!4071)

(assert (=> b!2829164 (= e!1790760 (and e!1790775 ((_ is LongMap!4071) lt!1009008)))))

(assert (=> b!2829164 (= lt!1009008 (v!34300 (underlying!8372 (cache!4112 cacheDown!433))))))

(declare-fun mapIsEmpty!18495 () Bool)

(assert (=> mapIsEmpty!18495 mapRes!18494))

(declare-fun b!2829165 () Bool)

(declare-fun size!25889 (BalanceConc!20272) Int)

(declare-fun charsOf!3088 (Token!9364) BalanceConc!20272)

(assert (=> b!2829165 (= e!1790774 (> (size!25889 (charsOf!3088 lt!1009003)) 0))))

(declare-fun b!2829166 () Bool)

(declare-fun res!1177780 () Bool)

(assert (=> b!2829166 (=> res!1177780 e!1790766)))

(assert (=> b!2829166 (= res!1177780 (not (contains!6073 lt!1009007 lt!1009003)))))

(declare-fun b!2829167 () Bool)

(declare-fun tp!903528 () Bool)

(assert (=> b!2829167 (= e!1790778 (and tp!903528 mapRes!18494))))

(declare-fun condMapEmpty!18494 () Bool)

(declare-fun mapDefault!18494 () List!33377)

(assert (=> b!2829167 (= condMapEmpty!18494 (= (arr!6448 (_values!4351 (v!34297 (underlying!8369 (v!34298 (underlying!8370 (cache!4111 cacheUp!420))))))) ((as const (Array (_ BitVec 32) List!33377)) mapDefault!18494)))))

(declare-fun b!2829168 () Bool)

(declare-fun res!1177775 () Bool)

(assert (=> b!2829168 (=> (not res!1177775) (not e!1790777))))

(declare-fun rulesInvariant!3989 (LexerInterface!4572 List!33382) Bool)

(assert (=> b!2829168 (= res!1177775 (rulesInvariant!3989 thiss!11212 rules!1102))))

(declare-fun tp!903517 () Bool)

(declare-fun b!2829169 () Bool)

(declare-fun inv!45214 (String!36574) Bool)

(declare-fun inv!45220 (TokenValueInjection!9850) Bool)

(assert (=> b!2829169 (= e!1790768 (and tp!903517 (inv!45214 (tag!5485 (h!38678 rules!1102))) (inv!45220 (transformation!4981 (h!38678 rules!1102))) e!1790759))))

(assert (=> b!2829170 (= e!1790783 (and e!1790772 tp!903520))))

(declare-fun b!2829171 () Bool)

(declare-fun tp!903515 () Bool)

(assert (=> b!2829171 (= e!1790773 (and tp!903515 mapRes!18495))))

(declare-fun condMapEmpty!18495 () Bool)

(declare-fun mapDefault!18495 () List!33378)

(assert (=> b!2829171 (= condMapEmpty!18495 (= (arr!6450 (_values!4352 (v!34299 (underlying!8371 (v!34300 (underlying!8372 (cache!4112 cacheDown!433))))))) ((as const (Array (_ BitVec 32) List!33378)) mapDefault!18495)))))

(declare-fun e!1790762 () Bool)

(assert (=> b!2829172 (= e!1790762 (and e!1790760 tp!903526))))

(declare-fun b!2829173 () Bool)

(assert (=> b!2829173 (= e!1790769 e!1790762)))

(declare-fun b!2829174 () Bool)

(declare-fun res!1177777 () Bool)

(assert (=> b!2829174 (=> (not res!1177777) (not e!1790777))))

(declare-fun isEmpty!18380 (List!33382) Bool)

(assert (=> b!2829174 (= res!1177777 (not (isEmpty!18380 rules!1102)))))

(declare-fun b!2829175 () Bool)

(assert (=> b!2829175 (= e!1790780 e!1790784)))

(declare-fun b!2829176 () Bool)

(declare-fun e!1790779 () Bool)

(assert (=> b!2829176 (= e!1790779 e!1790781)))

(declare-fun b!2829177 () Bool)

(assert (=> b!2829177 (= e!1790771 e!1790779)))

(declare-fun b!2829178 () Bool)

(declare-fun res!1177783 () Bool)

(assert (=> b!2829178 (=> (not res!1177783) (not e!1790777))))

(assert (=> b!2829178 (= res!1177783 (< from!827 (- lt!1009002 1)))))

(declare-fun b!2829179 () Bool)

(assert (=> b!2829179 (= e!1790777 (not e!1790770))))

(declare-fun res!1177776 () Bool)

(assert (=> b!2829179 (=> res!1177776 e!1790770)))

(assert (=> b!2829179 (= res!1177776 (not (contains!6072 v!6247 lt!1009009)))))

(assert (=> b!2829179 (= lt!1009009 (apply!7763 v!6247 from!827))))

(declare-fun lt!1008997 () List!33381)

(declare-fun tail!4460 (List!33381) List!33381)

(declare-fun drop!1784 (List!33381 Int) List!33381)

(assert (=> b!2829179 (= (tail!4460 lt!1008997) (drop!1784 lt!1009007 (+ 2 from!827)))))

(declare-fun lt!1008995 () Unit!47298)

(declare-fun lemmaDropTail!870 (List!33381 Int) Unit!47298)

(assert (=> b!2829179 (= lt!1008995 (lemmaDropTail!870 lt!1009007 (+ 1 from!827)))))

(declare-fun lt!1009005 () List!33381)

(assert (=> b!2829179 (= (tail!4460 lt!1009005) lt!1008997)))

(declare-fun lt!1009000 () Unit!47298)

(assert (=> b!2829179 (= lt!1009000 (lemmaDropTail!870 lt!1009007 from!827))))

(declare-fun head!6235 (List!33381) Token!9364)

(declare-fun apply!7764 (List!33381 Int) Token!9364)

(assert (=> b!2829179 (= (head!6235 lt!1008997) (apply!7764 lt!1009007 (+ 1 from!827)))))

(assert (=> b!2829179 (= lt!1008997 (drop!1784 lt!1009007 (+ 1 from!827)))))

(declare-fun lt!1008998 () Unit!47298)

(declare-fun lemmaDropApply!982 (List!33381 Int) Unit!47298)

(assert (=> b!2829179 (= lt!1008998 (lemmaDropApply!982 lt!1009007 (+ 1 from!827)))))

(assert (=> b!2829179 (= (head!6235 lt!1009005) (apply!7764 lt!1009007 from!827))))

(assert (=> b!2829179 (= lt!1009005 (drop!1784 lt!1009007 from!827))))

(declare-fun lt!1009006 () Unit!47298)

(assert (=> b!2829179 (= lt!1009006 (lemmaDropApply!982 lt!1009007 from!827))))

(declare-fun list!12456 (BalanceConc!20274) List!33381)

(assert (=> b!2829179 (= lt!1009007 (list!12456 v!6247))))

(assert (= (and start!274778 res!1177774) b!2829163))

(assert (= (and b!2829163 res!1177781) b!2829174))

(assert (= (and b!2829174 res!1177777) b!2829168))

(assert (= (and b!2829168 res!1177775) b!2829157))

(assert (= (and b!2829157 res!1177778) b!2829178))

(assert (= (and b!2829178 res!1177783) b!2829179))

(assert (= (and b!2829179 (not res!1177776)) b!2829160))

(assert (= (and b!2829160 (not res!1177782)) b!2829153))

(assert (= (and b!2829153 (not res!1177779)) b!2829166))

(assert (= (and b!2829166 (not res!1177780)) b!2829162))

(assert (= (and b!2829162 res!1177784) b!2829165))

(assert (= b!2829169 b!2829159))

(assert (= b!2829155 b!2829169))

(assert (= (and start!274778 ((_ is Cons!33258) rules!1102)) b!2829155))

(assert (= start!274778 b!2829161))

(assert (= (and b!2829171 condMapEmpty!18495) mapIsEmpty!18494))

(assert (= (and b!2829171 (not condMapEmpty!18495)) mapNonEmpty!18495))

(assert (= b!2829152 b!2829171))

(assert (= b!2829175 b!2829152))

(assert (= b!2829154 b!2829175))

(assert (= (and b!2829164 ((_ is LongMap!4071) (v!34300 (underlying!8372 (cache!4112 cacheDown!433))))) b!2829154))

(assert (= b!2829172 b!2829164))

(assert (= (and b!2829173 ((_ is HashMap!3977) (cache!4112 cacheDown!433))) b!2829172))

(assert (= start!274778 b!2829173))

(assert (= (and b!2829167 condMapEmpty!18494) mapIsEmpty!18495))

(assert (= (and b!2829167 (not condMapEmpty!18494)) mapNonEmpty!18494))

(assert (= b!2829151 b!2829167))

(assert (= b!2829176 b!2829151))

(assert (= b!2829177 b!2829176))

(assert (= (and b!2829158 ((_ is LongMap!4070) (v!34298 (underlying!8370 (cache!4111 cacheUp!420))))) b!2829177))

(assert (= b!2829170 b!2829158))

(assert (= (and b!2829156 ((_ is HashMap!3976) (cache!4111 cacheUp!420))) b!2829170))

(assert (= start!274778 b!2829156))

(declare-fun m!3258657 () Bool)

(assert (=> b!2829169 m!3258657))

(declare-fun m!3258659 () Bool)

(assert (=> b!2829169 m!3258659))

(declare-fun m!3258661 () Bool)

(assert (=> b!2829162 m!3258661))

(declare-fun m!3258663 () Bool)

(assert (=> b!2829162 m!3258663))

(declare-fun m!3258665 () Bool)

(assert (=> b!2829162 m!3258665))

(declare-fun m!3258667 () Bool)

(assert (=> b!2829162 m!3258667))

(declare-fun m!3258669 () Bool)

(assert (=> b!2829162 m!3258669))

(declare-fun m!3258671 () Bool)

(assert (=> b!2829153 m!3258671))

(declare-fun m!3258673 () Bool)

(assert (=> b!2829153 m!3258673))

(declare-fun m!3258675 () Bool)

(assert (=> start!274778 m!3258675))

(declare-fun m!3258677 () Bool)

(assert (=> start!274778 m!3258677))

(declare-fun m!3258679 () Bool)

(assert (=> start!274778 m!3258679))

(declare-fun m!3258681 () Bool)

(assert (=> b!2829165 m!3258681))

(assert (=> b!2829165 m!3258681))

(declare-fun m!3258683 () Bool)

(assert (=> b!2829165 m!3258683))

(declare-fun m!3258685 () Bool)

(assert (=> b!2829163 m!3258685))

(declare-fun m!3258687 () Bool)

(assert (=> mapNonEmpty!18495 m!3258687))

(declare-fun m!3258689 () Bool)

(assert (=> b!2829179 m!3258689))

(declare-fun m!3258691 () Bool)

(assert (=> b!2829179 m!3258691))

(declare-fun m!3258693 () Bool)

(assert (=> b!2829179 m!3258693))

(declare-fun m!3258695 () Bool)

(assert (=> b!2829179 m!3258695))

(declare-fun m!3258697 () Bool)

(assert (=> b!2829179 m!3258697))

(declare-fun m!3258699 () Bool)

(assert (=> b!2829179 m!3258699))

(declare-fun m!3258701 () Bool)

(assert (=> b!2829179 m!3258701))

(declare-fun m!3258703 () Bool)

(assert (=> b!2829179 m!3258703))

(declare-fun m!3258705 () Bool)

(assert (=> b!2829179 m!3258705))

(declare-fun m!3258707 () Bool)

(assert (=> b!2829179 m!3258707))

(declare-fun m!3258709 () Bool)

(assert (=> b!2829179 m!3258709))

(declare-fun m!3258711 () Bool)

(assert (=> b!2829179 m!3258711))

(declare-fun m!3258713 () Bool)

(assert (=> b!2829179 m!3258713))

(declare-fun m!3258715 () Bool)

(assert (=> b!2829179 m!3258715))

(declare-fun m!3258717 () Bool)

(assert (=> b!2829179 m!3258717))

(declare-fun m!3258719 () Bool)

(assert (=> b!2829179 m!3258719))

(declare-fun m!3258721 () Bool)

(assert (=> b!2829161 m!3258721))

(declare-fun m!3258723 () Bool)

(assert (=> b!2829174 m!3258723))

(declare-fun m!3258725 () Bool)

(assert (=> b!2829166 m!3258725))

(declare-fun m!3258727 () Bool)

(assert (=> b!2829160 m!3258727))

(declare-fun m!3258729 () Bool)

(assert (=> b!2829151 m!3258729))

(declare-fun m!3258731 () Bool)

(assert (=> b!2829151 m!3258731))

(declare-fun m!3258733 () Bool)

(assert (=> b!2829157 m!3258733))

(declare-fun m!3258735 () Bool)

(assert (=> b!2829168 m!3258735))

(declare-fun m!3258737 () Bool)

(assert (=> b!2829152 m!3258737))

(declare-fun m!3258739 () Bool)

(assert (=> b!2829152 m!3258739))

(declare-fun m!3258741 () Bool)

(assert (=> mapNonEmpty!18494 m!3258741))

(check-sat b_and!206827 (not mapNonEmpty!18494) (not b!2829165) (not b!2829151) (not b!2829155) (not b!2829153) (not b!2829179) b_and!206825 (not b!2829169) (not start!274778) (not b_next!81873) (not mapNonEmpty!18495) b_and!206823 b_and!206819 (not b!2829167) (not b!2829168) (not b!2829166) (not b_next!81871) (not b!2829161) (not b!2829174) (not b!2829163) b_and!206829 (not b_next!81875) (not b!2829152) (not b!2829160) (not b!2829157) (not b!2829162) (not b_next!81867) (not b!2829171) b_and!206821 (not b_next!81869) (not b_next!81865))
(check-sat b_and!206827 (not b_next!81871) b_and!206829 (not b_next!81875) b_and!206825 (not b_next!81873) b_and!206823 b_and!206819 (not b_next!81867) b_and!206821 (not b_next!81869) (not b_next!81865))
