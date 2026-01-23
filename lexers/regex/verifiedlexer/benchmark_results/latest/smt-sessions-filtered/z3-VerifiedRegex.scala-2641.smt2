; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142884 () Bool)

(assert start!142884)

(declare-fun b!1537210 () Bool)

(declare-fun b_free!39947 () Bool)

(declare-fun b_next!40651 () Bool)

(assert (=> b!1537210 (= b_free!39947 (not b_next!40651))))

(declare-fun tp!443858 () Bool)

(declare-fun b_and!106825 () Bool)

(assert (=> b!1537210 (= tp!443858 b_and!106825)))

(declare-fun b!1537206 () Bool)

(declare-fun b_free!39949 () Bool)

(declare-fun b_next!40653 () Bool)

(assert (=> b!1537206 (= b_free!39949 (not b_next!40653))))

(declare-fun tp!443881 () Bool)

(declare-fun b_and!106827 () Bool)

(assert (=> b!1537206 (= tp!443881 b_and!106827)))

(declare-fun b!1537186 () Bool)

(declare-fun b_free!39951 () Bool)

(declare-fun b_next!40655 () Bool)

(assert (=> b!1537186 (= b_free!39951 (not b_next!40655))))

(declare-fun tp!443875 () Bool)

(declare-fun b_and!106829 () Bool)

(assert (=> b!1537186 (= tp!443875 b_and!106829)))

(declare-fun b!1537194 () Bool)

(declare-fun b_free!39953 () Bool)

(declare-fun b_next!40657 () Bool)

(assert (=> b!1537194 (= b_free!39953 (not b_next!40657))))

(declare-fun tp!443877 () Bool)

(declare-fun b_and!106831 () Bool)

(assert (=> b!1537194 (= tp!443877 b_and!106831)))

(declare-fun b!1537195 () Bool)

(declare-fun b_free!39955 () Bool)

(declare-fun b_next!40659 () Bool)

(assert (=> b!1537195 (= b_free!39955 (not b_next!40659))))

(declare-fun tp!443856 () Bool)

(declare-fun b_and!106833 () Bool)

(assert (=> b!1537195 (= tp!443856 b_and!106833)))

(declare-fun b!1537190 () Bool)

(declare-fun b_free!39957 () Bool)

(declare-fun b_next!40661 () Bool)

(assert (=> b!1537190 (= b_free!39957 (not b_next!40661))))

(declare-fun tp!443870 () Bool)

(declare-fun b_and!106835 () Bool)

(assert (=> b!1537190 (= tp!443870 b_and!106835)))

(declare-fun b!1537219 () Bool)

(declare-fun b_free!39959 () Bool)

(declare-fun b_next!40663 () Bool)

(assert (=> b!1537219 (= b_free!39959 (not b_next!40663))))

(declare-fun tp!443862 () Bool)

(declare-fun b_and!106837 () Bool)

(assert (=> b!1537219 (= tp!443862 b_and!106837)))

(declare-fun b_free!39961 () Bool)

(declare-fun b_next!40665 () Bool)

(assert (=> b!1537219 (= b_free!39961 (not b_next!40665))))

(declare-fun tp!443872 () Bool)

(declare-fun b_and!106839 () Bool)

(assert (=> b!1537219 (= tp!443872 b_and!106839)))

(declare-fun b!1537184 () Bool)

(declare-fun res!689044 () Bool)

(declare-fun e!983299 () Bool)

(assert (=> b!1537184 (=> (not res!689044) (not e!983299))))

(declare-datatypes ((C!8564 0))(
  ( (C!8565 (val!4854 Int)) )
))
(declare-datatypes ((Regex!4193 0))(
  ( (ElementMatch!4193 (c!251578 C!8564)) (Concat!7152 (regOne!8898 Regex!4193) (regTwo!8898 Regex!4193)) (EmptyExpr!4193) (Star!4193 (reg!4522 Regex!4193)) (EmptyLang!4193) (Union!4193 (regOne!8899 Regex!4193) (regTwo!8899 Regex!4193)) )
))
(declare-datatypes ((List!16382 0))(
  ( (Nil!16314) (Cons!16314 (h!21715 Regex!4193) (t!140588 List!16382)) )
))
(declare-datatypes ((Context!1422 0))(
  ( (Context!1423 (exprs!1211 List!16382)) )
))
(declare-datatypes ((tuple2!15324 0))(
  ( (tuple2!15325 (_1!8772 Context!1422) (_2!8772 C!8564)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15326 0))(
  ( (tuple2!15327 (_1!8773 tuple2!15324) (_2!8773 (InoxSet Context!1422))) )
))
(declare-datatypes ((List!16383 0))(
  ( (Nil!16315) (Cons!16315 (h!21716 tuple2!15326) (t!140589 List!16383)) )
))
(declare-datatypes ((array!5482 0))(
  ( (array!5483 (arr!2438 (Array (_ BitVec 32) List!16383)) (size!13187 (_ BitVec 32))) )
))
(declare-datatypes ((array!5484 0))(
  ( (array!5485 (arr!2439 (Array (_ BitVec 32) (_ BitVec 64))) (size!13188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3140 0))(
  ( (LongMapFixedSize!3141 (defaultEntry!1930 Int) (mask!4755 (_ BitVec 32)) (extraKeys!1817 (_ BitVec 32)) (zeroValue!1827 List!16383) (minValue!1827 List!16383) (_size!3221 (_ BitVec 32)) (_keys!1864 array!5484) (_values!1849 array!5482) (_vacant!1631 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6165 0))(
  ( (Cell!6166 (v!23123 LongMapFixedSize!3140)) )
))
(declare-datatypes ((MutLongMap!1570 0))(
  ( (LongMap!1570 (underlying!3349 Cell!6165)) (MutLongMapExt!1569 (__x!10361 Int)) )
))
(declare-datatypes ((Cell!6167 0))(
  ( (Cell!6168 (v!23124 MutLongMap!1570)) )
))
(declare-datatypes ((Hashable!1514 0))(
  ( (HashableExt!1513 (__x!10362 Int)) )
))
(declare-datatypes ((MutableMap!1514 0))(
  ( (MutableMapExt!1513 (__x!10363 Int)) (HashMap!1514 (underlying!3350 Cell!6167) (hashF!3433 Hashable!1514) (_size!3222 (_ BitVec 32)) (defaultValue!1674 Int)) )
))
(declare-datatypes ((CacheUp!906 0))(
  ( (CacheUp!907 (cache!1895 MutableMap!1514)) )
))
(declare-fun cacheUp!695 () CacheUp!906)

(declare-fun valid!1277 (CacheUp!906) Bool)

(assert (=> b!1537184 (= res!689044 (valid!1277 cacheUp!695))))

(declare-fun b!1537185 () Bool)

(declare-fun e!983305 () Bool)

(declare-fun e!983330 () Bool)

(declare-datatypes ((tuple3!1486 0))(
  ( (tuple3!1487 (_1!8774 (InoxSet Context!1422)) (_2!8774 Int) (_3!1110 Int)) )
))
(declare-datatypes ((tuple2!15328 0))(
  ( (tuple2!15329 (_1!8775 tuple3!1486) (_2!8775 Int)) )
))
(declare-datatypes ((List!16384 0))(
  ( (Nil!16316) (Cons!16316 (h!21717 tuple2!15328) (t!140590 List!16384)) )
))
(declare-datatypes ((array!5486 0))(
  ( (array!5487 (arr!2440 (Array (_ BitVec 32) List!16384)) (size!13189 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3142 0))(
  ( (LongMapFixedSize!3143 (defaultEntry!1931 Int) (mask!4756 (_ BitVec 32)) (extraKeys!1818 (_ BitVec 32)) (zeroValue!1828 List!16384) (minValue!1828 List!16384) (_size!3223 (_ BitVec 32)) (_keys!1865 array!5484) (_values!1850 array!5486) (_vacant!1632 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6169 0))(
  ( (Cell!6170 (v!23125 LongMapFixedSize!3142)) )
))
(declare-datatypes ((MutLongMap!1571 0))(
  ( (LongMap!1571 (underlying!3351 Cell!6169)) (MutLongMapExt!1570 (__x!10364 Int)) )
))
(declare-fun lt!533437 () MutLongMap!1571)

(get-info :version)

(assert (=> b!1537185 (= e!983305 (and e!983330 ((_ is LongMap!1571) lt!533437)))))

(declare-datatypes ((List!16385 0))(
  ( (Nil!16317) (Cons!16317 (h!21718 C!8564) (t!140591 List!16385)) )
))
(declare-datatypes ((IArray!10977 0))(
  ( (IArray!10978 (innerList!5546 List!16385)) )
))
(declare-datatypes ((Hashable!1515 0))(
  ( (HashableExt!1514 (__x!10365 Int)) )
))
(declare-datatypes ((Cell!6171 0))(
  ( (Cell!6172 (v!23126 MutLongMap!1571)) )
))
(declare-datatypes ((MutableMap!1515 0))(
  ( (MutableMapExt!1514 (__x!10366 Int)) (HashMap!1515 (underlying!3352 Cell!6171) (hashF!3434 Hashable!1515) (_size!3224 (_ BitVec 32)) (defaultValue!1675 Int)) )
))
(declare-datatypes ((Conc!5486 0))(
  ( (Node!5486 (left!13445 Conc!5486) (right!13775 Conc!5486) (csize!11202 Int) (cheight!5697 Int)) (Leaf!8128 (xs!8286 IArray!10977) (csize!11203 Int)) (Empty!5486) )
))
(declare-datatypes ((BalanceConc!10914 0))(
  ( (BalanceConc!10915 (c!251579 Conc!5486)) )
))
(declare-datatypes ((CacheFurthestNullable!336 0))(
  ( (CacheFurthestNullable!337 (cache!1896 MutableMap!1515) (totalInput!2357 BalanceConc!10914)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!336)

(assert (=> b!1537185 (= lt!533437 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))

(declare-fun e!983314 () Bool)

(declare-fun e!983323 () Bool)

(assert (=> b!1537186 (= e!983314 (and e!983323 tp!443875))))

(declare-fun b!1537187 () Bool)

(declare-fun e!983322 () Bool)

(assert (=> b!1537187 (= e!983299 (not e!983322))))

(declare-fun res!689035 () Bool)

(assert (=> b!1537187 (=> res!689035 e!983322)))

(declare-datatypes ((List!16386 0))(
  ( (Nil!16318) (Cons!16318 (h!21719 (_ BitVec 16)) (t!140592 List!16386)) )
))
(declare-datatypes ((TokenValue!2959 0))(
  ( (FloatLiteralValue!5918 (text!21158 List!16386)) (TokenValueExt!2958 (__x!10367 Int)) (Broken!14795 (value!91405 List!16386)) (Object!3026) (End!2959) (Def!2959) (Underscore!2959) (Match!2959) (Else!2959) (Error!2959) (Case!2959) (If!2959) (Extends!2959) (Abstract!2959) (Class!2959) (Val!2959) (DelimiterValue!5918 (del!3019 List!16386)) (KeywordValue!2965 (value!91406 List!16386)) (CommentValue!5918 (value!91407 List!16386)) (WhitespaceValue!5918 (value!91408 List!16386)) (IndentationValue!2959 (value!91409 List!16386)) (String!19074) (Int32!2959) (Broken!14796 (value!91410 List!16386)) (Boolean!2960) (Unit!25839) (OperatorValue!2962 (op!3019 List!16386)) (IdentifierValue!5918 (value!91411 List!16386)) (IdentifierValue!5919 (value!91412 List!16386)) (WhitespaceValue!5919 (value!91413 List!16386)) (True!5918) (False!5918) (Broken!14797 (value!91414 List!16386)) (Broken!14798 (value!91415 List!16386)) (True!5919) (RightBrace!2959) (RightBracket!2959) (Colon!2959) (Null!2959) (Comma!2959) (LeftBracket!2959) (False!5919) (LeftBrace!2959) (ImaginaryLiteralValue!2959 (text!21159 List!16386)) (StringLiteralValue!8877 (value!91416 List!16386)) (EOFValue!2959 (value!91417 List!16386)) (IdentValue!2959 (value!91418 List!16386)) (DelimiterValue!5919 (value!91419 List!16386)) (DedentValue!2959 (value!91420 List!16386)) (NewLineValue!2959 (value!91421 List!16386)) (IntegerValue!8877 (value!91422 (_ BitVec 32)) (text!21160 List!16386)) (IntegerValue!8878 (value!91423 Int) (text!21161 List!16386)) (Times!2959) (Or!2959) (Equal!2959) (Minus!2959) (Broken!14799 (value!91424 List!16386)) (And!2959) (Div!2959) (LessEqual!2959) (Mod!2959) (Concat!7153) (Not!2959) (Plus!2959) (SpaceValue!2959 (value!91425 List!16386)) (IntegerValue!8879 (value!91426 Int) (text!21162 List!16386)) (StringLiteralValue!8878 (text!21163 List!16386)) (FloatLiteralValue!5919 (text!21164 List!16386)) (BytesLiteralValue!2959 (value!91427 List!16386)) (CommentValue!5919 (value!91428 List!16386)) (StringLiteralValue!8879 (value!91429 List!16386)) (ErrorTokenValue!2959 (msg!3020 List!16386)) )
))
(declare-datatypes ((String!19075 0))(
  ( (String!19076 (value!91430 String)) )
))
(declare-datatypes ((TokenValueInjection!5578 0))(
  ( (TokenValueInjection!5579 (toValue!4230 Int) (toChars!4089 Int)) )
))
(declare-datatypes ((Rule!5538 0))(
  ( (Rule!5539 (regex!2869 Regex!4193) (tag!3133 String!19075) (isSeparator!2869 Bool) (transformation!2869 TokenValueInjection!5578)) )
))
(declare-datatypes ((List!16387 0))(
  ( (Nil!16319) (Cons!16319 (h!21720 Rule!5538) (t!140593 List!16387)) )
))
(declare-fun rulesArg!359 () List!16387)

(assert (=> b!1537187 (= res!689035 (or (and ((_ is Cons!16319) rulesArg!359) ((_ is Nil!16319) (t!140593 rulesArg!359))) (not ((_ is Cons!16319) rulesArg!359))))))

(declare-fun lt!533439 () List!16385)

(declare-fun isPrefix!1235 (List!16385 List!16385) Bool)

(assert (=> b!1537187 (isPrefix!1235 lt!533439 lt!533439)))

(declare-datatypes ((Unit!25840 0))(
  ( (Unit!25841) )
))
(declare-fun lt!533434 () Unit!25840)

(declare-fun lemmaIsPrefixRefl!865 (List!16385 List!16385) Unit!25840)

(assert (=> b!1537187 (= lt!533434 (lemmaIsPrefixRefl!865 lt!533439 lt!533439))))

(declare-fun b!1537188 () Bool)

(declare-fun e!983328 () Bool)

(declare-fun e!983301 () Bool)

(declare-fun tp!443857 () Bool)

(assert (=> b!1537188 (= e!983328 (and e!983301 tp!443857))))

(declare-fun b!1537189 () Bool)

(declare-fun res!689039 () Bool)

(assert (=> b!1537189 (=> (not res!689039) (not e!983299))))

(declare-datatypes ((tuple3!1488 0))(
  ( (tuple3!1489 (_1!8776 Regex!4193) (_2!8776 Context!1422) (_3!1111 C!8564)) )
))
(declare-datatypes ((tuple2!15330 0))(
  ( (tuple2!15331 (_1!8777 tuple3!1488) (_2!8777 (InoxSet Context!1422))) )
))
(declare-datatypes ((List!16388 0))(
  ( (Nil!16320) (Cons!16320 (h!21721 tuple2!15330) (t!140594 List!16388)) )
))
(declare-datatypes ((array!5488 0))(
  ( (array!5489 (arr!2441 (Array (_ BitVec 32) List!16388)) (size!13190 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3144 0))(
  ( (LongMapFixedSize!3145 (defaultEntry!1932 Int) (mask!4757 (_ BitVec 32)) (extraKeys!1819 (_ BitVec 32)) (zeroValue!1829 List!16388) (minValue!1829 List!16388) (_size!3225 (_ BitVec 32)) (_keys!1866 array!5484) (_values!1851 array!5488) (_vacant!1633 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6173 0))(
  ( (Cell!6174 (v!23127 LongMapFixedSize!3144)) )
))
(declare-datatypes ((MutLongMap!1572 0))(
  ( (LongMap!1572 (underlying!3353 Cell!6173)) (MutLongMapExt!1571 (__x!10368 Int)) )
))
(declare-datatypes ((Cell!6175 0))(
  ( (Cell!6176 (v!23128 MutLongMap!1572)) )
))
(declare-datatypes ((Hashable!1516 0))(
  ( (HashableExt!1515 (__x!10369 Int)) )
))
(declare-datatypes ((MutableMap!1516 0))(
  ( (MutableMapExt!1515 (__x!10370 Int)) (HashMap!1516 (underlying!3354 Cell!6175) (hashF!3435 Hashable!1516) (_size!3226 (_ BitVec 32)) (defaultValue!1676 Int)) )
))
(declare-datatypes ((CacheDown!914 0))(
  ( (CacheDown!915 (cache!1897 MutableMap!1516)) )
))
(declare-fun cacheDown!708 () CacheDown!914)

(declare-fun valid!1278 (CacheDown!914) Bool)

(assert (=> b!1537189 (= res!689039 (valid!1278 cacheDown!708))))

(declare-fun tp!443867 () Bool)

(declare-fun tp!443869 () Bool)

(declare-fun e!983327 () Bool)

(declare-fun e!983329 () Bool)

(declare-fun array_inv!1753 (array!5484) Bool)

(declare-fun array_inv!1754 (array!5482) Bool)

(assert (=> b!1537190 (= e!983327 (and tp!443870 tp!443869 tp!443867 (array_inv!1753 (_keys!1864 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))))) (array_inv!1754 (_values!1849 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))))) e!983329))))

(declare-fun b!1537191 () Bool)

(declare-fun e!983303 () Bool)

(declare-fun isEmpty!10004 (List!16387) Bool)

(assert (=> b!1537191 (= e!983303 (not (isEmpty!10004 (t!140593 rulesArg!359))))))

(declare-fun mapNonEmpty!7437 () Bool)

(declare-fun mapRes!7438 () Bool)

(declare-fun tp!443880 () Bool)

(declare-fun tp!443860 () Bool)

(assert (=> mapNonEmpty!7437 (= mapRes!7438 (and tp!443880 tp!443860))))

(declare-fun mapKey!7438 () (_ BitVec 32))

(declare-fun mapValue!7437 () List!16384)

(declare-fun mapRest!7438 () (Array (_ BitVec 32) List!16384))

(assert (=> mapNonEmpty!7437 (= (arr!2440 (_values!1850 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))) (store mapRest!7438 mapKey!7438 mapValue!7437))))

(declare-fun b!1537192 () Bool)

(declare-fun e!983325 () Bool)

(declare-fun e!983302 () Bool)

(assert (=> b!1537192 (= e!983325 e!983302)))

(declare-fun mapNonEmpty!7438 () Bool)

(declare-fun mapRes!7437 () Bool)

(declare-fun tp!443873 () Bool)

(declare-fun tp!443864 () Bool)

(assert (=> mapNonEmpty!7438 (= mapRes!7437 (and tp!443873 tp!443864))))

(declare-fun mapKey!7439 () (_ BitVec 32))

(declare-fun mapValue!7439 () List!16383)

(declare-fun mapRest!7437 () (Array (_ BitVec 32) List!16383))

(assert (=> mapNonEmpty!7438 (= (arr!2438 (_values!1849 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))))) (store mapRest!7437 mapKey!7439 mapValue!7439))))

(declare-fun mapNonEmpty!7439 () Bool)

(declare-fun mapRes!7439 () Bool)

(declare-fun tp!443865 () Bool)

(declare-fun tp!443878 () Bool)

(assert (=> mapNonEmpty!7439 (= mapRes!7439 (and tp!443865 tp!443878))))

(declare-fun mapRest!7439 () (Array (_ BitVec 32) List!16388))

(declare-fun mapValue!7438 () List!16388)

(declare-fun mapKey!7437 () (_ BitVec 32))

(assert (=> mapNonEmpty!7439 (= (arr!2441 (_values!1851 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))))) (store mapRest!7439 mapKey!7437 mapValue!7438))))

(declare-fun b!1537193 () Bool)

(declare-fun e!983310 () Bool)

(declare-fun tp!443882 () Bool)

(assert (=> b!1537193 (= e!983310 (and tp!443882 mapRes!7438))))

(declare-fun condMapEmpty!7438 () Bool)

(declare-fun mapDefault!7438 () List!16384)

(assert (=> b!1537193 (= condMapEmpty!7438 (= (arr!2440 (_values!1850 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16384)) mapDefault!7438)))))

(declare-fun res!689043 () Bool)

(declare-fun e!983331 () Bool)

(assert (=> start!142884 (=> (not res!689043) (not e!983331))))

(declare-datatypes ((LexerInterface!2521 0))(
  ( (LexerInterfaceExt!2518 (__x!10371 Int)) (Lexer!2519) )
))
(declare-fun thiss!15733 () LexerInterface!2521)

(assert (=> start!142884 (= res!689043 ((_ is Lexer!2519) thiss!15733))))

(assert (=> start!142884 e!983331))

(declare-fun e!983315 () Bool)

(declare-fun inv!21581 (CacheUp!906) Bool)

(assert (=> start!142884 (and (inv!21581 cacheUp!695) e!983315)))

(declare-fun input!1460 () BalanceConc!10914)

(declare-fun e!983324 () Bool)

(declare-fun inv!21582 (BalanceConc!10914) Bool)

(assert (=> start!142884 (and (inv!21582 input!1460) e!983324)))

(declare-fun e!983307 () Bool)

(declare-fun inv!21583 (CacheDown!914) Bool)

(assert (=> start!142884 (and (inv!21583 cacheDown!708) e!983307)))

(assert (=> start!142884 true))

(declare-fun totalInput!496 () BalanceConc!10914)

(declare-fun e!983319 () Bool)

(assert (=> start!142884 (and (inv!21582 totalInput!496) e!983319)))

(assert (=> start!142884 e!983328))

(declare-fun e!983298 () Bool)

(declare-fun inv!21584 (CacheFurthestNullable!336) Bool)

(assert (=> start!142884 (and (inv!21584 cacheFurthestNullable!81) e!983298)))

(declare-fun tp!443861 () Bool)

(declare-fun tp!443866 () Bool)

(declare-fun e!983312 () Bool)

(declare-fun array_inv!1755 (array!5488) Bool)

(assert (=> b!1537194 (= e!983302 (and tp!443877 tp!443866 tp!443861 (array_inv!1753 (_keys!1866 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))))) (array_inv!1755 (_values!1851 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))))) e!983312))))

