; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265886 () Bool)

(assert start!265886)

(declare-fun b!2742773 () Bool)

(declare-fun b_free!77005 () Bool)

(declare-fun b_next!77709 () Bool)

(assert (=> b!2742773 (= b_free!77005 (not b_next!77709))))

(declare-fun tp!862271 () Bool)

(declare-fun b_and!201725 () Bool)

(assert (=> b!2742773 (= tp!862271 b_and!201725)))

(declare-fun b!2742764 () Bool)

(declare-fun b_free!77007 () Bool)

(declare-fun b_next!77711 () Bool)

(assert (=> b!2742764 (= b_free!77007 (not b_next!77711))))

(declare-fun tp!862262 () Bool)

(declare-fun b_and!201727 () Bool)

(assert (=> b!2742764 (= tp!862262 b_and!201727)))

(declare-fun b!2742769 () Bool)

(declare-fun b_free!77009 () Bool)

(declare-fun b_next!77713 () Bool)

(assert (=> b!2742769 (= b_free!77009 (not b_next!77713))))

(declare-fun tp!862276 () Bool)

(declare-fun b_and!201729 () Bool)

(assert (=> b!2742769 (= tp!862276 b_and!201729)))

(declare-fun b!2742766 () Bool)

(declare-fun b_free!77011 () Bool)

(declare-fun b_next!77715 () Bool)

(assert (=> b!2742766 (= b_free!77011 (not b_next!77715))))

(declare-fun tp!862272 () Bool)

(declare-fun b_and!201731 () Bool)

(assert (=> b!2742766 (= tp!862272 b_and!201731)))

(declare-fun b!2742785 () Bool)

(declare-fun b_free!77013 () Bool)

(declare-fun b_next!77717 () Bool)

(assert (=> b!2742785 (= b_free!77013 (not b_next!77717))))

(declare-fun tp!862267 () Bool)

(declare-fun b_and!201733 () Bool)

(assert (=> b!2742785 (= tp!862267 b_and!201733)))

(declare-fun b_free!77015 () Bool)

(declare-fun b_next!77719 () Bool)

(assert (=> b!2742785 (= b_free!77015 (not b_next!77719))))

(declare-fun tp!862270 () Bool)

(declare-fun b_and!201735 () Bool)

(assert (=> b!2742785 (= tp!862270 b_and!201735)))

(declare-fun b!2742762 () Bool)

(declare-fun e!1727140 () Bool)

(declare-fun e!1727152 () Bool)

(assert (=> b!2742762 (= e!1727140 e!1727152)))

(declare-fun b!2742763 () Bool)

(declare-fun e!1727147 () Bool)

(declare-datatypes ((C!16108 0))(
  ( (C!16109 (val!9988 Int)) )
))
(declare-datatypes ((List!31583 0))(
  ( (Nil!31483) (Cons!31483 (h!36903 C!16108) (t!227671 List!31583)) )
))
(declare-datatypes ((IArray!19735 0))(
  ( (IArray!19736 (innerList!9925 List!31583)) )
))
(declare-datatypes ((Conc!9865 0))(
  ( (Node!9865 (left!24188 Conc!9865) (right!24518 Conc!9865) (csize!19960 Int) (cheight!10076 Int)) (Leaf!15021 (xs!12972 IArray!19735) (csize!19961 Int)) (Empty!9865) )
))
(declare-datatypes ((BalanceConc!19344 0))(
  ( (BalanceConc!19345 (c!444754 Conc!9865)) )
))
(declare-fun input!1326 () BalanceConc!19344)

(declare-fun tp!862265 () Bool)

(declare-fun inv!42829 (Conc!9865) Bool)

(assert (=> b!2742763 (= e!1727147 (and (inv!42829 (c!444754 input!1326)) tp!862265))))

(declare-fun e!1727136 () Bool)

(declare-fun e!1727153 () Bool)

(assert (=> b!2742764 (= e!1727136 (and e!1727153 tp!862262))))

(declare-fun b!2742765 () Bool)

(declare-fun res!1151493 () Bool)

(declare-fun e!1727150 () Bool)

