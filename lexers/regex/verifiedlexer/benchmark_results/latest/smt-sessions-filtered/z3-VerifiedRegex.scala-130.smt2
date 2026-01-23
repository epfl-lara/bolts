; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1378 () Bool)

(assert start!1378)

(declare-fun b!31693 () Bool)

(declare-fun b_free!153 () Bool)

(declare-fun b_next!153 () Bool)

(assert (=> b!31693 (= b_free!153 (not b_next!153))))

(declare-fun tp!21854 () Bool)

(declare-fun b_and!153 () Bool)

(assert (=> b!31693 (= tp!21854 b_and!153)))

(declare-fun b!31705 () Bool)

(declare-fun b_free!155 () Bool)

(declare-fun b_next!155 () Bool)

(assert (=> b!31705 (= b_free!155 (not b_next!155))))

(declare-fun tp!21851 () Bool)

(declare-fun b_and!155 () Bool)

(assert (=> b!31705 (= tp!21851 b_and!155)))

(declare-fun b_free!157 () Bool)

(declare-fun b_next!157 () Bool)

(assert (=> b!31705 (= b_free!157 (not b_next!157))))

(declare-fun tp!21852 () Bool)

(declare-fun b_and!157 () Bool)

(assert (=> b!31705 (= tp!21852 b_and!157)))

(declare-fun b!31689 () Bool)

(declare-fun b_free!159 () Bool)

(declare-fun b_next!159 () Bool)

(assert (=> b!31689 (= b_free!159 (not b_next!159))))

(declare-fun tp!21862 () Bool)

(declare-fun b_and!159 () Bool)

(assert (=> b!31689 (= tp!21862 b_and!159)))

(declare-fun b!31700 () Bool)

(declare-fun b_free!161 () Bool)

(declare-fun b_next!161 () Bool)

(assert (=> b!31700 (= b_free!161 (not b_next!161))))

(declare-fun tp!21866 () Bool)

(declare-fun b_and!161 () Bool)

(assert (=> b!31700 (= tp!21866 b_and!161)))

(declare-fun b!31698 () Bool)

(declare-fun b_free!163 () Bool)

(declare-fun b_next!163 () Bool)

(assert (=> b!31698 (= b_free!163 (not b_next!163))))

(declare-fun tp!21853 () Bool)

(declare-fun b_and!163 () Bool)

(assert (=> b!31698 (= tp!21853 b_and!163)))

(declare-fun b!31680 () Bool)

(declare-fun e!13838 () Bool)

(declare-datatypes ((C!1340 0))(
  ( (C!1341 (val!161 Int)) )
))
(declare-datatypes ((List!202 0))(
  ( (Nil!200) (Cons!200 (h!5596 C!1340) (t!14787 List!202)) )
))
(declare-datatypes ((IArray!53 0))(
  ( (IArray!54 (innerList!84 List!202)) )
))
(declare-datatypes ((Regex!133 0))(
  ( (ElementMatch!133 (c!15159 C!1340)) (Concat!232 (regOne!778 Regex!133) (regTwo!778 Regex!133)) (EmptyExpr!133) (Star!133 (reg!462 Regex!133)) (EmptyLang!133) (Union!133 (regOne!779 Regex!133) (regTwo!779 Regex!133)) )
))
(declare-datatypes ((String!638 0))(
  ( (String!639 (value!5793 String)) )
))
(declare-datatypes ((List!203 0))(
  ( (Nil!201) (Cons!201 (h!5597 (_ BitVec 16)) (t!14788 List!203)) )
))
(declare-datatypes ((TokenValue!99 0))(
  ( (FloatLiteralValue!198 (text!1138 List!203)) (TokenValueExt!98 (__x!462 Int)) (Broken!495 (value!5794 List!203)) (Object!100) (End!99) (Def!99) (Underscore!99) (Match!99) (Else!99) (Error!99) (Case!99) (If!99) (Extends!99) (Abstract!99) (Class!99) (Val!99) (DelimiterValue!198 (del!159 List!203)) (KeywordValue!105 (value!5795 List!203)) (CommentValue!198 (value!5796 List!203)) (WhitespaceValue!198 (value!5797 List!203)) (IndentationValue!99 (value!5798 List!203)) (String!640) (Int32!99) (Broken!496 (value!5799 List!203)) (Boolean!100) (Unit!110) (OperatorValue!102 (op!159 List!203)) (IdentifierValue!198 (value!5800 List!203)) (IdentifierValue!199 (value!5801 List!203)) (WhitespaceValue!199 (value!5802 List!203)) (True!198) (False!198) (Broken!497 (value!5803 List!203)) (Broken!498 (value!5804 List!203)) (True!199) (RightBrace!99) (RightBracket!99) (Colon!99) (Null!99) (Comma!99) (LeftBracket!99) (False!199) (LeftBrace!99) (ImaginaryLiteralValue!99 (text!1139 List!203)) (StringLiteralValue!297 (value!5805 List!203)) (EOFValue!99 (value!5806 List!203)) (IdentValue!99 (value!5807 List!203)) (DelimiterValue!199 (value!5808 List!203)) (DedentValue!99 (value!5809 List!203)) (NewLineValue!99 (value!5810 List!203)) (IntegerValue!297 (value!5811 (_ BitVec 32)) (text!1140 List!203)) (IntegerValue!298 (value!5812 Int) (text!1141 List!203)) (Times!99) (Or!99) (Equal!99) (Minus!99) (Broken!499 (value!5813 List!203)) (And!99) (Div!99) (LessEqual!99) (Mod!99) (Concat!233) (Not!99) (Plus!99) (SpaceValue!99 (value!5814 List!203)) (IntegerValue!299 (value!5815 Int) (text!1142 List!203)) (StringLiteralValue!298 (text!1143 List!203)) (FloatLiteralValue!199 (text!1144 List!203)) (BytesLiteralValue!99 (value!5816 List!203)) (CommentValue!199 (value!5817 List!203)) (StringLiteralValue!299 (value!5818 List!203)) (ErrorTokenValue!99 (msg!160 List!203)) )
))
(declare-datatypes ((Conc!26 0))(
  ( (Node!26 (left!346 Conc!26) (right!676 Conc!26) (csize!282 Int) (cheight!237 Int)) (Leaf!157 (xs!2603 IArray!53) (csize!283 Int)) (Empty!26) )
))
(declare-datatypes ((BalanceConc!52 0))(
  ( (BalanceConc!53 (c!15160 Conc!26)) )
))
(declare-datatypes ((TokenValueInjection!22 0))(
  ( (TokenValueInjection!23 (toValue!584 Int) (toChars!443 Int)) )
))
(declare-datatypes ((Rule!18 0))(
  ( (Rule!19 (regex!109 Regex!133) (tag!287 String!638) (isSeparator!109 Bool) (transformation!109 TokenValueInjection!22)) )
))
(declare-datatypes ((Token!12 0))(
  ( (Token!13 (value!5819 TokenValue!99) (rule!599 Rule!18) (size!283 Int) (originalCharacters!177 List!202)) )
))
(declare-datatypes ((List!204 0))(
  ( (Nil!202) (Cons!202 (h!5598 Token!12) (t!14789 List!204)) )
))
(declare-datatypes ((IArray!55 0))(
  ( (IArray!56 (innerList!85 List!204)) )
))
(declare-datatypes ((Conc!27 0))(
  ( (Node!27 (left!347 Conc!27) (right!677 Conc!27) (csize!284 Int) (cheight!238 Int)) (Leaf!158 (xs!2604 IArray!55) (csize!285 Int)) (Empty!27) )
))
(declare-datatypes ((BalanceConc!54 0))(
  ( (BalanceConc!55 (c!15161 Conc!27)) )
))
(declare-datatypes ((tuple2!88 0))(
  ( (tuple2!89 (_1!53 BalanceConc!54) (_2!53 BalanceConc!52)) )
))
(declare-fun lt!1660 () tuple2!88)

(declare-fun list!97 (BalanceConc!54) List!204)

(declare-fun ++!44 (BalanceConc!54 BalanceConc!54) BalanceConc!54)

(assert (=> b!31680 (= e!13838 (not (= (list!97 (_1!53 lt!1660)) (list!97 (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660))))))))

(declare-datatypes ((List!205 0))(
  ( (Nil!203) (Cons!203 (h!5599 Rule!18) (t!14790 List!205)) )
))
(declare-fun rules!1369 () List!205)

(declare-fun input!768 () BalanceConc!52)

(declare-datatypes ((LexerInterface!11 0))(
  ( (LexerInterfaceExt!8 (__x!463 Int)) (Lexer!9) )
))
(declare-fun thiss!12222 () LexerInterface!11)

(declare-fun lexRec!4 (LexerInterface!11 List!205 BalanceConc!52) tuple2!88)

(assert (=> b!31680 (= lt!1660 (lexRec!4 thiss!12222 rules!1369 input!768))))

(declare-fun b!31681 () Bool)

(declare-fun e!13834 () Bool)

(declare-fun tp!21860 () Bool)

(declare-fun mapRes!100 () Bool)

(assert (=> b!31681 (= e!13834 (and tp!21860 mapRes!100))))

(declare-fun condMapEmpty!100 () Bool)

(declare-datatypes ((List!206 0))(
  ( (Nil!204) (Cons!204 (h!5600 Regex!133) (t!14791 List!206)) )
))
(declare-datatypes ((Context!30 0))(
  ( (Context!31 (exprs!515 List!206)) )
))
(declare-datatypes ((tuple3!18 0))(
  ( (tuple3!19 (_1!54 Regex!133) (_2!54 Context!30) (_3!9 C!1340)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!90 0))(
  ( (tuple2!91 (_1!55 tuple3!18) (_2!55 (InoxSet Context!30))) )
))
(declare-datatypes ((List!207 0))(
  ( (Nil!205) (Cons!205 (h!5601 tuple2!90) (t!14792 List!207)) )
))
(declare-datatypes ((Hashable!23 0))(
  ( (HashableExt!22 (__x!464 Int)) )
))
(declare-datatypes ((array!82 0))(
  ( (array!83 (arr!66 (Array (_ BitVec 32) (_ BitVec 64))) (size!284 (_ BitVec 32))) )
))
(declare-datatypes ((array!84 0))(
  ( (array!85 (arr!67 (Array (_ BitVec 32) List!207)) (size!285 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!46 0))(
  ( (LongMapFixedSize!47 (defaultEntry!356 Int) (mask!670 (_ BitVec 32)) (extraKeys!268 (_ BitVec 32)) (zeroValue!278 List!207) (minValue!278 List!207) (_size!182 (_ BitVec 32)) (_keys!311 array!82) (_values!300 array!84) (_vacant!83 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!89 0))(
  ( (Cell!90 (v!12005 LongMapFixedSize!46)) )
))
(declare-datatypes ((MutLongMap!23 0))(
  ( (LongMap!23 (underlying!245 Cell!89)) (MutLongMapExt!22 (__x!465 Int)) )
))
(declare-datatypes ((Cell!91 0))(
  ( (Cell!92 (v!12006 MutLongMap!23)) )
))
(declare-datatypes ((MutableMap!23 0))(
  ( (MutableMapExt!22 (__x!466 Int)) (HashMap!23 (underlying!246 Cell!91) (hashF!1883 Hashable!23) (_size!183 (_ BitVec 32)) (defaultValue!169 Int)) )
))
(declare-datatypes ((CacheDown!22 0))(
  ( (CacheDown!23 (cache!502 MutableMap!23)) )
))
(declare-fun cacheDown!485 () CacheDown!22)

(declare-fun mapDefault!99 () List!207)

(assert (=> b!31681 (= condMapEmpty!100 (= (arr!67 (_values!300 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!207)) mapDefault!99)))))

(declare-fun b!31682 () Bool)

(declare-fun res!26740 () Bool)

(declare-fun e!13839 () Bool)

(assert (=> b!31682 (=> (not res!26740) (not e!13839))))

(declare-fun valid!37 (CacheDown!22) Bool)

(assert (=> b!31682 (= res!26740 (valid!37 cacheDown!485))))

(declare-fun b!31683 () Bool)

(declare-fun e!13821 () Bool)

(declare-fun e!13836 () Bool)

(declare-datatypes ((tuple2!92 0))(
  ( (tuple2!93 (_1!56 Context!30) (_2!56 C!1340)) )
))
(declare-datatypes ((tuple2!94 0))(
  ( (tuple2!95 (_1!57 tuple2!92) (_2!57 (InoxSet Context!30))) )
))
(declare-datatypes ((List!208 0))(
  ( (Nil!206) (Cons!206 (h!5602 tuple2!94) (t!14793 List!208)) )
))
(declare-datatypes ((array!86 0))(
  ( (array!87 (arr!68 (Array (_ BitVec 32) List!208)) (size!286 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!48 0))(
  ( (LongMapFixedSize!49 (defaultEntry!357 Int) (mask!671 (_ BitVec 32)) (extraKeys!269 (_ BitVec 32)) (zeroValue!279 List!208) (minValue!279 List!208) (_size!184 (_ BitVec 32)) (_keys!312 array!82) (_values!301 array!86) (_vacant!84 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!93 0))(
  ( (Cell!94 (v!12007 LongMapFixedSize!48)) )
))
(declare-datatypes ((MutLongMap!24 0))(
  ( (LongMap!24 (underlying!247 Cell!93)) (MutLongMapExt!23 (__x!467 Int)) )
))
(declare-fun lt!1661 () MutLongMap!24)

(get-info :version)

(assert (=> b!31683 (= e!13821 (and e!13836 ((_ is LongMap!24) lt!1661)))))

(declare-datatypes ((Hashable!24 0))(
  ( (HashableExt!23 (__x!468 Int)) )
))
(declare-datatypes ((Cell!95 0))(
  ( (Cell!96 (v!12008 MutLongMap!24)) )
))
(declare-datatypes ((MutableMap!24 0))(
  ( (MutableMapExt!23 (__x!469 Int)) (HashMap!24 (underlying!248 Cell!95) (hashF!1884 Hashable!24) (_size!185 (_ BitVec 32)) (defaultValue!170 Int)) )
))
(declare-datatypes ((CacheUp!20 0))(
  ( (CacheUp!21 (cache!503 MutableMap!24)) )
))
(declare-fun cacheUp!472 () CacheUp!20)

(assert (=> b!31683 (= lt!1661 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))

(declare-fun b!31684 () Bool)

(declare-fun e!13823 () Bool)

(declare-fun e!13831 () Bool)

(declare-fun tp!21863 () Bool)

(assert (=> b!31684 (= e!13823 (and e!13831 tp!21863))))

(declare-fun res!26736 () Bool)

(assert (=> start!1378 (=> (not res!26736) (not e!13839))))

(assert (=> start!1378 (= res!26736 ((_ is Lexer!9) thiss!12222))))

(assert (=> start!1378 e!13839))

(declare-fun e!13842 () Bool)

(declare-fun inv!506 (BalanceConc!52) Bool)

(assert (=> start!1378 (and (inv!506 input!768) e!13842)))

(declare-fun e!13819 () Bool)

(declare-fun inv!507 (CacheUp!20) Bool)

(assert (=> start!1378 (and (inv!507 cacheUp!472) e!13819)))

(assert (=> start!1378 true))

(declare-fun e!13841 () Bool)

(declare-fun inv!508 (CacheDown!22) Bool)

(assert (=> start!1378 (and (inv!508 cacheDown!485) e!13841)))

(assert (=> start!1378 e!13823))

(declare-fun mapNonEmpty!99 () Bool)

(declare-fun mapRes!99 () Bool)

(declare-fun tp!21864 () Bool)

(declare-fun tp!21859 () Bool)

(assert (=> mapNonEmpty!99 (= mapRes!99 (and tp!21864 tp!21859))))

(declare-fun mapValue!100 () List!208)

(declare-fun mapKey!99 () (_ BitVec 32))

(declare-fun mapRest!100 () (Array (_ BitVec 32) List!208))

(assert (=> mapNonEmpty!99 (= (arr!68 (_values!301 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))) (store mapRest!100 mapKey!99 mapValue!100))))

(declare-fun mapIsEmpty!99 () Bool)

(assert (=> mapIsEmpty!99 mapRes!100))

(declare-fun e!13824 () Bool)

(declare-fun tp!21868 () Bool)

(declare-fun b!31685 () Bool)

(declare-fun inv!500 (String!638) Bool)

(declare-fun inv!509 (TokenValueInjection!22) Bool)

(assert (=> b!31685 (= e!13831 (and tp!21868 (inv!500 (tag!287 (h!5599 rules!1369))) (inv!509 (transformation!109 (h!5599 rules!1369))) e!13824))))

(declare-fun b!31686 () Bool)

(declare-fun e!13827 () Bool)

(declare-fun tp!21856 () Bool)

(assert (=> b!31686 (= e!13827 (and tp!21856 mapRes!99))))

(declare-fun condMapEmpty!99 () Bool)

(declare-fun mapDefault!100 () List!208)

(assert (=> b!31686 (= condMapEmpty!99 (= (arr!68 (_values!301 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!208)) mapDefault!100)))))

(declare-fun b!31687 () Bool)

(declare-fun e!13840 () Bool)

(assert (=> b!31687 (= e!13819 e!13840)))

(declare-fun b!31688 () Bool)

(declare-fun e!13837 () Bool)

(declare-fun e!13829 () Bool)

(assert (=> b!31688 (= e!13837 e!13829)))

(declare-fun tp!21858 () Bool)

(declare-fun tp!21855 () Bool)

(declare-fun e!13820 () Bool)

(declare-fun array_inv!25 (array!82) Bool)

(declare-fun array_inv!26 (array!86) Bool)

(assert (=> b!31689 (= e!13820 (and tp!21862 tp!21858 tp!21855 (array_inv!25 (_keys!312 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))) (array_inv!26 (_values!301 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))) e!13827))))

(declare-fun b!31690 () Bool)

(declare-fun e!13828 () Bool)

(assert (=> b!31690 (= e!13841 e!13828)))

(declare-fun b!31691 () Bool)

(declare-fun res!26738 () Bool)

(assert (=> b!31691 (=> (not res!26738) (not e!13838))))

(declare-fun lt!1656 () tuple2!88)

(declare-fun isEmpty!61 (List!202) Bool)

(declare-fun list!98 (BalanceConc!52) List!202)

(assert (=> b!31691 (= res!26738 (isEmpty!61 (list!98 (_2!53 lt!1656))))))

(declare-fun b!31692 () Bool)

(declare-fun e!13822 () Bool)

(assert (=> b!31692 (= e!13836 e!13822)))

(assert (=> b!31693 (= e!13840 (and e!13821 tp!21854))))

(declare-fun b!31694 () Bool)

(declare-fun res!26735 () Bool)

(assert (=> b!31694 (=> (not res!26735) (not e!13839))))

(declare-fun rulesInvariant!7 (LexerInterface!11 List!205) Bool)

(assert (=> b!31694 (= res!26735 (rulesInvariant!7 thiss!12222 rules!1369))))

(declare-fun b!31695 () Bool)

(declare-fun e!13826 () Bool)

(assert (=> b!31695 (= e!13839 e!13826)))

(declare-fun res!26737 () Bool)

(assert (=> b!31695 (=> (not res!26737) (not e!13826))))

(declare-fun lt!1658 () List!202)

(declare-fun lt!1657 () List!202)

(declare-fun ++!45 (List!202 List!202) List!202)

(assert (=> b!31695 (= res!26737 (= lt!1658 (++!45 lt!1657 lt!1658)))))

(assert (=> b!31695 (= lt!1658 (list!98 input!768))))

(assert (=> b!31695 (= lt!1657 (list!98 (BalanceConc!53 Empty!26)))))

(declare-fun b!31696 () Bool)

(declare-fun e!13832 () Bool)

(declare-fun lt!1659 () MutLongMap!23)

(assert (=> b!31696 (= e!13832 (and e!13837 ((_ is LongMap!23) lt!1659)))))

(assert (=> b!31696 (= lt!1659 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))

(declare-fun b!31697 () Bool)

(declare-fun res!26741 () Bool)

(assert (=> b!31697 (=> (not res!26741) (not e!13839))))

(declare-fun valid!38 (CacheUp!20) Bool)

(assert (=> b!31697 (= res!26741 (valid!38 cacheUp!472))))

(declare-fun tp!21861 () Bool)

(declare-fun e!13833 () Bool)

(declare-fun tp!21857 () Bool)

(declare-fun array_inv!27 (array!84) Bool)

(assert (=> b!31698 (= e!13833 (and tp!21853 tp!21857 tp!21861 (array_inv!25 (_keys!311 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))) (array_inv!27 (_values!300 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))) e!13834))))

(declare-fun b!31699 () Bool)

(assert (=> b!31699 (= e!13826 e!13838)))

(declare-fun res!26734 () Bool)

(assert (=> b!31699 (=> (not res!26734) (not e!13838))))

(assert (=> b!31699 (= res!26734 (= (list!97 (_1!53 lt!1656)) (list!97 (BalanceConc!55 Empty!27))))))

(assert (=> b!31699 (= lt!1656 (lexRec!4 thiss!12222 rules!1369 (BalanceConc!53 Empty!26)))))

(declare-fun mapNonEmpty!100 () Bool)

(declare-fun tp!21865 () Bool)

(declare-fun tp!21867 () Bool)

(assert (=> mapNonEmpty!100 (= mapRes!100 (and tp!21865 tp!21867))))

(declare-fun mapKey!100 () (_ BitVec 32))

(declare-fun mapRest!99 () (Array (_ BitVec 32) List!207))

(declare-fun mapValue!99 () List!207)

(assert (=> mapNonEmpty!100 (= (arr!67 (_values!300 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))) (store mapRest!99 mapKey!100 mapValue!99))))

(assert (=> b!31700 (= e!13828 (and e!13832 tp!21866))))

(declare-fun b!31701 () Bool)

(declare-fun res!26739 () Bool)

(assert (=> b!31701 (=> (not res!26739) (not e!13839))))

(declare-fun isEmpty!62 (List!205) Bool)

(assert (=> b!31701 (= res!26739 (not (isEmpty!62 rules!1369)))))

(declare-fun b!31702 () Bool)

(declare-fun tp!21869 () Bool)

(declare-fun inv!510 (Conc!26) Bool)

(assert (=> b!31702 (= e!13842 (and (inv!510 (c!15160 input!768)) tp!21869))))

(declare-fun b!31703 () Bool)

(assert (=> b!31703 (= e!13822 e!13820)))

(declare-fun b!31704 () Bool)

(assert (=> b!31704 (= e!13829 e!13833)))

(declare-fun mapIsEmpty!100 () Bool)

(assert (=> mapIsEmpty!100 mapRes!99))

(assert (=> b!31705 (= e!13824 (and tp!21851 tp!21852))))

(assert (= (and start!1378 res!26736) b!31701))

(assert (= (and b!31701 res!26739) b!31694))

(assert (= (and b!31694 res!26735) b!31697))

(assert (= (and b!31697 res!26741) b!31682))

(assert (= (and b!31682 res!26740) b!31695))

(assert (= (and b!31695 res!26737) b!31699))

(assert (= (and b!31699 res!26734) b!31691))

(assert (= (and b!31691 res!26738) b!31680))

(assert (= start!1378 b!31702))

(assert (= (and b!31686 condMapEmpty!99) mapIsEmpty!100))

(assert (= (and b!31686 (not condMapEmpty!99)) mapNonEmpty!99))

(assert (= b!31689 b!31686))

(assert (= b!31703 b!31689))

(assert (= b!31692 b!31703))

(assert (= (and b!31683 ((_ is LongMap!24) (v!12008 (underlying!248 (cache!503 cacheUp!472))))) b!31692))

(assert (= b!31693 b!31683))

(assert (= (and b!31687 ((_ is HashMap!24) (cache!503 cacheUp!472))) b!31693))

(assert (= start!1378 b!31687))

(assert (= (and b!31681 condMapEmpty!100) mapIsEmpty!99))

(assert (= (and b!31681 (not condMapEmpty!100)) mapNonEmpty!100))

(assert (= b!31698 b!31681))

(assert (= b!31704 b!31698))

(assert (= b!31688 b!31704))

(assert (= (and b!31696 ((_ is LongMap!23) (v!12006 (underlying!246 (cache!502 cacheDown!485))))) b!31688))

(assert (= b!31700 b!31696))

(assert (= (and b!31690 ((_ is HashMap!23) (cache!502 cacheDown!485))) b!31700))

(assert (= start!1378 b!31690))

(assert (= b!31685 b!31705))

(assert (= b!31684 b!31685))

(assert (= (and start!1378 ((_ is Cons!203) rules!1369)) b!31684))

(declare-fun m!7853 () Bool)

(assert (=> b!31697 m!7853))

(declare-fun m!7855 () Bool)

(assert (=> start!1378 m!7855))

(declare-fun m!7857 () Bool)

(assert (=> start!1378 m!7857))

(declare-fun m!7859 () Bool)

(assert (=> start!1378 m!7859))

(declare-fun m!7861 () Bool)

(assert (=> mapNonEmpty!100 m!7861))

(declare-fun m!7863 () Bool)

(assert (=> b!31691 m!7863))

(assert (=> b!31691 m!7863))

(declare-fun m!7865 () Bool)

(assert (=> b!31691 m!7865))

(declare-fun m!7867 () Bool)

(assert (=> b!31680 m!7867))

(declare-fun m!7869 () Bool)

(assert (=> b!31680 m!7869))

(assert (=> b!31680 m!7869))

(declare-fun m!7871 () Bool)

(assert (=> b!31680 m!7871))

(declare-fun m!7873 () Bool)

(assert (=> b!31680 m!7873))

(declare-fun m!7875 () Bool)

(assert (=> b!31682 m!7875))

(declare-fun m!7877 () Bool)

(assert (=> b!31694 m!7877))

(declare-fun m!7879 () Bool)

(assert (=> b!31699 m!7879))

(declare-fun m!7881 () Bool)

(assert (=> b!31699 m!7881))

(declare-fun m!7883 () Bool)

(assert (=> b!31699 m!7883))

(declare-fun m!7885 () Bool)

(assert (=> b!31695 m!7885))

(declare-fun m!7887 () Bool)

(assert (=> b!31695 m!7887))

(declare-fun m!7889 () Bool)

(assert (=> b!31695 m!7889))

(declare-fun m!7891 () Bool)

(assert (=> mapNonEmpty!99 m!7891))

(declare-fun m!7893 () Bool)

(assert (=> b!31689 m!7893))

(declare-fun m!7895 () Bool)

(assert (=> b!31689 m!7895))

(declare-fun m!7897 () Bool)

(assert (=> b!31698 m!7897))

(declare-fun m!7899 () Bool)

(assert (=> b!31698 m!7899))

(declare-fun m!7901 () Bool)

(assert (=> b!31702 m!7901))

(declare-fun m!7903 () Bool)

(assert (=> b!31685 m!7903))

(declare-fun m!7905 () Bool)

(assert (=> b!31685 m!7905))

(declare-fun m!7907 () Bool)

(assert (=> b!31701 m!7907))

(check-sat (not b!31686) b_and!157 (not b_next!155) (not b_next!163) (not b!31681) (not b!31701) (not start!1378) b_and!161 (not b!31697) (not b!31695) (not b_next!153) (not b!31680) b_and!155 b_and!153 b_and!159 (not b!31699) (not b_next!157) (not b!31694) (not b_next!159) b_and!163 (not b!31682) (not mapNonEmpty!99) (not mapNonEmpty!100) (not b!31698) (not b_next!161) (not b!31684) (not b!31685) (not b!31689) (not b!31691) (not b!31702))
(check-sat b_and!157 (not b_next!155) (not b_next!153) (not b_next!163) (not b_next!161) b_and!161 b_and!155 b_and!153 (not b_next!157) b_and!159 (not b_next!159) b_and!163)
(get-model)

(declare-fun d!3025 () Bool)

(declare-fun c!15164 () Bool)

(assert (=> d!3025 (= c!15164 ((_ is Node!26) (c!15160 input!768)))))

(declare-fun e!13847 () Bool)

(assert (=> d!3025 (= (inv!510 (c!15160 input!768)) e!13847)))

(declare-fun b!31712 () Bool)

(declare-fun inv!511 (Conc!26) Bool)

(assert (=> b!31712 (= e!13847 (inv!511 (c!15160 input!768)))))

(declare-fun b!31713 () Bool)

(declare-fun e!13848 () Bool)

(assert (=> b!31713 (= e!13847 e!13848)))

(declare-fun res!26744 () Bool)

(assert (=> b!31713 (= res!26744 (not ((_ is Leaf!157) (c!15160 input!768))))))

(assert (=> b!31713 (=> res!26744 e!13848)))

(declare-fun b!31714 () Bool)

(declare-fun inv!512 (Conc!26) Bool)

(assert (=> b!31714 (= e!13848 (inv!512 (c!15160 input!768)))))

(assert (= (and d!3025 c!15164) b!31712))

(assert (= (and d!3025 (not c!15164)) b!31713))

(assert (= (and b!31713 (not res!26744)) b!31714))

(declare-fun m!7909 () Bool)

(assert (=> b!31712 m!7909))

(declare-fun m!7911 () Bool)

(assert (=> b!31714 m!7911))

(assert (=> b!31702 d!3025))

(declare-fun d!3027 () Bool)

(declare-fun validCacheMapDown!4 (MutableMap!23) Bool)

(assert (=> d!3027 (= (valid!37 cacheDown!485) (validCacheMapDown!4 (cache!502 cacheDown!485)))))

(declare-fun bs!3839 () Bool)

(assert (= bs!3839 d!3027))

(declare-fun m!7913 () Bool)

(assert (=> bs!3839 m!7913))

(assert (=> b!31682 d!3027))

(declare-fun d!3029 () Bool)

(assert (=> d!3029 (= (isEmpty!62 rules!1369) ((_ is Nil!203) rules!1369))))

(assert (=> b!31701 d!3029))

(declare-fun d!3031 () Bool)

(assert (=> d!3031 (= (isEmpty!61 (list!98 (_2!53 lt!1656))) ((_ is Nil!200) (list!98 (_2!53 lt!1656))))))

(assert (=> b!31691 d!3031))

(declare-fun d!3033 () Bool)

(declare-fun list!99 (Conc!26) List!202)

(assert (=> d!3033 (= (list!98 (_2!53 lt!1656)) (list!99 (c!15160 (_2!53 lt!1656))))))

(declare-fun bs!3840 () Bool)

(assert (= bs!3840 d!3033))

(declare-fun m!7915 () Bool)

(assert (=> bs!3840 m!7915))

(assert (=> b!31691 d!3033))

(declare-fun d!3035 () Bool)

(assert (=> d!3035 (= (array_inv!25 (_keys!312 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))) (bvsge (size!284 (_keys!312 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!31689 d!3035))

(declare-fun d!3037 () Bool)

(assert (=> d!3037 (= (array_inv!26 (_values!301 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))) (bvsge (size!286 (_values!301 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!31689 d!3037))

(declare-fun d!3039 () Bool)

(declare-fun isBalanced!11 (Conc!26) Bool)

(assert (=> d!3039 (= (inv!506 input!768) (isBalanced!11 (c!15160 input!768)))))

(declare-fun bs!3841 () Bool)

(assert (= bs!3841 d!3039))

(declare-fun m!7917 () Bool)

(assert (=> bs!3841 m!7917))

(assert (=> start!1378 d!3039))

(declare-fun d!3041 () Bool)

(declare-fun res!26747 () Bool)

(declare-fun e!13851 () Bool)

(assert (=> d!3041 (=> (not res!26747) (not e!13851))))

(assert (=> d!3041 (= res!26747 ((_ is HashMap!24) (cache!503 cacheUp!472)))))

(assert (=> d!3041 (= (inv!507 cacheUp!472) e!13851)))

(declare-fun b!31717 () Bool)

(declare-fun validCacheMapUp!4 (MutableMap!24) Bool)

(assert (=> b!31717 (= e!13851 (validCacheMapUp!4 (cache!503 cacheUp!472)))))

(assert (= (and d!3041 res!26747) b!31717))

(declare-fun m!7919 () Bool)

(assert (=> b!31717 m!7919))

(assert (=> start!1378 d!3041))

(declare-fun d!3043 () Bool)

(declare-fun res!26750 () Bool)

(declare-fun e!13854 () Bool)

(assert (=> d!3043 (=> (not res!26750) (not e!13854))))

(assert (=> d!3043 (= res!26750 ((_ is HashMap!23) (cache!502 cacheDown!485)))))

(assert (=> d!3043 (= (inv!508 cacheDown!485) e!13854)))

(declare-fun b!31720 () Bool)

(assert (=> b!31720 (= e!13854 (validCacheMapDown!4 (cache!502 cacheDown!485)))))

(assert (= (and d!3043 res!26750) b!31720))

(assert (=> b!31720 m!7913))

(assert (=> start!1378 d!3043))

(declare-fun d!3045 () Bool)

(declare-fun list!100 (Conc!27) List!204)

(assert (=> d!3045 (= (list!97 (_1!53 lt!1660)) (list!100 (c!15161 (_1!53 lt!1660))))))

(declare-fun bs!3842 () Bool)

(assert (= bs!3842 d!3045))

(declare-fun m!7921 () Bool)

(assert (=> bs!3842 m!7921))

(assert (=> b!31680 d!3045))

(declare-fun d!3047 () Bool)

(assert (=> d!3047 (= (list!97 (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660))) (list!100 (c!15161 (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660)))))))

(declare-fun bs!3843 () Bool)

(assert (= bs!3843 d!3047))

(declare-fun m!7923 () Bool)

(assert (=> bs!3843 m!7923))

(assert (=> b!31680 d!3047))

(declare-fun b!31729 () Bool)

(declare-fun res!26759 () Bool)

(declare-fun e!13857 () Bool)

(assert (=> b!31729 (=> (not res!26759) (not e!13857))))

(declare-fun isBalanced!12 (Conc!27) Bool)

(declare-fun ++!46 (Conc!27 Conc!27) Conc!27)

(assert (=> b!31729 (= res!26759 (isBalanced!12 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))))))

(declare-fun b!31730 () Bool)

(declare-fun res!26761 () Bool)

(assert (=> b!31730 (=> (not res!26761) (not e!13857))))

(declare-fun height!6 (Conc!27) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!31730 (= res!26761 (<= (height!6 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))) (+ (max!0 (height!6 (c!15161 (BalanceConc!55 Empty!27))) (height!6 (c!15161 (_1!53 lt!1660)))) 1)))))

(declare-fun b!31731 () Bool)

(declare-fun res!26760 () Bool)

(assert (=> b!31731 (=> (not res!26760) (not e!13857))))

(assert (=> b!31731 (= res!26760 (>= (height!6 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))) (max!0 (height!6 (c!15161 (BalanceConc!55 Empty!27))) (height!6 (c!15161 (_1!53 lt!1660))))))))

(declare-fun b!31732 () Bool)

(declare-fun lt!1664 () BalanceConc!54)

(declare-fun ++!47 (List!204 List!204) List!204)

(assert (=> b!31732 (= e!13857 (= (list!97 lt!1664) (++!47 (list!97 (BalanceConc!55 Empty!27)) (list!97 (_1!53 lt!1660)))))))

(declare-fun d!3049 () Bool)

(assert (=> d!3049 e!13857))

(declare-fun res!26762 () Bool)

(assert (=> d!3049 (=> (not res!26762) (not e!13857))))

(declare-fun appendAssocInst!1 (Conc!27 Conc!27) Bool)

(assert (=> d!3049 (= res!26762 (appendAssocInst!1 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))))))

(assert (=> d!3049 (= lt!1664 (BalanceConc!55 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))))))

(assert (=> d!3049 (= (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660)) lt!1664)))

(assert (= (and d!3049 res!26762) b!31729))

(assert (= (and b!31729 res!26759) b!31730))

(assert (= (and b!31730 res!26761) b!31731))

(assert (= (and b!31731 res!26760) b!31732))

(declare-fun m!7925 () Bool)

(assert (=> b!31729 m!7925))

(assert (=> b!31729 m!7925))

(declare-fun m!7927 () Bool)

(assert (=> b!31729 m!7927))

(declare-fun m!7929 () Bool)

(assert (=> b!31731 m!7929))

(assert (=> b!31731 m!7925))

(declare-fun m!7931 () Bool)

(assert (=> b!31731 m!7931))

(declare-fun m!7933 () Bool)

(assert (=> b!31731 m!7933))

(assert (=> b!31731 m!7933))

(assert (=> b!31731 m!7929))

(declare-fun m!7935 () Bool)

(assert (=> b!31731 m!7935))

(assert (=> b!31731 m!7925))

(declare-fun m!7937 () Bool)

(assert (=> d!3049 m!7937))

(assert (=> d!3049 m!7925))

(declare-fun m!7939 () Bool)

(assert (=> b!31732 m!7939))

(assert (=> b!31732 m!7881))

(assert (=> b!31732 m!7867))

(assert (=> b!31732 m!7881))

(assert (=> b!31732 m!7867))

(declare-fun m!7941 () Bool)

(assert (=> b!31732 m!7941))

(assert (=> b!31730 m!7929))

(assert (=> b!31730 m!7925))

(assert (=> b!31730 m!7931))

(assert (=> b!31730 m!7933))

(assert (=> b!31730 m!7933))

(assert (=> b!31730 m!7929))

(assert (=> b!31730 m!7935))

(assert (=> b!31730 m!7925))

(assert (=> b!31680 d!3049))

(declare-fun b!31747 () Bool)

(declare-fun e!13867 () Bool)

(declare-fun e!13868 () Bool)

(assert (=> b!31747 (= e!13867 e!13868)))

(declare-fun res!26770 () Bool)

(declare-fun lt!1673 () tuple2!88)

(declare-fun size!287 (BalanceConc!52) Int)

(assert (=> b!31747 (= res!26770 (< (size!287 (_2!53 lt!1673)) (size!287 input!768)))))

(assert (=> b!31747 (=> (not res!26770) (not e!13868))))

(declare-fun d!3051 () Bool)

(declare-fun e!13869 () Bool)

(assert (=> d!3051 e!13869))

(declare-fun res!26769 () Bool)

(assert (=> d!3051 (=> (not res!26769) (not e!13869))))

(assert (=> d!3051 (= res!26769 e!13867)))

(declare-fun c!15174 () Bool)

(declare-fun size!288 (BalanceConc!54) Int)

(assert (=> d!3051 (= c!15174 (> (size!288 (_1!53 lt!1673)) 0))))

(declare-fun e!13866 () tuple2!88)

(assert (=> d!3051 (= lt!1673 e!13866)))

(declare-fun c!15173 () Bool)

(declare-datatypes ((tuple2!96 0))(
  ( (tuple2!97 (_1!58 Token!12) (_2!58 BalanceConc!52)) )
))
(declare-datatypes ((Option!38 0))(
  ( (None!37) (Some!37 (v!12009 tuple2!96)) )
))
(declare-fun lt!1672 () Option!38)

(assert (=> d!3051 (= c!15173 ((_ is Some!37) lt!1672))))

(declare-fun maxPrefixZipperSequence!3 (LexerInterface!11 List!205 BalanceConc!52) Option!38)

(assert (=> d!3051 (= lt!1672 (maxPrefixZipperSequence!3 thiss!12222 rules!1369 input!768))))

(assert (=> d!3051 (= (lexRec!4 thiss!12222 rules!1369 input!768) lt!1673)))

(declare-fun b!31748 () Bool)

(assert (=> b!31748 (= e!13867 (= (list!98 (_2!53 lt!1673)) (list!98 input!768)))))

(declare-fun b!31749 () Bool)

(declare-datatypes ((tuple2!98 0))(
  ( (tuple2!99 (_1!59 List!204) (_2!59 List!202)) )
))
(declare-fun lexList!3 (LexerInterface!11 List!205 List!202) tuple2!98)

(assert (=> b!31749 (= e!13869 (= (list!98 (_2!53 lt!1673)) (_2!59 (lexList!3 thiss!12222 rules!1369 (list!98 input!768)))))))

(declare-fun b!31750 () Bool)

(declare-fun isEmpty!63 (BalanceConc!54) Bool)

(assert (=> b!31750 (= e!13868 (not (isEmpty!63 (_1!53 lt!1673))))))

(declare-fun b!31751 () Bool)

(declare-fun lt!1671 () tuple2!88)

(declare-fun prepend!8 (BalanceConc!54 Token!12) BalanceConc!54)

(assert (=> b!31751 (= e!13866 (tuple2!89 (prepend!8 (_1!53 lt!1671) (_1!58 (v!12009 lt!1672))) (_2!53 lt!1671)))))

(assert (=> b!31751 (= lt!1671 (lexRec!4 thiss!12222 rules!1369 (_2!58 (v!12009 lt!1672))))))

(declare-fun b!31752 () Bool)

(assert (=> b!31752 (= e!13866 (tuple2!89 (BalanceConc!55 Empty!27) input!768))))

(declare-fun b!31753 () Bool)

(declare-fun res!26771 () Bool)

(assert (=> b!31753 (=> (not res!26771) (not e!13869))))

(assert (=> b!31753 (= res!26771 (= (list!97 (_1!53 lt!1673)) (_1!59 (lexList!3 thiss!12222 rules!1369 (list!98 input!768)))))))

(assert (= (and d!3051 c!15173) b!31751))

(assert (= (and d!3051 (not c!15173)) b!31752))

(assert (= (and d!3051 c!15174) b!31747))

(assert (= (and d!3051 (not c!15174)) b!31748))

(assert (= (and b!31747 res!26770) b!31750))

(assert (= (and d!3051 res!26769) b!31753))

(assert (= (and b!31753 res!26771) b!31749))

(declare-fun m!7943 () Bool)

(assert (=> b!31753 m!7943))

(assert (=> b!31753 m!7887))

(assert (=> b!31753 m!7887))

(declare-fun m!7945 () Bool)

(assert (=> b!31753 m!7945))

(declare-fun m!7947 () Bool)

(assert (=> b!31751 m!7947))

(declare-fun m!7949 () Bool)

(assert (=> b!31751 m!7949))

(declare-fun m!7951 () Bool)

(assert (=> b!31749 m!7951))

(assert (=> b!31749 m!7887))

(assert (=> b!31749 m!7887))

(assert (=> b!31749 m!7945))

(declare-fun m!7953 () Bool)

(assert (=> b!31750 m!7953))

(declare-fun m!7955 () Bool)

(assert (=> d!3051 m!7955))

(declare-fun m!7957 () Bool)

(assert (=> d!3051 m!7957))

(declare-fun m!7959 () Bool)

(assert (=> b!31747 m!7959))

(declare-fun m!7961 () Bool)

(assert (=> b!31747 m!7961))

(assert (=> b!31748 m!7951))

(assert (=> b!31748 m!7887))

(assert (=> b!31680 d!3051))

(declare-fun d!3053 () Bool)

(assert (=> d!3053 (= (list!97 (_1!53 lt!1656)) (list!100 (c!15161 (_1!53 lt!1656))))))

(declare-fun bs!3844 () Bool)

(assert (= bs!3844 d!3053))

(declare-fun m!7963 () Bool)

(assert (=> bs!3844 m!7963))

(assert (=> b!31699 d!3053))

(declare-fun d!3055 () Bool)

(assert (=> d!3055 (= (list!97 (BalanceConc!55 Empty!27)) (list!100 (c!15161 (BalanceConc!55 Empty!27))))))

(declare-fun bs!3845 () Bool)

(assert (= bs!3845 d!3055))

(declare-fun m!7965 () Bool)

(assert (=> bs!3845 m!7965))

(assert (=> b!31699 d!3055))

(declare-fun b!31754 () Bool)

(declare-fun e!13871 () Bool)

(declare-fun e!13872 () Bool)

(assert (=> b!31754 (= e!13871 e!13872)))

(declare-fun res!26773 () Bool)

(declare-fun lt!1676 () tuple2!88)

(assert (=> b!31754 (= res!26773 (< (size!287 (_2!53 lt!1676)) (size!287 (BalanceConc!53 Empty!26))))))

(assert (=> b!31754 (=> (not res!26773) (not e!13872))))

(declare-fun d!3057 () Bool)

(declare-fun e!13873 () Bool)

(assert (=> d!3057 e!13873))

(declare-fun res!26772 () Bool)

(assert (=> d!3057 (=> (not res!26772) (not e!13873))))

(assert (=> d!3057 (= res!26772 e!13871)))

(declare-fun c!15176 () Bool)

(assert (=> d!3057 (= c!15176 (> (size!288 (_1!53 lt!1676)) 0))))

(declare-fun e!13870 () tuple2!88)

(assert (=> d!3057 (= lt!1676 e!13870)))

(declare-fun c!15175 () Bool)

(declare-fun lt!1675 () Option!38)

(assert (=> d!3057 (= c!15175 ((_ is Some!37) lt!1675))))

(assert (=> d!3057 (= lt!1675 (maxPrefixZipperSequence!3 thiss!12222 rules!1369 (BalanceConc!53 Empty!26)))))

(assert (=> d!3057 (= (lexRec!4 thiss!12222 rules!1369 (BalanceConc!53 Empty!26)) lt!1676)))

(declare-fun b!31755 () Bool)

(assert (=> b!31755 (= e!13871 (= (list!98 (_2!53 lt!1676)) (list!98 (BalanceConc!53 Empty!26))))))

(declare-fun b!31756 () Bool)

(assert (=> b!31756 (= e!13873 (= (list!98 (_2!53 lt!1676)) (_2!59 (lexList!3 thiss!12222 rules!1369 (list!98 (BalanceConc!53 Empty!26))))))))

(declare-fun b!31757 () Bool)

(assert (=> b!31757 (= e!13872 (not (isEmpty!63 (_1!53 lt!1676))))))

(declare-fun b!31758 () Bool)

(declare-fun lt!1674 () tuple2!88)

(assert (=> b!31758 (= e!13870 (tuple2!89 (prepend!8 (_1!53 lt!1674) (_1!58 (v!12009 lt!1675))) (_2!53 lt!1674)))))

(assert (=> b!31758 (= lt!1674 (lexRec!4 thiss!12222 rules!1369 (_2!58 (v!12009 lt!1675))))))

(declare-fun b!31759 () Bool)

(assert (=> b!31759 (= e!13870 (tuple2!89 (BalanceConc!55 Empty!27) (BalanceConc!53 Empty!26)))))

(declare-fun b!31760 () Bool)

(declare-fun res!26774 () Bool)

(assert (=> b!31760 (=> (not res!26774) (not e!13873))))

(assert (=> b!31760 (= res!26774 (= (list!97 (_1!53 lt!1676)) (_1!59 (lexList!3 thiss!12222 rules!1369 (list!98 (BalanceConc!53 Empty!26))))))))

(assert (= (and d!3057 c!15175) b!31758))

(assert (= (and d!3057 (not c!15175)) b!31759))

(assert (= (and d!3057 c!15176) b!31754))

(assert (= (and d!3057 (not c!15176)) b!31755))

(assert (= (and b!31754 res!26773) b!31757))

(assert (= (and d!3057 res!26772) b!31760))

(assert (= (and b!31760 res!26774) b!31756))

(declare-fun m!7967 () Bool)

(assert (=> b!31760 m!7967))

(assert (=> b!31760 m!7889))

(assert (=> b!31760 m!7889))

(declare-fun m!7969 () Bool)

(assert (=> b!31760 m!7969))

(declare-fun m!7971 () Bool)

(assert (=> b!31758 m!7971))

(declare-fun m!7973 () Bool)

(assert (=> b!31758 m!7973))

(declare-fun m!7975 () Bool)

(assert (=> b!31756 m!7975))

(assert (=> b!31756 m!7889))

(assert (=> b!31756 m!7889))

(assert (=> b!31756 m!7969))

(declare-fun m!7977 () Bool)

(assert (=> b!31757 m!7977))

(declare-fun m!7979 () Bool)

(assert (=> d!3057 m!7979))

(declare-fun m!7981 () Bool)

(assert (=> d!3057 m!7981))

(declare-fun m!7983 () Bool)

(assert (=> b!31754 m!7983))

(declare-fun m!7985 () Bool)

(assert (=> b!31754 m!7985))

(assert (=> b!31755 m!7975))

(assert (=> b!31755 m!7889))

(assert (=> b!31699 d!3057))

(declare-fun d!3059 () Bool)

(assert (=> d!3059 (= (valid!38 cacheUp!472) (validCacheMapUp!4 (cache!503 cacheUp!472)))))

(declare-fun bs!3846 () Bool)

(assert (= bs!3846 d!3059))

(assert (=> bs!3846 m!7919))

(assert (=> b!31697 d!3059))

(declare-fun d!3061 () Bool)

(assert (=> d!3061 (= (array_inv!25 (_keys!311 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))) (bvsge (size!284 (_keys!311 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!31698 d!3061))

(declare-fun d!3063 () Bool)

(assert (=> d!3063 (= (array_inv!27 (_values!300 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))) (bvsge (size!285 (_values!300 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!31698 d!3063))

(declare-fun d!3065 () Bool)

(assert (=> d!3065 (= (inv!500 (tag!287 (h!5599 rules!1369))) (= (mod (str.len (value!5793 (tag!287 (h!5599 rules!1369)))) 2) 0))))

(assert (=> b!31685 d!3065))

(declare-fun d!3067 () Bool)

(declare-fun res!26777 () Bool)

(declare-fun e!13876 () Bool)

(assert (=> d!3067 (=> (not res!26777) (not e!13876))))

(declare-fun semiInverseModEq!12 (Int Int) Bool)

(assert (=> d!3067 (= res!26777 (semiInverseModEq!12 (toChars!443 (transformation!109 (h!5599 rules!1369))) (toValue!584 (transformation!109 (h!5599 rules!1369)))))))

(assert (=> d!3067 (= (inv!509 (transformation!109 (h!5599 rules!1369))) e!13876)))

(declare-fun b!31763 () Bool)

(declare-fun equivClasses!8 (Int Int) Bool)

(assert (=> b!31763 (= e!13876 (equivClasses!8 (toChars!443 (transformation!109 (h!5599 rules!1369))) (toValue!584 (transformation!109 (h!5599 rules!1369)))))))

(assert (= (and d!3067 res!26777) b!31763))

(declare-fun m!7987 () Bool)

(assert (=> d!3067 m!7987))

(declare-fun m!7989 () Bool)

(assert (=> b!31763 m!7989))

(assert (=> b!31685 d!3067))

(declare-fun b!31774 () Bool)

(declare-fun res!26783 () Bool)

(declare-fun e!13882 () Bool)

(assert (=> b!31774 (=> (not res!26783) (not e!13882))))

(declare-fun lt!1679 () List!202)

(declare-fun size!289 (List!202) Int)

(assert (=> b!31774 (= res!26783 (= (size!289 lt!1679) (+ (size!289 lt!1657) (size!289 lt!1658))))))

(declare-fun b!31773 () Bool)

(declare-fun e!13881 () List!202)

(assert (=> b!31773 (= e!13881 (Cons!200 (h!5596 lt!1657) (++!45 (t!14787 lt!1657) lt!1658)))))

(declare-fun d!3069 () Bool)

(assert (=> d!3069 e!13882))

(declare-fun res!26782 () Bool)

(assert (=> d!3069 (=> (not res!26782) (not e!13882))))

(declare-fun content!19 (List!202) (InoxSet C!1340))

(assert (=> d!3069 (= res!26782 (= (content!19 lt!1679) ((_ map or) (content!19 lt!1657) (content!19 lt!1658))))))

(assert (=> d!3069 (= lt!1679 e!13881)))

(declare-fun c!15179 () Bool)

(assert (=> d!3069 (= c!15179 ((_ is Nil!200) lt!1657))))

(assert (=> d!3069 (= (++!45 lt!1657 lt!1658) lt!1679)))

(declare-fun b!31772 () Bool)

(assert (=> b!31772 (= e!13881 lt!1658)))

(declare-fun b!31775 () Bool)

(assert (=> b!31775 (= e!13882 (or (not (= lt!1658 Nil!200)) (= lt!1679 lt!1657)))))

(assert (= (and d!3069 c!15179) b!31772))

(assert (= (and d!3069 (not c!15179)) b!31773))

(assert (= (and d!3069 res!26782) b!31774))

(assert (= (and b!31774 res!26783) b!31775))

(declare-fun m!7991 () Bool)

(assert (=> b!31774 m!7991))

(declare-fun m!7993 () Bool)

(assert (=> b!31774 m!7993))

(declare-fun m!7995 () Bool)

(assert (=> b!31774 m!7995))

(declare-fun m!7997 () Bool)

(assert (=> b!31773 m!7997))

(declare-fun m!7999 () Bool)

(assert (=> d!3069 m!7999))

(declare-fun m!8001 () Bool)

(assert (=> d!3069 m!8001))

(declare-fun m!8003 () Bool)

(assert (=> d!3069 m!8003))

(assert (=> b!31695 d!3069))

(declare-fun d!3071 () Bool)

(assert (=> d!3071 (= (list!98 input!768) (list!99 (c!15160 input!768)))))

(declare-fun bs!3847 () Bool)

(assert (= bs!3847 d!3071))

(declare-fun m!8005 () Bool)

(assert (=> bs!3847 m!8005))

(assert (=> b!31695 d!3071))

(declare-fun d!3073 () Bool)

(assert (=> d!3073 (= (list!98 (BalanceConc!53 Empty!26)) (list!99 (c!15160 (BalanceConc!53 Empty!26))))))

(declare-fun bs!3848 () Bool)

(assert (= bs!3848 d!3073))

(declare-fun m!8007 () Bool)

(assert (=> bs!3848 m!8007))

(assert (=> b!31695 d!3073))

(declare-fun d!3075 () Bool)

(declare-fun res!26786 () Bool)

(declare-fun e!13885 () Bool)

(assert (=> d!3075 (=> (not res!26786) (not e!13885))))

(declare-fun rulesValid!4 (LexerInterface!11 List!205) Bool)

(assert (=> d!3075 (= res!26786 (rulesValid!4 thiss!12222 rules!1369))))

(assert (=> d!3075 (= (rulesInvariant!7 thiss!12222 rules!1369) e!13885)))

(declare-fun b!31778 () Bool)

(declare-datatypes ((List!209 0))(
  ( (Nil!207) (Cons!207 (h!5603 String!638) (t!14794 List!209)) )
))
(declare-fun noDuplicateTag!4 (LexerInterface!11 List!205 List!209) Bool)

(assert (=> b!31778 (= e!13885 (noDuplicateTag!4 thiss!12222 rules!1369 Nil!207))))

(assert (= (and d!3075 res!26786) b!31778))

(declare-fun m!8009 () Bool)

(assert (=> d!3075 m!8009))

(declare-fun m!8011 () Bool)

(assert (=> b!31778 m!8011))

(assert (=> b!31694 d!3075))

(declare-fun b!31789 () Bool)

(declare-fun b_free!165 () Bool)

(declare-fun b_next!165 () Bool)

(assert (=> b!31789 (= b_free!165 (not b_next!165))))

(declare-fun tp!21880 () Bool)

(declare-fun b_and!165 () Bool)

(assert (=> b!31789 (= tp!21880 b_and!165)))

(declare-fun b_free!167 () Bool)

(declare-fun b_next!167 () Bool)

(assert (=> b!31789 (= b_free!167 (not b_next!167))))

(declare-fun tp!21881 () Bool)

(declare-fun b_and!167 () Bool)

(assert (=> b!31789 (= tp!21881 b_and!167)))

(declare-fun e!13894 () Bool)

(assert (=> b!31789 (= e!13894 (and tp!21880 tp!21881))))

(declare-fun b!31788 () Bool)

(declare-fun e!13895 () Bool)

(declare-fun tp!21879 () Bool)

(assert (=> b!31788 (= e!13895 (and tp!21879 (inv!500 (tag!287 (h!5599 (t!14790 rules!1369)))) (inv!509 (transformation!109 (h!5599 (t!14790 rules!1369)))) e!13894))))

(declare-fun b!31787 () Bool)

(declare-fun e!13896 () Bool)

(declare-fun tp!21878 () Bool)

(assert (=> b!31787 (= e!13896 (and e!13895 tp!21878))))

(assert (=> b!31684 (= tp!21863 e!13896)))

(assert (= b!31788 b!31789))

(assert (= b!31787 b!31788))

(assert (= (and b!31684 ((_ is Cons!203) (t!14790 rules!1369))) b!31787))

(declare-fun m!8013 () Bool)

(assert (=> b!31788 m!8013))

(declare-fun m!8015 () Bool)

(assert (=> b!31788 m!8015))

(declare-fun b!31798 () Bool)

(declare-fun e!13904 () Bool)

(declare-fun tp!21893 () Bool)

(assert (=> b!31798 (= e!13904 tp!21893)))

(declare-fun tp_is_empty!295 () Bool)

(declare-fun e!13905 () Bool)

(declare-fun tp!21892 () Bool)

(declare-fun b!31799 () Bool)

(declare-fun tp!21894 () Bool)

(declare-fun setRes!212 () Bool)

(declare-fun inv!513 (Context!30) Bool)

(assert (=> b!31799 (= e!13905 (and tp!21892 (inv!513 (_2!54 (_1!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))))) e!13904 tp_is_empty!295 setRes!212 tp!21894))))

(declare-fun condSetEmpty!212 () Bool)

(assert (=> b!31799 (= condSetEmpty!212 (= (_2!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!212 () Bool)

(assert (=> setIsEmpty!212 setRes!212))

(assert (=> b!31698 (= tp!21857 e!13905)))

(declare-fun setElem!212 () Context!30)

(declare-fun tp!21896 () Bool)

(declare-fun e!13906 () Bool)

(declare-fun setNonEmpty!212 () Bool)

(assert (=> setNonEmpty!212 (= setRes!212 (and tp!21896 (inv!513 setElem!212) e!13906))))

(declare-fun setRest!212 () (InoxSet Context!30))

(assert (=> setNonEmpty!212 (= (_2!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!212 true) setRest!212))))

(declare-fun b!31800 () Bool)

(declare-fun tp!21895 () Bool)

(assert (=> b!31800 (= e!13906 tp!21895)))

(assert (= b!31799 b!31798))

(assert (= (and b!31799 condSetEmpty!212) setIsEmpty!212))

(assert (= (and b!31799 (not condSetEmpty!212)) setNonEmpty!212))

(assert (= setNonEmpty!212 b!31800))

(assert (= (and b!31698 ((_ is Cons!205) (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))) b!31799))

(declare-fun m!8017 () Bool)

(assert (=> b!31799 m!8017))

(declare-fun m!8019 () Bool)

(assert (=> setNonEmpty!212 m!8019))

(declare-fun b!31801 () Bool)

(declare-fun e!13907 () Bool)

(declare-fun tp!21898 () Bool)

(assert (=> b!31801 (= e!13907 tp!21898)))

(declare-fun b!31802 () Bool)

(declare-fun setRes!213 () Bool)

(declare-fun e!13908 () Bool)

(declare-fun tp!21899 () Bool)

(declare-fun tp!21897 () Bool)

(assert (=> b!31802 (= e!13908 (and tp!21897 (inv!513 (_2!54 (_1!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))))) e!13907 tp_is_empty!295 setRes!213 tp!21899))))

(declare-fun condSetEmpty!213 () Bool)

(assert (=> b!31802 (= condSetEmpty!213 (= (_2!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!213 () Bool)

(assert (=> setIsEmpty!213 setRes!213))

(assert (=> b!31698 (= tp!21861 e!13908)))

(declare-fun tp!21901 () Bool)

(declare-fun setElem!213 () Context!30)

(declare-fun setNonEmpty!213 () Bool)

(declare-fun e!13909 () Bool)

(assert (=> setNonEmpty!213 (= setRes!213 (and tp!21901 (inv!513 setElem!213) e!13909))))

(declare-fun setRest!213 () (InoxSet Context!30))

(assert (=> setNonEmpty!213 (= (_2!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!213 true) setRest!213))))

(declare-fun b!31803 () Bool)

(declare-fun tp!21900 () Bool)

(assert (=> b!31803 (= e!13909 tp!21900)))

(assert (= b!31802 b!31801))

(assert (= (and b!31802 condSetEmpty!213) setIsEmpty!213))

(assert (= (and b!31802 (not condSetEmpty!213)) setNonEmpty!213))

(assert (= setNonEmpty!213 b!31803))

(assert (= (and b!31698 ((_ is Cons!205) (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))) b!31802))

(declare-fun m!8021 () Bool)

(assert (=> b!31802 m!8021))

(declare-fun m!8023 () Bool)

(assert (=> setNonEmpty!213 m!8023))

(declare-fun b!31812 () Bool)

(declare-fun tp!21908 () Bool)

(declare-fun tp!21909 () Bool)

(declare-fun e!13914 () Bool)

(assert (=> b!31812 (= e!13914 (and (inv!510 (left!346 (c!15160 input!768))) tp!21908 (inv!510 (right!676 (c!15160 input!768))) tp!21909))))

(declare-fun b!31814 () Bool)

(declare-fun e!13915 () Bool)

(declare-fun tp!21910 () Bool)

(assert (=> b!31814 (= e!13915 tp!21910)))

(declare-fun b!31813 () Bool)

(declare-fun inv!514 (IArray!53) Bool)

(assert (=> b!31813 (= e!13914 (and (inv!514 (xs!2603 (c!15160 input!768))) e!13915))))

(assert (=> b!31702 (= tp!21869 (and (inv!510 (c!15160 input!768)) e!13914))))

(assert (= (and b!31702 ((_ is Node!26) (c!15160 input!768))) b!31812))

(assert (= b!31813 b!31814))

(assert (= (and b!31702 ((_ is Leaf!157) (c!15160 input!768))) b!31813))

(declare-fun m!8025 () Bool)

(assert (=> b!31812 m!8025))

(declare-fun m!8027 () Bool)

(assert (=> b!31812 m!8027))

(declare-fun m!8029 () Bool)

(assert (=> b!31813 m!8029))

(assert (=> b!31702 m!7901))

(declare-fun b!31825 () Bool)

(declare-fun e!13918 () Bool)

(assert (=> b!31825 (= e!13918 tp_is_empty!295)))

(declare-fun b!31827 () Bool)

(declare-fun tp!21924 () Bool)

(assert (=> b!31827 (= e!13918 tp!21924)))

(declare-fun b!31826 () Bool)

(declare-fun tp!21921 () Bool)

(declare-fun tp!21923 () Bool)

(assert (=> b!31826 (= e!13918 (and tp!21921 tp!21923))))

(declare-fun b!31828 () Bool)

(declare-fun tp!21925 () Bool)

(declare-fun tp!21922 () Bool)

(assert (=> b!31828 (= e!13918 (and tp!21925 tp!21922))))

(assert (=> b!31685 (= tp!21868 e!13918)))

(assert (= (and b!31685 ((_ is ElementMatch!133) (regex!109 (h!5599 rules!1369)))) b!31825))

(assert (= (and b!31685 ((_ is Concat!232) (regex!109 (h!5599 rules!1369)))) b!31826))

(assert (= (and b!31685 ((_ is Star!133) (regex!109 (h!5599 rules!1369)))) b!31827))

(assert (= (and b!31685 ((_ is Union!133) (regex!109 (h!5599 rules!1369)))) b!31828))

(declare-fun setRes!216 () Bool)

(declare-fun setElem!216 () Context!30)

(declare-fun tp!21935 () Bool)

(declare-fun e!13926 () Bool)

(declare-fun setNonEmpty!216 () Bool)

(assert (=> setNonEmpty!216 (= setRes!216 (and tp!21935 (inv!513 setElem!216) e!13926))))

(declare-fun setRest!216 () (InoxSet Context!30))

(assert (=> setNonEmpty!216 (= (_2!57 (h!5602 mapDefault!100)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!216 true) setRest!216))))

(declare-fun b!31837 () Bool)

(declare-fun e!13927 () Bool)

(declare-fun tp!21937 () Bool)

(assert (=> b!31837 (= e!13927 tp!21937)))

(declare-fun setIsEmpty!216 () Bool)

(assert (=> setIsEmpty!216 setRes!216))

(declare-fun b!31838 () Bool)

(declare-fun tp!21936 () Bool)

(assert (=> b!31838 (= e!13926 tp!21936)))

(declare-fun e!13925 () Bool)

(declare-fun tp!21934 () Bool)

(declare-fun b!31839 () Bool)

(assert (=> b!31839 (= e!13925 (and (inv!513 (_1!56 (_1!57 (h!5602 mapDefault!100)))) e!13927 tp_is_empty!295 setRes!216 tp!21934))))

(declare-fun condSetEmpty!216 () Bool)

(assert (=> b!31839 (= condSetEmpty!216 (= (_2!57 (h!5602 mapDefault!100)) ((as const (Array Context!30 Bool)) false)))))

(assert (=> b!31686 (= tp!21856 e!13925)))

(assert (= b!31839 b!31837))

(assert (= (and b!31839 condSetEmpty!216) setIsEmpty!216))

(assert (= (and b!31839 (not condSetEmpty!216)) setNonEmpty!216))

(assert (= setNonEmpty!216 b!31838))

(assert (= (and b!31686 ((_ is Cons!206) mapDefault!100)) b!31839))

(declare-fun m!8031 () Bool)

(assert (=> setNonEmpty!216 m!8031))

(declare-fun m!8033 () Bool)

(assert (=> b!31839 m!8033))

(declare-fun setIsEmpty!221 () Bool)

(declare-fun setRes!222 () Bool)

(assert (=> setIsEmpty!221 setRes!222))

(declare-fun condMapEmpty!103 () Bool)

(declare-fun mapDefault!103 () List!207)

(assert (=> mapNonEmpty!100 (= condMapEmpty!103 (= mapRest!99 ((as const (Array (_ BitVec 32) List!207)) mapDefault!103)))))

(declare-fun e!13940 () Bool)

(declare-fun mapRes!103 () Bool)

(assert (=> mapNonEmpty!100 (= tp!21865 (and e!13940 mapRes!103))))

(declare-fun b!31854 () Bool)

(declare-fun e!13945 () Bool)

(declare-fun tp!21970 () Bool)

(assert (=> b!31854 (= e!13945 tp!21970)))

(declare-fun mapValue!103 () List!207)

(declare-fun b!31855 () Bool)

(declare-fun e!13942 () Bool)

(declare-fun e!13941 () Bool)

(declare-fun tp!21966 () Bool)

(declare-fun tp!21961 () Bool)

(assert (=> b!31855 (= e!13942 (and tp!21961 (inv!513 (_2!54 (_1!55 (h!5601 mapValue!103)))) e!13941 tp_is_empty!295 setRes!222 tp!21966))))

(declare-fun condSetEmpty!221 () Bool)

(assert (=> b!31855 (= condSetEmpty!221 (= (_2!55 (h!5601 mapValue!103)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!222 () Bool)

(declare-fun setRes!221 () Bool)

(assert (=> setIsEmpty!222 setRes!221))

(declare-fun e!13944 () Bool)

(declare-fun tp!21965 () Bool)

(declare-fun setNonEmpty!221 () Bool)

(declare-fun setElem!221 () Context!30)

(assert (=> setNonEmpty!221 (= setRes!221 (and tp!21965 (inv!513 setElem!221) e!13944))))

(declare-fun setRest!222 () (InoxSet Context!30))

(assert (=> setNonEmpty!221 (= (_2!55 (h!5601 mapDefault!103)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!221 true) setRest!222))))

(declare-fun tp!21968 () Bool)

(declare-fun b!31856 () Bool)

(declare-fun tp!21969 () Bool)

(assert (=> b!31856 (= e!13940 (and tp!21969 (inv!513 (_2!54 (_1!55 (h!5601 mapDefault!103)))) e!13945 tp_is_empty!295 setRes!221 tp!21968))))

(declare-fun condSetEmpty!222 () Bool)

(assert (=> b!31856 (= condSetEmpty!222 (= (_2!55 (h!5601 mapDefault!103)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun mapIsEmpty!103 () Bool)

(assert (=> mapIsEmpty!103 mapRes!103))

(declare-fun b!31857 () Bool)

(declare-fun tp!21962 () Bool)

(assert (=> b!31857 (= e!13941 tp!21962)))

(declare-fun mapNonEmpty!103 () Bool)

(declare-fun tp!21964 () Bool)

(assert (=> mapNonEmpty!103 (= mapRes!103 (and tp!21964 e!13942))))

(declare-fun mapRest!103 () (Array (_ BitVec 32) List!207))

(declare-fun mapKey!103 () (_ BitVec 32))

(assert (=> mapNonEmpty!103 (= mapRest!99 (store mapRest!103 mapKey!103 mapValue!103))))

(declare-fun b!31858 () Bool)

(declare-fun tp!21960 () Bool)

(assert (=> b!31858 (= e!13944 tp!21960)))

(declare-fun b!31859 () Bool)

(declare-fun e!13943 () Bool)

(declare-fun tp!21967 () Bool)

(assert (=> b!31859 (= e!13943 tp!21967)))

(declare-fun setElem!222 () Context!30)

(declare-fun setNonEmpty!222 () Bool)

(declare-fun tp!21963 () Bool)

(assert (=> setNonEmpty!222 (= setRes!222 (and tp!21963 (inv!513 setElem!222) e!13943))))

(declare-fun setRest!221 () (InoxSet Context!30))

(assert (=> setNonEmpty!222 (= (_2!55 (h!5601 mapValue!103)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!222 true) setRest!221))))

(assert (= (and mapNonEmpty!100 condMapEmpty!103) mapIsEmpty!103))

(assert (= (and mapNonEmpty!100 (not condMapEmpty!103)) mapNonEmpty!103))

(assert (= b!31855 b!31857))

(assert (= (and b!31855 condSetEmpty!221) setIsEmpty!221))

(assert (= (and b!31855 (not condSetEmpty!221)) setNonEmpty!222))

(assert (= setNonEmpty!222 b!31859))

(assert (= (and mapNonEmpty!103 ((_ is Cons!205) mapValue!103)) b!31855))

(assert (= b!31856 b!31854))

(assert (= (and b!31856 condSetEmpty!222) setIsEmpty!222))

(assert (= (and b!31856 (not condSetEmpty!222)) setNonEmpty!221))

(assert (= setNonEmpty!221 b!31858))

(assert (= (and mapNonEmpty!100 ((_ is Cons!205) mapDefault!103)) b!31856))

(declare-fun m!8035 () Bool)

(assert (=> setNonEmpty!222 m!8035))

(declare-fun m!8037 () Bool)

(assert (=> setNonEmpty!221 m!8037))

(declare-fun m!8039 () Bool)

(assert (=> b!31855 m!8039))

(declare-fun m!8041 () Bool)

(assert (=> b!31856 m!8041))

(declare-fun m!8043 () Bool)

(assert (=> mapNonEmpty!103 m!8043))

(declare-fun b!31860 () Bool)

(declare-fun e!13946 () Bool)

(declare-fun tp!21972 () Bool)

(assert (=> b!31860 (= e!13946 tp!21972)))

(declare-fun setRes!223 () Bool)

(declare-fun tp!21971 () Bool)

(declare-fun b!31861 () Bool)

(declare-fun tp!21973 () Bool)

(declare-fun e!13947 () Bool)

(assert (=> b!31861 (= e!13947 (and tp!21971 (inv!513 (_2!54 (_1!55 (h!5601 mapValue!99)))) e!13946 tp_is_empty!295 setRes!223 tp!21973))))

(declare-fun condSetEmpty!223 () Bool)

(assert (=> b!31861 (= condSetEmpty!223 (= (_2!55 (h!5601 mapValue!99)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!223 () Bool)

(assert (=> setIsEmpty!223 setRes!223))

(assert (=> mapNonEmpty!100 (= tp!21867 e!13947)))

(declare-fun setElem!223 () Context!30)

(declare-fun setNonEmpty!223 () Bool)

(declare-fun tp!21975 () Bool)

(declare-fun e!13948 () Bool)

(assert (=> setNonEmpty!223 (= setRes!223 (and tp!21975 (inv!513 setElem!223) e!13948))))

(declare-fun setRest!223 () (InoxSet Context!30))

(assert (=> setNonEmpty!223 (= (_2!55 (h!5601 mapValue!99)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!223 true) setRest!223))))

(declare-fun b!31862 () Bool)

(declare-fun tp!21974 () Bool)

(assert (=> b!31862 (= e!13948 tp!21974)))

(assert (= b!31861 b!31860))

(assert (= (and b!31861 condSetEmpty!223) setIsEmpty!223))

(assert (= (and b!31861 (not condSetEmpty!223)) setNonEmpty!223))

(assert (= setNonEmpty!223 b!31862))

(assert (= (and mapNonEmpty!100 ((_ is Cons!205) mapValue!99)) b!31861))

(declare-fun m!8045 () Bool)

(assert (=> b!31861 m!8045))

(declare-fun m!8047 () Bool)

(assert (=> setNonEmpty!223 m!8047))

(declare-fun setRes!224 () Bool)

(declare-fun tp!21977 () Bool)

(declare-fun setElem!224 () Context!30)

(declare-fun setNonEmpty!224 () Bool)

(declare-fun e!13950 () Bool)

(assert (=> setNonEmpty!224 (= setRes!224 (and tp!21977 (inv!513 setElem!224) e!13950))))

(declare-fun setRest!224 () (InoxSet Context!30))

(assert (=> setNonEmpty!224 (= (_2!57 (h!5602 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!224 true) setRest!224))))

(declare-fun b!31863 () Bool)

(declare-fun e!13951 () Bool)

(declare-fun tp!21979 () Bool)

(assert (=> b!31863 (= e!13951 tp!21979)))

(declare-fun setIsEmpty!224 () Bool)

(assert (=> setIsEmpty!224 setRes!224))

(declare-fun b!31864 () Bool)

(declare-fun tp!21978 () Bool)

(assert (=> b!31864 (= e!13950 tp!21978)))

(declare-fun b!31865 () Bool)

(declare-fun e!13949 () Bool)

(declare-fun tp!21976 () Bool)

(assert (=> b!31865 (= e!13949 (and (inv!513 (_1!56 (_1!57 (h!5602 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))))) e!13951 tp_is_empty!295 setRes!224 tp!21976))))

(declare-fun condSetEmpty!224 () Bool)

(assert (=> b!31865 (= condSetEmpty!224 (= (_2!57 (h!5602 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))) ((as const (Array Context!30 Bool)) false)))))

(assert (=> b!31689 (= tp!21858 e!13949)))

(assert (= b!31865 b!31863))

(assert (= (and b!31865 condSetEmpty!224) setIsEmpty!224))

(assert (= (and b!31865 (not condSetEmpty!224)) setNonEmpty!224))

(assert (= setNonEmpty!224 b!31864))

(assert (= (and b!31689 ((_ is Cons!206) (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))) b!31865))

(declare-fun m!8049 () Bool)

(assert (=> setNonEmpty!224 m!8049))

(declare-fun m!8051 () Bool)

(assert (=> b!31865 m!8051))

(declare-fun setElem!225 () Context!30)

(declare-fun setRes!225 () Bool)

(declare-fun e!13953 () Bool)

(declare-fun tp!21981 () Bool)

(declare-fun setNonEmpty!225 () Bool)

(assert (=> setNonEmpty!225 (= setRes!225 (and tp!21981 (inv!513 setElem!225) e!13953))))

(declare-fun setRest!225 () (InoxSet Context!30))

(assert (=> setNonEmpty!225 (= (_2!57 (h!5602 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!225 true) setRest!225))))

(declare-fun b!31866 () Bool)

(declare-fun e!13954 () Bool)

(declare-fun tp!21983 () Bool)

(assert (=> b!31866 (= e!13954 tp!21983)))

(declare-fun setIsEmpty!225 () Bool)

(assert (=> setIsEmpty!225 setRes!225))

(declare-fun b!31867 () Bool)

(declare-fun tp!21982 () Bool)

(assert (=> b!31867 (= e!13953 tp!21982)))

(declare-fun b!31868 () Bool)

(declare-fun e!13952 () Bool)

(declare-fun tp!21980 () Bool)

(assert (=> b!31868 (= e!13952 (and (inv!513 (_1!56 (_1!57 (h!5602 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))))) e!13954 tp_is_empty!295 setRes!225 tp!21980))))

(declare-fun condSetEmpty!225 () Bool)

(assert (=> b!31868 (= condSetEmpty!225 (= (_2!57 (h!5602 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))) ((as const (Array Context!30 Bool)) false)))))

(assert (=> b!31689 (= tp!21855 e!13952)))

(assert (= b!31868 b!31866))

(assert (= (and b!31868 condSetEmpty!225) setIsEmpty!225))

(assert (= (and b!31868 (not condSetEmpty!225)) setNonEmpty!225))

(assert (= setNonEmpty!225 b!31867))

(assert (= (and b!31689 ((_ is Cons!206) (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))) b!31868))

(declare-fun m!8053 () Bool)

(assert (=> setNonEmpty!225 m!8053))

(declare-fun m!8055 () Bool)

(assert (=> b!31868 m!8055))

(declare-fun b!31869 () Bool)

(declare-fun e!13955 () Bool)

(declare-fun tp!21985 () Bool)

(assert (=> b!31869 (= e!13955 tp!21985)))

(declare-fun setRes!226 () Bool)

(declare-fun b!31870 () Bool)

(declare-fun e!13956 () Bool)

(declare-fun tp!21986 () Bool)

(declare-fun tp!21984 () Bool)

(assert (=> b!31870 (= e!13956 (and tp!21984 (inv!513 (_2!54 (_1!55 (h!5601 mapDefault!99)))) e!13955 tp_is_empty!295 setRes!226 tp!21986))))

(declare-fun condSetEmpty!226 () Bool)

(assert (=> b!31870 (= condSetEmpty!226 (= (_2!55 (h!5601 mapDefault!99)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!226 () Bool)

(assert (=> setIsEmpty!226 setRes!226))

(assert (=> b!31681 (= tp!21860 e!13956)))

(declare-fun setNonEmpty!226 () Bool)

(declare-fun e!13957 () Bool)

(declare-fun tp!21988 () Bool)

(declare-fun setElem!226 () Context!30)

(assert (=> setNonEmpty!226 (= setRes!226 (and tp!21988 (inv!513 setElem!226) e!13957))))

(declare-fun setRest!226 () (InoxSet Context!30))

(assert (=> setNonEmpty!226 (= (_2!55 (h!5601 mapDefault!99)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!226 true) setRest!226))))

(declare-fun b!31871 () Bool)

(declare-fun tp!21987 () Bool)

(assert (=> b!31871 (= e!13957 tp!21987)))

(assert (= b!31870 b!31869))

(assert (= (and b!31870 condSetEmpty!226) setIsEmpty!226))

(assert (= (and b!31870 (not condSetEmpty!226)) setNonEmpty!226))

(assert (= setNonEmpty!226 b!31871))

(assert (= (and b!31681 ((_ is Cons!205) mapDefault!99)) b!31870))

(declare-fun m!8057 () Bool)

(assert (=> b!31870 m!8057))

(declare-fun m!8059 () Bool)

(assert (=> setNonEmpty!226 m!8059))

(declare-fun b!31886 () Bool)

(declare-fun e!13971 () Bool)

(declare-fun tp!22010 () Bool)

(assert (=> b!31886 (= e!13971 tp!22010)))

(declare-fun mapNonEmpty!106 () Bool)

(declare-fun mapRes!106 () Bool)

(declare-fun tp!22014 () Bool)

(declare-fun e!13975 () Bool)

(assert (=> mapNonEmpty!106 (= mapRes!106 (and tp!22014 e!13975))))

(declare-fun mapRest!106 () (Array (_ BitVec 32) List!208))

(declare-fun mapKey!106 () (_ BitVec 32))

(declare-fun mapValue!106 () List!208)

(assert (=> mapNonEmpty!106 (= mapRest!100 (store mapRest!106 mapKey!106 mapValue!106))))

(declare-fun b!31887 () Bool)

(declare-fun e!13972 () Bool)

(declare-fun tp!22009 () Bool)

(assert (=> b!31887 (= e!13972 tp!22009)))

(declare-fun b!31888 () Bool)

(declare-fun tp!22012 () Bool)

(declare-fun e!13970 () Bool)

(declare-fun e!13974 () Bool)

(declare-fun setRes!231 () Bool)

(declare-fun mapDefault!106 () List!208)

(assert (=> b!31888 (= e!13970 (and (inv!513 (_1!56 (_1!57 (h!5602 mapDefault!106)))) e!13974 tp_is_empty!295 setRes!231 tp!22012))))

(declare-fun condSetEmpty!231 () Bool)

(assert (=> b!31888 (= condSetEmpty!231 (= (_2!57 (h!5602 mapDefault!106)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun b!31889 () Bool)

(declare-fun tp!22008 () Bool)

(assert (=> b!31889 (= e!13974 tp!22008)))

(declare-fun b!31890 () Bool)

(declare-fun e!13973 () Bool)

(declare-fun tp!22011 () Bool)

(assert (=> b!31890 (= e!13973 tp!22011)))

(declare-fun setIsEmpty!231 () Bool)

(assert (=> setIsEmpty!231 setRes!231))

(declare-fun setRes!232 () Bool)

(declare-fun tp!22013 () Bool)

(declare-fun b!31891 () Bool)

(assert (=> b!31891 (= e!13975 (and (inv!513 (_1!56 (_1!57 (h!5602 mapValue!106)))) e!13973 tp_is_empty!295 setRes!232 tp!22013))))

(declare-fun condSetEmpty!232 () Bool)

(assert (=> b!31891 (= condSetEmpty!232 (= (_2!57 (h!5602 mapValue!106)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!232 () Bool)

(assert (=> setIsEmpty!232 setRes!232))

(declare-fun condMapEmpty!106 () Bool)

(assert (=> mapNonEmpty!99 (= condMapEmpty!106 (= mapRest!100 ((as const (Array (_ BitVec 32) List!208)) mapDefault!106)))))

(assert (=> mapNonEmpty!99 (= tp!21864 (and e!13970 mapRes!106))))

(declare-fun mapIsEmpty!106 () Bool)

(assert (=> mapIsEmpty!106 mapRes!106))

(declare-fun tp!22007 () Bool)

(declare-fun setNonEmpty!231 () Bool)

(declare-fun setElem!232 () Context!30)

(assert (=> setNonEmpty!231 (= setRes!232 (and tp!22007 (inv!513 setElem!232) e!13971))))

(declare-fun setRest!232 () (InoxSet Context!30))

(assert (=> setNonEmpty!231 (= (_2!57 (h!5602 mapValue!106)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!232 true) setRest!232))))

(declare-fun setElem!231 () Context!30)

(declare-fun tp!22015 () Bool)

(declare-fun setNonEmpty!232 () Bool)

(assert (=> setNonEmpty!232 (= setRes!231 (and tp!22015 (inv!513 setElem!231) e!13972))))

(declare-fun setRest!231 () (InoxSet Context!30))

(assert (=> setNonEmpty!232 (= (_2!57 (h!5602 mapDefault!106)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!231 true) setRest!231))))

(assert (= (and mapNonEmpty!99 condMapEmpty!106) mapIsEmpty!106))

(assert (= (and mapNonEmpty!99 (not condMapEmpty!106)) mapNonEmpty!106))

(assert (= b!31891 b!31890))

(assert (= (and b!31891 condSetEmpty!232) setIsEmpty!232))

(assert (= (and b!31891 (not condSetEmpty!232)) setNonEmpty!231))

(assert (= setNonEmpty!231 b!31886))

(assert (= (and mapNonEmpty!106 ((_ is Cons!206) mapValue!106)) b!31891))

(assert (= b!31888 b!31889))

(assert (= (and b!31888 condSetEmpty!231) setIsEmpty!231))

(assert (= (and b!31888 (not condSetEmpty!231)) setNonEmpty!232))

(assert (= setNonEmpty!232 b!31887))

(assert (= (and mapNonEmpty!99 ((_ is Cons!206) mapDefault!106)) b!31888))

(declare-fun m!8061 () Bool)

(assert (=> b!31888 m!8061))

(declare-fun m!8063 () Bool)

(assert (=> setNonEmpty!232 m!8063))

(declare-fun m!8065 () Bool)

(assert (=> setNonEmpty!231 m!8065))

(declare-fun m!8067 () Bool)

(assert (=> mapNonEmpty!106 m!8067))

(declare-fun m!8069 () Bool)

(assert (=> b!31891 m!8069))

(declare-fun setElem!233 () Context!30)

(declare-fun tp!22017 () Bool)

(declare-fun setNonEmpty!233 () Bool)

(declare-fun setRes!233 () Bool)

(declare-fun e!13977 () Bool)

(assert (=> setNonEmpty!233 (= setRes!233 (and tp!22017 (inv!513 setElem!233) e!13977))))

(declare-fun setRest!233 () (InoxSet Context!30))

(assert (=> setNonEmpty!233 (= (_2!57 (h!5602 mapValue!100)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!233 true) setRest!233))))

(declare-fun b!31892 () Bool)

(declare-fun e!13978 () Bool)

(declare-fun tp!22019 () Bool)

(assert (=> b!31892 (= e!13978 tp!22019)))

(declare-fun setIsEmpty!233 () Bool)

(assert (=> setIsEmpty!233 setRes!233))

(declare-fun b!31893 () Bool)

(declare-fun tp!22018 () Bool)

(assert (=> b!31893 (= e!13977 tp!22018)))

(declare-fun e!13976 () Bool)

(declare-fun tp!22016 () Bool)

(declare-fun b!31894 () Bool)

(assert (=> b!31894 (= e!13976 (and (inv!513 (_1!56 (_1!57 (h!5602 mapValue!100)))) e!13978 tp_is_empty!295 setRes!233 tp!22016))))

(declare-fun condSetEmpty!233 () Bool)

(assert (=> b!31894 (= condSetEmpty!233 (= (_2!57 (h!5602 mapValue!100)) ((as const (Array Context!30 Bool)) false)))))

(assert (=> mapNonEmpty!99 (= tp!21859 e!13976)))

(assert (= b!31894 b!31892))

(assert (= (and b!31894 condSetEmpty!233) setIsEmpty!233))

(assert (= (and b!31894 (not condSetEmpty!233)) setNonEmpty!233))

(assert (= setNonEmpty!233 b!31893))

(assert (= (and mapNonEmpty!99 ((_ is Cons!206) mapValue!100)) b!31894))

(declare-fun m!8071 () Bool)

(assert (=> setNonEmpty!233 m!8071))

(declare-fun m!8073 () Bool)

(assert (=> b!31894 m!8073))

(check-sat (not b!31859) (not b!31892) (not b!31757) (not d!3051) (not b!31890) (not b!31871) (not b!31763) (not b!31893) (not b!31869) (not b!31755) b_and!167 (not b!31861) (not b!31787) (not d!3053) (not b!31813) (not b!31854) (not b!31778) (not b!31839) (not mapNonEmpty!106) (not b!31863) (not b!31857) (not b!31868) b_and!157 (not b!31750) (not b!31870) tp_is_empty!295 (not b!31867) (not b!31827) (not d!3067) (not b!31748) (not b_next!165) (not b!31865) (not b_next!155) (not d!3055) (not b_next!153) (not b!31798) (not b!31753) (not b!31758) (not d!3045) (not setNonEmpty!216) (not b!31894) (not setNonEmpty!223) (not b_next!163) (not b!31855) (not d!3073) (not b!31773) (not b!31889) (not setNonEmpty!233) (not b!31862) (not b!31760) (not d!3033) (not b!31800) (not b!31732) (not b!31826) (not b!31803) (not b!31774) (not b!31756) (not setNonEmpty!222) (not b!31858) b_and!155 (not b!31801) b_and!153 (not b!31860) (not b_next!157) (not setNonEmpty!213) (not b!31729) b_and!159 (not setNonEmpty!225) (not d!3071) (not b_next!159) b_and!163 (not b!31891) (not b!31812) (not b!31754) (not d!3069) (not b!31717) (not b!31749) (not b!31887) (not b!31888) (not setNonEmpty!231) (not b!31856) (not setNonEmpty!221) (not b!31751) (not setNonEmpty!232) (not b!31730) (not d!3059) (not b_next!161) (not b!31866) (not b!31814) (not b!31731) (not b!31747) (not mapNonEmpty!103) (not b!31720) (not b_next!167) (not d!3039) (not d!3075) (not b!31802) (not d!3057) (not b!31702) (not b!31712) (not setNonEmpty!226) (not b!31864) (not b!31799) (not d!3027) (not d!3047) b_and!161 (not setNonEmpty!224) (not b!31788) b_and!165 (not b!31837) (not b!31714) (not b!31828) (not setNonEmpty!212) (not d!3049) (not b!31886) (not b!31838))
(check-sat b_and!167 b_and!157 (not b_next!153) (not b_next!163) (not b_next!161) (not b_next!167) b_and!161 b_and!165 (not b_next!165) (not b_next!155) b_and!155 b_and!153 (not b_next!157) b_and!159 (not b_next!159) b_and!163)
(get-model)

(declare-fun d!3077 () Bool)

(declare-fun lambda!438 () Int)

(declare-fun forall!30 (List!206 Int) Bool)

(assert (=> d!3077 (= (inv!513 setElem!221) (forall!30 (exprs!515 setElem!221) lambda!438))))

(declare-fun bs!3849 () Bool)

(assert (= bs!3849 d!3077))

(declare-fun m!8075 () Bool)

(assert (=> bs!3849 m!8075))

(assert (=> setNonEmpty!221 d!3077))

(declare-fun d!3079 () Bool)

(declare-fun res!26793 () Bool)

(declare-fun e!13981 () Bool)

(assert (=> d!3079 (=> (not res!26793) (not e!13981))))

(declare-fun valid!39 (MutableMap!24) Bool)

(assert (=> d!3079 (= res!26793 (valid!39 (cache!503 cacheUp!472)))))

(assert (=> d!3079 (= (validCacheMapUp!4 (cache!503 cacheUp!472)) e!13981)))

(declare-fun b!31899 () Bool)

(declare-fun res!26794 () Bool)

(assert (=> b!31899 (=> (not res!26794) (not e!13981))))

(declare-fun invariantList!8 (List!208) Bool)

(declare-datatypes ((ListMap!17 0))(
  ( (ListMap!18 (toList!149 List!208)) )
))
(declare-fun map!164 (MutableMap!24) ListMap!17)

(assert (=> b!31899 (= res!26794 (invariantList!8 (toList!149 (map!164 (cache!503 cacheUp!472)))))))

(declare-fun b!31900 () Bool)

(declare-fun lambda!441 () Int)

(declare-fun forall!31 (List!208 Int) Bool)

(assert (=> b!31900 (= e!13981 (forall!31 (toList!149 (map!164 (cache!503 cacheUp!472))) lambda!441))))

(assert (= (and d!3079 res!26793) b!31899))

(assert (= (and b!31899 res!26794) b!31900))

(declare-fun m!8078 () Bool)

(assert (=> d!3079 m!8078))

(declare-fun m!8080 () Bool)

(assert (=> b!31899 m!8080))

(declare-fun m!8082 () Bool)

(assert (=> b!31899 m!8082))

(assert (=> b!31900 m!8080))

(declare-fun m!8084 () Bool)

(assert (=> b!31900 m!8084))

(assert (=> d!3059 d!3079))

(declare-fun b!31910 () Bool)

(declare-fun e!13986 () List!202)

(declare-fun e!13987 () List!202)

(assert (=> b!31910 (= e!13986 e!13987)))

(declare-fun c!15185 () Bool)

(assert (=> b!31910 (= c!15185 ((_ is Leaf!157) (c!15160 input!768)))))

(declare-fun b!31909 () Bool)

(assert (=> b!31909 (= e!13986 Nil!200)))

(declare-fun b!31912 () Bool)

(assert (=> b!31912 (= e!13987 (++!45 (list!99 (left!346 (c!15160 input!768))) (list!99 (right!676 (c!15160 input!768)))))))

(declare-fun d!3081 () Bool)

(declare-fun c!15184 () Bool)

(assert (=> d!3081 (= c!15184 ((_ is Empty!26) (c!15160 input!768)))))

(assert (=> d!3081 (= (list!99 (c!15160 input!768)) e!13986)))

(declare-fun b!31911 () Bool)

(declare-fun list!101 (IArray!53) List!202)

(assert (=> b!31911 (= e!13987 (list!101 (xs!2603 (c!15160 input!768))))))

(assert (= (and d!3081 c!15184) b!31909))

(assert (= (and d!3081 (not c!15184)) b!31910))

(assert (= (and b!31910 c!15185) b!31911))

(assert (= (and b!31910 (not c!15185)) b!31912))

(declare-fun m!8086 () Bool)

(assert (=> b!31912 m!8086))

(declare-fun m!8088 () Bool)

(assert (=> b!31912 m!8088))

(assert (=> b!31912 m!8086))

(assert (=> b!31912 m!8088))

(declare-fun m!8090 () Bool)

(assert (=> b!31912 m!8090))

(declare-fun m!8092 () Bool)

(assert (=> b!31911 m!8092))

(assert (=> d!3071 d!3081))

(declare-fun b!31924 () Bool)

(declare-fun e!13993 () List!204)

(assert (=> b!31924 (= e!13993 (++!47 (list!100 (left!347 (c!15161 (_1!53 lt!1660)))) (list!100 (right!677 (c!15161 (_1!53 lt!1660))))))))

(declare-fun b!31922 () Bool)

(declare-fun e!13992 () List!204)

(assert (=> b!31922 (= e!13992 e!13993)))

(declare-fun c!15191 () Bool)

(assert (=> b!31922 (= c!15191 ((_ is Leaf!158) (c!15161 (_1!53 lt!1660))))))

(declare-fun b!31923 () Bool)

(declare-fun list!102 (IArray!55) List!204)

(assert (=> b!31923 (= e!13993 (list!102 (xs!2604 (c!15161 (_1!53 lt!1660)))))))

(declare-fun d!3083 () Bool)

(declare-fun c!15190 () Bool)

(assert (=> d!3083 (= c!15190 ((_ is Empty!27) (c!15161 (_1!53 lt!1660))))))

(assert (=> d!3083 (= (list!100 (c!15161 (_1!53 lt!1660))) e!13992)))

(declare-fun b!31921 () Bool)

(assert (=> b!31921 (= e!13992 Nil!202)))

(assert (= (and d!3083 c!15190) b!31921))

(assert (= (and d!3083 (not c!15190)) b!31922))

(assert (= (and b!31922 c!15191) b!31923))

(assert (= (and b!31922 (not c!15191)) b!31924))

(declare-fun m!8094 () Bool)

(assert (=> b!31924 m!8094))

(declare-fun m!8096 () Bool)

(assert (=> b!31924 m!8096))

(assert (=> b!31924 m!8094))

(assert (=> b!31924 m!8096))

(declare-fun m!8098 () Bool)

(assert (=> b!31924 m!8098))

(declare-fun m!8100 () Bool)

(assert (=> b!31923 m!8100))

(assert (=> d!3045 d!3083))

(declare-fun d!3085 () Bool)

(declare-fun res!26801 () Bool)

(declare-fun e!13998 () Bool)

(assert (=> d!3085 (=> (not res!26801) (not e!13998))))

(declare-fun valid!40 (MutableMap!23) Bool)

(assert (=> d!3085 (= res!26801 (valid!40 (cache!502 cacheDown!485)))))

(assert (=> d!3085 (= (validCacheMapDown!4 (cache!502 cacheDown!485)) e!13998)))

(declare-fun b!31931 () Bool)

(declare-fun res!26802 () Bool)

(assert (=> b!31931 (=> (not res!26802) (not e!13998))))

(declare-fun invariantList!9 (List!207) Bool)

(declare-datatypes ((ListMap!19 0))(
  ( (ListMap!20 (toList!150 List!207)) )
))
(declare-fun map!165 (MutableMap!23) ListMap!19)

(assert (=> b!31931 (= res!26802 (invariantList!9 (toList!150 (map!165 (cache!502 cacheDown!485)))))))

(declare-fun b!31932 () Bool)

(declare-fun lambda!444 () Int)

(declare-fun forall!32 (List!207 Int) Bool)

(assert (=> b!31932 (= e!13998 (forall!32 (toList!150 (map!165 (cache!502 cacheDown!485))) lambda!444))))

(assert (= (and d!3085 res!26801) b!31931))

(assert (= (and b!31931 res!26802) b!31932))

(declare-fun m!8103 () Bool)

(assert (=> d!3085 m!8103))

(declare-fun m!8105 () Bool)

(assert (=> b!31931 m!8105))

(declare-fun m!8107 () Bool)

(assert (=> b!31931 m!8107))

(assert (=> b!31932 m!8105))

(declare-fun m!8109 () Bool)

(assert (=> b!31932 m!8109))

(assert (=> b!31720 d!3085))

(declare-fun bs!3850 () Bool)

(declare-fun d!3087 () Bool)

(assert (= bs!3850 (and d!3087 d!3077)))

(declare-fun lambda!445 () Int)

(assert (=> bs!3850 (= lambda!445 lambda!438)))

(assert (=> d!3087 (= (inv!513 (_1!56 (_1!57 (h!5602 mapValue!100)))) (forall!30 (exprs!515 (_1!56 (_1!57 (h!5602 mapValue!100)))) lambda!445))))

(declare-fun bs!3851 () Bool)

(assert (= bs!3851 d!3087))

(declare-fun m!8111 () Bool)

(assert (=> bs!3851 m!8111))

(assert (=> b!31894 d!3087))

(declare-fun bs!3852 () Bool)

(declare-fun d!3089 () Bool)

(assert (= bs!3852 (and d!3089 d!3077)))

(declare-fun lambda!446 () Int)

(assert (=> bs!3852 (= lambda!446 lambda!438)))

(declare-fun bs!3853 () Bool)

(assert (= bs!3853 (and d!3089 d!3087)))

(assert (=> bs!3853 (= lambda!446 lambda!445)))

(assert (=> d!3089 (= (inv!513 (_2!54 (_1!55 (h!5601 mapValue!103)))) (forall!30 (exprs!515 (_2!54 (_1!55 (h!5601 mapValue!103)))) lambda!446))))

(declare-fun bs!3854 () Bool)

(assert (= bs!3854 d!3089))

(declare-fun m!8113 () Bool)

(assert (=> bs!3854 m!8113))

(assert (=> b!31855 d!3089))

(declare-fun bs!3855 () Bool)

(declare-fun d!3091 () Bool)

(assert (= bs!3855 (and d!3091 d!3077)))

(declare-fun lambda!447 () Int)

(assert (=> bs!3855 (= lambda!447 lambda!438)))

(declare-fun bs!3856 () Bool)

(assert (= bs!3856 (and d!3091 d!3087)))

(assert (=> bs!3856 (= lambda!447 lambda!445)))

(declare-fun bs!3857 () Bool)

(assert (= bs!3857 (and d!3091 d!3089)))

(assert (=> bs!3857 (= lambda!447 lambda!446)))

(assert (=> d!3091 (= (inv!513 (_1!56 (_1!57 (h!5602 mapDefault!100)))) (forall!30 (exprs!515 (_1!56 (_1!57 (h!5602 mapDefault!100)))) lambda!447))))

(declare-fun bs!3858 () Bool)

(assert (= bs!3858 d!3091))

(declare-fun m!8115 () Bool)

(assert (=> bs!3858 m!8115))

(assert (=> b!31839 d!3091))

(declare-fun d!3093 () Bool)

(declare-fun lt!1682 () Bool)

(declare-fun isEmpty!64 (List!204) Bool)

(assert (=> d!3093 (= lt!1682 (isEmpty!64 (list!97 (_1!53 lt!1676))))))

(declare-fun isEmpty!65 (Conc!27) Bool)

(assert (=> d!3093 (= lt!1682 (isEmpty!65 (c!15161 (_1!53 lt!1676))))))

(assert (=> d!3093 (= (isEmpty!63 (_1!53 lt!1676)) lt!1682)))

(declare-fun bs!3859 () Bool)

(assert (= bs!3859 d!3093))

(assert (=> bs!3859 m!7967))

(assert (=> bs!3859 m!7967))

(declare-fun m!8117 () Bool)

(assert (=> bs!3859 m!8117))

(declare-fun m!8119 () Bool)

(assert (=> bs!3859 m!8119))

(assert (=> b!31757 d!3093))

(declare-fun d!3095 () Bool)

(declare-fun lt!1683 () Bool)

(assert (=> d!3095 (= lt!1683 (isEmpty!64 (list!97 (_1!53 lt!1673))))))

(assert (=> d!3095 (= lt!1683 (isEmpty!65 (c!15161 (_1!53 lt!1673))))))

(assert (=> d!3095 (= (isEmpty!63 (_1!53 lt!1673)) lt!1683)))

(declare-fun bs!3860 () Bool)

(assert (= bs!3860 d!3095))

(assert (=> bs!3860 m!7943))

(assert (=> bs!3860 m!7943))

(declare-fun m!8121 () Bool)

(assert (=> bs!3860 m!8121))

(declare-fun m!8123 () Bool)

(assert (=> bs!3860 m!8123))

(assert (=> b!31750 d!3095))

(declare-fun d!3097 () Bool)

(declare-fun lt!1686 () Int)

(assert (=> d!3097 (>= lt!1686 0)))

(declare-fun e!14001 () Int)

(assert (=> d!3097 (= lt!1686 e!14001)))

(declare-fun c!15194 () Bool)

(assert (=> d!3097 (= c!15194 ((_ is Nil!200) lt!1679))))

(assert (=> d!3097 (= (size!289 lt!1679) lt!1686)))

(declare-fun b!31937 () Bool)

(assert (=> b!31937 (= e!14001 0)))

(declare-fun b!31938 () Bool)

(assert (=> b!31938 (= e!14001 (+ 1 (size!289 (t!14787 lt!1679))))))

(assert (= (and d!3097 c!15194) b!31937))

(assert (= (and d!3097 (not c!15194)) b!31938))

(declare-fun m!8125 () Bool)

(assert (=> b!31938 m!8125))

(assert (=> b!31774 d!3097))

(declare-fun d!3099 () Bool)

(declare-fun lt!1687 () Int)

(assert (=> d!3099 (>= lt!1687 0)))

(declare-fun e!14002 () Int)

(assert (=> d!3099 (= lt!1687 e!14002)))

(declare-fun c!15195 () Bool)

(assert (=> d!3099 (= c!15195 ((_ is Nil!200) lt!1657))))

(assert (=> d!3099 (= (size!289 lt!1657) lt!1687)))

(declare-fun b!31939 () Bool)

(assert (=> b!31939 (= e!14002 0)))

(declare-fun b!31940 () Bool)

(assert (=> b!31940 (= e!14002 (+ 1 (size!289 (t!14787 lt!1657))))))

(assert (= (and d!3099 c!15195) b!31939))

(assert (= (and d!3099 (not c!15195)) b!31940))

(declare-fun m!8127 () Bool)

(assert (=> b!31940 m!8127))

(assert (=> b!31774 d!3099))

(declare-fun d!3101 () Bool)

(declare-fun lt!1688 () Int)

(assert (=> d!3101 (>= lt!1688 0)))

(declare-fun e!14003 () Int)

(assert (=> d!3101 (= lt!1688 e!14003)))

(declare-fun c!15196 () Bool)

(assert (=> d!3101 (= c!15196 ((_ is Nil!200) lt!1658))))

(assert (=> d!3101 (= (size!289 lt!1658) lt!1688)))

(declare-fun b!31941 () Bool)

(assert (=> b!31941 (= e!14003 0)))

(declare-fun b!31942 () Bool)

(assert (=> b!31942 (= e!14003 (+ 1 (size!289 (t!14787 lt!1658))))))

(assert (= (and d!3101 c!15196) b!31941))

(assert (= (and d!3101 (not c!15196)) b!31942))

(declare-fun m!8129 () Bool)

(assert (=> b!31942 m!8129))

(assert (=> b!31774 d!3101))

(declare-fun d!3103 () Bool)

(assert (=> d!3103 (= (inv!514 (xs!2603 (c!15160 input!768))) (<= (size!289 (innerList!84 (xs!2603 (c!15160 input!768)))) 2147483647))))

(declare-fun bs!3861 () Bool)

(assert (= bs!3861 d!3103))

(declare-fun m!8131 () Bool)

(assert (=> bs!3861 m!8131))

(assert (=> b!31813 d!3103))

(declare-fun b!31955 () Bool)

(declare-fun res!26818 () Bool)

(declare-fun e!14009 () Bool)

(assert (=> b!31955 (=> (not res!26818) (not e!14009))))

(assert (=> b!31955 (= res!26818 (isBalanced!11 (right!676 (c!15160 input!768))))))

(declare-fun b!31956 () Bool)

(declare-fun isEmpty!66 (Conc!26) Bool)

(assert (=> b!31956 (= e!14009 (not (isEmpty!66 (right!676 (c!15160 input!768)))))))

(declare-fun b!31957 () Bool)

(declare-fun res!26820 () Bool)

(assert (=> b!31957 (=> (not res!26820) (not e!14009))))

(assert (=> b!31957 (= res!26820 (not (isEmpty!66 (left!346 (c!15160 input!768)))))))

(declare-fun d!3105 () Bool)

(declare-fun res!26817 () Bool)

(declare-fun e!14008 () Bool)

(assert (=> d!3105 (=> res!26817 e!14008)))

(assert (=> d!3105 (= res!26817 (not ((_ is Node!26) (c!15160 input!768))))))

(assert (=> d!3105 (= (isBalanced!11 (c!15160 input!768)) e!14008)))

(declare-fun b!31958 () Bool)

(declare-fun res!26816 () Bool)

(assert (=> b!31958 (=> (not res!26816) (not e!14009))))

(assert (=> b!31958 (= res!26816 (isBalanced!11 (left!346 (c!15160 input!768))))))

(declare-fun b!31959 () Bool)

(assert (=> b!31959 (= e!14008 e!14009)))

(declare-fun res!26819 () Bool)

(assert (=> b!31959 (=> (not res!26819) (not e!14009))))

(declare-fun height!7 (Conc!26) Int)

(assert (=> b!31959 (= res!26819 (<= (- 1) (- (height!7 (left!346 (c!15160 input!768))) (height!7 (right!676 (c!15160 input!768))))))))

(declare-fun b!31960 () Bool)

(declare-fun res!26815 () Bool)

(assert (=> b!31960 (=> (not res!26815) (not e!14009))))

(assert (=> b!31960 (= res!26815 (<= (- (height!7 (left!346 (c!15160 input!768))) (height!7 (right!676 (c!15160 input!768)))) 1))))

(assert (= (and d!3105 (not res!26817)) b!31959))

(assert (= (and b!31959 res!26819) b!31960))

(assert (= (and b!31960 res!26815) b!31958))

(assert (= (and b!31958 res!26816) b!31955))

(assert (= (and b!31955 res!26818) b!31957))

(assert (= (and b!31957 res!26820) b!31956))

(declare-fun m!8133 () Bool)

(assert (=> b!31956 m!8133))

(declare-fun m!8135 () Bool)

(assert (=> b!31959 m!8135))

(declare-fun m!8137 () Bool)

(assert (=> b!31959 m!8137))

(assert (=> b!31960 m!8135))

(assert (=> b!31960 m!8137))

(declare-fun m!8139 () Bool)

(assert (=> b!31955 m!8139))

(declare-fun m!8141 () Bool)

(assert (=> b!31957 m!8141))

(declare-fun m!8143 () Bool)

(assert (=> b!31958 m!8143))

(assert (=> d!3039 d!3105))

(declare-fun d!3107 () Bool)

(assert (=> d!3107 (= (inv!500 (tag!287 (h!5599 (t!14790 rules!1369)))) (= (mod (str.len (value!5793 (tag!287 (h!5599 (t!14790 rules!1369))))) 2) 0))))

(assert (=> b!31788 d!3107))

(declare-fun d!3109 () Bool)

(declare-fun res!26821 () Bool)

(declare-fun e!14010 () Bool)

(assert (=> d!3109 (=> (not res!26821) (not e!14010))))

(assert (=> d!3109 (= res!26821 (semiInverseModEq!12 (toChars!443 (transformation!109 (h!5599 (t!14790 rules!1369)))) (toValue!584 (transformation!109 (h!5599 (t!14790 rules!1369))))))))

(assert (=> d!3109 (= (inv!509 (transformation!109 (h!5599 (t!14790 rules!1369)))) e!14010)))

(declare-fun b!31961 () Bool)

(assert (=> b!31961 (= e!14010 (equivClasses!8 (toChars!443 (transformation!109 (h!5599 (t!14790 rules!1369)))) (toValue!584 (transformation!109 (h!5599 (t!14790 rules!1369))))))))

(assert (= (and d!3109 res!26821) b!31961))

(declare-fun m!8145 () Bool)

(assert (=> d!3109 m!8145))

(declare-fun m!8147 () Bool)

(assert (=> b!31961 m!8147))

(assert (=> b!31788 d!3109))

(declare-fun d!3111 () Bool)

(declare-fun res!26826 () Bool)

(declare-fun e!14013 () Bool)

(assert (=> d!3111 (=> (not res!26826) (not e!14013))))

(assert (=> d!3111 (= res!26826 (<= (size!289 (list!101 (xs!2603 (c!15160 input!768)))) 512))))

(assert (=> d!3111 (= (inv!512 (c!15160 input!768)) e!14013)))

(declare-fun b!31966 () Bool)

(declare-fun res!26827 () Bool)

(assert (=> b!31966 (=> (not res!26827) (not e!14013))))

(assert (=> b!31966 (= res!26827 (= (csize!283 (c!15160 input!768)) (size!289 (list!101 (xs!2603 (c!15160 input!768))))))))

(declare-fun b!31967 () Bool)

(assert (=> b!31967 (= e!14013 (and (> (csize!283 (c!15160 input!768)) 0) (<= (csize!283 (c!15160 input!768)) 512)))))

(assert (= (and d!3111 res!26826) b!31966))

(assert (= (and b!31966 res!26827) b!31967))

(assert (=> d!3111 m!8092))

(assert (=> d!3111 m!8092))

(declare-fun m!8149 () Bool)

(assert (=> d!3111 m!8149))

(assert (=> b!31966 m!8092))

(assert (=> b!31966 m!8092))

(assert (=> b!31966 m!8149))

(assert (=> b!31714 d!3111))

(declare-fun d!3113 () Bool)

(declare-fun res!26832 () Bool)

(declare-fun e!14018 () Bool)

(assert (=> d!3113 (=> res!26832 e!14018)))

(assert (=> d!3113 (= res!26832 ((_ is Nil!203) rules!1369))))

(assert (=> d!3113 (= (noDuplicateTag!4 thiss!12222 rules!1369 Nil!207) e!14018)))

(declare-fun b!31972 () Bool)

(declare-fun e!14019 () Bool)

(assert (=> b!31972 (= e!14018 e!14019)))

(declare-fun res!26833 () Bool)

(assert (=> b!31972 (=> (not res!26833) (not e!14019))))

(declare-fun contains!24 (List!209 String!638) Bool)

(assert (=> b!31972 (= res!26833 (not (contains!24 Nil!207 (tag!287 (h!5599 rules!1369)))))))

(declare-fun b!31973 () Bool)

(assert (=> b!31973 (= e!14019 (noDuplicateTag!4 thiss!12222 (t!14790 rules!1369) (Cons!207 (tag!287 (h!5599 rules!1369)) Nil!207)))))

(assert (= (and d!3113 (not res!26832)) b!31972))

(assert (= (and b!31972 res!26833) b!31973))

(declare-fun m!8151 () Bool)

(assert (=> b!31972 m!8151))

(declare-fun m!8153 () Bool)

(assert (=> b!31973 m!8153))

(assert (=> b!31778 d!3113))

(declare-fun d!3115 () Bool)

(declare-fun res!26840 () Bool)

(declare-fun e!14022 () Bool)

(assert (=> d!3115 (=> (not res!26840) (not e!14022))))

(declare-fun size!290 (Conc!26) Int)

(assert (=> d!3115 (= res!26840 (= (csize!282 (c!15160 input!768)) (+ (size!290 (left!346 (c!15160 input!768))) (size!290 (right!676 (c!15160 input!768))))))))

(assert (=> d!3115 (= (inv!511 (c!15160 input!768)) e!14022)))

(declare-fun b!31980 () Bool)

(declare-fun res!26841 () Bool)

(assert (=> b!31980 (=> (not res!26841) (not e!14022))))

(assert (=> b!31980 (= res!26841 (and (not (= (left!346 (c!15160 input!768)) Empty!26)) (not (= (right!676 (c!15160 input!768)) Empty!26))))))

(declare-fun b!31981 () Bool)

(declare-fun res!26842 () Bool)

(assert (=> b!31981 (=> (not res!26842) (not e!14022))))

(assert (=> b!31981 (= res!26842 (= (cheight!237 (c!15160 input!768)) (+ (max!0 (height!7 (left!346 (c!15160 input!768))) (height!7 (right!676 (c!15160 input!768)))) 1)))))

(declare-fun b!31982 () Bool)

(assert (=> b!31982 (= e!14022 (<= 0 (cheight!237 (c!15160 input!768))))))

(assert (= (and d!3115 res!26840) b!31980))

(assert (= (and b!31980 res!26841) b!31981))

(assert (= (and b!31981 res!26842) b!31982))

(declare-fun m!8155 () Bool)

(assert (=> d!3115 m!8155))

(declare-fun m!8157 () Bool)

(assert (=> d!3115 m!8157))

(assert (=> b!31981 m!8135))

(assert (=> b!31981 m!8137))

(assert (=> b!31981 m!8135))

(assert (=> b!31981 m!8137))

(declare-fun m!8159 () Bool)

(assert (=> b!31981 m!8159))

(assert (=> b!31712 d!3115))

(declare-fun d!3117 () Bool)

(assert (=> d!3117 (= (list!98 (_2!53 lt!1673)) (list!99 (c!15160 (_2!53 lt!1673))))))

(declare-fun bs!3862 () Bool)

(assert (= bs!3862 d!3117))

(declare-fun m!8161 () Bool)

(assert (=> bs!3862 m!8161))

(assert (=> b!31748 d!3117))

(assert (=> b!31748 d!3071))

(assert (=> d!3027 d!3085))

(declare-fun bs!3863 () Bool)

(declare-fun d!3119 () Bool)

(assert (= bs!3863 (and d!3119 d!3077)))

(declare-fun lambda!448 () Int)

(assert (=> bs!3863 (= lambda!448 lambda!438)))

(declare-fun bs!3864 () Bool)

(assert (= bs!3864 (and d!3119 d!3087)))

(assert (=> bs!3864 (= lambda!448 lambda!445)))

(declare-fun bs!3865 () Bool)

(assert (= bs!3865 (and d!3119 d!3089)))

(assert (=> bs!3865 (= lambda!448 lambda!446)))

(declare-fun bs!3866 () Bool)

(assert (= bs!3866 (and d!3119 d!3091)))

(assert (=> bs!3866 (= lambda!448 lambda!447)))

(assert (=> d!3119 (= (inv!513 (_1!56 (_1!57 (h!5602 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))))) (forall!30 (exprs!515 (_1!56 (_1!57 (h!5602 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))))) lambda!448))))

(declare-fun bs!3867 () Bool)

(assert (= bs!3867 d!3119))

(declare-fun m!8163 () Bool)

(assert (=> bs!3867 m!8163))

(assert (=> b!31865 d!3119))

(declare-fun b!31986 () Bool)

(declare-fun e!14024 () List!204)

(assert (=> b!31986 (= e!14024 (++!47 (list!100 (left!347 (c!15161 (_1!53 lt!1656)))) (list!100 (right!677 (c!15161 (_1!53 lt!1656))))))))

(declare-fun b!31984 () Bool)

(declare-fun e!14023 () List!204)

(assert (=> b!31984 (= e!14023 e!14024)))

(declare-fun c!15198 () Bool)

(assert (=> b!31984 (= c!15198 ((_ is Leaf!158) (c!15161 (_1!53 lt!1656))))))

(declare-fun b!31985 () Bool)

(assert (=> b!31985 (= e!14024 (list!102 (xs!2604 (c!15161 (_1!53 lt!1656)))))))

(declare-fun d!3121 () Bool)

(declare-fun c!15197 () Bool)

(assert (=> d!3121 (= c!15197 ((_ is Empty!27) (c!15161 (_1!53 lt!1656))))))

(assert (=> d!3121 (= (list!100 (c!15161 (_1!53 lt!1656))) e!14023)))

(declare-fun b!31983 () Bool)

(assert (=> b!31983 (= e!14023 Nil!202)))

(assert (= (and d!3121 c!15197) b!31983))

(assert (= (and d!3121 (not c!15197)) b!31984))

(assert (= (and b!31984 c!15198) b!31985))

(assert (= (and b!31984 (not c!15198)) b!31986))

(declare-fun m!8165 () Bool)

(assert (=> b!31986 m!8165))

(declare-fun m!8167 () Bool)

(assert (=> b!31986 m!8167))

(assert (=> b!31986 m!8165))

(assert (=> b!31986 m!8167))

(declare-fun m!8169 () Bool)

(assert (=> b!31986 m!8169))

(declare-fun m!8171 () Bool)

(assert (=> b!31985 m!8171))

(assert (=> d!3053 d!3121))

(declare-fun bs!3868 () Bool)

(declare-fun d!3123 () Bool)

(assert (= bs!3868 (and d!3123 d!3089)))

(declare-fun lambda!449 () Int)

(assert (=> bs!3868 (= lambda!449 lambda!446)))

(declare-fun bs!3869 () Bool)

(assert (= bs!3869 (and d!3123 d!3087)))

(assert (=> bs!3869 (= lambda!449 lambda!445)))

(declare-fun bs!3870 () Bool)

(assert (= bs!3870 (and d!3123 d!3091)))

(assert (=> bs!3870 (= lambda!449 lambda!447)))

(declare-fun bs!3871 () Bool)

(assert (= bs!3871 (and d!3123 d!3119)))

(assert (=> bs!3871 (= lambda!449 lambda!448)))

(declare-fun bs!3872 () Bool)

(assert (= bs!3872 (and d!3123 d!3077)))

(assert (=> bs!3872 (= lambda!449 lambda!438)))

(assert (=> d!3123 (= (inv!513 (_2!54 (_1!55 (h!5601 mapValue!99)))) (forall!30 (exprs!515 (_2!54 (_1!55 (h!5601 mapValue!99)))) lambda!449))))

(declare-fun bs!3873 () Bool)

(assert (= bs!3873 d!3123))

(declare-fun m!8173 () Bool)

(assert (=> bs!3873 m!8173))

(assert (=> b!31861 d!3123))

(declare-fun d!3125 () Bool)

(assert (=> d!3125 (= (list!97 lt!1664) (list!100 (c!15161 lt!1664)))))

(declare-fun bs!3874 () Bool)

(assert (= bs!3874 d!3125))

(declare-fun m!8175 () Bool)

(assert (=> bs!3874 m!8175))

(assert (=> b!31732 d!3125))

(declare-fun b!31995 () Bool)

(declare-fun e!14030 () List!204)

(assert (=> b!31995 (= e!14030 (list!97 (_1!53 lt!1660)))))

(declare-fun b!31996 () Bool)

(assert (=> b!31996 (= e!14030 (Cons!202 (h!5598 (list!97 (BalanceConc!55 Empty!27))) (++!47 (t!14789 (list!97 (BalanceConc!55 Empty!27))) (list!97 (_1!53 lt!1660)))))))

(declare-fun b!31998 () Bool)

(declare-fun e!14029 () Bool)

(declare-fun lt!1691 () List!204)

(assert (=> b!31998 (= e!14029 (or (not (= (list!97 (_1!53 lt!1660)) Nil!202)) (= lt!1691 (list!97 (BalanceConc!55 Empty!27)))))))

(declare-fun b!31997 () Bool)

(declare-fun res!26848 () Bool)

(assert (=> b!31997 (=> (not res!26848) (not e!14029))))

(declare-fun size!291 (List!204) Int)

(assert (=> b!31997 (= res!26848 (= (size!291 lt!1691) (+ (size!291 (list!97 (BalanceConc!55 Empty!27))) (size!291 (list!97 (_1!53 lt!1660))))))))

(declare-fun d!3127 () Bool)

(assert (=> d!3127 e!14029))

(declare-fun res!26847 () Bool)

(assert (=> d!3127 (=> (not res!26847) (not e!14029))))

(declare-fun content!20 (List!204) (InoxSet Token!12))

(assert (=> d!3127 (= res!26847 (= (content!20 lt!1691) ((_ map or) (content!20 (list!97 (BalanceConc!55 Empty!27))) (content!20 (list!97 (_1!53 lt!1660))))))))

(assert (=> d!3127 (= lt!1691 e!14030)))

(declare-fun c!15201 () Bool)

(assert (=> d!3127 (= c!15201 ((_ is Nil!202) (list!97 (BalanceConc!55 Empty!27))))))

(assert (=> d!3127 (= (++!47 (list!97 (BalanceConc!55 Empty!27)) (list!97 (_1!53 lt!1660))) lt!1691)))

(assert (= (and d!3127 c!15201) b!31995))

(assert (= (and d!3127 (not c!15201)) b!31996))

(assert (= (and d!3127 res!26847) b!31997))

(assert (= (and b!31997 res!26848) b!31998))

(assert (=> b!31996 m!7867))

(declare-fun m!8177 () Bool)

(assert (=> b!31996 m!8177))

(declare-fun m!8179 () Bool)

(assert (=> b!31997 m!8179))

(assert (=> b!31997 m!7881))

(declare-fun m!8181 () Bool)

(assert (=> b!31997 m!8181))

(assert (=> b!31997 m!7867))

(declare-fun m!8183 () Bool)

(assert (=> b!31997 m!8183))

(declare-fun m!8185 () Bool)

(assert (=> d!3127 m!8185))

(assert (=> d!3127 m!7881))

(declare-fun m!8187 () Bool)

(assert (=> d!3127 m!8187))

(assert (=> d!3127 m!7867))

(declare-fun m!8189 () Bool)

(assert (=> d!3127 m!8189))

(assert (=> b!31732 d!3127))

(assert (=> b!31732 d!3055))

(assert (=> b!31732 d!3045))

(declare-fun bs!3875 () Bool)

(declare-fun d!3129 () Bool)

(assert (= bs!3875 (and d!3129 d!3123)))

(declare-fun lambda!450 () Int)

(assert (=> bs!3875 (= lambda!450 lambda!449)))

(declare-fun bs!3876 () Bool)

(assert (= bs!3876 (and d!3129 d!3089)))

(assert (=> bs!3876 (= lambda!450 lambda!446)))

(declare-fun bs!3877 () Bool)

(assert (= bs!3877 (and d!3129 d!3087)))

(assert (=> bs!3877 (= lambda!450 lambda!445)))

(declare-fun bs!3878 () Bool)

(assert (= bs!3878 (and d!3129 d!3091)))

(assert (=> bs!3878 (= lambda!450 lambda!447)))

(declare-fun bs!3879 () Bool)

(assert (= bs!3879 (and d!3129 d!3119)))

(assert (=> bs!3879 (= lambda!450 lambda!448)))

(declare-fun bs!3880 () Bool)

(assert (= bs!3880 (and d!3129 d!3077)))

(assert (=> bs!3880 (= lambda!450 lambda!438)))

(assert (=> d!3129 (= (inv!513 setElem!226) (forall!30 (exprs!515 setElem!226) lambda!450))))

(declare-fun bs!3881 () Bool)

(assert (= bs!3881 d!3129))

(declare-fun m!8191 () Bool)

(assert (=> bs!3881 m!8191))

(assert (=> setNonEmpty!226 d!3129))

(declare-fun d!3131 () Bool)

(assert (=> d!3131 (= (max!0 (height!6 (c!15161 (BalanceConc!55 Empty!27))) (height!6 (c!15161 (_1!53 lt!1660)))) (ite (< (height!6 (c!15161 (BalanceConc!55 Empty!27))) (height!6 (c!15161 (_1!53 lt!1660)))) (height!6 (c!15161 (_1!53 lt!1660))) (height!6 (c!15161 (BalanceConc!55 Empty!27)))))))

(assert (=> b!31730 d!3131))

(declare-fun b!32041 () Bool)

(declare-fun e!14051 () Conc!27)

(declare-fun e!14053 () Conc!27)

(assert (=> b!32041 (= e!14051 e!14053)))

(declare-fun lt!1702 () Conc!27)

(declare-fun call!2609 () Conc!27)

(assert (=> b!32041 (= lt!1702 call!2609)))

(declare-fun c!15225 () Bool)

(declare-fun call!2620 () Int)

(declare-fun call!2611 () Int)

(assert (=> b!32041 (= c!15225 (= call!2620 (- call!2611 3)))))

(declare-fun bm!2600 () Bool)

(declare-fun call!2619 () Int)

(declare-fun c!15222 () Bool)

(assert (=> bm!2600 (= call!2619 (height!6 (ite c!15222 (right!677 (c!15161 (BalanceConc!55 Empty!27))) (right!677 (c!15161 (_1!53 lt!1660))))))))

(declare-fun b!32042 () Bool)

(declare-fun e!14060 () Conc!27)

(declare-fun call!2605 () Conc!27)

(assert (=> b!32042 (= e!14060 call!2605)))

(declare-fun b!32043 () Bool)

(declare-fun c!15220 () Bool)

(assert (=> b!32043 (= c!15220 (>= call!2620 call!2619))))

(declare-fun e!14055 () Conc!27)

(declare-fun e!14054 () Conc!27)

(assert (=> b!32043 (= e!14055 e!14054)))

(declare-fun c!15224 () Bool)

(declare-fun call!2614 () Conc!27)

(declare-fun bm!2601 () Bool)

(declare-fun c!15219 () Bool)

(declare-fun lt!1701 () Conc!27)

(declare-fun <>!1 (Conc!27 Conc!27) Conc!27)

(assert (=> bm!2601 (= call!2614 (<>!1 (ite c!15224 (c!15161 (BalanceConc!55 Empty!27)) (ite c!15222 (ite c!15219 (left!347 (right!677 (c!15161 (BalanceConc!55 Empty!27)))) (left!347 (c!15161 (BalanceConc!55 Empty!27)))) (ite c!15225 lt!1702 (right!677 (left!347 (c!15161 (_1!53 lt!1660))))))) (ite c!15224 (c!15161 (_1!53 lt!1660)) (ite c!15222 (ite c!15219 lt!1701 (left!347 (right!677 (c!15161 (BalanceConc!55 Empty!27))))) (ite c!15225 (right!677 (left!347 (c!15161 (_1!53 lt!1660)))) (right!677 (c!15161 (_1!53 lt!1660))))))))))

(declare-fun bm!2602 () Bool)

(declare-fun call!2607 () Conc!27)

(declare-fun call!2616 () Conc!27)

(assert (=> bm!2602 (= call!2607 call!2616)))

(declare-fun b!32044 () Bool)

(declare-fun e!14057 () Conc!27)

(assert (=> b!32044 (= e!14057 (c!15161 (BalanceConc!55 Empty!27)))))

(declare-fun bm!2603 () Bool)

(declare-fun call!2613 () Conc!27)

(declare-fun call!2612 () Conc!27)

(assert (=> bm!2603 (= call!2613 call!2612)))

(declare-fun bm!2604 () Bool)

(assert (=> bm!2604 (= call!2611 (height!6 (ite c!15222 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))))))

(declare-fun b!32045 () Bool)

(assert (=> b!32045 (= e!14051 call!2607)))

(declare-fun b!32046 () Bool)

(declare-fun e!14052 () Bool)

(declare-fun lt!1703 () Conc!27)

(assert (=> b!32046 (= e!14052 (= (list!100 lt!1703) (++!47 (list!100 (c!15161 (BalanceConc!55 Empty!27))) (list!100 (c!15161 (_1!53 lt!1660))))))))

(declare-fun bm!2605 () Bool)

(declare-fun call!2618 () Int)

(assert (=> bm!2605 (= call!2618 (height!6 (ite c!15222 lt!1701 (left!347 (c!15161 (_1!53 lt!1660))))))))

(declare-fun bm!2606 () Bool)

(assert (=> bm!2606 (= call!2620 (height!6 (ite c!15222 (left!347 (c!15161 (BalanceConc!55 Empty!27))) lt!1702)))))

(declare-fun bm!2607 () Bool)

(declare-fun call!2610 () Conc!27)

(assert (=> bm!2607 (= call!2605 call!2610)))

(declare-fun b!32047 () Bool)

(declare-fun res!26859 () Bool)

(assert (=> b!32047 (=> (not res!26859) (not e!14052))))

(assert (=> b!32047 (= res!26859 (<= (height!6 lt!1703) (+ (max!0 (height!6 (c!15161 (BalanceConc!55 Empty!27))) (height!6 (c!15161 (_1!53 lt!1660)))) 1)))))

(declare-fun bm!2608 () Bool)

(declare-fun call!2615 () Conc!27)

(assert (=> bm!2608 (= call!2615 call!2612)))

(declare-fun b!32048 () Bool)

(declare-fun e!14056 () Conc!27)

(assert (=> b!32048 (= e!14056 call!2614)))

(declare-fun b!32049 () Bool)

(assert (=> b!32049 (= e!14054 call!2610)))

(declare-fun b!32050 () Bool)

(declare-fun e!14058 () Conc!27)

(assert (=> b!32050 (= e!14058 e!14057)))

(declare-fun c!15221 () Bool)

(assert (=> b!32050 (= c!15221 (= (c!15161 (_1!53 lt!1660)) Empty!27))))

(declare-fun d!3133 () Bool)

(assert (=> d!3133 e!14052))

(declare-fun res!26862 () Bool)

(assert (=> d!3133 (=> (not res!26862) (not e!14052))))

(assert (=> d!3133 (= res!26862 (appendAssocInst!1 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))))))

(assert (=> d!3133 (= lt!1703 e!14058)))

(declare-fun c!15223 () Bool)

(assert (=> d!3133 (= c!15223 (= (c!15161 (BalanceConc!55 Empty!27)) Empty!27))))

(declare-fun e!14059 () Bool)

(assert (=> d!3133 e!14059))

(declare-fun res!26861 () Bool)

(assert (=> d!3133 (=> (not res!26861) (not e!14059))))

(assert (=> d!3133 (= res!26861 (isBalanced!12 (c!15161 (BalanceConc!55 Empty!27))))))

(assert (=> d!3133 (= (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))) lt!1703)))

(declare-fun b!32051 () Bool)

(assert (=> b!32051 (= e!14058 (c!15161 (_1!53 lt!1660)))))

(declare-fun b!32052 () Bool)

(assert (=> b!32052 (= e!14056 e!14055)))

(declare-fun lt!1700 () Int)

(assert (=> b!32052 (= c!15222 (< lt!1700 (- 1)))))

(declare-fun c!15218 () Bool)

(declare-fun call!2608 () Conc!27)

(declare-fun bm!2609 () Bool)

(assert (=> bm!2609 (= call!2616 (<>!1 (ite c!15222 (ite (or c!15220 c!15219) (left!347 (c!15161 (BalanceConc!55 Empty!27))) call!2615) (ite c!15218 call!2609 (ite c!15225 call!2613 lt!1702))) (ite c!15222 (ite c!15220 call!2608 (ite c!15219 call!2615 lt!1701)) (ite (or c!15218 c!15225) (right!677 (c!15161 (_1!53 lt!1660))) call!2613))))))

(declare-fun bm!2610 () Bool)

(declare-fun call!2606 () Conc!27)

(assert (=> bm!2610 (= call!2609 call!2606)))

(declare-fun bm!2611 () Bool)

(assert (=> bm!2611 (= call!2610 call!2616)))

(declare-fun bm!2612 () Bool)

(assert (=> bm!2612 (= call!2606 (++!46 (ite c!15222 (ite c!15220 (right!677 (c!15161 (BalanceConc!55 Empty!27))) (right!677 (right!677 (c!15161 (BalanceConc!55 Empty!27))))) (c!15161 (BalanceConc!55 Empty!27))) (ite c!15222 (c!15161 (_1!53 lt!1660)) (ite c!15218 (left!347 (c!15161 (_1!53 lt!1660))) (left!347 (left!347 (c!15161 (_1!53 lt!1660))))))))))

(declare-fun b!32053 () Bool)

(declare-fun call!2617 () Conc!27)

(assert (=> b!32053 (= e!14053 call!2617)))

(declare-fun b!32054 () Bool)

(assert (=> b!32054 (= c!15218 (>= call!2619 call!2618))))

(assert (=> b!32054 (= e!14055 e!14051)))

(declare-fun b!32055 () Bool)

(assert (=> b!32055 (= e!14053 call!2617)))

(declare-fun bm!2613 () Bool)

(assert (=> bm!2613 (= call!2612 call!2614)))

(declare-fun b!32056 () Bool)

(assert (=> b!32056 (= c!15224 (and (<= (- 1) lt!1700) (<= lt!1700 1)))))

(assert (=> b!32056 (= lt!1700 (- (height!6 (c!15161 (_1!53 lt!1660))) (height!6 (c!15161 (BalanceConc!55 Empty!27)))))))

(assert (=> b!32056 (= e!14057 e!14056)))

(declare-fun bm!2614 () Bool)

(assert (=> bm!2614 (= call!2608 call!2606)))

(declare-fun b!32057 () Bool)

(assert (=> b!32057 (= e!14060 call!2605)))

(declare-fun bm!2615 () Bool)

(assert (=> bm!2615 (= call!2617 call!2607)))

(declare-fun b!32058 () Bool)

(assert (=> b!32058 (= e!14059 (isBalanced!12 (c!15161 (_1!53 lt!1660))))))

(declare-fun b!32059 () Bool)

(declare-fun res!26860 () Bool)

(assert (=> b!32059 (=> (not res!26860) (not e!14052))))

(assert (=> b!32059 (= res!26860 (isBalanced!12 lt!1703))))

(declare-fun b!32060 () Bool)

(assert (=> b!32060 (= e!14054 e!14060)))

(assert (=> b!32060 (= lt!1701 call!2608)))

(assert (=> b!32060 (= c!15219 (= call!2618 (- call!2611 3)))))

(declare-fun b!32061 () Bool)

(declare-fun res!26863 () Bool)

(assert (=> b!32061 (=> (not res!26863) (not e!14052))))

(assert (=> b!32061 (= res!26863 (>= (height!6 lt!1703) (max!0 (height!6 (c!15161 (BalanceConc!55 Empty!27))) (height!6 (c!15161 (_1!53 lt!1660))))))))

(assert (= (and d!3133 res!26861) b!32058))

(assert (= (and d!3133 c!15223) b!32051))

(assert (= (and d!3133 (not c!15223)) b!32050))

(assert (= (and b!32050 c!15221) b!32044))

(assert (= (and b!32050 (not c!15221)) b!32056))

(assert (= (and b!32056 c!15224) b!32048))

(assert (= (and b!32056 (not c!15224)) b!32052))

(assert (= (and b!32052 c!15222) b!32043))

(assert (= (and b!32052 (not c!15222)) b!32054))

(assert (= (and b!32043 c!15220) b!32049))

(assert (= (and b!32043 (not c!15220)) b!32060))

(assert (= (and b!32060 c!15219) b!32042))

(assert (= (and b!32060 (not c!15219)) b!32057))

(assert (= (or b!32042 b!32057) bm!2608))

(assert (= (or b!32042 b!32057) bm!2607))

(assert (= (or b!32049 b!32060) bm!2614))

(assert (= (or b!32049 bm!2607) bm!2611))

(assert (= (and b!32054 c!15218) b!32045))

(assert (= (and b!32054 (not c!15218)) b!32041))

(assert (= (and b!32041 c!15225) b!32053))

(assert (= (and b!32041 (not c!15225)) b!32055))

(assert (= (or b!32053 b!32055) bm!2603))

(assert (= (or b!32053 b!32055) bm!2615))

(assert (= (or b!32045 b!32041) bm!2610))

(assert (= (or b!32045 bm!2615) bm!2602))

(assert (= (or b!32060 b!32041) bm!2604))

(assert (= (or bm!2614 bm!2610) bm!2612))

(assert (= (or b!32043 b!32054) bm!2600))

(assert (= (or b!32060 b!32054) bm!2605))

(assert (= (or bm!2611 bm!2602) bm!2609))

(assert (= (or b!32043 b!32041) bm!2606))

(assert (= (or bm!2608 bm!2603) bm!2613))

(assert (= (or b!32048 bm!2613) bm!2601))

(assert (= (and d!3133 res!26862) b!32059))

(assert (= (and b!32059 res!26860) b!32047))

(assert (= (and b!32047 res!26859) b!32061))

(assert (= (and b!32061 res!26863) b!32046))

(declare-fun m!8193 () Bool)

(assert (=> bm!2609 m!8193))

(assert (=> d!3133 m!7937))

(declare-fun m!8195 () Bool)

(assert (=> d!3133 m!8195))

(declare-fun m!8197 () Bool)

(assert (=> b!32061 m!8197))

(assert (=> b!32061 m!7933))

(assert (=> b!32061 m!7929))

(assert (=> b!32061 m!7933))

(assert (=> b!32061 m!7929))

(assert (=> b!32061 m!7935))

(declare-fun m!8199 () Bool)

(assert (=> b!32059 m!8199))

(declare-fun m!8201 () Bool)

(assert (=> bm!2601 m!8201))

(declare-fun m!8203 () Bool)

(assert (=> bm!2605 m!8203))

(declare-fun m!8205 () Bool)

(assert (=> bm!2612 m!8205))

(declare-fun m!8207 () Bool)

(assert (=> bm!2606 m!8207))

(assert (=> b!32056 m!7929))

(assert (=> b!32056 m!7933))

(assert (=> b!32047 m!8197))

(assert (=> b!32047 m!7933))

(assert (=> b!32047 m!7929))

(assert (=> b!32047 m!7933))

(assert (=> b!32047 m!7929))

(assert (=> b!32047 m!7935))

(declare-fun m!8209 () Bool)

(assert (=> b!32046 m!8209))

(assert (=> b!32046 m!7965))

(assert (=> b!32046 m!7921))

(assert (=> b!32046 m!7965))

(assert (=> b!32046 m!7921))

(declare-fun m!8211 () Bool)

(assert (=> b!32046 m!8211))

(declare-fun m!8213 () Bool)

(assert (=> bm!2600 m!8213))

(declare-fun m!8215 () Bool)

(assert (=> bm!2604 m!8215))

(declare-fun m!8217 () Bool)

(assert (=> b!32058 m!8217))

(assert (=> b!31730 d!3133))

(declare-fun d!3135 () Bool)

(assert (=> d!3135 (= (height!6 (c!15161 (BalanceConc!55 Empty!27))) (ite ((_ is Empty!27) (c!15161 (BalanceConc!55 Empty!27))) 0 (ite ((_ is Leaf!158) (c!15161 (BalanceConc!55 Empty!27))) 1 (cheight!238 (c!15161 (BalanceConc!55 Empty!27))))))))

(assert (=> b!31730 d!3135))

(declare-fun d!3137 () Bool)

(assert (=> d!3137 (= (height!6 (c!15161 (_1!53 lt!1660))) (ite ((_ is Empty!27) (c!15161 (_1!53 lt!1660))) 0 (ite ((_ is Leaf!158) (c!15161 (_1!53 lt!1660))) 1 (cheight!238 (c!15161 (_1!53 lt!1660))))))))

(assert (=> b!31730 d!3137))

(declare-fun d!3139 () Bool)

(assert (=> d!3139 (= (height!6 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))) (ite ((_ is Empty!27) (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))) 0 (ite ((_ is Leaf!158) (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))) 1 (cheight!238 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))))))))

(assert (=> b!31730 d!3139))

(declare-fun bs!3882 () Bool)

(declare-fun d!3141 () Bool)

(assert (= bs!3882 (and d!3141 d!3123)))

(declare-fun lambda!451 () Int)

(assert (=> bs!3882 (= lambda!451 lambda!449)))

(declare-fun bs!3883 () Bool)

(assert (= bs!3883 (and d!3141 d!3089)))

(assert (=> bs!3883 (= lambda!451 lambda!446)))

(declare-fun bs!3884 () Bool)

(assert (= bs!3884 (and d!3141 d!3087)))

(assert (=> bs!3884 (= lambda!451 lambda!445)))

(declare-fun bs!3885 () Bool)

(assert (= bs!3885 (and d!3141 d!3091)))

(assert (=> bs!3885 (= lambda!451 lambda!447)))

(declare-fun bs!3886 () Bool)

(assert (= bs!3886 (and d!3141 d!3129)))

(assert (=> bs!3886 (= lambda!451 lambda!450)))

(declare-fun bs!3887 () Bool)

(assert (= bs!3887 (and d!3141 d!3119)))

(assert (=> bs!3887 (= lambda!451 lambda!448)))

(declare-fun bs!3888 () Bool)

(assert (= bs!3888 (and d!3141 d!3077)))

(assert (=> bs!3888 (= lambda!451 lambda!438)))

(assert (=> d!3141 (= (inv!513 (_2!54 (_1!55 (h!5601 mapDefault!99)))) (forall!30 (exprs!515 (_2!54 (_1!55 (h!5601 mapDefault!99)))) lambda!451))))

(declare-fun bs!3889 () Bool)

(assert (= bs!3889 d!3141))

(declare-fun m!8219 () Bool)

(assert (=> bs!3889 m!8219))

(assert (=> b!31870 d!3141))

(declare-fun b!32065 () Bool)

(declare-fun e!14062 () List!204)

(assert (=> b!32065 (= e!14062 (++!47 (list!100 (left!347 (c!15161 (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660))))) (list!100 (right!677 (c!15161 (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660)))))))))

(declare-fun b!32063 () Bool)

(declare-fun e!14061 () List!204)

(assert (=> b!32063 (= e!14061 e!14062)))

(declare-fun c!15227 () Bool)

(assert (=> b!32063 (= c!15227 ((_ is Leaf!158) (c!15161 (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660)))))))

(declare-fun b!32064 () Bool)

(assert (=> b!32064 (= e!14062 (list!102 (xs!2604 (c!15161 (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660))))))))

(declare-fun d!3143 () Bool)

(declare-fun c!15226 () Bool)

(assert (=> d!3143 (= c!15226 ((_ is Empty!27) (c!15161 (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660)))))))

(assert (=> d!3143 (= (list!100 (c!15161 (++!44 (BalanceConc!55 Empty!27) (_1!53 lt!1660)))) e!14061)))

(declare-fun b!32062 () Bool)

(assert (=> b!32062 (= e!14061 Nil!202)))

(assert (= (and d!3143 c!15226) b!32062))

(assert (= (and d!3143 (not c!15226)) b!32063))

(assert (= (and b!32063 c!15227) b!32064))

(assert (= (and b!32063 (not c!15227)) b!32065))

(declare-fun m!8221 () Bool)

(assert (=> b!32065 m!8221))

(declare-fun m!8223 () Bool)

(assert (=> b!32065 m!8223))

(assert (=> b!32065 m!8221))

(assert (=> b!32065 m!8223))

(declare-fun m!8225 () Bool)

(assert (=> b!32065 m!8225))

(declare-fun m!8227 () Bool)

(assert (=> b!32064 m!8227))

(assert (=> d!3047 d!3143))

(declare-fun bs!3890 () Bool)

(declare-fun d!3145 () Bool)

(assert (= bs!3890 (and d!3145 d!3123)))

(declare-fun lambda!452 () Int)

(assert (=> bs!3890 (= lambda!452 lambda!449)))

(declare-fun bs!3891 () Bool)

(assert (= bs!3891 (and d!3145 d!3089)))

(assert (=> bs!3891 (= lambda!452 lambda!446)))

(declare-fun bs!3892 () Bool)

(assert (= bs!3892 (and d!3145 d!3087)))

(assert (=> bs!3892 (= lambda!452 lambda!445)))

(declare-fun bs!3893 () Bool)

(assert (= bs!3893 (and d!3145 d!3091)))

(assert (=> bs!3893 (= lambda!452 lambda!447)))

(declare-fun bs!3894 () Bool)

(assert (= bs!3894 (and d!3145 d!3129)))

(assert (=> bs!3894 (= lambda!452 lambda!450)))

(declare-fun bs!3895 () Bool)

(assert (= bs!3895 (and d!3145 d!3119)))

(assert (=> bs!3895 (= lambda!452 lambda!448)))

(declare-fun bs!3896 () Bool)

(assert (= bs!3896 (and d!3145 d!3077)))

(assert (=> bs!3896 (= lambda!452 lambda!438)))

(declare-fun bs!3897 () Bool)

(assert (= bs!3897 (and d!3145 d!3141)))

(assert (=> bs!3897 (= lambda!452 lambda!451)))

(assert (=> d!3145 (= (inv!513 setElem!224) (forall!30 (exprs!515 setElem!224) lambda!452))))

(declare-fun bs!3898 () Bool)

(assert (= bs!3898 d!3145))

(declare-fun m!8229 () Bool)

(assert (=> bs!3898 m!8229))

(assert (=> setNonEmpty!224 d!3145))

(declare-fun d!3147 () Bool)

(assert (=> d!3147 (= (list!98 (_2!53 lt!1676)) (list!99 (c!15160 (_2!53 lt!1676))))))

(declare-fun bs!3899 () Bool)

(assert (= bs!3899 d!3147))

(declare-fun m!8231 () Bool)

(assert (=> bs!3899 m!8231))

(assert (=> b!31756 d!3147))

(declare-fun b!32076 () Bool)

(declare-fun e!14071 () Bool)

(declare-fun lt!1712 () tuple2!98)

(assert (=> b!32076 (= e!14071 (not (isEmpty!64 (_1!59 lt!1712))))))

(declare-fun b!32077 () Bool)

(declare-fun e!14069 () Bool)

(assert (=> b!32077 (= e!14069 e!14071)))

(declare-fun res!26866 () Bool)

(assert (=> b!32077 (= res!26866 (< (size!289 (_2!59 lt!1712)) (size!289 (list!98 (BalanceConc!53 Empty!26)))))))

(assert (=> b!32077 (=> (not res!26866) (not e!14071))))

(declare-fun b!32078 () Bool)

(assert (=> b!32078 (= e!14069 (= (_2!59 lt!1712) (list!98 (BalanceConc!53 Empty!26))))))

(declare-fun d!3149 () Bool)

(assert (=> d!3149 e!14069))

(declare-fun c!15232 () Bool)

(assert (=> d!3149 (= c!15232 (> (size!291 (_1!59 lt!1712)) 0))))

(declare-fun e!14070 () tuple2!98)

(assert (=> d!3149 (= lt!1712 e!14070)))

(declare-fun c!15233 () Bool)

(declare-datatypes ((tuple2!100 0))(
  ( (tuple2!101 (_1!60 Token!12) (_2!60 List!202)) )
))
(declare-datatypes ((Option!39 0))(
  ( (None!38) (Some!38 (v!12011 tuple2!100)) )
))
(declare-fun lt!1710 () Option!39)

(assert (=> d!3149 (= c!15233 ((_ is Some!38) lt!1710))))

(declare-fun maxPrefix!3 (LexerInterface!11 List!205 List!202) Option!39)

(assert (=> d!3149 (= lt!1710 (maxPrefix!3 thiss!12222 rules!1369 (list!98 (BalanceConc!53 Empty!26))))))

(assert (=> d!3149 (= (lexList!3 thiss!12222 rules!1369 (list!98 (BalanceConc!53 Empty!26))) lt!1712)))

(declare-fun b!32079 () Bool)

(assert (=> b!32079 (= e!14070 (tuple2!99 Nil!202 (list!98 (BalanceConc!53 Empty!26))))))

(declare-fun b!32080 () Bool)

(declare-fun lt!1711 () tuple2!98)

(assert (=> b!32080 (= e!14070 (tuple2!99 (Cons!202 (_1!60 (v!12011 lt!1710)) (_1!59 lt!1711)) (_2!59 lt!1711)))))

(assert (=> b!32080 (= lt!1711 (lexList!3 thiss!12222 rules!1369 (_2!60 (v!12011 lt!1710))))))

(assert (= (and d!3149 c!15233) b!32080))

(assert (= (and d!3149 (not c!15233)) b!32079))

(assert (= (and d!3149 c!15232) b!32077))

(assert (= (and d!3149 (not c!15232)) b!32078))

(assert (= (and b!32077 res!26866) b!32076))

(declare-fun m!8233 () Bool)

(assert (=> b!32076 m!8233))

(declare-fun m!8235 () Bool)

(assert (=> b!32077 m!8235))

(assert (=> b!32077 m!7889))

(declare-fun m!8237 () Bool)

(assert (=> b!32077 m!8237))

(declare-fun m!8239 () Bool)

(assert (=> d!3149 m!8239))

(assert (=> d!3149 m!7889))

(declare-fun m!8241 () Bool)

(assert (=> d!3149 m!8241))

(declare-fun m!8243 () Bool)

(assert (=> b!32080 m!8243))

(assert (=> b!31756 d!3149))

(assert (=> b!31756 d!3073))

(declare-fun bs!3900 () Bool)

(declare-fun d!3151 () Bool)

(assert (= bs!3900 (and d!3151 d!3123)))

(declare-fun lambda!453 () Int)

(assert (=> bs!3900 (= lambda!453 lambda!449)))

(declare-fun bs!3901 () Bool)

(assert (= bs!3901 (and d!3151 d!3089)))

(assert (=> bs!3901 (= lambda!453 lambda!446)))

(declare-fun bs!3902 () Bool)

(assert (= bs!3902 (and d!3151 d!3087)))

(assert (=> bs!3902 (= lambda!453 lambda!445)))

(declare-fun bs!3903 () Bool)

(assert (= bs!3903 (and d!3151 d!3091)))

(assert (=> bs!3903 (= lambda!453 lambda!447)))

(declare-fun bs!3904 () Bool)

(assert (= bs!3904 (and d!3151 d!3145)))

(assert (=> bs!3904 (= lambda!453 lambda!452)))

(declare-fun bs!3905 () Bool)

(assert (= bs!3905 (and d!3151 d!3129)))

(assert (=> bs!3905 (= lambda!453 lambda!450)))

(declare-fun bs!3906 () Bool)

(assert (= bs!3906 (and d!3151 d!3119)))

(assert (=> bs!3906 (= lambda!453 lambda!448)))

(declare-fun bs!3907 () Bool)

(assert (= bs!3907 (and d!3151 d!3077)))

(assert (=> bs!3907 (= lambda!453 lambda!438)))

(declare-fun bs!3908 () Bool)

(assert (= bs!3908 (and d!3151 d!3141)))

(assert (=> bs!3908 (= lambda!453 lambda!451)))

(assert (=> d!3151 (= (inv!513 setElem!213) (forall!30 (exprs!515 setElem!213) lambda!453))))

(declare-fun bs!3909 () Bool)

(assert (= bs!3909 d!3151))

(declare-fun m!8245 () Bool)

(assert (=> bs!3909 m!8245))

(assert (=> setNonEmpty!213 d!3151))

(declare-fun bs!3910 () Bool)

(declare-fun d!3153 () Bool)

(assert (= bs!3910 (and d!3153 d!3123)))

(declare-fun lambda!454 () Int)

(assert (=> bs!3910 (= lambda!454 lambda!449)))

(declare-fun bs!3911 () Bool)

(assert (= bs!3911 (and d!3153 d!3089)))

(assert (=> bs!3911 (= lambda!454 lambda!446)))

(declare-fun bs!3912 () Bool)

(assert (= bs!3912 (and d!3153 d!3087)))

(assert (=> bs!3912 (= lambda!454 lambda!445)))

(declare-fun bs!3913 () Bool)

(assert (= bs!3913 (and d!3153 d!3091)))

(assert (=> bs!3913 (= lambda!454 lambda!447)))

(declare-fun bs!3914 () Bool)

(assert (= bs!3914 (and d!3153 d!3129)))

(assert (=> bs!3914 (= lambda!454 lambda!450)))

(declare-fun bs!3915 () Bool)

(assert (= bs!3915 (and d!3153 d!3119)))

(assert (=> bs!3915 (= lambda!454 lambda!448)))

(declare-fun bs!3916 () Bool)

(assert (= bs!3916 (and d!3153 d!3077)))

(assert (=> bs!3916 (= lambda!454 lambda!438)))

(declare-fun bs!3917 () Bool)

(assert (= bs!3917 (and d!3153 d!3141)))

(assert (=> bs!3917 (= lambda!454 lambda!451)))

(declare-fun bs!3918 () Bool)

(assert (= bs!3918 (and d!3153 d!3145)))

(assert (=> bs!3918 (= lambda!454 lambda!452)))

(declare-fun bs!3919 () Bool)

(assert (= bs!3919 (and d!3153 d!3151)))

(assert (=> bs!3919 (= lambda!454 lambda!453)))

(assert (=> d!3153 (= (inv!513 setElem!231) (forall!30 (exprs!515 setElem!231) lambda!454))))

(declare-fun bs!3920 () Bool)

(assert (= bs!3920 d!3153))

(declare-fun m!8247 () Bool)

(assert (=> bs!3920 m!8247))

(assert (=> setNonEmpty!232 d!3153))

(declare-fun bs!3921 () Bool)

(declare-fun d!3155 () Bool)

(assert (= bs!3921 (and d!3155 d!3153)))

(declare-fun lambda!455 () Int)

(assert (=> bs!3921 (= lambda!455 lambda!454)))

(declare-fun bs!3922 () Bool)

(assert (= bs!3922 (and d!3155 d!3123)))

(assert (=> bs!3922 (= lambda!455 lambda!449)))

(declare-fun bs!3923 () Bool)

(assert (= bs!3923 (and d!3155 d!3089)))

(assert (=> bs!3923 (= lambda!455 lambda!446)))

(declare-fun bs!3924 () Bool)

(assert (= bs!3924 (and d!3155 d!3087)))

(assert (=> bs!3924 (= lambda!455 lambda!445)))

(declare-fun bs!3925 () Bool)

(assert (= bs!3925 (and d!3155 d!3091)))

(assert (=> bs!3925 (= lambda!455 lambda!447)))

(declare-fun bs!3926 () Bool)

(assert (= bs!3926 (and d!3155 d!3129)))

(assert (=> bs!3926 (= lambda!455 lambda!450)))

(declare-fun bs!3927 () Bool)

(assert (= bs!3927 (and d!3155 d!3119)))

(assert (=> bs!3927 (= lambda!455 lambda!448)))

(declare-fun bs!3928 () Bool)

(assert (= bs!3928 (and d!3155 d!3077)))

(assert (=> bs!3928 (= lambda!455 lambda!438)))

(declare-fun bs!3929 () Bool)

(assert (= bs!3929 (and d!3155 d!3141)))

(assert (=> bs!3929 (= lambda!455 lambda!451)))

(declare-fun bs!3930 () Bool)

(assert (= bs!3930 (and d!3155 d!3145)))

(assert (=> bs!3930 (= lambda!455 lambda!452)))

(declare-fun bs!3931 () Bool)

(assert (= bs!3931 (and d!3155 d!3151)))

(assert (=> bs!3931 (= lambda!455 lambda!453)))

(assert (=> d!3155 (= (inv!513 setElem!212) (forall!30 (exprs!515 setElem!212) lambda!455))))

(declare-fun bs!3932 () Bool)

(assert (= bs!3932 d!3155))

(declare-fun m!8249 () Bool)

(assert (=> bs!3932 m!8249))

(assert (=> setNonEmpty!212 d!3155))

(declare-fun d!3157 () Bool)

(declare-fun lt!1715 () Int)

(assert (=> d!3157 (= lt!1715 (size!289 (list!98 (_2!53 lt!1676))))))

(assert (=> d!3157 (= lt!1715 (size!290 (c!15160 (_2!53 lt!1676))))))

(assert (=> d!3157 (= (size!287 (_2!53 lt!1676)) lt!1715)))

(declare-fun bs!3933 () Bool)

(assert (= bs!3933 d!3157))

(assert (=> bs!3933 m!7975))

(assert (=> bs!3933 m!7975))

(declare-fun m!8251 () Bool)

(assert (=> bs!3933 m!8251))

(declare-fun m!8253 () Bool)

(assert (=> bs!3933 m!8253))

(assert (=> b!31754 d!3157))

(declare-fun d!3159 () Bool)

(declare-fun lt!1716 () Int)

(assert (=> d!3159 (= lt!1716 (size!289 (list!98 (BalanceConc!53 Empty!26))))))

(assert (=> d!3159 (= lt!1716 (size!290 (c!15160 (BalanceConc!53 Empty!26))))))

(assert (=> d!3159 (= (size!287 (BalanceConc!53 Empty!26)) lt!1716)))

(declare-fun bs!3934 () Bool)

(assert (= bs!3934 d!3159))

(assert (=> bs!3934 m!7889))

(assert (=> bs!3934 m!7889))

(assert (=> bs!3934 m!8237))

(declare-fun m!8255 () Bool)

(assert (=> bs!3934 m!8255))

(assert (=> b!31754 d!3159))

(declare-fun bs!3935 () Bool)

(declare-fun d!3161 () Bool)

(assert (= bs!3935 (and d!3161 d!3153)))

(declare-fun lambda!456 () Int)

(assert (=> bs!3935 (= lambda!456 lambda!454)))

(declare-fun bs!3936 () Bool)

(assert (= bs!3936 (and d!3161 d!3123)))

(assert (=> bs!3936 (= lambda!456 lambda!449)))

(declare-fun bs!3937 () Bool)

(assert (= bs!3937 (and d!3161 d!3089)))

(assert (=> bs!3937 (= lambda!456 lambda!446)))

(declare-fun bs!3938 () Bool)

(assert (= bs!3938 (and d!3161 d!3087)))

(assert (=> bs!3938 (= lambda!456 lambda!445)))

(declare-fun bs!3939 () Bool)

(assert (= bs!3939 (and d!3161 d!3091)))

(assert (=> bs!3939 (= lambda!456 lambda!447)))

(declare-fun bs!3940 () Bool)

(assert (= bs!3940 (and d!3161 d!3155)))

(assert (=> bs!3940 (= lambda!456 lambda!455)))

(declare-fun bs!3941 () Bool)

(assert (= bs!3941 (and d!3161 d!3129)))

(assert (=> bs!3941 (= lambda!456 lambda!450)))

(declare-fun bs!3942 () Bool)

(assert (= bs!3942 (and d!3161 d!3119)))

(assert (=> bs!3942 (= lambda!456 lambda!448)))

(declare-fun bs!3943 () Bool)

(assert (= bs!3943 (and d!3161 d!3077)))

(assert (=> bs!3943 (= lambda!456 lambda!438)))

(declare-fun bs!3944 () Bool)

(assert (= bs!3944 (and d!3161 d!3141)))

(assert (=> bs!3944 (= lambda!456 lambda!451)))

(declare-fun bs!3945 () Bool)

(assert (= bs!3945 (and d!3161 d!3145)))

(assert (=> bs!3945 (= lambda!456 lambda!452)))

(declare-fun bs!3946 () Bool)

(assert (= bs!3946 (and d!3161 d!3151)))

(assert (=> bs!3946 (= lambda!456 lambda!453)))

(assert (=> d!3161 (= (inv!513 setElem!223) (forall!30 (exprs!515 setElem!223) lambda!456))))

(declare-fun bs!3947 () Bool)

(assert (= bs!3947 d!3161))

(declare-fun m!8257 () Bool)

(assert (=> bs!3947 m!8257))

(assert (=> setNonEmpty!223 d!3161))

(declare-fun bs!3948 () Bool)

(declare-fun d!3163 () Bool)

(assert (= bs!3948 (and d!3163 d!3161)))

(declare-fun lambda!457 () Int)

(assert (=> bs!3948 (= lambda!457 lambda!456)))

(declare-fun bs!3949 () Bool)

(assert (= bs!3949 (and d!3163 d!3153)))

(assert (=> bs!3949 (= lambda!457 lambda!454)))

(declare-fun bs!3950 () Bool)

(assert (= bs!3950 (and d!3163 d!3123)))

(assert (=> bs!3950 (= lambda!457 lambda!449)))

(declare-fun bs!3951 () Bool)

(assert (= bs!3951 (and d!3163 d!3089)))

(assert (=> bs!3951 (= lambda!457 lambda!446)))

(declare-fun bs!3952 () Bool)

(assert (= bs!3952 (and d!3163 d!3087)))

(assert (=> bs!3952 (= lambda!457 lambda!445)))

(declare-fun bs!3953 () Bool)

(assert (= bs!3953 (and d!3163 d!3091)))

(assert (=> bs!3953 (= lambda!457 lambda!447)))

(declare-fun bs!3954 () Bool)

(assert (= bs!3954 (and d!3163 d!3155)))

(assert (=> bs!3954 (= lambda!457 lambda!455)))

(declare-fun bs!3955 () Bool)

(assert (= bs!3955 (and d!3163 d!3129)))

(assert (=> bs!3955 (= lambda!457 lambda!450)))

(declare-fun bs!3956 () Bool)

(assert (= bs!3956 (and d!3163 d!3119)))

(assert (=> bs!3956 (= lambda!457 lambda!448)))

(declare-fun bs!3957 () Bool)

(assert (= bs!3957 (and d!3163 d!3077)))

(assert (=> bs!3957 (= lambda!457 lambda!438)))

(declare-fun bs!3958 () Bool)

(assert (= bs!3958 (and d!3163 d!3141)))

(assert (=> bs!3958 (= lambda!457 lambda!451)))

(declare-fun bs!3959 () Bool)

(assert (= bs!3959 (and d!3163 d!3145)))

(assert (=> bs!3959 (= lambda!457 lambda!452)))

(declare-fun bs!3960 () Bool)

(assert (= bs!3960 (and d!3163 d!3151)))

(assert (=> bs!3960 (= lambda!457 lambda!453)))

(assert (=> d!3163 (= (inv!513 (_2!54 (_1!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))))) (forall!30 (exprs!515 (_2!54 (_1!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))))) lambda!457))))

(declare-fun bs!3961 () Bool)

(assert (= bs!3961 d!3163))

(declare-fun m!8259 () Bool)

(assert (=> bs!3961 m!8259))

(assert (=> b!31802 d!3163))

(declare-fun bs!3962 () Bool)

(declare-fun d!3165 () Bool)

(assert (= bs!3962 (and d!3165 d!3161)))

(declare-fun lambda!458 () Int)

(assert (=> bs!3962 (= lambda!458 lambda!456)))

(declare-fun bs!3963 () Bool)

(assert (= bs!3963 (and d!3165 d!3153)))

(assert (=> bs!3963 (= lambda!458 lambda!454)))

(declare-fun bs!3964 () Bool)

(assert (= bs!3964 (and d!3165 d!3123)))

(assert (=> bs!3964 (= lambda!458 lambda!449)))

(declare-fun bs!3965 () Bool)

(assert (= bs!3965 (and d!3165 d!3089)))

(assert (=> bs!3965 (= lambda!458 lambda!446)))

(declare-fun bs!3966 () Bool)

(assert (= bs!3966 (and d!3165 d!3087)))

(assert (=> bs!3966 (= lambda!458 lambda!445)))

(declare-fun bs!3967 () Bool)

(assert (= bs!3967 (and d!3165 d!3091)))

(assert (=> bs!3967 (= lambda!458 lambda!447)))

(declare-fun bs!3968 () Bool)

(assert (= bs!3968 (and d!3165 d!3155)))

(assert (=> bs!3968 (= lambda!458 lambda!455)))

(declare-fun bs!3969 () Bool)

(assert (= bs!3969 (and d!3165 d!3129)))

(assert (=> bs!3969 (= lambda!458 lambda!450)))

(declare-fun bs!3970 () Bool)

(assert (= bs!3970 (and d!3165 d!3119)))

(assert (=> bs!3970 (= lambda!458 lambda!448)))

(declare-fun bs!3971 () Bool)

(assert (= bs!3971 (and d!3165 d!3077)))

(assert (=> bs!3971 (= lambda!458 lambda!438)))

(declare-fun bs!3972 () Bool)

(assert (= bs!3972 (and d!3165 d!3163)))

(assert (=> bs!3972 (= lambda!458 lambda!457)))

(declare-fun bs!3973 () Bool)

(assert (= bs!3973 (and d!3165 d!3141)))

(assert (=> bs!3973 (= lambda!458 lambda!451)))

(declare-fun bs!3974 () Bool)

(assert (= bs!3974 (and d!3165 d!3145)))

(assert (=> bs!3974 (= lambda!458 lambda!452)))

(declare-fun bs!3975 () Bool)

(assert (= bs!3975 (and d!3165 d!3151)))

(assert (=> bs!3975 (= lambda!458 lambda!453)))

(assert (=> d!3165 (= (inv!513 (_2!54 (_1!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))))) (forall!30 (exprs!515 (_2!54 (_1!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))))) lambda!458))))

(declare-fun bs!3976 () Bool)

(assert (= bs!3976 d!3165))

(declare-fun m!8261 () Bool)

(assert (=> bs!3976 m!8261))

(assert (=> b!31799 d!3165))

(declare-fun d!3167 () Bool)

(assert (=> d!3167 true))

(declare-fun lt!1719 () Bool)

(declare-fun rulesValidInductive!4 (LexerInterface!11 List!205) Bool)

(assert (=> d!3167 (= lt!1719 (rulesValidInductive!4 thiss!12222 rules!1369))))

(declare-fun lambda!461 () Int)

(declare-fun forall!33 (List!205 Int) Bool)

(assert (=> d!3167 (= lt!1719 (forall!33 rules!1369 lambda!461))))

(assert (=> d!3167 (= (rulesValid!4 thiss!12222 rules!1369) lt!1719)))

(declare-fun bs!3977 () Bool)

(assert (= bs!3977 d!3167))

(declare-fun m!8263 () Bool)

(assert (=> bs!3977 m!8263))

(declare-fun m!8265 () Bool)

(assert (=> bs!3977 m!8265))

(assert (=> d!3075 d!3167))

(declare-fun d!3169 () Bool)

(declare-fun lt!1722 () Int)

(assert (=> d!3169 (= lt!1722 (size!291 (list!97 (_1!53 lt!1676))))))

(declare-fun size!292 (Conc!27) Int)

(assert (=> d!3169 (= lt!1722 (size!292 (c!15161 (_1!53 lt!1676))))))

(assert (=> d!3169 (= (size!288 (_1!53 lt!1676)) lt!1722)))

(declare-fun bs!3978 () Bool)

(assert (= bs!3978 d!3169))

(assert (=> bs!3978 m!7967))

(assert (=> bs!3978 m!7967))

(declare-fun m!8267 () Bool)

(assert (=> bs!3978 m!8267))

(declare-fun m!8269 () Bool)

(assert (=> bs!3978 m!8269))

(assert (=> d!3057 d!3169))

(declare-fun bm!2618 () Bool)

(declare-fun call!2623 () Option!38)

(declare-fun maxPrefixOneRuleZipperSequence!3 (LexerInterface!11 Rule!18 BalanceConc!52) Option!38)

(assert (=> bm!2618 (= call!2623 (maxPrefixOneRuleZipperSequence!3 thiss!12222 (h!5599 rules!1369) (BalanceConc!53 Empty!26)))))

(declare-fun d!3171 () Bool)

(declare-fun e!14086 () Bool)

(assert (=> d!3171 e!14086))

(declare-fun res!26883 () Bool)

(assert (=> d!3171 (=> (not res!26883) (not e!14086))))

(declare-fun lt!1738 () Option!38)

(declare-fun isDefined!5 (Option!38) Bool)

(declare-fun isDefined!6 (Option!39) Bool)

(declare-fun maxPrefixZipper!3 (LexerInterface!11 List!205 List!202) Option!39)

(assert (=> d!3171 (= res!26883 (= (isDefined!5 lt!1738) (isDefined!6 (maxPrefixZipper!3 thiss!12222 rules!1369 (list!98 (BalanceConc!53 Empty!26))))))))

(declare-fun e!14085 () Option!38)

(assert (=> d!3171 (= lt!1738 e!14085)))

(declare-fun c!15236 () Bool)

(assert (=> d!3171 (= c!15236 (and ((_ is Cons!203) rules!1369) ((_ is Nil!203) (t!14790 rules!1369))))))

(declare-datatypes ((Unit!111 0))(
  ( (Unit!112) )
))
(declare-fun lt!1739 () Unit!111)

(declare-fun lt!1743 () Unit!111)

(assert (=> d!3171 (= lt!1739 lt!1743)))

(declare-fun lt!1740 () List!202)

(declare-fun lt!1742 () List!202)

(declare-fun isPrefix!3 (List!202 List!202) Bool)

(assert (=> d!3171 (isPrefix!3 lt!1740 lt!1742)))

(declare-fun lemmaIsPrefixRefl!3 (List!202 List!202) Unit!111)

(assert (=> d!3171 (= lt!1743 (lemmaIsPrefixRefl!3 lt!1740 lt!1742))))

(assert (=> d!3171 (= lt!1742 (list!98 (BalanceConc!53 Empty!26)))))

(assert (=> d!3171 (= lt!1740 (list!98 (BalanceConc!53 Empty!26)))))

(assert (=> d!3171 (rulesValidInductive!4 thiss!12222 rules!1369)))

(assert (=> d!3171 (= (maxPrefixZipperSequence!3 thiss!12222 rules!1369 (BalanceConc!53 Empty!26)) lt!1738)))

(declare-fun b!32099 () Bool)

(declare-fun lt!1737 () Option!38)

(declare-fun lt!1741 () Option!38)

(assert (=> b!32099 (= e!14085 (ite (and ((_ is None!37) lt!1737) ((_ is None!37) lt!1741)) None!37 (ite ((_ is None!37) lt!1741) lt!1737 (ite ((_ is None!37) lt!1737) lt!1741 (ite (>= (size!283 (_1!58 (v!12009 lt!1737))) (size!283 (_1!58 (v!12009 lt!1741)))) lt!1737 lt!1741)))))))

(assert (=> b!32099 (= lt!1737 call!2623)))

(assert (=> b!32099 (= lt!1741 (maxPrefixZipperSequence!3 thiss!12222 (t!14790 rules!1369) (BalanceConc!53 Empty!26)))))

(declare-fun b!32100 () Bool)

(declare-fun res!26880 () Bool)

(assert (=> b!32100 (=> (not res!26880) (not e!14086))))

(declare-fun e!14087 () Bool)

(assert (=> b!32100 (= res!26880 e!14087)))

(declare-fun res!26881 () Bool)

(assert (=> b!32100 (=> res!26881 e!14087)))

(assert (=> b!32100 (= res!26881 (not (isDefined!5 lt!1738)))))

(declare-fun b!32101 () Bool)

(declare-fun e!14089 () Bool)

(declare-fun e!14088 () Bool)

(assert (=> b!32101 (= e!14089 e!14088)))

(declare-fun res!26879 () Bool)

(assert (=> b!32101 (=> (not res!26879) (not e!14088))))

(declare-fun get!149 (Option!38) tuple2!96)

(declare-fun get!150 (Option!39) tuple2!100)

(assert (=> b!32101 (= res!26879 (= (_1!58 (get!149 lt!1738)) (_1!60 (get!150 (maxPrefix!3 thiss!12222 rules!1369 (list!98 (BalanceConc!53 Empty!26)))))))))

(declare-fun b!32102 () Bool)

(declare-fun e!14084 () Bool)

(assert (=> b!32102 (= e!14087 e!14084)))

(declare-fun res!26882 () Bool)

(assert (=> b!32102 (=> (not res!26882) (not e!14084))))

(assert (=> b!32102 (= res!26882 (= (_1!58 (get!149 lt!1738)) (_1!60 (get!150 (maxPrefixZipper!3 thiss!12222 rules!1369 (list!98 (BalanceConc!53 Empty!26)))))))))

(declare-fun b!32103 () Bool)

(assert (=> b!32103 (= e!14085 call!2623)))

(declare-fun b!32104 () Bool)

(assert (=> b!32104 (= e!14084 (= (list!98 (_2!58 (get!149 lt!1738))) (_2!60 (get!150 (maxPrefixZipper!3 thiss!12222 rules!1369 (list!98 (BalanceConc!53 Empty!26)))))))))

(declare-fun b!32105 () Bool)

(assert (=> b!32105 (= e!14088 (= (list!98 (_2!58 (get!149 lt!1738))) (_2!60 (get!150 (maxPrefix!3 thiss!12222 rules!1369 (list!98 (BalanceConc!53 Empty!26)))))))))

(declare-fun b!32106 () Bool)

(assert (=> b!32106 (= e!14086 e!14089)))

(declare-fun res!26884 () Bool)

(assert (=> b!32106 (=> res!26884 e!14089)))

(assert (=> b!32106 (= res!26884 (not (isDefined!5 lt!1738)))))

(assert (= (and d!3171 c!15236) b!32103))

(assert (= (and d!3171 (not c!15236)) b!32099))

(assert (= (or b!32103 b!32099) bm!2618))

(assert (= (and d!3171 res!26883) b!32100))

(assert (= (and b!32100 (not res!26881)) b!32102))

(assert (= (and b!32102 res!26882) b!32104))

(assert (= (and b!32100 res!26880) b!32106))

(assert (= (and b!32106 (not res!26884)) b!32101))

(assert (= (and b!32101 res!26879) b!32105))

(declare-fun m!8271 () Bool)

(assert (=> b!32100 m!8271))

(assert (=> d!3171 m!8263))

(declare-fun m!8273 () Bool)

(assert (=> d!3171 m!8273))

(declare-fun m!8275 () Bool)

(assert (=> d!3171 m!8275))

(declare-fun m!8277 () Bool)

(assert (=> d!3171 m!8277))

(assert (=> d!3171 m!7889))

(assert (=> d!3171 m!8275))

(assert (=> d!3171 m!8271))

(assert (=> d!3171 m!7889))

(declare-fun m!8279 () Bool)

(assert (=> d!3171 m!8279))

(declare-fun m!8281 () Bool)

(assert (=> b!32099 m!8281))

(declare-fun m!8283 () Bool)

(assert (=> b!32104 m!8283))

(assert (=> b!32104 m!7889))

(assert (=> b!32104 m!8275))

(declare-fun m!8285 () Bool)

(assert (=> b!32104 m!8285))

(declare-fun m!8287 () Bool)

(assert (=> b!32104 m!8287))

(assert (=> b!32104 m!7889))

(assert (=> b!32104 m!8275))

(assert (=> b!32101 m!8287))

(assert (=> b!32101 m!7889))

(assert (=> b!32101 m!7889))

(assert (=> b!32101 m!8241))

(assert (=> b!32101 m!8241))

(declare-fun m!8289 () Bool)

(assert (=> b!32101 m!8289))

(assert (=> b!32102 m!8287))

(assert (=> b!32102 m!7889))

(assert (=> b!32102 m!7889))

(assert (=> b!32102 m!8275))

(assert (=> b!32102 m!8275))

(assert (=> b!32102 m!8285))

(declare-fun m!8291 () Bool)

(assert (=> bm!2618 m!8291))

(assert (=> b!32105 m!8283))

(assert (=> b!32105 m!7889))

(assert (=> b!32105 m!8241))

(assert (=> b!32105 m!8287))

(assert (=> b!32105 m!7889))

(assert (=> b!32105 m!8241))

(assert (=> b!32105 m!8289))

(assert (=> b!32106 m!8271))

(assert (=> d!3057 d!3171))

(declare-fun d!3173 () Bool)

(assert (=> d!3173 (= (list!97 (_1!53 lt!1676)) (list!100 (c!15161 (_1!53 lt!1676))))))

(declare-fun bs!3979 () Bool)

(assert (= bs!3979 d!3173))

(declare-fun m!8293 () Bool)

(assert (=> bs!3979 m!8293))

(assert (=> b!31760 d!3173))

(assert (=> b!31760 d!3149))

(assert (=> b!31760 d!3073))

(declare-fun d!3175 () Bool)

(declare-fun e!14092 () Bool)

(assert (=> d!3175 e!14092))

(declare-fun res!26887 () Bool)

(assert (=> d!3175 (=> (not res!26887) (not e!14092))))

(declare-fun prepend!9 (Conc!27 Token!12) Conc!27)

(assert (=> d!3175 (= res!26887 (isBalanced!12 (prepend!9 (c!15161 (_1!53 lt!1674)) (_1!58 (v!12009 lt!1675)))))))

(declare-fun lt!1746 () BalanceConc!54)

(assert (=> d!3175 (= lt!1746 (BalanceConc!55 (prepend!9 (c!15161 (_1!53 lt!1674)) (_1!58 (v!12009 lt!1675)))))))

(assert (=> d!3175 (= (prepend!8 (_1!53 lt!1674) (_1!58 (v!12009 lt!1675))) lt!1746)))

(declare-fun b!32109 () Bool)

(assert (=> b!32109 (= e!14092 (= (list!97 lt!1746) (Cons!202 (_1!58 (v!12009 lt!1675)) (list!97 (_1!53 lt!1674)))))))

(assert (= (and d!3175 res!26887) b!32109))

(declare-fun m!8295 () Bool)

(assert (=> d!3175 m!8295))

(assert (=> d!3175 m!8295))

(declare-fun m!8297 () Bool)

(assert (=> d!3175 m!8297))

(declare-fun m!8299 () Bool)

(assert (=> b!32109 m!8299))

(declare-fun m!8301 () Bool)

(assert (=> b!32109 m!8301))

(assert (=> b!31758 d!3175))

(declare-fun b!32110 () Bool)

(declare-fun e!14094 () Bool)

(declare-fun e!14095 () Bool)

(assert (=> b!32110 (= e!14094 e!14095)))

(declare-fun res!26889 () Bool)

(declare-fun lt!1749 () tuple2!88)

(assert (=> b!32110 (= res!26889 (< (size!287 (_2!53 lt!1749)) (size!287 (_2!58 (v!12009 lt!1675)))))))

(assert (=> b!32110 (=> (not res!26889) (not e!14095))))

(declare-fun d!3177 () Bool)

(declare-fun e!14096 () Bool)

(assert (=> d!3177 e!14096))

(declare-fun res!26888 () Bool)

(assert (=> d!3177 (=> (not res!26888) (not e!14096))))

(assert (=> d!3177 (= res!26888 e!14094)))

(declare-fun c!15239 () Bool)

(assert (=> d!3177 (= c!15239 (> (size!288 (_1!53 lt!1749)) 0))))

(declare-fun e!14093 () tuple2!88)

(assert (=> d!3177 (= lt!1749 e!14093)))

(declare-fun c!15238 () Bool)

(declare-fun lt!1748 () Option!38)

(assert (=> d!3177 (= c!15238 ((_ is Some!37) lt!1748))))

(assert (=> d!3177 (= lt!1748 (maxPrefixZipperSequence!3 thiss!12222 rules!1369 (_2!58 (v!12009 lt!1675))))))

(assert (=> d!3177 (= (lexRec!4 thiss!12222 rules!1369 (_2!58 (v!12009 lt!1675))) lt!1749)))

(declare-fun b!32111 () Bool)

(assert (=> b!32111 (= e!14094 (= (list!98 (_2!53 lt!1749)) (list!98 (_2!58 (v!12009 lt!1675)))))))

(declare-fun b!32112 () Bool)

(assert (=> b!32112 (= e!14096 (= (list!98 (_2!53 lt!1749)) (_2!59 (lexList!3 thiss!12222 rules!1369 (list!98 (_2!58 (v!12009 lt!1675)))))))))

(declare-fun b!32113 () Bool)

(assert (=> b!32113 (= e!14095 (not (isEmpty!63 (_1!53 lt!1749))))))

(declare-fun b!32114 () Bool)

(declare-fun lt!1747 () tuple2!88)

(assert (=> b!32114 (= e!14093 (tuple2!89 (prepend!8 (_1!53 lt!1747) (_1!58 (v!12009 lt!1748))) (_2!53 lt!1747)))))

(assert (=> b!32114 (= lt!1747 (lexRec!4 thiss!12222 rules!1369 (_2!58 (v!12009 lt!1748))))))

(declare-fun b!32115 () Bool)

(assert (=> b!32115 (= e!14093 (tuple2!89 (BalanceConc!55 Empty!27) (_2!58 (v!12009 lt!1675))))))

(declare-fun b!32116 () Bool)

(declare-fun res!26890 () Bool)

(assert (=> b!32116 (=> (not res!26890) (not e!14096))))

(assert (=> b!32116 (= res!26890 (= (list!97 (_1!53 lt!1749)) (_1!59 (lexList!3 thiss!12222 rules!1369 (list!98 (_2!58 (v!12009 lt!1675)))))))))

(assert (= (and d!3177 c!15238) b!32114))

(assert (= (and d!3177 (not c!15238)) b!32115))

(assert (= (and d!3177 c!15239) b!32110))

(assert (= (and d!3177 (not c!15239)) b!32111))

(assert (= (and b!32110 res!26889) b!32113))

(assert (= (and d!3177 res!26888) b!32116))

(assert (= (and b!32116 res!26890) b!32112))

(declare-fun m!8303 () Bool)

(assert (=> b!32116 m!8303))

(declare-fun m!8305 () Bool)

(assert (=> b!32116 m!8305))

(assert (=> b!32116 m!8305))

(declare-fun m!8307 () Bool)

(assert (=> b!32116 m!8307))

(declare-fun m!8309 () Bool)

(assert (=> b!32114 m!8309))

(declare-fun m!8311 () Bool)

(assert (=> b!32114 m!8311))

(declare-fun m!8313 () Bool)

(assert (=> b!32112 m!8313))

(assert (=> b!32112 m!8305))

(assert (=> b!32112 m!8305))

(assert (=> b!32112 m!8307))

(declare-fun m!8315 () Bool)

(assert (=> b!32113 m!8315))

(declare-fun m!8317 () Bool)

(assert (=> d!3177 m!8317))

(declare-fun m!8319 () Bool)

(assert (=> d!3177 m!8319))

(declare-fun m!8321 () Bool)

(assert (=> b!32110 m!8321))

(declare-fun m!8323 () Bool)

(assert (=> b!32110 m!8323))

(assert (=> b!32111 m!8313))

(assert (=> b!32111 m!8305))

(assert (=> b!31758 d!3177))

(declare-fun d!3179 () Bool)

(assert (=> d!3179 true))

(declare-fun order!47 () Int)

(declare-fun lambda!464 () Int)

(declare-fun order!45 () Int)

(declare-fun dynLambda!25 (Int Int) Int)

(declare-fun dynLambda!26 (Int Int) Int)

(assert (=> d!3179 (< (dynLambda!25 order!45 (toChars!443 (transformation!109 (h!5599 rules!1369)))) (dynLambda!26 order!47 lambda!464))))

(assert (=> d!3179 true))

(declare-fun order!49 () Int)

(declare-fun dynLambda!27 (Int Int) Int)

(assert (=> d!3179 (< (dynLambda!27 order!49 (toValue!584 (transformation!109 (h!5599 rules!1369)))) (dynLambda!26 order!47 lambda!464))))

(declare-fun Forall!14 (Int) Bool)

(assert (=> d!3179 (= (semiInverseModEq!12 (toChars!443 (transformation!109 (h!5599 rules!1369))) (toValue!584 (transformation!109 (h!5599 rules!1369)))) (Forall!14 lambda!464))))

(declare-fun bs!3980 () Bool)

(assert (= bs!3980 d!3179))

(declare-fun m!8325 () Bool)

(assert (=> bs!3980 m!8325))

(assert (=> d!3067 d!3179))

(declare-fun b!32122 () Bool)

(declare-fun e!14097 () List!202)

(declare-fun e!14098 () List!202)

(assert (=> b!32122 (= e!14097 e!14098)))

(declare-fun c!15241 () Bool)

(assert (=> b!32122 (= c!15241 ((_ is Leaf!157) (c!15160 (BalanceConc!53 Empty!26))))))

(declare-fun b!32121 () Bool)

(assert (=> b!32121 (= e!14097 Nil!200)))

(declare-fun b!32124 () Bool)

(assert (=> b!32124 (= e!14098 (++!45 (list!99 (left!346 (c!15160 (BalanceConc!53 Empty!26)))) (list!99 (right!676 (c!15160 (BalanceConc!53 Empty!26))))))))

(declare-fun d!3181 () Bool)

(declare-fun c!15240 () Bool)

(assert (=> d!3181 (= c!15240 ((_ is Empty!26) (c!15160 (BalanceConc!53 Empty!26))))))

(assert (=> d!3181 (= (list!99 (c!15160 (BalanceConc!53 Empty!26))) e!14097)))

(declare-fun b!32123 () Bool)

(assert (=> b!32123 (= e!14098 (list!101 (xs!2603 (c!15160 (BalanceConc!53 Empty!26)))))))

(assert (= (and d!3181 c!15240) b!32121))

(assert (= (and d!3181 (not c!15240)) b!32122))

(assert (= (and b!32122 c!15241) b!32123))

(assert (= (and b!32122 (not c!15241)) b!32124))

(declare-fun m!8327 () Bool)

(assert (=> b!32124 m!8327))

(declare-fun m!8329 () Bool)

(assert (=> b!32124 m!8329))

(assert (=> b!32124 m!8327))

(assert (=> b!32124 m!8329))

(declare-fun m!8331 () Bool)

(assert (=> b!32124 m!8331))

(declare-fun m!8333 () Bool)

(assert (=> b!32123 m!8333))

(assert (=> d!3073 d!3181))

(declare-fun b!32137 () Bool)

(declare-fun res!26907 () Bool)

(declare-fun e!14103 () Bool)

(assert (=> b!32137 (=> (not res!26907) (not e!14103))))

(assert (=> b!32137 (= res!26907 (<= (- (height!6 (left!347 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))))) (height!6 (right!677 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))))) 1))))

(declare-fun b!32138 () Bool)

(declare-fun res!26905 () Bool)

(assert (=> b!32138 (=> (not res!26905) (not e!14103))))

(assert (=> b!32138 (= res!26905 (isBalanced!12 (left!347 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))))))))

(declare-fun b!32139 () Bool)

(declare-fun e!14104 () Bool)

(assert (=> b!32139 (= e!14104 e!14103)))

(declare-fun res!26908 () Bool)

(assert (=> b!32139 (=> (not res!26908) (not e!14103))))

(assert (=> b!32139 (= res!26908 (<= (- 1) (- (height!6 (left!347 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))))) (height!6 (right!677 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))))))))))

(declare-fun b!32140 () Bool)

(declare-fun res!26904 () Bool)

(assert (=> b!32140 (=> (not res!26904) (not e!14103))))

(assert (=> b!32140 (= res!26904 (isBalanced!12 (right!677 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))))))))

(declare-fun b!32141 () Bool)

(assert (=> b!32141 (= e!14103 (not (isEmpty!65 (right!677 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))))))))

(declare-fun b!32142 () Bool)

(declare-fun res!26906 () Bool)

(assert (=> b!32142 (=> (not res!26906) (not e!14103))))

(assert (=> b!32142 (= res!26906 (not (isEmpty!65 (left!347 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))))))))

(declare-fun d!3183 () Bool)

(declare-fun res!26903 () Bool)

(assert (=> d!3183 (=> res!26903 e!14104)))

(assert (=> d!3183 (= res!26903 (not ((_ is Node!27) (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))))))))

(assert (=> d!3183 (= (isBalanced!12 (++!46 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660)))) e!14104)))

(assert (= (and d!3183 (not res!26903)) b!32139))

(assert (= (and b!32139 res!26908) b!32137))

(assert (= (and b!32137 res!26907) b!32138))

(assert (= (and b!32138 res!26905) b!32140))

(assert (= (and b!32140 res!26904) b!32142))

(assert (= (and b!32142 res!26906) b!32141))

(declare-fun m!8335 () Bool)

(assert (=> b!32142 m!8335))

(declare-fun m!8337 () Bool)

(assert (=> b!32140 m!8337))

(declare-fun m!8339 () Bool)

(assert (=> b!32138 m!8339))

(declare-fun m!8341 () Bool)

(assert (=> b!32139 m!8341))

(declare-fun m!8343 () Bool)

(assert (=> b!32139 m!8343))

(assert (=> b!32137 m!8341))

(assert (=> b!32137 m!8343))

(declare-fun m!8345 () Bool)

(assert (=> b!32141 m!8345))

(assert (=> b!31729 d!3183))

(assert (=> b!31729 d!3133))

(declare-fun bs!3981 () Bool)

(declare-fun d!3185 () Bool)

(assert (= bs!3981 (and d!3185 d!3161)))

(declare-fun lambda!465 () Int)

(assert (=> bs!3981 (= lambda!465 lambda!456)))

(declare-fun bs!3982 () Bool)

(assert (= bs!3982 (and d!3185 d!3153)))

(assert (=> bs!3982 (= lambda!465 lambda!454)))

(declare-fun bs!3983 () Bool)

(assert (= bs!3983 (and d!3185 d!3123)))

(assert (=> bs!3983 (= lambda!465 lambda!449)))

(declare-fun bs!3984 () Bool)

(assert (= bs!3984 (and d!3185 d!3089)))

(assert (=> bs!3984 (= lambda!465 lambda!446)))

(declare-fun bs!3985 () Bool)

(assert (= bs!3985 (and d!3185 d!3087)))

(assert (=> bs!3985 (= lambda!465 lambda!445)))

(declare-fun bs!3986 () Bool)

(assert (= bs!3986 (and d!3185 d!3091)))

(assert (=> bs!3986 (= lambda!465 lambda!447)))

(declare-fun bs!3987 () Bool)

(assert (= bs!3987 (and d!3185 d!3155)))

(assert (=> bs!3987 (= lambda!465 lambda!455)))

(declare-fun bs!3988 () Bool)

(assert (= bs!3988 (and d!3185 d!3129)))

(assert (=> bs!3988 (= lambda!465 lambda!450)))

(declare-fun bs!3989 () Bool)

(assert (= bs!3989 (and d!3185 d!3165)))

(assert (=> bs!3989 (= lambda!465 lambda!458)))

(declare-fun bs!3990 () Bool)

(assert (= bs!3990 (and d!3185 d!3119)))

(assert (=> bs!3990 (= lambda!465 lambda!448)))

(declare-fun bs!3991 () Bool)

(assert (= bs!3991 (and d!3185 d!3077)))

(assert (=> bs!3991 (= lambda!465 lambda!438)))

(declare-fun bs!3992 () Bool)

(assert (= bs!3992 (and d!3185 d!3163)))

(assert (=> bs!3992 (= lambda!465 lambda!457)))

(declare-fun bs!3993 () Bool)

(assert (= bs!3993 (and d!3185 d!3141)))

(assert (=> bs!3993 (= lambda!465 lambda!451)))

(declare-fun bs!3994 () Bool)

(assert (= bs!3994 (and d!3185 d!3145)))

(assert (=> bs!3994 (= lambda!465 lambda!452)))

(declare-fun bs!3995 () Bool)

(assert (= bs!3995 (and d!3185 d!3151)))

(assert (=> bs!3995 (= lambda!465 lambda!453)))

(assert (=> d!3185 (= (inv!513 setElem!225) (forall!30 (exprs!515 setElem!225) lambda!465))))

(declare-fun bs!3996 () Bool)

(assert (= bs!3996 d!3185))

(declare-fun m!8347 () Bool)

(assert (=> bs!3996 m!8347))

(assert (=> setNonEmpty!225 d!3185))

(declare-fun b!32145 () Bool)

(declare-fun res!26910 () Bool)

(declare-fun e!14106 () Bool)

(assert (=> b!32145 (=> (not res!26910) (not e!14106))))

(declare-fun lt!1750 () List!202)

(assert (=> b!32145 (= res!26910 (= (size!289 lt!1750) (+ (size!289 (t!14787 lt!1657)) (size!289 lt!1658))))))

(declare-fun b!32144 () Bool)

(declare-fun e!14105 () List!202)

(assert (=> b!32144 (= e!14105 (Cons!200 (h!5596 (t!14787 lt!1657)) (++!45 (t!14787 (t!14787 lt!1657)) lt!1658)))))

(declare-fun d!3187 () Bool)

(assert (=> d!3187 e!14106))

(declare-fun res!26909 () Bool)

(assert (=> d!3187 (=> (not res!26909) (not e!14106))))

(assert (=> d!3187 (= res!26909 (= (content!19 lt!1750) ((_ map or) (content!19 (t!14787 lt!1657)) (content!19 lt!1658))))))

(assert (=> d!3187 (= lt!1750 e!14105)))

(declare-fun c!15242 () Bool)

(assert (=> d!3187 (= c!15242 ((_ is Nil!200) (t!14787 lt!1657)))))

(assert (=> d!3187 (= (++!45 (t!14787 lt!1657) lt!1658) lt!1750)))

(declare-fun b!32143 () Bool)

(assert (=> b!32143 (= e!14105 lt!1658)))

(declare-fun b!32146 () Bool)

(assert (=> b!32146 (= e!14106 (or (not (= lt!1658 Nil!200)) (= lt!1750 (t!14787 lt!1657))))))

(assert (= (and d!3187 c!15242) b!32143))

(assert (= (and d!3187 (not c!15242)) b!32144))

(assert (= (and d!3187 res!26909) b!32145))

(assert (= (and b!32145 res!26910) b!32146))

(declare-fun m!8349 () Bool)

(assert (=> b!32145 m!8349))

(assert (=> b!32145 m!8127))

(assert (=> b!32145 m!7995))

(declare-fun m!8351 () Bool)

(assert (=> b!32144 m!8351))

(declare-fun m!8353 () Bool)

(assert (=> d!3187 m!8353))

(declare-fun m!8355 () Bool)

(assert (=> d!3187 m!8355))

(assert (=> d!3187 m!8003))

(assert (=> b!31773 d!3187))

(assert (=> b!31749 d!3117))

(declare-fun b!32147 () Bool)

(declare-fun e!14109 () Bool)

(declare-fun lt!1753 () tuple2!98)

(assert (=> b!32147 (= e!14109 (not (isEmpty!64 (_1!59 lt!1753))))))

(declare-fun b!32148 () Bool)

(declare-fun e!14107 () Bool)

(assert (=> b!32148 (= e!14107 e!14109)))

(declare-fun res!26911 () Bool)

(assert (=> b!32148 (= res!26911 (< (size!289 (_2!59 lt!1753)) (size!289 (list!98 input!768))))))

(assert (=> b!32148 (=> (not res!26911) (not e!14109))))

(declare-fun b!32149 () Bool)

(assert (=> b!32149 (= e!14107 (= (_2!59 lt!1753) (list!98 input!768)))))

(declare-fun d!3189 () Bool)

(assert (=> d!3189 e!14107))

(declare-fun c!15243 () Bool)

(assert (=> d!3189 (= c!15243 (> (size!291 (_1!59 lt!1753)) 0))))

(declare-fun e!14108 () tuple2!98)

(assert (=> d!3189 (= lt!1753 e!14108)))

(declare-fun c!15244 () Bool)

(declare-fun lt!1751 () Option!39)

(assert (=> d!3189 (= c!15244 ((_ is Some!38) lt!1751))))

(assert (=> d!3189 (= lt!1751 (maxPrefix!3 thiss!12222 rules!1369 (list!98 input!768)))))

(assert (=> d!3189 (= (lexList!3 thiss!12222 rules!1369 (list!98 input!768)) lt!1753)))

(declare-fun b!32150 () Bool)

(assert (=> b!32150 (= e!14108 (tuple2!99 Nil!202 (list!98 input!768)))))

(declare-fun b!32151 () Bool)

(declare-fun lt!1752 () tuple2!98)

(assert (=> b!32151 (= e!14108 (tuple2!99 (Cons!202 (_1!60 (v!12011 lt!1751)) (_1!59 lt!1752)) (_2!59 lt!1752)))))

(assert (=> b!32151 (= lt!1752 (lexList!3 thiss!12222 rules!1369 (_2!60 (v!12011 lt!1751))))))

(assert (= (and d!3189 c!15244) b!32151))

(assert (= (and d!3189 (not c!15244)) b!32150))

(assert (= (and d!3189 c!15243) b!32148))

(assert (= (and d!3189 (not c!15243)) b!32149))

(assert (= (and b!32148 res!26911) b!32147))

(declare-fun m!8357 () Bool)

(assert (=> b!32147 m!8357))

(declare-fun m!8359 () Bool)

(assert (=> b!32148 m!8359))

(assert (=> b!32148 m!7887))

(declare-fun m!8361 () Bool)

(assert (=> b!32148 m!8361))

(declare-fun m!8363 () Bool)

(assert (=> d!3189 m!8363))

(assert (=> d!3189 m!7887))

(declare-fun m!8365 () Bool)

(assert (=> d!3189 m!8365))

(declare-fun m!8367 () Bool)

(assert (=> b!32151 m!8367))

(assert (=> b!31749 d!3189))

(assert (=> b!31749 d!3071))

(declare-fun d!3191 () Bool)

(declare-fun c!15245 () Bool)

(assert (=> d!3191 (= c!15245 ((_ is Node!26) (left!346 (c!15160 input!768))))))

(declare-fun e!14110 () Bool)

(assert (=> d!3191 (= (inv!510 (left!346 (c!15160 input!768))) e!14110)))

(declare-fun b!32152 () Bool)

(assert (=> b!32152 (= e!14110 (inv!511 (left!346 (c!15160 input!768))))))

(declare-fun b!32153 () Bool)

(declare-fun e!14111 () Bool)

(assert (=> b!32153 (= e!14110 e!14111)))

(declare-fun res!26912 () Bool)

(assert (=> b!32153 (= res!26912 (not ((_ is Leaf!157) (left!346 (c!15160 input!768)))))))

(assert (=> b!32153 (=> res!26912 e!14111)))

(declare-fun b!32154 () Bool)

(assert (=> b!32154 (= e!14111 (inv!512 (left!346 (c!15160 input!768))))))

(assert (= (and d!3191 c!15245) b!32152))

(assert (= (and d!3191 (not c!15245)) b!32153))

(assert (= (and b!32153 (not res!26912)) b!32154))

(declare-fun m!8369 () Bool)

(assert (=> b!32152 m!8369))

(declare-fun m!8371 () Bool)

(assert (=> b!32154 m!8371))

(assert (=> b!31812 d!3191))

(declare-fun d!3193 () Bool)

(declare-fun c!15246 () Bool)

(assert (=> d!3193 (= c!15246 ((_ is Node!26) (right!676 (c!15160 input!768))))))

(declare-fun e!14112 () Bool)

(assert (=> d!3193 (= (inv!510 (right!676 (c!15160 input!768))) e!14112)))

(declare-fun b!32155 () Bool)

(assert (=> b!32155 (= e!14112 (inv!511 (right!676 (c!15160 input!768))))))

(declare-fun b!32156 () Bool)

(declare-fun e!14113 () Bool)

(assert (=> b!32156 (= e!14112 e!14113)))

(declare-fun res!26913 () Bool)

(assert (=> b!32156 (= res!26913 (not ((_ is Leaf!157) (right!676 (c!15160 input!768)))))))

(assert (=> b!32156 (=> res!26913 e!14113)))

(declare-fun b!32157 () Bool)

(assert (=> b!32157 (= e!14113 (inv!512 (right!676 (c!15160 input!768))))))

(assert (= (and d!3193 c!15246) b!32155))

(assert (= (and d!3193 (not c!15246)) b!32156))

(assert (= (and b!32156 (not res!26913)) b!32157))

(declare-fun m!8373 () Bool)

(assert (=> b!32155 m!8373))

(declare-fun m!8375 () Bool)

(assert (=> b!32157 m!8375))

(assert (=> b!31812 d!3193))

(assert (=> b!31717 d!3079))

(declare-fun d!3195 () Bool)

(declare-fun lt!1754 () Int)

(assert (=> d!3195 (= lt!1754 (size!289 (list!98 (_2!53 lt!1673))))))

(assert (=> d!3195 (= lt!1754 (size!290 (c!15160 (_2!53 lt!1673))))))

(assert (=> d!3195 (= (size!287 (_2!53 lt!1673)) lt!1754)))

(declare-fun bs!3997 () Bool)

(assert (= bs!3997 d!3195))

(assert (=> bs!3997 m!7951))

(assert (=> bs!3997 m!7951))

(declare-fun m!8377 () Bool)

(assert (=> bs!3997 m!8377))

(declare-fun m!8379 () Bool)

(assert (=> bs!3997 m!8379))

(assert (=> b!31747 d!3195))

(declare-fun d!3197 () Bool)

(declare-fun lt!1755 () Int)

(assert (=> d!3197 (= lt!1755 (size!289 (list!98 input!768)))))

(assert (=> d!3197 (= lt!1755 (size!290 (c!15160 input!768)))))

(assert (=> d!3197 (= (size!287 input!768) lt!1755)))

(declare-fun bs!3998 () Bool)

(assert (= bs!3998 d!3197))

(assert (=> bs!3998 m!7887))

(assert (=> bs!3998 m!7887))

(assert (=> bs!3998 m!8361))

(declare-fun m!8381 () Bool)

(assert (=> bs!3998 m!8381))

(assert (=> b!31747 d!3197))

(declare-fun bs!3999 () Bool)

(declare-fun d!3199 () Bool)

(assert (= bs!3999 (and d!3199 d!3161)))

(declare-fun lambda!466 () Int)

(assert (=> bs!3999 (= lambda!466 lambda!456)))

(declare-fun bs!4000 () Bool)

(assert (= bs!4000 (and d!3199 d!3153)))

(assert (=> bs!4000 (= lambda!466 lambda!454)))

(declare-fun bs!4001 () Bool)

(assert (= bs!4001 (and d!3199 d!3123)))

(assert (=> bs!4001 (= lambda!466 lambda!449)))

(declare-fun bs!4002 () Bool)

(assert (= bs!4002 (and d!3199 d!3089)))

(assert (=> bs!4002 (= lambda!466 lambda!446)))

(declare-fun bs!4003 () Bool)

(assert (= bs!4003 (and d!3199 d!3087)))

(assert (=> bs!4003 (= lambda!466 lambda!445)))

(declare-fun bs!4004 () Bool)

(assert (= bs!4004 (and d!3199 d!3091)))

(assert (=> bs!4004 (= lambda!466 lambda!447)))

(declare-fun bs!4005 () Bool)

(assert (= bs!4005 (and d!3199 d!3129)))

(assert (=> bs!4005 (= lambda!466 lambda!450)))

(declare-fun bs!4006 () Bool)

(assert (= bs!4006 (and d!3199 d!3165)))

(assert (=> bs!4006 (= lambda!466 lambda!458)))

(declare-fun bs!4007 () Bool)

(assert (= bs!4007 (and d!3199 d!3119)))

(assert (=> bs!4007 (= lambda!466 lambda!448)))

(declare-fun bs!4008 () Bool)

(assert (= bs!4008 (and d!3199 d!3077)))

(assert (=> bs!4008 (= lambda!466 lambda!438)))

(declare-fun bs!4009 () Bool)

(assert (= bs!4009 (and d!3199 d!3163)))

(assert (=> bs!4009 (= lambda!466 lambda!457)))

(declare-fun bs!4010 () Bool)

(assert (= bs!4010 (and d!3199 d!3141)))

(assert (=> bs!4010 (= lambda!466 lambda!451)))

(declare-fun bs!4011 () Bool)

(assert (= bs!4011 (and d!3199 d!3155)))

(assert (=> bs!4011 (= lambda!466 lambda!455)))

(declare-fun bs!4012 () Bool)

(assert (= bs!4012 (and d!3199 d!3185)))

(assert (=> bs!4012 (= lambda!466 lambda!465)))

(declare-fun bs!4013 () Bool)

(assert (= bs!4013 (and d!3199 d!3145)))

(assert (=> bs!4013 (= lambda!466 lambda!452)))

(declare-fun bs!4014 () Bool)

(assert (= bs!4014 (and d!3199 d!3151)))

(assert (=> bs!4014 (= lambda!466 lambda!453)))

(assert (=> d!3199 (= (inv!513 (_2!54 (_1!55 (h!5601 mapDefault!103)))) (forall!30 (exprs!515 (_2!54 (_1!55 (h!5601 mapDefault!103)))) lambda!466))))

(declare-fun bs!4015 () Bool)

(assert (= bs!4015 d!3199))

(declare-fun m!8383 () Bool)

(assert (=> bs!4015 m!8383))

(assert (=> b!31856 d!3199))

(assert (=> b!31702 d!3025))

(declare-fun bs!4016 () Bool)

(declare-fun d!3201 () Bool)

(assert (= bs!4016 (and d!3201 d!3161)))

(declare-fun lambda!467 () Int)

(assert (=> bs!4016 (= lambda!467 lambda!456)))

(declare-fun bs!4017 () Bool)

(assert (= bs!4017 (and d!3201 d!3153)))

(assert (=> bs!4017 (= lambda!467 lambda!454)))

(declare-fun bs!4018 () Bool)

(assert (= bs!4018 (and d!3201 d!3089)))

(assert (=> bs!4018 (= lambda!467 lambda!446)))

(declare-fun bs!4019 () Bool)

(assert (= bs!4019 (and d!3201 d!3087)))

(assert (=> bs!4019 (= lambda!467 lambda!445)))

(declare-fun bs!4020 () Bool)

(assert (= bs!4020 (and d!3201 d!3091)))

(assert (=> bs!4020 (= lambda!467 lambda!447)))

(declare-fun bs!4021 () Bool)

(assert (= bs!4021 (and d!3201 d!3129)))

(assert (=> bs!4021 (= lambda!467 lambda!450)))

(declare-fun bs!4022 () Bool)

(assert (= bs!4022 (and d!3201 d!3165)))

(assert (=> bs!4022 (= lambda!467 lambda!458)))

(declare-fun bs!4023 () Bool)

(assert (= bs!4023 (and d!3201 d!3119)))

(assert (=> bs!4023 (= lambda!467 lambda!448)))

(declare-fun bs!4024 () Bool)

(assert (= bs!4024 (and d!3201 d!3077)))

(assert (=> bs!4024 (= lambda!467 lambda!438)))

(declare-fun bs!4025 () Bool)

(assert (= bs!4025 (and d!3201 d!3163)))

(assert (=> bs!4025 (= lambda!467 lambda!457)))

(declare-fun bs!4026 () Bool)

(assert (= bs!4026 (and d!3201 d!3141)))

(assert (=> bs!4026 (= lambda!467 lambda!451)))

(declare-fun bs!4027 () Bool)

(assert (= bs!4027 (and d!3201 d!3199)))

(assert (=> bs!4027 (= lambda!467 lambda!466)))

(declare-fun bs!4028 () Bool)

(assert (= bs!4028 (and d!3201 d!3123)))

(assert (=> bs!4028 (= lambda!467 lambda!449)))

(declare-fun bs!4029 () Bool)

(assert (= bs!4029 (and d!3201 d!3155)))

(assert (=> bs!4029 (= lambda!467 lambda!455)))

(declare-fun bs!4030 () Bool)

(assert (= bs!4030 (and d!3201 d!3185)))

(assert (=> bs!4030 (= lambda!467 lambda!465)))

(declare-fun bs!4031 () Bool)

(assert (= bs!4031 (and d!3201 d!3145)))

(assert (=> bs!4031 (= lambda!467 lambda!452)))

(declare-fun bs!4032 () Bool)

(assert (= bs!4032 (and d!3201 d!3151)))

(assert (=> bs!4032 (= lambda!467 lambda!453)))

(assert (=> d!3201 (= (inv!513 (_1!56 (_1!57 (h!5602 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))))) (forall!30 (exprs!515 (_1!56 (_1!57 (h!5602 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))))) lambda!467))))

(declare-fun bs!4033 () Bool)

(assert (= bs!4033 d!3201))

(declare-fun m!8385 () Bool)

(assert (=> bs!4033 m!8385))

(assert (=> b!31868 d!3201))

(declare-fun bs!4034 () Bool)

(declare-fun d!3203 () Bool)

(assert (= bs!4034 (and d!3203 d!3161)))

(declare-fun lambda!468 () Int)

(assert (=> bs!4034 (= lambda!468 lambda!456)))

(declare-fun bs!4035 () Bool)

(assert (= bs!4035 (and d!3203 d!3201)))

(assert (=> bs!4035 (= lambda!468 lambda!467)))

(declare-fun bs!4036 () Bool)

(assert (= bs!4036 (and d!3203 d!3153)))

(assert (=> bs!4036 (= lambda!468 lambda!454)))

(declare-fun bs!4037 () Bool)

(assert (= bs!4037 (and d!3203 d!3089)))

(assert (=> bs!4037 (= lambda!468 lambda!446)))

(declare-fun bs!4038 () Bool)

(assert (= bs!4038 (and d!3203 d!3087)))

(assert (=> bs!4038 (= lambda!468 lambda!445)))

(declare-fun bs!4039 () Bool)

(assert (= bs!4039 (and d!3203 d!3091)))

(assert (=> bs!4039 (= lambda!468 lambda!447)))

(declare-fun bs!4040 () Bool)

(assert (= bs!4040 (and d!3203 d!3129)))

(assert (=> bs!4040 (= lambda!468 lambda!450)))

(declare-fun bs!4041 () Bool)

(assert (= bs!4041 (and d!3203 d!3165)))

(assert (=> bs!4041 (= lambda!468 lambda!458)))

(declare-fun bs!4042 () Bool)

(assert (= bs!4042 (and d!3203 d!3119)))

(assert (=> bs!4042 (= lambda!468 lambda!448)))

(declare-fun bs!4043 () Bool)

(assert (= bs!4043 (and d!3203 d!3077)))

(assert (=> bs!4043 (= lambda!468 lambda!438)))

(declare-fun bs!4044 () Bool)

(assert (= bs!4044 (and d!3203 d!3163)))

(assert (=> bs!4044 (= lambda!468 lambda!457)))

(declare-fun bs!4045 () Bool)

(assert (= bs!4045 (and d!3203 d!3141)))

(assert (=> bs!4045 (= lambda!468 lambda!451)))

(declare-fun bs!4046 () Bool)

(assert (= bs!4046 (and d!3203 d!3199)))

(assert (=> bs!4046 (= lambda!468 lambda!466)))

(declare-fun bs!4047 () Bool)

(assert (= bs!4047 (and d!3203 d!3123)))

(assert (=> bs!4047 (= lambda!468 lambda!449)))

(declare-fun bs!4048 () Bool)

(assert (= bs!4048 (and d!3203 d!3155)))

(assert (=> bs!4048 (= lambda!468 lambda!455)))

(declare-fun bs!4049 () Bool)

(assert (= bs!4049 (and d!3203 d!3185)))

(assert (=> bs!4049 (= lambda!468 lambda!465)))

(declare-fun bs!4050 () Bool)

(assert (= bs!4050 (and d!3203 d!3145)))

(assert (=> bs!4050 (= lambda!468 lambda!452)))

(declare-fun bs!4051 () Bool)

(assert (= bs!4051 (and d!3203 d!3151)))

(assert (=> bs!4051 (= lambda!468 lambda!453)))

(assert (=> d!3203 (= (inv!513 (_1!56 (_1!57 (h!5602 mapDefault!106)))) (forall!30 (exprs!515 (_1!56 (_1!57 (h!5602 mapDefault!106)))) lambda!468))))

(declare-fun bs!4052 () Bool)

(assert (= bs!4052 d!3203))

(declare-fun m!8387 () Bool)

(assert (=> bs!4052 m!8387))

(assert (=> b!31888 d!3203))

(assert (=> b!31731 d!3131))

(assert (=> b!31731 d!3133))

(assert (=> b!31731 d!3135))

(assert (=> b!31731 d!3137))

(assert (=> b!31731 d!3139))

(declare-fun d!3205 () Bool)

(assert (=> d!3205 (= (list!97 (_1!53 lt!1673)) (list!100 (c!15161 (_1!53 lt!1673))))))

(declare-fun bs!4053 () Bool)

(assert (= bs!4053 d!3205))

(declare-fun m!8389 () Bool)

(assert (=> bs!4053 m!8389))

(assert (=> b!31753 d!3205))

(assert (=> b!31753 d!3189))

(assert (=> b!31753 d!3071))

(declare-fun d!3207 () Bool)

(assert (=> d!3207 true))

(declare-fun order!51 () Int)

(declare-fun lambda!471 () Int)

(declare-fun dynLambda!28 (Int Int) Int)

(assert (=> d!3207 (< (dynLambda!27 order!49 (toValue!584 (transformation!109 (h!5599 rules!1369)))) (dynLambda!28 order!51 lambda!471))))

(declare-fun Forall2!10 (Int) Bool)

(assert (=> d!3207 (= (equivClasses!8 (toChars!443 (transformation!109 (h!5599 rules!1369))) (toValue!584 (transformation!109 (h!5599 rules!1369)))) (Forall2!10 lambda!471))))

(declare-fun bs!4054 () Bool)

(assert (= bs!4054 d!3207))

(declare-fun m!8391 () Bool)

(assert (=> bs!4054 m!8391))

(assert (=> b!31763 d!3207))

(declare-fun d!3209 () Bool)

(declare-fun e!14116 () Bool)

(assert (=> d!3209 e!14116))

(declare-fun res!26916 () Bool)

(assert (=> d!3209 (=> (not res!26916) (not e!14116))))

(assert (=> d!3209 (= res!26916 (isBalanced!12 (prepend!9 (c!15161 (_1!53 lt!1671)) (_1!58 (v!12009 lt!1672)))))))

(declare-fun lt!1756 () BalanceConc!54)

(assert (=> d!3209 (= lt!1756 (BalanceConc!55 (prepend!9 (c!15161 (_1!53 lt!1671)) (_1!58 (v!12009 lt!1672)))))))

(assert (=> d!3209 (= (prepend!8 (_1!53 lt!1671) (_1!58 (v!12009 lt!1672))) lt!1756)))

(declare-fun b!32162 () Bool)

(assert (=> b!32162 (= e!14116 (= (list!97 lt!1756) (Cons!202 (_1!58 (v!12009 lt!1672)) (list!97 (_1!53 lt!1671)))))))

(assert (= (and d!3209 res!26916) b!32162))

(declare-fun m!8393 () Bool)

(assert (=> d!3209 m!8393))

(assert (=> d!3209 m!8393))

(declare-fun m!8395 () Bool)

(assert (=> d!3209 m!8395))

(declare-fun m!8397 () Bool)

(assert (=> b!32162 m!8397))

(declare-fun m!8399 () Bool)

(assert (=> b!32162 m!8399))

(assert (=> b!31751 d!3209))

(declare-fun b!32163 () Bool)

(declare-fun e!14118 () Bool)

(declare-fun e!14119 () Bool)

(assert (=> b!32163 (= e!14118 e!14119)))

(declare-fun res!26918 () Bool)

(declare-fun lt!1759 () tuple2!88)

(assert (=> b!32163 (= res!26918 (< (size!287 (_2!53 lt!1759)) (size!287 (_2!58 (v!12009 lt!1672)))))))

(assert (=> b!32163 (=> (not res!26918) (not e!14119))))

(declare-fun d!3211 () Bool)

(declare-fun e!14120 () Bool)

(assert (=> d!3211 e!14120))

(declare-fun res!26917 () Bool)

(assert (=> d!3211 (=> (not res!26917) (not e!14120))))

(assert (=> d!3211 (= res!26917 e!14118)))

(declare-fun c!15248 () Bool)

(assert (=> d!3211 (= c!15248 (> (size!288 (_1!53 lt!1759)) 0))))

(declare-fun e!14117 () tuple2!88)

(assert (=> d!3211 (= lt!1759 e!14117)))

(declare-fun c!15247 () Bool)

(declare-fun lt!1758 () Option!38)

(assert (=> d!3211 (= c!15247 ((_ is Some!37) lt!1758))))

(assert (=> d!3211 (= lt!1758 (maxPrefixZipperSequence!3 thiss!12222 rules!1369 (_2!58 (v!12009 lt!1672))))))

(assert (=> d!3211 (= (lexRec!4 thiss!12222 rules!1369 (_2!58 (v!12009 lt!1672))) lt!1759)))

(declare-fun b!32164 () Bool)

(assert (=> b!32164 (= e!14118 (= (list!98 (_2!53 lt!1759)) (list!98 (_2!58 (v!12009 lt!1672)))))))

(declare-fun b!32165 () Bool)

(assert (=> b!32165 (= e!14120 (= (list!98 (_2!53 lt!1759)) (_2!59 (lexList!3 thiss!12222 rules!1369 (list!98 (_2!58 (v!12009 lt!1672)))))))))

(declare-fun b!32166 () Bool)

(assert (=> b!32166 (= e!14119 (not (isEmpty!63 (_1!53 lt!1759))))))

(declare-fun b!32167 () Bool)

(declare-fun lt!1757 () tuple2!88)

(assert (=> b!32167 (= e!14117 (tuple2!89 (prepend!8 (_1!53 lt!1757) (_1!58 (v!12009 lt!1758))) (_2!53 lt!1757)))))

(assert (=> b!32167 (= lt!1757 (lexRec!4 thiss!12222 rules!1369 (_2!58 (v!12009 lt!1758))))))

(declare-fun b!32168 () Bool)

(assert (=> b!32168 (= e!14117 (tuple2!89 (BalanceConc!55 Empty!27) (_2!58 (v!12009 lt!1672))))))

(declare-fun b!32169 () Bool)

(declare-fun res!26919 () Bool)

(assert (=> b!32169 (=> (not res!26919) (not e!14120))))

(assert (=> b!32169 (= res!26919 (= (list!97 (_1!53 lt!1759)) (_1!59 (lexList!3 thiss!12222 rules!1369 (list!98 (_2!58 (v!12009 lt!1672)))))))))

(assert (= (and d!3211 c!15247) b!32167))

(assert (= (and d!3211 (not c!15247)) b!32168))

(assert (= (and d!3211 c!15248) b!32163))

(assert (= (and d!3211 (not c!15248)) b!32164))

(assert (= (and b!32163 res!26918) b!32166))

(assert (= (and d!3211 res!26917) b!32169))

(assert (= (and b!32169 res!26919) b!32165))

(declare-fun m!8401 () Bool)

(assert (=> b!32169 m!8401))

(declare-fun m!8403 () Bool)

(assert (=> b!32169 m!8403))

(assert (=> b!32169 m!8403))

(declare-fun m!8405 () Bool)

(assert (=> b!32169 m!8405))

(declare-fun m!8407 () Bool)

(assert (=> b!32167 m!8407))

(declare-fun m!8409 () Bool)

(assert (=> b!32167 m!8409))

(declare-fun m!8411 () Bool)

(assert (=> b!32165 m!8411))

(assert (=> b!32165 m!8403))

(assert (=> b!32165 m!8403))

(assert (=> b!32165 m!8405))

(declare-fun m!8413 () Bool)

(assert (=> b!32166 m!8413))

(declare-fun m!8415 () Bool)

(assert (=> d!3211 m!8415))

(declare-fun m!8417 () Bool)

(assert (=> d!3211 m!8417))

(declare-fun m!8419 () Bool)

(assert (=> b!32163 m!8419))

(declare-fun m!8421 () Bool)

(assert (=> b!32163 m!8421))

(assert (=> b!32164 m!8411))

(assert (=> b!32164 m!8403))

(assert (=> b!31751 d!3211))

(declare-fun d!3213 () Bool)

(declare-fun lt!1760 () Int)

(assert (=> d!3213 (= lt!1760 (size!291 (list!97 (_1!53 lt!1673))))))

(assert (=> d!3213 (= lt!1760 (size!292 (c!15161 (_1!53 lt!1673))))))

(assert (=> d!3213 (= (size!288 (_1!53 lt!1673)) lt!1760)))

(declare-fun bs!4055 () Bool)

(assert (= bs!4055 d!3213))

(assert (=> bs!4055 m!7943))

(assert (=> bs!4055 m!7943))

(declare-fun m!8423 () Bool)

(assert (=> bs!4055 m!8423))

(declare-fun m!8425 () Bool)

(assert (=> bs!4055 m!8425))

(assert (=> d!3051 d!3213))

(declare-fun call!2624 () Option!38)

(declare-fun bm!2619 () Bool)

(assert (=> bm!2619 (= call!2624 (maxPrefixOneRuleZipperSequence!3 thiss!12222 (h!5599 rules!1369) input!768))))

(declare-fun d!3215 () Bool)

(declare-fun e!14123 () Bool)

(assert (=> d!3215 e!14123))

(declare-fun res!26924 () Bool)

(assert (=> d!3215 (=> (not res!26924) (not e!14123))))

(declare-fun lt!1762 () Option!38)

(assert (=> d!3215 (= res!26924 (= (isDefined!5 lt!1762) (isDefined!6 (maxPrefixZipper!3 thiss!12222 rules!1369 (list!98 input!768)))))))

(declare-fun e!14122 () Option!38)

(assert (=> d!3215 (= lt!1762 e!14122)))

(declare-fun c!15249 () Bool)

(assert (=> d!3215 (= c!15249 (and ((_ is Cons!203) rules!1369) ((_ is Nil!203) (t!14790 rules!1369))))))

(declare-fun lt!1763 () Unit!111)

(declare-fun lt!1767 () Unit!111)

(assert (=> d!3215 (= lt!1763 lt!1767)))

(declare-fun lt!1764 () List!202)

(declare-fun lt!1766 () List!202)

(assert (=> d!3215 (isPrefix!3 lt!1764 lt!1766)))

(assert (=> d!3215 (= lt!1767 (lemmaIsPrefixRefl!3 lt!1764 lt!1766))))

(assert (=> d!3215 (= lt!1766 (list!98 input!768))))

(assert (=> d!3215 (= lt!1764 (list!98 input!768))))

(assert (=> d!3215 (rulesValidInductive!4 thiss!12222 rules!1369)))

(assert (=> d!3215 (= (maxPrefixZipperSequence!3 thiss!12222 rules!1369 input!768) lt!1762)))

(declare-fun b!32170 () Bool)

(declare-fun lt!1761 () Option!38)

(declare-fun lt!1765 () Option!38)

(assert (=> b!32170 (= e!14122 (ite (and ((_ is None!37) lt!1761) ((_ is None!37) lt!1765)) None!37 (ite ((_ is None!37) lt!1765) lt!1761 (ite ((_ is None!37) lt!1761) lt!1765 (ite (>= (size!283 (_1!58 (v!12009 lt!1761))) (size!283 (_1!58 (v!12009 lt!1765)))) lt!1761 lt!1765)))))))

(assert (=> b!32170 (= lt!1761 call!2624)))

(assert (=> b!32170 (= lt!1765 (maxPrefixZipperSequence!3 thiss!12222 (t!14790 rules!1369) input!768))))

(declare-fun b!32171 () Bool)

(declare-fun res!26921 () Bool)

(assert (=> b!32171 (=> (not res!26921) (not e!14123))))

(declare-fun e!14124 () Bool)

(assert (=> b!32171 (= res!26921 e!14124)))

(declare-fun res!26922 () Bool)

(assert (=> b!32171 (=> res!26922 e!14124)))

(assert (=> b!32171 (= res!26922 (not (isDefined!5 lt!1762)))))

(declare-fun b!32172 () Bool)

(declare-fun e!14126 () Bool)

(declare-fun e!14125 () Bool)

(assert (=> b!32172 (= e!14126 e!14125)))

(declare-fun res!26920 () Bool)

(assert (=> b!32172 (=> (not res!26920) (not e!14125))))

(assert (=> b!32172 (= res!26920 (= (_1!58 (get!149 lt!1762)) (_1!60 (get!150 (maxPrefix!3 thiss!12222 rules!1369 (list!98 input!768))))))))

(declare-fun b!32173 () Bool)

(declare-fun e!14121 () Bool)

(assert (=> b!32173 (= e!14124 e!14121)))

(declare-fun res!26923 () Bool)

(assert (=> b!32173 (=> (not res!26923) (not e!14121))))

(assert (=> b!32173 (= res!26923 (= (_1!58 (get!149 lt!1762)) (_1!60 (get!150 (maxPrefixZipper!3 thiss!12222 rules!1369 (list!98 input!768))))))))

(declare-fun b!32174 () Bool)

(assert (=> b!32174 (= e!14122 call!2624)))

(declare-fun b!32175 () Bool)

(assert (=> b!32175 (= e!14121 (= (list!98 (_2!58 (get!149 lt!1762))) (_2!60 (get!150 (maxPrefixZipper!3 thiss!12222 rules!1369 (list!98 input!768))))))))

(declare-fun b!32176 () Bool)

(assert (=> b!32176 (= e!14125 (= (list!98 (_2!58 (get!149 lt!1762))) (_2!60 (get!150 (maxPrefix!3 thiss!12222 rules!1369 (list!98 input!768))))))))

(declare-fun b!32177 () Bool)

(assert (=> b!32177 (= e!14123 e!14126)))

(declare-fun res!26925 () Bool)

(assert (=> b!32177 (=> res!26925 e!14126)))

(assert (=> b!32177 (= res!26925 (not (isDefined!5 lt!1762)))))

(assert (= (and d!3215 c!15249) b!32174))

(assert (= (and d!3215 (not c!15249)) b!32170))

(assert (= (or b!32174 b!32170) bm!2619))

(assert (= (and d!3215 res!26924) b!32171))

(assert (= (and b!32171 (not res!26922)) b!32173))

(assert (= (and b!32173 res!26923) b!32175))

(assert (= (and b!32171 res!26921) b!32177))

(assert (= (and b!32177 (not res!26925)) b!32172))

(assert (= (and b!32172 res!26920) b!32176))

(declare-fun m!8427 () Bool)

(assert (=> b!32171 m!8427))

(assert (=> d!3215 m!8263))

(declare-fun m!8429 () Bool)

(assert (=> d!3215 m!8429))

(declare-fun m!8431 () Bool)

(assert (=> d!3215 m!8431))

(declare-fun m!8433 () Bool)

(assert (=> d!3215 m!8433))

(assert (=> d!3215 m!7887))

(assert (=> d!3215 m!8431))

(assert (=> d!3215 m!8427))

(assert (=> d!3215 m!7887))

(declare-fun m!8435 () Bool)

(assert (=> d!3215 m!8435))

(declare-fun m!8437 () Bool)

(assert (=> b!32170 m!8437))

(declare-fun m!8439 () Bool)

(assert (=> b!32175 m!8439))

(assert (=> b!32175 m!7887))

(assert (=> b!32175 m!8431))

(declare-fun m!8441 () Bool)

(assert (=> b!32175 m!8441))

(declare-fun m!8443 () Bool)

(assert (=> b!32175 m!8443))

(assert (=> b!32175 m!7887))

(assert (=> b!32175 m!8431))

(assert (=> b!32172 m!8443))

(assert (=> b!32172 m!7887))

(assert (=> b!32172 m!7887))

(assert (=> b!32172 m!8365))

(assert (=> b!32172 m!8365))

(declare-fun m!8445 () Bool)

(assert (=> b!32172 m!8445))

(assert (=> b!32173 m!8443))

(assert (=> b!32173 m!7887))

(assert (=> b!32173 m!7887))

(assert (=> b!32173 m!8431))

(assert (=> b!32173 m!8431))

(assert (=> b!32173 m!8441))

(declare-fun m!8447 () Bool)

(assert (=> bm!2619 m!8447))

(assert (=> b!32176 m!8439))

(assert (=> b!32176 m!7887))

(assert (=> b!32176 m!8365))

(assert (=> b!32176 m!8443))

(assert (=> b!32176 m!7887))

(assert (=> b!32176 m!8365))

(assert (=> b!32176 m!8445))

(assert (=> b!32177 m!8427))

(assert (=> d!3051 d!3215))

(declare-fun b!32179 () Bool)

(declare-fun e!14127 () List!202)

(declare-fun e!14128 () List!202)

(assert (=> b!32179 (= e!14127 e!14128)))

(declare-fun c!15251 () Bool)

(assert (=> b!32179 (= c!15251 ((_ is Leaf!157) (c!15160 (_2!53 lt!1656))))))

(declare-fun b!32178 () Bool)

(assert (=> b!32178 (= e!14127 Nil!200)))

(declare-fun b!32181 () Bool)

(assert (=> b!32181 (= e!14128 (++!45 (list!99 (left!346 (c!15160 (_2!53 lt!1656)))) (list!99 (right!676 (c!15160 (_2!53 lt!1656))))))))

(declare-fun d!3217 () Bool)

(declare-fun c!15250 () Bool)

(assert (=> d!3217 (= c!15250 ((_ is Empty!26) (c!15160 (_2!53 lt!1656))))))

(assert (=> d!3217 (= (list!99 (c!15160 (_2!53 lt!1656))) e!14127)))

(declare-fun b!32180 () Bool)

(assert (=> b!32180 (= e!14128 (list!101 (xs!2603 (c!15160 (_2!53 lt!1656)))))))

(assert (= (and d!3217 c!15250) b!32178))

(assert (= (and d!3217 (not c!15250)) b!32179))

(assert (= (and b!32179 c!15251) b!32180))

(assert (= (and b!32179 (not c!15251)) b!32181))

(declare-fun m!8449 () Bool)

(assert (=> b!32181 m!8449))

(declare-fun m!8451 () Bool)

(assert (=> b!32181 m!8451))

(assert (=> b!32181 m!8449))

(assert (=> b!32181 m!8451))

(declare-fun m!8453 () Bool)

(assert (=> b!32181 m!8453))

(declare-fun m!8455 () Bool)

(assert (=> b!32180 m!8455))

(assert (=> d!3033 d!3217))

(declare-fun bs!4056 () Bool)

(declare-fun d!3219 () Bool)

(assert (= bs!4056 (and d!3219 d!3161)))

(declare-fun lambda!472 () Int)

(assert (=> bs!4056 (= lambda!472 lambda!456)))

(declare-fun bs!4057 () Bool)

(assert (= bs!4057 (and d!3219 d!3201)))

(assert (=> bs!4057 (= lambda!472 lambda!467)))

(declare-fun bs!4058 () Bool)

(assert (= bs!4058 (and d!3219 d!3153)))

(assert (=> bs!4058 (= lambda!472 lambda!454)))

(declare-fun bs!4059 () Bool)

(assert (= bs!4059 (and d!3219 d!3089)))

(assert (=> bs!4059 (= lambda!472 lambda!446)))

(declare-fun bs!4060 () Bool)

(assert (= bs!4060 (and d!3219 d!3087)))

(assert (=> bs!4060 (= lambda!472 lambda!445)))

(declare-fun bs!4061 () Bool)

(assert (= bs!4061 (and d!3219 d!3091)))

(assert (=> bs!4061 (= lambda!472 lambda!447)))

(declare-fun bs!4062 () Bool)

(assert (= bs!4062 (and d!3219 d!3129)))

(assert (=> bs!4062 (= lambda!472 lambda!450)))

(declare-fun bs!4063 () Bool)

(assert (= bs!4063 (and d!3219 d!3165)))

(assert (=> bs!4063 (= lambda!472 lambda!458)))

(declare-fun bs!4064 () Bool)

(assert (= bs!4064 (and d!3219 d!3119)))

(assert (=> bs!4064 (= lambda!472 lambda!448)))

(declare-fun bs!4065 () Bool)

(assert (= bs!4065 (and d!3219 d!3077)))

(assert (=> bs!4065 (= lambda!472 lambda!438)))

(declare-fun bs!4066 () Bool)

(assert (= bs!4066 (and d!3219 d!3203)))

(assert (=> bs!4066 (= lambda!472 lambda!468)))

(declare-fun bs!4067 () Bool)

(assert (= bs!4067 (and d!3219 d!3163)))

(assert (=> bs!4067 (= lambda!472 lambda!457)))

(declare-fun bs!4068 () Bool)

(assert (= bs!4068 (and d!3219 d!3141)))

(assert (=> bs!4068 (= lambda!472 lambda!451)))

(declare-fun bs!4069 () Bool)

(assert (= bs!4069 (and d!3219 d!3199)))

(assert (=> bs!4069 (= lambda!472 lambda!466)))

(declare-fun bs!4070 () Bool)

(assert (= bs!4070 (and d!3219 d!3123)))

(assert (=> bs!4070 (= lambda!472 lambda!449)))

(declare-fun bs!4071 () Bool)

(assert (= bs!4071 (and d!3219 d!3155)))

(assert (=> bs!4071 (= lambda!472 lambda!455)))

(declare-fun bs!4072 () Bool)

(assert (= bs!4072 (and d!3219 d!3185)))

(assert (=> bs!4072 (= lambda!472 lambda!465)))

(declare-fun bs!4073 () Bool)

(assert (= bs!4073 (and d!3219 d!3145)))

(assert (=> bs!4073 (= lambda!472 lambda!452)))

(declare-fun bs!4074 () Bool)

(assert (= bs!4074 (and d!3219 d!3151)))

(assert (=> bs!4074 (= lambda!472 lambda!453)))

(assert (=> d!3219 (= (inv!513 setElem!222) (forall!30 (exprs!515 setElem!222) lambda!472))))

(declare-fun bs!4075 () Bool)

(assert (= bs!4075 d!3219))

(declare-fun m!8457 () Bool)

(assert (=> bs!4075 m!8457))

(assert (=> setNonEmpty!222 d!3219))

(assert (=> b!31755 d!3147))

(assert (=> b!31755 d!3073))

(declare-fun d!3221 () Bool)

(declare-fun c!15254 () Bool)

(assert (=> d!3221 (= c!15254 ((_ is Nil!200) lt!1679))))

(declare-fun e!14131 () (InoxSet C!1340))

(assert (=> d!3221 (= (content!19 lt!1679) e!14131)))

(declare-fun b!32186 () Bool)

(assert (=> b!32186 (= e!14131 ((as const (Array C!1340 Bool)) false))))

(declare-fun b!32187 () Bool)

(assert (=> b!32187 (= e!14131 ((_ map or) (store ((as const (Array C!1340 Bool)) false) (h!5596 lt!1679) true) (content!19 (t!14787 lt!1679))))))

(assert (= (and d!3221 c!15254) b!32186))

(assert (= (and d!3221 (not c!15254)) b!32187))

(declare-fun m!8459 () Bool)

(assert (=> b!32187 m!8459))

(declare-fun m!8461 () Bool)

(assert (=> b!32187 m!8461))

(assert (=> d!3069 d!3221))

(declare-fun d!3223 () Bool)

(declare-fun c!15255 () Bool)

(assert (=> d!3223 (= c!15255 ((_ is Nil!200) lt!1657))))

(declare-fun e!14132 () (InoxSet C!1340))

(assert (=> d!3223 (= (content!19 lt!1657) e!14132)))

(declare-fun b!32188 () Bool)

(assert (=> b!32188 (= e!14132 ((as const (Array C!1340 Bool)) false))))

(declare-fun b!32189 () Bool)

(assert (=> b!32189 (= e!14132 ((_ map or) (store ((as const (Array C!1340 Bool)) false) (h!5596 lt!1657) true) (content!19 (t!14787 lt!1657))))))

(assert (= (and d!3223 c!15255) b!32188))

(assert (= (and d!3223 (not c!15255)) b!32189))

(declare-fun m!8463 () Bool)

(assert (=> b!32189 m!8463))

(assert (=> b!32189 m!8355))

(assert (=> d!3069 d!3223))

(declare-fun d!3225 () Bool)

(declare-fun c!15256 () Bool)

(assert (=> d!3225 (= c!15256 ((_ is Nil!200) lt!1658))))

(declare-fun e!14133 () (InoxSet C!1340))

(assert (=> d!3225 (= (content!19 lt!1658) e!14133)))

(declare-fun b!32190 () Bool)

(assert (=> b!32190 (= e!14133 ((as const (Array C!1340 Bool)) false))))

(declare-fun b!32191 () Bool)

(assert (=> b!32191 (= e!14133 ((_ map or) (store ((as const (Array C!1340 Bool)) false) (h!5596 lt!1658) true) (content!19 (t!14787 lt!1658))))))

(assert (= (and d!3225 c!15256) b!32190))

(assert (= (and d!3225 (not c!15256)) b!32191))

(declare-fun m!8465 () Bool)

(assert (=> b!32191 m!8465))

(declare-fun m!8467 () Bool)

(assert (=> b!32191 m!8467))

(assert (=> d!3069 d!3225))

(declare-fun bs!4076 () Bool)

(declare-fun d!3227 () Bool)

(assert (= bs!4076 (and d!3227 d!3161)))

(declare-fun lambda!473 () Int)

(assert (=> bs!4076 (= lambda!473 lambda!456)))

(declare-fun bs!4077 () Bool)

(assert (= bs!4077 (and d!3227 d!3201)))

(assert (=> bs!4077 (= lambda!473 lambda!467)))

(declare-fun bs!4078 () Bool)

(assert (= bs!4078 (and d!3227 d!3153)))

(assert (=> bs!4078 (= lambda!473 lambda!454)))

(declare-fun bs!4079 () Bool)

(assert (= bs!4079 (and d!3227 d!3089)))

(assert (=> bs!4079 (= lambda!473 lambda!446)))

(declare-fun bs!4080 () Bool)

(assert (= bs!4080 (and d!3227 d!3087)))

(assert (=> bs!4080 (= lambda!473 lambda!445)))

(declare-fun bs!4081 () Bool)

(assert (= bs!4081 (and d!3227 d!3091)))

(assert (=> bs!4081 (= lambda!473 lambda!447)))

(declare-fun bs!4082 () Bool)

(assert (= bs!4082 (and d!3227 d!3165)))

(assert (=> bs!4082 (= lambda!473 lambda!458)))

(declare-fun bs!4083 () Bool)

(assert (= bs!4083 (and d!3227 d!3119)))

(assert (=> bs!4083 (= lambda!473 lambda!448)))

(declare-fun bs!4084 () Bool)

(assert (= bs!4084 (and d!3227 d!3077)))

(assert (=> bs!4084 (= lambda!473 lambda!438)))

(declare-fun bs!4085 () Bool)

(assert (= bs!4085 (and d!3227 d!3203)))

(assert (=> bs!4085 (= lambda!473 lambda!468)))

(declare-fun bs!4086 () Bool)

(assert (= bs!4086 (and d!3227 d!3163)))

(assert (=> bs!4086 (= lambda!473 lambda!457)))

(declare-fun bs!4087 () Bool)

(assert (= bs!4087 (and d!3227 d!3141)))

(assert (=> bs!4087 (= lambda!473 lambda!451)))

(declare-fun bs!4088 () Bool)

(assert (= bs!4088 (and d!3227 d!3199)))

(assert (=> bs!4088 (= lambda!473 lambda!466)))

(declare-fun bs!4089 () Bool)

(assert (= bs!4089 (and d!3227 d!3123)))

(assert (=> bs!4089 (= lambda!473 lambda!449)))

(declare-fun bs!4090 () Bool)

(assert (= bs!4090 (and d!3227 d!3155)))

(assert (=> bs!4090 (= lambda!473 lambda!455)))

(declare-fun bs!4091 () Bool)

(assert (= bs!4091 (and d!3227 d!3185)))

(assert (=> bs!4091 (= lambda!473 lambda!465)))

(declare-fun bs!4092 () Bool)

(assert (= bs!4092 (and d!3227 d!3145)))

(assert (=> bs!4092 (= lambda!473 lambda!452)))

(declare-fun bs!4093 () Bool)

(assert (= bs!4093 (and d!3227 d!3151)))

(assert (=> bs!4093 (= lambda!473 lambda!453)))

(declare-fun bs!4094 () Bool)

(assert (= bs!4094 (and d!3227 d!3129)))

(assert (=> bs!4094 (= lambda!473 lambda!450)))

(declare-fun bs!4095 () Bool)

(assert (= bs!4095 (and d!3227 d!3219)))

(assert (=> bs!4095 (= lambda!473 lambda!472)))

(assert (=> d!3227 (= (inv!513 setElem!233) (forall!30 (exprs!515 setElem!233) lambda!473))))

(declare-fun bs!4096 () Bool)

(assert (= bs!4096 d!3227))

(declare-fun m!8469 () Bool)

(assert (=> bs!4096 m!8469))

(assert (=> setNonEmpty!233 d!3227))

(declare-fun bs!4097 () Bool)

(declare-fun d!3229 () Bool)

(assert (= bs!4097 (and d!3229 d!3161)))

(declare-fun lambda!474 () Int)

(assert (=> bs!4097 (= lambda!474 lambda!456)))

(declare-fun bs!4098 () Bool)

(assert (= bs!4098 (and d!3229 d!3201)))

(assert (=> bs!4098 (= lambda!474 lambda!467)))

(declare-fun bs!4099 () Bool)

(assert (= bs!4099 (and d!3229 d!3153)))

(assert (=> bs!4099 (= lambda!474 lambda!454)))

(declare-fun bs!4100 () Bool)

(assert (= bs!4100 (and d!3229 d!3089)))

(assert (=> bs!4100 (= lambda!474 lambda!446)))

(declare-fun bs!4101 () Bool)

(assert (= bs!4101 (and d!3229 d!3087)))

(assert (=> bs!4101 (= lambda!474 lambda!445)))

(declare-fun bs!4102 () Bool)

(assert (= bs!4102 (and d!3229 d!3091)))

(assert (=> bs!4102 (= lambda!474 lambda!447)))

(declare-fun bs!4103 () Bool)

(assert (= bs!4103 (and d!3229 d!3227)))

(assert (=> bs!4103 (= lambda!474 lambda!473)))

(declare-fun bs!4104 () Bool)

(assert (= bs!4104 (and d!3229 d!3165)))

(assert (=> bs!4104 (= lambda!474 lambda!458)))

(declare-fun bs!4105 () Bool)

(assert (= bs!4105 (and d!3229 d!3119)))

(assert (=> bs!4105 (= lambda!474 lambda!448)))

(declare-fun bs!4106 () Bool)

(assert (= bs!4106 (and d!3229 d!3077)))

(assert (=> bs!4106 (= lambda!474 lambda!438)))

(declare-fun bs!4107 () Bool)

(assert (= bs!4107 (and d!3229 d!3203)))

(assert (=> bs!4107 (= lambda!474 lambda!468)))

(declare-fun bs!4108 () Bool)

(assert (= bs!4108 (and d!3229 d!3163)))

(assert (=> bs!4108 (= lambda!474 lambda!457)))

(declare-fun bs!4109 () Bool)

(assert (= bs!4109 (and d!3229 d!3141)))

(assert (=> bs!4109 (= lambda!474 lambda!451)))

(declare-fun bs!4110 () Bool)

(assert (= bs!4110 (and d!3229 d!3199)))

(assert (=> bs!4110 (= lambda!474 lambda!466)))

(declare-fun bs!4111 () Bool)

(assert (= bs!4111 (and d!3229 d!3123)))

(assert (=> bs!4111 (= lambda!474 lambda!449)))

(declare-fun bs!4112 () Bool)

(assert (= bs!4112 (and d!3229 d!3155)))

(assert (=> bs!4112 (= lambda!474 lambda!455)))

(declare-fun bs!4113 () Bool)

(assert (= bs!4113 (and d!3229 d!3185)))

(assert (=> bs!4113 (= lambda!474 lambda!465)))

(declare-fun bs!4114 () Bool)

(assert (= bs!4114 (and d!3229 d!3145)))

(assert (=> bs!4114 (= lambda!474 lambda!452)))

(declare-fun bs!4115 () Bool)

(assert (= bs!4115 (and d!3229 d!3151)))

(assert (=> bs!4115 (= lambda!474 lambda!453)))

(declare-fun bs!4116 () Bool)

(assert (= bs!4116 (and d!3229 d!3129)))

(assert (=> bs!4116 (= lambda!474 lambda!450)))

(declare-fun bs!4117 () Bool)

(assert (= bs!4117 (and d!3229 d!3219)))

(assert (=> bs!4117 (= lambda!474 lambda!472)))

(assert (=> d!3229 (= (inv!513 setElem!216) (forall!30 (exprs!515 setElem!216) lambda!474))))

(declare-fun bs!4118 () Bool)

(assert (= bs!4118 d!3229))

(declare-fun m!8471 () Bool)

(assert (=> bs!4118 m!8471))

(assert (=> setNonEmpty!216 d!3229))

(declare-fun b!32195 () Bool)

(declare-fun e!14135 () List!204)

(assert (=> b!32195 (= e!14135 (++!47 (list!100 (left!347 (c!15161 (BalanceConc!55 Empty!27)))) (list!100 (right!677 (c!15161 (BalanceConc!55 Empty!27))))))))

(declare-fun b!32193 () Bool)

(declare-fun e!14134 () List!204)

(assert (=> b!32193 (= e!14134 e!14135)))

(declare-fun c!15258 () Bool)

(assert (=> b!32193 (= c!15258 ((_ is Leaf!158) (c!15161 (BalanceConc!55 Empty!27))))))

(declare-fun b!32194 () Bool)

(assert (=> b!32194 (= e!14135 (list!102 (xs!2604 (c!15161 (BalanceConc!55 Empty!27)))))))

(declare-fun d!3231 () Bool)

(declare-fun c!15257 () Bool)

(assert (=> d!3231 (= c!15257 ((_ is Empty!27) (c!15161 (BalanceConc!55 Empty!27))))))

(assert (=> d!3231 (= (list!100 (c!15161 (BalanceConc!55 Empty!27))) e!14134)))

(declare-fun b!32192 () Bool)

(assert (=> b!32192 (= e!14134 Nil!202)))

(assert (= (and d!3231 c!15257) b!32192))

(assert (= (and d!3231 (not c!15257)) b!32193))

(assert (= (and b!32193 c!15258) b!32194))

(assert (= (and b!32193 (not c!15258)) b!32195))

(declare-fun m!8473 () Bool)

(assert (=> b!32195 m!8473))

(declare-fun m!8475 () Bool)

(assert (=> b!32195 m!8475))

(assert (=> b!32195 m!8473))

(assert (=> b!32195 m!8475))

(declare-fun m!8477 () Bool)

(assert (=> b!32195 m!8477))

(declare-fun m!8479 () Bool)

(assert (=> b!32194 m!8479))

(assert (=> d!3055 d!3231))

(declare-fun bs!4119 () Bool)

(declare-fun d!3233 () Bool)

(assert (= bs!4119 (and d!3233 d!3161)))

(declare-fun lambda!475 () Int)

(assert (=> bs!4119 (= lambda!475 lambda!456)))

(declare-fun bs!4120 () Bool)

(assert (= bs!4120 (and d!3233 d!3201)))

(assert (=> bs!4120 (= lambda!475 lambda!467)))

(declare-fun bs!4121 () Bool)

(assert (= bs!4121 (and d!3233 d!3153)))

(assert (=> bs!4121 (= lambda!475 lambda!454)))

(declare-fun bs!4122 () Bool)

(assert (= bs!4122 (and d!3233 d!3089)))

(assert (=> bs!4122 (= lambda!475 lambda!446)))

(declare-fun bs!4123 () Bool)

(assert (= bs!4123 (and d!3233 d!3087)))

(assert (=> bs!4123 (= lambda!475 lambda!445)))

(declare-fun bs!4124 () Bool)

(assert (= bs!4124 (and d!3233 d!3091)))

(assert (=> bs!4124 (= lambda!475 lambda!447)))

(declare-fun bs!4125 () Bool)

(assert (= bs!4125 (and d!3233 d!3227)))

(assert (=> bs!4125 (= lambda!475 lambda!473)))

(declare-fun bs!4126 () Bool)

(assert (= bs!4126 (and d!3233 d!3165)))

(assert (=> bs!4126 (= lambda!475 lambda!458)))

(declare-fun bs!4127 () Bool)

(assert (= bs!4127 (and d!3233 d!3119)))

(assert (=> bs!4127 (= lambda!475 lambda!448)))

(declare-fun bs!4128 () Bool)

(assert (= bs!4128 (and d!3233 d!3077)))

(assert (=> bs!4128 (= lambda!475 lambda!438)))

(declare-fun bs!4129 () Bool)

(assert (= bs!4129 (and d!3233 d!3203)))

(assert (=> bs!4129 (= lambda!475 lambda!468)))

(declare-fun bs!4130 () Bool)

(assert (= bs!4130 (and d!3233 d!3163)))

(assert (=> bs!4130 (= lambda!475 lambda!457)))

(declare-fun bs!4131 () Bool)

(assert (= bs!4131 (and d!3233 d!3141)))

(assert (=> bs!4131 (= lambda!475 lambda!451)))

(declare-fun bs!4132 () Bool)

(assert (= bs!4132 (and d!3233 d!3199)))

(assert (=> bs!4132 (= lambda!475 lambda!466)))

(declare-fun bs!4133 () Bool)

(assert (= bs!4133 (and d!3233 d!3123)))

(assert (=> bs!4133 (= lambda!475 lambda!449)))

(declare-fun bs!4134 () Bool)

(assert (= bs!4134 (and d!3233 d!3155)))

(assert (=> bs!4134 (= lambda!475 lambda!455)))

(declare-fun bs!4135 () Bool)

(assert (= bs!4135 (and d!3233 d!3185)))

(assert (=> bs!4135 (= lambda!475 lambda!465)))

(declare-fun bs!4136 () Bool)

(assert (= bs!4136 (and d!3233 d!3229)))

(assert (=> bs!4136 (= lambda!475 lambda!474)))

(declare-fun bs!4137 () Bool)

(assert (= bs!4137 (and d!3233 d!3145)))

(assert (=> bs!4137 (= lambda!475 lambda!452)))

(declare-fun bs!4138 () Bool)

(assert (= bs!4138 (and d!3233 d!3151)))

(assert (=> bs!4138 (= lambda!475 lambda!453)))

(declare-fun bs!4139 () Bool)

(assert (= bs!4139 (and d!3233 d!3129)))

(assert (=> bs!4139 (= lambda!475 lambda!450)))

(declare-fun bs!4140 () Bool)

(assert (= bs!4140 (and d!3233 d!3219)))

(assert (=> bs!4140 (= lambda!475 lambda!472)))

(assert (=> d!3233 (= (inv!513 setElem!232) (forall!30 (exprs!515 setElem!232) lambda!475))))

(declare-fun bs!4141 () Bool)

(assert (= bs!4141 d!3233))

(declare-fun m!8481 () Bool)

(assert (=> bs!4141 m!8481))

(assert (=> setNonEmpty!231 d!3233))

(declare-fun bs!4142 () Bool)

(declare-fun d!3235 () Bool)

(assert (= bs!4142 (and d!3235 d!3161)))

(declare-fun lambda!476 () Int)

(assert (=> bs!4142 (= lambda!476 lambda!456)))

(declare-fun bs!4143 () Bool)

(assert (= bs!4143 (and d!3235 d!3201)))

(assert (=> bs!4143 (= lambda!476 lambda!467)))

(declare-fun bs!4144 () Bool)

(assert (= bs!4144 (and d!3235 d!3153)))

(assert (=> bs!4144 (= lambda!476 lambda!454)))

(declare-fun bs!4145 () Bool)

(assert (= bs!4145 (and d!3235 d!3089)))

(assert (=> bs!4145 (= lambda!476 lambda!446)))

(declare-fun bs!4146 () Bool)

(assert (= bs!4146 (and d!3235 d!3087)))

(assert (=> bs!4146 (= lambda!476 lambda!445)))

(declare-fun bs!4147 () Bool)

(assert (= bs!4147 (and d!3235 d!3091)))

(assert (=> bs!4147 (= lambda!476 lambda!447)))

(declare-fun bs!4148 () Bool)

(assert (= bs!4148 (and d!3235 d!3227)))

(assert (=> bs!4148 (= lambda!476 lambda!473)))

(declare-fun bs!4149 () Bool)

(assert (= bs!4149 (and d!3235 d!3165)))

(assert (=> bs!4149 (= lambda!476 lambda!458)))

(declare-fun bs!4150 () Bool)

(assert (= bs!4150 (and d!3235 d!3119)))

(assert (=> bs!4150 (= lambda!476 lambda!448)))

(declare-fun bs!4151 () Bool)

(assert (= bs!4151 (and d!3235 d!3203)))

(assert (=> bs!4151 (= lambda!476 lambda!468)))

(declare-fun bs!4152 () Bool)

(assert (= bs!4152 (and d!3235 d!3163)))

(assert (=> bs!4152 (= lambda!476 lambda!457)))

(declare-fun bs!4153 () Bool)

(assert (= bs!4153 (and d!3235 d!3141)))

(assert (=> bs!4153 (= lambda!476 lambda!451)))

(declare-fun bs!4154 () Bool)

(assert (= bs!4154 (and d!3235 d!3199)))

(assert (=> bs!4154 (= lambda!476 lambda!466)))

(declare-fun bs!4155 () Bool)

(assert (= bs!4155 (and d!3235 d!3123)))

(assert (=> bs!4155 (= lambda!476 lambda!449)))

(declare-fun bs!4156 () Bool)

(assert (= bs!4156 (and d!3235 d!3155)))

(assert (=> bs!4156 (= lambda!476 lambda!455)))

(declare-fun bs!4157 () Bool)

(assert (= bs!4157 (and d!3235 d!3185)))

(assert (=> bs!4157 (= lambda!476 lambda!465)))

(declare-fun bs!4158 () Bool)

(assert (= bs!4158 (and d!3235 d!3229)))

(assert (=> bs!4158 (= lambda!476 lambda!474)))

(declare-fun bs!4159 () Bool)

(assert (= bs!4159 (and d!3235 d!3145)))

(assert (=> bs!4159 (= lambda!476 lambda!452)))

(declare-fun bs!4160 () Bool)

(assert (= bs!4160 (and d!3235 d!3151)))

(assert (=> bs!4160 (= lambda!476 lambda!453)))

(declare-fun bs!4161 () Bool)

(assert (= bs!4161 (and d!3235 d!3129)))

(assert (=> bs!4161 (= lambda!476 lambda!450)))

(declare-fun bs!4162 () Bool)

(assert (= bs!4162 (and d!3235 d!3219)))

(assert (=> bs!4162 (= lambda!476 lambda!472)))

(declare-fun bs!4163 () Bool)

(assert (= bs!4163 (and d!3235 d!3077)))

(assert (=> bs!4163 (= lambda!476 lambda!438)))

(declare-fun bs!4164 () Bool)

(assert (= bs!4164 (and d!3235 d!3233)))

(assert (=> bs!4164 (= lambda!476 lambda!475)))

(assert (=> d!3235 (= (inv!513 (_1!56 (_1!57 (h!5602 mapValue!106)))) (forall!30 (exprs!515 (_1!56 (_1!57 (h!5602 mapValue!106)))) lambda!476))))

(declare-fun bs!4165 () Bool)

(assert (= bs!4165 d!3235))

(declare-fun m!8483 () Bool)

(assert (=> bs!4165 m!8483))

(assert (=> b!31891 d!3235))

(declare-fun b!32214 () Bool)

(declare-fun e!14159 () Bool)

(declare-fun e!14154 () Bool)

(assert (=> b!32214 (= e!14159 e!14154)))

(declare-fun res!26944 () Bool)

(assert (=> b!32214 (=> res!26944 e!14154)))

(assert (=> b!32214 (= res!26944 (not ((_ is Node!27) (right!677 (c!15161 (BalanceConc!55 Empty!27))))))))

(declare-fun b!32215 () Bool)

(declare-fun e!14158 () Bool)

(declare-fun e!14155 () Bool)

(assert (=> b!32215 (= e!14158 e!14155)))

(declare-fun res!26951 () Bool)

(assert (=> b!32215 (=> res!26951 e!14155)))

(assert (=> b!32215 (= res!26951 (not ((_ is Node!27) (left!347 (c!15161 (_1!53 lt!1660))))))))

(declare-fun d!3237 () Bool)

(declare-fun e!14162 () Bool)

(assert (=> d!3237 e!14162))

(declare-fun res!26952 () Bool)

(assert (=> d!3237 (=> (not res!26952) (not e!14162))))

(declare-fun e!14160 () Bool)

(assert (=> d!3237 (= res!26952 e!14160)))

(declare-fun res!26946 () Bool)

(assert (=> d!3237 (=> res!26946 e!14160)))

(assert (=> d!3237 (= res!26946 (not ((_ is Node!27) (c!15161 (BalanceConc!55 Empty!27)))))))

(assert (=> d!3237 (= (appendAssocInst!1 (c!15161 (BalanceConc!55 Empty!27)) (c!15161 (_1!53 lt!1660))) true)))

(declare-fun b!32216 () Bool)

(declare-fun e!14157 () Bool)

(declare-fun appendAssoc!1 (List!204 List!204 List!204) Bool)

(assert (=> b!32216 (= e!14157 (appendAssoc!1 (list!100 (left!347 (c!15161 (BalanceConc!55 Empty!27)))) (list!100 (left!347 (right!677 (c!15161 (BalanceConc!55 Empty!27))))) (++!47 (list!100 (right!677 (right!677 (c!15161 (BalanceConc!55 Empty!27))))) (list!100 (c!15161 (_1!53 lt!1660))))))))

(declare-fun b!32217 () Bool)

(declare-fun e!14161 () Bool)

(assert (=> b!32217 (= e!14162 e!14161)))

(declare-fun res!26945 () Bool)

(assert (=> b!32217 (=> res!26945 e!14161)))

(assert (=> b!32217 (= res!26945 (not ((_ is Node!27) (c!15161 (_1!53 lt!1660)))))))

(declare-fun b!32218 () Bool)

(declare-fun e!14156 () Bool)

(assert (=> b!32218 (= e!14155 e!14156)))

(declare-fun res!26950 () Bool)

(assert (=> b!32218 (=> (not res!26950) (not e!14156))))

(assert (=> b!32218 (= res!26950 (appendAssoc!1 (list!100 (c!15161 (BalanceConc!55 Empty!27))) (list!100 (left!347 (left!347 (c!15161 (_1!53 lt!1660))))) (list!100 (right!677 (left!347 (c!15161 (_1!53 lt!1660)))))))))

(declare-fun b!32219 () Bool)

(assert (=> b!32219 (= e!14156 (appendAssoc!1 (++!47 (list!100 (c!15161 (BalanceConc!55 Empty!27))) (list!100 (left!347 (left!347 (c!15161 (_1!53 lt!1660)))))) (list!100 (right!677 (left!347 (c!15161 (_1!53 lt!1660))))) (list!100 (right!677 (c!15161 (_1!53 lt!1660))))))))

(declare-fun b!32220 () Bool)

(assert (=> b!32220 (= e!14160 e!14159)))

(declare-fun res!26948 () Bool)

(assert (=> b!32220 (=> (not res!26948) (not e!14159))))

(assert (=> b!32220 (= res!26948 (appendAssoc!1 (list!100 (left!347 (c!15161 (BalanceConc!55 Empty!27)))) (list!100 (right!677 (c!15161 (BalanceConc!55 Empty!27)))) (list!100 (c!15161 (_1!53 lt!1660)))))))

(declare-fun b!32221 () Bool)

(assert (=> b!32221 (= e!14154 e!14157)))

(declare-fun res!26949 () Bool)

(assert (=> b!32221 (=> (not res!26949) (not e!14157))))

(assert (=> b!32221 (= res!26949 (appendAssoc!1 (list!100 (left!347 (right!677 (c!15161 (BalanceConc!55 Empty!27))))) (list!100 (right!677 (right!677 (c!15161 (BalanceConc!55 Empty!27))))) (list!100 (c!15161 (_1!53 lt!1660)))))))

(declare-fun b!32222 () Bool)

(assert (=> b!32222 (= e!14161 e!14158)))

(declare-fun res!26947 () Bool)

(assert (=> b!32222 (=> (not res!26947) (not e!14158))))

(assert (=> b!32222 (= res!26947 (appendAssoc!1 (list!100 (c!15161 (BalanceConc!55 Empty!27))) (list!100 (left!347 (c!15161 (_1!53 lt!1660)))) (list!100 (right!677 (c!15161 (_1!53 lt!1660))))))))

(assert (= (and d!3237 (not res!26946)) b!32220))

(assert (= (and b!32220 res!26948) b!32214))

(assert (= (and b!32214 (not res!26944)) b!32221))

(assert (= (and b!32221 res!26949) b!32216))

(assert (= (and d!3237 res!26952) b!32217))

(assert (= (and b!32217 (not res!26945)) b!32222))

(assert (= (and b!32222 res!26947) b!32215))

(assert (= (and b!32215 (not res!26951)) b!32218))

(assert (= (and b!32218 res!26950) b!32219))

(assert (=> b!32219 m!7965))

(declare-fun m!8485 () Bool)

(assert (=> b!32219 m!8485))

(declare-fun m!8487 () Bool)

(assert (=> b!32219 m!8487))

(assert (=> b!32219 m!8096))

(declare-fun m!8489 () Bool)

(assert (=> b!32219 m!8489))

(declare-fun m!8491 () Bool)

(assert (=> b!32219 m!8491))

(assert (=> b!32219 m!8096))

(assert (=> b!32219 m!7965))

(assert (=> b!32219 m!8491))

(assert (=> b!32219 m!8485))

(assert (=> b!32219 m!8487))

(assert (=> b!32222 m!7965))

(assert (=> b!32222 m!8094))

(assert (=> b!32222 m!8096))

(assert (=> b!32222 m!7965))

(assert (=> b!32222 m!8094))

(assert (=> b!32222 m!8096))

(declare-fun m!8493 () Bool)

(assert (=> b!32222 m!8493))

(assert (=> b!32218 m!7965))

(assert (=> b!32218 m!8491))

(assert (=> b!32218 m!8487))

(assert (=> b!32218 m!7965))

(assert (=> b!32218 m!8491))

(assert (=> b!32218 m!8487))

(declare-fun m!8495 () Bool)

(assert (=> b!32218 m!8495))

(declare-fun m!8497 () Bool)

(assert (=> b!32221 m!8497))

(declare-fun m!8499 () Bool)

(assert (=> b!32221 m!8499))

(assert (=> b!32221 m!7921))

(assert (=> b!32221 m!8497))

(assert (=> b!32221 m!8499))

(assert (=> b!32221 m!7921))

(declare-fun m!8501 () Bool)

(assert (=> b!32221 m!8501))

(assert (=> b!32216 m!8473))

(assert (=> b!32216 m!7921))

(assert (=> b!32216 m!8499))

(assert (=> b!32216 m!7921))

(declare-fun m!8503 () Bool)

(assert (=> b!32216 m!8503))

(assert (=> b!32216 m!8499))

(assert (=> b!32216 m!8473))

(assert (=> b!32216 m!8497))

(assert (=> b!32216 m!8503))

(declare-fun m!8505 () Bool)

(assert (=> b!32216 m!8505))

(assert (=> b!32216 m!8497))

(assert (=> b!32220 m!8473))

(assert (=> b!32220 m!8475))

(assert (=> b!32220 m!7921))

(assert (=> b!32220 m!8473))

(assert (=> b!32220 m!8475))

(assert (=> b!32220 m!7921))

(declare-fun m!8507 () Bool)

(assert (=> b!32220 m!8507))

(assert (=> d!3049 d!3237))

(assert (=> d!3049 d!3133))

(declare-fun condSetEmpty!236 () Bool)

(assert (=> setNonEmpty!221 (= condSetEmpty!236 (= setRest!222 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!236 () Bool)

(assert (=> setNonEmpty!221 (= tp!21965 setRes!236)))

(declare-fun setIsEmpty!236 () Bool)

(assert (=> setIsEmpty!236 setRes!236))

(declare-fun setNonEmpty!236 () Bool)

(declare-fun tp!22024 () Bool)

(declare-fun setElem!236 () Context!30)

(declare-fun e!14165 () Bool)

(assert (=> setNonEmpty!236 (= setRes!236 (and tp!22024 (inv!513 setElem!236) e!14165))))

(declare-fun setRest!236 () (InoxSet Context!30))

(assert (=> setNonEmpty!236 (= setRest!222 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!236 true) setRest!236))))

(declare-fun b!32227 () Bool)

(declare-fun tp!22025 () Bool)

(assert (=> b!32227 (= e!14165 tp!22025)))

(assert (= (and setNonEmpty!221 condSetEmpty!236) setIsEmpty!236))

(assert (= (and setNonEmpty!221 (not condSetEmpty!236)) setNonEmpty!236))

(assert (= setNonEmpty!236 b!32227))

(declare-fun m!8509 () Bool)

(assert (=> setNonEmpty!236 m!8509))

(declare-fun e!14167 () Bool)

(declare-fun setNonEmpty!237 () Bool)

(declare-fun setRes!237 () Bool)

(declare-fun tp!22027 () Bool)

(declare-fun setElem!237 () Context!30)

(assert (=> setNonEmpty!237 (= setRes!237 (and tp!22027 (inv!513 setElem!237) e!14167))))

(declare-fun setRest!237 () (InoxSet Context!30))

(assert (=> setNonEmpty!237 (= (_2!57 (h!5602 (t!14793 mapValue!100))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!237 true) setRest!237))))

(declare-fun b!32228 () Bool)

(declare-fun e!14168 () Bool)

(declare-fun tp!22029 () Bool)

(assert (=> b!32228 (= e!14168 tp!22029)))

(declare-fun setIsEmpty!237 () Bool)

(assert (=> setIsEmpty!237 setRes!237))

(declare-fun b!32229 () Bool)

(declare-fun tp!22028 () Bool)

(assert (=> b!32229 (= e!14167 tp!22028)))

(declare-fun b!32230 () Bool)

(declare-fun e!14166 () Bool)

(declare-fun tp!22026 () Bool)

(assert (=> b!32230 (= e!14166 (and (inv!513 (_1!56 (_1!57 (h!5602 (t!14793 mapValue!100))))) e!14168 tp_is_empty!295 setRes!237 tp!22026))))

(declare-fun condSetEmpty!237 () Bool)

(assert (=> b!32230 (= condSetEmpty!237 (= (_2!57 (h!5602 (t!14793 mapValue!100))) ((as const (Array Context!30 Bool)) false)))))

(assert (=> b!31894 (= tp!22016 e!14166)))

(assert (= b!32230 b!32228))

(assert (= (and b!32230 condSetEmpty!237) setIsEmpty!237))

(assert (= (and b!32230 (not condSetEmpty!237)) setNonEmpty!237))

(assert (= setNonEmpty!237 b!32229))

(assert (= (and b!31894 ((_ is Cons!206) (t!14793 mapValue!100))) b!32230))

(declare-fun m!8511 () Bool)

(assert (=> setNonEmpty!237 m!8511))

(declare-fun m!8513 () Bool)

(assert (=> b!32230 m!8513))

(declare-fun b!32231 () Bool)

(declare-fun e!14169 () Bool)

(assert (=> b!32231 (= e!14169 tp_is_empty!295)))

(declare-fun b!32233 () Bool)

(declare-fun tp!22033 () Bool)

(assert (=> b!32233 (= e!14169 tp!22033)))

(declare-fun b!32232 () Bool)

(declare-fun tp!22030 () Bool)

(declare-fun tp!22032 () Bool)

(assert (=> b!32232 (= e!14169 (and tp!22030 tp!22032))))

(declare-fun b!32234 () Bool)

(declare-fun tp!22034 () Bool)

(declare-fun tp!22031 () Bool)

(assert (=> b!32234 (= e!14169 (and tp!22034 tp!22031))))

(assert (=> b!31855 (= tp!21961 e!14169)))

(assert (= (and b!31855 ((_ is ElementMatch!133) (_1!54 (_1!55 (h!5601 mapValue!103))))) b!32231))

(assert (= (and b!31855 ((_ is Concat!232) (_1!54 (_1!55 (h!5601 mapValue!103))))) b!32232))

(assert (= (and b!31855 ((_ is Star!133) (_1!54 (_1!55 (h!5601 mapValue!103))))) b!32233))

(assert (= (and b!31855 ((_ is Union!133) (_1!54 (_1!55 (h!5601 mapValue!103))))) b!32234))

(declare-fun b!32235 () Bool)

(declare-fun e!14170 () Bool)

(declare-fun tp!22036 () Bool)

(assert (=> b!32235 (= e!14170 tp!22036)))

(declare-fun e!14171 () Bool)

(declare-fun setRes!238 () Bool)

(declare-fun tp!22035 () Bool)

(declare-fun b!32236 () Bool)

(declare-fun tp!22037 () Bool)

(assert (=> b!32236 (= e!14171 (and tp!22035 (inv!513 (_2!54 (_1!55 (h!5601 (t!14792 mapValue!103))))) e!14170 tp_is_empty!295 setRes!238 tp!22037))))

(declare-fun condSetEmpty!238 () Bool)

(assert (=> b!32236 (= condSetEmpty!238 (= (_2!55 (h!5601 (t!14792 mapValue!103))) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!238 () Bool)

(assert (=> setIsEmpty!238 setRes!238))

(assert (=> b!31855 (= tp!21966 e!14171)))

(declare-fun e!14172 () Bool)

(declare-fun setNonEmpty!238 () Bool)

(declare-fun setElem!238 () Context!30)

(declare-fun tp!22039 () Bool)

(assert (=> setNonEmpty!238 (= setRes!238 (and tp!22039 (inv!513 setElem!238) e!14172))))

(declare-fun setRest!238 () (InoxSet Context!30))

(assert (=> setNonEmpty!238 (= (_2!55 (h!5601 (t!14792 mapValue!103))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!238 true) setRest!238))))

(declare-fun b!32237 () Bool)

(declare-fun tp!22038 () Bool)

(assert (=> b!32237 (= e!14172 tp!22038)))

(assert (= b!32236 b!32235))

(assert (= (and b!32236 condSetEmpty!238) setIsEmpty!238))

(assert (= (and b!32236 (not condSetEmpty!238)) setNonEmpty!238))

(assert (= setNonEmpty!238 b!32237))

(assert (= (and b!31855 ((_ is Cons!205) (t!14792 mapValue!103))) b!32236))

(declare-fun m!8515 () Bool)

(assert (=> b!32236 m!8515))

(declare-fun m!8517 () Bool)

(assert (=> setNonEmpty!238 m!8517))

(declare-fun e!14174 () Bool)

(declare-fun tp!22041 () Bool)

(declare-fun setElem!239 () Context!30)

(declare-fun setRes!239 () Bool)

(declare-fun setNonEmpty!239 () Bool)

(assert (=> setNonEmpty!239 (= setRes!239 (and tp!22041 (inv!513 setElem!239) e!14174))))

(declare-fun setRest!239 () (InoxSet Context!30))

(assert (=> setNonEmpty!239 (= (_2!57 (h!5602 (t!14793 mapDefault!100))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!239 true) setRest!239))))

(declare-fun b!32238 () Bool)

(declare-fun e!14175 () Bool)

(declare-fun tp!22043 () Bool)

(assert (=> b!32238 (= e!14175 tp!22043)))

(declare-fun setIsEmpty!239 () Bool)

(assert (=> setIsEmpty!239 setRes!239))

(declare-fun b!32239 () Bool)

(declare-fun tp!22042 () Bool)

(assert (=> b!32239 (= e!14174 tp!22042)))

(declare-fun tp!22040 () Bool)

(declare-fun e!14173 () Bool)

(declare-fun b!32240 () Bool)

(assert (=> b!32240 (= e!14173 (and (inv!513 (_1!56 (_1!57 (h!5602 (t!14793 mapDefault!100))))) e!14175 tp_is_empty!295 setRes!239 tp!22040))))

(declare-fun condSetEmpty!239 () Bool)

(assert (=> b!32240 (= condSetEmpty!239 (= (_2!57 (h!5602 (t!14793 mapDefault!100))) ((as const (Array Context!30 Bool)) false)))))

(assert (=> b!31839 (= tp!21934 e!14173)))

(assert (= b!32240 b!32238))

(assert (= (and b!32240 condSetEmpty!239) setIsEmpty!239))

(assert (= (and b!32240 (not condSetEmpty!239)) setNonEmpty!239))

(assert (= setNonEmpty!239 b!32239))

(assert (= (and b!31839 ((_ is Cons!206) (t!14793 mapDefault!100))) b!32240))

(declare-fun m!8519 () Bool)

(assert (=> setNonEmpty!239 m!8519))

(declare-fun m!8521 () Bool)

(assert (=> b!32240 m!8521))

(declare-fun b!32241 () Bool)

(declare-fun e!14176 () Bool)

(assert (=> b!32241 (= e!14176 tp_is_empty!295)))

(declare-fun b!32243 () Bool)

(declare-fun tp!22047 () Bool)

(assert (=> b!32243 (= e!14176 tp!22047)))

(declare-fun b!32242 () Bool)

(declare-fun tp!22044 () Bool)

(declare-fun tp!22046 () Bool)

(assert (=> b!32242 (= e!14176 (and tp!22044 tp!22046))))

(declare-fun b!32244 () Bool)

(declare-fun tp!22048 () Bool)

(declare-fun tp!22045 () Bool)

(assert (=> b!32244 (= e!14176 (and tp!22048 tp!22045))))

(assert (=> b!31827 (= tp!21924 e!14176)))

(assert (= (and b!31827 ((_ is ElementMatch!133) (reg!462 (regex!109 (h!5599 rules!1369))))) b!32241))

(assert (= (and b!31827 ((_ is Concat!232) (reg!462 (regex!109 (h!5599 rules!1369))))) b!32242))

(assert (= (and b!31827 ((_ is Star!133) (reg!462 (regex!109 (h!5599 rules!1369))))) b!32243))

(assert (= (and b!31827 ((_ is Union!133) (reg!462 (regex!109 (h!5599 rules!1369))))) b!32244))

(declare-fun b!32249 () Bool)

(declare-fun e!14179 () Bool)

(declare-fun tp!22053 () Bool)

(declare-fun tp!22054 () Bool)

(assert (=> b!32249 (= e!14179 (and tp!22053 tp!22054))))

(assert (=> b!31859 (= tp!21967 e!14179)))

(assert (= (and b!31859 ((_ is Cons!204) (exprs!515 setElem!222))) b!32249))

(declare-fun b!32250 () Bool)

(declare-fun e!14180 () Bool)

(assert (=> b!32250 (= e!14180 tp_is_empty!295)))

(declare-fun b!32252 () Bool)

(declare-fun tp!22058 () Bool)

(assert (=> b!32252 (= e!14180 tp!22058)))

(declare-fun b!32251 () Bool)

(declare-fun tp!22055 () Bool)

(declare-fun tp!22057 () Bool)

(assert (=> b!32251 (= e!14180 (and tp!22055 tp!22057))))

(declare-fun b!32253 () Bool)

(declare-fun tp!22059 () Bool)

(declare-fun tp!22056 () Bool)

(assert (=> b!32253 (= e!14180 (and tp!22059 tp!22056))))

(assert (=> b!31788 (= tp!21879 e!14180)))

(assert (= (and b!31788 ((_ is ElementMatch!133) (regex!109 (h!5599 (t!14790 rules!1369))))) b!32250))

(assert (= (and b!31788 ((_ is Concat!232) (regex!109 (h!5599 (t!14790 rules!1369))))) b!32251))

(assert (= (and b!31788 ((_ is Star!133) (regex!109 (h!5599 (t!14790 rules!1369))))) b!32252))

(assert (= (and b!31788 ((_ is Union!133) (regex!109 (h!5599 (t!14790 rules!1369))))) b!32253))

(declare-fun setIsEmpty!240 () Bool)

(declare-fun setRes!241 () Bool)

(assert (=> setIsEmpty!240 setRes!241))

(declare-fun condMapEmpty!107 () Bool)

(declare-fun mapDefault!107 () List!207)

(assert (=> mapNonEmpty!103 (= condMapEmpty!107 (= mapRest!103 ((as const (Array (_ BitVec 32) List!207)) mapDefault!107)))))

(declare-fun e!14181 () Bool)

(declare-fun mapRes!107 () Bool)

(assert (=> mapNonEmpty!103 (= tp!21964 (and e!14181 mapRes!107))))

(declare-fun b!32254 () Bool)

(declare-fun e!14186 () Bool)

(declare-fun tp!22070 () Bool)

(assert (=> b!32254 (= e!14186 tp!22070)))

(declare-fun mapValue!107 () List!207)

(declare-fun e!14182 () Bool)

(declare-fun e!14183 () Bool)

(declare-fun tp!22061 () Bool)

(declare-fun b!32255 () Bool)

(declare-fun tp!22066 () Bool)

(assert (=> b!32255 (= e!14183 (and tp!22061 (inv!513 (_2!54 (_1!55 (h!5601 mapValue!107)))) e!14182 tp_is_empty!295 setRes!241 tp!22066))))

(declare-fun condSetEmpty!240 () Bool)

(assert (=> b!32255 (= condSetEmpty!240 (= (_2!55 (h!5601 mapValue!107)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!241 () Bool)

(declare-fun setRes!240 () Bool)

(assert (=> setIsEmpty!241 setRes!240))

(declare-fun setElem!240 () Context!30)

(declare-fun e!14185 () Bool)

(declare-fun tp!22065 () Bool)

(declare-fun setNonEmpty!240 () Bool)

(assert (=> setNonEmpty!240 (= setRes!240 (and tp!22065 (inv!513 setElem!240) e!14185))))

(declare-fun setRest!241 () (InoxSet Context!30))

(assert (=> setNonEmpty!240 (= (_2!55 (h!5601 mapDefault!107)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!240 true) setRest!241))))

(declare-fun tp!22068 () Bool)

(declare-fun b!32256 () Bool)

(declare-fun tp!22069 () Bool)

(assert (=> b!32256 (= e!14181 (and tp!22069 (inv!513 (_2!54 (_1!55 (h!5601 mapDefault!107)))) e!14186 tp_is_empty!295 setRes!240 tp!22068))))

(declare-fun condSetEmpty!241 () Bool)

(assert (=> b!32256 (= condSetEmpty!241 (= (_2!55 (h!5601 mapDefault!107)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun mapIsEmpty!107 () Bool)

(assert (=> mapIsEmpty!107 mapRes!107))

(declare-fun b!32257 () Bool)

(declare-fun tp!22062 () Bool)

(assert (=> b!32257 (= e!14182 tp!22062)))

(declare-fun mapNonEmpty!107 () Bool)

(declare-fun tp!22064 () Bool)

(assert (=> mapNonEmpty!107 (= mapRes!107 (and tp!22064 e!14183))))

(declare-fun mapKey!107 () (_ BitVec 32))

(declare-fun mapRest!107 () (Array (_ BitVec 32) List!207))

(assert (=> mapNonEmpty!107 (= mapRest!103 (store mapRest!107 mapKey!107 mapValue!107))))

(declare-fun b!32258 () Bool)

(declare-fun tp!22060 () Bool)

(assert (=> b!32258 (= e!14185 tp!22060)))

(declare-fun b!32259 () Bool)

(declare-fun e!14184 () Bool)

(declare-fun tp!22067 () Bool)

(assert (=> b!32259 (= e!14184 tp!22067)))

(declare-fun tp!22063 () Bool)

(declare-fun setNonEmpty!241 () Bool)

(declare-fun setElem!241 () Context!30)

(assert (=> setNonEmpty!241 (= setRes!241 (and tp!22063 (inv!513 setElem!241) e!14184))))

(declare-fun setRest!240 () (InoxSet Context!30))

(assert (=> setNonEmpty!241 (= (_2!55 (h!5601 mapValue!107)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!241 true) setRest!240))))

(assert (= (and mapNonEmpty!103 condMapEmpty!107) mapIsEmpty!107))

(assert (= (and mapNonEmpty!103 (not condMapEmpty!107)) mapNonEmpty!107))

(assert (= b!32255 b!32257))

(assert (= (and b!32255 condSetEmpty!240) setIsEmpty!240))

(assert (= (and b!32255 (not condSetEmpty!240)) setNonEmpty!241))

(assert (= setNonEmpty!241 b!32259))

(assert (= (and mapNonEmpty!107 ((_ is Cons!205) mapValue!107)) b!32255))

(assert (= b!32256 b!32254))

(assert (= (and b!32256 condSetEmpty!241) setIsEmpty!241))

(assert (= (and b!32256 (not condSetEmpty!241)) setNonEmpty!240))

(assert (= setNonEmpty!240 b!32258))

(assert (= (and mapNonEmpty!103 ((_ is Cons!205) mapDefault!107)) b!32256))

(declare-fun m!8523 () Bool)

(assert (=> setNonEmpty!241 m!8523))

(declare-fun m!8525 () Bool)

(assert (=> setNonEmpty!240 m!8525))

(declare-fun m!8527 () Bool)

(assert (=> b!32255 m!8527))

(declare-fun m!8529 () Bool)

(assert (=> b!32256 m!8529))

(declare-fun m!8531 () Bool)

(assert (=> mapNonEmpty!107 m!8531))

(declare-fun setElem!242 () Context!30)

(declare-fun setNonEmpty!242 () Bool)

(declare-fun e!14188 () Bool)

(declare-fun tp!22072 () Bool)

(declare-fun setRes!242 () Bool)

(assert (=> setNonEmpty!242 (= setRes!242 (and tp!22072 (inv!513 setElem!242) e!14188))))

(declare-fun setRest!242 () (InoxSet Context!30))

(assert (=> setNonEmpty!242 (= (_2!57 (h!5602 (t!14793 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!242 true) setRest!242))))

(declare-fun b!32260 () Bool)

(declare-fun e!14189 () Bool)

(declare-fun tp!22074 () Bool)

(assert (=> b!32260 (= e!14189 tp!22074)))

(declare-fun setIsEmpty!242 () Bool)

(assert (=> setIsEmpty!242 setRes!242))

(declare-fun b!32261 () Bool)

(declare-fun tp!22073 () Bool)

(assert (=> b!32261 (= e!14188 tp!22073)))

(declare-fun b!32262 () Bool)

(declare-fun e!14187 () Bool)

(declare-fun tp!22071 () Bool)

(assert (=> b!32262 (= e!14187 (and (inv!513 (_1!56 (_1!57 (h!5602 (t!14793 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))))))) e!14189 tp_is_empty!295 setRes!242 tp!22071))))

(declare-fun condSetEmpty!242 () Bool)

(assert (=> b!32262 (= condSetEmpty!242 (= (_2!57 (h!5602 (t!14793 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))))) ((as const (Array Context!30 Bool)) false)))))

(assert (=> b!31865 (= tp!21976 e!14187)))

(assert (= b!32262 b!32260))

(assert (= (and b!32262 condSetEmpty!242) setIsEmpty!242))

(assert (= (and b!32262 (not condSetEmpty!242)) setNonEmpty!242))

(assert (= setNonEmpty!242 b!32261))

(assert (= (and b!31865 ((_ is Cons!206) (t!14793 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))))) b!32262))

(declare-fun m!8533 () Bool)

(assert (=> setNonEmpty!242 m!8533))

(declare-fun m!8535 () Bool)

(assert (=> b!32262 m!8535))

(declare-fun b!32263 () Bool)

(declare-fun e!14190 () Bool)

(declare-fun tp!22075 () Bool)

(declare-fun tp!22076 () Bool)

(assert (=> b!32263 (= e!14190 (and tp!22075 tp!22076))))

(assert (=> b!31867 (= tp!21982 e!14190)))

(assert (= (and b!31867 ((_ is Cons!204) (exprs!515 setElem!225))) b!32263))

(declare-fun b!32264 () Bool)

(declare-fun e!14191 () Bool)

(assert (=> b!32264 (= e!14191 tp_is_empty!295)))

(declare-fun b!32266 () Bool)

(declare-fun tp!22080 () Bool)

(assert (=> b!32266 (= e!14191 tp!22080)))

(declare-fun b!32265 () Bool)

(declare-fun tp!22077 () Bool)

(declare-fun tp!22079 () Bool)

(assert (=> b!32265 (= e!14191 (and tp!22077 tp!22079))))

(declare-fun b!32267 () Bool)

(declare-fun tp!22081 () Bool)

(declare-fun tp!22078 () Bool)

(assert (=> b!32267 (= e!14191 (and tp!22081 tp!22078))))

(assert (=> b!31861 (= tp!21971 e!14191)))

(assert (= (and b!31861 ((_ is ElementMatch!133) (_1!54 (_1!55 (h!5601 mapValue!99))))) b!32264))

(assert (= (and b!31861 ((_ is Concat!232) (_1!54 (_1!55 (h!5601 mapValue!99))))) b!32265))

(assert (= (and b!31861 ((_ is Star!133) (_1!54 (_1!55 (h!5601 mapValue!99))))) b!32266))

(assert (= (and b!31861 ((_ is Union!133) (_1!54 (_1!55 (h!5601 mapValue!99))))) b!32267))

(declare-fun b!32268 () Bool)

(declare-fun e!14192 () Bool)

(declare-fun tp!22083 () Bool)

(assert (=> b!32268 (= e!14192 tp!22083)))

(declare-fun tp!22082 () Bool)

(declare-fun setRes!243 () Bool)

(declare-fun e!14193 () Bool)

(declare-fun tp!22084 () Bool)

(declare-fun b!32269 () Bool)

(assert (=> b!32269 (= e!14193 (and tp!22082 (inv!513 (_2!54 (_1!55 (h!5601 (t!14792 mapValue!99))))) e!14192 tp_is_empty!295 setRes!243 tp!22084))))

(declare-fun condSetEmpty!243 () Bool)

(assert (=> b!32269 (= condSetEmpty!243 (= (_2!55 (h!5601 (t!14792 mapValue!99))) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!243 () Bool)

(assert (=> setIsEmpty!243 setRes!243))

(assert (=> b!31861 (= tp!21973 e!14193)))

(declare-fun e!14194 () Bool)

(declare-fun tp!22086 () Bool)

(declare-fun setNonEmpty!243 () Bool)

(declare-fun setElem!243 () Context!30)

(assert (=> setNonEmpty!243 (= setRes!243 (and tp!22086 (inv!513 setElem!243) e!14194))))

(declare-fun setRest!243 () (InoxSet Context!30))

(assert (=> setNonEmpty!243 (= (_2!55 (h!5601 (t!14792 mapValue!99))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!243 true) setRest!243))))

(declare-fun b!32270 () Bool)

(declare-fun tp!22085 () Bool)

(assert (=> b!32270 (= e!14194 tp!22085)))

(assert (= b!32269 b!32268))

(assert (= (and b!32269 condSetEmpty!243) setIsEmpty!243))

(assert (= (and b!32269 (not condSetEmpty!243)) setNonEmpty!243))

(assert (= setNonEmpty!243 b!32270))

(assert (= (and b!31861 ((_ is Cons!205) (t!14792 mapValue!99))) b!32269))

(declare-fun m!8537 () Bool)

(assert (=> b!32269 m!8537))

(declare-fun m!8539 () Bool)

(assert (=> setNonEmpty!243 m!8539))

(declare-fun b!32271 () Bool)

(declare-fun e!14195 () Bool)

(declare-fun tp!22087 () Bool)

(declare-fun tp!22088 () Bool)

(assert (=> b!32271 (= e!14195 (and tp!22087 tp!22088))))

(assert (=> b!31889 (= tp!22008 e!14195)))

(assert (= (and b!31889 ((_ is Cons!204) (exprs!515 (_1!56 (_1!57 (h!5602 mapDefault!106)))))) b!32271))

(declare-fun condSetEmpty!244 () Bool)

(assert (=> setNonEmpty!226 (= condSetEmpty!244 (= setRest!226 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!244 () Bool)

(assert (=> setNonEmpty!226 (= tp!21988 setRes!244)))

(declare-fun setIsEmpty!244 () Bool)

(assert (=> setIsEmpty!244 setRes!244))

(declare-fun setElem!244 () Context!30)

(declare-fun setNonEmpty!244 () Bool)

(declare-fun tp!22089 () Bool)

(declare-fun e!14196 () Bool)

(assert (=> setNonEmpty!244 (= setRes!244 (and tp!22089 (inv!513 setElem!244) e!14196))))

(declare-fun setRest!244 () (InoxSet Context!30))

(assert (=> setNonEmpty!244 (= setRest!226 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!244 true) setRest!244))))

(declare-fun b!32272 () Bool)

(declare-fun tp!22090 () Bool)

(assert (=> b!32272 (= e!14196 tp!22090)))

(assert (= (and setNonEmpty!226 condSetEmpty!244) setIsEmpty!244))

(assert (= (and setNonEmpty!226 (not condSetEmpty!244)) setNonEmpty!244))

(assert (= setNonEmpty!244 b!32272))

(declare-fun m!8541 () Bool)

(assert (=> setNonEmpty!244 m!8541))

(declare-fun b!32273 () Bool)

(declare-fun e!14197 () Bool)

(declare-fun tp!22091 () Bool)

(declare-fun tp!22092 () Bool)

(assert (=> b!32273 (= e!14197 (and tp!22091 tp!22092))))

(assert (=> b!31887 (= tp!22009 e!14197)))

(assert (= (and b!31887 ((_ is Cons!204) (exprs!515 setElem!231))) b!32273))

(declare-fun b!32274 () Bool)

(declare-fun e!14198 () Bool)

(assert (=> b!32274 (= e!14198 tp_is_empty!295)))

(declare-fun b!32276 () Bool)

(declare-fun tp!22096 () Bool)

(assert (=> b!32276 (= e!14198 tp!22096)))

(declare-fun b!32275 () Bool)

(declare-fun tp!22093 () Bool)

(declare-fun tp!22095 () Bool)

(assert (=> b!32275 (= e!14198 (and tp!22093 tp!22095))))

(declare-fun b!32277 () Bool)

(declare-fun tp!22097 () Bool)

(declare-fun tp!22094 () Bool)

(assert (=> b!32277 (= e!14198 (and tp!22097 tp!22094))))

(assert (=> b!31870 (= tp!21984 e!14198)))

(assert (= (and b!31870 ((_ is ElementMatch!133) (_1!54 (_1!55 (h!5601 mapDefault!99))))) b!32274))

(assert (= (and b!31870 ((_ is Concat!232) (_1!54 (_1!55 (h!5601 mapDefault!99))))) b!32275))

(assert (= (and b!31870 ((_ is Star!133) (_1!54 (_1!55 (h!5601 mapDefault!99))))) b!32276))

(assert (= (and b!31870 ((_ is Union!133) (_1!54 (_1!55 (h!5601 mapDefault!99))))) b!32277))

(declare-fun b!32278 () Bool)

(declare-fun e!14199 () Bool)

(declare-fun tp!22099 () Bool)

(assert (=> b!32278 (= e!14199 tp!22099)))

(declare-fun b!32279 () Bool)

(declare-fun tp!22098 () Bool)

(declare-fun e!14200 () Bool)

(declare-fun tp!22100 () Bool)

(declare-fun setRes!245 () Bool)

(assert (=> b!32279 (= e!14200 (and tp!22098 (inv!513 (_2!54 (_1!55 (h!5601 (t!14792 mapDefault!99))))) e!14199 tp_is_empty!295 setRes!245 tp!22100))))

(declare-fun condSetEmpty!245 () Bool)

(assert (=> b!32279 (= condSetEmpty!245 (= (_2!55 (h!5601 (t!14792 mapDefault!99))) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!245 () Bool)

(assert (=> setIsEmpty!245 setRes!245))

(assert (=> b!31870 (= tp!21986 e!14200)))

(declare-fun setElem!245 () Context!30)

(declare-fun tp!22102 () Bool)

(declare-fun setNonEmpty!245 () Bool)

(declare-fun e!14201 () Bool)

(assert (=> setNonEmpty!245 (= setRes!245 (and tp!22102 (inv!513 setElem!245) e!14201))))

(declare-fun setRest!245 () (InoxSet Context!30))

(assert (=> setNonEmpty!245 (= (_2!55 (h!5601 (t!14792 mapDefault!99))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!245 true) setRest!245))))

(declare-fun b!32280 () Bool)

(declare-fun tp!22101 () Bool)

(assert (=> b!32280 (= e!14201 tp!22101)))

(assert (= b!32279 b!32278))

(assert (= (and b!32279 condSetEmpty!245) setIsEmpty!245))

(assert (= (and b!32279 (not condSetEmpty!245)) setNonEmpty!245))

(assert (= setNonEmpty!245 b!32280))

(assert (= (and b!31870 ((_ is Cons!205) (t!14792 mapDefault!99))) b!32279))

(declare-fun m!8543 () Bool)

(assert (=> b!32279 m!8543))

(declare-fun m!8545 () Bool)

(assert (=> setNonEmpty!245 m!8545))

(declare-fun b!32281 () Bool)

(declare-fun e!14202 () Bool)

(declare-fun tp!22103 () Bool)

(declare-fun tp!22104 () Bool)

(assert (=> b!32281 (= e!14202 (and tp!22103 tp!22104))))

(assert (=> b!31866 (= tp!21983 e!14202)))

(assert (= (and b!31866 ((_ is Cons!204) (exprs!515 (_1!56 (_1!57 (h!5602 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))))))) b!32281))

(declare-fun condSetEmpty!246 () Bool)

(assert (=> setNonEmpty!224 (= condSetEmpty!246 (= setRest!224 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!246 () Bool)

(assert (=> setNonEmpty!224 (= tp!21977 setRes!246)))

(declare-fun setIsEmpty!246 () Bool)

(assert (=> setIsEmpty!246 setRes!246))

(declare-fun tp!22105 () Bool)

(declare-fun setElem!246 () Context!30)

(declare-fun setNonEmpty!246 () Bool)

(declare-fun e!14203 () Bool)

(assert (=> setNonEmpty!246 (= setRes!246 (and tp!22105 (inv!513 setElem!246) e!14203))))

(declare-fun setRest!246 () (InoxSet Context!30))

(assert (=> setNonEmpty!246 (= setRest!224 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!246 true) setRest!246))))

(declare-fun b!32282 () Bool)

(declare-fun tp!22106 () Bool)

(assert (=> b!32282 (= e!14203 tp!22106)))

(assert (= (and setNonEmpty!224 condSetEmpty!246) setIsEmpty!246))

(assert (= (and setNonEmpty!224 (not condSetEmpty!246)) setNonEmpty!246))

(assert (= setNonEmpty!246 b!32282))

(declare-fun m!8547 () Bool)

(assert (=> setNonEmpty!246 m!8547))

(declare-fun b!32283 () Bool)

(declare-fun e!14204 () Bool)

(declare-fun tp!22107 () Bool)

(declare-fun tp!22108 () Bool)

(assert (=> b!32283 (= e!14204 (and tp!22107 tp!22108))))

(assert (=> b!31892 (= tp!22019 e!14204)))

(assert (= (and b!31892 ((_ is Cons!204) (exprs!515 (_1!56 (_1!57 (h!5602 mapValue!100)))))) b!32283))

(declare-fun b!32284 () Bool)

(declare-fun e!14205 () Bool)

(declare-fun tp!22109 () Bool)

(declare-fun tp!22110 () Bool)

(assert (=> b!32284 (= e!14205 (and tp!22109 tp!22110))))

(assert (=> b!31838 (= tp!21936 e!14205)))

(assert (= (and b!31838 ((_ is Cons!204) (exprs!515 setElem!216))) b!32284))

(declare-fun b!32285 () Bool)

(declare-fun e!14206 () Bool)

(declare-fun tp!22111 () Bool)

(declare-fun tp!22112 () Bool)

(assert (=> b!32285 (= e!14206 (and tp!22111 tp!22112))))

(assert (=> b!31837 (= tp!21937 e!14206)))

(assert (= (and b!31837 ((_ is Cons!204) (exprs!515 (_1!56 (_1!57 (h!5602 mapDefault!100)))))) b!32285))

(declare-fun condSetEmpty!247 () Bool)

(assert (=> setNonEmpty!213 (= condSetEmpty!247 (= setRest!213 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!247 () Bool)

(assert (=> setNonEmpty!213 (= tp!21901 setRes!247)))

(declare-fun setIsEmpty!247 () Bool)

(assert (=> setIsEmpty!247 setRes!247))

(declare-fun tp!22113 () Bool)

(declare-fun setElem!247 () Context!30)

(declare-fun e!14207 () Bool)

(declare-fun setNonEmpty!247 () Bool)

(assert (=> setNonEmpty!247 (= setRes!247 (and tp!22113 (inv!513 setElem!247) e!14207))))

(declare-fun setRest!247 () (InoxSet Context!30))

(assert (=> setNonEmpty!247 (= setRest!213 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!247 true) setRest!247))))

(declare-fun b!32286 () Bool)

(declare-fun tp!22114 () Bool)

(assert (=> b!32286 (= e!14207 tp!22114)))

(assert (= (and setNonEmpty!213 condSetEmpty!247) setIsEmpty!247))

(assert (= (and setNonEmpty!213 (not condSetEmpty!247)) setNonEmpty!247))

(assert (= setNonEmpty!247 b!32286))

(declare-fun m!8549 () Bool)

(assert (=> setNonEmpty!247 m!8549))

(declare-fun condSetEmpty!248 () Bool)

(assert (=> setNonEmpty!232 (= condSetEmpty!248 (= setRest!231 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!248 () Bool)

(assert (=> setNonEmpty!232 (= tp!22015 setRes!248)))

(declare-fun setIsEmpty!248 () Bool)

(assert (=> setIsEmpty!248 setRes!248))

(declare-fun setElem!248 () Context!30)

(declare-fun e!14208 () Bool)

(declare-fun setNonEmpty!248 () Bool)

(declare-fun tp!22115 () Bool)

(assert (=> setNonEmpty!248 (= setRes!248 (and tp!22115 (inv!513 setElem!248) e!14208))))

(declare-fun setRest!248 () (InoxSet Context!30))

(assert (=> setNonEmpty!248 (= setRest!231 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!248 true) setRest!248))))

(declare-fun b!32287 () Bool)

(declare-fun tp!22116 () Bool)

(assert (=> b!32287 (= e!14208 tp!22116)))

(assert (= (and setNonEmpty!232 condSetEmpty!248) setIsEmpty!248))

(assert (= (and setNonEmpty!232 (not condSetEmpty!248)) setNonEmpty!248))

(assert (= setNonEmpty!248 b!32287))

(declare-fun m!8551 () Bool)

(assert (=> setNonEmpty!248 m!8551))

(declare-fun condSetEmpty!249 () Bool)

(assert (=> setNonEmpty!212 (= condSetEmpty!249 (= setRest!212 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!249 () Bool)

(assert (=> setNonEmpty!212 (= tp!21896 setRes!249)))

(declare-fun setIsEmpty!249 () Bool)

(assert (=> setIsEmpty!249 setRes!249))

(declare-fun setElem!249 () Context!30)

(declare-fun setNonEmpty!249 () Bool)

(declare-fun e!14209 () Bool)

(declare-fun tp!22117 () Bool)

(assert (=> setNonEmpty!249 (= setRes!249 (and tp!22117 (inv!513 setElem!249) e!14209))))

(declare-fun setRest!249 () (InoxSet Context!30))

(assert (=> setNonEmpty!249 (= setRest!212 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!249 true) setRest!249))))

(declare-fun b!32288 () Bool)

(declare-fun tp!22118 () Bool)

(assert (=> b!32288 (= e!14209 tp!22118)))

(assert (= (and setNonEmpty!212 condSetEmpty!249) setIsEmpty!249))

(assert (= (and setNonEmpty!212 (not condSetEmpty!249)) setNonEmpty!249))

(assert (= setNonEmpty!249 b!32288))

(declare-fun m!8553 () Bool)

(assert (=> setNonEmpty!249 m!8553))

(declare-fun condSetEmpty!250 () Bool)

(assert (=> setNonEmpty!223 (= condSetEmpty!250 (= setRest!223 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!250 () Bool)

(assert (=> setNonEmpty!223 (= tp!21975 setRes!250)))

(declare-fun setIsEmpty!250 () Bool)

(assert (=> setIsEmpty!250 setRes!250))

(declare-fun tp!22119 () Bool)

(declare-fun setElem!250 () Context!30)

(declare-fun e!14210 () Bool)

(declare-fun setNonEmpty!250 () Bool)

(assert (=> setNonEmpty!250 (= setRes!250 (and tp!22119 (inv!513 setElem!250) e!14210))))

(declare-fun setRest!250 () (InoxSet Context!30))

(assert (=> setNonEmpty!250 (= setRest!223 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!250 true) setRest!250))))

(declare-fun b!32289 () Bool)

(declare-fun tp!22120 () Bool)

(assert (=> b!32289 (= e!14210 tp!22120)))

(assert (= (and setNonEmpty!223 condSetEmpty!250) setIsEmpty!250))

(assert (= (and setNonEmpty!223 (not condSetEmpty!250)) setNonEmpty!250))

(assert (= setNonEmpty!250 b!32289))

(declare-fun m!8555 () Bool)

(assert (=> setNonEmpty!250 m!8555))

(declare-fun b!32290 () Bool)

(declare-fun e!14211 () Bool)

(assert (=> b!32290 (= e!14211 tp_is_empty!295)))

(declare-fun b!32292 () Bool)

(declare-fun tp!22124 () Bool)

(assert (=> b!32292 (= e!14211 tp!22124)))

(declare-fun b!32291 () Bool)

(declare-fun tp!22121 () Bool)

(declare-fun tp!22123 () Bool)

(assert (=> b!32291 (= e!14211 (and tp!22121 tp!22123))))

(declare-fun b!32293 () Bool)

(declare-fun tp!22125 () Bool)

(declare-fun tp!22122 () Bool)

(assert (=> b!32293 (= e!14211 (and tp!22125 tp!22122))))

(assert (=> b!31802 (= tp!21897 e!14211)))

(assert (= (and b!31802 ((_ is ElementMatch!133) (_1!54 (_1!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) b!32290))

(assert (= (and b!31802 ((_ is Concat!232) (_1!54 (_1!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) b!32291))

(assert (= (and b!31802 ((_ is Star!133) (_1!54 (_1!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) b!32292))

(assert (= (and b!31802 ((_ is Union!133) (_1!54 (_1!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) b!32293))

(declare-fun b!32294 () Bool)

(declare-fun e!14212 () Bool)

(declare-fun tp!22127 () Bool)

(assert (=> b!32294 (= e!14212 tp!22127)))

(declare-fun tp!22128 () Bool)

(declare-fun b!32295 () Bool)

(declare-fun e!14213 () Bool)

(declare-fun tp!22126 () Bool)

(declare-fun setRes!251 () Bool)

(assert (=> b!32295 (= e!14213 (and tp!22126 (inv!513 (_2!54 (_1!55 (h!5601 (t!14792 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) e!14212 tp_is_empty!295 setRes!251 tp!22128))))

(declare-fun condSetEmpty!251 () Bool)

(assert (=> b!32295 (= condSetEmpty!251 (= (_2!55 (h!5601 (t!14792 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!251 () Bool)

(assert (=> setIsEmpty!251 setRes!251))

(assert (=> b!31802 (= tp!21899 e!14213)))

(declare-fun setElem!251 () Context!30)

(declare-fun e!14214 () Bool)

(declare-fun setNonEmpty!251 () Bool)

(declare-fun tp!22130 () Bool)

(assert (=> setNonEmpty!251 (= setRes!251 (and tp!22130 (inv!513 setElem!251) e!14214))))

(declare-fun setRest!251 () (InoxSet Context!30))

(assert (=> setNonEmpty!251 (= (_2!55 (h!5601 (t!14792 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!251 true) setRest!251))))

(declare-fun b!32296 () Bool)

(declare-fun tp!22129 () Bool)

(assert (=> b!32296 (= e!14214 tp!22129)))

(assert (= b!32295 b!32294))

(assert (= (and b!32295 condSetEmpty!251) setIsEmpty!251))

(assert (= (and b!32295 (not condSetEmpty!251)) setNonEmpty!251))

(assert (= setNonEmpty!251 b!32296))

(assert (= (and b!31802 ((_ is Cons!205) (t!14792 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))) b!32295))

(declare-fun m!8557 () Bool)

(assert (=> b!32295 m!8557))

(declare-fun m!8559 () Bool)

(assert (=> setNonEmpty!251 m!8559))

(declare-fun b!32297 () Bool)

(declare-fun e!14215 () Bool)

(assert (=> b!32297 (= e!14215 tp_is_empty!295)))

(declare-fun b!32299 () Bool)

(declare-fun tp!22134 () Bool)

(assert (=> b!32299 (= e!14215 tp!22134)))

(declare-fun b!32298 () Bool)

(declare-fun tp!22131 () Bool)

(declare-fun tp!22133 () Bool)

(assert (=> b!32298 (= e!14215 (and tp!22131 tp!22133))))

(declare-fun b!32300 () Bool)

(declare-fun tp!22135 () Bool)

(declare-fun tp!22132 () Bool)

(assert (=> b!32300 (= e!14215 (and tp!22135 tp!22132))))

(assert (=> b!31799 (= tp!21892 e!14215)))

(assert (= (and b!31799 ((_ is ElementMatch!133) (_1!54 (_1!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) b!32297))

(assert (= (and b!31799 ((_ is Concat!232) (_1!54 (_1!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) b!32298))

(assert (= (and b!31799 ((_ is Star!133) (_1!54 (_1!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) b!32299))

(assert (= (and b!31799 ((_ is Union!133) (_1!54 (_1!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) b!32300))

(declare-fun b!32301 () Bool)

(declare-fun e!14216 () Bool)

(declare-fun tp!22137 () Bool)

(assert (=> b!32301 (= e!14216 tp!22137)))

(declare-fun e!14217 () Bool)

(declare-fun b!32302 () Bool)

(declare-fun setRes!252 () Bool)

(declare-fun tp!22138 () Bool)

(declare-fun tp!22136 () Bool)

(assert (=> b!32302 (= e!14217 (and tp!22136 (inv!513 (_2!54 (_1!55 (h!5601 (t!14792 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))))) e!14216 tp_is_empty!295 setRes!252 tp!22138))))

(declare-fun condSetEmpty!252 () Bool)

(assert (=> b!32302 (= condSetEmpty!252 (= (_2!55 (h!5601 (t!14792 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!252 () Bool)

(assert (=> setIsEmpty!252 setRes!252))

(assert (=> b!31799 (= tp!21894 e!14217)))

(declare-fun setElem!252 () Context!30)

(declare-fun tp!22140 () Bool)

(declare-fun setNonEmpty!252 () Bool)

(declare-fun e!14218 () Bool)

(assert (=> setNonEmpty!252 (= setRes!252 (and tp!22140 (inv!513 setElem!252) e!14218))))

(declare-fun setRest!252 () (InoxSet Context!30))

(assert (=> setNonEmpty!252 (= (_2!55 (h!5601 (t!14792 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!252 true) setRest!252))))

(declare-fun b!32303 () Bool)

(declare-fun tp!22139 () Bool)

(assert (=> b!32303 (= e!14218 tp!22139)))

(assert (= b!32302 b!32301))

(assert (= (and b!32302 condSetEmpty!252) setIsEmpty!252))

(assert (= (and b!32302 (not condSetEmpty!252)) setNonEmpty!252))

(assert (= setNonEmpty!252 b!32303))

(assert (= (and b!31799 ((_ is Cons!205) (t!14792 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485))))))))) b!32302))

(declare-fun m!8561 () Bool)

(assert (=> b!32302 m!8561))

(declare-fun m!8563 () Bool)

(assert (=> setNonEmpty!252 m!8563))

(declare-fun b!32304 () Bool)

(declare-fun e!14219 () Bool)

(declare-fun tp!22141 () Bool)

(declare-fun tp!22142 () Bool)

(assert (=> b!32304 (= e!14219 (and tp!22141 tp!22142))))

(assert (=> b!31893 (= tp!22018 e!14219)))

(assert (= (and b!31893 ((_ is Cons!204) (exprs!515 setElem!233))) b!32304))

(declare-fun b!32305 () Bool)

(declare-fun e!14220 () Bool)

(declare-fun tp!22143 () Bool)

(declare-fun tp!22144 () Bool)

(assert (=> b!32305 (= e!14220 (and tp!22143 tp!22144))))

(assert (=> b!31854 (= tp!21970 e!14220)))

(assert (= (and b!31854 ((_ is Cons!204) (exprs!515 (_2!54 (_1!55 (h!5601 mapDefault!103)))))) b!32305))

(declare-fun b!32306 () Bool)

(declare-fun e!14221 () Bool)

(declare-fun tp!22145 () Bool)

(declare-fun tp!22146 () Bool)

(assert (=> b!32306 (= e!14221 (and tp!22145 tp!22146))))

(assert (=> b!31858 (= tp!21960 e!14221)))

(assert (= (and b!31858 ((_ is Cons!204) (exprs!515 setElem!221))) b!32306))

(declare-fun b!32307 () Bool)

(declare-fun e!14223 () Bool)

(declare-fun tp!22150 () Bool)

(assert (=> b!32307 (= e!14223 tp!22150)))

(declare-fun mapNonEmpty!108 () Bool)

(declare-fun mapRes!108 () Bool)

(declare-fun tp!22154 () Bool)

(declare-fun e!14227 () Bool)

(assert (=> mapNonEmpty!108 (= mapRes!108 (and tp!22154 e!14227))))

(declare-fun mapRest!108 () (Array (_ BitVec 32) List!208))

(declare-fun mapKey!108 () (_ BitVec 32))

(declare-fun mapValue!108 () List!208)

(assert (=> mapNonEmpty!108 (= mapRest!106 (store mapRest!108 mapKey!108 mapValue!108))))

(declare-fun b!32308 () Bool)

(declare-fun e!14224 () Bool)

(declare-fun tp!22149 () Bool)

(assert (=> b!32308 (= e!14224 tp!22149)))

(declare-fun setRes!253 () Bool)

(declare-fun e!14226 () Bool)

(declare-fun mapDefault!108 () List!208)

(declare-fun tp!22152 () Bool)

(declare-fun e!14222 () Bool)

(declare-fun b!32309 () Bool)

(assert (=> b!32309 (= e!14222 (and (inv!513 (_1!56 (_1!57 (h!5602 mapDefault!108)))) e!14226 tp_is_empty!295 setRes!253 tp!22152))))

(declare-fun condSetEmpty!253 () Bool)

(assert (=> b!32309 (= condSetEmpty!253 (= (_2!57 (h!5602 mapDefault!108)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun b!32310 () Bool)

(declare-fun tp!22148 () Bool)

(assert (=> b!32310 (= e!14226 tp!22148)))

(declare-fun b!32311 () Bool)

(declare-fun e!14225 () Bool)

(declare-fun tp!22151 () Bool)

(assert (=> b!32311 (= e!14225 tp!22151)))

(declare-fun setIsEmpty!253 () Bool)

(assert (=> setIsEmpty!253 setRes!253))

(declare-fun b!32312 () Bool)

(declare-fun setRes!254 () Bool)

(declare-fun tp!22153 () Bool)

(assert (=> b!32312 (= e!14227 (and (inv!513 (_1!56 (_1!57 (h!5602 mapValue!108)))) e!14225 tp_is_empty!295 setRes!254 tp!22153))))

(declare-fun condSetEmpty!254 () Bool)

(assert (=> b!32312 (= condSetEmpty!254 (= (_2!57 (h!5602 mapValue!108)) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!254 () Bool)

(assert (=> setIsEmpty!254 setRes!254))

(declare-fun condMapEmpty!108 () Bool)

(assert (=> mapNonEmpty!106 (= condMapEmpty!108 (= mapRest!106 ((as const (Array (_ BitVec 32) List!208)) mapDefault!108)))))

(assert (=> mapNonEmpty!106 (= tp!22014 (and e!14222 mapRes!108))))

(declare-fun mapIsEmpty!108 () Bool)

(assert (=> mapIsEmpty!108 mapRes!108))

(declare-fun setElem!254 () Context!30)

(declare-fun setNonEmpty!253 () Bool)

(declare-fun tp!22147 () Bool)

(assert (=> setNonEmpty!253 (= setRes!254 (and tp!22147 (inv!513 setElem!254) e!14223))))

(declare-fun setRest!254 () (InoxSet Context!30))

(assert (=> setNonEmpty!253 (= (_2!57 (h!5602 mapValue!108)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!254 true) setRest!254))))

(declare-fun tp!22155 () Bool)

(declare-fun setElem!253 () Context!30)

(declare-fun setNonEmpty!254 () Bool)

(assert (=> setNonEmpty!254 (= setRes!253 (and tp!22155 (inv!513 setElem!253) e!14224))))

(declare-fun setRest!253 () (InoxSet Context!30))

(assert (=> setNonEmpty!254 (= (_2!57 (h!5602 mapDefault!108)) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!253 true) setRest!253))))

(assert (= (and mapNonEmpty!106 condMapEmpty!108) mapIsEmpty!108))

(assert (= (and mapNonEmpty!106 (not condMapEmpty!108)) mapNonEmpty!108))

(assert (= b!32312 b!32311))

(assert (= (and b!32312 condSetEmpty!254) setIsEmpty!254))

(assert (= (and b!32312 (not condSetEmpty!254)) setNonEmpty!253))

(assert (= setNonEmpty!253 b!32307))

(assert (= (and mapNonEmpty!108 ((_ is Cons!206) mapValue!108)) b!32312))

(assert (= b!32309 b!32310))

(assert (= (and b!32309 condSetEmpty!253) setIsEmpty!253))

(assert (= (and b!32309 (not condSetEmpty!253)) setNonEmpty!254))

(assert (= setNonEmpty!254 b!32308))

(assert (= (and mapNonEmpty!106 ((_ is Cons!206) mapDefault!108)) b!32309))

(declare-fun m!8565 () Bool)

(assert (=> b!32309 m!8565))

(declare-fun m!8567 () Bool)

(assert (=> setNonEmpty!254 m!8567))

(declare-fun m!8569 () Bool)

(assert (=> setNonEmpty!253 m!8569))

(declare-fun m!8571 () Bool)

(assert (=> mapNonEmpty!108 m!8571))

(declare-fun m!8573 () Bool)

(assert (=> b!32312 m!8573))

(declare-fun b!32313 () Bool)

(declare-fun e!14228 () Bool)

(declare-fun tp!22156 () Bool)

(declare-fun tp!22157 () Bool)

(assert (=> b!32313 (= e!14228 (and tp!22156 tp!22157))))

(assert (=> b!31869 (= tp!21985 e!14228)))

(assert (= (and b!31869 ((_ is Cons!204) (exprs!515 (_2!54 (_1!55 (h!5601 mapDefault!99)))))) b!32313))

(declare-fun condSetEmpty!255 () Bool)

(assert (=> setNonEmpty!225 (= condSetEmpty!255 (= setRest!225 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!255 () Bool)

(assert (=> setNonEmpty!225 (= tp!21981 setRes!255)))

(declare-fun setIsEmpty!255 () Bool)

(assert (=> setIsEmpty!255 setRes!255))

(declare-fun tp!22158 () Bool)

(declare-fun e!14229 () Bool)

(declare-fun setNonEmpty!255 () Bool)

(declare-fun setElem!255 () Context!30)

(assert (=> setNonEmpty!255 (= setRes!255 (and tp!22158 (inv!513 setElem!255) e!14229))))

(declare-fun setRest!255 () (InoxSet Context!30))

(assert (=> setNonEmpty!255 (= setRest!225 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!255 true) setRest!255))))

(declare-fun b!32314 () Bool)

(declare-fun tp!22159 () Bool)

(assert (=> b!32314 (= e!14229 tp!22159)))

(assert (= (and setNonEmpty!225 condSetEmpty!255) setIsEmpty!255))

(assert (= (and setNonEmpty!225 (not condSetEmpty!255)) setNonEmpty!255))

(assert (= setNonEmpty!255 b!32314))

(declare-fun m!8575 () Bool)

(assert (=> setNonEmpty!255 m!8575))

(declare-fun b!32315 () Bool)

(declare-fun e!14230 () Bool)

(assert (=> b!32315 (= e!14230 tp_is_empty!295)))

(declare-fun b!32317 () Bool)

(declare-fun tp!22163 () Bool)

(assert (=> b!32317 (= e!14230 tp!22163)))

(declare-fun b!32316 () Bool)

(declare-fun tp!22160 () Bool)

(declare-fun tp!22162 () Bool)

(assert (=> b!32316 (= e!14230 (and tp!22160 tp!22162))))

(declare-fun b!32318 () Bool)

(declare-fun tp!22164 () Bool)

(declare-fun tp!22161 () Bool)

(assert (=> b!32318 (= e!14230 (and tp!22164 tp!22161))))

(assert (=> b!31828 (= tp!21925 e!14230)))

(assert (= (and b!31828 ((_ is ElementMatch!133) (regOne!779 (regex!109 (h!5599 rules!1369))))) b!32315))

(assert (= (and b!31828 ((_ is Concat!232) (regOne!779 (regex!109 (h!5599 rules!1369))))) b!32316))

(assert (= (and b!31828 ((_ is Star!133) (regOne!779 (regex!109 (h!5599 rules!1369))))) b!32317))

(assert (= (and b!31828 ((_ is Union!133) (regOne!779 (regex!109 (h!5599 rules!1369))))) b!32318))

(declare-fun b!32319 () Bool)

(declare-fun e!14231 () Bool)

(assert (=> b!32319 (= e!14231 tp_is_empty!295)))

(declare-fun b!32321 () Bool)

(declare-fun tp!22168 () Bool)

(assert (=> b!32321 (= e!14231 tp!22168)))

(declare-fun b!32320 () Bool)

(declare-fun tp!22165 () Bool)

(declare-fun tp!22167 () Bool)

(assert (=> b!32320 (= e!14231 (and tp!22165 tp!22167))))

(declare-fun b!32322 () Bool)

(declare-fun tp!22169 () Bool)

(declare-fun tp!22166 () Bool)

(assert (=> b!32322 (= e!14231 (and tp!22169 tp!22166))))

(assert (=> b!31828 (= tp!21922 e!14231)))

(assert (= (and b!31828 ((_ is ElementMatch!133) (regTwo!779 (regex!109 (h!5599 rules!1369))))) b!32319))

(assert (= (and b!31828 ((_ is Concat!232) (regTwo!779 (regex!109 (h!5599 rules!1369))))) b!32320))

(assert (= (and b!31828 ((_ is Star!133) (regTwo!779 (regex!109 (h!5599 rules!1369))))) b!32321))

(assert (= (and b!31828 ((_ is Union!133) (regTwo!779 (regex!109 (h!5599 rules!1369))))) b!32322))

(declare-fun b!32323 () Bool)

(declare-fun e!14232 () Bool)

(declare-fun tp!22170 () Bool)

(declare-fun tp!22171 () Bool)

(assert (=> b!32323 (= e!14232 (and tp!22170 tp!22171))))

(assert (=> b!31886 (= tp!22010 e!14232)))

(assert (= (and b!31886 ((_ is Cons!204) (exprs!515 setElem!232))) b!32323))

(declare-fun b!32324 () Bool)

(declare-fun e!14233 () Bool)

(assert (=> b!32324 (= e!14233 tp_is_empty!295)))

(declare-fun b!32326 () Bool)

(declare-fun tp!22175 () Bool)

(assert (=> b!32326 (= e!14233 tp!22175)))

(declare-fun b!32325 () Bool)

(declare-fun tp!22172 () Bool)

(declare-fun tp!22174 () Bool)

(assert (=> b!32325 (= e!14233 (and tp!22172 tp!22174))))

(declare-fun b!32327 () Bool)

(declare-fun tp!22176 () Bool)

(declare-fun tp!22173 () Bool)

(assert (=> b!32327 (= e!14233 (and tp!22176 tp!22173))))

(assert (=> b!31826 (= tp!21921 e!14233)))

(assert (= (and b!31826 ((_ is ElementMatch!133) (regOne!778 (regex!109 (h!5599 rules!1369))))) b!32324))

(assert (= (and b!31826 ((_ is Concat!232) (regOne!778 (regex!109 (h!5599 rules!1369))))) b!32325))

(assert (= (and b!31826 ((_ is Star!133) (regOne!778 (regex!109 (h!5599 rules!1369))))) b!32326))

(assert (= (and b!31826 ((_ is Union!133) (regOne!778 (regex!109 (h!5599 rules!1369))))) b!32327))

(declare-fun b!32328 () Bool)

(declare-fun e!14234 () Bool)

(assert (=> b!32328 (= e!14234 tp_is_empty!295)))

(declare-fun b!32330 () Bool)

(declare-fun tp!22180 () Bool)

(assert (=> b!32330 (= e!14234 tp!22180)))

(declare-fun b!32329 () Bool)

(declare-fun tp!22177 () Bool)

(declare-fun tp!22179 () Bool)

(assert (=> b!32329 (= e!14234 (and tp!22177 tp!22179))))

(declare-fun b!32331 () Bool)

(declare-fun tp!22181 () Bool)

(declare-fun tp!22178 () Bool)

(assert (=> b!32331 (= e!14234 (and tp!22181 tp!22178))))

(assert (=> b!31826 (= tp!21923 e!14234)))

(assert (= (and b!31826 ((_ is ElementMatch!133) (regTwo!778 (regex!109 (h!5599 rules!1369))))) b!32328))

(assert (= (and b!31826 ((_ is Concat!232) (regTwo!778 (regex!109 (h!5599 rules!1369))))) b!32329))

(assert (= (and b!31826 ((_ is Star!133) (regTwo!778 (regex!109 (h!5599 rules!1369))))) b!32330))

(assert (= (and b!31826 ((_ is Union!133) (regTwo!778 (regex!109 (h!5599 rules!1369))))) b!32331))

(declare-fun tp!22183 () Bool)

(declare-fun b!32332 () Bool)

(declare-fun tp!22182 () Bool)

(declare-fun e!14235 () Bool)

(assert (=> b!32332 (= e!14235 (and (inv!510 (left!346 (left!346 (c!15160 input!768)))) tp!22182 (inv!510 (right!676 (left!346 (c!15160 input!768)))) tp!22183))))

(declare-fun b!32334 () Bool)

(declare-fun e!14236 () Bool)

(declare-fun tp!22184 () Bool)

(assert (=> b!32334 (= e!14236 tp!22184)))

(declare-fun b!32333 () Bool)

(assert (=> b!32333 (= e!14235 (and (inv!514 (xs!2603 (left!346 (c!15160 input!768)))) e!14236))))

(assert (=> b!31812 (= tp!21908 (and (inv!510 (left!346 (c!15160 input!768))) e!14235))))

(assert (= (and b!31812 ((_ is Node!26) (left!346 (c!15160 input!768)))) b!32332))

(assert (= b!32333 b!32334))

(assert (= (and b!31812 ((_ is Leaf!157) (left!346 (c!15160 input!768)))) b!32333))

(declare-fun m!8577 () Bool)

(assert (=> b!32332 m!8577))

(declare-fun m!8579 () Bool)

(assert (=> b!32332 m!8579))

(declare-fun m!8581 () Bool)

(assert (=> b!32333 m!8581))

(assert (=> b!31812 m!8025))

(declare-fun b!32335 () Bool)

(declare-fun tp!22185 () Bool)

(declare-fun tp!22186 () Bool)

(declare-fun e!14237 () Bool)

(assert (=> b!32335 (= e!14237 (and (inv!510 (left!346 (right!676 (c!15160 input!768)))) tp!22185 (inv!510 (right!676 (right!676 (c!15160 input!768)))) tp!22186))))

(declare-fun b!32337 () Bool)

(declare-fun e!14238 () Bool)

(declare-fun tp!22187 () Bool)

(assert (=> b!32337 (= e!14238 tp!22187)))

(declare-fun b!32336 () Bool)

(assert (=> b!32336 (= e!14237 (and (inv!514 (xs!2603 (right!676 (c!15160 input!768)))) e!14238))))

(assert (=> b!31812 (= tp!21909 (and (inv!510 (right!676 (c!15160 input!768))) e!14237))))

(assert (= (and b!31812 ((_ is Node!26) (right!676 (c!15160 input!768)))) b!32335))

(assert (= b!32336 b!32337))

(assert (= (and b!31812 ((_ is Leaf!157) (right!676 (c!15160 input!768)))) b!32336))

(declare-fun m!8583 () Bool)

(assert (=> b!32335 m!8583))

(declare-fun m!8585 () Bool)

(assert (=> b!32335 m!8585))

(declare-fun m!8587 () Bool)

(assert (=> b!32336 m!8587))

(assert (=> b!31812 m!8027))

(declare-fun b!32340 () Bool)

(declare-fun b_free!169 () Bool)

(declare-fun b_next!169 () Bool)

(assert (=> b!32340 (= b_free!169 (not b_next!169))))

(declare-fun tp!22190 () Bool)

(declare-fun b_and!169 () Bool)

(assert (=> b!32340 (= tp!22190 b_and!169)))

(declare-fun b_free!171 () Bool)

(declare-fun b_next!171 () Bool)

(assert (=> b!32340 (= b_free!171 (not b_next!171))))

(declare-fun tp!22191 () Bool)

(declare-fun b_and!171 () Bool)

(assert (=> b!32340 (= tp!22191 b_and!171)))

(declare-fun e!14239 () Bool)

(assert (=> b!32340 (= e!14239 (and tp!22190 tp!22191))))

(declare-fun e!14240 () Bool)

(declare-fun tp!22189 () Bool)

(declare-fun b!32339 () Bool)

(assert (=> b!32339 (= e!14240 (and tp!22189 (inv!500 (tag!287 (h!5599 (t!14790 (t!14790 rules!1369))))) (inv!509 (transformation!109 (h!5599 (t!14790 (t!14790 rules!1369))))) e!14239))))

(declare-fun b!32338 () Bool)

(declare-fun e!14241 () Bool)

(declare-fun tp!22188 () Bool)

(assert (=> b!32338 (= e!14241 (and e!14240 tp!22188))))

(assert (=> b!31787 (= tp!21878 e!14241)))

(assert (= b!32339 b!32340))

(assert (= b!32338 b!32339))

(assert (= (and b!31787 ((_ is Cons!203) (t!14790 (t!14790 rules!1369)))) b!32338))

(declare-fun m!8589 () Bool)

(assert (=> b!32339 m!8589))

(declare-fun m!8591 () Bool)

(assert (=> b!32339 m!8591))

(declare-fun b!32341 () Bool)

(declare-fun e!14243 () Bool)

(declare-fun tp!22192 () Bool)

(declare-fun tp!22193 () Bool)

(assert (=> b!32341 (= e!14243 (and tp!22192 tp!22193))))

(assert (=> b!31857 (= tp!21962 e!14243)))

(assert (= (and b!31857 ((_ is Cons!204) (exprs!515 (_2!54 (_1!55 (h!5601 mapValue!103)))))) b!32341))

(declare-fun b!32342 () Bool)

(declare-fun e!14244 () Bool)

(assert (=> b!32342 (= e!14244 tp_is_empty!295)))

(declare-fun b!32344 () Bool)

(declare-fun tp!22197 () Bool)

(assert (=> b!32344 (= e!14244 tp!22197)))

(declare-fun b!32343 () Bool)

(declare-fun tp!22194 () Bool)

(declare-fun tp!22196 () Bool)

(assert (=> b!32343 (= e!14244 (and tp!22194 tp!22196))))

(declare-fun b!32345 () Bool)

(declare-fun tp!22198 () Bool)

(declare-fun tp!22195 () Bool)

(assert (=> b!32345 (= e!14244 (and tp!22198 tp!22195))))

(assert (=> b!31856 (= tp!21969 e!14244)))

(assert (= (and b!31856 ((_ is ElementMatch!133) (_1!54 (_1!55 (h!5601 mapDefault!103))))) b!32342))

(assert (= (and b!31856 ((_ is Concat!232) (_1!54 (_1!55 (h!5601 mapDefault!103))))) b!32343))

(assert (= (and b!31856 ((_ is Star!133) (_1!54 (_1!55 (h!5601 mapDefault!103))))) b!32344))

(assert (= (and b!31856 ((_ is Union!133) (_1!54 (_1!55 (h!5601 mapDefault!103))))) b!32345))

(declare-fun b!32346 () Bool)

(declare-fun e!14245 () Bool)

(declare-fun tp!22200 () Bool)

(assert (=> b!32346 (= e!14245 tp!22200)))

(declare-fun tp!22201 () Bool)

(declare-fun e!14246 () Bool)

(declare-fun b!32347 () Bool)

(declare-fun setRes!256 () Bool)

(declare-fun tp!22199 () Bool)

(assert (=> b!32347 (= e!14246 (and tp!22199 (inv!513 (_2!54 (_1!55 (h!5601 (t!14792 mapDefault!103))))) e!14245 tp_is_empty!295 setRes!256 tp!22201))))

(declare-fun condSetEmpty!256 () Bool)

(assert (=> b!32347 (= condSetEmpty!256 (= (_2!55 (h!5601 (t!14792 mapDefault!103))) ((as const (Array Context!30 Bool)) false)))))

(declare-fun setIsEmpty!256 () Bool)

(assert (=> setIsEmpty!256 setRes!256))

(assert (=> b!31856 (= tp!21968 e!14246)))

(declare-fun setNonEmpty!256 () Bool)

(declare-fun e!14247 () Bool)

(declare-fun setElem!256 () Context!30)

(declare-fun tp!22203 () Bool)

(assert (=> setNonEmpty!256 (= setRes!256 (and tp!22203 (inv!513 setElem!256) e!14247))))

(declare-fun setRest!256 () (InoxSet Context!30))

(assert (=> setNonEmpty!256 (= (_2!55 (h!5601 (t!14792 mapDefault!103))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!256 true) setRest!256))))

(declare-fun b!32348 () Bool)

(declare-fun tp!22202 () Bool)

(assert (=> b!32348 (= e!14247 tp!22202)))

(assert (= b!32347 b!32346))

(assert (= (and b!32347 condSetEmpty!256) setIsEmpty!256))

(assert (= (and b!32347 (not condSetEmpty!256)) setNonEmpty!256))

(assert (= setNonEmpty!256 b!32348))

(assert (= (and b!31856 ((_ is Cons!205) (t!14792 mapDefault!103))) b!32347))

(declare-fun m!8593 () Bool)

(assert (=> b!32347 m!8593))

(declare-fun m!8595 () Bool)

(assert (=> setNonEmpty!256 m!8595))

(declare-fun b!32349 () Bool)

(declare-fun e!14248 () Bool)

(declare-fun tp!22204 () Bool)

(declare-fun tp!22205 () Bool)

(assert (=> b!32349 (= e!14248 (and tp!22204 tp!22205))))

(assert (=> b!31864 (= tp!21978 e!14248)))

(assert (= (and b!31864 ((_ is Cons!204) (exprs!515 setElem!224))) b!32349))

(declare-fun b!32350 () Bool)

(declare-fun e!14249 () Bool)

(declare-fun tp!22206 () Bool)

(declare-fun tp!22207 () Bool)

(assert (=> b!32350 (= e!14249 (and tp!22206 tp!22207))))

(assert (=> b!31801 (= tp!21898 e!14249)))

(assert (= (and b!31801 ((_ is Cons!204) (exprs!515 (_2!54 (_1!55 (h!5601 (minValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))))))) b!32350))

(declare-fun b!32351 () Bool)

(declare-fun e!14250 () Bool)

(declare-fun tp!22208 () Bool)

(declare-fun tp!22209 () Bool)

(assert (=> b!32351 (= e!14250 (and tp!22208 tp!22209))))

(assert (=> b!31890 (= tp!22011 e!14250)))

(assert (= (and b!31890 ((_ is Cons!204) (exprs!515 (_1!56 (_1!57 (h!5602 mapValue!106)))))) b!32351))

(declare-fun b!32352 () Bool)

(declare-fun e!14251 () Bool)

(declare-fun tp!22210 () Bool)

(declare-fun tp!22211 () Bool)

(assert (=> b!32352 (= e!14251 (and tp!22210 tp!22211))))

(assert (=> b!31871 (= tp!21987 e!14251)))

(assert (= (and b!31871 ((_ is Cons!204) (exprs!515 setElem!226))) b!32352))

(declare-fun setElem!257 () Context!30)

(declare-fun e!14253 () Bool)

(declare-fun setNonEmpty!257 () Bool)

(declare-fun setRes!257 () Bool)

(declare-fun tp!22213 () Bool)

(assert (=> setNonEmpty!257 (= setRes!257 (and tp!22213 (inv!513 setElem!257) e!14253))))

(declare-fun setRest!257 () (InoxSet Context!30))

(assert (=> setNonEmpty!257 (= (_2!57 (h!5602 (t!14793 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!257 true) setRest!257))))

(declare-fun b!32353 () Bool)

(declare-fun e!14254 () Bool)

(declare-fun tp!22215 () Bool)

(assert (=> b!32353 (= e!14254 tp!22215)))

(declare-fun setIsEmpty!257 () Bool)

(assert (=> setIsEmpty!257 setRes!257))

(declare-fun b!32354 () Bool)

(declare-fun tp!22214 () Bool)

(assert (=> b!32354 (= e!14253 tp!22214)))

(declare-fun b!32355 () Bool)

(declare-fun tp!22212 () Bool)

(declare-fun e!14252 () Bool)

(assert (=> b!32355 (= e!14252 (and (inv!513 (_1!56 (_1!57 (h!5602 (t!14793 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))))))) e!14254 tp_is_empty!295 setRes!257 tp!22212))))

(declare-fun condSetEmpty!257 () Bool)

(assert (=> b!32355 (= condSetEmpty!257 (= (_2!57 (h!5602 (t!14793 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))))) ((as const (Array Context!30 Bool)) false)))))

(assert (=> b!31868 (= tp!21980 e!14252)))

(assert (= b!32355 b!32353))

(assert (= (and b!32355 condSetEmpty!257) setIsEmpty!257))

(assert (= (and b!32355 (not condSetEmpty!257)) setNonEmpty!257))

(assert (= setNonEmpty!257 b!32354))

(assert (= (and b!31868 ((_ is Cons!206) (t!14793 (minValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472))))))))) b!32355))

(declare-fun m!8597 () Bool)

(assert (=> setNonEmpty!257 m!8597))

(declare-fun m!8599 () Bool)

(assert (=> b!32355 m!8599))

(declare-fun setNonEmpty!258 () Bool)

(declare-fun tp!22217 () Bool)

(declare-fun setRes!258 () Bool)

(declare-fun e!14256 () Bool)

(declare-fun setElem!258 () Context!30)

(assert (=> setNonEmpty!258 (= setRes!258 (and tp!22217 (inv!513 setElem!258) e!14256))))

(declare-fun setRest!258 () (InoxSet Context!30))

(assert (=> setNonEmpty!258 (= (_2!57 (h!5602 (t!14793 mapDefault!106))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!258 true) setRest!258))))

(declare-fun b!32356 () Bool)

(declare-fun e!14257 () Bool)

(declare-fun tp!22219 () Bool)

(assert (=> b!32356 (= e!14257 tp!22219)))

(declare-fun setIsEmpty!258 () Bool)

(assert (=> setIsEmpty!258 setRes!258))

(declare-fun b!32357 () Bool)

(declare-fun tp!22218 () Bool)

(assert (=> b!32357 (= e!14256 tp!22218)))

(declare-fun e!14255 () Bool)

(declare-fun b!32358 () Bool)

(declare-fun tp!22216 () Bool)

(assert (=> b!32358 (= e!14255 (and (inv!513 (_1!56 (_1!57 (h!5602 (t!14793 mapDefault!106))))) e!14257 tp_is_empty!295 setRes!258 tp!22216))))

(declare-fun condSetEmpty!258 () Bool)

(assert (=> b!32358 (= condSetEmpty!258 (= (_2!57 (h!5602 (t!14793 mapDefault!106))) ((as const (Array Context!30 Bool)) false)))))

(assert (=> b!31888 (= tp!22012 e!14255)))

(assert (= b!32358 b!32356))

(assert (= (and b!32358 condSetEmpty!258) setIsEmpty!258))

(assert (= (and b!32358 (not condSetEmpty!258)) setNonEmpty!258))

(assert (= setNonEmpty!258 b!32357))

(assert (= (and b!31888 ((_ is Cons!206) (t!14793 mapDefault!106))) b!32358))

(declare-fun m!8601 () Bool)

(assert (=> setNonEmpty!258 m!8601))

(declare-fun m!8603 () Bool)

(assert (=> b!32358 m!8603))

(declare-fun b!32359 () Bool)

(declare-fun e!14258 () Bool)

(declare-fun tp!22220 () Bool)

(declare-fun tp!22221 () Bool)

(assert (=> b!32359 (= e!14258 (and tp!22220 tp!22221))))

(assert (=> b!31863 (= tp!21979 e!14258)))

(assert (= (and b!31863 ((_ is Cons!204) (exprs!515 (_1!56 (_1!57 (h!5602 (zeroValue!279 (v!12007 (underlying!247 (v!12008 (underlying!248 (cache!503 cacheUp!472)))))))))))) b!32359))

(declare-fun b!32360 () Bool)

(declare-fun e!14259 () Bool)

(declare-fun tp!22222 () Bool)

(declare-fun tp!22223 () Bool)

(assert (=> b!32360 (= e!14259 (and tp!22222 tp!22223))))

(assert (=> b!31860 (= tp!21972 e!14259)))

(assert (= (and b!31860 ((_ is Cons!204) (exprs!515 (_2!54 (_1!55 (h!5601 mapValue!99)))))) b!32360))

(declare-fun b!32365 () Bool)

(declare-fun e!14262 () Bool)

(declare-fun tp!22226 () Bool)

(assert (=> b!32365 (= e!14262 (and tp_is_empty!295 tp!22226))))

(assert (=> b!31814 (= tp!21910 e!14262)))

(assert (= (and b!31814 ((_ is Cons!200) (innerList!84 (xs!2603 (c!15160 input!768))))) b!32365))

(declare-fun condSetEmpty!259 () Bool)

(assert (=> setNonEmpty!222 (= condSetEmpty!259 (= setRest!221 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!259 () Bool)

(assert (=> setNonEmpty!222 (= tp!21963 setRes!259)))

(declare-fun setIsEmpty!259 () Bool)

(assert (=> setIsEmpty!259 setRes!259))

(declare-fun tp!22227 () Bool)

(declare-fun setNonEmpty!259 () Bool)

(declare-fun e!14263 () Bool)

(declare-fun setElem!259 () Context!30)

(assert (=> setNonEmpty!259 (= setRes!259 (and tp!22227 (inv!513 setElem!259) e!14263))))

(declare-fun setRest!259 () (InoxSet Context!30))

(assert (=> setNonEmpty!259 (= setRest!221 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!259 true) setRest!259))))

(declare-fun b!32366 () Bool)

(declare-fun tp!22228 () Bool)

(assert (=> b!32366 (= e!14263 tp!22228)))

(assert (= (and setNonEmpty!222 condSetEmpty!259) setIsEmpty!259))

(assert (= (and setNonEmpty!222 (not condSetEmpty!259)) setNonEmpty!259))

(assert (= setNonEmpty!259 b!32366))

(declare-fun m!8605 () Bool)

(assert (=> setNonEmpty!259 m!8605))

(declare-fun b!32367 () Bool)

(declare-fun e!14264 () Bool)

(declare-fun tp!22229 () Bool)

(declare-fun tp!22230 () Bool)

(assert (=> b!32367 (= e!14264 (and tp!22229 tp!22230))))

(assert (=> b!31800 (= tp!21895 e!14264)))

(assert (= (and b!31800 ((_ is Cons!204) (exprs!515 setElem!212))) b!32367))

(declare-fun condSetEmpty!260 () Bool)

(assert (=> setNonEmpty!233 (= condSetEmpty!260 (= setRest!233 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!260 () Bool)

(assert (=> setNonEmpty!233 (= tp!22017 setRes!260)))

(declare-fun setIsEmpty!260 () Bool)

(assert (=> setIsEmpty!260 setRes!260))

(declare-fun setElem!260 () Context!30)

(declare-fun setNonEmpty!260 () Bool)

(declare-fun tp!22231 () Bool)

(declare-fun e!14265 () Bool)

(assert (=> setNonEmpty!260 (= setRes!260 (and tp!22231 (inv!513 setElem!260) e!14265))))

(declare-fun setRest!260 () (InoxSet Context!30))

(assert (=> setNonEmpty!260 (= setRest!233 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!260 true) setRest!260))))

(declare-fun b!32368 () Bool)

(declare-fun tp!22232 () Bool)

(assert (=> b!32368 (= e!14265 tp!22232)))

(assert (= (and setNonEmpty!233 condSetEmpty!260) setIsEmpty!260))

(assert (= (and setNonEmpty!233 (not condSetEmpty!260)) setNonEmpty!260))

(assert (= setNonEmpty!260 b!32368))

(declare-fun m!8607 () Bool)

(assert (=> setNonEmpty!260 m!8607))

(declare-fun b!32369 () Bool)

(declare-fun e!14266 () Bool)

(declare-fun tp!22233 () Bool)

(declare-fun tp!22234 () Bool)

(assert (=> b!32369 (= e!14266 (and tp!22233 tp!22234))))

(assert (=> b!31803 (= tp!21900 e!14266)))

(assert (= (and b!31803 ((_ is Cons!204) (exprs!515 setElem!213))) b!32369))

(declare-fun condSetEmpty!261 () Bool)

(assert (=> setNonEmpty!216 (= condSetEmpty!261 (= setRest!216 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!261 () Bool)

(assert (=> setNonEmpty!216 (= tp!21935 setRes!261)))

(declare-fun setIsEmpty!261 () Bool)

(assert (=> setIsEmpty!261 setRes!261))

(declare-fun setElem!261 () Context!30)

(declare-fun tp!22235 () Bool)

(declare-fun e!14267 () Bool)

(declare-fun setNonEmpty!261 () Bool)

(assert (=> setNonEmpty!261 (= setRes!261 (and tp!22235 (inv!513 setElem!261) e!14267))))

(declare-fun setRest!261 () (InoxSet Context!30))

(assert (=> setNonEmpty!261 (= setRest!216 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!261 true) setRest!261))))

(declare-fun b!32370 () Bool)

(declare-fun tp!22236 () Bool)

(assert (=> b!32370 (= e!14267 tp!22236)))

(assert (= (and setNonEmpty!216 condSetEmpty!261) setIsEmpty!261))

(assert (= (and setNonEmpty!216 (not condSetEmpty!261)) setNonEmpty!261))

(assert (= setNonEmpty!261 b!32370))

(declare-fun m!8609 () Bool)

(assert (=> setNonEmpty!261 m!8609))

(declare-fun condSetEmpty!262 () Bool)

(assert (=> setNonEmpty!231 (= condSetEmpty!262 (= setRest!232 ((as const (Array Context!30 Bool)) false)))))

(declare-fun setRes!262 () Bool)

(assert (=> setNonEmpty!231 (= tp!22007 setRes!262)))

(declare-fun setIsEmpty!262 () Bool)

(assert (=> setIsEmpty!262 setRes!262))

(declare-fun setNonEmpty!262 () Bool)

(declare-fun tp!22237 () Bool)

(declare-fun e!14268 () Bool)

(declare-fun setElem!262 () Context!30)

(assert (=> setNonEmpty!262 (= setRes!262 (and tp!22237 (inv!513 setElem!262) e!14268))))

(declare-fun setRest!262 () (InoxSet Context!30))

(assert (=> setNonEmpty!262 (= setRest!232 ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!262 true) setRest!262))))

(declare-fun b!32371 () Bool)

(declare-fun tp!22238 () Bool)

(assert (=> b!32371 (= e!14268 tp!22238)))

(assert (= (and setNonEmpty!231 condSetEmpty!262) setIsEmpty!262))

(assert (= (and setNonEmpty!231 (not condSetEmpty!262)) setNonEmpty!262))

(assert (= setNonEmpty!262 b!32371))

(declare-fun m!8611 () Bool)

(assert (=> setNonEmpty!262 m!8611))

(declare-fun setElem!263 () Context!30)

(declare-fun setNonEmpty!263 () Bool)

(declare-fun e!14270 () Bool)

(declare-fun tp!22240 () Bool)

(declare-fun setRes!263 () Bool)

(assert (=> setNonEmpty!263 (= setRes!263 (and tp!22240 (inv!513 setElem!263) e!14270))))

(declare-fun setRest!263 () (InoxSet Context!30))

(assert (=> setNonEmpty!263 (= (_2!57 (h!5602 (t!14793 mapValue!106))) ((_ map or) (store ((as const (Array Context!30 Bool)) false) setElem!263 true) setRest!263))))

(declare-fun b!32372 () Bool)

(declare-fun e!14271 () Bool)

(declare-fun tp!22242 () Bool)

(assert (=> b!32372 (= e!14271 tp!22242)))

(declare-fun setIsEmpty!263 () Bool)

(assert (=> setIsEmpty!263 setRes!263))

(declare-fun b!32373 () Bool)

(declare-fun tp!22241 () Bool)

(assert (=> b!32373 (= e!14270 tp!22241)))

(declare-fun tp!22239 () Bool)

(declare-fun e!14269 () Bool)

(declare-fun b!32374 () Bool)

(assert (=> b!32374 (= e!14269 (and (inv!513 (_1!56 (_1!57 (h!5602 (t!14793 mapValue!106))))) e!14271 tp_is_empty!295 setRes!263 tp!22239))))

(declare-fun condSetEmpty!263 () Bool)

(assert (=> b!32374 (= condSetEmpty!263 (= (_2!57 (h!5602 (t!14793 mapValue!106))) ((as const (Array Context!30 Bool)) false)))))

(assert (=> b!31891 (= tp!22013 e!14269)))

(assert (= b!32374 b!32372))

(assert (= (and b!32374 condSetEmpty!263) setIsEmpty!263))

(assert (= (and b!32374 (not condSetEmpty!263)) setNonEmpty!263))

(assert (= setNonEmpty!263 b!32373))

(assert (= (and b!31891 ((_ is Cons!206) (t!14793 mapValue!106))) b!32374))

(declare-fun m!8613 () Bool)

(assert (=> setNonEmpty!263 m!8613))

(declare-fun m!8615 () Bool)

(assert (=> b!32374 m!8615))

(declare-fun b!32375 () Bool)

(declare-fun e!14272 () Bool)

(declare-fun tp!22243 () Bool)

(declare-fun tp!22244 () Bool)

(assert (=> b!32375 (= e!14272 (and tp!22243 tp!22244))))

(assert (=> b!31798 (= tp!21893 e!14272)))

(assert (= (and b!31798 ((_ is Cons!204) (exprs!515 (_2!54 (_1!55 (h!5601 (zeroValue!278 (v!12005 (underlying!245 (v!12006 (underlying!246 (cache!502 cacheDown!485)))))))))))) b!32375))

(declare-fun b!32376 () Bool)

(declare-fun e!14273 () Bool)

(declare-fun tp!22245 () Bool)

(declare-fun tp!22246 () Bool)

(assert (=> b!32376 (= e!14273 (and tp!22245 tp!22246))))

(assert (=> b!31862 (= tp!21974 e!14273)))

(assert (= (and b!31862 ((_ is Cons!204) (exprs!515 setElem!223))) b!32376))

(check-sat (not setNonEmpty!251) (not setNonEmpty!242) (not b!32325) (not b!32157) (not setNonEmpty!252) (not setNonEmpty!259) (not d!3093) (not b!32298) (not b!32292) (not b!32171) (not setNonEmpty!236) (not b!31960) (not b!32280) (not b!32170) (not d!3085) (not b!32167) (not b!32228) (not d!3151) (not b!32256) (not b!32334) (not b!32311) (not d!3227) b_and!167 (not b!32101) (not d!3145) (not b!32272) (not b!32142) (not b!32358) (not d!3087) (not b!32294) (not b!31973) (not d!3133) (not b!32346) (not d!3115) (not b!31923) (not d!3127) (not b!32323) (not b!32227) (not b!32242) (not b!32257) (not b!32284) (not b!31956) (not b!32234) (not b!32173) (not d!3165) (not b!32347) (not b!32251) (not b!32140) (not d!3201) b_and!157 (not d!3209) (not b!32148) (not d!3219) (not b!32166) tp_is_empty!295 (not b!32271) (not b!32367) (not b!32058) (not b!32306) (not b!32059) (not setNonEmpty!243) (not mapNonEmpty!107) (not b!32222) (not b!32268) (not b!32307) (not d!3117) (not d!3103) (not b!32283) (not bm!2606) (not b!32154) (not d!3173) (not b!32162) (not d!3171) (not b_next!155) (not d!3185) (not b!32267) (not b!32151) (not b_next!165) (not b!32300) (not b_next!153) (not b!32333) (not b!32360) (not b!31912) (not d!3077) (not b!32236) (not setNonEmpty!246) (not b!31940) (not b!32376) (not b!32350) (not setNonEmpty!239) (not bm!2609) (not b!32285) (not b!32356) (not b!32327) (not d!3111) (not d!3203) (not b!32302) (not d!3167) (not b!32164) (not b!32314) (not b!32194) (not d!3215) (not b!32352) (not b!32296) (not b!32326) (not b!32266) (not setNonEmpty!249) (not bm!2600) (not b!32277) (not b_next!163) (not b!32321) (not b!31986) (not d!3095) (not d!3211) (not b!32265) (not b!32351) (not b!32105) (not b!32239) (not b!32278) (not setNonEmpty!258) (not b!31932) (not d!3169) (not b!32317) (not b!32189) (not b!31955) (not b!32338) (not d!3195) (not setNonEmpty!250) (not b!32187) (not b!32255) (not b!32372) (not b!32123) (not b!32373) (not d!3177) (not b!32263) (not d!3153) (not b_next!171) (not b!32270) (not b!32221) (not b!32099) (not b!32276) (not b!32308) (not b!32365) (not d!3163) (not b!32219) (not d!3189) (not b!32259) (not b!32375) (not d!3179) (not b!32191) (not d!3109) b_and!171 (not b!32104) (not d!3235) (not b!32286) (not b!32114) (not b!32233) (not setNonEmpty!244) (not b!32348) (not b!32330) (not setNonEmpty!253) (not b!32244) (not b!31931) (not b!32269) (not bm!2619) (not b!32061) (not b!31924) (not b!32335) (not b!32329) (not b!32359) (not b!32152) (not b!31972) (not b!32177) (not d!3161) (not d!3207) (not b!31997) (not b!32293) (not setNonEmpty!254) (not setNonEmpty!260) (not b!32230) (not b_next!157) (not b!32238) b_and!159 (not b!31985) (not setNonEmpty!261) (not b!32220) (not b!32339) b_and!155 (not b!32147) (not b!32218) b_and!153 (not b!32169) (not b!32354) (not bm!2612) (not b!32370) (not b!31900) b_and!163 (not b!32141) (not b!32172) (not bm!2618) (not setNonEmpty!248) (not b_next!159) (not b!32229) (not b!32353) (not b!32305) (not d!3233) (not b!31812) (not b!32275) (not setNonEmpty!245) (not b!32181) (not d!3197) (not d!3089) (not d!3159) (not d!3155) (not b!32243) (not setNonEmpty!263) (not d!3091) (not d!3199) (not b!32301) (not setNonEmpty!237) (not b!32309) (not b!32163) (not b!32366) (not b!32291) (not b!32110) (not b!32349) (not b!32310) (not d!3129) (not b!32124) (not b!32332) (not b!32304) (not b!32289) (not b!32102) (not b!32312) (not b!32303) (not b!32371) (not b!32138) (not b!32252) (not b!32343) (not d!3149) (not b!32258) (not d!3141) (not b!32344) (not b!32076) (not b!31957) (not b!32253) (not setNonEmpty!240) (not b!32337) (not b!32249) (not d!3123) (not b!32331) (not b!32355) (not d!3157) (not b!32100) (not b_next!161) (not setNonEmpty!241) (not b!32144) (not b!32288) (not b!31981) (not d!3125) (not b!32254) (not d!3205) (not setNonEmpty!247) (not setNonEmpty!255) (not b!32077) (not b!31938) (not b!31959) (not b!31966) (not b!32176) (not b!32137) (not b!32111) (not b_next!169) (not b!32369) (not b_next!167) (not b!32047) (not b!32320) (not b!32237) (not b!32345) (not d!3147) (not bm!2604) (not b!32279) (not b!32341) (not b!32112) (not setNonEmpty!256) (not b!32109) (not b!32374) b_and!169 (not bm!2601) (not b!32318) (not b!32262) (not b!32106) (not b!32240) (not b!32195) (not d!3213) (not b!32313) (not setNonEmpty!238) (not d!3079) (not b!32155) (not b!31899) (not b!31996) (not b!32281) (not setNonEmpty!257) (not b!32165) (not b!32065) (not b!32116) (not b!32287) (not b!31942) (not d!3175) (not b!32080) (not b!32046) (not b!32299) (not b!32322) (not setNonEmpty!262) (not b!32113) (not b!32235) (not b!32175) b_and!161 (not b!31911) (not b!32368) (not d!3187) (not b!32139) (not b!31958) (not b!32180) (not b!32295) b_and!165 (not b!32357) (not b!32064) (not b!32282) (not b!32336) (not b!32261) (not b!32216) (not b!32273) (not b!32232) (not b!32316) (not b!32145) (not mapNonEmpty!108) (not d!3119) (not b!31961) (not bm!2605) (not b!32056) (not d!3229) (not b!32260))
(check-sat b_and!167 b_and!157 (not b_next!153) (not b_next!163) (not b_next!171) b_and!171 (not b_next!161) b_and!169 b_and!161 b_and!165 (not b_next!165) (not b_next!155) b_and!155 b_and!153 (not b_next!157) b_and!159 (not b_next!159) b_and!163 (not b_next!169) (not b_next!167))