(declare-fun tp!443859 () Bool)

(declare-fun tp!443876 () Bool)

(declare-fun e!983317 () Bool)

(declare-fun array_inv!1756 (array!5486) Bool)

(assert (=> b!1537195 (= e!983317 (and tp!443856 tp!443876 tp!443859 (array_inv!1753 (_keys!1865 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))) (array_inv!1756 (_values!1850 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))) e!983310))))

(declare-fun b!1537196 () Bool)

(declare-fun res!689036 () Bool)

(assert (=> b!1537196 (=> (not res!689036) (not e!983331))))

(declare-fun rulesValidInductive!875 (LexerInterface!2521 List!16387) Bool)

(assert (=> b!1537196 (= res!689036 (rulesValidInductive!875 thiss!15733 rulesArg!359))))

(declare-fun b!1537197 () Bool)

(declare-fun e!983313 () Bool)

(assert (=> b!1537197 (= e!983313 e!983325)))

(declare-fun b!1537198 () Bool)

(assert (=> b!1537198 (= e!983315 e!983314)))

(declare-fun mapIsEmpty!7437 () Bool)

(assert (=> mapIsEmpty!7437 mapRes!7437))

(declare-fun b!1537199 () Bool)

(declare-fun e!983316 () Bool)

(assert (=> b!1537199 (= e!983330 e!983316)))

(declare-fun e!983326 () Bool)

(declare-fun b!1537200 () Bool)

(declare-fun tp!443855 () Bool)

(declare-fun inv!21575 (String!19075) Bool)

(declare-fun inv!21585 (TokenValueInjection!5578) Bool)

(assert (=> b!1537200 (= e!983301 (and tp!443855 (inv!21575 (tag!3133 (h!21720 rulesArg!359))) (inv!21585 (transformation!2869 (h!21720 rulesArg!359))) e!983326))))

(declare-fun b!1537201 () Bool)

(declare-fun e!983308 () Bool)

(declare-fun lt!533438 () MutLongMap!1572)

(assert (=> b!1537201 (= e!983308 (and e!983313 ((_ is LongMap!1572) lt!533438)))))

(assert (=> b!1537201 (= lt!533438 (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))))

(declare-fun b!1537202 () Bool)

(assert (=> b!1537202 (= e!983331 e!983299)))

(declare-fun res!689038 () Bool)

(assert (=> b!1537202 (=> (not res!689038) (not e!983299))))

(declare-fun isSuffix!321 (List!16385 List!16385) Bool)

(declare-fun list!6414 (BalanceConc!10914) List!16385)

(assert (=> b!1537202 (= res!689038 (isSuffix!321 lt!533439 (list!6414 totalInput!496)))))

(assert (=> b!1537202 (= lt!533439 (list!6414 input!1460))))

(declare-fun b!1537203 () Bool)

(declare-fun e!983321 () Bool)

(declare-fun tp!443871 () Bool)

(declare-fun inv!21586 (Conc!5486) Bool)

(assert (=> b!1537203 (= e!983321 (and (inv!21586 (c!251579 (totalInput!2357 cacheFurthestNullable!81))) tp!443871))))

(declare-fun mapIsEmpty!7438 () Bool)

(assert (=> mapIsEmpty!7438 mapRes!7438))

(declare-fun e!983300 () Bool)

(declare-fun b!1537204 () Bool)

(assert (=> b!1537204 (= e!983298 (and e!983300 (inv!21582 (totalInput!2357 cacheFurthestNullable!81)) e!983321))))

(declare-fun b!1537205 () Bool)

(declare-fun tp!443874 () Bool)

(assert (=> b!1537205 (= e!983324 (and (inv!21586 (c!251579 input!1460)) tp!443874))))

(assert (=> b!1537206 (= e!983300 (and e!983305 tp!443881))))

(declare-fun b!1537207 () Bool)

(declare-fun e!983320 () Bool)

(assert (=> b!1537207 (= e!983320 e!983327)))

(declare-fun b!1537208 () Bool)

(declare-fun e!983318 () Bool)

(declare-fun lt!533436 () MutLongMap!1570)

(assert (=> b!1537208 (= e!983323 (and e!983318 ((_ is LongMap!1570) lt!533436)))))

(assert (=> b!1537208 (= lt!533436 (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))))

(declare-fun b!1537209 () Bool)

(declare-fun tp!443868 () Bool)

(assert (=> b!1537209 (= e!983329 (and tp!443868 mapRes!7437))))

(declare-fun condMapEmpty!7439 () Bool)

(declare-fun mapDefault!7439 () List!16383)

(assert (=> b!1537209 (= condMapEmpty!7439 (= (arr!2438 (_values!1849 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16383)) mapDefault!7439)))))

(declare-fun e!983306 () Bool)

(assert (=> b!1537210 (= e!983306 (and e!983308 tp!443858))))

(declare-fun b!1537211 () Bool)

(declare-fun res!689042 () Bool)

(assert (=> b!1537211 (=> (not res!689042) (not e!983299))))

(declare-fun valid!1279 (CacheFurthestNullable!336) Bool)

(assert (=> b!1537211 (= res!689042 (valid!1279 cacheFurthestNullable!81))))

(declare-fun b!1537212 () Bool)

(assert (=> b!1537212 (= e!983307 e!983306)))

(declare-fun b!1537213 () Bool)

(declare-fun tp!443879 () Bool)

(assert (=> b!1537213 (= e!983312 (and tp!443879 mapRes!7439))))

(declare-fun condMapEmpty!7437 () Bool)

(declare-fun mapDefault!7437 () List!16388)

(assert (=> b!1537213 (= condMapEmpty!7437 (= (arr!2441 (_values!1851 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16388)) mapDefault!7437)))))

(declare-fun b!1537214 () Bool)

(declare-fun tp!443863 () Bool)

(assert (=> b!1537214 (= e!983319 (and (inv!21586 (c!251579 totalInput!496)) tp!443863))))

(declare-fun b!1537215 () Bool)

(assert (=> b!1537215 (= e!983316 e!983317)))

(declare-fun mapIsEmpty!7439 () Bool)

(assert (=> mapIsEmpty!7439 mapRes!7439))

(declare-fun b!1537216 () Bool)

(assert (=> b!1537216 (= e!983322 e!983303)))

(declare-fun res!689041 () Bool)

(assert (=> b!1537216 (=> res!689041 e!983303)))

(assert (=> b!1537216 (= res!689041 (not (rulesValidInductive!875 thiss!15733 (t!140593 rulesArg!359))))))

(declare-datatypes ((Token!5382 0))(
  ( (Token!5383 (value!91431 TokenValue!2959) (rule!4672 Rule!5538) (size!13191 Int) (originalCharacters!3722 List!16385)) )
))
(declare-datatypes ((tuple2!15332 0))(
  ( (tuple2!15333 (_1!8778 Token!5382) (_2!8778 BalanceConc!10914)) )
))
(declare-datatypes ((Option!2954 0))(
  ( (None!2953) (Some!2953 (v!23129 tuple2!15332)) )
))
(declare-datatypes ((tuple4!734 0))(
  ( (tuple4!735 (_1!8779 Option!2954) (_2!8779 CacheUp!906) (_3!1112 CacheDown!914) (_4!367 CacheFurthestNullable!336)) )
))
(declare-fun lt!533435 () tuple4!734)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!21 (LexerInterface!2521 Rule!5538 BalanceConc!10914 BalanceConc!10914 CacheUp!906 CacheDown!914 CacheFurthestNullable!336) tuple4!734)