(assert (=> b!2742765 (=> (not res!1151493) (not e!1727150))))

(declare-datatypes ((LexerInterface!4417 0))(
  ( (LexerInterfaceExt!4414 (__x!20261 Int)) (Lexer!4415) )
))
(declare-fun thiss!15207 () LexerInterface!4417)

(declare-datatypes ((List!31584 0))(
  ( (Nil!31484) (Cons!31484 (h!36904 (_ BitVec 16)) (t!227672 List!31584)) )
))
(declare-datatypes ((TokenValue!5044 0))(
  ( (FloatLiteralValue!10088 (text!35753 List!31584)) (TokenValueExt!5043 (__x!20262 Int)) (Broken!25220 (value!155009 List!31584)) (Object!5143) (End!5044) (Def!5044) (Underscore!5044) (Match!5044) (Else!5044) (Error!5044) (Case!5044) (If!5044) (Extends!5044) (Abstract!5044) (Class!5044) (Val!5044) (DelimiterValue!10088 (del!5104 List!31584)) (KeywordValue!5050 (value!155010 List!31584)) (CommentValue!10088 (value!155011 List!31584)) (WhitespaceValue!10088 (value!155012 List!31584)) (IndentationValue!5044 (value!155013 List!31584)) (String!35121) (Int32!5044) (Broken!25221 (value!155014 List!31584)) (Boolean!5045) (Unit!45476) (OperatorValue!5047 (op!5104 List!31584)) (IdentifierValue!10088 (value!155015 List!31584)) (IdentifierValue!10089 (value!155016 List!31584)) (WhitespaceValue!10089 (value!155017 List!31584)) (True!10088) (False!10088) (Broken!25222 (value!155018 List!31584)) (Broken!25223 (value!155019 List!31584)) (True!10089) (RightBrace!5044) (RightBracket!5044) (Colon!5044) (Null!5044) (Comma!5044) (LeftBracket!5044) (False!10089) (LeftBrace!5044) (ImaginaryLiteralValue!5044 (text!35754 List!31584)) (StringLiteralValue!15132 (value!155020 List!31584)) (EOFValue!5044 (value!155021 List!31584)) (IdentValue!5044 (value!155022 List!31584)) (DelimiterValue!10089 (value!155023 List!31584)) (DedentValue!5044 (value!155024 List!31584)) (NewLineValue!5044 (value!155025 List!31584)) (IntegerValue!15132 (value!155026 (_ BitVec 32)) (text!35755 List!31584)) (IntegerValue!15133 (value!155027 Int) (text!35756 List!31584)) (Times!5044) (Or!5044) (Equal!5044) (Minus!5044) (Broken!25224 (value!155028 List!31584)) (And!5044) (Div!5044) (LessEqual!5044) (Mod!5044) (Concat!13019) (Not!5044) (Plus!5044) (SpaceValue!5044 (value!155029 List!31584)) (IntegerValue!15134 (value!155030 Int) (text!35757 List!31584)) (StringLiteralValue!15133 (text!35758 List!31584)) (FloatLiteralValue!10089 (text!35759 List!31584)) (BytesLiteralValue!5044 (value!155031 List!31584)) (CommentValue!10089 (value!155032 List!31584)) (StringLiteralValue!15134 (value!155033 List!31584)) (ErrorTokenValue!5044 (msg!5105 List!31584)) )
))
(declare-datatypes ((TokenValueInjection!9528 0))(
  ( (TokenValueInjection!9529 (toValue!6820 Int) (toChars!6679 Int)) )
))
(declare-datatypes ((Regex!7975 0))(
  ( (ElementMatch!7975 (c!444755 C!16108)) (Concat!13020 (regOne!16462 Regex!7975) (regTwo!16462 Regex!7975)) (EmptyExpr!7975) (Star!7975 (reg!8304 Regex!7975)) (EmptyLang!7975) (Union!7975 (regOne!16463 Regex!7975) (regTwo!16463 Regex!7975)) )
))
(declare-datatypes ((String!35122 0))(
  ( (String!35123 (value!155034 String)) )
))
(declare-datatypes ((Rule!9444 0))(
  ( (Rule!9445 (regex!4822 Regex!7975) (tag!5326 String!35122) (isSeparator!4822 Bool) (transformation!4822 TokenValueInjection!9528)) )
))
(declare-datatypes ((List!31585 0))(
  ( (Nil!31485) (Cons!31485 (h!36905 Rule!9444) (t!227673 List!31585)) )
))
(declare-fun rulesArg!249 () List!31585)

