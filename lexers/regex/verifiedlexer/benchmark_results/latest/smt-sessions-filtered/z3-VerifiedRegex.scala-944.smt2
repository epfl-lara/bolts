; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48060 () Bool)

(assert start!48060)

(declare-fun b!524450 () Bool)

(declare-fun b_free!13817 () Bool)

(declare-fun b_next!13833 () Bool)

(assert (=> b!524450 (= b_free!13817 (not b_next!13833))))

(declare-fun tp!164811 () Bool)

(declare-fun b_and!51311 () Bool)

(assert (=> b!524450 (= tp!164811 b_and!51311)))

(declare-fun b!524463 () Bool)

(declare-fun b_free!13819 () Bool)

(declare-fun b_next!13835 () Bool)

(assert (=> b!524463 (= b_free!13819 (not b_next!13835))))

(declare-fun tp!164830 () Bool)

(declare-fun b_and!51313 () Bool)

(assert (=> b!524463 (= tp!164830 b_and!51313)))

(declare-fun b!524454 () Bool)

(declare-fun b_free!13821 () Bool)

(declare-fun b_next!13837 () Bool)

(assert (=> b!524454 (= b_free!13821 (not b_next!13837))))

(declare-fun tp!164829 () Bool)

(declare-fun b_and!51315 () Bool)

(assert (=> b!524454 (= tp!164829 b_and!51315)))

(declare-fun b!524466 () Bool)

(declare-fun b_free!13823 () Bool)

(declare-fun b_next!13839 () Bool)

(assert (=> b!524466 (= b_free!13823 (not b_next!13839))))

(declare-fun tp!164835 () Bool)

(declare-fun b_and!51317 () Bool)

(assert (=> b!524466 (= tp!164835 b_and!51317)))

(declare-fun b!524446 () Bool)

(declare-fun b_free!13825 () Bool)

(declare-fun b_next!13841 () Bool)

(assert (=> b!524446 (= b_free!13825 (not b_next!13841))))

(declare-fun tp!164816 () Bool)

(declare-fun b_and!51319 () Bool)

(assert (=> b!524446 (= tp!164816 b_and!51319)))

(declare-fun b_free!13827 () Bool)

(declare-fun b_next!13843 () Bool)

(assert (=> b!524446 (= b_free!13827 (not b_next!13843))))

(declare-fun tp!164836 () Bool)

(declare-fun b_and!51321 () Bool)

(assert (=> b!524446 (= tp!164836 b_and!51321)))

(declare-fun b!524468 () Bool)

(declare-fun b_free!13829 () Bool)

(declare-fun b_next!13845 () Bool)

(assert (=> b!524468 (= b_free!13829 (not b_next!13845))))

(declare-fun tp!164810 () Bool)

(declare-fun b_and!51323 () Bool)

(assert (=> b!524468 (= tp!164810 b_and!51323)))

(declare-fun b!524451 () Bool)

(declare-fun b_free!13831 () Bool)

(declare-fun b_next!13847 () Bool)

(assert (=> b!524451 (= b_free!13831 (not b_next!13847))))

(declare-fun tp!164832 () Bool)

(declare-fun b_and!51325 () Bool)

(assert (=> b!524451 (= tp!164832 b_and!51325)))

(declare-fun b!524442 () Bool)

(declare-fun e!314813 () Bool)

(declare-fun e!314823 () Bool)

(assert (=> b!524442 (= e!314813 e!314823)))

(declare-fun b!524443 () Bool)

(declare-fun e!314814 () Bool)

(declare-fun tp!164817 () Bool)

(declare-fun mapRes!2198 () Bool)

(assert (=> b!524443 (= e!314814 (and tp!164817 mapRes!2198))))

(declare-fun condMapEmpty!2197 () Bool)

(declare-datatypes ((C!3340 0))(
  ( (C!3341 (val!1896 Int)) )
))
(declare-datatypes ((Regex!1209 0))(
  ( (ElementMatch!1209 (c!100888 C!3340)) (Concat!2117 (regOne!2930 Regex!1209) (regTwo!2930 Regex!1209)) (EmptyExpr!1209) (Star!1209 (reg!1538 Regex!1209)) (EmptyLang!1209) (Union!1209 (regOne!2931 Regex!1209) (regTwo!2931 Regex!1209)) )
))
(declare-datatypes ((List!4893 0))(
  ( (Nil!4883) (Cons!4883 (h!10284 Regex!1209) (t!73495 List!4893)) )
))
(declare-datatypes ((Context!294 0))(
  ( (Context!295 (exprs!647 List!4893)) )
))
(declare-datatypes ((tuple3!370 0))(
  ( (tuple3!371 (_1!3236 Regex!1209) (_2!3236 Context!294) (_3!230 C!3340)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!6012 0))(
  ( (tuple2!6013 (_1!3237 tuple3!370) (_2!3237 (InoxSet Context!294))) )
))
(declare-datatypes ((List!4894 0))(
  ( (Nil!4884) (Cons!4884 (h!10285 tuple2!6012) (t!73496 List!4894)) )
))
(declare-datatypes ((array!2183 0))(
  ( (array!2184 (arr!996 (Array (_ BitVec 32) List!4894)) (size!3983 (_ BitVec 32))) )
))
(declare-datatypes ((array!2185 0))(
  ( (array!2186 (arr!997 (Array (_ BitVec 32) (_ BitVec 64))) (size!3984 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1126 0))(
  ( (LongMapFixedSize!1127 (defaultEntry!919 Int) (mask!2039 (_ BitVec 32)) (extraKeys!810 (_ BitVec 32)) (zeroValue!820 List!4894) (minValue!820 List!4894) (_size!1235 (_ BitVec 32)) (_keys!857 array!2185) (_values!842 array!2183) (_vacant!624 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2193 0))(
  ( (Cell!2194 (v!15964 LongMapFixedSize!1126)) )
))
(declare-datatypes ((MutLongMap!563 0))(
  ( (LongMap!563 (underlying!1305 Cell!2193)) (MutLongMapExt!562 (__x!3594 Int)) )
))
(declare-datatypes ((Cell!2195 0))(
  ( (Cell!2196 (v!15965 MutLongMap!563)) )
))
(declare-datatypes ((Hashable!535 0))(
  ( (HashableExt!534 (__x!3595 Int)) )
))
(declare-datatypes ((MutableMap!535 0))(
  ( (MutableMapExt!534 (__x!3596 Int)) (HashMap!535 (underlying!1306 Cell!2195) (hashF!2443 Hashable!535) (_size!1236 (_ BitVec 32)) (defaultValue!686 Int)) )
))
(declare-datatypes ((CacheDown!202 0))(
  ( (CacheDown!203 (cache!922 MutableMap!535)) )
))
(declare-fun cacheDown!462 () CacheDown!202)

(declare-fun mapDefault!2198 () List!4894)

(assert (=> b!524443 (= condMapEmpty!2197 (= (arr!996 (_values!842 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))) ((as const (Array (_ BitVec 32) List!4894)) mapDefault!2198)))))

(declare-fun res!222201 () Bool)

(declare-fun e!314816 () Bool)

(assert (=> start!48060 (=> (not res!222201) (not e!314816))))

(declare-datatypes ((LexerInterface!770 0))(
  ( (LexerInterfaceExt!767 (__x!3597 Int)) (Lexer!768) )
))
(declare-fun thiss!12147 () LexerInterface!770)

(get-info :version)

(assert (=> start!48060 (= res!222201 ((_ is Lexer!768) thiss!12147))))

(assert (=> start!48060 e!314816))

(declare-datatypes ((List!4895 0))(
  ( (Nil!4885) (Cons!4885 (h!10286 C!3340) (t!73497 List!4895)) )
))
(declare-datatypes ((IArray!3181 0))(
  ( (IArray!3182 (innerList!1648 List!4895)) )
))
(declare-datatypes ((Conc!1590 0))(
  ( (Node!1590 (left!4192 Conc!1590) (right!4522 Conc!1590) (csize!3410 Int) (cheight!1801 Int)) (Leaf!2535 (xs!4225 IArray!3181) (csize!3411 Int)) (Empty!1590) )
))
(declare-datatypes ((BalanceConc!3188 0))(
  ( (BalanceConc!3189 (c!100889 Conc!1590)) )
))
(declare-fun input!747 () BalanceConc!3188)

(declare-fun e!314817 () Bool)

(declare-fun inv!6150 (BalanceConc!3188) Bool)

(assert (=> start!48060 (and (inv!6150 input!747) e!314817)))

(declare-fun e!314819 () Bool)

(declare-fun inv!6151 (CacheDown!202) Bool)

(assert (=> start!48060 (and (inv!6151 cacheDown!462) e!314819)))

(assert (=> start!48060 true))

(declare-datatypes ((tuple3!372 0))(
  ( (tuple3!373 (_1!3238 (InoxSet Context!294)) (_2!3238 Int) (_3!231 Int)) )
))
(declare-datatypes ((Hashable!536 0))(
  ( (HashableExt!535 (__x!3598 Int)) )
))
(declare-datatypes ((tuple2!6014 0))(
  ( (tuple2!6015 (_1!3239 tuple3!372) (_2!3239 Int)) )
))
(declare-datatypes ((List!4896 0))(
  ( (Nil!4886) (Cons!4886 (h!10287 tuple2!6014) (t!73498 List!4896)) )
))
(declare-datatypes ((array!2187 0))(
  ( (array!2188 (arr!998 (Array (_ BitVec 32) List!4896)) (size!3985 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1128 0))(
  ( (LongMapFixedSize!1129 (defaultEntry!920 Int) (mask!2040 (_ BitVec 32)) (extraKeys!811 (_ BitVec 32)) (zeroValue!821 List!4896) (minValue!821 List!4896) (_size!1237 (_ BitVec 32)) (_keys!858 array!2185) (_values!843 array!2187) (_vacant!625 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2197 0))(
  ( (Cell!2198 (v!15966 LongMapFixedSize!1128)) )
))
(declare-datatypes ((MutLongMap!564 0))(
  ( (LongMap!564 (underlying!1307 Cell!2197)) (MutLongMapExt!563 (__x!3599 Int)) )
))
(declare-datatypes ((Cell!2199 0))(
  ( (Cell!2200 (v!15967 MutLongMap!564)) )
))
(declare-datatypes ((MutableMap!536 0))(
  ( (MutableMapExt!535 (__x!3600 Int)) (HashMap!536 (underlying!1308 Cell!2199) (hashF!2444 Hashable!536) (_size!1238 (_ BitVec 32)) (defaultValue!687 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!154 0))(
  ( (CacheFurthestNullable!155 (cache!923 MutableMap!536) (totalInput!1737 BalanceConc!3188)) )
))
(declare-fun cacheFurthestNullable!56 () CacheFurthestNullable!154)

(declare-fun e!314821 () Bool)

(declare-fun inv!6152 (CacheFurthestNullable!154) Bool)

(assert (=> start!48060 (and (inv!6152 cacheFurthestNullable!56) e!314821)))

(declare-datatypes ((tuple2!6016 0))(
  ( (tuple2!6017 (_1!3240 Context!294) (_2!3240 C!3340)) )
))
(declare-datatypes ((tuple2!6018 0))(
  ( (tuple2!6019 (_1!3241 tuple2!6016) (_2!3241 (InoxSet Context!294))) )
))
(declare-datatypes ((List!4897 0))(
  ( (Nil!4887) (Cons!4887 (h!10288 tuple2!6018) (t!73499 List!4897)) )
))
(declare-datatypes ((Hashable!537 0))(
  ( (HashableExt!536 (__x!3601 Int)) )
))
(declare-datatypes ((array!2189 0))(
  ( (array!2190 (arr!999 (Array (_ BitVec 32) List!4897)) (size!3986 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1130 0))(
  ( (LongMapFixedSize!1131 (defaultEntry!921 Int) (mask!2041 (_ BitVec 32)) (extraKeys!812 (_ BitVec 32)) (zeroValue!822 List!4897) (minValue!822 List!4897) (_size!1239 (_ BitVec 32)) (_keys!859 array!2185) (_values!844 array!2189) (_vacant!626 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2201 0))(
  ( (Cell!2202 (v!15968 LongMapFixedSize!1130)) )
))
(declare-datatypes ((MutLongMap!565 0))(
  ( (LongMap!565 (underlying!1309 Cell!2201)) (MutLongMapExt!564 (__x!3602 Int)) )
))
(declare-datatypes ((Cell!2203 0))(
  ( (Cell!2204 (v!15969 MutLongMap!565)) )
))
(declare-datatypes ((MutableMap!537 0))(
  ( (MutableMapExt!536 (__x!3603 Int)) (HashMap!537 (underlying!1310 Cell!2203) (hashF!2445 Hashable!537) (_size!1240 (_ BitVec 32)) (defaultValue!688 Int)) )
))
(declare-datatypes ((CacheUp!214 0))(
  ( (CacheUp!215 (cache!924 MutableMap!537)) )
))
(declare-fun cacheUp!449 () CacheUp!214)

(declare-fun e!314834 () Bool)

(declare-fun inv!6153 (CacheUp!214) Bool)

(assert (=> start!48060 (and (inv!6153 cacheUp!449) e!314834)))

(declare-fun e!314808 () Bool)

(assert (=> start!48060 e!314808))

(declare-fun mapNonEmpty!2196 () Bool)

(declare-fun tp!164814 () Bool)

(declare-fun tp!164825 () Bool)

(assert (=> mapNonEmpty!2196 (= mapRes!2198 (and tp!164814 tp!164825))))

(declare-fun mapValue!2197 () List!4894)

(declare-fun mapKey!2197 () (_ BitVec 32))

(declare-fun mapRest!2198 () (Array (_ BitVec 32) List!4894))

(assert (=> mapNonEmpty!2196 (= (arr!996 (_values!842 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))) (store mapRest!2198 mapKey!2197 mapValue!2197))))

(declare-fun mapNonEmpty!2197 () Bool)

(declare-fun mapRes!2197 () Bool)

(declare-fun tp!164819 () Bool)

(declare-fun tp!164818 () Bool)

(assert (=> mapNonEmpty!2197 (= mapRes!2197 (and tp!164819 tp!164818))))

(declare-fun mapKey!2198 () (_ BitVec 32))

(declare-fun mapValue!2196 () List!4897)

(declare-fun mapRest!2197 () (Array (_ BitVec 32) List!4897))

(assert (=> mapNonEmpty!2197 (= (arr!999 (_values!844 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))) (store mapRest!2197 mapKey!2198 mapValue!2196))))

(declare-fun b!524444 () Bool)

(declare-fun res!222202 () Bool)

(assert (=> b!524444 (=> (not res!222202) (not e!314816))))

(declare-fun valid!542 (CacheFurthestNullable!154) Bool)

(assert (=> b!524444 (= res!222202 (valid!542 cacheFurthestNullable!56))))

(declare-fun b!524445 () Bool)

(declare-fun e!314836 () Bool)

(declare-fun e!314827 () Bool)

(assert (=> b!524445 (= e!314836 e!314827)))

(declare-fun e!314824 () Bool)

(assert (=> b!524446 (= e!314824 (and tp!164816 tp!164836))))

(declare-fun b!524447 () Bool)

(declare-fun e!314833 () Bool)

(declare-datatypes ((List!4898 0))(
  ( (Nil!4888) (Cons!4888 (h!10289 (_ BitVec 16)) (t!73500 List!4898)) )
))
(declare-datatypes ((TokenValue!908 0))(
  ( (FloatLiteralValue!1816 (text!6801 List!4898)) (TokenValueExt!907 (__x!3604 Int)) (Broken!4540 (value!30022 List!4898)) (Object!917) (End!908) (Def!908) (Underscore!908) (Match!908) (Else!908) (Error!908) (Case!908) (If!908) (Extends!908) (Abstract!908) (Class!908) (Val!908) (DelimiterValue!1816 (del!968 List!4898)) (KeywordValue!914 (value!30023 List!4898)) (CommentValue!1816 (value!30024 List!4898)) (WhitespaceValue!1816 (value!30025 List!4898)) (IndentationValue!908 (value!30026 List!4898)) (String!6265) (Int32!908) (Broken!4541 (value!30027 List!4898)) (Boolean!909) (Unit!8791) (OperatorValue!911 (op!968 List!4898)) (IdentifierValue!1816 (value!30028 List!4898)) (IdentifierValue!1817 (value!30029 List!4898)) (WhitespaceValue!1817 (value!30030 List!4898)) (True!1816) (False!1816) (Broken!4542 (value!30031 List!4898)) (Broken!4543 (value!30032 List!4898)) (True!1817) (RightBrace!908) (RightBracket!908) (Colon!908) (Null!908) (Comma!908) (LeftBracket!908) (False!1817) (LeftBrace!908) (ImaginaryLiteralValue!908 (text!6802 List!4898)) (StringLiteralValue!2724 (value!30033 List!4898)) (EOFValue!908 (value!30034 List!4898)) (IdentValue!908 (value!30035 List!4898)) (DelimiterValue!1817 (value!30036 List!4898)) (DedentValue!908 (value!30037 List!4898)) (NewLineValue!908 (value!30038 List!4898)) (IntegerValue!2724 (value!30039 (_ BitVec 32)) (text!6803 List!4898)) (IntegerValue!2725 (value!30040 Int) (text!6804 List!4898)) (Times!908) (Or!908) (Equal!908) (Minus!908) (Broken!4544 (value!30041 List!4898)) (And!908) (Div!908) (LessEqual!908) (Mod!908) (Concat!2118) (Not!908) (Plus!908) (SpaceValue!908 (value!30042 List!4898)) (IntegerValue!2726 (value!30043 Int) (text!6805 List!4898)) (StringLiteralValue!2725 (text!6806 List!4898)) (FloatLiteralValue!1817 (text!6807 List!4898)) (BytesLiteralValue!908 (value!30044 List!4898)) (CommentValue!1817 (value!30045 List!4898)) (StringLiteralValue!2726 (value!30046 List!4898)) (ErrorTokenValue!908 (msg!969 List!4898)) )
))
(declare-datatypes ((TokenValueInjection!1584 0))(
  ( (TokenValueInjection!1585 (toValue!1715 Int) (toChars!1574 Int)) )
))
(declare-datatypes ((String!6266 0))(
  ( (String!6267 (value!30047 String)) )
))
(declare-datatypes ((Rule!1568 0))(
  ( (Rule!1569 (regex!884 Regex!1209) (tag!1146 String!6266) (isSeparator!884 Bool) (transformation!884 TokenValueInjection!1584)) )
))
(declare-datatypes ((Token!1506 0))(
  ( (Token!1507 (value!30048 TokenValue!908) (rule!1585 Rule!1568) (size!3987 Int) (originalCharacters!924 List!4895)) )
))
(declare-datatypes ((List!4899 0))(
  ( (Nil!4889) (Cons!4889 (h!10290 Token!1506) (t!73501 List!4899)) )
))
(declare-datatypes ((IArray!3183 0))(
  ( (IArray!3184 (innerList!1649 List!4899)) )
))
(declare-datatypes ((Conc!1591 0))(
  ( (Node!1591 (left!4193 Conc!1591) (right!4523 Conc!1591) (csize!3412 Int) (cheight!1802 Int)) (Leaf!2536 (xs!4226 IArray!3183) (csize!3413 Int)) (Empty!1591) )
))
(declare-datatypes ((BalanceConc!3190 0))(
  ( (BalanceConc!3191 (c!100890 Conc!1591)) )
))
(declare-datatypes ((tuple2!6020 0))(
  ( (tuple2!6021 (_1!3242 BalanceConc!3190) (_2!3242 BalanceConc!3188)) )
))
(declare-fun lt!217485 () tuple2!6020)

(declare-fun isEmpty!3590 (List!4895) Bool)

(declare-fun list!2046 (BalanceConc!3188) List!4895)

(assert (=> b!524447 (= e!314833 (not (isEmpty!3590 (list!2046 (_2!3242 lt!217485)))))))

(declare-fun b!524448 () Bool)

(declare-fun e!314839 () Bool)

(declare-fun e!314830 () Bool)

(assert (=> b!524448 (= e!314839 e!314830)))

(declare-fun mapIsEmpty!2196 () Bool)

(assert (=> mapIsEmpty!2196 mapRes!2198))

(declare-fun b!524449 () Bool)

(declare-fun e!314820 () Bool)

(declare-fun tp!164831 () Bool)

(declare-fun mapRes!2196 () Bool)

(assert (=> b!524449 (= e!314820 (and tp!164831 mapRes!2196))))

(declare-fun condMapEmpty!2198 () Bool)

(declare-fun mapDefault!2196 () List!4896)

(assert (=> b!524449 (= condMapEmpty!2198 (= (arr!998 (_values!843 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))) ((as const (Array (_ BitVec 32) List!4896)) mapDefault!2196)))))

(declare-fun tp!164834 () Bool)

(declare-fun e!314826 () Bool)

(declare-fun tp!164823 () Bool)

(declare-fun array_inv!726 (array!2185) Bool)

(declare-fun array_inv!727 (array!2183) Bool)

(assert (=> b!524450 (= e!314826 (and tp!164811 tp!164834 tp!164823 (array_inv!726 (_keys!857 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))) (array_inv!727 (_values!842 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))) e!314814))))

(declare-fun e!314807 () Bool)

(declare-fun e!314811 () Bool)

(assert (=> b!524451 (= e!314807 (and e!314811 tp!164832))))

(declare-fun b!524452 () Bool)

(assert (=> b!524452 (= e!314834 e!314807)))

(declare-fun b!524453 () Bool)

(declare-fun res!222198 () Bool)

(assert (=> b!524453 (=> (not res!222198) (not e!314816))))

(declare-datatypes ((List!4900 0))(
  ( (Nil!4890) (Cons!4890 (h!10291 Rule!1568) (t!73502 List!4900)) )
))
(declare-fun rules!1345 () List!4900)

(declare-fun rulesInvariant!735 (LexerInterface!770 List!4900) Bool)

(assert (=> b!524453 (= res!222198 (rulesInvariant!735 thiss!12147 rules!1345))))

(declare-fun tp!164815 () Bool)

(declare-fun tp!164827 () Bool)

(declare-fun e!314829 () Bool)

(declare-fun array_inv!728 (array!2189) Bool)

(assert (=> b!524454 (= e!314830 (and tp!164829 tp!164827 tp!164815 (array_inv!726 (_keys!859 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))) (array_inv!728 (_values!844 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))) e!314829))))

(declare-fun b!524455 () Bool)

(declare-fun res!222200 () Bool)

(assert (=> b!524455 (=> (not res!222200) (not e!314816))))

(declare-fun valid!543 (CacheDown!202) Bool)

(assert (=> b!524455 (= res!222200 (valid!543 cacheDown!462))))

(declare-fun b!524456 () Bool)

(declare-fun e!314835 () Bool)

(assert (=> b!524456 (= e!314835 e!314833)))

(declare-fun res!222204 () Bool)

(assert (=> b!524456 (=> (not res!222204) (not e!314833))))

(declare-fun list!2047 (BalanceConc!3190) List!4899)

(assert (=> b!524456 (= res!222204 (= (list!2047 (_1!3242 lt!217485)) (list!2047 (BalanceConc!3191 Empty!1591))))))

(declare-fun lexRec!138 (LexerInterface!770 List!4900 BalanceConc!3188) tuple2!6020)

(assert (=> b!524456 (= lt!217485 (lexRec!138 thiss!12147 rules!1345 (BalanceConc!3189 Empty!1590)))))

(declare-fun b!524457 () Bool)

(declare-fun e!314828 () Bool)

(declare-fun tp!164833 () Bool)

(assert (=> b!524457 (= e!314808 (and e!314828 tp!164833))))

(declare-fun mapIsEmpty!2197 () Bool)

(assert (=> mapIsEmpty!2197 mapRes!2197))

(declare-fun b!524458 () Bool)

(declare-fun res!222205 () Bool)

(assert (=> b!524458 (=> (not res!222205) (not e!314816))))

(declare-fun valid!544 (CacheUp!214) Bool)

(assert (=> b!524458 (= res!222205 (valid!544 cacheUp!449))))

(declare-fun b!524459 () Bool)

(declare-fun tp!164822 () Bool)

(declare-fun inv!6154 (Conc!1590) Bool)

(assert (=> b!524459 (= e!314817 (and (inv!6154 (c!100889 input!747)) tp!164822))))

(declare-fun mapIsEmpty!2198 () Bool)

(assert (=> mapIsEmpty!2198 mapRes!2196))

(declare-fun b!524460 () Bool)

(declare-fun e!314831 () Bool)

(declare-fun tp!164813 () Bool)

(assert (=> b!524460 (= e!314831 (and (inv!6154 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) tp!164813))))

(declare-fun b!524461 () Bool)

(assert (=> b!524461 (= e!314816 e!314835)))

(declare-fun res!222199 () Bool)

(assert (=> b!524461 (=> (not res!222199) (not e!314835))))

(declare-fun lt!217487 () List!4895)

(declare-fun lt!217489 () List!4895)

(declare-fun ++!1370 (List!4895 List!4895) List!4895)

(assert (=> b!524461 (= res!222199 (= lt!217487 (++!1370 lt!217489 lt!217487)))))

(assert (=> b!524461 (= lt!217487 (list!2046 input!747))))

(assert (=> b!524461 (= lt!217489 (list!2046 (BalanceConc!3189 Empty!1590)))))

(declare-fun b!524462 () Bool)

(declare-fun e!314837 () Bool)

(assert (=> b!524462 (= e!314837 e!314839)))

(declare-fun tp!164824 () Bool)

(declare-fun tp!164826 () Bool)

(declare-fun array_inv!729 (array!2187) Bool)

(assert (=> b!524463 (= e!314827 (and tp!164830 tp!164824 tp!164826 (array_inv!726 (_keys!858 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))) (array_inv!729 (_values!843 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))) e!314820))))

(declare-fun b!524464 () Bool)

(declare-fun res!222206 () Bool)

(assert (=> b!524464 (=> (not res!222206) (not e!314816))))

(assert (=> b!524464 (= res!222206 (= (totalInput!1737 cacheFurthestNullable!56) input!747))))

(declare-fun mapNonEmpty!2198 () Bool)

(declare-fun tp!164820 () Bool)

(declare-fun tp!164821 () Bool)

(assert (=> mapNonEmpty!2198 (= mapRes!2196 (and tp!164820 tp!164821))))

(declare-fun mapKey!2196 () (_ BitVec 32))

(declare-fun mapValue!2198 () List!4896)

(declare-fun mapRest!2196 () (Array (_ BitVec 32) List!4896))

(assert (=> mapNonEmpty!2198 (= (arr!998 (_values!843 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))) (store mapRest!2196 mapKey!2196 mapValue!2198))))

(declare-fun b!524465 () Bool)

(declare-fun e!314812 () Bool)

(declare-fun lt!217490 () MutLongMap!563)

(assert (=> b!524465 (= e!314812 (and e!314813 ((_ is LongMap!563) lt!217490)))))

(assert (=> b!524465 (= lt!217490 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))

(declare-fun e!314810 () Bool)

(assert (=> b!524466 (= e!314810 (and e!314812 tp!164835))))

(declare-fun b!524467 () Bool)

(declare-fun lt!217488 () MutLongMap!565)

(assert (=> b!524467 (= e!314811 (and e!314837 ((_ is LongMap!565) lt!217488)))))

(assert (=> b!524467 (= lt!217488 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))

(declare-fun e!314822 () Bool)

(declare-fun e!314815 () Bool)

(assert (=> b!524468 (= e!314822 (and e!314815 tp!164810))))

(declare-fun b!524469 () Bool)

(assert (=> b!524469 (= e!314819 e!314810)))

(declare-fun b!524470 () Bool)

(declare-fun tp!164828 () Bool)

(declare-fun inv!6148 (String!6266) Bool)

(declare-fun inv!6155 (TokenValueInjection!1584) Bool)

(assert (=> b!524470 (= e!314828 (and tp!164828 (inv!6148 (tag!1146 (h!10291 rules!1345))) (inv!6155 (transformation!884 (h!10291 rules!1345))) e!314824))))

(declare-fun b!524471 () Bool)

(declare-fun tp!164812 () Bool)

(assert (=> b!524471 (= e!314829 (and tp!164812 mapRes!2197))))

(declare-fun condMapEmpty!2196 () Bool)

(declare-fun mapDefault!2197 () List!4897)

(assert (=> b!524471 (= condMapEmpty!2196 (= (arr!999 (_values!844 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))) ((as const (Array (_ BitVec 32) List!4897)) mapDefault!2197)))))

(declare-fun b!524472 () Bool)

(assert (=> b!524472 (= e!314821 (and e!314822 (inv!6150 (totalInput!1737 cacheFurthestNullable!56)) e!314831))))

(declare-fun b!524473 () Bool)

(assert (=> b!524473 (= e!314823 e!314826)))

(declare-fun b!524474 () Bool)

(declare-fun e!314832 () Bool)

(declare-fun lt!217486 () MutLongMap!564)

(assert (=> b!524474 (= e!314815 (and e!314832 ((_ is LongMap!564) lt!217486)))))

(assert (=> b!524474 (= lt!217486 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))

(declare-fun b!524475 () Bool)

(assert (=> b!524475 (= e!314832 e!314836)))

(declare-fun b!524476 () Bool)

(declare-fun res!222203 () Bool)

(assert (=> b!524476 (=> (not res!222203) (not e!314816))))

(declare-fun isEmpty!3591 (List!4900) Bool)

(assert (=> b!524476 (= res!222203 (not (isEmpty!3591 rules!1345)))))

(assert (= (and start!48060 res!222201) b!524476))

(assert (= (and b!524476 res!222203) b!524453))

(assert (= (and b!524453 res!222198) b!524458))

(assert (= (and b!524458 res!222205) b!524455))

(assert (= (and b!524455 res!222200) b!524444))

(assert (= (and b!524444 res!222202) b!524464))

(assert (= (and b!524464 res!222206) b!524461))

(assert (= (and b!524461 res!222199) b!524456))

(assert (= (and b!524456 res!222204) b!524447))

(assert (= start!48060 b!524459))

(assert (= (and b!524443 condMapEmpty!2197) mapIsEmpty!2196))

(assert (= (and b!524443 (not condMapEmpty!2197)) mapNonEmpty!2196))

(assert (= b!524450 b!524443))

(assert (= b!524473 b!524450))

(assert (= b!524442 b!524473))

(assert (= (and b!524465 ((_ is LongMap!563) (v!15965 (underlying!1306 (cache!922 cacheDown!462))))) b!524442))

(assert (= b!524466 b!524465))

(assert (= (and b!524469 ((_ is HashMap!535) (cache!922 cacheDown!462))) b!524466))

(assert (= start!48060 b!524469))

(assert (= (and b!524449 condMapEmpty!2198) mapIsEmpty!2198))

(assert (= (and b!524449 (not condMapEmpty!2198)) mapNonEmpty!2198))

(assert (= b!524463 b!524449))

(assert (= b!524445 b!524463))

(assert (= b!524475 b!524445))

(assert (= (and b!524474 ((_ is LongMap!564) (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))) b!524475))

(assert (= b!524468 b!524474))

(assert (= (and b!524472 ((_ is HashMap!536) (cache!923 cacheFurthestNullable!56))) b!524468))

(assert (= b!524472 b!524460))

(assert (= start!48060 b!524472))

(assert (= (and b!524471 condMapEmpty!2196) mapIsEmpty!2197))

(assert (= (and b!524471 (not condMapEmpty!2196)) mapNonEmpty!2197))

(assert (= b!524454 b!524471))

(assert (= b!524448 b!524454))

(assert (= b!524462 b!524448))

(assert (= (and b!524467 ((_ is LongMap!565) (v!15969 (underlying!1310 (cache!924 cacheUp!449))))) b!524462))

(assert (= b!524451 b!524467))

(assert (= (and b!524452 ((_ is HashMap!537) (cache!924 cacheUp!449))) b!524451))

(assert (= start!48060 b!524452))

(assert (= b!524470 b!524446))

(assert (= b!524457 b!524470))

(assert (= (and start!48060 ((_ is Cons!4890) rules!1345)) b!524457))

(declare-fun m!770555 () Bool)

(assert (=> b!524444 m!770555))

(declare-fun m!770557 () Bool)

(assert (=> b!524447 m!770557))

(assert (=> b!524447 m!770557))

(declare-fun m!770559 () Bool)

(assert (=> b!524447 m!770559))

(declare-fun m!770561 () Bool)

(assert (=> b!524455 m!770561))

(declare-fun m!770563 () Bool)

(assert (=> b!524460 m!770563))

(declare-fun m!770565 () Bool)

(assert (=> b!524458 m!770565))

(declare-fun m!770567 () Bool)

(assert (=> b!524472 m!770567))

(declare-fun m!770569 () Bool)

(assert (=> mapNonEmpty!2198 m!770569))

(declare-fun m!770571 () Bool)

(assert (=> b!524470 m!770571))

(declare-fun m!770573 () Bool)

(assert (=> b!524470 m!770573))

(declare-fun m!770575 () Bool)

(assert (=> mapNonEmpty!2197 m!770575))

(declare-fun m!770577 () Bool)

(assert (=> mapNonEmpty!2196 m!770577))

(declare-fun m!770579 () Bool)

(assert (=> b!524453 m!770579))

(declare-fun m!770581 () Bool)

(assert (=> b!524476 m!770581))

(declare-fun m!770583 () Bool)

(assert (=> b!524450 m!770583))

(declare-fun m!770585 () Bool)

(assert (=> b!524450 m!770585))

(declare-fun m!770587 () Bool)

(assert (=> b!524459 m!770587))

(declare-fun m!770589 () Bool)

(assert (=> b!524456 m!770589))

(declare-fun m!770591 () Bool)

(assert (=> b!524456 m!770591))

(declare-fun m!770593 () Bool)

(assert (=> b!524456 m!770593))

(declare-fun m!770595 () Bool)

(assert (=> b!524461 m!770595))

(declare-fun m!770597 () Bool)

(assert (=> b!524461 m!770597))

(declare-fun m!770599 () Bool)

(assert (=> b!524461 m!770599))

(declare-fun m!770601 () Bool)

(assert (=> start!48060 m!770601))

(declare-fun m!770603 () Bool)

(assert (=> start!48060 m!770603))

(declare-fun m!770605 () Bool)

(assert (=> start!48060 m!770605))

(declare-fun m!770607 () Bool)

(assert (=> start!48060 m!770607))

(declare-fun m!770609 () Bool)

(assert (=> b!524454 m!770609))

(declare-fun m!770611 () Bool)

(assert (=> b!524454 m!770611))

(declare-fun m!770613 () Bool)

(assert (=> b!524463 m!770613))

(declare-fun m!770615 () Bool)

(assert (=> b!524463 m!770615))

(check-sat (not b!524443) (not mapNonEmpty!2197) b_and!51311 (not b_next!13845) b_and!51325 (not b!524444) (not start!48060) b_and!51317 (not b_next!13841) (not b!524453) (not b!524455) b_and!51315 b_and!51319 (not b!524456) (not b_next!13835) b_and!51321 b_and!51313 (not mapNonEmpty!2198) (not b!524458) (not b_next!13843) (not b!524449) (not b!524470) (not b!524471) b_and!51323 (not mapNonEmpty!2196) (not b!524447) (not b!524476) (not b!524454) (not b!524472) (not b!524461) (not b!524459) (not b_next!13847) (not b!524463) (not b!524450) (not b_next!13833) (not b!524457) (not b_next!13837) (not b!524460) (not b_next!13839))
(check-sat b_and!51313 (not b_next!13843) b_and!51311 (not b_next!13845) b_and!51325 b_and!51323 b_and!51317 (not b_next!13847) (not b_next!13841) (not b_next!13833) b_and!51315 b_and!51319 (not b_next!13835) b_and!51321 (not b_next!13837) (not b_next!13839))
(get-model)

(declare-fun d!187037 () Bool)

(declare-fun list!2048 (Conc!1591) List!4899)

(assert (=> d!187037 (= (list!2047 (_1!3242 lt!217485)) (list!2048 (c!100890 (_1!3242 lt!217485))))))

(declare-fun bs!65071 () Bool)

(assert (= bs!65071 d!187037))

(declare-fun m!770617 () Bool)

(assert (=> bs!65071 m!770617))

(assert (=> b!524456 d!187037))

(declare-fun d!187039 () Bool)

(assert (=> d!187039 (= (list!2047 (BalanceConc!3191 Empty!1591)) (list!2048 (c!100890 (BalanceConc!3191 Empty!1591))))))

(declare-fun bs!65072 () Bool)

(assert (= bs!65072 d!187039))

(declare-fun m!770619 () Bool)

(assert (=> bs!65072 m!770619))

(assert (=> b!524456 d!187039))

(declare-fun b!524491 () Bool)

(declare-fun e!314848 () tuple2!6020)

(declare-fun lt!217498 () tuple2!6020)

(declare-datatypes ((tuple2!6022 0))(
  ( (tuple2!6023 (_1!3243 Token!1506) (_2!3243 BalanceConc!3188)) )
))
(declare-datatypes ((Option!1244 0))(
  ( (None!1243) (Some!1243 (v!15970 tuple2!6022)) )
))
(declare-fun lt!217499 () Option!1244)

(declare-fun prepend!238 (BalanceConc!3190 Token!1506) BalanceConc!3190)

(assert (=> b!524491 (= e!314848 (tuple2!6021 (prepend!238 (_1!3242 lt!217498) (_1!3243 (v!15970 lt!217499))) (_2!3242 lt!217498)))))

(assert (=> b!524491 (= lt!217498 (lexRec!138 thiss!12147 rules!1345 (_2!3243 (v!15970 lt!217499))))))

(declare-fun e!314851 () Bool)

(declare-fun b!524492 () Bool)

(declare-fun lt!217497 () tuple2!6020)

(declare-datatypes ((tuple2!6024 0))(
  ( (tuple2!6025 (_1!3244 List!4899) (_2!3244 List!4895)) )
))
(declare-fun lexList!303 (LexerInterface!770 List!4900 List!4895) tuple2!6024)

(assert (=> b!524492 (= e!314851 (= (list!2046 (_2!3242 lt!217497)) (_2!3244 (lexList!303 thiss!12147 rules!1345 (list!2046 (BalanceConc!3189 Empty!1590))))))))

(declare-fun b!524493 () Bool)

(declare-fun e!314850 () Bool)

(declare-fun isEmpty!3592 (BalanceConc!3190) Bool)

(assert (=> b!524493 (= e!314850 (not (isEmpty!3592 (_1!3242 lt!217497))))))

(declare-fun d!187041 () Bool)

(assert (=> d!187041 e!314851))

(declare-fun res!222213 () Bool)

(assert (=> d!187041 (=> (not res!222213) (not e!314851))))

(declare-fun e!314849 () Bool)

(assert (=> d!187041 (= res!222213 e!314849)))

(declare-fun c!100896 () Bool)

(declare-fun size!3988 (BalanceConc!3190) Int)

(assert (=> d!187041 (= c!100896 (> (size!3988 (_1!3242 lt!217497)) 0))))

(assert (=> d!187041 (= lt!217497 e!314848)))

(declare-fun c!100897 () Bool)

(assert (=> d!187041 (= c!100897 ((_ is Some!1243) lt!217499))))

(declare-fun maxPrefixZipperSequence!444 (LexerInterface!770 List!4900 BalanceConc!3188) Option!1244)

(assert (=> d!187041 (= lt!217499 (maxPrefixZipperSequence!444 thiss!12147 rules!1345 (BalanceConc!3189 Empty!1590)))))

(assert (=> d!187041 (= (lexRec!138 thiss!12147 rules!1345 (BalanceConc!3189 Empty!1590)) lt!217497)))

(declare-fun b!524494 () Bool)

(declare-fun res!222214 () Bool)

(assert (=> b!524494 (=> (not res!222214) (not e!314851))))

(assert (=> b!524494 (= res!222214 (= (list!2047 (_1!3242 lt!217497)) (_1!3244 (lexList!303 thiss!12147 rules!1345 (list!2046 (BalanceConc!3189 Empty!1590))))))))

(declare-fun b!524495 () Bool)

(assert (=> b!524495 (= e!314849 e!314850)))

(declare-fun res!222215 () Bool)

(declare-fun size!3989 (BalanceConc!3188) Int)

(assert (=> b!524495 (= res!222215 (< (size!3989 (_2!3242 lt!217497)) (size!3989 (BalanceConc!3189 Empty!1590))))))

(assert (=> b!524495 (=> (not res!222215) (not e!314850))))

(declare-fun b!524496 () Bool)

(assert (=> b!524496 (= e!314848 (tuple2!6021 (BalanceConc!3191 Empty!1591) (BalanceConc!3189 Empty!1590)))))

(declare-fun b!524497 () Bool)

(assert (=> b!524497 (= e!314849 (= (list!2046 (_2!3242 lt!217497)) (list!2046 (BalanceConc!3189 Empty!1590))))))

(assert (= (and d!187041 c!100897) b!524491))

(assert (= (and d!187041 (not c!100897)) b!524496))

(assert (= (and d!187041 c!100896) b!524495))

(assert (= (and d!187041 (not c!100896)) b!524497))

(assert (= (and b!524495 res!222215) b!524493))

(assert (= (and d!187041 res!222213) b!524494))

(assert (= (and b!524494 res!222214) b!524492))

(declare-fun m!770621 () Bool)

(assert (=> b!524492 m!770621))

(assert (=> b!524492 m!770599))

(assert (=> b!524492 m!770599))

(declare-fun m!770623 () Bool)

(assert (=> b!524492 m!770623))

(declare-fun m!770625 () Bool)

(assert (=> b!524491 m!770625))

(declare-fun m!770627 () Bool)

(assert (=> b!524491 m!770627))

(declare-fun m!770629 () Bool)

(assert (=> b!524495 m!770629))

(declare-fun m!770631 () Bool)

(assert (=> b!524495 m!770631))

(declare-fun m!770633 () Bool)

(assert (=> b!524494 m!770633))

(assert (=> b!524494 m!770599))

(assert (=> b!524494 m!770599))

(assert (=> b!524494 m!770623))

(declare-fun m!770635 () Bool)

(assert (=> b!524493 m!770635))

(declare-fun m!770637 () Bool)

(assert (=> d!187041 m!770637))

(declare-fun m!770639 () Bool)

(assert (=> d!187041 m!770639))

(assert (=> b!524497 m!770621))

(assert (=> b!524497 m!770599))

(assert (=> b!524456 d!187041))

(declare-fun d!187043 () Bool)

(assert (=> d!187043 (= (isEmpty!3590 (list!2046 (_2!3242 lt!217485))) ((_ is Nil!4885) (list!2046 (_2!3242 lt!217485))))))

(assert (=> b!524447 d!187043))

(declare-fun d!187045 () Bool)

(declare-fun list!2049 (Conc!1590) List!4895)

(assert (=> d!187045 (= (list!2046 (_2!3242 lt!217485)) (list!2049 (c!100889 (_2!3242 lt!217485))))))

(declare-fun bs!65073 () Bool)

(assert (= bs!65073 d!187045))

(declare-fun m!770641 () Bool)

(assert (=> bs!65073 m!770641))

(assert (=> b!524447 d!187045))

(declare-fun d!187047 () Bool)

(assert (=> d!187047 (= (isEmpty!3591 rules!1345) ((_ is Nil!4890) rules!1345))))

(assert (=> b!524476 d!187047))

(declare-fun d!187049 () Bool)

(declare-fun validCacheMapUp!35 (MutableMap!537) Bool)

(assert (=> d!187049 (= (valid!544 cacheUp!449) (validCacheMapUp!35 (cache!924 cacheUp!449)))))

(declare-fun bs!65074 () Bool)

(assert (= bs!65074 d!187049))

(declare-fun m!770643 () Bool)

(assert (=> bs!65074 m!770643))

(assert (=> b!524458 d!187049))

(declare-fun d!187051 () Bool)

(declare-fun c!100900 () Bool)

(assert (=> d!187051 (= c!100900 ((_ is Node!1590) (c!100889 input!747)))))

(declare-fun e!314856 () Bool)

(assert (=> d!187051 (= (inv!6154 (c!100889 input!747)) e!314856)))

(declare-fun b!524504 () Bool)

(declare-fun inv!6156 (Conc!1590) Bool)

(assert (=> b!524504 (= e!314856 (inv!6156 (c!100889 input!747)))))

(declare-fun b!524505 () Bool)

(declare-fun e!314857 () Bool)

(assert (=> b!524505 (= e!314856 e!314857)))

(declare-fun res!222218 () Bool)

(assert (=> b!524505 (= res!222218 (not ((_ is Leaf!2535) (c!100889 input!747))))))

(assert (=> b!524505 (=> res!222218 e!314857)))

(declare-fun b!524506 () Bool)

(declare-fun inv!6157 (Conc!1590) Bool)

(assert (=> b!524506 (= e!314857 (inv!6157 (c!100889 input!747)))))

(assert (= (and d!187051 c!100900) b!524504))

(assert (= (and d!187051 (not c!100900)) b!524505))

(assert (= (and b!524505 (not res!222218)) b!524506))

(declare-fun m!770645 () Bool)

(assert (=> b!524504 m!770645))

(declare-fun m!770647 () Bool)

(assert (=> b!524506 m!770647))

(assert (=> b!524459 d!187051))

(declare-fun d!187053 () Bool)

(assert (=> d!187053 (= (array_inv!726 (_keys!857 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))) (bvsge (size!3984 (_keys!857 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!524450 d!187053))

(declare-fun d!187055 () Bool)

(assert (=> d!187055 (= (array_inv!727 (_values!842 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))) (bvsge (size!3983 (_values!842 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!524450 d!187055))

(declare-fun d!187057 () Bool)

(declare-fun c!100901 () Bool)

(assert (=> d!187057 (= c!100901 ((_ is Node!1590) (c!100889 (totalInput!1737 cacheFurthestNullable!56))))))

(declare-fun e!314858 () Bool)

(assert (=> d!187057 (= (inv!6154 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) e!314858)))

(declare-fun b!524507 () Bool)

(assert (=> b!524507 (= e!314858 (inv!6156 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))))

(declare-fun b!524508 () Bool)

(declare-fun e!314859 () Bool)

(assert (=> b!524508 (= e!314858 e!314859)))

(declare-fun res!222219 () Bool)

(assert (=> b!524508 (= res!222219 (not ((_ is Leaf!2535) (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(assert (=> b!524508 (=> res!222219 e!314859)))

(declare-fun b!524509 () Bool)

(assert (=> b!524509 (= e!314859 (inv!6157 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))))

(assert (= (and d!187057 c!100901) b!524507))

(assert (= (and d!187057 (not c!100901)) b!524508))

(assert (= (and b!524508 (not res!222219)) b!524509))

(declare-fun m!770649 () Bool)

(assert (=> b!524507 m!770649))

(declare-fun m!770651 () Bool)

(assert (=> b!524509 m!770651))

(assert (=> b!524460 d!187057))

(declare-fun d!187059 () Bool)

(assert (=> d!187059 (= (inv!6148 (tag!1146 (h!10291 rules!1345))) (= (mod (str.len (value!30047 (tag!1146 (h!10291 rules!1345)))) 2) 0))))

(assert (=> b!524470 d!187059))

(declare-fun d!187061 () Bool)

(declare-fun res!222222 () Bool)

(declare-fun e!314862 () Bool)

(assert (=> d!187061 (=> (not res!222222) (not e!314862))))

(declare-fun semiInverseModEq!354 (Int Int) Bool)

(assert (=> d!187061 (= res!222222 (semiInverseModEq!354 (toChars!1574 (transformation!884 (h!10291 rules!1345))) (toValue!1715 (transformation!884 (h!10291 rules!1345)))))))

(assert (=> d!187061 (= (inv!6155 (transformation!884 (h!10291 rules!1345))) e!314862)))

(declare-fun b!524512 () Bool)

(declare-fun equivClasses!337 (Int Int) Bool)

(assert (=> b!524512 (= e!314862 (equivClasses!337 (toChars!1574 (transformation!884 (h!10291 rules!1345))) (toValue!1715 (transformation!884 (h!10291 rules!1345)))))))

(assert (= (and d!187061 res!222222) b!524512))

(declare-fun m!770653 () Bool)

(assert (=> d!187061 m!770653))

(declare-fun m!770655 () Bool)

(assert (=> b!524512 m!770655))

(assert (=> b!524470 d!187061))

(declare-fun b!524521 () Bool)

(declare-fun e!314868 () List!4895)

(assert (=> b!524521 (= e!314868 lt!217487)))

(declare-fun b!524524 () Bool)

(declare-fun e!314867 () Bool)

(declare-fun lt!217502 () List!4895)

(assert (=> b!524524 (= e!314867 (or (not (= lt!217487 Nil!4885)) (= lt!217502 lt!217489)))))

(declare-fun b!524523 () Bool)

(declare-fun res!222227 () Bool)

(assert (=> b!524523 (=> (not res!222227) (not e!314867))))

(declare-fun size!3990 (List!4895) Int)

(assert (=> b!524523 (= res!222227 (= (size!3990 lt!217502) (+ (size!3990 lt!217489) (size!3990 lt!217487))))))

(declare-fun d!187063 () Bool)

(assert (=> d!187063 e!314867))

(declare-fun res!222228 () Bool)

(assert (=> d!187063 (=> (not res!222228) (not e!314867))))

(declare-fun content!886 (List!4895) (InoxSet C!3340))

(assert (=> d!187063 (= res!222228 (= (content!886 lt!217502) ((_ map or) (content!886 lt!217489) (content!886 lt!217487))))))

(assert (=> d!187063 (= lt!217502 e!314868)))

(declare-fun c!100904 () Bool)

(assert (=> d!187063 (= c!100904 ((_ is Nil!4885) lt!217489))))

(assert (=> d!187063 (= (++!1370 lt!217489 lt!217487) lt!217502)))

(declare-fun b!524522 () Bool)

(assert (=> b!524522 (= e!314868 (Cons!4885 (h!10286 lt!217489) (++!1370 (t!73497 lt!217489) lt!217487)))))

(assert (= (and d!187063 c!100904) b!524521))

(assert (= (and d!187063 (not c!100904)) b!524522))

(assert (= (and d!187063 res!222228) b!524523))

(assert (= (and b!524523 res!222227) b!524524))

(declare-fun m!770657 () Bool)

(assert (=> b!524523 m!770657))

(declare-fun m!770659 () Bool)

(assert (=> b!524523 m!770659))

(declare-fun m!770661 () Bool)

(assert (=> b!524523 m!770661))

(declare-fun m!770663 () Bool)

(assert (=> d!187063 m!770663))

(declare-fun m!770665 () Bool)

(assert (=> d!187063 m!770665))

(declare-fun m!770667 () Bool)

(assert (=> d!187063 m!770667))

(declare-fun m!770669 () Bool)

(assert (=> b!524522 m!770669))

(assert (=> b!524461 d!187063))

(declare-fun d!187065 () Bool)

(assert (=> d!187065 (= (list!2046 input!747) (list!2049 (c!100889 input!747)))))

(declare-fun bs!65075 () Bool)

(assert (= bs!65075 d!187065))

(declare-fun m!770671 () Bool)

(assert (=> bs!65075 m!770671))

(assert (=> b!524461 d!187065))

(declare-fun d!187067 () Bool)

(assert (=> d!187067 (= (list!2046 (BalanceConc!3189 Empty!1590)) (list!2049 (c!100889 (BalanceConc!3189 Empty!1590))))))

(declare-fun bs!65076 () Bool)

(assert (= bs!65076 d!187067))

(declare-fun m!770673 () Bool)

(assert (=> bs!65076 m!770673))

(assert (=> b!524461 d!187067))

(declare-fun d!187069 () Bool)

(declare-fun res!222231 () Bool)

(declare-fun e!314871 () Bool)

(assert (=> d!187069 (=> (not res!222231) (not e!314871))))

(declare-fun rulesValid!319 (LexerInterface!770 List!4900) Bool)

(assert (=> d!187069 (= res!222231 (rulesValid!319 thiss!12147 rules!1345))))

(assert (=> d!187069 (= (rulesInvariant!735 thiss!12147 rules!1345) e!314871)))

(declare-fun b!524527 () Bool)

(declare-datatypes ((List!4901 0))(
  ( (Nil!4891) (Cons!4891 (h!10292 String!6266) (t!73503 List!4901)) )
))
(declare-fun noDuplicateTag!319 (LexerInterface!770 List!4900 List!4901) Bool)

(assert (=> b!524527 (= e!314871 (noDuplicateTag!319 thiss!12147 rules!1345 Nil!4891))))

(assert (= (and d!187069 res!222231) b!524527))

(declare-fun m!770675 () Bool)

(assert (=> d!187069 m!770675))

(declare-fun m!770677 () Bool)

(assert (=> b!524527 m!770677))

(assert (=> b!524453 d!187069))

(declare-fun d!187071 () Bool)

(declare-fun isBalanced!492 (Conc!1590) Bool)

(assert (=> d!187071 (= (inv!6150 (totalInput!1737 cacheFurthestNullable!56)) (isBalanced!492 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))))

(declare-fun bs!65077 () Bool)

(assert (= bs!65077 d!187071))

(declare-fun m!770679 () Bool)

(assert (=> bs!65077 m!770679))

(assert (=> b!524472 d!187071))

(declare-fun d!187073 () Bool)

(declare-fun validCacheMapFurthestNullable!25 (MutableMap!536 BalanceConc!3188) Bool)

(assert (=> d!187073 (= (valid!542 cacheFurthestNullable!56) (validCacheMapFurthestNullable!25 (cache!923 cacheFurthestNullable!56) (totalInput!1737 cacheFurthestNullable!56)))))

(declare-fun bs!65078 () Bool)

(assert (= bs!65078 d!187073))

(declare-fun m!770681 () Bool)

(assert (=> bs!65078 m!770681))

(assert (=> b!524444 d!187073))

(declare-fun d!187075 () Bool)

(assert (=> d!187075 (= (array_inv!726 (_keys!859 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))) (bvsge (size!3984 (_keys!859 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!524454 d!187075))

(declare-fun d!187077 () Bool)

(assert (=> d!187077 (= (array_inv!728 (_values!844 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))) (bvsge (size!3986 (_values!844 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!524454 d!187077))

(declare-fun d!187079 () Bool)

(assert (=> d!187079 (= (array_inv!726 (_keys!858 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))) (bvsge (size!3984 (_keys!858 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!524463 d!187079))

(declare-fun d!187081 () Bool)

(assert (=> d!187081 (= (array_inv!729 (_values!843 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))) (bvsge (size!3985 (_values!843 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!524463 d!187081))

(declare-fun d!187083 () Bool)

(assert (=> d!187083 (= (inv!6150 input!747) (isBalanced!492 (c!100889 input!747)))))

(declare-fun bs!65079 () Bool)

(assert (= bs!65079 d!187083))

(declare-fun m!770683 () Bool)

(assert (=> bs!65079 m!770683))

(assert (=> start!48060 d!187083))

(declare-fun d!187085 () Bool)

(declare-fun res!222234 () Bool)

(declare-fun e!314874 () Bool)

(assert (=> d!187085 (=> (not res!222234) (not e!314874))))

(assert (=> d!187085 (= res!222234 ((_ is HashMap!535) (cache!922 cacheDown!462)))))

(assert (=> d!187085 (= (inv!6151 cacheDown!462) e!314874)))

(declare-fun b!524530 () Bool)

(declare-fun validCacheMapDown!32 (MutableMap!535) Bool)

(assert (=> b!524530 (= e!314874 (validCacheMapDown!32 (cache!922 cacheDown!462)))))

(assert (= (and d!187085 res!222234) b!524530))

(declare-fun m!770685 () Bool)

(assert (=> b!524530 m!770685))

(assert (=> start!48060 d!187085))

(declare-fun d!187087 () Bool)

(declare-fun res!222237 () Bool)

(declare-fun e!314877 () Bool)

(assert (=> d!187087 (=> (not res!222237) (not e!314877))))

(assert (=> d!187087 (= res!222237 ((_ is HashMap!536) (cache!923 cacheFurthestNullable!56)))))

(assert (=> d!187087 (= (inv!6152 cacheFurthestNullable!56) e!314877)))

(declare-fun b!524533 () Bool)

(assert (=> b!524533 (= e!314877 (validCacheMapFurthestNullable!25 (cache!923 cacheFurthestNullable!56) (totalInput!1737 cacheFurthestNullable!56)))))

(assert (= (and d!187087 res!222237) b!524533))

(assert (=> b!524533 m!770681))

(assert (=> start!48060 d!187087))

(declare-fun d!187089 () Bool)

(declare-fun res!222240 () Bool)

(declare-fun e!314880 () Bool)

(assert (=> d!187089 (=> (not res!222240) (not e!314880))))

(assert (=> d!187089 (= res!222240 ((_ is HashMap!537) (cache!924 cacheUp!449)))))

(assert (=> d!187089 (= (inv!6153 cacheUp!449) e!314880)))

(declare-fun b!524536 () Bool)

(assert (=> b!524536 (= e!314880 (validCacheMapUp!35 (cache!924 cacheUp!449)))))

(assert (= (and d!187089 res!222240) b!524536))

(assert (=> b!524536 m!770643))

(assert (=> start!48060 d!187089))

(declare-fun d!187091 () Bool)

(assert (=> d!187091 (= (valid!543 cacheDown!462) (validCacheMapDown!32 (cache!922 cacheDown!462)))))

(declare-fun bs!65080 () Bool)

(assert (= bs!65080 d!187091))

(assert (=> bs!65080 m!770685))

(assert (=> b!524455 d!187091))

(declare-fun setElem!2352 () Context!294)

(declare-fun e!314892 () Bool)

(declare-fun setNonEmpty!2351 () Bool)

(declare-fun tp!164855 () Bool)

(declare-fun setRes!2352 () Bool)

(declare-fun inv!6158 (Context!294) Bool)

(assert (=> setNonEmpty!2351 (= setRes!2352 (and tp!164855 (inv!6158 setElem!2352) e!314892))))

(declare-fun mapValue!2201 () List!4896)

(declare-fun setRest!2351 () (InoxSet Context!294))

(assert (=> setNonEmpty!2351 (= (_1!3238 (_1!3239 (h!10287 mapValue!2201))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2352 true) setRest!2351))))

(declare-fun mapIsEmpty!2201 () Bool)

(declare-fun mapRes!2201 () Bool)

(assert (=> mapIsEmpty!2201 mapRes!2201))

(declare-fun setIsEmpty!2351 () Bool)

(assert (=> setIsEmpty!2351 setRes!2352))

(declare-fun b!524547 () Bool)

(declare-fun e!314891 () Bool)

(declare-fun setRes!2351 () Bool)

(declare-fun tp!164857 () Bool)

(assert (=> b!524547 (= e!314891 (and setRes!2351 tp!164857))))

(declare-fun condSetEmpty!2352 () Bool)

(declare-fun mapDefault!2201 () List!4896)

(assert (=> b!524547 (= condSetEmpty!2352 (= (_1!3238 (_1!3239 (h!10287 mapDefault!2201))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun setElem!2351 () Context!294)

(declare-fun e!314890 () Bool)

(declare-fun setNonEmpty!2352 () Bool)

(declare-fun tp!164853 () Bool)

(assert (=> setNonEmpty!2352 (= setRes!2351 (and tp!164853 (inv!6158 setElem!2351) e!314890))))

(declare-fun setRest!2352 () (InoxSet Context!294))

(assert (=> setNonEmpty!2352 (= (_1!3238 (_1!3239 (h!10287 mapDefault!2201))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2351 true) setRest!2352))))

(declare-fun mapNonEmpty!2201 () Bool)

(declare-fun tp!164854 () Bool)

(declare-fun e!314889 () Bool)

(assert (=> mapNonEmpty!2201 (= mapRes!2201 (and tp!164854 e!314889))))

(declare-fun mapKey!2201 () (_ BitVec 32))

(declare-fun mapRest!2201 () (Array (_ BitVec 32) List!4896))

(assert (=> mapNonEmpty!2201 (= mapRest!2196 (store mapRest!2201 mapKey!2201 mapValue!2201))))

(declare-fun b!524548 () Bool)

(declare-fun tp!164852 () Bool)

(assert (=> b!524548 (= e!314892 tp!164852)))

(declare-fun b!524549 () Bool)

(declare-fun tp!164851 () Bool)

(assert (=> b!524549 (= e!314889 (and setRes!2352 tp!164851))))

(declare-fun condSetEmpty!2351 () Bool)

(assert (=> b!524549 (= condSetEmpty!2351 (= (_1!3238 (_1!3239 (h!10287 mapValue!2201))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524550 () Bool)

(declare-fun tp!164856 () Bool)

(assert (=> b!524550 (= e!314890 tp!164856)))

(declare-fun condMapEmpty!2201 () Bool)

(assert (=> mapNonEmpty!2198 (= condMapEmpty!2201 (= mapRest!2196 ((as const (Array (_ BitVec 32) List!4896)) mapDefault!2201)))))

(assert (=> mapNonEmpty!2198 (= tp!164820 (and e!314891 mapRes!2201))))

(declare-fun setIsEmpty!2352 () Bool)

(assert (=> setIsEmpty!2352 setRes!2351))

(assert (= (and mapNonEmpty!2198 condMapEmpty!2201) mapIsEmpty!2201))

(assert (= (and mapNonEmpty!2198 (not condMapEmpty!2201)) mapNonEmpty!2201))

(assert (= (and b!524549 condSetEmpty!2351) setIsEmpty!2351))

(assert (= (and b!524549 (not condSetEmpty!2351)) setNonEmpty!2351))

(assert (= setNonEmpty!2351 b!524548))

(assert (= (and mapNonEmpty!2201 ((_ is Cons!4886) mapValue!2201)) b!524549))

(assert (= (and b!524547 condSetEmpty!2352) setIsEmpty!2352))

(assert (= (and b!524547 (not condSetEmpty!2352)) setNonEmpty!2352))

(assert (= setNonEmpty!2352 b!524550))

(assert (= (and mapNonEmpty!2198 ((_ is Cons!4886) mapDefault!2201)) b!524547))

(declare-fun m!770687 () Bool)

(assert (=> setNonEmpty!2351 m!770687))

(declare-fun m!770689 () Bool)

(assert (=> setNonEmpty!2352 m!770689))

(declare-fun m!770691 () Bool)

(assert (=> mapNonEmpty!2201 m!770691))

(declare-fun setRes!2355 () Bool)

(declare-fun e!314898 () Bool)

(declare-fun tp!164865 () Bool)

(declare-fun setNonEmpty!2355 () Bool)

(declare-fun setElem!2355 () Context!294)

(assert (=> setNonEmpty!2355 (= setRes!2355 (and tp!164865 (inv!6158 setElem!2355) e!314898))))

(declare-fun setRest!2355 () (InoxSet Context!294))

(assert (=> setNonEmpty!2355 (= (_1!3238 (_1!3239 (h!10287 mapValue!2198))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2355 true) setRest!2355))))

(declare-fun b!524557 () Bool)

(declare-fun e!314897 () Bool)

(declare-fun tp!164864 () Bool)

(assert (=> b!524557 (= e!314897 (and setRes!2355 tp!164864))))

(declare-fun condSetEmpty!2355 () Bool)

(assert (=> b!524557 (= condSetEmpty!2355 (= (_1!3238 (_1!3239 (h!10287 mapValue!2198))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524558 () Bool)

(declare-fun tp!164866 () Bool)

(assert (=> b!524558 (= e!314898 tp!164866)))

(assert (=> mapNonEmpty!2198 (= tp!164821 e!314897)))

(declare-fun setIsEmpty!2355 () Bool)

(assert (=> setIsEmpty!2355 setRes!2355))

(assert (= (and b!524557 condSetEmpty!2355) setIsEmpty!2355))

(assert (= (and b!524557 (not condSetEmpty!2355)) setNonEmpty!2355))

(assert (= setNonEmpty!2355 b!524558))

(assert (= (and mapNonEmpty!2198 ((_ is Cons!4886) mapValue!2198)) b!524557))

(declare-fun m!770693 () Bool)

(assert (=> setNonEmpty!2355 m!770693))

(declare-fun b!524569 () Bool)

(declare-fun b_free!13833 () Bool)

(declare-fun b_next!13849 () Bool)

(assert (=> b!524569 (= b_free!13833 (not b_next!13849))))

(declare-fun tp!164878 () Bool)

(declare-fun b_and!51327 () Bool)

(assert (=> b!524569 (= tp!164878 b_and!51327)))

(declare-fun b_free!13835 () Bool)

(declare-fun b_next!13851 () Bool)

(assert (=> b!524569 (= b_free!13835 (not b_next!13851))))

(declare-fun tp!164876 () Bool)

(declare-fun b_and!51329 () Bool)

(assert (=> b!524569 (= tp!164876 b_and!51329)))

(declare-fun e!314909 () Bool)

(assert (=> b!524569 (= e!314909 (and tp!164878 tp!164876))))

(declare-fun tp!164875 () Bool)

(declare-fun b!524568 () Bool)

(declare-fun e!314907 () Bool)

(assert (=> b!524568 (= e!314907 (and tp!164875 (inv!6148 (tag!1146 (h!10291 (t!73502 rules!1345)))) (inv!6155 (transformation!884 (h!10291 (t!73502 rules!1345)))) e!314909))))

(declare-fun b!524567 () Bool)

(declare-fun e!314910 () Bool)

(declare-fun tp!164877 () Bool)

(assert (=> b!524567 (= e!314910 (and e!314907 tp!164877))))

(assert (=> b!524457 (= tp!164833 e!314910)))

(assert (= b!524568 b!524569))

(assert (= b!524567 b!524568))

(assert (= (and b!524457 ((_ is Cons!4890) (t!73502 rules!1345))) b!524567))

(declare-fun m!770695 () Bool)

(assert (=> b!524568 m!770695))

(declare-fun m!770697 () Bool)

(assert (=> b!524568 m!770697))

(declare-fun setRes!2356 () Bool)

(declare-fun e!314912 () Bool)

(declare-fun setNonEmpty!2356 () Bool)

(declare-fun tp!164880 () Bool)

(declare-fun setElem!2356 () Context!294)

(assert (=> setNonEmpty!2356 (= setRes!2356 (and tp!164880 (inv!6158 setElem!2356) e!314912))))

(declare-fun setRest!2356 () (InoxSet Context!294))

(assert (=> setNonEmpty!2356 (= (_1!3238 (_1!3239 (h!10287 mapDefault!2196))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2356 true) setRest!2356))))

(declare-fun b!524570 () Bool)

(declare-fun e!314911 () Bool)

(declare-fun tp!164879 () Bool)

(assert (=> b!524570 (= e!314911 (and setRes!2356 tp!164879))))

(declare-fun condSetEmpty!2356 () Bool)

(assert (=> b!524570 (= condSetEmpty!2356 (= (_1!3238 (_1!3239 (h!10287 mapDefault!2196))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524571 () Bool)

(declare-fun tp!164881 () Bool)

(assert (=> b!524571 (= e!314912 tp!164881)))

(assert (=> b!524449 (= tp!164831 e!314911)))

(declare-fun setIsEmpty!2356 () Bool)

(assert (=> setIsEmpty!2356 setRes!2356))

(assert (= (and b!524570 condSetEmpty!2356) setIsEmpty!2356))

(assert (= (and b!524570 (not condSetEmpty!2356)) setNonEmpty!2356))

(assert (= setNonEmpty!2356 b!524571))

(assert (= (and b!524449 ((_ is Cons!4886) mapDefault!2196)) b!524570))

(declare-fun m!770699 () Bool)

(assert (=> setNonEmpty!2356 m!770699))

(declare-fun tp!164888 () Bool)

(declare-fun b!524580 () Bool)

(declare-fun e!314918 () Bool)

(declare-fun tp!164890 () Bool)

(assert (=> b!524580 (= e!314918 (and (inv!6154 (left!4192 (c!100889 input!747))) tp!164888 (inv!6154 (right!4522 (c!100889 input!747))) tp!164890))))

(declare-fun b!524582 () Bool)

(declare-fun e!314917 () Bool)

(declare-fun tp!164889 () Bool)

(assert (=> b!524582 (= e!314917 tp!164889)))

(declare-fun b!524581 () Bool)

(declare-fun inv!6159 (IArray!3181) Bool)

(assert (=> b!524581 (= e!314918 (and (inv!6159 (xs!4225 (c!100889 input!747))) e!314917))))

(assert (=> b!524459 (= tp!164822 (and (inv!6154 (c!100889 input!747)) e!314918))))

(assert (= (and b!524459 ((_ is Node!1590) (c!100889 input!747))) b!524580))

(assert (= b!524581 b!524582))

(assert (= (and b!524459 ((_ is Leaf!2535) (c!100889 input!747))) b!524581))

(declare-fun m!770701 () Bool)

(assert (=> b!524580 m!770701))

(declare-fun m!770703 () Bool)

(assert (=> b!524580 m!770703))

(declare-fun m!770705 () Bool)

(assert (=> b!524581 m!770705))

(assert (=> b!524459 m!770587))

(declare-fun e!314925 () Bool)

(declare-fun tp!164903 () Bool)

(declare-fun e!314927 () Bool)

(declare-fun tp!164901 () Bool)

(declare-fun setRes!2359 () Bool)

(declare-fun tp_is_empty!2793 () Bool)

(declare-fun b!524591 () Bool)

(assert (=> b!524591 (= e!314927 (and tp!164903 (inv!6158 (_2!3236 (_1!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))))) e!314925 tp_is_empty!2793 setRes!2359 tp!164901))))

(declare-fun condSetEmpty!2359 () Bool)

(assert (=> b!524591 (= condSetEmpty!2359 (= (_2!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))) ((as const (Array Context!294 Bool)) false)))))

(assert (=> b!524450 (= tp!164834 e!314927)))

(declare-fun setIsEmpty!2359 () Bool)

(assert (=> setIsEmpty!2359 setRes!2359))

(declare-fun b!524592 () Bool)

(declare-fun tp!164902 () Bool)

(assert (=> b!524592 (= e!314925 tp!164902)))

(declare-fun setNonEmpty!2359 () Bool)

(declare-fun e!314926 () Bool)

(declare-fun setElem!2359 () Context!294)

(declare-fun tp!164904 () Bool)

(assert (=> setNonEmpty!2359 (= setRes!2359 (and tp!164904 (inv!6158 setElem!2359) e!314926))))

(declare-fun setRest!2359 () (InoxSet Context!294))

(assert (=> setNonEmpty!2359 (= (_2!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2359 true) setRest!2359))))

(declare-fun b!524593 () Bool)

(declare-fun tp!164905 () Bool)

(assert (=> b!524593 (= e!314926 tp!164905)))

(assert (= b!524591 b!524592))

(assert (= (and b!524591 condSetEmpty!2359) setIsEmpty!2359))

(assert (= (and b!524591 (not condSetEmpty!2359)) setNonEmpty!2359))

(assert (= setNonEmpty!2359 b!524593))

(assert (= (and b!524450 ((_ is Cons!4884) (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))) b!524591))

(declare-fun m!770707 () Bool)

(assert (=> b!524591 m!770707))

(declare-fun m!770709 () Bool)

(assert (=> setNonEmpty!2359 m!770709))

(declare-fun e!314928 () Bool)

(declare-fun setRes!2360 () Bool)

(declare-fun b!524594 () Bool)

(declare-fun tp!164908 () Bool)

(declare-fun tp!164906 () Bool)

(declare-fun e!314930 () Bool)

(assert (=> b!524594 (= e!314930 (and tp!164908 (inv!6158 (_2!3236 (_1!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))))) e!314928 tp_is_empty!2793 setRes!2360 tp!164906))))

(declare-fun condSetEmpty!2360 () Bool)

(assert (=> b!524594 (= condSetEmpty!2360 (= (_2!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))) ((as const (Array Context!294 Bool)) false)))))

(assert (=> b!524450 (= tp!164823 e!314930)))

(declare-fun setIsEmpty!2360 () Bool)

(assert (=> setIsEmpty!2360 setRes!2360))

(declare-fun b!524595 () Bool)

(declare-fun tp!164907 () Bool)

(assert (=> b!524595 (= e!314928 tp!164907)))

(declare-fun setNonEmpty!2360 () Bool)

(declare-fun tp!164909 () Bool)

(declare-fun setElem!2360 () Context!294)

(declare-fun e!314929 () Bool)

(assert (=> setNonEmpty!2360 (= setRes!2360 (and tp!164909 (inv!6158 setElem!2360) e!314929))))

(declare-fun setRest!2360 () (InoxSet Context!294))

(assert (=> setNonEmpty!2360 (= (_2!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2360 true) setRest!2360))))

(declare-fun b!524596 () Bool)

(declare-fun tp!164910 () Bool)

(assert (=> b!524596 (= e!314929 tp!164910)))

(assert (= b!524594 b!524595))

(assert (= (and b!524594 condSetEmpty!2360) setIsEmpty!2360))

(assert (= (and b!524594 (not condSetEmpty!2360)) setNonEmpty!2360))

(assert (= setNonEmpty!2360 b!524596))

(assert (= (and b!524450 ((_ is Cons!4884) (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))) b!524594))

(declare-fun m!770711 () Bool)

(assert (=> b!524594 m!770711))

(declare-fun m!770713 () Bool)

(assert (=> setNonEmpty!2360 m!770713))

(declare-fun tp!164913 () Bool)

(declare-fun setRes!2361 () Bool)

(declare-fun e!314931 () Bool)

(declare-fun b!524597 () Bool)

(declare-fun tp!164911 () Bool)

(declare-fun e!314933 () Bool)

(assert (=> b!524597 (= e!314933 (and tp!164913 (inv!6158 (_2!3236 (_1!3237 (h!10285 mapDefault!2198)))) e!314931 tp_is_empty!2793 setRes!2361 tp!164911))))

(declare-fun condSetEmpty!2361 () Bool)

(assert (=> b!524597 (= condSetEmpty!2361 (= (_2!3237 (h!10285 mapDefault!2198)) ((as const (Array Context!294 Bool)) false)))))

(assert (=> b!524443 (= tp!164817 e!314933)))

(declare-fun setIsEmpty!2361 () Bool)

(assert (=> setIsEmpty!2361 setRes!2361))

(declare-fun b!524598 () Bool)

(declare-fun tp!164912 () Bool)

(assert (=> b!524598 (= e!314931 tp!164912)))

(declare-fun setNonEmpty!2361 () Bool)

(declare-fun e!314932 () Bool)

(declare-fun setElem!2361 () Context!294)

(declare-fun tp!164914 () Bool)

(assert (=> setNonEmpty!2361 (= setRes!2361 (and tp!164914 (inv!6158 setElem!2361) e!314932))))

(declare-fun setRest!2361 () (InoxSet Context!294))

(assert (=> setNonEmpty!2361 (= (_2!3237 (h!10285 mapDefault!2198)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2361 true) setRest!2361))))

(declare-fun b!524599 () Bool)

(declare-fun tp!164915 () Bool)

(assert (=> b!524599 (= e!314932 tp!164915)))

(assert (= b!524597 b!524598))

(assert (= (and b!524597 condSetEmpty!2361) setIsEmpty!2361))

(assert (= (and b!524597 (not condSetEmpty!2361)) setNonEmpty!2361))

(assert (= setNonEmpty!2361 b!524599))

(assert (= (and b!524443 ((_ is Cons!4884) mapDefault!2198)) b!524597))

(declare-fun m!770715 () Bool)

(assert (=> b!524597 m!770715))

(declare-fun m!770717 () Bool)

(assert (=> setNonEmpty!2361 m!770717))

(declare-fun e!314935 () Bool)

(declare-fun tp!164916 () Bool)

(declare-fun b!524600 () Bool)

(declare-fun tp!164918 () Bool)

(assert (=> b!524600 (= e!314935 (and (inv!6154 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) tp!164916 (inv!6154 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) tp!164918))))

(declare-fun b!524602 () Bool)

(declare-fun e!314934 () Bool)

(declare-fun tp!164917 () Bool)

(assert (=> b!524602 (= e!314934 tp!164917)))

(declare-fun b!524601 () Bool)

(assert (=> b!524601 (= e!314935 (and (inv!6159 (xs!4225 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) e!314934))))

(assert (=> b!524460 (= tp!164813 (and (inv!6154 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) e!314935))))

(assert (= (and b!524460 ((_ is Node!1590) (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) b!524600))

(assert (= b!524601 b!524602))

(assert (= (and b!524460 ((_ is Leaf!2535) (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) b!524601))

(declare-fun m!770719 () Bool)

(assert (=> b!524600 m!770719))

(declare-fun m!770721 () Bool)

(assert (=> b!524600 m!770721))

(declare-fun m!770723 () Bool)

(assert (=> b!524601 m!770723))

(assert (=> b!524460 m!770563))

(declare-fun b!524615 () Bool)

(declare-fun e!314938 () Bool)

(declare-fun tp!164933 () Bool)

(assert (=> b!524615 (= e!314938 tp!164933)))

(declare-fun b!524613 () Bool)

(assert (=> b!524613 (= e!314938 tp_is_empty!2793)))

(declare-fun b!524614 () Bool)

(declare-fun tp!164932 () Bool)

(declare-fun tp!164931 () Bool)

(assert (=> b!524614 (= e!314938 (and tp!164932 tp!164931))))

(declare-fun b!524616 () Bool)

(declare-fun tp!164929 () Bool)

(declare-fun tp!164930 () Bool)

(assert (=> b!524616 (= e!314938 (and tp!164929 tp!164930))))

(assert (=> b!524470 (= tp!164828 e!314938)))

(assert (= (and b!524470 ((_ is ElementMatch!1209) (regex!884 (h!10291 rules!1345)))) b!524613))

(assert (= (and b!524470 ((_ is Concat!2117) (regex!884 (h!10291 rules!1345)))) b!524614))

(assert (= (and b!524470 ((_ is Star!1209) (regex!884 (h!10291 rules!1345)))) b!524615))

(assert (= (and b!524470 ((_ is Union!1209) (regex!884 (h!10291 rules!1345)))) b!524616))

(declare-fun setIsEmpty!2366 () Bool)

(declare-fun setRes!2366 () Bool)

(assert (=> setIsEmpty!2366 setRes!2366))

(declare-fun setIsEmpty!2367 () Bool)

(declare-fun setRes!2367 () Bool)

(assert (=> setIsEmpty!2367 setRes!2367))

(declare-fun b!524632 () Bool)

(declare-fun e!314953 () Bool)

(declare-fun tp!164962 () Bool)

(assert (=> b!524632 (= e!314953 tp!164962)))

(declare-fun mapIsEmpty!2204 () Bool)

(declare-fun mapRes!2204 () Bool)

(assert (=> mapIsEmpty!2204 mapRes!2204))

(declare-fun b!524633 () Bool)

(declare-fun e!314955 () Bool)

(declare-fun tp!164966 () Bool)

(assert (=> b!524633 (= e!314955 tp!164966)))

(declare-fun setElem!2366 () Context!294)

(declare-fun tp!164956 () Bool)

(declare-fun setNonEmpty!2366 () Bool)

(declare-fun e!314956 () Bool)

(assert (=> setNonEmpty!2366 (= setRes!2366 (and tp!164956 (inv!6158 setElem!2366) e!314956))))

(declare-fun mapDefault!2204 () List!4894)

(declare-fun setRest!2367 () (InoxSet Context!294))

(assert (=> setNonEmpty!2366 (= (_2!3237 (h!10285 mapDefault!2204)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2366 true) setRest!2367))))

(declare-fun mapValue!2204 () List!4894)

(declare-fun e!314951 () Bool)

(declare-fun b!524634 () Bool)

(declare-fun e!314952 () Bool)

(declare-fun tp!164957 () Bool)

(declare-fun tp!164964 () Bool)

(assert (=> b!524634 (= e!314952 (and tp!164964 (inv!6158 (_2!3236 (_1!3237 (h!10285 mapValue!2204)))) e!314951 tp_is_empty!2793 setRes!2367 tp!164957))))

(declare-fun condSetEmpty!2366 () Bool)

(assert (=> b!524634 (= condSetEmpty!2366 (= (_2!3237 (h!10285 mapValue!2204)) ((as const (Array Context!294 Bool)) false)))))

(declare-fun tp!164965 () Bool)

(declare-fun setNonEmpty!2367 () Bool)

(declare-fun setElem!2367 () Context!294)

(assert (=> setNonEmpty!2367 (= setRes!2367 (and tp!164965 (inv!6158 setElem!2367) e!314955))))

(declare-fun setRest!2366 () (InoxSet Context!294))

(assert (=> setNonEmpty!2367 (= (_2!3237 (h!10285 mapValue!2204)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2367 true) setRest!2366))))

(declare-fun tp!164958 () Bool)

(declare-fun tp!164959 () Bool)

(declare-fun b!524635 () Bool)

(declare-fun e!314954 () Bool)

(assert (=> b!524635 (= e!314954 (and tp!164958 (inv!6158 (_2!3236 (_1!3237 (h!10285 mapDefault!2204)))) e!314953 tp_is_empty!2793 setRes!2366 tp!164959))))

(declare-fun condSetEmpty!2367 () Bool)

(assert (=> b!524635 (= condSetEmpty!2367 (= (_2!3237 (h!10285 mapDefault!2204)) ((as const (Array Context!294 Bool)) false)))))

(declare-fun condMapEmpty!2204 () Bool)

(assert (=> mapNonEmpty!2196 (= condMapEmpty!2204 (= mapRest!2198 ((as const (Array (_ BitVec 32) List!4894)) mapDefault!2204)))))

(assert (=> mapNonEmpty!2196 (= tp!164814 (and e!314954 mapRes!2204))))

(declare-fun b!524631 () Bool)

(declare-fun tp!164960 () Bool)

(assert (=> b!524631 (= e!314951 tp!164960)))

(declare-fun b!524636 () Bool)

(declare-fun tp!164961 () Bool)

(assert (=> b!524636 (= e!314956 tp!164961)))

(declare-fun mapNonEmpty!2204 () Bool)

(declare-fun tp!164963 () Bool)

(assert (=> mapNonEmpty!2204 (= mapRes!2204 (and tp!164963 e!314952))))

(declare-fun mapKey!2204 () (_ BitVec 32))

(declare-fun mapRest!2204 () (Array (_ BitVec 32) List!4894))

(assert (=> mapNonEmpty!2204 (= mapRest!2198 (store mapRest!2204 mapKey!2204 mapValue!2204))))

(assert (= (and mapNonEmpty!2196 condMapEmpty!2204) mapIsEmpty!2204))

(assert (= (and mapNonEmpty!2196 (not condMapEmpty!2204)) mapNonEmpty!2204))

(assert (= b!524634 b!524631))

(assert (= (and b!524634 condSetEmpty!2366) setIsEmpty!2367))

(assert (= (and b!524634 (not condSetEmpty!2366)) setNonEmpty!2367))

(assert (= setNonEmpty!2367 b!524633))

(assert (= (and mapNonEmpty!2204 ((_ is Cons!4884) mapValue!2204)) b!524634))

(assert (= b!524635 b!524632))

(assert (= (and b!524635 condSetEmpty!2367) setIsEmpty!2366))

(assert (= (and b!524635 (not condSetEmpty!2367)) setNonEmpty!2366))

(assert (= setNonEmpty!2366 b!524636))

(assert (= (and mapNonEmpty!2196 ((_ is Cons!4884) mapDefault!2204)) b!524635))

(declare-fun m!770725 () Bool)

(assert (=> b!524635 m!770725))

(declare-fun m!770727 () Bool)

(assert (=> setNonEmpty!2367 m!770727))

(declare-fun m!770729 () Bool)

(assert (=> b!524634 m!770729))

(declare-fun m!770731 () Bool)

(assert (=> setNonEmpty!2366 m!770731))

(declare-fun m!770733 () Bool)

(assert (=> mapNonEmpty!2204 m!770733))

(declare-fun e!314957 () Bool)

(declare-fun b!524637 () Bool)

(declare-fun tp!164969 () Bool)

(declare-fun setRes!2368 () Bool)

(declare-fun e!314959 () Bool)

(declare-fun tp!164967 () Bool)

(assert (=> b!524637 (= e!314959 (and tp!164969 (inv!6158 (_2!3236 (_1!3237 (h!10285 mapValue!2197)))) e!314957 tp_is_empty!2793 setRes!2368 tp!164967))))

(declare-fun condSetEmpty!2368 () Bool)

(assert (=> b!524637 (= condSetEmpty!2368 (= (_2!3237 (h!10285 mapValue!2197)) ((as const (Array Context!294 Bool)) false)))))

(assert (=> mapNonEmpty!2196 (= tp!164825 e!314959)))

(declare-fun setIsEmpty!2368 () Bool)

(assert (=> setIsEmpty!2368 setRes!2368))

(declare-fun b!524638 () Bool)

(declare-fun tp!164968 () Bool)

(assert (=> b!524638 (= e!314957 tp!164968)))

(declare-fun tp!164970 () Bool)

(declare-fun e!314958 () Bool)

(declare-fun setNonEmpty!2368 () Bool)

(declare-fun setElem!2368 () Context!294)

(assert (=> setNonEmpty!2368 (= setRes!2368 (and tp!164970 (inv!6158 setElem!2368) e!314958))))

(declare-fun setRest!2368 () (InoxSet Context!294))

(assert (=> setNonEmpty!2368 (= (_2!3237 (h!10285 mapValue!2197)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2368 true) setRest!2368))))

(declare-fun b!524639 () Bool)

(declare-fun tp!164971 () Bool)

(assert (=> b!524639 (= e!314958 tp!164971)))

(assert (= b!524637 b!524638))

(assert (= (and b!524637 condSetEmpty!2368) setIsEmpty!2368))

(assert (= (and b!524637 (not condSetEmpty!2368)) setNonEmpty!2368))

(assert (= setNonEmpty!2368 b!524639))

(assert (= (and mapNonEmpty!2196 ((_ is Cons!4884) mapValue!2197)) b!524637))

(declare-fun m!770735 () Bool)

(assert (=> b!524637 m!770735))

(declare-fun m!770737 () Bool)

(assert (=> setNonEmpty!2368 m!770737))

(declare-fun b!524648 () Bool)

(declare-fun e!314966 () Bool)

(declare-fun tp!164981 () Bool)

(assert (=> b!524648 (= e!314966 tp!164981)))

(declare-fun tp!164982 () Bool)

(declare-fun setElem!2371 () Context!294)

(declare-fun setRes!2371 () Bool)

(declare-fun setNonEmpty!2371 () Bool)

(declare-fun e!314968 () Bool)

(assert (=> setNonEmpty!2371 (= setRes!2371 (and tp!164982 (inv!6158 setElem!2371) e!314968))))

(declare-fun setRest!2371 () (InoxSet Context!294))

(assert (=> setNonEmpty!2371 (= (_2!3241 (h!10288 mapDefault!2197)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2371 true) setRest!2371))))

(declare-fun e!314967 () Bool)

(assert (=> b!524471 (= tp!164812 e!314967)))

(declare-fun setIsEmpty!2371 () Bool)

(assert (=> setIsEmpty!2371 setRes!2371))

(declare-fun b!524649 () Bool)

(declare-fun tp!164980 () Bool)

(assert (=> b!524649 (= e!314968 tp!164980)))

(declare-fun tp!164983 () Bool)

(declare-fun b!524650 () Bool)

(assert (=> b!524650 (= e!314967 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 mapDefault!2197)))) e!314966 tp_is_empty!2793 setRes!2371 tp!164983))))

(declare-fun condSetEmpty!2371 () Bool)

(assert (=> b!524650 (= condSetEmpty!2371 (= (_2!3241 (h!10288 mapDefault!2197)) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!524650 b!524648))

(assert (= (and b!524650 condSetEmpty!2371) setIsEmpty!2371))

(assert (= (and b!524650 (not condSetEmpty!2371)) setNonEmpty!2371))

(assert (= setNonEmpty!2371 b!524649))

(assert (= (and b!524471 ((_ is Cons!4887) mapDefault!2197)) b!524650))

(declare-fun m!770739 () Bool)

(assert (=> setNonEmpty!2371 m!770739))

(declare-fun m!770741 () Bool)

(assert (=> b!524650 m!770741))

(declare-fun setIsEmpty!2376 () Bool)

(declare-fun setRes!2376 () Bool)

(assert (=> setIsEmpty!2376 setRes!2376))

(declare-fun mapValue!2207 () List!4897)

(declare-fun e!314982 () Bool)

(declare-fun e!314985 () Bool)

(declare-fun b!524665 () Bool)

(declare-fun tp!165005 () Bool)

(assert (=> b!524665 (= e!314985 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 mapValue!2207)))) e!314982 tp_is_empty!2793 setRes!2376 tp!165005))))

(declare-fun condSetEmpty!2377 () Bool)

(assert (=> b!524665 (= condSetEmpty!2377 (= (_2!3241 (h!10288 mapValue!2207)) ((as const (Array Context!294 Bool)) false)))))

(declare-fun setIsEmpty!2377 () Bool)

(declare-fun setRes!2377 () Bool)

(assert (=> setIsEmpty!2377 setRes!2377))

(declare-fun b!524666 () Bool)

(declare-fun e!314984 () Bool)

(declare-fun tp!165003 () Bool)

(assert (=> b!524666 (= e!314984 tp!165003)))

(declare-fun b!524667 () Bool)

(declare-fun e!314981 () Bool)

(declare-fun tp!165006 () Bool)

(assert (=> b!524667 (= e!314981 tp!165006)))

(declare-fun mapIsEmpty!2207 () Bool)

(declare-fun mapRes!2207 () Bool)

(assert (=> mapIsEmpty!2207 mapRes!2207))

(declare-fun b!524668 () Bool)

(declare-fun tp!165009 () Bool)

(assert (=> b!524668 (= e!314982 tp!165009)))

(declare-fun b!524669 () Bool)

(declare-fun e!314986 () Bool)

(declare-fun tp!165010 () Bool)

(assert (=> b!524669 (= e!314986 tp!165010)))

(declare-fun tp!165007 () Bool)

(declare-fun setNonEmpty!2376 () Bool)

(declare-fun setElem!2376 () Context!294)

(assert (=> setNonEmpty!2376 (= setRes!2376 (and tp!165007 (inv!6158 setElem!2376) e!314986))))

(declare-fun setRest!2376 () (InoxSet Context!294))

(assert (=> setNonEmpty!2376 (= (_2!3241 (h!10288 mapValue!2207)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2376 true) setRest!2376))))

(declare-fun setNonEmpty!2377 () Bool)

(declare-fun setElem!2377 () Context!294)

(declare-fun tp!165008 () Bool)

(assert (=> setNonEmpty!2377 (= setRes!2377 (and tp!165008 (inv!6158 setElem!2377) e!314981))))

(declare-fun mapDefault!2207 () List!4897)

(declare-fun setRest!2377 () (InoxSet Context!294))

(assert (=> setNonEmpty!2377 (= (_2!3241 (h!10288 mapDefault!2207)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2377 true) setRest!2377))))

(declare-fun condMapEmpty!2207 () Bool)

(assert (=> mapNonEmpty!2197 (= condMapEmpty!2207 (= mapRest!2197 ((as const (Array (_ BitVec 32) List!4897)) mapDefault!2207)))))

(declare-fun e!314983 () Bool)

(assert (=> mapNonEmpty!2197 (= tp!164819 (and e!314983 mapRes!2207))))

(declare-fun mapNonEmpty!2207 () Bool)

(declare-fun tp!165002 () Bool)

(assert (=> mapNonEmpty!2207 (= mapRes!2207 (and tp!165002 e!314985))))

(declare-fun mapKey!2207 () (_ BitVec 32))

(declare-fun mapRest!2207 () (Array (_ BitVec 32) List!4897))

(assert (=> mapNonEmpty!2207 (= mapRest!2197 (store mapRest!2207 mapKey!2207 mapValue!2207))))

(declare-fun b!524670 () Bool)

(declare-fun tp!165004 () Bool)

(assert (=> b!524670 (= e!314983 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 mapDefault!2207)))) e!314984 tp_is_empty!2793 setRes!2377 tp!165004))))

(declare-fun condSetEmpty!2376 () Bool)

(assert (=> b!524670 (= condSetEmpty!2376 (= (_2!3241 (h!10288 mapDefault!2207)) ((as const (Array Context!294 Bool)) false)))))

(assert (= (and mapNonEmpty!2197 condMapEmpty!2207) mapIsEmpty!2207))

(assert (= (and mapNonEmpty!2197 (not condMapEmpty!2207)) mapNonEmpty!2207))

(assert (= b!524665 b!524668))

(assert (= (and b!524665 condSetEmpty!2377) setIsEmpty!2376))

(assert (= (and b!524665 (not condSetEmpty!2377)) setNonEmpty!2376))

(assert (= setNonEmpty!2376 b!524669))

(assert (= (and mapNonEmpty!2207 ((_ is Cons!4887) mapValue!2207)) b!524665))

(assert (= b!524670 b!524666))

(assert (= (and b!524670 condSetEmpty!2376) setIsEmpty!2377))

(assert (= (and b!524670 (not condSetEmpty!2376)) setNonEmpty!2377))

(assert (= setNonEmpty!2377 b!524667))

(assert (= (and mapNonEmpty!2197 ((_ is Cons!4887) mapDefault!2207)) b!524670))

(declare-fun m!770743 () Bool)

(assert (=> setNonEmpty!2376 m!770743))

(declare-fun m!770745 () Bool)

(assert (=> b!524665 m!770745))

(declare-fun m!770747 () Bool)

(assert (=> setNonEmpty!2377 m!770747))

(declare-fun m!770749 () Bool)

(assert (=> b!524670 m!770749))

(declare-fun m!770751 () Bool)

(assert (=> mapNonEmpty!2207 m!770751))

(declare-fun b!524671 () Bool)

(declare-fun e!314987 () Bool)

(declare-fun tp!165012 () Bool)

(assert (=> b!524671 (= e!314987 tp!165012)))

(declare-fun tp!165013 () Bool)

(declare-fun setNonEmpty!2378 () Bool)

(declare-fun setElem!2378 () Context!294)

(declare-fun setRes!2378 () Bool)

(declare-fun e!314989 () Bool)

(assert (=> setNonEmpty!2378 (= setRes!2378 (and tp!165013 (inv!6158 setElem!2378) e!314989))))

(declare-fun setRest!2378 () (InoxSet Context!294))

(assert (=> setNonEmpty!2378 (= (_2!3241 (h!10288 mapValue!2196)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2378 true) setRest!2378))))

(declare-fun e!314988 () Bool)

(assert (=> mapNonEmpty!2197 (= tp!164818 e!314988)))

(declare-fun setIsEmpty!2378 () Bool)

(assert (=> setIsEmpty!2378 setRes!2378))

(declare-fun b!524672 () Bool)

(declare-fun tp!165011 () Bool)

(assert (=> b!524672 (= e!314989 tp!165011)))

(declare-fun tp!165014 () Bool)

(declare-fun b!524673 () Bool)

(assert (=> b!524673 (= e!314988 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 mapValue!2196)))) e!314987 tp_is_empty!2793 setRes!2378 tp!165014))))

(declare-fun condSetEmpty!2378 () Bool)

(assert (=> b!524673 (= condSetEmpty!2378 (= (_2!3241 (h!10288 mapValue!2196)) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!524673 b!524671))

(assert (= (and b!524673 condSetEmpty!2378) setIsEmpty!2378))

(assert (= (and b!524673 (not condSetEmpty!2378)) setNonEmpty!2378))

(assert (= setNonEmpty!2378 b!524672))

(assert (= (and mapNonEmpty!2197 ((_ is Cons!4887) mapValue!2196)) b!524673))

(declare-fun m!770753 () Bool)

(assert (=> setNonEmpty!2378 m!770753))

(declare-fun m!770755 () Bool)

(assert (=> b!524673 m!770755))

(declare-fun b!524674 () Bool)

(declare-fun e!314990 () Bool)

(declare-fun tp!165016 () Bool)

(assert (=> b!524674 (= e!314990 tp!165016)))

(declare-fun e!314992 () Bool)

(declare-fun setNonEmpty!2379 () Bool)

(declare-fun setRes!2379 () Bool)

(declare-fun tp!165017 () Bool)

(declare-fun setElem!2379 () Context!294)

(assert (=> setNonEmpty!2379 (= setRes!2379 (and tp!165017 (inv!6158 setElem!2379) e!314992))))

(declare-fun setRest!2379 () (InoxSet Context!294))

(assert (=> setNonEmpty!2379 (= (_2!3241 (h!10288 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2379 true) setRest!2379))))

(declare-fun e!314991 () Bool)

(assert (=> b!524454 (= tp!164827 e!314991)))

(declare-fun setIsEmpty!2379 () Bool)

(assert (=> setIsEmpty!2379 setRes!2379))

(declare-fun b!524675 () Bool)

(declare-fun tp!165015 () Bool)

(assert (=> b!524675 (= e!314992 tp!165015)))

(declare-fun tp!165018 () Bool)

(declare-fun b!524676 () Bool)

(assert (=> b!524676 (= e!314991 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))))) e!314990 tp_is_empty!2793 setRes!2379 tp!165018))))

(declare-fun condSetEmpty!2379 () Bool)

(assert (=> b!524676 (= condSetEmpty!2379 (= (_2!3241 (h!10288 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!524676 b!524674))

(assert (= (and b!524676 condSetEmpty!2379) setIsEmpty!2379))

(assert (= (and b!524676 (not condSetEmpty!2379)) setNonEmpty!2379))

(assert (= setNonEmpty!2379 b!524675))

(assert (= (and b!524454 ((_ is Cons!4887) (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))) b!524676))

(declare-fun m!770757 () Bool)

(assert (=> setNonEmpty!2379 m!770757))

(declare-fun m!770759 () Bool)

(assert (=> b!524676 m!770759))

(declare-fun b!524677 () Bool)

(declare-fun e!314993 () Bool)

(declare-fun tp!165020 () Bool)

(assert (=> b!524677 (= e!314993 tp!165020)))

(declare-fun e!314995 () Bool)

(declare-fun tp!165021 () Bool)

(declare-fun setElem!2380 () Context!294)

(declare-fun setRes!2380 () Bool)

(declare-fun setNonEmpty!2380 () Bool)

(assert (=> setNonEmpty!2380 (= setRes!2380 (and tp!165021 (inv!6158 setElem!2380) e!314995))))

(declare-fun setRest!2380 () (InoxSet Context!294))

(assert (=> setNonEmpty!2380 (= (_2!3241 (h!10288 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2380 true) setRest!2380))))

(declare-fun e!314994 () Bool)

(assert (=> b!524454 (= tp!164815 e!314994)))

(declare-fun setIsEmpty!2380 () Bool)

(assert (=> setIsEmpty!2380 setRes!2380))

(declare-fun b!524678 () Bool)

(declare-fun tp!165019 () Bool)

(assert (=> b!524678 (= e!314995 tp!165019)))

(declare-fun b!524679 () Bool)

(declare-fun tp!165022 () Bool)

(assert (=> b!524679 (= e!314994 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))))) e!314993 tp_is_empty!2793 setRes!2380 tp!165022))))

(declare-fun condSetEmpty!2380 () Bool)

(assert (=> b!524679 (= condSetEmpty!2380 (= (_2!3241 (h!10288 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!524679 b!524677))

(assert (= (and b!524679 condSetEmpty!2380) setIsEmpty!2380))

(assert (= (and b!524679 (not condSetEmpty!2380)) setNonEmpty!2380))

(assert (= setNonEmpty!2380 b!524678))

(assert (= (and b!524454 ((_ is Cons!4887) (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))) b!524679))

(declare-fun m!770761 () Bool)

(assert (=> setNonEmpty!2380 m!770761))

(declare-fun m!770763 () Bool)

(assert (=> b!524679 m!770763))

(declare-fun setElem!2381 () Context!294)

(declare-fun tp!165024 () Bool)

(declare-fun setRes!2381 () Bool)

(declare-fun setNonEmpty!2381 () Bool)

(declare-fun e!314997 () Bool)

(assert (=> setNonEmpty!2381 (= setRes!2381 (and tp!165024 (inv!6158 setElem!2381) e!314997))))

(declare-fun setRest!2381 () (InoxSet Context!294))

(assert (=> setNonEmpty!2381 (= (_1!3238 (_1!3239 (h!10287 (zeroValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2381 true) setRest!2381))))

(declare-fun b!524680 () Bool)

(declare-fun e!314996 () Bool)

(declare-fun tp!165023 () Bool)

(assert (=> b!524680 (= e!314996 (and setRes!2381 tp!165023))))

(declare-fun condSetEmpty!2381 () Bool)

(assert (=> b!524680 (= condSetEmpty!2381 (= (_1!3238 (_1!3239 (h!10287 (zeroValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524681 () Bool)

(declare-fun tp!165025 () Bool)

(assert (=> b!524681 (= e!314997 tp!165025)))

(assert (=> b!524463 (= tp!164824 e!314996)))

(declare-fun setIsEmpty!2381 () Bool)

(assert (=> setIsEmpty!2381 setRes!2381))

(assert (= (and b!524680 condSetEmpty!2381) setIsEmpty!2381))

(assert (= (and b!524680 (not condSetEmpty!2381)) setNonEmpty!2381))

(assert (= setNonEmpty!2381 b!524681))

(assert (= (and b!524463 ((_ is Cons!4886) (zeroValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56)))))))) b!524680))

(declare-fun m!770765 () Bool)

(assert (=> setNonEmpty!2381 m!770765))

(declare-fun setElem!2382 () Context!294)

(declare-fun tp!165027 () Bool)

(declare-fun setRes!2382 () Bool)

(declare-fun setNonEmpty!2382 () Bool)

(declare-fun e!314999 () Bool)

(assert (=> setNonEmpty!2382 (= setRes!2382 (and tp!165027 (inv!6158 setElem!2382) e!314999))))

(declare-fun setRest!2382 () (InoxSet Context!294))

(assert (=> setNonEmpty!2382 (= (_1!3238 (_1!3239 (h!10287 (minValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2382 true) setRest!2382))))

(declare-fun b!524682 () Bool)

(declare-fun e!314998 () Bool)

(declare-fun tp!165026 () Bool)

(assert (=> b!524682 (= e!314998 (and setRes!2382 tp!165026))))

(declare-fun condSetEmpty!2382 () Bool)

(assert (=> b!524682 (= condSetEmpty!2382 (= (_1!3238 (_1!3239 (h!10287 (minValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524683 () Bool)

(declare-fun tp!165028 () Bool)

(assert (=> b!524683 (= e!314999 tp!165028)))

(assert (=> b!524463 (= tp!164826 e!314998)))

(declare-fun setIsEmpty!2382 () Bool)

(assert (=> setIsEmpty!2382 setRes!2382))

(assert (= (and b!524682 condSetEmpty!2382) setIsEmpty!2382))

(assert (= (and b!524682 (not condSetEmpty!2382)) setNonEmpty!2382))

(assert (= setNonEmpty!2382 b!524683))

(assert (= (and b!524463 ((_ is Cons!4886) (minValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56)))))))) b!524682))

(declare-fun m!770767 () Bool)

(assert (=> setNonEmpty!2382 m!770767))

(check-sat (not setNonEmpty!2368) (not setNonEmpty!2378) (not b!524602) (not mapNonEmpty!2207) (not setNonEmpty!2352) (not b!524649) (not setNonEmpty!2351) b_and!51313 (not mapNonEmpty!2201) (not b!524594) (not b!524592) (not b!524599) (not b!524506) b_and!51327 (not b!524493) (not b!524639) (not b_next!13851) (not b!524598) (not b!524631) (not d!187083) (not b!524593) (not b_next!13843) (not d!187041) (not b_next!13849) (not setNonEmpty!2356) (not setNonEmpty!2360) (not b!524523) (not b!524567) (not b!524492) (not b!524675) (not b!524568) (not b!524494) b_and!51311 (not b_next!13845) (not b!524633) (not d!187071) (not b!524676) (not d!187037) (not b!524512) (not b!524669) (not b!524683) (not b!524504) (not b!524596) b_and!51325 (not b!524522) (not b!524673) (not setNonEmpty!2361) (not d!187063) b_and!51323 (not b!524509) (not b!524530) (not setNonEmpty!2380) (not b!524597) (not b!524665) (not b!524558) (not b!524536) (not b!524635) (not b!524615) (not b!524580) (not d!187061) (not b!524533) (not mapNonEmpty!2204) (not setNonEmpty!2367) (not b!524678) (not b!524650) (not b!524601) (not b!524634) (not b!524507) (not b!524637) (not d!187049) (not b!524570) (not setNonEmpty!2377) (not b!524614) (not b!524616) (not b!524547) (not b!524636) b_and!51317 (not b!524527) (not b_next!13847) (not setNonEmpty!2379) (not setNonEmpty!2376) (not setNonEmpty!2371) (not b!524459) (not d!187067) (not b_next!13841) (not b!524581) tp_is_empty!2793 (not b!524668) (not b!524679) (not setNonEmpty!2355) (not d!187091) (not d!187073) (not b!524557) (not b!524681) (not d!187069) (not d!187045) (not b!524595) (not b!524495) (not b!524591) (not b!524667) (not setNonEmpty!2381) (not b!524600) (not d!187065) (not b_next!13833) b_and!51329 b_and!51315 (not b!524632) (not b!524682) (not b!524674) (not d!187039) b_and!51319 (not b!524549) (not b!524670) (not b!524680) (not b!524497) (not setNonEmpty!2359) (not b!524582) (not b_next!13835) (not setNonEmpty!2366) (not b!524677) (not b!524671) (not b!524672) (not b!524550) (not b!524491) (not b!524648) (not b!524666) b_and!51321 (not b!524638) (not b_next!13837) (not b!524460) (not b!524571) (not b_next!13839) (not b!524548) (not setNonEmpty!2382))
(check-sat b_and!51313 b_and!51327 (not b_next!13849) b_and!51311 (not b_next!13845) b_and!51325 b_and!51323 b_and!51317 (not b_next!13847) (not b_next!13841) (not b_next!13833) b_and!51319 (not b_next!13835) b_and!51321 (not b_next!13851) (not b_next!13843) b_and!51329 b_and!51315 (not b_next!13837) (not b_next!13839))
(get-model)

(declare-fun d!187093 () Bool)

(declare-fun lambda!15142 () Int)

(declare-fun forall!1480 (List!4893 Int) Bool)

(assert (=> d!187093 (= (inv!6158 setElem!2367) (forall!1480 (exprs!647 setElem!2367) lambda!15142))))

(declare-fun bs!65081 () Bool)

(assert (= bs!65081 d!187093))

(declare-fun m!770769 () Bool)

(assert (=> bs!65081 m!770769))

(assert (=> setNonEmpty!2367 d!187093))

(declare-fun d!187095 () Bool)

(assert (=> d!187095 true))

(declare-fun lt!217505 () Bool)

(declare-fun rulesValidInductive!295 (LexerInterface!770 List!4900) Bool)

(assert (=> d!187095 (= lt!217505 (rulesValidInductive!295 thiss!12147 rules!1345))))

(declare-fun lambda!15145 () Int)

(declare-fun forall!1481 (List!4900 Int) Bool)

(assert (=> d!187095 (= lt!217505 (forall!1481 rules!1345 lambda!15145))))

(assert (=> d!187095 (= (rulesValid!319 thiss!12147 rules!1345) lt!217505)))

(declare-fun bs!65082 () Bool)

(assert (= bs!65082 d!187095))

(declare-fun m!770771 () Bool)

(assert (=> bs!65082 m!770771))

(declare-fun m!770773 () Bool)

(assert (=> bs!65082 m!770773))

(assert (=> d!187069 d!187095))

(declare-fun bs!65083 () Bool)

(declare-fun d!187097 () Bool)

(assert (= bs!65083 (and d!187097 d!187093)))

(declare-fun lambda!15146 () Int)

(assert (=> bs!65083 (= lambda!15146 lambda!15142)))

(assert (=> d!187097 (= (inv!6158 setElem!2366) (forall!1480 (exprs!647 setElem!2366) lambda!15146))))

(declare-fun bs!65084 () Bool)

(assert (= bs!65084 d!187097))

(declare-fun m!770775 () Bool)

(assert (=> bs!65084 m!770775))

(assert (=> setNonEmpty!2366 d!187097))

(declare-fun d!187099 () Bool)

(assert (=> d!187099 (= (list!2046 (_2!3242 lt!217497)) (list!2049 (c!100889 (_2!3242 lt!217497))))))

(declare-fun bs!65085 () Bool)

(assert (= bs!65085 d!187099))

(declare-fun m!770777 () Bool)

(assert (=> bs!65085 m!770777))

(assert (=> b!524492 d!187099))

(declare-fun b!524696 () Bool)

(declare-fun e!315007 () tuple2!6024)

(assert (=> b!524696 (= e!315007 (tuple2!6025 Nil!4889 (list!2046 (BalanceConc!3189 Empty!1590))))))

(declare-fun b!524697 () Bool)

(declare-fun e!315006 () Bool)

(declare-fun lt!217514 () tuple2!6024)

(assert (=> b!524697 (= e!315006 (= (_2!3244 lt!217514) (list!2046 (BalanceConc!3189 Empty!1590))))))

(declare-fun b!524698 () Bool)

(declare-datatypes ((tuple2!6026 0))(
  ( (tuple2!6027 (_1!3245 Token!1506) (_2!3245 List!4895)) )
))
(declare-datatypes ((Option!1245 0))(
  ( (None!1244) (Some!1244 (v!15972 tuple2!6026)) )
))
(declare-fun lt!217512 () Option!1245)

(declare-fun lt!217513 () tuple2!6024)

(assert (=> b!524698 (= e!315007 (tuple2!6025 (Cons!4889 (_1!3245 (v!15972 lt!217512)) (_1!3244 lt!217513)) (_2!3244 lt!217513)))))

(assert (=> b!524698 (= lt!217513 (lexList!303 thiss!12147 rules!1345 (_2!3245 (v!15972 lt!217512))))))

(declare-fun b!524699 () Bool)

(declare-fun e!315008 () Bool)

(declare-fun isEmpty!3593 (List!4899) Bool)

(assert (=> b!524699 (= e!315008 (not (isEmpty!3593 (_1!3244 lt!217514))))))

(declare-fun b!524700 () Bool)

(assert (=> b!524700 (= e!315006 e!315008)))

(declare-fun res!222247 () Bool)

(assert (=> b!524700 (= res!222247 (< (size!3990 (_2!3244 lt!217514)) (size!3990 (list!2046 (BalanceConc!3189 Empty!1590)))))))

(assert (=> b!524700 (=> (not res!222247) (not e!315008))))

(declare-fun d!187101 () Bool)

(assert (=> d!187101 e!315006))

(declare-fun c!100910 () Bool)

(declare-fun size!3991 (List!4899) Int)

(assert (=> d!187101 (= c!100910 (> (size!3991 (_1!3244 lt!217514)) 0))))

(assert (=> d!187101 (= lt!217514 e!315007)))

(declare-fun c!100909 () Bool)

(assert (=> d!187101 (= c!100909 ((_ is Some!1244) lt!217512))))

(declare-fun maxPrefix!481 (LexerInterface!770 List!4900 List!4895) Option!1245)

(assert (=> d!187101 (= lt!217512 (maxPrefix!481 thiss!12147 rules!1345 (list!2046 (BalanceConc!3189 Empty!1590))))))

(assert (=> d!187101 (= (lexList!303 thiss!12147 rules!1345 (list!2046 (BalanceConc!3189 Empty!1590))) lt!217514)))

(assert (= (and d!187101 c!100909) b!524698))

(assert (= (and d!187101 (not c!100909)) b!524696))

(assert (= (and d!187101 c!100910) b!524700))

(assert (= (and d!187101 (not c!100910)) b!524697))

(assert (= (and b!524700 res!222247) b!524699))

(declare-fun m!770779 () Bool)

(assert (=> b!524698 m!770779))

(declare-fun m!770781 () Bool)

(assert (=> b!524699 m!770781))

(declare-fun m!770783 () Bool)

(assert (=> b!524700 m!770783))

(assert (=> b!524700 m!770599))

(declare-fun m!770785 () Bool)

(assert (=> b!524700 m!770785))

(declare-fun m!770787 () Bool)

(assert (=> d!187101 m!770787))

(assert (=> d!187101 m!770599))

(declare-fun m!770789 () Bool)

(assert (=> d!187101 m!770789))

(assert (=> b!524492 d!187101))

(assert (=> b!524492 d!187067))

(declare-fun bs!65086 () Bool)

(declare-fun d!187103 () Bool)

(assert (= bs!65086 (and d!187103 d!187093)))

(declare-fun lambda!15147 () Int)

(assert (=> bs!65086 (= lambda!15147 lambda!15142)))

(declare-fun bs!65087 () Bool)

(assert (= bs!65087 (and d!187103 d!187097)))

(assert (=> bs!65087 (= lambda!15147 lambda!15146)))

(assert (=> d!187103 (= (inv!6158 setElem!2351) (forall!1480 (exprs!647 setElem!2351) lambda!15147))))

(declare-fun bs!65088 () Bool)

(assert (= bs!65088 d!187103))

(declare-fun m!770791 () Bool)

(assert (=> bs!65088 m!770791))

(assert (=> setNonEmpty!2352 d!187103))

(declare-fun d!187105 () Bool)

(assert (=> d!187105 (= (list!2047 (_1!3242 lt!217497)) (list!2048 (c!100890 (_1!3242 lt!217497))))))

(declare-fun bs!65089 () Bool)

(assert (= bs!65089 d!187105))

(declare-fun m!770793 () Bool)

(assert (=> bs!65089 m!770793))

(assert (=> b!524494 d!187105))

(assert (=> b!524494 d!187101))

(assert (=> b!524494 d!187067))

(declare-fun bs!65090 () Bool)

(declare-fun d!187107 () Bool)

(assert (= bs!65090 (and d!187107 d!187093)))

(declare-fun lambda!15148 () Int)

(assert (=> bs!65090 (= lambda!15148 lambda!15142)))

(declare-fun bs!65091 () Bool)

(assert (= bs!65091 (and d!187107 d!187097)))

(assert (=> bs!65091 (= lambda!15148 lambda!15146)))

(declare-fun bs!65092 () Bool)

(assert (= bs!65092 (and d!187107 d!187103)))

(assert (=> bs!65092 (= lambda!15148 lambda!15147)))

(assert (=> d!187107 (= (inv!6158 setElem!2359) (forall!1480 (exprs!647 setElem!2359) lambda!15148))))

(declare-fun bs!65093 () Bool)

(assert (= bs!65093 d!187107))

(declare-fun m!770795 () Bool)

(assert (=> bs!65093 m!770795))

(assert (=> setNonEmpty!2359 d!187107))

(declare-fun bs!65094 () Bool)

(declare-fun d!187109 () Bool)

(assert (= bs!65094 (and d!187109 d!187093)))

(declare-fun lambda!15149 () Int)

(assert (=> bs!65094 (= lambda!15149 lambda!15142)))

(declare-fun bs!65095 () Bool)

(assert (= bs!65095 (and d!187109 d!187097)))

(assert (=> bs!65095 (= lambda!15149 lambda!15146)))

(declare-fun bs!65096 () Bool)

(assert (= bs!65096 (and d!187109 d!187103)))

(assert (=> bs!65096 (= lambda!15149 lambda!15147)))

(declare-fun bs!65097 () Bool)

(assert (= bs!65097 (and d!187109 d!187107)))

(assert (=> bs!65097 (= lambda!15149 lambda!15148)))

(assert (=> d!187109 (= (inv!6158 setElem!2360) (forall!1480 (exprs!647 setElem!2360) lambda!15149))))

(declare-fun bs!65098 () Bool)

(assert (= bs!65098 d!187109))

(declare-fun m!770797 () Bool)

(assert (=> bs!65098 m!770797))

(assert (=> setNonEmpty!2360 d!187109))

(declare-fun bs!65099 () Bool)

(declare-fun d!187111 () Bool)

(assert (= bs!65099 (and d!187111 d!187097)))

(declare-fun lambda!15150 () Int)

(assert (=> bs!65099 (= lambda!15150 lambda!15146)))

(declare-fun bs!65100 () Bool)

(assert (= bs!65100 (and d!187111 d!187093)))

(assert (=> bs!65100 (= lambda!15150 lambda!15142)))

(declare-fun bs!65101 () Bool)

(assert (= bs!65101 (and d!187111 d!187107)))

(assert (=> bs!65101 (= lambda!15150 lambda!15148)))

(declare-fun bs!65102 () Bool)

(assert (= bs!65102 (and d!187111 d!187103)))

(assert (=> bs!65102 (= lambda!15150 lambda!15147)))

(declare-fun bs!65103 () Bool)

(assert (= bs!65103 (and d!187111 d!187109)))

(assert (=> bs!65103 (= lambda!15150 lambda!15149)))

(assert (=> d!187111 (= (inv!6158 setElem!2361) (forall!1480 (exprs!647 setElem!2361) lambda!15150))))

(declare-fun bs!65104 () Bool)

(assert (= bs!65104 d!187111))

(declare-fun m!770799 () Bool)

(assert (=> bs!65104 m!770799))

(assert (=> setNonEmpty!2361 d!187111))

(declare-fun bs!65105 () Bool)

(declare-fun d!187113 () Bool)

(assert (= bs!65105 (and d!187113 d!187097)))

(declare-fun lambda!15151 () Int)

(assert (=> bs!65105 (= lambda!15151 lambda!15146)))

(declare-fun bs!65106 () Bool)

(assert (= bs!65106 (and d!187113 d!187111)))

(assert (=> bs!65106 (= lambda!15151 lambda!15150)))

(declare-fun bs!65107 () Bool)

(assert (= bs!65107 (and d!187113 d!187093)))

(assert (=> bs!65107 (= lambda!15151 lambda!15142)))

(declare-fun bs!65108 () Bool)

(assert (= bs!65108 (and d!187113 d!187107)))

(assert (=> bs!65108 (= lambda!15151 lambda!15148)))

(declare-fun bs!65109 () Bool)

(assert (= bs!65109 (and d!187113 d!187103)))

(assert (=> bs!65109 (= lambda!15151 lambda!15147)))

(declare-fun bs!65110 () Bool)

(assert (= bs!65110 (and d!187113 d!187109)))

(assert (=> bs!65110 (= lambda!15151 lambda!15149)))

(assert (=> d!187113 (= (inv!6158 setElem!2376) (forall!1480 (exprs!647 setElem!2376) lambda!15151))))

(declare-fun bs!65111 () Bool)

(assert (= bs!65111 d!187113))

(declare-fun m!770801 () Bool)

(assert (=> bs!65111 m!770801))

(assert (=> setNonEmpty!2376 d!187113))

(declare-fun d!187115 () Bool)

(assert (=> d!187115 (= (inv!6159 (xs!4225 (c!100889 input!747))) (<= (size!3990 (innerList!1648 (xs!4225 (c!100889 input!747)))) 2147483647))))

(declare-fun bs!65112 () Bool)

(assert (= bs!65112 d!187115))

(declare-fun m!770803 () Bool)

(assert (=> bs!65112 m!770803))

(assert (=> b!524581 d!187115))

(assert (=> b!524460 d!187057))

(declare-fun b!524710 () Bool)

(declare-fun e!315013 () List!4899)

(declare-fun e!315014 () List!4899)

(assert (=> b!524710 (= e!315013 e!315014)))

(declare-fun c!100916 () Bool)

(assert (=> b!524710 (= c!100916 ((_ is Leaf!2536) (c!100890 (BalanceConc!3191 Empty!1591))))))

(declare-fun d!187117 () Bool)

(declare-fun c!100915 () Bool)

(assert (=> d!187117 (= c!100915 ((_ is Empty!1591) (c!100890 (BalanceConc!3191 Empty!1591))))))

(assert (=> d!187117 (= (list!2048 (c!100890 (BalanceConc!3191 Empty!1591))) e!315013)))

(declare-fun b!524711 () Bool)

(declare-fun list!2050 (IArray!3183) List!4899)

(assert (=> b!524711 (= e!315014 (list!2050 (xs!4226 (c!100890 (BalanceConc!3191 Empty!1591)))))))

(declare-fun b!524709 () Bool)

(assert (=> b!524709 (= e!315013 Nil!4889)))

(declare-fun b!524712 () Bool)

(declare-fun ++!1371 (List!4899 List!4899) List!4899)

(assert (=> b!524712 (= e!315014 (++!1371 (list!2048 (left!4193 (c!100890 (BalanceConc!3191 Empty!1591)))) (list!2048 (right!4523 (c!100890 (BalanceConc!3191 Empty!1591))))))))

(assert (= (and d!187117 c!100915) b!524709))

(assert (= (and d!187117 (not c!100915)) b!524710))

(assert (= (and b!524710 c!100916) b!524711))

(assert (= (and b!524710 (not c!100916)) b!524712))

(declare-fun m!770805 () Bool)

(assert (=> b!524711 m!770805))

(declare-fun m!770807 () Bool)

(assert (=> b!524712 m!770807))

(declare-fun m!770809 () Bool)

(assert (=> b!524712 m!770809))

(assert (=> b!524712 m!770807))

(assert (=> b!524712 m!770809))

(declare-fun m!770811 () Bool)

(assert (=> b!524712 m!770811))

(assert (=> d!187039 d!187117))

(declare-fun bs!65113 () Bool)

(declare-fun d!187119 () Bool)

(assert (= bs!65113 (and d!187119 d!187097)))

(declare-fun lambda!15152 () Int)

(assert (=> bs!65113 (= lambda!15152 lambda!15146)))

(declare-fun bs!65114 () Bool)

(assert (= bs!65114 (and d!187119 d!187111)))

(assert (=> bs!65114 (= lambda!15152 lambda!15150)))

(declare-fun bs!65115 () Bool)

(assert (= bs!65115 (and d!187119 d!187093)))

(assert (=> bs!65115 (= lambda!15152 lambda!15142)))

(declare-fun bs!65116 () Bool)

(assert (= bs!65116 (and d!187119 d!187107)))

(assert (=> bs!65116 (= lambda!15152 lambda!15148)))

(declare-fun bs!65117 () Bool)

(assert (= bs!65117 (and d!187119 d!187113)))

(assert (=> bs!65117 (= lambda!15152 lambda!15151)))

(declare-fun bs!65118 () Bool)

(assert (= bs!65118 (and d!187119 d!187103)))

(assert (=> bs!65118 (= lambda!15152 lambda!15147)))

(declare-fun bs!65119 () Bool)

(assert (= bs!65119 (and d!187119 d!187109)))

(assert (=> bs!65119 (= lambda!15152 lambda!15149)))

(assert (=> d!187119 (= (inv!6158 (_1!3240 (_1!3241 (h!10288 mapDefault!2197)))) (forall!1480 (exprs!647 (_1!3240 (_1!3241 (h!10288 mapDefault!2197)))) lambda!15152))))

(declare-fun bs!65120 () Bool)

(assert (= bs!65120 d!187119))

(declare-fun m!770813 () Bool)

(assert (=> bs!65120 m!770813))

(assert (=> b!524650 d!187119))

(declare-fun b!524718 () Bool)

(assert (=> b!524718 true))

(declare-fun d!187121 () Bool)

(declare-fun res!222252 () Bool)

(declare-fun e!315017 () Bool)

(assert (=> d!187121 (=> (not res!222252) (not e!315017))))

(declare-fun valid!545 (MutableMap!536) Bool)

(assert (=> d!187121 (= res!222252 (valid!545 (cache!923 cacheFurthestNullable!56)))))

(assert (=> d!187121 (= (validCacheMapFurthestNullable!25 (cache!923 cacheFurthestNullable!56) (totalInput!1737 cacheFurthestNullable!56)) e!315017)))

(declare-fun b!524717 () Bool)

(declare-fun res!222253 () Bool)

(assert (=> b!524717 (=> (not res!222253) (not e!315017))))

(declare-fun invariantList!95 (List!4896) Bool)

(declare-datatypes ((ListMap!239 0))(
  ( (ListMap!240 (toList!456 List!4896)) )
))
(declare-fun map!1125 (MutableMap!536) ListMap!239)

(assert (=> b!524717 (= res!222253 (invariantList!95 (toList!456 (map!1125 (cache!923 cacheFurthestNullable!56)))))))

(declare-fun lambda!15155 () Int)

(declare-fun forall!1482 (List!4896 Int) Bool)

(assert (=> b!524718 (= e!315017 (forall!1482 (toList!456 (map!1125 (cache!923 cacheFurthestNullable!56))) lambda!15155))))

(assert (= (and d!187121 res!222252) b!524717))

(assert (= (and b!524717 res!222253) b!524718))

(declare-fun m!770816 () Bool)

(assert (=> d!187121 m!770816))

(declare-fun m!770818 () Bool)

(assert (=> b!524717 m!770818))

(declare-fun m!770820 () Bool)

(assert (=> b!524717 m!770820))

(assert (=> b!524718 m!770818))

(declare-fun m!770822 () Bool)

(assert (=> b!524718 m!770822))

(assert (=> b!524533 d!187121))

(declare-fun b!524733 () Bool)

(declare-fun e!315022 () Bool)

(declare-fun isEmpty!3594 (Conc!1590) Bool)

(assert (=> b!524733 (= e!315022 (not (isEmpty!3594 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))))))

(declare-fun b!524734 () Bool)

(declare-fun res!222269 () Bool)

(assert (=> b!524734 (=> (not res!222269) (not e!315022))))

(declare-fun height!248 (Conc!1590) Int)

(assert (=> b!524734 (= res!222269 (<= (- (height!248 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) (height!248 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) 1))))

(declare-fun b!524735 () Bool)

(declare-fun res!222270 () Bool)

(assert (=> b!524735 (=> (not res!222270) (not e!315022))))

(assert (=> b!524735 (= res!222270 (not (isEmpty!3594 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))))))

(declare-fun b!524736 () Bool)

(declare-fun res!222271 () Bool)

(assert (=> b!524736 (=> (not res!222271) (not e!315022))))

(assert (=> b!524736 (= res!222271 (isBalanced!492 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(declare-fun b!524737 () Bool)

(declare-fun res!222266 () Bool)

(assert (=> b!524737 (=> (not res!222266) (not e!315022))))

(assert (=> b!524737 (= res!222266 (isBalanced!492 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(declare-fun b!524738 () Bool)

(declare-fun e!315023 () Bool)

(assert (=> b!524738 (= e!315023 e!315022)))

(declare-fun res!222268 () Bool)

(assert (=> b!524738 (=> (not res!222268) (not e!315022))))

(assert (=> b!524738 (= res!222268 (<= (- 1) (- (height!248 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) (height!248 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))))

(declare-fun d!187123 () Bool)

(declare-fun res!222267 () Bool)

(assert (=> d!187123 (=> res!222267 e!315023)))

(assert (=> d!187123 (= res!222267 (not ((_ is Node!1590) (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(assert (=> d!187123 (= (isBalanced!492 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) e!315023)))

(assert (= (and d!187123 (not res!222267)) b!524738))

(assert (= (and b!524738 res!222268) b!524734))

(assert (= (and b!524734 res!222269) b!524736))

(assert (= (and b!524736 res!222271) b!524737))

(assert (= (and b!524737 res!222266) b!524735))

(assert (= (and b!524735 res!222270) b!524733))

(declare-fun m!770824 () Bool)

(assert (=> b!524738 m!770824))

(declare-fun m!770826 () Bool)

(assert (=> b!524738 m!770826))

(declare-fun m!770828 () Bool)

(assert (=> b!524735 m!770828))

(declare-fun m!770830 () Bool)

(assert (=> b!524733 m!770830))

(declare-fun m!770832 () Bool)

(assert (=> b!524736 m!770832))

(declare-fun m!770834 () Bool)

(assert (=> b!524737 m!770834))

(assert (=> b!524734 m!770824))

(assert (=> b!524734 m!770826))

(assert (=> d!187071 d!187123))

(declare-fun bs!65121 () Bool)

(declare-fun d!187125 () Bool)

(assert (= bs!65121 (and d!187125 d!187097)))

(declare-fun lambda!15156 () Int)

(assert (=> bs!65121 (= lambda!15156 lambda!15146)))

(declare-fun bs!65122 () Bool)

(assert (= bs!65122 (and d!187125 d!187111)))

(assert (=> bs!65122 (= lambda!15156 lambda!15150)))

(declare-fun bs!65123 () Bool)

(assert (= bs!65123 (and d!187125 d!187093)))

(assert (=> bs!65123 (= lambda!15156 lambda!15142)))

(declare-fun bs!65124 () Bool)

(assert (= bs!65124 (and d!187125 d!187107)))

(assert (=> bs!65124 (= lambda!15156 lambda!15148)))

(declare-fun bs!65125 () Bool)

(assert (= bs!65125 (and d!187125 d!187113)))

(assert (=> bs!65125 (= lambda!15156 lambda!15151)))

(declare-fun bs!65126 () Bool)

(assert (= bs!65126 (and d!187125 d!187103)))

(assert (=> bs!65126 (= lambda!15156 lambda!15147)))

(declare-fun bs!65127 () Bool)

(assert (= bs!65127 (and d!187125 d!187119)))

(assert (=> bs!65127 (= lambda!15156 lambda!15152)))

(declare-fun bs!65128 () Bool)

(assert (= bs!65128 (and d!187125 d!187109)))

(assert (=> bs!65128 (= lambda!15156 lambda!15149)))

(assert (=> d!187125 (= (inv!6158 (_1!3240 (_1!3241 (h!10288 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))))) (forall!1480 (exprs!647 (_1!3240 (_1!3241 (h!10288 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))))) lambda!15156))))

(declare-fun bs!65129 () Bool)

(assert (= bs!65129 d!187125))

(declare-fun m!770836 () Bool)

(assert (=> bs!65129 m!770836))

(assert (=> b!524676 d!187125))

(declare-fun b!524748 () Bool)

(declare-fun e!315028 () List!4895)

(declare-fun e!315029 () List!4895)

(assert (=> b!524748 (= e!315028 e!315029)))

(declare-fun c!100922 () Bool)

(assert (=> b!524748 (= c!100922 ((_ is Leaf!2535) (c!100889 input!747)))))

(declare-fun d!187127 () Bool)

(declare-fun c!100921 () Bool)

(assert (=> d!187127 (= c!100921 ((_ is Empty!1590) (c!100889 input!747)))))

(assert (=> d!187127 (= (list!2049 (c!100889 input!747)) e!315028)))

(declare-fun b!524747 () Bool)

(assert (=> b!524747 (= e!315028 Nil!4885)))

(declare-fun b!524749 () Bool)

(declare-fun list!2051 (IArray!3181) List!4895)

(assert (=> b!524749 (= e!315029 (list!2051 (xs!4225 (c!100889 input!747))))))

(declare-fun b!524750 () Bool)

(assert (=> b!524750 (= e!315029 (++!1370 (list!2049 (left!4192 (c!100889 input!747))) (list!2049 (right!4522 (c!100889 input!747)))))))

(assert (= (and d!187127 c!100921) b!524747))

(assert (= (and d!187127 (not c!100921)) b!524748))

(assert (= (and b!524748 c!100922) b!524749))

(assert (= (and b!524748 (not c!100922)) b!524750))

(declare-fun m!770838 () Bool)

(assert (=> b!524749 m!770838))

(declare-fun m!770840 () Bool)

(assert (=> b!524750 m!770840))

(declare-fun m!770842 () Bool)

(assert (=> b!524750 m!770842))

(assert (=> b!524750 m!770840))

(assert (=> b!524750 m!770842))

(declare-fun m!770844 () Bool)

(assert (=> b!524750 m!770844))

(assert (=> d!187065 d!187127))

(declare-fun b!524752 () Bool)

(declare-fun e!315030 () List!4899)

(declare-fun e!315031 () List!4899)

(assert (=> b!524752 (= e!315030 e!315031)))

(declare-fun c!100924 () Bool)

(assert (=> b!524752 (= c!100924 ((_ is Leaf!2536) (c!100890 (_1!3242 lt!217485))))))

(declare-fun d!187129 () Bool)

(declare-fun c!100923 () Bool)

(assert (=> d!187129 (= c!100923 ((_ is Empty!1591) (c!100890 (_1!3242 lt!217485))))))

(assert (=> d!187129 (= (list!2048 (c!100890 (_1!3242 lt!217485))) e!315030)))

(declare-fun b!524753 () Bool)

(assert (=> b!524753 (= e!315031 (list!2050 (xs!4226 (c!100890 (_1!3242 lt!217485)))))))

(declare-fun b!524751 () Bool)

(assert (=> b!524751 (= e!315030 Nil!4889)))

(declare-fun b!524754 () Bool)

(assert (=> b!524754 (= e!315031 (++!1371 (list!2048 (left!4193 (c!100890 (_1!3242 lt!217485)))) (list!2048 (right!4523 (c!100890 (_1!3242 lt!217485))))))))

(assert (= (and d!187129 c!100923) b!524751))

(assert (= (and d!187129 (not c!100923)) b!524752))

(assert (= (and b!524752 c!100924) b!524753))

(assert (= (and b!524752 (not c!100924)) b!524754))

(declare-fun m!770846 () Bool)

(assert (=> b!524753 m!770846))

(declare-fun m!770848 () Bool)

(assert (=> b!524754 m!770848))

(declare-fun m!770850 () Bool)

(assert (=> b!524754 m!770850))

(assert (=> b!524754 m!770848))

(assert (=> b!524754 m!770850))

(declare-fun m!770852 () Bool)

(assert (=> b!524754 m!770852))

(assert (=> d!187037 d!187129))

(declare-fun bs!65130 () Bool)

(declare-fun d!187131 () Bool)

(assert (= bs!65130 (and d!187131 d!187125)))

(declare-fun lambda!15157 () Int)

(assert (=> bs!65130 (= lambda!15157 lambda!15156)))

(declare-fun bs!65131 () Bool)

(assert (= bs!65131 (and d!187131 d!187097)))

(assert (=> bs!65131 (= lambda!15157 lambda!15146)))

(declare-fun bs!65132 () Bool)

(assert (= bs!65132 (and d!187131 d!187111)))

(assert (=> bs!65132 (= lambda!15157 lambda!15150)))

(declare-fun bs!65133 () Bool)

(assert (= bs!65133 (and d!187131 d!187093)))

(assert (=> bs!65133 (= lambda!15157 lambda!15142)))

(declare-fun bs!65134 () Bool)

(assert (= bs!65134 (and d!187131 d!187107)))

(assert (=> bs!65134 (= lambda!15157 lambda!15148)))

(declare-fun bs!65135 () Bool)

(assert (= bs!65135 (and d!187131 d!187113)))

(assert (=> bs!65135 (= lambda!15157 lambda!15151)))

(declare-fun bs!65136 () Bool)

(assert (= bs!65136 (and d!187131 d!187103)))

(assert (=> bs!65136 (= lambda!15157 lambda!15147)))

(declare-fun bs!65137 () Bool)

(assert (= bs!65137 (and d!187131 d!187119)))

(assert (=> bs!65137 (= lambda!15157 lambda!15152)))

(declare-fun bs!65138 () Bool)

(assert (= bs!65138 (and d!187131 d!187109)))

(assert (=> bs!65138 (= lambda!15157 lambda!15149)))

(assert (=> d!187131 (= (inv!6158 setElem!2378) (forall!1480 (exprs!647 setElem!2378) lambda!15157))))

(declare-fun bs!65139 () Bool)

(assert (= bs!65139 d!187131))

(declare-fun m!770854 () Bool)

(assert (=> bs!65139 m!770854))

(assert (=> setNonEmpty!2378 d!187131))

(declare-fun bs!65140 () Bool)

(declare-fun d!187133 () Bool)

(assert (= bs!65140 (and d!187133 d!187125)))

(declare-fun lambda!15158 () Int)

(assert (=> bs!65140 (= lambda!15158 lambda!15156)))

(declare-fun bs!65141 () Bool)

(assert (= bs!65141 (and d!187133 d!187097)))

(assert (=> bs!65141 (= lambda!15158 lambda!15146)))

(declare-fun bs!65142 () Bool)

(assert (= bs!65142 (and d!187133 d!187093)))

(assert (=> bs!65142 (= lambda!15158 lambda!15142)))

(declare-fun bs!65143 () Bool)

(assert (= bs!65143 (and d!187133 d!187107)))

(assert (=> bs!65143 (= lambda!15158 lambda!15148)))

(declare-fun bs!65144 () Bool)

(assert (= bs!65144 (and d!187133 d!187113)))

(assert (=> bs!65144 (= lambda!15158 lambda!15151)))

(declare-fun bs!65145 () Bool)

(assert (= bs!65145 (and d!187133 d!187103)))

(assert (=> bs!65145 (= lambda!15158 lambda!15147)))

(declare-fun bs!65146 () Bool)

(assert (= bs!65146 (and d!187133 d!187119)))

(assert (=> bs!65146 (= lambda!15158 lambda!15152)))

(declare-fun bs!65147 () Bool)

(assert (= bs!65147 (and d!187133 d!187109)))

(assert (=> bs!65147 (= lambda!15158 lambda!15149)))

(declare-fun bs!65148 () Bool)

(assert (= bs!65148 (and d!187133 d!187111)))

(assert (=> bs!65148 (= lambda!15158 lambda!15150)))

(declare-fun bs!65149 () Bool)

(assert (= bs!65149 (and d!187133 d!187131)))

(assert (=> bs!65149 (= lambda!15158 lambda!15157)))

(assert (=> d!187133 (= (inv!6158 setElem!2355) (forall!1480 (exprs!647 setElem!2355) lambda!15158))))

(declare-fun bs!65150 () Bool)

(assert (= bs!65150 d!187133))

(declare-fun m!770856 () Bool)

(assert (=> bs!65150 m!770856))

(assert (=> setNonEmpty!2355 d!187133))

(declare-fun b!524756 () Bool)

(declare-fun e!315032 () List!4895)

(declare-fun e!315033 () List!4895)

(assert (=> b!524756 (= e!315032 e!315033)))

(declare-fun c!100926 () Bool)

(assert (=> b!524756 (= c!100926 ((_ is Leaf!2535) (c!100889 (_2!3242 lt!217485))))))

(declare-fun d!187135 () Bool)

(declare-fun c!100925 () Bool)

(assert (=> d!187135 (= c!100925 ((_ is Empty!1590) (c!100889 (_2!3242 lt!217485))))))

(assert (=> d!187135 (= (list!2049 (c!100889 (_2!3242 lt!217485))) e!315032)))

(declare-fun b!524755 () Bool)

(assert (=> b!524755 (= e!315032 Nil!4885)))

(declare-fun b!524757 () Bool)

(assert (=> b!524757 (= e!315033 (list!2051 (xs!4225 (c!100889 (_2!3242 lt!217485)))))))

(declare-fun b!524758 () Bool)

(assert (=> b!524758 (= e!315033 (++!1370 (list!2049 (left!4192 (c!100889 (_2!3242 lt!217485)))) (list!2049 (right!4522 (c!100889 (_2!3242 lt!217485))))))))

(assert (= (and d!187135 c!100925) b!524755))

(assert (= (and d!187135 (not c!100925)) b!524756))

(assert (= (and b!524756 c!100926) b!524757))

(assert (= (and b!524756 (not c!100926)) b!524758))

(declare-fun m!770858 () Bool)

(assert (=> b!524757 m!770858))

(declare-fun m!770860 () Bool)

(assert (=> b!524758 m!770860))

(declare-fun m!770862 () Bool)

(assert (=> b!524758 m!770862))

(assert (=> b!524758 m!770860))

(assert (=> b!524758 m!770862))

(declare-fun m!770864 () Bool)

(assert (=> b!524758 m!770864))

(assert (=> d!187045 d!187135))

(declare-fun bs!65151 () Bool)

(declare-fun d!187137 () Bool)

(assert (= bs!65151 (and d!187137 d!187133)))

(declare-fun lambda!15159 () Int)

(assert (=> bs!65151 (= lambda!15159 lambda!15158)))

(declare-fun bs!65152 () Bool)

(assert (= bs!65152 (and d!187137 d!187125)))

(assert (=> bs!65152 (= lambda!15159 lambda!15156)))

(declare-fun bs!65153 () Bool)

(assert (= bs!65153 (and d!187137 d!187097)))

(assert (=> bs!65153 (= lambda!15159 lambda!15146)))

(declare-fun bs!65154 () Bool)

(assert (= bs!65154 (and d!187137 d!187093)))

(assert (=> bs!65154 (= lambda!15159 lambda!15142)))

(declare-fun bs!65155 () Bool)

(assert (= bs!65155 (and d!187137 d!187107)))

(assert (=> bs!65155 (= lambda!15159 lambda!15148)))

(declare-fun bs!65156 () Bool)

(assert (= bs!65156 (and d!187137 d!187113)))

(assert (=> bs!65156 (= lambda!15159 lambda!15151)))

(declare-fun bs!65157 () Bool)

(assert (= bs!65157 (and d!187137 d!187103)))

(assert (=> bs!65157 (= lambda!15159 lambda!15147)))

(declare-fun bs!65158 () Bool)

(assert (= bs!65158 (and d!187137 d!187119)))

(assert (=> bs!65158 (= lambda!15159 lambda!15152)))

(declare-fun bs!65159 () Bool)

(assert (= bs!65159 (and d!187137 d!187109)))

(assert (=> bs!65159 (= lambda!15159 lambda!15149)))

(declare-fun bs!65160 () Bool)

(assert (= bs!65160 (and d!187137 d!187111)))

(assert (=> bs!65160 (= lambda!15159 lambda!15150)))

(declare-fun bs!65161 () Bool)

(assert (= bs!65161 (and d!187137 d!187131)))

(assert (=> bs!65161 (= lambda!15159 lambda!15157)))

(assert (=> d!187137 (= (inv!6158 (_1!3240 (_1!3241 (h!10288 mapDefault!2207)))) (forall!1480 (exprs!647 (_1!3240 (_1!3241 (h!10288 mapDefault!2207)))) lambda!15159))))

(declare-fun bs!65162 () Bool)

(assert (= bs!65162 d!187137))

(declare-fun m!770866 () Bool)

(assert (=> bs!65162 m!770866))

(assert (=> b!524670 d!187137))

(declare-fun d!187139 () Bool)

(declare-fun res!222276 () Bool)

(declare-fun e!315038 () Bool)

(assert (=> d!187139 (=> res!222276 e!315038)))

(assert (=> d!187139 (= res!222276 ((_ is Nil!4890) rules!1345))))

(assert (=> d!187139 (= (noDuplicateTag!319 thiss!12147 rules!1345 Nil!4891) e!315038)))

(declare-fun b!524763 () Bool)

(declare-fun e!315039 () Bool)

(assert (=> b!524763 (= e!315038 e!315039)))

(declare-fun res!222277 () Bool)

(assert (=> b!524763 (=> (not res!222277) (not e!315039))))

(declare-fun contains!1172 (List!4901 String!6266) Bool)

(assert (=> b!524763 (= res!222277 (not (contains!1172 Nil!4891 (tag!1146 (h!10291 rules!1345)))))))

(declare-fun b!524764 () Bool)

(assert (=> b!524764 (= e!315039 (noDuplicateTag!319 thiss!12147 (t!73502 rules!1345) (Cons!4891 (tag!1146 (h!10291 rules!1345)) Nil!4891)))))

(assert (= (and d!187139 (not res!222276)) b!524763))

(assert (= (and b!524763 res!222277) b!524764))

(declare-fun m!770868 () Bool)

(assert (=> b!524763 m!770868))

(declare-fun m!770870 () Bool)

(assert (=> b!524764 m!770870))

(assert (=> b!524527 d!187139))

(declare-fun bs!65163 () Bool)

(declare-fun d!187141 () Bool)

(assert (= bs!65163 (and d!187141 d!187133)))

(declare-fun lambda!15160 () Int)

(assert (=> bs!65163 (= lambda!15160 lambda!15158)))

(declare-fun bs!65164 () Bool)

(assert (= bs!65164 (and d!187141 d!187125)))

(assert (=> bs!65164 (= lambda!15160 lambda!15156)))

(declare-fun bs!65165 () Bool)

(assert (= bs!65165 (and d!187141 d!187097)))

(assert (=> bs!65165 (= lambda!15160 lambda!15146)))

(declare-fun bs!65166 () Bool)

(assert (= bs!65166 (and d!187141 d!187093)))

(assert (=> bs!65166 (= lambda!15160 lambda!15142)))

(declare-fun bs!65167 () Bool)

(assert (= bs!65167 (and d!187141 d!187107)))

(assert (=> bs!65167 (= lambda!15160 lambda!15148)))

(declare-fun bs!65168 () Bool)

(assert (= bs!65168 (and d!187141 d!187113)))

(assert (=> bs!65168 (= lambda!15160 lambda!15151)))

(declare-fun bs!65169 () Bool)

(assert (= bs!65169 (and d!187141 d!187103)))

(assert (=> bs!65169 (= lambda!15160 lambda!15147)))

(declare-fun bs!65170 () Bool)

(assert (= bs!65170 (and d!187141 d!187119)))

(assert (=> bs!65170 (= lambda!15160 lambda!15152)))

(declare-fun bs!65171 () Bool)

(assert (= bs!65171 (and d!187141 d!187109)))

(assert (=> bs!65171 (= lambda!15160 lambda!15149)))

(declare-fun bs!65172 () Bool)

(assert (= bs!65172 (and d!187141 d!187111)))

(assert (=> bs!65172 (= lambda!15160 lambda!15150)))

(declare-fun bs!65173 () Bool)

(assert (= bs!65173 (and d!187141 d!187137)))

(assert (=> bs!65173 (= lambda!15160 lambda!15159)))

(declare-fun bs!65174 () Bool)

(assert (= bs!65174 (and d!187141 d!187131)))

(assert (=> bs!65174 (= lambda!15160 lambda!15157)))

(assert (=> d!187141 (= (inv!6158 setElem!2380) (forall!1480 (exprs!647 setElem!2380) lambda!15160))))

(declare-fun bs!65175 () Bool)

(assert (= bs!65175 d!187141))

(declare-fun m!770872 () Bool)

(assert (=> bs!65175 m!770872))

(assert (=> setNonEmpty!2380 d!187141))

(declare-fun d!187143 () Bool)

(declare-fun lt!217517 () Int)

(assert (=> d!187143 (>= lt!217517 0)))

(declare-fun e!315042 () Int)

(assert (=> d!187143 (= lt!217517 e!315042)))

(declare-fun c!100929 () Bool)

(assert (=> d!187143 (= c!100929 ((_ is Nil!4885) lt!217502))))

(assert (=> d!187143 (= (size!3990 lt!217502) lt!217517)))

(declare-fun b!524769 () Bool)

(assert (=> b!524769 (= e!315042 0)))

(declare-fun b!524770 () Bool)

(assert (=> b!524770 (= e!315042 (+ 1 (size!3990 (t!73497 lt!217502))))))

(assert (= (and d!187143 c!100929) b!524769))

(assert (= (and d!187143 (not c!100929)) b!524770))

(declare-fun m!770874 () Bool)

(assert (=> b!524770 m!770874))

(assert (=> b!524523 d!187143))

(declare-fun d!187145 () Bool)

(declare-fun lt!217518 () Int)

(assert (=> d!187145 (>= lt!217518 0)))

(declare-fun e!315043 () Int)

(assert (=> d!187145 (= lt!217518 e!315043)))

(declare-fun c!100930 () Bool)

(assert (=> d!187145 (= c!100930 ((_ is Nil!4885) lt!217489))))

(assert (=> d!187145 (= (size!3990 lt!217489) lt!217518)))

(declare-fun b!524771 () Bool)

(assert (=> b!524771 (= e!315043 0)))

(declare-fun b!524772 () Bool)

(assert (=> b!524772 (= e!315043 (+ 1 (size!3990 (t!73497 lt!217489))))))

(assert (= (and d!187145 c!100930) b!524771))

(assert (= (and d!187145 (not c!100930)) b!524772))

(declare-fun m!770876 () Bool)

(assert (=> b!524772 m!770876))

(assert (=> b!524523 d!187145))

(declare-fun d!187147 () Bool)

(declare-fun lt!217519 () Int)

(assert (=> d!187147 (>= lt!217519 0)))

(declare-fun e!315044 () Int)

(assert (=> d!187147 (= lt!217519 e!315044)))

(declare-fun c!100931 () Bool)

(assert (=> d!187147 (= c!100931 ((_ is Nil!4885) lt!217487))))

(assert (=> d!187147 (= (size!3990 lt!217487) lt!217519)))

(declare-fun b!524773 () Bool)

(assert (=> b!524773 (= e!315044 0)))

(declare-fun b!524774 () Bool)

(assert (=> b!524774 (= e!315044 (+ 1 (size!3990 (t!73497 lt!217487))))))

(assert (= (and d!187147 c!100931) b!524773))

(assert (= (and d!187147 (not c!100931)) b!524774))

(declare-fun m!770878 () Bool)

(assert (=> b!524774 m!770878))

(assert (=> b!524523 d!187147))

(assert (=> b!524459 d!187051))

(declare-fun d!187149 () Bool)

(declare-fun lt!217522 () Int)

(assert (=> d!187149 (= lt!217522 (size!3990 (list!2046 (_2!3242 lt!217497))))))

(declare-fun size!3992 (Conc!1590) Int)

(assert (=> d!187149 (= lt!217522 (size!3992 (c!100889 (_2!3242 lt!217497))))))

(assert (=> d!187149 (= (size!3989 (_2!3242 lt!217497)) lt!217522)))

(declare-fun bs!65176 () Bool)

(assert (= bs!65176 d!187149))

(assert (=> bs!65176 m!770621))

(assert (=> bs!65176 m!770621))

(declare-fun m!770880 () Bool)

(assert (=> bs!65176 m!770880))

(declare-fun m!770882 () Bool)

(assert (=> bs!65176 m!770882))

(assert (=> b!524495 d!187149))

(declare-fun d!187151 () Bool)

(declare-fun lt!217523 () Int)

(assert (=> d!187151 (= lt!217523 (size!3990 (list!2046 (BalanceConc!3189 Empty!1590))))))

(assert (=> d!187151 (= lt!217523 (size!3992 (c!100889 (BalanceConc!3189 Empty!1590))))))

(assert (=> d!187151 (= (size!3989 (BalanceConc!3189 Empty!1590)) lt!217523)))

(declare-fun bs!65177 () Bool)

(assert (= bs!65177 d!187151))

(assert (=> bs!65177 m!770599))

(assert (=> bs!65177 m!770599))

(assert (=> bs!65177 m!770785))

(declare-fun m!770884 () Bool)

(assert (=> bs!65177 m!770884))

(assert (=> b!524495 d!187151))

(declare-fun d!187153 () Bool)

(declare-fun c!100932 () Bool)

(assert (=> d!187153 (= c!100932 ((_ is Node!1590) (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(declare-fun e!315045 () Bool)

(assert (=> d!187153 (= (inv!6154 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) e!315045)))

(declare-fun b!524775 () Bool)

(assert (=> b!524775 (= e!315045 (inv!6156 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(declare-fun b!524776 () Bool)

(declare-fun e!315046 () Bool)

(assert (=> b!524776 (= e!315045 e!315046)))

(declare-fun res!222278 () Bool)

(assert (=> b!524776 (= res!222278 (not ((_ is Leaf!2535) (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))))))

(assert (=> b!524776 (=> res!222278 e!315046)))

(declare-fun b!524777 () Bool)

(assert (=> b!524777 (= e!315046 (inv!6157 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(assert (= (and d!187153 c!100932) b!524775))

(assert (= (and d!187153 (not c!100932)) b!524776))

(assert (= (and b!524776 (not res!222278)) b!524777))

(declare-fun m!770886 () Bool)

(assert (=> b!524775 m!770886))

(declare-fun m!770888 () Bool)

(assert (=> b!524777 m!770888))

(assert (=> b!524600 d!187153))

(declare-fun d!187155 () Bool)

(declare-fun c!100933 () Bool)

(assert (=> d!187155 (= c!100933 ((_ is Node!1590) (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(declare-fun e!315047 () Bool)

(assert (=> d!187155 (= (inv!6154 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) e!315047)))

(declare-fun b!524778 () Bool)

(assert (=> b!524778 (= e!315047 (inv!6156 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(declare-fun b!524779 () Bool)

(declare-fun e!315048 () Bool)

(assert (=> b!524779 (= e!315047 e!315048)))

(declare-fun res!222279 () Bool)

(assert (=> b!524779 (= res!222279 (not ((_ is Leaf!2535) (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))))))

(assert (=> b!524779 (=> res!222279 e!315048)))

(declare-fun b!524780 () Bool)

(assert (=> b!524780 (= e!315048 (inv!6157 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(assert (= (and d!187155 c!100933) b!524778))

(assert (= (and d!187155 (not c!100933)) b!524779))

(assert (= (and b!524779 (not res!222279)) b!524780))

(declare-fun m!770890 () Bool)

(assert (=> b!524778 m!770890))

(declare-fun m!770892 () Bool)

(assert (=> b!524780 m!770892))

(assert (=> b!524600 d!187155))

(declare-fun bs!65178 () Bool)

(declare-fun d!187157 () Bool)

(assert (= bs!65178 (and d!187157 d!187133)))

(declare-fun lambda!15161 () Int)

(assert (=> bs!65178 (= lambda!15161 lambda!15158)))

(declare-fun bs!65179 () Bool)

(assert (= bs!65179 (and d!187157 d!187125)))

(assert (=> bs!65179 (= lambda!15161 lambda!15156)))

(declare-fun bs!65180 () Bool)

(assert (= bs!65180 (and d!187157 d!187097)))

(assert (=> bs!65180 (= lambda!15161 lambda!15146)))

(declare-fun bs!65181 () Bool)

(assert (= bs!65181 (and d!187157 d!187093)))

(assert (=> bs!65181 (= lambda!15161 lambda!15142)))

(declare-fun bs!65182 () Bool)

(assert (= bs!65182 (and d!187157 d!187107)))

(assert (=> bs!65182 (= lambda!15161 lambda!15148)))

(declare-fun bs!65183 () Bool)

(assert (= bs!65183 (and d!187157 d!187113)))

(assert (=> bs!65183 (= lambda!15161 lambda!15151)))

(declare-fun bs!65184 () Bool)

(assert (= bs!65184 (and d!187157 d!187103)))

(assert (=> bs!65184 (= lambda!15161 lambda!15147)))

(declare-fun bs!65185 () Bool)

(assert (= bs!65185 (and d!187157 d!187119)))

(assert (=> bs!65185 (= lambda!15161 lambda!15152)))

(declare-fun bs!65186 () Bool)

(assert (= bs!65186 (and d!187157 d!187109)))

(assert (=> bs!65186 (= lambda!15161 lambda!15149)))

(declare-fun bs!65187 () Bool)

(assert (= bs!65187 (and d!187157 d!187141)))

(assert (=> bs!65187 (= lambda!15161 lambda!15160)))

(declare-fun bs!65188 () Bool)

(assert (= bs!65188 (and d!187157 d!187111)))

(assert (=> bs!65188 (= lambda!15161 lambda!15150)))

(declare-fun bs!65189 () Bool)

(assert (= bs!65189 (and d!187157 d!187137)))

(assert (=> bs!65189 (= lambda!15161 lambda!15159)))

(declare-fun bs!65190 () Bool)

(assert (= bs!65190 (and d!187157 d!187131)))

(assert (=> bs!65190 (= lambda!15161 lambda!15157)))

(assert (=> d!187157 (= (inv!6158 setElem!2352) (forall!1480 (exprs!647 setElem!2352) lambda!15161))))

(declare-fun bs!65191 () Bool)

(assert (= bs!65191 d!187157))

(declare-fun m!770894 () Bool)

(assert (=> bs!65191 m!770894))

(assert (=> setNonEmpty!2351 d!187157))

(assert (=> b!524497 d!187099))

(assert (=> b!524497 d!187067))

(declare-fun b!524781 () Bool)

(declare-fun e!315049 () Bool)

(assert (=> b!524781 (= e!315049 (not (isEmpty!3594 (right!4522 (c!100889 input!747)))))))

(declare-fun b!524782 () Bool)

(declare-fun res!222283 () Bool)

(assert (=> b!524782 (=> (not res!222283) (not e!315049))))

(assert (=> b!524782 (= res!222283 (<= (- (height!248 (left!4192 (c!100889 input!747))) (height!248 (right!4522 (c!100889 input!747)))) 1))))

(declare-fun b!524783 () Bool)

(declare-fun res!222284 () Bool)

(assert (=> b!524783 (=> (not res!222284) (not e!315049))))

(assert (=> b!524783 (= res!222284 (not (isEmpty!3594 (left!4192 (c!100889 input!747)))))))

(declare-fun b!524784 () Bool)

(declare-fun res!222285 () Bool)

(assert (=> b!524784 (=> (not res!222285) (not e!315049))))

(assert (=> b!524784 (= res!222285 (isBalanced!492 (left!4192 (c!100889 input!747))))))

(declare-fun b!524785 () Bool)

(declare-fun res!222280 () Bool)

(assert (=> b!524785 (=> (not res!222280) (not e!315049))))

(assert (=> b!524785 (= res!222280 (isBalanced!492 (right!4522 (c!100889 input!747))))))

(declare-fun b!524786 () Bool)

(declare-fun e!315050 () Bool)

(assert (=> b!524786 (= e!315050 e!315049)))

(declare-fun res!222282 () Bool)

(assert (=> b!524786 (=> (not res!222282) (not e!315049))))

(assert (=> b!524786 (= res!222282 (<= (- 1) (- (height!248 (left!4192 (c!100889 input!747))) (height!248 (right!4522 (c!100889 input!747))))))))

(declare-fun d!187159 () Bool)

(declare-fun res!222281 () Bool)

(assert (=> d!187159 (=> res!222281 e!315050)))

(assert (=> d!187159 (= res!222281 (not ((_ is Node!1590) (c!100889 input!747))))))

(assert (=> d!187159 (= (isBalanced!492 (c!100889 input!747)) e!315050)))

(assert (= (and d!187159 (not res!222281)) b!524786))

(assert (= (and b!524786 res!222282) b!524782))

(assert (= (and b!524782 res!222283) b!524784))

(assert (= (and b!524784 res!222285) b!524785))

(assert (= (and b!524785 res!222280) b!524783))

(assert (= (and b!524783 res!222284) b!524781))

(declare-fun m!770896 () Bool)

(assert (=> b!524786 m!770896))

(declare-fun m!770898 () Bool)

(assert (=> b!524786 m!770898))

(declare-fun m!770900 () Bool)

(assert (=> b!524783 m!770900))

(declare-fun m!770902 () Bool)

(assert (=> b!524781 m!770902))

(declare-fun m!770904 () Bool)

(assert (=> b!524784 m!770904))

(declare-fun m!770906 () Bool)

(assert (=> b!524785 m!770906))

(assert (=> b!524782 m!770896))

(assert (=> b!524782 m!770898))

(assert (=> d!187083 d!187159))

(declare-fun bs!65192 () Bool)

(declare-fun d!187161 () Bool)

(assert (= bs!65192 (and d!187161 d!187133)))

(declare-fun lambda!15162 () Int)

(assert (=> bs!65192 (= lambda!15162 lambda!15158)))

(declare-fun bs!65193 () Bool)

(assert (= bs!65193 (and d!187161 d!187157)))

(assert (=> bs!65193 (= lambda!15162 lambda!15161)))

(declare-fun bs!65194 () Bool)

(assert (= bs!65194 (and d!187161 d!187125)))

(assert (=> bs!65194 (= lambda!15162 lambda!15156)))

(declare-fun bs!65195 () Bool)

(assert (= bs!65195 (and d!187161 d!187097)))

(assert (=> bs!65195 (= lambda!15162 lambda!15146)))

(declare-fun bs!65196 () Bool)

(assert (= bs!65196 (and d!187161 d!187093)))

(assert (=> bs!65196 (= lambda!15162 lambda!15142)))

(declare-fun bs!65197 () Bool)

(assert (= bs!65197 (and d!187161 d!187107)))

(assert (=> bs!65197 (= lambda!15162 lambda!15148)))

(declare-fun bs!65198 () Bool)

(assert (= bs!65198 (and d!187161 d!187113)))

(assert (=> bs!65198 (= lambda!15162 lambda!15151)))

(declare-fun bs!65199 () Bool)

(assert (= bs!65199 (and d!187161 d!187103)))

(assert (=> bs!65199 (= lambda!15162 lambda!15147)))

(declare-fun bs!65200 () Bool)

(assert (= bs!65200 (and d!187161 d!187119)))

(assert (=> bs!65200 (= lambda!15162 lambda!15152)))

(declare-fun bs!65201 () Bool)

(assert (= bs!65201 (and d!187161 d!187109)))

(assert (=> bs!65201 (= lambda!15162 lambda!15149)))

(declare-fun bs!65202 () Bool)

(assert (= bs!65202 (and d!187161 d!187141)))

(assert (=> bs!65202 (= lambda!15162 lambda!15160)))

(declare-fun bs!65203 () Bool)

(assert (= bs!65203 (and d!187161 d!187111)))

(assert (=> bs!65203 (= lambda!15162 lambda!15150)))

(declare-fun bs!65204 () Bool)

(assert (= bs!65204 (and d!187161 d!187137)))

(assert (=> bs!65204 (= lambda!15162 lambda!15159)))

(declare-fun bs!65205 () Bool)

(assert (= bs!65205 (and d!187161 d!187131)))

(assert (=> bs!65205 (= lambda!15162 lambda!15157)))

(assert (=> d!187161 (= (inv!6158 setElem!2371) (forall!1480 (exprs!647 setElem!2371) lambda!15162))))

(declare-fun bs!65206 () Bool)

(assert (= bs!65206 d!187161))

(declare-fun m!770908 () Bool)

(assert (=> bs!65206 m!770908))

(assert (=> setNonEmpty!2371 d!187161))

(declare-fun bs!65207 () Bool)

(declare-fun d!187163 () Bool)

(assert (= bs!65207 (and d!187163 d!187133)))

(declare-fun lambda!15163 () Int)

(assert (=> bs!65207 (= lambda!15163 lambda!15158)))

(declare-fun bs!65208 () Bool)

(assert (= bs!65208 (and d!187163 d!187157)))

(assert (=> bs!65208 (= lambda!15163 lambda!15161)))

(declare-fun bs!65209 () Bool)

(assert (= bs!65209 (and d!187163 d!187125)))

(assert (=> bs!65209 (= lambda!15163 lambda!15156)))

(declare-fun bs!65210 () Bool)

(assert (= bs!65210 (and d!187163 d!187097)))

(assert (=> bs!65210 (= lambda!15163 lambda!15146)))

(declare-fun bs!65211 () Bool)

(assert (= bs!65211 (and d!187163 d!187093)))

(assert (=> bs!65211 (= lambda!15163 lambda!15142)))

(declare-fun bs!65212 () Bool)

(assert (= bs!65212 (and d!187163 d!187107)))

(assert (=> bs!65212 (= lambda!15163 lambda!15148)))

(declare-fun bs!65213 () Bool)

(assert (= bs!65213 (and d!187163 d!187113)))

(assert (=> bs!65213 (= lambda!15163 lambda!15151)))

(declare-fun bs!65214 () Bool)

(assert (= bs!65214 (and d!187163 d!187103)))

(assert (=> bs!65214 (= lambda!15163 lambda!15147)))

(declare-fun bs!65215 () Bool)

(assert (= bs!65215 (and d!187163 d!187119)))

(assert (=> bs!65215 (= lambda!15163 lambda!15152)))

(declare-fun bs!65216 () Bool)

(assert (= bs!65216 (and d!187163 d!187141)))

(assert (=> bs!65216 (= lambda!15163 lambda!15160)))

(declare-fun bs!65217 () Bool)

(assert (= bs!65217 (and d!187163 d!187111)))

(assert (=> bs!65217 (= lambda!15163 lambda!15150)))

(declare-fun bs!65218 () Bool)

(assert (= bs!65218 (and d!187163 d!187137)))

(assert (=> bs!65218 (= lambda!15163 lambda!15159)))

(declare-fun bs!65219 () Bool)

(assert (= bs!65219 (and d!187163 d!187131)))

(assert (=> bs!65219 (= lambda!15163 lambda!15157)))

(declare-fun bs!65220 () Bool)

(assert (= bs!65220 (and d!187163 d!187161)))

(assert (=> bs!65220 (= lambda!15163 lambda!15162)))

(declare-fun bs!65221 () Bool)

(assert (= bs!65221 (and d!187163 d!187109)))

(assert (=> bs!65221 (= lambda!15163 lambda!15149)))

(assert (=> d!187163 (= (inv!6158 (_2!3236 (_1!3237 (h!10285 mapValue!2204)))) (forall!1480 (exprs!647 (_2!3236 (_1!3237 (h!10285 mapValue!2204)))) lambda!15163))))

(declare-fun bs!65222 () Bool)

(assert (= bs!65222 d!187163))

(declare-fun m!770910 () Bool)

(assert (=> bs!65222 m!770910))

(assert (=> b!524634 d!187163))

(declare-fun d!187165 () Bool)

(declare-fun e!315053 () Bool)

(assert (=> d!187165 e!315053))

(declare-fun res!222288 () Bool)

(assert (=> d!187165 (=> (not res!222288) (not e!315053))))

(declare-fun isBalanced!493 (Conc!1591) Bool)

(declare-fun prepend!239 (Conc!1591 Token!1506) Conc!1591)

(assert (=> d!187165 (= res!222288 (isBalanced!493 (prepend!239 (c!100890 (_1!3242 lt!217498)) (_1!3243 (v!15970 lt!217499)))))))

(declare-fun lt!217526 () BalanceConc!3190)

(assert (=> d!187165 (= lt!217526 (BalanceConc!3191 (prepend!239 (c!100890 (_1!3242 lt!217498)) (_1!3243 (v!15970 lt!217499)))))))

(assert (=> d!187165 (= (prepend!238 (_1!3242 lt!217498) (_1!3243 (v!15970 lt!217499))) lt!217526)))

(declare-fun b!524789 () Bool)

(assert (=> b!524789 (= e!315053 (= (list!2047 lt!217526) (Cons!4889 (_1!3243 (v!15970 lt!217499)) (list!2047 (_1!3242 lt!217498)))))))

(assert (= (and d!187165 res!222288) b!524789))

(declare-fun m!770912 () Bool)

(assert (=> d!187165 m!770912))

(assert (=> d!187165 m!770912))

(declare-fun m!770914 () Bool)

(assert (=> d!187165 m!770914))

(declare-fun m!770916 () Bool)

(assert (=> b!524789 m!770916))

(declare-fun m!770918 () Bool)

(assert (=> b!524789 m!770918))

(assert (=> b!524491 d!187165))

(declare-fun b!524790 () Bool)

(declare-fun e!315054 () tuple2!6020)

(declare-fun lt!217528 () tuple2!6020)

(declare-fun lt!217529 () Option!1244)

(assert (=> b!524790 (= e!315054 (tuple2!6021 (prepend!238 (_1!3242 lt!217528) (_1!3243 (v!15970 lt!217529))) (_2!3242 lt!217528)))))

(assert (=> b!524790 (= lt!217528 (lexRec!138 thiss!12147 rules!1345 (_2!3243 (v!15970 lt!217529))))))

(declare-fun e!315057 () Bool)

(declare-fun b!524791 () Bool)

(declare-fun lt!217527 () tuple2!6020)

(assert (=> b!524791 (= e!315057 (= (list!2046 (_2!3242 lt!217527)) (_2!3244 (lexList!303 thiss!12147 rules!1345 (list!2046 (_2!3243 (v!15970 lt!217499)))))))))

(declare-fun b!524792 () Bool)

(declare-fun e!315056 () Bool)

(assert (=> b!524792 (= e!315056 (not (isEmpty!3592 (_1!3242 lt!217527))))))

(declare-fun d!187167 () Bool)

(assert (=> d!187167 e!315057))

(declare-fun res!222289 () Bool)

(assert (=> d!187167 (=> (not res!222289) (not e!315057))))

(declare-fun e!315055 () Bool)

(assert (=> d!187167 (= res!222289 e!315055)))

(declare-fun c!100935 () Bool)

(assert (=> d!187167 (= c!100935 (> (size!3988 (_1!3242 lt!217527)) 0))))

(assert (=> d!187167 (= lt!217527 e!315054)))

(declare-fun c!100936 () Bool)

(assert (=> d!187167 (= c!100936 ((_ is Some!1243) lt!217529))))

(assert (=> d!187167 (= lt!217529 (maxPrefixZipperSequence!444 thiss!12147 rules!1345 (_2!3243 (v!15970 lt!217499))))))

(assert (=> d!187167 (= (lexRec!138 thiss!12147 rules!1345 (_2!3243 (v!15970 lt!217499))) lt!217527)))

(declare-fun b!524793 () Bool)

(declare-fun res!222290 () Bool)

(assert (=> b!524793 (=> (not res!222290) (not e!315057))))

(assert (=> b!524793 (= res!222290 (= (list!2047 (_1!3242 lt!217527)) (_1!3244 (lexList!303 thiss!12147 rules!1345 (list!2046 (_2!3243 (v!15970 lt!217499)))))))))

(declare-fun b!524794 () Bool)

(assert (=> b!524794 (= e!315055 e!315056)))

(declare-fun res!222291 () Bool)

(assert (=> b!524794 (= res!222291 (< (size!3989 (_2!3242 lt!217527)) (size!3989 (_2!3243 (v!15970 lt!217499)))))))

(assert (=> b!524794 (=> (not res!222291) (not e!315056))))

(declare-fun b!524795 () Bool)

(assert (=> b!524795 (= e!315054 (tuple2!6021 (BalanceConc!3191 Empty!1591) (_2!3243 (v!15970 lt!217499))))))

(declare-fun b!524796 () Bool)

(assert (=> b!524796 (= e!315055 (= (list!2046 (_2!3242 lt!217527)) (list!2046 (_2!3243 (v!15970 lt!217499)))))))

(assert (= (and d!187167 c!100936) b!524790))

(assert (= (and d!187167 (not c!100936)) b!524795))

(assert (= (and d!187167 c!100935) b!524794))

(assert (= (and d!187167 (not c!100935)) b!524796))

(assert (= (and b!524794 res!222291) b!524792))

(assert (= (and d!187167 res!222289) b!524793))

(assert (= (and b!524793 res!222290) b!524791))

(declare-fun m!770920 () Bool)

(assert (=> b!524791 m!770920))

(declare-fun m!770922 () Bool)

(assert (=> b!524791 m!770922))

(assert (=> b!524791 m!770922))

(declare-fun m!770924 () Bool)

(assert (=> b!524791 m!770924))

(declare-fun m!770926 () Bool)

(assert (=> b!524790 m!770926))

(declare-fun m!770928 () Bool)

(assert (=> b!524790 m!770928))

(declare-fun m!770930 () Bool)

(assert (=> b!524794 m!770930))

(declare-fun m!770932 () Bool)

(assert (=> b!524794 m!770932))

(declare-fun m!770934 () Bool)

(assert (=> b!524793 m!770934))

(assert (=> b!524793 m!770922))

(assert (=> b!524793 m!770922))

(assert (=> b!524793 m!770924))

(declare-fun m!770936 () Bool)

(assert (=> b!524792 m!770936))

(declare-fun m!770938 () Bool)

(assert (=> d!187167 m!770938))

(declare-fun m!770940 () Bool)

(assert (=> d!187167 m!770940))

(assert (=> b!524796 m!770920))

(assert (=> b!524796 m!770922))

(assert (=> b!524491 d!187167))

(declare-fun bs!65223 () Bool)

(declare-fun d!187169 () Bool)

(assert (= bs!65223 (and d!187169 d!187133)))

(declare-fun lambda!15164 () Int)

(assert (=> bs!65223 (= lambda!15164 lambda!15158)))

(declare-fun bs!65224 () Bool)

(assert (= bs!65224 (and d!187169 d!187157)))

(assert (=> bs!65224 (= lambda!15164 lambda!15161)))

(declare-fun bs!65225 () Bool)

(assert (= bs!65225 (and d!187169 d!187125)))

(assert (=> bs!65225 (= lambda!15164 lambda!15156)))

(declare-fun bs!65226 () Bool)

(assert (= bs!65226 (and d!187169 d!187097)))

(assert (=> bs!65226 (= lambda!15164 lambda!15146)))

(declare-fun bs!65227 () Bool)

(assert (= bs!65227 (and d!187169 d!187093)))

(assert (=> bs!65227 (= lambda!15164 lambda!15142)))

(declare-fun bs!65228 () Bool)

(assert (= bs!65228 (and d!187169 d!187107)))

(assert (=> bs!65228 (= lambda!15164 lambda!15148)))

(declare-fun bs!65229 () Bool)

(assert (= bs!65229 (and d!187169 d!187103)))

(assert (=> bs!65229 (= lambda!15164 lambda!15147)))

(declare-fun bs!65230 () Bool)

(assert (= bs!65230 (and d!187169 d!187119)))

(assert (=> bs!65230 (= lambda!15164 lambda!15152)))

(declare-fun bs!65231 () Bool)

(assert (= bs!65231 (and d!187169 d!187141)))

(assert (=> bs!65231 (= lambda!15164 lambda!15160)))

(declare-fun bs!65232 () Bool)

(assert (= bs!65232 (and d!187169 d!187111)))

(assert (=> bs!65232 (= lambda!15164 lambda!15150)))

(declare-fun bs!65233 () Bool)

(assert (= bs!65233 (and d!187169 d!187137)))

(assert (=> bs!65233 (= lambda!15164 lambda!15159)))

(declare-fun bs!65234 () Bool)

(assert (= bs!65234 (and d!187169 d!187131)))

(assert (=> bs!65234 (= lambda!15164 lambda!15157)))

(declare-fun bs!65235 () Bool)

(assert (= bs!65235 (and d!187169 d!187113)))

(assert (=> bs!65235 (= lambda!15164 lambda!15151)))

(declare-fun bs!65236 () Bool)

(assert (= bs!65236 (and d!187169 d!187163)))

(assert (=> bs!65236 (= lambda!15164 lambda!15163)))

(declare-fun bs!65237 () Bool)

(assert (= bs!65237 (and d!187169 d!187161)))

(assert (=> bs!65237 (= lambda!15164 lambda!15162)))

(declare-fun bs!65238 () Bool)

(assert (= bs!65238 (and d!187169 d!187109)))

(assert (=> bs!65238 (= lambda!15164 lambda!15149)))

(assert (=> d!187169 (= (inv!6158 setElem!2382) (forall!1480 (exprs!647 setElem!2382) lambda!15164))))

(declare-fun bs!65239 () Bool)

(assert (= bs!65239 d!187169))

(declare-fun m!770942 () Bool)

(assert (=> bs!65239 m!770942))

(assert (=> setNonEmpty!2382 d!187169))

(declare-fun bs!65240 () Bool)

(declare-fun d!187171 () Bool)

(assert (= bs!65240 (and d!187171 d!187133)))

(declare-fun lambda!15165 () Int)

(assert (=> bs!65240 (= lambda!15165 lambda!15158)))

(declare-fun bs!65241 () Bool)

(assert (= bs!65241 (and d!187171 d!187125)))

(assert (=> bs!65241 (= lambda!15165 lambda!15156)))

(declare-fun bs!65242 () Bool)

(assert (= bs!65242 (and d!187171 d!187097)))

(assert (=> bs!65242 (= lambda!15165 lambda!15146)))

(declare-fun bs!65243 () Bool)

(assert (= bs!65243 (and d!187171 d!187093)))

(assert (=> bs!65243 (= lambda!15165 lambda!15142)))

(declare-fun bs!65244 () Bool)

(assert (= bs!65244 (and d!187171 d!187107)))

(assert (=> bs!65244 (= lambda!15165 lambda!15148)))

(declare-fun bs!65245 () Bool)

(assert (= bs!65245 (and d!187171 d!187103)))

(assert (=> bs!65245 (= lambda!15165 lambda!15147)))

(declare-fun bs!65246 () Bool)

(assert (= bs!65246 (and d!187171 d!187119)))

(assert (=> bs!65246 (= lambda!15165 lambda!15152)))

(declare-fun bs!65247 () Bool)

(assert (= bs!65247 (and d!187171 d!187141)))

(assert (=> bs!65247 (= lambda!15165 lambda!15160)))

(declare-fun bs!65248 () Bool)

(assert (= bs!65248 (and d!187171 d!187157)))

(assert (=> bs!65248 (= lambda!15165 lambda!15161)))

(declare-fun bs!65249 () Bool)

(assert (= bs!65249 (and d!187171 d!187169)))

(assert (=> bs!65249 (= lambda!15165 lambda!15164)))

(declare-fun bs!65250 () Bool)

(assert (= bs!65250 (and d!187171 d!187111)))

(assert (=> bs!65250 (= lambda!15165 lambda!15150)))

(declare-fun bs!65251 () Bool)

(assert (= bs!65251 (and d!187171 d!187137)))

(assert (=> bs!65251 (= lambda!15165 lambda!15159)))

(declare-fun bs!65252 () Bool)

(assert (= bs!65252 (and d!187171 d!187131)))

(assert (=> bs!65252 (= lambda!15165 lambda!15157)))

(declare-fun bs!65253 () Bool)

(assert (= bs!65253 (and d!187171 d!187113)))

(assert (=> bs!65253 (= lambda!15165 lambda!15151)))

(declare-fun bs!65254 () Bool)

(assert (= bs!65254 (and d!187171 d!187163)))

(assert (=> bs!65254 (= lambda!15165 lambda!15163)))

(declare-fun bs!65255 () Bool)

(assert (= bs!65255 (and d!187171 d!187161)))

(assert (=> bs!65255 (= lambda!15165 lambda!15162)))

(declare-fun bs!65256 () Bool)

(assert (= bs!65256 (and d!187171 d!187109)))

(assert (=> bs!65256 (= lambda!15165 lambda!15149)))

(assert (=> d!187171 (= (inv!6158 (_1!3240 (_1!3241 (h!10288 mapValue!2207)))) (forall!1480 (exprs!647 (_1!3240 (_1!3241 (h!10288 mapValue!2207)))) lambda!15165))))

(declare-fun bs!65257 () Bool)

(assert (= bs!65257 d!187171))

(declare-fun m!770944 () Bool)

(assert (=> bs!65257 m!770944))

(assert (=> b!524665 d!187171))

(declare-fun d!187173 () Bool)

(declare-fun res!222298 () Bool)

(declare-fun e!315062 () Bool)

(assert (=> d!187173 (=> (not res!222298) (not e!315062))))

(declare-fun valid!546 (MutableMap!535) Bool)

(assert (=> d!187173 (= res!222298 (valid!546 (cache!922 cacheDown!462)))))

(assert (=> d!187173 (= (validCacheMapDown!32 (cache!922 cacheDown!462)) e!315062)))

(declare-fun b!524803 () Bool)

(declare-fun res!222299 () Bool)

(assert (=> b!524803 (=> (not res!222299) (not e!315062))))

(declare-fun invariantList!96 (List!4894) Bool)

(declare-datatypes ((ListMap!241 0))(
  ( (ListMap!242 (toList!457 List!4894)) )
))
(declare-fun map!1126 (MutableMap!535) ListMap!241)

(assert (=> b!524803 (= res!222299 (invariantList!96 (toList!457 (map!1126 (cache!922 cacheDown!462)))))))

(declare-fun b!524804 () Bool)

(declare-fun lambda!15168 () Int)

(declare-fun forall!1483 (List!4894 Int) Bool)

(assert (=> b!524804 (= e!315062 (forall!1483 (toList!457 (map!1126 (cache!922 cacheDown!462))) lambda!15168))))

(assert (= (and d!187173 res!222298) b!524803))

(assert (= (and b!524803 res!222299) b!524804))

(declare-fun m!770947 () Bool)

(assert (=> d!187173 m!770947))

(declare-fun m!770949 () Bool)

(assert (=> b!524803 m!770949))

(declare-fun m!770951 () Bool)

(assert (=> b!524803 m!770951))

(assert (=> b!524804 m!770949))

(declare-fun m!770953 () Bool)

(assert (=> b!524804 m!770953))

(assert (=> b!524530 d!187173))

(declare-fun d!187175 () Bool)

(declare-fun c!100939 () Bool)

(assert (=> d!187175 (= c!100939 ((_ is Nil!4885) lt!217502))))

(declare-fun e!315065 () (InoxSet C!3340))

(assert (=> d!187175 (= (content!886 lt!217502) e!315065)))

(declare-fun b!524809 () Bool)

(assert (=> b!524809 (= e!315065 ((as const (Array C!3340 Bool)) false))))

(declare-fun b!524810 () Bool)

(assert (=> b!524810 (= e!315065 ((_ map or) (store ((as const (Array C!3340 Bool)) false) (h!10286 lt!217502) true) (content!886 (t!73497 lt!217502))))))

(assert (= (and d!187175 c!100939) b!524809))

(assert (= (and d!187175 (not c!100939)) b!524810))

(declare-fun m!770955 () Bool)

(assert (=> b!524810 m!770955))

(declare-fun m!770957 () Bool)

(assert (=> b!524810 m!770957))

(assert (=> d!187063 d!187175))

(declare-fun d!187177 () Bool)

(declare-fun c!100940 () Bool)

(assert (=> d!187177 (= c!100940 ((_ is Nil!4885) lt!217489))))

(declare-fun e!315066 () (InoxSet C!3340))

(assert (=> d!187177 (= (content!886 lt!217489) e!315066)))

(declare-fun b!524811 () Bool)

(assert (=> b!524811 (= e!315066 ((as const (Array C!3340 Bool)) false))))

(declare-fun b!524812 () Bool)

(assert (=> b!524812 (= e!315066 ((_ map or) (store ((as const (Array C!3340 Bool)) false) (h!10286 lt!217489) true) (content!886 (t!73497 lt!217489))))))

(assert (= (and d!187177 c!100940) b!524811))

(assert (= (and d!187177 (not c!100940)) b!524812))

(declare-fun m!770959 () Bool)

(assert (=> b!524812 m!770959))

(declare-fun m!770961 () Bool)

(assert (=> b!524812 m!770961))

(assert (=> d!187063 d!187177))

(declare-fun d!187179 () Bool)

(declare-fun c!100941 () Bool)

(assert (=> d!187179 (= c!100941 ((_ is Nil!4885) lt!217487))))

(declare-fun e!315067 () (InoxSet C!3340))

(assert (=> d!187179 (= (content!886 lt!217487) e!315067)))

(declare-fun b!524813 () Bool)

(assert (=> b!524813 (= e!315067 ((as const (Array C!3340 Bool)) false))))

(declare-fun b!524814 () Bool)

(assert (=> b!524814 (= e!315067 ((_ map or) (store ((as const (Array C!3340 Bool)) false) (h!10286 lt!217487) true) (content!886 (t!73497 lt!217487))))))

(assert (= (and d!187179 c!100941) b!524813))

(assert (= (and d!187179 (not c!100941)) b!524814))

(declare-fun m!770963 () Bool)

(assert (=> b!524814 m!770963))

(declare-fun m!770965 () Bool)

(assert (=> b!524814 m!770965))

(assert (=> d!187063 d!187179))

(declare-fun d!187181 () Bool)

(declare-fun lt!217532 () Bool)

(assert (=> d!187181 (= lt!217532 (isEmpty!3593 (list!2047 (_1!3242 lt!217497))))))

(declare-fun isEmpty!3595 (Conc!1591) Bool)

(assert (=> d!187181 (= lt!217532 (isEmpty!3595 (c!100890 (_1!3242 lt!217497))))))

(assert (=> d!187181 (= (isEmpty!3592 (_1!3242 lt!217497)) lt!217532)))

(declare-fun bs!65258 () Bool)

(assert (= bs!65258 d!187181))

(assert (=> bs!65258 m!770633))

(assert (=> bs!65258 m!770633))

(declare-fun m!770967 () Bool)

(assert (=> bs!65258 m!770967))

(declare-fun m!770969 () Bool)

(assert (=> bs!65258 m!770969))

(assert (=> b!524493 d!187181))

(declare-fun d!187183 () Bool)

(declare-fun lt!217535 () Int)

(assert (=> d!187183 (= lt!217535 (size!3991 (list!2047 (_1!3242 lt!217497))))))

(declare-fun size!3993 (Conc!1591) Int)

(assert (=> d!187183 (= lt!217535 (size!3993 (c!100890 (_1!3242 lt!217497))))))

(assert (=> d!187183 (= (size!3988 (_1!3242 lt!217497)) lt!217535)))

(declare-fun bs!65259 () Bool)

(assert (= bs!65259 d!187183))

(assert (=> bs!65259 m!770633))

(assert (=> bs!65259 m!770633))

(declare-fun m!770971 () Bool)

(assert (=> bs!65259 m!770971))

(declare-fun m!770973 () Bool)

(assert (=> bs!65259 m!770973))

(assert (=> d!187041 d!187183))

(declare-fun b!524831 () Bool)

(declare-fun e!315085 () Bool)

(declare-fun e!315082 () Bool)

(assert (=> b!524831 (= e!315085 e!315082)))

(declare-fun res!222314 () Bool)

(assert (=> b!524831 (=> (not res!222314) (not e!315082))))

(declare-fun lt!217553 () Option!1244)

(declare-fun get!1850 (Option!1244) tuple2!6022)

(declare-fun get!1851 (Option!1245) tuple2!6026)

(assert (=> b!524831 (= res!222314 (= (_1!3243 (get!1850 lt!217553)) (_1!3245 (get!1851 (maxPrefix!481 thiss!12147 rules!1345 (list!2046 (BalanceConc!3189 Empty!1590)))))))))

(declare-fun bm!38051 () Bool)

(declare-fun call!38056 () Option!1244)

(declare-fun maxPrefixOneRuleZipperSequence!203 (LexerInterface!770 Rule!1568 BalanceConc!3188) Option!1244)

(assert (=> bm!38051 (= call!38056 (maxPrefixOneRuleZipperSequence!203 thiss!12147 (h!10291 rules!1345) (BalanceConc!3189 Empty!1590)))))

(declare-fun b!524832 () Bool)

(declare-fun e!315084 () Bool)

(declare-fun e!315080 () Bool)

(assert (=> b!524832 (= e!315084 e!315080)))

(declare-fun res!222316 () Bool)

(assert (=> b!524832 (=> (not res!222316) (not e!315080))))

(declare-fun maxPrefixZipper!202 (LexerInterface!770 List!4900 List!4895) Option!1245)

(assert (=> b!524832 (= res!222316 (= (_1!3243 (get!1850 lt!217553)) (_1!3245 (get!1851 (maxPrefixZipper!202 thiss!12147 rules!1345 (list!2046 (BalanceConc!3189 Empty!1590)))))))))

(declare-fun b!524833 () Bool)

(declare-fun e!315081 () Bool)

(assert (=> b!524833 (= e!315081 e!315085)))

(declare-fun res!222315 () Bool)

(assert (=> b!524833 (=> res!222315 e!315085)))

(declare-fun isDefined!1058 (Option!1244) Bool)

(assert (=> b!524833 (= res!222315 (not (isDefined!1058 lt!217553)))))

(declare-fun d!187185 () Bool)

(assert (=> d!187185 e!315081))

(declare-fun res!222313 () Bool)

(assert (=> d!187185 (=> (not res!222313) (not e!315081))))

(declare-fun isDefined!1059 (Option!1245) Bool)

(assert (=> d!187185 (= res!222313 (= (isDefined!1058 lt!217553) (isDefined!1059 (maxPrefixZipper!202 thiss!12147 rules!1345 (list!2046 (BalanceConc!3189 Empty!1590))))))))

(declare-fun e!315083 () Option!1244)

(assert (=> d!187185 (= lt!217553 e!315083)))

(declare-fun c!100944 () Bool)

(assert (=> d!187185 (= c!100944 (and ((_ is Cons!4890) rules!1345) ((_ is Nil!4890) (t!73502 rules!1345))))))

(declare-datatypes ((Unit!8792 0))(
  ( (Unit!8793) )
))
(declare-fun lt!217552 () Unit!8792)

(declare-fun lt!217554 () Unit!8792)

(assert (=> d!187185 (= lt!217552 lt!217554)))

(declare-fun lt!217550 () List!4895)

(declare-fun lt!217556 () List!4895)

(declare-fun isPrefix!553 (List!4895 List!4895) Bool)

(assert (=> d!187185 (isPrefix!553 lt!217550 lt!217556)))

(declare-fun lemmaIsPrefixRefl!299 (List!4895 List!4895) Unit!8792)

(assert (=> d!187185 (= lt!217554 (lemmaIsPrefixRefl!299 lt!217550 lt!217556))))

(assert (=> d!187185 (= lt!217556 (list!2046 (BalanceConc!3189 Empty!1590)))))

(assert (=> d!187185 (= lt!217550 (list!2046 (BalanceConc!3189 Empty!1590)))))

(assert (=> d!187185 (rulesValidInductive!295 thiss!12147 rules!1345)))

(assert (=> d!187185 (= (maxPrefixZipperSequence!444 thiss!12147 rules!1345 (BalanceConc!3189 Empty!1590)) lt!217553)))

(declare-fun b!524834 () Bool)

(assert (=> b!524834 (= e!315083 call!38056)))

(declare-fun b!524835 () Bool)

(declare-fun res!222312 () Bool)

(assert (=> b!524835 (=> (not res!222312) (not e!315081))))

(assert (=> b!524835 (= res!222312 e!315084)))

(declare-fun res!222317 () Bool)

(assert (=> b!524835 (=> res!222317 e!315084)))

(assert (=> b!524835 (= res!222317 (not (isDefined!1058 lt!217553)))))

(declare-fun b!524836 () Bool)

(declare-fun lt!217555 () Option!1244)

(declare-fun lt!217551 () Option!1244)

(assert (=> b!524836 (= e!315083 (ite (and ((_ is None!1243) lt!217555) ((_ is None!1243) lt!217551)) None!1243 (ite ((_ is None!1243) lt!217551) lt!217555 (ite ((_ is None!1243) lt!217555) lt!217551 (ite (>= (size!3987 (_1!3243 (v!15970 lt!217555))) (size!3987 (_1!3243 (v!15970 lt!217551)))) lt!217555 lt!217551)))))))

(assert (=> b!524836 (= lt!217555 call!38056)))

(assert (=> b!524836 (= lt!217551 (maxPrefixZipperSequence!444 thiss!12147 (t!73502 rules!1345) (BalanceConc!3189 Empty!1590)))))

(declare-fun b!524837 () Bool)

(assert (=> b!524837 (= e!315080 (= (list!2046 (_2!3243 (get!1850 lt!217553))) (_2!3245 (get!1851 (maxPrefixZipper!202 thiss!12147 rules!1345 (list!2046 (BalanceConc!3189 Empty!1590)))))))))

(declare-fun b!524838 () Bool)

(assert (=> b!524838 (= e!315082 (= (list!2046 (_2!3243 (get!1850 lt!217553))) (_2!3245 (get!1851 (maxPrefix!481 thiss!12147 rules!1345 (list!2046 (BalanceConc!3189 Empty!1590)))))))))

(assert (= (and d!187185 c!100944) b!524834))

(assert (= (and d!187185 (not c!100944)) b!524836))

(assert (= (or b!524834 b!524836) bm!38051))

(assert (= (and d!187185 res!222313) b!524835))

(assert (= (and b!524835 (not res!222317)) b!524832))

(assert (= (and b!524832 res!222316) b!524837))

(assert (= (and b!524835 res!222312) b!524833))

(assert (= (and b!524833 (not res!222315)) b!524831))

(assert (= (and b!524831 res!222314) b!524838))

(declare-fun m!770975 () Bool)

(assert (=> bm!38051 m!770975))

(declare-fun m!770977 () Bool)

(assert (=> b!524837 m!770977))

(declare-fun m!770979 () Bool)

(assert (=> b!524837 m!770979))

(assert (=> b!524837 m!770599))

(assert (=> b!524837 m!770599))

(assert (=> b!524837 m!770977))

(declare-fun m!770981 () Bool)

(assert (=> b!524837 m!770981))

(declare-fun m!770983 () Bool)

(assert (=> b!524837 m!770983))

(assert (=> b!524831 m!770983))

(assert (=> b!524831 m!770599))

(assert (=> b!524831 m!770599))

(assert (=> b!524831 m!770789))

(assert (=> b!524831 m!770789))

(declare-fun m!770985 () Bool)

(assert (=> b!524831 m!770985))

(assert (=> b!524832 m!770983))

(assert (=> b!524832 m!770599))

(assert (=> b!524832 m!770599))

(assert (=> b!524832 m!770977))

(assert (=> b!524832 m!770977))

(assert (=> b!524832 m!770979))

(declare-fun m!770987 () Bool)

(assert (=> b!524833 m!770987))

(declare-fun m!770989 () Bool)

(assert (=> b!524836 m!770989))

(assert (=> b!524838 m!770599))

(assert (=> b!524838 m!770789))

(assert (=> b!524838 m!770985))

(assert (=> b!524838 m!770981))

(assert (=> b!524838 m!770983))

(assert (=> b!524838 m!770599))

(assert (=> b!524838 m!770789))

(assert (=> d!187185 m!770977))

(declare-fun m!770991 () Bool)

(assert (=> d!187185 m!770991))

(assert (=> d!187185 m!770771))

(assert (=> d!187185 m!770599))

(declare-fun m!770993 () Bool)

(assert (=> d!187185 m!770993))

(assert (=> d!187185 m!770599))

(assert (=> d!187185 m!770977))

(declare-fun m!770995 () Bool)

(assert (=> d!187185 m!770995))

(assert (=> d!187185 m!770987))

(assert (=> b!524835 m!770987))

(assert (=> d!187041 d!187185))

(declare-fun d!187187 () Bool)

(assert (=> d!187187 (= (inv!6159 (xs!4225 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) (<= (size!3990 (innerList!1648 (xs!4225 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) 2147483647))))

(declare-fun bs!65260 () Bool)

(assert (= bs!65260 d!187187))

(declare-fun m!770997 () Bool)

(assert (=> bs!65260 m!770997))

(assert (=> b!524601 d!187187))

(declare-fun d!187189 () Bool)

(declare-fun res!222322 () Bool)

(declare-fun e!315088 () Bool)

(assert (=> d!187189 (=> (not res!222322) (not e!315088))))

(declare-fun valid!547 (MutableMap!537) Bool)

(assert (=> d!187189 (= res!222322 (valid!547 (cache!924 cacheUp!449)))))

(assert (=> d!187189 (= (validCacheMapUp!35 (cache!924 cacheUp!449)) e!315088)))

(declare-fun b!524843 () Bool)

(declare-fun res!222323 () Bool)

(assert (=> b!524843 (=> (not res!222323) (not e!315088))))

(declare-fun invariantList!97 (List!4897) Bool)

(declare-datatypes ((ListMap!243 0))(
  ( (ListMap!244 (toList!458 List!4897)) )
))
(declare-fun map!1127 (MutableMap!537) ListMap!243)

(assert (=> b!524843 (= res!222323 (invariantList!97 (toList!458 (map!1127 (cache!924 cacheUp!449)))))))

(declare-fun b!524844 () Bool)

(declare-fun lambda!15171 () Int)

(declare-fun forall!1484 (List!4897 Int) Bool)

(assert (=> b!524844 (= e!315088 (forall!1484 (toList!458 (map!1127 (cache!924 cacheUp!449))) lambda!15171))))

(assert (= (and d!187189 res!222322) b!524843))

(assert (= (and b!524843 res!222323) b!524844))

(declare-fun m!771000 () Bool)

(assert (=> d!187189 m!771000))

(declare-fun m!771002 () Bool)

(assert (=> b!524843 m!771002))

(declare-fun m!771004 () Bool)

(assert (=> b!524843 m!771004))

(assert (=> b!524844 m!771002))

(declare-fun m!771006 () Bool)

(assert (=> b!524844 m!771006))

(assert (=> d!187049 d!187189))

(declare-fun b!524846 () Bool)

(declare-fun e!315089 () List!4895)

(declare-fun e!315090 () List!4895)

(assert (=> b!524846 (= e!315089 e!315090)))

(declare-fun c!100946 () Bool)

(assert (=> b!524846 (= c!100946 ((_ is Leaf!2535) (c!100889 (BalanceConc!3189 Empty!1590))))))

(declare-fun d!187191 () Bool)

(declare-fun c!100945 () Bool)

(assert (=> d!187191 (= c!100945 ((_ is Empty!1590) (c!100889 (BalanceConc!3189 Empty!1590))))))

(assert (=> d!187191 (= (list!2049 (c!100889 (BalanceConc!3189 Empty!1590))) e!315089)))

(declare-fun b!524845 () Bool)

(assert (=> b!524845 (= e!315089 Nil!4885)))

(declare-fun b!524847 () Bool)

(assert (=> b!524847 (= e!315090 (list!2051 (xs!4225 (c!100889 (BalanceConc!3189 Empty!1590)))))))

(declare-fun b!524848 () Bool)

(assert (=> b!524848 (= e!315090 (++!1370 (list!2049 (left!4192 (c!100889 (BalanceConc!3189 Empty!1590)))) (list!2049 (right!4522 (c!100889 (BalanceConc!3189 Empty!1590))))))))

(assert (= (and d!187191 c!100945) b!524845))

(assert (= (and d!187191 (not c!100945)) b!524846))

(assert (= (and b!524846 c!100946) b!524847))

(assert (= (and b!524846 (not c!100946)) b!524848))

(declare-fun m!771008 () Bool)

(assert (=> b!524847 m!771008))

(declare-fun m!771010 () Bool)

(assert (=> b!524848 m!771010))

(declare-fun m!771012 () Bool)

(assert (=> b!524848 m!771012))

(assert (=> b!524848 m!771010))

(assert (=> b!524848 m!771012))

(declare-fun m!771014 () Bool)

(assert (=> b!524848 m!771014))

(assert (=> d!187067 d!187191))

(declare-fun bs!65261 () Bool)

(declare-fun d!187193 () Bool)

(assert (= bs!65261 (and d!187193 d!187133)))

(declare-fun lambda!15172 () Int)

(assert (=> bs!65261 (= lambda!15172 lambda!15158)))

(declare-fun bs!65262 () Bool)

(assert (= bs!65262 (and d!187193 d!187125)))

(assert (=> bs!65262 (= lambda!15172 lambda!15156)))

(declare-fun bs!65263 () Bool)

(assert (= bs!65263 (and d!187193 d!187097)))

(assert (=> bs!65263 (= lambda!15172 lambda!15146)))

(declare-fun bs!65264 () Bool)

(assert (= bs!65264 (and d!187193 d!187093)))

(assert (=> bs!65264 (= lambda!15172 lambda!15142)))

(declare-fun bs!65265 () Bool)

(assert (= bs!65265 (and d!187193 d!187107)))

(assert (=> bs!65265 (= lambda!15172 lambda!15148)))

(declare-fun bs!65266 () Bool)

(assert (= bs!65266 (and d!187193 d!187103)))

(assert (=> bs!65266 (= lambda!15172 lambda!15147)))

(declare-fun bs!65267 () Bool)

(assert (= bs!65267 (and d!187193 d!187141)))

(assert (=> bs!65267 (= lambda!15172 lambda!15160)))

(declare-fun bs!65268 () Bool)

(assert (= bs!65268 (and d!187193 d!187157)))

(assert (=> bs!65268 (= lambda!15172 lambda!15161)))

(declare-fun bs!65269 () Bool)

(assert (= bs!65269 (and d!187193 d!187169)))

(assert (=> bs!65269 (= lambda!15172 lambda!15164)))

(declare-fun bs!65270 () Bool)

(assert (= bs!65270 (and d!187193 d!187111)))

(assert (=> bs!65270 (= lambda!15172 lambda!15150)))

(declare-fun bs!65271 () Bool)

(assert (= bs!65271 (and d!187193 d!187137)))

(assert (=> bs!65271 (= lambda!15172 lambda!15159)))

(declare-fun bs!65272 () Bool)

(assert (= bs!65272 (and d!187193 d!187131)))

(assert (=> bs!65272 (= lambda!15172 lambda!15157)))

(declare-fun bs!65273 () Bool)

(assert (= bs!65273 (and d!187193 d!187113)))

(assert (=> bs!65273 (= lambda!15172 lambda!15151)))

(declare-fun bs!65274 () Bool)

(assert (= bs!65274 (and d!187193 d!187163)))

(assert (=> bs!65274 (= lambda!15172 lambda!15163)))

(declare-fun bs!65275 () Bool)

(assert (= bs!65275 (and d!187193 d!187119)))

(assert (=> bs!65275 (= lambda!15172 lambda!15152)))

(declare-fun bs!65276 () Bool)

(assert (= bs!65276 (and d!187193 d!187171)))

(assert (=> bs!65276 (= lambda!15172 lambda!15165)))

(declare-fun bs!65277 () Bool)

(assert (= bs!65277 (and d!187193 d!187161)))

(assert (=> bs!65277 (= lambda!15172 lambda!15162)))

(declare-fun bs!65278 () Bool)

(assert (= bs!65278 (and d!187193 d!187109)))

(assert (=> bs!65278 (= lambda!15172 lambda!15149)))

(assert (=> d!187193 (= (inv!6158 setElem!2377) (forall!1480 (exprs!647 setElem!2377) lambda!15172))))

(declare-fun bs!65279 () Bool)

(assert (= bs!65279 d!187193))

(declare-fun m!771016 () Bool)

(assert (=> bs!65279 m!771016))

(assert (=> setNonEmpty!2377 d!187193))

(declare-fun bs!65280 () Bool)

(declare-fun d!187195 () Bool)

(assert (= bs!65280 (and d!187195 d!187133)))

(declare-fun lambda!15173 () Int)

(assert (=> bs!65280 (= lambda!15173 lambda!15158)))

(declare-fun bs!65281 () Bool)

(assert (= bs!65281 (and d!187195 d!187125)))

(assert (=> bs!65281 (= lambda!15173 lambda!15156)))

(declare-fun bs!65282 () Bool)

(assert (= bs!65282 (and d!187195 d!187097)))

(assert (=> bs!65282 (= lambda!15173 lambda!15146)))

(declare-fun bs!65283 () Bool)

(assert (= bs!65283 (and d!187195 d!187093)))

(assert (=> bs!65283 (= lambda!15173 lambda!15142)))

(declare-fun bs!65284 () Bool)

(assert (= bs!65284 (and d!187195 d!187107)))

(assert (=> bs!65284 (= lambda!15173 lambda!15148)))

(declare-fun bs!65285 () Bool)

(assert (= bs!65285 (and d!187195 d!187103)))

(assert (=> bs!65285 (= lambda!15173 lambda!15147)))

(declare-fun bs!65286 () Bool)

(assert (= bs!65286 (and d!187195 d!187193)))

(assert (=> bs!65286 (= lambda!15173 lambda!15172)))

(declare-fun bs!65287 () Bool)

(assert (= bs!65287 (and d!187195 d!187141)))

(assert (=> bs!65287 (= lambda!15173 lambda!15160)))

(declare-fun bs!65288 () Bool)

(assert (= bs!65288 (and d!187195 d!187157)))

(assert (=> bs!65288 (= lambda!15173 lambda!15161)))

(declare-fun bs!65289 () Bool)

(assert (= bs!65289 (and d!187195 d!187169)))

(assert (=> bs!65289 (= lambda!15173 lambda!15164)))

(declare-fun bs!65290 () Bool)

(assert (= bs!65290 (and d!187195 d!187111)))

(assert (=> bs!65290 (= lambda!15173 lambda!15150)))

(declare-fun bs!65291 () Bool)

(assert (= bs!65291 (and d!187195 d!187137)))

(assert (=> bs!65291 (= lambda!15173 lambda!15159)))

(declare-fun bs!65292 () Bool)

(assert (= bs!65292 (and d!187195 d!187131)))

(assert (=> bs!65292 (= lambda!15173 lambda!15157)))

(declare-fun bs!65293 () Bool)

(assert (= bs!65293 (and d!187195 d!187113)))

(assert (=> bs!65293 (= lambda!15173 lambda!15151)))

(declare-fun bs!65294 () Bool)

(assert (= bs!65294 (and d!187195 d!187163)))

(assert (=> bs!65294 (= lambda!15173 lambda!15163)))

(declare-fun bs!65295 () Bool)

(assert (= bs!65295 (and d!187195 d!187119)))

(assert (=> bs!65295 (= lambda!15173 lambda!15152)))

(declare-fun bs!65296 () Bool)

(assert (= bs!65296 (and d!187195 d!187171)))

(assert (=> bs!65296 (= lambda!15173 lambda!15165)))

(declare-fun bs!65297 () Bool)

(assert (= bs!65297 (and d!187195 d!187161)))

(assert (=> bs!65297 (= lambda!15173 lambda!15162)))

(declare-fun bs!65298 () Bool)

(assert (= bs!65298 (and d!187195 d!187109)))

(assert (=> bs!65298 (= lambda!15173 lambda!15149)))

(assert (=> d!187195 (= (inv!6158 (_2!3236 (_1!3237 (h!10285 mapValue!2197)))) (forall!1480 (exprs!647 (_2!3236 (_1!3237 (h!10285 mapValue!2197)))) lambda!15173))))

(declare-fun bs!65299 () Bool)

(assert (= bs!65299 d!187195))

(declare-fun m!771018 () Bool)

(assert (=> bs!65299 m!771018))

(assert (=> b!524637 d!187195))

(declare-fun d!187197 () Bool)

(declare-fun res!222328 () Bool)

(declare-fun e!315093 () Bool)

(assert (=> d!187197 (=> (not res!222328) (not e!315093))))

(assert (=> d!187197 (= res!222328 (<= (size!3990 (list!2051 (xs!4225 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) 512))))

(assert (=> d!187197 (= (inv!6157 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) e!315093)))

(declare-fun b!524853 () Bool)

(declare-fun res!222329 () Bool)

(assert (=> b!524853 (=> (not res!222329) (not e!315093))))

(assert (=> b!524853 (= res!222329 (= (csize!3411 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) (size!3990 (list!2051 (xs!4225 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))))

(declare-fun b!524854 () Bool)

(assert (=> b!524854 (= e!315093 (and (> (csize!3411 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) 0) (<= (csize!3411 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) 512)))))

(assert (= (and d!187197 res!222328) b!524853))

(assert (= (and b!524853 res!222329) b!524854))

(declare-fun m!771020 () Bool)

(assert (=> d!187197 m!771020))

(assert (=> d!187197 m!771020))

(declare-fun m!771022 () Bool)

(assert (=> d!187197 m!771022))

(assert (=> b!524853 m!771020))

(assert (=> b!524853 m!771020))

(assert (=> b!524853 m!771022))

(assert (=> b!524509 d!187197))

(declare-fun bs!65300 () Bool)

(declare-fun d!187199 () Bool)

(assert (= bs!65300 (and d!187199 d!187133)))

(declare-fun lambda!15174 () Int)

(assert (=> bs!65300 (= lambda!15174 lambda!15158)))

(declare-fun bs!65301 () Bool)

(assert (= bs!65301 (and d!187199 d!187097)))

(assert (=> bs!65301 (= lambda!15174 lambda!15146)))

(declare-fun bs!65302 () Bool)

(assert (= bs!65302 (and d!187199 d!187093)))

(assert (=> bs!65302 (= lambda!15174 lambda!15142)))

(declare-fun bs!65303 () Bool)

(assert (= bs!65303 (and d!187199 d!187107)))

(assert (=> bs!65303 (= lambda!15174 lambda!15148)))

(declare-fun bs!65304 () Bool)

(assert (= bs!65304 (and d!187199 d!187103)))

(assert (=> bs!65304 (= lambda!15174 lambda!15147)))

(declare-fun bs!65305 () Bool)

(assert (= bs!65305 (and d!187199 d!187193)))

(assert (=> bs!65305 (= lambda!15174 lambda!15172)))

(declare-fun bs!65306 () Bool)

(assert (= bs!65306 (and d!187199 d!187141)))

(assert (=> bs!65306 (= lambda!15174 lambda!15160)))

(declare-fun bs!65307 () Bool)

(assert (= bs!65307 (and d!187199 d!187157)))

(assert (=> bs!65307 (= lambda!15174 lambda!15161)))

(declare-fun bs!65308 () Bool)

(assert (= bs!65308 (and d!187199 d!187169)))

(assert (=> bs!65308 (= lambda!15174 lambda!15164)))

(declare-fun bs!65309 () Bool)

(assert (= bs!65309 (and d!187199 d!187195)))

(assert (=> bs!65309 (= lambda!15174 lambda!15173)))

(declare-fun bs!65310 () Bool)

(assert (= bs!65310 (and d!187199 d!187125)))

(assert (=> bs!65310 (= lambda!15174 lambda!15156)))

(declare-fun bs!65311 () Bool)

(assert (= bs!65311 (and d!187199 d!187111)))

(assert (=> bs!65311 (= lambda!15174 lambda!15150)))

(declare-fun bs!65312 () Bool)

(assert (= bs!65312 (and d!187199 d!187137)))

(assert (=> bs!65312 (= lambda!15174 lambda!15159)))

(declare-fun bs!65313 () Bool)

(assert (= bs!65313 (and d!187199 d!187131)))

(assert (=> bs!65313 (= lambda!15174 lambda!15157)))

(declare-fun bs!65314 () Bool)

(assert (= bs!65314 (and d!187199 d!187113)))

(assert (=> bs!65314 (= lambda!15174 lambda!15151)))

(declare-fun bs!65315 () Bool)

(assert (= bs!65315 (and d!187199 d!187163)))

(assert (=> bs!65315 (= lambda!15174 lambda!15163)))

(declare-fun bs!65316 () Bool)

(assert (= bs!65316 (and d!187199 d!187119)))

(assert (=> bs!65316 (= lambda!15174 lambda!15152)))

(declare-fun bs!65317 () Bool)

(assert (= bs!65317 (and d!187199 d!187171)))

(assert (=> bs!65317 (= lambda!15174 lambda!15165)))

(declare-fun bs!65318 () Bool)

(assert (= bs!65318 (and d!187199 d!187161)))

(assert (=> bs!65318 (= lambda!15174 lambda!15162)))

(declare-fun bs!65319 () Bool)

(assert (= bs!65319 (and d!187199 d!187109)))

(assert (=> bs!65319 (= lambda!15174 lambda!15149)))

(assert (=> d!187199 (= (inv!6158 setElem!2381) (forall!1480 (exprs!647 setElem!2381) lambda!15174))))

(declare-fun bs!65320 () Bool)

(assert (= bs!65320 d!187199))

(declare-fun m!771024 () Bool)

(assert (=> bs!65320 m!771024))

(assert (=> setNonEmpty!2381 d!187199))

(declare-fun d!187201 () Bool)

(declare-fun c!100947 () Bool)

(assert (=> d!187201 (= c!100947 ((_ is Node!1590) (left!4192 (c!100889 input!747))))))

(declare-fun e!315094 () Bool)

(assert (=> d!187201 (= (inv!6154 (left!4192 (c!100889 input!747))) e!315094)))

(declare-fun b!524855 () Bool)

(assert (=> b!524855 (= e!315094 (inv!6156 (left!4192 (c!100889 input!747))))))

(declare-fun b!524856 () Bool)

(declare-fun e!315095 () Bool)

(assert (=> b!524856 (= e!315094 e!315095)))

(declare-fun res!222330 () Bool)

(assert (=> b!524856 (= res!222330 (not ((_ is Leaf!2535) (left!4192 (c!100889 input!747)))))))

(assert (=> b!524856 (=> res!222330 e!315095)))

(declare-fun b!524857 () Bool)

(assert (=> b!524857 (= e!315095 (inv!6157 (left!4192 (c!100889 input!747))))))

(assert (= (and d!187201 c!100947) b!524855))

(assert (= (and d!187201 (not c!100947)) b!524856))

(assert (= (and b!524856 (not res!222330)) b!524857))

(declare-fun m!771026 () Bool)

(assert (=> b!524855 m!771026))

(declare-fun m!771028 () Bool)

(assert (=> b!524857 m!771028))

(assert (=> b!524580 d!187201))

(declare-fun d!187203 () Bool)

(declare-fun c!100948 () Bool)

(assert (=> d!187203 (= c!100948 ((_ is Node!1590) (right!4522 (c!100889 input!747))))))

(declare-fun e!315096 () Bool)

(assert (=> d!187203 (= (inv!6154 (right!4522 (c!100889 input!747))) e!315096)))

(declare-fun b!524858 () Bool)

(assert (=> b!524858 (= e!315096 (inv!6156 (right!4522 (c!100889 input!747))))))

(declare-fun b!524859 () Bool)

(declare-fun e!315097 () Bool)

(assert (=> b!524859 (= e!315096 e!315097)))

(declare-fun res!222331 () Bool)

(assert (=> b!524859 (= res!222331 (not ((_ is Leaf!2535) (right!4522 (c!100889 input!747)))))))

(assert (=> b!524859 (=> res!222331 e!315097)))

(declare-fun b!524860 () Bool)

(assert (=> b!524860 (= e!315097 (inv!6157 (right!4522 (c!100889 input!747))))))

(assert (= (and d!187203 c!100948) b!524858))

(assert (= (and d!187203 (not c!100948)) b!524859))

(assert (= (and b!524859 (not res!222331)) b!524860))

(declare-fun m!771030 () Bool)

(assert (=> b!524858 m!771030))

(declare-fun m!771032 () Bool)

(assert (=> b!524860 m!771032))

(assert (=> b!524580 d!187203))

(declare-fun d!187205 () Bool)

(assert (=> d!187205 true))

(declare-fun order!4363 () Int)

(declare-fun order!4365 () Int)

(declare-fun lambda!15177 () Int)

(declare-fun dynLambda!3025 (Int Int) Int)

(declare-fun dynLambda!3026 (Int Int) Int)

(assert (=> d!187205 (< (dynLambda!3025 order!4363 (toValue!1715 (transformation!884 (h!10291 rules!1345)))) (dynLambda!3026 order!4365 lambda!15177))))

(declare-fun Forall2!195 (Int) Bool)

(assert (=> d!187205 (= (equivClasses!337 (toChars!1574 (transformation!884 (h!10291 rules!1345))) (toValue!1715 (transformation!884 (h!10291 rules!1345)))) (Forall2!195 lambda!15177))))

(declare-fun bs!65321 () Bool)

(assert (= bs!65321 d!187205))

(declare-fun m!771034 () Bool)

(assert (=> bs!65321 m!771034))

(assert (=> b!524512 d!187205))

(declare-fun bs!65322 () Bool)

(declare-fun d!187207 () Bool)

(assert (= bs!65322 (and d!187207 d!187133)))

(declare-fun lambda!15178 () Int)

(assert (=> bs!65322 (= lambda!15178 lambda!15158)))

(declare-fun bs!65323 () Bool)

(assert (= bs!65323 (and d!187207 d!187097)))

(assert (=> bs!65323 (= lambda!15178 lambda!15146)))

(declare-fun bs!65324 () Bool)

(assert (= bs!65324 (and d!187207 d!187199)))

(assert (=> bs!65324 (= lambda!15178 lambda!15174)))

(declare-fun bs!65325 () Bool)

(assert (= bs!65325 (and d!187207 d!187093)))

(assert (=> bs!65325 (= lambda!15178 lambda!15142)))

(declare-fun bs!65326 () Bool)

(assert (= bs!65326 (and d!187207 d!187107)))

(assert (=> bs!65326 (= lambda!15178 lambda!15148)))

(declare-fun bs!65327 () Bool)

(assert (= bs!65327 (and d!187207 d!187103)))

(assert (=> bs!65327 (= lambda!15178 lambda!15147)))

(declare-fun bs!65328 () Bool)

(assert (= bs!65328 (and d!187207 d!187193)))

(assert (=> bs!65328 (= lambda!15178 lambda!15172)))

(declare-fun bs!65329 () Bool)

(assert (= bs!65329 (and d!187207 d!187141)))

(assert (=> bs!65329 (= lambda!15178 lambda!15160)))

(declare-fun bs!65330 () Bool)

(assert (= bs!65330 (and d!187207 d!187157)))

(assert (=> bs!65330 (= lambda!15178 lambda!15161)))

(declare-fun bs!65331 () Bool)

(assert (= bs!65331 (and d!187207 d!187169)))

(assert (=> bs!65331 (= lambda!15178 lambda!15164)))

(declare-fun bs!65332 () Bool)

(assert (= bs!65332 (and d!187207 d!187195)))

(assert (=> bs!65332 (= lambda!15178 lambda!15173)))

(declare-fun bs!65333 () Bool)

(assert (= bs!65333 (and d!187207 d!187125)))

(assert (=> bs!65333 (= lambda!15178 lambda!15156)))

(declare-fun bs!65334 () Bool)

(assert (= bs!65334 (and d!187207 d!187111)))

(assert (=> bs!65334 (= lambda!15178 lambda!15150)))

(declare-fun bs!65335 () Bool)

(assert (= bs!65335 (and d!187207 d!187137)))

(assert (=> bs!65335 (= lambda!15178 lambda!15159)))

(declare-fun bs!65336 () Bool)

(assert (= bs!65336 (and d!187207 d!187131)))

(assert (=> bs!65336 (= lambda!15178 lambda!15157)))

(declare-fun bs!65337 () Bool)

(assert (= bs!65337 (and d!187207 d!187113)))

(assert (=> bs!65337 (= lambda!15178 lambda!15151)))

(declare-fun bs!65338 () Bool)

(assert (= bs!65338 (and d!187207 d!187163)))

(assert (=> bs!65338 (= lambda!15178 lambda!15163)))

(declare-fun bs!65339 () Bool)

(assert (= bs!65339 (and d!187207 d!187119)))

(assert (=> bs!65339 (= lambda!15178 lambda!15152)))

(declare-fun bs!65340 () Bool)

(assert (= bs!65340 (and d!187207 d!187171)))

(assert (=> bs!65340 (= lambda!15178 lambda!15165)))

(declare-fun bs!65341 () Bool)

(assert (= bs!65341 (and d!187207 d!187161)))

(assert (=> bs!65341 (= lambda!15178 lambda!15162)))

(declare-fun bs!65342 () Bool)

(assert (= bs!65342 (and d!187207 d!187109)))

(assert (=> bs!65342 (= lambda!15178 lambda!15149)))

(assert (=> d!187207 (= (inv!6158 (_2!3236 (_1!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))))) (forall!1480 (exprs!647 (_2!3236 (_1!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))))) lambda!15178))))

(declare-fun bs!65343 () Bool)

(assert (= bs!65343 d!187207))

(declare-fun m!771036 () Bool)

(assert (=> bs!65343 m!771036))

(assert (=> b!524591 d!187207))

(declare-fun bs!65344 () Bool)

(declare-fun d!187209 () Bool)

(assert (= bs!65344 (and d!187209 d!187133)))

(declare-fun lambda!15179 () Int)

(assert (=> bs!65344 (= lambda!15179 lambda!15158)))

(declare-fun bs!65345 () Bool)

(assert (= bs!65345 (and d!187209 d!187097)))

(assert (=> bs!65345 (= lambda!15179 lambda!15146)))

(declare-fun bs!65346 () Bool)

(assert (= bs!65346 (and d!187209 d!187199)))

(assert (=> bs!65346 (= lambda!15179 lambda!15174)))

(declare-fun bs!65347 () Bool)

(assert (= bs!65347 (and d!187209 d!187093)))

(assert (=> bs!65347 (= lambda!15179 lambda!15142)))

(declare-fun bs!65348 () Bool)

(assert (= bs!65348 (and d!187209 d!187107)))

(assert (=> bs!65348 (= lambda!15179 lambda!15148)))

(declare-fun bs!65349 () Bool)

(assert (= bs!65349 (and d!187209 d!187207)))

(assert (=> bs!65349 (= lambda!15179 lambda!15178)))

(declare-fun bs!65350 () Bool)

(assert (= bs!65350 (and d!187209 d!187103)))

(assert (=> bs!65350 (= lambda!15179 lambda!15147)))

(declare-fun bs!65351 () Bool)

(assert (= bs!65351 (and d!187209 d!187193)))

(assert (=> bs!65351 (= lambda!15179 lambda!15172)))

(declare-fun bs!65352 () Bool)

(assert (= bs!65352 (and d!187209 d!187141)))

(assert (=> bs!65352 (= lambda!15179 lambda!15160)))

(declare-fun bs!65353 () Bool)

(assert (= bs!65353 (and d!187209 d!187157)))

(assert (=> bs!65353 (= lambda!15179 lambda!15161)))

(declare-fun bs!65354 () Bool)

(assert (= bs!65354 (and d!187209 d!187169)))

(assert (=> bs!65354 (= lambda!15179 lambda!15164)))

(declare-fun bs!65355 () Bool)

(assert (= bs!65355 (and d!187209 d!187195)))

(assert (=> bs!65355 (= lambda!15179 lambda!15173)))

(declare-fun bs!65356 () Bool)

(assert (= bs!65356 (and d!187209 d!187125)))

(assert (=> bs!65356 (= lambda!15179 lambda!15156)))

(declare-fun bs!65357 () Bool)

(assert (= bs!65357 (and d!187209 d!187111)))

(assert (=> bs!65357 (= lambda!15179 lambda!15150)))

(declare-fun bs!65358 () Bool)

(assert (= bs!65358 (and d!187209 d!187137)))

(assert (=> bs!65358 (= lambda!15179 lambda!15159)))

(declare-fun bs!65359 () Bool)

(assert (= bs!65359 (and d!187209 d!187131)))

(assert (=> bs!65359 (= lambda!15179 lambda!15157)))

(declare-fun bs!65360 () Bool)

(assert (= bs!65360 (and d!187209 d!187113)))

(assert (=> bs!65360 (= lambda!15179 lambda!15151)))

(declare-fun bs!65361 () Bool)

(assert (= bs!65361 (and d!187209 d!187163)))

(assert (=> bs!65361 (= lambda!15179 lambda!15163)))

(declare-fun bs!65362 () Bool)

(assert (= bs!65362 (and d!187209 d!187119)))

(assert (=> bs!65362 (= lambda!15179 lambda!15152)))

(declare-fun bs!65363 () Bool)

(assert (= bs!65363 (and d!187209 d!187171)))

(assert (=> bs!65363 (= lambda!15179 lambda!15165)))

(declare-fun bs!65364 () Bool)

(assert (= bs!65364 (and d!187209 d!187161)))

(assert (=> bs!65364 (= lambda!15179 lambda!15162)))

(declare-fun bs!65365 () Bool)

(assert (= bs!65365 (and d!187209 d!187109)))

(assert (=> bs!65365 (= lambda!15179 lambda!15149)))

(assert (=> d!187209 (= (inv!6158 (_2!3236 (_1!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))))) (forall!1480 (exprs!647 (_2!3236 (_1!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))))) lambda!15179))))

(declare-fun bs!65366 () Bool)

(assert (= bs!65366 d!187209))

(declare-fun m!771038 () Bool)

(assert (=> bs!65366 m!771038))

(assert (=> b!524594 d!187209))

(declare-fun bs!65367 () Bool)

(declare-fun d!187211 () Bool)

(assert (= bs!65367 (and d!187211 d!187097)))

(declare-fun lambda!15180 () Int)

(assert (=> bs!65367 (= lambda!15180 lambda!15146)))

(declare-fun bs!65368 () Bool)

(assert (= bs!65368 (and d!187211 d!187199)))

(assert (=> bs!65368 (= lambda!15180 lambda!15174)))

(declare-fun bs!65369 () Bool)

(assert (= bs!65369 (and d!187211 d!187093)))

(assert (=> bs!65369 (= lambda!15180 lambda!15142)))

(declare-fun bs!65370 () Bool)

(assert (= bs!65370 (and d!187211 d!187107)))

(assert (=> bs!65370 (= lambda!15180 lambda!15148)))

(declare-fun bs!65371 () Bool)

(assert (= bs!65371 (and d!187211 d!187207)))

(assert (=> bs!65371 (= lambda!15180 lambda!15178)))

(declare-fun bs!65372 () Bool)

(assert (= bs!65372 (and d!187211 d!187103)))

(assert (=> bs!65372 (= lambda!15180 lambda!15147)))

(declare-fun bs!65373 () Bool)

(assert (= bs!65373 (and d!187211 d!187193)))

(assert (=> bs!65373 (= lambda!15180 lambda!15172)))

(declare-fun bs!65374 () Bool)

(assert (= bs!65374 (and d!187211 d!187141)))

(assert (=> bs!65374 (= lambda!15180 lambda!15160)))

(declare-fun bs!65375 () Bool)

(assert (= bs!65375 (and d!187211 d!187133)))

(assert (=> bs!65375 (= lambda!15180 lambda!15158)))

(declare-fun bs!65376 () Bool)

(assert (= bs!65376 (and d!187211 d!187209)))

(assert (=> bs!65376 (= lambda!15180 lambda!15179)))

(declare-fun bs!65377 () Bool)

(assert (= bs!65377 (and d!187211 d!187157)))

(assert (=> bs!65377 (= lambda!15180 lambda!15161)))

(declare-fun bs!65378 () Bool)

(assert (= bs!65378 (and d!187211 d!187169)))

(assert (=> bs!65378 (= lambda!15180 lambda!15164)))

(declare-fun bs!65379 () Bool)

(assert (= bs!65379 (and d!187211 d!187195)))

(assert (=> bs!65379 (= lambda!15180 lambda!15173)))

(declare-fun bs!65380 () Bool)

(assert (= bs!65380 (and d!187211 d!187125)))

(assert (=> bs!65380 (= lambda!15180 lambda!15156)))

(declare-fun bs!65381 () Bool)

(assert (= bs!65381 (and d!187211 d!187111)))

(assert (=> bs!65381 (= lambda!15180 lambda!15150)))

(declare-fun bs!65382 () Bool)

(assert (= bs!65382 (and d!187211 d!187137)))

(assert (=> bs!65382 (= lambda!15180 lambda!15159)))

(declare-fun bs!65383 () Bool)

(assert (= bs!65383 (and d!187211 d!187131)))

(assert (=> bs!65383 (= lambda!15180 lambda!15157)))

(declare-fun bs!65384 () Bool)

(assert (= bs!65384 (and d!187211 d!187113)))

(assert (=> bs!65384 (= lambda!15180 lambda!15151)))

(declare-fun bs!65385 () Bool)

(assert (= bs!65385 (and d!187211 d!187163)))

(assert (=> bs!65385 (= lambda!15180 lambda!15163)))

(declare-fun bs!65386 () Bool)

(assert (= bs!65386 (and d!187211 d!187119)))

(assert (=> bs!65386 (= lambda!15180 lambda!15152)))

(declare-fun bs!65387 () Bool)

(assert (= bs!65387 (and d!187211 d!187171)))

(assert (=> bs!65387 (= lambda!15180 lambda!15165)))

(declare-fun bs!65388 () Bool)

(assert (= bs!65388 (and d!187211 d!187161)))

(assert (=> bs!65388 (= lambda!15180 lambda!15162)))

(declare-fun bs!65389 () Bool)

(assert (= bs!65389 (and d!187211 d!187109)))

(assert (=> bs!65389 (= lambda!15180 lambda!15149)))

(assert (=> d!187211 (= (inv!6158 (_2!3236 (_1!3237 (h!10285 mapDefault!2198)))) (forall!1480 (exprs!647 (_2!3236 (_1!3237 (h!10285 mapDefault!2198)))) lambda!15180))))

(declare-fun bs!65390 () Bool)

(assert (= bs!65390 d!187211))

(declare-fun m!771040 () Bool)

(assert (=> bs!65390 m!771040))

(assert (=> b!524597 d!187211))

(declare-fun bs!65391 () Bool)

(declare-fun d!187213 () Bool)

(assert (= bs!65391 (and d!187213 d!187211)))

(declare-fun lambda!15181 () Int)

(assert (=> bs!65391 (= lambda!15181 lambda!15180)))

(declare-fun bs!65392 () Bool)

(assert (= bs!65392 (and d!187213 d!187097)))

(assert (=> bs!65392 (= lambda!15181 lambda!15146)))

(declare-fun bs!65393 () Bool)

(assert (= bs!65393 (and d!187213 d!187199)))

(assert (=> bs!65393 (= lambda!15181 lambda!15174)))

(declare-fun bs!65394 () Bool)

(assert (= bs!65394 (and d!187213 d!187093)))

(assert (=> bs!65394 (= lambda!15181 lambda!15142)))

(declare-fun bs!65395 () Bool)

(assert (= bs!65395 (and d!187213 d!187107)))

(assert (=> bs!65395 (= lambda!15181 lambda!15148)))

(declare-fun bs!65396 () Bool)

(assert (= bs!65396 (and d!187213 d!187207)))

(assert (=> bs!65396 (= lambda!15181 lambda!15178)))

(declare-fun bs!65397 () Bool)

(assert (= bs!65397 (and d!187213 d!187103)))

(assert (=> bs!65397 (= lambda!15181 lambda!15147)))

(declare-fun bs!65398 () Bool)

(assert (= bs!65398 (and d!187213 d!187193)))

(assert (=> bs!65398 (= lambda!15181 lambda!15172)))

(declare-fun bs!65399 () Bool)

(assert (= bs!65399 (and d!187213 d!187141)))

(assert (=> bs!65399 (= lambda!15181 lambda!15160)))

(declare-fun bs!65400 () Bool)

(assert (= bs!65400 (and d!187213 d!187133)))

(assert (=> bs!65400 (= lambda!15181 lambda!15158)))

(declare-fun bs!65401 () Bool)

(assert (= bs!65401 (and d!187213 d!187209)))

(assert (=> bs!65401 (= lambda!15181 lambda!15179)))

(declare-fun bs!65402 () Bool)

(assert (= bs!65402 (and d!187213 d!187157)))

(assert (=> bs!65402 (= lambda!15181 lambda!15161)))

(declare-fun bs!65403 () Bool)

(assert (= bs!65403 (and d!187213 d!187169)))

(assert (=> bs!65403 (= lambda!15181 lambda!15164)))

(declare-fun bs!65404 () Bool)

(assert (= bs!65404 (and d!187213 d!187195)))

(assert (=> bs!65404 (= lambda!15181 lambda!15173)))

(declare-fun bs!65405 () Bool)

(assert (= bs!65405 (and d!187213 d!187125)))

(assert (=> bs!65405 (= lambda!15181 lambda!15156)))

(declare-fun bs!65406 () Bool)

(assert (= bs!65406 (and d!187213 d!187111)))

(assert (=> bs!65406 (= lambda!15181 lambda!15150)))

(declare-fun bs!65407 () Bool)

(assert (= bs!65407 (and d!187213 d!187137)))

(assert (=> bs!65407 (= lambda!15181 lambda!15159)))

(declare-fun bs!65408 () Bool)

(assert (= bs!65408 (and d!187213 d!187131)))

(assert (=> bs!65408 (= lambda!15181 lambda!15157)))

(declare-fun bs!65409 () Bool)

(assert (= bs!65409 (and d!187213 d!187113)))

(assert (=> bs!65409 (= lambda!15181 lambda!15151)))

(declare-fun bs!65410 () Bool)

(assert (= bs!65410 (and d!187213 d!187163)))

(assert (=> bs!65410 (= lambda!15181 lambda!15163)))

(declare-fun bs!65411 () Bool)

(assert (= bs!65411 (and d!187213 d!187119)))

(assert (=> bs!65411 (= lambda!15181 lambda!15152)))

(declare-fun bs!65412 () Bool)

(assert (= bs!65412 (and d!187213 d!187171)))

(assert (=> bs!65412 (= lambda!15181 lambda!15165)))

(declare-fun bs!65413 () Bool)

(assert (= bs!65413 (and d!187213 d!187161)))

(assert (=> bs!65413 (= lambda!15181 lambda!15162)))

(declare-fun bs!65414 () Bool)

(assert (= bs!65414 (and d!187213 d!187109)))

(assert (=> bs!65414 (= lambda!15181 lambda!15149)))

(assert (=> d!187213 (= (inv!6158 (_2!3236 (_1!3237 (h!10285 mapDefault!2204)))) (forall!1480 (exprs!647 (_2!3236 (_1!3237 (h!10285 mapDefault!2204)))) lambda!15181))))

(declare-fun bs!65415 () Bool)

(assert (= bs!65415 d!187213))

(declare-fun m!771042 () Bool)

(assert (=> bs!65415 m!771042))

(assert (=> b!524635 d!187213))

(declare-fun bs!65416 () Bool)

(declare-fun d!187215 () Bool)

(assert (= bs!65416 (and d!187215 d!187097)))

(declare-fun lambda!15182 () Int)

(assert (=> bs!65416 (= lambda!15182 lambda!15146)))

(declare-fun bs!65417 () Bool)

(assert (= bs!65417 (and d!187215 d!187199)))

(assert (=> bs!65417 (= lambda!15182 lambda!15174)))

(declare-fun bs!65418 () Bool)

(assert (= bs!65418 (and d!187215 d!187093)))

(assert (=> bs!65418 (= lambda!15182 lambda!15142)))

(declare-fun bs!65419 () Bool)

(assert (= bs!65419 (and d!187215 d!187107)))

(assert (=> bs!65419 (= lambda!15182 lambda!15148)))

(declare-fun bs!65420 () Bool)

(assert (= bs!65420 (and d!187215 d!187207)))

(assert (=> bs!65420 (= lambda!15182 lambda!15178)))

(declare-fun bs!65421 () Bool)

(assert (= bs!65421 (and d!187215 d!187103)))

(assert (=> bs!65421 (= lambda!15182 lambda!15147)))

(declare-fun bs!65422 () Bool)

(assert (= bs!65422 (and d!187215 d!187193)))

(assert (=> bs!65422 (= lambda!15182 lambda!15172)))

(declare-fun bs!65423 () Bool)

(assert (= bs!65423 (and d!187215 d!187141)))

(assert (=> bs!65423 (= lambda!15182 lambda!15160)))

(declare-fun bs!65424 () Bool)

(assert (= bs!65424 (and d!187215 d!187133)))

(assert (=> bs!65424 (= lambda!15182 lambda!15158)))

(declare-fun bs!65425 () Bool)

(assert (= bs!65425 (and d!187215 d!187209)))

(assert (=> bs!65425 (= lambda!15182 lambda!15179)))

(declare-fun bs!65426 () Bool)

(assert (= bs!65426 (and d!187215 d!187213)))

(assert (=> bs!65426 (= lambda!15182 lambda!15181)))

(declare-fun bs!65427 () Bool)

(assert (= bs!65427 (and d!187215 d!187211)))

(assert (=> bs!65427 (= lambda!15182 lambda!15180)))

(declare-fun bs!65428 () Bool)

(assert (= bs!65428 (and d!187215 d!187157)))

(assert (=> bs!65428 (= lambda!15182 lambda!15161)))

(declare-fun bs!65429 () Bool)

(assert (= bs!65429 (and d!187215 d!187169)))

(assert (=> bs!65429 (= lambda!15182 lambda!15164)))

(declare-fun bs!65430 () Bool)

(assert (= bs!65430 (and d!187215 d!187195)))

(assert (=> bs!65430 (= lambda!15182 lambda!15173)))

(declare-fun bs!65431 () Bool)

(assert (= bs!65431 (and d!187215 d!187125)))

(assert (=> bs!65431 (= lambda!15182 lambda!15156)))

(declare-fun bs!65432 () Bool)

(assert (= bs!65432 (and d!187215 d!187111)))

(assert (=> bs!65432 (= lambda!15182 lambda!15150)))

(declare-fun bs!65433 () Bool)

(assert (= bs!65433 (and d!187215 d!187137)))

(assert (=> bs!65433 (= lambda!15182 lambda!15159)))

(declare-fun bs!65434 () Bool)

(assert (= bs!65434 (and d!187215 d!187131)))

(assert (=> bs!65434 (= lambda!15182 lambda!15157)))

(declare-fun bs!65435 () Bool)

(assert (= bs!65435 (and d!187215 d!187113)))

(assert (=> bs!65435 (= lambda!15182 lambda!15151)))

(declare-fun bs!65436 () Bool)

(assert (= bs!65436 (and d!187215 d!187163)))

(assert (=> bs!65436 (= lambda!15182 lambda!15163)))

(declare-fun bs!65437 () Bool)

(assert (= bs!65437 (and d!187215 d!187119)))

(assert (=> bs!65437 (= lambda!15182 lambda!15152)))

(declare-fun bs!65438 () Bool)

(assert (= bs!65438 (and d!187215 d!187171)))

(assert (=> bs!65438 (= lambda!15182 lambda!15165)))

(declare-fun bs!65439 () Bool)

(assert (= bs!65439 (and d!187215 d!187161)))

(assert (=> bs!65439 (= lambda!15182 lambda!15162)))

(declare-fun bs!65440 () Bool)

(assert (= bs!65440 (and d!187215 d!187109)))

(assert (=> bs!65440 (= lambda!15182 lambda!15149)))

(assert (=> d!187215 (= (inv!6158 (_1!3240 (_1!3241 (h!10288 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))))) (forall!1480 (exprs!647 (_1!3240 (_1!3241 (h!10288 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))))) lambda!15182))))

(declare-fun bs!65441 () Bool)

(assert (= bs!65441 d!187215))

(declare-fun m!771044 () Bool)

(assert (=> bs!65441 m!771044))

(assert (=> b!524679 d!187215))

(assert (=> b!524536 d!187189))

(declare-fun d!187217 () Bool)

(declare-fun res!222340 () Bool)

(declare-fun e!315102 () Bool)

(assert (=> d!187217 (=> (not res!222340) (not e!315102))))

(assert (=> d!187217 (= res!222340 (= (csize!3410 (c!100889 input!747)) (+ (size!3992 (left!4192 (c!100889 input!747))) (size!3992 (right!4522 (c!100889 input!747))))))))

(assert (=> d!187217 (= (inv!6156 (c!100889 input!747)) e!315102)))

(declare-fun b!524871 () Bool)

(declare-fun res!222341 () Bool)

(assert (=> b!524871 (=> (not res!222341) (not e!315102))))

(assert (=> b!524871 (= res!222341 (and (not (= (left!4192 (c!100889 input!747)) Empty!1590)) (not (= (right!4522 (c!100889 input!747)) Empty!1590))))))

(declare-fun b!524872 () Bool)

(declare-fun res!222342 () Bool)

(assert (=> b!524872 (=> (not res!222342) (not e!315102))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!524872 (= res!222342 (= (cheight!1801 (c!100889 input!747)) (+ (max!0 (height!248 (left!4192 (c!100889 input!747))) (height!248 (right!4522 (c!100889 input!747)))) 1)))))

(declare-fun b!524873 () Bool)

(assert (=> b!524873 (= e!315102 (<= 0 (cheight!1801 (c!100889 input!747))))))

(assert (= (and d!187217 res!222340) b!524871))

(assert (= (and b!524871 res!222341) b!524872))

(assert (= (and b!524872 res!222342) b!524873))

(declare-fun m!771046 () Bool)

(assert (=> d!187217 m!771046))

(declare-fun m!771048 () Bool)

(assert (=> d!187217 m!771048))

(assert (=> b!524872 m!770896))

(assert (=> b!524872 m!770898))

(assert (=> b!524872 m!770896))

(assert (=> b!524872 m!770898))

(declare-fun m!771050 () Bool)

(assert (=> b!524872 m!771050))

(assert (=> b!524504 d!187217))

(declare-fun bs!65442 () Bool)

(declare-fun d!187219 () Bool)

(assert (= bs!65442 (and d!187219 d!187097)))

(declare-fun lambda!15183 () Int)

(assert (=> bs!65442 (= lambda!15183 lambda!15146)))

(declare-fun bs!65443 () Bool)

(assert (= bs!65443 (and d!187219 d!187199)))

(assert (=> bs!65443 (= lambda!15183 lambda!15174)))

(declare-fun bs!65444 () Bool)

(assert (= bs!65444 (and d!187219 d!187093)))

(assert (=> bs!65444 (= lambda!15183 lambda!15142)))

(declare-fun bs!65445 () Bool)

(assert (= bs!65445 (and d!187219 d!187207)))

(assert (=> bs!65445 (= lambda!15183 lambda!15178)))

(declare-fun bs!65446 () Bool)

(assert (= bs!65446 (and d!187219 d!187103)))

(assert (=> bs!65446 (= lambda!15183 lambda!15147)))

(declare-fun bs!65447 () Bool)

(assert (= bs!65447 (and d!187219 d!187193)))

(assert (=> bs!65447 (= lambda!15183 lambda!15172)))

(declare-fun bs!65448 () Bool)

(assert (= bs!65448 (and d!187219 d!187141)))

(assert (=> bs!65448 (= lambda!15183 lambda!15160)))

(declare-fun bs!65449 () Bool)

(assert (= bs!65449 (and d!187219 d!187133)))

(assert (=> bs!65449 (= lambda!15183 lambda!15158)))

(declare-fun bs!65450 () Bool)

(assert (= bs!65450 (and d!187219 d!187209)))

(assert (=> bs!65450 (= lambda!15183 lambda!15179)))

(declare-fun bs!65451 () Bool)

(assert (= bs!65451 (and d!187219 d!187213)))

(assert (=> bs!65451 (= lambda!15183 lambda!15181)))

(declare-fun bs!65452 () Bool)

(assert (= bs!65452 (and d!187219 d!187211)))

(assert (=> bs!65452 (= lambda!15183 lambda!15180)))

(declare-fun bs!65453 () Bool)

(assert (= bs!65453 (and d!187219 d!187157)))

(assert (=> bs!65453 (= lambda!15183 lambda!15161)))

(declare-fun bs!65454 () Bool)

(assert (= bs!65454 (and d!187219 d!187169)))

(assert (=> bs!65454 (= lambda!15183 lambda!15164)))

(declare-fun bs!65455 () Bool)

(assert (= bs!65455 (and d!187219 d!187195)))

(assert (=> bs!65455 (= lambda!15183 lambda!15173)))

(declare-fun bs!65456 () Bool)

(assert (= bs!65456 (and d!187219 d!187125)))

(assert (=> bs!65456 (= lambda!15183 lambda!15156)))

(declare-fun bs!65457 () Bool)

(assert (= bs!65457 (and d!187219 d!187111)))

(assert (=> bs!65457 (= lambda!15183 lambda!15150)))

(declare-fun bs!65458 () Bool)

(assert (= bs!65458 (and d!187219 d!187137)))

(assert (=> bs!65458 (= lambda!15183 lambda!15159)))

(declare-fun bs!65459 () Bool)

(assert (= bs!65459 (and d!187219 d!187131)))

(assert (=> bs!65459 (= lambda!15183 lambda!15157)))

(declare-fun bs!65460 () Bool)

(assert (= bs!65460 (and d!187219 d!187107)))

(assert (=> bs!65460 (= lambda!15183 lambda!15148)))

(declare-fun bs!65461 () Bool)

(assert (= bs!65461 (and d!187219 d!187215)))

(assert (=> bs!65461 (= lambda!15183 lambda!15182)))

(declare-fun bs!65462 () Bool)

(assert (= bs!65462 (and d!187219 d!187113)))

(assert (=> bs!65462 (= lambda!15183 lambda!15151)))

(declare-fun bs!65463 () Bool)

(assert (= bs!65463 (and d!187219 d!187163)))

(assert (=> bs!65463 (= lambda!15183 lambda!15163)))

(declare-fun bs!65464 () Bool)

(assert (= bs!65464 (and d!187219 d!187119)))

(assert (=> bs!65464 (= lambda!15183 lambda!15152)))

(declare-fun bs!65465 () Bool)

(assert (= bs!65465 (and d!187219 d!187171)))

(assert (=> bs!65465 (= lambda!15183 lambda!15165)))

(declare-fun bs!65466 () Bool)

(assert (= bs!65466 (and d!187219 d!187161)))

(assert (=> bs!65466 (= lambda!15183 lambda!15162)))

(declare-fun bs!65467 () Bool)

(assert (= bs!65467 (and d!187219 d!187109)))

(assert (=> bs!65467 (= lambda!15183 lambda!15149)))

(assert (=> d!187219 (= (inv!6158 setElem!2379) (forall!1480 (exprs!647 setElem!2379) lambda!15183))))

(declare-fun bs!65468 () Bool)

(assert (= bs!65468 d!187219))

(declare-fun m!771052 () Bool)

(assert (=> bs!65468 m!771052))

(assert (=> setNonEmpty!2379 d!187219))

(declare-fun bs!65469 () Bool)

(declare-fun d!187221 () Bool)

(assert (= bs!65469 (and d!187221 d!187097)))

(declare-fun lambda!15184 () Int)

(assert (=> bs!65469 (= lambda!15184 lambda!15146)))

(declare-fun bs!65470 () Bool)

(assert (= bs!65470 (and d!187221 d!187199)))

(assert (=> bs!65470 (= lambda!15184 lambda!15174)))

(declare-fun bs!65471 () Bool)

(assert (= bs!65471 (and d!187221 d!187093)))

(assert (=> bs!65471 (= lambda!15184 lambda!15142)))

(declare-fun bs!65472 () Bool)

(assert (= bs!65472 (and d!187221 d!187207)))

(assert (=> bs!65472 (= lambda!15184 lambda!15178)))

(declare-fun bs!65473 () Bool)

(assert (= bs!65473 (and d!187221 d!187103)))

(assert (=> bs!65473 (= lambda!15184 lambda!15147)))

(declare-fun bs!65474 () Bool)

(assert (= bs!65474 (and d!187221 d!187219)))

(assert (=> bs!65474 (= lambda!15184 lambda!15183)))

(declare-fun bs!65475 () Bool)

(assert (= bs!65475 (and d!187221 d!187193)))

(assert (=> bs!65475 (= lambda!15184 lambda!15172)))

(declare-fun bs!65476 () Bool)

(assert (= bs!65476 (and d!187221 d!187141)))

(assert (=> bs!65476 (= lambda!15184 lambda!15160)))

(declare-fun bs!65477 () Bool)

(assert (= bs!65477 (and d!187221 d!187133)))

(assert (=> bs!65477 (= lambda!15184 lambda!15158)))

(declare-fun bs!65478 () Bool)

(assert (= bs!65478 (and d!187221 d!187209)))

(assert (=> bs!65478 (= lambda!15184 lambda!15179)))

(declare-fun bs!65479 () Bool)

(assert (= bs!65479 (and d!187221 d!187213)))

(assert (=> bs!65479 (= lambda!15184 lambda!15181)))

(declare-fun bs!65480 () Bool)

(assert (= bs!65480 (and d!187221 d!187211)))

(assert (=> bs!65480 (= lambda!15184 lambda!15180)))

(declare-fun bs!65481 () Bool)

(assert (= bs!65481 (and d!187221 d!187157)))

(assert (=> bs!65481 (= lambda!15184 lambda!15161)))

(declare-fun bs!65482 () Bool)

(assert (= bs!65482 (and d!187221 d!187169)))

(assert (=> bs!65482 (= lambda!15184 lambda!15164)))

(declare-fun bs!65483 () Bool)

(assert (= bs!65483 (and d!187221 d!187195)))

(assert (=> bs!65483 (= lambda!15184 lambda!15173)))

(declare-fun bs!65484 () Bool)

(assert (= bs!65484 (and d!187221 d!187125)))

(assert (=> bs!65484 (= lambda!15184 lambda!15156)))

(declare-fun bs!65485 () Bool)

(assert (= bs!65485 (and d!187221 d!187111)))

(assert (=> bs!65485 (= lambda!15184 lambda!15150)))

(declare-fun bs!65486 () Bool)

(assert (= bs!65486 (and d!187221 d!187137)))

(assert (=> bs!65486 (= lambda!15184 lambda!15159)))

(declare-fun bs!65487 () Bool)

(assert (= bs!65487 (and d!187221 d!187131)))

(assert (=> bs!65487 (= lambda!15184 lambda!15157)))

(declare-fun bs!65488 () Bool)

(assert (= bs!65488 (and d!187221 d!187107)))

(assert (=> bs!65488 (= lambda!15184 lambda!15148)))

(declare-fun bs!65489 () Bool)

(assert (= bs!65489 (and d!187221 d!187215)))

(assert (=> bs!65489 (= lambda!15184 lambda!15182)))

(declare-fun bs!65490 () Bool)

(assert (= bs!65490 (and d!187221 d!187113)))

(assert (=> bs!65490 (= lambda!15184 lambda!15151)))

(declare-fun bs!65491 () Bool)

(assert (= bs!65491 (and d!187221 d!187163)))

(assert (=> bs!65491 (= lambda!15184 lambda!15163)))

(declare-fun bs!65492 () Bool)

(assert (= bs!65492 (and d!187221 d!187119)))

(assert (=> bs!65492 (= lambda!15184 lambda!15152)))

(declare-fun bs!65493 () Bool)

(assert (= bs!65493 (and d!187221 d!187171)))

(assert (=> bs!65493 (= lambda!15184 lambda!15165)))

(declare-fun bs!65494 () Bool)

(assert (= bs!65494 (and d!187221 d!187161)))

(assert (=> bs!65494 (= lambda!15184 lambda!15162)))

(declare-fun bs!65495 () Bool)

(assert (= bs!65495 (and d!187221 d!187109)))

(assert (=> bs!65495 (= lambda!15184 lambda!15149)))

(assert (=> d!187221 (= (inv!6158 setElem!2368) (forall!1480 (exprs!647 setElem!2368) lambda!15184))))

(declare-fun bs!65496 () Bool)

(assert (= bs!65496 d!187221))

(declare-fun m!771054 () Bool)

(assert (=> bs!65496 m!771054))

(assert (=> setNonEmpty!2368 d!187221))

(declare-fun d!187223 () Bool)

(assert (=> d!187223 (= (inv!6148 (tag!1146 (h!10291 (t!73502 rules!1345)))) (= (mod (str.len (value!30047 (tag!1146 (h!10291 (t!73502 rules!1345))))) 2) 0))))

(assert (=> b!524568 d!187223))

(declare-fun d!187225 () Bool)

(declare-fun res!222343 () Bool)

(declare-fun e!315103 () Bool)

(assert (=> d!187225 (=> (not res!222343) (not e!315103))))

(assert (=> d!187225 (= res!222343 (semiInverseModEq!354 (toChars!1574 (transformation!884 (h!10291 (t!73502 rules!1345)))) (toValue!1715 (transformation!884 (h!10291 (t!73502 rules!1345))))))))

(assert (=> d!187225 (= (inv!6155 (transformation!884 (h!10291 (t!73502 rules!1345)))) e!315103)))

(declare-fun b!524874 () Bool)

(assert (=> b!524874 (= e!315103 (equivClasses!337 (toChars!1574 (transformation!884 (h!10291 (t!73502 rules!1345)))) (toValue!1715 (transformation!884 (h!10291 (t!73502 rules!1345))))))))

(assert (= (and d!187225 res!222343) b!524874))

(declare-fun m!771056 () Bool)

(assert (=> d!187225 m!771056))

(declare-fun m!771058 () Bool)

(assert (=> b!524874 m!771058))

(assert (=> b!524568 d!187225))

(assert (=> d!187091 d!187173))

(declare-fun b!524875 () Bool)

(declare-fun e!315105 () List!4895)

(assert (=> b!524875 (= e!315105 lt!217487)))

(declare-fun e!315104 () Bool)

(declare-fun lt!217557 () List!4895)

(declare-fun b!524878 () Bool)

(assert (=> b!524878 (= e!315104 (or (not (= lt!217487 Nil!4885)) (= lt!217557 (t!73497 lt!217489))))))

(declare-fun b!524877 () Bool)

(declare-fun res!222344 () Bool)

(assert (=> b!524877 (=> (not res!222344) (not e!315104))))

(assert (=> b!524877 (= res!222344 (= (size!3990 lt!217557) (+ (size!3990 (t!73497 lt!217489)) (size!3990 lt!217487))))))

(declare-fun d!187227 () Bool)

(assert (=> d!187227 e!315104))

(declare-fun res!222345 () Bool)

(assert (=> d!187227 (=> (not res!222345) (not e!315104))))

(assert (=> d!187227 (= res!222345 (= (content!886 lt!217557) ((_ map or) (content!886 (t!73497 lt!217489)) (content!886 lt!217487))))))

(assert (=> d!187227 (= lt!217557 e!315105)))

(declare-fun c!100949 () Bool)

(assert (=> d!187227 (= c!100949 ((_ is Nil!4885) (t!73497 lt!217489)))))

(assert (=> d!187227 (= (++!1370 (t!73497 lt!217489) lt!217487) lt!217557)))

(declare-fun b!524876 () Bool)

(assert (=> b!524876 (= e!315105 (Cons!4885 (h!10286 (t!73497 lt!217489)) (++!1370 (t!73497 (t!73497 lt!217489)) lt!217487)))))

(assert (= (and d!187227 c!100949) b!524875))

(assert (= (and d!187227 (not c!100949)) b!524876))

(assert (= (and d!187227 res!222345) b!524877))

(assert (= (and b!524877 res!222344) b!524878))

(declare-fun m!771060 () Bool)

(assert (=> b!524877 m!771060))

(assert (=> b!524877 m!770876))

(assert (=> b!524877 m!770661))

(declare-fun m!771062 () Bool)

(assert (=> d!187227 m!771062))

(assert (=> d!187227 m!770961))

(assert (=> d!187227 m!770667))

(declare-fun m!771064 () Bool)

(assert (=> b!524876 m!771064))

(assert (=> b!524522 d!187227))

(declare-fun d!187229 () Bool)

(declare-fun res!222346 () Bool)

(declare-fun e!315106 () Bool)

(assert (=> d!187229 (=> (not res!222346) (not e!315106))))

(assert (=> d!187229 (= res!222346 (= (csize!3410 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) (+ (size!3992 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) (size!3992 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))))

(assert (=> d!187229 (= (inv!6156 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) e!315106)))

(declare-fun b!524879 () Bool)

(declare-fun res!222347 () Bool)

(assert (=> b!524879 (=> (not res!222347) (not e!315106))))

(assert (=> b!524879 (= res!222347 (and (not (= (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) Empty!1590)) (not (= (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) Empty!1590))))))

(declare-fun b!524880 () Bool)

(declare-fun res!222348 () Bool)

(assert (=> b!524880 (=> (not res!222348) (not e!315106))))

(assert (=> b!524880 (= res!222348 (= (cheight!1801 (c!100889 (totalInput!1737 cacheFurthestNullable!56))) (+ (max!0 (height!248 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) (height!248 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) 1)))))

(declare-fun b!524881 () Bool)

(assert (=> b!524881 (= e!315106 (<= 0 (cheight!1801 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))))

(assert (= (and d!187229 res!222346) b!524879))

(assert (= (and b!524879 res!222347) b!524880))

(assert (= (and b!524880 res!222348) b!524881))

(declare-fun m!771066 () Bool)

(assert (=> d!187229 m!771066))

(declare-fun m!771068 () Bool)

(assert (=> d!187229 m!771068))

(assert (=> b!524880 m!770824))

(assert (=> b!524880 m!770826))

(assert (=> b!524880 m!770824))

(assert (=> b!524880 m!770826))

(declare-fun m!771070 () Bool)

(assert (=> b!524880 m!771070))

(assert (=> b!524507 d!187229))

(declare-fun d!187231 () Bool)

(declare-fun res!222349 () Bool)

(declare-fun e!315107 () Bool)

(assert (=> d!187231 (=> (not res!222349) (not e!315107))))

(assert (=> d!187231 (= res!222349 (<= (size!3990 (list!2051 (xs!4225 (c!100889 input!747)))) 512))))

(assert (=> d!187231 (= (inv!6157 (c!100889 input!747)) e!315107)))

(declare-fun b!524882 () Bool)

(declare-fun res!222350 () Bool)

(assert (=> b!524882 (=> (not res!222350) (not e!315107))))

(assert (=> b!524882 (= res!222350 (= (csize!3411 (c!100889 input!747)) (size!3990 (list!2051 (xs!4225 (c!100889 input!747))))))))

(declare-fun b!524883 () Bool)

(assert (=> b!524883 (= e!315107 (and (> (csize!3411 (c!100889 input!747)) 0) (<= (csize!3411 (c!100889 input!747)) 512)))))

(assert (= (and d!187231 res!222349) b!524882))

(assert (= (and b!524882 res!222350) b!524883))

(assert (=> d!187231 m!770838))

(assert (=> d!187231 m!770838))

(declare-fun m!771072 () Bool)

(assert (=> d!187231 m!771072))

(assert (=> b!524882 m!770838))

(assert (=> b!524882 m!770838))

(assert (=> b!524882 m!771072))

(assert (=> b!524506 d!187231))

(declare-fun bs!65497 () Bool)

(declare-fun d!187233 () Bool)

(assert (= bs!65497 (and d!187233 d!187097)))

(declare-fun lambda!15185 () Int)

(assert (=> bs!65497 (= lambda!15185 lambda!15146)))

(declare-fun bs!65498 () Bool)

(assert (= bs!65498 (and d!187233 d!187199)))

(assert (=> bs!65498 (= lambda!15185 lambda!15174)))

(declare-fun bs!65499 () Bool)

(assert (= bs!65499 (and d!187233 d!187093)))

(assert (=> bs!65499 (= lambda!15185 lambda!15142)))

(declare-fun bs!65500 () Bool)

(assert (= bs!65500 (and d!187233 d!187207)))

(assert (=> bs!65500 (= lambda!15185 lambda!15178)))

(declare-fun bs!65501 () Bool)

(assert (= bs!65501 (and d!187233 d!187103)))

(assert (=> bs!65501 (= lambda!15185 lambda!15147)))

(declare-fun bs!65502 () Bool)

(assert (= bs!65502 (and d!187233 d!187219)))

(assert (=> bs!65502 (= lambda!15185 lambda!15183)))

(declare-fun bs!65503 () Bool)

(assert (= bs!65503 (and d!187233 d!187193)))

(assert (=> bs!65503 (= lambda!15185 lambda!15172)))

(declare-fun bs!65504 () Bool)

(assert (= bs!65504 (and d!187233 d!187141)))

(assert (=> bs!65504 (= lambda!15185 lambda!15160)))

(declare-fun bs!65505 () Bool)

(assert (= bs!65505 (and d!187233 d!187133)))

(assert (=> bs!65505 (= lambda!15185 lambda!15158)))

(declare-fun bs!65506 () Bool)

(assert (= bs!65506 (and d!187233 d!187209)))

(assert (=> bs!65506 (= lambda!15185 lambda!15179)))

(declare-fun bs!65507 () Bool)

(assert (= bs!65507 (and d!187233 d!187213)))

(assert (=> bs!65507 (= lambda!15185 lambda!15181)))

(declare-fun bs!65508 () Bool)

(assert (= bs!65508 (and d!187233 d!187211)))

(assert (=> bs!65508 (= lambda!15185 lambda!15180)))

(declare-fun bs!65509 () Bool)

(assert (= bs!65509 (and d!187233 d!187157)))

(assert (=> bs!65509 (= lambda!15185 lambda!15161)))

(declare-fun bs!65510 () Bool)

(assert (= bs!65510 (and d!187233 d!187169)))

(assert (=> bs!65510 (= lambda!15185 lambda!15164)))

(declare-fun bs!65511 () Bool)

(assert (= bs!65511 (and d!187233 d!187195)))

(assert (=> bs!65511 (= lambda!15185 lambda!15173)))

(declare-fun bs!65512 () Bool)

(assert (= bs!65512 (and d!187233 d!187125)))

(assert (=> bs!65512 (= lambda!15185 lambda!15156)))

(declare-fun bs!65513 () Bool)

(assert (= bs!65513 (and d!187233 d!187221)))

(assert (=> bs!65513 (= lambda!15185 lambda!15184)))

(declare-fun bs!65514 () Bool)

(assert (= bs!65514 (and d!187233 d!187111)))

(assert (=> bs!65514 (= lambda!15185 lambda!15150)))

(declare-fun bs!65515 () Bool)

(assert (= bs!65515 (and d!187233 d!187137)))

(assert (=> bs!65515 (= lambda!15185 lambda!15159)))

(declare-fun bs!65516 () Bool)

(assert (= bs!65516 (and d!187233 d!187131)))

(assert (=> bs!65516 (= lambda!15185 lambda!15157)))

(declare-fun bs!65517 () Bool)

(assert (= bs!65517 (and d!187233 d!187107)))

(assert (=> bs!65517 (= lambda!15185 lambda!15148)))

(declare-fun bs!65518 () Bool)

(assert (= bs!65518 (and d!187233 d!187215)))

(assert (=> bs!65518 (= lambda!15185 lambda!15182)))

(declare-fun bs!65519 () Bool)

(assert (= bs!65519 (and d!187233 d!187113)))

(assert (=> bs!65519 (= lambda!15185 lambda!15151)))

(declare-fun bs!65520 () Bool)

(assert (= bs!65520 (and d!187233 d!187163)))

(assert (=> bs!65520 (= lambda!15185 lambda!15163)))

(declare-fun bs!65521 () Bool)

(assert (= bs!65521 (and d!187233 d!187119)))

(assert (=> bs!65521 (= lambda!15185 lambda!15152)))

(declare-fun bs!65522 () Bool)

(assert (= bs!65522 (and d!187233 d!187171)))

(assert (=> bs!65522 (= lambda!15185 lambda!15165)))

(declare-fun bs!65523 () Bool)

(assert (= bs!65523 (and d!187233 d!187161)))

(assert (=> bs!65523 (= lambda!15185 lambda!15162)))

(declare-fun bs!65524 () Bool)

(assert (= bs!65524 (and d!187233 d!187109)))

(assert (=> bs!65524 (= lambda!15185 lambda!15149)))

(assert (=> d!187233 (= (inv!6158 setElem!2356) (forall!1480 (exprs!647 setElem!2356) lambda!15185))))

(declare-fun bs!65525 () Bool)

(assert (= bs!65525 d!187233))

(declare-fun m!771074 () Bool)

(assert (=> bs!65525 m!771074))

(assert (=> setNonEmpty!2356 d!187233))

(declare-fun d!187235 () Bool)

(assert (=> d!187235 true))

(declare-fun order!4369 () Int)

(declare-fun order!4367 () Int)

(declare-fun lambda!15188 () Int)

(declare-fun dynLambda!3027 (Int Int) Int)

(declare-fun dynLambda!3028 (Int Int) Int)

(assert (=> d!187235 (< (dynLambda!3027 order!4367 (toChars!1574 (transformation!884 (h!10291 rules!1345)))) (dynLambda!3028 order!4369 lambda!15188))))

(assert (=> d!187235 true))

(assert (=> d!187235 (< (dynLambda!3025 order!4363 (toValue!1715 (transformation!884 (h!10291 rules!1345)))) (dynLambda!3028 order!4369 lambda!15188))))

(declare-fun Forall!269 (Int) Bool)

(assert (=> d!187235 (= (semiInverseModEq!354 (toChars!1574 (transformation!884 (h!10291 rules!1345))) (toValue!1715 (transformation!884 (h!10291 rules!1345)))) (Forall!269 lambda!15188))))

(declare-fun bs!65526 () Bool)

(assert (= bs!65526 d!187235))

(declare-fun m!771076 () Bool)

(assert (=> bs!65526 m!771076))

(assert (=> d!187061 d!187235))

(assert (=> d!187073 d!187121))

(declare-fun bs!65527 () Bool)

(declare-fun d!187237 () Bool)

(assert (= bs!65527 (and d!187237 d!187097)))

(declare-fun lambda!15189 () Int)

(assert (=> bs!65527 (= lambda!15189 lambda!15146)))

(declare-fun bs!65528 () Bool)

(assert (= bs!65528 (and d!187237 d!187199)))

(assert (=> bs!65528 (= lambda!15189 lambda!15174)))

(declare-fun bs!65529 () Bool)

(assert (= bs!65529 (and d!187237 d!187093)))

(assert (=> bs!65529 (= lambda!15189 lambda!15142)))

(declare-fun bs!65530 () Bool)

(assert (= bs!65530 (and d!187237 d!187207)))

(assert (=> bs!65530 (= lambda!15189 lambda!15178)))

(declare-fun bs!65531 () Bool)

(assert (= bs!65531 (and d!187237 d!187103)))

(assert (=> bs!65531 (= lambda!15189 lambda!15147)))

(declare-fun bs!65532 () Bool)

(assert (= bs!65532 (and d!187237 d!187193)))

(assert (=> bs!65532 (= lambda!15189 lambda!15172)))

(declare-fun bs!65533 () Bool)

(assert (= bs!65533 (and d!187237 d!187141)))

(assert (=> bs!65533 (= lambda!15189 lambda!15160)))

(declare-fun bs!65534 () Bool)

(assert (= bs!65534 (and d!187237 d!187133)))

(assert (=> bs!65534 (= lambda!15189 lambda!15158)))

(declare-fun bs!65535 () Bool)

(assert (= bs!65535 (and d!187237 d!187209)))

(assert (=> bs!65535 (= lambda!15189 lambda!15179)))

(declare-fun bs!65536 () Bool)

(assert (= bs!65536 (and d!187237 d!187213)))

(assert (=> bs!65536 (= lambda!15189 lambda!15181)))

(declare-fun bs!65537 () Bool)

(assert (= bs!65537 (and d!187237 d!187211)))

(assert (=> bs!65537 (= lambda!15189 lambda!15180)))

(declare-fun bs!65538 () Bool)

(assert (= bs!65538 (and d!187237 d!187157)))

(assert (=> bs!65538 (= lambda!15189 lambda!15161)))

(declare-fun bs!65539 () Bool)

(assert (= bs!65539 (and d!187237 d!187169)))

(assert (=> bs!65539 (= lambda!15189 lambda!15164)))

(declare-fun bs!65540 () Bool)

(assert (= bs!65540 (and d!187237 d!187195)))

(assert (=> bs!65540 (= lambda!15189 lambda!15173)))

(declare-fun bs!65541 () Bool)

(assert (= bs!65541 (and d!187237 d!187125)))

(assert (=> bs!65541 (= lambda!15189 lambda!15156)))

(declare-fun bs!65542 () Bool)

(assert (= bs!65542 (and d!187237 d!187221)))

(assert (=> bs!65542 (= lambda!15189 lambda!15184)))

(declare-fun bs!65543 () Bool)

(assert (= bs!65543 (and d!187237 d!187111)))

(assert (=> bs!65543 (= lambda!15189 lambda!15150)))

(declare-fun bs!65544 () Bool)

(assert (= bs!65544 (and d!187237 d!187137)))

(assert (=> bs!65544 (= lambda!15189 lambda!15159)))

(declare-fun bs!65545 () Bool)

(assert (= bs!65545 (and d!187237 d!187131)))

(assert (=> bs!65545 (= lambda!15189 lambda!15157)))

(declare-fun bs!65546 () Bool)

(assert (= bs!65546 (and d!187237 d!187107)))

(assert (=> bs!65546 (= lambda!15189 lambda!15148)))

(declare-fun bs!65547 () Bool)

(assert (= bs!65547 (and d!187237 d!187215)))

(assert (=> bs!65547 (= lambda!15189 lambda!15182)))

(declare-fun bs!65548 () Bool)

(assert (= bs!65548 (and d!187237 d!187113)))

(assert (=> bs!65548 (= lambda!15189 lambda!15151)))

(declare-fun bs!65549 () Bool)

(assert (= bs!65549 (and d!187237 d!187163)))

(assert (=> bs!65549 (= lambda!15189 lambda!15163)))

(declare-fun bs!65550 () Bool)

(assert (= bs!65550 (and d!187237 d!187119)))

(assert (=> bs!65550 (= lambda!15189 lambda!15152)))

(declare-fun bs!65551 () Bool)

(assert (= bs!65551 (and d!187237 d!187171)))

(assert (=> bs!65551 (= lambda!15189 lambda!15165)))

(declare-fun bs!65552 () Bool)

(assert (= bs!65552 (and d!187237 d!187233)))

(assert (=> bs!65552 (= lambda!15189 lambda!15185)))

(declare-fun bs!65553 () Bool)

(assert (= bs!65553 (and d!187237 d!187219)))

(assert (=> bs!65553 (= lambda!15189 lambda!15183)))

(declare-fun bs!65554 () Bool)

(assert (= bs!65554 (and d!187237 d!187161)))

(assert (=> bs!65554 (= lambda!15189 lambda!15162)))

(declare-fun bs!65555 () Bool)

(assert (= bs!65555 (and d!187237 d!187109)))

(assert (=> bs!65555 (= lambda!15189 lambda!15149)))

(assert (=> d!187237 (= (inv!6158 (_1!3240 (_1!3241 (h!10288 mapValue!2196)))) (forall!1480 (exprs!647 (_1!3240 (_1!3241 (h!10288 mapValue!2196)))) lambda!15189))))

(declare-fun bs!65556 () Bool)

(assert (= bs!65556 d!187237))

(declare-fun m!771078 () Bool)

(assert (=> bs!65556 m!771078))

(assert (=> b!524673 d!187237))

(declare-fun condSetEmpty!2385 () Bool)

(assert (=> setNonEmpty!2367 (= condSetEmpty!2385 (= setRest!2366 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2385 () Bool)

(assert (=> setNonEmpty!2367 (= tp!164965 setRes!2385)))

(declare-fun setIsEmpty!2385 () Bool)

(assert (=> setIsEmpty!2385 setRes!2385))

(declare-fun setNonEmpty!2385 () Bool)

(declare-fun tp!165034 () Bool)

(declare-fun setElem!2385 () Context!294)

(declare-fun e!315110 () Bool)

(assert (=> setNonEmpty!2385 (= setRes!2385 (and tp!165034 (inv!6158 setElem!2385) e!315110))))

(declare-fun setRest!2385 () (InoxSet Context!294))

(assert (=> setNonEmpty!2385 (= setRest!2366 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2385 true) setRest!2385))))

(declare-fun b!524892 () Bool)

(declare-fun tp!165033 () Bool)

(assert (=> b!524892 (= e!315110 tp!165033)))

(assert (= (and setNonEmpty!2367 condSetEmpty!2385) setIsEmpty!2385))

(assert (= (and setNonEmpty!2367 (not condSetEmpty!2385)) setNonEmpty!2385))

(assert (= setNonEmpty!2385 b!524892))

(declare-fun m!771080 () Bool)

(assert (=> setNonEmpty!2385 m!771080))

(declare-fun b!524897 () Bool)

(declare-fun e!315113 () Bool)

(declare-fun tp!165039 () Bool)

(declare-fun tp!165040 () Bool)

(assert (=> b!524897 (= e!315113 (and tp!165039 tp!165040))))

(assert (=> b!524683 (= tp!165028 e!315113)))

(assert (= (and b!524683 ((_ is Cons!4883) (exprs!647 setElem!2382))) b!524897))

(declare-fun tp!165045 () Bool)

(declare-fun setRes!2387 () Bool)

(declare-fun e!315117 () Bool)

(declare-fun setElem!2387 () Context!294)

(declare-fun setNonEmpty!2386 () Bool)

(assert (=> setNonEmpty!2386 (= setRes!2387 (and tp!165045 (inv!6158 setElem!2387) e!315117))))

(declare-fun mapValue!2208 () List!4896)

(declare-fun setRest!2386 () (InoxSet Context!294))

(assert (=> setNonEmpty!2386 (= (_1!3238 (_1!3239 (h!10287 mapValue!2208))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2387 true) setRest!2386))))

(declare-fun mapIsEmpty!2208 () Bool)

(declare-fun mapRes!2208 () Bool)

(assert (=> mapIsEmpty!2208 mapRes!2208))

(declare-fun setIsEmpty!2386 () Bool)

(assert (=> setIsEmpty!2386 setRes!2387))

(declare-fun b!524898 () Bool)

(declare-fun e!315116 () Bool)

(declare-fun setRes!2386 () Bool)

(declare-fun tp!165047 () Bool)

(assert (=> b!524898 (= e!315116 (and setRes!2386 tp!165047))))

(declare-fun condSetEmpty!2387 () Bool)

(declare-fun mapDefault!2208 () List!4896)

(assert (=> b!524898 (= condSetEmpty!2387 (= (_1!3238 (_1!3239 (h!10287 mapDefault!2208))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun e!315115 () Bool)

(declare-fun setElem!2386 () Context!294)

(declare-fun setNonEmpty!2387 () Bool)

(declare-fun tp!165043 () Bool)

(assert (=> setNonEmpty!2387 (= setRes!2386 (and tp!165043 (inv!6158 setElem!2386) e!315115))))

(declare-fun setRest!2387 () (InoxSet Context!294))

(assert (=> setNonEmpty!2387 (= (_1!3238 (_1!3239 (h!10287 mapDefault!2208))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2386 true) setRest!2387))))

(declare-fun mapNonEmpty!2208 () Bool)

(declare-fun tp!165044 () Bool)

(declare-fun e!315114 () Bool)

(assert (=> mapNonEmpty!2208 (= mapRes!2208 (and tp!165044 e!315114))))

(declare-fun mapRest!2208 () (Array (_ BitVec 32) List!4896))

(declare-fun mapKey!2208 () (_ BitVec 32))

(assert (=> mapNonEmpty!2208 (= mapRest!2201 (store mapRest!2208 mapKey!2208 mapValue!2208))))

(declare-fun b!524899 () Bool)

(declare-fun tp!165042 () Bool)

(assert (=> b!524899 (= e!315117 tp!165042)))

(declare-fun b!524900 () Bool)

(declare-fun tp!165041 () Bool)

(assert (=> b!524900 (= e!315114 (and setRes!2387 tp!165041))))

(declare-fun condSetEmpty!2386 () Bool)

(assert (=> b!524900 (= condSetEmpty!2386 (= (_1!3238 (_1!3239 (h!10287 mapValue!2208))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524901 () Bool)

(declare-fun tp!165046 () Bool)

(assert (=> b!524901 (= e!315115 tp!165046)))

(declare-fun condMapEmpty!2208 () Bool)

(assert (=> mapNonEmpty!2201 (= condMapEmpty!2208 (= mapRest!2201 ((as const (Array (_ BitVec 32) List!4896)) mapDefault!2208)))))

(assert (=> mapNonEmpty!2201 (= tp!164854 (and e!315116 mapRes!2208))))

(declare-fun setIsEmpty!2387 () Bool)

(assert (=> setIsEmpty!2387 setRes!2386))

(assert (= (and mapNonEmpty!2201 condMapEmpty!2208) mapIsEmpty!2208))

(assert (= (and mapNonEmpty!2201 (not condMapEmpty!2208)) mapNonEmpty!2208))

(assert (= (and b!524900 condSetEmpty!2386) setIsEmpty!2386))

(assert (= (and b!524900 (not condSetEmpty!2386)) setNonEmpty!2386))

(assert (= setNonEmpty!2386 b!524899))

(assert (= (and mapNonEmpty!2208 ((_ is Cons!4886) mapValue!2208)) b!524900))

(assert (= (and b!524898 condSetEmpty!2387) setIsEmpty!2387))

(assert (= (and b!524898 (not condSetEmpty!2387)) setNonEmpty!2387))

(assert (= setNonEmpty!2387 b!524901))

(assert (= (and mapNonEmpty!2201 ((_ is Cons!4886) mapDefault!2208)) b!524898))

(declare-fun m!771082 () Bool)

(assert (=> setNonEmpty!2386 m!771082))

(declare-fun m!771084 () Bool)

(assert (=> setNonEmpty!2387 m!771084))

(declare-fun m!771086 () Bool)

(assert (=> mapNonEmpty!2208 m!771086))

(declare-fun b!524902 () Bool)

(declare-fun e!315118 () Bool)

(declare-fun tp!165048 () Bool)

(declare-fun tp!165049 () Bool)

(assert (=> b!524902 (= e!315118 (and tp!165048 tp!165049))))

(assert (=> b!524648 (= tp!164981 e!315118)))

(assert (= (and b!524648 ((_ is Cons!4883) (exprs!647 (_1!3240 (_1!3241 (h!10288 mapDefault!2197)))))) b!524902))

(declare-fun condSetEmpty!2388 () Bool)

(assert (=> setNonEmpty!2366 (= condSetEmpty!2388 (= setRest!2367 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2388 () Bool)

(assert (=> setNonEmpty!2366 (= tp!164956 setRes!2388)))

(declare-fun setIsEmpty!2388 () Bool)

(assert (=> setIsEmpty!2388 setRes!2388))

(declare-fun tp!165051 () Bool)

(declare-fun setNonEmpty!2388 () Bool)

(declare-fun e!315119 () Bool)

(declare-fun setElem!2388 () Context!294)

(assert (=> setNonEmpty!2388 (= setRes!2388 (and tp!165051 (inv!6158 setElem!2388) e!315119))))

(declare-fun setRest!2388 () (InoxSet Context!294))

(assert (=> setNonEmpty!2388 (= setRest!2367 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2388 true) setRest!2388))))

(declare-fun b!524903 () Bool)

(declare-fun tp!165050 () Bool)

(assert (=> b!524903 (= e!315119 tp!165050)))

(assert (= (and setNonEmpty!2366 condSetEmpty!2388) setIsEmpty!2388))

(assert (= (and setNonEmpty!2366 (not condSetEmpty!2388)) setNonEmpty!2388))

(assert (= setNonEmpty!2388 b!524903))

(declare-fun m!771088 () Bool)

(assert (=> setNonEmpty!2388 m!771088))

(declare-fun condSetEmpty!2389 () Bool)

(assert (=> setNonEmpty!2352 (= condSetEmpty!2389 (= setRest!2352 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2389 () Bool)

(assert (=> setNonEmpty!2352 (= tp!164853 setRes!2389)))

(declare-fun setIsEmpty!2389 () Bool)

(assert (=> setIsEmpty!2389 setRes!2389))

(declare-fun setNonEmpty!2389 () Bool)

(declare-fun e!315120 () Bool)

(declare-fun setElem!2389 () Context!294)

(declare-fun tp!165053 () Bool)

(assert (=> setNonEmpty!2389 (= setRes!2389 (and tp!165053 (inv!6158 setElem!2389) e!315120))))

(declare-fun setRest!2389 () (InoxSet Context!294))

(assert (=> setNonEmpty!2389 (= setRest!2352 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2389 true) setRest!2389))))

(declare-fun b!524904 () Bool)

(declare-fun tp!165052 () Bool)

(assert (=> b!524904 (= e!315120 tp!165052)))

(assert (= (and setNonEmpty!2352 condSetEmpty!2389) setIsEmpty!2389))

(assert (= (and setNonEmpty!2352 (not condSetEmpty!2389)) setNonEmpty!2389))

(assert (= setNonEmpty!2389 b!524904))

(declare-fun m!771090 () Bool)

(assert (=> setNonEmpty!2389 m!771090))

(declare-fun b!524909 () Bool)

(declare-fun e!315123 () Bool)

(declare-fun tp!165056 () Bool)

(assert (=> b!524909 (= e!315123 (and tp_is_empty!2793 tp!165056))))

(assert (=> b!524602 (= tp!164917 e!315123)))

(assert (= (and b!524602 ((_ is Cons!4885) (innerList!1648 (xs!4225 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))))) b!524909))

(declare-fun b!524912 () Bool)

(declare-fun e!315124 () Bool)

(declare-fun tp!165061 () Bool)

(assert (=> b!524912 (= e!315124 tp!165061)))

(declare-fun b!524910 () Bool)

(assert (=> b!524910 (= e!315124 tp_is_empty!2793)))

(declare-fun b!524911 () Bool)

(declare-fun tp!165060 () Bool)

(declare-fun tp!165059 () Bool)

(assert (=> b!524911 (= e!315124 (and tp!165060 tp!165059))))

(declare-fun b!524913 () Bool)

(declare-fun tp!165057 () Bool)

(declare-fun tp!165058 () Bool)

(assert (=> b!524913 (= e!315124 (and tp!165057 tp!165058))))

(assert (=> b!524616 (= tp!164929 e!315124)))

(assert (= (and b!524616 ((_ is ElementMatch!1209) (regOne!2931 (regex!884 (h!10291 rules!1345))))) b!524910))

(assert (= (and b!524616 ((_ is Concat!2117) (regOne!2931 (regex!884 (h!10291 rules!1345))))) b!524911))

(assert (= (and b!524616 ((_ is Star!1209) (regOne!2931 (regex!884 (h!10291 rules!1345))))) b!524912))

(assert (= (and b!524616 ((_ is Union!1209) (regOne!2931 (regex!884 (h!10291 rules!1345))))) b!524913))

(declare-fun b!524916 () Bool)

(declare-fun e!315125 () Bool)

(declare-fun tp!165066 () Bool)

(assert (=> b!524916 (= e!315125 tp!165066)))

(declare-fun b!524914 () Bool)

(assert (=> b!524914 (= e!315125 tp_is_empty!2793)))

(declare-fun b!524915 () Bool)

(declare-fun tp!165065 () Bool)

(declare-fun tp!165064 () Bool)

(assert (=> b!524915 (= e!315125 (and tp!165065 tp!165064))))

(declare-fun b!524917 () Bool)

(declare-fun tp!165062 () Bool)

(declare-fun tp!165063 () Bool)

(assert (=> b!524917 (= e!315125 (and tp!165062 tp!165063))))

(assert (=> b!524616 (= tp!164930 e!315125)))

(assert (= (and b!524616 ((_ is ElementMatch!1209) (regTwo!2931 (regex!884 (h!10291 rules!1345))))) b!524914))

(assert (= (and b!524616 ((_ is Concat!2117) (regTwo!2931 (regex!884 (h!10291 rules!1345))))) b!524915))

(assert (= (and b!524616 ((_ is Star!1209) (regTwo!2931 (regex!884 (h!10291 rules!1345))))) b!524916))

(assert (= (and b!524616 ((_ is Union!1209) (regTwo!2931 (regex!884 (h!10291 rules!1345))))) b!524917))

(declare-fun b!524918 () Bool)

(declare-fun e!315126 () Bool)

(declare-fun tp!165067 () Bool)

(declare-fun tp!165068 () Bool)

(assert (=> b!524918 (= e!315126 (and tp!165067 tp!165068))))

(assert (=> b!524677 (= tp!165020 e!315126)))

(assert (= (and b!524677 ((_ is Cons!4883) (exprs!647 (_1!3240 (_1!3241 (h!10288 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))))))) b!524918))

(declare-fun condSetEmpty!2390 () Bool)

(assert (=> setNonEmpty!2359 (= condSetEmpty!2390 (= setRest!2359 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2390 () Bool)

(assert (=> setNonEmpty!2359 (= tp!164904 setRes!2390)))

(declare-fun setIsEmpty!2390 () Bool)

(assert (=> setIsEmpty!2390 setRes!2390))

(declare-fun setElem!2390 () Context!294)

(declare-fun tp!165070 () Bool)

(declare-fun setNonEmpty!2390 () Bool)

(declare-fun e!315127 () Bool)

(assert (=> setNonEmpty!2390 (= setRes!2390 (and tp!165070 (inv!6158 setElem!2390) e!315127))))

(declare-fun setRest!2390 () (InoxSet Context!294))

(assert (=> setNonEmpty!2390 (= setRest!2359 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2390 true) setRest!2390))))

(declare-fun b!524919 () Bool)

(declare-fun tp!165069 () Bool)

(assert (=> b!524919 (= e!315127 tp!165069)))

(assert (= (and setNonEmpty!2359 condSetEmpty!2390) setIsEmpty!2390))

(assert (= (and setNonEmpty!2359 (not condSetEmpty!2390)) setNonEmpty!2390))

(assert (= setNonEmpty!2390 b!524919))

(declare-fun m!771092 () Bool)

(assert (=> setNonEmpty!2390 m!771092))

(declare-fun b!524920 () Bool)

(declare-fun e!315128 () Bool)

(declare-fun tp!165071 () Bool)

(declare-fun tp!165072 () Bool)

(assert (=> b!524920 (= e!315128 (and tp!165071 tp!165072))))

(assert (=> b!524681 (= tp!165025 e!315128)))

(assert (= (and b!524681 ((_ is Cons!4883) (exprs!647 setElem!2381))) b!524920))

(declare-fun condSetEmpty!2391 () Bool)

(assert (=> setNonEmpty!2360 (= condSetEmpty!2391 (= setRest!2360 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2391 () Bool)

(assert (=> setNonEmpty!2360 (= tp!164909 setRes!2391)))

(declare-fun setIsEmpty!2391 () Bool)

(assert (=> setIsEmpty!2391 setRes!2391))

(declare-fun setElem!2391 () Context!294)

(declare-fun e!315129 () Bool)

(declare-fun tp!165074 () Bool)

(declare-fun setNonEmpty!2391 () Bool)

(assert (=> setNonEmpty!2391 (= setRes!2391 (and tp!165074 (inv!6158 setElem!2391) e!315129))))

(declare-fun setRest!2391 () (InoxSet Context!294))

(assert (=> setNonEmpty!2391 (= setRest!2360 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2391 true) setRest!2391))))

(declare-fun b!524921 () Bool)

(declare-fun tp!165073 () Bool)

(assert (=> b!524921 (= e!315129 tp!165073)))

(assert (= (and setNonEmpty!2360 condSetEmpty!2391) setIsEmpty!2391))

(assert (= (and setNonEmpty!2360 (not condSetEmpty!2391)) setNonEmpty!2391))

(assert (= setNonEmpty!2391 b!524921))

(declare-fun m!771094 () Bool)

(assert (=> setNonEmpty!2391 m!771094))

(declare-fun condSetEmpty!2392 () Bool)

(assert (=> setNonEmpty!2361 (= condSetEmpty!2392 (= setRest!2361 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2392 () Bool)

(assert (=> setNonEmpty!2361 (= tp!164914 setRes!2392)))

(declare-fun setIsEmpty!2392 () Bool)

(assert (=> setIsEmpty!2392 setRes!2392))

(declare-fun e!315130 () Bool)

(declare-fun setNonEmpty!2392 () Bool)

(declare-fun tp!165076 () Bool)

(declare-fun setElem!2392 () Context!294)

(assert (=> setNonEmpty!2392 (= setRes!2392 (and tp!165076 (inv!6158 setElem!2392) e!315130))))

(declare-fun setRest!2392 () (InoxSet Context!294))

(assert (=> setNonEmpty!2392 (= setRest!2361 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2392 true) setRest!2392))))

(declare-fun b!524922 () Bool)

(declare-fun tp!165075 () Bool)

(assert (=> b!524922 (= e!315130 tp!165075)))

(assert (= (and setNonEmpty!2361 condSetEmpty!2392) setIsEmpty!2392))

(assert (= (and setNonEmpty!2361 (not condSetEmpty!2392)) setNonEmpty!2392))

(assert (= setNonEmpty!2392 b!524922))

(declare-fun m!771096 () Bool)

(assert (=> setNonEmpty!2392 m!771096))

(declare-fun condSetEmpty!2393 () Bool)

(assert (=> setNonEmpty!2376 (= condSetEmpty!2393 (= setRest!2376 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2393 () Bool)

(assert (=> setNonEmpty!2376 (= tp!165007 setRes!2393)))

(declare-fun setIsEmpty!2393 () Bool)

(assert (=> setIsEmpty!2393 setRes!2393))

(declare-fun setElem!2393 () Context!294)

(declare-fun setNonEmpty!2393 () Bool)

(declare-fun tp!165078 () Bool)

(declare-fun e!315131 () Bool)

(assert (=> setNonEmpty!2393 (= setRes!2393 (and tp!165078 (inv!6158 setElem!2393) e!315131))))

(declare-fun setRest!2393 () (InoxSet Context!294))

(assert (=> setNonEmpty!2393 (= setRest!2376 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2393 true) setRest!2393))))

(declare-fun b!524923 () Bool)

(declare-fun tp!165077 () Bool)

(assert (=> b!524923 (= e!315131 tp!165077)))

(assert (= (and setNonEmpty!2376 condSetEmpty!2393) setIsEmpty!2393))

(assert (= (and setNonEmpty!2376 (not condSetEmpty!2393)) setNonEmpty!2393))

(assert (= setNonEmpty!2393 b!524923))

(declare-fun m!771098 () Bool)

(assert (=> setNonEmpty!2393 m!771098))

(declare-fun b!524924 () Bool)

(declare-fun e!315132 () Bool)

(declare-fun tp!165079 () Bool)

(declare-fun tp!165080 () Bool)

(assert (=> b!524924 (= e!315132 (and tp!165079 tp!165080))))

(assert (=> b!524668 (= tp!165009 e!315132)))

(assert (= (and b!524668 ((_ is Cons!4883) (exprs!647 (_1!3240 (_1!3241 (h!10288 mapValue!2207)))))) b!524924))

(declare-fun b!524925 () Bool)

(declare-fun e!315133 () Bool)

(declare-fun tp!165082 () Bool)

(assert (=> b!524925 (= e!315133 tp!165082)))

(declare-fun tp!165083 () Bool)

(declare-fun setElem!2394 () Context!294)

(declare-fun setRes!2394 () Bool)

(declare-fun setNonEmpty!2394 () Bool)

(declare-fun e!315135 () Bool)

(assert (=> setNonEmpty!2394 (= setRes!2394 (and tp!165083 (inv!6158 setElem!2394) e!315135))))

(declare-fun setRest!2394 () (InoxSet Context!294))

(assert (=> setNonEmpty!2394 (= (_2!3241 (h!10288 (t!73499 mapDefault!2197))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2394 true) setRest!2394))))

(declare-fun e!315134 () Bool)

(assert (=> b!524650 (= tp!164983 e!315134)))

(declare-fun setIsEmpty!2394 () Bool)

(assert (=> setIsEmpty!2394 setRes!2394))

(declare-fun b!524926 () Bool)

(declare-fun tp!165081 () Bool)

(assert (=> b!524926 (= e!315135 tp!165081)))

(declare-fun b!524927 () Bool)

(declare-fun tp!165084 () Bool)

(assert (=> b!524927 (= e!315134 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 (t!73499 mapDefault!2197))))) e!315133 tp_is_empty!2793 setRes!2394 tp!165084))))

(declare-fun condSetEmpty!2394 () Bool)

(assert (=> b!524927 (= condSetEmpty!2394 (= (_2!3241 (h!10288 (t!73499 mapDefault!2197))) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!524927 b!524925))

(assert (= (and b!524927 condSetEmpty!2394) setIsEmpty!2394))

(assert (= (and b!524927 (not condSetEmpty!2394)) setNonEmpty!2394))

(assert (= setNonEmpty!2394 b!524926))

(assert (= (and b!524650 ((_ is Cons!4887) (t!73499 mapDefault!2197))) b!524927))

(declare-fun m!771100 () Bool)

(assert (=> setNonEmpty!2394 m!771100))

(declare-fun m!771102 () Bool)

(assert (=> b!524927 m!771102))

(declare-fun b!524928 () Bool)

(declare-fun e!315136 () Bool)

(declare-fun tp!165085 () Bool)

(declare-fun tp!165086 () Bool)

(assert (=> b!524928 (= e!315136 (and tp!165085 tp!165086))))

(assert (=> b!524636 (= tp!164961 e!315136)))

(assert (= (and b!524636 ((_ is Cons!4883) (exprs!647 setElem!2366))) b!524928))

(declare-fun setRes!2395 () Bool)

(declare-fun e!315138 () Bool)

(declare-fun tp!165088 () Bool)

(declare-fun setElem!2395 () Context!294)

(declare-fun setNonEmpty!2395 () Bool)

(assert (=> setNonEmpty!2395 (= setRes!2395 (and tp!165088 (inv!6158 setElem!2395) e!315138))))

(declare-fun setRest!2395 () (InoxSet Context!294))

(assert (=> setNonEmpty!2395 (= (_1!3238 (_1!3239 (h!10287 (t!73498 mapValue!2201)))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2395 true) setRest!2395))))

(declare-fun b!524929 () Bool)

(declare-fun e!315137 () Bool)

(declare-fun tp!165087 () Bool)

(assert (=> b!524929 (= e!315137 (and setRes!2395 tp!165087))))

(declare-fun condSetEmpty!2395 () Bool)

(assert (=> b!524929 (= condSetEmpty!2395 (= (_1!3238 (_1!3239 (h!10287 (t!73498 mapValue!2201)))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524930 () Bool)

(declare-fun tp!165089 () Bool)

(assert (=> b!524930 (= e!315138 tp!165089)))

(assert (=> b!524549 (= tp!164851 e!315137)))

(declare-fun setIsEmpty!2395 () Bool)

(assert (=> setIsEmpty!2395 setRes!2395))

(assert (= (and b!524929 condSetEmpty!2395) setIsEmpty!2395))

(assert (= (and b!524929 (not condSetEmpty!2395)) setNonEmpty!2395))

(assert (= setNonEmpty!2395 b!524930))

(assert (= (and b!524549 ((_ is Cons!4886) (t!73498 mapValue!2201))) b!524929))

(declare-fun m!771104 () Bool)

(assert (=> setNonEmpty!2395 m!771104))

(declare-fun b!524931 () Bool)

(declare-fun e!315139 () Bool)

(declare-fun tp!165090 () Bool)

(declare-fun tp!165091 () Bool)

(assert (=> b!524931 (= e!315139 (and tp!165090 tp!165091))))

(assert (=> b!524667 (= tp!165006 e!315139)))

(assert (= (and b!524667 ((_ is Cons!4883) (exprs!647 setElem!2377))) b!524931))

(declare-fun b!524932 () Bool)

(declare-fun e!315140 () Bool)

(declare-fun tp!165093 () Bool)

(assert (=> b!524932 (= e!315140 tp!165093)))

(declare-fun setElem!2396 () Context!294)

(declare-fun setRes!2396 () Bool)

(declare-fun e!315142 () Bool)

(declare-fun tp!165094 () Bool)

(declare-fun setNonEmpty!2396 () Bool)

(assert (=> setNonEmpty!2396 (= setRes!2396 (and tp!165094 (inv!6158 setElem!2396) e!315142))))

(declare-fun setRest!2396 () (InoxSet Context!294))

(assert (=> setNonEmpty!2396 (= (_2!3241 (h!10288 (t!73499 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2396 true) setRest!2396))))

(declare-fun e!315141 () Bool)

(assert (=> b!524676 (= tp!165018 e!315141)))

(declare-fun setIsEmpty!2396 () Bool)

(assert (=> setIsEmpty!2396 setRes!2396))

(declare-fun b!524933 () Bool)

(declare-fun tp!165092 () Bool)

(assert (=> b!524933 (= e!315142 tp!165092)))

(declare-fun tp!165095 () Bool)

(declare-fun b!524934 () Bool)

(assert (=> b!524934 (= e!315141 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 (t!73499 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))))))) e!315140 tp_is_empty!2793 setRes!2396 tp!165095))))

(declare-fun condSetEmpty!2396 () Bool)

(assert (=> b!524934 (= condSetEmpty!2396 (= (_2!3241 (h!10288 (t!73499 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))))) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!524934 b!524932))

(assert (= (and b!524934 condSetEmpty!2396) setIsEmpty!2396))

(assert (= (and b!524934 (not condSetEmpty!2396)) setNonEmpty!2396))

(assert (= setNonEmpty!2396 b!524933))

(assert (= (and b!524676 ((_ is Cons!4887) (t!73499 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))))) b!524934))

(declare-fun m!771106 () Bool)

(assert (=> setNonEmpty!2396 m!771106))

(declare-fun m!771108 () Bool)

(assert (=> b!524934 m!771108))

(declare-fun condSetEmpty!2397 () Bool)

(assert (=> setNonEmpty!2378 (= condSetEmpty!2397 (= setRest!2378 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2397 () Bool)

(assert (=> setNonEmpty!2378 (= tp!165013 setRes!2397)))

(declare-fun setIsEmpty!2397 () Bool)

(assert (=> setIsEmpty!2397 setRes!2397))

(declare-fun setElem!2397 () Context!294)

(declare-fun setNonEmpty!2397 () Bool)

(declare-fun e!315143 () Bool)

(declare-fun tp!165097 () Bool)

(assert (=> setNonEmpty!2397 (= setRes!2397 (and tp!165097 (inv!6158 setElem!2397) e!315143))))

(declare-fun setRest!2397 () (InoxSet Context!294))

(assert (=> setNonEmpty!2397 (= setRest!2378 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2397 true) setRest!2397))))

(declare-fun b!524935 () Bool)

(declare-fun tp!165096 () Bool)

(assert (=> b!524935 (= e!315143 tp!165096)))

(assert (= (and setNonEmpty!2378 condSetEmpty!2397) setIsEmpty!2397))

(assert (= (and setNonEmpty!2378 (not condSetEmpty!2397)) setNonEmpty!2397))

(assert (= setNonEmpty!2397 b!524935))

(declare-fun m!771110 () Bool)

(assert (=> setNonEmpty!2397 m!771110))

(declare-fun condSetEmpty!2398 () Bool)

(assert (=> setNonEmpty!2355 (= condSetEmpty!2398 (= setRest!2355 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2398 () Bool)

(assert (=> setNonEmpty!2355 (= tp!164865 setRes!2398)))

(declare-fun setIsEmpty!2398 () Bool)

(assert (=> setIsEmpty!2398 setRes!2398))

(declare-fun setNonEmpty!2398 () Bool)

(declare-fun e!315144 () Bool)

(declare-fun setElem!2398 () Context!294)

(declare-fun tp!165099 () Bool)

(assert (=> setNonEmpty!2398 (= setRes!2398 (and tp!165099 (inv!6158 setElem!2398) e!315144))))

(declare-fun setRest!2398 () (InoxSet Context!294))

(assert (=> setNonEmpty!2398 (= setRest!2355 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2398 true) setRest!2398))))

(declare-fun b!524936 () Bool)

(declare-fun tp!165098 () Bool)

(assert (=> b!524936 (= e!315144 tp!165098)))

(assert (= (and setNonEmpty!2355 condSetEmpty!2398) setIsEmpty!2398))

(assert (= (and setNonEmpty!2355 (not condSetEmpty!2398)) setNonEmpty!2398))

(assert (= setNonEmpty!2398 b!524936))

(declare-fun m!771112 () Bool)

(assert (=> setNonEmpty!2398 m!771112))

(declare-fun b!524937 () Bool)

(declare-fun e!315145 () Bool)

(declare-fun tp!165100 () Bool)

(declare-fun tp!165101 () Bool)

(assert (=> b!524937 (= e!315145 (and tp!165100 tp!165101))))

(assert (=> b!524678 (= tp!165019 e!315145)))

(assert (= (and b!524678 ((_ is Cons!4883) (exprs!647 setElem!2380))) b!524937))

(declare-fun b!524938 () Bool)

(declare-fun e!315146 () Bool)

(declare-fun tp!165102 () Bool)

(declare-fun tp!165103 () Bool)

(assert (=> b!524938 (= e!315146 (and tp!165102 tp!165103))))

(assert (=> b!524639 (= tp!164971 e!315146)))

(assert (= (and b!524639 ((_ is Cons!4883) (exprs!647 setElem!2368))) b!524938))

(declare-fun b!524939 () Bool)

(declare-fun e!315147 () Bool)

(declare-fun tp!165105 () Bool)

(assert (=> b!524939 (= e!315147 tp!165105)))

(declare-fun setRes!2399 () Bool)

(declare-fun tp!165106 () Bool)

(declare-fun setNonEmpty!2399 () Bool)

(declare-fun e!315149 () Bool)

(declare-fun setElem!2399 () Context!294)

(assert (=> setNonEmpty!2399 (= setRes!2399 (and tp!165106 (inv!6158 setElem!2399) e!315149))))

(declare-fun setRest!2399 () (InoxSet Context!294))

(assert (=> setNonEmpty!2399 (= (_2!3241 (h!10288 (t!73499 mapDefault!2207))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2399 true) setRest!2399))))

(declare-fun e!315148 () Bool)

(assert (=> b!524670 (= tp!165004 e!315148)))

(declare-fun setIsEmpty!2399 () Bool)

(assert (=> setIsEmpty!2399 setRes!2399))

(declare-fun b!524940 () Bool)

(declare-fun tp!165104 () Bool)

(assert (=> b!524940 (= e!315149 tp!165104)))

(declare-fun tp!165107 () Bool)

(declare-fun b!524941 () Bool)

(assert (=> b!524941 (= e!315148 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 (t!73499 mapDefault!2207))))) e!315147 tp_is_empty!2793 setRes!2399 tp!165107))))

(declare-fun condSetEmpty!2399 () Bool)

(assert (=> b!524941 (= condSetEmpty!2399 (= (_2!3241 (h!10288 (t!73499 mapDefault!2207))) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!524941 b!524939))

(assert (= (and b!524941 condSetEmpty!2399) setIsEmpty!2399))

(assert (= (and b!524941 (not condSetEmpty!2399)) setNonEmpty!2399))

(assert (= setNonEmpty!2399 b!524940))

(assert (= (and b!524670 ((_ is Cons!4887) (t!73499 mapDefault!2207))) b!524941))

(declare-fun m!771114 () Bool)

(assert (=> setNonEmpty!2399 m!771114))

(declare-fun m!771116 () Bool)

(assert (=> b!524941 m!771116))

(declare-fun setNonEmpty!2400 () Bool)

(declare-fun e!315151 () Bool)

(declare-fun setRes!2400 () Bool)

(declare-fun setElem!2400 () Context!294)

(declare-fun tp!165109 () Bool)

(assert (=> setNonEmpty!2400 (= setRes!2400 (and tp!165109 (inv!6158 setElem!2400) e!315151))))

(declare-fun setRest!2400 () (InoxSet Context!294))

(assert (=> setNonEmpty!2400 (= (_1!3238 (_1!3239 (h!10287 (t!73498 mapValue!2198)))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2400 true) setRest!2400))))

(declare-fun b!524942 () Bool)

(declare-fun e!315150 () Bool)

(declare-fun tp!165108 () Bool)

(assert (=> b!524942 (= e!315150 (and setRes!2400 tp!165108))))

(declare-fun condSetEmpty!2400 () Bool)

(assert (=> b!524942 (= condSetEmpty!2400 (= (_1!3238 (_1!3239 (h!10287 (t!73498 mapValue!2198)))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524943 () Bool)

(declare-fun tp!165110 () Bool)

(assert (=> b!524943 (= e!315151 tp!165110)))

(assert (=> b!524557 (= tp!164864 e!315150)))

(declare-fun setIsEmpty!2400 () Bool)

(assert (=> setIsEmpty!2400 setRes!2400))

(assert (= (and b!524942 condSetEmpty!2400) setIsEmpty!2400))

(assert (= (and b!524942 (not condSetEmpty!2400)) setNonEmpty!2400))

(assert (= setNonEmpty!2400 b!524943))

(assert (= (and b!524557 ((_ is Cons!4886) (t!73498 mapValue!2198))) b!524942))

(declare-fun m!771118 () Bool)

(assert (=> setNonEmpty!2400 m!771118))

(declare-fun b!524944 () Bool)

(declare-fun e!315152 () Bool)

(declare-fun tp!165111 () Bool)

(declare-fun tp!165112 () Bool)

(assert (=> b!524944 (= e!315152 (and tp!165111 tp!165112))))

(assert (=> b!524674 (= tp!165016 e!315152)))

(assert (= (and b!524674 ((_ is Cons!4883) (exprs!647 (_1!3240 (_1!3241 (h!10288 (zeroValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449)))))))))))) b!524944))

(declare-fun condSetEmpty!2401 () Bool)

(assert (=> setNonEmpty!2380 (= condSetEmpty!2401 (= setRest!2380 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2401 () Bool)

(assert (=> setNonEmpty!2380 (= tp!165021 setRes!2401)))

(declare-fun setIsEmpty!2401 () Bool)

(assert (=> setIsEmpty!2401 setRes!2401))

(declare-fun tp!165114 () Bool)

(declare-fun setNonEmpty!2401 () Bool)

(declare-fun e!315153 () Bool)

(declare-fun setElem!2401 () Context!294)

(assert (=> setNonEmpty!2401 (= setRes!2401 (and tp!165114 (inv!6158 setElem!2401) e!315153))))

(declare-fun setRest!2401 () (InoxSet Context!294))

(assert (=> setNonEmpty!2401 (= setRest!2380 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2401 true) setRest!2401))))

(declare-fun b!524945 () Bool)

(declare-fun tp!165113 () Bool)

(assert (=> b!524945 (= e!315153 tp!165113)))

(assert (= (and setNonEmpty!2380 condSetEmpty!2401) setIsEmpty!2401))

(assert (= (and setNonEmpty!2380 (not condSetEmpty!2401)) setNonEmpty!2401))

(assert (= setNonEmpty!2401 b!524945))

(declare-fun m!771120 () Bool)

(assert (=> setNonEmpty!2401 m!771120))

(declare-fun b!524946 () Bool)

(declare-fun e!315154 () Bool)

(declare-fun tp!165115 () Bool)

(declare-fun tp!165116 () Bool)

(assert (=> b!524946 (= e!315154 (and tp!165115 tp!165116))))

(assert (=> b!524638 (= tp!164968 e!315154)))

(assert (= (and b!524638 ((_ is Cons!4883) (exprs!647 (_2!3236 (_1!3237 (h!10285 mapValue!2197)))))) b!524946))

(declare-fun b!524947 () Bool)

(declare-fun e!315155 () Bool)

(declare-fun tp!165117 () Bool)

(declare-fun tp!165118 () Bool)

(assert (=> b!524947 (= e!315155 (and tp!165117 tp!165118))))

(assert (=> b!524593 (= tp!164905 e!315155)))

(assert (= (and b!524593 ((_ is Cons!4883) (exprs!647 setElem!2359))) b!524947))

(declare-fun b!524950 () Bool)

(declare-fun b_free!13837 () Bool)

(declare-fun b_next!13853 () Bool)

(assert (=> b!524950 (= b_free!13837 (not b_next!13853))))

(declare-fun tp!165122 () Bool)

(declare-fun b_and!51331 () Bool)

(assert (=> b!524950 (= tp!165122 b_and!51331)))

(declare-fun b_free!13839 () Bool)

(declare-fun b_next!13855 () Bool)

(assert (=> b!524950 (= b_free!13839 (not b_next!13855))))

(declare-fun tp!165120 () Bool)

(declare-fun b_and!51333 () Bool)

(assert (=> b!524950 (= tp!165120 b_and!51333)))

(declare-fun e!315158 () Bool)

(assert (=> b!524950 (= e!315158 (and tp!165122 tp!165120))))

(declare-fun e!315156 () Bool)

(declare-fun b!524949 () Bool)

(declare-fun tp!165119 () Bool)

(assert (=> b!524949 (= e!315156 (and tp!165119 (inv!6148 (tag!1146 (h!10291 (t!73502 (t!73502 rules!1345))))) (inv!6155 (transformation!884 (h!10291 (t!73502 (t!73502 rules!1345))))) e!315158))))

(declare-fun b!524948 () Bool)

(declare-fun e!315159 () Bool)

(declare-fun tp!165121 () Bool)

(assert (=> b!524948 (= e!315159 (and e!315156 tp!165121))))

(assert (=> b!524567 (= tp!164877 e!315159)))

(assert (= b!524949 b!524950))

(assert (= b!524948 b!524949))

(assert (= (and b!524567 ((_ is Cons!4890) (t!73502 (t!73502 rules!1345)))) b!524948))

(declare-fun m!771122 () Bool)

(assert (=> b!524949 m!771122))

(declare-fun m!771124 () Bool)

(assert (=> b!524949 m!771124))

(declare-fun b!524951 () Bool)

(declare-fun e!315160 () Bool)

(declare-fun tp!165123 () Bool)

(declare-fun tp!165124 () Bool)

(assert (=> b!524951 (= e!315160 (and tp!165123 tp!165124))))

(assert (=> b!524596 (= tp!164910 e!315160)))

(assert (= (and b!524596 ((_ is Cons!4883) (exprs!647 setElem!2360))) b!524951))

(declare-fun b!524952 () Bool)

(declare-fun e!315161 () Bool)

(declare-fun tp!165125 () Bool)

(declare-fun tp!165126 () Bool)

(assert (=> b!524952 (= e!315161 (and tp!165125 tp!165126))))

(assert (=> b!524599 (= tp!164915 e!315161)))

(assert (= (and b!524599 ((_ is Cons!4883) (exprs!647 setElem!2361))) b!524952))

(declare-fun b!524953 () Bool)

(declare-fun e!315162 () Bool)

(declare-fun tp!165127 () Bool)

(declare-fun tp!165128 () Bool)

(assert (=> b!524953 (= e!315162 (and tp!165127 tp!165128))))

(assert (=> b!524571 (= tp!164881 e!315162)))

(assert (= (and b!524571 ((_ is Cons!4883) (exprs!647 setElem!2356))) b!524953))

(declare-fun tp!165131 () Bool)

(declare-fun e!315164 () Bool)

(declare-fun tp!165129 () Bool)

(declare-fun b!524954 () Bool)

(assert (=> b!524954 (= e!315164 (and (inv!6154 (left!4192 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) tp!165129 (inv!6154 (right!4522 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) tp!165131))))

(declare-fun b!524956 () Bool)

(declare-fun e!315163 () Bool)

(declare-fun tp!165130 () Bool)

(assert (=> b!524956 (= e!315163 tp!165130)))

(declare-fun b!524955 () Bool)

(assert (=> b!524955 (= e!315164 (and (inv!6159 (xs!4225 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) e!315163))))

(assert (=> b!524600 (= tp!164916 (and (inv!6154 (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) e!315164))))

(assert (= (and b!524600 ((_ is Node!1590) (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) b!524954))

(assert (= b!524955 b!524956))

(assert (= (and b!524600 ((_ is Leaf!2535) (left!4192 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) b!524955))

(declare-fun m!771126 () Bool)

(assert (=> b!524954 m!771126))

(declare-fun m!771128 () Bool)

(assert (=> b!524954 m!771128))

(declare-fun m!771130 () Bool)

(assert (=> b!524955 m!771130))

(assert (=> b!524600 m!770719))

(declare-fun e!315166 () Bool)

(declare-fun b!524957 () Bool)

(declare-fun tp!165134 () Bool)

(declare-fun tp!165132 () Bool)

(assert (=> b!524957 (= e!315166 (and (inv!6154 (left!4192 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) tp!165132 (inv!6154 (right!4522 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) tp!165134))))

(declare-fun b!524959 () Bool)

(declare-fun e!315165 () Bool)

(declare-fun tp!165133 () Bool)

(assert (=> b!524959 (= e!315165 tp!165133)))

(declare-fun b!524958 () Bool)

(assert (=> b!524958 (= e!315166 (and (inv!6159 (xs!4225 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) e!315165))))

(assert (=> b!524600 (= tp!164918 (and (inv!6154 (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56)))) e!315166))))

(assert (= (and b!524600 ((_ is Node!1590) (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) b!524957))

(assert (= b!524958 b!524959))

(assert (= (and b!524600 ((_ is Leaf!2535) (right!4522 (c!100889 (totalInput!1737 cacheFurthestNullable!56))))) b!524958))

(declare-fun m!771132 () Bool)

(assert (=> b!524957 m!771132))

(declare-fun m!771134 () Bool)

(assert (=> b!524957 m!771134))

(declare-fun m!771136 () Bool)

(assert (=> b!524958 m!771136))

(assert (=> b!524600 m!770721))

(declare-fun b!524960 () Bool)

(declare-fun e!315167 () Bool)

(declare-fun tp!165135 () Bool)

(declare-fun tp!165136 () Bool)

(assert (=> b!524960 (= e!315167 (and tp!165135 tp!165136))))

(assert (=> b!524631 (= tp!164960 e!315167)))

(assert (= (and b!524631 ((_ is Cons!4883) (exprs!647 (_2!3236 (_1!3237 (h!10285 mapValue!2204)))))) b!524960))

(declare-fun b!524963 () Bool)

(declare-fun e!315168 () Bool)

(declare-fun tp!165141 () Bool)

(assert (=> b!524963 (= e!315168 tp!165141)))

(declare-fun b!524961 () Bool)

(assert (=> b!524961 (= e!315168 tp_is_empty!2793)))

(declare-fun b!524962 () Bool)

(declare-fun tp!165140 () Bool)

(declare-fun tp!165139 () Bool)

(assert (=> b!524962 (= e!315168 (and tp!165140 tp!165139))))

(declare-fun b!524964 () Bool)

(declare-fun tp!165137 () Bool)

(declare-fun tp!165138 () Bool)

(assert (=> b!524964 (= e!315168 (and tp!165137 tp!165138))))

(assert (=> b!524614 (= tp!164932 e!315168)))

(assert (= (and b!524614 ((_ is ElementMatch!1209) (regOne!2930 (regex!884 (h!10291 rules!1345))))) b!524961))

(assert (= (and b!524614 ((_ is Concat!2117) (regOne!2930 (regex!884 (h!10291 rules!1345))))) b!524962))

(assert (= (and b!524614 ((_ is Star!1209) (regOne!2930 (regex!884 (h!10291 rules!1345))))) b!524963))

(assert (= (and b!524614 ((_ is Union!1209) (regOne!2930 (regex!884 (h!10291 rules!1345))))) b!524964))

(declare-fun b!524967 () Bool)

(declare-fun e!315169 () Bool)

(declare-fun tp!165146 () Bool)

(assert (=> b!524967 (= e!315169 tp!165146)))

(declare-fun b!524965 () Bool)

(assert (=> b!524965 (= e!315169 tp_is_empty!2793)))

(declare-fun b!524966 () Bool)

(declare-fun tp!165145 () Bool)

(declare-fun tp!165144 () Bool)

(assert (=> b!524966 (= e!315169 (and tp!165145 tp!165144))))

(declare-fun b!524968 () Bool)

(declare-fun tp!165142 () Bool)

(declare-fun tp!165143 () Bool)

(assert (=> b!524968 (= e!315169 (and tp!165142 tp!165143))))

(assert (=> b!524614 (= tp!164931 e!315169)))

(assert (= (and b!524614 ((_ is ElementMatch!1209) (regTwo!2930 (regex!884 (h!10291 rules!1345))))) b!524965))

(assert (= (and b!524614 ((_ is Concat!2117) (regTwo!2930 (regex!884 (h!10291 rules!1345))))) b!524966))

(assert (= (and b!524614 ((_ is Star!1209) (regTwo!2930 (regex!884 (h!10291 rules!1345))))) b!524967))

(assert (= (and b!524614 ((_ is Union!1209) (regTwo!2930 (regex!884 (h!10291 rules!1345))))) b!524968))

(declare-fun condSetEmpty!2402 () Bool)

(assert (=> setNonEmpty!2351 (= condSetEmpty!2402 (= setRest!2351 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2402 () Bool)

(assert (=> setNonEmpty!2351 (= tp!164855 setRes!2402)))

(declare-fun setIsEmpty!2402 () Bool)

(assert (=> setIsEmpty!2402 setRes!2402))

(declare-fun e!315170 () Bool)

(declare-fun setNonEmpty!2402 () Bool)

(declare-fun setElem!2402 () Context!294)

(declare-fun tp!165148 () Bool)

(assert (=> setNonEmpty!2402 (= setRes!2402 (and tp!165148 (inv!6158 setElem!2402) e!315170))))

(declare-fun setRest!2402 () (InoxSet Context!294))

(assert (=> setNonEmpty!2402 (= setRest!2351 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2402 true) setRest!2402))))

(declare-fun b!524969 () Bool)

(declare-fun tp!165147 () Bool)

(assert (=> b!524969 (= e!315170 tp!165147)))

(assert (= (and setNonEmpty!2351 condSetEmpty!2402) setIsEmpty!2402))

(assert (= (and setNonEmpty!2351 (not condSetEmpty!2402)) setNonEmpty!2402))

(assert (= setNonEmpty!2402 b!524969))

(declare-fun m!771138 () Bool)

(assert (=> setNonEmpty!2402 m!771138))

(declare-fun b!524970 () Bool)

(declare-fun e!315171 () Bool)

(declare-fun tp!165149 () Bool)

(declare-fun tp!165150 () Bool)

(assert (=> b!524970 (= e!315171 (and tp!165149 tp!165150))))

(assert (=> b!524672 (= tp!165011 e!315171)))

(assert (= (and b!524672 ((_ is Cons!4883) (exprs!647 setElem!2378))) b!524970))

(declare-fun b!524971 () Bool)

(declare-fun e!315172 () Bool)

(declare-fun tp!165151 () Bool)

(declare-fun tp!165152 () Bool)

(assert (=> b!524971 (= e!315172 (and tp!165151 tp!165152))))

(assert (=> b!524548 (= tp!164852 e!315172)))

(assert (= (and b!524548 ((_ is Cons!4883) (exprs!647 setElem!2352))) b!524971))

(declare-fun b!524972 () Bool)

(declare-fun e!315173 () Bool)

(declare-fun tp!165153 () Bool)

(declare-fun tp!165154 () Bool)

(assert (=> b!524972 (= e!315173 (and tp!165153 tp!165154))))

(assert (=> b!524666 (= tp!165003 e!315173)))

(assert (= (and b!524666 ((_ is Cons!4883) (exprs!647 (_1!3240 (_1!3241 (h!10288 mapDefault!2207)))))) b!524972))

(declare-fun condSetEmpty!2403 () Bool)

(assert (=> setNonEmpty!2371 (= condSetEmpty!2403 (= setRest!2371 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2403 () Bool)

(assert (=> setNonEmpty!2371 (= tp!164982 setRes!2403)))

(declare-fun setIsEmpty!2403 () Bool)

(assert (=> setIsEmpty!2403 setRes!2403))

(declare-fun tp!165156 () Bool)

(declare-fun setNonEmpty!2403 () Bool)

(declare-fun e!315174 () Bool)

(declare-fun setElem!2403 () Context!294)

(assert (=> setNonEmpty!2403 (= setRes!2403 (and tp!165156 (inv!6158 setElem!2403) e!315174))))

(declare-fun setRest!2403 () (InoxSet Context!294))

(assert (=> setNonEmpty!2403 (= setRest!2371 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2403 true) setRest!2403))))

(declare-fun b!524973 () Bool)

(declare-fun tp!165155 () Bool)

(assert (=> b!524973 (= e!315174 tp!165155)))

(assert (= (and setNonEmpty!2371 condSetEmpty!2403) setIsEmpty!2403))

(assert (= (and setNonEmpty!2371 (not condSetEmpty!2403)) setNonEmpty!2403))

(assert (= setNonEmpty!2403 b!524973))

(declare-fun m!771140 () Bool)

(assert (=> setNonEmpty!2403 m!771140))

(declare-fun b!524976 () Bool)

(declare-fun e!315175 () Bool)

(declare-fun tp!165161 () Bool)

(assert (=> b!524976 (= e!315175 tp!165161)))

(declare-fun b!524974 () Bool)

(assert (=> b!524974 (= e!315175 tp_is_empty!2793)))

(declare-fun b!524975 () Bool)

(declare-fun tp!165160 () Bool)

(declare-fun tp!165159 () Bool)

(assert (=> b!524975 (= e!315175 (and tp!165160 tp!165159))))

(declare-fun b!524977 () Bool)

(declare-fun tp!165157 () Bool)

(declare-fun tp!165158 () Bool)

(assert (=> b!524977 (= e!315175 (and tp!165157 tp!165158))))

(assert (=> b!524634 (= tp!164964 e!315175)))

(assert (= (and b!524634 ((_ is ElementMatch!1209) (_1!3236 (_1!3237 (h!10285 mapValue!2204))))) b!524974))

(assert (= (and b!524634 ((_ is Concat!2117) (_1!3236 (_1!3237 (h!10285 mapValue!2204))))) b!524975))

(assert (= (and b!524634 ((_ is Star!1209) (_1!3236 (_1!3237 (h!10285 mapValue!2204))))) b!524976))

(assert (= (and b!524634 ((_ is Union!1209) (_1!3236 (_1!3237 (h!10285 mapValue!2204))))) b!524977))

(declare-fun e!315178 () Bool)

(declare-fun e!315176 () Bool)

(declare-fun setRes!2404 () Bool)

(declare-fun tp!165164 () Bool)

(declare-fun tp!165162 () Bool)

(declare-fun b!524978 () Bool)

(assert (=> b!524978 (= e!315178 (and tp!165164 (inv!6158 (_2!3236 (_1!3237 (h!10285 (t!73496 mapValue!2204))))) e!315176 tp_is_empty!2793 setRes!2404 tp!165162))))

(declare-fun condSetEmpty!2404 () Bool)

(assert (=> b!524978 (= condSetEmpty!2404 (= (_2!3237 (h!10285 (t!73496 mapValue!2204))) ((as const (Array Context!294 Bool)) false)))))

(assert (=> b!524634 (= tp!164957 e!315178)))

(declare-fun setIsEmpty!2404 () Bool)

(assert (=> setIsEmpty!2404 setRes!2404))

(declare-fun b!524979 () Bool)

(declare-fun tp!165163 () Bool)

(assert (=> b!524979 (= e!315176 tp!165163)))

(declare-fun tp!165165 () Bool)

(declare-fun e!315177 () Bool)

(declare-fun setNonEmpty!2404 () Bool)

(declare-fun setElem!2404 () Context!294)

(assert (=> setNonEmpty!2404 (= setRes!2404 (and tp!165165 (inv!6158 setElem!2404) e!315177))))

(declare-fun setRest!2404 () (InoxSet Context!294))

(assert (=> setNonEmpty!2404 (= (_2!3237 (h!10285 (t!73496 mapValue!2204))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2404 true) setRest!2404))))

(declare-fun b!524980 () Bool)

(declare-fun tp!165166 () Bool)

(assert (=> b!524980 (= e!315177 tp!165166)))

(assert (= b!524978 b!524979))

(assert (= (and b!524978 condSetEmpty!2404) setIsEmpty!2404))

(assert (= (and b!524978 (not condSetEmpty!2404)) setNonEmpty!2404))

(assert (= setNonEmpty!2404 b!524980))

(assert (= (and b!524634 ((_ is Cons!4884) (t!73496 mapValue!2204))) b!524978))

(declare-fun m!771142 () Bool)

(assert (=> b!524978 m!771142))

(declare-fun m!771144 () Bool)

(assert (=> setNonEmpty!2404 m!771144))

(declare-fun condSetEmpty!2405 () Bool)

(assert (=> setNonEmpty!2382 (= condSetEmpty!2405 (= setRest!2382 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2405 () Bool)

(assert (=> setNonEmpty!2382 (= tp!165027 setRes!2405)))

(declare-fun setIsEmpty!2405 () Bool)

(assert (=> setIsEmpty!2405 setRes!2405))

(declare-fun tp!165168 () Bool)

(declare-fun setElem!2405 () Context!294)

(declare-fun setNonEmpty!2405 () Bool)

(declare-fun e!315179 () Bool)

(assert (=> setNonEmpty!2405 (= setRes!2405 (and tp!165168 (inv!6158 setElem!2405) e!315179))))

(declare-fun setRest!2405 () (InoxSet Context!294))

(assert (=> setNonEmpty!2405 (= setRest!2382 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2405 true) setRest!2405))))

(declare-fun b!524981 () Bool)

(declare-fun tp!165167 () Bool)

(assert (=> b!524981 (= e!315179 tp!165167)))

(assert (= (and setNonEmpty!2382 condSetEmpty!2405) setIsEmpty!2405))

(assert (= (and setNonEmpty!2382 (not condSetEmpty!2405)) setNonEmpty!2405))

(assert (= setNonEmpty!2405 b!524981))

(declare-fun m!771146 () Bool)

(assert (=> setNonEmpty!2405 m!771146))

(declare-fun b!524982 () Bool)

(declare-fun e!315180 () Bool)

(declare-fun tp!165170 () Bool)

(assert (=> b!524982 (= e!315180 tp!165170)))

(declare-fun setNonEmpty!2406 () Bool)

(declare-fun setElem!2406 () Context!294)

(declare-fun setRes!2406 () Bool)

(declare-fun tp!165171 () Bool)

(declare-fun e!315182 () Bool)

(assert (=> setNonEmpty!2406 (= setRes!2406 (and tp!165171 (inv!6158 setElem!2406) e!315182))))

(declare-fun setRest!2406 () (InoxSet Context!294))

(assert (=> setNonEmpty!2406 (= (_2!3241 (h!10288 (t!73499 mapValue!2207))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2406 true) setRest!2406))))

(declare-fun e!315181 () Bool)

(assert (=> b!524665 (= tp!165005 e!315181)))

(declare-fun setIsEmpty!2406 () Bool)

(assert (=> setIsEmpty!2406 setRes!2406))

(declare-fun b!524983 () Bool)

(declare-fun tp!165169 () Bool)

(assert (=> b!524983 (= e!315182 tp!165169)))

(declare-fun tp!165172 () Bool)

(declare-fun b!524984 () Bool)

(assert (=> b!524984 (= e!315181 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 (t!73499 mapValue!2207))))) e!315180 tp_is_empty!2793 setRes!2406 tp!165172))))

(declare-fun condSetEmpty!2406 () Bool)

(assert (=> b!524984 (= condSetEmpty!2406 (= (_2!3241 (h!10288 (t!73499 mapValue!2207))) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!524984 b!524982))

(assert (= (and b!524984 condSetEmpty!2406) setIsEmpty!2406))

(assert (= (and b!524984 (not condSetEmpty!2406)) setNonEmpty!2406))

(assert (= setNonEmpty!2406 b!524983))

(assert (= (and b!524665 ((_ is Cons!4887) (t!73499 mapValue!2207))) b!524984))

(declare-fun m!771148 () Bool)

(assert (=> setNonEmpty!2406 m!771148))

(declare-fun m!771150 () Bool)

(assert (=> b!524984 m!771150))

(declare-fun b!524985 () Bool)

(declare-fun e!315183 () Bool)

(declare-fun tp!165173 () Bool)

(declare-fun tp!165174 () Bool)

(assert (=> b!524985 (= e!315183 (and tp!165173 tp!165174))))

(assert (=> b!524633 (= tp!164966 e!315183)))

(assert (= (and b!524633 ((_ is Cons!4883) (exprs!647 setElem!2367))) b!524985))

(declare-fun setRes!2407 () Bool)

(declare-fun tp!165176 () Bool)

(declare-fun setElem!2407 () Context!294)

(declare-fun setNonEmpty!2407 () Bool)

(declare-fun e!315185 () Bool)

(assert (=> setNonEmpty!2407 (= setRes!2407 (and tp!165176 (inv!6158 setElem!2407) e!315185))))

(declare-fun setRest!2407 () (InoxSet Context!294))

(assert (=> setNonEmpty!2407 (= (_1!3238 (_1!3239 (h!10287 (t!73498 (minValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2407 true) setRest!2407))))

(declare-fun b!524986 () Bool)

(declare-fun e!315184 () Bool)

(declare-fun tp!165175 () Bool)

(assert (=> b!524986 (= e!315184 (and setRes!2407 tp!165175))))

(declare-fun condSetEmpty!2407 () Bool)

(assert (=> b!524986 (= condSetEmpty!2407 (= (_1!3238 (_1!3239 (h!10287 (t!73498 (minValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56)))))))))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524987 () Bool)

(declare-fun tp!165177 () Bool)

(assert (=> b!524987 (= e!315185 tp!165177)))

(assert (=> b!524682 (= tp!165026 e!315184)))

(declare-fun setIsEmpty!2407 () Bool)

(assert (=> setIsEmpty!2407 setRes!2407))

(assert (= (and b!524986 condSetEmpty!2407) setIsEmpty!2407))

(assert (= (and b!524986 (not condSetEmpty!2407)) setNonEmpty!2407))

(assert (= setNonEmpty!2407 b!524987))

(assert (= (and b!524682 ((_ is Cons!4886) (t!73498 (minValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))))) b!524986))

(declare-fun m!771152 () Bool)

(assert (=> setNonEmpty!2407 m!771152))

(declare-fun tp!165179 () Bool)

(declare-fun setElem!2408 () Context!294)

(declare-fun e!315187 () Bool)

(declare-fun setRes!2408 () Bool)

(declare-fun setNonEmpty!2408 () Bool)

(assert (=> setNonEmpty!2408 (= setRes!2408 (and tp!165179 (inv!6158 setElem!2408) e!315187))))

(declare-fun setRest!2408 () (InoxSet Context!294))

(assert (=> setNonEmpty!2408 (= (_1!3238 (_1!3239 (h!10287 (t!73498 mapDefault!2201)))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2408 true) setRest!2408))))

(declare-fun b!524988 () Bool)

(declare-fun e!315186 () Bool)

(declare-fun tp!165178 () Bool)

(assert (=> b!524988 (= e!315186 (and setRes!2408 tp!165178))))

(declare-fun condSetEmpty!2408 () Bool)

(assert (=> b!524988 (= condSetEmpty!2408 (= (_1!3238 (_1!3239 (h!10287 (t!73498 mapDefault!2201)))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!524989 () Bool)

(declare-fun tp!165180 () Bool)

(assert (=> b!524989 (= e!315187 tp!165180)))

(assert (=> b!524547 (= tp!164857 e!315186)))

(declare-fun setIsEmpty!2408 () Bool)

(assert (=> setIsEmpty!2408 setRes!2408))

(assert (= (and b!524988 condSetEmpty!2408) setIsEmpty!2408))

(assert (= (and b!524988 (not condSetEmpty!2408)) setNonEmpty!2408))

(assert (= setNonEmpty!2408 b!524989))

(assert (= (and b!524547 ((_ is Cons!4886) (t!73498 mapDefault!2201))) b!524988))

(declare-fun m!771154 () Bool)

(assert (=> setNonEmpty!2408 m!771154))

(declare-fun condSetEmpty!2409 () Bool)

(assert (=> setNonEmpty!2377 (= condSetEmpty!2409 (= setRest!2377 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2409 () Bool)

(assert (=> setNonEmpty!2377 (= tp!165008 setRes!2409)))

(declare-fun setIsEmpty!2409 () Bool)

(assert (=> setIsEmpty!2409 setRes!2409))

(declare-fun setElem!2409 () Context!294)

(declare-fun setNonEmpty!2409 () Bool)

(declare-fun tp!165182 () Bool)

(declare-fun e!315188 () Bool)

(assert (=> setNonEmpty!2409 (= setRes!2409 (and tp!165182 (inv!6158 setElem!2409) e!315188))))

(declare-fun setRest!2409 () (InoxSet Context!294))

(assert (=> setNonEmpty!2409 (= setRest!2377 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2409 true) setRest!2409))))

(declare-fun b!524990 () Bool)

(declare-fun tp!165181 () Bool)

(assert (=> b!524990 (= e!315188 tp!165181)))

(assert (= (and setNonEmpty!2377 condSetEmpty!2409) setIsEmpty!2409))

(assert (= (and setNonEmpty!2377 (not condSetEmpty!2409)) setNonEmpty!2409))

(assert (= setNonEmpty!2409 b!524990))

(declare-fun m!771156 () Bool)

(assert (=> setNonEmpty!2409 m!771156))

(declare-fun b!524991 () Bool)

(declare-fun e!315189 () Bool)

(declare-fun tp!165183 () Bool)

(assert (=> b!524991 (= e!315189 (and tp_is_empty!2793 tp!165183))))

(assert (=> b!524582 (= tp!164889 e!315189)))

(assert (= (and b!524582 ((_ is Cons!4885) (innerList!1648 (xs!4225 (c!100889 input!747))))) b!524991))

(declare-fun b!524994 () Bool)

(declare-fun e!315190 () Bool)

(declare-fun tp!165188 () Bool)

(assert (=> b!524994 (= e!315190 tp!165188)))

(declare-fun b!524992 () Bool)

(assert (=> b!524992 (= e!315190 tp_is_empty!2793)))

(declare-fun b!524993 () Bool)

(declare-fun tp!165187 () Bool)

(declare-fun tp!165186 () Bool)

(assert (=> b!524993 (= e!315190 (and tp!165187 tp!165186))))

(declare-fun b!524995 () Bool)

(declare-fun tp!165184 () Bool)

(declare-fun tp!165185 () Bool)

(assert (=> b!524995 (= e!315190 (and tp!165184 tp!165185))))

(assert (=> b!524637 (= tp!164969 e!315190)))

(assert (= (and b!524637 ((_ is ElementMatch!1209) (_1!3236 (_1!3237 (h!10285 mapValue!2197))))) b!524992))

(assert (= (and b!524637 ((_ is Concat!2117) (_1!3236 (_1!3237 (h!10285 mapValue!2197))))) b!524993))

(assert (= (and b!524637 ((_ is Star!1209) (_1!3236 (_1!3237 (h!10285 mapValue!2197))))) b!524994))

(assert (= (and b!524637 ((_ is Union!1209) (_1!3236 (_1!3237 (h!10285 mapValue!2197))))) b!524995))

(declare-fun setRes!2410 () Bool)

(declare-fun b!524996 () Bool)

(declare-fun e!315191 () Bool)

(declare-fun e!315193 () Bool)

(declare-fun tp!165191 () Bool)

(declare-fun tp!165189 () Bool)

(assert (=> b!524996 (= e!315193 (and tp!165191 (inv!6158 (_2!3236 (_1!3237 (h!10285 (t!73496 mapValue!2197))))) e!315191 tp_is_empty!2793 setRes!2410 tp!165189))))

(declare-fun condSetEmpty!2410 () Bool)

(assert (=> b!524996 (= condSetEmpty!2410 (= (_2!3237 (h!10285 (t!73496 mapValue!2197))) ((as const (Array Context!294 Bool)) false)))))

(assert (=> b!524637 (= tp!164967 e!315193)))

(declare-fun setIsEmpty!2410 () Bool)

(assert (=> setIsEmpty!2410 setRes!2410))

(declare-fun b!524997 () Bool)

(declare-fun tp!165190 () Bool)

(assert (=> b!524997 (= e!315191 tp!165190)))

(declare-fun setElem!2410 () Context!294)

(declare-fun setNonEmpty!2410 () Bool)

(declare-fun e!315192 () Bool)

(declare-fun tp!165192 () Bool)

(assert (=> setNonEmpty!2410 (= setRes!2410 (and tp!165192 (inv!6158 setElem!2410) e!315192))))

(declare-fun setRest!2410 () (InoxSet Context!294))

(assert (=> setNonEmpty!2410 (= (_2!3237 (h!10285 (t!73496 mapValue!2197))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2410 true) setRest!2410))))

(declare-fun b!524998 () Bool)

(declare-fun tp!165193 () Bool)

(assert (=> b!524998 (= e!315192 tp!165193)))

(assert (= b!524996 b!524997))

(assert (= (and b!524996 condSetEmpty!2410) setIsEmpty!2410))

(assert (= (and b!524996 (not condSetEmpty!2410)) setNonEmpty!2410))

(assert (= setNonEmpty!2410 b!524998))

(assert (= (and b!524637 ((_ is Cons!4884) (t!73496 mapValue!2197))) b!524996))

(declare-fun m!771158 () Bool)

(assert (=> b!524996 m!771158))

(declare-fun m!771160 () Bool)

(assert (=> setNonEmpty!2410 m!771160))

(declare-fun b!524999 () Bool)

(declare-fun e!315194 () Bool)

(declare-fun tp!165194 () Bool)

(declare-fun tp!165195 () Bool)

(assert (=> b!524999 (= e!315194 (and tp!165194 tp!165195))))

(assert (=> b!524592 (= tp!164902 e!315194)))

(assert (= (and b!524592 ((_ is Cons!4883) (exprs!647 (_2!3236 (_1!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))))))) b!524999))

(declare-fun condSetEmpty!2411 () Bool)

(assert (=> setNonEmpty!2381 (= condSetEmpty!2411 (= setRest!2381 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2411 () Bool)

(assert (=> setNonEmpty!2381 (= tp!165024 setRes!2411)))

(declare-fun setIsEmpty!2411 () Bool)

(assert (=> setIsEmpty!2411 setRes!2411))

(declare-fun setNonEmpty!2411 () Bool)

(declare-fun tp!165197 () Bool)

(declare-fun e!315195 () Bool)

(declare-fun setElem!2411 () Context!294)

(assert (=> setNonEmpty!2411 (= setRes!2411 (and tp!165197 (inv!6158 setElem!2411) e!315195))))

(declare-fun setRest!2411 () (InoxSet Context!294))

(assert (=> setNonEmpty!2411 (= setRest!2381 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2411 true) setRest!2411))))

(declare-fun b!525000 () Bool)

(declare-fun tp!165196 () Bool)

(assert (=> b!525000 (= e!315195 tp!165196)))

(assert (= (and setNonEmpty!2381 condSetEmpty!2411) setIsEmpty!2411))

(assert (= (and setNonEmpty!2381 (not condSetEmpty!2411)) setNonEmpty!2411))

(assert (= setNonEmpty!2411 b!525000))

(declare-fun m!771162 () Bool)

(assert (=> setNonEmpty!2411 m!771162))

(declare-fun b!525001 () Bool)

(declare-fun e!315196 () Bool)

(declare-fun tp!165198 () Bool)

(declare-fun tp!165199 () Bool)

(assert (=> b!525001 (= e!315196 (and tp!165198 tp!165199))))

(assert (=> b!524595 (= tp!164907 e!315196)))

(assert (= (and b!524595 ((_ is Cons!4883) (exprs!647 (_2!3236 (_1!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462)))))))))))) b!525001))

(declare-fun b!525002 () Bool)

(declare-fun e!315197 () Bool)

(declare-fun tp!165200 () Bool)

(declare-fun tp!165201 () Bool)

(assert (=> b!525002 (= e!315197 (and tp!165200 tp!165201))))

(assert (=> b!524598 (= tp!164912 e!315197)))

(assert (= (and b!524598 ((_ is Cons!4883) (exprs!647 (_2!3236 (_1!3237 (h!10285 mapDefault!2198)))))) b!525002))

(declare-fun b!525003 () Bool)

(declare-fun e!315198 () Bool)

(declare-fun tp!165202 () Bool)

(declare-fun tp!165203 () Bool)

(assert (=> b!525003 (= e!315198 (and tp!165202 tp!165203))))

(assert (=> b!524669 (= tp!165010 e!315198)))

(assert (= (and b!524669 ((_ is Cons!4883) (exprs!647 setElem!2376))) b!525003))

(declare-fun e!315200 () Bool)

(declare-fun tp!165204 () Bool)

(declare-fun b!525004 () Bool)

(declare-fun tp!165206 () Bool)

(assert (=> b!525004 (= e!315200 (and (inv!6154 (left!4192 (left!4192 (c!100889 input!747)))) tp!165204 (inv!6154 (right!4522 (left!4192 (c!100889 input!747)))) tp!165206))))

(declare-fun b!525006 () Bool)

(declare-fun e!315199 () Bool)

(declare-fun tp!165205 () Bool)

(assert (=> b!525006 (= e!315199 tp!165205)))

(declare-fun b!525005 () Bool)

(assert (=> b!525005 (= e!315200 (and (inv!6159 (xs!4225 (left!4192 (c!100889 input!747)))) e!315199))))

(assert (=> b!524580 (= tp!164888 (and (inv!6154 (left!4192 (c!100889 input!747))) e!315200))))

(assert (= (and b!524580 ((_ is Node!1590) (left!4192 (c!100889 input!747)))) b!525004))

(assert (= b!525005 b!525006))

(assert (= (and b!524580 ((_ is Leaf!2535) (left!4192 (c!100889 input!747)))) b!525005))

(declare-fun m!771164 () Bool)

(assert (=> b!525004 m!771164))

(declare-fun m!771166 () Bool)

(assert (=> b!525004 m!771166))

(declare-fun m!771168 () Bool)

(assert (=> b!525005 m!771168))

(assert (=> b!524580 m!770701))

(declare-fun e!315202 () Bool)

(declare-fun tp!165209 () Bool)

(declare-fun tp!165207 () Bool)

(declare-fun b!525007 () Bool)

(assert (=> b!525007 (= e!315202 (and (inv!6154 (left!4192 (right!4522 (c!100889 input!747)))) tp!165207 (inv!6154 (right!4522 (right!4522 (c!100889 input!747)))) tp!165209))))

(declare-fun b!525009 () Bool)

(declare-fun e!315201 () Bool)

(declare-fun tp!165208 () Bool)

(assert (=> b!525009 (= e!315201 tp!165208)))

(declare-fun b!525008 () Bool)

(assert (=> b!525008 (= e!315202 (and (inv!6159 (xs!4225 (right!4522 (c!100889 input!747)))) e!315201))))

(assert (=> b!524580 (= tp!164890 (and (inv!6154 (right!4522 (c!100889 input!747))) e!315202))))

(assert (= (and b!524580 ((_ is Node!1590) (right!4522 (c!100889 input!747)))) b!525007))

(assert (= b!525008 b!525009))

(assert (= (and b!524580 ((_ is Leaf!2535) (right!4522 (c!100889 input!747)))) b!525008))

(declare-fun m!771170 () Bool)

(assert (=> b!525007 m!771170))

(declare-fun m!771172 () Bool)

(assert (=> b!525007 m!771172))

(declare-fun m!771174 () Bool)

(assert (=> b!525008 m!771174))

(assert (=> b!524580 m!770703))

(declare-fun setIsEmpty!2412 () Bool)

(declare-fun setRes!2412 () Bool)

(assert (=> setIsEmpty!2412 setRes!2412))

(declare-fun setIsEmpty!2413 () Bool)

(declare-fun setRes!2413 () Bool)

(assert (=> setIsEmpty!2413 setRes!2413))

(declare-fun b!525011 () Bool)

(declare-fun e!315205 () Bool)

(declare-fun tp!165216 () Bool)

(assert (=> b!525011 (= e!315205 tp!165216)))

(declare-fun mapIsEmpty!2209 () Bool)

(declare-fun mapRes!2209 () Bool)

(assert (=> mapIsEmpty!2209 mapRes!2209))

(declare-fun b!525012 () Bool)

(declare-fun e!315207 () Bool)

(declare-fun tp!165220 () Bool)

(assert (=> b!525012 (= e!315207 tp!165220)))

(declare-fun setNonEmpty!2412 () Bool)

(declare-fun tp!165210 () Bool)

(declare-fun setElem!2412 () Context!294)

(declare-fun e!315208 () Bool)

(assert (=> setNonEmpty!2412 (= setRes!2412 (and tp!165210 (inv!6158 setElem!2412) e!315208))))

(declare-fun mapDefault!2209 () List!4894)

(declare-fun setRest!2413 () (InoxSet Context!294))

(assert (=> setNonEmpty!2412 (= (_2!3237 (h!10285 mapDefault!2209)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2412 true) setRest!2413))))

(declare-fun b!525013 () Bool)

(declare-fun mapValue!2209 () List!4894)

(declare-fun tp!165218 () Bool)

(declare-fun e!315203 () Bool)

(declare-fun tp!165211 () Bool)

(declare-fun e!315204 () Bool)

(assert (=> b!525013 (= e!315204 (and tp!165218 (inv!6158 (_2!3236 (_1!3237 (h!10285 mapValue!2209)))) e!315203 tp_is_empty!2793 setRes!2413 tp!165211))))

(declare-fun condSetEmpty!2412 () Bool)

(assert (=> b!525013 (= condSetEmpty!2412 (= (_2!3237 (h!10285 mapValue!2209)) ((as const (Array Context!294 Bool)) false)))))

(declare-fun setElem!2413 () Context!294)

(declare-fun tp!165219 () Bool)

(declare-fun setNonEmpty!2413 () Bool)

(assert (=> setNonEmpty!2413 (= setRes!2413 (and tp!165219 (inv!6158 setElem!2413) e!315207))))

(declare-fun setRest!2412 () (InoxSet Context!294))

(assert (=> setNonEmpty!2413 (= (_2!3237 (h!10285 mapValue!2209)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2413 true) setRest!2412))))

(declare-fun tp!165212 () Bool)

(declare-fun tp!165213 () Bool)

(declare-fun b!525014 () Bool)

(declare-fun e!315206 () Bool)

(assert (=> b!525014 (= e!315206 (and tp!165212 (inv!6158 (_2!3236 (_1!3237 (h!10285 mapDefault!2209)))) e!315205 tp_is_empty!2793 setRes!2412 tp!165213))))

(declare-fun condSetEmpty!2413 () Bool)

(assert (=> b!525014 (= condSetEmpty!2413 (= (_2!3237 (h!10285 mapDefault!2209)) ((as const (Array Context!294 Bool)) false)))))

(declare-fun condMapEmpty!2209 () Bool)

(assert (=> mapNonEmpty!2204 (= condMapEmpty!2209 (= mapRest!2204 ((as const (Array (_ BitVec 32) List!4894)) mapDefault!2209)))))

(assert (=> mapNonEmpty!2204 (= tp!164963 (and e!315206 mapRes!2209))))

(declare-fun b!525010 () Bool)

(declare-fun tp!165214 () Bool)

(assert (=> b!525010 (= e!315203 tp!165214)))

(declare-fun b!525015 () Bool)

(declare-fun tp!165215 () Bool)

(assert (=> b!525015 (= e!315208 tp!165215)))

(declare-fun mapNonEmpty!2209 () Bool)

(declare-fun tp!165217 () Bool)

(assert (=> mapNonEmpty!2209 (= mapRes!2209 (and tp!165217 e!315204))))

(declare-fun mapKey!2209 () (_ BitVec 32))

(declare-fun mapRest!2209 () (Array (_ BitVec 32) List!4894))

(assert (=> mapNonEmpty!2209 (= mapRest!2204 (store mapRest!2209 mapKey!2209 mapValue!2209))))

(assert (= (and mapNonEmpty!2204 condMapEmpty!2209) mapIsEmpty!2209))

(assert (= (and mapNonEmpty!2204 (not condMapEmpty!2209)) mapNonEmpty!2209))

(assert (= b!525013 b!525010))

(assert (= (and b!525013 condSetEmpty!2412) setIsEmpty!2413))

(assert (= (and b!525013 (not condSetEmpty!2412)) setNonEmpty!2413))

(assert (= setNonEmpty!2413 b!525012))

(assert (= (and mapNonEmpty!2209 ((_ is Cons!4884) mapValue!2209)) b!525013))

(assert (= b!525014 b!525011))

(assert (= (and b!525014 condSetEmpty!2413) setIsEmpty!2412))

(assert (= (and b!525014 (not condSetEmpty!2413)) setNonEmpty!2412))

(assert (= setNonEmpty!2412 b!525015))

(assert (= (and mapNonEmpty!2204 ((_ is Cons!4884) mapDefault!2209)) b!525014))

(declare-fun m!771176 () Bool)

(assert (=> b!525014 m!771176))

(declare-fun m!771178 () Bool)

(assert (=> setNonEmpty!2413 m!771178))

(declare-fun m!771180 () Bool)

(assert (=> b!525013 m!771180))

(declare-fun m!771182 () Bool)

(assert (=> setNonEmpty!2412 m!771182))

(declare-fun m!771184 () Bool)

(assert (=> mapNonEmpty!2209 m!771184))

(declare-fun b!525018 () Bool)

(declare-fun e!315209 () Bool)

(declare-fun tp!165225 () Bool)

(assert (=> b!525018 (= e!315209 tp!165225)))

(declare-fun b!525016 () Bool)

(assert (=> b!525016 (= e!315209 tp_is_empty!2793)))

(declare-fun b!525017 () Bool)

(declare-fun tp!165224 () Bool)

(declare-fun tp!165223 () Bool)

(assert (=> b!525017 (= e!315209 (and tp!165224 tp!165223))))

(declare-fun b!525019 () Bool)

(declare-fun tp!165221 () Bool)

(declare-fun tp!165222 () Bool)

(assert (=> b!525019 (= e!315209 (and tp!165221 tp!165222))))

(assert (=> b!524591 (= tp!164903 e!315209)))

(assert (= (and b!524591 ((_ is ElementMatch!1209) (_1!3236 (_1!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) b!525016))

(assert (= (and b!524591 ((_ is Concat!2117) (_1!3236 (_1!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) b!525017))

(assert (= (and b!524591 ((_ is Star!1209) (_1!3236 (_1!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) b!525018))

(assert (= (and b!524591 ((_ is Union!1209) (_1!3236 (_1!3237 (h!10285 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) b!525019))

(declare-fun b!525020 () Bool)

(declare-fun tp!165226 () Bool)

(declare-fun tp!165228 () Bool)

(declare-fun e!315212 () Bool)

(declare-fun setRes!2414 () Bool)

(declare-fun e!315210 () Bool)

(assert (=> b!525020 (= e!315212 (and tp!165228 (inv!6158 (_2!3236 (_1!3237 (h!10285 (t!73496 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) e!315210 tp_is_empty!2793 setRes!2414 tp!165226))))

(declare-fun condSetEmpty!2414 () Bool)

(assert (=> b!525020 (= condSetEmpty!2414 (= (_2!3237 (h!10285 (t!73496 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))) ((as const (Array Context!294 Bool)) false)))))

(assert (=> b!524591 (= tp!164901 e!315212)))

(declare-fun setIsEmpty!2414 () Bool)

(assert (=> setIsEmpty!2414 setRes!2414))

(declare-fun b!525021 () Bool)

(declare-fun tp!165227 () Bool)

(assert (=> b!525021 (= e!315210 tp!165227)))

(declare-fun setElem!2414 () Context!294)

(declare-fun tp!165229 () Bool)

(declare-fun e!315211 () Bool)

(declare-fun setNonEmpty!2414 () Bool)

(assert (=> setNonEmpty!2414 (= setRes!2414 (and tp!165229 (inv!6158 setElem!2414) e!315211))))

(declare-fun setRest!2414 () (InoxSet Context!294))

(assert (=> setNonEmpty!2414 (= (_2!3237 (h!10285 (t!73496 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2414 true) setRest!2414))))

(declare-fun b!525022 () Bool)

(declare-fun tp!165230 () Bool)

(assert (=> b!525022 (= e!315211 tp!165230)))

(assert (= b!525020 b!525021))

(assert (= (and b!525020 condSetEmpty!2414) setIsEmpty!2414))

(assert (= (and b!525020 (not condSetEmpty!2414)) setNonEmpty!2414))

(assert (= setNonEmpty!2414 b!525022))

(assert (= (and b!524591 ((_ is Cons!4884) (t!73496 (zeroValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))) b!525020))

(declare-fun m!771186 () Bool)

(assert (=> b!525020 m!771186))

(declare-fun m!771188 () Bool)

(assert (=> setNonEmpty!2414 m!771188))

(declare-fun e!315214 () Bool)

(declare-fun setRes!2415 () Bool)

(declare-fun setElem!2415 () Context!294)

(declare-fun setNonEmpty!2415 () Bool)

(declare-fun tp!165232 () Bool)

(assert (=> setNonEmpty!2415 (= setRes!2415 (and tp!165232 (inv!6158 setElem!2415) e!315214))))

(declare-fun setRest!2415 () (InoxSet Context!294))

(assert (=> setNonEmpty!2415 (= (_1!3238 (_1!3239 (h!10287 (t!73498 (zeroValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2415 true) setRest!2415))))

(declare-fun b!525023 () Bool)

(declare-fun e!315213 () Bool)

(declare-fun tp!165231 () Bool)

(assert (=> b!525023 (= e!315213 (and setRes!2415 tp!165231))))

(declare-fun condSetEmpty!2415 () Bool)

(assert (=> b!525023 (= condSetEmpty!2415 (= (_1!3238 (_1!3239 (h!10287 (t!73498 (zeroValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56)))))))))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!525024 () Bool)

(declare-fun tp!165233 () Bool)

(assert (=> b!525024 (= e!315214 tp!165233)))

(assert (=> b!524680 (= tp!165023 e!315213)))

(declare-fun setIsEmpty!2415 () Bool)

(assert (=> setIsEmpty!2415 setRes!2415))

(assert (= (and b!525023 condSetEmpty!2415) setIsEmpty!2415))

(assert (= (and b!525023 (not condSetEmpty!2415)) setNonEmpty!2415))

(assert (= setNonEmpty!2415 b!525024))

(assert (= (and b!524680 ((_ is Cons!4886) (t!73498 (zeroValue!821 (v!15966 (underlying!1307 (v!15967 (underlying!1308 (cache!923 cacheFurthestNullable!56))))))))) b!525023))

(declare-fun m!771190 () Bool)

(assert (=> setNonEmpty!2415 m!771190))

(declare-fun b!525027 () Bool)

(declare-fun e!315215 () Bool)

(declare-fun tp!165238 () Bool)

(assert (=> b!525027 (= e!315215 tp!165238)))

(declare-fun b!525025 () Bool)

(assert (=> b!525025 (= e!315215 tp_is_empty!2793)))

(declare-fun b!525026 () Bool)

(declare-fun tp!165237 () Bool)

(declare-fun tp!165236 () Bool)

(assert (=> b!525026 (= e!315215 (and tp!165237 tp!165236))))

(declare-fun b!525028 () Bool)

(declare-fun tp!165234 () Bool)

(declare-fun tp!165235 () Bool)

(assert (=> b!525028 (= e!315215 (and tp!165234 tp!165235))))

(assert (=> b!524594 (= tp!164908 e!315215)))

(assert (= (and b!524594 ((_ is ElementMatch!1209) (_1!3236 (_1!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) b!525025))

(assert (= (and b!524594 ((_ is Concat!2117) (_1!3236 (_1!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) b!525026))

(assert (= (and b!524594 ((_ is Star!1209) (_1!3236 (_1!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) b!525027))

(assert (= (and b!524594 ((_ is Union!1209) (_1!3236 (_1!3237 (h!10285 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) b!525028))

(declare-fun tp!165241 () Bool)

(declare-fun setRes!2416 () Bool)

(declare-fun tp!165239 () Bool)

(declare-fun b!525029 () Bool)

(declare-fun e!315218 () Bool)

(declare-fun e!315216 () Bool)

(assert (=> b!525029 (= e!315218 (and tp!165241 (inv!6158 (_2!3236 (_1!3237 (h!10285 (t!73496 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))))) e!315216 tp_is_empty!2793 setRes!2416 tp!165239))))

(declare-fun condSetEmpty!2416 () Bool)

(assert (=> b!525029 (= condSetEmpty!2416 (= (_2!3237 (h!10285 (t!73496 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))) ((as const (Array Context!294 Bool)) false)))))

(assert (=> b!524594 (= tp!164906 e!315218)))

(declare-fun setIsEmpty!2416 () Bool)

(assert (=> setIsEmpty!2416 setRes!2416))

(declare-fun b!525030 () Bool)

(declare-fun tp!165240 () Bool)

(assert (=> b!525030 (= e!315216 tp!165240)))

(declare-fun setElem!2416 () Context!294)

(declare-fun tp!165242 () Bool)

(declare-fun setNonEmpty!2416 () Bool)

(declare-fun e!315217 () Bool)

(assert (=> setNonEmpty!2416 (= setRes!2416 (and tp!165242 (inv!6158 setElem!2416) e!315217))))

(declare-fun setRest!2416 () (InoxSet Context!294))

(assert (=> setNonEmpty!2416 (= (_2!3237 (h!10285 (t!73496 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2416 true) setRest!2416))))

(declare-fun b!525031 () Bool)

(declare-fun tp!165243 () Bool)

(assert (=> b!525031 (= e!315217 tp!165243)))

(assert (= b!525029 b!525030))

(assert (= (and b!525029 condSetEmpty!2416) setIsEmpty!2416))

(assert (= (and b!525029 (not condSetEmpty!2416)) setNonEmpty!2416))

(assert (= setNonEmpty!2416 b!525031))

(assert (= (and b!524594 ((_ is Cons!4884) (t!73496 (minValue!820 (v!15964 (underlying!1305 (v!15965 (underlying!1306 (cache!922 cacheDown!462))))))))) b!525029))

(declare-fun m!771192 () Bool)

(assert (=> b!525029 m!771192))

(declare-fun m!771194 () Bool)

(assert (=> setNonEmpty!2416 m!771194))

(declare-fun b!525034 () Bool)

(declare-fun e!315219 () Bool)

(declare-fun tp!165248 () Bool)

(assert (=> b!525034 (= e!315219 tp!165248)))

(declare-fun b!525032 () Bool)

(assert (=> b!525032 (= e!315219 tp_is_empty!2793)))

(declare-fun b!525033 () Bool)

(declare-fun tp!165247 () Bool)

(declare-fun tp!165246 () Bool)

(assert (=> b!525033 (= e!315219 (and tp!165247 tp!165246))))

(declare-fun b!525035 () Bool)

(declare-fun tp!165244 () Bool)

(declare-fun tp!165245 () Bool)

(assert (=> b!525035 (= e!315219 (and tp!165244 tp!165245))))

(assert (=> b!524597 (= tp!164913 e!315219)))

(assert (= (and b!524597 ((_ is ElementMatch!1209) (_1!3236 (_1!3237 (h!10285 mapDefault!2198))))) b!525032))

(assert (= (and b!524597 ((_ is Concat!2117) (_1!3236 (_1!3237 (h!10285 mapDefault!2198))))) b!525033))

(assert (= (and b!524597 ((_ is Star!1209) (_1!3236 (_1!3237 (h!10285 mapDefault!2198))))) b!525034))

(assert (= (and b!524597 ((_ is Union!1209) (_1!3236 (_1!3237 (h!10285 mapDefault!2198))))) b!525035))

(declare-fun b!525036 () Bool)

(declare-fun e!315220 () Bool)

(declare-fun e!315222 () Bool)

(declare-fun tp!165249 () Bool)

(declare-fun tp!165251 () Bool)

(declare-fun setRes!2417 () Bool)

(assert (=> b!525036 (= e!315222 (and tp!165251 (inv!6158 (_2!3236 (_1!3237 (h!10285 (t!73496 mapDefault!2198))))) e!315220 tp_is_empty!2793 setRes!2417 tp!165249))))

(declare-fun condSetEmpty!2417 () Bool)

(assert (=> b!525036 (= condSetEmpty!2417 (= (_2!3237 (h!10285 (t!73496 mapDefault!2198))) ((as const (Array Context!294 Bool)) false)))))

(assert (=> b!524597 (= tp!164911 e!315222)))

(declare-fun setIsEmpty!2417 () Bool)

(assert (=> setIsEmpty!2417 setRes!2417))

(declare-fun b!525037 () Bool)

(declare-fun tp!165250 () Bool)

(assert (=> b!525037 (= e!315220 tp!165250)))

(declare-fun tp!165252 () Bool)

(declare-fun e!315221 () Bool)

(declare-fun setElem!2417 () Context!294)

(declare-fun setNonEmpty!2417 () Bool)

(assert (=> setNonEmpty!2417 (= setRes!2417 (and tp!165252 (inv!6158 setElem!2417) e!315221))))

(declare-fun setRest!2417 () (InoxSet Context!294))

(assert (=> setNonEmpty!2417 (= (_2!3237 (h!10285 (t!73496 mapDefault!2198))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2417 true) setRest!2417))))

(declare-fun b!525038 () Bool)

(declare-fun tp!165253 () Bool)

(assert (=> b!525038 (= e!315221 tp!165253)))

(assert (= b!525036 b!525037))

(assert (= (and b!525036 condSetEmpty!2417) setIsEmpty!2417))

(assert (= (and b!525036 (not condSetEmpty!2417)) setNonEmpty!2417))

(assert (= setNonEmpty!2417 b!525038))

(assert (= (and b!524597 ((_ is Cons!4884) (t!73496 mapDefault!2198))) b!525036))

(declare-fun m!771196 () Bool)

(assert (=> b!525036 m!771196))

(declare-fun m!771198 () Bool)

(assert (=> setNonEmpty!2417 m!771198))

(declare-fun b!525039 () Bool)

(declare-fun e!315223 () Bool)

(declare-fun tp!165254 () Bool)

(declare-fun tp!165255 () Bool)

(assert (=> b!525039 (= e!315223 (and tp!165254 tp!165255))))

(assert (=> b!524550 (= tp!164856 e!315223)))

(assert (= (and b!524550 ((_ is Cons!4883) (exprs!647 setElem!2351))) b!525039))

(declare-fun b!525040 () Bool)

(declare-fun e!315224 () Bool)

(declare-fun tp!165256 () Bool)

(declare-fun tp!165257 () Bool)

(assert (=> b!525040 (= e!315224 (and tp!165256 tp!165257))))

(assert (=> b!524649 (= tp!164980 e!315224)))

(assert (= (and b!524649 ((_ is Cons!4883) (exprs!647 setElem!2371))) b!525040))

(declare-fun b!525043 () Bool)

(declare-fun e!315225 () Bool)

(declare-fun tp!165262 () Bool)

(assert (=> b!525043 (= e!315225 tp!165262)))

(declare-fun b!525041 () Bool)

(assert (=> b!525041 (= e!315225 tp_is_empty!2793)))

(declare-fun b!525042 () Bool)

(declare-fun tp!165261 () Bool)

(declare-fun tp!165260 () Bool)

(assert (=> b!525042 (= e!315225 (and tp!165261 tp!165260))))

(declare-fun b!525044 () Bool)

(declare-fun tp!165258 () Bool)

(declare-fun tp!165259 () Bool)

(assert (=> b!525044 (= e!315225 (and tp!165258 tp!165259))))

(assert (=> b!524635 (= tp!164958 e!315225)))

(assert (= (and b!524635 ((_ is ElementMatch!1209) (_1!3236 (_1!3237 (h!10285 mapDefault!2204))))) b!525041))

(assert (= (and b!524635 ((_ is Concat!2117) (_1!3236 (_1!3237 (h!10285 mapDefault!2204))))) b!525042))

(assert (= (and b!524635 ((_ is Star!1209) (_1!3236 (_1!3237 (h!10285 mapDefault!2204))))) b!525043))

(assert (= (and b!524635 ((_ is Union!1209) (_1!3236 (_1!3237 (h!10285 mapDefault!2204))))) b!525044))

(declare-fun b!525045 () Bool)

(declare-fun tp!165265 () Bool)

(declare-fun e!315228 () Bool)

(declare-fun e!315226 () Bool)

(declare-fun tp!165263 () Bool)

(declare-fun setRes!2418 () Bool)

(assert (=> b!525045 (= e!315228 (and tp!165265 (inv!6158 (_2!3236 (_1!3237 (h!10285 (t!73496 mapDefault!2204))))) e!315226 tp_is_empty!2793 setRes!2418 tp!165263))))

(declare-fun condSetEmpty!2418 () Bool)

(assert (=> b!525045 (= condSetEmpty!2418 (= (_2!3237 (h!10285 (t!73496 mapDefault!2204))) ((as const (Array Context!294 Bool)) false)))))

(assert (=> b!524635 (= tp!164959 e!315228)))

(declare-fun setIsEmpty!2418 () Bool)

(assert (=> setIsEmpty!2418 setRes!2418))

(declare-fun b!525046 () Bool)

(declare-fun tp!165264 () Bool)

(assert (=> b!525046 (= e!315226 tp!165264)))

(declare-fun setElem!2418 () Context!294)

(declare-fun setNonEmpty!2418 () Bool)

(declare-fun e!315227 () Bool)

(declare-fun tp!165266 () Bool)

(assert (=> setNonEmpty!2418 (= setRes!2418 (and tp!165266 (inv!6158 setElem!2418) e!315227))))

(declare-fun setRest!2418 () (InoxSet Context!294))

(assert (=> setNonEmpty!2418 (= (_2!3237 (h!10285 (t!73496 mapDefault!2204))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2418 true) setRest!2418))))

(declare-fun b!525047 () Bool)

(declare-fun tp!165267 () Bool)

(assert (=> b!525047 (= e!315227 tp!165267)))

(assert (= b!525045 b!525046))

(assert (= (and b!525045 condSetEmpty!2418) setIsEmpty!2418))

(assert (= (and b!525045 (not condSetEmpty!2418)) setNonEmpty!2418))

(assert (= setNonEmpty!2418 b!525047))

(assert (= (and b!524635 ((_ is Cons!4884) (t!73496 mapDefault!2204))) b!525045))

(declare-fun m!771200 () Bool)

(assert (=> b!525045 m!771200))

(declare-fun m!771202 () Bool)

(assert (=> setNonEmpty!2418 m!771202))

(declare-fun b!525048 () Bool)

(declare-fun e!315229 () Bool)

(declare-fun tp!165268 () Bool)

(declare-fun tp!165269 () Bool)

(assert (=> b!525048 (= e!315229 (and tp!165268 tp!165269))))

(assert (=> b!524558 (= tp!164866 e!315229)))

(assert (= (and b!524558 ((_ is Cons!4883) (exprs!647 setElem!2355))) b!525048))

(declare-fun b!525049 () Bool)

(declare-fun e!315230 () Bool)

(declare-fun tp!165270 () Bool)

(declare-fun tp!165271 () Bool)

(assert (=> b!525049 (= e!315230 (and tp!165270 tp!165271))))

(assert (=> b!524675 (= tp!165015 e!315230)))

(assert (= (and b!524675 ((_ is Cons!4883) (exprs!647 setElem!2379))) b!525049))

(declare-fun b!525050 () Bool)

(declare-fun e!315231 () Bool)

(declare-fun tp!165273 () Bool)

(assert (=> b!525050 (= e!315231 tp!165273)))

(declare-fun e!315233 () Bool)

(declare-fun setElem!2419 () Context!294)

(declare-fun tp!165274 () Bool)

(declare-fun setNonEmpty!2419 () Bool)

(declare-fun setRes!2419 () Bool)

(assert (=> setNonEmpty!2419 (= setRes!2419 (and tp!165274 (inv!6158 setElem!2419) e!315233))))

(declare-fun setRest!2419 () (InoxSet Context!294))

(assert (=> setNonEmpty!2419 (= (_2!3241 (h!10288 (t!73499 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2419 true) setRest!2419))))

(declare-fun e!315232 () Bool)

(assert (=> b!524679 (= tp!165022 e!315232)))

(declare-fun setIsEmpty!2419 () Bool)

(assert (=> setIsEmpty!2419 setRes!2419))

(declare-fun b!525051 () Bool)

(declare-fun tp!165272 () Bool)

(assert (=> b!525051 (= e!315233 tp!165272)))

(declare-fun b!525052 () Bool)

(declare-fun tp!165275 () Bool)

(assert (=> b!525052 (= e!315232 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 (t!73499 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))))))) e!315231 tp_is_empty!2793 setRes!2419 tp!165275))))

(declare-fun condSetEmpty!2419 () Bool)

(assert (=> b!525052 (= condSetEmpty!2419 (= (_2!3241 (h!10288 (t!73499 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))))) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!525052 b!525050))

(assert (= (and b!525052 condSetEmpty!2419) setIsEmpty!2419))

(assert (= (and b!525052 (not condSetEmpty!2419)) setNonEmpty!2419))

(assert (= setNonEmpty!2419 b!525051))

(assert (= (and b!524679 ((_ is Cons!4887) (t!73499 (minValue!822 (v!15968 (underlying!1309 (v!15969 (underlying!1310 (cache!924 cacheUp!449))))))))) b!525052))

(declare-fun m!771204 () Bool)

(assert (=> setNonEmpty!2419 m!771204))

(declare-fun m!771206 () Bool)

(assert (=> b!525052 m!771206))

(declare-fun b!525053 () Bool)

(declare-fun e!315234 () Bool)

(declare-fun tp!165276 () Bool)

(declare-fun tp!165277 () Bool)

(assert (=> b!525053 (= e!315234 (and tp!165276 tp!165277))))

(assert (=> b!524671 (= tp!165012 e!315234)))

(assert (= (and b!524671 ((_ is Cons!4883) (exprs!647 (_1!3240 (_1!3241 (h!10288 mapValue!2196)))))) b!525053))

(declare-fun condSetEmpty!2420 () Bool)

(assert (=> setNonEmpty!2379 (= condSetEmpty!2420 (= setRest!2379 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2420 () Bool)

(assert (=> setNonEmpty!2379 (= tp!165017 setRes!2420)))

(declare-fun setIsEmpty!2420 () Bool)

(assert (=> setIsEmpty!2420 setRes!2420))

(declare-fun tp!165279 () Bool)

(declare-fun e!315235 () Bool)

(declare-fun setNonEmpty!2420 () Bool)

(declare-fun setElem!2420 () Context!294)

(assert (=> setNonEmpty!2420 (= setRes!2420 (and tp!165279 (inv!6158 setElem!2420) e!315235))))

(declare-fun setRest!2420 () (InoxSet Context!294))

(assert (=> setNonEmpty!2420 (= setRest!2379 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2420 true) setRest!2420))))

(declare-fun b!525054 () Bool)

(declare-fun tp!165278 () Bool)

(assert (=> b!525054 (= e!315235 tp!165278)))

(assert (= (and setNonEmpty!2379 condSetEmpty!2420) setIsEmpty!2420))

(assert (= (and setNonEmpty!2379 (not condSetEmpty!2420)) setNonEmpty!2420))

(assert (= setNonEmpty!2420 b!525054))

(declare-fun m!771208 () Bool)

(assert (=> setNonEmpty!2420 m!771208))

(declare-fun condSetEmpty!2421 () Bool)

(assert (=> setNonEmpty!2368 (= condSetEmpty!2421 (= setRest!2368 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2421 () Bool)

(assert (=> setNonEmpty!2368 (= tp!164970 setRes!2421)))

(declare-fun setIsEmpty!2421 () Bool)

(assert (=> setIsEmpty!2421 setRes!2421))

(declare-fun setNonEmpty!2421 () Bool)

(declare-fun tp!165281 () Bool)

(declare-fun setElem!2421 () Context!294)

(declare-fun e!315236 () Bool)

(assert (=> setNonEmpty!2421 (= setRes!2421 (and tp!165281 (inv!6158 setElem!2421) e!315236))))

(declare-fun setRest!2421 () (InoxSet Context!294))

(assert (=> setNonEmpty!2421 (= setRest!2368 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2421 true) setRest!2421))))

(declare-fun b!525055 () Bool)

(declare-fun tp!165280 () Bool)

(assert (=> b!525055 (= e!315236 tp!165280)))

(assert (= (and setNonEmpty!2368 condSetEmpty!2421) setIsEmpty!2421))

(assert (= (and setNonEmpty!2368 (not condSetEmpty!2421)) setNonEmpty!2421))

(assert (= setNonEmpty!2421 b!525055))

(declare-fun m!771210 () Bool)

(assert (=> setNonEmpty!2421 m!771210))

(declare-fun b!525058 () Bool)

(declare-fun e!315237 () Bool)

(declare-fun tp!165286 () Bool)

(assert (=> b!525058 (= e!315237 tp!165286)))

(declare-fun b!525056 () Bool)

(assert (=> b!525056 (= e!315237 tp_is_empty!2793)))

(declare-fun b!525057 () Bool)

(declare-fun tp!165285 () Bool)

(declare-fun tp!165284 () Bool)

(assert (=> b!525057 (= e!315237 (and tp!165285 tp!165284))))

(declare-fun b!525059 () Bool)

(declare-fun tp!165282 () Bool)

(declare-fun tp!165283 () Bool)

(assert (=> b!525059 (= e!315237 (and tp!165282 tp!165283))))

(assert (=> b!524568 (= tp!164875 e!315237)))

(assert (= (and b!524568 ((_ is ElementMatch!1209) (regex!884 (h!10291 (t!73502 rules!1345))))) b!525056))

(assert (= (and b!524568 ((_ is Concat!2117) (regex!884 (h!10291 (t!73502 rules!1345))))) b!525057))

(assert (= (and b!524568 ((_ is Star!1209) (regex!884 (h!10291 (t!73502 rules!1345))))) b!525058))

(assert (= (and b!524568 ((_ is Union!1209) (regex!884 (h!10291 (t!73502 rules!1345))))) b!525059))

(declare-fun setIsEmpty!2422 () Bool)

(declare-fun setRes!2422 () Bool)

(assert (=> setIsEmpty!2422 setRes!2422))

(declare-fun e!315239 () Bool)

(declare-fun b!525060 () Bool)

(declare-fun e!315242 () Bool)

(declare-fun mapValue!2210 () List!4897)

(declare-fun tp!165290 () Bool)

(assert (=> b!525060 (= e!315242 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 mapValue!2210)))) e!315239 tp_is_empty!2793 setRes!2422 tp!165290))))

(declare-fun condSetEmpty!2423 () Bool)

(assert (=> b!525060 (= condSetEmpty!2423 (= (_2!3241 (h!10288 mapValue!2210)) ((as const (Array Context!294 Bool)) false)))))

(declare-fun setIsEmpty!2423 () Bool)

(declare-fun setRes!2423 () Bool)

(assert (=> setIsEmpty!2423 setRes!2423))

(declare-fun b!525061 () Bool)

(declare-fun e!315241 () Bool)

(declare-fun tp!165288 () Bool)

(assert (=> b!525061 (= e!315241 tp!165288)))

(declare-fun b!525062 () Bool)

(declare-fun e!315238 () Bool)

(declare-fun tp!165291 () Bool)

(assert (=> b!525062 (= e!315238 tp!165291)))

(declare-fun mapIsEmpty!2210 () Bool)

(declare-fun mapRes!2210 () Bool)

(assert (=> mapIsEmpty!2210 mapRes!2210))

(declare-fun b!525063 () Bool)

(declare-fun tp!165294 () Bool)

(assert (=> b!525063 (= e!315239 tp!165294)))

(declare-fun b!525064 () Bool)

(declare-fun e!315243 () Bool)

(declare-fun tp!165295 () Bool)

(assert (=> b!525064 (= e!315243 tp!165295)))

(declare-fun setElem!2422 () Context!294)

(declare-fun setNonEmpty!2422 () Bool)

(declare-fun tp!165292 () Bool)

(assert (=> setNonEmpty!2422 (= setRes!2422 (and tp!165292 (inv!6158 setElem!2422) e!315243))))

(declare-fun setRest!2422 () (InoxSet Context!294))

(assert (=> setNonEmpty!2422 (= (_2!3241 (h!10288 mapValue!2210)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2422 true) setRest!2422))))

(declare-fun setNonEmpty!2423 () Bool)

(declare-fun tp!165293 () Bool)

(declare-fun setElem!2423 () Context!294)

(assert (=> setNonEmpty!2423 (= setRes!2423 (and tp!165293 (inv!6158 setElem!2423) e!315238))))

(declare-fun mapDefault!2210 () List!4897)

(declare-fun setRest!2423 () (InoxSet Context!294))

(assert (=> setNonEmpty!2423 (= (_2!3241 (h!10288 mapDefault!2210)) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2423 true) setRest!2423))))

(declare-fun condMapEmpty!2210 () Bool)

(assert (=> mapNonEmpty!2207 (= condMapEmpty!2210 (= mapRest!2207 ((as const (Array (_ BitVec 32) List!4897)) mapDefault!2210)))))

(declare-fun e!315240 () Bool)

(assert (=> mapNonEmpty!2207 (= tp!165002 (and e!315240 mapRes!2210))))

(declare-fun mapNonEmpty!2210 () Bool)

(declare-fun tp!165287 () Bool)

(assert (=> mapNonEmpty!2210 (= mapRes!2210 (and tp!165287 e!315242))))

(declare-fun mapRest!2210 () (Array (_ BitVec 32) List!4897))

(declare-fun mapKey!2210 () (_ BitVec 32))

(assert (=> mapNonEmpty!2210 (= mapRest!2207 (store mapRest!2210 mapKey!2210 mapValue!2210))))

(declare-fun tp!165289 () Bool)

(declare-fun b!525065 () Bool)

(assert (=> b!525065 (= e!315240 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 mapDefault!2210)))) e!315241 tp_is_empty!2793 setRes!2423 tp!165289))))

(declare-fun condSetEmpty!2422 () Bool)

(assert (=> b!525065 (= condSetEmpty!2422 (= (_2!3241 (h!10288 mapDefault!2210)) ((as const (Array Context!294 Bool)) false)))))

(assert (= (and mapNonEmpty!2207 condMapEmpty!2210) mapIsEmpty!2210))

(assert (= (and mapNonEmpty!2207 (not condMapEmpty!2210)) mapNonEmpty!2210))

(assert (= b!525060 b!525063))

(assert (= (and b!525060 condSetEmpty!2423) setIsEmpty!2422))

(assert (= (and b!525060 (not condSetEmpty!2423)) setNonEmpty!2422))

(assert (= setNonEmpty!2422 b!525064))

(assert (= (and mapNonEmpty!2210 ((_ is Cons!4887) mapValue!2210)) b!525060))

(assert (= b!525065 b!525061))

(assert (= (and b!525065 condSetEmpty!2422) setIsEmpty!2423))

(assert (= (and b!525065 (not condSetEmpty!2422)) setNonEmpty!2423))

(assert (= setNonEmpty!2423 b!525062))

(assert (= (and mapNonEmpty!2207 ((_ is Cons!4887) mapDefault!2210)) b!525065))

(declare-fun m!771212 () Bool)

(assert (=> setNonEmpty!2422 m!771212))

(declare-fun m!771214 () Bool)

(assert (=> b!525060 m!771214))

(declare-fun m!771216 () Bool)

(assert (=> setNonEmpty!2423 m!771216))

(declare-fun m!771218 () Bool)

(assert (=> b!525065 m!771218))

(declare-fun m!771220 () Bool)

(assert (=> mapNonEmpty!2210 m!771220))

(declare-fun b!525066 () Bool)

(declare-fun e!315244 () Bool)

(declare-fun tp!165296 () Bool)

(declare-fun tp!165297 () Bool)

(assert (=> b!525066 (= e!315244 (and tp!165296 tp!165297))))

(assert (=> b!524632 (= tp!164962 e!315244)))

(assert (= (and b!524632 ((_ is Cons!4883) (exprs!647 (_2!3236 (_1!3237 (h!10285 mapDefault!2204)))))) b!525066))

(declare-fun b!525069 () Bool)

(declare-fun e!315245 () Bool)

(declare-fun tp!165302 () Bool)

(assert (=> b!525069 (= e!315245 tp!165302)))

(declare-fun b!525067 () Bool)

(assert (=> b!525067 (= e!315245 tp_is_empty!2793)))

(declare-fun b!525068 () Bool)

(declare-fun tp!165301 () Bool)

(declare-fun tp!165300 () Bool)

(assert (=> b!525068 (= e!315245 (and tp!165301 tp!165300))))

(declare-fun b!525070 () Bool)

(declare-fun tp!165298 () Bool)

(declare-fun tp!165299 () Bool)

(assert (=> b!525070 (= e!315245 (and tp!165298 tp!165299))))

(assert (=> b!524615 (= tp!164933 e!315245)))

(assert (= (and b!524615 ((_ is ElementMatch!1209) (reg!1538 (regex!884 (h!10291 rules!1345))))) b!525067))

(assert (= (and b!524615 ((_ is Concat!2117) (reg!1538 (regex!884 (h!10291 rules!1345))))) b!525068))

(assert (= (and b!524615 ((_ is Star!1209) (reg!1538 (regex!884 (h!10291 rules!1345))))) b!525069))

(assert (= (and b!524615 ((_ is Union!1209) (reg!1538 (regex!884 (h!10291 rules!1345))))) b!525070))

(declare-fun condSetEmpty!2424 () Bool)

(assert (=> setNonEmpty!2356 (= condSetEmpty!2424 (= setRest!2356 ((as const (Array Context!294 Bool)) false)))))

(declare-fun setRes!2424 () Bool)

(assert (=> setNonEmpty!2356 (= tp!164880 setRes!2424)))

(declare-fun setIsEmpty!2424 () Bool)

(assert (=> setIsEmpty!2424 setRes!2424))

(declare-fun tp!165304 () Bool)

(declare-fun e!315246 () Bool)

(declare-fun setElem!2424 () Context!294)

(declare-fun setNonEmpty!2424 () Bool)

(assert (=> setNonEmpty!2424 (= setRes!2424 (and tp!165304 (inv!6158 setElem!2424) e!315246))))

(declare-fun setRest!2424 () (InoxSet Context!294))

(assert (=> setNonEmpty!2424 (= setRest!2356 ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2424 true) setRest!2424))))

(declare-fun b!525071 () Bool)

(declare-fun tp!165303 () Bool)

(assert (=> b!525071 (= e!315246 tp!165303)))

(assert (= (and setNonEmpty!2356 condSetEmpty!2424) setIsEmpty!2424))

(assert (= (and setNonEmpty!2356 (not condSetEmpty!2424)) setNonEmpty!2424))

(assert (= setNonEmpty!2424 b!525071))

(declare-fun m!771222 () Bool)

(assert (=> setNonEmpty!2424 m!771222))

(declare-fun setRes!2425 () Bool)

(declare-fun setNonEmpty!2425 () Bool)

(declare-fun tp!165306 () Bool)

(declare-fun setElem!2425 () Context!294)

(declare-fun e!315248 () Bool)

(assert (=> setNonEmpty!2425 (= setRes!2425 (and tp!165306 (inv!6158 setElem!2425) e!315248))))

(declare-fun setRest!2425 () (InoxSet Context!294))

(assert (=> setNonEmpty!2425 (= (_1!3238 (_1!3239 (h!10287 (t!73498 mapDefault!2196)))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2425 true) setRest!2425))))

(declare-fun b!525072 () Bool)

(declare-fun e!315247 () Bool)

(declare-fun tp!165305 () Bool)

(assert (=> b!525072 (= e!315247 (and setRes!2425 tp!165305))))

(declare-fun condSetEmpty!2425 () Bool)

(assert (=> b!525072 (= condSetEmpty!2425 (= (_1!3238 (_1!3239 (h!10287 (t!73498 mapDefault!2196)))) ((as const (Array Context!294 Bool)) false)))))

(declare-fun b!525073 () Bool)

(declare-fun tp!165307 () Bool)

(assert (=> b!525073 (= e!315248 tp!165307)))

(assert (=> b!524570 (= tp!164879 e!315247)))

(declare-fun setIsEmpty!2425 () Bool)

(assert (=> setIsEmpty!2425 setRes!2425))

(assert (= (and b!525072 condSetEmpty!2425) setIsEmpty!2425))

(assert (= (and b!525072 (not condSetEmpty!2425)) setNonEmpty!2425))

(assert (= setNonEmpty!2425 b!525073))

(assert (= (and b!524570 ((_ is Cons!4886) (t!73498 mapDefault!2196))) b!525072))

(declare-fun m!771224 () Bool)

(assert (=> setNonEmpty!2425 m!771224))

(declare-fun b!525074 () Bool)

(declare-fun e!315249 () Bool)

(declare-fun tp!165309 () Bool)

(assert (=> b!525074 (= e!315249 tp!165309)))

(declare-fun setElem!2426 () Context!294)

(declare-fun setNonEmpty!2426 () Bool)

(declare-fun setRes!2426 () Bool)

(declare-fun e!315251 () Bool)

(declare-fun tp!165310 () Bool)

(assert (=> setNonEmpty!2426 (= setRes!2426 (and tp!165310 (inv!6158 setElem!2426) e!315251))))

(declare-fun setRest!2426 () (InoxSet Context!294))

(assert (=> setNonEmpty!2426 (= (_2!3241 (h!10288 (t!73499 mapValue!2196))) ((_ map or) (store ((as const (Array Context!294 Bool)) false) setElem!2426 true) setRest!2426))))

(declare-fun e!315250 () Bool)

(assert (=> b!524673 (= tp!165014 e!315250)))

(declare-fun setIsEmpty!2426 () Bool)

(assert (=> setIsEmpty!2426 setRes!2426))

(declare-fun b!525075 () Bool)

(declare-fun tp!165308 () Bool)

(assert (=> b!525075 (= e!315251 tp!165308)))

(declare-fun b!525076 () Bool)

(declare-fun tp!165311 () Bool)

(assert (=> b!525076 (= e!315250 (and (inv!6158 (_1!3240 (_1!3241 (h!10288 (t!73499 mapValue!2196))))) e!315249 tp_is_empty!2793 setRes!2426 tp!165311))))

(declare-fun condSetEmpty!2426 () Bool)

(assert (=> b!525076 (= condSetEmpty!2426 (= (_2!3241 (h!10288 (t!73499 mapValue!2196))) ((as const (Array Context!294 Bool)) false)))))

(assert (= b!525076 b!525074))

(assert (= (and b!525076 condSetEmpty!2426) setIsEmpty!2426))

(assert (= (and b!525076 (not condSetEmpty!2426)) setNonEmpty!2426))

(assert (= setNonEmpty!2426 b!525075))

(assert (= (and b!524673 ((_ is Cons!4887) (t!73499 mapValue!2196))) b!525076))

(declare-fun m!771226 () Bool)

(assert (=> setNonEmpty!2426 m!771226))

(declare-fun m!771228 () Bool)

(assert (=> b!525076 m!771228))

(check-sat (not b!524844) (not b!524959) (not b!525015) (not b!524995) (not b!524973) (not b!524872) (not b!524919) (not setNonEmpty!2422) (not b!525012) (not b!525064) b_and!51313 (not b!524772) (not b!524925) (not setNonEmpty!2388) (not b!525029) (not b!525007) (not b!524971) (not b!524782) b_and!51327 (not b!525004) (not d!187115) (not b!524770) (not b!524790) (not b!524946) (not b!524915) (not b!524977) (not mapNonEmpty!2208) (not b!524993) (not b!524960) (not b!525059) (not b!525000) (not setNonEmpty!2420) (not b!524789) (not b!525047) (not b_next!13843) (not b!524984) (not b!524935) (not b_next!13851) (not b!524929) (not b!524898) (not b!524926) (not d!187097) (not b!524803) (not d!187197) (not d!187141) (not b_next!13849) (not b!524784) (not setNonEmpty!2398) (not b!524934) (not d!187093) (not b!525076) (not b!524923) (not b!524763) (not setNonEmpty!2416) (not b!524793) (not b!524949) (not b!524754) (not setNonEmpty!2408) (not b!525069) (not b!524700) b_and!51331 (not b!524920) (not b!524836) (not b!525024) (not b!524712) (not b!524947) (not b!525070) (not b!524758) (not b!525043) (not b!524989) (not b!524699) (not b!524810) (not b!524980) (not d!187231) (not b!525018) (not d!187185) (not b!525058) (not b!524963) (not setNonEmpty!2405) (not b!524777) b_and!51311 (not b!524838) (not b!525034) (not b!524804) (not b!524734) (not b!524975) (not b!524774) (not b!524998) (not d!187113) (not b_next!13845) (not b!524832) (not b!524778) (not setNonEmpty!2397) (not b!524983) (not b!524986) (not b!524794) (not d!187099) (not d!187163) (not b!524922) (not b!524698) (not b!524951) (not b!524785) (not b!525048) (not b!525052) (not b!525066) (not b!525068) (not b!524955) (not b!525049) (not b!524902) (not d!187161) b_and!51325 (not b!525075) (not b!525046) (not b!524757) (not b!524900) (not d!187131) (not d!187109) (not b!524985) (not b!524942) b_and!51323 (not b!524969) (not mapNonEmpty!2209) (not setNonEmpty!2394) (not b!524957) (not b!524892) (not d!187173) (not setNonEmpty!2389) (not b!524792) (not b!524933) (not b!524858) (not b!525020) (not b!525003) (not setNonEmpty!2406) (not setNonEmpty!2385) (not b!524967) (not b!525011) (not b!524952) (not d!187149) (not b!525038) (not d!187119) (not d!187199) (not b!524783) (not b!524843) (not b!525040) (not b!525014) (not b!524580) (not b_next!13853) (not b!525057) (not b!525028) (not b!524781) (not b!525008) (not b!525062) (not d!187183) (not b!525035) (not setNonEmpty!2411) (not b!524978) (not b!525050) (not b!524962) (not setNonEmpty!2421) (not b!524956) (not b!525055) (not setNonEmpty!2424) (not b!524990) (not bm!38051) (not b!524982) (not d!187105) (not b!525042) (not b!524979) (not setNonEmpty!2393) (not b!524736) (not setNonEmpty!2423) (not b!524930) (not b!525061) (not b!524991) (not d!187227) (not d!187207) (not setNonEmpty!2414) (not b!524958) (not setNonEmpty!2415) (not b!524750) (not b!524953) (not b!524791) (not b!524931) (not setNonEmpty!2409) (not d!187215) (not b!524737) (not d!187121) (not b!524932) (not setNonEmpty!2412) (not setNonEmpty!2386) (not b!525031) (not b!524954) (not b!524899) (not b!524994) (not setNonEmpty!2400) (not b!524968) b_and!51317 (not d!187229) (not d!187217) (not b!524753) (not b!524837) (not b!524901) (not b!524857) (not d!187151) (not b!524835) (not b_next!13847) (not b!524936) (not d!187187) (not b!524917) (not b!524964) (not b!524988) (not b!524972) (not d!187235) (not b!525019) (not b!524948) (not d!187211) (not setNonEmpty!2407) (not b!524970) (not b_next!13841) (not setNonEmpty!2391) (not setNonEmpty!2396) (not setNonEmpty!2418) (not d!187101) (not d!187157) (not b!524876) (not setNonEmpty!2390) (not b!524812) (not b!524764) tp_is_empty!2793 (not b!524939) (not d!187167) (not b!524937) (not b!524911) (not d!187195) (not b!524999) (not b!525053) (not b!524997) (not b!524924) (not setNonEmpty!2402) (not b!525021) (not b!524814) (not b!525063) (not b!524927) (not b!525033) (not b!524987) (not b!525065) (not b!524897) (not b!524903) (not b!524912) (not b!524735) (not b!524749) (not d!187181) (not b!525027) (not setNonEmpty!2413) (not b!524786) (not d!187219) (not setNonEmpty!2425) (not b!524711) (not b!525037) (not setNonEmpty!2392) (not b!524880) (not b!524976) (not b!524966) (not b!524913) (not b!525009) (not d!187095) (not d!187237) (not b!525010) (not setNonEmpty!2395) (not b!525073) (not b!525044) (not b!524780) (not setNonEmpty!2403) (not b!524718) (not b!525005) (not b!524796) (not b!525026) (not setNonEmpty!2417) (not b!524853) (not b!524877) (not d!187169) (not b!525002) (not b!524945) (not b!524738) (not d!187225) (not b!524600) b_and!51333 (not b_next!13833) (not setNonEmpty!2404) (not b!525013) (not b!525072) (not b!524909) (not b!525036) (not d!187189) (not b!524981) b_and!51329 (not d!187205) (not d!187209) (not d!187171) (not setNonEmpty!2401) (not mapNonEmpty!2210) (not b!524860) b_and!51315 (not b!524944) (not d!187103) (not b!525006) (not b!524717) (not b!524855) (not b!524848) (not setNonEmpty!2399) (not b!524833) b_and!51319 (not setNonEmpty!2426) (not d!187111) (not d!187137) (not b!525039) (not b!524940) (not b!524928) (not b!524918) (not b!525023) (not d!187165) (not b!525045) (not b!524904) (not b!524831) (not b!524882) (not b!524941) (not setNonEmpty!2387) (not b!525051) (not d!187233) (not d!187107) (not b!525054) (not b!524938) (not b!525074) (not b!524874) (not b_next!13835) (not b!525017) (not b!524775) (not b!524996) (not b!525022) (not b!525060) (not d!187193) (not d!187133) (not d!187213) (not b!525030) b_and!51321 (not b!525001) (not d!187125) (not b!524943) (not b!524916) (not setNonEmpty!2419) (not b_next!13837) (not b!524733) (not d!187221) (not b_next!13855) (not b!524921) (not b!525071) (not b!524847) (not setNonEmpty!2410) (not b_next!13839))
(check-sat b_and!51313 b_and!51327 (not b_next!13849) b_and!51331 b_and!51311 (not b_next!13845) b_and!51325 b_and!51323 (not b_next!13853) b_and!51317 (not b_next!13847) (not b_next!13841) b_and!51319 (not b_next!13835) b_and!51321 (not b_next!13851) (not b_next!13843) b_and!51333 (not b_next!13833) b_and!51329 b_and!51315 (not b_next!13837) (not b_next!13855) (not b_next!13839))