(assert (=> b!1537216 (= lt!533435 (maxPrefixOneRuleZipperSequenceV3Mem!21 thiss!15733 (h!21720 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun b!1537217 () Bool)

(declare-fun res!689040 () Bool)

(assert (=> b!1537217 (=> (not res!689040) (not e!983299))))

(assert (=> b!1537217 (= res!689040 (= (totalInput!2357 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1537218 () Bool)

(assert (=> b!1537218 (= e!983318 e!983320)))

(assert (=> b!1537219 (= e!983326 (and tp!443862 tp!443872))))

(declare-fun b!1537220 () Bool)

(declare-fun res!689037 () Bool)

(assert (=> b!1537220 (=> (not res!689037) (not e!983331))))

(assert (=> b!1537220 (= res!689037 (not (isEmpty!10004 rulesArg!359)))))

(assert (= (and start!142884 res!689043) b!1537196))

(assert (= (and b!1537196 res!689036) b!1537220))

(assert (= (and b!1537220 res!689037) b!1537202))

(assert (= (and b!1537202 res!689038) b!1537184))

(assert (= (and b!1537184 res!689044) b!1537189))

(assert (= (and b!1537189 res!689039) b!1537211))

(assert (= (and b!1537211 res!689042) b!1537217))

(assert (= (and b!1537217 res!689040) b!1537187))

(assert (= (and b!1537187 (not res!689035)) b!1537216))

(assert (= (and b!1537216 (not res!689041)) b!1537191))

(assert (= (and b!1537209 condMapEmpty!7439) mapIsEmpty!7437))

(assert (= (and b!1537209 (not condMapEmpty!7439)) mapNonEmpty!7438))

(assert (= b!1537190 b!1537209))

(assert (= b!1537207 b!1537190))

(assert (= b!1537218 b!1537207))

(assert (= (and b!1537208 ((_ is LongMap!1570) (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))) b!1537218))

(assert (= b!1537186 b!1537208))

(assert (= (and b!1537198 ((_ is HashMap!1514) (cache!1895 cacheUp!695))) b!1537186))

(assert (= start!142884 b!1537198))

(assert (= start!142884 b!1537205))

(assert (= (and b!1537213 condMapEmpty!7437) mapIsEmpty!7439))

(assert (= (and b!1537213 (not condMapEmpty!7437)) mapNonEmpty!7439))

(assert (= b!1537194 b!1537213))

(assert (= b!1537192 b!1537194))

(assert (= b!1537197 b!1537192))

(assert (= (and b!1537201 ((_ is LongMap!1572) (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))) b!1537197))

(assert (= b!1537210 b!1537201))

(assert (= (and b!1537212 ((_ is HashMap!1516) (cache!1897 cacheDown!708))) b!1537210))

(assert (= start!142884 b!1537212))

(assert (= start!142884 b!1537214))

(assert (= b!1537200 b!1537219))

(assert (= b!1537188 b!1537200))

(assert (= (and start!142884 ((_ is Cons!16319) rulesArg!359)) b!1537188))

(assert (= (and b!1537193 condMapEmpty!7438) mapIsEmpty!7438))

(assert (= (and b!1537193 (not condMapEmpty!7438)) mapNonEmpty!7437))

(assert (= b!1537195 b!1537193))

(assert (= b!1537215 b!1537195))

(assert (= b!1537199 b!1537215))

(assert (= (and b!1537185 ((_ is LongMap!1571) (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))) b!1537199))

(assert (= b!1537206 b!1537185))

(assert (= (and b!1537204 ((_ is HashMap!1515) (cache!1896 cacheFurthestNullable!81))) b!1537206))

(assert (= b!1537204 b!1537203))

(assert (= start!142884 b!1537204))

(declare-fun m!1812182 () Bool)

(assert (=> mapNonEmpty!7439 m!1812182))

(declare-fun m!1812184 () Bool)

(assert (=> b!1537196 m!1812184))

(declare-fun m!1812186 () Bool)

(assert (=> b!1537189 m!1812186))

(declare-fun m!1812188 () Bool)

(assert (=> b!1537204 m!1812188))

(declare-fun m!1812190 () Bool)

(assert (=> b!1537195 m!1812190))

(declare-fun m!1812192 () Bool)

(assert (=> b!1537195 m!1812192))

(declare-fun m!1812194 () Bool)

(assert (=> b!1537214 m!1812194))

(declare-fun m!1812196 () Bool)

(assert (=> mapNonEmpty!7437 m!1812196))

(declare-fun m!1812198 () Bool)

(assert (=> b!1537203 m!1812198))

(declare-fun m!1812200 () Bool)

(assert (=> start!142884 m!1812200))

(declare-fun m!1812202 () Bool)

(assert (=> start!142884 m!1812202))

(declare-fun m!1812204 () Bool)

(assert (=> start!142884 m!1812204))

(declare-fun m!1812206 () Bool)

(assert (=> start!142884 m!1812206))

(declare-fun m!1812208 () Bool)

(assert (=> start!142884 m!1812208))

(declare-fun m!1812210 () Bool)

(assert (=> b!1537184 m!1812210))

(declare-fun m!1812212 () Bool)

(assert (=> b!1537205 m!1812212))

(declare-fun m!1812214 () Bool)

(assert (=> b!1537202 m!1812214))

(assert (=> b!1537202 m!1812214))

(declare-fun m!1812216 () Bool)

(assert (=> b!1537202 m!1812216))

(declare-fun m!1812218 () Bool)

(assert (=> b!1537202 m!1812218))

(declare-fun m!1812220 () Bool)

(assert (=> b!1537191 m!1812220))

(declare-fun m!1812222 () Bool)

(assert (=> b!1537194 m!1812222))

(declare-fun m!1812224 () Bool)

(assert (=> b!1537194 m!1812224))

(declare-fun m!1812226 () Bool)

(assert (=> b!1537216 m!1812226))

(declare-fun m!1812228 () Bool)

(assert (=> b!1537216 m!1812228))

(declare-fun m!1812230 () Bool)

(assert (=> b!1537200 m!1812230))

(declare-fun m!1812232 () Bool)

(assert (=> b!1537200 m!1812232))

(declare-fun m!1812234 () Bool)

(assert (=> b!1537211 m!1812234))

(declare-fun m!1812236 () Bool)

(assert (=> b!1537187 m!1812236))

(declare-fun m!1812238 () Bool)

(assert (=> b!1537187 m!1812238))

(declare-fun m!1812240 () Bool)

(assert (=> b!1537190 m!1812240))

(declare-fun m!1812242 () Bool)

(assert (=> b!1537190 m!1812242))

(declare-fun m!1812244 () Bool)

(assert (=> mapNonEmpty!7438 m!1812244))

(declare-fun m!1812246 () Bool)

(assert (=> b!1537220 m!1812246))

(check-sat (not b!1537187) (not b_next!40651) (not b!1537214) (not b!1537188) (not b_next!40659) (not b!1537191) (not b_next!40661) (not b!1537200) b_and!106829 (not b!1537209) (not b_next!40653) (not b!1537204) b_and!106827 (not b!1537213) b_and!106833 (not b_next!40663) (not b!1537202) (not b!1537205) (not b!1537203) (not b!1537195) b_and!106825 b_and!106837 (not mapNonEmpty!7438) (not b!1537211) (not b_next!40665) (not start!142884) (not b!1537216) (not b!1537193) (not b!1537189) (not mapNonEmpty!7437) b_and!106831 (not b_next!40657) (not b_next!40655) (not b!1537190) (not b!1537196) (not mapNonEmpty!7439) b_and!106835 (not b!1537220) (not b!1537184) b_and!106839 (not b!1537194))
(check-sat (not b_next!40651) (not b_next!40665) (not b_next!40659) (not b_next!40661) b_and!106829 b_and!106835 (not b_next!40653) b_and!106827 b_and!106839 b_and!106833 (not b_next!40663) b_and!106825 b_and!106837 b_and!106831 (not b_next!40657) (not b_next!40655))
(get-model)

(declare-fun d!458290 () Bool)

(assert (=> d!458290 (= (array_inv!1753 (_keys!1865 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))) (bvsge (size!13188 (_keys!1865 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537195 d!458290))

(declare-fun d!458292 () Bool)

(assert (=> d!458292 (= (array_inv!1756 (_values!1850 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))) (bvsge (size!13189 (_values!1850 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537195 d!458292))

(declare-fun d!458294 () Bool)

(declare-fun isBalanced!1628 (Conc!5486) Bool)

(assert (=> d!458294 (= (inv!21582 (totalInput!2357 cacheFurthestNullable!81)) (isBalanced!1628 (c!251579 (totalInput!2357 cacheFurthestNullable!81))))))

(declare-fun bs!382750 () Bool)

(assert (= bs!382750 d!458294))

(declare-fun m!1812248 () Bool)

(assert (=> bs!382750 m!1812248))

(assert (=> b!1537204 d!458294))

(declare-fun d!458296 () Bool)

(assert (=> d!458296 true))

(declare-fun lt!533442 () Bool)

(declare-fun lambda!65236 () Int)

(declare-fun forall!3901 (List!16387 Int) Bool)

(assert (=> d!458296 (= lt!533442 (forall!3901 rulesArg!359 lambda!65236))))

(declare-fun e!983336 () Bool)

(assert (=> d!458296 (= lt!533442 e!983336)))

(declare-fun res!689053 () Bool)

(assert (=> d!458296 (=> res!689053 e!983336)))

(assert (=> d!458296 (= res!689053 (not ((_ is Cons!16319) rulesArg!359)))))

(assert (=> d!458296 (= (rulesValidInductive!875 thiss!15733 rulesArg!359) lt!533442)))

(declare-fun b!1537225 () Bool)

(declare-fun e!983337 () Bool)

(assert (=> b!1537225 (= e!983336 e!983337)))

(declare-fun res!689054 () Bool)

(assert (=> b!1537225 (=> (not res!689054) (not e!983337))))

(declare-fun ruleValid!646 (LexerInterface!2521 Rule!5538) Bool)

(assert (=> b!1537225 (= res!689054 (ruleValid!646 thiss!15733 (h!21720 rulesArg!359)))))

(declare-fun b!1537226 () Bool)

(assert (=> b!1537226 (= e!983337 (rulesValidInductive!875 thiss!15733 (t!140593 rulesArg!359)))))

(assert (= (and d!458296 (not res!689053)) b!1537225))

(assert (= (and b!1537225 res!689054) b!1537226))

(declare-fun m!1812250 () Bool)

(assert (=> d!458296 m!1812250))

(declare-fun m!1812252 () Bool)

(assert (=> b!1537225 m!1812252))

(assert (=> b!1537226 m!1812226))

(assert (=> b!1537196 d!458296))

(declare-fun d!458298 () Bool)

(declare-fun c!251582 () Bool)

(assert (=> d!458298 (= c!251582 ((_ is Node!5486) (c!251579 input!1460)))))

(declare-fun e!983342 () Bool)

(assert (=> d!458298 (= (inv!21586 (c!251579 input!1460)) e!983342)))

(declare-fun b!1537235 () Bool)

(declare-fun inv!21587 (Conc!5486) Bool)

(assert (=> b!1537235 (= e!983342 (inv!21587 (c!251579 input!1460)))))

(declare-fun b!1537236 () Bool)

(declare-fun e!983343 () Bool)

(assert (=> b!1537236 (= e!983342 e!983343)))

(declare-fun res!689057 () Bool)

(assert (=> b!1537236 (= res!689057 (not ((_ is Leaf!8128) (c!251579 input!1460))))))

(assert (=> b!1537236 (=> res!689057 e!983343)))

(declare-fun b!1537237 () Bool)

(declare-fun inv!21588 (Conc!5486) Bool)

(assert (=> b!1537237 (= e!983343 (inv!21588 (c!251579 input!1460)))))

(assert (= (and d!458298 c!251582) b!1537235))

(assert (= (and d!458298 (not c!251582)) b!1537236))

(assert (= (and b!1537236 (not res!689057)) b!1537237))

(declare-fun m!1812254 () Bool)

(assert (=> b!1537235 m!1812254))

(declare-fun m!1812256 () Bool)

(assert (=> b!1537237 m!1812256))

(assert (=> b!1537205 d!458298))

(declare-fun d!458300 () Bool)

(declare-fun validCacheMapDown!146 (MutableMap!1516) Bool)

(assert (=> d!458300 (= (valid!1278 cacheDown!708) (validCacheMapDown!146 (cache!1897 cacheDown!708)))))

(declare-fun bs!382751 () Bool)

(assert (= bs!382751 d!458300))

(declare-fun m!1812258 () Bool)

(assert (=> bs!382751 m!1812258))

(assert (=> b!1537189 d!458300))

(declare-fun d!458302 () Bool)

(declare-fun res!689060 () Bool)

(declare-fun e!983346 () Bool)

(assert (=> d!458302 (=> (not res!689060) (not e!983346))))

(assert (=> d!458302 (= res!689060 ((_ is HashMap!1516) (cache!1897 cacheDown!708)))))

(assert (=> d!458302 (= (inv!21583 cacheDown!708) e!983346)))

(declare-fun b!1537240 () Bool)

(assert (=> b!1537240 (= e!983346 (validCacheMapDown!146 (cache!1897 cacheDown!708)))))

(assert (= (and d!458302 res!689060) b!1537240))

(assert (=> b!1537240 m!1812258))

(assert (=> start!142884 d!458302))

(declare-fun d!458304 () Bool)

(assert (=> d!458304 (= (inv!21582 input!1460) (isBalanced!1628 (c!251579 input!1460)))))

(declare-fun bs!382752 () Bool)

(assert (= bs!382752 d!458304))

(declare-fun m!1812260 () Bool)

(assert (=> bs!382752 m!1812260))

(assert (=> start!142884 d!458304))

(declare-fun d!458306 () Bool)

(declare-fun res!689063 () Bool)

(declare-fun e!983349 () Bool)

(assert (=> d!458306 (=> (not res!689063) (not e!983349))))

(assert (=> d!458306 (= res!689063 ((_ is HashMap!1514) (cache!1895 cacheUp!695)))))

(assert (=> d!458306 (= (inv!21581 cacheUp!695) e!983349)))

(declare-fun b!1537243 () Bool)

(declare-fun validCacheMapUp!146 (MutableMap!1514) Bool)

(assert (=> b!1537243 (= e!983349 (validCacheMapUp!146 (cache!1895 cacheUp!695)))))

(assert (= (and d!458306 res!689063) b!1537243))

(declare-fun m!1812262 () Bool)

(assert (=> b!1537243 m!1812262))

(assert (=> start!142884 d!458306))

(declare-fun d!458308 () Bool)

(assert (=> d!458308 (= (inv!21582 totalInput!496) (isBalanced!1628 (c!251579 totalInput!496)))))

(declare-fun bs!382753 () Bool)

(assert (= bs!382753 d!458308))

(declare-fun m!1812264 () Bool)

(assert (=> bs!382753 m!1812264))

(assert (=> start!142884 d!458308))

(declare-fun d!458310 () Bool)

(declare-fun res!689066 () Bool)

(declare-fun e!983352 () Bool)

(assert (=> d!458310 (=> (not res!689066) (not e!983352))))

(assert (=> d!458310 (= res!689066 ((_ is HashMap!1515) (cache!1896 cacheFurthestNullable!81)))))

(assert (=> d!458310 (= (inv!21584 cacheFurthestNullable!81) e!983352)))

(declare-fun b!1537246 () Bool)

(declare-fun validCacheMapFurthestNullable!59 (MutableMap!1515 BalanceConc!10914) Bool)

(assert (=> b!1537246 (= e!983352 (validCacheMapFurthestNullable!59 (cache!1896 cacheFurthestNullable!81) (totalInput!2357 cacheFurthestNullable!81)))))

(assert (= (and d!458310 res!689066) b!1537246))

(declare-fun m!1812266 () Bool)

(assert (=> b!1537246 m!1812266))

(assert (=> start!142884 d!458310))

(declare-fun bs!382754 () Bool)

(declare-fun d!458312 () Bool)

(assert (= bs!382754 (and d!458312 d!458296)))

(declare-fun lambda!65237 () Int)

(assert (=> bs!382754 (= lambda!65237 lambda!65236)))

(assert (=> d!458312 true))

(declare-fun lt!533443 () Bool)

(assert (=> d!458312 (= lt!533443 (forall!3901 (t!140593 rulesArg!359) lambda!65237))))

(declare-fun e!983353 () Bool)

(assert (=> d!458312 (= lt!533443 e!983353)))

(declare-fun res!689067 () Bool)

(assert (=> d!458312 (=> res!689067 e!983353)))

(assert (=> d!458312 (= res!689067 (not ((_ is Cons!16319) (t!140593 rulesArg!359))))))

(assert (=> d!458312 (= (rulesValidInductive!875 thiss!15733 (t!140593 rulesArg!359)) lt!533443)))

(declare-fun b!1537247 () Bool)

(declare-fun e!983354 () Bool)

(assert (=> b!1537247 (= e!983353 e!983354)))

(declare-fun res!689068 () Bool)

(assert (=> b!1537247 (=> (not res!689068) (not e!983354))))

(assert (=> b!1537247 (= res!689068 (ruleValid!646 thiss!15733 (h!21720 (t!140593 rulesArg!359))))))

(declare-fun b!1537248 () Bool)

(assert (=> b!1537248 (= e!983354 (rulesValidInductive!875 thiss!15733 (t!140593 (t!140593 rulesArg!359))))))

(assert (= (and d!458312 (not res!689067)) b!1537247))

(assert (= (and b!1537247 res!689068) b!1537248))

(declare-fun m!1812268 () Bool)

(assert (=> d!458312 m!1812268))

(declare-fun m!1812270 () Bool)

(assert (=> b!1537247 m!1812270))

(declare-fun m!1812272 () Bool)

(assert (=> b!1537248 m!1812272))

(assert (=> b!1537216 d!458312))

(declare-fun b!1537286 () Bool)

(declare-fun e!983375 () Bool)

(assert (=> b!1537286 (= e!983375 true)))

(declare-fun b!1537285 () Bool)

(declare-fun e!983374 () Bool)

(assert (=> b!1537285 (= e!983374 e!983375)))

(declare-fun b!1537277 () Bool)

(assert (=> b!1537277 e!983374))

(assert (= b!1537285 b!1537286))

(assert (= b!1537277 b!1537285))

(declare-fun order!9595 () Int)

(declare-fun order!9593 () Int)

(declare-fun lambda!65242 () Int)

(declare-fun dynLambda!7282 (Int Int) Int)

(declare-fun dynLambda!7283 (Int Int) Int)

(assert (=> b!1537286 (< (dynLambda!7282 order!9593 (toValue!4230 (transformation!2869 (h!21720 rulesArg!359)))) (dynLambda!7283 order!9595 lambda!65242))))

(declare-fun order!9597 () Int)

(declare-fun dynLambda!7284 (Int Int) Int)

(assert (=> b!1537286 (< (dynLambda!7284 order!9597 (toChars!4089 (transformation!2869 (h!21720 rulesArg!359)))) (dynLambda!7283 order!9595 lambda!65242))))

(declare-fun b!1537269 () Bool)

(declare-fun e!983366 () Bool)

(declare-fun lt!533472 () tuple4!734)

(assert (=> b!1537269 (= e!983366 (= (totalInput!2357 (_4!367 lt!533472)) totalInput!496))))

(declare-fun b!1537270 () Bool)

(declare-fun res!689089 () Bool)

(assert (=> b!1537270 (=> (not res!689089) (not e!983366))))

(assert (=> b!1537270 (= res!689089 (valid!1278 (_3!1112 lt!533472)))))

(declare-fun b!1537271 () Bool)

(declare-fun e!983367 () Option!2954)

(assert (=> b!1537271 (= e!983367 None!2953)))

(declare-fun b!1537272 () Bool)

(declare-fun e!983369 () Bool)

(declare-fun lt!533465 () List!16385)

(declare-fun matchR!1844 (Regex!4193 List!16385) Bool)

(declare-datatypes ((tuple2!15334 0))(
  ( (tuple2!15335 (_1!8780 List!16385) (_2!8780 List!16385)) )
))
(declare-fun findLongestMatchInner!301 (Regex!4193 List!16385 Int List!16385 List!16385 Int) tuple2!15334)

(declare-fun size!13192 (List!16385) Int)

(assert (=> b!1537272 (= e!983369 (matchR!1844 (regex!2869 (h!21720 rulesArg!359)) (_1!8780 (findLongestMatchInner!301 (regex!2869 (h!21720 rulesArg!359)) Nil!16317 (size!13192 Nil!16317) lt!533465 lt!533465 (size!13192 lt!533465)))))))

(declare-fun b!1537273 () Bool)

(declare-fun e!983368 () Bool)

(declare-fun e!983365 () Bool)

(assert (=> b!1537273 (= e!983368 e!983365)))

(declare-fun res!689086 () Bool)

(assert (=> b!1537273 (=> (not res!689086) (not e!983365))))

(declare-fun get!4773 (Option!2954) tuple2!15332)

(declare-datatypes ((tuple2!15336 0))(
  ( (tuple2!15337 (_1!8781 Token!5382) (_2!8781 List!16385)) )
))
(declare-datatypes ((Option!2955 0))(
  ( (None!2954) (Some!2954 (v!23130 tuple2!15336)) )
))
(declare-fun get!4774 (Option!2955) tuple2!15336)

(declare-fun maxPrefixOneRule!674 (LexerInterface!2521 Rule!5538 List!16385) Option!2955)

(assert (=> b!1537273 (= res!689086 (= (_1!8778 (get!4773 (_1!8779 lt!533472))) (_1!8781 (get!4774 (maxPrefixOneRule!674 thiss!15733 (h!21720 rulesArg!359) (list!6414 input!1460))))))))

(declare-fun b!1537274 () Bool)

(declare-fun res!689085 () Bool)

(assert (=> b!1537274 (=> (not res!689085) (not e!983366))))

(assert (=> b!1537274 (= res!689085 e!983368)))

(declare-fun res!689090 () Bool)

(assert (=> b!1537274 (=> res!689090 e!983368)))

(declare-fun isDefined!2373 (Option!2954) Bool)

(assert (=> b!1537274 (= res!689090 (not (isDefined!2373 (_1!8779 lt!533472))))))

(declare-fun b!1537275 () Bool)

(assert (=> b!1537275 (= e!983365 (= (list!6414 (_2!8778 (get!4773 (_1!8779 lt!533472)))) (_2!8781 (get!4774 (maxPrefixOneRule!674 thiss!15733 (h!21720 rulesArg!359) (list!6414 input!1460))))))))

(declare-fun b!1537276 () Bool)

(declare-fun res!689092 () Bool)

(assert (=> b!1537276 (=> (not res!689092) (not e!983366))))

(assert (=> b!1537276 (= res!689092 (valid!1279 (_4!367 lt!533472)))))

(declare-fun d!458314 () Bool)

(assert (=> d!458314 e!983366))

(declare-fun res!689091 () Bool)

(assert (=> d!458314 (=> (not res!689091) (not e!983366))))

(declare-fun isDefined!2374 (Option!2955) Bool)

(assert (=> d!458314 (= res!689091 (= (isDefined!2373 (_1!8779 lt!533472)) (isDefined!2374 (maxPrefixOneRule!674 thiss!15733 (h!21720 rulesArg!359) (list!6414 input!1460)))))))

(declare-datatypes ((tuple2!15338 0))(
  ( (tuple2!15339 (_1!8782 BalanceConc!10914) (_2!8782 BalanceConc!10914)) )
))
(declare-datatypes ((tuple4!736 0))(
  ( (tuple4!737 (_1!8783 tuple2!15338) (_2!8783 CacheUp!906) (_3!1113 CacheDown!914) (_4!368 CacheFurthestNullable!336)) )
))
(declare-fun lt!533466 () tuple4!736)

(assert (=> d!458314 (= lt!533472 (tuple4!735 e!983367 (_2!8783 lt!533466) (_3!1113 lt!533466) (_4!368 lt!533466)))))

(declare-fun c!251586 () Bool)

(declare-fun isEmpty!10005 (BalanceConc!10914) Bool)

(assert (=> d!458314 (= c!251586 (isEmpty!10005 (_1!8782 (_1!8783 lt!533466))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!11 (Regex!4193 BalanceConc!10914 BalanceConc!10914 CacheUp!906 CacheDown!914 CacheFurthestNullable!336) tuple4!736)

(assert (=> d!458314 (= lt!533466 (findLongestMatchWithZipperSequenceV3Mem!11 (regex!2869 (h!21720 rulesArg!359)) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(assert (=> d!458314 (ruleValid!646 thiss!15733 (h!21720 rulesArg!359))))

(assert (=> d!458314 (= (maxPrefixOneRuleZipperSequenceV3Mem!21 thiss!15733 (h!21720 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81) lt!533472)))

(declare-fun apply!4079 (TokenValueInjection!5578 BalanceConc!10914) TokenValue!2959)

(declare-fun size!13193 (BalanceConc!10914) Int)

(assert (=> b!1537277 (= e!983367 (Some!2953 (tuple2!15333 (Token!5383 (apply!4079 (transformation!2869 (h!21720 rulesArg!359)) (_1!8782 (_1!8783 lt!533466))) (h!21720 rulesArg!359) (size!13193 (_1!8782 (_1!8783 lt!533466))) (list!6414 (_1!8782 (_1!8783 lt!533466)))) (_2!8782 (_1!8783 lt!533466)))))))

(assert (=> b!1537277 (= lt!533465 (list!6414 input!1460))))

(declare-fun lt!533464 () Unit!25840)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!285 (Regex!4193 List!16385) Unit!25840)

(assert (=> b!1537277 (= lt!533464 (longestMatchIsAcceptedByMatchOrIsEmpty!285 (regex!2869 (h!21720 rulesArg!359)) lt!533465))))

(declare-fun res!689087 () Bool)

(declare-fun isEmpty!10006 (List!16385) Bool)

(assert (=> b!1537277 (= res!689087 (isEmpty!10006 (_1!8780 (findLongestMatchInner!301 (regex!2869 (h!21720 rulesArg!359)) Nil!16317 (size!13192 Nil!16317) lt!533465 lt!533465 (size!13192 lt!533465)))))))

(assert (=> b!1537277 (=> res!689087 e!983369)))

(assert (=> b!1537277 e!983369))

(declare-fun lt!533471 () Unit!25840)

(assert (=> b!1537277 (= lt!533471 lt!533464)))

(declare-fun lt!533467 () Unit!25840)

(declare-fun lemmaInv!395 (TokenValueInjection!5578) Unit!25840)

(assert (=> b!1537277 (= lt!533467 (lemmaInv!395 (transformation!2869 (h!21720 rulesArg!359))))))

(declare-fun lt!533469 () Unit!25840)

(declare-fun ForallOf!178 (Int BalanceConc!10914) Unit!25840)

(assert (=> b!1537277 (= lt!533469 (ForallOf!178 lambda!65242 (_1!8782 (_1!8783 lt!533466))))))

(declare-fun lt!533473 () Unit!25840)

(declare-fun seqFromList!1741 (List!16385) BalanceConc!10914)

(assert (=> b!1537277 (= lt!533473 (ForallOf!178 lambda!65242 (seqFromList!1741 (list!6414 (_1!8782 (_1!8783 lt!533466))))))))

(declare-fun lt!533468 () Option!2954)

(assert (=> b!1537277 (= lt!533468 (Some!2953 (tuple2!15333 (Token!5383 (apply!4079 (transformation!2869 (h!21720 rulesArg!359)) (_1!8782 (_1!8783 lt!533466))) (h!21720 rulesArg!359) (size!13193 (_1!8782 (_1!8783 lt!533466))) (list!6414 (_1!8782 (_1!8783 lt!533466)))) (_2!8782 (_1!8783 lt!533466)))))))

(declare-fun lt!533470 () Unit!25840)

(declare-fun lemmaEqSameImage!128 (TokenValueInjection!5578 BalanceConc!10914 BalanceConc!10914) Unit!25840)

(assert (=> b!1537277 (= lt!533470 (lemmaEqSameImage!128 (transformation!2869 (h!21720 rulesArg!359)) (_1!8782 (_1!8783 lt!533466)) (seqFromList!1741 (list!6414 (_1!8782 (_1!8783 lt!533466))))))))

(declare-fun b!1537278 () Bool)

(declare-fun res!689088 () Bool)

(assert (=> b!1537278 (=> (not res!689088) (not e!983366))))

(assert (=> b!1537278 (= res!689088 (valid!1277 (_2!8779 lt!533472)))))

(assert (= (and d!458314 c!251586) b!1537271))

(assert (= (and d!458314 (not c!251586)) b!1537277))

(assert (= (and b!1537277 (not res!689087)) b!1537272))

(assert (= (and d!458314 res!689091) b!1537274))

(assert (= (and b!1537274 (not res!689090)) b!1537273))

(assert (= (and b!1537273 res!689086) b!1537275))

(assert (= (and b!1537274 res!689085) b!1537278))

(assert (= (and b!1537278 res!689088) b!1537270))

(assert (= (and b!1537270 res!689089) b!1537276))

(assert (= (and b!1537276 res!689092) b!1537269))

(declare-fun m!1812274 () Bool)

(assert (=> b!1537272 m!1812274))

(declare-fun m!1812276 () Bool)

(assert (=> b!1537272 m!1812276))

(assert (=> b!1537272 m!1812274))

(assert (=> b!1537272 m!1812276))

(declare-fun m!1812278 () Bool)

(assert (=> b!1537272 m!1812278))

(declare-fun m!1812280 () Bool)

(assert (=> b!1537272 m!1812280))

(declare-fun m!1812282 () Bool)

(assert (=> b!1537277 m!1812282))

(declare-fun m!1812284 () Bool)

(assert (=> b!1537277 m!1812284))

(declare-fun m!1812286 () Bool)

(assert (=> b!1537277 m!1812286))

(declare-fun m!1812288 () Bool)

(assert (=> b!1537277 m!1812288))

(declare-fun m!1812290 () Bool)

(assert (=> b!1537277 m!1812290))

(assert (=> b!1537277 m!1812274))

(assert (=> b!1537277 m!1812276))

(assert (=> b!1537277 m!1812278))

(assert (=> b!1537277 m!1812276))

(assert (=> b!1537277 m!1812274))

(declare-fun m!1812292 () Bool)

(assert (=> b!1537277 m!1812292))

(declare-fun m!1812294 () Bool)

(assert (=> b!1537277 m!1812294))

(assert (=> b!1537277 m!1812218))

(assert (=> b!1537277 m!1812294))

(assert (=> b!1537277 m!1812286))

(assert (=> b!1537277 m!1812286))

(declare-fun m!1812296 () Bool)

(assert (=> b!1537277 m!1812296))

(declare-fun m!1812298 () Bool)

(assert (=> b!1537277 m!1812298))

(declare-fun m!1812300 () Bool)

(assert (=> b!1537277 m!1812300))

(declare-fun m!1812302 () Bool)

(assert (=> b!1537274 m!1812302))

(declare-fun m!1812304 () Bool)

(assert (=> b!1537276 m!1812304))

(declare-fun m!1812306 () Bool)

(assert (=> b!1537278 m!1812306))

(declare-fun m!1812308 () Bool)

(assert (=> b!1537273 m!1812308))

(assert (=> b!1537273 m!1812218))

(assert (=> b!1537273 m!1812218))

(declare-fun m!1812310 () Bool)

(assert (=> b!1537273 m!1812310))

(assert (=> b!1537273 m!1812310))

(declare-fun m!1812312 () Bool)

(assert (=> b!1537273 m!1812312))

(assert (=> d!458314 m!1812310))

(declare-fun m!1812314 () Bool)

(assert (=> d!458314 m!1812314))

(declare-fun m!1812316 () Bool)

(assert (=> d!458314 m!1812316))

(assert (=> d!458314 m!1812218))

(assert (=> d!458314 m!1812310))

(assert (=> d!458314 m!1812302))

(declare-fun m!1812318 () Bool)

(assert (=> d!458314 m!1812318))

(assert (=> d!458314 m!1812252))

(assert (=> d!458314 m!1812218))

(assert (=> b!1537275 m!1812308))

(assert (=> b!1537275 m!1812218))

(assert (=> b!1537275 m!1812310))

(assert (=> b!1537275 m!1812218))

(assert (=> b!1537275 m!1812310))

(assert (=> b!1537275 m!1812312))

(declare-fun m!1812320 () Bool)

(assert (=> b!1537275 m!1812320))

(declare-fun m!1812322 () Bool)

(assert (=> b!1537270 m!1812322))

(assert (=> b!1537216 d!458314))

(declare-fun d!458316 () Bool)

(assert (=> d!458316 (= (array_inv!1753 (_keys!1864 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))))) (bvsge (size!13188 (_keys!1864 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537190 d!458316))

(declare-fun d!458318 () Bool)

(assert (=> d!458318 (= (array_inv!1754 (_values!1849 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))))) (bvsge (size!13187 (_values!1849 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537190 d!458318))

(declare-fun d!458320 () Bool)

(assert (=> d!458320 (= (isEmpty!10004 (t!140593 rulesArg!359)) ((_ is Nil!16319) (t!140593 rulesArg!359)))))

(assert (=> b!1537191 d!458320))

(declare-fun d!458322 () Bool)

(assert (=> d!458322 (= (inv!21575 (tag!3133 (h!21720 rulesArg!359))) (= (mod (str.len (value!91430 (tag!3133 (h!21720 rulesArg!359)))) 2) 0))))

(assert (=> b!1537200 d!458322))

(declare-fun d!458324 () Bool)

(declare-fun res!689095 () Bool)

(declare-fun e!983378 () Bool)

(assert (=> d!458324 (=> (not res!689095) (not e!983378))))

(declare-fun semiInverseModEq!1082 (Int Int) Bool)

(assert (=> d!458324 (= res!689095 (semiInverseModEq!1082 (toChars!4089 (transformation!2869 (h!21720 rulesArg!359))) (toValue!4230 (transformation!2869 (h!21720 rulesArg!359)))))))

(assert (=> d!458324 (= (inv!21585 (transformation!2869 (h!21720 rulesArg!359))) e!983378)))

(declare-fun b!1537289 () Bool)

(declare-fun equivClasses!1041 (Int Int) Bool)

(assert (=> b!1537289 (= e!983378 (equivClasses!1041 (toChars!4089 (transformation!2869 (h!21720 rulesArg!359))) (toValue!4230 (transformation!2869 (h!21720 rulesArg!359)))))))

(assert (= (and d!458324 res!689095) b!1537289))

(declare-fun m!1812324 () Bool)

(assert (=> d!458324 m!1812324))

(declare-fun m!1812326 () Bool)

(assert (=> b!1537289 m!1812326))

(assert (=> b!1537200 d!458324))

(declare-fun d!458326 () Bool)

(assert (=> d!458326 (= (isEmpty!10004 rulesArg!359) ((_ is Nil!16319) rulesArg!359))))

(assert (=> b!1537220 d!458326))

(declare-fun d!458328 () Bool)

(assert (=> d!458328 (= (valid!1279 cacheFurthestNullable!81) (validCacheMapFurthestNullable!59 (cache!1896 cacheFurthestNullable!81) (totalInput!2357 cacheFurthestNullable!81)))))

(declare-fun bs!382755 () Bool)

(assert (= bs!382755 d!458328))

(assert (=> bs!382755 m!1812266))

(assert (=> b!1537211 d!458328))

(declare-fun d!458330 () Bool)

(assert (=> d!458330 (= (valid!1277 cacheUp!695) (validCacheMapUp!146 (cache!1895 cacheUp!695)))))

(declare-fun bs!382756 () Bool)

(assert (= bs!382756 d!458330))

(assert (=> bs!382756 m!1812262))

(assert (=> b!1537184 d!458330))

(declare-fun d!458332 () Bool)

(declare-fun e!983381 () Bool)

(assert (=> d!458332 e!983381))

(declare-fun res!689098 () Bool)

(assert (=> d!458332 (=> res!689098 e!983381)))

(declare-fun lt!533476 () Bool)

(assert (=> d!458332 (= res!689098 (not lt!533476))))

(declare-fun drop!770 (List!16385 Int) List!16385)

(assert (=> d!458332 (= lt!533476 (= lt!533439 (drop!770 (list!6414 totalInput!496) (- (size!13192 (list!6414 totalInput!496)) (size!13192 lt!533439)))))))

(assert (=> d!458332 (= (isSuffix!321 lt!533439 (list!6414 totalInput!496)) lt!533476)))

(declare-fun b!1537292 () Bool)

(assert (=> b!1537292 (= e!983381 (>= (size!13192 (list!6414 totalInput!496)) (size!13192 lt!533439)))))

(assert (= (and d!458332 (not res!689098)) b!1537292))

(assert (=> d!458332 m!1812214))

(declare-fun m!1812328 () Bool)

(assert (=> d!458332 m!1812328))

(declare-fun m!1812330 () Bool)

(assert (=> d!458332 m!1812330))

(assert (=> d!458332 m!1812214))

(declare-fun m!1812332 () Bool)

(assert (=> d!458332 m!1812332))

(assert (=> b!1537292 m!1812214))

(assert (=> b!1537292 m!1812328))

(assert (=> b!1537292 m!1812330))

(assert (=> b!1537202 d!458332))

(declare-fun d!458334 () Bool)

(declare-fun list!6415 (Conc!5486) List!16385)

(assert (=> d!458334 (= (list!6414 totalInput!496) (list!6415 (c!251579 totalInput!496)))))

(declare-fun bs!382757 () Bool)

(assert (= bs!382757 d!458334))

(declare-fun m!1812334 () Bool)

(assert (=> bs!382757 m!1812334))

(assert (=> b!1537202 d!458334))

(declare-fun d!458336 () Bool)

(assert (=> d!458336 (= (list!6414 input!1460) (list!6415 (c!251579 input!1460)))))

(declare-fun bs!382758 () Bool)

(assert (= bs!382758 d!458336))

(declare-fun m!1812336 () Bool)

(assert (=> bs!382758 m!1812336))

(assert (=> b!1537202 d!458336))

(declare-fun d!458338 () Bool)

(declare-fun c!251587 () Bool)

(assert (=> d!458338 (= c!251587 ((_ is Node!5486) (c!251579 (totalInput!2357 cacheFurthestNullable!81))))))

(declare-fun e!983382 () Bool)

(assert (=> d!458338 (= (inv!21586 (c!251579 (totalInput!2357 cacheFurthestNullable!81))) e!983382)))

(declare-fun b!1537293 () Bool)

(assert (=> b!1537293 (= e!983382 (inv!21587 (c!251579 (totalInput!2357 cacheFurthestNullable!81))))))

(declare-fun b!1537294 () Bool)

(declare-fun e!983383 () Bool)

(assert (=> b!1537294 (= e!983382 e!983383)))

(declare-fun res!689099 () Bool)

(assert (=> b!1537294 (= res!689099 (not ((_ is Leaf!8128) (c!251579 (totalInput!2357 cacheFurthestNullable!81)))))))

(assert (=> b!1537294 (=> res!689099 e!983383)))

(declare-fun b!1537295 () Bool)

(assert (=> b!1537295 (= e!983383 (inv!21588 (c!251579 (totalInput!2357 cacheFurthestNullable!81))))))

(assert (= (and d!458338 c!251587) b!1537293))

(assert (= (and d!458338 (not c!251587)) b!1537294))

(assert (= (and b!1537294 (not res!689099)) b!1537295))

(declare-fun m!1812338 () Bool)

(assert (=> b!1537293 m!1812338))

(declare-fun m!1812340 () Bool)

(assert (=> b!1537295 m!1812340))

(assert (=> b!1537203 d!458338))

(declare-fun d!458340 () Bool)

(assert (=> d!458340 (= (array_inv!1753 (_keys!1866 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))))) (bvsge (size!13188 (_keys!1866 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537194 d!458340))

(declare-fun d!458342 () Bool)

(assert (=> d!458342 (= (array_inv!1755 (_values!1851 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))))) (bvsge (size!13190 (_values!1851 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537194 d!458342))

(declare-fun d!458344 () Bool)

(declare-fun c!251588 () Bool)

(assert (=> d!458344 (= c!251588 ((_ is Node!5486) (c!251579 totalInput!496)))))

(declare-fun e!983384 () Bool)

(assert (=> d!458344 (= (inv!21586 (c!251579 totalInput!496)) e!983384)))

(declare-fun b!1537296 () Bool)

(assert (=> b!1537296 (= e!983384 (inv!21587 (c!251579 totalInput!496)))))

(declare-fun b!1537297 () Bool)

(declare-fun e!983385 () Bool)

(assert (=> b!1537297 (= e!983384 e!983385)))

(declare-fun res!689100 () Bool)

(assert (=> b!1537297 (= res!689100 (not ((_ is Leaf!8128) (c!251579 totalInput!496))))))

(assert (=> b!1537297 (=> res!689100 e!983385)))

(declare-fun b!1537298 () Bool)

(assert (=> b!1537298 (= e!983385 (inv!21588 (c!251579 totalInput!496)))))

(assert (= (and d!458344 c!251588) b!1537296))

(assert (= (and d!458344 (not c!251588)) b!1537297))

(assert (= (and b!1537297 (not res!689100)) b!1537298))

(declare-fun m!1812342 () Bool)

(assert (=> b!1537296 m!1812342))

(declare-fun m!1812344 () Bool)

(assert (=> b!1537298 m!1812344))

(assert (=> b!1537214 d!458344))

(declare-fun b!1537309 () Bool)

(declare-fun e!983394 () Bool)

(declare-fun tail!2195 (List!16385) List!16385)

(assert (=> b!1537309 (= e!983394 (isPrefix!1235 (tail!2195 lt!533439) (tail!2195 lt!533439)))))

(declare-fun b!1537310 () Bool)

(declare-fun e!983392 () Bool)

(assert (=> b!1537310 (= e!983392 (>= (size!13192 lt!533439) (size!13192 lt!533439)))))

(declare-fun b!1537308 () Bool)

(declare-fun res!689109 () Bool)

(assert (=> b!1537308 (=> (not res!689109) (not e!983394))))

(declare-fun head!3100 (List!16385) C!8564)

(assert (=> b!1537308 (= res!689109 (= (head!3100 lt!533439) (head!3100 lt!533439)))))

(declare-fun d!458346 () Bool)

(assert (=> d!458346 e!983392))

(declare-fun res!689110 () Bool)

(assert (=> d!458346 (=> res!689110 e!983392)))

(declare-fun lt!533479 () Bool)

(assert (=> d!458346 (= res!689110 (not lt!533479))))

(declare-fun e!983393 () Bool)

(assert (=> d!458346 (= lt!533479 e!983393)))

(declare-fun res!689111 () Bool)

(assert (=> d!458346 (=> res!689111 e!983393)))

(assert (=> d!458346 (= res!689111 ((_ is Nil!16317) lt!533439))))

(assert (=> d!458346 (= (isPrefix!1235 lt!533439 lt!533439) lt!533479)))

(declare-fun b!1537307 () Bool)

(assert (=> b!1537307 (= e!983393 e!983394)))

(declare-fun res!689112 () Bool)

(assert (=> b!1537307 (=> (not res!689112) (not e!983394))))

(assert (=> b!1537307 (= res!689112 (not ((_ is Nil!16317) lt!533439)))))

(assert (= (and d!458346 (not res!689111)) b!1537307))

(assert (= (and b!1537307 res!689112) b!1537308))

(assert (= (and b!1537308 res!689109) b!1537309))

(assert (= (and d!458346 (not res!689110)) b!1537310))

(declare-fun m!1812346 () Bool)

(assert (=> b!1537309 m!1812346))

(assert (=> b!1537309 m!1812346))

(assert (=> b!1537309 m!1812346))

(assert (=> b!1537309 m!1812346))

(declare-fun m!1812348 () Bool)

(assert (=> b!1537309 m!1812348))

(assert (=> b!1537310 m!1812330))

(assert (=> b!1537310 m!1812330))

(declare-fun m!1812350 () Bool)

(assert (=> b!1537308 m!1812350))

(assert (=> b!1537308 m!1812350))

(assert (=> b!1537187 d!458346))

(declare-fun d!458348 () Bool)

(assert (=> d!458348 (isPrefix!1235 lt!533439 lt!533439)))

(declare-fun lt!533482 () Unit!25840)

(declare-fun choose!9223 (List!16385 List!16385) Unit!25840)

(assert (=> d!458348 (= lt!533482 (choose!9223 lt!533439 lt!533439))))

(assert (=> d!458348 (= (lemmaIsPrefixRefl!865 lt!533439 lt!533439) lt!533482)))

(declare-fun bs!382759 () Bool)

(assert (= bs!382759 d!458348))

(assert (=> bs!382759 m!1812236))

(declare-fun m!1812352 () Bool)

(assert (=> bs!382759 m!1812352))

(assert (=> b!1537187 d!458348))

(declare-fun setRes!10056 () Bool)

(declare-fun tp!443890 () Bool)

(declare-fun e!983400 () Bool)

(declare-fun setElem!10056 () Context!1422)

(declare-fun setNonEmpty!10056 () Bool)

(declare-fun inv!21589 (Context!1422) Bool)

(assert (=> setNonEmpty!10056 (= setRes!10056 (and tp!443890 (inv!21589 setElem!10056) e!983400))))

(declare-fun setRest!10056 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10056 (= (_1!8774 (_1!8775 (h!21717 (zeroValue!1828 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10056 true) setRest!10056))))

(declare-fun e!983399 () Bool)

(assert (=> b!1537195 (= tp!443876 e!983399)))

(declare-fun b!1537317 () Bool)

(declare-fun tp!443889 () Bool)

(assert (=> b!1537317 (= e!983399 (and setRes!10056 tp!443889))))

(declare-fun condSetEmpty!10056 () Bool)

(assert (=> b!1537317 (= condSetEmpty!10056 (= (_1!8774 (_1!8775 (h!21717 (zeroValue!1828 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))))) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537318 () Bool)

(declare-fun tp!443891 () Bool)

(assert (=> b!1537318 (= e!983400 tp!443891)))

(declare-fun setIsEmpty!10056 () Bool)

(assert (=> setIsEmpty!10056 setRes!10056))

(assert (= (and b!1537317 condSetEmpty!10056) setIsEmpty!10056))

(assert (= (and b!1537317 (not condSetEmpty!10056)) setNonEmpty!10056))

(assert (= setNonEmpty!10056 b!1537318))

(assert (= (and b!1537195 ((_ is Cons!16316) (zeroValue!1828 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81)))))))) b!1537317))

(declare-fun m!1812354 () Bool)

(assert (=> setNonEmpty!10056 m!1812354))

(declare-fun setNonEmpty!10057 () Bool)

(declare-fun setElem!10057 () Context!1422)

(declare-fun setRes!10057 () Bool)

(declare-fun tp!443893 () Bool)

(declare-fun e!983402 () Bool)

(assert (=> setNonEmpty!10057 (= setRes!10057 (and tp!443893 (inv!21589 setElem!10057) e!983402))))

(declare-fun setRest!10057 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10057 (= (_1!8774 (_1!8775 (h!21717 (minValue!1828 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10057 true) setRest!10057))))

(declare-fun e!983401 () Bool)

(assert (=> b!1537195 (= tp!443859 e!983401)))

(declare-fun b!1537319 () Bool)

(declare-fun tp!443892 () Bool)

(assert (=> b!1537319 (= e!983401 (and setRes!10057 tp!443892))))

(declare-fun condSetEmpty!10057 () Bool)

(assert (=> b!1537319 (= condSetEmpty!10057 (= (_1!8774 (_1!8775 (h!21717 (minValue!1828 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81))))))))) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537320 () Bool)

(declare-fun tp!443894 () Bool)

(assert (=> b!1537320 (= e!983402 tp!443894)))

(declare-fun setIsEmpty!10057 () Bool)

(assert (=> setIsEmpty!10057 setRes!10057))

(assert (= (and b!1537319 condSetEmpty!10057) setIsEmpty!10057))

(assert (= (and b!1537319 (not condSetEmpty!10057)) setNonEmpty!10057))

(assert (= setNonEmpty!10057 b!1537320))

(assert (= (and b!1537195 ((_ is Cons!16316) (minValue!1828 (v!23125 (underlying!3351 (v!23126 (underlying!3352 (cache!1896 cacheFurthestNullable!81)))))))) b!1537319))

(declare-fun m!1812356 () Bool)

(assert (=> setNonEmpty!10057 m!1812356))

(declare-fun b!1537331 () Bool)

(declare-fun b_free!39963 () Bool)

(declare-fun b_next!40667 () Bool)

(assert (=> b!1537331 (= b_free!39963 (not b_next!40667))))

(declare-fun tp!443906 () Bool)

(declare-fun b_and!106841 () Bool)

(assert (=> b!1537331 (= tp!443906 b_and!106841)))

(declare-fun b_free!39965 () Bool)

(declare-fun b_next!40669 () Bool)

(assert (=> b!1537331 (= b_free!39965 (not b_next!40669))))

(declare-fun tp!443903 () Bool)

(declare-fun b_and!106843 () Bool)

(assert (=> b!1537331 (= tp!443903 b_and!106843)))

(declare-fun e!983414 () Bool)

(assert (=> b!1537331 (= e!983414 (and tp!443906 tp!443903))))

(declare-fun e!983413 () Bool)

(declare-fun b!1537330 () Bool)

(declare-fun tp!443905 () Bool)

(assert (=> b!1537330 (= e!983413 (and tp!443905 (inv!21575 (tag!3133 (h!21720 (t!140593 rulesArg!359)))) (inv!21585 (transformation!2869 (h!21720 (t!140593 rulesArg!359)))) e!983414))))

(declare-fun b!1537329 () Bool)

(declare-fun e!983412 () Bool)

(declare-fun tp!443904 () Bool)

(assert (=> b!1537329 (= e!983412 (and e!983413 tp!443904))))

(assert (=> b!1537188 (= tp!443857 e!983412)))

(assert (= b!1537330 b!1537331))

(assert (= b!1537329 b!1537330))

(assert (= (and b!1537188 ((_ is Cons!16319) (t!140593 rulesArg!359))) b!1537329))

(declare-fun m!1812358 () Bool)

(assert (=> b!1537330 m!1812358))

(declare-fun m!1812360 () Bool)

(assert (=> b!1537330 m!1812360))

(declare-fun tp!443914 () Bool)

(declare-fun e!983419 () Bool)

(declare-fun tp!443913 () Bool)

(declare-fun b!1537340 () Bool)

(assert (=> b!1537340 (= e!983419 (and (inv!21586 (left!13445 (c!251579 input!1460))) tp!443913 (inv!21586 (right!13775 (c!251579 input!1460))) tp!443914))))

(declare-fun b!1537342 () Bool)

(declare-fun e!983420 () Bool)

(declare-fun tp!443915 () Bool)

(assert (=> b!1537342 (= e!983420 tp!443915)))

(declare-fun b!1537341 () Bool)

(declare-fun inv!21590 (IArray!10977) Bool)

(assert (=> b!1537341 (= e!983419 (and (inv!21590 (xs!8286 (c!251579 input!1460))) e!983420))))

(assert (=> b!1537205 (= tp!443874 (and (inv!21586 (c!251579 input!1460)) e!983419))))

(assert (= (and b!1537205 ((_ is Node!5486) (c!251579 input!1460))) b!1537340))

(assert (= b!1537341 b!1537342))

(assert (= (and b!1537205 ((_ is Leaf!8128) (c!251579 input!1460))) b!1537341))

(declare-fun m!1812362 () Bool)

(assert (=> b!1537340 m!1812362))

(declare-fun m!1812364 () Bool)

(assert (=> b!1537340 m!1812364))

(declare-fun m!1812366 () Bool)

(assert (=> b!1537341 m!1812366))

(assert (=> b!1537205 m!1812212))

(declare-fun setIsEmpty!10060 () Bool)

(declare-fun setRes!10060 () Bool)

(assert (=> setIsEmpty!10060 setRes!10060))

(declare-fun e!983428 () Bool)

(assert (=> b!1537190 (= tp!443869 e!983428)))

(declare-fun tp_is_empty!7037 () Bool)

(declare-fun b!1537351 () Bool)

(declare-fun e!983429 () Bool)

(declare-fun tp!443925 () Bool)

(assert (=> b!1537351 (= e!983428 (and (inv!21589 (_1!8772 (_1!8773 (h!21716 (zeroValue!1827 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695)))))))))) e!983429 tp_is_empty!7037 setRes!10060 tp!443925))))

(declare-fun condSetEmpty!10060 () Bool)

(assert (=> b!1537351 (= condSetEmpty!10060 (= (_2!8773 (h!21716 (zeroValue!1827 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695)))))))) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537352 () Bool)

(declare-fun tp!443927 () Bool)

(assert (=> b!1537352 (= e!983429 tp!443927)))

(declare-fun b!1537353 () Bool)

(declare-fun e!983427 () Bool)

(declare-fun tp!443926 () Bool)

(assert (=> b!1537353 (= e!983427 tp!443926)))

(declare-fun setNonEmpty!10060 () Bool)

(declare-fun setElem!10060 () Context!1422)

(declare-fun tp!443924 () Bool)

(assert (=> setNonEmpty!10060 (= setRes!10060 (and tp!443924 (inv!21589 setElem!10060) e!983427))))

(declare-fun setRest!10060 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10060 (= (_2!8773 (h!21716 (zeroValue!1827 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10060 true) setRest!10060))))

(assert (= b!1537351 b!1537352))

(assert (= (and b!1537351 condSetEmpty!10060) setIsEmpty!10060))

(assert (= (and b!1537351 (not condSetEmpty!10060)) setNonEmpty!10060))

(assert (= setNonEmpty!10060 b!1537353))

(assert (= (and b!1537190 ((_ is Cons!16315) (zeroValue!1827 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695)))))))) b!1537351))

(declare-fun m!1812368 () Bool)

(assert (=> b!1537351 m!1812368))

(declare-fun m!1812370 () Bool)

(assert (=> setNonEmpty!10060 m!1812370))

(declare-fun setIsEmpty!10061 () Bool)

(declare-fun setRes!10061 () Bool)

(assert (=> setIsEmpty!10061 setRes!10061))

(declare-fun e!983431 () Bool)

(assert (=> b!1537190 (= tp!443867 e!983431)))

(declare-fun tp!443929 () Bool)

(declare-fun b!1537354 () Bool)

(declare-fun e!983432 () Bool)

(assert (=> b!1537354 (= e!983431 (and (inv!21589 (_1!8772 (_1!8773 (h!21716 (minValue!1827 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695)))))))))) e!983432 tp_is_empty!7037 setRes!10061 tp!443929))))

(declare-fun condSetEmpty!10061 () Bool)

(assert (=> b!1537354 (= condSetEmpty!10061 (= (_2!8773 (h!21716 (minValue!1827 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695)))))))) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537355 () Bool)

(declare-fun tp!443931 () Bool)

(assert (=> b!1537355 (= e!983432 tp!443931)))

(declare-fun b!1537356 () Bool)

(declare-fun e!983430 () Bool)

(declare-fun tp!443930 () Bool)

(assert (=> b!1537356 (= e!983430 tp!443930)))

(declare-fun setElem!10061 () Context!1422)

(declare-fun tp!443928 () Bool)

(declare-fun setNonEmpty!10061 () Bool)

(assert (=> setNonEmpty!10061 (= setRes!10061 (and tp!443928 (inv!21589 setElem!10061) e!983430))))

(declare-fun setRest!10061 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10061 (= (_2!8773 (h!21716 (minValue!1827 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10061 true) setRest!10061))))

(assert (= b!1537354 b!1537355))

(assert (= (and b!1537354 condSetEmpty!10061) setIsEmpty!10061))

(assert (= (and b!1537354 (not condSetEmpty!10061)) setNonEmpty!10061))

(assert (= setNonEmpty!10061 b!1537356))

(assert (= (and b!1537190 ((_ is Cons!16315) (minValue!1827 (v!23123 (underlying!3349 (v!23124 (underlying!3350 (cache!1895 cacheUp!695)))))))) b!1537354))

(declare-fun m!1812372 () Bool)

(assert (=> b!1537354 m!1812372))

(declare-fun m!1812374 () Bool)

(assert (=> setNonEmpty!10061 m!1812374))

(declare-fun tp!443946 () Bool)

(declare-fun setRes!10067 () Bool)

(declare-fun setElem!10067 () Context!1422)

(declare-fun setNonEmpty!10066 () Bool)

(declare-fun e!983441 () Bool)

(assert (=> setNonEmpty!10066 (= setRes!10067 (and tp!443946 (inv!21589 setElem!10067) e!983441))))

(declare-fun mapDefault!7442 () List!16384)

(declare-fun setRest!10067 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10066 (= (_1!8774 (_1!8775 (h!21717 mapDefault!7442))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10067 true) setRest!10067))))

(declare-fun setIsEmpty!10066 () Bool)

(assert (=> setIsEmpty!10066 setRes!10067))

(declare-fun mapNonEmpty!7442 () Bool)

(declare-fun mapRes!7442 () Bool)

(declare-fun tp!443948 () Bool)

(declare-fun e!983442 () Bool)

(assert (=> mapNonEmpty!7442 (= mapRes!7442 (and tp!443948 e!983442))))

(declare-fun mapValue!7442 () List!16384)

(declare-fun mapRest!7442 () (Array (_ BitVec 32) List!16384))

(declare-fun mapKey!7442 () (_ BitVec 32))

(assert (=> mapNonEmpty!7442 (= mapRest!7438 (store mapRest!7442 mapKey!7442 mapValue!7442))))

(declare-fun b!1537367 () Bool)

(declare-fun e!983443 () Bool)

(declare-fun tp!443951 () Bool)

(assert (=> b!1537367 (= e!983443 tp!443951)))

(declare-fun mapIsEmpty!7442 () Bool)

(assert (=> mapIsEmpty!7442 mapRes!7442))

(declare-fun b!1537368 () Bool)

(declare-fun tp!443947 () Bool)

(assert (=> b!1537368 (= e!983441 tp!443947)))

(declare-fun setIsEmpty!10067 () Bool)

(declare-fun setRes!10066 () Bool)

(assert (=> setIsEmpty!10067 setRes!10066))

(declare-fun condMapEmpty!7442 () Bool)

(assert (=> mapNonEmpty!7437 (= condMapEmpty!7442 (= mapRest!7438 ((as const (Array (_ BitVec 32) List!16384)) mapDefault!7442)))))

(declare-fun e!983444 () Bool)

(assert (=> mapNonEmpty!7437 (= tp!443880 (and e!983444 mapRes!7442))))

(declare-fun setNonEmpty!10067 () Bool)

(declare-fun tp!443950 () Bool)

(declare-fun setElem!10066 () Context!1422)

(assert (=> setNonEmpty!10067 (= setRes!10066 (and tp!443950 (inv!21589 setElem!10066) e!983443))))

(declare-fun setRest!10066 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10067 (= (_1!8774 (_1!8775 (h!21717 mapValue!7442))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10066 true) setRest!10066))))