(declare-fun rulesValidInductive!1689 (LexerInterface!4417 List!31585) Bool)

(assert (=> b!2742765 (= res!1151493 (rulesValidInductive!1689 thiss!15207 rulesArg!249))))

(declare-fun mapNonEmpty!16283 () Bool)

(declare-fun mapRes!16284 () Bool)

(declare-fun tp!862261 () Bool)

(declare-fun tp!862275 () Bool)

(assert (=> mapNonEmpty!16283 (= mapRes!16284 (and tp!862261 tp!862275))))

(declare-datatypes ((List!31586 0))(
  ( (Nil!31486) (Cons!31486 (h!36906 Regex!7975) (t!227674 List!31586)) )
))
(declare-datatypes ((Context!4386 0))(
  ( (Context!4387 (exprs!2693 List!31586)) )
))
(declare-datatypes ((tuple3!4338 0))(
  ( (tuple3!4339 (_1!18268 Regex!7975) (_2!18268 Context!4386) (_3!2639 C!16108)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31258 0))(
  ( (tuple2!31259 (_1!18269 tuple3!4338) (_2!18269 (InoxSet Context!4386))) )
))
(declare-datatypes ((List!31587 0))(
  ( (Nil!31487) (Cons!31487 (h!36907 tuple2!31258) (t!227675 List!31587)) )
))
(declare-datatypes ((array!12702 0))(
  ( (array!12703 (arr!5673 (Array (_ BitVec 32) List!31587)) (size!24318 (_ BitVec 32))) )
))
(declare-datatypes ((array!12704 0))(
  ( (array!12705 (arr!5674 (Array (_ BitVec 32) (_ BitVec 64))) (size!24319 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7130 0))(
  ( (LongMapFixedSize!7131 (defaultEntry!3950 Int) (mask!9289 (_ BitVec 32)) (extraKeys!3814 (_ BitVec 32)) (zeroValue!3824 List!31587) (minValue!3824 List!31587) (_size!7173 (_ BitVec 32)) (_keys!3865 array!12704) (_values!3846 array!12702) (_vacant!3626 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14069 0))(
  ( (Cell!14070 (v!33147 LongMapFixedSize!7130)) )
))
(declare-datatypes ((MutLongMap!3565 0))(
  ( (LongMap!3565 (underlying!7333 Cell!14069)) (MutLongMapExt!3564 (__x!20263 Int)) )
))
(declare-datatypes ((Cell!14071 0))(
  ( (Cell!14072 (v!33148 MutLongMap!3565)) )
))
(declare-datatypes ((Hashable!3481 0))(
  ( (HashableExt!3480 (__x!20264 Int)) )
))
(declare-datatypes ((MutableMap!3471 0))(
  ( (MutableMapExt!3470 (__x!20265 Int)) (HashMap!3471 (underlying!7334 Cell!14071) (hashF!5513 Hashable!3481) (_size!7174 (_ BitVec 32)) (defaultValue!3642 Int)) )
))
(declare-datatypes ((CacheDown!2294 0))(
  ( (CacheDown!2295 (cache!3614 MutableMap!3471)) )
))
(declare-fun cacheDown!646 () CacheDown!2294)

(declare-fun mapKey!16284 () (_ BitVec 32))

(declare-fun mapRest!16283 () (Array (_ BitVec 32) List!31587))

(declare-fun mapValue!16284 () List!31587)

(assert (=> mapNonEmpty!16283 (= (arr!5673 (_values!3846 (v!33147 (underlying!7333 (v!33148 (underlying!7334 (cache!3614 cacheDown!646))))))) (store mapRest!16283 mapKey!16284 mapValue!16284))))

(declare-fun b!2742767 () Bool)

(declare-fun res!1151495 () Bool)

(assert (=> b!2742767 (=> (not res!1151495) (not e!1727150))))

(declare-datatypes ((tuple2!31260 0))(
  ( (tuple2!31261 (_1!18270 Context!4386) (_2!18270 C!16108)) )
))
(declare-datatypes ((tuple2!31262 0))(
  ( (tuple2!31263 (_1!18271 tuple2!31260) (_2!18271 (InoxSet Context!4386))) )
))
(declare-datatypes ((List!31588 0))(
  ( (Nil!31488) (Cons!31488 (h!36908 tuple2!31262) (t!227676 List!31588)) )
))
(declare-datatypes ((array!12706 0))(
  ( (array!12707 (arr!5675 (Array (_ BitVec 32) List!31588)) (size!24320 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7132 0))(
  ( (LongMapFixedSize!7133 (defaultEntry!3951 Int) (mask!9290 (_ BitVec 32)) (extraKeys!3815 (_ BitVec 32)) (zeroValue!3825 List!31588) (minValue!3825 List!31588) (_size!7175 (_ BitVec 32)) (_keys!3866 array!12704) (_values!3847 array!12706) (_vacant!3627 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14073 0))(
  ( (Cell!14074 (v!33149 LongMapFixedSize!7132)) )
))
(declare-datatypes ((MutLongMap!3566 0))(
  ( (LongMap!3566 (underlying!7335 Cell!14073)) (MutLongMapExt!3565 (__x!20266 Int)) )
))
(declare-datatypes ((Cell!14075 0))(
  ( (Cell!14076 (v!33150 MutLongMap!3566)) )
))
(declare-datatypes ((Hashable!3482 0))(
  ( (HashableExt!3481 (__x!20267 Int)) )
))
(declare-datatypes ((MutableMap!3472 0))(
  ( (MutableMapExt!3471 (__x!20268 Int)) (HashMap!3472 (underlying!7336 Cell!14075) (hashF!5514 Hashable!3482) (_size!7176 (_ BitVec 32)) (defaultValue!3643 Int)) )
))
(declare-datatypes ((CacheUp!2180 0))(
  ( (CacheUp!2181 (cache!3615 MutableMap!3472)) )
))
(declare-fun cacheUp!633 () CacheUp!2180)

(declare-fun valid!2768 (CacheUp!2180) Bool)

(assert (=> b!2742767 (= res!1151495 (valid!2768 cacheUp!633))))

(declare-fun tp!862274 () Bool)

(declare-fun e!1727135 () Bool)

(declare-fun b!2742768 () Bool)

(declare-fun e!1727151 () Bool)

(declare-fun inv!42828 (String!35122) Bool)

(declare-fun inv!42830 (TokenValueInjection!9528) Bool)

(assert (=> b!2742768 (= e!1727151 (and tp!862274 (inv!42828 (tag!5326 (h!36905 rulesArg!249))) (inv!42830 (transformation!4822 (h!36905 rulesArg!249))) e!1727135))))

(declare-fun mapIsEmpty!16283 () Bool)

(assert (=> mapIsEmpty!16283 mapRes!16284))

(declare-fun e!1727143 () Bool)

(declare-fun tp!862264 () Bool)

(declare-fun tp!862259 () Bool)

(declare-fun e!1727154 () Bool)

(declare-fun array_inv!4054 (array!12704) Bool)

(declare-fun array_inv!4055 (array!12706) Bool)

(assert (=> b!2742769 (= e!1727154 (and tp!862276 tp!862259 tp!862264 (array_inv!4054 (_keys!3866 (v!33149 (underlying!7335 (v!33150 (underlying!7336 (cache!3615 cacheUp!633))))))) (array_inv!4055 (_values!3847 (v!33149 (underlying!7335 (v!33150 (underlying!7336 (cache!3615 cacheUp!633))))))) e!1727143))))

(declare-fun b!2742770 () Bool)

(declare-fun e!1727137 () Bool)

(assert (=> b!2742770 (= e!1727137 e!1727154)))

(declare-fun b!2742771 () Bool)

(declare-fun tp!862277 () Bool)

(declare-fun mapRes!16283 () Bool)

(assert (=> b!2742771 (= e!1727143 (and tp!862277 mapRes!16283))))

(declare-fun condMapEmpty!16283 () Bool)

(declare-fun mapDefault!16284 () List!31588)

(assert (=> b!2742771 (= condMapEmpty!16283 (= (arr!5675 (_values!3847 (v!33149 (underlying!7335 (v!33150 (underlying!7336 (cache!3615 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31588)) mapDefault!16284)))))

(declare-fun b!2742772 () Bool)

(declare-fun e!1727148 () Bool)

(declare-fun e!1727157 () Bool)

(declare-fun lt!971092 () MutLongMap!3565)

(get-info :version)

(assert (=> b!2742772 (= e!1727148 (and e!1727157 ((_ is LongMap!3565) lt!971092)))))

(assert (=> b!2742772 (= lt!971092 (v!33148 (underlying!7334 (cache!3614 cacheDown!646))))))

(declare-fun tp!862263 () Bool)

(declare-fun tp!862269 () Bool)

(declare-fun e!1727142 () Bool)

(declare-fun array_inv!4056 (array!12702) Bool)

(assert (=> b!2742773 (= e!1727152 (and tp!862271 tp!862263 tp!862269 (array_inv!4054 (_keys!3865 (v!33147 (underlying!7333 (v!33148 (underlying!7334 (cache!3614 cacheDown!646))))))) (array_inv!4056 (_values!3846 (v!33147 (underlying!7333 (v!33148 (underlying!7334 (cache!3614 cacheDown!646))))))) e!1727142))))

(declare-fun e!1727146 () Bool)

(assert (=> b!2742766 (= e!1727146 (and e!1727148 tp!862272))))

(declare-fun res!1151497 () Bool)

(assert (=> start!265886 (=> (not res!1151497) (not e!1727150))))

(assert (=> start!265886 (= res!1151497 ((_ is Lexer!4415) thiss!15207))))

(assert (=> start!265886 e!1727150))

(declare-fun e!1727155 () Bool)

(declare-fun inv!42831 (CacheDown!2294) Bool)

(assert (=> start!265886 (and (inv!42831 cacheDown!646) e!1727155)))

(declare-fun inv!42832 (BalanceConc!19344) Bool)

(assert (=> start!265886 (and (inv!42832 input!1326) e!1727147)))

(declare-fun e!1727141 () Bool)

(assert (=> start!265886 e!1727141))

(declare-fun e!1727144 () Bool)

(declare-fun inv!42833 (CacheUp!2180) Bool)

(assert (=> start!265886 (and (inv!42833 cacheUp!633) e!1727144)))

(assert (=> start!265886 true))

(declare-fun mapIsEmpty!16284 () Bool)

(assert (=> mapIsEmpty!16284 mapRes!16283))

(declare-fun b!2742774 () Bool)

(assert (=> b!2742774 (= e!1727155 e!1727146)))

(declare-fun mapNonEmpty!16284 () Bool)

(declare-fun tp!862266 () Bool)

(declare-fun tp!862260 () Bool)

(assert (=> mapNonEmpty!16284 (= mapRes!16283 (and tp!862266 tp!862260))))

(declare-fun mapRest!16284 () (Array (_ BitVec 32) List!31588))

(declare-fun mapValue!16283 () List!31588)

(declare-fun mapKey!16283 () (_ BitVec 32))

(assert (=> mapNonEmpty!16284 (= (arr!5675 (_values!3847 (v!33149 (underlying!7335 (v!33150 (underlying!7336 (cache!3615 cacheUp!633))))))) (store mapRest!16284 mapKey!16283 mapValue!16283))))

(declare-fun b!2742775 () Bool)

(declare-fun res!1151492 () Bool)

(assert (=> b!2742775 (=> (not res!1151492) (not e!1727150))))

(declare-fun isEmpty!18012 (List!31585) Bool)

(assert (=> b!2742775 (= res!1151492 (not (isEmpty!18012 rulesArg!249)))))

(declare-fun b!2742776 () Bool)

(assert (=> b!2742776 (= e!1727144 e!1727136)))

(declare-fun b!2742777 () Bool)

(declare-fun tp!862273 () Bool)

(assert (=> b!2742777 (= e!1727142 (and tp!862273 mapRes!16284))))

(declare-fun condMapEmpty!16284 () Bool)

(declare-fun mapDefault!16283 () List!31587)

(assert (=> b!2742777 (= condMapEmpty!16284 (= (arr!5673 (_values!3846 (v!33147 (underlying!7333 (v!33148 (underlying!7334 (cache!3614 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31587)) mapDefault!16283)))))

(declare-fun b!2742778 () Bool)

(declare-fun e!1727149 () Bool)

(assert (=> b!2742778 (= e!1727150 (not e!1727149))))

(declare-fun res!1151496 () Bool)

(assert (=> b!2742778 (=> res!1151496 e!1727149)))

(assert (=> b!2742778 (= res!1151496 (or (not ((_ is Cons!31485) rulesArg!249)) (not ((_ is Nil!31485) (t!227673 rulesArg!249)))))))

(declare-fun lt!971089 () List!31583)

(declare-fun isPrefix!2503 (List!31583 List!31583) Bool)

(assert (=> b!2742778 (isPrefix!2503 lt!971089 lt!971089)))

(declare-datatypes ((Unit!45477 0))(
  ( (Unit!45478) )
))
(declare-fun lt!971093 () Unit!45477)

(declare-fun lemmaIsPrefixRefl!1629 (List!31583 List!31583) Unit!45477)

(assert (=> b!2742778 (= lt!971093 (lemmaIsPrefixRefl!1629 lt!971089 lt!971089))))

(declare-fun list!11975 (BalanceConc!19344) List!31583)

(assert (=> b!2742778 (= lt!971089 (list!11975 input!1326))))

(declare-fun b!2742779 () Bool)

(declare-fun e!1727139 () Bool)

(declare-fun lt!971090 () MutLongMap!3566)

(assert (=> b!2742779 (= e!1727153 (and e!1727139 ((_ is LongMap!3566) lt!971090)))))

(assert (=> b!2742779 (= lt!971090 (v!33150 (underlying!7336 (cache!3615 cacheUp!633))))))

(declare-fun b!2742780 () Bool)

(assert (=> b!2742780 (= e!1727149 true)))

(declare-fun lt!971091 () Bool)

(declare-fun ruleValid!1579 (LexerInterface!4417 Rule!9444) Bool)

(assert (=> b!2742780 (= lt!971091 (ruleValid!1579 thiss!15207 (h!36905 rulesArg!249)))))

(declare-fun b!2742781 () Bool)

(assert (=> b!2742781 (= e!1727139 e!1727137)))

(declare-fun b!2742782 () Bool)

(declare-fun tp!862268 () Bool)

(assert (=> b!2742782 (= e!1727141 (and e!1727151 tp!862268))))

(declare-fun b!2742783 () Bool)

(assert (=> b!2742783 (= e!1727157 e!1727140)))

(declare-fun b!2742784 () Bool)

(declare-fun res!1151494 () Bool)

(assert (=> b!2742784 (=> (not res!1151494) (not e!1727150))))

(declare-fun valid!2769 (CacheDown!2294) Bool)

(assert (=> b!2742784 (= res!1151494 (valid!2769 cacheDown!646))))

(assert (=> b!2742785 (= e!1727135 (and tp!862267 tp!862270))))

(assert (= (and start!265886 res!1151497) b!2742765))

(assert (= (and b!2742765 res!1151493) b!2742775))

(assert (= (and b!2742775 res!1151492) b!2742767))

(assert (= (and b!2742767 res!1151495) b!2742784))

(assert (= (and b!2742784 res!1151494) b!2742778))

(assert (= (and b!2742778 (not res!1151496)) b!2742780))

(assert (= (and b!2742777 condMapEmpty!16284) mapIsEmpty!16283))

(assert (= (and b!2742777 (not condMapEmpty!16284)) mapNonEmpty!16283))

(assert (= b!2742773 b!2742777))

(assert (= b!2742762 b!2742773))

(assert (= b!2742783 b!2742762))

(assert (= (and b!2742772 ((_ is LongMap!3565) (v!33148 (underlying!7334 (cache!3614 cacheDown!646))))) b!2742783))

(assert (= b!2742766 b!2742772))

(assert (= (and b!2742774 ((_ is HashMap!3471) (cache!3614 cacheDown!646))) b!2742766))

(assert (= start!265886 b!2742774))

(assert (= start!265886 b!2742763))

(assert (= b!2742768 b!2742785))

(assert (= b!2742782 b!2742768))

(assert (= (and start!265886 ((_ is Cons!31485) rulesArg!249)) b!2742782))

(assert (= (and b!2742771 condMapEmpty!16283) mapIsEmpty!16284))

(assert (= (and b!2742771 (not condMapEmpty!16283)) mapNonEmpty!16284))

(assert (= b!2742769 b!2742771))

(assert (= b!2742770 b!2742769))

(assert (= b!2742781 b!2742770))

(assert (= (and b!2742779 ((_ is LongMap!3566) (v!33150 (underlying!7336 (cache!3615 cacheUp!633))))) b!2742781))

(assert (= b!2742764 b!2742779))

(assert (= (and b!2742776 ((_ is HashMap!3472) (cache!3615 cacheUp!633))) b!2742764))

(assert (= start!265886 b!2742776))

(declare-fun m!3160567 () Bool)

(assert (=> b!2742784 m!3160567))

(declare-fun m!3160569 () Bool)

(assert (=> b!2742763 m!3160569))

(declare-fun m!3160571 () Bool)

(assert (=> b!2742768 m!3160571))

(declare-fun m!3160573 () Bool)

(assert (=> b!2742768 m!3160573))

(declare-fun m!3160575 () Bool)

(assert (=> b!2742769 m!3160575))

(declare-fun m!3160577 () Bool)

(assert (=> b!2742769 m!3160577))

(declare-fun m!3160579 () Bool)

(assert (=> b!2742775 m!3160579))

(declare-fun m!3160581 () Bool)

(assert (=> b!2742767 m!3160581))

(declare-fun m!3160583 () Bool)

(assert (=> b!2742773 m!3160583))

(declare-fun m!3160585 () Bool)

(assert (=> b!2742773 m!3160585))

(declare-fun m!3160587 () Bool)

(assert (=> b!2742778 m!3160587))

(declare-fun m!3160589 () Bool)

(assert (=> b!2742778 m!3160589))

(declare-fun m!3160591 () Bool)

(assert (=> b!2742778 m!3160591))

(declare-fun m!3160593 () Bool)

(assert (=> b!2742780 m!3160593))

(declare-fun m!3160595 () Bool)

(assert (=> mapNonEmpty!16283 m!3160595))

(declare-fun m!3160597 () Bool)

(assert (=> b!2742765 m!3160597))

(declare-fun m!3160599 () Bool)

(assert (=> start!265886 m!3160599))

(declare-fun m!3160601 () Bool)

(assert (=> start!265886 m!3160601))

(declare-fun m!3160603 () Bool)

(assert (=> start!265886 m!3160603))

(declare-fun m!3160605 () Bool)

(assert (=> mapNonEmpty!16284 m!3160605))

(check-sat (not b!2742782) (not mapNonEmpty!16283) (not b_next!77715) (not b!2742775) (not b!2742784) b_and!201727 (not b_next!77709) (not mapNonEmpty!16284) (not b!2742771) (not b!2742763) (not b_next!77719) (not start!265886) (not b!2742765) b_and!201729 (not b_next!77711) (not b!2742778) b_and!201731 (not b!2742780) (not b!2742769) (not b!2742768) (not b!2742773) b_and!201725 (not b_next!77717) b_and!201735 (not b!2742767) (not b!2742777) (not b_next!77713) b_and!201733)
(check-sat (not b_next!77715) b_and!201727 (not b_next!77709) b_and!201729 (not b_next!77711) b_and!201731 (not b_next!77719) b_and!201725 (not b_next!77717) b_and!201735 (not b_next!77713) b_and!201733)