(declare-fun b!1537369 () Bool)

(declare-fun tp!443952 () Bool)

(assert (=> b!1537369 (= e!983444 (and setRes!10067 tp!443952))))

(declare-fun condSetEmpty!10066 () Bool)

(assert (=> b!1537369 (= condSetEmpty!10066 (= (_1!8774 (_1!8775 (h!21717 mapDefault!7442))) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537370 () Bool)

(declare-fun tp!443949 () Bool)

(assert (=> b!1537370 (= e!983442 (and setRes!10066 tp!443949))))

(declare-fun condSetEmpty!10067 () Bool)

(assert (=> b!1537370 (= condSetEmpty!10067 (= (_1!8774 (_1!8775 (h!21717 mapValue!7442))) ((as const (Array Context!1422 Bool)) false)))))

(assert (= (and mapNonEmpty!7437 condMapEmpty!7442) mapIsEmpty!7442))

(assert (= (and mapNonEmpty!7437 (not condMapEmpty!7442)) mapNonEmpty!7442))

(assert (= (and b!1537370 condSetEmpty!10067) setIsEmpty!10067))

(assert (= (and b!1537370 (not condSetEmpty!10067)) setNonEmpty!10067))

(assert (= setNonEmpty!10067 b!1537367))

(assert (= (and mapNonEmpty!7442 ((_ is Cons!16316) mapValue!7442)) b!1537370))

(assert (= (and b!1537369 condSetEmpty!10066) setIsEmpty!10066))

(assert (= (and b!1537369 (not condSetEmpty!10066)) setNonEmpty!10066))

(assert (= setNonEmpty!10066 b!1537368))

(assert (= (and mapNonEmpty!7437 ((_ is Cons!16316) mapDefault!7442)) b!1537369))

(declare-fun m!1812376 () Bool)

(assert (=> setNonEmpty!10066 m!1812376))

(declare-fun m!1812378 () Bool)

(assert (=> mapNonEmpty!7442 m!1812378))

(declare-fun m!1812380 () Bool)

(assert (=> setNonEmpty!10067 m!1812380))

(declare-fun setRes!10068 () Bool)

(declare-fun setNonEmpty!10068 () Bool)

(declare-fun setElem!10068 () Context!1422)

(declare-fun e!983446 () Bool)

(declare-fun tp!443954 () Bool)

(assert (=> setNonEmpty!10068 (= setRes!10068 (and tp!443954 (inv!21589 setElem!10068) e!983446))))

(declare-fun setRest!10068 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10068 (= (_1!8774 (_1!8775 (h!21717 mapValue!7437))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10068 true) setRest!10068))))

(declare-fun e!983445 () Bool)

(assert (=> mapNonEmpty!7437 (= tp!443860 e!983445)))

(declare-fun b!1537371 () Bool)

(declare-fun tp!443953 () Bool)

(assert (=> b!1537371 (= e!983445 (and setRes!10068 tp!443953))))

(declare-fun condSetEmpty!10068 () Bool)

(assert (=> b!1537371 (= condSetEmpty!10068 (= (_1!8774 (_1!8775 (h!21717 mapValue!7437))) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537372 () Bool)

(declare-fun tp!443955 () Bool)

(assert (=> b!1537372 (= e!983446 tp!443955)))

(declare-fun setIsEmpty!10068 () Bool)

(assert (=> setIsEmpty!10068 setRes!10068))

(assert (= (and b!1537371 condSetEmpty!10068) setIsEmpty!10068))

(assert (= (and b!1537371 (not condSetEmpty!10068)) setNonEmpty!10068))

(assert (= setNonEmpty!10068 b!1537372))

(assert (= (and mapNonEmpty!7437 ((_ is Cons!16316) mapValue!7437)) b!1537371))

(declare-fun m!1812382 () Bool)

(assert (=> setNonEmpty!10068 m!1812382))

(declare-fun setIsEmpty!10069 () Bool)

(declare-fun setRes!10069 () Bool)

(assert (=> setIsEmpty!10069 setRes!10069))

(declare-fun e!983448 () Bool)

(assert (=> b!1537209 (= tp!443868 e!983448)))

(declare-fun e!983449 () Bool)

(declare-fun tp!443957 () Bool)

(declare-fun b!1537373 () Bool)

(assert (=> b!1537373 (= e!983448 (and (inv!21589 (_1!8772 (_1!8773 (h!21716 mapDefault!7439)))) e!983449 tp_is_empty!7037 setRes!10069 tp!443957))))

(declare-fun condSetEmpty!10069 () Bool)

(assert (=> b!1537373 (= condSetEmpty!10069 (= (_2!8773 (h!21716 mapDefault!7439)) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537374 () Bool)

(declare-fun tp!443959 () Bool)

(assert (=> b!1537374 (= e!983449 tp!443959)))

(declare-fun b!1537375 () Bool)

(declare-fun e!983447 () Bool)

(declare-fun tp!443958 () Bool)

(assert (=> b!1537375 (= e!983447 tp!443958)))

(declare-fun setElem!10069 () Context!1422)

(declare-fun tp!443956 () Bool)

(declare-fun setNonEmpty!10069 () Bool)

(assert (=> setNonEmpty!10069 (= setRes!10069 (and tp!443956 (inv!21589 setElem!10069) e!983447))))

(declare-fun setRest!10069 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10069 (= (_2!8773 (h!21716 mapDefault!7439)) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10069 true) setRest!10069))))

(assert (= b!1537373 b!1537374))

(assert (= (and b!1537373 condSetEmpty!10069) setIsEmpty!10069))

(assert (= (and b!1537373 (not condSetEmpty!10069)) setNonEmpty!10069))

(assert (= setNonEmpty!10069 b!1537375))

(assert (= (and b!1537209 ((_ is Cons!16315) mapDefault!7439)) b!1537373))

(declare-fun m!1812384 () Bool)

(assert (=> b!1537373 m!1812384))

(declare-fun m!1812386 () Bool)

(assert (=> setNonEmpty!10069 m!1812386))

(declare-fun b!1537389 () Bool)

(declare-fun e!983452 () Bool)

(declare-fun tp!443973 () Bool)

(declare-fun tp!443974 () Bool)

(assert (=> b!1537389 (= e!983452 (and tp!443973 tp!443974))))

(declare-fun b!1537388 () Bool)

(declare-fun tp!443972 () Bool)

(assert (=> b!1537388 (= e!983452 tp!443972)))

(declare-fun b!1537387 () Bool)

(declare-fun tp!443970 () Bool)

(declare-fun tp!443971 () Bool)

(assert (=> b!1537387 (= e!983452 (and tp!443970 tp!443971))))

(assert (=> b!1537200 (= tp!443855 e!983452)))

(declare-fun b!1537386 () Bool)

(assert (=> b!1537386 (= e!983452 tp_is_empty!7037)))

(assert (= (and b!1537200 ((_ is ElementMatch!4193) (regex!2869 (h!21720 rulesArg!359)))) b!1537386))

(assert (= (and b!1537200 ((_ is Concat!7152) (regex!2869 (h!21720 rulesArg!359)))) b!1537387))

(assert (= (and b!1537200 ((_ is Star!4193) (regex!2869 (h!21720 rulesArg!359)))) b!1537388))

(assert (= (and b!1537200 ((_ is Union!4193) (regex!2869 (h!21720 rulesArg!359)))) b!1537389))

(declare-fun b!1537404 () Bool)

(declare-fun e!983470 () Bool)

(declare-fun tp!444000 () Bool)

(assert (=> b!1537404 (= e!983470 tp!444000)))

(declare-fun setIsEmpty!10074 () Bool)

(declare-fun setRes!10075 () Bool)

(assert (=> setIsEmpty!10074 setRes!10075))

(declare-fun mapIsEmpty!7445 () Bool)

(declare-fun mapRes!7445 () Bool)

(assert (=> mapIsEmpty!7445 mapRes!7445))

(declare-fun setIsEmpty!10075 () Bool)

(declare-fun setRes!10074 () Bool)

(assert (=> setIsEmpty!10075 setRes!10074))

(declare-fun b!1537405 () Bool)

(declare-fun e!983465 () Bool)

(declare-fun tp!443995 () Bool)

(assert (=> b!1537405 (= e!983465 tp!443995)))

(declare-fun e!983466 () Bool)

(declare-fun tp!443999 () Bool)

(declare-fun b!1537406 () Bool)

(declare-fun mapDefault!7445 () List!16383)

(assert (=> b!1537406 (= e!983466 (and (inv!21589 (_1!8772 (_1!8773 (h!21716 mapDefault!7445)))) e!983470 tp_is_empty!7037 setRes!10074 tp!443999))))

(declare-fun condSetEmpty!10075 () Bool)

(assert (=> b!1537406 (= condSetEmpty!10075 (= (_2!8773 (h!21716 mapDefault!7445)) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537407 () Bool)

(declare-fun e!983467 () Bool)

(declare-fun tp!443997 () Bool)

(assert (=> b!1537407 (= e!983467 tp!443997)))

(declare-fun tp!443994 () Bool)

(declare-fun setNonEmpty!10074 () Bool)

(declare-fun setElem!10075 () Context!1422)

(assert (=> setNonEmpty!10074 (= setRes!10074 (and tp!443994 (inv!21589 setElem!10075) e!983465))))

(declare-fun setRest!10074 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10074 (= (_2!8773 (h!21716 mapDefault!7445)) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10075 true) setRest!10074))))

(declare-fun condMapEmpty!7445 () Bool)

(assert (=> mapNonEmpty!7438 (= condMapEmpty!7445 (= mapRest!7437 ((as const (Array (_ BitVec 32) List!16383)) mapDefault!7445)))))

(assert (=> mapNonEmpty!7438 (= tp!443873 (and e!983466 mapRes!7445))))

(declare-fun b!1537408 () Bool)

(declare-fun e!983469 () Bool)

(declare-fun tp!443993 () Bool)

(assert (=> b!1537408 (= e!983469 tp!443993)))

(declare-fun mapNonEmpty!7445 () Bool)

(declare-fun tp!443996 () Bool)

(declare-fun e!983468 () Bool)

(assert (=> mapNonEmpty!7445 (= mapRes!7445 (and tp!443996 e!983468))))

(declare-fun mapKey!7445 () (_ BitVec 32))

(declare-fun mapValue!7445 () List!16383)

(declare-fun mapRest!7445 () (Array (_ BitVec 32) List!16383))

(assert (=> mapNonEmpty!7445 (= mapRest!7437 (store mapRest!7445 mapKey!7445 mapValue!7445))))

(declare-fun tp!444001 () Bool)

(declare-fun b!1537409 () Bool)

(assert (=> b!1537409 (= e!983468 (and (inv!21589 (_1!8772 (_1!8773 (h!21716 mapValue!7445)))) e!983467 tp_is_empty!7037 setRes!10075 tp!444001))))

(declare-fun condSetEmpty!10074 () Bool)

(assert (=> b!1537409 (= condSetEmpty!10074 (= (_2!8773 (h!21716 mapValue!7445)) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun tp!443998 () Bool)

(declare-fun setElem!10074 () Context!1422)

(declare-fun setNonEmpty!10075 () Bool)

(assert (=> setNonEmpty!10075 (= setRes!10075 (and tp!443998 (inv!21589 setElem!10074) e!983469))))

(declare-fun setRest!10075 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10075 (= (_2!8773 (h!21716 mapValue!7445)) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10074 true) setRest!10075))))

(assert (= (and mapNonEmpty!7438 condMapEmpty!7445) mapIsEmpty!7445))

(assert (= (and mapNonEmpty!7438 (not condMapEmpty!7445)) mapNonEmpty!7445))

(assert (= b!1537409 b!1537407))

(assert (= (and b!1537409 condSetEmpty!10074) setIsEmpty!10074))

(assert (= (and b!1537409 (not condSetEmpty!10074)) setNonEmpty!10075))

(assert (= setNonEmpty!10075 b!1537408))

(assert (= (and mapNonEmpty!7445 ((_ is Cons!16315) mapValue!7445)) b!1537409))

(assert (= b!1537406 b!1537404))

(assert (= (and b!1537406 condSetEmpty!10075) setIsEmpty!10075))

(assert (= (and b!1537406 (not condSetEmpty!10075)) setNonEmpty!10074))

(assert (= setNonEmpty!10074 b!1537405))

(assert (= (and mapNonEmpty!7438 ((_ is Cons!16315) mapDefault!7445)) b!1537406))

(declare-fun m!1812388 () Bool)

(assert (=> b!1537406 m!1812388))

(declare-fun m!1812390 () Bool)

(assert (=> mapNonEmpty!7445 m!1812390))

(declare-fun m!1812392 () Bool)

(assert (=> setNonEmpty!10075 m!1812392))

(declare-fun m!1812394 () Bool)

(assert (=> setNonEmpty!10074 m!1812394))

(declare-fun m!1812396 () Bool)

(assert (=> b!1537409 m!1812396))

(declare-fun setIsEmpty!10076 () Bool)

(declare-fun setRes!10076 () Bool)

(assert (=> setIsEmpty!10076 setRes!10076))

(declare-fun e!983472 () Bool)

(assert (=> mapNonEmpty!7438 (= tp!443864 e!983472)))

(declare-fun b!1537410 () Bool)

(declare-fun e!983473 () Bool)

(declare-fun tp!444003 () Bool)

(assert (=> b!1537410 (= e!983472 (and (inv!21589 (_1!8772 (_1!8773 (h!21716 mapValue!7439)))) e!983473 tp_is_empty!7037 setRes!10076 tp!444003))))

(declare-fun condSetEmpty!10076 () Bool)

(assert (=> b!1537410 (= condSetEmpty!10076 (= (_2!8773 (h!21716 mapValue!7439)) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537411 () Bool)

(declare-fun tp!444005 () Bool)

(assert (=> b!1537411 (= e!983473 tp!444005)))

(declare-fun b!1537412 () Bool)

(declare-fun e!983471 () Bool)

(declare-fun tp!444004 () Bool)

(assert (=> b!1537412 (= e!983471 tp!444004)))

(declare-fun setNonEmpty!10076 () Bool)

(declare-fun tp!444002 () Bool)

(declare-fun setElem!10076 () Context!1422)

(assert (=> setNonEmpty!10076 (= setRes!10076 (and tp!444002 (inv!21589 setElem!10076) e!983471))))

(declare-fun setRest!10076 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10076 (= (_2!8773 (h!21716 mapValue!7439)) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10076 true) setRest!10076))))

(assert (= b!1537410 b!1537411))

(assert (= (and b!1537410 condSetEmpty!10076) setIsEmpty!10076))

(assert (= (and b!1537410 (not condSetEmpty!10076)) setNonEmpty!10076))

(assert (= setNonEmpty!10076 b!1537412))

(assert (= (and mapNonEmpty!7438 ((_ is Cons!16315) mapValue!7439)) b!1537410))

(declare-fun m!1812398 () Bool)

(assert (=> b!1537410 m!1812398))

(declare-fun m!1812400 () Bool)

(assert (=> setNonEmpty!10076 m!1812400))

(declare-fun e!983491 () Bool)

(declare-fun setElem!10081 () Context!1422)

(declare-fun setNonEmpty!10081 () Bool)

(declare-fun setRes!10081 () Bool)

(declare-fun tp!444037 () Bool)

(assert (=> setNonEmpty!10081 (= setRes!10081 (and tp!444037 (inv!21589 setElem!10081) e!983491))))

(declare-fun mapValue!7448 () List!16388)

(declare-fun setRest!10082 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10081 (= (_2!8777 (h!21721 mapValue!7448)) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10081 true) setRest!10082))))

(declare-fun mapIsEmpty!7448 () Bool)

(declare-fun mapRes!7448 () Bool)

(assert (=> mapIsEmpty!7448 mapRes!7448))

(declare-fun condMapEmpty!7448 () Bool)

(declare-fun mapDefault!7448 () List!16388)

(assert (=> mapNonEmpty!7439 (= condMapEmpty!7448 (= mapRest!7439 ((as const (Array (_ BitVec 32) List!16388)) mapDefault!7448)))))

(declare-fun e!983487 () Bool)

(assert (=> mapNonEmpty!7439 (= tp!443865 (and e!983487 mapRes!7448))))

(declare-fun b!1537427 () Bool)

(declare-fun e!983486 () Bool)

(declare-fun tp!444033 () Bool)

(assert (=> b!1537427 (= e!983486 tp!444033)))

(declare-fun b!1537428 () Bool)

(declare-fun e!983488 () Bool)

(declare-fun tp!444038 () Bool)

(assert (=> b!1537428 (= e!983488 tp!444038)))

(declare-fun setRes!10082 () Bool)

(declare-fun tp!444028 () Bool)

(declare-fun b!1537429 () Bool)

(declare-fun tp!444031 () Bool)

(assert (=> b!1537429 (= e!983487 (and tp!444028 (inv!21589 (_2!8776 (_1!8777 (h!21721 mapDefault!7448)))) e!983488 tp_is_empty!7037 setRes!10082 tp!444031))))

(declare-fun condSetEmpty!10081 () Bool)

(assert (=> b!1537429 (= condSetEmpty!10081 (= (_2!8777 (h!21721 mapDefault!7448)) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun setIsEmpty!10081 () Bool)

(assert (=> setIsEmpty!10081 setRes!10082))

(declare-fun b!1537430 () Bool)

(declare-fun e!983490 () Bool)

(declare-fun tp!444030 () Bool)

(assert (=> b!1537430 (= e!983490 tp!444030)))

(declare-fun setNonEmpty!10082 () Bool)

(declare-fun tp!444034 () Bool)

(declare-fun setElem!10082 () Context!1422)

(assert (=> setNonEmpty!10082 (= setRes!10082 (and tp!444034 (inv!21589 setElem!10082) e!983490))))

(declare-fun setRest!10081 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10082 (= (_2!8777 (h!21721 mapDefault!7448)) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10082 true) setRest!10081))))

(declare-fun tp!444029 () Bool)

(declare-fun e!983489 () Bool)

(declare-fun tp!444035 () Bool)

(declare-fun b!1537431 () Bool)

(assert (=> b!1537431 (= e!983489 (and tp!444029 (inv!21589 (_2!8776 (_1!8777 (h!21721 mapValue!7448)))) e!983486 tp_is_empty!7037 setRes!10081 tp!444035))))

(declare-fun condSetEmpty!10082 () Bool)

(assert (=> b!1537431 (= condSetEmpty!10082 (= (_2!8777 (h!21721 mapValue!7448)) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537432 () Bool)

(declare-fun tp!444036 () Bool)

(assert (=> b!1537432 (= e!983491 tp!444036)))

(declare-fun mapNonEmpty!7448 () Bool)

(declare-fun tp!444032 () Bool)

(assert (=> mapNonEmpty!7448 (= mapRes!7448 (and tp!444032 e!983489))))

(declare-fun mapRest!7448 () (Array (_ BitVec 32) List!16388))

(declare-fun mapKey!7448 () (_ BitVec 32))

(assert (=> mapNonEmpty!7448 (= mapRest!7439 (store mapRest!7448 mapKey!7448 mapValue!7448))))

(declare-fun setIsEmpty!10082 () Bool)

(assert (=> setIsEmpty!10082 setRes!10081))

(assert (= (and mapNonEmpty!7439 condMapEmpty!7448) mapIsEmpty!7448))

(assert (= (and mapNonEmpty!7439 (not condMapEmpty!7448)) mapNonEmpty!7448))

(assert (= b!1537431 b!1537427))

(assert (= (and b!1537431 condSetEmpty!10082) setIsEmpty!10082))

(assert (= (and b!1537431 (not condSetEmpty!10082)) setNonEmpty!10081))

(assert (= setNonEmpty!10081 b!1537432))

(assert (= (and mapNonEmpty!7448 ((_ is Cons!16320) mapValue!7448)) b!1537431))

(assert (= b!1537429 b!1537428))

(assert (= (and b!1537429 condSetEmpty!10081) setIsEmpty!10081))

(assert (= (and b!1537429 (not condSetEmpty!10081)) setNonEmpty!10082))

(assert (= setNonEmpty!10082 b!1537430))

(assert (= (and mapNonEmpty!7439 ((_ is Cons!16320) mapDefault!7448)) b!1537429))

(declare-fun m!1812402 () Bool)

(assert (=> b!1537429 m!1812402))

(declare-fun m!1812404 () Bool)

(assert (=> b!1537431 m!1812404))

(declare-fun m!1812406 () Bool)

(assert (=> setNonEmpty!10081 m!1812406))

(declare-fun m!1812408 () Bool)

(assert (=> setNonEmpty!10082 m!1812408))

(declare-fun m!1812410 () Bool)

(assert (=> mapNonEmpty!7448 m!1812410))

(declare-fun setElem!10085 () Context!1422)

(declare-fun tp!444050 () Bool)

(declare-fun setNonEmpty!10085 () Bool)

(declare-fun e!983498 () Bool)

(declare-fun setRes!10085 () Bool)

(assert (=> setNonEmpty!10085 (= setRes!10085 (and tp!444050 (inv!21589 setElem!10085) e!983498))))

(declare-fun setRest!10085 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10085 (= (_2!8777 (h!21721 mapValue!7438)) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10085 true) setRest!10085))))

(declare-fun e!983500 () Bool)

(declare-fun tp!444052 () Bool)

(declare-fun e!983499 () Bool)

(declare-fun tp!444049 () Bool)

(declare-fun b!1537441 () Bool)

(assert (=> b!1537441 (= e!983499 (and tp!444049 (inv!21589 (_2!8776 (_1!8777 (h!21721 mapValue!7438)))) e!983500 tp_is_empty!7037 setRes!10085 tp!444052))))

(declare-fun condSetEmpty!10085 () Bool)

(assert (=> b!1537441 (= condSetEmpty!10085 (= (_2!8777 (h!21721 mapValue!7438)) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537442 () Bool)

(declare-fun tp!444051 () Bool)

(assert (=> b!1537442 (= e!983500 tp!444051)))

(assert (=> mapNonEmpty!7439 (= tp!443878 e!983499)))

(declare-fun b!1537443 () Bool)

(declare-fun tp!444053 () Bool)

(assert (=> b!1537443 (= e!983498 tp!444053)))

(declare-fun setIsEmpty!10085 () Bool)

(assert (=> setIsEmpty!10085 setRes!10085))

(assert (= b!1537441 b!1537442))

(assert (= (and b!1537441 condSetEmpty!10085) setIsEmpty!10085))

(assert (= (and b!1537441 (not condSetEmpty!10085)) setNonEmpty!10085))

(assert (= setNonEmpty!10085 b!1537443))

(assert (= (and mapNonEmpty!7439 ((_ is Cons!16320) mapValue!7438)) b!1537441))

(declare-fun m!1812412 () Bool)

(assert (=> setNonEmpty!10085 m!1812412))

(declare-fun m!1812414 () Bool)

(assert (=> b!1537441 m!1812414))

(declare-fun tp!444055 () Bool)

(declare-fun setElem!10086 () Context!1422)

(declare-fun setRes!10086 () Bool)

(declare-fun e!983502 () Bool)

(declare-fun setNonEmpty!10086 () Bool)

(assert (=> setNonEmpty!10086 (= setRes!10086 (and tp!444055 (inv!21589 setElem!10086) e!983502))))

(declare-fun setRest!10086 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10086 (= (_1!8774 (_1!8775 (h!21717 mapDefault!7438))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10086 true) setRest!10086))))

(declare-fun e!983501 () Bool)

(assert (=> b!1537193 (= tp!443882 e!983501)))

(declare-fun b!1537444 () Bool)

(declare-fun tp!444054 () Bool)

(assert (=> b!1537444 (= e!983501 (and setRes!10086 tp!444054))))

(declare-fun condSetEmpty!10086 () Bool)

(assert (=> b!1537444 (= condSetEmpty!10086 (= (_1!8774 (_1!8775 (h!21717 mapDefault!7438))) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537445 () Bool)

(declare-fun tp!444056 () Bool)

(assert (=> b!1537445 (= e!983502 tp!444056)))

(declare-fun setIsEmpty!10086 () Bool)

(assert (=> setIsEmpty!10086 setRes!10086))

(assert (= (and b!1537444 condSetEmpty!10086) setIsEmpty!10086))

(assert (= (and b!1537444 (not condSetEmpty!10086)) setNonEmpty!10086))

(assert (= setNonEmpty!10086 b!1537445))

(assert (= (and b!1537193 ((_ is Cons!16316) mapDefault!7438)) b!1537444))

(declare-fun m!1812416 () Bool)

(assert (=> setNonEmpty!10086 m!1812416))

(declare-fun b!1537446 () Bool)

(declare-fun tp!444058 () Bool)

(declare-fun tp!444057 () Bool)

(declare-fun e!983503 () Bool)

(assert (=> b!1537446 (= e!983503 (and (inv!21586 (left!13445 (c!251579 (totalInput!2357 cacheFurthestNullable!81)))) tp!444057 (inv!21586 (right!13775 (c!251579 (totalInput!2357 cacheFurthestNullable!81)))) tp!444058))))

(declare-fun b!1537448 () Bool)

(declare-fun e!983504 () Bool)

(declare-fun tp!444059 () Bool)

(assert (=> b!1537448 (= e!983504 tp!444059)))

(declare-fun b!1537447 () Bool)

(assert (=> b!1537447 (= e!983503 (and (inv!21590 (xs!8286 (c!251579 (totalInput!2357 cacheFurthestNullable!81)))) e!983504))))

(assert (=> b!1537203 (= tp!443871 (and (inv!21586 (c!251579 (totalInput!2357 cacheFurthestNullable!81))) e!983503))))

(assert (= (and b!1537203 ((_ is Node!5486) (c!251579 (totalInput!2357 cacheFurthestNullable!81)))) b!1537446))

(assert (= b!1537447 b!1537448))

(assert (= (and b!1537203 ((_ is Leaf!8128) (c!251579 (totalInput!2357 cacheFurthestNullable!81)))) b!1537447))

(declare-fun m!1812418 () Bool)

(assert (=> b!1537446 m!1812418))

(declare-fun m!1812420 () Bool)

(assert (=> b!1537446 m!1812420))

(declare-fun m!1812422 () Bool)

(assert (=> b!1537447 m!1812422))

(assert (=> b!1537203 m!1812198))

(declare-fun tp!444061 () Bool)

(declare-fun setElem!10087 () Context!1422)

(declare-fun setRes!10087 () Bool)

(declare-fun e!983505 () Bool)

(declare-fun setNonEmpty!10087 () Bool)

(assert (=> setNonEmpty!10087 (= setRes!10087 (and tp!444061 (inv!21589 setElem!10087) e!983505))))

(declare-fun setRest!10087 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10087 (= (_2!8777 (h!21721 mapDefault!7437)) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10087 true) setRest!10087))))

(declare-fun e!983506 () Bool)

(declare-fun tp!444063 () Bool)

(declare-fun e!983507 () Bool)

(declare-fun b!1537449 () Bool)

(declare-fun tp!444060 () Bool)

(assert (=> b!1537449 (= e!983506 (and tp!444060 (inv!21589 (_2!8776 (_1!8777 (h!21721 mapDefault!7437)))) e!983507 tp_is_empty!7037 setRes!10087 tp!444063))))

(declare-fun condSetEmpty!10087 () Bool)

(assert (=> b!1537449 (= condSetEmpty!10087 (= (_2!8777 (h!21721 mapDefault!7437)) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537450 () Bool)

(declare-fun tp!444062 () Bool)

(assert (=> b!1537450 (= e!983507 tp!444062)))

(assert (=> b!1537213 (= tp!443879 e!983506)))

(declare-fun b!1537451 () Bool)

(declare-fun tp!444064 () Bool)

(assert (=> b!1537451 (= e!983505 tp!444064)))

(declare-fun setIsEmpty!10087 () Bool)

(assert (=> setIsEmpty!10087 setRes!10087))

(assert (= b!1537449 b!1537450))

(assert (= (and b!1537449 condSetEmpty!10087) setIsEmpty!10087))

(assert (= (and b!1537449 (not condSetEmpty!10087)) setNonEmpty!10087))

(assert (= setNonEmpty!10087 b!1537451))

(assert (= (and b!1537213 ((_ is Cons!16320) mapDefault!7437)) b!1537449))

(declare-fun m!1812424 () Bool)

(assert (=> setNonEmpty!10087 m!1812424))

(declare-fun m!1812426 () Bool)

(assert (=> b!1537449 m!1812426))

(declare-fun e!983508 () Bool)

(declare-fun setNonEmpty!10088 () Bool)

(declare-fun tp!444066 () Bool)

(declare-fun setElem!10088 () Context!1422)

(declare-fun setRes!10088 () Bool)

(assert (=> setNonEmpty!10088 (= setRes!10088 (and tp!444066 (inv!21589 setElem!10088) e!983508))))

(declare-fun setRest!10088 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10088 (= (_2!8777 (h!21721 (zeroValue!1829 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10088 true) setRest!10088))))

(declare-fun tp!444065 () Bool)

(declare-fun e!983510 () Bool)

(declare-fun b!1537452 () Bool)

(declare-fun tp!444068 () Bool)

(declare-fun e!983509 () Bool)

(assert (=> b!1537452 (= e!983509 (and tp!444065 (inv!21589 (_2!8776 (_1!8777 (h!21721 (zeroValue!1829 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708)))))))))) e!983510 tp_is_empty!7037 setRes!10088 tp!444068))))

(declare-fun condSetEmpty!10088 () Bool)

(assert (=> b!1537452 (= condSetEmpty!10088 (= (_2!8777 (h!21721 (zeroValue!1829 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708)))))))) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537453 () Bool)

(declare-fun tp!444067 () Bool)

(assert (=> b!1537453 (= e!983510 tp!444067)))

(assert (=> b!1537194 (= tp!443866 e!983509)))

(declare-fun b!1537454 () Bool)

(declare-fun tp!444069 () Bool)

(assert (=> b!1537454 (= e!983508 tp!444069)))

(declare-fun setIsEmpty!10088 () Bool)

(assert (=> setIsEmpty!10088 setRes!10088))

(assert (= b!1537452 b!1537453))

(assert (= (and b!1537452 condSetEmpty!10088) setIsEmpty!10088))

(assert (= (and b!1537452 (not condSetEmpty!10088)) setNonEmpty!10088))

(assert (= setNonEmpty!10088 b!1537454))

(assert (= (and b!1537194 ((_ is Cons!16320) (zeroValue!1829 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708)))))))) b!1537452))

(declare-fun m!1812428 () Bool)

(assert (=> setNonEmpty!10088 m!1812428))

(declare-fun m!1812430 () Bool)

(assert (=> b!1537452 m!1812430))

(declare-fun setRes!10089 () Bool)

(declare-fun setNonEmpty!10089 () Bool)

(declare-fun e!983511 () Bool)

(declare-fun setElem!10089 () Context!1422)

(declare-fun tp!444071 () Bool)

(assert (=> setNonEmpty!10089 (= setRes!10089 (and tp!444071 (inv!21589 setElem!10089) e!983511))))

(declare-fun setRest!10089 () (InoxSet Context!1422))

(assert (=> setNonEmpty!10089 (= (_2!8777 (h!21721 (minValue!1829 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1422 Bool)) false) setElem!10089 true) setRest!10089))))

(declare-fun e!983512 () Bool)

(declare-fun b!1537455 () Bool)

(declare-fun tp!444070 () Bool)

(declare-fun tp!444073 () Bool)

(declare-fun e!983513 () Bool)

(assert (=> b!1537455 (= e!983512 (and tp!444070 (inv!21589 (_2!8776 (_1!8777 (h!21721 (minValue!1829 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708)))))))))) e!983513 tp_is_empty!7037 setRes!10089 tp!444073))))

(declare-fun condSetEmpty!10089 () Bool)

(assert (=> b!1537455 (= condSetEmpty!10089 (= (_2!8777 (h!21721 (minValue!1829 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708)))))))) ((as const (Array Context!1422 Bool)) false)))))

(declare-fun b!1537456 () Bool)

(declare-fun tp!444072 () Bool)

(assert (=> b!1537456 (= e!983513 tp!444072)))

(assert (=> b!1537194 (= tp!443861 e!983512)))

(declare-fun b!1537457 () Bool)

(declare-fun tp!444074 () Bool)

(assert (=> b!1537457 (= e!983511 tp!444074)))

(declare-fun setIsEmpty!10089 () Bool)

(assert (=> setIsEmpty!10089 setRes!10089))

(assert (= b!1537455 b!1537456))

(assert (= (and b!1537455 condSetEmpty!10089) setIsEmpty!10089))

(assert (= (and b!1537455 (not condSetEmpty!10089)) setNonEmpty!10089))

(assert (= setNonEmpty!10089 b!1537457))

(assert (= (and b!1537194 ((_ is Cons!16320) (minValue!1829 (v!23127 (underlying!3353 (v!23128 (underlying!3354 (cache!1897 cacheDown!708)))))))) b!1537455))

(declare-fun m!1812432 () Bool)

(assert (=> setNonEmpty!10089 m!1812432))

(declare-fun m!1812434 () Bool)

(assert (=> b!1537455 m!1812434))

(declare-fun b!1537458 () Bool)

(declare-fun e!983514 () Bool)

(declare-fun tp!444076 () Bool)

(declare-fun tp!444075 () Bool)

(assert (=> b!1537458 (= e!983514 (and (inv!21586 (left!13445 (c!251579 totalInput!496))) tp!444075 (inv!21586 (right!13775 (c!251579 totalInput!496))) tp!444076))))

(declare-fun b!1537460 () Bool)

(declare-fun e!983515 () Bool)

(declare-fun tp!444077 () Bool)

(assert (=> b!1537460 (= e!983515 tp!444077)))

(declare-fun b!1537459 () Bool)

(assert (=> b!1537459 (= e!983514 (and (inv!21590 (xs!8286 (c!251579 totalInput!496))) e!983515))))

(assert (=> b!1537214 (= tp!443863 (and (inv!21586 (c!251579 totalInput!496)) e!983514))))

(assert (= (and b!1537214 ((_ is Node!5486) (c!251579 totalInput!496))) b!1537458))

(assert (= b!1537459 b!1537460))

(assert (= (and b!1537214 ((_ is Leaf!8128) (c!251579 totalInput!496))) b!1537459))

(declare-fun m!1812436 () Bool)

(assert (=> b!1537458 m!1812436))

(declare-fun m!1812438 () Bool)

(assert (=> b!1537458 m!1812438))

(declare-fun m!1812440 () Bool)

(assert (=> b!1537459 m!1812440))

(assert (=> b!1537214 m!1812194))

(check-sat (not b_next!40669) (not b!1537292) (not setNonEmpty!10086) (not mapNonEmpty!7442) (not b!1537368) (not setNonEmpty!10061) (not b!1537412) (not setNonEmpty!10069) (not b!1537459) (not d!458348) (not b!1537351) (not b!1537274) (not b!1537275) (not b!1537409) (not b!1537375) (not b!1537450) (not b!1537441) (not b!1537448) (not b_next!40651) (not setNonEmpty!10088) (not d!458336) (not b!1537458) b_and!106833 (not b_next!40663) (not b!1537372) (not b!1537388) (not b!1537430) (not b!1537367) (not d!458324) (not b!1537342) (not b!1537431) (not b!1537237) (not d!458328) (not b!1537214) (not b!1537205) (not b!1537298) (not b!1537226) tp_is_empty!7037 (not b!1537429) (not b!1537408) (not b!1537456) (not b!1537240) (not b!1537371) (not d!458300) (not b!1537277) (not b!1537203) (not b!1537442) (not mapNonEmpty!7445) (not b!1537405) (not setNonEmpty!10066) b_and!106825 b_and!106837 (not b!1537235) b_and!106841 (not b!1537270) (not b!1537340) (not b!1537445) (not b!1537329) (not setNonEmpty!10089) (not setNonEmpty!10067) (not b_next!40665) (not d!458332) (not setNonEmpty!10075) (not setNonEmpty!10081) (not b!1537387) (not setNonEmpty!10057) (not b!1537309) (not b!1537352) (not b!1537460) (not b!1537444) (not b!1537432) (not b!1537225) (not setNonEmpty!10085) (not b!1537451) (not b_next!40659) (not setNonEmpty!10074) (not b!1537341) (not b!1537457) (not d!458296) (not b!1537276) (not b!1537407) (not b!1537247) (not setNonEmpty!10060) (not b!1537452) (not setNonEmpty!10087) (not b!1537369) (not d!458312) (not b_next!40661) (not b!1537446) (not d!458294) (not d!458304) (not b!1537356) b_and!106843 (not b!1537296) (not b!1537320) (not b!1537411) (not b!1537318) (not setNonEmpty!10068) b_and!106829 b_and!106831 (not d!458314) (not b!1537449) (not b!1537308) (not b_next!40657) (not b_next!40655) (not b!1537373) (not setNonEmpty!10056) (not setNonEmpty!10082) (not b!1537272) (not b!1537374) (not b!1537243) (not b!1537443) (not b!1537454) (not mapNonEmpty!7448) (not b!1537319) b_and!106835 (not b!1537317) (not b!1537354) (not d!458334) (not b!1537455) (not b!1537248) (not b!1537278) (not b!1537310) (not b!1537389) (not b!1537428) (not b!1537410) (not b!1537370) (not b_next!40653) (not b!1537246) (not b_next!40667) (not b!1537295) (not setNonEmpty!10076) (not b!1537427) b_and!106827 (not b!1537453) (not b!1537404) (not b!1537330) (not b!1537447) (not b!1537273) (not b!1537406) (not b!1537355) b_and!106839 (not d!458330) (not b!1537353) (not b!1537293) (not d!458308) (not b!1537289))
(check-sat (not b_next!40651) (not b_next!40669) b_and!106841 (not b_next!40665) (not b_next!40659) (not b_next!40661) b_and!106843 b_and!106829 b_and!106835 (not b_next!40653) (not b_next!40667) b_and!106827 b_and!106839 b_and!106833 (not b_next!40663) b_and!106825 b_and!106837 b_and!106831 (not b_next!40657) (not b_next!40655))
